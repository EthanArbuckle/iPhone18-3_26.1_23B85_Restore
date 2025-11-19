uint64_t sub_46AAC()
{
  sub_8A88();
  sub_C9D4();
  v2 = *(v1 + 152);
  v3 = *v0;
  sub_C990();
  *v4 = v3;

  sub_8ACC();

  return _swift_task_switch(v5, v6, v7);
}

uint64_t sub_46B94()
{
  sub_8A88();
  *(v0[13] + 64) = 2;
  v2 = v0[17];
  v1 = v0[18];
  v3 = v0[16];

  sub_C9BC();

  return v4();
}

uint64_t sub_46C0C()
{
  type metadata accessor for LoggingCorrectionsFlow();
  sub_4B2C8();
  sub_4B13C(v0, v1);
  return sub_16C33C();
}

uint64_t sub_46C8C(uint64_t a1)
{
  v63 = a1;
  v64 = sub_16C89C();
  v1 = sub_42F0(v64);
  v3 = v2;
  v5 = *(v4 + 64);
  __chkstk_darwin(v1);
  sub_4304();
  v8 = v7 - v6;
  v9 = sub_16DBEC();
  v10 = sub_42F0(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  __chkstk_darwin(v10);
  sub_38634();
  v61 = v15;
  v17 = __chkstk_darwin(v16);
  v19 = &v61 - v18;
  __chkstk_darwin(v17);
  sub_8AC0();
  v62 = v20;
  __chkstk_darwin(v21);
  v23 = &v61 - v22;
  v24 = sub_16DBBC();
  sub_385D8();
  swift_beginAccess();
  v25 = *(v12 + 16);
  v67 = v9;
  v65 = v25;
  v25(v23, v24, v9);
  v26 = sub_16DBDC();
  v27 = sub_16E36C();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = sub_1BA38();
    *v28 = 0;
    _os_log_impl(&def_259DC, v26, v27, "isCorrectionsSteeringSupportedBySelf", v28, 2u);
    sub_8A2C();
  }

  v29 = *(v12 + 8);
  v30 = v67;
  v66 = v12 + 8;
  v29(v23, v67);
  sub_16C82C();
  v31 = sub_10E3DC();
  (*(v3 + 8))(v8, v64);
  sub_385D8();
  if (v31)
  {
    swift_beginAccess();
    v32 = v62;
    sub_4B3E0();
    v33();
    sub_4B4E0();
    swift_retain_n();
    v34 = sub_16DBDC();
    v35 = sub_16E36C();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = sub_8BD8();
      v64 = v29;
      v37 = v36;
      v38 = sub_CA30();
      v68 = v38;
      *v37 = 136315138;

      sub_B41D0();
      v40 = v39;
      v42 = v41;

      v43 = sub_3AB7C(v40, v42, &v68);
      v30 = v67;

      *(v37 + 4) = v43;
      _os_log_impl(&def_259DC, v34, v35, "Received corrections intent: %s", v37, 0xCu);
      sub_2D64(v38);
      sub_1BA00();
      v29 = v64;
      sub_8A2C();

      v44 = v62;
    }

    else
    {

      v44 = v32;
    }

    v29(v44, v30);
    if (sub_4A750())
    {
      sub_4B4E0();

      return 1;
    }

    sub_385D8();
    swift_beginAccess();
    sub_4B3E0();
    v54();
    v46 = sub_16DBDC();
    v55 = sub_16E37C();
    if (!sub_4B3A8(v55))
    {

      sub_4B4E0();

      goto LABEL_15;
    }

    *sub_1BA38() = 0;
    sub_4B4B0();
    _os_log_impl(v56, v57, v58, v59, v60, 2u);
    sub_8A2C();
    sub_4B4E0();
  }

  else
  {
    swift_beginAccess();
    v19 = v61;
    sub_4B3E0();
    v45();
    v46 = sub_16DBDC();
    v47 = sub_16E37C();
    if (sub_4B3A8(v47))
    {
      *sub_1BA38() = 0;
      sub_4B4B0();
      _os_log_impl(v48, v49, v50, v51, v52, 2u);
      sub_8A2C();
    }
  }

LABEL_15:
  v29(v19, v30);
  return 0;
}

uint64_t sub_47154@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v376 = a2;
  v375 = sub_16CC6C();
  v4 = sub_42F0(v375);
  v365 = v5;
  v7 = *(v6 + 64);
  __chkstk_darwin(v4);
  sub_4304();
  sub_130A0(v9 - v8);
  v374 = sub_2440(&qword_1C6C28, &qword_174F10);
  v10 = sub_8B38(v374);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  sub_130A0(&v359 - v13);
  v363 = sub_2440(&qword_1C5680, &unk_16F310);
  v14 = sub_8B38(v363);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  sub_38634();
  sub_13058();
  __chkstk_darwin(v17);
  sub_8AC0();
  sub_13058();
  v19 = __chkstk_darwin(v18);
  v21 = &v359 - v20;
  __chkstk_darwin(v19);
  sub_130A0(&v359 - v22);
  v377 = sub_16BD9C();
  v23 = sub_42F0(v377);
  v364 = v24;
  v26 = *(v25 + 64);
  __chkstk_darwin(v23);
  sub_4304();
  sub_130A0(v28 - v27);
  v373 = sub_2440(&qword_1C6C30, &qword_172898);
  v29 = sub_8B38(v373);
  v31 = *(v30 + 64);
  __chkstk_darwin(v29);
  sub_130A0(&v359 - v32);
  v362 = sub_2440(&qword_1C5690, &dword_16F320);
  v33 = sub_8B38(v362);
  v35 = *(v34 + 64);
  __chkstk_darwin(v33);
  sub_38634();
  sub_13058();
  __chkstk_darwin(v36);
  sub_8AC0();
  sub_13058();
  __chkstk_darwin(v37);
  sub_8AC0();
  sub_13058();
  __chkstk_darwin(v38);
  sub_130A0(&v359 - v39);
  v40 = sub_16DBEC();
  v41 = sub_42F0(v40);
  v389 = v42;
  v44 = *(v43 + 64);
  __chkstk_darwin(v41);
  sub_38634();
  sub_13058();
  __chkstk_darwin(v45);
  sub_8AC0();
  sub_13058();
  __chkstk_darwin(v46);
  sub_8AC0();
  sub_13058();
  __chkstk_darwin(v47);
  sub_8AC0();
  sub_13058();
  __chkstk_darwin(v48);
  sub_8AC0();
  sub_13058();
  __chkstk_darwin(v49);
  sub_8AC0();
  sub_13058();
  __chkstk_darwin(v50);
  sub_8AC0();
  sub_13058();
  __chkstk_darwin(v51);
  v53 = (&v359 - v52);
  v386 = type metadata accessor for SynthesizedWellnessIntent();
  v54 = sub_8B38(v386);
  v56 = *(v55 + 64);
  __chkstk_darwin(v54);
  sub_4304();
  v59 = v58 - v57;
  v381 = *(v2 + OBJC_IVAR____TtC18WellnessFlowPlugin22LoggingCorrectionsFlow_lastSavedSampleHKIdentifier);
  v60 = (v2 + OBJC_IVAR____TtC18WellnessFlowPlugin22LoggingCorrectionsFlow_lastSavedSampleIntent);
  sub_8388(v2 + OBJC_IVAR____TtC18WellnessFlowPlugin22LoggingCorrectionsFlow_lastSavedSampleIntent, &v399);
  sub_3054(&v399, v59);
  sub_4B1F0();
  v62 = *(v61 + 24);
  v63 = sub_4B214();
  v65 = v64(v63);
  v388 = v40;
  v387 = v59;
  v385 = v21;
  if (v65 == 270)
  {
    v66 = v379;
    sub_4B504();
    v67 = v383;
    goto LABEL_28;
  }

  v68 = v65;
  sub_4B1F0();
  v70 = *(v69 + 24);
  v71 = sub_4B214();
  v73 = v72(v71);
  v74 = v60[3];
  v75 = v60[4];
  v76 = sub_38E50();
  sub_2D20(v76, v77);
  v78 = *(v75 + 24);
  v79 = sub_4B430();
  v81 = v80(v79, v75);
  if (v73 == 270)
  {
    v21 = v385;
    v66 = v379;
    v67 = v383;
    if (v81 == 270)
    {
      goto LABEL_10;
    }

LABEL_7:
    sub_16DBBC();
    sub_385D8();
    swift_beginAccess();
    sub_4B234();
    sub_4B244();
    v82();
    v83 = sub_16DBDC();
    v84 = sub_16E36C();
    if (sub_4B3A8(v84))
    {
      v85 = sub_8BD8();
      v67 = sub_CA30();
      v399 = v67;
      *v85 = 136315138;
      v398 = v68;
      v86 = sub_16E1EC();
      v21 = v87;
      v88 = sub_3AB7C(v86, v87, &v399);

      *(v85 + 4) = v88;
      v66 = v379;
      sub_4B4B0();
      _os_log_impl(v89, v90, v91, v92, v93, 0xCu);
      sub_2D64(v67);
      sub_4B294();
      sub_8A2C();
      sub_8A2C();
    }

    sub_4B224();
    sub_4B2BC();
    v94();
    sub_4B1F0();
    v96 = *(v95 + 24);
    v97 = sub_4B214();
    v99 = v98(v97);
    *(v387 + 2) = v99;
    goto LABEL_10;
  }

  v21 = v385;
  v66 = v379;
  v67 = v383;
  if (v81 == 270)
  {
    goto LABEL_7;
  }

  sub_140650(v73);
  v119 = sub_4B3C0();
  sub_140650(v119);
  sub_4B4D4();
  if (v106 && v73 == v120)
  {

    goto LABEL_10;
  }

  sub_4B270();
  sub_4B564();

  if ((v74 & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_10:
  sub_16D74();
  v100 = sub_16E14C();
  v101 = sub_1730C(v68, v100);

  if (v101 == 205)
  {
    sub_4B504();
  }

  else
  {
    v102 = sub_208C0(v101);
    v104 = v103;
    sub_208C0(v381);
    sub_4B4D4();
    v106 = v106 && v104 == v105;
    v53 = v378;
    if (v106)
    {
    }

    else
    {
      sub_4B270();
      sub_4B564();

      if ((v102 & 1) == 0)
      {
        sub_16DBBC();
        sub_385D8();
        swift_beginAccess();
        sub_4B234();
        sub_4B244();
        v107();
        v108 = sub_16DBDC();
        v109 = sub_16E36C();
        if (sub_4B3A8(v109))
        {
          v110 = sub_8BD8();
          v53 = sub_CA30();
          v399 = v53;
          *v110 = 136315138;
          LOBYTE(v398) = v101;
          v111 = sub_16E1EC();
          v67 = v112;
          v113 = sub_3AB7C(v111, v112, &v399);
          sub_4B294();

          *(v110 + 4) = v113;
          v66 = v379;
          sub_4B4B0();
          _os_log_impl(v114, v115, v116, v117, v118, 0xCu);
          sub_4B414();
          sub_4B504();
          sub_8A2C();
          sub_8A2C();
        }

        sub_4B224();
        sub_4B2BC();
        v122();
        v381 = v101;
      }
    }
  }

LABEL_28:
  sub_4B1F0();
  v124 = *(v123 + 16);
  v125 = sub_4B214();
  v127 = v126(v125);
  v128 = v60[3];
  v129 = v60[4];
  v130 = sub_38E50();
  sub_2D20(v130, v131);
  v132 = *(v129 + 16);
  v133 = sub_4B430();
  v134(v133, v129);
  sub_158B28(v127);
  v135 = sub_4B3C0();
  sub_158B28(v135);
  sub_4B4D4();
  if (v106 && v127 == v136)
  {

    v138 = v377;
  }

  else
  {
    sub_4B270();
    sub_4B564();

    v138 = v377;
    if ((v128 & 1) == 0)
    {
      sub_16DBBC();
      sub_385D8();
      swift_beginAccess();
      sub_4B234();
      sub_4B244();
      v139();
      sub_4B470();
      v128 = sub_16DBDC();
      v53 = sub_16E36C();
      if (os_log_type_enabled(v128, v53))
      {
        v140 = sub_8BD8();
        v141 = sub_CA30();
        v397 = v141;
        *v140 = 136315138;
        sub_4B2E0();
        v143 = *(v142 + 16);
        v144 = sub_4B2AC();
        v66 = v379;
        LOBYTE(v396) = v145(v144);
        sub_16E1EC();
        sub_4B488();
        v146 = sub_4B364();
        v149 = sub_3AB7C(v146, v147, v148);
        sub_4B294();

        *(v140 + 4) = v149;
        _os_log_impl(&def_259DC, v128, v53, "Corrections parse had an updated verb: %s", v140, 0xCu);
        sub_2D64(v141);
        sub_8A2C();
        v138 = v377;
        sub_8A2C();

        sub_4B224();
        sub_4B2BC();
        v150();
      }

      else
      {

        sub_4B224();
        sub_4B2BC();
        v151();
        sub_2D64(&v399);
      }

      sub_4B1F0();
      v153 = *(v152 + 16);
      v154 = sub_4B214();
      v156 = v155(v154);
      *v387 = v156;
      sub_4B504();
    }
  }

  sub_4B254();
  isa = v128[4].isa;
  v158 = sub_4B214();
  v159(v158);
  sub_4B454();
  v160 = v128[4].isa;
  v161 = sub_4B214();
  v162(v161);
  v163 = *(v373 + 48);
  sub_4B010(v53, v66, &qword_1C5690, &dword_16F320);
  sub_4B010(v67, v66 + v163, &qword_1C5690, &dword_16F320);
  sub_4B544(v66);
  if (v106)
  {
    sub_4B43C(v67);
    sub_4B43C(v53);
    sub_4B544(v66 + v163);
    if (v106)
    {
      sub_8748(v66, &qword_1C5690, &dword_16F320);
      goto LABEL_51;
    }
  }

  else
  {
    v164 = v368;
    sub_4B010(v66, v368, &qword_1C5690, &dword_16F320);
    sub_4B544(v66 + v163);
    if (!v165)
    {
      v215 = v364;
      v216 = v360;
      (*(v364 + 32))(v360, v66 + v163, v138);
      sub_4B13C(&qword_1C6C48, &type metadata accessor for DateInterval);
      LODWORD(v379) = sub_16E19C();
      v217 = *(v215 + 8);
      v217(v216, v138);
      v163 = &dword_16F320;
      sub_8748(v383, &qword_1C5690, &dword_16F320);
      sub_8748(v53, &qword_1C5690, &dword_16F320);
      v217(v368, v138);
      sub_8748(v66, &qword_1C5690, &dword_16F320);
      if (v379)
      {
        goto LABEL_51;
      }

      goto LABEL_47;
    }

    sub_4B43C(v67);
    sub_4B43C(v53);
    sub_13094(v390);
    v166(v164, v138);
  }

  sub_8748(v66, &qword_1C6C30, &qword_172898);
LABEL_47:
  sub_16DBBC();
  sub_385D8();
  swift_beginAccess();
  sub_4B234();
  sub_4B244();
  v167();
  sub_4B470();
  v168 = sub_16DBDC();
  v163 = sub_16E36C();
  if (os_log_type_enabled(v168, v163))
  {
    v169 = sub_8BD8();
    v396 = sub_CA30();
    *v169 = 136315138;
    v170 = v401;
    sub_2D20(&v399, v400);
    v171 = *(v170 + 32);
    v172 = v366;
    v173 = sub_4B2AC();
    v174(v173);
    v175 = sub_16E3DC();
    sub_8748(v172, &qword_1C5690, &dword_16F320);
    sub_2D64(&v399);
    v176 = sub_4B364();
    sub_3AB7C(v176, v177, v178);
    sub_4B310();
    v179 = v385;

    *(v169 + 4) = v175;
    v180 = v172;
    v21 = v179;
    _os_log_impl(&def_259DC, v168, v163, "Corrections parse had an updated dateInterval: %s", v169, 0xCu);
    sub_4B414();
    sub_8A2C();
    sub_8A2C();

    sub_4B224();
    sub_4B2BC();
    v181();
  }

  else
  {

    sub_4B224();
    sub_4B2BC();
    v182();
    sub_2D64(&v399);
    v180 = v366;
  }

  sub_4B254();
  v183 = *(v163 + 32);
  v184 = sub_4B214();
  v185(v184);
  sub_4B358();
  v187 = *(v186 + 24);
  sub_4B408();
  sub_4B060(v180, v189 + v188, v190, v191);
LABEL_51:
  sub_4B1F0();
  v193 = *(v192 + 40);
  v194 = sub_4B214();
  v196 = v195(v194) & 1;
  sub_4B454();
  v197 = *(v163 + 40);
  v198 = sub_4B214();
  if (v196 != (v199(v198) & 1))
  {
    sub_16DBBC();
    sub_385D8();
    swift_beginAccess();
    sub_4B234();
    v200 = v369;
    sub_4B244();
    v201();
    sub_4B470();
    v202 = sub_16DBDC();
    v203 = sub_16E36C();
    if (sub_4B38C(v203))
    {
      sub_8BD8();
      v395 = sub_4B33C();
      *v200 = 136315138;
      sub_4B2E0();
      v205 = *(v204 + 40);
      v206 = sub_4B2AC();
      if (v207(v206))
      {
        v208 = 1702195828;
      }

      else
      {
        v208 = 0x65736C6166;
      }

      sub_2D64(&v399);
      v209 = sub_4B364();
      sub_3AB7C(v209, v210, v211);
      sub_4B310();
      v21 = v385;

      *(v200 + 4) = v208;
      sub_4B31C(&def_259DC, v212, v213, "Corrections parse had an updated isRequestForUser: %s");
      sub_4B414();
      sub_8A2C();
      sub_38604();

      sub_4B224();
      sub_4B2BC();
      v214();
    }

    else
    {

      sub_4B224();
      sub_4B2BC();
      v218();
      sub_2D64(&v399);
    }

    sub_4B1F0();
    v220 = *(v219 + 40);
    v221 = sub_4B214();
    v222(v221);
    sub_4B358();
    *(v387 + *(v223 + 28)) = v224 & 1;
  }

  sub_4B1F0();
  v226 = *(v225 + 48);
  v227 = sub_4B214();
  v229 = v228(v227);
  v230 = v60[3];
  v231 = v60[4];
  v232 = sub_38E50();
  sub_2D20(v232, v233);
  v234 = *(v231 + 48);
  v235 = sub_4B430();
  v237 = v236(v235, v231);
  if (v229 == 61)
  {
    if (v237 == 61)
    {
      goto LABEL_69;
    }

    goto LABEL_65;
  }

  if (v237 == 61)
  {
    goto LABEL_65;
  }

  sub_39008(v229);
  v351 = sub_4B3C0();
  sub_39008(v351);
  sub_4B4D4();
  if (v106 && v229 == v352)
  {

    goto LABEL_69;
  }

  sub_4B270();
  sub_4B564();

  if ((v230 & 1) == 0)
  {
LABEL_65:
    sub_16DBBC();
    sub_385D8();
    swift_beginAccess();
    sub_4B234();
    v238 = v371;
    sub_4B244();
    v239();
    sub_4B470();
    v240 = sub_16DBDC();
    v241 = sub_16E36C();
    if (sub_4B38C(v241))
    {
      sub_8BD8();
      v394 = sub_4B33C();
      *v238 = 136315138;
      sub_4B2E0();
      v243 = *(v242 + 48);
      v244 = sub_4B2AC();
      LOBYTE(v392) = v245(v244);
      sub_2440(&qword_1C5798, &qword_1728A0);
      sub_16E3DC();
      sub_4B488();
      v246 = sub_4B364();
      sub_3AB7C(v246, v247, v248);
      sub_4B310();
      v21 = v385;

      *(v238 + 4) = &v392;
      sub_4B31C(&def_259DC, v249, v250, "Corrections parse had an updated measurementUnit: %s");
      sub_4B414();
      sub_8A2C();
      sub_38604();

      sub_4B224();
      sub_4B2BC();
      v251();
    }

    else
    {

      sub_4B224();
      sub_4B2BC();
      v252();
      sub_2D64(&v399);
    }

    sub_4B1F0();
    v254 = *(v253 + 48);
    v255 = sub_4B214();
    v256(v255);
    sub_4B358();
    v258 = *(v257 + 32);
    sub_4B408();
    *(v261 + v260) = v259;
  }

LABEL_69:
  sub_4B1F0();
  v263 = *(v262 + 64);
  v264 = sub_4B214();
  v266 = COERCE_DOUBLE(v265(v264));
  v268 = v267;
  v269 = v60[4];
  sub_2D20(v60, v60[3]);
  v270 = *(v269 + 64);
  v271 = sub_4B4EC();
  v273 = COERCE_DOUBLE(v272(v271));
  if (v268)
  {
    v274 = v380;
    v275 = v384;
  }

  else
  {
    v274 = v380;
    v275 = v384;
    if (v266 != v273)
    {
      v276 = v21;
      v277 = sub_16DBBC();
      sub_385D8();
      swift_beginAccess();
      sub_4B234();
      v268 = v388;
      v278 = v372;
      v279(v372, v277, v388);
      sub_4B470();
      v280 = sub_16DBDC();
      v281 = sub_16E36C();
      if (sub_4B38C(v281))
      {
        sub_8BD8();
        v391 = sub_4B33C();
        *v268 = 136315138;
        sub_4B2E0();
        v283 = *(v282 + 64);
        v284 = sub_4B2AC();
        v392 = v285(v284);
        v393 = v286 & 1;
        sub_2440(&qword_1C57A0, &qword_16F3C0);
        sub_16E3DC();
        sub_4B488();
        v287 = sub_4B364();
        sub_3AB7C(v287, v288, v289);
        sub_4B310();
        v276 = v385;
        v290 = v388;

        *(v268 + 4) = &v392;
        sub_4B31C(&def_259DC, v291, v292, "Corrections parse had an updated measurementValue: %s");
        sub_4B414();
        v274 = v380;
        sub_8A2C();
        sub_38604();

        sub_4B224();
        v293(v372, v290);
      }

      else
      {

        sub_4B224();
        v294(v278, v268);
        sub_2D64(&v399);
      }

      sub_4B1F0();
      v296 = *(v295 + 64);
      v297 = sub_4B214();
      v298(v297);
      sub_4B358();
      v300 = *(v299 + 40);
      sub_4B408();
      v303 = v302 + v301;
      *v303 = v304;
      *(v303 + 8) = v305 & 1;
      v275 = v384;
      v21 = v276;
    }
  }

  sub_4B254();
  v306 = *(v268 + 80);
  v307 = sub_4B214();
  v308(v307);
  sub_4B454();
  v309 = *(v268 + 80);
  v310 = sub_4B214();
  v311(v310);
  v312 = *(v374 + 48);
  v313 = sub_4B4EC();
  sub_4B010(v313, v314, &qword_1C5680, &unk_16F310);
  sub_4B010(v21, v274 + v312, &qword_1C5680, &unk_16F310);
  v315 = v375;
  if (sub_369C(v274, 1, v375) == 1)
  {
    v316 = sub_4B4A4();
    sub_8748(v316, v317, &unk_16F310);
    sub_8748(v275, &qword_1C5680, &unk_16F310);
    v318 = sub_369C(v274 + v312, 1, v315);
    v319 = v382;
    if (v318 == 1)
    {
      sub_8748(v274, &qword_1C5680, &unk_16F310);
      goto LABEL_86;
    }
  }

  else
  {
    v320 = v370;
    sub_4B010(v274, v370, &qword_1C5680, &unk_16F310);
    if (sub_369C(v274 + v312, 1, v315) != 1)
    {
      v354 = v361;
      v355 = v21;
      v356 = v365;
      (*(v365 + 32))(v361, v274 + v312, v315);
      sub_4B13C(&qword_1C6C40, &type metadata accessor for UsoEntity_common_ListPosition.DefinedValues);
      LODWORD(v385) = sub_16E19C();
      v357 = v275;
      v358 = v315;
      v315 = *(v356 + 8);
      (v315)(v354, v358);
      sub_4B43C(v355);
      sub_4B43C(v357);
      (v315)(v370, v358);
      sub_4B43C(v274);
      v319 = v382;
      if (v385)
      {
        goto LABEL_86;
      }

      goto LABEL_82;
    }

    v321 = sub_4B4A4();
    sub_8748(v321, v322, &unk_16F310);
    sub_8748(v275, &qword_1C5680, &unk_16F310);
    sub_13094(&v391);
    v323(v320, v315);
    v319 = v382;
  }

  sub_8748(v274, &qword_1C6C28, &qword_174F10);
LABEL_82:
  v324 = sub_16DBBC();
  sub_385D8();
  swift_beginAccess();
  sub_4B234();
  v325(v319, v324, v388);
  sub_4B470();
  v326 = sub_16DBDC();
  v327 = sub_16E36C();
  if (os_log_type_enabled(v326, v327))
  {
    sub_8BD8();
    v328 = sub_4B33C();
    v391 = v328;
    *v315 = 136315138;
    v329 = v400;
    v330 = v401;
    v331 = v389;
    sub_2D20(&v399, v400);
    v332 = v367;
    (*(v330 + 80))(v329, v330);
    v333 = sub_16E3DC();
    v335 = v334;
    sub_8748(v332, &qword_1C5680, &unk_16F310);
    sub_2D64(&v399);
    v336 = sub_3AB7C(v333, v335, &v391);

    *(v315 + 4) = v336;
    _os_log_impl(&def_259DC, v326, v327, "Corrections parse had an updated listPosition: %s", v315, 0xCu);
    sub_2D64(v328);
    sub_8A2C();
    sub_38604();

    (*(v331 + 8))(v382, v388);
  }

  else
  {

    sub_13094(&v402);
    sub_4B2BC();
    v337();
    sub_2D64(&v399);
    v332 = v367;
  }

  v338 = a1[3];
  v339 = a1[4];
  sub_2D20(a1, v338);
  (*(v339 + 80))(v338, v339);
  sub_4B358();
  v341 = *(v340 + 48);
  sub_4B408();
  sub_4B060(v332, v343 + v342, v344, v345);
LABEL_86:
  v346 = v376;
  *v376 = v381;
  sub_4B358();
  v346[4] = v347;
  v346[5] = sub_4B13C(&qword_1C6C38, type metadata accessor for SynthesizedWellnessIntent);
  sub_9910(v346 + 1);
  v348 = sub_4B4F8(&v401);
  sub_3498(v348, v349);
  return sub_34FC(v346);
}

uint64_t sub_48B90()
{
  sub_8A88();
  v1[216] = v0;
  v1[215] = v2;
  v3 = *(*(sub_2440(&qword_1C6250, &qword_1715A8) - 8) + 64);
  v1[217] = sub_8BC0();
  v4 = sub_16C46C();
  v1[218] = v4;
  sub_888C(v4);
  v1[219] = v5;
  v7 = *(v6 + 64) + 15;
  v1[220] = swift_task_alloc();
  v1[221] = swift_task_alloc();
  v8 = sub_16C7BC();
  v1[222] = v8;
  sub_888C(v8);
  v1[223] = v9;
  v11 = *(v10 + 64);
  v1[224] = sub_8BC0();
  v12 = sub_16C71C();
  v1[225] = v12;
  sub_888C(v12);
  v1[226] = v13;
  v15 = *(v14 + 64);
  v1[227] = sub_8BC0();
  v16 = sub_16DBEC();
  v1[228] = v16;
  sub_888C(v16);
  v1[229] = v17;
  v19 = *(v18 + 64) + 15;
  v1[230] = swift_task_alloc();
  v1[231] = swift_task_alloc();
  v1[232] = swift_task_alloc();
  v1[233] = swift_task_alloc();
  v1[234] = swift_task_alloc();
  v1[235] = swift_task_alloc();
  v1[236] = swift_task_alloc();
  v1[237] = swift_task_alloc();
  v1[238] = swift_task_alloc();
  sub_8ACC();

  return _swift_task_switch(v20, v21, v22);
}

uint64_t sub_48DCC()
{
  v1 = *(v0 + 1728);
  v2 = [objc_allocWithZone(sub_16D9DC()) init];
  *(v0 + 1912) = v2;
  isa = sub_16BF7C().super.isa;
  [v2 setSampleIdentifier:isa];

  sub_385D8();
  swift_beginAccess();
  sub_4AF54(v1 + 16, v0 + 1072);
  if (*(v0 + 1104))
  {
    v4 = *(v0 + 1872);
    v5 = *(v0 + 1832);
    v6 = *(v0 + 1824);
    *(v0 + 2025) = *(v0 + 1072);
    sub_17464((v0 + 1080), v0 + 1320);
    v7 = sub_16DBBC();
    *(v0 + 1992) = v7;
    sub_385D8();
    swift_beginAccess();
    v8 = *(v5 + 16);
    *(v0 + 2000) = v8;
    *(v0 + 2008) = (v5 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v8(v4, v7, v6);
    v9 = sub_16DBDC();
    sub_16E36C();
    sub_4B4BC();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = sub_1BA38();
      sub_1BA50(v11);
      sub_4B3F0(&def_259DC, v9, v4, "LoggingCorrectionsFlow doCorrection - Updating");
      sub_1BA00();
    }

    v12 = v0 + 1008;
    v13 = v0 + 80;
    v14 = *(v0 + 1872);
    v15 = *(v0 + 1832);
    v16 = *(v0 + 1824);
    v17 = *(v0 + 1728);

    *(v0 + 2016) = *(v15 + 8);
    v18 = sub_4B4EC();
    v19(v18);
    v20 = *(v17 + OBJC_IVAR____TtC18WellnessFlowPlugin22LoggingCorrectionsFlow_intentHandler);
    *(v0 + 80) = v0;
    *(v0 + 120) = v0 + 1680;
    *(v0 + 88) = sub_49CBC;
    v21 = swift_continuation_init();
    *(v0 + 1064) = sub_2440(&qword_1C6C10, &qword_172890);
    *(v0 + 1040) = v21;
    *(v0 + 1008) = _NSConcreteStackBlock;
    *(v0 + 1016) = 1107296256;
    *(v0 + 1024) = sub_53C4;
    *(v0 + 1032) = &unk_1BA030;
  }

  else
  {
    v22 = *(v0 + 1904);
    v23 = *(v0 + 1832);
    v24 = *(v0 + 1824);
    v25 = sub_16DBBC();
    *(v0 + 1920) = v25;
    sub_385D8();
    swift_beginAccess();
    v26 = *(v23 + 16);
    *(v0 + 1928) = v26;
    *(v0 + 1936) = (v23 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v26(v22, v25, v24);
    v27 = sub_16DBDC();
    sub_16E36C();
    sub_4B4BC();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = sub_1BA38();
      sub_1BA50(v29);
      sub_4B3F0(&def_259DC, v27, v22, "LoggingCorrectionsFlow doCorrection - Undoing");
      sub_1BA00();
    }

    v13 = v0 + 16;
    v12 = v0 + 944;
    v30 = *(v0 + 1904);
    v31 = *(v0 + 1832);
    v32 = *(v0 + 1824);
    v33 = *(v0 + 1728);

    *(v0 + 1944) = *(v31 + 8);
    v34 = sub_4B4EC();
    v35(v34);
    v20 = *(v33 + OBJC_IVAR____TtC18WellnessFlowPlugin22LoggingCorrectionsFlow_intentHandler);
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 1696;
    *(v0 + 24) = sub_491D4;
    v36 = swift_continuation_init();
    *(v0 + 1000) = sub_2440(&qword_1C6C10, &qword_172890);
    *(v0 + 976) = v36;
    *(v0 + 944) = _NSConcreteStackBlock;
    *(v0 + 952) = 1107296256;
    *(v0 + 960) = sub_53C4;
    *(v0 + 968) = &unk_1BA080;
  }

  [v20 handleDeleteHealthSample:v2 completion:v12];

  return _swift_continuation_await(v13);
}

uint64_t sub_491D4()
{
  sub_8A88();
  v7 = *v0;
  v1 = *v0;
  sub_C990();
  *v2 = v1;
  sub_8ACC();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_492A4()
{
  v55 = v0;
  v1 = v0[242];
  v2 = v0[241];
  v3 = v0[240];
  v4 = v0[237];
  v5 = v0[228];
  v6 = v0[212];
  v0[244] = v6;
  sub_385D8();
  swift_beginAccess();
  v7 = sub_1B9F0();
  v2(v7);
  v8 = v6;
  v9 = sub_16DBDC();
  LOBYTE(v4) = sub_16E36C();

  if (os_log_type_enabled(v9, v4))
  {
    v10 = sub_8BD8();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    *(v10 + 4) = v8;
    *v11 = v8;
    v12 = v8;
    sub_4B3D0();
    _os_log_impl(v13, v14, v15, v16, v17, 0xCu);
    sub_8748(v11, &qword_1C57B8, &qword_1715A0);
    sub_8A2C();
    sub_38604();
  }

  v18 = v0[243];
  v19 = v0[237];
  v20 = v0[228];
  v0[245] = (v0[229] + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v21 = v18(v19, v20);
  v22 = *(&stru_20.maxprot + (swift_isaMask & *v8));
  if ((v22)(v21) != 4)
  {
    v29 = v0[242];
    v30 = v0[241];
    v31 = v0[240];
    v32 = v0[235];
    v33 = v0[228];
    sub_385D8();
    swift_beginAccess();
    v34 = sub_4B304();
    v30(v34);
    v35 = v8;
    v36 = sub_16DBDC();
    v37 = sub_16E37C();

    v38 = os_log_type_enabled(v36, v37);
    v39 = v0[243];
    v40 = v0[235];
    v41 = v0[228];
    if (v38)
    {
      v52 = v0[228];
      v53 = v35;
      v42 = sub_8BD8();
      v51 = v40;
      v43 = sub_CA30();
      v54 = v43;
      *v42 = 136315138;
      v0[211] = v22();
      v44 = sub_16E1EC();
      v46 = sub_3AB7C(v44, v45, &v54);

      *(v42 + 4) = v46;
      _os_log_impl(&def_259DC, v36, v37, "Intent handler failed with code: %s", v42, 0xCu);
      sub_2D64(v43);
      sub_8A2C();
      v35 = v53;
      sub_8A2C();

      v39(v51, v52);
    }

    else
    {

      v39(v40, v41);
    }

    v47 = v0[239];
    v48 = v0[215];
    sub_8284(v0[216] + OBJC_IVAR____TtC18WellnessFlowPlugin22LoggingCorrectionsFlow_provider, (v0 + 58));
    sub_82E0();
    sub_16C4EC();

    sub_8334((v0 + 58));
    sub_4B1BC();
    sub_4B4C8();

    sub_C9BC();
    sub_4B510();

    __asm { BRAA            X1, X16 }
  }

  v23 = v0[216];
  v24 = OBJC_IVAR____TtC18WellnessFlowPlugin22LoggingCorrectionsFlow_provider;
  v0[246] = OBJC_IVAR____TtC18WellnessFlowPlugin22LoggingCorrectionsFlow_provider;
  v25 = *sub_2D20((v23 + v24 + 80), *(v23 + v24 + 104));
  v26 = swift_task_alloc();
  v0[247] = v26;
  *v26 = v0;
  v26[1] = sub_496F8;
  sub_4B510();

  return sub_10C040();
}

uint64_t sub_496F8(uint64_t a1)
{
  sub_C9D4();
  v5 = v4;
  v6 = *(v4 + 1976);
  v7 = *v2;
  sub_C990();
  *v8 = v7;

  if (v1)
  {
  }

  else
  {
    *(v5 + 1984) = a1;
  }

  sub_8ACC();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_49814()
{
  v24 = v0[239];
  v1 = v0[227];
  v2 = v0[226];
  v3 = v0[225];
  v20 = v0[224];
  v21 = v0[248];
  v25 = v0[223];
  v26 = v0[222];
  v27 = v0[244];
  v4 = v0[221];
  v5 = v0[220];
  v6 = v0[219];
  v7 = v0[218];
  v8 = v0[216];
  v22 = (v8 + v0[246]);
  v23 = v0[215];
  (*(v2 + 104))(v1, enum case for CorrectionsExitValue.success(_:), v3);
  v9 = OBJC_IVAR____TtC18WellnessFlowPlugin22LoggingCorrectionsFlow_correctionsExitValue;
  sub_4B52C();
  (*(v2 + 40))(v8 + v9, v1, v3);
  swift_endAccess();
  sub_16C43C();
  v10 = *(v6 + 16);
  v11 = sub_4B304();
  v12(v11);
  sub_16C75C();
  v13 = *(v6 + 8);
  v14 = sub_4B364();
  v15(v14);
  v16 = [v21 patternId];
  sub_16E1BC();

  sub_16C76C();
  v17 = v22[4];
  sub_2D20(v22, v22[3]);
  sub_4B430();
  v0[209] = sub_16C2FC();
  sub_16C28C();
  sub_16C32C();
  sub_16C4FC();

  (*(v25 + 8))(v20, v26);
  sub_4B1BC();
  sub_4B4C8();

  sub_C9BC();

  return v18();
}

void sub_49AE8()
{
  v1 = v0[242];
  v2 = v0[241];
  v3 = v0[240];
  v4 = v0[236];
  v5 = v0[228];
  sub_385D8();
  swift_beginAccess();
  v2(v4, v3, v5);
  v6 = sub_16DBDC();
  v7 = sub_16E37C();
  if (sub_1BA1C(v7))
  {
    v8 = sub_1BA38();
    sub_1BA50(v8);
    sub_1B9D0(&def_259DC, v9, v10, "LoggingCorrectionsFlow Error executing pattern");
    sub_1BA00();
  }

  v11 = v0[246];
  v12 = v0[245];
  v22 = v0[244];
  v13 = v0[243];
  v14 = v0[239];
  v15 = v0[236];
  v16 = v0[228];
  v17 = v0[216];
  v18 = v0[215];

  v19 = sub_C9F8();
  v13(v19);
  sub_8284(v17 + v11, (v0 + 38));
  sub_82E0();
  sub_16C32C();
  sub_8334((v0 + 38));
  sub_16C4FC();

  sub_4B1BC();
  sub_4B4C8();

  sub_C9BC();
  sub_4B510();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_49CBC()
{
  sub_8A88();
  v7 = *v0;
  v1 = *v0;
  sub_C990();
  *v2 = v1;
  sub_8ACC();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_49D8C()
{
  v112 = v0;
  v1 = *(v0 + 2008);
  v2 = *(v0 + 2000);
  v3 = *(v0 + 1992);
  v4 = *(v0 + 1864);
  v5 = *(v0 + 1824);
  v6 = *(v0 + 1680);
  sub_385D8();
  swift_beginAccess();
  v7 = sub_1B9F0();
  v2(v7);
  v8 = v6;
  v9 = sub_16DBDC();
  LOBYTE(v4) = sub_16E36C();

  if (os_log_type_enabled(v9, v4))
  {
    v10 = sub_8BD8();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    *(v10 + 4) = v8;
    *v11 = v8;
    v12 = v8;
    sub_4B3D0();
    _os_log_impl(v13, v14, v15, v16, v17, 0xCu);
    sub_8748(v11, &qword_1C57B8, &qword_1715A0);
    sub_8A2C();
    sub_38604();
  }

  v18 = *(v0 + 1832) + 8;
  v19 = (*(v0 + 2016))(*(v0 + 1864), *(v0 + 1824));
  v20 = *(&stru_20.maxprot + (swift_isaMask & *v8));
  if ((v20)(v19) != 4)
  {
    v46 = *(v0 + 2008);
    v47 = *(v0 + 2000);
    v48 = *(v0 + 1992);
    v49 = *(v0 + 1840);
    v50 = *(v0 + 1824);
    sub_385D8();
    swift_beginAccess();
    v51 = sub_4B304();
    v47(v51);
    v52 = v8;
    v53 = sub_16DBDC();
    v54 = sub_16E37C();

    v55 = os_log_type_enabled(v53, v54);
    v56 = *(v0 + 2016);
    v57 = *(v0 + 1840);
    v58 = *(v0 + 1824);
    if (v55)
    {
      v108 = *(v0 + 1824);
      v106 = *(v0 + 1840);
      v59 = sub_8BD8();
      *&v110[0] = sub_CA30();
      v60 = *&v110[0];
      *v59 = 136315138;
      *(v0 + 1712) = v20();
      v61 = sub_16E1EC();
      v63 = sub_3AB7C(v61, v62, v110);

      *(v59 + 4) = v63;
      _os_log_impl(&def_259DC, v53, v54, "Intent handler failed with code: %s", v59, 0xCu);
      sub_2D64(v60);
      sub_8A2C();
      sub_8A2C();

      v56(v106, v108);
    }

    else
    {

      v56(v57, v58);
    }

    v88 = *(v0 + 1912);
    v89 = *(v0 + 1720);
    sub_8284(*(v0 + 1728) + OBJC_IVAR____TtC18WellnessFlowPlugin22LoggingCorrectionsFlow_provider, v0 + 784);
    sub_82E0();
    sub_16C4EC();

    v45 = v0 + 784;
LABEL_14:
    sub_8334(v45);
    goto LABEL_21;
  }

  v21 = *(v0 + 1736);
  v22 = *(v0 + 1728);
  v23 = OBJC_IVAR____TtC18WellnessFlowPlugin22LoggingCorrectionsFlow_correctionInput;
  sub_385D8();
  swift_beginAccess();
  sub_4B010(v22 + v23, v21, &qword_1C6250, &qword_1715A8);
  v24 = sub_16C7DC();
  LODWORD(v23) = sub_369C(v21, 1, v24);
  sub_8748(v21, &qword_1C6250, &qword_1715A8);
  v25 = *(v0 + 2008);
  v26 = *(v0 + 2000);
  v27 = *(v0 + 1992);
  v28 = *(v0 + 1824);
  if (v23 == 1)
  {
    v29 = *(v0 + 1848);
    v30 = *(v0 + 1992);
    sub_385D8();
    swift_beginAccess();
    v31 = sub_4B304();
    v26(v31);
    v32 = sub_16DBDC();
    v33 = sub_16E37C();
    if (sub_4B3A8(v33))
    {
      *sub_1BA38() = 0;
      sub_4B3D0();
      _os_log_impl(v34, v35, v36, v37, v38, 2u);
      sub_38604();
    }

    v39 = *(v0 + 2016);
    v40 = *(v0 + 1912);
    v41 = *(v0 + 1848);
    v42 = *(v0 + 1824);
    v43 = *(v0 + 1728);
    v44 = *(v0 + 1720);

    v39(v41, v42);
    sub_8284(v43 + OBJC_IVAR____TtC18WellnessFlowPlugin22LoggingCorrectionsFlow_provider, v0 + 144);
    sub_82E0();
    sub_16C4EC();

    v45 = v0 + 144;
    goto LABEL_14;
  }

  v107 = (v0 + 1240);
  v109 = v8;
  v104 = *(v0 + 1856);
  v64 = *(v0 + 1816);
  v65 = *(v0 + 1808);
  v66 = *(v0 + 1800);
  v67 = *(v0 + 1728);
  (*(v65 + 104))(v64, enum case for CorrectionsExitValue.success(_:), v66);
  v68 = OBJC_IVAR____TtC18WellnessFlowPlugin22LoggingCorrectionsFlow_correctionsExitValue;
  sub_4B52C();
  (*(v65 + 40))(v67 + v68, v64, v66);
  swift_endAccess();
  sub_385D8();
  swift_beginAccess();
  v69 = sub_4B304();
  v26(v69);
  sub_8388(v0 + 1320, v0 + 1160);
  v70 = sub_16DBDC();
  v71 = sub_16E36C();
  v72 = sub_4B3A8(v71);
  v73 = *(v0 + 2016);
  if (v72)
  {
    v74 = *(v0 + 2025);
    v103 = *(v0 + 1824);
    v105 = *(v0 + 1856);
    v75 = swift_slowAlloc();
    *&v110[0] = swift_slowAlloc();
    *v75 = 136315394;
    *(v0 + 2024) = v74;
    v76 = sub_16E1EC();
    v78 = sub_3AB7C(v76, v77, v110);

    *(v75 + 4) = v78;
    *(v75 + 12) = 2080;
    v79 = *(v0 + 1184);
    v80 = *(v0 + 1192);
    sub_2D20((v0 + 1160), v79);
    v81 = *(v79 - 8);
    v82 = *(v81 + 64);
    sub_8BC0();
    (*(v81 + 16))();
    v83 = *(v80 + 8);
    v84 = sub_16E1FC();
    v86 = v85;

    sub_2D64((v0 + 1160));
    v87 = sub_3AB7C(v84, v86, v110);

    *(v75 + 14) = v87;
    _os_log_impl(&def_259DC, v70, v71, "LoggingCorrectionsFlow Pushing on LogHealthKitQuantity flow with updated identifier [%s] and intent [%s]", v75, 0x16u);
    swift_arrayDestroy();
    sub_8A2C();
    sub_8A2C();

    v73(v105, v103);
  }

  else
  {
    v90 = *(v0 + 1856);
    v91 = *(v0 + 1824);

    v73(v90, v91);
    sub_2D64((v0 + 1160));
  }

  v92 = *(v0 + 2025);
  v93 = *(v0 + 1728);
  sub_8388(v0 + 1320, v0 + 1200);
  sub_8388(v93 + OBJC_IVAR____TtC18WellnessFlowPlugin22LoggingCorrectionsFlow_flowConfig, v0 + 1120);
  sub_8284(v93 + OBJC_IVAR____TtC18WellnessFlowPlugin22LoggingCorrectionsFlow_provider, v0 + 624);
  *v107 = 0u;
  *(v0 + 1256) = 0u;
  *(v0 + 1272) = 0;
  v94 = sub_16D9FC();
  memset(v110, 0, sizeof(v110));
  v111 = 0;
  v95 = objc_allocWithZone(v94);
  v96 = sub_16D9EC();
  type metadata accessor for LogHealthKitQuantityFlow();
  v97 = swift_allocObject();
  *(v97 + 336) = 3;
  *(v97 + 16) = v92;
  sub_17464((v0 + 1200), v97 + 24);
  sub_8388(v0 + 1120, v97 + 64);
  sub_8284(v0 + 624, v97 + 104);
  *(v97 + 264) = v96;
  if (*(v0 + 1264))
  {
    sub_C938(v0 + 624);
    sub_2D64((v0 + 1120));
    sub_17464(v107, v0 + 1280);
  }

  else
  {
    *(v0 + 1304) = &type metadata for CorrectionsFlowProvider;
    *(v0 + 1312) = &off_1BB308;
    v98 = swift_allocObject();
    *(v0 + 1280) = v98;
    sub_17464((v0 + 1120), v98 + 16);
    memcpy((v98 + 56), (v0 + 624), 0xA0uLL);
    if (*(v0 + 1264))
    {
      sub_8748(v107, &qword_1C6C18, &unk_1744C0);
    }
  }

  v99 = *(v0 + 1912);
  v100 = *(v0 + 1720);
  sub_17464((v0 + 1280), v97 + 272);
  *(v97 + 312) = 0;
  *(v97 + 320) = 0;
  *(v97 + 328) = 1;
  *(v0 + 1704) = v97;
  sub_4B13C(&qword_1C6C20, type metadata accessor for LogHealthKitQuantityFlow);
  sub_16C32C();
  sub_16C4FC();

LABEL_21:
  sub_2D64((v0 + 1320));
  sub_4B1BC();
  sub_4B4C8();

  sub_C9BC();

  return v101();
}

uint64_t sub_4A750()
{
  sub_B2EA4();
  v1 = v0;
  v2 = sub_B337C();
  v3 = sub_3B35C(v2);

  v4 = sub_B2BD0();
  sub_B2948();
  v8 = v1 != 270 || v3 != 0 || v4 != 61;
  return v8 | ((v5 & 1) == 0);
}

uint64_t sub_4A7CC()
{
  sub_4B184(v0 + 16);
  v1 = OBJC_IVAR____TtC18WellnessFlowPlugin22LoggingCorrectionsFlow_correctionsExitValue;
  v2 = sub_16C71C();
  sub_8B38(v2);
  (*(v3 + 8))(v0 + v1);
  v4 = *(v0 + OBJC_IVAR____TtC18WellnessFlowPlugin22LoggingCorrectionsFlow_kWellnessFlowPluginIdentifier + 8);

  v5 = OBJC_IVAR____TtC18WellnessFlowPlugin22LoggingCorrectionsFlow_uuidOfLastSavedSample;
  v6 = sub_16BFAC();
  sub_8B38(v6);
  (*(v7 + 8))(v0 + v5);
  sub_2D64((v0 + OBJC_IVAR____TtC18WellnessFlowPlugin22LoggingCorrectionsFlow_lastSavedSampleIntent));
  sub_2D64((v0 + OBJC_IVAR____TtC18WellnessFlowPlugin22LoggingCorrectionsFlow_flowConfig));
  sub_C938(v0 + OBJC_IVAR____TtC18WellnessFlowPlugin22LoggingCorrectionsFlow_provider);
  v8 = *(v0 + OBJC_IVAR____TtC18WellnessFlowPlugin22LoggingCorrectionsFlow_intentHandler);
  swift_unknownObjectRelease();
  sub_8748(v0 + OBJC_IVAR____TtC18WellnessFlowPlugin22LoggingCorrectionsFlow_correctionInput, &qword_1C6250, &qword_1715A8);
  return v0;
}

uint64_t sub_4A8D8()
{
  sub_4A7CC();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t type metadata accessor for LoggingCorrectionsFlow()
{
  result = qword_1C6A88;
  if (!qword_1C6A88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_4A984()
{
  v0 = sub_16C71C();
  if (v1 <= 0x3F)
  {
    v6 = *(v0 - 8) + 64;
    v2 = sub_16BFAC();
    if (v3 <= 0x3F)
    {
      v7 = *(v2 - 8) + 64;
      sub_1B334();
      if (v5 <= 0x3F)
      {
        v8 = *(v4 - 8) + 64;
        swift_updateClassMetadata2();
      }
    }
  }
}

_BYTE *storeEnumTagSinglePayload for LoggingCorrectionsFlow.State(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x4AB98);
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

uint64_t sub_4ABD0(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 sub_4ABE8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_4ABFC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 48))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 32);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_4AC4C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *(result + 32) = a2;
    }
  }

  return result;
}

double sub_4ACA8(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    *(a1 + 40) = 0;
    result = 0.0;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
  }

  else if (a2)
  {
    *(a1 + 32) = (a2 - 1);
  }

  return result;
}

unint64_t sub_4ACEC()
{
  result = qword_1C6C00;
  if (!qword_1C6C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C6C00);
  }

  return result;
}

uint64_t sub_4AD40@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC18WellnessFlowPlugin22LoggingCorrectionsFlow_correctionsExitValue;
  swift_beginAccess();
  v5 = sub_16C71C();
  return (*(*(v5 - 8) + 16))(a1, v3 + v4, v5);
}

uint64_t sub_4AE34()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_C6F0;

  return sub_466D8();
}

