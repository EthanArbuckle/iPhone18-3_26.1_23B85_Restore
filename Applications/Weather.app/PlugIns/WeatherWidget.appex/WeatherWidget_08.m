uint64_t sub_1000D4D10()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  sub_1000D8108(v0 + OBJC_IVAR____TtC13WeatherWidget12EntryFactory_eventViewModelFactory, type metadata accessor for EventViewModelFactory);
  sub_1000D8108(v0 + OBJC_IVAR____TtC13WeatherWidget12EntryFactory_aggregateWeatherViewModelFactory, type metadata accessor for AggregateWeatherViewModelFactory);
  sub_1000D8108(v0 + OBJC_IVAR____TtC13WeatherWidget12EntryFactory_instantWeatherViewModelFactory, type metadata accessor for InstantWeatherViewModelFactory);
  v3 = *(v0 + OBJC_IVAR____TtC13WeatherWidget12EntryFactory_sunriseSunsetViewModelFactory);

  sub_100009068((v0 + OBJC_IVAR____TtC13WeatherWidget12EntryFactory_appConfigurationManager));
  return v0;
}

uint64_t sub_1000D4DC4()
{
  sub_1000D4D10();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t type metadata accessor for EntryFactory()
{
  result = qword_1001357E0;
  if (!qword_1001357E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000D4E70()
{
  result = type metadata accessor for EventViewModelFactory();
  if (v1 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = type metadata accessor for AggregateWeatherViewModelFactory();
    if (v2 <= 0x3F)
    {
      v5 = *(result - 8) + 64;
      result = sub_1000EB3C4();
      if (v3 <= 0x3F)
      {
        v6 = *(result - 8) + 64;
        return swift_updateClassMetadata2();
      }
    }
  }

  return result;
}

unint64_t sub_1000D4F94()
{
  result = qword_100133AE0;
  if (!qword_100133AE0)
  {
    sub_100002ABC(&qword_100132670, &unk_1000F54E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100133AE0);
  }

  return result;
}

uint64_t sub_1000D4FF8@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 16);
  v6 = type metadata accessor for ForecastEntry(0);
  sub_1000C254C(a2 + v6[6]);
  sub_1000E85B4();
  v7 = v6[5];
  sub_1000EBD64();
  sub_10000D52C();
  sub_1000028A0(v8, v9, v10, v11);
  *(a2 + v6[7]) = a1;
  type metadata accessor for ForecastEntry.Model(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1000D5090@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v286 = type metadata accessor for WeatherDataViewModel();
  v4 = sub_1000069E4(v286);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  sub_10004B3F0();
  sub_10000D4A0(v7);
  v8 = type metadata accessor for WidgetContext();
  v9 = sub_100009210(v8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  sub_10004B3F0();
  v13 = sub_10000D4A0(v12);
  v280 = type metadata accessor for AggregateWeatherViewModel(v13);
  v14 = sub_1000069E4(v280);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  sub_10004B3F0();
  sub_10000D4A0(v17);
  v283 = sub_1000E9A84();
  v18 = sub_1000090D4(v283);
  v282 = v19;
  v21 = *(v20 + 64);
  __chkstk_darwin(v18);
  sub_10004B3F0();
  sub_10000D4C4(v22);
  v23 = sub_100002A10(&qword_100130EB8, &qword_1000F1660);
  sub_100009210(v23);
  v25 = *(v24 + 64);
  sub_100009204();
  __chkstk_darwin(v26);
  sub_10000D58C();
  sub_10000D4C4(v27);
  v28 = sub_100002A10(&qword_10012F138, &qword_1000EEF48);
  sub_100009210(v28);
  v30 = *(v29 + 64);
  sub_100009204();
  __chkstk_darwin(v31);
  sub_10000D58C();
  sub_10000D4C4(v32);
  v33 = sub_100002A10(&qword_100134890, &qword_1000F7388);
  sub_100009210(v33);
  v35 = *(v34 + 64);
  sub_100009204();
  __chkstk_darwin(v36);
  sub_10000D58C();
  sub_10000D4A0(v37);
  v38 = sub_1000E9894();
  v39 = sub_100009210(v38);
  v41 = *(v40 + 64);
  __chkstk_darwin(v39);
  sub_10004B3F0();
  v325 = v42;
  sub_10000921C();
  v307 = sub_1000E94B4();
  v43 = sub_1000090D4(v307);
  v295 = v44;
  v46 = *(v45 + 64);
  __chkstk_darwin(v43);
  sub_10004B3F0();
  sub_10000D4A0(v47);
  v305 = sub_1000EB214();
  v48 = sub_1000090D4(v305);
  v311 = v49;
  v51 = *(v50 + 64);
  __chkstk_darwin(v48);
  sub_10000D45C();
  sub_10000D408();
  __chkstk_darwin(v52);
  sub_10000D56C();
  sub_10000D4A0(v53);
  v324 = sub_1000E8E24();
  v54 = sub_1000090D4(v324);
  v298 = v55;
  v57 = *(v56 + 64);
  __chkstk_darwin(v54);
  sub_10004B3F0();
  v332 = v58;
  sub_10000921C();
  v59 = sub_1000EB814();
  v60 = sub_1000090D4(v59);
  v309 = v61;
  v63 = *(v62 + 64);
  __chkstk_darwin(v60);
  sub_10000D45C();
  sub_10000D408();
  __chkstk_darwin(v64);
  sub_10000D56C();
  sub_10000D4A0(v65);
  v299 = sub_1000EB544();
  v66 = sub_1000090D4(v299);
  v297 = v67;
  v69 = *(v68 + 64);
  __chkstk_darwin(v66);
  sub_10004B3F0();
  sub_10000D4C4(v70);
  v71 = sub_100002A10(&qword_10012FD80, &unk_1000F06B8);
  sub_100009210(v71);
  v73 = *(v72 + 64);
  sub_100009204();
  __chkstk_darwin(v74);
  sub_10000D58C();
  sub_10000D4A0(v75);
  v76 = sub_1000E9134();
  v77 = sub_100009210(v76);
  v79 = *(v78 + 64);
  __chkstk_darwin(v77);
  sub_10004B3F0();
  sub_10000D4A0(v80);
  v81 = sub_1000E9184();
  v82 = sub_100009210(v81);
  v84 = *(v83 + 64);
  __chkstk_darwin(v82);
  sub_10004B3F0();
  sub_10000D4C4(v85);
  v86 = sub_100002A10(&qword_10012F048, &qword_1000EEF30);
  v87 = sub_100009210(v86);
  v89 = *(v88 + 64);
  __chkstk_darwin(v87);
  sub_10000D45C();
  sub_10000D408();
  __chkstk_darwin(v90);
  sub_10000D4D0();
  sub_10000D408();
  __chkstk_darwin(v91);
  sub_10000D4D0();
  sub_10000D408();
  __chkstk_darwin(v92);
  sub_10000D4D0();
  sub_10000D408();
  __chkstk_darwin(v93);
  sub_10000D4D0();
  sub_10000D408();
  __chkstk_darwin(v94);
  sub_10000D4D0();
  sub_10000D408();
  __chkstk_darwin(v95);
  sub_10000D4D0();
  sub_10000D408();
  __chkstk_darwin(v96);
  sub_10000D4D0();
  sub_10000D408();
  __chkstk_darwin(v97);
  sub_10000D4D0();
  sub_10000D408();
  __chkstk_darwin(v98);
  sub_10000D4D0();
  sub_10000D408();
  __chkstk_darwin(v99);
  sub_10000D56C();
  sub_10000921C();
  v272 = sub_1000EAF24();
  v100 = sub_1000090D4(v272);
  v270._object = v101;
  v103 = *(v102 + 64);
  __chkstk_darwin(v100);
  sub_10004B3F0();
  v336 = v104;
  v105 = sub_100002A10(&qword_10012EF30, &unk_1000F14F0);
  v106 = sub_100009210(v105);
  v108 = *(v107 + 64);
  __chkstk_darwin(v106);
  sub_10000D45C();
  sub_10000D408();
  __chkstk_darwin(v109);
  sub_10000D56C();
  v335 = v110;
  sub_10000921C();
  v291 = sub_1000EB674();
  v111 = sub_1000090D4(v291);
  v278 = v112;
  v114 = *(v113 + 64);
  __chkstk_darwin(v111);
  sub_10004B3F0();
  sub_10000D4C4(v115);
  v116 = sub_100002A10(&qword_10012ED70, &qword_1000EECC0);
  v117 = sub_1000090D4(v116);
  v292 = v118;
  v120 = *(v119 + 64);
  __chkstk_darwin(v117);
  sub_10000D45C();
  v327 = v121;
  sub_10004B6F4();
  __chkstk_darwin(v122);
  sub_10000D4D0();
  v334 = v123;
  sub_10004B6F4();
  __chkstk_darwin(v124);
  sub_10000D4D0();
  sub_10000D408();
  __chkstk_darwin(v125);
  sub_10000D4D0();
  sub_10000D408();
  __chkstk_darwin(v126);
  sub_10000D56C();
  sub_10000D4A0(v127);
  v331 = sub_1000E8604();
  v128 = sub_1000090D4(v331);
  v294 = v129;
  v131 = *(v130 + 64);
  __chkstk_darwin(v128);
  sub_10000D45C();
  sub_10000D408();
  __chkstk_darwin(v132);
  sub_10000D4D0();
  sub_10000D408();
  __chkstk_darwin(v133);
  sub_10000D4D0();
  v330 = v134;
  sub_10004B6F4();
  __chkstk_darwin(v135);
  sub_10000D56C();
  v329 = v136;
  sub_10000921C();
  v137 = sub_1000E8C34();
  v138 = sub_1000090D4(v137);
  v140 = v139;
  v142 = *(v141 + 64);
  __chkstk_darwin(v138);
  sub_100006A10();
  sub_1000D819C();
  v143 = sub_1000E8634();
  v144 = sub_100009210(v143);
  v146 = *(v145 + 64);
  __chkstk_darwin(v144);
  sub_100006A10();
  v328 = sub_1000EAFC4();
  v147 = sub_1000090D4(v328);
  v289 = v148;
  v150 = *(v149 + 64);
  __chkstk_darwin(v147);
  sub_10000D45C();
  sub_10000D408();
  __chkstk_darwin(v151);
  sub_10000D4D0();
  v333 = v152;
  sub_10004B6F4();
  __chkstk_darwin(v153);
  sub_10000D56C();
  sub_10000D4C4(v154);
  sub_1000E8624();
  v273 = *(v140 + 104);
  v273(v3, enum case for WeatherCondition.partlyCloudy(_:), v137);
  if (qword_10012EBF8 != -1)
  {
    swift_once();
  }

  v155 = qword_100145E00;
  v269._countAndFlagsBits = 0x80000001000FF4A0;
  sub_1000D81DC();
  sub_1000E8464(v344, v347, v341, v350, v269);

  sub_1000D8250();
  v274 = v3;
  sub_1000EAFA4();
  sub_1000E85B4();
  sub_1000E8314();
  sub_1000E8314();
  sub_1000E8314();
  sub_1000E8624();
  v323 = *(v294 + 16);
  v323(v330, v329, v331);
  sub_1000E8584();
  v156 = *(v292 + 16);
  v156(v334, v314, v116);
  v156(v327, v314, v116);
  v156(v335, v313, v116);
  sub_10000D554();
  sub_1000028A0(v157, v158, v159, v116);
  v156(v321, v317, v116);
  sub_10000D554();
  v326 = v116;
  sub_1000028A0(v160, v161, v162, v116);
  (*(v289 + 16))(v333, v316, v328);
  (*(v270._object + 13))(v336, enum case for CloudAltitudeKind.low(_:), v272);
  sub_10000D52C();
  sub_1000028A0(v163, v164, v165, v331);
  sub_1000D6C88(v315);
  v166 = 6;
  sub_1000E9154();
  sub_1000D7170();
  v167 = qword_100145E00;
  v270._countAndFlagsBits = 0x80000001000FF4F0;
  sub_1000D81DC();
  sub_1000E8464(v345, v348, v342, v351, v270);

  *v296 = 50;
  (*(v297 + 104))(v296, enum case for CurrentObservationViewModel.AirQuality.Value.number(_:), v299);
  sub_1000EB564();
  sub_1000EB584();
  sub_10000D554();
  sub_1000028A0(v168, v169, v170, v171);
  sub_1000D81DC();
  sub_1000EB614();
  v300 = enum case for Precipitation.none(_:);
  v322 = (v298 + 104);
  v172 = &_swiftEmptyArrayStorage;
  do
  {
    v337 = v166;
    sub_1000E8624();
    v323(v330, v329, v331);
    v156(v334, v314, v116);
    sub_1000D81C4();
    v173();
    v320 = *v322;
    (*v322)(v332, v300, v324);
    sub_1000D7170();
    v271._object = v318;
    sub_1000D8224();
    sub_1000D81DC();
    sub_1000EB7D4();
    (*(v309 + 16))(v276, v275, v59);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v176 = v172[2];
      sub_1000314A4();
      v172 = v177;
    }

    v175 = v172[2];
    v174 = v172[3];
    if (v175 >= v174 >> 1)
    {
      sub_10000FB24(v174);
      sub_1000314A4();
      v172 = v178;
    }

    (*(v309 + 8))(v275, v59);
    v172[2] = v175 + 1;
    (*(v309 + 32))(v172 + ((*(v309 + 80) + 32) & ~*(v309 + 80)) + *(v309 + 72) * v175, v276, v59);
    --v166;
  }

  while (v337 != 1);
  sub_1000E8624();
  v273(v274, enum case for WeatherCondition.rain(_:), v137);
  v179 = qword_100145E00;
  v271._countAndFlagsBits = 0x80000001000FF540;
  sub_1000D81DC();
  sub_1000E8464(v346, v349, v343, v352, v271);

  sub_1000D8250();
  sub_1000D8224();
  sub_1000EAFA4();
  v310 = (v2 + OBJC_IVAR____TtC13WeatherWidget12EntryFactory_appConfigurationManager);
  v301 = enum case for Precipitation.rain(_:);
  v180 = 7;
  v338 = &_swiftEmptyArrayStorage;
  v181 = v317;
  v182 = v330;
  do
  {
    v319 = v180;
    sub_1000E8624();
    v323(v182, v329, v331);
    v156(v334, v313, v326);
    v156(v327, v181, v326);
    sub_1000D81C4();
    v183();
    v320(v332, v301, v324);
    v184 = v310[4];
    sub_100008DA8(v310, v310[3]);
    sub_1000E9804();
    sub_1000E9474();
    (*(v295 + 8))(v306, v307);
    sub_10000D52C();
    sub_1000028A0(v185, v186, v187, v331);
    sub_10000D52C();
    sub_1000028A0(v188, v189, v190, v331);
    sub_10000D52C();
    sub_1000028A0(v191, v192, v193, v331);
    sub_10000D52C();
    sub_1000028A0(v194, v195, v196, v331);
    sub_10000D52C();
    sub_1000028A0(v197, v198, v199, v331);
    sub_1000D6C88(v302);
    sub_10000D52C();
    sub_1000028A0(v200, v201, v202, v331);
    sub_10000D52C();
    sub_1000028A0(v203, v204, v205, v331);
    sub_10000D52C();
    sub_1000028A0(v206, v207, v208, v331);
    sub_10000D52C();
    sub_1000028A0(v209, v210, v211, v331);
    sub_1000E91F4();
    sub_1000E9224();
    sub_10000D554();
    sub_1000028A0(v212, v213, v214, v215);
    sub_1000D7368(v308);
    sub_1000E9154();
    v182 = v330;
    sub_1000EB184();
    (*(v311 + 16))(v303, v304, v305);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v217 = v338;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v220 = v338[2];
      sub_1000313D4();
      v217 = v221;
    }

    v219 = v217[2];
    v218 = v217[3];
    v181 = v317;
    if (v219 >= v218 >> 1)
    {
      sub_10000FB24(v218);
      sub_1000313D4();
      v338 = v222;
    }

    else
    {
      v338 = v217;
    }

    (*(v311 + 8))(v304, v305);
    v338[2] = v219 + 1;
    (*(v311 + 32))(v338 + ((*(v311 + 80) + 32) & ~*(v311 + 80)) + *(v311 + 72) * v219, v303, v305);
    --v180;
  }

  while (v319 != 1);
  v223 = type metadata accessor for AggregateWeatherViewModel.SunEvent(0);
  sub_10000D52C();
  sub_1000028A0(v224, v225, v226, v223);
  sub_1000D6C88(v277);
  v227 = sub_100005B30(v277, 1, v331);
  if (v227 == 1)
  {
    sub_100008E48(v277, &qword_10012F048, &qword_1000EEF30);
  }

  else
  {
    sub_100008E48(v279, &qword_100130EB8, &qword_1000F1660);
    v228 = *(v294 + 32);
    v228(v325, v277, v331);
    v228(v279, v325, v331);
    swift_storeEnumTagMultiPayload();
    sub_10000D554();
    sub_1000028A0(v229, v230, v231, v223);
  }

  sub_1000E9A64();
  sub_1000E8624();
  sub_1000D7BB8(v285 + v280[9]);
  type metadata accessor for AirQualityViewModel();
  sub_10000D554();
  sub_1000028A0(v232, v233, v234, v235);
  v236 = v280[10];
  sub_1000EBAF4();
  sub_10000D52C();
  sub_1000028A0(v237, v238, v239, v240);
  v241 = v280[13];
  sub_1000E8524();
  sub_10000D52C();
  sub_1000028A0(v242, v243, v244, v245);
  sub_10000EBC4(v279, v285 + v280[14], &qword_100130EB8, &qword_1000F1660);
  (*(v282 + 16))(v285 + v280[5], v281, v283);
  (*(v278 + 16))(v285 + v280[6], v290, v291);
  *(v285 + v280[7]) = v172;
  *(v285 + v280[8]) = v338;
  *(v285 + v280[11]) = &_swiftEmptyArrayStorage;
  v246 = v285 + v280[12];
  *v246 = 0x2010004020100;
  *(v246 + 8) = 1;
  v247 = *(v2 + 16);
  v248 = sub_1000C254C(v293);
  if (a1 == 3)
  {
    v249 = v287;
    sub_1000EB284();
    sub_1000D8108(v285, type metadata accessor for AggregateWeatherViewModel);
    (*(v282 + 8))(v281, v283);
    sub_100008E48(v279, &qword_100130EB8, &qword_1000F1660);
    v250 = *(v289 + 8);
    v250(v312, v328);
    v251 = sub_1000D8264();
    v252(v251);
    v253 = sub_1000D817C();
    v247(v253);
    v254 = sub_1000D8244(&v340);
    v247(v254);
    v255 = sub_1000D8244(&v339);
    v247(v255);
    v250(v316, v328);
  }

  else
  {
    (*(v282 + 8))(v281, v283, v248);
    sub_100008E48(v279, &qword_100130EB8, &qword_1000F1660);
    v256 = *(v289 + 8);
    v256(v312, v328);
    v257 = sub_1000D8264();
    v258(v257);
    v259 = sub_1000D817C();
    v247(v259);
    v260 = sub_1000D8244(&v340);
    v247(v260);
    v261 = sub_1000D8244(&v339);
    v247(v261);
    v256(v316, v328);
    v249 = v287;
    sub_1000D80A8(v285, v287, type metadata accessor for AggregateWeatherViewModel);
  }

  swift_storeEnumTagMultiPayload();
  v262 = type metadata accessor for ForecastEntry(0);
  v263 = v262[5];
  sub_1000EBD64();
  sub_10000D52C();
  sub_1000028A0(v264, v265, v266, v267);
  sub_1000D80A8(v249, a2 + v262[7], type metadata accessor for WeatherDataViewModel);
  type metadata accessor for ForecastEntry.Model(0);
  swift_storeEnumTagMultiPayload();
  (*(v294 + 32))(a2, v329, v331);
  return sub_1000D80A8(v293, a2 + v262[6], type metadata accessor for WidgetContext);
}

uint64_t sub_1000D6C88@<X0>(uint64_t a1@<X8>)
{
  v49 = a1;
  v1 = sub_1000E8734();
  v2 = *(v1 - 8);
  v3 = v2[8];
  __chkstk_darwin(v1);
  v5 = v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100002A10(&qword_10012F048, &qword_1000EEF30);
  v7 = *(*(v6 - 8) + 64);
  v8 = __chkstk_darwin(v6 - 8);
  v42 = v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = v37 - v10;
  v12 = sub_1000E8604();
  v48 = *(v12 - 8);
  v13 = *(v48 + 64);
  v14 = __chkstk_darwin(v12);
  v39 = v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = v37 - v16;
  v18 = sub_1000E8754();
  v46 = *(v18 - 8);
  v47 = v18;
  v19 = *(v46 + 64);
  __chkstk_darwin(v18);
  v21 = v37 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1000E9A84();
  v44 = *(v22 - 8);
  v45 = v22;
  v23 = *(v44 + 64);
  __chkstk_darwin(v22);
  v43 = v37 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000E9A64();
  sub_1000E8714();
  sub_1000E85F4();
  v25 = v2[13];
  v25(v5, enum case for Calendar.Component.hour(_:), v1);
  sub_1000E86F4();
  v26 = v2[1];
  v40 = v2 + 1;
  v41 = v1;
  v27 = v1;
  v28 = v12;
  v26(v5, v27);
  if (sub_100005B30(v11, 1, v12) == 1)
  {
    (*(v48 + 8))(v17, v12);
    (*(v46 + 8))(v21, v47);
    (*(v44 + 8))(v43, v45);
  }

  else
  {
    v29 = v48;
    v30 = v39;
    v37[0] = *(v48 + 32);
    v37[1] = v48 + 32;
    (v37[0])(v39, v11, v28);
    v38 = v28;
    v31 = v41;
    v25(v5, enum case for Calendar.Component.minute(_:), v41);
    v11 = v42;
    sub_1000E86F4();
    v32 = v31;
    v28 = v38;
    v26(v5, v32);
    v33 = *(v29 + 8);
    v33(v30, v28);
    v33(v17, v28);
    (*(v46 + 8))(v21, v47);
    (*(v44 + 8))(v43, v45);
    if (sub_100005B30(v11, 1, v28) != 1)
    {
      v34 = v49;
      (v37[0])(v49, v11, v28);
      v35 = 0;
      return sub_1000028A0(v34, v35, 1, v28);
    }
  }

  v34 = v49;
  sub_100008E48(v11, &qword_10012F048, &qword_1000EEF30);
  v35 = 1;
  return sub_1000028A0(v34, v35, 1, v28);
}

uint64_t sub_1000D7170()
{
  v0 = sub_100002A10(&qword_1001358A8, &qword_1000FA8C8);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v11 - v2;
  v4 = sub_100002A10(&qword_10012FD70, &qword_1000F06B0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v6 = sub_100002A10(&qword_100135678, &unk_1000FA7C0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v8 = [objc_opt_self() degrees];
  sub_100031CF8(0, &qword_1001358B0, NSUnitAngle_ptr);
  sub_1000E82D4();
  v9 = [objc_opt_self() milesPerHour];
  sub_100031CF8(0, &qword_1001358B8, NSUnitSpeed_ptr);
  sub_1000E82D4();
  sub_1000028A0(v3, 1, 1, v4);
  return sub_1000E90F4();
}

uint64_t sub_1000D7368@<X0>(uint64_t a1@<X8>)
{
  v86 = a1;
  v1 = sub_1000E8734();
  v2 = *(v1 - 8);
  v3 = v2[8];
  __chkstk_darwin(v1);
  v5 = &v65 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100002A10(&qword_10012F048, &qword_1000EEF30);
  v7 = *(*(v6 - 8) + 64);
  v8 = __chkstk_darwin(v6 - 8);
  v72 = &v65 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v71 = &v65 - v11;
  v12 = __chkstk_darwin(v10);
  v74 = &v65 - v13;
  v14 = __chkstk_darwin(v12);
  v76 = &v65 - v15;
  v16 = __chkstk_darwin(v14);
  v78 = &v65 - v17;
  __chkstk_darwin(v16);
  v19 = &v65 - v18;
  v20 = sub_1000E8604();
  v87 = *(v20 - 8);
  v21 = *(v87 + 64);
  v22 = __chkstk_darwin(v20);
  v70 = &v65 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __chkstk_darwin(v22);
  v73 = &v65 - v25;
  v26 = __chkstk_darwin(v24);
  v77 = &v65 - v27;
  v28 = __chkstk_darwin(v26);
  v30 = &v65 - v29;
  __chkstk_darwin(v28);
  v32 = &v65 - v31;
  v33 = sub_1000E8754();
  v84 = *(v33 - 8);
  v85 = v33;
  v34 = *(v84 + 64);
  __chkstk_darwin(v33);
  v36 = &v65 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_1000E9A84();
  v82 = *(v37 - 8);
  v83 = v37;
  v38 = *(v82 + 64);
  __chkstk_darwin(v37);
  v81 = &v65 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000E9A64();
  sub_1000E8714();
  sub_1000E85F4();
  v40 = v2[13];
  v75 = enum case for Calendar.Component.hour(_:);
  v80 = v40;
  (v40)(v5);
  sub_1000E86F4();
  v41 = v1;
  v42 = v1;
  v43 = v20;
  v79 = v2[1];
  v79(v5, v42);
  if (sub_100005B30(v19, 1, v20) == 1)
  {
    (*(v87 + 8))(v32, v20);
  }

  else
  {
    v44 = v87;
    v45 = *(v87 + 32);
    v68 = v87 + 32;
    v69 = v32;
    v67 = v45;
    v45(v30, v19, v20);
    v46 = enum case for Calendar.Component.minute(_:);
    v80(v5, enum case for Calendar.Component.minute(_:), v41);
    v19 = v78;
    sub_1000E86F4();
    v79(v5, v41);
    if (sub_100005B30(v19, 1, v20) == 1)
    {
      v47 = *(v44 + 8);
      v47(v30, v43);
    }

    else
    {
      v66 = v30;
      v48 = v77;
      v67(v77, v19, v20);
      v80(v5, v75, v41);
      v19 = v76;
      sub_1000E86E4();
      v79(v5, v41);
      if (sub_100005B30(v19, 1, v20) == 1)
      {
        v47 = *(v87 + 8);
        v47(v48, v43);
      }

      else
      {
        v49 = v73;
        v67(v73, v19, v20);
        v80(v5, v46, v41);
        v50 = v49;
        v19 = v74;
        sub_1000E86E4();
        v79(v5, v41);
        v51 = sub_100005B30(v19, 1, v20);
        v52 = v87;
        if (v51 != 1)
        {
          v57 = v70;
          v67(v70, v19, v20);
          v58 = v52;
          v59 = v52;
          v60 = v48;
          v61 = *(v58 + 16);
          v62 = v71;
          v61(v71, v60, v43);
          sub_1000028A0(v62, 0, 1, v43);
          v63 = v72;
          v61(v72, v57, v43);
          sub_1000028A0(v63, 0, 1, v43);
          v53 = v86;
          sub_1000E8D44();
          v64 = *(v59 + 8);
          v64(v57, v43);
          v64(v50, v43);
          v64(v60, v43);
          v64(v66, v43);
          v64(v69, v43);
          (*(v84 + 8))(v36, v85);
          (*(v82 + 8))(v81, v83);
          v54 = 0;
          goto LABEL_12;
        }

        v47 = *(v87 + 8);
        v47(v50, v43);
        v47(v48, v43);
      }

      v47(v66, v43);
    }

    v47(v69, v43);
  }

  v53 = v86;
  (*(v84 + 8))(v36, v85);
  (*(v82 + 8))(v81, v83);
  sub_100008E48(v19, &qword_10012F048, &qword_1000EEF30);
  v54 = 1;
LABEL_12:
  v55 = sub_1000E8D54();
  return sub_1000028A0(v53, v54, 1, v55);
}

uint64_t sub_1000D7BB8@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1000E8F84();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v4 = type metadata accessor for AirQualityViewModel();
  v5 = v4[8];
  sub_1000E8F34();
  sub_100002A10(&qword_1001358A0, &qword_1000FA8C0);
  v6 = sub_1000E8F64();
  v7 = *(v6 - 8);
  v8 = *(v7 + 72);
  v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1000EFAD0;
  (*(v7 + 16))(v10 + v9, a1 + v5, v6);
  sub_1000E8F74();
  v11 = v4[7];
  sub_1000E8E34();
  sub_1000E8624();
  v12 = a1 + v4[5];
  result = sub_1000E85F4();
  *(a1 + v4[6]) = 42;
  return result;
}

void sub_1000D7E10(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, void (*a5)(unint64_t, void), uint64_t (*a6)(void))
{
  v6 = a4 >> 1;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
LABEL_7:
    __break(1u);
    return;
  }

  if (a4 >> 1 != a3)
  {
    a5((a4 >> 1) - a3, 0);
    if (v6 != a3)
    {
      v9 = *(a6(0) - 8);
      v10 = (*(v9 + 80) + 32) & ~*(v9 + 80);
      v11 = *(v9 + 72);
      swift_arrayInitWithCopy();
      return;
    }

    goto LABEL_7;
  }
}

uint64_t sub_1000D7EFC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002A10(&qword_1001309D8, &qword_1000F10F0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000D7F6C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  sub_1000069E4(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

unint64_t sub_1000D7FFC(unint64_t result, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v4 = *(a3 + 16);
  if (v4 < result || v4 < a2)
  {
    goto LABEL_9;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    v6 = a4(0);
    sub_100009210(v6);
    v8 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_1000D80A8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  sub_1000069E4(v5);
  (*(v6 + 32))(a2, a1);
  return a2;
}

uint64_t sub_1000D8108(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_1000069E4(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1000D817C()
{
  v1 = *(*(v0 - 552) + 8);
  result = *(v0 - 336);
  v3 = *(v0 - 208);
  return result;
}

void sub_1000D81C4()
{
  v1 = *(v0 - 184);
  v2 = *(v0 - 264);
  v3 = *(v0 - 272);
}

uint64_t sub_1000D8200()
{
}

uint64_t sub_1000D8230()
{
  v2 = *(v1 - 96);
  v3 = *(v1 - 88);
  result = v0;
  v5 = *(v1 - 112);
  v6 = *(v1 - 104);
  return result;
}

uint64_t sub_1000D8264()
{
  v3 = *(v1 + 8);
  result = v0;
  v5 = *(v2 - 560);
  return result;
}

unint64_t sub_1000D827C()
{
  result = qword_1001358C8;
  if (!qword_1001358C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001358C8);
  }

  return result;
}

unint64_t sub_1000D8320()
{
  result = qword_1001358D0;
  if (!qword_1001358D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001358D0);
  }

  return result;
}

uint64_t sub_1000D8374(uint64_t a1)
{
  v2 = sub_1000D8320();

  return AppIntentsExtension.configuration.getter(a1, v2);
}

uint64_t sub_1000D83FC@<X0>(uint64_t a1@<X8>)
{
  v30 = a1;
  v1 = sub_100002A10(&qword_100135650, &unk_1000FA9D0);
  v2 = sub_1000090D4(v1);
  v26 = v3;
  v5 = *(v4 + 64);
  __chkstk_darwin(v2);
  v7 = &v25 - v6;
  v8 = sub_100002A10(&qword_100135658, &unk_1000FA780);
  v9 = sub_1000090D4(v8);
  v27 = v10;
  v12 = *(v11 + 64);
  __chkstk_darwin(v9);
  v14 = &v25 - v13;
  v15 = sub_100002A10(&qword_100135660, &qword_1000FA9E0);
  v28 = sub_1000090D4(v15);
  v29 = v16;
  v18 = *(v17 + 64);
  __chkstk_darwin(v28);
  v20 = &v25 - v19;
  swift_getKeyPath();
  sub_1000B70D8();
  sub_1000EBC84();
  sub_1000EA354();
  v21 = sub_1000CC738();
  sub_1000EA464();

  (*(v26 + 8))(v7, v1);
  sub_1000EA354();
  v31 = v1;
  v32 = v21;
  sub_100084FDC();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_1000EA434();

  (*(v27 + 8))(v14, v8);
  v31 = v8;
  v32 = OpaqueTypeConformance2;
  sub_1000CC860();
  swift_getOpaqueTypeConformance2();
  v23 = v28;
  sub_1000EA484();
  return (*(v29 + 8))(v20, v23);
}

uint64_t sub_1000D87E0@<X0>(uint64_t a1@<X8>)
{
  sub_1000EA354();
  if (qword_10012EBF8 != -1)
  {
    swift_once();
  }

  v2 = qword_100145E00;
  result = sub_1000EA7F4();
  *a1 = result;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5 & 1;
  *(a1 + 24) = v6;
  return result;
}

uint64_t sub_1000D88B8(char a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  *(v3 + 32) = a3;
  v5 = qword_10012EB40;

  if (v5 != -1)
  {
    swift_once();
  }

  sub_1000E9D04();
  sub_100008DA8(v9, v10);
  sub_100002A10(&qword_100133028, &qword_1000F4B90);
  sub_1000E4C34();
  result = sub_1000E9B54();
  if (!v8)
  {
    __break(1u);
    goto LABEL_13;
  }

  sub_10004E7EC(&v7, (v4 + 5));
  sub_1000E4C44(v9);
  type metadata accessor for WeatherDataService();
  sub_1000E4C34();
  result = sub_1000E9B44();
  if (!result)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v4[10] = result;
  sub_1000E4C44(v9);
  type metadata accessor for EntryFactory();
  sub_1000E4C34();
  result = sub_1000E9B44();
  if (!result)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v4[11] = result;
  sub_1000E4C44(v9);
  type metadata accessor for RefreshPolicyProvider();
  sub_1000E4C34();
  result = sub_1000E9B44();
  if (!result)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v4[12] = result;
  sub_1000E4C44(v9);
  type metadata accessor for WidgetLocationManager();
  sub_1000E4C34();
  result = sub_1000E9B44();
  if (!result)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v4[13] = result;
  sub_1000E4C44(v9);
  sub_1000E97B4();
  sub_1000E4C34();
  result = sub_1000E9B44();
  if (!result)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v4[14] = result;
  sub_1000E4C44(v9);
  type metadata accessor for DemoManager();
  sub_1000E4C34();
  result = sub_1000E9B44();
  if (!result)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v4[15] = result;
  sub_100008DA8(v9, v10);
  sub_100002A10(&qword_100135A00, &unk_1000FABE0);
  sub_1000E4C34();
  result = sub_1000E9B54();
  if (v8)
  {

    sub_10004E7EC(&v7, (v4 + 16));
    sub_1000D8AD0();
    sub_100009068(v9);
    return v4;
  }

LABEL_19:
  __break(1u);
  return result;
}

uint64_t sub_1000D8AD0()
{
  v1 = sub_1000E94B4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000E9544();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  sub_1000E9534();
  v9 = v0[9];
  sub_100008DA8(v0 + 5, v0[8]);
  sub_1000E9804();
  sub_1000E9504();

  return (*(v2 + 8))(v5, v1);
}

BOOL sub_1000D8BF4()
{
  sub_1000E9304();
  sub_1000E92F4();
  sub_1000E9234();
  sub_1000E92E4();

  v0 = sub_1000E9594();
  v2 = v1;
  if (v0 == sub_1000E9594() && v2 == v3)
  {

    goto LABEL_8;
  }

  v5 = sub_1000EC5D4();

  result = 0;
  if (v5)
  {
LABEL_8:
    sub_1000E92F4();
    sub_1000E9244();
    sub_1000E92E4();

    return v7 == 0;
  }

  return result;
}

void sub_1000D8D00()
{
  sub_100006A58();
  v1 = v0;
  v3 = v2;
  v55 = v4;
  v53 = type metadata accessor for ForecastEntry(0);
  v5 = sub_1000069E4(v53);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  sub_1000091AC();
  v52 = v8 - v9;
  __chkstk_darwin(v10);
  v12 = &v49 - v11;
  v13 = sub_1000EBD94();
  v14 = sub_1000090D4(v13);
  v16 = v15;
  v18 = *(v17 + 64);
  __chkstk_darwin(v14);
  sub_1000091AC();
  v21 = (v19 - v20);
  __chkstk_darwin(v22);
  v24 = &v49 - v23;
  if (qword_10012EB38 != -1)
  {
    sub_10000DC3C();
  }

  v25 = sub_1000E9F64();
  v26 = sub_100008CB8(v25, qword_100145C10);
  v27 = *(v16 + 16);
  v27(v24, v3, v13);

  v54 = v26;
  v28 = sub_1000E9F44();
  v29 = sub_1000EC1B4();

  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v51 = v12;
    v31 = v30;
    v50 = sub_1000E4E98();
    v56 = v50;
    *v31 = 136315394;
    v32 = sub_1000E2E18(*(v1 + 24), *(v1 + 32), &v56);
    sub_1000E4D68(v32);
    v27(v21, v24, v13);
    v33 = sub_1000EBEF4();
    v35 = v34;
    (*(v16 + 8))(v24, v13);
    v36 = sub_1000E2E18(v33, v35, &v56);

    *(v31 + 14) = v36;
    _os_log_impl(&_mh_execute_header, v28, v29, "About to build a placeholder entry for %s. context=%{public}s", v31, 0x16u);
    swift_arrayDestroy();
    sub_100009194();
    v12 = v51;
    sub_100009194();
  }

  else
  {

    (*(v16 + 8))(v24, v13);
  }

  v37 = *(v1 + 88);
  v38 = v55;
  sub_1000D5090(*(v1 + 16), v55);
  sub_1000E4C1C();
  sub_1000E3800(v38, v12, v39);

  v40 = sub_1000E9F44();
  v41 = sub_1000EC1B4();

  if (os_log_type_enabled(v40, v41))
  {
    v42 = sub_10000923C();
    v56 = sub_1000E4E98();
    *v42 = 136315651;
    *(v42 + 4) = sub_1000E2E18(*(v1 + 24), *(v1 + 32), &v56);
    *(v42 + 12) = 2160;
    sub_1000E4D0C();
    *(v42 + 14) = v43;
    *(v42 + 22) = 2081;
    sub_1000E4C1C();
    sub_1000E3800(v12, v52, v44);
    v45 = sub_1000EBEE4();
    v47 = v46;
    sub_1000E4C04();
    sub_1000E3614();
    v48 = sub_1000E2E18(v45, v47, &v56);

    *(v42 + 24) = v48;
    _os_log_impl(&_mh_execute_header, v40, v41, "Returning placeholder entry for %s. entry=%{private,mask.hash}s", v42, 0x20u);
    swift_arrayDestroy();
    sub_100009118();
    sub_100009194();
  }

  else
  {

    sub_1000E4C04();
    sub_1000E3614();
  }

  sub_100006A20();
}

uint64_t sub_1000D9120@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v57 = a2;
  v54 = sub_1000EBD14();
  v5 = *(v54 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v54);
  v58 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = &v50 - v9;
  v11 = type metadata accessor for ForecastEntry(0);
  v55 = *(v11 - 8);
  v12 = *(v55 + 64);
  v13 = __chkstk_darwin(v11);
  v15 = &v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v13);
  v18 = &v50 - v17;
  __chkstk_darwin(v16);
  v59 = &v50 - v19;
  if (qword_10012EB38 != -1)
  {
    swift_once();
  }

  v20 = sub_1000E9F64();
  v21 = sub_100008CB8(v20, qword_100145C10);

  v53 = v21;
  v22 = sub_1000E9F44();
  v23 = sub_1000EC1B4();

  v52 = v23;
  v24 = os_log_type_enabled(v22, v23);
  v56 = v11;
  if (v24)
  {
    v25 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    v61 = v51;
    *v25 = 136315651;
    *(v25 + 4) = sub_1000E2E18(v3[3], v3[4], &v61);
    *(v25 + 12) = 2160;
    *(v25 + 14) = 1752392040;
    *(v25 + 22) = 2081;
    v60 = a1;
    v26 = sub_1000EBEF4();
    v28 = v5;
    v29 = v15;
    v30 = sub_1000E2E18(v26, v27, &v61);

    *(v25 + 24) = v30;
    v15 = v29;
    v5 = v28;
    _os_log_impl(&_mh_execute_header, v22, v52, "About to build an error timeline for %s. error=%{private,mask.hash}s", v25, 0x20u);
    swift_arrayDestroy();
  }

  v31 = v3[11];
  v32 = v59;
  sub_1000D4FF8(a1, v59);
  v33 = v3[12];
  v34 = a1;
  v35 = v3[3];
  v36 = v3[4];
  sub_100008A90(v34, v35, v36, v10);
  sub_1000E3800(v32, v18, type metadata accessor for ForecastEntry);

  v37 = sub_1000E9F44();
  v38 = sub_1000EC1B4();

  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    v61 = swift_slowAlloc();
    *v39 = 136315651;
    *(v39 + 4) = sub_1000E2E18(v35, v36, &v61);
    *(v39 + 12) = 2160;
    *(v39 + 14) = 1752392040;
    *(v39 + 22) = 2081;
    sub_1000E3800(v18, v15, type metadata accessor for ForecastEntry);
    v40 = v10;
    v41 = sub_1000EBEE4();
    v43 = v42;
    sub_1000E3614();
    v44 = sub_1000E2E18(v41, v43, &v61);

    *(v39 + 24) = v44;
    v10 = v40;
    _os_log_impl(&_mh_execute_header, v37, v38, "Returning error timeline for %s. entry=%{private,mask.hash}s", v39, 0x20u);
    swift_arrayDestroy();
  }

  else
  {

    sub_1000E3614();
  }

  sub_100002A10(&qword_1001304D8, &qword_1000FABD0);
  v45 = *(v55 + 72);
  v46 = (*(v55 + 80) + 32) & ~*(v55 + 80);
  v47 = swift_allocObject();
  *(v47 + 16) = xmmword_1000EFAD0;
  sub_1000E3800(v59, v47 + v46, type metadata accessor for ForecastEntry);
  v48 = v54;
  (*(v5 + 16))(v58, v10, v54);
  sub_1000DB330();
  sub_1000EBDA4();
  (*(v5 + 8))(v10, v48);
  return sub_1000E3614();
}

