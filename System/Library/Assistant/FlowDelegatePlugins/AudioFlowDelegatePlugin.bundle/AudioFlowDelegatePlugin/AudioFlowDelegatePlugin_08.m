uint64_t sub_E0BB8(uint64_t a1, char a2, void *a3, uint64_t a4, void *a5, void (*a6)(uint64_t *), uint64_t a7, void *a8)
{
  v78 = a8;
  v85 = a7;
  v86 = a6;
  v83 = a5;
  v84 = a4;
  v81 = a3;
  v82 = a1;
  v76 = sub_20410(&unk_3519A0, &qword_2D0980);
  v9 = *(*(v76 - 8) + 64);
  __chkstk_darwin(v76);
  v77 = &v74 - v10;
  v75 = sub_2CE000();
  v80 = *(v75 - 8);
  v11 = *(v80 + 64);
  __chkstk_darwin(v75);
  v79 = &v74 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_20410(&qword_34CB78, &unk_2D0D80);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v16 = &v74 - v15;
  v17 = sub_20410(&qword_34CB80, &unk_2D0B30);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  v20 = &v74 - v19;
  v21 = sub_20410(&qword_34CB88, &unk_2D0D90);
  v22 = *(*(v21 - 8) + 64);
  __chkstk_darwin(v21 - 8);
  v24 = &v74 - v23;
  v25 = sub_2CCB30();
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  __chkstk_darwin(v25);
  v29 = &v74 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_2CCAC0();
  v31 = *(v30 - 8);
  v32 = *(v31 + 64);
  __chkstk_darwin(v30);
  v34 = &v74 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    (*(v31 + 104))(v34, enum case for AdditionalMetricsDescription.ModuleName.sfmhis(_:), v30);
    (*(v26 + 104))(v29, enum case for AdditionalMetricsDescription.SourceFunction.handled(_:), v25);
    swift_getErrorValue();
    sub_2CEEF0();
    v80 = sub_2CCAE0();
    v79 = v35;

    (*(v26 + 8))(v29, v25);
    (*(v31 + 8))(v34, v30);
    v36 = v81[12];
    sub_35E0(v81 + 8, v81[11]);
    v37 = enum case for ActivityType.failed(_:);
    v38 = sub_2C9C20();
    v39 = *(v38 - 8);
    (*(v39 + 104))(v24, v37, v38);
    (*(v39 + 56))(v24, 0, 1, v38);
    v40 = sub_2CA130();
    (*(*(v40 - 8) + 56))(v20, 1, 1, v40);
    v41 = enum case for SiriKitReliabilityCodes.renderingError(_:);
    v42 = sub_2C98F0();
    v43 = *(v42 - 8);
    (*(v43 + 104))(v16, v41, v42);
    (*(v43 + 56))(v16, 0, 1, v42);
    INUpdateMediaAffinityIntent.firstMediaItemType()();
    sub_2CB4E0();

    sub_30B8(v16, &qword_34CB78, &unk_2D0D80);
    sub_30B8(v20, &qword_34CB80, &unk_2D0B30);
    sub_30B8(v24, &qword_34CB88, &unk_2D0D90);
    v87[0] = v82;
    v88 = 1;
    swift_errorRetain();
    v86(v87);
    return sub_30B8(v87, qword_34C798, &qword_2D0DA0);
  }

  else
  {
    v45 = v81;
    v46 = v81[24];
    v47 = swift_allocObject();
    v48 = v84;
    v47[2] = v45;
    v47[3] = v48;
    v49 = v83;
    v50 = v86;
    v47[4] = v83;
    v47[5] = v50;
    v51 = v85;
    v52 = v78;
    v47[6] = v85;
    v47[7] = v52;
    v53 = v46[20];
    sub_35E0(v46 + 16, v46[19]);
    swift_retain_n();
    swift_retain_n();
    v54 = v49;
    swift_retain_n();
    v55 = v52;
    v56 = v54;
    v83 = v55;
    v57 = v51;
    if (sub_2CC440())
    {
      v58 = v83;
      if (qword_34BF58 != -1)
      {
        swift_once();
      }

      v59 = v45;
      v60 = v75;
      v61 = sub_3ED0(v75, static Logger.default);
      swift_beginAccess();
      (*(v80 + 16))(v79, v61, v60);
      v62 = sub_2CDFE0();
      v63 = sub_2CE670();
      if (os_log_type_enabled(v62, v63))
      {
        v64 = swift_slowAlloc();
        *v64 = 0;
        _os_log_impl(&dword_0, v62, v63, "SearchForMediaDialogProvider#makeIntentHandledDialog AppIntents enabled, returning suppressed CAT", v64, 2u);
      }

      (*(v80 + 8))(v79, v60);
      v65 = *(sub_20410(&qword_34C6E8, &unk_2D0FF0) + 48);
      v66 = v77;
      sub_2CA0C0();
      v67 = [objc_allocWithZone(DialogExecutionResult) init];
      v68 = sub_2CE260();
      [v67 setCatId:v68];

      *(v66 + v65) = v67;
      swift_storeEnumTagMultiPayload();
      sub_E1654(v66, v59, v48, v56, v86, v57, v58);
      sub_30B8(v66, &unk_3519A0, &qword_2D0980);
    }

    else
    {
      sub_20410(&unk_353120, &unk_2D0B50);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_2D0090;
      *(inited + 32) = 0x68637461577369;
      *(inited + 40) = 0xE700000000000000;
      v70 = sub_2CB620();
      *(inited + 72) = &type metadata for Bool;
      *(inited + 48) = v70 & 1;
      v71 = sub_112C0(inited);
      swift_setDeallocating();
      sub_30B8(inited + 32, &qword_34CBA0, &unk_2D0FE0);
      v72 = v46[15];
      v87[3] = sub_334A0(0, &qword_34CB98, INSearchForMediaIntent_ptr);
      v87[4] = &off_3344D0;
      v87[0] = v56;
      v73 = v56;
      sub_1E79A0(v71, v48, v87, sub_E5FB0, v47);

      sub_30B8(v87, &qword_34C6C0, &qword_2D0710);
    }
  }
}

uint64_t sub_E1654(void *a1, void *a2, uint64_t a3, void *a4, void (*a5)(uint64_t *), uint64_t a6, uint64_t a7)
{
  v223 = a7;
  v229 = a5;
  v230 = a6;
  v234 = a4;
  v235 = a2;
  v231 = a1;
  v232 = a3;
  v7 = sub_20410(&unk_3519B0, &qword_2D1230);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v211 = &v207 - v9;
  v222 = sub_2CCB20();
  v221 = *(v222 - 8);
  v10 = *(v221 + 64);
  __chkstk_darwin(v222);
  v220 = &v207 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v218 = sub_2CE000();
  v217 = *(v218 - 8);
  v12 = *(v217 + 64);
  v13 = __chkstk_darwin(v218);
  v210 = &v207 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v214 = &v207 - v16;
  __chkstk_darwin(v15);
  v216 = &v207 - v17;
  v18 = sub_20410(&unk_353020, &unk_2D0970);
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  v228 = &v207 - v20;
  v224 = sub_20410(&qword_34C6E8, &unk_2D0FF0);
  v21 = *(*(v224 - 8) + 64);
  v22 = __chkstk_darwin(v224);
  v215 = &v207 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __chkstk_darwin(v22);
  v219 = &v207 - v25;
  __chkstk_darwin(v24);
  v233 = (&v207 - v26);
  v27 = sub_20410(&qword_34CB78, &unk_2D0D80);
  v28 = *(*(v27 - 8) + 64);
  __chkstk_darwin(v27 - 8);
  v225 = &v207 - v29;
  v30 = sub_20410(&qword_34CB80, &unk_2D0B30);
  v31 = *(*(v30 - 8) + 64);
  __chkstk_darwin(v30 - 8);
  v226 = &v207 - v32;
  v33 = sub_20410(&qword_34CB88, &unk_2D0D90);
  v34 = *(*(v33 - 8) + 64);
  __chkstk_darwin(v33 - 8);
  v227 = &v207 - v35;
  v36 = sub_2CCB30();
  v37 = *(v36 - 8);
  v38 = *(v37 + 64);
  __chkstk_darwin(v36);
  v40 = &v207 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_2CCAC0();
  v42 = *(v41 - 8);
  v43 = *(v42 + 64);
  __chkstk_darwin(v41);
  v45 = &v207 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_20410(&unk_3519A0, &qword_2D0980);
  v47 = *(*(v46 - 8) + 64);
  __chkstk_darwin(v46);
  v49 = (&v207 - v48);
  sub_F3F4(v231, &v207 - v48, &unk_3519A0, &qword_2D0980);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v50 = *v49;
    (*(v42 + 104))(v45, enum case for AdditionalMetricsDescription.ModuleName.sfmhis(_:), v41);
    (*(v37 + 104))(v40, enum case for AdditionalMetricsDescription.SourceFunction.handled(_:), v36);
    swift_getErrorValue();
    sub_2CEEF0();
    v233 = sub_2CCAE0();

    (*(v37 + 8))(v40, v36);
    (*(v42 + 8))(v45, v41);
    v51 = v235[12];
    v235 = sub_35E0(v235 + 8, v235[11]);
    v52 = enum case for ActivityType.failed(_:);
    v53 = sub_2C9C20();
    v54 = *(v53 - 8);
    v55 = v227;
    (*(v54 + 104))(v227, v52, v53);
    (*(v54 + 56))(v55, 0, 1, v53);
    v56 = sub_2CA130();
    v57 = v226;
    (*(*(v56 - 8) + 56))(v226, 1, 1, v56);
    v58 = enum case for SiriKitReliabilityCodes.renderingError(_:);
    v59 = sub_2C98F0();
    v60 = *(v59 - 8);
    v61 = v225;
    (*(v60 + 104))(v225, v58, v59);
    (*(v60 + 56))(v61, 0, 1, v59);
    INUpdateMediaAffinityIntent.firstMediaItemType()();
    sub_2CB4E0();

    sub_30B8(v61, &qword_34CB78, &unk_2D0D80);
    sub_30B8(v57, &qword_34CB80, &unk_2D0B30);
    sub_30B8(v55, &qword_34CB88, &unk_2D0D90);
    v236 = v50;
    LOBYTE(v237.super.isa) = 1;
    swift_errorRetain();
    v229(&v236);

    v62 = qword_34C798;
    v63 = &qword_2D0DA0;
    v64 = &v236;
    return sub_30B8(v64, v62, v63);
  }

  v213 = v40;
  v231 = v45;
  v207 = v37;
  v212 = v42;
  v208 = v36;
  v209 = v41;
  sub_24BE0(v49, v233);
  v66 = v234;
  sub_28CBC0(v234, v228);
  v67 = v235[17];
  sub_35E0(v235 + 13, v235[16]);
  if ((sub_2CC440() & 1) == 0)
  {
    sub_2CCF90();
    reserved = _swiftEmptyArrayStorage;
    v237._reserved = _swiftEmptyArrayStorage;
    v106 = sub_2CBDB0();

    v107 = v231;
    v108 = v213;
    if ((v106 & 1) == 0)
    {
LABEL_30:
      v139 = v212;
      v140 = v107;
      v141 = v209;
      (*(v212 + 104))(v107, enum case for AdditionalMetricsDescription.ModuleName.sfmhis(_:), v209);
      v142 = v207;
      v143 = v208;
      (*(v207 + 104))(v108, enum case for AdditionalMetricsDescription.SourceFunction.handled(_:), v208);
      v144 = v221;
      v145 = v220;
      v146 = v222;
      (*(v221 + 104))(v220, enum case for AdditionalMetricsDescription.StatusReason.success(_:), v222);
      v223 = sub_2CCAD0();
      v218 = v147;
      (*(v144 + 8))(v145, v146);
      v148 = v143;
      v149 = reserved;
      (*(v142 + 8))(v108, v148);
      (*(v139 + 8))(v140, v141);
      v150 = v235;
      v220 = v235[11];
      v221 = v235[12];
      v222 = sub_35E0(v235 + 8, v220);
      v151 = enum case for ActivityType.completed(_:);
      v152 = sub_2C9C20();
      v153 = *(v152 - 8);
      v154 = v227;
      (*(v153 + 104))(v227, v151, v152);
      (*(v153 + 56))(v154, 0, 1, v152);
      v155 = v219;
      sub_F3F4(v233, v219, &qword_34C6E8, &unk_2D0FF0);

      v156 = sub_2CA130();
      v157 = *(v156 - 1);
      v158 = v226;
      (*(v157 + 32))(v226, v155, v156);
      v159 = *(v157 + 56);
      v231 = v156;
      v159(v158, 0, 1, v156);
      v160 = enum case for SiriKitReliabilityCodes.success(_:);
      v161 = sub_2C98F0();
      v162 = *(v161 - 8);
      v163 = v225;
      (*(v162 + 104))(v225, v160, v161);
      (*(v162 + 56))(v163, 0, 1, v161);
      INUpdateMediaAffinityIntent.firstMediaItemType()();
      v164 = v233;
      sub_2CB4E0();

      v165 = v163;
      v166 = v164;
      sub_30B8(v165, &qword_34CB78, &unk_2D0D80);
      sub_30B8(v158, &qword_34CB80, &unk_2D0B30);
      sub_30B8(v154, &qword_34CB88, &unk_2D0D90);
      v167 = sub_35E0(v150 + 18, v150[21]);
      v168 = v215;
      sub_F3F4(v164, v215, &qword_34C6E8, &unk_2D0FF0);
      v169 = *(v168 + *(v224 + 48));
      if (v149 >> 62)
      {
        sub_334A0(0, &qword_350370, SABaseCommand_ptr);

        v170 = sub_2CED90();
      }

      else
      {

        sub_2CEEB0();
        sub_334A0(0, &qword_350370, SABaseCommand_ptr);
        v170 = v149;
      }

      v172 = v229;
      v171 = v230;

      v173 = *v167;
      v174 = v228;
      sub_1C077C(v168, v169, v228, v170, v172, v171);

      sub_30B8(v174, &unk_353020, &unk_2D0970);
      sub_30B8(v166, &qword_34C6E8, &unk_2D0FF0);
      return (*(v157 + 8))(v168, v231);
    }

    v109 = [v66 mediaItems];
    v110 = v212;
    v111 = v218;
    v112 = v217;
    v113 = v214;
    if (!v109)
    {
      goto LABEL_36;
    }

    v114 = v109;
    sub_334A0(0, &qword_356F50, INMediaItem_ptr);
    v115 = sub_2CE410();

    if (v115 >> 62)
    {
      if (sub_2CEDA0())
      {
        goto LABEL_14;
      }
    }

    else if (*(&dword_10 + (v115 & 0xFFFFFFFFFFFFFF8)))
    {
LABEL_14:
      if ((v115 & 0xC000000000000001) != 0)
      {
        v116 = sub_2CECD0();
      }

      else
      {
        if (!*(&dword_10 + (v115 & 0xFFFFFFFFFFFFFF8)))
        {
          __break(1u);
          goto LABEL_45;
        }

        v116 = *(v115 + 32);
      }

      v117 = v116;

      v118 = [v117 privateMediaItemValueData];

      if (v118)
      {
        v119 = [v118 punchoutURI];

        if (v119)
        {
          v223 = sub_2CE270();
          v113 = v120;

          if (qword_34BF58 == -1)
          {
LABEL_20:
            v121 = sub_3ED0(v111, static Logger.default);
            swift_beginAccess();
            v122 = v210;
            (*(v112 + 16))(v210, v121, v111);

            v123 = sub_2CDFE0();
            v124 = sub_2CE670();

            if (os_log_type_enabled(v123, v124))
            {
              v125 = swift_slowAlloc();
              v126 = swift_slowAlloc();
              v237._urlString = v126;
              *v125 = 136315138;
              *(v125 + 4) = sub_3F08(v223, v113, &v237._urlString);
              _os_log_impl(&dword_0, v123, v124, "Creating app punchout command with punchoutURI: %s", v125, 0xCu);
              sub_306C(v126);
            }

            (*(v112 + 8))(v122, v111);
            v127 = v211;
            v128 = [objc_allocWithZone(SAUIAppPunchOut) init];
            sub_2C8D80();

            v129 = sub_2C8D90();
            v130 = *(v129 - 8);
            v131 = (*(v130 + 48))(v127, 1, v129);
            v132 = 0;
            v108 = v213;
            if (v131 != 1)
            {
              sub_2C8D50(&v237);
              v132 = v133;
              (*(v130 + 8))(v127, v129);
            }

            [v128 setPunchOutUri:v132];

            v134 = v235[6];
            sub_35E0(v235 + 2, v235[5]);
            v135 = v128;
            sub_2CA160();
            v107 = v231;
            if (v136)
            {
              v137 = sub_2CE260();
            }

            else
            {
              v137 = 0;
            }

            [v135 setRefId:v137];

            v138 = v135;
            sub_2CE3F0();
            if (*(&dword_10 + (v237._reserved & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v237._reserved & 0xFFFFFFFFFFFFFF8)) >> 1)
            {
              v206 = *(&dword_10 + (v237._reserved & 0xFFFFFFFFFFFFFF8));
              sub_2CE430();
            }

            sub_2CE460();

            reserved = v237._reserved;
            goto LABEL_30;
          }

LABEL_45:
          swift_once();
          goto LABEL_20;
        }
      }

LABEL_36:
      if (qword_34BF58 != -1)
      {
        swift_once();
      }

      v175 = sub_3ED0(v111, static Logger.default);
      swift_beginAccess();
      (*(v112 + 16))(v113, v175, v111);
      v176 = sub_2CDFE0();
      v177 = sub_2CE680();
      if (os_log_type_enabled(v176, v177))
      {
        v178 = swift_slowAlloc();
        *v178 = 0;
        _os_log_impl(&dword_0, v176, v177, "HandleIntentStrategy#makeIntentHandledResponse missing 1P punchoutURI in resolved mediaItem", v178, 2u);
      }

      (*(v112 + 8))(v113, v111);
      v179 = sub_2C9D40();
      v180 = *(v179 + 48);
      v181 = *(v179 + 52);
      swift_allocObject();
      v182 = sub_2C9D20();
      sub_2C9D10();
      if (!v183)
      {
        v184 = v221;
        v185 = v220;
        v186 = v222;
        (*(v221 + 104))(v220, enum case for AdditionalMetricsDescription.StatusReason.unknown(_:), v222);
        sub_2CCB10();
        v187 = v185;
        v110 = v212;
        (*(v184 + 8))(v187, v186);
      }

      v188 = v231;
      v189 = v209;
      (*(v110 + 104))(v231, enum case for AdditionalMetricsDescription.ModuleName.sfmhis(_:), v209);
      v190 = v207;
      v191 = v213;
      v192 = v208;
      (*(v207 + 104))(v213, enum case for AdditionalMetricsDescription.SourceFunction.handled(_:), v208);
      v224 = sub_2CCAE0();

      (*(v190 + 8))(v191, v192);
      (*(v110 + 8))(v188, v189);
      v193 = v235[11];
      v231 = v235[12];
      v235 = sub_35E0(v235 + 8, v193);
      v194 = enum case for ActivityType.failed(_:);
      v195 = sub_2C9C20();
      v196 = *(v195 - 8);
      v197 = v227;
      (*(v196 + 104))(v227, v194, v195);
      (*(v196 + 56))(v197, 0, 1, v195);
      v198 = sub_2CA130();
      v199 = v226;
      (*(*(v198 - 8) + 56))(v226, 1, 1, v198);
      v200 = enum case for SiriKitReliabilityCodes.unsupportedParameterPunchout(_:);
      v201 = sub_2C98F0();
      v202 = *(v201 - 8);
      v203 = v225;
      (*(v202 + 104))(v225, v200, v201);
      (*(v202 + 56))(v203, 0, 1, v201);
      INUpdateMediaAffinityIntent.firstMediaItemType()();
      sub_2CB4E0();

      sub_30B8(v203, &qword_34CB78, &unk_2D0D80);
      sub_30B8(v199, &qword_34CB80, &unk_2D0B30);
      sub_30B8(v197, &qword_34CB88, &unk_2D0D90);
      sub_E5FE0(&unk_353010, 255, &type metadata accessor for CommandFailure);
      v204 = swift_allocError();
      *v205 = v182;
      v236 = v204;
      LOBYTE(v237.super.isa) = 1;

      v229(&v236);

      sub_30B8(&v236, qword_34C798, &qword_2D0DA0);
      sub_30B8(v228, &unk_353020, &unk_2D0970);
      v62 = &qword_34C6E8;
      v63 = &unk_2D0FF0;
      v64 = v233;
      return sub_30B8(v64, v62, v63);
    }

    goto LABEL_36;
  }

  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v68 = v218;
  v69 = sub_3ED0(v218, static Logger.default);
  swift_beginAccess();
  v70 = v217;
  v71 = v216;
  (*(v217 + 16))(v216, v69, v68);
  v72 = sub_2CDFE0();
  v73 = sub_2CE670();
  v74 = os_log_type_enabled(v72, v73);
  v75 = v227;
  v76 = v209;
  v77 = v208;
  v78 = v207;
  if (v74)
  {
    v79 = swift_slowAlloc();
    *v79 = 0;
    _os_log_impl(&dword_0, v72, v73, "HandleIntentStrategy#makeIntentHandledResponse AppIntents enabled, skipping punchout response", v79, 2u);
  }

  (*(v70 + 8))(v71, v68);
  v80 = v212;
  v81 = v231;
  (*(v212 + 104))(v231, enum case for AdditionalMetricsDescription.ModuleName.sfmhis(_:), v76);
  v82 = v213;
  (*(v78 + 104))(v213, enum case for AdditionalMetricsDescription.SourceFunction.handled(_:), v77);
  v83 = v221;
  v84 = v220;
  v85 = v222;
  (*(v221 + 104))(v220, enum case for AdditionalMetricsDescription.StatusReason.success(_:), v222);
  v223 = sub_2CCAD0();
  v218 = v86;
  (*(v83 + 8))(v84, v85);
  (*(v78 + 8))(v82, v77);
  (*(v80 + 8))(v81, v76);
  v87 = v235;
  v221 = v235[11];
  v222 = v235[12];
  v231 = sub_35E0(v235 + 8, v221);
  v88 = enum case for ActivityType.completed(_:);
  v89 = sub_2C9C20();
  v90 = *(v89 - 8);
  (*(v90 + 104))(v75, v88, v89);
  (*(v90 + 56))(v75, 0, 1, v89);
  v91 = v219;
  sub_F3F4(v233, v219, &qword_34C6E8, &unk_2D0FF0);

  v92 = sub_2CA130();
  v93 = *(v92 - 8);
  v94 = v226;
  (*(v93 + 32))(v226, v91, v92);
  (*(v93 + 56))(v94, 0, 1, v92);
  v95 = enum case for SiriKitReliabilityCodes.success(_:);
  v96 = sub_2C98F0();
  v97 = *(v96 - 8);
  v98 = v225;
  (*(v97 + 104))(v225, v95, v96);
  (*(v97 + 56))(v98, 0, 1, v96);
  INUpdateMediaAffinityIntent.firstMediaItemType()();
  sub_2CB4E0();

  sub_30B8(v98, &qword_34CB78, &unk_2D0D80);
  sub_30B8(v94, &qword_34CB80, &unk_2D0B30);
  sub_30B8(v75, &qword_34CB88, &unk_2D0D90);
  v99 = sub_35E0(v87 + 18, v87[21]);
  v100 = v233;
  sub_F3F4(v233, v91, &qword_34C6E8, &unk_2D0FF0);
  v101 = *(v91 + *(v224 + 48));
  sub_20410(&unk_351900, &unk_2D0960);
  v102 = swift_allocObject();
  *(v102 + 16) = xmmword_2D0770;
  *(v102 + 32) = [objc_allocWithZone(SAUICloseAssistant) init];
  v103 = *v99;
  v104 = v228;
  sub_1C077C(v91, v101, v228, v102, v229, v230);

  sub_30B8(v104, &unk_353020, &unk_2D0970);
  sub_30B8(v100, &qword_34C6E8, &unk_2D0FF0);
  return (*(v93 + 8))(v91, v92);
}

uint64_t SearchForMedia.HandleIntentStrategy.makeFailureHandlingIntentResponse(app:intent:intentResponse:_:)(unint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v30 = a4;
  v31 = a5;
  v10 = sub_2CE000();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2CB450();
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v15 = sub_3ED0(v10, static Logger.default);
  swift_beginAccess();
  (*(v11 + 16))(v14, v15, v10);
  v16 = sub_2CDFE0();
  v17 = sub_2CE690();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_0, v16, v17, "SearchForMedia+HandleIntentStrategy#makeFailureHandlingIntentResponse", v18, 2u);
  }

  (*(v11 + 8))(v14, v10);
  v19 = *(v6 + 192);
  sub_20410(&unk_353120, &unk_2D0B50);
  inited = swift_initStackObject();
  strcpy((inited + 32), "MetricsError");
  *(inited + 16) = xmmword_2D0090;
  *(inited + 45) = 0;
  *(inited + 46) = -5120;
  v33 = 0;
  v34 = 0xE000000000000000;
  sub_2CECB0(42);

  v33 = 0xD000000000000028;
  v34 = 0x80000000002DCBC0;
  v32 = [a3 code];
  v35._countAndFlagsBits = sub_2CEE70();
  sub_2CE350(v35);

  v21 = v33;
  v22 = v34;
  *(inited + 72) = &type metadata for String;
  *(inited + 48) = v21;
  *(inited + 56) = v22;
  v23 = sub_112C0(inited);
  swift_setDeallocating();
  sub_30B8(inited + 32, &qword_34CBA0, &unk_2D0FE0);
  v24 = swift_allocObject();
  *(v24 + 16) = v6;
  *(v24 + 24) = a1;
  v25 = v30;
  v26 = v31;
  *(v24 + 32) = a2;
  *(v24 + 40) = v25;
  *(v24 + 48) = v26;
  *(v24 + 56) = a3;

  v27 = a2;

  v28 = a3;
  sub_E47A0(v23, a1, sub_E4788, v24);
}

uint64_t sub_E3800(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *), uint64_t a6, void *a7)
{
  v72 = a7;
  v84 = a5;
  v85 = a6;
  v82 = a3;
  v83 = a4;
  v78 = a2;
  v75 = a1;
  v7 = sub_20410(&unk_353020, &unk_2D0970);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v74 = v71 - v9;
  v76 = sub_20410(&qword_34C6E8, &unk_2D0FF0);
  v10 = *(*(v76 - 8) + 64);
  v11 = __chkstk_darwin(v76);
  v73 = v71 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v77 = v71 - v13;
  v14 = sub_20410(&qword_34CB78, &unk_2D0D80);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v81 = v71 - v16;
  v17 = sub_20410(&qword_34CB80, &unk_2D0B30);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  v80 = v71 - v19;
  v20 = sub_20410(&qword_34CB88, &unk_2D0D90);
  v21 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20 - 8);
  v79 = v71 - v22;
  v23 = sub_2CCB30();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  __chkstk_darwin(v23);
  v27 = v71 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_2CCAC0();
  v29 = *(v28 - 8);
  v30 = *(v29 + 64);
  __chkstk_darwin(v28);
  v32 = v71 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_20410(&unk_3519A0, &qword_2D0980);
  v34 = *(*(v33 - 8) + 64);
  __chkstk_darwin(v33);
  v36 = (v71 - v35);
  sub_F3F4(v75, v71 - v35, &unk_3519A0, &qword_2D0980);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v37 = *v36;
    (*(v29 + 104))(v32, enum case for AdditionalMetricsDescription.ModuleName.sfmhis(_:), v28);
    (*(v24 + 104))(v27, enum case for AdditionalMetricsDescription.SourceFunction.failHandleResp(_:), v23);
    swift_getErrorValue();
    sub_2CEEF0();
    v77 = sub_2CCAE0();

    (*(v24 + 8))(v27, v23);
    (*(v29 + 8))(v32, v28);
    v38 = v78[12];
    v78 = sub_35E0(v78 + 8, v78[11]);
    v39 = enum case for ActivityType.failed(_:);
    v40 = sub_2C9C20();
    v41 = *(v40 - 8);
    v42 = v79;
    (*(v41 + 104))(v79, v39, v40);
    (*(v41 + 56))(v42, 0, 1, v40);
    v43 = sub_2CA130();
    v44 = v80;
    (*(*(v43 - 8) + 56))(v80, 1, 1, v43);
    v45 = enum case for SiriKitReliabilityCodes.renderingError(_:);
    v46 = sub_2C98F0();
    v47 = *(v46 - 8);
    v48 = v81;
    (*(v47 + 104))(v81, v45, v46);
    (*(v47 + 56))(v48, 0, 1, v46);
    INUpdateMediaAffinityIntent.firstMediaItemType()();
    sub_2CB4E0();

    sub_30B8(v48, &qword_34CB78, &unk_2D0D80);
    sub_30B8(v44, &qword_34CB80, &unk_2D0B30);
    sub_30B8(v42, &qword_34CB88, &unk_2D0D90);
    v86[0] = v37;
    v87 = 1;
    swift_errorRetain();
    v84(v86);

    return sub_30B8(v86, qword_34C798, &qword_2D0DA0);
  }

  else
  {
    v50 = v77;
    sub_24BE0(v36, v77);
    (*(v29 + 104))(v32, enum case for AdditionalMetricsDescription.ModuleName.sfmhis(_:), v28);
    (*(v24 + 104))(v27, enum case for AdditionalMetricsDescription.SourceFunction.failHandleResp(_:), v23);
    v86[0] = [v72 code];
    sub_2CEE70();
    v75 = sub_2CCAE0();
    v72 = v51;

    (*(v24 + 8))(v27, v23);
    (*(v29 + 8))(v32, v28);
    v52 = v78;
    v71[0] = v78[11];
    v71[1] = v78[12];
    v71[2] = sub_35E0(v78 + 8, v71[0]);
    v53 = enum case for ActivityType.failed(_:);
    v54 = sub_2C9C20();
    v55 = *(v54 - 8);
    v56 = v79;
    (*(v55 + 104))(v79, v53, v54);
    (*(v55 + 56))(v56, 0, 1, v54);
    v57 = v73;
    sub_F3F4(v50, v73, &qword_34C6E8, &unk_2D0FF0);

    v58 = sub_2CA130();
    v59 = *(v58 - 8);
    v60 = v80;
    (*(v59 + 32))(v80, v57, v58);
    (*(v59 + 56))(v60, 0, 1, v58);
    v61 = enum case for SiriKitReliabilityCodes.handleIntentFailure(_:);
    v62 = sub_2C98F0();
    v63 = *(v62 - 8);
    v64 = v81;
    (*(v63 + 104))(v81, v61, v62);
    (*(v63 + 56))(v64, 0, 1, v62);
    INUpdateMediaAffinityIntent.firstMediaItemType()();
    sub_2CB4E0();

    sub_30B8(v64, &qword_34CB78, &unk_2D0D80);
    sub_30B8(v60, &qword_34CB80, &unk_2D0B30);
    sub_30B8(v56, &qword_34CB88, &unk_2D0D90);
    v65 = sub_35E0(v52 + 18, v52[21]);
    v66 = v77;
    sub_F3F4(v77, v57, &qword_34C6E8, &unk_2D0FF0);
    v67 = *(v57 + *(v76 + 48));
    v68 = sub_2CA000();
    v69 = v74;
    (*(*(v68 - 8) + 56))(v74, 1, 1, v68);
    v70 = *v65;
    sub_1C077C(v57, v67, v69, _swiftEmptyArrayStorage, v84, v85);

    sub_30B8(v69, &unk_353020, &unk_2D0970);
    sub_30B8(v66, &qword_34C6E8, &unk_2D0FF0);
    return (*(v59 + 8))(v57, v58);
  }
}

uint64_t *SearchForMedia.HandleIntentStrategy.deinit()
{
  sub_306C(v0 + 2);
  v1 = v0[7];

  sub_306C(v0 + 8);
  sub_306C(v0 + 13);
  sub_306C(v0 + 18);
  v2 = v0[23];

  v3 = v0[24];

  return v0;
}

uint64_t SearchForMedia.HandleIntentStrategy.__deallocating_deinit()
{
  sub_306C(v0 + 2);
  v1 = v0[7];

  sub_306C(v0 + 8);
  sub_306C(v0 + 13);
  sub_306C(v0 + 18);
  v2 = v0[23];

  v3 = v0[24];

  return swift_deallocClassInstance();
}

uint64_t sub_E43C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = type metadata accessor for SearchForMedia.HandleIntentStrategy();

  return HandleIntentFlowStrategy.makePromptForDeviceUnlock(app:intent:intentResponse:_:)(a1, a2, a3, a4, a5, v13, a7);
}

uint64_t sub_E4444(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = type metadata accessor for SearchForMedia.HandleIntentStrategy();

  return HandleIntentFlowStrategy.makeHandoffForAuthenticationResponse(app:intent:intentResponse:_:)(a1, a2, a3, a4, a5, v13, a7);
}

uint64_t sub_E44C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = type metadata accessor for SearchForMedia.HandleIntentStrategy();

  return HandleIntentFlowStrategy.makePreHandleIntentOutput(app:intent:intentResponse:_:)(a1, a2, a3, a4, a5, v13, a7);
}

uint64_t sub_E4560(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = type metadata accessor for SearchForMedia.HandleIntentStrategy();

  return HandleIntentFlowStrategy.makeContinueInAppResponse(app:intent:intentResponse:_:)(a1, a2, a3, a4, a5, v13, a7);
}

uint64_t sub_E45DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = type metadata accessor for SearchForMedia.HandleIntentStrategy();

  return HandleIntentFlowStrategy.makeInProgressResponse(app:intent:intentResponse:_:)(a1, a2, a3, a4, a5, v13, a7);
}

uint64_t sub_E467C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for SearchForMedia.HandleIntentStrategy();

  return IntentExtensionCommunicating.shouldIntentBeExecutedOnRemoteCompanion(intent:)(a1, v5, a3);
}

uint64_t sub_E46C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for SearchForMedia.HandleIntentStrategy();

  return IntentExtensionCommunicating.makeIntentExecutionBehavior(app:intent:)(a1, a2, v7, a4);
}

uint64_t sub_E471C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = type metadata accessor for SearchForMedia.HandleIntentStrategy();

  return IntentExtensionCommunicating.makeIntentExecutionBehavior(app:intent:completion:)(a1, a2, a3, a4, v11, a6);
}