uint64_t sub_4AED0()
{
  type metadata accessor for LoggingCorrectionsFlow();

  return sub_16C37C();
}

uint64_t sub_4AFB8()
{
  sub_2D64(v0 + 2);
  sub_2D64(v0 + 7);
  sub_2D64(v0 + 12);
  sub_2D64(v0 + 17);
  sub_2D64(v0 + 22);

  return _swift_deallocObject(v0, 216, 7);
}

uint64_t sub_4B010(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_43AC(a1, a2, a3, a4);
  sub_8B38(v6);
  (*(v7 + 16))(v4, v5);
  return v4;
}

uint64_t sub_4B060(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_43AC(a1, a2, a3, a4);
  sub_8B38(v6);
  (*(v7 + 40))(v4, v5);
  return v4;
}

unint64_t sub_4B0B0()
{
  result = qword_1C6C50;
  if (!qword_1C6C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C6C50);
  }

  return result;
}

uint64_t sub_4B13C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_4B1BC()
{
  result = v0[238];
  v2 = v0[237];
  v3 = v0[236];
  v4 = v0[235];
  v5 = v0[234];
  v6 = v0[233];
  v7 = v0[232];
  v8 = v0[231];
  v9 = v0[230];
  v10 = v0[227];
  v11 = v0[224];
  v12 = v0[221];
  return result;
}

void *sub_4B254()
{
  v2 = v0[4];
  v3 = v0[3];

  return sub_2D20(v0, v3);
}

uint64_t sub_4B270()
{

  return sub_16E6BC();
}

uint64_t sub_4B294()
{
  result = v0;
  v3 = *(v1 - 384);
  v4 = *(v1 - 368);
  return result;
}

void sub_4B31C(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0xCu);
}

uint64_t sub_4B33C()
{

  return swift_slowAlloc();
}