uint64_t sub_1000D9728@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v74 = type metadata accessor for WeatherDataOperationResult.Data(0);
  v8 = *(*(v74 - 8) + 64);
  __chkstk_darwin(v74);
  v73 = &v70 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for WeatherDataOperationResult(0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v76 = &v70 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for ForecastEntry(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = __chkstk_darwin(v13);
  v72 = &v70 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v75 = &v70 - v18;
  __chkstk_darwin(v17);
  v20 = &v70 - v19;
  v82 = sub_1000E8604();
  v80 = *(v82 - 8);
  v21 = *(v80 + 64);
  __chkstk_darwin(v82);
  v79 = &v70 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_100002A10(&qword_10012F040, &unk_1000EEED0);
  v24 = *(*(v23 - 8) + 64);
  v25 = __chkstk_darwin(v23 - 8);
  v81 = &v70 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v28 = &v70 - v27;
  v29 = type metadata accessor for WidgetLocation();
  v30 = *(*(v29 - 8) + 64);
  __chkstk_darwin(v29);
  v32 = &v70 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10012EB38 != -1)
  {
    swift_once();
  }

  v33 = sub_1000E9F64();
  v34 = sub_100008CB8(v33, qword_100145C10);
  v83 = a2;
  sub_1000E3800(a2, v32, type metadata accessor for WidgetLocation);

  v78 = v34;
  v35 = sub_1000E9F44();
  v36 = sub_1000EC1B4();

  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    v77 = v28;
    v38 = v37;
    v70 = swift_slowAlloc();
    v71 = v13;
    v85 = v70;
    *v38 = 136315394;
    *(v38 + 4) = sub_1000E2E18(v4[3], v4[4], &v85);
    *(v38 + 12) = 2082;
    v84 = v32[*(v29 + 20)];
    v39 = sub_1000EBEF4();
    v40 = a1;
    v41 = v20;
    v42 = v4;
    v43 = a3;
    v45 = v44;
    sub_1000E3614();
    v46 = sub_1000E2E18(v39, v45, &v85);
    a3 = v43;
    v4 = v42;
    v20 = v41;
    a1 = v40;

    *(v38 + 14) = v46;
    _os_log_impl(&_mh_execute_header, v35, v36, "About to build a single timeline entry for %s. locationState=%{public}s", v38, 0x16u);
    swift_arrayDestroy();
    v13 = v71;

    v28 = v77;
  }

  else
  {

    sub_1000E3614();
  }

  v47 = v4[11];
  v48 = v79;
  sub_1000E85F4();
  sub_1000D1AD4(a1, v48, v83, v28);
  (*(v80 + 8))(v48, v82);
  v49 = v81;
  sub_100072EB0(v28, v81, &qword_10012F040, &unk_1000EEED0);
  if (sub_100005B30(v49, 1, v13) == 1)
  {
    sub_100006850(v49, &qword_10012F040, &unk_1000EEED0);
    v50 = v76;
    sub_1000E3800(a1, v76, type metadata accessor for WeatherDataOperationResult);

    v51 = sub_1000E9F44();
    v52 = sub_1000EC194();

    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      v85 = swift_slowAlloc();
      *v53 = 136315651;
      *(v53 + 4) = sub_1000E2E18(v4[3], v4[4], &v85);
      *(v53 + 12) = 2160;
      *(v53 + 14) = 1752392040;
      *(v53 + 22) = 2081;
      sub_1000E3800(v50, v73, type metadata accessor for WeatherDataOperationResult.Data);
      v54 = sub_1000EBEE4();
      v56 = v55;
      sub_1000E3614();
      v57 = sub_1000E2E18(v54, v56, &v85);

      *(v53 + 24) = v57;
      _os_log_impl(&_mh_execute_header, v51, v52, "Could not build single timeline entry for %s (returning .noWeatherData). weatherDataOperationResult.data=%{private,mask.hash}s", v53, 0x20u);
      swift_arrayDestroy();
    }

    else
    {

      sub_1000E3614();
    }

    sub_1000D4FF8(2, a3);
    return sub_100006850(v28, &qword_10012F040, &unk_1000EEED0);
  }

  else
  {
    sub_1000E3F50(v49, v20, type metadata accessor for ForecastEntry);
    v58 = v75;
    sub_1000E3800(v20, v75, type metadata accessor for ForecastEntry);

    v59 = sub_1000E9F44();
    v60 = sub_1000EC1B4();

    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      v62 = swift_slowAlloc();
      v77 = v28;
      v85 = v62;
      *v61 = 136315651;
      *(v61 + 4) = sub_1000E2E18(v4[3], v4[4], &v85);
      *(v61 + 12) = 2160;
      *(v61 + 14) = 1752392040;
      *(v61 + 22) = 2081;
      sub_1000E3800(v58, v72, type metadata accessor for ForecastEntry);
      v63 = sub_1000EBEE4();
      v64 = v20;
      v66 = v65;
      sub_1000E3614();
      v67 = sub_1000E2E18(v63, v66, &v85);
      v20 = v64;

      *(v61 + 24) = v67;
      _os_log_impl(&_mh_execute_header, v59, v60, "Successfully built single timeline entry for %s. entry=%{private,mask.hash}s", v61, 0x20u);
      swift_arrayDestroy();

      v68 = v77;
    }

    else
    {

      sub_1000E3614();
      v68 = v28;
    }

    sub_100006850(v68, &qword_10012F040, &unk_1000EEED0);
    return sub_1000E3F50(v20, a3, type metadata accessor for ForecastEntry);
  }
}