uint64_t sub_E47A0(unint64_t a1, unint64_t a2, char *a3, char *a4)
{
  v65 = a3;
  v68 = a1;
  v69 = a2;
  v6 = sub_2CE000();
  v74 = *(v6 - 8);
  v75 = v6;
  v7 = v74[8];
  v8 = __chkstk_darwin(v6);
  v72 = &v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v66 = &v60 - v10;
  v11 = sub_2CDFD0();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v11);
  v15 = &v60 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = &v60 - v16;
  v67 = v4[2];
  v18 = v4[13];
  v60 = v4[14];
  v73 = 0x80000000002DAA60;
  v79 = 0;
  memset(v78, 0, sizeof(v78));
  if (qword_34BF98 != -1)
  {
    swift_once();
  }

  v19 = qword_35F760;
  sub_2CDFB0();
  (*(v12 + 16))(v15, v17, v11);
  v20 = (*(v12 + 80) + 33) & ~*(v12 + 80);
  v21 = v13 + v20 + 7;
  v22 = v17;
  v23 = v21 & 0xFFFFFFFFFFFFFFF8;
  v24 = swift_allocObject();
  *(v24 + 16) = "catServiceExecute";
  *(v24 + 24) = 17;
  *(v24 + 32) = 2;
  v70 = v12;
  v71 = v11;
  (*(v12 + 32))(v24 + v20, v15, v11);
  v25 = (v24 + v23);
  *v25 = v65;
  v25[1] = a4;

  sub_2CE9E0();
  sub_20410(&qword_34CEA8, &unk_2D0EB0);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_2D0E40;
  *(v26 + 56) = &type metadata for String;
  v27 = sub_1087C();
  v64 = v18;
  *(v26 + 32) = v18;
  v28 = v60;
  *(v26 + 40) = v60;
  *(v26 + 96) = &type metadata for String;
  *(v26 + 104) = v27;
  *(v26 + 64) = v27;
  *(v26 + 72) = 0xD000000000000015;
  *(v26 + 80) = v73;

  v59 = v26;
  LOBYTE(v58) = 2;
  v57 = 125;
  v65 = v22;
  sub_2CDF90();

  v29 = swift_allocObject();
  *(v29 + 16) = sub_13D80;
  *(v29 + 24) = v24;
  v61 = v29;
  v30 = qword_34BF58;

  if (v30 != -1)
  {
    swift_once();
  }

  v31 = v75;
  v32 = sub_3ED0(v75, static Logger.default);
  swift_beginAccess();
  v33 = v74;
  v34 = v74[2];
  v35 = v66;
  v63 = v32;
  v62 = v34;
  v34(v66, v32, v31);

  v36 = sub_2CDFE0();
  v37 = sub_2CE660();

  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    v76 = swift_slowAlloc();
    *v38 = 136315394;
    v39 = v64;
    *(v38 + 4) = sub_3F08(v64, v28, &v76);
    *(v38 + 12) = 2080;
    v40 = v73;
    *(v38 + 14) = sub_3F08(0xD000000000000015, v73, &v76);
    _os_log_impl(&dword_0, v36, v37, "Evaluating CAT family:%s id:%s...", v38, 0x16u);
    swift_arrayDestroy();

    v41 = v35;
    v42 = v74[1];
    v42(v41, v75);
  }

  else
  {

    v43 = v35;
    v42 = v33[1];
    v42(v43, v31);
    v40 = v73;
    v39 = v64;
  }

  v76 = v39;
  v77 = v28;

  v80._countAndFlagsBits = 35;
  v80._object = 0xE100000000000000;
  sub_2CE350(v80);
  v81._countAndFlagsBits = 0xD000000000000015;
  v81._object = v40;
  sub_2CE350(v81);
  v45 = v76;
  v44 = v77;
  v46 = sub_2CB460();
  if (!v46)
  {
    sub_2CB180();
    v46 = sub_2CB170();
  }

  v47 = v46;
  v48 = swift_allocObject();
  v48[2] = v47;
  v48[3] = sub_13DB4;
  v48[4] = v61;
  v49 = sub_2CB180();
  __chkstk_darwin(v49);
  v50 = v68;
  *(&v60 - 10) = v67;
  *(&v60 - 9) = v50;
  *(&v60 - 8) = v69;
  *(&v60 - 7) = v78;
  *(&v60 - 6) = 0;
  *(&v60 - 5) = v45;
  v57 = v44;
  v58 = sub_3E06C;
  v59 = v48;

  sub_2CB0F0();

  (*(v70 + 8))(v65, v71);
  sub_30B8(v78, &qword_34C6C0, &qword_2D0710);
  v51 = v72;
  v52 = v75;
  v62(v72, v63, v75);
  v53 = sub_2CDFE0();
  v54 = sub_2CE690();
  if (os_log_type_enabled(v53, v54))
  {
    v55 = swift_slowAlloc();
    *v55 = 0;
    _os_log_impl(&dword_0, v53, v54, "CommonDialogProvider#makeFailureHandlingIntentDialog", v55, 2u);
  }

  return (v42)(v51, v52);
}

uint64_t sub_E4FD0(unint64_t a1, unint64_t a2, char *a3, char *a4)
{
  v65 = a3;
  v68 = a1;
  v69 = a2;
  v6 = sub_2CE000();
  v74 = *(v6 - 8);
  v75 = v6;
  v7 = v74[8];
  v8 = __chkstk_darwin(v6);
  v72 = &v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v66 = &v60 - v10;
  v11 = sub_2CDFD0();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v11);
  v15 = &v60 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = &v60 - v16;
  v67 = v4[2];
  v18 = v4[13];
  v60 = v4[14];
  v73 = 0x80000000002DAA60;
  v79 = 0;
  memset(v78, 0, sizeof(v78));
  if (qword_34BF98 != -1)
  {
    swift_once();
  }

  v19 = qword_35F760;
  sub_2CDFB0();
  (*(v12 + 16))(v15, v17, v11);
  v20 = (*(v12 + 80) + 33) & ~*(v12 + 80);
  v21 = v13 + v20 + 7;
  v22 = v17;
  v23 = v21 & 0xFFFFFFFFFFFFFFF8;
  v24 = swift_allocObject();
  *(v24 + 16) = "catServiceExecute";
  *(v24 + 24) = 17;
  *(v24 + 32) = 2;
  v70 = v12;
  v71 = v11;
  (*(v12 + 32))(v24 + v20, v15, v11);
  v25 = (v24 + v23);
  *v25 = v65;
  v25[1] = a4;

  sub_2CE9E0();
  sub_20410(&qword_34CEA8, &unk_2D0EB0);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_2D0E40;
  *(v26 + 56) = &type metadata for String;
  v27 = sub_1087C();
  v64 = v18;
  *(v26 + 32) = v18;
  v28 = v60;
  *(v26 + 40) = v60;
  *(v26 + 96) = &type metadata for String;
  *(v26 + 104) = v27;
  *(v26 + 64) = v27;
  *(v26 + 72) = 0xD000000000000015;
  *(v26 + 80) = v73;

  v59 = v26;
  LOBYTE(v58) = 2;
  v57 = 125;
  v65 = v22;
  sub_2CDF90();

  v29 = swift_allocObject();
  *(v29 + 16) = sub_13D7C;
  *(v29 + 24) = v24;
  v61 = v29;
  v30 = qword_34BF58;

  if (v30 != -1)
  {
    swift_once();
  }

  v31 = v75;
  v32 = sub_3ED0(v75, static Logger.default);
  swift_beginAccess();
  v33 = v74;
  v34 = v74[2];
  v35 = v66;
  v63 = v32;
  v62 = v34;
  v34(v66, v32, v31);

  v36 = sub_2CDFE0();
  v37 = sub_2CE660();

  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    v76 = swift_slowAlloc();
    *v38 = 136315394;
    v39 = v64;
    *(v38 + 4) = sub_3F08(v64, v28, &v76);
    *(v38 + 12) = 2080;
    v40 = v73;
    *(v38 + 14) = sub_3F08(0xD000000000000015, v73, &v76);
    _os_log_impl(&dword_0, v36, v37, "Evaluating CAT family:%s id:%s...", v38, 0x16u);
    swift_arrayDestroy();

    v41 = v35;
    v42 = v74[1];
    v42(v41, v75);
  }

  else
  {

    v43 = v35;
    v42 = v33[1];
    v42(v43, v31);
    v40 = v73;
    v39 = v64;
  }

  v76 = v39;
  v77 = v28;

  v80._countAndFlagsBits = 35;
  v80._object = 0xE100000000000000;
  sub_2CE350(v80);
  v81._countAndFlagsBits = 0xD000000000000015;
  v81._object = v40;
  sub_2CE350(v81);
  v45 = v76;
  v44 = v77;
  v46 = sub_2CB460();
  if (!v46)
  {
    sub_2CB180();
    v46 = sub_2CB170();
  }

  v47 = v46;
  v48 = swift_allocObject();
  v48[2] = v47;
  v48[3] = sub_13D84;
  v48[4] = v61;
  v49 = sub_2CB180();
  __chkstk_darwin(v49);
  v50 = v68;
  *(&v60 - 10) = v67;
  *(&v60 - 9) = v50;
  *(&v60 - 8) = v69;
  *(&v60 - 7) = v78;
  *(&v60 - 6) = 0;
  *(&v60 - 5) = v45;
  v57 = v44;
  v58 = sub_3E010;
  v59 = v48;

  sub_2CB0F0();

  (*(v70 + 8))(v65, v71);
  sub_30B8(v78, &qword_34C6C0, &qword_2D0710);
  v51 = v72;
  v52 = v75;
  v62(v72, v63, v75);
  v53 = sub_2CDFE0();
  v54 = sub_2CE690();
  if (os_log_type_enabled(v53, v54))
  {
    v55 = swift_slowAlloc();
    *v55 = 0;
    _os_log_impl(&dword_0, v53, v54, "CommonDialogProvider#makeFailureHandlingIntentDialog", v55, 2u);
  }

  return (v42)(v51, v52);
}

uint64_t sub_E5794(unint64_t a1, unint64_t a2, char *a3, char *a4)
{
  v65 = a3;
  v68 = a1;
  v69 = a2;
  v6 = sub_2CE000();
  v74 = *(v6 - 8);
  v75 = v6;
  v7 = v74[8];
  v8 = __chkstk_darwin(v6);
  v72 = &v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v66 = &v60 - v10;
  v11 = sub_2CDFD0();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v11);
  v15 = &v60 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = &v60 - v16;
  v67 = v4[2];
  v18 = v4[13];
  v60 = v4[14];
  v73 = 0x80000000002DAA60;
  v79 = 0;
  memset(v78, 0, sizeof(v78));
  if (qword_34BF98 != -1)
  {
    swift_once();
  }

  v19 = qword_35F760;
  sub_2CDFB0();
  (*(v12 + 16))(v15, v17, v11);
  v20 = (*(v12 + 80) + 33) & ~*(v12 + 80);
  v21 = v13 + v20 + 7;
  v22 = v17;
  v23 = v21 & 0xFFFFFFFFFFFFFFF8;
  v24 = swift_allocObject();
  *(v24 + 16) = "catServiceExecute";
  *(v24 + 24) = 17;
  *(v24 + 32) = 2;
  v70 = v12;
  v71 = v11;
  (*(v12 + 32))(v24 + v20, v15, v11);
  v25 = (v24 + v23);
  *v25 = v65;
  v25[1] = a4;

  sub_2CE9E0();
  sub_20410(&qword_34CEA8, &unk_2D0EB0);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_2D0E40;
  *(v26 + 56) = &type metadata for String;
  v27 = sub_1087C();
  v64 = v18;
  *(v26 + 32) = v18;
  v28 = v60;
  *(v26 + 40) = v60;
  *(v26 + 96) = &type metadata for String;
  *(v26 + 104) = v27;
  *(v26 + 64) = v27;
  *(v26 + 72) = 0xD000000000000015;
  *(v26 + 80) = v73;

  v59 = v26;
  LOBYTE(v58) = 2;
  v57 = 125;
  v65 = v22;
  sub_2CDF90();

  v29 = swift_allocObject();
  *(v29 + 16) = sub_13D80;
  *(v29 + 24) = v24;
  v61 = v29;
  v30 = qword_34BF58;

  if (v30 != -1)
  {
    swift_once();
  }

  v31 = v75;
  v32 = sub_3ED0(v75, static Logger.default);
  swift_beginAccess();
  v33 = v74;
  v34 = v74[2];
  v35 = v66;
  v63 = v32;
  v62 = v34;
  v34(v66, v32, v31);

  v36 = sub_2CDFE0();
  v37 = sub_2CE660();

  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    v76 = swift_slowAlloc();
    *v38 = 136315394;
    v39 = v64;
    *(v38 + 4) = sub_3F08(v64, v28, &v76);
    *(v38 + 12) = 2080;
    v40 = v73;
    *(v38 + 14) = sub_3F08(0xD000000000000015, v73, &v76);
    _os_log_impl(&dword_0, v36, v37, "Evaluating CAT family:%s id:%s...", v38, 0x16u);
    swift_arrayDestroy();

    v41 = v35;
    v42 = v74[1];
    v42(v41, v75);
  }

  else
  {

    v43 = v35;
    v42 = v33[1];
    v42(v43, v31);
    v40 = v73;
    v39 = v64;
  }

  v76 = v39;
  v77 = v28;

  v80._countAndFlagsBits = 35;
  v80._object = 0xE100000000000000;
  sub_2CE350(v80);
  v81._countAndFlagsBits = 0xD000000000000015;
  v81._object = v40;
  sub_2CE350(v81);
  v45 = v76;
  v44 = v77;
  v46 = sub_2CB460();
  if (!v46)
  {
    sub_2CB180();
    v46 = sub_2CB170();
  }

  v47 = v46;
  v48 = swift_allocObject();
  v48[2] = v47;
  v48[3] = sub_13DB4;
  v48[4] = v61;
  v49 = sub_2CB180();
  __chkstk_darwin(v49);
  v50 = v68;
  *(&v60 - 10) = v67;
  *(&v60 - 9) = v50;
  *(&v60 - 8) = v69;
  *(&v60 - 7) = v78;
  *(&v60 - 6) = 0;
  *(&v60 - 5) = v45;
  v57 = v44;
  v58 = sub_3E06C;
  v59 = v48;

  sub_2CB0F0();

  (*(v70 + 8))(v65, v71);
  sub_30B8(v78, &qword_34C6C0, &qword_2D0710);
  v51 = v72;
  v52 = v75;
  v62(v72, v63, v75);
  v53 = sub_2CDFE0();
  v54 = sub_2CE690();
  if (os_log_type_enabled(v53, v54))
  {
    v55 = swift_slowAlloc();
    *v55 = 0;
    _os_log_impl(&dword_0, v53, v54, "CommonDialogProvider#makeFailureHandlingIntentDialog", v55, 2u);
  }

  return (v42)(v51, v52);
}

uint64_t sub_E5F58()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = *(v0 + 48);

  return _swift_deallocObject(v0, 64);
}

uint64_t sub_E5FE0(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_E6028()
{
  v1 = *(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t sub_E6084()
{
  v1 = *(*v0 + 16);
  v2 = *(*v0 + 24);
  v3 = sub_2CCFB0();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();

  return sub_2CCF70();
}

uint64_t sub_E60F8@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for AppResolutionConfirmation.confirmed(_:);
  v3 = sub_2CCFC0();
  v6 = *(v3 - 8);
  (*(v6 + 104))(a1, v2, v3);
  v4 = *(v6 + 56);

  return v4(a1, 0, 1, v3);
}

uint64_t PlayMediaAppResolver.resolveBundleIdentifier(for:with:)(void *a1, uint64_t a2, uint64_t a3)
{
  v32 = a2;
  v33 = a3;
  v4 = sub_2CDFD0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v8 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = &v29 - v9;
  v11 = sub_20410(&qword_350438, qword_2D3AA0);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = (&v29 - v13);
  v34 = a1;
  v36 = a1;
  sub_334A0(0, &qword_34FCC0, INPlayMediaIntent_ptr);
  sub_2CC170();
  v15 = sub_20410(&qword_34E740, &unk_2D68F0);
  v16 = (*(*(v15 - 8) + 48))(v14, 1, v15);
  if (qword_34BF98 != -1)
  {
    v28 = v16;
    swift_once();
    v16 = v28;
  }

  if (v16 == 1)
  {
    v17 = 0x80000000002DCCF0;
  }

  else
  {
    v17 = 0xEE006465766C6F73;
  }

  v18 = 0x6552657250707061;
  if (v16 == 1)
  {
    v18 = 0xD000000000000010;
  }

  v30 = v18;
  v31 = v17;
  v19 = qword_35F760;
  sub_2CDFB0();
  (*(v5 + 16))(v8, v10, v4);
  v20 = (*(v5 + 80) + 33) & ~*(v5 + 80);
  v21 = (v6 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
  v22 = swift_allocObject();
  *(v22 + 16) = "playMediaAppResolutionServiceResolveBundleEverything";
  *(v22 + 24) = 52;
  *(v22 + 32) = 2;
  (*(v5 + 32))(v22 + v20, v8, v4);
  v23 = (v22 + v21);
  v24 = v33;
  *v23 = v32;
  v23[1] = v24;

  sub_2CE9E0();
  sub_20410(&qword_34CEA8, &unk_2D0EB0);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_2D0090;
  *(v25 + 56) = &type metadata for String;
  *(v25 + 64) = sub_1087C();
  v26 = v31;
  *(v25 + 32) = v30;
  *(v25 + 40) = v26;
  sub_2CDF90();

  sub_EF0B8(v34, v35, v14, sub_EED20, v22);

  (*(v5 + 8))(v10, v4);
  return sub_30B8(v14, &qword_350438, qword_2D3AA0);
}

uint64_t sub_E65CC(uint64_t a1, void (*a2)(void), uint64_t a3, uint64_t a4, void *a5)
{
  v39 = a4;
  v40 = a5;
  v42 = a3;
  v43 = sub_2CDFD0();
  v41 = *(v43 - 8);
  v7 = *(v41 + 64);
  v8 = __chkstk_darwin(v43);
  v9 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v38 = &v36 - v10;
  v11 = sub_20410(&qword_3504C8, &unk_2D3B18);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v36 - v13;
  v15 = type metadata accessor for BundleResolutionResult();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v19 = &v36 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_F3F4(a1, v14, &qword_3504C8, &unk_2D3B18);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    v37 = a2;
    sub_30B8(v14, &qword_3504C8, &unk_2D3B18);
    if (qword_34BF98 != -1)
    {
      swift_once();
    }

    v20 = qword_35F760;
    v21 = v38;
    sub_2CDFB0();
    v22 = v41;
    v23 = v43;
    (*(v41 + 16))(v9, v21, v43);
    v24 = (*(v22 + 80) + 33) & ~*(v22 + 80);
    v25 = (v7 + v24 + 7) & 0xFFFFFFFFFFFFFFF8;
    v26 = swift_allocObject();
    *(v26 + 16) = "playMediaAppResolutionServiceResolveBundle";
    *(v26 + 24) = 42;
    *(v26 + 32) = 2;
    (*(v22 + 32))(v26 + v24, v9, v23);
    v27 = (v26 + v25);
    v28 = v42;
    *v27 = v37;
    v27[1] = v28;

    sub_2CE9E0();
    sub_2CDF90();
    v29 = swift_allocObject();
    *(v29 + 16) = sub_13B2C;
    *(v29 + 24) = v26;
    v30 = v39;
    v31 = *(v39 + qword_350440 + 32);
    sub_35E0((v39 + qword_350440), *(v39 + qword_350440 + 24));
    v32 = swift_allocObject();
    v33 = v40;
    v32[2] = v30;
    v32[3] = v33;
    v32[4] = sub_13BD8;
    v32[5] = v29;

    v34 = v33;
    sub_2CCAB0();

    return (*(v22 + 8))(v21, v43);
  }

  else
  {
    sub_F1BB8(v14, v19);
    a2(v19);
    return sub_F1AE0(v19);
  }
}

uint64_t sub_E6A24(NSObject *a1, void *a2, void *a3, void (*a4)(void), uint64_t a5)
{
  v95 = a5;
  v93 = a4;
  v92 = a3;
  v88 = a2;
  v6 = sub_2CC990();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = (&v82 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v86 = type metadata accessor for BundleResolutionResult();
  v11 = *(*(v86 - 8) + 64);
  __chkstk_darwin(v86);
  v85 = (&v82 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v94 = sub_2CCA70();
  v91 = *(v94 - 8);
  v13 = *(v91 + 64);
  __chkstk_darwin(v94);
  v89 = v14;
  v90 = &v82 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_2CE000();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = __chkstk_darwin(v15);
  v20 = &v82 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v22 = &v82 - v21;
  v87 = sub_2CCA50();
  if (v23)
  {
    v24 = v23;
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v25 = sub_3ED0(v15, static Logger.default);
    swift_beginAccess();
    (*(v16 + 16))(v22, v25, v15);

    v26 = sub_2CDFE0();
    v27 = sub_2CE690();

    v84 = v26;
    v28 = os_log_type_enabled(v26, v27);
    v29 = v94;
    if (v28)
    {
      v30 = swift_slowAlloc();
      v83 = v15;
      v31 = v30;
      v99[0] = swift_slowAlloc();
      *v31 = 136446466;
      v32 = sub_2CCC80();
      v34 = sub_3F08(v32, v33, v99);
      v82 = v16;
      v35 = v29;
      v36 = v34;

      *(v31 + 4) = v36;
      v29 = v35;
      *(v31 + 12) = 2082;
      v37 = v87;
      *(v31 + 14) = sub_3F08(v87, v24, v99);
      v38 = v84;
      _os_log_impl(&dword_0, v84, v27, "PlayMediaAppResolver#resolveBundleIdentifier %{public}s app selection resolved bundle: %{public}s", v31, 0x16u);
      swift_arrayDestroy();

      (*(v82 + 8))(v22, v83);
    }

    else
    {

      (*(v16 + 8))(v22, v15);
      v37 = v87;
    }

    if (sub_2CBDB0())
    {
      v61 = v91;
      v62 = v90;
      (*(v91 + 16))(v90, a1, v29);
      v63 = (*(v61 + 80) + 56) & ~*(v61 + 80);
      v64 = swift_allocObject();
      *(v64 + 2) = v88;
      *(v64 + 3) = v37;
      v65 = v93;
      *(v64 + 4) = v24;
      *(v64 + 5) = v65;
      *(v64 + 6) = v95;
      (*(v61 + 32))(&v64[v63], v62, v29);

      sub_E9758(v92, sub_F1D4C, v64);
    }

    else
    {
      v66 = *(sub_20410(&qword_34E740, &unk_2D68F0) + 48);
      v67 = v85;
      *v85 = v37;
      *(v67 + 8) = v24;
      sub_2CCA40();
      swift_storeEnumTagMultiPayload();
      v93(v67);
      return sub_F1AE0(v67);
    }
  }

  else
  {
    v85 = v10;
    v86 = v7;
    v87 = v6;
    if (sub_2CCA60())
    {
      v84 = a1;
      if (qword_34BF58 != -1)
      {
        swift_once();
      }

      v39 = v15;
      v40 = sub_3ED0(v15, static Logger.default);
      swift_beginAccess();
      (*(v16 + 16))(v20, v40, v15);
      v41 = sub_2CDFE0();
      v42 = sub_2CE690();
      if (os_log_type_enabled(v41, v42))
      {
        v43 = swift_slowAlloc();
        v44 = swift_slowAlloc();
        v99[0] = v44;
        *v43 = 136446210;
        v45 = sub_2CCC80();
        v47 = sub_3F08(v45, v46, v99);

        *(v43 + 4) = v47;
        _os_log_impl(&dword_0, v41, v42, "PlayMediaAppResolver#resolveBundleIdentifier %{public}s app selection attempted but no bundle returned... disambiguating", v43, 0xCu);
        sub_306C(v44);
      }

      (*(v16 + 8))(v20, v39);
      v48 = v87;
      v49 = v86;
      v50 = v85;
      v51 = v88;
      v52 = (v88 + *(*v88 + class metadata base offset for CommonAppResolver + 48));
      v87 = v52[3];
      v85 = v52[4];
      v86 = sub_35E0(v52, v87);
      sub_334A0(0, &qword_34FCC0, INPlayMediaIntent_ptr);
      v99[0] = v92;
      (*(v49 + 104))(v50, enum case for AcceptedSpeakerIdConfidence.executeOnCompanionConfidence(_:), v48);
      sub_2CCB50();
      (*(v49 + 8))(v50, v48);
      v53 = v91;
      v54 = v51;
      v55 = v90;
      v56 = v94;
      (*(v91 + 16))(v90, v84, v94);
      v57 = (*(v53 + 80) + 40) & ~*(v53 + 80);
      v58 = swift_allocObject();
      v59 = v93;
      *(v58 + 2) = v54;
      *(v58 + 3) = v59;
      *(v58 + 4) = v95;
      (*(v53 + 32))(&v58[v57], v55, v56);

      sub_2CC6C0();
    }

    else
    {
      v68 = a1;
      v69 = v88;
      sub_EEAC(v88 + *(*v88 + class metadata base offset for CommonAppResolver + 40), &v100);
      sub_EEAC(v69 + *(*v69 + class metadata base offset for CommonAppResolver + 24), v99);
      v70 = *(*v69 + class metadata base offset for CommonAppResolver + 32);
      swift_beginAccess();
      sub_EEAC(v69 + v70, v98);
      v71 = [v92 privatePlayMediaIntentData];
      v72 = v95;
      v73 = v94;
      if (v71)
      {
        v74 = v71;
        v75 = [v71 audioSearchResults];

        if (v75)
        {
          sub_334A0(0, &qword_356F50, INMediaItem_ptr);
          sub_2CE410();
        }
      }

      v97 = 0;
      memset(v96, 0, sizeof(v96));
      v76 = v91;
      v77 = v90;
      (*(v91 + 16))(v90, v68, v73);
      v78 = (*(v76 + 80) + 16) & ~*(v76 + 80);
      v79 = (v89 + v78 + 7) & 0xFFFFFFFFFFFFFFF8;
      v80 = swift_allocObject();
      (*(v76 + 32))(v80 + v78, v77, v73);
      v81 = (v80 + v79);
      *v81 = v93;
      v81[1] = v72;

      sub_2CEAB0();

      sub_30B8(v96, &qword_34E748, &qword_2D26D0);
      sub_306C(v98);
      sub_306C(v99);
      return sub_306C(&v100);
    }
  }
}

uint64_t sub_E762C(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4, uint64_t a5)
{
  v77 = a5;
  v78 = a4;
  v72 = a2;
  v76 = type metadata accessor for BundleResolutionResult();
  v7 = *(*(v76 - 8) + 64);
  __chkstk_darwin(v76);
  v75 = (&v64 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_2CC820();
  v73 = *(v9 - 8);
  v74 = v9;
  v10 = *(v73 + 64);
  __chkstk_darwin(v9);
  v71 = &v64 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = sub_2CBF80();
  v68 = *(v69 - 8);
  v12 = *(v68 + 64);
  __chkstk_darwin(v69);
  v65 = &v64 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_20410(&qword_34DD30, &unk_2D1BC0);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = &v64 - v16;
  v84 = sub_2CB7D0();
  v18 = *(v84 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin(v84);
  v21 = &v64 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = sub_2CE000();
  v22 = *(v70 - 8);
  v23 = *(v22 + 64);
  __chkstk_darwin(v70);
  v25 = &v64 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = *(a1 + 16);
  v27 = _swiftEmptyArrayStorage;
  v79 = v17;
  v80 = a3;
  if (v26)
  {
    v66 = &v64 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
    v67 = v22;
    v85[0] = _swiftEmptyArrayStorage;
    sub_2DBFC(0, v26, 0);
    v27 = v85[0];
    v29 = *(v18 + 16);
    v28 = v18 + 16;
    v30 = a1 + ((*(v28 + 64) + 32) & ~*(v28 + 64));
    v81 = *(v28 + 56);
    v82 = v29;
    v83 = v28;
    v31 = (v28 - 8);
    do
    {
      v32 = v84;
      v82(v21, v30, v84);
      v33 = sub_2CB7B0();
      v35 = v34;
      (*v31)(v21, v32);
      v85[0] = v27;
      v37 = v27[2];
      v36 = v27[3];
      if (v37 >= v36 >> 1)
      {
        sub_2DBFC((v36 > 1), v37 + 1, 1);
        v27 = v85[0];
      }

      v27[2] = v37 + 1;
      v38 = &v27[2 * v37];
      v38[4] = v33;
      v38[5] = v35;
      v30 += v81;
      --v26;
    }

    while (v26);
    v17 = v79;
    a3 = v80;
    v22 = v67;
    v25 = v66;
  }

  v85[0] = v27;
  sub_EEDBC();
  v39 = v85[0];
  v40 = v70;
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v41 = sub_3ED0(v40, static Logger.default);
  swift_beginAccess();
  (*(v22 + 16))(v25, v41, v40);

  v42 = sub_2CDFE0();
  v43 = sub_2CE690();

  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v85[0] = v45;
    *v44 = 136315138;
    v46 = sub_2CE420();
    v48 = v25;
    v49 = sub_3F08(v46, v47, v85);

    *(v44 + 4) = v49;
    _os_log_impl(&dword_0, v42, v43, "PlayMediaAppResolutionService#resolveBundleIdentifier disambiguating apps: %s", v44, 0xCu);
    sub_306C(v45);
    v17 = v79;

    (*(v22 + 8))(v48, v40);
    a3 = v80;
  }

  else
  {

    (*(v22 + 8))(v25, v40);
  }

  sub_2CC0E0();
  v50 = &enum case for DisambiguateItemsReason.predictionUncertainty(_:);
  if (sub_2CC0D0())
  {
    sub_2CC0B0();

    v51 = v68;
    v52 = v69;
    if ((*(v68 + 48))(v17, 1, v69))
    {
      sub_30B8(v17, &qword_34DD30, &unk_2D1BC0);
    }

    else
    {
      v53 = v65;
      (*(v51 + 16))(v65, v17, v52);
      sub_30B8(v17, &qword_34DD30, &unk_2D1BC0);
      v54 = v52;
      v55 = sub_2CBF60();
      (*(v51 + 8))(v53, v54);
      if (v55)
      {
        v50 = &enum case for DisambiguateItemsReason.newUser(_:);
      }
    }
  }

  sub_EEAC(v72 + qword_350440, v85);
  sub_35E0(v85, v85[3]);
  v56 = v73;
  v57 = *v50;
  v58 = v71;
  v59 = v74;
  (*(v73 + 104))(v71, v57, v74);
  v60 = *(v39 + 16);
  sub_2CCAA0();
  (*(v56 + 8))(v58, v59);
  sub_306C(v85);
  v61 = *(sub_20410(&qword_3504D0, &qword_2D3B28) + 48);
  v62 = v75;
  *v75 = v39;
  sub_2CCA40();
  swift_storeEnumTagMultiPayload();
  a3(v62);
  return sub_F1AE0(v62);
}

uint64_t sub_E7DC0(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *), uint64_t a6)
{
  v45 = a6;
  v46 = a5;
  v44 = a3;
  v42 = a1;
  v43 = type metadata accessor for BundleResolutionResult();
  v8 = *(*(v43 - 8) + 64);
  __chkstk_darwin(v43);
  v10 = (&v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = sub_2CCA70();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_2CE000();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v20 = &v37 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v21 = sub_3ED0(v16, static Logger.default);
  swift_beginAccess();
  (*(v17 + 16))(v20, v21, v16);
  (*(v12 + 16))(v15, a4, v11);

  v22 = sub_2CDFE0();
  LODWORD(v21) = sub_2CE690();

  v40 = v21;
  v41 = v22;
  v23 = os_log_type_enabled(v22, v21);
  v24 = a2;
  v25 = v11;
  if (v23)
  {
    v26 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v47 = v38;
    *v26 = 136446722;
    v27 = sub_2CCC80();
    v39 = v20;
    v28 = a2;
    v30 = sub_3F08(v27, v29, &v47);

    *(v26 + 4) = v30;
    *(v26 + 12) = 2082;
    v37 = v16;
    v31 = v25;
    v32 = v42;
    *(v26 + 14) = sub_3F08(v42, v28, &v47);
    *(v26 + 22) = 1026;
    v24 = v28;
    LODWORD(v30) = sub_2CCA60() & 1;
    (*(v12 + 8))(v15, v31);
    *(v26 + 24) = v30;
    v33 = v41;
    _os_log_impl(&dword_0, v41, v40, "PlayMediaAppResolver#resolveBundleIdentifier %{public}s using inferred bundle: %{public}s, attempted app selection?: %{BOOL,public}d", v26, 0x1Cu);
    swift_arrayDestroy();

    (*(v17 + 8))(v39, v37);
  }

  else
  {
    (*(v12 + 8))(v15, v11);

    (*(v17 + 8))(v20, v16);
    v32 = v42;
  }

  v34 = *(sub_20410(&qword_34E740, &unk_2D68F0) + 48);
  *v10 = v32;
  v10[1] = v24;
  v35 = sub_2CC5F0();
  (*(*(v35 - 8) + 16))(v10 + v34, v44, v35);
  swift_storeEnumTagMultiPayload();

  v46(v10);
  return sub_F1AE0(v10);
}

uint64_t sub_E822C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v68 = a8;
  v75 = a5;
  v76 = a7;
  v74 = a6;
  v72 = a4;
  v73 = sub_2CCA70();
  v71 = *(v73 - 8);
  v11 = *(v71 + 64);
  __chkstk_darwin(v73);
  v69 = v12;
  v70 = &v64 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_2CE000();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = __chkstk_darwin(v13);
  v18 = &v64 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = &v64 - v19;
  v21 = swift_allocObject();
  *(v21 + 16) = a1;
  v66 = (v21 + 16);
  *(v21 + 24) = a2;

  v22 = sub_2CBE40();
  v24 = &off_34B000;
  v77 = v14;
  if (v22 == a1 && v23 == a2)
  {
  }

  else
  {
    v25 = sub_2CEEA0();

    v26 = 0;
    if ((v25 & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  v67 = v18;
  v27 = *(*a3 + class metadata base offset for CommonAppResolver + 32);
  swift_beginAccess();
  sub_EEAC(a3 + v27, v78);
  sub_35E0(v78, v78[3]);
  v28 = sub_2CC490();
  if (v29)
  {
    v30 = v28;
    v31 = v29;
    sub_306C(v78);
    v14 = v77;
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v32 = sub_3ED0(v13, static Logger.default);
    swift_beginAccess();
    (*(v14 + 16))(v20, v32, v13);

    v33 = sub_2CDFE0();
    v34 = v13;
    v35 = sub_2CE670();

    if (os_log_type_enabled(v33, v35))
    {
      v36 = swift_slowAlloc();
      v37 = v30;
      v38 = swift_slowAlloc();
      v78[0] = v38;
      *v36 = 136315138;
      *(v36 + 4) = sub_3F08(v37, v31, v78);
      _os_log_impl(&dword_0, v33, v35, "PlayMediaAppResolver#resolveBundleIdentifier using overriden Classical Bundle ID (%s)", v36, 0xCu);
      sub_306C(v38);
      v30 = v37;

      v14 = v77;
    }

    (*(v14 + 8))(v20, v34);
    v13 = v34;
    v18 = v67;
    v39 = *(v21 + 24);
    *(v21 + 16) = v30;
    *(v21 + 24) = v31;

    v26 = 1;
    v24 = &off_34B000;
  }

  else
  {
    sub_306C(v78);
    v26 = 1;
    v14 = v77;
    v18 = v67;
  }

LABEL_12:
  LODWORD(v67) = v26;
  if (v24[491] != -1)
  {
    swift_once();
  }

  v40 = sub_3ED0(v13, static Logger.default);
  swift_beginAccess();
  (*(v14 + 16))(v18, v40, v13);

  v41 = sub_2CDFE0();
  v42 = sub_2CE690();
  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    v79[0] = swift_slowAlloc();
    *v43 = 136446466;
    v44 = sub_2CCC80();
    v46 = sub_3F08(v44, v45, v79);
    v47 = v21;
    v65 = v13;
    v48 = v46;

    *(v43 + 4) = v48;
    *(v43 + 12) = 2082;
    swift_beginAccess();
    v49 = *(v21 + 16);
    v50 = *(v21 + 24);

    v51 = sub_3F08(v49, v50, v79);

    *(v43 + 14) = v51;
    _os_log_impl(&dword_0, v41, v42, "PlayMediaAppResolver#resolveBundleIdentifier %{public}s overriding with internal bundle: %{public}s", v43, 0x16u);
    swift_arrayDestroy();

    (*(v77 + 8))(v18, v65);
  }

  else
  {

    (*(v14 + 8))(v18, v13);
    v47 = v21;
  }

  v52 = (a3 + *(*a3 + class metadata base offset for CommonAppResolver + 48));
  v53 = v52[3];
  v77 = v52[4];
  v66 = sub_35E0(v52, v53);
  v65 = sub_334A0(0, &qword_34FCC0, INPlayMediaIntent_ptr);
  v54 = v71;
  v55 = v70;
  v56 = v73;
  (*(v71 + 16))(v70, v68, v73);
  v57 = a3;
  v58 = (*(v54 + 80) + 72) & ~*(v54 + 80);
  v59 = swift_allocObject();
  *(v59 + 16) = v47;
  *(v59 + 24) = v67;
  v61 = v75;
  v60 = v76;
  *(v59 + 32) = v72;
  *(v59 + 40) = v61;
  v62 = v74;
  *(v59 + 48) = v57;
  *(v59 + 56) = v62;
  *(v59 + 64) = v60;
  (*(v54 + 32))(v59 + v58, v55, v56);

  sub_2CC6D0();
}

uint64_t sub_E8A08(uint64_t a1, uint64_t a2, int a3, uint64_t a4, unint64_t a5, uint64_t a6, void (*a7)(uint64_t), uint64_t a8, uint64_t a9)
{
  v130 = a8;
  v131 = a7;
  v122 = a6;
  v127 = a5;
  v119 = a4;
  v126 = a3;
  v134 = a2;
  v125 = sub_2CC820();
  v124 = *(v125 - 8);
  v10 = *(v124 + 64);
  __chkstk_darwin(v125);
  v123 = &v117 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v129 = type metadata accessor for BundleResolutionResult();
  v12 = *(*(v129 - 8) + 64);
  __chkstk_darwin(v129);
  v128 = (&v117 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v136 = sub_2CE000();
  v135 = *(v136 - 8);
  v14 = *(v135 + 64);
  v15 = __chkstk_darwin(v136);
  v132 = &v117 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v121 = &v117 - v18;
  v19 = __chkstk_darwin(v17);
  v133 = &v117 - v20;
  __chkstk_darwin(v19);
  v118 = &v117 - v21;
  v142 = sub_2CB7D0();
  v22 = *(v142 - 8);
  v23 = *(v22 + 64);
  v24 = __chkstk_darwin(v142);
  v137 = &v117 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v27 = &v117 - v26;
  v28 = *(a1 + 16);
  v139 = v22;
  v140 = v28;
  v138 = a1;
  if (v28)
  {
    v30 = *(v22 + 16);
    v29 = v22 + 16;
    v141 = v30;
    v31 = a1 + ((*(v29 + 64) + 32) & ~*(v29 + 64));
    v32 = *(v29 + 56);
    v33 = _swiftEmptyArrayStorage;
    do
    {
      v34 = v142;
      v141(v27, v31, v142);
      v35 = sub_2CB7B0();
      v37 = v36;
      (*(v29 - 8))(v27, v34);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v33 = sub_B90C4(0, *(v33 + 2) + 1, 1, v33);
      }

      v39 = *(v33 + 2);
      v38 = *(v33 + 3);
      v40 = v33;
      if (v39 >= v38 >> 1)
      {
        v40 = sub_B90C4((v38 > 1), v39 + 1, 1, v33);
      }

      *(v40 + 2) = v39 + 1;
      v33 = v40;
      v41 = &v40[16 * v39];
      *(v41 + 4) = v35;
      *(v41 + 5) = v37;
      v31 += v32;
      --v28;
    }

    while (v28);
  }

  else
  {
    v33 = _swiftEmptyArrayStorage;
  }

  v120 = a9;
  v42 = v134;
  v43 = swift_beginAccess();
  v44 = *(v42 + 24);
  v145 = *(v42 + 16);
  v146 = v44;
  __chkstk_darwin(v43);
  *(&v117 - 2) = &v145;

  v45 = sub_13964(sub_13A68, (&v117 - 4), v33);

  v46 = v126 | v45;
  if (v126)
  {
    v47 = v136;
    if ((v45 & 1) == 0)
    {
      v145 = sub_2CBE10();
      v146 = v48;
      __chkstk_darwin(v145);
      *(&v117 - 2) = &v145;
      v49 = sub_13964(sub_334E8, (&v117 - 4), v33);

      v50 = v135;
      if (v49)
      {
        if (qword_34BF58 != -1)
        {
          swift_once();
        }

        v51 = sub_3ED0(v47, static Logger.default);
        swift_beginAccess();
        v52 = v118;
        (*(v50 + 16))(v118, v51, v47);
        v53 = sub_2CDFE0();
        v54 = sub_2CE670();
        if (os_log_type_enabled(v53, v54))
        {
          v55 = swift_slowAlloc();
          *v55 = 0;
          _os_log_impl(&dword_0, v53, v54, "PlayMediaAppResolver#resolveBundleIdentifier Classical was selected, but is not installed. Falling back to Music app", v55, 2u);
        }

        (*(v50 + 8))(v52, v47);
        v56 = sub_2CBE10();
        v58 = v57;
        v46 = 1;
        swift_beginAccess();
        v59 = *(v42 + 24);
        *(v42 + 16) = v56;
        *(v42 + 24) = v58;
      }

      else
      {
        v46 = 0;
      }
    }
  }

  v141 = v46;
  v60 = 0;
  v61 = v139;
  do
  {
    v62 = v60;
    if (v140 == v60)
    {
      break;
    }

    v63 = v137;
    v64 = v142;
    v61[2](v137, v138 + ((*(v61 + 80) + 32) & ~*(v61 + 80)) + v61[9] * v60++, v142);
    sub_2CB7B0();
    v65 = sub_2CBDB0();

    (v61[1])(v63, v64);
  }

  while ((v65 & 1) != 0);
  v142 = v33;
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v66 = v136;
  v67 = sub_3ED0(v136, static Logger.default);
  swift_beginAccess();
  v68 = v135;
  v69 = v133;
  v139 = *(v135 + 16);
  (v139)(v133, v67, v66);

  v70 = sub_2CDFE0();
  v71 = sub_2CE670();

  if (os_log_type_enabled(v70, v71))
  {
    v72 = v140 == v62;
    v73 = swift_slowAlloc();
    v74 = swift_slowAlloc();
    v144 = v74;
    *v73 = 67109634;
    *(v73 + 4) = v72;
    *(v73 + 8) = 1024;
    v75 = v141;
    *(v73 + 10) = v141 & 1;
    *(v73 + 14) = 2080;
    v76 = sub_2CE420();
    v78 = sub_3F08(v76, v77, &v144);
    v66 = v136;

    *(v73 + 16) = v78;
    _os_log_impl(&dword_0, v70, v71, "PlayMediaAppResolver#resolveBundleIdentifier no3pBundle?:%{BOOL}d containsSelected1pBundle?:%{BOOL}d. Bundles: %s", v73, 0x18u);
    sub_306C(v74);
    v79 = v135;

    v80 = *(v79 + 8);
    v80(v133, v66);
    v81 = v140;
    v82 = v127;
    v83 = v132;
  }

  else
  {

    v80 = *(v68 + 8);
    v80(v69, v66);
    v82 = v127;
    v83 = v132;
    v81 = v140;
    v75 = v141;
  }

  if (((v81 != v62) & ~v75) != 0)
  {
    (v139)(v83, v67, v66);
    v93 = v134;

    v94 = sub_2CDFE0();
    v95 = sub_2CE680();

    if (os_log_type_enabled(v94, v95))
    {
      v96 = v82;
      v97 = swift_slowAlloc();
      v143 = swift_slowAlloc();
      *v97 = 136446722;
      v98 = sub_2CCC80();
      v100 = sub_3F08(v98, v99, &v143);

      *(v97 + 4) = v100;
      *(v97 + 12) = 2082;
      swift_beginAccess();
      v101 = *(v93 + 16);
      v102 = *(v93 + 24);

      v103 = sub_3F08(v101, v102, &v143);

      *(v97 + 14) = v103;
      *(v97 + 22) = 2082;
      *(v97 + 24) = sub_3F08(v119, v96, &v143);
      _os_log_impl(&dword_0, v94, v95, "PlayMediaAppResolver#resolveBundleIdentifier %{public}s inferred 1p bundle: %{public}s based on selection of: %{public}s and intent contents, but it is not available on device... disambiguating.", v97, 0x20u);
      swift_arrayDestroy();

      v104 = v132;
      v105 = v136;
    }

    else
    {

      v104 = v83;
      v105 = v66;
    }

    v80(v104, v105);
    v106 = v125;
    v107 = v124;
    v108 = v123;
    v109 = v142;
    v110 = *(v122 + qword_350440 + 32);
    sub_35E0((v122 + qword_350440), *(v122 + qword_350440 + 24));
    (*(v107 + 104))(v108, enum case for DisambiguateItemsReason.unavailableInferred1pBundle(_:), v106);
    v111 = *(v109 + 16);
    sub_2CCAA0();
    (*(v107 + 8))(v108, v106);
    v112 = *(sub_20410(&qword_3504D0, &qword_2D3B28) + 48);
    v92 = v128;
    *v128 = v109;
    v113 = enum case for ResolutionResultType.AppNotFoundDisambiguation(_:);
    v114 = sub_2CC5F0();
    (*(*(v114 - 8) + 104))(v92 + v112, v113, v114);
  }

  else
  {

    v84 = v121;
    (v139)(v121, v67, v66);
    v85 = sub_2CDFE0();
    v86 = sub_2CE670();
    v87 = os_log_type_enabled(v85, v86);
    v88 = v134;
    if (v87)
    {
      v89 = swift_slowAlloc();
      *v89 = 0;
      _os_log_impl(&dword_0, v85, v86, "PlayMediaAppResolver#resolveBundleIdentifier validated firstPartyResultsBundleIdentifier available", v89, 2u);
    }

    v80(v84, v66);
    v90 = *(sub_20410(&qword_34E740, &unk_2D68F0) + 48);
    swift_beginAccess();
    v91 = *(v88 + 24);
    v92 = v128;
    *v128 = *(v88 + 16);
    *(v92 + 8) = v91;

    sub_2CCA40();
  }

  v115 = v131;
  swift_storeEnumTagMultiPayload();
  v115(v92);
  return sub_F1AE0(v92);
}

uint64_t sub_E9758(void *a1, void (*a2)(void, void), uint64_t a3)
{
  v4 = v3;
  v8 = sub_2CE000();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [a1 privatePlayMediaIntentData];
  if (v13 && (v14 = v13, v15 = [v13 audioSearchResults], v14, v15))
  {
    sub_334A0(0, &qword_356F50, INMediaItem_ptr);
    v16 = sub_2CE410();
  }

  else
  {
    v16 = 0;
  }

  if (_s23AudioFlowDelegatePlugin22InternalSignalsManagerC10doesIntent_4haveSbSo8INIntentC_SaySSGtFZ_0(a1, &off_32FED0) && sub_E9E6C())
  {
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v18 = sub_3ED0(v8, static Logger.default);
    swift_beginAccess();
    (*(v9 + 16))(v12, v18, v8);
    v19 = sub_2CDFE0();
    v20 = sub_2CE670();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v29 = a2;
      *v21 = 0;
      _os_log_impl(&dword_0, v19, v20, "PlayMediaAppResolver#determineFirstPartyBundleIdentifier we have signal from search results to consider using Classical for playback", v21, 2u);
      a2 = v29;
    }

    (*(v9 + 8))(v12, v8);
    v22 = *(v4 + qword_350460 + 32);
    sub_35E0((v4 + qword_350460), *(v4 + qword_350460 + 24));
    v23 = swift_allocObject();
    v23[2] = v4;
    v23[3] = a2;
    v23[4] = a3;
    v23[5] = a1;
    v23[6] = v16;

    v24 = a1;
    sub_2CC330();
  }

  else
  {
    v31.value._rawValue = v16;
    v31.is_nil = 0;
    v26 = sub_2CEAD0(v31, v17);
    v28 = v27;

    a2(v26, v28);
  }
}

uint64_t sub_E9AA4(int a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4, void *a5, void *a6)
{
  if (a1 == 4 || a1 == 1)
  {
    v10 = *(a2 + qword_350460 + 32);
    sub_35E0((a2 + qword_350460), *(a2 + qword_350460 + 24));
    v11 = swift_allocObject();
    v11[2] = a3;
    v11[3] = a4;
    v11[4] = a5;
    v11[5] = a6;

    v12 = a5;
    sub_2CC2F0();
  }

  else
  {
    v16.value._rawValue = a6;
    v16.is_nil = 1;
    v14 = sub_2CEAD0(v16, a3);
    a3(v14);
  }
}

uint64_t sub_E9BCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void (*a8)(uint64_t), uint64_t a9, uint64_t a10, void *a11)
{
  v15 = sub_2CE000();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v19 = &v32 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a4 && !a7)
  {
    if (sub_2CBE10() == a3 && v27 == a4)
    {

      v29 = 0;
    }

    else
    {
      v30 = sub_2CEEA0();

      v29 = v30 ^ 1;
    }

    v35.is_nil = v29 & 1;
    v35.value._rawValue = a11;
    v31 = sub_2CEAD0(v35, v28);
    a8(v31);
  }

  else
  {
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v20 = sub_3ED0(v15, static Logger.default);
    swift_beginAccess();
    (*(v16 + 16))(v19, v20, v15);
    v21 = sub_2CDFE0();
    v22 = sub_2CE690();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_0, v21, v22, "PlayMediaAppResolver#determineFirstPartyBundleIdentifier encountered error getting now playing bundle. Falling back to allow use of Classical", v23, 2u);
    }

    (*(v16 + 8))(v19, v15);
    v34.value._rawValue = a11;
    v34.is_nil = 1;
    v25 = sub_2CEAD0(v34, v24);
    a8(v25);
  }
}

BOOL sub_E9E6C()
{
  v1 = sub_2CCCE0();
  v2 = *(v1 - 8);
  v3 = v2[8];
  v4 = __chkstk_darwin(v1);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v22 - v7;
  v23 = v0;
  v9 = *(v0 + qword_350468 + 32);
  sub_35E0((v0 + qword_350468), *(v0 + qword_350468 + 24));
  sub_2CBE40();
  sub_2CB950();

  v10 = enum case for TCCStatus.notYetPresented(_:);
  v11 = v2[13];
  v11(v6, enum case for TCCStatus.notYetPresented(_:), v1);
  v12 = sub_2CCCD0();
  v13 = v2[1];
  v13(v6, v1);
  if (v12)
  {
    v14 = v23 + *(*v23 + class metadata base offset for CommonAppResolver + 32);
    swift_beginAccess();
    v22 = v13;
    v15 = *(v14 + 32);
    sub_F9A0(v14, *(v14 + 24));
    v13 = v22;
    sub_2CC4F0();
    swift_endAccess();
  }

  v11(v6, enum case for TCCStatus.accepted(_:), v1);
  v16 = sub_2CCCD0();
  v13(v6, v1);
  if (v16 & 1) != 0 || (v11(v6, v10, v1), v17 = sub_2CCCD0(), v13(v6, v1), (v17))
  {
    v13(v8, v1);
    return 1;
  }

  else
  {
    v19 = v23;
    v20 = *(*v23 + class metadata base offset for CommonAppResolver + 32);
    swift_beginAccess();
    sub_EEAC(v19 + v20, v24);
    sub_35E0(v24, v24[3]);
    v21 = sub_2CC4E0();
    v13(v8, v1);
    sub_306C(v24);
    return v21 < 2;
  }
}

uint64_t sub_EA1B0()
{
  v0 = sub_20410(&qword_3504E0, &qword_2D3B40);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_2CB9A0();
  qword_35F6C0 = result;
  return result;
}

uint64_t PlayMediaAppResolver.postResolve(for:app:resolutionResultType:completion:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v52 = a3;
  v49 = a1;
  v50 = a2;
  v45 = sub_2CE150();
  v48 = *(v45 - 8);
  v7 = *(v48 + 64);
  __chkstk_darwin(v45);
  v44 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2CE180();
  v46 = *(v9 - 8);
  v47 = v9;
  v10 = *(v46 + 64);
  __chkstk_darwin(v9);
  v43 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_2CDFD0();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = __chkstk_darwin(v12);
  v16 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v18 = &v38 - v17;
  v19 = swift_allocObject();
  *(v19 + 16) = a4;
  *(v19 + 24) = a5;
  v53 = v19;
  v20 = qword_34BF98;

  if (v20 != -1)
  {
    swift_once();
  }

  v21 = qword_35F760;
  sub_2CDFB0();
  (*(v13 + 16))(v16, v18, v12);
  v22 = *(v13 + 80);
  v41 = v18;
  v42 = v13;
  v23 = (v22 + 33) & ~v22;
  v24 = (v14 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
  v25 = swift_allocObject();
  *(v25 + 16) = "postResolve";
  *(v25 + 24) = 11;
  *(v25 + 32) = 2;
  (*(v13 + 32))(v25 + v23, v16, v12);
  v26 = (v25 + v24);
  v27 = v53;
  *v26 = sub_F00C8;
  v26[1] = v27;

  sub_2CE9E0();
  sub_2CDF90();
  v28 = swift_allocObject();
  *(v28 + 16) = sub_F00F4;
  *(v28 + 24) = v25;
  swift_retain_n();

  v39 = sub_2CBB80();
  v29 = swift_allocObject();
  v40 = v12;
  v30 = v50;
  v31 = v51;
  *(v29 + 16) = v50;
  *(v29 + 24) = v31;
  aBlock[4] = sub_F01D8;
  aBlock[5] = v29;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_A4294;
  aBlock[3] = &unk_334B38;
  v32 = _Block_copy(aBlock);

  v33 = v43;
  sub_2CE160();
  v54 = _swiftEmptyArrayStorage;
  sub_F1A8C(&qword_34FF20, &type metadata accessor for DispatchWorkItemFlags);
  sub_20410(&qword_34DD48, &qword_2D5F80);
  sub_7DDE8();
  v35 = v44;
  v34 = v45;
  sub_2CEC10();
  v36 = v39;
  sub_2CE9C0();
  _Block_release(v32);

  (*(v48 + 8))(v35, v34);
  (*(v46 + 8))(v33, v47);

  sub_F01F8(v31, v49, v30, v52, sub_F019C, v28);

  (*(v42 + 8))(v41, v40);
}

void sub_EA768()
{
  v0 = sub_2CE000();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = __chkstk_darwin(v0);
  v5 = &v20[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v3);
  v7 = &v20[-v6];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v10 = sub_3ED0(v0, static Logger.default);
    swift_beginAccess();
    (*(v1 + 16))(v5, v10, v0);
    v11 = sub_2CDFE0();
    v12 = sub_2CE660();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_0, v11, v12, "PlayMediaAppResolver#postResolve background lazy triggering 1st party user context store...", v13, 2u);
    }

    (*(v1 + 8))(v5, v0);
    v14 = *(v9 + qword_350448 + 32);
    sub_35E0((v9 + qword_350448), *(v9 + qword_350448 + 24));
    v15 = sub_2CC110();
    sub_2CC740();
  }

  else
  {
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v16 = sub_3ED0(v0, static Logger.default);
    swift_beginAccess();
    (*(v1 + 16))(v7, v16, v0);
    v17 = sub_2CDFE0();
    v18 = sub_2CE680();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_0, v17, v18, "PlayMediaAppResolver#postResolve self deallocated prematurely", v19, 2u);
    }

    (*(v1 + 8))(v7, v0);
  }
}