BOOL sub_4B38C(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

BOOL sub_4B3A8(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

void sub_4B3F0(void *a1, NSObject *a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, a2, a3, a4, v4, 2u);
}

uint64_t sub_4B43C(uint64_t a1)
{

  return sub_8748(a1, v1, v2);
}

void *sub_4B454()
{
  v2 = v0[4];
  v3 = v0[3];

  return sub_2D20(v0, v3);
}

uint64_t sub_4B470()
{

  return sub_8388(v0, v1 - 128);
}

uint64_t sub_4B488()
{

  return sub_2D64((v0 - 128));
}

uint64_t sub_4B52C()
{

  return swift_beginAccess();
}

uint64_t sub_4B564()
{
}

uint64_t sub_4B57C()
{
  sub_8A88();
  *(v0 + 48) = v1;
  *(v0 + 56) = v2;
  *(v0 + 40) = v3;
  *(v0 + 240) = v4;
  v5 = sub_16DBEC();
  sub_5D41C(v5);
  *(v0 + 72) = v6;
  v8 = *(v7 + 64);
  *(v0 + 80) = sub_8BC0();
  v9 = sub_17960();

  return _swift_task_switch(v9, v10, v11);
}

void sub_4B624(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t *a12, unint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  sub_5DA2C();
  a23 = v25;
  a24 = v26;
  sub_5DB0C();
  a22 = v24;
  v27 = *(v24 + 240);
  if (!(!v29 & v28))
  {
    switch(*(v24 + 240))
    {
      case 'Y':
        v32 = swift_task_alloc();
        *(v24 + 88) = v32;
        *v32 = v24;
        sub_5D31C(v32);
        sub_4B510();

        sub_4D300();
        return;
      case 'Z':
        v66 = swift_task_alloc();
        *(v24 + 96) = v66;
        *v66 = v24;
        sub_5D31C(v66);
        sub_4B510();

        sub_4D88C();
        return;
      case '[':
      case '\\':
      case '^':
      case '_':
      case 'b':
      case 'c':
      case 'd':
      case 'e':
      case 'f':
      case 'h':
      case 'j':
        goto LABEL_23;
      case ']':
        v64 = swift_task_alloc();
        *(v24 + 104) = v64;
        *v64 = v24;
        sub_5D31C(v64);
        sub_4B510();

        sub_4DCF4();
        return;
        v58 = swift_task_alloc();
        *(v24 + 112) = v58;
        *v58 = v24;
        sub_5D31C(v58);
        sub_4B510();

        sub_4E4C4();
        return;
      case 'a':
        v68 = swift_task_alloc();
        *(v24 + 120) = v68;
        *v68 = v24;
        sub_5D31C(v68);
        sub_4B510();

        sub_4EE7C();
        return;
      case 'g':
        v62 = swift_task_alloc();
        *(v24 + 128) = v62;
        *v62 = v24;
        sub_5D31C(v62);
        sub_4B510();

        sub_4F2E4();
        return;
      case 'i':
        v56 = swift_task_alloc();
        *(v24 + 136) = v56;
        *v56 = v24;
        sub_5D31C(v56);
        sub_4B510();

        sub_4F944();
        return;
      case 'k':
        v60 = swift_task_alloc();
        *(v24 + 144) = v60;
        *v60 = v24;
        sub_5D31C(v60);
        sub_4B510();

        sub_5091C();
        return;
      default:
        JUMPOUT(0);
    }
  }

  switch(v27)
  {
    case 159:
      v78 = swift_task_alloc();
      *(v24 + 184) = v78;
      *v78 = v24;
      sub_5D31C(v78);
      sub_4B510();

      sub_5254C();
      break;
    case 162:
      v82 = swift_task_alloc();
      *(v24 + 192) = v82;
      *v82 = v24;
      sub_5D31C(v82);
      sub_4B510();

      sub_52A88();
      break;
    case 170:
      v80 = swift_task_alloc();
      *(v24 + 200) = v80;
      *v80 = v24;
      sub_5D31C(v80);
      sub_4B510();

      sub_539F4();
      break;
    case 173:
      v70 = swift_task_alloc();
      *(v24 + 208) = v70;
      *v70 = v24;
      sub_5D31C(v70);
      sub_4B510();

      sub_53F30();
      break;
    case 174:
      v76 = swift_task_alloc();
      *(v24 + 216) = v76;
      *v76 = v24;
      sub_5D31C(v76);
      sub_4B510();

      sub_54398();
      break;
    case 184:
      v72 = swift_task_alloc();
      v73 = sub_5DBE0(v72);
      *v73 = v74;
      sub_5D31C(v73);
      sub_4B510();

      sub_54C6C();
      break;
    case 193:
      v30 = swift_task_alloc();
      *(v24 + 232) = v30;
      *v30 = v24;
      sub_5D31C(v30);
      sub_4B510();

      sub_550D4();
      break;
    default:
LABEL_23:
      v35 = *(v24 + 72);
      v34 = *(v24 + 80);
      v36 = *(v24 + 64);
      sub_16DBBC();
      sub_5D954();
      v37 = *(v35 + 16);
      v38 = sub_38B40();
      v39(v38);
      v40 = sub_16DBDC();
      v41 = sub_16E37C();
      v42 = os_log_type_enabled(v40, v41);
      v44 = *(v24 + 72);
      v43 = *(v24 + 80);
      v45 = *(v24 + 64);
      if (v42)
      {
        v46 = *(v24 + 240);
        v47 = sub_8BD8();
        v48 = swift_slowAlloc();
        a12 = v48;
        *v47 = 136315138;
        v49 = sub_208C0(v46);
        v51 = sub_3AB7C(v49, v50, &a12);

        *(v47 + 4) = v51;
        _os_log_impl(&def_259DC, v40, v41, "No pattern execution defined for %s", v47, 0xCu);
        sub_2D64(v48);
        sub_5D970();
        sub_8A2C();
      }

      v52 = *(v44 + 8);
      v53 = sub_C9F8();
      v54(v53);
      v55 = *(v24 + 240);
      a12 = 0;
      a13 = 0xE000000000000000;
      sub_16E47C(35);

      a12 = 0xD000000000000021;
      a13 = 0x800000000017DD40;
      v84._countAndFlagsBits = sub_208C0(v55);
      sub_16E26C(v84);

      sub_16E53C();
      sub_4B510();
      break;
  }
}

uint64_t sub_4C04C()
{
  sub_8A88();
  sub_5D690();
  v2 = *(v1 + 88);
  v3 = *(v1 + 80);
  v4 = *v0;
  sub_C990();
  *v5 = v4;

  v6 = sub_5D680();

  return v7(v6);
}

uint64_t sub_4C148()
{
  sub_8A88();
  sub_5D690();
  v2 = *(v1 + 96);
  v3 = *(v1 + 80);
  v4 = *v0;
  sub_C990();
  *v5 = v4;

  v6 = sub_5D680();

  return v7(v6);
}

uint64_t sub_4C244()
{
  sub_8A88();
  sub_5D690();
  v2 = *(v1 + 104);
  v3 = *(v1 + 80);
  v4 = *v0;
  sub_C990();
  *v5 = v4;

  v6 = sub_5D680();

  return v7(v6);
}

uint64_t sub_4C340()
{
  sub_8A88();
  sub_5D690();
  v2 = *(v1 + 112);
  v3 = *(v1 + 80);
  v4 = *v0;
  sub_C990();
  *v5 = v4;

  v6 = sub_5D680();

  return v7(v6);
}

uint64_t sub_4C43C()
{
  sub_8A88();
  sub_5D690();
  v2 = *(v1 + 120);
  v3 = *(v1 + 80);
  v4 = *v0;
  sub_C990();
  *v5 = v4;

  v6 = sub_5D680();

  return v7(v6);
}

uint64_t sub_4C538()
{
  sub_8A88();
  sub_5D690();
  v2 = *(v1 + 128);
  v3 = *(v1 + 80);
  v4 = *v0;
  sub_C990();
  *v5 = v4;

  v6 = sub_5D680();

  return v7(v6);
}

uint64_t sub_4C634()
{
  sub_8A88();
  sub_5D690();
  v2 = *(v1 + 136);
  v3 = *(v1 + 80);
  v4 = *v0;
  sub_C990();
  *v5 = v4;

  v6 = sub_5D680();

  return v7(v6);
}

uint64_t sub_4C730()
{
  sub_8A88();
  sub_5D690();
  v2 = *(v1 + 144);
  v3 = *(v1 + 80);
  v4 = *v0;
  sub_C990();
  *v5 = v4;

  v6 = sub_5D680();

  return v7(v6);
}

uint64_t sub_4C82C()
{
  sub_8A88();
  sub_5D690();
  v2 = *(v1 + 152);
  v3 = *(v1 + 80);
  v4 = *v0;
  sub_C990();
  *v5 = v4;

  v6 = sub_5D680();

  return v7(v6);
}

uint64_t sub_4C928()
{
  sub_8A88();
  sub_5D690();
  v2 = *(v1 + 160);
  v3 = *(v1 + 80);
  v4 = *v0;
  sub_C990();
  *v5 = v4;

  v6 = sub_5D680();

  return v7(v6);
}

uint64_t sub_4CA24()
{
  sub_8A88();
  sub_5D690();
  v2 = *(v1 + 168);
  v3 = *(v1 + 80);
  v4 = *v0;
  sub_C990();
  *v5 = v4;

  v6 = sub_5D680();

  return v7(v6);
}

uint64_t sub_4CB20()
{
  sub_8A88();
  sub_5D690();
  v2 = *(v1 + 176);
  v3 = *(v1 + 80);
  v4 = *v0;
  sub_C990();
  *v5 = v4;

  v6 = sub_5D680();

  return v7(v6);
}

uint64_t sub_4CC1C()
{
  sub_8A88();
  sub_5D690();
  v2 = *(v1 + 184);
  v3 = *(v1 + 80);
  v4 = *v0;
  sub_C990();
  *v5 = v4;

  v6 = sub_5D680();

  return v7(v6);
}

uint64_t sub_4CD18()
{
  sub_8A88();
  sub_5D690();
  v2 = *(v1 + 192);
  v3 = *(v1 + 80);
  v4 = *v0;
  sub_C990();
  *v5 = v4;

  v6 = sub_5D680();

  return v7(v6);
}

uint64_t sub_4CE14()
{
  sub_8A88();
  sub_5D690();
  v2 = *(v1 + 200);
  v3 = *(v1 + 80);
  v4 = *v0;
  sub_C990();
  *v5 = v4;

  v6 = sub_5D680();

  return v7(v6);
}

uint64_t sub_4CF10()
{
  sub_8A88();
  sub_5D690();
  v2 = *(v1 + 208);
  v3 = *(v1 + 80);
  v4 = *v0;
  sub_C990();
  *v5 = v4;

  v6 = sub_5D680();

  return v7(v6);
}

uint64_t sub_4D00C()
{
  sub_8A88();
  sub_5D690();
  v2 = *(v1 + 216);
  v3 = *(v1 + 80);
  v4 = *v0;
  sub_C990();
  *v5 = v4;

  v6 = sub_5D680();

  return v7(v6);
}

uint64_t sub_4D108()
{
  sub_8A88();
  sub_5D690();
  v2 = *(v1 + 224);
  v3 = *(v1 + 80);
  v4 = *v0;
  sub_C990();
  *v5 = v4;

  v6 = sub_5D680();

  return v7(v6);
}

uint64_t sub_4D204()
{
  sub_8A88();
  sub_5D690();
  v2 = *(v1 + 232);
  v3 = *(v1 + 80);
  v4 = *v0;
  sub_C990();
  *v5 = v4;

  v6 = sub_5D680();

  return v7(v6);
}

uint64_t sub_4D300()
{
  sub_8A88();
  v4 = sub_5D9C8(v1, v2, v3);
  sub_5D41C(v4);
  v0[9] = v5;
  v7 = *(v6 + 64);
  v0[10] = sub_8BC0();
  v8 = sub_2440(&qword_1C57F8, &unk_172510);
  sub_5D844(v8);
  v10 = *(v9 + 64);
  v11 = sub_8C38();
  v12 = sub_5DEA8(v11);
  v13 = sub_5DEC0(v12);
  v0[14] = v13;
  sub_888C(v13);
  v0[15] = v14;
  v16 = *(v15 + 64);
  v17 = sub_8C38();
  v18 = sub_5DE18(v17);
  v19 = sub_5DE60(v18);
  v0[19] = sub_5DD24(v19);
  v20 = sub_2440(&qword_1C5690, &dword_16F320);
  sub_4348(v20);
  v22 = *(v21 + 64);
  v23 = sub_8C38();
  v0[21] = sub_5DDB4(v23);
  v24 = sub_2440(&qword_1C57E0, &unk_171C60);
  sub_4348(v24);
  v26 = *(v25 + 64);
  v27 = sub_8C38();
  v28 = sub_5DE78(v27);
  v29 = sub_5DD0C(v28);
  v0[25] = sub_5DCDC(v29);
  v30 = sub_17960();

  return _swift_task_switch(v30, v31, v32);
}

uint64_t sub_4D768()
{
  sub_5E06C();
  sub_C9EC();
  sub_5D720();
  sub_C990();
  *v3 = v2;
  v4 = *(v2 + 224);
  *v3 = *v1;

  sub_5DA54();
  v6 = *(v5 + 216);
  if (v0)
  {
  }

  else
  {
    sub_5DED8();
  }

  sub_5D6DC();
  sub_38F74();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_4D88C()
{
  sub_8A88();
  v4 = sub_5D9C8(v1, v2, v3);
  sub_5D41C(v4);
  v0[9] = v5;
  v7 = *(v6 + 64);
  v0[10] = sub_8BC0();
  v8 = sub_2440(&qword_1C57F8, &unk_172510);
  sub_5D844(v8);
  v10 = *(v9 + 64);
  v11 = sub_8C38();
  v12 = sub_5DEA8(v11);
  v13 = sub_5DEC0(v12);
  v0[14] = v13;
  sub_888C(v13);
  v0[15] = v14;
  v16 = *(v15 + 64);
  v17 = sub_8C38();
  v18 = sub_5DE18(v17);
  v19 = sub_5DE60(v18);
  v0[19] = sub_5DD24(v19);
  v20 = sub_2440(&qword_1C5690, &dword_16F320);
  sub_4348(v20);
  v22 = *(v21 + 64);
  v23 = sub_8C38();
  v0[21] = sub_5DDB4(v23);
  v24 = sub_2440(&qword_1C57E0, &unk_171C60);
  sub_4348(v24);
  v26 = *(v25 + 64);
  v27 = sub_8C38();
  v28 = sub_5DE78(v27);
  v29 = sub_5DD0C(v28);
  v0[25] = sub_5DCDC(v29);
  v30 = sub_17960();

  return _swift_task_switch(v30, v31, v32);
}

uint64_t sub_4DCF4()
{
  sub_8A88();
  v4 = sub_5D9C8(v1, v2, v3);
  sub_5D41C(v4);
  v0[9] = v5;
  v7 = *(v6 + 64);
  v0[10] = sub_8BC0();
  v8 = sub_2440(&qword_1C57F8, &unk_172510);
  sub_5D844(v8);
  v10 = *(v9 + 64);
  v11 = sub_8C38();
  v12 = sub_5DEA8(v11);
  v13 = sub_5DEC0(v12);
  v0[14] = v13;
  sub_888C(v13);
  v0[15] = v14;
  v16 = *(v15 + 64);
  v17 = sub_8C38();
  v18 = sub_5DE18(v17);
  v19 = sub_5DE60(v18);
  v0[19] = sub_5DD24(v19);
  v20 = sub_2440(&qword_1C5690, &dword_16F320);
  sub_4348(v20);
  v22 = *(v21 + 64);
  v23 = sub_8C38();
  v0[21] = sub_5DDB4(v23);
  v24 = sub_2440(&qword_1C57E0, &unk_171C60);
  sub_4348(v24);
  v26 = *(v25 + 64);
  v27 = sub_8C38();
  v28 = sub_5DE78(v27);
  v29 = sub_5DD0C(v28);
  v0[25] = sub_5DCDC(v29);
  v30 = sub_17960();

  return _swift_task_switch(v30, v31, v32);
}

uint64_t sub_4E15C()
{
  sub_5E06C();
  sub_C9EC();
  sub_5D720();
  sub_C990();
  *v3 = v2;
  v4 = *(v2 + 224);
  *v3 = *v1;

  sub_5DA54();
  v6 = *(v5 + 216);
  if (v0)
  {
  }

  else
  {
    sub_5DED8();
  }

  sub_5D6DC();
  sub_38F74();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_4E280(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  sub_5DA2C();
  sub_5DB0C();
  v39 = v16[29];
  v17 = v16[26];

  v19 = v16[24];
  v18 = v16[25];
  v21 = v16[22];
  v20 = v16[23];
  v22 = v16[20];
  v24 = v16[18];
  v23 = v16[19];
  v35 = v16[17];
  v36 = v16[16];
  v25 = v16[13];
  v37 = v16[12];
  v38 = v16[10];
  sub_5CFC8(v16[21], &qword_1C5690, &dword_16F320);
  sub_5CFC8(v25, &qword_1C57F8, &unk_172510);

  sub_5D948();
  sub_4B510();

  return v28(v26, v27, v28, v29, v30, v31, v32, v33, v35, v36, v37, v38, v39, a14, a15, a16);
}

uint64_t sub_4E3A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  sub_5DA2C();
  sub_5DB0C();
  v17 = v16[26];

  v19 = v16[24];
  v18 = v16[25];
  v21 = v16[22];
  v20 = v16[23];
  v22 = v16[20];
  v23 = v16[18];
  v24 = v16[19];
  v35 = v16[17];
  v36 = v16[16];
  v25 = v16[13];
  v37 = v16[12];
  v38 = v16[10];
  sub_5CFC8(v16[21], &qword_1C5690, &dword_16F320);
  sub_5CFC8(v25, &qword_1C57F8, &unk_172510);

  sub_5D8AC();
  sub_4B510();

  return v28(v26, v27, v28, v29, v30, v31, v32, v33, a9, v35, v36, v37, v38, a14, a15, a16);
}

uint64_t sub_4E4C4()
{
  sub_8A88();
  v4 = sub_5D9C8(v1, v2, v3);
  sub_5D41C(v4);
  v0[9] = v5;
  v7 = *(v6 + 64);
  v0[10] = sub_8BC0();
  v8 = sub_2440(&qword_1C5800, &unk_16F510);
  sub_4348(v8);
  v10 = *(v9 + 64);
  v0[11] = sub_8BC0();
  v11 = sub_2440(&qword_1C57F8, &unk_172510);
  v0[12] = v11;
  sub_4348(v11);
  v13 = *(v12 + 64);
  v14 = sub_8C38();
  v0[14] = sub_5E054(v14);
  v15 = sub_16BF5C();
  v0[15] = v15;
  sub_888C(v15);
  v0[16] = v16;
  v18 = *(v17 + 64);
  v19 = sub_8C38();
  v20 = sub_5DE60(v19);
  v21 = sub_5DD24(v20);
  v0[20] = sub_5DF7C(v21);
  v22 = sub_2440(&qword_1C5690, &dword_16F320);
  sub_4348(v22);
  v24 = *(v23 + 64);
  v25 = sub_8C38();
  v0[22] = sub_5E09C(v25);
  v26 = sub_2440(&qword_1C57E0, &unk_171C60);
  sub_4348(v26);
  v28 = *(v27 + 64);
  v29 = sub_8C38();
  v30 = sub_5DD0C(v29);
  v31 = sub_5DCDC(v30);
  v0[26] = sub_5DF18(v31);
  v32 = sub_17960();

  return _swift_task_switch(v32, v33, v34);
}

uint64_t sub_4EAC4()
{
  sub_5E06C();
  sub_C9EC();
  sub_5D720();
  v4 = v3;
  sub_C990();
  *v5 = v3;
  v6 = *(v3 + 232);
  *v5 = *v2;

  sub_5DA54();
  v8 = *(v7 + 224);
  if (v1)
  {
  }

  else
  {
    *(v4 + 240) = v0;
  }

  sub_5D6DC();
  sub_38F74();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_4EBF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  sub_5DFE4();
  sub_5E12C();
  v42 = v18[30];
  v19 = v18[27];

  v20 = v18[25];
  v21 = v18[26];
  v23 = v18[23];
  v22 = v18[24];
  v24 = v18[21];
  v25 = v18[20];
  v37 = v18[19];
  v38 = v18[18];
  v26 = v18[14];
  v39 = v18[17];
  v40 = v18[13];
  v27 = v18[11];
  v41 = v18[10];
  sub_5CFC8(v18[22], &qword_1C5690, &dword_16F320);
  sub_5CFC8(v27, &qword_1C5800, &unk_16F510);
  sub_5CFC8(v26, &qword_1C57F8, &unk_172510);

  sub_5D948();
  sub_5DFC8();

  return v30(v28, v29, v30, v31, v32, v33, v34, v35, a9, v37, v38, v39, v40, v41, v42, a16, a17, a18);
}

uint64_t sub_4ED3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  sub_5DA2C();
  sub_5DB0C();
  v17 = v16[27];

  v19 = v16[25];
  v18 = v16[26];
  v21 = v16[23];
  v20 = v16[24];
  v22 = v16[21];
  v23 = v16[20];
  v35 = v16[19];
  v36 = v16[18];
  v24 = v16[14];
  v37 = v16[17];
  v38 = v16[13];
  v25 = v16[11];
  v39 = v16[10];
  sub_5CFC8(v16[22], &qword_1C5690, &dword_16F320);
  sub_5CFC8(v25, &qword_1C5800, &unk_16F510);
  sub_5CFC8(v24, &qword_1C57F8, &unk_172510);

  sub_5D8AC();
  sub_4B510();

  return v28(v26, v27, v28, v29, v30, v31, v32, v33, v35, v36, v37, v38, v39, a14, a15, a16);
}

uint64_t sub_4EE7C()
{
  sub_8A88();
  v4 = sub_5D9C8(v1, v2, v3);
  sub_5D41C(v4);
  v0[9] = v5;
  v7 = *(v6 + 64);
  v0[10] = sub_8BC0();
  v8 = sub_2440(&qword_1C57F8, &unk_172510);
  sub_5D844(v8);
  v10 = *(v9 + 64);
  v11 = sub_8C38();
  v12 = sub_5DEA8(v11);
  v13 = sub_5DEC0(v12);
  v0[14] = v13;
  sub_888C(v13);
  v0[15] = v14;
  v16 = *(v15 + 64);
  v17 = sub_8C38();
  v18 = sub_5DE18(v17);
  v19 = sub_5DE60(v18);
  v0[19] = sub_5DD24(v19);
  v20 = sub_2440(&qword_1C5690, &dword_16F320);
  sub_4348(v20);
  v22 = *(v21 + 64);
  v23 = sub_8C38();
  v0[21] = sub_5DDB4(v23);
  v24 = sub_2440(&qword_1C57E0, &unk_171C60);
  sub_4348(v24);
  v26 = *(v25 + 64);
  v27 = sub_8C38();
  v28 = sub_5DE78(v27);
  v29 = sub_5DD0C(v28);
  v0[25] = sub_5DCDC(v29);
  v30 = sub_17960();

  return _swift_task_switch(v30, v31, v32);
}

uint64_t sub_4F2E4()
{
  sub_8A88();
  v4 = sub_5D9C8(v1, v2, v3);
  sub_5D41C(v4);
  v0[9] = v5;
  v7 = *(v6 + 64);
  v8 = sub_8BC0();
  v9 = sub_5E0FC(v8);
  v0[11] = v9;
  sub_888C(v9);
  v0[12] = v10;
  v12 = *(v11 + 64);
  v13 = sub_8C38();
  v14 = sub_5E054(v13);
  v15 = sub_5DF48(v14);
  v0[16] = sub_5E03C(v15);
  v16 = sub_2440(&qword_1C57F8, &unk_172510);
  v0[17] = v16;
  sub_4348(v16);
  v18 = *(v17 + 64);
  v19 = sub_8C38();
  v20 = sub_5DD24(v19);
  v0[20] = sub_5DF7C(v20);
  v21 = sub_2440(&qword_1C5690, &dword_16F320);
  sub_4348(v21);
  v23 = *(v22 + 64);
  v24 = sub_8C38();
  v0[22] = sub_5E09C(v24);
  v25 = sub_2440(&qword_1C57E0, &unk_171C60);
  sub_4348(v25);
  v27 = *(v26 + 64);
  v28 = sub_8C38();
  v29 = sub_5DD0C(v28);
  v30 = sub_5DCDC(v29);
  v31 = sub_5DF18(v30);
  v0[27] = sub_5DF30(v31);
  v32 = sub_17960();

  return _swift_task_switch(v32, v33, v34);
}

uint64_t sub_4F820()
{
  sub_5E06C();
  sub_C9EC();
  sub_5D720();
  sub_C990();
  *v3 = v2;
  v4 = *(v2 + 240);
  *v3 = *v1;

  sub_5DA54();
  v6 = *(v5 + 232);
  if (v0)
  {
  }

  else
  {
    sub_5E0CC();
  }

  sub_5D6DC();
  sub_38F74();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_4F944()
{
  sub_8A88();
  v0[9] = v1;
  v0[10] = v2;
  v0[8] = v3;
  v4 = sub_2440(&qword_1C6C68, &qword_172958);
  v0[11] = v4;
  sub_888C(v4);
  v0[12] = v5;
  v7 = *(v6 + 64);
  v8 = sub_8C38();
  v9 = sub_5E054(v8);
  v10 = sub_5DF48(v9);
  v11 = sub_5E03C(v10);
  v0[17] = sub_5DE18(v11);
  v12 = sub_16DBEC();
  v0[18] = v12;
  sub_888C(v12);
  v0[19] = v13;
  v15 = *(v14 + 64);
  v16 = sub_8C38();
  v0[21] = sub_5DDB4(v16);
  v17 = sub_16BF5C();
  v0[22] = v17;
  sub_888C(v17);
  v0[23] = v18;
  v20 = *(v19 + 64);
  v21 = sub_8C38();
  v22 = sub_5DCDC(v21);
  v23 = sub_5DF18(v22);
  v0[27] = sub_5DF30(v23);
  v24 = sub_2440(&qword_1C57F8, &unk_172510);
  v0[28] = v24;
  sub_4348(v24);
  v26 = *(v25 + 64);
  v0[29] = sub_8C38();
  v0[30] = swift_task_alloc();
  v0[31] = swift_task_alloc();
  v27 = sub_2440(&qword_1C5690, &dword_16F320);
  sub_4348(v27);
  v29 = *(v28 + 64);
  v0[32] = sub_8C38();
  v0[33] = swift_task_alloc();
  v30 = sub_2440(&qword_1C57E0, &unk_171C60);
  sub_4348(v30);
  v32 = *(v31 + 64);
  v0[34] = sub_8C38();
  v0[35] = swift_task_alloc();
  v0[36] = swift_task_alloc();
  v0[37] = swift_task_alloc();
  v0[38] = swift_task_alloc();
  v33 = sub_17960();

  return _swift_task_switch(v33, v34, v35);
}

uint64_t sub_4FB8C()
{
  v138 = v0;
  v3 = *(v0 + 72);
  [v3 minimum];
  v5 = v4;
  [v3 maximum];
  v6 = sub_5D928();
  if (v6)
  {
    v3 = v6;
    v8 = *(v0 + 304);
    sub_16BF3C();

    v9 = 0;
  }

  else
  {
    v9 = 1;
  }

  v10 = *(v0 + 64);
  sub_5DCC4(*(v0 + 304), v9, v7, *(v0 + 176));
  v11 = [v10 end];
  if (v11)
  {
    v14 = v11;
    v15 = *(v0 + 296);
    sub_16BF3C();

    v3 = 0;
  }

  v16 = *(v0 + 72);
  sub_5DC74(*(v0 + 296), v12, v13, *(v0 + 176));
  v17 = [v16 sampleStartDate];
  if (v17)
  {
    v3 = v17;
    v20 = *(v0 + 288);
    sub_16BF3C();
  }

  v21 = *(v0 + 72);
  v22 = sub_5D6A0(*(v0 + 288), v18, v19, *(v0 + 176));
  if (v22)
  {
    v25 = v22;
    v26 = *(v0 + 280);
    sub_16BF3C();

    v3 = 0;
  }

  v28 = *(v0 + 296);
  v27 = *(v0 + 304);
  v29 = *(v0 + 288);
  v30 = *(v0 + 264);
  v31 = *(v0 + 64);
  sub_5DC74(*(v0 + 280), v23, v24, *(v0 + 176));
  type metadata accessor for WellnessTime(0);
  sub_5D600();
  v135 = v32;
  *(v0 + 312) = v32;
  v33 = sub_16BD9C();
  v34 = sub_5D350(v33);
  if (v34)
  {
    v35 = v34;
    v36 = *(v0 + 216);
    v37 = *(v0 + 64);
    sub_16BF3C();

    v38 = [v37 end];
    if (v38)
    {
      v39 = v38;
      v40 = *(v0 + 256);
      v126 = *(v0 + 264);
      v129 = v3;
      v41 = *(v0 + 216);
      v133 = *(v0 + 248);
      v42 = *(v0 + 200);
      v43 = *(v0 + 184);
      v44 = *(v0 + 192);
      v45 = *(v0 + 176);
      v46 = *(v0 + 208);
      sub_16BF3C();

      v47 = *(v43 + 16);
      v48 = sub_5DBEC();
      v47(v48);
      (v47)(v44, v46, v45);
      sub_16BD5C();
      v31 = &dword_16F320;
      sub_5CFC8(v126, &qword_1C5690, &dword_16F320);
      sub_388E4();
      sub_214C(v49, v50, v51, v129);
      sub_5E1D8();
      sub_12093C(105, v126, v133);
      v52 = *(v43 + 8);
      v52(v46, v45);
      v52(v41, v45);
      goto LABEL_18;
    }

    (*(*(v0 + 184) + 8))(*(v0 + 216), *(v0 + 176));
  }

  v53 = [*(v0 + 72) *(v1 + 2728)];
  if (v53)
  {
    v55 = v53;
    v56 = *(v0 + 272);
    sub_16BF3C();

    v57 = 0;
  }

  else
  {
    v57 = 1;
  }

  v58 = *(v0 + 272);
  v60 = *(v0 + 240);
  v59 = *(v0 + 248);
  sub_5D8D0(v53, v57, v54, *(v0 + 176));
  sub_1218BC(105, v58, v61);
  v62 = sub_5CFC8(v58, &qword_1C57E0, &unk_171C60);
  sub_5DF94(v62, v63, &qword_1C57F8, &unk_172510);
LABEL_18:
  v64 = *(v0 + 248);
  v65 = *(v0 + 232);
  v66 = *(v0 + 168);
  v67 = *(v0 + 144);
  v68 = *(v0 + 152);
  v69 = sub_16DBBC();
  sub_5D954();
  v131 = v69;
  v130 = *(v68 + 16);
  v130(v66, v69, v67);
  v70 = sub_C9C8();
  sub_372FC(v70, v71);
  v72 = sub_16DBDC();
  v73 = sub_16E36C();
  v74 = os_log_type_enabled(v72, v73);
  v75 = *(v0 + 232);
  if (v74)
  {
    v76 = *(v0 + 224);
    v127 = *(v0 + 168);
    v78 = *(v0 + 144);
    v77 = *(v0 + 152);
    sub_8BD8();
    v137 = sub_5D98C();
    *v31 = 136315138;
    v79 = sub_16E3DC();
    v81 = v80;
    sub_5CFC8(v75, &qword_1C57F8, &unk_172510);
    sub_3AB7C(v79, v81, &v137);
    sub_5DCF4();
    *(v31 + 1) = v75;
    _os_log_impl(&def_259DC, v72, v73, "Deep Link punch out: %s", v31, 0xCu);
    sub_5D6EC();
    sub_5D970();

    v82 = *(v77 + 8);
    v82(v127, v78);
  }

  else
  {
    v83 = *(v0 + 168);
    v84 = *(v0 + 144);
    v85 = *(v0 + 152);

    sub_5CFC8(v75, &qword_1C57F8, &unk_172510);
    v82 = *(v85 + 8);
    v86 = sub_C9E0();
    (v82)(v86);
  }

  sub_A6F70(*(v0 + 72));
  if (!v87)
  {
    sub_5CFC8(*(v0 + 264), &qword_1C5690, &dword_16F320);

    sub_5DB5C();
    v132 = *(v0 + 120);
    v134 = *(v0 + 112);
    v136 = *(v0 + 104);
    sub_5CFC8(v75, &qword_1C57F8, &unk_172510);

    sub_5D8AC();
    sub_5E24C();

    __asm { BRAA            X2, X16 }
  }

  v88 = *(v0 + 136);
  v125 = *(v0 + 144);
  v128 = v82;
  v89 = *(v0 + 128);
  v123 = *(v0 + 120);
  v124 = *(v0 + 160);
  v90 = *(v0 + 112);
  v122 = *(v0 + 104);
  v92 = *(v0 + 88);
  v91 = *(v0 + 96);
  v93 = *(v0 + 72);
  sub_25908(0, &qword_1C6C70, NSUnitMass_ptr);
  sub_38B40();
  v94 = sub_9C23C();
  *(v0 + 320) = v94;
  [v93 minimum];
  v95 = v94;
  sub_16BCEC();
  [v93 maximum];
  v96 = v95;
  sub_16BCEC();
  v97 = objc_opt_self();
  v98 = [v97 poundsMass];
  sub_16BD1C();

  v99 = [v97 poundsMass];
  sub_16BD1C();

  sub_16BD0C();
  v100 = *(v91 + 8);
  *(v0 + 328) = v100;
  *(v0 + 336) = (v91 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v100(v122, v92);
  v100(v90, v92);
  sub_16BCFC();
  v102 = v101;
  v100(v123, v92);
  swift_beginAccess();
  v130(v124, v131, v125);
  v103 = sub_16DBDC();
  v104 = sub_16E36C();
  if (os_log_type_enabled(v103, v104))
  {
    v105 = swift_slowAlloc();
    *v105 = 134218240;
    *(v105 + 4) = v102;
    *(v105 + 12) = 1024;
    *(v105 + 14) = v102 < 0.5;
    _os_log_impl(&def_259DC, v103, v104, "Weight difference is %f lbs, isDifferenceNegligible: %{BOOL}d", v105, 0x12u);
    sub_8A2C();
  }

  v106 = *(v0 + 248);
  v108 = *(v0 + 152);
  v107 = *(v0 + 160);
  v109 = *(v0 + 144);
  v111 = *(v0 + 72);
  v110 = *(v0 + 80);
  v112 = *(v0 + 64);

  v113 = sub_C9E0();
  v128(v113);
  v114 = sub_2D20((v110 + 120), *(v110 + 144));
  v115 = swift_task_alloc();
  *(v0 + 344) = v115;
  *(v115 + 16) = v135;
  *(v115 + 24) = v5 == v2;
  *(v115 + 32) = v111;
  *(v115 + 40) = 105;
  *(v115 + 48) = v112;
  *(v115 + 56) = v106;
  v116 = *v114;
  v117 = swift_task_alloc();
  *(v0 + 352) = v117;
  *v117 = v0;
  v117[1] = sub_504B8;
  sub_5E24C();

  return sub_740D8();
}

uint64_t sub_504B8()
{
  sub_5E06C();
  sub_C9EC();
  sub_5D720();
  v4 = v3;
  sub_C990();
  *v5 = v3;
  v6 = *(v3 + 352);
  *v5 = *v2;

  sub_5DA54();
  v8 = *(v7 + 344);
  if (v1)
  {
  }

  else
  {
    *(v4 + 360) = v0;
  }

  sub_5D6DC();
  sub_38F74();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_505E4()
{
  v28 = v0[45];
  v2 = v0[39];
  v3 = v0[40];

  v4 = sub_5E000();
  v1(v4);
  v5 = sub_C9F8();
  v1(v5);
  sub_5CFC8(v3, &qword_1C5690, &dword_16F320);
  v7 = v0[37];
  v6 = v0[38];
  v9 = v0[35];
  v8 = v0[36];
  v11 = v0[33];
  v10 = v0[34];
  v12 = v0[32];
  v13 = v0[30];
  v16 = v0[29];
  v17 = v0[27];
  v18 = v0[26];
  v19 = v0[25];
  v20 = v0[24];
  v21 = v0[21];
  v22 = v0[20];
  v23 = v0[17];
  v24 = v0[16];
  v25 = v0[15];
  v26 = v0[14];
  v27 = v0[13];
  sub_5CFC8(v0[31], &qword_1C57F8, &unk_172510);

  sub_5D948();

  return v14(v28);
}

uint64_t sub_5079C()
{
  v2 = v0[39];
  v3 = v0[40];

  v4 = sub_5E000();
  v1(v4);
  v5 = sub_C9F8();
  v1(v5);
  sub_5CFC8(v3, &qword_1C5690, &dword_16F320);
  sub_5DB5C();
  v9 = v0[15];
  v10 = v0[14];
  v11 = v0[13];
  sub_5CFC8(v3, &qword_1C57F8, &unk_172510);

  v6 = sub_5D8AC();

  return v7(v6);
}

uint64_t sub_5091C()
{
  sub_8A88();
  v4 = sub_5D9C8(v1, v2, v3);
  sub_5D41C(v4);
  v0[9] = v5;
  v7 = *(v6 + 64);
  v0[10] = sub_8BC0();
  v8 = sub_2440(&qword_1C5800, &unk_16F510);
  sub_4348(v8);
  v10 = *(v9 + 64);
  v0[11] = sub_8BC0();
  v11 = sub_16BF5C();
  v0[12] = v11;
  sub_888C(v11);
  v0[13] = v12;
  v14 = *(v13 + 64);
  v15 = sub_8C38();
  v16 = sub_5DF48(v15);
  v17 = sub_5E03C(v16);
  v0[17] = sub_5DE18(v17);
  v18 = sub_2440(&qword_1C57F8, &unk_172510);
  v0[18] = v18;
  sub_4348(v18);
  v20 = *(v19 + 64);
  v21 = sub_8C38();
  v22 = sub_5DF7C(v21);
  v0[21] = sub_5DDB4(v22);
  v23 = sub_2440(&qword_1C5690, &dword_16F320);
  sub_4348(v23);
  v25 = *(v24 + 64);
  v26 = sub_8C38();
  v0[23] = sub_5DE78(v26);
  v27 = sub_2440(&qword_1C57E0, &unk_171C60);
  sub_4348(v27);
  v29 = *(v28 + 64);
  v30 = sub_8C38();
  v31 = sub_5DCDC(v30);
  v32 = sub_5DF18(v31);
  v0[27] = sub_5DF30(v32);
  v0[28] = swift_task_alloc();
  v33 = sub_17960();

  return _swift_task_switch(v33, v34, v35);
}

uint64_t sub_50FC4()
{
  sub_5E06C();
  sub_C9EC();
  sub_5D720();
  v4 = v3;
  sub_C990();
  *v5 = v3;
  v6 = *(v3 + 248);
  *v5 = *v2;

  sub_5DA54();
  v8 = *(v7 + 240);
  if (v1)
  {
  }

  else
  {
    *(v4 + 256) = v0;
  }

  sub_5D6DC();
  sub_38F74();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_510F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_5E1BC();
  sub_5DC5C();
  v46 = v20[32];
  v21 = v20[29];

  v23 = v20[27];
  v22 = v20[28];
  v25 = v20[25];
  v24 = v20[26];
  v26 = v20[24];
  v28 = v20[21];
  v27 = v20[22];
  v39 = v20[20];
  v40 = v20[19];
  v41 = v20[17];
  v42 = v20[16];
  v43 = v20[15];
  v44 = v20[14];
  v29 = v20[11];
  v45 = v20[10];
  sub_5CFC8(v20[23], &qword_1C5690, &dword_16F320);
  sub_5CFC8(v29, &qword_1C5800, &unk_16F510);
  sub_5CFC8(v28, &qword_1C57F8, &unk_172510);

  sub_5D948();
  sub_5E1A0();

  return v32(v30, v31, v32, v33, v34, v35, v36, v37, a9, v39, v40, v41, v42, v43, v44, v45, v46, a18, a19, a20);
}

uint64_t sub_51254(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  sub_5DFE4();
  sub_5E12C();
  v19 = v18[29];

  v21 = v18[27];
  v20 = v18[28];
  v23 = v18[25];
  v22 = v18[26];
  v24 = v18[24];
  v26 = v18[21];
  v25 = v18[22];
  v37 = v18[20];
  v38 = v18[19];
  v39 = v18[17];
  v40 = v18[16];
  v41 = v18[15];
  v42 = v18[14];
  v27 = v18[11];
  v43 = v18[10];
  sub_5CFC8(v18[23], &qword_1C5690, &dword_16F320);
  sub_5CFC8(v27, &qword_1C5800, &unk_16F510);
  sub_5CFC8(v26, &qword_1C57F8, &unk_172510);

  sub_5D8AC();
  sub_5DFC8();

  return v30(v28, v29, v30, v31, v32, v33, v34, v35, v37, v38, v39, v40, v41, v42, v43, a16, a17, a18);
}

uint64_t sub_513AC()
{
  sub_8A88();
  v4 = sub_5D9C8(v1, v2, v3);
  sub_5D41C(v4);
  v0[9] = v5;
  v7 = *(v6 + 64);
  v0[10] = sub_8BC0();
  v8 = sub_2440(&qword_1C57F8, &unk_172510);
  sub_5D844(v8);
  v10 = *(v9 + 64);
  v11 = sub_8C38();
  v12 = sub_5DEA8(v11);
  v13 = sub_5DEC0(v12);
  v0[14] = v13;
  sub_888C(v13);
  v0[15] = v14;
  v16 = *(v15 + 64);
  v17 = sub_8C38();
  v18 = sub_5DE18(v17);
  v19 = sub_5DE60(v18);
  v0[19] = sub_5DD24(v19);
  v20 = sub_2440(&qword_1C5690, &dword_16F320);
  sub_4348(v20);
  v22 = *(v21 + 64);
  v23 = sub_8C38();
  v0[21] = sub_5DDB4(v23);
  v24 = sub_2440(&qword_1C57E0, &unk_171C60);
  sub_4348(v24);
  v26 = *(v25 + 64);
  v27 = sub_8C38();
  v28 = sub_5DE78(v27);
  v29 = sub_5DD0C(v28);
  v0[25] = sub_5DCDC(v29);
  v30 = sub_17960();

  return _swift_task_switch(v30, v31, v32);
}

uint64_t sub_51814()
{
  sub_8A88();
  v4 = sub_5D9C8(v1, v2, v3);
  sub_5D41C(v4);
  v0[9] = v5;
  v7 = *(v6 + 64);
  v0[10] = sub_8BC0();
  v8 = sub_2440(&qword_1C57F8, &unk_172510);
  sub_5D844(v8);
  v10 = *(v9 + 64);
  v11 = sub_8C38();
  v12 = sub_5DEA8(v11);
  v13 = sub_5DEC0(v12);
  v0[14] = v13;
  sub_888C(v13);
  v0[15] = v14;
  v16 = *(v15 + 64);
  v17 = sub_8C38();
  v18 = sub_5DE18(v17);
  v19 = sub_5DE60(v18);
  v0[19] = sub_5DD24(v19);
  v20 = sub_2440(&qword_1C5690, &dword_16F320);
  sub_4348(v20);
  v22 = *(v21 + 64);
  v23 = sub_8C38();
  v0[21] = sub_5DDB4(v23);
  v24 = sub_2440(&qword_1C57E0, &unk_171C60);
  sub_4348(v24);
  v26 = *(v25 + 64);
  v27 = sub_8C38();
  v28 = sub_5DE78(v27);
  v29 = sub_5DD0C(v28);
  v0[25] = sub_5DCDC(v29);
  v30 = sub_17960();

  return _swift_task_switch(v30, v31, v32);
}

uint64_t sub_51C7C()
{
  sub_8A88();
  v4 = sub_5D9C8(v1, v2, v3);
  sub_5D41C(v4);
  v0[9] = v5;
  v7 = *(v6 + 64);
  v0[10] = sub_8BC0();
  v8 = sub_2440(&qword_1C57F8, &unk_172510);
  sub_5D844(v8);
  v10 = *(v9 + 64);
  v11 = sub_8C38();
  v12 = sub_5DEA8(v11);
  v13 = sub_5DEC0(v12);
  v0[14] = v13;
  sub_888C(v13);
  v0[15] = v14;
  v16 = *(v15 + 64);
  v17 = sub_8C38();
  v18 = sub_5DE18(v17);
  v19 = sub_5DE60(v18);
  v0[19] = sub_5DD24(v19);
  v20 = sub_2440(&qword_1C5690, &dword_16F320);
  sub_4348(v20);
  v22 = *(v21 + 64);
  v23 = sub_8C38();
  v0[21] = sub_5DDB4(v23);
  v24 = sub_2440(&qword_1C57E0, &unk_171C60);
  sub_4348(v24);
  v26 = *(v25 + 64);
  v27 = sub_8C38();
  v28 = sub_5DE78(v27);
  v29 = sub_5DD0C(v28);
  v0[25] = sub_5DCDC(v29);
  v30 = sub_17960();

  return _swift_task_switch(v30, v31, v32);
}

uint64_t sub_520E4()
{
  sub_8A88();
  v4 = sub_5D9C8(v1, v2, v3);
  sub_5D41C(v4);
  v0[9] = v5;
  v7 = *(v6 + 64);
  v0[10] = sub_8BC0();
  v8 = sub_2440(&qword_1C57F8, &unk_172510);
  sub_5D844(v8);
  v10 = *(v9 + 64);
  v11 = sub_8C38();
  v12 = sub_5DEA8(v11);
  v13 = sub_5DEC0(v12);
  v0[14] = v13;
  sub_888C(v13);
  v0[15] = v14;
  v16 = *(v15 + 64);
  v17 = sub_8C38();
  v18 = sub_5DE18(v17);
  v19 = sub_5DE60(v18);
  v0[19] = sub_5DD24(v19);
  v20 = sub_2440(&qword_1C5690, &dword_16F320);
  sub_4348(v20);
  v22 = *(v21 + 64);
  v23 = sub_8C38();
  v0[21] = sub_5DDB4(v23);
  v24 = sub_2440(&qword_1C57E0, &unk_171C60);
  sub_4348(v24);
  v26 = *(v25 + 64);
  v27 = sub_8C38();
  v28 = sub_5DE78(v27);
  v29 = sub_5DD0C(v28);
  v0[25] = sub_5DCDC(v29);
  v30 = sub_17960();

  return _swift_task_switch(v30, v31, v32);
}

uint64_t sub_5254C()
{
  sub_8A88();
  v4 = sub_5D9C8(v1, v2, v3);
  sub_5D41C(v4);
  v0[9] = v5;
  v7 = *(v6 + 64);
  v8 = sub_8BC0();
  v9 = sub_5E0FC(v8);
  v0[11] = v9;
  sub_888C(v9);
  v0[12] = v10;
  v12 = *(v11 + 64);
  v13 = sub_8C38();
  v14 = sub_5E054(v13);
  v15 = sub_5DF48(v14);
  v0[16] = sub_5E03C(v15);
  v16 = sub_2440(&qword_1C57F8, &unk_172510);
  v0[17] = v16;
  sub_4348(v16);
  v18 = *(v17 + 64);
  v19 = sub_8C38();
  v20 = sub_5DD24(v19);
  v0[20] = sub_5DF7C(v20);
  v21 = sub_2440(&qword_1C5690, &dword_16F320);
  sub_4348(v21);
  v23 = *(v22 + 64);
  v24 = sub_8C38();
  v0[22] = sub_5E09C(v24);
  v25 = sub_2440(&qword_1C57E0, &unk_171C60);
  sub_4348(v25);
  v27 = *(v26 + 64);
  v28 = sub_8C38();
  v29 = sub_5DD0C(v28);
  v30 = sub_5DCDC(v29);
  v31 = sub_5DF18(v30);
  v0[27] = sub_5DF30(v31);
  v32 = sub_17960();

  return _swift_task_switch(v32, v33, v34);
}

uint64_t sub_52A88()
{
  sub_8A88();
  v0[9] = v1;
  v0[10] = v2;
  v0[8] = v3;
  v4 = sub_2440(&qword_1C5800, &unk_16F510);
  sub_4348(v4);
  v6 = *(v5 + 64);
  v0[11] = sub_8BC0();
  v7 = sub_16DBEC();
  v0[12] = v7;
  sub_888C(v7);
  v0[13] = v8;
  v10 = *(v9 + 64);
  v11 = sub_8C38();
  v0[15] = sub_5DF48(v11);
  v12 = sub_16BF5C();
  v0[16] = v12;
  sub_888C(v12);
  v0[17] = v13;
  v15 = *(v14 + 64);
  v16 = sub_8C38();
  v17 = sub_5DD24(v16);
  v18 = sub_5DF7C(v17);
  v0[21] = sub_5DDB4(v18);
  v19 = sub_2440(&qword_1C57F8, &unk_172510);
  v0[22] = v19;
  sub_4348(v19);
  v21 = *(v20 + 64);
  v22 = sub_8C38();
  v23 = sub_5DD0C(v22);
  v0[25] = sub_5DCDC(v23);
  v24 = sub_2440(&qword_1C5690, &dword_16F320);
  sub_4348(v24);
  v26 = *(v25 + 64);
  v27 = sub_8C38();
  v0[27] = sub_5DF30(v27);
  v28 = sub_2440(&qword_1C57E0, &unk_171C60);
  sub_4348(v28);
  v30 = *(v29 + 64);
  v0[28] = sub_8C38();
  v0[29] = swift_task_alloc();
  v0[30] = swift_task_alloc();
  v0[31] = swift_task_alloc();
  v0[32] = swift_task_alloc();
  v31 = sub_17960();

  return _swift_task_switch(v31, v32, v33);
}

uint64_t sub_52C7C()
{
  v156 = v1;
  v3 = *(v1 + 64);
  sub_5DA48();
  v6 = [v4 v5];
  if (v6)
  {
    v0 = v6;
    v8 = *(v1 + 256);
    sub_16BF3C();

    v9 = 0;
  }

  else
  {
    v9 = 1;
  }

  v10 = *(v1 + 64);
  sub_5DCC4(*(v1 + 256), v9, v7, *(v1 + 128));
  v11 = [v10 end];
  if (v11)
  {
    v14 = v11;
    v15 = *(v1 + 248);
    sub_16BF3C();

    v0 = 0;
  }

  v16 = *(v1 + 72);
  sub_5DC74(*(v1 + 248), v12, v13, *(v1 + 128));
  v17 = [v16 sampleStartDate];
  if (v17)
  {
    v0 = v17;
    v20 = *(v1 + 240);
    sub_16BF3C();
  }

  v21 = *(v1 + 72);
  v22 = sub_5D6A0(*(v1 + 240), v18, v19, *(v1 + 128));
  if (v22)
  {
    v25 = v22;
    v26 = *(v1 + 232);
    sub_16BF3C();

    v0 = 0;
  }

  v28 = *(v1 + 248);
  v27 = *(v1 + 256);
  v29 = *(v1 + 240);
  v30 = *(v1 + 216);
  v31 = *(v1 + 64);
  sub_5DC74(*(v1 + 232), v23, v24, *(v1 + 128));
  type metadata accessor for WellnessTime(0);
  sub_5D600();
  v154 = v32;
  *(v1 + 264) = v32;
  v33 = sub_16BD9C();
  v34 = sub_5D350(v33);
  if (v34)
  {
    v35 = v34;
    v36 = *(v1 + 168);
    v37 = *(v1 + 64);
    sub_16BF3C();

    v38 = [v37 end];
    if (v38)
    {
      v39 = v38;
      v40 = *(v1 + 208);
      v143 = *(v1 + 216);
      v146 = v0;
      v41 = *(v1 + 168);
      v151 = *(v1 + 200);
      v42 = *(v1 + 152);
      v43 = *(v1 + 136);
      v44 = *(v1 + 144);
      v45 = *(v1 + 128);
      v46 = *(v1 + 160);
      sub_16BF3C();

      v47 = *(v43 + 16);
      v48 = sub_5DBEC();
      v47(v48);
      (v47)(v44, v46, v45);
      sub_16BD5C();
      sub_5CFC8(v143, &qword_1C5690, &dword_16F320);
      sub_388E4();
      sub_214C(v49, v50, v51, v146);
      sub_5E1D8();
      sub_12093C(162, v143, v151);
      v52 = *(v43 + 8);
      v52(v46, v45);
      v52(v41, v45);
      goto LABEL_18;
    }

    (*(*(v1 + 136) + 8))(*(v1 + 168), *(v1 + 128));
  }

  v53 = [*(v1 + 72) *(v2 + 2728)];
  if (v53)
  {
    v55 = v53;
    v56 = *(v1 + 224);
    sub_16BF3C();

    v57 = 0;
  }

  else
  {
    v57 = 1;
  }

  v58 = *(v1 + 224);
  v60 = *(v1 + 192);
  v59 = *(v1 + 200);
  sub_5D8D0(v53, v57, v54, *(v1 + 128));
  sub_1218BC(162, v58, v61);
  v62 = sub_5CFC8(v58, &qword_1C57E0, &unk_171C60);
  sub_5DF94(v62, v63, &qword_1C57F8, &unk_172510);
LABEL_18:
  v64 = *(v1 + 200);
  v65 = *(v1 + 184);
  v66 = *(v1 + 120);
  v67 = *(v1 + 96);
  v68 = *(v1 + 104);
  v69 = sub_16DBBC();
  sub_5D954();
  v70 = *(v68 + 16);
  v70(v66, v69, v67);
  v71 = sub_C9C8();
  sub_372FC(v71, v72);
  v73 = sub_16DBDC();
  v74 = sub_16E36C();
  v75 = os_log_type_enabled(v73, v74);
  v76 = *(v1 + 184);
  if (v75)
  {
    v152 = v69;
    v77 = *(v1 + 176);
    v78 = *(v1 + 104);
    v144 = *(v1 + 96);
    v147 = *(v1 + 120);
    v79 = sub_8BD8();
    v149 = v70;
    v80 = swift_slowAlloc();
    v155 = v80;
    *v79 = 136315138;
    v81 = sub_16E3DC();
    v83 = v82;
    sub_5CFC8(v76, &qword_1C57F8, &unk_172510);
    v84 = v81;
    v69 = v152;
    v85 = sub_3AB7C(v84, v83, &v155);

    *(v79 + 4) = v85;
    _os_log_impl(&def_259DC, v73, v74, "Deep Link punch out: %s", v79, 0xCu);
    sub_2D64(v80);
    v70 = v149;
    sub_8A2C();
    sub_8A2C();

    v88 = *(v78 + 8);
    v86 = (v78 + 8);
    v87 = v88;
    (v88)(v147, v144);
  }

  else
  {
    v89 = *(v1 + 120);
    v90 = *(v1 + 96);
    v91 = *(v1 + 104);

    sub_5CFC8(v76, &qword_1C57F8, &unk_172510);
    v92 = *(v91 + 8);
    v86 = (v91 + 8);
    v87 = v92;
    (v92)(v89, v90);
  }

  v93 = sub_A6F70(*(v1 + 72));
  v95 = sub_13A5C4(v93, v94);
  v97 = v96;
  *(v1 + 272) = v96;

  if (!v97)
  {
    v132 = *(v1 + 112);
    v133 = *(v1 + 96);
    swift_beginAccess();
    v70(v132, v69, v133);
    v134 = sub_16DBDC();
    v135 = sub_16E37C();
    v136 = os_log_type_enabled(v134, v135);
    v138 = *(v1 + 104);
    v137 = *(v1 + 112);
    v139 = *(v1 + 96);
    if (v136)
    {
      v86 = swift_slowAlloc();
      *v86 = 0;
      _os_log_impl(&def_259DC, v134, v135, "Failed to execute height pattern: no unit found in intent response.", v86, 2u);
      sub_8A2C();
    }

    v140 = sub_C9F8();
    v87(v140);
    sub_5DB24();
    sub_5CFC8(v86, &qword_1C5690, &dword_16F320);
    sub_5CFC8(v87, &qword_1C57F8, &unk_172510);

    sub_5D8AC();
    sub_5E228();

    __asm { BRAA            X2, X16 }
  }

  v98 = *(v1 + 88);
  v148 = *(v1 + 80);
  v99 = *(v1 + 72);
  v150 = *(v1 + 64);
  v153 = *(v1 + 200);
  [v99 minimum];
  v100 = sub_A6F70(v99);
  sub_5E080(v100, v101);

  [v99 maximum];
  v102 = sub_A6F70(v99);
  sub_5E080(v102, v103);

  sub_5840C(v99);
  v104 = sub_A6F70(v99);
  v106 = sub_5E080(v104, v105);

  v107 = sub_16D2DC();
  sub_8D14(v107);
  sub_16D2CC();
  sub_16D40C();

  sub_C9E0();
  sub_16E23C();
  v108 = sub_16D5CC();
  sub_388E4();
  sub_214C(v109, v110, v111, v108);
  sub_16D3FC();

  v145 = v95;
  v112 = sub_5DB18();
  sub_5CFC8(v112, v113, v114);
  v115 = sub_16D3EC();
  *(v1 + 280) = v115;

  v116 = *(v107 + 48);
  v117 = *(v107 + 52);
  swift_allocObject();
  sub_16D2CC();
  sub_16D40C();

  sub_C9E0();
  sub_16E23C();
  sub_388E4();
  sub_214C(v118, v119, v120, v108);
  sub_16D3FC();

  v121 = sub_5DB18();
  sub_5CFC8(v121, v122, &unk_16F510);
  v123 = sub_16D3EC();
  *(v1 + 288) = v123;

  [v99 minimum];
  [v99 maximum];
  sub_A6F70(v99);
  sub_5845C();
  v125 = v124;

  v126 = sub_2D20((v148 + 120), *(v148 + 144));
  v127 = swift_task_alloc();
  *(v1 + 296) = v127;
  *(v127 + 16) = v154;
  *(v127 + 24) = v125 & 1;
  *(v127 + 32) = v115;
  *(v127 + 40) = v123;
  *(v127 + 48) = v106;
  *(v127 + 56) = v145;
  *(v127 + 64) = v97;
  *(v127 + 72) = v150;
  *(v127 + 80) = v99;
  *(v127 + 88) = v153;
  v128 = *v126;
  v129 = swift_task_alloc();
  *(v1 + 304) = v129;
  *v129 = v1;
  v129[1] = sub_535EC;
  sub_5E228();

  return sub_71A7C();
}

uint64_t sub_535EC()
{
  sub_C9EC();
  v3 = v2;
  v4 = *v1;
  v5 = *v1;
  sub_C990();
  *v6 = v5;
  v7 = v4[38];
  *v6 = *v1;

  v8 = v4[37];
  v9 = v4[34];
  if (v0)
  {

    v10 = sub_538C4;
  }

  else
  {

    v5[39] = v3;

    v10 = sub_53758;
  }

  return _swift_task_switch(v10, 0, 0);
}

uint64_t sub_53758(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_5E1BC();
  sub_5DC5C();
  v49 = v20[39];
  v21 = v20[35];
  v22 = v20[33];

  v23 = v20[36];

  v24 = v20[31];
  v25 = v20[32];
  v27 = v20[29];
  v26 = v20[30];
  v28 = v20[28];
  v30 = v20[25];
  v29 = v20[26];
  v31 = v20[24];
  v41 = v20[23];
  v42 = v20[21];
  v43 = v20[20];
  v44 = v20[19];
  v45 = v20[18];
  v46 = v20[15];
  v47 = v20[14];
  v48 = v20[11];
  sub_5CFC8(v20[27], &qword_1C5690, &dword_16F320);
  sub_5CFC8(v30, &qword_1C57F8, &unk_172510);

  sub_5D948();
  sub_5E1A0();

  return v34(v32, v33, v34, v35, v36, v37, v38, v39, v41, v42, v43, v44, v45, v46, v47, v48, v49, a18, a19, a20);
}

uint64_t sub_538C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_5E1BC();
  sub_5DC5C();
  v23 = v20[35];
  v24 = v20[33];

  v25 = v20[36];

  sub_5DB24();
  sub_5CFC8(v21, &qword_1C5690, &dword_16F320);
  sub_5CFC8(v22, &qword_1C57F8, &unk_172510);

  sub_5D8AC();
  sub_5E1A0();

  return v28(v26, v27, v28, v29, v30, v31, v32, v33, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

uint64_t sub_539F4()
{
  sub_8A88();
  v4 = sub_5D9C8(v1, v2, v3);
  sub_5D41C(v4);
  v0[9] = v5;
  v7 = *(v6 + 64);
  v8 = sub_8BC0();
  v9 = sub_5E0FC(v8);
  v0[11] = v9;
  sub_888C(v9);
  v0[12] = v10;
  v12 = *(v11 + 64);
  v13 = sub_8C38();
  v14 = sub_5E054(v13);
  v15 = sub_5DF48(v14);
  v0[16] = sub_5E03C(v15);
  v16 = sub_2440(&qword_1C57F8, &unk_172510);
  v0[17] = v16;
  sub_4348(v16);
  v18 = *(v17 + 64);
  v19 = sub_8C38();
  v20 = sub_5DD24(v19);
  v0[20] = sub_5DF7C(v20);
  v21 = sub_2440(&qword_1C5690, &dword_16F320);
  sub_4348(v21);
  v23 = *(v22 + 64);
  v24 = sub_8C38();
  v0[22] = sub_5E09C(v24);
  v25 = sub_2440(&qword_1C57E0, &unk_171C60);
  sub_4348(v25);
  v27 = *(v26 + 64);
  v28 = sub_8C38();
  v29 = sub_5DD0C(v28);
  v30 = sub_5DCDC(v29);
  v31 = sub_5DF18(v30);
  v0[27] = sub_5DF30(v31);
  v32 = sub_17960();

  return _swift_task_switch(v32, v33, v34);
}

uint64_t sub_53F30()
{
  sub_8A88();
  v4 = sub_5D9C8(v1, v2, v3);
  sub_5D41C(v4);
  v0[9] = v5;
  v7 = *(v6 + 64);
  v0[10] = sub_8BC0();
  v8 = sub_2440(&qword_1C57F8, &unk_172510);
  sub_5D844(v8);
  v10 = *(v9 + 64);
  v11 = sub_8C38();
  v12 = sub_5DEA8(v11);
  v13 = sub_5DEC0(v12);
  v0[14] = v13;
  sub_888C(v13);
  v0[15] = v14;
  v16 = *(v15 + 64);
  v17 = sub_8C38();
  v18 = sub_5DE18(v17);
  v19 = sub_5DE60(v18);
  v0[19] = sub_5DD24(v19);
  v20 = sub_2440(&qword_1C5690, &dword_16F320);
  sub_4348(v20);
  v22 = *(v21 + 64);
  v23 = sub_8C38();
  v0[21] = sub_5DDB4(v23);
  v24 = sub_2440(&qword_1C57E0, &unk_171C60);
  sub_4348(v24);
  v26 = *(v25 + 64);
  v27 = sub_8C38();
  v28 = sub_5DE78(v27);
  v29 = sub_5DD0C(v28);
  v0[25] = sub_5DCDC(v29);
  v30 = sub_17960();

  return _swift_task_switch(v30, v31, v32);
}

uint64_t sub_54398()
{
  sub_8A88();
  v4 = sub_5D9C8(v1, v2, v3);
  sub_5D41C(v4);
  v0[9] = v5;
  v7 = *(v6 + 64);
  v8 = sub_8BC0();
  v9 = sub_5E0FC(v8);
  v0[11] = v9;
  sub_888C(v9);
  v0[12] = v10;
  v12 = *(v11 + 64);
  v13 = sub_8C38();
  v14 = sub_5E054(v13);
  v15 = sub_5DF48(v14);
  v0[16] = sub_5E03C(v15);
  v16 = sub_2440(&qword_1C57F8, &unk_172510);
  v0[17] = v16;
  sub_4348(v16);
  v18 = *(v17 + 64);
  v19 = sub_8C38();
  v20 = sub_5DD24(v19);
  v0[20] = sub_5DF7C(v20);
  v21 = sub_2440(&qword_1C5690, &dword_16F320);
  sub_4348(v21);
  v23 = *(v22 + 64);
  v24 = sub_8C38();
  v0[22] = sub_5E09C(v24);
  v25 = sub_2440(&qword_1C57E0, &unk_171C60);
  sub_4348(v25);
  v27 = *(v26 + 64);
  v28 = sub_8C38();
  v29 = sub_5DD0C(v28);
  v30 = sub_5DCDC(v29);
  v31 = sub_5DF18(v30);
  v0[27] = sub_5DF30(v31);
  v32 = sub_17960();

  return _swift_task_switch(v32, v33, v34);
}

uint64_t sub_548D4()
{
  sub_5E06C();
  sub_C9EC();
  sub_5D720();
  sub_C990();
  *v3 = v2;
  v4 = *(v2 + 240);
  *v3 = *v1;

  sub_5DA54();
  v6 = *(v5 + 232);
  if (v0)
  {
  }

  else
  {
    sub_5E0CC();
  }

  sub_5D6DC();
  sub_38F74();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_549F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  sub_5DFE4();
  sub_5E12C();
  v43 = v18[31];
  v19 = v18[28];

  v21 = v18[26];
  v20 = v18[27];
  v22 = v18[24];
  v23 = v18[25];
  v24 = v18[23];
  v26 = v18[20];
  v25 = v18[21];
  v27 = v18[19];
  v37 = v18[18];
  v38 = v18[16];
  v39 = v18[15];
  v40 = v18[14];
  v41 = v18[13];
  v42 = v18[10];
  sub_5CFC8(v18[22], &qword_1C5690, &dword_16F320);
  sub_5CFC8(v26, &qword_1C57F8, &unk_172510);

  sub_5D948();
  sub_5DFC8();

  return v30(v28, v29, v30, v31, v32, v33, v34, v35, v37, v38, v39, v40, v41, v42, v43, a16, a17, a18);
}

uint64_t sub_54B38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  sub_5DFE4();
  sub_5E12C();
  v19 = v18[28];

  v21 = v18[26];
  v20 = v18[27];
  v22 = v18[24];
  v23 = v18[25];
  v24 = v18[23];
  v26 = v18[20];
  v25 = v18[21];
  v27 = v18[19];
  v37 = v18[18];
  v38 = v18[16];
  v39 = v18[15];
  v40 = v18[14];
  v41 = v18[13];
  v42 = v18[10];
  sub_5CFC8(v18[22], &qword_1C5690, &dword_16F320);
  sub_5CFC8(v26, &qword_1C57F8, &unk_172510);

  sub_5D8AC();
  sub_5DFC8();

  return v30(v28, v29, v30, v31, v32, v33, v34, v35, a9, v37, v38, v39, v40, v41, v42, a16, a17, a18);
}

uint64_t sub_54C6C()
{
  sub_8A88();
  v4 = sub_5D9C8(v1, v2, v3);
  sub_5D41C(v4);
  v0[9] = v5;
  v7 = *(v6 + 64);
  v0[10] = sub_8BC0();
  v8 = sub_2440(&qword_1C57F8, &unk_172510);
  sub_5D844(v8);
  v10 = *(v9 + 64);
  v11 = sub_8C38();
  v12 = sub_5DEA8(v11);
  v13 = sub_5DEC0(v12);
  v0[14] = v13;
  sub_888C(v13);
  v0[15] = v14;
  v16 = *(v15 + 64);
  v17 = sub_8C38();
  v18 = sub_5DE18(v17);
  v19 = sub_5DE60(v18);
  v0[19] = sub_5DD24(v19);
  v20 = sub_2440(&qword_1C5690, &dword_16F320);
  sub_4348(v20);
  v22 = *(v21 + 64);
  v23 = sub_8C38();
  v0[21] = sub_5DDB4(v23);
  v24 = sub_2440(&qword_1C57E0, &unk_171C60);
  sub_4348(v24);
  v26 = *(v25 + 64);
  v27 = sub_8C38();
  v28 = sub_5DE78(v27);
  v29 = sub_5DD0C(v28);
  v0[25] = sub_5DCDC(v29);
  v30 = sub_17960();

  return _swift_task_switch(v30, v31, v32);
}

uint64_t sub_550D4()
{
  sub_8A88();
  v4 = sub_5D9C8(v1, v2, v3);
  sub_5D41C(v4);
  v0[9] = v5;
  v7 = *(v6 + 64);
  v8 = sub_8BC0();
  v9 = sub_5E0FC(v8);
  v0[11] = v9;
  sub_888C(v9);
  v0[12] = v10;
  v12 = *(v11 + 64);
  v13 = sub_8C38();
  v14 = sub_5E054(v13);
  v15 = sub_5DF48(v14);
  v0[16] = sub_5E03C(v15);
  v16 = sub_2440(&qword_1C57F8, &unk_172510);
  v0[17] = v16;
  sub_4348(v16);
  v18 = *(v17 + 64);
  v19 = sub_8C38();
  v20 = sub_5DD24(v19);
  v0[20] = sub_5DF7C(v20);
  v21 = sub_2440(&qword_1C5690, &dword_16F320);
  sub_4348(v21);
  v23 = *(v22 + 64);
  v24 = sub_8C38();
  v0[22] = sub_5E09C(v24);
  v25 = sub_2440(&qword_1C57E0, &unk_171C60);
  sub_4348(v25);
  v27 = *(v26 + 64);
  v28 = sub_8C38();
  v29 = sub_5DD0C(v28);
  v30 = sub_5DCDC(v29);
  v31 = sub_5DF18(v30);
  v0[27] = sub_5DF30(v31);
  v32 = sub_17960();

  return _swift_task_switch(v32, v33, v34);
}

uint64_t sub_55610(uint64_t a1, uint64_t a2, void *a3, int a4, void *a5, uint64_t a6)
{
  v83 = a6;
  v80 = a5;
  v78 = a4;
  v9 = sub_2440(&qword_1C57F8, &unk_172510);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v84 = &v75 - v11;
  v12 = sub_16BF5C();
  v77 = *(v12 - 8);
  v13 = *(v77 + 64);
  __chkstk_darwin(v12);
  v76 = &v75 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_2440(&qword_1C57E0, &unk_171C60);
  v16 = *(*(v15 - 8) + 64);
  v17 = __chkstk_darwin(v15 - 8);
  v79 = &v75 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v17);
  v81 = &v75 - v20;
  v21 = __chkstk_darwin(v19);
  v23 = &v75 - v22;
  __chkstk_darwin(v21);
  v25 = &v75 - v24;
  v26 = sub_2440(&qword_1C5800, &unk_16F510);
  v27 = *(*(v26 - 8) + 64);
  v28 = __chkstk_darwin(v26 - 8);
  v82 = &v75 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v31 = &v75 - v30;
  active = type metadata accessor for WellnessQueryingActiveEnergyParameters(0);
  v33 = active[8];
  v34 = *(a1 + v33);

  *(a1 + v33) = a2;
  v35 = a1;
  [a3 average];
  v37 = v36;
  v38 = sub_A6F70(a3);
  LOBYTE(a1) = v78;
  v40 = sub_99F0C(v38, v39, v78, v37);

  v41 = v35 + active[5];
  *v41 = v40;
  *(v41 + 8) = 0;
  [a3 total];
  v43 = v42;
  v44 = sub_A6F70(a3);
  v46 = sub_99F0C(v44, v45, a1, v43);

  v47 = v35 + active[9];
  *v47 = v46;
  *(v47 + 8) = 0;
  sub_A6F70(a3);
  if (v48)
  {
    sub_16E23C();

    v49 = sub_16D5CC();
    v50 = 0;
  }

  else
  {
    v49 = sub_16D5CC();
    v50 = 1;
  }

  v51 = 1;
  sub_214C(v31, v50, 1, v49);
  sub_8640(v31, v35 + active[10]);
  v52 = sub_16D38C();
  v53 = *(v52 + 48);
  v54 = *(v52 + 52);
  swift_allocObject();
  sub_16D37C();
  v55 = v80;
  v56 = [v80 start];
  if (v56)
  {
    v57 = v56;
    sub_16BF3C();

    v51 = 0;
  }

  sub_214C(v23, v51, 1, v12);
  sub_5D03C(v23, v25, &qword_1C57E0, &unk_171C60);
  if (sub_369C(v25, 1, v12))
  {
    sub_5CFC8(v25, &qword_1C57E0, &unk_171C60);
  }

  else
  {
    v58 = v76;
    v59 = v77;
    (*(v77 + 16))(v76, v25, v12);
    sub_5CFC8(v25, &qword_1C57E0, &unk_171C60);
    sub_16BF2C();
    (*(v59 + 8))(v58, v12);
  }

  v60 = v81;
  sub_16D35C();

  v61 = [v55 end];
  if (v61)
  {
    v62 = v61;
    v63 = v79;
    sub_16BF3C();

    v64 = 0;
  }

  else
  {
    v64 = 1;
    v63 = v79;
  }

  sub_214C(v63, v64, 1, v12);
  sub_5D03C(v63, v60, &qword_1C57E0, &unk_171C60);
  if (sub_369C(v60, 1, v12))
  {
    sub_5CFC8(v60, &qword_1C57E0, &unk_171C60);
  }

  else
  {
    v65 = v76;
    v66 = v77;
    (*(v77 + 16))(v76, v60, v12);
    sub_5CFC8(v60, &qword_1C57E0, &unk_171C60);
    sub_16BF2C();
    (*(v66 + 8))(v65, v12);
  }

  sub_16D34C();

  v67 = sub_16D36C();

  v68 = active[7];
  v69 = *(v35 + v68);

  *(v35 + v68) = v67;
  v70 = v84;
  sub_372FC(v83, v84);
  v71 = sub_16BE9C();
  if (sub_369C(v70, 1, v71) == 1)
  {
    sub_5CFC8(v70, &qword_1C57F8, &unk_172510);
    v72 = sub_16D5CC();
    v73 = v82;
    sub_214C(v82, 1, 1, v72);
  }

  else
  {
    v73 = v82;
    sub_61120(v82);
    (*(*(v71 - 8) + 8))(v70, v71);
  }

  return sub_8640(v73, v35);
}

uint64_t sub_55CC4(uint64_t a1, int a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, void *a7)
{
  v119 = a7;
  v116 = a6;
  v121 = a5;
  v108 = a4;
  v10 = sub_16BF5C();
  v118 = *(v10 - 8);
  v11 = *(v118 + 64);
  __chkstk_darwin(v10);
  v117 = &v106 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_2440(&qword_1C57E0, &unk_171C60);
  v14 = *(*(v13 - 8) + 64);
  v15 = __chkstk_darwin(v13 - 8);
  v112 = &v106 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v113 = &v106 - v18;
  v19 = __chkstk_darwin(v17);
  v110 = &v106 - v20;
  v21 = __chkstk_darwin(v19);
  v111 = &v106 - v22;
  v23 = __chkstk_darwin(v21);
  v106 = &v106 - v24;
  v25 = __chkstk_darwin(v23);
  v107 = &v106 - v26;
  v27 = __chkstk_darwin(v25);
  v109 = &v106 - v28;
  __chkstk_darwin(v27);
  v30 = &v106 - v29;
  v31 = sub_2440(&qword_1C57F8, &unk_172510);
  v32 = *(*(v31 - 8) + 64);
  __chkstk_darwin(v31 - 8);
  v34 = &v106 - v33;
  v35 = sub_2440(&qword_1C5800, &unk_16F510);
  v36 = *(*(v35 - 8) + 64);
  v37 = __chkstk_darwin(v35 - 8);
  v39 = &v106 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v37);
  v41 = &v106 - v40;
  v115 = a2;
  sub_208C0(a2);
  sub_16E23C();

  v42 = sub_16D5CC();
  sub_214C(v41, 0, 1, v42);
  v43 = type metadata accessor for WellnessQueryingBasalBodyTemperatureParameters(0);
  sub_8640(v41, a1 + *(v43 + 20));
  v120 = v43;
  v44 = *(v43 + 32);
  v45 = *(a1 + v44);

  v114 = a3;
  *(a1 + v44) = a3;
  sub_372FC(v108, v34);
  v46 = sub_16BE9C();
  if (sub_369C(v34, 1, v46) == 1)
  {
    sub_5CFC8(v34, &qword_1C57F8, &unk_172510);
    sub_214C(v39, 1, 1, v42);
  }

  else
  {
    sub_61120(v39);
    (*(*(v46 - 8) + 8))(v34, v46);
  }

  sub_8640(v39, a1);
  v47 = sub_16D2AC();
  v48 = *(v47 + 48);
  v49 = *(v47 + 52);
  swift_allocObject();
  sub_16D29C();
  v50 = v121;
  [v121 average];
  v51 = &selRef_mostRecent;
  if (v52 > 0.0)
  {
    v51 = &selRef_average;
  }

  [v50 *v51];
  v54 = v53;
  v55 = sub_A6F70(v50);
  v56 = v115;
  v57 = a1;
  sub_99F0C(v55, v58, v115, v54);

  sub_16D43C();

  sub_16D42C();

  v59 = sub_16D41C();

  v60 = *(v120 + 28);
  v61 = *(a1 + v60);

  v108 = v59;
  *(a1 + v60) = v59;
  v62 = sub_16D38C();
  v63 = *(v62 + 48);
  v64 = *(v62 + 52);
  swift_allocObject();
  sub_16D37C();
  v65 = [v119 start];
  if (v65)
  {
    v66 = v65;
    v67 = v109;
    sub_16BF3C();

    v68 = 0;
  }

  else
  {
    v68 = 1;
    v67 = v109;
  }

  sub_214C(v67, v68, 1, v10);
  sub_5D03C(v67, v30, &qword_1C57E0, &unk_171C60);
  if (sub_369C(v30, 1, v10))
  {
    sub_5CFC8(v30, &qword_1C57E0, &unk_171C60);
    v69 = [v121 sampleEndDate];
    if (v69)
    {
      v70 = v69;
      v71 = v106;
      sub_16BF3C();

      v72 = 0;
      v73 = v112;
    }

    else
    {
      v72 = 1;
      v73 = v112;
      v71 = v106;
    }

    sub_214C(v71, v72, 1, v10);
    v76 = v107;
    sub_5D03C(v71, v107, &qword_1C57E0, &unk_171C60);
    if (sub_369C(v76, 1, v10))
    {
      sub_5CFC8(v76, &qword_1C57E0, &unk_171C60);
    }

    else
    {
      v77 = v118;
      v78 = *(v118 + 16);
      v112 = v47;
      v79 = v117;
      v78(v117, v76, v10);
      sub_5CFC8(v76, &qword_1C57E0, &unk_171C60);
      sub_16BF2C();
      v47 = v112;
      (*(v77 + 8))(v79, v10);
    }
  }

  else
  {
    v74 = v117;
    v75 = v118;
    (*(v118 + 16))(v117, v30, v10);
    sub_5CFC8(v30, &qword_1C57E0, &unk_171C60);
    sub_16BF2C();
    (*(v75 + 8))(v74, v10);
    v73 = v112;
  }

  sub_16D35C();

  v80 = [v119 end];
  if (v80)
  {
    v81 = v80;
    v82 = v110;
    sub_16BF3C();

    v83 = v82;
    v84 = 0;
    v85 = v113;
  }

  else
  {
    v84 = 1;
    v85 = v113;
    v83 = v110;
  }

  sub_214C(v83, v84, 1, v10);
  v86 = v83;
  v87 = v111;
  sub_5D03C(v86, v111, &qword_1C57E0, &unk_171C60);
  if (!sub_369C(v87, 1, v10))
  {
    v91 = v118;
    v92 = *(v118 + 16);
    v85 = v87;
LABEL_28:
    v93 = v117;
    v92(v117, v85, v10);
    sub_5CFC8(v85, &qword_1C57E0, &unk_171C60);
    sub_16BF2C();
    (*(v91 + 8))(v93, v10);
    goto LABEL_29;
  }

  sub_5CFC8(v87, &qword_1C57E0, &unk_171C60);
  v88 = [v121 sampleEndDate];
  if (v88)
  {
    v89 = v88;
    sub_16BF3C();

    v90 = 0;
  }

  else
  {
    v90 = 1;
  }

  sub_214C(v73, v90, 1, v10);
  sub_5D03C(v73, v85, &qword_1C57E0, &unk_171C60);
  if (!sub_369C(v85, 1, v10))
  {
    v91 = v118;
    v92 = *(v118 + 16);
    goto LABEL_28;
  }

  sub_5CFC8(v85, &qword_1C57E0, &unk_171C60);
LABEL_29:
  sub_16D34C();

  v94 = sub_16D36C();

  v95 = *(v120 + 24);
  v96 = *(v57 + v95);

  *(v57 + v95) = v94;
  if (sub_15EE1C() < 3u || (result = sub_15C380(), (result & 1) != 0))
  {
    v98 = *(v47 + 48);
    v99 = *(v47 + 52);
    swift_allocObject();
    sub_16D29C();
    v100 = v121;
    [v121 average];
    v102 = v101;
    v103 = sub_A6F70(v100);
    sub_99F0C(v103, v104, v56, v102);

    sub_16D43C();

    sub_16D42C();

    v105 = sub_16D41C();

    *(v57 + v60) = v105;
  }

  return result;
}

uint64_t sub_566FC(uint64_t a1, uint64_t a2, void *a3, unsigned __int8 a4, int a5, void *a6, uint64_t a7)
{
  v129 = a6;
  v130 = a7;
  v121 = a5;
  v11 = sub_2440(&qword_1C57F8, &unk_172510);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v131 = &v118 - v13;
  v14 = sub_16BF5C();
  v15 = *(v14 - 8);
  v125 = v14;
  v126 = v15;
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v132 = &v118 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_2440(&qword_1C57E0, &unk_171C60);
  v19 = *(*(v18 - 8) + 64);
  v20 = __chkstk_darwin(v18 - 8);
  v128 = &v118 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v20);
  v119 = &v118 - v23;
  v24 = __chkstk_darwin(v22);
  v120 = &v118 - v25;
  v26 = __chkstk_darwin(v24);
  v123 = &v118 - v27;
  v28 = __chkstk_darwin(v26);
  v124 = &v118 - v29;
  v30 = __chkstk_darwin(v28);
  v118 = &v118 - v31;
  v32 = __chkstk_darwin(v30);
  v122 = &v118 - v33;
  v34 = __chkstk_darwin(v32);
  v36 = &v118 - v35;
  __chkstk_darwin(v34);
  v38 = &v118 - v37;
  v39 = sub_2440(&qword_1C5800, &unk_16F510);
  v40 = *(*(v39 - 8) + 64);
  v41 = __chkstk_darwin(v39 - 8);
  v127 = &v118 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v41);
  v44 = &v118 - v43;
  v45 = type metadata accessor for WellnessQueryingBloodGlucoseParameters(0);
  v46 = v45[10];
  v47 = *(a1 + v46);

  *(a1 + v46) = a2;
  [a3 mostRecent];
  v49 = v48;
  v50 = sub_A6F70(a3);
  v52 = sub_99F0C(v50, v51, a4, v49);

  v53 = a1 + v45[12];
  *v53 = v52;
  *(v53 + 8) = 0;
  [a3 maximum];
  v55 = v54;
  v56 = sub_A6F70(a3);
  v58 = sub_99F0C(v56, v57, a4, v55);

  v59 = a1 + v45[8];
  *v59 = v58;
  *(v59 + 8) = 0;
  [a3 minimum];
  v61 = v60;
  v62 = sub_A6F70(a3);
  v64 = sub_99F0C(v62, v63, a4, v61);

  v133 = v45;
  v65 = v45[9];
  v66 = a1;
  v67 = a1 + v65;
  *v67 = v64;
  *(v67 + 8) = 0;
  if ((v121 & 1) == 0)
  {
    [a3 average];
    v69 = v68;
    v70 = sub_A6F70(a3);
    v72 = sub_99F0C(v70, v71, a4, v69);

    v73 = a1 + v133[5];
    *v73 = v72;
    *(v73 + 8) = 0;
  }

  sub_A6F70(a3);
  if (v74)
  {
    sub_16E23C();

    v75 = sub_16D5CC();
    v76 = 0;
  }

  else
  {
    v75 = sub_16D5CC();
    v76 = 1;
  }

  v77 = v129;
  v78 = v125;
  v79 = v122;
  v80 = 1;
  sub_214C(v44, v76, 1, v75);
  sub_8640(v44, v66 + v133[11]);
  v81 = sub_16D38C();
  v82 = *(v81 + 48);
  v83 = *(v81 + 52);
  swift_allocObject();
  sub_16D37C();
  v84 = [v77 start];
  if (v84)
  {
    v85 = v84;
    sub_16BF3C();

    v80 = 0;
  }

  sub_214C(v36, v80, 1, v78);
  sub_5D03C(v36, v38, &qword_1C57E0, &unk_171C60);
  if (sub_369C(v38, 1, v78))
  {
    sub_5CFC8(v38, &qword_1C57E0, &unk_171C60);
    v86 = [a3 sampleEndDate];
    v87 = v126;
    if (v86)
    {
      v88 = v86;
      v89 = v118;
      sub_16BF3C();

      v90 = v89;
      v91 = 0;
      v92 = v123;
    }

    else
    {
      v91 = 1;
      v92 = v123;
      v90 = v118;
    }

    sub_214C(v90, v91, 1, v78);
    sub_5D03C(v90, v79, &qword_1C57E0, &unk_171C60);
    if (sub_369C(v79, 1, v78))
    {
      sub_5CFC8(v79, &qword_1C57E0, &unk_171C60);
    }

    else
    {
      v94 = v132;
      (*(v87 + 16))(v132, v79, v78);
      sub_5CFC8(v79, &qword_1C57E0, &unk_171C60);
      sub_16BF2C();
      (*(v87 + 8))(v94, v78);
    }
  }

  else
  {
    v87 = v126;
    v93 = v132;
    (*(v126 + 16))(v132, v38, v78);
    sub_5CFC8(v38, &qword_1C57E0, &unk_171C60);
    sub_16BF2C();
    (*(v87 + 8))(v93, v78);
    v92 = v123;
  }

  sub_16D35C();

  v95 = [v77 end];
  if (v95)
  {
    v96 = v95;
    sub_16BF3C();

    v97 = 0;
  }

  else
  {
    v97 = 1;
  }

  v98 = v124;
  sub_214C(v92, v97, 1, v78);
  sub_5D03C(v92, v98, &qword_1C57E0, &unk_171C60);
  if (sub_369C(v98, 1, v78))
  {
    sub_5CFC8(v98, &qword_1C57E0, &unk_171C60);
    v99 = [a3 sampleEndDate];
    if (v99)
    {
      v100 = v99;
      v101 = v119;
      sub_16BF3C();

      v102 = 0;
    }

    else
    {
      v102 = 1;
      v101 = v119;
    }

    v103 = v120;
    sub_214C(v101, v102, 1, v78);
    sub_5D03C(v101, v103, &qword_1C57E0, &unk_171C60);
    v106 = sub_369C(v103, 1, v78);
    v105 = v131;
    if (v106)
    {
      sub_5CFC8(v103, &qword_1C57E0, &unk_171C60);
    }

    else
    {
      v107 = v132;
      (*(v87 + 16))(v132, v103, v78);
      sub_5CFC8(v103, &qword_1C57E0, &unk_171C60);
      sub_16BF2C();
      (*(v87 + 8))(v107, v78);
    }
  }

  else
  {
    v104 = v132;
    (*(v87 + 16))(v132, v98, v78);
    sub_5CFC8(v98, &qword_1C57E0, &unk_171C60);
    sub_16BF2C();
    (*(v87 + 8))(v104, v78);
    v105 = v131;
  }

  sub_16D34C();

  v108 = sub_16D36C();

  v109 = v133[7];
  v110 = *(v66 + v109);

  *(v66 + v109) = v108;
  v111 = [v77 start];
  if (v111)
  {
    v112 = v128;
    sub_16BF3C();

    v113 = 0;
  }

  else
  {
    v113 = 1;
    v112 = v128;
  }

  sub_214C(v112, v113, 1, v78);
  sub_5CFC8(v112, &qword_1C57E0, &unk_171C60);
  *(v66 + v133[13]) = v111 == 0;
  sub_372FC(v130, v105);
  v114 = sub_16BE9C();
  if (sub_369C(v105, 1, v114) == 1)
  {
    sub_5CFC8(v105, &qword_1C57F8, &unk_172510);
    v115 = sub_16D5CC();
    v116 = v127;
    sub_214C(v127, 1, 1, v115);
  }

  else
  {
    v116 = v127;
    sub_61120(v127);
    (*(*(v114 - 8) + 8))(v105, v114);
  }

  return sub_8640(v116, v66);
}

