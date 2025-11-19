unint64_t sub_1001A388C()
{
  result = qword_100CAD0F8;
  if (!qword_100CAD0F8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100CAD0F8);
  }

  return result;
}

uint64_t sub_1001A38F4@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v280 = a1;
  v290 = a2;
  v3 = type metadata accessor for SavedLocation();
  v4 = sub_100003810(v3);
  __chkstk_darwin(v4);
  sub_1000037D8();
  v284 = v6 - v5;
  v7 = sub_10022C350(&qword_100CA65D8);
  v8 = sub_100003810(v7);
  __chkstk_darwin(v8);
  sub_100003848();
  v273 = v9;
  sub_10000386C();
  __chkstk_darwin(v10);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v11);
  sub_100003878();
  v274 = v12;
  sub_10000386C();
  __chkstk_darwin(v13);
  sub_100003878();
  v278 = v14;
  sub_10000386C();
  __chkstk_darwin(v15);
  sub_10000E70C();
  v281 = v16;
  sub_1000038CC();
  v289 = type metadata accessor for LocationOfInterest();
  sub_1000037C4();
  v287 = v17;
  __chkstk_darwin(v18);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v19);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v20);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v21);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v22);
  sub_10000E70C();
  v265 = v23;
  sub_1000038CC();
  type metadata accessor for Location();
  sub_1000037C4();
  v291 = v25;
  v292 = v24;
  __chkstk_darwin(v24);
  sub_1000037D8();
  v285 = v27 - v26;
  v28 = sub_10022C350(&qword_100CA3898);
  v29 = sub_100003810(v28);
  __chkstk_darwin(v29);
  v31 = &v262 - v30;
  v32 = sub_10022C350(&qword_100CA3588);
  v33 = sub_100003810(v32);
  __chkstk_darwin(v33);
  sub_100003848();
  v272 = v34;
  sub_10000386C();
  __chkstk_darwin(v35);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v36);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v37);
  sub_100003878();
  v275 = v38;
  sub_10000386C();
  __chkstk_darwin(v39);
  sub_100003878();
  v283 = v40;
  sub_10000386C();
  __chkstk_darwin(v41);
  sub_100003878();
  v277 = v42;
  sub_10000386C();
  __chkstk_darwin(v43);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v44);
  sub_100003878();
  v279 = v45;
  sub_10000386C();
  __chkstk_darwin(v46);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v47);
  sub_100003878();
  v276 = v48;
  sub_10000386C();
  __chkstk_darwin(v49);
  v51 = &v262 - v50;
  __chkstk_darwin(v52);
  v54 = &v262 - v53;
  v55 = type metadata accessor for LocationModelData();
  sub_1000037C4();
  v57 = v56;
  __chkstk_darwin(v58);
  sub_100003848();
  v282 = v59;
  sub_10000386C();
  __chkstk_darwin(v60);
  sub_100008C44();
  v61 = type metadata accessor for CurrentLocation();
  v62 = sub_100003810(v61);
  __chkstk_darwin(v62);
  sub_1000037D8();
  v65 = v64 - v63;
  v66 = type metadata accessor for LocationModel();
  sub_1000037C4();
  v68 = v67;
  __chkstk_darwin(v69);
  sub_1000037D8();
  v72 = v71 - v70;
  (*(v68 + 16))(v71 - v70, v288, v66);
  v73 = sub_10000C924();
  v75 = v74(v73);
  v286 = v55;
  if (v75 != enum case for LocationModel.current(_:))
  {
    v288 = v57;
    if (v75 != enum case for LocationModel.saved(_:))
    {
      v94 = *(sub_10022C350(&qword_100CC4190) + 64);
      v95 = v290;
      *v290 = 0u;
      v95[1] = 0u;
      sub_100003934();
      sub_10001B350(v96, v97, v98, v99);
      *(v95 + v94) = 0;
      type metadata accessor for LocationCompositionState();
      swift_storeEnumTagMultiPayload();
      v100 = sub_10000C924();
      return v101(v100);
    }

    v81 = sub_10000C924();
    v82(v81);
    v83 = *(sub_10022C350(&qword_100CA38B8) + 48);
    sub_1000107B0();
    sub_10003D6A8(v72, v284, v84);
    v85 = v286;
    (*(v288 + 32))(v282, v72 + v83, v286);
    v86 = v283;
    LocationModelData.locationOfInterest.getter();
    v87 = v275;
    sub_100035AD0(v86, v275, &qword_100CA3588);
    v88 = v289;
    sub_1000038B4(v87, 1, v289);
    if (v121)
    {
      sub_1000180EC(v87, &qword_100CA3588);
      v89 = v288;
      v90 = v292;
    }

    else
    {
      v113 = v285;
      LocationOfInterest.location.getter();
      v114 = *(v287 + 8);
      v115 = sub_10000C924();
      v114(v115);
      v281 = Location.name.getter();
      v117 = v116;
      v118 = v292;
      v119 = *(v291 + 8);
      v119(v113, v292);
      v120 = v270;
      sub_100035AD0(v86, v270, &qword_100CA3588);
      sub_10000556C(v120);
      if (v121)
      {

        sub_1000180EC(v120, &qword_100CA3588);
        v89 = v288;
        v85 = v286;
        v90 = v118;
      }

      else
      {
        v128 = v117;
        LocationOfInterest.location.getter();
        v129 = sub_10000C924();
        v114(v129);
        v130 = Location.sanitizedSecondaryName.getter();
        v132 = v131;
        v119(v113, v118);
        v90 = v118;
        if (v132)
        {
          v133 = v264;
          sub_100035AD0(v283, v264, &qword_100CA3588);
          sub_10000556C(v133);
          if (!v121)
          {
            v252 = v287;
            v253 = v130;
            v254 = v88;
            v255 = v262;
            (*(v287 + 32))(v262, v133, v254);
            v256 = sub_10022C350(&qword_100CC4190);
            v257 = *(v256 + 48);
            v292 = *(v256 + 64);
            v258 = v290;
            *v290 = v253;
            *(v258 + 1) = v132;
            *(v258 + 2) = v281;
            *(v258 + 3) = v128;
            (*(v252 + 16))(&v258[v257], v255, v254);
            sub_10001B350(&v258[v257], 0, 1, v254);
            v259 = v282;
            v260 = LocationModelData.isPredictedLocation.getter();
            (v114)(v255, v254);
            (*(v288 + 8))(v259, v286);
            sub_10001F4B8();
            sub_100032908(v284, v261);
            sub_1000180EC(v283, &qword_100CA3588);
            v258[v292] = v260 & 1;
            type metadata accessor for LocationCompositionState();
            return swift_storeEnumTagMultiPayload();
          }

          sub_1000180EC(v133, &qword_100CA3588);
        }

        else
        {
        }

        v89 = v288;
        v85 = v286;
      }
    }

    v201 = v284;
    v202 = v274;
    SavedLocation.location.getter();
    sub_1000038B4(v202, 1, v90);
    if (!v121)
    {
      v292 = Location.name.getter();
      v204 = v203;
      v205 = *(v291 + 8);
      v205(v202, v90);
      v202 = v269;
      SavedLocation.location.getter();
      sub_1000038B4(v202, 1, v90);
      if (!v121)
      {
        v223 = Location.sanitizedSecondaryName.getter();
        v224 = v90;
        v226 = v225;
        v205(v202, v224);
        if (v226)
        {
          v227 = *(sub_10022C350(&qword_100CC4190) + 64);
          v228 = v290;
          *v290 = v223;
          v228[1] = v226;
          v228[2] = v292;
          v228[3] = v204;
          sub_100003934();
          sub_10001B350(v229, v230, v231, v88);
          v232 = LocationModelData.isPredictedLocation.getter();
          v233 = sub_10000ECC0();
          v234(v233);
          sub_10001F4B8();
          sub_100032908(v284, v235);
          sub_1000180EC(v283, &qword_100CA3588);
          *(v228 + v227) = v232 & 1;
          goto LABEL_72;
        }

        v90 = v224;
        v201 = v284;
LABEL_61:
        v206 = v283;
        v207 = v273;
        SavedLocation.location.getter();
        sub_1000038B4(v207, 1, v90);
        if (v121)
        {
          sub_1000180EC(v207, &qword_100CA65D8);
          v208 = v272;
        }

        else
        {
          v209 = Location.sanitizedSecondaryName.getter();
          v211 = v210;
          (*(v291 + 8))(v207, v90);
          v208 = v272;
          if (v211)
          {
            sub_10000556C(v206);
            if (v121)
            {
              v292 = *(sub_10022C350(&qword_100CC4190) + 64);
              v212 = SavedLocation.name.getter();
              v213 = v206;
              v214 = v290;
              *v290 = v209;
              v214[1] = v211;
              v214[2] = v212;
              v214[3] = v215;
              sub_100003934();
              sub_10001B350(v216, v217, v218, v88);
              v219 = LocationModelData.isPredictedLocation.getter();
              v220 = sub_10000ECC0();
              v221(v220);
              sub_10001F4B8();
              sub_100032908(v201, v222);
              sub_1000180EC(v213, &qword_100CA3588);
              *(v214 + v292) = v219 & 1;
              goto LABEL_72;
            }
          }
        }

        sub_100035AD0(v206, v208, &qword_100CA3588);
        sub_10000556C(v208);
        if (v121)
        {
          sub_1000180EC(v208, &qword_100CA3588);
          v236 = *(sub_10022C350(&qword_100CC4190) + 64);
          v237 = v290;
          *v290 = 0u;
          v237[1] = 0u;
          sub_100003934();
          sub_10001B350(v238, v239, v240, v88);
          v241 = v282;
          v242 = LocationModelData.isPredictedLocation.getter();
          (*(v89 + 8))(v241, v85);
          sub_10001F4B8();
          sub_100032908(v201, v243);
          sub_1000180EC(v206, &qword_100CA3588);
          *(v237 + v236) = v242 & 1;
        }

        else
        {
          v244 = v287;
          v245 = v268;
          (*(v287 + 32))(v268, v208, v88);
          v246 = sub_10022C350(&qword_100CC4190);
          v247 = *(v246 + 48);
          v292 = *(v246 + 64);
          v248 = v290;
          *v290 = 0u;
          *(v248 + 1) = 0u;
          (*(v244 + 16))(&v248[v247], v245, v88);
          sub_10001B350(&v248[v247], 0, 1, v88);
          LOBYTE(v247) = LocationModelData.isPredictedLocation.getter();
          (*(v244 + 8))(v245, v88);
          v249 = sub_10000ECC0();
          v250(v249);
          sub_10001F4B8();
          sub_100032908(v201, v251);
          sub_1000180EC(v206, &qword_100CA3588);
          v248[v292] = v247 & 1;
        }

        goto LABEL_72;
      }
    }

    sub_1000180EC(v202, &qword_100CA65D8);
    goto LABEL_61;
  }

  v76 = sub_10000C924();
  v77(v76);
  v78 = *(sub_10022C350(&qword_100CA38C0) + 48);
  v284 = v65;
  sub_10003D6A8(v72, v65, &type metadata accessor for CurrentLocation);
  (*(v57 + 32))(v2, v72 + v78, v55);
  LocationModelData.locationOfInterest.getter();
  sub_100035AD0(v280, v31, &qword_100CA3898);
  v79 = type metadata accessor for WeatherData(0);
  sub_1000038B4(v31, 1, v79);
  v80 = v2;
  if (v121)
  {
    sub_1000180EC(v31, &qword_100CA3898);
    v280 = 0;
    v282 = 0;
    LODWORD(v283) = 0;
  }

  else
  {
    v280 = sub_1001A5104();
    v282 = v91;
    LODWORD(v283) = v92;
    sub_100032908(v31, type metadata accessor for WeatherData);
  }

  v93 = v289;
  sub_100035AD0(v54, v51, &qword_100CA3588);
  sub_10000556C(v51);
  if (v121)
  {
    sub_1000180EC(v51, &qword_100CA3588);
LABEL_29:
    v127 = v281;
LABEL_30:
    v134 = v279;
    sub_100035AD0(v54, v279, &qword_100CA3588);
    sub_10000556C(v134);
    if (v121)
    {
      sub_1000180EC(v134, &qword_100CA3588);
      v143 = v292;
      v135 = v278;
      v136 = v284;
LABEL_43:
      CurrentLocation.location.getter();
      sub_1000038B4(v135, 1, v143);
      if (v121)
      {
        v149 = sub_10001173C();
        v150(v149);
        sub_10001C9EC();
        sub_100032908(v136, v151);
        sub_1000180EC(v135, &qword_100CA65D8);
      }

      else
      {
        v152 = Location.sanitizedSecondaryName.getter();
        v154 = v153;
        (*(v291 + 8))(v135, v143);
        if (v154)
        {
          sub_10000556C(v54);
          if (v121)
          {
            v292 = *(sub_10022C350(&qword_100CC4198) + 48);
            v155 = v290;
            v156 = v284;
            v291 = CurrentLocation.name.getter();
            v289 = v157;
            v158 = sub_10002C990();
            v159(v158);
            sub_10001C9EC();
            sub_100032908(v156, v160);
            sub_1000180EC(v54, &qword_100CA3588);
            *v155 = v152;
            v155[1] = v154;
            v161 = v289;
            v155[2] = v291;
            v155[3] = v161;
            sub_100016D00(v155 + v292, 1);
            sub_10002FFBC(v162);
            return swift_storeEnumTagMultiPayload();
          }
        }

        v163 = sub_10002C990();
        v164(v163);
        sub_10001C9EC();
        sub_100032908(v284, v165);
      }

      v166 = v277;
      sub_1001A5050(v54, v277);
      sub_10000556C(v166);
      if (v121)
      {
        sub_1000180EC(v166, &qword_100CA3588);
        v167 = sub_10022C350(&qword_100CC4198);
        v168 = *(v167 + 48);
        v169 = v290;
        v170 = v290 + *(v167 + 64);
        *v290 = 0u;
        v169[1] = 0u;
        sub_100016D00(v169 + v168, 1);
        *v170 = v172;
        *(v170 + 1) = v171;
        v170[16] = v283;
      }

      else
      {
        v173 = *(v287 + 32);
        v174 = v271;
        v173(v271, v166, v93);
        v175 = sub_10022C350(&qword_100CC4198);
        v176 = *(v175 + 48);
        v177 = v290;
        v178 = v290 + *(v175 + 64);
        *v290 = 0u;
        v177[1] = 0u;
        v173(v177 + v176, v174, v93);
        sub_100016D00(v177 + v176, 0);
        *v178 = v180;
        *(v178 + 1) = v179;
        v178[16] = v283;
      }

LABEL_72:
      type metadata accessor for LocationCompositionState();
      return swift_storeEnumTagMultiPayload();
    }

    v137 = v54;
    v138 = v285;
    LocationOfInterest.location.getter();
    (*(v287 + 8))(v134, v93);
    v289 = Location.name.getter();
    v140 = v139;
    v141 = *(v291 + 8);
    v142 = v138;
    v143 = v292;
    v141(v142, v292);
    CurrentLocation.location.getter();
    sub_1000038B4(v127, 1, v143);
    if (v144)
    {

      sub_1000180EC(v127, &qword_100CA65D8);
    }

    else
    {
      v288 = Location.sanitizedSecondaryName.getter();
      v146 = v145;
      v141(v127, v143);
      if (v146)
      {
        v54 = v137;
        v147 = v137;
        v148 = v266;
        sub_100035AD0(v147, v266, &qword_100CA3588);
        sub_10000556C(v148);
        if (!v121)
        {
          v188 = sub_10002C990();
          v189(v188);
          sub_10001C9EC();
          sub_100032908(v284, v190);
          v191 = *(v287 + 32);
          v192 = v263;
          v191(v263, v148, v93);
          v193 = sub_10022C350(&qword_100CC4198);
          v194 = v54;
          v195 = *(v193 + 48);
          v196 = v290;
          v197 = v290 + *(v193 + 64);
          sub_1000180EC(v194, &qword_100CA3588);
          v198 = v289;
          *v196 = v288;
          v196[1] = v146;
          v196[2] = v198;
          v196[3] = v140;
          v191(v196 + v195, v192, v93);
          sub_100016D00(v196 + v195, 0);
          *v197 = v200;
          *(v197 + 1) = v199;
          v197[16] = v283;
          type metadata accessor for LocationCompositionState();
          return swift_storeEnumTagMultiPayload();
        }

        sub_1000180EC(v148, &qword_100CA3588);
        v143 = v292;
        v135 = v278;
        goto LABEL_42;
      }

      v143 = v292;
    }

    v135 = v278;
    v54 = v137;
LABEL_42:
    v136 = v284;
    goto LABEL_43;
  }

  v288 = v57;
  v103 = v285;
  LocationOfInterest.location.getter();
  v104 = *(v287 + 8);
  v104(v51, v93);
  v275 = Location.name.getter();
  v106 = v105;
  v107 = v292;
  v108 = v54;
  v109 = *(v291 + 8);
  v109(v103, v292);
  v289 = v108;
  v110 = v108;
  v111 = v276;
  sub_100035AD0(v110, v276, &qword_100CA3588);
  sub_10000556C(v111);
  if (v112)
  {

    sub_1000180EC(v111, &qword_100CA3588);
LABEL_28:
    v54 = v289;
    goto LABEL_29;
  }

  v274 = v106;
  LocationOfInterest.location.getter();
  v122 = sub_10000C924();
  (v104)(v122);
  v123 = Location.sanitizedSecondaryName.getter();
  v125 = v124;
  v109(v103, v107);
  if (!v125)
  {

    goto LABEL_28;
  }

  v54 = v289;
  v126 = v267;
  sub_100035AD0(v289, v267, &qword_100CA3588);
  sub_10000556C(v126);
  v127 = v281;
  if (v121)
  {

    sub_1000180EC(v126, &qword_100CA3588);
    goto LABEL_30;
  }

  (*(v288 + 8))(v80, v286);
  sub_10001C9EC();
  sub_100032908(v284, v181);
  v182 = *(v287 + 32);
  v183 = v265;
  v182(v265, v126, v93);
  v184 = *(sub_10022C350(&qword_100CC4198) + 48);
  v185 = v290;
  sub_1000180EC(v54, &qword_100CA3588);
  *v185 = v123;
  v185[1] = v125;
  v186 = v274;
  v185[2] = v275;
  v185[3] = v186;
  v182(v185 + v184, v183, v93);
  sub_100016D00(v185 + v184, 0);
  sub_10002FFBC(v187);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1001A4F88()
{
  sub_100003A00();
  v2 = type metadata accessor for LocationComponentBackgroundConfiguration.HeaderConfiguration(0);

  return sub_100024D10(v1, v0, v2);
}

uint64_t sub_1001A5000()
{
  sub_100003A00();
  v2 = sub_10022C350(&qword_100CB7090);

  return sub_100024D10(v1, v0, v2);
}

uint64_t sub_1001A5050(uint64_t a1, uint64_t a2)
{
  v4 = sub_10022C350(&qword_100CA3588);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001A5104()
{
  type metadata accessor for Date.RelativeFormatStyle.UnitsStyle();
  sub_1000037C4();
  v41 = v2;
  v42 = v1;
  __chkstk_darwin(v1);
  sub_1000037D8();
  v5 = v4 - v3;
  type metadata accessor for Date.RelativeFormatStyle.Presentation();
  sub_1000037C4();
  v39 = v7;
  v40 = v6;
  __chkstk_darwin(v6);
  sub_1000037D8();
  v10 = v9 - v8;
  v11 = type metadata accessor for Date.RelativeFormatStyle();
  sub_1000037C4();
  v38 = v12;
  __chkstk_darwin(v13);
  sub_1000037D8();
  v16 = v15 - v14;
  v17 = type metadata accessor for WeatherDataRelevancy();
  sub_1000037E8();
  __chkstk_darwin(v18);
  sub_1000037D8();
  v21 = v20 - v19;
  v22 = type metadata accessor for WeatherData.CachingState(0);
  __chkstk_darwin(v22 - 8);
  sub_1000037D8();
  v25 = v24 - v23;
  v26 = sub_10022C350(&qword_100CC8178);
  v27 = __chkstk_darwin(v26 - 8);
  v29 = &v37 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v31 = &v37 - v30;
  v32 = type metadata accessor for WeatherData(0);
  sub_1001A56F4(v0 + *(v32 + 28), v25);
  v33 = sub_10022C350(&qword_100CAC710);
  if (sub_100024D10(v25, 1, v33) == 1)
  {
    sub_1005BE020(v25, type metadata accessor for WeatherData.CachingState);
  }

  else
  {
    sub_1001A5758(v25 + *(v33 + 48), v31);
    type metadata accessor for Date();
    sub_1000037E8();
    (*(v34 + 8))(v25);
    sub_1001A57E0(v31, v29);
    if (sub_100024D10(v29, 1, v17) != 1)
    {
      sub_1005BDF64(v29, v21);
      static Date.RelativeFormatStyle.Presentation.numeric.getter();
      static Date.RelativeFormatStyle.UnitsStyle.wide.getter();
      static FormatStyle<>.relative(presentation:unitsStyle:)();
      (*(v41 + 8))(v5, v42);
      (*(v39 + 8))(v10, v40);
      sub_1005BDFC8();
      Date.formatted<A>(_:)();
      (*(v38 + 8))(v16, v11);
      sub_1005BDEFC(v31);
      v35 = v43;
      sub_1005BE020(v21, type metadata accessor for WeatherDataRelevancy);
      return v35;
    }

    sub_1005BDEFC(v31);
    sub_1005BDEFC(v29);
  }

  return 0;
}

uint64_t sub_1001A5510@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = swift_allocObject();
  *(v12 + 16) = a2;
  *(v12 + 24) = a3;
  *(v12 + 32) = a4;
  *(v12 + 40) = a5;
  v13 = sub_10022C350(&qword_100CBA0F8);
  (*(*(v13 - 8) + 16))(a6, a1, v13);
  v14 = (a6 + *(sub_10022C350(&qword_100CBA100) + 36));
  *v14 = sub_1001981A8;
  v14[1] = v12;
  v14[2] = 0;
  v14[3] = 0;

  sub_10022C350(&qword_100CBA108);
  State.wrappedValue.getter();
  LOBYTE(v12) = sub_100191B7C();

  *(a6 + *(sub_10022C350(&qword_100CBA110) + 36)) = (v12 & 1) == 0;
  v15 = swift_allocObject();
  v15[2] = a2;
  v15[3] = a3;
  v15[4] = a4;
  v15[5] = a5;

  v16 = static Alignment.center.getter();
  v18 = v17;
  result = sub_10022C350(&qword_100CBA118);
  v20 = (a6 + *(result + 36));
  *v20 = sub_1001A57D4;
  v20[1] = v15;
  v20[2] = v16;
  v20[3] = v18;
  return result;
}