void sub_1000DA078()
{
  sub_100006A58();
  v2 = v1;
  v119 = v4;
  v120 = v3;
  v6 = v5;
  v125 = v7;
  v8 = sub_100002A10(&qword_1001359D0, &qword_1000FABB0);
  v113 = sub_1000090D4(v8);
  v114 = v9;
  v11 = *(v10 + 64);
  sub_100009204();
  __chkstk_darwin(v12);
  v126 = &v105 - v13;
  sub_10000921C();
  v14 = sub_1000EBD14();
  v15 = sub_1000090D4(v14);
  v17 = v16;
  v19 = *(v18 + 64);
  __chkstk_darwin(v15);
  sub_1000091AC();
  v111 = v20 - v21;
  __chkstk_darwin(v22);
  sub_10000D56C();
  v123 = v23;
  sub_10000921C();
  v24 = sub_1000EBC44();
  v25 = sub_1000090D4(v24);
  v117 = v26;
  v118 = v25;
  v28 = *(v27 + 64);
  __chkstk_darwin(v25);
  sub_10004B3F0();
  v116 = v29;
  sub_10000921C();
  v124 = sub_1000E99A4();
  v30 = sub_1000069E4(v124);
  v32 = *(v31 + 64);
  __chkstk_darwin(v30);
  sub_10004B3F0();
  v122 = v33;
  sub_10000921C();
  v127 = type metadata accessor for WidgetLocation();
  v34 = sub_1000069E4(v127);
  v36 = *(v35 + 64);
  __chkstk_darwin(v34);
  sub_1000091AC();
  v39 = v37 - v38;
  v41 = __chkstk_darwin(v40);
  v43 = &v105 - v42;
  v44 = __chkstk_darwin(v41);
  v112 = &v105 - v45;
  v46 = __chkstk_darwin(v44);
  v48 = &v105 - v47;
  __chkstk_darwin(v46);
  v50 = &v105 - v49;
  if (qword_10012EB38 != -1)
  {
    sub_10000DC3C();
  }

  v51 = sub_1000E9F64();
  v52 = sub_100008CB8(v51, qword_100145C10);
  sub_1000E4C94();
  sub_1000E3800(v6, v50, v53);
  v121 = v6;
  sub_1000E3800(v6, v48, v0);

  v115 = v52;
  v54 = sub_1000E9F44();
  v55 = sub_1000EC1B4();

  v110 = v55;
  v56 = os_log_type_enabled(v54, v55);
  v109 = v39;
  if (v56)
  {
    v57 = swift_slowAlloc();
    v108 = v14;
    v58 = v57;
    v106 = swift_slowAlloc();
    v129[0] = v106;
    *v58 = 136315907;
    *(v58 + 4) = sub_1000E2E18(v2[3], v2[4], v129);
    *(v58 + 12) = 2082;
    v128 = v50[*(v127 + 20)];
    sub_1000EBEF4();
    v59 = v2;
    v61 = v60;
    v107 = v43;
    sub_1000E3614();
    v62 = sub_1000E4D90();
    v64 = sub_1000E2E18(v62, v61, v63);
    v2 = v59;

    *(v58 + 14) = v64;
    *(v58 + 22) = 2160;
    sub_1000E4D0C();
    *(v58 + 24) = v65;
    *(v58 + 32) = 2081;
    sub_1000E99C4();
    sub_1000EBEF4();
    v67 = v66;
    v43 = v107;
    sub_1000E3614();
    v68 = sub_1000E4D90();
    v70 = sub_1000E2E18(v68, v67, v69);

    *(v58 + 34) = v70;
    _os_log_impl(&_mh_execute_header, v54, v110, "About to build a timeline for %s. locationState=%{public}s, location: %{private,mask.hash}s", v58, 0x2Au);
    swift_arrayDestroy();
    sub_100009194();
    v14 = v108;
    sub_100009194();
  }

  else
  {

    sub_1000E4C64();
    sub_1000E3614();
    sub_1000E3614();
  }

  v71 = v2[11];
  v72 = v116;
  sub_1000EBD74();
  v73 = v121;
  v74 = sub_1000D264C(v120, v121, v72);
  (*(v117 + 8))(v72, v118);
  v75 = v123;
  if (v74)
  {
    v76 = v2[12];
    v77 = v2[3];
    v78 = v2[4];
    sub_100006A70(v74, *(v73 + *(v127 + 20)), v77, v78, v123);
    (*(v17 + 16))(v111, v75, v14);
    type metadata accessor for ForecastEntry(0);
    sub_1000DB330();
    sub_1000EBDA4();
    sub_1000E3800(v73, v112, type metadata accessor for WidgetLocation);

    v79 = sub_1000E9F44();
    v80 = v14;
    v81 = sub_1000EC1B4();

    if (os_log_type_enabled(v79, v81))
    {
      v82 = sub_10000923C();
      v129[0] = sub_1000E4E98();
      *v82 = 136315651;
      *(v82 + 4) = sub_1000E2E18(v77, v78, v129);
      *(v82 + 12) = 2160;
      sub_1000E4D0C();
      *(v82 + 14) = v83;
      *(v82 + 22) = 2081;
      v84 = v80;
      sub_1000E99C4();
      sub_1000EBEF4();
      v86 = v85;
      sub_1000E4CAC();
      v87 = sub_1000E4D90();
      v89 = sub_1000E2E18(v87, v86, v88);

      *(v82 + 24) = v89;
      _os_log_impl(&_mh_execute_header, v79, v81, "Timeline: successfully built for %s! location: %{private,mask.hash}s", v82, 0x20u);
      swift_arrayDestroy();
      sub_100009194();
      sub_100009118();

      (*(v17 + 8))(v75, v84);
    }

    else
    {

      sub_1000E4CAC();
      (*(v17 + 8))(v75, v80);
    }

    (*(v114 + 32))(v125, v126, v113);
  }

  else
  {
    sub_1000E4C94();
    sub_1000E3800(v73, v43, v90);
    sub_1000E3800(v73, v109, 0);

    v91 = sub_1000E9F44();
    v92 = sub_1000EC1B4();

    if (os_log_type_enabled(v91, v92))
    {
      v93 = swift_slowAlloc();
      v129[0] = swift_slowAlloc();
      *v93 = 136315907;
      v94 = sub_1000E2E18(v2[3], v2[4], v129);
      sub_1000E4D68(v94);
      v128 = v43[*(v127 + 20)];
      sub_1000EBEF4();
      v96 = v95;
      sub_1000E3614();
      v97 = sub_1000E4D90();
      v99 = sub_1000E2E18(v97, v96, v98);

      *(v93 + 14) = v99;
      sub_1000E4CE0();
      sub_1000E99C4();
      sub_1000EBEF4();
      v101 = v100;
      sub_1000E3614();
      v102 = sub_1000E4D90();
      v104 = sub_1000E2E18(v102, v101, v103);

      *(v93 + 34) = v104;
      _os_log_impl(&_mh_execute_header, v91, v92, "Timeline: failed for %s (no entries so returning .noWeatherData). locationState=%{public}s, location: %{private,mask.hash}s", v93, 0x2Au);
      swift_arrayDestroy();
      sub_100009194();
      sub_100009194();
    }

    else
    {

      sub_1000E4C64();
      sub_1000E3614();
      sub_1000E3614();
    }

    sub_1000D9120(2, v125);
  }

  sub_100006A20();
}

void sub_1000DA980()
{
  v1 = v0;
  if (qword_10012EB38 != -1)
  {
    swift_once();
  }

  v2 = sub_1000E9F64();
  sub_100008CB8(v2, qword_100145C10);
  v3 = sub_1000E9F44();
  v4 = sub_1000EC1B4();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "About to refresh the app config - taking RBAssertion", v5, 2u);
  }

  v6 = sub_1000DABD8();
  if (v6)
  {
    v7 = v6;
    sub_1000E94B4();
    sub_1000E9CD4();
    v8 = sub_1000E9C44();
    sub_1000E9C84();

    v9 = swift_allocObject();
    *(v9 + 16) = v1;
    *(v9 + 24) = v7;

    v10 = v7;
    oslog = sub_1000E9C44();
    sub_1000E9CA4();
  }

  else
  {
    oslog = sub_1000E9F44();
    v11 = sub_1000EC194();
    if (os_log_type_enabled(oslog, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v11, "Error taking RBAssertion - we won't update the app config", v12, 2u);
    }
  }
}

id sub_1000DABD8()
{
  sub_100031CF8(0, &qword_1001359E0, RBSDomainAttribute_ptr);
  v0 = sub_1000DB1E0();
  v1 = [objc_opt_self() currentProcess];
  sub_100002A10(&qword_1001359E8, &qword_1000FABD8);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1000FAA40;
  *(v2 + 32) = v0;
  objc_allocWithZone(RBSAssertion);
  v3 = v0;
  v4 = sub_1000E2D70(0xD00000000000001FLL, 0x80000001000FF700, v1);
  v16 = 0;
  if ([v4 acquireWithError:&v16])
  {
    v5 = v16;
  }

  else
  {
    v6 = v16;
    sub_1000E8494();

    swift_willThrow();
    if (qword_10012EB38 != -1)
    {
      swift_once();
    }

    v7 = sub_1000E9F64();
    sub_100008CB8(v7, qword_100145C10);
    swift_errorRetain();
    v8 = sub_1000E9F44();
    v9 = sub_1000EC1B4();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v16 = v11;
      *v10 = 136315138;
      swift_errorRetain();
      sub_100002A10(&qword_100130548, &qword_1000F0CF0);
      v12 = sub_1000EBEF4();
      v14 = sub_1000E2E18(v12, v13, &v16);

      *(v10 + 4) = v14;
      _os_log_impl(&_mh_execute_header, v8, v9, "failed to acquire runningboard assertion. error=%s", v10, 0xCu);
      sub_100009068(v11);
    }

    [v4 invalidate];

    return 0;
  }

  return v4;
}

uint64_t sub_1000DAEF4(void *a1)
{
  v1 = a1[9];
  sub_100008DA8(a1 + 5, a1[8]);
  return sub_1000E9814();
}

void sub_1000DAF44()
{
  if (qword_10012EB38 != -1)
  {
    swift_once();
  }

  v0 = sub_1000E9F64();
  sub_100008CB8(v0, qword_100145C10);
  swift_errorRetain();
  oslog = sub_1000E9F44();
  v1 = sub_1000EC194();

  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v8 = v3;
    *v2 = 136315138;
    swift_errorRetain();
    sub_100002A10(&qword_100130548, &qword_1000F0CF0);
    v4 = sub_1000EBEF4();
    v6 = sub_1000E2E18(v4, v5, &v8);

    *(v2 + 4) = v6;
    _os_log_impl(&_mh_execute_header, oslog, v1, "Error refreshing app config. Error: %s", v2, 0xCu);
    sub_100009068(v3);
  }

  else
  {
  }
}

void sub_1000DB0E8(int a1, id a2)
{
  [a2 invalidate];
  if (qword_10012EB38 != -1)
  {
    swift_once();
  }

  v2 = sub_1000E9F64();
  sub_100008CB8(v2, qword_100145C10);
  oslog = sub_1000E9F44();
  v3 = sub_1000EC1B4();
  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v3, "Just refreshed the app config - release RBAssertion", v4, 2u);
  }
}

id sub_1000DB1E0()
{
  v0 = sub_1000EBE64();

  v1 = sub_1000EBE64();

  v2 = [swift_getObjCClassFromMetadata() attributeWithDomain:v0 name:v1];

  return v2;
}

uint64_t sub_1000DB274()
{
  v1 = *(v0 + 32);

  sub_100009068((v0 + 40));
  v2 = *(v0 + 80);

  v3 = *(v0 + 88);

  v4 = *(v0 + 96);

  v5 = *(v0 + 112);

  v6 = *(v0 + 120);

  sub_100009068((v0 + 128));
  return v0;
}

uint64_t sub_1000DB2D4()
{
  sub_1000DB274();

  return _swift_deallocClassInstance(v0, 168, 7);
}

unint64_t sub_1000DB330()
{
  result = qword_100134888;
  if (!qword_100134888)
  {
    type metadata accessor for ForecastEntry(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100134888);
  }

  return result;
}

uint64_t sub_1000DB71C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = sub_100002A10(&qword_10012F040, &unk_1000EEED0);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v15 - v9;
  v11 = swift_projectBox();
  sub_100072EB0(v11, v10, &qword_10012F040, &unk_1000EEED0);
  v12 = type metadata accessor for ForecastEntry(0);
  if (sub_100005B30(v10, 1, v12) != 1)
  {
    return sub_1000E3F50(v10, a2, type metadata accessor for ForecastEntry);
  }

  sub_100006850(v10, &qword_10012F040, &unk_1000EEED0);
  v13 = *(a1 + 88);
  sub_1000D4FF8(2, a2);
  sub_1000E3800(a2, v8, type metadata accessor for ForecastEntry);
  sub_1000028A0(v8, 0, 1, v12);
  swift_beginAccess();
  return sub_1000E385C(v8, v11);
}

uint64_t sub_1000DB8BC(uint64_t a1)
{
  v2 = sub_1000EBC44();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, a1, v2);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 == enum case for WidgetFamily.systemSmall(_:) || v7 == enum case for WidgetFamily.systemMedium(_:) || v7 == enum case for WidgetFamily.systemLarge(_:) || v7 == enum case for WidgetFamily.systemExtraLarge(_:))
  {
    return 1;
  }

  if (v7 != enum case for WidgetFamily.accessoryCircular(_:) && v7 != enum case for WidgetFamily.accessoryRectangular(_:))
  {
    if (v7 != enum case for WidgetFamily.accessoryInline(_:))
    {
      (*(v3 + 8))(v6, v2);
    }

    return 1;
  }

  return 0;
}

void sub_1000DBA40()
{
  sub_100006A58();
  v87 = v0;
  v88 = v1;
  v91 = v2;
  v92 = v3;
  v90 = v4;
  v89 = v5;
  v6 = sub_100002A10(&qword_100130440, &qword_1000F0BE0);
  sub_100009210(v6);
  v8 = *(v7 + 64);
  sub_100009204();
  __chkstk_darwin(v9);
  v84 = &v79 - v10;
  sub_10000921C();
  v86 = sub_1000E9A84();
  v11 = sub_1000090D4(v86);
  v83 = v12;
  v14 = *(v13 + 64);
  __chkstk_darwin(v11);
  sub_1000E4E08();
  v82 = v15;
  __chkstk_darwin(v16);
  sub_10000D56C();
  v85 = v17;
  v18 = sub_100002A10(&qword_10012F040, &unk_1000EEED0);
  sub_100009210(v18);
  v20 = *(v19 + 64);
  sub_100009204();
  __chkstk_darwin(v21);
  v23 = &v79 - v22;
  v24 = sub_100002A10(&qword_1001359D0, &qword_1000FABB0);
  sub_1000090D4(v24);
  v26 = v25;
  v28 = *(v27 + 64);
  sub_100009204();
  __chkstk_darwin(v29);
  v31 = &v79 - v30;
  v32 = type metadata accessor for ForecastEntry(0);
  v33 = sub_1000069E4(v32);
  v35 = *(v34 + 64);
  __chkstk_darwin(v33);
  sub_1000091AC();
  v38 = v36 - v37;
  __chkstk_darwin(v39);
  v41 = &v79 - v40;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v43 = Strong;
    v81 = v41;
    v44 = *(Strong + 120);

    v45 = sub_1000AB7F8();

    if (v45)
    {
      v46 = *(v43 + 120);

      sub_1000A8908(v89, v31);

      v47 = sub_1000EBDB4();
      v48 = *(v26 + 8);
      v26 += 8;
      v48(v31, v24);
      sub_100007804(v47);

      if (sub_100005B30(v23, 1, v32) != 1)
      {
        sub_1000E4C7C();
        sub_1000E3F50(v23, v38, v64);
        v91(v38);

        sub_1000E4C04();
        goto LABEL_20;
      }

      sub_100006850(v23, &qword_10012F040, &unk_1000EEED0);
    }

    if (v90 == 4)
    {
      if (qword_10012EB38 != -1)
      {
        sub_10000DC3C();
      }

      v49 = sub_1000E9F64();
      sub_100008CB8(v49, qword_100145C10);

      v50 = sub_1000E9F44();
      v51 = sub_1000EC194();

      if (os_log_type_enabled(v50, v51))
      {
        v32 = sub_1000E4DDC();
        v93[0] = sub_10000923C();
        sub_1000E4DB8(4.8149e-34);
        v52 = sub_1000E2E18(v43, v38, v93);

        *(v32 + 4) = v52;
        sub_1000E4E60(&_mh_execute_header, v53, v54, "Accessory - Snapshot: failed for %s (no location permissions)");
        sub_1000E4D9C();
        sub_100009194();
        sub_100009118();
      }

      sub_1000E4E40();
      v55 = v26;
      v56 = 0;
    }

    else
    {
      v32 = v84;
      sub_100072EB0(v89, v84, &qword_100130440, &qword_1000F0BE0);
      v57 = v86;
      if (sub_100005B30(v32, 1, v86) != 1)
      {
        v65 = v83;
        v80 = *(v83 + 32);
        v66 = v85;
        v80(v85, v32, v57);
        v89 = *(v43 + 80);
        LODWORD(v84) = *(v43 + 16);
        sub_1000E4CD4();
        v67 = swift_allocObject();
        swift_weakInit();
        v68 = v82;
        v69 = v66;
        v70 = v57;
        (*(v65 + 16))(v82, v69, v57);
        v71 = *(v65 + 80);
        v81 = v43;
        v72 = (v71 + 57) & ~v71;
        v73 = swift_allocObject();
        v74 = v91;
        v75 = v92;
        *(v73 + 16) = v67;
        *(v73 + 24) = v74;
        v76 = v87;
        v77 = v88;
        *(v73 + 32) = v75;
        *(v73 + 40) = v76;
        *(v73 + 48) = v77;
        *(v73 + 56) = v90;
        v80(v73 + v72, v68, v70);

        v78 = v85;
        sub_1000A0834(v85, v84, sub_1000E3788, v73);

        (*(v65 + 8))(v78, v70);

        goto LABEL_21;
      }

      sub_100006850(v32, &qword_100130440, &qword_1000F0BE0);
      if (qword_10012EB38 != -1)
      {
        sub_10000DC3C();
      }

      v58 = sub_1000E9F64();
      sub_100008CB8(v58, qword_100145C10);

      v59 = sub_1000E9F44();
      v60 = sub_1000EC194();

      if (os_log_type_enabled(v59, v60))
      {
        v32 = sub_1000E4DDC();
        v93[0] = sub_10000923C();
        sub_1000E4DB8(4.8149e-34);
        v61 = sub_1000E2E18(v43, v38, v93);

        *(v32 + 4) = v61;
        sub_1000E4E60(&_mh_execute_header, v62, v63, "Accessory - Snapshot: failed for %s (no location)");
        sub_1000E4D9C();
        sub_100009194();
        sub_100009118();
      }

      sub_1000E4E40();
      v55 = v26;
      v56 = 1;
    }

    sub_1000D4FF8(v56, v55);

    (v32)(v26);

    sub_1000E4C04();
  }

  else
  {
    sub_1000DB71C(v88, v41);
    v91(v41);
    sub_1000E4C04();
  }