uint64_t sub_571A4(uint64_t a1, uint64_t a2, void *a3, unsigned __int8 a4, uint64_t a5, int a6, void *a7, uint64_t a8)
{
  v123 = a8;
  v128 = a7;
  v117 = a6;
  v12 = sub_2440(&qword_1C57F8, &unk_172510);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v124 = &v113 - v14;
  v15 = sub_2440(&qword_1C5800, &unk_16F510);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v125 = &v113 - v17;
  v18 = sub_16BF5C();
  v122 = *(v18 - 8);
  v19 = *(v122 + 64);
  __chkstk_darwin(v18);
  v121 = &v113 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_2440(&qword_1C57E0, &unk_171C60);
  v22 = *(*(v21 - 8) + 64);
  v23 = __chkstk_darwin(v21 - 8);
  v115 = &v113 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __chkstk_darwin(v23);
  v116 = &v113 - v26;
  v27 = __chkstk_darwin(v25);
  v119 = &v113 - v28;
  v29 = __chkstk_darwin(v27);
  v120 = &v113 - v30;
  v31 = __chkstk_darwin(v29);
  v113 = &v113 - v32;
  v33 = __chkstk_darwin(v31);
  v114 = &v113 - v34;
  v35 = __chkstk_darwin(v33);
  v118 = &v113 - v36;
  __chkstk_darwin(v35);
  v38 = &v113 - v37;
  v39 = type metadata accessor for WellnessQueryingBodyTemperatureParameters(0);
  v40 = v39[10];
  v41 = *(a1 + v40);

  *(a1 + v40) = a2;
  v42 = sub_16D2AC();
  v43 = *(v42 + 48);
  v44 = *(v42 + 52);
  swift_allocObject();
  sub_16D29C();
  [a3 mostRecent];
  v46 = v45;
  v47 = sub_A6F70(a3);
  sub_99F0C(v47, v48, a4, v46);

  sub_16D43C();

  sub_16D42C();

  v49 = sub_16D41C();

  v50 = v39[11];
  v51 = *(a1 + v50);

  *(a1 + v50) = v49;
  v52 = *(v42 + 48);
  v53 = *(v42 + 52);
  swift_allocObject();
  sub_16D29C();
  [a3 maximum];
  v55 = v54;
  v56 = sub_A6F70(a3);
  sub_99F0C(v56, v57, a4, v55);

  sub_16D43C();

  sub_16D42C();

  v58 = sub_16D41C();

  v59 = v39[8];
  v60 = *(a1 + v59);

  *(a1 + v59) = v58;
  v61 = *(v42 + 48);
  v62 = *(v42 + 52);
  swift_allocObject();
  sub_16D29C();
  [a3 minimum];
  v64 = v63;
  v127 = a3;
  v65 = sub_A6F70(a3);
  sub_99F0C(v65, v66, a4, v64);

  sub_16D43C();

  sub_16D42C();

  v67 = sub_16D41C();

  v126 = v39;
  v68 = v39[9];
  v69 = *(a1 + v68);

  *(a1 + v68) = v67;
  if ((v117 & 1) == 0)
  {
    v70 = *(v42 + 48);
    v71 = *(v42 + 52);
    swift_allocObject();
    sub_16D29C();
    v72 = v127;
    [v127 average];
    v74 = v73;
    v75 = sub_A6F70(v72);
    sub_99F0C(v75, v76, a4, v74);

    sub_16D43C();

    sub_16D42C();

    v77 = sub_16D41C();

    v78 = v126[5];
    v79 = *(a1 + v78);

    *(a1 + v78) = v77;
  }

  v80 = sub_16D38C();
  v81 = *(v80 + 48);
  v82 = *(v80 + 52);
  swift_allocObject();
  sub_16D37C();
  v83 = [v128 start];
  if (v83)
  {
    v84 = v83;
    v85 = v118;
    sub_16BF3C();

    v86 = 0;
    v88 = v121;
    v87 = v122;
  }

  else
  {
    v86 = 1;
    v88 = v121;
    v87 = v122;
    v85 = v118;
  }

  sub_214C(v85, v86, 1, v18);
  sub_5D03C(v85, v38, &qword_1C57E0, &unk_171C60);
  if (sub_369C(v38, 1, v18))
  {
    sub_5CFC8(v38, &qword_1C57E0, &unk_171C60);
    v89 = [v127 sampleEndDate];
    if (v89)
    {
      v90 = v89;
      v91 = v113;
      sub_16BF3C();

      v92 = 0;
      v93 = v124;
    }

    else
    {
      v92 = 1;
      v93 = v124;
      v91 = v113;
    }

    sub_214C(v91, v92, 1, v18);
    v94 = v114;
    sub_5D03C(v91, v114, &qword_1C57E0, &unk_171C60);
    if (sub_369C(v94, 1, v18))
    {
      sub_5CFC8(v94, &qword_1C57E0, &unk_171C60);
    }

    else
    {
      (*(v87 + 16))(v88, v94, v18);
      sub_5CFC8(v94, &qword_1C57E0, &unk_171C60);
      sub_16BF2C();
      (*(v87 + 8))(v88, v18);
    }
  }

  else
  {
    (*(v87 + 16))(v88, v38, v18);
    sub_5CFC8(v38, &qword_1C57E0, &unk_171C60);
    sub_16BF2C();
    (*(v87 + 8))(v88, v18);
    v93 = v124;
  }

  sub_16D35C();

  v95 = [v128 end];
  if (v95)
  {
    v96 = v95;
    v97 = v119;
    sub_16BF3C();

    v98 = v97;
    v99 = 0;
    v100 = v125;
  }

  else
  {
    v99 = 1;
    v100 = v125;
    v98 = v119;
  }

  sub_214C(v98, v99, 1, v18);
  v101 = v98;
  v102 = v120;
  sub_5D03C(v101, v120, &qword_1C57E0, &unk_171C60);
  if (!sub_369C(v102, 1, v18))
  {
    goto LABEL_23;
  }

  sub_5CFC8(v102, &qword_1C57E0, &unk_171C60);
  v103 = [v127 sampleEndDate];
  if (v103)
  {
    v104 = v103;
    v105 = v115;
    sub_16BF3C();

    v106 = 0;
  }

  else
  {
    v106 = 1;
    v105 = v115;
  }

  sub_214C(v105, v106, 1, v18);
  v102 = v116;
  sub_5D03C(v105, v116, &qword_1C57E0, &unk_171C60);
  if (sub_369C(v102, 1, v18))
  {
    sub_5CFC8(v102, &qword_1C57E0, &unk_171C60);
  }

  else
  {
LABEL_23:
    (*(v87 + 16))(v88, v102, v18);
    sub_5CFC8(v102, &qword_1C57E0, &unk_171C60);
    sub_16BF2C();
    (*(v87 + 8))(v88, v18);
  }

  sub_16D34C();

  v107 = sub_16D36C();

  v108 = v126[7];
  v109 = *(a1 + v108);

  *(a1 + v108) = v107;
  sub_372FC(v123, v93);
  v110 = sub_16BE9C();
  if (sub_369C(v93, 1, v110) == 1)
  {
    sub_5CFC8(v93, &qword_1C57F8, &unk_172510);
    v111 = sub_16D5CC();
    sub_214C(v100, 1, 1, v111);
  }

  else
  {
    sub_61120(v100);
    (*(*(v110 - 8) + 8))(v93, v110);
  }

  return sub_8640(v100, a1);
}

