void sub_100151820()
{
  sub_10013D7AC(319, &qword_100CA41E0, type metadata accessor for LocationHeaderViewFrameCoordinator);
  if (v0 <= 0x3F)
  {
    sub_10013D7AC(319, &qword_100CA41E8, type metadata accessor for LocationHeaderViewMeasurements);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_100151940()
{
  result = type metadata accessor for ObservationRegistrar();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void sub_1001519FC()
{
  type metadata accessor for CGSize(319);
  if (v0 <= 0x3F)
  {
    type metadata accessor for DisplayMetrics();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_100151B14()
{
  sub_10013D7AC(319, &qword_100CA41E0, type metadata accessor for LocationHeaderViewFrameCoordinator);
  if (v0 <= 0x3F)
  {
    sub_10013D7AC(319, &qword_100CA41E8, type metadata accessor for LocationHeaderViewMeasurements);
    if (v1 <= 0x3F)
    {
      sub_10009BDF4(319, &unk_100CA41F0, &type metadata for CGFloat, &type metadata accessor for Environment);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t storeEnumTagSinglePayload for PerformanceTestFeatures(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 4) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 4) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PerformanceTestFeatures(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && a1[4])
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *a1;
      v4 = v3 >= 2;
      v2 = (v3 + 2147483646) & 0x7FFFFFFF;
      if (!v4)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

unint64_t sub_100151CE8()
{
  result = qword_100CA4638;
  if (!qword_100CA4638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CA4638);
  }

  return result;
}

uint64_t sub_100151D58()
{
  v0 = sub_100003940();
  sub_10022E824(v0);
  type metadata accessor for LocationHeaderViewFrameCoordinator(255);
  sub_100007EB8();
  sub_10023FBF4(v1, &unk_100CA46A8);
  sub_1000166F0();
  sub_100151E08(v2, v3);
  return sub_100017540();
}

uint64_t sub_100151E08(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100151E50@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v313 = a1;
  v312 = type metadata accessor for OpacityTransition();
  sub_1000037C4();
  v311 = v3;
  __chkstk_darwin(v4);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v5);
  v7 = sub_100003918(v282 - v6);
  v8 = type metadata accessor for AutomationInfo(v7);
  v9 = sub_10001BA94(v8, &v339);
  __chkstk_darwin(v9);
  sub_1000038E4();
  sub_100003918(v10);
  v283 = type metadata accessor for EnvironmentValues();
  sub_1000037C4();
  v282[3] = v11;
  __chkstk_darwin(v12);
  sub_1000038E4();
  sub_100003918(v13);
  v294 = type metadata accessor for AccessibilityChildBehavior();
  sub_1000037C4();
  v293 = v14;
  __chkstk_darwin(v15);
  sub_1000038E4();
  sub_100003990(v16);
  v17 = sub_10022C350(&qword_100CA3D18);
  sub_10001BA94(v17, &v321);
  sub_100003828();
  __chkstk_darwin(v18);
  sub_1000039BC();
  sub_100003990(v19);
  v298 = sub_10022C350(&qword_100CA3D20);
  sub_1000037C4();
  v297 = v20;
  sub_100003828();
  __chkstk_darwin(v21);
  sub_1000039BC();
  sub_100003990(v22);
  v23 = sub_10022C350(&qword_100CA3D28);
  v24 = sub_10001BA94(v23, &v324);
  __chkstk_darwin(v24);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v25);
  sub_100003990(v282 - v26);
  v27 = sub_10022C350(&qword_100CA3D30);
  sub_10001BA94(v27, &v326);
  sub_100003828();
  __chkstk_darwin(v28);
  sub_1000039BC();
  sub_100003990(v29);
  v30 = sub_10022C350(&qword_100CA3D38);
  sub_10001BA94(v30, &v329);
  sub_100003828();
  __chkstk_darwin(v31);
  sub_1000039BC();
  sub_100003990(v32);
  v33 = sub_10022C350(&qword_100CA3D40);
  sub_10001BA94(v33, &v328);
  sub_100003828();
  __chkstk_darwin(v34);
  sub_1000039BC();
  sub_100003990(v35);
  v36 = sub_10022C350(&qword_100CA3D48);
  sub_10001BA94(v36, &v331);
  sub_100003828();
  __chkstk_darwin(v37);
  sub_1000039BC();
  sub_100003990(v38);
  v39 = sub_10022C350(&qword_100CA3D50);
  sub_10001BA94(v39, &v335);
  sub_100003828();
  __chkstk_darwin(v40);
  sub_1000039BC();
  sub_100003990(v41);
  v42 = sub_10022C350(&qword_100CA3D58);
  sub_10001BA94(v42, v334);
  sub_100003828();
  __chkstk_darwin(v43);
  sub_1000039BC();
  sub_100003990(v44);
  v45 = sub_10022C350(&qword_100CA3D60);
  sub_100003810(v45);
  sub_100003828();
  __chkstk_darwin(v46);
  sub_1000039BC();
  sub_100003990(v47);
  v48 = sub_10022C350(&qword_100CA3D68);
  sub_100003810(v48);
  sub_100003828();
  __chkstk_darwin(v49);
  sub_1000039BC();
  sub_100003918(v50);
  v322 = type metadata accessor for Text.Measurements.Context();
  sub_1000037C4();
  v333 = v51;
  __chkstk_darwin(v52);
  sub_1000038E4();
  sub_100003918(v53);
  v330 = type metadata accessor for Font.TextStyle();
  sub_1000037C4();
  v328 = v54;
  __chkstk_darwin(v55);
  sub_1000038E4();
  sub_100003918(v56);
  v321 = type metadata accessor for Text.Measurements();
  sub_1000037C4();
  v320 = v57;
  __chkstk_darwin(v58);
  sub_1000038E4();
  sub_100003918(v59);
  v60 = type metadata accessor for DisplayMetrics();
  v61 = sub_100003810(v60);
  __chkstk_darwin(v61);
  sub_1000038E4();
  v63 = sub_100003918(v62);
  v64 = type metadata accessor for LocationHeaderViewMeasurements(v63);
  v65 = sub_10001BA94(v64, &v345);
  __chkstk_darwin(v65);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v66);
  v68 = sub_100003918(v282 - v67);
  v69 = type metadata accessor for LocationHeaderView(v68);
  v70 = (v1 + v69[14]);
  v71 = v70[9];
  *&v349 = v70[8];
  *(&v349 + 1) = v71;
  v72 = sub_10002D5A4();

  v73 = Text.init<A>(_:)();
  v75 = v74;
  v77 = v76;
  sub_10023B2E8();
  v341 = Text.font(_:)();
  v340 = v78;
  v334[1] = v79;
  v344 = v80;

  sub_10010CD64(v73, v75, v77 & 1);

  v82 = v70[6];
  v81 = v70[7];
  v329 = v70;
  *&v349 = v82;
  *(&v349 + 1) = v81;

  v290 = v72;
  v83 = Text.init<A>(_:)();
  v85 = v84;
  v87 = v86;
  sub_1001536E8();
  v343 = Text.font(_:)();
  v342 = v88;
  v334[0] = v89;
  v339 = v90;

  sub_10010CD64(v83, v85, v87 & 1);

  v337 = sub_100153A64();
  v336 = v91;
  v323 = v92;
  v338 = v93;
  sub_1000FC9C8();
  (*(v320 + 16))(v335, v2 + v69[19], v321);
  static Font.largeTitle.getter();
  v317 = Text.font(_:)();
  v316 = v94;
  v318 = v95;

  v289 = v69;
  v96 = v69[17];
  v325 = v2;
  v97 = (v2 + v96);
  v98 = v97[1];
  v99 = v97[2];
  if (v97[3])
  {
    v100 = v328;
    v101 = v327;
    v102 = v330;
    (*(v328 + 104))(v327, enum case for Font.TextStyle.footnote(_:), v330);
    static Font.Weight.semibold.getter();
    static Font.system(_:weight:)();
    (*(v100 + 8))(v101, v102);
    LOBYTE(v349) = v99 & 1;
    v326 = Text.font(_:)();
    v327 = v103;
    LOBYTE(v102) = v104;
    v106 = v105;

    v328 = v102 & 1;
  }

  else
  {
    v326 = *v97;
    v328 = v99;
    v327 = v98;
    v106 = 0;
  }

  sub_1000A3C14(v332, v319 + *(v331 + 32), type metadata accessor for DisplayMetrics);
  v107 = type metadata accessor for Text.WritingMode();
  sub_10001B350(v286, 1, 1, v107);
  v315 = type metadata accessor for Text.Suffix();
  sub_10001B350(v288, 1, 1, v315);

  sub_10002FD4C();
  v108 = sub_1000280A4();
  LODWORD(v331) = v109;
  sub_10010CD54(v108, v110, v109);
  sub_10002FD4C();
  v111 = sub_100022728();
  LODWORD(v330) = v112;
  sub_10010CD54(v111, v113, v112);
  sub_10002FD4C();
  v114 = sub_100041870();
  v285 = v115;
  sub_10010CD54(v114, v116, v115);
  v117 = v287;
  sub_100031418();
  sub_100037070();
  *(v119 - 256) = v118;
  sub_10001624C();
  v121 = v120;
  v123 = v122;
  v125 = v333 + 8;
  v124 = *(v333 + 8);
  v126 = v322;
  v124(v117, v322);
  v284 = v106;
  v314 = v124;
  if (v106)
  {
    v127 = sub_100019184();
    sub_10001B350(v127, v128, v129, v315);
    v130 = v328;
    v282[1] = v107;
    v131 = v125;
    v132 = v326;
    v133 = v327;
    sub_10010CD54(v326, v327, v328 & 1);

    sub_100031418();
    sub_10001624C();
    v135 = v134;
    v137 = v136;
    v328 = v130;
    v138 = v132;
    v125 = v131;
    v327 = v133;
    sub_10010CD64(v138, v133, v130 & 1);

    v139 = v314;
    v314(v117, v126);
    if (v121 <= v135)
    {
      v121 = v135;
    }

    v123 = v123 + v137;
  }

  else
  {
    v139 = v124;
  }

  v140 = v126;
  v141 = v319;
  *v319 = v121;
  *(v141 + 8) = v123;
  v142 = sub_100019184();
  v143 = v315;
  sub_10001B350(v142, v144, v145, v315);
  sub_100031418();
  sub_1000280A4();
  sub_100025060();
  v146 = v335;
  Text.Measurements.size(of:in:context:)();
  v148 = v147;
  v150 = v149;
  v139(v117, v140);
  *(v141 + 16) = v148;
  *(v141 + 24) = v150;
  v151 = sub_100019184();
  sub_10001B350(v151, v152, v153, v143);
  sub_100031418();
  sub_100022728();
  v333 = v125;
  sub_100025060();
  Text.Measurements.size(of:in:context:)();
  v155 = v154;
  v157 = v156;
  v139(v117, v140);
  *(v141 + 32) = v155;
  *(v141 + 40) = v157;
  v158 = sub_100019184();
  sub_10001B350(v158, v159, v160, v143);
  sub_100031418();
  v161 = v337;
  v162 = v336;
  v163 = v285;
  v164 = v338;
  sub_100025060();
  Text.Measurements.size(of:in:context:)();
  v166 = v165;
  v168 = v167;
  sub_10010CD64(v161, v162, v163);

  v169 = sub_100022728();
  sub_10010CD64(v169, v170, v330);
  v171 = v339;

  v172 = v341;
  v173 = v340;
  sub_10010CD64(v341, v340, v331);

  v174 = sub_100037070();
  sub_10010CD64(v174, v176, *(v175 - 256));

  sub_10014A53C(v326, v327, v328, v284);
  v314(v117, v322);
  sub_10000E73C();
  v177(v146, v321);
  sub_1000DFD78(v332, type metadata accessor for DisplayMetrics);
  *(v141 + 48) = v166;
  *(v141 + 56) = v168;
  sub_1001540E8(v141, v324, type metadata accessor for LocationHeaderViewMeasurements);
  v178 = static VerticalAlignment.center.getter();
  v179 = v291;
  *v291 = v178;
  *(v179 + 8) = 0;
  *(v179 + 16) = 1;
  v180 = sub_10022C350(&qword_100CA3D78);
  v277 = v171;
  v181 = v325;
  sub_100154144(v325, v172, v173, v331, v344, v343, v342, v330, v179 + *(v180 + 44), v277, v161, v162, v163, v164);
  LOBYTE(v161) = sub_100156C00();
  v182 = type metadata accessor for LocationHeaderViewFrameCoordinator(0);
  sub_1000166F0();
  v185 = sub_100151E08(v183, v184);
  v335 = v182;
  v333 = v185;
  v186 = Environment.init<A>(_:)();
  LOBYTE(v162) = v187;
  KeyPath = swift_getKeyPath();
  v347 = v162 & 1;
  v345 = 0;
  v189 = v296;
  v190 = v179 + *(v296 + 36);
  *v190 = v161 & 1;
  *(v190 + 1) = *v348;
  *(v190 + 4) = *&v348[3];
  *(v190 + 8) = v186;
  *(v190 + 16) = v162 & 1;
  *(v190 + 17) = *v346;
  *(v190 + 20) = *&v346[3];
  *(v190 + 24) = KeyPath;
  *(v190 + 32) = 0;
  *(v190 + 40) = 0;
  *(v190 + 48) = 0;
  *(v190 + 56) = v345;
  v191 = v292;
  static AccessibilityChildBehavior.combine.getter();
  v192 = sub_10023E40C();
  v193 = v295;
  View.accessibilityElement(children:)();
  sub_10000E73C();
  v194(v191, v294);
  sub_10003FDA0(v179, &qword_100CA3D18);
  sub_100031BCC();
  v196 = v181 + v195;
  v197 = *v196;
  if (*(v196 + 8) != 1)
  {

    static os_log_type_t.fault.getter();
    v198 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    v199 = v282[2];
    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000EBD74(v197, 0);
    sub_10000E73C();
    v200(v199, v283);
  }

  v201 = v299;
  *&v349 = v189;
  *(&v349 + 1) = v192;
  swift_getOpaqueTypeConformance2();
  v202 = v298;
  View.accessibilityRespondsToUserInteraction(_:)();
  sub_10000E73C();
  v203(v193, v202);
  sub_10022C350(&qword_100CA3DA8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100A2D320;
  v205 = v329;
  v206 = v329[1];
  *(inited + 32) = *v329;
  *(inited + 40) = v206;
  v207 = v205[3];
  v208 = *(v205 + 40) >> 6;
  if (v208)
  {
    if (v208 != 1)
    {
      v207 = 0;
      v209 = 0;
      goto LABEL_17;
    }
  }

  else
  {
    v207 = v329[2];
  }

LABEL_17:
  *(inited + 48) = v207;
  *(inited + 56) = v209;

  v210 = 0;
  v211 = _swiftEmptyArrayStorage;
LABEL_18:
  v212 = (inited + 40 + 16 * v210);
  while (++v210 != 3)
  {
    v213 = v212 + 2;
    v214 = *v212;
    v212 += 2;
    if (v214)
    {
      v215 = *(v213 - 3);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_100109810();
        v211 = v218;
      }

      v216 = v211[2];
      if (v216 >= v211[3] >> 1)
      {
        sub_100109810();
        v211 = v219;
      }

      v211[2] = v216 + 1;
      v217 = &v211[2 * v216];
      v217[4] = v215;
      v217[5] = v214;
      goto LABEL_18;
    }
  }

  swift_setDeallocating();
  sub_10015A594();
  v220 = v300;
  ModifiedContent<>.accessibilityInputLabels<A>(_:)();

  sub_10003FDA0(v201, &qword_100CA3D28);
  v221 = sub_10015A5A8();
  v223 = v222;
  v224 = sub_100156C00();
  v281 = v338;
  LODWORD(v332) = v323 & 1;
  v280 = v323 & 1;
  v279 = v336;
  v278 = v337;
  sub_10002FD4C();
  v225 = sub_1000280A4();
  sub_10015A7FC(v225, v226, v227, v344, v343, v342, v228, v339, v278, v279, v280, v281);
  v230 = v229;
  v231 = sub_10023B124();
  sub_100031BCC();
  v232 = v301;
  v234 = v301 + v233;
  *v234 = Environment.init<A>(_:)();
  *(v234 + 8) = v235 & 1;
  v236 = type metadata accessor for TranslationAndGradientBackgroundViewModifier(0);
  v237 = v236[5];
  *(v234 + v237) = swift_getKeyPath();
  sub_10022C350(&qword_100CA3DB0);
  swift_storeEnumTagMultiPayload();
  v238 = v234 + v236[6];
  *v238 = swift_getKeyPath();
  *(v238 + 8) = 0;
  v239 = v234 + v236[7];
  *v239 = v221;
  *(v239 + 8) = v223 & 1;
  *(v234 + v236[8]) = v224 & 1;
  *(v234 + v236[9]) = v230;
  *(v234 + v236[10]) = v231;
  sub_10011C0F0(v220, v232, &qword_100CA3D28);
  sub_10015AE2C();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v240 = v304;
  sub_10011C0F0(v232, v304, &qword_100CA3D30);
  sub_100031BCC();
  v242 = (v240 + v241);
  v243 = v350;
  *v242 = v349;
  v242[1] = v243;
  v242[2] = v351;
  v244 = v308;
  *v308 = 0;
  *(v244 + 8) = 0;
  *(v244 + 16) = 2;
  swift_storeEnumTagMultiPayload();
  sub_100031BCC();
  v245 = v303;
  v247 = v303 + v246;
  v248 = type metadata accessor for AutomationInfoProperty();
  sub_1000A3C14(v244, v247 + *(v248 + 24), type metadata accessor for AutomationInfo);
  sub_1000DFD78(v244, type metadata accessor for AutomationInfo);
  *v247 = 0;
  *(v247 + 8) = 0xE000000000000000;
  *(v247 + 16) = swift_getKeyPath();
  *(v247 + 24) = 0;
  sub_10011C0F0(v240, v245, &qword_100CA3D38);
  LOBYTE(v247) = *(v329 + 129);
  v249 = v305;
  sub_10011C0F0(v245, v305, &qword_100CA3D40);
  *(v249 + *(v302 + 52)) = v247;
  v250 = v310;
  OpacityTransition.init()();
  v251 = v311;
  v252 = v312;
  (*(v311 + 16))(v309, v250, v312);
  sub_100151E08(&qword_100CA3DB8, &type metadata accessor for OpacityTransition);
  v253 = AnyTransition.init<A>(_:)();
  (*(v251 + 8))(v250, v252);
  v254 = v306;
  sub_10011C0F0(v249, v306, &qword_100CA3D48);
  sub_100031BCC();
  *(v254 + v255) = v253;
  v256 = swift_getKeyPath();
  sub_100031BCC();
  v257 = v307;
  v259 = (v307 + v258);
  v260 = sub_10022C350(&qword_100CA3DC0);
  v261 = v324;
  sub_1000A3C14(v324, v259 + *(v260 + 28), type metadata accessor for LocationHeaderViewMeasurements);
  *v259 = v256;
  sub_10011C0F0(v254, v257, &qword_100CA3D50);
  v262 = sub_10023B68C();
  v264 = v263;
  v265 = sub_100041870();
  sub_10010CD64(v265, v266, v332);

  sub_10002FD4C();
  v267 = sub_100022728();
  sub_10010CD64(v267, v268, v269);

  sub_10002FD4C();
  v270 = sub_1000280A4();
  sub_10010CD64(v270, v271, v272);

  sub_1000DFD78(v261, type metadata accessor for LocationHeaderViewMeasurements);
  v273 = v257;
  v274 = v313;
  sub_10011C0F0(v273, v313, &qword_100CA3D58);
  result = sub_10022C350(&qword_100CA3DC8);
  v276 = (v274 + *(result + 36));
  *v276 = v262;
  v276[1] = v264;
  return result;
}

uint64_t sub_1001536E8()
{
  v1 = type metadata accessor for Font.Leading();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for EnvironmentValues();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Font.TextStyle();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v0 + *(type metadata accessor for LocationHeaderView(0) + 56) + 128) != 1)
  {
    v22 = v2;
    v14 = *v0;
    if (*(v0 + 8) == 1)
    {
      if ((v14 & 1) == 0)
      {
LABEL_5:
        v15 = &enum case for Font.TextStyle.title3(_:);
LABEL_8:
        (*(v10 + 104))(v12, *v15, v9);
        static Font.Weight.medium.getter();
        static Font.system(_:weight:)();
        (*(v10 + 8))(v12, v9);
        v18 = v22;
        (*(v22 + 104))(v4, enum case for Font.Leading.tight(_:), v1);
        v13 = Font.leading(_:)();

        (*(v18 + 8))(v4, v1);
        return v13;
      }
    }

    else
    {

      static os_log_type_t.fault.getter();
      v16 = static Log.runtimeIssuesLog.getter();
      v21 = v1;
      v17 = v16;
      os_log(_:dso:log:_:_:)();

      v1 = v21;
      EnvironmentValues.init()();
      swift_getAtKeyPath();
      sub_1000EBD74(v14, 0);
      (*(v6 + 8))(v8, v5);
      if (v23 != 1)
      {
        goto LABEL_5;
      }
    }

    v15 = &enum case for Font.TextStyle.body(_:);
    goto LABEL_8;
  }

  (*(v10 + 104))(v12, enum case for Font.TextStyle.title3(_:), v9);
  static Font.Weight.semibold.getter();
  v13 = static Font.system(_:weight:)();
  (*(v10 + 8))(v12, v9);
  return v13;
}

uint64_t sub_100153A64()
{
  v1 = v0 + *(type metadata accessor for LocationHeaderView(0) + 56);
  if (*(v1 + 128) == 1)
  {
    sub_10002D5A4();
    v2 = Text.init<A>(_:)();
    v4 = v3;
    v6 = v5;
    sub_10023B80C();
    v7 = Text.font(_:)();

    v8 = v6 & 1;
    v9 = v2;
    v10 = v4;
  }

  else
  {
    v11 = [objc_opt_self() mainBundle];
    v30._object = 0x8000000100ABBCC0;
    v12._countAndFlagsBits = 0x3A4C202040253A48;
    v13._object = 0x8000000100ABBC90;
    v30._countAndFlagsBits = 0xD00000000000003CLL;
    v13._countAndFlagsBits = 0xD000000000000024;
    v12._object = 0xEA00000000004025;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v13, 0, v11, v12, v30);

    sub_10022C350(&qword_100CA40C8);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_100A2D320;
    v16 = *(v1 + 96);
    v15 = *(v1 + 104);
    *(v14 + 56) = &type metadata for String;
    v17 = sub_100035744();
    *(v14 + 32) = v16;
    *(v14 + 40) = v15;
    v18 = *(v1 + 112);
    v19 = *(v1 + 120);
    *(v14 + 96) = &type metadata for String;
    *(v14 + 104) = v17;
    *(v14 + 64) = v17;
    *(v14 + 72) = v18;
    *(v14 + 80) = v19;

    static String.localizedStringWithFormat(_:_:)();

    sub_10002D5A4();
    v20 = Text.init<A>(_:)();
    v22 = v21;
    LOBYTE(v19) = v23;
    sub_100153D5C();
    v24 = Text.font(_:)();
    v26 = v25;
    v28 = v27;

    sub_10010CD64(v20, v22, v19 & 1);

    static Color.black.getter();
    Color.opacity(_:)();

    v7 = Text.shadow(color:radius:x:y:)();

    v8 = v28 & 1;
    v9 = v24;
    v10 = v26;
  }

  sub_10010CD64(v9, v10, v8);

  return v7;
}

