uint64_t sub_5CE58()
{
  v1 = *(*v0 + 1504);
  v3 = *v0;

  return _swift_task_switch(sub_5CF54, 0, 0);
}

uint64_t sub_5CF54()
{
  v1 = *(v0 + 116);
  if (v1)
  {
    v2 = *(v0 + 180);
    v3 = v1;
    v4 = sub_106D10();
    v5 = sub_106FC0();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_0, v4, v5, "Appending updated sleep alarm to changedAlarms", v6, 2u);
    }

    sub_106EC0();
    if (*(&dword_10 + (*(v0 + 114) & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (*(v0 + 114) & 0xFFFFFFFFFFFFFF8)) >> 1)
    {
LABEL_127:
      sub_106F10();
    }

    sub_106F20();
  }

  v7 = *(v0 + 187);
  *(v0 + 191) = v1;
  *(v0 + 190) = v7;
  v8 = *(v0 + 169);
  v9 = *(v0 + 168);
  v10 = *(v0 + 157);
  v11 = *(v0 + 156);
  v12 = *(v0 + 118);
  v13 = OBJC_IVAR____TtC15AlarmFlowPlugin20UndoChangeStatusFlow_operation;
  *(v0 + 192) = OBJC_IVAR____TtC15AlarmFlowPlugin20UndoChangeStatusFlow_operation;
  swift_beginAccess();
  v14 = *(v10 + 16);
  *(v0 + 193) = v14;
  *(v0 + 194) = (v10 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v345 = v13;
  v342 = v14;
  v14(v8, v12 + v13, v11);
  *(v0 + 526) = enum case for AlarmNLv4Constants.AlarmVerb.enable(_:);
  v15 = *(v10 + 104);
  *(v0 + 195) = v15;
  *(v0 + 196) = (v10 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v338 = v15;
  v15(v9);
  *(v0 + 197) = sub_73FEC(&unk_13AFF0, &type metadata accessor for AlarmNLv4Constants.AlarmVerb);
  sub_106EB0();
  sub_106EB0();
  if (*(v0 + 75) == *(v0 + 77) && *(v0 + 76) == *(v0 + 78))
  {
    v354 = 1;
  }

  else
  {
    v16 = *(v0 + 76);
    v17 = *(v0 + 78);
    v354 = sub_107370();
  }

  v18 = *(v0 + 169);
  v19 = *(v0 + 168);
  v20 = *(v0 + 157);
  v21 = *(v0 + 156);
  v22 = *(v20 + 8);
  *(v0 + 198) = v22;
  *(v0 + 199) = (v20 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v22(v19, v21);
  v22(v18, v21);

  if (v354)
  {
    v23 = *(v0 + 186);
    v24 = *(v0 + 118);
    v25 = "disableAlarms(alarms:)";
    v26 = swift_task_alloc();
    *(v0 + 200) = v26;
    *(v26 + 16) = v24;
    *(v26 + 24) = v23;
    v27 = async function pointer to withCheckedContinuation<A>(isolation:function:_:)[1];
    v28 = swift_task_alloc();
    *(v0 + 201) = v28;
    *v28 = v0;
    v28[1] = sub_61368;
    v29 = *(v0 + 185);
    v30 = sub_73D1C;
    v31 = v0 + 872;
    v32 = 0xD000000000000015;
LABEL_17:

    return withCheckedContinuation<A>(isolation:function:_:)(v31, 0, 0, v32, v25 | 0x8000000000000000, v30, v26, v29);
  }

  v33 = *(v0 + 166);
  v34 = *(v0 + 156);
  v342(*(v0 + 167), v12 + v345, v34);
  v35 = enum case for AlarmNLv4Constants.AlarmVerb.disable(_:);
  v338(v33, enum case for AlarmNLv4Constants.AlarmVerb.disable(_:), v34);
  sub_106EB0();
  sub_106EB0();
  v36 = *(v0 + 167);
  v37 = *(v0 + 166);
  v355 = v0;
  v38 = *(v0 + 156);
  if (*(v0 + 79) == *(v0 + 81) && *(v0 + 80) == *(v0 + 82))
  {
    v22(v37, *(v0 + 156));
    v22(v36, v38);

LABEL_16:
    v40 = *(v0 + 186);
    v41 = v355[118];
    v25 = "s#SuccessSleepEnabled";
    v26 = swift_task_alloc();
    v355[202] = v26;
    *(v26 + 16) = v41;
    *(v26 + 24) = v40;
    v42 = async function pointer to withCheckedContinuation<A>(isolation:function:_:)[1];
    v43 = swift_task_alloc();
    v355[203] = v43;
    *v43 = v355;
    v43[1] = sub_63128;
    v29 = v355[185];
    v30 = sub_73D14;
    v31 = v355 + 108;
    v32 = 0xD000000000000016;
    goto LABEL_17;
  }

  v39 = sub_107370();
  v22(v37, v38);
  v22(v36, v38);

  if (v39)
  {
    goto LABEL_16;
  }

  v44 = v0;
  v45 = *(v0 + 186);

  v46 = *(v0 + 114);
  sub_BD4A4(*(v44 + 912), *(v44 + 1240));
  v47 = v46 >> 62;
  if (!(v46 >> 62))
  {
    v48 = *(&dword_10 + (v46 & 0xFFFFFFFFFFFFFF8));
    if (v48)
    {
      goto LABEL_22;
    }

LABEL_132:
    v302 = *(v44 + 1440);

    v303 = sub_106D10();
    v304 = sub_106FC0();
    if (os_log_type_enabled(v303, v304))
    {
      v305 = swift_slowAlloc();
      *v305 = 0;
      _os_log_impl(&dword_0, v303, v304, "No alarms updated.", v305, 2u);
    }

    v306 = *(v44 + 1216);
    v307 = *(v44 + 1208);
    v308 = *(v44 + 1200);

    (*(v307 + 104))(v306, enum case for SiriTimeEventSender.ReasonDescription.noAlarmsUpdated(_:), v308);
    v135 = swift_task_alloc();
    *(v44 + 1632) = v135;
    *v135 = v44;
    v136 = sub_64EE8;
    goto LABEL_135;
  }

LABEL_130:
  if (!sub_107270())
  {
    goto LABEL_132;
  }

  v48 = sub_107270();
LABEL_22:
  v49 = *(v44 + 1440);
  if (v48 != 1)
  {
    v54 = v35;
    v55 = sub_106D10();
    v56 = sub_106FC0();
    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      *v57 = 0;
      _os_log_impl(&dword_0, v55, v56, "Multiple alarms updated.", v57, 2u);
    }

    v58 = *(v44 + 1576);
    v346 = *(v44 + 1560);
    v350 = *(v44 + 1568);
    v59 = *(v44 + 2104);
    v60 = v355[194];
    v61 = v355[193];
    v62 = v355[192];
    v63 = v355[161];
    v64 = v355[160];
    v65 = v355[156];
    v66 = v55;
    v67 = v355[118];

    v61(v63, v67 + v62, v65);
    v68 = v355;
    v346(v64, v59, v65);
    sub_106EB0();
    sub_106EB0();
    v69 = v355[199];
    v70 = v355[198];
    v71 = v355[161];
    v72 = v355[160];
    v73 = v355[156];
    if (v68[83] == v68[105] && v355[84] == v355[106])
    {
      v70(v355[160], v355[156]);
      v70(v71, v73);
    }

    else
    {
      v74 = v355[84];
      v75 = v355[106];
      v76 = sub_107370();
      v70(v72, v73);
      v70(v71, v73);

      if ((v76 & 1) == 0)
      {
        v171 = v355[197];
        v172 = v355[196];
        v173 = v355[195];
        v174 = v355[194];
        v175 = v355[158];
        v176 = v355[156];
        (v355[193])(v355[159], v355[118] + v355[192], v176);
        v173(v175, v54, v176);
        sub_106EB0();
        sub_106EB0();
        v177 = v355[199];
        v178 = v355[198];
        v179 = v355[159];
        v180 = v355[158];
        v181 = v355[156];
        if (v355[87] == v355[89] && v355[88] == v355[90])
        {
          v178(v355[158], v355[156]);
          v178(v179, v181);
        }

        else
        {
          v201 = v355[88];
          v202 = v355[90];
          v203 = sub_107370();
          v178(v180, v181);
          v178(v179, v181);

          if ((v203 & 1) == 0)
          {

LABEL_119:
            v273 = v68[121];
            v274 = v68[120];
            v275 = v68[119];
            v276 = v68[118];
            v277 = OBJC_IVAR____TtC15AlarmFlowPlugin20UndoChangeStatusFlow_followupPluginAction;
            swift_beginAccess();
            sub_14994(v276 + v277, v275, &qword_137FD0, &unk_1087C0);
            v278 = (*(v273 + 48))(v275, 1, v274);
            v279 = v68[191];
            v280 = v68[190];
            v281 = v68[155];
            v282 = v68[154];
            v283 = v68[153];
            if (v278 == 1)
            {
              v284 = v68[118];
              v285 = v68[117];
              sub_16F70(v68[119], &qword_137FD0, &unk_1087C0);
              sub_104F00();
            }

            else
            {
              v286 = v68[122];
              v287 = v355[121];
              v288 = v355[120];
              v284 = v355[118];
              v289 = v355[117];
              (*(v287 + 32))(v286, v355[119], v288);
              sub_104F10();

              (*(v287 + 8))(v286, v288);
              v68 = v355;
            }

            (*(v282 + 8))(v281, v283);
            sub_73574(v284);
            v290 = v68[179];
            v291 = v68[176];
            v292 = v68[175];
            v293 = v68[174];
            v294 = v68;
            v295 = v68[173];
            v296 = v294[172];
            v297 = v294[171];
            v298 = v294[170];
            v299 = v294[169];
            v300 = v294[168];
            v313 = v294[167];
            v314 = v294[166];
            v315 = v294[165];
            v316 = v294[164];
            v317 = v294[163];
            v318 = v294[162];
            v319 = v294[161];
            v320 = v294[160];
            v321 = v294[159];
            v322 = v294[158];
            v323 = v294[155];
            v324 = v294[152];
            v325 = v294[149];
            v326 = v294[148];
            v327 = v294[147];
            v328 = v294[146];
            v329 = v294[145];
            v330 = v294[144];
            v331 = v294[141];
            v332 = v294[140];
            v333 = v294[139];
            v334 = v294[138];
            v335 = v294[135];
            v337 = v294[132];
            v341 = v294[129];
            v344 = v294[126];
            v349 = v294[124];
            v353 = v294[122];
            v356 = v294[119];

            v301 = v294[1];

            return v301();
          }
        }

        v204 = v355[180];
        v205 = sub_106D10();
        v206 = sub_106FC0();
        if (os_log_type_enabled(v205, v206))
        {
          v207 = swift_slowAlloc();
          *v207 = 0;
          _os_log_impl(&dword_0, v205, v206, "Hitting RF path for UndoChangeStatusFlow, multiple alarms.", v207, 2u);
        }

        v208 = v355[180];
        v209 = v355[138];
        v210 = v355[135];
        v211 = v355[134];
        v212 = v355[133];
        v213 = v355[132];
        v214 = v355[131];
        v35 = v355[130];
        v215 = v355[118];

        v216 = *(v211 + 104);
        v47 = v211 + 104;
        v216(v210, enum case for SiriTimeMeasurement.LogDescription.dialogPatternResponseTime(_:), v212);
        (*(v214 + 16))(v213, v208, v35);
        mach_absolute_time();
        sub_106330();
        v340 = *(v215 + 32);
        v46 = _swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8;
        if (_swiftEmptyArrayStorage >> 62)
        {
          v217 = sub_107270();
        }

        else
        {
          v217 = *(&dword_10 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8));
        }

        v44 = 0;
        v218 = (v355[128] + 8);
        while (v217 != v44)
        {
          if (_swiftEmptyArrayStorage >> 62)
          {
            v219 = sub_1071C0();
          }

          else
          {
            if (v44 >= *(&dword_10 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)))
            {
              goto LABEL_129;
            }

            v219 = _swiftEmptyArrayStorage[v44 + 4];
          }

          v220 = v219;
          v47 = v44 + 1;
          if (__OFADD__(v44, 1))
          {
            __break(1u);
LABEL_129:
            __break(1u);
            goto LABEL_130;
          }

          v35 = v355[129];
          v221 = v355[127];
          sub_106210();
          v222 = sub_75DD4(0, v35, 0);

          (*v218)(v35, v221);
          ++v44;
          if (v222)
          {
            sub_106EC0();
            if (*(&dword_10 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >> 1)
            {
              v223 = *(&dword_10 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8));
              sub_106F10();
            }

            sub_106F20();
            v44 = v47;
          }
        }

        v224 = v355[124];
        v225 = v355[123];

        v226 = sub_106160();
        v227 = *(*(v226 - 8) + 56);
        v227(v224, 1, 1, v226);
        v228 = v225[16];
        v227(v224 + v228, 1, 1, v226);
        v229 = v225[5];
        *(v224 + v229) = 0;
        *(v224 + v225[6]) = 0;
        *(v224 + v225[7]) = 0;
        *(v224 + v225[8]) = 1;
        *(v224 + v225[9]) = 0;
        *(v224 + v225[10]) = 0;
        *(v224 + v225[11]) = 0;
        *(v224 + v225[12]) = 0;
        *(v224 + v225[13]) = 0;
        *(v224 + v225[14]) = _swiftEmptyArrayStorage;
        v230 = v225[15];
        *(v224 + v230) = 0;
        v231 = v225[17];
        *(v224 + v231) = 0;
        sub_16F70(v224 + v228, &qword_137598, &unk_107EB0);
        v227(v224 + v228, 1, 1, v226);
        *(v224 + v231) = 0;
        sub_106100();
        if (qword_136E48 != -1)
        {
          swift_once();
        }

        v232 = v355[191];

        *(v224 + v229) = sub_1060F0();
        if (v232)
        {
          v233 = v355[191];
          v234 = v355[129];
          v235 = v355[127];
          sub_106210();
          v236 = sub_75DD4(0, v234, 0);
          (*v218)(v234, v235);
        }

        else
        {
          v236 = 0;
        }

        v262 = v355[124];
        *(v224 + v230) = v236;
        v166 = sub_20734();
        v355[254] = v166;
        v263 = *(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + 1);
        v352 = (&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
        v264 = swift_task_alloc();
        v355[255] = v264;
        *v264 = v355;
        v264[1] = sub_69D44;
        v164 = 0xD000000000000011;
        v169 = 0x800000000010CFB0;
LABEL_71:
        v170 = v166;
LABEL_115:

        return v352(v164, v169, v170);
      }
    }

    v77 = v355[180];
    v78 = sub_106D10();
    v79 = sub_106FC0();
    if (os_log_type_enabled(v78, v79))
    {
      v80 = swift_slowAlloc();
      *v80 = 0;
      _os_log_impl(&dword_0, v78, v79, "Hitting RF path for UndoChangeStatusFlow, multiple alarms.", v80, 2u);
    }

    v81 = v355[180];
    v82 = v355[139];
    v83 = v355[135];
    v84 = v355[134];
    v85 = v355[133];
    v86 = v355[132];
    v87 = v355[131];
    v88 = v355[130];
    v89 = v355[118];

    v90 = *(v84 + 104);
    v0 = (v84 + 104);
    v90(v83, enum case for SiriTimeMeasurement.LogDescription.dialogPatternResponseTime(_:), v85);
    (*(v87 + 16))(v86, v81, v88);
    mach_absolute_time();
    sub_106330();
    v339 = *(v89 + 32);
    if (_swiftEmptyArrayStorage >> 62)
    {
      v91 = sub_107270();
    }

    else
    {
      v91 = *(&dword_10 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8));
    }

    v1 = 0;
    v92 = (v355[128] + 8);
    while (v91 != v1)
    {
      if (_swiftEmptyArrayStorage >> 62)
      {
        v93 = sub_1071C0();
      }

      else
      {
        if (v1 >= *(&dword_10 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_126;
        }

        v93 = _swiftEmptyArrayStorage[v1 + 4];
      }

      v94 = v93;
      v0 = (v1 + 1);
      if (__OFADD__(v1, 1))
      {
        __break(1u);
LABEL_126:
        __break(1u);
        goto LABEL_127;
      }

      v95 = v355[129];
      v96 = v355[127];
      sub_106210();
      v97 = sub_75DD4(0, v95, 0);

      (*v92)(v95, v96);
      ++v1;
      if (v97)
      {
        sub_106EC0();
        if (*(&dword_10 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >> 1)
        {
          v98 = *(&dword_10 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8));
          sub_106F10();
        }

        sub_106F20();
        v1 = v0;
      }
    }

    v99 = v355[126];
    v100 = v355[125];

    v101 = sub_106160();
    v102 = *(*(v101 - 8) + 56);
    v102(v99, 1, 1, v101);
    v103 = v100[16];
    v102(v99 + v103, 1, 1, v101);
    v104 = v100[5];
    *(v99 + v104) = 0;
    *(v99 + v100[6]) = 0;
    *(v99 + v100[7]) = 0;
    *(v99 + v100[8]) = 1;
    *(v99 + v100[9]) = 0;
    *(v99 + v100[10]) = 0;
    *(v99 + v100[11]) = 0;
    *(v99 + v100[12]) = 0;
    *(v99 + v100[13]) = 0;
    *(v99 + v100[14]) = _swiftEmptyArrayStorage;
    v105 = v100[15];
    *(v99 + v105) = 0;
    v106 = v100[17];
    *(v99 + v106) = 0;
    sub_16F70(v99 + v103, &qword_137598, &unk_107EB0);
    v102(v99 + v103, 1, 1, v101);
    *(v99 + v106) = 0;
    sub_106100();
    if (qword_136E48 != -1)
    {
      swift_once();
    }

    v107 = v355[191];

    *(v99 + v104) = sub_1060F0();
    if (v107)
    {
      v108 = v355[191];
      v109 = v355[129];
      v110 = v355[127];
      sub_106210();
      v111 = sub_75DD4(0, v109, 0);
      (*v92)(v109, v110);
    }

    else
    {
      v111 = 0;
    }

    v165 = v355[126];
    *(v99 + v105) = v111;
    v166 = sub_20764();
    v355[246] = v166;
    v167 = *(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + 1);
    v352 = (&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
    v168 = swift_task_alloc();
    v355[247] = v168;
    *v168 = v355;
    v168[1] = sub_68E3C;
    v169 = 0x800000000010CFD0;
    v164 = 0xD000000000000010;
    goto LABEL_71;
  }

  v50 = sub_106D10();
  v51 = sub_106FC0();
  if (os_log_type_enabled(v50, v51))
  {
    v52 = swift_slowAlloc();
    *v52 = 0;
    _os_log_impl(&dword_0, v50, v51, "One alarm updated.", v52, 2u);
  }

  if (v47)
  {
    v53 = sub_107270();
  }

  else
  {
    v53 = *(&dword_10 + (v46 & 0xFFFFFFFFFFFFFF8));
  }

  if (v53)
  {
    v336 = v35;
    if ((v46 & 0xC000000000000001) != 0)
    {
      v112 = sub_1071C0();
    }

    else
    {
      if (!*(&dword_10 + (v46 & 0xFFFFFFFFFFFFFF8)))
      {
        __break(1u);
        goto LABEL_141;
      }

      v112 = *(v46 + 32);
    }

    v351 = v112;
    *(v44 + 1640) = v112;
    v113 = *(v44 + 1576);
    v343 = *(v44 + 1560);
    v347 = *(v44 + 1568);
    v114 = *(v44 + 2104);
    v115 = v44;
    v116 = *(v44 + 1552);
    v117 = *(v44 + 1544);
    v118 = *(v44 + 1536);
    v119 = *(v44 + 1320);
    v120 = v115[164];
    v121 = v115[156];
    v122 = v115[118];

    v117(v119, v122 + v118, v121);
    v343(v120, v114, v121);
    sub_106EB0();
    sub_106EB0();
    v123 = v115[199];
    v124 = v115[198];
    v125 = v115[165];
    v126 = v115[164];
    v127 = v115[156];
    if (v115[95] == v115[97] && v115[96] == v115[98])
    {
      v124(v115[164], v115[156]);
      v124(v125, v127);

      goto LABEL_64;
    }

    v137 = v115[96];
    v138 = v115[98];
    v139 = sub_107370();
    v124(v126, v127);
    v124(v125, v127);

    if (v139)
    {
LABEL_64:
      v140 = v355[180];
      v141 = v355[149];
      sub_104CF0();
      v142 = sub_106D10();
      v143 = sub_106FC0();
      if (os_log_type_enabled(v142, v143))
      {
        v144 = swift_slowAlloc();
        *v144 = 0;
        _os_log_impl(&dword_0, v142, v143, "Hitting RF path for UndoChangeStatusFlow, 1 alarm.", v144, 2u);
      }

      v145 = v355[180];
      v146 = v355[141];
      v147 = v355[135];
      v148 = v355[134];
      v149 = v355[133];
      v150 = v355[132];
      v151 = v355[131];
      v152 = v355[130];
      v348 = v355[118];

      (*(v148 + 104))(v147, enum case for SiriTimeMeasurement.LogDescription.dialogPatternResponseTime(_:), v149);
      (*(v151 + 16))(v150, v145, v152);
      mach_absolute_time();
      sub_106330();
      v153 = [v351 sleepAlarmAttribute];
      if (!v153)
      {
        v182 = v355[129];
        v183 = v355[128];
        v184 = v355[127];
        v185 = *(v348 + 24);
        sub_106210();
        v186 = sub_75DD4(0, v182, 0);
        v355[213] = v186;
        (*(v183 + 8))(v182, v184);
        sub_106100();
        if (qword_136E48 != -1)
        {
          swift_once();
        }

        v187 = sub_1060F0();
        v355[214] = v187;
        v160 = "s#SuccessSleepDisabled";
        v161 = sub_74800(v186, v187, 0);
        v355[215] = v161;
        v188 = *(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + 1);
        v352 = (&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
        v189 = swift_task_alloc();
        v355[216] = v189;
        *v189 = v355;
        v189[1] = sub_65F28;
        v164 = 0xD000000000000020;
        goto LABEL_114;
      }

      v154 = *(v348 + 24);
      sub_106100();
      if (qword_136E48 == -1)
      {
LABEL_68:
        v155 = v355[129];
        v156 = v355[128];
        v157 = v355[127];

        v158 = sub_1060F0();
        v355[206] = v158;
        sub_106210();
        v159 = sub_75DD4(0, v155, 0);
        v355[207] = v159;
        (*(v156 + 8))(v155, v157);
        v160 = "s#SuccessEnabled";
        v161 = sub_75DC8(0, v158, v159);
        v355[208] = v161;
        v162 = *(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + 1);
        v352 = (&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
        v163 = swift_task_alloc();
        v355[209] = v163;
        *v163 = v355;
        v163[1] = sub_65304;
        v164 = 0xD000000000000025;
LABEL_114:
        v169 = v160 | 0x8000000000000000;
        v170 = v161;
        goto LABEL_115;
      }

LABEL_141:
      swift_once();
      goto LABEL_68;
    }

    v68 = v355;
    v190 = v355[197];
    v191 = v355[196];
    v192 = v355[195];
    v193 = v355[194];
    v194 = v355[162];
    v195 = v355[156];
    (v355[193])(v355[163], v355[118] + v355[192], v195);
    v192(v194, v336, v195);
    sub_106EB0();
    sub_106EB0();
    v196 = v355[199];
    v197 = v355[198];
    v198 = v355[163];
    v199 = v355[162];
    v200 = v355[156];
    if (v68[99] == v68[101] && v355[100] == v355[102])
    {
      v197(v355[162], v355[156]);
      v197(v198, v200);

LABEL_102:
      v240 = v355[180];
      v241 = sub_106D10();
      v242 = sub_106FC0();
      if (os_log_type_enabled(v241, v242))
      {
        v243 = swift_slowAlloc();
        *v243 = 0;
        _os_log_impl(&dword_0, v241, v242, "Hitting RF path for UndoChangeStatusFlow, 1 alarm.", v243, 2u);
      }

      v244 = v355[180];
      v245 = v355[140];
      v246 = v355[135];
      v247 = v355[134];
      v248 = v355[133];
      v249 = v355[132];
      v250 = v355[131];
      v251 = v355[130];

      (*(v247 + 104))(v246, enum case for SiriTimeMeasurement.LogDescription.dialogPatternResponseTime(_:), v248);
      (*(v250 + 16))(v249, v244, v251);
      mach_absolute_time();
      sub_106330();
      v252 = [v351 sleepAlarmAttribute];
      if (v252)
      {
        v253 = v355[118];

        v254 = *(v253 + 24);
        sub_106100();
        if (qword_136E48 != -1)
        {
          swift_once();
        }

        v255 = v355[129];
        v256 = v355[128];
        v257 = v355[127];

        v258 = sub_1060F0();
        v355[225] = v258;
        sub_106210();
        v259 = sub_75DD4(0, v255, 0);
        v355[226] = v259;
        (*(v256 + 8))(v255, v257);
        v160 = "s#SuccessDisabled";
        v161 = sub_75DC8(0, v258, v259);
        v355[227] = v161;
        v260 = *(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + 1);
        v352 = (&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
        v261 = swift_task_alloc();
        v355[228] = v261;
        *v261 = v355;
        v261[1] = sub_66EC4;
        v164 = 0xD000000000000026;
      }

      else
      {
        v265 = v355[129];
        v266 = v355[128];
        v267 = v355[127];
        v268 = *(v355[118] + 24);
        sub_106210();
        v269 = sub_75DD4(0, v265, 0);
        v355[235] = v269;
        (*(v266 + 8))(v265, v267);
        sub_106100();
        if (qword_136E48 != -1)
        {
          swift_once();
        }

        v270 = sub_1060F0();
        v355[236] = v270;
        v160 = "ModifyAll#Enable";
        v161 = sub_75DC8(v269, v270, 0);
        v355[237] = v161;
        v271 = *(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + 1);
        v352 = (&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
        v272 = swift_task_alloc();
        v355[238] = v272;
        *v272 = v355;
        v272[1] = sub_67DD4;
        v164 = 0xD000000000000021;
      }

      goto LABEL_114;
    }

    v237 = v355[100];
    v238 = v355[102];
    v239 = sub_107370();
    v197(v199, v200);
    v197(v198, v200);

    if (v239)
    {
      goto LABEL_102;
    }

    goto LABEL_119;
  }

  v128 = *(v44 + 1440);

  v129 = sub_106D10();
  v130 = sub_106FB0();
  if (os_log_type_enabled(v129, v130))
  {
    v131 = swift_slowAlloc();
    *v131 = 0;
    _os_log_impl(&dword_0, v129, v130, "Can't retrieve changed alarm or it's snippet information.", v131, 2u);
  }

  v132 = *(v44 + 1216);
  v133 = *(v44 + 1208);
  v134 = *(v44 + 1200);

  (*(v133 + 104))(v132, enum case for SiriTimeEventSender.ReasonDescription.failedToFetchChangedAlarm(_:), v134);
  v135 = swift_task_alloc();
  *(v44 + 1960) = v135;
  *v135 = v44;
  v136 = sub_68CE4;
LABEL_135:
  v135[1] = v136;
  v309 = *(v44 + 1216);
  v310 = *(v44 + 944);
  v311 = *(v44 + 936);

  return sub_6E8C0(v311, v309);
}

uint64_t sub_5F0E0()
{
  v1 = *(*v0 + 1512);
  v3 = *v0;

  return _swift_task_switch(sub_5F1DC, 0, 0);
}

uint64_t sub_5F1DC()
{
  v1 = *(v0 + 115);
  if (v1)
  {
    v2 = *(v0 + 180);
    v3 = v1;
    v4 = sub_106D10();
    v5 = sub_106FC0();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_0, v4, v5, "Appending updated sleep alarm to changedAlarms", v6, 2u);
    }

    sub_106EC0();
    if (*(&dword_10 + (*(v0 + 114) & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (*(v0 + 114) & 0xFFFFFFFFFFFFFF8)) >> 1)
    {
LABEL_127:
      sub_106F10();
    }

    sub_106F20();
  }

  v7 = *(v0 + 187);
  *(v0 + 191) = v1;
  *(v0 + 190) = v7;
  v8 = *(v0 + 169);
  v9 = *(v0 + 168);
  v10 = *(v0 + 157);
  v11 = *(v0 + 156);
  v12 = *(v0 + 118);
  v13 = OBJC_IVAR____TtC15AlarmFlowPlugin20UndoChangeStatusFlow_operation;
  *(v0 + 192) = OBJC_IVAR____TtC15AlarmFlowPlugin20UndoChangeStatusFlow_operation;
  swift_beginAccess();
  v14 = *(v10 + 16);
  *(v0 + 193) = v14;
  *(v0 + 194) = (v10 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v345 = v13;
  v342 = v14;
  v14(v8, v12 + v13, v11);
  *(v0 + 526) = enum case for AlarmNLv4Constants.AlarmVerb.enable(_:);
  v15 = *(v10 + 104);
  *(v0 + 195) = v15;
  *(v0 + 196) = (v10 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v338 = v15;
  v15(v9);
  *(v0 + 197) = sub_73FEC(&unk_13AFF0, &type metadata accessor for AlarmNLv4Constants.AlarmVerb);
  sub_106EB0();
  sub_106EB0();
  if (*(v0 + 75) == *(v0 + 77) && *(v0 + 76) == *(v0 + 78))
  {
    v354 = 1;
  }

  else
  {
    v16 = *(v0 + 76);
    v17 = *(v0 + 78);
    v354 = sub_107370();
  }

  v18 = *(v0 + 169);
  v19 = *(v0 + 168);
  v20 = *(v0 + 157);
  v21 = *(v0 + 156);
  v22 = *(v20 + 8);
  *(v0 + 198) = v22;
  *(v0 + 199) = (v20 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v22(v19, v21);
  v22(v18, v21);

  if (v354)
  {
    v23 = *(v0 + 186);
    v24 = *(v0 + 118);
    v25 = "disableAlarms(alarms:)";
    v26 = swift_task_alloc();
    *(v0 + 200) = v26;
    *(v26 + 16) = v24;
    *(v26 + 24) = v23;
    v27 = async function pointer to withCheckedContinuation<A>(isolation:function:_:)[1];
    v28 = swift_task_alloc();
    *(v0 + 201) = v28;
    *v28 = v0;
    v28[1] = sub_61368;
    v29 = *(v0 + 185);
    v30 = sub_73D1C;
    v31 = v0 + 872;
    v32 = 0xD000000000000015;
LABEL_17:

    return withCheckedContinuation<A>(isolation:function:_:)(v31, 0, 0, v32, v25 | 0x8000000000000000, v30, v26, v29);
  }

  v33 = *(v0 + 166);
  v34 = *(v0 + 156);
  v342(*(v0 + 167), v12 + v345, v34);
  v35 = enum case for AlarmNLv4Constants.AlarmVerb.disable(_:);
  v338(v33, enum case for AlarmNLv4Constants.AlarmVerb.disable(_:), v34);
  sub_106EB0();
  sub_106EB0();
  v36 = *(v0 + 167);
  v37 = *(v0 + 166);
  v355 = v0;
  v38 = *(v0 + 156);
  if (*(v0 + 79) == *(v0 + 81) && *(v0 + 80) == *(v0 + 82))
  {
    v22(v37, *(v0 + 156));
    v22(v36, v38);

LABEL_16:
    v40 = *(v0 + 186);
    v41 = v355[118];
    v25 = "s#SuccessSleepEnabled";
    v26 = swift_task_alloc();
    v355[202] = v26;
    *(v26 + 16) = v41;
    *(v26 + 24) = v40;
    v42 = async function pointer to withCheckedContinuation<A>(isolation:function:_:)[1];
    v43 = swift_task_alloc();
    v355[203] = v43;
    *v43 = v355;
    v43[1] = sub_63128;
    v29 = v355[185];
    v30 = sub_73D14;
    v31 = v355 + 108;
    v32 = 0xD000000000000016;
    goto LABEL_17;
  }

  v39 = sub_107370();
  v22(v37, v38);
  v22(v36, v38);

  if (v39)
  {
    goto LABEL_16;
  }

  v44 = v0;
  v45 = *(v0 + 186);

  v46 = *(v0 + 114);
  sub_BD4A4(*(v44 + 912), *(v44 + 1240));
  v47 = v46 >> 62;
  if (!(v46 >> 62))
  {
    v48 = *(&dword_10 + (v46 & 0xFFFFFFFFFFFFFF8));
    if (v48)
    {
      goto LABEL_22;
    }

LABEL_132:
    v302 = *(v44 + 1440);

    v303 = sub_106D10();
    v304 = sub_106FC0();
    if (os_log_type_enabled(v303, v304))
    {
      v305 = swift_slowAlloc();
      *v305 = 0;
      _os_log_impl(&dword_0, v303, v304, "No alarms updated.", v305, 2u);
    }

    v306 = *(v44 + 1216);
    v307 = *(v44 + 1208);
    v308 = *(v44 + 1200);

    (*(v307 + 104))(v306, enum case for SiriTimeEventSender.ReasonDescription.noAlarmsUpdated(_:), v308);
    v135 = swift_task_alloc();
    *(v44 + 1632) = v135;
    *v135 = v44;
    v136 = sub_64EE8;
    goto LABEL_135;
  }

LABEL_130:
  if (!sub_107270())
  {
    goto LABEL_132;
  }

  v48 = sub_107270();
LABEL_22:
  v49 = *(v44 + 1440);
  if (v48 != 1)
  {
    v54 = v35;
    v55 = sub_106D10();
    v56 = sub_106FC0();
    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      *v57 = 0;
      _os_log_impl(&dword_0, v55, v56, "Multiple alarms updated.", v57, 2u);
    }

    v58 = *(v44 + 1576);
    v346 = *(v44 + 1560);
    v350 = *(v44 + 1568);
    v59 = *(v44 + 2104);
    v60 = v355[194];
    v61 = v355[193];
    v62 = v355[192];
    v63 = v355[161];
    v64 = v355[160];
    v65 = v355[156];
    v66 = v55;
    v67 = v355[118];

    v61(v63, v67 + v62, v65);
    v68 = v355;
    v346(v64, v59, v65);
    sub_106EB0();
    sub_106EB0();
    v69 = v355[199];
    v70 = v355[198];
    v71 = v355[161];
    v72 = v355[160];
    v73 = v355[156];
    if (v68[83] == v68[105] && v355[84] == v355[106])
    {
      v70(v355[160], v355[156]);
      v70(v71, v73);
    }

    else
    {
      v74 = v355[84];
      v75 = v355[106];
      v76 = sub_107370();
      v70(v72, v73);
      v70(v71, v73);

      if ((v76 & 1) == 0)
      {
        v171 = v355[197];
        v172 = v355[196];
        v173 = v355[195];
        v174 = v355[194];
        v175 = v355[158];
        v176 = v355[156];
        (v355[193])(v355[159], v355[118] + v355[192], v176);
        v173(v175, v54, v176);
        sub_106EB0();
        sub_106EB0();
        v177 = v355[199];
        v178 = v355[198];
        v179 = v355[159];
        v180 = v355[158];
        v181 = v355[156];
        if (v355[87] == v355[89] && v355[88] == v355[90])
        {
          v178(v355[158], v355[156]);
          v178(v179, v181);
        }

        else
        {
          v201 = v355[88];
          v202 = v355[90];
          v203 = sub_107370();
          v178(v180, v181);
          v178(v179, v181);

          if ((v203 & 1) == 0)
          {

LABEL_119:
            v273 = v68[121];
            v274 = v68[120];
            v275 = v68[119];
            v276 = v68[118];
            v277 = OBJC_IVAR____TtC15AlarmFlowPlugin20UndoChangeStatusFlow_followupPluginAction;
            swift_beginAccess();
            sub_14994(v276 + v277, v275, &qword_137FD0, &unk_1087C0);
            v278 = (*(v273 + 48))(v275, 1, v274);
            v279 = v68[191];
            v280 = v68[190];
            v281 = v68[155];
            v282 = v68[154];
            v283 = v68[153];
            if (v278 == 1)
            {
              v284 = v68[118];
              v285 = v68[117];
              sub_16F70(v68[119], &qword_137FD0, &unk_1087C0);
              sub_104F00();
            }

            else
            {
              v286 = v68[122];
              v287 = v355[121];
              v288 = v355[120];
              v284 = v355[118];
              v289 = v355[117];
              (*(v287 + 32))(v286, v355[119], v288);
              sub_104F10();

              (*(v287 + 8))(v286, v288);
              v68 = v355;
            }

            (*(v282 + 8))(v281, v283);
            sub_73574(v284);
            v290 = v68[179];
            v291 = v68[176];
            v292 = v68[175];
            v293 = v68[174];
            v294 = v68;
            v295 = v68[173];
            v296 = v294[172];
            v297 = v294[171];
            v298 = v294[170];
            v299 = v294[169];
            v300 = v294[168];
            v313 = v294[167];
            v314 = v294[166];
            v315 = v294[165];
            v316 = v294[164];
            v317 = v294[163];
            v318 = v294[162];
            v319 = v294[161];
            v320 = v294[160];
            v321 = v294[159];
            v322 = v294[158];
            v323 = v294[155];
            v324 = v294[152];
            v325 = v294[149];
            v326 = v294[148];
            v327 = v294[147];
            v328 = v294[146];
            v329 = v294[145];
            v330 = v294[144];
            v331 = v294[141];
            v332 = v294[140];
            v333 = v294[139];
            v334 = v294[138];
            v335 = v294[135];
            v337 = v294[132];
            v341 = v294[129];
            v344 = v294[126];
            v349 = v294[124];
            v353 = v294[122];
            v356 = v294[119];

            v301 = v294[1];

            return v301();
          }
        }

        v204 = v355[180];
        v205 = sub_106D10();
        v206 = sub_106FC0();
        if (os_log_type_enabled(v205, v206))
        {
          v207 = swift_slowAlloc();
          *v207 = 0;
          _os_log_impl(&dword_0, v205, v206, "Hitting RF path for UndoChangeStatusFlow, multiple alarms.", v207, 2u);
        }

        v208 = v355[180];
        v209 = v355[138];
        v210 = v355[135];
        v211 = v355[134];
        v212 = v355[133];
        v213 = v355[132];
        v214 = v355[131];
        v35 = v355[130];
        v215 = v355[118];

        v216 = *(v211 + 104);
        v47 = v211 + 104;
        v216(v210, enum case for SiriTimeMeasurement.LogDescription.dialogPatternResponseTime(_:), v212);
        (*(v214 + 16))(v213, v208, v35);
        mach_absolute_time();
        sub_106330();
        v340 = *(v215 + 32);
        v46 = _swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8;
        if (_swiftEmptyArrayStorage >> 62)
        {
          v217 = sub_107270();
        }

        else
        {
          v217 = *(&dword_10 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8));
        }

        v44 = 0;
        v218 = (v355[128] + 8);
        while (v217 != v44)
        {
          if (_swiftEmptyArrayStorage >> 62)
          {
            v219 = sub_1071C0();
          }

          else
          {
            if (v44 >= *(&dword_10 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)))
            {
              goto LABEL_129;
            }

            v219 = _swiftEmptyArrayStorage[v44 + 4];
          }

          v220 = v219;
          v47 = v44 + 1;
          if (__OFADD__(v44, 1))
          {
            __break(1u);
LABEL_129:
            __break(1u);
            goto LABEL_130;
          }

          v35 = v355[129];
          v221 = v355[127];
          sub_106210();
          v222 = sub_75DD4(0, v35, 0);

          (*v218)(v35, v221);
          ++v44;
          if (v222)
          {
            sub_106EC0();
            if (*(&dword_10 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >> 1)
            {
              v223 = *(&dword_10 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8));
              sub_106F10();
            }

            sub_106F20();
            v44 = v47;
          }
        }

        v224 = v355[124];
        v225 = v355[123];

        v226 = sub_106160();
        v227 = *(*(v226 - 8) + 56);
        v227(v224, 1, 1, v226);
        v228 = v225[16];
        v227(v224 + v228, 1, 1, v226);
        v229 = v225[5];
        *(v224 + v229) = 0;
        *(v224 + v225[6]) = 0;
        *(v224 + v225[7]) = 0;
        *(v224 + v225[8]) = 1;
        *(v224 + v225[9]) = 0;
        *(v224 + v225[10]) = 0;
        *(v224 + v225[11]) = 0;
        *(v224 + v225[12]) = 0;
        *(v224 + v225[13]) = 0;
        *(v224 + v225[14]) = _swiftEmptyArrayStorage;
        v230 = v225[15];
        *(v224 + v230) = 0;
        v231 = v225[17];
        *(v224 + v231) = 0;
        sub_16F70(v224 + v228, &qword_137598, &unk_107EB0);
        v227(v224 + v228, 1, 1, v226);
        *(v224 + v231) = 0;
        sub_106100();
        if (qword_136E48 != -1)
        {
          swift_once();
        }

        v232 = v355[191];

        *(v224 + v229) = sub_1060F0();
        if (v232)
        {
          v233 = v355[191];
          v234 = v355[129];
          v235 = v355[127];
          sub_106210();
          v236 = sub_75DD4(0, v234, 0);
          (*v218)(v234, v235);
        }

        else
        {
          v236 = 0;
        }

        v262 = v355[124];
        *(v224 + v230) = v236;
        v166 = sub_20734();
        v355[254] = v166;
        v263 = *(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + 1);
        v352 = (&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
        v264 = swift_task_alloc();
        v355[255] = v264;
        *v264 = v355;
        v264[1] = sub_69D44;
        v164 = 0xD000000000000011;
        v169 = 0x800000000010CFB0;
LABEL_71:
        v170 = v166;
LABEL_115:

        return v352(v164, v169, v170);
      }
    }

    v77 = v355[180];
    v78 = sub_106D10();
    v79 = sub_106FC0();
    if (os_log_type_enabled(v78, v79))
    {
      v80 = swift_slowAlloc();
      *v80 = 0;
      _os_log_impl(&dword_0, v78, v79, "Hitting RF path for UndoChangeStatusFlow, multiple alarms.", v80, 2u);
    }

    v81 = v355[180];
    v82 = v355[139];
    v83 = v355[135];
    v84 = v355[134];
    v85 = v355[133];
    v86 = v355[132];
    v87 = v355[131];
    v88 = v355[130];
    v89 = v355[118];

    v90 = *(v84 + 104);
    v0 = (v84 + 104);
    v90(v83, enum case for SiriTimeMeasurement.LogDescription.dialogPatternResponseTime(_:), v85);
    (*(v87 + 16))(v86, v81, v88);
    mach_absolute_time();
    sub_106330();
    v339 = *(v89 + 32);
    if (_swiftEmptyArrayStorage >> 62)
    {
      v91 = sub_107270();
    }

    else
    {
      v91 = *(&dword_10 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8));
    }

    v1 = 0;
    v92 = (v355[128] + 8);
    while (v91 != v1)
    {
      if (_swiftEmptyArrayStorage >> 62)
      {
        v93 = sub_1071C0();
      }

      else
      {
        if (v1 >= *(&dword_10 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_126;
        }

        v93 = _swiftEmptyArrayStorage[v1 + 4];
      }

      v94 = v93;
      v0 = (v1 + 1);
      if (__OFADD__(v1, 1))
      {
        __break(1u);
LABEL_126:
        __break(1u);
        goto LABEL_127;
      }

      v95 = v355[129];
      v96 = v355[127];
      sub_106210();
      v97 = sub_75DD4(0, v95, 0);

      (*v92)(v95, v96);
      ++v1;
      if (v97)
      {
        sub_106EC0();
        if (*(&dword_10 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >> 1)
        {
          v98 = *(&dword_10 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8));
          sub_106F10();
        }

        sub_106F20();
        v1 = v0;
      }
    }

    v99 = v355[126];
    v100 = v355[125];

    v101 = sub_106160();
    v102 = *(*(v101 - 8) + 56);
    v102(v99, 1, 1, v101);
    v103 = v100[16];
    v102(v99 + v103, 1, 1, v101);
    v104 = v100[5];
    *(v99 + v104) = 0;
    *(v99 + v100[6]) = 0;
    *(v99 + v100[7]) = 0;
    *(v99 + v100[8]) = 1;
    *(v99 + v100[9]) = 0;
    *(v99 + v100[10]) = 0;
    *(v99 + v100[11]) = 0;
    *(v99 + v100[12]) = 0;
    *(v99 + v100[13]) = 0;
    *(v99 + v100[14]) = _swiftEmptyArrayStorage;
    v105 = v100[15];
    *(v99 + v105) = 0;
    v106 = v100[17];
    *(v99 + v106) = 0;
    sub_16F70(v99 + v103, &qword_137598, &unk_107EB0);
    v102(v99 + v103, 1, 1, v101);
    *(v99 + v106) = 0;
    sub_106100();
    if (qword_136E48 != -1)
    {
      swift_once();
    }

    v107 = v355[191];

    *(v99 + v104) = sub_1060F0();
    if (v107)
    {
      v108 = v355[191];
      v109 = v355[129];
      v110 = v355[127];
      sub_106210();
      v111 = sub_75DD4(0, v109, 0);
      (*v92)(v109, v110);
    }

    else
    {
      v111 = 0;
    }

    v165 = v355[126];
    *(v99 + v105) = v111;
    v166 = sub_20764();
    v355[246] = v166;
    v167 = *(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + 1);
    v352 = (&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
    v168 = swift_task_alloc();
    v355[247] = v168;
    *v168 = v355;
    v168[1] = sub_68E3C;
    v169 = 0x800000000010CFD0;
    v164 = 0xD000000000000010;
    goto LABEL_71;
  }

  v50 = sub_106D10();
  v51 = sub_106FC0();
  if (os_log_type_enabled(v50, v51))
  {
    v52 = swift_slowAlloc();
    *v52 = 0;
    _os_log_impl(&dword_0, v50, v51, "One alarm updated.", v52, 2u);
  }

  if (v47)
  {
    v53 = sub_107270();
  }

  else
  {
    v53 = *(&dword_10 + (v46 & 0xFFFFFFFFFFFFFF8));
  }

  if (v53)
  {
    v336 = v35;
    if ((v46 & 0xC000000000000001) != 0)
    {
      v112 = sub_1071C0();
    }

    else
    {
      if (!*(&dword_10 + (v46 & 0xFFFFFFFFFFFFFF8)))
      {
        __break(1u);
        goto LABEL_141;
      }

      v112 = *(v46 + 32);
    }

    v351 = v112;
    *(v44 + 1640) = v112;
    v113 = *(v44 + 1576);
    v343 = *(v44 + 1560);
    v347 = *(v44 + 1568);
    v114 = *(v44 + 2104);
    v115 = v44;
    v116 = *(v44 + 1552);
    v117 = *(v44 + 1544);
    v118 = *(v44 + 1536);
    v119 = *(v44 + 1320);
    v120 = v115[164];
    v121 = v115[156];
    v122 = v115[118];

    v117(v119, v122 + v118, v121);
    v343(v120, v114, v121);
    sub_106EB0();
    sub_106EB0();
    v123 = v115[199];
    v124 = v115[198];
    v125 = v115[165];
    v126 = v115[164];
    v127 = v115[156];
    if (v115[95] == v115[97] && v115[96] == v115[98])
    {
      v124(v115[164], v115[156]);
      v124(v125, v127);

      goto LABEL_64;
    }

    v137 = v115[96];
    v138 = v115[98];
    v139 = sub_107370();
    v124(v126, v127);
    v124(v125, v127);

    if (v139)
    {
LABEL_64:
      v140 = v355[180];
      v141 = v355[149];
      sub_104CF0();
      v142 = sub_106D10();
      v143 = sub_106FC0();
      if (os_log_type_enabled(v142, v143))
      {
        v144 = swift_slowAlloc();
        *v144 = 0;
        _os_log_impl(&dword_0, v142, v143, "Hitting RF path for UndoChangeStatusFlow, 1 alarm.", v144, 2u);
      }

      v145 = v355[180];
      v146 = v355[141];
      v147 = v355[135];
      v148 = v355[134];
      v149 = v355[133];
      v150 = v355[132];
      v151 = v355[131];
      v152 = v355[130];
      v348 = v355[118];

      (*(v148 + 104))(v147, enum case for SiriTimeMeasurement.LogDescription.dialogPatternResponseTime(_:), v149);
      (*(v151 + 16))(v150, v145, v152);
      mach_absolute_time();
      sub_106330();
      v153 = [v351 sleepAlarmAttribute];
      if (!v153)
      {
        v182 = v355[129];
        v183 = v355[128];
        v184 = v355[127];
        v185 = *(v348 + 24);
        sub_106210();
        v186 = sub_75DD4(0, v182, 0);
        v355[213] = v186;
        (*(v183 + 8))(v182, v184);
        sub_106100();
        if (qword_136E48 != -1)
        {
          swift_once();
        }

        v187 = sub_1060F0();
        v355[214] = v187;
        v160 = "s#SuccessSleepDisabled";
        v161 = sub_74800(v186, v187, 0);
        v355[215] = v161;
        v188 = *(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + 1);
        v352 = (&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
        v189 = swift_task_alloc();
        v355[216] = v189;
        *v189 = v355;
        v189[1] = sub_65F28;
        v164 = 0xD000000000000020;
        goto LABEL_114;
      }

      v154 = *(v348 + 24);
      sub_106100();
      if (qword_136E48 == -1)
      {
LABEL_68:
        v155 = v355[129];
        v156 = v355[128];
        v157 = v355[127];

        v158 = sub_1060F0();
        v355[206] = v158;
        sub_106210();
        v159 = sub_75DD4(0, v155, 0);
        v355[207] = v159;
        (*(v156 + 8))(v155, v157);
        v160 = "s#SuccessEnabled";
        v161 = sub_75DC8(0, v158, v159);
        v355[208] = v161;
        v162 = *(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + 1);
        v352 = (&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
        v163 = swift_task_alloc();
        v355[209] = v163;
        *v163 = v355;
        v163[1] = sub_65304;
        v164 = 0xD000000000000025;
LABEL_114:
        v169 = v160 | 0x8000000000000000;
        v170 = v161;
        goto LABEL_115;
      }

LABEL_141:
      swift_once();
      goto LABEL_68;
    }

    v68 = v355;
    v190 = v355[197];
    v191 = v355[196];
    v192 = v355[195];
    v193 = v355[194];
    v194 = v355[162];
    v195 = v355[156];
    (v355[193])(v355[163], v355[118] + v355[192], v195);
    v192(v194, v336, v195);
    sub_106EB0();
    sub_106EB0();
    v196 = v355[199];
    v197 = v355[198];
    v198 = v355[163];
    v199 = v355[162];
    v200 = v355[156];
    if (v68[99] == v68[101] && v355[100] == v355[102])
    {
      v197(v355[162], v355[156]);
      v197(v198, v200);

LABEL_102:
      v240 = v355[180];
      v241 = sub_106D10();
      v242 = sub_106FC0();
      if (os_log_type_enabled(v241, v242))
      {
        v243 = swift_slowAlloc();
        *v243 = 0;
        _os_log_impl(&dword_0, v241, v242, "Hitting RF path for UndoChangeStatusFlow, 1 alarm.", v243, 2u);
      }

      v244 = v355[180];
      v245 = v355[140];
      v246 = v355[135];
      v247 = v355[134];
      v248 = v355[133];
      v249 = v355[132];
      v250 = v355[131];
      v251 = v355[130];

      (*(v247 + 104))(v246, enum case for SiriTimeMeasurement.LogDescription.dialogPatternResponseTime(_:), v248);
      (*(v250 + 16))(v249, v244, v251);
      mach_absolute_time();
      sub_106330();
      v252 = [v351 sleepAlarmAttribute];
      if (v252)
      {
        v253 = v355[118];

        v254 = *(v253 + 24);
        sub_106100();
        if (qword_136E48 != -1)
        {
          swift_once();
        }

        v255 = v355[129];
        v256 = v355[128];
        v257 = v355[127];

        v258 = sub_1060F0();
        v355[225] = v258;
        sub_106210();
        v259 = sub_75DD4(0, v255, 0);
        v355[226] = v259;
        (*(v256 + 8))(v255, v257);
        v160 = "s#SuccessDisabled";
        v161 = sub_75DC8(0, v258, v259);
        v355[227] = v161;
        v260 = *(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + 1);
        v352 = (&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
        v261 = swift_task_alloc();
        v355[228] = v261;
        *v261 = v355;
        v261[1] = sub_66EC4;
        v164 = 0xD000000000000026;
      }

      else
      {
        v265 = v355[129];
        v266 = v355[128];
        v267 = v355[127];
        v268 = *(v355[118] + 24);
        sub_106210();
        v269 = sub_75DD4(0, v265, 0);
        v355[235] = v269;
        (*(v266 + 8))(v265, v267);
        sub_106100();
        if (qword_136E48 != -1)
        {
          swift_once();
        }

        v270 = sub_1060F0();
        v355[236] = v270;
        v160 = "ModifyAll#Enable";
        v161 = sub_75DC8(v269, v270, 0);
        v355[237] = v161;
        v271 = *(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + 1);
        v352 = (&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
        v272 = swift_task_alloc();
        v355[238] = v272;
        *v272 = v355;
        v272[1] = sub_67DD4;
        v164 = 0xD000000000000021;
      }

      goto LABEL_114;
    }

    v237 = v355[100];
    v238 = v355[102];
    v239 = sub_107370();
    v197(v199, v200);
    v197(v198, v200);

    if (v239)
    {
      goto LABEL_102;
    }

    goto LABEL_119;
  }

  v128 = *(v44 + 1440);

  v129 = sub_106D10();
  v130 = sub_106FB0();
  if (os_log_type_enabled(v129, v130))
  {
    v131 = swift_slowAlloc();
    *v131 = 0;
    _os_log_impl(&dword_0, v129, v130, "Can't retrieve changed alarm or it's snippet information.", v131, 2u);
  }

  v132 = *(v44 + 1216);
  v133 = *(v44 + 1208);
  v134 = *(v44 + 1200);

  (*(v133 + 104))(v132, enum case for SiriTimeEventSender.ReasonDescription.failedToFetchChangedAlarm(_:), v134);
  v135 = swift_task_alloc();
  *(v44 + 1960) = v135;
  *v135 = v44;
  v136 = sub_68CE4;
LABEL_135:
  v135[1] = v136;
  v309 = *(v44 + 1216);
  v310 = *(v44 + 944);
  v311 = *(v44 + 936);

  return sub_6E8C0(v311, v309);
}

uint64_t sub_61368()
{
  v1 = *(*v0 + 1608);
  v2 = *(*v0 + 1600);
  v3 = *(*v0 + 1488);
  v5 = *v0;

  return _swift_task_switch(sub_6149C, 0, 0);
}

uint64_t sub_6149C()
{
  v1 = *(v0 + 872);

  sub_729D4(v2, sub_72CFC);
  v3 = *(v0 + 912);
  sub_BD4A4(v3, *(v0 + 1240));
  v4 = v3 >> 62;
  if (v3 >> 62)
  {
LABEL_108:
    if (sub_107270())
    {
      v5 = sub_107270();
      goto LABEL_3;
    }

LABEL_110:
    v268 = *(v0 + 1440);

    v269 = sub_106D10();
    v270 = sub_106FC0();
    if (os_log_type_enabled(v269, v270))
    {
      v271 = swift_slowAlloc();
      *v271 = 0;
      _os_log_impl(&dword_0, v269, v270, "No alarms updated.", v271, 2u);
    }

    v272 = *(v0 + 1216);
    v88 = v0;
    v273 = *(v0 + 1208);
    v274 = v88[150];

    (*(v273 + 104))(v272, enum case for SiriTimeEventSender.ReasonDescription.noAlarmsUpdated(_:), v274);
    v91 = swift_task_alloc();
    v88[204] = v91;
    *v91 = v88;
    v92 = sub_64EE8;
    goto LABEL_113;
  }

  v5 = *(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8));
  if (!v5)
  {
    goto LABEL_110;
  }

LABEL_3:
  v6 = *(v0 + 1440);
  v312 = v0;
  if (v5 != 1)
  {
    v315 = v1;
    v25 = sub_106D10();
    v26 = sub_106FC0();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_0, v25, v26, "Multiple alarms updated.", v27, 2u);
    }

    v28 = *(v0 + 1576);
    v305 = *(v0 + 1560);
    v309 = *(v0 + 1568);
    v29 = *(v0 + 2104);
    v30 = *(v0 + 1552);
    v31 = *(v0 + 1544);
    v32 = v25;
    v33 = *(v0 + 1536);
    v34 = *(v0 + 1288);
    v35 = *(v0 + 1280);
    v36 = *(v0 + 1248);
    v37 = *(v0 + 944);

    v31(v34, v37 + v33, v36);
    v305(v35, v29, v36);
    sub_106EB0();
    sub_106EB0();
    v38 = *(v0 + 1592);
    v39 = *(v0 + 1584);
    v40 = *(v0 + 1288);
    v41 = *(v0 + 1280);
    v42 = *(v0 + 1248);
    if (*(v0 + 664) == *(v0 + 840) && *(v0 + 672) == *(v0 + 848))
    {
      v39(*(v0 + 1280), *(v0 + 1248));
      v39(v40, v42);
    }

    else
    {
      v43 = *(v0 + 672);
      v44 = *(v0 + 848);
      v45 = sub_107370();
      v39(v41, v42);
      v39(v40, v42);

      if ((v45 & 1) == 0)
      {
        v127 = v0;
        v128 = *(v0 + 1576);
        v129 = *(v0 + 1568);
        v130 = *(v312 + 1560);
        v131 = *(v312 + 1552);
        v132 = *(v312 + 1264);
        v133 = *(v312 + 1248);
        (*(v312 + 1544))(*(v312 + 1272), *(v312 + 944) + *(v312 + 1536), v133);
        v130(v132, enum case for AlarmNLv4Constants.AlarmVerb.disable(_:), v133);
        sub_106EB0();
        sub_106EB0();
        v134 = *(v312 + 1592);
        v135 = *(v312 + 1584);
        v136 = *(v312 + 1272);
        v137 = *(v312 + 1264);
        v138 = *(v312 + 1248);
        if (*(v127 + 696) == *(v127 + 712) && *(v312 + 704) == *(v312 + 720))
        {
          v135(*(v312 + 1264), *(v312 + 1248));
          v135(v136, v138);
        }

        else
        {
          v159 = *(v312 + 704);
          v160 = *(v312 + 720);
          v161 = sub_107370();
          v135(v137, v138);
          v135(v136, v138);

          if ((v161 & 1) == 0)
          {

LABEL_98:
            v238 = v312;
            v239 = *(v312 + 968);
            v240 = *(v312 + 960);
            v241 = *(v312 + 952);
            v242 = *(v312 + 944);
            v243 = OBJC_IVAR____TtC15AlarmFlowPlugin20UndoChangeStatusFlow_followupPluginAction;
            swift_beginAccess();
            sub_14994(v242 + v243, v241, &qword_137FD0, &unk_1087C0);
            v244 = (*(v239 + 48))(v241, 1, v240);
            v245 = *(v312 + 1528);
            v246 = *(v312 + 1520);
            v247 = *(v312 + 1240);
            v248 = *(v312 + 1232);
            v249 = *(v312 + 1224);
            if (v244 == 1)
            {
              v250 = *(v312 + 944);
              v251 = *(v312 + 936);
              sub_16F70(*(v312 + 952), &qword_137FD0, &unk_1087C0);
              sub_104F00();
            }

            else
            {
              v252 = *(v312 + 976);
              v253 = *(v312 + 968);
              v317 = *(v312 + 1240);
              v254 = *(v312 + 960);
              v250 = *(v312 + 944);
              v255 = *(v312 + 936);
              (*(v253 + 32))(v252, *(v312 + 952), v254);
              sub_104F10();

              v256 = v254;
              v247 = v317;
              (*(v253 + 8))(v252, v256);
            }

            (*(v248 + 8))(v247, v249);
            sub_73574(v250);
            v257 = *(v312 + 1432);
            v258 = *(v312 + 1408);
            v259 = *(v312 + 1400);
            v260 = *(v312 + 1392);
            v261 = *(v312 + 1384);
            v262 = *(v312 + 1376);
            v263 = *(v312 + 1368);
            v264 = *(v312 + 1360);
            v265 = *(v312 + 1352);
            v266 = *(v312 + 1344);
            v278 = *(v312 + 1336);
            v279 = *(v312 + 1328);
            v280 = *(v312 + 1320);
            v281 = *(v312 + 1312);
            v282 = *(v312 + 1304);
            v283 = *(v312 + 1296);
            v284 = *(v312 + 1288);
            v285 = *(v312 + 1280);
            v286 = *(v312 + 1272);
            v287 = *(v312 + 1264);
            v288 = *(v312 + 1240);
            v289 = *(v312 + 1216);
            v290 = *(v312 + 1192);
            v291 = *(v312 + 1184);
            v292 = *(v312 + 1176);
            v293 = *(v312 + 1168);
            v294 = *(v312 + 1160);
            v295 = *(v312 + 1152);
            v296 = *(v312 + 1128);
            v297 = *(v312 + 1120);
            v298 = *(v312 + 1112);
            v299 = *(v312 + 1104);
            v300 = *(v312 + 1080);
            v302 = *(v312 + 1056);
            v303 = *(v312 + 1032);
            v307 = *(v312 + 1008);
            v311 = *(v312 + 992);
            v313 = *(v312 + 976);
            v318 = *(v238 + 952);

            v267 = *(v238 + 8);

            return v267();
          }
        }

        v162 = *(v312 + 1440);
        v163 = sub_106D10();
        v164 = sub_106FC0();
        if (os_log_type_enabled(v163, v164))
        {
          v165 = swift_slowAlloc();
          *v165 = 0;
          _os_log_impl(&dword_0, v163, v164, "Hitting RF path for UndoChangeStatusFlow, multiple alarms.", v165, 2u);
        }

        v166 = *(v312 + 1440);
        v167 = *(v312 + 1104);
        v168 = *(v312 + 1080);
        v169 = *(v312 + 1072);
        v170 = *(v312 + 1064);
        v171 = *(v312 + 1056);
        v172 = *(v312 + 1048);
        v173 = *(v312 + 1040);
        v174 = *(v312 + 944);

        (*(v169 + 104))(v168, enum case for SiriTimeMeasurement.LogDescription.dialogPatternResponseTime(_:), v170);
        v175 = *(v172 + 16);
        v4 = v172 + 16;
        v175(v171, v166, v173);
        mach_absolute_time();
        sub_106330();
        v301 = *(v174 + 32);
        v176 = v315;
        if (v315 >> 62)
        {
          v3 = sub_107270();
        }

        else
        {
          v3 = *(&dword_10 + (v315 & 0xFFFFFFFFFFFFFF8));
        }

        v177 = 0;
        v0 = v312;
        v1 = v315 & 0xC000000000000001;
        v178 = (*(v312 + 1024) + 8);
        while (v3 != v177)
        {
          if (v1)
          {
            v179 = sub_1071C0();
          }

          else
          {
            if (v177 >= *(&dword_10 + (v315 & 0xFFFFFFFFFFFFFF8)))
            {
              goto LABEL_107;
            }

            v179 = *(v176 + 8 * v177 + 32);
          }

          v180 = v179;
          v4 = v177 + 1;
          if (__OFADD__(v177, 1))
          {
LABEL_106:
            __break(1u);
LABEL_107:
            __break(1u);
            goto LABEL_108;
          }

          v181 = *(v0 + 1032);
          v182 = *(v0 + 1016);
          sub_106210();
          v183 = sub_75DD4(0, v181, 0);

          v184 = v181;
          v176 = v315;
          (*v178)(v184, v182);
          ++v177;
          if (v183)
          {
            sub_106EC0();
            if (*(&dword_10 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >> 1)
            {
              v185 = *(&dword_10 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8));
              sub_106F10();
              v0 = v312;
            }

            sub_106F20();
            v177 = v4;
          }
        }

        v186 = *(v0 + 992);
        v187 = v0;
        v188 = *(v0 + 984);

        v189 = sub_106160();
        v190 = *(*(v189 - 8) + 56);
        v190(v186, 1, 1, v189);
        v191 = v188[16];
        v190(v186 + v191, 1, 1, v189);
        v192 = v188[5];
        *(v186 + v192) = 0;
        *(v186 + v188[6]) = 0;
        *(v186 + v188[7]) = 0;
        *(v186 + v188[8]) = 1;
        *(v186 + v188[9]) = 0;
        *(v186 + v188[10]) = 0;
        *(v186 + v188[11]) = 0;
        *(v186 + v188[12]) = 0;
        *(v186 + v188[13]) = 0;
        *(v186 + v188[14]) = _swiftEmptyArrayStorage;
        v193 = v188[15];
        *(v186 + v193) = 0;
        v194 = v188[17];
        *(v186 + v194) = 0;
        sub_16F70(v186 + v191, &qword_137598, &unk_107EB0);
        v190(v186 + v191, 1, 1, v189);
        *(v186 + v194) = 0;
        sub_106100();
        if (qword_136E48 != -1)
        {
          swift_once();
        }

        v195 = v187[191];

        *(v186 + v192) = sub_1060F0();
        if (v195)
        {
          v196 = v187[191];
          v197 = v187[129];
          v198 = v187[127];
          sub_106210();
          v199 = sub_75DD4(0, v197, 0);
          (*v178)(v197, v198);
        }

        else
        {
          v199 = 0;
        }

        v225 = v187[124];
        *(v186 + v193) = v199;
        v226 = sub_20734();
        v187[254] = v226;
        v227 = *(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + 1);
        v316 = (&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
        v228 = swift_task_alloc();
        v187[255] = v228;
        *v228 = v187;
        v228[1] = sub_69D44;
        v120 = 0xD000000000000011;
        v125 = 0x800000000010CFB0;
        v126 = v226;
        goto LABEL_94;
      }
    }

    v46 = *(v0 + 1440);
    v47 = sub_106D10();
    v48 = sub_106FC0();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      *v49 = 0;
      _os_log_impl(&dword_0, v47, v48, "Hitting RF path for UndoChangeStatusFlow, multiple alarms.", v49, 2u);
    }

    v50 = *(v0 + 1440);
    v51 = *(v0 + 1112);
    v52 = *(v0 + 1080);
    v53 = *(v0 + 1072);
    v54 = *(v312 + 1064);
    v55 = *(v312 + 1056);
    v56 = *(v312 + 1048);
    v57 = *(v312 + 1040);
    v58 = *(v312 + 944);

    (*(v53 + 104))(v52, enum case for SiriTimeMeasurement.LogDescription.dialogPatternResponseTime(_:), v54);
    v59 = *(v56 + 16);
    v4 = v56 + 16;
    v59(v55, v50, v57);
    mach_absolute_time();
    sub_106330();
    v306 = *(v58 + 32);
    v60 = v315;
    v0 = v315 & 0xFFFFFFFFFFFFFF8;
    if (v315 >> 62)
    {
      v3 = sub_107270();
    }

    else
    {
      v3 = *(&dword_10 + (v315 & 0xFFFFFFFFFFFFFF8));
    }

    v61 = 0;
    v1 = v315 & 0xC000000000000001;
    v62 = (*(v312 + 1024) + 8);
    while (v3 != v61)
    {
      if (v1)
      {
        v63 = sub_1071C0();
      }

      else
      {
        if (v61 >= *(&dword_10 + (v315 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_105;
        }

        v63 = *(v60 + 8 * v61 + 32);
      }

      v64 = v63;
      v4 = v61 + 1;
      if (__OFADD__(v61, 1))
      {
        __break(1u);
LABEL_105:
        __break(1u);
        goto LABEL_106;
      }

      v65 = *(v312 + 1032);
      v66 = *(v312 + 1016);
      sub_106210();
      v67 = sub_75DD4(0, v65, 0);

      v68 = v65;
      v60 = v315;
      (*v62)(v68, v66);
      ++v61;
      if (v67)
      {
        sub_106EC0();
        if (*(&dword_10 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >> 1)
        {
          v69 = *(&dword_10 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8));
          sub_106F10();
        }

        sub_106F20();
        v61 = v4;
      }
    }

    v70 = *(v312 + 1008);
    v71 = *(v312 + 1000);

    v72 = sub_106160();
    v73 = *(*(v72 - 8) + 56);
    v73(v70, 1, 1, v72);
    v74 = v71[16];
    v73(v70 + v74, 1, 1, v72);
    v75 = v71[5];
    *(v70 + v75) = 0;
    *(v70 + v71[6]) = 0;
    *(v70 + v71[7]) = 0;
    *(v70 + v71[8]) = 1;
    *(v70 + v71[9]) = 0;
    *(v70 + v71[10]) = 0;
    *(v70 + v71[11]) = 0;
    *(v70 + v71[12]) = 0;
    *(v70 + v71[13]) = 0;
    *(v70 + v71[14]) = _swiftEmptyArrayStorage;
    v76 = v71[15];
    *(v70 + v76) = 0;
    v77 = v71[17];
    *(v70 + v77) = 0;
    sub_16F70(v70 + v74, &qword_137598, &unk_107EB0);
    v73(v70 + v74, 1, 1, v72);
    *(v70 + v77) = 0;
    sub_106100();
    if (qword_136E48 != -1)
    {
      swift_once();
    }

    v78 = *(v312 + 1528);

    *(v70 + v75) = sub_1060F0();
    if (v78)
    {
      v79 = *(v312 + 1528);
      v80 = *(v312 + 1032);
      v81 = *(v312 + 1016);
      sub_106210();
      v82 = sub_75DD4(0, v80, 0);
      (*v62)(v80, v81);
    }

    else
    {
      v82 = 0;
    }

    v121 = *(v312 + 1008);
    *(v70 + v76) = v82;
    v122 = sub_20764();
    *(v312 + 1968) = v122;
    v123 = *(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + 1);
    v316 = (&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
    v124 = swift_task_alloc();
    *(v312 + 1976) = v124;
    *v124 = v312;
    v124[1] = sub_68E3C;
    v125 = 0x800000000010CFD0;
    v120 = 0xD000000000000010;
    v126 = v122;
    goto LABEL_94;
  }

  v7 = sub_106D10();
  v8 = sub_106FC0();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_0, v7, v8, "One alarm updated.", v9, 2u);
  }

  if (v4)
  {
    if (sub_107270())
    {
      goto LABEL_8;
    }
  }

  else if (*(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8)))
  {
LABEL_8:
    if ((v3 & 0xC000000000000001) != 0)
    {
      v10 = sub_1071C0();
    }

    else
    {
      if (!*(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8)))
      {
        __break(1u);
        goto LABEL_119;
      }

      v10 = *(v3 + 32);
    }

    v314 = v10;
    *(v0 + 1640) = v10;
    v11 = *(v0 + 1576);
    v304 = *(v0 + 1560);
    v308 = *(v0 + 1568);
    v12 = *(v0 + 2104);
    v13 = *(v0 + 1552);
    v14 = *(v0 + 1544);
    v15 = *(v0 + 1536);
    v16 = *(v0 + 1320);
    v17 = *(v0 + 1312);
    v18 = *(v0 + 1248);
    v19 = *(v0 + 944);

    v14(v16, v19 + v15, v18);
    v304(v17, v12, v18);
    sub_106EB0();
    sub_106EB0();
    v20 = *(v0 + 1592);
    v21 = *(v0 + 1584);
    v22 = *(v0 + 1320);
    v23 = *(v0 + 1312);
    v24 = *(v0 + 1248);
    if (*(v0 + 760) == *(v0 + 776) && *(v0 + 768) == *(v0 + 784))
    {
      v21(*(v0 + 1312), *(v0 + 1248));
      v21(v22, v24);

      goto LABEL_44;
    }

    v93 = *(v0 + 768);
    v94 = *(v0 + 784);
    v95 = sub_107370();
    v21(v23, v24);
    v21(v22, v24);

    if (v95)
    {
LABEL_44:
      v96 = *(v0 + 1440);
      v97 = *(v0 + 1192);
      sub_104CF0();
      v98 = sub_106D10();
      v99 = sub_106FC0();
      if (os_log_type_enabled(v98, v99))
      {
        v100 = swift_slowAlloc();
        *v100 = 0;
        _os_log_impl(&dword_0, v98, v99, "Hitting RF path for UndoChangeStatusFlow, 1 alarm.", v100, 2u);
      }

      v101 = *(v0 + 1440);
      v102 = *(v0 + 1128);
      v103 = *(v0 + 1080);
      v104 = *(v0 + 1072);
      v105 = *(v0 + 1064);
      v106 = *(v0 + 1056);
      v107 = *(v0 + 1048);
      v108 = *(v0 + 1040);
      v310 = *(v0 + 944);

      (*(v104 + 104))(v103, enum case for SiriTimeMeasurement.LogDescription.dialogPatternResponseTime(_:), v105);
      (*(v107 + 16))(v106, v101, v108);
      mach_absolute_time();
      sub_106330();
      v109 = [v314 sleepAlarmAttribute];
      if (!v109)
      {
        v139 = *(v0 + 1032);
        v140 = *(v0 + 1024);
        v141 = *(v0 + 1016);
        v142 = *(v310 + 24);
        sub_106210();
        v143 = sub_75DD4(0, v139, 0);
        *(v0 + 1704) = v143;
        (*(v140 + 8))(v139, v141);
        sub_106100();
        if (qword_136E48 != -1)
        {
          swift_once();
        }

        v144 = sub_1060F0();
        *(v0 + 1712) = v144;
        v116 = "s#SuccessSleepDisabled";
        v117 = sub_74800(v143, v144, 0);
        *(v312 + 1720) = v117;
        v145 = *(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + 1);
        v316 = (&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
        v146 = swift_task_alloc();
        *(v312 + 1728) = v146;
        *v146 = v312;
        v146[1] = sub_65F28;
        v120 = 0xD000000000000020;
        goto LABEL_93;
      }

      v110 = *(v310 + 24);
      sub_106100();
      if (qword_136E48 == -1)
      {
LABEL_48:
        v111 = *(v0 + 1032);
        v112 = *(v0 + 1024);
        v113 = *(v312 + 1016);

        v114 = sub_1060F0();
        *(v312 + 1648) = v114;
        sub_106210();
        v115 = sub_75DD4(0, v111, 0);
        *(v312 + 1656) = v115;
        (*(v112 + 8))(v111, v113);
        v116 = "s#SuccessEnabled";
        v117 = sub_75DC8(0, v114, v115);
        *(v312 + 1664) = v117;
        v118 = *(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + 1);
        v316 = (&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
        v119 = swift_task_alloc();
        *(v312 + 1672) = v119;
        *v119 = v312;
        v119[1] = sub_65304;
        v120 = 0xD000000000000025;
LABEL_93:
        v125 = v116 | 0x8000000000000000;
        v126 = v117;
LABEL_94:

        return v316(v120, v125, v126);
      }

LABEL_119:
      swift_once();
      goto LABEL_48;
    }

    v147 = v0;
    v148 = *(v0 + 1576);
    v149 = *(v0 + 1568);
    v150 = *(v312 + 1560);
    v151 = *(v312 + 1552);
    v152 = *(v312 + 1296);
    v153 = *(v312 + 1248);
    (*(v312 + 1544))(*(v312 + 1304), *(v312 + 944) + *(v312 + 1536), v153);
    v150(v152, enum case for AlarmNLv4Constants.AlarmVerb.disable(_:), v153);
    sub_106EB0();
    sub_106EB0();
    v154 = *(v312 + 1592);
    v155 = *(v312 + 1584);
    v156 = *(v312 + 1304);
    v157 = *(v312 + 1296);
    v158 = *(v312 + 1248);
    if (*(v147 + 792) == *(v147 + 808) && *(v312 + 800) == *(v312 + 816))
    {
      v155(*(v312 + 1296), *(v312 + 1248));
      v155(v156, v158);

LABEL_81:
      v203 = *(v312 + 1440);
      v204 = sub_106D10();
      v205 = sub_106FC0();
      if (os_log_type_enabled(v204, v205))
      {
        v206 = swift_slowAlloc();
        *v206 = 0;
        _os_log_impl(&dword_0, v204, v205, "Hitting RF path for UndoChangeStatusFlow, 1 alarm.", v206, 2u);
      }

      v207 = *(v312 + 1440);
      v208 = *(v312 + 1120);
      v209 = *(v312 + 1080);
      v210 = *(v312 + 1072);
      v211 = *(v312 + 1064);
      v212 = *(v312 + 1056);
      v213 = *(v312 + 1048);
      v214 = *(v312 + 1040);

      (*(v210 + 104))(v209, enum case for SiriTimeMeasurement.LogDescription.dialogPatternResponseTime(_:), v211);
      (*(v213 + 16))(v212, v207, v214);
      mach_absolute_time();
      sub_106330();
      v215 = [v314 sleepAlarmAttribute];
      if (v215)
      {
        v216 = *(v312 + 944);

        v217 = *(v216 + 24);
        sub_106100();
        if (qword_136E48 != -1)
        {
          swift_once();
        }

        v218 = *(v312 + 1032);
        v219 = *(v312 + 1024);
        v220 = *(v312 + 1016);

        v221 = sub_1060F0();
        *(v312 + 1800) = v221;
        sub_106210();
        v222 = sub_75DD4(0, v218, 0);
        *(v312 + 1808) = v222;
        (*(v219 + 8))(v218, v220);
        v116 = "s#SuccessDisabled";
        v117 = sub_75DC8(0, v221, v222);
        *(v312 + 1816) = v117;
        v223 = *(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + 1);
        v316 = (&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
        v224 = swift_task_alloc();
        *(v312 + 1824) = v224;
        *v224 = v312;
        v224[1] = sub_66EC4;
        v120 = 0xD000000000000026;
      }

      else
      {
        v229 = *(v312 + 1032);
        v230 = *(v312 + 1024);
        v231 = *(v312 + 1016);
        v232 = *(*(v312 + 944) + 24);
        sub_106210();
        v233 = sub_75DD4(0, v229, 0);
        *(v312 + 1880) = v233;
        (*(v230 + 8))(v229, v231);
        sub_106100();
        if (qword_136E48 != -1)
        {
          swift_once();
        }

        v234 = sub_1060F0();
        *(v312 + 1888) = v234;
        v116 = "ModifyAll#Enable";
        v117 = sub_75DC8(v233, v234, 0);
        *(v312 + 1896) = v117;
        v235 = *(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + 1);
        v316 = (&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
        v236 = swift_task_alloc();
        *(v312 + 1904) = v236;
        *v236 = v312;
        v236[1] = sub_67DD4;
        v120 = 0xD000000000000021;
      }

      goto LABEL_93;
    }

    v200 = *(v312 + 800);
    v201 = *(v312 + 816);
    v202 = sub_107370();
    v155(v157, v158);
    v155(v156, v158);

    if (v202)
    {
      goto LABEL_81;
    }

    goto LABEL_98;
  }

  v83 = *(v0 + 1440);

  v84 = sub_106D10();
  v85 = sub_106FB0();
  if (os_log_type_enabled(v84, v85))
  {
    v86 = swift_slowAlloc();
    *v86 = 0;
    _os_log_impl(&dword_0, v84, v85, "Can't retrieve changed alarm or it's snippet information.", v86, 2u);
  }

  v87 = *(v0 + 1216);
  v88 = v0;
  v89 = *(v0 + 1208);
  v90 = v88[150];

  (*(v89 + 104))(v87, enum case for SiriTimeEventSender.ReasonDescription.failedToFetchChangedAlarm(_:), v90);
  v91 = swift_task_alloc();
  v88[245] = v91;
  *v91 = v88;
  v92 = sub_68CE4;
LABEL_113:
  v91[1] = v92;
  v275 = v88[152];
  v276 = v88[118];
  v277 = v88[117];

  return sub_6E8C0(v277, v275);
}

uint64_t sub_63128()
{
  v1 = *(*v0 + 1624);
  v2 = *(*v0 + 1616);
  v3 = *(*v0 + 1488);
  v5 = *v0;

  return _swift_task_switch(sub_6325C, 0, 0);
}

uint64_t sub_6325C()
{
  v1 = *(v0 + 864);

  sub_729D4(v2, sub_72CFC);
  v3 = *(v0 + 912);
  sub_BD4A4(v3, *(v0 + 1240));
  v4 = v3 >> 62;
  if (v3 >> 62)
  {
LABEL_108:
    if (sub_107270())
    {
      v5 = sub_107270();
      goto LABEL_3;
    }

LABEL_110:
    v268 = *(v0 + 1440);

    v269 = sub_106D10();
    v270 = sub_106FC0();
    if (os_log_type_enabled(v269, v270))
    {
      v271 = swift_slowAlloc();
      *v271 = 0;
      _os_log_impl(&dword_0, v269, v270, "No alarms updated.", v271, 2u);
    }

    v272 = *(v0 + 1216);
    v88 = v0;
    v273 = *(v0 + 1208);
    v274 = v88[150];

    (*(v273 + 104))(v272, enum case for SiriTimeEventSender.ReasonDescription.noAlarmsUpdated(_:), v274);
    v91 = swift_task_alloc();
    v88[204] = v91;
    *v91 = v88;
    v92 = sub_64EE8;
    goto LABEL_113;
  }

  v5 = *(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8));
  if (!v5)
  {
    goto LABEL_110;
  }

LABEL_3:
  v6 = *(v0 + 1440);
  v312 = v0;
  if (v5 != 1)
  {
    v315 = v1;
    v25 = sub_106D10();
    v26 = sub_106FC0();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_0, v25, v26, "Multiple alarms updated.", v27, 2u);
    }

    v28 = *(v0 + 1576);
    v305 = *(v0 + 1560);
    v309 = *(v0 + 1568);
    v29 = *(v0 + 2104);
    v30 = *(v0 + 1552);
    v31 = *(v0 + 1544);
    v32 = v25;
    v33 = *(v0 + 1536);
    v34 = *(v0 + 1288);
    v35 = *(v0 + 1280);
    v36 = *(v0 + 1248);
    v37 = *(v0 + 944);

    v31(v34, v37 + v33, v36);
    v305(v35, v29, v36);
    sub_106EB0();
    sub_106EB0();
    v38 = *(v0 + 1592);
    v39 = *(v0 + 1584);
    v40 = *(v0 + 1288);
    v41 = *(v0 + 1280);
    v42 = *(v0 + 1248);
    if (*(v0 + 664) == *(v0 + 840) && *(v0 + 672) == *(v0 + 848))
    {
      v39(*(v0 + 1280), *(v0 + 1248));
      v39(v40, v42);
    }

    else
    {
      v43 = *(v0 + 672);
      v44 = *(v0 + 848);
      v45 = sub_107370();
      v39(v41, v42);
      v39(v40, v42);

      if ((v45 & 1) == 0)
      {
        v127 = v0;
        v128 = *(v0 + 1576);
        v129 = *(v0 + 1568);
        v130 = *(v312 + 1560);
        v131 = *(v312 + 1552);
        v132 = *(v312 + 1264);
        v133 = *(v312 + 1248);
        (*(v312 + 1544))(*(v312 + 1272), *(v312 + 944) + *(v312 + 1536), v133);
        v130(v132, enum case for AlarmNLv4Constants.AlarmVerb.disable(_:), v133);
        sub_106EB0();
        sub_106EB0();
        v134 = *(v312 + 1592);
        v135 = *(v312 + 1584);
        v136 = *(v312 + 1272);
        v137 = *(v312 + 1264);
        v138 = *(v312 + 1248);
        if (*(v127 + 696) == *(v127 + 712) && *(v312 + 704) == *(v312 + 720))
        {
          v135(*(v312 + 1264), *(v312 + 1248));
          v135(v136, v138);
        }

        else
        {
          v159 = *(v312 + 704);
          v160 = *(v312 + 720);
          v161 = sub_107370();
          v135(v137, v138);
          v135(v136, v138);

          if ((v161 & 1) == 0)
          {

LABEL_98:
            v238 = v312;
            v239 = *(v312 + 968);
            v240 = *(v312 + 960);
            v241 = *(v312 + 952);
            v242 = *(v312 + 944);
            v243 = OBJC_IVAR____TtC15AlarmFlowPlugin20UndoChangeStatusFlow_followupPluginAction;
            swift_beginAccess();
            sub_14994(v242 + v243, v241, &qword_137FD0, &unk_1087C0);
            v244 = (*(v239 + 48))(v241, 1, v240);
            v245 = *(v312 + 1528);
            v246 = *(v312 + 1520);
            v247 = *(v312 + 1240);
            v248 = *(v312 + 1232);
            v249 = *(v312 + 1224);
            if (v244 == 1)
            {
              v250 = *(v312 + 944);
              v251 = *(v312 + 936);
              sub_16F70(*(v312 + 952), &qword_137FD0, &unk_1087C0);
              sub_104F00();
            }

            else
            {
              v252 = *(v312 + 976);
              v253 = *(v312 + 968);
              v317 = *(v312 + 1240);
              v254 = *(v312 + 960);
              v250 = *(v312 + 944);
              v255 = *(v312 + 936);
              (*(v253 + 32))(v252, *(v312 + 952), v254);
              sub_104F10();

              v256 = v254;
              v247 = v317;
              (*(v253 + 8))(v252, v256);
            }

            (*(v248 + 8))(v247, v249);
            sub_73574(v250);
            v257 = *(v312 + 1432);
            v258 = *(v312 + 1408);
            v259 = *(v312 + 1400);
            v260 = *(v312 + 1392);
            v261 = *(v312 + 1384);
            v262 = *(v312 + 1376);
            v263 = *(v312 + 1368);
            v264 = *(v312 + 1360);
            v265 = *(v312 + 1352);
            v266 = *(v312 + 1344);
            v278 = *(v312 + 1336);
            v279 = *(v312 + 1328);
            v280 = *(v312 + 1320);
            v281 = *(v312 + 1312);
            v282 = *(v312 + 1304);
            v283 = *(v312 + 1296);
            v284 = *(v312 + 1288);
            v285 = *(v312 + 1280);
            v286 = *(v312 + 1272);
            v287 = *(v312 + 1264);
            v288 = *(v312 + 1240);
            v289 = *(v312 + 1216);
            v290 = *(v312 + 1192);
            v291 = *(v312 + 1184);
            v292 = *(v312 + 1176);
            v293 = *(v312 + 1168);
            v294 = *(v312 + 1160);
            v295 = *(v312 + 1152);
            v296 = *(v312 + 1128);
            v297 = *(v312 + 1120);
            v298 = *(v312 + 1112);
            v299 = *(v312 + 1104);
            v300 = *(v312 + 1080);
            v302 = *(v312 + 1056);
            v303 = *(v312 + 1032);
            v307 = *(v312 + 1008);
            v311 = *(v312 + 992);
            v313 = *(v312 + 976);
            v318 = *(v238 + 952);

            v267 = *(v238 + 8);

            return v267();
          }
        }

        v162 = *(v312 + 1440);
        v163 = sub_106D10();
        v164 = sub_106FC0();
        if (os_log_type_enabled(v163, v164))
        {
          v165 = swift_slowAlloc();
          *v165 = 0;
          _os_log_impl(&dword_0, v163, v164, "Hitting RF path for UndoChangeStatusFlow, multiple alarms.", v165, 2u);
        }

        v166 = *(v312 + 1440);
        v167 = *(v312 + 1104);
        v168 = *(v312 + 1080);
        v169 = *(v312 + 1072);
        v170 = *(v312 + 1064);
        v171 = *(v312 + 1056);
        v172 = *(v312 + 1048);
        v173 = *(v312 + 1040);
        v174 = *(v312 + 944);

        (*(v169 + 104))(v168, enum case for SiriTimeMeasurement.LogDescription.dialogPatternResponseTime(_:), v170);
        v175 = *(v172 + 16);
        v4 = v172 + 16;
        v175(v171, v166, v173);
        mach_absolute_time();
        sub_106330();
        v301 = *(v174 + 32);
        v176 = v315;
        if (v315 >> 62)
        {
          v3 = sub_107270();
        }

        else
        {
          v3 = *(&dword_10 + (v315 & 0xFFFFFFFFFFFFFF8));
        }

        v177 = 0;
        v0 = v312;
        v1 = v315 & 0xC000000000000001;
        v178 = (*(v312 + 1024) + 8);
        while (v3 != v177)
        {
          if (v1)
          {
            v179 = sub_1071C0();
          }

          else
          {
            if (v177 >= *(&dword_10 + (v315 & 0xFFFFFFFFFFFFFF8)))
            {
              goto LABEL_107;
            }

            v179 = *(v176 + 8 * v177 + 32);
          }

          v180 = v179;
          v4 = v177 + 1;
          if (__OFADD__(v177, 1))
          {
LABEL_106:
            __break(1u);
LABEL_107:
            __break(1u);
            goto LABEL_108;
          }

          v181 = *(v0 + 1032);
          v182 = *(v0 + 1016);
          sub_106210();
          v183 = sub_75DD4(0, v181, 0);

          v184 = v181;
          v176 = v315;
          (*v178)(v184, v182);
          ++v177;
          if (v183)
          {
            sub_106EC0();
            if (*(&dword_10 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >> 1)
            {
              v185 = *(&dword_10 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8));
              sub_106F10();
              v0 = v312;
            }

            sub_106F20();
            v177 = v4;
          }
        }

        v186 = *(v0 + 992);
        v187 = v0;
        v188 = *(v0 + 984);

        v189 = sub_106160();
        v190 = *(*(v189 - 8) + 56);
        v190(v186, 1, 1, v189);
        v191 = v188[16];
        v190(v186 + v191, 1, 1, v189);
        v192 = v188[5];
        *(v186 + v192) = 0;
        *(v186 + v188[6]) = 0;
        *(v186 + v188[7]) = 0;
        *(v186 + v188[8]) = 1;
        *(v186 + v188[9]) = 0;
        *(v186 + v188[10]) = 0;
        *(v186 + v188[11]) = 0;
        *(v186 + v188[12]) = 0;
        *(v186 + v188[13]) = 0;
        *(v186 + v188[14]) = _swiftEmptyArrayStorage;
        v193 = v188[15];
        *(v186 + v193) = 0;
        v194 = v188[17];
        *(v186 + v194) = 0;
        sub_16F70(v186 + v191, &qword_137598, &unk_107EB0);
        v190(v186 + v191, 1, 1, v189);
        *(v186 + v194) = 0;
        sub_106100();
        if (qword_136E48 != -1)
        {
          swift_once();
        }

        v195 = v187[191];

        *(v186 + v192) = sub_1060F0();
        if (v195)
        {
          v196 = v187[191];
          v197 = v187[129];
          v198 = v187[127];
          sub_106210();
          v199 = sub_75DD4(0, v197, 0);
          (*v178)(v197, v198);
        }

        else
        {
          v199 = 0;
        }

        v225 = v187[124];
        *(v186 + v193) = v199;
        v226 = sub_20734();
        v187[254] = v226;
        v227 = *(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + 1);
        v316 = (&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
        v228 = swift_task_alloc();
        v187[255] = v228;
        *v228 = v187;
        v228[1] = sub_69D44;
        v120 = 0xD000000000000011;
        v125 = 0x800000000010CFB0;
        v126 = v226;
        goto LABEL_94;
      }
    }

    v46 = *(v0 + 1440);
    v47 = sub_106D10();
    v48 = sub_106FC0();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      *v49 = 0;
      _os_log_impl(&dword_0, v47, v48, "Hitting RF path for UndoChangeStatusFlow, multiple alarms.", v49, 2u);
    }

    v50 = *(v0 + 1440);
    v51 = *(v0 + 1112);
    v52 = *(v0 + 1080);
    v53 = *(v0 + 1072);
    v54 = *(v312 + 1064);
    v55 = *(v312 + 1056);
    v56 = *(v312 + 1048);
    v57 = *(v312 + 1040);
    v58 = *(v312 + 944);

    (*(v53 + 104))(v52, enum case for SiriTimeMeasurement.LogDescription.dialogPatternResponseTime(_:), v54);
    v59 = *(v56 + 16);
    v4 = v56 + 16;
    v59(v55, v50, v57);
    mach_absolute_time();
    sub_106330();
    v306 = *(v58 + 32);
    v60 = v315;
    v0 = v315 & 0xFFFFFFFFFFFFFF8;
    if (v315 >> 62)
    {
      v3 = sub_107270();
    }

    else
    {
      v3 = *(&dword_10 + (v315 & 0xFFFFFFFFFFFFFF8));
    }

    v61 = 0;
    v1 = v315 & 0xC000000000000001;
    v62 = (*(v312 + 1024) + 8);
    while (v3 != v61)
    {
      if (v1)
      {
        v63 = sub_1071C0();
      }

      else
      {
        if (v61 >= *(&dword_10 + (v315 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_105;
        }

        v63 = *(v60 + 8 * v61 + 32);
      }

      v64 = v63;
      v4 = v61 + 1;
      if (__OFADD__(v61, 1))
      {
        __break(1u);
LABEL_105:
        __break(1u);
        goto LABEL_106;
      }

      v65 = *(v312 + 1032);
      v66 = *(v312 + 1016);
      sub_106210();
      v67 = sub_75DD4(0, v65, 0);

      v68 = v65;
      v60 = v315;
      (*v62)(v68, v66);
      ++v61;
      if (v67)
      {
        sub_106EC0();
        if (*(&dword_10 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >> 1)
        {
          v69 = *(&dword_10 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8));
          sub_106F10();
        }

        sub_106F20();
        v61 = v4;
      }
    }

    v70 = *(v312 + 1008);
    v71 = *(v312 + 1000);

    v72 = sub_106160();
    v73 = *(*(v72 - 8) + 56);
    v73(v70, 1, 1, v72);
    v74 = v71[16];
    v73(v70 + v74, 1, 1, v72);
    v75 = v71[5];
    *(v70 + v75) = 0;
    *(v70 + v71[6]) = 0;
    *(v70 + v71[7]) = 0;
    *(v70 + v71[8]) = 1;
    *(v70 + v71[9]) = 0;
    *(v70 + v71[10]) = 0;
    *(v70 + v71[11]) = 0;
    *(v70 + v71[12]) = 0;
    *(v70 + v71[13]) = 0;
    *(v70 + v71[14]) = _swiftEmptyArrayStorage;
    v76 = v71[15];
    *(v70 + v76) = 0;
    v77 = v71[17];
    *(v70 + v77) = 0;
    sub_16F70(v70 + v74, &qword_137598, &unk_107EB0);
    v73(v70 + v74, 1, 1, v72);
    *(v70 + v77) = 0;
    sub_106100();
    if (qword_136E48 != -1)
    {
      swift_once();
    }

    v78 = *(v312 + 1528);

    *(v70 + v75) = sub_1060F0();
    if (v78)
    {
      v79 = *(v312 + 1528);
      v80 = *(v312 + 1032);
      v81 = *(v312 + 1016);
      sub_106210();
      v82 = sub_75DD4(0, v80, 0);
      (*v62)(v80, v81);
    }

    else
    {
      v82 = 0;
    }

    v121 = *(v312 + 1008);
    *(v70 + v76) = v82;
    v122 = sub_20764();
    *(v312 + 1968) = v122;
    v123 = *(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + 1);
    v316 = (&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
    v124 = swift_task_alloc();
    *(v312 + 1976) = v124;
    *v124 = v312;
    v124[1] = sub_68E3C;
    v125 = 0x800000000010CFD0;
    v120 = 0xD000000000000010;
    v126 = v122;
    goto LABEL_94;
  }

  v7 = sub_106D10();
  v8 = sub_106FC0();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_0, v7, v8, "One alarm updated.", v9, 2u);
  }

  if (v4)
  {
    if (sub_107270())
    {
      goto LABEL_8;
    }
  }

  else if (*(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8)))
  {
LABEL_8:
    if ((v3 & 0xC000000000000001) != 0)
    {
      v10 = sub_1071C0();
    }

    else
    {
      if (!*(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8)))
      {
        __break(1u);
        goto LABEL_119;
      }

      v10 = *(v3 + 32);
    }

    v314 = v10;
    *(v0 + 1640) = v10;
    v11 = *(v0 + 1576);
    v304 = *(v0 + 1560);
    v308 = *(v0 + 1568);
    v12 = *(v0 + 2104);
    v13 = *(v0 + 1552);
    v14 = *(v0 + 1544);
    v15 = *(v0 + 1536);
    v16 = *(v0 + 1320);
    v17 = *(v0 + 1312);
    v18 = *(v0 + 1248);
    v19 = *(v0 + 944);

    v14(v16, v19 + v15, v18);
    v304(v17, v12, v18);
    sub_106EB0();
    sub_106EB0();
    v20 = *(v0 + 1592);
    v21 = *(v0 + 1584);
    v22 = *(v0 + 1320);
    v23 = *(v0 + 1312);
    v24 = *(v0 + 1248);
    if (*(v0 + 760) == *(v0 + 776) && *(v0 + 768) == *(v0 + 784))
    {
      v21(*(v0 + 1312), *(v0 + 1248));
      v21(v22, v24);

      goto LABEL_44;
    }

    v93 = *(v0 + 768);
    v94 = *(v0 + 784);
    v95 = sub_107370();
    v21(v23, v24);
    v21(v22, v24);

    if (v95)
    {
LABEL_44:
      v96 = *(v0 + 1440);
      v97 = *(v0 + 1192);
      sub_104CF0();
      v98 = sub_106D10();
      v99 = sub_106FC0();
      if (os_log_type_enabled(v98, v99))
      {
        v100 = swift_slowAlloc();
        *v100 = 0;
        _os_log_impl(&dword_0, v98, v99, "Hitting RF path for UndoChangeStatusFlow, 1 alarm.", v100, 2u);
      }

      v101 = *(v0 + 1440);
      v102 = *(v0 + 1128);
      v103 = *(v0 + 1080);
      v104 = *(v0 + 1072);
      v105 = *(v0 + 1064);
      v106 = *(v0 + 1056);
      v107 = *(v0 + 1048);
      v108 = *(v0 + 1040);
      v310 = *(v0 + 944);

      (*(v104 + 104))(v103, enum case for SiriTimeMeasurement.LogDescription.dialogPatternResponseTime(_:), v105);
      (*(v107 + 16))(v106, v101, v108);
      mach_absolute_time();
      sub_106330();
      v109 = [v314 sleepAlarmAttribute];
      if (!v109)
      {
        v139 = *(v0 + 1032);
        v140 = *(v0 + 1024);
        v141 = *(v0 + 1016);
        v142 = *(v310 + 24);
        sub_106210();
        v143 = sub_75DD4(0, v139, 0);
        *(v0 + 1704) = v143;
        (*(v140 + 8))(v139, v141);
        sub_106100();
        if (qword_136E48 != -1)
        {
          swift_once();
        }

        v144 = sub_1060F0();
        *(v0 + 1712) = v144;
        v116 = "s#SuccessSleepDisabled";
        v117 = sub_74800(v143, v144, 0);
        *(v312 + 1720) = v117;
        v145 = *(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + 1);
        v316 = (&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
        v146 = swift_task_alloc();
        *(v312 + 1728) = v146;
        *v146 = v312;
        v146[1] = sub_65F28;
        v120 = 0xD000000000000020;
        goto LABEL_93;
      }

      v110 = *(v310 + 24);
      sub_106100();
      if (qword_136E48 == -1)
      {
LABEL_48:
        v111 = *(v0 + 1032);
        v112 = *(v0 + 1024);
        v113 = *(v312 + 1016);

        v114 = sub_1060F0();
        *(v312 + 1648) = v114;
        sub_106210();
        v115 = sub_75DD4(0, v111, 0);
        *(v312 + 1656) = v115;
        (*(v112 + 8))(v111, v113);
        v116 = "s#SuccessEnabled";
        v117 = sub_75DC8(0, v114, v115);
        *(v312 + 1664) = v117;
        v118 = *(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + 1);
        v316 = (&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
        v119 = swift_task_alloc();
        *(v312 + 1672) = v119;
        *v119 = v312;
        v119[1] = sub_65304;
        v120 = 0xD000000000000025;
LABEL_93:
        v125 = v116 | 0x8000000000000000;
        v126 = v117;
LABEL_94:

        return v316(v120, v125, v126);
      }

LABEL_119:
      swift_once();
      goto LABEL_48;
    }

    v147 = v0;
    v148 = *(v0 + 1576);
    v149 = *(v0 + 1568);
    v150 = *(v312 + 1560);
    v151 = *(v312 + 1552);
    v152 = *(v312 + 1296);
    v153 = *(v312 + 1248);
    (*(v312 + 1544))(*(v312 + 1304), *(v312 + 944) + *(v312 + 1536), v153);
    v150(v152, enum case for AlarmNLv4Constants.AlarmVerb.disable(_:), v153);
    sub_106EB0();
    sub_106EB0();
    v154 = *(v312 + 1592);
    v155 = *(v312 + 1584);
    v156 = *(v312 + 1304);
    v157 = *(v312 + 1296);
    v158 = *(v312 + 1248);
    if (*(v147 + 792) == *(v147 + 808) && *(v312 + 800) == *(v312 + 816))
    {
      v155(*(v312 + 1296), *(v312 + 1248));
      v155(v156, v158);

LABEL_81:
      v203 = *(v312 + 1440);
      v204 = sub_106D10();
      v205 = sub_106FC0();
      if (os_log_type_enabled(v204, v205))
      {
        v206 = swift_slowAlloc();
        *v206 = 0;
        _os_log_impl(&dword_0, v204, v205, "Hitting RF path for UndoChangeStatusFlow, 1 alarm.", v206, 2u);
      }

      v207 = *(v312 + 1440);
      v208 = *(v312 + 1120);
      v209 = *(v312 + 1080);
      v210 = *(v312 + 1072);
      v211 = *(v312 + 1064);
      v212 = *(v312 + 1056);
      v213 = *(v312 + 1048);
      v214 = *(v312 + 1040);

      (*(v210 + 104))(v209, enum case for SiriTimeMeasurement.LogDescription.dialogPatternResponseTime(_:), v211);
      (*(v213 + 16))(v212, v207, v214);
      mach_absolute_time();
      sub_106330();
      v215 = [v314 sleepAlarmAttribute];
      if (v215)
      {
        v216 = *(v312 + 944);

        v217 = *(v216 + 24);
        sub_106100();
        if (qword_136E48 != -1)
        {
          swift_once();
        }

        v218 = *(v312 + 1032);
        v219 = *(v312 + 1024);
        v220 = *(v312 + 1016);

        v221 = sub_1060F0();
        *(v312 + 1800) = v221;
        sub_106210();
        v222 = sub_75DD4(0, v218, 0);
        *(v312 + 1808) = v222;
        (*(v219 + 8))(v218, v220);
        v116 = "s#SuccessDisabled";
        v117 = sub_75DC8(0, v221, v222);
        *(v312 + 1816) = v117;
        v223 = *(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + 1);
        v316 = (&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
        v224 = swift_task_alloc();
        *(v312 + 1824) = v224;
        *v224 = v312;
        v224[1] = sub_66EC4;
        v120 = 0xD000000000000026;
      }

      else
      {
        v229 = *(v312 + 1032);
        v230 = *(v312 + 1024);
        v231 = *(v312 + 1016);
        v232 = *(*(v312 + 944) + 24);
        sub_106210();
        v233 = sub_75DD4(0, v229, 0);
        *(v312 + 1880) = v233;
        (*(v230 + 8))(v229, v231);
        sub_106100();
        if (qword_136E48 != -1)
        {
          swift_once();
        }

        v234 = sub_1060F0();
        *(v312 + 1888) = v234;
        v116 = "ModifyAll#Enable";
        v117 = sub_75DC8(v233, v234, 0);
        *(v312 + 1896) = v117;
        v235 = *(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + 1);
        v316 = (&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
        v236 = swift_task_alloc();
        *(v312 + 1904) = v236;
        *v236 = v312;
        v236[1] = sub_67DD4;
        v120 = 0xD000000000000021;
      }

      goto LABEL_93;
    }

    v200 = *(v312 + 800);
    v201 = *(v312 + 816);
    v202 = sub_107370();
    v155(v157, v158);
    v155(v156, v158);

    if (v202)
    {
      goto LABEL_81;
    }

    goto LABEL_98;
  }

  v83 = *(v0 + 1440);

  v84 = sub_106D10();
  v85 = sub_106FB0();
  if (os_log_type_enabled(v84, v85))
  {
    v86 = swift_slowAlloc();
    *v86 = 0;
    _os_log_impl(&dword_0, v84, v85, "Can't retrieve changed alarm or it's snippet information.", v86, 2u);
  }

  v87 = *(v0 + 1216);
  v88 = v0;
  v89 = *(v0 + 1208);
  v90 = v88[150];

  (*(v89 + 104))(v87, enum case for SiriTimeEventSender.ReasonDescription.failedToFetchChangedAlarm(_:), v90);
  v91 = swift_task_alloc();
  v88[245] = v91;
  *v91 = v88;
  v92 = sub_68CE4;
LABEL_113:
  v91[1] = v92;
  v275 = v88[152];
  v276 = v88[118];
  v277 = v88[117];

  return sub_6E8C0(v277, v275);
}

uint64_t sub_64EE8()
{
  v1 = *(*v0 + 1632);
  v2 = *(*v0 + 1216);
  v3 = *(*v0 + 1208);
  v4 = *(*v0 + 1200);
  v6 = *v0;

  (*(v3 + 8))(v2, v4);

  return _swift_task_switch(sub_65040, 0, 0);
}

uint64_t sub_65040()
{
  v1 = *(v0 + 1528);
  v2 = *(v0 + 1240);
  v3 = *(v0 + 1232);
  v4 = *(v0 + 1224);
  v5 = *(v0 + 944);

  (*(v3 + 8))(v2, v4);
  sub_73574(v5);
  v6 = *(v0 + 1432);
  v7 = *(v0 + 1408);
  v8 = *(v0 + 1400);
  v9 = *(v0 + 1392);
  v10 = *(v0 + 1384);
  v11 = *(v0 + 1376);
  v12 = *(v0 + 1368);
  v13 = *(v0 + 1360);
  v14 = *(v0 + 1352);
  v15 = *(v0 + 1344);
  v18 = *(v0 + 1336);
  v19 = *(v0 + 1328);
  v20 = *(v0 + 1320);
  v21 = *(v0 + 1312);
  v22 = *(v0 + 1304);
  v23 = *(v0 + 1296);
  v24 = *(v0 + 1288);
  v25 = *(v0 + 1280);
  v26 = *(v0 + 1272);
  v27 = *(v0 + 1264);
  v28 = *(v0 + 1240);
  v29 = *(v0 + 1216);
  v30 = *(v0 + 1192);
  v31 = *(v0 + 1184);
  v32 = *(v0 + 1176);
  v33 = *(v0 + 1168);
  v34 = *(v0 + 1160);
  v35 = *(v0 + 1152);
  v36 = *(v0 + 1128);
  v37 = *(v0 + 1120);
  v38 = *(v0 + 1112);
  v39 = *(v0 + 1104);
  v40 = *(v0 + 1080);
  v41 = *(v0 + 1056);
  v42 = *(v0 + 1032);
  v43 = *(v0 + 1008);
  v44 = *(v0 + 992);
  v45 = *(v0 + 976);
  v46 = *(v0 + 952);

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_65304(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 1672);
  v6 = *v2;
  v4[210] = v1;

  v7 = v4[208];

  if (v1)
  {
    v8 = sub_65930;
  }

  else
  {
    v4[211] = a1;
    v8 = sub_65448;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_65448()
{
  v1 = v0[207];
  v2 = v0[206];

  v3 = async function pointer to PatternExecutionResult.generateFlowPatternResponse(phase:contextUpdate:measure:)[1];
  v4 = swift_task_alloc();
  v0[212] = v4;
  *v4 = v0;
  v4[1] = sub_65504;
  v5 = v0[211];
  v6 = v0[155];
  v7 = v0[149];
  v8 = v0[141];
  v9 = v0[117];

  return PatternExecutionResult.generateFlowPatternResponse(phase:contextUpdate:measure:)(v9, v7, v6, v8);
}

uint64_t sub_65504()
{
  v1 = *(*v0 + 1696);
  v2 = *(*v0 + 1688);
  v4 = *v0;

  return _swift_task_switch(sub_65618, 0, 0);
}

uint64_t sub_65618()
{
  v1 = *(v0 + 1528);
  v2 = *(v0 + 1520);
  v3 = *(v0 + 1232);
  v50 = *(v0 + 1224);
  v52 = *(v0 + 1240);
  v4 = *(v0 + 1192);
  v5 = *(v0 + 1144);
  v6 = *(v0 + 1136);
  v7 = *(v0 + 1128);
  v8 = *(v0 + 1096);
  v9 = *(v0 + 1088);
  v48 = *(v0 + 944);

  (*(v8 + 8))(v7, v9);
  (*(v5 + 8))(v4, v6);
  (*(v3 + 8))(v52, v50);
  sub_73574(v48);
  v10 = *(v0 + 1432);
  v11 = *(v0 + 1408);
  v12 = *(v0 + 1400);
  v13 = *(v0 + 1392);
  v14 = *(v0 + 1384);
  v15 = *(v0 + 1376);
  v16 = *(v0 + 1368);
  v17 = *(v0 + 1360);
  v18 = *(v0 + 1352);
  v19 = *(v0 + 1344);
  v22 = *(v0 + 1336);
  v23 = *(v0 + 1328);
  v24 = *(v0 + 1320);
  v25 = *(v0 + 1312);
  v26 = *(v0 + 1304);
  v27 = *(v0 + 1296);
  v28 = *(v0 + 1288);
  v29 = *(v0 + 1280);
  v30 = *(v0 + 1272);
  v31 = *(v0 + 1264);
  v32 = *(v0 + 1240);
  v33 = *(v0 + 1216);
  v34 = *(v0 + 1192);
  v35 = *(v0 + 1184);
  v36 = *(v0 + 1176);
  v37 = *(v0 + 1168);
  v38 = *(v0 + 1160);
  v39 = *(v0 + 1152);
  v40 = *(v0 + 1128);
  v41 = *(v0 + 1120);
  v42 = *(v0 + 1112);
  v43 = *(v0 + 1104);
  v44 = *(v0 + 1080);
  v45 = *(v0 + 1056);
  v46 = *(v0 + 1032);
  v47 = *(v0 + 1008);
  v49 = *(v0 + 992);
  v51 = *(v0 + 976);
  v53 = *(v0 + 952);

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_65930()
{
  v88 = v0;
  v1 = *(v0 + 1656);
  v2 = *(v0 + 1648);
  v3 = *(v0 + 1128);
  v4 = *(v0 + 1096);
  v5 = *(v0 + 1088);

  (*(v4 + 8))(v3, v5);
  v6 = *(v0 + 1680);
  v7 = *(v0 + 1456);
  v8 = *(v0 + 1448);
  v9 = *(v0 + 1440);
  v10 = *(v0 + 1392);
  v11 = *(v0 + 1200);
  v12 = *(v0 + 944);
  (*(*(v0 + 1208) + 104))(v10, enum case for SiriTimeEventSender.ReasonDescription.errorProducingOutput(_:), v11);
  v8(v10, 0, 1, v11);
  v13 = OBJC_IVAR____TtC15AlarmFlowPlugin20UndoChangeStatusFlow_failureReason;
  swift_beginAccess();
  sub_57A78(v10, v12 + v13, &qword_137FE8, &unk_1087E0);
  swift_endAccess();
  swift_errorRetain();
  v14 = sub_106D10();
  v15 = sub_106FB0();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = *(v0 + 1640);
    v17 = *(v0 + 1144);
    v82 = *(v0 + 1136);
    v84 = *(v0 + 1192);
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v87 = v19;
    *v18 = 136315138;
    *(v0 + 880) = v6;
    swift_errorRetain();
    sub_25E4(&qword_1376C0, &unk_1080D0);
    v20 = sub_106E30();
    v22 = sub_722E8(v20, v21, &v87);

    *(v18 + 4) = v22;
    _os_log_impl(&dword_0, v14, v15, "Error in RF path: %s", v18, 0xCu);
    sub_2738(v19);

    (*(v17 + 8))(v84, v82);
  }

  else
  {
    v23 = *(v0 + 1192);
    v24 = *(v0 + 1144);
    v25 = *(v0 + 1136);

    (*(v24 + 8))(v23, v25);
  }

  v26 = *(v0 + 968);
  v27 = *(v0 + 960);
  v28 = *(v0 + 952);
  v29 = *(v0 + 944);
  v30 = OBJC_IVAR____TtC15AlarmFlowPlugin20UndoChangeStatusFlow_followupPluginAction;
  swift_beginAccess();
  sub_14994(v29 + v30, v28, &qword_137FD0, &unk_1087C0);
  v31 = (*(v26 + 48))(v28, 1, v27);
  v32 = *(v0 + 1528);
  v33 = *(v0 + 1520);
  v34 = *(v0 + 1240);
  v35 = *(v0 + 1232);
  v36 = *(v0 + 1224);
  if (v31 == 1)
  {
    v37 = *(v0 + 944);
    v38 = *(v0 + 936);
    sub_16F70(*(v0 + 952), &qword_137FD0, &unk_1087C0);
    sub_104F00();
  }

  else
  {
    v39 = *(v0 + 976);
    v85 = *(v0 + 1240);
    v40 = *(v0 + 968);
    v41 = *(v0 + 960);
    v37 = *(v0 + 944);
    v42 = *(v0 + 936);
    (*(v40 + 32))(v39, *(v0 + 952), v41);
    sub_104F10();

    (*(v40 + 8))(v39, v41);
    v34 = v85;
  }

  (*(v35 + 8))(v34, v36);
  sub_73574(v37);
  v43 = *(v0 + 1432);
  v44 = *(v0 + 1408);
  v45 = *(v0 + 1400);
  v46 = *(v0 + 1392);
  v47 = *(v0 + 1384);
  v48 = *(v0 + 1376);
  v49 = *(v0 + 1368);
  v50 = *(v0 + 1360);
  v51 = *(v0 + 1352);
  v52 = *(v0 + 1344);
  v55 = *(v0 + 1336);
  v56 = *(v0 + 1328);
  v57 = *(v0 + 1320);
  v58 = *(v0 + 1312);
  v59 = *(v0 + 1304);
  v60 = *(v0 + 1296);
  v61 = *(v0 + 1288);
  v62 = *(v0 + 1280);
  v63 = *(v0 + 1272);
  v64 = *(v0 + 1264);
  v65 = *(v0 + 1240);
  v66 = *(v0 + 1216);
  v67 = *(v0 + 1192);
  v68 = *(v0 + 1184);
  v69 = *(v0 + 1176);
  v70 = *(v0 + 1168);
  v71 = *(v0 + 1160);
  v72 = *(v0 + 1152);
  v73 = *(v0 + 1128);
  v74 = *(v0 + 1120);
  v75 = *(v0 + 1112);
  v76 = *(v0 + 1104);
  v77 = *(v0 + 1080);
  v78 = *(v0 + 1056);
  v79 = *(v0 + 1032);
  v80 = *(v0 + 1008);
  v81 = *(v0 + 992);
  v83 = *(v0 + 976);
  v86 = *(v0 + 952);

  v53 = *(v0 + 8);

  return v53();
}

uint64_t sub_65F28(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 1728);
  v6 = *v2;
  *(v4 + 1736) = a1;
  *(v4 + 1744) = v1;

  v7 = *(v3 + 1720);

  if (v1)
  {
    v8 = sub_662DC;
  }

  else
  {
    v8 = sub_66068;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_66068()
{
  v1 = v0[214];
  v2 = v0[213];
  v3 = v0[148];

  sub_104CF0();
  v4 = async function pointer to PatternExecutionResult.generateStandardPatternOutput(phase:contextUpdate:measure:dismissAssistant:)[1];
  v5 = swift_task_alloc();
  v0[219] = v5;
  *v5 = v0;
  v5[1] = sub_66134;
  v6 = v0[217];
  v7 = v0[155];
  v8 = v0[148];
  v9 = v0[141];

  return PatternExecutionResult.generateStandardPatternOutput(phase:contextUpdate:measure:dismissAssistant:)(v0 + 32, v8, v7, v9, 0);
}

uint64_t sub_66134()
{
  v2 = *v1;
  v3 = *(*v1 + 1752);
  v4 = *v1;
  v2[220] = v0;

  v5 = v2[217];
  v6 = v2[148];
  v7 = v2[143];
  v8 = v2[142];
  v11 = *(v7 + 8);
  v9 = v7 + 8;
  v10 = v11;
  if (v0)
  {
    v10(v6, v8);

    v12 = sub_6B030;
  }

  else
  {
    v2[221] = v10;
    v2[222] = v9 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v10(v6, v8);

    v12 = sub_668D4;
  }

  return _swift_task_switch(v12, 0, 0);
}

uint64_t sub_662DC()
{
  v88 = v0;
  v1 = *(v0 + 1712);
  v2 = *(v0 + 1704);
  v3 = *(v0 + 1128);
  v4 = *(v0 + 1096);
  v5 = *(v0 + 1088);

  (*(v4 + 8))(v3, v5);
  v6 = *(v0 + 1744);
  v7 = *(v0 + 1456);
  v8 = *(v0 + 1448);
  v9 = *(v0 + 1440);
  v10 = *(v0 + 1392);
  v11 = *(v0 + 1200);
  v12 = *(v0 + 944);
  (*(*(v0 + 1208) + 104))(v10, enum case for SiriTimeEventSender.ReasonDescription.errorProducingOutput(_:), v11);
  v8(v10, 0, 1, v11);
  v13 = OBJC_IVAR____TtC15AlarmFlowPlugin20UndoChangeStatusFlow_failureReason;
  swift_beginAccess();
  sub_57A78(v10, v12 + v13, &qword_137FE8, &unk_1087E0);
  swift_endAccess();
  swift_errorRetain();
  v14 = sub_106D10();
  v15 = sub_106FB0();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = *(v0 + 1640);
    v17 = *(v0 + 1144);
    v82 = *(v0 + 1136);
    v84 = *(v0 + 1192);
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v87 = v19;
    *v18 = 136315138;
    *(v0 + 880) = v6;
    swift_errorRetain();
    sub_25E4(&qword_1376C0, &unk_1080D0);
    v20 = sub_106E30();
    v22 = sub_722E8(v20, v21, &v87);

    *(v18 + 4) = v22;
    _os_log_impl(&dword_0, v14, v15, "Error in RF path: %s", v18, 0xCu);
    sub_2738(v19);

    (*(v17 + 8))(v84, v82);
  }

  else
  {
    v23 = *(v0 + 1192);
    v24 = *(v0 + 1144);
    v25 = *(v0 + 1136);

    (*(v24 + 8))(v23, v25);
  }

  v26 = *(v0 + 968);
  v27 = *(v0 + 960);
  v28 = *(v0 + 952);
  v29 = *(v0 + 944);
  v30 = OBJC_IVAR____TtC15AlarmFlowPlugin20UndoChangeStatusFlow_followupPluginAction;
  swift_beginAccess();
  sub_14994(v29 + v30, v28, &qword_137FD0, &unk_1087C0);
  v31 = (*(v26 + 48))(v28, 1, v27);
  v32 = *(v0 + 1528);
  v33 = *(v0 + 1520);
  v34 = *(v0 + 1240);
  v35 = *(v0 + 1232);
  v36 = *(v0 + 1224);
  if (v31 == 1)
  {
    v37 = *(v0 + 944);
    v38 = *(v0 + 936);
    sub_16F70(*(v0 + 952), &qword_137FD0, &unk_1087C0);
    sub_104F00();
  }

  else
  {
    v39 = *(v0 + 976);
    v85 = *(v0 + 1240);
    v40 = *(v0 + 968);
    v41 = *(v0 + 960);
    v37 = *(v0 + 944);
    v42 = *(v0 + 936);
    (*(v40 + 32))(v39, *(v0 + 952), v41);
    sub_104F10();

    (*(v40 + 8))(v39, v41);
    v34 = v85;
  }

  (*(v35 + 8))(v34, v36);
  sub_73574(v37);
  v43 = *(v0 + 1432);
  v44 = *(v0 + 1408);
  v45 = *(v0 + 1400);
  v46 = *(v0 + 1392);
  v47 = *(v0 + 1384);
  v48 = *(v0 + 1376);
  v49 = *(v0 + 1368);
  v50 = *(v0 + 1360);
  v51 = *(v0 + 1352);
  v52 = *(v0 + 1344);
  v55 = *(v0 + 1336);
  v56 = *(v0 + 1328);
  v57 = *(v0 + 1320);
  v58 = *(v0 + 1312);
  v59 = *(v0 + 1304);
  v60 = *(v0 + 1296);
  v61 = *(v0 + 1288);
  v62 = *(v0 + 1280);
  v63 = *(v0 + 1272);
  v64 = *(v0 + 1264);
  v65 = *(v0 + 1240);
  v66 = *(v0 + 1216);
  v67 = *(v0 + 1192);
  v68 = *(v0 + 1184);
  v69 = *(v0 + 1176);
  v70 = *(v0 + 1168);
  v71 = *(v0 + 1160);
  v72 = *(v0 + 1152);
  v73 = *(v0 + 1128);
  v74 = *(v0 + 1120);
  v75 = *(v0 + 1112);
  v76 = *(v0 + 1104);
  v77 = *(v0 + 1080);
  v78 = *(v0 + 1056);
  v79 = *(v0 + 1032);
  v80 = *(v0 + 1008);
  v81 = *(v0 + 992);
  v83 = *(v0 + 976);
  v86 = *(v0 + 952);

  v53 = *(v0 + 8);

  return v53();
}

uint64_t sub_668D4()
{
  sub_105180();
  v1 = v0[5];
  v2 = v0[6];
  sub_1A8E0(v0 + 2, v1);
  v3 = async function pointer to dispatch thunk of OutputPublisherAsync.publish(output:)[1];
  v4 = swift_task_alloc();
  v0[223] = v4;
  *v4 = v0;
  v4[1] = sub_66998;

  return dispatch thunk of OutputPublisherAsync.publish(output:)(v0 + 32, v1, v2);
}

uint64_t sub_66998()
{
  v2 = *(*v1 + 1784);
  v5 = *v1;
  *(*v1 + 1792) = v0;

  if (v0)
  {
    v3 = sub_6B60C;
  }

  else
  {
    v3 = sub_66AAC;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_66AAC()
{
  v1 = *(v0 + 1776);
  v2 = *(v0 + 1768);
  v3 = *(v0 + 1192);
  v4 = *(v0 + 1136);
  v5 = *(v0 + 1128);
  v6 = *(v0 + 1096);
  v7 = *(v0 + 1088);

  sub_2738((v0 + 256));
  (*(v6 + 8))(v5, v7);
  v2(v3, v4);
  sub_2738((v0 + 16));
  v8 = *(v0 + 968);
  v9 = *(v0 + 960);
  v10 = *(v0 + 952);
  v11 = *(v0 + 944);
  v12 = OBJC_IVAR____TtC15AlarmFlowPlugin20UndoChangeStatusFlow_followupPluginAction;
  swift_beginAccess();
  sub_14994(v11 + v12, v10, &qword_137FD0, &unk_1087C0);
  v13 = (*(v8 + 48))(v10, 1, v9);
  v14 = *(v0 + 1528);
  v15 = *(v0 + 1520);
  v16 = *(v0 + 1240);
  v17 = *(v0 + 1232);
  v18 = *(v0 + 1224);
  if (v13 == 1)
  {
    v19 = *(v0 + 944);
    v20 = *(v0 + 936);
    sub_16F70(*(v0 + 952), &qword_137FD0, &unk_1087C0);
    sub_104F00();
  }

  else
  {
    v21 = *(v0 + 976);
    v65 = *(v0 + 1240);
    v22 = *(v0 + 968);
    v23 = *(v0 + 960);
    v19 = *(v0 + 944);
    v24 = *(v0 + 936);
    (*(v22 + 32))(v21, *(v0 + 952), v23);
    sub_104F10();

    (*(v22 + 8))(v21, v23);
    v16 = v65;
  }

  (*(v17 + 8))(v16, v18);
  sub_73574(v19);
  v25 = *(v0 + 1432);
  v26 = *(v0 + 1408);
  v27 = *(v0 + 1400);
  v28 = *(v0 + 1392);
  v29 = *(v0 + 1384);
  v30 = *(v0 + 1376);
  v31 = *(v0 + 1368);
  v32 = *(v0 + 1360);
  v33 = *(v0 + 1352);
  v34 = *(v0 + 1344);
  v37 = *(v0 + 1336);
  v38 = *(v0 + 1328);
  v39 = *(v0 + 1320);
  v40 = *(v0 + 1312);
  v41 = *(v0 + 1304);
  v42 = *(v0 + 1296);
  v43 = *(v0 + 1288);
  v44 = *(v0 + 1280);
  v45 = *(v0 + 1272);
  v46 = *(v0 + 1264);
  v47 = *(v0 + 1240);
  v48 = *(v0 + 1216);
  v49 = *(v0 + 1192);
  v50 = *(v0 + 1184);
  v51 = *(v0 + 1176);
  v52 = *(v0 + 1168);
  v53 = *(v0 + 1160);
  v54 = *(v0 + 1152);
  v55 = *(v0 + 1128);
  v56 = *(v0 + 1120);
  v57 = *(v0 + 1112);
  v58 = *(v0 + 1104);
  v59 = *(v0 + 1080);
  v60 = *(v0 + 1056);
  v61 = *(v0 + 1032);
  v62 = *(v0 + 1008);
  v63 = *(v0 + 992);
  v64 = *(v0 + 976);
  v66 = *(v0 + 952);

  v35 = *(v0 + 8);

  return v35();
}

uint64_t sub_66EC4(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 1824);
  v6 = *v2;
  *(v4 + 1832) = a1;
  *(v4 + 1840) = v1;

  v7 = *(v3 + 1816);

  if (v1)
  {
    v8 = sub_67250;
  }

  else
  {
    v8 = sub_67004;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_67004()
{
  v1 = v0[226];
  v2 = v0[225];
  v3 = v0[147];

  sub_104CF0();
  v4 = async function pointer to PatternExecutionResult.generateStandardPatternOutput(phase:contextUpdate:measure:dismissAssistant:)[1];
  v5 = swift_task_alloc();
  v0[231] = v5;
  *v5 = v0;
  v5[1] = sub_670D0;
  v6 = v0[229];
  v7 = v0[155];
  v8 = v0[147];
  v9 = v0[140];

  return PatternExecutionResult.generateStandardPatternOutput(phase:contextUpdate:measure:dismissAssistant:)(v0 + 42, v8, v7, v9, 0);
}

uint64_t sub_670D0()
{
  v2 = *v1;
  v3 = *(*v1 + 1848);
  v4 = *v1;
  *(*v1 + 1856) = v0;

  v5 = v2[229];
  (*(v2[143] + 8))(v2[147], v2[142]);

  if (v0)
  {
    v6 = sub_6BC00;
  }

  else
  {
    v6 = sub_67800;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_67250()
{
  v82 = v0;
  v1 = *(v0 + 1808);
  v2 = *(v0 + 1800);
  v3 = *(v0 + 1120);
  v4 = *(v0 + 1096);
  v5 = *(v0 + 1088);

  (*(v4 + 8))(v3, v5);
  v6 = *(v0 + 1840);
  v7 = *(v0 + 1456);
  v8 = *(v0 + 1448);
  v9 = *(v0 + 1440);
  v10 = *(v0 + 1392);
  v11 = *(v0 + 1200);
  v12 = *(v0 + 944);
  (*(*(v0 + 1208) + 104))(v10, enum case for SiriTimeEventSender.ReasonDescription.errorProducingOutput(_:), v11);
  v8(v10, 0, 1, v11);
  v13 = OBJC_IVAR____TtC15AlarmFlowPlugin20UndoChangeStatusFlow_failureReason;
  swift_beginAccess();
  sub_57A78(v10, v12 + v13, &qword_137FE8, &unk_1087E0);
  swift_endAccess();
  swift_errorRetain();
  v14 = sub_106D10();
  v15 = sub_106FB0();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = *(v0 + 1640);
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v81 = v18;
    *v17 = 136315138;
    *(v0 + 888) = v6;
    swift_errorRetain();
    sub_25E4(&qword_1376C0, &unk_1080D0);
    v19 = sub_106E30();
    v21 = sub_722E8(v19, v20, &v81);

    *(v17 + 4) = v21;
    _os_log_impl(&dword_0, v14, v15, "Error in RF path: %s", v17, 0xCu);
    sub_2738(v18);
  }

  else
  {
  }

  v22 = *(v0 + 968);
  v23 = *(v0 + 960);
  v24 = *(v0 + 952);
  v25 = *(v0 + 944);
  v26 = OBJC_IVAR____TtC15AlarmFlowPlugin20UndoChangeStatusFlow_followupPluginAction;
  swift_beginAccess();
  sub_14994(v25 + v26, v24, &qword_137FD0, &unk_1087C0);
  v27 = (*(v22 + 48))(v24, 1, v23);
  v28 = *(v0 + 1528);
  v29 = *(v0 + 1520);
  v30 = *(v0 + 1240);
  v31 = *(v0 + 1232);
  v32 = *(v0 + 1224);
  if (v27 == 1)
  {
    v33 = *(v0 + 944);
    v34 = *(v0 + 936);
    sub_16F70(*(v0 + 952), &qword_137FD0, &unk_1087C0);
    sub_104F00();
  }

  else
  {
    v35 = *(v0 + 976);
    v79 = *(v0 + 1240);
    v36 = *(v0 + 968);
    v37 = *(v0 + 960);
    v33 = *(v0 + 944);
    v38 = *(v0 + 936);
    (*(v36 + 32))(v35, *(v0 + 952), v37);
    sub_104F10();

    (*(v36 + 8))(v35, v37);
    v30 = v79;
  }

  (*(v31 + 8))(v30, v32);
  sub_73574(v33);
  v39 = *(v0 + 1432);
  v40 = *(v0 + 1408);
  v41 = *(v0 + 1400);
  v42 = *(v0 + 1392);
  v43 = *(v0 + 1384);
  v44 = *(v0 + 1376);
  v45 = *(v0 + 1368);
  v46 = *(v0 + 1360);
  v47 = *(v0 + 1352);
  v48 = *(v0 + 1344);
  v51 = *(v0 + 1336);
  v52 = *(v0 + 1328);
  v53 = *(v0 + 1320);
  v54 = *(v0 + 1312);
  v55 = *(v0 + 1304);
  v56 = *(v0 + 1296);
  v57 = *(v0 + 1288);
  v58 = *(v0 + 1280);
  v59 = *(v0 + 1272);
  v60 = *(v0 + 1264);
  v61 = *(v0 + 1240);
  v62 = *(v0 + 1216);
  v63 = *(v0 + 1192);
  v64 = *(v0 + 1184);
  v65 = *(v0 + 1176);
  v66 = *(v0 + 1168);
  v67 = *(v0 + 1160);
  v68 = *(v0 + 1152);
  v69 = *(v0 + 1128);
  v70 = *(v0 + 1120);
  v71 = *(v0 + 1112);
  v72 = *(v0 + 1104);
  v73 = *(v0 + 1080);
  v74 = *(v0 + 1056);
  v75 = *(v0 + 1032);
  v76 = *(v0 + 1008);
  v77 = *(v0 + 992);
  v78 = *(v0 + 976);
  v80 = *(v0 + 952);

  v49 = *(v0 + 8);

  return v49();
}

uint64_t sub_67800()
{
  sub_105180();
  v1 = v0[40];
  v2 = v0[41];
  sub_1A8E0(v0 + 37, v1);
  v3 = async function pointer to dispatch thunk of OutputPublisherAsync.publish(output:)[1];
  v4 = swift_task_alloc();
  v0[233] = v4;
  *v4 = v0;
  v4[1] = sub_678C4;

  return dispatch thunk of OutputPublisherAsync.publish(output:)(v0 + 42, v1, v2);
}

uint64_t sub_678C4()
{
  v2 = *(*v1 + 1864);
  v5 = *v1;
  *(*v1 + 1872) = v0;

  if (v0)
  {
    v3 = sub_6C194;
  }

  else
  {
    v3 = sub_679D8;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_679D8()
{
  v1 = *(v0 + 1120);
  v2 = *(v0 + 1096);
  v3 = *(v0 + 1088);

  sub_2738((v0 + 336));
  (*(v2 + 8))(v1, v3);
  sub_2738((v0 + 296));
  v4 = *(v0 + 968);
  v5 = *(v0 + 960);
  v6 = *(v0 + 952);
  v7 = *(v0 + 944);
  v8 = OBJC_IVAR____TtC15AlarmFlowPlugin20UndoChangeStatusFlow_followupPluginAction;
  swift_beginAccess();
  sub_14994(v7 + v8, v6, &qword_137FD0, &unk_1087C0);
  v9 = (*(v4 + 48))(v6, 1, v5);
  v10 = *(v0 + 1528);
  v11 = *(v0 + 1520);
  v12 = *(v0 + 1240);
  v13 = *(v0 + 1232);
  v14 = *(v0 + 1224);
  if (v9 == 1)
  {
    v15 = *(v0 + 944);
    v16 = *(v0 + 936);
    sub_16F70(*(v0 + 952), &qword_137FD0, &unk_1087C0);
    sub_104F00();
  }

  else
  {
    v17 = *(v0 + 976);
    v61 = *(v0 + 1240);
    v18 = *(v0 + 968);
    v19 = *(v0 + 960);
    v15 = *(v0 + 944);
    v20 = *(v0 + 936);
    (*(v18 + 32))(v17, *(v0 + 952), v19);
    sub_104F10();

    (*(v18 + 8))(v17, v19);
    v12 = v61;
  }

  (*(v13 + 8))(v12, v14);
  sub_73574(v15);
  v21 = *(v0 + 1432);
  v22 = *(v0 + 1408);
  v23 = *(v0 + 1400);
  v24 = *(v0 + 1392);
  v25 = *(v0 + 1384);
  v26 = *(v0 + 1376);
  v27 = *(v0 + 1368);
  v28 = *(v0 + 1360);
  v29 = *(v0 + 1352);
  v30 = *(v0 + 1344);
  v33 = *(v0 + 1336);
  v34 = *(v0 + 1328);
  v35 = *(v0 + 1320);
  v36 = *(v0 + 1312);
  v37 = *(v0 + 1304);
  v38 = *(v0 + 1296);
  v39 = *(v0 + 1288);
  v40 = *(v0 + 1280);
  v41 = *(v0 + 1272);
  v42 = *(v0 + 1264);
  v43 = *(v0 + 1240);
  v44 = *(v0 + 1216);
  v45 = *(v0 + 1192);
  v46 = *(v0 + 1184);
  v47 = *(v0 + 1176);
  v48 = *(v0 + 1168);
  v49 = *(v0 + 1160);
  v50 = *(v0 + 1152);
  v51 = *(v0 + 1128);
  v52 = *(v0 + 1120);
  v53 = *(v0 + 1112);
  v54 = *(v0 + 1104);
  v55 = *(v0 + 1080);
  v56 = *(v0 + 1056);
  v57 = *(v0 + 1032);
  v58 = *(v0 + 1008);
  v59 = *(v0 + 992);
  v60 = *(v0 + 976);
  v62 = *(v0 + 952);

  v31 = *(v0 + 8);

  return v31();
}

uint64_t sub_67DD4(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 1904);
  v6 = *v2;
  *(v4 + 1912) = a1;
  *(v4 + 1920) = v1;

  v7 = *(v3 + 1896);

  if (v1)
  {
    v8 = sub_68160;
  }

  else
  {
    v8 = sub_67F14;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_67F14()
{
  v1 = v0[236];
  v2 = v0[235];
  v3 = v0[146];

  sub_104CF0();
  v4 = async function pointer to PatternExecutionResult.generateStandardPatternOutput(phase:contextUpdate:measure:dismissAssistant:)[1];
  v5 = swift_task_alloc();
  v0[241] = v5;
  *v5 = v0;
  v5[1] = sub_67FE0;
  v6 = v0[239];
  v7 = v0[155];
  v8 = v0[146];
  v9 = v0[140];

  return PatternExecutionResult.generateStandardPatternOutput(phase:contextUpdate:measure:dismissAssistant:)(v0 + 27, v8, v7, v9, 0);
}

uint64_t sub_67FE0()
{
  v2 = *v1;
  v3 = *(*v1 + 1928);
  v4 = *v1;
  *(*v1 + 1936) = v0;

  v5 = v2[239];
  (*(v2[143] + 8))(v2[146], v2[142]);

  if (v0)
  {
    v6 = sub_6C740;
  }

  else
  {
    v6 = sub_68710;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_68160()
{
  v82 = v0;
  v1 = *(v0 + 1888);
  v2 = *(v0 + 1880);
  v3 = *(v0 + 1120);
  v4 = *(v0 + 1096);
  v5 = *(v0 + 1088);

  (*(v4 + 8))(v3, v5);
  v6 = *(v0 + 1920);
  v7 = *(v0 + 1456);
  v8 = *(v0 + 1448);
  v9 = *(v0 + 1440);
  v10 = *(v0 + 1392);
  v11 = *(v0 + 1200);
  v12 = *(v0 + 944);
  (*(*(v0 + 1208) + 104))(v10, enum case for SiriTimeEventSender.ReasonDescription.errorProducingOutput(_:), v11);
  v8(v10, 0, 1, v11);
  v13 = OBJC_IVAR____TtC15AlarmFlowPlugin20UndoChangeStatusFlow_failureReason;
  swift_beginAccess();
  sub_57A78(v10, v12 + v13, &qword_137FE8, &unk_1087E0);
  swift_endAccess();
  swift_errorRetain();
  v14 = sub_106D10();
  v15 = sub_106FB0();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = *(v0 + 1640);
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v81 = v18;
    *v17 = 136315138;
    *(v0 + 888) = v6;
    swift_errorRetain();
    sub_25E4(&qword_1376C0, &unk_1080D0);
    v19 = sub_106E30();
    v21 = sub_722E8(v19, v20, &v81);

    *(v17 + 4) = v21;
    _os_log_impl(&dword_0, v14, v15, "Error in RF path: %s", v17, 0xCu);
    sub_2738(v18);
  }

  else
  {
  }

  v22 = *(v0 + 968);
  v23 = *(v0 + 960);
  v24 = *(v0 + 952);
  v25 = *(v0 + 944);
  v26 = OBJC_IVAR____TtC15AlarmFlowPlugin20UndoChangeStatusFlow_followupPluginAction;
  swift_beginAccess();
  sub_14994(v25 + v26, v24, &qword_137FD0, &unk_1087C0);
  v27 = (*(v22 + 48))(v24, 1, v23);
  v28 = *(v0 + 1528);
  v29 = *(v0 + 1520);
  v30 = *(v0 + 1240);
  v31 = *(v0 + 1232);
  v32 = *(v0 + 1224);
  if (v27 == 1)
  {
    v33 = *(v0 + 944);
    v34 = *(v0 + 936);
    sub_16F70(*(v0 + 952), &qword_137FD0, &unk_1087C0);
    sub_104F00();
  }

  else
  {
    v35 = *(v0 + 976);
    v79 = *(v0 + 1240);
    v36 = *(v0 + 968);
    v37 = *(v0 + 960);
    v33 = *(v0 + 944);
    v38 = *(v0 + 936);
    (*(v36 + 32))(v35, *(v0 + 952), v37);
    sub_104F10();

    (*(v36 + 8))(v35, v37);
    v30 = v79;
  }

  (*(v31 + 8))(v30, v32);
  sub_73574(v33);
  v39 = *(v0 + 1432);
  v40 = *(v0 + 1408);
  v41 = *(v0 + 1400);
  v42 = *(v0 + 1392);
  v43 = *(v0 + 1384);
  v44 = *(v0 + 1376);
  v45 = *(v0 + 1368);
  v46 = *(v0 + 1360);
  v47 = *(v0 + 1352);
  v48 = *(v0 + 1344);
  v51 = *(v0 + 1336);
  v52 = *(v0 + 1328);
  v53 = *(v0 + 1320);
  v54 = *(v0 + 1312);
  v55 = *(v0 + 1304);
  v56 = *(v0 + 1296);
  v57 = *(v0 + 1288);
  v58 = *(v0 + 1280);
  v59 = *(v0 + 1272);
  v60 = *(v0 + 1264);
  v61 = *(v0 + 1240);
  v62 = *(v0 + 1216);
  v63 = *(v0 + 1192);
  v64 = *(v0 + 1184);
  v65 = *(v0 + 1176);
  v66 = *(v0 + 1168);
  v67 = *(v0 + 1160);
  v68 = *(v0 + 1152);
  v69 = *(v0 + 1128);
  v70 = *(v0 + 1120);
  v71 = *(v0 + 1112);
  v72 = *(v0 + 1104);
  v73 = *(v0 + 1080);
  v74 = *(v0 + 1056);
  v75 = *(v0 + 1032);
  v76 = *(v0 + 1008);
  v77 = *(v0 + 992);
  v78 = *(v0 + 976);
  v80 = *(v0 + 952);

  v49 = *(v0 + 8);

  return v49();
}

uint64_t sub_68710()
{
  sub_105180();
  v1 = v0[50];
  v2 = v0[51];
  sub_1A8E0(v0 + 47, v1);
  v3 = async function pointer to dispatch thunk of OutputPublisherAsync.publish(output:)[1];
  v4 = swift_task_alloc();
  v0[243] = v4;
  *v4 = v0;
  v4[1] = sub_687D4;

  return dispatch thunk of OutputPublisherAsync.publish(output:)(v0 + 27, v1, v2);
}

uint64_t sub_687D4()
{
  v2 = *(*v1 + 1944);
  v5 = *v1;
  *(*v1 + 1952) = v0;

  if (v0)
  {
    v3 = sub_6CCD4;
  }

  else
  {
    v3 = sub_688E8;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_688E8()
{
  v1 = *(v0 + 1120);
  v2 = *(v0 + 1096);
  v3 = *(v0 + 1088);

  sub_2738((v0 + 216));
  (*(v2 + 8))(v1, v3);
  sub_2738((v0 + 376));
  v4 = *(v0 + 968);
  v5 = *(v0 + 960);
  v6 = *(v0 + 952);
  v7 = *(v0 + 944);
  v8 = OBJC_IVAR____TtC15AlarmFlowPlugin20UndoChangeStatusFlow_followupPluginAction;
  swift_beginAccess();
  sub_14994(v7 + v8, v6, &qword_137FD0, &unk_1087C0);
  v9 = (*(v4 + 48))(v6, 1, v5);
  v10 = *(v0 + 1528);
  v11 = *(v0 + 1520);
  v12 = *(v0 + 1240);
  v13 = *(v0 + 1232);
  v14 = *(v0 + 1224);
  if (v9 == 1)
  {
    v15 = *(v0 + 944);
    v16 = *(v0 + 936);
    sub_16F70(*(v0 + 952), &qword_137FD0, &unk_1087C0);
    sub_104F00();
  }

  else
  {
    v17 = *(v0 + 976);
    v61 = *(v0 + 1240);
    v18 = *(v0 + 968);
    v19 = *(v0 + 960);
    v15 = *(v0 + 944);
    v20 = *(v0 + 936);
    (*(v18 + 32))(v17, *(v0 + 952), v19);
    sub_104F10();

    (*(v18 + 8))(v17, v19);
    v12 = v61;
  }

  (*(v13 + 8))(v12, v14);
  sub_73574(v15);
  v21 = *(v0 + 1432);
  v22 = *(v0 + 1408);
  v23 = *(v0 + 1400);
  v24 = *(v0 + 1392);
  v25 = *(v0 + 1384);
  v26 = *(v0 + 1376);
  v27 = *(v0 + 1368);
  v28 = *(v0 + 1360);
  v29 = *(v0 + 1352);
  v30 = *(v0 + 1344);
  v33 = *(v0 + 1336);
  v34 = *(v0 + 1328);
  v35 = *(v0 + 1320);
  v36 = *(v0 + 1312);
  v37 = *(v0 + 1304);
  v38 = *(v0 + 1296);
  v39 = *(v0 + 1288);
  v40 = *(v0 + 1280);
  v41 = *(v0 + 1272);
  v42 = *(v0 + 1264);
  v43 = *(v0 + 1240);
  v44 = *(v0 + 1216);
  v45 = *(v0 + 1192);
  v46 = *(v0 + 1184);
  v47 = *(v0 + 1176);
  v48 = *(v0 + 1168);
  v49 = *(v0 + 1160);
  v50 = *(v0 + 1152);
  v51 = *(v0 + 1128);
  v52 = *(v0 + 1120);
  v53 = *(v0 + 1112);
  v54 = *(v0 + 1104);
  v55 = *(v0 + 1080);
  v56 = *(v0 + 1056);
  v57 = *(v0 + 1032);
  v58 = *(v0 + 1008);
  v59 = *(v0 + 992);
  v60 = *(v0 + 976);
  v62 = *(v0 + 952);

  v31 = *(v0 + 8);

  return v31();
}

uint64_t sub_68CE4()
{
  v1 = *(*v0 + 1960);
  v2 = *(*v0 + 1216);
  v3 = *(*v0 + 1208);
  v4 = *(*v0 + 1200);
  v6 = *v0;

  (*(v3 + 8))(v2, v4);

  return _swift_task_switch(sub_74310, 0, 0);
}

uint64_t sub_68E3C(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 1976);
  v6 = *v2;
  *(v4 + 1984) = a1;
  *(v4 + 1992) = v1;

  v7 = *(v3 + 1968);

  if (v1)
  {
    v8 = sub_691D0;
  }

  else
  {
    v8 = sub_68F7C;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_68F7C()
{
  v1 = v0[145];
  sub_73CB4(v0[126], type metadata accessor for ModifyAllEnableParameters);
  sub_104CF0();
  v2 = async function pointer to PatternExecutionResult.generateStandardPatternOutput(phase:contextUpdate:measure:dismissAssistant:)[1];
  v3 = swift_task_alloc();
  v0[250] = v3;
  *v3 = v0;
  v3[1] = sub_69050;
  v4 = v0[248];
  v5 = v0[155];
  v6 = v0[145];
  v7 = v0[139];

  return PatternExecutionResult.generateStandardPatternOutput(phase:contextUpdate:measure:dismissAssistant:)(v0 + 17, v6, v5, v7, 0);
}

uint64_t sub_69050()
{
  v2 = *v1;
  v3 = *(*v1 + 2000);
  v4 = *v1;
  *(*v1 + 2008) = v0;

  v5 = v2[248];
  (*(v2[143] + 8))(v2[145], v2[142]);

  if (v0)
  {
    v6 = sub_6D280;
  }

  else
  {
    v6 = sub_69778;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_691D0()
{
  v79 = v0;
  v1 = v0[139];
  v2 = v0[137];
  v3 = v0[136];
  sub_73CB4(v0[126], type metadata accessor for ModifyAllEnableParameters);
  (*(v2 + 8))(v1, v3);
  v4 = v0[249];
  v5 = v0[182];
  v6 = v0[181];
  v7 = v0[180];
  v8 = v0[174];
  v9 = v0[150];
  v10 = v0[118];
  (*(v0[151] + 104))(v8, enum case for SiriTimeEventSender.ReasonDescription.errorProducingOutput(_:), v9);
  v6(v8, 0, 1, v9);
  v11 = OBJC_IVAR____TtC15AlarmFlowPlugin20UndoChangeStatusFlow_failureReason;
  swift_beginAccess();
  sub_57A78(v8, v10 + v11, &qword_137FE8, &unk_1087E0);
  swift_endAccess();
  swift_errorRetain();
  v12 = sub_106D10();
  v13 = sub_106FB0();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v78 = v15;
    *v14 = 136315138;
    v0[112] = v4;
    swift_errorRetain();
    sub_25E4(&qword_1376C0, &unk_1080D0);
    v16 = sub_106E30();
    v18 = sub_722E8(v16, v17, &v78);

    *(v14 + 4) = v18;
    _os_log_impl(&dword_0, v12, v13, "Error in RF path: %s", v14, 0xCu);
    sub_2738(v15);
  }

  else
  {
  }

  v19 = v0[121];
  v20 = v0[120];
  v21 = v0[119];
  v22 = v0[118];
  v23 = OBJC_IVAR____TtC15AlarmFlowPlugin20UndoChangeStatusFlow_followupPluginAction;
  swift_beginAccess();
  sub_14994(v22 + v23, v21, &qword_137FD0, &unk_1087C0);
  v24 = (*(v19 + 48))(v21, 1, v20);
  v25 = v0[191];
  v26 = v0[190];
  v27 = v0[155];
  v28 = v0[154];
  v29 = v0[153];
  if (v24 == 1)
  {
    v30 = v0[118];
    v31 = v0[117];
    sub_16F70(v0[119], &qword_137FD0, &unk_1087C0);
    sub_104F00();
  }

  else
  {
    v32 = v0[122];
    v76 = v0[155];
    v33 = v0[121];
    v34 = v0[120];
    v30 = v0[118];
    v35 = v0[117];
    (*(v33 + 32))(v32, v0[119], v34);
    sub_104F10();

    (*(v33 + 8))(v32, v34);
    v27 = v76;
  }

  (*(v28 + 8))(v27, v29);
  sub_73574(v30);
  v36 = v0[179];
  v37 = v0[176];
  v38 = v0[175];
  v39 = v0[174];
  v40 = v0[173];
  v41 = v0[172];
  v42 = v0[171];
  v43 = v0[170];
  v44 = v0[169];
  v45 = v0[168];
  v48 = v0[167];
  v49 = v0[166];
  v50 = v0[165];
  v51 = v0[164];
  v52 = v0[163];
  v53 = v0[162];
  v54 = v0[161];
  v55 = v0[160];
  v56 = v0[159];
  v57 = v0[158];
  v58 = v0[155];
  v59 = v0[152];
  v60 = v0[149];
  v61 = v0[148];
  v62 = v0[147];
  v63 = v0[146];
  v64 = v0[145];
  v65 = v0[144];
  v66 = v0[141];
  v67 = v0[140];
  v68 = v0[139];
  v69 = v0[138];
  v70 = v0[135];
  v71 = v0[132];
  v72 = v0[129];
  v73 = v0[126];
  v74 = v0[124];
  v75 = v0[122];
  v77 = v0[119];

  v46 = v0[1];

  return v46();
}

uint64_t sub_69778()
{
  sub_105180();
  v1 = v0[25];
  v2 = v0[26];
  sub_1A8E0(v0 + 22, v1);
  v3 = async function pointer to dispatch thunk of OutputPublisherAsync.publish(output:)[1];
  v4 = swift_task_alloc();
  v0[252] = v4;
  *v4 = v0;
  v4[1] = sub_6983C;

  return dispatch thunk of OutputPublisherAsync.publish(output:)(v0 + 17, v1, v2);
}

uint64_t sub_6983C()
{
  v2 = *(*v1 + 2016);
  v5 = *v1;
  *(*v1 + 2024) = v0;

  if (v0)
  {
    v3 = sub_6D804;
  }

  else
  {
    v3 = sub_69950;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_69950()
{
  v1 = v0[139];
  v2 = v0[137];
  v3 = v0[136];
  sub_2738(v0 + 17);
  (*(v2 + 8))(v1, v3);
  sub_2738(v0 + 22);
  v4 = v0[121];
  v5 = v0[120];
  v6 = v0[119];
  v7 = v0[118];
  v8 = OBJC_IVAR____TtC15AlarmFlowPlugin20UndoChangeStatusFlow_followupPluginAction;
  swift_beginAccess();
  sub_14994(v7 + v8, v6, &qword_137FD0, &unk_1087C0);
  v9 = (*(v4 + 48))(v6, 1, v5);
  v10 = v0[191];
  v11 = v0[190];
  v12 = v0[155];
  v13 = v0[154];
  v14 = v0[153];
  if (v9 == 1)
  {
    v15 = v0[118];
    v16 = v0[117];
    sub_16F70(v0[119], &qword_137FD0, &unk_1087C0);
    sub_104F00();
  }

  else
  {
    v17 = v0[122];
    v61 = v0[155];
    v18 = v0[121];
    v19 = v0[120];
    v15 = v0[118];
    v20 = v0[117];
    (*(v18 + 32))(v17, v0[119], v19);
    sub_104F10();

    (*(v18 + 8))(v17, v19);
    v12 = v61;
  }

  (*(v13 + 8))(v12, v14);
  sub_73574(v15);
  v21 = v0[179];
  v22 = v0[176];
  v23 = v0[175];
  v24 = v0[174];
  v25 = v0[173];
  v26 = v0[172];
  v27 = v0[171];
  v28 = v0[170];
  v29 = v0[169];
  v30 = v0[168];
  v33 = v0[167];
  v34 = v0[166];
  v35 = v0[165];
  v36 = v0[164];
  v37 = v0[163];
  v38 = v0[162];
  v39 = v0[161];
  v40 = v0[160];
  v41 = v0[159];
  v42 = v0[158];
  v43 = v0[155];
  v44 = v0[152];
  v45 = v0[149];
  v46 = v0[148];
  v47 = v0[147];
  v48 = v0[146];
  v49 = v0[145];
  v50 = v0[144];
  v51 = v0[141];
  v52 = v0[140];
  v53 = v0[139];
  v54 = v0[138];
  v55 = v0[135];
  v56 = v0[132];
  v57 = v0[129];
  v58 = v0[126];
  v59 = v0[124];
  v60 = v0[122];
  v62 = v0[119];

  v31 = v0[1];

  return v31();
}

uint64_t sub_69D44(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 2040);
  v6 = *v2;
  *(v4 + 2048) = a1;
  *(v4 + 2056) = v1;

  v7 = *(v3 + 2032);

  if (v1)
  {
    v8 = sub_6A0D8;
  }

  else
  {
    v8 = sub_69E84;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_69E84()
{
  v1 = v0[144];
  sub_73CB4(v0[124], type metadata accessor for ModifyAllDisableParameters);
  sub_104CF0();
  v2 = async function pointer to PatternExecutionResult.generateStandardPatternOutput(phase:contextUpdate:measure:dismissAssistant:)[1];
  v3 = swift_task_alloc();
  v0[258] = v3;
  *v3 = v0;
  v3[1] = sub_69F58;
  v4 = v0[256];
  v5 = v0[155];
  v6 = v0[144];
  v7 = v0[138];

  return PatternExecutionResult.generateStandardPatternOutput(phase:contextUpdate:measure:dismissAssistant:)(v0 + 7, v6, v5, v7, 0);
}

uint64_t sub_69F58()
{
  v2 = *v1;
  v3 = *(*v1 + 2064);
  v4 = *v1;
  *(*v1 + 2072) = v0;

  v5 = v2[256];
  (*(v2[143] + 8))(v2[144], v2[142]);

  if (v0)
  {
    v6 = sub_6DDA0;
  }

  else
  {
    v6 = sub_6A680;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_6A0D8()
{
  v79 = v0;
  v1 = v0[138];
  v2 = v0[137];
  v3 = v0[136];
  sub_73CB4(v0[124], type metadata accessor for ModifyAllDisableParameters);
  (*(v2 + 8))(v1, v3);
  v4 = v0[257];
  v5 = v0[182];
  v6 = v0[181];
  v7 = v0[180];
  v8 = v0[174];
  v9 = v0[150];
  v10 = v0[118];
  (*(v0[151] + 104))(v8, enum case for SiriTimeEventSender.ReasonDescription.errorProducingOutput(_:), v9);
  v6(v8, 0, 1, v9);
  v11 = OBJC_IVAR____TtC15AlarmFlowPlugin20UndoChangeStatusFlow_failureReason;
  swift_beginAccess();
  sub_57A78(v8, v10 + v11, &qword_137FE8, &unk_1087E0);
  swift_endAccess();
  swift_errorRetain();
  v12 = sub_106D10();
  v13 = sub_106FB0();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v78 = v15;
    *v14 = 136315138;
    v0[113] = v4;
    swift_errorRetain();
    sub_25E4(&qword_1376C0, &unk_1080D0);
    v16 = sub_106E30();
    v18 = sub_722E8(v16, v17, &v78);

    *(v14 + 4) = v18;
    _os_log_impl(&dword_0, v12, v13, "Error in RF path: %s", v14, 0xCu);
    sub_2738(v15);
  }

  else
  {
  }

  v19 = v0[121];
  v20 = v0[120];
  v21 = v0[119];
  v22 = v0[118];
  v23 = OBJC_IVAR____TtC15AlarmFlowPlugin20UndoChangeStatusFlow_followupPluginAction;
  swift_beginAccess();
  sub_14994(v22 + v23, v21, &qword_137FD0, &unk_1087C0);
  v24 = (*(v19 + 48))(v21, 1, v20);
  v25 = v0[191];
  v26 = v0[190];
  v27 = v0[155];
  v28 = v0[154];
  v29 = v0[153];
  if (v24 == 1)
  {
    v30 = v0[118];
    v31 = v0[117];
    sub_16F70(v0[119], &qword_137FD0, &unk_1087C0);
    sub_104F00();
  }

  else
  {
    v32 = v0[122];
    v76 = v0[155];
    v33 = v0[121];
    v34 = v0[120];
    v30 = v0[118];
    v35 = v0[117];
    (*(v33 + 32))(v32, v0[119], v34);
    sub_104F10();

    (*(v33 + 8))(v32, v34);
    v27 = v76;
  }

  (*(v28 + 8))(v27, v29);
  sub_73574(v30);
  v36 = v0[179];
  v37 = v0[176];
  v38 = v0[175];
  v39 = v0[174];
  v40 = v0[173];
  v41 = v0[172];
  v42 = v0[171];
  v43 = v0[170];
  v44 = v0[169];
  v45 = v0[168];
  v48 = v0[167];
  v49 = v0[166];
  v50 = v0[165];
  v51 = v0[164];
  v52 = v0[163];
  v53 = v0[162];
  v54 = v0[161];
  v55 = v0[160];
  v56 = v0[159];
  v57 = v0[158];
  v58 = v0[155];
  v59 = v0[152];
  v60 = v0[149];
  v61 = v0[148];
  v62 = v0[147];
  v63 = v0[146];
  v64 = v0[145];
  v65 = v0[144];
  v66 = v0[141];
  v67 = v0[140];
  v68 = v0[139];
  v69 = v0[138];
  v70 = v0[135];
  v71 = v0[132];
  v72 = v0[129];
  v73 = v0[126];
  v74 = v0[124];
  v75 = v0[122];
  v77 = v0[119];

  v46 = v0[1];

  return v46();
}

uint64_t sub_6A680()
{
  sub_105180();
  v1 = v0[15];
  v2 = v0[16];
  sub_1A8E0(v0 + 12, v1);
  v3 = async function pointer to dispatch thunk of OutputPublisherAsync.publish(output:)[1];
  v4 = swift_task_alloc();
  v0[260] = v4;
  *v4 = v0;
  v4[1] = sub_6A744;

  return dispatch thunk of OutputPublisherAsync.publish(output:)(v0 + 7, v1, v2);
}

uint64_t sub_6A744()
{
  v2 = *(*v1 + 2080);
  v5 = *v1;
  *(*v1 + 2088) = v0;

  if (v0)
  {
    v3 = sub_6E324;
  }

  else
  {
    v3 = sub_6A858;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_6A858()
{
  v1 = v0[138];
  v2 = v0[137];
  v3 = v0[136];
  sub_2738(v0 + 7);
  (*(v2 + 8))(v1, v3);
  sub_2738(v0 + 12);
  v4 = v0[121];
  v5 = v0[120];
  v6 = v0[119];
  v7 = v0[118];
  v8 = OBJC_IVAR____TtC15AlarmFlowPlugin20UndoChangeStatusFlow_followupPluginAction;
  swift_beginAccess();
  sub_14994(v7 + v8, v6, &qword_137FD0, &unk_1087C0);
  v9 = (*(v4 + 48))(v6, 1, v5);
  v10 = v0[191];
  v11 = v0[190];
  v12 = v0[155];
  v13 = v0[154];
  v14 = v0[153];
  if (v9 == 1)
  {
    v15 = v0[118];
    v16 = v0[117];
    sub_16F70(v0[119], &qword_137FD0, &unk_1087C0);
    sub_104F00();
  }

  else
  {
    v17 = v0[122];
    v61 = v0[155];
    v18 = v0[121];
    v19 = v0[120];
    v15 = v0[118];
    v20 = v0[117];
    (*(v18 + 32))(v17, v0[119], v19);
    sub_104F10();

    (*(v18 + 8))(v17, v19);
    v12 = v61;
  }

  (*(v13 + 8))(v12, v14);
  sub_73574(v15);
  v21 = v0[179];
  v22 = v0[176];
  v23 = v0[175];
  v24 = v0[174];
  v25 = v0[173];
  v26 = v0[172];
  v27 = v0[171];
  v28 = v0[170];
  v29 = v0[169];
  v30 = v0[168];
  v33 = v0[167];
  v34 = v0[166];
  v35 = v0[165];
  v36 = v0[164];
  v37 = v0[163];
  v38 = v0[162];
  v39 = v0[161];
  v40 = v0[160];
  v41 = v0[159];
  v42 = v0[158];
  v43 = v0[155];
  v44 = v0[152];
  v45 = v0[149];
  v46 = v0[148];
  v47 = v0[147];
  v48 = v0[146];
  v49 = v0[145];
  v50 = v0[144];
  v51 = v0[141];
  v52 = v0[140];
  v53 = v0[139];
  v54 = v0[138];
  v55 = v0[135];
  v56 = v0[132];
  v57 = v0[129];
  v58 = v0[126];
  v59 = v0[124];
  v60 = v0[122];
  v62 = v0[119];

  v31 = v0[1];

  return v31();
}

uint64_t sub_6AC4C()
{
  v1 = *(*v0 + 2096);
  v2 = *(*v0 + 1216);
  v3 = *(*v0 + 1208);
  v4 = *(*v0 + 1200);
  v6 = *v0;

  (*(v3 + 8))(v2, v4);

  return _swift_task_switch(sub_6ADA4, 0, 0);
}

uint64_t sub_6ADA4()
{
  sub_73574(v0[118]);
  v1 = v0[179];
  v2 = v0[176];
  v3 = v0[175];
  v4 = v0[174];
  v5 = v0[173];
  v6 = v0[172];
  v7 = v0[171];
  v8 = v0[170];
  v9 = v0[169];
  v10 = v0[168];
  v13 = v0[167];
  v14 = v0[166];
  v15 = v0[165];
  v16 = v0[164];
  v17 = v0[163];
  v18 = v0[162];
  v19 = v0[161];
  v20 = v0[160];
  v21 = v0[159];
  v22 = v0[158];
  v23 = v0[155];
  v24 = v0[152];
  v25 = v0[149];
  v26 = v0[148];
  v27 = v0[147];
  v28 = v0[146];
  v29 = v0[145];
  v30 = v0[144];
  v31 = v0[141];
  v32 = v0[140];
  v33 = v0[139];
  v34 = v0[138];
  v35 = v0[135];
  v36 = v0[132];
  v37 = v0[129];
  v38 = v0[126];
  v39 = v0[124];
  v40 = v0[122];
  v41 = v0[119];

  v11 = v0[1];

  return v11();
}

uint64_t sub_6B030()
{
  v83 = v0;
  (*(*(v0 + 1096) + 8))(*(v0 + 1128), *(v0 + 1088));
  v1 = *(v0 + 1760);
  v2 = *(v0 + 1456);
  v3 = *(v0 + 1448);
  v4 = *(v0 + 1440);
  v5 = *(v0 + 1392);
  v6 = *(v0 + 1200);
  v7 = *(v0 + 944);
  (*(*(v0 + 1208) + 104))(v5, enum case for SiriTimeEventSender.ReasonDescription.errorProducingOutput(_:), v6);
  v3(v5, 0, 1, v6);
  v8 = OBJC_IVAR____TtC15AlarmFlowPlugin20UndoChangeStatusFlow_failureReason;
  swift_beginAccess();
  sub_57A78(v5, v7 + v8, &qword_137FE8, &unk_1087E0);
  swift_endAccess();
  swift_errorRetain();
  v9 = sub_106D10();
  v10 = sub_106FB0();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = *(v0 + 1640);
    v12 = *(v0 + 1144);
    v77 = *(v0 + 1136);
    v79 = *(v0 + 1192);
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v82 = v14;
    *v13 = 136315138;
    *(v0 + 880) = v1;
    swift_errorRetain();
    sub_25E4(&qword_1376C0, &unk_1080D0);
    v15 = sub_106E30();
    v17 = sub_722E8(v15, v16, &v82);

    *(v13 + 4) = v17;
    _os_log_impl(&dword_0, v9, v10, "Error in RF path: %s", v13, 0xCu);
    sub_2738(v14);

    (*(v12 + 8))(v79, v77);
  }

  else
  {
    v18 = *(v0 + 1192);
    v19 = *(v0 + 1144);
    v20 = *(v0 + 1136);

    (*(v19 + 8))(v18, v20);
  }

  v21 = *(v0 + 968);
  v22 = *(v0 + 960);
  v23 = *(v0 + 952);
  v24 = *(v0 + 944);
  v25 = OBJC_IVAR____TtC15AlarmFlowPlugin20UndoChangeStatusFlow_followupPluginAction;
  swift_beginAccess();
  sub_14994(v24 + v25, v23, &qword_137FD0, &unk_1087C0);
  v26 = (*(v21 + 48))(v23, 1, v22);
  v27 = *(v0 + 1528);
  v28 = *(v0 + 1520);
  v29 = *(v0 + 1240);
  v30 = *(v0 + 1232);
  v31 = *(v0 + 1224);
  if (v26 == 1)
  {
    v32 = *(v0 + 944);
    v33 = *(v0 + 936);
    sub_16F70(*(v0 + 952), &qword_137FD0, &unk_1087C0);
    sub_104F00();
  }

  else
  {
    v34 = *(v0 + 976);
    v80 = *(v0 + 1240);
    v35 = *(v0 + 968);
    v36 = *(v0 + 960);
    v32 = *(v0 + 944);
    v37 = *(v0 + 936);
    (*(v35 + 32))(v34, *(v0 + 952), v36);
    sub_104F10();

    (*(v35 + 8))(v34, v36);
    v29 = v80;
  }

  (*(v30 + 8))(v29, v31);
  sub_73574(v32);
  v38 = *(v0 + 1432);
  v39 = *(v0 + 1408);
  v40 = *(v0 + 1400);
  v41 = *(v0 + 1392);
  v42 = *(v0 + 1384);
  v43 = *(v0 + 1376);
  v44 = *(v0 + 1368);
  v45 = *(v0 + 1360);
  v46 = *(v0 + 1352);
  v47 = *(v0 + 1344);
  v50 = *(v0 + 1336);
  v51 = *(v0 + 1328);
  v52 = *(v0 + 1320);
  v53 = *(v0 + 1312);
  v54 = *(v0 + 1304);
  v55 = *(v0 + 1296);
  v56 = *(v0 + 1288);
  v57 = *(v0 + 1280);
  v58 = *(v0 + 1272);
  v59 = *(v0 + 1264);
  v60 = *(v0 + 1240);
  v61 = *(v0 + 1216);
  v62 = *(v0 + 1192);
  v63 = *(v0 + 1184);
  v64 = *(v0 + 1176);
  v65 = *(v0 + 1168);
  v66 = *(v0 + 1160);
  v67 = *(v0 + 1152);
  v68 = *(v0 + 1128);
  v69 = *(v0 + 1120);
  v70 = *(v0 + 1112);
  v71 = *(v0 + 1104);
  v72 = *(v0 + 1080);
  v73 = *(v0 + 1056);
  v74 = *(v0 + 1032);
  v75 = *(v0 + 1008);
  v76 = *(v0 + 992);
  v78 = *(v0 + 976);
  v81 = *(v0 + 952);

  v48 = *(v0 + 8);

  return v48();
}

uint64_t sub_6B60C()
{
  v86 = v0;
  v1 = *(v0 + 1128);
  v2 = *(v0 + 1096);
  v3 = *(v0 + 1088);
  sub_2738((v0 + 256));
  (*(v2 + 8))(v1, v3);
  sub_2738((v0 + 16));
  v4 = *(v0 + 1792);
  v5 = *(v0 + 1456);
  v6 = *(v0 + 1448);
  v7 = *(v0 + 1440);
  v8 = *(v0 + 1392);
  v9 = *(v0 + 1200);
  v10 = *(v0 + 944);
  (*(*(v0 + 1208) + 104))(v8, enum case for SiriTimeEventSender.ReasonDescription.errorProducingOutput(_:), v9);
  v6(v8, 0, 1, v9);
  v11 = OBJC_IVAR____TtC15AlarmFlowPlugin20UndoChangeStatusFlow_failureReason;
  swift_beginAccess();
  sub_57A78(v8, v10 + v11, &qword_137FE8, &unk_1087E0);
  swift_endAccess();
  swift_errorRetain();
  v12 = sub_106D10();
  v13 = sub_106FB0();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = *(v0 + 1640);
    v15 = *(v0 + 1144);
    v80 = *(v0 + 1136);
    v82 = *(v0 + 1192);
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v85 = v17;
    *v16 = 136315138;
    *(v0 + 880) = v4;
    swift_errorRetain();
    sub_25E4(&qword_1376C0, &unk_1080D0);
    v18 = sub_106E30();
    v20 = sub_722E8(v18, v19, &v85);

    *(v16 + 4) = v20;
    _os_log_impl(&dword_0, v12, v13, "Error in RF path: %s", v16, 0xCu);
    sub_2738(v17);

    (*(v15 + 8))(v82, v80);
  }

  else
  {
    v21 = *(v0 + 1192);
    v22 = *(v0 + 1144);
    v23 = *(v0 + 1136);

    (*(v22 + 8))(v21, v23);
  }

  v24 = *(v0 + 968);
  v25 = *(v0 + 960);
  v26 = *(v0 + 952);
  v27 = *(v0 + 944);
  v28 = OBJC_IVAR____TtC15AlarmFlowPlugin20UndoChangeStatusFlow_followupPluginAction;
  swift_beginAccess();
  sub_14994(v27 + v28, v26, &qword_137FD0, &unk_1087C0);
  v29 = (*(v24 + 48))(v26, 1, v25);
  v30 = *(v0 + 1528);
  v31 = *(v0 + 1520);
  v32 = *(v0 + 1240);
  v33 = *(v0 + 1232);
  v34 = *(v0 + 1224);
  if (v29 == 1)
  {
    v35 = *(v0 + 944);
    v36 = *(v0 + 936);
    sub_16F70(*(v0 + 952), &qword_137FD0, &unk_1087C0);
    sub_104F00();
  }

  else
  {
    v37 = *(v0 + 976);
    v83 = *(v0 + 1240);
    v38 = *(v0 + 968);
    v39 = *(v0 + 960);
    v35 = *(v0 + 944);
    v40 = *(v0 + 936);
    (*(v38 + 32))(v37, *(v0 + 952), v39);
    sub_104F10();

    (*(v38 + 8))(v37, v39);
    v32 = v83;
  }

  (*(v33 + 8))(v32, v34);
  sub_73574(v35);
  v41 = *(v0 + 1432);
  v42 = *(v0 + 1408);
  v43 = *(v0 + 1400);
  v44 = *(v0 + 1392);
  v45 = *(v0 + 1384);
  v46 = *(v0 + 1376);
  v47 = *(v0 + 1368);
  v48 = *(v0 + 1360);
  v49 = *(v0 + 1352);
  v50 = *(v0 + 1344);
  v53 = *(v0 + 1336);
  v54 = *(v0 + 1328);
  v55 = *(v0 + 1320);
  v56 = *(v0 + 1312);
  v57 = *(v0 + 1304);
  v58 = *(v0 + 1296);
  v59 = *(v0 + 1288);
  v60 = *(v0 + 1280);
  v61 = *(v0 + 1272);
  v62 = *(v0 + 1264);
  v63 = *(v0 + 1240);
  v64 = *(v0 + 1216);
  v65 = *(v0 + 1192);
  v66 = *(v0 + 1184);
  v67 = *(v0 + 1176);
  v68 = *(v0 + 1168);
  v69 = *(v0 + 1160);
  v70 = *(v0 + 1152);
  v71 = *(v0 + 1128);
  v72 = *(v0 + 1120);
  v73 = *(v0 + 1112);
  v74 = *(v0 + 1104);
  v75 = *(v0 + 1080);
  v76 = *(v0 + 1056);
  v77 = *(v0 + 1032);
  v78 = *(v0 + 1008);
  v79 = *(v0 + 992);
  v81 = *(v0 + 976);
  v84 = *(v0 + 952);

  v51 = *(v0 + 8);

  return v51();
}

uint64_t sub_6BC00()
{
  v77 = v0;
  (*(*(v0 + 1096) + 8))(*(v0 + 1120), *(v0 + 1088));
  v1 = *(v0 + 1856);
  v2 = *(v0 + 1456);
  v3 = *(v0 + 1448);
  v4 = *(v0 + 1440);
  v5 = *(v0 + 1392);
  v6 = *(v0 + 1200);
  v7 = *(v0 + 944);
  (*(*(v0 + 1208) + 104))(v5, enum case for SiriTimeEventSender.ReasonDescription.errorProducingOutput(_:), v6);
  v3(v5, 0, 1, v6);
  v8 = OBJC_IVAR____TtC15AlarmFlowPlugin20UndoChangeStatusFlow_failureReason;
  swift_beginAccess();
  sub_57A78(v5, v7 + v8, &qword_137FE8, &unk_1087E0);
  swift_endAccess();
  swift_errorRetain();
  v9 = sub_106D10();
  v10 = sub_106FB0();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = *(v0 + 1640);
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v76 = v13;
    *v12 = 136315138;
    *(v0 + 888) = v1;
    swift_errorRetain();
    sub_25E4(&qword_1376C0, &unk_1080D0);
    v14 = sub_106E30();
    v16 = sub_722E8(v14, v15, &v76);

    *(v12 + 4) = v16;
    _os_log_impl(&dword_0, v9, v10, "Error in RF path: %s", v12, 0xCu);
    sub_2738(v13);
  }

  else
  {
  }

  v17 = *(v0 + 968);
  v18 = *(v0 + 960);
  v19 = *(v0 + 952);
  v20 = *(v0 + 944);
  v21 = OBJC_IVAR____TtC15AlarmFlowPlugin20UndoChangeStatusFlow_followupPluginAction;
  swift_beginAccess();
  sub_14994(v20 + v21, v19, &qword_137FD0, &unk_1087C0);
  v22 = (*(v17 + 48))(v19, 1, v18);
  v23 = *(v0 + 1528);
  v24 = *(v0 + 1520);
  v25 = *(v0 + 1240);
  v26 = *(v0 + 1232);
  v27 = *(v0 + 1224);
  if (v22 == 1)
  {
    v28 = *(v0 + 944);
    v29 = *(v0 + 936);
    sub_16F70(*(v0 + 952), &qword_137FD0, &unk_1087C0);
    sub_104F00();
  }

  else
  {
    v30 = *(v0 + 976);
    v74 = *(v0 + 1240);
    v31 = *(v0 + 968);
    v32 = *(v0 + 960);
    v28 = *(v0 + 944);
    v33 = *(v0 + 936);
    (*(v31 + 32))(v30, *(v0 + 952), v32);
    sub_104F10();

    (*(v31 + 8))(v30, v32);
    v25 = v74;
  }

  (*(v26 + 8))(v25, v27);
  sub_73574(v28);
  v34 = *(v0 + 1432);
  v35 = *(v0 + 1408);
  v36 = *(v0 + 1400);
  v37 = *(v0 + 1392);
  v38 = *(v0 + 1384);
  v39 = *(v0 + 1376);
  v40 = *(v0 + 1368);
  v41 = *(v0 + 1360);
  v42 = *(v0 + 1352);
  v43 = *(v0 + 1344);
  v46 = *(v0 + 1336);
  v47 = *(v0 + 1328);
  v48 = *(v0 + 1320);
  v49 = *(v0 + 1312);
  v50 = *(v0 + 1304);
  v51 = *(v0 + 1296);
  v52 = *(v0 + 1288);
  v53 = *(v0 + 1280);
  v54 = *(v0 + 1272);
  v55 = *(v0 + 1264);
  v56 = *(v0 + 1240);
  v57 = *(v0 + 1216);
  v58 = *(v0 + 1192);
  v59 = *(v0 + 1184);
  v60 = *(v0 + 1176);
  v61 = *(v0 + 1168);
  v62 = *(v0 + 1160);
  v63 = *(v0 + 1152);
  v64 = *(v0 + 1128);
  v65 = *(v0 + 1120);
  v66 = *(v0 + 1112);
  v67 = *(v0 + 1104);
  v68 = *(v0 + 1080);
  v69 = *(v0 + 1056);
  v70 = *(v0 + 1032);
  v71 = *(v0 + 1008);
  v72 = *(v0 + 992);
  v73 = *(v0 + 976);
  v75 = *(v0 + 952);

  v44 = *(v0 + 8);

  return v44();
}

uint64_t sub_6C194()
{
  v80 = v0;
  v1 = *(v0 + 1120);
  v2 = *(v0 + 1096);
  v3 = *(v0 + 1088);
  sub_2738((v0 + 336));
  (*(v2 + 8))(v1, v3);
  sub_2738((v0 + 296));
  v4 = *(v0 + 1872);
  v5 = *(v0 + 1456);
  v6 = *(v0 + 1448);
  v7 = *(v0 + 1440);
  v8 = *(v0 + 1392);
  v9 = *(v0 + 1200);
  v10 = *(v0 + 944);
  (*(*(v0 + 1208) + 104))(v8, enum case for SiriTimeEventSender.ReasonDescription.errorProducingOutput(_:), v9);
  v6(v8, 0, 1, v9);
  v11 = OBJC_IVAR____TtC15AlarmFlowPlugin20UndoChangeStatusFlow_failureReason;
  swift_beginAccess();
  sub_57A78(v8, v10 + v11, &qword_137FE8, &unk_1087E0);
  swift_endAccess();
  swift_errorRetain();
  v12 = sub_106D10();
  v13 = sub_106FB0();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = *(v0 + 1640);
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v79 = v16;
    *v15 = 136315138;
    *(v0 + 888) = v4;
    swift_errorRetain();
    sub_25E4(&qword_1376C0, &unk_1080D0);
    v17 = sub_106E30();
    v19 = sub_722E8(v17, v18, &v79);

    *(v15 + 4) = v19;
    _os_log_impl(&dword_0, v12, v13, "Error in RF path: %s", v15, 0xCu);
    sub_2738(v16);
  }

  else
  {
  }

  v20 = *(v0 + 968);
  v21 = *(v0 + 960);
  v22 = *(v0 + 952);
  v23 = *(v0 + 944);
  v24 = OBJC_IVAR____TtC15AlarmFlowPlugin20UndoChangeStatusFlow_followupPluginAction;
  swift_beginAccess();
  sub_14994(v23 + v24, v22, &qword_137FD0, &unk_1087C0);
  v25 = (*(v20 + 48))(v22, 1, v21);
  v26 = *(v0 + 1528);
  v27 = *(v0 + 1520);
  v28 = *(v0 + 1240);
  v29 = *(v0 + 1232);
  v30 = *(v0 + 1224);
  if (v25 == 1)
  {
    v31 = *(v0 + 944);
    v32 = *(v0 + 936);
    sub_16F70(*(v0 + 952), &qword_137FD0, &unk_1087C0);
    sub_104F00();
  }

  else
  {
    v33 = *(v0 + 976);
    v77 = *(v0 + 1240);
    v34 = *(v0 + 968);
    v35 = *(v0 + 960);
    v31 = *(v0 + 944);
    v36 = *(v0 + 936);
    (*(v34 + 32))(v33, *(v0 + 952), v35);
    sub_104F10();

    (*(v34 + 8))(v33, v35);
    v28 = v77;
  }

  (*(v29 + 8))(v28, v30);
  sub_73574(v31);
  v37 = *(v0 + 1432);
  v38 = *(v0 + 1408);
  v39 = *(v0 + 1400);
  v40 = *(v0 + 1392);
  v41 = *(v0 + 1384);
  v42 = *(v0 + 1376);
  v43 = *(v0 + 1368);
  v44 = *(v0 + 1360);
  v45 = *(v0 + 1352);
  v46 = *(v0 + 1344);
  v49 = *(v0 + 1336);
  v50 = *(v0 + 1328);
  v51 = *(v0 + 1320);
  v52 = *(v0 + 1312);
  v53 = *(v0 + 1304);
  v54 = *(v0 + 1296);
  v55 = *(v0 + 1288);
  v56 = *(v0 + 1280);
  v57 = *(v0 + 1272);
  v58 = *(v0 + 1264);
  v59 = *(v0 + 1240);
  v60 = *(v0 + 1216);
  v61 = *(v0 + 1192);
  v62 = *(v0 + 1184);
  v63 = *(v0 + 1176);
  v64 = *(v0 + 1168);
  v65 = *(v0 + 1160);
  v66 = *(v0 + 1152);
  v67 = *(v0 + 1128);
  v68 = *(v0 + 1120);
  v69 = *(v0 + 1112);
  v70 = *(v0 + 1104);
  v71 = *(v0 + 1080);
  v72 = *(v0 + 1056);
  v73 = *(v0 + 1032);
  v74 = *(v0 + 1008);
  v75 = *(v0 + 992);
  v76 = *(v0 + 976);
  v78 = *(v0 + 952);

  v47 = *(v0 + 8);

  return v47();
}

uint64_t sub_6C740()
{
  v77 = v0;
  (*(*(v0 + 1096) + 8))(*(v0 + 1120), *(v0 + 1088));
  v1 = *(v0 + 1936);
  v2 = *(v0 + 1456);
  v3 = *(v0 + 1448);
  v4 = *(v0 + 1440);
  v5 = *(v0 + 1392);
  v6 = *(v0 + 1200);
  v7 = *(v0 + 944);
  (*(*(v0 + 1208) + 104))(v5, enum case for SiriTimeEventSender.ReasonDescription.errorProducingOutput(_:), v6);
  v3(v5, 0, 1, v6);
  v8 = OBJC_IVAR____TtC15AlarmFlowPlugin20UndoChangeStatusFlow_failureReason;
  swift_beginAccess();
  sub_57A78(v5, v7 + v8, &qword_137FE8, &unk_1087E0);
  swift_endAccess();
  swift_errorRetain();
  v9 = sub_106D10();
  v10 = sub_106FB0();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = *(v0 + 1640);
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v76 = v13;
    *v12 = 136315138;
    *(v0 + 888) = v1;
    swift_errorRetain();
    sub_25E4(&qword_1376C0, &unk_1080D0);
    v14 = sub_106E30();
    v16 = sub_722E8(v14, v15, &v76);

    *(v12 + 4) = v16;
    _os_log_impl(&dword_0, v9, v10, "Error in RF path: %s", v12, 0xCu);
    sub_2738(v13);
  }

  else
  {
  }

  v17 = *(v0 + 968);
  v18 = *(v0 + 960);
  v19 = *(v0 + 952);
  v20 = *(v0 + 944);
  v21 = OBJC_IVAR____TtC15AlarmFlowPlugin20UndoChangeStatusFlow_followupPluginAction;
  swift_beginAccess();
  sub_14994(v20 + v21, v19, &qword_137FD0, &unk_1087C0);
  v22 = (*(v17 + 48))(v19, 1, v18);
  v23 = *(v0 + 1528);
  v24 = *(v0 + 1520);
  v25 = *(v0 + 1240);
  v26 = *(v0 + 1232);
  v27 = *(v0 + 1224);
  if (v22 == 1)
  {
    v28 = *(v0 + 944);
    v29 = *(v0 + 936);
    sub_16F70(*(v0 + 952), &qword_137FD0, &unk_1087C0);
    sub_104F00();
  }

  else
  {
    v30 = *(v0 + 976);
    v74 = *(v0 + 1240);
    v31 = *(v0 + 968);
    v32 = *(v0 + 960);
    v28 = *(v0 + 944);
    v33 = *(v0 + 936);
    (*(v31 + 32))(v30, *(v0 + 952), v32);
    sub_104F10();

    (*(v31 + 8))(v30, v32);
    v25 = v74;
  }

  (*(v26 + 8))(v25, v27);
  sub_73574(v28);
  v34 = *(v0 + 1432);
  v35 = *(v0 + 1408);
  v36 = *(v0 + 1400);
  v37 = *(v0 + 1392);
  v38 = *(v0 + 1384);
  v39 = *(v0 + 1376);
  v40 = *(v0 + 1368);
  v41 = *(v0 + 1360);
  v42 = *(v0 + 1352);
  v43 = *(v0 + 1344);
  v46 = *(v0 + 1336);
  v47 = *(v0 + 1328);
  v48 = *(v0 + 1320);
  v49 = *(v0 + 1312);
  v50 = *(v0 + 1304);
  v51 = *(v0 + 1296);
  v52 = *(v0 + 1288);
  v53 = *(v0 + 1280);
  v54 = *(v0 + 1272);
  v55 = *(v0 + 1264);
  v56 = *(v0 + 1240);
  v57 = *(v0 + 1216);
  v58 = *(v0 + 1192);
  v59 = *(v0 + 1184);
  v60 = *(v0 + 1176);
  v61 = *(v0 + 1168);
  v62 = *(v0 + 1160);
  v63 = *(v0 + 1152);
  v64 = *(v0 + 1128);
  v65 = *(v0 + 1120);
  v66 = *(v0 + 1112);
  v67 = *(v0 + 1104);
  v68 = *(v0 + 1080);
  v69 = *(v0 + 1056);
  v70 = *(v0 + 1032);
  v71 = *(v0 + 1008);
  v72 = *(v0 + 992);
  v73 = *(v0 + 976);
  v75 = *(v0 + 952);

  v44 = *(v0 + 8);

  return v44();
}

uint64_t sub_6CCD4()
{
  v80 = v0;
  v1 = *(v0 + 1120);
  v2 = *(v0 + 1096);
  v3 = *(v0 + 1088);
  sub_2738((v0 + 216));
  (*(v2 + 8))(v1, v3);
  sub_2738((v0 + 376));
  v4 = *(v0 + 1952);
  v5 = *(v0 + 1456);
  v6 = *(v0 + 1448);
  v7 = *(v0 + 1440);
  v8 = *(v0 + 1392);
  v9 = *(v0 + 1200);
  v10 = *(v0 + 944);
  (*(*(v0 + 1208) + 104))(v8, enum case for SiriTimeEventSender.ReasonDescription.errorProducingOutput(_:), v9);
  v6(v8, 0, 1, v9);
  v11 = OBJC_IVAR____TtC15AlarmFlowPlugin20UndoChangeStatusFlow_failureReason;
  swift_beginAccess();
  sub_57A78(v8, v10 + v11, &qword_137FE8, &unk_1087E0);
  swift_endAccess();
  swift_errorRetain();
  v12 = sub_106D10();
  v13 = sub_106FB0();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = *(v0 + 1640);
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v79 = v16;
    *v15 = 136315138;
    *(v0 + 888) = v4;
    swift_errorRetain();
    sub_25E4(&qword_1376C0, &unk_1080D0);
    v17 = sub_106E30();
    v19 = sub_722E8(v17, v18, &v79);

    *(v15 + 4) = v19;
    _os_log_impl(&dword_0, v12, v13, "Error in RF path: %s", v15, 0xCu);
    sub_2738(v16);
  }

  else
  {
  }

  v20 = *(v0 + 968);
  v21 = *(v0 + 960);
  v22 = *(v0 + 952);
  v23 = *(v0 + 944);
  v24 = OBJC_IVAR____TtC15AlarmFlowPlugin20UndoChangeStatusFlow_followupPluginAction;
  swift_beginAccess();
  sub_14994(v23 + v24, v22, &qword_137FD0, &unk_1087C0);
  v25 = (*(v20 + 48))(v22, 1, v21);
  v26 = *(v0 + 1528);
  v27 = *(v0 + 1520);
  v28 = *(v0 + 1240);
  v29 = *(v0 + 1232);
  v30 = *(v0 + 1224);
  if (v25 == 1)
  {
    v31 = *(v0 + 944);
    v32 = *(v0 + 936);
    sub_16F70(*(v0 + 952), &qword_137FD0, &unk_1087C0);
    sub_104F00();
  }

  else
  {
    v33 = *(v0 + 976);
    v77 = *(v0 + 1240);
    v34 = *(v0 + 968);
    v35 = *(v0 + 960);
    v31 = *(v0 + 944);
    v36 = *(v0 + 936);
    (*(v34 + 32))(v33, *(v0 + 952), v35);
    sub_104F10();

    (*(v34 + 8))(v33, v35);
    v28 = v77;
  }

  (*(v29 + 8))(v28, v30);
  sub_73574(v31);
  v37 = *(v0 + 1432);
  v38 = *(v0 + 1408);
  v39 = *(v0 + 1400);
  v40 = *(v0 + 1392);
  v41 = *(v0 + 1384);
  v42 = *(v0 + 1376);
  v43 = *(v0 + 1368);
  v44 = *(v0 + 1360);
  v45 = *(v0 + 1352);
  v46 = *(v0 + 1344);
  v49 = *(v0 + 1336);
  v50 = *(v0 + 1328);
  v51 = *(v0 + 1320);
  v52 = *(v0 + 1312);
  v53 = *(v0 + 1304);
  v54 = *(v0 + 1296);
  v55 = *(v0 + 1288);
  v56 = *(v0 + 1280);
  v57 = *(v0 + 1272);
  v58 = *(v0 + 1264);
  v59 = *(v0 + 1240);
  v60 = *(v0 + 1216);
  v61 = *(v0 + 1192);
  v62 = *(v0 + 1184);
  v63 = *(v0 + 1176);
  v64 = *(v0 + 1168);
  v65 = *(v0 + 1160);
  v66 = *(v0 + 1152);
  v67 = *(v0 + 1128);
  v68 = *(v0 + 1120);
  v69 = *(v0 + 1112);
  v70 = *(v0 + 1104);
  v71 = *(v0 + 1080);
  v72 = *(v0 + 1056);
  v73 = *(v0 + 1032);
  v74 = *(v0 + 1008);
  v75 = *(v0 + 992);
  v76 = *(v0 + 976);
  v78 = *(v0 + 952);

  v47 = *(v0 + 8);

  return v47();
}

uint64_t sub_6D280()
{
  v76 = v0;
  (*(v0[137] + 8))(v0[139], v0[136]);
  v1 = v0[251];
  v2 = v0[182];
  v3 = v0[181];
  v4 = v0[180];
  v5 = v0[174];
  v6 = v0[150];
  v7 = v0[118];
  (*(v0[151] + 104))(v5, enum case for SiriTimeEventSender.ReasonDescription.errorProducingOutput(_:), v6);
  v3(v5, 0, 1, v6);
  v8 = OBJC_IVAR____TtC15AlarmFlowPlugin20UndoChangeStatusFlow_failureReason;
  swift_beginAccess();
  sub_57A78(v5, v7 + v8, &qword_137FE8, &unk_1087E0);
  swift_endAccess();
  swift_errorRetain();
  v9 = sub_106D10();
  v10 = sub_106FB0();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v75 = v12;
    *v11 = 136315138;
    v0[112] = v1;
    swift_errorRetain();
    sub_25E4(&qword_1376C0, &unk_1080D0);
    v13 = sub_106E30();
    v15 = sub_722E8(v13, v14, &v75);

    *(v11 + 4) = v15;
    _os_log_impl(&dword_0, v9, v10, "Error in RF path: %s", v11, 0xCu);
    sub_2738(v12);
  }

  else
  {
  }

  v16 = v0[121];
  v17 = v0[120];
  v18 = v0[119];
  v19 = v0[118];
  v20 = OBJC_IVAR____TtC15AlarmFlowPlugin20UndoChangeStatusFlow_followupPluginAction;
  swift_beginAccess();
  sub_14994(v19 + v20, v18, &qword_137FD0, &unk_1087C0);
  v21 = (*(v16 + 48))(v18, 1, v17);
  v22 = v0[191];
  v23 = v0[190];
  v24 = v0[155];
  v25 = v0[154];
  v26 = v0[153];
  if (v21 == 1)
  {
    v27 = v0[118];
    v28 = v0[117];
    sub_16F70(v0[119], &qword_137FD0, &unk_1087C0);
    sub_104F00();
  }

  else
  {
    v29 = v0[122];
    v73 = v0[155];
    v30 = v0[121];
    v31 = v0[120];
    v27 = v0[118];
    v32 = v0[117];
    (*(v30 + 32))(v29, v0[119], v31);
    sub_104F10();

    (*(v30 + 8))(v29, v31);
    v24 = v73;
  }

  (*(v25 + 8))(v24, v26);
  sub_73574(v27);
  v33 = v0[179];
  v34 = v0[176];
  v35 = v0[175];
  v36 = v0[174];
  v37 = v0[173];
  v38 = v0[172];
  v39 = v0[171];
  v40 = v0[170];
  v41 = v0[169];
  v42 = v0[168];
  v45 = v0[167];
  v46 = v0[166];
  v47 = v0[165];
  v48 = v0[164];
  v49 = v0[163];
  v50 = v0[162];
  v51 = v0[161];
  v52 = v0[160];
  v53 = v0[159];
  v54 = v0[158];
  v55 = v0[155];
  v56 = v0[152];
  v57 = v0[149];
  v58 = v0[148];
  v59 = v0[147];
  v60 = v0[146];
  v61 = v0[145];
  v62 = v0[144];
  v63 = v0[141];
  v64 = v0[140];
  v65 = v0[139];
  v66 = v0[138];
  v67 = v0[135];
  v68 = v0[132];
  v69 = v0[129];
  v70 = v0[126];
  v71 = v0[124];
  v72 = v0[122];
  v74 = v0[119];

  v43 = v0[1];

  return v43();
}

uint64_t sub_6D804()
{
  v79 = v0;
  v1 = v0[139];
  v2 = v0[137];
  v3 = v0[136];
  sub_2738(v0 + 17);
  (*(v2 + 8))(v1, v3);
  sub_2738(v0 + 22);
  v4 = v0[253];
  v5 = v0[182];
  v6 = v0[181];
  v7 = v0[180];
  v8 = v0[174];
  v9 = v0[150];
  v10 = v0[118];
  (*(v0[151] + 104))(v8, enum case for SiriTimeEventSender.ReasonDescription.errorProducingOutput(_:), v9);
  v6(v8, 0, 1, v9);
  v11 = OBJC_IVAR____TtC15AlarmFlowPlugin20UndoChangeStatusFlow_failureReason;
  swift_beginAccess();
  sub_57A78(v8, v10 + v11, &qword_137FE8, &unk_1087E0);
  swift_endAccess();
  swift_errorRetain();
  v12 = sub_106D10();
  v13 = sub_106FB0();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v78 = v15;
    *v14 = 136315138;
    v0[112] = v4;
    swift_errorRetain();
    sub_25E4(&qword_1376C0, &unk_1080D0);
    v16 = sub_106E30();
    v18 = sub_722E8(v16, v17, &v78);

    *(v14 + 4) = v18;
    _os_log_impl(&dword_0, v12, v13, "Error in RF path: %s", v14, 0xCu);
    sub_2738(v15);
  }

  else
  {
  }

  v19 = v0[121];
  v20 = v0[120];
  v21 = v0[119];
  v22 = v0[118];
  v23 = OBJC_IVAR____TtC15AlarmFlowPlugin20UndoChangeStatusFlow_followupPluginAction;
  swift_beginAccess();
  sub_14994(v22 + v23, v21, &qword_137FD0, &unk_1087C0);
  v24 = (*(v19 + 48))(v21, 1, v20);
  v25 = v0[191];
  v26 = v0[190];
  v27 = v0[155];
  v28 = v0[154];
  v29 = v0[153];
  if (v24 == 1)
  {
    v30 = v0[118];
    v31 = v0[117];
    sub_16F70(v0[119], &qword_137FD0, &unk_1087C0);
    sub_104F00();
  }

  else
  {
    v32 = v0[122];
    v76 = v0[155];
    v33 = v0[121];
    v34 = v0[120];
    v30 = v0[118];
    v35 = v0[117];
    (*(v33 + 32))(v32, v0[119], v34);
    sub_104F10();

    (*(v33 + 8))(v32, v34);
    v27 = v76;
  }

  (*(v28 + 8))(v27, v29);
  sub_73574(v30);
  v36 = v0[179];
  v37 = v0[176];
  v38 = v0[175];
  v39 = v0[174];
  v40 = v0[173];
  v41 = v0[172];
  v42 = v0[171];
  v43 = v0[170];
  v44 = v0[169];
  v45 = v0[168];
  v48 = v0[167];
  v49 = v0[166];
  v50 = v0[165];
  v51 = v0[164];
  v52 = v0[163];
  v53 = v0[162];
  v54 = v0[161];
  v55 = v0[160];
  v56 = v0[159];
  v57 = v0[158];
  v58 = v0[155];
  v59 = v0[152];
  v60 = v0[149];
  v61 = v0[148];
  v62 = v0[147];
  v63 = v0[146];
  v64 = v0[145];
  v65 = v0[144];
  v66 = v0[141];
  v67 = v0[140];
  v68 = v0[139];
  v69 = v0[138];
  v70 = v0[135];
  v71 = v0[132];
  v72 = v0[129];
  v73 = v0[126];
  v74 = v0[124];
  v75 = v0[122];
  v77 = v0[119];

  v46 = v0[1];

  return v46();
}

uint64_t sub_6DDA0()
{
  v76 = v0;
  (*(v0[137] + 8))(v0[138], v0[136]);
  v1 = v0[259];
  v2 = v0[182];
  v3 = v0[181];
  v4 = v0[180];
  v5 = v0[174];
  v6 = v0[150];
  v7 = v0[118];
  (*(v0[151] + 104))(v5, enum case for SiriTimeEventSender.ReasonDescription.errorProducingOutput(_:), v6);
  v3(v5, 0, 1, v6);
  v8 = OBJC_IVAR____TtC15AlarmFlowPlugin20UndoChangeStatusFlow_failureReason;
  swift_beginAccess();
  sub_57A78(v5, v7 + v8, &qword_137FE8, &unk_1087E0);
  swift_endAccess();
  swift_errorRetain();
  v9 = sub_106D10();
  v10 = sub_106FB0();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v75 = v12;
    *v11 = 136315138;
    v0[113] = v1;
    swift_errorRetain();
    sub_25E4(&qword_1376C0, &unk_1080D0);
    v13 = sub_106E30();
    v15 = sub_722E8(v13, v14, &v75);

    *(v11 + 4) = v15;
    _os_log_impl(&dword_0, v9, v10, "Error in RF path: %s", v11, 0xCu);
    sub_2738(v12);
  }

  else
  {
  }

  v16 = v0[121];
  v17 = v0[120];
  v18 = v0[119];
  v19 = v0[118];
  v20 = OBJC_IVAR____TtC15AlarmFlowPlugin20UndoChangeStatusFlow_followupPluginAction;
  swift_beginAccess();
  sub_14994(v19 + v20, v18, &qword_137FD0, &unk_1087C0);
  v21 = (*(v16 + 48))(v18, 1, v17);
  v22 = v0[191];
  v23 = v0[190];
  v24 = v0[155];
  v25 = v0[154];
  v26 = v0[153];
  if (v21 == 1)
  {
    v27 = v0[118];
    v28 = v0[117];
    sub_16F70(v0[119], &qword_137FD0, &unk_1087C0);
    sub_104F00();
  }

  else
  {
    v29 = v0[122];
    v73 = v0[155];
    v30 = v0[121];
    v31 = v0[120];
    v27 = v0[118];
    v32 = v0[117];
    (*(v30 + 32))(v29, v0[119], v31);
    sub_104F10();

    (*(v30 + 8))(v29, v31);
    v24 = v73;
  }

  (*(v25 + 8))(v24, v26);
  sub_73574(v27);
  v33 = v0[179];
  v34 = v0[176];
  v35 = v0[175];
  v36 = v0[174];
  v37 = v0[173];
  v38 = v0[172];
  v39 = v0[171];
  v40 = v0[170];
  v41 = v0[169];
  v42 = v0[168];
  v45 = v0[167];
  v46 = v0[166];
  v47 = v0[165];
  v48 = v0[164];
  v49 = v0[163];
  v50 = v0[162];
  v51 = v0[161];
  v52 = v0[160];
  v53 = v0[159];
  v54 = v0[158];
  v55 = v0[155];
  v56 = v0[152];
  v57 = v0[149];
  v58 = v0[148];
  v59 = v0[147];
  v60 = v0[146];
  v61 = v0[145];
  v62 = v0[144];
  v63 = v0[141];
  v64 = v0[140];
  v65 = v0[139];
  v66 = v0[138];
  v67 = v0[135];
  v68 = v0[132];
  v69 = v0[129];
  v70 = v0[126];
  v71 = v0[124];
  v72 = v0[122];
  v74 = v0[119];

  v43 = v0[1];

  return v43();
}

uint64_t sub_6E324()
{
  v79 = v0;
  v1 = v0[138];
  v2 = v0[137];
  v3 = v0[136];
  sub_2738(v0 + 7);
  (*(v2 + 8))(v1, v3);
  sub_2738(v0 + 12);
  v4 = v0[261];
  v5 = v0[182];
  v6 = v0[181];
  v7 = v0[180];
  v8 = v0[174];
  v9 = v0[150];
  v10 = v0[118];
  (*(v0[151] + 104))(v8, enum case for SiriTimeEventSender.ReasonDescription.errorProducingOutput(_:), v9);
  v6(v8, 0, 1, v9);
  v11 = OBJC_IVAR____TtC15AlarmFlowPlugin20UndoChangeStatusFlow_failureReason;
  swift_beginAccess();
  sub_57A78(v8, v10 + v11, &qword_137FE8, &unk_1087E0);
  swift_endAccess();
  swift_errorRetain();
  v12 = sub_106D10();
  v13 = sub_106FB0();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v78 = v15;
    *v14 = 136315138;
    v0[113] = v4;
    swift_errorRetain();
    sub_25E4(&qword_1376C0, &unk_1080D0);
    v16 = sub_106E30();
    v18 = sub_722E8(v16, v17, &v78);

    *(v14 + 4) = v18;
    _os_log_impl(&dword_0, v12, v13, "Error in RF path: %s", v14, 0xCu);
    sub_2738(v15);
  }

  else
  {
  }

  v19 = v0[121];
  v20 = v0[120];
  v21 = v0[119];
  v22 = v0[118];
  v23 = OBJC_IVAR____TtC15AlarmFlowPlugin20UndoChangeStatusFlow_followupPluginAction;
  swift_beginAccess();
  sub_14994(v22 + v23, v21, &qword_137FD0, &unk_1087C0);
  v24 = (*(v19 + 48))(v21, 1, v20);
  v25 = v0[191];
  v26 = v0[190];
  v27 = v0[155];
  v28 = v0[154];
  v29 = v0[153];
  if (v24 == 1)
  {
    v30 = v0[118];
    v31 = v0[117];
    sub_16F70(v0[119], &qword_137FD0, &unk_1087C0);
    sub_104F00();
  }

  else
  {
    v32 = v0[122];
    v76 = v0[155];
    v33 = v0[121];
    v34 = v0[120];
    v30 = v0[118];
    v35 = v0[117];
    (*(v33 + 32))(v32, v0[119], v34);
    sub_104F10();

    (*(v33 + 8))(v32, v34);
    v27 = v76;
  }

  (*(v28 + 8))(v27, v29);
  sub_73574(v30);
  v36 = v0[179];
  v37 = v0[176];
  v38 = v0[175];
  v39 = v0[174];
  v40 = v0[173];
  v41 = v0[172];
  v42 = v0[171];
  v43 = v0[170];
  v44 = v0[169];
  v45 = v0[168];
  v48 = v0[167];
  v49 = v0[166];
  v50 = v0[165];
  v51 = v0[164];
  v52 = v0[163];
  v53 = v0[162];
  v54 = v0[161];
  v55 = v0[160];
  v56 = v0[159];
  v57 = v0[158];
  v58 = v0[155];
  v59 = v0[152];
  v60 = v0[149];
  v61 = v0[148];
  v62 = v0[147];
  v63 = v0[146];
  v64 = v0[145];
  v65 = v0[144];
  v66 = v0[141];
  v67 = v0[140];
  v68 = v0[139];
  v69 = v0[138];
  v70 = v0[135];
  v71 = v0[132];
  v72 = v0[129];
  v73 = v0[126];
  v74 = v0[124];
  v75 = v0[122];
  v77 = v0[119];

  v46 = v0[1];

  return v46();
}

uint64_t sub_6E8C0(uint64_t a1, uint64_t a2)
{
  v3[16] = a2;
  v3[17] = v2;
  v3[15] = a1;
  v4 = sub_104FF0();
  v3[18] = v4;
  v5 = *(v4 - 8);
  v3[19] = v5;
  v6 = *(v5 + 64) + 15;
  v3[20] = swift_task_alloc();
  v7 = sub_104D60();
  v3[21] = v7;
  v8 = *(v7 - 8);
  v3[22] = v8;
  v9 = *(v8 + 64) + 15;
  v3[23] = swift_task_alloc();
  v10 = *(*(sub_106200() - 8) + 64) + 15;
  v3[24] = swift_task_alloc();
  v11 = sub_106D20();
  v3[25] = v11;
  v12 = *(v11 - 8);
  v3[26] = v12;
  v13 = *(v12 + 64) + 15;
  v3[27] = swift_task_alloc();
  v14 = sub_106300();
  v3[28] = v14;
  v15 = *(v14 - 8);
  v3[29] = v15;
  v16 = *(v15 + 64) + 15;
  v3[30] = swift_task_alloc();
  v17 = sub_106320();
  v3[31] = v17;
  v18 = *(v17 - 8);
  v3[32] = v18;
  v19 = *(v18 + 64) + 15;
  v3[33] = swift_task_alloc();
  v20 = *(*(sub_25E4(&qword_137FF0, &unk_10C0F0) - 8) + 64) + 15;
  v3[34] = swift_task_alloc();
  v21 = *(*(sub_25E4(&qword_137FF8, &qword_1087F0) - 8) + 64) + 15;
  v3[35] = swift_task_alloc();
  v22 = sub_104DE0();
  v3[36] = v22;
  v23 = *(v22 - 8);
  v3[37] = v23;
  v24 = *(v23 + 64) + 15;
  v3[38] = swift_task_alloc();
  v25 = *(*(sub_25E4(&qword_137FE8, &unk_1087E0) - 8) + 64) + 15;
  v3[39] = swift_task_alloc();

  return _swift_task_switch(sub_6EC24, 0, 0);
}

uint64_t sub_6EC24()
{
  v1 = *(v0 + 304);
  v2 = *(v0 + 312);
  v3 = *(v0 + 288);
  v4 = *(v0 + 296);
  v5 = *(v0 + 128);
  v6 = *(v0 + 136);
  v7 = sub_1062D0();
  v8 = *(v7 - 8);
  v39 = *(v8 + 16);
  v39(v2, v5, v7);
  v40 = v7;
  v38 = *(v8 + 56);
  v38(v2, 0, 1, v7);
  v9 = OBJC_IVAR____TtC15AlarmFlowPlugin20UndoChangeStatusFlow_failureReason;
  swift_beginAccess();
  sub_57A78(v2, v6 + v9, &qword_137FE8, &unk_1087E0);
  swift_endAccess();
  (*(v4 + 104))(v1, enum case for ActivityType.failed(_:), v3);
  if (qword_136D08 != -1)
  {
    swift_once();
  }

  v10 = *(v0 + 280);
  v11 = sub_1062E0();
  sub_135C4(v11, qword_13B6E0);
  v12 = enum case for SiriKitReliabilityCodes.genericError(_:);
  v13 = sub_104C40();
  v14 = *(v13 - 8);
  (*(v14 + 104))(v10, v12, v13);
  (*(v14 + 56))(v10, 0, 1, v13);
  if (qword_136D10 != -1)
  {
    swift_once();
  }

  v15 = *(v0 + 312);
  v16 = *(v0 + 296);
  v34 = *(v0 + 304);
  v35 = *(v0 + 288);
  v18 = *(v0 + 272);
  v17 = *(v0 + 280);
  v19 = *(v0 + 232);
  v36 = *(v0 + 224);
  v37 = *(v0 + 240);
  v20 = *(v0 + 128);
  v21 = sub_1062F0();
  v22 = sub_135C4(v21, qword_13B6F8);
  v23 = *(v21 - 8);
  (*(v23 + 16))(v18, v22, v21);
  (*(v23 + 56))(v18, 0, 1, v21);
  v39(v15, v20, v40);
  v38(v15, 0, 1, v40);
  sub_1062C0();
  sub_16F70(v15, &qword_137FE8, &unk_1087E0);
  sub_16F70(v18, &qword_137FF0, &unk_10C0F0);
  sub_16F70(v17, &qword_137FF8, &qword_1087F0);
  (*(v16 + 8))(v34, v35);
  (*(v19 + 104))(v37, enum case for SiriTimeMeasurement.LogDescription.dialogPatternResponseTime(_:), v36);
  if (qword_136D00 != -1)
  {
    swift_once();
  }

  v24 = *(v0 + 264);
  v25 = *(v0 + 240);
  v27 = *(v0 + 208);
  v26 = *(v0 + 216);
  v28 = *(v0 + 200);
  v29 = sub_135C4(v28, qword_138830);
  *(v0 + 320) = v29;
  (*(v27 + 16))(v26, v29, v28);
  mach_absolute_time();
  sub_106330();
  sub_105180();
  v30 = *(v0 + 40);
  *(v0 + 328) = v30;
  *(v0 + 344) = sub_1A8E0((v0 + 16), v30);
  type metadata accessor for AlarmBaseCATPatternsExecutor(0);
  sub_1061E0();
  *(v0 + 352) = sub_1060D0();
  v31 = *(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + 1);
  v41 = &async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:);
  v32 = swift_task_alloc();
  *(v0 + 360) = v32;
  *v32 = v0;
  v32[1] = sub_6F140;

  return (v41)(0xD000000000000013, 0x800000000010C480, _swiftEmptyArrayStorage);
}

uint64_t sub_6F140(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 360);
  v6 = *v2;
  *(*v2 + 368) = v1;

  if (v1)
  {
    v7 = sub_6F538;
  }

  else
  {
    v8 = *(v4 + 352);
    *(v4 + 376) = a1;

    v7 = sub_6F270;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_6F270()
{
  v1 = v0[23];
  v2 = v0[20];
  sub_104D20();
  sub_104FE0();
  v3 = async function pointer to PatternExecutionResult.generateStandardPatternOutput(phase:contextUpdate:measure:dismissAssistant:)[1];
  v4 = swift_task_alloc();
  v0[48] = v4;
  *v4 = v0;
  v4[1] = sub_6F330;
  v5 = v0[47];
  v6 = v0[33];
  v7 = v0[23];
  v8 = v0[20];

  return PatternExecutionResult.generateStandardPatternOutput(phase:contextUpdate:measure:dismissAssistant:)(v0 + 7, v7, v8, v6, 0);
}

uint64_t sub_6F330()
{
  v2 = *(*v1 + 384);
  v3 = *(*v1 + 376);
  v4 = *v1;
  v4[49] = v0;

  if (v0)
  {
    v6 = v4[22];
    v5 = v4[23];
    v7 = v4[21];
    (*(v4[19] + 8))(v4[20], v4[18]);
    (*(v6 + 8))(v5, v7);

    return _swift_task_switch(sub_6F8F8, 0, 0);
  }

  else
  {
    v9 = v4[22];
    v8 = v4[23];
    v10 = v4[21];
    (*(v4[19] + 8))(v4[20], v4[18]);
    (*(v9 + 8))(v8, v10);
    v11 = async function pointer to dispatch thunk of OutputPublisherAsync.publish(output:)[1];
    v12 = swift_task_alloc();
    v4[50] = v12;
    *v12 = v4;
    v12[1] = sub_6F6C8;
    v13 = v4[42];
    v14 = v4[43];
    v15 = v4[41];

    return dispatch thunk of OutputPublisherAsync.publish(output:)(v4 + 7, v15, v13);
  }
}

uint64_t sub_6F538()
{
  v1 = v0[44];

  v2 = v0[46];
  v3 = v0[40];
  (*(v0[32] + 8))(v0[33], v0[31]);
  sub_2738(v0 + 2);
  v4 = sub_106D10();
  v5 = sub_106FB0();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_0, v4, v5, "Failed to produce Incomplete response.", v6, 2u);
  }

  v7 = v0[15];

  sub_104F00();

  v9 = v0[38];
  v8 = v0[39];
  v11 = v0[34];
  v10 = v0[35];
  v12 = v0[33];
  v13 = v0[30];
  v14 = v0[27];
  v16 = v0[23];
  v15 = v0[24];
  v17 = v0[20];

  v18 = v0[1];

  return v18();
}

uint64_t sub_6F6C8()
{
  v2 = *v1;
  v3 = *(*v1 + 400);
  v6 = *v1;
  *(v2 + 408) = v0;

  sub_2738((v2 + 56));
  if (v0)
  {
    v4 = sub_6FA80;
  }

  else
  {
    v4 = sub_6F7E4;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_6F7E4()
{
  v2 = v0[32];
  v1 = v0[33];
  v3 = v0[31];
  v4 = v0[15];
  sub_2738(v0 + 2);
  sub_104F00();
  (*(v2 + 8))(v1, v3);
  v6 = v0[38];
  v5 = v0[39];
  v8 = v0[34];
  v7 = v0[35];
  v9 = v0[33];
  v10 = v0[30];
  v11 = v0[27];
  v13 = v0[23];
  v12 = v0[24];
  v14 = v0[20];

  v15 = v0[1];

  return v15();
}

uint64_t sub_6F8F8()
{
  v1 = v0[49];
  v2 = v0[40];
  (*(v0[32] + 8))(v0[33], v0[31]);
  sub_2738(v0 + 2);
  v3 = sub_106D10();
  v4 = sub_106FB0();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_0, v3, v4, "Failed to produce Incomplete response.", v5, 2u);
  }

  v6 = v0[15];

  sub_104F00();

  v8 = v0[38];
  v7 = v0[39];
  v10 = v0[34];
  v9 = v0[35];
  v11 = v0[33];
  v12 = v0[30];
  v13 = v0[27];
  v15 = v0[23];
  v14 = v0[24];
  v16 = v0[20];

  v17 = v0[1];

  return v17();
}

uint64_t sub_6FA80()
{
  v1 = v0[51];
  v2 = v0[40];
  (*(v0[32] + 8))(v0[33], v0[31]);
  sub_2738(v0 + 2);
  v3 = sub_106D10();
  v4 = sub_106FB0();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_0, v3, v4, "Failed to produce Incomplete response.", v5, 2u);
  }

  v6 = v0[15];

  sub_104F00();

  v8 = v0[38];
  v7 = v0[39];
  v10 = v0[34];
  v9 = v0[35];
  v11 = v0[33];
  v12 = v0[30];
  v13 = v0[27];
  v15 = v0[23];
  v14 = v0[24];
  v16 = v0[20];

  v17 = v0[1];

  return v17();
}

uint64_t sub_6FC08(uint64_t a1, uint64_t a2)
{
  v23 = a1;
  v22 = sub_25E4(&qword_138A48, &qword_109638);
  v3 = *(v22 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v22);
  v6 = &v21 - v5;
  v7 = sub_106D00();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_106A50();
  v12 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v13 = sub_106E10();
  v14 = [v12 initWithIdentifier:0 displayString:v13];

  sub_106FF0();
  v15 = *(a2 + 40);
  sub_106CF0();
  sub_106CE0();
  (*(v8 + 8))(v11, v7);
  sub_262C(a2 + 48, v24);
  v21 = v24[4];
  sub_1A8E0(v24, v24[3]);
  v16 = v22;
  (*(v3 + 16))(v6, v23, v22);
  v17 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = a2;
  (*(v3 + 32))(v18 + v17, v6, v16);
  v19 = v14;

  sub_106B60();

  return sub_2738(v24);
}

uint64_t sub_6FEC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v25 = a3;
  v5 = sub_25E4(&qword_1381C8, &qword_109640);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  v8 = (&v25 - v7);
  v9 = sub_106D00();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_106FE0();
  v14 = *(a2 + 40);
  sub_106CF0();
  sub_106CE0();
  (*(v10 + 8))(v13, v9);
  sub_14994(a1, v8, &qword_1381C8, &qword_109640);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    if (qword_136D00 != -1)
    {
      swift_once();
    }

    v15 = sub_106D20();
    sub_135C4(v15, qword_138830);
    v16 = sub_106D10();
    v17 = sub_106FC0();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_0, v16, v17, "No alarms are available...", v18, 2u);
    }

    v26 = _swiftEmptyArrayStorage;
    sub_25E4(&qword_138A48, &qword_109638);
    sub_106F60();
    return sub_16F70(v8, &qword_1381C8, &qword_109640);
  }

  else
  {
    v20 = *v8;
    if (qword_136D00 != -1)
    {
      swift_once();
    }

    v21 = sub_106D20();
    sub_135C4(v21, qword_138830);
    v22 = sub_106D10();
    v23 = sub_106FC0();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_0, v22, v23, "found all alarms.", v24, 2u);
    }

    v26 = v20;
    sub_25E4(&qword_138A48, &qword_109638);
    return sub_106F60();
  }
}

uint64_t sub_70244(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v19 = a1;
  v20 = a3;
  v4 = sub_25E4(&qword_138A48, &qword_109638);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v18 - v7;
  v9 = sub_106D00();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_106FF0();
  v14 = *(a2 + 40);
  sub_106CF0();
  sub_106CE0();
  (*(v10 + 8))(v13, v9);
  sub_262C(a2 + 48, v21);
  sub_1A8E0(v21, v21[3]);
  (*(v5 + 16))(v8, v19, v4);
  v15 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = a2;
  (*(v5 + 32))(v16 + v15, v8, v4);

  sub_106B50();

  return sub_2738(v21);
}

uint64_t sub_704A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v19 = a1;
  v20 = a3;
  v4 = sub_25E4(&qword_138A48, &qword_109638);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v18 - v7;
  v9 = sub_106D00();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_106FF0();
  v14 = *(a2 + 40);
  sub_106CF0();
  sub_106CE0();
  (*(v10 + 8))(v13, v9);
  sub_262C(a2 + 48, v21);
  sub_1A8E0(v21, v21[3]);
  (*(v5 + 16))(v8, v19, v4);
  v15 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = a2;
  (*(v5 + 32))(v16 + v15, v8, v4);

  sub_106B70();

  return sub_2738(v21);
}

uint64_t sub_7070C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, const char *a6, const char *a7)
{
  v40 = a6;
  v41 = a7;
  v43 = a5;
  v44 = a1;
  v45 = a3;
  v8 = sub_106990();
  v42 = *(v8 - 8);
  v9 = *(v42 + 64);
  __chkstk_darwin(v8);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_25E4(&qword_1381C8, &qword_109640);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12);
  v15 = (&v39 - v14);
  v16 = sub_106D00();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v20 = &v39 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_106FE0();
  v21 = *(a2 + 40);
  sub_106CF0();
  sub_106CE0();
  (*(v17 + 8))(v20, v16);
  sub_14994(v44, v15, &qword_1381C8, &qword_109640);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v22 = v42;
    (*(v42 + 32))(v11, v15, v8);
    v23 = v8;
    if (qword_136D00 != -1)
    {
      swift_once();
    }

    v24 = sub_106D20();
    sub_135C4(v24, qword_138830);
    v25 = sub_106D10();
    v26 = sub_106FC0();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_0, v25, v26, v41, v27, 2u);
    }

    v46[0] = _swiftEmptyArrayStorage;
    sub_25E4(&qword_138A48, &qword_109638);
    sub_106F60();
    v28 = sub_106750();
    v46[3] = v28;
    v46[4] = &protocol witness table for ABCReport;
    v29 = sub_1A924(v46);
    sub_73FEC(&qword_1381C0, &type metadata accessor for AlarmOperationError);
    swift_allocError();
    (*(v22 + 16))(v30, v11, v23);
    *v29 = sub_1045F0();
    v31 = enum case for ErrorSubType.managerReturnedError(_:);
    v32 = sub_106460();
    (*(*(v32 - 8) + 104))(v29, v31, v32);
    (*(*(v28 - 8) + 104))(v29, enum case for ABCReport.alarmUndoHandle(_:), v28);
    sub_1064D0();
    (*(v22 + 8))(v11, v23);
    sub_2738(v46);
  }

  else
  {
    v34 = *v15;
    if (qword_136D00 != -1)
    {
      swift_once();
    }

    v35 = sub_106D20();
    sub_135C4(v35, qword_138830);
    v36 = sub_106D10();
    v37 = sub_106FC0();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&dword_0, v36, v37, v40, v38, 2u);
    }

    v46[0] = v34;
    sub_25E4(&qword_138A48, &qword_109638);
    return sub_106F60();
  }
}

uint64_t sub_70C60(uint64_t a1, uint64_t a2)
{
  v17 = a1;
  v3 = sub_25E4(&qword_138A30, &qword_109620);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v18[-1] - v6;
  v8 = sub_106D00();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v18[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_106FF0();
  v13 = *(a2 + 40);
  sub_106CF0();
  sub_106CE0();
  (*(v9 + 8))(v12, v8);
  sub_262C(a2 + 48, v18);
  sub_1A8E0(v18, v18[3]);
  (*(v4 + 16))(v7, v17, v3);
  v14 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = a2;
  (*(v4 + 32))(v15 + v14, v7, v3);

  sub_106B00();

  return sub_2738(v18);
}

uint64_t sub_70EC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v31 = a1;
  v32 = a3;
  v4 = sub_25E4(&qword_138A30, &qword_109620);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v29 = &v28 - v7;
  v8 = sub_25E4(&qword_138A38, &qword_109628);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = &v28 - v10;
  v12 = sub_106D00();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_106FE0();
  v30 = a2;
  v17 = *(a2 + 40);
  sub_106CF0();
  sub_106CE0();
  v18 = *(v13 + 8);
  v18(v16, v12);
  sub_14994(v31, v11, &qword_138A38, &qword_109628);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    if (qword_136D00 != -1)
    {
      swift_once();
    }

    v19 = sub_106D20();
    sub_135C4(v19, qword_138830);
    v20 = sub_106D10();
    v21 = sub_106FB0();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_0, v20, v21, "Failed to enable sleep alarm.", v22, 2u);
    }

    v33[0] = 0;
    sub_106F60();
    return sub_16F70(v11, &qword_138A38, &qword_109628);
  }

  else
  {
    sub_106FF0();
    sub_106CF0();
    sub_106CE0();
    v18(v16, v12);
    v24 = v30;
    sub_262C(v30 + 48, v33);
    sub_1A8E0(v33, v33[3]);
    v25 = v29;
    (*(v5 + 16))(v29, v32, v4);
    v26 = (*(v5 + 80) + 24) & ~*(v5 + 80);
    v27 = swift_allocObject();
    *(v27 + 16) = v24;
    (*(v5 + 32))(v27 + v26, v25, v4);

    sub_106B20();

    return sub_2738(v33);
  }
}