uint64_t sub_EAAA8(char a1)
{
  v2 = sub_2CE000();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v7 = sub_3ED0(v2, static Logger.default);
  swift_beginAccess();
  (*(v3 + 16))(v6, v7, v2);
  v8 = sub_2CDFE0();
  v9 = sub_2CE660();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 67109120;
    *(v10 + 4) = a1 & 1;
    _os_log_impl(&dword_0, v8, v9, "PlayMediaAppResolver#postResolve user context update with success: %{BOOL}d", v10, 8u);
  }

  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_EAC68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v86 = a4;
  v85 = a3;
  v101 = a2;
  v5 = sub_2CE150();
  v91 = *(v5 - 8);
  v92 = v5;
  v6 = *(v91 + 64);
  __chkstk_darwin(v5);
  v89 = &v77 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = sub_2CE180();
  v88 = *(v90 - 8);
  v8 = *(v88 + 64);
  __chkstk_darwin(v90);
  v87 = &v77 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_20410(&qword_3504F8, &qword_2D3B48);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v93 = &v77 - v12;
  v13 = sub_2CC100();
  v97 = *(v13 - 8);
  v14 = *(v97 + 64);
  v15 = __chkstk_darwin(v13);
  v84 = &v77 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = v16;
  __chkstk_darwin(v15);
  v95 = &v77 - v17;
  v18 = sub_20410(&qword_350500, &unk_2D3B50);
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  v98 = (&v77 - v20);
  v21 = sub_2C8E80();
  v99 = *(v21 - 8);
  v100 = v21;
  v22 = *(v99 + 64);
  v23 = __chkstk_darwin(v21);
  v82 = &v77 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = v24;
  __chkstk_darwin(v23);
  v26 = &v77 - v25;
  v27 = sub_2CCC30();
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  __chkstk_darwin(v27);
  v31 = &v77 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_2CE000();
  v33 = *(v32 - 8);
  v34 = *(v33 + 64);
  __chkstk_darwin(v32);
  v36 = &v77 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v37 = sub_3ED0(v32, static Logger.default);
  swift_beginAccess();
  (*(v33 + 16))(v36, v37, v32);
  v38 = *(v28 + 16);
  v94 = a1;
  v38(v31, a1, v27);
  v39 = v32;
  v40 = sub_2CDFE0();
  v41 = sub_2CE660();
  v42 = os_log_type_enabled(v40, v41);
  v96 = v26;
  if (v42)
  {
    v43 = swift_slowAlloc();
    v80 = v13;
    v44 = v43;
    v78 = swift_slowAlloc();
    aBlock[0] = v78;
    *v44 = 136315138;
    sub_F1A8C(&qword_350508, &type metadata accessor for PlayMediaAppSelectionRecordSignalsResult);
    v79 = v39;
    v45 = sub_2CEE70();
    v47 = v46;
    (*(v28 + 8))(v31, v27);
    v48 = sub_3F08(v45, v47, aBlock);

    *(v44 + 4) = v48;
    _os_log_impl(&dword_0, v40, v41, "PlayMediaAppResolver#postResolve app selection signals recorded: %s", v44, 0xCu);
    sub_306C(v78);

    v13 = v80;

    (*(v33 + 8))(v36, v79);
  }

  else
  {

    (*(v28 + 8))(v31, v27);
    (*(v33 + 8))(v36, v39);
  }

  v49 = *(v101 + qword_350458 + 32);
  sub_35E0((v101 + qword_350458), *(v101 + qword_350458 + 24));
  result = sub_2CBE60();
  v52 = v99;
  v51 = v100;
  if (v53)
  {
    v54 = v98;
    sub_2C8E40();

    if ((*(v52 + 48))(v54, 1, v51) == 1)
    {
      v55 = &qword_350500;
      v56 = &unk_2D3B50;
      return sub_30B8(v54, v55, v56);
    }

    v57 = v96;
    v98 = *(v52 + 32);
    v98(v96, v54, v51);
    v58 = v93;
    sub_2CCC20();
    v54 = v58;
    v59 = v97;
    if ((*(v97 + 48))(v54, 1, v13) == 1)
    {
      (*(v52 + 8))(v57, v51);
      v55 = &qword_3504F8;
      v56 = &qword_2D3B48;
      return sub_30B8(v54, v55, v56);
    }

    v80 = *(v59 + 32);
    v60 = v95;
    v80(v95, v54, v13);
    v94 = sub_2CBA10();
    v61 = v59;
    v62 = *(v59 + 16);
    v63 = v84;
    v62(v84, v60, v13);
    v64 = v82;
    (*(v52 + 16))(v82, v57, v51);
    v65 = (*(v61 + 80) + 24) & ~*(v61 + 80);
    v66 = (v83 + v65 + 7) & 0xFFFFFFFFFFFFFFF8;
    v67 = (*(v52 + 80) + v66 + 16) & ~*(v52 + 80);
    v68 = swift_allocObject();
    *(v68 + 16) = v101;
    v80((v68 + v65), v63, v13);
    v69 = (v68 + v66);
    v70 = v86;
    *v69 = v85;
    v69[1] = v70;
    v71 = v100;
    v98((v68 + v67), v64, v100);
    aBlock[4] = sub_F19A8;
    aBlock[5] = v68;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_A4294;
    aBlock[3] = &unk_334D80;
    v72 = _Block_copy(aBlock);

    v73 = v87;
    sub_2CE160();
    v102 = _swiftEmptyArrayStorage;
    sub_F1A8C(&qword_34FF20, &type metadata accessor for DispatchWorkItemFlags);
    sub_20410(&qword_34DD48, &qword_2D5F80);
    sub_7DDE8();
    v74 = v89;
    v75 = v92;
    sub_2CEC10();
    v76 = v94;
    sub_2CE9C0();
    _Block_release(v72);

    (*(v91 + 8))(v74, v75);
    (*(v88 + 8))(v73, v90);
    (*(v97 + 8))(v95, v13);
    (*(v99 + 8))(v96, v71);
  }

  return result;
}

uint64_t sub_EB6EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v33 = a4;
  v34 = a5;
  v31 = a2;
  v32 = a3;
  v30 = a1;
  v5 = sub_20410(&qword_350500, &unk_2D3B50);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v30 - v7;
  v9 = sub_2CC100();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_2CE000();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = &v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v19 = sub_3ED0(v14, static Logger.default);
  swift_beginAccess();
  (*(v15 + 16))(v18, v19, v14);
  v20 = sub_2CDFE0();
  v21 = sub_2CE670();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&dword_0, v20, v21, "PlayMediaAppResolver#postResolve: Sending A/B evaluation SELF message", v22, 2u);
  }

  v23 = (*(v15 + 8))(v18, v14);
  v24 = *(v30 + qword_350470);
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  __chkstk_darwin(v23);
  v28 = &v30 - v27;
  (*(v10 + 16))(v13, v31, v9);
  sub_2CB930();
  sub_2CB940();
  sub_30B8(v8, &qword_350500, &unk_2D3B50);
  return (*(v25 + 8))(v28, v24);
}

uint64_t sub_EBA74(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v22 = a2;
  v7 = *v3;
  v8 = sub_2CE000();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v13 = sub_3ED0(v8, static Logger.default);
  swift_beginAccess();
  (*(v9 + 16))(v12, v13, v8);
  v14 = sub_2CDFE0();
  v15 = sub_2CE670();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_0, v14, v15, "PlayMediaAppResolver#forcedResolution...", v16, 2u);
  }

  (*(v9 + 8))(v12, v8);
  v17 = *(*v4 + class metadata base offset for CommonAppResolver + 32);
  swift_beginAccess();
  sub_EEAC(v4 + v17, v23);
  sub_35E0(v23, v23[3]);
  LOBYTE(v17) = sub_2CC500();
  sub_306C(v23);
  v18 = *(v4 + qword_350440 + 32);
  sub_35E0((v4 + qword_350440), *(v4 + qword_350440 + 24));
  v19 = swift_allocObject();
  *(v19 + 16) = v4;
  *(v19 + 24) = a1;
  *(v19 + 32) = v17 & 1;
  *(v19 + 40) = v22;
  *(v19 + 48) = a3;
  *(v19 + 56) = v7;

  v20 = a1;

  sub_2CCA90();
}