uint64_t sub_100153D5C()
{
  v1 = type metadata accessor for Font.Leading();
  sub_1000037C4();
  v28 = v2;
  __chkstk_darwin(v3);
  sub_1000037D8();
  v6 = v5 - v4;
  v7 = type metadata accessor for Font.TextStyle();
  sub_1000037C4();
  v9 = v8;
  __chkstk_darwin(v10);
  sub_1000037D8();
  v13 = v12 - v11;
  v14 = type metadata accessor for EnvironmentValues();
  sub_1000037C4();
  v16 = v15;
  __chkstk_darwin(v17);
  sub_1000037D8();
  v20 = v19 - v18;
  v21 = *v0;
  if (*(v0 + 8) != 1)
  {

    static os_log_type_t.fault.getter();
    v27 = v7;
    v23 = v1;
    v24 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    v1 = v23;
    v7 = v27;
    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000EBD74(v21, 0);
    (*(v16 + 8))(v20, v14);
    if (v29)
    {
      goto LABEL_3;
    }

LABEL_5:
    v22 = &enum case for Font.TextStyle.title3(_:);
    goto LABEL_6;
  }

  if ((v21 & 1) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v22 = &enum case for Font.TextStyle.body(_:);
LABEL_6:
  (*(v9 + 104))(v13, *v22, v7);
  static Font.Weight.medium.getter();
  static Font.system(_:weight:)();
  (*(v9 + 8))(v13, v7);
  (*(v28 + 104))(v6, enum case for Font.Leading.tight(_:), v1);
  v25 = Font.leading(_:)();

  (*(v28 + 8))(v6, v1);
  return v25;
}

uint64_t sub_100154038(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1000037E8();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_100154090(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1000037E8();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1001540E8(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1000037E8();
  v4 = sub_100003940();
  v5(v4);
  return a2;
}

uint64_t sub_100154144@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, int a8@<W7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, unsigned __int8 a13, uint64_t a14)
{
  v56 = a8;
  v59 = a6;
  v60 = a7;
  v57 = a3;
  v58 = a5;
  v54 = a4;
  v55 = a2;
  v49 = a13;
  v52 = a11;
  v53 = a12;
  v50 = a14;
  v51 = a10;
  v16 = type metadata accessor for ContentSizeCategory();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v48[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v20);
  v22 = &v48[-v21];
  v23 = sub_10022C350(&qword_100CA3DE0);
  __chkstk_darwin(v23 - 8);
  v25 = &v48[-((v24 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v26);
  v28 = &v48[-v27];
  __chkstk_darwin(v29);
  v31 = &v48[-v30];
  type metadata accessor for LocationHeaderView(0);
  sub_10009ECC8();
  (*(v17 + 32))(v19, v22, v16);
  v32 = (*(v17 + 88))(v19, v16);
  if (v32 == enum case for ContentSizeCategory.extraSmall(_:) || v32 == enum case for ContentSizeCategory.small(_:) || v32 == enum case for ContentSizeCategory.medium(_:) || v32 == enum case for ContentSizeCategory.large(_:) || v32 == enum case for ContentSizeCategory.extraLarge(_:) || v32 == enum case for ContentSizeCategory.extraExtraLarge(_:) || v32 == enum case for ContentSizeCategory.extraExtraExtraLarge(_:))
  {
    goto LABEL_35;
  }

  if (v32 != enum case for ContentSizeCategory.accessibilityMedium(_:) && v32 != enum case for ContentSizeCategory.accessibilityLarge(_:) && v32 != enum case for ContentSizeCategory.accessibilityExtraLarge(_:) && v32 != enum case for ContentSizeCategory.accessibilityExtraExtraLarge(_:) && v32 != enum case for ContentSizeCategory.accessibilityExtraExtraExtraLarge(_:))
  {
    (*(v17 + 8))(v19, v16);
LABEL_35:
    v43 = static HorizontalAlignment.center.getter();
    goto LABEL_36;
  }

  v43 = static HorizontalAlignment.leading.getter();
LABEL_36:
  *v28 = v43;
  *(v28 + 1) = 0;
  v28[16] = 0;
  v44 = sub_10022C350(&qword_100CA3DE8);
  sub_100154548(a1, v55, v57, v54 & 1, v58, v59, v60, v56 & 1, &v28[*(v44 + 44)], v51, v52, v53, v49 & 1, v50);
  sub_10011C0F0(v28, v31, &qword_100CA3DE0);
  sub_1000302D8(v31, v25, &qword_100CA3DE0);
  *a9 = 0;
  *(a9 + 8) = 1;
  v45 = sub_10022C350(&qword_100CA3DF0);
  sub_1000302D8(v25, a9 + *(v45 + 48), &qword_100CA3DE0);
  v46 = a9 + *(v45 + 64);
  *v46 = 0;
  *(v46 + 8) = 1;
  sub_10003FDA0(v31, &qword_100CA3DE0);
  return sub_10003FDA0(v25, &qword_100CA3DE0);
}

uint64_t sub_100154548@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, int a8@<W7>, void *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, unsigned __int8 a13, uint64_t a14)
{
  LODWORD(v160) = a8;
  v163 = a6;
  v164 = a7;
  v161 = a3;
  v162 = a5;
  v158 = a4;
  v159 = a2;
  v168 = a9;
  v15 = type metadata accessor for DisplayMetrics();
  __chkstk_darwin(v15 - 8);
  v125 = (&v120 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = type metadata accessor for EnvironmentValues();
  v122 = *(v17 - 8);
  v123 = v17;
  __chkstk_darwin(v17);
  v121 = &v120 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v152 = type metadata accessor for AccessibilityChildBehavior();
  v150 = *(v152 - 8);
  __chkstk_darwin(v152);
  v147 = &v120 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v149 = sub_10022C350(&qword_100CA3DF8);
  __chkstk_darwin(v149);
  v146 = (&v120 - v20);
  v153 = sub_10022C350(&qword_100CA3E00);
  v151 = *(v153 - 8);
  __chkstk_darwin(v153);
  v148 = &v120 - v21;
  v22 = sub_10022C350(&qword_100CA3E08);
  __chkstk_darwin(v22 - 8);
  v167 = &v120 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v171 = &v120 - v25;
  v26 = type metadata accessor for ContentSizeCategory();
  v27 = *(v26 - 8);
  __chkstk_darwin(v26);
  v144 = &v120 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v143 = &v120 - v30;
  __chkstk_darwin(v31);
  v136 = &v120 - v32;
  __chkstk_darwin(v33);
  v35 = &v120 - v34;
  v36 = sub_10022C350(&qword_100CA3E10);
  v37 = v36 - 8;
  __chkstk_darwin(v36);
  v39 = &v120 - v38;
  v140 = sub_10022C350(&qword_100CA3E18);
  __chkstk_darwin(v140);
  v142 = &v120 - v40;
  v141 = sub_10022C350(&qword_100CA3E20);
  __chkstk_darwin(v141);
  v165 = &v120 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v42);
  v139 = &v120 - v43;
  __chkstk_darwin(v44);
  v170 = &v120 - v45;
  sub_10015532C();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v156 = v179;
  v157 = v177;
  v154 = v182;
  v155 = v181;
  v195 = 1;
  v194 = v178;
  v193 = v180;
  sub_100155620(v39);
  sub_100156774();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v46 = &v39[*(v37 + 44)];
  v47 = v184;
  v48 = v185;
  *v46 = v183;
  *(v46 + 1) = v47;
  *(v46 + 2) = v48;
  v145 = type metadata accessor for LocationHeaderView(0);
  v49 = *(v145 + 28);
  v166 = a1;
  v138 = a1 + v49;
  sub_10009ECC8();
  v50 = v136;
  v137 = *(v27 + 32);
  v137(v136, v35, v26);
  v124 = v27;
  v51 = *(v27 + 88);
  v169 = v26;
  v133 = v51;
  v52 = v51(v50, v26);
  v53 = enum case for ContentSizeCategory.extraExtraExtraLarge(_:);
  v54 = enum case for ContentSizeCategory.extraSmall(_:);
  v131 = enum case for ContentSizeCategory.medium(_:);
  v132 = enum case for ContentSizeCategory.small(_:);
  v56 = v52 == enum case for ContentSizeCategory.extraSmall(_:) || v52 == enum case for ContentSizeCategory.small(_:) || v52 == enum case for ContentSizeCategory.medium(_:);
  v128 = enum case for ContentSizeCategory.extraLarge(_:);
  v129 = enum case for ContentSizeCategory.large(_:);
  v58 = v56 || v52 == enum case for ContentSizeCategory.large(_:) || v52 == enum case for ContentSizeCategory.extraLarge(_:);
  v127 = enum case for ContentSizeCategory.extraExtraLarge(_:);
  if (!v58 && v52 != enum case for ContentSizeCategory.extraExtraLarge(_:) && v52 != enum case for ContentSizeCategory.extraExtraExtraLarge(_:))
  {
    if (v52 == enum case for ContentSizeCategory.accessibilityMedium(_:) || v52 == enum case for ContentSizeCategory.accessibilityLarge(_:) || v52 == enum case for ContentSizeCategory.accessibilityExtraLarge(_:) || v52 == enum case for ContentSizeCategory.accessibilityExtraExtraLarge(_:) || v52 == enum case for ContentSizeCategory.accessibilityExtraExtraExtraLarge(_:))
    {
      static Alignment.leading.getter();
      goto LABEL_36;
    }

    (*(v124 + 8))(v50, v169);
  }

  static Alignment.center.getter();
LABEL_36:
  v130 = a14;
  v126 = a13;
  v136 = a12;
  v135 = a11;
  v134 = a10;
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v65 = v142;
  sub_10011C0F0(v39, v142, &qword_100CA3E10);
  memcpy((v65 + *(v140 + 36)), v186, 0x70uLL);
  v66 = v166;
  v67 = sub_100156C00();
  sub_10015751C();
  v69 = v68;
  v70 = v139;
  sub_10011C0F0(v65, v139, &qword_100CA3E18);
  v71 = v70 + *(v141 + 36);
  *v71 = v67 & 1;
  *(v71 + 8) = v69;
  sub_10011C0F0(v70, v170, &qword_100CA3E20);
  v72 = v143;
  sub_10009ECC8();
  v73 = v144;
  v74 = v169;
  v137(v144, v72, v169);
  v75 = v133(v73, v74);
  if (v75 != v54 && v75 != v132 && v75 != v131 && v75 != v129 && v75 != v128 && v75 != v127 && v75 != v53)
  {
    if (v75 == enum case for ContentSizeCategory.accessibilityMedium(_:) || v75 == enum case for ContentSizeCategory.accessibilityLarge(_:) || v75 == enum case for ContentSizeCategory.accessibilityExtraLarge(_:) || v75 == enum case for ContentSizeCategory.accessibilityExtraExtraLarge(_:) || v75 == enum case for ContentSizeCategory.accessibilityExtraExtraExtraLarge(_:))
    {
      v86 = static Alignment.topLeading.getter();
      goto LABEL_71;
    }

    (*(v124 + 8))(v73, v169);
  }

  v86 = static Alignment.top.getter();
LABEL_71:
  v88 = v146;
  *v146 = v86;
  *(v88 + 8) = v87;
  v89 = sub_10022C350(&qword_100CA3E28);
  sub_100157928(v66, v159, v161, v158 & 1, v162, v163, v164, v160 & 1, v88 + *(v89 + 44), v134, v135, v136);
  v90 = v147;
  static AccessibilityChildBehavior.ignore.getter();
  v91 = sub_10023FBF4(&qword_100CA3E30, &qword_100CA3DF8);
  v93 = v148;
  v92 = v149;
  View.accessibilityElement(children:)();
  (*(v150 + 8))(v90, v152);
  sub_10003FDA0(v88, &qword_100CA3DF8);
  v94 = v145;
  v95 = v66 + *(v145 + 56);
  v96 = *(v95 + 144);
  v187 = *(v95 + 136);
  v188 = v96;
  v175 = v92;
  v176 = v91;
  swift_getOpaqueTypeConformance2();
  sub_10002D5A4();
  v97 = v153;
  View.accessibilityLabel<A>(_:)();
  (*(v151 + 8))(v93, v97);
  if ((*(v95 + 130) & 1) == 0)
  {
    v99 = v66 + *(v94 + 44);
    v100 = *v99;
    if (*(v99 + 8) == 1)
    {
      if ((v100 & 1) == 0)
      {
        goto LABEL_72;
      }
    }

    else
    {

      static os_log_type_t.fault.getter();
      v101 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      v102 = v121;
      EnvironmentValues.init()();
      swift_getAtKeyPath();
      sub_1000EBD74(v100, 0);
      (*(v122 + 8))(v102, v123);
      if ((v187 & 1) == 0)
      {
        goto LABEL_72;
      }
    }

    v169 = 0;
    v163 = 0;
    v164 = 0;
    v161 = 0;
    v162 = 0;
    v159 = 0;
    v160 = 0;
    LODWORD(v166) = 1;
    goto LABEL_78;
  }

LABEL_72:
  v98 = v125;
  sub_1000FC9C8();
  sub_10015A420(v98, *(v66 + *(v94 + 68) + 24) != 0);
  sub_1000DFD78(v98, type metadata accessor for DisplayMetrics);
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  LODWORD(v166) = 0;
  v169 = v187;
  v163 = v191;
  v164 = v189;
  v174 = 1;
  v173 = v188;
  v172 = v190;
  v159 = 1;
  v160 = v188;
  v161 = v190;
  v162 = v192;
  LOBYTE(v175) = 0;
LABEL_78:
  v103 = v195;
  v104 = v194;
  v105 = v193;
  v106 = v170;
  v107 = v165;
  sub_1000302D8(v170, v165, &qword_100CA3E20);
  v108 = v171;
  v109 = v167;
  sub_1000302D8(v171, v167, &qword_100CA3E08);
  v110 = v168;
  *v168 = 0;
  *(v110 + 8) = v103;
  v111 = v156;
  v110[2] = v157;
  *(v110 + 24) = v104;
  v110[4] = v111;
  *(v110 + 40) = v105;
  v112 = v154;
  v110[6] = v155;
  v110[7] = v112;
  v113 = sub_10022C350(&qword_100CA3E38);
  sub_1000302D8(v107, v110 + v113[12], &qword_100CA3E20);
  sub_1000302D8(v109, v110 + v113[16], &qword_100CA3E08);
  v114 = v110 + v113[20];
  v115 = v159;
  *v114 = 0;
  *(v114 + 1) = v115;
  v116 = v160;
  *(v114 + 2) = v169;
  *(v114 + 3) = v116;
  v117 = v161;
  *(v114 + 4) = v164;
  *(v114 + 5) = v117;
  v118 = v162;
  *(v114 + 6) = v163;
  *(v114 + 7) = v118;
  v114[64] = v166;
  sub_10003FDA0(v108, &qword_100CA3E08);
  sub_10003FDA0(v106, &qword_100CA3E20);
  sub_10003FDA0(v109, &qword_100CA3E08);
  return sub_10003FDA0(v107, &qword_100CA3E20);
}

uint64_t sub_10015532C()
{
  v1 = type metadata accessor for DisplayMetrics();
  __chkstk_darwin(v1 - 8);
  v3 = &v14[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = type metadata accessor for EnvironmentValues();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = type metadata accessor for LocationHeaderView(0);
  if (*(v0 + *(v8 + 56) + 130))
  {
    goto LABEL_2;
  }

  v10 = v0 + *(v8 + 44);
  v11 = *v10;
  if (*(v10 + 8) == 1)
  {
    if (v11)
    {
      return 0;
    }
  }

  else
  {

    static os_log_type_t.fault.getter();
    v12 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000EBD74(v11, 0);
    (*(v5 + 8))(v7, v4);
    if (v14[15])
    {
      return 0;
    }
  }

LABEL_2:
  sub_1000FC9C8();
  v9 = sub_100155544(v3);
  sub_1000DFD78(v3, type metadata accessor for DisplayMetrics);
  return v9;
}

uint64_t sub_100155544(uint64_t *a1)
{
  v2 = [objc_opt_self() currentDevice];
  v3 = [v2 userInterfaceIdiom];

  if (v3 == 5)
  {
    return 0x4034000000000000;
  }

  if (v3 != 1)
  {
    return 0;
  }

  v4 = sub_1004CF4D0(*a1);
  v5 = a1[1];
  if (!v4)
  {
    if (v5 == 1)
    {
      return 0x4050000000000000;
    }

    return 0x4034000000000000;
  }

  if (v5 == 1)
  {
    return 0x4053800000000000;
  }

  else
  {
    return 0x4041000000000000;
  }
}

uint64_t sub_100155620@<X0>(uint64_t a1@<X8>)
{
  v68 = a1;
  v2 = type metadata accessor for ContentSizeCategory();
  v66 = *(v2 - 8);
  v67 = v2;
  __chkstk_darwin(v2);
  v65 = &v62 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v64 = &v62 - v5;
  v6 = sub_10022C350(&qword_100CA4030);
  __chkstk_darwin(v6 - 8);
  v8 = &v62 - v7;
  v9 = sub_10022C350(&qword_100CA4038);
  v10 = v9 - 8;
  __chkstk_darwin(v9);
  v12 = &v62 - v11;
  v13 = sub_10022C350(&qword_100CA4040);
  v14 = v13 - 8;
  __chkstk_darwin(v13);
  v16 = &v62 - v15;
  v17 = sub_10022C350(&qword_100CA4048);
  v18 = v17 - 8;
  __chkstk_darwin(v17);
  v20 = &v62 - v19;
  v63 = sub_10022C350(&qword_100CA4050);
  __chkstk_darwin(v63);
  v22 = &v62 - v21;
  *v8 = static HorizontalAlignment.center.getter();
  *(v8 + 1) = 0;
  v8[16] = 0;
  v23 = sub_10022C350(&qword_100CA4058);
  sub_100155C24(&v8[*(v23 + 44)]);
  if (*(v1 + *(type metadata accessor for LocationHeaderView(0) + 68) + 24))
  {
    v24 = 0.0;
  }

  else
  {
    v24 = -5.0;
  }

  sub_10011C0F0(v8, v12, &qword_100CA4030);
  v25 = &v12[*(v10 + 44)];
  *v25 = 0;
  *(v25 + 1) = v24;
  KeyPath = swift_getKeyPath();
  sub_10011C0F0(v12, v16, &qword_100CA4038);
  v27 = &v16[*(v14 + 44)];
  *v27 = KeyPath;
  v27[1] = 0x3FE0000000000000;
  v28 = swift_getKeyPath();
  sub_10011C0F0(v16, v20, &qword_100CA4040);
  v29 = &v20[*(v18 + 44)];
  *v29 = v28;
  *(v29 + 1) = 1;
  v29[16] = 0;
  sub_10022C350(&qword_100CA4060);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100A2D320;
  v31 = static Edge.Set.leading.getter();
  *(inited + 32) = v31;
  v32 = static Edge.Set.trailing.getter();
  *(inited + 33) = v32;
  v33 = Edge.Set.init(rawValue:)();
  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v31)
  {
    v33 = Edge.Set.init(rawValue:)();
  }

  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v32)
  {
    v33 = Edge.Set.init(rawValue:)();
  }

  v34 = v64;
  v35 = v65;
  sub_10009ECC8();
  v36 = v66;
  v37 = v34;
  v38 = v67;
  (*(v66 + 32))(v35, v37, v67);
  v39 = (*(v36 + 88))(v35, v38);
  if (v39 != enum case for ContentSizeCategory.extraSmall(_:) && v39 != enum case for ContentSizeCategory.small(_:) && v39 != enum case for ContentSizeCategory.medium(_:) && v39 != enum case for ContentSizeCategory.large(_:) && v39 != enum case for ContentSizeCategory.extraLarge(_:) && v39 != enum case for ContentSizeCategory.extraExtraLarge(_:) && v39 != enum case for ContentSizeCategory.extraExtraExtraLarge(_:))
  {
    v40.n128_u64[0] = 0;
    if (v39 != enum case for ContentSizeCategory.accessibilityMedium(_:) && v39 != enum case for ContentSizeCategory.accessibilityLarge(_:) && v39 != enum case for ContentSizeCategory.accessibilityExtraLarge(_:) && v39 != enum case for ContentSizeCategory.accessibilityExtraExtraLarge(_:) && v39 != enum case for ContentSizeCategory.accessibilityExtraExtraExtraLarge(_:))
    {
      (*(v36 + 8))(v35, v38, v40);
    }
  }

  EdgeInsets.init(_all:)();
  v52 = v51;
  v54 = v53;
  v56 = v55;
  v58 = v57;
  sub_10011C0F0(v20, v22, &qword_100CA4048);
  v59 = &v22[*(v63 + 36)];
  *v59 = v33;
  *(v59 + 1) = v52;
  *(v59 + 2) = v54;
  *(v59 + 3) = v56;
  *(v59 + 4) = v58;
  v59[40] = 0;
  v60 = v68;
  sub_10011C0F0(v22, v68, &qword_100CA4050);
  result = sub_10022C350(&qword_100CA4068);
  *(v60 + *(result + 36)) = 0x3FF0000000000000;
  return result;
}

uint64_t sub_100155C24@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_10022C350(&qword_100CA4070);
  __chkstk_darwin(v2 - 8);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v16 - v6;
  v8 = sub_10022C350(&qword_100CA4078);
  __chkstk_darwin(v8 - 8);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v16 - v12;
  sub_100155E10(&v16 - v12);
  sub_100156410();
  sub_1000302D8(v13, v10, &qword_100CA4078);
  sub_1000302D8(v7, v4, &qword_100CA4070);
  sub_1000302D8(v10, a1, &qword_100CA4078);
  v14 = sub_10022C350(&qword_100CA4080);
  sub_1000302D8(v4, a1 + *(v14 + 48), &qword_100CA4070);
  sub_10003FDA0(v7, &qword_100CA4070);
  sub_10003FDA0(v13, &qword_100CA4078);
  sub_10003FDA0(v4, &qword_100CA4070);
  return sub_10003FDA0(v10, &qword_100CA4078);
}

uint64_t sub_100155E10@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for AccessibilityChildBehavior();
  v65 = *(v3 - 8);
  v66 = v3;
  __chkstk_darwin(v3);
  v64 = &v51 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Font.TextStyle();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10022C350(&qword_100CA40B8);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v63 = &v51 - v11;
  v12 = sub_10022C350(&qword_100CA40C0);
  __chkstk_darwin(v12);
  v14 = &v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v51 - v16;
  v18 = type metadata accessor for LocationHeaderView(0);
  v19 = *(v18 + 68);
  v67 = v1;
  v20 = v1 + v19;
  v21 = *(v20 + 24);
  if (v21)
  {
    v57 = v17;
    v58 = v14;
    v59 = v10;
    v60 = v9;
    v61 = v12;
    v62 = a1;
    v22 = *v20;
    v23 = *(v20 + 8);
    v24 = *(v20 + 16);
    v25 = *(v6 + 104);
    v52 = v18;
    v25(v8, enum case for Font.TextStyle.footnote(_:), v5);

    sub_10010CD54(v22, v23, v24 & 1);
    static Font.Weight.semibold.getter();
    static Font.system(_:weight:)();
    (*(v6 + 8))(v8, v5);
    v53 = v24;
    v55 = v22;
    v54 = v23;
    v56 = v21;
    v26 = Text.font(_:)();
    v28 = v27;
    v30 = v29;

    static Color.black.getter();
    sub_100156608();
    Color.opacity(_:)();

    sub_100156634();
    sub_10015667C();
    sub_100156658();
    v31 = Text.shadow(color:radius:x:y:)();
    v33 = v32;
    v35 = v34;
    v37 = v36;

    sub_10010CD64(v26, v28, v30 & 1);

    v70 = v31;
    v71 = v33;
    v72 = v35 & 1;
    v73 = v37;
    v38 = v64;
    static AccessibilityChildBehavior.ignore.getter();
    v39 = v63;
    View.accessibilityElement(children:)();
    (*(v65 + 8))(v38, v66);
    sub_10010CD64(v31, v33, v35 & 1);

    v40 = v67 + *(v52 + 56);
    v41 = *(v40 + 24);
    v42 = *(v40 + 40) >> 6;
    if (v42)
    {
      if (v42 != 1)
      {
        v41 = 0;
        v43 = 0xE000000000000000;
        v46 = v61;
        v45 = v62;
        v48 = v59;
        v47 = v60;
        v50 = v57;
        v49 = v58;
        goto LABEL_11;
      }

      v43 = *(v40 + 32);
    }

    else
    {
      v43 = *(v40 + 24);
      v41 = *(v40 + 16);
    }

    v46 = v61;
    v45 = v62;
    v48 = v59;
    v47 = v60;
    v50 = v57;
    v49 = v58;

LABEL_11:
    v70 = v41;
    v71 = v43;
    v68 = &type metadata for Text;
    v69 = &protocol witness table for Text;
    swift_getOpaqueTypeConformance2();
    sub_10002D5A4();
    View.accessibilityLabel<A>(_:)();

    (*(v48 + 8))(v39, v47);
    ModifiedContent<>.accessibilityIdentifier(_:)();
    sub_10010CD64(v55, v54, v53 & 1);

    sub_10003FDA0(v49, &qword_100CA40C0);
    sub_10011C0F0(v50, v45, &qword_100CA40C0);
    return sub_10001B350(v45, 0, 1, v46);
  }

  return sub_10001B350(a1, 1, 1, v12);
}

uint64_t sub_100156410()
{
  v0 = type metadata accessor for LocationHeaderView(0);
  static Font.largeTitle.getter();
  v1 = Text.font(_:)();
  v3 = v2;
  v5 = v4;

  static Color.black.getter();
  sub_100156608();
  Color.opacity(_:)();

  sub_100156634();
  sub_10015667C();
  sub_100156658();
  v6 = Text.shadow(color:radius:x:y:)();
  v8 = v7;
  v10 = v9;
  v12 = v11;

  sub_10010CD64(v1, v3, v5 & 1);

  if (*(v15 + *(v0 + 68) + 24))
  {
    v13 = 0.0;
  }

  else
  {
    v13 = 4.0;
  }

  v21 = v10 & 1;
  *&v16 = v6;
  *(&v16 + 1) = v8;
  LOBYTE(v17) = v10 & 1;
  *(&v17 + 1) = v12;
  *&v18 = 0;
  *(&v18 + 1) = v13;
  *&v19 = swift_getKeyPath();
  *(&v19 + 1) = 0x3FC999999999999ALL;
  sub_10022C350(&qword_100CA4088);
  sub_10015669C();
  View.accessibilityIdentifier(_:)();
  v20[0] = v16;
  v20[1] = v17;
  v20[2] = v18;
  v20[3] = v19;
  return sub_10003FDA0(v20, &qword_100CA4088);
}

double sub_100156608()
{
  if ((v0[8] & 1) == 0)
  {
    return *v0;
  }

  *v0 = 0x3FD3333333333333;
  v0[8] = 0;
  return 0.3;
}

double sub_100156634()
{
  if ((*(v0 + 24) & 1) == 0)
  {
    return *(v0 + 16);
  }

  *(v0 + 16) = 0x4014000000000000;
  *(v0 + 24) = 0;
  return 5.0;
}

double sub_100156658()
{
  if ((*(v0 + 56) & 1) == 0)
  {
    return *(v0 + 48);
  }

  *(v0 + 48) = 0x4000000000000000;
  *(v0 + 56) = 0;
  return 2.0;
}

double sub_10015667C()
{
  if ((*(v0 + 40) & 1) == 0)
  {
    return *(v0 + 32);
  }

  *(v0 + 32) = 0;
  *(v0 + 40) = 0;
  return 0.0;
}

unint64_t sub_10015669C()
{
  result = qword_100CA4090;
  if (!qword_100CA4090)
  {
    sub_10022E824(&qword_100CA4088);
    sub_10023EBBC(&qword_100CA4098, &unk_100CA40A0);
    sub_10023FBF4(&qword_100CA40A8, &qword_100CA40B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CA4090);
  }

  return result;
}

double sub_100156774()
{
  v0 = type metadata accessor for Font.TextStyle();
  v41 = *(v0 - 8);
  v42 = v0;
  __chkstk_darwin(v0);
  v40 = &v35 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_10022C350(&qword_100CA3D60);
  __chkstk_darwin(v2 - 8);
  v4 = &v35 - v3;
  v5 = sub_10022C350(&qword_100CA3D68);
  __chkstk_darwin(v5 - 8);
  v7 = &v35 - v6;
  v45 = type metadata accessor for Text.Measurements.Context();
  v47 = *(v45 - 8);
  __chkstk_darwin(v45);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for LocationHeaderView(0);
  v44 = *(v10 + 76);
  static Font.largeTitle.getter();
  v11 = Text.font(_:)();
  v13 = v12;
  v15 = v14;

  v16 = type metadata accessor for Text.WritingMode();
  sub_10001B350(v7, 1, 1, v16);
  v38 = type metadata accessor for Text.Suffix();
  sub_10001B350(v4, 1, 1, v38);
  v39 = v7;
  v43 = v4;
  Text.Measurements.Context.init(writingMode:textSuffix:)();
  v17 = v46;
  Text.Measurements.size(of:in:context:)();
  v19 = v18;
  sub_10010CD64(v11, v13, v15 & 1);

  v20 = *(v47 + 8);
  v47 += 8;
  v20(v9, v45);
  v21 = v17 + *(v10 + 68);
  if (*(v21 + 24))
  {
    v22 = *(v21 + 16);
    v23 = *v21;
    v24 = *(v21 + 8);
    v26 = v40;
    v25 = v41;
    v27 = v42;
    (*(v41 + 104))(v40, enum case for Font.TextStyle.footnote(_:), v42);
    v36 = v22;
    v35 = v24;
    sub_10010CD54(v23, v24, v22 & 1);

    static Font.Weight.semibold.getter();
    static Font.system(_:weight:)();
    v37 = v20;
    (*(v25 + 8))(v26, v27);
    v28 = Text.font(_:)();
    v30 = v29;
    LOBYTE(v24) = v31;

    sub_10001B350(v39, 1, 1, v16);
    sub_10001B350(v43, 1, 1, v38);
    Text.Measurements.Context.init(writingMode:textSuffix:)();
    Text.Measurements.size(of:in:context:)();
    v33 = v32;
    sub_10010CD64(v28, v30, v24 & 1);

    sub_10010CD64(v23, v35, v36 & 1);

    v37(v9, v45);
  }

  else
  {
    v33 = 0.0;
  }

  return v19 + v33;
}

uint64_t sub_100156C00()
{
  v1 = type metadata accessor for EnvironmentValues();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (sub_100156D84())
  {
    v5 = type metadata accessor for LocationHeaderView(0);
    if (*(v0 + *(v5 + 56) + 130))
    {
      v6 = 1;
    }

    else
    {
      v7 = v0 + *(v5 + 44);
      v8 = *v7;
      if (*(v7 + 8) != 1)
      {

        static os_log_type_t.fault.getter();
        v9 = static Log.runtimeIssuesLog.getter();
        os_log(_:dso:log:_:_:)();

        EnvironmentValues.init()();
        swift_getAtKeyPath();
        sub_1000EBD74(v8, 0);
        (*(v2 + 8))(v4, v1);
        LOBYTE(v8) = v11[15];
      }

      v6 = v8 ^ 1;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

uint64_t sub_100156D84()
{
  v1 = v0;
  v2 = type metadata accessor for Locale.Language();
  v61 = *(v2 - 8);
  __chkstk_darwin(v2);
  v66 = &v60 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Locale();
  v63 = *(v4 - 8);
  v64 = v4;
  __chkstk_darwin(v4);
  v62 = &v60 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10022C350(&qword_100CA3DD8);
  __chkstk_darwin(v6 - 8);
  v8 = &v60 - v7;
  v9 = type metadata accessor for ContentSizeCategory();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v68 = &v60 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v67 = &v60 - v13;
  v14 = type metadata accessor for EnvironmentValues();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v60 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(v0 + 16);
  LODWORD(v16) = *(v1 + 24);
  v65 = v8;
  if (v16 == 1)
  {
    if ((v18 & 1) == 0)
    {
      goto LABEL_62;
    }
  }

  else
  {

    static os_log_type_t.fault.getter();
    v19 = static Log.runtimeIssuesLog.getter();
    v60 = v10;
    v20 = v17;
    v21 = v2;
    v22 = v1;
    v23 = v15;
    v24 = v14;
    v25 = v19;
    os_log(_:dso:log:_:_:)();

    v14 = v24;
    v15 = v23;
    v1 = v22;
    v2 = v21;
    v17 = v20;
    v10 = v60;
    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000EBD74(v18, 0);
    (*(v15 + 8))(v20, v14);
    if (v71 != 1)
    {
      goto LABEL_62;
    }
  }

  v26 = type metadata accessor for LocationHeaderView(0);
  v27 = v67;
  sub_10009ECC8();
  v28 = v68;
  (*(v10 + 32))(v68, v27, v9);
  v29 = (*(v10 + 88))(v28, v9);
  if (v29 != enum case for ContentSizeCategory.extraSmall(_:) && v29 != enum case for ContentSizeCategory.small(_:) && v29 != enum case for ContentSizeCategory.medium(_:) && v29 != enum case for ContentSizeCategory.large(_:) && v29 != enum case for ContentSizeCategory.extraLarge(_:) && v29 != enum case for ContentSizeCategory.extraExtraLarge(_:) && v29 != enum case for ContentSizeCategory.extraExtraExtraLarge(_:))
  {
    if (v29 == enum case for ContentSizeCategory.accessibilityMedium(_:) || v29 == enum case for ContentSizeCategory.accessibilityLarge(_:) || v29 == enum case for ContentSizeCategory.accessibilityExtraLarge(_:) || v29 == enum case for ContentSizeCategory.accessibilityExtraExtraLarge(_:) || v29 == enum case for ContentSizeCategory.accessibilityExtraExtraExtraLarge(_:))
    {
      goto LABEL_62;
    }

    (*(v10 + 8))(v28, v9);
  }

  v40 = v1 + *(v26 + 32);
  v41 = *v40;
  if (*(v40 + 8) != 1)
  {

    static os_log_type_t.fault.getter();
    v42 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000EBD74(v41, 0);
    (*(v15 + 8))(v17, v14);
    if ((v70 & 1) == 0)
    {
      goto LABEL_42;
    }

LABEL_62:
    v58 = 0;
    return v58 & 1;
  }

  if (v41)
  {
    goto LABEL_62;
  }

LABEL_42:
  v43 = v62;
  static Locale.current.getter();
  v44 = v66;
  Locale.language.getter();
  (*(v63 + 8))(v43, v64);
  v45 = v65;
  Locale.Language.languageCode.getter();
  (*(v61 + 8))(v44, v2);
  v46 = type metadata accessor for Locale.LanguageCode();
  if (sub_100024D10(v45, 1, v46) == 1)
  {
    sub_10003FDA0(v45, &qword_100CA3DD8);
    v47 = 0;
    v48 = 0;
  }

  else
  {
    v49 = Locale.LanguageCode.identifier.getter();
    v50 = v45;
    v47 = v49;
    v48 = v51;
    (*(*(v46 - 8) + 8))(v50, v46);
  }

  v52 = *v1;
  if (*(v1 + 8) == 1)
  {
    if ((v52 & 1) == 0)
    {
LABEL_47:

LABEL_60:
      v58 = 1;
      return v58 & 1;
    }
  }

  else
  {

    static os_log_type_t.fault.getter();
    v53 = v14;
    v54 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000EBD74(v52, 0);
    (*(v15 + 8))(v17, v53);
    if (v69 != 1)
    {
      goto LABEL_47;
    }
  }

  if (!v48)
  {
    goto LABEL_60;
  }

  v55 = v47 == 29281 && v48 == 0xE200000000000000;
  if (v55 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || (v47 == 26984 ? (v56 = v48 == 0xE200000000000000) : (v56 = 0), v56))
  {

    goto LABEL_62;
  }

  v57 = _stringCompareWithSmolCheck(_:_:expecting:)();

  v58 = v57 ^ 1;
  return v58 & 1;
}

uint64_t sub_10015751C()
{
  v1 = v0;
  v2 = type metadata accessor for DisplayMetrics();
  __chkstk_darwin(v2 - 8);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for EnvironmentValues();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for LocationHeaderView(0);
  v10 = v1 + v9[12];
  v11 = *v10;
  v12 = *(v10 + 8);
  v13 = *(v10 + 16);
  v14 = *(v10 + 24);
  v15 = *(v10 + 32);
  if (*(v1 + v9[14] + 130) == 1)
  {
    if (!v15)
    {
      v30 = v13;

      static os_log_type_t.fault.getter();
      v16 = static Log.runtimeIssuesLog.getter();
      v31 = v5;
      v17 = v16;
      os_log(_:dso:log:_:_:)();

      EnvironmentValues.init()();
      swift_getAtKeyPath();
      sub_100109A48(v11, v12, v30, v14, 0);
      (*(v6 + 8))(v8, v31);
    }
  }

  else
  {
    if (!v15)
    {
      v30 = v13;

      static os_log_type_t.fault.getter();
      v31 = v12;
      v18 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      EnvironmentValues.init()();
      swift_getAtKeyPath();
      sub_100109A48(v11, v31, v30, v14, 0);
      (*(v6 + 8))(v8, v5);
    }

    v19 = v1 + v9[13];
    v20 = *(v19 + 16);
    if (*(v19 + 48) != 1)
    {
      v31 = v5;
      v22 = *v19;
      v21 = *(v19 + 8);
      v23 = *(v19 + 32);
      v29 = *(v19 + 24);
      v30 = v21;
      v28 = v23;
      v24 = *(v19 + 40);

      static os_log_type_t.fault.getter();
      v25 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      EnvironmentValues.init()();
      swift_getAtKeyPath();
      sub_100109A54(v22, v30, v20, v29, v28, v24, 0);
      (*(v6 + 8))(v8, v31);
    }
  }

  sub_1000FC9C8();
  v26 = *(v4 + 1);
  sub_1000DFD78(v4, type metadata accessor for DisplayMetrics);
  if (v26 == 1)
  {
    sub_1001494E4();
  }

  result = static Solarium.isEnabled.getter();
  if (result)
  {
    sub_1000FC9C8();
    return sub_1000DFD78(v4, type metadata accessor for DisplayMetrics);
  }

  return result;
}

uint64_t sub_100157928@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, int a8@<W7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v108 = a8;
  v109 = a4;
  v107 = a7;
  v112 = a5;
  v113 = a6;
  v110 = a2;
  v111 = a3;
  v117 = a9;
  v100 = sub_10022C350(&qword_100CA3E40);
  __chkstk_darwin(v100);
  v91 = (&v91 - v13);
  v101 = sub_10022C350(&qword_100CA3E48);
  __chkstk_darwin(v101);
  v103 = &v91 - v14;
  v102 = sub_10022C350(&qword_100CA3E50);
  __chkstk_darwin(v102);
  v92 = (&v91 - v15);
  v115 = sub_10022C350(&qword_100CA3E58);
  __chkstk_darwin(v115);
  v118 = &v91 - v16;
  v17 = sub_10022C350(&qword_100CA3E60);
  __chkstk_darwin(v17 - 8);
  v116 = &v91 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v91 - v20;
  v22 = sub_10022C350(&qword_100CA3E68);
  __chkstk_darwin(v22);
  v104 = &v91 - v23;
  v24 = sub_10022C350(&qword_100CA3E70);
  __chkstk_darwin(v24 - 8);
  v26 = &v91 - v25;
  v27 = sub_10022C350(&qword_100CA3E78);
  __chkstk_darwin(v27);
  v106 = &v91 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v105 = &v91 - v30;
  v95 = type metadata accessor for EnvironmentValues();
  v94 = *(v95 - 8);
  __chkstk_darwin(v95);
  v93 = &v91 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_10022C350(&qword_100CA3E80);
  __chkstk_darwin(v32 - 8);
  v114 = &v91 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v34);
  v36 = &v91 - v35;
  v37 = type metadata accessor for LocationHeaderView(0);
  v38 = v37;
  v98 = *(a1 + *(v37 + 56) + 130);
  if ((v98 & 1) == 0)
  {
    v52 = a1 + *(v37 + 44);
    v53 = *v52;
    if (*(v52 + 8) == 1)
    {
      if ((v53 & 1) == 0)
      {
        goto LABEL_2;
      }
    }

    else
    {

      static os_log_type_t.fault.getter();
      v54 = v27;
      v55 = v38;
      v56 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      v38 = v55;
      v57 = v93;
      EnvironmentValues.init()();
      swift_getAtKeyPath();
      sub_1000EBD74(v53, 0);
      v58 = v57;
      v27 = v54;
      (*(v94 + 8))(v58, v95);
      if ((v120 & 1) == 0)
      {
        goto LABEL_2;
      }
    }

    v51 = 1;
    goto LABEL_11;
  }

LABEL_2:
  v97 = v38;
  v99 = v36;
  v96 = a12;
  v39 = v104;
  sub_100158570(a1);
  v40 = sub_100158804();
  v41 = v39 + *(v22 + 36);
  *v41 = 0;
  *(v41 + 8) = v40;
  sub_10015751C();
  v43 = v42;
  *v26 = static HorizontalAlignment.center.getter();
  *(v26 + 1) = 0;
  v26[16] = 0;
  v44 = sub_10022C350(&qword_100CA3E88);
  v36 = v99;
  sub_100158888(a1, v110, v111, v109 & 1, v112, v39, v113, v107, &v26[*(v44 + 44)], v43, v108 & 1, a10);
  v45 = v39;
  v38 = v97;
  sub_10003FDA0(v45, &qword_100CA3E68);
  if (*(a1 + *(v38 + 68) + 24))
  {
    v46 = -14.0;
  }

  else
  {
    v46 = -12.0;
  }

  v47 = v106;
  sub_10011C0F0(v26, v106, &qword_100CA3E70);
  v48 = v47 + *(v27 + 36);
  *v48 = 0;
  *(v48 + 8) = v46;
  v49 = v47;
  v50 = v105;
  sub_10011C0F0(v49, v105, &qword_100CA3E78);
  sub_10011C0F0(v50, v36, &qword_100CA3E78);
  v51 = 0;
LABEL_11:
  sub_10001B350(v36, v51, 1, v27);
  if ((sub_100156D84() & 1) == 0)
  {
    if ((v98 & 1) == 0)
    {
      v87 = a1 + *(v38 + 44);
      v88 = *v87;
      if (*(v87 + 8) == 1)
      {
        if (v88)
        {
          goto LABEL_12;
        }
      }

      else
      {

        static os_log_type_t.fault.getter();
        v89 = static Log.runtimeIssuesLog.getter();
        os_log(_:dso:log:_:_:)();

        v90 = v93;
        EnvironmentValues.init()();
        swift_getAtKeyPath();
        sub_1000EBD74(v88, 0);
        (*(v94 + 8))(v90, v95);
        if (v119 == 1)
        {
          goto LABEL_12;
        }
      }
    }

    v75 = 1;
    goto LABEL_18;
  }

LABEL_12:
  v59 = sub_100156C00();
  v60 = static VerticalAlignment.center.getter();
  if (v59)
  {
    v61 = v92;
    *v92 = v60;
    *(v61 + 8) = 0x4024000000000000;
    *(v61 + 16) = 0;
    v62 = sub_10022C350(&qword_100CA3E98);
    sub_10023BE88(a1, (v61 + *(v62 + 44)));
    v63 = static HierarchicalShapeStyle.secondary.getter();
    *(v61 + *(sub_10022C350(&qword_100CA3EA0) + 36)) = v63;
    v64 = *(v100 + 36);
    v65 = enum case for BlendMode.plusLighter(_:);
    v66 = type metadata accessor for BlendMode();
    (*(*(v66 - 8) + 104))(v61 + v64, v65, v66);
    LOBYTE(v65) = sub_100156C00();
    sub_10015751C();
    v68 = v67 + sub_100156774() + 0.0;
    v69 = v61 + *(v102 + 36);
    type metadata accessor for LocationHeaderViewFrameCoordinator(0);
    sub_100151E08(&qword_100CA3D80, type metadata accessor for LocationHeaderViewFrameCoordinator);
    *v69 = Environment.init<A>(_:)();
    *(v69 + 8) = v70 & 1;
    v71 = type metadata accessor for ConditionSummaryModifier(0);
    v72 = v71[5];
    *(v69 + v72) = swift_getKeyPath();
    sub_10022C350(&qword_100CA3DB0);
    swift_storeEnumTagMultiPayload();
    *(v69 + v71[6]) = v65 & 1;
    *(v69 + v71[7]) = v68;
    *(v69 + v71[8]) = 0x3FE999999999999ALL;
    *(v69 + v71[9]) = 0x3FF0000000000000;
    v73 = &qword_100CA3E50;
    sub_1000302D8(v61, v103, &qword_100CA3E50);
    swift_storeEnumTagMultiPayload();
    sub_10023E4C4();
    sub_10023E580();
    _ConditionalContent<>.init(storage:)();
    v74 = v61;
  }

  else
  {
    v76 = v91;
    *v91 = v60;
    *(v76 + 8) = 0x4024000000000000;
    *(v76 + 16) = 0;
    v77 = sub_10022C350(&qword_100CA3E98);
    sub_10023BE88(a1, (v76 + *(v77 + 44)));
    v78 = static HierarchicalShapeStyle.secondary.getter();
    *(v76 + *(sub_10022C350(&qword_100CA3EA0) + 36)) = v78;
    v79 = *(v100 + 36);
    v80 = enum case for BlendMode.plusLighter(_:);
    v81 = type metadata accessor for BlendMode();
    (*(*(v81 - 8) + 104))(v76 + v79, v80, v81);
    v73 = &qword_100CA3E40;
    sub_1000302D8(v76, v103, &qword_100CA3E40);
    swift_storeEnumTagMultiPayload();
    sub_10023E4C4();
    sub_10023E580();
    _ConditionalContent<>.init(storage:)();
    v74 = v76;
  }

  sub_10003FDA0(v74, v73);
  sub_10011C0F0(v118, v21, &qword_100CA3E58);
  v75 = 0;
LABEL_18:
  sub_10001B350(v21, v75, 1, v115);
  v82 = v114;
  sub_1000302D8(v36, v114, &qword_100CA3E80);
  v83 = v116;
  sub_1000302D8(v21, v116, &qword_100CA3E60);
  v84 = v117;
  sub_1000302D8(v82, v117, &qword_100CA3E80);
  v85 = sub_10022C350(&qword_100CA3E90);
  sub_1000302D8(v83, v84 + *(v85 + 48), &qword_100CA3E60);
  sub_10003FDA0(v21, &qword_100CA3E60);
  sub_10003FDA0(v36, &qword_100CA3E80);
  sub_10003FDA0(v83, &qword_100CA3E60);
  return sub_10003FDA0(v82, &qword_100CA3E80);
}

uint64_t sub_100158570(uint64_t a1)
{
  v2 = sub_10022C350(&qword_100CA4028);
  __chkstk_darwin(v2);
  v4 = &v13 - v3;
  v5 = type metadata accessor for TemperatureHighLowTextVertical();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + *(type metadata accessor for LocationHeaderView(0) + 56) + 128) == 1)
  {

    TemperatureHighLowTextVertical.init(highTemperature:lowTemperature:showNumericOnlyHighLow:scaleFactor:additionalSpacing:)();
    (*(v6 + 16))(v4, v8, v5);
    swift_storeEnumTagMultiPayload();
    sub_100151E08(&qword_100CA3FE8, &type metadata accessor for TemperatureHighLowTextVertical);
    _ConditionalContent<>.init(storage:)();
    return (*(v6 + 8))(v8, v5);
  }

  else
  {
    *v4 = sub_100153A64();
    *(v4 + 1) = v10;
    v4[16] = v11 & 1;
    *(v4 + 3) = v12;
    swift_storeEnumTagMultiPayload();
    sub_100151E08(&qword_100CA3FE8, &type metadata accessor for TemperatureHighLowTextVertical);
    return _ConditionalContent<>.init(storage:)();
  }
}