uint64_t sub_1001A56F4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WeatherData.CachingState(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001A5758(uint64_t a1, uint64_t a2)
{
  v4 = sub_10022C350(&qword_100CC8178);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001A57E0(uint64_t a1, uint64_t a2)
{
  v4 = sub_10022C350(&qword_100CC8178);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001A5864(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Date();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return sub_100024D10(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20));
    if (v8 >= 2)
    {
      return ((v8 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

_BYTE *sub_1001A5920@<X0>(_BYTE *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  if (*result == 1)
  {
    v11 = static Color.clear.getter();
    v12 = swift_allocObject();
    v12[2] = a2;
    v12[3] = a3;
    v12[4] = a4;
    v12[5] = a5;

    v13 = sub_1001919EC;
    v14 = sub_1001A5F28;
  }

  else
  {
    v11 = 0;
    v14 = 0;
    v13 = 0;
    v12 = 0;
  }

  *a6 = v11;
  a6[1] = v14;
  a6[2] = 0;
  a6[3] = v13;
  a6[4] = v12;
  return result;
}

uint64_t sub_1001A5A00@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, int a5@<W5>, int a6@<W6>, uint64_t a7@<X8>, uint64_t a8, unsigned __int8 a9)
{
  v51 = a4;
  v56 = a5;
  LODWORD(v57) = a6;
  v50 = a1;
  v55 = type metadata accessor for Locale.Language();
  v12 = *(v55 - 8);
  __chkstk_darwin(v55);
  v14 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for Locale();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v44 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1001A5D10(a9, a8);
  v53 = v20;
  v54 = v19;
  static Locale.current.getter();
  Locale.language.getter();
  (*(v16 + 8))(v18, v15);
  LOBYTE(v18) = Locale.Language.isUrdu.getter();
  (*(v12 + 8))(v14, v55);
  v21 = v18 & 1;
  v22 = v50;
  LODWORD(v55) = a9;
  v23 = sub_1001A69B4(a8, v21, a9, a3, v52, v57, v51);
  v51 = v24;
  v52 = v23;
  v49 = v25;
  v48 = v26;
  v57 = sub_10087291C(v22, a2);
  v28 = v27;
  if (!v27)
  {
    v57 = CurrentWeather.conditionDescription.getter();
  }

  v47 = v27;
  LODWORD(v50) = v28 != 0;
  v29 = *a2;
  v30 = a2[1];
  v31 = a2[2];
  v32 = a2[3];
  v33 = a2[7];
  v45 = a2[6];
  v46 = v31;
  v34 = a2[9];
  v44 = a2[8];

  v35 = static Settings.InternationalAuthenticity.verticalHeroEnabledForCurrentLocale.getter();
  v36 = a2[10];
  v37 = a2[11];

  v39 = v56 & 1;
  v40 = v55 & 1;
  *a7 = v54;
  *(a7 + 8) = v53;
  *(a7 + 16) = v52;
  *(a7 + 24) = v51;
  *(a7 + 32) = v49;
  *(a7 + 40) = v48;
  *(a7 + 48) = v57;
  *(a7 + 56) = v47;
  *(a7 + 64) = v29;
  v41 = v46;
  *(a7 + 72) = v30;
  *(a7 + 80) = v41;
  v42 = v45;
  *(a7 + 88) = v32;
  *(a7 + 96) = v42;
  v43 = v44;
  *(a7 + 104) = v33;
  *(a7 + 112) = v43;
  *(a7 + 120) = v34;
  *(a7 + 128) = v35 & 1;
  *(a7 + 129) = 1;
  *(a7 + 130) = v39;
  *(a7 + 136) = v36;
  *(a7 + 144) = v37;
  *(a7 + 152) = v40;
  *(a7 + 153) = v50;
  return result;
}

uint64_t sub_1001A5D10(char a1, uint64_t a2)
{
  v4 = type metadata accessor for LocationCompositionState();
  __chkstk_darwin(v4);
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  v7 = &v13 - v6;
  if (a1)
  {
    sub_10011145C(a2, &v13 - v6, type metadata accessor for LocationCompositionState);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v9 = *(v7 + 1);
    if (EnumCaseMultiPayload == 1)
    {
      v10 = *(sub_10022C350(&qword_100CC4190) + 48);
      if (v9)
      {
        v11 = *(v7 + 2);
LABEL_7:

LABEL_9:
        sub_1000180EC(&v7[v10], &qword_100CA3588);
        return v11;
      }
    }

    else
    {
      v11 = *(v7 + 2);
      v10 = *(sub_10022C350(&qword_100CC4198) + 48);

      if (v9)
      {
        goto LABEL_7;
      }
    }

    v11 = LocationModel.name.getter();
    goto LABEL_9;
  }

  return LocationModel.name.getter();
}

uint64_t sub_1001A5E78()
{
  swift_getKeyPath();
  sub_10001F680();
  sub_10014986C(v0, v1);
  sub_100023108();
}

uint64_t sub_1001A5EFC()
{
  sub_100020AF8();
  result = sub_1001A5E78();
  *v0 = result;
  return result;
}

uint64_t sub_1001A5F28@<X0>(void *a1@<X8>)
{
  v2 = type metadata accessor for CoordinateSpace();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 104))(v6, enum case for CoordinateSpace.global(_:), v2, v4);
  GeometryProxy.frameClippedToScrollViews(in:)();
  v7 = v10[3];
  v8 = v10[4];
  result = (*(v3 + 8))(v6, v2);
  *a1 = v7;
  a1[1] = v8;
  return result;
}

uint64_t sub_1001A6038(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1001A6078(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t sub_1001A608C()
{
  sub_100020DF0();
  v0 = type metadata accessor for BackgroundModifier(0);
  sub_100003AE8(v0);
  v1 = type metadata accessor for RoundedCornerStyle();
  sub_100003810(v1);
  sub_1000053B8();
  sub_1000212EC();

  return sub_1001A748C(v2, v3, v4, v5, v6, v7);
}

uint64_t sub_1001A6184(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_1001A61C8()
{
  sub_100003B38();
  v2 = type metadata accessor for PreviewLocation();
  sub_1000037E8();
  __chkstk_darwin(v3);
  sub_1000038E4();
  v82 = v4;
  v5 = sub_10022C350(&qword_100CA65C8);
  sub_100003810(v5);
  sub_100003828();
  __chkstk_darwin(v6);
  v8 = v76 - v7;
  v9 = sub_10022C350(&qword_100CB8F90);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v10);
  v81 = v76 - v11;
  v12 = type metadata accessor for CurrentLocation();
  sub_1000037E8();
  __chkstk_darwin(v13);
  v15 = v76 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_10022C350(&unk_100CE49F0);
  sub_100003810(v16);
  sub_100003828();
  __chkstk_darwin(v17);
  v19 = v76 - v18;
  v20 = sub_10022C350(&qword_100CBC9B0);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v21);
  v23 = v76 - v22;
  if (*v1 != *v0)
  {
    goto LABEL_54;
  }

  if (v1[1] != v0[1])
  {
    goto LABEL_54;
  }

  sub_100073B0C(*(v1 + 1), *(v0 + 1));
  if ((v24 & 1) == 0)
  {
    goto LABEL_54;
  }

  v80 = v8;
  v25 = type metadata accessor for LocationInput();
  sub_100003C48(v25[7]);
  if ((static Date.== infix(_:_:)() & 1) == 0)
  {
    goto LABEL_54;
  }

  sub_100003CE8();
  if (!v31)
  {
    goto LABEL_54;
  }

  if ((sub_1001AEF68(*&v1[v25[9]] | (v1[v25[9] + 2] << 16), *&v0[v25[9]] | (v0[v25[9] + 2] << 16)) & 1) == 0)
  {
    goto LABEL_54;
  }

  sub_100003CE8();
  if (!v31)
  {
    goto LABEL_54;
  }

  v77 = v25;
  v26 = v25[11];
  v27 = v1[v26];
  LODWORD(v78) = v0[v26];
  v28 = LocationAuthorizationState.rawValue.getter(v27);
  v79 = v29;
  v31 = v28 == LocationAuthorizationState.rawValue.getter(v78) && v79 == v30;
  if (v31)
  {
  }

  else
  {
    LODWORD(v78) = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v78 & 1) == 0)
    {
      goto LABEL_54;
    }
  }

  v32 = v77;
  if ((sub_1000BA238(v1[v77[12]], v0[v77[12]]) & 1) == 0)
  {
    goto LABEL_54;
  }

  sub_100003CE8();
  if (!v31)
  {
    goto LABEL_54;
  }

  sub_100003C48(v32[14]);
  if ((static Date.== infix(_:_:)() & 1) == 0)
  {
    goto LABEL_54;
  }

  sub_100003CE8();
  if (!v31)
  {
    goto LABEL_54;
  }

  v33 = v32[16];
  v34 = *&v1[v33];
  v35 = *&v1[v33 + 8];
  v36 = *&v1[v33 + 16];
  v37 = *&v1[v33 + 24];
  v38 = &v0[v33];
  v39 = *v38;
  v40 = *(v38 + 1);
  v79 = *(v38 + 3);
  if (v34 != v39 || v35 != v40)
  {
    v78 = v37;
    v76[1] = v36;
    if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_54;
    }
  }

  sub_1000BCFBC();
  if ((v42 & 1) == 0)
  {
    goto LABEL_54;
  }

  sub_1000BD330();
  if ((v43 & 1) == 0)
  {
    goto LABEL_54;
  }

  v44 = v77[17];
  v45 = *(v20 + 48);
  sub_1000302D8(&v1[v44], v23, &unk_100CE49F0);
  sub_1000302D8(&v0[v44], &v23[v45], &unk_100CE49F0);
  sub_1000038B4(v23, 1, v12);
  if (v31)
  {
    sub_1000038B4(&v23[v45], 1, v12);
    if (v31)
    {
      sub_1000180EC(v23, &unk_100CE49F0);
      goto LABEL_41;
    }

LABEL_38:
    v48 = &qword_100CBC9B0;
    v49 = v23;
LABEL_39:
    sub_1000180EC(v49, v48);
    goto LABEL_54;
  }

  sub_1000302D8(v23, v19, &unk_100CE49F0);
  sub_1000038B4(&v23[v45], 1, v12);
  if (v46)
  {
    sub_100010D38();
    sub_100141B94(v19, v47);
    goto LABEL_38;
  }

  sub_1001876B0();
  v50 = static CurrentLocation.== infix(_:_:)();
  sub_100141B94(v15, &type metadata accessor for CurrentLocation);
  sub_100141B94(v19, &type metadata accessor for CurrentLocation);
  sub_1000180EC(v23, &unk_100CE49F0);
  if ((v50 & 1) == 0)
  {
    goto LABEL_54;
  }

LABEL_41:
  if (*&v1[v77[18]] != *&v0[v77[18]])
  {
    goto LABEL_54;
  }

  v51 = v77[19];
  v52 = *&v1[v51 + 16];
  v83[0] = *&v1[v51];
  v83[1] = v52;
  v53 = *&v1[v51 + 32];
  v54 = &v0[v51];
  v55 = *v54;
  v56 = *(v54 + 1);
  v83[2] = v53;
  v84[0] = v55;
  v57 = *(v54 + 2);
  v84[1] = v56;
  v84[2] = v57;
  if ((sub_1000B8A2C(v83, v84) & 1) == 0)
  {
    goto LABEL_54;
  }

  sub_10000CEB4(v77[20]);
  sub_1001CAA30();
  if ((v58 & 1) == 0)
  {
    goto LABEL_54;
  }

  sub_100003C48(v77[21]);
  if ((static Date.== infix(_:_:)() & 1) == 0)
  {
    goto LABEL_54;
  }

  if (v1[v77[22]] != v0[v77[22]])
  {
    goto LABEL_54;
  }

  sub_1000BDA70();
  if ((v59 & 1) == 0)
  {
    goto LABEL_54;
  }

  sub_1000BDD2C();
  if ((v60 & 1) == 0)
  {
    goto LABEL_54;
  }

  sub_100003CE8();
  if (!v31)
  {
    goto LABEL_54;
  }

  sub_10000CEB4(v77[24]);
  sub_1000B9F58();
  if ((v61 & 1) == 0)
  {
    goto LABEL_54;
  }

  sub_100003C48(v77[25]);
  if ((static AppConfiguration.== infix(_:_:)() & 1) == 0)
  {
    goto LABEL_54;
  }

  sub_10000CEB4(v77[26]);
  sub_1000BDD2C();
  if ((v62 & 1) == 0)
  {
    goto LABEL_54;
  }

  sub_100003CE8();
  if (!v31)
  {
    goto LABEL_54;
  }

  v65 = v77[28];
  v66 = *(v9 + 48);
  v67 = v81;
  sub_1000302D8(&v1[v65], v81, &qword_100CA65C8);
  sub_1000302D8(&v0[v65], v67 + v66, &qword_100CA65C8);
  sub_1000038B4(v67, 1, v2);
  if (!v31)
  {
    v68 = v81;
    sub_1000302D8(v81, v80, &qword_100CA65C8);
    sub_1000038B4(v68 + v66, 1, v2);
    if (!v69)
    {
      v71 = v81;
      v70 = v82;
      sub_1001876B0();
      v72 = v80;
      sub_1006E6E98();
      v74 = v73;
      sub_100141B94(v70, type metadata accessor for PreviewLocation);
      sub_100141B94(v72, type metadata accessor for PreviewLocation);
      sub_1000180EC(v71, &qword_100CA65C8);
      if ((v74 & 1) == 0)
      {
        goto LABEL_54;
      }

      goto LABEL_66;
    }

    sub_100141B94(v80, type metadata accessor for PreviewLocation);
    goto LABEL_64;
  }

  sub_1000038B4(v81 + v66, 1, v2);
  if (!v31)
  {
LABEL_64:
    v48 = &qword_100CB8F90;
    v49 = v81;
    goto LABEL_39;
  }

  sub_1000180EC(v81, &qword_100CA65C8);
LABEL_66:
  sub_10000CEB4(v77[29]);
  sub_1000B9424();
  if (v75)
  {
    v63 = v1[v77[30]] ^ v0[v77[30]] ^ 1;
    return v63 & 1;
  }

LABEL_54:
  v63 = 0;
  return v63 & 1;
}

uint64_t sub_1001A69B4(uint64_t a1, int a2, int a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7)
{
  v77 = a7;
  v78 = a5;
  v90 = a2;
  v91 = a6;
  v89 = a4;
  v93 = a3;
  v8 = type metadata accessor for LocationOfInterestType();
  v85 = *(v8 - 8);
  v86 = v8;
  __chkstk_darwin(v8);
  v84 = &v74 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Location.Identifier();
  v87 = *(v10 - 8);
  v88 = v10;
  __chkstk_darwin(v10);
  v12 = &v74 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v75 = &v74 - v14;
  v92 = type metadata accessor for LocationOfInterest();
  v83 = *(v92 - 8);
  __chkstk_darwin(v92);
  v76 = &v74 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v74 = &v74 - v17;
  v18 = sub_10022C350(&qword_100CA3588);
  __chkstk_darwin(v18 - 8);
  v80 = &v74 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v82 = &v74 - v21;
  __chkstk_darwin(v22);
  v79 = &v74 - v23;
  __chkstk_darwin(v24);
  v81 = &v74 - v25;
  v26 = type metadata accessor for Locale();
  __chkstk_darwin(v26 - 8);
  v27 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v27 - 8);
  v28 = type metadata accessor for LocationCompositionState();
  __chkstk_darwin(v28);
  v30 = (&v74 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v31);
  v33 = (&v74 - v32);
  __chkstk_darwin(v34);
  v36 = (&v74 - v35);
  v37 = a1;
  sub_10011145C(a1, &v74 - v35, type metadata accessor for LocationCompositionState);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_100105FE4(v36, type metadata accessor for LocationCompositionState);
  }

  else
  {
    sub_1001A6184(*v36, v36[1]);
    v38 = sub_10022C350(&qword_100CC4198);
    v39 = v36 + *(v38 + 64);
    v40 = *(v39 + 1);
    v41 = v39[16];
    sub_1000180EC(v36 + *(v38 + 48), &qword_100CA3588);
    if (v40)
    {

      if ((v41 & 1) == 0)
      {
        countAndFlagsBits = Image.init(systemName:)();
        String.LocalizationValue.init(stringLiteral:)();
        static Locale.current.getter();
        String.init(localized:defaultValue:table:bundle:locale:comment:)();
        return countAndFlagsBits;
      }
    }
  }

  if ((v93 & 1) == 0)
  {
    if ((v91 & 1) == 0)
    {
      sub_10011145C(v37, v30, type metadata accessor for LocationCompositionState);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_1001A6184(*v30, v30[1]);
        v64 = sub_10022C350(&qword_100CC4190);
        v65 = *(v30 + *(v64 + 64));
        sub_1000180EC(v30 + *(v64 + 48), &qword_100CA3588);
        if (v65 == 1)
        {
          return sub_1008727D8();
        }
      }

      else
      {
        sub_100105FE4(v30, type metadata accessor for LocationCompositionState);
      }

      Location.sanitizedSecondaryName.getter();
      if (v72)
      {
        countAndFlagsBits = String.uppercasedWithPreferredLocale()()._countAndFlagsBits;

        return countAndFlagsBits;
      }

      return 0;
    }

    LocationModel.identifier.getter();
    v51 = Location.Identifier.name.getter();
    v53 = v52;
    (*(v87 + 8))(v12, v88);

    v54 = HIBYTE(v53) & 0xF;
    v55 = v51 & 0xFFFFFFFFFFFFLL;
    v56 = (v53 & 0x2000000000000000) == 0;
LABEL_14:
    if (v56)
    {
      v54 = v55;
    }

    if (v54)
    {
      countAndFlagsBits = *(v78 + OBJC_IVAR____TtC7Weather24LocationViewModelFactory_myLocationAllCapsString);

      return countAndFlagsBits;
    }

    return 0;
  }

  sub_10011145C(v37, v33, type metadata accessor for LocationCompositionState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v44 = *v33;
  v43 = v33[1];
  if (EnumCaseMultiPayload != 1)
  {
    sub_1001A6184(*v33, v33[1]);
    v57 = *(sub_10022C350(&qword_100CC4198) + 48);

    v47 = v81;
    sub_10011C0F0(v33 + v57, v81, &qword_100CA3588);
    v58 = v79;
    sub_1000302D8(v47, v79, &qword_100CA3588);
    v59 = v92;
    if (sub_100024D10(v58, 1, v92) != 1)
    {
      v69 = v83;
      v70 = v74;
      (*(v83 + 32))(v74, v58, v59);
      countAndFlagsBits = Image.init(systemName:)();
      v71 = v84;
      LocationOfInterest.type.getter();
      LocationOfInterestType.title.getter();
      (*(v85 + 8))(v71, v86);
      String.uppercasedWithPreferredLocale()();

      (*(v69 + 8))(v70, v59);
      goto LABEL_24;
    }

    sub_1000180EC(v58, &qword_100CA3588);
    v60 = v75;
    LocationModel.identifier.getter();
    v61 = Location.Identifier.name.getter();
    v63 = v62;
    (*(v87 + 8))(v60, v88);
    sub_1000180EC(v47, &qword_100CA3588);

    v54 = HIBYTE(v63) & 0xF;
    v55 = v61 & 0xFFFFFFFFFFFFLL;
    v56 = (v63 & 0x2000000000000000) == 0;
    goto LABEL_14;
  }

  v45 = sub_10022C350(&qword_100CC4190);
  v46 = *(v33 + *(v45 + 64));
  v47 = v82;
  sub_10011C0F0(v33 + *(v45 + 48), v82, &qword_100CA3588);
  v48 = v80;
  sub_1000302D8(v47, v80, &qword_100CA3588);
  v49 = v92;
  if (sub_100024D10(v48, 1, v92) != 1)
  {
    sub_1001A6184(v44, v43);
    v66 = v83;
    v67 = v76;
    (*(v83 + 32))(v76, v48, v49);
    LocationOfInterest.imageName.getter();
    countAndFlagsBits = Image.init(systemName:)();
    v68 = v84;
    LocationOfInterest.type.getter();
    LocationOfInterestType.title.getter();
    (*(v85 + 8))(v68, v86);
    String.uppercasedWithPreferredLocale()();

    (*(v66 + 8))(v67, v49);
LABEL_24:
    sub_1000180EC(v47, &qword_100CA3588);
    return countAndFlagsBits;
  }

  sub_1000180EC(v48, &qword_100CA3588);
  if ((v46 & 1) == 0)
  {
    if (v43)
    {
      countAndFlagsBits = String.uppercasedWithPreferredLocale()()._countAndFlagsBits;

      sub_1000180EC(v47, &qword_100CA3588);
      return countAndFlagsBits;
    }

    sub_1000180EC(v47, &qword_100CA3588);
    return 0;
  }

  sub_1001A6184(v44, v43);
  countAndFlagsBits = sub_1008727D8();
  sub_1000180EC(v47, &qword_100CA3588);
  return countAndFlagsBits;
}

uint64_t sub_1001A748C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>, double a5@<D0>, double a6@<D1>)
{
  v40 = a3;
  v41 = a6;
  v35 = a5;
  v34[1] = a2;
  v36 = a1;
  v42 = a4;
  v37 = type metadata accessor for RoundedCornerStyle();
  v6 = *(v37 - 8);
  __chkstk_darwin(v37);
  v8 = v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10022C350(&qword_100CA4680);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v34 - v11;
  v39 = sub_10022C350(&qword_100CA4670);
  v38 = *(v39 - 8);
  __chkstk_darwin(v39);
  v14 = v34 - v13;
  v15 = type metadata accessor for NamedCoordinateSpace();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  static CoordinateSpaceProtocol<>.scrollView.getter();
  GeometryProxy.bounds(of:)();
  v19 = v48;
  (*(v16 + 8))(v18, v15);
  v20 = 0.0;
  if ((v49 & 1) == 0)
  {
    v20 = v19;
  }

  GeometryProxy.size.getter();
  v22 = v21;
  v24 = v23;
  if (v20 >= -v35)
  {
    CGRect.adding(minY:)();
    v54.origin.x = v25;
    v54.origin.y = v26;
    v54.size.width = v27;
    v54.size.height = v28;
    v53.origin.x = 0.0;
    v53.origin.y = 0.0;
    v53.size.width = v22;
    v53.size.height = v24;
    CGRectIntersection(v53, v54);
  }

  else
  {
    v52.origin.x = 0.0;
    v52.origin.y = 0.0;
    v52.size.width = v22;
    v52.size.height = v24;
    CGRectIntegral(v52);
  }

  v29 = type metadata accessor for EmptyVisualEffect();
  v30 = sub_100061A3C(&qword_100CA4688, &type metadata accessor for EmptyVisualEffect);
  VisualEffect.offset(x:y:)();
  *&v50[0] = v29;
  *(&v50[0] + 1) = v30;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  VisualEffect.opacity(_:)();
  (*(v10 + 8))(v12, v9);
  (*(v6 + 16))(v8, v40, v37);
  Path.init(roundedRect:cornerRadius:style:)();
  v45 = v50[0];
  v46 = v50[1];
  v47 = v51;
  v43 = v9;
  v44 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  sub_1001A7CA8();
  v32 = v39;
  VisualEffect.clipShape<A>(_:style:)();
  sub_1001A8674(v50);
  return (*(v38 + 8))(v14, v32);
}

void sub_1001A79EC(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for MapsConfiguration.OverlayKind();
  __chkstk_darwin(v3 - 8);
  sub_1000037D8();
  v6 = v5 - v4;
  v23 = type metadata accessor for MapsConfiguration();
  sub_1000037C4();
  v8 = v7;
  __chkstk_darwin(v9);
  sub_1000037D8();
  v12 = v11 - v10;
  v13 = type metadata accessor for AppConfiguration();
  sub_1000037C4();
  v15 = v14;
  __chkstk_darwin(v16);
  sub_1000037D8();
  v19 = v18 - v17;
  static Settings.Maps.overrides.getter();
  v20 = dispatch thunk of SettingGroup.isEnabled.getter();

  if (v20)
  {
    sub_10000536C();

    sub_1005230B4(v21);
  }

  else
  {
    sub_1000161C0(v1, v1[3]);
    dispatch thunk of AppConfigurationManagerType.appConfiguration.getter();
    AppConfiguration.maps.getter();
    (*(v15 + 8))(v19, v13);
    MapsConfiguration.defaultOverlayKind.getter();
    (*(v8 + 8))(v12, v23);
    sub_1005233D8(v6, a1);
    sub_10000536C();
  }
}

uint64_t sub_1001A7BF8()
{
  sub_100003A00();
  v1(0);
  sub_1000037E8();
  v2 = sub_100003940();
  v3(v2);
  return v0;
}

uint64_t sub_1001A7C50()
{
  sub_100003A00();
  v1(0);
  sub_1000037E8();
  v2 = sub_100003940();
  v3(v2);
  return v0;
}

unint64_t sub_1001A7CA8()
{
  result = qword_100CC2330;
  if (!qword_100CC2330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC2330);
  }

  return result;
}

uint64_t sub_1001A7CFC(void (*a1)(uint64_t, void, __n128), uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void (*)(uint64_t, void, __n128), void), uint64_t a6)
{
  v52 = a6;
  v53 = a5;
  v56 = a4;
  v57 = a2;
  v58 = a1;
  v54 = sub_10022C350(&qword_100CA4B70);
  __chkstk_darwin(v54);
  v55 = &v48 - v7;
  v8 = sub_10022C350(&qword_100CA4B78);
  __chkstk_darwin(v8 - 8);
  v51 = &v48 - v9;
  v50 = type metadata accessor for LocationViewModel();
  __chkstk_darwin(v50);
  v48 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v49 = &v48 - v12;
  v13 = sub_10022C350(&qword_100CA4B80);
  __chkstk_darwin(v13);
  v15 = &v48 - v14;
  v16 = sub_10022C350(&qword_100CA4B88);
  __chkstk_darwin(v16 - 8);
  v18 = &v48 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v48 - v20;
  __chkstk_darwin(v22);
  v24 = &v48 - v23;
  __chkstk_darwin(v25);
  v27 = &v48 - v26;
  v28 = type metadata accessor for LocationInput();
  __chkstk_darwin(v28);
  v30 = &v48 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __chkstk_darwin(v31);
  v34 = &v48 - v33;
  v58(a3 + 64, 0, v32);
  if (sub_100024D10(v27, 1, v28) == 1)
  {
    return sub_1000180EC(v27, &qword_100CA4B88);
  }

  sub_1000A0AC0();
  v58 = v34;
  sub_1001A7BF8();
  sub_10001B350(v24, 0, 1, v28);
  sub_1001AF120(v21);
  v36 = *(v13 + 48);
  sub_100095588();
  sub_100095588();
  if (sub_100024D10(v15, 1, v28) != 1)
  {
    sub_100095588();
    if (sub_100024D10(&v15[v36], 1, v28) != 1)
    {
      sub_1000A0AC0();
      v42 = sub_1001A61C8();
      sub_1001AFB34(v30, type metadata accessor for LocationInput);
      sub_1000180EC(v21, &qword_100CA4B88);
      sub_1000180EC(v24, &qword_100CA4B88);
      sub_1001AFB34(v18, type metadata accessor for LocationInput);
      sub_1000180EC(v15, &qword_100CA4B88);
      if (v42)
      {
        goto LABEL_15;
      }

LABEL_9:
      v37 = v51;
      v38 = v58;
      v53(v58, 0);
      if (sub_100024D10(v37, 1, v50) == 1)
      {
        sub_1000180EC(v37, &qword_100CA4B78);
      }

      else
      {
        v39 = v49;
        sub_1000A0AC0();
        v40 = v48;
        sub_100140210();
        v41 = sub_100163AEC(v39, v40);
        sub_1001AFB34(v40, type metadata accessor for LocationViewModel);
        if ((v41 & 1) == 0)
        {
          if (qword_100CA2740 != -1)
          {
            swift_once();
          }

          v44 = type metadata accessor for Logger();
          sub_10000703C(v44, qword_100D90C18);
          v45 = Logger.logObject.getter();
          v46 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v45, v46))
          {
            v47 = swift_slowAlloc();
            v59[0] = swift_slowAlloc();
            *v47 = 136446466;
            *(v47 + 4) = sub_100078694(0x6E6F697461636F4CLL, 0xED00007475706E49, v59);
            *(v47 + 12) = 2082;
            *(v47 + 14) = sub_100078694(0xD000000000000011, 0x8000000100ABC0E0, v59);
            _os_log_impl(&_mh_execute_header, v45, v46, "Selector observed model difference for %{public}s, %{public}s; views will update", v47, 0x16u);
            swift_arrayDestroy();
          }

          sub_10022C350(&qword_100CA4B90);
          sub_1001A7BF8();
          sub_1001A7BF8();
          swift_storeEnumTagMultiPayload();
          swift_beginAccess();
          sub_100097AA4();
          swift_endAccess();
          sub_10022C350(&qword_100CA4B98);
          sub_100006F64(&qword_100CA4BA0, &qword_100CA4B98);
          ObservableObject<>.objectWillChange.getter();
          ObservableObjectPublisher.send()();

          sub_1001AFB34(v39, type metadata accessor for LocationViewModel);
          v43 = v38;
          return sub_1001AFB34(v43, type metadata accessor for LocationInput);
        }

        sub_1001AFB34(v39, type metadata accessor for LocationViewModel);
      }

      sub_10022C350(&qword_100CA4B90);
      sub_1001A7BF8();
      sub_100140210();
      sub_1001AFB34(v38, type metadata accessor for LocationInput);
      swift_storeEnumTagMultiPayload();
      swift_beginAccess();
      sub_100097AA4();
      return swift_endAccess();
    }

    sub_1000180EC(v21, &qword_100CA4B88);
    sub_1000180EC(v24, &qword_100CA4B88);
    sub_1001AFB34(v18, type metadata accessor for LocationInput);
LABEL_8:
    sub_1000180EC(v15, &qword_100CA4B80);
    goto LABEL_9;
  }

  sub_1000180EC(v21, &qword_100CA4B88);
  sub_1000180EC(v24, &qword_100CA4B88);
  if (sub_100024D10(&v15[v36], 1, v28) != 1)
  {
    goto LABEL_8;
  }

  sub_1000180EC(v15, &qword_100CA4B88);
LABEL_15:
  v43 = v58;
  return sub_1001AFB34(v43, type metadata accessor for LocationInput);
}

uint64_t sub_1001A8724()
{
  v2 = v1;
  v3 = sub_10000C76C();
  type metadata accessor for LocationWeatherDataState(v3);
  sub_1000037E8();
  __chkstk_darwin(v4);
  sub_1000037D8();
  v7 = v6 - v5;
  sub_100006610();
  sub_1001A0E7C(v2, v7);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v14 = *(sub_10022C350(&qword_100CA75D8) + 48);
      sub_100010968();
      sub_1001A10BC(v7 + v15, v0);
      type metadata accessor for NewsDataModel();
      v16 = sub_1000164D8();
      sub_10001B350(v16, v17, 1, v18);
      sub_100008D68();
      sub_1001A126C(v7 + v14, v19);
      sub_10001F620();
      return sub_1001A126C(v7, v20);
    case 2u:
      sub_1001A126C(v7, type metadata accessor for LocationWeatherDataState);
      goto LABEL_4;
    case 3u:
LABEL_4:
      type metadata accessor for NewsDataModel();
      v10 = sub_1000719C8();
      return sub_10001B350(v10, v11, 1, v12);
    default:
      sub_100010968();
      v8 = sub_100003B2C();
      sub_1001A10BC(v8, v9);
      type metadata accessor for NewsDataModel();
      v10 = sub_1000164D8();
      return sub_10001B350(v10, v11, 1, v12);
  }
}