uint64_t sub_EBD74(uint64_t a1, void *a2, void *a3, int a4, void (*a5)(uint64_t), void (*a6)(uint64_t), uint64_t a7)
{
  v161 = a7;
  v169 = a6;
  v168 = a5;
  v186 = a4;
  v185 = a3;
  v182 = a2;
  v8 = sub_20410(&qword_3504C8, &unk_2D3B18);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v156 = &v149 - v10;
  v160 = sub_2CC990();
  v159 = *(v160 - 8);
  v11 = *(v159 + 64);
  __chkstk_darwin(v160);
  v158 = &v149 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v179 = sub_2CC7E0();
  v163 = *(v179 - 8);
  v13 = v163[8];
  __chkstk_darwin(v179);
  v162 = &v149 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v181 = sub_2C8E30();
  v177 = *(v181 - 8);
  v15 = *(v177 + 64);
  v16 = __chkstk_darwin(v181);
  v150 = (&v149 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = __chkstk_darwin(v16);
  v184 = &v149 - v19;
  v157 = v20;
  __chkstk_darwin(v18);
  v183 = &v149 - v21;
  v22 = sub_2CCA10();
  v23 = *(v22 - 8);
  v24 = v23[8];
  v25 = __chkstk_darwin(v22);
  v165 = &v149 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __chkstk_darwin(v25);
  v29 = &v149 - v28;
  v30 = __chkstk_darwin(v27);
  v32 = &v149 - v31;
  v154 = v33;
  __chkstk_darwin(v30);
  v35 = &v149 - v34;
  v36 = sub_2CE000();
  v37 = *(v36 - 8);
  v38 = *(v37 + 64);
  v39 = __chkstk_darwin(v36);
  v180 = &v149 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = __chkstk_darwin(v39);
  v149 = &v149 - v42;
  __chkstk_darwin(v41);
  v44 = &v149 - v43;
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v45 = sub_3ED0(v36, static Logger.default);
  swift_beginAccess();
  v188 = v37;
  v46 = *(v37 + 16);
  v173 = v45;
  v187 = v36;
  v172 = v37 + 16;
  v171 = v46;
  v46(v44, v45, v36);
  v47 = v23[2];
  v47(v35, a1, v22);
  v47(v32, a1, v22);
  v153 = v23 + 2;
  v152 = v47;
  v47(v29, a1, v22);
  v178 = v44;
  v48 = sub_2CDFE0();
  v49 = sub_2CE670();
  v50 = os_log_type_enabled(v48, v49);
  v51 = v29;
  v52 = v22;
  v167 = a1;
  v166 = v22;
  v155 = v23;
  if (v50)
  {
    v53 = v23;
    v54 = swift_slowAlloc();
    *v54 = 134218496;
    sub_2CCA00();
    v56 = v55;
    v57 = v53[1];
    v57(v35, v52);
    *(v54 + 4) = v56;
    *(v54 + 12) = 2048;
    sub_2CC9F0();
    v59 = v58;
    v57(v32, v52);
    *(v54 + 14) = v59;
    *(v54 + 22) = 2048;
    v60 = sub_2CC9C0();
    v57(v51, v52);
    *(v54 + 24) = v60;
    _os_log_impl(&dword_0, v48, v49, "PlayMediaAppResolver#forcedResolution rates - disambiguationRate:%f, disambiguationAdditionalRateFirstParty:%f, rateLimitSeconds:%ld", v54, 0x20u);
  }

  else
  {
    v61 = v23[1];
    v61(v51, v22);

    v61(v32, v22);
    v61(v35, v22);
  }

  v62 = *(v188 + 8);
  v188 += 8;
  v170 = v62;
  v62(v178, v187);
  v63 = v182;
  v64 = *(*v182 + class metadata base offset for CommonAppResolver + 32);
  swift_beginAccess();
  sub_EEAC(v63 + v64, v190);
  sub_35E0(v190, v191);
  LODWORD(v176) = sub_2CC550();
  sub_306C(v190);
  LODWORD(v178) = sub_2CE730();
  v65 = sub_2CBD10();
  v67 = v66;
  v68 = sub_2CBD50();
  v70 = v181;
  v71 = v183;
  if (v67)
  {
    if (v68 == v65 && v67 == v69)
    {

      LODWORD(v175) = 1;
    }

    else
    {
      LODWORD(v175) = sub_2CEEA0();
    }
  }

  else
  {

    LODWORD(v175) = 0;
  }

  v73 = sub_EEF48(v72, 0.0, 1.0);
  v75 = v74;
  sub_EEF48(v73, 0.0, 1.0);
  v77 = v76;
  sub_2CCA00();
  v79 = v75 <= v78;
  sub_2C8E20();
  sub_EEAC(v63 + v64, v190);
  sub_35E0(v190, v191);
  v80 = v184;
  sub_2CC530();
  sub_306C(v190);
  sub_2C8DD0();
  v82 = v81;
  v83 = v177 + 8;
  v174 = *(v177 + 8);
  v174(v80, v70);
  v84 = sub_2CC9C0();
  v151 = v82 > v84;
  v85 = v162;
  sub_2CC7D0();
  v86 = sub_2CC7C0();
  (v163[1])(v85, v179);
  v87 = swift_allocObject();
  v179 = v87;
  *(v87 + 16) = 0;
  v88 = (v87 + 16);
  if (qword_34C028 != -1)
  {
    swift_once();
  }

  v89 = qword_35F860;
  if (*(qword_35F860 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin18PriorResultContext_requestCancelled) == 1 && (*(qword_35F860 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin18PriorResultContext_appSelectionUsed) & v178 & 1) != 0)
  {
    v90 = *(qword_35F860 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin18PriorResultContext_mediaSearch);
    if (v90)
    {
      v91 = v90;
      v92 = [v185 mediaSearch];
      if (v92 && (v93 = v92, sub_334A0(0, &qword_34D6E0, INMediaSearch_ptr), v94 = sub_2CEB30(), v93, (v94 & 1) != 0))
      {
        v163 = v91;
        v95 = v88;
        v96 = v184;
        sub_2C8E20();
        v97 = OBJC_IVAR____TtC23AudioFlowDelegatePlugin18PriorResultContext_time;
        swift_beginAccess();
        v98 = v89 + v97;
        v99 = v150;
        (*(v177 + 16))(v150, v98, v70);
        sub_2C8DD0();
        v101 = v100;
        v102 = v99;
        v103 = v174;
        v174(v102, v70);
        v103(v96, v70);
        sub_2CCC50();
        if (v101 >= v104)
        {
        }

        else
        {
          *v95 = (*(v89 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin18PriorResultContext_previousDisambiguationCancelled) & 1) == 0;
          v105 = v149;
          v106 = v187;
          v171(v149, v173, v187);
          v107 = sub_2CDFE0();
          LODWORD(v162) = sub_2CE690();
          if (os_log_type_enabled(v107, v162))
          {
            v108 = swift_slowAlloc();
            v150 = swift_slowAlloc();
            v189 = v150;
            *v108 = 136315138;
            v109 = *(v89 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin18PriorResultContext_refId + 8);
            v190[0] = *(v89 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin18PriorResultContext_refId);
            v190[1] = v109;

            sub_20410(&qword_34CCC0, &unk_2D0DE0);
            v110 = sub_2CE2A0();
            v112 = sub_3F08(v110, v111, &v189);

            *(v108 + 4) = v112;
            _os_log_impl(&dword_0, v107, v162, "PlayMediaAppResolver#forcedResolution found this request as repeated, inferred, recent followup to the prior intent: %s resulting in a cancelled result after app selection used", v108, 0xCu);
            sub_306C(v150);

            v113 = v149;
            v114 = v187;
          }

          else
          {

            v113 = v105;
            v114 = v106;
          }

          v170(v113, v114);
          v71 = v183;
        }

        v88 = v95;
      }

      else
      {
      }
    }
  }

  v115 = v79 | v186;
  v116 = *v88;
  v117 = *v88;
  if (!*v88 && ((v176 ^ 1) & 1) == 0 && ((v178 ^ 1) & 1) == 0 && ((v175 ^ 1) & 1) == 0)
  {
    v118 = v186;
    if (v82 > v84)
    {
      v118 = v86 | v186;
    }

    v116 = v115 & v118;
  }

  LODWORD(v163) = v86 | v186;
  *(v89 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin18PriorResultContext_previousDisambiguationCancelled) = v117;
  v119 = v187;
  v171(v180, v173, v187);
  v120 = v179;

  v121 = sub_2CDFE0();
  v122 = sub_2CE690();
  v123 = os_log_type_enabled(v121, v122);
  v164 = v83;
  if (v123)
  {
    v124 = v186;
    v125 = v151 | v186;
    v126 = v120;
    v127 = swift_slowAlloc();
    *v127 = 67111936;
    *(v127 + 4) = v116 & 1;
    *(v127 + 8) = 1024;
    swift_beginAccess();
    *(v127 + 10) = *(v126 + 16);

    *(v127 + 14) = 1024;
    *(v127 + 16) = v176 & 1;
    *(v127 + 20) = 1024;
    *(v127 + 22) = v178 & 1;
    *(v127 + 26) = 1024;
    *(v127 + 28) = v175 & 1;
    *(v127 + 32) = 1024;
    *(v127 + 34) = v115 & 1;
    *(v127 + 38) = 2048;
    *(v127 + 40) = v82;
    *(v127 + 48) = 1024;
    *(v127 + 50) = v125 & 1;
    *(v127 + 54) = 1024;
    v71 = v183;
    *(v127 + 56) = v124 & 1;
    *(v127 + 60) = 1024;
    v70 = v181;
    *(v127 + 62) = v163 & 1;
    *(v127 + 66) = 2048;
    *(v127 + 68) = v75;
    *(v127 + 76) = 2048;
    *(v127 + 78) = v77;
    _os_log_impl(&dword_0, v121, v122, "PlayMediaAppResolver#forcedResolution forced disambiguation test?: %{BOOL}d ---- repeatedCancelled?: %{BOOL}d disambiguationEnabled?:%{BOOL}d, appInferred?:%{BOOL}d, bundleIdentifierIsSentinel?:%{BOOL}d, rateTest?:%{BOOL}d, disambiguationElapsed?:%f, interactionFrequencyTest?:%{BOOL}d disambiguateAlways?:%{BOOL}d, recordStoringPermitted?:%{BOOL}d,rateRoll:%f, rateRoll1p:%f", v127, 0x56u);
    v119 = v187;
  }

  else
  {
  }

  v170(v180, v119);
  if (v116)
  {
    v128 = (v182 + *(*v182 + class metadata base offset for CommonAppResolver + 48));
    v188 = v128[3];
    v180 = v128[4];
    v187 = sub_35E0(v128, v188);
    v178 = sub_334A0(0, &qword_34FCC0, INPlayMediaIntent_ptr);
    v189 = v185;
    v129 = v159;
    v130 = v158;
    v131 = v160;
    (*(v159 + 104))(v158, enum case for AcceptedSpeakerIdConfidence.executeOnCompanionConfidence(_:), v160);
    v176 = sub_2CCB50();
    v175 = v132;
    (*(v129 + 8))(v130, v131);
    v152(v165, v167, v166);
    v133 = v177;
    (*(v177 + 16))(v184, v71, v70);
    v134 = v155;
    v135 = (*(v155 + 80) + 32) & ~*(v155 + 80);
    v136 = v135 + v154;
    v137 = (v135 + v154) & 0xFFFFFFFFFFFFFFF8;
    v138 = (v137 + 23) & 0xFFFFFFFFFFFFFFF8;
    v173 = (v138 + 23) & 0xFFFFFFFFFFFFFFF8;
    v139 = (*(v133 + 80) + v173 + 8) & ~*(v133 + 80);
    v140 = (v157 + v139 + 7) & 0xFFFFFFFFFFFFFFF8;
    v141 = swift_allocObject();
    v142 = v185;
    *(v141 + 16) = v185;
    *(v141 + 24) = v77;
    (v134[4])(v141 + v135, v165, v166);
    *(v141 + v136) = v186 & 1;
    v70 = v181;
    *(v141 + v137 + 8) = v179;
    v143 = (v141 + v138);
    v144 = v169;
    *v143 = v168;
    v143[1] = v144;
    *(v141 + v173) = v182;
    (*(v133 + 32))(v141 + v139, v184, v70);
    *(v141 + v140) = v161;
    v71 = v183;

    v145 = v142;

    sub_2CC6C0();
  }

  else
  {
    v146 = type metadata accessor for BundleResolutionResult();
    v147 = v156;
    (*(*(v146 - 8) + 56))(v156, 1, 1, v146);
    v168(v147);
    sub_30B8(v147, &qword_3504C8, &unk_2D3B18);
  }

  v174(v71, v70);
}

uint64_t sub_ED10C(uint64_t a1, void *a2, uint64_t a3, int a4, uint64_t a5, void (*a6)(uint64_t *), uint64_t a7, void *a8, double a9, void (**a10)(char *, uint64_t))
{
  v128 = a8;
  v130 = a7;
  v131 = a6;
  v134 = a5;
  v127 = a4;
  v132 = a3;
  v126 = a2;
  v12 = sub_20410(&qword_3504C8, &unk_2D3B18);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v129 = v109 - v14;
  v125 = sub_2CC820();
  v124 = *(v125 - 8);
  v15 = *(v124 + 64);
  __chkstk_darwin(v125);
  v123 = v109 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v121 = sub_2C8E30();
  v120 = *(v121 - 8);
  v17 = *(v120 + 64);
  __chkstk_darwin(v121);
  v122 = v109 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v118 = sub_2CE150();
  v117 = *(v118 - 8);
  v19 = *(v117 + 64);
  __chkstk_darwin(v118);
  v115 = v109 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = sub_2CE180();
  v114 = *(v116 - 8);
  v21 = *(v114 + 64);
  __chkstk_darwin(v116);
  v113 = v109 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = sub_2CCA10();
  v111 = *(v112 - 8);
  v23 = *(v111 + 64);
  __chkstk_darwin(v112);
  v109[1] = v24;
  v110 = v109 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v133 = sub_2CE000();
  v136 = *(v133 - 8);
  v25 = v136[8];
  v26 = __chkstk_darwin(v133);
  v119 = v109 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v135 = v109 - v28;
  v140 = sub_2CB7D0();
  v29 = *(v140 - 8);
  v30 = *(v29 + 64);
  __chkstk_darwin(v140);
  v32 = v109 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = *(a1 + 16);
  v34 = _swiftEmptyArrayStorage;
  if (v33)
  {
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_2DBFC(0, v33, 0);
    v34 = aBlock[0];
    v36 = *(v29 + 16);
    v35 = v29 + 16;
    v139 = v36;
    v37 = a1 + ((*(v35 + 64) + 32) & ~*(v35 + 64));
    v138 = *(v35 + 56);
    v137 = (v35 - 8);
    do
    {
      v38 = v140;
      v39 = v35;
      v139(v32, v37, v140);
      v40 = sub_2CB7B0();
      v42 = v41;
      (*v137)(v32, v38);
      aBlock[0] = v34;
      v44 = v34[2];
      v43 = v34[3];
      if (v44 >= v43 >> 1)
      {
        sub_2DBFC((v43 > 1), v44 + 1, 1);
        v34 = aBlock[0];
      }

      v34[2] = v44 + 1;
      v45 = &v34[2 * v44];
      v45[4] = v40;
      v45[5] = v42;
      v37 += v138;
      --v33;
      v35 = v39;
    }

    while (v33);
  }

  aBlock[0] = v34;
  sub_EEDBC();
  v46 = aBlock[0];
  v47 = *(aBlock[0] + 16);
  v48 = _swiftEmptyArrayStorage;
  if (v47)
  {
    v49 = 0;
    v50 = aBlock[0] + 40;
    v51 = v47 - 1;
    do
    {
      v52 = v50 + 16 * v49;
      v53 = v49;
      while (1)
      {
        if (v53 >= *(v46 + 16))
        {
          __break(1u);
          goto LABEL_38;
        }

        v32 = *(v52 - 8);
        v54 = *v52;
        v49 = v53 + 1;

        if ((sub_2CBDB0() & 1) == 0)
        {
          break;
        }

        v52 += 16;
        ++v53;
        if (v47 == v49)
        {
          goto LABEL_19;
        }
      }

      v140 = v50;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      aBlock[0] = v48;
      v56 = v51;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_2DBFC(0, v48[2] + 1, 1);
        v48 = aBlock[0];
      }

      v58 = v48[2];
      v57 = v48[3];
      if (v58 >= v57 >> 1)
      {
        sub_2DBFC((v57 > 1), v58 + 1, 1);
        v48 = aBlock[0];
      }

      v48[2] = v58 + 1;
      v59 = &v48[2 * v58];
      v59[4] = v32;
      v59[5] = v54;
      v51 = v56;
      v60 = v56 == v53;
      v50 = v140;
    }

    while (!v60);
  }

LABEL_19:
  v47 = v48[2];

  v61 = [v126 mediaSearch];
  if (v61)
  {
    v62 = v61;
    v63 = [v61 mediaType];

    LODWORD(v32) = v63 == &dword_8 + 2;
  }

  else
  {
    LODWORD(v32) = 0;
  }

  v52 = v134;
  v53 = v133;
  sub_2CC9F0();
  LOBYTE(v50) = (v64 >= a9) | v127;
  swift_beginAccess();
  v65 = *(v52 + 16);
  v140 = v47;
  if (v65)
  {
    LOBYTE(v47) = 1;
  }

  else
  {
    LOBYTE(v47) = (v47 != 0) | v32 | v50;
  }

  if (qword_34BF58 != -1)
  {
LABEL_38:
    swift_once();
  }

  v66 = sub_3ED0(v53, static Logger.default);
  swift_beginAccess();
  v138 = v136[2];
  v138(v135, v66, v53);

  v67 = sub_2CDFE0();
  v68 = sub_2CE690();
  v69 = os_log_type_enabled(v67, v68);
  v139 = v66;
  if (v69)
  {
    v70 = v140 != 0;
    v71 = v52;
    v72 = swift_slowAlloc();
    *v72 = 67110144;
    *(v72 + 4) = v47 & 1;
    *(v72 + 8) = 1024;
    *(v72 + 10) = v70;
    *(v72 + 14) = 1024;
    *(v72 + 16) = v32;
    *(v72 + 20) = 1024;
    *(v72 + 22) = v50 & 1;
    *(v72 + 26) = 1024;
    swift_beginAccess();
    *(v72 + 28) = *(v71 + 16);
    v53 = v133;

    _os_log_impl(&dword_0, v67, v68, "PlayMediaAppResolver#forcedResolution firstPartyDisambiguate?:%{BOOL}d --- default apps test. contains3p?:%{BOOL}d audiobook?:%{BOOL}d firstPartyRateTest?:%{BOOL}d repeatedCancelled?:%{BOOL}d", v72, 0x20u);
  }

  else
  {
  }

  v73 = v136[1];
  ++v136;
  v73(v135, v53);
  if (v47)
  {
    v135 = v73;
    v137 = a10;
    v74 = v140 != 0;
    v75 = sub_2CBA10();
    v76 = v111;
    v77 = v110;
    v78 = v112;
    (*(v111 + 16))(v110, v132, v112);
    v79 = (*(v76 + 80) + 32) & ~*(v76 + 80);
    v80 = swift_allocObject();
    *(v80 + 16) = v74;
    *(v80 + 24) = v128;
    (*(v76 + 32))(v80 + v79, v77, v78);
    v144 = sub_F17EC;
    v145 = v80;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_A4294;
    v143 = &unk_334C18;
    v81 = _Block_copy(aBlock);

    v82 = v113;
    sub_2CE160();
    v141 = _swiftEmptyArrayStorage;
    sub_F1A8C(&qword_34FF20, &type metadata accessor for DispatchWorkItemFlags);
    sub_20410(&qword_34DD48, &qword_2D5F80);
    sub_7DDE8();
    v83 = v115;
    v84 = v118;
    sub_2CEC10();
    sub_2CE9C0();
    _Block_release(v81);

    (*(v117 + 8))(v83, v84);
    (*(v114 + 8))(v82, v116);

    v85 = v119;
    v138(v119, v139, v53);

    v86 = sub_2CDFE0();
    v87 = sub_2CE690();

    if (os_log_type_enabled(v86, v87))
    {
      v88 = swift_slowAlloc();
      v89 = swift_slowAlloc();
      aBlock[0] = v89;
      *v88 = 136315138;
      v90 = sub_2CE420();
      v92 = sub_3F08(v90, v91, aBlock);

      *(v88 + 4) = v92;
      _os_log_impl(&dword_0, v86, v87, "PlayMediaAppResolver#forcedResolution disambiguating apps: %s", v88, 0xCu);
      sub_306C(v89);
    }

    (v135)(v85, v53);
    v93 = v129;
    v94 = v125;
    v95 = v124;
    byte_350430 = 1;
    (*(v120 + 16))(v122, v137, v121);
    v96 = v128;
    v97 = v128 + *(*v128 + class metadata base offset for CommonAppResolver + 32);
    swift_beginAccess();
    v98 = *(v97 + 32);
    sub_F9A0(v97, *(v97 + 24));
    sub_2CC540();
    swift_endAccess();
    sub_EEAC(v96 + qword_350440, aBlock);
    sub_35E0(aBlock, v143);
    v99 = v134;
    swift_beginAccess();
    v100 = &enum case for DisambiguateItemsReason.repeatCancelled(_:);
    if (!*(v99 + 16))
    {
      v100 = &enum case for DisambiguateItemsReason.forced(_:);
    }

    v101 = v123;
    (*(v95 + 104))(v123, *v100, v94);
    v102 = *(v46 + 16);
    sub_2CCAA0();
    (*(v95 + 8))(v101, v94);
    sub_306C(aBlock);
    v103 = *(sub_20410(&qword_3504D0, &qword_2D3B28) + 48);
    *v93 = v46;
    v104 = enum case for ResolutionResultType.ForcedDisambiguation(_:);
    v105 = sub_2CC5F0();
    (*(*(v105 - 8) + 104))(v93 + v103, v104, v105);
    v106 = type metadata accessor for BundleResolutionResult();
    swift_storeEnumTagMultiPayload();
    (*(*(v106 - 8) + 56))(v93, 0, 1, v106);
  }

  else
  {

    v107 = type metadata accessor for BundleResolutionResult();
    v93 = v129;
    (*(*(v107 - 8) + 56))(v129, 1, 1, v107);
  }

  v131(v93);
  return sub_30B8(v93, &qword_3504C8, &unk_2D3B18);
}

void sub_EE080(char a1, void *a2)
{
  v4 = sub_2CE000();
  v37 = *(v4 - 8);
  v38 = v4;
  v5 = *(v37 + 64);
  __chkstk_darwin(v4);
  v39 = v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2CC780();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = &enum case for CoreAnalyticsResponses.FabricatedPlayCodes.forcedDisambiguationWith3p(_:);
  if ((a1 & 1) == 0)
  {
    v12 = &enum case for CoreAnalyticsResponses.FabricatedPlayCodes.forcedDisambiguation1pOnly(_:);
  }

  (*(v8 + 104))(v11, *v12, v7);
  v36 = sub_2CC770();
  (*(v8 + 8))(v11, v7);
  sub_20410(&qword_34DD38, &unk_2D3B30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2D1AB0;
  *(inited + 32) = 0x6449707061;
  *(inited + 40) = 0xE500000000000000;
  v35[1] = sub_334A0(0, &qword_3504D8, NSString_ptr);
  *(inited + 48) = sub_2CEB40();
  *(inited + 56) = 1701080931;
  *(inited + 64) = 0xE400000000000000;
  *(inited + 72) = sub_2CE560();
  *(inited + 80) = 0x70616C45656D6974;
  *(inited + 88) = 0xEB00000000646573;
  sub_334A0(0, &qword_353110, NSNumber_ptr);
  *(inited + 96) = sub_2CEB10(0);
  *(inited + 104) = 0x65636E6174736E69;
  *(inited + 112) = 0xE800000000000000;
  v14 = *(*a2 + class metadata base offset for CommonAppResolver + 32);
  swift_beginAccess();
  sub_EEAC(a2 + v14, v40);
  sub_35E0(v40, v41);
  sub_2CC480();
  isa = sub_2CE560().super.super.isa;
  sub_306C(v40);
  *(inited + 120) = isa;
  *(inited + 128) = 0x756F43736D657469;
  *(inited + 136) = 0xEA0000000000746ELL;
  *(inited + 144) = sub_2CEB10(0);
  *(inited + 152) = 0x7265666E49707061;
  *(inited + 160) = 0xEB00000000646572;
  *(inited + 168) = [objc_allocWithZone(NSNumber) initWithBool:1];
  *(inited + 176) = 0x706D657474417361;
  *(inited + 184) = 0xEB00000000646574;
  *(inited + 192) = [objc_allocWithZone(NSNumber) initWithBool:0];
  *(inited + 200) = 0x7265735577656ELL;
  *(inited + 208) = 0xE700000000000000;
  *(inited + 216) = [objc_allocWithZone(NSNumber) initWithBool:0];
  *(inited + 224) = 0x646573557361;
  *(inited + 232) = 0xE600000000000000;
  *(inited + 240) = [objc_allocWithZone(NSNumber) initWithBool:0];
  strcpy((inited + 248), "asExperimentId");
  *(inited + 263) = -18;
  sub_2CC9E0();
  v16 = sub_2CE260();

  *(inited + 264) = v16;
  strcpy((inited + 272), "asTreatmentId");
  *(inited + 286) = -4864;
  sub_2CC9D0();
  v17 = sub_2CE260();

  *(inited + 288) = v17;
  *(inited + 296) = 0x756F6C6C6F527361;
  *(inited + 304) = 0xEB00000000644974;
  sub_2CC9B0();
  v18 = sub_2CE260();

  *(inited + 312) = v18;
  *(inited + 320) = 0x6469666E6F437361;
  *(inited + 328) = 0xEF73624165636E65;
  *(inited + 336) = sub_2CEAF0(-1.0);
  *(inited + 344) = 0xD000000000000010;
  *(inited + 352) = 0x80000000002DB4E0;
  *(inited + 360) = sub_2CEAF0(-1.0);
  *(inited + 368) = 0x64497070417361;
  *(inited + 376) = 0xE700000000000000;
  *(inited + 384) = sub_2CEB40();
  strcpy((inited + 392), "successCount");
  *(inited + 405) = 0;
  *(inited + 406) = -5120;
  *(inited + 408) = sub_2CEB10(0);
  *(inited + 416) = 0xD000000000000010;
  *(inited + 424) = 0x80000000002DB500;
  *(inited + 432) = sub_2CEB10(0);
  *(inited + 440) = 0x6F43646573557361;
  *(inited + 448) = 0xEB00000000746E75;
  *(inited + 456) = sub_2CEB10(0);
  strcpy((inited + 464), "responseCode");
  *(inited + 477) = 0;
  *(inited + 478) = -5120;
  v44 = v36;
  sub_2CEE70();
  v19 = sub_2CE260();

  *(inited + 480) = v19;
  v20 = sub_90728(inited);
  swift_setDeallocating();
  sub_20410(&qword_34DD40, &unk_2D1BD0);
  swift_arrayDestroy();
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v21 = v38;
  v22 = sub_3ED0(v38, static Logger.default);
  swift_beginAccess();
  v23 = v37;
  v24 = v39;
  (*(v37 + 16))(v39, v22, v21);

  v25 = sub_2CDFE0();
  v26 = sub_2CE670();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v40[0] = v28;
    *v27 = 136315138;
    sub_334A0(0, &qword_34DD50, NSObject_ptr);
    v29 = sub_2CE210();
    v31 = sub_3F08(v29, v30, v40);

    *(v27 + 4) = v31;
    _os_log_impl(&dword_0, v25, v26, "PlayMediaAppResolver#forcedResolution recording result analytics data due to disambiguation result: %s", v27, 0xCu);
    sub_306C(v28);

    (*(v23 + 8))(v39, v21);
  }

  else
  {

    (*(v23 + 8))(v24, v21);
  }

  v32 = sub_2CE260();
  v33 = swift_allocObject();
  *(v33 + 16) = v20;
  v42 = CommonFlowStrategy.makeParameterMetadata(intent:);
  v43 = v33;
  v40[0] = _NSConcreteStackBlock;
  v40[1] = 1107296256;
  v40[2] = sub_25FA38;
  v41 = &unk_334C68;
  v34 = _Block_copy(v40);

  AnalyticsSendEventLazy();
  _Block_release(v34);
}

uint64_t sub_EE9A8()
{
  sub_306C((v0 + qword_350440));
  sub_306C((v0 + qword_350448));
  sub_306C((v0 + qword_350450));
  sub_306C((v0 + qword_350458));
  sub_306C((v0 + qword_350460));
  return sub_306C((v0 + qword_350468));
}

void *PlayMediaAppResolver.deinit()
{
  v0 = sub_2CCF60();
  v1 = *(v0 + *(*v0 + class metadata base offset for CommonAppResolver + 8) + 8);

  sub_306C((v0 + *(*v0 + class metadata base offset for CommonAppResolver + 16)));
  sub_306C((v0 + *(*v0 + class metadata base offset for CommonAppResolver + 24)));
  sub_306C((v0 + *(*v0 + class metadata base offset for CommonAppResolver + 32)));
  sub_306C((v0 + *(*v0 + class metadata base offset for CommonAppResolver + 40)));
  sub_306C((v0 + *(*v0 + class metadata base offset for CommonAppResolver + 48)));
  sub_306C((v0 + qword_350440));
  sub_306C((v0 + qword_350448));
  sub_306C((v0 + qword_350450));
  sub_306C((v0 + qword_350458));
  sub_306C((v0 + qword_350460));
  sub_306C((v0 + qword_350468));
  return v0;
}

uint64_t PlayMediaAppResolver.__deallocating_deinit()
{
  PlayMediaAppResolver.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_EEC30(uint64_t a1, void *a2)
{
  result = sub_2CCF90();
  if (v4)
  {
    v5 = (a2 + *(*a2 + class metadata base offset for CommonAppResolver + 16));
    v6 = v5[4];
    sub_35E0(v5, v5[3]);
    v8 = 0;
    memset(v7, 0, sizeof(v7));
    sub_2CBC50();

    return sub_30B8(v7, &qword_34E970, &qword_2D2910);
  }

  return result;
}

uint64_t sub_EED20(uint64_t a1)
{
  v3 = *(sub_2CDFD0() - 8);
  v4 = (*(v3 + 80) + 33) & ~*(v3 + 80);
  v5 = v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8);
  v6 = *(v5 + 8);
  return sub_13C14(a1, *(v1 + 16), *(v1 + 24), *(v1 + 32), v1 + v4, *v5);
}

void sub_EEDBC()
{
  v1 = *v0;
  v2 = *(*v0 + 2);
  v3 = v2 - 2;
  if (v2 >= 2)
  {
    v4 = 0;
    while (1)
    {
      swift_stdlib_random();
      v6 = (0 * v2) >> 64;
      if (v2)
      {
        if (-v2 % v2)
        {
          while (1)
          {
            swift_stdlib_random();
          }
        }
      }

      v8 = v4 + v6;
      if (__OFADD__(v4, v6))
      {
        break;
      }

      if (v4 != v8)
      {
        v9 = *(v1 + 2);
        if (v4 >= v9)
        {
          goto LABEL_18;
        }

        if (v8 >= v9)
        {
          goto LABEL_19;
        }

        v10 = &v1[16 * v4 + 32];
        v12 = *v10;
        v11 = *(v10 + 1);
        v13 = &v1[16 * v8 + 32];
        v15 = *v13;
        v14 = *(v13 + 1);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v1 = sub_17D0E4(v1);
        }

        if (v4 >= *(v1 + 2))
        {
          goto LABEL_20;
        }

        v16 = &v1[16 * v4 + 32];
        v17 = *(v16 + 1);
        *v16 = v15;
        *(v16 + 1) = v14;

        if (v8 >= *(v1 + 2))
        {
          goto LABEL_21;
        }

        v18 = &v1[16 * v8 + 32];
        v19 = *(v18 + 1);
        *v18 = v12;
        *(v18 + 1) = v11;

        *v20 = v1;
      }

      --v2;
      if (v4++ == v3)
      {
        return;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
  }
}

uint64_t sub_EEF48(uint64_t result, double a2, double a3)
{
  if (a2 == a3)
  {
    __break(1u);
    goto LABEL_7;
  }

  v5 = a3 - a2;
  if (COERCE__INT64(fabs(a3 - a2)) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v6 = result;
  result = swift_stdlib_random();
  if (v5 * vcvtd_n_f64_u64(0, 0x35uLL) + a2 == a3)
  {
    return sub_EEF48(v6, a2, a3);
  }

  return result;
}

uint64_t sub_EEFEC(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(char *))
{
  v8 = *a1;
  sub_2CE9D0();
  if (qword_34BF98 != -1)
  {
    swift_once();
  }

  sub_2CDFA0();
  return a6(&v8);
}

uint64_t sub_EF0B8(void *a1, void *a2, void (*a3)(char *, uint64_t), void (*a4)(uint64_t *), uint64_t a5)
{
  v159 = a3;
  v154 = type metadata accessor for BundleResolutionResult();
  v9 = *(*(v154 - 8) + 64);
  __chkstk_darwin(v154);
  v155 = (&v141 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = sub_20410(&qword_350438, qword_2D3AA0);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v141 - v13;
  v15 = sub_20410(&qword_34E740, &unk_2D68F0);
  v158 = *(v15 - 8);
  v16 = *(v158 + 64);
  v17 = __chkstk_darwin(v15);
  v149 = &v141 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v17);
  v150 = (&v141 - v20);
  v21 = __chkstk_darwin(v19);
  v147 = &v141 - v22;
  v23 = __chkstk_darwin(v21);
  v146 = &v141 - v24;
  __chkstk_darwin(v23);
  v160 = &v141 - v25;
  v26 = sub_2CE000();
  v27 = *(v26 - 8);
  v28 = *(v27 + 8);
  v29 = __chkstk_darwin(v26);
  v144 = &v141 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __chkstk_darwin(v29);
  v148 = &v141 - v32;
  __chkstk_darwin(v31);
  v34 = &v141 - v33;
  v35 = swift_allocObject();
  v157 = a4;
  *(v35 + 16) = a4;
  *(v35 + 24) = a5;
  v161 = v35;
  v36 = qword_34BF58;
  v156 = a5;

  if (v36 != -1)
  {
    swift_once();
  }

  v37 = sub_3ED0(v26, static Logger.default);
  swift_beginAccess();
  v38 = *(v27 + 2);
  v153 = v37;
  v152 = v38;
  v38(v34, v37, v26);
  v39 = a1;

  v40 = sub_2CDFE0();
  v41 = sub_2CE690();

  v42 = os_log_type_enabled(v40, v41);
  v162 = v27;
  if (v42)
  {
    v143 = v41;
    v145 = v26;
    v151 = v15;
    v43 = swift_slowAlloc();
    v142 = swift_slowAlloc();
    v163[0] = v142;
    *v43 = 136447234;
    v44 = [v39 launchId];
    v141 = v14;
    if (v44)
    {
      v45 = v44;
      v46 = sub_2CE270();
      v48 = v47;
    }

    else
    {
      v46 = 0;
      v48 = 0;
    }

    v164 = v46;
    v165 = v48;
    sub_20410(&qword_34CCC0, &unk_2D0DE0);
    v50 = sub_2CE2A0();
    v52 = sub_3F08(v50, v51, v163);

    *(v43 + 4) = v52;
    *(v43 + 12) = 1026;
    v53 = sub_2CE730();

    *(v43 + 14) = v53 & 1;
    *(v43 + 18) = 2082;
    v54 = [v39 mediaSearch];
    v55 = v54;
    if (v54)
    {
      v56 = [v54 mediaType];
    }

    else
    {
      v56 = 0;
    }

    v164 = v56;
    LOBYTE(v165) = v55 == 0;
    sub_20410(&qword_350510, qword_2D3B60);
    v57 = sub_2CE2A0();
    v59 = sub_3F08(v57, v58, v163);

    *(v43 + 20) = v59;
    *(v43 + 28) = 2082;
    v60 = [v39 privatePlayMediaIntentData];
    if (!v60)
    {
      goto LABEL_23;
    }

    v61 = v60;
    v62 = [v60 audioSearchResults];

    if (!v62)
    {
      v68 = 0;
      goto LABEL_24;
    }

    sub_334A0(0, &qword_356F50, INMediaItem_ptr);
    v63 = sub_2CE410();

    if (v63 >> 62)
    {
      result = sub_2CEDA0();
      if (result)
      {
LABEL_15:
        if ((v63 & 0xC000000000000001) != 0)
        {
          v65 = sub_2CECD0();
        }

        else
        {
          if (!*(&dword_10 + (v63 & 0xFFFFFFFFFFFFFF8)))
          {
            __break(1u);
            return result;
          }

          v65 = *(v63 + 32);
        }

        v66 = v65;

        v67 = [v66 identifier];

        if (v67)
        {
          v68 = sub_2CE270();
          v62 = v69;

LABEL_24:
          v164 = v68;
          v165 = v62;
          v70 = sub_2CE2A0();
          v72 = sub_3F08(v70, v71, v163);

          *(v43 + 30) = v72;
          *(v43 + 38) = 2082;
          v73 = *(*a2 + class metadata base offset for CommonAppResolver + 32);
          swift_beginAccess();
          sub_EEAC(a2 + v73, &v164);
          sub_35E0(&v164, v166);
          v163[1] = sub_2CC460();
          v163[2] = v74;
          v75 = sub_2CE2A0();
          v77 = v76;
          sub_306C(&v164);
          v78 = sub_3F08(v75, v77, v163);

          *(v43 + 40) = v78;
          _os_log_impl(&dword_0, v40, v143, "PlayMediaAppResolver#resolveBundleIdentifier... launchId:%{public}s, appInferred?:%{BOOL,public}d, mediaSearch-type:%{public}s, firstResult-identifier:%{public}s, forceResolveBundleId:%{public}s", v43, 0x30u);
          swift_arrayDestroy();

          v49 = *(v162 + 1);
          v26 = v145;
          v49(v34, v145);
          v15 = v151;
          v14 = v141;
          goto LABEL_25;
        }

LABEL_23:
        v68 = 0;
        v62 = 0;
        goto LABEL_24;
      }
    }

    else
    {
      result = *(&dword_10 + (v63 & 0xFFFFFFFFFFFFFF8));
      if (result)
      {
        goto LABEL_15;
      }
    }

    goto LABEL_23;
  }

  v49 = *(v27 + 1);
  v49(v34, v26);
LABEL_25:
  sub_F3F4(v159, v14, &qword_350438, qword_2D3AA0);
  if ((*(v158 + 48))(v14, 1, v15) == 1)
  {
    sub_30B8(v14, &qword_350438, qword_2D3AA0);
    v79 = *(*a2 + class metadata base offset for CommonAppResolver + 32);
    swift_beginAccess();
    sub_EEAC(a2 + v79, &v164);
    sub_35E0(&v164, v166);
    v80 = sub_2CC460();
    if (v81)
    {
      v82 = v80;
      v83 = v81;
      v151 = v15;
      sub_306C(&v164);
      v84 = v144;
      v152(v144, v153, v26);

      v85 = sub_2CDFE0();
      v86 = sub_2CE690();

      if (os_log_type_enabled(v85, v86))
      {
        v87 = swift_slowAlloc();
        v159 = v49;
        v88 = v87;
        v89 = v84;
        v90 = swift_slowAlloc();
        v164 = v90;
        *v88 = 136446210;

        v91 = sub_3F08(v82, v83, &v164);

        *(v88 + 4) = v91;
        _os_log_impl(&dword_0, v85, v86, "PlayMediaAppResolver#resolveBundleIdentifier forceResolveBundleId user default present, resolving bundleIdentifier: %{public}s", v88, 0xCu);
        sub_306C(v90);

        v159(v89, v26);
      }

      else
      {

        v49(v84, v26);
      }

      v131 = v157;
      v132 = v155;
      v133 = [v39 launchId];
      if (v133)
      {
        v134 = v133;
        v135 = sub_2CE270();
        v137 = v136;

        v167._countAndFlagsBits = v135;
        v167._object = v137;
        sub_2CE7A0(v167);
      }

      v138 = *(v151 + 48);
      *v132 = v82;
      v132[1] = v83;
      v139 = enum case for ResolutionResultType.AppSpecifiedByUser(_:);
      v140 = sub_2CC5F0();
      (*(*(v140 - 8) + 104))(v132 + v138, v139, v140);
      swift_storeEnumTagMultiPayload();
      v131(v132);
      sub_F1AE0(v132);
    }

    else
    {
      sub_306C(&v164);
      v128 = swift_allocObject();
      v129 = v161;
      v128[2] = sub_13D84;
      v128[3] = v129;
      v128[4] = a2;
      v128[5] = v39;
      v130 = v39;

      sub_EBA74(v130, sub_F1AD4, v128);
    }
  }

  else
  {
    v92 = v160;
    sub_F1B3C(v14, v160);
    v93 = v148;
    v152(v148, v153, v26);
    v94 = v146;
    sub_F3F4(v92, v146, &qword_34E740, &unk_2D68F0);
    v95 = v92;
    v96 = v147;
    sub_F3F4(v95, v147, &qword_34E740, &unk_2D68F0);
    v97 = sub_2CDFE0();
    v98 = sub_2CE690();
    if (os_log_type_enabled(v97, v98))
    {
      v99 = swift_slowAlloc();
      LODWORD(v153) = v98;
      v100 = v99;
      v158 = swift_slowAlloc();
      v164 = v158;
      *v100 = 136446466;
      v101 = v94;
      v102 = v150;
      sub_F1B3C(v101, v150);
      v159 = v49;
      v145 = v26;
      v103 = v15;
      v104 = *v102;
      v105 = v102[1];
      v106 = *(v103 + 48);
      v107 = sub_2CC5F0();
      (*(*(v107 - 8) + 8))(v102 + v106, v107);
      v108 = sub_3F08(v104, v105, &v164);

      *(v100 + 4) = v108;
      *(v100 + 12) = 2082;
      sub_F3F4(v96, v102, &qword_34E740, &unk_2D68F0);
      v109 = v102[1];

      v110 = *(v103 + 48);
      v111 = sub_2CE2A0();
      v112 = v93;
      v114 = v113;
      v15 = v103;
      sub_30B8(v96, &qword_34E740, &unk_2D68F0);
      v115 = sub_3F08(v111, v114, &v164);

      *(v100 + 14) = v115;
      _os_log_impl(&dword_0, v97, v153, "PlayMediaAppResolver#resolveBundleIdentifier app resolution ran previously, re-using those results and returning bundleIdentifier: %{public}s, resolutionResult: %{public}s", v100, 0x16u);
      swift_arrayDestroy();

      v159(v112, v145);
      v116 = v157;
    }

    else
    {

      sub_30B8(v96, &qword_34E740, &unk_2D68F0);
      sub_30B8(v94, &qword_34E740, &unk_2D68F0);
      v49(v93, v26);
      v116 = v157;
      v102 = v150;
    }

    v117 = *(v15 + 48);
    v118 = v160;
    sub_F3F4(v160, v102, &qword_34E740, &unk_2D68F0);
    v119 = *v102;
    v120 = v102[1];
    v162 = *(v15 + 48);
    v121 = v102;
    v122 = v155;
    *v155 = v119;
    *(v122 + 8) = v120;
    v123 = v149;
    sub_F3F4(v118, v149, &qword_34E740, &unk_2D68F0);
    v124 = *(v123 + 8);

    v125 = *(v15 + 48);
    v126 = sub_2CC5F0();
    v127 = *(v126 - 8);
    (*(v127 + 32))(v122 + v117, v123 + v125, v126);
    swift_storeEnumTagMultiPayload();
    v116(v122);
    sub_F1AE0(v122);
    sub_30B8(v118, &qword_34E740, &unk_2D68F0);
    (*(v127 + 8))(&v162[v121], v126);
  }
}

uint64_t sub_F00C8(unsigned __int8 *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1);
}

uint64_t sub_F00F4(char *a1)
{
  v3 = *(sub_2CDFD0() - 8);
  v4 = (*(v3 + 80) + 33) & ~*(v3 + 80);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  v7 = v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8);
  v8 = *v7;
  v9 = *(v7 + 8);
  v10 = *(v1 + 32);

  return sub_EEFEC(a1, v5, v6, v10, v1 + v4, v8);
}

uint64_t sub_F019C(char *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = *a1;
  return v2(&v5);
}