double sub_100158804()
{
  v1 = type metadata accessor for LocationHeaderView(0);
  result = -10.0;
  if (*(v0 + *(v1 + 56) + 128) == 1)
  {
    v3 = [objc_opt_self() currentDevice];
    v4 = [v3 userInterfaceIdiom];

    result = -23.0;
    if (v4 == 1)
    {
      return -20.0;
    }
  }

  return result;
}

uint64_t sub_100158888@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, double a10@<D0>, unsigned __int8 a11, uint64_t a12)
{
  v123 = a8;
  v122 = a7;
  v121 = a6;
  v141 = a5;
  v13 = a4;
  v116 = a4;
  v115 = a3;
  v114 = a2;
  v134 = a9;
  v136 = a12;
  v135 = a11;
  v133 = sub_10022C350(&qword_100CA3EF8);
  __chkstk_darwin(v133);
  v113 = &v112 - v17;
  v128 = sub_10022C350(&qword_100CA3F00);
  __chkstk_darwin(v128);
  v131 = &v112 - v18;
  v130 = sub_10022C350(&qword_100CA3F08);
  __chkstk_darwin(v130);
  v112 = &v112 - v19;
  v120 = sub_10022C350(&qword_100CA3F10);
  __chkstk_darwin(v120);
  v127 = &v112 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v138 = &v112 - v22;
  v23 = sub_10022C350(&qword_100CA3F18);
  __chkstk_darwin(v23 - 8);
  v125 = &v112 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v137 = &v112 - v26;
  v27 = sub_10022C350(&qword_100CA3F20);
  __chkstk_darwin(v27 - 8);
  v132 = &v112 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v129 = &v112 - v30;
  v31 = sub_10022C350(&qword_100CA3D60);
  __chkstk_darwin(v31 - 8);
  v142 = &v112 - v32;
  v33 = sub_10022C350(&qword_100CA3D68);
  __chkstk_darwin(v33 - 8);
  v139 = &v112 - v34;
  v35 = type metadata accessor for Text.Measurements.Context();
  v36 = *(v35 - 8);
  v143 = v35;
  v144 = v36;
  __chkstk_darwin(v35);
  v140 = &v112 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = type metadata accessor for TemperatureModifier(0);
  v39 = (v38 - 8);
  __chkstk_darwin(v38);
  v41 = &v112 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_10022C350(&qword_100CA3F28);
  __chkstk_darwin(v42 - 8);
  v44 = &v112 - v43;
  v45 = sub_10022C350(&qword_100CA3F30);
  __chkstk_darwin(v45);
  v47 = &v112 - v46;
  v48 = sub_10022C350(&qword_100CA3F38);
  __chkstk_darwin(v48 - 8);
  v126 = &v112 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v50);
  v52 = &v112 - v51;
  sub_10023B9F4(a2, a3, v13 & 1, v141, v44);
  v53 = sub_100156C00();
  v54 = sub_100156774();
  v55 = type metadata accessor for LocationHeaderView(0);
  v56 = v54 + a10;
  if (*(a1 + v55[17] + 24))
  {
    v57 = -14.0;
  }

  else
  {
    v57 = -12.0;
  }

  v58 = v56 + v57;
  v59 = type metadata accessor for LocationHeaderViewFrameCoordinator(0);
  v60 = sub_100151E08(&qword_100CA3D80, type metadata accessor for LocationHeaderViewFrameCoordinator);
  v118 = v59;
  v117 = v60;
  *v41 = Environment.init<A>(_:)();
  v41[8] = v61 & 1;
  v62 = v39[7];
  *&v41[v62] = swift_getKeyPath();
  v119 = sub_10022C350(&qword_100CA3DB0);
  swift_storeEnumTagMultiPayload();
  v41[v39[8]] = v53 & 1;
  *&v41[v39[9]] = v58;
  *&v41[v39[10]] = 0x3FE3333333333333;
  *&v41[v39[11]] = 0x3FE999999999999ALL;
  sub_10011C0F0(v44, v47, &qword_100CA3F28);
  sub_1001540E8(v41, &v47[*(v45 + 36)], type metadata accessor for TemperatureModifier);
  sub_10023E710();
  v124 = v52;
  v63 = a1;
  View.accessibilityIdentifier(_:)();
  sub_10003FDA0(v47, &qword_100CA3F30);
  v64 = v57 + sub_100156774() + a10;
  v65 = a1 + v55[19];
  v66 = type metadata accessor for Text.WritingMode();
  sub_10001B350(v139, 1, 1, v66);
  v67 = type metadata accessor for Text.Suffix();
  sub_10001B350(v142, 1, 1, v67);
  v68 = v140;
  Text.Measurements.Context.init(writingMode:textSuffix:)();
  v141 = v65;
  Text.Measurements.size(of:in:context:)();
  v70 = v69;
  v71 = *(v144 + 8);
  v144 += 8;
  v71(v68, v143);
  v72 = v64 + v70;
  if (*(v63 + v55[14] + 128) == 1)
  {
    sub_100159F24(v121, 1, v137, v72);
    sub_10001B350(v139, 1, 1, v66);
    sub_10001B350(v142, 1, 1, v67);
    v73 = v140;
    Text.Measurements.Context.init(writingMode:textSuffix:)();
    Text.Measurements.size(of:in:context:)();
    v75 = v74;
    v71(v73, v143);
    v76 = v138;
    sub_100159AD8(v138);
    v77 = sub_100156C00();
    v78 = v76 + *(v120 + 36);
    *v78 = Environment.init<A>(_:)();
    *(v78 + 8) = v79 & 1;
    v80 = type metadata accessor for ConditionModifier(0);
    v81 = v80[5];
    *(v78 + v81) = swift_getKeyPath();
    swift_storeEnumTagMultiPayload();
    *(v78 + v80[6]) = v77 & 1;
    *(v78 + v80[7]) = v72 + v75;
    *(v78 + v80[8]) = 0x3FC999999999999ALL;
    *(v78 + v80[9]) = 0x3FD999999999999ALL;
    v82 = v137;
    v83 = v125;
    sub_1000302D8(v137, v125, &qword_100CA3F18);
    v84 = v127;
    sub_1000302D8(v76, v127, &qword_100CA3F10);
    v85 = v112;
    sub_1000302D8(v83, v112, &qword_100CA3F18);
    v86 = sub_10022C350(&qword_100CA3F98);
    v87 = v85 + *(v86 + 48);
    *v87 = 0x4024000000000000;
    *(v87 + 8) = 0;
    sub_1000302D8(v84, v85 + *(v86 + 64), &qword_100CA3F10);
    sub_10003FDA0(v84, &qword_100CA3F10);
    sub_10003FDA0(v83, &qword_100CA3F18);
    sub_1000302D8(v85, v131, &qword_100CA3F08);
    swift_storeEnumTagMultiPayload();
    sub_10023FBF4(&qword_100CA3F80, &qword_100CA3F08);
    sub_10023FBF4(&qword_100CA3F88, &qword_100CA3EF8);
    v88 = v129;
    _ConditionalContent<>.init(storage:)();
    sub_10003FDA0(v85, &qword_100CA3F08);
    sub_10003FDA0(v76, &qword_100CA3F10);
    v89 = v82;
    v90 = &qword_100CA3F18;
  }

  else
  {
    v91 = v138;
    sub_100159AD8(v138);
    v92 = sub_100156C00();
    v93 = v91 + *(v120 + 36);
    *v93 = Environment.init<A>(_:)();
    *(v93 + 8) = v94 & 1;
    v95 = type metadata accessor for ConditionModifier(0);
    v96 = v95[5];
    *(v93 + v96) = swift_getKeyPath();
    swift_storeEnumTagMultiPayload();
    *(v93 + v95[6]) = v92 & 1;
    *(v93 + v95[7]) = v72;
    *(v93 + v95[8]) = 0x3FD999999999999ALL;
    *(v93 + v95[9]) = 0x3FE3333333333333;
    sub_10001B350(v139, 1, 1, v66);
    sub_10001B350(v142, 1, 1, v67);
    v97 = v140;
    Text.Measurements.Context.init(writingMode:textSuffix:)();
    Text.Measurements.size(of:in:context:)();
    v99 = v98;
    v71(v97, v143);
    v100 = v137;
    sub_100159F24(v121, 0, v137, v72 + v99);
    v101 = v138;
    v102 = v127;
    sub_1000302D8(v138, v127, &qword_100CA3F10);
    v103 = v125;
    sub_1000302D8(v100, v125, &qword_100CA3F18);
    v104 = v113;
    sub_1000302D8(v102, v113, &qword_100CA3F10);
    v105 = sub_10022C350(&qword_100CA3F78);
    sub_1000302D8(v103, v104 + *(v105 + 48), &qword_100CA3F18);
    sub_10003FDA0(v103, &qword_100CA3F18);
    sub_10003FDA0(v102, &qword_100CA3F10);
    sub_1000302D8(v104, v131, &qword_100CA3EF8);
    swift_storeEnumTagMultiPayload();
    sub_10023FBF4(&qword_100CA3F80, &qword_100CA3F08);
    sub_10023FBF4(&qword_100CA3F88, &qword_100CA3EF8);
    v88 = v129;
    _ConditionalContent<>.init(storage:)();
    sub_10003FDA0(v104, &qword_100CA3EF8);
    sub_10003FDA0(v100, &qword_100CA3F18);
    v89 = v101;
    v90 = &qword_100CA3F10;
  }

  sub_10003FDA0(v89, v90);
  v106 = v124;
  v107 = v126;
  sub_1000302D8(v124, v126, &qword_100CA3F38);
  v108 = v132;
  sub_1000302D8(v88, v132, &qword_100CA3F20);
  v109 = v134;
  sub_1000302D8(v107, v134, &qword_100CA3F38);
  v110 = sub_10022C350(&qword_100CA3F90);
  sub_1000302D8(v108, v109 + *(v110 + 48), &qword_100CA3F20);
  sub_10003FDA0(v88, &qword_100CA3F20);
  sub_10003FDA0(v106, &qword_100CA3F38);
  sub_10003FDA0(v108, &qword_100CA3F20);
  return sub_10003FDA0(v107, &qword_100CA3F38);
}

double sub_100159880()
{
  v1 = v0;
  v2 = type metadata accessor for EnvironmentValues();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v19[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = type metadata accessor for LayoutDirection();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v19[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = v0 + *(type metadata accessor for LocationHeaderView(0) + 56);
  v11 = 0.0;
  v12 = *(v10 + 8) == 11565 && *(v10 + 9) == 0xE200000000000000;
  if (!v12 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    sub_10023AF44(v9);
    LayoutDirection.temperatureOffsetDirection.getter();
    v14 = v13;
    (*(v7 + 8))(v9, v6);
    v15 = *v0;
    if (*(v1 + 8) != 1)
    {

      static os_log_type_t.fault.getter();
      v16 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      EnvironmentValues.init()();
      swift_getAtKeyPath();
      sub_1000EBD74(v15, 0);
      (*(v3 + 8))(v5, v2);
      LOBYTE(v15) = v19[15];
    }

    v17 = 12.0;
    if (v15)
    {
      v17 = 6.0;
    }

    return v14 * v17;
  }

  return v11;
}

uint64_t sub_100159AD8@<X0>(uint64_t a1@<X8>)
{
  v28 = a1;
  v27 = sub_10022C350(&qword_100CA3FF0);
  __chkstk_darwin(v27);
  v2 = &v25 - v1;
  v3 = sub_10022C350(&qword_100CA3FF8);
  __chkstk_darwin(v3 - 8);
  v26 = &v25 - v4;
  static Color.black.getter();
  Color.opacity(_:)();

  v5 = Text.shadow(color:radius:x:y:)();
  v7 = v6;
  v9 = v8;

  v29 = static HierarchicalShapeStyle.secondary.getter();
  v10 = Text.foregroundStyle<A>(_:)();
  v12 = v11;
  v14 = v13;
  v16 = v15;
  sub_10010CD64(v5, v7, v9 & 1);

  v17 = *(sub_10022C350(&qword_100CA4000) + 36);
  v18 = enum case for BlendMode.plusLighter(_:);
  v19 = type metadata accessor for BlendMode();
  (*(*(v19 - 8) + 104))(&v2[v17], v18, v19);
  *v2 = v10;
  *(v2 + 1) = v12;
  v2[16] = v14 & 1;
  *(v2 + 3) = v16;
  v20 = sub_100159DF4();
  v21 = &v2[*(v27 + 36)];
  *v21 = 0;
  *(v21 + 1) = v20;
  type metadata accessor for LocationHeaderView(0);
  sub_100159E78();
  v22 = v26;
  View.accessibilityIdentifier(_:)();

  sub_10003FDA0(v2, &qword_100CA3FF0);
  v23 = v28;
  sub_10011C0F0(v22, v28, &qword_100CA3FF8);
  result = sub_10022C350(&qword_100CA4018);
  *(v23 + *(result + 36)) = 257;
  return result;
}

double sub_100159DF4()
{
  v1 = type metadata accessor for LocationHeaderView(0);
  result = -10.0;
  if (*(v0 + *(v1 + 56) + 128) == 1)
  {
    v3 = [objc_opt_self() currentDevice];
    v4 = [v3 userInterfaceIdiom];

    result = -24.0;
    if (v4 == 1)
    {
      return -12.0;
    }
  }

  return result;
}

unint64_t sub_100159E78()
{
  result = qword_100CA4008;
  if (!qword_100CA4008)
  {
    sub_10022E824(&qword_100CA3FF0);
    sub_10023EBBC(&qword_100CA4010, &qword_100CA4000);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CA4008);
  }

  return result;
}

uint64_t sub_100159F24@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>, double a4@<D0>)
{
  v5 = v4;
  v35 = a2;
  v9 = type metadata accessor for HighLowModifier(0);
  __chkstk_darwin(v9);
  v11 = &v34[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = sub_10022C350(&qword_100CA3FA0);
  __chkstk_darwin(v12);
  v14 = &v34[-v13];
  v15 = sub_10022C350(&qword_100CA3FA8);
  __chkstk_darwin(v15 - 8);
  v17 = &v34[-v16];
  v18 = sub_10022C350(&qword_100CA3FB0);
  __chkstk_darwin(v18);
  v20 = &v34[-v19];
  v21 = (v5 + *(type metadata accessor for LocationHeaderView(0) + 56));
  v22 = v21[13];
  v23 = v21[12] & 0xFFFFFFFFFFFFLL;
  if ((v22 & 0x2000000000000000) != 0)
  {
    v23 = HIBYTE(v22) & 0xF;
  }

  if (v23 && ((v25 = v21[14], v24 = v21[15], v26 = v25 & 0xFFFFFFFFFFFFLL, (v24 & 0x2000000000000000) != 0) ? (v27 = HIBYTE(v24) & 0xF) : (v27 = v26), v27))
  {
    sub_1000302D8(a1, v14, &qword_100CA3E68);
    *&v14[*(v12 + 36)] = xmmword_100A2DC30;
    sub_10023E964();
    View.accessibilityIdentifier(_:)();
    sub_10003FDA0(v14, &qword_100CA3FA0);
    v28 = sub_100156C00();
    if (v35)
    {
      v29 = 0.6;
    }

    else
    {
      v29 = 0.4;
    }

    if (v35)
    {
      v30 = 0.4;
    }

    else
    {
      v30 = 0.2;
    }

    type metadata accessor for LocationHeaderViewFrameCoordinator(0);
    sub_100151E08(&qword_100CA3D80, type metadata accessor for LocationHeaderViewFrameCoordinator);
    *v11 = Environment.init<A>(_:)();
    v11[8] = v31 & 1;
    v32 = v9[5];
    *&v11[v32] = swift_getKeyPath();
    sub_10022C350(&qword_100CA3DB0);
    swift_storeEnumTagMultiPayload();
    v11[v9[6]] = v28 & 1;
    *&v11[v9[7]] = a4;
    *&v11[v9[8]] = v30;
    *&v11[v9[9]] = v29;
    sub_10011C0F0(v17, v20, &qword_100CA3FA8);
    sub_1001540E8(v11, &v20[*(v18 + 36)], type metadata accessor for HighLowModifier);
    sub_10011C0F0(v20, a3, &qword_100CA3FB0);
    return sub_10001B350(a3, 0, 1, v18);
  }

  else
  {

    return sub_10001B350(a3, 1, 1, v18);
  }
}

uint64_t sub_10015A33C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for AutomationInfo(0);
    v9 = a1 + *(a3 + 24);

    return sub_100024D10(v9, a2, v8);
  }
}

uint64_t sub_10015A3D8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AutomationInfoProperty();

  return sub_100024D10(a1, a2, v4);
}

uint64_t sub_10015A420(uint64_t *a1, char a2)
{
  v4 = [objc_opt_self() currentDevice];
  v5 = [v4 userInterfaceIdiom];

  if (v5 == 5)
  {
    if (a2)
    {
      *&result = 22.0;
    }

    else
    {
      *&result = 40.0;
    }
  }

  else if (v5 == 1)
  {
    if (sub_1004CF4D0(*a1))
    {
      v6 = 94.0;
      if (a2)
      {
        v6 = 80.0;
      }

      v7 = a1[1];
      v8 = 0.0;
      if (v7 <= 2)
      {
        v8 = dbl_100A57C10[v7];
      }

      *&result = v6 + v8;
    }

    else if (a1[1] == 1)
    {
      *&result = 20.0;
    }

    else
    {
      *&result = 64.0;
    }
  }

  else
  {
    *&result = 0.0;
  }

  return result;
}

unint64_t sub_10015A530()
{
  result = qword_100CA3DA0;
  if (!qword_100CA3DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CA3DA0);
  }

  return result;
}

uint64_t sub_10015A5A8()
{
  v1 = type metadata accessor for EnvironmentValues();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v14[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_100156D84();
  v6 = type metadata accessor for LocationHeaderView(0);
  if (v5)
  {
    if (*(v0 + *(v6 + 56) + 130))
    {
      return 1;
    }

    v8 = v0 + *(v6 + 44);
    v9 = *v8;
    if (*(v8 + 8) == 1)
    {
      if ((v9 & 1) == 0)
      {
        return 1;
      }
    }

    else
    {

      static os_log_type_t.fault.getter();
      v12 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      EnvironmentValues.init()();
      swift_getAtKeyPath();
      sub_1000EBD74(v9, 0);
      (*(v2 + 8))(v4, v1);
      if ((v14[14] & 1) == 0)
      {
        return 1;
      }
    }

    return 0;
  }

  if (*(v0 + *(v6 + 56) + 130))
  {
    return sub_10023B6F8();
  }

  v10 = v0 + *(v6 + 44);
  v11 = *v10;
  if (*(v10 + 8) == 1)
  {
    if ((v11 & 1) == 0)
    {
      return sub_10023B6F8();
    }
  }

  else
  {

    static os_log_type_t.fault.getter();
    v13 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000EBD74(v11, 0);
    (*(v2 + 8))(v4, v1);
    if ((v14[15] & 1) == 0)
    {
      return sub_10023B6F8();
    }
  }

  return 0;
}

void sub_10015A7FC(uint64_t a1, uint64_t a2, int a3, void (*a4)(char *, uint64_t), uint64_t a5, uint64_t a6, int a7, uint64_t a8, uint64_t a9, uint64_t a10, unsigned __int8 a11, uint64_t a12)
{
  v13 = v12;
  v58 = a7;
  v61 = a5;
  v62 = a6;
  v56 = a2;
  v57 = a4;
  v54 = a3;
  v55 = a1;
  v15 = type metadata accessor for DisplayMetrics();
  __chkstk_darwin(v15 - 8);
  v17 = (&v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = sub_10022C350(&qword_100CA3D60);
  __chkstk_darwin(v18 - 8);
  v20 = &v46 - v19;
  v21 = sub_10022C350(&qword_100CA3D68);
  __chkstk_darwin(v21 - 8);
  v23 = &v46 - v22;
  v24 = type metadata accessor for Text.Measurements.Context();
  v59 = *(v24 - 8);
  v60 = v24;
  __chkstk_darwin(v24);
  v26 = &v46 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for EnvironmentValues();
  v28 = *(v27 - 8);
  __chkstk_darwin(v27);
  v30 = &v46 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10015AE2C();
  if (v31)
  {
    v52 = v17;
    v32 = type metadata accessor for LocationHeaderView(0);
    v33 = v32;
    v34 = *(v12 + *(v32 + 56) + 130);
    v53 = a8;
    if (v34)
    {
LABEL_3:
      v51 = a12;
      v48 = a11;
      v50 = a10;
      v49 = a9;
      sub_100156774();
      v35 = type metadata accessor for Text.WritingMode();
      v47 = v35;
      sub_10001B350(v23, 1, 1, v35);
      v36 = type metadata accessor for Text.Suffix();
      sub_10001B350(v20, 1, 1, v36);
      Text.Measurements.Context.init(writingMode:textSuffix:)();
      Text.Measurements.size(of:in:context:)();
      v57 = *(v59 + 8);
      v59 = v33;
      v37 = v60;
      v57(v26, v60);
      sub_10001B350(v23, 1, 1, v35);
      sub_10001B350(v20, 1, 1, v36);
      Text.Measurements.Context.init(writingMode:textSuffix:)();
      Text.Measurements.size(of:in:context:)();
      v38 = v57;
      v57(v26, v37);
      sub_10001B350(v23, 1, 1, v47);
      sub_10001B350(v20, 1, 1, v36);
      Text.Measurements.Context.init(writingMode:textSuffix:)();
      Text.Measurements.size(of:in:context:)();
      v38(v26, v37);
      v39 = v59;
      v40 = v52;
      sub_1000FC9C8();
      sub_10015A420(v40, *(v13 + *(v39 + 68) + 24) != 0);
      sub_1000DFD78(v40, type metadata accessor for DisplayMetrics);
      return;
    }

    v41 = v12 + *(v32 + 44);
    v42 = *v41;
    if (*(v41 + 8) == 1)
    {
      if ((v42 & 1) == 0)
      {
        goto LABEL_3;
      }
    }

    else
    {

      LODWORD(v51) = static os_log_type_t.fault.getter();
      v43 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      EnvironmentValues.init()();
      swift_getAtKeyPath();
      sub_1000EBD74(v42, 0);
      (*(v28 + 8))(v30, v27);
      if (v63 != 1)
      {
        goto LABEL_3;
      }
    }

    sub_100156774();
    v44 = type metadata accessor for Text.WritingMode();
    sub_10001B350(v23, 1, 1, v44);
    v45 = type metadata accessor for Text.Suffix();
    sub_10001B350(v20, 1, 1, v45);
    Text.Measurements.Context.init(writingMode:textSuffix:)();
    Text.Measurements.size(of:in:context:)();
    (*(v59 + 8))(v26, v60);
    sub_100149554();
  }
}

uint64_t sub_10015AE2C()
{
  v1 = type metadata accessor for EnvironmentValues();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [objc_opt_self() currentDevice];
  v6 = [v5 userInterfaceIdiom];

  *&result = 0.0;
  if (v6 != 1)
  {
    v8 = type metadata accessor for LocationHeaderView(0);
    v9 = *(v8 + 52);
    if (*(v0 + *(v8 + 56) + 128))
    {
      v10 = 0.4;
    }

    else
    {
      v10 = 0.36;
    }

    v11 = (v0 + v9);
    v12 = *(v0 + v9 + 8);
    v13 = *(v0 + v9 + 16);
    v14 = *(v0 + v9 + 32);
    if (*(v0 + v9 + 48) == 1)
    {
      v15 = *(v0 + v9 + 8);
      v16 = *(v0 + v9 + 16);
      v17 = *(v0 + v9 + 32);
    }

    else
    {
      v18 = *v11;
      v19 = v11[3];
      v31 = v11[5];
      v32 = v12;
      v28 = v14;
      v33 = v2;
      v20 = v12;

      static os_log_type_t.fault.getter();
      v21 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      EnvironmentValues.init()();
      swift_getAtKeyPath();
      v22 = v20;
      v30 = v19;
      v23 = v28;
      v24 = v31;
      sub_100109A54(v18, v22, v13, v19, v28, v31, 0);
      v29 = *(v33 + 8);
      v33 += 8;
      v29(v4, v1);
      v15 = v34;

      static os_log_type_t.fault.getter();
      v25 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      EnvironmentValues.init()();
      swift_getAtKeyPath();
      sub_100109A54(v18, v32, v13, v19, v23, v24, 0);
      v26 = v29;
      v29(v4, v1);
      v16 = v35;

      static os_log_type_t.fault.getter();
      v27 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      EnvironmentValues.init()();
      swift_getAtKeyPath();
      sub_100109A54(v18, v32, v13, v30, v23, v31, 0);
      v26(v4, v1);
      v17 = v36;
    }

    *&result = v10 * (v16 + v15 + v17);
  }

  return result;
}

uint64_t sub_10015B1AC(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

unint64_t sub_10015B1E8()
{
  result = qword_100CA47E0;
  if (!qword_100CA47E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CA47E0);
  }

  return result;
}

uint64_t sub_10015B264()
{
  sub_100003A00();
  v3 = *(v2 + 32);
  v4 = type metadata accessor for DisplayMetrics();

  return sub_10001B350(v1 + v3, v0, v0, v4);
}

uint64_t sub_10015B2CC()
{
  sub_100003A00();
  v3 = *(v2 + 32);
  v4 = type metadata accessor for DisplayMetrics();

  return sub_100024D10(v1 + v3, v0, v4);
}

uint64_t sub_10015B338()
{
  sub_10022E824(&qword_100CA46B8);
  sub_10022E824(&qword_100CA46D0);
  sub_10022E824(&qword_100CA46D8);
  sub_10022E824(&qword_100CA46C0);
  sub_10022E824(&qword_100CA4680);
  sub_100007EB8();
  sub_10023FBF4(v0, &qword_100CA46C0);
  type metadata accessor for EmptyVisualEffect();
  sub_10004E330();
  sub_100151E08(v1, v2);
  sub_1000495A0();
  sub_100069384();
  sub_10023F554();
  sub_10015B4B0();
  return sub_100017540();
}

unint64_t sub_10015B4B0()
{
  result = qword_100CA46F8;
  if (!qword_100CA46F8)
  {
    sub_10022E824(&qword_100CA46D8);
    sub_10022E824(&qword_100CA46C0);
    sub_10022E824(&qword_100CA4680);
    sub_10023FBF4(&qword_100CA46C8, &qword_100CA46C0);
    type metadata accessor for EmptyVisualEffect();
    sub_100151E08(&qword_100CA4688, &type metadata accessor for EmptyVisualEffect);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_10023FBF4(&qword_100CA4700, &unk_100CA4708);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CA46F8);
  }

  return result;
}

uint64_t sub_10015B6F0()
{
  sub_10022C350(&qword_100CA46A0);
  State.wrappedValue.getter();
  sub_10022C350(&qword_100CA46A8);
  type metadata accessor for LocationHeaderViewFrameCoordinator(0);
  sub_10023FBF4(&qword_100CA46B0, &qword_100CA46A8);
  sub_100151E08(&qword_100CA3D80, type metadata accessor for LocationHeaderViewFrameCoordinator);
  View.environment<A>(_:)();
}

uint64_t sub_10015B818()
{
  sub_10015B860();

  return EnvironmentValues.subscript.getter();
}

unint64_t sub_10015B860()
{
  result = qword_100CA3DD0;
  if (!qword_100CA3DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CA3DD0);
  }

  return result;
}