void sub_57C4C()
{
  sub_5DF60();
  v2 = v1;
  v122 = v3;
  v124 = v4;
  LODWORD(v125) = v5;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = sub_2440(&qword_1C57F8, &unk_172510);
  sub_4348(v12);
  v14 = *(v13 + 64);
  sub_433C();
  __chkstk_darwin(v15);
  sub_13088();
  v123 = v16;
  v17 = sub_16BF5C();
  v18 = sub_42F0(v17);
  v120 = v19;
  v21 = *(v20 + 64);
  __chkstk_darwin(v18);
  sub_12FD4();
  v119 = v22;
  v23 = sub_2440(&qword_1C57E0, &unk_171C60);
  v24 = sub_4348(v23);
  v26 = *(v25 + 64);
  __chkstk_darwin(v24);
  sub_38634();
  v115 = v27;
  sub_89B4();
  __chkstk_darwin(v28);
  sub_8AC0();
  v116 = v29;
  sub_89B4();
  __chkstk_darwin(v30);
  sub_8AC0();
  v117 = v31;
  sub_89B4();
  __chkstk_darwin(v32);
  sub_8AC0();
  v118 = v33;
  sub_89B4();
  __chkstk_darwin(v34);
  sub_8AC0();
  v113 = v35;
  sub_89B4();
  __chkstk_darwin(v36);
  sub_8AC0();
  v114 = v37;
  sub_89B4();
  __chkstk_darwin(v38);
  sub_5DC10();
  __chkstk_darwin(v39);
  v41 = &v112 - v40;
  v42 = sub_2440(&qword_1C5800, &unk_16F510);
  v43 = sub_4348(v42);
  v45 = *(v44 + 64);
  __chkstk_darwin(v43);
  sub_38634();
  v121 = v46;
  sub_89B4();
  __chkstk_darwin(v47);
  v49 = &v112 - v48;
  v50 = v2(0);
  v51 = v50[8];
  v52 = *(v11 + v51);

  *(v11 + v51) = v9;
  [v7 total];
  v54 = v53;
  v55 = sub_A6F70(v7);
  LOBYTE(v51) = v125;
  sub_99F0C(v55, v56, v125, v54);
  sub_5E194();

  sub_5DC68(v11 + v50[9]);
  [v7 average];
  v58 = v57;
  v59 = sub_A6F70(v7);
  sub_99F0C(v59, v60, v51, v58);
  sub_5E194();

  v125 = v50;
  v61 = v50[5];
  v62 = v7;
  sub_5DC68(v11 + v61);
  sub_A6F70(v7);
  if (v63)
  {
    sub_16E23C();

    v64 = sub_16D5CC();
    v65 = 0;
  }

  else
  {
    v64 = sub_16D5CC();
    v65 = 1;
  }

  v66 = 1;
  sub_214C(v49, v65, 1, v64);
  v67 = v11;
  sub_8640(v49, v11 + v125[10]);
  v68 = sub_16D38C();
  sub_8D14(v68);
  sub_16D37C();
  v69 = [v124 start];
  if (v69)
  {
    v70 = v69;
    sub_16BF3C();

    v66 = 0;
  }

  v71 = v119;
  sub_5DDCC(v0, v66);
  sub_5D03C(v0, v41, &qword_1C57E0, &unk_171C60);
  v72 = sub_5DA00();
  if (sub_369C(v72, v73, v17))
  {
    sub_5CFC8(v41, &qword_1C57E0, &unk_171C60);
    v74 = [v62 sampleStartDate];
    v75 = v120;
    if (v74)
    {
      v76 = v74;
      v77 = v113;
      sub_16BF3C();

      v78 = 0;
      v79 = v117;
    }

    else
    {
      v78 = 1;
      v79 = v117;
      v77 = v113;
    }

    sub_5DDCC(v77, v78);
    v84 = v114;
    sub_5D03C(v77, v114, &qword_1C57E0, &unk_171C60);
    if (sub_5DDE4(v84))
    {
      sub_5CFC8(v84, &qword_1C57E0, &unk_171C60);
      _s18WellnessFlowPlugin28SpecificMedCompletedLogModelV6dosageSdSgvpfi_0();
    }

    else
    {
      v85 = sub_5DF08();
      v86(v85, v84, v17);
      sub_5CFC8(v84, &qword_1C57E0, &unk_171C60);
      sub_16BF2C();
      v87 = sub_5E024();
      v88(v87);
      sub_5DC04();
    }
  }

  else
  {
    v75 = v120;
    v80 = sub_5DF08();
    v81(v80, v41, v17);
    sub_5CFC8(v41, &qword_1C57E0, &unk_171C60);
    sub_16BF2C();
    v82 = sub_5E024();
    v83(v82);
    sub_5DC04();
    v79 = v117;
  }

  v89 = sub_16D35C();

  v90 = [v124 end];
  if (v90)
  {
    v91 = v90;
    sub_16BF3C();

    v92 = 0;
  }

  else
  {
    v92 = 1;
  }

  v93 = v67;
  sub_5DDCC(v79, v92);
  v94 = v118;
  sub_5D03C(v79, v118, &qword_1C57E0, &unk_171C60);
  if (!sub_5DDE4(v94))
  {
    goto LABEL_23;
  }

  sub_5CFC8(v94, &qword_1C57E0, &unk_171C60);
  v95 = [v62 sampleEndDate];
  if (v95)
  {
    v96 = v95;
    v97 = v115;
    sub_16BF3C();

    v98 = 0;
  }

  else
  {
    v98 = 1;
    v97 = v115;
  }

  sub_5DDCC(v97, v98);
  v99 = v97;
  v94 = v116;
  sub_5D03C(v99, v116, &qword_1C57E0, &unk_171C60);
  if (sub_5DDE4(v94))
  {
    sub_5CFC8(v94, &qword_1C57E0, &unk_171C60);
    _s18WellnessFlowPlugin28SpecificMedCompletedLogModelV6dosageSdSgvpfi_0();
  }

  else
  {
LABEL_23:
    v100 = sub_5DF08();
    v101(v100, v94, v17);
    sub_5CFC8(v94, &qword_1C57E0, &unk_171C60);
    sub_16BF2C();
    (*(v75 + 8))(v71, v17);
    sub_5DC04();
  }

  sub_16D34C();

  sub_16D36C();
  sub_5E188();

  v102 = v125[7];
  v103 = *(v93 + v102);

  *(v93 + v102) = v89;
  v104 = v123;
  sub_372FC(v122, v123);
  sub_16BE9C();
  v105 = sub_5E188();
  if (sub_369C(v105, 1, v89) == 1)
  {
    sub_5CFC8(v104, &qword_1C57F8, &unk_172510);
    v106 = sub_16D5CC();
    v107 = v121;
    sub_214C(v121, 1, 1, v106);
  }

  else
  {
    v107 = v121;
    sub_61120(v121);
    sub_5DE54(v89);
    v109 = *(v108 + 8);
    v110 = sub_38B40();
    v111(v110);
  }

  sub_8640(v107, v93);
  sub_5DFAC();
}

void sub_5845C()
{
  sub_5DF60();
  v1 = sub_2440(&qword_1C6C58, &qword_1728B0);
  v2 = sub_42F0(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v2);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  sub_5E160();
  __chkstk_darwin(v10);
  sub_8AC0();
  v27 = v11;
  sub_89B4();
  __chkstk_darwin(v12);
  sub_5DC10();
  __chkstk_darwin(v13);
  v15 = &v24 - v14;
  sub_25908(0, &qword_1C6C60, NSUnitLength_ptr);

  v16 = sub_5CED0();
  sub_16BCEC();
  v17 = v16;
  v25 = v0;
  v26 = v17;
  sub_16BCEC();
  v18 = objc_opt_self();
  v19 = [v18 inches];
  sub_16BD1C();

  v20 = [v18 inches];
  sub_16BD1C();

  sub_16BD0C();
  v21 = *(v4 + 8);
  v21(v9, v1);
  v22 = sub_5DB18();
  (v21)(v22);
  sub_16BCFC();

  v23 = sub_C9C8();
  (v21)(v23);
  v21(v25, v1);
  v21(v15, v1);
  sub_5DFAC();
}

uint64_t sub_586E4(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, void *a9, uint64_t a10)
{
  v104 = a8;
  v98 = a7;
  v95 = a6;
  v90 = a4;
  v91 = a5;
  LODWORD(v103) = a3;
  v12 = sub_2440(&qword_1C57F8, &unk_172510);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v102 = &v89 - v14;
  v15 = sub_16BF5C();
  v100 = *(v15 - 8);
  v16 = *(v100 + 64);
  __chkstk_darwin(v15);
  v99 = &v89 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_2440(&qword_1C57E0, &unk_171C60);
  v19 = *(*(v18 - 8) + 64);
  v20 = __chkstk_darwin(v18 - 8);
  v93 = &v89 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v20);
  v94 = &v89 - v23;
  v24 = __chkstk_darwin(v22);
  v96 = &v89 - v25;
  v26 = __chkstk_darwin(v24);
  v97 = &v89 - v27;
  v28 = __chkstk_darwin(v26);
  v92 = &v89 - v29;
  v30 = __chkstk_darwin(v28);
  v32 = &v89 - v31;
  v33 = __chkstk_darwin(v30);
  v35 = &v89 - v34;
  __chkstk_darwin(v33);
  v37 = &v89 - v36;
  v38 = sub_2440(&qword_1C5800, &unk_16F510);
  v39 = *(*(v38 - 8) + 64);
  v40 = __chkstk_darwin(v38 - 8);
  v101 = &v89 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v40);
  v43 = &v89 - v42;
  v44 = type metadata accessor for WellnessQueryingHeightParameters(0);
  v45 = *(v44 + 48);
  v46 = *(a1 + v45);

  *(a1 + v45) = a2;
  v47 = v44;
  if ((v103 & 1) == 0)
  {
    v48 = *(v44 + 40);
    v49 = *(a1 + v48);
    v50 = v90;

    *(a1 + v48) = v50;
    v51 = *(v47 + 36);
    v52 = *(a1 + v51);
    v53 = v91;

    *(a1 + v51) = v53;
  }

  v103 = a9;
  v54 = sub_16D2DC();
  v55 = *(v54 + 48);
  v56 = *(v54 + 52);
  swift_allocObject();
  sub_16D2CC();
  sub_16D40C();

  sub_16E23C();
  v57 = 1;
  v95 = sub_16D5CC();
  sub_214C(v43, 0, 1, v95);
  sub_16D3FC();

  sub_5CFC8(v43, &qword_1C5800, &unk_16F510);
  v58 = sub_16D3EC();

  v98 = v47;
  v59 = *(v47 + 32);
  v60 = *(a1 + v59);

  *(a1 + v59) = v58;
  v61 = sub_16D38C();
  v62 = *(v61 + 48);
  v63 = *(v61 + 52);
  swift_allocObject();
  sub_16D37C();
  v64 = [v104 start];
  if (v64)
  {
    v65 = v64;
    sub_16BF3C();

    v57 = 0;
  }

  v67 = v99;
  v66 = v100;
  sub_214C(v35, v57, 1, v15);
  sub_5D03C(v35, v37, &qword_1C57E0, &unk_171C60);
  if (sub_369C(v37, 1, v15))
  {
    sub_5CFC8(v37, &qword_1C57E0, &unk_171C60);
    v68 = [v103 sampleEndDate];
    if (v68)
    {
      v69 = v68;
      v70 = v92;
      sub_16BF3C();

      v71 = 0;
    }

    else
    {
      v71 = 1;
      v70 = v92;
    }

    sub_214C(v70, v71, 1, v15);
    sub_5D03C(v70, v32, &qword_1C57E0, &unk_171C60);
    if (sub_369C(v32, 1, v15))
    {
      sub_5CFC8(v32, &qword_1C57E0, &unk_171C60);
      goto LABEL_14;
    }

    (*(v66 + 16))(v67, v32, v15);
    v72 = v32;
  }

  else
  {
    (*(v66 + 16))(v67, v37, v15);
    v72 = v37;
  }

  sub_5CFC8(v72, &qword_1C57E0, &unk_171C60);
  sub_16BF2C();
  (*(v66 + 8))(v67, v15);