uint64_t sub_712EC(uint64_t a1, uint64_t a2)
{
  v4 = sub_25E4(&qword_138A40, &qword_109630);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v7 = (&v19 - v6);
  v8 = sub_106D00();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_106FE0();
  v13 = *(a2 + 40);
  sub_106CF0();
  sub_106CE0();
  (*(v9 + 8))(v12, v8);
  sub_14994(a1, v7, &qword_138A40, &qword_109630);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    if (qword_136D00 != -1)
    {
      swift_once();
    }

    v14 = sub_106D20();
    sub_135C4(v14, qword_138830);
    v15 = sub_106D10();
    v16 = sub_106FB0();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_0, v15, v16, "Failed to retrieve new sleep alarm after enabling.", v17, 2u);
    }

    v20 = 0;
    sub_25E4(&qword_138A30, &qword_109620);
    sub_106F60();
    return sub_16F70(v7, &qword_138A40, &qword_109630);
  }

  else
  {
    v20 = *v7;
    sub_25E4(&qword_138A30, &qword_109620);
    return sub_106F60();
  }
}

uint64_t sub_715B4(uint64_t a1, uint64_t a2)
{
  v17 = a1;
  v3 = sub_25E4(&qword_138A30, &qword_109620);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v18[-1] - v6;
  v8 = sub_106D00();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v18[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_106FF0();
  v13 = *(a2 + 40);
  sub_106CF0();
  sub_106CE0();
  (*(v9 + 8))(v12, v8);
  sub_262C(a2 + 48, v18);
  sub_1A8E0(v18, v18[3]);
  (*(v4 + 16))(v7, v17, v3);
  v14 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = a2;
  (*(v4 + 32))(v15 + v14, v7, v3);

  sub_106B10();

  return sub_2738(v18);
}

uint64_t sub_71814(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v31 = a1;
  v32 = a3;
  v4 = sub_25E4(&qword_138A30, &qword_109620);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v29 = &v28 - v7;
  v8 = sub_25E4(&qword_138A38, &qword_109628);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = &v28 - v10;
  v12 = sub_106D00();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_106FE0();
  v30 = a2;
  v17 = *(a2 + 40);
  sub_106CF0();
  sub_106CE0();
  v18 = *(v13 + 8);
  v18(v16, v12);
  sub_14994(v31, v11, &qword_138A38, &qword_109628);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    if (qword_136D00 != -1)
    {
      swift_once();
    }

    v19 = sub_106D20();
    sub_135C4(v19, qword_138830);
    v20 = sub_106D10();
    v21 = sub_106FB0();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_0, v20, v21, "Failed to disable sleep alarm.", v22, 2u);
    }

    v33[0] = 0;
    sub_106F60();
    return sub_16F70(v11, &qword_138A38, &qword_109628);
  }

  else
  {
    sub_106FF0();
    sub_106CF0();
    sub_106CE0();
    v18(v16, v12);
    v24 = v30;
    sub_262C(v30 + 48, v33);
    sub_1A8E0(v33, v33[3]);
    v25 = v29;
    (*(v5 + 16))(v29, v32, v4);
    v26 = (*(v5 + 80) + 24) & ~*(v5 + 80);
    v27 = swift_allocObject();
    *(v27 + 16) = v24;
    (*(v5 + 32))(v27 + v26, v25, v4);

    sub_106B20();

    return sub_2738(v33);
  }
}