double sub_10015B8B4@<D0>(_OWORD *a1@<X8>)
{
  v2 = type metadata accessor for LocationHeaderViewMeasurements(0);
  sub_1000336E4(a1 + *(v2 + 32));
  result = 0.0;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

uint64_t sub_10015B8F8(uint64_t a1)
{
  v2 = type metadata accessor for LocationHeaderViewMeasurements(0);
  __chkstk_darwin(v2 - 8);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000A3C14(a1, v4, type metadata accessor for LocationHeaderViewMeasurements);
  return sub_10015B994(v4);
}

uint64_t sub_10015B994(uint64_t a1)
{
  v2 = type metadata accessor for LocationHeaderViewMeasurements(0);
  __chkstk_darwin(v2 - 8);
  sub_1000A3C14(a1, &v5 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for LocationHeaderViewMeasurements);
  sub_10015B860();
  EnvironmentValues.subscript.setter();
  return sub_1000DFD78(a1, type metadata accessor for LocationHeaderViewMeasurements);
}

__n128 sub_10015BA5C(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_10015BA78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for EnvironmentValues();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v2 + 24);
  v33 = *(v2 + 56);
  v10 = *(v2 + 40);
  v31 = v9;
  v32 = v10;
  if (v33 == 1)
  {
    v27 = v32;
    v11 = __PAIR128__(*(&v31 + 1), v9);
  }

  else
  {

    static os_log_type_t.fault.getter();
    v12 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_10003FDA0(&v31, &qword_100CA4640);
    (*(v6 + 8))(v8, v5);
    v27 = v28[1];
    v11 = v28[0];
  }

  v26 = v11;
  v13 = static Alignment.center.getter();
  v15 = v14;
  if (*v2)
  {
    v16 = static Color.clear.getter();
    v17 = swift_allocObject();
    v18 = v27;
    *(v17 + 16) = v26;
    *(v17 + 32) = v18;
    v29 = *(v2 + 8);
    v30 = *(v2 + 16);
    v19 = swift_allocObject();
    v20 = *(v2 + 16);
    v19[1] = *v2;
    v19[2] = v20;
    v19[3] = *(v2 + 32);
    *(v19 + 57) = *(v2 + 41);
    sub_1000302D8(&v31, v28, &qword_100CA4640);
    sub_1000302D8(&v29, v28, &qword_100CA4658);
    v21 = sub_10023F3B0;
    v22 = sub_10023F3A4;
  }

  else
  {
    v16 = 0;
    v22 = 0;
    v17 = 0;
    v21 = 0;
    v19 = 0;
  }

  v23 = sub_10022C350(&qword_100CA4648);
  (*(*(v23 - 8) + 16))(a2, a1, v23);
  result = sub_10022C350(&qword_100CA4650);
  v25 = (a2 + *(result + 36));
  *v25 = v16;
  v25[1] = v22;
  v25[2] = v17;
  v25[3] = v21;
  v25[4] = v19;
  v25[5] = v13;
  v25[6] = v15;
  return result;
}

uint64_t sub_10015BD90()
{

  sub_100109A48(*(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72));

  return swift_deallocObject();
}

unint64_t sub_10015BE3C()
{
  result = qword_100CA47C0;
  if (!qword_100CA47C0)
  {
    sub_10022E824(&qword_100CA4788);
    sub_10022E824(&qword_100CA4778);
    sub_10022E824(&qword_100CA4680);
    sub_10023FBF4(&qword_100CA4780, &qword_100CA4778);
    type metadata accessor for EmptyVisualEffect();
    sub_100151E08(&qword_100CA4688, &type metadata accessor for EmptyVisualEffect);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_10023FBF4(&qword_100CA47C8, &unk_100CA47D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CA47C0);
  }

  return result;
}

uint64_t sub_10015C028(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4)
{
  v6 = sub_100003A24(a1, a2);
  sub_10022E824(v6);
  sub_10022E824(&qword_100CA4670);
  sub_100007EB8();
  sub_10023FBF4(a4, a2);
  sub_10022E824(&qword_100CA4680);
  type metadata accessor for EmptyVisualEffect();
  sub_10004E330();
  sub_100151E08(v7, v8);
  sub_1000495A0();
  sub_100017540();
  return sub_100069384();
}

uint64_t sub_10015C1A0()
{
  sub_10022E824(&qword_100CCB800);
  sub_10022E824(&qword_100CCB818);
  sub_10022E824(&qword_100CCB7F8);
  sub_10022E824(&qword_100CCB808);
  sub_10022E824(&qword_100CADBA0);
  sub_10015C2CC();
  sub_10014F7C8();
  swift_getOpaqueTypeConformance2();
  sub_10013E1CC();
  sub_100010558();
  swift_getOpaqueTypeConformance2();
  sub_10015C358();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_10015C2CC()
{
  result = qword_100CCB810;
  if (!qword_100CCB810)
  {
    sub_10022E824(&qword_100CCB808);
    sub_1000A4F28();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CCB810);
  }

  return result;
}

unint64_t sub_10015C358()
{
  result = qword_100CCB820;
  if (!qword_100CCB820)
  {
    sub_10022E824(&qword_100CCB818);
    sub_10015C3DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CCB820);
  }

  return result;
}

unint64_t sub_10015C3DC()
{
  result = qword_100CCB828;
  if (!qword_100CCB828)
  {
    sub_10022E824(&qword_100CCB7A0);
    sub_100006F64(&qword_100CCB830, &qword_100CBD760);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CCB828);
  }

  return result;
}

uint64_t sub_10015C4D0()
{
  Solarium.init()();
  sub_10022C350(&qword_100CB5B20);
  sub_10014D3D8();
  return View.staticIf<A, B, C>(_:then:else:)();
}

uint64_t sub_10015C5A0()
{
  type metadata accessor for LocationViewObserverViewState();
  result = swift_allocObject();
  *(result + 16) = 0;
  return result;
}

uint64_t sub_10015C5CC@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for LocationViewObserverViewState();
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t sub_10015C60C@<X0>(uint64_t a1@<X8>)
{
  v76 = a1;
  active = type metadata accessor for ActiveLocationModel(0);
  __chkstk_darwin(active - 8);
  v72 = &v56 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = sub_10022C350(&qword_100CADBA0);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v4);
  v71 = &v56 - v5;
  v6 = type metadata accessor for LocationViewObserverView(0);
  v7 = *(v6 - 8);
  v81 = v6 - 8;
  v8 = *(v7 + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = sub_10022C350(&qword_100CADD28);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v10);
  v12 = &v56 - v11;
  sub_10022C350(&qword_100CADD30);
  sub_1000037C4();
  v74 = v13;
  v75 = v14;
  sub_100003828();
  __chkstk_darwin(v15);
  v82 = &v56 - v16;
  v70 = static Color.clear.getter();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v69 = v88;
  v17 = v89;
  v63 = v89;
  v68 = v90;
  v18 = v91;
  v64 = v91;
  v67 = v92;
  v66 = v93;
  v58 = v1;
  sub_100339B38(v1, v9, type metadata accessor for LocationViewObserverView);
  v19 = *(v7 + 80);
  v20 = (v19 + 16) & ~v19;
  v65 = swift_allocObject();
  sub_10015CED4(v9, v65 + v20, type metadata accessor for LocationViewObserverView);
  LOBYTE(v83) = v17;
  v87 = v18;
  v79 = type metadata accessor for LocationViewObserverView;
  sub_100339B38(v1, v9, type metadata accessor for LocationViewObserverView);
  v78 = v19;
  v62 = swift_allocObject();
  v59 = type metadata accessor for LocationViewObserverView;
  sub_10015CED4(v9, v62 + v20, type metadata accessor for LocationViewObserverView);
  v61 = objc_opt_self();
  v21 = [v61 defaultCenter];
  v22 = sub_10022C350(&qword_100CADD38);
  NSNotificationCenter.publisher(for:object:)();

  v23 = v58;
  sub_100339B38(v58, v9, type metadata accessor for LocationViewObserverView);
  v24 = v8;
  v25 = swift_allocObject();
  sub_10015CED4(v9, v25 + v20, type metadata accessor for LocationViewObserverView);
  v26 = v69;
  *v12 = v70;
  *(v12 + 1) = v26;
  v12[16] = v63;
  *(v12 + 3) = v68;
  v12[32] = v64;
  v27 = v66;
  *(v12 + 5) = v67;
  *(v12 + 6) = v27;
  v28 = v65;
  *(v12 + 7) = sub_10016834C;
  *(v12 + 8) = v28;
  *(v12 + 72) = 0u;
  *(v12 + 88) = 0u;
  v29 = v62;
  *(v12 + 13) = sub_10033A300;
  *(v12 + 14) = v29;
  v30 = &v12[*(v22 + 56)];
  *v30 = sub_10033A318;
  v30[1] = v25;
  v31 = [v61 defaultCenter];
  v32 = v80;
  NSNotificationCenter.publisher(for:object:)();

  v33 = v79;
  sub_100339B38(v23, v9, v79);
  v60 = v24;
  v77 = v20;
  v34 = swift_allocObject();
  v35 = v34 + v20;
  v36 = v9;
  v37 = v9;
  v38 = v59;
  sub_10015CED4(v36, v35, v59);
  v39 = &v12[*(v32 + 56)];
  *v39 = sub_10033A330;
  v39[1] = v34;
  v40 = v72;
  sub_1000E7B34();
  v41 = v71;
  sub_1000E90D8(v40, v71);
  v57 = v37;
  sub_100339B38(v23, v37, v33);
  v42 = v77;
  v43 = swift_allocObject();
  sub_10015CED4(v37, v43 + v42, v38);
  sub_10000579C();
  v45 = sub_100006F64(v44, &qword_100CADD28);
  v46 = sub_10014F7C8();
  v47 = v80;
  v48 = v73;
  View.onChange<A>(of:initial:_:)();

  sub_100018144(v41, &qword_100CADBA0);
  sub_100018144(v12, &qword_100CADD28);
  v49 = v23 + *(v81 + 32);
  v87 = *(v49 + *(type metadata accessor for LocationViewModel() + 56));
  v50 = v57;
  sub_100339B38(v23, v57, v79);
  v51 = v77;
  v52 = swift_allocObject();
  sub_10015CED4(v50, v52 + v51, v38);
  v83 = v47;
  v84 = v48;
  v85 = v45;
  v86 = v46;
  swift_getOpaqueTypeConformance2();
  sub_10014F87C();
  v53 = v74;
  v54 = v82;
  View.onChange<A>(of:initial:_:)();

  return (*(v75 + 8))(v54, v53);
}

uint64_t sub_10015CDC4(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1000037E8();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_10015CE24(uint64_t a1, uint64_t a2)
{
  v3 = sub_1000038D8();
  v4(v3);
  sub_1000037E8();
  v5 = sub_100003940();
  v6(v5);
  return a2;
}

uint64_t sub_10015CE7C(uint64_t a1, uint64_t a2)
{
  v3 = sub_1000038D8();
  v4(v3);
  sub_1000037E8();
  v5 = sub_100003940();
  v6(v5);
  return a2;
}

uint64_t sub_10015CED4(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1000037E8();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_10015CF34@<X0>(char a1@<W1>, uint64_t a2@<X8>, double a3@<D0>)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a3;
  sub_10022C350(&qword_100CA4778);
  sub_10022C350(&qword_100CA4680);
  sub_10023FBF4(&qword_100CA4780, &qword_100CA4778);
  type metadata accessor for EmptyVisualEffect();
  sub_100151E08(&qword_100CA4688, &type metadata accessor for EmptyVisualEffect);
  swift_getOpaqueTypeConformance2();
  View.visualEffect<A>(_:)();

  result = sub_10022C350(&qword_100CA4788);
  *(a2 + *(result + 36)) = 0x3FF0000000000000;
  return result;
}

double sub_10015D134@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for EnvironmentValues();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &__dst[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  if (*(v2 + 72))
  {
    v10 = *(v2 + 24);
    *&__src[8] = *(v2 + 8);
    *&__src[24] = v10;
    v11 = *(v2 + 56);
    *&__src[40] = *(v2 + 40);
    *&__src[56] = v11;
    *__src = v9;
  }

  else
  {
    sub_1007E9BFC(v2, __dst);
    static os_log_type_t.fault.getter();
    v12 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1007E9C34(v2);
    (*(v6 + 8))(v8, v5);
  }

  memcpy(__dst, __src, 0x48uLL);
  sub_1000FD520();
  sub_1000FDB68();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v13 = sub_10022C350(&qword_100CDA020);
  (*(*(v13 - 8) + 16))(a2, a1, v13);
  v14 = (a2 + *(sub_10022C350(&qword_100CDA028) + 36));
  v15 = *&__src[16];
  *v14 = *__src;
  v14[1] = v15;
  result = *&__src[32];
  v14[2] = *&__src[32];
  return result;
}

uint64_t sub_10015D39C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(a1);
  v25 = &KeyPath - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10022E824(&qword_100CDA0B0);
  v27 = v6;
  v7 = *(a1 + 16);
  v26 = sub_100006F64(&qword_100CDA0B8, &qword_100CDA0B0);
  v31 = v6;
  v32 = &type metadata for String;
  v33 = v7;
  v34 = v26;
  v35 = &protocol witness table for String;
  v8 = type metadata accessor for ForEach();
  v28 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &KeyPath - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &KeyPath - v12;
  sub_10015D880(a1);
  sub_10015DA7C();
  v15 = v14;

  v31 = v15;
  KeyPath = swift_getKeyPath();
  v16 = v25;
  (*(v4 + 16))(v25, v2, a1);
  v17 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v18 = swift_allocObject();
  v19 = *(a1 + 24);
  *(v18 + 16) = v7;
  *(v18 + 24) = v19;
  (*(v4 + 32))(v18 + v17, v16, a1);
  v20 = swift_allocObject();
  v20[2] = v7;
  v20[3] = v19;
  v20[4] = sub_1001CB3D4;
  v20[5] = v18;
  ForEach<>.init(_:id:content:)();
  v30 = v19;
  WitnessTable = swift_getWitnessTable();
  sub_1000833D8(v10, v8, WitnessTable);
  v22 = *(v28 + 8);
  v22(v10, v8);
  sub_1000833D8(v13, v8, WitnessTable);
  return (v22)(v13, v8);
}

uint64_t sub_10015D6EC()
{
  type metadata accessor for LocationStackView();
  sub_100003A0C();
  v3 = v1 + ((*(v2 + 80) + 32) & ~*(v2 + 80));

  v4 = v3 + v0[10];
  sub_10022C350(&qword_100CB3278);
  sub_100031D74();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = *(type metadata accessor for DisplayMetrics() + 36);
    type metadata accessor for DynamicTypeSize();
    sub_100003D98();
    (*(v6 + 8))(v4 + v5);
  }

  else
  {
  }

  v7 = v3 + v0[11];
  sub_100168B1C(*v7, *(v7 + 8), *(v7 + 16), *(v7 + 24), *(v7 + 32), *(v7 + 40), *(v7 + 48), *(v7 + 56), *(v7 + 64), *(v7 + 72));
  sub_100028448(v0[12]);
  sub_100030448();

  return swift_deallocObject();
}

uint64_t sub_10015D844()
{

  return swift_deallocObject();
}

uint64_t sub_10015D880(uint64_t a1)
{
  v2 = *v1;
  v4[1] = *(a1 + 16);

  return sub_10015D8E8(sub_1007E9F2C, v4, v2);
}

uint64_t sub_10015D8E8(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a3;
  v17 = result;
  v5 = 0;
  v18 = *(a3 + 16);
  v6 = (a3 + 48);
  v7 = _swiftEmptyArrayStorage;
  while (1)
  {
    if (v18 == v5)
    {
      goto LABEL_15;
    }

    if (v5 >= *(v4 + 16))
    {
      break;
    }

    v9 = *(v6 - 2);
    v8 = *(v6 - 1);
    v10 = *v6;
    v19[0] = v9;
    v19[1] = v8;
    v19[2] = v10;

    v11 = v17(v19);
    if (v3)
    {

LABEL_15:

      return v7;
    }

    if (v11)
    {
      result = swift_isUniquelyReferenced_nonNull_native();
      v20 = v7;
      if ((result & 1) == 0)
      {
        result = sub_1006A82F4(0, v7[2] + 1, 1);
        v7 = v20;
      }

      v13 = v7[2];
      v12 = v7[3];
      v14 = v13 + 1;
      if (v13 >= v12 >> 1)
      {
        result = sub_1006A82F4((v12 > 1), v13 + 1, 1);
        v14 = v13 + 1;
        v7 = v20;
      }

      v7[2] = v14;
      v15 = &v7[3 * v13];
      v15[4] = v9;
      v15[5] = v8;
      v15[6] = v10;
      v4 = a3;
    }

    else
    {
    }

    v6 += 3;
    ++v5;
  }

  __break(1u);
  return result;
}

void sub_10015DA7C()
{
  sub_10000C778();
  v0 = 0;
  v1 = 0;
  v2 = _swiftEmptyArrayStorage;
  v4 = *(v3 + 16);
  v5 = &_swiftEmptyArrayStorage[4];
  for (i = (v3 + 48); ; i += 3)
  {
    if (v4 == v1)
    {
      if (v2[3] >= 2uLL)
      {
        sub_10002FDC0();
        if (v18)
        {
          goto LABEL_24;
        }

        v2[2] = v19;
      }

      sub_10000536C();
      return;
    }

    v8 = *(i - 2);
    v7 = *(i - 1);
    v9 = *i;
    if (v0)
    {

      v10 = v2;
    }

    else
    {
      sub_100017680();
      if (v11)
      {
        goto LABEL_23;
      }

      sub_100069480();
      sub_10022C350(&qword_100CABAA0);
      v10 = swift_allocObject();
      j__malloc_size(v10);
      v12 = sub_100051D7C();
      v5 = &v12[32 * v13];
      v0 = (v14 & 0x7FFFFFFFFFFFFFFFLL) - (v15 >> 1);
      if (v16)
      {
        if (v10 != v2 || v12 >= &v2[4 * v13 + 4])
        {
          memmove(v12, v2 + 4, 32 * v13);
        }

        v2[2] = 0;
      }

      else
      {
      }
    }

    v18 = __OFSUB__(v0--, 1);
    if (v18)
    {
      break;
    }

    *v5 = v1;
    *(v5 + 1) = v8;
    *(v5 + 2) = v7;
    *(v5 + 3) = v9;
    v5 += 32;
    ++v1;
    v2 = v10;
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
}

uint64_t sub_10015DBE8@<X0>(uint64_t a1@<X8>)
{
  v36[1] = a1;
  v2 = sub_10022C350(&qword_100CDF858);
  __chkstk_darwin(v2 - 8);
  v36[0] = v36 - v3;
  v4 = type metadata accessor for Location.Identifier();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10022C350(&qword_100CADD58);
  v9 = v8 - 8;
  __chkstk_darwin(v8);
  v11 = v36 - v10;
  active = type metadata accessor for ActiveLocationModel(0);
  __chkstk_darwin(active - 8);
  v14 = v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10022C350(&qword_100CADBA0);
  __chkstk_darwin(v15 - 8);
  v17 = v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = v36 - v19;
  type metadata accessor for LocationViewAppEntityView();
  sub_1000E7B34();
  sub_1000E90D8(v14, v20);
  v21 = type metadata accessor for LocationViewModel();
  v22 = *(v9 + 56);
  sub_1000952C4(v1 + v21[5], v11);
  sub_1000952C4(v20, &v11[v22]);
  sub_10000C814(v11);
  if (v24)
  {
    sub_10000C814(&v11[v22]);
    if (v24)
    {
      sub_10003FDF4(v11, &qword_100CADBA0);
      v23 = v36[0];
      goto LABEL_11;
    }

LABEL_9:
    sub_10003FDF4(v11, &qword_100CADD58);
    v23 = v36[0];
LABEL_12:
    v27 = *(v1 + v21[17]);
    goto LABEL_13;
  }

  sub_1000952C4(v11, v17);
  sub_10000C814(&v11[v22]);
  if (v24)
  {
    (*(v5 + 8))(v17, v4);
    goto LABEL_9;
  }

  (*(v5 + 32))(v7, &v11[v22], v4);
  sub_1000E8FAC();
  v25 = dispatch thunk of static Equatable.== infix(_:_:)();
  v26 = *(v5 + 8);
  v26(v7, v4);
  v26(v17, v4);
  sub_10003FDF4(v11, &qword_100CADBA0);
  v23 = v36[0];
  if ((v25 & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_11:
  if (*(v1 + v21[17]) == 1)
  {
    goto LABEL_12;
  }

  v27 = 1;
LABEL_13:
  v38 = static Color.clear.getter();
  if (v27)
  {
    v28 = (v1 + v21[29]);
    v29 = *v28;
    v30 = v28[1];
    v31 = v28[2];
    v32 = v28[3];
    LOBYTE(v28) = *(v28 + 32);
    v36[2] = v29;
    v36[3] = v30;
    v36[4] = v31;
    v36[5] = v32;
    v37 = v28;
    sub_10015E074();

    EntityIdentifier.init<A>(for:)();
    v33 = 0;
  }

  else
  {
    v33 = 1;
  }

  v34 = type metadata accessor for EntityIdentifier();
  sub_10001B350(v23, v33, 1, v34);
  View.appEntityIdentifier(_:)();
  sub_10003FDF4(v23, &qword_100CDF858);

  return sub_10003FDF4(v20, &qword_100CADBA0);
}

unint64_t sub_10015E074()
{
  result = qword_100CA2D90;
  if (!qword_100CA2D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CA2D90);
  }

  return result;
}

unint64_t sub_10015E0C8()
{
  result = qword_100CCC428;
  if (!qword_100CCC428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CCC428);
  }

  return result;
}

unint64_t sub_10015E120()
{
  result = qword_100CCC458;
  if (!qword_100CCC458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CCC458);
  }

  return result;
}

unint64_t sub_10015E180()
{
  result = qword_100CCC450;
  if (!qword_100CCC450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CCC450);
  }

  return result;
}

unint64_t sub_10015E1DC()
{
  result = qword_100CADA30;
  if (!qword_100CADA30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CADA30);
  }

  return result;
}

unint64_t sub_10015E230()
{
  result = qword_100CCC430;
  if (!qword_100CCC430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CCC430);
  }

  return result;
}

unint64_t sub_10015E288()
{
  result = qword_100CCC448;
  if (!qword_100CCC448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CCC448);
  }

  return result;
}

unint64_t sub_10015E2E0()
{
  result = qword_100CCC460;
  if (!qword_100CCC460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CCC460);
  }

  return result;
}

unint64_t sub_10015E338()
{
  result = qword_100CCC438;
  if (!qword_100CCC438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CCC438);
  }

  return result;
}

uint64_t sub_10015E390@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t sub_10015E3AC()
{
  v1 = sub_10022C350(&qword_100CA60E8);
  __chkstk_darwin(v1 - 8);
  v3 = v7 - v2;
  v7[1] = static Color.clear.getter();
  if (sub_10015E4C8())
  {
    v4 = type metadata accessor for LocationViewModel();
    sub_100060DE0(v0 + *(v4 + 80), v3, &qword_100CA60E8);
  }

  else
  {
    v5 = type metadata accessor for ForegroundEffect();
    sub_10001B350(v3, 1, 1, v5);
  }

  View.setForegroundEffect(_:)();
  sub_10003FDF4(v3, &qword_100CA60E8);
}

uint64_t sub_10015E4C8()
{
  v1 = type metadata accessor for Location.Identifier();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v23 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10022C350(&qword_100CADD58);
  v5 = v4 - 8;
  __chkstk_darwin(v4);
  v7 = &v23 - v6;
  active = type metadata accessor for ActiveLocationModel(0);
  __chkstk_darwin(active - 8);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10022C350(&qword_100CADBA0);
  __chkstk_darwin(v11 - 8);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v14);
  v17 = &v23 - v16;
  (*(v2 + 16))(&v23 - v16, v0, v1, v15);
  sub_10001B350(v17, 0, 1, v1);
  type metadata accessor for ForegroundEffectConfigurationView();
  v24 = v0;
  sub_1000E7B34();
  v18 = *(v5 + 56);
  sub_100060DE0(v17, v7, &qword_100CADBA0);
  sub_1000E90D8(v10, &v7[v18]);
  if (sub_100024D10(v7, 1, v1) != 1)
  {
    sub_100060DE0(v7, v13, &qword_100CADBA0);
    if (sub_100024D10(&v7[v18], 1, v1) != 1)
    {
      v20 = v23;
      (*(v2 + 32))(v23, &v7[v18], v1);
      sub_1000E8FAC();
      v21 = dispatch thunk of static Equatable.== infix(_:_:)();
      v22 = *(v2 + 8);
      v22(v20, v1);
      sub_10003FDF4(v17, &qword_100CADBA0);
      v22(v13, v1);
      sub_10003FDF4(v7, &qword_100CADBA0);
      if (v21)
      {
        return 1;
      }

      return *(v24 + *(type metadata accessor for LocationViewModel() + 68));
    }

    sub_10003FDF4(v17, &qword_100CADBA0);
    (*(v2 + 8))(v13, v1);
LABEL_6:
    sub_10003FDF4(v7, &qword_100CADD58);
    return *(v24 + *(type metadata accessor for LocationViewModel() + 68));
  }

  sub_10003FDF4(v17, &qword_100CADBA0);
  if (sub_100024D10(&v7[v18], 1, v1) != 1)
  {
    goto LABEL_6;
  }

  sub_10003FDF4(v7, &qword_100CADBA0);
  return 1;
}

uint64_t sub_10015E8AC()
{
  sub_10000FE4C();
  v0 = sub_100103418();
  return sub_100005F94(v0);
}

uint64_t sub_10015E8D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v38 = a1;
  v39 = a3;
  v5 = *(a2 - 8);
  __chkstk_darwin(a1);
  v35 = v6;
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for EnvironmentValues();
  v32 = *(v8 - 8);
  v33 = v8;
  __chkstk_darwin(v8);
  v31 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getWitnessTable();
  v10 = type metadata accessor for _ViewModifier_Content();
  WitnessTable = swift_getWitnessTable();
  v36 = v10;
  v41 = v10;
  v42 = &type metadata for Bool;
  v43 = WitnessTable;
  v44 = &protocol witness table for Bool;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v40 = *(OpaqueTypeMetadata2 - 8);
  __chkstk_darwin(OpaqueTypeMetadata2);
  v34 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v37 = &v29 - v15;
  v16 = *(v3 + 16);
  if (*(v3 + 24) != 1)
  {

    static os_log_type_t.fault.getter();
    v17 = static Log.runtimeIssuesLog.getter();
    v30 = v7;
    v18 = v17;
    os_log(_:dso:log:_:_:)();

    v7 = v30;
    v19 = v31;
    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000E4DF8(v16, 0);
    (*(v32 + 8))(v19, v33);
    LOBYTE(v16) = v41;
  }

  LOBYTE(v41) = v16 & 1;
  (*(v5 + 16))(v7, v3, a2);
  v20 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v21 = swift_allocObject();
  v22 = *(a2 + 32);
  *(v21 + 16) = *(a2 + 16);
  *(v21 + 32) = v22;
  (*(v5 + 32))(v21 + v20, v7, a2);
  v23 = swift_checkMetadataState();
  static VerticalSizingBehaviorKey.defaultValue.getter();
  v24 = v34;
  View.onChange<A>(of:initial:_:)();

  v41 = v23;
  v42 = &type metadata for Bool;
  v43 = WitnessTable;
  v44 = &protocol witness table for Bool;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v26 = v37;
  sub_1000833D8(v24, OpaqueTypeMetadata2, OpaqueTypeConformance2);
  v27 = *(v40 + 8);
  v27(v24, OpaqueTypeMetadata2);
  sub_1000833D8(v26, OpaqueTypeMetadata2, OpaqueTypeConformance2);
  return (v27)(v26, OpaqueTypeMetadata2);
}

void sub_10015ED44()
{
  sub_10004E348();
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  sub_10000ECFC();
  v4 = type metadata accessor for RebuildPageWhenSidebarCollapsesDuringTransitionModifier();
  sub_100003DDC();
  v6 = v0 + ((*(v5 + 80) + 48) & ~*(v5 + 80));

  sub_1000E4DF8(*(v6 + 16), *(v6 + 24));
  v15 = *(*(v2 - 8) + 8);
  v15(v6 + *(v4 + 56), v2);
  v7 = v6 + *(v4 + 60);
  if (!sub_10004E928())
  {
    sub_100003B20();
    v14 = *(v8 + 8);
    v9 = sub_100003A80();
    v10(v9);
    v11 = sub_100069878();
    v15(v11, v2);
    v12 = v7 + *(v1 + 52);
    v13 = sub_100003A80();
    v14(v13);
    v15(v12 + *(v3 + 52), v2);
  }

  swift_deallocObject();
  sub_100013454();
}

uint64_t sub_10015EEFC(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v20[3] = a2;
  v12 = type metadata accessor for EnvironmentValues();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = a4;
  v22 = a5;
  v23 = a6;
  v24 = a7;
  v16 = (a3 + *(type metadata accessor for LegacyLazyPageAnimatableTabView() + 108));
  v17 = *v16;
  if (*(v16 + 8) == 1)
  {
    if ((v17 & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  static os_log_type_t.fault.getter();
  v18 = static Log.runtimeIssuesLog.getter();
  os_log(_:dso:log:_:_:)();

  EnvironmentValues.init()();
  swift_getAtKeyPath();
  sub_1000E4DF8(v17, 0);
  (*(v13 + 8))(v15, v12);
  if (v21 == 1)
  {
LABEL_5:
    ScrollTransitionPhase.isIdentity.getter();
  }

LABEL_6:
  type metadata accessor for EmptyVisualEffect();
  sub_100121A00(&qword_100CA4688, &type metadata accessor for EmptyVisualEffect);
  return VisualEffect.opacity(_:)();
}

uint64_t sub_10015F118@<X0>(BOOL *a1@<X8>)
{
  v2 = type metadata accessor for CoordinateSpace();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 104))(v6, enum case for CoordinateSpace.global(_:), v2, v4);
  GeometryProxy.frameClippedToScrollViews(in:)();
  v7 = *&v12[3];
  v8 = *&v12[4];
  (*(v3 + 8))(v6, v2);
  result = GeometryProxy.size.getter();
  *a1 = v7 * v8 / (v10 * v11) == 1.0;
  return result;
}

uint64_t sub_10015F244@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = type metadata accessor for ActivityModifier();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6 - 8);
  sub_10015F498(v3, &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v10 = swift_allocObject();
  sub_10015F4FC(&v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9);
  v11 = sub_10022C350(&qword_100CED328);
  (*(*(v11 - 8) + 16))(a2, a1, v11);
  result = sub_10022C350(&qword_100CED330);
  v13 = (a2 + *(result + 36));
  *v13 = sub_100165B28;
  v13[1] = v10;
  v13[2] = 0;
  v13[3] = 0;
  return result;
}