LABEL_20:
  sub_1000E3614();
LABEL_21:
  sub_100006A20();
}

uint64_t sub_1000DC150(uint64_t a1, uint64_t a2, void (*a3)(char *), uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8)
{
  v90 = a8;
  v94 = a4;
  v95 = a3;
  v12 = sub_100002A10(&qword_1001359D8, &qword_1000FABB8);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = &v85 - v14;
  v91 = type metadata accessor for WidgetLocation();
  v16 = *(*(v91 - 8) + 64);
  __chkstk_darwin(v91);
  v92 = &v85 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = type metadata accessor for WeatherDataOperationResult(0);
  v18 = *(*(v93 - 8) + 64);
  v19 = __chkstk_darwin(v93);
  v89 = &v85 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v22 = &v85 - v21;
  v23 = sub_100002A10(&qword_1001325D8, &unk_1000FABC0);
  v24 = *(*(v23 - 8) + 64);
  __chkstk_darwin(v23);
  v26 = (&v85 - v25);
  v27 = type metadata accessor for ForecastEntry(0);
  v28 = *(*(v27 - 8) + 64);
  __chkstk_darwin(v27 - 8);
  v30 = &v85 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v32 = Strong;
    v87 = a5;
    sub_100072EB0(a1, v26, &qword_1001325D8, &unk_1000FABC0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v88 = a7;
    if (EnumCaseMultiPayload == 1)
    {
      v34 = *v26;
      if (qword_10012EB38 != -1)
      {
        swift_once();
      }

      v35 = sub_1000E9F64();
      v36 = sub_100008CB8(v35, qword_100145C10);

      v37 = sub_1000E9F44();
      v38 = sub_1000EC1B4();

      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        v40 = swift_slowAlloc();
        v85 = v36;
        v41 = v40;
        v97 = v40;
        *v39 = 136315138;
        v86 = a6;
        v42 = v34;
        v44 = *(v32 + 24);
        v43 = *(v32 + 32);

        v45 = sub_1000E2E18(v44, v43, &v97);

        *(v39 + 4) = v45;
        v34 = v42;
        a6 = v86;
        _os_log_impl(&_mh_execute_header, v37, v38, "Accessory - Snapshot: failed to fetch or interpolate fresh weather data for %s, trying old cached data first", v39, 0xCu);
        sub_100009068(v41);
      }

      v46 = *(v32 + 80);
      v47 = *(v32 + 16);

      sub_1000A114C(v90, v15);

      if (sub_100005B30(v15, 1, v93) == 1)
      {
        sub_100006850(v15, &qword_1001359D8, &qword_1000FABB8);

        swift_errorRetain();
        v48 = sub_1000E9F44();
        v49 = sub_1000EC194();

        if (os_log_type_enabled(v48, v49))
        {
          v50 = swift_slowAlloc();
          v97 = swift_slowAlloc();
          *v50 = 136315651;
          v90 = v30;
          v51 = *(v32 + 24);
          v52 = *(v32 + 32);

          v53 = sub_1000E2E18(v51, v52, &v97);

          *(v50 + 4) = v53;
          *(v50 + 12) = 2160;
          *(v50 + 14) = 1752392040;
          *(v50 + 22) = 2081;
          v96 = v34;
          swift_errorRetain();
          sub_100002A10(&qword_100130548, &qword_1000F0CF0);
          v54 = sub_1000EBEE4();
          v56 = sub_1000E2E18(v54, v55, &v97);
          v30 = v90;

          *(v50 + 24) = v56;
          _os_log_impl(&_mh_execute_header, v48, v49, "Accessory - Snapshot: failed to fetch weather data or get cached data for %s ... returning .noWeatherData. error=%{private,mask.hash}s", v50, 0x20u);
          swift_arrayDestroy();
        }

        sub_1000DB71C(a6, v30);
        v95(v30);
      }

      else
      {
        v70 = v89;
        sub_1000E3F50(v15, v89, type metadata accessor for WeatherDataOperationResult);

        v71 = sub_1000E9F44();
        v72 = sub_1000EC1B4();

        if (os_log_type_enabled(v71, v72))
        {
          v73 = swift_slowAlloc();
          v90 = v34;
          v74 = v73;
          v75 = swift_slowAlloc();
          v97 = v75;
          *v74 = 136315138;
          v76 = *(v32 + 24);
          v77 = *(v32 + 32);

          v78 = sub_1000E2E18(v76, v77, &v97);

          *(v74 + 4) = v78;
          _os_log_impl(&_mh_execute_header, v71, v72, "Accessory - Snapshot: successsully retrieved cached weather data for %s", v74, 0xCu);
          sub_100009068(v75);
        }

        v79 = *(v93 + 20);
        v80 = sub_1000E9A84();
        v81 = v70 + v79;
        v82 = v92;
        (*(*(v80 - 8) + 16))(v92, v81, v80);
        v83 = v91;
        *(v82 + *(v91 + 20)) = v88;
        *(v82 + *(v83 + 24)) = 0;
        sub_1000D9728(v70, v82, v30);
        sub_1000E3614();
        v95(v30);

        sub_1000E3614();
      }
    }

    else
    {
      sub_1000E3F50(v26, v22, type metadata accessor for WeatherDataOperationResult);
      if (qword_10012EB38 != -1)
      {
        swift_once();
      }

      v57 = sub_1000E9F64();
      sub_100008CB8(v57, qword_100145C10);

      v58 = sub_1000E9F44();
      v59 = sub_1000EC1B4();

      if (os_log_type_enabled(v58, v59))
      {
        v60 = swift_slowAlloc();
        v61 = swift_slowAlloc();
        v97 = v61;
        *v60 = 136315138;
        v63 = *(v32 + 24);
        v62 = *(v32 + 32);
        v90 = v30;

        v64 = sub_1000E2E18(v63, v62, &v97);
        v30 = v90;

        *(v60 + 4) = v64;
        _os_log_impl(&_mh_execute_header, v58, v59, "Accessory - Snapshot: successsully fetched weather data for %s", v60, 0xCu);
        sub_100009068(v61);
      }

      v65 = *(v93 + 20);
      v66 = sub_1000E9A84();
      v67 = &v22[v65];
      v68 = v92;
      (*(*(v66 - 8) + 16))(v92, v67, v66);
      v69 = v91;
      *(v68 + *(v91 + 20)) = v88;
      *(v68 + *(v69 + 24)) = 0;
      sub_1000D9728(v22, v68, v30);
      sub_1000E3614();
      v95(v30);

      sub_1000E3614();
    }
  }

  else
  {
    sub_1000DB71C(a6, v30);
    v95(v30);
  }

  return sub_1000E3614();
}

void sub_1000DCB50()
{
  sub_100006A58();
  v1 = v0;
  v66 = v2;
  v67 = v3;
  v77 = v4;
  v5 = sub_1000EBC44();
  v6 = sub_1000090D4(v5);
  v69 = v7;
  v70 = v6;
  v9 = *(v8 + 64);
  __chkstk_darwin(v6);
  sub_10004B3F0();
  v68 = v10;
  sub_10000921C();
  v11 = sub_1000EBD94();
  v12 = sub_1000090D4(v11);
  v71 = v13;
  v15 = *(v14 + 64);
  __chkstk_darwin(v12);
  v65 = v16;
  v76 = &v58 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000921C();
  v73 = sub_1000E8604();
  v17 = sub_1000090D4(v73);
  v19 = v18;
  v21 = *(v20 + 64);
  __chkstk_darwin(v17);
  sub_1000E4E08();
  v23 = v22;
  v64 = v24;
  __chkstk_darwin(v25);
  sub_10000D56C();
  v75 = v26;
  v28 = *(v0 + 24);
  v27 = *(v0 + 32);
  v29 = qword_10012EB38;

  if (v29 != -1)
  {
    sub_10000DC3C();
  }

  v30 = sub_1000E9F64();
  sub_100008CB8(v30, qword_100145C10);

  v31 = sub_1000E9F44();
  v32 = sub_1000EC1B4();

  v33 = os_log_type_enabled(v31, v32);
  v72 = v27;
  v74 = v28;
  if (v33)
  {
    v34 = sub_1000E4DDC();
    v78 = sub_10000923C();
    *v34 = 136315138;
    *(v34 + 4) = sub_1000E2E18(v28, v72, &v78);
    _os_log_impl(&_mh_execute_header, v31, v32, "Accessory - Timeline requested for %s", v34, 0xCu);
    sub_1000E4D9C();
    sub_100009194();
    sub_100009194();
  }

  v35 = v75;
  sub_1000E85B4();
  sub_1000E4CD4();
  v36 = swift_allocObject();
  sub_1000E4E80();
  v37 = v71;
  v38 = *(v71 + 16);
  v62 = v71 + 16;
  v63 = v38;
  v38(v76, v77, v11);
  v39 = v73;
  (*(v19 + 16))(v23, v35, v73);
  v40 = *(v37 + 80);
  v58 = v1;
  v59 = v11;
  v41 = v19;
  v42 = v11;
  v43 = (v40 + 56) & ~v40;
  v65 += v43;
  v60 = v40 | 7;
  v61 = v43;
  v44 = (v65 + *(v19 + 80)) & ~*(v19 + 80);
  v45 = swift_allocObject();
  v46 = v72;
  *(v45 + 2) = v74;
  *(v45 + 3) = v46;
  v47 = v66;
  *(v45 + 4) = v36;
  *(v45 + 5) = v47;
  *(v45 + 6) = v67;
  v71 = *(v37 + 32);
  v48 = &v45[v43];
  v49 = v76;
  (v71)(v48, v76, v42);
  (*(v41 + 32))(&v45[v44], v23, v39);

  v50 = v58;
  sub_1000DA980();
  sub_1000E93A4();
  sub_1000E9394();
  sub_1000E9374();

  v51 = v68;
  v52 = v77;
  sub_1000EBD74();
  LODWORD(v67) = sub_1000DB8BC(v51);
  (*(v69 + 8))(v51, v70);
  v53 = *(v50 + 104);
  sub_1000E4CD4();
  v54 = swift_allocObject();
  swift_weakInit();
  v55 = v59;
  v63(v49, v52, v59);
  v56 = swift_allocObject();
  v57 = v74;
  v56[2] = v54;
  v56[3] = v57;
  v56[4] = v46;
  v56[5] = sub_1000E2C28;
  v56[6] = v45;
  (v71)(v56 + v61, v49, v55);

  sub_10002A1F4(v67 & 1, sub_1000E2CF8);

  (*(v41 + 8))(v75, v73);

  sub_100006A20();
}

uint64_t sub_1000DD06C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t))
{
  if (qword_10012EB38 != -1)
  {
    swift_once();
  }

  v10 = sub_1000E9F64();
  sub_100008CB8(v10, qword_100145C10);

  v11 = sub_1000E9F44();
  v12 = sub_1000EC1B4();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v17 = v14;
    *v13 = 136446210;
    *(v13 + 4) = sub_1000E2E18(a3, a4, &v17);
    _os_log_impl(&_mh_execute_header, v11, v12, "Accessory - Completing timeline for %{public}s", v13, 0xCu);
    sub_100009068(v14);
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  result = a6(a1);
  if (Strong)
  {
  }

  return result;
}

void sub_1000DD210(char *a1, int a2, uint64_t a3, uint64_t a4, unint64_t a5, void (*a6)(uint64_t, uint64_t), void (*a7)(uint64_t, uint64_t), uint64_t a8)
{
  v74 = a8;
  v86 = a6;
  v80 = a2;
  v81 = a1;
  v78 = sub_1000EBD94();
  v75 = *(v78 - 8);
  v11 = *(v75 + 64);
  __chkstk_darwin(v78);
  v76 = v72 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100002A10(&qword_100130440, &qword_1000F0BE0);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = v72 - v14;
  v16 = sub_1000E9A84();
  v77 = *(v16 - 8);
  v17 = *(v77 + 64);
  v18 = __chkstk_darwin(v16);
  v19 = v72 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v21 = v72 - v20;
  v22 = sub_100002A10(&qword_1001359C8, &qword_1000FABA8);
  v23 = *(*(v22 - 8) + 64);
  __chkstk_darwin(v22 - 8);
  v83 = v72 - v24;
  v25 = sub_100002A10(&qword_1001359D0, &qword_1000FABB0);
  v84 = *(v25 - 8);
  v85 = v25;
  v26 = *(v84 + 64);
  __chkstk_darwin(v25);
  v82 = (v72 - v27);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v73 = a4;
    v29 = a5;
    v79 = a7;
    v30 = *(Strong + 120);
    v31 = Strong;

    v32 = sub_1000AB7F8();

    if (v32)
    {
      v33 = *(v31 + 120);

      v34 = v82;
      sub_1000A8908(v81, v82);

      v35 = sub_1000E9E24();
      v36 = v83;
      sub_1000028A0(v83, 1, 1, v35);
      v86(v34, v36);

      v37 = v36;
LABEL_15:
      sub_100006850(v37, &qword_1001359C8, &qword_1000FABA8);
      (*(v84 + 8))(v34, v85);
      return;
    }

    if (v80 == 4)
    {
      if (qword_10012EB38 != -1)
      {
        swift_once();
      }

      v44 = sub_1000E9F64();
      sub_100008CB8(v44, qword_100145C10);

      v45 = sub_1000E9F44();
      v46 = sub_1000EC1B4();

      if (os_log_type_enabled(v45, v46))
      {
        v47 = swift_slowAlloc();
        v48 = swift_slowAlloc();
        v87 = v48;
        *v47 = 136315138;
        *(v47 + 4) = sub_1000E2E18(v73, v29, &v87);
        _os_log_impl(&_mh_execute_header, v45, v46, "Accessory - Timeline: failed for %s (no location permissions)", v47, 0xCu);
        sub_100009068(v48);
      }

      v34 = v82;
      sub_1000D9120(0, v82);
      v49 = sub_1000E9E24();
      v50 = v83;
      sub_1000028A0(v83, 1, 1, v49);
      v86(v34, v50);

      v37 = v50;
      goto LABEL_15;
    }

    sub_100072EB0(v81, v15, &qword_100130440, &qword_1000F0BE0);
    if (sub_100005B30(v15, 1, v16) == 1)
    {
      sub_100006850(v15, &qword_100130440, &qword_1000F0BE0);
      if (qword_10012EB38 != -1)
      {
        swift_once();
      }

      v51 = sub_1000E9F64();
      sub_100008CB8(v51, qword_100145C10);

      v52 = sub_1000E9F44();
      v53 = sub_1000EC1B4();

      if (os_log_type_enabled(v52, v53))
      {
        v54 = swift_slowAlloc();
        v55 = swift_slowAlloc();
        v87 = v55;
        *v54 = 136315138;
        *(v54 + 4) = sub_1000E2E18(v73, v29, &v87);
        _os_log_impl(&_mh_execute_header, v52, v53, "Accessory - Timeline: failed for %s (no location)", v54, 0xCu);
        sub_100009068(v55);
      }

      v56 = v82;
      sub_1000D9120(1, v82);
      v57 = enum case for WidgetRefreshFailureReason.noLocationData(_:);
      v58 = sub_1000E9E24();
      v59 = v83;
      (*(*(v58 - 8) + 104))(v83, v57, v58);
      sub_1000028A0(v59, 0, 1, v58);
      v86(v56, v59);

      sub_100006850(v59, &qword_1001359C8, &qword_1000FABA8);
      (*(v84 + 8))(v56, v85);
    }

    else
    {
      v60 = v77;
      v61 = *(v77 + 32);
      v81 = (v77 + 32);
      v82 = v61;
      v83 = v29;
      v61(v21, v15, v16);
      v85 = *(v31 + 80);
      LODWORD(v84) = *(v31 + 16);
      v72[2] = v31;
      v62 = swift_allocObject();
      v72[1] = v62;
      swift_weakInit();
      (*(v60 + 16))(v19, v21, v16);
      v63 = v75;
      (*(v75 + 16))(v76, v74, v78);
      v64 = (*(v60 + 80) + 40) & ~*(v60 + 80);
      v65 = v64 + v17;
      v66 = (*(v63 + 80) + v64 + v17 + 1) & ~*(v63 + 80);
      v67 = swift_allocObject();
      v68 = v73;
      *(v67 + 2) = v62;
      *(v67 + 3) = v68;
      v69 = v82;
      *(v67 + 4) = v83;
      v69(&v67[v64], v19, v16);
      v67[v65] = v80;
      (*(v63 + 32))(&v67[v66], v76, v78);
      v70 = &v67[(v11 + v66 + 7) & 0xFFFFFFFFFFFFFFF8];
      v71 = v79;
      *v70 = v86;
      v70[1] = v71;

      sub_1000A0834(v21, v84, sub_1000E351C, v67);

      (*(v77 + 8))(v21, v16);
    }
  }

  else
  {
    if (qword_10012EB38 != -1)
    {
      swift_once();
    }

    v38 = sub_1000E9F64();
    sub_100008CB8(v38, qword_100145C10);

    v39 = sub_1000E9F44();
    v40 = sub_1000EC1B4();

    if (os_log_type_enabled(v39, v40))
    {
      v41 = a5;
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v87 = v43;
      *v42 = 136315138;
      *(v42 + 4) = sub_1000E2E18(a4, v41, &v87);
      _os_log_impl(&_mh_execute_header, v39, v40, "Accessory - Timeline: failed for %s (we have been deallocated while obtaining location information)", v42, 0xCu);
      sub_100009068(v43);
    }
  }
}