uint64_t sub_71C40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v33 = a3;
  v5 = sub_25E4(&qword_138A40, &qword_109630);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  v8 = (&v33 - v7);
  v9 = sub_106D00();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_106FE0();
  v14 = *(a2 + 40);
  sub_106CF0();
  sub_106CE0();
  (*(v10 + 8))(v13, v9);
  sub_14994(a1, v8, &qword_138A40, &qword_109630);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v20 = *v8;
    if (qword_136D00 != -1)
    {
      swift_once();
    }

    v21 = sub_106D20();
    sub_135C4(v21, qword_138830);
    v22 = v20;
    v23 = sub_106D10();
    v24 = sub_106FC0();

    if (!os_log_type_enabled(v23, v24))
    {
      goto LABEL_16;
    }

    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v34 = v26;
    *v25 = 136315138;
    if (v20)
    {
      v27 = [v22 identifier];
      if (v27)
      {
        v28 = v27;
        v29 = sub_106E20();
        v31 = v30;

        v27 = v29;
LABEL_15:
        v32 = sub_722E8(v27, v31, &v34);

        *(v25 + 4) = v32;
        _os_log_impl(&dword_0, v23, v24, "Found next sleep alarm %s", v25, 0xCu);
        sub_2738(v26);

LABEL_16:

        v34 = v20;
        sub_25E4(&qword_138A30, &qword_109620);
        return sub_106F60();
      }
    }

    else
    {
      v27 = 0;
    }

    v31 = 0xE000000000000000;
    goto LABEL_15;
  }

  if (qword_136D00 != -1)
  {
    swift_once();
  }

  v15 = sub_106D20();
  sub_135C4(v15, qword_138830);
  v16 = sub_106D10();
  v17 = sub_106FB0();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_0, v16, v17, "Failed to retrieve new sleep alarm after disabling.", v18, 2u);
  }

  v34 = 0;
  sub_25E4(&qword_138A30, &qword_109620);
  sub_106F60();
  return sub_16F70(v8, &qword_138A40, &qword_109630);
}