uint64_t sub_10015F3A8()
{
  v1 = *(type metadata accessor for ActivityModifier() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = type metadata accessor for Location.Identifier();
  if (!sub_100024D10(v0 + v2, 2, v3))
  {
    (*(*(v3 - 8) + 8))(v0 + v2, v3);
  }

  return swift_deallocObject();
}

uint64_t sub_10015F498(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ActivityModifier();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10015F4FC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ActivityModifier();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10015F560@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v63 = a1;
  v51 = type metadata accessor for EnvironmentValues();
  sub_1000037C4();
  v50 = v3;
  __chkstk_darwin(v4);
  sub_1000037D8();
  sub_100003990(v6 - v5);
  active = type metadata accessor for ActiveLocationModel(0);
  v8 = sub_100003810(active);
  __chkstk_darwin(v8);
  sub_1000037D8();
  sub_100003990(v10 - v9);
  v66 = sub_10022C350(&qword_100CADBA0);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v11);
  sub_100003990(&v49 - v12);
  v13 = type metadata accessor for LocationViewCollisionOptionsUpdatingView(0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v59 = sub_10022C350(&qword_100CCB7F8);
  sub_1000037C4();
  v57 = v16;
  sub_100003828();
  __chkstk_darwin(v17);
  sub_100003990(&v49 - v18);
  v62 = sub_10022C350(&qword_100CCB800);
  sub_1000037C4();
  v61 = v19;
  sub_100003828();
  __chkstk_darwin(v20);
  sub_100003990(&v49 - v21);
  v22 = static Color.clear.getter();
  v52 = v22;
  sub_10015FD34(v1, &v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = *(v14 + 80);
  v24 = (v23 + 16) & ~v23;
  v25 = swift_allocObject();
  sub_10015FD98(&v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v25 + v24);
  sub_10015FD34(v1, &v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v26 = swift_allocObject();
  sub_10015FD98(&v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v26 + v24);
  __dst[0] = v22;
  __dst[1] = sub_100166B74;
  __dst[2] = v25;
  memset(&__dst[3], 0, 32);
  __dst[7] = sub_100600FF8;
  __dst[8] = v26;
  v27 = v64;
  sub_1000E7B34();
  v28 = v27;
  v29 = v53;
  sub_1000E90D8(v28, v53);
  sub_10015FD34(v1, &v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v58 = v15;
  v64 = v23;
  v30 = swift_allocObject();
  v56 = v24;
  v31 = v30 + v24;
  v32 = &v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10015FD98(v32, v31);
  v33 = sub_10022C350(&qword_100CCB808);
  v34 = sub_10015C2CC();
  v35 = sub_10014F7C8();
  v55 = v34;
  v54 = v35;
  View.onChange<A>(of:initial:_:)();

  sub_1000180EC(v29, &qword_100CADBA0);

  v36 = v1;
  memcpy(__dst, v1, 0x49uLL);
  if (__dst[9])
  {
    memcpy(__src, v1, sizeof(__src));
  }

  else
  {

    static os_log_type_t.fault.getter();
    v37 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    v38 = v49;
    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000180EC(__dst, &qword_100CB71A8);
    (*(v50 + 8))(v38, v51);
  }

  memcpy(v69, __src, sizeof(v69));
  v67 = sub_1000EF898();
  sub_10015FD34(v2, v32);
  v39 = v56;
  v40 = sub_100022EC8();
  sub_10015FD98(v32, v40 + v39);
  __src[0] = v33;
  __src[1] = v66;
  __src[2] = v55;
  __src[3] = v54;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v42 = sub_10013E1CC();
  v43 = v60;
  v44 = v59;
  v45 = v65;
  View.onChange<A>(of:initial:_:)();

  (*(v57 + 8))(v45, v44);
  v67 = *(v36 + 80);
  sub_10015FD34(v36, v32);
  v46 = sub_100022EC8();
  sub_10015FD98(v32, v46 + v39);

  sub_10022C350(&qword_100CCB818);
  __src[0] = v44;
  __src[1] = &type metadata for CGFloat;
  __src[2] = OpaqueTypeConformance2;
  __src[3] = v42;
  sub_100010558();
  swift_getOpaqueTypeConformance2();
  sub_10015C358();
  v47 = v62;
  View.onChange<A>(of:initial:_:)();

  return (*(v61 + 8))(v43, v47);
}

uint64_t sub_10015FD34(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LocationViewCollisionOptionsUpdatingView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10015FD98(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LocationViewCollisionOptionsUpdatingView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_10015FDFC()
{
  sub_100040DC8();
  v3 = v2;
  v4 = sub_10022C350(&qword_100CC0B20);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v5);
  sub_1000426CC();
  type metadata accessor for EnvironmentValues();
  sub_1000037C4();
  v7 = v6;
  __chkstk_darwin(v8);
  sub_1000037D8();
  v12 = v11 - v10;
  v31 = *(v0 + 48);
  v13 = *(v0 + 40);
  v30 = v13;
  if (v31 == 1)
  {
    v14 = v13;
  }

  else
  {
    v28 = v9;

    static os_log_type_t.fault.getter();
    v15 = static Log.runtimeIssuesLog.getter();
    sub_100016A84();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_100018198(&v30, &qword_100CC09F8);
    (*(v7 + 8))(v12, v28);
    v14 = v29;
  }

  v16 = *(v0 + 16);
  v17 = *(v0 + 24);
  v18 = *(v0 + 8);
  static UnitPoint.top.getter();
  v20 = v19;
  v22 = v21;
  KeyPath = swift_getKeyPath();
  sub_10022C350(&qword_100CC0B28);
  sub_1000037E8();
  (*(v24 + 16))(v1, v3);
  v25 = v1 + *(v4 + 36);
  *v25 = v16;
  *(v25 + 8) = v17;
  *(v25 + 16) = v18;
  *(v25 + 24) = 0;
  *(v25 + 32) = v20;
  *(v25 + 40) = v22;
  *(v25 + 48) = 1;
  *(v25 + 56) = KeyPath;
  *(v25 + 64) = 0;
  *(swift_allocObject() + 16) = v14;

  sub_10022C350(&qword_100CA4680);
  sub_10014D91C();
  type metadata accessor for EmptyVisualEffect();
  sub_100010208();
  sub_100061A3C(v26, v27);
  sub_100005B34();
  swift_getOpaqueTypeConformance2();
  View.visualEffect<A>(_:)();

  sub_100018198(v1, &qword_100CC0B20);
  sub_100040CB4();
}

uint64_t sub_100160134()
{
  sub_10000FE4C();
  v0 = sub_10013E9DC();
  return sub_100005F94(v0);
}

uint64_t sub_1001601B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = *v2;
  v5 = v2[1];

  if (sub_1009B706C())
  {
    v7 = 0;
  }

  else
  {
    v7 = *(v2 + 6);
  }

  v8 = v2[2];
  v9 = v2[4];
  v10 = v2[5];
  v11 = *(v2 + 48);
  v12 = sub_10022C350(&qword_100CEAFB0);
  (*(*(v12 - 8) + 16))(a2, a1, v12);
  result = sub_10022C350(&qword_100CEAFB8);
  v14 = a2 + *(result + 36);
  *v14 = v6;
  *(v14 + 8) = v5;
  *(v14 + 16) = v8;
  *(v14 + 24) = v7;
  *(v14 + 32) = v9;
  *(v14 + 40) = v10;
  *(v14 + 48) = v11 & 1;
  return result;
}

uint64_t sub_1001602AC()
{
  v0 = type metadata accessor for NamedCoordinateSpace();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  static CoordinateSpaceProtocol<>.scrollView.getter();
  GeometryProxy.bounds(of:)();
  (*(v1 + 8))(v3, v0);
  if ((v7 & 1) == 0)
  {
    CGRectGetMinY(v6);
  }

  type metadata accessor for EmptyVisualEffect();
  sub_100061A3C(&qword_100CA4688, &type metadata accessor for EmptyVisualEffect);
  return VisualEffect.offset(x:y:)();
}

uint64_t sub_100160460@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v46 = a1;
  v50 = a2;
  v4 = type metadata accessor for TranslationAndGradientBackgroundViewModifier(0);
  v43 = *(v4 - 8);
  __chkstk_darwin(v4);
  v44 = v5;
  v45 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10022C350(&qword_100CA46B8);
  v48 = *(v6 - 8);
  v49 = v6;
  __chkstk_darwin(v6);
  v47 = &v42 - v7;
  v8 = type metadata accessor for LocationHeaderViewMeasurements(0);
  v42 = *(v8 - 8);
  v9 = *(v42 + 64);
  __chkstk_darwin(v8 - 8);
  v10 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v51 = &v42 - v12;
  v13 = type metadata accessor for EnvironmentValues();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = v3 + *(v4 + 24);
  v18 = *v17;
  if (*(v17 + 8) == 1)
  {
    v19 = *v17;
  }

  else
  {

    static os_log_type_t.fault.getter();
    v20 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000EBD74(v18, 0);
    (*(v14 + 8))(v16, v13);
    v19 = v52;
  }

  v21 = *v3;
  v22 = *(v3 + 8);

  if ((v22 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v23 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v14 + 8))(v16, v13);
    v21 = v52;
  }

  v24 = v51;
  sub_100160D94();
  v25 = v45;
  sub_1000A3C14(v3, v45, type metadata accessor for TranslationAndGradientBackgroundViewModifier);
  sub_1000A3C14(v24, v10, type metadata accessor for LocationHeaderViewMeasurements);
  v26 = (*(v43 + 80) + 16) & ~*(v43 + 80);
  v27 = (v44 + v26 + 7) & 0xFFFFFFFFFFFFFFF8;
  v28 = (v27 + 15) & 0xFFFFFFFFFFFFFFF8;
  v29 = (*(v42 + 80) + v28 + 8) & ~*(v42 + 80);
  v30 = swift_allocObject();
  sub_1001540E8(v25, v30 + v26, type metadata accessor for TranslationAndGradientBackgroundViewModifier);
  *(v30 + v27) = v21;
  *(v30 + v28) = v19;
  sub_1001540E8(v10, v30 + v29, type metadata accessor for LocationHeaderViewMeasurements);

  v31 = sub_10022C350(&qword_100CA46C0);
  v32 = sub_10022C350(&qword_100CA4680);
  v33 = sub_10023FBF4(&qword_100CA46C8, &qword_100CA46C0);
  v34 = type metadata accessor for EmptyVisualEffect();
  v35 = sub_100151E08(&qword_100CA4688, &type metadata accessor for EmptyVisualEffect);
  v52 = v34;
  v53 = v35;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v37 = v47;
  View.visualEffect<A>(_:)();

  v38 = Solarium.init()();
  v46 = &v42;
  __chkstk_darwin(v38);
  __chkstk_darwin(v39);
  sub_10022C350(&qword_100CA46D0);
  sub_10022C350(&qword_100CA46D8);
  v52 = v31;
  v53 = v32;
  v54 = v33;
  v55 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  sub_10023F554();
  sub_10015B4B0();
  v40 = v49;
  View.staticIf<A, B, C>(_:then:else:)();

  (*(v48 + 8))(v37, v40);
  return sub_1000DFD78(v51, type metadata accessor for LocationHeaderViewMeasurements);
}

uint64_t sub_100160B84()
{
  type metadata accessor for TranslationAndGradientBackgroundViewModifier(0);
  sub_100003A0C();
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v5 = *(v4 + 64);
  v6 = type metadata accessor for LocationHeaderViewMeasurements(0);
  sub_1000037C4();
  v8 = *(v7 + 80);

  v9 = v1 + v3 + *(v0 + 20);
  sub_10022C350(&qword_100CA3DB0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = *(v6 + 32);
    v11 = v10 + *(type metadata accessor for DisplayMetrics() + 36);
    type metadata accessor for DynamicTypeSize();
    sub_1000037E8();
    (*(v12 + 8))(v9 + v11);
  }

  else
  {
  }

  sub_1000EBD74(*(v1 + v3 + *(v0 + 24)), *(v1 + v3 + *(v0 + 24) + 8));

  v13 = v1 + *(v6 + 32);
  v14 = v13 + *(type metadata accessor for DisplayMetrics() + 36);
  type metadata accessor for DynamicTypeSize();
  sub_1000037E8();
  (*(v15 + 8))(v14 + ((((((v5 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + v8 + 8) & ~v8));

  return swift_deallocObject();
}

unint64_t sub_100160DBC()
{
  result = qword_100CA4730;
  if (!qword_100CA4730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CA4730);
  }

  return result;
}

uint64_t sub_100160E10()
{
  v3 = sub_100021300();
  v4 = *(type metadata accessor for TranslationAndGradientBackgroundViewModifier(v3) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = (((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = type metadata accessor for LocationHeaderViewMeasurements(0);
  sub_100003810(v7);
  v8 = *(v1 + v6);

  return sub_100160F10(v8, v2, v0, v1 + v5);
}

uint64_t sub_100160F10(double a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for NamedCoordinateSpace();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a4 + *(type metadata accessor for TranslationAndGradientBackgroundViewModifier(0) + 32)) == 1)
  {
    static CoordinateSpaceProtocol<>.scrollView.getter();
    GeometryProxy.bounds(of:)();
    (*(v7 + 8))(v9, v6);
    if ((v14 & 1) == 0)
    {
      CGRectGetMinY(v13);
    }

    sub_10023DE64();
    if (v10 - a1 > 0.0)
    {
      sub_10023DE64();
      sub_10016AFE8();
    }
  }

  type metadata accessor for EmptyVisualEffect();
  sub_100151E08(&qword_100CA4688, &type metadata accessor for EmptyVisualEffect);
  return VisualEffect.offset(x:y:)();
}

uint64_t sub_1001610F4(uint64_t a1, uint64_t a2, char a3)
{
  v4 = type metadata accessor for NamedCoordinateSpace();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3)
  {
    static CoordinateSpaceProtocol<>.scrollView.getter();
    GeometryProxy.bounds(of:)();
    (*(v5 + 8))(v7, v4);
    if ((v11 & 1) == 0)
    {
      CGRectGetMinY(v10);
    }
  }

  type metadata accessor for EmptyVisualEffect();
  sub_100151E08(&qword_100CA4688, &type metadata accessor for EmptyVisualEffect);
  return VisualEffect.offset(x:y:)();
}

uint64_t sub_100161298@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v32 = a1;
  v31 = type metadata accessor for ConditionSummaryModifier(0);
  v3 = *(v31 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v31);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = type metadata accessor for LocationHeaderViewMeasurements(0);
  __chkstk_darwin(v30);
  v7 = (&v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v29 = type metadata accessor for EnvironmentValues();
  v8 = *(v29 - 8);
  __chkstk_darwin(v29);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v2 + 8);

  if ((v11 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v28 = v3;
    v12 = static Log.runtimeIssuesLog.getter();
    v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    v3 = v28;

    (*(v8 + 8))(v10, v29);
  }

  sub_100160D94();
  v13 = sub_10023DE64();
  sub_10023DE64();
  v15 = v14;
  *&v16 = COERCE_DOUBLE(sub_100155544((v7 + *(v30 + 32))));
  if (v17)
  {
    v18 = (v15 - (v7[1] + v7[3] + v7[5] + v7[7])) * 0.5;
  }

  else
  {
    v18 = *&v16;
  }

  sub_1000A3C14(v2, v5, type metadata accessor for ConditionSummaryModifier);
  v19 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v20 = (v4 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = swift_allocObject();
  sub_1001540E8(v5, v21 + v19, type metadata accessor for ConditionSummaryModifier);
  *(v21 + v20) = v13;
  *(v21 + ((v20 + 15) & 0xFFFFFFFFFFFFFFF8)) = v18;
  sub_10022C350(&qword_100CA4668);
  sub_10022C350(&qword_100CA4670);
  sub_10023FBF4(&qword_100CA4678, &qword_100CA4668);
  v22 = sub_10022E824(&qword_100CA4680);
  v23 = type metadata accessor for EmptyVisualEffect();
  v24 = sub_100151E08(&qword_100CA4688, &type metadata accessor for EmptyVisualEffect);
  v33 = v23;
  v34 = v24;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v33 = v22;
  v34 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  View.visualEffect<A>(_:)();

  return sub_1000DFD78(v7, type metadata accessor for LocationHeaderViewMeasurements);
}

uint64_t sub_10016175C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, unint64_t, __n128, __n128))
{
  v7 = sub_100021300();
  v9 = *(v8(v7) - 8);
  v10 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v11 = (*(v9 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12.n128_u64[0] = *(v5 + v11);
  v13.n128_u64[0] = *(v5 + ((v11 + 15) & 0xFFFFFFFFFFFFFFF8));

  return a4(v6, v4, v5 + v10, v12, v13);
}

uint64_t sub_100161854()
{
  v0 = sub_10022C350(&qword_100CA4680);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v11 - v2;
  v4 = type metadata accessor for NamedCoordinateSpace();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static CoordinateSpaceProtocol<>.scrollView.getter();
  GeometryProxy.bounds(of:)();
  (*(v5 + 8))(v7, v4);
  type metadata accessor for ConditionSummaryModifier(0);
  v8 = type metadata accessor for EmptyVisualEffect();
  v9 = sub_100151E08(&qword_100CA4688, &type metadata accessor for EmptyVisualEffect);
  VisualEffect.offset(x:y:)();
  v11[1] = v8;
  v11[2] = v9;
  swift_getOpaqueTypeConformance2();
  VisualEffect.opacity(_:)();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_100161B20@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v32 = a1;
  v31 = type metadata accessor for ConditionModifier(0);
  v3 = *(v31 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v31);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = type metadata accessor for LocationHeaderViewMeasurements(0);
  __chkstk_darwin(v30);
  v7 = (&v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v29 = type metadata accessor for EnvironmentValues();
  v8 = *(v29 - 8);
  __chkstk_darwin(v29);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v2 + 8);

  if ((v11 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v28 = v3;
    v12 = static Log.runtimeIssuesLog.getter();
    v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    v3 = v28;

    (*(v8 + 8))(v10, v29);
  }

  sub_100160D94();
  v13 = sub_10023DE64();
  sub_10023DE64();
  v15 = v14;
  *&v16 = COERCE_DOUBLE(sub_100155544((v7 + *(v30 + 32))));
  if (v17)
  {
    v18 = (v15 - (v7[1] + v7[3] + v7[5] + v7[7])) * 0.5;
  }

  else
  {
    v18 = *&v16;
  }

  sub_1000A3C14(v2, v5, type metadata accessor for ConditionModifier);
  v19 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v20 = (v4 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = swift_allocObject();
  sub_1001540E8(v5, v21 + v19, type metadata accessor for ConditionModifier);
  *(v21 + v20) = v13;
  *(v21 + ((v20 + 15) & 0xFFFFFFFFFFFFFFF8)) = v18;
  sub_10022C350(&qword_100CA4758);
  sub_10022C350(&qword_100CA4670);
  sub_10023FBF4(&qword_100CA4760, &qword_100CA4758);
  v22 = sub_10022E824(&qword_100CA4680);
  v23 = type metadata accessor for EmptyVisualEffect();
  v24 = sub_100151E08(&qword_100CA4688, &type metadata accessor for EmptyVisualEffect);
  v33 = v23;
  v34 = v24;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v33 = v22;
  v34 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  View.visualEffect<A>(_:)();

  return sub_1000DFD78(v7, type metadata accessor for LocationHeaderViewMeasurements);
}

uint64_t sub_100162010@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  v14[0] = a2;
  v3 = sub_10022C350(&qword_100CA4680);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v14 - v5;
  v7 = type metadata accessor for NamedCoordinateSpace();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + *(type metadata accessor for ConditionModifier(0) + 24)) == 1)
  {
    static CoordinateSpaceProtocol<>.scrollView(axis:)();
    GeometryProxy.bounds(of:)();
    (*(v8 + 8))(v10, v7);
  }

  v11 = type metadata accessor for EmptyVisualEffect();
  v12 = sub_100151E08(&qword_100CA4688, &type metadata accessor for EmptyVisualEffect);
  VisualEffect.offset(x:y:)();
  v14[1] = v11;
  v14[2] = v12;
  swift_getOpaqueTypeConformance2();
  VisualEffect.opacity(_:)();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1001622DC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v32 = a1;
  v31 = type metadata accessor for TemperatureModifier(0);
  v3 = *(v31 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v31);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = type metadata accessor for LocationHeaderViewMeasurements(0);
  __chkstk_darwin(v30);
  v7 = (&v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v29 = type metadata accessor for EnvironmentValues();
  v8 = *(v29 - 8);
  __chkstk_darwin(v29);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v2 + 8);

  if ((v11 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v28 = v3;
    v12 = static Log.runtimeIssuesLog.getter();
    v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    v3 = v28;

    (*(v8 + 8))(v10, v29);
  }

  sub_100160D94();
  v13 = sub_10023DE64();
  sub_10023DE64();
  v15 = v14;
  *&v16 = COERCE_DOUBLE(sub_100155544((v7 + *(v30 + 32))));
  if (v17)
  {
    v18 = (v15 - (v7[1] + v7[3] + v7[5] + v7[7])) * 0.5;
  }

  else
  {
    v18 = *&v16;
  }

  sub_1000A3C14(v2, v5, type metadata accessor for TemperatureModifier);
  v19 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v20 = (v4 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = swift_allocObject();
  sub_1001540E8(v5, v21 + v19, type metadata accessor for TemperatureModifier);
  *(v21 + v20) = v13;
  *(v21 + ((v20 + 15) & 0xFFFFFFFFFFFFFFF8)) = v18;
  sub_10022C350(&qword_100CA4690);
  sub_10022C350(&qword_100CA4670);
  sub_10023FBF4(&qword_100CA4698, &qword_100CA4690);
  v22 = sub_10022E824(&qword_100CA4680);
  v23 = type metadata accessor for EmptyVisualEffect();
  v24 = sub_100151E08(&qword_100CA4688, &type metadata accessor for EmptyVisualEffect);
  v33 = v23;
  v34 = v24;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v33 = v22;
  v34 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  View.visualEffect<A>(_:)();

  return sub_1000DFD78(v7, type metadata accessor for LocationHeaderViewMeasurements);
}

uint64_t sub_1001627CC@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  v14[0] = a2;
  v3 = sub_10022C350(&qword_100CA4680);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v14 - v5;
  v7 = type metadata accessor for NamedCoordinateSpace();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + *(type metadata accessor for TemperatureModifier(0) + 24)) == 1)
  {
    static CoordinateSpaceProtocol<>.scrollView.getter();
    GeometryProxy.bounds(of:)();
    (*(v8 + 8))(v10, v7);
    if ((v16 & 1) == 0)
    {
      CGRectGetMinY(v15);
    }
  }

  v11 = type metadata accessor for EmptyVisualEffect();
  v12 = sub_100151E08(&qword_100CA4688, &type metadata accessor for EmptyVisualEffect);
  VisualEffect.offset(x:y:)();
  v14[1] = v11;
  v14[2] = v12;
  swift_getOpaqueTypeConformance2();
  VisualEffect.opacity(_:)();
  return (*(v4 + 8))(v6, v3);
}

double sub_100162AAC(uint64_t a1, char a2)
{
  result = *&a1;
  if (a2)
  {
    result = 10.0;
  }

  if (result > 256.0)
  {
    return 256.0;
  }

  return result;
}

uint64_t sub_100162B64(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12)
{
  v17 = sub_10022C350(&qword_100CA47F0);
  __chkstk_darwin(v17 - 8);
  v19 = &v25[-v18];
  v20 = type metadata accessor for LayoutSubview();
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v23 = &v25[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_100162D9C();
  if (sub_100024D10(v19, 1, v20) == 1)
  {
    return sub_10003FDA0(v19, &qword_100CA47F0);
  }

  (*(v21 + 32))(v23, v19, v20);
  v26.origin.x = a1;
  v26.origin.y = a2;
  v26.size.width = a3;
  v26.size.height = a4;
  CGRectGetMinX(v26);
  if (a12)
  {
    v27.origin.x = a1;
    v27.origin.y = a2;
    v27.size.width = a3;
    v27.size.height = a4;
    CGRectGetMinY(v27);
  }

  static UnitPoint.topLeading.getter();
  v25[8] = 0;
  v25[0] = 0;
  LayoutSubview.place(at:anchor:proposal:)();
  return (*(v21 + 8))(v23, v20);
}

uint64_t sub_100162D9C()
{
  type metadata accessor for LayoutSubviews();
  sub_100068374(&qword_100CAD308, &type metadata accessor for LayoutSubviews);
  sub_1000283CC();
  sub_100022AF4();
  sub_10004E548();
  if (v1)
  {
    type metadata accessor for LayoutSubview();
    v4 = sub_100007E1C();
  }

  else
  {
    sub_100019690();
    sub_10007496C();
    type metadata accessor for LayoutSubview();
    sub_1000037E8();
    v2 = sub_1000168F4();
    v3(v2);
    v0(v9, 0);
    v4 = sub_100008500();
  }

  return sub_10001B350(v4, v5, v6, v7);
}

uint64_t sub_100162E84()
{
  sub_10000FE4C();
  v0 = sub_100121D30();
  return sub_100005F94(v0);
}

__n128 sub_100162EB8@<Q0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for EnvironmentValues();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a2 & 1) == 0)
  {

    static os_log_type_t.fault.getter();
    v12 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000EBD74(a1, 0);
    (*(v7 + 8))(v9, v6);
    if (v17 != 1)
    {
      goto LABEL_3;
    }

LABEL_5:
    sub_10022C350(&qword_100CA47E8);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_100A2D320;
    static Color.black.getter();
    v14 = Color.opacity(_:)();

    *(v13 + 32) = v14;
    v11 = (v13 + 40);
    goto LABEL_6;
  }

  if (a1)
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_10022C350(&qword_100CA47E8);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_100A2C3F0;
  v11 = (v10 + 32);
LABEL_6:
  *v11 = static Color.clear.getter();
  static UnitPoint.center.getter();
  EllipticalGradient.init(colors:center:startRadiusFraction:endRadiusFraction:)();
  *a3 = v17;
  result = v19;
  *(a3 + 8) = v18;
  *(a3 + 24) = result;
  *(a3 + 40) = 256;
  return result;
}

uint64_t sub_100163114(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v7 = type metadata accessor for EnvironmentValues();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for NamedCoordinateSpace();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a4 & 1) == 0)
  {
    static CoordinateSpaceProtocol<>.scrollView.getter();
    GeometryProxy.bounds(of:)();
    (*(v12 + 8))(v14, v11);
    if ((v21 & 1) == 0)
    {
      CGRectGetMinY(v20);
    }

    return type metadata accessor for TranslationAndGradientBackgroundViewModifier(0);
  }

  if (!a3)
  {
    return type metadata accessor for TranslationAndGradientBackgroundViewModifier(0);
  }

  static CoordinateSpaceProtocol<>.scrollView.getter();
  GeometryProxy.bounds(of:)();
  (*(v12 + 8))(v14, v11);
  if ((v21 & 1) == 0)
  {
    CGRectGetMinY(v20);
  }

  result = type metadata accessor for TranslationAndGradientBackgroundViewModifier(0);
  v16 = a2 + *(result + 24);
  v17 = *v16;
  if (*(v16 + 8) != 1)
  {

    static os_log_type_t.fault.getter();
    v18 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000EBD74(v17, 0);
    return (*(v8 + 8))(v10, v7);
  }

  return result;
}

void sub_100163420()
{
  v0 = sub_100017580();
  v1 = type metadata accessor for LocationViewPage(v0);
  sub_100003810(v1);
  v2 = sub_10004E784();

  sub_10016347C(v2, v3);
}

void sub_10016347C(_BYTE *a1, uint64_t a2)
{
  v4 = type metadata accessor for LocationViewPage(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4 - 8);
  if (*a1 == 1)
  {
    sub_1005F1770(a2, &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
    v7 = (*(v5 + 80) + 16) & ~*(v5 + 80);
    v8 = swift_allocObject();
    sub_100103E40(&v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7);
    asyncMain(block:)();
  }
}

uint64_t sub_1001635BC(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1001635D8(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    v2 = 1;
  }

  else
  {
    v2 = 0;
  }

  *(result + 8) = v2;
  return result;
}

uint64_t sub_1001635F8(double *a1, double *a2)
{
  if (*a1 != *a2 || a1[1] != a2[1])
  {
    return 0;
  }

  if (a1[2] != a2[2] || a1[3] != a2[3])
  {
    return 0;
  }

  if (a1[4] != a2[4] || a1[5] != a2[5])
  {
    return 0;
  }

  if (a1[6] != a2[6] || a1[7] != a2[7])
  {
    return 0;
  }

  v9 = *(type metadata accessor for LocationHeaderViewMeasurements(0) + 32);

  return sub_1000BB930(a1 + v9, a2 + v9);
}

uint64_t sub_100163744(uint64_t a1)
{
  v2 = type metadata accessor for LocationModel();
  sub_100003810(v2);

  return sub_1001637B0(a1);
}

uint64_t sub_1001637B0(uint64_t a1)
{
  v2 = sub_10022C350(&unk_100CE2F20);
  __chkstk_darwin(v2 - 8);
  v4 = &v11[-v3];
  v5 = type metadata accessor for LocationModel();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_100109514(a1, v11);
  if (swift_dynamicCast())
  {
    sub_10001B350(v4, 0, 1, v5);
    (*(v6 + 32))(v8, v4, v5);
    sub_100007A54(&qword_100CAA848, &type metadata accessor for LocationModel);
    v9 = dispatch thunk of static Equatable.== infix(_:_:)();
    (*(v6 + 8))(v8, v5);
  }

  else
  {
    sub_10001B350(v4, 1, 1, v5);
    sub_1000180EC(v4, &unk_100CE2F20);
    v9 = 0;
  }

  return v9 & 1;
}

uint64_t sub_100163A04()
{
  sub_1000038D8();
  v0 = type metadata accessor for LocationViewModel();
  v1 = sub_100003810(v0);
  __chkstk_darwin(v1);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v9 - v5;
  sub_100140210();
  sub_100140210();
  v7 = sub_100163AEC(v6, v3);
  sub_100147C14(v3, type metadata accessor for LocationViewModel);
  sub_100147C14(v6, type metadata accessor for LocationViewModel);
  return v7 & 1;
}

uint64_t sub_100163AEC(uint64_t a1, uint64_t a2)
{
  v112 = type metadata accessor for PreviewLocation();
  sub_1000037E8();
  __chkstk_darwin(v4);
  sub_1000037D8();
  v7 = v6 - v5;
  v8 = sub_10022C350(&qword_100CA65C8);
  sub_100003810(v8);
  sub_100003828();
  __chkstk_darwin(v9);
  sub_1000039BC();
  v110 = v10;
  v111 = sub_10022C350(&qword_100CB8F90);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v11);
  sub_1000039BC();
  v113 = v12;
  sub_1000038CC();
  v118 = type metadata accessor for ForegroundEffect();
  sub_1000037C4();
  v115 = v13;
  __chkstk_darwin(v14);
  sub_1000037D8();
  v114 = v16 - v15;
  v17 = sub_10022C350(&qword_100CA60E8);
  sub_100003810(v17);
  sub_100003828();
  __chkstk_darwin(v18);
  sub_1000039BC();
  v117 = v19;
  v116 = sub_10022C350(&qword_100CD8BE0);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v20);
  sub_1000039BC();
  v119 = v21;
  sub_1000038CC();
  v123 = type metadata accessor for LocationFooterViewModel();
  sub_1000037E8();
  __chkstk_darwin(v22);
  sub_1000037D8();
  v120 = (v24 - v23);
  v25 = sub_10022C350(&qword_100CD8AB8);
  sub_100003810(v25);
  sub_100003828();
  __chkstk_darwin(v26);
  sub_1000039BC();
  v121 = v27;
  v122 = sub_10022C350(&qword_100CD8BE8);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v28);
  sub_1000039BC();
  v124 = v29;
  sub_1000038CC();
  v30 = type metadata accessor for Location.Identifier();
  sub_1000037C4();
  v32 = v31;
  __chkstk_darwin(v33);
  sub_1000037D8();
  v36 = v35 - v34;
  v37 = sub_10022C350(&qword_100CADBA0);
  sub_100003810(v37);
  sub_100003828();
  __chkstk_darwin(v38);
  v40 = &v106 - v39;
  v41 = sub_10022C350(&qword_100CADD58);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v42);
  v44 = &v106 - v43;
  if ((static Location.Identifier.== infix(_:_:)() & 1) == 0)
  {
    goto LABEL_58;
  }

  v107 = v7;
  v45 = type metadata accessor for LocationViewModel();
  v125 = a2;
  v46 = *(v45 + 20);
  v47 = *(v41 + 48);
  v108 = v45;
  v109 = a1;
  sub_100035AD0(a1 + v46, v44, &qword_100CADBA0);
  v48 = sub_10003C808();
  sub_100035AD0(v48, v49, &qword_100CADBA0);
  sub_1000038B4(v44, 1, v30);
  if (v50)
  {
    sub_100049CDC();
    if (v50)
    {
      sub_1000180EC(v44, &qword_100CADBA0);
      goto LABEL_14;
    }

LABEL_10:
    v51 = &qword_100CADD58;
LABEL_11:
    v52 = v44;
LABEL_12:
    sub_1000180EC(v52, v51);
    goto LABEL_58;
  }

  sub_100035AD0(v44, v40, &qword_100CADBA0);
  sub_100049CDC();
  if (v50)
  {
    (*(v32 + 8))(v40, v30);
    goto LABEL_10;
  }

  (*(v32 + 32))(v36, &v44[v47], v30);
  sub_100164738(&qword_100CA3A48, &type metadata accessor for Location.Identifier);
  v53 = dispatch thunk of static Equatable.== infix(_:_:)();
  v54 = *(v32 + 8);
  v54(v36, v30);
  v54(v40, v30);
  sub_1000180EC(v44, &qword_100CADBA0);
  if ((v53 & 1) == 0)
  {
    goto LABEL_58;
  }