LABEL_14:
  sub_16D35C();

  v73 = [v104 end];
  if (v73)
  {
    v74 = v73;
    v75 = v96;
    sub_16BF3C();

    v76 = 0;
  }

  else
  {
    v76 = 1;
    v75 = v96;
  }

  sub_214C(v75, v76, 1, v15);
  v77 = v97;
  sub_5D03C(v75, v97, &qword_1C57E0, &unk_171C60);
  if (!sub_369C(v77, 1, v15))
  {
    goto LABEL_23;
  }

  sub_5CFC8(v77, &qword_1C57E0, &unk_171C60);
  v78 = [v103 sampleEndDate];
  if (v78)
  {
    v79 = v78;
    v80 = v93;
    sub_16BF3C();

    v81 = 0;
  }

  else
  {
    v81 = 1;
    v80 = v93;
  }

  sub_214C(v80, v81, 1, v15);
  v77 = v94;
  sub_5D03C(v80, v94, &qword_1C57E0, &unk_171C60);
  if (sub_369C(v77, 1, v15))
  {
    sub_5CFC8(v77, &qword_1C57E0, &unk_171C60);
  }

  else
  {
LABEL_23:
    (*(v66 + 16))(v67, v77, v15);
    sub_5CFC8(v77, &qword_1C57E0, &unk_171C60);
    sub_16BF2C();
    (*(v66 + 8))(v67, v15);
  }

  sub_16D34C();

  v82 = sub_16D36C();

  v83 = *(v98 + 44);
  v84 = *(a1 + v83);

  *(a1 + v83) = v82;
  v85 = v102;
  sub_372FC(a10, v102);
  v86 = sub_16BE9C();
  if (sub_369C(v85, 1, v86) == 1)
  {
    sub_5CFC8(v85, &qword_1C57F8, &unk_172510);
    v87 = v101;
    sub_214C(v101, 1, 1, v95);
  }

  else
  {
    v87 = v101;
    sub_61120(v101);
    (*(*(v86 - 8) + 8))(v85, v86);
  }

  return sub_8640(v87, a1);
}

uint64_t sub_58FA8(uint64_t a1, uint64_t a2, void *a3, unsigned __int8 a4, int a5, void *a6, uint64_t a7)
{
  v107 = a7;
  v111 = a6;
  v101 = a5;
  v11 = sub_2440(&qword_1C57F8, &unk_172510);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v108 = &v98 - v13;
  v14 = sub_2440(&qword_1C5800, &unk_16F510);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v109 = &v98 - v16;
  v17 = sub_16BF5C();
  v106 = *(v17 - 8);
  v18 = *(v106 + 64);
  __chkstk_darwin(v17);
  v105 = &v98 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_2440(&qword_1C57E0, &unk_171C60);
  v21 = *(*(v20 - 8) + 64);
  v22 = __chkstk_darwin(v20 - 8);
  v99 = &v98 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __chkstk_darwin(v22);
  v100 = &v98 - v25;
  v26 = __chkstk_darwin(v24);
  v103 = &v98 - v27;
  v28 = __chkstk_darwin(v26);
  v104 = &v98 - v29;
  v30 = __chkstk_darwin(v28);
  v102 = &v98 - v31;
  v32 = __chkstk_darwin(v30);
  v98 = &v98 - v33;
  v34 = __chkstk_darwin(v32);
  v36 = &v98 - v35;
  __chkstk_darwin(v34);
  v38 = &v98 - v37;
  v39 = type metadata accessor for WellnessQueryingBloodOxygenParameters(0);
  v40 = v39[10];
  v41 = *(a1 + v40);

  *(a1 + v40) = a2;
  [a3 mostRecent];
  v43 = v42 * 100.0;
  v44 = sub_A6F70(a3);
  v46 = sub_99F0C(v44, v45, a4, v43);

  v47 = a1 + v39[12];
  *v47 = v46;
  *(v47 + 8) = 0;
  [a3 maximum];
  v49 = v48 * 100.0;
  v50 = sub_A6F70(a3);
  v52 = sub_99F0C(v50, v51, a4, v49);

  v53 = a1 + v39[8];
  *v53 = v52;
  *(v53 + 8) = 0;
  [a3 minimum];
  v55 = v54 * 100.0;
  v56 = sub_A6F70(a3);
  v58 = sub_99F0C(v56, v57, a4, v55);

  v110 = v39;
  v59 = v39[9];
  v60 = a1;
  v61 = a1 + v59;
  *v61 = v58;
  *(v61 + 8) = 0;
  if ((v101 & 1) == 0)
  {
    [a3 average];
    v63 = v62 * 100.0;
    v64 = sub_A6F70(a3);
    v66 = sub_99F0C(v64, v65, a4, v63);

    v67 = a1 + v110[5];
    *v67 = v66;
    *(v67 + 8) = 0;
  }

  v68 = sub_16D38C();
  v69 = *(v68 + 48);
  v70 = *(v68 + 52);
  swift_allocObject();
  sub_16D37C();
  v71 = [v111 start];
  if (v71)
  {
    v72 = v71;
    sub_16BF3C();

    v73 = 0;
  }

  else
  {
    v73 = 1;
  }

  v74 = v105;
  v75 = v102;
  sub_214C(v36, v73, 1, v17);
  sub_5D03C(v36, v38, &qword_1C57E0, &unk_171C60);
  if (sub_369C(v38, 1, v17))
  {
    sub_5CFC8(v38, &qword_1C57E0, &unk_171C60);
    v76 = [a3 sampleEndDate];
    v77 = v106;
    if (v76)
    {
      v78 = v76;
      sub_16BF3C();

      v79 = 0;
    }

    else
    {
      v79 = 1;
    }

    v80 = v103;
    sub_214C(v75, v79, 1, v17);
    v81 = v98;
    sub_5D03C(v75, v98, &qword_1C57E0, &unk_171C60);
    if (sub_369C(v81, 1, v17))
    {
      sub_5CFC8(v81, &qword_1C57E0, &unk_171C60);
    }

    else
    {
      (*(v77 + 16))(v74, v81, v17);
      sub_5CFC8(v81, &qword_1C57E0, &unk_171C60);
      sub_16BF2C();
      (*(v77 + 8))(v74, v17);
    }
  }

  else
  {
    v77 = v106;
    (*(v106 + 16))(v74, v38, v17);
    sub_5CFC8(v38, &qword_1C57E0, &unk_171C60);
    sub_16BF2C();
    (*(v77 + 8))(v74, v17);
    v80 = v103;
  }

  sub_16D35C();

  v82 = [v111 end];
  if (v82)
  {
    v83 = v82;
    sub_16BF3C();

    v84 = 0;
  }

  else
  {
    v84 = 1;
  }

  v85 = v108;
  sub_214C(v80, v84, 1, v17);
  v86 = v104;
  sub_5D03C(v80, v104, &qword_1C57E0, &unk_171C60);
  if (!sub_369C(v86, 1, v17))
  {
    goto LABEL_23;
  }

  sub_5CFC8(v86, &qword_1C57E0, &unk_171C60);
  v87 = [a3 sampleEndDate];
  if (v87)
  {
    v88 = v87;
    v89 = v99;
    sub_16BF3C();

    v90 = 0;
  }

  else
  {
    v90 = 1;
    v89 = v99;
  }

  sub_214C(v89, v90, 1, v17);
  v86 = v100;
  sub_5D03C(v89, v100, &qword_1C57E0, &unk_171C60);
  if (sub_369C(v86, 1, v17))
  {
    sub_5CFC8(v86, &qword_1C57E0, &unk_171C60);
  }

  else
  {
LABEL_23:
    (*(v77 + 16))(v74, v86, v17);
    sub_5CFC8(v86, &qword_1C57E0, &unk_171C60);
    sub_16BF2C();
    (*(v77 + 8))(v74, v17);
  }

  sub_16D34C();

  v91 = sub_16D36C();

  v92 = v110[7];
  v93 = *(v60 + v92);

  *(v60 + v92) = v91;
  sub_372FC(v107, v85);
  v94 = sub_16BE9C();
  if (sub_369C(v85, 1, v94) == 1)
  {
    sub_5CFC8(v85, &qword_1C57F8, &unk_172510);
    v95 = sub_16D5CC();
    v96 = v109;
    sub_214C(v109, 1, 1, v95);
  }

  else
  {
    v96 = v109;
    sub_61120(v109);
    (*(*(v94 - 8) + 8))(v85, v94);
  }

  return sub_8640(v96, v60);
}

void sub_598C0()
{
  sub_5DF60();
  v2 = v1;
  v118 = v3;
  v121 = v4;
  LODWORD(v115) = v5;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = sub_2440(&qword_1C57F8, &unk_172510);
  sub_4348(v12);
  v14 = *(v13 + 64);
  sub_433C();
  __chkstk_darwin(v15);
  sub_13088();
  v119 = v16;
  v17 = sub_2440(&qword_1C5800, &unk_16F510);
  sub_4348(v17);
  v19 = *(v18 + 64);
  sub_433C();
  __chkstk_darwin(v20);
  sub_13088();
  v120 = v21;
  v22 = sub_16BF5C();
  v23 = sub_42F0(v22);
  v117 = v24;
  v26 = *(v25 + 64);
  __chkstk_darwin(v23);
  sub_12FD4();
  v116 = v27;
  v28 = sub_2440(&qword_1C57E0, &unk_171C60);
  v29 = sub_4348(v28);
  v31 = *(v30 + 64);
  __chkstk_darwin(v29);
  sub_38634();
  v109 = v32;
  sub_89B4();
  __chkstk_darwin(v33);
  sub_8AC0();
  v110 = v34;
  sub_89B4();
  __chkstk_darwin(v35);
  sub_8AC0();
  v112 = v36;
  sub_89B4();
  __chkstk_darwin(v37);
  sub_8AC0();
  v113 = v38;
  sub_89B4();
  __chkstk_darwin(v39);
  sub_8AC0();
  v111 = v40;
  sub_89B4();
  __chkstk_darwin(v41);
  sub_5DC10();
  v43 = __chkstk_darwin(v42);
  v45 = &v108 - v44;
  __chkstk_darwin(v43);
  v47 = &v108 - v46;
  v48 = v2(0);
  v49 = v48[8];
  v50 = *(v11 + v49);

  *(v11 + v49) = v9;
  [v7 total];
  v52 = v51;
  v53 = sub_A6F70(v7);
  LOBYTE(v9) = v115;
  sub_99F0C(v53, v54, v115, v52);
  sub_5E194();

  sub_5DC68(v11 + v48[9]);
  [v7 average];
  v56 = v55;
  v114 = v7;
  v57 = sub_A6F70(v7);
  sub_99F0C(v57, v58, v9, v56);
  sub_5E194();
  v59 = v11;

  v115 = v48;
  sub_5DC68(v11 + v48[5]);
  v60 = sub_16D38C();
  sub_8D14(v60);
  sub_16D37C();
  v61 = [v121 start];
  if (v61)
  {
    v62 = v61;
    sub_16BF3C();

    v63 = 0;
  }

  else
  {
    v63 = 1;
  }

  sub_5DDCC(v45, v63);
  sub_5D03C(v45, v47, &qword_1C57E0, &unk_171C60);
  v64 = sub_5DA00();
  v66 = sub_369C(v64, v65, v22);
  v67 = v120;
  v68 = v117;
  v69 = v111;
  if (v66)
  {
    sub_5CFC8(v47, &qword_1C57E0, &unk_171C60);
    v70 = v114;
    v71 = [v114 sampleStartDate];
    if (v71)
    {
      v72 = v71;
      sub_16BF3C();

      v73 = 0;
    }

    else
    {
      v73 = 1;
    }

    sub_5DDCC(v69, v73);
    sub_5D03C(v69, v0, &qword_1C57E0, &unk_171C60);
    if (sub_5DDE4(v0))
    {
      sub_5CFC8(v0, &qword_1C57E0, &unk_171C60);
      _s18WellnessFlowPlugin28SpecificMedCompletedLogModelV6dosageSdSgvpfi_0();
      v7 = v116;
    }

    else
    {
      v79 = sub_5E174();
      v80(v79, v0, v22);
      sub_5CFC8(v0, &qword_1C57E0, &unk_171C60);
      sub_16BF2C();
      v81 = *(v68 + 8);
      v82 = sub_5DBEC();
      v83(v82);
      sub_5DC04();
    }
  }

  else
  {
    v74 = sub_5E174();
    v75(v74, v47, v22);
    sub_5CFC8(v47, &qword_1C57E0, &unk_171C60);
    sub_16BF2C();
    v76 = *(v68 + 8);
    v77 = sub_5DBEC();
    v78(v77);
    sub_5DC04();
    v70 = v114;
  }

  sub_16D35C();

  v84 = [v121 end];
  if (v84)
  {
    v85 = v84;
    v86 = v112;
    sub_16BF3C();

    v87 = 0;
  }

  else
  {
    v87 = 1;
    v86 = v112;
  }

  sub_5DDCC(v86, v87);
  v88 = v113;
  sub_5D03C(v86, v113, &qword_1C57E0, &unk_171C60);
  if (!sub_5DDE4(v88))
  {
    goto LABEL_21;
  }

  sub_5CFC8(v88, &qword_1C57E0, &unk_171C60);
  v89 = [v70 sampleEndDate];
  if (v89)
  {
    v90 = v89;
    v91 = v109;
    sub_16BF3C();

    v92 = 0;
  }

  else
  {
    v92 = 1;
    v91 = v109;
  }

  sub_5DDCC(v91, v92);
  v88 = v110;
  sub_5D03C(v91, v110, &qword_1C57E0, &unk_171C60);
  if (sub_5DDE4(v88))
  {
    sub_5CFC8(v88, &qword_1C57E0, &unk_171C60);
    _s18WellnessFlowPlugin28SpecificMedCompletedLogModelV6dosageSdSgvpfi_0();
  }

  else
  {
LABEL_21:
    (*(v68 + 16))(v7, v88, v22);
    sub_5CFC8(v88, &qword_1C57E0, &unk_171C60);
    sub_16BF2C();
    v93 = *(v68 + 8);
    v94 = sub_5DBEC();
    v95(v94);
    sub_5DC04();
  }

  sub_16D34C();

  v96 = sub_16D36C();

  v97 = v115[7];
  v98 = *(v59 + v97);

  *(v59 + v97) = v96;
  v99 = v119;
  sub_372FC(v118, v119);
  v100 = sub_16BE9C();
  if (sub_369C(v99, 1, v100) == 1)
  {
    sub_5CFC8(v99, &qword_1C57F8, &unk_172510);
    v101 = sub_16D5CC();
    sub_214C(v67, 1, 1, v101);
  }

  else
  {
    sub_61120(v67);
    sub_5DE54(v100);
    v103 = *(v102 + 8);
    v104 = sub_C9C8();
    v105(v104);
  }

  v106 = sub_C9E0();
  sub_8640(v106, v107);
  sub_5DFAC();
}

uint64_t sub_5A014(uint64_t a1, uint64_t a2, void *a3, unsigned __int8 a4, int a5, void *a6, uint64_t a7)
{
  v121 = a7;
  v126 = a6;
  v115 = a5;
  v11 = sub_2440(&qword_1C57F8, &unk_172510);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v122 = &v113 - v13;
  v14 = sub_2440(&qword_1C5800, &unk_16F510);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v123 = &v113 - v16;
  v17 = sub_16BF5C();
  v125 = *(v17 - 8);
  v18 = *(v125 + 64);
  __chkstk_darwin(v17);
  v124 = &v113 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_2440(&qword_1C57E0, &unk_171C60);
  v21 = *(*(v20 - 8) + 64);
  v22 = __chkstk_darwin(v20 - 8);
  v120 = &v113 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __chkstk_darwin(v22);
  v113 = &v113 - v25;
  v26 = __chkstk_darwin(v24);
  v114 = &v113 - v27;
  v28 = __chkstk_darwin(v26);
  v118 = &v113 - v29;
  v30 = __chkstk_darwin(v28);
  v119 = &v113 - v31;
  v32 = __chkstk_darwin(v30);
  v116 = &v113 - v33;
  v34 = __chkstk_darwin(v32);
  v117 = &v113 - v35;
  v36 = __chkstk_darwin(v34);
  v38 = &v113 - v37;
  __chkstk_darwin(v36);
  v40 = &v113 - v39;
  v41 = type metadata accessor for WellnessQueryingRespiratoryRateParameters(0);
  v42 = v41[10];
  v43 = *(a1 + v42);

  *(a1 + v42) = a2;
  [a3 mostRecent];
  v45 = v44;
  v46 = sub_A6F70(a3);
  v48 = sub_99F0C(v46, v47, a4, v45);

  v49 = a1 + v41[12];
  *v49 = v48;
  *(v49 + 8) = 0;
  [a3 maximum];
  v51 = v50;
  v52 = sub_A6F70(a3);
  v54 = sub_99F0C(v52, v53, a4, v51);

  v55 = a1 + v41[8];
  *v55 = v54;
  *(v55 + 8) = 0;
  [a3 minimum];
  v57 = v56;
  v58 = sub_A6F70(a3);
  v60 = sub_99F0C(v58, v59, a4, v57);

  v61 = v41;
  v62 = v41[9];
  v63 = a1;
  v64 = a1 + v62;
  *v64 = v60;
  *(v64 + 8) = 0;
  if ((v115 & 1) == 0)
  {
    [a3 average];
    v66 = v65;
    v67 = sub_A6F70(a3);
    v69 = sub_99F0C(v67, v68, a4, v66);

    v70 = a1 + v61[5];
    *v70 = v69;
    *(v70 + 8) = 0;
  }

  v71 = sub_16D38C();
  v72 = *(v71 + 48);
  v73 = *(v71 + 52);
  swift_allocObject();
  sub_16D37C();
  v74 = [v126 start];
  if (v74)
  {
    v75 = v74;
    sub_16BF3C();

    v76 = 0;
  }

  else
  {
    v76 = 1;
  }

  v77 = v116;
  v78 = v117;
  sub_214C(v38, v76, 1, v17);
  sub_5D03C(v38, v40, &qword_1C57E0, &unk_171C60);
  if (sub_369C(v40, 1, v17))
  {
    sub_5CFC8(v40, &qword_1C57E0, &unk_171C60);
    v79 = [a3 sampleEndDate];
    if (v79)
    {
      v80 = v79;
      sub_16BF3C();

      v81 = 0;
    }

    else
    {
      v81 = 1;
    }

    v84 = v118;
    sub_214C(v77, v81, 1, v17);
    sub_5D03C(v77, v78, &qword_1C57E0, &unk_171C60);
    if (sub_369C(v78, 1, v17))
    {
      sub_5CFC8(v78, &qword_1C57E0, &unk_171C60);
    }

    else
    {
      v85 = v124;
      v86 = v125;
      (*(v125 + 16))(v124, v78, v17);
      sub_5CFC8(v78, &qword_1C57E0, &unk_171C60);
      sub_16BF2C();
      (*(v86 + 8))(v85, v17);
    }
  }

  else
  {
    v82 = v124;
    v83 = v125;
    (*(v125 + 16))(v124, v40, v17);
    sub_5CFC8(v40, &qword_1C57E0, &unk_171C60);
    sub_16BF2C();
    (*(v83 + 8))(v82, v17);
    v84 = v118;
  }

  sub_16D35C();

  v87 = [v126 end];
  v88 = v123;
  if (v87)
  {
    v89 = v87;
    sub_16BF3C();

    v90 = 0;
  }

  else
  {
    v90 = 1;
  }

  v91 = v119;
  sub_214C(v84, v90, 1, v17);
  sub_5D03C(v84, v91, &qword_1C57E0, &unk_171C60);
  if (sub_369C(v91, 1, v17))
  {
    sub_5CFC8(v91, &qword_1C57E0, &unk_171C60);
    v92 = [a3 sampleEndDate];
    if (v92)
    {
      v93 = v92;
      v94 = v113;
      sub_16BF3C();

      v95 = 0;
    }

    else
    {
      v95 = 1;
      v94 = v113;
    }

    v96 = v114;
    sub_214C(v94, v95, 1, v17);
    sub_5D03C(v94, v96, &qword_1C57E0, &unk_171C60);
    v101 = sub_369C(v96, 1, v17);
    v99 = v122;
    v100 = v63;
    if (v101)
    {
      sub_5CFC8(v96, &qword_1C57E0, &unk_171C60);
    }

    else
    {
      v103 = v124;
      v102 = v125;
      (*(v125 + 16))(v124, v96, v17);
      sub_5CFC8(v96, &qword_1C57E0, &unk_171C60);
      sub_16BF2C();
      (*(v102 + 8))(v103, v17);
    }
  }

  else
  {
    v97 = v124;
    v98 = v125;
    (*(v125 + 16))(v124, v91, v17);
    sub_5CFC8(v91, &qword_1C57E0, &unk_171C60);
    sub_16BF2C();
    (*(v98 + 8))(v97, v17);
    v99 = v122;
    v100 = v63;
  }

  sub_16D34C();

  v104 = sub_16D36C();

  v105 = v61[7];
  v106 = *(v100 + v105);

  *(v100 + v105) = v104;
  v107 = [v126 start];
  if (v107)
  {
    v108 = v120;
    sub_16BF3C();

    v109 = 0;
  }

  else
  {
    v109 = 1;
    v108 = v120;
  }

  sub_214C(v108, v109, 1, v17);
  sub_5CFC8(v108, &qword_1C57E0, &unk_171C60);
  *(v100 + v61[13]) = v107 == 0;
  sub_372FC(v121, v99);
  v110 = sub_16BE9C();
  if (sub_369C(v99, 1, v110) == 1)
  {
    sub_5CFC8(v99, &qword_1C57F8, &unk_172510);
    v111 = sub_16D5CC();
    sub_214C(v88, 1, 1, v111);
  }

  else
  {
    sub_61120(v88);
    (*(*(v110 - 8) + 8))(v99, v110);
  }

  return sub_8640(v88, v100);
}

uint64_t sub_5AA14(uint64_t a1, uint64_t a2, void *a3, int a4, void *a5, uint64_t a6)
{
  v103 = a6;
  v105 = a5;
  LODWORD(v106) = a4;
  v9 = sub_2440(&qword_1C57F8, &unk_172510);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v104 = &v93 - v11;
  v12 = sub_16BF5C();
  v101 = *(v12 - 8);
  v13 = *(v101 + 64);
  __chkstk_darwin(v12);
  v100 = &v93 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_2440(&qword_1C57E0, &unk_171C60);
  v16 = *(*(v15 - 8) + 64);
  v17 = __chkstk_darwin(v15 - 8);
  v96 = &v93 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v17);
  v97 = &v93 - v20;
  v21 = __chkstk_darwin(v19);
  v98 = &v93 - v22;
  v23 = __chkstk_darwin(v21);
  v99 = &v93 - v24;
  v25 = __chkstk_darwin(v23);
  v94 = &v93 - v26;
  v27 = __chkstk_darwin(v25);
  v95 = &v93 - v28;
  v29 = __chkstk_darwin(v27);
  v31 = &v93 - v30;
  __chkstk_darwin(v29);
  v33 = &v93 - v32;
  v34 = sub_2440(&qword_1C5800, &unk_16F510);
  v35 = *(*(v34 - 8) + 64);
  v36 = __chkstk_darwin(v34 - 8);
  v102 = &v93 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v36);
  v39 = &v93 - v38;
  v40 = type metadata accessor for WellnessQueryingRestingEnergyParameters(0);
  v41 = v40[8];
  v42 = *(a1 + v41);

  *(a1 + v41) = a2;
  [a3 average];
  v44 = v43;
  v45 = sub_A6F70(a3);
  LOBYTE(v41) = v106;
  v47 = sub_99F0C(v45, v46, v106, v44);

  v48 = a1 + v40[5];
  *v48 = v47;
  *(v48 + 8) = 0;
  [a3 total];
  v50 = v49;
  v51 = sub_A6F70(a3);
  v53 = sub_99F0C(v51, v52, v41, v50);

  v106 = v40;
  v54 = v40[9];
  v55 = a3;
  v56 = a1 + v54;
  *v56 = v53;
  *(v56 + 8) = 0;
  sub_A6F70(a3);
  if (v57)
  {
    sub_16E23C();

    v58 = sub_16D5CC();
    v59 = 0;
  }

  else
  {
    v58 = sub_16D5CC();
    v59 = 1;
  }

  v60 = 1;
  sub_214C(v39, v59, 1, v58);
  v61 = a1;
  sub_8640(v39, a1 + v106[10]);
  v62 = sub_16D38C();
  v63 = *(v62 + 48);
  v64 = *(v62 + 52);
  swift_allocObject();
  sub_16D37C();
  v65 = [v105 start];
  if (v65)
  {
    v66 = v65;
    sub_16BF3C();

    v60 = 0;
  }

  v68 = v100;
  v67 = v101;
  sub_214C(v31, v60, 1, v12);
  sub_5D03C(v31, v33, &qword_1C57E0, &unk_171C60);
  if (sub_369C(v33, 1, v12))
  {
    sub_5CFC8(v33, &qword_1C57E0, &unk_171C60);
    v69 = [v55 sampleStartDate];
    if (v69)
    {
      v70 = v69;
      v71 = v94;
      sub_16BF3C();

      v72 = 0;
      v73 = v98;
    }

    else
    {
      v72 = 1;
      v73 = v98;
      v71 = v94;
    }

    sub_214C(v71, v72, 1, v12);
    v74 = v95;
    sub_5D03C(v71, v95, &qword_1C57E0, &unk_171C60);
    if (sub_369C(v74, 1, v12))
    {
      sub_5CFC8(v74, &qword_1C57E0, &unk_171C60);
    }

    else
    {
      (*(v67 + 16))(v68, v74, v12);
      sub_5CFC8(v74, &qword_1C57E0, &unk_171C60);
      sub_16BF2C();
      (*(v67 + 8))(v68, v12);
    }
  }

  else
  {
    (*(v67 + 16))(v68, v33, v12);
    sub_5CFC8(v33, &qword_1C57E0, &unk_171C60);
    sub_16BF2C();
    (*(v67 + 8))(v68, v12);
    v73 = v98;
  }

  sub_16D35C();

  v75 = [v105 end];
  if (v75)
  {
    v76 = v75;
    sub_16BF3C();

    v77 = 0;
  }

  else
  {
    v77 = 1;
  }

  v78 = v61;
  sub_214C(v73, v77, 1, v12);
  v79 = v99;
  sub_5D03C(v73, v99, &qword_1C57E0, &unk_171C60);
  if (!sub_369C(v79, 1, v12))
  {
    goto LABEL_23;
  }

  sub_5CFC8(v79, &qword_1C57E0, &unk_171C60);
  v80 = [v55 sampleEndDate];
  if (v80)
  {
    v81 = v80;
    v82 = v96;
    sub_16BF3C();

    v83 = 0;
  }

  else
  {
    v83 = 1;
    v82 = v96;
  }

  sub_214C(v82, v83, 1, v12);
  v84 = v82;
  v79 = v97;
  sub_5D03C(v84, v97, &qword_1C57E0, &unk_171C60);
  if (sub_369C(v79, 1, v12))
  {
    sub_5CFC8(v79, &qword_1C57E0, &unk_171C60);
  }

  else
  {
LABEL_23:
    (*(v67 + 16))(v68, v79, v12);
    sub_5CFC8(v79, &qword_1C57E0, &unk_171C60);
    sub_16BF2C();
    (*(v67 + 8))(v68, v12);
  }

  sub_16D34C();

  v85 = sub_16D36C();

  v86 = v106[7];
  v87 = *(v78 + v86);

  *(v78 + v86) = v85;
  v88 = v104;
  sub_372FC(v103, v104);
  v89 = sub_16BE9C();
  if (sub_369C(v88, 1, v89) == 1)
  {
    sub_5CFC8(v88, &qword_1C57F8, &unk_172510);
    v90 = sub_16D5CC();
    v91 = v102;
    sub_214C(v102, 1, 1, v90);
  }

  else
  {
    v91 = v102;
    sub_61120(v102);
    (*(*(v89 - 8) + 8))(v88, v89);
  }

  return sub_8640(v91, v78);
}

uint64_t sub_5B30C(uint64_t a1, uint64_t a2, void *a3, int a4, void *a5, uint64_t a6)
{
  v95 = a6;
  v98 = a5;
  LODWORD(v92) = a4;
  v9 = sub_2440(&qword_1C57F8, &unk_172510);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v96 = &v85 - v11;
  v12 = sub_2440(&qword_1C5800, &unk_16F510);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v97 = &v85 - v14;
  v15 = sub_16BF5C();
  v94 = *(v15 - 8);
  v16 = *(v94 + 64);
  __chkstk_darwin(v15);
  v93 = &v85 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_2440(&qword_1C57E0, &unk_171C60);
  v19 = *(*(v18 - 8) + 64);
  v20 = __chkstk_darwin(v18 - 8);
  v86 = &v85 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v20);
  v87 = &v85 - v23;
  v24 = __chkstk_darwin(v22);
  v89 = &v85 - v25;
  v26 = __chkstk_darwin(v24);
  v90 = &v85 - v27;
  v28 = __chkstk_darwin(v26);
  v88 = &v85 - v29;
  v30 = __chkstk_darwin(v28);
  v32 = &v85 - v31;
  v33 = __chkstk_darwin(v30);
  v35 = &v85 - v34;
  __chkstk_darwin(v33);
  v37 = &v85 - v36;
  v38 = type metadata accessor for WellnessQueryingStepsParameters(0);
  v39 = v38[9];
  v40 = *(a1 + v39);

  *(a1 + v39) = a2;
  [a3 total];
  v42 = v41;
  v43 = sub_A6F70(a3);
  LOBYTE(a2) = v92;
  v45 = sub_99F0C(v43, v44, v92, v42);

  v46 = a1 + v38[10];
  *v46 = v45;
  *(v46 + 8) = 0;
  [a3 average];
  v48 = v47;
  v91 = a3;
  v49 = sub_A6F70(a3);
  v51 = sub_99F0C(v49, v50, a2, v48);
  v52 = a1;

  v92 = v38;
  v53 = a1 + v38[5];
  *v53 = v51;
  *(v53 + 8) = 0;
  v54 = sub_16D38C();
  v55 = *(v54 + 48);
  v56 = *(v54 + 52);
  swift_allocObject();
  sub_16D37C();
  v57 = [v98 start];
  if (v57)
  {
    v58 = v57;
    sub_16BF3C();

    v59 = 0;
  }

  else
  {
    v59 = 1;
  }

  sub_214C(v35, v59, 1, v15);
  sub_5D03C(v35, v37, &qword_1C57E0, &unk_171C60);
  v60 = sub_369C(v37, 1, v15);
  v61 = v97;
  v62 = v94;
  v63 = v88;
  if (v60)
  {
    sub_5CFC8(v37, &qword_1C57E0, &unk_171C60);
    v64 = v91;
    v65 = [v91 sampleStartDate];
    if (v65)
    {
      v66 = v65;
      sub_16BF3C();

      v67 = 0;
    }

    else
    {
      v67 = 1;
    }

    sub_214C(v63, v67, 1, v15);
    sub_5D03C(v63, v32, &qword_1C57E0, &unk_171C60);
    if (sub_369C(v32, 1, v15))
    {
      sub_5CFC8(v32, &qword_1C57E0, &unk_171C60);
      v68 = v93;
    }

    else
    {
      v68 = v93;
      (*(v62 + 16))(v93, v32, v15);
      sub_5CFC8(v32, &qword_1C57E0, &unk_171C60);
      sub_16BF2C();
      (*(v62 + 8))(v68, v15);
    }
  }

  else
  {
    v68 = v93;
    (*(v94 + 16))(v93, v37, v15);
    sub_5CFC8(v37, &qword_1C57E0, &unk_171C60);
    sub_16BF2C();
    (*(v62 + 8))(v68, v15);
    v64 = v91;
  }

  sub_16D35C();

  v69 = [v98 end];
  if (v69)
  {
    v70 = v69;
    v71 = v89;
    sub_16BF3C();

    v72 = 0;
  }

  else
  {
    v72 = 1;
    v71 = v89;
  }

  sub_214C(v71, v72, 1, v15);
  v73 = v90;
  sub_5D03C(v71, v90, &qword_1C57E0, &unk_171C60);
  if (!sub_369C(v73, 1, v15))
  {
    goto LABEL_21;
  }

  sub_5CFC8(v73, &qword_1C57E0, &unk_171C60);
  v74 = [v64 sampleEndDate];
  if (v74)
  {
    v75 = v74;
    v76 = v86;
    sub_16BF3C();

    v77 = 0;
  }

  else
  {
    v77 = 1;
    v76 = v86;
  }

  sub_214C(v76, v77, 1, v15);
  v73 = v87;
  sub_5D03C(v76, v87, &qword_1C57E0, &unk_171C60);
  if (sub_369C(v73, 1, v15))
  {
    sub_5CFC8(v73, &qword_1C57E0, &unk_171C60);
  }

  else
  {
LABEL_21:
    (*(v62 + 16))(v68, v73, v15);
    sub_5CFC8(v73, &qword_1C57E0, &unk_171C60);
    sub_16BF2C();
    (*(v62 + 8))(v68, v15);
  }

  sub_16D34C();

  v78 = sub_16D36C();

  v79 = v92[7];
  v80 = *(v52 + v79);

  *(v52 + v79) = v78;
  v81 = v96;
  sub_372FC(v95, v96);
  v82 = sub_16BE9C();
  if (sub_369C(v81, 1, v82) == 1)
  {
    sub_5CFC8(v81, &qword_1C57F8, &unk_172510);
    v83 = sub_16D5CC();
    sub_214C(v61, 1, 1, v83);
  }

  else
  {
    sub_61120(v61);
    (*(*(v82 - 8) + 8))(v81, v82);
  }

  return sub_8640(v61, v52);
}

