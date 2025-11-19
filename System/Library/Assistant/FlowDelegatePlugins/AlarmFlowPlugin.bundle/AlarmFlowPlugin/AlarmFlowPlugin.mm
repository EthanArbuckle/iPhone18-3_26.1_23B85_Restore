uint64_t sub_1EE8(uint64_t *a1)
{
  sub_106870();
  sub_106850();
  sub_104B00();
  if (qword_136E48 != -1)
  {
    swift_once();
  }

  sub_104A60();
  sub_25E4(&qword_137060, &qword_10BC60);
  sub_104AC0();
  sub_262C(a1, v4);
  sub_2690();
  sub_104A90();
  sub_104AE0();
  sub_262C(a1, v3);
  sub_26E4();
  sub_104A40();
  sub_104AB0();
  sub_2738(a1);
  sub_2784(v3);
  return sub_27D8(v4);
}

uint64_t sub_2068()
{
  v1 = v0[2];
  v2 = [v1 alarmSearch];
  v3 = [v1 alarms];
  if (v3)
  {
    v4 = v3;
    sub_106AA0();
    v5 = sub_106EE0();
  }

  else
  {
    v5 = &_swiftEmptyArrayStorage;
  }

  _s17ResultSetProviderCMa();
  swift_allocObject();
  v0[3] = sub_C1F58(v2, v5);
  v6 = swift_task_alloc();
  v0[4] = v6;
  *v6 = v0;
  v6[1] = sub_2194;

  return sub_C208C();
}

uint64_t sub_2194(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 32);
  v6 = *v2;
  *(*v2 + 40) = v1;

  if (v1)
  {

    return _swift_task_switch(sub_22EC, 0, 0);
  }

  else
  {
    v7 = *(v4 + 24);

    v8 = *(v6 + 8);

    return v8(a1);
  }
}

uint64_t sub_22EC()
{
  v1 = v0[3];

  v2 = v0[1];
  v3 = v0[5];

  return v2();
}

uint64_t variable initialization expression of UndoChangeStatusFlow.operation@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for AlarmNLv4Constants.AlarmVerb.enable(_:);
  v3 = sub_106960();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_24B8(void (*a1)(void))
{
  v2 = *(*(sub_106200() - 8) + 64);
  __chkstk_darwin();
  a1(0);
  sub_1061E0();
  return sub_1060D0();
}

uint64_t sub_2570@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v3 = a1(0);
  v4 = *(*(v3 - 8) + 56);

  return v4(a2, 1, 1, v3);
}

uint64_t sub_25E4(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_262C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_2690()
{
  result = qword_137068;
  if (!qword_137068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_137068);
  }

  return result;
}

unint64_t sub_26E4()
{
  result = qword_137070;
  if (!qword_137070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_137070);
  }

  return result;
}