uint64_t sub_F01E0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_F01F8(void *a1, void *a2, uint64_t a3, uint64_t a4, _UNKNOWN **a5, unint64_t a6)
{
  v135 = a4;
  v154 = a3;
  v157 = a2;
  v151 = sub_2CE150();
  v150 = *(v151 - 8);
  v9 = *(v150 + 64);
  __chkstk_darwin(v151);
  v148 = v132 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v149 = sub_2CE180();
  v147 = *(v149 - 8);
  v11 = *(v147 + 64);
  __chkstk_darwin(v149);
  v146 = v132 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v143 = sub_2CE130();
  v142 = *(v143 - 8);
  v13 = *(v142 + 64);
  __chkstk_darwin(v143);
  v141 = (v132 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v162 = sub_2CE1A0();
  v145 = *(v162 - 8);
  v15 = *(v145 + 64);
  v16 = __chkstk_darwin(v162);
  v140 = v132 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v144 = v132 - v18;
  v19 = sub_2CE000();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  v22 = __chkstk_darwin(v19);
  v139 = v132 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __chkstk_darwin(v22);
  v137 = v132 - v25;
  v26 = __chkstk_darwin(v24);
  v133 = v132 - v27;
  v28 = __chkstk_darwin(v26);
  v134 = v132 - v29;
  v30 = __chkstk_darwin(v28);
  v136 = v132 - v31;
  v32 = __chkstk_darwin(v30);
  v34 = v132 - v33;
  __chkstk_darwin(v32);
  v36 = v132 - v35;
  sub_2CBC60();
  sub_35E0(&aBlock, v170);
  v37 = sub_2CBE50();
  v153 = a1;
  if (v37)
  {
    v38 = *(*a1 + class metadata base offset for CommonAppResolver + 32);
    swift_beginAccess();
    sub_EEAC(a1 + v38, v164);
    sub_35E0(v164, v164[3]);
    LOBYTE(a1) = sub_2CC510() ^ 1;
    sub_306C(v164);
  }

  else
  {
    LOBYTE(a1) = 0;
  }

  sub_306C(&aBlock);
  v39 = v20;
  if (qword_34BF58 != -1)
  {
LABEL_34:
    swift_once();
  }

  v40 = sub_3ED0(v19, static Logger.default);
  swift_beginAccess();
  v41 = *(v39 + 16);
  v160 = v39 + 16;
  v161 = v40;
  v159 = v41;
  v41(v36, v40, v19);
  v42 = sub_2CDFE0();
  v43 = sub_2CE660();
  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    *v44 = 67109120;
    *(v44 + 4) = a1 & 1;
    _os_log_impl(&dword_0, v42, v43, "PlayMediaAppResolver#postResolve will Siri speak?:%{BOOL}d", v44, 8u);
    v39 = v20;
  }

  v45 = *(v39 + 8);
  v163 = v19;
  v158 = v45;
  v45(v36, v19);
  sub_2CE880(a1 & 1);
  v46 = sub_2CCF90();
  v138 = v34;
  v152 = a5;
  v155 = a6;
  v156 = v39 + 8;
  if (!v47)
  {
    goto LABEL_37;
  }

  aBlock = v46;
  v168 = v47;
  v165 = sub_2CBE40();
  v166 = v48;
  sub_F18AC();
  sub_F1900();
  v49 = sub_2CE230();

  if ((v49 & 1) == 0)
  {
    goto LABEL_37;
  }

  v50 = [v157 privatePlayMediaIntentData];
  if (!v50)
  {
    goto LABEL_37;
  }

  v51 = v50;
  v52 = [v50 audioSearchResults];

  if (!v52)
  {
    goto LABEL_37;
  }

  v132[1] = sub_334A0(0, &qword_356F50, INMediaItem_ptr);
  v36 = sub_2CE410();

  if (!(v36 >> 62))
  {
    v53 = *(&dword_10 + (v36 & 0xFFFFFFFFFFFFFF8));
    if (v53)
    {
      goto LABEL_13;
    }

LABEL_36:

    goto LABEL_37;
  }

  v53 = sub_2CEDA0();
  if (!v53)
  {
    goto LABEL_36;
  }

LABEL_13:
  v39 = 0;
  aBlock = _swiftEmptyArrayStorage;
  a6 = v36 & 0xC000000000000001;
  v19 = v36 & 0xFFFFFFFFFFFFFF8;
  a5 = &off_32FF30;
  do
  {
    if (a6)
    {
      v54 = sub_2CECD0();
    }

    else
    {
      if (v39 >= *(&dword_10 + (v36 & 0xFFFFFFFFFFFFFF8)))
      {
        goto LABEL_33;
      }

      v54 = *(v36 + 8 * v39 + 32);
    }

    v34 = v54;
    v20 = v39 + 1;
    if (__OFADD__(v39, 1))
    {
      __break(1u);
LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

    v55 = INMediaItem.isInternalSignalPresent(_:)(&off_32FF30);
    sub_F1954(&unk_32FF50);
    if (v55)
    {
      sub_2CED00();
      a1 = aBlock[2];
      sub_2CED30();
      sub_2CED40();
      sub_2CED10();
    }

    else
    {
    }

    ++v39;
  }

  while (v20 != v53);

  sub_2CE5C0();

  v56 = v139;
  v57 = v163;
  v159(v139, v161, v163);
  v58 = sub_2CDFE0();
  v59 = sub_2CE670();
  if (os_log_type_enabled(v58, v59))
  {
    v60 = swift_slowAlloc();
    *v60 = 0;
    _os_log_impl(&dword_0, v58, v59, "PlayMediaAppResolver#postResolve adding MediaItems to PlayMediaIntent for Apple Music Classical playback", v60, 2u);
  }

  v158(v56, v57);
  v61 = [v157 backingStore];
  objc_opt_self();
  v62 = swift_dynamicCastObjCClass();
  if (v62)
  {
    v63 = v62;
    isa = sub_2CE400().super.isa;

    v65 = INIntentSlotValueTransformToMediaItemValues();

    [v63 setMediaItems:v65];
    v61 = v65;
  }

  else
  {
  }

  if (_s23AudioFlowDelegatePlugin22InternalSignalsManagerC10doesIntent_4haveSbSo8INIntentC_SaySSGtFZ_0(v157, &off_32FF00))
  {
    v66 = [v157 backingStore];
    objc_opt_self();
    v67 = swift_dynamicCastObjCClass();
    if (!v67)
    {
    }

    [v67 setPlayShuffled:1];
  }

LABEL_37:
  v139 = sub_2CBA10();
  v68 = v140;
  sub_2CE190();
  v69 = v141;
  *v141 = 10;
  v70 = v142;
  v71 = v143;
  (*(v142 + 104))(v69, enum case for DispatchTimeInterval.seconds(_:), v143);
  v72 = v144;
  sub_2CE1B0();
  (*(v70 + 8))(v69, v71);
  v145 = *(v145 + 8);
  (v145)(v68, v162);
  v73 = swift_allocObject();
  v74 = v153;
  swift_weakInit();
  v171 = sub_F1898;
  v172 = v73;
  aBlock = _NSConcreteStackBlock;
  v168 = 1107296256;
  v169 = sub_A4294;
  v170 = &unk_334D08;
  v75 = _Block_copy(&aBlock);

  v76 = v146;
  sub_2CE160();
  v165 = _swiftEmptyArrayStorage;
  sub_F1A8C(&qword_34FF20, &type metadata accessor for DispatchWorkItemFlags);
  sub_20410(&qword_34DD48, &qword_2D5F80);
  sub_7DDE8();
  v77 = v148;
  v78 = v151;
  sub_2CEC10();
  v79 = v139;
  sub_2CE9A0();
  _Block_release(v75);

  (*(v150 + 8))(v77, v78);
  (*(v147 + 8))(v76, v149);
  (v145)(v72, v162);

  v80 = *(v74 + qword_350458 + 32);
  sub_35E0((v74 + qword_350458), *(v74 + qword_350458 + 24));
  v81 = sub_2CBE60();
  if (v82)
  {
    v83 = v81;
    v84 = v82;
    v85 = v138;
    v86 = v163;
    v159(v138, v161, v163);
    v87 = sub_2CDFE0();
    v88 = sub_2CE660();
    if (os_log_type_enabled(v87, v88))
    {
      v89 = swift_slowAlloc();
      aBlock = swift_slowAlloc();
      *v89 = 136315394;
      *(v89 + 4) = sub_3F08(v83, v84, &aBlock);
      *(v89 + 12) = 2080;
      if (qword_34BF68 != -1)
      {
        swift_once();
      }

      v165 = qword_35F6C0;

      sub_20410(&qword_3504E0, &qword_2D3B40);
      v90 = sub_2CE2A0();
      v92 = sub_3F08(v90, v91, &aBlock);

      *(v89 + 14) = v92;
      _os_log_impl(&dword_0, v87, v88, "PlayMediaAppResolver#postResolve Storing intent for request: %s, stored: %s", v89, 0x16u);
      swift_arrayDestroy();

      v158(v138, v163);
      v93 = v152;
    }

    else
    {

      v158(v85, v86);
      v93 = v152;
    }

    v100 = v137;
    if (qword_34BF68 != -1)
    {
      swift_once();
    }

    aBlock = v83;
    v168 = v84;
    if (sub_2CB9B0())
    {

      v101 = v134;
      v102 = v163;
      v159(v134, v161, v163);
      v103 = sub_2CDFE0();
      v104 = sub_2CE680();
      if (os_log_type_enabled(v103, v104))
      {
        v105 = swift_slowAlloc();
        *v105 = 0;
        _os_log_impl(&dword_0, v103, v104, "PlayMediaAppResolver#postResolve SELF logs already collected for this request. Avoiding double logging", v105, 2u);
      }
    }

    else
    {
      aBlock = v83;
      v168 = v84;
      sub_2CB990();

      if (sub_2CC5D0())
      {
        v106 = sub_2CCF90();
        v108 = v163;
        if (v107)
        {
          v109 = v106;
          v110 = v107;
          v111 = byte_350430;
          byte_350430 = 0;
          v159(v100, v161, v163);
          v112 = sub_2CDFE0();
          v113 = sub_2CE690();
          if (os_log_type_enabled(v112, v113))
          {
            v114 = swift_slowAlloc();
            v115 = swift_slowAlloc();
            aBlock = v115;
            *v114 = 136446466;
            v116 = sub_2CCC80();
            v118 = v111;
            v119 = sub_3F08(v116, v117, &aBlock);

            *(v114 + 4) = v119;
            *(v114 + 12) = 1024;
            *(v114 + 14) = v118;
            _os_log_impl(&dword_0, v112, v113, "PlayMediaAppResolver#postResolve %{public}s recording app selection signals. force?:%{BOOL}d", v114, 0x12u);
            sub_306C(v115);
            v93 = v152;

            v120 = v137;
            v121 = v163;
          }

          else
          {

            v120 = v100;
            v121 = v108;
          }

          v158(v120, v121);
          v129 = v153;
          v130 = *(v153 + qword_350440 + 32);
          sub_35E0((v153 + qword_350440), *(v153 + qword_350440 + 24));
          v131 = swift_allocObject();
          v131[2] = v129;
          v131[3] = v109;
          v131[4] = v110;

          sub_2CCA80();
        }

        goto LABEL_58;
      }

      v101 = v133;
      v102 = v163;
      v159(v133, v161, v163);
      v103 = sub_2CDFE0();
      v122 = sub_2CE690();
      if (os_log_type_enabled(v103, v122))
      {
        v123 = swift_slowAlloc();
        v124 = v101;
        v125 = swift_slowAlloc();
        aBlock = v125;
        *v123 = 136446210;
        v126 = sub_2CCC80();
        v128 = sub_3F08(v126, v127, &aBlock);

        *(v123 + 4) = v128;
        _os_log_impl(&dword_0, v103, v122, "PlayMediaAppResolver#postResolve %{public}s skipping app selection signals record as the app was not explicitly chosen by the user", v123, 0xCu);
        sub_306C(v125);

        v158(v124, v163);
LABEL_58:
        LOBYTE(aBlock) = 1;
        return v93(&aBlock);
      }
    }

    v158(v101, v102);
    goto LABEL_58;
  }

  v94 = v136;
  v95 = v163;
  v159(v136, v161, v163);
  v96 = sub_2CDFE0();
  v97 = sub_2CE680();
  if (os_log_type_enabled(v96, v97))
  {
    v98 = swift_slowAlloc();
    *v98 = 0;
    _os_log_impl(&dword_0, v96, v97, "PlayMediaAppResolver#postResolve No requestID found for the current request. Skipping log collection for intent", v98, 2u);
  }

  v158(v94, v95);
  LOBYTE(aBlock) = 1;
  return v152(&aBlock);
}

uint64_t type metadata accessor for PlayMediaAppResolver()
{
  result = qword_350478;
  if (!qword_350478)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_F16A4(uint64_t a1)
{
  v3 = *(sub_2CCA10() - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = v4 + *(v3 + 64);
  v6 = ((v5 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 23) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(sub_2C8E30() - 8);
  v9 = (*(v8 + 80) + v7 + 8) & ~*(v8 + 80);
  v11 = *(v1 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  return sub_ED10C(a1, *(v1 + 16), v1 + v4, *(v1 + v5), *(v1 + (v5 & 0xFFFFFFFFFFFFFFF8) + 8), *(v1 + v6), *(v1 + v6 + 8), *(v1 + v7), *(v1 + 24), (v1 + v9));
}

void sub_F17EC()
{
  v1 = *(*(sub_2CCA10() - 8) + 80);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);

  sub_EE080(v2, v3);
}

unint64_t sub_F18AC()
{
  result = qword_3504E8;
  if (!qword_3504E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3504E8);
  }

  return result;
}

unint64_t sub_F1900()
{
  result = qword_3504F0;
  if (!qword_3504F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3504F0);
  }

  return result;
}

uint64_t sub_F19A8()
{
  v1 = *(sub_2CC100() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(sub_2C8E80() - 8);
  v5 = *(v0 + 16);
  v6 = *(v0 + v3);
  v7 = *(v0 + v3 + 8);
  v8 = v0 + ((v3 + *(v4 + 80) + 16) & ~*(v4 + 80));

  return sub_EB6EC(v5, v0 + v2, v6, v7, v8);
}

uint64_t sub_F1A8C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_F1AE0(uint64_t a1)
{
  v2 = type metadata accessor for BundleResolutionResult();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_F1B3C(uint64_t a1, uint64_t a2)
{
  v4 = sub_20410(&qword_34E740, &unk_2D68F0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_F1BB8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BundleResolutionResult();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_F1C1C(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v7 = *(sub_2CCA70() - 8);
  v8 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v9 = v3 + ((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
  v10 = *v9;
  v11 = *(v9 + 8);

  return sub_E7DC0(a1, a2, a3, v3 + v8, v10, v11);
}

uint64_t sub_F1CD4(uint64_t a1)
{
  v3 = *(sub_2CCA70() - 8);
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1 + ((*(v3 + 80) + 40) & ~*(v3 + 80));

  return sub_E762C(a1, v4, v5, v6, v7);
}

uint64_t sub_F1D4C(uint64_t a1, uint64_t a2)
{
  v5 = *(sub_2CCA70() - 8);
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = v2[5];
  v10 = v2[6];
  v11 = v2 + ((*(v5 + 80) + 56) & ~*(v5 + 80));

  return sub_E822C(a1, a2, v6, v7, v8, v9, v10, v11);
}

uint64_t sub_F1E7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v73 = a1;
  v77 = a2;
  v4 = sub_2CE000();
  v5 = *(v4 - 8);
  v6 = v5[8];
  v7 = __chkstk_darwin(v4);
  v75 = &v71 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v74 = &v71 - v10;
  v11 = __chkstk_darwin(v9);
  v13 = &v71 - v12;
  v14 = __chkstk_darwin(v11);
  v16 = &v71 - v15;
  v17 = __chkstk_darwin(v14);
  v72 = &v71 - v18;
  __chkstk_darwin(v17);
  v20 = &v71 - v19;
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v21 = sub_3ED0(v4, static Logger.default);
  swift_beginAccess();
  v78 = v5[2];
  v78(v20, v21, v4);
  v22 = sub_2CDFE0();
  v23 = sub_2CE660();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v71 = v5 + 2;
    *v24 = 0;
    _os_log_impl(&dword_0, v22, v23, "PlayMediaUnsupportedValueSnippetProvider#unsupportedValueOutputView...", v24, 2u);
  }

  v76 = a3;

  v25 = v5[1];
  v25(v20, v4);
  v26 = v77;
  v27 = sub_1D2364(&off_32FAD0);
  sub_F1954(&unk_32FAF0);
  if ((v27 & 1) != 0 || _s23AudioFlowDelegatePlugin22InternalSignalsManagerC10doesIntent_4haveSbSo8INIntentC_SaySSGtFZ_0(v26, &off_32FB00))
  {
    v28 = v75;
    v78(v75, v21, v4);
    v29 = sub_2CDFE0();
    v30 = sub_2CE660();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_0, v29, v30, "PlayMediaUnsupportedValueSnippetProvider#unsupportedValueOutputView returning nil for podcast promotion", v31, 2u);
    }

    v25(v28, v4);
    v32 = sub_2CD230();
    return (*(*(v32 - 8) + 56))(v76, 1, 1, v32);
  }

  if (_s23AudioFlowDelegatePlugin22InternalSignalsManagerC10doesIntent_4haveSbSo8INIntentC_SaySSGtFZ_0(v26, &off_32FB30))
  {
    v34 = v74;
    v78(v74, v21, v4);
    v35 = sub_2CDFE0();
    v36 = sub_2CE660();
    v37 = os_log_type_enabled(v35, v36);
    v38 = v76;
    if (v37)
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&dword_0, v35, v36, "PlayMediaUnsupportedValueSnippetProvider#unsupportedValueOutputView returning nil for acousticID follow up not found", v39, 2u);
    }

    v40 = v34;
LABEL_22:
    v25(v40, v4);
LABEL_23:
    v50 = sub_2CD230();
    return (*(*(v50 - 8) + 56))(v38, 1, 1, v50);
  }

  v41 = _s23AudioFlowDelegatePlugin22InternalSignalsManagerC10doesIntent_4haveSbSo8INIntentC_SaySSGtFZ_0(v26, &off_32FB60);
  v38 = v76;
  if (!v41)
  {
    v78(v13, v21, v4);
    v47 = sub_2CDFE0();
    v48 = sub_2CE660();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      *v49 = 0;
      _os_log_impl(&dword_0, v47, v48, "PlayMediaUnsupportedValueSnippetProvider#unsupportedValueOutputView returning nil for subscriber", v49, 2u);
    }

    v40 = v13;
    goto LABEL_22;
  }

  v42 = sub_2CCF90();
  v44 = v43;
  v45 = sub_2CBE10();
  if (!v44)
  {

    goto LABEL_29;
  }

  if (v42 != v45 || v44 != v46)
  {
    v51 = sub_2CEEA0();

    if (v51)
    {
      goto LABEL_26;
    }

LABEL_29:
    v78(v16, v21, v4);

    v59 = sub_2CDFE0();
    v60 = sub_2CE660();

    if (os_log_type_enabled(v59, v60))
    {
      v78 = v16;
      v61 = v38;
      v62 = swift_slowAlloc();
      v63 = swift_slowAlloc();
      *v62 = 138412290;
      v64 = sub_2CCF90();
      if (v65)
      {
        v66 = v64;
        v67 = v65;
        sub_10C40();
        swift_allocError();
        *v68 = v66;
        v68[1] = v67;
        v69 = _swift_stdlib_bridgeErrorToNSError();
        v70 = v69;
      }

      else
      {
        v69 = 0;
        v70 = 0;
      }

      *(v62 + 4) = v69;
      *v63 = v70;
      _os_log_impl(&dword_0, v59, v60, "PlayMediaUnsupportedValueSnippetProvider#appleMusicButton returning nil since appID: %@ ", v62, 0xCu);
      sub_212CC(v63);

      v38 = v61;
      v16 = v78;
    }

    v25(v16, v4);
    goto LABEL_23;
  }

LABEL_26:
  v52 = v72;
  v78(v72, v21, v4);
  v53 = sub_2CDFE0();
  v54 = sub_2CE660();
  if (os_log_type_enabled(v53, v54))
  {
    v55 = swift_slowAlloc();
    *v55 = 0;
    _os_log_impl(&dword_0, v53, v54, "PlayMediaUnsupportedValueSnippetProvider#unsupportedValueOutputView returning an apple music button", v55, 2u);
  }

  v25(v52, v4);
  sub_F26DC(v38);
  v56 = enum case for SiriAudioSnippets.actionButton(_:);
  v57 = sub_2CD230();
  v58 = *(v57 - 8);
  (*(v58 + 104))(v38, v56, v57);
  return (*(v58 + 56))(v38, 0, 1, v57);
}

void sub_F26DC(uint64_t a1@<X8>)
{
  v2 = v1;
  v49 = a1;
  v3 = sub_2CD2E0();
  v47 = *(v3 - 8);
  v48 = v3;
  v4 = *(v47 + 64);
  __chkstk_darwin(v3);
  v46 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_2CD2C0();
  v43 = *(v45 - 8);
  v6 = *(v43 + 64);
  __chkstk_darwin(v45);
  v44 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_20410(&unk_3519B0, &qword_2D1230);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v40 - v10;
  v12 = sub_2C8E80();
  v41 = *(v12 - 8);
  v42 = v12;
  v13 = *(v41 + 64);
  __chkstk_darwin(v12);
  v15 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_2C8EC0();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v20 = &v40 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = v1[6];
  sub_35E0(v1 + 2, v1[5]);
  type metadata accessor for PlayMediaViewProvider();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v23 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  sub_2CB570();
  sub_2CC620();

  (*(v17 + 8))(v20, v16);
  sub_20410(&qword_34CEA8, &unk_2D0EB0);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_2D0090;
  v25 = sub_F2FEC();
  v27 = v26;
  *(v24 + 56) = &type metadata for String;
  *(v24 + 64) = sub_1087C();
  *(v24 + 32) = v25;
  *(v24 + 40) = v27;
  sub_2CE280();

  v28 = [objc_allocWithZone(SAUIAppPunchOut) init];
  sub_2CBE10();
  v29 = sub_2CE260();

  [v28 setBundleId:v29];

  v30 = sub_2CE260();
  [v28 setAppDisplayName:v30];

  [v28 setAppAvailableInStorefront:1];
  v31 = v28;
  sub_2C8E70();
  sub_2C8E50();
  (*(v41 + 8))(v15, v42);
  v32 = sub_2CE260();

  [v31 setAceId:v32];

  v33 = v2[7];
  v34 = v2[8];
  sub_2C8D80();
  v35 = sub_2C8D90();
  v36 = *(v35 - 8);
  v38 = 0;
  if ((*(v36 + 48))(v11, 1, v35) != 1)
  {
    sub_2C8D50(v37);
    v38 = v39;
    (*(v36 + 8))(v11, v35);
  }

  [v31 setPunchOutUri:v38];

  (*(v43 + 104))(v44, enum case for SiriAudioActionButtonSnippetRole.standard(_:), v45);
  (*(v47 + 104))(v46, enum case for SiriAudioActionButtonSnippetStyle.button(_:), v48);
  sub_2CD2D0();
}

uint64_t sub_F2CA4@<X0>(uint64_t a1@<X8>)
{
  v29 = a1;
  v28 = sub_2CD2E0();
  v1 = *(v28 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v28);
  v4 = v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2CD2C0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_20410(&unk_3519B0, &qword_2D1230);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = v27 - v12;
  v14 = sub_F3178();
  v27[0] = v15;
  v27[1] = v14;
  v16 = [objc_allocWithZone(SAUIAppPunchOut) init];
  sub_2C8D80();
  v17 = sub_2C8D90();
  v18 = *(v17 - 8);
  v20 = 0;
  if ((*(v18 + 48))(v13, 1, v17) != 1)
  {
    sub_2C8D50(v19);
    v20 = v21;
    (*(v18 + 8))(v13, v17);
  }

  [v16 setPunchOutUri:v20];

  (*(v6 + 104))(v9, enum case for SiriAudioActionButtonSnippetRole.standard(_:), v5);
  (*(v1 + 104))(v4, enum case for SiriAudioActionButtonSnippetStyle.button(_:), v28);
  v22 = v29;
  sub_2CD2D0();
  v23 = enum case for SiriAudioSnippets.actionButton(_:);
  v24 = sub_2CD230();
  v25 = *(v24 - 8);
  (*(v25 + 104))(v22, v23, v24);
  return (*(v25 + 56))(v22, 0, 1, v24);
}

uint64_t sub_F2FEC()
{
  v1 = sub_2C8EC0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = v0[6];
  sub_35E0(v0 + 2, v0[5]);
  type metadata accessor for PlayMediaViewProvider();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v8 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  sub_2CB570();
  v9 = sub_2CC620();

  (*(v2 + 8))(v5, v1);
  return v9;
}

uint64_t sub_F3178()
{
  v1 = sub_2C8EC0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = v0[6];
  sub_35E0(v0 + 2, v0[5]);
  type metadata accessor for PlayMediaViewProvider();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v8 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  sub_2CB570();
  v9 = sub_2CC620();

  (*(v2 + 8))(v5, v1);
  return v9;
}

uint64_t sub_F3304()
{
  sub_306C((v0 + 16));
  v1 = *(v0 + 64);

  return swift_deallocClassInstance();
}

uint64_t sub_F3368(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v48 = a2;
  v52 = a1;
  v5 = sub_2CE000();
  v49 = *(v5 - 8);
  v50 = v5;
  v6 = *(v49 + 64);
  __chkstk_darwin(v5);
  v54 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2CDFD0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v12 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = &v46 - v13;
  v15 = v3[5];
  v51 = v3[4];
  v16 = v3[6];
  v59 = 0;
  memset(v58, 0, sizeof(v58));
  if (qword_34BF98 != -1)
  {
    swift_once();
  }

  v17 = qword_35F760;
  sub_2CDFB0();
  (*(v9 + 16))(v12, v14, v8);
  v18 = (*(v9 + 80) + 33) & ~*(v9 + 80);
  v55 = v14;
  v19 = (v10 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  *(v20 + 16) = "catServiceExecute";
  *(v20 + 24) = 17;
  *(v20 + 32) = 2;
  v47 = v9;
  v21 = *(v9 + 32);
  v53 = v8;
  v21(v20 + v18, v12);
  v22 = (v20 + v19);
  *v22 = v48;
  v22[1] = a3;

  sub_2CE9E0();
  sub_20410(&qword_34CEA8, &unk_2D0EB0);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_2D0E40;
  *(v23 + 56) = &type metadata for String;
  v24 = sub_1087C();
  v48 = v15;
  *(v23 + 32) = v15;
  *(v23 + 40) = v16;
  *(v23 + 96) = &type metadata for String;
  *(v23 + 104) = v24;
  *(v23 + 64) = v24;
  *(v23 + 72) = 0x6E696E657473694CLL;
  *(v23 + 80) = 0xE900000000000067;

  v45 = v23;
  LOBYTE(v44) = 2;
  v43 = 125;
  sub_2CDF90();

  v25 = swift_allocObject();
  *(v25 + 16) = sub_13D80;
  *(v25 + 24) = v20;
  v46 = v25;
  v26 = qword_34BF58;

  if (v26 != -1)
  {
    swift_once();
  }

  v27 = v50;
  v28 = sub_3ED0(v50, static Logger.default);
  swift_beginAccess();
  v29 = v49;
  v30 = v54;
  (*(v49 + 16))(v54, v28, v27);

  v31 = sub_2CDFE0();
  v32 = sub_2CE660();

  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v56 = swift_slowAlloc();
    *v33 = 136315394;
    v34 = v48;
    *(v33 + 4) = sub_3F08(v48, v16, &v56);
    *(v33 + 12) = 2080;
    *(v33 + 14) = sub_3F08(0x6E696E657473694CLL, 0xE900000000000067, &v56);
    _os_log_impl(&dword_0, v31, v32, "Evaluating CAT family:%s id:%s...", v33, 0x16u);
    swift_arrayDestroy();

    (*(v29 + 8))(v54, v27);
  }

  else
  {

    (*(v29 + 8))(v30, v27);
    v34 = v48;
  }

  v56 = v34;
  v57 = v16;

  v60._countAndFlagsBits = 35;
  v60._object = 0xE100000000000000;
  sub_2CE350(v60);
  v61._countAndFlagsBits = 0x6E696E657473694CLL;
  v61._object = 0xE900000000000067;
  sub_2CE350(v61);
  v36 = v56;
  v35 = v57;
  v37 = sub_2CB460();
  if (!v37)
  {
    sub_2CB180();
    v37 = sub_2CB170();
  }

  v38 = v37;
  v39 = swift_allocObject();
  v39[2] = v38;
  v39[3] = sub_13DB4;
  v39[4] = v46;
  v40 = sub_2CB180();
  __chkstk_darwin(v40);
  v41 = v52;
  *(&v46 - 10) = v51;
  *(&v46 - 9) = v41;
  *(&v46 - 8) = 0;
  *(&v46 - 7) = v58;
  *(&v46 - 6) = 0;
  *(&v46 - 5) = v36;
  v43 = v35;
  v44 = sub_3E06C;
  v45 = v39;

  sub_2CB0F0();

  (*(v47 + 8))(v55, v53);
  return sub_48E38(v58);
}

uint64_t sub_F39DC(uint64_t a1, char *a2, char *a3)
{
  v47 = a2;
  v51 = a1;
  v5 = sub_2CE000();
  v48 = *(v5 - 8);
  v49 = v5;
  v6 = *(v48 + 64);
  __chkstk_darwin(v5);
  v54 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2CDFD0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v12 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = &v46 - v13;
  v15 = v3[5];
  v50 = v3[4];
  v55 = v15;
  v16 = v3[6];
  v59 = 0;
  memset(v58, 0, sizeof(v58));
  if (qword_34BF98 != -1)
  {
    swift_once();
  }

  v17 = qword_35F760;
  sub_2CDFB0();
  (*(v9 + 16))(v12, v14, v8);
  v18 = (*(v9 + 80) + 33) & ~*(v9 + 80);
  v19 = (v10 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  *(v20 + 16) = "catServiceExecute";
  *(v20 + 24) = 17;
  *(v20 + 32) = 2;
  v52 = v9;
  v53 = v8;
  (*(v9 + 32))(v20 + v18, v12, v8);
  v21 = (v20 + v19);
  *v21 = v47;
  v21[1] = a3;

  sub_2CE9E0();
  sub_20410(&qword_34CEA8, &unk_2D0EB0);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_2D0E40;
  *(v22 + 56) = &type metadata for String;
  v23 = sub_1087C();
  v24 = v55;
  *(v22 + 32) = v55;
  *(v22 + 40) = v16;
  *(v22 + 96) = &type metadata for String;
  *(v22 + 104) = v23;
  *(v22 + 64) = v23;
  *(v22 + 72) = 0x6673736563637553;
  *(v22 + 80) = 0xEF686374614D6C75;

  v45 = v22;
  LOBYTE(v44) = 2;
  v43 = 125;
  sub_2CDF90();

  v25 = swift_allocObject();
  *(v25 + 16) = sub_13D80;
  *(v25 + 24) = v20;
  v46 = v25;
  v26 = qword_34BF58;

  v47 = v14;
  if (v26 != -1)
  {
    swift_once();
  }

  v27 = v49;
  v28 = sub_3ED0(v49, static Logger.default);
  swift_beginAccess();
  v29 = v48;
  v30 = v54;
  (*(v48 + 16))(v54, v28, v27);

  v31 = sub_2CDFE0();
  v32 = sub_2CE660();

  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v56 = swift_slowAlloc();
    *v33 = 136315394;
    *(v33 + 4) = sub_3F08(v55, v16, &v56);
    *(v33 + 12) = 2080;
    *(v33 + 14) = sub_3F08(0x6673736563637553, 0xEF686374614D6C75, &v56);
    _os_log_impl(&dword_0, v31, v32, "Evaluating CAT family:%s id:%s...", v33, 0x16u);
    swift_arrayDestroy();
    v24 = v55;

    (*(v29 + 8))(v54, v27);
  }

  else
  {

    (*(v29 + 8))(v30, v27);
  }

  v34 = v52;
  v56 = v24;
  v57 = v16;

  v60._countAndFlagsBits = 35;
  v60._object = 0xE100000000000000;
  sub_2CE350(v60);
  v61._countAndFlagsBits = 0x6673736563637553;
  v61._object = 0xEF686374614D6C75;
  sub_2CE350(v61);
  v36 = v56;
  v35 = v57;
  v37 = sub_2CB460();
  if (!v37)
  {
    sub_2CB180();
    v37 = sub_2CB170();
  }

  v38 = v37;
  v39 = swift_allocObject();
  v39[2] = v38;
  v39[3] = sub_13DB4;
  v39[4] = v46;
  v40 = sub_2CB180();
  __chkstk_darwin(v40);
  v41 = v51;
  *(&v46 - 10) = v50;
  *(&v46 - 9) = v41;
  *(&v46 - 8) = 0;
  *(&v46 - 7) = v58;
  *(&v46 - 6) = 0;
  *(&v46 - 5) = v36;
  v43 = v35;
  v44 = sub_3E06C;
  v45 = v39;

  sub_2CB0F0();

  (*(v34 + 8))(v47, v53);
  return sub_48E38(v58);
}

uint64_t sub_F4074(uint64_t a1, uint64_t a2)
{
  v48 = a1;
  v4 = sub_2CE000();
  v49 = *(v4 - 8);
  v50 = v4;
  v5 = *(v49 + 64);
  __chkstk_darwin(v4);
  v54 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2CDFD0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v11 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = &v44 - v12;
  v14 = v2[5];
  v51 = v2[4];
  v15 = v2[6];
  v59 = 0;
  memset(v58, 0, sizeof(v58));
  v52 = sub_112C0(_swiftEmptyArrayStorage);
  if (qword_34BF98 != -1)
  {
    swift_once();
  }

  v16 = qword_35F760;
  sub_2CDFB0();
  (*(v8 + 16))(v11, v13, v7);
  v17 = (*(v8 + 80) + 33) & ~*(v8 + 80);
  v55 = v13;
  v18 = (v9 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = swift_allocObject();
  *(v19 + 16) = "catServiceExecute";
  *(v19 + 24) = 17;
  *(v19 + 32) = 2;
  v47 = v8;
  v20 = *(v8 + 32);
  v53 = v7;
  v20(v19 + v17, v11);
  v21 = (v19 + v18);
  *v21 = v48;
  v21[1] = a2;

  sub_2CE9E0();
  sub_20410(&qword_34CEA8, &unk_2D0EB0);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_2D0E40;
  *(v22 + 56) = &type metadata for String;
  v23 = sub_1087C();
  v48 = v14;
  *(v22 + 32) = v14;
  *(v22 + 40) = v15;
  *(v22 + 96) = &type metadata for String;
  *(v22 + 104) = v23;
  *(v22 + 64) = v23;
  strcpy((v22 + 72), "NoMatchFound");
  *(v22 + 85) = 0;
  *(v22 + 86) = -5120;

  v43 = v22;
  LOBYTE(v42) = 2;
  v41 = 125;
  sub_2CDF90();

  v24 = swift_allocObject();
  *(v24 + 16) = sub_13D80;
  *(v24 + 24) = v19;
  v45 = v24;
  v25 = qword_34BF58;
  v46 = v19;

  if (v25 != -1)
  {
    swift_once();
  }

  v26 = v50;
  sub_3ED0(v50, static Logger.default);
  swift_beginAccess();
  v27 = v49;
  v28 = v54;
  (*(v49 + 16))();

  v29 = sub_2CDFE0();
  v30 = sub_2CE660();

  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v56 = swift_slowAlloc();
    *v31 = 136315394;
    v32 = v48;
    *(v31 + 4) = sub_3F08(v48, v15, &v56);
    *(v31 + 12) = 2080;
    *(v31 + 14) = sub_3F08(0x46686374614D6F4ELL, 0xEC000000646E756FLL, &v56);
    _os_log_impl(&dword_0, v29, v30, "Evaluating CAT family:%s id:%s...", v31, 0x16u);
    swift_arrayDestroy();

    (*(v27 + 8))(v54, v26);
  }

  else
  {

    (*(v27 + 8))(v28, v26);
    v32 = v48;
  }

  v56 = v32;
  v57 = v15;

  v60._countAndFlagsBits = 35;
  v60._object = 0xE100000000000000;
  sub_2CE350(v60);
  v61._countAndFlagsBits = 0x46686374614D6F4ELL;
  v61._object = 0xEC000000646E756FLL;
  sub_2CE350(v61);
  v33 = v56;
  v34 = v57;
  v35 = sub_2CB460();
  if (!v35)
  {
    sub_2CB180();
    v35 = sub_2CB170();
  }

  v36 = v35;
  v37 = swift_allocObject();
  v37[2] = v36;
  v37[3] = sub_13DB4;
  v37[4] = v45;
  v38 = sub_2CB180();
  __chkstk_darwin(v38);
  v39 = v52;
  *(&v44 - 10) = v51;
  *(&v44 - 9) = v39;
  *(&v44 - 8) = 0;
  *(&v44 - 7) = v58;
  *(&v44 - 6) = 0;
  *(&v44 - 5) = v33;
  v41 = v34;
  v42 = sub_3E06C;
  v43 = v37;

  sub_2CB0F0();

  (*(v47 + 8))(v55, v53);
  return sub_48E38(v58);
}

uint64_t sub_F4708(uint64_t a1, uint64_t a2)
{
  v48 = a1;
  v4 = sub_2CE000();
  v49 = *(v4 - 8);
  v50 = v4;
  v5 = *(v49 + 64);
  __chkstk_darwin(v4);
  v54 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2CDFD0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v11 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = &v44 - v12;
  v14 = v2[5];
  v51 = v2[4];
  v15 = v2[6];
  v59 = 0;
  memset(v58, 0, sizeof(v58));
  v52 = sub_112C0(_swiftEmptyArrayStorage);
  if (qword_34BF98 != -1)
  {
    swift_once();
  }

  v16 = qword_35F760;
  sub_2CDFB0();
  (*(v8 + 16))(v11, v13, v7);
  v17 = (*(v8 + 80) + 33) & ~*(v8 + 80);
  v55 = v13;
  v18 = (v9 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = swift_allocObject();
  *(v19 + 16) = "catServiceExecute";
  *(v19 + 24) = 17;
  *(v19 + 32) = 2;
  v47 = v8;
  v20 = *(v8 + 32);
  v53 = v7;
  v20(v19 + v17, v11);
  v21 = (v19 + v18);
  *v21 = v48;
  v21[1] = a2;

  sub_2CE9E0();
  sub_20410(&qword_34CEA8, &unk_2D0EB0);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_2D0E40;
  *(v22 + 56) = &type metadata for String;
  v23 = sub_1087C();
  v48 = v14;
  *(v22 + 32) = v14;
  *(v22 + 40) = v15;
  *(v22 + 96) = &type metadata for String;
  *(v22 + 104) = v23;
  *(v22 + 64) = v23;
  strcpy((v22 + 72), "GenericError");
  *(v22 + 85) = 0;
  *(v22 + 86) = -5120;

  v43 = v22;
  LOBYTE(v42) = 2;
  v41 = 125;
  sub_2CDF90();

  v24 = swift_allocObject();
  *(v24 + 16) = sub_13D7C;
  *(v24 + 24) = v19;
  v45 = v24;
  v25 = qword_34BF58;
  v46 = v19;

  if (v25 != -1)
  {
    swift_once();
  }

  v26 = v50;
  sub_3ED0(v50, static Logger.default);
  swift_beginAccess();
  v27 = v49;
  v28 = v54;
  (*(v49 + 16))();

  v29 = sub_2CDFE0();
  v30 = sub_2CE660();

  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v56 = swift_slowAlloc();
    *v31 = 136315394;
    v32 = v48;
    *(v31 + 4) = sub_3F08(v48, v15, &v56);
    *(v31 + 12) = 2080;
    *(v31 + 14) = sub_3F08(0x45636972656E6547, 0xEC000000726F7272, &v56);
    _os_log_impl(&dword_0, v29, v30, "Evaluating CAT family:%s id:%s...", v31, 0x16u);
    swift_arrayDestroy();

    (*(v27 + 8))(v54, v26);
  }

  else
  {

    (*(v27 + 8))(v28, v26);
    v32 = v48;
  }

  v56 = v32;
  v57 = v15;

  v60._countAndFlagsBits = 35;
  v60._object = 0xE100000000000000;
  sub_2CE350(v60);
  v61._countAndFlagsBits = 0x45636972656E6547;
  v61._object = 0xEC000000726F7272;
  sub_2CE350(v61);
  v33 = v56;
  v34 = v57;
  v35 = sub_2CB460();
  if (!v35)
  {
    sub_2CB180();
    v35 = sub_2CB170();
  }

  v36 = v35;
  v37 = swift_allocObject();
  v37[2] = v36;
  v37[3] = sub_13D84;
  v37[4] = v45;
  v38 = sub_2CB180();
  __chkstk_darwin(v38);
  v39 = v52;
  *(&v44 - 10) = v51;
  *(&v44 - 9) = v39;
  *(&v44 - 8) = 0;
  *(&v44 - 7) = v58;
  *(&v44 - 6) = 0;
  *(&v44 - 5) = v33;
  v41 = v34;
  v42 = sub_3E010;
  v43 = v37;

  sub_2CB0F0();

  (*(v47 + 8))(v55, v53);
  return sub_48E38(v58);
}

uint64_t sub_F4E2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = *(a6 + 80);
  v14 = *(a6 + 88);
  v15 = type metadata accessor for ContinueInAppDialogStrategy();

  return ContinueInAppDialogFlowStrategy.makeContinueInAppResponse(app:intent:intentResponse:completion:)(a1, a2, a3, a4, a5, v15, a7);
}