LABEL_14:
  v56 = v108;
  v55 = v109;
  memcpy(v130, (v109 + v108[6]), 0x9AuLL);
  memcpy(__dst, (v46 + v108[6]), 0x9AuLL);
  if ((sub_100164780(v130, __dst) & 1) == 0)
  {
    goto LABEL_58;
  }

  sub_1001649E8();
  if ((v57 & 1) == 0 || !sub_100164B1C(*(v55 + v56[8]), *(v46 + v56[8])))
  {
    goto LABEL_58;
  }

  v58 = v56[9];
  v59 = *(v122 + 48);
  v44 = v124;
  sub_100035AD0(v55 + v58, v124, &qword_100CD8AB8);
  v60 = sub_10003C808();
  sub_100035AD0(v60, v61, &qword_100CD8AB8);
  sub_1000038B4(v44, 1, v123);
  if (v50)
  {
    sub_100049CDC();
    if (v50)
    {
      sub_1000180EC(v44, &qword_100CD8AB8);
      goto LABEL_27;
    }

    goto LABEL_25;
  }

  v62 = v121;
  sub_100035AD0(v44, v121, &qword_100CD8AB8);
  sub_100049CDC();
  if (v63)
  {
    sub_100141B3C(v62, type metadata accessor for LocationFooterViewModel);
LABEL_25:
    v51 = &qword_100CD8BE8;
    goto LABEL_11;
  }

  v64 = &v44[v59];
  v65 = v120;
  sub_100187654(v64, v120);
  v66 = sub_10018775C(v62, v65);
  sub_100141B3C(v65, type metadata accessor for LocationFooterViewModel);
  sub_100141B3C(v62, type metadata accessor for LocationFooterViewModel);
  sub_1000180EC(v44, &qword_100CD8AB8);
  if ((v66 & 1) == 0)
  {
    goto LABEL_58;
  }

LABEL_27:
  v67 = v109;
  sub_100019F38();
  if (!v50)
  {
    goto LABEL_58;
  }

  sub_100019F38();
  if (!v50)
  {
    goto LABEL_58;
  }

  sub_100019F38();
  if (!v50)
  {
    goto LABEL_58;
  }

  sub_100019F38();
  if (!v50)
  {
    goto LABEL_58;
  }

  if ((sub_100164ED0(*(v67 + v56[14]), *(v58 + v56[14])) & 1) == 0)
  {
    goto LABEL_58;
  }

  sub_10000C70C(0, &qword_100CA52E0);
  if ((static NSObject.== infix(_:_:)() & 1) == 0)
  {
    goto LABEL_58;
  }

  sub_100019F38();
  if (!v50)
  {
    goto LABEL_58;
  }

  sub_100019F38();
  if (!v50)
  {
    goto LABEL_58;
  }

  sub_100008F08();
  if (!v50 || (static Date.== infix(_:_:)() & 1) == 0)
  {
    goto LABEL_58;
  }

  v68 = *(v116 + 48);
  v69 = v119;
  sub_100035AD0(v109 + v108[20], v119, &qword_100CA60E8);
  sub_100017DD0();
  sub_1000038B4(v69, 1, v118);
  if (v50)
  {
    sub_1000038B4(v119 + v68, 1, v118);
    if (v50)
    {
      sub_1000180EC(v119, &qword_100CA60E8);
      goto LABEL_54;
    }

    goto LABEL_52;
  }

  v70 = v119;
  sub_100035AD0(v119, v117, &qword_100CA60E8);
  sub_1000038B4(v70 + v68, 1, v118);
  if (v71)
  {
    (*(v115 + 8))(v117, v118);
LABEL_52:
    v51 = &qword_100CD8BE0;
    v52 = v119;
    goto LABEL_12;
  }

  v73 = v114;
  v72 = v115;
  v74 = v119;
  v75 = v119 + v68;
  v76 = v118;
  (*(v115 + 32))(v114, v75, v118);
  sub_100164738(&qword_100CA6150, &type metadata accessor for ForegroundEffect);
  v77 = v117;
  v78 = dispatch thunk of static Equatable.== infix(_:_:)();
  v79 = *(v72 + 8);
  v79(v73, v76);
  v79(v77, v76);
  sub_1000180EC(v74, &qword_100CA60E8);
  if ((v78 & 1) == 0)
  {
    goto LABEL_58;
  }

LABEL_54:
  sub_100008F08();
  if (!v50)
  {
    goto LABEL_58;
  }

  sub_10016504C();
  if ((v80 & 1) == 0)
  {
    goto LABEL_58;
  }

  sub_100008F08();
  if (!v50)
  {
    goto LABEL_58;
  }

  v83 = v108[24];
  v84 = *(v109 + v83);
  v85 = *(v125 + v83);
  if (v84 == 25)
  {
    if (v85 != 25)
    {
      goto LABEL_58;
    }
  }

  else
  {
    if (v85 == 25)
    {
      goto LABEL_58;
    }

    v86 = sub_10030D368(v84);
    v88 = v87;
    if (v86 == sub_10030D368(v85) && v88 == v89)
    {
    }

    else
    {
      v91 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v91 & 1) == 0)
      {
        goto LABEL_58;
      }
    }
  }

  sub_100008F08();
  if (!v50)
  {
    goto LABEL_58;
  }

  v92 = *(v111 + 48);
  v93 = v113;
  sub_100035AD0(v109 + v108[26], v113, &qword_100CA65C8);
  sub_100017DD0();
  sub_1000038B4(v93, 1, v112);
  if (!v50)
  {
    v94 = v113;
    sub_100035AD0(v113, v110, &qword_100CA65C8);
    sub_1000038B4(v94 + v92, 1, v112);
    if (!v95)
    {
      v96 = v113;
      v97 = v113 + v92;
      v98 = v107;
      sub_100187654(v97, v107);
      v99 = v110;
      sub_1006E6E98();
      v101 = v100;
      sub_100141B3C(v98, type metadata accessor for PreviewLocation);
      sub_100141B3C(v99, type metadata accessor for PreviewLocation);
      sub_1000180EC(v96, &qword_100CA65C8);
      if ((v101 & 1) == 0)
      {
        goto LABEL_58;
      }

      goto LABEL_83;
    }

    sub_100141B3C(v110, type metadata accessor for PreviewLocation);
    goto LABEL_81;
  }

  sub_1000038B4(v113 + v92, 1, v112);
  if (!v50)
  {
LABEL_81:
    v51 = &qword_100CB8F90;
    v52 = v113;
    goto LABEL_12;
  }

  sub_1000180EC(v113, &qword_100CA65C8);
LABEL_83:
  sub_100008F08();
  if (v50)
  {
    sub_100008F08();
    if (v50)
    {
      v102 = v108[29];
      v103 = *(v109 + v102 + 16);
      v126[0] = *(v109 + v102);
      v126[1] = v103;
      v127 = *(v109 + v102 + 32);
      v104 = v125 + v102;
      v105 = *(v104 + 16);
      v128[0] = *v104;
      v128[1] = v105;
      v129 = *(v104 + 32);
      v81 = static LocationSearchEntity.== infix(_:_:)(v126, v128);
      return v81 & 1;
    }
  }

LABEL_58:
  v81 = 0;
  return v81 & 1;
}

uint64_t sub_100164738(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100164780(uint64_t a1, uint64_t a2)
{
  v4 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_67;
  }

  v5 = *(a1 + 24);
  v6 = *(a1 + 40);
  v7 = *(a2 + 16);
  v8 = *(a2 + 24);
  v9 = *(a2 + 40);
  if (!(v6 >> 6))
  {
    if (v9 >= 0x40)
    {
      goto LABEL_67;
    }

    v15 = *(a1 + 16) == v7 && v5 == v8;
    if (!v15 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_67;
    }

    goto LABEL_29;
  }

  v10 = *(a2 + 32);
  if (v6 >> 6 == 1)
  {
    if ((v9 & 0xC0) != 0x40)
    {
      goto LABEL_67;
    }

    v11 = *(a1 + 32);
    if ((static Image.== infix(_:_:)() & 1) == 0)
    {
      goto LABEL_67;
    }

    if (v5 == v8 && v11 == v10)
    {
      if ((v6 ^ v9))
      {
        goto LABEL_67;
      }
    }

    else
    {
      v13 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v14 = 0;
      if (v13 & 1) == 0 || ((v6 ^ v9))
      {
        return v14 & 1;
      }
    }

    goto LABEL_29;
  }

  if ((v9 & 0xC0) != 0x80)
  {
    goto LABEL_67;
  }

  v14 = 0;
  if (!(v8 | v7 | v10) && v9 == 128)
  {
LABEL_29:
    v16 = *(a1 + 48) == *(a2 + 48) && *(a1 + 56) == *(a2 + 56);
    if (!v16 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_67;
    }

    v17 = *(a1 + 64) == *(a2 + 64) && *(a1 + 72) == *(a2 + 72);
    if (!v17 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_67;
    }

    v18 = *(a1 + 88);
    v19 = *(a2 + 88);
    if (v18)
    {
      if (!v19)
      {
        goto LABEL_67;
      }

      v20 = *(a1 + 80) == *(a2 + 80) && v18 == v19;
      if (!v20 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        goto LABEL_67;
      }

LABEL_48:
      v21 = *(a1 + 96) == *(a2 + 96) && *(a1 + 104) == *(a2 + 104);
      if (v21 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        v22 = *(a1 + 112) == *(a2 + 112) && *(a1 + 120) == *(a2 + 120);
        if (v22 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && ((*(a1 + 128) ^ *(a2 + 128)) & 1) == 0 && ((*(a1 + 129) ^ *(a2 + 129)) & 1) == 0 && ((*(a1 + 130) ^ *(a2 + 130)) & 1) == 0)
        {
          v23 = *(a1 + 136) == *(a2 + 136) && *(a1 + 144) == *(a2 + 144);
          if (v23 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && ((*(a1 + 152) ^ *(a2 + 152)) & 1) == 0)
          {
            v14 = *(a1 + 153) ^ *(a2 + 153) ^ 1;
            return v14 & 1;
          }
        }
      }

      goto LABEL_67;
    }

    if (!v19)
    {
      goto LABEL_48;
    }

LABEL_67:
    v14 = 0;
  }

  return v14 & 1;
}

void sub_1001649E8()
{
  sub_10000C778();
  v2 = *(v0 + 16);
  if (v2 == *(v1 + 16) && v2 && v0 != v1)
  {
    v3 = (v0 + 48);
    v4 = (v1 + 48);
    while (1)
    {
      v5 = *(v3 - 1);
      v6 = *v3;
      v7 = *(v4 - 1);
      v8 = *v4;

      sub_1000053B8();
      sub_1009EED68();
      if ((v9 & 1) == 0)
      {
        break;
      }

      if (v5 == v7 && v6 == v8)
      {
      }

      else
      {
        sub_100014268();
        v11 = sub_10017221C();

        if ((v11 & 1) == 0)
        {
          goto LABEL_16;
        }
      }

      v3 += 3;
      v4 += 3;
      if (!--v2)
      {
        goto LABEL_16;
      }
    }
  }

LABEL_16:
  sub_10000536C();
}

BOOL sub_100164B1C(unint64_t a1, unint64_t a2)
{
  v2 = (a2 >> 59) & 0x1E | (a2 >> 2) & 1;
  switch((a1 >> 59) & 0x1E | (a1 >> 2) & 1)
  {
    case 1uLL:
      if (v2 != 1)
      {
        return 0;
      }

      v17 = sub_10001C320();
      type metadata accessor for NoAqiNewsContent._Storage(v17);
      sub_10001EE00();
      sub_1002D3B8C();
      return v3 & 1;
    case 2uLL:
      if (v2 != 2)
      {
        return 0;
      }

      v13 = sub_10001C320();
      type metadata accessor for SevereContent._Storage(v13);
      sub_10001EE00();
      sub_1002D93A4();
      return v3 & 1;
    case 3uLL:
      if (v2 != 3)
      {
        return 0;
      }

      v15 = sub_10001C320();
      type metadata accessor for NhpContent._Storage(v15);
      sub_10001EE00();
      sub_1002D2A5C();
      return v3 & 1;
    case 4uLL:
      if (v2 != 4)
      {
        return 0;
      }

      v7 = sub_10001C320();
      type metadata accessor for ElevatedAqiSevereContent._Storage(v7);
      sub_10001EE00();
      sub_1002BEE34();
      return v3 & 1;
    case 5uLL:
      if (v2 != 5)
      {
        return 0;
      }

      v20 = sub_10001C320();
      type metadata accessor for DefaultNewsContent._Storage(v20);
      sub_10001EE00();
      sub_1002BDFDC();
      return v3 & 1;
    case 6uLL:
      if (v2 != 6)
      {
        return 0;
      }

      v23 = sub_10001C320();
      type metadata accessor for DefaultTrendNewsContent._Storage(v23);
      sub_10001EE00();
      sub_1002BE220();
      return v3 & 1;
    case 7uLL:
      if (v2 != 7)
      {
        return 0;
      }

      v16 = sub_10001C320();
      type metadata accessor for ElevatedAqiNewsContent._Storage(v16);
      sub_10001EE00();
      sub_1002BECCC();
      return v3 & 1;
    case 8uLL:
      if (v2 != 8)
      {
        return 0;
      }

      v26 = sub_10001C320();
      type metadata accessor for NoAqiSevereNewsContent._Storage(v26);
      sub_10001EE00();
      sub_1002D4390();
      return v3 & 1;
    case 9uLL:
      if (v2 != 9)
      {
        return 0;
      }

      v9 = sub_10001C320();
      type metadata accessor for NoAqiSevereNhpContent._Storage(v9);
      sub_10001EE00();
      sub_1002D44F8();
      return v3 & 1;
    case 0xAuLL:
      if (v2 != 10)
      {
        return 0;
      }

      v25 = sub_10001C320();
      type metadata accessor for NoAqiNhpNewsContent._Storage(v25);
      sub_10001EE00();
      sub_1002D3DA8();
      return v3 & 1;
    case 0xBuLL:
      if (v2 != 11)
      {
        return 0;
      }

      v6 = sub_10001C320();
      type metadata accessor for SevereNhpContent._Storage(v6);
      sub_10001EE00();
      sub_1002D99AC();
      return v3 & 1;
    case 0xCuLL:
      if (v2 != 12)
      {
        return 0;
      }

      v8 = sub_10001C320();
      type metadata accessor for SevereNhpAqiContent._Storage(v8);
      sub_10001EE00();
      sub_1002D979C();
      return v3 & 1;
    case 0xDuLL:
      if (v2 != 13)
      {
        return 0;
      }

      v22 = sub_10001C320();
      type metadata accessor for SevereNewsContent._Storage(v22);
      sub_10001EE00();
      sub_1002D958C();
      return v3 & 1;
    case 0xEuLL:
      if (v2 != 14)
      {
        return 0;
      }

      v5 = sub_10001C320();
      type metadata accessor for NhpNewsContent._Storage(v5);
      sub_10001EE00();
      sub_1002D3458();
      return v3 & 1;
    case 0xFuLL:
      if (v2 != 15)
      {
        return 0;
      }

      v14 = sub_10001C320();
      type metadata accessor for ElevatedAqiSevereNewsContent._Storage(v14);
      sub_10001EE00();
      sub_1002BEF7C();
      return v3 & 1;
    case 0x10uLL:
      if (v2 != 16)
      {
        return 0;
      }

      v4 = sub_10001C320();
      type metadata accessor for NoAqiSevereNhpNewsContent._Storage(v4);
      sub_10001EE00();
      sub_1002D4688();
      return v3 & 1;
    case 0x11uLL:
      if (v2 != 17)
      {
        return 0;
      }

      v18 = sub_10001C320();
      type metadata accessor for ElevatedAqiContent._Storage(v18);
      sub_10001EE00();
      sub_1002BE910();
      return v3 & 1;
    case 0x12uLL:
      if (v2 != 18)
      {
        return 0;
      }

      v24 = sub_10001C320();
      type metadata accessor for NoAqiSevereContent._Storage(v24);
      sub_10001EE00();
      sub_1002D3F08();
      return v3 & 1;
    case 0x13uLL:
      if (v2 != 19)
      {
        return 0;
      }

      v28 = sub_10001C320();
      type metadata accessor for NoAqiNhpContent._Storage(v28);
      sub_10001EE00();
      sub_1002D3CA8();
      return v3 & 1;
    case 0x14uLL:
      if (v2 != 20)
      {
        return 0;
      }

      v19 = sub_10001C320();
      type metadata accessor for NoAqiContent._Storage(v19);
      sub_10001EE00();
      sub_1002D36A8();
      return v3 & 1;
    case 0x15uLL:
      if (v2 != 21)
      {
        return 0;
      }

      v21 = sub_10001C320();
      type metadata accessor for SevereNhpNewsContent._Storage(v21);
      sub_10001EE00();
      sub_1002D9C80();
      return v3 & 1;
    case 0x16uLL:
      if (v2 != 22)
      {
        return 0;
      }

      v27 = sub_10001C320();
      type metadata accessor for MinorAlertContent._Storage(v27);
      sub_10001EE00();
      sub_1002D28F4();
      return v3 & 1;
    case 0x17uLL:
      if (v2 != 23)
      {
        return 0;
      }

      v29 = sub_10001C320();
      type metadata accessor for NhpMinorAlertContent._Storage(v29);
      sub_10001EE00();
      sub_1002D2CD8();
      return v3 & 1;
    case 0x18uLL:
      if (v2 != 24)
      {
        return 0;
      }

      v12 = sub_10001C320();
      type metadata accessor for ElevatedAqiMinorAlertContent._Storage(v12);
      sub_10001EE00();
      sub_1002BEB64();
      return v3 & 1;
    case 0x19uLL:
      return v2 == 25 && a2 == 0xC000000000000004;
    default:
      if (v2)
      {
        return 0;
      }

      type metadata accessor for DefaultContent._Storage(0);
      sub_1002BDE88();
      return v3 & 1;
  }
}

uint64_t sub_100164ED0(unsigned __int8 a1, char a2)
{
  v2 = 0x7974706D65;
  v3 = 0xE500000000000000;
  v4 = a1;
  v5 = 0x7974706D65;
  switch(v4)
  {
    case 1:
      v5 = 0x7469577974706D65;
      v3 = 0xED0000656D614E68;
      break;
    case 2:
      v3 = 0xE700000000000000;
      v5 = 0x656E696C66666FLL;
      break;
    case 3:
      v5 = 0x6574616C75706F70;
      v3 = 0xE900000000000064;
      break;
    default:
      break;
  }

  v6 = 0xE500000000000000;
  switch(a2)
  {
    case 1:
      v2 = 0x7469577974706D65;
      v6 = 0xED0000656D614E68;
      break;
    case 2:
      v6 = 0xE700000000000000;
      v2 = 0x656E696C66666FLL;
      break;
    case 3:
      v2 = 0x6574616C75706F70;
      v6 = 0xE900000000000064;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_100074F38();
  }

  return v8 & 1;
}

void sub_10016504C()
{
  sub_1000B7B64();
  if (v2 != v3 && (sub_1000131F4(), v4))
  {
    v5 = 0;
    sub_1002E4F88();
    sub_100030378();
    v8 = v7 & v6;
    v10 = (v9 + 63) >> 6;
    while (v8)
    {
      sub_1002E587C();
LABEL_12:
      v15 = (*(v0 + 56) + 32 * (v11 | (v5 << 6)));
      v19 = v15[1];
      v20 = *v15;

      sub_10000C918();
      v16 = sub_100031B34();
      v18 = v17;

      if ((v18 & 1) == 0 || (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_s64(*(*(v1 + 56) + 32 * v16), v20), vceqq_s64(*(*(v1 + 56) + 32 * v16 + 16), v19)))) & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    v12 = v5;
    while (1)
    {
      v5 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v5 >= v10)
      {
        goto LABEL_14;
      }

      ++v12;
      if (*(v0 + 64 + 8 * v5))
      {
        sub_1000C825C();
        v8 = v14 & v13;
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_14:
    sub_1000426D8();
  }
}

uint64_t static LocationSearchEntity.== infix(_:_:)(void *a1, void *a2)
{
  v2 = *a1 == *a2 && a1[1] == a2[1];
  if (v2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    EntityProperty.wrappedValue.getter();
    EntityProperty.wrappedValue.getter();

    sub_10000C70C(0, &qword_100CA52E0);
    EntityProperty.wrappedValue.getter();
    EntityProperty.wrappedValue.getter();
    v3 = static NSObject.== infix(_:_:)();
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}

uint64_t sub_1001652B4()
{
  v1 = type metadata accessor for LocationViewPage(0);
  sub_100003810(v1);
  sub_10001164C();
  return sub_100165300(v0 + v2);
}

uint64_t sub_100165300(uint64_t a1)
{
  v2 = type metadata accessor for EnvironmentValues();
  sub_1000037C4();
  v4 = v3;
  __chkstk_darwin(v5);
  sub_1000037D8();
  v8 = v7 - v6;
  v9 = *(a1 + *(type metadata accessor for LocationViewPage(0) + 44) + 8);

  if ((v9 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v10 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v4 + 8))(v8, v2);
  }

  sub_10016544C();
}

uint64_t sub_10016544C()
{
  if (*(v0 + 17) == 1)
  {
    return sub_1005EB058();
  }

  return result;
}

id sub_10016546C()
{
  v1 = type metadata accessor for Location.Identifier();
  sub_1000037C4();
  v3 = v2;
  __chkstk_darwin(v4);
  sub_1000037D8();
  v7 = v6 - v5;
  v8 = type metadata accessor for WeatherActivity();
  __chkstk_darwin(v8 - 8);
  sub_1000037D8();
  v11 = v10 - v9;
  sub_100165E88();
  v12 = sub_100165E14();
  [v12 setEligibleForHandoff:1];
  sub_100165ECC(v0, v11);
  v13 = sub_100024D10(v11, 2, v1);
  if (v13)
  {
    if (v13 == 1)
    {
      sub_100165F30(0);
      v14 = objc_opt_self();
      v15 = [v14 mainBundle];
      sub_100008414(0xD00000000000001DLL, 0x8000000100AC51E0, v16, v17, v18, v19, v20, 0xD000000000000052);
      sub_100008478();

      sub_1003C1790("at the user's current location", 0x8000000100AC5200, v12);
      sub_10022C350(&qword_100CA7300);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_100A2C3F0;
      v22 = [v14 mainBundle];
      v75._object = 0x8000000100AC5130;
      sub_100014500();
      sub_1000080F4();
      v75._countAndFlagsBits = 0xD000000000000036;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v23, v24, v25, v26, v75);
      sub_100008478();

      *(inited + 32) = 0x8000000100AC5130;
      *(inited + 40) = 0x8000000100AC5200;
      sub_100166668(inited);
      Set._bridgeToObjectiveC()();
      sub_100004088();

      sub_1000177C4(v27, "setKeywords:");
    }

    else
    {
      sub_100165F30(1);
      v30 = objc_opt_self();
      v31 = [v30 mainBundle];
      sub_100008414(0xD00000000000001BLL, 0x8000000100AC50C0, v32, v33, v34, v35, v36, 0xD000000000000048);
      sub_100008478();

      sub_1003C1790("com.apple.weather.useractivity", 0x8000000100AC50E0, v12);
      sub_10022C350(&qword_100CA7300);
      v37 = swift_initStackObject();
      *(v37 + 16) = xmmword_100A2D320;
      v38 = [v30 mainBundle];
      v76._object = 0x8000000100AC5130;
      v39._countAndFlagsBits = sub_100014500();
      v39._object = 0xE700000000000000;
      v40._countAndFlagsBits = 0;
      v40._object = 0xE000000000000000;
      v76._countAndFlagsBits = 0xD000000000000036;
      v41 = NSLocalizedString(_:tableName:bundle:value:comment:)(v39, 0, v38, v40, v76);

      *(v37 + 32) = v41;
      v42 = [v30 mainBundle];
      v77._object = 0x8000000100AC5170;
      sub_1000080F4();
      NSLocalizedString(_:tableName:bundle:value:comment:)(v43, v44, v45, v46, v77);
      sub_100008478();

      *(v37 + 48) = 0x8000000100AC5170;
      *(v37 + 56) = v41._countAndFlagsBits;
      sub_100166668(v37);
      Set._bridgeToObjectiveC()();
      sub_100004088();

      sub_1000177C4(v47, "setKeywords:");

      if (qword_100CA2950 != -1)
      {
        swift_once();
      }

      v48 = static WeatherLocation.currentLocationID;
      v49 = *algn_100D911C8;
      swift_bridgeObjectRetain_n();
      sub_100014514();
      sub_1001667EC(v48, v49, v50, 0xEA00000000004449);
      sub_10000FE74();
      sub_1001667EC(v48, v49, v51, v52);
    }
  }

  else
  {
    (*(v3 + 32))(v7, v11, v1);
    sub_100165F30(1);
    sub_1001664CC();
    if (v28)
    {
      v29 = String._bridgeToObjectiveC()();
    }

    else
    {
      v29 = 0;
    }

    [v12 setTitle:v29];

    sub_10022C350(&qword_100CA7300);
    v53 = swift_initStackObject();
    *(v53 + 16) = xmmword_100A2D320;
    v54 = [objc_opt_self() mainBundle];
    v78._object = 0x8000000100AC5130;
    sub_100014500();
    sub_1000080F4();
    v78._countAndFlagsBits = 0xD000000000000036;
    v59 = NSLocalizedString(_:tableName:bundle:value:comment:)(v55, v56, v57, v58, v78);

    *(v53 + 32) = v59;
    *(v53 + 48) = Location.Identifier.name.getter();
    *(v53 + 56) = v60;
    sub_100166668(v53);
    isa = Set._bridgeToObjectiveC()().super.isa;

    [v12 setKeywords:isa];

    Location.Identifier.coordinate.getter();
    v63 = v62;
    v65 = v64;
    Double.write<A>(to:)();
    v66._countAndFlagsBits = 44;
    v66._object = 0xE100000000000000;
    String.append(_:)(v66);
    Double.write<A>(to:)();
    sub_100014514();
    sub_1001667EC(v67, v68, v69, 0xEA00000000004449);
    Location.Identifier.name.getter();
    sub_10000FE74();
    sub_1001667EC(v70, v71, v72, v73);
    sub_100166974(v63, 0, 7627116, 0xE300000000000000);
    sub_100166974(v65, 0, 1735290732, 0xE400000000000000);
    (*(v3 + 8))(v7, v1);
  }

  return v12;
}

void sub_100165B28()
{
  v1 = *(type metadata accessor for ActivityModifier() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  sub_100165B88(v2);
}

void sub_100165B88(uint64_t a1)
{
  v2 = type metadata accessor for ActivityModifier();
  __chkstk_darwin(v2 - 8);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v22 - v6;
  if (qword_100CA2760 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_10000703C(v8, qword_100D90C78);
  sub_10015F498(a1, v7);
  sub_10015F498(a1, v4);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    *v11 = 136315651;
    v12 = sub_1003C0FB8();
    v14 = v13;
    sub_1009E2E78(v7);
    v15 = sub_100078694(v12, v14, &v23);

    *(v11 + 4) = v15;
    *(v11 + 12) = 2160;
    *(v11 + 14) = 1752392040;
    *(v11 + 22) = 2081;
    v16 = sub_1003C0E58();
    if (v17)
    {
      v18 = v16;
    }

    else
    {
      v18 = 1701736302;
    }

    if (v17)
    {
      v19 = v17;
    }

    else
    {
      v19 = 0xE400000000000000;
    }

    sub_1009E2E78(v4);
    v20 = sub_100078694(v18, v19, &v23);

    *(v11 + 24) = v20;
    _os_log_impl(&_mh_execute_header, v9, v10, "[ActivityModifier.onAppear] Marking activity as current: %s, Arg=%{private,mask.hash}s", v11, 0x20u);
    swift_arrayDestroy();
  }

  else
  {

    sub_1009E2E78(v4);
    sub_1009E2E78(v7);
  }

  v21 = sub_10016546C();
  [v21 becomeCurrent];
}

id sub_100165E14()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = String._bridgeToObjectiveC()();

  v2 = [v0 initWithActivityType:v1];

  return v2;
}

unint64_t sub_100165E88()
{
  result = qword_100CB3D90;
  if (!qword_100CB3D90)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100CB3D90);
  }

  return result;
}

uint64_t sub_100165ECC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WeatherActivity();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_100165F30(void *a1)
{
  if (sub_100166104(v1))
  {
    sub_100019628();
    *&v47 = v3;
    *(&v47 + 1) = v4;
    AnyHashable.init<A>(_:)();
    if (a1 == 2)
    {
      sub_100166298(v49);
      if (v5)
      {
        sub_100004088();
        swift_isUniquelyReferenced_nonNull_native();
        sub_100074948();
        v6 = sub_10022C350(&qword_100CA3A98);
        v14 = sub_10002836C(v6, v7, v8, v9, v10, v11, v12, v13, v38, v41, v44);
        v22 = sub_100022AAC(v14, v15, v16, v17, v18, v19, v20, v21, v39, v42, v44);
        sub_10006953C(v22, v23, v24, v25, v26, v27, v28, v29, v40, v43, v44, *(&v44 + 1), v45, v46, v47);
        sub_10004E500();
      }

      else
      {
        sub_10003C3F4();
      }

      sub_100166478(v49);
      sub_1003C1574(&v47);
    }

    else
    {
      v33 = 0x7473694C79746963;
      if (a1)
      {
        v33 = 0x6174654479746963;
      }

      v34 = 0xEC00000077656956;
      v48 = &type metadata for String;
      if (a1)
      {
        v34 = 0xEE00776569566C69;
      }

      *&v47 = v33;
      *(&v47 + 1) = v34;
      sub_100166170(&v47, &v44);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      sub_100005A60(isUniquelyReferenced_nonNull_native, v36);
      v37 = sub_100166478(v49);
      if (!v41)
      {
        a1 = 0;
        goto LABEL_17;
      }
    }

    Dictionary._bridgeToObjectiveC()();
    sub_100004088();

LABEL_17:
    sub_1000177C4(v37, "setUserInfo:");

    sub_10000CA28();
    return;
  }

  sub_10000CA28();

  [v30 v31];
}