void sub_1000DDC1C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, int a6, uint64_t a7, void (*a8)(uint64_t, uint64_t), uint64_t a9)
{
  v94 = a8;
  v95 = a3;
  v88 = a7;
  v89 = a5;
  LODWORD(v86) = a6;
  v11 = sub_100002A10(&qword_1001359D8, &qword_1000FABB8);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v83 - v13;
  v15 = sub_100002A10(&qword_1001359C8, &qword_1000FABA8);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v93 = &v83 - v17;
  v87 = type metadata accessor for WidgetLocation();
  v18 = *(*(v87 - 8) + 64);
  __chkstk_darwin(v87);
  v20 = &v83 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_100002A10(&qword_1001359D0, &qword_1000FABB0);
  v91 = *(v21 - 8);
  v92 = v21;
  v22 = *(v91 + 64);
  __chkstk_darwin(v21);
  v90 = &v83 - v23;
  v24 = type metadata accessor for WeatherDataOperationResult(0);
  v25 = *(*(v24 - 8) + 64);
  v26 = __chkstk_darwin(v24);
  v28 = &v83 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v30 = &v83 - v29;
  v31 = sub_100002A10(&qword_1001325D8, &unk_1000FABC0);
  v32 = *(*(v31 - 8) + 64);
  __chkstk_darwin(v31);
  v34 = (&v83 - v33);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v36 = Strong;
    v85 = a9;
    sub_100072EB0(a1, v34, &qword_1001325D8, &unk_1000FABC0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v37 = *v34;
      if (qword_10012EB38 != -1)
      {
        swift_once();
      }

      v38 = sub_1000E9F64();
      v39 = sub_100008CB8(v38, qword_100145C10);

      v86 = v39;
      v40 = sub_1000E9F44();
      v41 = sub_1000EC1B4();

      if (os_log_type_enabled(v40, v41))
      {
        v42 = swift_slowAlloc();
        v84 = v37;
        v43 = v42;
        v44 = v36;
        v45 = swift_slowAlloc();
        v97 = v45;
        *v43 = 136315138;
        *(v43 + 4) = sub_1000E2E18(v95, a4, &v97);
        _os_log_impl(&_mh_execute_header, v40, v41, "Accessory - Timeline: failed to fetch or interpolate fresh weather data for %s, trying old cached data first", v43, 0xCu);
        sub_100009068(v45);
        v36 = v44;

        v37 = v84;
      }

      v46 = v89;
      v47 = *(v36 + 80);
      v48 = *(v36 + 16);

      sub_1000A114C(v46, v14);

      if (sub_100005B30(v14, 1, v24) == 1)
      {
        sub_100006850(v14, &qword_1001359D8, &qword_1000FABB8);

        swift_errorRetain();
        v49 = sub_1000E9F44();
        v50 = sub_1000EC194();

        if (os_log_type_enabled(v49, v50))
        {
          v51 = swift_slowAlloc();
          v97 = swift_slowAlloc();
          *v51 = 136315651;
          *(v51 + 4) = sub_1000E2E18(v95, a4, &v97);
          *(v51 + 12) = 2160;
          *(v51 + 14) = 1752392040;
          *(v51 + 22) = 2081;
          v96 = v37;
          swift_errorRetain();
          sub_100002A10(&qword_100130548, &qword_1000F0CF0);
          v52 = sub_1000EBEE4();
          v54 = sub_1000E2E18(v52, v53, &v97);

          *(v51 + 24) = v54;
          _os_log_impl(&_mh_execute_header, v49, v50, "Accessory - Timeline: failed to fetch weather data or get cached data for %s ... returning .noWeatherData. error=%{private,mask.hash}s", v51, 0x20u);
          swift_arrayDestroy();
        }

        v55 = v90;
        sub_1000D9120(2, v90);
        v56 = enum case for WidgetRefreshFailureReason.noWeatherData(_:);
        v57 = sub_1000E9E24();
        v58 = v93;
        (*(*(v57 - 8) + 104))(v93, v56, v57);
        sub_1000028A0(v58, 0, 1, v57);
        v94(v55, v58);

        sub_100006850(v58, &qword_1001359C8, &qword_1000FABA8);
        (*(v91 + 8))(v55, v92);
        return;
      }

      sub_1000E3F50(v14, v28, type metadata accessor for WeatherDataOperationResult);

      v74 = sub_1000E9F44();
      v75 = sub_1000EC1B4();

      if (os_log_type_enabled(v74, v75))
      {
        v76 = swift_slowAlloc();
        v77 = swift_slowAlloc();
        v97 = v77;
        *v76 = 136315138;
        *(v76 + 4) = sub_1000E2E18(v95, a4, &v97);
        _os_log_impl(&_mh_execute_header, v74, v75, "Accessory - Timeline: successsully retrieved cached weather data for %s", v76, 0xCu);
        sub_100009068(v77);
      }

      v78 = sub_1000E9A84();
      (*(*(v78 - 8) + 16))(v20, v46, v78);
      v79 = v87;
      v20[*(v87 + 20)] = 2;
      v20[*(v79 + 24)] = 0;
      v80 = v90;
      sub_1000DA078();
      sub_1000E3614();
      v81 = sub_1000E9E24();
      v82 = v93;
      sub_1000028A0(v93, 1, 1, v81);
      v94(v80, v82);

      sub_100006850(v82, &qword_1001359C8, &qword_1000FABA8);
      (*(v91 + 8))(v80, v92);
    }

    else
    {
      sub_1000E3F50(v34, v30, type metadata accessor for WeatherDataOperationResult);
      if (qword_10012EB38 != -1)
      {
        swift_once();
      }

      v64 = sub_1000E9F64();
      sub_100008CB8(v64, qword_100145C10);

      v65 = sub_1000E9F44();
      v66 = sub_1000EC1B4();

      if (os_log_type_enabled(v65, v66))
      {
        v67 = swift_slowAlloc();
        v68 = swift_slowAlloc();
        v97 = v68;
        *v67 = 136315138;
        *(v67 + 4) = sub_1000E2E18(v95, a4, &v97);
        _os_log_impl(&_mh_execute_header, v65, v66, "Accessory - Timeline: successfully fetched weather data for %s", v67, 0xCu);
        sub_100009068(v68);
      }

      v69 = sub_1000E9A84();
      (*(*(v69 - 8) + 16))(v20, v89, v69);
      v70 = v87;
      v20[*(v87 + 20)] = v86;
      v20[*(v70 + 24)] = 0;
      v71 = v90;
      sub_1000DA078();
      sub_1000E3614();
      v72 = sub_1000E9E24();
      v73 = v93;
      sub_1000028A0(v93, 1, 1, v72);
      v94(v71, v73);

      sub_100006850(v73, &qword_1001359C8, &qword_1000FABA8);
      (*(v91 + 8))(v71, v92);
    }

    sub_1000E3614();
    return;
  }

  if (qword_10012EB38 != -1)
  {
    swift_once();
  }

  v59 = sub_1000E9F64();
  sub_100008CB8(v59, qword_100145C10);

  v60 = sub_1000E9F44();
  v61 = sub_1000EC1B4();

  if (os_log_type_enabled(v60, v61))
  {
    v62 = swift_slowAlloc();
    v63 = swift_slowAlloc();
    v97 = v63;
    *v62 = 136315138;
    *(v62 + 4) = sub_1000E2E18(v95, a4, &v97);
    _os_log_impl(&_mh_execute_header, v60, v61, "Accessory - Timeline: failed for %s (we have been deallocated while fetching weather data)", v62, 0xCu);
    sub_100009068(v63);
  }
}

uint64_t sub_1000DE840(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = async function pointer to TimelineProvider.relevances()[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1000E4BFC;

  return TimelineProvider.relevances()(a1, a2, a3);
}

uint64_t sub_1000DE8F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = async function pointer to TimelineProvider.relevance()[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1000E4BFC;

  return TimelineProvider.relevance()(a1, a2, a3);
}

void sub_1000DE9A8()
{
  sub_100006A58();
  v2 = v1;
  v4 = v3;
  v47 = v5;
  v6 = sub_1000E4D00();
  v7 = type metadata accessor for ForecastEntry(v6);
  v8 = sub_100032590(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  __chkstk_darwin(v8);
  sub_1000E4E08();
  v46 = v13;
  __chkstk_darwin(v14);
  sub_10000D56C();
  v48 = v15;
  if (qword_10012EB38 != -1)
  {
    sub_10000DC3C();
  }

  v16 = sub_1000E9F64();
  sub_100008CB8(v16, qword_100145C10);
  v17 = v0;
  v18 = sub_1000E9F44();
  v19 = sub_1000EC1B4();

  if (os_log_type_enabled(v18, v19))
  {
    v45 = v4;
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v44 = sub_1000E4E98();
    v49 = v44;
    *v20 = 136446979;
    sub_1000E3C94(v17);
    sub_100002A10(&qword_100130540, &qword_1000F0808);
    v22 = sub_1000EBEF4();
    v24 = sub_1000E2E18(v22, v23, &v49);

    *(v20 + 4) = v24;
    *(v20 + 12) = 2160;
    sub_1000E4D0C();
    *(v20 + 14) = v25;
    *(v20 + 22) = 2081;
    v26 = [v17 location];
    if (v26)
    {
      sub_1000E3C24(v26);
    }

    v27 = sub_1000EBEF4();
    v29 = sub_1000E2E18(v27, v28, &v49);

    *(v20 + 24) = v29;
    *(v20 + 32) = 2114;
    v30 = [v17 isPredictedLocation];
    *(v20 + 34) = v30;
    *v21 = v30;
    _os_log_impl(&_mh_execute_header, v18, v19, "Snapshot Requested. configuration.identifier=%{public}s, location=%{private,mask.hash}s, isPredictedLocation=%{public}@", v20, 0x2Au);
    sub_100006850(v21, &qword_1001325D0, &unk_1000F3D80);
    sub_100009194();
    swift_arrayDestroy();
    sub_100009194();
    sub_100009194();

    v4 = v45;
  }

  else
  {
  }

  if (sub_1000D8BF4())
  {
    v31 = v2[14];
    if (!sub_1000E9794())
    {
      v32 = sub_1000E9F44();
      v33 = sub_1000EC1B4();
      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        *v34 = 0;
        _os_log_impl(&_mh_execute_header, v32, v33, "Setup stub data", v34, 2u);
        sub_100009118();
      }

      sub_1000E9784();
    }
  }

  sub_1000DA980();
  sub_1000E93A4();
  sub_1000E9394();
  sub_1000E9374();

  v35 = v2[11];
  sub_1000D4FF8(2, v48);
  v36 = v2[13];
  sub_1000E4CD4();
  v37 = swift_allocObject();
  swift_weakInit();
  sub_1000E4C1C();
  sub_1000E3800(v48, v46, v38);
  v39 = (*(v10 + 80) + 40) & ~*(v10 + 80);
  v40 = swift_allocObject();
  v40[2] = v37;
  v40[3] = v47;
  v40[4] = v4;
  sub_1000E4C7C();
  sub_1000E3F50(v46, v41 + v39, v42);
  *(v40 + ((v12 + v39 + 7) & 0xFFFFFFFFFFFFFFF8)) = v17;
  v43 = v17;

  sub_1000273E4(v43, sub_1000E44EC, v40);

  sub_1000E4C04();
  sub_1000E3614();

  sub_100006A20();
}

uint64_t sub_1000DEE1C(char *a1, int a2, uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t a5, uint64_t a6, void *a7)
{
  v92 = a7;
  v96 = a6;
  v97 = a5;
  v95 = a2;
  v94 = a1;
  v8 = sub_100002A10(&qword_100130440, &qword_1000F0BE0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v86 = &v81 - v10;
  v90 = sub_1000E9A84();
  v85 = *(v90 - 8);
  v11 = *(v85 + 64);
  v12 = __chkstk_darwin(v90);
  v87 = &v81 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v88 = &v81 - v13;
  v14 = sub_100002A10(&qword_10012F040, &unk_1000EEED0);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = &v81 - v16;
  v18 = sub_100002A10(&qword_1001359D0, &qword_1000FABB0);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v22 = &v81 - v21;
  v23 = type metadata accessor for ForecastEntry(0);
  v84 = *(v23 - 8);
  v24 = *(v84 + 64);
  v25 = __chkstk_darwin(v23);
  v91 = &v81 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v27 = &v81 - v26;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return a4(v96);
  }

  v89 = a4;
  v93 = Strong;
  v29 = *(Strong + 120);

  v30 = sub_1000AB7F8();

  if (v30)
  {
    v31 = *(v93 + 120);

    sub_1000A8908(v94, v22);

    v32 = sub_1000EBDB4();
    (*(v19 + 8))(v22, v18);
    sub_100007804(v32);

    if (sub_100005B30(v17, 1, v23) != 1)
    {
      sub_1000E3F50(v17, v27, type metadata accessor for ForecastEntry);
      v89(v27);

      return sub_1000E3614();
    }

    sub_100006850(v17, &qword_10012F040, &unk_1000EEED0);
  }

  if (v95 == 4)
  {
    if (qword_10012EB38 != -1)
    {
      swift_once();
    }

    v33 = sub_1000E9F64();
    sub_100008CB8(v33, qword_100145C10);
    v34 = v92;
    v35 = sub_1000E9F44();
    v36 = sub_1000EC194();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v100 = swift_slowAlloc();
      *v37 = 136446723;
      v98 = sub_1000E3C94(v34);
      v99 = v38;
      sub_100002A10(&qword_100130540, &qword_1000F0808);
      v39 = sub_1000EBEF4();
      v41 = sub_1000E2E18(v39, v40, &v100);

      *(v37 + 4) = v41;
      *(v37 + 12) = 2160;
      *(v37 + 14) = 1752392040;
      *(v37 + 22) = 2081;
      v42 = [v34 location];
      if (v42)
      {
        v42 = sub_1000E3C24(v42);
      }

      else
      {
        v43 = 0;
      }

      v58 = v89;
      v98 = v42;
      v99 = v43;
      v72 = sub_1000EBEF4();
      v74 = sub_1000E2E18(v72, v73, &v100);

      *(v37 + 24) = v74;
      _os_log_impl(&_mh_execute_header, v35, v36, "Snapshot: failed (no location permissions). configuration.identifier=%{public}s, location= %{private,mask.hash}s", v37, 0x20u);
      swift_arrayDestroy();
    }

    else
    {

      v58 = v89;
    }

    v75 = *(v93 + 88);

    v76 = v91;
    sub_1000D4FF8(0, v91);

    v58(v76);

    return sub_1000E3614();
  }

  v45 = v86;
  sub_100072EB0(v94, v86, &qword_100130440, &qword_1000F0BE0);
  v46 = v90;
  if (sub_100005B30(v45, 1, v90) == 1)
  {
    sub_100006850(v45, &qword_100130440, &qword_1000F0BE0);
    if (qword_10012EB38 != -1)
    {
      swift_once();
    }

    v47 = sub_1000E9F64();
    sub_100008CB8(v47, qword_100145C10);
    v48 = v92;
    v49 = sub_1000E9F44();
    v50 = sub_1000EC194();

    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      v100 = swift_slowAlloc();
      *v51 = 136446723;
      v98 = sub_1000E3C94(v48);
      v99 = v52;
      sub_100002A10(&qword_100130540, &qword_1000F0808);
      v53 = sub_1000EBEF4();
      v55 = sub_1000E2E18(v53, v54, &v100);

      *(v51 + 4) = v55;
      *(v51 + 12) = 2160;
      *(v51 + 14) = 1752392040;
      *(v51 + 22) = 2081;
      v56 = [v48 location];
      if (v56)
      {
        v56 = sub_1000E3C24(v56);
      }

      else
      {
        v57 = 0;
      }

      v77 = v89;
      v98 = v56;
      v99 = v57;
      v78 = sub_1000EBEF4();
      v80 = sub_1000E2E18(v78, v79, &v100);

      *(v51 + 24) = v80;
      _os_log_impl(&_mh_execute_header, v49, v50, "Snapshot failed (no location). configuration.identifier=%{public}s, location=%{private,mask.hash}s", v51, 0x20u);
      swift_arrayDestroy();

      v77(v96);
    }

    else
    {

      v89(v96);
    }
  }

  else
  {
    v59 = v85;
    v83 = *(v85 + 32);
    v60 = v88;
    v83(v88, v45, v46);
    v94 = *(v93 + 80);
    LODWORD(v86) = *(v93 + 16);
    v82 = swift_allocObject();
    swift_weakInit();
    v61 = v91;
    sub_1000E3800(v96, v91, type metadata accessor for ForecastEntry);
    (*(v59 + 16))(v87, v60, v46);
    v62 = (*(v84 + 80) + 40) & ~*(v84 + 80);
    v63 = v62 + v24;
    v64 = (v62 + v24) & 0xFFFFFFFFFFFFFFF8;
    v65 = (*(v59 + 80) + v64 + 16) & ~*(v59 + 80);
    v66 = swift_allocObject();
    v67 = v89;
    v66[2] = v82;
    v66[3] = v67;
    v66[4] = v97;
    sub_1000E3F50(v61, v66 + v62, type metadata accessor for ForecastEntry);
    *(v66 + v63) = v95;
    v68 = v92;
    *(v66 + v64 + 8) = v92;
    v69 = v90;
    v83(v66 + v65, v87, v90);

    v70 = v68;
    v71 = v88;
    sub_1000A0834(v88, v86, sub_1000E4B10, v66);

    (*(v59 + 8))(v71, v69);
  }
}

uint64_t sub_1000DF86C(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t a5, int a6, void *a7, uint64_t a8)
{
  v101 = a8;
  v108 = a7;
  v107 = a6;
  v112 = a1;
  v11 = sub_100002A10(&qword_1001359D8, &qword_1000FABB8);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v94 - v13;
  v15 = sub_1000E9A84();
  v109 = *(v15 - 8);
  v110 = v15;
  v16 = *(v109 + 64);
  v17 = __chkstk_darwin(v15);
  v106 = &v94 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v102 = &v94 - v19;
  v111 = type metadata accessor for WidgetLocation();
  v20 = *(*(v111 - 8) + 64);
  v21 = __chkstk_darwin(v111);
  v97 = &v94 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v21);
  v98 = &v94 - v24;
  v25 = __chkstk_darwin(v23);
  v27 = &v94 - v26;
  __chkstk_darwin(v25);
  v104 = &v94 - v28;
  v29 = type metadata accessor for ForecastEntry(0);
  v30 = *(*(v29 - 8) + 64);
  v31 = __chkstk_darwin(v29 - 8);
  v96 = &v94 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v103 = &v94 - v33;
  v34 = type metadata accessor for WeatherDataOperationResult(0);
  v35 = *(*(v34 - 8) + 64);
  v36 = __chkstk_darwin(v34);
  v105 = &v94 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v36);
  v39 = &v94 - v38;
  v40 = sub_100002A10(&qword_1001325D8, &unk_1000FABC0);
  v41 = *(*(v40 - 8) + 64);
  __chkstk_darwin(v40);
  v43 = (&v94 - v42);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return a3(a5);
  }

  v95 = a5;
  v99 = a3;
  v100 = a4;
  sub_100072EB0(v112, v43, &qword_1001325D8, &unk_1000FABC0);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_1000E3F50(v43, v39, type metadata accessor for WeatherDataOperationResult);
    if (qword_10012EB38 != -1)
    {
      swift_once();
    }

    v63 = sub_1000E9F64();
    sub_100008CB8(v63, qword_100145C10);
    v64 = sub_1000E9F44();
    v65 = sub_1000EC1B4();
    v66 = os_log_type_enabled(v64, v65);
    v68 = v110;
    v67 = v111;
    v69 = v102;
    if (v66)
    {
      v70 = swift_slowAlloc();
      *v70 = 0;
      _os_log_impl(&_mh_execute_header, v64, v65, "Snapshot: successsully fetched weather data", v70, 2u);
    }

    v71 = v109;
    v72 = *(v109 + 16);
    v72(v69, &v39[*(v34 + 20)], v68);
    v72(v27, v69, v68);
    v27[*(v67 + 20)] = v107;
    v73 = v108;
    v74 = [v73 isPredictedLocation];
    sub_100031CF8(0, &qword_1001359F8, NSNumber_ptr);
    v75.super.super.isa = sub_1000EC344(1).super.super.isa;
    if (v74)
    {
      v76 = sub_1000EC354();

      (*(v71 + 8))(v69, v68);
      v75.super.super.isa = v74;
    }

    else
    {

      (*(v71 + 8))(v69, v68);
      v76 = 0;
    }

    v27[*(v67 + 24)] = v76 & 1;
    v89 = v27;
    v90 = v104;
    sub_1000E3F50(v89, v104, type metadata accessor for WidgetLocation);
    v91 = v103;
    sub_1000D9728(v39, v90, v103);
    sub_1000E3614();
    v99(v91);

    sub_1000E3614();
    return sub_1000E3614();
  }

  v44 = *v43;
  if (qword_10012EB38 != -1)
  {
    swift_once();
  }

  v45 = sub_1000E9F64();
  sub_100008CB8(v45, qword_100145C10);
  v46 = sub_1000E9F44();
  v47 = sub_1000EC1B4();
  v48 = os_log_type_enabled(v46, v47);
  v49 = Strong;
  if (v48)
  {
    v50 = swift_slowAlloc();
    *v50 = 0;
    _os_log_impl(&_mh_execute_header, v46, v47, "Snapshot: failed to fetch or interpolate fresh weather data, trying old cached data first", v50, 2u);
  }

  v51 = *(v49 + 80);
  v52 = *(v49 + 16);

  sub_1000A114C(v101, v14);

  v53 = sub_100005B30(v14, 1, v34);
  v54 = v106;
  if (v53 != 1)
  {
    v112 = v44;
    v77 = v105;
    sub_1000E3F50(v14, v105, type metadata accessor for WeatherDataOperationResult);
    v78 = *(v34 + 20);
    v80 = v109;
    v79 = v110;
    v81 = *(v109 + 16);
    v81(v54, v77 + v78, v110);
    v82 = v97;
    v81(v97, v54, v79);
    v83 = v111;
    *(v82 + *(v111 + 20)) = v107;
    v84 = v108;
    v85 = v54;
    v86 = [v84 isPredictedLocation];
    sub_100031CF8(0, &qword_1001359F8, NSNumber_ptr);
    v87.super.super.isa = sub_1000EC344(1).super.super.isa;
    if (v86)
    {
      v88 = sub_1000EC354();

      (*(v80 + 8))(v85, v79);
      v87.super.super.isa = v86;
    }

    else
    {

      (*(v80 + 8))(v85, v79);
      v88 = 0;
    }

    *(v82 + *(v83 + 24)) = v88 & 1;
    v92 = v98;
    sub_1000E3F50(v82, v98, type metadata accessor for WidgetLocation);
    v93 = v96;
    sub_1000D9728(v105, v92, v96);
    sub_1000E3614();
    v99(v93);

    sub_1000E3614();
    return sub_1000E3614();
  }

  sub_100006850(v14, &qword_1001359D8, &qword_1000FABB8);
  swift_errorRetain();
  v55 = sub_1000E9F44();
  v56 = sub_1000EC194();

  if (os_log_type_enabled(v55, v56))
  {
    v57 = swift_slowAlloc();
    v58 = swift_slowAlloc();
    v114 = v44;
    v115 = v58;
    *v57 = 141558275;
    *(v57 + 4) = 1752392040;
    *(v57 + 12) = 2081;
    swift_errorRetain();
    sub_100002A10(&qword_100130548, &qword_1000F0CF0);
    v59 = sub_1000EBEE4();
    v61 = sub_1000E2E18(v59, v60, &v115);

    *(v57 + 14) = v61;
    _os_log_impl(&_mh_execute_header, v55, v56, "Snapshot: failed to fetch weather data or get cached data. error=%{private,mask.hash}s", v57, 0x16u);
    sub_100009068(v58);
  }

  v99(v95);
}