uint64_t sub_F4EB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = async function pointer to ContinueInAppDialogFlowStrategy.makeContinueInAppResponse(app:intent:intentResponse:)[1];
  v14 = swift_task_alloc();
  *(v6 + 16) = v14;
  v15 = *(a5 + 80);
  v16 = *(a5 + 88);
  v17 = type metadata accessor for ContinueInAppDialogStrategy();
  *v14 = v6;
  v14[1] = sub_E664;

  return ContinueInAppDialogFlowStrategy.makeContinueInAppResponse(app:intent:intentResponse:)(a1, a2, a3, a4, v17, a6);
}

uint64_t _s11descr32D959O25NeedsConfirmationStrategyCMa()
{
  result = qword_350840;
  if (!qword_350840)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *sub_F4FE4(uint64_t a1, uint64_t *a2)
{
  v3 = v2;
  v35 = a2;
  v34 = sub_2CE990();
  v33 = *(v34 - 8);
  v5 = *(v33 + 64);
  __chkstk_darwin(v34);
  v32 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_2CE180();
  v30 = *(v31 - 8);
  v7 = *(v30 + 64);
  __chkstk_darwin(v31);
  v29 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for SearchForMediaCatDialogService();
  v9 = swift_allocObject();
  v9[2] = 0xD000000000000011;
  v9[3] = 0x80000000002DA8D0;
  v9[5] = 0xD000000000000014;
  v9[6] = 0x80000000002DCFE0;
  v9[4] = a1;
  sub_FA14(_swiftEmptyArrayStorage);
  swift_retain_n();

  v10 = sub_2CC2B0();
  v45 = v10;
  v46 = &protocol witness table for FeatureFlagProvider;
  sub_F390(&v44);
  sub_2CC2A0();
  v11 = sub_2CC360();
  v42 = v11;
  v43 = &protocol witness table for StringsFileResolver;
  sub_F390(&v41);
  sub_2CC350();
  v12 = sub_2CB4A0();
  v13 = sub_2CB490();
  v39 = v12;
  v40 = &protocol witness table for SiriKitTaskLoggingProvider;
  *&v38 = v13;
  type metadata accessor for SearchForMediaDialogProvider();
  v14 = swift_allocObject();
  v14[15] = v9;
  sub_EEAC(&v44, (v14 + 16));
  sub_EEAC(&v38, (v14 + 21));
  sub_EEAC(&v41, v37);
  sub_F338(&v38, v36);
  sub_306C(&v41);
  sub_306C(&v44);
  v14[13] = 0xD000000000000011;
  v14[14] = 0x80000000002DA8D0;
  v14[2] = a1;
  sub_F338(v37, (v14 + 3));
  sub_F338(v36, (v14 + 8));
  v45 = v11;
  v46 = &protocol witness table for StringsFileResolver;
  sub_F390(&v44);
  sub_2CC350();
  sub_20410(&qword_350968, &unk_2D3D60);
  v15 = swift_allocObject();
  sub_F338(&v44, v15 + 16);
  *(v15 + 56) = v14;
  v45 = v10;
  v46 = &protocol witness table for FeatureFlagProvider;
  sub_F390(&v44);

  sub_2CC2A0();
  type metadata accessor for SiriAudioOutputProvider();
  v16 = swift_allocObject();
  sub_F338(&v44, v16 + 16);
  v45 = v10;
  v46 = &protocol witness table for FeatureFlagProvider;
  sub_F390(&v44);
  sub_2CC2A0();
  v17 = sub_2CB490();
  v42 = v12;
  v43 = &protocol witness table for SiriKitTaskLoggingProvider;
  *&v41 = v17;
  v18 = sub_2CC900();
  v19 = *(v18 + 48);
  v20 = *(v18 + 52);
  swift_allocObject();
  v21 = sub_2CC8F0();
  v45 = v18;
  v46 = &protocol witness table for AppleMediaServicesProvider;
  *&v44 = v21;
  v42 = v10;
  v43 = &protocol witness table for FeatureFlagProvider;
  sub_F390(&v41);
  sub_2CC2A0();
  v22 = sub_2CB490();
  v39 = v12;
  v40 = &protocol witness table for SiriKitTaskLoggingProvider;
  *&v38 = v22;
  if (qword_34BF88 != -1)
  {
    swift_once();
  }

  v23 = qword_35F740;

  sub_2C9A00();
  v24 = v29;
  sub_2CE170();
  v25 = v32;
  sub_2CE980();
  v26 = sub_2CBA00();

  sub_306C(v35);
  (*(v33 + 8))(v25, v34);
  (*(v30 + 8))(v24, v31);
  v3[26] = v26;
  v3[2] = v14;
  sub_F338(&v44, (v3 + 3));
  sub_F338(&v41, (v3 + 8));
  sub_F338(&v38, (v3 + 13));
  v3[18] = v23;
  sub_F338(v37, (v3 + 20));
  v3[25] = v16;
  v3[19] = v15;
  return v3;
}

uint64_t sub_F5520@<X0>(uint64_t a1@<X8>)
{
  v113 = a1;
  v114 = sub_2CD4C0();
  v116 = *(v114 - 8);
  v1 = *(v116 + 64);
  __chkstk_darwin(v114);
  v103 = &v90[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v117 = sub_20410(&qword_34D6B0, &unk_2D4FC0);
  v3 = *(*(v117 - 8) + 64);
  v4 = __chkstk_darwin(v117);
  v99 = &v90[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = __chkstk_darwin(v4);
  v104 = &v90[-v7];
  __chkstk_darwin(v6);
  v115 = &v90[-v8];
  v9 = sub_20410(&qword_34D6B8, &qword_2D15B0);
  v10 = *(*(v9 - 8) + 64);
  v11 = __chkstk_darwin(v9 - 8);
  v95 = &v90[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = __chkstk_darwin(v11);
  v97 = &v90[-v14];
  v15 = __chkstk_darwin(v13);
  v98 = &v90[-v16];
  v17 = __chkstk_darwin(v15);
  v96 = &v90[-v18];
  v19 = __chkstk_darwin(v17);
  v109 = &v90[-v20];
  v21 = __chkstk_darwin(v19);
  v108 = &v90[-v22];
  v23 = __chkstk_darwin(v21);
  v25 = &v90[-v24];
  v26 = __chkstk_darwin(v23);
  v28 = &v90[-v27];
  __chkstk_darwin(v26);
  v110 = &v90[-v29];
  v112 = sub_2CA870();
  v111 = *(v112 - 8);
  v30 = v111[8];
  __chkstk_darwin(v112);
  v32 = &v90[-((v31 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v33 = sub_2CE000();
  v34 = *(v33 - 8);
  v35 = v34[8];
  v36 = __chkstk_darwin(v33);
  v38 = &v90[-((v37 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v36);
  v40 = &v90[-v39];
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v41 = sub_3ED0(v33, static Logger.default);
  swift_beginAccess();
  v42 = v34[2];
  v107 = v41;
  v106 = v34 + 2;
  v105 = v42;
  v42(v40, v41, v33);
  v43 = sub_2CDFE0();
  v44 = sub_2CE690();
  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    v102 = v25;
    *v45 = 0;
    _os_log_impl(&dword_0, v43, v44, "AddMediaFlowStrategy#actionForInput", v45, 2u);
    v25 = v102;
  }

  v48 = v34[1];
  v46 = v34 + 1;
  v47 = v48;
  v48(v40, v33);
  sub_2CA790();
  v49 = sub_D2F98(v32, &v118);
  (v111[1])(v32, v112, v49);
  if (v119)
  {
    v94 = v38;
    v50 = v25;
    v92 = v47;
    v93 = v33;
    sub_420A4(&v118, &v120);
    sub_35E0(&v120, v121);
    v51 = v110;
    sub_2CD840();
    v52 = v116;
    v53 = (v116 + 104);
    v54 = v114;
    v101 = *(v116 + 104);
    v101(v28, enum case for CommonAudio.Verb.subscribe(_:), v114);
    v55 = *(v52 + 56);
    v102 = (v52 + 56);
    v100 = v55;
    v55(v28, 0, 1, v54);
    v56 = *(v117 + 48);
    v57 = v115;
    sub_F7598(v51, v115);
    sub_F7598(v28, &v57[v56]);
    v58 = *(v52 + 48);
    v59 = (v58)(v57, 1, v54);
    v111 = v58;
    if (v59 == 1)
    {
      sub_30B8(v28, &qword_34D6B8, &qword_2D15B0);
      v60 = v115;
      sub_30B8(v51, &qword_34D6B8, &qword_2D15B0);
      v61 = (v58)(&v60[v56], 1, v54);
      v62 = v109;
      if (v61 == 1)
      {
        goto LABEL_21;
      }
    }

    else
    {
      sub_F7598(v57, v50);
      v63 = (v58)(&v57[v56], 1, v54);
      v62 = v109;
      if (v63 != 1)
      {
        v112 = v46;
        v73 = v116;
        v74 = v103;
        (*(v116 + 32))(v103, &v57[v56], v54);
        sub_F7608(&qword_34D708, &type metadata accessor for CommonAudio.Verb);
        v91 = sub_2CE250();
        v75 = *(v73 + 8);
        v75(v74, v54);
        sub_30B8(v28, &qword_34D6B8, &qword_2D15B0);
        sub_30B8(v110, &qword_34D6B8, &qword_2D15B0);
        v75(v50, v114);
        v54 = v114;
        sub_30B8(v115, &qword_34D6B8, &qword_2D15B0);
        if (v91)
        {
          goto LABEL_22;
        }

LABEL_13:
        sub_35E0(&v120, v121);
        v64 = v108;
        sub_2CD840();
        v115 = v53;
        v101(v62, enum case for CommonAudio.Verb.update(_:), v54);
        v100(v62, 0, 1, v54);
        v65 = *(v117 + 48);
        v60 = v104;
        sub_F7598(v64, v104);
        sub_F7598(v62, &v60[v65]);
        v66 = v111;
        if ((v111)(v60, 1, v54) == 1)
        {
          sub_30B8(v62, &qword_34D6B8, &qword_2D15B0);
          sub_30B8(v64, &qword_34D6B8, &qword_2D15B0);
          if (v66(&v60[v65], 1, v54) == 1)
          {
            goto LABEL_21;
          }
        }

        else
        {
          v67 = v96;
          sub_F7598(v60, v96);
          if (v66(&v60[v65], 1, v54) != 1)
          {
            v80 = v116;
            v81 = v103;
            (*(v116 + 32))(v103, &v60[v65], v54);
            sub_F7608(&qword_34D708, &type metadata accessor for CommonAudio.Verb);
            v82 = sub_2CE250();
            v83 = *(v80 + 8);
            v83(v81, v114);
            sub_30B8(v62, &qword_34D6B8, &qword_2D15B0);
            sub_30B8(v108, &qword_34D6B8, &qword_2D15B0);
            v83(v67, v114);
            v54 = v114;
            sub_30B8(v60, &qword_34D6B8, &qword_2D15B0);
            if (v82)
            {
              goto LABEL_22;
            }

LABEL_19:
            sub_35E0(&v120, v121);
            v68 = v98;
            sub_2CD840();
            v69 = v97;
            v101(v97, enum case for CommonAudio.Verb.follow(_:), v54);
            v100(v69, 0, 1, v54);
            v70 = *(v117 + 48);
            v60 = v99;
            sub_F7598(v68, v99);
            sub_F7598(v69, &v60[v70]);
            v71 = v111;
            if ((v111)(v60, 1, v54) == 1)
            {
              sub_30B8(v69, &qword_34D6B8, &qword_2D15B0);
              sub_30B8(v68, &qword_34D6B8, &qword_2D15B0);
              if (v71(&v60[v70], 1, v54) == 1)
              {
LABEL_21:
                sub_30B8(v60, &qword_34D6B8, &qword_2D15B0);
LABEL_22:
                sub_2C9CE0();
                return sub_306C(&v120);
              }
            }

            else
            {
              v76 = v95;
              sub_F7598(v60, v95);
              if (v71(&v60[v70], 1, v54) != 1)
              {
                v84 = v69;
                v85 = v116;
                v86 = v68;
                v87 = v103;
                (*(v116 + 32))(v103, &v60[v70], v54);
                sub_F7608(&qword_34D708, &type metadata accessor for CommonAudio.Verb);
                v88 = sub_2CE250();
                v89 = *(v85 + 8);
                v89(v87, v54);
                sub_30B8(v84, &qword_34D6B8, &qword_2D15B0);
                sub_30B8(v86, &qword_34D6B8, &qword_2D15B0);
                v89(v76, v54);
                sub_30B8(v60, &qword_34D6B8, &qword_2D15B0);
                v38 = v94;
                if (v88)
                {
                  goto LABEL_22;
                }

                goto LABEL_28;
              }

              sub_30B8(v69, &qword_34D6B8, &qword_2D15B0);
              sub_30B8(v68, &qword_34D6B8, &qword_2D15B0);
              (*(v116 + 8))(v76, v54);
            }

            sub_30B8(v60, &qword_34D6B0, &unk_2D4FC0);
            v38 = v94;
LABEL_28:
            sub_306C(&v120);
            v33 = v93;
            v47 = v92;
            goto LABEL_29;
          }

          sub_30B8(v62, &qword_34D6B8, &qword_2D15B0);
          sub_30B8(v108, &qword_34D6B8, &qword_2D15B0);
          (*(v116 + 8))(v67, v54);
        }

        sub_30B8(v60, &qword_34D6B0, &unk_2D4FC0);
        goto LABEL_19;
      }

      sub_30B8(v28, &qword_34D6B8, &qword_2D15B0);
      v60 = v115;
      sub_30B8(v110, &qword_34D6B8, &qword_2D15B0);
      (*(v116 + 8))(v50, v54);
    }

    v112 = v46;
    sub_30B8(v60, &qword_34D6B0, &unk_2D4FC0);
    goto LABEL_13;
  }

  v112 = v46;
  sub_30B8(&v118, &qword_34CF98, &unk_2D1A40);
LABEL_29:
  v105(v38, v107, v33);
  v77 = sub_2CDFE0();
  v78 = sub_2CE680();
  if (os_log_type_enabled(v77, v78))
  {
    v79 = swift_slowAlloc();
    *v79 = 0;
    _os_log_impl(&dword_0, v77, v78, "AddMediaFlowStrategy#actionForInput received unsupported pommesResponse", v79, 2u);
  }

  v47(v38, v33);
  return sub_2C9CF0();
}

void AddMediaFlowStrategy.makeIntentFromParse(parse:currentIntent:completion:)(char *a1, void *a2, void (*a3)(id, uint64_t), uint64_t a4)
{
  v95 = a4;
  v96 = a3;
  v98 = a2;
  v5 = sub_2CA870();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v94 = (&v79 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = __chkstk_darwin(v8);
  v88 = &v79 - v11;
  __chkstk_darwin(v10);
  v13 = &v79 - v12;
  v14 = sub_2CE000();
  v15 = *(v14 - 8);
  v16 = v15[8];
  v17 = __chkstk_darwin(v14);
  v89 = &v79 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v17);
  v85 = &v79 - v20;
  v21 = __chkstk_darwin(v19);
  v84 = &v79 - v22;
  __chkstk_darwin(v21);
  v24 = &v79 - v23;
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v25 = sub_3ED0(v14, static Logger.default);
  swift_beginAccess();
  v26 = v15[2];
  v91 = v15 + 2;
  v92 = v25;
  v90 = v26;
  v26(v24, v25, v14);
  v27 = *(v6 + 16);
  v93 = a1;
  v97 = v27;
  v27(v13, a1, v5);
  v28 = v98;
  v29 = sub_2CDFE0();
  v30 = sub_2CE670();

  v87 = v30;
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v83 = v14;
    v32 = v31;
    v81 = swift_slowAlloc();
    v100 = v81;
    *v32 = 136446722;
    v33 = sub_2CCCC0();
    v35 = sub_3F08(v33, v34, &v100);
    v82 = v15;
    v36 = v35;

    *(v32 + 4) = v36;
    *(v32 + 12) = 2080;
    v97(v88, v13, v5);
    v37 = sub_2CE2A0();
    v39 = v38;
    v80 = v6;
    v88 = *(v6 + 8);
    (v88)(v13, v5);
    v40 = sub_3F08(v37, v39, &v100);

    *(v32 + 14) = v40;
    *(v32 + 22) = 2080;
    v99 = v98;
    v41 = v28;
    sub_20410(&qword_350970, qword_2D3D70);
    v42 = sub_2CE2A0();
    v44 = sub_3F08(v42, v43, &v100);

    *(v32 + 24) = v44;
    _os_log_impl(&dword_0, v29, v87, "AddMediaFlowStrategy#makeIntentFromParse %{public}s for parse:%s and previousIntent:%s", v32, 0x20u);
    swift_arrayDestroy();

    v14 = v83;

    v45 = v82[1];
    v45(v24, v14);
    v6 = v80;
  }

  else
  {

    v88 = *(v6 + 8);
    (v88)(v13, v5);
    v45 = v15[1];
    v45(v24, v14);
  }

  v46 = v94;
  v97(v94, v93, v5);
  v47 = (*(v6 + 88))(v46, v5);
  if (v47 == enum case for Parse.NLv3IntentPlusServerConversion(_:))
  {
    v48 = v14;
    (*(v6 + 96))(v46, v5);
    v49 = *(v46 + *(sub_20410(&qword_353070, &unk_2D0FB0) + 48));
    v50 = sub_2CA830();
    objc_opt_self();
    v51 = swift_dynamicCastObjCClass();
    if (v51)
    {
      v52 = v51;
      v53 = sub_2CA840();
      v54 = *(v86 + 16);
      *(v86 + 16) = v53;

      v55 = v50;
      v96(v52, 0);
    }

    else
    {

      v71 = v84;
      v90(v84, v92, v48);
      v72 = sub_2CDFE0();
      v73 = sub_2CE670();
      if (os_log_type_enabled(v72, v73))
      {
        v74 = swift_slowAlloc();
        *v74 = 0;
        _os_log_impl(&dword_0, v72, v73, "AddMediaFlowStrategy#makeIntentFromParse received unsupported NLv3IntentPlusServerConversion parse, ignoring", v74, 2u);
      }

      v45(v71, v48);
      v75 = sub_2CB850();
      sub_F7608(&qword_34CCA8, &type metadata accessor for PlaybackCode);
      v76 = swift_allocError();
      (*(*(v75 - 8) + 104))(v77, enum case for PlaybackCode.ceGE8(_:), v75);
      v96(v76, 1);
    }

    v78 = sub_2CAFE0();
    (*(*(v78 - 8) + 8))(v46, v78);
  }

  else if (v47 == enum case for Parse.pommesResponse(_:))
  {
    (*(v6 + 96))(v46, v5);
    v56 = *v46;
    v57 = v85;
    v58 = v14;
    v90(v85, v92, v14);
    v59 = v56;
    v60 = sub_2CDFE0();
    v61 = sub_2CE690();

    if (os_log_type_enabled(v60, v61))
    {
      v62 = swift_slowAlloc();
      v63 = swift_slowAlloc();
      *v62 = 138477827;
      *(v62 + 4) = v59;
      *v63 = v59;
      v64 = v59;
      _os_log_impl(&dword_0, v60, v61, "AddMediaFlowStrategy#makeIntentFrom received pommesResponse: %{private}@", v62, 0xCu);
      sub_30B8(v63, &unk_34FC00, &unk_2D0150);
    }

    v45(v57, v58);
    sub_F6F40(v59, v96, v95);
  }

  else
  {
    v90(v89, v92, v14);
    v65 = sub_2CDFE0();
    v66 = sub_2CE680();
    if (os_log_type_enabled(v65, v66))
    {
      v67 = swift_slowAlloc();
      *v67 = 0;
      _os_log_impl(&dword_0, v65, v66, "AddMediaFlowStrategy#makeIntentFromParse received unsupported parse", v67, 2u);
    }

    v45(v89, v14);
    v68 = sub_2CB850();
    sub_F7608(&qword_34CCA8, &type metadata accessor for PlaybackCode);
    v69 = swift_allocError();
    (*(*(v68 - 8) + 104))(v70, enum case for PlaybackCode.ceGE9(_:), v68);
    v96(v69, 1);

    (v88)(v46, v5);
  }
}

uint64_t PlayMediaFlowStrategy.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  v3 = *(v0 + 48);

  v4 = *(v0 + 56);

  sub_306C((v0 + 64));
  sub_306C((v0 + 104));

  return swift_deallocClassInstance();
}

void sub_F6F40(void *a1, void (*a2)(id, uint64_t), uint64_t a3)
{
  v57 = a3;
  v58 = a2;
  v4 = sub_2CE000();
  v5 = *(v4 - 8);
  v6 = v5[8];
  v7 = __chkstk_darwin(v4);
  v55 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v56 = &v53 - v10;
  __chkstk_darwin(v9);
  v12 = &v53 - v11;
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v13 = sub_3ED0(v4, static Logger.default);
  swift_beginAccess();
  v14 = v5[2];
  v14(v12, v13, v4);
  v15 = sub_2CDFE0();
  v16 = sub_2CE690();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_0, v15, v16, "AddMediaFlowStrategy#makeIntentFrom", v17, 2u);
  }

  v20 = v5[1];
  v18 = (v5 + 1);
  v19 = v20;
  v20(v12, v4);
  v21 = sub_1B7F14();
  if (v21)
  {
    v22 = v21;
    v54 = v19;
    v55 = v18;
    v23 = [objc_allocWithZone(INAddMediaIntent) init];
    v24 = sub_2CDAE0();
    v25 = sub_60F90(v22, v24);

    v26 = v56;
    v14(v56, v13, v4);
    v27 = v25;
    v28 = sub_2CDFE0();
    v29 = sub_2CE670();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v59 = v31;
      *v30 = 136315138;
      v32 = v27;
      v33 = [v32 description];
      v34 = sub_2CE270();
      v36 = v35;

      v37 = sub_3F08(v34, v36, &v59);

      *(v30 + 4) = v37;
      _os_log_impl(&dword_0, v28, v29, "AddMediaFlowStrategy#makeIntentFromParse converted pommesResponse to intent: %s", v30, 0xCu);
      sub_306C(v31);

      v38 = v56;
    }

    else
    {

      v38 = v26;
    }

    v54(v38, v4);
    v49 = v27;
    v58(v27, 0);
  }

  else
  {
    v39 = v55;
    v14(v55, v13, v4);
    v40 = a1;
    v41 = sub_2CDFE0();
    v42 = sub_2CE680();

    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v59 = v44;
      *v43 = 136315138;
      sub_2CDAD0();
      sub_2CDA50();
      v45 = sub_2CE420();
      v47 = v46;

      v48 = sub_3F08(v45, v47, &v59);

      *(v43 + 4) = v48;
      _os_log_impl(&dword_0, v41, v42, "AddMediaFlowStrategy#makeIntentFromParse pommesResponse doesn't contain audioExperience %s", v43, 0xCu);
      sub_306C(v44);

      v19(v55, v4);
    }

    else
    {

      v19(v39, v4);
    }

    v50 = sub_2CB850();
    sub_F7608(&qword_34CCA8, &type metadata accessor for PlaybackCode);
    v51 = swift_allocError();
    (*(*(v50 - 8) + 104))(v52, enum case for PlaybackCode.ceGE7(_:), v50);
    v58(v51, 1);
  }
}

uint64_t type metadata accessor for AddMediaFlowStrategy()
{
  result = qword_3509A0;
  if (!qword_3509A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_F7598(uint64_t a1, uint64_t a2)
{
  v4 = sub_20410(&qword_34D6B8, &qword_2D15B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_F7608(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for ShimExperience()
{
  result = qword_350B88;
  if (!qword_350B88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_F76EC()
{
  sub_F7760();
  if (v0 <= 0x3F)
  {
    sub_2C8D90();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_F7760()
{
  if (!qword_350B98)
  {
    sub_2CDB90();
    sub_2DB30(&qword_34D418, &qword_2D1258);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_350B98);
    }
  }
}

uint64_t sub_F77E0(uint64_t a1)
{
  v2 = sub_20410(&qword_34E480, &qword_2D2280);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v82 = &v79 - v4;
  v5 = sub_20410(&qword_34D360, &qword_2D11E0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v90 = &v79 - v7;
  v8 = type metadata accessor for AudioNLv3Intent();
  v88 = *(v8 - 8);
  v89 = v8;
  v9 = *(v88 + 64);
  __chkstk_darwin(v8);
  v86 = &v79 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2CA870();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v11);
  v91 = &v79 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = &v79 - v16;
  v18 = sub_2CE000();
  v19 = *(v18 - 8);
  v20 = v19[8];
  v21 = __chkstk_darwin(v18);
  v85 = &v79 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v21);
  v80 = &v79 - v24;
  v25 = __chkstk_darwin(v23);
  v81 = &v79 - v26;
  v27 = __chkstk_darwin(v25);
  v87 = &v79 - v28;
  v29 = __chkstk_darwin(v27);
  v84 = &v79 - v30;
  __chkstk_darwin(v29);
  v32 = &v79 - v31;
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v33 = sub_3ED0(v18, static Logger.default);
  swift_beginAccess();
  v92 = v19[2];
  v93 = v19 + 2;
  v92(v32, v33, v18);
  v34 = sub_2CDFE0();
  v35 = sub_2CE690();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v79 = v33;
    *v36 = 0;
    _os_log_impl(&dword_0, v34, v35, "ShuffleOnDeviceFlow#on Validating input", v36, 2u);
    v33 = v79;
  }

  v37 = v19[1];
  v37(v32, v18);
  sub_2CA790();
  v38 = (*(v12 + 88))(v17, v11);
  if (v38 != enum case for Parse.NLv3IntentOnly(_:))
  {
    if (v38 == enum case for Parse.NLv3IntentPlusServerConversion(_:))
    {
      (*(v12 + 96))(v17, v11);
      v45 = *(sub_20410(&qword_353070, &unk_2D0FB0) + 48);
      v91 = v17;
      v46 = *&v17[v45];
      v47 = sub_2CA830();
      objc_opt_self();
      v48 = swift_dynamicCastObjCClass();

      if (v48)
      {
        v49 = sub_2CA830();
        objc_opt_self();
        if (swift_dynamicCastObjCClass())
        {
          v50 = sub_2CE7C0();

          if (v50)
          {
            v51 = a1;

            v52 = sub_2CAFE0();
            (*(*(v52 - 8) + 8))(v91, v52);
            goto LABEL_39;
          }
        }

        else
        {
        }
      }

      v64 = v81;
      v92(v81, v33, v18);
      v65 = sub_2CDFE0();
      v66 = sub_2CE690();
      if (os_log_type_enabled(v65, v66))
      {
        v67 = swift_slowAlloc();
        *v67 = 0;
        _os_log_impl(&dword_0, v65, v66, "ShuffleOnDeviceFlow#on input is not ambiguous shuffle, rejecting", v67, 2u);
      }

      v37(v64, v18);
      v68 = sub_2CAFE0();
      (*(*(v68 - 8) + 8))(v91, v68);
      return 0;
    }

    if (v38 != enum case for Parse.uso(_:))
    {
      v92(v85, v33, v18);
      v61 = sub_2CDFE0();
      v62 = sub_2CE690();
      if (os_log_type_enabled(v61, v62))
      {
        v63 = swift_slowAlloc();
        *v63 = 0;
        _os_log_impl(&dword_0, v61, v62, "ShuffleOnDeviceFlow#on unexpected parse type, rejecting", v63, 2u);
      }

      v44 = v85;
      goto LABEL_28;
    }

    v55 = v91;
    sub_2CA790();
    v56 = sub_2CA7C0();
    v57 = *(v12 + 8);
    v91 = v11;
    v57(v55, v11);
    if (v56)
    {
      sub_2CAD10();
      if (v95)
      {
        sub_2CAEC0();
        if (swift_dynamicCast())
        {

LABEL_38:
          v51 = a1;
          v57(v17, v91);
          goto LABEL_39;
        }
      }

      else
      {
        sub_30B8(v94, &qword_34CEA0, &qword_2D0FC0);
      }

      if (sub_43C3C())
      {

        goto LABEL_38;
      }

      v69 = sub_43638();

      if (v69)
      {
        goto LABEL_38;
      }
    }

    v92(v80, v33, v18);
    v76 = sub_2CDFE0();
    v77 = sub_2CE690();
    if (os_log_type_enabled(v76, v77))
    {
      v78 = swift_slowAlloc();
      *v78 = 0;
      _os_log_impl(&dword_0, v76, v77, "ShuffleOnDeviceFlow#on input is not shuffle media item or Play on shuffle, rejecting", v78, 2u);
    }

    v37(v80, v18);
    v57(v17, v91);
    return 0;
  }

  v39 = v91;
  sub_2CA790();
  v40 = v90;
  sub_2B6170(v39, v90);
  if ((*(v88 + 48))(v40, 1, v89) != 1)
  {
    v53 = v40;
    v54 = v86;
    sub_D416C(v53, v86);
    if (!sub_2B7010())
    {
      v92(v84, v33, v18);
      v58 = sub_2CDFE0();
      v59 = sub_2CE690();
      if (os_log_type_enabled(v58, v59))
      {
        v60 = swift_slowAlloc();
        *v60 = 0;
        _os_log_impl(&dword_0, v58, v59, "ShuffleOnDeviceFlow#on input is not ambiguous shuffle, rejecting", v60, 2u);
      }

      v37(v84, v18);
      sub_FED50(v86);
      goto LABEL_29;
    }

    v51 = a1;
    sub_FED50(v54);
    (*(v12 + 8))(v17, v11);
LABEL_39:
    v70 = sub_2CA7B0();
    v71 = *(v70 - 8);
    v72 = v82;
    (*(v71 + 16))(v82, v51, v70);
    (*(v71 + 56))(v72, 0, 1, v70);
    v73 = OBJC_IVAR____TtC23AudioFlowDelegatePlugin19ShuffleOnDeviceFlow_input;
    v74 = v83;
    swift_beginAccess();
    sub_FECE8(v72, v74 + v73, &qword_34E480, &qword_2D2280);
    swift_endAccess();
    return 1;
  }

  sub_30B8(v40, &qword_34D360, &qword_2D11E0);
  v92(v87, v33, v18);
  v41 = sub_2CDFE0();
  v42 = sub_2CE680();
  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    *v43 = 0;
    _os_log_impl(&dword_0, v41, v42, "ShuffleOnDeviceFlow#on Fatal: Cannot get AudioNLv3Intent from NLv3IntentOnly parse", v43, 2u);
  }

  v44 = v87;
LABEL_28:
  v37(v44, v18);
LABEL_29:
  (*(v12 + 8))(v17, v11);
  return 0;
}

unint64_t sub_F83B0(void (*a1)(char *), uint64_t a2)
{
  v129 = a2;
  v128 = a1;
  v124 = sub_2C9EC0();
  v123 = *(v124 - 1);
  v2 = *(v123 + 8);
  __chkstk_darwin(v124);
  v122 = v113 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = sub_2CA870();
  v121 = *(v119 - 8);
  v4 = *(v121 + 64);
  __chkstk_darwin(v119);
  v120 = (v113 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_20410(&qword_34E480, &qword_2D2280);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = v113 - v8;
  v130 = sub_2CA7B0();
  v133 = *(v130 - 8);
  v10 = *(v133 + 64);
  v11 = __chkstk_darwin(v130);
  v118 = v113 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v131 = v113 - v12;
  v13 = sub_2CE000();
  v14 = *(v13 - 8);
  v15 = v14[8];
  v16 = __chkstk_darwin(v13);
  v18 = v113 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v16);
  v117 = v113 - v20;
  v21 = __chkstk_darwin(v19);
  v115 = v113 - v22;
  v23 = __chkstk_darwin(v21);
  v116 = v113 - v24;
  __chkstk_darwin(v23);
  v26 = v113 - v25;
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v27 = sub_3ED0(v13, static Logger.default);
  swift_beginAccess();
  v28 = v14[2];
  v126 = v27;
  v125 = v28;
  v28(v26, v27, v13);
  v29 = sub_2CDFE0();
  v30 = sub_2CE690();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    *v31 = 0;
    _os_log_impl(&dword_0, v29, v30, "ShuffleOnDeviceFlow#execute", v31, 2u);
  }

  v32 = v14[1];
  v127 = v14 + 1;
  v32(v26, v13);
  v33 = OBJC_IVAR____TtC23AudioFlowDelegatePlugin19ShuffleOnDeviceFlow_input;
  v34 = v132;
  swift_beginAccess();
  sub_F3F4(v34 + v33, v9, &qword_34E480, &qword_2D2280);
  v35 = v133;
  v36 = v130;
  if ((*(v133 + 48))(v9, 1, v130) == 1)
  {
    sub_30B8(v9, &qword_34E480, &qword_2D2280);
    v125(v18, v126, v13);
    v37 = sub_2CDFE0();
    v38 = sub_2CE680();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&dword_0, v37, v38, "ShuffleOnDeviceFlow#execute Input is nil", v39, 2u);
    }

    v32(v18, v13);
    v40 = v122;
    sub_2C9EB0();
    v128(v40);
    return (*(v123 + 1))(v40, v124);
  }

  v114 = *(v35 + 32);
  v114(v131, v9, v36);
  v42 = v120;
  sub_2CA790();
  v43 = sub_D2F98(v42, &v134);
  v45 = v121 + 8;
  v44 = *(v121 + 8);
  v44(v42, v119, v43);
  if (v135)
  {
    v123 = v44;
    sub_420A4(&v134, &v136);
    sub_D8B98();
    v124 = sub_2CE7D0();
    sub_FE060(v124);
    sub_35E0(&v136, v137);
    result = sub_2CD810();
    if (result >> 62)
    {
      v110 = result;
      v46 = sub_2CEDA0();
      result = v110;
    }

    else
    {
      v46 = *(&dword_10 + (result & 0xFFFFFFFFFFFFFF8));
    }

    v113[1] = v35 + 32;
    if (v46)
    {
      if ((result & 0xC000000000000001) != 0)
      {
        sub_2CECD0();
      }

      else
      {
        if (!*(&dword_10 + (result & 0xFFFFFFFFFFFFFF8)))
        {
          __break(1u);
          return result;
        }

        v47 = *(result + 32);
      }

      v48 = sub_2CAC80();
      v50 = v49;

      if (v50)
      {
        v122 = v32;
        v51 = v116;
        v125(v116, v126, v13);

        v52 = sub_2CDFE0();
        v53 = sub_2CE670();

        if (os_log_type_enabled(v52, v53))
        {
          v54 = swift_slowAlloc();
          v55 = swift_slowAlloc();
          *&v134 = v55;
          *v54 = 136315138;
          *(v54 + 4) = sub_3F08(v48, v50, &v134);
          _os_log_impl(&dword_0, v52, v53, "ShuffleOnDeviceFlow#execute Adding bundleId: %s to intent", v54, 0xCu);
          sub_306C(v55);

          v56 = v116;
        }

        else
        {

          v56 = v51;
        }

        (v122)(v56, v13);
        v76 = sub_230B38(v48, v50, 0, 0);
        v77 = [v124 backingStore];
        objc_opt_self();
        v78 = swift_dynamicCastObjCClass();
        if (!v78)
        {
        }

        [v78 setIntentMetadata:v76];

        v79 = sub_2CBD40();
        *&v134 = v48;
        *(&v134 + 1) = v50;
        __chkstk_darwin(v79);
        v112 = &v134;
        v80 = sub_13964(sub_13A68, &v111, v79);

        if (v80)
        {
          v117 = v10;
          v121 = v45;
          v81 = v115;
          v125(v115, v126, v13);
          v82 = sub_2CDFE0();
          v83 = sub_2CE670();
          v84 = os_log_type_enabled(v82, v83);
          v85 = v130;
          if (v84)
          {
            v86 = swift_slowAlloc();
            *v86 = 0;
            _os_log_impl(&dword_0, v82, v83, "ShuffleOnDeviceFlow#execute resolving routes for 1p app", v86, 2u);
          }

          (v122)(v81, v13);
          v87 = v131;
          sub_2CA790();
          v88 = v132;
          v89 = v133;
          v90 = (v132 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin19ShuffleOnDeviceFlow_deviceResolutionProvider);
          v91 = (v132 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin19ShuffleOnDeviceFlow_encryptionProvider);
          v92 = (v132 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin19ShuffleOnDeviceFlow_sharedContextProvider);
          v93 = v118;
          (*(v133 + 16))(v118, v87, v85);
          v94 = (*(v89 + 80) + 48) & ~*(v89 + 80);
          v95 = swift_allocObject();
          v96 = v124;
          v95[2] = v88;
          v95[3] = v96;
          v97 = v129;
          v95[4] = v128;
          v95[5] = v97;
          v114(v95 + v94, v93, v85);
          v98 = v90[3];
          v127 = v90[4];
          v128 = sub_35E0(v90, v98);
          v99 = v91[3];
          v125 = v91[4];
          v126 = sub_35E0(v91, v99);
          v101 = v92[3];
          v100 = v92[4];
          v102 = sub_35E0(v92, v101);

          v103 = v96;

          v112 = v100;
          v104 = v120;
          sub_1E30DC(v120, v128, v126, v102, sub_FEA4C, v95, v103, v99, v98, v101, v125, v127, v112);

          v123(v104, v119);
          (*(v89 + 8))(v131, v85);
        }

        else
        {
          v105 = v137;
          v106 = v138;
          v107 = sub_35E0(&v136, v137);
          v108 = v124;
          v109 = v131;
          sub_FCAF4(v107, v124, v131, v128, v129, v132, v105, v106);

          (*(v133 + 8))(v109, v130);
        }

        return sub_306C(&v136);
      }
    }

    else
    {
    }

    v62 = v132;
    v63 = *(v132 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin19ShuffleOnDeviceFlow_nowPlayingProvider + 24);
    v127 = *(v132 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin19ShuffleOnDeviceFlow_nowPlayingProvider + 32);
    v126 = sub_35E0((v132 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin19ShuffleOnDeviceFlow_nowPlayingProvider), v63);
    v64 = v133;
    v65 = v118;
    (*(v133 + 16))(v118, v131, v36);
    sub_FE8E8(&v136, &v134);
    v66 = (*(v64 + 80) + 32) & ~*(v64 + 80);
    v67 = &v10[v66 + 7];
    v68 = v36;
    v69 = v67 & 0xFFFFFFFFFFFFFFF8;
    v70 = ((v67 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
    v71 = swift_allocObject();
    v72 = v124;
    *(v71 + 16) = v62;
    *(v71 + 24) = v72;
    v114(v71 + v66, v65, v68);
    v73 = (v71 + v69);
    v74 = v129;
    *v73 = v128;
    v73[1] = v74;
    sub_420A4(&v134, (v71 + v70));

    v75 = v72;

    sub_2CC2F0();

    (*(v64 + 8))(v131, v68);
    return sub_306C(&v136);
  }

  sub_30B8(&v134, &qword_34CF98, &unk_2D1A40);
  v57 = v117;
  v125(v117, v126, v13);
  v58 = sub_2CDFE0();
  v59 = sub_2CE680();
  if (os_log_type_enabled(v58, v59))
  {
    v60 = swift_slowAlloc();
    *v60 = 0;
    _os_log_impl(&dword_0, v58, v59, "ShuffleOnDeviceFlow#execute Failed to create audio intent from parse", v60, 2u);
    v35 = v133;
  }

  v32(v57, v13);
  v61 = v122;
  sub_2C9EB0();
  v128(v61);
  (*(v123 + 1))(v61, v124);
  return (*(v35 + 8))(v131, v36);
}

uint64_t sub_F9368(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t *a10, void *a11, uint64_t a12, void *a13)
{
  v91 = a3;
  v100 = a9;
  v15 = sub_2CA7B0();
  v94 = *(v15 - 8);
  v95 = v15;
  v16 = *(v94 + 64);
  __chkstk_darwin(v15);
  v92 = v17;
  v93 = &v89 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_2CA870();
  v96 = *(v18 - 8);
  v97 = v18;
  v19 = *(v96 + 64);
  __chkstk_darwin(v18);
  v21 = (&v89 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = sub_2CE000();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  v25 = __chkstk_darwin(v22);
  v27 = &v89 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v29 = &v89 - v28;
  v101 = v21;
  v98 = a10;
  v99 = a11;
  if (!a4)
  {
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v91 = a12;
    v58 = sub_3ED0(v22, static Logger.default);
    swift_beginAccess();
    (*(v23 + 16))(v29, v58, v22);
    v59 = sub_2CDFE0();
    v60 = sub_2CE670();
    v61 = os_log_type_enabled(v59, v60);
    v62 = v98;
    if (v61)
    {
      v63 = swift_slowAlloc();
      *v63 = 0;
      _os_log_impl(&dword_0, v59, v60, "ShuffleOnDeviceFlow#execute resolving routes", v63, 2u);
    }

    (*(v23 + 8))(v29, v22);
    sub_2CA790();
    v64 = (a8 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin19ShuffleOnDeviceFlow_deviceResolutionProvider);
    v65 = (a8 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin19ShuffleOnDeviceFlow_encryptionProvider);
    v66 = (a8 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin19ShuffleOnDeviceFlow_sharedContextProvider);
    v68 = v94;
    v67 = v95;
    v69 = *(v94 + 16);
    v70 = v62;
    v71 = a8;
    v90 = a8;
    v72 = v93;
    v69(v93, v70, v95);
    v73 = (*(v68 + 80) + 48) & ~*(v68 + 80);
    v48 = swift_allocObject();
    *(v48 + 2) = v71;
    v74 = v99;
    v75 = v100;
    *(v48 + 3) = v100;
    *(v48 + 4) = v74;
    *(v48 + 5) = v91;
    (*(v68 + 32))(&v48[v73], v72, v67);
    v76 = v64[3];
    v98 = v64[4];
    v99 = sub_35E0(v64, v76);
    v52 = v65[3];
    v95 = v65[4];
    v53 = sub_35E0(v65, v52);
    v77 = v66[3];
    v78 = v66[4];
    v56 = sub_35E0(v66, v77);

    v57 = v75;

    v88 = v78;
    v87 = v98;
    v85 = v77;
    v86 = v95;
    v84 = v76;
    goto LABEL_13;
  }

  v30 = a8;
  v31 = sub_2CBD40();
  v102[0] = v91;
  v102[1] = a4;
  __chkstk_darwin(v31);
  v88 = v102;
  v32 = sub_13964(sub_334E8, &v86, v31);

  if (v32)
  {
    v33 = v30;
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v34 = sub_3ED0(v22, static Logger.default);
    swift_beginAccess();
    (*(v23 + 16))(v27, v34, v22);
    v35 = sub_2CDFE0();
    v36 = sub_2CE670();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&dword_0, v35, v36, "ShuffleOnDeviceFlow#execute resolving routes for 1p app", v37, 2u);
    }

    (*(v23 + 8))(v27, v22);
    v38 = v98;
    sub_2CA790();
    v39 = (v30 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin19ShuffleOnDeviceFlow_deviceResolutionProvider);
    v40 = (v30 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin19ShuffleOnDeviceFlow_encryptionProvider);
    v41 = (v30 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin19ShuffleOnDeviceFlow_sharedContextProvider);
    v43 = v94;
    v42 = v95;
    v44 = *(v94 + 16);
    v45 = v33;
    v90 = v33;
    v46 = v93;
    v44(v93, v38, v95);
    v47 = (*(v43 + 80) + 48) & ~*(v43 + 80);
    v48 = swift_allocObject();
    *(v48 + 2) = v45;
    v49 = v99;
    v50 = v100;
    *(v48 + 3) = v100;
    *(v48 + 4) = v49;
    *(v48 + 5) = a12;
    (*(v43 + 32))(&v48[v47], v46, v42);
    v51 = v39[3];
    v98 = v39[4];
    v99 = sub_35E0(v39, v51);
    v52 = v40[3];
    v95 = v40[4];
    v53 = sub_35E0(v40, v52);
    v55 = v41[3];
    v54 = v41[4];
    v56 = sub_35E0(v41, v55);

    v57 = v50;

    v88 = v54;
    v87 = v98;
    v85 = v55;
    v86 = v95;
    v84 = v51;
LABEL_13:
    v79 = v101;
    sub_1E30DC(v101, v99, v53, v56, sub_FEDAC, v48, v57, v52, v84, v85, v86, v87, v88);

    return (*(v96 + 8))(v79, v97);
  }

  v81 = a13[3];
  v82 = a13[4];
  v83 = sub_35E0(a13, v81);
  return sub_FCAF4(v83, v100, v98, v99, a12, v30, v81, v82);
}

uint64_t sub_F9ACC(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t a7)
{
  v107 = a7;
  v101 = a6;
  v102 = a4;
  v98 = a5;
  v105 = a3;
  v92 = a2;
  v93 = a1;
  v7 = sub_2CA7B0();
  v99 = *(v7 - 8);
  v100 = v7;
  v8 = *(v99 + 64);
  __chkstk_darwin(v7);
  v96 = v9;
  v97 = &v89 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2CA870();
  v103 = *(v10 - 8);
  v104 = v10;
  v11 = *(v103 + 64);
  __chkstk_darwin(v10);
  v106 = (&v89 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = sub_20410(&qword_34D6D0, qword_2D34A0);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v91 = &v89 - v15;
  v16 = sub_20410(&qword_34D6C0, &qword_2D15B8);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v90 = &v89 - v18;
  v19 = sub_2CE000();
  v94 = *(v19 - 8);
  v20 = *(v94 + 64);
  v21 = __chkstk_darwin(v19);
  v95 = &v89 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v24 = &v89 - v23;
  v25 = sub_20410(&qword_34FF00, &qword_2D3EB0);
  v26 = *(*(v25 - 8) + 64);
  __chkstk_darwin(v25);
  v28 = &v89 - v27;
  v29 = sub_2CBAF0();
  v30 = *(v29 - 8);
  v31 = *(v30 + 64);
  v32 = __chkstk_darwin(v29);
  v34 = &v89 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v36 = &v89 - v35;
  sub_F3F4(v93, v28, &qword_34FF00, &qword_2D3EB0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_30B8(v28, &qword_34FF00, &qword_2D3EB0);
    v37 = v94;
  }

  else
  {
    v38 = v36;
    (*(v30 + 32))(v36, v28, v29);
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v39 = sub_3ED0(v19, static Logger.default);
    swift_beginAccess();
    v37 = v94;
    (*(v94 + 16))(v24, v39, v19);
    v40 = sub_2CDFE0();
    v41 = sub_2CE670();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      *v42 = 0;
      _os_log_impl(&dword_0, v40, v41, "ShuffleOnDeviceFlow#execute Adding now playing info to intent for 3p app", v42, 2u);
    }

    (*(v37 + 8))(v24, v19);
    (*(v30 + 16))(v34, v38, v29);
    v43 = type metadata accessor for NowPlayingIntent();
    v44 = *(v43 + 48);
    v45 = *(v43 + 52);
    swift_allocObject();
    v46 = sub_D4274(v34);
    v47 = v92;
    v93 = v29;
    v48 = v92[4];
    sub_35E0(v92, v92[3]);
    v49 = v90;
    sub_2CD900();
    v50 = OBJC_IVAR____TtC23AudioFlowDelegatePlugin16NowPlayingIntent_reference;
    swift_beginAccess();
    sub_FECE8(v49, &v46[v50], &qword_34D6C0, &qword_2D15B8);
    swift_endAccess();
    v51 = v47[4];
    sub_35E0(v47, v47[3]);
    v52 = v91;
    sub_2CD8D0();
    v53 = OBJC_IVAR____TtC23AudioFlowDelegatePlugin16NowPlayingIntent_mediaType;
    swift_beginAccess();
    sub_FECE8(v52, &v46[v53], &qword_34D6D0, qword_2D34A0);
    swift_endAccess();

    v55 = sub_691B0(v54, 0, 0);

    v56 = [v105 backingStore];
    objc_opt_self();
    v57 = swift_dynamicCastObjCClass();
    v58 = v30;
    if (v57)
    {
      v59 = v57;
      v60 = INIntentSlotValueTransformToMediaSearch();
      [v59 setMediaSearch:v60];
    }

    else
    {
    }

    (*(v58 + 8))(v38, v93);
  }

  v61 = v95;
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v62 = sub_3ED0(v19, static Logger.default);
  swift_beginAccess();
  (*(v37 + 16))(v61, v62, v19);
  v63 = sub_2CDFE0();
  v64 = sub_2CE670();
  if (os_log_type_enabled(v63, v64))
  {
    v65 = swift_slowAlloc();
    *v65 = 0;
    _os_log_impl(&dword_0, v63, v64, "ShuffleOnDeviceFlow#execute resolving routes for 3p app", v65, 2u);
  }

  (*(v37 + 8))(v61, v19);
  v66 = v98;
  sub_2CA790();
  v67 = v102;
  v68 = (v102 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin19ShuffleOnDeviceFlow_deviceResolutionProvider);
  v69 = (v102 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin19ShuffleOnDeviceFlow_encryptionProvider);
  v70 = (v102 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin19ShuffleOnDeviceFlow_sharedContextProvider);
  v72 = v99;
  v71 = v100;
  v73 = v97;
  (*(v99 + 16))(v97, v66, v100);
  v74 = (*(v72 + 80) + 48) & ~*(v72 + 80);
  v75 = swift_allocObject();
  v76 = v105;
  *(v75 + 2) = v67;
  *(v75 + 3) = v76;
  v77 = v107;
  *(v75 + 4) = v101;
  *(v75 + 5) = v77;
  (*(v72 + 32))(&v75[v74], v73, v71);
  v78 = v68[3];
  v101 = v68[4];
  v79 = sub_35E0(v68, v78);
  v80 = v69[3];
  v100 = v69[4];
  v81 = sub_35E0(v69, v80);
  v83 = v70[3];
  v82 = v70[4];
  v84 = sub_35E0(v70, v83);

  v85 = v76;

  v88 = v82;
  v86 = v106;
  sub_1E30DC(v106, v79, v81, v84, sub_FEDAC, v75, v85, v80, v78, v83, v100, v101, v88);

  return (*(v103 + 8))(v86, v104);
}

uint64_t sub_FA444(__int16 a1, uint64_t a2, void *a3, void (*a4)(char *), uint64_t a5, uint64_t a6)
{
  v33 = a2;
  v34 = a4;
  v10 = sub_2C9EC0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_2CE000();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v19 = &v30 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a1 & 0x100) != 0)
  {
    v31 = a3;
    v32 = a5;
    v21 = a1;
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v22 = sub_3ED0(v15, static Logger.default);
    swift_beginAccess();
    (*(v16 + 16))(v19, v22, v15);
    v23 = sub_2CDFE0();
    v24 = sub_2CE680();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v36 = v26;
      *v25 = 136315138;
      v35 = v21;
      sub_FEA50();
      v27 = sub_2CEEF0();
      v29 = sub_3F08(v27, v28, &v36);

      *(v25 + 4) = v29;
      _os_log_impl(&dword_0, v23, v24, "ShuffleOnDeviceFlow#execute Route resolution failed with error: %s", v25, 0xCu);
      sub_306C(v26);
    }

    (*(v16 + 8))(v19, v15);
    if (v21 == 1)
    {
      return sub_FAB7C(v31, v34, v32);
    }

    else if (v21 == 3)
    {
      return sub_FB1B4(v31, v34, v32);
    }

    else
    {
      return sub_FA790(v31, v34, v32);
    }
  }

  else
  {
    sub_1359C4(a6, a3);
    sub_2C9EA0();
    v34(v14);

    return (*(v11 + 8))(v14, v10);
  }
}

uint64_t sub_FA7CC(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v39 = a3;
  v40 = a5;
  v37 = a2;
  v38 = a4;
  v6 = sub_20410(&unk_3519A0, &qword_2D0980);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6 - 8);
  v10 = v34 - v9;
  v11 = sub_2CE000();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v16 = sub_3ED0(v11, static Logger.default);
  swift_beginAccess();
  (*(v12 + 16))(v15, v16, v11);
  v17 = sub_2CDFE0();
  v18 = sub_2CE670();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_0, v17, v18, "ShuffleOnDeviceFlow#handleDialogResult Handling dialog Result...", v19, 2u);
  }

  (*(v12 + 8))(v15, v11);
  v20 = v37;
  v21 = *(v37 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin19ShuffleOnDeviceFlow_appNameResolver + 32);
  v35 = *(v37 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin19ShuffleOnDeviceFlow_appNameResolver + 24);
  v36 = v21;
  v34[1] = sub_35E0((v37 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin19ShuffleOnDeviceFlow_appNameResolver), v35);
  v34[0] = sub_2CBD50();
  v42 = 0;
  memset(v41, 0, sizeof(v41));
  sub_F3F4(a1, v10, &unk_3519A0, &qword_2D0980);
  v22 = v10;
  v23 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v24 = (v8 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
  v25 = (v24 + 23) & 0xFFFFFFFFFFFFFFF8;
  v26 = (v25 + 15) & 0xFFFFFFFFFFFFFFF8;
  v27 = swift_allocObject();
  sub_14A58(v22, v27 + v23, &unk_3519A0, &qword_2D0980);
  strcpy((v27 + v24), "noSpeakerFound");
  *(v27 + v24 + 15) = -18;
  *(v27 + v25) = v20;
  v28 = v38;
  v29 = v39;
  *(v27 + v26) = v39;
  v30 = (v27 + ((v26 + 15) & 0xFFFFFFFFFFFFFFF8));
  v31 = v40;
  *v30 = v28;
  v30[1] = v31;

  v32 = v29;

  sub_2CBC50();

  return sub_30B8(v41, &qword_34E970, &qword_2D2910);
}