uint64_t sub_100166104(void *a1)
{
  v1 = [a1 userInfo];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

_OWORD *sub_100166170(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

_OWORD *sub_100166180(uint64_t a1, uint64_t a2)
{
  v5 = sub_100074624(a1, a2);
  sub_100166298(v5);
  sub_10001E5DC();
  if (v8)
  {
    __break(1u);
LABEL_12:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v9 = v6;
  v10 = v7;
  sub_10022C350(&qword_100CA3A98);
  v11 = sub_100017530();
  if (_NativeDictionary.ensureUnique(isUnique:capacity:)(v11, v12))
  {
    v13 = sub_100037064();
    sub_100166298(v13);
    sub_100013444();
    if (!v15)
    {
      goto LABEL_12;
    }

    v9 = v14;
  }

  v16 = *v3;
  if (v10)
  {
    v17 = (v16[7] + 32 * v9);
    sub_100006F14(v17);

    return sub_100166170(v2, v17);
  }

  else
  {
    sub_1001663A0(a2, v19);
    return sub_1001663FC(v9, v19, v2, v16);
  }
}

unint64_t sub_100166298(uint64_t a1)
{
  v2 = v1;
  v4 = AnyHashable._rawHashValue(seed:)(*(v2 + 40));

  return sub_1001662DC(a1, v4);
}

unint64_t sub_1001662DC(uint64_t a1, uint64_t a2)
{
  v3 = ~(-1 << *(v2 + 32));
  for (i = a2 & v3; ((1 << i) & *(v2 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v3)
  {
    sub_1001663A0(*(v2 + 48) + 40 * i, v7);
    v5 = static AnyHashable.== infix(_:_:)();
    sub_100166478(v7);
    if (v5)
    {
      break;
    }
  }

  return i;
}

_OWORD *sub_1001663FC(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v5 = a4[6] + 40 * a1;
  v6 = *(a2 + 16);
  *v5 = *a2;
  *(v5 + 16) = v6;
  *(v5 + 32) = *(a2 + 32);
  result = sub_100166170(a3, (a4[7] + 32 * a1));
  v8 = a4[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v10;
  }

  return result;
}

uint64_t sub_1001664CC()
{
  v0 = Location.Identifier.kind.getter();
  v1 = [objc_opt_self() mainBundle];
  if (v0)
  {
    v12._object = 0x8000000100AC50E0;
    v2._countAndFlagsBits = 0xD00000000000001BLL;
    v2._object = 0x8000000100AC50C0;
    v12._countAndFlagsBits = 0xD000000000000048;
    v3._countAndFlagsBits = 0;
    v3._object = 0xE000000000000000;
    countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v2, 0, v1, v3, v12)._countAndFlagsBits;
  }

  else
  {
    v13._object = 0x8000000100AC5280;
    v5._object = 0x8000000100AC5260;
    v13._countAndFlagsBits = 0xD000000000000040;
    v5._countAndFlagsBits = 0xD000000000000012;
    v6._countAndFlagsBits = 0;
    v6._object = 0xE000000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v5, 0, v1, v6, v13);

    sub_10022C350(&qword_100CA40C8);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_100A2C3F0;
    v8 = Location.Identifier.name.getter();
    v10 = v9;
    *(v7 + 56) = &type metadata for String;
    *(v7 + 64) = sub_100035744();
    *(v7 + 32) = v8;
    *(v7 + 40) = v10;
    countAndFlagsBits = static String.localizedStringWithFormat(_:_:)();
  }

  return countAndFlagsBits;
}

uint64_t sub_100166668(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    v3 = &_swiftEmptySetSingleton;
    goto LABEL_19;
  }

  sub_10022C350(&qword_100CACD28);
  result = sub_100028228();
  v3 = result;
  v4 = *(a1 + 16);
  if (!v4)
  {
LABEL_19:

    return v3;
  }

  v5 = 0;
  v6 = result + 56;
  while (v5 < *(a1 + 16))
  {
    v7 = (a1 + 32 + 16 * v5);
    v9 = *v7;
    v8 = v7[1];
    ++v5;
    Hasher.init(_seed:)();

    String.hash(into:)();
    result = Hasher._finalize()();
    v10 = ~(-1 << v3[32]);
    while (1)
    {
      v11 = result & v10;
      v12 = (result & v10) >> 6;
      v13 = *(v6 + 8 * v12);
      v14 = 1 << (result & v10);
      if ((v14 & v13) == 0)
      {
        break;
      }

      v15 = (*(v3 + 6) + 16 * v11);
      v16 = *v15 == v9 && v15[1] == v8;
      if (v16 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        goto LABEL_16;
      }

      result = v11 + 1;
    }

    *(v6 + 8 * v12) = v14 | v13;
    v17 = (*(v3 + 6) + 16 * v11);
    *v17 = v9;
    v17[1] = v8;
    v18 = *(v3 + 2);
    v19 = __OFADD__(v18, 1);
    v20 = v18 + 1;
    if (v19)
    {
      goto LABEL_21;
    }

    *(v3 + 2) = v20;
LABEL_16:
    if (v5 == v4)
    {
      goto LABEL_19;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

void sub_1001667EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (sub_10001372C())
  {
    *&v48 = a3;
    *(&v48 + 1) = a4;
    AnyHashable.init<A>(_:)();
    if (v4)
    {
      v49 = &type metadata for String;
      *&v48 = v5;
      *(&v48 + 1) = v4;
      sub_100166170(&v48, &v45);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      sub_100005A60(isUniquelyReferenced_nonNull_native, v9);
      v10 = sub_100166478(v50);
      if (!v42)
      {
        v4 = 0;
        goto LABEL_13;
      }
    }

    else
    {
      sub_100166298(v50);
      if (v14)
      {
        sub_100004088();
        swift_isUniquelyReferenced_nonNull_native();
        sub_100074948();
        v15 = sub_10022C350(&qword_100CA3A98);
        v23 = sub_10002836C(v15, v16, v17, v18, v19, v20, v21, v22, v39, v42, v45);
        v31 = sub_100022AAC(v23, v24, v25, v26, v27, v28, v29, v30, v40, v43, v45);
        sub_10006953C(v31, v32, v33, v34, v35, v36, v37, v38, v41, v44, v45, *(&v45 + 1), v46, v47, v48);
        sub_10004E500();
      }

      else
      {
        sub_10003C3F4();
      }

      sub_100166478(v50);
      sub_1003C1574(&v48);
    }

    Dictionary._bridgeToObjectiveC()();
    sub_100004088();

LABEL_13:
    sub_1000177C4(v10, "setUserInfo:");

    sub_10000CA28();
    return;
  }

  sub_10000CA28();

  [v11 v12];
}

void sub_100166974(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_100004088();
  if (sub_100166104(v8))
  {
    *&v50 = a3;
    *(&v50 + 1) = a4;
    AnyHashable.init<A>(_:)();
    if (a2)
    {
      sub_100166298(v52);
      if (v9)
      {
        sub_100004088();
        swift_isUniquelyReferenced_nonNull_native();
        sub_100074948();
        v10 = sub_10022C350(&qword_100CA3A98);
        v18 = sub_10002836C(v10, v11, v12, v13, v14, v15, v16, v17, v41, v44, v47);
        v26 = sub_100022AAC(v18, v19, v20, v21, v22, v23, v24, v25, v42, v45, v47);
        sub_10006953C(v26, v27, v28, v29, v30, v31, v32, v33, v43, v46, v47, *(&v47 + 1), v48, v49, v50);
        sub_10004E500();
      }

      else
      {
        sub_10003C3F4();
      }

      sub_100166478(v52);
      sub_1003C1574(&v50);
    }

    else
    {
      v51 = &type metadata for String;
      *&v50 = Double.description.getter();
      *(&v50 + 1) = v37;
      sub_100166170(&v50, &v47);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      sub_100005A60(isUniquelyReferenced_nonNull_native, v39);
      v40 = sub_100166478(v52);
      if (!v44)
      {
        v4 = 0;
        goto LABEL_13;
      }
    }

    Dictionary._bridgeToObjectiveC()();
    sub_100004088();

LABEL_13:
    sub_1000177C4(v40, "setUserInfo:");

    sub_10000CA28();
    return;
  }

  sub_10000CA28();

  [v34 v35];
}

uint64_t sub_100166B04(uint64_t (*a1)(uint64_t))
{
  v2 = type metadata accessor for LocationViewCollisionOptionsUpdatingView(0);
  sub_100003810(v2);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return a1(v4);
}

uint64_t sub_100166B8C(uint64_t a1)
{
  v2 = sub_10022C350(&qword_100CADBA0);
  __chkstk_darwin(v2 - 8);
  v4 = &v12 - v3;
  v5 = (a1 + *(type metadata accessor for LocationViewCollisionOptionsUpdatingView(0) + 36));
  v6 = *v5;
  v7 = v5[1];
  v13 = *v5;
  v14 = v7;
  sub_10022C350(&qword_100CCB838);
  State.wrappedValue.getter();
  v8 = sub_100166CDC();

  if ((v8 & 1) == 0)
  {
    v13 = v6;
    v14 = v7;
    State.wrappedValue.getter();
    sub_100166DD4(1);

    v10 = *(a1 + 80);
    v11 = type metadata accessor for Location.Identifier();
    sub_10001B350(v4, 1, 1, v11);
    sub_100166F44(v10, v4);
    return sub_1000180EC(v4, &qword_100CADBA0);
  }

  return result;
}

uint64_t sub_100166CDC()
{
  swift_getKeyPath();
  sub_100061E3C(&qword_100CCB840, type metadata accessor for LocationViewCollisionOptionsUpdatingViewState);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + 16);
}

uint64_t sub_100166D7C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_100166CDC();
  *a1 = result & 1;
  return result;
}

uint64_t sub_100166DD4(uint64_t result)
{
  if (*(v1 + 16) == (result & 1))
  {
    *(v1 + 16) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100166E7C();
  }

  return result;
}

uint64_t sub_100166F44(uint64_t a1, uint64_t a2)
{
  v70 = a2;
  v65 = a1;
  v69 = type metadata accessor for LayoutDirection();
  v68 = *(v69 - 8);
  __chkstk_darwin(v69);
  v67 = &v59 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v66 = &v59 - v4;
  v63 = type metadata accessor for EnvironmentValues();
  v62 = *(v63 - 8);
  __chkstk_darwin(v63);
  v61 = &v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Location.Identifier();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v60 = &v59 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10022C350(&qword_100CADD58);
  __chkstk_darwin(v9);
  v11 = &v59 - v10;
  active = type metadata accessor for ActiveLocationModel(0);
  __chkstk_darwin(active - 8);
  v14 = &v59 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10022C350(&qword_100CADBA0);
  __chkstk_darwin(v15 - 8);
  v64 = &v59 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v59 - v18;
  __chkstk_darwin(v20);
  v22 = &v59 - v21;
  __chkstk_darwin(v23);
  v25 = &v59 - v24;
  sub_100035AD0(v70, v22, &qword_100CADBA0);
  if (sub_100024D10(v22, 1, v6) == 1)
  {
    v26 = v7;
    type metadata accessor for LocationViewCollisionOptionsUpdatingView(0);
    v27 = v71;
    sub_1000E7B34();
    sub_1000E90D8(v14, v25);
    if (sub_100024D10(v22, 1, v6) != 1)
    {
      sub_1000180EC(v22, &qword_100CADBA0);
    }
  }

  else
  {
    v26 = v7;
    (*(v7 + 32))(v25, v22, v6);
    sub_10001B350(v25, 0, 1, v6);
    v27 = v71;
  }

  v28 = type metadata accessor for LocationViewCollisionOptionsUpdatingView(0);
  v29 = v26;
  (*(v26 + 16))(v19, &v27[v28[6]], v6);
  sub_10001B350(v19, 0, 1, v6);
  v30 = *(v9 + 48);
  sub_100035AD0(v19, v11, &qword_100CADBA0);
  v71 = v25;
  sub_100035AD0(v25, &v11[v30], &qword_100CADBA0);
  if (sub_100024D10(v11, 1, v6) == 1)
  {
    sub_1000180EC(v19, &qword_100CADBA0);
    if (sub_100024D10(&v11[v30], 1, v6) == 1)
    {
      sub_1000180EC(v11, &qword_100CADBA0);
      goto LABEL_14;
    }
  }

  else
  {
    v31 = v64;
    sub_100035AD0(v11, v64, &qword_100CADBA0);
    if (sub_100024D10(&v11[v30], 1, v6) != 1)
    {
      v32 = &v11[v30];
      v33 = v60;
      (*(v29 + 32))(v60, v32, v6);
      sub_100061E3C(&qword_100CA3A48, &type metadata accessor for Location.Identifier);
      LODWORD(v70) = dispatch thunk of static Equatable.== infix(_:_:)();
      v34 = *(v29 + 8);
      v34(v33, v6);
      sub_1000180EC(v19, &qword_100CADBA0);
      v34(v31, v6);
      sub_1000180EC(v11, &qword_100CADBA0);
      if (v70)
      {
        goto LABEL_14;
      }

      goto LABEL_11;
    }

    sub_1000180EC(v19, &qword_100CADBA0);
    (*(v29 + 8))(v31, v6);
  }

  sub_1000180EC(v11, &qword_100CADD58);
LABEL_11:
  if (v27[v28[7]] != 1)
  {
    goto LABEL_26;
  }

LABEL_14:
  memcpy(__dst, v27, 0x49uLL);
  if (__dst[9])
  {
    memcpy(v72, v27, sizeof(v72));
  }

  else
  {

    static os_log_type_t.fault.getter();
    v35 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    v36 = v61;
    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000180EC(__dst, &qword_100CB71A8);
    (*(v62 + 8))(v36, v63);
  }

  v37 = *&v72[5];
  v38 = sub_100167998(0, v65);
  if (v38)
  {
    v39 = v38;
  }

  else
  {
    v39 = _swiftEmptyArrayStorage;
  }

  v72[0] = v39;

  sub_1001679E4(v72);

  v41 = v72[0];
  __chkstk_darwin(v40);
  *(&v59 - 2) = v27;
  v42 = sub_100167DC4(sub_1001681B4, (&v59 - 4), v41);

  v43 = v66;
  sub_1006007F0(v66);
  v44 = v68;
  v45 = v67;
  v46 = v69;
  (*(v68 + 104))(v67, enum case for LayoutDirection.rightToLeft(_:), v69);
  LOBYTE(v41) = static LayoutDirection.== infix(_:_:)();
  v47 = *(v44 + 8);
  v47(v45, v46);
  v47(v43, v46);
  if (v41)
  {
    sub_1002EC244(v42);
    v42 = v48;
  }

  if (*&v27[v28[11]])
  {
    v49 = v37;

    v50 = sub_10011BE3C();
    v52 = v51;
    v53 = v50;

    if (v52 == v49)
    {
      v54 = sub_10013D334(v53, v42);

      if (v54)
      {

LABEL_26:
        v55 = v71;
        return sub_1000180EC(v55, &qword_100CADBA0);
      }
    }

    else
    {
    }

    v56 = sub_1001681FC(v42, v49);
    v57 = v71;
    if (v56 > 0.0)
    {

      sub_100168264();

      v55 = v57;
      return sub_1000180EC(v55, &qword_100CADBA0);
    }

    sub_1000180EC(v71, &qword_100CADBA0);
  }

  else
  {
    type metadata accessor for LocationViewCollisionOptions();
    sub_100061E3C(&qword_100CACC60, type metadata accessor for LocationViewCollisionOptions);

    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_100167998(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v2 = sub_1000D5F5C(a1);
  if ((v3 & 1) == 0)
  {
    return 0;
  }

  sub_100015064(v2);
}

Swift::Int sub_1001679E4(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_100167B18();
    v2 = v3;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  result = sub_100167B30(v6);
  *a1 = v2;
  return result;
}

void sub_100167A50()
{
  sub_1000210F4();
  if (v4)
  {
    sub_100014CB4();
    if (v5 != v6)
    {
      sub_100030000();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_100008C84();
    }
  }

  sub_100037C7C();
  if (v2)
  {
    sub_10022C350(&qword_100CAC480);
    v7 = sub_1000BCEFC();
    j__malloc_size(v7);
    sub_100016D38();
    v7[2] = v3;
    v7[3] = v8;
  }

  else
  {
    v7 = _swiftEmptyArrayStorage;
  }

  v9 = sub_1000B0EB8();
  if (v1)
  {
    if (v7 != v0 || &v10[16 * v3] <= v9)
    {
      memmove(v9, v10, 16 * v3);
    }

    v0[2] = 0;
  }

  else
  {
    memcpy(v9, v10, 16 * v3);
  }
}

Swift::Int sub_100167B30(uint64_t *a1)
{
  v2 = a1[1];
  result = _minimumMergeRunLength(_:)(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = _swiftEmptyArrayStorage;
      }

      else
      {
        sub_10022C350(&qword_100CBD760);
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v6[2] = v5;
      }

      v7[0] = (v6 + 4);
      v7[1] = v5;
      sub_100601100(v7, v8, a1, v4);
      v6[2] = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_100167C34(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_100167C34(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 16 * a3 - 16;
    v6 = result - a3;
    while (2)
    {
      v7 = *(v4 + 16 * a3);
      v8 = v6;
      v9 = v5;
      do
      {
        if (v7 >= *v9)
        {
          break;
        }

        if (!v4)
        {
          __break(1u);
          return result;
        }

        v10 = *(v9 + 24);
        *(v9 + 16) = *v9;
        *v9 = v7;
        *(v9 + 8) = v10;
        v9 -= 16;
      }

      while (!__CFADD__(v8++, 1));
      ++a3;
      v5 += 16;
      --v6;
      if (a3 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

char *sub_100167CA4(char *result, int64_t a2, char a3, char *a4)
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
    sub_10022C350(&qword_100CD1508);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[4 * v8] <= v12)
    {
      memmove(v12, v13, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 4 * v8);
  }

  return v10;
}

char *sub_100167DA4(char *a1, int64_t a2, char a3)
{
  result = sub_100167CA4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_100167DC4(void (*a1)(int *__return_ptr, __int128 *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = *(a3 + 16);
  v6 = _swiftEmptyArrayStorage;
  if (!v5)
  {
    return v6;
  }

  v21 = _swiftEmptyArrayStorage;
  v9 = sub_100071ECC();
  sub_100167DA4(v9, v10, v11);
  v6 = _swiftEmptyArrayStorage;
  for (i = (a3 + 32); ; ++i)
  {
    v19 = *i;
    a1(&v20, &v19);
    if (v4)
    {
      break;
    }

    v4 = 0;
    v13 = v20;
    v21 = v6;
    v14 = v6[2];
    if (v14 >= v6[3] >> 1)
    {
      sub_100120158();
      sub_100167DA4(v15, v16, v17);
      v6 = v21;
    }

    v6[2] = v14 + 1;
    *(v6 + v14 + 8) = v13;
    if (!--v5)
    {
      return v6;
    }
  }

  __break(1u);
  return result;
}

void sub_100167ED4(void *a1@<X0>, const void *a2@<X1>, float *a3@<X8>)
{
  v6 = type metadata accessor for EnvironmentValues();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v20[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v10 = a1[1];
  if (__OFSUB__(v10, *a1))
  {
    __break(1u);
  }

  else
  {
    v24 = v10 - *a1;
    memcpy(__dst, a2, 0x49uLL);
    if (__dst[9])
    {
      memcpy(v21, a2, 0x48uLL);
    }

    else
    {

      static os_log_type_t.fault.getter();
      v11 = static Log.runtimeIssuesLog.getter();
      v19 = v7;
      v12 = v11;
      os_log(_:dso:log:_:_:)();

      v7 = v19;
      EnvironmentValues.init()();
      swift_getAtKeyPath();
      sub_1000180EC(__dst, &qword_100CB71A8);
      (*(v7 + 8))(v9, v6);
    }

    v13 = *&v21[5];
    memcpy(v21, a2, 0x49uLL);
    if (v21[9])
    {
      memcpy(v20, a2, sizeof(v20));
    }

    else
    {

      static os_log_type_t.fault.getter();
      v14 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      EnvironmentValues.init()();
      swift_getAtKeyPath();
      sub_1000180EC(v21, &qword_100CB71A8);
      (*(v7 + 8))(v9, v6);
    }

    v16 = v24 + -1.0;
    if (v16 < 0.0)
    {
      v16 = 0.0;
    }

    v17 = v16 * v13;
    memcpy(v22, v20, sizeof(v22));
    v15 = v24;
    v18 = v17 + sub_10014B28C() * v15;
    *a3 = v18;
  }
}

float sub_1001681FC(uint64_t a1, float a2)
{
  v3 = *(a1 + 16);
  if (v3 <= 1)
  {
    v3 = 1;
  }

  v4 = v3 - 1;
  Array<A>.total.getter();
  return v6 + (v4 * a2);
}

uint64_t sub_100168264()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t sub_1001682E4(uint64_t (*a1)(uint64_t))
{
  sub_100019410();
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_100168364(uint64_t a1)
{
  v2 = type metadata accessor for LocationViewObserverViewState.Reason(0);
  __chkstk_darwin(v2 - 8);
  v59 = &v48[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = type metadata accessor for ScenePhase();
  v53 = *(v4 - 8);
  v54 = v4;
  __chkstk_darwin(v4);
  v52 = &v48[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v51 = &v48[-v7];
  v8 = type metadata accessor for Location.Identifier();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v50 = &v48[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = sub_10022C350(&qword_100CADD58);
  v12 = v11 - 8;
  __chkstk_darwin(v11);
  v14 = &v48[-v13];
  active = type metadata accessor for ActiveLocationModel(0);
  __chkstk_darwin(active - 8);
  v17 = &v48[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v57 = sub_10022C350(&qword_100CADBA0);
  __chkstk_darwin(v57);
  v55 = &v48[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v19);
  v21 = &v48[-v20];
  __chkstk_darwin(v22);
  v24 = &v48[-v23];
  v25 = type metadata accessor for LocationViewObserverView(0);
  v26 = *(v25 + 24);
  v56 = v9;
  v27 = v9;
  v28 = v25;
  v29 = *(v27 + 16);
  v58 = v26;
  v29(v24, a1 + v26, v8);
  sub_10001B350(v24, 0, 1, v8);
  v60 = a1;
  sub_1000E7B34();
  sub_1000E90D8(v17, v21);
  v30 = *(v12 + 56);
  sub_100035AD0(v24, v14, &qword_100CADBA0);
  sub_100035AD0(v21, &v14[v30], &qword_100CADBA0);
  if (sub_100024D10(v14, 1, v8) == 1)
  {
    sub_100018144(v21, &qword_100CADBA0);
    sub_100018144(v24, &qword_100CADBA0);
    v31 = sub_100024D10(&v14[v30], 1, v8);
    v32 = v60;
    if (v31 == 1)
    {
      sub_100018144(v14, &qword_100CADBA0);
LABEL_9:
      v40 = v51;
      sub_100337728(v51);
      v42 = v52;
      v41 = v53;
      v43 = v54;
      (*(v53 + 104))(v52, enum case for ScenePhase.background(_:), v54);
      sub_100067294(&qword_100CE11D0, &type metadata accessor for ScenePhase);
      v44 = dispatch thunk of static Equatable.== infix(_:_:)();
      v45 = *(v41 + 8);
      v45(v42, v43);
      v45(v40, v43);
      v34 = v44 ^ 1;
      goto LABEL_10;
    }

    goto LABEL_6;
  }

  v33 = v55;
  sub_100035AD0(v14, v55, &qword_100CADBA0);
  if (sub_100024D10(&v14[v30], 1, v8) == 1)
  {
    sub_100018144(v21, &qword_100CADBA0);
    sub_100018144(v24, &qword_100CADBA0);
    (*(v56 + 8))(v33, v8);
    v32 = v60;
LABEL_6:
    sub_100018144(v14, &qword_100CADD58);
    goto LABEL_7;
  }

  v35 = v56;
  v36 = &v14[v30];
  v37 = v50;
  (*(v56 + 32))(v50, v36, v8);
  sub_100067294(&qword_100CA3A48, &type metadata accessor for Location.Identifier);
  v49 = dispatch thunk of static Equatable.== infix(_:_:)();
  v38 = v33;
  v39 = *(v35 + 8);
  v39(v37, v8);
  sub_100018144(v21, &qword_100CADBA0);
  sub_100018144(v24, &qword_100CADBA0);
  v39(v38, v8);
  sub_100018144(v14, &qword_100CADBA0);
  v32 = v60;
  if (v49)
  {
    goto LABEL_9;
  }

LABEL_7:
  v34 = 0;
LABEL_10:
  v46 = v59;
  sub_10001B350(v59, 1, 4, v57);
  type metadata accessor for LocationViewObserverViewState();
  sub_100067294(&qword_100CADCD8, type metadata accessor for LocationViewObserverViewState);
  StateObject.wrappedValue.getter();
  sub_100338B6C(v34 & 1, v32 + v58, *(v32 + *(v28 + 28)), *(v32 + *(v28 + 28) + 8), *(v32 + *(v28 + 36)), v46);

  return sub_100339ADC(v46);
}

uint64_t sub_100168A78()
{
  v0 = sub_10011BE3C();
  v2 = v1;
  v3 = v0;
  v4 = sub_10011BE3C();
  if (v2 == v5)
  {
    v6 = sub_10013D334(v3, v4);
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

uint64_t sub_100168B1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10)
{
  if ((a10 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_100168B2C()
{
  v1 = v0;
  v2 = sub_10022C350(&qword_100CA6F08);
  __chkstk_darwin(v2);
  v4 = v13 - v3;
  sub_10010E5F4(v1, v13);
  v5 = swift_allocObject();
  v6 = v13[1];
  v5[1] = v13[0];
  v5[2] = v6;
  v5[3] = v13[2];
  Button.init(action:label:)();
  v7 = *v1;
  KeyPath = swift_getKeyPath();
  v9 = swift_allocObject();
  *(v9 + 16) = (v7 & 1) == 0;
  v10 = &v4[*(v2 + 36)];
  *v10 = KeyPath;
  v10[1] = sub_100168F20;
  v10[2] = v9;
  sub_10022C350(&qword_100CB2D40);
  sub_10012E508();
  sub_100005A00();
  sub_100006F64(v11, &qword_100CB2D40);
  View.accessibilityShowsLargeContentViewer<A>(_:)();
  return sub_100168EAC(v4);
}

uint64_t sub_100168D0C()
{
  sub_100006F14(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_100168D60@<X0>(uint64_t *a1@<X8>)
{
  result = Image.init(systemName:)();
  *a1 = result;
  return result;
}

uint64_t sub_100168D94@<X0>(uint64_t a1@<X8>)
{
  v2 = static HorizontalAlignment.center.getter();
  v3 = Image.init(systemName:)();
  LocalizedStringKey.init(stringLiteral:)();
  v4 = Text.init(_:tableName:bundle:comment:)();
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v8 &= 1u;
  sub_10010CD54(v4, v6, v8);

  sub_10010CD64(v4, v6, v8);

  *a1 = v2;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 24) = v3;
  *(a1 + 32) = v4;
  *(a1 + 40) = v6;
  *(a1 + 48) = v8;
  *(a1 + 56) = v10;
  return result;
}

uint64_t sub_100168EAC(uint64_t a1)
{
  v2 = sub_10022C350(&qword_100CA6F08);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100168F38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10012E5EC(&qword_100CC91C8);

  return static UIViewRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

void sub_100168FD8()
{
  sub_1000F0FF4(319, &unk_100CC9090, &type metadata accessor for Location.Identifier, &type metadata accessor for Binding);
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1001690A8()
{
  sub_10022C350(&qword_100CC9118);
  sub_1000037E8();
  __chkstk_darwin(v0);
  v2 = &v5 - v1;
  type metadata accessor for LocationViewerPageControl(0);
  Binding.projectedValue.getter();
  type metadata accessor for LocationViewerPageControl.Coordinator(0);
  v3 = swift_allocObject();
  *(v3 + OBJC_IVAR____TtCV7Weather25LocationViewerPageControl11Coordinator_pages) = _swiftEmptyArrayStorage;
  sub_1001691A4(v2, v3 + OBJC_IVAR____TtCV7Weather25LocationViewerPageControl11Coordinator_selection);
  return v3;
}

uint64_t sub_10016917C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1001690A8();
  *a1 = result;
  return result;
}

uint64_t sub_1001691A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10022C350(&qword_100CC9118);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

id sub_100169214()
{
  v1 = [objc_allocWithZone(UIPageControl) init];
  v2 = v1;
  v3 = *(v0 + 8);
  if (v3 == 1)
  {
    [v1 setBackgroundStyle:1];
  }

  if (!(v3 & 1 | ((static Solarium.isEnabled.getter() & 1) == 0)))
  {
    v4 = objc_opt_self();
    v5 = [v4 labelColor];
    [v2 setCurrentPageIndicatorTintColor:v5];

    v6 = [v4 tertiaryLabelColor];
    [v2 setPageIndicatorTintColor:v6];

    [v2 setBackgroundStyle:2];
  }

  sub_10022C350(&qword_100CC91C0);
  UIViewRepresentableContext.coordinator.getter();
  [v2 addTarget:v14 action:"pageDidChange:" forControlEvents:4096];

  v7 = objc_opt_self();
  v8 = v2;
  v9 = [v7 mainBundle];
  v15._object = 0x8000000100AD6C00;
  v10._object = 0x8000000100AD6BE0;
  v15._countAndFlagsBits = 0xD000000000000039;
  v10._countAndFlagsBits = 0xD000000000000010;
  v11._countAndFlagsBits = 0;
  v11._object = 0xE000000000000000;
  v12 = NSLocalizedString(_:tableName:bundle:value:comment:)(v10, 0, v9, v11, v15);

  sub_10016941C(v12._countAndFlagsBits, v12._object, v8, &selRef_setAccessibilityLabel_);
  return v8;
}

void sub_10016941C(uint64_t a1, uint64_t a2, void *a3, SEL *a4)
{
  v6 = String._bridgeToObjectiveC()();

  [a3 *a4];
}

uint64_t sub_10016948C(void *a1)
{
  v2 = v1;
  v46 = a1;
  v41 = type metadata accessor for CurrentLocation();
  sub_1000037E8();
  __chkstk_darwin(v3);
  sub_100003848();
  v42 = v4;
  __chkstk_darwin(v5);
  v43 = &v41 - v6;
  v7 = sub_10022C350(&unk_100CE2F20);
  __chkstk_darwin(v7 - 8);
  v9 = &v41 - v8;
  v10 = type metadata accessor for LocationModel();
  sub_1000037C4();
  v12 = v11;
  __chkstk_darwin(v13);
  sub_100003848();
  v44 = v14;
  __chkstk_darwin(v15);
  v45 = &v41 - v16;
  sub_10022C350(&qword_100CC9118);
  sub_1000037E8();
  __chkstk_darwin(v17);
  v19 = &v41 - v18;
  sub_10022C350(&qword_100CC91C0);
  UIViewRepresentableContext.coordinator.getter();
  v20 = v47;
  v21 = *v1;
  *(v47 + OBJC_IVAR____TtCV7Weather25LocationViewerPageControl11Coordinator_pages) = *v1;

  type metadata accessor for LocationViewerPageControl(0);
  Binding.projectedValue.getter();
  v22 = OBJC_IVAR____TtCV7Weather25LocationViewerPageControl11Coordinator_selection;
  swift_beginAccess();
  v23 = v19;
  v24 = v46;
  sub_100169A50(v23, v20 + v22);
  swift_endAccess();
  if ([v24 numberOfPages] != *(v21 + 16))
  {
    [v24 setNumberOfPages:?];
  }

  sub_100169AC0(v21, v9);
  v25 = v2;
  if (sub_100024D10(v9, 1, v10) == 1)
  {
    v26 = sub_1000180EC(v9, &unk_100CE2F20);
    goto LABEL_13;
  }

  v27 = v45;
  (*(v12 + 32))(v45, v9, v10);
  v28 = v44;
  (*(v12 + 16))(v44, v27, v10);
  if ((*(v12 + 88))(v28, v10) != enum case for LocationModel.current(_:))
  {
    [v24 setIndicatorImage:0 forPage:0];
    v32 = *(v12 + 8);
    v32(v27, v10);
    v26 = (v32)(v28, v10);
    goto LABEL_13;
  }

  (*(v12 + 96))(v28, v10);
  v29 = v43;
  sub_100169AD8(v28, v43);
  v30 = v42;
  sub_100169B3C(v29, v42);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if ((EnumCaseMultiPayload - 1) < 2)
  {
    sub_100169C48(v30);
LABEL_11:
    sub_100169C04();
    v34 = sub_100169BA0();
    [v24 setIndicatorImage:v34 forPage:0];

    sub_100169C48(v29);
    (*(v12 + 8))(v45, v10);
    goto LABEL_12;
  }

  if (EnumCaseMultiPayload)
  {
    goto LABEL_11;
  }

  sub_100169C04();
  v33 = sub_100169BA0();
  [v24 setIndicatorImage:v33 forPage:0];

  sub_100169C48(v29);
  (*(v12 + 8))(v45, v10);
  sub_100169C48(v30);
LABEL_12:
  v35 = *(sub_10022C350(&qword_100CA38C0) + 48);
  type metadata accessor for LocationModelData();
  sub_1000037E8();
  v26 = (*(v36 + 8))(v28 + v35);
LABEL_13:
  __chkstk_darwin(v26);
  *(&v41 - 2) = v25;
  v37 = sub_100169CA4(sub_100169E24, (&v41 - 4), v21);
  if ((v38 & 1) == 0)
  {
    v39 = v37;
    if (v37 != [v24 currentPage])
    {
      [v24 setCurrentPage:v39];
    }

    sub_100169E44(v24, v39);
  }
}

uint64_t sub_100169A50(uint64_t a1, uint64_t a2)
{
  v4 = sub_10022C350(&qword_100CC9118);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100169AD8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CurrentLocation();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100169B3C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CurrentLocation();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id sub_100169BA0()
{
  v0 = String._bridgeToObjectiveC()();

  v1 = [swift_getObjCClassFromMetadata() systemImageNamed:v0];

  return v1;
}

unint64_t sub_100169C04()
{
  result = qword_100CB17D0;
  if (!qword_100CB17D0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100CB17D0);
  }

  return result;
}

uint64_t sub_100169C48(uint64_t a1)
{
  v2 = type metadata accessor for CurrentLocation();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100169CD0()
{
  v0 = type metadata accessor for Location.Identifier();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = v10 - v5;
  LocationModel.identifier.getter();
  type metadata accessor for LocationViewerPageControl(0);
  sub_10022C350(&qword_100CC9118);
  Binding.wrappedValue.getter();
  v7 = static Location.Identifier.== infix(_:_:)();
  v8 = *(v1 + 8);
  v8(v3, v0);
  v8(v6, v0);
  return v7 & 1;
}

void sub_100169E44(unint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for CurrentLocation();
  __chkstk_darwin(v5);
  v7 = v71 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = v71 - v9;
  v11 = sub_10022C350(&unk_100CE2F20);
  __chkstk_darwin(v11 - 8);
  v13 = v71 - v12;
  v14 = type metadata accessor for LocationModel();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  __chkstk_darwin(v16);
  v21 = __chkstk_darwin(v17);
  v22 = v71 - v18;
  v23 = *v2;
  if (*(*v2 + 16) <= a2)
  {
    return;
  }

  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v71[1] = v5;
    v72 = v7;
    v76 = v19;
    v77 = v20;
    v75 = v10;
    v78 = a1;
    v79 = v23;
    v24 = v23 + ((*(v15 + 80) + 32) & ~*(v15 + 80));
    v25 = *(v15 + 72);
    v80 = a2;
    v26 = v24 + v25 * a2;
    a2 = *(v15 + 16);
    (a2)(v71 - v18, v26, v14, v21);
    v2 = LocationModel.name.getter();
    v7 = v27;
    v73 = *(v15 + 8);
    v74 = v15 + 8;
    v73(v22, v14);
    sub_100109810();
    v29 = v28;
    a1 = *(v28 + 16);
    v5 = a1 + 1;
    if (a1 < *(v28 + 24) >> 1)
    {
      goto LABEL_4;
    }
  }

  sub_100109810();
  v29 = v67;
LABEL_4:
  *(v29 + 16) = v5;
  v30 = v29 + 16 * a1;
  *(v30 + 32) = v2;
  *(v30 + 40) = v7;
  if (!v80)
  {
    sub_100169AC0(v79, v13);
    if (sub_100024D10(v13, 1, v14) == 1)
    {
      sub_1000180EC(v13, &unk_100CE2F20);
      goto LABEL_11;
    }

    v31 = v77;
    (*(v15 + 32))(v77, v13, v14);
    v32 = v76;
    (a2)(v76, v31, v14);
    v33 = v32;
    if ((*(v15 + 88))(v32, v14) != enum case for LocationModel.current(_:))
    {
      v39 = v73;
      v73(v31, v14);
      v39(v32, v14);
      goto LABEL_11;
    }

    (*(v15 + 96))(v32, v14);
    v34 = v32;
    v35 = v75;
    sub_100169AD8(v34, v75);
    v36 = v35;
    v37 = v72;
    sub_100169B3C(v36, v72);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if ((EnumCaseMultiPayload - 1) >= 2)
    {
      if (!EnumCaseMultiPayload)
      {
        v55 = [objc_opt_self() mainBundle];
        v83._object = 0x8000000100AD6BB0;
        v56._object = 0x8000000100AD6B90;
        v83._countAndFlagsBits = 0xD000000000000029;
        v56._countAndFlagsBits = 0xD000000000000010;
        v57._countAndFlagsBits = 0;
        v57._object = 0xE000000000000000;
        v58 = NSLocalizedString(_:tableName:bundle:value:comment:)(v56, 0, v55, v57, v83);

        v59 = *(v29 + 16);
        if (v59 >= *(v29 + 24) >> 1)
        {
          sub_100109810();
          v29 = v70;
        }

        sub_100169C48(v75);
        v73(v77, v14);
        *(v29 + 16) = v59 + 1;
        *(v29 + 16 * v59 + 32) = v58;
        sub_100169C48(v72);
        goto LABEL_22;
      }
    }

    else
    {
      sub_100169C48(v37);
    }

    v60 = [objc_opt_self() mainBundle];
    v84._object = 0x8000000100AD6B40;
    v61._countAndFlagsBits = 0xD00000000000001CLL;
    v61._object = 0x8000000100AD6B20;
    v84._countAndFlagsBits = 0xD000000000000047;
    v62._countAndFlagsBits = 0;
    v62._object = 0xE000000000000000;
    v63 = NSLocalizedString(_:tableName:bundle:value:comment:)(v61, 0, v60, v62, v84);

    v64 = *(v29 + 16);
    if (v64 >= *(v29 + 24) >> 1)
    {
      sub_100109810();
      v29 = v69;
    }

    sub_100169C48(v75);
    v73(v77, v14);
    *(v29 + 16) = v64 + 1;
    *(v29 + 16 * v64 + 32) = v63;
LABEL_22:
    v65 = *(sub_10022C350(&qword_100CA38C0) + 48);
    v66 = type metadata accessor for LocationModelData();
    (*(*(v66 - 8) + 8))(v33 + v65, v66);
  }

LABEL_11:
  v40 = [objc_opt_self() mainBundle];
  v82._object = 0x8000000100AD6AE0;
  v41._countAndFlagsBits = 0x2064252079746963;
  v41._object = 0xED0000642520666FLL;
  v82._countAndFlagsBits = 0xD000000000000036;
  v42._countAndFlagsBits = 0;
  v42._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v41, 0, v40, v42, v82);

  sub_10022C350(&qword_100CA40C8);
  v43 = swift_allocObject();
  *(v43 + 16) = xmmword_100A2D320;
  v44 = v80 + 1;
  *(v43 + 56) = &type metadata for Int;
  *(v43 + 64) = &protocol witness table for Int;
  *(v43 + 32) = v44;
  v45 = *(v79 + 16);
  *(v43 + 96) = &type metadata for Int;
  *(v43 + 104) = &protocol witness table for Int;
  *(v43 + 72) = v45;
  v46 = String.init(format:_:)();
  v48 = v47;

  v49 = *(v29 + 16);
  if (v49 >= *(v29 + 24) >> 1)
  {
    sub_100109810();
    v29 = v68;
  }

  v50 = v78;
  *(v29 + 16) = v49 + 1;
  v51 = v29 + 16 * v49;
  *(v51 + 32) = v46;
  *(v51 + 40) = v48;
  v81 = v29;
  sub_10022C350(&qword_100CCC930);
  sub_1001141C8();
  v52 = BidirectionalCollection<>.joined(separator:)();
  v54 = v53;

  sub_10016941C(v52, v54, v50, &selRef_setAccessibilityValue_);
}

uint64_t sub_10016A620@<X0>(uint64_t a1@<X8>)
{
  v3 = v1;
  v22[1] = a1;
  v4 = sub_10022C350(&qword_100CA6F08);
  sub_1000037E8();
  __chkstk_darwin(v5);
  v7 = v22 - v6;
  sub_10022C350(&qword_100CEB430);
  sub_1000037E8();
  __chkstk_darwin(v8);
  v10 = v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = v22 - v12;
  sub_10012E148(v3, v23);
  v14 = swift_allocObject();
  v15 = v23[1];
  v14[1] = v23[0];
  v14[2] = v15;
  v14[3] = v23[2];
  Button.init(action:label:)();
  v16 = *v3;
  KeyPath = swift_getKeyPath();
  v18 = swift_allocObject();
  *(v18 + 16) = (v16 & 1) == 0;
  v19 = &v7[*(v4 + 36)];
  *v19 = KeyPath;
  v19[1] = sub_100168F20;
  v19[2] = v18;
  LocalizedStringKey.init(stringLiteral:)();
  sub_100005F5C();
  sub_1000111F8();
  sub_10012E508();
  View.accessibilityLabel(_:)();
  sub_10010CD64(KeyPath, v16, v2 & 1);

  sub_1000180EC(v7, &qword_100CA6F08);
  LocalizedStringKey.init(stringLiteral:)();
  sub_100005F5C();
  sub_1000111F8();
  ModifiedContent<>.accessibilityHint(_:)();
  sub_10010CD64(KeyPath, v16, v2 & 1);

  sub_1000180EC(v10, &qword_100CEB430);
  sub_10022C350(&qword_100CB2D40);
  sub_10012E7B4();
  sub_100005A00();
  sub_100006F64(v20, &qword_100CB2D40);
  View.accessibilityShowsLargeContentViewer<A>(_:)();
  return sub_1000180EC(v13, &qword_100CEB430);
}

uint64_t sub_10016A99C()
{
  sub_100006F14(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_10016A9F0@<X0>(uint64_t *a1@<X8>)
{
  result = Image.init(systemName:)();
  *a1 = result;
  return result;
}

uint64_t sub_10016AA34@<X0>(uint64_t a1@<X8>)
{
  v2 = static HorizontalAlignment.center.getter();
  v3 = Image.init(systemName:)();
  LocalizedStringKey.init(stringLiteral:)();
  v4 = Text.init(_:tableName:bundle:comment:)();
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v8 &= 1u;
  sub_10010CD54(v4, v6, v8);

  sub_10010CD64(v4, v6, v8);

  *a1 = v2;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 24) = v3;
  *(a1 + 32) = v4;
  *(a1 + 40) = v6;
  *(a1 + 48) = v8;
  *(a1 + 56) = v10;
  return result;
}

uint64_t sub_10016ABC4(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 3)
  {
    return v1 - 2;
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_10016ABD8(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 2;
  }

  return result;
}

uint64_t sub_10016ABE8()
{
  v0 = type metadata accessor for LocationViewModel();
  __chkstk_darwin(v0 - 8);
  v2 = &v8 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v5 = &v8 - v4;
  sub_100140210();
  sub_100140210();
  v6 = sub_100163AEC(v5, v2);
  sub_10016ACBC(v2);
  sub_10016ACBC(v5);
  return v6 & 1;
}

uint64_t sub_10016ACBC(uint64_t a1)
{
  v2 = type metadata accessor for LocationViewModel();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10016AD1C(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  if (a4 >> 6)
  {
    if (a4 >> 6 != 1)
    {
      return result;
    }
  }
}

uint64_t sub_10016AD70()
{
  v1 = OBJC_IVAR____TtC7WeatherP33_0D7875416F0B8E2934ED75461799471034LocationHeaderViewFrameCoordinator___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_10016AE0C(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t sub_10016AE24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_10016AE88();

  return static EnvironmentKey<>._valuesEqual(_:_:)(a1, a2, a3, a4, v8);
}

unint64_t sub_10016AE88()
{
  result = qword_100CA6118;
  if (!qword_100CA6118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CA6118);
  }

  return result;
}

uint64_t sub_10016AEDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_10011A74C();

  return static EnvironmentKey<>._valuesEqual(_:_:)(a1, a2, a3, a4, v8);
}

uint64_t sub_10016AF40()
{
  swift_unknownObjectRelease();

  sub_10003716C();

  return swift_deallocObject();
}

uint64_t sub_10016AF7C()
{
  swift_unknownObjectRelease();

  sub_100006F14(v0 + 104);

  return swift_deallocObject();
}

uint64_t sub_10016B054()
{
  v1 = OBJC_IVAR____TtC7WeatherP33_C9CD978B5072A12A20FABB0B2C18467645LocationViewCollisionOptionsUpdatingViewState___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_10016B0F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_10009C5FC();

  return static EnvironmentKey<>._valuesEqual(_:_:)(a1, a2, a3, a4, v8);
}

uint64_t sub_10016B154(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_10016B1B8();

  return static EnvironmentKey<>._valuesEqual(_:_:)(a1, a2, a3, a4, v8);
}

unint64_t sub_10016B1B8()
{
  result = qword_100CA6090;
  if (!qword_100CA6090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CA6090);
  }

  return result;
}

uint64_t sub_10016B20C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1000F1F60(&qword_100CA6120, type metadata accessor for DisplayMetrics);

  return static EnvironmentKey<>._valuesEqual(_:_:)(a1, a2, a3, a4, v8);
}

unint64_t sub_10016B300()
{
  result = qword_100CAF478;
  if (!qword_100CAF478)
  {
    sub_10000C70C(255, &qword_100CAF470);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CAF478);
  }

  return result;
}

uint64_t sub_10016B368(uint64_t a1)
{
  v2 = type metadata accessor for EnvironmentState();
  v3 = v2 - 8;
  __chkstk_darwin(v2);
  v5 = v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for LocationsState();
  v7 = v6 - 8;
  v8 = __chkstk_darwin(v6);
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a1 + 16);
  v11(v19, v8);
  sub_100051108(v19[0] + OBJC_IVAR____TtCV7Weather9MainState8_Storage_locations, v10, type metadata accessor for LocationsState);

  v12 = *&v10[*(v7 + 28)];

  v13 = sub_10004FE68(v10, type metadata accessor for LocationsState);
  (v11)(v19, v13);
  v14 = v19[0];
  v15 = OBJC_IVAR____TtCV7Weather9MainState8_Storage_environment;
  swift_beginAccess();
  sub_100051108(v14 + v15, v5, type metadata accessor for EnvironmentState);

  v16 = *&v5[*(v3 + 64)];
  sub_10004FE68(v5, type metadata accessor for EnvironmentState);
  v18[1] = v12;
  v18[2] = v16;
  sub_10022C350(&qword_100CEBF30);
  swift_allocObject();
  return Promise.init(value:)();
}

uint64_t sub_10016B564()
{
  v0 = type metadata accessor for Location();
  sub_100003810(v0);
  sub_1000C8B74();
  return sub_10016B5B4();
}

uint64_t sub_10016B5B4()
{
  sub_100017580();
  type metadata accessor for MainAction();
  sub_1000037E8();
  __chkstk_darwin(v1);
  sub_1000037D8();
  v4 = (v3 - v2);
  v5 = *(v0 + 48);
  *v4 = Location.id.getter();
  v4[1] = v6;
  type metadata accessor for WeatherDataAction();
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  v9 = 0;
  memset(v8, 0, sizeof(v8));
  sub_10004F034(v4, v8, v5);
  sub_100018144(v8, &unk_100CD81B0);
  sub_100031FA8();
  return sub_100087544();
}

uint64_t sub_10016B6A0(uint64_t a1, uint64_t a2, char a3)
{
  v5 = type metadata accessor for DispatchQoS();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  if (*(a1 + 8) < 1)
  {
    static DispatchQoS.userInitiated.getter();
  }

  else
  {
    static DispatchQoS.utility.getter();
  }

  v10 = sub_10016B7D0(v9, a3 & 1, v8);
  (*(v6 + 8))(v8, v5);
  return v10;
}

uint64_t sub_10016B7D0(void *a1, char a2, uint64_t a3)
{
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = _swiftEmptyArrayStorage;
  v11 = sub_10016BF8C(a1);
  v26 = v3;
  v27 = &v32;
  v28 = a3;
  v29 = a2;
  sub_10016C834(sub_10016D220, v25, v11);
  static Logger.geocode.getter();

  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v24 = v7;
    v31 = v23;
    *v14 = 134350339;
    swift_beginAccess();
    v15 = v32;
    *(v14 + 4) = v32[2];
    *(v14 + 12) = 2050;
    v16 = v11[2];

    *(v14 + 14) = v16;

    *(v14 + 22) = 2160;
    *(v14 + 24) = 1752392040;
    *(v14 + 32) = 1025;
    *(v14 + 34) = a2 & 1;
    *(v14 + 38) = 2160;
    *(v14 + 40) = 1752392040;
    *(v14 + 48) = 2081;
    v30 = v15;

    sub_10022C350(&qword_100CEBF20);
    v17 = String.init<A>(reflecting:)();
    v19 = sub_100078694(v17, v18, &v31);

    *(v14 + 50) = v19;
    _os_log_impl(&_mh_execute_header, v12, v13, "About to reverse geocode locations from the sample. ratio=(%{public}ld/%{public}ld, invalidateLocations=%{BOOL,private,mask.hash}d, locations=%{private,mask.hash}s", v14, 0x3Au);
    sub_100006F14(v23);

    (*(v8 + 8))(v10, v24);
  }

  else
  {

    swift_bridgeObjectRelease_n();
    (*(v8 + 8))(v10, v7);
  }

  v20 = zalgo.getter();
  type metadata accessor for SavedLocation();
  v21 = when<A>(on:_:)();

  return v21;
}

void *sub_10016BAEC()
{
  type metadata accessor for WeatherDataAction();
  sub_1000037E8();
  __chkstk_darwin(v1);
  v3 = (v32 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10016BF28(v0, v3);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v6 = *v3;
  v5 = v3[1];
  switch(EnumCaseMultiPayload)
  {
    case 1:
      sub_10001D540();
      _StringGuts.grow(_:)(35);

      sub_10001FF94();
      goto LABEL_11;
    case 2:
      v19 = v3[2];
      v20 = v3[3];
      v16 = v3[4];
      v15 = v3[5];
      sub_10031EF8C(v19, v20);
      sub_10001D540();
      _StringGuts.grow(_:)(22);

      v32[0] = 0x4C64656C6961662ELL;
      v32[1] = 0xEF28676E6964616FLL;
      goto LABEL_8;
    case 3:
      v16 = v3[2];
      v15 = v3[3];
      sub_10001D540();
      _StringGuts.grow(_:)(38);

      sub_10001FF94();
      v18 = v21 - 1;
      goto LABEL_7;
    case 4:
      v8 = sub_10022C350(&qword_100CAC0C8);
      v9 = v8[12];
      v10 = v8[16];
      v11 = v8[20];
      sub_10001D540();
      _StringGuts.grow(_:)(21);

      strcpy(v32, ".updatedData(");
      HIWORD(v32[1]) = -4864;
      v12._countAndFlagsBits = v6;
      v12._object = v5;
      String.append(_:)(v12);

      sub_100006DF8();
      sub_1000112C8();
      sub_10018D5F4(v3 + v11, v13);
      sub_10018D5F4(v3 + v10, type metadata accessor for PreprocessedWeatherData);
      v14 = type metadata accessor for WeatherData;
      goto LABEL_14;
    case 5:
      v9 = *(sub_10022C350(&qword_100CAC0B8) + 48);
      sub_10001D540();
      _StringGuts.grow(_:)(25);

      sub_10001FF94();
      sub_100009454(v26);

      sub_100006DF8();
      sub_1000112C8();
LABEL_14:
      sub_10018D5F4(v3 + v9, v14);
      return v5;
    case 6:
      v27 = *(sub_10022C350(&qword_100CAC0C0) + 48);
      sub_10001D540();
      _StringGuts.grow(_:)(33);

      sub_10001FF94();
      sub_100009454(v28);

      sub_100006DF8();
      v5 = v32[0];
      type metadata accessor for AvailableDataSets();
      goto LABEL_17;
    case 7:
      sub_10001D540();
      _StringGuts.grow(_:)(36);

      sub_10001FF94();
      goto LABEL_11;
    case 8:
      v27 = *(sub_10022C350(&qword_100CAC0B0) + 48);
      sub_10001D540();
      _StringGuts.grow(_:)(34);

      sub_10001FF94();
      sub_100009454(v29);

      sub_100006DF8();
      v5 = v32[0];
      type metadata accessor for WeatherStatisticsModel();
LABEL_17:
      sub_1000037E8();
      (*(v30 + 8))(v3 + v27);
      return v5;
    case 9:
      v16 = v3[2];
      v15 = v3[3];
      sub_10001D540();
      _StringGuts.grow(_:)(39);

      sub_10001FF94();
LABEL_7:
      v32[0] = v18;
      v32[1] = v17;
LABEL_8:
      v22._countAndFlagsBits = v6;
      v22._object = v5;
      String.append(_:)(v22);

      v23._countAndFlagsBits = 8236;
      v23._object = 0xE200000000000000;
      String.append(_:)(v23);
      v24._countAndFlagsBits = v16;
      v24._object = v15;
      String.append(_:)(v24);
      goto LABEL_12;
    default:
      sub_10001D540();
      _StringGuts.grow(_:)(19);

      sub_10001FF94();
LABEL_11:
      sub_100009454(v7);
LABEL_12:

      v25._countAndFlagsBits = 41;
      v25._object = 0xE100000000000000;
      String.append(_:)(v25);
      return v32[0];
  }
}

uint64_t sub_10016BF28(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WeatherDataAction();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void *sub_10016BF8C(void *a1)
{
  v3 = type metadata accessor for SavedLocation();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3 - 8);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v1 + 88) == 1)
  {
    static Logger.geocode.getter();
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
    }

    (*(v8 + 8))(v10, v7);
    v14 = a1[2];
    if (v14)
    {
      v21 = _swiftEmptyArrayStorage;
      sub_1000328B0();
      v15 = (*(v4 + 80) + 32) & ~*(v4 + 80);
      v16 = a1 + v15;
      a1 = v21;
      v17 = *(v4 + 72);
      do
      {
        sub_10016C228(v16, v6);
        v21 = a1;
        v18 = a1[2];
        if (v18 >= a1[3] >> 1)
        {
          sub_1000328B0();
          a1 = v21;
        }

        a1[2] = v18 + 1;
        sub_100079DEC(v6, a1 + v15 + v18 * v17, &type metadata accessor for SavedLocation);
        v16 += v17;
        --v14;
      }

      while (v14);
    }

    else
    {
      return _swiftEmptyArrayStorage;
    }
  }

  else
  {
  }

  return a1;
}

uint64_t sub_10016C228@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a2;
  v40 = a1;
  v2 = sub_10022C350(&qword_100CACE08);
  __chkstk_darwin(v2 - 8);
  v39 = &v33 - v3;
  v4 = sub_10022C350(&qword_100CADBA0);
  __chkstk_darwin(v4 - 8);
  v37 = &v33 - v5;
  v6 = type metadata accessor for Location();
  v35 = *(v6 - 8);
  v36 = v6;
  __chkstk_darwin(v6);
  v34 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10022C350(&unk_100CB2CF0);
  __chkstk_darwin(v8 - 8);
  v42 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v38 = &v33 - v11;
  __chkstk_darwin(v12);
  v14 = &v33 - v13;
  v33 = type metadata accessor for TimeZone();
  __chkstk_darwin(v33);
  v15 = type metadata accessor for Location.Identifier();
  __chkstk_darwin(v15);
  v16 = type metadata accessor for SavedLocation.Placeholder();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v33 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for SavedLocation();
  __chkstk_darwin(v20);
  v22 = &v33 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100051108(v40, v22, &type metadata accessor for SavedLocation);
  v40 = v20;
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v17 + 32))(v19, v22, v16);
    SavedLocation.Placeholder.identifier.getter();
    static TimeZone.current.getter();
    static WeatherClock.date.getter();
    v23 = type metadata accessor for Date();
    sub_10001B350(v14, 0, 1, v23);
    SavedLocation.Placeholder.searchTitle.getter();
    SavedLocation.Placeholder.searchSubtitle.getter();
    Location.init(identifier:timeZone:lastRefreshDate:searchTitle:searchSubtitle:preciseName:)();
    (*(v17 + 8))(v19, v16);
  }

  else
  {
    v24 = v34;
    v25 = v35;
    v26 = v36;
    (*(v35 + 32))(v34, v22, v36);
    v27 = v37;
    sub_10001B350(v37, 1, 1, v15);
    v28 = v39;
    sub_10001B350(v39, 1, 1, v33);
    v29 = v42;
    Location.lastRefreshDate.getter();
    v30 = type metadata accessor for Date();
    if (sub_100024D10(v29, 1, v30) == 1)
    {
      v31 = v38;
      static Date.now.getter();
      if (sub_100024D10(v42, 1, v30) != 1)
      {
        sub_1000180EC(v42, &unk_100CB2CF0);
      }
    }

    else
    {
      v31 = v38;
      (*(*(v30 - 8) + 32))(v38, v42, v30);
    }

    sub_10001B350(v31, 0, 1, v30);
    Location.with(identifier:timeZone:lastRefreshDate:searchTitle:searchSubtitle:preciseName:secondaryName:)();
    sub_1000180EC(v31, &unk_100CB2CF0);
    sub_1000180EC(v28, &qword_100CACE08);
    sub_1000180EC(v27, &qword_100CADBA0);
    (*(v25 + 8))(v24, v26);
  }

  return swift_storeEnumTagMultiPayload();
}

void *sub_10016C834(void *result, uint64_t a2, uint64_t a3)
{
  v5 = result;
  v6 = 0;
  v7 = *(a3 + 16);
  v13 = _swiftEmptyArrayStorage;
  v15 = _swiftEmptyArrayStorage;
  while (1)
  {
    if (v7 == v6)
    {
      return v13;
    }

    if (v6 >= v7)
    {
      break;
    }

    v8 = type metadata accessor for SavedLocation();
    v10 = *(v8 - 8);
    result = (v8 - 8);
    v9 = v10;
    v11 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      goto LABEL_14;
    }

    result = v5(&v14, a3 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v6);
    if (v3)
    {
      v12 = v13;

      return v12;
    }

    ++v6;
    if (v14)
    {
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      result = specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v13 = v15;
      v6 = v11;
    }
  }

  __break(1u);
LABEL_14:
  __break(1u);
  return result;
}

uint64_t sub_10016C9A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t *a6@<X8>)
{
  v58 = a5;
  v67 = a4;
  v65 = a3;
  v70 = a2;
  v72 = a6;
  v7 = sub_10022C350(&unk_100CB2CF0);
  __chkstk_darwin(v7 - 8);
  v56 = &v55 - v8;
  v57 = type metadata accessor for Location();
  v71 = *(v57 - 8);
  __chkstk_darwin(v57);
  v10 = &v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = sub_10022C350(&qword_100CD1370);
  v61 = *(v59 - 8);
  __chkstk_darwin(v59);
  v60 = &v55 - v11;
  v69 = type metadata accessor for Location.Identifier();
  v12 = *(v69 - 8);
  __chkstk_darwin(v69);
  v14 = &v55 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = type metadata accessor for SavedLocation.Placeholder();
  v15 = *(v68 - 8);
  __chkstk_darwin(v68);
  v17 = &v55 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for SavedLocation();
  v63 = *(v18 - 8);
  __chkstk_darwin(v18);
  v66 = &v55 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = v19;
  __chkstk_darwin(v20);
  v22 = &v55 - v21;
  v23 = a1;
  sub_100051108(a1, &v55 - v21, &type metadata accessor for SavedLocation);
  v62 = v18;
  v24 = (v12 + 8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v55 = v15;
    (*(v15 + 32))(v17, v22, v68);
    v25 = v70;
    sub_1000161C0((v70 + 96), *(v70 + 120));
    SavedLocation.Placeholder.identifier.getter();
    v26 = dispatch thunk of GeocodingSamplerType.canGeocodeLocation(_:)();
    (*v24)(v14, v69);
    v27 = *(v59 + 48);
    v28 = v23;
    v29 = v23;
    v30 = v60;
    sub_100051108(v29, v60, &type metadata accessor for SavedLocation);
    *(v30 + v27) = v26 & 1;
    v31 = v65;
    sub_10016D244();
    v32 = *(*v31 + 16);
    sub_10016D2F0(v32);
    v33 = *v31;
    *(v33 + 16) = v32 + 1;
    sub_10016D280(v30, v33 + ((*(v61 + 80) + 32) & ~*(v61 + 80)) + *(v61 + 72) * v32);
    sub_1000161C0((v25 + 48), *(v25 + 72));
    dispatch thunk of GeocodeManagerType.reverseGeocode(placeholder:ignoreTimeZoneExpiration:qos:)();
    (*(v55 + 8))(v17, v68);
    v34 = v28;
  }

  else
  {
    v68 = v23;
    v35 = v57;
    (*(v71 + 32))(v10, v22, v57);
    v36 = v70;
    v37 = v10;
    sub_1000161C0((v70 + 96), *(v70 + 120));
    Location.identifier.getter();
    v38 = dispatch thunk of GeocodingSamplerType.canGeocodeLocation(_:)();
    (*v24)(v14, v69);
    v39 = v58;
    if ((v38 & 1) == 0)
    {
      v52 = v56;
      Location.lastRefreshDate.getter();
      v53 = type metadata accessor for Date();
      v54 = sub_100024D10(v52, 1, v53);
      sub_1000180EC(v52, &unk_100CB2CF0);
      if (v54 != 1 && (v39 & 1) == 0)
      {
        result = (*(v71 + 8))(v10, v35);
        v50 = 0;
        goto LABEL_6;
      }
    }

    v40 = v60;
    v41 = *(v59 + 48);
    v34 = v68;
    sub_100051108(v68, v60, &type metadata accessor for SavedLocation);
    *(v40 + v41) = v38 & 1;
    v42 = v65;
    sub_10016D244();
    v43 = *(*v42 + 16);
    sub_10016D2F0(v43);
    v44 = *v42;
    *(v44 + 16) = v43 + 1;
    sub_10016D280(v40, v44 + ((*(v61 + 80) + 32) & ~*(v61 + 80)) + *(v61 + 72) * v43);
    sub_1000161C0((v36 + 48), *(v36 + 72));
    dispatch thunk of GeocodeManagerType.reverseGeocode(location:forceUpdate:ignoreTimeZoneExpiration:qos:)();
    (*(v71 + 8))(v37, v35);
  }

  v45 = zalgo.getter();
  Promise.then<A>(on:closure:)();

  v46 = v66;
  sub_100051108(v34, v66, &type metadata accessor for SavedLocation);
  v47 = (*(v63 + 80) + 16) & ~*(v63 + 80);
  v48 = swift_allocObject();
  sub_100079DEC(v46, v48 + v47, &type metadata accessor for SavedLocation);
  v49 = zalgo.getter();
  v50 = Promise.recover(on:closure:)();

LABEL_6:
  *v72 = v50;
  return result;
}