uint64_t sub_1001A8884(uint64_t a1, uint64_t a2, char a3)
{
  v4 = sub_10022C350(&qword_100CA4680);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v19 - v6;
  v8 = type metadata accessor for NamedCoordinateSpace();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  static CoordinateSpaceProtocol<>.scrollView.getter();
  GeometryProxy.bounds(of:)();
  v12 = *&v19[3];
  v13 = *&v19[4];
  v14 = *&v19[5];
  v15 = *&v19[6];
  (*(v9 + 8))(v11, v8);
  if (v20)
  {
    v12 = 0.0;
    v13 = 0.0;
    v14 = 0.0;
    v15 = 0.0;
  }

  v21.origin.x = v12;
  v21.origin.y = v13;
  v21.size.width = v14;
  v21.size.height = v15;
  CGRectGetMinY(v21);
  if ((a3 & 1) == 0)
  {
    v22.origin.x = v12;
    v22.origin.y = v13;
    v22.size.width = v14;
    v22.size.height = v15;
    CGRectGetMinY(v22);
  }

  v16 = type metadata accessor for EmptyVisualEffect();
  v17 = sub_100061A3C(&qword_100CA4688, &type metadata accessor for EmptyVisualEffect);
  VisualEffect.offset(x:y:)();
  v19[1] = v16;
  v19[2] = v17;
  swift_getOpaqueTypeConformance2();
  VisualEffect.opacity(_:)();
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_1001A8B78(uint64_t a1)
{
  v2 = v1;
  v407 = *v1;
  v4 = sub_10022C350(&qword_100CA7000);
  v5 = sub_100003810(v4);
  __chkstk_darwin(v5);
  v409 = &v367 - v6;
  sub_1000038CC();
  v7 = type metadata accessor for CurrentWeather();
  v8 = sub_100003810(v7);
  __chkstk_darwin(v8);
  sub_1000038E4();
  v408 = v9;
  v10 = sub_10022C350(&qword_100CABD10);
  v11 = sub_100003810(v10);
  __chkstk_darwin(v11);
  v388 = &v367 - v12;
  sub_1000038CC();
  type metadata accessor for Location.Identifier();
  sub_1000037C4();
  v380 = v14;
  v381 = v13;
  __chkstk_darwin(v13);
  sub_1000038E4();
  v379 = v15;
  sub_1000038CC();
  v405 = type metadata accessor for WeatherMapOverlayKind();
  sub_1000037C4();
  v387 = v16;
  __chkstk_darwin(v17);
  sub_100003848();
  v382 = v18;
  sub_10000386C();
  __chkstk_darwin(v19);
  sub_10000E70C();
  v377 = v20;
  v21 = sub_1000038CC();
  v393 = type metadata accessor for LocationViewMapPosition.LocationMapConfiguration(v21);
  sub_1000037E8();
  __chkstk_darwin(v22);
  sub_1000038E4();
  v394 = v23;
  v24 = sub_10022C350(&qword_100CE9A98);
  v25 = sub_100003810(v24);
  __chkstk_darwin(v25);
  sub_100003848();
  v403 = v26;
  sub_10000386C();
  __chkstk_darwin(v27);
  sub_100003878();
  v395 = v28;
  sub_10000386C();
  __chkstk_darwin(v29);
  sub_10000E70C();
  v424 = v30;
  sub_1000038CC();
  HourPrecipitationComponentParameters = type metadata accessor for NextHourPrecipitationComponentParameters();
  sub_1000037E8();
  __chkstk_darwin(v31);
  sub_1000038E4();
  v374 = v32;
  sub_1000038CC();
  v33 = type metadata accessor for NewsArticleComponent();
  v34 = sub_100003810(v33);
  __chkstk_darwin(v34);
  sub_100003848();
  v384 = v35;
  sub_10000386C();
  __chkstk_darwin(v36);
  sub_100003878();
  v383 = v37;
  sub_10000386C();
  __chkstk_darwin(v38);
  sub_100003878();
  v378 = v39;
  sub_10000386C();
  __chkstk_darwin(v40);
  sub_100003878();
  v376 = v41;
  sub_10000386C();
  __chkstk_darwin(v42);
  sub_100003878();
  v375 = v43;
  sub_10000386C();
  __chkstk_darwin(v44);
  sub_10000E70C();
  v371 = v45;
  sub_1000038CC();
  v418 = type metadata accessor for WeatherAlert.Prominence();
  sub_1000037C4();
  v423 = v46;
  __chkstk_darwin(v47);
  sub_1000038E4();
  v417 = v48;
  v49 = sub_10022C350(&qword_100CAE820);
  v50 = sub_100003810(v49);
  __chkstk_darwin(v50);
  sub_100003848();
  v404 = v51;
  sub_10000386C();
  __chkstk_darwin(v52);
  sub_100003878();
  v401 = v53;
  sub_10000386C();
  __chkstk_darwin(v54);
  sub_100003878();
  v370 = v55;
  sub_10000386C();
  __chkstk_darwin(v56);
  sub_100003878();
  v372 = v57;
  sub_10000386C();
  __chkstk_darwin(v58);
  v60 = (&v367 - v59);
  v61 = type metadata accessor for LocationViewComponent();
  sub_1000037C4();
  v406 = v62;
  __chkstk_darwin(v63);
  sub_100003848();
  v386 = v64;
  sub_10000386C();
  __chkstk_darwin(v65);
  sub_100003878();
  v385 = v66;
  sub_10000386C();
  __chkstk_darwin(v67);
  sub_100003878();
  v420 = v68;
  sub_10000386C();
  __chkstk_darwin(v69);
  sub_100003878();
  v368 = v70;
  sub_10000386C();
  __chkstk_darwin(v71);
  sub_100003878();
  v369 = v72;
  sub_10000386C();
  __chkstk_darwin(v73);
  sub_100003878();
  v429 = v74;
  sub_10000386C();
  __chkstk_darwin(v75);
  sub_10000E70C();
  v426 = v76;
  v77 = sub_10022C350(&qword_100CC3448);
  v78 = sub_100003810(v77);
  __chkstk_darwin(v78);
  sub_100003848();
  v411 = v79;
  sub_10000386C();
  __chkstk_darwin(v80);
  sub_100003878();
  v402 = v81;
  sub_10000386C();
  __chkstk_darwin(v82);
  sub_100003878();
  v397 = v83;
  sub_10000386C();
  __chkstk_darwin(v84);
  sub_100003878();
  v391 = v85;
  sub_10000386C();
  __chkstk_darwin(v86);
  sub_100003878();
  v390 = v87;
  sub_10000386C();
  __chkstk_darwin(v88);
  sub_100003878();
  v389 = v89;
  sub_10000386C();
  __chkstk_darwin(v90);
  v92 = &v367 - v91;
  v428 = type metadata accessor for PreprocessedWeatherData();
  sub_1000037E8();
  __chkstk_darwin(v93);
  sub_1000037D8();
  v96 = (v95 - v94);
  v392 = type metadata accessor for WeatherData(0);
  sub_1000037E8();
  __chkstk_darwin(v97);
  sub_1000037D8();
  v100 = v99 - v98;
  type metadata accessor for Location();
  sub_1000037C4();
  __chkstk_darwin(v101);
  sub_1000037D8();
  v433 = v103 - v102;
  v412 = v104;
  v105 = *(v104 + 16);
  v422 = v106;
  v415 = v105;
  v416 = (v104 + 16);
  v105();
  v107 = type metadata accessor for LocationViewConfigurationInputs();
  sub_100023648();
  v432 = v100;
  sub_100111570(a1 + v108, v100, v109);
  sub_1000B0364();
  v434 = v96;
  sub_100111570(a1 + v110, v96, v111);
  v112 = v107[7];
  LODWORD(v427) = *(a1 + v107[8]);
  v113 = v107[10];
  v419 = *(a1 + v107[9]);
  v114 = *(a1 + v113);
  v413 = *(a1 + v107[11]);
  sub_100010A34(v2 + 2, v2[5]);
  v414 = v114;
  *&v436 = sub_100922C64(v100, v114);
  v116 = v115;
  v117 = sub_1000161C0(v2 + 7, v2[10]);
  sub_100010A34((*v117 + 16), *(*v117 + 40));
  v396 = a1;
  v430 = v92;
  sub_10051818C(a1 + v112, v116, v92);
  type metadata accessor for LocationViewConfigurationBuilder();
  v118 = swift_allocObject();
  *(v118 + 16) = _swiftEmptyArrayStorage;
  v410 = v118 + 16;
  *(v118 + 24) = &_swiftEmptySetSingleton;
  v119 = v2[10];
  v431 = v2;
  sub_1000161C0(v2 + 7, v119);
  v120 = v423;
  v121 = v423 + 104;
  v122 = v417;
  v123 = v418;
  v398 = *(v423 + 104);
  v398(v417, enum case for WeatherAlert.Prominence.high(_:), v418);
  v421 = v116;
  sub_1008BB370(v60);
  v124 = v60;
  v125 = *(v120 + 8);
  v423 = v120 + 8;
  v125(v122, v123);
  v126 = sub_10000C7F0();
  v127 = v61;
  sub_1000038B4(v126, v128, v61);
  v435 = v118;
  if (v204)
  {
    sub_1000180EC(v124, &qword_100CAE820);
  }

  else
  {
    sub_100011150();
    v129 = v426;
    sub_1001A1114(v124, v426, v130);
    sub_1001AAF0C(v129);
    sub_1000093D0();
    sub_1001AEEB4(v129, v131);
  }

  v132 = v389;
  sub_100035AD0(v430, v389, &qword_100CC3448);
  v133 = type metadata accessor for NewsComponentPosition();
  sub_1000038B4(v132, 1, v133);
  v425 = v127;
  v426 = v133;
  v134 = v429;
  v135 = v401;
  v399 = v121;
  v400 = v125;
  if (v204)
  {
    sub_1000180EC(v132, &qword_100CC3448);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload())
    {
      sub_100015228();
      v138 = v132;
    }

    else
    {
      sub_100028EE4();
      v139 = v371;
      sub_1001A1114(v132, v371, v140);
      sub_1000171D0();
      sub_100111570(v139, v134, v141);
      swift_storeEnumTagMultiPayload();
      sub_1001AAF0C(v134);
      sub_1000093D0();
      sub_1001AEEB4(v134, v142);
      sub_10004EE84();
      v138 = v139;
    }

    sub_1001AEEB4(v138, v137);
  }

  if (*(v436 + 16))
  {
    sub_100040E68();
    Hasher.init(_seed:)();
    String.hash(into:)();
    Hasher._finalize()();
    sub_1000872B8();
    if (v143)
    {
      while (1)
      {
        switch(*(*(v436 + 48) + v132))
        {
          case 1:

            goto LABEL_20;
          case 2:
            sub_100087EF8();
            break;
          case 3:
            sub_100008C94();
            break;
          default:
            break;
        }

        v144 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v144)
        {
          break;
        }

        sub_1000D3DCC();
        if ((v145 & 1) == 0)
        {
          goto LABEL_28;
        }
      }

LABEL_20:
      v146 = v374;
      sub_100088920();
      v147();
      v148 = HourPrecipitationComponentParameters;
      sub_100023648();
      sub_100111570(v432, v146 + v149, v150);
      *(v146 + *(v148 + 24)) = _swiftEmptyArrayStorage;
      *(v146 + *(v148 + 28)) = v414;
      sub_100010A34((v431 + 56), *(v431 + 80));
      v132 = v372;
      sub_1008BA700(v146, v372);
      sub_1000038B4(v132, 1, v425);
      if (v204)
      {
        sub_100006CD4();
        sub_1001AEEB4(v146, v151);
        sub_1000180EC(v132, &qword_100CAE820);
      }

      else
      {
        sub_100011150();
        v152 = v132;
        v132 = v369;
        sub_1001A1114(v152, v369, v153);
        sub_1001AAF0C(v132);
        if (v413 & 1) != 0 || (v427)
        {
          sub_1000093D0();
          v155 = v132;
        }

        else
        {
          v132 = v429;
          sub_100088920();
          v156();
          swift_storeEnumTagMultiPayload();
          sub_1001AAF0C(v132);
          sub_1001AEEB4(v132, type metadata accessor for LocationViewComponent);
          v155 = v369;
          v154 = type metadata accessor for LocationViewComponent;
        }

        sub_1001AEEB4(v155, v154);
        sub_100006CD4();
        sub_1001AEEB4(v146, v157);
      }
    }

LABEL_28:
    if (*(v436 + 16))
    {
      Hasher.init(_seed:)();
      String.hash(into:)();
      Hasher._finalize()();
      sub_1000872B8();
      if (v158)
      {
        while (2)
        {
          switch(*(*(v436 + 48) + v132))
          {
            case 1:
              goto LABEL_33;
            case 2:
              sub_100087EF8();
              goto LABEL_33;
            case 3:
              sub_100008C94();
LABEL_33:
              v159 = sub_100013EDC();

              if (v159)
              {
                goto LABEL_37;
              }

              sub_1000D3DCC();
              if ((v160 & 1) == 0)
              {
                break;
              }

              continue;
            default:

LABEL_37:
              sub_100010A34((v431 + 56), *(v431 + 80));
              v161 = v370;
              sub_1008BA000(v432, _swiftEmptyArrayStorage, v370);
              v162 = sub_1000131C4();
              sub_1000038B4(v162, v163, v425);
              if (v204)
              {
                sub_1000180EC(v161, &qword_100CAE820);
              }

              else
              {
                sub_100011150();
                v164 = v161;
                v165 = v368;
                sub_1001A1114(v164, v368, v166);
                sub_1001AAF0C(v165);
                sub_1000093D0();
                sub_1001AEEB4(v165, v167);
              }

              goto LABEL_40;
          }

          break;
        }
      }
    }
  }

LABEL_40:
  v168 = sub_10051A880();
  v169 = v168;
  v170 = v427;
  v171 = v413 ^ 1 | v427;
  v172 = v425;
  v173 = v429;
  if ((v171 & 1) == 0 && !v168)
  {
    sub_10000CA1C();
    swift_storeEnumTagMultiPayload();
    sub_100040C60();
    sub_1000093D0();
    sub_1001AEEB4(v173, v174);
  }

  v175 = v390;
  sub_100035AD0(v430, v390, &qword_100CC3448);
  sub_1000038B4(v175, 1, v426);
  if (v204)
  {
    sub_1000180EC(v175, &qword_100CC3448);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 1)
    {
      sub_100028EE4();
      v177 = v375;
      sub_1001A1114(v175, v375, v178);
      sub_1000171D0();
      sub_100111570(v177, v173, v179);
      sub_10000CA1C();
      swift_storeEnumTagMultiPayload();
      sub_100040C60();
      sub_1000093D0();
      sub_1001AEEB4(v173, v180);
      sub_10004EE84();
      v182 = v177;
      v170 = v427;
    }

    else
    {
      sub_100015228();
      v182 = v175;
    }

    sub_1001AEEB4(v182, v181);
  }

  v183 = v420;
  sub_10099C8B0(v434, v436, _swiftEmptyArrayStorage, v414, v420);
  sub_1001AAF0C(v183);
  if (!(v171 & 1 | !v169))
  {
    sub_10000CA1C();
    swift_storeEnumTagMultiPayload();
    sub_100040C60();
    sub_1000093D0();
    sub_1001AEEB4(v173, v184);
  }

  v185 = v393;
  v186 = v394;
  sub_100088920();
  v187();
  sub_100023648();
  v189 = v432;
  sub_100111570(v432, &v186[v188], v190);
  sub_100035B30(v431 + 96, &v186[*(v185 + 32)]);
  *v186 = v170;
  v191 = &v186[*(v185 + 24)];
  v192 = v421;
  *v191 = v436;
  v191[1] = v192;

  v193 = v424;
  sub_100281E10(v186, v424);
  sub_1001AEEB4(v186, type metadata accessor for LocationViewMapPosition.LocationMapConfiguration);
  v194 = v193;
  v195 = v395;
  sub_100035AD0(v194, v395, &qword_100CE9A98);
  type metadata accessor for LocationViewMapPosition(0);
  v196 = sub_10000C7F0();
  v416 = v197;
  sub_1000038B4(v196, v198, v197);
  v199 = v430;
  v200 = v426;
  if (v204)
  {
    sub_1000180EC(v195, &qword_100CE9A98);
  }

  else
  {
    v201 = sub_10000C7F0();
    v202 = v405;
    sub_1000038B4(v201, v203, v405);
    if (v204)
    {
      sub_10012CE64();
      sub_1001AEEB4(v195, v205);
    }

    else
    {
      v206 = v387;
      v207 = v135;
      v208 = v377;
      (*(v387 + 32))(v377, v195, v202);
      (*(v206 + 16))(v173, v208, v202);
      type metadata accessor for MapComponent();
      sub_100023648();
      sub_100111570(v189, &v173[v209], v210);
      sub_10000CA1C();
      swift_storeEnumTagMultiPayload();
      v211 = sub_1000F00D0();
      sub_1001AAF0C(v211);
      sub_1000093D0();
      sub_1001AEEB4(v173, v212);
      v213 = v208;
      v135 = v207;
      v199 = v430;
      (*(v206 + 8))(v213, v202);
    }
  }

  v214 = v403;
  v215 = v391;
  sub_100035AD0(v199, v391, &qword_100CC3448);
  v216 = sub_10000C7F0();
  sub_1000038B4(v216, v217, v200);
  if (v204)
  {
    sub_1000180EC(v215, &qword_100CC3448);
  }

  else
  {
    sub_100004464();
    v218 = swift_getEnumCaseMultiPayload();
    if (v218 == 2)
    {
      sub_100028EE4();
      v219 = v376;
      sub_1001A1114(v215, v376, v220);
      sub_1000171D0();
      sub_100111570(v219, v173, v221);
      sub_10000CA1C();
      swift_storeEnumTagMultiPayload();
      v222 = sub_1000F00D0();
      sub_1001AAF0C(v222);
      sub_1000093D0();
      sub_1001AEEB4(v173, v223);
      sub_10004EE84();
      v225 = v219;
    }

    else
    {
      sub_100015228();
      v225 = v215;
    }

    sub_1001AEEB4(v225, v224);
  }

  v427 = *(v392 + 24);
  WeatherDataModel.currentWeather.getter();
  v226 = *&v434[v428[5]];
  *&v173[*(type metadata accessor for DailyForecastComponent() + 20)] = v226;
  sub_10000CA1C();
  swift_storeEnumTagMultiPayload();

  v227 = sub_1000F00D0();
  sub_1001AAF0C(v227);
  sub_1000093D0();
  sub_1001AEEB4(v173, v228);
  if (!v419)
  {
    *v173 = 0;
    sub_10000CA1C();
    swift_storeEnumTagMultiPayload();
    v229 = sub_1000F00D0();
    sub_1001AAF0C(v229);
    sub_1000093D0();
    sub_1001AEEB4(v173, v230);
  }

  v231 = v397;
  sub_100035AD0(v199, v397, &qword_100CC3448);
  v232 = sub_10000C7F0();
  sub_1000038B4(v232, v233, v200);
  if (v204)
  {
    sub_1000180EC(v231, &qword_100CC3448);
  }

  else
  {
    sub_100004464();
    v234 = swift_getEnumCaseMultiPayload();
    if (v234 == 3)
    {
      sub_100028EE4();
      v235 = v378;
      sub_1001A1114(v231, v378, v236);
      sub_1000171D0();
      sub_100111570(v235, v173, v237);
      sub_10000CA1C();
      swift_storeEnumTagMultiPayload();
      v238 = sub_1000F00D0();
      sub_1001AAF0C(v238);
      sub_1000093D0();
      sub_1001AEEB4(v173, v239);
      sub_10004EE84();
      v241 = v235;
    }

    else
    {
      sub_100015228();
      v241 = v231;
    }

    sub_1001AEEB4(v241, v240);
  }

  sub_100010A34((v431 + 56), *(v431 + 80));
  sub_1008BA000(v189, _swiftEmptyArrayStorage, v135);
  sub_1000038B4(v135, 1, v172);
  if (v204)
  {
    sub_1000180EC(v135, &qword_100CAE820);
  }

  else
  {
    sub_100011150();
    v242 = v385;
    sub_1001A1114(v135, v385, v243);
    sub_1001AAF0C(v242);
    sub_1000093D0();
    sub_1001AEEB4(v242, v244);
  }

  sub_100035AD0(v424, v214, &qword_100CE9A98);
  sub_1000038B4(v214, 1, v416);
  if (v204)
  {
    sub_1000180EC(v214, &qword_100CE9A98);
  }

  else
  {
    v245 = v405;
    v246 = sub_100024D10(v214, 1, v405);
    sub_10012CE64();
    sub_1001AEEB4(v214, v247);
    if (v246 == 1)
    {
      sub_1000161C0((v431 + 96), *(v431 + 120));
      v248 = v379;
      Location.identifier.getter();
      v249 = v382;
      v200 = v426;
      sub_100523678(v189 + v427, v436, v421, v248, v382);
      (*(v380 + 8))(v248, v381);
      v250 = v387;
      (*(v387 + 16))(v173, v249, v245);
      type metadata accessor for MapComponent();
      sub_100023648();
      sub_100111570(v189, &v173[v251], v252);
      sub_10000CA1C();
      swift_storeEnumTagMultiPayload();
      v253 = sub_1000F00D0();
      sub_1001AAF0C(v253);
      sub_1000093D0();
      sub_1001AEEB4(v173, v254);
      (*(v250 + 8))(v249, v245);
    }
  }

  sub_100038094(v431);
  v256 = v417;
  v255 = v418;
  v398(v417, enum case for WeatherAlert.Prominence.low(_:), v418);
  v257 = v404;
  v258 = v421;
  sub_1008BB370(v404);

  v400(v256, v255);
  v259 = sub_1000162A4();
  sub_1000038B4(v259, v260, v172);
  if (v204)
  {
    sub_1000180EC(v257, &qword_100CAE820);
  }

  else
  {
    sub_100011150();
    v255 = v386;
    sub_1001A1114(v257, v386, v261);
    sub_1001AAF0C(v255);
    sub_1000093D0();
    sub_1001AEEB4(v255, v262);
  }

  v263 = v402;
  sub_100035AD0(v430, v402, &qword_100CC3448);
  v264 = sub_10000C7F0();
  sub_1000038B4(v264, v265, v200);
  if (v204)
  {
    sub_1000180EC(v263, &qword_100CC3448);
  }

  else
  {
    sub_100004464();
    v266 = swift_getEnumCaseMultiPayload();
    if (v266 == 4)
    {
      sub_100028EE4();
      v267 = v383;
      sub_1001A1114(v263, v383, v268);
      sub_1000171D0();
      sub_100111570(v267, v173, v269);
      sub_10000CA1C();
      swift_storeEnumTagMultiPayload();
      v270 = sub_1000F00D0();
      sub_1001AAF0C(v270);
      sub_1000093D0();
      sub_1001AEEB4(v173, v271);
      sub_10004EE84();
      v273 = v267;
    }

    else
    {
      sub_100015228();
      v273 = v263;
    }

    sub_1001AEEB4(v273, v272);
  }

  if (qword_100CA29D0 != -1)
  {
    swift_once();
  }

  sub_1009A0E60();
  sub_100004464();
  Configurable.setting<A>(_:)();
  if (v439[0] == 1)
  {
    goto LABEL_95;
  }

  v310 = v388;
  WeatherDataModel.historicalComparisons.getter();
  v311 = type metadata accessor for HistoricalComparisons();
  v312 = sub_1000131C4();
  sub_1000038B4(v312, v313, v311);
  if (v204)
  {
    sub_1000180EC(v310, &qword_100CABD10);
  }

  else
  {
    v314 = HistoricalComparisons.hasDeviationsFromTrend.getter();
    (*(*(v311 - 8) + 8))(v310, v311);
    if (v314)
    {
LABEL_95:
      v421 = sub_10022C350(&qword_100CAE830);
      v274 = *(v406 + 72);
      v431 = *(v406 + 80);
      v423 = ((v431 + 32) & ~v431) + 2 * v274;
      v275 = (v431 + 32) & ~v431;
      v417 = v275;
      v276 = swift_allocObject();
      v436 = xmmword_100A2D320;
      *(v276 + 16) = xmmword_100A2D320;
      WeatherDataModel.historicalComparisons.getter();
      sub_100020E44();
      swift_storeEnumTagMultiPayload();
      v277 = sub_100086668();
      v418 = v274;
      sub_100111570(v277, v276 + v275 + v274, v278);
      swift_storeEnumTagMultiPayload();
      sub_1001AB364(v276);
      swift_setDeallocating();
      sub_1001AEBE4();
      WeatherDataModel.currentWeather.getter();
      v279 = v258;
      sub_1000C8B80(v439);
      v280 = type metadata accessor for WindComponent();
      sub_1000C8B80(&v173[*(v280 + 20)]);
      sub_10000CA1C();
      swift_storeEnumTagMultiPayload();
      sub_1001A86C8(v439, v438);
      sub_100040C60();
      sub_1000093D0();
      v416 = v281;
      sub_1001AEEB4(v173, v282);
      v283 = sub_1000378E8();
      sub_1000524DC(v283);
      v284 = v417;
      v286 = v285 + v417;
      WeatherDataModel.currentWeather.getter();
      v287 = v428[10];
      type metadata accessor for UVIndexComponent();
      sub_1000438DC();
      sub_100111570(v279 + v287, v286 + v288, v289);
      WeatherDataModel.dailyForecast.getter();
      WeatherDataModel.hourlyForecast.getter();
      swift_storeEnumTagMultiPayload();
      WeatherDataModel.currentWeather.getter();
      WeatherDataModel.dailyForecast.getter();
      SunriseSunsetModel.init(currentWeather:dailyForecast:)();
      swift_storeEnumTagMultiPayload();
      v290 = sub_1000F00D0();
      sub_1001AB364(v290);
      swift_setDeallocating();
      sub_1001AEBE4();
      v291 = sub_1000378E8();
      sub_1000524DC(v291);
      v293 = (v292 + v284);
      v294 = v428;
      v295 = v428[9];
      v296 = v434;
      memcpy(v438, &v434[v295], 0x80uLL);
      memcpy(v293, &v434[v295], 0x80uLL);
      swift_storeEnumTagMultiPayload();
      sub_1001AEF0C(v438, v437);
      v297 = v432;
      WeatherDataModel.currentWeather.getter();
      v298 = &v296[v294[11]];
      v299 = *(v298 + 2);
      v300 = *(v298 + 3);
      v301 = *(v298 + 4);
      v302 = *(v298 + 5);
      v303 = type metadata accessor for VisibilityComponent();
      sub_100040D48(v303);
      v304[2] = v299;
      v304[3] = v300;
      v304[4] = v301;
      v304[5] = v302;
      swift_storeEnumTagMultiPayload();

      sub_1001AB364(v173);
      swift_setDeallocating();
      v305 = v429;
      sub_1001AEBE4();
      sub_100023648();
      sub_100111570(v297, v305, v306);
      sub_100020E44();
      swift_storeEnumTagMultiPayload();
      sub_1001AAF0C(v305);
      sub_1001AEEB4(v305, v416);
      v307 = sub_1000378E8();
      *(v307 + 16) = v436;
      WeatherDataModel.currentWeather.getter();
      sub_100045460();
      swift_storeEnumTagMultiPayload();
      WeatherDataModel.currentWeather.getter();
      v308 = type metadata accessor for PressureComponent();
      sub_10007188C(v308);
      sub_100045460();
      swift_storeEnumTagMultiPayload();
      v309 = v307;
      goto LABEL_101;
    }
  }

  v315 = sub_10022C350(&qword_100CAE830);
  v316 = *(v406 + 72);
  v417 = *(v406 + 80);
  v418 = v315;
  v431 = ((v417 + 32) & ~v417) + 2 * v316;
  v317 = v316;
  v421 = v316;
  v318 = (v417 + 32) & ~v417;
  v423 = v318;
  v319 = swift_allocObject();
  v436 = xmmword_100A2D320;
  *(v319 + 16) = xmmword_100A2D320;
  v320 = v319 + v318;
  v321 = sub_100086668();
  sub_100111570(v321, v320, v322);
  swift_storeEnumTagMultiPayload();
  v323 = v320 + v317;
  WeatherDataModel.currentWeather.getter();
  v324 = *(v255 + 40);
  v325 = type metadata accessor for UVIndexComponent();
  sub_1000438DC();
  sub_100111570(v258 + v324, v323 + v326, v327);
  WeatherDataModel.dailyForecast.getter();
  WeatherDataModel.hourlyForecast.getter();
  swift_storeEnumTagMultiPayload();
  sub_1001AB364(v319);
  swift_setDeallocating();
  sub_1001AEBE4();
  WeatherDataModel.currentWeather.getter();
  sub_1000C8B80(v439);
  v328 = type metadata accessor for WindComponent();
  sub_1000C8B80(&v429[*(v328 + 20)]);
  swift_storeEnumTagMultiPayload();
  sub_1001A86C8(v439, v438);
  sub_1001AAF0C(v429);
  sub_1000093D0();
  v416 = v329;
  sub_1001AEEB4(v429, v330);
  v331 = swift_allocObject();
  sub_1000524DC(v331);
  v333 = v332 + v423;
  WeatherDataModel.currentWeather.getter();
  WeatherDataModel.dailyForecast.getter();
  SunriseSunsetModel.init(currentWeather:dailyForecast:)();
  swift_storeEnumTagMultiPayload();
  v334 = v428;
  v335 = v428[9];
  memcpy(v438, (v258 + v335), 0x80uLL);
  memcpy(v421 + v333, (v258 + v335), 0x80uLL);
  swift_storeEnumTagMultiPayload();
  sub_1001AEF0C(v438, v437);
  v336 = sub_1000F00D0();
  sub_1001AB364(v336);
  swift_setDeallocating();
  sub_1001AEBE4();
  v337 = swift_allocObject();
  sub_1000524DC(v337);
  WeatherDataModel.currentWeather.getter();
  v338 = (v258 + v334[11]);
  v339 = v338[2];
  v340 = v338[3];
  v341 = v338[4];
  v342 = v338[5];
  v343 = type metadata accessor for VisibilityComponent();
  sub_100040D48(v343);
  v344[2] = v339;
  v344[3] = v340;
  v344[4] = v341;
  v344[5] = v342;
  swift_storeEnumTagMultiPayload();

  v345 = v432;
  WeatherDataModel.currentWeather.getter();
  swift_storeEnumTagMultiPayload();
  sub_1001AB364(v325);
  swift_setDeallocating();
  v305 = v429;
  sub_1001AEBE4();
  sub_100023648();
  sub_100111570(v345, v305, v346);
  sub_100020E44();
  swift_storeEnumTagMultiPayload();
  sub_1001AAF0C(v305);
  sub_1001AEEB4(v305, v416);
  v347 = swift_allocObject();
  *(v347 + 16) = v436;
  WeatherDataModel.historicalComparisons.getter();
  sub_100045460();
  swift_storeEnumTagMultiPayload();
  WeatherDataModel.currentWeather.getter();
  v348 = type metadata accessor for PressureComponent();
  sub_10007188C(v348);
  sub_100045460();
  swift_storeEnumTagMultiPayload();
  v309 = v347;
LABEL_101:
  sub_1001AB364(v309);
  swift_setDeallocating();
  sub_1001AEBE4();
  v349 = v430;
  v350 = v411;
  sub_100035AD0(v430, v411, &qword_100CC3448);
  v351 = sub_10000C7F0();
  sub_1000038B4(v351, v352, v426);
  v353 = v424;
  v354 = v432;
  if (v204)
  {
    sub_1000180EC(v350, &qword_100CC3448);
  }

  else
  {
    v355 = swift_getEnumCaseMultiPayload();
    if (v355 == 5)
    {
      sub_100028EE4();
      v356 = v384;
      sub_1001A1114(v350, v384, v357);
      sub_1000171D0();
      sub_100111570(v356, v305, v358);
      sub_100020E44();
      swift_storeEnumTagMultiPayload();
      sub_1001AAF0C(v305);
      sub_1000093D0();
      sub_1001AEEB4(v305, v359);
      sub_10004EE84();
      v361 = v356;
    }

    else
    {
      sub_100015228();
      v361 = v350;
    }

    sub_1001AEEB4(v361, v360);
  }

  if (v419 == 1)
  {
    *v305 = 1;
    sub_100020E44();
    swift_storeEnumTagMultiPayload();
    sub_1001AAF0C(v305);
    sub_1000093D0();
    sub_1001AEEB4(v305, v362);
  }

  sub_1000180EC(v353, &qword_100CE9A98);
  sub_1000093D0();
  sub_1001AEEB4(v420, v363);
  sub_1000180EC(v349, &qword_100CC3448);
  sub_10001D404();
  sub_1001AEEB4(v434, v364);
  sub_1001AEEB4(v354, type metadata accessor for WeatherData);
  (*(v412 + 8))(v433, v422);
  swift_beginAccess();
  v365 = *(v435 + 16);
  swift_setDeallocating();

  sub_1001AF5DC();
  swift_deallocClassInstance();
  return v365;
}

void sub_1001AAC5C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    swift_beginAccess();
    v9 = *(v8 + 16);
    if (*(v9 + 16) && (v10 = sub_1000D5F5C(a2), (v11 & 1) != 0))
    {
      v12 = *(*(v9 + 56) + 8 * v10);
      swift_endAccess();
      if (v12 == a3)
      {
LABEL_5:
        swift_beginAccess();
        swift_isUniquelyReferenced_nonNull_native();
        v18 = *(v8 + 16);
        sub_1000D52D8();
        *(v8 + 16) = v18;
        v13 = swift_endAccess();
        a4(v13);

        return;
      }
    }

    else
    {
      swift_endAccess();
      if (!a3)
      {
        goto LABEL_5;
      }
    }

    if (qword_100CA2740 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_10000703C(v14, qword_100D90C18);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v19[0] = swift_slowAlloc();
      *v17 = 136315906;
      *(v17 + 4) = sub_100078694(0x746174536E69614DLL, 0xE900000000000065, v19);
      *(v17 + 12) = 2080;
      *(v17 + 14) = sub_100078694(0x6E6F697461636F4CLL, 0xED00007475706E49, v19);
      *(v17 + 22) = 2080;
      *(v17 + 24) = sub_100078694(0xD000000000000011, 0x8000000100ABC0E0, v19);
      *(v17 + 32) = 2048;
      *(v17 + 34) = a3;
      _os_log_impl(&_mh_execute_header, v15, v16, "Debounced state update; another update came through afterwards. Selector=<%s, %s, %s>, Count=%ld", v17, 0x2Au);
      swift_arrayDestroy();
    }
  }
}