uint64_t sub_FAB7C(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_2CE000();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v13 = sub_3ED0(v8, static Logger.default);
  swift_beginAccess();
  (*(v9 + 16))(v12, v13, v8);
  v14 = sub_2CDFE0();
  v15 = sub_2CE670();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_0, v14, v15, "ShuffleOnDeviceFlow#unsupportedOnPlatformErrorResponse Reached logic...", v16, 2u);
  }

  (*(v9 + 8))(v12, v8);
  v17 = *(v4 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin19ShuffleOnDeviceFlow_playMediaCatDialogService);
  v18 = sub_112C0(_swiftEmptyArrayStorage);
  v22[3] = sub_D8B98();
  v22[4] = &off_3381B8;
  v22[0] = a1;
  v19 = swift_allocObject();
  *(v19 + 16) = v4;
  *(v19 + 24) = a1;
  *(v19 + 32) = a2;
  *(v19 + 40) = a3;
  v20 = a1;

  sub_3D81C(v18, v22, sub_FDDA8, v19);

  return sub_30B8(v22, &qword_34C6C0, &qword_2D0710);
}

uint64_t sub_FADF8(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v37 = a3;
  v38 = a5;
  v35 = a2;
  v36 = a4;
  v6 = sub_20410(&unk_3519A0, &qword_2D0980);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6 - 8);
  v10 = v34 - v9;
  v11 = sub_2CE000();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v16 = sub_3ED0(v11, static Logger.default);
  swift_beginAccess();
  (*(v12 + 16))(v15, v16, v11);
  v17 = sub_2CDFE0();
  v18 = sub_2CE670();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_0, v17, v18, "ShuffleOnDeviceFlow#handleDialogResult Handling dialog Result...", v19, 2u);
  }

  (*(v12 + 8))(v15, v11);
  v34[0] = 0x80000000002DD100;
  v20 = v35;
  v21 = *(v35 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin19ShuffleOnDeviceFlow_appNameResolver + 24);
  v34[3] = *(v35 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin19ShuffleOnDeviceFlow_appNameResolver + 32);
  v34[2] = sub_35E0((v35 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin19ShuffleOnDeviceFlow_appNameResolver), v21);
  v34[1] = sub_2CBD50();
  v40 = 0;
  memset(v39, 0, sizeof(v39));
  sub_F3F4(a1, v10, &unk_3519A0, &qword_2D0980);
  v22 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v23 = (v8 + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
  v24 = (v23 + 23) & 0xFFFFFFFFFFFFFFF8;
  v25 = (v24 + 15) & 0xFFFFFFFFFFFFFFF8;
  v26 = swift_allocObject();
  sub_14A58(v10, v26 + v22, &unk_3519A0, &qword_2D0980);
  v27 = (v26 + v23);
  *v27 = 0xD000000000000015;
  v27[1] = v34[0];
  *(v26 + v24) = v20;
  v28 = v36;
  v29 = v37;
  *(v26 + v25) = v37;
  v30 = (v26 + ((v25 + 15) & 0xFFFFFFFFFFFFFFF8));
  v31 = v38;
  *v30 = v28;
  v30[1] = v31;

  v32 = v29;

  sub_2CBC50();

  return sub_30B8(v39, &qword_34E970, &qword_2D2910);
}

uint64_t sub_FB1F0(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, void (*a7)(void *, uint64_t, void *))
{
  v27 = a4;
  v28 = a5;
  v10 = v7;
  v29 = a2;
  v13 = sub_2CE000();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v18 = sub_3ED0(v13, static Logger.default);
  swift_beginAccess();
  (*(v14 + 16))(v17, v18, v13);
  v19 = sub_2CDFE0();
  v20 = sub_2CE670();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v26 = a1;
    *v21 = 0;
    _os_log_impl(&dword_0, v19, v20, v27, v21, 2u);
    a1 = v26;
  }

  (*(v14 + 8))(v17, v13);
  v22 = *(v10 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin19ShuffleOnDeviceFlow_playMediaCatDialogService);
  v30[3] = sub_D8B98();
  v30[4] = &off_3381B8;
  v30[0] = a1;
  v23 = swift_allocObject();
  v23[2] = v10;
  v23[3] = a1;
  v23[4] = v29;
  v23[5] = a3;
  v24 = a1;

  a7(v30, a6, v23);

  return sub_30B8(v30, &qword_34C6C0, &qword_2D0710);
}

uint64_t sub_FB474(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v37 = a3;
  v38 = a5;
  v35 = a2;
  v36 = a4;
  v6 = sub_20410(&unk_3519A0, &qword_2D0980);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6 - 8);
  v10 = v34 - v9;
  v11 = sub_2CE000();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v16 = sub_3ED0(v11, static Logger.default);
  swift_beginAccess();
  (*(v12 + 16))(v15, v16, v11);
  v17 = sub_2CDFE0();
  v18 = sub_2CE670();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_0, v17, v18, "ShuffleOnDeviceFlow#handleDialogResult Handling dialog Result...", v19, 2u);
  }

  (*(v12 + 8))(v15, v11);
  v34[0] = 0x80000000002DD0E0;
  v20 = v35;
  v21 = *(v35 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin19ShuffleOnDeviceFlow_appNameResolver + 24);
  v34[3] = *(v35 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin19ShuffleOnDeviceFlow_appNameResolver + 32);
  v34[2] = sub_35E0((v35 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin19ShuffleOnDeviceFlow_appNameResolver), v21);
  v34[1] = sub_2CBD50();
  v40 = 0;
  memset(v39, 0, sizeof(v39));
  sub_F3F4(a1, v10, &unk_3519A0, &qword_2D0980);
  v22 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v23 = (v8 + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
  v24 = (v23 + 23) & 0xFFFFFFFFFFFFFFF8;
  v25 = (v24 + 15) & 0xFFFFFFFFFFFFFFF8;
  v26 = swift_allocObject();
  sub_14A58(v10, v26 + v22, &unk_3519A0, &qword_2D0980);
  v27 = (v26 + v23);
  *v27 = 0xD000000000000011;
  v27[1] = v34[0];
  *(v26 + v24) = v20;
  v28 = v36;
  v29 = v37;
  *(v26 + v25) = v37;
  v30 = (v26 + ((v25 + 15) & 0xFFFFFFFFFFFFFFF8));
  v31 = v38;
  *v30 = v28;
  v30[1] = v31;

  v32 = v29;

  sub_2CBC50();

  return sub_30B8(v39, &qword_34E970, &qword_2D2910);
}

uint64_t sub_FB830(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void (*a8)(char *), uint64_t a9)
{
  v129 = a8;
  v124 = a7;
  v122 = a6;
  v118 = a5;
  v117 = a4;
  v113 = a3;
  v119 = a1;
  v127 = a9;
  v9 = sub_2C9EC0();
  v130 = *(v9 - 8);
  v131 = v9;
  v10 = *(v130 + 64);
  __chkstk_darwin(v9);
  v128 = &v109 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_2CE000();
  v125 = *(v12 - 8);
  v126 = v12;
  v13 = *(v125 + 64);
  v14 = __chkstk_darwin(v12);
  v112 = &v109 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v111 = &v109 - v16;
  v17 = sub_20410(&qword_34CB78, &unk_2D0D80);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  v123 = &v109 - v19;
  v20 = sub_20410(&qword_34CB80, &unk_2D0B30);
  v21 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20 - 8);
  v121 = &v109 - v22;
  v23 = sub_20410(&qword_34CB88, &unk_2D0D90);
  v24 = *(*(v23 - 8) + 64);
  __chkstk_darwin(v23 - 8);
  v120 = &v109 - v25;
  v116 = sub_2CCB30();
  v115 = *(v116 - 8);
  v26 = *(v115 + 64);
  __chkstk_darwin(v116);
  v28 = &v109 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = sub_2CCAC0();
  v29 = *(v114 - 8);
  v30 = *(v29 + 64);
  __chkstk_darwin(v114);
  v32 = &v109 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = sub_20410(&qword_34C6E8, &unk_2D0FF0);
  v33 = *(*(v109 - 8) + 64);
  v34 = __chkstk_darwin(v109);
  v110 = &v109 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v34);
  v37 = &v109 - v36;
  v38 = sub_20410(&unk_3519A0, &qword_2D0980);
  v39 = *(*(v38 - 8) + 64);
  __chkstk_darwin(v38);
  v41 = (&v109 - v40);
  sub_2CCFB0();

  v119 = sub_2CCF80();
  sub_F3F4(v113, v41, &unk_3519A0, &qword_2D0980);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v42 = *v41;
    v135 = v117;
    v136 = v118;

    v137._countAndFlagsBits = 95;
    v137._object = 0xE100000000000000;
    sub_2CE350(v137);
    v44 = v135;
    v43 = v136;
    v118 = v42;
    swift_getErrorValue();
    v135 = sub_2CEEF0();
    v136 = v45;
    v46 = sub_2CE3C0();
    v48 = v47;
    v135 = v44;
    v136 = v43;

    v138._countAndFlagsBits = v46;
    v138._object = v48;
    sub_2CE350(v138);

    v49 = v114;
    (*(v29 + 104))(v32, enum case for AdditionalMetricsDescription.ModuleName.sllf(_:), v114);
    v50 = v115;
    v51 = v116;
    (*(v115 + 104))(v28, enum case for AdditionalMetricsDescription.SourceFunction.handleDlgRes(_:), v116);
    v117 = sub_2CCAE0();

    (*(v50 + 8))(v28, v51);
    (*(v29 + 8))(v32, v49);
    v52 = *(v122 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin19ShuffleOnDeviceFlow_siriKitTaskLoggingProvider + 32);
    sub_35E0((v122 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin19ShuffleOnDeviceFlow_siriKitTaskLoggingProvider), *(v122 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin19ShuffleOnDeviceFlow_siriKitTaskLoggingProvider + 24));
    v53 = enum case for ActivityType.failed(_:);
    v54 = sub_2C9C20();
    v55 = *(v54 - 8);
    v56 = v120;
    (*(v55 + 104))(v120, v53, v54);
    (*(v55 + 56))(v56, 0, 1, v54);
    v57 = sub_2CA130();
    v58 = v121;
    (*(*(v57 - 8) + 56))(v121, 1, 1, v57);
    v59 = enum case for SiriKitReliabilityCodes.renderingError(_:);
    v60 = sub_2C98F0();
    v61 = *(v60 - 8);
    v62 = v123;
    (*(v61 + 104))(v123, v59, v60);
    (*(v61 + 56))(v62, 0, 1, v60);

    sub_2CE710();
    sub_2CB4E0();

    sub_30B8(v62, &qword_34CB78, &unk_2D0D80);
    sub_30B8(v58, &qword_34CB80, &unk_2D0B30);
    sub_30B8(v56, &qword_34CB88, &unk_2D0D90);
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v63 = v126;
    v64 = sub_3ED0(v126, static Logger.default);
    swift_beginAccess();
    v65 = v125;
    v66 = v112;
    (*(v125 + 16))(v112, v64, v63);
    swift_errorRetain();
    v67 = sub_2CDFE0();
    v68 = sub_2CE680();

    if (os_log_type_enabled(v67, v68))
    {
      v69 = swift_slowAlloc();
      v70 = swift_slowAlloc();
      v134 = v70;
      *v69 = 136315138;
      swift_getErrorValue();
      v132 = sub_2CEEF0();
      v133 = v71;
      v72 = sub_2CE3C0();
      v74 = sub_3F08(v72, v73, &v134);

      *(v69 + 4) = v74;
      _os_log_impl(&dword_0, v67, v68, "ShuffleOnDeviceFlow#handleDialogResult Could not properly create dialog %s, silently failing...", v69, 0xCu);
      sub_306C(v70);

      (*(v65 + 8))(v112, v63);
    }

    else
    {

      (*(v65 + 8))(v66, v63);
    }

    v108 = v128;
    sub_2C9EB0();
    v129(v108);

    return (*(v130 + 8))(v108, v131);
  }

  else
  {
    v75 = v37;
    sub_14A58(v41, v37, &qword_34C6E8, &unk_2D0FF0);
    v76 = v114;
    (*(v29 + 104))(v32, enum case for AdditionalMetricsDescription.ModuleName.sllf(_:), v114);
    v77 = v115;
    v78 = v116;
    (*(v115 + 104))(v28, enum case for AdditionalMetricsDescription.SourceFunction.handleDlgRes(_:), v116);
    v118 = sub_2CCAE0();
    v117 = v79;
    (*(v77 + 8))(v28, v78);
    (*(v29 + 8))(v32, v76);
    v80 = v122;
    v81 = *(v122 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin19ShuffleOnDeviceFlow_siriKitTaskLoggingProvider + 24);
    v115 = *(v122 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin19ShuffleOnDeviceFlow_siriKitTaskLoggingProvider + 32);
    v116 = sub_35E0((v122 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin19ShuffleOnDeviceFlow_siriKitTaskLoggingProvider), v81);
    v82 = enum case for ActivityType.completed(_:);
    v83 = sub_2C9C20();
    v84 = *(v83 - 8);
    v85 = v120;
    (*(v84 + 104))(v120, v82, v83);
    (*(v84 + 56))(v85, 0, 1, v83);
    v86 = v110;
    sub_F3F4(v75, v110, &qword_34C6E8, &unk_2D0FF0);
    v87 = *(v86 + *(v109 + 48));

    v88 = sub_2CA130();
    v89 = *(v88 - 8);
    v90 = v121;
    (*(v89 + 32))(v121, v86, v88);
    (*(v89 + 56))(v90, 0, 1, v88);
    v91 = enum case for SiriKitReliabilityCodes.genericError(_:);
    v92 = sub_2C98F0();
    v93 = *(v92 - 8);
    v94 = v123;
    (*(v93 + 104))(v123, v91, v92);
    (*(v93 + 56))(v94, 0, 1, v92);
    sub_2CE710();
    sub_2CB4E0();

    sub_30B8(v94, &qword_34CB78, &unk_2D0D80);
    sub_30B8(v90, &qword_34CB80, &unk_2D0B30);
    sub_30B8(v85, &qword_34CB88, &unk_2D0D90);
    v95 = *(v80 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin19ShuffleOnDeviceFlow_viewFactory);
    v96 = sub_2C9BD0();
    v97 = *(v80 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin19ShuffleOnDeviceFlow_aceServiceInvoker + 32);
    sub_35E0((v80 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin19ShuffleOnDeviceFlow_aceServiceInvoker), *(v80 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin19ShuffleOnDeviceFlow_aceServiceInvoker + 24));
    sub_2CA150();
    v98 = v75;
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v99 = v126;
    v100 = sub_3ED0(v126, static Logger.default);
    swift_beginAccess();
    v101 = v125;
    v102 = v111;
    (*(v125 + 16))(v111, v100, v99);
    v103 = sub_2CDFE0();
    v104 = sub_2CE670();
    if (os_log_type_enabled(v103, v104))
    {
      v105 = swift_slowAlloc();
      *v105 = 0;
      _os_log_impl(&dword_0, v103, v104, "ShuffleOnDeviceFlow#handleDialogResult Dialog successfully generated, responding and exiting...", v105, 2u);
    }

    (*(v101 + 8))(v102, v99);
    v106 = v128;
    sub_2C9EB0();
    v129(v106);

    (*(v130 + 8))(v106, v131);
    return sub_30B8(v98, &qword_34C6E8, &unk_2D0FF0);
  }
}

