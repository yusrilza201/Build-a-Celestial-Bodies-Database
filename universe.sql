--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: founder; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.founder (
    name character varying(30),
    founder_id integer NOT NULL,
    galaxy_id integer NOT NULL
);


ALTER TABLE public.founder OWNER TO freecodecamp;

--
-- Name: founder_founder_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.founder_founder_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.founder_founder_id_seq OWNER TO freecodecamp;

--
-- Name: founder_founder_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.founder_founder_id_seq OWNED BY public.founder.founder_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30),
    astro_name text,
    distance numeric(4,1),
    length integer NOT NULL,
    width integer NOT NULL,
    is_spherical boolean
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30),
    astro_name text,
    distance numeric(4,1),
    length integer NOT NULL,
    width integer NOT NULL,
    is_spherical boolean,
    planet_id integer NOT NULL
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30),
    astro_name text,
    distance numeric(4,1),
    length integer NOT NULL,
    width integer NOT NULL,
    is_spherical boolean,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30),
    astro_name text,
    distance numeric(4,1),
    length integer NOT NULL,
    width integer NOT NULL,
    is_spherical boolean,
    galaxy_id integer NOT NULL
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: founder founder_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.founder ALTER COLUMN founder_id SET DEFAULT nextval('public.founder_founder_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: founder; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.founder VALUES ('USA', 1, 1);
INSERT INTO public.founder VALUES ('KGB', 2, 2);
INSERT INTO public.founder VALUES ('CHN', 3, 3);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Andromeda', 'Kevin', 23.1, 234, 761, true);
INSERT INTO public.galaxy VALUES (2, 'Cigar', 'Hani', 80.2, 21, 341, false);
INSERT INTO public.galaxy VALUES (3, 'Comet', 'Gina', 99.2, 123, 21, false);
INSERT INTO public.galaxy VALUES (4, 'Black Eye', 'John', 78.2, 12, 35, true);
INSERT INTO public.galaxy VALUES (5, 'Fireworks', 'Kelly', 53.2, 342, 165, true);
INSERT INTO public.galaxy VALUES (6, 'Backward', 'Jimmy', 22.9, 31, 875, true);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (27, 'Moon1', 'Luna', 0.3, 3476, 3476, true, 26);
INSERT INTO public.moon VALUES (28, 'Moon2', 'Phobos', 0.9, 27, 22, true, 27);
INSERT INTO public.moon VALUES (29, 'Moon3', 'Deimos', 2.4, 15, 12, true, 28);
INSERT INTO public.moon VALUES (30, 'Moon4', 'Io', 42.2, 3643, 3643, true, 29);
INSERT INTO public.moon VALUES (31, 'Moon5', 'Europa', 67.0, 3121, 3121, true, 30);
INSERT INTO public.moon VALUES (32, 'Moon6', 'Ganymede', 107.0, 5262, 5262, true, 31);
INSERT INTO public.moon VALUES (33, 'Moon7', 'Callisto', 188.2, 4821, 4821, true, 32);
INSERT INTO public.moon VALUES (34, 'Moon8', 'Mimas', 18.5, 396, 396, true, 33);
INSERT INTO public.moon VALUES (35, 'Moon9', 'Enceladus', 23.8, 504, 504, true, 34);
INSERT INTO public.moon VALUES (36, 'Moon10', 'Tethys', 29.5, 1062, 1062, true, 35);
INSERT INTO public.moon VALUES (37, 'Moon11', 'Dione', 37.7, 1123, 1123, true, 36);
INSERT INTO public.moon VALUES (38, 'Moon12', 'Rhea', 52.7, 1528, 1528, true, 37);
INSERT INTO public.moon VALUES (39, 'Moon13', 'Titan', 122.1, 5150, 5150, true, 26);
INSERT INTO public.moon VALUES (40, 'Moon14', 'Hyperion', 148.1, 270, 270, true, 27);
INSERT INTO public.moon VALUES (41, 'Moon15', 'Iapetus', 356.0, 1469, 1469, true, 28);
INSERT INTO public.moon VALUES (42, 'Moon16', 'Miranda', 12.9, 471, 471, true, 29);
INSERT INTO public.moon VALUES (43, 'Moon17', 'Ariel', 19.0, 1158, 1158, true, 30);
INSERT INTO public.moon VALUES (44, 'Moon18', 'Umbriel', 26.6, 1169, 1169, true, 31);
INSERT INTO public.moon VALUES (45, 'Moon19', 'Titania', 43.5, 1578, 1578, true, 32);
INSERT INTO public.moon VALUES (46, 'Moon20', 'Oberon', 58.4, 1523, 1523, true, 33);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (26, 'Uranus', 'Nani', 21.3, 123, 431, true, 1);
INSERT INTO public.planet VALUES (27, 'Saturn', 'luci', 22.3, 223, 132, true, 2);
INSERT INTO public.planet VALUES (28, 'Pluto', 'Arhan', 21.2, 533, 11, false, 3);
INSERT INTO public.planet VALUES (29, 'Taygete', 'Chle', 11.3, 223, 411, true, 4);
INSERT INTO public.planet VALUES (30, 'Chaldene', 'Min', 51.3, 23, 331, true, 5);
INSERT INTO public.planet VALUES (31, 'Megaclite', 'Tana', 21.3, 12, 41, false, 6);
INSERT INTO public.planet VALUES (32, 'Harpalyke', 'Nani', 21.3, 123, 431, true, 1);
INSERT INTO public.planet VALUES (33, 'Kalyke', 'luci', 22.3, 223, 132, true, 2);
INSERT INTO public.planet VALUES (34, 'Locaste', 'Arhan', 21.2, 533, 11, false, 3);
INSERT INTO public.planet VALUES (35, 'Mars', 'Chle', 11.3, 223, 411, true, 4);
INSERT INTO public.planet VALUES (36, 'Earth', 'Min', 51.3, 23, 331, true, 5);
INSERT INTO public.planet VALUES (37, 'Neptune', 'Tana', 21.3, 12, 41, false, 6);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Lynx', 'Ashley', 22.9, 34, 12, true, 1);
INSERT INTO public.star VALUES (2, 'Eridanus', 'Joy', 21.2, 76, 98, true, 2);
INSERT INTO public.star VALUES (3, 'Scorpius', 'Kenny', 23.2, 61, 23, false, 3);
INSERT INTO public.star VALUES (4, 'Crux', 'Haikal', 67.1, 23, 11, false, 4);
INSERT INTO public.star VALUES (5, 'Cancer', 'Kay', 43.1, 43, 21, true, 5);
INSERT INTO public.star VALUES (6, 'Leo', 'Hank', 77.2, 12, 34, true, 6);


--
-- Name: founder_founder_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.founder_founder_id_seq', 3, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_seq', 46, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 37, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: founder founder_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.founder
    ADD CONSTRAINT founder_name_key UNIQUE (name);


--
-- Name: founder founder_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.founder
    ADD CONSTRAINT founder_pkey PRIMARY KEY (founder_id);


--
-- Name: galaxy galaxy_galaxy_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_galaxy_id_key UNIQUE (galaxy_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_moon_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_moon_key UNIQUE (moon_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet name_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT name_unique UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_galaxy_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_key UNIQUE (galaxy_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_star_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_star_id_key UNIQUE (star_id);


--
-- Name: founder founder_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.founder
    ADD CONSTRAINT founder_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