uint64_t UndoChangeStatusFlow.deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = *(v0 + 32);

  sub_2738((v0 + 48));
  v4 = OBJC_IVAR____TtC15AlarmFlowPlugin20UndoChangeStatusFlow_operation;
  v5 = sub_106960();
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  v6 = *(v0 + OBJC_IVAR____TtC15AlarmFlowPlugin20UndoChangeStatusFlow_alarmIds);

  sub_16F70(v0 + OBJC_IVAR____TtC15AlarmFlowPlugin20UndoChangeStatusFlow_followupPluginAction, &qword_137FD0, &unk_1087C0);
  sub_16F70(v0 + OBJC_IVAR____TtC15AlarmFlowPlugin20UndoChangeStatusFlow_failureReason, &qword_137FE8, &unk_1087E0);
  return v0;
}

uint64_t UndoChangeStatusFlow.__deallocating_deinit()
{
  UndoChangeStatusFlow.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_721B0()
{
  v2 = *v0;
  type metadata accessor for UndoChangeStatusFlow();
  return sub_104B50();
}

uint64_t sub_72210(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1CA94;

  return UndoChangeStatusFlow.execute()(a1);
}

uint64_t sub_722AC()
{
  type metadata accessor for UndoChangeStatusFlow();

  return sub_104B80();
}

uint64_t sub_722E8(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_723B4(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_135FC(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_2738(v11);
  return v7;
}

unint64_t sub_723B4(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_724C0(a5, a6);
    *a1 = v8;
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
    v11 = a6;
    result = sub_1071E0();
    a6 = v11;
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

char *sub_724C0(uint64_t a1, unint64_t a2)
{
  v4 = sub_7250C(a1, a2);
  sub_7263C(&off_12F4B8);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_7250C(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return &_swiftEmptyArrayStorage;
  }

  v6 = sub_72728(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 32, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_1071E0();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 32, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_106E90();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_72728(v10, 0);
        result = sub_107180();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_7263C(uint64_t result)
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
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_7279C(result, v12, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_72728(uint64_t a1, uint64_t a2)
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

  sub_25E4(&qword_138A58, &qword_109648);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_7279C(char *result, int64_t a2, char a3, char *a4)
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
    sub_25E4(&qword_138A58, &qword_109648);
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
    if (v10 != a4 || v12 >= &v13[v8])
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

uint64_t sub_728A8(uint64_t result)
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
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v16 = v4 + v2;
  }

  else
  {
    v16 = v4;
  }

  v3 = sub_AD7F0(isUniquelyReferenced_nonNull_native, v16, 1, v3);
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v9 = (v3[3] >> 1) - v3[2];
  result = sub_104D80();
  v10 = *(result - 8);
  if (v9 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v12 = *(v10 + 72);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v13 = v3[2];
  v14 = __OFADD__(v13, v2);
  v15 = v13 + v2;
  if (!v14)
  {
    v3[2] = v15;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_729D4(unint64_t a1, void (*a2)(uint64_t, void, unint64_t))
{
  if (a1 >> 62)
  {
    v5 = sub_107270();
  }

  else
  {
    v5 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
  }

  v6 = *v2;
  if (!(*v2 >> 62))
  {
    v7 = *(&dword_10 + (v6 & 0xFFFFFFFFFFFFFF8));
    v8 = __OFADD__(v7, v5);
    result = v7 + v5;
    if (!v8)
    {
      goto LABEL_5;
    }

LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v6 < 0)
  {
    v16 = *v2;
  }

  v17 = sub_107270();
  v8 = __OFADD__(v17, v5);
  result = v17 + v5;
  if (v8)
  {
    goto LABEL_15;
  }

LABEL_5:
  sub_72ACC(result);
  v10 = *v2;
  v11 = *v2 & 0xFFFFFFFFFFFFFF8;
  a2(v11 + 8 * *(&dword_10 + v11) + 32, (*(&dword_18 + v11) >> 1) - *(&dword_10 + v11), a1);
  v13 = v12;

  if (v13 < v5)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v13 < 1)
  {
LABEL_9:
    *v2 = v10;
    return result;
  }

  v14 = *(v11 + 16);
  v8 = __OFADD__(v14, v13);
  v15 = v14 + v13;
  if (!v8)
  {
    *(v11 + 16) = v15;
    goto LABEL_9;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_72ACC(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      v5 = v3 & 0xFFFFFFFFFFFFFF8;
      if (a1 <= *(&dword_18 + (v3 & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }

LABEL_10:
    sub_107270();
    goto LABEL_11;
  }

  if (v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
    goto LABEL_10;
  }

  v5 = v3 & 0xFFFFFFFFFFFFFF8;
LABEL_9:
  v6 = *(v5 + 16);
LABEL_11:
  result = sub_1071D0();
  *v1 = result;
  return result;
}

uint64_t sub_72B6C(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_107270();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8));
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_107270();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_742BC(&qword_138A68, &qword_138A60, qword_109650);
          for (i = 0; i != v6; ++i)
          {
            sub_25E4(&qword_138A60, qword_109650);
            v9 = sub_72F14(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8)) <= a2)
      {
        sub_74270();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_72CFC(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_107270();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8));
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_107270();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_742BC(&qword_138A50, &qword_1387B8, &qword_1094D8);
          for (i = 0; i != v6; ++i)
          {
            sub_25E4(&qword_1387B8, &qword_1094D8);
            v9 = sub_72E8C(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8)) <= a2)
      {
        sub_106AA0();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

void (*sub_72E8C(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = sub_1071C0();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8)) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_72F0C;
  }

  __break(1u);
  return result;
}

uint64_t (*sub_72F14(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = sub_1071C0();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8)) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_74328;
  }

  __break(1u);
  return result;
}

char *sub_72F94(uint64_t a1, char *a2)
{
  v4 = sub_106200();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v15 = sub_106AC0();
  v16 = &protocol witness table for SiriAlarmManagerImpl;
  *&v14 = a1;
  type metadata accessor for ChangeAlarmStatusCATs_Async();
  sub_1061E0();
  *(a2 + 2) = sub_1060D0();
  type metadata accessor for ChangeAlarmStatusCATPatternsExecutor();
  sub_1061E0();
  *(a2 + 3) = sub_1060D0();
  type metadata accessor for ModifyAllCATPatternsExecutor(0);
  sub_1061E0();
  *(a2 + 4) = sub_1060D0();
  *(a2 + 5) = _s15AlarmFlowPlugin010UndoCreateaB0C11osLogObject33_795FD7BF22B6045B20B59C9797DF7ED4LLSo03OS_F4_logCvpfi_0();
  v6 = OBJC_IVAR____TtC15AlarmFlowPlugin20UndoChangeStatusFlow_operation;
  v7 = enum case for AlarmNLv4Constants.AlarmVerb.enable(_:);
  v8 = sub_106960();
  (*(*(v8 - 8) + 104))(&a2[v6], v7, v8);
  *&a2[OBJC_IVAR____TtC15AlarmFlowPlugin20UndoChangeStatusFlow_alarmIds] = _swiftEmptyArrayStorage;
  v9 = OBJC_IVAR____TtC15AlarmFlowPlugin20UndoChangeStatusFlow_followupPluginAction;
  v10 = sub_104E10();
  (*(*(v10 - 8) + 56))(&a2[v9], 1, 1, v10);
  v11 = OBJC_IVAR____TtC15AlarmFlowPlugin20UndoChangeStatusFlow_failureReason;
  v12 = sub_1062D0();
  (*(*(v12 - 8) + 56))(&a2[v11], 1, 1, v12);
  sub_1AD44(&v14, (a2 + 48));
  return a2;
}

char *sub_7319C(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_106200();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v20 = a3;
  v21 = a4;
  v10 = sub_1A924(&v19);
  (*(*(a3 - 8) + 32))(v10, a1, a3);
  type metadata accessor for ChangeAlarmStatusCATs_Async();
  sub_1061E0();
  *(a2 + 2) = sub_1060D0();
  type metadata accessor for ChangeAlarmStatusCATPatternsExecutor();
  sub_1061E0();
  *(a2 + 3) = sub_1060D0();
  type metadata accessor for ModifyAllCATPatternsExecutor(0);
  sub_1061E0();
  *(a2 + 4) = sub_1060D0();
  *(a2 + 5) = _s15AlarmFlowPlugin010UndoCreateaB0C11osLogObject33_795FD7BF22B6045B20B59C9797DF7ED4LLSo03OS_F4_logCvpfi_0();
  v11 = OBJC_IVAR____TtC15AlarmFlowPlugin20UndoChangeStatusFlow_operation;
  v12 = enum case for AlarmNLv4Constants.AlarmVerb.enable(_:);
  v13 = sub_106960();
  (*(*(v13 - 8) + 104))(&a2[v11], v12, v13);
  *&a2[OBJC_IVAR____TtC15AlarmFlowPlugin20UndoChangeStatusFlow_alarmIds] = _swiftEmptyArrayStorage;
  v14 = OBJC_IVAR____TtC15AlarmFlowPlugin20UndoChangeStatusFlow_followupPluginAction;
  v15 = sub_104E10();
  (*(*(v15 - 8) + 56))(&a2[v14], 1, 1, v15);
  v16 = OBJC_IVAR____TtC15AlarmFlowPlugin20UndoChangeStatusFlow_failureReason;
  v17 = sub_1062D0();
  (*(*(v17 - 8) + 56))(&a2[v16], 1, 1, v17);
  sub_1AD44(&v19, (a2 + 48));
  return a2;
}

char *sub_733D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a3 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(a1);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for UndoChangeStatusFlow();
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  v14 = swift_allocObject();
  (*(v7 + 16))(v10, a1, a3);
  return sub_7319C(v10, v14, a3, a4);
}

uint64_t type metadata accessor for UndoChangeStatusFlow()
{
  result = qword_1388A0;
  if (!qword_1388A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_7351C(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_107370() & 1;
  }
}

uint64_t sub_73574(uint64_t a1)
{
  v2 = sub_25E4(&qword_137FF0, &unk_10C0F0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v50 = &v46 - v4;
  v5 = sub_25E4(&qword_137FF8, &qword_1087F0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v49 = &v46 - v7;
  v8 = sub_104DE0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_25E4(&qword_137FE8, &unk_1087E0);
  v14 = *(*(v13 - 8) + 64);
  v15 = __chkstk_darwin(v13 - 8);
  v48 = &v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v18 = &v46 - v17;
  v19 = sub_1062D0();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  __chkstk_darwin(v19);
  v23 = &v46 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = OBJC_IVAR____TtC15AlarmFlowPlugin20UndoChangeStatusFlow_failureReason;
  swift_beginAccess();
  sub_14994(a1 + v24, v18, &qword_137FE8, &unk_1087E0);
  if ((*(v20 + 48))(v18, 1, v19) == 1)
  {
    sub_16F70(v18, &qword_137FE8, &unk_1087E0);
    (*(v9 + 104))(v12, enum case for ActivityType.completed(_:), v8);
    if (qword_136D08 != -1)
    {
      swift_once();
    }

    v25 = sub_1062E0();
    sub_135C4(v25, qword_13B6E0);
    v26 = sub_104C40();
    v27 = v49;
    (*(*(v26 - 8) + 56))(v49, 1, 1, v26);
    if (qword_136D10 != -1)
    {
      swift_once();
    }

    v28 = sub_1062F0();
    v29 = sub_135C4(v28, qword_13B6F8);
    v30 = *(v28 - 8);
    v31 = v50;
    (*(v30 + 16))(v50, v29, v28);
    (*(v30 + 56))(v31, 0, 1, v28);
    v32 = v48;
    (*(v20 + 56))(v48, 1, 1, v19);
    sub_1062C0();
    sub_16F70(v32, &qword_137FE8, &unk_1087E0);
    sub_16F70(v31, &qword_137FF0, &unk_10C0F0);
    sub_16F70(v27, &qword_137FF8, &qword_1087F0);
    return (*(v9 + 8))(v12, v8);
  }

  else
  {
    v34 = v19;
    (*(v20 + 32))(v23, v18, v19);
    v35 = *(v9 + 104);
    v47 = v12;
    v35(v12, enum case for ActivityType.failed(_:), v8);
    v46 = v8;
    v36 = v23;
    if (qword_136D08 != -1)
    {
      swift_once();
    }

    v37 = sub_1062E0();
    sub_135C4(v37, qword_13B6E0);
    v38 = sub_104C40();
    v39 = v49;
    (*(*(v38 - 8) + 56))(v49, 1, 1, v38);
    if (qword_136D10 != -1)
    {
      swift_once();
    }

    v40 = sub_1062F0();
    v41 = sub_135C4(v40, qword_13B6F8);
    v42 = *(v40 - 8);
    v43 = v50;
    (*(v42 + 16))(v50, v41, v40);
    (*(v42 + 56))(v43, 0, 1, v40);
    v44 = v48;
    (*(v20 + 16))(v48, v36, v34);
    (*(v20 + 56))(v44, 0, 1, v34);
    v45 = v47;
    sub_1062C0();
    sub_16F70(v44, &qword_137FE8, &unk_1087E0);
    sub_16F70(v43, &qword_137FF0, &unk_10C0F0);
    sub_16F70(v39, &qword_137FF8, &qword_1087F0);
    (*(v9 + 8))(v45, v46);
    return (*(v20 + 8))(v36, v34);
  }
}

uint64_t sub_73CB4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_73D3C()
{
  v0 = sub_106960();
  if (v1 <= 0x3F)
  {
    v6 = *(v0 - 8) + 64;
    sub_73EB0(319, &qword_138038, &type metadata accessor for PluginAction);
    if (v3 <= 0x3F)
    {
      v7 = *(v2 - 8) + 64;
      sub_73EB0(319, &unk_1388B0, &type metadata accessor for SiriTimeEventSender.ReasonDescription);
      if (v5 <= 0x3F)
      {
        v8 = *(v4 - 8) + 64;
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_73EB0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1070E0();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_73FEC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_740FC(uint64_t *a1, uint64_t *a2)
{
  v3 = sub_25E4(a1, a2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 24) & ~v5;
  v7 = *(v4 + 64);
  v8 = *(v2 + 16);

  (*(v4 + 8))(v2 + v6, v3);

  return _swift_deallocObject(v2, v6 + v7, v5 | 7);
}

uint64_t sub_741E4(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  v6 = *(sub_25E4(a2, a3) - 8);
  v7 = *(v4 + 16);
  v8 = v4 + ((*(v6 + 80) + 24) & ~*(v6 + 80));

  return a4(a1, v7, v8);
}

unint64_t sub_74270()
{
  result = qword_1375B8;
  if (!qword_1375B8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1375B8);
  }

  return result;
}

uint64_t sub_742BC(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_14EB0(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_7436C(uint64_t a1, void (*a2)(void), uint64_t *a3)
{
  v5 = sub_106200();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  a2(0);
  sub_1061E0();
  result = sub_1060D0();
  *a3 = result;
  return result;
}

uint64_t sub_74468()
{
  v1 = sub_25E4(&qword_137598, &unk_107EB0);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v21 - v3;
  sub_25E4(&qword_137880, &unk_108290);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_109670;
  *(v5 + 32) = 0xD000000000000016;
  *(v5 + 40) = 0x800000000010C590;
  sub_14994(v0, v4, &qword_137598, &unk_107EB0);
  v6 = sub_106160();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(v4, 1, v6) == 1)
  {
    sub_16F70(v4, &qword_137598, &unk_107EB0);
    *(v5 + 48) = 0u;
    *(v5 + 64) = 0u;
  }

  else
  {
    *(v5 + 72) = v6;
    v8 = sub_1A924((v5 + 48));
    (*(v7 + 32))(v8, v4, v6);
  }

  *(v5 + 80) = 0x6D72616C61;
  *(v5 + 88) = 0xE500000000000000;
  MultipleParameters = type metadata accessor for CreateAlarmCreateMultipleParameters(0);
  v10 = *(v0 + MultipleParameters[5]);
  if (v10)
  {
    v11 = type metadata accessor for AlarmAlarm(0);
    v12 = v10;
  }

  else
  {
    v12 = 0;
    v11 = 0;
    *(v5 + 104) = 0;
    *(v5 + 112) = 0;
  }

  *(v5 + 96) = v12;
  *(v5 + 120) = v11;
  *(v5 + 128) = 7368801;
  *(v5 + 136) = 0xE300000000000000;
  v13 = *(v0 + MultipleParameters[6]);
  if (v13)
  {
    v14 = sub_106100();
    v15 = v13;
  }

  else
  {
    v15 = 0;
    v14 = 0;
    *(v5 + 152) = 0;
    *(v5 + 160) = 0;
  }

  *(v5 + 144) = v15;
  *(v5 + 168) = v14;
  *(v5 + 176) = 0xD000000000000015;
  *(v5 + 184) = 0x800000000010D380;
  *(v5 + 192) = *(v0 + MultipleParameters[7]);
  *(v5 + 216) = &type metadata for Bool;
  *(v5 + 224) = 0xD000000000000014;
  *(v5 + 232) = 0x800000000010D3A0;
  *(v5 + 240) = *(v0 + MultipleParameters[8]);
  *(v5 + 264) = &type metadata for Bool;
  strcpy((v5 + 272), "hideSleepAlarm");
  *(v5 + 287) = -18;
  *(v5 + 288) = *(v0 + MultipleParameters[9]);
  *(v5 + 312) = &type metadata for Bool;
  *(v5 + 320) = 0xD000000000000014;
  *(v5 + 328) = 0x800000000010CA10;
  *(v5 + 336) = *(v0 + MultipleParameters[10]);
  *(v5 + 360) = &type metadata for Bool;
  *(v5 + 368) = 0x736D657469;
  *(v5 + 376) = 0xE500000000000000;
  v16 = *(v0 + MultipleParameters[11]);
  v17 = sub_25E4(&qword_137B40, &unk_108390);
  *(v5 + 384) = v16;
  *(v5 + 408) = v17;
  *(v5 + 416) = 0xD000000000000017;
  *(v5 + 424) = 0x800000000010D3C0;
  *(v5 + 432) = *(v0 + MultipleParameters[12]);
  *(v5 + 456) = &type metadata for Bool;
  *(v5 + 464) = 0x616C417065656C73;
  *(v5 + 472) = 0xEA00000000006D72;
  v18 = *(v0 + MultipleParameters[13]);
  if (v18)
  {
    v19 = type metadata accessor for AlarmAlarm(0);
  }

  else
  {
    v19 = 0;
    *(v5 + 488) = 0;
    *(v5 + 496) = 0;
  }

  *(v5 + 480) = v18;
  *(v5 + 504) = v19;

  return v5;
}

uint64_t sub_74804(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_25E4(&qword_137880, &unk_108290);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_109680;
  *(v8 + 32) = 0x6D72616C61;
  *(v8 + 40) = 0xE500000000000000;
  if (a1)
  {
    v9 = type metadata accessor for AlarmAlarm(0);
    v10 = a1;
  }

  else
  {
    v10 = 0;
    v9 = 0;
    *(v8 + 56) = 0;
    *(v8 + 64) = 0;
  }

  *(v8 + 48) = v10;
  *(v8 + 72) = v9;
  *(v8 + 80) = 7368801;
  *(v8 + 88) = 0xE300000000000000;
  if (a2)
  {
    v11 = sub_106100();
    v12 = a2;
  }

  else
  {
    v12 = 0;
    v11 = 0;
    *(v8 + 104) = 0;
    *(v8 + 112) = 0;
  }

  *(v8 + 96) = v12;
  *(v8 + 120) = v11;
  *(v8 + 128) = 0xD000000000000015;
  *(v8 + 136) = 0x800000000010D380;
  *(v8 + 144) = a3 & 1;
  *(v8 + 168) = &type metadata for Bool;
  *(v8 + 176) = 0xD000000000000014;
  *(v8 + 184) = 0x800000000010D3A0;
  *(v8 + 192) = BYTE1(a3) & 1;
  *(v8 + 216) = &type metadata for Bool;
  *(v8 + 224) = 0xD000000000000014;
  *(v8 + 232) = 0x800000000010CA10;
  *(v8 + 240) = BYTE2(a3) & 1;
  *(v8 + 264) = &type metadata for Bool;
  *(v8 + 272) = 0xD000000000000017;
  *(v8 + 280) = 0x800000000010D3C0;
  *(v8 + 288) = HIBYTE(a3) & 1;
  *(v8 + 312) = &type metadata for Bool;
  *(v8 + 320) = 0x616C417065656C73;
  *(v8 + 328) = 0xEA00000000006D72;
  if (a4)
  {
    v13 = type metadata accessor for AlarmAlarm(0);
    v14 = a4;
  }

  else
  {
    v14 = 0;
    v13 = 0;
    *(v8 + 344) = 0;
    *(v8 + 352) = 0;
  }

  *(v8 + 336) = v14;
  *(v8 + 360) = v13;

  return v8;
}

uint64_t sub_749DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_25E4(&qword_137880, &unk_108290);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_109690;
  *(v6 + 32) = 0x6D72616C61;
  *(v6 + 40) = 0xE500000000000000;
  if (a1)
  {
    v7 = type metadata accessor for AlarmAlarm(0);
    v8 = a1;
  }

  else
  {
    v8 = 0;
    v7 = 0;
    *(v6 + 56) = 0;
    *(v6 + 64) = 0;
  }

  *(v6 + 48) = v8;
  *(v6 + 72) = v7;
  *(v6 + 80) = 7368801;
  *(v6 + 88) = 0xE300000000000000;
  if (a2)
  {
    v9 = sub_106100();
    v10 = a2;
  }

  else
  {
    v10 = 0;
    v9 = 0;
    *(v6 + 104) = 0;
    *(v6 + 112) = 0;
  }

  *(v6 + 96) = v10;
  *(v6 + 120) = v9;
  *(v6 + 128) = 0x616C417065656C73;
  *(v6 + 136) = 0xEA00000000006D72;
  if (a3)
  {
    v11 = type metadata accessor for AlarmAlarm(0);
    v12 = a3;
  }

  else
  {
    v12 = 0;
    v11 = 0;
    *(v6 + 152) = 0;
    *(v6 + 160) = 0;
  }

  *(v6 + 144) = v12;
  *(v6 + 168) = v11;

  return v6;
}

uint64_t sub_74B10(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = *(*(sub_25E4(&qword_137598, &unk_107EB0) - 8) + 64) + 15;
  v3[5] = swift_task_alloc();
  v5 = *(*(type metadata accessor for CreateAlarmPromptForTimeParameters(0) - 8) + 64) + 15;
  v3[6] = swift_task_alloc();

  return _swift_task_switch(sub_74BDC, 0, 0);
}

uint64_t sub_74BDC()
{
  v1 = v0[5];
  v2 = v0[6];
  v4 = v0[2];
  v3 = v0[3];
  v5 = sub_106160();
  v6 = *(v5 - 8);
  (*(v6 + 56))(v2, 1, 1, v5);
  v4(v2);
  sub_25E4(&qword_137880, &unk_108290);
  v7 = swift_allocObject();
  v0[7] = v7;
  *(v7 + 16) = xmmword_107FC0;
  *(v7 + 32) = 0x6C6562616CLL;
  *(v7 + 40) = 0xE500000000000000;
  sub_14994(v2, v1, &qword_137598, &unk_107EB0);
  v8 = (*(v6 + 48))(v1, 1, v5);
  v9 = v0[5];
  if (v8 == 1)
  {
    sub_16F70(v0[5], &qword_137598, &unk_107EB0);
    *(v7 + 48) = 0u;
    *(v7 + 64) = 0u;
  }

  else
  {
    *(v7 + 72) = v5;
    v10 = sub_1A924((v7 + 48));
    (*(v6 + 32))(v10, v9, v5);
  }

  v11 = *(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + 1);
  v15 = (&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
  v12 = swift_task_alloc();
  v0[8] = v12;
  *v12 = v0;
  v12[1] = sub_74DF4;
  v13 = v0[4];

  return v15(0xD000000000000019, 0x800000000010D360, v7);
}

uint64_t sub_74DF4(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 64);
  v6 = *(*v2 + 56);
  v7 = *v2;
  *(*v2 + 72) = v1;

  if (v1)
  {
    v8 = sub_74FD0;
  }

  else
  {
    *(v4 + 80) = a1;
    v8 = sub_74F40;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_74F40()
{
  v1 = v0[5];
  sub_757A4(v0[6], type metadata accessor for CreateAlarmPromptForTimeParameters);

  v2 = v0[1];
  v3 = v0[10];

  return v2(v3);
}

uint64_t sub_74FD0()
{
  v1 = v0[5];
  sub_757A4(v0[6], type metadata accessor for CreateAlarmPromptForTimeParameters);

  v2 = v0[1];
  v3 = v0[9];

  return v2();
}

uint64_t sub_7505C(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = *(*(sub_25E4(&qword_137598, &unk_107EB0) - 8) + 64) + 15;
  v3[5] = swift_task_alloc();
  v5 = *(*(type metadata accessor for CreateAlarmSleepUnsupportedParameters(0) - 8) + 64) + 15;
  v3[6] = swift_task_alloc();

  return _swift_task_switch(sub_75128, 0, 0);
}

uint64_t sub_75128()
{
  v1 = v0[5];
  v2 = v0[6];
  v4 = v0[2];
  v3 = v0[3];
  v5 = sub_106160();
  v6 = *(v5 - 8);
  (*(v6 + 56))(v2, 1, 1, v5);
  v4(v2);
  sub_25E4(&qword_137880, &unk_108290);
  v7 = swift_allocObject();
  v0[7] = v7;
  *(v7 + 16) = xmmword_107FC0;
  *(v7 + 32) = 0xD000000000000014;
  *(v7 + 40) = 0x800000000010D320;
  sub_14994(v2, v1, &qword_137598, &unk_107EB0);
  v8 = (*(v6 + 48))(v1, 1, v5);
  v9 = v0[5];
  if (v8 == 1)
  {
    sub_16F70(v0[5], &qword_137598, &unk_107EB0);
    *(v7 + 48) = 0u;
    *(v7 + 64) = 0u;
  }

  else
  {
    *(v7 + 72) = v5;
    v10 = sub_1A924((v7 + 48));
    (*(v6 + 32))(v10, v9, v5);
  }

  v11 = *(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + 1);
  v15 = (&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
  v12 = swift_task_alloc();
  v0[8] = v12;
  *v12 = v0;
  v12[1] = sub_7534C;
  v13 = v0[4];

  return v15(0xD00000000000001CLL, 0x800000000010D340, v7);
}

uint64_t sub_7534C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 64);
  v6 = *(*v2 + 56);
  v7 = *v2;
  *(*v2 + 72) = v1;

  if (v1)
  {
    v8 = sub_75528;
  }

  else
  {
    *(v4 + 80) = a1;
    v8 = sub_75498;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_75498()
{
  v1 = v0[5];
  sub_757A4(v0[6], type metadata accessor for CreateAlarmSleepUnsupportedParameters);

  v2 = v0[1];
  v3 = v0[10];

  return v2(v3);
}

uint64_t sub_75528()
{
  v1 = v0[5];
  sub_757A4(v0[6], type metadata accessor for CreateAlarmSleepUnsupportedParameters);

  v2 = v0[1];
  v3 = v0[9];

  return v2();
}

uint64_t sub_755B4(uint64_t a1, uint64_t a2)
{
  v5 = sub_106200();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_25E4(&unk_137430, &qword_107DC0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v18 - v12;
  v14 = *(v2 + 48);
  v15 = *(v2 + 52);
  swift_allocObject();
  sub_14994(a1, v13, &unk_137430, &qword_107DC0);
  (*(v6 + 16))(v9, a2, v5);
  v16 = sub_1060B0();
  (*(v6 + 8))(a2, v5);
  sub_16F70(a1, &unk_137430, &qword_107DC0);
  return v16;
}

uint64_t sub_757A4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_75838(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_25E4(&qword_137598, &unk_107EB0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 44));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_75914(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_25E4(&qword_137598, &unk_107EB0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 44)) = (a2 - 1);
  }

  return result;
}

void sub_759D8()
{
  sub_75B74(319, &qword_1378F8, &type metadata accessor for SpeakableString, &type metadata accessor for Optional);
  if (v0 <= 0x3F)
  {
    sub_75B74(319, &unk_137A20, type metadata accessor for AlarmAlarm, &type metadata accessor for Optional);
    if (v1 <= 0x3F)
    {
      sub_75B74(319, &qword_137A10, &type metadata accessor for SirikitApp, &type metadata accessor for Optional);
      if (v2 <= 0x3F)
      {
        sub_75B74(319, &qword_137A18, type metadata accessor for AlarmAlarm, &type metadata accessor for Array);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_75B74(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_75C20(uint64_t a1, uint64_t a2)
{
  v4 = sub_25E4(&qword_137598, &unk_107EB0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_75CAC(uint64_t a1, uint64_t a2)
{
  v4 = sub_25E4(&qword_137598, &unk_107EB0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

void sub_75D28()
{
  sub_75B74(319, &qword_1378F8, &type metadata accessor for SpeakableString, &type metadata accessor for Optional);
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void *sub_75DD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v106 = a3;
  v109 = sub_106410();
  v105 = *(v109 - 1);
  v7 = *(v105 + 64);
  __chkstk_darwin(v109);
  v9 = v98 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_25E4(&qword_137598, &unk_107EB0);
  v11 = *(*(v10 - 8) + 64);
  v12 = __chkstk_darwin(v10 - 8);
  v14 = v98 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v12);
  v17 = v98 - v16;
  v18 = __chkstk_darwin(v15);
  v107 = v98 - v19;
  v20 = __chkstk_darwin(v18);
  v108 = v98 - v21;
  v22 = __chkstk_darwin(v20);
  v24 = v98 - v23;
  v25 = __chkstk_darwin(v22);
  v27 = v98 - v26;
  __chkstk_darwin(v25);
  v29 = v98 - v28;
  v112 = sub_78C9C();
  if (!v112)
  {
    return 0;
  }

  v30 = [v3 sleepAlarmAttribute];
  v31 = v30;
  if (v30)
  {
  }

  v100 = v31;
  v102 = a2;
  v103 = v17;
  v104 = v14;
  if (a1)
  {
    v32 = a1;
  }

  else
  {
    v34 = type metadata accessor for AlarmAlarm.Builder(0);
    v35 = *(v34 + 48);
    v36 = *(v34 + 52);
    swift_allocObject();
    v32 = sub_7F454();
  }

  v98[1] = sub_ED47C(v4);
  v101 = v37;
  v98[0] = v38;
  v99 = v39;
  v40 = v4;
  v41 = OBJC_IVAR____TtCC15AlarmFlowPlugin10AlarmAlarm7Builder_action;
  swift_beginAccess();
  sub_14994(v32 + v41, v29, &qword_137598, &unk_107EB0);

  v42 = sub_106160();
  v113 = *(v42 - 8);
  v43 = *(v113 + 48);
  v110 = v42;
  v44 = v43(v29, 1);
  sub_16F70(v29, &qword_137598, &unk_107EB0);
  v111 = v40;
  if (v44 == 1)
  {
    v45 = [v40 sleepAlarmAttribute];
    if (v45)
    {

      v46 = &enum case for PunchOutApp.sleepAlarm(_:);
    }

    else
    {
      v46 = &enum case for PunchOutApp.alarm(_:);
    }

    v47 = v105;
    v48 = v109;
    (*(v105 + 104))(v9, *v46, v109);
    sub_1063F0();
    (*(v47 + 8))(v9, v48);
    swift_beginAccess();
    sub_7C2E0(v27, v32 + v41);
    swift_endAccess();
    sub_16F70(v27, &qword_137598, &unk_107EB0);
    v40 = v111;
  }

  v49 = [v40 label];
  if (v49)
  {
    v50 = v49;
    sub_106E20();

    sub_106E50();

    v51 = 0;
  }

  else
  {
    v51 = 1;
  }

  v52 = v113 + 56;
  v109 = *(v113 + 56);
  (v109)(v24, v51, 1, v110);
  v53 = OBJC_IVAR____TtCC15AlarmFlowPlugin10AlarmAlarm7Builder_label;
  swift_beginAccess();
  sub_7C2E0(v24, v32 + v53);
  swift_endAccess();
  sub_16F70(v24, &qword_137598, &unk_107EB0);
  v54 = *(v32 + OBJC_IVAR____TtCC15AlarmFlowPlugin10AlarmAlarm7Builder_time);
  *(v32 + OBJC_IVAR____TtCC15AlarmFlowPlugin10AlarmAlarm7Builder_time) = v112;

  v55 = [v40 enabled];
  v113 = v52;
  if (v55)
  {

    v56 = [v40 enabled];
    sub_1F7B8();
    v57.super.super.isa = sub_107090(1).super.super.isa;
    if (v56)
    {
      v58 = sub_1070A0();

      v57.super.super.isa = v56;
    }

    else
    {
      v58 = 0;
    }
  }

  else
  {
    v58 = 0;
  }

  *(v32 + OBJC_IVAR____TtCC15AlarmFlowPlugin10AlarmAlarm7Builder_enabled) = v58 & 1;
  v59 = sub_EA7B0(v40, 1);
  v60 = objc_opt_self();
  sub_106560();
  sub_106550();
  sub_106540();

  sub_1A8E0(v114, v115);
  v61 = sub_104CE0();
  v62 = [v60 runSiriKitExecutorCommandWithContext:v61 payload:v59];

  sub_2738(v114);
  v63 = v108;
  sub_7901C(v108);

  v64 = OBJC_IVAR____TtCC15AlarmFlowPlugin10AlarmAlarm7Builder_enableAction;
  swift_beginAccess();
  sub_7C2E0(v63, v32 + v64);
  swift_endAccess();
  sub_16F70(v63, &qword_137598, &unk_107EB0);
  v65 = sub_EA7BC(v111, 1);
  sub_106550();
  sub_106540();

  sub_1A8E0(v114, v115);
  v66 = v63;
  v67 = sub_104CE0();
  v68 = v111;
  v69 = [v60 runSiriKitExecutorCommandWithContext:v67 payload:v65];

  sub_2738(v114);
  sub_7901C(v63);

  v70 = OBJC_IVAR____TtCC15AlarmFlowPlugin10AlarmAlarm7Builder_disableAction;
  swift_beginAccess();
  sub_7C2E0(v63, v32 + v70);
  swift_endAccess();
  sub_16F70(v63, &qword_137598, &unk_107EB0);
  v71 = [v68 repeatSchedule];
  if (v71)
  {
    v72 = v71;
    sub_1069A0();
    sub_106EE0();
  }

  v73 = v101;
  v74 = v100 != 0;
  v75 = sub_1070D0();

  *(v32 + OBJC_IVAR____TtCC15AlarmFlowPlugin10AlarmAlarm7Builder_isRecurrent) = v75 & 1;
  *(v32 + OBJC_IVAR____TtCC15AlarmFlowPlugin10AlarmAlarm7Builder_isSleepAlarm) = v74;
  v76 = sub_79628();
  v77 = *(v32 + OBJC_IVAR____TtCC15AlarmFlowPlugin10AlarmAlarm7Builder_days);
  *(v32 + OBJC_IVAR____TtCC15AlarmFlowPlugin10AlarmAlarm7Builder_days) = v76;

  sub_79DB4(v106, v63);
  v78 = OBJC_IVAR____TtCC15AlarmFlowPlugin10AlarmAlarm7Builder_labelForSnippetWithRecurrence;
  swift_beginAccess();
  sub_7C2E0(v63, v32 + v78);
  swift_endAccess();
  sub_16F70(v63, &qword_137598, &unk_107EB0);
  *(v32 + OBJC_IVAR____TtCC15AlarmFlowPlugin10AlarmAlarm7Builder_isSetWitchingHoursForToday) = sub_D17AC(v102) & 1;
  sub_EE12C(v68);
  v79 = v110;
  if (v80)
  {
    v81 = v107;
    sub_106E50();

    v82 = 0;
  }

  else
  {
    v82 = 1;
    v81 = v107;
  }

  v83 = v109;
  (v109)(v81, v82, 1, v79);
  v84 = OBJC_IVAR____TtCC15AlarmFlowPlugin10AlarmAlarm7Builder_formattedTimeString;
  swift_beginAccess();
  sub_7C2E0(v81, v32 + v84);
  swift_endAccess();
  sub_16F70(v81, &qword_137598, &unk_107EB0);
  if (!v73)
  {
    v88 = v103;
    v83(v103, 1, 1, v79);
    v89 = OBJC_IVAR____TtCC15AlarmFlowPlugin10AlarmAlarm7Builder_timeOnlyString;
    swift_beginAccess();
    sub_7C2E0(v88, v32 + v89);
    swift_endAccess();
    sub_16F70(v88, &qword_137598, &unk_107EB0);
LABEL_32:
    v87 = v104;
    v83(v104, 1, 1, v79);
    goto LABEL_33;
  }

  v85 = v103;
  sub_106E50();

  v83(v85, 0, 1, v79);
  v86 = OBJC_IVAR____TtCC15AlarmFlowPlugin10AlarmAlarm7Builder_timeOnlyString;
  swift_beginAccess();
  sub_7C2E0(v85, v32 + v86);
  swift_endAccess();
  sub_16F70(v85, &qword_137598, &unk_107EB0);

  if (!v99)
  {
    v83 = v109;
    goto LABEL_32;
  }

  v87 = v104;
  sub_106E50();

  v83 = v109;
  (v109)(v87, 0, 1, v79);
LABEL_33:
  v90 = OBJC_IVAR____TtCC15AlarmFlowPlugin10AlarmAlarm7Builder_meridian;
  swift_beginAccess();
  sub_7C2E0(v87, v32 + v90);
  swift_endAccess();
  sub_16F70(v87, &qword_137598, &unk_107EB0);
  v91 = [v68 identifier];
  if (v91)
  {
    v92 = v91;
    sub_106E20();
  }

  sub_106A30();

  sub_106140();
  v83(v66, 0, 1, v79);
  v93 = OBJC_IVAR____TtCC15AlarmFlowPlugin10AlarmAlarm7Builder_alarmIDString;
  swift_beginAccess();
  sub_1A814(v66, v32 + v93);
  swift_endAccess();
  v94 = type metadata accessor for AlarmAlarm(0);
  v95 = *(v94 + 48);
  v96 = *(v94 + 52);
  swift_allocObject();
  v33 = sub_7F738(v32);

  return v33;
}