uint64_t sub_FC820()
{
  sub_30B8(v0 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin19ShuffleOnDeviceFlow_input, &qword_34E480, &qword_2D2280);
  sub_306C((v0 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin19ShuffleOnDeviceFlow_audioFlowProvider));
  sub_306C((v0 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin19ShuffleOnDeviceFlow_deviceResolutionProvider));
  sub_306C((v0 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin19ShuffleOnDeviceFlow_encryptionProvider));
  sub_306C((v0 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin19ShuffleOnDeviceFlow_sharedContextProvider));
  sub_306C((v0 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin19ShuffleOnDeviceFlow_aceServiceInvoker));
  sub_306C((v0 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin19ShuffleOnDeviceFlow_appNameResolver));
  v1 = *(v0 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin19ShuffleOnDeviceFlow_playMediaCatDialogService);

  v2 = *(v0 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin19ShuffleOnDeviceFlow_viewFactory);

  sub_306C((v0 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin19ShuffleOnDeviceFlow_siriKitTaskLoggingProvider));
  sub_306C((v0 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin19ShuffleOnDeviceFlow_nowPlayingProvider));
  return v0;
}

uint64_t sub_FC8F8()
{
  sub_FC820();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ShuffleOnDeviceFlow()
{
  result = qword_350BF8;
  if (!qword_350BF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_FC9A4()
{
  sub_B104C();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t sub_FCAA8(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for ShuffleOnDeviceFlow();

  return Flow<>.exitValue.getter(v3, a2);
}

uint64_t sub_FCAF4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v160 = a6;
  v167 = a5;
  v158 = a4;
  v154 = a3;
  v159 = a2;
  v148 = sub_2CA870();
  v147 = *(v148 - 8);
  v11 = *(v147 + 64);
  __chkstk_darwin(v148);
  v165 = (&v129 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v157 = sub_2CA7B0();
  v156 = *(v157 - 8);
  v13 = *(v156 + 64);
  __chkstk_darwin(v157);
  v153 = v14;
  v155 = &v129 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_2CD540();
  v134 = *(v15 - 8);
  v16 = *(v134 + 64);
  __chkstk_darwin(v15);
  v130 = &v129 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v133 = sub_20410(&qword_34D6A8, &unk_2D15A0);
  v18 = *(*(v133 - 8) + 64);
  __chkstk_darwin(v133);
  v135 = &v129 - v19;
  v152 = sub_2CD570();
  v164 = *(v152 - 8);
  v20 = *(v164 + 64);
  __chkstk_darwin(v152);
  v132 = &v129 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v150 = sub_20410(&qword_34D688, &qword_2D1588);
  v22 = *(*(v150 - 8) + 64);
  __chkstk_darwin(v150);
  v151 = &v129 - v23;
  v142 = sub_20410(&qword_34D6D0, qword_2D34A0);
  v24 = *(*(v142 - 1) + 64);
  v25 = __chkstk_darwin(v142);
  v131 = &v129 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __chkstk_darwin(v25);
  v140 = &v129 - v28;
  v29 = __chkstk_darwin(v27);
  v141 = &v129 - v30;
  __chkstk_darwin(v29);
  v138 = &v129 - v31;
  v137 = sub_20410(&qword_34D6C0, &qword_2D15B8);
  v32 = *(*(v137 - 8) + 64);
  v33 = __chkstk_darwin(v137);
  v139 = &v129 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = __chkstk_darwin(v33);
  v163 = &v129 - v36;
  v37 = __chkstk_darwin(v35);
  v168 = (&v129 - v38);
  __chkstk_darwin(v37);
  v39 = sub_2CE000();
  v40 = *(v39 - 8);
  v41 = *(v40 + 64);
  v42 = __chkstk_darwin(v39);
  v146 = &v129 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v42);
  v45 = &v129 - v44;
  v173[3] = a7;
  v173[4] = a8;
  v149 = a8;
  v46 = sub_F390(v173);
  v47 = *(*(a7 - 8) + 16);
  v162 = v46;
  v47(v46, a1, a7);
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v48 = sub_3ED0(v39, static Logger.default);
  swift_beginAccess();
  v49 = *(v40 + 16);
  v145 = v48;
  v144 = v40 + 16;
  v143 = v49;
  v49(v45, v48, v39);
  sub_EEAC(v173, &v171);
  sub_EEAC(v173, v170);
  v50 = sub_2CDFE0();
  v51 = v40;
  v52 = sub_2CE670();
  v53 = os_log_type_enabled(v50, v52);
  v136 = v15;
  v161 = v51;
  v166 = v39;
  if (v53)
  {
    v54 = swift_slowAlloc();
    v129 = swift_slowAlloc();
    v169 = v129;
    *v54 = 136315394;
    sub_35E0(&v171, v172);
    sub_2CD900();
    v55 = sub_2CE2A0();
    v57 = v56;
    sub_306C(&v171);
    v58 = sub_3F08(v55, v57, &v169);

    *(v54 + 4) = v58;
    *(v54 + 12) = 2080;
    sub_35E0(v170, v170[3]);
    sub_2CD8D0();
    v59 = sub_2CE2A0();
    v61 = v60;
    sub_306C(v170);
    v62 = sub_3F08(v59, v61, &v169);

    *(v54 + 14) = v62;
    _os_log_impl(&dword_0, v50, v52, "ShuffleOnDeviceFlow#execute reference: %s mediaType: %s", v54, 0x16u);
    swift_arrayDestroy();

    v142 = *(v161 + 8);
    v142(v45, v166);
  }

  else
  {

    v142 = *(v51 + 8);
    v142(v45, v39);
    sub_306C(&v171);
    sub_306C(v170);
  }

  v63 = v168;
  sub_2CD900();
  v64 = v164;
  v65 = v163;
  v66 = v152;
  (*(v164 + 104))(v163, enum case for CommonAudio.Reference.definite(_:), v152);
  (*(v64 + 56))(v65, 0, 1, v66);
  v67 = *(v150 + 48);
  v68 = v151;
  sub_F3F4(v63, v151, &qword_34D6C0, &qword_2D15B8);
  sub_F3F4(v65, v68 + v67, &qword_34D6C0, &qword_2D15B8);
  v69 = *(v64 + 48);
  if (v69(v68, 1, v66) != 1)
  {
    v72 = v139;
    sub_F3F4(v68, v139, &qword_34D6C0, &qword_2D15B8);
    if (v69(v68 + v67, 1, v66) != 1)
    {
      v73 = v164;
      v74 = v68 + v67;
      v75 = v132;
      (*(v164 + 32))(v132, v74, v66);
      sub_FEB4C(&qword_34D700, &type metadata accessor for CommonAudio.Reference);
      LODWORD(v150) = sub_2CE250();
      v76 = *(v73 + 8);
      v76(v75, v66);
      sub_30B8(v163, &qword_34D6C0, &qword_2D15B8);
      sub_30B8(v168, &qword_34D6C0, &qword_2D15B8);
      v76(v72, v66);
      sub_30B8(v68, &qword_34D6C0, &qword_2D15B8);
      v71 = v166;
      if ((v150 & 1) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_13;
    }

    sub_30B8(v163, &qword_34D6C0, &qword_2D15B8);
    sub_30B8(v168, &qword_34D6C0, &qword_2D15B8);
    (*(v164 + 8))(v72, v66);
    v71 = v166;
LABEL_11:
    sub_30B8(v68, &qword_34D688, &qword_2D1588);
    goto LABEL_19;
  }

  sub_30B8(v65, &qword_34D6C0, &qword_2D15B8);
  sub_30B8(v168, &qword_34D6C0, &qword_2D15B8);
  v70 = v69(v68 + v67, 1, v66);
  v71 = v166;
  if (v70 != 1)
  {
    goto LABEL_11;
  }

  sub_30B8(v68, &qword_34D6C0, &qword_2D15B8);
LABEL_13:
  v77 = v141;
  sub_2CD8D0();
  v78 = v134;
  v79 = v140;
  v80 = v136;
  (*(v134 + 104))(v140, enum case for CommonAudio.MediaType.album(_:), v136);
  (*(v78 + 56))(v79, 0, 1, v80);
  v81 = *(v133 + 48);
  v82 = v135;
  sub_F3F4(v77, v135, &qword_34D6D0, qword_2D34A0);
  sub_F3F4(v79, v82 + v81, &qword_34D6D0, qword_2D34A0);
  v83 = *(v78 + 48);
  if (v83(v82, 1, v80) == 1)
  {
    sub_30B8(v79, &qword_34D6D0, qword_2D34A0);
    sub_30B8(v77, &qword_34D6D0, qword_2D34A0);
    if (v83(v82 + v81, 1, v80) == 1)
    {
      sub_30B8(v82, &qword_34D6D0, qword_2D34A0);
LABEL_24:
      v116 = v160;
      v117 = *(v160 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin19ShuffleOnDeviceFlow_nowPlayingProvider + 24);
      v168 = *(v160 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin19ShuffleOnDeviceFlow_nowPlayingProvider + 32);
      sub_35E0((v160 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin19ShuffleOnDeviceFlow_nowPlayingProvider), v117);
      sub_EEAC(v173, &v171);
      v118 = v156;
      v119 = v155;
      v120 = v157;
      (*(v156 + 16))(v155, v154, v157);
      v121 = (*(v118 + 80) + 72) & ~*(v118 + 80);
      v122 = (v153 + v121 + 7) & 0xFFFFFFFFFFFFFFF8;
      v123 = swift_allocObject();
      sub_F338(&v171, v123 + 16);
      v124 = v159;
      *(v123 + 56) = v159;
      *(v123 + 64) = v116;
      (*(v118 + 32))(v123 + v121, v119, v120);
      v125 = (v123 + v122);
      v126 = v167;
      *v125 = v158;
      v125[1] = v126;
      v127 = v124;

      sub_2CC300();

      return sub_306C(v173);
    }

    goto LABEL_18;
  }

  v84 = v131;
  sub_F3F4(v82, v131, &qword_34D6D0, qword_2D34A0);
  if (v83(v82 + v81, 1, v80) == 1)
  {
    sub_30B8(v140, &qword_34D6D0, qword_2D34A0);
    sub_30B8(v141, &qword_34D6D0, qword_2D34A0);
    (*(v78 + 8))(v84, v80);
LABEL_18:
    sub_30B8(v82, &qword_34D6A8, &unk_2D15A0);
    v71 = v166;
    goto LABEL_19;
  }

  v111 = v82 + v81;
  v112 = v130;
  (*(v78 + 32))(v130, v111, v80);
  sub_FEB4C(&qword_34D388, &type metadata accessor for CommonAudio.MediaType);
  v113 = v84;
  v114 = sub_2CE250();
  v115 = *(v78 + 8);
  v115(v112, v80);
  sub_30B8(v140, &qword_34D6D0, qword_2D34A0);
  sub_30B8(v141, &qword_34D6D0, qword_2D34A0);
  v115(v113, v80);
  sub_30B8(v82, &qword_34D6D0, qword_2D34A0);
  v71 = v166;
  if (v114)
  {
    goto LABEL_24;
  }

LABEL_19:
  v85 = v146;
  v143(v146, v145, v71);
  v86 = sub_2CDFE0();
  v87 = sub_2CE670();
  if (os_log_type_enabled(v86, v87))
  {
    v88 = swift_slowAlloc();
    *v88 = 0;
    _os_log_impl(&dword_0, v86, v87, "ShuffleOnDeviceFlow#execute resolving routes for 3p app", v88, 2u);
  }

  v142(v85, v71);
  v89 = v154;
  sub_2CA790();
  v90 = v160;
  v91 = (v160 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin19ShuffleOnDeviceFlow_deviceResolutionProvider);
  v92 = (v160 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin19ShuffleOnDeviceFlow_encryptionProvider);
  v93 = (v160 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin19ShuffleOnDeviceFlow_sharedContextProvider);
  v94 = v156;
  v95 = v155;
  v96 = v157;
  (*(v156 + 16))(v155, v89, v157);
  v97 = (*(v94 + 80) + 48) & ~*(v94 + 80);
  v98 = swift_allocObject();
  v99 = v159;
  *(v98 + 2) = v90;
  *(v98 + 3) = v99;
  v100 = v167;
  *(v98 + 4) = v158;
  *(v98 + 5) = v100;
  (*(v94 + 32))(&v98[v97], v95, v96);
  v101 = v91[3];
  v168 = v91[4];
  v102 = sub_35E0(v91, v101);
  v103 = v92[3];
  v166 = v92[4];
  v104 = sub_35E0(v92, v103);
  v106 = v93[3];
  v105 = v93[4];
  v107 = sub_35E0(v93, v106);
  v108 = v99;

  v128 = v105;
  v109 = v165;
  sub_1E30DC(v165, v102, v104, v107, sub_FEDAC, v98, v108, v103, v101, v106, v166, v168, v128);

  (*(v147 + 8))(v109, v148);
  return sub_306C(v173);
}

uint64_t sub_FDDB4()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48);
}

uint64_t sub_FDE08()
{
  v1 = *(sub_20410(&unk_3519A0, &qword_2D0980) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = (v0 + v2);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = *v4;
  }

  else
  {
    v6 = sub_2CA130();
    (*(*(v6 - 8) + 8))(v0 + v2, v6);
  }

  v7 = (v3 + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 15) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v9 + 15) & 0xFFFFFFFFFFFFFFF8;
  v11 = *(v0 + v7 + 8);

  v12 = *(v0 + v8);

  v13 = *(v0 + v10 + 8);

  return _swift_deallocObject(v0, v10 + 16);
}

uint64_t sub_FDF7C(uint64_t a1, uint64_t a2)
{
  v5 = *(sub_20410(&unk_3519A0, &qword_2D0980) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  return sub_FB830(a1, a2, v2 + v6, *(v2 + v7), *(v2 + v7 + 8), *(v2 + v8), *(v2 + ((v8 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v2 + ((((v8 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)), *(v2 + ((((v8 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8));
}

uint64_t sub_FE060(void *a1)
{
  v2 = sub_2CE000();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v70 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v81 = &v70 - v8;
  v9 = sub_2C9D60();
  v84 = *(v9 - 8);
  v10 = *(v84 + 64);
  v11 = __chkstk_darwin(v9);
  v79 = (&v70 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = __chkstk_darwin(v11);
  v15 = &v70 - v14;
  __chkstk_darwin(v13);
  v83 = &v70 - v16;
  v17 = sub_2C9D80();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = __chkstk_darwin(v17);
  v22 = &v70 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v24 = &v70 - v23;
  v25 = sub_2CB460();
  if (v25)
  {
    v80 = v3;
    v26 = v2;
    v77 = a1;
    v78 = v9;
    v27 = v25;
    sub_2CB100();
    sub_2CA3A0();

    v76 = sub_2C9D50();
    v29 = v28;
    v30 = *(v18 + 8);
    v30(v24, v17);
    v82 = v29;
    if (v29)
    {
      v74 = v27;
      sub_2CB100();
      sub_2CA3A0();

      v31 = v83;
      sub_2C9D70();
      v30(v22, v17);
      if (qword_34BF58 != -1)
      {
        swift_once();
      }

      v32 = v26;
      v33 = sub_3ED0(v26, static Logger.default);
      swift_beginAccess();
      v35 = v80;
      v34 = v81;
      (*(v80 + 16))(v81, v33, v32);
      v36 = v84;
      v37 = v31;
      v38 = v78;
      v75 = *(v84 + 16);
      v75(v15, v37);

      v39 = sub_2CDFE0();
      v40 = sub_2CE670();

      v72 = v40;
      v73 = v39;
      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        v71 = swift_slowAlloc();
        v85[0] = v71;
        *v41 = 136315394;
        *(v41 + 4) = sub_3F08(v76, v82, v85);
        *(v41 + 12) = 2080;
        (v75)(v79, v15, v38);
        v42 = sub_2CE2A0();
        v43 = v36;
        v44 = v42;
        v45 = v34;
        v47 = v46;
        v79 = *(v43 + 8);
        v79(v15, v38);
        v48 = sub_3F08(v44, v47, v85);

        *(v41 + 14) = v48;
        v49 = v73;
        _os_log_impl(&dword_0, v73, v72, "ShuffleOnDeviceFlow#attachUserIdentity attaching sharedUserID: %s with confidence: %s", v41, 0x16u);
        swift_arrayDestroy();

        (*(v35 + 8))(v45, v32);
      }

      else
      {

        v79 = *(v36 + 8);
        v79(v15, v38);
        (*(v35 + 8))(v34, v32);
      }

      v85[3] = v38;
      v85[4] = &protocol witness table for IdentifiedUser.Classification;
      v55 = sub_F390(v85);
      v56 = v83;
      (v75)(v55, v83, v38);
      v57 = sub_2CEA10();
      sub_306C(v85);
      v58 = objc_allocWithZone(INSpeakerIDInfo);
      v59 = sub_2CE260();
      v60 = [v58 initWithSharedUserID:v59 speakerIDConfidence:v57];

      v61 = objc_allocWithZone(INPrivateMediaIntentData);
      v62 = v60;
      v63 = sub_2CE260();

      v64 = [v61 initWithSpeakerIDInfo:v62 proxiedThirdPartyAppInfo:0 isAppAttributionRequired:0 useDialogMemoryForAttribution:0 isAppCorrection:0 fallbackUsername:0 wholeHouseAudioMetadata:0 nlConfidenceScore:0 nlConfidenceLevel:0 asrConfidenceScore:0 asrConfidenceLevel:0 resolvedSharedUserID:v63 homeAutomationEntityProvider:0];

      v65 = [objc_allocWithZone(INPrivatePlayMediaIntentData) initWithAppSelectionEnabled:0 appInferred:0 audioSearchResults:0 privateMediaIntentData:v64 appSelectionSignalsEnabled:0 appSelectionSignalsFrequencyDenominator:0 shouldSuppressCommonWholeHouseAudioRoutes:0 immediatelyStartPlayback:0 isAmbiguousPlay:0 isPersonalizedRequest:0 internalSignals:0 entityConfidenceSignalsEnabled:0 entityConfidenceSignalsFrequencyDenominatorInternal:0 entityConfidenceSignalsFrequencyDenominatorProd:0 entityConfidenceSignalsMaxItemsToDisambiguate:0];
      v66 = [v77 backingStore];
      objc_opt_self();
      v67 = swift_dynamicCastObjCClass();
      if (v67)
      {
        v68 = v67;
        v69 = INIntentSlotValueTransformToPrivatePlayMediaIntentData();
        [v68 setPrivatePlayMediaIntentData:v69];
      }

      else
      {
      }

      return (v79)(v56, v38);
    }

    v2 = v26;
    v3 = v80;
  }

  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v50 = sub_3ED0(v2, static Logger.default);
  swift_beginAccess();
  (*(v3 + 16))(v7, v50, v2);
  v51 = sub_2CDFE0();
  v52 = sub_2CE680();
  if (os_log_type_enabled(v51, v52))
  {
    v53 = swift_slowAlloc();
    *v53 = 0;
    _os_log_impl(&dword_0, v51, v52, "ShuffleOnDeviceFlow#attachUserIdentity failed to get sharedUserId from SiriEnvironment", v53, 2u);
  }

  return (*(v3 + 8))(v7, v2);
}

uint64_t sub_FE8E8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_FE94C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = *(sub_2CA7B0() - 8);
  v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v17 = (*(v15 + 64) + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_F9368(a1, a2, a3, a4, a5, a6, a7, *(v7 + 16), *(v7 + 24), (v7 + v16), *(v7 + v17), *(v7 + v17 + 8), (v7 + ((v17 + 23) & 0xFFFFFFFFFFFFFFF8)));
}

unint64_t sub_FEA50()
{
  result = qword_350D30;
  if (!qword_350D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_350D30);
  }

  return result;
}

uint64_t sub_FEAA4(uint64_t a1)
{
  v3 = *(sub_2CA7B0() - 8);
  v4 = (*(v3 + 80) + 72) & ~*(v3 + 80);
  v5 = v1[7];
  v6 = v1[8];
  v7 = v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8);
  v8 = *v7;
  v9 = *(v7 + 1);

  return sub_F9ACC(a1, v1 + 2, v5, v6, v1 + v4, v8, v9);
}

uint64_t sub_FEB4C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_FEB94()
{
  v1 = sub_2CA7B0();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 48) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(v0 + 16);

  v6 = *(v0 + 40);

  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v3 + v4);
}

uint64_t sub_FEC68(__int16 a1)
{
  v3 = *(sub_2CA7B0() - 8);
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1 + ((*(v3 + 80) + 48) & ~*(v3 + 80));

  return sub_FA444(a1 & 0x1FF, v4, v5, v6, v7, v8);
}

uint64_t sub_FECE8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_20410(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t sub_FED50(uint64_t a1)
{
  v2 = type metadata accessor for AudioNLv3Intent();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t static AppSelectionContext.saveRecord(app:intent:intentResponseCode:requestCancelled:pseSignalsStitcher:)(uint64_t a1, void *a2, uint64_t a3, int a4, int a5, uint64_t a6)
{
  v38 = a5;
  v40 = a4;
  v39 = a3;
  v9 = sub_2CE000();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2CC2B0();
  v14 = swift_allocBox();
  v16 = v15;
  sub_2CC2A0();
  if (a1)
  {
    v37 = a2;

    v17 = sub_2CCF90();
    if (v18)
    {
      v19 = v17;
      v20 = v18;
      v36 = a6;
      if (qword_34BF58 != -1)
      {
        swift_once();
      }

      v21 = sub_3ED0(v9, static Logger.default);
      swift_beginAccess();
      (*(v10 + 16))(v13, v21, v9);

      v22 = sub_2CDFE0();
      v23 = sub_2CE670();

      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        v34[1] = v16;
        v25 = v24;
        v26 = swift_slowAlloc();
        v35 = v19;
        v27 = v26;
        v41[0] = v26;
        *v25 = 136315138;
        *(v25 + 4) = sub_3F08(v35, v20, v41);
        _os_log_impl(&dword_0, v22, v23, "AppSelectionContext#saveRecord setting lastBundleIdentifier=%s", v25, 0xCu);
        sub_306C(v27);
      }

      (*(v10 + 8))(v13, v9);
      a6 = v36;
      sub_2CC260();
    }

    a2 = v37;
  }

  sub_2CBC60();
  sub_35E0(v41, v41[3]);
  v28 = sub_2CBE60();
  v30 = v29;
  sub_306C(v41);
  sub_2CC0E0();
  v31 = swift_allocObject();
  *(v31 + 16) = v38 & 1;
  *(v31 + 24) = v28;
  *(v31 + 32) = v30;
  *(v31 + 40) = a2;
  *(v31 + 48) = a1;
  *(v31 + 56) = v14;
  *(v31 + 64) = a6;
  *(v31 + 72) = v39;
  *(v31 + 80) = v40 & 1;
  v32 = a2;

  sub_2CC0C0();
}

uint64_t sub_FF13C(uint64_t a1, char a2, uint64_t a3, uint64_t a4, void **a5, void (*a6)(char *, uint64_t, uint64_t), uint64_t a7, uint64_t a8, uint64_t a9, unsigned __int8 a10)
{
  v164 = a8;
  v166 = a6;
  v156 = sub_2CE150();
  v155 = *(v156 - 8);
  v16 = *(v155 + 64);
  __chkstk_darwin(v156);
  v153 = v141 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v154 = sub_2CE180();
  v152 = *(v154 - 8);
  v18 = *(v152 + 64);
  __chkstk_darwin(v154);
  v151 = v141 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v165 = sub_2CC100();
  v168 = *(v165 - 8);
  v20 = *(v168 + 64);
  v21 = __chkstk_darwin(v165);
  v149 = v141 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v148 = v22;
  __chkstk_darwin(v21);
  v163 = v141 - v23;
  v24 = sub_20410(&qword_34E000, &qword_2D1D48);
  v25 = *(*(v24 - 8) + 64);
  __chkstk_darwin(v24 - 8);
  v143 = v141 - v26;
  v161 = sub_2CBF80();
  v160 = *(v161 - 8);
  v27 = *(v160 + 64);
  __chkstk_darwin(v161);
  v144 = v141 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_20410(&qword_3504F8, &qword_2D3B48);
  v30 = *(*(v29 - 8) + 64);
  v31 = __chkstk_darwin(v29 - 8);
  v162 = v141 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v146 = v141 - v33;
  v34 = sub_20410(&qword_34DD30, &unk_2D1BC0);
  v35 = *(*(v34 - 8) + 64);
  v36 = __chkstk_darwin(v34 - 8);
  v159 = v141 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v36);
  v145 = v141 - v38;
  v39 = sub_2CE000();
  v40 = *(v39 - 8);
  v170 = v39;
  v171 = v40;
  v41 = *(v40 + 64);
  v42 = __chkstk_darwin(v39);
  v158 = v141 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = __chkstk_darwin(v42);
  v147 = v141 - v45;
  v46 = __chkstk_darwin(v44);
  v142 = v141 - v47;
  __chkstk_darwin(v46);
  v49 = v141 - v48;
  v50 = sub_2CC990();
  v51 = *(v50 - 8);
  v52 = *(v51 + 64);
  __chkstk_darwin(v50);
  v54 = v141 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2CC2B0();
  v150 = a7;
  v141[2] = swift_projectBox();
  if (qword_34C028 != -1)
  {
    swift_once();
  }

  v55 = a2 & 1;
  v56 = a1;
  v157 = a3;
  v167 = a4;
  sub_27061C(a1, v55, a3, a4);
  v169 = a5;
  if (a5)
  {
    aBlock = a5;
    (*(v51 + 104))(v54, enum case for AcceptedSpeakerIdConfidence.executeOnCompanionConfidence(_:), v50);
    sub_334A0(0, &qword_34FCC0, INPlayMediaIntent_ptr);
    v57 = a5;
    sub_2CCB50();
    (*(v51 + 8))(v54, v50);
  }

  sub_2CC980();
  sub_2CC970();
  if (v166)
  {
    sub_2CCF90();
    if (!v169)
    {
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  if (v169)
  {
LABEL_7:
    sub_2CE760();
  }

LABEL_9:
  sub_2CC960();

  if (v56)
  {
    v58 = qword_34BF58;

    v59 = v58 == -1;
    v60 = v170;
    v61 = v171;
    if (!v59)
    {
      swift_once();
    }

    v62 = sub_3ED0(v60, static Logger.default);
    swift_beginAccess();
    v64 = *(v61 + 16);
    v63 = (v61 + 16);
    v166 = v64;
    v64(v49, v62, v60);

    v65 = sub_2CDFE0();
    v66 = v56;
    v67 = sub_2CE670();
    if (os_log_type_enabled(v65, v67))
    {
      v68 = swift_slowAlloc();
      *v68 = 67109376;
      v158 = v63;
      v69 = v62;
      v70 = v145;
      sub_2CC0B0();
      v71 = v160;
      v72 = v161;
      v73 = (*(v160 + 48))(v70, 1, v161) != 1;
      sub_30B8(v70, &qword_34DD30, &unk_2D1BC0);
      *(v68 + 4) = v73;
      *(v68 + 8) = 1024;
      v74 = v146;
      sub_2CC080();
      v75 = (*(v168 + 48))(v74, 1, v165) != 1;
      v76 = v74;
      v62 = v69;
      v63 = v158;
      sub_30B8(v76, &qword_3504F8, &qword_2D3B48);
      *(v68 + 10) = v75;

      _os_log_impl(&dword_0, v65, v67, "AppSelectionContext#saveRecord context present, with report?:%{BOOL}d and rawSignalResult?:%{BOOL}d", v68, 0xEu);
    }

    else
    {

      v72 = v161;
      v71 = v160;
    }

    v94 = v159;
    v95 = *(v171 + 8);
    v171 += 8;
    v95(v49, v170);
    sub_2CC0B0();
    v96 = (*(v71 + 48))(v94, 1, v72);
    v97 = v167;
    if (v96)
    {
      sub_30B8(v94, &qword_34DD30, &unk_2D1BC0);
      v98 = v162;
      v99 = v170;
    }

    else
    {
      v100 = v144;
      (*(v71 + 16))(v144, v94, v72);
      sub_30B8(v94, &qword_34DD30, &unk_2D1BC0);
      v101 = sub_2CBEE0();
      (*(v71 + 8))(v100, v72);
      v98 = v162;
      v99 = v170;
      if (v101)
      {
        v102 = v142;
        v166(v142, v62, v170);
        v103 = sub_2CDFE0();
        v104 = sub_2CE670();
        if (os_log_type_enabled(v103, v104))
        {
          v105 = swift_slowAlloc();
          v158 = v63;
          *v105 = 0;
          _os_log_impl(&dword_0, v103, v104, "AppSelectionContext#saveRecord setting appSelectionLastUsed", v105, 2u);
        }

        v95(v102, v99);
        v106 = v143;
        sub_2C8E20();
        v107 = sub_2C8E30();
        (*(*(v107 - 8) + 56))(v106, 0, 1, v107);
        swift_beginAccess();
        sub_2CC250();
        swift_endAccess();
      }
    }

    sub_2CC080();
    v108 = v168;
    v109 = v165;
    if ((*(v168 + 48))(v98, 1, v165) == 1)
    {
      sub_30B8(v98, &qword_3504F8, &qword_2D3B48);
      v110 = v147;
      v166(v147, v62, v99);

      v111 = sub_2CDFE0();
      v112 = sub_2CE690();

      if (os_log_type_enabled(v111, v112))
      {
        v113 = swift_slowAlloc();
        v180 = swift_slowAlloc();
        *v113 = 136446466;
        v114 = sub_2CCCC0();
        v116 = sub_3F08(v114, v115, &v180);

        *(v113 + 4) = v116;
        *(v113 + 12) = 2082;
        aBlock = v157;
        v173 = v97;

        sub_20410(&qword_34CCC0, &unk_2D0DE0);
        v117 = sub_2CE2A0();
        v119 = sub_3F08(v117, v118, &v180);

        *(v113 + 14) = v119;
        _os_log_impl(&dword_0, v111, v112, "AppSelectionContext#saveRecord %{public}s no rawSignalResult present for refId: %{public}s", v113, 0x16u);
        swift_arrayDestroy();

        v120 = v110;
        v121 = v170;
      }

      else
      {

        v120 = v110;
        v121 = v99;
      }

      return (v95)(v120, v121);
    }

    else
    {
      LODWORD(v170) = a10;
      v167 = a9;
      v141[1] = v66;
      v122 = *(v108 + 32);
      v123 = v163;
      v122(v163, v98, v109);
      v124 = v109;
      v166 = sub_2CC0A0();
      v171 = sub_2CBA10();
      v125 = v149;
      (*(v108 + 16))(v149, v123, v124);
      v126 = (*(v108 + 80) + 24) & ~*(v108 + 80);
      v127 = (v148 + v126 + 7) & 0xFFFFFFFFFFFFFFF8;
      v128 = (v127 + 31) & 0xFFFFFFFFFFFFFFF8;
      v129 = swift_allocObject();
      *(v129 + 16) = v164;
      v122((v129 + v126), v125, v124);
      v131 = v166;
      v130 = v167;
      *(v129 + v127) = v166;
      v132 = v129 + ((v127 + 15) & 0xFFFFFFFFFFFFFFF8);
      *v132 = v130;
      *(v132 + 8) = v170 & 1;
      v133 = v169;
      *(v129 + v128) = v169;
      *(v129 + ((v128 + 15) & 0xFFFFFFFFFFFFFFF8)) = v150;
      v176 = sub_100F48;
      v177 = v129;
      aBlock = _NSConcreteStackBlock;
      v173 = 1107296256;
      v174 = sub_A4294;
      v175 = &unk_335440;
      v134 = _Block_copy(&aBlock);
      v135 = v131;

      v136 = v133;

      v137 = v151;
      sub_2CE160();
      v180 = _swiftEmptyArrayStorage;
      sub_10101C();
      sub_20410(&qword_34DD48, &qword_2D5F80);
      sub_7DDE8();
      v138 = v153;
      v139 = v156;
      sub_2CEC10();
      v140 = v171;
      sub_2CE9C0();
      _Block_release(v134);

      (*(v155 + 8))(v138, v139);
      (*(v152 + 8))(v137, v154);
      (*(v168 + 8))(v163, v124);
    }
  }

  else
  {
    v77 = v167;
    v78 = v170;
    v79 = v171;
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v80 = sub_3ED0(v78, static Logger.default);
    swift_beginAccess();
    v81 = v158;
    (*(v79 + 16))(v158, v80, v78);

    v82 = sub_2CDFE0();
    v83 = sub_2CE690();

    v84 = os_log_type_enabled(v82, v83);
    v85 = v157;
    if (v84)
    {
      v86 = swift_slowAlloc();
      v180 = swift_slowAlloc();
      *v86 = 136446466;
      v87 = sub_2CCCC0();
      v89 = sub_3F08(v87, v88, &v180);

      *(v86 + 4) = v89;
      *(v86 + 12) = 2082;
      v178 = v85;
      v179 = v77;

      sub_20410(&qword_34CCC0, &unk_2D0DE0);
      v90 = sub_2CE2A0();
      v92 = sub_3F08(v90, v91, &v180);

      *(v86 + 14) = v92;
      _os_log_impl(&dword_0, v82, v83, "AppSelectionContext#saveRecord %{public}s no context present for refId: %{public}s", v86, 0x16u);
      swift_arrayDestroy();

      return (*(v79 + 8))(v158, v78);
    }

    else
    {

      return (*(v79 + 8))(v81, v78);
    }
  }
}