uint64_t sub_1001AAF0C(uint64_t a1)
{
  sub_10022C350(&qword_100CAE830);
  v2 = *(type metadata accessor for LocationViewComponent() - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_100A2C3F0;
  sub_1001AB2F0(a1, v4 + v3);
  sub_1001AB364(v4);
  swift_setDeallocating();
  return sub_1001AEBE4();
}

uint64_t type metadata accessor for LocationViewComponent()
{
  result = qword_100CCEC78;
  if (!qword_100CCEC78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1001AB03C()
{
  v0 = sub_10022C350(&qword_100CA4680);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v19 - v2;
  v4 = type metadata accessor for NamedCoordinateSpace();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static CoordinateSpaceProtocol<>.scrollView.getter();
  GeometryProxy.bounds(of:)();
  v8 = *&v19[3];
  v9 = *&v19[4];
  v10 = *&v19[5];
  v11 = *&v19[6];
  (*(v5 + 8))(v7, v4);
  if (v20)
  {
    v12 = 0.0;
  }

  else
  {
    v12 = v8;
  }

  if (v20)
  {
    v13 = 0.0;
  }

  else
  {
    v13 = v9;
  }

  if (v20)
  {
    v14 = 0.0;
  }

  else
  {
    v14 = v10;
  }

  if (v20)
  {
    v15 = 0.0;
  }

  else
  {
    v15 = v11;
  }

  CGRectGetMinY(*&v12);
  v16 = type metadata accessor for EmptyVisualEffect();
  v17 = sub_100061A3C(&qword_100CA4688, &type metadata accessor for EmptyVisualEffect);
  VisualEffect.offset(x:y:)();
  v19[1] = v16;
  v19[2] = v17;
  swift_getOpaqueTypeConformance2();
  VisualEffect.opacity(_:)();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_1001AB2F0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LocationViewComponent();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001AB364(uint64_t a1)
{
  v47 = type metadata accessor for LocationViewComponent();
  v2 = *(v47 - 8);
  __chkstk_darwin(v47);
  v42 = &v41 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v41 - v5;
  __chkstk_darwin(v7);
  v43 = &v41 - v8;
  __chkstk_darwin(v9);
  v11 = &v41 - v10;
  __chkstk_darwin(v12);
  v14 = &v41 - v13;
  v15 = 0;
  v45 = a1;
  v16 = *(a1 + 16);
  v44 = _swiftEmptyArrayStorage;
  while (v16 != v15)
  {
    v17 = (*(v2 + 80) + 32) & ~*(v2 + 80);
    v18 = *(v2 + 72);
    sub_1001AB2F0(v45 + v17 + v18 * v15, v14);
    v19 = *(v46 + 24);
    sub_1001AB2F0(v14, v11);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();

    v21 = 10;
    switch(EnumCaseMultiPayload)
    {
      case 1:
        sub_1001AC2E8(v11);
        v21 = 1;
        break;
      case 2:
        sub_1001AC2E8(v11);
        v21 = 2;
        break;
      case 3:
        sub_1001AC2E8(v11);
        v21 = 3;
        break;
      case 4:
        sub_1001AC2E8(v11);
        v21 = 4;
        break;
      case 5:
        sub_1001AC2E8(v11);
        v21 = 5;
        break;
      case 6:
        sub_1001AC2E8(v11);
        v21 = 6;
        break;
      case 7:
        sub_1001AC2E8(v11);
        v21 = 7;
        break;
      case 8:
        sub_1001AC2E8(v11);
        v21 = 8;
        break;
      case 9:
        sub_1001AC2E8(v11);
        v21 = 9;
        break;
      case 10:
        sub_1001AC2E8(v11);
        v21 = 11;
        break;
      case 11:
        sub_1001AC2E8(v11);
        v21 = 12;
        break;
      case 12:
        v21 = 13;
        break;
      case 13:
        sub_1001AC2E8(v11);
        v21 = 14;
        break;
      case 14:
        sub_1001AC2E8(v11);
        v21 = 15;
        break;
      case 15:
        sub_1001AC2E8(v11);
        v21 = 16;
        break;
      case 16:
        sub_1001AC2E8(v11);
        v21 = 17;
        break;
      case 17:
        sub_1001AC2E8(v11);
        v21 = 18;
        break;
      case 18:
        sub_1001AC2E8(v11);
        v21 = 19;
        break;
      case 19:
        break;
      default:
        sub_1001AC2E8(v11);
        v21 = 0;
        break;
    }

    v22 = sub_1001AC348(v21, v19);

    if (v22)
    {
      sub_1001AC2E8(v14);
      ++v15;
    }

    else
    {
      sub_1001AD0C4(v14, v43);
      v23 = v44;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v48 = v23;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1001AD128();
        v23 = v48;
      }

      v25 = v23[2];
      v26 = (v25 + 1);
      if (v25 >= v23[3] >> 1)
      {
        v44 = (v25 + 1);
        sub_1001AD128();
        v26 = v44;
        v23 = v48;
      }

      ++v15;
      v23[2] = v26;
      v44 = v23;
      sub_1001AD0C4(v43, v23 + v17 + v25 * v18);
    }
  }

  v27 = v44;
  v28 = v44[2];
  if (!v28)
  {
  }

  v29 = *(v46 + 24);
  v48 = _swiftEmptyArrayStorage;

  sub_1001AD774();
  v30 = v48;
  v31 = v27 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v32 = *(v2 + 72);
  v33 = v42;
  do
  {
    sub_1001AB2F0(v31, v6);
    sub_1001AB2F0(v6, v33);
    v34 = 10;
    switch(swift_getEnumCaseMultiPayload())
    {
      case 1u:
        sub_1001AC2E8(v33);
        v34 = 1;
        break;
      case 2u:
        sub_1001AC2E8(v33);
        v34 = 2;
        break;
      case 3u:
        sub_1001AC2E8(v33);
        v34 = 3;
        break;
      case 4u:
        sub_1001AC2E8(v33);
        v34 = 4;
        break;
      case 5u:
        sub_1001AC2E8(v33);
        v34 = 5;
        break;
      case 6u:
        sub_1001AC2E8(v33);
        v34 = 6;
        break;
      case 7u:
        sub_1001AC2E8(v33);
        v34 = 7;
        break;
      case 8u:
        sub_1001AC2E8(v33);
        v34 = 8;
        break;
      case 9u:
        sub_1001AC2E8(v33);
        v34 = 9;
        break;
      case 0xAu:
        sub_1001AC2E8(v33);
        v34 = 11;
        break;
      case 0xBu:
        sub_1001AC2E8(v33);
        v34 = 12;
        break;
      case 0xCu:
        v34 = 13;
        break;
      case 0xDu:
        sub_1001AC2E8(v33);
        v34 = 14;
        break;
      case 0xEu:
        sub_1001AC2E8(v33);
        v34 = 15;
        break;
      case 0xFu:
        sub_1001AC2E8(v33);
        v34 = 16;
        break;
      case 0x10u:
        sub_1001AC2E8(v33);
        v34 = 17;
        break;
      case 0x11u:
        sub_1001AC2E8(v33);
        v34 = 18;
        break;
      case 0x12u:
        sub_1001AC2E8(v33);
        v34 = 19;
        break;
      case 0x13u:
        break;
      default:
        sub_1001AC2E8(v33);
        v34 = 0;
        break;
    }

    sub_1001AC2E8(v6);
    v48 = v30;
    v35 = *(v30 + 16);
    if (v35 >= *(v30 + 24) >> 1)
    {
      sub_1001AD774();
      v30 = v48;
    }

    *(v30 + 16) = v35 + 1;
    *(v30 + v35 + 32) = v34;
    v31 += v32;
    --v28;
  }

  while (v28);
  v36 = sub_1001ADC30(v30, v29);
  v37 = v46;
  *(v46 + 24) = v36;

  swift_beginAccess();
  sub_10051A9D8(sub_1001AF4C4);
  v38 = *(*(v37 + 16) + 16);
  sub_1001AEA30(v38);
  v39 = *(v37 + 16);
  *(v39 + 16) = v38 + 1;
  *(v39 + 8 * v38 + 32) = v44;
  *(v37 + 16) = v39;
  return swift_endAccess();
}

void *sub_1001ABA78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a1;
  v33 = a2;
  v3 = type metadata accessor for RowMaskModifier(0);
  v31 = *(v3 - 8);
  __chkstk_darwin(v3);
  v30 = v4;
  v5 = type metadata accessor for EnvironmentValues();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = v2 + *(v3 + 20);
  v10 = *v9;
  if (*(v9 + 8) == 1)
  {
    v11 = *v9;
  }

  else
  {

    static os_log_type_t.fault.getter();
    v12 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000EBD74(v10, 0);
    (*(v6 + 8))(v8, v5);
    v11 = *__src;
  }

  sub_1001AC764();
  v13 = v2 + *(v3 + 24);
  v29 = v2;
  v14 = *(v13 + 16);
  __src[0] = *v13;
  *&__src[1] = v14;
  sub_10022C350(&qword_100CC22D0);
  State.wrappedValue.getter();
  __src[0] = v34;
  sub_10022C350(&qword_100CC22D8);
  sub_10023FBF4(&qword_100CC22E0, &qword_100CC22D8);
  sub_1001ACC6C();
  View.onChange<A>(of:initial:_:)();
  sub_1001993DC();
  v15 = (((*(v31 + 80) + 16) & ~*(v31 + 80)) + v30 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = (v15 + 15) & 0xFFFFFFFFFFFFFFF8;
  v17 = swift_allocObject();
  sub_1001AD070();
  *(v17 + v15) = v11 + -15.0;
  *(v17 + v16) = v11 + -15.0 + 10.0;
  *(v17 + ((v16 + 15) & 0xFFFFFFFFFFFFFFF8)) = v11;
  v18 = v29;
  sub_1001993DC();
  v19 = swift_allocObject();
  sub_1001AD070();
  v20 = sub_10022C350(&qword_100CC22F0);
  v21 = v33;
  v22 = (v33 + *(v20 + 36));
  *v22 = sub_1005018D8;
  v22[1] = v17;
  v22[2] = sub_100501994;
  v22[3] = v19;
  v23 = static Alignment.center.getter();
  v25 = v24;
  sub_1001ACE04(v18, __src);
  v26 = (v21 + *(sub_10022C350(&qword_100CC22F8) + 36));
  *v26 = v23;
  v26[1] = v25;
  return memcpy(v26 + 2, __src, 0x51uLL);
}

uint64_t sub_1001ABEE4()
{
  sub_100020DF0();
  type metadata accessor for RowMaskModifier(0);
  sub_100003A0C();
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  sub_10022C350(&qword_100CC0970);
  sub_100031D74();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    type metadata accessor for LocationComponentHeaderViewModel(0);
    sub_100031D74();
    switch(swift_getEnumCaseMultiPayload())
    {
      case 0u:
      case 4u:

        goto LABEL_8;
      case 1u:

        goto LABEL_8;
      case 2u:

        goto LABEL_8;
      case 3u:
        type metadata accessor for WeatherDescription();
        sub_100003D98();
        (*(v4 + 8))(v1 + v3);
        type metadata accessor for LocationComponentHeaderViewModel.Description(0);

LABEL_8:

        break;
      default:
        break;
    }
  }

  else
  {
  }

  sub_1001923A8();
  sub_100037B34(*(v0 + 20));

  sub_1000212EC();

  return swift_deallocObject();
}

uint64_t sub_1001AC0EC()
{
  sub_100020DF0();
  type metadata accessor for RowMaskModifier(0);
  sub_100003A0C();
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  sub_10022C350(&qword_100CC0970);
  sub_100031D74();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    type metadata accessor for LocationComponentHeaderViewModel(0);
    sub_100031D74();
    switch(swift_getEnumCaseMultiPayload())
    {
      case 0u:
      case 4u:

        goto LABEL_8;
      case 1u:

        goto LABEL_8;
      case 2u:

        goto LABEL_8;
      case 3u:
        type metadata accessor for WeatherDescription();
        sub_100003D98();
        (*(v4 + 8))(v1 + v3);
        type metadata accessor for LocationComponentHeaderViewModel.Description(0);

LABEL_8:

        break;
      default:
        break;
    }
  }

  else
  {
  }

  sub_100037B34(*(v0 + 20));

  sub_1000212EC();

  return swift_deallocObject();
}

uint64_t sub_1001AC2E8(uint64_t a1)
{
  v2 = type metadata accessor for LocationViewComponent();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1001AC348(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16) && (sub_1000D3C30(a1, a2), Hasher.init(_seed:)(), sub_1001AC9D8(v3), String.hash(into:)(), , Hasher._finalize()(), sub_100017C58(), (v6 & 1) != 0))
  {
    sub_1006A9D44();
    sub_1000103C4();
    v26 = v7;
    v27 = v8;
    sub_1000103C4();
    v25 = v9;
    while (1)
    {
      v10 = 0xEA00000000007974;
      v11 = v5;
      switch(*(*(v2 + 48) + v4))
      {
        case 1:
          v11 = sub_100192554();
          goto LABEL_14;
        case 2:
          v11 = sub_100044E4C();
          break;
        case 3:
          v11 = sub_100079548();
          break;
        case 4:
          v11 = sub_100042738();
          break;
        case 5:
          v10 = 0xE300000000000000;
          v11 = 7364973;
          break;
        case 6:
          v10 = 0xE400000000000000;
          v11 = 1852796781;
          break;
        case 7:
          v11 = sub_1000AF60C();
          goto LABEL_17;
        case 8:
          sub_10012CD94();
          v11 = v13 + 3;
          v10 = 0x8000000100ABACA0;
          break;
        case 9:
          v11 = sub_100192350();
          v10 = v25;
          break;
        case 0xA:
          sub_10012CD94();
          v11 = v12 + 9;
          v10 = v26;
          break;
        case 0xB:
          v11 = sub_10019240C();
          break;
        case 0xC:
          v11 = sub_100192350();
          v10 = v27;
          break;
        case 0xD:
          v11 = sub_1000B0CB0();
          goto LABEL_21;
        case 0xE:
          v11 = sub_100037864();
LABEL_17:
          v10 = 0xEB00000000007974;
          break;
        case 0xF:
          v11 = sub_100051ACC();
LABEL_14:
          v10 = 0xEA00007400007974;
LABEL_21:
          v10 = v10 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
          break;
        case 0x10:
          v11 = sub_1000B7BC0();
          break;
        case 0x11:
          v11 = sub_100171200();
          break;
        case 0x12:
          v11 = sub_1006A9D30();
          break;
        case 0x13:
          v11 = sub_100008C94();
          break;
        default:
          break;
      }

      v14 = v5;
      v15 = 0xEA00000000007974;
      switch(v3)
      {
        case 1:
          sub_1000E0F7C();
          v16 = 1935762277;
          goto LABEL_37;
        case 2:
          sub_100092648();
          v15 = 0xE900000000000065;
          break;
        case 3:
          sub_10019555C();
          v15 = 0xEE00747361636572;
          break;
        case 4:
          v15 = 0xE800000000000000;
          sub_1006A9D10();
          break;
        case 5:
          v15 = 0xE300000000000000;
          v14 = 7364973;
          break;
        case 6:
          v15 = 0xE400000000000000;
          v14 = 1852796781;
          break;
        case 7:
          sub_1000C8B20();
          v17 = 6646883;
          goto LABEL_40;
        case 8:
          sub_10012CD94();
          v14 = v20 + 3;
          v15 = 0x8000000100ABACA0;
          break;
        case 9:
          sub_1006A9D04();
          v15 = v25;
          break;
        case 10:
          sub_10012CD94();
          v14 = v19 + 9;
          v15 = v26;
          break;
        case 11:
          v15 = 0xE800000000000000;
          sub_1001994BC();
          break;
        case 12:
          sub_1006A9D04();
          v15 = v27;
          break;
        case 13:
          sub_100040CE4();
          v18 = 0x7265687461;
          goto LABEL_44;
        case 14:
          sub_1001AD02C();
          v17 = 7631461;
LABEL_40:
          v15 = v17 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
          break;
        case 15:
          sub_1000B9808();
          v16 = 1702063733;
LABEL_37:
          v18 = v16 & 0xFFFF0000FFFFFFFFLL | 0x7400000000;
LABEL_44:
          v15 = v18 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
          break;
        case 16:
          v15 = 0xE800000000000000;
          sub_1000FD158();
          break;
        case 17:
          v15 = 0xE700000000000000;
          sub_100045258();
          break;
        case 18:
          sub_100040E10();
          break;
        case 19:
          v15 = 0xE400000000000000;
          v14 = 1684957559;
          break;
        default:
          break;
      }

      if (v11 == v14 && v10 == v15)
      {
        break;
      }

      v22 = sub_1000E13E8();

      if ((v22 & 1) == 0)
      {
        sub_10002531C();
        if (v23)
        {
          continue;
        }
      }

      return v22 & 1;
    }

    v22 = 1;
  }

  else
  {
    v22 = 0;
  }

  return v22 & 1;
}

BOOL sub_1001AC764()
{
  type metadata accessor for LocationComponentHeaderViewModel(0);
  sub_1000037E8();
  __chkstk_darwin(v1);
  sub_1000037D8();
  sub_10001365C();
  v2 = type metadata accessor for EnvironmentValues();
  sub_1000037C4();
  v4 = v3;
  __chkstk_darwin(v5);
  sub_1000037D8();
  sub_1000426CC();
  sub_10022C350(&qword_100CC0970);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v6);
  v7 = sub_10016DB38();
  v8 = sub_100003810(v7);
  __chkstk_darwin(v8);
  sub_1000037D8();
  sub_1005026A8();
  sub_1000302D8(v9, v10, v11);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1001AD070();
  }

  else
  {
    static os_log_type_t.fault.getter();
    v12 = static Log.runtimeIssuesLog.getter();
    sub_100016A84();

    EnvironmentValues.init()();
    sub_10002C598();
    swift_getAtKeyPath();

    (*(v4 + 8))(v0, v2);
  }

  sub_1001993DC();
  v13 = swift_getEnumCaseMultiPayload() == 4;
  sub_100192034();
  sub_100192034();
  return v13;
}

unint64_t sub_1001AC9D8(char a1)
{
  result = 0x696C617551726961;
  switch(a1)
  {
    case 1:
      result = 0x726F46796C696164;
      break;
    case 2:
      result = 0x6B694C736C656566;
      break;
    case 3:
      result = 0x6F46796C72756F68;
      break;
    case 4:
      result = 0x79746964696D7568;
      break;
    case 5:
      result = 7364973;
      break;
    case 6:
      result = 1852796781;
      break;
    case 7:
      result = 0x697472417377656ELL;
      break;
    case 8:
      result = 0xD000000000000015;
      break;
    case 9:
      result = 0xD000000000000012;
      break;
    case 10:
      result = 0xD00000000000001BLL;
      break;
    case 11:
      result = 0x6572757373657270;
      break;
    case 12:
      result = 0xD000000000000012;
      break;
    case 13:
      result = 0x655774726F706572;
      break;
    case 14:
      result = 0x6C41657265766573;
      break;
    case 15:
      result = 0x53657369726E7573;
      break;
    case 16:
      result = 0x7365676172657661;
      break;
    case 17:
      result = 0x7865646E497675;
      break;
    case 18:
      result = 0x696C696269736976;
      break;
    case 19:
      result = 1684957559;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1001ACC6C()
{
  result = qword_100CC22E8;
  if (!qword_100CC22E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC22E8);
  }

  return result;
}

uint64_t sub_1001ACCC0()
{
  v2 = v1;
  v3 = sub_10000C76C();
  type metadata accessor for LocationWeatherDataState(v3);
  sub_1000037E8();
  __chkstk_darwin(v4);
  sub_1000037D8();
  v7 = v6 - v5;
  sub_100006610();
  sub_1001A0E7C(v2, v7);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v12 = *(sub_10022C350(&qword_100CA75D8) + 64);
      sub_10002307C();
      sub_1001A10BC(v7 + v13, v0);
      type metadata accessor for PreprocessedWeatherData();
      v14 = sub_1000164D8();
      sub_10001B350(v14, v15, 1, v16);
      sub_10001CB98();
      sub_1001A126C(v7 + v12, v17);
      sub_10001F620();
      result = sub_1001A126C(v7, v18);
      break;
    case 3u:
      goto LABEL_3;
    default:
      sub_1001A126C(v7, type metadata accessor for LocationWeatherDataState);
LABEL_3:
      type metadata accessor for PreprocessedWeatherData();
      v8 = sub_1000719C8();
      result = sub_10001B350(v8, v9, 1, v10);
      break;
  }

  return result;
}

void *sub_1001ACE04@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  if (sub_1001AC764())
  {
    static HorizontalAlignment.center.getter();
    sub_1004F73F4(a1, __src);
    __src[0] = __src[8];
  }

  sub_10022C350(&qword_100CC2300);
  sub_10022C350(&qword_100CC0FD0);
  sub_10023FBF4(&qword_100CC2308, &qword_100CC2300);
  sub_10023FBF4(&qword_100CC2310, &qword_100CC0FD0);
  _ConditionalContent<>.init(storage:)();
  return memcpy(a2, __src, 0x51uLL);
}

void sub_1001ACFB8(uint64_t a1, unint64_t *a2)
{

  sub_1002D5E34(319, a2, type metadata accessor for LocationComponentContainerViewModel);
}

void sub_1001AD00C(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t sub_1001AD070()
{
  v1 = sub_100003B38();
  v2(v1);
  sub_1000037E8();
  v3 = sub_100003940();
  v4(v3);
  return v0;
}

uint64_t sub_1001AD0C4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LocationViewComponent();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001AD180@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v31 = a2;
  v5 = type metadata accessor for LocationComponentHeaderMetrics(0);
  __chkstk_darwin(v5);
  v7 = v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for EnvironmentValues();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = (v2 + *(type metadata accessor for PinningHeaderModifier(0) + 24));
  v13 = *v12;
  LODWORD(v12) = *(v12 + 8);
  v30 = v9;
  if (v12 == 1)
  {
    v14 = *&v13;
    v15 = *&v13;
  }

  else
  {

    static os_log_type_t.fault.getter();
    v16 = static Log.runtimeIssuesLog.getter();
    v29[0] = v5;
    v17 = v16;
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000EBD74(v13, 0);
    v29[1] = a1;
    v18 = *(v9 + 8);
    v18(v11, v8);
    v15 = v32;

    static os_log_type_t.fault.getter();
    v19 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    v5 = v29[0];
    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000EBD74(v13, 0);
    v18(v11, v8);
    v14 = v32;
  }

  sub_10019200C();
  v20 = *&v7[*(v5 + 24)];
  sub_100192034();
  v21 = *v2;
  if (*(v3 + 8) != 1)
  {

    static os_log_type_t.fault.getter();
    v22 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000EBD74(v21, 0);
    (*(v30 + 8))(v11, v8);
    LOBYTE(v21) = LOBYTE(v32);
  }

  v23 = swift_allocObject();
  *(v23 + 16) = v21 & 1;
  *(v23 + 24) = v15 + 11.0;
  *(v23 + 32) = v14 + v20;
  sub_10022C350(&qword_100CC2460);
  sub_10022C350(&qword_100CA4670);
  sub_10023FBF4(&qword_100CC2468, &qword_100CC2460);
  v24 = sub_10022E824(&qword_100CA4680);
  v25 = type metadata accessor for EmptyVisualEffect();
  v26 = sub_100061A3C(&qword_100CA4688, &type metadata accessor for EmptyVisualEffect);
  v32 = *&v25;
  v33 = v26;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v32 = *&v24;
  v33 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  View.visualEffect<A>(_:)();
}

uint64_t sub_1001AD648()
{

  if (*(v0 + 56))
  {
    sub_100006F14(v0 + 32);
  }

  return swift_deallocObject();
}

void sub_1001AD6BC()
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

  sub_100074DD8();
  if (v3)
  {
    sub_1000BAF18(v7, v8, v9, v10, v11);
    v12 = swift_allocObject();
    v13 = j__malloc_size(v12);
    sub_1000D3DB0(v13);
  }

  else
  {
    v12 = _swiftEmptyArrayStorage;
  }

  v14 = sub_1000B99E0();
  if (v1)
  {
    if (v12 != v0 || &v15[v2] <= v14)
    {
      memmove(v14, v15, v2);
    }

    v0[2] = 0;
  }

  else
  {
    memcpy(v14, v15, v2);
  }
}