void sub_5BB78()
{
  sub_5DF60();
  v2 = v1;
  v147 = v3;
  v148 = v4;
  LODWORD(v140) = v5;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = sub_2440(&qword_1C57F8, &unk_172510);
  sub_4348(v12);
  v14 = *(v13 + 64);
  sub_433C();
  __chkstk_darwin(v15);
  sub_13088();
  v149 = v16;
  v17 = sub_16BF5C();
  v18 = sub_42F0(v17);
  v151 = v19;
  v152 = v18;
  v21 = *(v20 + 64);
  __chkstk_darwin(v18);
  sub_12FD4();
  v150 = v22;
  v23 = sub_2440(&qword_1C57E0, &unk_171C60);
  v24 = sub_4348(v23);
  v26 = *(v25 + 64);
  __chkstk_darwin(v24);
  sub_38634();
  v146 = v27;
  sub_89B4();
  __chkstk_darwin(v28);
  sub_8AC0();
  v138 = v29;
  sub_89B4();
  __chkstk_darwin(v30);
  sub_8AC0();
  v139 = v31;
  sub_89B4();
  v33 = __chkstk_darwin(v32);
  v35 = &v135 - v34;
  __chkstk_darwin(v33);
  sub_8AC0();
  v144 = v36;
  sub_89B4();
  __chkstk_darwin(v37);
  sub_8AC0();
  v136 = v38;
  sub_89B4();
  __chkstk_darwin(v39);
  sub_8AC0();
  v137 = v40;
  sub_89B4();
  __chkstk_darwin(v41);
  sub_8AC0();
  v141 = v42;
  sub_89B4();
  __chkstk_darwin(v43);
  v142 = &v135 - v44;
  v45 = sub_2440(&qword_1C5800, &unk_16F510);
  v46 = sub_4348(v45);
  v48 = *(v47 + 64);
  __chkstk_darwin(v46);
  sub_38634();
  v145 = v49;
  sub_89B4();
  __chkstk_darwin(v50);
  sub_5E160();
  __chkstk_darwin(v51);
  v53 = &v135 - v52;
  v54 = v2(0);
  v55 = v54[10];
  v56 = *(v11 + v55);

  *(v11 + v55) = v9;
  [v7 mostRecent];
  v57 = sub_5E1F8();
  sub_5DDFC(v57, v58);
  sub_5E210();
  sub_5DC68(v11 + v54[12]);
  [v7 maximum];
  v59 = sub_5E1F8();
  sub_5DDFC(v59, v60);
  sub_5E210();
  sub_5DC68(v11 + v54[8]);
  [v7 minimum];
  v61 = sub_5E1F8();
  sub_5DDFC(v61, v62);
  sub_5E210();
  v63 = v54[9];
  v153 = v11;
  sub_5DC68(v11 + v63);
  if ((v140 & 1) == 0)
  {
    [v7 average];
    v64 = sub_5E1F8();
    sub_5DDFC(v64, v65);
    sub_5E210();
    sub_5DC68(v153 + v54[5]);
  }

  sub_A6F70(v7);
  if (v66)
  {
    sub_16E21C();

    sub_16E23C();

    v67 = sub_16D5CC();
    sub_388E4();
    sub_214C(v68, v69, v70, v67);
    sub_5DE54(v67);
    (*(v71 + 32))(v53, v0, v67);
  }

  else
  {
    v67 = sub_16D5CC();
    v72 = sub_5DA00();
    sub_214C(v72, v73, 1, v67);
    sub_16E23C();
    v74 = sub_5DA00();
    if (sub_369C(v74, v75, v67) != 1)
    {
      sub_5CFC8(v0, &qword_1C5800, &unk_16F510);
    }
  }

  sub_16D5CC();
  v76 = 1;
  sub_388E4();
  v140 = v67;
  sub_214C(v77, v78, v79, v67);
  sub_8640(v53, v153 + v54[11]);
  v80 = sub_16D38C();
  sub_8D14(v80);
  sub_16D37C();
  v81 = v147;
  v82 = [v147 start];
  v143 = v54;
  if (v82)
  {
    v83 = v82;
    v84 = v35;
    v85 = v141;
    sub_16BF3C();

    v76 = 0;
  }

  else
  {
    v84 = v35;
    v85 = v141;
  }

  v86 = v152;
  sub_214C(v85, v76, 1, v152);
  v87 = v85;
  v88 = v142;
  sub_5D03C(v87, v142, &qword_1C57E0, &unk_171C60);
  if (sub_5DDE4(v88))
  {
    sub_5CFC8(v88, &qword_1C57E0, &unk_171C60);
    v89 = [v7 sampleEndDate];
    if (v89)
    {
      v90 = v89;
      v91 = v136;
      sub_16BF3C();

      v92 = 0;
      v86 = v152;
    }

    else
    {
      v92 = 1;
      v86 = v152;
      v91 = v136;
    }

    sub_5DDCC(v91, v92);
    v95 = v137;
    sub_5D03C(v91, v137, &qword_1C57E0, &unk_171C60);
    if (sub_5DDE4(v95))
    {
      sub_5CFC8(v95, &qword_1C57E0, &unk_171C60);
      _s18WellnessFlowPlugin28SpecificMedCompletedLogModelV6dosageSdSgvpfi_0();
      goto LABEL_19;
    }

    v96 = v151;
    v97 = v150;
    (*(v151 + 16))(v150, v95, v86);
    sub_5CFC8(v95, &qword_1C57E0, &unk_171C60);
    sub_16BF2C();
    (*(v96 + 8))(v97, v86);
  }

  else
  {
    v93 = v150;
    v94 = v151;
    (*(v151 + 16))(v150, v88, v86);
    sub_5CFC8(v88, &qword_1C57E0, &unk_171C60);
    sub_16BF2C();
    (*(v94 + 8))(v93, v86);
  }

  sub_5DC04();
LABEL_19:
  v98 = sub_16D35C();

  v99 = [v81 end];
  if (v99)
  {
    v100 = v99;
    sub_16BF3C();

    v101 = 0;
  }

  else
  {
    v101 = 1;
  }

  v102 = v144;
  sub_5DDCC(v84, v101);
  sub_5D03C(v84, v102, &qword_1C57E0, &unk_171C60);
  v103 = sub_5DA00();
  if (sub_369C(v103, v104, v86))
  {
    sub_5CFC8(v102, &qword_1C57E0, &unk_171C60);
    v105 = [v7 sampleEndDate];
    if (v105)
    {
      v106 = v105;
      v107 = v138;
      sub_16BF3C();

      v108 = 0;
    }

    else
    {
      v108 = 1;
      v107 = v138;
    }

    v109 = v139;
    sub_5DDCC(v107, v108);
    sub_5D03C(v107, v109, &qword_1C57E0, &unk_171C60);
    v116 = sub_5DA00();
    v118 = sub_369C(v116, v117, v86);
    v114 = v153;
    v115 = v143;
    if (v118)
    {
      sub_5CFC8(v109, &qword_1C57E0, &unk_171C60);
      _s18WellnessFlowPlugin28SpecificMedCompletedLogModelV6dosageSdSgvpfi_0();
    }

    else
    {
      v120 = v150;
      v119 = v151;
      v121 = sub_5E138(v151);
      v122(v121);
      sub_5CFC8(v109, &qword_1C57E0, &unk_171C60);
      sub_16BF2C();
      (*(v119 + 8))(v120, v86);
      sub_5DC04();
    }
  }

  else
  {
    v110 = v150;
    v111 = v151;
    v112 = sub_5E138(v151);
    v113(v112);
    sub_5CFC8(v102, &qword_1C57E0, &unk_171C60);
    sub_16BF2C();
    (*(v111 + 8))(v110, v86);
    sub_5DC04();
    v114 = v153;
    v115 = v143;
  }

  sub_16D34C();

  sub_16D36C();
  sub_5E188();

  v123 = v115[7];
  v124 = *(v114 + v123);

  *(v114 + v123) = v98;
  v125 = [v81 start];
  if (v125)
  {
    v126 = v146;
    sub_16BF3C();

    v127 = 0;
  }

  else
  {
    v127 = 1;
    v126 = v146;
  }

  sub_5DDCC(v126, v127);
  sub_5CFC8(v126, &qword_1C57E0, &unk_171C60);
  *(v114 + v115[13]) = v125 == 0;
  v128 = v149;
  sub_372FC(v148, v149);
  sub_16BE9C();
  v129 = sub_5E188();
  if (sub_369C(v129, 1, v126) == 1)
  {
    sub_5CFC8(v128, &qword_1C57F8, &unk_172510);
    v130 = v145;
    sub_214C(v145, 1, 1, v140);
  }

  else
  {
    v130 = v145;
    sub_61120(v145);
    sub_5DE54(v126);
    v132 = *(v131 + 8);
    v133 = sub_38B40();
    v134(v133);
  }

  sub_8640(v130, v114);
  sub_5DFAC();
}

uint64_t sub_5C55C(uint64_t a1, uint64_t a2, int a3, void *a4, unsigned __int8 a5, void *a6, uint64_t a7)
{
  v110 = a7;
  v112 = a6;
  v113 = a4;
  v103 = a3;
  v10 = sub_2440(&qword_1C57F8, &unk_172510);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v111 = &v100 - v12;
  v13 = sub_16BF5C();
  v108 = *(v13 - 8);
  v14 = *(v108 + 64);
  __chkstk_darwin(v13);
  v107 = &v100 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_2440(&qword_1C57E0, &unk_171C60);
  v17 = *(*(v16 - 8) + 64);
  v18 = __chkstk_darwin(v16 - 8);
  v106 = &v100 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v18);
  v102 = &v100 - v21;
  v22 = __chkstk_darwin(v20);
  v104 = &v100 - v23;
  v24 = __chkstk_darwin(v22);
  v105 = &v100 - v25;
  v26 = __chkstk_darwin(v24);
  v100 = &v100 - v27;
  v28 = __chkstk_darwin(v26);
  v101 = &v100 - v29;
  v30 = __chkstk_darwin(v28);
  v32 = &v100 - v31;
  __chkstk_darwin(v30);
  v34 = &v100 - v33;
  v35 = sub_2440(&qword_1C5800, &unk_16F510);
  v36 = *(*(v35 - 8) + 64);
  v37 = __chkstk_darwin(v35 - 8);
  v109 = &v100 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v37);
  v40 = &v100 - v39;
  v41 = type metadata accessor for WellnessQueryingWeightParameters(0);
  v42 = v41[10];
  v43 = *(a1 + v42);

  *(a1 + v42) = a2;
  v44 = v113;
  v45 = a1;
  v46 = v41;
  if ((v103 & 1) == 0)
  {
    [v113 minimum];
    v48 = v47;
    v49 = sub_A6F70(v44);
    v51 = sub_99F0C(v49, v50, a5, v48);

    v52 = v45 + v41[9];
    *v52 = v51;
    *(v52 + 8) = 0;
    [v44 maximum];
    v54 = v53;
    v55 = sub_A6F70(v44);
    v57 = sub_99F0C(v55, v56, a5, v54);

    v58 = v45 + v41[8];
    *v58 = v57;
    *(v58 + 8) = 0;
  }

  sub_5840C(v44);
  v60 = v59;
  v61 = sub_A6F70(v44);
  v63 = sub_99F0C(v61, v62, a5, v60);

  v64 = v45 + v41[12];
  *v64 = v63;
  *(v64 + 8) = 0;
  sub_A6F70(v44);
  if (v65)
  {
    sub_16E23C();

    v66 = sub_16D5CC();
    v67 = 0;
  }

  else
  {
    v66 = sub_16D5CC();
    v67 = 1;
  }

  v68 = v107;
  v69 = 1;
  sub_214C(v40, v67, 1, v66);
  sub_8640(v40, v45 + v46[11]);
  v70 = sub_16D38C();
  v71 = *(v70 + 48);
  v72 = *(v70 + 52);
  swift_allocObject();
  sub_16D37C();
  v73 = [v112 start];
  if (v73)
  {
    v74 = v73;
    sub_16BF3C();

    v69 = 0;
  }

  sub_214C(v32, v69, 1, v13);
  sub_5D03C(v32, v34, &qword_1C57E0, &unk_171C60);
  if (sub_369C(v34, 1, v13))
  {
    sub_5CFC8(v34, &qword_1C57E0, &unk_171C60);
    v75 = [v113 sampleEndDate];
    v76 = v108;
    if (v75)
    {
      v77 = v75;
      v78 = v100;
      sub_16BF3C();

      v79 = 0;
      v80 = v106;
    }

    else
    {
      v79 = 1;
      v80 = v106;
      v78 = v100;
    }

    sub_214C(v78, v79, 1, v13);
    v81 = v101;
    sub_5D03C(v78, v101, &qword_1C57E0, &unk_171C60);
    if (sub_369C(v81, 1, v13))
    {
      sub_5CFC8(v81, &qword_1C57E0, &unk_171C60);
    }

    else
    {
      (*(v76 + 16))(v68, v81, v13);
      sub_5CFC8(v81, &qword_1C57E0, &unk_171C60);
      sub_16BF2C();
      (*(v76 + 8))(v68, v13);
    }
  }

  else
  {
    v76 = v108;
    (*(v108 + 16))(v68, v34, v13);
    sub_5CFC8(v34, &qword_1C57E0, &unk_171C60);
    sub_16BF2C();
    (*(v76 + 8))(v68, v13);
    v80 = v106;
  }

  sub_16D35C();

  v82 = [v112 end];
  if (v82)
  {
    v83 = v82;
    v84 = v104;
    sub_16BF3C();

    v85 = 0;
  }

  else
  {
    v85 = 1;
    v84 = v104;
  }

  sub_214C(v84, v85, 1, v13);
  v86 = v105;
  sub_5D03C(v84, v105, &qword_1C57E0, &unk_171C60);
  if (sub_369C(v86, 1, v13))
  {
    sub_5CFC8(v86, &qword_1C57E0, &unk_171C60);
    v87 = [v113 sampleEndDate];
    if (v87)
    {
      v88 = v87;
      sub_16BF3C();

      v89 = 0;
    }

    else
    {
      v89 = 1;
    }

    v91 = v102;
    sub_214C(v80, v89, 1, v13);
    sub_5D03C(v80, v91, &qword_1C57E0, &unk_171C60);
    if (sub_369C(v91, 1, v13))
    {
      sub_5CFC8(v91, &qword_1C57E0, &unk_171C60);
      goto LABEL_28;
    }

    (*(v76 + 16))(v68, v91, v13);
    v90 = v91;
  }

  else
  {
    (*(v76 + 16))(v68, v86, v13);
    v90 = v86;
  }

  sub_5CFC8(v90, &qword_1C57E0, &unk_171C60);
  sub_16BF2C();
  (*(v76 + 8))(v68, v13);
LABEL_28:
  sub_16D34C();

  v92 = sub_16D36C();

  v93 = v46[6];
  v94 = *(v45 + v93);

  *(v45 + v93) = v92;
  v95 = v111;
  sub_372FC(v110, v111);
  v96 = sub_16BE9C();
  if (sub_369C(v95, 1, v96) == 1)
  {
    sub_5CFC8(v95, &qword_1C57F8, &unk_172510);
    v97 = sub_16D5CC();
    v98 = v109;
    sub_214C(v109, 1, 1, v97);
  }

  else
  {
    v98 = v109;
    sub_61120(v109);
    (*(*(v96 - 8) + 8))(v95, v96);
  }

  return sub_8640(v98, v45);
}

id sub_5CED0()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = sub_16E1AC();

  v2 = [v0 initWithSymbol:v1];

  return v2;
}

uint64_t sub_5CFC8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_2440(a2, a3);
  sub_5DE54(v4);
  (*(v5 + 8))(a1);
  return a1;
}

uint64_t sub_5D03C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_2440(a3, a4);
  sub_5DE54(v6);
  (*(v7 + 32))(a2, a1);
  return a2;
}

void sub_5D2E0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 33);
  v4 = *(v0 + 40);
  v5 = *(v0 + 48);
  v6 = *(v0 + 32);
  sub_5BB78();
}

uint64_t sub_5D31C(uint64_t a1)
{
  *(a1 + 8) = v1;
  v3 = v2[6];
  v4 = v2[7];
  return v2[5];
}

id sub_5D350(uint64_t a1)
{
  sub_214C(v1, 1, 1, a1);
  v4 = *(v3 + 2704);

  return [v2 v4];
}

uint64_t sub_5D390()
{
  v3 = v1[24];
  v2 = v1[25];
  v4 = v1[23];
  v5 = v1[21];
  v6 = v1[5];
  sub_214C(v1[22], v0, 1, v1[14]);

  return type metadata accessor for WellnessTime(0);
}

uint64_t sub_5D3D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_214C(v12, 0, 1, a10);

  return sub_5D03C(v12, v11, v10, v13);
}

uint64_t sub_5D41C(uint64_t a1)
{
  *(v1 + 64) = a1;
  v3 = *(a1 - 8);
  return a1 - 8;
}

id sub_5D430(uint64_t a1, uint64_t a2)
{
  v3 = v2[5];
  sub_214C(v2[25], a2, 1, v2[14]);

  return [v3 end];
}

void sub_5D474()
{
  v1 = v0[21];
  v2 = v0[12];
  v3 = v0[13];
  v5 = v0[9];
  v4 = v0[10];
  v6 = v0[8];
}

uint64_t sub_5D4A0()
{
  v1 = v0[13];
  v2 = v0[6];
  v3 = v0[5];
  sub_2D20((v0[7] + 120), *(v0[7] + 144));

  return swift_task_alloc();
}

uint64_t sub_5D4E0()
{
  v2 = v0[20];
  v10 = v0[21];
  v4 = v0[18];
  v3 = v0[19];
  v6 = v0[16];
  v5 = v0[17];
  v7 = v0[14];
  v8 = v0[15];

  return sub_16BF3C();
}

uint64_t sub_5D50C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(v5 + 40);
  sub_214C(v6, v4, 1, a4);

  return type metadata accessor for WellnessTime(0);
}

uint64_t sub_5D564(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  *(v12 + 216) = result;
  *(result + 16) = a12;
  *(result + 24) = v13;
  return result;
}

uint64_t sub_5D578()
{
  v2 = v0[21];
  v10 = v0[22];
  v3 = v0[16];
  v11 = v0[20];
  v4 = v0[14];
  v5 = v0[12];
  v6 = v0[13];
  v7 = v0[11];
  v8 = v0[15];

  return sub_16BF3C();
}

uint64_t sub_5D5B0()
{
  v3 = v1[23];
  v4 = v1[14];
  v5 = v1[6];

  return sub_214C(v3, v0, 1, v4);
}

uint64_t sub_5D5D8()
{
  v3 = v1[24];
  v4 = v1[14];
  v5 = v1[6];

  return sub_214C(v3, v0, 1, v4);
}

void sub_5D600()
{

  sub_15BF80();
}

uint64_t sub_5D63C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  sub_214C(v14, 0, 1, a11);

  return sub_5D03C(v14, v12, v11, v13);
}

id sub_5D6A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_214C(a1, v4, 1, a4);

  return [v5 sampleEndDate];
}

uint64_t sub_5D6EC()
{
  sub_2D64(v0);
}

uint64_t sub_5D740()
{
  v2 = v0[11];
  v6 = v0[10];
  v4 = v0[8];
  v3 = v0[9];

  return swift_slowAlloc();
}

uint64_t sub_5D794(uint64_t a1, uint64_t a2)
{
  v4 = v2[19];
  v3 = v2[20];
  return sub_214C(v2[23], a2, 1, v2[11]);
}

void sub_5D7D4(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t sub_5D7F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(v5 + 48);

  return sub_214C(a1, v4, 1, a4);
}

uint64_t sub_5D814@<X0>(uint64_t result@<X0>, char a2@<W8>)
{
  *(result + 32) = a2;
  *(result + 40) = v4;
  *(result + 48) = v3;
  v5 = *v2;
  return result;
}

uint64_t sub_5D824()
{

  return swift_beginAccess();
}

uint64_t sub_5D844(uint64_t a1)
{
  *(v1 + 88) = a1;
  v3 = *(a1 - 8);
  return a1 - 8;
}

uint64_t sub_5D854()
{
  result = v0[19];
  v2 = v0[14];
  v3 = *(v0[15] + 8);
  return result;
}

uint64_t sub_5D864()
{
  v2 = v0[17];
  v3 = v0[9];
  v6 = v0[10];
  v4 = v0[8];

  return swift_slowAlloc();
}

uint64_t sub_5D88C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{

  return sub_5CFC8(a11, v11, v12);
}

uint64_t sub_5D8BC@<X0>(uint64_t result@<X0>, char a2@<W8>)
{
  *(result + 32) = a2;
  *(result + 33) = v3;
  *(result + 40) = v5;
  *(result + 48) = v4;
  v6 = *v2;
  return result;
}

uint64_t sub_5D8F0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  *(v14 + 232) = result;
  *(result + 16) = a14;
  *(result + 24) = v15;
  return result;
}

uint64_t sub_5D904(uint64_t a1, uint64_t a2)
{
  v4 = v2[27];
  v5 = v2[11];
  v6 = v2[5];

  return sub_214C(v4, a2, 1, v5);
}

id sub_5D928()
{

  return [v0 start];
}

uint64_t sub_5D954()
{

  return swift_beginAccess();
}

uint64_t sub_5D970()
{
}

uint64_t sub_5D98C()
{

  return swift_slowAlloc();
}

uint64_t sub_5D9C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[6] = a2;
  v3[7] = a3;
  v3[5] = a1;

  return sub_16DBEC();
}

BOOL sub_5D9E4(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t sub_5DA0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{

  return sub_5CFC8(a10, v10, v11);
}

uint64_t sub_5DA6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);

  return sub_3AB7C(v4, v5, va);
}

uint64_t sub_5DA88()
{

  return sub_16BD5C();
}

uint64_t sub_5DAA4(uint64_t a1)
{
  *(v1 + 208) = a1;

  return sub_16BD9C();
}

uint64_t sub_5DAC0()
{
  v2 = *(v0 + 152);
  v3 = *(v0 + 40);

  return sub_16BF3C();
}

uint64_t sub_5DADC()
{
  v2 = v0[20];
  v3 = v0[18];
  v5 = v0[9];
  v4 = v0[10];
  v6 = v0[8];

  return sub_16DBBC();
}

uint64_t sub_5DAFC()
{
  result = v0[16];
  v2 = v0[11];
  v3 = *(v0[12] + 8);
  return result;
}

void sub_5DB24()
{
  v1 = v0[31];
  v2 = v0[32];
  v4 = v0[29];
  v3 = v0[30];
  v6 = v0[27];
  v5 = v0[28];
  v8 = v0[25];
  v7 = v0[26];
  v9 = v0[24];
  v10 = v0[23];
  v11 = v0[21];
  v12 = v0[20];
  v13 = v0[19];
  v14 = v0[18];
  v15 = v0[15];
  v16 = v0[14];
  v17 = v0[11];
}

void sub_5DB5C()
{
  v2 = v0[37];
  v1 = v0[38];
  v4 = v0[35];
  v3 = v0[36];
  v6 = v0[33];
  v5 = v0[34];
  v7 = v0[31];
  v8 = v0[32];
  v9 = v0[30];
  v11 = v0[29];
  v12 = v0[27];
  v13 = v0[26];
  v14 = v0[25];
  v15 = v0[24];
  v16 = v0[21];
  v10 = v0[16];
  v17 = v0[20];
  v18 = v0[17];
}

uint64_t sub_5DC24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);

  return sub_3AB7C(v6, v7, va);
}

uint64_t sub_5DC40()
{

  return sub_16BD5C();
}

uint64_t sub_5DC74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_214C(a1, v4, 1, a4);
}

uint64_t sub_5DC8C()
{
  v2 = *(v0 + 128);
  v3 = *(v0 + 40);

  return sub_16BF3C();
}

uint64_t sub_5DCA8(uint64_t a1)
{
  *(v1 + 224) = a1;

  return sub_16BD9C();
}

uint64_t sub_5DCC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_214C(a1, a2, 1, a4);
}

uint64_t sub_5DCDC(uint64_t a1)
{
  *(v1 + 192) = a1;

  return swift_task_alloc();
}

uint64_t sub_5DCF4()
{
}

uint64_t sub_5DD0C(uint64_t a1)
{
  *(v1 + 184) = a1;

  return swift_task_alloc();
}

uint64_t sub_5DD24(uint64_t a1)
{
  *(v1 + 144) = a1;

  return swift_task_alloc();
}

void sub_5DD3C()
{
  v4 = v1[9];
  v3 = v1[10];
  v5 = v1[8];
}

uint64_t sub_5DD54(float a1)
{
  *v1 = a1;

  return sub_16E3DC();
}

uint64_t sub_5DD6C()
{
  v2 = *(v0 + 200);

  return sub_16BF3C();
}

uint64_t sub_5DD84()
{
  v2 = *(v0 + 184);

  return sub_16BF3C();
}

uint64_t sub_5DD9C()
{
  v2 = *(v0 + 192);

  return sub_16BF3C();
}

uint64_t sub_5DDB4(uint64_t a1)
{
  *(v1 + 160) = a1;

  return swift_task_alloc();
}

uint64_t sub_5DDCC(uint64_t a1, uint64_t a2)
{

  return sub_214C(a1, a2, 1, v2);
}

uint64_t sub_5DDE4(uint64_t a1)
{

  return sub_369C(a1, 1, v1);
}

double sub_5DDFC(uint64_t a1, uint64_t a2)
{

  return sub_99F0C(a1, a2, v2, v4);
}

uint64_t sub_5DE18(uint64_t a1)
{
  *(v1 + 128) = a1;

  return swift_task_alloc();
}

uint64_t sub_5DE60(uint64_t a1)
{
  *(v1 + 136) = a1;

  return swift_task_alloc();
}

uint64_t sub_5DE78(uint64_t a1)
{
  *(v1 + 176) = a1;

  return swift_task_alloc();
}

id sub_5DE90()
{
  v3 = *(v1 + 2712);

  return [v0 v3];
}

uint64_t sub_5DEA8(uint64_t a1)
{
  *(v1 + 96) = a1;

  return swift_task_alloc();
}

uint64_t sub_5DEC0(uint64_t a1)
{
  *(v1 + 104) = a1;

  return sub_16BF5C();
}

uint64_t sub_5DED8()
{
  *(v1 + 232) = v0;
}

uint64_t sub_5DEF0()
{
  v2 = *(v0 + 176);

  return sub_16BF3C();
}

uint64_t sub_5DF18(uint64_t a1)
{
  *(v1 + 200) = a1;

  return swift_task_alloc();
}

uint64_t sub_5DF30(uint64_t a1)
{
  *(v1 + 208) = a1;

  return swift_task_alloc();
}

uint64_t sub_5DF48(uint64_t a1)
{
  *(v1 + 112) = a1;

  return swift_task_alloc();
}

uint64_t sub_5DF7C(uint64_t a1)
{
  *(v1 + 152) = a1;

  return swift_task_alloc();
}

uint64_t sub_5DF94(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return sub_5D03C(v5, v4, a3, a4);
}

uint64_t sub_5E000()
{
  v2 = v0[41];
  v1 = v0[42];
  v3 = v0[33];
  result = v0[16];
  v5 = v0[17];
  v6 = v0[11];
  return result;
}

uint64_t sub_5E03C(uint64_t a1)
{
  *(v1 + 120) = a1;

  return swift_task_alloc();
}

uint64_t sub_5E054(uint64_t a1)
{
  *(v1 + 104) = a1;

  return swift_task_alloc();
}

double sub_5E080(uint64_t a1, uint64_t a2)
{

  return sub_99F0C(a1, a2, 0xA2u, v3);
}

uint64_t sub_5E09C(uint64_t a1)
{
  *(v1 + 168) = a1;

  return swift_task_alloc();
}

id sub_5E0B4()
{
  v3 = *(v0 + 48);
  v4 = *(v1 + 2728);

  return [v3 v4];
}

uint64_t sub_5E0CC()
{
  *(v1 + 248) = v0;
}

uint64_t sub_5E0E4()
{
  v2 = *(v0 + 216);

  return sub_16BF3C();
}

uint64_t sub_5E0FC(uint64_t a1)
{
  *(v1 + 80) = a1;

  return sub_16BF5C();
}

uint64_t sub_5E114()
{
  v2 = *(v0 + 208);

  return sub_16BF3C();
}

uint64_t sub_5E1D8()
{

  return sub_5D03C(v3, v0, v1, v2);
}

uint64_t sub_5E1F8()
{

  return sub_A6F70(v0);
}

uint64_t sub_5E210()
{
}

uint64_t sub_5E270()
{
  sub_8A88();
  *(v0 + 168) = v1;
  *(v0 + 120) = v2;
  *(v0 + 128) = v3;
  v4 = sub_16DBEC();
  *(v0 + 136) = v4;
  sub_888C(v4);
  *(v0 + 144) = v5;
  v7 = *(v6 + 64);
  *(v0 + 152) = sub_8BC0();
  v8 = sub_17960();

  return _swift_task_switch(v8, v9, v10);
}

uint64_t sub_5E318()
{
  v1 = *(v0 + 168);
  v2 = (v1 - 89) > 0x3E || ((1 << (v1 - 89)) & 0x6400000000054181) == 0;
  if (v2 && ((v3 = v1 - 155, v4 = v3 > 0x22, v5 = (1 << v3) & 0x4200C8091, !v4) ? (v6 = v5 == 0) : (v6 = 1), v6))
  {
    *(v0 + 48) = 0;
    *(v0 + 16) = 0u;
    *(v0 + 32) = 0u;
    sub_5E750(v0 + 16, v0 + 56);
    v11 = *(v0 + 80);
    sub_8748(v0 + 56, &qword_1C5ED0, &qword_171090);
    if (v11)
    {
      sub_60248();
    }

    else
    {
      v13 = *(v0 + 144);
      v12 = *(v0 + 152);
      v14 = *(v0 + 136);
      sub_16DBBC();
      sub_8B48();
      v15 = sub_3BD68();
      v16(v15);
      v17 = sub_16DBDC();
      v18 = sub_16E37C();
      if (sub_1BA1C(v18))
      {
        v19 = sub_1BA38();
        sub_1BA50(v19);
        sub_1B9D0(&def_259DC, v20, v21, "#GenerateLoggingResponseOutput: Snippet model cannot be created. Possibly unsupported usecase.");
        sub_1BA00();
      }

      v23 = *(v0 + 144);
      v22 = *(v0 + 152);
      v24 = *(v0 + 136);
      v25 = *(v0 + 120);

      v26 = sub_60238();
      v27(v26);
      sub_8748(v0 + 16, &qword_1C5ED0, &qword_171090);
      sub_60260();
      *(v25 + 32) = 0;
    }

    v28 = *(v0 + 152);

    sub_C9BC();

    return v29();
  }

  else
  {
    v7 = swift_task_alloc();
    *(v0 + 160) = v7;
    *v7 = v0;
    v7[1] = sub_5E530;
    v8 = *(v0 + 128);
    v9 = *(v0 + 168);

    return sub_5E7C0();
  }
}

uint64_t sub_5E530()
{
  sub_8A88();
  sub_C9D4();
  v2 = *(v1 + 160);
  v3 = *v0;
  sub_C990();
  *v4 = v3;

  v5 = sub_17960();

  return _swift_task_switch(v5, v6, v7);
}