void sub_1000E02F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_100006A58();
  a19 = v21;
  a20 = v22;
  v23 = v20;
  v110 = v24;
  v114 = v25;
  v27 = v26;
  v29 = v28;
  v119 = sub_1000EBD94();
  v30 = sub_1000090D4(v119);
  v32 = v31;
  v34 = *(v33 + 64);
  __chkstk_darwin(v30);
  v117 = v35;
  v118 = v102 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000921C();
  v36 = sub_1000E8604();
  v37 = sub_1000090D4(v36);
  v120 = v38;
  v121 = v37;
  v40 = *(v39 + 64);
  __chkstk_darwin(v37);
  sub_1000E4E08();
  v109 = v41;
  __chkstk_darwin(v42);
  v44 = v102 - v43;
  v45 = *(v23 + 32);
  v122 = *(v23 + 24);
  v46 = qword_10012EB38;

  if (v46 != -1)
  {
    sub_10000DC3C();
  }

  v47 = sub_1000E9F64();
  v48 = sub_100008CB8(v47, qword_100145C10);

  v49 = v29;
  v102[1] = v48;
  v50 = sub_1000E9F44();
  v51 = sub_1000EC1B4();

  v52 = os_log_type_enabled(v50, v51);
  v115 = v49;
  v116 = v23;
  v111 = v45;
  if (v52)
  {
    v53 = swift_slowAlloc();
    v112 = swift_slowAlloc();
    v113 = swift_slowAlloc();
    v125[0] = v113;
    *v53 = 136316163;
    v54 = sub_1000E2E18(v122, v45, v125);
    sub_1000E4D68(v54);
    v123 = sub_1000E3C94(v49);
    v124 = v55;
    sub_100002A10(&qword_100130540, &qword_1000F0808);
    v56 = sub_1000EBEF4();
    v58 = sub_1000E2E18(v56, v57, v125);

    *(v53 + 14) = v58;
    v59 = v115;
    sub_1000E4CE0();
    v60 = [v59 location];
    if (v60)
    {
      v60 = sub_1000E3C24(v60);
    }

    else
    {
      v61 = 0;
    }

    v123 = v60;
    v124 = v61;
    v62 = sub_1000EBEF4();
    v64 = sub_1000E2E18(v62, v63, v125);

    *(v53 + 34) = v64;
    *(v53 + 42) = 2114;
    v65 = [v59 isPredictedLocation];
    *(v53 + 44) = v65;
    v66 = v112;
    *v112 = v65;
    _os_log_impl(&_mh_execute_header, v50, v51, "Timeline requested for for %s. configuration identifier=%{public}s, location=%{private,mask.hash}s, isPredictedLocation=%{public}@", v53, 0x34u);
    sub_100006850(v66, &qword_1001325D0, &unk_1000F3D80);
    sub_100009118();
    swift_arrayDestroy();
    sub_100009118();
    sub_100009194();
  }

  else
  {
  }

  sub_1000E85B4();
  sub_1000E4CD4();
  v67 = swift_allocObject();
  sub_1000E4E80();
  v68 = *(v32 + 16);
  v70 = v118;
  v69 = v119;
  v112 = v27;
  v107 = v68;
  v108 = v32 + 16;
  v68(v118, v27, v119);
  v71 = v120;
  v72 = *(v120 + 16);
  v73 = v109;
  v113 = v44;
  v74 = v44;
  v75 = v121;
  v72(v109, v74, v121);
  v76 = *(v32 + 80);
  v104 = ~v76;
  v77 = (v76 + 56) & ~v76;
  v105 = v76;
  v78 = (v117 + *(v71 + 80) + v77) & ~*(v71 + 80);
  v106 = v76 | 7;
  v79 = swift_allocObject();
  v80 = v122;
  *(v79 + 2) = v67;
  *(v79 + 3) = v80;
  v82 = v110;
  v81 = v111;
  v83 = v114;
  *(v79 + 4) = v111;
  *(v79 + 5) = v83;
  *(v79 + 6) = v82;
  v84 = *(v32 + 32);
  v85 = v70;
  v86 = v81;
  v87 = v69;
  v88 = v116;
  v114 = v32 + 32;
  v103 = v84;
  v84(&v79[v77], v85, v87);
  (*(v71 + 32))(&v79[v78], v73, v75);

  if (sub_1000D8BF4())
  {
    v89 = *(v88 + 112);
    if (!sub_1000E9794())
    {
      v90 = sub_1000E9F44();
      v91 = sub_1000EC1B4();
      if (os_log_type_enabled(v90, v91))
      {
        v92 = swift_slowAlloc();
        *v92 = 0;
        _os_log_impl(&_mh_execute_header, v90, v91, "Setup stub data", v92, 2u);
        sub_100009194();
      }

      sub_1000E9784();
    }
  }

  sub_1000DA980();
  sub_1000E93A4();
  sub_1000E9394();
  sub_1000E9374();

  v93 = *(v88 + 104);
  sub_1000E4CD4();
  v94 = swift_allocObject();
  sub_1000E4E80();
  v96 = v118;
  v95 = v119;
  v107(v118, v112, v119);
  v97 = (v105 + 64) & v104;
  v98 = swift_allocObject();
  v99 = v122;
  *(v98 + 2) = v94;
  *(v98 + 3) = v99;
  *(v98 + 4) = v86;
  *(v98 + 5) = sub_1000E39F0;
  v100 = v115;
  *(v98 + 6) = v79;
  *(v98 + 7) = v100;
  v103(&v98[v97], v96, v95);
  v101 = v100;

  sub_1000273E4(v101, sub_1000E3BAC, v98);

  (*(v120 + 8))(v113, v121);

  sub_100006A20();
}

uint64_t sub_1000E0970(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, void (*a6)(uint64_t))
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    a6(a1);
  }

  else
  {
    if (qword_10012EB38 != -1)
    {
      swift_once();
    }

    v11 = sub_1000E9F64();
    sub_100008CB8(v11, qword_100145C10);

    v12 = sub_1000E9F44();
    v13 = sub_1000EC1B4();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v16 = v15;
      *v14 = 136446210;
      *(v14 + 4) = sub_1000E2E18(a4, a5, &v16);
      _os_log_impl(&_mh_execute_header, v12, v13, "Completing timeline for %{public}s", v14, 0xCu);
      sub_100009068(v15);
    }

    return (a6)(a1);
  }
}

void sub_1000E0B28(char *a1, int a2, uint64_t a3, uint64_t a4, unint64_t a5, void (*a6)(void, void), uint64_t a7, void *a8, unint64_t a9)
{
  v97 = a4;
  v98 = a8;
  v105 = a6;
  v100 = a5;
  v101 = a1;
  v99 = a2;
  v94 = sub_1000EBD94();
  v92 = *(v94 - 8);
  v10 = *(v92 + 64);
  __chkstk_darwin(v94);
  v11 = &v89 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100002A10(&qword_100130440, &qword_1000F0BE0);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = &v89 - v14;
  v16 = sub_1000E9A84();
  v93 = *(v16 - 8);
  v17 = *(v93 + 64);
  v18 = __chkstk_darwin(v16);
  v19 = &v89 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v21 = &v89 - v20;
  v22 = sub_100002A10(&qword_1001359C8, &qword_1000FABA8);
  v23 = *(*(v22 - 8) + 64);
  __chkstk_darwin(v22 - 8);
  v103 = &v89 - v24;
  v25 = sub_100002A10(&qword_1001359D0, &qword_1000FABB0);
  v104 = *(v25 - 8);
  v26 = *(v104 + 64);
  __chkstk_darwin(v25);
  v102 = (&v89 - v27);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v95 = v25;
    v96 = a7;
    v29 = *(Strong + 120);
    v30 = Strong;

    v31 = sub_1000AB7F8();

    if (v31)
    {
      v32 = *(v30 + 120);

      v33 = v102;
      sub_1000A8908(v101, v102);

      v34 = sub_1000E9E24();
      v35 = v103;
      sub_1000028A0(v103, 1, 1, v34);
      v105(v33, v35);

      sub_100006850(v35, &qword_1001359C8, &qword_1000FABA8);
      (*(v104 + 8))(v33, v95);
    }

    else
    {
      v91 = v30;
      if (v99 == 4)
      {
        if (qword_10012EB38 != -1)
        {
          swift_once();
        }

        v42 = sub_1000E9F64();
        sub_100008CB8(v42, qword_100145C10);
        v43 = v98;
        v44 = sub_1000E9F44();
        v45 = sub_1000EC1B4();

        if (os_log_type_enabled(v44, v45))
        {
          v46 = swift_slowAlloc();
          v108 = swift_slowAlloc();
          *v46 = 136446723;
          v106 = sub_1000E3C94(v43);
          v107 = v47;
          sub_100002A10(&qword_100130540, &qword_1000F0808);
          v48 = sub_1000EBEF4();
          v50 = sub_1000E2E18(v48, v49, &v108);

          *(v46 + 4) = v50;
          *(v46 + 12) = 2160;
          *(v46 + 14) = 1752392040;
          *(v46 + 22) = 2081;
          v51 = [v43 location];
          if (v51)
          {
            v51 = sub_1000E3C24(v51);
          }

          else
          {
            v52 = 0;
          }

          v106 = v51;
          v107 = v52;
          v76 = sub_1000EBEF4();
          v78 = sub_1000E2E18(v76, v77, &v108);

          *(v46 + 24) = v78;
          _os_log_impl(&_mh_execute_header, v44, v45, "Timeline failed (no location permissions). configuration.identifier=%{public}s, location=%{private,mask.hash}s ", v46, 0x20u);
          swift_arrayDestroy();
        }

        v79 = v102;
        sub_1000D9120(0, v102);
        v80 = sub_1000E9E24();
        v81 = v103;
        sub_1000028A0(v103, 1, 1, v80);
        v105(v79, v81);

        sub_100006850(v81, &qword_1001359C8, &qword_1000FABA8);
        (*(v104 + 8))(v79, v95);
      }

      else
      {
        sub_100072EB0(v101, v15, &qword_100130440, &qword_1000F0BE0);
        if (sub_100005B30(v15, 1, v16) == 1)
        {
          sub_100006850(v15, &qword_100130440, &qword_1000F0BE0);
          if (qword_10012EB38 != -1)
          {
            swift_once();
          }

          v53 = sub_1000E9F64();
          sub_100008CB8(v53, qword_100145C10);
          v54 = v98;
          v55 = sub_1000E9F44();
          v56 = sub_1000EC1B4();

          if (os_log_type_enabled(v55, v56))
          {
            v57 = swift_slowAlloc();
            v108 = swift_slowAlloc();
            *v57 = 136446723;
            v106 = sub_1000E3C94(v54);
            v107 = v58;
            sub_100002A10(&qword_100130540, &qword_1000F0808);
            v59 = sub_1000EBEF4();
            v61 = sub_1000E2E18(v59, v60, &v108);

            *(v57 + 4) = v61;
            *(v57 + 12) = 2160;
            *(v57 + 14) = 1752392040;
            *(v57 + 22) = 2081;
            v62 = [v54 location];
            if (v62)
            {
              v62 = sub_1000E3C24(v62);
            }

            else
            {
              v63 = 0;
            }

            v106 = v62;
            v107 = v63;
            v82 = sub_1000EBEF4();
            v84 = sub_1000E2E18(v82, v83, &v108);

            *(v57 + 24) = v84;
            _os_log_impl(&_mh_execute_header, v55, v56, "Timeline failed (no location). configuration.identifier=%{public}s, location=%{private,mask.hash}s ", v57, 0x20u);
            swift_arrayDestroy();
          }

          v85 = v102;
          sub_1000D9120(1, v102);
          v86 = enum case for WidgetRefreshFailureReason.noLocationData(_:);
          v87 = sub_1000E9E24();
          v88 = v103;
          (*(*(v87 - 8) + 104))(v103, v86, v87);
          sub_1000028A0(v88, 0, 1, v87);
          v105(v85, v88);

          sub_100006850(v88, &qword_1001359C8, &qword_1000FABA8);
          (*(v104 + 8))(v85, v95);
        }

        else
        {
          v95 = a9;
          v64 = v93;
          v65 = *(v93 + 32);
          v101 = (v93 + 32);
          v102 = v65;
          (v65)(v21, v15, v16);
          v104 = *(v91 + 80);
          LODWORD(v103) = *(v91 + 16);
          v66 = swift_allocObject();
          swift_weakInit();
          (*(v64 + 16))(v19, v21, v16);
          v67 = v92;
          (*(v92 + 16))(&v89 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v95, v94);
          v68 = (*(v64 + 80) + 40) & ~*(v64 + 80);
          v69 = v68 + v17;
          v89 = v69 & 0xFFFFFFFFFFFFFFF8;
          v95 = (*(v67 + 80) + (v69 & 0xFFFFFFFFFFFFFFF8) + 16) & ~*(v67 + 80);
          v90 = (v10 + v95 + 7) & 0xFFFFFFFFFFFFFFF8;
          v70 = swift_allocObject();
          v71 = v97;
          v70[2] = v66;
          v70[3] = v71;
          v70[4] = v100;
          (v102)(v70 + v68, v19, v16);
          *(v70 + v69) = v99;
          v72 = v98;
          *(v70 + v89 + 8) = v98;
          (*(v67 + 32))(v70 + v95, v11, v94);
          v73 = (v70 + v90);
          v74 = v96;
          *v73 = v105;
          v73[1] = v74;

          v75 = v72;

          sub_1000A0834(v21, v103, sub_1000E3E44, v70);

          (*(v93 + 8))(v21, v16);
        }
      }
    }
  }

  else
  {
    if (qword_10012EB38 != -1)
    {
      swift_once();
    }

    v36 = sub_1000E9F64();
    sub_100008CB8(v36, qword_100145C10);
    v37 = v100;

    v38 = sub_1000E9F44();
    v39 = sub_1000EC1B4();

    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v106 = v41;
      *v40 = 136315138;
      *(v40 + 4) = sub_1000E2E18(v97, v37, &v106);
      _os_log_impl(&_mh_execute_header, v38, v39, "Timeline: failed for %s (we have been deallocated while obtaining location information)", v40, 0xCu);
      sub_100009068(v41);
    }
  }
}

void sub_1000E16DC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, int a6, void *a7, uint64_t a8, void (*a9)(uint64_t, uint64_t), uint64_t a10)
{
  v149 = a7;
  v150 = a8;
  v146 = a6;
  v161 = a4;
  v158 = a3;
  v152 = a1;
  v137 = sub_1000E99A4();
  v11 = *(*(v137 - 8) + 64);
  __chkstk_darwin(v137);
  v136 = &v136 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100002A10(&qword_1001359D8, &qword_1000FABB8);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v16 = &v136 - v15;
  v17 = sub_100002A10(&qword_1001359C8, &qword_1000FABA8);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  v157 = &v136 - v19;
  v20 = sub_1000E9A84();
  v153 = *(v20 - 8);
  v154 = v20;
  v21 = *(v153 + 64);
  v22 = __chkstk_darwin(v20);
  v138 = &v136 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __chkstk_darwin(v22);
  v139 = &v136 - v25;
  __chkstk_darwin(v24);
  v27 = &v136 - v26;
  v160 = type metadata accessor for WidgetLocation();
  v28 = *(*(v160 - 8) + 64);
  v29 = __chkstk_darwin(v160);
  v140 = &v136 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __chkstk_darwin(v29);
  v143 = &v136 - v32;
  v33 = __chkstk_darwin(v31);
  v35 = &v136 - v34;
  __chkstk_darwin(v33);
  v37 = &v136 - v36;
  v38 = sub_100002A10(&qword_1001359D0, &qword_1000FABB0);
  v155 = *(v38 - 8);
  v156 = v38;
  v39 = *(v155 + 64);
  v40 = __chkstk_darwin(v38);
  v141 = &v136 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = __chkstk_darwin(v40);
  v142 = &v136 - v43;
  __chkstk_darwin(v42);
  v45 = &v136 - v44;
  v46 = type metadata accessor for WeatherDataOperationResult(0);
  v47 = *(*(v46 - 8) + 64);
  v48 = __chkstk_darwin(v46);
  v147 = &v136 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v48);
  v159 = &v136 - v50;
  v51 = sub_100002A10(&qword_1001325D8, &unk_1000FABC0);
  v52 = *(*(v51 - 8) + 64);
  __chkstk_darwin(v51);
  v54 = (&v136 - v53);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v56 = Strong;
    v144 = a10;
    v145 = a9;
    sub_100072EB0(v152, v54, &qword_1001325D8, &unk_1000FABC0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v148 = a5;
    v151 = v56;
    if (EnumCaseMultiPayload == 1)
    {
      v58 = *v54;
      if (qword_10012EB38 != -1)
      {
        swift_once();
      }

      v59 = sub_1000E9F64();
      sub_100008CB8(v59, qword_100145C10);
      v60 = v161;

      v61 = sub_1000E9F44();
      v62 = sub_1000EC1B4();

      if (os_log_type_enabled(v61, v62))
      {
        v63 = swift_slowAlloc();
        v64 = swift_slowAlloc();
        v163 = v64;
        *v63 = 136315138;
        *(v63 + 4) = sub_1000E2E18(v158, v60, &v163);
        _os_log_impl(&_mh_execute_header, v61, v62, "Timeline: failed to fetch or interpolate fresh weather data for %s, trying old cached data first", v63, 0xCu);
        sub_100009068(v64);
      }

      v66 = v153;
      v65 = v154;
      v67 = *(v151 + 80);
      v68 = *(v151 + 16);

      v69 = v148;
      sub_1000A114C(v148, v16);

      v70 = v58;
      if (sub_100005B30(v16, 1, v46) == 1)
      {
        sub_100006850(v16, &qword_1001359D8, &qword_1000FABB8);
        v71 = v138;
        (*(v66 + 16))(v138, v69, v65);
        v72 = v161;

        swift_errorRetain();
        v73 = sub_1000E9F44();
        v74 = sub_1000EC194();

        if (os_log_type_enabled(v73, v74))
        {
          v75 = swift_slowAlloc();
          v163 = swift_slowAlloc();
          *v75 = 136316163;
          *(v75 + 4) = sub_1000E2E18(v158, v72, &v163);
          *(v75 + 12) = 2160;
          *(v75 + 14) = 1752392040;
          *(v75 + 22) = 2081;
          sub_1000E99C4();
          v76 = sub_1000EBEF4();
          v77 = v65;
          v79 = v78;
          (*(v66 + 8))(v71, v77);
          v80 = sub_1000E2E18(v76, v79, &v163);

          *(v75 + 24) = v80;
          *(v75 + 32) = 2160;
          *(v75 + 34) = 1752392040;
          *(v75 + 42) = 2081;
          v162 = v70;
          swift_errorRetain();
          sub_100002A10(&qword_100130548, &qword_1000F0CF0);
          v81 = sub_1000EBEE4();
          v83 = sub_1000E2E18(v81, v82, &v163);

          *(v75 + 44) = v83;
          _os_log_impl(&_mh_execute_header, v73, v74, "Timeline: failed to fetch weather data or get cached data for %s. location=%{private,mask.hash}s, error=%{private,mask.hash}s", v75, 0x34u);
          swift_arrayDestroy();
        }

        else
        {

          (*(v66 + 8))(v71, v65);
        }

        v128 = v156;
        v129 = v141;
        sub_1000D9120(2, v141);
        v130 = enum case for WidgetRefreshFailureReason.noWeatherData(_:);
        v131 = sub_1000E9E24();
        v132 = v157;
        (*(*(v131 - 8) + 104))(v157, v130, v131);
        sub_1000028A0(v132, 0, 1, v131);
        v145(v129, v132);

        sub_100006850(v132, &qword_1001359C8, &qword_1000FABA8);
        (*(v155 + 8))(v129, v128);
        return;
      }

      sub_1000E3F50(v16, v147, type metadata accessor for WeatherDataOperationResult);
      v105 = v161;

      v106 = sub_1000E9F44();
      v107 = sub_1000EC1B4();

      if (os_log_type_enabled(v106, v107))
      {
        v108 = swift_slowAlloc();
        v109 = swift_slowAlloc();
        v163 = v109;
        *v108 = 136315138;
        *(v108 + 4) = sub_1000E2E18(v158, v105, &v163);
        _os_log_impl(&_mh_execute_header, v106, v107, "Timeline: successsully retrieved cached weather data for %s", v108, 0xCu);
        sub_100009068(v109);
      }

      v110 = v156;
      v111 = v140;
      v112 = v139;
      v113 = *(v66 + 16);
      v113(v139, v148, v65);
      v113(v111, v112, v65);
      *(v111 + *(v160 + 20)) = 2;
      v114 = v149;
      v115 = [v114 isPredictedLocation];
      sub_100031CF8(0, &qword_1001359F8, NSNumber_ptr);
      v116.super.super.isa = sub_1000EC344(1).super.super.isa;
      if (v115)
      {
        v117 = sub_1000EC354();

        (*(v66 + 8))(v112, v65);
        v116.super.super.isa = v115;
      }

      else
      {

        (*(v66 + 8))(v112, v65);
        v117 = 0;
      }

      *(v111 + *(v160 + 24)) = v117 & 1;
      sub_1000E3F50(v111, v143, type metadata accessor for WidgetLocation);
      v133 = v142;
      sub_1000DA078();
      sub_1000E3614();
      v134 = sub_1000E9E24();
      v135 = v157;
      sub_1000028A0(v157, 1, 1, v134);
      v145(v133, v135);

      sub_100006850(v135, &qword_1001359C8, &qword_1000FABA8);
      (*(v155 + 8))(v133, v110);
    }

    else
    {
      sub_1000E3F50(v54, v159, type metadata accessor for WeatherDataOperationResult);
      if (qword_10012EB38 != -1)
      {
        swift_once();
      }

      v90 = sub_1000E9F64();
      sub_100008CB8(v90, qword_100145C10);
      v91 = v161;

      v92 = sub_1000E9F44();
      v93 = sub_1000EC1B4();

      if (os_log_type_enabled(v92, v93))
      {
        v94 = swift_slowAlloc();
        v95 = swift_slowAlloc();
        v96 = v91;
        v97 = v95;
        v163 = v95;
        *v94 = 136315138;
        *(v94 + 4) = sub_1000E2E18(v158, v96, &v163);
        _os_log_impl(&_mh_execute_header, v92, v93, "Timeline: successfully fetched weather data for %s", v94, 0xCu);
        sub_100009068(v97);
      }

      v98 = v153;
      v99 = v154;
      v100 = *(v153 + 16);
      v100(v27, a5, v154);
      v100(v35, v27, v99);
      v35[*(v160 + 20)] = v146;
      v101 = v149;
      v102 = [v101 isPredictedLocation];
      sub_100031CF8(0, &qword_1001359F8, NSNumber_ptr);
      v103.super.super.isa = sub_1000EC344(1).super.super.isa;
      if (v102)
      {
        v104 = sub_1000EC354();

        (*(v98 + 8))(v27, v99);
        v103.super.super.isa = v102;
      }

      else
      {

        (*(v98 + 8))(v27, v99);
        v104 = 0;
      }

      v35[*(v160 + 24)] = v104 & 1;
      sub_1000E3F50(v35, v37, type metadata accessor for WidgetLocation);
      v118 = v151;
      sub_1000DA078();
      sub_1000E3614();
      v119 = v156;
      v120 = sub_1000EBDB4();
      v121 = *(v118 + 120);

      v122 = sub_1000AB700();

      if (v122)
      {
        v123 = *(v118 + 120);

        v124 = sub_1000E9A44();
        sub_1000AADB4(v120, v124, v125);
      }

      v126 = sub_1000E9E24();
      v127 = v157;
      sub_1000028A0(v157, 1, 1, v126);
      v145(v45, v127);

      sub_100006850(v127, &qword_1001359C8, &qword_1000FABA8);
      (*(v155 + 8))(v45, v119);
    }

    sub_1000E3614();
    return;
  }

  if (qword_10012EB38 != -1)
  {
    swift_once();
  }

  v84 = sub_1000E9F64();
  sub_100008CB8(v84, qword_100145C10);
  v85 = v161;

  v86 = sub_1000E9F44();
  v87 = sub_1000EC1B4();

  if (os_log_type_enabled(v86, v87))
  {
    v88 = swift_slowAlloc();
    v89 = swift_slowAlloc();
    v163 = v89;
    *v88 = 136315138;
    *(v88 + 4) = sub_1000E2E18(v158, v85, &v163);
    _os_log_impl(&_mh_execute_header, v86, v87, "Timeline: failed for %s (we have been deallocated while fetching weather data)", v88, 0xCu);
    sub_100009068(v89);
  }
}