uint64_t sub_2738(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t type metadata accessor for SearchAlarmCATs_Async()
{
  result = qword_1373E0;
  if (!qword_1373E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_28C4(uint64_t a1, uint64_t a2)
{
  v5 = sub_106200();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin();
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = (*(*(sub_25E4(&unk_137430, &qword_107DC0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v12 = &v17 - v11;
  v13 = *(v2 + 48);
  v14 = *(v2 + 52);
  swift_allocObject();
  sub_2A84(a1, v12);
  (*(v6 + 16))(v9, a2, v5);
  v15 = sub_1060B0();
  (*(v6 + 8))(a2, v5);
  sub_2AF4(a1);
  return v15;
}

uint64_t sub_2A4C()
{
  sub_1060E0();

  return swift_deallocClassInstance();
}

uint64_t sub_2A84(uint64_t a1, uint64_t a2)
{
  v4 = sub_25E4(&unk_137430, &qword_107DC0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2AF4(uint64_t a1)
{
  v2 = sub_25E4(&unk_137430, &qword_107DC0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2B5C()
{
  sub_107190(20);

  v0 = sub_106E60();
  v2 = v1;

  v4._countAndFlagsBits = v0;
  v4._object = v2;
  sub_106E80(v4);

  return 0xD000000000000012;
}

unint64_t sub_2D40()
{
  sub_107190(20);

  v4._countAndFlagsBits = sub_106E60();
  sub_106E80(v4);

  v5._countAndFlagsBits = 0x2E65756C61562ELL;
  v5._object = 0xE700000000000000;
  sub_106E80(v5);
  v0 = sub_106E40();
  v2 = v1;

  v6._countAndFlagsBits = v0;
  v6._object = v2;
  sub_106E80(v6);

  return 0xD000000000000012;
}

uint64_t sub_2E70()
{
  v0 = sub_106D20();
  sub_14930(v0, qword_137440);
  sub_135C4(v0, qword_137440);
  return sub_106A80();
}

uint64_t sub_2EBC@<X0>(uint64_t a1@<X0>, int a2@<W2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v337 = a2;
  v344 = a4;
  v327 = sub_1065A0();
  v326 = *(v327 - 8);
  v6 = *(v326 + 64);
  __chkstk_darwin(v327);
  v325 = &v296 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v331 = sub_1053C0();
  v330 = *(v331 - 8);
  v8 = *(v330 + 64);
  v9 = __chkstk_darwin(v331);
  v322 = &v296 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v329 = &v296 - v12;
  __chkstk_darwin(v11);
  v332 = &v296 - v13;
  v14 = sub_105520();
  v338 = *(v14 - 8);
  v339 = v14;
  v15 = *(v338 + 64);
  v16 = __chkstk_darwin(v14);
  v336 = &v296 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v309 = &v296 - v18;
  v319 = sub_105460();
  v324 = *(v319 - 8);
  v19 = *(v324 + 64);
  v20 = __chkstk_darwin(v319);
  v305 = &v296 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v315 = &v296 - v22;
  v23 = sub_105410();
  v24 = *(v23 - 8);
  v25 = *(v24 + 8);
  v26 = __chkstk_darwin(v23);
  v298 = &v296 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __chkstk_darwin(v26);
  v299 = &v296 - v29;
  v30 = __chkstk_darwin(v28);
  v300 = &v296 - v31;
  __chkstk_darwin(v30);
  v328 = &v296 - v32;
  v33 = sub_105380();
  v318 = *(v33 - 8);
  v34 = *(v318 + 64);
  v35 = __chkstk_darwin(v33);
  v314 = &v296 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = __chkstk_darwin(v35);
  v301 = &v296 - v38;
  __chkstk_darwin(v37);
  v302 = &v296 - v39;
  v313 = sub_106960();
  v317 = *(v313 - 8);
  v40 = *(v317 + 64);
  __chkstk_darwin(v313);
  v304 = &v296 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v312 = sub_25E4(&qword_137498, &unk_108C50);
  v42 = *(*(v312 - 8) + 64);
  v43 = __chkstk_darwin(v312);
  v306 = &v296 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v43);
  v311 = &v296 - v45;
  v46 = sub_25E4(&unk_1374A0, &qword_10BB30);
  v47 = *(*(v46 - 8) + 64);
  v48 = __chkstk_darwin(v46 - 8);
  v303 = &v296 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = __chkstk_darwin(v48);
  v307 = &v296 - v51;
  v52 = __chkstk_darwin(v50);
  v308 = &v296 - v53;
  v54 = __chkstk_darwin(v52);
  v321 = &v296 - v55;
  v56 = __chkstk_darwin(v54);
  v323 = &v296 - v57;
  __chkstk_darwin(v56);
  v310 = &v296 - v58;
  v59 = sub_25E4(&qword_1374F0, &qword_1080F0);
  v60 = *(*(v59 - 8) + 64);
  __chkstk_darwin(v59 - 8);
  v334 = &v296 - v61;
  v62 = sub_1053E0();
  v63 = *(v62 - 8);
  v64 = *(v63 + 64);
  v65 = __chkstk_darwin(v62);
  v335 = &v296 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v65);
  v345 = (&v296 - v67);
  v68 = sub_105E80();
  v340 = *(v68 - 8);
  v341 = v68;
  v69 = *(v340 + 64);
  v70 = __chkstk_darwin(v68);
  v342 = (&v296 - ((v71 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v70);
  v73 = &v296 - v72;
  if (qword_136C50 != -1)
  {
    swift_once();
  }

  v74 = sub_106D20();
  v343 = sub_135C4(v74, qword_137440);
  v75 = sub_106D10();
  v76 = sub_106FA0();
  v77 = os_log_type_enabled(v75, v76);
  v333 = a3;
  if (v77)
  {
    v78 = swift_slowAlloc();
    v320 = v62;
    v316 = v33;
    v297 = v23;
    v79 = v78;
    v80 = v24;
    v81 = a1;
    v82 = swift_slowAlloc();
    *&v347 = v82;
    *v79 = 136315138;
    v346 = a3;
    swift_getMetatypeMetadata();
    v83 = sub_106E30();
    v85 = v63;
    v86 = sub_722E8(v83, v84, &v347);

    *(v79 + 4) = v86;
    v63 = v85;
    _os_log_impl(&dword_0, v75, v76, "AlarmFlowUtils.decideActionForInput with intent type: %s", v79, 0xCu);
    sub_2738(v82);
    a1 = v81;
    v24 = v80;

    v23 = v297;
    v33 = v316;
    v62 = v320;
  }

  v87 = sub_13AA4(a1);
  v88 = v345;
  if ((v87 & 1) == 0)
  {
    return sub_104E60();
  }

  sub_105360();
  v89 = (*(v63 + 88))(v88, v62);
  if (v89 == enum case for Parse.NLv3IntentOnly(_:))
  {
    v332 = a1;
    v90 = v63;
    (*(v63 + 96))(v88, v62);
    goto LABEL_11;
  }

  if (v89 == enum case for Parse.NLv3IntentPlusServerConversion(_:))
  {
    v332 = a1;
    v90 = v63;
    (*(v63 + 96))(v88, v62);
    v92 = *(v88 + *(sub_25E4(&qword_13B010, &unk_1087A0) + 48));

LABEL_11:
    v93 = v341;
    v94 = *(v340 + 32);
    v94(v73, v88, v341);
    v95 = v342;
    v94(v342, v73, v93);
    v96 = type metadata accessor for AlarmNLIntent();
    v97 = *(v96 + 48);
    v98 = *(v96 + 52);
    swift_allocObject();
    v99 = sub_B3800(v95);
    v100 = sub_106D10();
    v101 = sub_106FC0();
    if (os_log_type_enabled(v100, v101))
    {
      v102 = v62;
      v103 = swift_slowAlloc();
      v104 = swift_slowAlloc();
      *&v347 = v104;
      *v103 = 136315138;
      v346 = v99;
      sub_14F4C(&qword_137480, type metadata accessor for AlarmNLIntent);
      v105 = sub_105620();
      v107 = sub_722E8(v105, v106, &v347);

      *(v103 + 4) = v107;
      _os_log_impl(&dword_0, v100, v101, "alarmNLIntent: %s", v103, 0xCu);
      sub_2738(v104);

      v62 = v102;
    }

    v108 = sub_B372C();
    if (v108 > 1)
    {
      if (v108 != 2)
      {
        v123 = v335;
        sub_105360();
        v124 = sub_106630();
        v125 = v334;
        (*(*(v124 - 8) + 56))(v334, 1, 1, v124);
        v126 = sub_579C(v123, v125);
        sub_16F70(v125, &qword_1374F0, &qword_1080F0);
        (*(v90 + 8))(v123, v62);
        if (!v126 || (v127 = swift_dynamicCastUnknownClass(), v126, !v127))
        {
          v138 = sub_106D10();
          v139 = sub_106FB0();
          if (os_log_type_enabled(v138, v139))
          {
            v140 = swift_slowAlloc();
            v141 = swift_slowAlloc();
            *&v347 = v141;
            *v140 = 136315138;
            v142 = sub_107480();
            v144 = sub_722E8(v142, v143, &v347);

            *(v140 + 4) = v144;
            _os_log_impl(&dword_0, v138, v139, "Flows stack receives unexpected intent type. Expecting: %s", v140, 0xCu);
            sub_2738(v141);
          }

          sub_104E60();
        }

        v128 = sub_106D10();
        v129 = sub_106FC0();
        if (os_log_type_enabled(v128, v129))
        {
          v130 = swift_slowAlloc();
          *v130 = 0;
          _os_log_impl(&dword_0, v128, v129, "Request was not cancelled by user. Proceed.", v130, 2u);
        }

        goto LABEL_27;
      }
    }

    else if (!v108 || (v337 & 1) != 0)
    {
LABEL_27:
      sub_104E50();
    }

    sub_104E40();
  }

  if (v89 == enum case for Parse.directInvocation(_:))
  {
    (*(v63 + 96))(v88, v62);
    v109 = v330;
    v110 = v332;
    v111 = v331;
    (*(v330 + 32))(v332, v88, v331);
    v112 = *(v109 + 16);
    v113 = v329;
    v112(v329, v110, v111);
    v114 = sub_106D10();
    v115 = sub_106FC0();
    if (os_log_type_enabled(v114, v115))
    {
      v116 = swift_slowAlloc();
      v117 = swift_slowAlloc();
      *&v347 = v117;
      *v116 = 136315138;
      v112(v322, v113, v111);
      v118 = sub_106E30();
      v120 = v119;
      v121 = *(v109 + 8);
      v121(v113, v111);
      v122 = sub_722E8(v118, v120, &v347);

      *(v116 + 4) = v122;
      _os_log_impl(&dword_0, v114, v115, "[AlarmFlowUtils.decideActionForDisambiguationInput] Got directInvocation in input parse: %s", v116, 0xCu);
      sub_2738(v117);
      v110 = v332;
    }

    else
    {

      v121 = *(v109 + 8);
      v121(v113, v111);
    }

    v145 = sub_1053B0();
    if (v145)
    {
      v146 = v145;
      v147 = v326;
      v148 = v325;
      v149 = v327;
      (*(v326 + 104))(v325, enum case for DirectInvocationUtils.Alarm.UserInfoKey.alarmId(_:), v327);
      v150 = sub_106590();
      v152 = v151;
      (*(v147 + 8))(v148, v149);
      if (*(v146 + 16) && (v153 = sub_32658(v150, v152), (v154 & 1) != 0))
      {
        sub_135FC(*(v146 + 56) + 32 * v153, &v347);
      }

      else
      {
        v347 = 0u;
        v348 = 0u;
      }

      if (*(&v348 + 1))
      {
        if (swift_dynamicCast())
        {

          sub_104E50();
          return (v121)(v110, v111);
        }
      }

      else
      {
        sub_16F70(&v347, &qword_137490, qword_108C80);
      }
    }

    v180 = sub_106D10();
    v181 = sub_106FB0();
    if (os_log_type_enabled(v180, v181))
    {
      v182 = swift_slowAlloc();
      *v182 = 0;
      _os_log_impl(&dword_0, v180, v181, "[AlarmFlowUtils.decideActionForDisambiguationInput] Direct invocation parse contains invalid alarm ID", v182, 2u);
    }

    sub_104E60();
    return (v121)(v110, v111);
  }

  if (v89 == enum case for Parse.NLv4IntentOnly(_:))
  {
    v332 = a1;
    (*(v63 + 96))(v88, v62);
    v131 = *v88;
    if (v337)
    {
      objc_opt_self();
      v132 = swift_dynamicCastObjCClass();
      v133 = v321;
      v134 = v323;
      if (v132 || (objc_opt_self(), swift_dynamicCastObjCClass()) || (objc_opt_self(), swift_dynamicCastObjCClass()))
      {
        v135 = sub_106D10();
        v136 = sub_106FC0();
        if (os_log_type_enabled(v135, v136))
        {
          v137 = swift_slowAlloc();
          *v137 = 0;
          _os_log_impl(&dword_0, v135, v136, "User accepted the task, will handle.", v137, 2u);
LABEL_116:
        }

LABEL_117:

        sub_104E50();
        return swift_unknownObjectRelease();
      }
    }

    else
    {
      objc_opt_self();
      v164 = swift_dynamicCastObjCClass();
      v133 = v321;
      v134 = v323;
      if (v164)
      {
        v165 = sub_106D10();
        v166 = sub_106FC0();
        if (os_log_type_enabled(v165, v166))
        {
          v167 = swift_slowAlloc();
          *v167 = 0;
          _os_log_impl(&dword_0, v165, v166, "User cancelled the task.", v167, 2u);
        }

        sub_104E40();
        return swift_unknownObjectRelease();
      }
    }

    swift_getObjectType();
    v191 = sub_107000();
    v320 = v62;
    v296 = v63;
    v345 = v131;
    if (v191)
    {
      v192 = v310;
      sub_274CC(v310);

      v193 = 0;
    }

    else
    {
      v193 = 1;
      v192 = v310;
    }

    v204 = v317;
    v205 = *(v317 + 56);
    v206 = v313;
    v205(v192, v193, 1, v313);
    (*(v204 + 104))(v134, enum case for AlarmNLv4Constants.AlarmVerb.noVerb(_:), v206);
    v205(v134, 0, 1, v206);
    v207 = *(v312 + 48);
    v208 = v311;
    sub_14994(v192, v311, &unk_1374A0, &qword_10BB30);
    v209 = v208;
    sub_14994(v134, v208 + v207, &unk_1374A0, &qword_10BB30);
    v210 = *(v204 + 48);
    if (v210(v209, 1, v206) == 1)
    {
      sub_16F70(v134, &unk_1374A0, &qword_10BB30);
      v211 = v311;
      sub_16F70(v192, &unk_1374A0, &qword_10BB30);
      if (v210(v211 + v207, 1, v206) == 1)
      {
        sub_16F70(v211, &unk_1374A0, &qword_10BB30);
        v212 = v345;
LABEL_113:
        swift_unknownObjectRetain();
        v135 = sub_106D10();
        v220 = sub_106FC0();
        swift_unknownObjectRelease();
        if (!os_log_type_enabled(v135, v220))
        {
          goto LABEL_117;
        }

        v221 = swift_slowAlloc();
        v222 = swift_slowAlloc();
        *&v347 = v222;
        *v221 = 136315138;
        v346 = v212;
        swift_unknownObjectRetain();
        sub_25E4(&unk_137470, &unk_10BC40);
        v284 = sub_106E30();
        v286 = sub_722E8(v284, v285, &v347);

        *(v221 + 4) = v286;
        v226 = "Received .noVerb in nlv4 firstUsoTask – handling: %s";
        goto LABEL_115;
      }
    }

    else
    {
      sub_14994(v209, v133, &unk_1374A0, &qword_10BB30);
      if (v210(v209 + v207, 1, v206) != 1)
      {
        v279 = v317;
        v280 = v304;
        (*(v317 + 32))(v304, v209 + v207, v206);
        sub_14F4C(&qword_138400, &type metadata accessor for AlarmNLv4Constants.AlarmVerb);
        v281 = v209;
        v282 = sub_106E00();
        v283 = *(v279 + 8);
        v283(v280, v206);
        sub_16F70(v323, &unk_1374A0, &qword_10BB30);
        sub_16F70(v310, &unk_1374A0, &qword_10BB30);
        v283(v133, v206);
        sub_16F70(v281, &unk_1374A0, &qword_10BB30);
        v213 = v320;
        v214 = v296;
        v212 = v345;
        if (v282)
        {
          goto LABEL_113;
        }

LABEL_92:
        v215 = v335;
        sub_105360();
        v216 = sub_106630();
        v217 = v334;
        (*(*(v216 - 8) + 56))(v334, 1, 1, v216);
        v218 = sub_579C(v215, v217);
        sub_16F70(v217, &qword_1374F0, &qword_1080F0);
        (*(v214 + 8))(v215, v213);
        if (!v218 || (v219 = swift_dynamicCastUnknownClass(), v218, !v219))
        {
          v227 = v318;
          v228 = v302;
          (*(v318 + 16))(v302, v332, v33);
          v229 = sub_106D10();
          v230 = sub_106FB0();
          if (os_log_type_enabled(v229, v230))
          {
            v231 = swift_slowAlloc();
            *&v347 = swift_slowAlloc();
            *v231 = 136315394;
            v232 = sub_107480();
            v234 = sub_722E8(v232, v233, &v347);

            *(v231 + 4) = v234;
            *(v231 + 12) = 2080;
            sub_14F4C(&unk_1374D0, &type metadata accessor for Input);
            v235 = sub_107340();
            v237 = v236;
            (*(v227 + 8))(v228, v33);
            v238 = sub_722E8(v235, v237, &v347);

            *(v231 + 14) = v238;
            _os_log_impl(&dword_0, v229, v230, "Intent from parse does not match IntentType. Expected %s, received %s", v231, 0x16u);
            swift_arrayDestroy();
          }

          else
          {

            (*(v227 + 8))(v228, v33);
          }

          sub_104E60();
          return swift_unknownObjectRelease();
        }

        swift_unknownObjectRetain();
        v135 = sub_106D10();
        v220 = sub_106FC0();
        swift_unknownObjectRelease();
        if (!os_log_type_enabled(v135, v220))
        {
          goto LABEL_117;
        }

        v221 = swift_slowAlloc();
        v222 = swift_slowAlloc();
        *&v347 = v222;
        *v221 = 136315138;
        v346 = v212;
        swift_unknownObjectRetain();
        sub_25E4(&unk_137470, &unk_10BC40);
        v223 = sub_106E30();
        v225 = sub_722E8(v223, v224, &v347);

        *(v221 + 4) = v225;
        v226 = "decideActionForInput decide handle userDialogAct: %s";
LABEL_115:
        _os_log_impl(&dword_0, v135, v220, v226, v221, 0xCu);
        sub_2738(v222);

        goto LABEL_116;
      }

      sub_16F70(v323, &unk_1374A0, &qword_10BB30);
      v211 = v311;
      sub_16F70(v310, &unk_1374A0, &qword_10BB30);
      (*(v317 + 8))(v133, v206);
    }

    sub_16F70(v211, &qword_137498, &unk_108C50);
    v213 = v320;
    v214 = v296;
    v212 = v345;
    goto LABEL_92;
  }

  if (v89 != enum case for Parse.uso(_:))
  {
    v168 = v62;
    v169 = v318;
    v170 = v314;
    (*(v318 + 16))(v314, a1, v33);
    v171 = sub_106D10();
    v172 = sub_106FB0();
    if (os_log_type_enabled(v171, v172))
    {
      v173 = swift_slowAlloc();
      v174 = swift_slowAlloc();
      *&v347 = v174;
      *v173 = 136315138;
      v175 = v170;
      sub_105360();
      v176 = sub_106E30();
      v296 = v63;
      v178 = v177;
      (*(v169 + 8))(v175, v33);
      v179 = sub_722E8(v176, v178, &v347);
      v63 = v296;

      *(v173 + 4) = v179;
      _os_log_impl(&dword_0, v171, v172, "Received an unsupported parse for disambiguation window prompt: %s", v173, 0xCu);
      sub_2738(v174);

      v88 = v345;
    }

    else
    {

      (*(v169 + 8))(v170, v33);
    }

    sub_104E60();
    return (*(v63 + 8))(v88, v168);
  }

  v316 = v33;
  v332 = a1;
  v296 = v63;
  v155 = *(v63 + 96);
  v320 = v62;
  v155(v88, v62);
  v342 = v24;
  (*(v24 + 4))(v328, v88, v23);
  v156 = v315;
  sub_105400();
  v157 = sub_105450();
  v158 = *(v324 + 8);
  v324 += 8;
  v345 = v158;
  result = (v158)(v156, v319);
  v159 = *(v157 + 16);
  v160 = (v338 + 8);
  if (v337)
  {
    v161 = 0;
    v162 = v309;
    while (1)
    {
      if (v159 == v161)
      {
        goto LABEL_79;
      }

      if (v161 >= *(v157 + 16))
      {
        goto LABEL_131;
      }

      (*(v338 + 16))(v162, v157 + ((*(v338 + 80) + 32) & ~*(v338 + 80)) + *(v338 + 72) * v161, v339);
      if (sub_1054C0() & 1) != 0 || (sub_1054F0())
      {
        break;
      }

      v163 = sub_1054D0();
      result = (*v160)(v162, v339);
      ++v161;
      if (v163)
      {

LABEL_82:
        v199 = sub_106D10();
        v200 = sub_106FC0();
        v201 = os_log_type_enabled(v199, v200);
        v202 = v342;
        if (v201)
        {
          v203 = swift_slowAlloc();
          *v203 = 0;
          _os_log_impl(&dword_0, v199, v200, "USO parse userDialogActs contains hasAccepted, hasWantedToProceed or hasRejected; returning .handle() since these are window actions", v203, 2u);
        }

        sub_104E50();
        return v202[1](v328, v23);
      }
    }

    (*v160)(v162, v339);
    goto LABEL_82;
  }

  v183 = 0;
  v184 = v339;
  do
  {
    if (v159 == v183)
    {
LABEL_79:

      v194 = v305;
      sub_105400();
      v195 = sub_105440();
      (v345)(v194, v319);
      if (v195)
      {
        v196 = v308;
        sub_274CC(v308);

        v197 = 0;
        v198 = v313;
      }

      else
      {
        v197 = 1;
        v198 = v313;
        v196 = v308;
      }

      v239 = v307;
      v240 = v317;
      v241 = *(v317 + 56);
      v241(v196, v197, 1, v198);
      (*(v240 + 104))(v239, enum case for AlarmNLv4Constants.AlarmVerb.noVerb(_:), v198);
      v241(v239, 0, 1, v198);
      v242 = *(v312 + 48);
      v243 = v306;
      sub_14994(v196, v306, &unk_1374A0, &qword_10BB30);
      sub_14994(v239, v243 + v242, &unk_1374A0, &qword_10BB30);
      v244 = *(v240 + 48);
      if (v244(v243, 1, v198) == 1)
      {
        sub_16F70(v239, &unk_1374A0, &qword_10BB30);
        sub_16F70(v196, &unk_1374A0, &qword_10BB30);
        v245 = v244(v243 + v242, 1, v198) == 1;
        v246 = v243;
        v247 = v342;
        if (!v245)
        {
          goto LABEL_105;
        }

        sub_16F70(v246, &unk_1374A0, &qword_10BB30);
      }

      else
      {
        v248 = v303;
        sub_14994(v243, v303, &unk_1374A0, &qword_10BB30);
        if (v244(v243 + v242, 1, v198) == 1)
        {
          sub_16F70(v239, &unk_1374A0, &qword_10BB30);
          sub_16F70(v196, &unk_1374A0, &qword_10BB30);
          (*(v317 + 8))(v248, v198);
          v246 = v243;
          v247 = v342;
LABEL_105:
          sub_16F70(v246, &qword_137498, &unk_108C50);
          v249 = v296;
LABEL_106:
          v250 = v335;
          sub_105360();
          v251 = sub_106630();
          v252 = v334;
          (*(*(v251 - 8) + 56))(v334, 1, 1, v251);
          v253 = sub_579C(v250, v252);
          sub_16F70(v252, &qword_1374F0, &qword_1080F0);
          (*(v249 + 8))(v250, v320);
          if (!v253 || (v254 = swift_dynamicCastUnknownClass(), v253, !v254))
          {
            v266 = v318;
            v267 = v301;
            v268 = v316;
            (*(v318 + 16))(v301, v332, v316);
            v269 = sub_106D10();
            v270 = sub_106FB0();
            if (os_log_type_enabled(v269, v270))
            {
              v271 = swift_slowAlloc();
              *&v347 = swift_slowAlloc();
              *v271 = 136315394;
              v272 = sub_107480();
              v274 = sub_722E8(v272, v273, &v347);

              *(v271 + 4) = v274;
              *(v271 + 12) = 2080;
              sub_14F4C(&unk_1374D0, &type metadata accessor for Input);
              v275 = sub_107340();
              v277 = v276;
              (*(v266 + 8))(v267, v268);
              v278 = sub_722E8(v275, v277, &v347);

              *(v271 + 14) = v278;
              _os_log_impl(&dword_0, v269, v270, "Intent from parse does not match IntentType. Expected %s, received %s", v271, 0x16u);
              swift_arrayDestroy();
            }

            else
            {

              (*(v266 + 8))(v267, v268);
            }

            sub_104E60();
            return v342[1](v328, v23);
          }

          v255 = v247[2];
          v256 = v298;
          (v255)(v298, v328, v23);
          v257 = sub_106D10();
          v258 = sub_106FC0();
          if (os_log_type_enabled(v257, v258))
          {
            v259 = swift_slowAlloc();
            v345 = swift_slowAlloc();
            *&v347 = v345;
            *v259 = 136315138;
            (v255)(v299, v256, v23);
            v260 = sub_106E30();
            v262 = v261;
            v263 = v247[1];
            v263(v256, v23);
            v264 = sub_722E8(v260, v262, &v347);

            *(v259 + 4) = v264;
            v265 = "decideActionForInput decide handle userDialogAct: %s";
LABEL_122:
            _os_log_impl(&dword_0, v257, v258, v265, v259, 0xCu);
            sub_2738(v345);

LABEL_124:
            sub_104E50();
            return v263(v328, v23);
          }

          goto LABEL_123;
        }

        v287 = v317;
        v288 = v243 + v242;
        v289 = v304;
        (*(v317 + 32))(v304, v288, v198);
        sub_14F4C(&qword_138400, &type metadata accessor for AlarmNLv4Constants.AlarmVerb);
        LODWORD(v345) = sub_106E00();
        v290 = *(v287 + 8);
        v290(v289, v198);
        sub_16F70(v239, &unk_1374A0, &qword_10BB30);
        sub_16F70(v196, &unk_1374A0, &qword_10BB30);
        v290(v248, v198);
        sub_16F70(v243, &unk_1374A0, &qword_10BB30);
        v249 = v296;
        v247 = v342;
        if ((v345 & 1) == 0)
        {
          goto LABEL_106;
        }
      }

      v291 = v247[2];
      v256 = v300;
      (v291)(v300, v328, v23);
      v257 = sub_106D10();
      v258 = sub_106FC0();
      if (os_log_type_enabled(v257, v258))
      {
        v259 = swift_slowAlloc();
        v345 = swift_slowAlloc();
        *&v347 = v345;
        *v259 = 136315138;
        (v291)(v299, v256, v23);
        v292 = sub_106E30();
        v294 = v293;
        v263 = v247[1];
        v263(v256, v23);
        v295 = sub_722E8(v292, v294, &v347);

        *(v259 + 4) = v295;
        v265 = "Received .noVerb in USO firstUsoTask – handling: %s";
        goto LABEL_122;
      }

LABEL_123:

      v263 = v247[1];
      v263(v256, v23);
      goto LABEL_124;
    }

    if (v183 >= *(v157 + 16))
    {
      __break(1u);
LABEL_131:
      __break(1u);
      return result;
    }

    v185 = v338;
    v186 = v336;
    (*(v338 + 16))(v336, v157 + ((*(v185 + 80) + 32) & ~*(v185 + 80)) + *(v338 + 72) * v183++, v184);
    v187 = sub_1054D0();
    result = (*(v185 + 8))(v186, v184);
  }

  while ((v187 & 1) == 0);

  v188 = sub_106D10();
  v189 = sub_106FC0();
  if (os_log_type_enabled(v188, v189))
  {
    v190 = swift_slowAlloc();
    *v190 = 0;
    _os_log_impl(&dword_0, v188, v189, "USO parse userDialogActs contains hasRejected, and we're in a non-windowed config -- returning .cancel()!", v190, 2u);
  }

  sub_104E40();
  return v342[1](v328, v23);
}

void *sub_579C(void (*a1)(void, void), uint64_t a2)
{
  v534 = a1;
  v3 = sub_25E4(&qword_137500, &qword_107E10);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v466 = &v458 - v5;
  v6 = sub_25E4(&qword_137508, &qword_107E18);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v459 = &v458 - v8;
  v9 = sub_25E4(&qword_137510, &qword_107E20);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v460 = &v458 - v11;
  v12 = sub_25E4(&unk_1374A0, &qword_10BB30);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v511 = &v458 - v14;
  v498 = sub_106960();
  v499 = *(v498 - 8);
  v15 = *(v499 + 64);
  v16 = __chkstk_darwin(v498);
  v492 = &v458 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v495 = &v458 - v18;
  v512 = sub_1065A0();
  v521 = *(v512 - 8);
  v19 = *(v521 + 64);
  v20 = __chkstk_darwin(v512);
  v464 = &v458 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v20);
  v468 = &v458 - v23;
  v24 = __chkstk_darwin(v22);
  v461 = &v458 - v25;
  v26 = __chkstk_darwin(v24);
  v469 = &v458 - v27;
  v28 = __chkstk_darwin(v26);
  v463 = &v458 - v29;
  v30 = __chkstk_darwin(v28);
  v471 = &v458 - v31;
  v32 = __chkstk_darwin(v30);
  v480 = &v458 - v33;
  __chkstk_darwin(v32);
  v510 = &v458 - v34;
  v524 = sub_1065E0();
  v527 = *(v524 - 8);
  v35 = *(v527 + 64);
  v36 = __chkstk_darwin(v524);
  v483 = &v458 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v36);
  v523 = &v458 - v38;
  v39 = sub_1053C0();
  v40 = *(v39 - 8);
  v41 = *(v40 + 64);
  v42 = __chkstk_darwin(v39);
  v513 = &v458 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = __chkstk_darwin(v42);
  v487 = &v458 - v45;
  v46 = __chkstk_darwin(v44);
  v500 = &v458 - v47;
  v48 = __chkstk_darwin(v46);
  v470 = &v458 - v49;
  __chkstk_darwin(v48);
  v51 = &v458 - v50;
  v477 = sub_1047F0();
  v476 = *(v477 - 8);
  v52 = *(v476 + 64);
  __chkstk_darwin(v477);
  v475 = &v458 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  v479 = sub_1047D0();
  v478 = *(v479 - 8);
  v54 = *(v478 + 64);
  v55 = __chkstk_darwin(v479);
  v462 = &v458 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v55);
  v474 = &v458 - v57;
  v482 = sub_1045E0();
  v481 = *(v482 - 8);
  v58 = *(v481 + 64);
  v59 = __chkstk_darwin(v482);
  v465 = &v458 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = __chkstk_darwin(v59);
  v467 = &v458 - v62;
  __chkstk_darwin(v61);
  v473 = &v458 - v63;
  v64 = sub_25E4(&qword_137518, &qword_107E28);
  v65 = *(*(v64 - 8) + 64);
  __chkstk_darwin(v64 - 8);
  v505 = &v458 - v66;
  v67 = sub_104670();
  v506 = *(v67 - 8);
  v68 = *(v506 + 64);
  v69 = __chkstk_darwin(v67);
  v472 = &v458 - ((v70 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v69);
  v485 = &v458 - v71;
  v490 = sub_106DB0();
  v489 = *(v490 - 8);
  v72 = *(v489 + 64);
  v73 = __chkstk_darwin(v490);
  v484 = &v458 - ((v74 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v73);
  v486 = &v458 - v75;
  v494 = sub_106010();
  v493 = *(v494 - 8);
  v76 = *(v493 + 64);
  v77 = __chkstk_darwin(v494);
  v535 = &v458 - ((v78 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = __chkstk_darwin(v77);
  v488 = &v458 - v80;
  v81 = __chkstk_darwin(v79);
  v491 = &v458 - v82;
  __chkstk_darwin(v81);
  v496 = &v458 - v83;
  v504 = sub_106040();
  v503 = *(v504 - 8);
  v84 = *(v503 + 64);
  __chkstk_darwin(v504);
  v502 = &v458 - ((v85 + 15) & 0xFFFFFFFFFFFFFFF0);
  v508 = sub_1050A0();
  v507 = *(v508 - 8);
  v86 = *(v507 + 64);
  __chkstk_darwin(v508);
  v520 = &v458 - ((v87 + 15) & 0xFFFFFFFFFFFFFFF0);
  v516 = sub_105460();
  v515 = *(v516 - 8);
  v88 = *(v515 + 64);
  __chkstk_darwin(v516);
  v514 = &v458 - ((v89 + 15) & 0xFFFFFFFFFFFFFFF0);
  v519 = sub_105410();
  v518 = *(v519 - 8);
  v90 = *(v518 + 64);
  __chkstk_darwin(v519);
  v517 = &v458 - ((v91 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = sub_105E80();
  v531 = *(v92 - 8);
  v532 = v92;
  v93 = *(v531 + 64);
  v94 = __chkstk_darwin(v92);
  v526 = &v458 - ((v95 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = __chkstk_darwin(v94);
  v530 = &v458 - v97;
  __chkstk_darwin(v96);
  v529 = &v458 - v98;
  *&v538 = sub_1053E0();
  v536 = *(v538 - 8);
  v99 = v536[8];
  v100 = __chkstk_darwin(v538);
  v497 = &v458 - ((v101 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = __chkstk_darwin(v100);
  v501 = &v458 - v103;
  __chkstk_darwin(v102);
  v537 = (&v458 - v104);
  v105 = sub_25E4(&qword_1374F0, &qword_1080F0);
  v106 = *(*(v105 - 8) + 64);
  v107 = __chkstk_darwin(v105);
  v522 = &v458 - ((v108 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = __chkstk_darwin(v107);
  v111 = &v458 - v110;
  __chkstk_darwin(v109);
  v113 = &v458 - v112;
  if (qword_136C50 != -1)
  {
    swift_once();
  }

  v114 = sub_106D20();
  v115 = sub_135C4(v114, qword_137440);
  v533 = a2;
  sub_14994(a2, v113, &qword_1374F0, &qword_1080F0);
  v116 = sub_106D10();
  v117 = sub_106FC0();
  v118 = os_log_type_enabled(v116, v117);
  v525 = v39;
  v509 = v67;
  if (v118)
  {
    v119 = swift_slowAlloc();
    v120 = swift_slowAlloc();
    v528 = v40;
    v121 = v120;
    *&v541 = v120;
    *v119 = 136315138;
    sub_14994(v113, v111, &qword_1374F0, &qword_1080F0);
    v122 = sub_106E30();
    v124 = v123;
    sub_16F70(v113, &qword_1374F0, &qword_1080F0);
    v125 = sub_722E8(v122, v124, &v541);

    *(v119 + 4) = v125;
    _os_log_impl(&dword_0, v116, v117, "AlarmFlowUtils.makeIntentFromParse() called with halInfo %s.", v119, 0xCu);
    sub_2738(v121);
    v40 = v528;
  }

  else
  {

    sub_16F70(v113, &qword_1374F0, &qword_1080F0);
  }

  v126 = v534;
  v127 = v535;
  v128 = v536;
  v129 = v537;
  v130 = v536[2];
  v131 = v538;
  v130(v537, v534, v538);
  v132 = (v128[11])(v129, v131);
  if (v132 == enum case for Parse.NLv3IntentOnly(_:))
  {
    (v128[12])(v129, v131);
    v133 = v531;
    v134 = v529;
    v135 = v129;
    v136 = v532;
    (*(v531 + 32))(v529, v135, v532);
    v137 = v530;
    (*(v133 + 16))(v530, v134, v136);
    v138 = type metadata accessor for AlarmNLIntent();
    v139 = *(v138 + 48);
    v140 = *(v138 + 52);
    swift_allocObject();
    sub_B3800(v137);
    v141 = sub_B4AF8();
    v142 = sub_B372C() == 0;
    v143 = sub_51180(v141, v533, v142);
    if (v143)
    {
      v144 = v143;
      v145 = sub_106D10();
      v146 = sub_106FC0();
      if (os_log_type_enabled(v145, v146))
      {
        v147 = swift_slowAlloc();
        *v147 = 0;
        _os_log_impl(&dword_0, v145, v146, "Get a halIntent from NLv3IntentPlusServerConversion.", v147, 2u);
      }

      (*(v133 + 8))(v134, v136);
      return v144;
    }

    else
    {
      (*(v133 + 8))(v134, v136);

      return v141;
    }
  }

  if (v132 == enum case for Parse.NLv3IntentPlusServerConversion(_:))
  {
    (v128[12])(v129, v131);
    v149 = *(v129 + *(sub_25E4(&qword_13B010, &unk_1087A0) + 48));
    v151 = v531;
    v150 = v532;
    v152 = v526;
    (*(v531 + 32))(v526, v129, v532);
    v153 = v530;
    (*(v151 + 16))(v530, v152, v150);
    v154 = type metadata accessor for AlarmNLIntent();
    v155 = *(v154 + 48);
    v156 = *(v154 + 52);
    swift_allocObject();
    sub_B3800(v153);
    v157 = sub_1053D0();
    v158 = sub_B372C() == 0;
    v159 = sub_51180(v157, v533, v158);
    if (v159)
    {
      v160 = v159;
      v161 = sub_106D10();
      v162 = sub_106FC0();
      if (os_log_type_enabled(v161, v162))
      {
        v163 = swift_slowAlloc();
        *v163 = 0;
        _os_log_impl(&dword_0, v161, v162, "Get a halIntent from NLv3IntentPlusServerConversion.", v163, 2u);
      }

      (*(v151 + 8))(v152, v150);
      return v160;
    }

    else
    {
      (*(v151 + 8))(v152, v150);

      return v157;
    }
  }

  if (v132 != enum case for Parse.directInvocation(_:))
  {
    if (v132 == enum case for Parse.NLv4IntentOnly(_:))
    {
      (v128[12])(v129, v131);
      v175 = sub_8A314(*v129, v533);
      if (v175)
      {
        v176 = v175;
        swift_unknownObjectRelease();
        return v176;
      }

      v223 = sub_106D10();
      v224 = sub_106FB0();
      if (os_log_type_enabled(v223, v224))
      {
        v225 = swift_slowAlloc();
        *v225 = 0;
        _os_log_impl(&dword_0, v223, v224, "Failed to parse alarm intent from userDialogAct", v225, 2u);
      }

      swift_unknownObjectRelease();
      return 0;
    }

    if (v132 == enum case for Parse.uso(_:))
    {
      (v128[12])(v129, v131);
      v183 = v518;
      v184 = v517;
      v185 = v519;
      (*(v518 + 32))(v517, v129, v519);
      v186 = v514;
      sub_105400();
      v187 = sub_8A4A8(v186, v533);
      (*(v515 + 8))(v186, v516);
      if (v187)
      {
        (*(v183 + 8))(v184, v185);
        return v187;
      }

      v236 = sub_106D10();
      v237 = sub_106FB0();
      if (os_log_type_enabled(v236, v237))
      {
        v238 = swift_slowAlloc();
        *v238 = 0;
        _os_log_impl(&dword_0, v236, v237, "Failed to parse alarm intent from userDialogAct", v238, 2u);
      }

      (*(v183 + 8))(v184, v185);
      return 0;
    }

    if (v132 != enum case for Parse.ifClientAction(_:))
    {
      v226 = v501;
      v130(v501, v126, v131);
      v227 = sub_106D10();
      v228 = sub_106FB0();
      if (os_log_type_enabled(v227, v228))
      {
        v229 = swift_slowAlloc();
        v230 = swift_slowAlloc();
        *&v541 = v230;
        *v229 = 136315138;
        v130(v497, v226, v538);
        v231 = sub_106E30();
        v233 = v232;
        v234 = v536[1];
        v234(v226, v538);
        v235 = sub_722E8(v231, v233, &v541);

        *(v229 + 4) = v235;
        _os_log_impl(&dword_0, v227, v228, "Received an unsupported input: %s", v229, 0xCu);
        sub_2738(v230);

        v131 = v538;
      }

      else
      {

        v234 = v536[1];
        v234(v226, v131);
      }

      v234(v537, v131);
      return 0;
    }

    (v128[12])(v129, v131);
    v202 = v507;
    v203 = v508;
    (*(v507 + 32))(v520, v129, v508);
    v536 = [objc_allocWithZone(sub_106800()) init];
    v204 = v502;
    sub_105090();
    v205 = sub_106020();
    (*(v503 + 8))(v204, v504);
    v206 = v509;
    v207 = v506;
    if (!*(v205 + 16))
    {
      goto LABEL_88;
    }

    v208 = sub_32658(0x6C6562616CLL, 0xE500000000000000);
    if (v209)
    {
      v210 = *(*(v205 + 56) + 8 * v208);
      if (*(v210 + 16))
      {
        v211 = v493;
        v212 = *(v493 + 16);
        v213 = v496;
        v214 = v494;
        v212(v496, v210 + ((*(v493 + 80) + 32) & ~*(v493 + 80)), v494);
        v215 = v491;
        v212(v491, v213, v214);
        if ((*(v211 + 88))(v215, v214) == enum case for MessagePayload.ClientAction.ShimParameter.resolved(_:))
        {
          (*(v211 + 96))(v215, v214);
          v216 = v489;
          v217 = v486;
          v218 = v215;
          v219 = v490;
          (*(v489 + 32))(v486, v218, v490);
          sub_106DA0();
          v221 = v220;
          (*(v216 + 8))(v217, v219);
          if (v221)
          {
            (*(v211 + 8))(v496, v214);
            v222 = sub_106E10();

            [v536 setLabel:v222];

            v202 = v507;
            v127 = v535;
            v206 = v509;
            v203 = v508;
            goto LABEL_82;
          }

          v273 = *(v211 + 8);
          v127 = v535;
        }

        else
        {
          v273 = *(v211 + 8);
          v273(v215, v214);
        }

        v206 = v509;
        v203 = v508;
        v273(v496, v214);
        v202 = v507;
      }
    }

LABEL_82:
    if (*(v205 + 16))
    {
      v290 = sub_32658(1701669236, 0xE400000000000000);
      if (v291)
      {
        v292 = *(*(v205 + 56) + 8 * v290);

        if (*(v292 + 16))
        {
          v293 = v493;
          v294 = v488;
          v295 = v494;
          (*(v493 + 16))(v488, v292 + ((*(v293 + 80) + 32) & ~*(v293 + 80)), v494);
          v296 = v293;

          (*(v293 + 32))(v127, v294, v295);
          v297 = (*(v293 + 88))(v127, v295);
          v298 = v505;
          if (v297 == enum case for MessagePayload.ClientAction.ShimParameter.resolved(_:))
          {
            (*(v296 + 96))(v127, v295);
            v299 = v127;
            v300 = v489;
            v301 = v484;
            v302 = v490;
            (*(v489 + 32))(v484, v299, v490);
            sub_10C0C(v298);
            (*(v300 + 8))(v301, v302);
            if ((*(v207 + 48))(v298, 1, v206) != 1)
            {
              v303 = v485;
              (*(v207 + 32))(v485, v298, v206);
              v304 = v472;
              (*(v207 + 16))(v472, v303, v206);
              v305 = sub_106D10();
              v306 = sub_106FC0();
              if (os_log_type_enabled(v305, v306))
              {
                v307 = swift_slowAlloc();
                v308 = swift_slowAlloc();
                *&v541 = v308;
                *v307 = 136315138;
                sub_14F4C(&qword_137548, &type metadata accessor for Date);
                v309 = sub_107340();
                v311 = v310;
                v312 = *(v207 + 8);
                v312(v304, v509);
                v313 = sub_722E8(v309, v311, &v541);

                *(v307 + 4) = v313;
                _os_log_impl(&dword_0, v305, v306, "ifClientActionParse time: %s", v307, 0xCu);
                sub_2738(v308);
                v206 = v509;
              }

              else
              {

                v312 = *(v207 + 8);
                v312(v304, v206);
              }

              v347 = v474;
              sub_104790();
              v348 = v475;
              sub_1047E0();
              v349 = v473;
              v350 = v485;
              sub_104720();
              (*(v476 + 8))(v348, v477);
              (*(v478 + 8))(v347, v479);
              isa = sub_104560().super.isa;
              (*(v481 + 8))(v349, v482);
              v352 = v536;
              [v536 setTime:isa];

              v312(v350, v206);
              (*(v507 + 8))(v520, v508);
              return v352;
            }

            (*(v202 + 8))(v520, v203);
LABEL_91:
            sub_16F70(v298, &qword_137518, &qword_107E28);
            return v536;
          }

          (*(v202 + 8))(v520, v203);
          (*(v296 + 8))(v127, v295);
LABEL_90:
          (*(v207 + 56))(v298, 1, 1, v206);
          goto LABEL_91;
        }

        (*(v202 + 8))(v520, v203);

LABEL_89:
        v298 = v505;
        goto LABEL_90;
      }
    }

LABEL_88:

    (*(v202 + 8))(v520, v203);
    goto LABEL_89;
  }

  v535 = v115;
  (v128[12])(v129, v131);
  v528 = v40;
  v164 = v525;
  (*(v40 + 32))(v51, v129, v525);
  v458 = v51;
  v165 = sub_1053A0();
  v167 = v166;
  v168 = v527;
  v169 = v523;
  v170 = v524;
  *&v538 = *(v527 + 104);
  (v538)(v523, enum case for DirectInvocationUtils.Alarm.URI.stopAlarm(_:), v524);
  v171 = sub_1065D0();
  v173 = v172;
  v174 = *(v168 + 8);
  v527 = v168 + 8;
  v174(v169, v170);
  if (v165 == v171 && v167 == v173)
  {

LABEL_26:
    v178 = v522;
    sub_14994(v533, v522, &qword_1374F0, &qword_1080F0);
    v179 = sub_106630();
    v180 = *(v179 - 8);
    v181 = (*(v180 + 48))(v178, 1, v179);
    v182 = v528;
    if (v181 != 1)
    {
      v188 = sub_106600();
      (*(v182 + 8))(v458, v164);
      (*(v180 + 8))(v178, v179);
      return v188;
    }

    (*(v528 + 8))(v458, v164);
    sub_16F70(v178, &qword_1374F0, &qword_1080F0);
    return 0;
  }

  v177 = sub_107370();

  if (v177)
  {
    goto LABEL_26;
  }

  v189 = sub_1053B0();
  v190 = v528;
  if (!v189)
  {
    goto LABEL_62;
  }

  v537 = v189;
  v191 = v521;
  v192 = v510;
  v193 = v512;
  v532 = *(v521 + 104);
  v533 = v521 + 104;
  v532(v510, enum case for DirectInvocationUtils.Alarm.UserInfoKey.verb(_:), v512);
  v194 = sub_106590();
  v196 = v195;
  v197 = *(v191 + 8);
  v521 = v191 + 8;
  v534 = v197;
  v197(v192, v193);
  v198 = v537;
  if (v537[2])
  {
    v199 = sub_32658(v194, v196);
    v200 = v511;
    if (v201)
    {
      sub_135FC(*(v198 + 56) + 32 * v199, &v541);
    }

    else
    {
      v541 = 0u;
      v542 = 0u;
    }
  }

  else
  {
    v541 = 0u;
    v542 = 0u;
    v200 = v511;
  }

  if (!*(&v542 + 1))
  {

    v243 = &qword_137490;
    v244 = qword_108C80;
    v245 = &v541;
    goto LABEL_60;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_62;
  }

  sub_106940();
  v239 = v499;
  v240 = v200;
  v241 = v200;
  v242 = v498;
  if ((*(v499 + 48))(v240, 1, v498) == 1)
  {

    v243 = &unk_1374A0;
    v244 = &qword_10BB30;
    v245 = v241;
LABEL_60:
    sub_16F70(v245, v243, v244);
LABEL_62:
    v246 = v164;
    v247 = *(v190 + 16);
    v248 = v513;
    v249 = v458;
    v247(v513, v458, v246);
    v250 = sub_106D10();
    v251 = sub_106FB0();
    if (!os_log_type_enabled(v250, v251))
    {

      v260 = *(v190 + 8);
      v260(v248, v246);
      v260(v249, v246);
      return 0;
    }

    v252 = swift_slowAlloc();
    v253 = v190;
    v254 = swift_slowAlloc();
    *&v541 = v254;
    *v252 = 136315138;
    v247(v500, v248, v246);
    v255 = sub_106E30();
    v257 = v256;
    v258 = *(v253 + 8);
    v258(v248, v246);
    v259 = sub_722E8(v255, v257, &v541);

    *(v252 + 4) = v259;
    _os_log_impl(&dword_0, v250, v251, "Received unexpected directInvocation in FlowStrategy: %s", v252, 0xCu);
    sub_2738(v254);

LABEL_64:
    v258(v458, v246);
    return 0;
  }

  v261 = v495;
  (*(v239 + 32))(v495, v241, v242);
  v262 = v492;
  (*(v239 + 16))(v492, v261, v242);
  v263 = (*(v239 + 88))(v262, v242);
  if (v263 == enum case for AlarmNLv4Constants.AlarmVerb.unknown(_:) || v263 == enum case for AlarmNLv4Constants.AlarmVerb.checkExistence(_:))
  {
    goto LABEL_159;
  }

  if (v263 == enum case for AlarmNLv4Constants.AlarmVerb.create(_:))
  {

    v536 = [objc_allocWithZone(sub_106800()) init];
    v264 = sub_1053A0();
    v266 = v265;
    v267 = v483;
    v268 = v524;
    (v538)(v483, enum case for DirectInvocationUtils.Alarm.URI.undo(_:), v524);
    v269 = sub_1065D0();
    v271 = v270;
    v174(v267, v268);
    v272 = v537;
    if (v264 == v269 && v266 == v271)
    {

      goto LABEL_97;
    }

    v314 = sub_107370();

    if (v314)
    {
LABEL_97:
      v315 = sub_106D10();
      v316 = sub_106FC0();
      v317 = os_log_type_enabled(v315, v316);
      v318 = v458;
      if (v317)
      {
        v319 = swift_slowAlloc();
        *v319 = 0;
        _os_log_impl(&dword_0, v315, v316, "Making CreateAlarmIntent from undo directInvocation", v319, 2u);
      }

      v320 = v480;
      v321 = v512;
      v532(v480, enum case for DirectInvocationUtils.Alarm.UserInfoKey.alarmSnapshotsJson(_:), v512);
      v322 = sub_106590();
      v324 = v323;
      v534(v320, v321);
      v325 = v525;
      if (*(v272 + 16) && (v326 = sub_32658(v322, v324), (v327 & 1) != 0))
      {
        sub_135FC(*(v272 + 56) + 32 * v326, &v541);
      }

      else
      {
        v541 = 0u;
        v542 = 0u;
      }

      if (*(&v542 + 1))
      {
        if (swift_dynamicCast())
        {
          v329 = v539;
          v328 = v540;
          v330 = sub_1044D0();
          v331 = *(v330 + 48);
          v332 = *(v330 + 52);
          swift_allocObject();
          sub_1044C0();
          sub_25E4(&qword_137530, &qword_1087D0);
          sub_14E2C();
          sub_1044B0();

          if (*(v541 + 16))
          {
            v538 = *(v541 + 32);
            v421 = *(v541 + 48);
            v420 = *(v541 + 56);
            v422 = *(v541 + 64);
            v423 = *(v541 + 72);

            v541 = v538;
            *&v542 = v421;
            *(&v542 + 1) = v420;
            v543 = v422;
            v544 = v423;
            v283 = sub_22820(&v541);
            sub_14DD8(v329, v328);

            goto LABEL_154;
          }

          sub_14DD8(v329, v328);
          v325 = v525;
          v318 = v458;
        }
      }

      else
      {
        sub_16F70(&v541, &qword_137490, qword_108C80);
      }

      v353 = sub_106D10();
      v354 = sub_106FB0();
      v355 = os_log_type_enabled(v353, v354);
      v356 = v498;
      if (v355)
      {
        v357 = swift_slowAlloc();
        *v357 = 0;
        _os_log_impl(&dword_0, v353, v354, "Missing alarmSnapshot in userData from directInvocation", v357, 2u);
      }

      (*(v499 + 8))(v495, v356);
      (*(v528 + 8))(v318, v325);
      return 0;
    }

    v358 = v528;
    v359 = *(v528 + 16);
    v360 = v470;
    v361 = v525;
    v359(v470, v458, v525);
    v362 = sub_106D10();
    v363 = sub_106FC0();
    if (os_log_type_enabled(v362, v363))
    {
      v364 = swift_slowAlloc();
      v365 = swift_slowAlloc();
      *&v541 = v365;
      *v364 = 136315138;
      v359(v500, v360, v361);
      v366 = sub_106E30();
      v368 = v367;
      *&v538 = *(v528 + 8);
      (v538)(v360, v361);
      v369 = sub_722E8(v366, v368, &v541);

      *(v364 + 4) = v369;
      _os_log_impl(&dword_0, v362, v363, "Making CreateAlarmIntent from directionInvocation: %s", v364, 0xCu);
      sub_2738(v365);
    }

    else
    {

      *&v538 = *(v358 + 8);
      (v538)(v360, v361);
    }

    v390 = v471;
    v391 = v512;
    v532(v471, enum case for DirectInvocationUtils.Alarm.UserInfoKey.hour(_:), v512);
    v392 = sub_106590();
    v394 = v393;
    v534(v390, v391);
    sub_2B430(v392, v394, v272, &v541);

    if (*(&v542 + 1))
    {
      if (swift_dynamicCast())
      {
        v395 = v463;
        v396 = v512;
        v532(v463, enum case for DirectInvocationUtils.Alarm.UserInfoKey.minute(_:), v512);
        v397 = sub_106590();
        v399 = v398;
        v534(v395, v396);
        sub_2B430(v397, v399, v272, &v541);

        if (*(&v542 + 1))
        {
          if (swift_dynamicCast())
          {
            v400 = v462;
            sub_104790();
            v401 = v478;
            v402 = *(v478 + 56);
            v403 = v460;
            v404 = v479;
            v402(v460, 1, 1, v479);
            (*(v476 + 56))(v459, 1, 1, v477);
            v405 = v467;
            sub_1045C0();
            sub_104590();
            sub_1045B0();
            (*(v401 + 16))(v403, v400, v404);
            v402(v403, 0, 1, v404);
            sub_1045D0();
            v406 = v466;
            sub_10F44(v405, v400, v466);
            if ((*(v481 + 48))(v406, 1, v482) == 1)
            {

              sub_16F70(v466, &qword_137500, &qword_107E10);
              v407 = sub_106D10();
              v408 = sub_106FB0();
              if (os_log_type_enabled(v407, v408))
              {
                v409 = swift_slowAlloc();
                *v409 = 0;
                _os_log_impl(&dword_0, v407, v408, "Failed to get next calendar date from directInvocation payload", v409, 2u);
              }

              (*(v478 + 8))(v462, v479);
              (*(v481 + 8))(v467, v482);
LABEL_172:
              (*(v499 + 8))(v495, v498);
              (v538)(v458, v525);
              return 0;
            }

            goto LABEL_177;
          }
        }

        else
        {
          sub_16F70(&v541, &qword_137490, qword_108C80);
        }

        v272 = v537;
      }
    }

    else
    {
      sub_16F70(&v541, &qword_137490, qword_108C80);
    }

    v437 = v469;
    v438 = v512;
    v532(v469, enum case for DirectInvocationUtils.Alarm.UserInfoKey.dateComponents(_:), v512);
    v439 = sub_106590();
    v441 = v440;
    v534(v437, v438);
    sub_2B430(v439, v441, v272, &v541);

    if (*(&v542 + 1))
    {
      if (swift_dynamicCast())
      {
        v443 = v539;
        v442 = v540;
        v444 = sub_1044D0();
        v445 = *(v444 + 48);
        v446 = *(v444 + 52);
        swift_allocObject();
        sub_1044C0();
        sub_14F4C(&qword_137528, &type metadata accessor for DateComponents);
        sub_1044B0();

        sub_14DD8(v443, v442);
        v466 = v465;
        goto LABEL_178;
      }
    }

    else
    {

      sub_16F70(&v541, &qword_137490, qword_108C80);
    }

    v447 = sub_106D10();
    v448 = sub_106FB0();
    if (os_log_type_enabled(v447, v448))
    {
      v449 = swift_slowAlloc();
      *v449 = 0;
      _os_log_impl(&dword_0, v447, v448, "Unexpected type in userData of directInvocation", v449, 2u);
    }

    goto LABEL_172;
  }

  v274 = v537;
  if (v263 == enum case for AlarmNLv4Constants.AlarmVerb.delete(_:))
  {

    v275 = sub_106D10();
    v276 = sub_106FC0();
    v277 = os_log_type_enabled(v275, v276);
    v278 = v525;
    v279 = v458;
    if (v277)
    {
      v280 = swift_slowAlloc();
      *v280 = 0;
      _os_log_impl(&dword_0, v275, v276, "Making DeleteAlarmIntent from directInvocation", v280, 2u);
    }

    sub_149FC(v274);
    v282 = v281;

    if (!v282)
    {
      (*(v499 + 8))(v495, v498);
      (*(v190 + 8))(v279, v278);
      return 0;
    }

    v283 = [objc_allocWithZone(sub_106840()) init];
    sub_106A50();
    v284 = v190;
    v285 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    v286 = sub_106E10();
    v287 = sub_106E10();
    v288 = [v285 initWithIdentifier:v286 displayString:v287];

    sub_16F28(0, &qword_137520, NSNumber_ptr);
    v289 = sub_107090(1).super.super.isa;
    [v288 setIncludeSleepAlarm:v289];

    [v283 setAlarmSearch:v288];
    (*(v499 + 8))(v495, v498);
    (*(v284 + 8))(v279, v278);
    return v283;
  }

  v333 = v525;
  if (v263 == enum case for AlarmNLv4Constants.AlarmVerb.disable(_:))
  {
    goto LABEL_107;
  }

  if (v263 == enum case for AlarmNLv4Constants.AlarmVerb.enable(_:))
  {
    goto LABEL_120;
  }

  v190 = v528;
  if (v263 == enum case for AlarmNLv4Constants.AlarmVerb.read(_:) || v263 == enum case for AlarmNLv4Constants.AlarmVerb.request(_:) || v263 == enum case for AlarmNLv4Constants.AlarmVerb.snooze(_:) || v263 == enum case for AlarmNLv4Constants.AlarmVerb.summarise(_:))
  {
    goto LABEL_159;
  }

  if (v263 == enum case for AlarmNLv4Constants.AlarmVerb.update(_:))
  {

    v410 = sub_106D10();
    v411 = sub_106FC0();
    if (os_log_type_enabled(v410, v411))
    {
      v412 = swift_slowAlloc();
      *v412 = 0;
      _os_log_impl(&dword_0, v410, v411, "Making update UpdateAlarmIntent from directInvocation", v412, 2u);
    }

    sub_149FC(v537);
    v414 = v413;

    if (v414)
    {
      v283 = [objc_allocWithZone(sub_1068D0()) init];
      sub_106A50();
      v415 = objc_allocWithZone(swift_getObjCClassFromMetadata());
      v416 = sub_106E10();
      v417 = sub_106E10();
      v418 = [v415 initWithIdentifier:v416 displayString:v417];

      sub_16F28(0, &qword_137520, NSNumber_ptr);
      v419 = sub_107090(1).super.super.isa;
      [v418 setIncludeSleepAlarm:v419];

      [v283 setAlarmSearch:v418];
LABEL_154:
      (*(v499 + 8))(v495, v498);
      (*(v528 + 8))(v458, v525);
      return v283;
    }

    goto LABEL_156;
  }

  v190 = v528;
  if (v263 == enum case for AlarmNLv4Constants.AlarmVerb.noVerb(_:))
  {
LABEL_159:

    v424 = *(v190 + 16);
    v425 = v487;
    v426 = v458;
    v246 = v525;
    v424(v487, v458, v525);
    v427 = sub_106D10();
    v428 = sub_106FB0();
    if (!os_log_type_enabled(v427, v428))
    {

      v436 = *(v190 + 8);
      v436(v425, v246);
      (*(v499 + 8))(v495, v498);
      v436(v426, v246);
      return 0;
    }

    v429 = swift_slowAlloc();
    v430 = v190;
    v431 = swift_slowAlloc();
    *&v541 = v431;
    *v429 = 136315138;
    v424(v500, v425, v246);
    v432 = sub_106E30();
    v434 = v433;
    v258 = *(v430 + 8);
    v258(v425, v246);
    v435 = sub_722E8(v432, v434, &v541);

    *(v429 + 4) = v435;
    _os_log_impl(&dword_0, v427, v428, "Received unhandled verb in directInvocation in FlowStrategy: %s", v429, 0xCu);
    sub_2738(v431);

    (*(v499 + 8))(v495, v498);
    goto LABEL_64;
  }

  v333 = v525;
  v274 = v537;
  if (v263 != enum case for AlarmNLv4Constants.AlarmVerb.close(_:))
  {
    if (v263 == enum case for AlarmNLv4Constants.AlarmVerb.resume(_:))
    {
LABEL_120:

      v370 = sub_106D10();
      v371 = sub_106FC0();
      if (os_log_type_enabled(v370, v371))
      {
        v372 = swift_slowAlloc();
        *v372 = 0;
        _os_log_impl(&dword_0, v370, v371, "Making enable ChangeAlarmStatusIntent from directInvocation", v372, 2u);
      }

      sub_149FC(v274);
      if (v373)
      {
        v374 = [objc_allocWithZone(sub_1067A0()) init];
        sub_106A50();
        v375 = objc_allocWithZone(swift_getObjCClassFromMetadata());
        v376 = sub_106E10();
        v377 = sub_106E10();
        v378 = [v375 initWithIdentifier:v376 displayString:v377];

        sub_16F28(0, &qword_137520, NSNumber_ptr);
        v379 = sub_107090(1).super.super.isa;
        [v378 setIncludeSleepAlarm:v379];

        [v374 setAlarmSearch:v378];
        v344 = v374;
        [v374 setOperation:1];
        v345 = enum case for DirectInvocationUtils.Alarm.UserInfoKey.handleSilently(_:);
        v346 = &v496;
        goto LABEL_124;
      }

LABEL_156:
      (*(v499 + 8))(v495, v498);
      (*(v528 + 8))(v458, v525);
      return 0;
    }

    if (v263 != enum case for AlarmNLv4Constants.AlarmVerb.stop(_:))
    {
      sub_107360();
      __break(1u);
LABEL_177:
      (*(v478 + 8))(v462, v479);
      (*(v481 + 8))(v467, v482);
LABEL_178:
      (*(v481 + 32))(v467, v466, v482);
      v450 = sub_104560().super.isa;
      [v536 setTime:v450];

      v451 = v461;
      v452 = v512;
      v532(v461, enum case for DirectInvocationUtils.Alarm.UserInfoKey.label(_:), v512);
      v453 = sub_106590();
      v455 = v454;
      v534(v451, v452);
      sub_2B430(v453, v455, v537, &v541);

      if (*(&v542 + 1))
      {
        if (swift_dynamicCast())
        {
          v456 = sub_106E10();

LABEL_183:
          v457 = v536;
          [v536 setLabel:v456];

          (*(v481 + 8))(v467, v482);
          (*(v499 + 8))(v495, v498);
          (v538)(v458, v525);
          return v457;
        }
      }

      else
      {
        sub_16F70(&v541, &qword_137490, qword_108C80);
      }

      v456 = 0;
      goto LABEL_183;
    }
  }

LABEL_107:

  v334 = sub_106D10();
  v335 = sub_106FC0();
  if (os_log_type_enabled(v334, v335))
  {
    v336 = swift_slowAlloc();
    *v336 = 0;
    _os_log_impl(&dword_0, v334, v335, "Making disable ChangeAlarmStatusIntent from directInvocation", v336, 2u);
  }

  sub_149FC(v274);
  if (!v337)
  {

    (*(v499 + 8))(v495, v498);
    (*(v528 + 8))(v458, v333);
    return 0;
  }

  v338 = [objc_allocWithZone(sub_1067A0()) init];
  sub_106A50();
  v339 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v340 = sub_106E10();
  v341 = sub_106E10();
  v342 = [v339 initWithIdentifier:v340 displayString:v341];

  sub_16F28(0, &qword_137520, NSNumber_ptr);
  v343 = sub_107090(1).super.super.isa;
  [v342 setIncludeSleepAlarm:v343];

  [v338 setAlarmSearch:v342];
  v344 = v338;
  [v338 setOperation:2];
  v345 = enum case for DirectInvocationUtils.Alarm.UserInfoKey.handleSilently(_:);
  v346 = &v500;
LABEL_124:
  v380 = *(v346 - 32);
  v381 = v512;
  v532(v380, v345, v512);
  v382 = sub_106590();
  v384 = v383;
  v534(v380, v381);
  sub_2B430(v382, v384, v274, &v541);

  if (*(&v542 + 1))
  {
    if (swift_dynamicCast())
    {
      v385 = v539;
      v386 = sub_106D10();
      v387 = sub_106FC0();
      if (os_log_type_enabled(v386, v387))
      {
        v388 = swift_slowAlloc();
        *v388 = 67109120;
        *(v388 + 4) = v385;
        _os_log_impl(&dword_0, v386, v387, "Setting handleSilently = %{BOOL}d", v388, 8u);
      }

      v389 = sub_107080(v385).super.super.isa;
      [v344 setHandleSilently:v389];
    }

    (*(v499 + 8))(v495, v498);
    (*(v528 + 8))(v458, v525);
    return v344;
  }

  else
  {
    (*(v499 + 8))(v495, v498);
    (*(v528 + 8))(v458, v525);
    sub_16F70(&v541, &qword_137490, qword_108C80);
    return v344;
  }
}

uint64_t sub_99E8@<X0>(uint64_t a1@<X8>)
{
  v79 = a1;
  v78 = sub_105520();
  v1 = *(v78 - 8);
  v2 = *(v1 + 64);
  v3 = __chkstk_darwin(v78);
  v71 = &v70 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v6 = &v70 - v5;
  v7 = sub_105460();
  v73 = *(v7 - 8);
  v74 = v7;
  v8 = *(v73 + 64);
  __chkstk_darwin(v7);
  v72 = &v70 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = sub_105410();
  v75 = *(v77 - 8);
  v10 = *(v75 + 64);
  __chkstk_darwin(v77);
  v76 = &v70 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1053E0();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = (&v70 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = sub_105E80();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = __chkstk_darwin(v17);
  v22 = &v70 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v24 = &v70 - v23;
  sub_105360();
  v25 = (*(v13 + 88))(v16, v12);
  if (v25 != enum case for Parse.NLv3IntentOnly(_:))
  {
    if (v25 == enum case for Parse.NLv3IntentPlusServerConversion(_:))
    {
      (*(v13 + 96))(v16, v12);
      v26 = *(v16 + *(sub_25E4(&qword_13B010, &unk_1087A0) + 48));

      goto LABEL_5;
    }

    if (v25 == enum case for Parse.directInvocation(_:))
    {
LABEL_14:
      v44 = sub_104E70();
      (*(*(v44 - 8) + 56))(v79, 1, 1, v44);
      return (*(v13 + 8))(v16, v12);
    }

    if (v25 == enum case for Parse.NLv4IntentOnly(_:))
    {
      (*(v13 + 96))(v16, v12);
      v45 = *v16;
      objc_opt_self();
      if (!swift_dynamicCastObjCClass())
      {
        objc_opt_self();
        if (!swift_dynamicCastObjCClass())
        {
          swift_unknownObjectRelease();
LABEL_48:
          v69 = sub_104E70();
          return (*(*(v69 - 8) + 56))(v79, 1, 1, v69);
        }

        if (qword_136C50 != -1)
        {
          swift_once();
        }

        v63 = sub_106D20();
        sub_135C4(v63, qword_137440);
        v47 = sub_106D10();
        v48 = sub_106FC0();
        if (os_log_type_enabled(v47, v48))
        {
          v49 = swift_slowAlloc();
          *v49 = 0;
          v50 = "validateCancellation: Received UserDialogAct - UserCancelled";
          goto LABEL_34;
        }

LABEL_35:

        v40 = v79;
        sub_104E40();
        swift_unknownObjectRelease();
        goto LABEL_11;
      }

      if (qword_136C50 == -1)
      {
LABEL_18:
        v46 = sub_106D20();
        sub_135C4(v46, qword_137440);
        v47 = sub_106D10();
        v48 = sub_106FC0();
        if (os_log_type_enabled(v47, v48))
        {
          v49 = swift_slowAlloc();
          *v49 = 0;
          v50 = "validateCancellation: Received UserDialogAct - UserRejected";
LABEL_34:
          _os_log_impl(&dword_0, v47, v48, v50, v49, 2u);

          goto LABEL_35;
        }

        goto LABEL_35;
      }
    }

    else
    {
      if (v25 != enum case for Parse.uso(_:))
      {
        goto LABEL_14;
      }

      (*(v13 + 96))(v16, v12);
      v51 = v75;
      (*(v75 + 32))(v76, v16, v77);
      v52 = v72;
      sub_105400();
      v53 = sub_105450();
      (*(v73 + 8))(v52, v74);
      v54 = 0;
      v55 = *(v53 + 16);
      v56 = v78;
      while (1)
      {
        if (v55 == v54)
        {
          v64 = 0;
          v65 = v71;
          v66 = v78;
          do
          {
            if (v55 == v64)
            {
              (*(v51 + 8))(v76, v77);

              goto LABEL_48;
            }

            if (v64 >= *(v53 + 16))
            {
              goto LABEL_50;
            }

            (*(v1 + 16))(v65, v53 + ((*(v1 + 80) + 32) & ~*(v1 + 80)) + *(v1 + 72) * v64++, v66);
            v67 = sub_1054E0();
            (*(v1 + 8))(v65, v66);
          }

          while ((v67 & 1) == 0);

          if (qword_136C50 != -1)
          {
            swift_once();
          }

          v68 = sub_106D20();
          sub_135C4(v68, qword_137440);
          v59 = sub_106D10();
          v60 = sub_106FC0();
          if (os_log_type_enabled(v59, v60))
          {
            v61 = swift_slowAlloc();
            *v61 = 0;
            v62 = "validateCancellation: USO parse userDialogActs contains hasCancelled; returning .cancel()";
            goto LABEL_44;
          }

          goto LABEL_45;
        }

        if (v54 >= *(v53 + 16))
        {
          break;
        }

        (*(v1 + 16))(v6, v53 + ((*(v1 + 80) + 32) & ~*(v1 + 80)) + *(v1 + 72) * v54++, v56);
        v57 = sub_1054D0();
        (*(v1 + 8))(v6, v56);
        if (v57)
        {

          if (qword_136C50 != -1)
          {
            swift_once();
          }

          v58 = sub_106D20();
          sub_135C4(v58, qword_137440);
          v59 = sub_106D10();
          v60 = sub_106FC0();
          if (os_log_type_enabled(v59, v60))
          {
            v61 = swift_slowAlloc();
            *v61 = 0;
            v62 = "validateCancellation: USO parse userDialogActs contains hasRejected; returning .cancel()";
LABEL_44:
            _os_log_impl(&dword_0, v59, v60, v62, v61, 2u);
          }

LABEL_45:

          v40 = v79;
          sub_104E40();
          (*(v51 + 8))(v76, v77);
          goto LABEL_11;
        }
      }

      __break(1u);
LABEL_50:
      __break(1u);
    }

    swift_once();
    goto LABEL_18;
  }

  (*(v13 + 96))(v16, v12);
LABEL_5:
  v27 = *(v18 + 32);
  v27(v24, v16, v17);
  v27(v22, v24, v17);
  v28 = type metadata accessor for AlarmNLIntent();
  v29 = *(v28 + 48);
  v30 = *(v28 + 52);
  swift_allocObject();
  v31 = sub_B3800(v22);
  if (qword_136C50 != -1)
  {
    swift_once();
  }

  v32 = sub_106D20();
  sub_135C4(v32, qword_137440);

  v33 = sub_106D10();
  v34 = sub_106FC0();

  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v80 = v31;
    v81 = v36;
    *v35 = 136315138;
    sub_14F4C(&qword_137480, type metadata accessor for AlarmNLIntent);
    v37 = sub_105620();
    v39 = sub_722E8(v37, v38, &v81);

    *(v35 + 4) = v39;
    _os_log_impl(&dword_0, v33, v34, "validateCancellation: %s", v35, 0xCu);
    sub_2738(v36);
  }

  if (sub_B372C() - 1 < 2)
  {
    v40 = v79;
    sub_104E40();

LABEL_11:
    v41 = sub_104E70();
    return (*(*(v41 - 8) + 56))(v40, 0, 1, v41);
  }

  v43 = sub_104E70();
  (*(*(v43 - 8) + 56))(v79, 1, 1, v43);
}

uint64_t sub_A570@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  LODWORD(v234) = a2;
  v231 = a1;
  v215 = sub_105380();
  v207 = *(v215 - 8);
  v4 = *(v207 + 64);
  __chkstk_darwin(v215);
  v214 = &v196 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_25E4(&unk_1383C0, &qword_107DF0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v198 = &v196 - v8;
  v200 = sub_106440();
  v199 = *(v200 - 8);
  v9 = *(v199 + 64);
  v10 = __chkstk_darwin(v200);
  v197 = &v196 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v201 = &v196 - v12;
  v210 = sub_1065A0();
  v209 = *(v210 - 8);
  v13 = *(v209 + 64);
  __chkstk_darwin(v210);
  v208 = &v196 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_25E4(&unk_137460, &unk_108C60);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v221 = &v196 - v17;
  v225 = sub_1050D0();
  v222 = *(v225 - 8);
  v18 = *(v222 + 64);
  v19 = __chkstk_darwin(v225);
  v218 = &v196 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v217 = &v196 - v21;
  v223 = sub_1053C0();
  v22 = *(v223 - 8);
  v23 = *(v22 + 64);
  v24 = __chkstk_darwin(v223);
  v203 = &v196 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __chkstk_darwin(v24);
  v219 = &v196 - v27;
  __chkstk_darwin(v26);
  v29 = &v196 - v28;
  v30 = sub_105520();
  v31 = *(v30 - 8);
  v229 = v30;
  v230 = v31;
  v32 = *(v31 + 64);
  v33 = __chkstk_darwin(v30);
  v216 = &v196 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = __chkstk_darwin(v33);
  v220 = &v196 - v36;
  v37 = __chkstk_darwin(v35);
  v224 = &v196 - v38;
  __chkstk_darwin(v37);
  v226 = &v196 - v39;
  v206 = sub_105460();
  v205 = *(v206 - 8);
  v40 = *(v205 + 64);
  __chkstk_darwin(v206);
  v204 = &v196 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v213 = sub_105410();
  v212 = *(v213 - 8);
  v42 = *(v212 + 64);
  __chkstk_darwin(v213);
  v211 = &v196 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v233 = sub_1053E0();
  v44 = *(v233 - 8);
  v45 = *(v44 + 64);
  v46 = __chkstk_darwin(v233);
  v202 = &v196 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v46);
  v232 = &v196 - v48;
  v49 = sub_105E80();
  v227 = *(v49 - 8);
  v228 = v49;
  v50 = *(v227 + 64);
  v51 = __chkstk_darwin(v49);
  v53 = &v196 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v51);
  v55 = &v196 - v54;
  if (qword_136C50 != -1)
  {
    swift_once();
  }

  v56 = sub_106D20();
  v57 = sub_135C4(v56, qword_137440);
  v58 = sub_106D10();
  v59 = sub_106FC0();
  if (os_log_type_enabled(v58, v59))
  {
    v60 = swift_slowAlloc();
    *v60 = 0;
    _os_log_impl(&dword_0, v58, v59, "AlarmFlowUtils.validateConfirmation(input:isRoomConfirmation:)", v60, 2u);
  }

  if (v234)
  {
    v61 = sub_106D10();
    v62 = sub_106FC0();
    if (os_log_type_enabled(v61, v62))
    {
      v63 = swift_slowAlloc();
      *v63 = 0;
      _os_log_impl(&dword_0, v61, v62, "Searching for room confirmation, which alarms doesn't support", v63, 2u);
    }

    return sub_104E60();
  }

  v65 = v44;
  v66 = a3;
  v68 = v231;
  v67 = v232;
  sub_105360();
  v69 = v233;
  v70 = (*(v65 + 88))(v67, v233);
  if (v70 == enum case for Parse.NLv3IntentOnly(_:))
  {
    (*(v65 + 96))(v67, v69);
LABEL_15:
    v72 = v67;
    v73 = v228;
    v74 = *(v227 + 32);
    v74(v55, v72, v228);
    v74(v53, v55, v73);
    v75 = type metadata accessor for AlarmNLIntent();
    v76 = *(v75 + 48);
    v77 = *(v75 + 52);
    swift_allocObject();
    v78 = sub_B3800(v53);
    v79 = sub_106D10();
    v80 = sub_106FC0();
    if (os_log_type_enabled(v79, v80))
    {
      v81 = swift_slowAlloc();
      v82 = swift_slowAlloc();
      v237[0] = v82;
      *v81 = 136315138;
      v235 = v78;
      sub_14F4C(&qword_137480, type metadata accessor for AlarmNLIntent);
      v83 = sub_105620();
      v85 = sub_722E8(v83, v84, v237);

      *(v81 + 4) = v85;
      _os_log_impl(&dword_0, v79, v80, "validateConfirmation: %s", v81, 0xCu);
      sub_2738(v82);
    }

    v86 = sub_B372C();
    if ((v86 - 1) >= 2)
    {
      if (v86)
      {
        sub_104E60();
      }

      else
      {
        sub_104E50();
      }
    }

    else
    {
      sub_104E40();
    }
  }

  if (v70 == enum case for Parse.NLv3IntentPlusServerConversion(_:))
  {
    (*(v65 + 96))(v67, v233);
    v71 = *&v67[*(sub_25E4(&qword_13B010, &unk_1087A0) + 48)];

    goto LABEL_15;
  }

  v87 = v66;
  if (v70 != enum case for Parse.directInvocation(_:))
  {
    if (v70 != enum case for Parse.NLv4IntentOnly(_:))
    {
      v122 = v233;
      if (v70 == enum case for Parse.uso(_:))
      {
        v234 = v87;
        (*(v65 + 96))(v67, v233);
        (*(v212 + 32))(v211, v67, v213);
        v123 = v204;
        sub_105400();
        v124 = sub_105450();
        result = (*(v205 + 8))(v123, v206);
        v125 = 0;
        v126 = *(v124 + 16);
        v127 = v229;
        v128 = v230;
        do
        {
          if (v126 == v125)
          {
            v146 = 0;
            v147 = v229;
            v148 = v230;
            do
            {
              if (v126 == v146)
              {
                v173 = 0;
                v174 = v229;
                v175 = v230;
                do
                {
                  if (v126 == v173)
                  {
                    v182 = 0;
                    v183 = v229;
                    v184 = v230;
                    do
                    {
                      if (v126 == v182)
                      {

                        sub_104E60();
                        return (*(v212 + 8))(v211, v213);
                      }

                      if (v182 >= *(v124 + 16))
                      {
                        goto LABEL_111;
                      }

                      v185 = v216;
                      (*(v184 + 16))(v216, v124 + ((*(v184 + 80) + 32) & ~*(v184 + 80)) + *(v184 + 72) * v182++, v183);
                      v186 = sub_1054E0();
                      result = (*(v184 + 8))(v185, v183);
                    }

                    while ((v186 & 1) == 0);

                    v178 = sub_106D10();
                    v179 = sub_106FC0();
                    if (!os_log_type_enabled(v178, v179))
                    {
                      goto LABEL_88;
                    }

                    v180 = swift_slowAlloc();
                    *v180 = 0;
                    v181 = "validateConfirmation: USO parse userDialogActs contains hasCancelled; returning .cancel()";
                    goto LABEL_87;
                  }

                  if (v173 >= *(v124 + 16))
                  {
                    goto LABEL_110;
                  }

                  v176 = v220;
                  (*(v175 + 16))(v220, v124 + ((*(v175 + 80) + 32) & ~*(v175 + 80)) + *(v175 + 72) * v173++, v174);
                  v177 = sub_1054D0();
                  result = (*(v175 + 8))(v176, v174);
                }

                while ((v177 & 1) == 0);

                v178 = sub_106D10();
                v179 = sub_106FC0();
                if (!os_log_type_enabled(v178, v179))
                {
                  goto LABEL_88;
                }

                v180 = swift_slowAlloc();
                *v180 = 0;
                v181 = "validateConfirmation: USO parse userDialogActs contains hasRejected; returning .cancel()";
LABEL_87:
                _os_log_impl(&dword_0, v178, v179, v181, v180, 2u);

LABEL_88:

                sub_104E40();
                return (*(v212 + 8))(v211, v213);
              }

              if (v146 >= *(v124 + 16))
              {
                goto LABEL_109;
              }

              v149 = v224;
              (*(v148 + 16))(v224, v124 + ((*(v148 + 80) + 32) & ~*(v148 + 80)) + *(v148 + 72) * v146++, v147);
              v150 = sub_1054F0();
              result = (*(v148 + 8))(v149, v147);
            }

            while ((v150 & 1) == 0);

            v131 = sub_106D10();
            v132 = sub_106FC0();
            if (!os_log_type_enabled(v131, v132))
            {
              goto LABEL_59;
            }

            v133 = swift_slowAlloc();
            *v133 = 0;
            v134 = "validateConfirmation: USO parse userDialogActs contains hasWantedToProceed; returning .handle()";
            goto LABEL_58;
          }

          if (v125 >= *(v124 + 16))
          {
            __break(1u);
LABEL_109:
            __break(1u);
LABEL_110:
            __break(1u);
LABEL_111:
            __break(1u);
            return result;
          }

          v129 = v226;
          (*(v128 + 16))(v226, v124 + ((*(v128 + 80) + 32) & ~*(v128 + 80)) + *(v128 + 72) * v125++, v127);
          v130 = sub_1054C0();
          result = (*(v128 + 8))(v129, v127);
        }

        while ((v130 & 1) == 0);

        v131 = sub_106D10();
        v132 = sub_106FC0();
        if (!os_log_type_enabled(v131, v132))
        {
          goto LABEL_59;
        }

        v133 = swift_slowAlloc();
        *v133 = 0;
        v134 = "validateConfirmation: USO parse userDialogActs contains hasAccepted; returning .handle()";
LABEL_58:
        _os_log_impl(&dword_0, v131, v132, v134, v133, 2u);

LABEL_59:

        sub_104E50();
        return (*(v212 + 8))(v211, v213);
      }

      else
      {
        v135 = v207;
        (*(v207 + 16))(v214, v68, v215);
        v136 = sub_106D10();
        v137 = sub_106FB0();
        if (os_log_type_enabled(v136, v137))
        {
          v138 = swift_slowAlloc();
          v139 = v214;
          v234 = v87;
          v140 = v138;
          v141 = swift_slowAlloc();
          v237[0] = v141;
          *v140 = 136315138;
          sub_105360();
          v142 = sub_106E30();
          v144 = v143;
          (*(v135 + 8))(v139, v215);
          v145 = sub_722E8(v142, v144, v237);
          v122 = v233;

          *(v140 + 4) = v145;
          _os_log_impl(&dword_0, v136, v137, "validateConfirmation: Received unsupported parse for confirmation: %s", v140, 0xCu);
          sub_2738(v141);
        }

        else
        {

          (*(v135 + 8))(v214, v215);
        }

        sub_104E60();
        return (*(v65 + 8))(v232, v122);
      }
    }

    (*(v65 + 96))(v67, v233);
    v110 = *v67;
    objc_opt_self();
    if (swift_dynamicCastObjCClass() || (objc_opt_self(), swift_dynamicCastObjCClass()))
    {
      swift_unknownObjectRetain();
      v111 = sub_106D10();
      v112 = sub_106FC0();
      swift_unknownObjectRelease();
      if (os_log_type_enabled(v111, v112))
      {
        v113 = swift_slowAlloc();
        v114 = swift_slowAlloc();
        v237[0] = v114;
        *v113 = 136315138;
        v235 = v110;
        swift_unknownObjectRetain();
        sub_25E4(&unk_137470, &unk_10BC40);
        v115 = sub_106E30();
        v117 = sub_722E8(v115, v116, v237);

        *(v113 + 4) = v117;
        _os_log_impl(&dword_0, v111, v112, "validateConfirmation: Received UserDialogAct - %s", v113, 0xCu);
        sub_2738(v114);
      }

      sub_104E50();
      return swift_unknownObjectRelease();
    }

    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      v169 = sub_106D10();
      v170 = sub_106FC0();
      if (os_log_type_enabled(v169, v170))
      {
        v171 = swift_slowAlloc();
        *v171 = 0;
        v172 = "validateConfirmation: Received UserDialogAct - UserRejected";
LABEL_92:
        _os_log_impl(&dword_0, v169, v170, v172, v171, 2u);
      }
    }

    else
    {
      objc_opt_self();
      if (!swift_dynamicCastObjCClass())
      {
        sub_104E60();
        return swift_unknownObjectRelease();
      }

      v169 = sub_106D10();
      v170 = sub_106FC0();
      if (os_log_type_enabled(v169, v170))
      {
        v171 = swift_slowAlloc();
        *v171 = 0;
        v172 = "validateConfirmation: Received UserDialogAct - UserCancelled";
        goto LABEL_92;
      }
    }

    sub_104E40();
    return swift_unknownObjectRelease();
  }

  v231 = v57;
  (*(v65 + 96))(v67, v233);
  v88 = v22;
  v89 = *(v22 + 32);
  v90 = v223;
  v89(v29, v67, v223);
  v91 = v221;
  sub_106580();
  v92 = v222;
  if ((*(v222 + 48))(v91, 1, v225) == 1)
  {
    sub_16F70(v91, &unk_137460, &unk_108C60);
    v93 = sub_1053B0();
    if (v93)
    {
      v94 = v93;
      v234 = v88;
      v95 = v209;
      v96 = v208;
      v97 = v210;
      (*(v209 + 104))(v208, enum case for DirectInvocationUtils.Alarm.UserInfoKey.buttonPressed(_:), v210);
      v98 = sub_106590();
      v100 = v99;
      (*(v95 + 8))(v96, v97);
      if (*(v94 + 16))
      {
        v233 = v29;
        v101 = sub_32658(v98, v100);
        v103 = v102;

        if (v103)
        {
          sub_135FC(*(v94 + 56) + 32 * v101, v237);

          v104 = swift_dynamicCast();
          v29 = v233;
          if (v104)
          {
            v106 = v235;
            v105 = v236;

            v107 = v198;
            sub_106420();
            v108 = v199;
            v109 = v200;
            if ((*(v199 + 48))(v107, 1, v200) != 1)
            {
              (*(v108 + 32))(v201, v107, v109);

              v187 = sub_106D10();
              v188 = sub_106FC0();

              if (os_log_type_enabled(v187, v188))
              {
                v189 = swift_slowAlloc();
                v190 = swift_slowAlloc();
                v237[0] = v190;
                *v189 = 136315138;
                v191 = sub_722E8(v106, v105, v237);

                *(v189 + 4) = v191;
                _os_log_impl(&dword_0, v187, v188, "validateConfirmation: Received confirmation directInvocation, buttonPressed: %s", v189, 0xCu);
                sub_2738(v190);
                v108 = v199;

                v109 = v200;
              }

              else
              {
              }

              v192 = v197;
              (*(v108 + 104))(v197, enum case for ButtonOption.yes(_:), v109);
              sub_14F4C(&qword_138410, &type metadata accessor for ButtonOption);
              sub_106EB0();
              sub_106EB0();
              if (v237[0] == v235 && v237[1] == v236)
              {
                v193 = 1;
              }

              else
              {
                v193 = sub_107370();
              }

              v194 = *(v108 + 8);
              v194(v192, v109);

              v195 = (v234 + 8);
              if (v193)
              {
                sub_104E50();
              }

              else
              {
                sub_104E40();
              }

              v194(v201, v109);
              return (*v195)(v233, v90);
            }

            sub_16F70(v107, &unk_1383C0, &qword_107DF0);
          }
        }

        else
        {

          v29 = v233;
        }
      }

      else
      {
      }

      v88 = v234;
    }

    v234 = v87;
    v156 = *(v88 + 16);
    v156(v219, v29, v90);
    v157 = sub_106D10();
    v158 = sub_106FC0();
    if (os_log_type_enabled(v157, v158))
    {
      v159 = swift_slowAlloc();
      v160 = swift_slowAlloc();
      v233 = v29;
      v161 = v160;
      v237[0] = v160;
      *v159 = 136315138;
      v162 = v219;
      v156(v203, v219, v90);
      v163 = sub_106E30();
      v165 = v164;
      v166 = v162;
      v167 = *(v88 + 8);
      v167(v166, v90);
      v168 = sub_722E8(v163, v165, v237);

      *(v159 + 4) = v168;
      _os_log_impl(&dword_0, v157, v158, "validateConfirmation: Request was not cancelled by user. Proceed with directInvocation %s", v159, 0xCu);
      sub_2738(v161);
      v29 = v233;
    }

    else
    {

      v167 = *(v88 + 8);
      v167(v219, v90);
    }

    sub_104E50();
    return (v167)(v29, v90);
  }

  v118 = v217;
  v119 = v225;
  (*(v92 + 32))(v217, v91, v225);
  v120 = v218;
  (*(v92 + 16))(v218, v118, v119);
  v121 = (*(v92 + 88))(v120, v119);
  if (v121 == enum case for ConfirmationResponse.confirmed(_:))
  {
    sub_104E50();
LABEL_49:
    (*(v92 + 8))(v118, v225);
    return (*(v88 + 8))(v29, v90);
  }

  if (v121 == enum case for ConfirmationResponse.rejected(_:))
  {
    sub_104E40();
    goto LABEL_49;
  }

  v151 = sub_106D10();
  v152 = sub_106FB0();
  if (os_log_type_enabled(v151, v152))
  {
    v153 = swift_slowAlloc();
    *v153 = 0;
    _os_log_impl(&dword_0, v151, v152, "validateConfirmation: Received an unknown, unhandled SiriKit confirmation, returning .ignore() for interaction", v153, 2u);
    v118 = v217;
  }

  sub_104E60();
  v154 = *(v92 + 8);
  v155 = v225;
  v154(v118, v225);
  (*(v88 + 8))(v29, v90);
  return (v154)(v218, v155);
}

void sub_C140(uint64_t a1@<X0>, uint64_t a2@<X2>, int a3@<W3>, uint64_t a4@<X4>, void *a5@<X5>, uint64_t a6@<X8>)
{
  v593 = a4;
  v524 = a3;
  v556 = a2;
  v592 = a1;
  v589 = a6;
  v7 = sub_25E4(&unk_1383C0, &qword_107DF0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v527 = &v495 - v9;
  v534 = sub_106440();
  v10 = *(v534 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v534);
  v523 = &v495 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v495 - v14;
  v538 = sub_1065A0();
  v537 = *(v538 - 8);
  v16 = *(v537 + 64);
  __chkstk_darwin(v538);
  v536 = &v495 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_25E4(&unk_137460, &unk_108C60);
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  v548 = &v495 - v20;
  v550 = sub_1050D0();
  v549 = *(v550 - 8);
  v21 = *(v549 + 64);
  v22 = __chkstk_darwin(v550);
  v543 = &v495 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v542 = &v495 - v24;
  v552 = sub_1053C0();
  v553 = *(v552 - 8);
  v25 = *(v553 + 64);
  __chkstk_darwin(v552);
  v551 = &v495 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v561 = sub_105520();
  v564 = *(v561 - 8);
  v27 = *(v564 + 64);
  v28 = __chkstk_darwin(v561);
  v530 = &v495 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v560 = &v495 - v30;
  v539 = sub_105460();
  v544 = *(v539 - 8);
  v31 = *(v544 + 64);
  v32 = __chkstk_darwin(v539);
  v509 = &v495 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __chkstk_darwin(v32);
  v529 = &v495 - v35;
  __chkstk_darwin(v34);
  v535 = &v495 - v36;
  v37 = sub_105410();
  v541 = *(v37 - 8);
  v38 = *(v541 + 64);
  v39 = __chkstk_darwin(v37);
  v506 = &v495 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = __chkstk_darwin(v39);
  v503 = &v495 - v42;
  v43 = __chkstk_darwin(v41);
  v501 = &v495 - v44;
  __chkstk_darwin(v43);
  v545 = &v495 - v45;
  v532 = sub_105380();
  v531 = *(v532 - 8);
  v46 = *(v531 + 64);
  v47 = __chkstk_darwin(v532);
  v528 = &v495 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = __chkstk_darwin(v47);
  v507 = &v495 - v50;
  __chkstk_darwin(v49);
  v504 = &v495 - v51;
  v518 = sub_106960();
  v520 = *(v518 - 8);
  v52 = *(v520 + 64);
  __chkstk_darwin(v518);
  v502 = &v495 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  v517 = sub_25E4(&qword_137498, &unk_108C50);
  v54 = *(*(v517 - 8) + 64);
  v55 = __chkstk_darwin(v517);
  v511 = &v495 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v55);
  v505 = &v495 - v57;
  v58 = sub_25E4(&unk_1374A0, &qword_10BB30);
  v59 = *(*(v58 - 8) + 64);
  v60 = __chkstk_darwin(v58 - 8);
  v510 = &v495 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = __chkstk_darwin(v60);
  v516 = &v495 - v63;
  v64 = __chkstk_darwin(v62);
  v508 = &v495 - v65;
  v66 = __chkstk_darwin(v64);
  v500 = &v495 - v67;
  v68 = __chkstk_darwin(v66);
  v514 = &v495 - v69;
  __chkstk_darwin(v68);
  v515 = &v495 - v70;
  v569 = sub_1053E0();
  v567 = *(v569 - 8);
  v71 = *(v567 + 64);
  v72 = __chkstk_darwin(v569);
  v557 = &v495 - ((v73 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v72);
  v568 = &v495 - v74;
  v573 = sub_105E80();
  v572 = *(v573 - 8);
  v75 = *(v572 + 64);
  v76 = __chkstk_darwin(v573);
  v565 = &v495 - ((v77 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v76);
  v571 = &v495 - v78;
  v578 = sub_104E70();
  v582 = *(v578 - 8);
  v79 = *(v582 + 64);
  __chkstk_darwin(v578);
  v559 = &v495 - ((v80 + 15) & 0xFFFFFFFFFFFFFFF0);
  v576 = sub_25E4(&unk_1383D0, &qword_107DF8);
  v81 = *(*(v576 - 8) + 64);
  __chkstk_darwin(v576);
  v586 = &v495 - v82;
  v83 = sub_25E4(&unk_1374B0, &unk_108C70);
  v84 = *(*(v83 - 8) + 64);
  v85 = __chkstk_darwin(v83 - 8);
  v566 = &v495 - ((v86 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = __chkstk_darwin(v85);
  v581 = &v495 - v88;
  __chkstk_darwin(v87);
  v577 = &v495 - v89;
  v594 = sub_106450();
  v590 = *(v594 - 8);
  v90 = *(v590 + 64);
  v91 = __chkstk_darwin(v594);
  v521 = &v495 - ((v92 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = __chkstk_darwin(v91);
  v522 = &v495 - v94;
  v95 = __chkstk_darwin(v93);
  v512 = &v495 - v96;
  v97 = __chkstk_darwin(v95);
  v513 = &v495 - v98;
  v99 = __chkstk_darwin(v97);
  v546 = &v495 - v100;
  v101 = __chkstk_darwin(v99);
  v547 = &v495 - v102;
  __chkstk_darwin(v101);
  v583 = &v495 - v103;
  v591 = sub_25E4(&unk_1383E0, &qword_107E00);
  v104 = *(*(v591 - 8) + 64);
  v105 = __chkstk_darwin(v591);
  v563 = &v495 - ((v106 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = __chkstk_darwin(v105);
  v584 = &v495 - v108;
  v109 = __chkstk_darwin(v107);
  v585 = &v495 - v110;
  __chkstk_darwin(v109);
  v112 = &v495 - v111;
  v113 = sub_25E4(&unk_1374C0, &unk_1087B0);
  v114 = *(*(v113 - 8) + 64);
  v115 = __chkstk_darwin(v113 - 8);
  v525 = &v495 - ((v116 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = __chkstk_darwin(v115);
  v519 = &v495 - v118;
  v119 = __chkstk_darwin(v117);
  v555 = &v495 - v120;
  v121 = __chkstk_darwin(v119);
  v558 = &v495 - v122;
  v123 = __chkstk_darwin(v121);
  v562 = &v495 - v124;
  v125 = __chkstk_darwin(v123);
  v570 = &v495 - v126;
  v127 = __chkstk_darwin(v125);
  v587 = &v495 - v128;
  v129 = __chkstk_darwin(v127);
  v131 = &v495 - v130;
  v132 = __chkstk_darwin(v129);
  v588 = &v495 - v133;
  v134 = __chkstk_darwin(v132);
  v580 = &v495 - v135;
  __chkstk_darwin(v134);
  v137 = &v495 - v136;
  if (qword_136C50 != -1)
  {
    swift_once();
  }

  v138 = sub_106D20();
  v139 = sub_135C4(v138, qword_137440);
  v140 = sub_106D10();
  v141 = sub_106FA0();
  v142 = os_log_type_enabled(v140, v141);
  v533 = v10;
  v554 = a5;
  v579 = v139;
  v540 = v37;
  v526 = v15;
  if (v142)
  {
    v143 = swift_slowAlloc();
    v144 = swift_slowAlloc();
    *&v597 = v144;
    *v143 = 136315138;
    v595 = a5;
    swift_getMetatypeMetadata();
    v145 = sub_106E30();
    v147 = sub_722E8(v145, v146, &v597);

    *(v143 + 4) = v147;
    _os_log_impl(&dword_0, v140, v141, "AlarmFlowUtils.decideActionForInput with intent type: %s", v143, 0xCu);
    sub_2738(v144);
    v148 = v592;
  }

  else
  {

    v148 = v592;
  }

  v149 = sub_13AA4(v148);
  v150 = v594;
  if ((v149 & 1) == 0)
  {
    goto LABEL_60;
  }

  v497 = v131;
  v151 = v590;
  v153 = v590 + 104;
  v152 = *(v590 + 104);
  v496 = enum case for DecideAction.PromptExpectation.confirmation(_:);
  v574 = v152;
  v152(v137);
  v154 = v151 + 56;
  v575 = *(v151 + 56);
  v575(v137, 0, 1, v150);
  v155 = *(v591 + 48);
  sub_14994(v593, v112, &unk_1374C0, &unk_1087B0);
  v156 = v112;
  sub_14994(v137, &v112[v155], &unk_1374C0, &unk_1087B0);
  v158 = v151 + 48;
  v157 = *(v151 + 48);
  if (v157(v156, 1, v150) == 1)
  {
    sub_16F70(v137, &unk_1374C0, &unk_1087B0);
    v159 = v157(v156 + v155, 1, v150);
    v160 = v588;
    if (v159 == 1)
    {
      goto LABEL_15;
    }

    goto LABEL_12;
  }

  v161 = v580;
  sub_14994(v156, v580, &unk_1374C0, &unk_1087B0);
  if (v157(v156 + v155, 1, v150) == 1)
  {
    sub_16F70(v137, &unk_1374C0, &unk_1087B0);
    (*(v590 + 8))(v161, v150);
    v160 = v588;
LABEL_12:
    sub_16F70(v156, &unk_1383E0, &qword_107E00);
    goto LABEL_13;
  }

  v498 = v157;
  v175 = v148;
  v499 = v154;
  v176 = v590;
  v177 = v156 + v155;
  v178 = v583;
  (*(v590 + 32))(v583, v177, v150);
  sub_14F4C(&qword_1374E0, &type metadata accessor for DecideAction.PromptExpectation);
  v495 = sub_106E00();
  v179 = *(v176 + 8);
  v179(v178, v594);
  sub_16F70(v137, &unk_1374C0, &unk_1087B0);
  v179(v161, v594);
  v150 = v594;
  v154 = v499;
  v148 = v175;
  v157 = v498;
  sub_16F70(v156, &unk_1374C0, &unk_1087B0);
  v160 = v588;
  if (v495)
  {
    goto LABEL_30;
  }

LABEL_13:
  v162 = enum case for DecideAction.PromptExpectation.roomConfirmation(_:);
  v580 = v153;
  v574(v160, enum case for DecideAction.PromptExpectation.roomConfirmation(_:), v150);
  v499 = v154;
  v575(v160, 0, 1, v150);
  v163 = *(v591 + 48);
  v156 = v585;
  sub_14994(v593, v585, &unk_1374C0, &unk_1087B0);
  sub_14994(v160, v156 + v163, &unk_1374C0, &unk_1087B0);
  if (v157(v156, 1, v150) == 1)
  {
    sub_16F70(v160, &unk_1374C0, &unk_1087B0);
    if (v157(v156 + v163, 1, v150) == 1)
    {
LABEL_15:
      sub_16F70(v156, &unk_1374C0, &unk_1087B0);
      goto LABEL_30;
    }

    goto LABEL_18;
  }

  v164 = v497;
  sub_14994(v156, v497, &unk_1374C0, &unk_1087B0);
  if (v157(v156 + v163, 1, v150) == 1)
  {
    sub_16F70(v588, &unk_1374C0, &unk_1087B0);
    (*(v590 + 8))(v164, v150);
LABEL_18:
    v495 = v162;
    sub_16F70(v156, &unk_1383E0, &qword_107E00);
    goto LABEL_19;
  }

  v495 = v162;
  v498 = v157;
  v186 = v590;
  v187 = v156 + v163;
  v188 = v583;
  (*(v590 + 32))(v583, v187, v150);
  sub_14F4C(&qword_1374E0, &type metadata accessor for DecideAction.PromptExpectation);
  v189 = sub_106E00();
  v190 = *(v186 + 8);
  v190(v188, v594);
  sub_16F70(v588, &unk_1374C0, &unk_1087B0);
  v190(v164, v594);
  v157 = v498;
  v150 = v594;
  sub_16F70(v156, &unk_1374C0, &unk_1087B0);
  if (v189)
  {
LABEL_30:
    v191 = v587;
    v574(v587, enum case for DecideAction.PromptExpectation.roomConfirmation(_:), v150);
    v575(v191, 0, 1, v150);
    v192 = *(v591 + 48);
    v193 = v584;
    sub_14994(v593, v584, &unk_1374C0, &unk_1087B0);
    sub_14994(v191, v193 + v192, &unk_1374C0, &unk_1087B0);
    if (v157(v193, 1, v150) == 1)
    {
      sub_16F70(v191, &unk_1374C0, &unk_1087B0);
      if (v157(v193 + v192, 1, v150) == 1)
      {
        sub_16F70(v193, &unk_1374C0, &unk_1087B0);
        v194 = 1;
LABEL_37:
        sub_A570(v148, v194 & 1, v589);
        return;
      }
    }

    else
    {
      v195 = v570;
      sub_14994(v193, v570, &unk_1374C0, &unk_1087B0);
      if (v157(v193 + v192, 1, v150) != 1)
      {
        v196 = v590;
        v197 = v193 + v192;
        v198 = v583;
        (*(v590 + 32))(v583, v197, v150);
        sub_14F4C(&qword_1374E0, &type metadata accessor for DecideAction.PromptExpectation);
        v194 = sub_106E00();
        v199 = *(v196 + 8);
        v199(v198, v150);
        sub_16F70(v587, &unk_1374C0, &unk_1087B0);
        v199(v195, v150);
        sub_16F70(v193, &unk_1374C0, &unk_1087B0);
        goto LABEL_37;
      }

      sub_16F70(v587, &unk_1374C0, &unk_1087B0);
      (*(v590 + 8))(v195, v150);
    }

    sub_16F70(v193, &unk_1383E0, &qword_107E00);
    v194 = 0;
    goto LABEL_37;
  }

LABEL_19:
  v588 = v158;
  v498 = v157;
  v165 = v577;
  sub_99E8(v577);
  v166 = v581;
  sub_104E40();
  v167 = v582;
  v168 = v578;
  (*(v582 + 56))(v166, 0, 1, v578);
  v169 = *(v576 + 48);
  v170 = v586;
  sub_14994(v165, v586, &unk_1374B0, &unk_108C70);
  sub_14994(v166, v170 + v169, &unk_1374B0, &unk_108C70);
  v171 = *(v167 + 48);
  if (v171(v170, 1, v168) == 1)
  {
    sub_16F70(v166, &unk_1374B0, &unk_108C70);
    v172 = v586;
    sub_16F70(v165, &unk_1374B0, &unk_108C70);
    v173 = v171(v172 + v169, 1, v168);
    v174 = v593;
    if (v173 == 1)
    {
      sub_16F70(v172, &unk_1374B0, &unk_108C70);
      goto LABEL_47;
    }
  }

  else
  {
    v180 = v566;
    sub_14994(v170, v566, &unk_1374B0, &unk_108C70);
    if (v171(v170 + v169, 1, v168) != 1)
    {
      v222 = v582;
      v223 = v170 + v169;
      v224 = v559;
      (*(v582 + 32))(v559, v223, v168);
      sub_14F4C(&qword_1374E8, &type metadata accessor for ActionForInput);
      v225 = sub_106E00();
      v226 = *(v222 + 8);
      v226(v224, v168);
      sub_16F70(v581, &unk_1374B0, &unk_108C70);
      sub_16F70(v165, &unk_1374B0, &unk_108C70);
      v226(v180, v168);
      v150 = v594;
      sub_16F70(v170, &unk_1374B0, &unk_108C70);
      v181 = v592;
      v174 = v593;
      v182 = v568;
      if (v225)
      {
LABEL_47:
        v227 = v562;
        v574(v562, enum case for DecideAction.PromptExpectation.slot(_:), v150);
        v575(v227, 0, 1, v150);
        v228 = *(v591 + 48);
        v229 = v563;
        sub_14994(v174, v563, &unk_1374C0, &unk_1087B0);
        sub_14994(v227, v229 + v228, &unk_1374C0, &unk_1087B0);
        v230 = v498;
        if (v498(v229, 1, v150) == 1)
        {
          sub_16F70(v227, &unk_1374C0, &unk_1087B0);
          if (v230(v229 + v228, 1, v150) == 1)
          {
            sub_16F70(v229, &unk_1374C0, &unk_1087B0);
LABEL_75:
            v272 = sub_106D10();
            v273 = sub_106FC0();
            if (os_log_type_enabled(v272, v273))
            {
              v274 = swift_slowAlloc();
              *v274 = 0;
              _os_log_impl(&dword_0, v272, v273, "Received cancel input slow prompt input – .cancel()", v274, 2u);
            }

            sub_104E40();
            return;
          }
        }

        else
        {
          v235 = v558;
          sub_14994(v229, v558, &unk_1374C0, &unk_1087B0);
          if (v230(v229 + v228, 1, v150) != 1)
          {
            v267 = v590;
            v268 = v229 + v228;
            v269 = v583;
            (*(v590 + 32))(v583, v268, v150);
            sub_14F4C(&qword_1374E0, &type metadata accessor for DecideAction.PromptExpectation);
            v270 = sub_106E00();
            v271 = *(v267 + 8);
            v271(v269, v150);
            sub_16F70(v227, &unk_1374C0, &unk_1087B0);
            v271(v235, v150);
            sub_16F70(v229, &unk_1374C0, &unk_1087B0);
            if (v270)
            {
              goto LABEL_75;
            }

            goto LABEL_57;
          }

          sub_16F70(v227, &unk_1374C0, &unk_1087B0);
          (*(v590 + 8))(v235, v150);
        }

        sub_16F70(v229, &unk_1383E0, &qword_107E00);
LABEL_57:
        v236 = sub_106D10();
        v237 = sub_106FC0();
        if (os_log_type_enabled(v236, v237))
        {
          v238 = swift_slowAlloc();
          *v238 = 0;
          _os_log_impl(&dword_0, v236, v237, "Received cancel input on non-confirmation, non-slot prompt input – .ignore()", v238, 2u);
        }

LABEL_60:
        sub_104E60();
        return;
      }

      goto LABEL_27;
    }

    sub_16F70(v581, &unk_1374B0, &unk_108C70);
    v172 = v586;
    sub_16F70(v165, &unk_1374B0, &unk_108C70);
    (*(v582 + 8))(v180, v168);
    v174 = v593;
  }

  sub_16F70(v172, &unk_1383D0, &qword_107DF8);
  v181 = v592;
  v182 = v568;
LABEL_27:
  sub_105360();
  v183 = v567;
  v184 = v569;
  v185 = (*(v567 + 88))(v182, v569);
  if (v185 == enum case for Parse.NLv3IntentOnly(_:))
  {
    (*(v183 + 96))(v182, v184);
    goto LABEL_40;
  }

  if (v185 == enum case for Parse.NLv3IntentPlusServerConversion(_:))
  {
    (*(v183 + 96))(v182, v184);
    v200 = *(v182 + *(sub_25E4(&qword_13B010, &unk_1087A0) + 48));

LABEL_40:
    v201 = v572;
    v202 = v571;
    v203 = v573;
    (*(v572 + 32))(v571, v182, v573);
    v204 = v565;
    (*(v201 + 16))(v565, v202, v203);
    v205 = type metadata accessor for AlarmNLIntent();
    v206 = *(v205 + 48);
    v207 = *(v205 + 52);
    swift_allocObject();
    v208 = sub_B3800(v204);

    v209 = sub_106D10();
    v210 = sub_106FC0();

    if (os_log_type_enabled(v209, v210))
    {
      v211 = swift_slowAlloc();
      v212 = swift_slowAlloc();
      *&v597 = v212;
      *v211 = 136315138;
      v595 = v208;
      sub_14F4C(&qword_137480, type metadata accessor for AlarmNLIntent);
      v213 = sub_105620();
      v215 = sub_722E8(v213, v214, &v597);

      *(v211 + 4) = v215;
      _os_log_impl(&dword_0, v209, v210, "alarmNLIntent: %s", v211, 0xCu);
      sub_2738(v212);
    }

    v216 = v593;
    v217 = v498;
    v218 = sub_B372C();
    v150 = v594;
    if ((v218 - 1) < 2)
    {
      (*(v572 + 8))(v571, v573);
      v219 = sub_106D10();
      v220 = sub_106FC0();
      if (os_log_type_enabled(v219, v220))
      {
        v221 = swift_slowAlloc();
        *v221 = 0;
        _os_log_impl(&dword_0, v219, v220, "User cancel the alarm request.", v221, 2u);
      }

      sub_104E40();
      goto LABEL_89;
    }

    if (v218)
    {
      (*(v572 + 8))(v571, v573);
      v261 = v557;
      sub_105360();
      v262 = sub_579C(v261, v556);
      (*(v567 + 8))(v261, v569);
      if (v262)
      {
        v263 = swift_dynamicCastUnknownClass();

        if (v263)
        {
          v264 = sub_106D10();
          v265 = sub_106FC0();
          if (os_log_type_enabled(v264, v265))
          {
            v266 = swift_slowAlloc();
            *v266 = 0;
            _os_log_impl(&dword_0, v264, v265, "Request was not cancelled by user. Proceed.", v266, 2u);
          }

          sub_104E50();
          goto LABEL_89;
        }
      }

      v232 = sub_106D10();
      v279 = sub_106FB0();
      if (!os_log_type_enabled(v232, v279))
      {
        goto LABEL_88;
      }

      v280 = swift_slowAlloc();
      v281 = swift_slowAlloc();
      *&v597 = v281;
      *v280 = 136315138;
      v282 = sub_107480();
      v284 = sub_722E8(v282, v283, &v597);

      *(v280 + 4) = v284;
      _os_log_impl(&dword_0, v232, v279, "Flows stack receives unexpected intent type. Expecting: %s", v280, 0xCu);
      sub_2738(v281);

      goto LABEL_87;
    }

    v231 = v555;
    sub_14994(v216, v555, &unk_1374C0, &unk_1087B0);
    if (v217(v231, 1, v150) == 1)
    {
      (*(v572 + 8))(v571, v573);
      sub_16F70(v231, &unk_1374C0, &unk_1087B0);
      v232 = sub_106D10();
      v233 = sub_106FC0();
      if (!os_log_type_enabled(v232, v233))
      {
LABEL_88:

        sub_104E60();
LABEL_89:

        return;
      }

      v234 = swift_slowAlloc();
      *v234 = 0;
      _os_log_impl(&dword_0, v232, v233, "User returned accepted for non-prompt input. Ignoring.", v234, 2u);
LABEL_87:

      goto LABEL_88;
    }

    v285 = v590;
    v286 = v547;
    (*(v590 + 32))(v547, v231, v150);
    v287 = v546;
    (*(v285 + 16))(v546, v286, v150);
    v288 = (*(v285 + 88))(v287, v150);
    if (v288 != v496)
    {
      if (v288 == enum case for DecideAction.PromptExpectation.slot(_:))
      {
        (*(v572 + 8))(v571, v573);
        v289 = sub_106D10();
        v290 = sub_106FC0();
        if (os_log_type_enabled(v289, v290))
        {
          v291 = swift_slowAlloc();
          *v291 = 0;
          _os_log_impl(&dword_0, v289, v290, "User returned accepted for non-binary input. Ignoring.", v291, 2u);
          v150 = v594;
        }

        sub_104E60();
LABEL_117:

        goto LABEL_118;
      }

      if (v288 != v495)
      {
LABEL_221:
        sub_107360();
        __break(1u);
        goto LABEL_222;
      }
    }

    (*(v572 + 8))(v571, v573);
    v325 = sub_106D10();
    v326 = sub_106FC0();
    if (os_log_type_enabled(v325, v326))
    {
      v327 = swift_slowAlloc();
      *v327 = 0;
      _os_log_impl(&dword_0, v325, v326, "User accepted the task, will handle.", v327, 2u);
      v150 = v594;
    }

    sub_104E50();
    goto LABEL_117;
  }

  if (v185 == enum case for Parse.directInvocation(_:))
  {
    (*(v183 + 96))(v182, v184);
    v239 = v553;
    v240 = v551;
    v241 = v552;
    (*(v553 + 32))(v551, v182, v552);
    v242 = v548;
    sub_106580();
    v243 = v549;
    v244 = v550;
    if ((*(v549 + 48))(v242, 1, v550) == 1)
    {
      sub_16F70(v242, &unk_137460, &unk_108C60);
      goto LABEL_64;
    }

    v292 = v542;
    (*(v243 + 32))(v542, v242, v244);
    v293 = v543;
    (*(v243 + 16))(v543, v292, v244);
    v294 = (*(v243 + 88))(v293, v244);
    if (v294 == enum case for ConfirmationResponse.confirmed(_:))
    {
      sub_104E50();
    }

    else
    {
      if (v294 != enum case for ConfirmationResponse.rejected(_:))
      {
        v339 = *(v243 + 8);
        v339(v292, v244);
        v339(v543, v244);
LABEL_64:
        v245 = sub_1053B0();
        if (v245)
        {
          v246 = v245;
          v247 = v537;
          v248 = v536;
          v249 = v538;
          (*(v537 + 104))(v536, enum case for DirectInvocationUtils.Alarm.UserInfoKey.buttonPressed(_:), v538);
          v250 = sub_106590();
          v252 = v251;
          (*(v247 + 8))(v248, v249);
          sub_2B430(v250, v252, v246, &v597);

          if (!v598)
          {
            v258 = &qword_137490;
            v259 = qword_108C80;
            v260 = &v597;
LABEL_120:
            sub_16F70(v260, v258, v259);
            goto LABEL_121;
          }

          if (swift_dynamicCast())
          {
            v254 = v595;
            v253 = v596;

            v255 = v527;
            sub_106420();
            v256 = v533;
            v257 = v534;
            if ((*(v533 + 48))(v255, 1, v534) != 1)
            {
              (*(v256 + 32))(v526, v255, v257);

              v356 = sub_106D10();
              v357 = sub_106FC0();

              if (os_log_type_enabled(v356, v357))
              {
                v358 = swift_slowAlloc();
                v359 = swift_slowAlloc();
                *&v597 = v359;
                *v358 = 136315138;
                v360 = sub_722E8(v254, v253, &v597);

                *(v358 + 4) = v360;
                _os_log_impl(&dword_0, v356, v357, "Received confirmation directInvocation, buttonPressed: %s", v358, 0xCu);
                sub_2738(v359);
              }

              else
              {
              }

              v380 = v533;
              v381 = v523;
              v382 = v534;
              (*(v533 + 104))(v523, enum case for ButtonOption.yes(_:), v534);
              v383 = v526;
              v384 = sub_34350();
              v385 = *(v380 + 8);
              v385(v381, v382);
              v386 = (v553 + 8);
              if (v384)
              {
                sub_104E50();
              }

              else
              {
                sub_104E40();
              }

              v385(v383, v382);
              (*v386)(v240, v241);
              return;
            }

            v258 = &unk_1383C0;
            v259 = &qword_107DF0;
            v260 = v255;
            goto LABEL_120;
          }
        }

LABEL_121:
        v328 = sub_106D10();
        v329 = sub_106FC0();
        if (os_log_type_enabled(v328, v329))
        {
          v330 = swift_slowAlloc();
          *v330 = 0;
          _os_log_impl(&dword_0, v328, v329, "Request was not cancelled by user. Proceed.", v330, 2u);
        }

        sub_104E50();
        goto LABEL_124;
      }

      sub_104E40();
    }

    (*(v243 + 8))(v292, v244);
LABEL_124:
    (*(v239 + 8))(v240, v241);
    return;
  }

  if (v185 == enum case for Parse.NLv4IntentOnly(_:))
  {
    (*(v183 + 96))(v182, v184);
    v275 = *v182;
    objc_opt_self();
    if (swift_dynamicCastObjCClass() || (objc_opt_self(), swift_dynamicCastObjCClass()))
    {
      v276 = sub_106D10();
      v277 = sub_106FC0();
      if (os_log_type_enabled(v276, v277))
      {
        v278 = swift_slowAlloc();
        *v278 = 0;
        _os_log_impl(&dword_0, v276, v277, "User cancelled the task.", v278, 2u);
      }

      sub_104E40();
      goto LABEL_84;
    }

    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      v352 = v519;
      sub_14994(v174, v519, &unk_1374C0, &unk_1087B0);
      if (v498(v352, 1, v150) != 1)
      {
        v390 = v590;
        v286 = v513;
        (*(v590 + 32))(v513, v352, v150);
        v391 = v512;
        (*(v390 + 16))(v512, v286, v150);
        v392 = (*(v390 + 88))(v391, v150);
        if (v392 != v496)
        {
          if (v392 == enum case for DecideAction.PromptExpectation.slot(_:))
          {
            v393 = sub_106D10();
            v394 = sub_106FC0();
            if (os_log_type_enabled(v393, v394))
            {
              v395 = swift_slowAlloc();
              *v395 = 0;
              _os_log_impl(&dword_0, v393, v394, "User returned accepted for non-binary input. Ignoring.", v395, 2u);
            }

            sub_104E60();
            swift_unknownObjectRelease();
            (*(v590 + 8))(v286, v594);
            return;
          }

          if (v392 != v495)
          {
            goto LABEL_221;
          }
        }

        v438 = sub_106D10();
        v439 = sub_106FC0();
        if (os_log_type_enabled(v438, v439))
        {
          v440 = swift_slowAlloc();
          *v440 = 0;
          _os_log_impl(&dword_0, v438, v439, "User accepted the task, will handle.", v440, 2u);
          v150 = v594;
        }

        sub_104E50();
        swift_unknownObjectRelease();
LABEL_118:
        (*(v590 + 8))(v286, v150);
        return;
      }

      sub_16F70(v352, &unk_1374C0, &unk_1087B0);
      v353 = sub_106D10();
      v354 = sub_106FC0();
      if (os_log_type_enabled(v353, v354))
      {
        v355 = swift_slowAlloc();
        *v355 = 0;
        _os_log_impl(&dword_0, v353, v354, "User returned accepted for non-prompt input. Ignoring.", v355, 2u);
      }

      goto LABEL_214;
    }

    if ((v524 & 1) == 0)
    {
      goto LABEL_206;
    }

    swift_getObjectType();
    if (sub_107000())
    {
      v387 = v515;
      sub_274CC(v515);

      v388 = 0;
      v389 = v505;
    }

    else
    {
      v388 = 1;
      v389 = v505;
      v387 = v515;
    }

    v452 = v520;
    v453 = *(v520 + 56);
    v454 = v518;
    v453(v387, v388, 1, v518);
    v455 = v514;
    (*(v452 + 104))(v514, enum case for AlarmNLv4Constants.AlarmVerb.noVerb(_:), v454);
    v453(v455, 0, 1, v454);
    v456 = v387;
    v457 = *(v517 + 48);
    sub_14994(v456, v389, &unk_1374A0, &qword_10BB30);
    sub_14994(v455, v389 + v457, &unk_1374A0, &qword_10BB30);
    v458 = *(v452 + 48);
    if (v458(v389, 1, v454) == 1)
    {
      sub_16F70(v514, &unk_1374A0, &qword_10BB30);
      sub_16F70(v515, &unk_1374A0, &qword_10BB30);
      if (v458(v389 + v457, 1, v454) == 1)
      {
        sub_16F70(v389, &unk_1374A0, &qword_10BB30);
        goto LABEL_216;
      }
    }

    else
    {
      v459 = v500;
      sub_14994(v389, v500, &unk_1374A0, &qword_10BB30);
      if (v458(v389 + v457, 1, v454) != 1)
      {
        v484 = v520;
        v485 = v389 + v457;
        v486 = v502;
        (*(v520 + 32))(v502, v485, v454);
        sub_14F4C(&qword_138400, &type metadata accessor for AlarmNLv4Constants.AlarmVerb);
        v487 = sub_106E00();
        v488 = *(v484 + 8);
        v488(v486, v454);
        sub_16F70(v514, &unk_1374A0, &qword_10BB30);
        sub_16F70(v515, &unk_1374A0, &qword_10BB30);
        v488(v459, v454);
        sub_16F70(v389, &unk_1374A0, &qword_10BB30);
        v181 = v592;
        if (v487)
        {
LABEL_216:
          swift_unknownObjectRetain();
          v463 = sub_106D10();
          v489 = sub_106FC0();
          swift_unknownObjectRelease();
          if (os_log_type_enabled(v463, v489))
          {
            v490 = swift_slowAlloc();
            v491 = swift_slowAlloc();
            *&v597 = v491;
            *v490 = 136315138;
            v595 = v275;
            swift_unknownObjectRetain();
            sub_25E4(&unk_137470, &unk_10BC40);
            v492 = sub_106E30();
            v494 = sub_722E8(v492, v493, &v597);

            *(v490 + 4) = v494;
            _os_log_impl(&dword_0, v463, v489, "decideActionForInput decide handle disambiguation userDialogAct: %s", v490, 0xCu);
            sub_2738(v491);
          }

          goto LABEL_218;
        }

LABEL_206:
        v460 = v557;
        sub_105360();
        v461 = sub_579C(v460, v556);
        (*(v567 + 8))(v460, v569);
        if (!v461 || (v462 = swift_dynamicCastUnknownClass(), v461, !v462))
        {
          v470 = v531;
          v471 = v504;
          v472 = v532;
          (*(v531 + 16))(v504, v181, v532);
          v473 = sub_106D10();
          v474 = sub_106FB0();
          if (os_log_type_enabled(v473, v474))
          {
            v475 = v471;
            v476 = swift_slowAlloc();
            *&v597 = swift_slowAlloc();
            *v476 = 136315394;
            v477 = sub_107480();
            v479 = sub_722E8(v477, v478, &v597);

            *(v476 + 4) = v479;
            *(v476 + 12) = 2080;
            sub_14F4C(&unk_1374D0, &type metadata accessor for Input);
            v480 = sub_107340();
            v482 = v481;
            (*(v470 + 8))(v475, v472);
            v483 = sub_722E8(v480, v482, &v597);

            *(v476 + 14) = v483;
            _os_log_impl(&dword_0, v473, v474, "Intent from parse does not match IntentType. Expected %s, received %s", v476, 0x16u);
            swift_arrayDestroy();
          }

          else
          {

            (*(v470 + 8))(v471, v472);
          }

LABEL_214:
          sub_104E60();
LABEL_84:
          swift_unknownObjectRelease();
          return;
        }

        swift_unknownObjectRetain();
        v463 = sub_106D10();
        v464 = sub_106FC0();
        swift_unknownObjectRelease();
        if (os_log_type_enabled(v463, v464))
        {
          v465 = swift_slowAlloc();
          v466 = swift_slowAlloc();
          *&v597 = v466;
          *v465 = 136315138;
          v595 = v275;
          swift_unknownObjectRetain();
          sub_25E4(&unk_137470, &unk_10BC40);
          v467 = sub_106E30();
          v469 = sub_722E8(v467, v468, &v597);

          *(v465 + 4) = v469;
          _os_log_impl(&dword_0, v463, v464, "decideActionForInput decide handle userDialogAct: %s", v465, 0xCu);
          sub_2738(v466);
        }

LABEL_218:

        sub_104E50();
        goto LABEL_84;
      }

      sub_16F70(v514, &unk_1374A0, &qword_10BB30);
      sub_16F70(v515, &unk_1374A0, &qword_10BB30);
      (*(v520 + 8))(v459, v454);
    }

    sub_16F70(v389, &qword_137498, &unk_108C50);
    v181 = v592;
    goto LABEL_206;
  }

  if (v185 != enum case for Parse.uso(_:))
  {
    if (v185 == enum case for Parse.ifClientAction(_:))
    {
      v312 = *(v183 + 8);
      v313 = v569;
      v312(v182, v569);
      v314 = v557;
      sub_105360();
      v315 = sub_579C(v314, v556);
      v312(v314, v313);
      v316 = v315;
      v317 = sub_106D10();
      v318 = sub_106FC0();

      if (os_log_type_enabled(v317, v318))
      {
        v319 = swift_slowAlloc();
        v320 = swift_slowAlloc();
        *&v597 = v320;
        *v319 = 136315138;
        v595 = v315;
        v321 = v316;
        sub_25E4(&unk_1383F0, &qword_107E08);
        v322 = sub_106E30();
        v324 = sub_722E8(v322, v323, &v597);

        *(v319 + 4) = v324;
        _os_log_impl(&dword_0, v317, v318, "Handling ifClientAction for intent: %s", v319, 0xCu);
        sub_2738(v320);
      }

      sub_104E50();
    }

    else
    {
      v340 = v531;
      v341 = v528;
      v342 = v532;
      (*(v531 + 16))(v528, v181, v532);
      v343 = sub_106D10();
      v344 = sub_106FB0();
      if (os_log_type_enabled(v343, v344))
      {
        v345 = swift_slowAlloc();
        v346 = swift_slowAlloc();
        *&v597 = v346;
        *v345 = 136315138;
        sub_105360();
        v347 = v569;
        v348 = sub_106E30();
        v350 = v349;
        (*(v340 + 8))(v341, v342);
        v351 = sub_722E8(v348, v350, &v597);
        v182 = v568;

        *(v345 + 4) = v351;
        _os_log_impl(&dword_0, v343, v344, "Received an unsupported parse: %s", v345, 0xCu);
        sub_2738(v346);

        v183 = v567;
      }

      else
      {

        (*(v340 + 8))(v341, v342);
        v347 = v569;
      }

      sub_104E60();
      (*(v183 + 8))(v182, v347);
    }

    return;
  }

  (*(v183 + 96))(v182, v184);
  (*(v541 + 32))(v545, v182, v540);
  v295 = v535;
  sub_105400();
  v296 = sub_105450();
  v297 = *(v544 + 8);
  v544 += 8;
  v297(v295, v539);
  v298 = 0;
  v299 = *(v296 + 16);
  v591 = v564 + 16;
  v300 = (v564 + 8);
  v301 = v564;
  while (v299 != v298)
  {
    if (v298 >= *(v296 + 16))
    {
      __break(1u);
LABEL_220:
      __break(1u);
      goto LABEL_221;
    }

    v302 = v560;
    v303 = v561;
    (*(v301 + 16))(v560, v296 + ((*(v301 + 80) + 32) & ~*(v301 + 80)) + *(v301 + 72) * v298++, v561);
    v304 = sub_1054C0();
    (*(v301 + 8))(v302, v303);
    if (v304)
    {

      v305 = v525;
      sub_14994(v593, v525, &unk_1374C0, &unk_1087B0);
      v306 = v594;
      if (v498(v305, 1, v594) == 1)
      {
        sub_16F70(v305, &unk_1374C0, &unk_1087B0);
        v307 = sub_106D10();
        v308 = sub_106FC0();
        v309 = os_log_type_enabled(v307, v308);
        v310 = v541;
        if (v309)
        {
          v311 = swift_slowAlloc();
          *v311 = 0;
          _os_log_impl(&dword_0, v307, v308, "User returned accepted for non-prompt input. Ignoring.", v311, 2u);
        }

        sub_104E60();
        goto LABEL_173;
      }

      v361 = v590;
      v362 = v522;
      (*(v590 + 32))(v522, v305, v306);
      v363 = v521;
      (*(v361 + 16))(v521, v362, v306);
      v364 = (*(v361 + 88))(v363, v306);
      v310 = v541;
      if (v364 == v496)
      {
        goto LABEL_169;
      }

      if (v364 == enum case for DecideAction.PromptExpectation.slot(_:))
      {
        v365 = sub_106D10();
        v366 = sub_106FC0();
        if (os_log_type_enabled(v365, v366))
        {
          v367 = swift_slowAlloc();
          *v367 = 0;
          _os_log_impl(&dword_0, v365, v366, "User returned accepted for non-binary input. Ignoring.", v367, 2u);
        }

        sub_104E60();
LABEL_172:
        (*(v590 + 8))(v362, v594);
        goto LABEL_173;
      }

      if (v364 == v495)
      {
LABEL_169:
        v396 = sub_106D10();
        v397 = sub_106FC0();
        if (os_log_type_enabled(v396, v397))
        {
          v398 = swift_slowAlloc();
          *v398 = 0;
          _os_log_impl(&dword_0, v396, v397, "User accepted the task, will handle.", v398, 2u);
        }

        sub_104E50();
        goto LABEL_172;
      }

LABEL_222:
      sub_107360();
      __break(1u);
      return;
    }
  }

  v331 = v529;
  sub_105400();
  v332 = sub_105450();
  v333 = v297;
  v297(v331, v539);
  v334 = 0;
  v335 = *(v332 + 16);
  v336 = v561;
  v337 = v530;
  while (1)
  {
    if (v335 == v334)
    {

      v368 = v592;
      if (v524)
      {
        v369 = v509;
        sub_105400();
        v370 = sub_105440();
        v333(v369, v539);
        if (v370)
        {
          v371 = v508;
          sub_274CC(v508);

          v372 = 0;
          v373 = v511;
          v374 = v517;
          v375 = v510;
        }

        else
        {
          v372 = 1;
          v373 = v511;
          v374 = v517;
          v375 = v510;
          v371 = v508;
        }

        v399 = v520;
        v400 = *(v520 + 56);
        v401 = v518;
        v400(v371, v372, 1, v518);
        v402 = v516;
        (*(v399 + 104))(v516, enum case for AlarmNLv4Constants.AlarmVerb.noVerb(_:), v401);
        v400(v402, 0, 1, v401);
        v403 = *(v374 + 48);
        sub_14994(v371, v373, &unk_1374A0, &qword_10BB30);
        sub_14994(v402, v373 + v403, &unk_1374A0, &qword_10BB30);
        v404 = *(v399 + 48);
        if (v404(v373, 1, v401) == 1)
        {
          sub_16F70(v402, &unk_1374A0, &qword_10BB30);
          sub_16F70(v371, &unk_1374A0, &qword_10BB30);
          if (v404(v373 + v403, 1, v401) == 1)
          {
            sub_16F70(v373, &unk_1374A0, &qword_10BB30);
            goto LABEL_194;
          }

          goto LABEL_180;
        }

        sub_14994(v373, v375, &unk_1374A0, &qword_10BB30);
        if (v404(v373 + v403, 1, v401) == 1)
        {
          sub_16F70(v516, &unk_1374A0, &qword_10BB30);
          sub_16F70(v371, &unk_1374A0, &qword_10BB30);
          (*(v520 + 8))(v375, v401);
LABEL_180:
          sub_16F70(v373, &qword_137498, &unk_108C50);
          v368 = v592;
          goto LABEL_181;
        }

        v441 = v371;
        v442 = v520;
        v443 = v373 + v403;
        v444 = v502;
        (*(v520 + 32))(v502, v443, v401);
        sub_14F4C(&qword_138400, &type metadata accessor for AlarmNLv4Constants.AlarmVerb);
        v445 = sub_106E00();
        v446 = *(v442 + 8);
        v446(v444, v401);
        sub_16F70(v516, &unk_1374A0, &qword_10BB30);
        sub_16F70(v441, &unk_1374A0, &qword_10BB30);
        v446(v375, v401);
        sub_16F70(v373, &unk_1374A0, &qword_10BB30);
        v368 = v592;
        if (v445)
        {
LABEL_194:
          v408 = v541;
          v447 = *(v541 + 16);
          v410 = v501;
          v411 = v540;
          v447(v501, v545, v540);
          v412 = sub_106D10();
          v413 = sub_106FC0();
          if (os_log_type_enabled(v412, v413))
          {
            v414 = swift_slowAlloc();
            v415 = swift_slowAlloc();
            *&v597 = v415;
            *v414 = 136315138;
            v447(v503, v410, v411);
            v448 = sub_106E30();
            v450 = v449;
            v419 = *(v408 + 8);
            v419(v410, v411);
            v451 = sub_722E8(v448, v450, &v597);

            *(v414 + 4) = v451;
            v421 = "decideActionForInput decide handle disambiguation UsoParse: %s";
            goto LABEL_196;
          }

          goto LABEL_197;
        }
      }

LABEL_181:
      v405 = v557;
      sub_105360();
      v406 = sub_579C(v405, v556);
      (*(v567 + 8))(v405, v569);
      if (!v406 || (v407 = swift_dynamicCastUnknownClass(), v406, !v407))
      {
        v422 = v531;
        v423 = v507;
        v424 = v532;
        (*(v531 + 16))(v507, v368, v532);
        v425 = sub_106D10();
        v426 = sub_106FB0();
        v427 = os_log_type_enabled(v425, v426);
        v428 = v541;
        if (v427)
        {
          v429 = swift_slowAlloc();
          *&v597 = swift_slowAlloc();
          *v429 = 136315394;
          v430 = sub_107480();
          v432 = sub_722E8(v430, v431, &v597);

          *(v429 + 4) = v432;
          *(v429 + 12) = 2080;
          sub_14F4C(&unk_1374D0, &type metadata accessor for Input);
          v433 = sub_107340();
          v435 = v434;
          (*(v422 + 8))(v423, v424);
          v436 = sub_722E8(v433, v435, &v597);

          *(v429 + 14) = v436;
          _os_log_impl(&dword_0, v425, v426, "Intent from parse does not match IntentType. Expected %s, received %s", v429, 0x16u);
          swift_arrayDestroy();
        }

        else
        {

          (*(v422 + 8))(v423, v424);
        }

        v437 = v540;
        sub_104E60();
        (*(v428 + 8))(v545, v437);
        return;
      }

      v408 = v541;
      v409 = *(v541 + 16);
      v410 = v506;
      v411 = v540;
      v409(v506, v545, v540);
      v412 = sub_106D10();
      v413 = sub_106FC0();
      if (os_log_type_enabled(v412, v413))
      {
        v414 = swift_slowAlloc();
        v415 = swift_slowAlloc();
        *&v597 = v415;
        *v414 = 136315138;
        v409(v503, v410, v411);
        v416 = sub_106E30();
        v418 = v417;
        v419 = *(v408 + 8);
        v419(v410, v411);
        v420 = sub_722E8(v416, v418, &v597);

        *(v414 + 4) = v420;
        v421 = "decideActionForInput decide handle userDialogAct: %s";
LABEL_196:
        _os_log_impl(&dword_0, v412, v413, v421, v414, 0xCu);
        sub_2738(v415);

LABEL_198:
        sub_104E50();
        v419(v545, v411);
        return;
      }

LABEL_197:

      v419 = *(v408 + 8);
      v419(v410, v411);
      goto LABEL_198;
    }

    if (v334 >= *(v332 + 16))
    {
      goto LABEL_220;
    }

    (*(v564 + 16))(v337, v332 + ((*(v564 + 80) + 32) & ~*(v564 + 80)) + *(v564 + 72) * v334, v336);
    if (sub_1054D0())
    {
      break;
    }

    ++v334;
    v338 = sub_1054E0();
    (*v300)(v337, v336);
    if (v338)
    {

      goto LABEL_152;
    }
  }

  (*v300)(v337, v336);
LABEL_152:
  v376 = sub_106D10();
  v377 = sub_106FC0();
  v378 = os_log_type_enabled(v376, v377);
  v310 = v541;
  if (v378)
  {
    v379 = swift_slowAlloc();
    *v379 = 0;
    _os_log_impl(&dword_0, v376, v377, "User cancelled/rejected the task, will cancel the request.", v379, 2u);
  }

  sub_104E40();
LABEL_173:
  (*(v310 + 8))(v545, v540);
}

uint64_t sub_10C0C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_106D90();
  v25 = *(v4 - 8);
  v5 = *(v25 + 64);
  __chkstk_darwin(v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_106DB0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v24 - v14;
  v16 = *(v9 + 16);
  v16(&v24 - v14, v2, v8);
  if ((*(v9 + 88))(v15, v8) != enum case for TypedValue.primitive(_:))
  {
    goto LABEL_5;
  }

  v16(v13, v15, v8);
  (*(v9 + 96))(v13, v8);
  v17 = *v13;
  v18 = swift_projectBox();
  v19 = v25;
  if ((*(v25 + 88))(v18, v4) != enum case for TypedValue.PrimitiveValue.date(_:))
  {

LABEL_5:
    v22 = sub_104670();
    (*(*(v22 - 8) + 56))(a1, 1, 1, v22);
    return (*(v9 + 8))(v15, v8);
  }

  (*(v19 + 16))(v7, v18, v4);
  (*(v19 + 96))(v7, v4);
  v20 = sub_104670();
  v21 = *(v20 - 8);
  (*(v21 + 32))(a1, v7, v20);
  (*(v21 + 56))(a1, 0, 1, v20);

  return (*(v9 + 8))(v15, v8);
}

uint64_t sub_10F44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v69 = a2;
  v65 = a1;
  v67 = a3;
  v64 = sub_104740();
  v3 = *(v64 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v64);
  v6 = &v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_104750();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_104710();
  v13 = *(v12 - 8);
  v14 = v13;
  v61 = v12;
  v62 = v13;
  v15 = *(v13 + 64);
  __chkstk_darwin(v12);
  v17 = &v59 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_25E4(&qword_137518, &qword_107E28);
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  v21 = &v59 - v20;
  v68 = sub_104670();
  v63 = *(v68 - 8);
  v22 = *(v63 + 64);
  v23 = __chkstk_darwin(v68);
  v60 = &v59 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __chkstk_darwin(v23);
  v27 = &v59 - v26;
  __chkstk_darwin(v25);
  v66 = &v59 - v28;
  sub_106210();
  (*(v14 + 104))(v17, enum case for Calendar.MatchingPolicy.strict(_:), v12);
  v29 = v7;
  (*(v8 + 104))(v11, enum case for Calendar.RepeatedTimePolicy.first(_:), v7);
  v30 = v64;
  (*(v3 + 104))(v6, enum case for Calendar.SearchDirection.forward(_:), v64);
  sub_1047A0();
  (*(v3 + 8))(v6, v30);
  (*(v8 + 8))(v11, v29);
  v31 = v17;
  v32 = v63;
  (*(v62 + 8))(v31, v61);
  v33 = v68;
  v34 = *(v32 + 8);
  v34(v27, v68);
  if ((*(v32 + 48))(v21, 1, v33) == 1)
  {
    sub_16F70(v21, &qword_137518, &qword_107E28);
    v35 = 1;
    v36 = v67;
  }

  else
  {
    v37 = v66;
    (*(v32 + 32))(v66, v21, v33);
    if (qword_136C50 != -1)
    {
      swift_once();
    }

    v38 = sub_106D20();
    sub_135C4(v38, qword_137440);
    v39 = v60;
    (*(v32 + 16))(v60, v37, v33);
    v40 = sub_106D10();
    v41 = sub_106FA0();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v70 = v43;
      *v42 = 136315138;
      sub_14F4C(&qword_137548, &type metadata accessor for Date);
      v44 = sub_107340();
      v45 = v39;
      v47 = v46;
      v34(v45, v33);
      v48 = sub_722E8(v44, v47, &v70);

      *(v42 + 4) = v48;
      _os_log_impl(&dword_0, v40, v41, "Next date matching time: %s", v42, 0xCu);
      sub_2738(v43);
    }

    else
    {

      v34(v39, v33);
    }

    sub_25E4(&qword_137550, &qword_107E30);
    v49 = sub_1047B0();
    v50 = *(v49 - 8);
    v51 = *(v50 + 72);
    v52 = (*(v50 + 80) + 32) & ~*(v50 + 80);
    v53 = swift_allocObject();
    *(v53 + 16) = xmmword_107DE0;
    v54 = v53 + v52;
    v55 = *(v50 + 104);
    v55(v54, enum case for Calendar.Component.year(_:), v49);
    v55(v54 + v51, enum case for Calendar.Component.month(_:), v49);
    v55(v54 + 2 * v51, enum case for Calendar.Component.day(_:), v49);
    v55(v54 + 3 * v51, enum case for Calendar.Component.hour(_:), v49);
    v55(v54 + 4 * v51, enum case for Calendar.Component.minute(_:), v49);
    sub_84558(v53);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v56 = v66;
    v36 = v67;
    sub_104730();

    v34(v56, v68);
    v35 = 0;
  }

  v57 = sub_1045E0();
  return (*(*(v57 - 8) + 56))(v36, v35, 1, v57);
}

uint64_t sub_1174C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v238 = a2;
  v218 = sub_105380();
  v217 = *(v218 - 8);
  v3 = *(v217 + 64);
  __chkstk_darwin(v218);
  v216 = &v204 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_25E4(&unk_1383C0, &qword_107DF0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v208 = &v204 - v7;
  v210 = sub_106440();
  v209 = *(v210 - 8);
  v8 = *(v209 + 64);
  v9 = __chkstk_darwin(v210);
  v206 = &v204 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v205 = &v204 - v12;
  __chkstk_darwin(v11);
  v207 = &v204 - v13;
  v221 = sub_1065A0();
  v220 = *(v221 - 8);
  v14 = *(v220 + 64);
  __chkstk_darwin(v221);
  v219 = &v204 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_25E4(&unk_137460, &unk_108C60);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v228 = &v204 - v18;
  v19 = sub_1053C0();
  v231 = *(v19 - 8);
  v232 = v19;
  v20 = *(v231 + 8);
  v21 = __chkstk_darwin(v19);
  v229 = &v204 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v21);
  v226 = &v204 - v24;
  v25 = __chkstk_darwin(v23);
  v227 = &v204 - v26;
  __chkstk_darwin(v25);
  v230 = &v204 - v27;
  v28 = sub_104C50();
  v237 = *(v28 - 8);
  v29 = v237[8];
  v30 = __chkstk_darwin(v28);
  v235 = &v204 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v236 = &v204 - v32;
  v33 = sub_105520();
  v34 = *(v33 - 8);
  v233 = v33;
  v234 = v34;
  v35 = *(v34 + 64);
  v36 = __chkstk_darwin(v33);
  v212 = &v204 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v36);
  v39 = &v204 - v38;
  v222 = sub_105460();
  v215 = *(v222 - 8);
  v40 = *(v215 + 64);
  v41 = __chkstk_darwin(v222);
  v211 = &v204 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v41);
  v214 = &v204 - v43;
  v224 = sub_105410();
  v223 = *(v224 - 8);
  v44 = *(v223 + 64);
  __chkstk_darwin(v224);
  v225 = &v204 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_1053E0();
  v47 = *(v46 - 8);
  v48 = *(v47 + 64);
  v49 = __chkstk_darwin(v46);
  v213 = &v204 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v49);
  v52 = (&v204 - v51);
  v53 = sub_105E80();
  v54 = *(v53 - 8);
  v55 = *(v54 + 64);
  v56 = __chkstk_darwin(v53);
  v58 = &v204 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v56);
  v60 = &v204 - v59;
  sub_105360();
  v61 = (*(v47 + 88))(v52, v46);
  if (v61 == enum case for Parse.NLv3IntentOnly(_:))
  {
    (*(v47 + 96))(v52, v46);
LABEL_5:
    v63 = *(v54 + 32);
    v63(v60, v52, v53);
    v63(v58, v60, v53);
    v64 = type metadata accessor for AlarmNLIntent();
    v65 = *(v64 + 48);
    v66 = *(v64 + 52);
    swift_allocObject();
    v67 = sub_B3800(v58);
    if (qword_136C50 != -1)
    {
      swift_once();
    }

    v68 = sub_106D20();
    sub_135C4(v68, qword_137440);

    v69 = sub_106D10();
    v70 = sub_106FC0();

    if (os_log_type_enabled(v69, v70))
    {
      v71 = swift_slowAlloc();
      v72 = swift_slowAlloc();
      v241[0] = v72;
      *v71 = 136315138;
      v239 = v67;
      sub_14F4C(&qword_137480, type metadata accessor for AlarmNLIntent);
      v73 = sub_105620();
      v75 = sub_722E8(v73, v74, v241);

      *(v71 + 4) = v75;
      _os_log_impl(&dword_0, v69, v70, "alarmNLIntent: %s", v71, 0xCu);
      sub_2738(v72);
    }

    v76 = v235;
    v77 = sub_B372C();
    v79 = v236;
    v78 = v237;
    v80 = v237[13];
    v80(v236, **(&off_12FB70 + v77), v28);
    v80(v76, enum case for SiriKitConfirmationState.confirmed(_:), v28);
    sub_14F4C(&qword_1374F8, &type metadata accessor for SiriKitConfirmationState);
    sub_106EB0();
    sub_106EB0();
    if (v241[0] == v239 && v241[1] == v240)
    {

      v81 = v78[1];
      v81(v76, v28);
      v81(v79, v28);

LABEL_67:
      v84 = &enum case for ConfirmationResponse.confirmed(_:);
      goto LABEL_68;
    }

    v82 = sub_107370();

    v83 = v78[1];
    v83(v76, v28);
    v83(v79, v28);

    if (v82)
    {
      goto LABEL_67;
    }

LABEL_13:
    v84 = &enum case for ConfirmationResponse.rejected(_:);
LABEL_68:
    v168 = *v84;
    v169 = sub_1050D0();
    return (*(*(v169 - 8) + 104))(v238, v168, v169);
  }

  if (v61 == enum case for Parse.NLv3IntentPlusServerConversion(_:))
  {
    (*(v47 + 96))(v52, v46);
    v62 = *(v52 + *(sub_25E4(&qword_13B010, &unk_1087A0) + 48));

    goto LABEL_5;
  }

  if (v61 != enum case for Parse.directInvocation(_:))
  {
    if (v61 != enum case for Parse.NLv4IntentOnly(_:))
    {
      if (v61 == enum case for Parse.uso(_:))
      {
        (*(v47 + 96))(v52, v46);
        (*(v223 + 32))(v225, v52, v224);
        v121 = v214;
        sub_105400();
        v122 = sub_105450();
        v123 = *(v215 + 8);
        v123(v121, v222);
        v85 = 0;
        v86 = *(v122 + 16);
        v124 = v233;
        v125 = (v234 + 8);
        while (v86 != v85)
        {
          if (v85 >= *(v122 + 16))
          {
            __break(1u);
            goto LABEL_103;
          }

          (*(v234 + 16))(v39, v122 + ((*(v234 + 80) + 32) & ~*(v234 + 80)) + *(v234 + 72) * v85, v124);
          if (sub_1054C0())
          {

            (*v125)(v39, v124);
            goto LABEL_62;
          }

          ++v85;
          v126 = sub_1054F0();
          (*v125)(v39, v124);
          if (v126)
          {

LABEL_62:
            if (qword_136C50 != -1)
            {
              swift_once();
            }

            v164 = sub_106D20();
            sub_135C4(v164, qword_137440);
            v165 = sub_106D10();
            v166 = sub_106FC0();
            if (os_log_type_enabled(v165, v166))
            {
              v167 = swift_slowAlloc();
              *v167 = 0;
              _os_log_impl(&dword_0, v165, v166, "User accepted the task, will handle.", v167, 2u);
            }

            (*(v223 + 8))(v225, v224);
            goto LABEL_67;
          }
        }

        v157 = v211;
        sub_105400();
        v158 = sub_105450();
        v123(v157, v222);
        v159 = 0;
        v160 = *(v158 + 16);
        v161 = v233;
        v162 = v212;
        while (1)
        {
          if (v160 == v159)
          {
            (*(v223 + 8))(v225, v224);

            goto LABEL_13;
          }

          if (v159 >= *(v158 + 16))
          {
            __break(1u);
            goto LABEL_105;
          }

          (*(v234 + 16))(v162, v158 + ((*(v234 + 80) + 32) & ~*(v234 + 80)) + *(v234 + 72) * v159, v161);
          if (sub_1054D0())
          {
            break;
          }

          ++v159;
          v163 = sub_1054E0();
          (*v125)(v162, v161);
          if (v163)
          {

            goto LABEL_76;
          }
        }

        (*v125)(v162, v161);
LABEL_76:
        if (qword_136C50 != -1)
        {
          swift_once();
        }

        v175 = sub_106D20();
        sub_135C4(v175, qword_137440);
        v176 = sub_106D10();
        v177 = sub_106FC0();
        if (os_log_type_enabled(v176, v177))
        {
          v178 = swift_slowAlloc();
          *v178 = 0;
          _os_log_impl(&dword_0, v176, v177, "User cancelled/rejected the task, will cancel the request.", v178, 2u);
        }

        (*(v223 + 8))(v225, v224);
        goto LABEL_13;
      }

      if (qword_136C50 != -1)
      {
        swift_once();
      }

      v128 = sub_106D20();
      sub_135C4(v128, qword_137440);
      v129 = v217;
      v130 = v216;
      v131 = v218;
      (*(v217 + 16))(v216, a1, v218);
      v132 = sub_106D10();
      v133 = sub_106FB0();
      if (os_log_type_enabled(v132, v133))
      {
        v134 = swift_slowAlloc();
        v237 = swift_slowAlloc();
        v241[0] = v237;
        *v134 = 136315138;
        LODWORD(v236) = v133;
        sub_105360();
        v135 = sub_106E30();
        v136 = v130;
        v138 = v137;
        (*(v129 + 8))(v136, v131);
        v139 = sub_722E8(v135, v138, v241);

        *(v134 + 4) = v139;
        _os_log_impl(&dword_0, v132, v236, "Received not an supported input: %s", v134, 0xCu);
        sub_2738(v237);
      }

      else
      {

        (*(v129 + 8))(v130, v131);
      }

      v140 = enum case for ConfirmationResponse.rejected(_:);
      v141 = sub_1050D0();
      (*(*(v141 - 8) + 104))(v238, v140, v141);
      return (*(v47 + 8))(v52, v46);
    }

    (*(v47 + 96))(v52, v46);
    v98 = *v52;
    objc_opt_self();
    if (swift_dynamicCastObjCClass() || (objc_opt_self(), swift_dynamicCastObjCClass()))
    {
      if (qword_136C50 != -1)
      {
LABEL_105:
        swift_once();
      }

      v99 = sub_106D20();
      sub_135C4(v99, qword_137440);
      v100 = sub_106D10();
      v101 = sub_106FC0();
      if (os_log_type_enabled(v100, v101))
      {
        v102 = swift_slowAlloc();
        *v102 = 0;
        _os_log_impl(&dword_0, v100, v101, "Received UserDialogAct - UserAccepted", v102, 2u);
      }

      swift_unknownObjectRelease();
      goto LABEL_67;
    }

    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      if (qword_136C50 != -1)
      {
        swift_once();
      }

      v170 = sub_106D20();
      sub_135C4(v170, qword_137440);
      v171 = sub_106D10();
      v172 = sub_106FC0();
      if (!os_log_type_enabled(v171, v172))
      {
        goto LABEL_88;
      }

      v173 = swift_slowAlloc();
      *v173 = 0;
      v174 = "Received UserDialogAct - UserRejected";
    }

    else
    {
      objc_opt_self();
      if (!swift_dynamicCastObjCClass())
      {
        if (qword_136C50 != -1)
        {
          swift_once();
        }

        v197 = sub_106D20();
        sub_135C4(v197, qword_137440);
        swift_unknownObjectRetain();
        v171 = sub_106D10();
        v198 = sub_106FB0();
        swift_unknownObjectRelease();
        if (!os_log_type_enabled(v171, v198))
        {
          swift_unknownObjectRelease();

          goto LABEL_13;
        }

        v199 = swift_slowAlloc();
        v200 = swift_slowAlloc();
        v241[0] = v200;
        *v199 = 136315138;
        v239 = v98;
        swift_unknownObjectRetain();
        sub_25E4(&unk_137470, &unk_10BC40);
        v201 = sub_106E30();
        v203 = sub_722E8(v201, v202, v241);

        *(v199 + 4) = v203;
        _os_log_impl(&dword_0, v171, v198, "Received unsupported userDialogAct for confirmation: %s", v199, 0xCu);
        sub_2738(v200);

        goto LABEL_87;
      }

      if (qword_136C50 != -1)
      {
        swift_once();
      }

      v179 = sub_106D20();
      sub_135C4(v179, qword_137440);
      v171 = sub_106D10();
      v172 = sub_106FC0();
      if (!os_log_type_enabled(v171, v172))
      {
        goto LABEL_88;
      }

      v173 = swift_slowAlloc();
      *v173 = 0;
      v174 = "Received UserDialogAct - UserCancelled";
    }

    _os_log_impl(&dword_0, v171, v172, v174, v173, 2u);
LABEL_87:

LABEL_88:

    swift_unknownObjectRelease();
    goto LABEL_13;
  }

  (*(v47 + 96))(v52, v46);
  v85 = v230;
  v39 = v231;
  v86 = v232;
  (*(v231 + 4))(v230, v52, v232);
  if (qword_136C50 != -1)
  {
LABEL_103:
    swift_once();
  }

  v87 = sub_106D20();
  v88 = sub_135C4(v87, qword_137440);
  v89 = v227;
  v237 = *(v39 + 2);
  (v237)(v227, v85, v86);
  v235 = v88;
  v90 = sub_106D10();
  v91 = sub_106FC0();
  if (os_log_type_enabled(v90, v91))
  {
    v92 = swift_slowAlloc();
    v93 = swift_slowAlloc();
    v241[0] = v93;
    *v92 = 136315138;
    (v237)(v226, v89, v86);
    v94 = sub_106E30();
    v96 = v95;
    v236 = *(v39 + 1);
    (v236)(v89, v232);
    v97 = sub_722E8(v94, v96, v241);
    v86 = v232;

    *(v92 + 4) = v97;
    v85 = v230;
    _os_log_impl(&dword_0, v90, v91, "Handling direct invocation: %s", v92, 0xCu);
    sub_2738(v93);
  }

  else
  {

    v236 = *(v39 + 1);
    (v236)(v89, v86);
  }

  v103 = v228;
  v104 = v229;
  sub_106580();
  v105 = sub_1050D0();
  v106 = *(v105 - 8);
  if ((*(v106 + 48))(v103, 1, v105) != 1)
  {
    (v236)(v85, v86);
    return (*(v106 + 32))(v238, v103, v105);
  }

  v233 = v106;
  v234 = v105;
  sub_16F70(v103, &unk_137460, &unk_108C60);
  v107 = sub_1053B0();
  if (!v107)
  {
    goto LABEL_50;
  }

  v108 = v107;
  v109 = v220;
  v110 = v219;
  v111 = v221;
  (*(v220 + 104))(v219, enum case for DirectInvocationUtils.Alarm.UserInfoKey.buttonPressed(_:), v221);
  v112 = sub_106590();
  v114 = v113;
  (*(v109 + 8))(v110, v111);
  if (!*(v108 + 16))
  {

LABEL_48:

    goto LABEL_49;
  }

  v115 = sub_32658(v112, v114);
  v117 = v116;

  if ((v117 & 1) == 0)
  {
    goto LABEL_48;
  }

  sub_135FC(*(v108 + 56) + 32 * v115, v241);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_48;
  }

  v118 = v208;
  sub_106420();
  v119 = v209;
  v120 = v210;
  if ((*(v209 + 48))(v118, 1, v210) == 1)
  {

    sub_16F70(v118, &unk_1383C0, &qword_107DF0);
LABEL_49:
    v104 = v229;
LABEL_50:
    (v237)(v104, v85, v86);
    v142 = sub_106D10();
    v143 = sub_106FB0();
    if (os_log_type_enabled(v142, v143))
    {
      v144 = swift_slowAlloc();
      v145 = swift_slowAlloc();
      v241[0] = v145;
      *v144 = 136315138;
      v146 = v236;
      (v237)(v226, v104, v86);
      v147 = sub_106E30();
      v148 = v104;
      v149 = v147;
      v151 = v150;
      v146(v148, v86);
      v152 = sub_722E8(v149, v151, v241);

      *(v144 + 4) = v152;
      _os_log_impl(&dword_0, v142, v143, "Received unsupported directInvocation for alarm confirmation: %s", v144, 0xCu);
      sub_2738(v145);

      v146(v230, v86);
    }

    else
    {

      v153 = v236;
      (v236)(v104, v86);
      v153(v85, v86);
    }

    v155 = v233;
    v154 = v234;
    v156 = enum case for ConfirmationResponse.rejected(_:);
    return (*(v155 + 104))(v238, v156, v154);
  }

  v180 = v207;
  (*(v119 + 32))(v207, v118, v120);
  v181 = v205;
  v237 = *(v119 + 16);
  (v237)(v205, v180, v120);
  v182 = v119;
  v183 = sub_106D10();
  v184 = sub_106FC0();
  if (os_log_type_enabled(v183, v184))
  {
    v185 = swift_slowAlloc();
    v186 = swift_slowAlloc();
    v241[0] = v186;
    *v185 = 136315138;
    LODWORD(v235) = v184;
    v187 = sub_106430();
    v189 = v188;
    v190 = *(v182 + 8);
    v190(v181, v210);
    v191 = sub_722E8(v187, v189, v241);
    v180 = v207;

    *(v185 + 4) = v191;
    _os_log_impl(&dword_0, v183, v235, "Received confirmation directionInvocation, buttonPressed: %s", v185, 0xCu);
    sub_2738(v186);
    v86 = v232;

    v120 = v210;

    v192 = v230;
    v193 = v209;
  }

  else
  {

    v193 = v182;
    v190 = *(v182 + 8);
    v190(v181, v120);
    v192 = v230;
  }

  v194 = v206;
  (v237)(v206, v180, v120);
  v195 = (*(v193 + 88))(v194, v120);
  if (v195 == enum case for ButtonOption.yes(_:))
  {

    v190(v180, v120);
    (v236)(v192, v86);
    v196 = &enum case for ConfirmationResponse.confirmed(_:);
LABEL_96:
    v156 = *v196;
    v155 = v233;
    v154 = v234;
    return (*(v155 + 104))(v238, v156, v154);
  }

  if (v195 == enum case for ButtonOption.cancel(_:))
  {

    v190(v180, v120);
    (v236)(v192, v86);
    v196 = &enum case for ConfirmationResponse.rejected(_:);
    goto LABEL_96;
  }

  result = sub_107360();
  __break(1u);
  return result;
}

uint64_t sub_135C4(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_135FC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_13658()
{
  sub_105940();
  sub_14994(v9, v7, &qword_137490, qword_108C80);
  if (v8)
  {
    sub_14994(v7, v6, &qword_137490, qword_108C80);
    sub_105D80();
    if (swift_dynamicCast())
    {
      goto LABEL_21;
    }

    sub_105A20();
    if (swift_dynamicCast())
    {
      goto LABEL_21;
    }

    sub_105A30();
    if (swift_dynamicCast())
    {
      goto LABEL_21;
    }

    sub_105AC0();
    if (swift_dynamicCast())
    {
      goto LABEL_21;
    }

    sub_105A50();
    if (swift_dynamicCast())
    {
      goto LABEL_21;
    }

    sub_105990();
    if (swift_dynamicCast())
    {
      goto LABEL_21;
    }

    sub_105AD0();
    if (swift_dynamicCast())
    {
      goto LABEL_21;
    }

    sub_105A90();
    if (swift_dynamicCast())
    {
      goto LABEL_21;
    }

    sub_105B80();
    if (swift_dynamicCast())
    {
      goto LABEL_21;
    }

    sub_105AA0();
    if (swift_dynamicCast())
    {
      goto LABEL_21;
    }

    sub_105A60();
    if (swift_dynamicCast())
    {
      goto LABEL_21;
    }

    sub_105A70();
    if (swift_dynamicCast() || (sub_1059E0(), swift_dynamicCast()) || (sub_105A40(), swift_dynamicCast()) || (sub_105A80(), swift_dynamicCast()) || (sub_105AB0(), swift_dynamicCast()) || (sub_1059A0(), swift_dynamicCast()) || (sub_1059D0(), swift_dynamicCast()) || (sub_1059B0(), swift_dynamicCast()))
    {
LABEL_21:
      sub_16F70(v9, &qword_137490, qword_108C80);

      sub_2738(v6);
      v0 = 1;
      goto LABEL_28;
    }

    sub_2738(v6);
  }

  if (qword_136C50 != -1)
  {
    swift_once();
  }

  v1 = sub_106D20();
  sub_135C4(v1, qword_137440);
  v2 = sub_106D10();
  v3 = sub_106FB0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_0, v2, v3, "Alarm flow received non-alarm NLv4 parse", v4, 2u);
  }

  sub_16F70(v9, &qword_137490, qword_108C80);
  v0 = 0;
LABEL_28:
  sub_16F70(v7, &qword_137490, qword_108C80);
  return v0;
}

uint64_t sub_13AA4(uint64_t a1)
{
  v2 = sub_105380();
  v89 = *(v2 - 8);
  v90 = v2;
  v3 = *(v89 + 64);
  __chkstk_darwin(v2);
  v88 = &v87 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1053C0();
  v97 = *(v5 - 8);
  v98 = v5;
  v6 = *(v97 + 64);
  __chkstk_darwin(v5);
  v8 = &v87 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_105520();
  v100 = *(v9 - 8);
  v101 = v9;
  v10 = v100[8];
  __chkstk_darwin(v9);
  v99 = &v87 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = sub_105460();
  v96 = *(v94 - 8);
  v12 = *(v96 + 64);
  v13 = __chkstk_darwin(v94);
  v87 = &v87 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v91 = &v87 - v15;
  v95 = sub_105410();
  v93 = *(v95 - 8);
  v16 = *(v93 + 64);
  __chkstk_darwin(v95);
  v92 = &v87 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_25E4(&qword_137488, &qword_10A960);
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  v21 = &v87 - v20;
  v22 = sub_1053E0();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  v25 = __chkstk_darwin(v22);
  __chkstk_darwin(v25);
  v27 = (&v87 - v26);
  v28 = sub_105E80();
  v29 = *(v28 - 8);
  v30 = *(v29 + 64);
  __chkstk_darwin(v28);
  v32 = &v87 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_105360();
  v33 = (*(v23 + 88))(v27, v22);
  if (v33 == enum case for Parse.NLv3IntentOnly(_:))
  {
    (*(v23 + 96))(v27, v22);
  }

  else
  {
    if (v33 != enum case for Parse.NLv3IntentPlusServerConversion(_:))
    {
      if (v33 == enum case for Parse.directInvocation(_:))
      {
        (*(v23 + 96))(v27, v22);
        v46 = v97;
        v45 = v98;
        (*(v97 + 32))(v8, v27, v98);
        v47 = sub_106570();
        (*(v46 + 8))(v8, v45);
        v41 = v47 ^ 1;
        return v41 & 1;
      }

      if (v33 == enum case for Parse.NLv4IntentOnly(_:))
      {
        (*(v23 + 96))(v27, v22);
        v49 = *v27;
        objc_opt_self();
        if (!swift_dynamicCastObjCClass())
        {
          objc_opt_self();
          if (!swift_dynamicCastObjCClass())
          {
            objc_opt_self();
            if (!swift_dynamicCastObjCClass())
            {
              objc_opt_self();
              if (!swift_dynamicCastObjCClass())
              {
                swift_getObjectType();
                if (sub_107000())
                {
                  v41 = sub_13658();
                  swift_unknownObjectRelease();

                  return v41 & 1;
                }

                if (qword_136C50 != -1)
                {
                  swift_once();
                }

                v83 = sub_106D20();
                sub_135C4(v83, qword_137440);
                v84 = sub_106D10();
                v85 = sub_106FC0();
                if (os_log_type_enabled(v84, v85))
                {
                  v86 = swift_slowAlloc();
                  *v86 = 0;
                  _os_log_impl(&dword_0, v84, v85, "NLv4IntentOnly parse received is NOT valid alarm input: not able to get alarmTask", v86, 2u);
                }

                swift_unknownObjectRelease();

                goto LABEL_11;
              }
            }
          }
        }

        swift_unknownObjectRelease();
      }

      else
      {
        if (v33 == enum case for Parse.uso(_:))
        {
          (*(v23 + 96))(v27, v22);
          v57 = v92;
          v56 = v93;
          (*(v93 + 32))(v92, v27, v95);
          v58 = v91;
          sub_105400();
          v42 = sub_105450();
          v59 = *(v96 + 8);
          v96 += 8;
          v59(v58, v94);
          v60 = 0;
          v61 = *(v42 + 16);
          v44 = v100 + 1;
          while (v61 != v60)
          {
            if (v60 >= *(v42 + 16))
            {
              __break(1u);
              goto LABEL_65;
            }

            v62 = v99;
            (v100[2])(v99, v42 + ((*(v100 + 80) + 32) & ~*(v100 + 80)) + v100[9] * v60, v101);
            if (sub_1054C0() & 1) != 0 || (sub_1054E0() & 1) != 0 || (sub_1054D0())
            {

              (*v44)(v62, v101);
              goto LABEL_43;
            }

            v63 = sub_1054F0();
            (*v44)(v62, v101);
            ++v60;
            if (v63)
            {

LABEL_43:
              (*(v56 + 8))(v57, v95);
              goto LABEL_16;
            }
          }

          v77 = v87;
          sub_105400();
          v78 = sub_105440();
          v59(v77, v94);
          if (v78)
          {
            v41 = sub_13658();

            (*(v56 + 8))(v57, v95);
            return v41 & 1;
          }

          if (qword_136C50 != -1)
          {
            swift_once();
          }

          v79 = sub_106D20();
          sub_135C4(v79, qword_137440);
          v80 = sub_106D10();
          v81 = sub_106FC0();
          if (os_log_type_enabled(v80, v81))
          {
            v82 = swift_slowAlloc();
            *v82 = 0;
            _os_log_impl(&dword_0, v80, v81, "NLv4IntentOnly parse received is NOT valid alarm input: not able to get alarmTask", v82, 2u);
          }

          (*(v56 + 8))(v57, v95);
          goto LABEL_11;
        }

        if (v33 != enum case for Parse.ifClientAction(_:))
        {
          if (qword_136C50 != -1)
          {
            swift_once();
          }

          v64 = sub_106D20();
          sub_135C4(v64, qword_137440);
          v66 = v88;
          v65 = v89;
          v67 = v90;
          (*(v89 + 16))(v88, a1, v90);
          v68 = sub_106D10();
          v69 = sub_106FC0();
          if (os_log_type_enabled(v68, v69))
          {
            v70 = swift_slowAlloc();
            LODWORD(v101) = v69;
            v71 = v66;
            v72 = v70;
            v100 = swift_slowAlloc();
            v102 = v100;
            *v72 = 136315138;
            sub_105360();
            v73 = sub_106E30();
            v75 = v74;
            (*(v65 + 8))(v71, v67);
            v76 = sub_722E8(v73, v75, &v102);

            *(v72 + 4) = v76;
            _os_log_impl(&dword_0, v68, v101, "Parse received is NOT valid alarm input: %s", v72, 0xCu);
            sub_2738(v100);
          }

          else
          {

            (*(v65 + 8))(v66, v67);
          }

          (*(v23 + 8))(v27, v22);
          goto LABEL_11;
        }

        (*(v23 + 8))(v27, v22);
      }

LABEL_16:
      v41 = 1;
      return v41 & 1;
    }

    (*(v23 + 96))(v27, v22);
    v34 = *(v27 + *(sub_25E4(&qword_13B010, &unk_1087A0) + 48));
  }

  (*(v29 + 32))(v32, v27, v28);
  sub_105E70();
  (*(v29 + 8))(v32, v28);
  v35 = sub_1058A0();
  v36 = *(v35 - 8);
  if ((*(v36 + 48))(v21, 1, v35) != 1)
  {
    v42 = sub_105880();
    v44 = v43;
    (*(v36 + 8))(v21, v35);
    if ((v42 != 0x6D72616C61 || v44 != 0xE500000000000000) && (sub_107370() & 1) == 0)
    {
      if (qword_136C50 != -1)
      {
LABEL_65:
        swift_once();
      }

      v50 = sub_106D20();
      sub_135C4(v50, qword_137440);

      v51 = sub_106D10();
      v52 = sub_106FC0();

      if (os_log_type_enabled(v51, v52))
      {
        v53 = swift_slowAlloc();
        v54 = swift_slowAlloc();
        v102 = v54;
        *v53 = 136315138;
        v55 = sub_722E8(v42, v44, &v102);

        *(v53 + 4) = v55;
        _os_log_impl(&dword_0, v51, v52, "NLv3IntentPlusServerConversion parse received is NOT a valid alarm input: alarm flow received unexpected domain %s", v53, 0xCu);
        sub_2738(v54);
      }

      else
      {
      }

      goto LABEL_11;
    }

    goto LABEL_16;
  }

  sub_16F70(v21, &qword_137488, &qword_10A960);
  if (qword_136C50 != -1)
  {
    swift_once();
  }

  v37 = sub_106D20();
  sub_135C4(v37, qword_137440);
  v38 = sub_106D10();
  v39 = sub_106FC0();
  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    *v40 = 0;
    _os_log_impl(&dword_0, v38, v39, "NLv3IntentPlusServerConversion parse received is NOT a valid alarm input: domainNode in nlv3Intent is nil", v40, 2u);
  }

LABEL_11:
  v41 = 0;
  return v41 & 1;
}

uint64_t *sub_14930(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

uint64_t sub_14994(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_25E4(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

void *sub_149FC(uint64_t a1)
{
  v2 = sub_1065A0();
  v3 = *(v2 - 8);
  v4 = v3[8];
  v5 = __chkstk_darwin(v2);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v35 - v8;
  v10 = enum case for DirectInvocationUtils.Alarm.UserInfoKey.alarmId(_:);
  v36 = v3[13];
  v36(&v35 - v8, enum case for DirectInvocationUtils.Alarm.UserInfoKey.alarmId(_:), v2);
  v11 = sub_106590();
  v13 = v12;
  v14 = v3[1];
  v14(v9, v2);
  if (*(a1 + 16))
  {
    v15 = sub_32658(v11, v13);
    v17 = v16;

    if (v17)
    {
      sub_135FC(*(a1 + 56) + 32 * v15, v38);
      sub_25E4(&qword_137558, &qword_109540);
      if (swift_dynamicCast())
      {
        if (v37[2])
        {
          v19 = v37[4];
          v18 = v37[5];

          return v19;
        }

        goto LABEL_11;
      }
    }
  }

  else
  {
  }

  v36(v7, v10, v2);
  v21 = sub_106590();
  v23 = v22;
  v14(v7, v2);
  if (!*(a1 + 16))
  {
LABEL_11:

    goto LABEL_12;
  }

  v24 = sub_32658(v21, v23);
  v26 = v25;

  if (v26)
  {
    sub_135FC(*(a1 + 56) + 32 * v24, v38);
    if (swift_dynamicCast())
    {
      return v37;
    }
  }

LABEL_12:
  if (qword_136C50 != -1)
  {
    swift_once();
  }

  v27 = sub_106D20();
  sub_135C4(v27, qword_137440);

  v28 = sub_106D10();
  v29 = sub_106FB0();

  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v38[0] = v31;
    *v30 = 136315138;
    v32 = sub_106DD0();
    v34 = sub_722E8(v32, v33, v38);

    *(v30 + 4) = v34;
    _os_log_impl(&dword_0, v28, v29, "Unable to parse alarm ID from directInvocation.userData: %s", v30, 0xCu);
    sub_2738(v31);
  }

  return 0;
}

uint64_t sub_14DD8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

unint64_t sub_14E2C()
{
  result = qword_137538;
  if (!qword_137538)
  {
    sub_14EB0(&qword_137530, &qword_1087D0);
    sub_14EF8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_137538);
  }

  return result;
}

uint64_t sub_14EB0(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_14EF8()
{
  result = qword_137540;
  if (!qword_137540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_137540);
  }

  return result;
}

uint64_t sub_14F4C(unint64_t *a1, void (*a2)(uint64_t))
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

BOOL sub_14F94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v235 = a3;
  v240 = a1;
  v4 = sub_25E4(&unk_1374A0, &qword_10BB30);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v211 = &v209 - v6;
  v217 = sub_1065A0();
  v216 = *(v217 - 8);
  v7 = *(v216 + 64);
  __chkstk_darwin(v217);
  v215 = &v209 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v227 = sub_1065E0();
  v226 = *(v227 - 8);
  v9 = *(v226 + 64);
  __chkstk_darwin(v227);
  v225 = &v209 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1053C0();
  v231 = *(v11 - 8);
  v12 = *(v231 + 64);
  v13 = __chkstk_darwin(v11);
  v213 = &v209 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v218 = &v209 - v16;
  __chkstk_darwin(v15);
  v228 = &v209 - v17;
  v221 = sub_105460();
  v220 = *(v221 - 8);
  v18 = *(v220 + 64);
  __chkstk_darwin(v221);
  v219 = &v209 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v224 = sub_105410();
  v222 = *(v224 - 8);
  v20 = *(v222 + 64);
  __chkstk_darwin(v224);
  v223 = &v209 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_106960();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  v25 = __chkstk_darwin(v22);
  v210 = &v209 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __chkstk_darwin(v25);
  v230 = &v209 - v28;
  v29 = __chkstk_darwin(v27);
  v234 = &v209 - v30;
  v31 = __chkstk_darwin(v29);
  v233 = &v209 - v32;
  __chkstk_darwin(v31);
  v236 = &v209 - v33;
  v242 = sub_1053E0();
  v34 = *(v242 - 8);
  v35 = *(v34 + 64);
  v36 = __chkstk_darwin(v242);
  v212 = &v209 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = __chkstk_darwin(v36);
  v214 = &v209 - v39;
  __chkstk_darwin(v38);
  v241 = &v209 - v40;
  v41 = sub_105E80();
  v42 = *(v41 - 8);
  v43 = *(v42 + 64);
  v44 = __chkstk_darwin(v41);
  v237 = &v209 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v44);
  v47 = &v209 - v46;
  if (qword_136C50 != -1)
  {
    swift_once();
  }

  v48 = sub_106D20();
  v243 = sub_135C4(v48, qword_137440);
  v49 = sub_106D10();
  v50 = sub_106FC0();
  v51 = os_log_type_enabled(v49, v50);
  v238 = v23;
  v239 = a2;
  v229 = v11;
  if (v51)
  {
    v52 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    v232 = v22;
    v54 = v53;
    v245 = v53;
    *v52 = 136315138;
    v244 = a2;
    sub_25E4(&qword_137560, &qword_107E38);
    v55 = sub_106E30();
    v57 = sub_722E8(v55, v56, &v245);

    *(v52 + 4) = v57;
    _os_log_impl(&dword_0, v49, v50, "Testing for incompatible parse for current IntentType: %s", v52, 0xCu);
    sub_2738(v54);
    v22 = v232;
  }

  v58 = *(v34 + 16);
  v59 = v240;
  v60 = v241;
  v61 = v242;
  v58(v241, v240, v242);
  v62 = (*(v34 + 88))(v60, v61);
  if (v62 == enum case for Parse.NLv3IntentOnly(_:))
  {
    (*(v34 + 96))(v60, v61);
LABEL_9:
    v64 = *(v42 + 32);
    v64(v47, v60, v41);
    v65 = v237;
    v64(v237, v47, v41);
    v66 = type metadata accessor for AlarmNLIntent();
    v67 = *(v66 + 48);
    v68 = *(v66 + 52);
    swift_allocObject();
    v69 = sub_B3800(v65);
    v70 = sub_B20AC();
    v71 = v238;
    if (v70 == 11)
    {

      v72 = sub_106D10();
      v73 = sub_106FC0();

      if (os_log_type_enabled(v72, v73))
      {
        v74 = swift_slowAlloc();
        v75 = swift_slowAlloc();
        v245 = v75;
        *v74 = 136315138;
        LOBYTE(v244) = *(v69 + OBJC_IVAR____TtC15AlarmFlowPlugin13AlarmNLIntent____lazy_storage___alarmVerb);
        sub_25E4(&qword_137568, &qword_10A8F0);
        v76 = sub_106E30();
        v78 = sub_722E8(v76, v77, &v245);

        *(v74 + 4) = v78;
        _os_log_impl(&dword_0, v72, v73, "nlv3 verb doesn't exist: %s", v74, 0xCu);
        sub_2738(v75);
      }

LABEL_13:
      v79 = sub_106800();
      return v79 != v239;
    }

    v81 = v233;
    sub_ADBA8(v70, v233);
    v82 = v236;
    (*(v71 + 32))(v236, v81, v22);
    v83 = *(v71 + 16);
    v84 = v234;
    v83(v234, v82, v22);
    v85 = sub_106D10();
    v86 = sub_106FC0();
    if (os_log_type_enabled(v85, v86))
    {
      v87 = swift_slowAlloc();
      v242 = v69;
      v88 = v22;
      v89 = v87;
      v90 = swift_slowAlloc();
      v245 = v90;
      *v89 = 136315138;
      v83(v230, v84, v88);
      v91 = sub_106E30();
      v93 = v92;
      v94 = *(v71 + 8);
      v94(v84, v88);
      v95 = sub_722E8(v91, v93, &v245);

      *(v89 + 4) = v95;
      _os_log_impl(&dword_0, v85, v86, "nlv3 using verb: %s", v89, 0xCu);
      sub_2738(v90);
      v82 = v236;

      v22 = v88;
    }

    else
    {

      v94 = *(v71 + 8);
      v94(v84, v22);
    }

    v108 = v239;
    v109 = sub_8A634(v82, v235);
    if (v109 && v109 != v108)
    {
      v232 = v22;
      v110 = v109;
      v111 = sub_106D10();
      v112 = sub_106FC0();
      if (os_log_type_enabled(v111, v112))
      {
        v113 = v108;
        v114 = swift_slowAlloc();
        v245 = swift_slowAlloc();
        *v114 = 136315394;
        v244 = v113;
        sub_25E4(&qword_137560, &qword_107E38);
        v115 = sub_106E30();
        v117 = sub_722E8(v115, v116, &v245);

        *(v114 + 4) = v117;
        *(v114 + 12) = 2080;
        v244 = v110;
        v118 = sub_106E30();
        v120 = sub_722E8(v118, v119, &v245);

        *(v114 + 14) = v120;
        _os_log_impl(&dword_0, v111, v112, "nlv3 incompatible parse expecting type %s, received %s", v114, 0x16u);
        swift_arrayDestroy();

        v121 = v236;
      }

      else
      {

        v121 = v82;
      }

      v94(v121, v232);
      return 1;
    }

    v122 = sub_106D10();
    v123 = sub_106FC0();
    if (os_log_type_enabled(v122, v123))
    {
      v124 = swift_slowAlloc();
      *v124 = 0;
      _os_log_impl(&dword_0, v122, v123, "nlv3 parse generated unknown or matching intent type", v124, 2u);
    }

    else
    {
    }

    v94(v82, v22);
    return 0;
  }

  if (v62 == enum case for Parse.NLv3IntentPlusServerConversion(_:))
  {
    (*(v34 + 96))(v60, v61);
    v63 = *(v60 + *(sub_25E4(&qword_13B010, &unk_1087A0) + 48));

    goto LABEL_9;
  }

  if (v62 != enum case for Parse.directInvocation(_:))
  {
    if (v62 == enum case for Parse.NLv4IntentOnly(_:))
    {
      (*(v34 + 96))(v60, v61);
      v125 = *v60;
      swift_getObjectType();
      if (sub_107000())
      {
        v126 = v230;
        sub_274CC(v230);
        v127 = sub_8A634(v126, v235);
        (*(v238 + 8))(v126, v22);
        if (v127 && v127 != v239)
        {
          v128 = sub_106D10();
          v129 = sub_106FC0();
          if (os_log_type_enabled(v128, v129))
          {
            v130 = swift_slowAlloc();
            v245 = swift_slowAlloc();
            *v130 = 136315394;
            v244 = v239;
            sub_25E4(&qword_137560, &qword_107E38);
            v131 = sub_106E30();
            v133 = sub_722E8(v131, v132, &v245);

            *(v130 + 4) = v133;
            *(v130 + 12) = 2080;
            v244 = v127;
            v134 = sub_106E30();
            v136 = sub_722E8(v134, v135, &v245);

            *(v130 + 14) = v136;
            _os_log_impl(&dword_0, v128, v129, "nlv4 incompatible parse expecting type %s, received %s", v130, 0x16u);
            swift_arrayDestroy();
          }

          swift_unknownObjectRelease();

          return 1;
        }
      }

      v176 = sub_106D10();
      v177 = sub_106FC0();
      if (os_log_type_enabled(v176, v177))
      {
        v178 = swift_slowAlloc();
        *v178 = 0;
        _os_log_impl(&dword_0, v176, v177, "nlv4 parse generated unknown or matching intent type", v178, 2u);
      }

      swift_unknownObjectRelease();
    }

    else if (v62 == enum case for Parse.uso(_:))
    {
      (*(v34 + 96))(v60, v61);
      v141 = v222;
      v142 = v223;
      v143 = v224;
      (*(v222 + 32))(v223, v60, v224);
      v144 = v219;
      sub_105400();
      v145 = sub_105440();
      (*(v220 + 8))(v144, v221);
      if (v145)
      {
        v146 = v230;
        sub_274CC(v230);
        v147 = sub_8A634(v146, v235);
        (*(v238 + 8))(v146, v22);
        v148 = v239;
        if (v147 && v147 != v239)
        {
          v149 = sub_106D10();
          v150 = sub_106FC0();
          if (os_log_type_enabled(v149, v150))
          {
            v151 = v141;
            v152 = v148;
            v153 = swift_slowAlloc();
            v245 = swift_slowAlloc();
            *v153 = 136315394;
            v244 = v152;
            sub_25E4(&qword_137560, &qword_107E38);
            v154 = sub_106E30();
            v156 = sub_722E8(v154, v155, &v245);

            *(v153 + 4) = v156;
            *(v153 + 12) = 2080;
            v244 = v147;
            v157 = sub_106E30();
            v159 = sub_722E8(v157, v158, &v245);

            *(v153 + 14) = v159;
            _os_log_impl(&dword_0, v149, v150, "uso incompatible parse expecting type %s, received %s", v153, 0x16u);
            swift_arrayDestroy();

            (*(v151 + 8))(v223, v224);
          }

          else
          {

            (*(v141 + 8))(v142, v143);
          }

          return 1;
        }
      }

      v189 = sub_106D10();
      v190 = sub_106FC0();
      if (os_log_type_enabled(v189, v190))
      {
        v191 = swift_slowAlloc();
        *v191 = 0;
        _os_log_impl(&dword_0, v189, v190, "uso parse generated unknown or matching intent type", v191, 2u);
      }

      (*(v141 + 8))(v142, v143);
    }

    else if (v62 == enum case for Parse.ifClientAction(_:))
    {
      (*(v34 + 8))(v60, v61);
    }

    else
    {
      v179 = v214;
      v58(v214, v59, v61);
      v180 = sub_106D10();
      v181 = sub_106FB0();
      if (os_log_type_enabled(v180, v181))
      {
        v182 = swift_slowAlloc();
        v183 = swift_slowAlloc();
        v245 = v183;
        *v182 = 136315138;
        v58(v212, v179, v242);
        v184 = sub_106E30();
        v186 = v185;
        v187 = *(v34 + 8);
        v187(v179, v242);
        v188 = sub_722E8(v184, v186, &v245);

        *(v182 + 4) = v188;
        _os_log_impl(&dword_0, v180, v181, "Received a currently un-handled input for incompatibility check (add more parses): %s", v182, 0xCu);
        sub_2738(v183);
        v61 = v242;

        v60 = v241;
      }

      else
      {

        v187 = *(v34 + 8);
        v187(v179, v61);
      }

      v187(v60, v61);
    }

    return 0;
  }

  (*(v34 + 96))(v60, v61);
  v96 = v228;
  v97 = v229;
  (*(v231 + 32))(v228, v60);
  v98 = v96;
  v99 = sub_1053A0();
  v101 = v100;
  v102 = v226;
  v103 = v225;
  v104 = v227;
  (*(v226 + 104))(v225, enum case for DirectInvocationUtils.Alarm.URI.stopAlarm(_:), v227);
  v105 = sub_1065D0();
  v107 = v106;
  (*(v102 + 8))(v103, v104);
  if (v99 == v105 && v101 == v107)
  {

LABEL_42:
    v138 = sub_106D10();
    v139 = sub_106FC0();
    if (os_log_type_enabled(v138, v139))
    {
      v140 = swift_slowAlloc();
      *v140 = 0;
      _os_log_impl(&dword_0, v138, v139, "Received stop direct invocation, comparing to DismissAlarmHalIntent", v140, 2u);
    }

    (*(v231 + 8))(v98, v97);
    v79 = sub_106910();
    return v79 != v239;
  }

  v137 = sub_107370();

  if (v137)
  {
    goto LABEL_42;
  }

  v160 = sub_1053B0();
  v161 = v97;
  v162 = v98;
  v163 = v231;
  if (!v160)
  {
LABEL_73:
    v192 = *(v163 + 16);
    v193 = v218;
    v192(v218, v162, v161);
    v194 = sub_106D10();
    v195 = sub_106FB0();
    if (os_log_type_enabled(v194, v195))
    {
      v196 = swift_slowAlloc();
      v243 = swift_slowAlloc();
      v245 = v243;
      *v196 = 136315138;
      v192(v213, v193, v161);
      v197 = sub_106E30();
      v199 = v198;
      v200 = *(v163 + 8);
      v200(v193, v161);
      v201 = sub_722E8(v197, v199, &v245);

      *(v196 + 4) = v201;
      _os_log_impl(&dword_0, v194, v195, "Received unexpected directInvocation in FlowStrategy: %s", v196, 0xCu);
      sub_2738(v243);

      v200(v162, v161);
    }

    else
    {

      v202 = *(v163 + 8);
      v202(v193, v161);
      v202(v162, v161);
    }

    return 0;
  }

  v164 = v160;
  v165 = v216;
  v166 = v215;
  v167 = v217;
  (*(v216 + 104))(v215, enum case for DirectInvocationUtils.Alarm.UserInfoKey.verb(_:), v217);
  v168 = sub_106590();
  v170 = v169;
  (*(v165 + 8))(v166, v167);
  if (!*(v164 + 16))
  {

    goto LABEL_72;
  }

  v171 = sub_32658(v168, v170);
  v173 = v172;

  if ((v173 & 1) == 0)
  {
LABEL_72:

    goto LABEL_73;
  }

  sub_135FC(*(v164 + 56) + 32 * v171, &v245);

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_73;
  }

  v174 = v211;
  sub_106940();
  v175 = v238;
  if ((*(v238 + 48))(v174, 1, v22) == 1)
  {
    sub_16F70(v174, &unk_1374A0, &qword_10BB30);
    goto LABEL_73;
  }

  v203 = v210;
  (*(v175 + 32))(v210, v174, v22);
  v204 = sub_8A634(v203, v235);
  if (!v204)
  {
    v206 = sub_106D10();
    v207 = sub_106FC0();
    if (os_log_type_enabled(v206, v207))
    {
      v208 = swift_slowAlloc();
      *v208 = 0;
      _os_log_impl(&dword_0, v206, v207, "direct invocation parse generated unknown intent type, comparing to CreateAlarmIntent", v208, 2u);
    }

    (*(v175 + 8))(v203, v22);
    (*(v163 + 8))(v162, v161);
    goto LABEL_13;
  }

  v205 = v204;
  (*(v175 + 8))(v203, v22);
  (*(v163 + 8))(v162, v161);
  return v205 != v239;
}

uint64_t sub_169D8(uint64_t a1, void *a2, uint64_t a3)
{
  v45 = a2;
  v42[1] = a1;
  v4 = sub_104C30();
  v43 = *(v4 - 8);
  v44 = v4;
  v5 = *(v43 + 64);
  __chkstk_darwin(v4);
  v7 = v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_25E4(&qword_1374F0, &qword_1080F0);
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8 - 8);
  v12 = v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = v42 - v13;
  sub_14994(a3, v42 - v13, &qword_1374F0, &qword_1080F0);
  v15 = sub_106630();
  v16 = *(v15 - 8);
  v17 = *(v16 + 48);
  if (v17(v14, 1, v15) == 1)
  {
    sub_16F70(v14, &qword_1374F0, &qword_1080F0);
LABEL_8:
    if (qword_136C50 != -1)
    {
      swift_once();
    }

    v22 = sub_106D20();
    sub_135C4(v22, qword_137440);
    v23 = sub_106D10();
    v24 = sub_106FC0();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_0, v23, v24, "makeIntentExecutionBehavior: No eligible devices for remote execution found. Continuing local execution.", v25, 2u);
    }

    sub_104C80();

    v26 = v45;
    sub_1069B0();
    sub_16F28(0, &qword_137570, INIntent_ptr);
    v27 = v26;
    sub_104C20();
    v28 = sub_104C70();
    (*(v43 + 8))(v7, v44);
    return v28;
  }

  v18 = sub_106520();
  v19 = *(v16 + 8);
  v19(v14, v15);
  if (!v18)
  {
    goto LABEL_8;
  }

  sub_14994(a3, v12, &qword_1374F0, &qword_1080F0);
  if (v17(v12, 1, v15) == 1)
  {
    sub_16F70(v12, &qword_1374F0, &qword_1080F0);
  }

  else
  {
    sub_106610();
    v21 = v20;
    v19(v12, v15);
    if (v21)
    {

      goto LABEL_8;
    }
  }

  if (qword_136C50 != -1)
  {
    swift_once();
  }

  v29 = sub_106D20();
  sub_135C4(v29, qword_137440);
  v30 = v18;
  v31 = v45;
  v32 = sub_106D10();
  v33 = sub_106FC0();

  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v46 = v36;
    *v34 = 136315394;
    v37 = sub_106C40();
    v39 = sub_722E8(v37, v38, &v46);

    *(v34 + 4) = v39;
    *(v34 + 12) = 2112;
    *(v34 + 14) = v31;
    *v35 = v31;
    v40 = v31;
    _os_log_impl(&dword_0, v32, v33, "makeIntentExecutionBehavior: Handle on target device: %s, for intent: %@", v34, 0x16u);
    sub_16F70(v35, &qword_137578, &unk_10B4E0);

    sub_2738(v36);
  }

  sub_104C80();
  v28 = sub_104C60();

  return v28;
}

uint64_t sub_16F28(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_16F70(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_25E4(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_16FD0(unint64_t a1)
{
  v2 = *v1;
  if (a1 >> 62)
  {
    v5 = a1;
    v6 = sub_107270();
    a1 = v5;
    if (v6)
    {
      goto LABEL_3;
    }

LABEL_8:
    v4 = 0;
    goto LABEL_9;
  }

  if (!*(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)))
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((a1 & 0xC000000000000001) != 0)
  {
    v3 = sub_1071C0();
  }

  else
  {
    if (!*(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)))
    {
      __break(1u);
      return;
    }

    v3 = *(a1 + 32);
  }

  v4 = v3;
LABEL_9:
  v7 = v4;
  [v2 setAlarm:?];
}

void sub_17098()
{
  v1 = *v0;
  sub_106AA0();
  isa = sub_106ED0().super.isa;
  [v1 setAlarms:isa];
}

uint64_t sub_17108()
{
  v0 = sub_106D20();
  sub_14930(v0, qword_137580);
  sub_135C4(v0, qword_137580);
  return sub_106A80();
}

Swift::Int sub_1715C()
{
  sub_107400();
  sub_107410(0);
  return sub_107420();
}

Swift::Int sub_171C8()
{
  sub_107400();
  sub_107410(0);
  return sub_107420();
}

uint64_t sub_17218(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  v4 = sub_104D60();
  v3[6] = v4;
  v5 = *(v4 - 8);
  v3[7] = v5;
  v6 = *(v5 + 64) + 15;
  v3[8] = swift_task_alloc();
  v3[9] = swift_task_alloc();
  v3[10] = swift_task_alloc();
  v7 = *(*(sub_25E4(&qword_137598, &unk_107EB0) - 8) + 64) + 15;
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();
  found = type metadata accessor for ErrorNotFoundParameters(0);
  v3[14] = found;
  v9 = *(*(found - 8) + 64) + 15;
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();
  v10 = *(*(sub_106200() - 8) + 64) + 15;
  v3[18] = swift_task_alloc();
  v11 = sub_106D20();
  v3[19] = v11;
  v12 = *(v11 - 8);
  v3[20] = v12;
  v13 = *(v12 + 64) + 15;
  v3[21] = swift_task_alloc();
  v14 = sub_106300();
  v3[22] = v14;
  v15 = *(v14 - 8);
  v3[23] = v15;
  v16 = *(v15 + 64) + 15;
  v3[24] = swift_task_alloc();
  v17 = sub_106320();
  v3[25] = v17;
  v18 = *(v17 - 8);
  v3[26] = v18;
  v19 = *(v18 + 64) + 15;
  v3[27] = swift_task_alloc();
  v3[28] = swift_task_alloc();
  v3[29] = swift_task_alloc();
  v20 = sub_104FF0();
  v3[30] = v20;
  v21 = *(v20 - 8);
  v3[31] = v21;
  v22 = *(v21 + 64) + 15;
  v3[32] = swift_task_alloc();

  return _swift_task_switch(sub_17540, 0, 0);
}

uint64_t sub_17540()
{
  v107 = v0;
  if (qword_136C58 != -1)
  {
    swift_once();
  }

  v1 = v0[5];
  v2 = sub_135C4(v0[19], qword_137580);
  v3 = v1;
  v4 = sub_106D10();
  v5 = sub_106FC0();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[5];
    v7 = swift_slowAlloc();
    *v7 = 134217984;
    *(v7 + 4) = [v6 unsupportedReason];

    _os_log_impl(&dword_0, v4, v5, "AlarmOutputFactory.makeUnsupportedValueOutput() called with unsupportedReason: %ld", v7, 0xCu);

    v8 = v0[5];
  }

  else
  {

    v8 = v0[5];
    v4 = v8;
  }

  [v8 unsupportedReason];
  v9 = sub_106860();
  if (v10)
  {
    v11 = sub_106D10();
    v12 = sub_106FB0();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_0, v11, v12, "AlarmOutputFactory.makeUnsupportedValueOutput got no error reason!", v13, 2u);
    }

    sub_19F30();
    swift_allocError();
    swift_willThrow();
    v14 = v0[32];
    v16 = v0[28];
    v15 = v0[29];
    v17 = v0[27];
    v18 = v0[24];
    v19 = v0[21];
    v20 = v0[17];
    v21 = v0[18];
    v22 = v0[15];
    v23 = v0[16];
    v98 = v0[13];
    v99 = v0[12];
    v100 = v0[11];
    v101 = v0[10];
    v102 = v0[9];
    v103 = v0[8];

    v24 = v0[1];

    return v24();
  }

  else
  {
    v26 = v9;
    v27 = v0[32];
    sub_104FE0();
    if (v26 == 1)
    {
      v43 = v0[28];
      v44 = v0[21];
      v46 = v0[19];
      v45 = v0[20];
      v47 = v0[4];
      (*(v0[23] + 104))(v0[24], enum case for SiriTimeMeasurement.LogDescription.dialogPatternResponseTime(_:), v0[22]);
      (*(v45 + 16))(v44, v2, v46);
      mach_absolute_time();
      sub_106330();
      if (v47)
      {
        v48 = v0[4];
        v49 = sub_CF1C4();
      }

      else
      {
        v49 = _swiftEmptyArrayStorage;
      }

      v64 = v0[18];
      v65 = v0[16];
      v66 = v0[14];
      type metadata accessor for ErrorCATPatternsExecutor(0);
      sub_1061E0();
      v0[40] = sub_1060D0();
      v67 = sub_106160();
      v68 = *(*(v67 - 8) + 56);
      v69 = 1;
      v68(v65, 1, 1, v67);
      *(v65 + v66[5]) = 0;
      *(v65 + v66[6]) = v49;
      v70 = v66[7];
      *(v65 + v70) = 0;
      if (v47)
      {
        v71 = v0[4];
        *(v65 + v70) = sub_1CE68();
        v72 = [v71 label];
        if (v72)
        {
          v73 = v0[12];
          v74 = v72;
          sub_106E20();

          sub_106E50();

          v69 = 0;
        }

        else
        {
          v69 = 1;
        }
      }

      v92 = v0[16];
      v93 = v0[12];
      v68(v93, v69, 1, v67);
      sub_1A814(v93, v92);
      v88 = sub_1FB6C();
      v0[41] = v88;
      v94 = *(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + 1);
      v105 = (&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
      v90 = swift_task_alloc();
      v0[42] = v90;
      *v90 = v0;
      v91 = sub_185E0;
    }

    else if (v26 == 2)
    {
      v28 = v0[29];
      v29 = v0[21];
      v31 = v0[19];
      v30 = v0[20];
      v32 = v0[17];
      v33 = v0[18];
      v34 = v0[14];
      v104 = v0[4];
      (*(v0[23] + 104))(v0[24], enum case for SiriTimeMeasurement.LogDescription.dialogPatternResponseTime(_:), v0[22]);
      (*(v30 + 16))(v29, v2, v31);
      mach_absolute_time();
      sub_106330();
      type metadata accessor for ErrorCATPatternsExecutor(0);
      sub_1061E0();
      v0[33] = sub_1060D0();
      v35 = sub_106160();
      v36 = *(*(v35 - 8) + 56);
      v37 = 1;
      v36(v32, 1, 1, v35);
      *(v32 + v34[5]) = 1;
      *(v32 + v34[6]) = _swiftEmptyArrayStorage;
      v38 = v34[7];
      *(v32 + v38) = 0;
      if (v104)
      {
        v39 = v0[4];
        *(v32 + v38) = sub_1CE68();
        v40 = [v39 label];
        if (v40)
        {
          v41 = v0[13];
          v42 = v40;
          sub_106E20();

          sub_106E50();

          v37 = 0;
        }

        else
        {
          v37 = 1;
        }
      }

      v86 = v0[17];
      v87 = v0[13];
      v36(v87, v37, 1, v35);
      sub_1A814(v87, v86);
      v88 = sub_1FB6C();
      v0[34] = v88;
      v89 = *(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + 1);
      v105 = (&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
      v90 = swift_task_alloc();
      v0[35] = v90;
      *v90 = v0;
      v91 = sub_17F74;
    }

    else
    {
      v50 = sub_106D10();
      v51 = sub_106FC0();
      if (os_log_type_enabled(v50, v51))
      {
        v52 = swift_slowAlloc();
        v53 = swift_slowAlloc();
        v106 = v53;
        *v52 = 136315138;
        v0[2] = v26;
        v54 = sub_106E30();
        v56 = sub_722E8(v54, v55, &v106);

        *(v52 + 4) = v56;
        _os_log_impl(&dword_0, v50, v51, "#Response Handling unknown SearchAlarmAlarmsUnsupportedReason: %s", v52, 0xCu);
        sub_2738(v53);
      }

      v57 = v0[27];
      v58 = v0[21];
      v60 = v0[19];
      v59 = v0[20];
      v61 = v0[4];
      (*(v0[23] + 104))(v0[24], enum case for SiriTimeMeasurement.LogDescription.dialogPatternResponseTime(_:), v0[22]);
      (*(v59 + 16))(v58, v2, v60);
      mach_absolute_time();
      sub_106330();
      if (v61)
      {
        v62 = v0[4];
        v63 = sub_CF1C4();
      }

      else
      {
        v63 = _swiftEmptyArrayStorage;
      }

      v75 = v0[18];
      v76 = v0[14];
      v77 = v0[15];
      type metadata accessor for ErrorCATPatternsExecutor(0);
      sub_1061E0();
      v0[47] = sub_1060D0();
      v78 = sub_106160();
      v79 = *(*(v78 - 8) + 56);
      v80 = 1;
      v79(v77, 1, 1, v78);
      *(v77 + v76[5]) = 0;
      *(v77 + v76[6]) = v63;
      v81 = v76[7];
      *(v77 + v81) = 0;
      if (v61)
      {
        v82 = v0[4];
        *(v77 + v81) = sub_1CE68();
        v83 = [v82 label];
        if (v83)
        {
          v84 = v0[11];
          v85 = v83;
          sub_106E20();

          sub_106E50();

          v80 = 0;
        }

        else
        {
          v80 = 1;
        }
      }

      v95 = v0[15];
      v96 = v0[11];
      v79(v96, v80, 1, v78);
      sub_1A814(v96, v95);
      v88 = sub_1FB6C();
      v0[48] = v88;
      v97 = *(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + 1);
      v105 = (&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
      v90 = swift_task_alloc();
      v0[49] = v90;
      *v90 = v0;
      v91 = sub_18C54;
    }

    v90[1] = v91;

    return v105(0x6F4E23726F727245, 0xEE00646E756F4674, v88);
  }
}

uint64_t sub_17F74(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 280);
  v6 = *v2;
  *(v4 + 288) = a1;
  *(v4 + 296) = v1;

  v7 = *(v3 + 272);

  if (v1)
  {
    v8 = sub_182FC;
  }

  else
  {
    v8 = sub_180B0;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_180B0()
{
  v1 = v0[33];
  v2 = v0[17];
  v3 = v0[10];

  sub_1A884(v2);
  sub_104D20();
  v4 = async function pointer to PatternExecutionResult.generateStandardPatternOutput(phase:contextUpdate:measure:dismissAssistant:)[1];
  v5 = swift_task_alloc();
  v0[38] = v5;
  *v5 = v0;
  v5[1] = sub_1817C;
  v6 = v0[36];
  v7 = v0[32];
  v8 = v0[29];
  v9 = v0[10];
  v10 = v0[3];

  return PatternExecutionResult.generateStandardPatternOutput(phase:contextUpdate:measure:dismissAssistant:)(v10, v9, v7, v8, 0);
}

uint64_t sub_1817C()
{
  v2 = *v1;
  v3 = *(*v1 + 304);
  v4 = *v1;
  *(*v1 + 312) = v0;

  v5 = v2[36];
  (*(v2[7] + 8))(v2[10], v2[6]);

  if (v0)
  {
    v6 = sub_192C8;
  }

  else
  {
    v6 = sub_18480;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_182FC()
{
  v2 = v0[32];
  v1 = v0[33];
  v3 = v0[30];
  v4 = v0[31];
  v5 = v0[29];
  v6 = v0[25];
  v7 = v0[26];
  v8 = v0[17];

  sub_1A884(v8);
  (*(v7 + 8))(v5, v6);
  (*(v4 + 8))(v2, v3);
  v27 = v0[37];
  v9 = v0[32];
  v11 = v0[28];
  v10 = v0[29];
  v12 = v0[27];
  v13 = v0[24];
  v14 = v0[21];
  v15 = v0[17];
  v16 = v0[18];
  v18 = v0[15];
  v17 = v0[16];
  v21 = v0[13];
  v22 = v0[12];
  v23 = v0[11];
  v24 = v0[10];
  v25 = v0[9];
  v26 = v0[8];

  v19 = v0[1];

  return v19();
}

uint64_t sub_18480()
{
  v2 = v0[31];
  v1 = v0[32];
  v3 = v0[30];
  (*(v0[26] + 8))(v0[29], v0[25]);
  (*(v2 + 8))(v1, v3);
  v4 = v0[32];
  v6 = v0[28];
  v5 = v0[29];
  v7 = v0[27];
  v8 = v0[24];
  v9 = v0[21];
  v11 = v0[17];
  v10 = v0[18];
  v12 = v0[15];
  v13 = v0[16];
  v16 = v0[13];
  v17 = v0[12];
  v18 = v0[11];
  v19 = v0[10];
  v20 = v0[9];
  v21 = v0[8];

  v14 = v0[1];

  return v14();
}

uint64_t sub_185E0(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 336);
  v6 = *v2;
  *(v4 + 344) = a1;
  *(v4 + 352) = v1;

  v7 = *(v3 + 328);

  if (v1)
  {
    v8 = sub_18968;
  }

  else
  {
    v8 = sub_1871C;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_1871C()
{
  v1 = v0[40];
  v2 = v0[16];
  v3 = v0[9];

  sub_1A884(v2);
  sub_104D20();
  v4 = async function pointer to PatternExecutionResult.generateStandardPatternOutput(phase:contextUpdate:measure:dismissAssistant:)[1];
  v5 = swift_task_alloc();
  v0[45] = v5;
  *v5 = v0;
  v5[1] = sub_187E8;
  v6 = v0[43];
  v7 = v0[32];
  v8 = v0[28];
  v9 = v0[9];
  v10 = v0[3];

  return PatternExecutionResult.generateStandardPatternOutput(phase:contextUpdate:measure:dismissAssistant:)(v10, v9, v7, v8, 0);
}

uint64_t sub_187E8()
{
  v2 = *v1;
  v3 = *(*v1 + 360);
  v4 = *v1;
  *(*v1 + 368) = v0;

  v5 = v2[43];
  (*(v2[7] + 8))(v2[9], v2[6]);

  if (v0)
  {
    v6 = sub_19430;
  }

  else
  {
    v6 = sub_18AF0;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_18968()
{
  v1 = v0[40];
  v3 = v0[31];
  v2 = v0[32];
  v4 = v0[30];
  v5 = v0[28];
  v6 = v0[25];
  v7 = v0[26];
  v8 = v0[16];

  sub_1A884(v8);
  (*(v7 + 8))(v5, v6);
  (*(v3 + 8))(v2, v4);
  v27 = v0[44];
  v9 = v0[32];
  v11 = v0[28];
  v10 = v0[29];
  v12 = v0[27];
  v13 = v0[24];
  v14 = v0[21];
  v15 = v0[17];
  v16 = v0[18];
  v18 = v0[15];
  v17 = v0[16];
  v21 = v0[13];
  v22 = v0[12];
  v23 = v0[11];
  v24 = v0[10];
  v25 = v0[9];
  v26 = v0[8];

  v19 = v0[1];

  return v19();
}

uint64_t sub_18AF0()
{
  v2 = v0[31];
  v1 = v0[32];
  v3 = v0[30];
  (*(v0[26] + 8))(v0[28], v0[25]);
  (*(v2 + 8))(v1, v3);
  v4 = v0[32];
  v6 = v0[28];
  v5 = v0[29];
  v7 = v0[27];
  v8 = v0[24];
  v9 = v0[21];
  v11 = v0[17];
  v10 = v0[18];
  v12 = v0[15];
  v13 = v0[16];
  v16 = v0[13];
  v17 = v0[12];
  v18 = v0[11];
  v19 = v0[10];
  v20 = v0[9];
  v21 = v0[8];

  v14 = v0[1];

  return v14();
}

uint64_t sub_18C54(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 392);
  v6 = *v2;
  *(v4 + 400) = a1;
  *(v4 + 408) = v1;

  v7 = *(v3 + 384);

  if (v1)
  {
    v8 = sub_18FDC;
  }

  else
  {
    v8 = sub_18D90;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_18D90()
{
  v1 = v0[47];
  v2 = v0[15];
  v3 = v0[8];

  sub_1A884(v2);
  sub_104D20();
  v4 = async function pointer to PatternExecutionResult.generateStandardPatternOutput(phase:contextUpdate:measure:dismissAssistant:)[1];
  v5 = swift_task_alloc();
  v0[52] = v5;
  *v5 = v0;
  v5[1] = sub_18E5C;
  v6 = v0[50];
  v7 = v0[32];
  v8 = v0[27];
  v9 = v0[8];
  v10 = v0[3];

  return PatternExecutionResult.generateStandardPatternOutput(phase:contextUpdate:measure:dismissAssistant:)(v10, v9, v7, v8, 0);
}

uint64_t sub_18E5C()
{
  v2 = *v1;
  v3 = *(*v1 + 416);
  v4 = *v1;
  *(*v1 + 424) = v0;

  v5 = v2[50];
  (*(v2[7] + 8))(v2[8], v2[6]);

  if (v0)
  {
    v6 = sub_1959C;
  }

  else
  {
    v6 = sub_19164;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_18FDC()
{
  v1 = v0[47];
  v3 = v0[31];
  v2 = v0[32];
  v4 = v0[30];
  v6 = v0[26];
  v5 = v0[27];
  v7 = v0[25];
  v8 = v0[15];

  sub_1A884(v8);
  (*(v6 + 8))(v5, v7);
  (*(v3 + 8))(v2, v4);
  v27 = v0[51];
  v9 = v0[32];
  v11 = v0[28];
  v10 = v0[29];
  v12 = v0[27];
  v13 = v0[24];
  v14 = v0[21];
  v15 = v0[17];
  v16 = v0[18];
  v18 = v0[15];
  v17 = v0[16];
  v21 = v0[13];
  v22 = v0[12];
  v23 = v0[11];
  v24 = v0[10];
  v25 = v0[9];
  v26 = v0[8];

  v19 = v0[1];

  return v19();
}

uint64_t sub_19164()
{
  v2 = v0[31];
  v1 = v0[32];
  v3 = v0[30];
  (*(v0[26] + 8))(v0[27], v0[25]);
  (*(v2 + 8))(v1, v3);
  v4 = v0[32];
  v6 = v0[28];
  v5 = v0[29];
  v7 = v0[27];
  v8 = v0[24];
  v9 = v0[21];
  v11 = v0[17];
  v10 = v0[18];
  v12 = v0[15];
  v13 = v0[16];
  v16 = v0[13];
  v17 = v0[12];
  v18 = v0[11];
  v19 = v0[10];
  v20 = v0[9];
  v21 = v0[8];

  v14 = v0[1];

  return v14();
}

uint64_t sub_192C8()
{
  v2 = v0[31];
  v1 = v0[32];
  v3 = v0[30];
  (*(v0[26] + 8))(v0[29], v0[25]);
  (*(v2 + 8))(v1, v3);
  v22 = v0[39];
  v4 = v0[32];
  v6 = v0[28];
  v5 = v0[29];
  v7 = v0[27];
  v8 = v0[24];
  v9 = v0[21];
  v10 = v0[17];
  v11 = v0[18];
  v13 = v0[15];
  v12 = v0[16];
  v16 = v0[13];
  v17 = v0[12];
  v18 = v0[11];
  v19 = v0[10];
  v20 = v0[9];
  v21 = v0[8];

  v14 = v0[1];

  return v14();
}

uint64_t sub_19430()
{
  v2 = v0[31];
  v1 = v0[32];
  v3 = v0[30];
  (*(v0[26] + 8))(v0[28], v0[25]);
  (*(v2 + 8))(v1, v3);
  v22 = v0[46];
  v4 = v0[32];
  v6 = v0[28];
  v5 = v0[29];
  v7 = v0[27];
  v8 = v0[24];
  v9 = v0[21];
  v10 = v0[17];
  v11 = v0[18];
  v13 = v0[15];
  v12 = v0[16];
  v16 = v0[13];
  v17 = v0[12];
  v18 = v0[11];
  v19 = v0[10];
  v20 = v0[9];
  v21 = v0[8];

  v14 = v0[1];

  return v14();
}

uint64_t sub_1959C()
{
  v2 = v0[31];
  v1 = v0[32];
  v3 = v0[30];
  (*(v0[26] + 8))(v0[27], v0[25]);
  (*(v2 + 8))(v1, v3);
  v22 = v0[53];
  v4 = v0[32];
  v6 = v0[28];
  v5 = v0[29];
  v7 = v0[27];
  v8 = v0[24];
  v9 = v0[21];
  v10 = v0[17];
  v11 = v0[18];
  v13 = v0[15];
  v12 = v0[16];
  v16 = v0[13];
  v17 = v0[12];
  v18 = v0[11];
  v19 = v0[10];
  v20 = v0[9];
  v21 = v0[8];

  v14 = v0[1];

  return v14();
}

uint64_t sub_19708(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = *(*(sub_106200() - 8) + 64) + 15;
  v3[5] = swift_task_alloc();
  v5 = sub_106D20();
  v3[6] = v5;
  v6 = *(v5 - 8);
  v3[7] = v6;
  v7 = *(v6 + 64) + 15;
  v3[8] = swift_task_alloc();
  v8 = sub_106300();
  v3[9] = v8;
  v9 = *(v8 - 8);
  v3[10] = v9;
  v10 = *(v9 + 64) + 15;
  v3[11] = swift_task_alloc();
  v11 = sub_106320();
  v3[12] = v11;
  v12 = *(v11 - 8);
  v3[13] = v12;
  v13 = *(v12 + 64) + 15;
  v3[14] = swift_task_alloc();

  return _swift_task_switch(sub_198B0, 0, 0);
}

uint64_t sub_198B0()
{
  (*(v0[10] + 104))(v0[11], enum case for SiriTimeMeasurement.LogDescription.dialogPatternResponseTime(_:), v0[9]);
  if (qword_136C58 != -1)
  {
    swift_once();
  }

  v1 = v0[14];
  v2 = v0[11];
  v4 = v0[7];
  v3 = v0[8];
  v5 = v0[6];
  v6 = sub_135C4(v5, qword_137580);
  (*(v4 + 16))(v3, v6, v5);
  mach_absolute_time();
  sub_106330();
  type metadata accessor for AlarmBaseCATPatternsExecutor(0);
  sub_1061E0();
  v0[15] = sub_1060D0();
  v7 = *(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + 1);
  v10 = &async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:);
  v8 = swift_task_alloc();
  v0[16] = v8;
  *v8 = v0;
  v8[1] = sub_19A54;

  return (v10)(0xD000000000000013, 0x800000000010C480, _swiftEmptyArrayStorage);
}

uint64_t sub_19A54(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 128);
  v6 = *v2;
  *(*v2 + 136) = v1;

  if (v1)
  {

    return _swift_task_switch(sub_19D20, 0, 0);
  }

  else
  {
    v7 = v4[15];
    v4[18] = a1;

    v8 = async function pointer to PatternExecutionResult.generateStandardPatternOutput(phase:contextUpdate:measure:dismissAssistant:)[1];
    v9 = swift_task_alloc();
    v4[19] = v9;
    *v9 = v6;
    v9[1] = sub_19BF4;
    v10 = v4[14];
    v11 = v4[3];
    v12 = v4[4];
    v13 = v4[2];

    return PatternExecutionResult.generateStandardPatternOutput(phase:contextUpdate:measure:dismissAssistant:)(v13, v11, v12, v10, 0);
  }
}

uint64_t sub_19BF4()
{
  v2 = *(*v1 + 152);
  v3 = *(*v1 + 144);
  v6 = *v1;
  *(*v1 + 160) = v0;

  if (v0)
  {
    v4 = sub_19E80;
  }

  else
  {
    v4 = sub_19DD8;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_19D20()
{
  v1 = v0[15];

  v2 = v0[17];
  v3 = v0[11];
  v4 = v0[8];
  v5 = v0[5];
  (*(v0[13] + 8))(v0[14], v0[12]);

  v6 = v0[1];

  return v6();
}

uint64_t sub_19DD8()
{
  v1 = v0[11];
  v2 = v0[8];
  v3 = v0[5];
  (*(v0[13] + 8))(v0[14], v0[12]);

  v4 = v0[1];

  return v4();
}

uint64_t sub_19E80()
{
  v1 = v0[20];
  v2 = v0[11];
  v3 = v0[8];
  v4 = v0[5];
  (*(v0[13] + 8))(v0[14], v0[12]);

  v5 = v0[1];

  return v5();
}

unint64_t sub_19F30()
{
  result = qword_1375A0;
  if (!qword_1375A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1375A0);
  }

  return result;
}

uint64_t sub_19F84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[14] = a3;
  v4[15] = v3;
  v4[12] = a1;
  v4[13] = a2;
  return _swift_task_switch(sub_19FA8, 0, 0);
}

uint64_t sub_19FA8()
{
  v1 = v0[15];
  sub_106560();
  sub_106550();
  sub_106540();

  v2 = v0[6];
  sub_1A8E0(v0 + 2, v0[5]);
  sub_104CC0();
  v3 = sub_104DD0();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  sub_104DB0();
  sub_2738(v0 + 2);
  v6 = sub_104DC0();

  v7 = [objc_allocWithZone(SAUIAddViews) init];
  v0[16] = v7;
  if (v6 >> 62)
  {
    sub_16F28(0, &qword_1375B8, SAAceView_ptr);

    sub_107260();
  }

  else
  {

    sub_107380();
    sub_16F28(0, &qword_1375B8, SAAceView_ptr);
  }

  v9 = v0[13];
  v8 = v0[14];

  sub_72890(v10);
  sub_16F28(0, &qword_1375B8, SAAceView_ptr);
  isa = sub_106ED0().super.isa;

  [v7 setViews:isa];

  sub_104D30();
  v12 = sub_106E10();

  [v7 setDialogPhase:v12];

  sub_104CA0();
  v13 = v0[10];
  v14 = v0[11];
  sub_1A8E0(v0 + 7, v13);
  v15 = async function pointer to AceServiceInvokerAsync.submit<A>(_:)[1];
  v16 = swift_task_alloc();
  v0[17] = v16;
  v17 = sub_16F28(0, &qword_1375C0, SABaseCommand_ptr);
  *v16 = v0;
  v16[1] = sub_1A278;

  return AceServiceInvokerAsync.submit<A>(_:)(v7, v13, v17, v14);
}

uint64_t sub_1A278(void *a1)
{
  v4 = *(*v2 + 136);
  v7 = *v2;
  *(*v2 + 144) = v1;

  if (v1)
  {
    v5 = sub_1A4E4;
  }

  else
  {

    v5 = sub_1A394;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1A394()
{
  sub_2738(v0 + 7);
  if (qword_136C58 != -1)
  {
    swift_once();
  }

  v1 = sub_106D20();
  sub_135C4(v1, qword_137580);
  v2 = sub_106D10();
  v3 = sub_106FC0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_0, v2, v3, "generateCustomFlowOutput completed successfully.", v4, 2u);
  }

  v5 = v0[15];
  v6 = v0[16];
  v8 = v0[13];
  v7 = v0[14];
  v9 = v0[12];

  sub_222B8(v8);
  sub_104F00();

  v10 = v0[1];

  return v10();
}

uint64_t sub_1A4E4()
{
  sub_2738((v0 + 56));
  v1 = *(v0 + 8);
  v2 = *(v0 + 144);

  return v1();
}

uint64_t sub_1A550@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_25E4(&qword_1375A8, &qword_10AA90);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = v19 - v8;
  v10 = sub_104D60();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_104CF0();
  sub_222B8(a1);
  (*(v11 + 8))(v14, v10);
  sub_106560();
  sub_106550();
  sub_106540();

  sub_106550();
  sub_106540();

  sub_1A8E0(v21, v21[3]);
  sub_104CC0();
  v15 = sub_104FF0();
  v16 = *(v15 - 8);
  (*(v16 + 16))(v9, a2, v15);
  (*(v16 + 56))(v9, 0, 1, v15);
  v17 = sub_105430();
  memset(v19, 0, sizeof(v19));
  v20 = 0;
  a3[3] = v17;
  a3[4] = &protocol witness table for AceOutput;
  sub_1A924(a3);
  sub_104ED0();
  sub_16F70(v19, &qword_1375B0, &qword_107EC0);
  sub_16F70(v9, &qword_1375A8, &qword_10AA90);
  sub_2738(v22);
  return sub_2738(v21);
}

uint64_t sub_1A814(uint64_t a1, uint64_t a2)
{
  v4 = sub_25E4(&qword_137598, &unk_107EB0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A884(uint64_t a1)
{
  found = type metadata accessor for ErrorNotFoundParameters(0);
  (*(*(found - 8) + 8))(a1, found);
  return a1;
}

void *sub_1A8E0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t *sub_1A924(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AlarmOutputFactory.TemplatingError(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for AlarmOutputFactory.TemplatingError(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

unint64_t sub_1AA74()
{
  result = qword_1375C8;
  if (!qword_1375C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1375C8);
  }

  return result;
}

uint64_t sub_1AAC8(uint64_t *a1)
{
  sub_1068D0();
  sub_1068C0();
  sub_104B00();
  if (qword_136E48 != -1)
  {
    swift_once();
  }

  sub_104A60();
  sub_25E4(&qword_1375D0, &qword_107FA0);
  sub_104AC0();
  sub_262C(a1, v5);
  _s18NeedsValueStrategyCMa_0();
  v2 = swift_allocObject();
  sub_1AD44(v5, v2 + 16);
  *&v5[0] = v2;
  sub_1AD5C();
  sub_104A30();
  sub_104AA0();
  sub_25E4(&qword_1375E0, &unk_107FB0);
  sub_1ADB4();
  sub_104A70();
  sub_104AF0();
  sub_262C(a1, v5);
  sub_1AE18();
  sub_104A90();
  sub_104AE0();
  sub_262C(a1, v4);
  sub_1AE6C();
  sub_104A50();
  sub_104AB0();

  sub_2738(a1);
  sub_1AEC0(v4);
  return sub_1AF14(v5);
}

uint64_t sub_1ACB8(void *a1)
{
  *a1 = sub_C040C();
  v2 = *(v1 + 8);

  return v2();
}

uint64_t sub_1AD44(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

unint64_t sub_1AD5C()
{
  result = qword_1375D8;
  if (!qword_1375D8)
  {
    _s18NeedsValueStrategyCMa_0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1375D8);
  }

  return result;
}

unint64_t sub_1ADB4()
{
  result = qword_1375E8;
  if (!qword_1375E8)
  {
    sub_14EB0(&qword_1375E0, &unk_107FB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1375E8);
  }

  return result;
}

unint64_t sub_1AE18()
{
  result = qword_1375F0;
  if (!qword_1375F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1375F0);
  }

  return result;
}

unint64_t sub_1AE6C()
{
  result = qword_1375F8;
  if (!qword_1375F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1375F8);
  }

  return result;
}

uint64_t sub_1AF7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_106630();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_1063B0();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 24);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_1B0B4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v8 = sub_106630();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_1063B0();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t _s20HandleIntentStrategyVMa()
{
  result = qword_137670;
  if (!qword_137670)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1B224()
{
  result = sub_1B2C0();
  if (v1 <= 0x3F)
  {
    result = sub_106630();
    if (v2 <= 0x3F)
    {
      result = sub_1063B0();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

unint64_t sub_1B2C0()
{
  result = qword_137680;
  if (!qword_137680)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_137680);
  }

  return result;
}

uint64_t sub_1B324()
{
  v0 = sub_106D20();
  sub_14930(v0, qword_137600);
  sub_135C4(v0, qword_137600);
  return sub_106A80();
}

uint64_t sub_1B370(uint64_t a1, uint64_t a2)
{
  v3[9] = a2;
  v3[10] = v2;
  v3[8] = a1;
  v4 = sub_106BE0();
  v3[11] = v4;
  v5 = *(v4 - 8);
  v3[12] = v5;
  v6 = *(v5 + 64) + 15;
  v3[13] = swift_task_alloc();
  v7 = sub_104D60();
  v3[14] = v7;
  v8 = *(v7 - 8);
  v3[15] = v8;
  v9 = *(v8 + 64) + 15;
  v3[16] = swift_task_alloc();
  v10 = sub_106D20();
  v3[17] = v10;
  v11 = *(v10 - 8);
  v3[18] = v11;
  v12 = *(v11 + 64) + 15;
  v3[19] = swift_task_alloc();
  v13 = sub_106300();
  v3[20] = v13;
  v14 = *(v13 - 8);
  v3[21] = v14;
  v15 = *(v14 + 64) + 15;
  v3[22] = swift_task_alloc();
  v16 = sub_106320();
  v3[23] = v16;
  v17 = *(v16 - 8);
  v3[24] = v17;
  v18 = *(v17 + 64) + 15;
  v3[25] = swift_task_alloc();
  v19 = sub_104FF0();
  v3[26] = v19;
  v20 = *(v19 - 8);
  v3[27] = v20;
  v21 = *(v20 + 64) + 15;
  v3[28] = swift_task_alloc();

  return _swift_task_switch(sub_1B600, 0, 0);
}

uint64_t sub_1B600()
{
  if (qword_136C60 != -1)
  {
    swift_once();
  }

  v1 = sub_135C4(*(v0 + 136), qword_137600);
  v2 = sub_106D10();
  v3 = sub_106FC0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_0, v2, v3, "DismissAlarm.HandleIntentStrategy.makeIntentHandledResponse() called.", v4, 2u);
  }

  v5 = *(v0 + 72);
  v6 = *(v0 + 80);

  v7 = _s20HandleIntentStrategyVMa();
  *(v0 + 232) = v7;
  v8 = *(v7 + 20);
  sub_106630();
  v9 = sub_106530();
  *(v0 + 288) = v9 & 1;
  sub_25E4(&qword_1376C8, &qword_10B020);
  v10 = sub_105170();
  v11 = [v10 alarmId];

  if (!v11)
  {
    goto LABEL_8;
  }

  v12 = sub_106E20();
  v14 = v13;

  v15 = sub_106520();
  if (v15)
  {
    v16 = v15;

LABEL_8:
    v17 = *(v0 + 224);
    sub_104FE0();
    goto LABEL_10;
  }

  v18 = *(v0 + 224);
  sub_25E4(&qword_1376D0, &unk_1080E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_107FC0;
  *(inited + 32) = v12;
  v20 = inited + 32;
  *(inited + 40) = v14;
  sub_BD348(inited, v18);
  swift_setDeallocating();
  sub_1CDA8(v20);
LABEL_10:
  v21 = *(v0 + 200);
  v22 = *(v0 + 152);
  v23 = *(v0 + 136);
  v24 = *(v0 + 144);
  (*(*(v0 + 168) + 104))(*(v0 + 176), enum case for SiriTimeMeasurement.LogDescription.dialogPatternResponseTime(_:), *(v0 + 160));
  (*(v24 + 16))(v22, v1, v23);
  mach_absolute_time();
  sub_106330();
  if (qword_136C90 != -1)
  {
    swift_once();
  }

  v25 = *(v0 + 80);
  v26 = swift_task_alloc();
  *(v0 + 240) = v26;
  *(v26 + 16) = v25;
  v27 = swift_task_alloc();
  *(v0 + 248) = v27;
  *v27 = v0;
  v27[1] = sub_1B944;

  return sub_D29F4(v9 & 1, sub_1CDA0, v26);
}

uint64_t sub_1B944(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 248);
  v6 = *v2;
  *(v4 + 256) = a1;
  *(v4 + 264) = v1;

  v7 = *(v3 + 240);

  if (v1)
  {
    v8 = sub_1BE0C;
  }

  else
  {
    v8 = sub_1BA80;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_1BA80()
{
  v1 = *(v0 + 128);
  sub_104CF0();
  v2 = async function pointer to PatternExecutionResult.generateStandardPatternOutput(phase:contextUpdate:measure:dismissAssistant:)[1];
  v3 = swift_task_alloc();
  *(v0 + 272) = v3;
  *v3 = v0;
  v3[1] = sub_1BB34;
  v4 = *(v0 + 256);
  v5 = *(v0 + 288);
  v6 = *(v0 + 224);
  v7 = *(v0 + 200);
  v8 = *(v0 + 128);
  v9 = *(v0 + 64);

  return PatternExecutionResult.generateStandardPatternOutput(phase:contextUpdate:measure:dismissAssistant:)(v9, v8, v6, v7, v5);
}

uint64_t sub_1BB34()
{
  v2 = *v1;
  v3 = *(*v1 + 272);
  v4 = *v1;
  *(*v1 + 280) = v0;

  v5 = v2[32];
  (*(v2[15] + 8))(v2[16], v2[14]);

  if (v0)
  {
    v6 = sub_1BF68;
  }

  else
  {
    v6 = sub_1BCB4;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_1BCB4()
{
  v1 = v0[28];
  v2 = v0[27];
  v4 = v0[24];
  v3 = v0[25];
  v5 = v0[23];
  v13 = v5;
  v14 = v0[26];
  v6 = v0[19];
  v15 = v0[16];
  v8 = v0[12];
  v7 = v0[13];
  v9 = v0[11];
  v10 = *(v0[29] + 24);
  (*(v8 + 104))(v7, enum case for CrossDeviceCommandExecution.Result.success(_:), v9);
  sub_106380();
  (*(v8 + 8))(v7, v9);
  (*(v4 + 8))(v3, v13);
  (*(v2 + 8))(v1, v14);

  v11 = v0[1];

  return v11();
}

uint64_t sub_1BE0C()
{
  v1 = v0[33];
  v3 = v0[28];
  v2 = v0[29];
  v4 = v0[27];
  v13 = v0[26];
  v14 = v0[22];
  v5 = v0[19];
  v15 = v0[16];
  v7 = v0[12];
  v6 = v0[13];
  v9 = v0[10];
  v8 = v0[11];
  (*(v0[24] + 8))(v0[25], v0[23]);
  v10 = *(v2 + 24);
  (*(v7 + 104))(v6, enum case for CrossDeviceCommandExecution.Result.error(_:), v8);
  sub_106380();
  (*(v7 + 8))(v6, v8);
  swift_willThrow();
  (*(v4 + 8))(v3, v13);

  v11 = v0[1];

  return v11();
}

uint64_t sub_1BF68()
{
  v1 = v0[35];
  v3 = v0[28];
  v2 = v0[29];
  v4 = v0[27];
  v13 = v0[26];
  v14 = v0[22];
  v5 = v0[19];
  v15 = v0[16];
  v7 = v0[12];
  v6 = v0[13];
  v9 = v0[10];
  v8 = v0[11];
  (*(v0[24] + 8))(v0[25], v0[23]);
  v10 = *(v2 + 24);
  (*(v7 + 104))(v6, enum case for CrossDeviceCommandExecution.Result.error(_:), v8);
  sub_106380();
  (*(v7 + 8))(v6, v8);
  swift_willThrow();
  (*(v4 + 8))(v3, v13);

  v11 = v0[1];

  return v11();
}

uint64_t sub_1C0C4(uint64_t a1)
{
  v2 = *(*(sub_25E4(&qword_137598, &unk_107EB0) - 8) + 64);
  v3 = (__chkstk_darwin)();
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v3);
  v8 = &v24 - v7;
  __chkstk_darwin(v6);
  v10 = &v24 - v9;
  v11 = *(_s20HandleIntentStrategyVMa() + 20);
  sub_106630();
  v12 = sub_106520();
  if (v12)
  {
    v13 = v12;
    sub_106C20();

    v14 = sub_106160();
    (*(*(v14 - 8) + 56))(v10, 0, 1, v14);
  }

  else
  {
    v15 = sub_106160();
    (*(*(v15 - 8) + 56))(v10, 1, 1, v15);
  }

  v16 = type metadata accessor for StopIntentHandledElsewhereParameters(0);
  sub_1A814(v10, a1 + v16[6]);
  v17 = sub_106520();
  if (v17)
  {
    v18 = v17;
    sub_106C30();
  }

  else
  {
    v19 = sub_106160();
    (*(*(v19 - 8) + 56))(v8, 1, 1, v19);
  }

  sub_1A814(v8, a1 + v16[8]);
  v20 = sub_106520();
  if (v20)
  {
    v21 = v20;
    sub_106C10();
  }

  else
  {
    v22 = sub_106160();
    (*(*(v22 - 8) + 56))(v5, 1, 1, v22);
  }

  return sub_1A814(v5, a1 + v16[5]);
}

uint64_t sub_1C358(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = async function pointer to HandleIntentFlowStrategyAsync.makePromptForDeviceUnlock(rchRecord:)[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_1CE64;

  return HandleIntentFlowStrategyAsync.makePromptForDeviceUnlock(rchRecord:)(a1, a2, a3, a4);
}

uint64_t sub_1C41C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = async function pointer to HandleIntentFlowStrategyAsync.makeHandoffForAuthenticationResponse(rchRecord:)[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_1CE64;

  return HandleIntentFlowStrategyAsync.makeHandoffForAuthenticationResponse(rchRecord:)(a1, a2, a3, a4);
}

uint64_t sub_1C4E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[3] = v3;
  v4[4] = a3;
  v4[2] = a1;
  return _swift_task_switch(sub_1C504, 0, 0);
}

uint64_t sub_1C504()
{
  v1 = v0[2];
  v2 = *(v0[4] + 24);
  v3 = v0[3] + *(v0[4] + 20);
  v4 = sub_106620();
  sub_106390();

  sub_104DA0();
  sub_104D90();
  v5 = v0[1];

  return v5();
}

uint64_t sub_1C5A8(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 32) = v5;
  *v5 = v2;
  v5[1] = sub_1C650;

  return sub_1B370(a1, a2);
}

uint64_t sub_1C650()
{
  v2 = *(*v1 + 32);
  v3 = *v1;
  *(v3 + 40) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_1C784, 0, 0);
  }

  else
  {
    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_1C784()
{
  v0[3] = v0[5];
  sub_25E4(&qword_1376C0, &unk_1080D0);
  sub_1064E0();
  v1 = v0[2];
  swift_willThrow();

  v2 = v0[1];

  return v2();
}

uint64_t sub_1C850(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = async function pointer to HandleIntentFlowStrategyAsync.makeContinueInAppResponse(rchRecord:)[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_1CE64;

  return HandleIntentFlowStrategyAsync.makeContinueInAppResponse(rchRecord:)(a1, a2, a3, a4);
}

uint64_t sub_1C914(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = async function pointer to HandleIntentFlowStrategyAsync.makeInProgressResponse(rchRecord:)[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_1CE64;

  return HandleIntentFlowStrategyAsync.makeInProgressResponse(rchRecord:)(a1, a2, a3, a4);
}

uint64_t sub_1C9D8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1CA94;

  return sub_D4258(a1);
}

uint64_t sub_1CA94()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1CB88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = v3;
  v4[5] = a3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = *(*(sub_25E4(&qword_1374F0, &qword_1080F0) - 8) + 64) + 15;
  v4[6] = swift_task_alloc();

  return _swift_task_switch(sub_1CC28, 0, 0);
}

uint64_t sub_1CC28()
{
  v1 = v0[6];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[2];
  v5 = *(v0[5] + 20);
  v6 = sub_106630();
  v7 = *(v6 - 8);
  (*(v7 + 16))(v1, v3 + v5, v6);
  (*(v7 + 56))(v1, 0, 1, v6);
  v8 = sub_169D8(v4, v2, v1);
  sub_1CDFC(v1);

  v9 = v0[1];

  return v9(v8);
}

unint64_t sub_1CD48()
{
  result = qword_1376B8;
  if (!qword_1376B8)
  {
    _s20HandleIntentStrategyVMa();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1376B8);
  }

  return result;
}

uint64_t sub_1CDFC(uint64_t a1)
{
  v2 = sub_25E4(&qword_1374F0, &qword_1080F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1CE68()
{
  v1 = v0;
  v2 = sub_104740();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v83 = v69 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = sub_104750();
  v82 = *(v85 - 8);
  v6 = *(v82 + 64);
  __chkstk_darwin(v85);
  v81 = v69 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = sub_104710();
  v80 = *(v84 - 8);
  v8 = *(v80 + 64);
  __chkstk_darwin(v84);
  v77 = v69 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1047D0();
  v78 = *(v10 - 8);
  v79 = v10;
  v11 = *(v78 + 64);
  __chkstk_darwin(v10);
  v75 = v69 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_25E4(&qword_137518, &qword_107E28);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v76 = v69 - v15;
  v16 = sub_104670();
  v74 = *(v16 - 8);
  v17 = *(v74 + 64);
  v18 = __chkstk_darwin(v16);
  v20 = v69 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v73 = v69 - v21;
  v22 = sub_25E4(&qword_137500, &qword_107E10);
  v23 = *(*(v22 - 8) + 64);
  v24 = __chkstk_darwin(v22 - 8);
  v26 = v69 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __chkstk_darwin(v24);
  v29 = v69 - v28;
  v30 = __chkstk_darwin(v27);
  v32 = v69 - v31;
  __chkstk_darwin(v30);
  v34 = v69 - v33;
  [v1 period];
  v35 = sub_106A40();
  if (v35 != sub_106A40())
  {
    return 0;
  }

  v72 = v2;
  v36 = [v1 time];
  v70 = v16;
  v71 = v3;
  if (v36)
  {
    v37 = v36;
    sub_104570();

    v38 = sub_1045E0();
    (*(*(v38 - 8) + 56))(v32, 0, 1, v38);
  }

  else
  {
    v38 = sub_1045E0();
    (*(*(v38 - 8) + 56))(v32, 1, 1, v38);
  }

  sub_1D68C(v32, v34);
  sub_1045E0();
  v39 = *(v38 - 8);
  v40 = *(v39 + 48);
  if (v40(v34, 1, v38))
  {
    v41 = &qword_137500;
    v42 = &qword_107E10;
    v43 = v34;
  }

  else
  {
    v69[1] = sub_104580();
    v46 = v45;
    sub_16F70(v34, &qword_137500, &qword_107E10);
    if (v46)
    {
      return 0;
    }

    v47 = [v1 time];
    if (v47)
    {
      v48 = v47;
      sub_104570();

      v49 = 0;
    }

    else
    {
      v49 = 1;
    }

    (*(v39 + 56))(v26, v49, 1, v38);
    sub_1D68C(v26, v29);
    if (v40(v29, 1, v38))
    {
      v41 = &qword_137500;
      v42 = &qword_107E10;
      v43 = v29;
    }

    else
    {
      sub_1045A0();
      v51 = v50;
      sub_16F70(v29, &qword_137500, &qword_107E10);
      if (v51)
      {
        return 0;
      }

      v52 = v75;
      sub_106240();
      sub_106210();
      v53 = v80;
      v54 = v77;
      (*(v80 + 104))(v77, enum case for Calendar.MatchingPolicy.nextTime(_:), v84);
      v56 = v81;
      v55 = v82;
      (*(v82 + 104))(v81, enum case for Calendar.RepeatedTimePolicy.first(_:), v85);
      v57 = v71;
      v58 = v72;
      v59 = v83;
      (*(v71 + 104))(v83, enum case for Calendar.SearchDirection.forward(_:), v72);
      v60 = v76;
      sub_104760();
      (*(v57 + 8))(v59, v58);
      (*(v55 + 8))(v56, v85);
      (*(v53 + 8))(v54, v84);
      v61 = v74;
      v62 = *(v74 + 8);
      v63 = v70;
      v62(v20, v70);
      (*(v78 + 8))(v52, v79);
      if ((*(v61 + 48))(v60, 1, v63) != 1)
      {
        v64 = v73;
        (*(v61 + 32))(v73, v60, v63);
        v65 = sub_106090();
        v66 = *(v65 + 48);
        v67 = *(v65 + 52);
        swift_allocObject();
        sub_106080();
        sub_104660();
        sub_106070();

        v68 = sub_106060();

        v62(v64, v63);
        return v68;
      }

      v41 = &qword_137518;
      v42 = &qword_107E28;
      v43 = v60;
    }
  }

  sub_16F70(v43, v41, v42);
  return 0;
}

uint64_t sub_1D68C(uint64_t a1, uint64_t a2)
{
  v4 = sub_25E4(&qword_137500, &qword_107E10);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D6FC()
{
  v0 = sub_106D20();
  sub_14930(v0, qword_1376D8);
  sub_135C4(v0, qword_1376D8);
  return sub_106A80();
}

id sub_1D748()
{
  v0 = sub_106290();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v26[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_25E4(&qword_1376F0, &unk_10A900);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v26[-v7];
  sub_106280();
  sub_106270();
  (*(v1 + 8))(v4, v0);
  v9 = sub_106D80();
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_16F70(v8, &qword_1376F0, &unk_10A900);
LABEL_4:
    if (qword_136C68 != -1)
    {
      swift_once();
    }

    v11 = sub_106D20();
    sub_135C4(v11, qword_1376D8);
    v15 = sub_106D10();
    v12 = sub_106FC0();
    if (os_log_type_enabled(v15, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_0, v15, v12, "Resolved alarm from SRR is nil!", v13, 2u);
    }

LABEL_8:

    return 0;
  }

  sub_106AA0();
  v15 = sub_106D50();
  (*(v10 + 8))(v8, v9);
  if (!v15)
  {
    goto LABEL_4;
  }

  v16 = [v15 identifier];
  if (!v16)
  {
    if (qword_136C68 != -1)
    {
      swift_once();
    }

    v22 = sub_106D20();
    sub_135C4(v22, qword_1376D8);
    v23 = sub_106D10();
    v24 = sub_106FB0();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_0, v23, v24, "Resolved alarm from SRR is not nil, but alarmId of the resolved alarm is nil!", v25, 2u);
    }

    goto LABEL_8;
  }

  v17 = v16;
  sub_106A50();
  v18 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v19 = sub_106E10();
  v20 = [v18 initWithIdentifier:v17 displayString:v19];

  sub_1F7B8();
  isa = sub_107090(1).super.super.isa;
  [v20 setIncludeSleepAlarm:isa];

  return v20;
}

id sub_1DB58(uint64_t a1)
{
  v2 = sub_106290();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v51 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_105B30();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v48 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_25E4(&qword_1376F8, &qword_1080F8);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10);
  v13 = &v44 - v12;
  v14 = sub_25E4(&qword_137700, &qword_108100);
  v15 = *(*(v14 - 8) + 64);
  v16 = __chkstk_darwin(v14 - 8);
  v50 = &v44 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v16);
  v20 = &v44 - v19;
  __chkstk_darwin(v18);
  v22 = &v44 - v21;
  v23 = sub_105830();
  if (!v23)
  {
    goto LABEL_9;
  }

  v46 = a1;
  v47 = v3;
  v45 = v2;
  v49 = v23;
  sub_105B20();
  (*(v7 + 104))(v20, enum case for UsoEntity_common_ListPosition.DefinedValues.common_ListPosition_Next(_:), v6);
  (*(v7 + 56))(v20, 0, 1, v6);
  v24 = *(v10 + 48);
  sub_14994(v22, v13, &qword_137700, &qword_108100);
  sub_14994(v20, &v13[v24], &qword_137700, &qword_108100);
  v25 = *(v7 + 48);
  if (v25(v13, 1, v6) == 1)
  {
    sub_16F70(v20, &qword_137700, &qword_108100);
    sub_16F70(v22, &qword_137700, &qword_108100);
    if (v25(&v13[v24], 1, v6) == 1)
    {
      sub_16F70(v13, &qword_137700, &qword_108100);
LABEL_17:
      if (qword_136C68 != -1)
      {
        swift_once();
      }

      v40 = sub_106D20();
      sub_135C4(v40, qword_1376D8);
      v41 = sub_106D10();
      v42 = sub_106FC0();
      if (os_log_type_enabled(v41, v42))
      {
        v43 = swift_slowAlloc();
        *v43 = 0;
        _os_log_impl(&dword_0, v41, v42, "Skipping SRR for .common_ListPosition_Next requests", v43, 2u);
      }

      return 0;
    }
  }

  else
  {
    v26 = v50;
    sub_14994(v13, v50, &qword_137700, &qword_108100);
    if (v25(&v13[v24], 1, v6) != 1)
    {
      v35 = &v13[v24];
      v36 = v48;
      (*(v7 + 32))(v48, v35, v6);
      sub_1F804(&qword_137708, &type metadata accessor for UsoEntity_common_ListPosition.DefinedValues);
      v37 = v26;
      v38 = sub_106E00();
      v39 = *(v7 + 8);
      v39(v36, v6);
      sub_16F70(v20, &qword_137700, &qword_108100);
      sub_16F70(v22, &qword_137700, &qword_108100);
      v39(v37, v6);
      sub_16F70(v13, &qword_137700, &qword_108100);
      v3 = v47;
      if (v38)
      {
        goto LABEL_17;
      }

      goto LABEL_8;
    }

    sub_16F70(v20, &qword_137700, &qword_108100);
    sub_16F70(v22, &qword_137700, &qword_108100);
    (*(v7 + 8))(v26, v6);
  }

  sub_16F70(v13, &qword_1376F8, &qword_1080F8);
  v3 = v47;
LABEL_8:

  v2 = v45;
LABEL_9:
  v27 = v51;
  sub_106280();
  sub_105600();
  v28 = sub_106260();

  (*(v3 + 8))(v27, v2);
  if (v28)
  {
    sub_105600();
    v29 = sub_1D748();

    return v29;
  }

  if (qword_136C68 != -1)
  {
    swift_once();
  }

  v31 = sub_106D20();
  sub_135C4(v31, qword_1376D8);
  v32 = sub_106D10();
  v33 = sub_106FC0();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    *v34 = 0;
    _os_log_impl(&dword_0, v32, v33, "There's no referenceType or usoListPosition in uso graph. Skip calling SRR.", v34, 2u);
  }

  return 0;
}

uint64_t sub_1E22C()
{
  v0 = sub_25E4(&qword_1376F0, &unk_10A900);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v19[-v2];
  v4 = sub_106290();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v19[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_105600();
  sub_106280();

  v9 = sub_106260();

  v10 = *(v5 + 8);
  v10(v8, v4);
  if (v9)
  {
    sub_106280();
    sub_106270();
    v10(v8, v4);
    v11 = sub_106D80();
    v12 = *(v11 - 8);
    if ((*(v12 + 48))(v3, 1, v11) == 1)
    {
      sub_16F70(v3, &qword_1376F0, &unk_10A900);
    }

    else
    {
      sub_106AA0();
      v18 = sub_106D50();
      (*(v12 + 8))(v3, v11);
      if (v18)
      {
        goto LABEL_10;
      }
    }
  }

  if (qword_136C68 != -1)
  {
    swift_once();
  }

  v13 = sub_106D20();
  sub_135C4(v13, qword_1376D8);
  v14 = sub_106D10();
  v15 = sub_106FC0();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_0, v14, v15, "Resolved alarm from SRR is nil!", v16, 2u);
  }

  v18 = 0;
LABEL_10:

  return v18;
}