uint64_t sub_5E614()
{
  sub_5E750((v0 + 2), (v0 + 7));
  v1 = v0[10];
  sub_8748((v0 + 7), &qword_1C5ED0, &qword_171090);
  if (v1)
  {
    sub_60248();
  }

  else
  {
    v3 = v0[18];
    v2 = v0[19];
    v4 = v0[17];
    sub_16DBBC();
    sub_8B48();
    v5 = sub_3BD68();
    v6(v5);
    v7 = sub_16DBDC();
    v8 = sub_16E37C();
    if (sub_1BA1C(v8))
    {
      v9 = sub_1BA38();
      sub_1BA50(v9);
      sub_1B9D0(&def_259DC, v10, v11, "#GenerateLoggingResponseOutput: Snippet model cannot be created. Possibly unsupported usecase.");
      sub_1BA00();
    }

    v13 = v0[18];
    v12 = v0[19];
    v14 = v0[17];
    v15 = v0[15];

    v16 = sub_60238();
    v17(v16);
    sub_8748((v0 + 2), &qword_1C5ED0, &qword_171090);
    sub_60260();
    *(v15 + 32) = 0;
  }

  v18 = v0[19];

  sub_C9BC();

  return v19();
}

uint64_t sub_5E750(uint64_t a1, uint64_t a2)
{
  v4 = sub_2440(&qword_1C5ED0, &qword_171090);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_5E7C0()
{
  sub_8A88();
  *(v0 + 528) = v1;
  *(v0 + 168) = v2;
  *(v0 + 176) = v3;
  v4 = sub_2440(&qword_1C63F0, &unk_1717F0);
  sub_4348(v4);
  v6 = *(v5 + 64);
  *(v0 + 184) = sub_8BC0();
  v7 = sub_2440(&qword_1C5800, &unk_16F510);
  sub_4348(v7);
  v9 = *(v8 + 64);
  *(v0 + 192) = sub_8C38();
  *(v0 + 200) = swift_task_alloc();
  *(v0 + 208) = swift_task_alloc();
  v10 = sub_2440(&qword_1C5690, &dword_16F320);
  sub_4348(v10);
  v12 = *(v11 + 64);
  *(v0 + 216) = sub_8BC0();
  v13 = sub_2440(&qword_1C57F8, &unk_172510);
  sub_4348(v13);
  v15 = *(v14 + 64);
  *(v0 + 224) = sub_8BC0();
  v16 = sub_2440(&dword_1C63F8, &qword_171800);
  sub_4348(v16);
  v18 = *(v17 + 64);
  *(v0 + 232) = sub_8BC0();
  v19 = type metadata accessor for HealthDataLogModel();
  *(v0 + 240) = v19;
  sub_4348(v19);
  v21 = *(v20 + 64);
  *(v0 + 248) = sub_8C38();
  *(v0 + 256) = swift_task_alloc();
  *(v0 + 264) = swift_task_alloc();
  *(v0 + 272) = swift_task_alloc();
  v22 = sub_16DBEC();
  *(v0 + 280) = v22;
  sub_888C(v22);
  *(v0 + 288) = v23;
  v25 = *(v24 + 64);
  *(v0 + 296) = sub_8C38();
  *(v0 + 304) = swift_task_alloc();
  *(v0 + 312) = swift_task_alloc();
  *(v0 + 320) = swift_task_alloc();
  v26 = type metadata accessor for SnippetHeaderModel();
  *(v0 + 328) = v26;
  sub_4348(v26);
  v28 = *(v27 + 64);
  *(v0 + 336) = sub_8C38();
  *(v0 + 344) = swift_task_alloc();
  *(v0 + 352) = swift_task_alloc();
  v29 = sub_16BF5C();
  *(v0 + 360) = v29;
  sub_888C(v29);
  *(v0 + 368) = v30;
  v32 = *(v31 + 64);
  *(v0 + 376) = sub_8BC0();
  v33 = sub_17960();

  return _swift_task_switch(v33, v34, v35);
}

uint64_t sub_5EA50()
{
  sub_8A88();
  sub_208C0(*(v0 + 528));
  *(v0 + 384) = v1;
  v2 = swift_task_alloc();
  *(v0 + 392) = v2;
  *v2 = v0;
  v2[1] = sub_5EAF4;

  return sub_66E84();
}

uint64_t sub_5EAF4()
{
  sub_8A88();
  sub_C9D4();
  sub_8A60();
  *v2 = v1;
  v4 = *(v3 + 392);
  v5 = *(v3 + 384);
  v6 = *v0;
  sub_C990();
  *v7 = v6;
  *(v10 + 400) = v8;
  *(v10 + 408) = v9;

  v11 = sub_17960();

  return _swift_task_switch(v11, v12, v13);
}

uint64_t sub_5EBF8()
{
  v82 = v0;
  if (sub_208C0(*(v0 + 528)) == 0xD000000000000028 && 0x800000000017CF90 == v1)
  {
  }

  else
  {
    v3 = sub_16E6BC();

    if ((v3 & 1) == 0)
    {
      [*(v0 + 176) doubleValue];
      v5 = v4;
      goto LABEL_9;
    }
  }

  [*(v0 + 176) doubleValue];
  v5 = v6 * 100.0;
LABEL_9:
  v7 = *(v0 + 176);
  v8 = *(v0 + 528);
  v9 = sub_5FF28(v7);
  *(v0 + 416) = sub_99F0C(v9, v10, v8, v5);

  v11 = sub_5FE84(v8, v7);
  v13 = v12;
  *(v0 + 424) = v11;
  *(v0 + 432) = v12;
  v14 = [v7 start];
  if (v14)
  {
    v15 = v14;
    v16 = *(v0 + 376);
    sub_16BF3C();

    if (v13 && *(v0 + 408))
    {
      v17 = *(v0 + 400);
      v19 = *(v0 + 344);
      v18 = *(v0 + 352);
      v20 = *(v0 + 320);
      v21 = *(v0 + 328);
      v22 = *(v0 + 280);
      v23 = *(v0 + 288);
      v24 = *(v0 + 528);
      v25 = *(v0 + 408);
      sub_16E23C();

      v26 = sub_25948(v24);
      v28 = v27;
      v29 = sub_208C0(v24);
      v30 = (v18 + *(v21 + 20));
      *v30 = v26;
      v30[1] = v28;
      v31 = (v18 + *(v21 + 24));
      *v31 = v29;
      v31[1] = v32;
      v33 = sub_16DBBC();
      *(v0 + 440) = v33;
      sub_8B48();
      v34 = *(v23 + 16);
      *(v0 + 448) = v34;
      *(v0 + 456) = (v23 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v34(v20, v33, v22);
      sub_60220();
      sub_600D0(v18, v19, v35);
      v36 = sub_16DBDC();
      v37 = sub_16E36C();
      v38 = os_log_type_enabled(v36, v37);
      v39 = *(v0 + 344);
      if (v38)
      {
        v41 = *(v0 + 328);
        v40 = *(v0 + 336);
        v42 = *(v0 + 288);
        v79 = *(v0 + 280);
        v80 = *(v0 + 320);
        v43 = swift_slowAlloc();
        v44 = swift_slowAlloc();
        v81 = v44;
        *v43 = 136315138;
        sub_600D0(v39, v40, type metadata accessor for SnippetHeaderModel);
        v45 = sub_16E1EC();
        v47 = v46;
        sub_60130(v39, type metadata accessor for SnippetHeaderModel);
        v48 = sub_3AB7C(v45, v47, &v81);

        *(v43 + 4) = v48;
        _os_log_impl(&def_259DC, v36, v37, "#GenerateLoggingResponseOutput: Snippet header model %s", v43, 0xCu);
        sub_2D64(v44);
        sub_8A2C();
        sub_8A2C();

        (*(v42 + 8))(v80, v79);
      }

      else
      {
        v68 = *(v0 + 320);
        v69 = *(v0 + 280);
        v70 = *(v0 + 288);

        sub_601F0();
        sub_60130(v39, v71);
        v72 = sub_60238();
        v73(v72);
      }

      v74 = *(v0 + 376);
      v75 = sub_16D4CC();
      v76 = *(v75 + 48);
      v77 = *(v75 + 52);
      swift_allocObject();
      sub_16D4BC();
      sub_16BF2C();
      sub_16D4AC();

      *(v0 + 464) = sub_16D49C();

      v78 = swift_task_alloc();
      *(v0 + 472) = v78;
      *v78 = v0;
      v78[1] = sub_5F1B8;

      return sub_66A84(0x646567676F6CLL, 0xE600000000000000);
    }

    (*(*(v0 + 368) + 8))(*(v0 + 376), *(v0 + 360));
  }

  else
  {
    v49 = *(v0 + 408);
  }

  v51 = *(v0 + 288);
  v50 = *(v0 + 296);
  v52 = *(v0 + 280);
  sub_16DBBC();
  sub_8B48();
  v53 = sub_3BD68();
  v54(v53);
  v55 = sub_16DBDC();
  v56 = sub_16E37C();
  if (sub_1BA1C(v56))
  {
    v57 = sub_1BA38();
    sub_1BA50(v57);
    sub_1B9D0(&def_259DC, v58, v59, "#GenerateLoggingResponseOutput: Response start is nil. or unit/category labels are nil");
    sub_1BA00();
  }

  v61 = *(v0 + 288);
  v60 = *(v0 + 296);
  v62 = *(v0 + 280);
  v63 = *(v0 + 168);

  v64 = sub_60238();
  v65(v64);
  *(v63 + 32) = 0;
  sub_60260();
  sub_60188();

  sub_C9BC();

  return v66();
}

uint64_t sub_5F1B8()
{
  sub_8A88();
  sub_C9D4();
  sub_8A60();
  *v2 = v1;
  v4 = *(v3 + 472);
  *v2 = *v0;
  *(v1 + 480) = v5;
  *(v1 + 488) = v6;

  v7 = sub_17960();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_5F2A4()
{
  v91 = v0;
  v1 = *(v0 + 488);
  v2 = *(v0 + 464);
  v80 = *(v0 + 480);
  v82 = *(v0 + 432);
  v87 = *(v0 + 424);
  v89 = *(v0 + 416);
  v3 = *(v0 + 352);
  v4 = *(v0 + 328);
  v5 = *(v0 + 264);
  v7 = *(v0 + 232);
  v6 = *(v0 + 240);
  v9 = *(v0 + 216);
  v8 = *(v0 + 224);
  v76 = *(v0 + 208);
  v10 = *(v0 + 528);
  sub_60220();
  sub_600D0(v11, v7, v12);
  sub_214C(v7, 0, 1, v4);
  v13 = sub_16BD9C();
  sub_214C(v9, 1, 1, v13);
  sub_12093C(v10, v9, v8);
  sub_8748(v9, &qword_1C5690, &dword_16F320);
  v85 = v1;
  v14 = 0x646567676F4CLL;
  if (v1)
  {
    v14 = v80;
  }

  v81 = v14;
  sub_214C(v5, 1, 1, v4);
  v15 = v6[5];
  v16 = (v5 + v6[8]);
  v17 = (v5 + v6[9]);
  v18 = v6[10];
  v78 = sub_16C11C();
  v79 = v18;
  sub_214C(v5 + v18, 1, 1, v78);

  sub_5FF8C(v7, v5);
  *(v5 + v15) = v2;
  *v16 = v87;
  v16[1] = v82;
  v83 = v5;
  *v17 = sub_94294(v89, 0);
  v17[1] = v19;
  sub_16D45C();
  v20 = sub_16D5CC();
  if (sub_369C(v76, 1, v20) == 1)
  {
    sub_8748(*(v0 + 208), &qword_1C5800, &unk_16F510);
    v21 = 0;
    v22 = 0;
  }

  else
  {
    v23 = *(v0 + 208);
    v24 = sub_16D5BC();
    v26 = v25;
    (*(*(v20 - 8) + 8))(v23, v20);
    *(v0 + 152) = v24;
    *(v0 + 160) = v26;
    sub_9854();
    v21 = sub_16E3FC();
    v22 = v27;
  }

  v28 = *(v0 + 464);
  v29 = *(v0 + 200);
  v30 = (*(v0 + 264) + *(*(v0 + 240) + 24));
  *v30 = v21;
  v30[1] = v22;
  sub_16D46C();
  v31 = sub_369C(v29, 1, v20);
  v32 = *(v0 + 200);
  v88 = v20;
  if (v31 == 1)
  {
    sub_8748(v32, &qword_1C5800, &unk_16F510);
    v33 = 0;
    v34 = 0;
  }

  else
  {
    v33 = sub_16D5BC();
    v34 = v35;
    (*(*(v20 - 8) + 8))(v32, v20);
  }

  v36 = *(v0 + 440);
  v71 = *(v0 + 488);
  v72 = *(v0 + 312);
  v37 = *(v0 + 272);
  v73 = *(v0 + 280);
  v74 = *(v0 + 448);
  v38 = *(v0 + 264);
  v75 = *(v0 + 256);
  v77 = *(v0 + 456);
  v40 = *(v0 + 232);
  v39 = *(v0 + 240);
  v41 = *(v0 + 224);
  v42 = *(v0 + 184);
  v43 = (v38 + *(v39 + 28));
  v44 = (v38 + *(v39 + 44));
  *v43 = v33;
  v43[1] = v34;
  sub_14A3C8(v41);
  sub_8748(v41, &qword_1C57F8, &unk_172510);
  sub_8748(v40, &dword_1C63F8, &qword_171800);
  sub_214C(v42, 0, 1, v78);
  sub_5FFFC(v42, v83 + v79);
  v45 = 0xE600000000000000;
  if (v85)
  {
    v45 = v71;
  }

  *v44 = v81;
  v44[1] = v45;
  sub_6006C(v38, v37);
  sub_8B48();
  v74(v72, v36, v73);
  sub_60208();
  sub_600D0(v37, v75, v46);
  v47 = sub_16DBDC();
  v48 = sub_16E36C();
  v49 = os_log_type_enabled(v47, v48);
  v50 = *(v0 + 312);
  v51 = *(v0 + 280);
  v52 = *(v0 + 288);
  v53 = *(v0 + 256);
  if (v49)
  {
    v86 = *(v0 + 280);
    v55 = *(v0 + 240);
    v54 = *(v0 + 248);
    v56 = swift_slowAlloc();
    v84 = v50;
    v57 = swift_slowAlloc();
    v90 = v57;
    *v56 = 136315138;
    sub_600D0(v53, v54, type metadata accessor for HealthDataLogModel);
    v58 = sub_16E1EC();
    v60 = v59;
    sub_60130(v53, type metadata accessor for HealthDataLogModel);
    v61 = sub_3AB7C(v58, v60, &v90);

    *(v56 + 4) = v61;
    _os_log_impl(&def_259DC, v47, v48, "#GenerateLoggingResponseOutput: Snippet model %s", v56, 0xCu);
    sub_2D64(v57);
    sub_8A2C();
    sub_8A2C();

    v62 = *(v52 + 8);
    v62(v84, v86);
  }

  else
  {

    sub_601D8();
    sub_60130(v53, v63);
    v62 = *(v52 + 8);
    v62(v50, v51);
  }

  *(v0 + 496) = v62;
  v64 = *(v0 + 424);
  v65 = *(v0 + 432);
  v66 = *(v0 + 192);
  sub_16E23C();

  sub_214C(v66, 0, 1, v88);
  v67 = swift_task_alloc();
  *(v0 + 504) = v67;
  *v67 = v0;
  v67[1] = sub_5F898;
  v68 = *(v0 + 192);
  v69 = *(v0 + 528);

  return sub_61474(v69, v89, 0, v68, 2, 0);
}

uint64_t sub_5F898()
{
  sub_8A88();
  sub_C9D4();
  sub_8A60();
  *v2 = v1;
  v4 = *(v3 + 504);
  v5 = *(v3 + 192);
  v6 = *v0;
  sub_C990();
  *v7 = v6;
  *(v9 + 512) = v8;

  sub_8748(v5, &qword_1C5800, &unk_16F510);
  v10 = sub_17960();

  return _swift_task_switch(v10, v11, v12);
}

uint64_t sub_5F9AC()
{
  if (!v0[64])
  {
    v9 = v0[56];
    v8 = v0[57];
    v10 = v0[55];
    v11 = v0[38];
    v12 = v0[35];
    sub_8B48();
    v9(v11, v10, v12);
    v13 = sub_16DBDC();
    v14 = sub_16E37C();
    if (sub_1BA1C(v14))
    {
      v15 = sub_1BA38();
      sub_1BA50(v15);
      sub_1B9D0(&def_259DC, v16, v17, "#GenerateLoggingResponseOutput: Invalid unit or dialog or response start value");
      sub_1BA00();
    }

    v18 = v0[62];
    v19 = v0[58];
    v20 = v0[46];
    v31 = v0[45];
    v32 = v0[47];
    v30 = v0[44];
    v21 = v0[38];
    v23 = v0[35];
    v22 = v0[36];
    v24 = v0[34];
    v25 = v0[21];

    v18(v21, v23);
    sub_601D8();
    sub_60130(v24, v26);
    sub_601F0();
    sub_60130(v30, v27);
    (*(v20 + 8))(v32, v31);
    *(v25 + 32) = 0;
    sub_60260();
    sub_60188();

    sub_C9BC();
    sub_5E1A0();

    __asm { BRAA            X1, X16 }
  }

  v1 = v0[34];
  v0[5] = type metadata accessor for WellnessSnippets();
  v0[6] = sub_17548();
  v2 = sub_9910(v0 + 2);
  sub_60208();
  sub_600D0(v1, v2, v3);
  swift_storeEnumTagMultiPayload();
  v4 = swift_task_alloc();
  v0[65] = v4;
  *v4 = v0;
  v4[1] = sub_5FC54;
  v5 = v0[21];
  sub_5E1A0();

  return sub_672C0();
}

uint64_t sub_5FC54()
{
  sub_8A88();
  sub_C9D4();
  v2 = v1;
  sub_8A60();
  *v3 = v2;
  v5 = *(v4 + 520);
  v6 = *v0;
  sub_C990();
  *v7 = v6;

  sub_2D64((v2 + 16));
  v8 = sub_17960();

  return _swift_task_switch(v8, v9, v10);
}

void sub_5FD3C()
{
  v1 = v0[64];
  v2 = v0[58];
  v4 = v0[46];
  v3 = v0[47];
  v6 = v0[44];
  v5 = v0[45];
  v7 = v0[34];

  sub_601D8();
  sub_60130(v7, v8);
  sub_601F0();
  sub_60130(v6, v9);
  (*(v4 + 8))(v3, v5);
  sub_60188();

  sub_C9BC();
  sub_5E1A0();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_5FE84(unsigned __int8 a1, void *a2)
{
  switch(a1)
  {
    case 0x9Bu:
      return 0x73726F6F6C66;
    case 0xA2u:
      v3 = sub_5FF28(a2);
      v2 = sub_13A5C4(v3, v4);

      break;
    case 0xADu:
      return 0x736568737570;
    default:
      return sub_5FF28(a2);
  }

  return v2;
}

uint64_t sub_5FF28(void *a1)
{
  v1 = [a1 units];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_16E1BC();

  return v3;
}

uint64_t sub_5FF8C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2440(&dword_1C63F8, &qword_171800);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_5FFFC(uint64_t a1, uint64_t a2)
{
  v4 = sub_2440(&qword_1C63F0, &unk_1717F0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_6006C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HealthDataLogModel();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_600D0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  sub_8B38(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_60130(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_8B38(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_60188()
{
  v2 = v0[47];
  v4 = v0[43];
  v3 = v0[44];
  v5 = v0[42];
  v6 = v0[39];
  v7 = v0[40];
  v9 = v0[37];
  v8 = v0[38];
  v11 = v0[33];
  v10 = v0[34];
  v13 = v0[32];
  v14 = v0[31];
  v15 = v0[29];
  v16 = v0[28];
  v17 = v0[27];
  v18 = v0[26];
  v19 = v0[25];
  v20 = v0[24];
  v21 = v0[23];
}

__n128 sub_60248()
{
  v1 = *(v0 + 120);
  result = *(v0 + 16);
  v3 = *(v0 + 32);
  *(v1 + 32) = *(v0 + 48);
  *v1 = result;
  *(v1 + 16) = v3;
  return result;
}

double sub_60260()
{
  result = 0.0;
  *v0 = 0u;
  v0[1] = 0u;
  return result;
}

Swift::Bool __swiftcall isMedDosageUnitSynonym(userSuppliedUnit:systemSuppliedUnit:)(Swift::String userSuppliedUnit, Swift::String systemSuppliedUnit)
{
  object = systemSuppliedUnit._object;
  countAndFlagsBits = systemSuppliedUnit._countAndFlagsBits;
  v4 = userSuppliedUnit._object;
  v5 = userSuppliedUnit._countAndFlagsBits;
  v6 = systemSuppliedUnit._countAndFlagsBits == 0x746163696C707061 && systemSuppliedUnit._object == 0xEB000000006E6F69;
  if (!v6 && (sub_610C8() & 1) == 0)
  {
    v7 = countAndFlagsBits == 7496034 && object == 0xE300000000000000;
    if (!v7 && (sub_610C8() & 1) == 0)
    {
      v8 = countAndFlagsBits == 0x6764697274726163 && object == 0xE900000000000065;
      if (!v8 && (sub_610C8() & 1) == 0)
      {
        v9 = countAndFlagsBits == 0x656369766564 && object == 0xE600000000000000;
        if (!v9 && (sub_610C8() & 1) == 0 && (countAndFlagsBits != 1668508004 || object != 0xE400000000000000))
        {
          v11 = sub_610C8();
          v12 = countAndFlagsBits == 1886351972 && object == 0xE400000000000000;
          v13 = v12;
          if ((v11 & 1) == 0 && !v13 && (sub_610C8() & 1) == 0)
          {
            v14 = countAndFlagsBits == 0x616D656E65 && object == 0xE500000000000000;
            if (!v14 && (sub_610C8() & 1) == 0 && (countAndFlagsBits != 0x656C75626F6C67 || object != 0xE700000000000000))
            {
              v16 = sub_610C8();
              v17 = countAndFlagsBits == 0x746E616C706D69 && object == 0xE700000000000000;
              v18 = v17;
              if ((v16 & 1) == 0 && !v18)
              {
                v19 = sub_610C8();
                v20 = countAndFlagsBits == 0x747265736E69 && object == 0xE600000000000000;
                v21 = v20;
                if ((v19 & 1) == 0 && !v21)
                {
                  v22 = sub_610C8();
                  v23 = countAndFlagsBits == 7629163 && object == 0xE300000000000000;
                  v24 = v23;
                  if ((v22 & 1) == 0 && !v24)
                  {
                    v25 = sub_610C8();
                    v26 = countAndFlagsBits == 0x74656B636170 && object == 0xE600000000000000;
                    v27 = v26;
                    if ((v25 & 1) == 0 && !v27)
                    {
                      v28 = sub_610C8();
                      v29 = countAndFlagsBits == 0x6863746170 && object == 0xE500000000000000;
                      v30 = v29;
                      if ((v28 & 1) == 0 && !v30)
                      {
                        v31 = sub_610C8();
                        v32 = countAndFlagsBits == 0x6563656970 && object == 0xE500000000000000;
                        v33 = v32;
                        if ((v31 & 1) == 0 && !v33 && (sub_610C8() & 1) == 0 && (countAndFlagsBits != 0x656C636973706F70 || object != 0xE800000000000000))
                        {
                          v35 = sub_610C8();
                          v36 = countAndFlagsBits == 0x706F6F6373 && object == 0xE500000000000000;
                          v37 = v36;
                          if ((v35 & 1) == 0 && !v37)
                          {
                            v38 = sub_610C8();
                            v39 = countAndFlagsBits == 0x65676E6F7073 && object == 0xE600000000000000;
                            v40 = v39;
                            if ((v38 & 1) == 0 && !v40)
                            {
                              v41 = sub_610C8();
                              v42 = countAndFlagsBits == 0x7961727073 && object == 0xE500000000000000;
                              v43 = v42;
                              if ((v41 & 1) == 0 && !v43)
                              {
                                v44 = sub_610C8();
                                v45 = countAndFlagsBits == 0x6B63697473 && object == 0xE500000000000000;
                                v46 = v45;
                                if ((v44 & 1) == 0 && !v46)
                                {
                                  v47 = sub_610C8();
                                  v48 = countAndFlagsBits == 0x7069727473 && object == 0xE500000000000000;
                                  v49 = v48;
                                  if ((v47 & 1) == 0 && !v49 && (sub_610C8() & 1) == 0 && (countAndFlagsBits != 0x7469736F70707573 || object != 0xEB0000000079726FLL))
                                  {
                                    v51 = sub_610C8();
                                    v52 = countAndFlagsBits == 0x6E6F706D6174 && object == 0xE600000000000000;
                                    v53 = v52;
                                    if ((v51 & 1) == 0 && !v53 && (sub_610C8() & 1) == 0 && (countAndFlagsBits != 0x6E656D7461657274 || object != 0xE900000000000074))
                                    {
                                      v55 = sub_610C8();
                                      v56 = countAndFlagsBits == 1953066613 && object == 0xE400000000000000;
                                      v57 = v56;
                                      if ((v55 & 1) == 0 && !v57)
                                      {
                                        v58 = sub_610C8();
                                        v59 = countAndFlagsBits == 1801677175 && object == 0xE400000000000000;
                                        v60 = v59;
                                        if ((v58 & 1) == 0 && !v60 && (sub_610C8() & 1) == 0)
                                        {
                                          v64 = countAndFlagsBits == 0x6974616C61686E69 && object == 0xEA00000000006E6FLL;
                                          if (v64 || (sub_610C8() & 1) != 0)
                                          {
                                            sub_2440(&qword_1C6828, &qword_1767D0);
                                            inited = swift_initStackObject();
                                            *(inited + 16) = xmmword_172970;
                                            *(inited + 32) = 0x6974616C61686E69;
                                            *(inited + 40) = 0xEA00000000006E6FLL;
                                            *(inited + 48) = 0x72656C61686E69;
                                            *(inited + 56) = 0xE700000000000000;
                                            *(inited + 64) = 1717990768;
                                            *(inited + 72) = 0xE400000000000000;
                                            sub_610F0();
                                            v66[10] = v67;
                                            v66[11] = v68;
                                            v66[12] = 6448494;
                                            v66[13] = 0xE300000000000000;
                                            sub_610E4();
                                            __chkstk_darwin(v69);
                                            sub_610B0();
                                            v71 = sub_61094;
LABEL_186:
                                            v63 = sub_60E68(v71, v70, inited);
                                            swift_setDeallocating();
                                            sub_60CFC();
                                            return v63;
                                          }

                                          v72 = countAndFlagsBits == 0x6F697463656A6E69 && object == 0xE90000000000006ELL;
                                          if (v72 || (sub_610C8() & 1) != 0)
                                          {
                                            sub_2440(&qword_1C6828, &qword_1767D0);
                                            swift_initStackObject();
                                            sub_61108();
                                            *(v73 + 16) = xmmword_1712E0;
                                            *(v73 + 32) = 0x6F697463656A6E69;
                                            *(v73 + 40) = 0xE90000000000006ELL;
                                            *(v73 + 48) = 1953458291;
                                            *(v73 + 56) = 0xE400000000000000;
                                            sub_610E4();
                                            __chkstk_darwin(v74);
                                            sub_610B0();
                                          }

                                          else
                                          {
                                            v76 = countAndFlagsBits == 0x65676E657A6F6CLL && object == 0xE700000000000000;
                                            if (v76 || (sub_610C8() & 1) != 0)
                                            {
                                              sub_2440(&qword_1C6828, &qword_1767D0);
                                              swift_initStackObject();
                                              sub_61108();
                                              *(v77 + 16) = xmmword_172980;
                                              *(v77 + 32) = 0x65676E657A6F6CLL;
                                              *(v77 + 40) = 0xE700000000000000;
                                              *(v77 + 48) = 1886351972;
                                              *(v77 + 56) = 0xE400000000000000;
                                              *(v77 + 64) = 0x6568636F7274;
                                              *(v77 + 72) = 0xE600000000000000;
                                              *(v77 + 80) = 0x656C6C6974736170;
                                              *(v77 + 88) = 0xE800000000000000;
                                              sub_610E4();
                                              __chkstk_darwin(v78);
                                              sub_610B0();
                                            }

                                            else
                                            {
                                              v79 = countAndFlagsBits == 19565 && object == 0xE200000000000000;
                                              if (v79 || (sub_610C8() & 1) != 0)
                                              {
                                                sub_2440(&qword_1C6828, &qword_1767D0);
                                                swift_initStackObject();
                                                sub_61108();
                                                *(v80 + 16) = xmmword_16F2F0;
                                                *(v80 + 32) = 19565;
                                                *(v80 + 40) = 0xE200000000000000;
                                                *(v80 + 48) = 0x74696C696C6C696DLL;
                                                *(v80 + 56) = 0xEA00000000007265;
                                                *(v80 + 64) = 0x74694C696C6C696DLL;
                                                *(v80 + 72) = 0xEA00000000007265;
                                                sub_610E4();
                                                __chkstk_darwin(v81);
                                                sub_610B0();
                                              }

                                              else
                                              {
                                                v82 = countAndFlagsBits == 26477 && object == 0xE200000000000000;
                                                if (v82 || (sub_610C8() & 1) != 0)
                                                {
                                                  sub_2440(&qword_1C6828, &qword_1767D0);
                                                  swift_initStackObject();
                                                  sub_61108();
                                                  *(v83 + 16) = xmmword_1712E0;
                                                  *(v83 + 32) = 26477;
                                                  *(v83 + 40) = 0xE200000000000000;
                                                  *(v83 + 48) = 0x617267696C6C696DLL;
                                                  *(v83 + 56) = 0xE90000000000006DLL;
                                                  sub_610E4();
                                                  __chkstk_darwin(v84);
                                                  sub_610B0();
                                                }

                                                else
                                                {
                                                  v85 = countAndFlagsBits == 0x74656C626174 && object == 0xE600000000000000;
                                                  if (!v85 && (sub_610C8() & 1) == 0)
                                                  {
                                                    if (countAndFlagsBits != 1818323318 || object != 0xE400000000000000)
                                                    {
                                                      v63 = 0;
                                                      if ((sub_610C8() & 1) == 0)
                                                      {
                                                        return v63;
                                                      }
                                                    }

                                                    sub_2440(&qword_1C6828, &qword_1767D0);
                                                    inited = swift_initStackObject();
                                                    *(inited + 16) = xmmword_16F2F0;
                                                    sub_610F0();
                                                    v89[4] = v90;
                                                    v89[5] = v91;
                                                    v89[6] = 6448494;
                                                    v89[7] = 0xE300000000000000;
                                                    v89[8] = 0x6974616C61686E69;
                                                    v89[9] = 0xEA00000000006E6FLL;
                                                    sub_610E4();
                                                    __chkstk_darwin(v92);
                                                    sub_610B0();
                                                    v71 = sub_61018;
                                                    goto LABEL_186;
                                                  }

                                                  sub_2440(&qword_1C6828, &qword_1767D0);
                                                  swift_initStackObject();
                                                  sub_61108();
                                                  *(v86 + 16) = xmmword_172970;
                                                  *(v86 + 32) = 0x74656C626174;
                                                  *(v86 + 40) = 0xE600000000000000;
                                                  *(v86 + 48) = 6447476;
                                                  *(v86 + 56) = 0xE300000000000000;
                                                  *(v86 + 64) = 1819044208;
                                                  *(v86 + 72) = 0xE400000000000000;
                                                  *(v86 + 80) = 7364963;
                                                  *(v86 + 88) = 0xE300000000000000;
                                                  *(v86 + 96) = 0x656C7573706163;
                                                  *(v86 + 104) = 0xE700000000000000;
                                                  sub_610E4();
                                                  __chkstk_darwin(v87);
                                                  sub_610B0();
                                                }
                                              }
                                            }
                                          }

                                          v63 = sub_60E68(sub_61094, v75, countAndFlagsBits);
                                          swift_setDeallocating();
                                          sub_60CFC();
                                          return v63;
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

  if (countAndFlagsBits == v5 && object == v4)
  {
    return 1;
  }

  return sub_16E6BC();
}