uint64_t sub_1000E2874(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = async function pointer to IntentTimelineProvider.relevances()[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1000E2928;

  return IntentTimelineProvider.relevances()(a1, a2, a3);
}

uint64_t sub_1000E2928()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1000E2A1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = async function pointer to IntentTimelineProvider.relevance()[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1000E4BFC;

  return IntentTimelineProvider.relevance()(a1, a2, a3);
}

uint64_t sub_1000E2AD0()
{
  swift_weakDestroy();
  sub_1000E4CD4();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_1000E2B04()
{
  sub_100006A58();
  v1 = sub_1000EBD94();
  sub_1000090D4(v1);
  v3 = *(v2 + 80);
  v5 = *(v4 + 64);
  v6 = sub_1000E8604();
  sub_1000090D4(v6);
  v8 = v7;
  v10 = v9;
  v11 = *(v8 + 80);
  v12 = *(v10 + 64);
  v13 = v0[3];

  v14 = v0[4];

  v15 = v0[6];

  v16 = sub_10006BC38();
  v17(v16);
  v18 = sub_10006BC28();
  v19(v18);
  sub_1000E4E14();
  sub_100006A20();

  return _swift_deallocObject(v20, v21, v22);
}

uint64_t sub_1000E2C40()
{
  v1 = sub_1000EBD94();
  sub_1000090D4(v1);
  v3 = (*(v2 + 80) + 56) & ~*(v2 + 80);
  v5 = *(v4 + 64);
  v6 = v0[2];

  v7 = v0[4];

  v8 = v0[6];

  v9 = sub_1000E4D58();
  v10(v9);
  v11 = sub_1000E4D48();

  return _swift_deallocObject(v11, v12, v13);
}

void sub_1000E2CF8()
{
  sub_1000E4D38();
  v3 = sub_1000EBD94();
  sub_100009210(v3);
  v5 = *(v4 + 80);
  sub_1000E4D28();
  v11 = *(v1 + 48);

  sub_1000DD210(v2, v0, v6, v7, v8, v9, v11, v1 + v10);
}

id sub_1000E2D70(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_1000EBE64();

  sub_100031CF8(0, &qword_1001359F0, RBSAttribute_ptr);
  isa = sub_1000EBFE4().super.isa;

  v7 = [v3 initWithExplanation:v5 target:a3 attributes:isa];

  return v7;
}

uint64_t sub_1000E2E18(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1000E2EDC(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (v6)
  {
    v8 = v6;

    ObjectType = swift_getObjectType();
    v11[0] = v8;
  }

  else
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
  }

  v9 = *a3;
  if (*a3)
  {
    sub_1000E3388(v11, *a3);
    *a3 = v9 + 32;
  }

  sub_100009068(v11);
  return v7;
}

unint64_t sub_1000E2EDC(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v11 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v11)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v11) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_1000E2FDC(a5, a6);
    *a1 = v9;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    result = sub_1000EC424();
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

char *sub_1000E2FDC(uint64_t a1, unint64_t a2)
{
  v4 = sub_1000E3028(a1, a2);
  sub_1000E3140(&off_100124FF8);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_1000E3028(uint64_t a1, unint64_t a2)
{
  v4 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_19;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  for (; v5; v5 = sub_1000EBF54())
  {
    result = sub_1000E3224(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_1000EC3D4();
      if (v11)
      {
        goto LABEL_23;
      }

      v4 = result;
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v13[0] = a1;
        v13[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        if (v5 < v4)
        {
          goto LABEL_23;
        }

        v9 = result + 32;
        v10 = v13;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v8 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
          v4 = a1 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          result = sub_1000EC424();
          v8 = result;
          v4 = v12;
        }

        if (v5 < v4)
        {
LABEL_23:
          __break(1u);
          return result;
        }

        v9 = v7 + 32;
        v10 = v8;
      }

      memcpy(v9, v10, v4);
    }

    if (v4 == v5)
    {
      return v7;
    }

    __break(1u);
LABEL_19:
    ;
  }

  return &_swiftEmptyArrayStorage;
}

uint64_t sub_1000E3140(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (!result || v5 > *(v3 + 24) >> 1)
  {
    if (v4 <= v5)
    {
      v8 = v4 + v2;
    }

    else
    {
      v8 = v4;
    }

    result = sub_1000E3294(result, v8, 1, v3);
    v3 = result;
  }

  if (!*(v6 + 16))
  {

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  v9 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v9 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v9 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v10 = *(v3 + 16);
  v11 = __OFADD__(v10, v2);
  v12 = v10 + v2;
  if (!v11)
  {
    *(v3 + 16) = v12;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_1000E3224(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return &_swiftEmptyArrayStorage;
  }

  sub_100002A10(&qword_1001359C0, &unk_1000FAB98);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

char *sub_1000E3294(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100002A10(&qword_1001359C0, &unk_1000FAB98);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[v8] <= v12)
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t sub_1000E3388(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1000E33E4()
{
  sub_100006A58();
  v1 = sub_1000E9A84();
  sub_1000090D4(v1);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v5 = *(v4 + 64);
  v6 = sub_1000EBD94();
  sub_1000090D4(v6);
  v9 = (*(v8 + 64) + ((v5 + *(v7 + 80) + v3 + 1) & ~*(v7 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(v0 + 16);

  v11 = *(v0 + 32);

  v12 = sub_10006BC38();
  v13(v12);
  v14 = sub_10006BC28();
  v15(v14);
  v16 = *(v0 + v9 + 8);

  sub_1000E4E14();
  sub_100006A20();

  return _swift_deallocObject(v17, v18, v19);
}

void sub_1000E351C()
{
  sub_1000E4D00();
  v2 = sub_1000E9A84();
  sub_100032590(v2);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v6 = v4 + *(v5 + 64);
  v7 = sub_1000EBD94();
  sub_100032590(v7);
  v9 = v8;
  v11 = v10;
  v12 = (v6 + *(v9 + 80) + 1) & ~*(v9 + 80);
  v13 = *(v11 + 64);
  sub_1000E4D18();
  sub_1000DDC1C(v0, *(v1 + 16), *(v1 + 24), *(v1 + 32), v1 + v4, *(v1 + v6), v1 + v15, *(v1 + v14), *(v1 + v14 + 8));
}

uint64_t sub_1000E3614()
{
  v1 = sub_1000E4D00();
  v3 = v2(v1);
  sub_1000069D0(v3);
  (*(v4 + 8))(v0);
  return v0;
}

uint64_t sub_1000E3680()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000E36C8()
{
  v1 = sub_1000E9A84();
  sub_1000090D4(v1);
  v3 = (*(v2 + 80) + 57) & ~*(v2 + 80);
  v5 = *(v4 + 64);
  v6 = v0[2];

  v7 = v0[4];

  v8 = v0[5];

  v9 = v0[6];

  v10 = sub_1000E4D58();
  v11(v10);
  v12 = sub_1000E4D48();

  return _swift_deallocObject(v12, v13, v14);
}

uint64_t sub_1000E3788()
{
  sub_1000E4D00();
  v2 = sub_1000E9A84();
  sub_100009210(v2);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = *(v1 + 56);
  v10 = v1 + ((*(v3 + 80) + 57) & ~*(v3 + 80));

  return sub_1000DC150(v0, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1000E3800(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  sub_1000069E4(v4);
  v6 = *(v5 + 16);
  v7 = sub_100019AC0();
  v8(v7);
  return a2;
}

uint64_t sub_1000E385C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002A10(&qword_10012F040, &unk_1000EEED0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000E38CC()
{
  sub_100006A58();
  v1 = sub_1000EBD94();
  sub_1000090D4(v1);
  v3 = *(v2 + 80);
  v5 = *(v4 + 64);
  v6 = sub_1000E8604();
  sub_1000090D4(v6);
  v8 = v7;
  v10 = v9;
  v11 = *(v8 + 80);
  v12 = *(v10 + 64);
  v13 = v0[2];

  v14 = v0[4];

  v15 = v0[6];

  v16 = sub_10006BC38();
  v17(v16);
  v18 = sub_10006BC28();
  v19(v18);
  sub_1000E4E14();
  sub_100006A20();

  return _swift_deallocObject(v20, v21, v22);
}

uint64_t sub_1000E3A08(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  v7 = sub_1000EBD94();
  sub_100032590(v7);
  v9 = (*(v8 + 80) + 56) & ~*(v8 + 80);
  v11 = *(v10 + 64);
  v12 = sub_1000E8604();
  sub_100009210(v12);
  v14 = *(v13 + 80);
  sub_1000E4D28();
  v15 = *(v3 + 48);
  return a3(a1, a2);
}

uint64_t sub_1000E3AEC()
{
  v1 = sub_1000EBD94();
  sub_1000090D4(v1);
  v3 = (*(v2 + 80) + 64) & ~*(v2 + 80);
  v5 = *(v4 + 64);
  v6 = *(v0 + 16);

  v7 = *(v0 + 32);

  v8 = *(v0 + 48);

  v9 = sub_1000E4D58();
  v10(v9);
  v11 = sub_1000E4D48();

  return _swift_deallocObject(v11, v12, v13);
}

void sub_1000E3BAC()
{
  sub_1000E4D38();
  v3 = sub_1000EBD94();
  sub_100009210(v3);
  v5 = *(v4 + 80);
  sub_1000E4D28();
  sub_1000E0B28(v2, v0, v7, v8, v9, v10, *(v1 + 48), *(v1 + 56), v1 + v6);
}

uint64_t sub_1000E3C24(void *a1)
{
  v2 = [a1 identifier];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_1000EBE84();

  return v3;
}

uint64_t sub_1000E3C94(void *a1)
{
  v1 = [a1 identifier];
  if (v1)
  {
    v2 = v1;
    sub_1000EBE84();
  }

  return sub_100019AC0();
}

uint64_t sub_1000E3CF4()
{
  sub_100006A58();
  v1 = sub_1000E9A84();
  sub_1000090D4(v1);
  v4 = (((*(v2 + 80) + 40) & ~*(v2 + 80)) + *(v3 + 64)) & 0xFFFFFFFFFFFFFFF8;
  v5 = sub_1000EBD94();
  sub_1000090D4(v5);
  v7 = v6;
  v8 = (v4 + *(v7 + 80) + 16) & ~*(v7 + 80);
  v10 = (*(v9 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = *(v0 + 16);

  v12 = *(v0 + 32);

  v13 = sub_10006BC38();
  v14(v13);

  (*(v7 + 8))(v0 + v8, v5);
  v15 = *(v0 + v10 + 8);

  sub_1000E4E14();
  sub_100006A20();

  return _swift_deallocObject(v16, v17, v18);
}

void sub_1000E3E44()
{
  sub_1000E4D00();
  v2 = sub_1000E9A84();
  sub_100032590(v2);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v6 = v4 + *(v5 + 64);
  v7 = sub_1000EBD94();
  sub_100032590(v7);
  v9 = v8;
  v11 = v10;
  v12 = ((v6 & 0xFFFFFFFFFFFFFFF8) + *(v9 + 80) + 16) & ~*(v9 + 80);
  v13 = *(v11 + 64);
  sub_1000E4D18();
  sub_1000E16DC(v0, *(v1 + 16), *(v1 + 24), *(v1 + 32), v1 + v4, *(v1 + v6), *(v1 + (v6 & 0xFFFFFFFFFFFFFFF8) + 8), v1 + v15, *(v1 + v14), *(v1 + v14 + 8));
}

uint64_t sub_1000E3F50(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  sub_1000069E4(v4);
  v6 = *(v5 + 32);
  v7 = sub_100019AC0();
  v8(v7);
  return a2;
}

uint64_t sub_1000E3FAC()
{
  v1 = type metadata accessor for ForecastEntry(0);
  sub_1000E4DF4(v1);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v69 = *(v5 + 64);
  v6 = *(v0 + 16);

  v7 = *(v0 + 32);

  v8 = v0 + v4;
  v9 = sub_1000E8604();
  sub_1000069E4(v9);
  v68 = *(v10 + 8);
  v68(v0 + v4, v9);
  v11 = v1[5];
  v12 = sub_1000EBD64();
  if (!sub_100005B30(v0 + v4 + v11, 1, v12))
  {
    sub_1000326A0(v12);
    (*(v13 + 8))(v8 + v11, v12);
  }

  v14 = (v8 + v1[6]);
  v15 = *(v14 + 1);

  v16 = *(v14 + 3);

  v17 = *(v14 + 5);

  v18 = type metadata accessor for WidgetContext();
  v19 = *(v18 + 44);
  v20 = sub_1000E8524();
  if (!sub_100005B30(&v14[v19], 1, v20))
  {
    sub_1000326A0(v20);
    (*(v21 + 8))(&v14[v19], v20);
  }

  v22 = *&v14[*(v18 + 48)];

  v23 = v8 + v1[7];
  type metadata accessor for ForecastEntry.Model(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    type metadata accessor for WeatherDataViewModel();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    switch(EnumCaseMultiPayload)
    {
      case 2:
        v62 = sub_1000EB2B4();
        sub_1000069D0(v62);
        (*(v63 + 8))(v23, v64);
        break;
      case 1:
        v52 = sub_1000E8634();
        sub_1000069D0(v52);
        (*(v53 + 8))(v23);
        v54 = type metadata accessor for InstantWeatherViewModel();
        v55 = *(v54 + 20);
        v56 = sub_1000E9A84();
        sub_1000069D0(v56);
        (*(v57 + 8))(v23 + v55);
        v58 = *(v54 + 24);
        v59 = sub_1000EB674();
        sub_1000069D0(v59);
        (*(v60 + 8))(v23 + v58, v61);
        break;
      case 0:
        v25 = sub_1000E8634();
        sub_1000069E4(v25);
        v67 = *(v26 + 8);
        v67(v23, v25);
        v27 = type metadata accessor for AggregateWeatherViewModel(0);
        v28 = v27[5];
        v29 = sub_1000E9A84();
        sub_1000069D0(v29);
        (*(v30 + 8))(v23 + v28);
        v31 = v27[6];
        v32 = sub_1000EB674();
        sub_1000069D0(v32);
        (*(v33 + 8))(v23 + v31);
        v34 = *(v23 + v27[7]);

        v35 = *(v23 + v27[8]);

        v36 = v23 + v27[9];
        v37 = type metadata accessor for AirQualityViewModel();
        if (!sub_100005B30(v36, 1, v37))
        {
          v67(v36, v25);
          v68(v36 + v37[5], v9);
          v38 = v37[7];
          v39 = sub_1000E8E84();
          sub_1000069D0(v39);
          (*(v40 + 8))(v36 + v38);
          v41 = v37[8];
          v42 = sub_1000E8F64();
          sub_1000069D0(v42);
          (*(v43 + 8))(v36 + v41);
        }

        v44 = v27[10];
        v45 = sub_1000EBAF4();
        if (!sub_100005B30(v23 + v44, 1, v45))
        {
          sub_1000326A0(v45);
          (*(v46 + 8))(v23 + v44, v45);
        }

        v47 = *(v23 + v27[11]);

        v48 = v27[13];
        if (!sub_100005B30(v23 + v48, 1, v20))
        {
          sub_1000326A0(v20);
          (*(v49 + 8))(v23 + v48, v20);
        }

        v50 = v27[14];
        v51 = type metadata accessor for AggregateWeatherViewModel.SunEvent(0);
        if (!sub_100005B30(v23 + v50, 1, v51))
        {
          v68(v23 + v50, v9);
        }

        break;
    }
  }

  v65 = (v69 + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  return _swift_deallocObject(v0, v65 + 8, v3 | 7);
}

uint64_t sub_1000E44EC()
{
  v3 = sub_1000E4D38();
  v4 = type metadata accessor for ForecastEntry(v3);
  sub_100032590(v4);
  v6 = v5;
  v8 = v7;
  v9 = (*(v6 + 80) + 40) & ~*(v6 + 80);
  v10 = *(v8 + 64);
  sub_1000E4D18();
  v12 = v1[2];
  v13 = v1[3];
  v14 = v1[4];
  v16 = *(v1 + v15);

  return sub_1000DEE1C(v2, v0, v12, v13, v14, v1 + v11, v16);
}

uint64_t sub_1000E4588()
{
  v1 = type metadata accessor for ForecastEntry(0);
  sub_1000E4DF4(v1);
  v78 = *(v2 + 80);
  v75 = *(v3 + 64);
  v4 = sub_1000E9A84();
  sub_1000090D4(v4);
  v6 = v5;
  v7 = *(v5 + 80);
  v77 = *(v8 + 64);
  v9 = *(v0 + 16);

  v10 = *(v0 + 32);

  v76 = (v78 + 40) & ~v78;
  v11 = v0 + v76;
  v12 = sub_1000E8604();
  sub_1000069D0(v12);
  v73 = *(v13 + 8);
  v74 = v14;
  v73(v0 + v76);
  v15 = v1[5];
  v16 = sub_1000EBD64();
  if (!sub_100005B30(v0 + v76 + v15, 1, v16))
  {
    sub_1000326A0(v16);
    (*(v17 + 8))(v11 + v15, v16);
  }

  v18 = (v11 + v1[6]);
  v19 = *(v18 + 1);

  v20 = *(v18 + 3);

  v21 = *(v18 + 5);

  v22 = type metadata accessor for WidgetContext();
  v23 = *(v22 + 44);
  v24 = sub_1000E8524();
  if (!sub_100005B30(&v18[v23], 1, v24))
  {
    sub_1000326A0(v24);
    (*(v25 + 8))(&v18[v23], v24);
  }

  v26 = *&v18[*(v22 + 48)];

  v27 = v11 + v1[7];
  type metadata accessor for ForecastEntry.Model(0);
  v28 = v4;
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    type metadata accessor for WeatherDataViewModel();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    switch(EnumCaseMultiPayload)
    {
      case 2:
        v66 = sub_1000EB2B4();
        sub_1000069D0(v66);
        (*(v67 + 8))(v27, v68);
        break;
      case 1:
        v57 = sub_1000E8634();
        sub_1000069D0(v57);
        (*(v58 + 8))(v27);
        v59 = type metadata accessor for InstantWeatherViewModel();
        v60 = sub_1000E4D78(v59);
        v61(v60);
        v62 = *(v59 + 24);
        v63 = sub_1000EB674();
        sub_1000069D0(v63);
        (*(v64 + 8))(v27 + v62, v65);
        break;
      case 0:
        v30 = sub_1000E8634();
        sub_1000069E4(v30);
        v72 = *(v31 + 8);
        v72(v27, v30);
        v32 = type metadata accessor for AggregateWeatherViewModel(0);
        v33 = sub_1000E4D78(v32);
        v34(v33);
        v35 = v32[6];
        v36 = sub_1000EB674();
        sub_1000069D0(v36);
        (*(v37 + 8))(v27 + v35);
        v38 = *(v27 + v32[7]);

        v39 = *(v27 + v32[8]);

        v40 = v27 + v32[9];
        v41 = type metadata accessor for AirQualityViewModel();
        if (!sub_100005B30(v40, 1, v41))
        {
          v72(v40, v30);
          (v73)(v40 + v41[5], v74);
          v42 = v40;
          v43 = v41[7];
          v44 = sub_1000E8E84();
          sub_1000069D0(v44);
          (*(v45 + 8))(v42 + v43);
          v46 = v41[8];
          v47 = sub_1000E8F64();
          sub_1000069D0(v47);
          (*(v48 + 8))(v42 + v46);
        }

        v49 = v32[10];
        v50 = sub_1000EBAF4();
        if (!sub_100005B30(v27 + v49, 1, v50))
        {
          sub_1000326A0(v50);
          (*(v51 + 8))(v27 + v49, v50);
        }

        v52 = *(v27 + v32[11]);

        v53 = v32[13];
        if (!sub_100005B30(v27 + v53, 1, v24))
        {
          sub_1000326A0(v24);
          (*(v54 + 8))(v27 + v53, v24);
        }

        v55 = v32[14];
        v56 = type metadata accessor for AggregateWeatherViewModel.SunEvent(0);
        if (!sub_100005B30(v27 + v55, 1, v56))
        {
          (v73)(v27 + v55, v74);
        }

        break;
    }
  }

  v69 = (v76 + v75) & 0xFFFFFFFFFFFFFFF8;
  v70 = (v69 + v7 + 16) & ~v7;

  (*(v6 + 8))(v0 + v70, v28);

  return _swift_deallocObject(v0, v70 + v77, v78 | v7 | 7);
}

uint64_t sub_1000E4B10()
{
  v2 = sub_1000E4D00();
  v3 = type metadata accessor for ForecastEntry(v2);
  sub_100032590(v3);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v7 = v5 + *(v6 + 64);
  v8 = sub_1000E9A84();
  sub_100009210(v8);
  v10 = v1[2];
  v11 = v1[3];
  v12 = v1[4];
  v13 = *(v1 + (v7 & 0xFFFFFFFFFFFFFFF8) + 8);
  v14 = *(v1 + v7);
  v15 = v1 + (((v7 & 0xFFFFFFFFFFFFFFF8) + *(v9 + 80) + 16) & ~*(v9 + 80));

  return sub_1000DF86C(v0, v10, v11, v12, v1 + v5, v14, v13, v15);
}

uint64_t sub_1000E4CAC()
{

  return sub_1000E3614();
}

void sub_1000E4CE0()
{
  *(v0 + 22) = 2160;
  *(v0 + 24) = 1752392040;
  *(v0 + 32) = 2081;
}

void sub_1000E4D28()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
}

uint64_t sub_1000E4D68(uint64_t result)
{
  *(v1 + 4) = result;
  *(v1 + 12) = 2082;
  return result;
}

uint64_t sub_1000E4DB8(float a1)
{
  *v1 = a1;
  v4 = v2;
  v5 = *(v2 + 24);
  v6 = *(v4 + 32);
}

uint64_t sub_1000E4DDC()
{

  return swift_slowAlloc();
}

void sub_1000E4E20(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v6, a4, v4, 0xCu);
}

uint64_t sub_1000E4E40()
{
  v4 = *(v1 - 128);
  v3 = *(v1 - 120);
  v5 = *(v1 - 208);
  v6 = *(v0 + 88);
}

void sub_1000E4E60(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t sub_1000E4E80()
{

  return swift_weakInit();
}

uint64_t sub_1000E4E98()
{

  return swift_slowAlloc();
}

uint64_t sub_1000E4EF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v53 = a3;
  v5 = sub_100002A10(&qword_100135A08, &qword_1000FAC68);
  v6 = sub_1000090D4(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  __chkstk_darwin(v6);
  v12 = &v47 - v11;
  v13 = sub_100002A10(&qword_100135A10, &qword_1000FAC70);
  v49 = sub_1000090D4(v13);
  v50 = v14;
  v16 = *(v15 + 64);
  __chkstk_darwin(v49);
  v18 = &v47 - v17;
  v19 = sub_100002A10(&qword_100135A18, &unk_1000FAC78);
  v51 = sub_1000090D4(v19);
  v52 = v20;
  v22 = *(v21 + 64);
  __chkstk_darwin(v51);
  v48 = &v47 - v23;
  type metadata accessor for WeatherTimelineProvider();
  swift_allocObject();
  swift_bridgeObjectRetain_n();
  v54 = sub_1000D88B8(5, a1, a2);
  type metadata accessor for AQIContentView();
  sub_1000E54E4(&qword_100135A20, type metadata accessor for AQIContentView);
  sub_1000E54E4(&qword_10012FAD0, type metadata accessor for WeatherTimelineProvider);
  sub_1000EBCD4();
  sub_1000EA354();
  v24 = sub_100015CA8();
  v26 = v25;
  LOBYTE(a1) = v27;
  v28 = sub_1000E552C();
  sub_1000EA474();
  sub_1000058EC(v24, v26, a1 & 1);

  (*(v8 + 8))(v12, v5);
  sub_1000EA354();
  v29 = sub_100015CA8();
  v31 = v30;
  LOBYTE(v12) = v32;
  v54 = v5;
  v55 = v28;
  sub_100015C78();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v35 = v48;
  v34 = v49;
  sub_1000EA444();
  sub_1000058EC(v29, v31, v12 & 1);

  (*(v50 + 8))(v18, v34);
  sub_100002A10(&qword_10012F6D8, &qword_1000F0480);
  v36 = sub_1000EBC44();
  sub_1000090D4(v36);
  v38 = v37;
  v40 = *(v39 + 72);
  v41 = (*(v37 + 80) + 32) & ~*(v37 + 80);
  v42 = swift_allocObject();
  *(v42 + 16) = xmmword_1000F03E0;
  v43 = v42 + v41;
  v44 = *(v38 + 104);
  v44(v43, enum case for WidgetFamily.accessoryCircular(_:), v36);
  v44(v43 + v40, enum case for WidgetFamily.accessoryInline(_:), v36);
  v54 = v34;
  v55 = OpaqueTypeConformance2;
  sub_100015C60();
  swift_getOpaqueTypeConformance2();
  v45 = v51;
  sub_1000EA454();

  return (*(v52 + 8))(v35, v45);
}

uint64_t sub_1000E5430@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for AQIContentView();
  sub_1000159C8(a1, a2 + *(v4 + 20));
  *a2 = swift_getKeyPath();
  sub_100002A10(&qword_10012F230, &qword_1000EEFF0);

  return swift_storeEnumTagMultiPayload();
}

unint64_t sub_1000E54AC@<X0>(void *a1@<X8>)
{
  result = sub_1000E4EB0();
  *a1 = 0xD000000000000022;
  a1[1] = v3;
  return result;
}

uint64_t sub_1000E54E4(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1000E552C()
{
  result = qword_100135A28;
  if (!qword_100135A28)
  {
    sub_100002ABC(&qword_100135A08, &qword_1000FAC68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100135A28);
  }

  return result;
}

uint64_t sub_1000E5594()
{
  sub_100002ABC(&qword_100135A18, &unk_1000FAC78);
  sub_100002ABC(&qword_100135A10, &qword_1000FAC70);
  sub_100002ABC(&qword_100135A08, &qword_1000FAC68);
  sub_1000E552C();
  sub_100015C78();
  swift_getOpaqueTypeConformance2();
  sub_100015C60();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t static InstantWeatherViewModel.__derived_struct_equals(_:_:)()
{
  if ((sub_1000E8614() & 1) == 0)
  {
    return 0;
  }

  v0 = type metadata accessor for InstantWeatherViewModel();
  v1 = *(v0 + 20);
  if ((sub_1000E9A04() & 1) == 0)
  {
    return 0;
  }

  v2 = *(v0 + 24);

  return sub_1000EB604();
}

uint64_t type metadata accessor for InstantWeatherViewModel()
{
  result = qword_100135AA0;
  if (!qword_100135AA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000E5728(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1000EC5D4() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6E6F697461636F6CLL && a2 == 0xE800000000000000;
    if (v6 || (sub_1000EC5D4() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0xD000000000000012 && 0x80000001000FC0D0 == a2)
    {

      return 2;
    }

    else
    {
      v8 = sub_1000EC5D4();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_1000E5838(char a1)
{
  if (!a1)
  {
    return 25705;
  }

  if (a1 == 1)
  {
    return 0x6E6F697461636F6CLL;
  }

  return 0xD000000000000012;
}

uint64_t sub_1000E5890@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1000E5728(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1000E58B8(uint64_t a1)
{
  v2 = sub_1000E5B3C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000E58F4(uint64_t a1)
{
  v2 = sub_1000E5B3C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t InstantWeatherViewModel.encode(to:)(void *a1)
{
  v3 = sub_100002A10(&qword_100135A30, &qword_1000FACC0);
  v4 = sub_1000090D4(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  __chkstk_darwin(v4);
  v10 = &v22[-v9];
  v11 = a1[4];
  sub_100008DA8(a1, a1[3]);
  sub_1000E5B3C();
  sub_1000EC6A4();
  v22[15] = 0;
  sub_1000E8634();
  sub_1000E6684();
  sub_1000E6168(v12, v13);
  sub_1000E66B4();
  if (!v1)
  {
    v14 = type metadata accessor for InstantWeatherViewModel();
    v15 = *(v14 + 20);
    v22[14] = 1;
    sub_1000E9A84();
    sub_1000E666C();
    sub_1000E6168(v16, v17);
    sub_1000E66B4();
    v18 = *(v14 + 24);
    v22[13] = 2;
    sub_1000EB674();
    sub_1000E669C();
    sub_1000E6168(v19, v20);
    sub_1000E66B4();
  }

  return (*(v6 + 8))(v10, v3);
}

unint64_t sub_1000E5B3C()
{
  result = qword_100135A38;
  if (!qword_100135A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100135A38);
  }

  return result;
}

uint64_t InstantWeatherViewModel.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v57 = a2;
  v58 = sub_1000EB674();
  v3 = sub_1000090D4(v58);
  v56 = v4;
  v6 = *(v5 + 64);
  __chkstk_darwin(v3);
  sub_100006A10();
  v59 = v8 - v7;
  v9 = sub_1000E9A84();
  v10 = sub_1000090D4(v9);
  v62 = v11;
  v63 = v10;
  v13 = *(v12 + 64);
  __chkstk_darwin(v10);
  sub_100006A10();
  v16 = v15 - v14;
  v17 = sub_1000E8634();
  v18 = sub_1000090D4(v17);
  v60 = v19;
  v21 = *(v20 + 64);
  __chkstk_darwin(v18);
  sub_100006A10();
  v64 = v23 - v22;
  v66 = sub_100002A10(&qword_100135A40, &qword_1000FACC8);
  v24 = sub_1000090D4(v66);
  v61 = v25;
  v27 = *(v26 + 64);
  __chkstk_darwin(v24);
  v29 = &v54 - v28;
  v30 = type metadata accessor for InstantWeatherViewModel();
  v31 = *(*(v30 - 8) + 64);
  __chkstk_darwin(v30);
  sub_100006A10();
  v34 = v33 - v32;
  v35 = a1[4];
  sub_100008DA8(a1, a1[3]);
  sub_1000E5B3C();
  v65 = v29;
  v36 = v67;
  sub_1000EC694();
  if (v36)
  {
    return sub_100009068(a1);
  }

  v55 = v30;
  v67 = v34;
  v37 = a1;
  v38 = v62;
  v39 = v63;
  v70 = 0;
  sub_1000E6684();
  sub_1000E6168(v40, v41);
  v42 = v64;
  sub_1000EC514();
  v43 = *(v60 + 32);
  v64 = v17;
  v43(v67, v42, v17);
  v69 = 1;
  sub_1000E666C();
  sub_1000E6168(v44, v45);
  v46 = v16;
  sub_1000EC514();
  v47 = v67;
  (*(v38 + 32))(v67 + *(v55 + 20), v46, v39);
  v68 = 2;
  sub_1000E669C();
  sub_1000E6168(v48, v49);
  v50 = v58;
  sub_1000EC514();
  v51 = sub_1000E66D4();
  v52(v51);
  (*(v56 + 32))(v47 + *(v55 + 24), v59, v50);
  sub_1000E6060(v47, v57);
  sub_100009068(v37);
  return sub_1000E60C4(v47);
}

uint64_t sub_1000E6060(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InstantWeatherViewModel();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000E60C4(uint64_t a1)
{
  v2 = type metadata accessor for InstantWeatherViewModel();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000E6168(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000E61F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000E8634();
  v7 = sub_100006A04(v6);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = a1;
  }

  else
  {
    v11 = sub_1000E9A84();
    v12 = sub_100006A04(v11);
    if (*(v13 + 84) == a2)
    {
      v9 = v12;
      v14 = *(a3 + 20);
    }

    else
    {
      v9 = sub_1000EB674();
      v14 = *(a3 + 24);
    }

    v10 = a1 + v14;
  }

  return sub_100005B30(v10, a2, v9);
}

uint64_t sub_1000E62E4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1000E8634();
  v9 = sub_100006A04(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = v9;
    v12 = a1;
  }

  else
  {
    v13 = sub_1000E9A84();
    v14 = sub_100006A04(v13);
    if (*(v15 + 84) == a3)
    {
      v11 = v14;
      v16 = *(a4 + 20);
    }

    else
    {
      v11 = sub_1000EB674();
      v16 = *(a4 + 24);
    }

    v12 = a1 + v16;
  }

  return sub_1000028A0(v12, a2, a2, v11);
}

uint64_t sub_1000E63C4()
{
  result = sub_1000E8634();
  if (v1 <= 0x3F)
  {
    result = sub_1000E9A84();
    if (v2 <= 0x3F)
    {
      result = sub_1000EB674();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for InstantWeatherViewModel.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x1000E652CLL);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1000E6568()
{
  result = qword_100135AE0;
  if (!qword_100135AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100135AE0);
  }

  return result;
}

unint64_t sub_1000E65C0()
{
  result = qword_100135AE8;
  if (!qword_100135AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100135AE8);
  }

  return result;
}

unint64_t sub_1000E6618()
{
  result = qword_100135AF0;
  if (!qword_100135AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100135AF0);
  }

  return result;
}

uint64_t sub_1000E66B4()
{

  return sub_1000EC594();
}

uint64_t sub_1000E66D4()
{
  v2 = *(v0 + 8);
  result = *(v1 - 104);
  v4 = *(v1 - 96);
  return result;
}

id sub_1000E6704()
{
  type metadata accessor for BundleLookup();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  qword_100145E00 = result;
  return result;
}

uint64_t sub_1000E675C()
{
  v0 = sub_1000E84B4();
  sub_10004B338(v0, qword_100145E08);
  v1 = sub_100008CB8(v0, qword_100145E08);
  *v1 = type metadata accessor for BundleLookup();
  v2 = enum case for LocalizedStringResource.BundleDescription.forClass(_:);
  v3 = *(*(v0 - 8) + 104);

  return v3(v1, v2, v0);
}

id WeatherIntent.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WeatherIntent();
  return objc_msgSendSuper2(&v2, "init");
}

id WeatherIntent.init(coder:)(void *a1)
{
  v13 = type metadata accessor for WeatherIntent();
  v9 = sub_1000E73FC(v13, "initWithCoder:", v3, v4, v5, v6, v7, v8, v1);
  v11 = objc_msgSendSuper2(v9, v10);

  if (v11)
  {
  }

  return v11;
}

id WeatherIntent.__allocating_init(identifier:backingStore:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_1000EBE64();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithIdentifier:v6 backingStore:a3];

  return v7;
}

id WeatherIntent.init(identifier:backingStore:)(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    v5 = sub_1000EBE64();
  }

  else
  {
    v5 = 0;
  }

  v16 = type metadata accessor for WeatherIntent();
  v12 = sub_1000E73FC(v16, "initWithIdentifier:backingStore:", v6, v7, v8, v9, v10, v11, v3);
  v14 = objc_msgSendSuper2(v12, v13);

  return v14;
}

id WeatherIntent.__allocating_init(domain:verb:parametersByName:)()
{
  v2 = sub_1000E7408();

  v3 = sub_1000EBE64();

  if (v1)
  {
    v4.super.isa = sub_1000EBDC4().super.isa;
  }

  else
  {
    v4.super.isa = 0;
  }

  v5 = [objc_allocWithZone(v0) initWithDomain:v2 verb:v3 parametersByName:v4.super.isa];

  return v5;
}

id WeatherIntent.init(domain:verb:parametersByName:)()
{
  v2 = sub_1000E7408();

  v3 = sub_1000EBE64();

  if (v1)
  {
    v4.super.isa = sub_1000EBDC4().super.isa;
  }

  else
  {
    v4.super.isa = 0;
  }

  v7.receiver = v0;
  v7.super_class = type metadata accessor for WeatherIntent();
  v5 = objc_msgSendSuper2(&v7, "initWithDomain:verb:parametersByName:", v2, v3, v4.super.isa);

  return v5;
}

unint64_t WeatherIntentResponseCode.init(rawValue:)(unint64_t result)
{
  if (result > 6)
  {
    return 0;
  }

  return result;
}

unint64_t sub_1000E6CC4@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = WeatherIntentResponseCode.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t WeatherIntentResponse.code.getter()
{
  v1 = OBJC_IVAR___WeatherIntentResponse_code;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1000E6D88(uint64_t a1)
{
  v3 = OBJC_IVAR___WeatherIntentResponse_code;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

char *WeatherIntentResponse.init(code:userActivity:)(uint64_t a1, void *a2)
{
  v5 = [v2 init];
  v6 = OBJC_IVAR___WeatherIntentResponse_code;
  swift_beginAccess();
  *&v5[v6] = a1;
  v7 = v5;
  [v7 setUserActivity:a2];

  return v7;
}

id WeatherIntentResponse.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id WeatherIntentResponse.init()()
{
  *&v0[OBJC_IVAR___WeatherIntentResponse_code] = 0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WeatherIntentResponse();
  return objc_msgSendSuper2(&v2, "init");
}

id WeatherLocation.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder:a1];

  return v3;
}

id WeatherIntentResponse.init(coder:)(void *a1)
{
  *(v1 + OBJC_IVAR___WeatherIntentResponse_code) = 0;
  v13 = type metadata accessor for WeatherIntentResponse();
  v9 = sub_1000E73FC(v13, "initWithCoder:", v3, v4, v5, v6, v7, v8, v1);
  v11 = objc_msgSendSuper2(v9, v10);

  if (v11)
  {
  }

  return v11;
}

id WeatherIntentResponse.__allocating_init(backingStore:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithBackingStore:a1];

  return v3;
}

id WeatherIntentResponse.init(backingStore:)(void *a1)
{
  *(v1 + OBJC_IVAR___WeatherIntentResponse_code) = 0;
  v13 = type metadata accessor for WeatherIntentResponse();
  v9 = sub_1000E73FC(v13, "initWithBackingStore:", v3, v4, v5, v6, v7, v8, v1);
  v11 = objc_msgSendSuper2(v9, v10);

  if (v11)
  {
  }

  return v11;
}

id WeatherIntentResponse.__allocating_init(propertiesByName:)(uint64_t a1)
{
  if (a1)
  {
    v2.super.isa = sub_1000EBDC4().super.isa;
  }

  else
  {
    v2.super.isa = 0;
  }

  v3 = [objc_allocWithZone(v1) initWithPropertiesByName:v2.super.isa];

  return v3;
}

id WeatherIntentResponse.init(propertiesByName:)(uint64_t a1)
{
  *&v1[OBJC_IVAR___WeatherIntentResponse_code] = 0;
  if (a1)
  {
    v2.super.isa = sub_1000EBDC4().super.isa;
  }

  else
  {
    v2.super.isa = 0;
  }

  v5.receiver = v1;
  v5.super_class = type metadata accessor for WeatherIntentResponse();
  v3 = objc_msgSendSuper2(&v5, "initWithPropertiesByName:", v2.super.isa);

  if (v3)
  {
  }

  return v3;
}

id sub_1000E7300(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

unint64_t sub_1000E733C()
{
  result = qword_100135B98;
  if (!qword_100135B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100135B98);
  }

  return result;
}

uint64_t sub_1000E7390@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = WeatherIntentResponse.code.getter();
  *a2 = result;
  return result;
}

NSString sub_1000E7408()
{

  return sub_1000EBE64();
}

id WeatherLocation.__allocating_init(identifier:display:pronunciationHint:)()
{
  sub_1000E7D6C();
  if (v2)
  {
    v3 = sub_1000EBE64();
  }

  else
  {
    v3 = 0;
  }

  v4 = sub_1000EBE64();

  if (v1)
  {
    v5 = sub_1000EBE64();
  }

  else
  {
    v5 = 0;
  }

  v6 = [objc_allocWithZone(v0) initWithIdentifier:v3 displayString:v4 pronunciationHint:v5];

  return v6;
}

id WeatherLocation.init(identifier:display:pronunciationHint:)()
{
  sub_1000E7D6C();
  if (v2)
  {
    v3 = sub_1000EBE64();
  }

  else
  {
    v3 = 0;
  }

  v4 = sub_1000EBE64();

  if (v1)
  {
    v5 = sub_1000EBE64();
  }

  else
  {
    v5 = 0;
  }

  v8.receiver = v0;
  v8.super_class = type metadata accessor for WeatherLocation();
  v6 = objc_msgSendSuper2(&v8, "initWithIdentifier:displayString:pronunciationHint:", v3, v4, v5);

  return v6;
}

id WeatherLocation.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for WeatherLocation();
  v3 = objc_msgSendSuper2(&v5, "initWithCoder:", a1);

  if (v3)
  {
  }

  return v3;
}

id static WeatherLocationResolutionResult.success(with:)(uint64_t a1)
{
  v4.receiver = swift_getObjCClassFromMetadata();
  v4.super_class = &OBJC_METACLASS___WeatherLocationResolutionResult;
  v2 = objc_msgSendSuper2(&v4, "successWithResolvedObject:", a1);

  return v2;
}

id static WeatherLocationResolutionResult.disambiguation(with:)(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_1000E78E0();

    sub_1000EC474();
  }

  else
  {

    sub_1000EC5E4();
    sub_1000E78E0();
  }

  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  sub_1000E78E0();
  isa = sub_1000EBFE4().super.isa;

  v5.receiver = ObjCClassFromMetadata;
  v5.super_class = &OBJC_METACLASS___WeatherLocationResolutionResult;
  v3 = objc_msgSendSuper2(&v5, "disambiguationWithObjectsToDisambiguate:", isa);

  return v3;
}

unint64_t sub_1000E78E0()
{
  result = qword_100135C18;
  if (!qword_100135C18)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100135C18);
  }

  return result;
}

id static WeatherLocationResolutionResult.confirmationRequired(with:)(uint64_t a1)
{
  v4.receiver = swift_getObjCClassFromMetadata();
  v4.super_class = &OBJC_METACLASS___WeatherLocationResolutionResult;
  v2 = objc_msgSendSuper2(&v4, "confirmationRequiredWithObjectToConfirm:", a1);

  return v2;
}

id WeatherLocationResolutionResult.__allocating_init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = objc_allocWithZone(v2);
  isa = sub_1000EBDC4().super.isa;

  v6 = [v4 initWithJSONDictionary:isa forIntent:a2];

  return v6;
}

id WeatherLocationResolutionResult.init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  isa = sub_1000EBDC4().super.isa;

  v7.receiver = v2;
  v7.super_class = type metadata accessor for WeatherLocationResolutionResult();
  v5 = objc_msgSendSuper2(&v7, "initWithJSONDictionary:forIntent:", isa, a2);

  if (v5)
  {
  }

  return v5;
}

id sub_1000E7D0C(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_1000E7D44()
{

  return sub_1000EC464();
}