uint64_t sub_1001AD7B8(char *a1, char a2)
{
  v4 = v2;
  v6 = *v2;
  Hasher.init(_seed:)();
  sub_1001AC9D8(a2);
  String.hash(into:)();

  Hasher._finalize()();
  sub_100069850();
  if (v7)
  {
    sub_1000103C4();
    v30 = v8;
    v31 = v9;
    sub_1000103C4();
    v28 = v10;
    v29 = v11;
    while (1)
    {
      v12 = 0xEA00000000007974;
      v13 = 0x696C617551726961;
      switch(*(*(v6 + 48) + v3))
      {
        case 1:
          v13 = sub_100192554();
          goto LABEL_13;
        case 2:
          v13 = sub_100044E4C();
          break;
        case 3:
          v13 = sub_100079548();
          break;
        case 4:
          v13 = sub_100042738();
          break;
        case 5:
          v12 = 0xE300000000000000;
          v13 = 7364973;
          break;
        case 6:
          v12 = 0xE400000000000000;
          v13 = 1852796781;
          break;
        case 7:
          v13 = sub_1000AF60C();
          goto LABEL_16;
        case 8:
          sub_10012CD94();
          v13 = v15 + 3;
          v12 = v28;
          break;
        case 9:
          v13 = sub_100192350();
          v12 = v29;
          break;
        case 0xA:
          sub_10012CD94();
          v13 = v14 + 9;
          v12 = v30;
          break;
        case 0xB:
          v13 = sub_10019240C();
          break;
        case 0xC:
          v13 = sub_100192350();
          v12 = v31;
          break;
        case 0xD:
          v13 = sub_1000B0CB0();
          goto LABEL_20;
        case 0xE:
          v13 = sub_100037864();
LABEL_16:
          v12 = 0xEB00000000007974;
          break;
        case 0xF:
          v13 = sub_100051ACC();
LABEL_13:
          v12 = 0xEA00007400007974;
LABEL_20:
          v12 = v12 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
          break;
        case 0x10:
          v13 = sub_1000B7BC0();
          break;
        case 0x11:
          v13 = sub_100171200();
          break;
        case 0x12:
          v13 = sub_1006A9D30();
          break;
        case 0x13:
          v13 = sub_100008C94();
          break;
        default:
          break;
      }

      v16 = 0x696C617551726961;
      v17 = 0xEA00000000007974;
      switch(a2)
      {
        case 1:
          sub_1000E0F7C();
          v18 = 1935762277;
          goto LABEL_36;
        case 2:
          sub_100092648();
          v17 = 0xE900000000000065;
          break;
        case 3:
          sub_10019555C();
          v17 = 0xEE00747361636572;
          break;
        case 4:
          v17 = 0xE800000000000000;
          sub_1006A9D10();
          break;
        case 5:
          v17 = 0xE300000000000000;
          v16 = 7364973;
          break;
        case 6:
          v17 = 0xE400000000000000;
          v16 = 1852796781;
          break;
        case 7:
          sub_1000C8B20();
          v19 = 6646883;
          goto LABEL_39;
        case 8:
          sub_10012CD94();
          v16 = v22 + 3;
          v17 = v28;
          break;
        case 9:
          sub_1006A9D04();
          v17 = v29;
          break;
        case 10:
          sub_10012CD94();
          v16 = v21 + 9;
          v17 = v30;
          break;
        case 11:
          v17 = 0xE800000000000000;
          sub_1001994BC();
          break;
        case 12:
          sub_1006A9D04();
          v17 = v31;
          break;
        case 13:
          sub_100040CE4();
          v20 = 0x7265687461;
          goto LABEL_43;
        case 14:
          sub_1001AD02C();
          v19 = 7631461;
LABEL_39:
          v17 = v19 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
          break;
        case 15:
          sub_1000B9808();
          v18 = 1702063733;
LABEL_36:
          v20 = v18 & 0xFFFF0000FFFFFFFFLL | 0x7400000000;
LABEL_43:
          v17 = v20 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
          break;
        case 16:
          v17 = 0xE800000000000000;
          sub_1000FD158();
          break;
        case 17:
          v17 = 0xE700000000000000;
          sub_100045258();
          break;
        case 18:
          sub_100040E10();
          break;
        case 19:
          v17 = 0xE400000000000000;
          v16 = 1684957559;
          break;
        default:
          break;
      }

      if (v13 == v16 && v12 == v17)
      {
        break;
      }

      v24 = sub_1006A9CDC();

      if (v24)
      {
        goto LABEL_57;
      }

      sub_10003A300();
      if ((v25 & 1) == 0)
      {
        goto LABEL_55;
      }
    }

LABEL_57:
    result = sub_10003804C();
  }

  else
  {
LABEL_55:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v33 = *v4;
    sub_1001AE38C(a2, v3, isUniquelyReferenced_nonNull_native);
    *v4 = v33;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_1001ADC30(uint64_t a1, uint64_t a2)
{
  v8 = a2;
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 32;
    do
    {
      sub_1001AD7B8(&v7, *(a1 + v4++));
      --v3;
    }

    while (v3);

    return v8;
  }

  else
  {
    v5 = a2;
  }

  return v5;
}

uint64_t sub_1001ADCAC(double a1, double a2, double a3)
{
  v6 = type metadata accessor for NamedCoordinateSpace();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static CoordinateSpaceProtocol<>.scrollView.getter();
  GeometryProxy.bounds(of:)();
  v10 = *&v15[4];
  (*(v7 + 8))(v9, v6);
  v11 = -v10;
  if (v16)
  {
    v11 = -0.0;
  }

  v12 = v11 - a1 - a2 + a3;
  *v15 = a3;
  if (v12 >= 0.0)
  {
    v13 = -0.0;
  }

  else
  {
    v13 = -v12;
  }

  v15[1] = 0;
  *&v15[2] = v13;
  type metadata accessor for EmptyVisualEffect();
  sub_10022C350(&qword_100CC0FD0);
  sub_100061A3C(&qword_100CA4688, &type metadata accessor for EmptyVisualEffect);
  sub_10023FBF4(&qword_100CC0FD8, &qword_100CC0FD0);
  return VisualEffect.clipShape<A>(_:style:)();
}

uint64_t sub_1001ADEBC()
{
  v1 = v0;
  v2 = *v0;
  sub_10022C350(&qword_100CD1200);
  v3 = static _SetStorage.resize(original:capacity:move:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = v3 + 56;
    if (v8)
    {
LABEL_6:
      v11 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
      goto LABEL_12;
    }

LABEL_7:
    v12 = v5;
    while (1)
    {
      v5 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
LABEL_27:
        __break(1u);
        JUMPOUT(0x1001AE32CLL);
      }

      if (v5 >= v9)
      {
        break;
      }

      v13 = *(v2 + 56 + 8 * v5);
      ++v12;
      if (v13)
      {
        v11 = __clz(__rbit64(v13));
        v8 = (v13 - 1) & v13;
LABEL_12:
        v14 = *(*(v2 + 48) + (v11 | (v5 << 6)));
        Hasher.init(_seed:)();
        String.hash(into:)();

        v15 = Hasher._finalize()();
        v16 = -1 << *(v4 + 32);
        v17 = v15 & ~v16;
        v18 = v17 >> 6;
        if (((-1 << v17) & ~*(v10 + 8 * (v17 >> 6))) != 0)
        {
          v19 = __clz(__rbit64((-1 << v17) & ~*(v10 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v20 = 0;
          v21 = (63 - v16) >> 6;
          do
          {
            if (++v18 == v21 && (v20 & 1) != 0)
            {
              goto LABEL_27;
            }

            v22 = v18 == v21;
            if (v18 == v21)
            {
              v18 = 0;
            }

            v20 |= v22;
            v23 = *(v10 + 8 * v18);
          }

          while (v23 == -1);
          v19 = __clz(__rbit64(~v23)) + (v18 << 6);
        }

        *(v10 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
        *(*(v4 + 48) + v19) = v14;
        ++*(v4 + 16);
        if (v8)
        {
          goto LABEL_6;
        }

        goto LABEL_7;
      }
    }

    v1 = v0;
  }

  else
  {
  }

  *v1 = v4;
  return result;
}

void sub_1001AE38C(char a1, unint64_t a2, char a3)
{
  v4 = v3;
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 <= v7 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_1006A4D44();
    }

    else
    {
      if (v8 > v7)
      {
        sub_1001AF060(&qword_100CD1200);
        goto LABEL_62;
      }

      sub_1001ADEBC();
    }

    v9 = *v3;
    Hasher.init(_seed:)();
    sub_1001AC9D8(a1);
    String.hash(into:)();

    v10 = Hasher._finalize()();
    v11 = -1 << *(v9 + 32);
    a2 = v10 & ~v11;
    if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v12 = ~v11;
      while (1)
      {
        v13 = 0xEA00000000007974;
        v14 = 0x696C617551726961;
        switch(*(*(v9 + 48) + a2))
        {
          case 1:
            v14 = 0x726F46796C696164;
            v15 = 1935762277;
            goto LABEL_20;
          case 2:
            v14 = 0x6B694C736C656566;
            v13 = 0xE900000000000065;
            break;
          case 3:
            v14 = 0x6F46796C72756F68;
            v13 = 0xEE00747361636572;
            break;
          case 4:
            v13 = 0xE800000000000000;
            v14 = 0x79746964696D7568;
            break;
          case 5:
            v13 = 0xE300000000000000;
            v14 = 7364973;
            break;
          case 6:
            v13 = 0xE400000000000000;
            v14 = 1852796781;
            break;
          case 7:
            v14 = 0x697472417377656ELL;
            v16 = 6646883;
            goto LABEL_23;
          case 8:
            v14 = 0xD000000000000015;
            v13 = 0x8000000100ABACA0;
            break;
          case 9:
            v14 = 0xD000000000000012;
            v13 = 0x8000000100ABAF40;
            break;
          case 0xA:
            v14 = 0xD00000000000001BLL;
            v13 = 0x8000000100ABAF60;
            break;
          case 0xB:
            v13 = 0xE800000000000000;
            v14 = 0x6572757373657270;
            break;
          case 0xC:
            v14 = 0xD000000000000012;
            v13 = 0x8000000100ABAC40;
            break;
          case 0xD:
            v14 = 0x655774726F706572;
            v17 = 0x7265687461;
            goto LABEL_27;
          case 0xE:
            v14 = 0x6C41657265766573;
            v16 = 7631461;
LABEL_23:
            v13 = v16 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
            break;
          case 0xF:
            v14 = 0x53657369726E7573;
            v15 = 1702063733;
LABEL_20:
            v17 = v15 & 0xFFFF0000FFFFFFFFLL | 0x7400000000;
LABEL_27:
            v13 = v17 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
            break;
          case 0x10:
            v13 = 0xE800000000000000;
            v14 = 0x7365676172657661;
            break;
          case 0x11:
            v13 = 0xE700000000000000;
            v14 = 0x7865646E497675;
            break;
          case 0x12:
            v14 = 0x696C696269736976;
            break;
          case 0x13:
            v13 = 0xE400000000000000;
            v14 = 1684957559;
            break;
          default:
            break;
        }

        v18 = 0x696C617551726961;
        v19 = 0xEA00000000007974;
        switch(a1)
        {
          case 1:
            v18 = 0x726F46796C696164;
            v20 = 1935762277;
            goto LABEL_43;
          case 2:
            v18 = 0x6B694C736C656566;
            v19 = 0xE900000000000065;
            break;
          case 3:
            v18 = 0x6F46796C72756F68;
            v19 = 0xEE00747361636572;
            break;
          case 4:
            v19 = 0xE800000000000000;
            v18 = 0x79746964696D7568;
            break;
          case 5:
            v19 = 0xE300000000000000;
            v18 = 7364973;
            break;
          case 6:
            v19 = 0xE400000000000000;
            v18 = 1852796781;
            break;
          case 7:
            v18 = 0x697472417377656ELL;
            v21 = 6646883;
            goto LABEL_46;
          case 8:
            v18 = 0xD000000000000015;
            v19 = 0x8000000100ABACA0;
            break;
          case 9:
            v18 = 0xD000000000000012;
            v19 = 0x8000000100ABAF40;
            break;
          case 10:
            v18 = 0xD00000000000001BLL;
            v19 = 0x8000000100ABAF60;
            break;
          case 11:
            v19 = 0xE800000000000000;
            v18 = 0x6572757373657270;
            break;
          case 12:
            v18 = 0xD000000000000012;
            v19 = 0x8000000100ABAC40;
            break;
          case 13:
            v18 = 0x655774726F706572;
            v22 = 0x7265687461;
            goto LABEL_50;
          case 14:
            v18 = 0x6C41657265766573;
            v21 = 7631461;
LABEL_46:
            v19 = v21 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
            break;
          case 15:
            v18 = 0x53657369726E7573;
            v20 = 1702063733;
LABEL_43:
            v22 = v20 & 0xFFFF0000FFFFFFFFLL | 0x7400000000;
LABEL_50:
            v19 = v22 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
            break;
          case 16:
            v19 = 0xE800000000000000;
            v18 = 0x7365676172657661;
            break;
          case 17:
            v19 = 0xE700000000000000;
            v18 = 0x7865646E497675;
            break;
          case 18:
            v18 = 0x696C696269736976;
            break;
          case 19:
            v19 = 0xE400000000000000;
            v18 = 1684957559;
            break;
          default:
            break;
        }

        if (v14 == v18 && v13 == v19)
        {
          break;
        }

        v24 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v24)
        {
          goto LABEL_66;
        }

        a2 = (a2 + 1) & v12;
        if (((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
        {
          goto LABEL_62;
        }
      }

LABEL_65:

LABEL_66:
      ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      JUMPOUT(0x1001AE990);
    }
  }

LABEL_62:
  v25 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v25 + 48) + a2) = a1;
  v26 = *(v25 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (v27)
  {
    __break(1u);
    goto LABEL_65;
  }

  *(v25 + 16) = v28;
}

uint64_t sub_1001AEA48(char a1)
{
  v3 = *(type metadata accessor for TrackExposureModifier() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_1001AEBFC(a1, v4);
}

uint64_t sub_1001AEAB8()
{
  Location.kind.getter();
  v0 = Location.Identifier.Kind.rawValue.getter();
  v2 = v1;
  if (v0 == Location.Identifier.Kind.rawValue.getter() && v2 == v3)
  {
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v5 & 1) == 0)
    {
      return 2;
    }
  }

  v7 = [objc_opt_self() currentDevice];
  v8 = [v7 userInterfaceIdiom];

  if (v8)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

uint64_t type metadata accessor for TrackExposureModifier()
{
  result = qword_100CD3B30;
  if (!qword_100CD3B30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1001AEBFC(char a1, uint64_t a2)
{
  v4 = sub_10022C350(&unk_100CB2CF0);
  __chkstk_darwin(v4 - 8);
  v6 = &v19[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v9 = &v19[-v8];
  if (a1)
  {
    Date.init()();
    v10 = type metadata accessor for Date();
    sub_10001B350(v9, 0, 1, v10);
    v11 = type metadata accessor for TrackExposureModifier();
    sub_1000D47CC(v9, v6);
    sub_10022C350(&qword_100CBB758);
    State.wrappedValue.setter();
    sub_1001AEDF4(v9);
    v12 = (a2 + *(v11 + 32));
    v13 = *v12;
    v14 = *(v12 + 1);
    v21 = v13;
    v22 = v14;
    v20 = 1;
  }

  else
  {
    sub_1006F4338();
    v15 = (a2 + *(type metadata accessor for TrackExposureModifier() + 32));
    v16 = *v15;
    v17 = *(v15 + 1);
    v21 = v16;
    v22 = v17;
    v20 = 0;
  }

  sub_10022C350(&qword_100CA5A80);
  return State.wrappedValue.setter();
}

uint64_t sub_1001AED8C(void (*a1)(void))
{
  a1(0);
  sub_100022E60();
  sub_100018584();

  return swift_deallocClassInstance();
}

uint64_t sub_1001AEDF4(uint64_t a1)
{
  v2 = sub_10022C350(&unk_100CB2CF0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1001AEE5C(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1000037E8();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1001AEEB4(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1000037E8();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1001AEF68(unsigned int a1, unsigned int a2)
{
  if (a1 == 2)
  {
    return a2 == 2;
  }

  if (a1 == 3)
  {
    return a2 == 3;
  }

  if ((a2 & 0xFE) == 2)
  {
    return 0;
  }

  result = 0;
  if (((a2 ^ a1) & 1) == 0 && (((a2 ^ a1) >> 8) & 1) == 0)
  {
    v4 = HIWORD(a2);
    v5 = PredictedLocationsAuthorizationState.rawValue.getter(SBYTE2(a1));
    v7 = v6;
    if (v5 != PredictedLocationsAuthorizationState.rawValue.getter(v4) || v7 != v8)
    {
      v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

      return v10 & 1;
    }

    return 1;
  }

  return result;
}

void sub_1001AF060(uint64_t *a1)
{
  v3 = v1;
  sub_10022C350(a1);
  v4 = *v1;
  v5 = static _SetStorage.copy(original:)();
  if (*(v4 + 16))
  {
    sub_10003725C();
    sub_1000C8530();
    if (v9)
    {
      v10 = v6 >= v8;
    }

    else
    {
      v10 = 1;
    }

    if (v10)
    {
      memmove(v6, v2, 8 * v7);
    }

    sub_10003BB38();
    if (v13)
    {
      do
      {
        sub_1000E5A14();
LABEL_15:
        *(*(v5 + 48) + v15) = *(*(v4 + 48) + v15);
      }

      while (v14);
    }

    v16 = v11;
    while (1)
    {
      v17 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v17 >= v12)
      {
        goto LABEL_17;
      }

      ++v16;
      if (*(v2 + v17))
      {
        sub_1000E3208();
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_17:

    *v3 = v5;
  }
}

uint64_t sub_1001AF120@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for LocationViewModel();
  __chkstk_darwin(v2 - 8);
  v16 = type metadata accessor for LocationInput();
  __chkstk_darwin(v16);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10022C350(&qword_100CA4B70);
  __chkstk_darwin(v5);
  __chkstk_darwin(v6);
  v8 = (&v15 - v7);
  swift_beginAccess();
  sub_100095588();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v10 = *(sub_10022C350(&qword_100CA4B90) + 48);
      sub_1000A0AC0();
      sub_10001B350(a1, 0, 1, v16);
      return sub_1001AFB34(v8 + v10, type metadata accessor for LocationViewModel);
    }

    else
    {
      sub_10001B350(a1, 1, 1, v16);
      return sub_1000180EC(v8, &qword_100CA4B70);
    }
  }

  else
  {
    v12 = *v8;
    v15 = a1;
    v13 = v8[2];
    v12();
    (v13)(v4);

    sub_10022C350(&qword_100CA4B90);
    sub_1001A7BF8();
    sub_1000A0AC0();
    swift_storeEnumTagMultiPayload();
    swift_beginAccess();
    sub_100097AA4();
    swift_endAccess();
    v14 = v15;
    sub_1000A0AC0();
    return sub_10001B350(v14, 0, 1, v16);
  }
}

uint64_t type metadata accessor for VisibilityComponent()
{
  result = qword_100CBA7A0;
  if (!qword_100CBA7A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1001AF4C4()
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

  sub_100074DD8();
  if (v3)
  {
    sub_10022C350(&qword_100CD11F8);
    v7 = sub_1000BCEFC();
    sub_10000ECE0(v7);
    sub_10003C6F8(v8);
  }

  else
  {
    v3 = _swiftEmptyArrayStorage;
  }

  v9 = sub_1000B99E0();
  if (v1)
  {
    if (v3 != v0 || &v10[8 * v2] <= v9)
    {
      memmove(v9, v10, 8 * v2);
    }

    v0[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

uint64_t type metadata accessor for PressureComponent()
{
  result = qword_100CD0758;
  if (!qword_100CD0758)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1001AF5DC()
{

  return v0;
}

uint64_t sub_1001AF604(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000038D8();
  v5(v4);
  sub_1000037E8();
  (*(v6 + 16))(a2, v2);
  return a2;
}

uint64_t sub_1001AF660(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000038D8();
  v5(v4);
  sub_1000037E8();
  (*(v6 + 16))(a2, v2);
  return a2;
}

uint64_t sub_1001AF6BC(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1000037E8();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1001AF71C()
{
  sub_100003A00();
  v1(0);
  sub_1000037E8();
  v2 = sub_100003940();
  v3(v2);
  return v0;
}

uint64_t sub_1001AF774(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1000037E8();
  (*(v5 + 16))(a2, a1);
  return a2;
}

void *sub_1001AF7D4(uint64_t a1, uint64_t a2, int a3)
{
  v4 = v3;
  v33 = a3;
  v7 = type metadata accessor for Location();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = v4[10];
  v12 = v4[11];
  sub_1000161C0(v4 + 7, v11);
  v13 = (*(v12 + 8))(a1, v11, v12);
  if (qword_100CA26B8 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_10000703C(v14, qword_100D90A90);
  (*(v8 + 16))(v10, a2, v7);

  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v31 = a2;
    v18 = v17;
    v19 = swift_slowAlloc();
    v34 = v13;
    v35[0] = v19;
    *v18 = 136446723;
    sub_1001AFBE0();
    v20 = ShortDescribable.description.getter();
    v22 = sub_100078694(v20, v21, v35);
    v32 = v4;
    v23 = v22;

    *(v18 + 4) = v23;
    *(v18 + 12) = 2160;
    *(v18 + 14) = 1752392040;
    *(v18 + 22) = 2081;
    v24 = Location.name.getter();
    v26 = v25;
    (*(v8 + 8))(v10, v7);
    v27 = sub_100078694(v24, v26, v35);
    v4 = v32;

    *(v18 + 24) = v27;
    _os_log_impl(&_mh_execute_header, v15, v16, "Made row configuration: %{public}s for location=%{private,mask.hash}s", v18, 0x20u);
    swift_arrayDestroy();

    a2 = v31;
  }

  else
  {

    v28 = (*(v8 + 8))(v10, v7);
  }

  __chkstk_darwin(v28);
  *(&v31 - 32) = v33 & 1;
  *(&v31 - 3) = v4;
  *(&v31 - 2) = a2;
  v29 = sub_1001B11C0(sub_1001B15DC, (&v31 - 6), v13);

  return v29;
}

uint64_t sub_1001AFB34(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1000037E8();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1001AFB8C(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_100003D98();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t sub_1001AFBE0()
{
  result = qword_100CDFCC8;
  if (!qword_100CDFCC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CDFCC8);
  }

  return result;
}

unint64_t sub_1001AFC34()
{
  result = qword_100CEC498;
  if (!qword_100CEC498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CEC498);
  }

  return result;
}

uint64_t sub_1001AFC88()
{

  return swift_deallocObject();
}

uint64_t sub_1001AFCC8()
{

  sub_100006F14(v0 + 40);

  return swift_deallocObject();
}

void sub_1001AFD1C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    swift_beginAccess();
    v9 = *(v8 + 16);
    if (*(v9 + 16) && (v10 = sub_1000D5F5C(a2), (v11 & 1) != 0))
    {
      v12 = *(*(v9 + 56) + 8 * v10);
      swift_endAccess();
      if (v12 == a3)
      {
LABEL_5:
        swift_beginAccess();
        swift_isUniquelyReferenced_nonNull_native();
        v18 = *(v8 + 16);
        sub_1000D52D8();
        *(v8 + 16) = v18;
        v13 = swift_endAccess();
        a4(v13);

        return;
      }
    }

    else
    {
      swift_endAccess();
      if (!a3)
      {
        goto LABEL_5;
      }
    }

    if (qword_100CA2740 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_10000703C(v14, qword_100D90C18);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v19[0] = swift_slowAlloc();
      *v17 = 136315906;
      *(v17 + 4) = sub_100078694(0x746174536E69614DLL, 0xE900000000000065, v19);
      *(v17 + 12) = 2080;
      *(v17 + 14) = sub_100078694(0xD00000000000002BLL, 0x8000000100ABC100, v19);
      *(v17 + 22) = 2080;
      *(v17 + 24) = sub_100078694(0xD00000000000001FLL, 0x8000000100ABC130, v19);
      *(v17 + 32) = 2048;
      *(v17 + 34) = a3;
      _os_log_impl(&_mh_execute_header, v15, v16, "Debounced state update; another update came through afterwards. Selector=<%s, %s, %s>, Count=%ld", v17, 0x2Au);
      swift_arrayDestroy();
    }
  }
}

uint64_t sub_1001AFFCC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for LocationViewComponent();
  sub_1000037C4();
  v39 = v5;
  __chkstk_darwin(v6);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v36 - v10;
  sub_10022C350(&qword_100CA36F8);
  inited = swift_initStackObject();
  v13 = inited;
  *(inited + 16) = xmmword_100A2C3F0;
  *(inited + 32) = 1937207154;
  *(inited + 40) = 0xE400000000000000;
  v14 = *(a1 + 16);
  v15 = _swiftEmptyArrayStorage;
  if (v14)
  {
    v36 = inited;
    v38 = v4;
    v37 = a2;
    v50 = _swiftEmptyArrayStorage;
    sub_10000369C(0, v14, 0);
    v16 = 0;
    v17 = v50;
    v40 = a1 + 32;
    v41 = v14;
    do
    {
      v43 = v16;
      v44 = v17;
      v18 = *(v40 + 8 * v16);
      v19 = *(v18 + 16);
      if (v19)
      {
        v49 = _swiftEmptyArrayStorage;

        sub_10000369C(0, v19, 0);
        v15 = v49;
        v20 = *(v39 + 80);
        v42 = v18;
        v21 = v18 + ((v20 + 32) & ~v20);
        v45 = *(v39 + 72);
        do
        {
          sub_1001AB2F0(v21, v11);
          v47 = 0;
          v48 = 0xE000000000000000;
          sub_1001AB2F0(v11, v8);
          EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
          v23 = 10;
          switch(EnumCaseMultiPayload)
          {
            case 1:
              sub_1001AC2E8(v8);
              v23 = 1;
              break;
            case 2:
              sub_1001AC2E8(v8);
              v23 = 2;
              break;
            case 3:
              sub_1001AC2E8(v8);
              v23 = 3;
              break;
            case 4:
              sub_1001AC2E8(v8);
              v23 = 4;
              break;
            case 5:
              sub_1001AC2E8(v8);
              v23 = 5;
              break;
            case 6:
              sub_1001AC2E8(v8);
              v23 = 6;
              break;
            case 7:
              sub_1001AC2E8(v8);
              v23 = 7;
              break;
            case 8:
              sub_1001AC2E8(v8);
              v23 = 8;
              break;
            case 9:
              sub_1001AC2E8(v8);
              v23 = 9;
              break;
            case 10:
              sub_1001AC2E8(v8);
              v23 = 11;
              break;
            case 11:
              sub_1001AC2E8(v8);
              v23 = 12;
              break;
            case 12:
              v23 = 13;
              break;
            case 13:
              sub_1001AC2E8(v8);
              v23 = 14;
              break;
            case 14:
              sub_1001AC2E8(v8);
              v23 = 15;
              break;
            case 15:
              sub_1001AC2E8(v8);
              v23 = 16;
              break;
            case 16:
              sub_1001AC2E8(v8);
              v23 = 17;
              break;
            case 17:
              sub_1001AC2E8(v8);
              v23 = 18;
              break;
            case 18:
              sub_1001AC2E8(v8);
              v23 = 19;
              break;
            case 19:
              break;
            default:
              sub_1001AC2E8(v8);
              v23 = 0;
              break;
          }

          v46 = v23;
          _print_unlocked<A, B>(_:_:)();
          v25 = v47;
          v24 = v48;
          sub_1001AC2E8(v11);
          v49 = v15;
          v27 = v15[2];
          v26 = v15[3];
          if (v27 >= v26 >> 1)
          {
            sub_10000369C((v26 > 1), v27 + 1, 1);
            v15 = v49;
          }

          v15[2] = v27 + 1;
          v28 = &v15[2 * v27];
          v28[4] = v25;
          v28[5] = v24;
          v21 += v45;
          --v19;
        }

        while (v19);
      }

      else
      {
      }

      v47 = v15;
      sub_10022C350(&qword_100CCC930);
      sub_100006F64(&qword_100CB2D00, &qword_100CCC930);
      v29 = BidirectionalCollection<>.joined(separator:)();
      v31 = v30;

      v17 = v44;
      v50 = v44;
      v33 = v44[2];
      v32 = v44[3];
      if (v33 >= v32 >> 1)
      {
        sub_10000369C((v32 > 1), v33 + 1, 1);
        v17 = v50;
      }

      v16 = v43 + 1;
      v17[2] = v33 + 1;
      v34 = &v17[2 * v33];
      v34[4] = v29;
      v34[5] = v31;
      v15 = _swiftEmptyArrayStorage;
    }

    while (v16 != v41);
    a2 = v37;
    v13 = v36;
  }

  else
  {
    v17 = _swiftEmptyArrayStorage;
  }

  *(v13 + 72) = sub_10022C350(&qword_100CCC930);
  *(v13 + 48) = v17;
  Dictionary.init(dictionaryLiteral:)();
  a2[3] = sub_10022C350(&qword_100CEC4A0);
  a2[4] = sub_100006F64(&qword_100CEC4A8, &qword_100CEC4A0);
  sub_100042FB0(a2);
  return ShortDescription.init(name:_:)();
}

uint64_t sub_1001B05BC(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, void (*a5)(char *, uint64_t), uint64_t a6)
{
  v67 = a6;
  v68 = a5;
  v72 = a4;
  v73 = a2;
  v74 = a1;
  v70 = sub_10022C350(&qword_100CA4BA8);
  __chkstk_darwin(v70);
  v71 = &v59 - v7;
  v8 = sub_10022C350(&qword_100CA4BB0);
  __chkstk_darwin(v8 - 8);
  v66 = &v59 - v9;
  v69 = type metadata accessor for WeatherConditionBackgroundModel();
  v64 = *(v69 - 8);
  __chkstk_darwin(v69);
  v62 = &v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v63 = &v59 - v12;
  v13 = sub_10022C350(&qword_100CA4BB8);
  __chkstk_darwin(v13);
  v15 = &v59 - v14;
  v16 = sub_10022C350(&unk_100CA4BC0);
  __chkstk_darwin(v16 - 8);
  v65 = &v59 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v59 - v19;
  __chkstk_darwin(v21);
  v23 = &v59 - v22;
  __chkstk_darwin(v24);
  v26 = &v59 - v25;
  v27 = type metadata accessor for WeatherConditionBackgroundModelFactoryInput();
  v28 = *(v27 - 8);
  __chkstk_darwin(v27);
  v30 = &v59 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __chkstk_darwin(v31);
  v34 = &v59 - v33;
  (v74)(a3 + 64, 0, v32);
  if (sub_100024D10(v26, 1, v27) == 1)
  {
    return sub_1000180EC(v26, &unk_100CA4BC0);
  }

  v59 = *(v28 + 32);
  v59(v34, v26, v27);
  v73 = v34;
  v74 = v28;
  v37 = *(v28 + 16);
  v36 = v28 + 16;
  v61 = v37;
  v37(v23, v34, v27);
  sub_10001B350(v23, 0, 1, v27);
  sub_100247D98(v20);
  v38 = *(v13 + 48);
  sub_100095588();
  sub_100095588();
  if (sub_100024D10(v15, 1, v27) == 1)
  {
    sub_1000180EC(v20, &unk_100CA4BC0);
    sub_1000180EC(v23, &unk_100CA4BC0);
    if (sub_100024D10(&v15[v38], 1, v27) == 1)
    {
      sub_1000180EC(v15, &unk_100CA4BC0);
      return (*(v74 + 8))(v73, v27);
    }

    goto LABEL_8;
  }

  v39 = v65;
  sub_100095588();
  if (sub_100024D10(&v15[v38], 1, v27) == 1)
  {
    sub_1000180EC(v20, &unk_100CA4BC0);
    sub_1000180EC(v23, &unk_100CA4BC0);
    (*(v74 + 8))(v39, v27);
LABEL_8:
    v60 = v36;
    sub_1000180EC(v15, &qword_100CA4BB8);
    v40 = v73;
    goto LABEL_9;
  }

  v60 = v36;
  v59(v30, &v15[v38], v27);
  sub_10006724C(&qword_100CA4BE8, &type metadata accessor for WeatherConditionBackgroundModelFactoryInput);
  v49 = v39;
  v50 = dispatch thunk of static Equatable.== infix(_:_:)();
  v51 = *(v74 + 8);
  v51(v30, v27);
  sub_1000180EC(v20, &unk_100CA4BC0);
  sub_1000180EC(v23, &unk_100CA4BC0);
  v51(v49, v27);
  sub_1000180EC(v15, &unk_100CA4BC0);
  v40 = v73;
  if (v50)
  {
    return (v51)(v73, v27);
  }

LABEL_9:
  v41 = v66;
  v68(v40, 0);
  v42 = v69;
  if (sub_100024D10(v41, 1, v69) == 1)
  {
    sub_1000180EC(v41, &qword_100CA4BB0);
    v43 = v74;
LABEL_13:
    sub_10022C350(&qword_100CA4BC8);
    v61(v71, v40, v27);
    sub_1001108E0();
    (*(v43 + 8))(v40, v27);
    swift_storeEnumTagMultiPayload();
    swift_beginAccess();
    sub_100097AA4();
    return swift_endAccess();
  }

  v45 = v63;
  v44 = v64;
  (*(v64 + 32))(v63, v41, v42);
  v46 = v62;
  sub_1001108E0();
  sub_10006724C(&qword_100CA4BD0, &type metadata accessor for WeatherConditionBackgroundModel);
  v47 = dispatch thunk of static Equatable.== infix(_:_:)();
  v48 = *(v44 + 8);
  v48(v46, v42);
  v43 = v74;
  if (v47)
  {
    v48(v45, v42);
    v40 = v73;
    goto LABEL_13;
  }

  v68 = v48;
  if (qword_100CA2740 != -1)
  {
    swift_once();
  }

  v52 = type metadata accessor for Logger();
  sub_10000703C(v52, qword_100D90C18);
  v53 = Logger.logObject.getter();
  v54 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v53, v54))
  {
    v55 = swift_slowAlloc();
    v75[0] = swift_slowAlloc();
    *v55 = 136446466;
    *(v55 + 4) = sub_100078694(0xD00000000000002BLL, 0x8000000100ABC100, v75);
    *(v55 + 12) = 2082;
    *(v55 + 14) = sub_100078694(0xD00000000000001FLL, 0x8000000100ABC130, v75);
    _os_log_impl(&_mh_execute_header, v53, v54, "Selector observed model difference for %{public}s, %{public}s; views will update", v55, 0x16u);
    swift_arrayDestroy();
    v43 = v74;
  }

  v56 = *(sub_10022C350(&qword_100CA4BC8) + 48);
  v57 = v71;
  v58 = v73;
  v61(v71, v73, v27);
  (*(v64 + 16))(&v57[v56], v45, v42);
  swift_storeEnumTagMultiPayload();
  swift_beginAccess();
  sub_100097AA4();
  swift_endAccess();
  sub_10022C350(&qword_100CA4BD8);
  sub_100006F64(&qword_100CA4BE0, &qword_100CA4BD8);
  ObservableObject<>.objectWillChange.getter();
  ObservableObjectPublisher.send()();

  v68(v45, v42);
  return (*(v43 + 8))(v58, v27);
}

uint64_t sub_1001B1084(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 25;
  }

  v4 = sub_100031B34();
  if (v5)
  {
    return *(*(a3 + 56) + v4);
  }

  else
  {
    return 25;
  }
}

BOOL sub_1001B10E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  Hasher.init(_seed:)();
  sub_10003140C();
  String.hash(into:)();
  Hasher._finalize()();
  sub_10002C9A0();
  v8 = ~v7;
  do
  {
    v9 = v6 & v8;
    v10 = (1 << (v6 & v8)) & *(a3 + 56 + (((v6 & v8) >> 3) & 0xFFFFFFFFFFFFFF8));
    v11 = v10 != 0;
    if (!v10)
    {
      break;
    }

    v12 = (*(a3 + 48) + 16 * v9);
    if (*v12 == a1 && v12[1] == a2)
    {
      break;
    }

    v14 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v6 = v9 + 1;
  }

  while ((v14 & 1) == 0);
  return v11;
}

void *sub_1001B11C0(void (*a1)(void *__return_ptr, uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = (a3 + 32);
  v6 = _swiftEmptyArrayStorage;
  if (v4)
  {
    while (1)
    {
      v17 = *v5;

      a1(v16, &v17);
      if (v3)
      {
        break;
      }

      v7 = v16[0];
      if (v16[0])
      {
        v9 = v16[1];
        v8 = v16[2];
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1000066AC();
          sub_1001B4454();
          v6 = v12;
        }

        v10 = v6[2];
        if (v10 >= v6[3] >> 1)
        {
          sub_1001B4454();
          v6 = v13;
        }

        v6[2] = v10 + 1;
        v11 = &v6[3 * v10];
        v11[4] = v7;
        v11[5] = v9;
        v11[6] = v8;
      }

      ++v5;
      if (!--v4)
      {
        return v6;
      }
    }
  }

  return v6;
}

void sub_1001B12F4()
{
  sub_10000E8AC();
  sub_1000049D4();
  v4 = sub_10022C350(&qword_100CA5008);
  sub_100003810(v4);
  sub_100003828();
  __chkstk_darwin(v5);
  sub_100014DAC();
  type metadata accessor for LocationComponentContainerViewModel();
  sub_1000037C4();
  __chkstk_darwin(v6);
  sub_100003848();
  v33 = v7;
  sub_10000386C();
  __chkstk_darwin(v8);
  sub_100016E5C(v9, v10, v11, v12, v13, v14, v15, v16, v31);
  v17 = 0;
  v18 = *(v1 + 16);
  v34 = _swiftEmptyArrayStorage;
  while (v18 != v17)
  {
    v19 = type metadata accessor for LocationViewComponent();
    sub_100003AE8(v19);
    v2(v1 + ((*(v20 + 80) + 32) & ~*(v20 + 80)) + *(v21 + 72) * v17);
    if (v0)
    {
      sub_1000317C0();
      break;
    }

    sub_100074F14();
    if (v22)
    {
      sub_1000180EC(v3, &qword_100CA5008);
      ++v17;
    }

    else
    {
      sub_1001B36B0(v3, v32, type metadata accessor for LocationComponentContainerViewModel);
      sub_1001B36B0(v32, v33, type metadata accessor for LocationComponentContainerViewModel);
      v23 = v34;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1000066AC();
        sub_1001B37C8();
        v23 = v29;
      }

      sub_10000CE98();
      if (v25)
      {
        sub_100049BCC();
        sub_1001B37C8();
        v34 = v30;
      }

      ++v17;
      sub_100020AEC();
      sub_10001CC40();
      sub_1001B36B0(v28, v26 + v27 * v23, type metadata accessor for LocationComponentContainerViewModel);
    }
  }

  sub_1000230F8();
  sub_10000C8F4();
}

uint64_t sub_1001B1558@<X0>(uint64_t *a1@<X8>)
{
  sub_1001B12F4();
  if (*(v2 + 16))
  {
    result = sub_1001B38A0(v2);
  }

  else
  {

    result = 0;
    v4 = 0;
    v5 = 0;
  }

  *a1 = result;
  a1[1] = v4;
  a1[2] = v5;
  return result;
}

uint64_t sub_1001B15FC@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for LocationViewComponent();
  __chkstk_darwin(v8);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10011145C(a1, v10, type metadata accessor for LocationViewComponent);
  if (swift_getEnumCaseMultiPayload() != 9 || (a2 & 1) != 0)
  {
    sub_1000161C0((a3 + 16), *(a3 + 40));
    sub_1001B1760(a1, a4);
    v11 = 0;
  }

  else
  {
    v11 = 1;
  }

  v12 = type metadata accessor for LocationComponentContainerViewModel();
  sub_10001B350(a4, v11, 1, v12);
  return sub_100105FE4(v10, type metadata accessor for LocationViewComponent);
}

uint64_t sub_1001B1760@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = type metadata accessor for WindComponent();
  v3 = sub_100003810(v2);
  __chkstk_darwin(v3);
  sub_1000038E4();
  v108 = v4;
  v5 = type metadata accessor for VisibilityComponent();
  v6 = sub_100003810(v5);
  __chkstk_darwin(v6);
  sub_1000038E4();
  sub_100003918(v7);
  v8 = type metadata accessor for UVIndexComponent();
  v9 = sub_100003810(v8);
  __chkstk_darwin(v9);
  sub_1000038E4();
  sub_100003918(v10);
  v105 = type metadata accessor for SunriseSunsetModel();
  v104 = *(v105 - 8);
  __chkstk_darwin(v105);
  sub_1000038E4();
  sub_100003918(v11);
  v12 = type metadata accessor for SevereAlertComponent();
  v13 = sub_100003810(v12);
  __chkstk_darwin(v13);
  sub_1000038E4();
  sub_100003918(v14);
  v15 = type metadata accessor for PressureComponent();
  v16 = sub_100003810(v15);
  __chkstk_darwin(v16);
  sub_1000038E4();
  sub_100003918(v17);
  v18 = type metadata accessor for NotificationsOptInComponent();
  v19 = sub_100003810(v18);
  __chkstk_darwin(v19);
  sub_1000038E4();
  sub_100003918(v20);
  HourPrecipitationComponent = type metadata accessor for NextHourPrecipitationComponent();
  v22 = sub_100003810(HourPrecipitationComponent);
  __chkstk_darwin(v22);
  sub_1000038E4();
  sub_100003918(v23);
  v24 = type metadata accessor for NewsArticleComponent();
  v25 = sub_100003810(v24);
  __chkstk_darwin(v25);
  sub_1000038E4();
  sub_100003918(v26);
  v27 = type metadata accessor for MoonComponent();
  v28 = sub_100003810(v27);
  __chkstk_darwin(v28);
  sub_1000037D8();
  v31 = v30 - v29;
  v32 = type metadata accessor for MapComponent();
  v33 = sub_100003810(v32);
  __chkstk_darwin(v33);
  sub_1000037D8();
  v36 = v35 - v34;
  v37 = type metadata accessor for HumidityComponent();
  v38 = sub_100003810(v37);
  __chkstk_darwin(v38);
  sub_1000037D8();
  v41 = v40 - v39;
  v42 = type metadata accessor for HourlyForecastComponent();
  v43 = sub_100003810(v42);
  __chkstk_darwin(v43);
  sub_1000037D8();
  v46 = v45 - v44;
  v47 = type metadata accessor for FeelsLikeComponent();
  v48 = sub_100003810(v47);
  __chkstk_darwin(v48);
  sub_1000037D8();
  v51 = v50 - v49;
  v52 = type metadata accessor for DailyForecastComponent();
  v53 = sub_100003810(v52);
  __chkstk_darwin(v53);
  sub_1000037D8();
  v56 = v55 - v54;
  v57 = type metadata accessor for AveragesComponent();
  v58 = sub_100003810(v57);
  __chkstk_darwin(v58);
  sub_1000037D8();
  v61 = v60 - v59;
  v62 = type metadata accessor for AirQualityComponent();
  v63 = sub_100003810(v62);
  __chkstk_darwin(v63);
  sub_1000037D8();
  v66 = v65 - v64;
  type metadata accessor for LocationViewComponent();
  sub_1000037E8();
  __chkstk_darwin(v67);
  sub_1000037D8();
  v70 = (v69 - v68);
  sub_1001AB2F0(a1, v69 - v68);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v71 = type metadata accessor for DailyForecastComponent;
      sub_1001B2950(v70, v56, type metadata accessor for DailyForecastComponent);
      sub_10001EBC0(v109 + 12, v109[15]);
      sub_1001B452C(v56, v87);
      goto LABEL_21;
    case 2u:
      v71 = type metadata accessor for FeelsLikeComponent;
      sub_1001B2950(v70, v51, type metadata accessor for FeelsLikeComponent);
      sub_10001EBC0(v109 + 17, v109[20]);
      sub_1008C8050(v51, v81);
      v73 = v51;
      goto LABEL_22;
    case 3u:
      v71 = type metadata accessor for HourlyForecastComponent;
      sub_1001B2950(v70, v46, type metadata accessor for HourlyForecastComponent);
      sub_10001EBC0(v109 + 22, v109[25]);
      sub_1001B2A74(v46, v85);
      v73 = v46;
      goto LABEL_22;
    case 4u:
      v71 = type metadata accessor for HumidityComponent;
      sub_1001B2950(v70, v41, type metadata accessor for HumidityComponent);
      sub_10001EBC0(v109 + 27, v109[30]);
      sub_1002E5A90(v77);
      v73 = v41;
      goto LABEL_22;
    case 5u:
      v71 = type metadata accessor for MapComponent;
      sub_1001B2950(v70, v36, type metadata accessor for MapComponent);
      v89 = sub_10001EBC0(v109 + 32, v109[35]);
      sub_10057AD18(v89, v36, v90);
      v73 = v36;
      goto LABEL_22;
    case 6u:
      v71 = type metadata accessor for MoonComponent;
      sub_1001B2950(v70, v31, type metadata accessor for MoonComponent);
      v92 = sub_10001EBC0(v109 + 37, v109[40]);
      sub_1007A1DA0(v92, v31, v93);
      v73 = v31;
      goto LABEL_22;
    case 7u:
      v71 = type metadata accessor for NewsArticleComponent;
      v56 = v98;
      sub_1001B2950(v70, v98, type metadata accessor for NewsArticleComponent);
      sub_100005BF4(v109 + 42, v109[45]);
      sub_1005C1320(v98, v86);
      goto LABEL_21;
    case 8u:
      v71 = type metadata accessor for NextHourPrecipitationComponent;
      v56 = v99;
      sub_1001B2950(v70, v99, type metadata accessor for NextHourPrecipitationComponent);
      sub_10001EBC0(v109 + 47, v109[50]);
      sub_10065C1C4(v96);
      goto LABEL_21;
    case 9u:
      v71 = type metadata accessor for NotificationsOptInComponent;
      v56 = v100;
      sub_1001B2950(v70, v100, type metadata accessor for NotificationsOptInComponent);
      sub_100005BF4(v109 + 52, v109[55]);
      sub_10048DED0(v100, v80);
      goto LABEL_21;
    case 0xAu:
      v71 = type metadata accessor for PressureComponent;
      v56 = v101;
      sub_1001B2950(v70, v101, type metadata accessor for PressureComponent);
      sub_10001EBC0(v109 + 62, v109[65]);
      sub_1009B9BE0(v101, v95);
      goto LABEL_21;
    case 0xBu:
      memcpy(__dst, v70, sizeof(__dst));
      sub_1000161C0(v109 + 67, v109[70]);
      sub_1006F4148(__dst, a2);
      return sub_1004031BC(__dst);
    case 0xCu:
      v78 = *v70;
      sub_100005BF4(v109 + 72, v109[75]);
      return sub_1007A0F44(v78, v79);
    case 0xDu:
      v71 = type metadata accessor for SevereAlertComponent;
      v56 = v102;
      sub_1001B2950(v70, v102, type metadata accessor for SevereAlertComponent);
      sub_10001EBC0(v109 + 77, v109[80]);
      sub_10084FC64(v102, v91);
      goto LABEL_21;
    case 0xEu:
      (*(v104 + 32))(v103, v70, v105);
      sub_10001EBC0(v109 + 82, v109[85]);
      sub_100386C5C(v75);
      return (*(v104 + 8))(v103, v105);
    case 0xFu:
      sub_1001B2950(v70, v61, type metadata accessor for AveragesComponent);
      v82 = sub_10001EBC0(v109 + 7, v109[10]);
      sub_10046C1BC(v82, v61, v83);
      v73 = v61;
      v84 = type metadata accessor for AveragesComponent;
      return sub_1001B32C4(v73, v84);
    case 0x10u:
      v71 = type metadata accessor for UVIndexComponent;
      v56 = v106;
      sub_1001B2950(v70, v106, type metadata accessor for UVIndexComponent);
      sub_10001EBC0(v109 + 87, v109[90]);
      sub_1007C869C(v106, v74);
      goto LABEL_21;
    case 0x11u:
      v71 = type metadata accessor for VisibilityComponent;
      v56 = v107;
      sub_1001B2950(v70, v107, type metadata accessor for VisibilityComponent);
      sub_10001EBC0(v109 + 92, v109[95]);
      sub_100734650(v107, v88);
      goto LABEL_21;
    case 0x12u:
      v71 = type metadata accessor for WindComponent;
      v56 = v108;
      sub_1001B2950(v70, v108, type metadata accessor for WindComponent);
      sub_10001EBC0(v109 + 97, v109[100]);
      sub_10066F8B0(v108, v94);
LABEL_21:
      v73 = v56;
      goto LABEL_22;
    case 0x13u:
      sub_100005BF4(v109 + 57, v109[60]);
      return sub_100383428(v97);
    default:
      v71 = type metadata accessor for AirQualityComponent;
      sub_1001B2950(v70, v66, type metadata accessor for AirQualityComponent);
      sub_10001EBC0(v109 + 2, v109[5]);
      sub_1009A2FB8(v66, v72);
      v73 = v66;
LABEL_22:
      v84 = v71;
      return sub_1001B32C4(v73, v84);
  }
}

uint64_t type metadata accessor for WindComponent()
{
  result = qword_100CEC3A0;
  if (!qword_100CEC3A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata accessor for UVIndexComponent()
{
  result = qword_100CE6620;
  if (!qword_100CE6620)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata accessor for SevereAlertComponent()
{
  result = qword_100CB46E0;
  if (!qword_100CB46E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata accessor for NotificationsOptInComponent()
{
  result = qword_100CB29A8;
  if (!qword_100CB29A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata accessor for NextHourPrecipitationComponent()
{
  result = qword_100CCFCB8;
  if (!qword_100CCFCB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata accessor for NewsArticleComponent()
{
  result = qword_100CC6D80;
  if (!qword_100CC6D80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata accessor for MoonComponent()
{
  result = qword_100CAF838;
  if (!qword_100CAF838)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata accessor for MapComponent()
{
  result = qword_100CDEAB8;
  if (!qword_100CDEAB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata accessor for HumidityComponent()
{
  result = qword_100CE0238;
  if (!qword_100CE0238)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata accessor for HourlyForecastComponent()
{
  result = qword_100CD8D00;
  if (!qword_100CD8D00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id WeatherLocation.init(identifier:display:pronunciationHint:)()
{
  sub_10001D648();
  if (v2)
  {
    v3 = String._bridgeToObjectiveC()();
  }

  else
  {
    v3 = 0;
  }

  v4 = String._bridgeToObjectiveC()();

  if (v1)
  {
    v5 = String._bridgeToObjectiveC()();
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

id WeatherIntent.init(identifier:backingStore:)(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    v5 = String._bridgeToObjectiveC()();
  }

  else
  {
    v5 = 0;
  }

  v16 = type metadata accessor for WeatherIntent();
  v12 = sub_1000200B8(v16, "initWithIdentifier:backingStore:", v6, v7, v8, v9, v10, v11, v3);
  v14 = objc_msgSendSuper2(v12, v13);

  return v14;
}

uint64_t type metadata accessor for FeelsLikeComponent()
{
  result = qword_100CDF458;
  if (!qword_100CDF458)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata accessor for DailyForecastComponent()
{
  result = qword_100CC60F0;
  if (!qword_100CC60F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_1001B2710(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = String._bridgeToObjectiveC()();
  }

  else
  {
    v3 = 0;
  }

  v4 = String._bridgeToObjectiveC()();

  v5 = [v2 initWithIdentifier:v3 displayString:v4];

  return v5;
}

uint64_t type metadata accessor for AirQualityComponent()
{
  result = qword_100CBA880;
  if (!qword_100CBA880)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_1001B2814(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (Location.Identifier.kind.getter())
  {
    return 0;
  }

  type metadata accessor for WeatherLocation();
  Location.Identifier.name.getter();
  objc_allocWithZone(swift_getObjCClassFromMetadata());

  return sub_1001B2710(a2, a3);
}

uint64_t type metadata accessor for AveragesComponent()
{
  result = qword_100CE1C90;
  if (!qword_100CE1C90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1001B2950(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1000037E8();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_1001B29B0(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1000037E8();
  (*(v5 + 32))(a2, a1);
  return a2;
}

void sub_1001B2A10()
{
  if (!qword_100CBB7E8)
  {
    sub_10022E824(&unk_100CB2CF0);
    v0 = type metadata accessor for State();
    if (!v1)
    {
      atomic_store(v0, &qword_100CBB7E8);
    }
  }
}

uint64_t sub_1001B2A74@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for LocationComponentHeaderViewModel(0);
  v5 = sub_100003810(v4);
  __chkstk_darwin(v5);
  sub_1000037D8();
  v8 = v7 - v6;
  v9 = type metadata accessor for HourlyForecastComponentViewModel(0);
  v10 = sub_100003810(v9);
  __chkstk_darwin(v10);
  sub_1000037D8();
  v13 = v12 - v11;
  v14 = type metadata accessor for HourlyForecastComponentPreprocessedDataModel();
  v15 = sub_100003810(v14);
  __chkstk_darwin(v15);
  sub_1000037D8();
  v18 = v17 - v16;
  v19 = type metadata accessor for HourlyForecastComponent();
  sub_10011C770(a1 + *(v19 + 20), v18, type metadata accessor for HourlyForecastComponentPreprocessedDataModel);
  if (*(a1 + *(v19 + 40)) == 1)
  {
    sub_1005FA810();
  }

  else
  {
    sub_100005FC4();
    sub_10011C770(v18, v13, v20);
  }

  v21 = [objc_opt_self() mainBundle];
  v41._object = 0x8000000100AD2A80;
  v22._countAndFlagsBits = 0x4620796C72756F48;
  v22._object = 0xEF7473616365726FLL;
  v23._countAndFlagsBits = 0;
  v23._object = 0xE000000000000000;
  v41._countAndFlagsBits = 0xD000000000000041;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v22, 0, v21, v23, v41);

  v37[0] = String.init<A>(_:)();
  v37[1] = v24;
  v37[2] = 0x6B636F6C63;
  v37[3] = 0xE500000000000000;
  v38 = 1;
  v39 = 0;
  v40 = 0;
  sub_1001B2F10(a1, v18, v37, v8);
  sub_1001B3294(v37);
  sub_10011C770(v8, a2, type metadata accessor for LocationComponentHeaderViewModel);
  v25 = type metadata accessor for LocationComponentContainerViewModel();
  v26 = v25[5];
  sub_100005FC4();
  sub_10011C770(v13, a2 + v26, v27);
  type metadata accessor for LocationComponentViewModel();
  swift_storeEnumTagMultiPayload();
  v28 = a2 + v25[8];
  v29 = *(sub_10022C350(&qword_100CA6690) + 48);
  v30 = enum case for TemperatureChartKind.actual(_:);
  type metadata accessor for TemperatureChartKind();
  sub_1000037E8();
  (*(v31 + 104))(v28, v30);
  v32 = enum case for DetailCondition.conditions(_:);
  type metadata accessor for DetailCondition();
  sub_1000037E8();
  (*(v33 + 104))(v28, v32);
  *(v28 + v29) = 0;
  v34 = type metadata accessor for LocationComponentAction(0);
  swift_storeEnumTagMultiPayload();
  sub_10001B350(v28, 0, 1, v34);
  sub_10013D288();
  v35 = Dictionary.init(dictionaryLiteral:)();
  sub_10011E508(v8, type metadata accessor for LocationComponentHeaderViewModel);
  sub_10011E508(v13, type metadata accessor for HourlyForecastComponentViewModel);
  result = sub_10011E508(v18, type metadata accessor for HourlyForecastComponentPreprocessedDataModel);
  *(a2 + v25[6]) = 258;
  *(a2 + v25[7]) = v35;
  return result;
}

void sub_1001B2E64()
{
  sub_10013DB50();
  if (v0 <= 0x3F)
  {
    sub_1001B2A10();
    if (v1 <= 0x3F)
    {
      sub_100081C98();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1001B2F10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_10022C350(&qword_100CAE8E8);
  __chkstk_darwin(v8 - 8);
  v10 = &v24[-v9 - 8];
  v11 = type metadata accessor for WeatherDescription();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v24[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v15 = type metadata accessor for HourlyForecastComponent();
  if (*(a1 + *(v15 + 36)) == 1 && (*(a1 + *(v15 + 40)) & 1) == 0)
  {
    v16 = type metadata accessor for HourlyForecastComponentPreprocessedDataModel();
    sub_100035AD0(a2 + *(v16 + 20), v10, &qword_100CAE8E8);
    if (sub_100024D10(v10, 1, v11) != 1)
    {
      v19 = *(v12 + 32);
      v19(v14, v10, v11);
      v19(a4, v14, v11);
      v20 = type metadata accessor for LocationComponentHeaderViewModel.Description(0);
      v21 = a4 + *(v20 + 20);
      v22 = *(a3 + 16);
      *v21 = *a3;
      *(v21 + 16) = v22;
      *(v21 + 32) = *(a3 + 32);
      *(v21 + 48) = *(a3 + 48);
      *(a4 + *(v20 + 24)) = 1;
      goto LABEL_6;
    }

    sub_1000180EC(v10, &qword_100CAE8E8);
  }

  v17 = *(a3 + 16);
  *a4 = *a3;
  *(a4 + 16) = v17;
  *(a4 + 32) = *(a3 + 32);
  *(a4 + 48) = *(a3 + 48);
LABEL_6:
  type metadata accessor for LocationComponentHeaderViewModel(0);
  swift_storeEnumTagMultiPayload();
  return sub_1001B31A4(a3, v24);
}

unint64_t sub_1001B314C()
{
  result = qword_100CC6E68;
  if (!qword_100CC6E68)
  {
    type metadata accessor for DynamicTypeSize();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC6E68);
  }

  return result;
}

void sub_1001B31DC()
{
  type metadata accessor for LocationComponentHeaderViewModel(319);
  if (v0 <= 0x3F)
  {
    sub_1001B71C4(319, &qword_100CAFF88, &type metadata for CGFloat, &type metadata accessor for Optional);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1001B32C4(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1000037E8();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1001B331C(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1000037E8();
  (*(v3 + 8))(a1);
  return a1;
}

void sub_1001B3394()
{
  sub_1000D422C();
  sub_10013D854(319, v0, v1, &type metadata accessor for Environment);
  if (v2 <= 0x3F)
  {
    sub_1000816EC(319, &unk_100CA41F0, &type metadata for CGFloat, &type metadata accessor for Environment);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1001B3470(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_1000038D8();
  type metadata accessor for LocationComponentHeaderViewModel(v8);
  sub_100003928();
  if (*(v10 + 84) == a3)
  {
    v11 = v9;
    v12 = v4;
  }

  else
  {
    type metadata accessor for LocationComponentViewModel();
    sub_100003928();
    if (*(v14 + 84) == a3)
    {
      v11 = v13;
      v15 = a4[5];
    }

    else
    {
      if (a3 == 0x7FFFFFFF)
      {
        *(v4 + a4[7]) = (a2 - 1);
        return;
      }

      v11 = sub_10022C350(&qword_100CC0A50);
      v15 = a4[8];
    }

    v12 = v4 + v15;
  }

  sub_10001B350(v12, a2, a2, v11);
}

uint64_t sub_1001B359C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1000038D8();
  type metadata accessor for LocationComponentHeaderViewModel(v6);
  sub_100003928();
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = v3;
LABEL_11:

    return sub_100024D10(v10, a2, v9);
  }

  type metadata accessor for LocationComponentViewModel();
  sub_100003928();
  if (*(v12 + 84) == a2)
  {
    v9 = v11;
    v13 = a3[5];
LABEL_10:
    v10 = v3 + v13;
    goto LABEL_11;
  }

  if (a2 != 0x7FFFFFFF)
  {
    v9 = sub_10022C350(&qword_100CC0A50);
    v13 = a3[8];
    goto LABEL_10;
  }

  v14 = *(v3 + a3[7]);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_1001B36B0(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1000037E8();
  (*(v5 + 32))(a2, a1);
  return a2;
}

unint64_t sub_1001B3710()
{
  result = qword_100CDA258;
  if (!qword_100CDA258)
  {
    sub_10022E824(&qword_100CDA078);
    sub_100006F64(&qword_100CDA260, &qword_100CDA070);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CDA258);
  }

  return result;
}

void sub_1001B37C8()
{
  sub_1000064F8();
  if (v4)
  {
    sub_100010804();
    if (v6 != v7)
    {
      sub_100031EDC();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_10001CA94();
    }
  }

  else
  {
    v5 = v3;
  }

  sub_1000422F4(v2, v5, &qword_100CAC7F0, &unk_100A3BD10);
  sub_100011748();
  type metadata accessor for LocationComponentContainerViewModel();
  sub_100003928();
  sub_100011468();
  if (v1)
  {
    sub_10005200C(type metadata accessor for LocationComponentContainerViewModel, v8);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_100049AD4();
  }
}

uint64_t sub_1001B38A0(uint64_t a1)
{
  v19 = type metadata accessor for LocationComponentContainerViewModel();
  v2 = *(v19 - 8);
  __chkstk_darwin(v19);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(a1 + 16);
  v6 = _swiftEmptyArrayStorage;
  if (v5)
  {
    v20 = _swiftEmptyArrayStorage;
    sub_10000369C(0, v5, 0);
    v6 = v20;
    v7 = *(v2 + 80);
    v18 = a1;
    v8 = a1 + ((v7 + 32) & ~v7);
    v9 = *(v2 + 72);
    do
    {
      sub_1001B3B30(v8, v4);
      v10 = sub_1001B3DAC();
      v12 = v11;
      sub_1001B4354(v4);
      v20 = v6;
      v14 = v6[2];
      v13 = v6[3];
      if (v14 >= v13 >> 1)
      {
        sub_10000369C((v13 > 1), v14 + 1, 1);
        v6 = v20;
      }

      v6[2] = v14 + 1;
      v15 = &v6[2 * v14];
      v15[4] = v10;
      v15[5] = v12;
      v8 += v9;
      --v5;
    }

    while (v5);
    a1 = v18;
  }

  v20 = v6;
  sub_10022C350(&qword_100CCC930);
  sub_1001141C8();
  BidirectionalCollection<>.joined(separator:)();

  return a1;
}

unint64_t sub_1001B3A78()
{
  result = qword_100CDA268;
  if (!qword_100CDA268)
  {
    sub_10022E824(&qword_100CDA088);
    sub_100006F64(&qword_100CDA270, &qword_100CDA080);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CDA268);
  }

  return result;
}

uint64_t sub_1001B3B30(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LocationComponentContainerViewModel();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001B3B94()
{
  sub_1000816EC(319, &unk_100CA41F0, &type metadata for CGFloat, &type metadata accessor for Environment);
  v1 = v0;
  if (v2 <= 0x3F)
  {
    sub_1000816EC(319, &qword_100CE0E20, &type metadata for Bool, &type metadata accessor for Environment);
    v1 = v3;
    if (v4 <= 0x3F)
    {
      sub_10013D854(319, &qword_100CABE70, type metadata accessor for LocationComponentCornerRadiusConfiguration, &type metadata accessor for Environment);
      if (v6 > 0x3F)
      {
        return v5;
      }

      v5 = type metadata accessor for LocationComponentViewModel();
      if (v7 > 0x3F)
      {
        return v5;
      }

      else
      {
        sub_10013D854(319, &unk_100CC0C48, type metadata accessor for LocationComponentHeaderMetrics, &type metadata accessor for Environment);
        v1 = v8;
        if (v9 <= 0x3F)
        {
          v1 = type metadata accessor for Location.Identifier();
          if (v10 <= 0x3F)
          {
            sub_100009994();
            v1 = v11;
            if (v12 <= 0x3F)
            {
              sub_1000816EC(319, &qword_100CC0CE8, &type metadata for ForegroundEffectViewMask, &type metadata accessor for Optional);
              v1 = v13;
              if (v14 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
                return 0;
              }
            }
          }
        }
      }
    }
  }

  return v1;
}

uint64_t sub_1001B3DAC()
{
  type metadata accessor for LocationComponentViewModel();
  sub_1000037E8();
  __chkstk_darwin(v1);
  sub_1000037D8();
  v4 = v3 - v2;
  sub_1001B4294(v0, v3 - v2);
  v5 = 0x655774726F706572;
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_1001B42FC(v4, type metadata accessor for LocationComponentViewModel);
      v5 = 0x726F46796C696164;
      break;
    case 2u:
      sub_1001B42FC(v4, type metadata accessor for LocationComponentViewModel);
      v5 = 0x6B694C736C656566;
      break;
    case 3u:
      sub_1001B42FC(v4, type metadata accessor for LocationComponentViewModel);
      v5 = 0x6F46796C72756F68;
      break;
    case 4u:
      sub_1001B42FC(v4, type metadata accessor for LocationComponentViewModel);
      v5 = 0x79746964696D7568;
      break;
    case 5u:
      sub_1001B42FC(v4, type metadata accessor for LocationComponentViewModel);
      v5 = 7364973;
      break;
    case 6u:
      sub_1001B42FC(v4, type metadata accessor for LocationComponentViewModel);
      v5 = 1852796781;
      break;
    case 7u:
      sub_1001B42FC(v4, type metadata accessor for LocationComponentViewModel);
      v5 = 0x697472417377656ELL;
      break;
    case 8u:
      sub_10002C57C();
      sub_10001FAA0();
      sub_1001B42FC(v4, v8);
      v5 = 0xD000000000000015;
      break;
    case 9u:
      v5 = 0xD000000000000012;
      sub_10002C57C();
      sub_10001FAA0();
      sub_1001B42FC(v4, v9);
      break;
    case 0xAu:
      v5 = 0xD000000000000012;
      sub_10001FAA0();
      sub_1001B42FC(v4, v7);
      sub_10002C57C();
      break;
    case 0xBu:
      sub_1001B42FC(v4, type metadata accessor for LocationComponentViewModel);
      v5 = 0x6572757373657270;
      break;
    case 0xCu:
      return v5;
    case 0xDu:
      sub_1001B42FC(v4, type metadata accessor for LocationComponentViewModel);
      v5 = 0x6C41657265766573;
      break;
    case 0xEu:
      sub_1001B42FC(v4, type metadata accessor for LocationComponentViewModel);
      v5 = 0x53657369726E7573;
      break;
    case 0xFu:
      sub_1001B42FC(v4, type metadata accessor for LocationComponentViewModel);
      v5 = 0x7365676172657661;
      break;
    case 0x10u:
      sub_1001B42FC(v4, type metadata accessor for LocationComponentViewModel);
      v5 = 0x7865646E497675;
      break;
    case 0x11u:
      sub_1001B42FC(v4, type metadata accessor for LocationComponentViewModel);
      v6 = 0x696269736976;
      goto LABEL_14;
    case 0x12u:
      sub_1001B42FC(v4, type metadata accessor for LocationComponentViewModel);
      v5 = 1684957559;
      break;
    case 0x13u:
      sub_10002C57C();
      v5 = 0xD00000000000001BLL;
      break;
    default:
      sub_1001B42FC(v4, type metadata accessor for LocationComponentViewModel);
      v6 = 0x617551726961;
LABEL_14:
      v5 = v6 & 0xFFFFFFFFFFFFLL | 0x696C000000000000;
      break;
  }

  return v5;
}

uint64_t sub_1001B4294(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LocationComponentViewModel();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001B42FC(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1000037E8();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1001B4354(uint64_t a1)
{
  v2 = type metadata accessor for LocationComponentContainerViewModel();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1001B43D0()
{
  type metadata accessor for LocationComponentBackgroundConfiguration.HeaderConfiguration(319);
  if (v0 <= 0x3F)
  {
    sub_1001B7214();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1001B4454()
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

  sub_100074DD8();
  if (v3)
  {
    sub_10022C350(&qword_100CAC7E8);
    v7 = sub_1000C8F04();
    sub_10000ECE0(v7);
    sub_100020308(v8 / 24);
  }

  sub_1000B99E0();
  if (v1)
  {
    sub_100192240();
    if (v12)
    {
      v13 = v11 > v9;
    }

    else
    {
      v13 = 0;
    }

    if (!v13)
    {
      memmove(v9, v10, 24 * v2);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

uint64_t sub_1001B452C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  type metadata accessor for LocationComponentViewModel();
  sub_1000037E8();
  __chkstk_darwin(v4);
  sub_1000037D8();
  v7 = v6 - v5;
  type metadata accessor for LocationComponentHeaderViewModel(0);
  sub_1000037E8();
  __chkstk_darwin(v8);
  sub_1000037D8();
  v11 = v10 - v9;
  v12 = sub_10022C350(&qword_100CA53F8);
  __chkstk_darwin(v12 - 8);
  v14 = &v35 - v13;
  v15 = type metadata accessor for DailyForecastComponentViewModel(0);
  __chkstk_darwin(v15 - 8);
  sub_1000037D8();
  v18 = (v17 - v16);
  v19 = *(a1 + *(type metadata accessor for DailyForecastComponent() + 20));

  CurrentWeather.temperature.getter();
  sub_1001B4A6C(v19, v14, v18);
  *v11 = sub_1003F0C44(v19);
  *(v11 + 8) = v20;
  *(v11 + 16) = 0x7261646E656C6163;
  *(v11 + 24) = 0xE800000000000000;
  *(v11 + 32) = 0;
  *(v11 + 40) = 0;
  *(v11 + 48) = 0;
  swift_storeEnumTagMultiPayload();
  sub_1003F0E2C(v18, v7);
  swift_storeEnumTagMultiPayload();
  sub_10022C350(&qword_100CA4060);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100A2D320;
  LOBYTE(v14) = static Edge.Set.leading.getter();
  *(inited + 32) = v14;
  v22 = static Edge.Set.trailing.getter();
  *(inited + 33) = v22;
  v23 = Edge.Set.init(rawValue:)();
  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v14)
  {
    v23 = Edge.Set.init(rawValue:)();
  }

  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v22)
  {
    v23 = Edge.Set.init(rawValue:)();
  }

  v24 = type metadata accessor for LocationComponentContainerViewModel();
  v25 = a2 + v24[8];
  v26 = *(sub_10022C350(&qword_100CA6690) + 48);
  v27 = enum case for TemperatureChartKind.actual(_:);
  type metadata accessor for TemperatureChartKind();
  sub_1000037E8();
  (*(v28 + 104))(v25, v27);
  v29 = enum case for DetailCondition.conditions(_:);
  type metadata accessor for DetailCondition();
  sub_1000037E8();
  (*(v30 + 104))(v25, v29);
  *(v25 + v26) = 1;
  v31 = type metadata accessor for LocationComponentAction(0);
  swift_storeEnumTagMultiPayload();
  sub_10001B350(v25, 0, 1, v31);
  sub_10013D288();
  v32 = Dictionary.init(dictionaryLiteral:)();
  sub_1003F0E90(v18);
  sub_10011429C(v11, a2, type metadata accessor for LocationComponentHeaderViewModel);
  result = sub_10011429C(v7, a2 + v24[5], type metadata accessor for LocationComponentViewModel);
  v34 = (a2 + v24[6]);
  *v34 = v23;
  v34[1] = 0;
  *(a2 + v24[7]) = v32;
  return result;
}

void sub_1001B4914()
{
  sub_10009C110(319, &qword_100CE0E20, &type metadata for Bool, &type metadata accessor for Environment);
  if (v0 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v1 <= 0x3F)
    {
      sub_10013DB50();
      if (v2 <= 0x3F)
      {
        sub_10009C110(319, &qword_100CA3C90, &type metadata for Text, &type metadata accessor for Optional);
        if (v3 <= 0x3F)
        {
          sub_10009C110(319, &qword_100CA6D40, &type metadata for Bool, &type metadata accessor for State);
          if (v4 <= 0x3F)
          {
            sub_1001B2A10();
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1001B4A6C@<X0>(char *a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v166 = a2;
  v147 = type metadata accessor for WeatherFormatPlaceholder();
  sub_1000037C4();
  v160 = v5;
  __chkstk_darwin(v6);
  sub_1000037D8();
  v146 = v8 - v7;
  v145 = type metadata accessor for NSUnitTemperature.BaseWeatherFormatStyle();
  sub_1000037C4();
  v159 = v9;
  __chkstk_darwin(v10);
  sub_100003848();
  v144 = v11;
  sub_10000386C();
  __chkstk_darwin(v12);
  v143 = &v143 - v13;
  v14 = type metadata accessor for DailyForecastComponentViewModel.DayForecastViewModel(0);
  sub_1000037C4();
  __chkstk_darwin(v15);
  sub_100003848();
  v149 = v16;
  sub_10000386C();
  __chkstk_darwin(v17);
  sub_100003878();
  v157 = v18;
  sub_10000386C();
  __chkstk_darwin(v19);
  sub_100003878();
  v148 = v20;
  sub_10000386C();
  __chkstk_darwin(v21);
  sub_100003878();
  v153 = v22;
  sub_10000386C();
  __chkstk_darwin(v23);
  sub_100003878();
  v163 = v24;
  sub_10000386C();
  __chkstk_darwin(v25);
  sub_100003878();
  v150 = v26;
  sub_10000386C();
  __chkstk_darwin(v27);
  v29 = &v143 - v28;
  __chkstk_darwin(v30);
  sub_100003878();
  v169 = v31;
  sub_10000386C();
  __chkstk_darwin(v32);
  sub_100003878();
  v152 = v33;
  sub_10000386C();
  __chkstk_darwin(v34);
  v36 = &v143 - v35;
  __chkstk_darwin(v37);
  v39 = &v143 - v38;
  __chkstk_darwin(v40);
  v155 = &v143 - v41;
  v42 = sub_10022C350(&qword_100CA53F8);
  v168 = v42;
  v43 = *(v42 - 8);
  __chkstk_darwin(v42);
  sub_100003848();
  v151 = v44;
  sub_10000386C();
  __chkstk_darwin(v45);
  sub_100003878();
  v156 = v46;
  sub_10000386C();
  __chkstk_darwin(v47);
  sub_100003878();
  v154 = v48;
  sub_10000386C();
  __chkstk_darwin(v49);
  v158 = &v143 - v50;
  *a3 = a1;
  v167 = type metadata accessor for DailyForecastComponentViewModel(0);
  v51 = v167[5];
  v164 = v43;
  v52 = *(v43 + 16);
  v52(&a3[v51], v166, v42);
  v53 = *(a1 + 2);
  v165 = a3;
  v54 = a1;
  v161 = v52;
  v162 = (v43 + 16);
  if (v53)
  {
    sub_1000215EC();
    v56 = &a1[v55];
    sub_10001CA7C();
    sub_1001B5674(v56, v39, v57);

    for (i = 1; ; ++i)
    {
      if (v53 == i)
      {
        v64 = v39;
        v65 = v155;
        sub_1001B58A8(v64, v155);
        v66 = v154;
        v67 = v168;
        v161(v154, v65 + v14[9], v168);
        sub_10001F510();
        sub_1001B5780(v65, v68);
        v69 = v158;
        v70 = v67;
        v71 = *(v164 + 32);
        v71(v158, v66, v70);
        goto LABEL_11;
      }

      if (i >= *(a1 + 2))
      {
        break;
      }

      sub_10001CA7C();
      sub_1001B5674(v60, v36, v61);
      sub_10000F868();
      if (static Measurement.< infix<A, B>(_:_:)())
      {
        sub_10001F510();
        sub_1001B5780(v39, v62);
        result = sub_1001B58A8(v36, v39);
      }

      else
      {
        sub_10001F510();
        result = sub_1001B5780(v36, v63);
      }

      a1 = v54;
    }

    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  v69 = v158;
  v52(v158, v166, v168);
  v71 = *(v164 + 32);

LABEL_11:
  v72 = v165;
  result = (v71)(v165 + v167[6], v69, v168);
  v73 = v163;
  if (v53)
  {
    if (!*(a1 + 2))
    {
LABEL_46:
      __break(1u);
      goto LABEL_47;
    }

    sub_1000215EC();
    v75 = &a1[v74];
    sub_10001CA7C();
    result = sub_1001B5674(v75, v169, v76);
    for (j = 1; v53 != j; ++j)
    {
      if (j >= *(a1 + 2))
      {
        goto LABEL_43;
      }

      sub_10001CA7C();
      sub_1001B5674(v78, v29, v79);
      sub_10000F868();
      v80 = v169;
      if (static Measurement.< infix<A, B>(_:_:)())
      {
        sub_10001F510();
        sub_1001B5780(v80, v81);
        result = sub_1001B58A8(v29, v80);
      }

      else
      {
        sub_10001F510();
        result = sub_1001B5780(v29, v82);
      }

      a1 = v54;
    }

    v83 = v152;
    sub_1001B58A8(v169, v152);
    v84 = v151;
    v85 = v168;
    v161(v151, v83 + v14[8], v168);
    sub_10001F510();
    sub_1001B5780(v83, v86);
    v87 = v156;
    v71(v156, v84, v85);
    v88 = v165;
    v73 = v163;
  }

  else
  {
    v87 = v156;
    v169 = v71;
    v89 = v168;
    v161(v156, v166, v168);
    v88 = v72;
    v85 = v89;
    v71 = v169;
  }

  result = (v71)(v88 + v167[7], v87, v85);
  v90 = v157;
  if (!v53)
  {
    v123 = v143;
    static WeatherFormatStyle<>.weather.getter();
    v124 = v144;
    NSUnitTemperature.BaseWeatherFormatStyle.secondary.getter();
    v125 = *(v159 + 8);
    v158 = a1;
    v159 += 8;
    v169 = v125;
    v126 = v145;
    (v125)(v123, v145);
    LODWORD(v163) = enum case for WeatherFormatPlaceholder.none(_:);
    v127 = *(v160 + 104);
    v161 = (v160 + 104);
    v162 = v127;
    v128 = v146;
    v129 = v147;
    v127(v146);
    v157 = type metadata accessor for UnitManager();
    static UnitManager.standard.getter();
    v122 = v88;
    v155 = sub_1001D1A40(&qword_100CA5410, &type metadata accessor for NSUnitTemperature.BaseWeatherFormatStyle);
    v130 = v124;
    v131 = Measurement.formatted<A>(_:placeholder:unitManager:)();
    v133 = v132;

    v134 = *(v160 + 8);
    v160 += 8;
    v156 = v134;
    v134(v128, v129);
    v135 = v169;
    (v169)(v130, v126);
    v136 = (v122 + v167[8]);
    *v136 = v131;
    v136[1] = v133;

    static WeatherFormatStyle<>.weather.getter();
    v137 = v130;
    NSUnitTemperature.BaseWeatherFormatStyle.secondary.getter();
    v135(v123, v126);
    v138 = v129;
    v162(v128, v163, v129);
    static UnitManager.standard.getter();
    v139 = v168;
    v140 = v166;
    v119 = Measurement.formatted<A>(_:placeholder:unitManager:)();
    v120 = v141;

    (*(v164 + 8))(v140, v139);
    v156(v128, v138);
    result = (v169)(v137, v126);
    goto LABEL_41;
  }

  if (*(a1 + 2))
  {
    sub_1000215EC();
    v92 = &a1[v91];
    sub_10001CA7C();
    result = sub_1001B5674(v92, v73, v93);
    v94 = 1;
    v95 = v153;
    while (v53 != v94)
    {
      if (v94 >= *(a1 + 2))
      {
        goto LABEL_44;
      }

      sub_10001CA7C();
      sub_1001B5674(v96, v95, v97);
      v98 = v73;
      v99 = String.count.getter();
      if (v99 >= String.count.getter())
      {
        sub_10001F510();
        result = sub_1001B5780(v95, v101);
      }

      else
      {
        sub_10001F510();
        sub_1001B5780(v98, v100);
        result = sub_1001B58A8(v95, v98);
      }

      v73 = v98;
      ++v94;
    }

    v102 = v150;
    sub_1001B58A8(v73, v150);
    v103 = (v102 + v14[18]);
    v105 = *v103;
    v104 = v103[1];

    sub_10001F510();
    result = sub_1001B5780(v102, v106);
    v107 = (v165 + v167[8]);
    *v107 = v105;
    v107[1] = v104;
    if (!*(a1 + 2))
    {
      goto LABEL_48;
    }

    result = sub_1001B5674(v92, v90, type metadata accessor for DailyForecastComponentViewModel.DayForecastViewModel);
    v108 = 1;
    v109 = v164;
    v110 = v149;
    while (v53 != v108)
    {
      if (v108 >= *(a1 + 2))
      {
        goto LABEL_45;
      }

      sub_10001CA7C();
      sub_1001B5674(v111, v110, v112);
      sub_100031ED0(v14[17]);
      v113 = v90;
      v114 = String.count.getter();
      if (v114 >= String.count.getter())
      {
        sub_10001F510();
        result = sub_1001B5780(v110, v116);
      }

      else
      {
        sub_10001F510();
        sub_1001B5780(v113, v115);
        result = sub_1001B58A8(v110, v113);
      }

      v90 = v113;
      ++v108;
    }

    v117 = v148;
    sub_1001B58A8(v90, v148);
    v118 = (v117 + v14[17]);
    v119 = *v118;
    v120 = v118[1];

    sub_10001F510();
    sub_1001B5780(v117, v121);
    result = (*(v109 + 8))(v166, v168);
    v122 = v165;
LABEL_41:
    v142 = (v122 + v167[9]);
    *v142 = v119;
    v142[1] = v120;
    return result;
  }

LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
  return result;
}

uint64_t sub_1001B5618(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1000037E8();
  v4 = sub_100003940();
  v5(v4);
  return a2;
}

uint64_t sub_1001B5674(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1000037E8();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1001B56D4(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_100003D98();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1001B5728(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1000037E8();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1001B5780(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1000037E8();
  (*(v3 + 8))(a1);
  return a1;
}

void sub_1001B57D8()
{
  sub_1001B5844();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_1001B5844()
{
  if (!qword_100CC6E60)
  {
    type metadata accessor for DynamicTypeSize();
    sub_1001B314C();
    v0 = type metadata accessor for ClosedRange();
    if (!v1)
    {
      atomic_store(v0, &qword_100CC6E60);
    }
  }
}

uint64_t sub_1001B58A8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DailyForecastComponentViewModel.DayForecastViewModel(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001B590C()
{
  result = type metadata accessor for RoundedCornerStyle();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1001B59A8()
{
  sub_1000816EC(319, &qword_100CE0E20, &type metadata for Bool, &type metadata accessor for Environment);
  if (v0 <= 0x3F)
  {
    type metadata accessor for LocationComponentContainerViewModel();
    if (v1 <= 0x3F)
    {
      sub_100081B54(319, &qword_100CADCE0);
      if (v2 <= 0x3F)
      {
        sub_10013DB50();
        if (v3 <= 0x3F)
        {
          sub_1001B5AF0();
          if (v4 <= 0x3F)
          {
            sub_1000827BC(319, &unk_100CC0E40, &qword_100CC07D8, &unk_100A84020, &type metadata accessor for Binding);
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_1001B5AF0()
{
  if (!qword_100CC0E38)
  {
    type metadata accessor for PagingContentOffsetsStorage();
    sub_100061A3C(&qword_100CC0808, type metadata accessor for PagingContentOffsetsStorage);
    v0 = type metadata accessor for ObservedObject();
    if (!v1)
    {
      atomic_store(v0, &qword_100CC0E38);
    }
  }
}

void sub_1001B5BA4()
{
  v1 = sub_10022C350(&qword_100CA3D60);
  __chkstk_darwin(v1 - 8);
  v3 = v32 - v2;
  v4 = sub_10022C350(&qword_100CA3D68);
  __chkstk_darwin(v4 - 8);
  v6 = v32 - v5;
  v7 = type metadata accessor for Text.Measurements.Context();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for LocationComponentHeaderViewModel(0);
  __chkstk_darwin(v11);
  v13 = v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = v32 - v15;
  sub_100357470();
  v17 = v36;
  if (v36)
  {
    *v16 = v35;
    *(v16 + 1) = v17;
    v18 = v38;
    *(v16 + 1) = v37;
    *(v16 + 2) = v18;
    *(v16 + 6) = v39;
    swift_storeEnumTagMultiPayload();
    v19 = type metadata accessor for LocationComponentHeaderMetricsComputer(0);
    v34 = v7;
    v20 = v19;
    v33 = sub_1009CC7F8(v16, *(v0 + *(v19 + 52)));
    v21 = v8;
    v23 = v22;
    v24 = v3;
    v26 = v25;
    v32[1] = v27;
    sub_1001995A8(v16, type metadata accessor for LocationComponentHeaderViewModel);
    memcpy(__dst, (v0 + *(v20 + 28)), sizeof(__dst));
    sub_1000EF898();
    v28 = type metadata accessor for Text.WritingMode();
    sub_10001B350(v6, 1, 1, v28);
    v29 = type metadata accessor for Text.Suffix();
    sub_10001B350(v24, 1, 1, v29);
    Text.Measurements.Context.init(writingMode:textSuffix:)();
    v30 = v33;
    Text.Measurements.size(of:in:context:)();
    sub_10010CD64(v30, v23, v26 & 1);

    (*(v21 + 8))(v10, v34);
  }

  else
  {
    sub_10019937C(v0, v13, type metadata accessor for LocationComponentHeaderViewModel);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    sub_1001995A8(v13, type metadata accessor for LocationComponentHeaderViewModel);
    if (!EnumCaseMultiPayload)
    {
      sub_1001884C0();
    }
  }
}

unint64_t sub_1001B5F44()
{
  result = qword_100CDA248;
  if (!qword_100CDA248)
  {
    sub_10022E824(&qword_100CDA068);
    sub_100006F64(&qword_100CDA250, &qword_100CDA060);
    sub_100006F64(&qword_100CC2270, &qword_100CC2278);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CDA248);
  }

  return result;
}

uint64_t sub_1001B6028()
{
  v0 = [objc_opt_self() currentDevice];
  v1 = [v0 userInterfaceIdiom];

  if (v1 != 1 || (sub_10035769C() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for LocationComponentHeaderMetricsComputer(0);
  return sub_1004E0DA0() & 1;
}

int *sub_1001B60B4@<X0>(uint64_t a1@<X8>)
{
  v105 = a1;
  v2 = sub_10022C350(&qword_100CA3D60);
  __chkstk_darwin(v2 - 8);
  v102 = &v89 - v3;
  v4 = sub_10022C350(&qword_100CA3D68);
  __chkstk_darwin(v4 - 8);
  v99 = &v89 - v5;
  v6 = type metadata accessor for Text.Measurements.Context();
  v103 = *(v6 - 8);
  v104 = v6;
  __chkstk_darwin(v6);
  v100 = &v89 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = type metadata accessor for DynamicTypeSize();
  v114 = *(v101 - 8);
  __chkstk_darwin(v101);
  v112 = &v89 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = type metadata accessor for ContentSizeCategory();
  v111 = *(v113 - 8);
  __chkstk_darwin(v113);
  v121 = &v89 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for LayoutDirection();
  v109 = *(v10 - 8);
  v110 = v10;
  __chkstk_darwin(v10);
  v119 = &v89 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v120 = type metadata accessor for Text.Measurements();
  v108 = *(v120 - 8);
  __chkstk_darwin(v120);
  v122 = &v89 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for LocationComponentHeaderMetricsComputer(0);
  __chkstk_darwin(v13);
  v15 = &v89 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for EnvironmentValues();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v89 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = type metadata accessor for LocationComponentHeaderViewModel(0);
  __chkstk_darwin(v97);
  v96 = &v89 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v98 = &v89 - v22;
  __chkstk_darwin(v23);
  v118 = &v89 - v24;
  __chkstk_darwin(v25);
  v107 = &v89 - v26;
  v27 = type metadata accessor for ComputeAppropriateLocationComponentHeaderViewModelModifier(0);
  v28 = v27[8];
  memcpy(__dst, (v1 + v28), 0x49uLL);
  v115 = v16;
  v117 = v17;
  v95 = v1;
  if (__dst[9])
  {
    memcpy(v127, (v1 + v28), 0x48uLL);
    v29 = v1;
  }

  else
  {

    static os_log_type_t.fault.getter();
    v30 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_100427960(__dst);
    (*(v17 + 8))(v19, v115);
    v29 = v95;
  }

  v31 = v107;
  sub_1009A2768(v127[48], v107);
  sub_10019937C(v31, v118, type metadata accessor for LocationComponentHeaderViewModel);
  v32 = v29 + v27[5];
  v93 = *(v108 + 16);
  v94 = v108 + 16;
  v93(v122, v32, v120);
  v33 = (v29 + v27[11]);
  v34 = *v33;
  v92 = *(v33 + 8);
  v116 = v34;
  if (v92 == 1)
  {
    v35 = v34;
    v36 = v115;
  }

  else
  {

    static os_log_type_t.fault.getter();
    v37 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000E4DF8(v34, 0);
    v36 = v115;
    (*(v117 + 8))(v19, v115);
    v35 = v127[0];
  }

  if (v35)
  {
    v38 = 12.0;
  }

  else
  {
    v38 = 16.0;
  }

  memcpy(v127, (v29 + v28), 0x49uLL);
  if (v127[72])
  {
    memcpy(v126, (v29 + v28), sizeof(v126));
  }

  else
  {

    static os_log_type_t.fault.getter();
    v39 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    v36 = v115;
    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_100427960(v127);
    (*(v117 + 8))(v19, v36);
  }

  memcpy(v125, v126, sizeof(v125));
  sub_1001681D4();
  sub_10009ECC8();
  v40 = (v29 + v27[7]);
  v41 = *v40;
  if (*(v40 + 8) == 1)
  {
    v106 = *v40;
  }

  else
  {

    static os_log_type_t.fault.getter();
    v42 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000E4DF8(v41, 0);
    (*(v117 + 8))(v19, v36);
    v106 = v123;
  }

  v43 = (v29 + v27[10]);
  v44 = *v43;
  if (*(v43 + 8) != 1)
  {

    static os_log_type_t.fault.getter();
    v45 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000E4DF8(v44, 0);
    (*(v117 + 8))(v19, v36);
    v44 = v123;
  }

  v89 = sub_100426BFC();
  v90 = v46;
  v91 = v44;
  if (v92)
  {
    v47 = v116;
  }

  else
  {
    v48 = v36;
    v49 = v116;

    static os_log_type_t.fault.getter();
    v50 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000E4DF8(v49, 0);
    (*(v117 + 8))(v19, v48);
    v47 = v123;
  }

  v116 = v47;
  v51 = v29 + v27[13];
  v52 = *v51;
  v53 = *(v51 + 8);
  if (*(v51 + 9) != 1)
  {

    static os_log_type_t.fault.getter();
    v54 = static Log.runtimeIssuesLog.getter();
    v55 = v117;
    v56 = v54;
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_100109A3C(v52, v53, 0);
    (*(v55 + 8))(v19, v115);
    v52 = v123;
    LOBYTE(v53) = v124;
  }

  v57 = v91;
  v58 = v112;
  sub_10011A1CC();
  v117 = v13[16];
  *&v15[v117] = 0;
  sub_10019937C(v118, v15, type metadata accessor for LocationComponentHeaderViewModel);
  v93(&v15[v13[5]], v122, v120);
  *&v15[v13[6]] = v38;
  memcpy(&v15[v13[7]], v125, 0x48uLL);
  (*(v109 + 16))(&v15[v13[8]], v119, v110);
  (*(v111 + 16))(&v15[v13[9]], v121, v113);
  v15[v13[10]] = v106 & 1;
  v15[v13[11]] = v57 & 1;
  v59 = &v15[v13[12]];
  v60 = v13;
  v61 = v89;
  *v59 = v89;
  v62 = v90;
  v59[8] = v90 & 1;
  v63 = v116 & 1;
  v15[v60[13]] = v116 & 1;
  v64 = &v15[v60[14]];
  *v64 = v52;
  v64[8] = v53 & 1;
  v65 = v101;
  (*(v114 + 16))(&v15[v60[15]], v58, v101);
  if (((v61 == 1) & ~v62) == 0 && (v53 & 1) == 0)
  {
    sub_100426D68(v15, v122);
  }

  v66 = sub_1009CC7F8(v15, v63);
  v68 = v67;
  v70 = v69;
  v71 = type metadata accessor for Text.WritingMode();
  sub_10001B350(v99, 1, 1, v71);
  v72 = type metadata accessor for Text.Suffix();
  sub_10001B350(v102, 1, 1, v72);
  v73 = v100;
  Text.Measurements.Context.init(writingMode:textSuffix:)();
  v74 = v122;
  Text.Measurements.size(of:in:context:)();
  v76 = v75;
  sub_10010CD64(v66, v68, v70 & 1);

  (*(v103 + 8))(v73, v104);
  (*(v114 + 8))(v112, v65);
  (*(v111 + 8))(v121, v113);
  (*(v109 + 8))(v119, v110);
  (*(v108 + 8))(v74, v120);
  sub_1001995A8(v118, type metadata accessor for LocationComponentHeaderViewModel);
  *&v15[v117] = v76;
  v77 = v98;
  sub_10019937C(v15, v98, type metadata accessor for LocationComponentHeaderViewModel);
  v78 = sub_1004273A4();
  v79 = v96;
  sub_10019937C(v15, v96, type metadata accessor for LocationComponentHeaderViewModel);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  sub_1001995A8(v79, type metadata accessor for LocationComponentHeaderViewModel);
  v81 = 0;
  v82 = v106;
  if (v106)
  {
    sub_1001B5BA4();
    v81 = v83;
  }

  if (EnumCaseMultiPayload == 2)
  {
    v84 = -1.0;
  }

  else
  {
    v84 = 11.0;
  }

  v85 = sub_1001B6028();
  sub_1001995A8(v15, type metadata accessor for LocationComponentHeaderMetricsComputer);
  sub_1001995A8(v107, type metadata accessor for LocationComponentHeaderViewModel);
  v86 = v105;
  sub_1001B7010(v77, v105, type metadata accessor for LocationComponentHeaderViewModel);
  result = type metadata accessor for LocationComponentHeaderMetrics(0);
  *(v86 + result[5]) = v78;
  *(v86 + result[6]) = v84;
  v88 = v86 + result[7];
  *v88 = v81;
  *(v88 + 8) = (v82 & 1) == 0;
  *(v86 + result[8]) = v85 & 1;
  return result;
}

uint64_t sub_1001B6FB0(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1000037E8();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_1001B7010(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1000037E8();
  (*(v5 + 32))(a2, a1);
  return a2;
}

void sub_1001B70A4()
{
  type metadata accessor for LocationComponentContainerViewModel();
  if (v0 <= 0x3F)
  {
    sub_1000816EC(319, &qword_100CA3C90, &type metadata for Text, &type metadata accessor for Optional);
    if (v1 <= 0x3F)
    {
      sub_10013D854(319, &unk_100CC0C48, type metadata accessor for LocationComponentHeaderMetrics, &type metadata accessor for Environment);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1001B71C4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1001B7214()
{
  if (!qword_100CC0CE8)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_100CC0CE8);
    }
  }
}

uint64_t sub_1001B72D4()
{
  v0 = type metadata accessor for LocationComponentContainerViewModel();
  if (v1 <= 0x3F)
  {
    v0 = type metadata accessor for Text.Measurements();
    if (v2 <= 0x3F)
    {
      sub_100007A9C(319, &qword_100CA3C70, &type metadata accessor for ContentSizeCategory);
      v0 = v3;
      if (v4 <= 0x3F)
      {
        sub_1001B71C4(319, &qword_100CE0E20, &type metadata for Bool, &type metadata accessor for Environment);
        v0 = v5;
        if (v6 <= 0x3F)
        {
          sub_1001B71C4(319, &qword_100CB7100, &unk_100C730C0, &type metadata accessor for Environment);
          if (v8 > 0x3F)
          {
            return v7;
          }

          sub_100009940(319, &qword_100CB8750, &qword_100CA6060);
          if (v9 > 0x3F)
          {
            return v7;
          }

          else
          {
            sub_100007A9C(319, &qword_100CA3C68, &type metadata accessor for LayoutDirection);
            v0 = v10;
            if (v11 <= 0x3F)
            {
              sub_100009940(319, &qword_100CB8758, &qword_100CA6188);
              v0 = v12;
              if (v13 <= 0x3F)
              {
                sub_100007A9C(319, &qword_100CB64B8, &type metadata accessor for DynamicTypeSize);
                v0 = v14;
                if (v15 <= 0x3F)
                {
                  swift_cvw_initStructMetadataWithLayoutString();
                  return 0;
                }
              }
            }
          }
        }
      }
    }
  }

  return v0;
}

uint64_t sub_1001B7520@<X0>(void (*a1)(void, void)@<X0>, uint64_t a2@<X8>)
{
  v83 = a1;
  v91 = a2;
  v94 = *(a1 + 3);
  type metadata accessor for Button();
  sub_100006C58();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for ModifiedContent();
  v2 = type metadata accessor for ModifiedContent();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v129 = sub_1001B8300();
  WitnessTable = swift_getWitnessTable();
  v127 = sub_100965958();
  v3 = swift_getWitnessTable();
  v97 = sub_1001B8354();
  swift_getOpaqueTypeMetadata2();
  v92 = sub_1001B83A8();
  swift_getOpaqueTypeMetadata2();
  v4 = type metadata accessor for PlainButtonStyle();
  sub_100009354();
  v89 = v2;
  v90 = v3;
  v7 = v4;
  v124 = v3;
  v125 = sub_1001B83FC(v5, v6);
  v95 = v125;
  sub_1000235D8();
  swift_getOpaqueTypeMetadata2();
  v8 = type metadata accessor for _ConditionalContent();
  sub_10003C724();
  v9 = type metadata accessor for _ConditionalContent();
  sub_1000037C4();
  v78 = v10;
  __chkstk_darwin(v11);
  sub_100003C38();
  v77 = v12 - v13;
  sub_10000386C();
  __chkstk_darwin(v14);
  sub_10000E70C();
  v81 = v15;
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  v120 = v94;
  v121 = v129;
  v16 = v9;
  v118 = swift_getWitnessTable();
  v119 = v127;
  swift_getWitnessTable();
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v93 = swift_getOpaqueTypeConformance2();
  v94 = OpaqueTypeMetadata2;
  v122 = OpaqueTypeMetadata2;
  v123 = v93;
  swift_getOpaqueTypeMetadata2();
  v18 = type metadata accessor for ModifiedContent();
  sub_1000037C4();
  v76 = v19;
  __chkstk_darwin(v20);
  sub_100003C38();
  v75 = v21 - v22;
  sub_10000386C();
  __chkstk_darwin(v23);
  sub_10000E70C();
  v80 = v24;
  v25 = type metadata accessor for EnvironmentValues();
  sub_1000037C4();
  v27 = v26;
  __chkstk_darwin(v28);
  v30 = &v75 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10003C724();
  type metadata accessor for _ConditionalContent();
  sub_1000037C4();
  v86 = v32;
  v87 = v31;
  __chkstk_darwin(v31);
  v84 = v18;
  v85 = &v75 - v33;
  v34 = *v82;
  LODWORD(v33) = *(v82 + 8);
  v96 = v7;
  v88 = v16;
  v79 = v8;
  if (v33 != 1)
  {

    static os_log_type_t.fault.getter();
    v52 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000E4DF8(v34, 0);
    (*(v27 + 8))(v30, v25);
    if (v122 != 1)
    {
      goto LABEL_3;
    }

LABEL_5:
    v53 = v75;
    sub_100964B3C(v83, v75);
    v54 = sub_100004F68();
    v55 = sub_1009659AC();
    v102 = v54;
    v103 = v55;
    sub_100007E30();
    v56 = v84;
    v57 = swift_getWitnessTable();
    v58 = v80;
    sub_1000833D8(v53, v56, v57);
    v83 = *(v76 + 8);
    v83(v53, v56);
    sub_1000833D8(v58, v56, v57);
    v36 = v89;
    v37 = v90;
    v122 = v89;
    v123 = &type metadata for DefaultBackgroundButtonStyle;
    sub_100011094();
    v82 = swift_getOpaqueTypeConformance2();
    v122 = v36;
    v123 = &type metadata for FixedBackgroundButtonStyle;
    v59 = sub_100037EA4();
    v122 = v36;
    v123 = v96;
    v124 = v37;
    v125 = v95;
    v60 = sub_10001FDD0();
    v100 = v59;
    v101 = v60;
    sub_100075380();
    v61 = swift_getWitnessTable();
    v98 = v82;
    v99 = v61;
    v62 = v56;
    swift_getWitnessTable();
    v51 = v85;
    sub_1003E8038();
    v63 = v83;
    v83(v53, v62);
    v63(v80, v62);
    goto LABEL_6;
  }

  if (v34)
  {
    goto LABEL_5;
  }

LABEL_3:
  v35 = v77;
  sub_1001B8444(v83, v77);
  v36 = v89;
  v37 = v90;
  v122 = v89;
  v123 = &type metadata for DefaultBackgroundButtonStyle;
  sub_100011094();
  v38 = swift_getOpaqueTypeConformance2();
  v122 = v36;
  v123 = &type metadata for FixedBackgroundButtonStyle;
  v39 = sub_10002CBE8(v92);
  v122 = v36;
  v123 = v96;
  v124 = v37;
  v125 = v95;
  v40 = sub_10001FDD0();
  v116 = v39;
  v117 = v40;
  sub_100049F70();
  v41 = swift_getWitnessTable();
  v114 = v38;
  v115 = v41;
  v42 = v88;
  v43 = swift_getWitnessTable();
  v44 = v81;
  v45 = v35;
  sub_1000833D8(v35, v42, v43);
  v46 = *(v78 + 8);
  v46(v35, v42);
  sub_1000833D8(v44, v42, v43);
  v47 = sub_100004F68();
  v48 = sub_1009659AC();
  v112 = v47;
  v113 = v48;
  sub_100007E30();
  swift_getWitnessTable();
  v49 = v85;
  sub_10012D09C();
  v50 = v45;
  v51 = v49;
  v46(v50, v42);
  v46(v81, v42);
LABEL_6:
  v64 = sub_100004F68();
  v65 = sub_1009659AC();
  v110 = v64;
  v111 = v65;
  sub_100007E30();
  v66 = swift_getWitnessTable();
  v122 = v36;
  v123 = &type metadata for DefaultBackgroundButtonStyle;
  sub_100011094();
  v67 = swift_getOpaqueTypeConformance2();
  v122 = v36;
  v123 = &type metadata for FixedBackgroundButtonStyle;
  v68 = sub_100037EA4();
  v122 = v36;
  v123 = v96;
  v124 = v37;
  v125 = v95;
  v69 = sub_10001FDD0();
  v108 = v68;
  v109 = v69;
  sub_100075380();
  v70 = swift_getWitnessTable();
  v106 = v67;
  v107 = v70;
  v71 = swift_getWitnessTable();
  v104 = v66;
  v105 = v71;
  v72 = v87;
  v73 = swift_getWitnessTable();
  sub_1000833D8(v51, v72, v73);
  return (*(v86 + 8))(v51, v72);
}

id sub_1001B7E58(void *a1, void *a2)
{
  v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithIntent:a1 response:a2];

  return v4;
}

uint64_t sub_1001B7EB8(uint64_t a1)
{
  v2 = sub_10022C350(&qword_100CC0A08);
  __chkstk_darwin(v2);
  v4 = &v24 - v3;
  v28 = sub_10022C350(&qword_100CC0A10);
  __chkstk_darwin(v28);
  v6 = &v24 - v5;
  v7 = sub_10022C350(&qword_100CC0A18);
  __chkstk_darwin(v7);
  v27 = &v24 - v8;
  v9 = type metadata accessor for EnvironmentValues();
  v26 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for LocationComponentViewModel();
  __chkstk_darwin(v12);
  type metadata accessor for LocationComponentContainerViewModel();
  sub_1001993DC();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  sub_100192034();
  if (EnumCaseMultiPayload != 5)
  {
    goto LABEL_8;
  }

  v14 = a1 + *(type metadata accessor for LocationComponentContainerView(0) + 104);
  v15 = *v14;
  if (*(v14 + 8) != 1)
  {

    static os_log_type_t.fault.getter();
    v21 = static Log.runtimeIssuesLog.getter();
    v25 = v7;
    v22 = v21;
    os_log(_:dso:log:_:_:)();

    v7 = v25;
    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000EBD74(v15, 0);
    (*(v26 + 8))(v11, v9);
    if ((v29 & 1) == 0)
    {
      goto LABEL_4;
    }

LABEL_8:
    sub_10019AB34(v4);
    v20 = &qword_100CC0A08;
    sub_1000302D8(v4, v6, &qword_100CC0A08);
    goto LABEL_9;
  }

  if (v15)
  {
    goto LABEL_8;
  }

LABEL_4:
  v16 = [objc_opt_self() currentDevice];
  v17 = [v16 userInterfaceIdiom];

  v4 = v27;
  sub_10019AB34(v27);
  v18 = 0x3FF0000000000000;
  if (v17 == 1)
  {
    v18 = 0x4000000000000000;
  }

  v19 = &v4[*(v7 + 36)];
  *v19 = v18;
  *(v19 + 4) = 0;
  v20 = &qword_100CC0A18;
  sub_1000302D8(v4, v6, &qword_100CC0A18);
LABEL_9:
  swift_storeEnumTagMultiPayload();
  sub_1001CCA44();
  sub_1001CB964();
  _ConditionalContent<>.init(storage:)();
  return sub_100018198(v4, v20);
}

unint64_t sub_1001B8300()
{
  result = qword_100CE84B8;
  if (!qword_100CE84B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE84B8);
  }

  return result;
}

unint64_t sub_1001B8354()
{
  result = qword_100CE84C8;
  if (!qword_100CE84C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE84C8);
  }

  return result;
}

unint64_t sub_1001B83A8()
{
  result = qword_100CE84D0;
  if (!qword_100CE84D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE84D0);
  }

  return result;
}

uint64_t sub_1001B83FC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1001B8444@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v139 = a2;
  v3 = type metadata accessor for PlainButtonStyle();
  sub_1000037C4();
  v127 = v4;
  __chkstk_darwin(v5);
  sub_100003990(&v119 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = type metadata accessor for Button();
  sub_100006C58();
  WitnessTable = swift_getWitnessTable();
  v152 = v7;
  v153 = WitnessTable;
  sub_100017180();
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for ModifiedContent();
  v9 = type metadata accessor for ModifiedContent();
  v152 = v7;
  v153 = WitnessTable;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v11 = sub_1001B8300();
  v158 = OpaqueTypeConformance2;
  v159 = v11;
  v12 = swift_getWitnessTable();
  v13 = sub_100965958();
  v156 = v12;
  v157 = v13;
  v14 = swift_getWitnessTable();
  sub_100009354();
  v17 = sub_1001B83FC(v15, v16);
  v152 = v9;
  v153 = v3;
  v142 = v3;
  v154 = v14;
  v155 = v17;
  v140 = v17;
  sub_1000235D8();
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  sub_1000037C4();
  v125 = v19;
  __chkstk_darwin(v20);
  sub_100003C38();
  v124 = v21 - v22;
  sub_10000386C();
  __chkstk_darwin(v23);
  sub_10000E70C();
  sub_100003990(v24);
  v25 = sub_1001B83A8();
  v152 = v9;
  v153 = &type metadata for FixedBackgroundButtonStyle;
  v154 = v14;
  v155 = v25;
  v141 = v25;
  swift_getOpaqueTypeMetadata2();
  sub_1000037C4();
  v122 = v26;
  __chkstk_darwin(v27);
  sub_100003C38();
  v30 = v28 - v29;
  __chkstk_darwin(v31);
  sub_10000E70C();
  sub_100003990(v32);
  v128 = v33;
  v129 = OpaqueTypeMetadata2;
  v34 = type metadata accessor for _ConditionalContent();
  sub_1000037C4();
  v132 = v35;
  __chkstk_darwin(v36);
  sub_100003C38();
  v131 = v37 - v38;
  sub_10000386C();
  __chkstk_darwin(v39);
  sub_10000E70C();
  sub_100003990(v40);
  v41 = swift_checkMetadataState();
  sub_1000037C4();
  __chkstk_darwin(v42);
  v44 = &v119 - v43;
  v45 = sub_1001B8354();
  v152 = v41;
  v153 = &type metadata for DefaultBackgroundButtonStyle;
  v143 = v14;
  v154 = v14;
  v155 = v45;
  swift_getOpaqueTypeMetadata2();
  sub_1000037C4();
  v47 = v46;
  __chkstk_darwin(v48);
  sub_100003C38();
  v51 = v49 - v50;
  __chkstk_darwin(v52);
  v54 = &v119 - v53;
  v134 = v55;
  v138 = v34;
  v137 = type metadata accessor for _ConditionalContent();
  sub_1000037C4();
  v136 = v56;
  __chkstk_darwin(v57);
  sub_100003990(&v119 - v58);
  if (qword_100CA24F0 != -1)
  {
    swift_once();
  }

  if (byte_100D907A8 == 1)
  {
    sub_1001B98F8(a1, v44);
    v59 = v143;
    View.buttonStyle<A>(_:)();
    v60 = sub_100015094();
    v61(v60);
    v152 = v41;
    v153 = &type metadata for DefaultBackgroundButtonStyle;
    v154 = v59;
    v155 = v45;
    swift_getOpaqueTypeConformance2();
    v133 = v41;
    v62 = v47;
    v63 = v134;
    sub_100020D30();
    sub_1000833D8(v64, v65, v66);
    v67 = *(v62 + 8);
    v67(v51, v63);
    sub_100020D30();
    sub_1000833D8(v68, v69, v70);
    v152 = v133;
    v153 = &type metadata for FixedBackgroundButtonStyle;
    v71 = sub_10002CBE8(v141);
    v152 = v133;
    v153 = v142;
    v72 = v140;
    v154 = v143;
    v155 = v140;
    v73 = sub_10001FDD0();
    v144 = v71;
    v145 = v73;
    sub_10001F590();
    swift_getWitnessTable();
    v74 = v135;
    sub_1003E8038();
    v67(v51, v63);
    v67(v54, v63);
    v41 = v133;
  }

  else
  {
    v120 = v45;
    v75 = *(v133 + 9);
    sub_1001B98F8(a1, v44);
    if (v75 == 1)
    {
      v76 = v143;
      v77 = v141;
      View.buttonStyle<A>(_:)();
      v78 = sub_100015094();
      v79(v78);
      v152 = v41;
      v153 = &type metadata for FixedBackgroundButtonStyle;
      v154 = v76;
      v155 = v77;
      v80 = sub_100013F40();
      v81 = v121;
      v82 = v128;
      sub_1000833D8(v30, v128, v80);
      v83 = *(v122 + 8);
      v83(v30, v82);
      sub_1000833D8(v81, v82, v80);
      v152 = v41;
      v153 = v142;
      v154 = v76;
      v155 = v140;
      sub_10001FDD0();
      v84 = v130;
      sub_1003E8038();
      v83(v30, v82);
      v83(v81, v82);
    }

    else
    {
      v85 = v126;
      PlainButtonStyle.init()();
      v86 = v124;
      v87 = v142;
      v88 = v143;
      v89 = v140;
      View.buttonStyle<A>(_:)();
      (*(v127 + 8))(v85, v87);
      v90 = sub_100015094();
      v91(v90);
      v152 = v41;
      v153 = v87;
      v154 = v88;
      v155 = v89;
      sub_10001FDD0();
      v92 = v123;
      v93 = v129;
      sub_100020D30();
      sub_1000833D8(v94, v95, v96);
      v97 = *(v125 + 8);
      v97(v86, v93);
      sub_100020D30();
      sub_1000833D8(v98, v99, v100);
      v152 = v41;
      v153 = &type metadata for FixedBackgroundButtonStyle;
      v154 = v88;
      v155 = v141;
      sub_100013F40();
      v84 = v130;
      sub_10012D09C();
      v97(v86, v93);
      v97(v92, v93);
    }

    v101 = v138;
    v152 = v41;
    v153 = &type metadata for FixedBackgroundButtonStyle;
    v102 = v143;
    v154 = v143;
    v155 = v141;
    sub_10004EE18();
    v103 = swift_getOpaqueTypeConformance2();
    v152 = v41;
    v153 = v142;
    v104 = v140;
    v154 = v102;
    v155 = v140;
    v105 = sub_10001FDD0();
    v150 = v103;
    v151 = v105;
    sub_10001F590();
    v106 = swift_getWitnessTable();
    v107 = v131;
    sub_1000833D8(v84, v101, v106);
    v152 = v41;
    v153 = &type metadata for DefaultBackgroundButtonStyle;
    v154 = v102;
    v108 = v84;
    v45 = v120;
    v155 = v120;
    swift_getOpaqueTypeConformance2();
    v74 = v135;
    sub_10012D09C();
    v109 = *(v132 + 8);
    v110 = v107;
    v72 = v104;
    v109(v110, v101);
    v109(v108, v101);
  }

  v152 = v41;
  v153 = &type metadata for DefaultBackgroundButtonStyle;
  v111 = v143;
  v154 = v143;
  v155 = v45;
  sub_10004EE18();
  v112 = swift_getOpaqueTypeConformance2();
  v152 = v41;
  v153 = &type metadata for FixedBackgroundButtonStyle;
  v154 = v111;
  v155 = v141;
  v113 = swift_getOpaqueTypeConformance2();
  v152 = v41;
  v153 = v142;
  v154 = v111;
  v155 = v72;
  v114 = sub_10001FDD0();
  v148 = v113;
  v149 = v114;
  v115 = swift_getWitnessTable();
  v146 = v112;
  v147 = v115;
  v116 = v137;
  v117 = swift_getWitnessTable();
  sub_1000833D8(v74, v116, v117);
  return (*(v136 + 8))(v74, v116);
}

uint64_t sub_1001B8FB8(uint64_t a1)
{
  v2 = type metadata accessor for WeatherMapOverlayKind();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  sub_1000037D8();
  v6 = v5 - v4;
  v7 = type metadata accessor for MapComponentViewModel();
  __chkstk_darwin(v7 - 8);
  sub_1000037D8();
  v10 = v9 - v8;
  v11 = type metadata accessor for LocationComponentViewModel();
  __chkstk_darwin(v11);
  sub_1000037D8();
  v14 = v13 - v12;
  sub_1001B4294(a1, v13 - v12);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    switch(EnumCaseMultiPayload)
    {
      case 18:
        sub_10001FBE0();
        sub_1001920DC(a1, v18);
        sub_10000EE74();
        return 5;
      case 5:
        sub_10074DCD4(v14, v10);
        (*(v3 + 16))(v6, v10, v2);
        if ((*(v3 + 88))(v6, v2) == LODWORD(enum case for WeatherMapOverlayKind.wind(_:)[0]))
        {
          if (qword_100CA2100 != -1)
          {
            sub_100010F18();
          }

          v20 = sub_10022C350(&qword_100CA35A0);
          sub_10000703C(v20, qword_100D8FEB8);
          swift_beginAccess();
          Tips.Parameter.wrappedValue.getter();
          swift_endAccess();
          sub_10004ECB0();
          sub_100013E38();
          if (v23)
          {
            return 2;
          }

          else
          {
            return 3;
          }
        }

        else
        {
          sub_10004ECB0();
          sub_100013E38();
          (*(v3 + 8))(v6, v2);
          return 2;
        }

      case 16:
        sub_10001FBE0();
        sub_1001920DC(a1, v19);
        sub_10000EE74();
        return 4;
      case 1:
        sub_10001FBE0();
        sub_1001920DC(a1, v16);
        sub_10000EE74();
        return 0;
      default:
        sub_10001FBE0();
        sub_1001920DC(a1, v21);
        sub_10000EE74();
        return 6;
    }
  }

  else
  {
    sub_10001FBE0();
    sub_1001920DC(a1, v22);
    sub_10000EE74();
    return 1;
  }
}

uint64_t sub_1001B92BC()
{
  type metadata accessor for SettingReader();
  static SettingReader.shared.getter();
  if (qword_100CA24E8 != -1)
  {
    swift_once();
  }

  v0 = SettingReader.isEnabled(_:with:)();

  byte_100D907A8 = v0 & 1;
  return result;
}

uint64_t sub_1001B935C()
{
  type metadata accessor for Access();
  sub_1000037C4();
  __chkstk_darwin(v0);
  sub_1000037D8();
  sub_100014C64();
  sub_1000037C4();
  __chkstk_darwin(v1);
  sub_1000037D8();
  sub_10022C350(&qword_100CC74A0);
  v2 = sub_10000621C();
  v3(v2);
  v4 = sub_1000089C8();
  v5(v4);
  result = sub_100004594();
  qword_100D907A0 = result;
  return result;
}

uint64_t sub_1001B94C0@<X0>(uint64_t a1@<X8>)
{
  v26 = a1;
  v1 = sub_10022C350(&qword_100CC0A78);
  __chkstk_darwin(v1);
  v3 = &v25 - v2;
  v25 = sub_10022C350(&qword_100CC0A80);
  __chkstk_darwin(v25);
  v5 = &v25 - v4;
  v6 = sub_10022C350(&qword_100CC0A88);
  __chkstk_darwin(v6 - 8);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v25 - v10;
  v12 = sub_10022C350(&qword_100CC0A90);
  __chkstk_darwin(v12 - 8);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v25 - v16;
  v19 = *(v18 + 44);
  *&v17[v19] = swift_getKeyPath();
  sub_10022C350(&qword_100CC0970);
  swift_storeEnumTagMultiPayload();
  *v17 = 0;
  v17[8] = 1;
  sub_10019960C(v5);
  sub_1000302D8(v5, v3, &qword_100CC0A80);
  swift_storeEnumTagMultiPayload();
  sub_10022C350(&qword_100CC0A98);
  v20 = sub_10022E824(&qword_100CC0AA0);
  v21 = sub_1001CC72C();
  v27 = v20;
  v28 = &type metadata for Bool;
  v29 = v21;
  v30 = &protocol witness table for Bool;
  swift_getOpaqueTypeConformance2();
  sub_1001CCCE8();
  _ConditionalContent<>.init(storage:)();
  sub_100018198(v5, &qword_100CC0A80);
  sub_1000302D8(v17, v14, &qword_100CC0A90);
  sub_1000302D8(v11, v8, &qword_100CC0A88);
  v22 = v26;
  sub_1000302D8(v14, v26, &qword_100CC0A90);
  v23 = sub_10022C350(&qword_100CC0B10);
  sub_1000302D8(v8, v22 + *(v23 + 48), &qword_100CC0A88);
  sub_100018198(v11, &qword_100CC0A88);
  sub_100018198(v17, &qword_100CC0A90);
  sub_100018198(v8, &qword_100CC0A88);
  return sub_100018198(v14, &qword_100CC0A90);
}

uint64_t sub_1001B98F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v80 = a2;
  v4 = *(a1 - 8);
  __chkstk_darwin(a1);
  v60 = v5;
  v6 = &v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v7 + 16);
  v64 = *(v7 + 24);
  v65 = v8;
  v9 = type metadata accessor for Button();
  v67 = v9;
  v70 = *(v9 - 8);
  __chkstk_darwin(v9);
  v81 = &v56 - v10;
  WitnessTable = swift_getWitnessTable();
  *&__src[0] = v9;
  *(&__src[0] + 1) = WitnessTable;
  v72 = &opaque type descriptor for <<opaque return type of View.onLongPressGesture(minimumDuration:maximumDistance:pressing:perform:)>>;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v74 = *(OpaqueTypeMetadata2 - 8);
  __chkstk_darwin(OpaqueTypeMetadata2);
  v66 = &v56 - v11;
  v75 = type metadata accessor for ModifiedContent();
  v78 = *(v75 - 8);
  __chkstk_darwin(v75);
  v69 = &v56 - v12;
  v77 = type metadata accessor for ModifiedContent();
  v79 = *(v77 - 8);
  __chkstk_darwin(v77);
  v73 = &v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v14);
  v76 = &v56 - v16;
  v17 = *(v4 + 16);
  v61 = v4 + 16;
  v62 = v17;
  (v17)(v6, v2, a1, v15);
  v59 = *(v4 + 80);
  v18 = (v59 + 32) & ~v59;
  v57 = v18;
  v19 = swift_allocObject();
  v20 = v64;
  v21 = v65;
  *(v19 + 16) = v65;
  *(v19 + 24) = v20;
  v58 = *(v4 + 32);
  v58(v19 + v18, v6, a1);
  v82 = v21;
  v83 = v20;
  v84 = v2;
  Button.init(action:label:)();
  v22 = v2;
  v63 = v2;
  v62(v6, v2, a1);
  v23 = v57;
  v24 = swift_allocObject();
  *(v24 + 16) = v21;
  *(v24 + 24) = v20;
  v25 = a1;
  v58(v24 + v23, v6, a1);
  v27 = v66;
  v26 = v67;
  v28 = WitnessTable;
  v29 = v81;
  View.onLongPressGesture(minimumDuration:maximumDistance:pressing:perform:)();

  (*(v70 + 8))(v29, v26);
  v30 = (v22 + *(a1 + 48));
  v31 = *v30;
  v32 = v30[1];
  v33 = v30[2];
  v34 = v30[3];
  memset(__dst, 0, 32);
  sub_100148118(v31, v32, v33, v34);
  sub_10022C350(&qword_100CDB3D8);
  State.init(wrappedValue:)();
  v35 = *&__src[2];
  v36 = __src[0];
  v37 = __src[1];
  *&__src[0] = v31;
  *(&__src[0] + 1) = v32;
  *&__src[1] = v33;
  *(&__src[1] + 1) = v34;
  __src[2] = v36;
  __src[3] = v37;
  *&__src[4] = v35;
  *&__dst[0] = v26;
  *(&__dst[0] + 1) = v28;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v39 = v69;
  v40 = OpaqueTypeMetadata2;
  View.modifier<A>(_:)();
  memcpy(__dst, __src, 0x48uLL);
  sub_100965A00(__dst);
  (*(v74 + 8))(v27, v40);
  v41 = (v63 + *(v25 + 52));
  v42 = *v41;
  v43 = v41[1];
  v44 = v41[2];
  v45 = v41[3];
  memset(v89, 0, 32);
  sub_100148118(v42, v43, v44, v45);
  State.init(wrappedValue:)();
  *&v89[0] = v42;
  *(&v89[0] + 1) = v43;
  *&v89[1] = v44;
  *(&v89[1] + 1) = v45;
  v89[2] = __src[0];
  v89[3] = __src[1];
  *&v89[4] = *&__src[2];
  v46 = sub_1001B8300();
  v87 = OpaqueTypeConformance2;
  v88 = v46;
  v47 = v75;
  v48 = swift_getWitnessTable();
  v49 = v73;
  View.modifier<A>(_:)();
  memcpy(__src, v89, 0x48uLL);
  sub_100965A30(__src);
  (*(v78 + 8))(v39, v47);
  v50 = sub_100965958();
  v85 = v48;
  v86 = v50;
  v51 = v77;
  v52 = swift_getWitnessTable();
  v53 = v76;
  sub_1000833D8(v49, v51, v52);
  v54 = *(v79 + 8);
  v54(v49, v51);
  sub_1000833D8(v53, v51, v52);
  return (v54)(v53, v51);
}

void sub_1001BA01C()
{
  type metadata accessor for AirQualityComponentViewModel();
  if (v0 <= 0x3F)
  {
    sub_10009BE44(319, &qword_100CE0E20);
    if (v1 <= 0x3F)
    {
      sub_1001BA8DC();
      if (v2 <= 0x3F)
      {
        sub_10009BE44(319, &unk_100CACE88);
        if (v3 <= 0x3F)
        {
          sub_1001BA110();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1001BA110()
{
  if (!qword_100CBB7D8)
  {
    sub_10014AB54();
    v0 = type metadata accessor for ScaledValue();
    if (!v1)
    {
      atomic_store(v0, &qword_100CBB7D8);
    }
  }
}

uint64_t type metadata accessor for SunriseSunsetComponentView()
{
  result = qword_100CD86C0;
  if (!qword_100CD86C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1001BA1DC()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

void sub_1001BA218()
{
  sub_100007B54(319, &qword_100CA3C70, &type metadata accessor for ContentSizeCategory, &type metadata accessor for Environment);
  if (v0 <= 0x3F)
  {
    sub_1000077F0();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1001BA31C()
{
  v0 = type metadata accessor for SunriseSunsetViewModel();
  if (v1 <= 0x3F)
  {
    sub_1001BA8DC();
    v0 = v2;
    if (v3 <= 0x3F)
    {
      sub_10009BE44(319, &qword_100CA3C60);
      v0 = v4;
      if (v5 <= 0x3F)
      {
        sub_10009BE44(319, &qword_100CE0E20);
        v0 = v6;
        if (v7 <= 0x3F)
        {
          sub_10009BE44(319, &qword_100CACE80);
          if (v9 > 0x3F)
          {
            return v8;
          }

          else
          {
            swift_cvw_initStructMetadataWithLayoutString();
            return 0;
          }
        }
      }
    }
  }

  return v0;
}

void sub_1001BA438()
{
  type metadata accessor for AirQualityComponentViewModel();
  if (v0 <= 0x3F)
  {
    sub_10013D854(319, &unk_100CC0C48, type metadata accessor for LocationComponentHeaderMetrics, &type metadata accessor for Environment);
    if (v1 <= 0x3F)
    {
      sub_1000816EC(319, &qword_100CE0E20, &type metadata for Bool, &type metadata accessor for Environment);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1001BA540(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4)
{
  type metadata accessor for SevereAlertComponentViewModel();
  if (v5 <= 0x3F)
  {
    sub_10009BE44(319, a4);
    if (v6 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t type metadata accessor for AirQualityComponentView()
{
  result = qword_100CEE8D0;
  if (!qword_100CEE8D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1001BA648()
{
  type metadata accessor for PressureComponentViewModel();
  if (v0 <= 0x3F)
  {
    sub_1001BA8DC();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1001BA720()
{
  type metadata accessor for DailyForecastComponentViewModel(319);
  if (v0 <= 0x3F)
  {
    sub_100137A94();
    if (v1 <= 0x3F)
    {
      sub_10013DB50();
      if (v2 <= 0x3F)
      {
        sub_100007AF0(319, &qword_100CA3C70, &type metadata accessor for ContentSizeCategory, &type metadata accessor for Environment);
        if (v3 <= 0x3F)
        {
          sub_10009BF30(319, &qword_100CE0E20, &type metadata for Bool, &type metadata accessor for Environment);
          if (v4 <= 0x3F)
          {
            type metadata accessor for Text.Measurements();
            if (v5 <= 0x3F)
            {
              sub_1001BA934(319, &qword_100CBC200, &type metadata accessor for State);
              if (v6 <= 0x3F)
              {
                sub_100007AF0(319, &qword_100CBC208, type metadata accessor for TipCoordinator, type metadata accessor for Resolved);
                if (v7 <= 0x3F)
                {
                  swift_cvw_initStructMetadataWithLayoutString();
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_1001BA8DC()
{
  if (!qword_100CA3C70)
  {
    type metadata accessor for ContentSizeCategory();
    v0 = type metadata accessor for Environment();
    if (!v1)
    {
      atomic_store(v0, &qword_100CA3C70);
    }
  }
}

void sub_1001BA934(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = sub_10022E824(&unk_100CABD90);
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t type metadata accessor for FeelsLikeComponentView()
{
  result = qword_100CACE70;
  if (!qword_100CACE70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1001BA9FC()
{
  type metadata accessor for FeelsLikeComponentViewModel(319);
  if (v0 <= 0x3F)
  {
    sub_10009BE44(319, &qword_100CACE80);
    if (v1 <= 0x3F)
    {
      sub_10009BE44(319, &unk_100CACE88);
      if (v2 <= 0x3F)
      {
        sub_10009BE44(319, &qword_100CE0E20);
        if (v3 <= 0x3F)
        {
          sub_1001BA8DC();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t type metadata accessor for HourlyForecastComponentView()
{
  result = qword_100CDDA40;
  if (!qword_100CDDA40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1001BAB64()
{
  type metadata accessor for HourlyForecastComponentViewModel(319);
  if (v0 <= 0x3F)
  {
    sub_1000077F0();
    if (v1 <= 0x3F)
    {
      type metadata accessor for Text.Measurements();
      if (v2 <= 0x3F)
      {
        sub_10013BCD0();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1001BAC48()
{
  type metadata accessor for MapComponentViewModel();
  if (v0 <= 0x3F)
  {
    sub_10009C0C0(319, &qword_100CE0E20, &type metadata for Bool, &type metadata accessor for Environment);
    if (v1 <= 0x3F)
    {
      sub_10009C0C0(319, &qword_100CA3C60, &type metadata for PerformanceTestFeatures, &type metadata accessor for Environment);
      if (v2 <= 0x3F)
      {
        sub_100061960();
        if (v3 <= 0x3F)
        {
          sub_10010F438(319, &qword_100CE0E10, &qword_100CA6028);
          if (v4 <= 0x3F)
          {
            sub_10009C0C0(319, &unk_100CB35A0, &type metadata for NamespaceWrapper, &type metadata accessor for Environment);
            if (v5 <= 0x3F)
            {
              sub_10009C0C0(319, &qword_100CB7100, &unk_100C730C0, &type metadata accessor for Environment);
              if (v6 <= 0x3F)
              {
                sub_10010F438(319, &unk_100CBED28, &qword_100CB0590);
                if (v7 <= 0x3F)
                {
                  sub_10009C0C0(319, &unk_100CE7CF8, &type metadata for MapComponentLoadingState, &type metadata accessor for State);
                  if (v8 <= 0x3F)
                  {
                    swift_cvw_initStructMetadataWithLayoutString();
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

uint64_t type metadata accessor for NewsArticleComponentView()
{
  result = qword_100CD0AD0;
  if (!qword_100CD0AD0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}