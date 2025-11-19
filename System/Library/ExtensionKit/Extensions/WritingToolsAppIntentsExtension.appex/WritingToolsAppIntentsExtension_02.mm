uint64_t sub_100032E10()
{
  v2 = *v1;
  v3 = *(*v1 + 2720);
  v14 = *v1;
  *(*v1 + 2728) = v0;

  v4 = v2[339];
  if (v0)
  {
    v5 = v2[337];
    v6 = v2[329];
    v7 = v2[295];
    v8 = v2[294];
    v9 = v2[293];

    sub_100013054(v9, v8, v7, 0);

    v10 = v2[290];
    v11 = v2[289];
    v12 = sub_100034FE8;
  }

  else
  {

    v10 = v2[290];
    v11 = v2[289];
    v12 = sub_100032F84;
  }

  return _swift_task_switch(v12, v11, v10);
}

uint64_t sub_100032F84()
{
  v277 = v0;
  v2 = *(v0 + 2000);
  v3 = *(v0 + 1984);
  v4 = *(v0 + 1976);
  if ((*(v3 + 48))(v2, 1, v4) == 1)
  {
    v5 = *(v0 + 2704);
    v6 = *(v0 + 2696);
    (*(*(v0 + 2096) + 8))(*(v0 + 2104), *(v0 + 2088));
    v7 = HIBYTE(v6) & 0xF;
    if ((v6 & 0x2000000000000000) == 0)
    {
      v7 = v5 & 0xFFFFFFFFFFFFLL;
    }

    if (v7)
    {
      v8 = *(v0 + 2704);
      v9 = *(v0 + 2696);
      v10 = *(v0 + 1912);
      v11 = objc_allocWithZone(NSAttributedString);
      v12 = sub_1000504E8();
      v13 = [v11 initWithString:v12];

      sub_1000295E8(v13);
      v14 = sub_1000507C8();
      sub_1000298EC(v14, v16, v15 & 1);
    }

    v17 = *(v0 + 2656);
    v18 = *(v0 + 2648);
    v19 = *(v0 + 2640);
    v20 = *(v0 + 1912);
    swift_getKeyPath();
    *(v0 + 1856) = v20;
    sub_10004FB58();

    sub_100005070(v20 + v17, v0 + 760, &unk_1000711A0, &qword_100058BF0);
    v21 = &off_100071000;
    if (!*(v0 + 784))
    {
      v65 = *(v0 + 2696);
      v66 = *(v0 + 2632);
      v67 = *(v0 + 2360);
      v68 = *(v0 + 2352);
      v69 = *(v0 + 2344);
      v70 = *(v0 + 2304);

      sub_100013054(v69, v68, v67, 0);

      sub_10000CBA0(v0 + 760, &unk_1000711A0, &qword_100058BF0);
LABEL_60:
      v150 = *(v0 + 2280);
      v151 = *(v0 + 1912);
      v152 = [*(v0 + 1896) uuid];
      sub_10004FAB8();

      swift_getKeyPath();
      *(v0 + 1336) = v151;
      sub_1000377F4(&qword_1000717B0, type metadata accessor for RewritingModel);
      sub_10004FB58();

      v153 = *(v21[250] + v151);
      swift_getKeyPath();
      *(v0 + 1880) = v151;
      v154 = v153;
      sub_10004FB58();

      *(v0 + 1872) = v151;
      swift_getKeyPath();
      sub_10004FB78();

      swift_beginAccess();
      sub_100047ED4(v153, v150);
      swift_endAccess();
      *(v0 + 1864) = v151;
      swift_getKeyPath();
      sub_10004FB68();

      goto LABEL_61;
    }

    v22 = *(v0 + 2648);
    v23 = *(v0 + 2640);
    v24 = *(v0 + 2336);
    v25 = *(v0 + 2328);
    v26 = *(v0 + 1912);
    sub_10000D6CC(v0 + 760, v0 + 160);
    sub_10000CBA0(v0 + 760, &unk_1000711A0, &qword_100058BF0);
    v258 = sub_10000D634((v0 + 160), *(v0 + 184));
    swift_getKeyPath();
    *(v0 + 1848) = v26;
    sub_10004FB58();

    v27 = *(v26 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension14RewritingModel__modelInfoString + 8);
    v253 = *(v26 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension14RewritingModel__modelInfoString);
    swift_getKeyPath();
    *(v0 + 1808) = v26;
    v255 = v27;

    sub_10004FB58();

    v32 = *(v26 + 96);
    if (v32 != 255)
    {
      v33 = *(v26 + 72);
      v34 = *(v26 + 80);
      v35 = *(v26 + 88);
      v36 = *(v0 + 2696);
      v269 = *(v0 + 2648);
      v261 = *(v0 + 2640);
      v37 = *(v0 + 2632);
      v38 = *(v0 + 2360);
      v39 = *(v0 + 2352);
      v40 = *(v0 + 2344);
      v41 = *(v0 + 2336);
      v42 = *(v0 + 2328);
      v43 = *(v0 + 2304);
      v44 = *(v0 + 1912);
      v273 = v33;
      v263 = v35;
      v265 = v34;
      v267 = v32;
      sub_10000A594(v33, v34, v35, v32);

      sub_100013054(v40, v39, v38, 0);

      swift_getKeyPath();
      *(v0 + 1696) = v44;
      sub_10004FB58();

      v247 = *(v44 + 136);
      swift_getKeyPath();
      *(v0 + 1632) = v44;
      sub_10004FB58();

      v45 = *(v44 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension14RewritingModel__resultAttributedString);
      if (v45)
      {
        v46 = [v45 string];
        sub_100050518();
        v270 = v47;
      }

      else
      {
        v270 = 0;
      }

      v87 = *(v0 + 2648);
      v88 = *(v0 + 2640);
      v89 = *(v0 + 1912);
      swift_getKeyPath();
      *(v0 + 1616) = v89;
      sub_10004FB58();

      KeyPath = *(v89 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension14RewritingModel__detectedModelLanguage + 8);
      v245 = *(v89 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension14RewritingModel__detectedModelLanguage);
      swift_getKeyPath();
      *(v0 + 1608) = v89;

      sub_10004FB58();

      v90 = *(v89 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension14RewritingModel__modelPromptTokenCount);
      swift_getKeyPath();
      *(v0 + 1592) = v89;
      v249 = v90;
      v260 = v90;
      sub_10004FB58();

      v91 = *(v89 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension14RewritingModel__modelOutputTokenCount);
      v251 = *v258;
      v92 = qword_10006EA10;
      v257 = v91;
      if (v92 != -1)
      {
        swift_once();
      }

      v93 = sub_100050188();
      sub_1000071F4(v93, qword_10007B528);

      v94 = v273;
      sub_100013C24(v273, v265, v263, v267);
      v95 = sub_100050168();
      v96 = sub_100050718();

      sub_100013054(v273, v265, v263, v267);
      if (os_log_type_enabled(v95, v96))
      {
        v97 = swift_slowAlloc();
        v276[0] = swift_slowAlloc();
        *v97 = 136643075;
        *(v97 + 4) = sub_100046C30(v253, v255, v276);
        *(v97 + 12) = 2081;
        sub_10000ACE8();
        v242 = v91;
        v98 = sub_1000504E8();

        v99 = [v98 key];

        v100 = sub_100050518();
        v101 = KeyPath;
        v103 = v102;

        v104 = sub_100046C30(v100, v103, v276);
        KeyPath = v101;

        *(v97 + 14) = v104;
        v91 = v242;
        _os_log_impl(&_mh_execute_header, v95, v96, "reportResultsGenerated: modelInfo: %{sensitive}s mode: %{private}s", v97, 0x16u);
        swift_arrayDestroy();

        v94 = v273;
      }

      LOBYTE(v105) = v247;
      if ((v247 & 1) == 0)
      {
        v106 = &_swiftEmptyArrayStorage;
        if ((v247 & 2) == 0)
        {
LABEL_40:
          sub_100002814(&qword_100070168, &qword_100057A70);
          v113 = swift_allocObject();
          *(v113 + 16) = xmmword_100056D20;
          if (qword_10006E8A0 != -1)
          {
            swift_once();
          }

          v114 = qword_10007B2F0;
          *(v113 + 32) = qword_10007B2F0;
          v115 = v114;
          v116 = sub_1000504E8();

          v117 = IAPayloadKeyWritingToolsFeatureDetails;
          *(v113 + 40) = v116;
          *(v113 + 48) = v117;
          v118 = v117;
          v119 = sub_10001761C(v94, v265, v263, v267);
          sub_100013054(v94, v265, v263, v267);
          *(v113 + 56) = v119;
          if (qword_10006E8A8 != -1)
          {
            swift_once();
          }

          v120 = qword_10007B2F8;
          *(v113 + 64) = qword_10007B2F8;
          type metadata accessor for IAPayloadValue(0);
          v121 = v120;
          isa = sub_1000505D8().super.isa;

          *(v113 + 72) = isa;
          v123 = sub_100004938(v113);
          swift_setDeallocating();
          sub_100002814(&qword_100070170, &qword_100057A78);
          swift_arrayDestroy();
          swift_deallocClassInstance();
          if (v270)
          {
            v124 = IAPayloadKeyWritingToolsResultText;
            v125 = sub_1000504E8();
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v276[0] = v123;
            sub_10004C390(v125, v124, isUniquelyReferenced_nonNull_native);

            v123 = v276[0];
          }

          if (KeyPath)
          {
            v127 = IAPayloadKeyWritingToolsInputLanguage;
            v128 = sub_1000504E8();
            v129 = swift_isUniquelyReferenced_nonNull_native();
            v276[0] = v123;
            sub_10004C390(v128, v127, v129);

            v123 = v276[0];
          }

          if (v249)
          {
            v130 = qword_10006E8F0;
            v131 = v260;
            if (v130 != -1)
            {
              swift_once();
            }

            v132 = qword_10007B340;
            v133 = swift_isUniquelyReferenced_nonNull_native();
            v276[0] = v123;
            sub_10004C390(v131, v132, v133);

            v123 = v276[0];
          }

          if (v91)
          {
            v134 = qword_10006E8F8;
            v135 = v257;
            if (v134 != -1)
            {
              swift_once();
            }

            v136 = qword_10007B348;
            v137 = swift_isUniquelyReferenced_nonNull_native();
            v276[0] = v123;
            sub_10004C390(v135, v136, v137);
          }

          v138 = *(v0 + 2272);
          v139 = *(v0 + 2264);
          v140 = *(v0 + 2112);
          v141 = IASignalWritingToolsResultsGenerated;
          v142 = IAChannelWritingTools;
          sub_100005070(v251 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension21WritingToolsAnalytics_analyticsUUID, v140, &qword_100070160, &qword_100057D20);
          if ((*(v138 + 48))(v140, 1, v139) == 1)
          {
            sub_10000CBA0(*(v0 + 2112), &qword_100070160, &qword_100057D20);
            v143 = 0;
          }

          else
          {
            v144 = *(v0 + 2672);
            v145 = *(v0 + 2664);
            v146 = *(v0 + 2264);
            v147 = *(v0 + 2112);
            sub_10004FAA8();
            v145(v147, v146);
            v143 = sub_1000504E8();
          }

          v148 = objc_opt_self();
          type metadata accessor for IAPayloadKey(0);
          sub_10000E5D8(0, &qword_100070178, NSObject_ptr);
          sub_1000377F4(&qword_10006EEB8, type metadata accessor for IAPayloadKey);
          v149 = sub_100050408().super.isa;

          [v148 sendSignal:v141 toChannel:v142 withNullableUniqueStringID:v143 withPayload:v149];

          sub_10000CC70((v0 + 160));
          v21 = &off_100071000;
          goto LABEL_60;
        }

LABEL_33:
        if (qword_10006E910 != -1)
        {
          swift_once();
        }

        v110 = qword_10007B360;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v106 = sub_100037F0C(0, v106[2] + 1, 1, v106);
        }

        v112 = v106[2];
        v111 = v106[3];
        if (v112 >= v111 >> 1)
        {
          v106 = sub_100037F0C((v111 > 1), v112 + 1, 1, v106);
        }

        v106[2] = v112 + 1;
        v106[v112 + 4] = v110;
        v94 = v273;
        goto LABEL_40;
      }

      if (qword_10006E908 == -1)
      {
LABEL_30:
        v107 = qword_10007B358;
        v106 = sub_100037F0C(0, 1, 1, &_swiftEmptyArrayStorage);
        v109 = v106[2];
        v108 = v106[3];
        if (v109 >= v108 >> 1)
        {
          v106 = sub_100037F0C((v108 > 1), v109 + 1, 1, v106);
        }

        v106[2] = v109 + 1;
        v106[v109 + 4] = v107;
        v94 = v273;
        if ((v105 & 2) == 0)
        {
          goto LABEL_40;
        }

        goto LABEL_33;
      }

LABEL_100:
      swift_once();
      goto LABEL_30;
    }

    __break(1u);
    return _sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(v28, v29, v30, v32, v31);
  }

  (*(v3 + 32))(*(v0 + 1992), v2, v4);
  if ((sub_1000506A8() & 1) == 0)
  {
    v58 = *(v0 + 1992);
    v59 = *(v0 + 1976);
    v60 = *(v0 + 1968);
    sub_1000501F8();
    v61 = sub_100050318();
    v62 = *(v61 - 8);
    v63 = (*(v62 + 48))(v60, 1, v61);
    v64 = *(v0 + 1968);
    if (v63 == 1)
    {
      sub_10000CBA0(*(v0 + 1968), &qword_1000721E8, &qword_100058E28);
    }

    else
    {
      v71 = sub_100050308();
      (*(v62 + 8))(v64, v61);
      if ((v71 & 1) == 0)
      {
        v72 = *(v0 + 2336);
        v73 = *(v0 + 2328);
        v74 = *(v0 + 1912);
        swift_getKeyPath();
        *(v0 + 1536) = v74;
        sub_10004FB58();

        *(v0 + 1416) = v74;
        swift_getKeyPath();
        sub_10004FB78();

        v75 = *(v74 + 136);
        v76 = v75 | 1;
        sub_1000126C0(v75 | 1);
        *(v74 + 136) = v76;
        *(v0 + 1384) = v74;
        swift_getKeyPath();
        sub_10004FB68();
      }
    }

    v77 = *(v0 + 1992);
    v78 = *(v0 + 1976);
    v79 = *(v0 + 1960);
    v80 = (*(v0 + 1912) + *(v0 + 2680));
    sub_100050218();
    sub_100050578(*(v0 + 1288));

    sub_100050208();
    v81 = sub_100018078(v79);
    v83 = v82;
    sub_10000CBA0(v79, &unk_100070190, &qword_100058E20);
    if (*v80 == v81 && v80[1] == v83 || (v84 = v80[1], (sub_1000509B8() & 1) != 0))
    {
      v85 = (*(v0 + 1912) + *(v0 + 2680));
      *v85 = v81;
      v85[1] = v83;

      v86 = *(v0 + 2728);
    }

    else
    {
      v167 = *(v0 + 2728);
      v168 = *(v0 + 2648);
      v169 = *(v0 + 2640);
      KeyPath = *(v0 + 1912);
      swift_getKeyPath();
      v170 = swift_task_alloc();
      v170[2] = KeyPath;
      v170[3] = v81;
      v170[4] = v83;
      *(v0 + 1560) = KeyPath;
      sub_10004FB48();
    }

    v171 = *(v0 + 1912) + *(v0 + 2688);
    v172 = *(v0 + 1320);
    v173 = *(v0 + 1328);
    v174 = objc_allocWithZone(NSAttributedString);
    v175 = sub_1000504E8();
    v176 = [v174 initWithString:v175];

    sub_1000295E8(v176);
    v177 = sub_1000507C8();
    v105 = v177;
    v91 = v178;
    v180 = v179;
    v270 = v173;
    v273 = v172;
    if (*(v171 + 16))
    {
      if (v179)
      {
        v181 = *(v0 + 2688);
        v182 = *(v0 + 1912);
        goto LABEL_71;
      }

      v182 = *(v0 + 1912);
    }

    else
    {
      v182 = *(v0 + 1912);
      if ((v179 & 1) == 0)
      {
        v181 = *(v0 + 2688);
        if (*(v182 + v181) == v177 && *(v182 + v181 + 8) == v178)
        {
LABEL_71:
          v183 = v182 + v181;
          *v183 = v177;
          *(v183 + 8) = v178;
          *(v183 + 16) = v179 & 1;
          v184 = *(v0 + 1904);
          if (!v184)
          {
            goto LABEL_77;
          }

          goto LABEL_75;
        }
      }
    }

    v185 = *(v0 + 2648);
    v186 = *(v0 + 2640);
    KeyPath = swift_getKeyPath();
    v187 = swift_task_alloc();
    *(v187 + 16) = v182;
    *(v187 + 24) = v105;
    *(v187 + 32) = v91;
    *(v187 + 40) = v180 & 1;
    *(v0 + 1544) = v182;
    sub_10004FB48();

    v184 = *(v0 + 1904);
    if (!v184)
    {
      goto LABEL_77;
    }

LABEL_75:
    v188 = [v184 completedUnitCount];
    if (__OFADD__(v188, 1))
    {
      __break(1u);
      goto LABEL_100;
    }

    [*(v0 + 1904) setCompletedUnitCount:v188 + 1];
LABEL_77:
    v189 = *(v0 + 1992);
    v190 = *(v0 + 1976);
    v191 = *(v0 + 1952);
    sub_100050208();
    v192 = sub_1000502F8();
    v193 = *(v192 - 8);
    v194 = *(v193 + 48);
    v195 = v194(v191, 1, v192);
    v196 = *(v0 + 1952);
    if (v195 == 1)
    {
      v197 = &unk_100070190;
      v198 = &qword_100058E20;
    }

    else
    {
      v200 = *(v0 + 1920);
      sub_100050278();
      (*(v193 + 8))(v196, v192);
      v201 = sub_10004FB28();
      v202 = *(v201 - 8);
      if ((*(v202 + 48))(v200, 1, v201) == 1)
      {
        v199 = *(v0 + 1920);
        v197 = &unk_1000721D8;
        v198 = &unk_100058E10;
        goto LABEL_82;
      }

      v214 = *(v0 + 1928);
      v215 = *(v0 + 1920);
      sub_10004FB18();
      (*(v202 + 8))(v215, v201);
      v216 = sub_10004FAF8();
      v217 = *(v216 - 8);
      v218 = (*(v217 + 48))(v214, 1, v216);
      v196 = *(v0 + 1928);
      if (v218 != 1)
      {
        v239 = sub_10004FAE8();
        v241 = v240;
        (*(v217 + 8))(v196, v216);
        v204 = v241;
        v203 = v239;
LABEL_83:
        v205 = *(v0 + 1992);
        v206 = *(v0 + 1976);
        v207 = *(v0 + 1944);
        v208 = *(v0 + 1912);
        sub_100029F04(v203, v204);
        sub_100050208();
        v209 = v194(v207, 1, v192);
        v210 = *(v0 + 1944);
        if (v209 == 1)
        {
          sub_10000CBA0(*(v0 + 1944), &unk_100070190, &qword_100058E20);
          v211 = 0;
        }

        else
        {
          sub_1000502D8();
          v213 = v212;
          (*(v193 + 8))(v210, v192);
          if (v213)
          {
            v211 = 0;
          }

          else
          {
            v211 = sub_100050708().super.super.isa;
          }
        }

        v219 = *(v0 + 1992);
        v220 = *(v0 + 1976);
        v221 = *(v0 + 1936);
        v222 = *(v0 + 1912);
        sub_10002A094(v211);
        sub_100050208();
        v223 = v194(v221, 1, v192);
        v224 = *(v0 + 1936);
        if (v223 == 1)
        {
          sub_10000CBA0(*(v0 + 1936), &unk_100070190, &qword_100058E20);
          v225 = 0;
          v227 = v270;
          v226 = v273;
        }

        else
        {
          sub_1000502E8();
          v229 = v228;
          (*(v193 + 8))(v224, v192);
          v227 = v270;
          v226 = v273;
          if (v229)
          {
            v225 = 0;
          }

          else
          {
            v225 = sub_100050708().super.super.isa;
          }
        }

        v230 = *(v0 + 1992);
        v231 = *(v0 + 1984);
        v232 = *(v0 + 1976);
        v233 = *(v0 + 1912);
        sub_10002A3D0(v225);
        (*(v231 + 8))(v230, v232);
        *(v0 + 2704) = v226;
        *(v0 + 2696) = v227;
        v234 = *(v0 + 2296);
        v235 = sub_100050648();
        *(v0 + 2712) = v235;
        v236 = _sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKFTu[1];
        v237 = swift_task_alloc();
        *(v0 + 2720) = v237;
        *v237 = v0;
        v237[1] = sub_100032E10;
        v238 = *(v0 + 2104);
        v32 = *(v0 + 2088);
        v28 = *(v0 + 2000);
        v30 = &protocol witness table for MainActor;
        v31 = v0 + 1376;
        v29 = v235;

        return _sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(v28, v29, v30, v32, v31);
      }

      v197 = &unk_1000721E0;
      v198 = &unk_100058E18;
    }

    v199 = v196;
LABEL_82:
    sub_10000CBA0(v199, v197, v198);
    v203 = 0;
    v204 = 0;
    goto LABEL_83;
  }

  v48 = *(v0 + 2632);
  v49 = *(v0 + 2360);
  v50 = *(v0 + 2352);
  v51 = *(v0 + 2344);
  v52 = *(v0 + 2304);
  v271 = *(v0 + 2104);
  v274 = *(v0 + 2696);
  v53 = *(v0 + 2096);
  v54 = *(v0 + 2088);
  v55 = *(v0 + 1992);
  v56 = *(v0 + 1984);
  v57 = *(v0 + 1976);

  sub_100013054(v51, v50, v49, 0);

  (*(v56 + 8))(v55, v57);
  (*(v53 + 8))(v271, v54);

LABEL_61:
  v155 = *(v0 + 2288);
  v156 = *(v0 + 2280);
  v157 = *(v0 + 2256);
  v158 = *(v0 + 2248);
  v159 = *(v0 + 2224);
  v160 = *(v0 + 2200);
  v161 = *(v0 + 2176);
  v162 = *(v0 + 2152);
  v163 = *(v0 + 2128);
  v164 = *(v0 + 2120);
  v243 = *(v0 + 2112);
  v244 = *(v0 + 2104);
  v246 = *(v0 + 2080);
  v248 = *(v0 + 2056);
  v250 = *(v0 + 2032);
  v252 = *(v0 + 2008);
  v254 = *(v0 + 2000);
  v256 = *(v0 + 1992);
  v259 = *(v0 + 1968);
  v262 = *(v0 + 1960);
  v264 = *(v0 + 1952);
  v266 = *(v0 + 1944);
  v268 = *(v0 + 1936);
  v272 = *(v0 + 1928);
  v275 = *(v0 + 1920);

  v165 = *(v0 + 8);

  return v165();
}

uint64_t sub_100034890()
{
  v1 = *(v0 + 2248);
  v2 = *(v0 + 2240);
  v3 = *(v0 + 2232);

  (*(v2 + 8))(v1, v3);
  v4 = *(v0 + 1392);
  v5 = *(v0 + 1912);
  if ((sub_10002735C() & 1) == 0)
  {
    v22 = *(v0 + 1912);
    swift_errorRetain();
    swift_errorRetain();
    sub_100012198(v4);
    if (qword_10006EA28 != -1)
    {
      swift_once();
    }

    v23 = sub_100050188();
    sub_1000071F4(v23, qword_10007B570);
    swift_errorRetain();
    v24 = sub_100050168();
    v25 = sub_100050738();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      *v26 = 138412290;
      swift_errorRetain();
      v28 = _swift_stdlib_bridgeErrorToNSError();
      *(v26 + 4) = v28;
      *v27 = v28;
      _os_log_impl(&_mh_execute_header, v24, v25, "Error occurred in rewriting: %@", v26, 0xCu);
      sub_10000CBA0(v27, &qword_100072230, &qword_100058ED0);
    }

    v29 = *(v0 + 1912);

    swift_getKeyPath();
    *(v0 + 1816) = v29;
    sub_1000377F4(&qword_1000717B0, type metadata accessor for RewritingModel);
    sub_10004FB58();

    v30 = OBJC_IVAR____TtC31WritingToolsAppIntentsExtension14RewritingModel__analyticsInstance;
    swift_beginAccess();
    sub_100005070(v29 + v30, v0 + 520, &unk_1000711A0, &qword_100058BF0);
    if (*(v0 + 544))
    {
      v31 = *(v0 + 1912);
      sub_10000D6CC(v0 + 520, v0 + 280);
      sub_10000CBA0(v0 + 520, &unk_1000711A0, &qword_100058BF0);
      v32 = sub_10000D634((v0 + 280), *(v0 + 304));
      swift_getKeyPath();
      *(v0 + 1672) = v31;
      sub_1000377F4(&qword_10006FCF0, type metadata accessor for ToolModel);
      sub_10004FB58();

      v33 = *(v31 + 96);
      if (v33 != 255)
      {
        v34 = *(v0 + 2304);
        v35 = *(v0 + 1912);
        v37 = v35[10];
        v36 = v35[11];
        v38 = v35[9];
        sub_10000A594(v38, v37, v36, v33);

        v39 = *v32;
        sub_100016A2C(v4, v38, v37, v36, v33);

        sub_100013054(v38, v37, v36, v33);

        v21 = (v0 + 280);
        goto LABEL_12;
      }

LABEL_20:
      __break(1u);
      return result;
    }

    v42 = *(v0 + 2304);

    v41 = v0 + 520;
LABEL_15:
    sub_10000CBA0(v41, &unk_1000711A0, &qword_100058BF0);
    goto LABEL_16;
  }

  v6 = *(v0 + 1912);
  swift_getKeyPath();
  *(v0 + 1640) = v6;
  sub_1000377F4(&qword_1000717B0, type metadata accessor for RewritingModel);
  sub_10004FB58();

  v7 = OBJC_IVAR____TtC31WritingToolsAppIntentsExtension14RewritingModel__analyticsInstance;
  swift_beginAccess();
  sub_100005070(v6 + v7, v0 + 360, &unk_1000711A0, &qword_100058BF0);
  if (!*(v0 + 384))
  {
    v40 = *(v0 + 2304);

    v41 = v0 + 360;
    goto LABEL_15;
  }

  v8 = *(v0 + 1912);
  sub_10000D6CC(v0 + 360, v0 + 440);
  sub_10000CBA0(v0 + 360, &unk_1000711A0, &qword_100058BF0);
  v9 = sub_10000D634((v0 + 440), *(v0 + 464));
  v10 = sub_10001D0E0();
  v12 = v11;
  swift_getKeyPath();
  *(v0 + 1568) = v8;
  sub_1000377F4(&qword_10006FCF0, type metadata accessor for ToolModel);
  sub_10004FB58();

  v14 = *(v8 + 96);
  if (v14 == 255)
  {
    __break(1u);
    goto LABEL_20;
  }

  v15 = *(v0 + 2304);
  v16 = *(v0 + 1912);
  v18 = v16[10];
  v17 = v16[11];
  v19 = v16[9];
  sub_10000A594(v19, v18, v17, v14);

  v20 = *v9;
  sub_100016F2C(v10, v12, v19, v18, v17, v14);

  sub_100013054(v19, v18, v17, v14);

  v21 = (v0 + 440);
LABEL_12:
  sub_10000CC70(v21);
LABEL_16:
  v43 = *(v0 + 2288);
  v44 = *(v0 + 2280);
  v45 = *(v0 + 2256);
  v46 = *(v0 + 2248);
  v47 = *(v0 + 2224);
  v48 = *(v0 + 2200);
  v49 = *(v0 + 2176);
  v50 = *(v0 + 2152);
  v51 = *(v0 + 2128);
  v52 = *(v0 + 2120);
  v54 = *(v0 + 2112);
  v55 = *(v0 + 2104);
  v56 = *(v0 + 2080);
  v57 = *(v0 + 2056);
  v58 = *(v0 + 2032);
  v59 = *(v0 + 2008);
  v60 = *(v0 + 2000);
  v61 = *(v0 + 1992);
  v62 = *(v0 + 1968);
  v63 = *(v0 + 1960);
  v64 = *(v0 + 1952);
  v65 = *(v0 + 1944);
  v66 = *(v0 + 1936);
  v67 = *(v0 + 1928);
  v68 = *(v0 + 1920);

  v53 = *(v0 + 8);

  return v53();
}

uint64_t sub_100034FE8()
{
  (*(v0[262] + 8))(v0[263], v0[261]);
  v1 = v0[172];
  v2 = v0[239];
  if ((sub_10002735C() & 1) == 0)
  {
    v19 = v0[239];
    swift_errorRetain();
    swift_errorRetain();
    sub_100012198(v1);
    if (qword_10006EA28 != -1)
    {
      swift_once();
    }

    v20 = sub_100050188();
    sub_1000071F4(v20, qword_10007B570);
    swift_errorRetain();
    v21 = sub_100050168();
    v22 = sub_100050738();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      *v23 = 138412290;
      swift_errorRetain();
      v25 = _swift_stdlib_bridgeErrorToNSError();
      *(v23 + 4) = v25;
      *v24 = v25;
      _os_log_impl(&_mh_execute_header, v21, v22, "Error occurred in rewriting: %@", v23, 0xCu);
      sub_10000CBA0(v24, &qword_100072230, &qword_100058ED0);
    }

    v26 = v0[239];

    swift_getKeyPath();
    v0[227] = v26;
    sub_1000377F4(&qword_1000717B0, type metadata accessor for RewritingModel);
    sub_10004FB58();

    v27 = OBJC_IVAR____TtC31WritingToolsAppIntentsExtension14RewritingModel__analyticsInstance;
    swift_beginAccess();
    sub_100005070(v26 + v27, (v0 + 65), &unk_1000711A0, &qword_100058BF0);
    if (v0[68])
    {
      v28 = v0[239];
      sub_10000D6CC((v0 + 65), (v0 + 35));
      sub_10000CBA0((v0 + 65), &unk_1000711A0, &qword_100058BF0);
      v29 = sub_10000D634(v0 + 35, v0[38]);
      swift_getKeyPath();
      v0[209] = v28;
      sub_1000377F4(&qword_10006FCF0, type metadata accessor for ToolModel);
      sub_10004FB58();

      v30 = *(v28 + 96);
      if (v30 != 255)
      {
        v31 = v0[288];
        v32 = v0[239];
        v34 = v32[10];
        v33 = v32[11];
        v35 = v32[9];
        sub_10000A594(v35, v34, v33, v30);

        v36 = *v29;
        sub_100016A2C(v1, v35, v34, v33, v30);

        sub_100013054(v35, v34, v33, v30);

        v18 = v0 + 35;
        goto LABEL_12;
      }

LABEL_20:
      __break(1u);
      return result;
    }

    v39 = v0[288];

    v38 = (v0 + 65);
LABEL_15:
    sub_10000CBA0(v38, &unk_1000711A0, &qword_100058BF0);
    goto LABEL_16;
  }

  v3 = v0[239];
  swift_getKeyPath();
  v0[205] = v3;
  sub_1000377F4(&qword_1000717B0, type metadata accessor for RewritingModel);
  sub_10004FB58();

  v4 = OBJC_IVAR____TtC31WritingToolsAppIntentsExtension14RewritingModel__analyticsInstance;
  swift_beginAccess();
  sub_100005070(v3 + v4, (v0 + 45), &unk_1000711A0, &qword_100058BF0);
  if (!v0[48])
  {
    v37 = v0[288];

    v38 = (v0 + 45);
    goto LABEL_15;
  }

  v5 = v0[239];
  sub_10000D6CC((v0 + 45), (v0 + 55));
  sub_10000CBA0((v0 + 45), &unk_1000711A0, &qword_100058BF0);
  v6 = sub_10000D634(v0 + 55, v0[58]);
  v7 = sub_10001D0E0();
  v9 = v8;
  swift_getKeyPath();
  v0[196] = v5;
  sub_1000377F4(&qword_10006FCF0, type metadata accessor for ToolModel);
  sub_10004FB58();

  v11 = *(v5 + 96);
  if (v11 == 255)
  {
    __break(1u);
    goto LABEL_20;
  }

  v12 = v0[288];
  v13 = v0[239];
  v15 = v13[10];
  v14 = v13[11];
  v16 = v13[9];
  sub_10000A594(v16, v15, v14, v11);

  v17 = *v6;
  sub_100016F2C(v7, v9, v16, v15, v14, v11);

  sub_100013054(v16, v15, v14, v11);

  v18 = v0 + 55;
LABEL_12:
  sub_10000CC70(v18);
LABEL_16:
  v40 = v0[286];
  v41 = v0[285];
  v42 = v0[282];
  v43 = v0[281];
  v44 = v0[278];
  v45 = v0[275];
  v46 = v0[272];
  v47 = v0[269];
  v48 = v0[266];
  v49 = v0[265];
  v51 = v0[264];
  v52 = v0[263];
  v53 = v0[260];
  v54 = v0[257];
  v55 = v0[254];
  v56 = v0[251];
  v57 = v0[250];
  v58 = v0[249];
  v59 = v0[246];
  v60 = v0[245];
  v61 = v0[244];
  v62 = v0[243];
  v63 = v0[242];
  v64 = v0[241];
  v65 = v0[240];

  v50 = v0[1];

  return v50();
}

uint64_t sub_100035730()
{
  v1 = *(v0 + 2408);
  v2 = *(v0 + 2384);
  v3 = *(v0 + 2256);
  v4 = *(v0 + 2240);
  v5 = *(v0 + 2232);

  (*(v4 + 8))(v3, v5);

  v6 = *(v0 + 1648);
  v7 = *(v0 + 1912);
  if ((sub_10002735C() & 1) == 0)
  {
    v24 = *(v0 + 1912);
    swift_errorRetain();
    swift_errorRetain();
    sub_100012198(v6);
    if (qword_10006EA28 != -1)
    {
      swift_once();
    }

    v25 = sub_100050188();
    sub_1000071F4(v25, qword_10007B570);
    swift_errorRetain();
    v26 = sub_100050168();
    v27 = sub_100050738();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      *v28 = 138412290;
      swift_errorRetain();
      v30 = _swift_stdlib_bridgeErrorToNSError();
      *(v28 + 4) = v30;
      *v29 = v30;
      _os_log_impl(&_mh_execute_header, v26, v27, "Error occurred in rewriting: %@", v28, 0xCu);
      sub_10000CBA0(v29, &qword_100072230, &qword_100058ED0);
    }

    v31 = *(v0 + 1912);

    swift_getKeyPath();
    *(v0 + 1816) = v31;
    sub_1000377F4(&qword_1000717B0, type metadata accessor for RewritingModel);
    sub_10004FB58();

    v32 = OBJC_IVAR____TtC31WritingToolsAppIntentsExtension14RewritingModel__analyticsInstance;
    swift_beginAccess();
    sub_100005070(v31 + v32, v0 + 520, &unk_1000711A0, &qword_100058BF0);
    if (*(v0 + 544))
    {
      v33 = *(v0 + 1912);
      sub_10000D6CC(v0 + 520, v0 + 280);
      sub_10000CBA0(v0 + 520, &unk_1000711A0, &qword_100058BF0);
      v34 = sub_10000D634((v0 + 280), *(v0 + 304));
      swift_getKeyPath();
      *(v0 + 1672) = v33;
      sub_1000377F4(&qword_10006FCF0, type metadata accessor for ToolModel);
      sub_10004FB58();

      v35 = *(v33 + 96);
      if (v35 != 255)
      {
        v36 = *(v0 + 2304);
        v37 = *(v0 + 1912);
        v39 = v37[10];
        v38 = v37[11];
        v40 = v37[9];
        sub_10000A594(v40, v39, v38, v35);

        v41 = *v34;
        sub_100016A2C(v6, v40, v39, v38, v35);

        sub_100013054(v40, v39, v38, v35);

        v23 = (v0 + 280);
        goto LABEL_12;
      }

LABEL_20:
      __break(1u);
      return result;
    }

    v44 = *(v0 + 2304);

    v43 = v0 + 520;
LABEL_15:
    sub_10000CBA0(v43, &unk_1000711A0, &qword_100058BF0);
    goto LABEL_16;
  }

  v8 = *(v0 + 1912);
  swift_getKeyPath();
  *(v0 + 1640) = v8;
  sub_1000377F4(&qword_1000717B0, type metadata accessor for RewritingModel);
  sub_10004FB58();

  v9 = OBJC_IVAR____TtC31WritingToolsAppIntentsExtension14RewritingModel__analyticsInstance;
  swift_beginAccess();
  sub_100005070(v8 + v9, v0 + 360, &unk_1000711A0, &qword_100058BF0);
  if (!*(v0 + 384))
  {
    v42 = *(v0 + 2304);

    v43 = v0 + 360;
    goto LABEL_15;
  }

  v10 = *(v0 + 1912);
  sub_10000D6CC(v0 + 360, v0 + 440);
  sub_10000CBA0(v0 + 360, &unk_1000711A0, &qword_100058BF0);
  v11 = sub_10000D634((v0 + 440), *(v0 + 464));
  v12 = sub_10001D0E0();
  v14 = v13;
  swift_getKeyPath();
  *(v0 + 1568) = v10;
  sub_1000377F4(&qword_10006FCF0, type metadata accessor for ToolModel);
  sub_10004FB58();

  v16 = *(v10 + 96);
  if (v16 == 255)
  {
    __break(1u);
    goto LABEL_20;
  }

  v17 = *(v0 + 2304);
  v18 = *(v0 + 1912);
  v20 = v18[10];
  v19 = v18[11];
  v21 = v18[9];
  sub_10000A594(v21, v20, v19, v16);

  v22 = *v11;
  sub_100016F2C(v12, v14, v21, v20, v19, v16);

  sub_100013054(v21, v20, v19, v16);

  v23 = (v0 + 440);
LABEL_12:
  sub_10000CC70(v23);
LABEL_16:
  v45 = *(v0 + 2288);
  v46 = *(v0 + 2280);
  v47 = *(v0 + 2256);
  v48 = *(v0 + 2248);
  v49 = *(v0 + 2224);
  v50 = *(v0 + 2200);
  v51 = *(v0 + 2176);
  v52 = *(v0 + 2152);
  v53 = *(v0 + 2128);
  v54 = *(v0 + 2120);
  v56 = *(v0 + 2112);
  v57 = *(v0 + 2104);
  v58 = *(v0 + 2080);
  v59 = *(v0 + 2056);
  v60 = *(v0 + 2032);
  v61 = *(v0 + 2008);
  v62 = *(v0 + 2000);
  v63 = *(v0 + 1992);
  v64 = *(v0 + 1968);
  v65 = *(v0 + 1960);
  v66 = *(v0 + 1952);
  v67 = *(v0 + 1944);
  v68 = *(v0 + 1936);
  v69 = *(v0 + 1928);
  v70 = *(v0 + 1920);

  v55 = *(v0 + 8);

  return v55();
}

uint64_t sub_100035E9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 312) = a4;
  *(v6 + 320) = v5;
  *(v6 + 400) = a5;
  *(v6 + 296) = a2;
  *(v6 + 304) = a3;
  *(v6 + 288) = a1;
  v7 = sub_10004FAD8();
  *(v6 + 328) = v7;
  v8 = *(v7 - 8);
  *(v6 + 336) = v8;
  v9 = *(v8 + 64) + 15;
  *(v6 + 344) = swift_task_alloc();
  *(v6 + 352) = swift_task_alloc();
  *(v6 + 360) = swift_task_alloc();
  *(v6 + 368) = swift_task_alloc();
  *(v6 + 376) = swift_task_alloc();
  *(v6 + 384) = swift_task_alloc();
  sub_100050658();
  *(v6 + 392) = sub_100050648();
  v11 = sub_100050628();

  return _swift_task_switch(sub_100035FD8, v11, v10);
}

uint64_t sub_100035FD8()
{
  v1 = *(v0 + 384);
  v2 = *(v0 + 320);
  v3 = [*(v0 + 312) uuid];
  sub_10004FAB8();

  swift_getKeyPath();
  *(v0 + 160) = v2;
  sub_1000377F4(&qword_1000717B0, type metadata accessor for RewritingModel);
  sub_10004FB58();

  v4 = OBJC_IVAR____TtC31WritingToolsAppIntentsExtension14RewritingModel__sentFinishedResultToClientForContextUUID;
  swift_beginAccess();
  v5 = *(v2 + v4);
  if (!*(v5 + 16))
  {
    goto LABEL_5;
  }

  v6 = *(v0 + 384);
  v7 = *(v2 + v4);

  v8 = sub_10004A0A0(v6);
  if ((v9 & 1) == 0)
  {

LABEL_5:
    v11 = *(*(v0 + 336) + 8);
    (v11)(*(v0 + 384), *(v0 + 328));
    v10 = 0;
    goto LABEL_6;
  }

  v10 = *(*(v5 + 56) + v8);
  v11 = *(*(v0 + 336) + 8);
  (v11)(*(v0 + 384), *(v0 + 328));

LABEL_6:
  v12 = *(v0 + 320);
  swift_getKeyPath();
  *(v0 + 168) = v12;
  sub_10004FB58();

  v13 = *(v12 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension14RewritingModel__session);
  if (!v13 || (v14 = *(v0 + 320), (Strong = swift_unknownObjectWeakLoadStrong()) == 0))
  {
    v21 = *(v0 + 392);
LABEL_14:

    goto LABEL_15;
  }

  v16 = Strong;
  v17 = *(v0 + 320);
  v18 = v13;
  if (sub_10002818C() & 1) == 0 || (v19 = *(v0 + 320), (sub_100012E5C()) || (v10)
  {
    v20 = *(v0 + 392);

LABEL_12:
    swift_unknownObjectRelease();
LABEL_15:
    v23 = *(v0 + 376);
    v22 = *(v0 + 384);
    v25 = *(v0 + 360);
    v24 = *(v0 + 368);
    v27 = *(v0 + 344);
    v26 = *(v0 + 352);

    v28 = *(v0 + 8);

    return v28();
  }

  v30 = *(v0 + 376);
  v31 = v18;
  v33 = *(v0 + 312);
  v32 = *(v0 + 320);
  v34 = *(v0 + 400);
  v35 = *(v0 + 288);
  v116 = v31;
  v110 = *(v0 + 296);
  v113 = *(v0 + 304);
  [v16 compositionSession:? didReceiveText:? replacementRange:? inContext:? finished:?];
  v36 = [v33 uuid];
  sub_10004FAB8();

  swift_getKeyPath();
  *(v0 + 176) = v32;
  sub_10004FB58();

  v37 = *(v0 + 376);
  v39 = *(v0 + 328);
  v38 = *(v0 + 336);
  if (*(*(v2 + v4) + 16))
  {
    v40 = *(v2 + v4);

    sub_10004A0A0(v37);
    v42 = v41;
    (v11)(v37, v39);

    if (v42)
    {
      if (*(v0 + 400) == 1)
      {
        v104 = *(v0 + 368);
        v43 = *(v0 + 320);
        v106 = *(v0 + 328);
        v44 = [*(v0 + 312) uuid];
        sub_10004FAB8();

        swift_getKeyPath();
        *(v0 + 264) = v43;
        sub_10004FB58();

        *(v0 + 272) = v43;
        swift_getKeyPath();
        sub_10004FB78();

        swift_beginAccess();
        v45 = *(v2 + v4);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v118 = *(v2 + v4);
        *(v2 + v4) = 0x8000000000000000;
        sub_10004C8B4(1, v104, isUniquelyReferenced_nonNull_native);
        (v11)(v104, v106);
        *(v2 + v4) = v118;
        swift_endAccess();
        *(v0 + 280) = v43;
        swift_getKeyPath();
        sub_10004FB68();

        goto LABEL_24;
      }

LABEL_27:
      v64 = *(v0 + 392);

      goto LABEL_12;
    }
  }

  else
  {
    (v11)(v37, v39);
  }

  v100 = *(v0 + 368);
  v47 = *(v0 + 320);
  v107 = *(v0 + 328);
  v105 = *(v0 + 400);
  v48 = [*(v0 + 312) uuid];
  sub_10004FAB8();

  swift_getKeyPath();
  *(v0 + 184) = v47;
  sub_10004FB58();

  *(v0 + 192) = v47;
  swift_getKeyPath();
  sub_10004FB78();

  swift_beginAccess();
  v49 = *(v2 + v4);
  v50 = swift_isUniquelyReferenced_nonNull_native();
  v118 = *(v2 + v4);
  *(v2 + v4) = 0x8000000000000000;
  sub_10004C8B4(v105, v100, v50);
  (v11)(v100, v107);
  *(v2 + v4) = v118;
  swift_endAccess();
  *(v0 + 200) = v47;
  swift_getKeyPath();
  sub_10004FB68();

  if (v105 != 1)
  {
    goto LABEL_27;
  }

LABEL_24:
  v51 = *(v0 + 360);
  v52 = *(v0 + 320);
  v53 = [*(v0 + 312) uuid];
  sub_10004FAB8();

  swift_getKeyPath();
  *(v0 + 208) = v52;
  sub_10004FB58();

  v54 = OBJC_IVAR____TtC31WritingToolsAppIntentsExtension14RewritingModel__rewrittenContextsForContextUUID;
  swift_beginAccess();
  v115 = v52;
  v103 = v54;
  v55 = *(v52 + v54);
  if (*(v55 + 16))
  {
    v56 = *(v0 + 360);

    v57 = sub_10004A0A0(v56);
    if (v58)
    {
      v59 = *(v0 + 360);
      v60 = *(v0 + 328);
      v61 = *(*(v55 + 56) + 8 * v57);
      v62 = *(v0 + 336) + 8;

      (v11)(v59, v60);

      v63 = v103;
      goto LABEL_30;
    }
  }

  v97 = *(v0 + 368);
  v108 = *(v0 + 328);
  v65 = *(v0 + 312);
  v66 = *(v0 + 320);
  v95 = v66;
  v101 = *(v0 + 336) + 8;
  v11(*(v0 + 360));
  v67 = [v65 uuid];
  sub_10004FAB8();

  swift_getKeyPath();
  *(v0 + 216) = v66;
  sub_10004FB58();

  *(v0 + 224) = v66;
  swift_getKeyPath();
  sub_10004FB78();

  v63 = v103;
  swift_beginAccess();
  v68 = *(v52 + v103);
  v69 = swift_isUniquelyReferenced_nonNull_native();
  v118 = *(v52 + v103);
  *(v52 + v103) = 0x8000000000000000;
  sub_10004C6E8(&_swiftEmptyArrayStorage, v97, v69);
  (v11)(v97, v108);
  *(v52 + v103) = v118;
  swift_endAccess();
  *(v0 + 232) = v95;
  swift_getKeyPath();
  sub_10004FB68();

LABEL_30:
  v109 = *(v0 + 352);
  v70 = *(v0 + 336);
  v98 = v70;
  v99 = *(v0 + 344);
  v102 = *(v0 + 328);
  v71 = *(v0 + 312);
  v72 = *(v0 + 320);
  v73 = *(v0 + 288);
  v74 = [v71 attributedText];
  v75 = [objc_allocWithZone(NSMutableAttributedString) initWithAttributedString:v74];

  [v75 replaceCharactersInRange:v110 withAttributedString:{v113, v73}];
  v114 = v75;
  v111 = [objc_allocWithZone(WTContext) initWithAttributedText:v75 range:{objc_msgSend(v71, "range"), objc_msgSend(v73, "length")}];
  v96 = [v71 uuid];
  sub_10004FAB8();
  swift_getKeyPath();
  *(v0 + 240) = v72;
  sub_10004FB58();

  *(v0 + 248) = v72;
  swift_getKeyPath();
  sub_10004FB78();

  swift_beginAccess();
  v76 = *(v115 + v63);
  v77 = swift_isUniquelyReferenced_nonNull_native();
  v78 = v99;
  (*(v98 + 16))(v99, v109, v102);
  v79 = *(v115 + v63);
  v117 = v79;
  *(v115 + v63) = 0x8000000000000000;
  v81 = sub_10004A0A0(v99);
  v82 = *(v79 + 16);
  v83 = (v80 & 1) == 0;
  v84 = v82 + v83;
  if (__OFADD__(v82, v83))
  {
    __break(1u);
    goto LABEL_46;
  }

  v78 = v80;
  if (*(v79 + 24) >= v84)
  {
    if ((v77 & 1) == 0)
    {
      sub_10004D378();
    }

LABEL_39:
    if (v78)
    {
      v89 = *(v0 + 392);
      v77 = v117;
      v109 = v81;
      v90 = *(*(v117 + 56) + 8 * v81);

      v118 = v90;
      v78 = v111;
      sub_1000505C8();
      if (*((v90 & 0xFFFFFFFFFFFFFF8) + 0x10) < *((v90 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
LABEL_41:
        v112 = v78;
        sub_100050618();
        v92 = *(v0 + 344);
        v91 = *(v0 + 352);
        v93 = *(v0 + 328);
        if (v118)
        {
          *(*(v77 + 56) + 8 * v109) = v118;

          (v11)(v92, v93);
          (v11)(v91, v93);
        }

        else
        {
          (v11)(*(v77 + 48) + *(*(v0 + 336) + 72) * v109, *(v0 + 328));
          sub_10004BF0C(v109, v77);
          (v11)(v92, v93);
          (v11)(v91, v93);
        }

        v94 = *(v0 + 320);
        *(v115 + v103) = v77;
        swift_endAccess();
        *(v0 + 256) = v94;
        swift_getKeyPath();
        sub_10004FB68();

        swift_unknownObjectRelease();
        goto LABEL_14;
      }

LABEL_47:
      sub_100050608();
      goto LABEL_41;
    }

LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  v85 = *(v0 + 344);
  sub_10004B394(v84, v77);
  v86 = sub_10004A0A0(v85);
  if ((v78 & 1) == (v87 & 1))
  {
    v81 = v86;
    goto LABEL_39;
  }

  v88 = *(v0 + 328);

  return sub_1000509C8();
}

uint64_t sub_100036CA8(char a1, uint64_t a2, void (*a3)(void))
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v8 = result;
    swift_getKeyPath();
    sub_1000377F4(&qword_1000717B0, type metadata accessor for RewritingModel);
    sub_10004FB58();

    if (*(v3 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension14RewritingModel__task))
    {
      v9 = *(v3 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension14RewritingModel__task);

      sub_100050698();
    }

    if (a2)
    {
      swift_errorRetain();
      v10 = sub_10004F958();
      [v8 endWritingToolsWithError:v10];
    }

    else
    {
      swift_getKeyPath();
      sub_10004FB58();

      v11 = *(v3 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension14RewritingModel__session);
      if (v11)
      {
        v12 = v11;
        if (sub_10002818C())
        {
          if (a1 == 2)
          {
            swift_getKeyPath();
            sub_10004FB58();

            a1 = *(v3 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension14RewritingModel__showingOriginal) ^ 1;
          }

          [v8 didEndWritingToolsSession:v12 accepted:a1 & 1];
        }
      }
    }

    sub_1000290EC(0);
    if (a3)
    {
      a3();
    }

    return swift_unknownObjectRelease();
  }

  else if (a3)
  {
    return (a3)();
  }

  return result;
}

uint64_t sub_100036EF0()
{
  v1 = *(v0 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension14RewritingModel__supportedActions);

  v2 = *(v0 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension14RewritingModel__task);

  v3 = *(v0 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension14RewritingModel__modelInfoString + 8);

  v4 = *(v0 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension14RewritingModel__inputStringForFeedback + 8);

  v5 = *(v0 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension14RewritingModel__detectedModelLanguage + 8);

  sub_10000CBA0(v0 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension14RewritingModel__analyticsInstance, &unk_1000711A0, &qword_100058BF0);
  v6 = *(v0 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension14RewritingModel__sentFinishedResultToClientForContextUUID);

  v7 = *(v0 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension14RewritingModel__finishedResultForContextUUID);

  v8 = *(v0 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension14RewritingModel__rewrittenContextsForContextUUID);

  v9 = OBJC_IVAR____TtC31WritingToolsAppIntentsExtension14RewritingModel___observationRegistrar;
  v10 = sub_10004FB98();
  v11 = *(*(v10 - 8) + 8);

  return v11(v0 + v9, v10);
}

uint64_t RewritingModel.deinit()
{
  v0 = ToolModel.deinit();
  v1 = *(v0 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension14RewritingModel__supportedActions);

  v2 = *(v0 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension14RewritingModel__task);

  v3 = *(v0 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension14RewritingModel__modelInfoString + 8);

  v4 = *(v0 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension14RewritingModel__inputStringForFeedback + 8);

  v5 = *(v0 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension14RewritingModel__detectedModelLanguage + 8);

  sub_10000CBA0(v0 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension14RewritingModel__analyticsInstance, &unk_1000711A0, &qword_100058BF0);
  v6 = *(v0 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension14RewritingModel__sentFinishedResultToClientForContextUUID);

  v7 = *(v0 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension14RewritingModel__finishedResultForContextUUID);

  v8 = *(v0 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension14RewritingModel__rewrittenContextsForContextUUID);

  v9 = OBJC_IVAR____TtC31WritingToolsAppIntentsExtension14RewritingModel___observationRegistrar;
  v10 = sub_10004FB98();
  (*(*(v10 - 8) + 8))(v0 + v9, v10);
  return v0;
}

uint64_t RewritingModel.__deallocating_deinit()
{
  v0 = *RewritingModel.deinit();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for RewritingModel()
{
  result = qword_100071898;
  if (!qword_100071898)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100037240()
{
  result = sub_10004FB98();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t sub_100037344(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_100029444(v4);
}

void sub_100037398(id *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1;
  sub_1000290EC(v2);
}

uint64_t sub_100037418()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100037458(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100006CB4;

  return sub_10002B36C(a1, v4, v5, v6);
}

uint64_t sub_10003750C(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100037604;

  return v7(a1);
}

uint64_t sub_100037604()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1000376FC()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100037734(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1000118D4;

  return sub_10003750C(a1, v5);
}

uint64_t sub_1000377F4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10003787C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = sub_100050898();
  *(v6 + 64) = v12;
  v13 = *(v12 - 8);
  *(v6 + 72) = v13;
  v14 = *(v13 + 64) + 15;
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;

  return _swift_task_switch(sub_10003797C, 0, 0);
}

uint64_t sub_10003797C()
{
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[8];
  v4 = v0[9];
  v5 = v0[7];
  v6 = sub_1000508A8();
  v7 = sub_1000377F4(&qword_100072290, &type metadata accessor for ContinuousClock);
  sub_1000509D8();
  sub_1000377F4(&qword_100072298, &type metadata accessor for ContinuousClock.Instant);
  sub_1000508B8();
  v8 = *(v4 + 8);
  v0[12] = v8;
  v0[13] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8(v1, v3);
  v9 = async function pointer to dispatch thunk of Clock.sleep(until:tolerance:)[1];
  v10 = swift_task_alloc();
  v0[14] = v10;
  *v10 = v0;
  v10[1] = sub_100037B0C;
  v11 = v0[11];
  v12 = v0[7];

  return dispatch thunk of Clock.sleep(until:tolerance:)(v11, v0 + 2, v6, v7);
}

uint64_t sub_100037B0C()
{
  v2 = *(*v1 + 112);
  v3 = *(*v1 + 104);
  v4 = *(*v1 + 96);
  v5 = *(*v1 + 88);
  v6 = *(*v1 + 64);
  v7 = *v1;
  v7[15] = v0;

  v4(v5, v6);
  if (v0)
  {

    return _swift_task_switch(sub_100037CC8, 0, 0);
  }

  else
  {
    v9 = v7[10];
    v8 = v7[11];

    v10 = v7[1];

    return v10();
  }
}

uint64_t sub_100037CC8()
{
  v2 = v0[10];
  v1 = v0[11];

  v3 = v0[1];
  v4 = v0[15];

  return v3();
}

size_t sub_100037D34(size_t result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_100002814(&qword_1000722A0, &qword_1000591C8);
  v10 = *(type metadata accessor for Attachment(0) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for Attachment(0) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void *sub_100037F0C(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100002814(&qword_100072248, &qword_1000590D0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    type metadata accessor for IAPayloadValue(0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_100038074(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v6 = *a1;
  v7 = *a2;

  return a5(v8);
}

unint64_t sub_1000380E8(unint64_t result)
{
  if (result)
  {
    v1 = result;
    swift_stdlib_random();
    result = (0 * v1) >> 64;
    if (-v1 % v1)
    {
      while (1)
      {
        swift_stdlib_random();
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100038174(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_100038268;

  return v6(v2 + 32);
}

uint64_t sub_100038268()
{
  v1 = *v0;
  v2 = *(*v0 + 24);
  v3 = *(*v0 + 16);
  v6 = *v0;

  *v3 = *(v1 + 32);
  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_10003837C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v4 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension14RewritingModel__isForEditableContent) = 1;
  *(v4 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension14RewritingModel__wantsInlineEditing) = 1;
  *(v4 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension14RewritingModel__allowedResultOptions) = 0;
  *(v4 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension14RewritingModel__supportedActions) = sub_100003AA0(&off_100069F48);
  *(v4 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension14RewritingModel__session) = 0;
  *(v4 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension14RewritingModel__task) = 0;
  *(v4 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension14RewritingModel__resultAttributedString) = 0;
  v9 = v4 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension14RewritingModel__resultAttributedStringRange;
  *v9 = 0;
  *(v9 + 8) = 0;
  *(v9 + 16) = 1;
  v10 = (v4 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension14RewritingModel__modelInfoString);
  *v10 = 0;
  v10[1] = 0xE000000000000000;
  v11 = (v4 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension14RewritingModel__inputStringForFeedback);
  *v11 = 0;
  v11[1] = 0xE000000000000000;
  v12 = (v4 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension14RewritingModel__detectedModelLanguage);
  *v12 = 0;
  v12[1] = 0;
  *(v4 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension14RewritingModel__modelPromptTokenCount) = 0;
  *(v4 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension14RewritingModel__modelOutputTokenCount) = 0;
  v13 = v4 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension14RewritingModel__analyticsInstance;
  *v13 = 0u;
  *(v13 + 16) = 0u;
  *(v13 + 32) = 0;
  *(v4 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension14RewritingModel__sentFinishedResultToClientForContextUUID) = sub_100003BDC(&_swiftEmptyArrayStorage);
  *(v4 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension14RewritingModel__finishedResultForContextUUID) = sub_100003DC4(&_swiftEmptyArrayStorage);
  *(v4 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension14RewritingModel__rewrittenContextsForContextUUID) = sub_100003FC8(&_swiftEmptyArrayStorage);
  *(v4 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension14RewritingModel__showingOriginal) = 0;
  *(v4 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension14RewritingModel__undoCount) = 0;
  *(v4 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension14RewritingModel__redoCount) = 0;
  *(v4 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension14RewritingModel__handoffState) = 0;
  *(v4 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension14RewritingModel__showingFollowUpAdjust) = 0;
  _s31WritingToolsAppIntentsExtension0aB5ModelC22__observationRegistrar33_6346B183D012139D30F2228CDC89ECE911Observation0oH0Vvpfi_0();
  swift_unknownObjectWeakInit();
  *(v4 + 49) = 0u;
  *(v4 + 40) = 0u;
  *(v4 + 24) = 0u;
  *(v4 + 80) = 0;
  *(v4 + 88) = 0;
  *(v4 + 72) = 0;
  *(v4 + 96) = -1;
  *(v4 + 104) = 0;
  *(v4 + 112) = 0;
  *(v4 + 120) = 0;
  *(v4 + 128) = 0;
  *(v4 + 136) = 0;
  *(v4 + 144) = 0;
  _s31WritingToolsAppIntentsExtension0aB5ModelC22__observationRegistrar33_6346B183D012139D30F2228CDC89ECE911Observation0oH0Vvpfi_0();
  sub_100011C9C(a1, a2, a3, a4);
  swift_unknownObjectWeakAssign();
  return v4;
}

void sub_1000385BC(id *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1;
  sub_100011960(v2);
}

void sub_100038614(id *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1;
  sub_1000295E8(v2);
}

uint64_t sub_100038690(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;

  return sub_100029F04(v2, v3);
}

void sub_1000386F8(id *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1;
  sub_10002A094(v2);
}

void sub_100038750(id *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1;
  sub_10002A3D0(v2);
}

__n128 sub_1000387D8()
{
  v1 = *(v0 + 40);
  v2 = (*(v0 + 16) + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension14RewritingModel__resultAttributedStringRange);
  result = *(v0 + 24);
  *v2 = result;
  v2[1].n128_u8[0] = v1;
  return result;
}

void sub_100038804()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension14RewritingModel__resultAttributedString);
  *(v1 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension14RewritingModel__resultAttributedString) = v2;
  v4 = v2;
}

uint64_t sub_100038884(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v7 = *a1;
  v6 = a1[1];
  v8 = *a2;

  return a5(v7, v6);
}

uint64_t sub_100038980(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002814(&unk_1000711A0, &qword_100058BF0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

unint64_t sub_100038A58()
{
  result = qword_100072250;
  if (!qword_100072250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100072250);
  }

  return result;
}

unint64_t sub_100038AAC()
{
  result = qword_100072258;
  if (!qword_100072258)
  {
    sub_10000E5D8(255, &qword_100070180, NSError_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100072258);
  }

  return result;
}

uint64_t sub_100038B1C()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100038B64(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1000118D4;

  return sub_10002C86C(a1, v4, v5, v7, v6);
}

void sub_100038CB0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension14RewritingModel__modelOutputTokenCount);
  *(v1 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension14RewritingModel__modelOutputTokenCount) = v2;
  v4 = v2;
}

void sub_100038CF0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension14RewritingModel__modelPromptTokenCount);
  *(v1 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension14RewritingModel__modelPromptTokenCount) = v2;
  v4 = v2;
}

uint64_t sub_100038D30()
{
  v1 = v0[4];
  v2 = (v0[2] + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension14RewritingModel__detectedModelLanguage);
  v3 = v2[1];
  *v2 = v0[3];
  v2[1] = v1;
}

uint64_t sub_100038D7C(void *a1)
{
  v2 = v1[4];
  v3 = (v1[2] + *a1);
  v4 = v3[1];
  *v3 = v1[3];
  v3[1] = v2;
}

uint64_t sub_100038DC8()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension14RewritingModel__task);
  *(v1 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension14RewritingModel__task) = *(v0 + 24);
}

void sub_100038E0C()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = *(v2 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension14RewritingModel__session);
  *(v2 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension14RewritingModel__session) = v1;
  v4 = v1;
  sub_100028960(v3);
}

uint64_t sub_100038EC0()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension14RewritingModel__supportedActions);
  *(v1 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension14RewritingModel__supportedActions) = *(v0 + 24);
}

uint64_t sub_100038FE8(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1000118D4;

  return sub_100038174(a1, v5);
}

uint64_t sub_1000390A0(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100006CB4;

  return sub_100038174(a1, v5);
}

unint64_t sub_10003920C()
{
  result = qword_100072350;
  if (!qword_100072350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100072350);
  }

  return result;
}

unint64_t sub_100039264()
{
  result = qword_100072358;
  if (!qword_100072358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100072358);
  }

  return result;
}

unint64_t sub_1000392BC()
{
  result = qword_100072360;
  if (!qword_100072360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100072360);
  }

  return result;
}

uint64_t sub_100039360()
{
  v0 = sub_10004F9A8();
  sub_100007390(v0, qword_10007B490);
  sub_1000071F4(v0, qword_10007B490);
  return sub_10004F978();
}

uint64_t sub_1000393D0@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_100002814(&qword_10006F0C0, &qword_100056370);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v20 - v4;
  v6 = sub_100002814(&qword_10006F090, &qword_100058950);
  v7 = *(*(v6 - 8) + 64);
  v8 = __chkstk_darwin(v6 - 8);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v20 - v11;
  v13 = sub_10004F9A8();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  sub_10004F978();
  v16 = *(v14 + 56);
  v16(v12, 1, 1, v13);
  sub_10004F978();
  v16(v10, 0, 1, v13);
  sub_10004F708();
  v17 = sub_10004F718();
  (*(*(v17 - 8) + 56))(v5, 0, 1, v17);
  sub_10004F6E8();
  v18 = sub_10004F6D8();
  return (*(*(v18 - 8) + 56))(a1, 0, 1, v18);
}

uint64_t sub_100039678(uint64_t a1, uint64_t a2)
{
  v2[9] = a1;
  v2[10] = a2;
  v3 = *(*(sub_10004FB38() - 8) + 64) + 15;
  v2[11] = swift_task_alloc();
  v4 = *(*(sub_1000504D8() - 8) + 64) + 15;
  v2[12] = swift_task_alloc();
  v5 = sub_10004F8A8();
  v2[13] = v5;
  v6 = *(v5 - 8);
  v2[14] = v6;
  v7 = *(v6 + 64) + 15;
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v2[19] = sub_100050658();
  v2[20] = sub_100050648();
  v9 = sub_100050628();
  v2[21] = v9;
  v2[22] = v8;

  return _swift_task_switch(sub_1000397EC, v9, v8);
}

uint64_t sub_1000397EC()
{
  sub_10004F658();
  v1 = sub_10004F648();
  if (v1)
  {
    v3 = *(v0 + 144);
    v2 = *(v0 + 152);
    v4 = *(v0 + 80);
    v5 = v1[1];
    *(v0 + 264) = *v1;
    *(v0 + 280) = v5;
    *(v0 + 48) = v4;
    sub_10003A418();
    *(v0 + 184) = sub_10004F7C8();
    sub_10004F698();
    v6 = type metadata accessor for WritingToolsIntentManager();
    v7 = *(v6 + 48);
    v8 = *(v6 + 52);
    *(v0 + 192) = swift_allocObject();
    *(v0 + 200) = sub_100050648();
    v10 = sub_100050628();

    return _swift_task_switch(sub_100039A90, v10, v9);
  }

  else
  {
    v11 = *(v0 + 160);

    if (qword_10006EA00 != -1)
    {
      swift_once();
    }

    v12 = sub_100050188();
    sub_1000071F4(v12, qword_10007B4F8);
    v13 = sub_100050168();
    v14 = sub_100050728();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v13, v14, "Failed to obtain an app audit token from AppIntents.", v15, 2u);
    }

    sub_10004F5D8();
    sub_10000731C(&qword_10006F0A0, &type metadata accessor for AppIntentError);
    swift_allocError();
    sub_10004F5C8();
    swift_willThrow();
    v17 = *(v0 + 136);
    v16 = *(v0 + 144);
    v19 = *(v0 + 120);
    v18 = *(v0 + 128);
    v21 = *(v0 + 88);
    v20 = *(v0 + 96);

    v22 = *(v0 + 8);

    return v22();
  }
}

uint64_t sub_100039A90()
{
  v2 = *(v0 + 192);
  v1 = *(v0 + 200);
  v3 = *(v0 + 184);
  v24 = *(v0 + 144);
  v25 = *(v0 + 136);
  v4 = *(v0 + 112);
  v23 = *(v0 + 104);
  v6 = *(v0 + 88);
  v5 = *(v0 + 96);

  sub_100050468();
  sub_10004FB08();
  v7 = sub_100050528();
  *(v0 + 208) = v8;
  *(v2 + 3) = v7;
  *(v2 + 4) = v8;
  *(v2 + 6) = 100;
  v9 = type metadata accessor for WritingToolsModel();
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  swift_allocObject();
  v12 = sub_100009ACC(1, 0);
  *(v0 + 216) = v12;
  *(v2 + 2) = v12;
  sub_100008F38(1, 0, 0, 0);
  swift_getKeyPath();
  *(v0 + 56) = v12;
  sub_10000731C(&unk_10006F5D0, type metadata accessor for WritingToolsModel);
  sub_10004FB58();

  v13 = *(v12 + 24);
  v14 = objc_allocWithZone(BSAuditToken);

  v15 = *(v0 + 280);
  *(v0 + 296) = *(v0 + 264);
  *(v0 + 312) = v15;
  sub_100011960([v14 initWithAuditToken:v0 + 296]);

  *(v2 + 5) = v3;
  [v3 setTotalUnitCount:100];
  v16 = *(v4 + 16);
  v16(&v2[OBJC_IVAR____TtC31WritingToolsAppIntentsExtension25WritingToolsIntentManager_text], v24, v23);
  sub_100007288();
  v16(v25, v24, v23);
  v17 = sub_100050798();
  v18 = [objc_allocWithZone(WTContext) initWithAttributedText:v17 range:{0, objc_msgSend(v17, "length")}];
  *(v0 + 224) = v18;

  v19 = *(v4 + 8);
  *(v0 + 232) = v19;
  *(v0 + 240) = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v19(v24, v23);
  *&v2[OBJC_IVAR____TtC31WritingToolsAppIntentsExtension25WritingToolsIntentManager_context] = v18;
  v20 = *(v0 + 168);
  v21 = *(v0 + 176);

  return _swift_task_switch(sub_10000630C, v20, v21);
}

uint64_t sub_100039D74@<X0>(uint64_t a1@<X8>)
{
  if (qword_10006E9F8 != -1)
  {
    swift_once();
  }

  v2 = sub_10004F9A8();
  v3 = sub_1000071F4(v2, qword_10007B490);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_100039E1C()
{
  v0 = sub_100002814(&qword_100072380, &qword_100059390);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v2 = sub_100002814(&qword_100072388, &qword_100059398);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  sub_10004F778();
  v5._countAndFlagsBits = 0x616572666F6F7250;
  v5._object = 0xEA00000000002064;
  sub_10004F768(v5);
  swift_getKeyPath();
  sub_100002814(&qword_100072390, &qword_1000593C8);
  sub_10004F758();

  v6._countAndFlagsBits = 0;
  v6._object = 0xE000000000000000;
  sub_10004F768(v6);
  sub_10004F788();
  return sub_10004F748();
}

uint64_t sub_100039FB8(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100006CB4;

  return sub_100039678(a1, v4);
}

uint64_t sub_10003A058@<X0>(uint64_t *a1@<X8>)
{
  v25 = a1;
  v1 = sub_10004F798();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100002814(&qword_10006F080, &unk_100059350);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v24 - v8;
  v10 = sub_100002814(&qword_10006F088, &unk_100056320);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v24 - v12;
  v14 = sub_100002814(&qword_10006F090, &qword_100058950);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = &v24 - v16;
  v18 = sub_10004F9A8();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  sub_100002814(&qword_10006F098, &qword_100056330);
  sub_10004F978();
  (*(v19 + 56))(v17, 1, 1, v18);
  v21 = sub_10004F8A8();
  (*(*(v21 - 8) + 56))(v13, 1, 1, v21);
  v22 = sub_10004F678();
  (*(*(v22 - 8) + 56))(v9, 1, 1, v22);
  (*(v2 + 104))(v5, enum case for InputConnectionBehavior.default(_:), v1);
  result = sub_10004F6C8();
  *v25 = result;
  return result;
}

uint64_t sub_10003A388(uint64_t a1)
{
  v2 = sub_10003920C();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

unint64_t sub_10003A418()
{
  result = qword_100072378;
  if (!qword_100072378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100072378);
  }

  return result;
}

uint64_t sub_10003A474@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_10004F6A8();
  *a2 = result;
  return result;
}

uint64_t sub_10003A514(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xE900000000000074;
  v3 = 0x7469746E45707061;
  v4 = 0xE900000000000079;
  v5 = a1;
  v6 = 0xE500000000000000;
  v7 = 0x616964656DLL;
  if (a1 != 6)
  {
    v7 = 0x6E65657263536E6FLL;
    v6 = 0xE800000000000000;
  }

  v8 = 0xE500000000000000;
  v9 = 0x746E657665;
  if (a1 != 4)
  {
    v9 = 0x647261436469;
    v8 = 0xE600000000000000;
  }

  if (a1 <= 5u)
  {
    v7 = v9;
    v6 = v8;
  }

  v10 = 0xE600000000000000;
  v11 = 0x6C61626F6C67;
  if (a1 == 2)
  {
    v2 = 0xE600000000000000;
  }

  else
  {
    v11 = 0x6867696C746F7073;
  }

  v12 = 0x726577736E61;
  if (!a1)
  {
    v12 = 0x7469746E45707061;
    v10 = 0xE900000000000079;
  }

  if (a1 <= 1u)
  {
    v11 = v12;
    v2 = v10;
  }

  if (a1 <= 3u)
  {
    v13 = v11;
  }

  else
  {
    v13 = v7;
  }

  if (v5 <= 3)
  {
    v14 = v2;
  }

  else
  {
    v14 = v6;
  }

  if (a2 > 3u)
  {
    if (a2 > 5u)
    {
      if (a2 == 6)
      {
        v4 = 0xE500000000000000;
        if (v13 != 0x616964656DLL)
        {
          goto LABEL_42;
        }
      }

      else
      {
        v4 = 0xE800000000000000;
        if (v13 != 0x6E65657263536E6FLL)
        {
          goto LABEL_42;
        }
      }
    }

    else if (a2 == 4)
    {
      v4 = 0xE500000000000000;
      if (v13 != 0x746E657665)
      {
        goto LABEL_42;
      }
    }

    else
    {
      v4 = 0xE600000000000000;
      if (v13 != 0x647261436469)
      {
        goto LABEL_42;
      }
    }
  }

  else
  {
    if (a2 > 1u)
    {
      if (a2 == 2)
      {
        v4 = 0xE600000000000000;
        if (v13 != 0x6C61626F6C67)
        {
          goto LABEL_42;
        }

        goto LABEL_39;
      }

      v3 = 0x6867696C746F7073;
      v4 = 0xE900000000000074;
    }

    else if (a2)
    {
      v4 = 0xE600000000000000;
      if (v13 != 0x726577736E61)
      {
        goto LABEL_42;
      }

      goto LABEL_39;
    }

    if (v13 != v3)
    {
LABEL_42:
      v15 = sub_1000509B8();
      goto LABEL_43;
    }
  }

LABEL_39:
  if (v14 != v4)
  {
    goto LABEL_42;
  }

  v15 = 1;
LABEL_43:

  return v15 & 1;
}

uint64_t sub_10003A754()
{
  sub_100050568();
}

Swift::Int sub_10003A870()
{
  sub_100050A78();
  sub_100050568();

  return sub_100050AA8();
}

uint64_t sub_10003A9A4()
{
  v1 = v0;
  v2 = 7104878;
  sub_100050848(63);
  v20._object = 0x8000000100053520;
  v20._countAndFlagsBits = 0xD000000000000022;
  sub_100050578(v20);
  v3 = qword_100072398;
  v4 = *(v0 + qword_100072398);

  sub_10004FF48();

  if (v19 == 2)
  {
    v5 = 0xE300000000000000;
    v6._countAndFlagsBits = 7104878;
  }

  else
  {
    v7 = *(v1 + v3);

    sub_10004FF48();

    if (v19)
    {
      v6._countAndFlagsBits = 1702195828;
    }

    else
    {
      v6._countAndFlagsBits = 0x65736C6166;
    }

    if (v19)
    {
      v5 = 0xE400000000000000;
    }

    else
    {
      v5 = 0xE500000000000000;
    }
  }

  v6._object = v5;
  sub_100050578(v6);

  v21._countAndFlagsBits = 0x656E4F6B63697020;
  v21._object = 0xE90000000000003DLL;
  sub_100050578(v21);
  v8 = qword_1000723A0;
  v9 = *(v1 + qword_1000723A0);

  sub_10004FF48();

  if (v19 == 2)
  {
    v10 = 0xE300000000000000;
    v11._countAndFlagsBits = 7104878;
  }

  else
  {
    v12 = *(v1 + v8);

    sub_10004FF48();

    if (v19)
    {
      v11._countAndFlagsBits = 1702195828;
    }

    else
    {
      v11._countAndFlagsBits = 0x65736C6166;
    }

    if (v19)
    {
      v10 = 0xE400000000000000;
    }

    else
    {
      v10 = 0xE500000000000000;
    }
  }

  v11._object = v10;
  sub_100050578(v11);

  v22._countAndFlagsBits = 0x5468637261657320;
  v22._object = 0xED00003D736D7265;
  sub_100050578(v22);
  v13 = qword_1000723A8;
  v14 = *(v1 + qword_1000723A8);

  sub_10004FF48();

  if (v19)
  {

    v15 = *(v1 + v13);

    sub_10004FF48();

    v2 = sub_1000505F8();
    v17 = v16;
  }

  else
  {
    v17 = 0xE300000000000000;
  }

  v23._countAndFlagsBits = v2;
  v23._object = v17;
  sub_100050578(v23);

  v24._countAndFlagsBits = 62;
  v24._object = 0xE100000000000000;
  sub_100050578(v24);
  return 0;
}

uint64_t sub_10003AC5C(uint64_t a1)
{
  v3 = sub_10004FE28();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v1 + 48);
  v9 = *(v1 + 52);
  v10 = swift_allocObject();
  v11 = qword_100072398;
  v12 = sub_100002814(&qword_1000727E8, &unk_10005A210);
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();
  *(v10 + v11) = sub_10004FF38();
  v15 = qword_1000723A0;
  v16 = *(v12 + 48);
  v17 = *(v12 + 52);
  swift_allocObject();
  *(v10 + v15) = sub_10004FF38();
  v18 = qword_1000723A8;
  v19 = sub_100002814(&qword_1000727B8, &qword_10005A1E0);
  v20 = *(v19 + 48);
  v21 = *(v19 + 52);
  swift_allocObject();
  *(v10 + v18) = sub_10004FF38();
  (*(v4 + 16))(v7, a1, v3);
  v22 = sub_10004FE88();
  (*(v4 + 8))(a1, v3);
  return v22;
}

uint64_t sub_10003AE18()
{
  v1 = *(v0 + qword_100072398);

  v2 = *(v0 + qword_1000723A0);

  v3 = *(v0 + qword_1000723A8);
}

uint64_t sub_10003AE68()
{
  v0 = sub_10004FE78();
  v1 = *(v0 + qword_100072398);

  v2 = *(v0 + qword_1000723A0);

  v3 = *(v0 + qword_1000723A8);

  return swift_deallocClassInstance();
}

uint64_t sub_10003AF60(uint64_t a1)
{
  v3 = sub_10003DADC(&qword_100072780, type metadata accessor for StructuredQueryEntity);

  return static IntentValueTypeIdentifiable.canConvertFrom(_:)(a1, v1, v3);
}

uint64_t sub_10003AFD0()
{
  v1 = sub_10003DADC(&qword_100072770, type metadata accessor for StructuredQueryEntity);

  return static AppEntityTypeDescribing.lnValueType.getter(v0, v1);
}

uint64_t sub_10003B030(uint64_t a1)
{
  v3 = sub_10003DADC(&qword_100072780, type metadata accessor for StructuredQueryEntity);

  return static IntentValueTypeIdentifiable.canConvert(_:)(a1, v1, v3);
}

uint64_t sub_10003B0A0()
{
  v1 = v0;
  v2 = 7104878;
  sub_100050848(74);
  v31._countAndFlagsBits = 0xD000000000000015;
  v31._object = 0x8000000100053580;
  sub_100050578(v31);
  v3 = *(v0 + qword_100072400);

  sub_10004FF48();

  if (v30)
  {
    v4._countAndFlagsBits = v29;
  }

  else
  {
    v4._countAndFlagsBits = 7104878;
  }

  object = 0xE300000000000000;
  if (v30)
  {
    v6 = v30;
  }

  else
  {
    v6 = 0xE300000000000000;
  }

  v4._object = v6;
  sub_100050578(v4);

  v32._countAndFlagsBits = 0x3D6570797420;
  v32._object = 0xE600000000000000;
  sub_100050578(v32);
  v7 = qword_100072408;
  v8 = *(v1 + qword_100072408);

  sub_10004FF48();

  v9._countAndFlagsBits = 7104878;
  if (v29 != 8)
  {
    v10 = *(v1 + v7);

    sub_10004FF48();

    v9._countAndFlagsBits = sub_100050548();
    object = v9._object;
  }

  v9._object = object;
  sub_100050578(v9);

  v33._countAndFlagsBits = 0x69746E4570706120;
  v33._object = 0xEB000000003D7974;
  sub_100050578(v33);
  v11 = qword_100072410;
  v12 = *(v1 + qword_100072410);

  sub_10004FF48();

  if (v29)
  {

    v13 = *(v1 + v11);

    sub_10004FF48();

    v14 = sub_10003BD84();
    v16 = v15;
  }

  else
  {
    v16 = 0xE300000000000000;
    v14 = 7104878;
  }

  v34._countAndFlagsBits = v14;
  v34._object = v16;
  sub_100050578(v34);

  v35._object = 0x80000001000535A0;
  v35._countAndFlagsBits = 0xD000000000000011;
  sub_100050578(v35);
  v17 = qword_100072420;
  v18 = *(v1 + qword_100072420);

  sub_10004FF48();

  if (v29)
  {

    v19 = *(v1 + v17);

    sub_10004FF48();

    v20 = sub_10003C3CC();
    v22 = v21;
  }

  else
  {
    v22 = 0xE300000000000000;
    v20 = 7104878;
  }

  v36._countAndFlagsBits = v20;
  v36._object = v22;
  sub_100050578(v36);

  v37._countAndFlagsBits = 0x3D726577736E6120;
  v37._object = 0xE800000000000000;
  sub_100050578(v37);
  v23 = qword_100072418;
  v24 = *(v1 + qword_100072418);

  sub_10004FF48();

  if (v29)
  {

    v25 = *(v1 + v23);

    sub_10004FF48();

    v2 = sub_10003CDD4();
    v27 = v26;
  }

  else
  {
    v27 = 0xE300000000000000;
  }

  v38._countAndFlagsBits = v2;
  v38._object = v27;
  sub_100050578(v38);

  v39._countAndFlagsBits = 62;
  v39._object = 0xE100000000000000;
  sub_100050578(v39);
  return 0;
}

uint64_t sub_10003B454(uint64_t a1)
{
  v3 = sub_10004FE28();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = qword_100072400;
  v9 = sub_100002814(&qword_1000727A8, &qword_10005A1D0);
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  swift_allocObject();
  *(v1 + v8) = sub_10004FF38();
  v12 = qword_100072408;
  v13 = sub_100002814(&qword_1000727C8, &qword_10005A1F0);
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  *(v1 + v12) = sub_10004FF38();
  v16 = qword_100072410;
  v17 = sub_100002814(&qword_1000727D0, &qword_10005A1F8);
  v18 = *(v17 + 48);
  v19 = *(v17 + 52);
  swift_allocObject();
  *(v1 + v16) = sub_10004FF38();
  v20 = qword_100072418;
  v21 = sub_100002814(&qword_1000727D8, &qword_10005A200);
  v22 = *(v21 + 48);
  v23 = *(v21 + 52);
  swift_allocObject();
  *(v1 + v20) = sub_10004FF38();
  v24 = qword_100072420;
  v25 = sub_100002814(&qword_1000727E0, &qword_10005A208);
  v26 = *(v25 + 48);
  v27 = *(v25 + 52);
  swift_allocObject();
  *(v1 + v24) = sub_10004FF38();
  (*(v4 + 16))(v7, a1, v3);
  v28 = sub_10004FE88();
  (*(v4 + 8))(a1, v3);
  return v28;
}

uint64_t sub_10003B684()
{
  v1 = *(v0 + qword_100072400);

  v2 = *(v0 + qword_100072408);

  v3 = *(v0 + qword_100072410);

  v4 = *(v0 + qword_100072418);

  v5 = *(v0 + qword_100072420);
}

uint64_t sub_10003B6F4()
{
  v0 = sub_10004FE78();
  v1 = *(v0 + qword_100072400);

  v2 = *(v0 + qword_100072408);

  v3 = *(v0 + qword_100072410);

  v4 = *(v0 + qword_100072418);

  v5 = *(v0 + qword_100072420);

  return swift_deallocClassInstance();
}

uint64_t sub_10003B8C0(uint64_t a1)
{
  v3 = sub_10003DADC(&qword_100072738, type metadata accessor for SearchEntity);

  return static IntentValueTypeIdentifiable.canConvertFrom(_:)(a1, v1, v3);
}

uint64_t sub_10003B930()
{
  v1 = sub_10003DADC(&qword_100072728, type metadata accessor for SearchEntity);

  return static AppEntityTypeDescribing.lnValueType.getter(v0, v1);
}

uint64_t sub_10003B9B4(uint64_t a1)
{
  v3 = sub_10003DADC(&qword_100072738, type metadata accessor for SearchEntity);

  return static IntentValueTypeIdentifiable.canConvert(_:)(a1, v1, v3);
}

uint64_t sub_10003BA24@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10004FE48();
  *a1 = result;
  return result;
}

uint64_t sub_10003BAC4@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10003E7A4(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

uint64_t sub_10003BAF4@<X0>(uint64_t *a1@<X8>)
{
  v2 = 0xE900000000000074;
  v3 = *v1;
  v4 = 0xE900000000000079;
  v5 = 0x7469746E45707061;
  v6 = 0xE500000000000000;
  v7 = 0x616964656DLL;
  if (v3 != 6)
  {
    v7 = 0x6E65657263536E6FLL;
    v6 = 0xE800000000000000;
  }

  v8 = 0xE500000000000000;
  v9 = 0x746E657665;
  result = 0x647261436469;
  if (v3 != 4)
  {
    v9 = 0x647261436469;
    v8 = 0xE600000000000000;
  }

  if (*v1 <= 5u)
  {
    v7 = v9;
    v6 = v8;
  }

  v11 = 0x6C61626F6C67;
  if (v3 == 2)
  {
    v2 = 0xE600000000000000;
  }

  else
  {
    v11 = 0x6867696C746F7073;
  }

  if (*v1)
  {
    v5 = 0x726577736E61;
    v4 = 0xE600000000000000;
  }

  if (*v1 > 1u)
  {
    v5 = v11;
    v4 = v2;
  }

  if (*v1 <= 3u)
  {
    v12 = v5;
  }

  else
  {
    v12 = v7;
  }

  if (*v1 <= 3u)
  {
    v13 = v4;
  }

  else
  {
    v13 = v6;
  }

  *a1 = v12;
  a1[1] = v13;
  return result;
}

uint64_t sub_10003BC0C(uint64_t a1)
{
  v2 = sub_10003E7F0();

  return static AppEnumRepresentation.lnValueType.getter(a1, v2);
}

uint64_t sub_10003BC48(uint64_t a1)
{
  v2 = sub_10003E7F0();

  return AppEnumRepresentation.lnValue.getter(a1, v2);
}

uint64_t sub_10003BC84(uint64_t a1, uint64_t a2)
{
  v4 = sub_10003D770();

  return static IntentValueTypeIdentifiable.canConvert(_:)(a1, a2, v4);
}

uint64_t sub_10003BCD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10003E7F0();

  return static AppEnumRepresentation.from(_:context:)(a1, a2, a3, v6);
}

uint64_t sub_10003BD38(uint64_t a1, uint64_t a2)
{
  v4 = sub_10003D770();

  return static IntentValueTypeIdentifiable.canConvertFrom(_:)(a1, a2, v4);
}

uint64_t sub_10003BD84()
{
  v1 = v0;
  sub_100050848(59);
  v17._object = 0x80000001000535C0;
  v17._countAndFlagsBits = 0xD000000000000014;
  sub_100050578(v17);
  v2 = *(v0 + qword_100072478);

  sub_10004FF48();

  if (v16)
  {
    v3._countAndFlagsBits = v15;
  }

  else
  {
    v3._countAndFlagsBits = 7104878;
  }

  if (v16)
  {
    v4 = v16;
  }

  else
  {
    v4 = 0xE300000000000000;
  }

  v3._object = v4;
  sub_100050578(v3);

  v18._countAndFlagsBits = 0x49656C646E756220;
  v18._object = 0xEA00000000003D64;
  sub_100050578(v18);
  v5 = *(v1 + qword_100072480);

  sub_10004FF48();

  if (v16)
  {
    v6._countAndFlagsBits = v15;
  }

  else
  {
    v6._countAndFlagsBits = 7104878;
  }

  if (v16)
  {
    v7 = v16;
  }

  else
  {
    v7 = 0xE300000000000000;
  }

  v6._object = v7;
  sub_100050578(v6);

  v19._countAndFlagsBits = 0x3D64496570797420;
  v19._object = 0xE800000000000000;
  sub_100050578(v19);
  v8 = *(v1 + qword_100072488);

  sub_10004FF48();

  if (v16)
  {
    v9._countAndFlagsBits = v15;
  }

  else
  {
    v9._countAndFlagsBits = 7104878;
  }

  if (v16)
  {
    v10 = v16;
  }

  else
  {
    v10 = 0xE300000000000000;
  }

  v9._object = v10;
  sub_100050578(v9);

  v20._countAndFlagsBits = 0x6F636F746F727020;
  v20._object = 0xEC0000003D64496CLL;
  sub_100050578(v20);
  v11 = *(v1 + qword_100072490);

  sub_10004FF48();

  if (v16)
  {
    v12._countAndFlagsBits = v15;
  }

  else
  {
    v12._countAndFlagsBits = 7104878;
  }

  if (v16)
  {
    v13 = v16;
  }

  else
  {
    v13 = 0xE300000000000000;
  }

  v12._object = v13;
  sub_100050578(v12);

  v21._countAndFlagsBits = 62;
  v21._object = 0xE100000000000000;
  sub_100050578(v21);
  return 0;
}

uint64_t sub_10003BFB0(uint64_t a1)
{
  v3 = sub_10004FE28();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = qword_100072478;
  v9 = sub_100002814(&qword_1000727A8, &qword_10005A1D0);
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  swift_allocObject();
  *(v1 + v8) = sub_10004FF38();
  v12 = qword_100072480;
  v13 = *(v9 + 48);
  v14 = *(v9 + 52);
  swift_allocObject();
  *(v1 + v12) = sub_10004FF38();
  v15 = qword_100072488;
  v16 = *(v9 + 48);
  v17 = *(v9 + 52);
  swift_allocObject();
  *(v1 + v15) = sub_10004FF38();
  v18 = qword_100072490;
  v19 = *(v9 + 48);
  v20 = *(v9 + 52);
  swift_allocObject();
  *(v1 + v18) = sub_10004FF38();
  (*(v4 + 16))(v7, a1, v3);
  v21 = sub_10004FE88();
  (*(v4 + 8))(a1, v3);
  return v21;
}

uint64_t sub_10003C28C(uint64_t a1)
{
  v3 = sub_10003DADC(&qword_1000726F0, type metadata accessor for SearchAppEntity);

  return static IntentValueTypeIdentifiable.canConvertFrom(_:)(a1, v1, v3);
}

uint64_t sub_10003C2FC()
{
  v1 = sub_10003DADC(&qword_1000726E0, type metadata accessor for SearchAppEntity);

  return static AppEntityTypeDescribing.lnValueType.getter(v0, v1);
}

uint64_t sub_10003C35C(uint64_t a1)
{
  v3 = sub_10003DADC(&qword_1000726F0, type metadata accessor for SearchAppEntity);

  return static IntentValueTypeIdentifiable.canConvert(_:)(a1, v1, v3);
}

uint64_t sub_10003C3CC()
{
  v1 = v0;
  v2 = sub_100002814(&qword_100072788, &qword_10005A1C0);
  v3 = *(*(v2 - 8) + 64);
  v4 = __chkstk_darwin(v2 - 8);
  v39 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v4);
  v8 = &v39 - v7;
  v9 = __chkstk_darwin(v6);
  v40 = &v39 - v10;
  __chkstk_darwin(v9);
  v12 = &v39 - v11;
  v43 = 0;
  v44 = 0xE000000000000000;
  sub_100050848(93);
  v45._countAndFlagsBits = 0xD000000000000026;
  v45._object = 0x80000001000535E0;
  sub_100050578(v45);
  v13 = *(v0 + qword_1000724E8);

  sub_10004FF48();

  if (v42)
  {
    v14._countAndFlagsBits = v41;
  }

  else
  {
    v14._countAndFlagsBits = 7104878;
  }

  v15 = 0xE300000000000000;
  if (v42)
  {
    v16 = v42;
  }

  else
  {
    v16 = 0xE300000000000000;
  }

  v14._object = v16;
  sub_100050578(v14);

  v46._countAndFlagsBits = 0x3D656C74697420;
  v46._object = 0xE700000000000000;
  sub_100050578(v46);
  v17 = *(v1 + qword_1000724F0);

  sub_10004FF48();

  if (v42)
  {
    v18._countAndFlagsBits = v41;
  }

  else
  {
    v18._countAndFlagsBits = 7104878;
  }

  if (v42)
  {
    v19 = v42;
  }

  else
  {
    v19 = 0xE300000000000000;
  }

  v18._object = v19;
  sub_100050578(v18);

  v47._object = 0x8000000100053610;
  v47._countAndFlagsBits = 0xD000000000000010;
  sub_100050578(v47);
  v20 = qword_1000724F8;
  v21 = *(v1 + qword_1000724F8);

  sub_10004FF48();

  v22 = sub_10004FF58();
  v23 = *(v22 - 8);
  v24 = *(v23 + 48);
  LODWORD(v21) = v24(v12, 1, v22);
  sub_10003E73C(v12);
  v25._countAndFlagsBits = 7104878;
  if (v21 != 1)
  {
    v26 = *(v1 + v20);

    v27 = v40;
    sub_10004FF48();

    result = v24(v27, 1, v22);
    if (result == 1)
    {
      __break(1u);
      goto LABEL_22;
    }

    sub_10003DADC(&qword_100072790, &type metadata accessor for IntentFileRepresentation);
    v29 = sub_100050998();
    v15 = v30;
    (*(v23 + 8))(v27, v22);
    v25._countAndFlagsBits = v29;
  }

  v25._object = v15;
  sub_100050578(v25);

  v48._countAndFlagsBits = 0xD000000000000017;
  v48._object = 0x8000000100053630;
  sub_100050578(v48);
  v31 = qword_100072500;
  v32 = *(v1 + qword_100072500);

  sub_10004FF48();

  LODWORD(v32) = v24(v8, 1, v22);
  sub_10003E73C(v8);
  if (v32 == 1)
  {
    v33 = 0xE300000000000000;
    v34._countAndFlagsBits = 7104878;
LABEL_20:
    v34._object = v33;
    sub_100050578(v34);

    v49._countAndFlagsBits = 62;
    v49._object = 0xE100000000000000;
    sub_100050578(v49);
    return v43;
  }

  v35 = *(v1 + v31);

  v36 = v39;
  sub_10004FF48();

  result = v24(v36, 1, v22);
  if (result != 1)
  {
    sub_10003DADC(&qword_100072790, &type metadata accessor for IntentFileRepresentation);
    v37 = sub_100050998();
    v33 = v38;
    (*(v23 + 8))(v36, v22);
    v34._countAndFlagsBits = v37;
    goto LABEL_20;
  }

LABEL_22:
  __break(1u);
  return result;
}

uint64_t sub_10003C898(uint64_t a1)
{
  v3 = sub_10004FE28();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = qword_1000724E8;
  v9 = sub_100002814(&qword_1000727A8, &qword_10005A1D0);
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  swift_allocObject();
  *(v1 + v8) = sub_10004FF38();
  v12 = qword_1000724F0;
  v13 = *(v9 + 48);
  v14 = *(v9 + 52);
  swift_allocObject();
  *(v1 + v12) = sub_10004FF38();
  v15 = qword_1000724F8;
  v16 = sub_100002814(&qword_1000727C0, &qword_10005A1E8);
  v17 = *(v16 + 48);
  v18 = *(v16 + 52);
  swift_allocObject();
  *(v1 + v15) = sub_10004FF38();
  v19 = qword_100072500;
  v20 = *(v16 + 48);
  v21 = *(v16 + 52);
  swift_allocObject();
  *(v1 + v19) = sub_10004FF38();
  (*(v4 + 16))(v7, a1, v3);
  v22 = sub_10004FE88();
  (*(v4 + 8))(a1, v3);
  return v22;
}

uint64_t sub_10003CA98(void *a1, void *a2, void *a3, void *a4)
{
  v8 = *(v4 + *a1);

  v9 = *(v4 + *a2);

  v10 = *(v4 + *a3);

  v11 = *(v4 + *a4);
}

uint64_t sub_10003CB28(void *a1, void *a2, void *a3, void *a4)
{
  v8 = sub_10004FE78();
  v9 = *(v8 + *a1);

  v10 = *(v8 + *a2);

  v11 = *(v8 + *a3);

  v12 = *(v8 + *a4);

  return swift_deallocClassInstance();
}

uint64_t sub_10003CC94(uint64_t a1)
{
  v3 = sub_10003DADC(&qword_1000726A8, type metadata accessor for SearchSpotlightEntity);

  return static IntentValueTypeIdentifiable.canConvertFrom(_:)(a1, v1, v3);
}

uint64_t sub_10003CD04()
{
  v1 = sub_10003DADC(&qword_100072698, type metadata accessor for SearchSpotlightEntity);

  return static AppEntityTypeDescribing.lnValueType.getter(v0, v1);
}

uint64_t sub_10003CD64(uint64_t a1)
{
  v3 = sub_10003DADC(&qword_1000726A8, type metadata accessor for SearchSpotlightEntity);

  return static IntentValueTypeIdentifiable.canConvert(_:)(a1, v1, v3);
}

uint64_t sub_10003CDD4()
{
  v1 = v0;
  sub_100050848(79);
  v21._countAndFlagsBits = 0xD00000000000001BLL;
  v21._object = 0x8000000100053650;
  sub_100050578(v21);
  v2 = *(v0 + qword_100072558);

  sub_10004FF48();

  if (v20)
  {
    v3._countAndFlagsBits = v19;
  }

  else
  {
    v3._countAndFlagsBits = 7104878;
  }

  if (v20)
  {
    v4 = v20;
  }

  else
  {
    v4 = 0xE300000000000000;
  }

  v3._object = v4;
  sub_100050578(v3);

  v22._countAndFlagsBits = 0x3D676F6C61696420;
  v22._object = 0xE800000000000000;
  sub_100050578(v22);
  v5 = *(v1 + qword_100072560);

  sub_10004FF48();

  if (v20)
  {
    v6._countAndFlagsBits = v19;
  }

  else
  {
    v6._countAndFlagsBits = 7104878;
  }

  if (v20)
  {
    v7 = v20;
  }

  else
  {
    v7 = 0xE300000000000000;
  }

  v6._object = v7;
  sub_100050578(v6);

  v23._countAndFlagsBits = 0x73656372756F7320;
  v23._object = 0xE90000000000003DLL;
  sub_100050578(v23);
  v8 = *(v1 + qword_100072568);

  sub_10004FF48();

  sub_100002814(&qword_100072798, &qword_10005A1C8);
  v24._countAndFlagsBits = sub_100050548();
  sub_100050578(v24);

  v25._object = 0x8000000100053670;
  v25._countAndFlagsBits = 0xD000000000000011;
  sub_100050578(v25);
  v9 = qword_100072570;
  v10 = *(v1 + qword_100072570);

  sub_10004FF48();

  if (v19)
  {

    v11 = *(v1 + v9);

    sub_10004FF48();

    v12 = sub_1000505F8();
    v14 = v13;
  }

  else
  {
    v12 = 7104878;
    v14 = 0xE300000000000000;
  }

  v26._countAndFlagsBits = v12;
  v26._object = v14;
  sub_100050578(v26);

  v27._countAndFlagsBits = 0x3D656C74697420;
  v27._object = 0xE700000000000000;
  sub_100050578(v27);
  v15 = *(v1 + qword_100072578);

  sub_10004FF48();

  if (v20)
  {
    v16._countAndFlagsBits = v19;
  }

  else
  {
    v16._countAndFlagsBits = 7104878;
  }

  if (v20)
  {
    v17 = v20;
  }

  else
  {
    v17 = 0xE300000000000000;
  }

  v16._object = v17;
  sub_100050578(v16);

  v28._countAndFlagsBits = 62;
  v28._object = 0xE100000000000000;
  sub_100050578(v28);
  return 0;
}

uint64_t sub_10003D0D8(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  swift_allocObject();
  return a2(a1);
}

uint64_t sub_10003D124(uint64_t a1)
{
  v3 = sub_10004FE28();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = qword_100072558;
  v9 = sub_100002814(&qword_1000727A8, &qword_10005A1D0);
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  swift_allocObject();
  *(v1 + v8) = sub_10004FF38();
  v12 = qword_100072560;
  v13 = *(v9 + 48);
  v14 = *(v9 + 52);
  swift_allocObject();
  *(v1 + v12) = sub_10004FF38();
  v15 = qword_100072568;
  v16 = sub_100002814(&qword_1000727B0, &qword_10005A1D8);
  v17 = *(v16 + 48);
  v18 = *(v16 + 52);
  swift_allocObject();
  *(v1 + v15) = sub_10004FF38();
  v19 = qword_100072570;
  v20 = sub_100002814(&qword_1000727B8, &qword_10005A1E0);
  v21 = *(v20 + 48);
  v22 = *(v20 + 52);
  swift_allocObject();
  *(v1 + v19) = sub_10004FF38();
  v23 = qword_100072578;
  v24 = *(v9 + 48);
  v25 = *(v9 + 52);
  swift_allocObject();
  *(v1 + v23) = sub_10004FF38();
  (*(v4 + 16))(v7, a1, v3);
  v26 = sub_10004FE88();
  (*(v4 + 8))(a1, v3);
  return v26;
}

uint64_t sub_10003D338()
{
  v1 = *(v0 + qword_100072558);

  v2 = *(v0 + qword_100072560);

  v3 = *(v0 + qword_100072568);

  v4 = *(v0 + qword_100072570);

  v5 = *(v0 + qword_100072578);
}

uint64_t sub_10003D3A8()
{
  v0 = sub_10004FE78();
  v1 = *(v0 + qword_100072558);

  v2 = *(v0 + qword_100072560);

  v3 = *(v0 + qword_100072568);

  v4 = *(v0 + qword_100072570);

  v5 = *(v0 + qword_100072578);

  return swift_deallocClassInstance();
}

uint64_t getEnumTagSinglePayload for SearchResultType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SearchResultType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_10003D5A8()
{
  result = qword_1000725D0;
  if (!qword_1000725D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000725D0);
  }

  return result;
}

unint64_t sub_10003D600()
{
  result = qword_1000725D8;
  if (!qword_1000725D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000725D8);
  }

  return result;
}

unint64_t sub_10003D658()
{
  result = qword_1000725E0;
  if (!qword_1000725E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000725E0);
  }

  return result;
}

unint64_t sub_10003D6B0()
{
  result = qword_1000725E8;
  if (!qword_1000725E8)
  {
    sub_1000028C0(&qword_1000725F0, &qword_1000595B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000725E8);
  }

  return result;
}

unint64_t sub_10003D718()
{
  result = qword_1000725F8;
  if (!qword_1000725F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000725F8);
  }

  return result;
}

unint64_t sub_10003D770()
{
  result = qword_100072600;
  if (!qword_100072600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100072600);
  }

  return result;
}

unint64_t sub_10003D7C8()
{
  result = qword_100072608;
  if (!qword_100072608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100072608);
  }

  return result;
}

unint64_t sub_10003D820()
{
  result = qword_100072610;
  if (!qword_100072610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100072610);
  }

  return result;
}

unint64_t sub_10003D878()
{
  result = qword_100072618;
  if (!qword_100072618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100072618);
  }

  return result;
}

uint64_t sub_10003D90C(uint64_t a1)
{
  v3 = sub_10003DADC(&qword_100072660, type metadata accessor for SearchAnswerEntity);

  return static IntentValueTypeIdentifiable.canConvertFrom(_:)(a1, v1, v3);
}

uint64_t sub_10003D97C()
{
  v1 = sub_10003DADC(&qword_100072650, type metadata accessor for SearchAnswerEntity);

  return static AppEntityTypeDescribing.lnValueType.getter(v0, v1);
}

uint64_t sub_10003D9DC(uint64_t a1)
{
  v3 = sub_10003DADC(&qword_100072660, type metadata accessor for SearchAnswerEntity);

  return static IntentValueTypeIdentifiable.canConvert(_:)(a1, v1, v3);
}

uint64_t sub_10003DADC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10003E73C(uint64_t a1)
{
  v2 = sub_100002814(&qword_100072788, &qword_10005A1C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10003E7A4(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_10006A2F0;
  v6._object = a2;
  v4 = sub_100050938(v3, v6);

  if (v4 >= 8)
  {
    return 8;
  }

  else
  {
    return v4;
  }
}

unint64_t sub_10003E7F0()
{
  result = qword_1000727A0;
  if (!qword_1000727A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000727A0);
  }

  return result;
}

uint64_t sub_10003E8CC()
{
  v0 = sub_100050188();
  sub_100007390(v0, qword_10007B528);
  sub_1000071F4(v0, qword_10007B528);
  return sub_100050178();
}

uint64_t sub_10003E96C()
{
  v0 = sub_100050188();
  sub_100007390(v0, qword_10007B558);
  sub_1000071F4(v0, qword_10007B558);
  return sub_100050178();
}

uint64_t sub_10003EA14(uint64_t a1, uint64_t *a2)
{
  v3 = sub_100050188();
  sub_100007390(v3, a2);
  sub_1000071F4(v3, a2);
  return sub_100050178();
}

unint64_t sub_10003EA90()
{
  result = qword_1000727F0;
  if (!qword_1000727F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000727F0);
  }

  return result;
}

unint64_t sub_10003EAE8()
{
  result = qword_1000727F8;
  if (!qword_1000727F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000727F8);
  }

  return result;
}

unint64_t sub_10003EB40()
{
  result = qword_100072800;
  if (!qword_100072800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100072800);
  }

  return result;
}

uint64_t sub_10003EBE4()
{
  v0 = sub_10004F9A8();
  sub_100007390(v0, qword_10007B588);
  sub_1000071F4(v0, qword_10007B588);
  return sub_10004F978();
}

uint64_t sub_10003EC54@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_100002814(&qword_10006F0C0, &qword_100056370);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v20 - v4;
  v6 = sub_100002814(&qword_10006F090, &qword_100058950);
  v7 = *(*(v6 - 8) + 64);
  v8 = __chkstk_darwin(v6 - 8);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v20 - v11;
  v13 = sub_10004F9A8();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  sub_10004F978();
  v16 = *(v14 + 56);
  v16(v12, 1, 1, v13);
  sub_10004F978();
  v16(v10, 0, 1, v13);
  sub_10004F708();
  v17 = sub_10004F718();
  (*(*(v17 - 8) + 56))(v5, 0, 1, v17);
  sub_10004F6E8();
  v18 = sub_10004F6D8();
  return (*(*(v18 - 8) + 56))(a1, 0, 1, v18);
}

uint64_t sub_10003EEFC@<X0>(uint64_t a1@<X8>)
{
  v36 = a1;
  v1 = sub_100002814(&qword_1000728B0, &qword_10005A6B0);
  v2 = *(v1 - 8);
  v34 = v1;
  v35 = v2;
  v3 = *(v2 + 64);
  v4 = __chkstk_darwin(v1);
  v32 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v33 = v27 - v6;
  v7 = sub_100002814(&qword_1000728B8, &qword_10005A6B8);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v30 = v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v14 = v27 - v13;
  __chkstk_darwin(v12);
  v31 = v27 - v15;
  v40 = 0;
  v37 = sub_100002814(&qword_1000728C0, &qword_10005A6C0);
  v27[3] = sub_10003EA90();
  v16 = sub_100041500();
  v27[2] = sub_1000071AC(&qword_1000728C8, &qword_1000728C0, &qword_10005A6C0);
  sub_10004F828();
  v27[1] = sub_1000071AC(&qword_1000728D0, &qword_1000728B8, &qword_10005A6B8);
  sub_10004F818();
  v38 = *(v8 + 8);
  v28 = v14;
  v38(v14, v7);
  v29 = v8 + 8;
  v39 = 1;
  v17 = v30;
  v27[0] = v16;
  sub_10004F828();
  sub_10004F818();
  v38(v17, v7);
  v18 = v32;
  sub_10004F848();
  sub_1000071AC(&qword_1000728D8, &qword_1000728B0, &qword_10005A6B0);
  v19 = v33;
  v20 = v18;
  v21 = v34;
  sub_10004F818();
  v22 = *(v35 + 8);
  v22(v20, v21);
  v23 = v31;
  v24 = v28;
  sub_10004F808();
  v22(v19, v21);
  v25 = v38;
  v38(v24, v7);
  return v25(v23, v7);
}

uint64_t sub_10003F3E0@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v18[0] = a2;
  v18[1] = a3;
  v4 = sub_100002814(&qword_1000728E0, &qword_10005A6C8);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v6 = sub_100002814(&qword_1000728E8, &qword_10005A6D0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v8 = sub_100002814(&qword_1000728C0, &qword_10005A6C0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v13 = v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = v18 - v14;
  sub_10003EA90();
  sub_10004F778();
  v19._countAndFlagsBits = 0;
  v19._object = 0xE000000000000000;
  sub_10004F768(v19);
  swift_getKeyPath();
  sub_100002814(&qword_1000728F0, &qword_10005A6D8);
  sub_10004F758();

  v20._countAndFlagsBits = a1;
  v20._object = v18[0];
  sub_10004F768(v20);
  swift_getKeyPath();
  sub_100002814(&qword_1000728F8, &qword_10005A708);
  sub_10004F758();

  v21._countAndFlagsBits = 0;
  v21._object = 0xE000000000000000;
  sub_10004F768(v21);
  sub_10004F788();
  sub_10004F748();
  sub_1000071AC(&qword_1000728C8, &qword_1000728C0, &qword_10005A6C0);
  sub_10004F7B8();
  v16 = *(v9 + 8);
  v16(v13, v8);
  sub_10004F7A8();
  return (v16)(v15, v8);
}

uint64_t sub_10003F718(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[11] = a2;
  v3[12] = a3;
  v3[10] = a1;
  v4 = *(*(sub_10004FB38() - 8) + 64) + 15;
  v3[13] = swift_task_alloc();
  v5 = *(*(sub_1000504D8() - 8) + 64) + 15;
  v3[14] = swift_task_alloc();
  v6 = sub_10004F8A8();
  v3[15] = v6;
  v7 = *(v6 - 8);
  v3[16] = v7;
  v8 = *(v7 + 64) + 15;
  v3[17] = swift_task_alloc();
  v3[18] = swift_task_alloc();
  v3[19] = swift_task_alloc();
  v3[20] = swift_task_alloc();
  v3[21] = sub_100050658();
  v3[22] = sub_100050648();
  v10 = sub_100050628();
  v3[23] = v10;
  v3[24] = v9;

  return _swift_task_switch(sub_10003F890, v10, v9);
}

uint64_t sub_10003F890()
{
  sub_10004F658();
  v1 = sub_10004F648();
  if (v1)
  {
    v3 = *(v0 + 160);
    v2 = *(v0 + 168);
    v5 = *(v0 + 88);
    v4 = *(v0 + 96);
    v6 = v1[1];
    *(v0 + 280) = *v1;
    *(v0 + 296) = v6;
    sub_10004F698();
    *(v0 + 345) = *(v0 + 344);
    *(v0 + 48) = v5;
    *(v0 + 56) = v4;
    sub_100041D78();
    *(v0 + 200) = sub_10004F7C8();
    sub_10004F698();
    v7 = type metadata accessor for WritingToolsIntentManager();
    v8 = *(v7 + 48);
    v9 = *(v7 + 52);
    *(v0 + 208) = swift_allocObject();
    *(v0 + 216) = sub_100050648();
    v11 = sub_100050628();

    return _swift_task_switch(sub_10003FB4C, v11, v10);
  }

  else
  {
    v12 = *(v0 + 176);

    if (qword_10006EA00 != -1)
    {
      swift_once();
    }

    v13 = sub_100050188();
    sub_1000071F4(v13, qword_10007B4F8);
    v14 = sub_100050168();
    v15 = sub_100050728();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v14, v15, "Failed to obtain an app audit token from AppIntents.", v16, 2u);
    }

    sub_10004F5D8();
    sub_10000731C(&qword_10006F0A0, &type metadata accessor for AppIntentError);
    swift_allocError();
    sub_10004F5C8();
    swift_willThrow();
    v18 = *(v0 + 152);
    v17 = *(v0 + 160);
    v20 = *(v0 + 136);
    v19 = *(v0 + 144);
    v22 = *(v0 + 104);
    v21 = *(v0 + 112);

    v23 = *(v0 + 8);

    return v23();
  }
}

uint64_t sub_10003FB4C()
{
  v2 = *(v0 + 208);
  v1 = *(v0 + 216);
  v3 = *(v0 + 200);
  v4 = *(v0 + 345);
  v26 = *(v0 + 160);
  v27 = *(v0 + 152);
  v5 = *(v0 + 128);
  v25 = *(v0 + 120);
  v7 = *(v0 + 104);
  v6 = *(v0 + 112);

  if (v4)
  {
    v8 = 7;
  }

  else
  {
    v8 = 6;
  }

  sub_100050468();
  sub_10004FB08();
  v9 = sub_100050528();
  *(v0 + 224) = v10;
  *(v2 + 3) = v9;
  *(v2 + 4) = v10;
  *(v2 + 6) = 100;
  v11 = type metadata accessor for WritingToolsModel();
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();
  v14 = sub_100009ACC(1, 0);
  *(v0 + 232) = v14;
  *(v2 + 2) = v14;
  sub_100008F38(v8, 0, 0, 0);
  swift_getKeyPath();
  *(v0 + 64) = v14;
  sub_10000731C(&unk_10006F5D0, type metadata accessor for WritingToolsModel);
  sub_10004FB58();

  v15 = *(v14 + 24);
  v16 = objc_allocWithZone(BSAuditToken);

  v17 = *(v0 + 296);
  *(v0 + 312) = *(v0 + 280);
  *(v0 + 328) = v17;
  sub_100011960([v16 initWithAuditToken:v0 + 312]);

  *(v2 + 5) = v3;
  [v3 setTotalUnitCount:100];
  v18 = *(v5 + 16);
  v18(&v2[OBJC_IVAR____TtC31WritingToolsAppIntentsExtension25WritingToolsIntentManager_text], v26, v25);
  sub_100007288();
  v18(v27, v26, v25);
  v19 = sub_100050798();
  v20 = [objc_allocWithZone(WTContext) initWithAttributedText:v19 range:{0, objc_msgSend(v19, "length")}];
  *(v0 + 240) = v20;

  v21 = *(v5 + 8);
  *(v0 + 248) = v21;
  *(v0 + 256) = (v5 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v21(v26, v25);
  *&v2[OBJC_IVAR____TtC31WritingToolsAppIntentsExtension25WritingToolsIntentManager_context] = v20;
  v22 = *(v0 + 184);
  v23 = *(v0 + 192);

  return _swift_task_switch(sub_10003FE40, v22, v23);
}

uint64_t sub_10003FE40()
{
  v1 = v0[18];
  sub_10004F898();
  v2 = swift_task_alloc();
  v0[33] = v2;
  *v2 = v0;
  v2[1] = sub_10003FEE0;
  v3 = v0[26];
  v4 = v0[17];

  return sub_100025888(v4);
}

uint64_t sub_10003FEE0()
{
  v2 = *v1;
  v3 = *(*v1 + 264);
  v4 = *v1;
  *(*v1 + 272) = v0;

  v5 = *(v2 + 192);
  v6 = *(v2 + 184);
  if (v0)
  {
    v7 = sub_1000401F4;
  }

  else
  {
    v7 = sub_10004001C;
  }

  return _swift_task_switch(v7, v6, v5);
}

uint64_t sub_10004001C()
{
  v2 = v0[31];
  v1 = v0[32];
  v3 = v0[22];
  v4 = v0[17];
  v5 = v0[18];
  v6 = v0[15];
  v7 = v0[16];

  v2(v5, v6);
  (*(v7 + 32))(v5, v4, v6);
  v9 = v0[31];
  v8 = v0[32];
  v10 = v0[29];
  v11 = v0[28];
  v12 = v0[25];
  v13 = v0[26];
  v21 = v0[30];
  v22 = v0[20];
  v14 = v0[18];
  v23 = v0[19];
  v24 = v0[17];
  v15 = v0[15];
  v25 = v0[14];
  v26 = v0[13];
  v16 = v0[10];
  sub_10000731C(&qword_10006F0B8, &type metadata accessor for AttributedString);
  sub_10004F688();

  swift_setDeallocating();
  v9(v13 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension25WritingToolsIntentManager_text, v15);

  v17 = *(*v13 + 48);
  v18 = *(*v13 + 52);
  swift_deallocClassInstance();
  v9(v14, v15);

  v19 = v0[1];

  return v19();
}

uint64_t sub_1000401F4()
{
  v1 = v0[34];
  v2 = v0[22];

  v0[9] = v1;
  swift_errorRetain();
  sub_100002814(&qword_10006F0B0, &qword_100057A80);
  if (swift_dynamicCast())
  {
    v3 = v0[3];
    if (v3 == 1)
    {
      v4 = v0[34];

      v5 = v0[9];

      v7 = v0[31];
      v6 = v0[32];
      v8 = v0[29];
      v9 = v0[28];
      v10 = v0[25];
      v11 = v0[26];
      v40 = v0[30];
      v41 = v0[20];
      v12 = v0[18];
      v42 = v0[19];
      v43 = v0[17];
      v13 = v0[15];
      v44 = v0[14];
      v45 = v0[13];
      v14 = v0[10];
      sub_10000731C(&qword_10006F0B8, &type metadata accessor for AttributedString);
      sub_10004F688();

      swift_setDeallocating();
      v7(v11 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension25WritingToolsIntentManager_text, v13);

      v15 = *(*v11 + 48);
      v16 = *(*v11 + 52);
      swift_deallocClassInstance();
      v7(v12, v13);

      v17 = v0[1];
      goto LABEL_6;
    }

    v18 = v0[4];
    v19 = v0[5];
    sub_1000072D4(v0[2], v3);
  }

  v20 = v0[34];
  v22 = v0[31];
  v21 = v0[32];
  v23 = v0[29];
  v24 = v0[30];
  v25 = v0[28];
  v27 = v0[25];
  v26 = v0[26];
  v46 = v0[18];
  v28 = v0[15];
  v29 = v0[9];

  swift_willThrow();

  swift_setDeallocating();
  v22(v26 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension25WritingToolsIntentManager_text, v28);

  v30 = *(*v26 + 48);
  v31 = *(*v26 + 52);
  swift_deallocClassInstance();
  v22(v46, v28);
  v32 = v0[34];
  v34 = v0[19];
  v33 = v0[20];
  v36 = v0[17];
  v35 = v0[18];
  v38 = v0[13];
  v37 = v0[14];

  v17 = v0[1];
LABEL_6:

  return v17();
}

uint64_t sub_1000404F4@<X0>(uint64_t a1@<X8>)
{
  if (qword_10006EA30 != -1)
  {
    swift_once();
  }

  v2 = sub_10004F9A8();
  v3 = sub_1000071F4(v2, qword_10007B588);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_10004059C(uint64_t a1, uint64_t a2)
{
  KeyPath = swift_getKeyPath();
  v4 = sub_100002814(&qword_1000728A0, &qword_10005A6A8);
  v5 = sub_1000071AC(&qword_1000728A8, &qword_1000728A0, &qword_10005A6A8);

  return ParameterSummarySwitchCondition.init(_:_:)(KeyPath, sub_10003EEFC, 0, v4, a2, v5);
}

uint64_t sub_100040668(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100006CB4;

  return sub_10003F718(a1, v5, v4);
}

uint64_t sub_100040714@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10004190C();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_10004073C(uint64_t a1)
{
  v2 = sub_10003EA90();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

uint64_t sub_100040778@<X0>(uint64_t a1@<X8>)
{
  v33 = a1;
  v31 = sub_100050458();
  v1 = *(v31 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v31);
  v28 = v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1000504B8();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v6 = sub_100002814(&qword_10006F090, &qword_100058950);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v32 = v26 - v8;
  v9 = sub_10004F988();
  v27 = v9;
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10004FB38();
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v16 = sub_1000504D8();
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v18 = sub_10004F9A8();
  v29 = *(v18 - 8);
  v30 = v18;
  v19 = *(v29 + 64);
  __chkstk_darwin(v18);
  sub_100050468();
  sub_10004FB08();
  v20 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v21 = *(v10 + 104);
  v26[1] = v10 + 104;
  v21(v13, enum case for LocalizedStringResource.BundleDescription.main(_:), v9);
  sub_10004F9B8();
  sub_1000504A8();
  v34._countAndFlagsBits = 0;
  v34._object = 0xE000000000000000;
  sub_100050498(v34);
  v22 = v28;
  v23 = v31;
  (*(v1 + 104))(v28, enum case for String.LocalizationValue.Placeholder.int(_:), v31);
  sub_100050478();
  (*(v1 + 8))(v22, v23);
  v35._object = 0xEA00000000007365;
  v35._countAndFlagsBits = 0x6972616D6D757320;
  sub_100050498(v35);
  sub_1000504C8();
  sub_10004FB08();
  v21(v13, v20, v27);
  v24 = v32;
  sub_10004F9B8();
  (*(v29 + 56))(v24, 0, 1, v30);
  return sub_10004F7F8();
}

uint64_t sub_100040C10()
{
  v0 = sub_100002814(&qword_10006F0C0, &qword_100056370);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = v22 - v2;
  v4 = sub_100002814(&qword_10006F090, &qword_100058950);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = v22 - v6;
  v8 = sub_10004F9A8();
  v23 = v8;
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  sub_100002814(&qword_100072888, &qword_10005A638);
  v11 = sub_100002814(&qword_10006ED68, &qword_1000559B0);
  v12 = *(v11 - 8);
  v25 = *(v12 + 72);
  v13 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_100056D10;
  v22[1] = *(v11 + 48);
  *(v14 + v13) = 0;
  sub_10004F978();
  v15 = *(v9 + 56);
  v22[2] = v9 + 56;
  v24 = v15;
  v16 = v7;
  v15(v7, 1, 1, v8);
  sub_10004F6F8();
  v17 = sub_10004F718();
  v18 = *(*(v17 - 8) + 56);
  v18(v3, 0, 1, v17);
  sub_10004F728();
  v19 = (v14 + v13 + v25);
  v25 = *(v11 + 48);
  *v19 = 1;
  sub_10004F978();
  v24(v16, 1, 1, v23);
  sub_10004F6F8();
  v18(v3, 0, 1, v17);
  sub_10004F728();
  v20 = sub_100004C84(v14);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_10007B5A0 = v20;
  return result;
}

uint64_t sub_100040FE4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x654B657461657263;
  }

  else
  {
    v4 = 0x7A6972616D6D7573;
  }

  if (v3)
  {
    v5 = 0xE900000000000065;
  }

  else
  {
    v5 = 0xEF73746E696F5079;
  }

  if (*a2)
  {
    v6 = 0x654B657461657263;
  }

  else
  {
    v6 = 0x7A6972616D6D7573;
  }

  if (*a2)
  {
    v7 = 0xEF73746E696F5079;
  }

  else
  {
    v7 = 0xE900000000000065;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1000509B8();
  }

  return v9 & 1;
}

unint64_t sub_1000410A0()
{
  result = qword_100072808;
  if (!qword_100072808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100072808);
  }

  return result;
}

Swift::Int sub_1000410F4()
{
  v1 = *v0;
  sub_100050A78();
  sub_100050568();

  return sub_100050AA8();
}

uint64_t sub_100041188()
{
  *v0;
  sub_100050568();
}

Swift::Int sub_100041208()
{
  v1 = *v0;
  sub_100050A78();
  sub_100050568();

  return sub_100050AA8();
}

uint64_t sub_100041298@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v8._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_10006A420;
  v8._object = v3;
  v5 = sub_100050938(v4, v8);

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_1000412F8(uint64_t *a1@<X8>)
{
  v2 = 0x7A6972616D6D7573;
  if (*v1)
  {
    v2 = 0x654B657461657263;
  }

  v3 = 0xE900000000000065;
  if (*v1)
  {
    v3 = 0xEF73746E696F5079;
  }

  *a1 = v2;
  a1[1] = v3;
}

unint64_t sub_10004134C()
{
  result = qword_100072810;
  if (!qword_100072810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100072810);
  }

  return result;
}

unint64_t sub_1000413A4()
{
  result = qword_100072818;
  if (!qword_100072818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100072818);
  }

  return result;
}

unint64_t sub_1000413FC()
{
  result = qword_100072820;
  if (!qword_100072820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100072820);
  }

  return result;
}

unint64_t sub_100041454()
{
  result = qword_100072828;
  if (!qword_100072828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100072828);
  }

  return result;
}

unint64_t sub_1000414AC()
{
  result = qword_100072830;
  if (!qword_100072830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100072830);
  }

  return result;
}

unint64_t sub_100041500()
{
  result = qword_100072838;
  if (!qword_100072838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100072838);
  }

  return result;
}

unint64_t sub_100041558()
{
  result = qword_100072840;
  if (!qword_100072840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100072840);
  }

  return result;
}

unint64_t sub_100041600()
{
  result = qword_100072848;
  if (!qword_100072848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100072848);
  }

  return result;
}

uint64_t sub_100041658(uint64_t a1)
{
  v2 = sub_100041600();

  return static AppEnum.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_1000416A8()
{
  result = qword_100072850;
  if (!qword_100072850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100072850);
  }

  return result;
}

unint64_t sub_100041700()
{
  result = qword_100072858;
  if (!qword_100072858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100072858);
  }

  return result;
}

unint64_t sub_100041758()
{
  result = qword_100072860;
  if (!qword_100072860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100072860);
  }

  return result;
}

uint64_t sub_1000417AC()
{
  if (qword_10006EA38 != -1)
  {
    swift_once();
  }
}

uint64_t sub_100041808(uint64_t a1)
{
  v2 = sub_100041558();

  return CaseDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

uint64_t sub_10004190C()
{
  v0 = sub_10004F798();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100002814(&qword_10006F080, &unk_100059350);
  v6 = *(*(v5 - 8) + 64);
  v7 = __chkstk_darwin(v5 - 8);
  v36 = v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = v29 - v9;
  v11 = sub_100002814(&qword_10006F088, &unk_100056320);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = v29 - v13;
  v15 = sub_100002814(&qword_10006F090, &qword_100058950);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v18 = v29 - v17;
  v29[0] = v29 - v17;
  v19 = sub_10004F9A8();
  v35 = v19;
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  __chkstk_darwin(v19);
  v33 = sub_100002814(&qword_10006F098, &qword_100056330);
  sub_10004F978();
  v22 = *(v20 + 56);
  v32 = v20 + 56;
  v34 = v22;
  v22(v18, 1, 1, v19);
  v23 = sub_10004F8A8();
  (*(*(v23 - 8) + 56))(v14, 1, 1, v23);
  v24 = sub_10004F678();
  v25 = *(*(v24 - 8) + 56);
  v25(v10, 1, 1, v24);
  v31 = enum case for InputConnectionBehavior.default(_:);
  v26 = *(v1 + 104);
  v29[1] = v1 + 104;
  v30 = v26;
  v26(v4);
  v27 = v29[0];
  v33 = sub_10004F6C8();
  sub_100002814(&qword_100072890, &qword_10005A640);
  sub_10004F978();
  v34(v27, 1, 1, v35);
  v37 = 0;
  v25(v10, 1, 1, v24);
  v25(v36, 1, 1, v24);
  v30(v4, v31, v0);
  sub_100041600();
  sub_10004F6B8();
  return v33;
}

unint64_t sub_100041D78()
{
  result = qword_100072898;
  if (!qword_100072898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100072898);
  }

  return result;
}

uint64_t sub_100041DD4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 8);
  result = sub_10004F6A8();
  *a2 = result;
  return result;
}

uint64_t sub_100041E00@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_10004F6A8();
  *a2 = result;
  return result;
}

uint64_t sub_100041E38()
{
  v1 = v0;
  sub_100050348();
  v2 = *(v0 + 16);

  sub_100050338();

  LOBYTE(v2) = sub_100050328();

  if ((v2 & 1) == 0)
  {
    if (qword_10006EA08 != -1)
    {
      swift_once();
    }

    v3 = sub_100050188();
    sub_1000071F4(v3, qword_10007B510);
    v4 = sub_100050168();
    v5 = sub_100050738();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "failed to terminate GES session", v6, 2u);
    }
  }

  v7 = *(v1 + 16);

  v8 = OBJC_IVAR____TtC31WritingToolsAppIntentsExtension10SlotParser___observationRegistrar;
  v9 = sub_10004FB98();
  (*(*(v9 - 8) + 8))(v1 + v8, v9);
  return v1;
}

uint64_t sub_100041FB4()
{
  sub_100041E38();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SlotParser()
{
  result = qword_100072930;
  if (!qword_100072930)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100042060()
{
  result = sub_10004FB98();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_100042100()
{
  swift_getKeyPath();
  sub_100046B30(&qword_100072C80, type metadata accessor for AttachmentManager);
  sub_10004FB58();

  swift_beginAccess();
  v1 = *(v0 + 16);
}

Swift::Int sub_1000421B8()
{
  v1 = v0;
  v2 = sub_100050048();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Attachment.UploadState(0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100050A78();
  sub_100047AF4(v1, v10, type metadata accessor for Attachment.UploadState);
  v11 = sub_100002814(&qword_100072B60, &qword_10005A818);
  if ((*(*(v11 - 8) + 48))(v10, 1, v11) == 1)
  {
    sub_100050A88(0);
  }

  else
  {
    (*(v3 + 32))(v6, v10, v2);
    sub_100050A88(1uLL);
    sub_100046B30(&qword_100072C78, &type metadata accessor for DocumentResourceIdentifier);
    sub_100050438();
    (*(v3 + 8))(v6, v2);
  }

  return sub_100050AA8();
}

void sub_1000423D4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100050048();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*(a2 - 8) + 64);
  __chkstk_darwin(v7);
  v12 = &v14 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100047AF4(v2, v12, type metadata accessor for Attachment.UploadState);
  v13 = sub_100002814(&qword_100072B60, &qword_10005A818);
  if ((*(*(v13 - 8) + 48))(v12, 1, v13) == 1)
  {
    sub_100050A88(0);
  }

  else
  {
    (*(v5 + 32))(v9, v12, v4);
    sub_100050A88(1uLL);
    sub_100046B30(&qword_100072C78, &type metadata accessor for DocumentResourceIdentifier);
    sub_100050438();
    (*(v5 + 8))(v9, v4);
  }
}

Swift::Int sub_1000425C8(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v5 = sub_100050048();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*(a2 - 8) + 64);
  __chkstk_darwin(v8);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100050A78();
  sub_100047AF4(v4, v13, type metadata accessor for Attachment.UploadState);
  v14 = sub_100002814(&qword_100072B60, &qword_10005A818);
  if ((*(*(v14 - 8) + 48))(v13, 1, v14) == 1)
  {
    sub_100050A88(0);
  }

  else
  {
    (*(v6 + 32))(v10, v13, v5);
    sub_100050A88(1uLL);
    sub_100046B30(&qword_100072C78, &type metadata accessor for DocumentResourceIdentifier);
    sub_100050438();
    (*(v6 + 8))(v10, v5);
  }

  return sub_100050AA8();
}

uint64_t sub_1000427E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v54 = a4;
  v55 = a5;
  v52 = a3;
  v56 = sub_10004FA98();
  v9 = *(v56 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v56);
  v48 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100002814(&qword_100072A90, &qword_10005A7D0);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v46 = &v43 - v14;
  v45 = sub_10004F8E8();
  v44 = *(v45 - 8);
  v15 = *(v44 + 64);
  __chkstk_darwin(v45);
  v17 = &v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for Attachment(0);
  v19 = v18[6];
  v20 = sub_10004FFB8();
  v21 = *(v20 - 8);
  v22 = *(v21 + 56);
  v53 = v19;
  v50 = v22;
  v51 = v20;
  v49 = v21 + 56;
  v22(a6 + v19, 1, 1);
  *(a6 + v18[9]) = 0;
  v23 = v18[10];
  v24 = sub_100002814(&qword_100072B60, &qword_10005A818);
  (*(*(v24 - 8) + 56))(a6 + v23, 1, 1, v24);
  v57 = v18;
  v25 = (a6 + v18[11]);
  v25->super.isa = 0;
  v25->_urlString = 0;
  sub_10004FA08(v25);
  v27 = v26;
  v28 = _CFURLCopySecurityScopeFromFileURL();

  if (v28)
  {

    sub_10004FA68();
  }

  v29 = v56;
  v30 = v57;
  v31 = a6 + v57[7];
  v32 = a1;
  v47 = *(v9 + 16);
  v47(a6, a1, v56);
  v33 = (a6 + v30[5]);
  v34 = v52;
  *v33 = a2;
  v33[1] = v34;
  sub_100002814(&qword_100072C38, &unk_10005AA20);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100056D10;
  *(inited + 32) = NSURLFileSizeKey;
  *(inited + 40) = NSURLContentTypeKey;
  v36 = NSURLFileSizeKey;
  v37 = NSURLContentTypeKey;
  sub_100004E6C(inited);
  swift_setDeallocating();
  type metadata accessor for URLResourceKey(0);
  swift_arrayDestroy();
  sub_10004F9E8();

  *v31 = sub_10004F8D8();
  *(v31 + 8) = v38 & 1;
  v39 = v46;
  sub_10004F8C8();
  (*(v9 + 8))(v32, v29);
  (*(v44 + 8))(v17, v45);
  result = sub_1000479FC(v39, a6 + v53);
  v41 = (a6 + v57[8]);
  v42 = v55;
  *v41 = v54;
  v41[1] = v42;
  return result;
}

void sub_100042E4C()
{
  v1 = v0;
  v2 = sub_100050048();
  v33 = *(v2 - 8);
  v34 = v2;
  v3 = *(v33 + 64);
  __chkstk_darwin(v2);
  v32 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Attachment.UploadState(0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v35 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10004FFB8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100002814(&qword_100072A90, &qword_10005A7D0);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v16 = &v32 - v15;
  sub_10004FA98();
  sub_100046B30(&qword_100072C28, &type metadata accessor for URL);
  sub_100050438();
  v17 = type metadata accessor for Attachment(0);
  v18 = (v0 + v17[5]);
  if (v18[1])
  {
    v19 = *v18;
    sub_100050A88(1uLL);
    sub_100050568();
  }

  else
  {
    sub_100050A88(0);
  }

  sub_100005070(v0 + v17[6], v16, &qword_100072A90, &qword_10005A7D0);
  if ((*(v9 + 48))(v16, 1, v8) == 1)
  {
    sub_100050A98(0);
  }

  else
  {
    (*(v9 + 32))(v12, v16, v8);
    sub_100050A98(1u);
    sub_100046B30(&qword_100072C70, &type metadata accessor for UTType);
    sub_100050438();
    (*(v9 + 8))(v12, v8);
  }

  v20 = v0 + v17[7];
  if (*(v20 + 8) == 1)
  {
    sub_100050A98(0);
  }

  else
  {
    v21 = *v20;
    sub_100050A98(1u);
    sub_100050A88(v21);
  }

  v22 = (v0 + v17[8]);
  v23 = *v22;
  v24 = v22[1];
  sub_100050568();
  if (*(v0 + v17[9]))
  {
    sub_100050A98(1u);
    type metadata accessor for CGImage(0);
    sub_100046B30(&qword_100072C58, type metadata accessor for CGImage);
    sub_10004FCA8();
  }

  else
  {
    sub_100050A98(0);
  }

  v25 = v35;
  sub_100047AF4(v1 + v17[10], v35, type metadata accessor for Attachment.UploadState);
  v26 = sub_100002814(&qword_100072B60, &qword_10005A818);
  if ((*(*(v26 - 8) + 48))(v25, 1, v26) == 1)
  {
    sub_100050A88(0);
  }

  else
  {
    v28 = v32;
    v27 = v33;
    v29 = v34;
    (*(v33 + 32))(v32, v25, v34);
    sub_100050A88(1uLL);
    sub_100046B30(&qword_100072C78, &type metadata accessor for DocumentResourceIdentifier);
    sub_100050438();
    (*(v27 + 8))(v28, v29);
  }

  v30 = (v1 + v17[11]);
  if (v30[1])
  {
    v31 = *v30;
    sub_100050A98(1u);
    sub_100050568();
  }

  else
  {
    sub_100050A98(0);
  }
}

uint64_t sub_1000433C4@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10004FA98();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

Swift::Int sub_100043430()
{
  sub_100050A78();
  sub_100042E4C();
  return sub_100050AA8();
}

Swift::Int sub_100043474()
{
  sub_100050A78();
  sub_100042E4C();
  return sub_100050AA8();
}

uint64_t sub_1000434B0(void *a1, void *a2)
{
  v3 = a1[1];
  v4 = a2[1];
  if (v3)
  {
    if (v4)
    {
      if (*a1 != *a2 || v3 != v4)
      {
        return sub_1000509B8();
      }

      return 1;
    }

    return 0;
  }

  return !v4;
}

Swift::Int sub_1000434F4()
{
  v1 = *v0;
  v2 = v0[1];
  sub_100050A78();
  if (v2)
  {
    sub_100050A88(1uLL);
    sub_100050568();
  }

  else
  {
    sub_100050A88(0);
  }

  return sub_100050AA8();
}

void sub_100043564()
{
  if (v0[1])
  {
    v1 = *v0;
    sub_100050A88(1uLL);

    sub_100050568();
  }

  else
  {
    sub_100050A88(0);
  }
}

Swift::Int sub_1000435DC()
{
  v1 = *v0;
  v2 = v0[1];
  sub_100050A78();
  if (v2)
  {
    sub_100050A88(1uLL);
    sub_100050568();
  }

  else
  {
    sub_100050A88(0);
  }

  return sub_100050AA8();
}

uint64_t sub_100043648(uint64_t a1, uint64_t a2)
{
  v2[5] = a1;
  v2[6] = a2;
  v3 = sub_10004F9C8();
  v2[7] = v3;
  v4 = *(v3 - 8);
  v2[8] = v4;
  v5 = *(v4 + 64) + 15;
  v2[9] = swift_task_alloc();
  v6 = sub_10004FAD8();
  v2[10] = v6;
  v7 = *(v6 - 8);
  v2[11] = v7;
  v8 = *(v7 + 64) + 15;
  v2[12] = swift_task_alloc();
  v9 = sub_10004FA98();
  v2[13] = v9;
  v10 = *(v9 - 8);
  v2[14] = v10;
  v11 = *(v10 + 64) + 15;
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();

  return _swift_task_switch(sub_100043804, 0, 0);
}

uint64_t sub_100043804()
{
  v1 = v0[16];
  v2 = v0[17];
  v3 = v0[13];
  v4 = v0[14];
  v5 = v0[6];
  sub_10004FCD8();
  sub_10004FA18();
  v6 = *(v4 + 8);
  v6(v1, v3);
  v39 = sub_10004F9F8();
  v44 = v7;
  v6(v2, v3);
  sub_10004FCD8();
  sub_10004F9D8();
  v45 = v6;
  v6(v2, v3);
  if (qword_10006EA40 != -1)
  {
    swift_once();
  }

  v8 = v0[17];
  v9 = v0[12];
  v40 = v0[15];
  v41 = v0[13];
  v10 = v0[10];
  v11 = v0[11];
  v13 = v0[8];
  v12 = v0[9];
  v14 = v0[7];
  v42 = v0[6];
  sub_1000071F4(v41, qword_10007B5A8);
  sub_10004FAC8();
  v15 = sub_10004FAA8();
  v17 = v16;
  (*(v11 + 8))(v9, v10);
  v0[2] = v15;
  v0[3] = v17;
  (*(v13 + 104))(v12, enum case for URL.DirectoryHint.inferFromPath(_:), v14);
  sub_100046BDC();
  sub_10004FA88();
  (*(v13 + 8))(v12, v14);

  sub_10004FA28();

  v45(v8, v41);
  v18 = [objc_opt_self() defaultManager];
  sub_10004FCD8();
  sub_10004FA08(v19);
  v21 = v20;
  v45(v8, v41);
  sub_10004FA08(v22);
  v24 = v23;
  v0[4] = 0;
  LODWORD(v17) = [v18 moveItemAtURL:v21 toURL:v23 error:v0 + 4];

  v25 = v0[4];
  v26 = v0[16];
  v27 = v0[17];
  v28 = v0[15];
  if (v17)
  {
    v29 = v0[13];
    v30 = v0[12];
    v31 = v0[9];
    v32 = v0[5];
    (*(v0[14] + 16))(v0[17], v0[15], v29);
    v33 = v25;
    sub_1000427E4(v27, 0, 0xE000000000000000, v39, v44, v32);
    v45(v28, v29);
  }

  else
  {
    v36 = v0[12];
    v35 = v0[13];
    v43 = v0[9];
    v37 = v25;

    sub_10004F968();

    swift_willThrow();
    v45(v28, v35);
  }

  v34 = v0[1];

  return v34();
}

uint64_t sub_100043C48()
{
  v0 = sub_10004FFB8();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  sub_10004FFA8();
  return sub_10004FCC8();
}

uint64_t sub_100043CF8()
{
  v1 = v0;
  v2 = sub_100002814(&qword_100072A90, &qword_10005A7D0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v17 - v4;
  v18 = 0;
  v19 = 0xE000000000000000;
  sub_100050848(58);
  v20._object = 0x8000000100053860;
  v20._countAndFlagsBits = 0xD000000000000011;
  sub_100050578(v20);
  v6 = type metadata accessor for Attachment(0);
  v17 = *(v0 + v6[5]);
  sub_1000508C8();
  v21._countAndFlagsBits = 0x657079547475202CLL;
  v21._object = 0xEA0000000000203ALL;
  sub_100050578(v21);
  sub_100005070(v0 + v6[6], v5, &qword_100072A90, &qword_10005A7D0);
  v7 = sub_10004FFB8();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v5, 1, v7) == 1)
  {
    sub_10000CBA0(v5, &qword_100072A90, &qword_10005A7D0);
    v9 = 0xE300000000000000;
    v10._countAndFlagsBits = 7104878;
  }

  else
  {
    v11 = sub_10004FF98();
    v9 = v12;
    (*(v8 + 8))(v5, v7);
    v10._countAndFlagsBits = v11;
  }

  v10._object = v9;
  sub_100050578(v10);

  v22._countAndFlagsBits = 0x203A657A6973202CLL;
  v22._object = 0xE800000000000000;
  sub_100050578(v22);
  v13 = (v1 + v6[7]);
  v14 = *v13;
  LOBYTE(v13) = *(v13 + 8);
  *&v17 = v14;
  BYTE8(v17) = v13;
  sub_100002814(&qword_100072C48, &qword_10005AA40);
  v23._countAndFlagsBits = sub_100050548();
  sub_100050578(v23);

  v24._countAndFlagsBits = 0x6F6C70557369202CLL;
  v24._object = 0xEE00203A64656461;
  sub_100050578(v24);
  v15 = v6[10];
  type metadata accessor for Attachment.UploadState(0);
  sub_1000508C8();
  v25._countAndFlagsBits = 41;
  v25._object = 0xE100000000000000;
  sub_100050578(v25);
  return v18;
}

id sub_100043FC0()
{
  v0 = sub_10004FA98();
  sub_100007390(v0, qword_10007B5A8);
  v1 = sub_1000071F4(v0, qword_10007B5A8);
  return sub_10004400C(v1);
}

id sub_10004400C@<X0>(uint64_t a1@<X8>)
{
  v28 = a1;
  v1 = sub_10004F9C8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10004FA98();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v26 - v12;
  v14 = objc_opt_self();
  v15 = [v14 defaultManager];
  v16 = [v15 temporaryDirectory];

  sub_10004FA58();
  v30 = 0xD000000000000016;
  v31 = 0x80000001000513D0;
  (*(v2 + 104))(v5, enum case for URL.DirectoryHint.inferFromPath(_:), v1);
  sub_100046BDC();
  sub_10004FA88();
  (*(v2 + 8))(v5, v1);
  v17 = *(v7 + 8);
  v17(v11, v6);
  v18 = [v14 defaultManager];
  sub_10004FA08(v19);
  v21 = v20;
  v30 = 0;
  LODWORD(v5) = [v18 createDirectoryAtURL:v20 withIntermediateDirectories:1 attributes:0 error:&v30];

  v27 = v30;
  if (v5)
  {
    (*(v7 + 32))(v28, v13, v6);
    v22 = v27;

    return v22;
  }

  else
  {
    v24 = v27;
    v25 = sub_10004F968();

    swift_willThrow();
    v17(v13, v6);
    v30 = 0;
    v31 = 0xE000000000000000;
    sub_100050848(31);
    v33._countAndFlagsBits = 0xD00000000000001DLL;
    v33._object = 0x8000000100053840;
    sub_100050578(v33);
    v29 = v25;
    sub_100002814(&qword_10006F0B0, &qword_100057A80);
    sub_1000508C8();
    result = sub_1000508D8();
    __break(1u);
  }

  return result;
}

uint64_t sub_1000443FC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100046B30(&qword_100072C80, type metadata accessor for AttachmentManager);
  sub_10004FB58();

  swift_beginAccess();
  *a2 = *(v3 + 16);
}

uint64_t sub_1000444BC(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 16);

  v5 = sub_10000DEEC(v4, a1);

  if (v5)
  {
    v6 = *(v1 + 16);
    *(v1 + 16) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100046B30(&qword_100072C80, type metadata accessor for AttachmentManager);
    sub_10004FB48();
  }
}

uint64_t sub_100044604(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a1 + 16);
  *(a1 + 16) = a2;
}

uint64_t sub_10004466C@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  sub_100046B30(&qword_100072C80, type metadata accessor for AttachmentManager);
  sub_10004FB58();

  swift_beginAccess();
  return sub_100005070(v1 + 24, a1, &unk_1000711A0, &qword_100058BF0);
}

uint64_t sub_10004473C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100046B30(&qword_100072C80, type metadata accessor for AttachmentManager);
  sub_10004FB58();

  swift_beginAccess();
  return sub_100005070(v3 + 24, a2, &unk_1000711A0, &qword_100058BF0);
}

uint64_t sub_10004480C(uint64_t a1, uint64_t *a2)
{
  sub_100005070(a1, v5, &unk_1000711A0, &qword_100058BF0);
  v3 = *a2;
  swift_getKeyPath();
  sub_100046B30(&qword_100072C80, type metadata accessor for AttachmentManager);
  sub_10004FB48();

  return sub_10000CBA0(v5, &unk_1000711A0, &qword_100058BF0);
}

uint64_t sub_100044914(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  sub_100038980(a2, a1 + 24);
  return swift_endAccess();
}

uint64_t sub_100044978()
{
  swift_getKeyPath();
  sub_100046B30(&qword_100072C80, type metadata accessor for AttachmentManager);
  sub_10004FB58();

  swift_beginAccess();
  v1 = *(v0 + 64);
}

uint64_t sub_100044A30@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100046B30(&qword_100072C80, type metadata accessor for AttachmentManager);
  sub_10004FB58();

  swift_beginAccess();
  *a2 = *(v3 + 64);
}

uint64_t sub_100044AF0(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 64);

  v5 = sub_10000DEEC(v4, a1);

  if (v5)
  {
    v6 = *(v1 + 64);
    *(v1 + 64) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100046B30(&qword_100072C80, type metadata accessor for AttachmentManager);
    sub_10004FB48();
  }
}

uint64_t sub_100044C38(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a1 + 64);
  *(a1 + 64) = a2;
}

uint64_t sub_100044CA0(unint64_t a1)
{
  v2 = v1;
  v72 = type metadata accessor for Attachment(0);
  v4 = *(v72 - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v72);
  v71 = &v65 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v10 = &v65 - v9;
  v11 = __chkstk_darwin(v8);
  v73 = &v65 - v12;
  v13 = __chkstk_darwin(v11);
  v15 = &v65 - v14;
  __chkstk_darwin(v13);
  v17 = &v65 - v16;
  swift_getKeyPath();
  v18 = OBJC_IVAR____TtC31WritingToolsAppIntentsExtension17AttachmentManager___observationRegistrar;
  v76[0] = v1;
  v19 = sub_100046B30(&qword_100072C80, type metadata accessor for AttachmentManager);
  sub_10004FB58();

  result = swift_beginAccess();
  if (*(v1[2] + 16) <= a1)
  {
    return result;
  }

  swift_getKeyPath();
  v76[0] = v1;
  sub_10004FB58();

  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v21 = v1[2];
    if (*(v21 + 16) > a1)
    {
      v70 = v19;
      v68 = (*(v4 + 80) + 32) & ~*(v4 + 80);
      v22 = *(v4 + 72);
      v69 = a1;
      v67 = v22;
      sub_100047AF4(v21 + v68 + v22 * a1, v17, type metadata accessor for Attachment);
      if (qword_10006EA00 == -1)
      {
        goto LABEL_5;
      }

      goto LABEL_27;
    }
  }

  __break(1u);
LABEL_27:
  swift_once();
LABEL_5:
  v23 = sub_100050188();
  v24 = sub_1000071F4(v23, qword_10007B4F8);
  sub_100047AF4(v17, v15, type metadata accessor for Attachment);
  v25 = sub_100050168();
  v26 = sub_100050728();
  v27 = os_log_type_enabled(v25, v26);
  v66 = v24;
  if (v27)
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v65 = v18;
    v30 = v10;
    v31 = v17;
    v32 = v29;
    v76[0] = v29;
    *v28 = 136642819;
    v33 = sub_100043CF8();
    v35 = v34;
    sub_100047B5C(v15, type metadata accessor for Attachment);
    v36 = sub_100046C30(v33, v35, v76);

    *(v28 + 4) = v36;
    _os_log_impl(&_mh_execute_header, v25, v26, "removing attachment: %{sensitive}s", v28, 0xCu);
    sub_10000CC70(v32);
    v17 = v31;
    v10 = v30;
  }

  else
  {

    sub_100047B5C(v15, type metadata accessor for Attachment);
  }

  v37 = v72;
  v38 = &v17[*(v72 + 20)];
  v39 = v38[1];
  if (!v39)
  {
    sub_10004FA48();
    swift_getKeyPath();
    v74[0] = v2;
    sub_10004FB58();

    swift_beginAccess();
    sub_100005070((v2 + 3), v76, &unk_1000711A0, &qword_100058BF0);
    if (v77)
    {
      sub_10000D6CC(v76, v74);
      sub_10000CBA0(v76, &unk_1000711A0, &qword_100058BF0);
      v48 = *sub_10000D634(v74, v75);
      sub_100015D1C(0, 1, 0, 1, 0, 1, 1, 0, *&v17[*(v37 + 44)], *&v17[*(v37 + 44) + 8]);
      goto LABEL_14;
    }

LABEL_17:
    sub_10000CBA0(v76, &unk_1000711A0, &qword_100058BF0);
    goto LABEL_19;
  }

  v72 = *v38;
  v40 = [objc_opt_self() defaultManager];
  sub_10004FA08(v41);
  v43 = v42;
  v76[0] = 0;
  v44 = [v40 removeItemAtURL:v42 error:v76];

  v45 = v76[0];
  if ((v44 & 1) == 0)
  {
    v49 = v76[0];
    v50 = sub_10004F968();

    v65 = v50;
    swift_willThrow();
    v51 = v71;
    sub_100047AF4(v17, v71, type metadata accessor for Attachment);

    v52 = sub_100050168();
    v53 = sub_100050738();

    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      v66 = swift_slowAlloc();
      v76[0] = v66;
      *v54 = 136315395;
      *(v54 + 4) = sub_100046C30(v72, v39, v76);
      *(v54 + 12) = 2085;
      v55 = sub_10004FA78(1);
      v57 = v56;
      sub_100047B5C(v51, type metadata accessor for Attachment);
      v58 = sub_100046C30(v55, v57, v76);

      *(v54 + 14) = v58;
      _os_log_impl(&_mh_execute_header, v52, v53, "failed to remove photo %s at %{sensitive}s", v54, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      sub_100047B5C(v51, type metadata accessor for Attachment);
    }

    goto LABEL_19;
  }

  swift_getKeyPath();
  v74[0] = v2;
  v46 = v45;
  sub_10004FB58();

  swift_beginAccess();
  sub_100005070((v2 + 3), v76, &unk_1000711A0, &qword_100058BF0);
  if (!v77)
  {
    goto LABEL_17;
  }

  sub_10000D6CC(v76, v74);
  sub_10000CBA0(v76, &unk_1000711A0, &qword_100058BF0);
  v47 = *sub_10000D634(v74, v75);
  sub_100015D1C(0, 1, 0, 1, 1, 0, 0, 1, *&v17[*(v37 + 44)], *&v17[*(v37 + 44) + 8]);
LABEL_14:
  sub_10000CC70(v74);
LABEL_19:
  v59 = v68;
  swift_getKeyPath();
  v76[0] = v2;
  sub_10004FB58();

  v76[0] = v2;
  swift_getKeyPath();
  sub_10004FB78();

  swift_beginAccess();
  v60 = v73;
  sub_100045760(v69, v73);
  sub_100047B5C(v60, type metadata accessor for Attachment);
  swift_endAccess();
  v76[0] = v2;
  swift_getKeyPath();
  sub_10004FB68();

  sub_100047AF4(v17, v10, type metadata accessor for Attachment);
  swift_getKeyPath();
  v76[0] = v2;
  sub_10004FB58();

  v76[0] = v2;
  swift_getKeyPath();
  sub_10004FB78();

  swift_beginAccess();
  v61 = v2[8];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v2[8] = v61;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v61 = sub_100037D34(0, v61[2] + 1, 1, v61);
    v2[8] = v61;
  }

  v64 = v61[2];
  v63 = v61[3];
  if (v64 >= v63 >> 1)
  {
    v61 = sub_100037D34(v63 > 1, v64 + 1, 1, v61);
  }

  v61[2] = v64 + 1;
  sub_100047BBC(v10, v61 + v59 + v64 * v67);
  v2[8] = v61;
  swift_endAccess();
  v76[0] = v2;
  swift_getKeyPath();
  sub_10004FB68();

  return sub_100047B5C(v17, type metadata accessor for Attachment);
}

size_t sub_100045760@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1000471D8(v5);
    v5 = result;
  }

  v7 = v5[2];
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = *(type metadata accessor for Attachment(0) - 8);
    v10 = *(v9 + 72);
    v11 = v5 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + v10 * a1;
    result = sub_100047BBC(v11, a2);
    if (v10 > 0 || v11 >= v11 + v10 + v10 * (v8 - a1))
    {
      result = swift_arrayInitWithTakeFrontToBack();
    }

    else if (v10)
    {
      result = swift_arrayInitWithTakeBackToFront();
    }

    v5[2] = v8;
    *v2 = v5;
  }

  return result;
}

void sub_100045880()
{
  v65 = sub_10004FA98();
  v1 = *(v65 - 8);
  v2 = *(v1 + 64);
  v3 = __chkstk_darwin(v65);
  v5 = v57 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = v57 - v6;
  swift_getKeyPath();
  v72 = v0;
  sub_100046B30(&qword_100072C80, type metadata accessor for AttachmentManager);
  sub_10004FB58();

  swift_beginAccess();
  v8 = *(v0[2] + 16);
  if (v8)
  {
    v9 = v8 - 1;
    do
    {
      sub_100044CA0(v9--);
    }

    while (v9 != -1);
  }

  swift_getKeyPath();
  v71 = v0;
  sub_10004FB58();

  v71 = v0;
  swift_getKeyPath();
  sub_10004FB78();

  swift_beginAccess();
  v10 = v0[8];
  v0[8] = &_swiftEmptyArrayStorage;

  v70 = v0;
  swift_getKeyPath();
  sub_10004FB68();

  v68 = objc_opt_self();
  v11 = [v68 defaultManager];
  if (qword_10006EA40 != -1)
  {
    swift_once();
  }

  v12 = v65;
  sub_1000071F4(v65, qword_10007B5A8);
  sub_10004FA08(v13);
  v15 = v14;
  v70 = 0;
  v16 = [v11 contentsOfDirectoryAtURL:v14 includingPropertiesForKeys:0 options:0 error:&v70];

  v17 = v70;
  if (v16)
  {
    v18 = sub_1000505E8();
    v19 = v17;

    v21 = *(v18 + 16);
    if (v21)
    {
      v22 = v1 + 16;
      v69 = *(v1 + 16);
      v23 = (*(v1 + 80) + 32) & ~*(v1 + 80);
      v57[1] = v18;
      v24 = v18 + v23;
      v25 = *(v22 + 56);
      v66 = (v22 - 8);
      v67 = v25;
      *&v20 = 136643075;
      v60 = v20;
      v61 = v22;
      v59 = v7;
      v58 = v5;
      v69(v7, v18 + v23, v12);
      while (1)
      {
        v28 = [v68 defaultManager];
        sub_10004FA08(v29);
        v31 = v30;
        v70 = 0;
        v32 = [v28 removeItemAtURL:v30 error:&v70];

        if (v32)
        {
          v26 = *v66;
          v27 = v70;
          v26(v7, v12);
        }

        else
        {
          v33 = v70;
          sub_10004F968();

          swift_willThrow();
          if (qword_10006EA00 != -1)
          {
            swift_once();
          }

          v34 = sub_100050188();
          sub_1000071F4(v34, qword_10007B4F8);
          v69(v5, v7, v12);
          swift_errorRetain();
          swift_errorRetain();
          v35 = sub_100050168();
          v36 = v5;
          v37 = sub_100050738();
          if (os_log_type_enabled(v35, v37))
          {
            v38 = swift_slowAlloc();
            v62 = swift_slowAlloc();
            v39 = swift_slowAlloc();
            v63 = v35;
            v64 = v39;
            v70 = v39;
            *v38 = v60;
            v40 = v36;
            v41 = sub_10004FA78(1);
            v43 = v42;
            v44 = *v66;
            (*v66)(v40, v65);
            v45 = sub_100046C30(v41, v43, &v70);

            *(v38 + 4) = v45;
            *(v38 + 12) = 2112;
            swift_errorRetain();
            v46 = _swift_stdlib_bridgeErrorToNSError();
            *(v38 + 14) = v46;
            v47 = v62;
            *v62 = v46;

            v48 = v63;
            _os_log_impl(&_mh_execute_header, v63, v37, "failed to remove file at %{sensitive}s: %@", v38, 0x16u);
            sub_10000CBA0(v47, &qword_100072230, &qword_100058ED0);
            v12 = v65;

            sub_10000CC70(v64);

            v7 = v59;
            v44(v59, v12);
            v5 = v58;
          }

          else
          {

            v5 = v36;
            v49 = *v66;
            (*v66)(v5, v12);
            v49(v7, v12);
          }
        }

        v24 += v67;
        if (!--v21)
        {
          break;
        }

        v69(v7, v24, v12);
      }
    }
  }

  else
  {
    v50 = v70;
    sub_10004F968();

    swift_willThrow();
    if (qword_10006EA00 != -1)
    {
      swift_once();
    }

    v51 = sub_100050188();
    sub_1000071F4(v51, qword_10007B4F8);
    swift_errorRetain();
    v52 = sub_100050168();
    v53 = sub_100050738();
    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      *v54 = 138412290;
      swift_errorRetain();
      v56 = _swift_stdlib_bridgeErrorToNSError();
      *(v54 + 4) = v56;
      *v55 = v56;

      _os_log_impl(&_mh_execute_header, v52, v53, "failed to enumerate attachments tmp directory: %@", v54, 0xCu);
      sub_10000CBA0(v55, &qword_100072230, &qword_100058ED0);
    }

    else
    {
    }
  }
}

uint64_t sub_1000460BC()
{
  v1 = *(v0 + 2);

  sub_10000CBA0((v0 + 24), &unk_1000711A0, &qword_100058BF0);
  v2 = *(v0 + 8);

  v3 = OBJC_IVAR____TtC31WritingToolsAppIntentsExtension17AttachmentManager___observationRegistrar;
  v4 = sub_10004FB98();
  (*(*(v4 - 8) + 8))(&v0[v3], v4);
  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1000461A8()
{
  result = sub_10004FB98();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_100046268(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_10004FA98();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_100002814(&qword_100072A90, &qword_10005A7D0);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + a3[6];
    goto LABEL_5;
  }

  if (a2 == 0x7FFFFFFF)
  {
    v14 = *(a1 + a3[8] + 8);
    if (v14 >= 0xFFFFFFFF)
    {
      LODWORD(v14) = -1;
    }

    return (v14 + 1);
  }

  else
  {
    v15 = type metadata accessor for Attachment.UploadState(0);
    v16 = *(*(v15 - 8) + 48);
    v17 = a1 + a3[10];

    return v16(v17, a2, v15);
  }
}

uint64_t sub_100046420(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_10004FA98();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  result = sub_100002814(&qword_100072A90, &qword_10005A7D0);
  v14 = *(result - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + a4[6];
    goto LABEL_5;
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[8] + 8) = (a2 - 1);
  }

  else
  {
    v15 = type metadata accessor for Attachment.UploadState(0);
    v16 = *(*(v15 - 8) + 56);
    v17 = a1 + a4[10];

    return v16(v17, a2, a2, v15);
  }

  return result;
}

void sub_1000465C4()
{
  sub_10004FA98();
  if (v0 <= 0x3F)
  {
    sub_100046710(319, &qword_100072B00, &type metadata accessor for UTType);
    if (v1 <= 0x3F)
    {
      sub_100046764(319, &qword_100072B08);
      if (v2 <= 0x3F)
      {
        sub_100046710(319, &qword_100072B10, type metadata accessor for CGImage);
        if (v3 <= 0x3F)
        {
          type metadata accessor for Attachment.UploadState(319);
          if (v4 <= 0x3F)
          {
            sub_100046764(319, &unk_100072B18);
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

void sub_100046710(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1000507E8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_100046764(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_1000507E8();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t sub_1000467B0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
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

uint64_t sub_100046800(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_100046854(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_100046890(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002814(&qword_100072B60, &qword_10005A818);
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 2)
  {
    return v5 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10004691C(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_100002814(&qword_100072B60, &qword_10005A818);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_1000469A8()
{
  sub_100046A00();
  v1 = v0;
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

void sub_100046A00()
{
  if (!qword_100072BE8)
  {
    v0 = sub_100050048();
    if (!v1)
    {
      atomic_store(v0, &qword_100072BE8);
    }
  }
}

unint64_t sub_100046A94()
{
  result = qword_100072C18;
  if (!qword_100072C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100072C18);
  }

  return result;
}

uint64_t sub_100046B30(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_100046BDC()
{
  result = qword_100072C30;
  if (!qword_100072C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100072C30);
  }

  return result;
}

uint64_t sub_100046C30(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_100046CFC(v11, 0, 0, 1, a1, a2);
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
    sub_100015440(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_10000CC70(v11);
  return v7;
}

unint64_t sub_100046CFC(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_100046E08(a5, a6);
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
    result = sub_100050888();
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

char *sub_100046E08(uint64_t a1, unint64_t a2)
{
  v4 = sub_100046E54(a1, a2);
  sub_100046F84(&off_10006A010);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_100046E54(uint64_t a1, unint64_t a2)
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

  v6 = sub_100047070(v5, 0);
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

  result = sub_100050888();
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
        v10 = sub_100050588();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_100047070(v10, 0);
        result = sub_100050838();
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

uint64_t sub_100046F84(uint64_t result)
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

  result = sub_1000470E4(result, v12, 1, v3);
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

void *sub_100047070(uint64_t a1, uint64_t a2)
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

  sub_100002814(&qword_100072C40, &unk_10005AA30);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_1000470E4(char *result, int64_t a2, char a3, char *a4)
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
    sub_100002814(&qword_100072C40, &unk_10005AA30);
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

uint64_t sub_1000471EC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100050048();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Attachment.UploadState(0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100002814(&qword_100072C68, &unk_10005AA50);
  v14 = *(*(v13 - 8) + 64);
  v15 = __chkstk_darwin(v13 - 8);
  v17 = &v24 - v16;
  v18 = *(v15 + 56);
  sub_100047AF4(a1, &v24 - v16, type metadata accessor for Attachment.UploadState);
  sub_100047AF4(a2, &v17[v18], type metadata accessor for Attachment.UploadState);
  v19 = sub_100002814(&qword_100072B60, &qword_10005A818);
  v20 = *(*(v19 - 8) + 48);
  if (v20(v17, 1, v19) != 1)
  {
    sub_100047AF4(v17, v12, type metadata accessor for Attachment.UploadState);
    if (v20(&v17[v18], 1, v19) != 1)
    {
      (*(v5 + 32))(v8, &v17[v18], v4);
      v21 = sub_100050038();
      v22 = *(v5 + 8);
      v22(v8, v4);
      v22(v12, v4);
      sub_100047B5C(v17, type metadata accessor for Attachment.UploadState);
      return v21 & 1;
    }

    (*(v5 + 8))(v12, v4);
    goto LABEL_6;
  }

  if (v20(&v17[v18], 1, v19) != 1)
  {
LABEL_6:
    sub_10000CBA0(v17, &qword_100072C68, &unk_10005AA50);
    v21 = 0;
    return v21 & 1;
  }

  sub_100047B5C(v17, type metadata accessor for Attachment.UploadState);
  v21 = 1;
  return v21 & 1;
}

BOOL sub_100047500(uint64_t a1, uint64_t a2)
{
  v4 = sub_10004FFB8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100002814(&qword_100072A90, &qword_10005A7D0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v53 - v11;
  v13 = sub_100002814(&qword_100072C50, &qword_10005AA48);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13);
  v16 = &v53 - v15;
  if ((sub_10004FA38() & 1) == 0)
  {
    return 0;
  }

  v17 = type metadata accessor for Attachment(0);
  v18 = *(v17 + 20);
  v19 = (a1 + v18);
  v20 = *(a1 + v18 + 8);
  v21 = (a2 + v18);
  v22 = v21[1];
  if (v20)
  {
    if (!v22)
    {
      return 0;
    }

    v23 = *v19 == *v21 && v20 == v22;
    if (!v23 && (sub_1000509B8() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v22)
  {
    return 0;
  }

  v56 = v17;
  v24 = *(v17 + 24);
  v25 = *(v13 + 48);
  v54 = a1;
  sub_100005070(a1 + v24, v16, &qword_100072A90, &qword_10005A7D0);
  v55 = a2;
  v26 = a2 + v24;
  v27 = v5;
  sub_100005070(v26, &v16[v25], &qword_100072A90, &qword_10005A7D0);
  v28 = *(v5 + 48);
  if (v28(v16, 1, v4) == 1)
  {
    if (v28(&v16[v25], 1, v4) == 1)
    {
      sub_10000CBA0(v16, &qword_100072A90, &qword_10005A7D0);
      goto LABEL_19;
    }

LABEL_16:
    sub_10000CBA0(v16, &qword_100072C50, &qword_10005AA48);
    return 0;
  }

  sub_100005070(v16, v12, &qword_100072A90, &qword_10005A7D0);
  if (v28(&v16[v25], 1, v4) == 1)
  {
    (*(v27 + 8))(v12, v4);
    goto LABEL_16;
  }

  (*(v27 + 32))(v8, &v16[v25], v4);
  sub_100046B30(&qword_100072C60, &type metadata accessor for UTType);
  v30 = sub_100050448();
  v31 = *(v27 + 8);
  v31(v8, v4);
  v31(v12, v4);
  sub_10000CBA0(v16, &qword_100072A90, &qword_10005A7D0);
  if ((v30 & 1) == 0)
  {
    return 0;
  }

LABEL_19:
  v32 = v55;
  v33 = v56;
  v34 = v56[7];
  v35 = v54;
  v36 = (v54 + v34);
  v37 = *(v54 + v34 + 8);
  v38 = (v55 + v34);
  v39 = *(v55 + v34 + 8);
  if (v37)
  {
    if (!v39)
    {
      return 0;
    }
  }

  else
  {
    if (*v36 != *v38)
    {
      LOBYTE(v39) = 1;
    }

    if (v39)
    {
      return 0;
    }
  }

  v40 = v56[8];
  v41 = *(v54 + v40);
  v42 = *(v54 + v40 + 8);
  v43 = (v55 + v40);
  if ((v41 != *v43 || v42 != v43[1]) && (sub_1000509B8() & 1) == 0)
  {
    return 0;
  }

  v44 = v33[9];
  v45 = *(v32 + v44);
  if (*(v35 + v44))
  {
    if (!v45)
    {
      return 0;
    }

    type metadata accessor for CGImage(0);
    sub_100046B30(&qword_100072C58, type metadata accessor for CGImage);
    v46 = v45;
    v47 = sub_10004FC98();

    if ((v47 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v45)
  {
    return 0;
  }

  if ((sub_1000471EC(v35 + v33[10], v32 + v33[10]) & 1) == 0)
  {
    return 0;
  }

  v48 = v33[11];
  v49 = (v35 + v48);
  v50 = *(v35 + v48 + 8);
  v51 = (v32 + v48);
  v52 = v51[1];
  if (v50)
  {
    return v52 && (*v49 == *v51 && v50 == v52 || (sub_1000509B8() & 1) != 0);
  }

  return !v52;
}

uint64_t sub_1000479FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002814(&qword_100072A90, &qword_10005A7D0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100047AA4(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v6 = *a1;
  v7 = *a2;

  return a5(v8);
}

uint64_t sub_100047AF4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100047B5C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100047BBC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Attachment(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_100047C64()
{
  result = qword_100072C88;
  if (!qword_100072C88)
  {
    sub_1000028C0(&qword_100072C90, &qword_10005AAD8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100072C88);
  }

  return result;
}

uint64_t sub_100047CDC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v7 = v4;
  if (a1)
  {
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v28 = *v4;
    sub_10004C50C(a1, a2, isUniquelyReferenced_nonNull_native, a3, a4);
    v12 = sub_10004FAD8();
    result = (*(*(v12 - 8) + 8))(a2, v12);
    *v4 = v28;
  }

  else
  {
    v14 = *v4;
    v15 = sub_10004A0A0(a2);
    if (v16)
    {
      v17 = v15;
      v18 = *v7;
      v19 = swift_isUniquelyReferenced_nonNull_native();
      v20 = *v7;
      v29 = *v7;
      if (!v19)
      {
        sub_10004D100(a3, a4);
        v20 = v29;
      }

      v21 = *(v20 + 48);
      v22 = sub_10004FAD8();
      v23 = *(v22 - 8);
      v24 = *(v23 + 8);
      v24(v21 + *(v23 + 72) * v17, v22);
      v25 = *(*(v20 + 56) + 8 * v17);

      sub_10004BF0C(v17, v20);
      result = (v24)(a2, v22);
      *v7 = v20;
    }

    else
    {
      v26 = sub_10004FAD8();
      v27 = *(*(v26 - 8) + 8);

      return v27(a2, v26);
    }
  }

  return result;
}

uint64_t sub_100047ED4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    v6 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v2;
    sub_10004CA54(a1, a2, isUniquelyReferenced_nonNull_native);
    v8 = sub_10004FAD8();
    result = (*(*(v8 - 8) + 8))(a2, v8);
    *v2 = v23;
  }

  else
  {
    v10 = *v2;
    v11 = sub_10004A0A0(a2);
    if (v12)
    {
      v13 = v11;
      v14 = *v3;
      v15 = swift_isUniquelyReferenced_nonNull_native();
      v16 = *v3;
      v24 = *v3;
      if (!v15)
      {
        sub_10004D868();
        v16 = v24;
      }

      v17 = *(v16 + 48);
      v18 = sub_10004FAD8();
      v19 = *(v18 - 8);
      v20 = *(v19 + 8);
      v20(v17 + *(v19 + 72) * v13, v18);

      sub_10004BF0C(v13, v16);
      result = (v20)(a2, v18);
      *v3 = v16;
    }

    else
    {
      v21 = sub_10004FAD8();
      v22 = *(*(v21 - 8) + 8);

      return v22(a2, v21);
    }
  }

  return result;
}

uint64_t sub_100048094@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10004F418(&qword_10006FCF0, type metadata accessor for ToolModel);
  sub_10004FB58();

  *a2 = *(v3 + 104);
}

uint64_t sub_100048140(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_100011E90(v4);
}

uint64_t sub_10004816C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10004F418(&qword_10006FCF0, type metadata accessor for ToolModel);
  sub_10004FB58();

  *a2 = *(v3 + 136);
  return result;
}

uint64_t sub_10004823C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10004F418(&qword_10006FCF0, type metadata accessor for ToolModel);
  sub_10004FB58();

  *a2 = *(v3 + 144);
  return result;
}

uint64_t sub_10004830C()
{
  swift_getKeyPath();
  sub_10004F418(&qword_100073490, type metadata accessor for ProofreadingModel);
  sub_10004FB58();

  return *(v0 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension17ProofreadingModel__handoffState);
}

uint64_t sub_1000483B4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10004F418(&qword_100073490, type metadata accessor for ProofreadingModel);
  sub_10004FB58();

  *a2 = *(v3 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension17ProofreadingModel__handoffState);
  return result;
}

uint64_t sub_100048464(uint64_t result)
{
  if (*(v1 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension17ProofreadingModel__handoffState) == (result & 1))
  {
    *(v1 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension17ProofreadingModel__handoffState) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10004F418(&qword_100073490, type metadata accessor for ProofreadingModel);
    sub_10004FB48();
  }

  return result;
}

unint64_t sub_10004857C()
{
  result = sub_100004A30(&_swiftEmptyArrayStorage);
  qword_10007B5C0 = result;
  return result;
}

void sub_1000485A4(void *a1)
{
  v2 = v1;
  v4 = sub_10004FAD8();
  v26 = *(v4 - 8);
  v5 = *(v26 + 64);
  __chkstk_darwin(v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v28 = v1;
  sub_10004F418(&qword_100073490, type metadata accessor for ProofreadingModel);
  sub_10004FB58();

  v8 = OBJC_IVAR____TtC31WritingToolsAppIntentsExtension17ProofreadingModel__session;
  v9 = *(v1 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension17ProofreadingModel__session);
  if (v9)
  {
    if (a1)
    {
      sub_10000E5D8(0, &unk_100071100, WTSession_ptr);
      v10 = v9;
      v11 = a1;
      v12 = sub_1000507A8();

      if (v12)
      {
        return;
      }
    }
  }

  else if (!a1)
  {
    return;
  }

  swift_getKeyPath();
  v28 = v2;
  sub_10004FB58();

  if (*(v2 + v8))
  {
    if (*(v2 + 104))
    {
      KeyPath = swift_getKeyPath();
      v25 = &v24;
      __chkstk_darwin(KeyPath);
      *(&v24 - 2) = v2;
      *(&v24 - 1) = 0;
      v28 = v2;
      sub_10004F418(&qword_10006FCF0, type metadata accessor for ToolModel);
      sub_10004FB48();
    }

    sub_10004915C(&_swiftEmptyArrayStorage);
    v15 = sub_100003760(&_swiftEmptyArrayStorage);
    sub_100049308(v15);
    if (*(v2 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension17ProofreadingModel__expandedSuggestion))
    {
      v16 = swift_getKeyPath();
      __chkstk_darwin(v16);
      *(&v24 - 2) = v2;
      *(&v24 - 1) = 0;
      v28 = v2;
      sub_10004FB48();
    }

    v25 = v4;
    v17 = sub_100003784(&_swiftEmptyArrayStorage);
    sub_1000497D0(v17);
    sub_100012198(0);
    if (*(v2 + 136))
    {
      v18 = swift_getKeyPath();
      __chkstk_darwin(v18);
      *(&v24 - 2) = v2;
      *(&v24 - 1) = 0;
      v28 = v2;
      sub_10004F418(&qword_10006FCF0, type metadata accessor for ToolModel);
      sub_10004FB48();
    }

    if (*(v2 + 144))
    {
      v19 = swift_getKeyPath();
      __chkstk_darwin(v19);
      *(&v24 - 2) = v2;
      *(&v24 - 8) = 0;
      v28 = v2;
      sub_10004F418(&qword_10006FCF0, type metadata accessor for ToolModel);
      sub_10004FB48();
    }

    else
    {
      *(v2 + 144) = 0;
      sub_100012A64(0);
    }

    v20 = v25;
    if (qword_10006EA48 != -1)
    {
      swift_once();
    }

    swift_getKeyPath();
    v28 = v2;
    sub_10004FB58();

    v21 = *(v2 + v8);
    if (!v21)
    {
      __break(1u);
      return;
    }

    v22 = [v21 uuid];
    sub_10004FAB8();

    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = qword_10007B5C0;
    qword_10007B5C0 = 0x8000000000000000;
    sub_10004C50C(v2, v7, isUniquelyReferenced_nonNull_native, &qword_10006ED28, &qword_100055970);
    (*(v26 + 8))(v7, v20);
    qword_10007B5C0 = v27;
  }

  else
  {
    if (!a1)
    {
      return;
    }

    if (qword_10006EA48 != -1)
    {
      swift_once();
    }

    v14 = [a1 uuid];
    sub_10004FAB8();

    swift_beginAccess();
    sub_100047CDC(0, v7, &qword_10006ED28, &qword_100055970);
  }

  swift_endAccess();
}

void sub_100048C8C(void *a1)
{
  v3 = OBJC_IVAR____TtC31WritingToolsAppIntentsExtension17ProofreadingModel__session;
  v4 = *(v1 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension17ProofreadingModel__session);
  if (!v4)
  {
    if (!a1)
    {
      v10 = 0;
      v6 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10004F418(&qword_100073490, type metadata accessor for ProofreadingModel);
    sub_10004FB48();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_10000E5D8(0, &unk_100071100, WTSession_ptr);
  v5 = v4;
  v6 = a1;
  v7 = sub_1000507A8();

  if ((v7 & 1) == 0)
  {
    goto LABEL_6;
  }

  v10 = *(v1 + v3);
LABEL_8:
  *(v1 + v3) = a1;
  v9 = v6;
  sub_1000485A4(v10);
}

uint64_t sub_100048E58()
{
  swift_getKeyPath();
  sub_10004F418(&qword_100073490, type metadata accessor for ProofreadingModel);
  sub_10004FB58();

  v1 = *(v0 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension17ProofreadingModel__task);
}

uint64_t sub_100048F04@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10004F418(&qword_100073490, type metadata accessor for ProofreadingModel);
  sub_10004FB58();

  *a2 = *(v3 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension17ProofreadingModel__task);
}

uint64_t sub_100048FB8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC31WritingToolsAppIntentsExtension17ProofreadingModel__task;
  if (!*(v1 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension17ProofreadingModel__task))
  {
    if (!a1)
    {
      goto LABEL_7;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10004F418(&qword_100073490, type metadata accessor for ProofreadingModel);
    sub_10004FB48();
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  v4 = *(v1 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension17ProofreadingModel__task);

  v5 = sub_100050688();

  if ((v5 & 1) == 0)
  {
    goto LABEL_6;
  }

  v6 = *(v1 + v3);
LABEL_7:
  *(v1 + v3) = a1;
}

uint64_t sub_1000491AC(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_10004F418(&qword_100073490, type metadata accessor for ProofreadingModel);
  sub_10004FB58();

  v4 = *(v2 + *a2);
}

uint64_t sub_100049250@<X0>(uint64_t *a1@<X0>, void *a2@<X4>, void *a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  sub_10004F418(&qword_100073490, type metadata accessor for ProofreadingModel);
  sub_10004FB58();

  *a3 = *(v5 + *a2);
}

uint64_t sub_100049344(uint64_t a1, uint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  v6 = *a2;
  v7 = *(v3 + *a2);

  LOBYTE(a3) = a3(v8, a1);

  if (a3)
  {
    v9 = *(v3 + v6);
    *(v3 + v6) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10004F418(&qword_100073490, type metadata accessor for ProofreadingModel);
    sub_10004FB48();
  }
}

void *sub_1000494B8(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_10004F418(&qword_100073490, type metadata accessor for ProofreadingModel);
  sub_10004FB58();

  v4 = *(v2 + *a2);
  v5 = v4;
  return v4;
}

id sub_100049560@<X0>(uint64_t *a1@<X0>, void *a2@<X4>, void *a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  sub_10004F418(&qword_100073490, type metadata accessor for ProofreadingModel);
  sub_10004FB58();

  v6 = *(v5 + *a2);
  *a3 = v6;

  return v6;
}

void sub_100049624(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC31WritingToolsAppIntentsExtension17ProofreadingModel__expandedSuggestion;
  v5 = *(v1 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension17ProofreadingModel__expandedSuggestion);
  if (!v5)
  {
    if (!a1)
    {
      v9 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10004F418(&qword_100073490, type metadata accessor for ProofreadingModel);
    sub_10004FB48();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_10000E5D8(0, &qword_10006F740, WTTextSuggestion_ptr);
  v6 = v5;
  v7 = a1;
  v8 = sub_1000507A8();

  if ((v8 & 1) == 0)
  {
    goto LABEL_6;
  }

  v9 = *(v2 + v4);
LABEL_8:
  *(v2 + v4) = a1;
}

void sub_10004980C(char a1, uint64_t a2, void (*a3)(void))
{
  v4 = v3;
  swift_getKeyPath();
  sub_10004F418(&qword_100073490, type metadata accessor for ProofreadingModel);
  sub_10004FB58();

  v9 = *(v3 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension17ProofreadingModel__session);
  if (v9 && (Strong = swift_unknownObjectWeakLoadStrong()) != 0)
  {
    v10 = Strong;
    swift_getKeyPath();
    v14 = v9;
    sub_10004FB58();

    if (*(v4 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension17ProofreadingModel__task))
    {
      v11 = *(v4 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension17ProofreadingModel__task);

      sub_100050698();
    }

    if (a2)
    {
      swift_errorRetain();
      v12 = sub_10004F958();
      [v10 endWritingToolsWithError:v12];

      v13 = v14;
    }

    else
    {
      v13 = v14;
      [v10 didEndWritingToolsSession:v14 accepted:(a1 == 2) | (a1 & 1)];
    }

    sub_100048C8C(0);
    if (a3)
    {
      a3();
    }

    swift_unknownObjectRelease();
  }

  else if (a3)
  {
    (a3)(Strong);
  }
}

uint64_t sub_100049A14()
{
  *(v0 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension17ProofreadingModel__handoffState) = 0;
  *(v0 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension17ProofreadingModel__session) = 0;
  *(v0 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension17ProofreadingModel__task) = 0;
  *(v0 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension17ProofreadingModel__suggestions) = &_swiftEmptyArrayStorage;
  *(v0 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension17ProofreadingModel__suggestionContextMapping) = sub_100003760(&_swiftEmptyArrayStorage);
  *(v0 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension17ProofreadingModel__expandedSuggestion) = 0;
  *(v0 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension17ProofreadingModel__suggestionStates) = sub_100003784(&_swiftEmptyArrayStorage);
  v1 = (v0 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension17ProofreadingModel__modelInfoString);
  *v1 = 0;
  v1[1] = 0xE000000000000000;
  v2 = (v0 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension17ProofreadingModel__inputStringForFeedback);
  *v2 = 0;
  v2[1] = 0xE000000000000000;
  v3 = (v0 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension17ProofreadingModel__detectedModelLanguage);
  *v3 = 0;
  v3[1] = 0;
  v4 = v0 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension17ProofreadingModel__analyticsInstance;
  *v4 = 0u;
  *(v4 + 16) = 0u;
  *(v4 + 32) = 0;
  *(v0 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension17ProofreadingModel__showingOriginal) = 0;
  v5 = OBJC_IVAR____TtC31WritingToolsAppIntentsExtension17ProofreadingModel__mostRecentlyReviewedSuggestionUUID;
  v6 = sub_10004FAD8();
  v7 = *(*(v6 - 8) + 56);
  v7(v0 + v5, 1, 1, v6);
  v7(v0 + v5, 1, 1, v6);
  _s31WritingToolsAppIntentsExtension0aB5ModelC22__observationRegistrar33_6346B183D012139D30F2228CDC89ECE911Observation0oH0Vvpfi_0();
  swift_unknownObjectWeakInit();
  *(v0 + 49) = 0u;
  *(v0 + 40) = 0u;
  *(v0 + 24) = 0u;
  *(v0 + 80) = 0;
  *(v0 + 88) = 0;
  *(v0 + 72) = 0;
  *(v0 + 96) = -1;
  *(v0 + 104) = 0;
  *(v0 + 112) = 0;
  *(v0 + 120) = 0;
  *(v0 + 128) = 0;
  *(v0 + 136) = 0;
  *(v0 + 144) = 0;
  _s31WritingToolsAppIntentsExtension0aB5ModelC22__observationRegistrar33_6346B183D012139D30F2228CDC89ECE911Observation0oH0Vvpfi_0();
  return v0;
}

uint64_t sub_100049BD4()
{
  v1 = *(v0 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension17ProofreadingModel__task);

  v2 = *(v0 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension17ProofreadingModel__suggestions);

  v3 = *(v0 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension17ProofreadingModel__suggestionContextMapping);

  v4 = *(v0 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension17ProofreadingModel__suggestionStates);

  v5 = *(v0 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension17ProofreadingModel__modelInfoString + 8);

  v6 = *(v0 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension17ProofreadingModel__inputStringForFeedback + 8);

  v7 = *(v0 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension17ProofreadingModel__detectedModelLanguage + 8);

  sub_10000CBA0(v0 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension17ProofreadingModel__analyticsInstance, &unk_1000711A0, &qword_100058BF0);
  sub_10000CBA0(v0 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension17ProofreadingModel__mostRecentlyReviewedSuggestionUUID, &qword_100070160, &qword_100057D20);
  v8 = OBJC_IVAR____TtC31WritingToolsAppIntentsExtension17ProofreadingModel___observationRegistrar;
  v9 = sub_10004FB98();
  v10 = *(*(v9 - 8) + 8);

  return v10(v0 + v8, v9);
}

uint64_t ProofreadingModel.deinit()
{
  v0 = ToolModel.deinit();

  v1 = *(v0 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension17ProofreadingModel__task);

  v2 = *(v0 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension17ProofreadingModel__suggestions);

  v3 = *(v0 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension17ProofreadingModel__suggestionContextMapping);

  v4 = *(v0 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension17ProofreadingModel__suggestionStates);

  v5 = *(v0 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension17ProofreadingModel__modelInfoString + 8);

  v6 = *(v0 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension17ProofreadingModel__inputStringForFeedback + 8);

  v7 = *(v0 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension17ProofreadingModel__detectedModelLanguage + 8);

  sub_10000CBA0(v0 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension17ProofreadingModel__analyticsInstance, &unk_1000711A0, &qword_100058BF0);
  sub_10000CBA0(v0 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension17ProofreadingModel__mostRecentlyReviewedSuggestionUUID, &qword_100070160, &qword_100057D20);
  v8 = OBJC_IVAR____TtC31WritingToolsAppIntentsExtension17ProofreadingModel___observationRegistrar;
  v9 = sub_10004FB98();
  (*(*(v9 - 8) + 8))(v0 + v8, v9);
  return v0;
}

uint64_t ProofreadingModel.__deallocating_deinit()
{
  v0 = *ProofreadingModel.deinit();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ProofreadingModel()
{
  result = qword_100072D30;
  if (!qword_100072D30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100049F04()
{
  sub_1000175C4();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    v2 = sub_10004FB98();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_10004A040(id *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1;
  sub_100048C8C(v2);
}

uint64_t sub_10004A074(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_100048FB8(v4);
}

unint64_t sub_10004A0A0(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_10004FAD8();
  sub_10004F418(&qword_10006ED10, &type metadata accessor for UUID);
  v5 = sub_100050428();

  return sub_10004A3CC(a1, v5);
}

unint64_t sub_10004A138(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_100050A78();
  sub_100050568();
  v6 = sub_100050AA8();

  return sub_10004A58C(a1, a2, v6);
}

unint64_t sub_10004A1B0(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_100050518();
  sub_100050A78();
  sub_100050568();
  v4 = sub_100050AA8();

  return sub_10004A644(a1, v4);
}

unint64_t sub_10004A244(unsigned __int8 a1)
{
  v3 = *(v1 + 40);
  sub_100050A78();
  sub_100050568();

  v4 = sub_100050AA8();

  return sub_10004A748(a1, v4);
}

unint64_t sub_10004A314(char a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_100050A78();
  sub_100050568();

  v5 = sub_100050AA8();

  return sub_10004A8E8(a1 & 1, v5);
}

unint64_t sub_10004A3CC(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  v4 = sub_10004FAD8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin();
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = v2;
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  v19 = v2 + 64;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v14 = *(v5 + 16);
    v13 = v5 + 16;
    v12 = v14;
    v15 = *(v13 + 56);
    do
    {
      v12(v8, *(v21 + 48) + v15 * v10, v4);
      sub_10004F418(&unk_1000711D0, &type metadata accessor for UUID);
      v16 = sub_100050448();
      (*(v13 - 8))(v8, v4);
      if (v16)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(v19 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

unint64_t sub_10004A58C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_1000509B8())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_10004A644(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_100050518();
      v9 = v8;
      if (v7 == sub_100050518() && v9 == v10)
      {
        break;
      }

      v12 = sub_1000509B8();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_10004A748(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      if (*(*(v2 + 48) + v4))
      {
        if (*(*(v2 + 48) + v4) == 1)
        {
          v7 = 0x69737365666F7270;
          v8 = 0xEC0000006C616E6FLL;
          v9 = a1;
          if (!a1)
          {
            goto LABEL_17;
          }
        }

        else
        {
          v8 = 0xE700000000000000;
          v7 = 0x657369636E6F63;
          v9 = a1;
          if (!a1)
          {
LABEL_17:
            v11 = 0xE800000000000000;
            if (v7 != 0x796C646E65697266)
            {
              goto LABEL_19;
            }

            goto LABEL_18;
          }
        }
      }

      else
      {
        v8 = 0xE800000000000000;
        v7 = 0x796C646E65697266;
        v9 = a1;
        if (!a1)
        {
          goto LABEL_17;
        }
      }

      if (v9 == 1)
      {
        v10 = 0x69737365666F7270;
      }

      else
      {
        v10 = 0x657369636E6F63;
      }

      if (v9 == 1)
      {
        v11 = 0xEC0000006C616E6FLL;
      }

      else
      {
        v11 = 0xE700000000000000;
      }

      if (v7 != v10)
      {
        goto LABEL_19;
      }

LABEL_18:
      if (v8 == v11)
      {

        return v4;
      }

LABEL_19:
      v12 = sub_1000509B8();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v6;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_10004A8E8(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    if (a1)
    {
      v6 = 0x654B657461657263;
    }

    else
    {
      v6 = 0x7A6972616D6D7573;
    }

    if (a1)
    {
      v7 = 0xEF73746E696F5079;
    }

    else
    {
      v7 = 0xE900000000000065;
    }

    while (1)
    {
      v8 = *(*(v2 + 48) + v4) ? 0x654B657461657263 : 0x7A6972616D6D7573;
      v9 = *(*(v2 + 48) + v4) ? 0xEF73746E696F5079 : 0xE900000000000065;
      if (v8 == v6 && v9 == v7)
      {
        break;
      }

      v11 = sub_1000509B8();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

uint64_t sub_10004AA3C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_100002814(&qword_10006ED30, &qword_100055978);
  v36 = a2;
  result = sub_100050908();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = (*(v5 + 56) + 32 * v21);
      if (v36)
      {
        sub_100005060(v25, v37);
      }

      else
      {
        sub_100015440(v25, v37);
      }

      v26 = *(v8 + 40);
      sub_100050A78();
      sub_100050568();
      result = sub_100050AA8();
      v27 = -1 << *(v8 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      result = sub_100005060(v37, (*(v8 + 56) + 32 * v16));
      ++*(v8 + 16);
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_36;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

uint64_t sub_10004ACF4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_100002814(&qword_10006ED40, &unk_10005AD50);
  v38 = a2;
  result = sub_100050908();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v37 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v39 = (v13 - 1) & v13;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(v5 + 56);
      v22 = *(*(v5 + 48) + 8 * v20);
      v23 = *(v21 + 8 * v20);
      if ((v38 & 1) == 0)
      {
        v24 = v22;
        v25 = v23;
      }

      v26 = *(v8 + 40);
      sub_100050518();
      sub_100050A78();
      sub_100050568();
      v27 = sub_100050AA8();

      v28 = -1 << *(v8 + 32);
      v29 = v27 & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v22;
      *(*(v8 + 56) + 8 * v16) = v23;
      ++*(v8 + 16);
      v5 = v37;
      v13 = v39;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v39 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v10, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_10004AFB8(uint64_t a1, int a2, uint64_t *a3, uint64_t *a4)
{
  v7 = v4;
  v10 = sub_10004FAD8();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v7;
  if (*(*v7 + 24) > a1)
  {
    v16 = *(*v7 + 24);
  }

  sub_100002814(a3, a4);
  v47 = a2;
  result = sub_100050908();
  v18 = result;
  if (*(v15 + 16))
  {
    v51 = v14;
    v43 = v7;
    v19 = 0;
    v20 = (v15 + 64);
    v21 = 1 << *(v15 + 32);
    if (v21 < 64)
    {
      v22 = ~(-1 << v21);
    }

    else
    {
      v22 = -1;
    }

    v23 = v22 & *(v15 + 64);
    v24 = (v21 + 63) >> 6;
    v44 = (v11 + 16);
    v45 = v15;
    v46 = v11;
    v48 = (v11 + 32);
    v25 = result + 64;
    while (v23)
    {
      v27 = __clz(__rbit64(v23));
      v23 &= v23 - 1;
LABEL_17:
      v30 = v27 | (v19 << 6);
      v31 = *(v15 + 48);
      v50 = *(v46 + 72);
      v32 = v31 + v50 * v30;
      if (v47)
      {
        (*v48)(v51, v32, v10);
        v49 = *(*(v15 + 56) + 8 * v30);
      }

      else
      {
        (*v44)(v51, v32, v10);
        v49 = *(*(v15 + 56) + 8 * v30);
      }

      v33 = *(v18 + 40);
      sub_10004F418(&qword_10006ED10, &type metadata accessor for UUID);
      result = sub_100050428();
      v34 = -1 << *(v18 + 32);
      v35 = result & ~v34;
      v36 = v35 >> 6;
      if (((-1 << v35) & ~*(v25 + 8 * (v35 >> 6))) == 0)
      {
        v37 = 0;
        v38 = (63 - v34) >> 6;
        while (++v36 != v38 || (v37 & 1) == 0)
        {
          v39 = v36 == v38;
          if (v36 == v38)
          {
            v36 = 0;
          }

          v37 |= v39;
          v40 = *(v25 + 8 * v36);
          if (v40 != -1)
          {
            v26 = __clz(__rbit64(~v40)) + (v36 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v26 = __clz(__rbit64((-1 << v35) & ~*(v25 + 8 * (v35 >> 6)))) | v35 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v25 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
      result = (*v48)(*(v18 + 48) + v50 * v26, v51, v10);
      *(*(v18 + 56) + 8 * v26) = v49;
      ++*(v18 + 16);
      v15 = v45;
    }

    v28 = v19;
    while (1)
    {
      v19 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v19 >= v24)
      {
        break;
      }

      v29 = v20[v19];
      ++v28;
      if (v29)
      {
        v27 = __clz(__rbit64(v29));
        v23 = (v29 - 1) & v29;
        goto LABEL_17;
      }
    }

    if ((v47 & 1) == 0)
    {

      v7 = v43;
      goto LABEL_36;
    }

    v41 = 1 << *(v15 + 32);
    v7 = v43;
    if (v41 >= 64)
    {
      bzero(v20, ((v41 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v20 = -1 << v41;
    }

    *(v15 + 16) = 0;
  }

LABEL_36:
  *v7 = v18;
  return result;
}

uint64_t sub_10004B394(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = sub_10004FAD8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v12 = *(*v3 + 24);
  }

  sub_100002814(&qword_10006EDB0, &qword_1000559F8);
  v43 = a2;
  result = sub_100050908();
  v14 = result;
  if (*(v11 + 16))
  {
    v47 = v10;
    v39 = v3;
    v15 = 0;
    v16 = (v11 + 64);
    v17 = 1 << *(v11 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v11 + 64);
    v20 = (v17 + 63) >> 6;
    v40 = (v7 + 16);
    v41 = v11;
    v42 = v7;
    v44 = (v7 + 32);
    v21 = result + 64;
    while (v19)
    {
      v23 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_17:
      v26 = v23 | (v15 << 6);
      v27 = *(v11 + 48);
      v46 = *(v42 + 72);
      v28 = v27 + v46 * v26;
      if (v43)
      {
        (*v44)(v47, v28, v6);
        v45 = *(*(v11 + 56) + 8 * v26);
      }

      else
      {
        (*v40)(v47, v28, v6);
        v45 = *(*(v11 + 56) + 8 * v26);
      }

      v29 = *(v14 + 40);
      sub_10004F418(&qword_10006ED10, &type metadata accessor for UUID);
      result = sub_100050428();
      v30 = -1 << *(v14 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v21 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v21 + 8 * v32);
          if (v36 != -1)
          {
            v22 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v31) & ~*(v21 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      result = (*v44)(*(v14 + 48) + v46 * v22, v47, v6);
      *(*(v14 + 56) + 8 * v22) = v45;
      ++*(v14 + 16);
      v11 = v41;
    }

    v24 = v15;
    while (1)
    {
      v15 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v15 >= v20)
      {
        break;
      }

      v25 = v16[v15];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v19 = (v25 - 1) & v25;
        goto LABEL_17;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v39;
      goto LABEL_36;
    }

    v37 = 1 << *(v11 + 32);
    v3 = v39;
    if (v37 >= 64)
    {
      bzero(v16, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v37;
    }

    *(v11 + 16) = 0;
  }

LABEL_36:
  *v3 = v14;
  return result;
}

uint64_t sub_10004B770(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = sub_10004FAD8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v12 = *(*v3 + 24);
  }

  sub_100002814(&qword_10006EDD0, &unk_10005AD40);
  v44 = a2;
  result = sub_100050908();
  v14 = result;
  if (*(v11 + 16))
  {
    v47 = v10;
    v40 = v3;
    v15 = 0;
    v16 = (v11 + 64);
    v17 = 1 << *(v11 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v11 + 64);
    v20 = (v17 + 63) >> 6;
    v41 = (v7 + 16);
    v42 = v7;
    v45 = (v7 + 32);
    v21 = result + 64;
    v43 = v11;
    while (v19)
    {
      v23 = __clz(__rbit64(v19));
      v24 = (v19 - 1) & v19;
LABEL_17:
      v27 = v23 | (v15 << 6);
      v46 = v24;
      v28 = *(v7 + 72);
      v29 = *(v11 + 48) + v28 * v27;
      if (v44)
      {
        (*v45)(v47, v29, v6);
      }

      else
      {
        (*v41)(v47, v29, v6);
      }

      v30 = *(*(v11 + 56) + v27);
      v31 = *(v14 + 40);
      sub_10004F418(&qword_10006ED10, &type metadata accessor for UUID);
      result = sub_100050428();
      v32 = -1 << *(v14 + 32);
      v33 = result & ~v32;
      v34 = v33 >> 6;
      if (((-1 << v33) & ~*(v21 + 8 * (v33 >> 6))) == 0)
      {
        v35 = 0;
        v36 = (63 - v32) >> 6;
        while (++v34 != v36 || (v35 & 1) == 0)
        {
          v37 = v34 == v36;
          if (v34 == v36)
          {
            v34 = 0;
          }

          v35 |= v37;
          v38 = *(v21 + 8 * v34);
          if (v38 != -1)
          {
            v22 = __clz(__rbit64(~v38)) + (v34 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v33) & ~*(v21 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      result = (*v45)(*(v14 + 48) + v28 * v22, v47, v6);
      *(*(v14 + 56) + v22) = v30;
      ++*(v14 + 16);
      v7 = v42;
      v11 = v43;
      v19 = v46;
    }

    v25 = v15;
    while (1)
    {
      v15 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v15 >= v20)
      {
        break;
      }

      v26 = v16[v15];
      ++v25;
      if (v26)
      {
        v23 = __clz(__rbit64(v26));
        v24 = (v26 - 1) & v26;
        goto LABEL_17;
      }
    }

    if ((v44 & 1) == 0)
    {

      v3 = v40;
      goto LABEL_36;
    }

    v39 = 1 << *(v11 + 32);
    v3 = v40;
    if (v39 >= 64)
    {
      bzero(v16, ((v39 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v39;
    }

    *(v11 + 16) = 0;
  }

LABEL_36:
  *v3 = v14;
  return result;
}

uint64_t sub_10004BB30(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = sub_10004FAD8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v12 = *(*v3 + 24);
  }

  sub_100002814(&qword_10006EDC0, &qword_100055A08);
  v43 = a2;
  result = sub_100050908();
  v14 = result;
  if (*(v11 + 16))
  {
    v47 = v10;
    v39 = v3;
    v15 = 0;
    v16 = (v11 + 64);
    v17 = 1 << *(v11 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v11 + 64);
    v20 = (v17 + 63) >> 6;
    v40 = (v7 + 16);
    v41 = v11;
    v42 = v7;
    v44 = (v7 + 32);
    v21 = result + 64;
    while (v19)
    {
      v23 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_17:
      v26 = v23 | (v15 << 6);
      v27 = *(v11 + 48);
      v46 = *(v42 + 72);
      v28 = v27 + v46 * v26;
      if (v43)
      {
        (*v44)(v47, v28, v6);
        v45 = *(*(v11 + 56) + 8 * v26);
      }

      else
      {
        (*v40)(v47, v28, v6);
        v45 = *(*(v11 + 56) + 8 * v26);
      }

      v29 = *(v14 + 40);
      sub_10004F418(&qword_10006ED10, &type metadata accessor for UUID);
      result = sub_100050428();
      v30 = -1 << *(v14 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v21 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v21 + 8 * v32);
          if (v36 != -1)
          {
            v22 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v31) & ~*(v21 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      result = (*v44)(*(v14 + 48) + v46 * v22, v47, v6);
      *(*(v14 + 56) + 8 * v22) = v45;
      ++*(v14 + 16);
      v11 = v41;
    }

    v24 = v15;
    while (1)
    {
      v15 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v15 >= v20)
      {
        break;
      }

      v25 = v16[v15];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v19 = (v25 - 1) & v25;
        goto LABEL_17;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v39;
      goto LABEL_36;
    }

    v37 = 1 << *(v11 + 32);
    v3 = v39;
    if (v37 >= 64)
    {
      bzero(v16, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v37;
    }

    *(v11 + 16) = 0;
  }

LABEL_36:
  *v3 = v14;
  return result;
}

unint64_t sub_10004BF0C(int64_t a1, uint64_t a2)
{
  v43 = sub_10004FAD8();
  v4 = *(v43 - 8);
  v5 = *(v4 + 64);
  result = __chkstk_darwin(v43);
  v42 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 + 64;
  v10 = -1 << *(a2 + 32);
  v11 = (a1 + 1) & ~v10;
  if ((*(a2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v44 = v7;
    v13 = sub_100050818();
    v14 = v43;
    v7 = v44;
    v15 = v12;
    v41 = (v13 + 1) & v12;
    v17 = *(v4 + 16);
    v16 = v4 + 16;
    v39 = a2 + 64;
    v40 = v17;
    v18 = *(v16 + 56);
    v38 = (v16 - 8);
    do
    {
      v19 = v18;
      v20 = v18 * v11;
      v21 = v42;
      v22 = v15;
      v23 = v16;
      v24 = v7;
      v40(v42, *(v7 + 48) + v18 * v11, v14);
      v25 = *(v24 + 40);
      sub_10004F418(&qword_10006ED10, &type metadata accessor for UUID);
      v26 = sub_100050428();
      result = (*v38)(v21, v14);
      v15 = v22;
      v27 = v26 & v22;
      if (a1 >= v41)
      {
        if (v27 >= v41 && a1 >= v27)
        {
LABEL_15:
          v7 = v44;
          v30 = *(v44 + 48);
          result = v30 + v19 * a1;
          v16 = v23;
          if (v19 * a1 < v20 || (v18 = v19, result >= v30 + v20 + v19))
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v7 = v44;
            v18 = v19;
            v15 = v22;
            v9 = v39;
          }

          else
          {
            v9 = v39;
            if (v19 * a1 != v20)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v7 = v44;
              v18 = v19;
              v15 = v22;
            }
          }

          v31 = *(v7 + 56);
          v32 = (v31 + 8 * a1);
          v33 = (v31 + 8 * v11);
          if (a1 != v11 || v32 >= v33 + 1)
          {
            *v32 = *v33;
            a1 = v11;
          }

          goto LABEL_4;
        }
      }

      else if (v27 >= v41 || a1 >= v27)
      {
        goto LABEL_15;
      }

      v16 = v23;
      v9 = v39;
      v18 = v19;
      v7 = v44;
LABEL_4:
      v11 = (v11 + 1) & v15;
    }

    while (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v34 = *(v7 + 16);
  v35 = __OFSUB__(v34, 1);
  v36 = v34 - 1;
  if (v35)
  {
    __break(1u);
  }

  else
  {
    *(v7 + 16) = v36;
    ++*(v7 + 36);
  }

  return result;
}

_OWORD *sub_10004C22C(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_10004A138(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_10004CDFC();
      v11 = v19;
      goto LABEL_8;
    }

    sub_10004AA3C(v16, a4 & 1);
    v20 = *v5;
    v11 = sub_10004A138(a2, a3);
    if ((v17 & 1) != (v21 & 1))
    {
LABEL_16:
      result = sub_1000509C8();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v22 = *v5;
  if (v17)
  {
    v23 = (v22[7] + 32 * v11);
    sub_10000CC70(v23);

    return sub_100005060(a1, v23);
  }

  else
  {
    sub_10004CC20(v11, a2, a3, a1, v22);
  }
}

uint64_t sub_10004C390(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_10004A1B0(a2);
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 < v13 || (a3 & 1) != 0)
    {
      sub_10004ACF4(v13, a3 & 1);
      v17 = *v4;
      v8 = sub_10004A1B0(a2);
      if ((v14 & 1) != (v18 & 1))
      {
LABEL_18:
        type metadata accessor for IAPayloadKey(0);
        sub_1000509C8();
        __break(1u);
        return _objc_release_x1();
      }
    }

    else
    {
      v16 = v8;
      sub_10004CFA0();
      v8 = v16;
    }
  }

  v19 = *v4;
  if (v14)
  {
    v20 = v19[7];
    v21 = *(v20 + 8 * v8);
    *(v20 + 8 * v8) = a1;

    return _objc_release_x1();
  }

  v19[(v8 >> 6) + 8] |= 1 << v8;
  *(v19[6] + 8 * v8) = a2;
  *(v19[7] + 8 * v8) = a1;
  v22 = v19[2];
  v12 = __OFADD__(v22, 1);
  v23 = v22 + 1;
  if (v12)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v19[2] = v23;

  return _objc_retain_x1();
}

uint64_t sub_10004C50C(uint64_t a1, uint64_t a2, char a3, uint64_t *a4, uint64_t *a5)
{
  v30 = a4;
  v31 = a5;
  v6 = v5;
  v10 = sub_10004FAD8();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v5;
  v17 = sub_10004A0A0(a2);
  v18 = *(v15 + 16);
  v19 = (v16 & 1) == 0;
  v20 = v18 + v19;
  if (__OFADD__(v18, v19))
  {
    __break(1u);
    goto LABEL_15;
  }

  v21 = v16;
  v22 = *(v15 + 24);
  if (v22 < v20 || (a3 & 1) == 0)
  {
    if (v22 >= v20 && (a3 & 1) == 0)
    {
      sub_10004D100(v30, v31);
      goto LABEL_7;
    }

    sub_10004AFB8(v20, a3 & 1, v30, v31);
    v27 = *v6;
    v28 = sub_10004A0A0(a2);
    if ((v21 & 1) == (v29 & 1))
    {
      v17 = v28;
      v23 = *v6;
      if (v21)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v11 + 16))(v14, a2, v10);
      return sub_10004CC8C(v17, v14, a1, v23);
    }

LABEL_15:
    result = sub_1000509C8();
    __break(1u);
    return result;
  }

LABEL_7:
  v23 = *v6;
  if ((v21 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v24 = v23[7];
  v25 = *(v24 + 8 * v17);
  *(v24 + 8 * v17) = a1;
}

uint64_t sub_10004C6E8(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_10004FAD8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v15 = sub_10004A0A0(a2);
  v16 = *(v13 + 16);
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_15;
  }

  v19 = v14;
  v20 = *(v13 + 24);
  if (v20 < v18 || (a3 & 1) == 0)
  {
    if (v20 >= v18 && (a3 & 1) == 0)
    {
      sub_10004D378();
      goto LABEL_7;
    }

    sub_10004B394(v18, a3 & 1);
    v25 = *v4;
    v26 = sub_10004A0A0(a2);
    if ((v19 & 1) == (v27 & 1))
    {
      v15 = v26;
      v21 = *v4;
      if (v19)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v12, a2, v8);
      return sub_10004CC8C(v15, v12, a1, v21);
    }

LABEL_15:
    result = sub_1000509C8();
    __break(1u);
    return result;
  }

LABEL_7:
  v21 = *v4;
  if ((v19 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v22 = v21[7];
  v23 = *(v22 + 8 * v15);
  *(v22 + 8 * v15) = a1;
}

uint64_t sub_10004C8B4(char a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_10004FAD8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v15 = sub_10004A0A0(a2);
  v16 = v13[2];
  v17 = (v14 & 1) == 0;
  result = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_14;
  }

  v19 = v14;
  v20 = v13[3];
  if (v20 >= result && (a3 & 1) != 0)
  {
LABEL_7:
    v21 = *v4;
    if (v19)
    {
LABEL_8:
      *(v21[7] + v15) = a1 & 1;
      return result;
    }

    goto LABEL_11;
  }

  if (v20 >= result && (a3 & 1) == 0)
  {
    result = sub_10004D5F8();
    goto LABEL_7;
  }

  sub_10004B770(result, a3 & 1);
  v22 = *v4;
  result = sub_10004A0A0(a2);
  if ((v19 & 1) != (v23 & 1))
  {
LABEL_14:
    result = sub_1000509C8();
    __break(1u);
    return result;
  }

  v15 = result;
  v21 = *v4;
  if (v19)
  {
    goto LABEL_8;
  }

LABEL_11:
  (*(v9 + 16))(v12, a2, v8);
  return sub_10004CD44(v15, v12, a1 & 1, v21);
}

void sub_10004CA54(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_10004FAD8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v15 = sub_10004A0A0(a2);
  v16 = *(v13 + 16);
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_15;
  }

  v19 = v14;
  v20 = *(v13 + 24);
  if (v20 < v18 || (a3 & 1) == 0)
  {
    if (v20 >= v18 && (a3 & 1) == 0)
    {
      sub_10004D868();
      goto LABEL_7;
    }

    sub_10004BB30(v18, a3 & 1);
    v24 = *v4;
    v25 = sub_10004A0A0(a2);
    if ((v19 & 1) == (v26 & 1))
    {
      v15 = v25;
      v21 = *v4;
      if (v19)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v12, a2, v8);
      sub_10004CC8C(v15, v12, a1, v21);
      return;
    }

LABEL_15:
    sub_1000509C8();
    __break(1u);
    return;
  }

LABEL_7:
  v21 = *v4;
  if ((v19 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v22 = v21[7];
  v23 = *(v22 + 8 * v15);
  *(v22 + 8 * v15) = a1;
}

_OWORD *sub_10004CC20(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_100005060(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

uint64_t sub_10004CC8C(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_10004FAD8();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

uint64_t sub_10004CD44(unint64_t a1, uint64_t a2, char a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_10004FAD8();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

void *sub_10004CDFC()
{
  v1 = v0;
  sub_100002814(&qword_10006ED30, &qword_100055978);
  v2 = *v0;
  v3 = sub_1000508F8();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        sub_100015440(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_100005060(v25, (*(v4 + 56) + v22));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v24;
        goto LABEL_21;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v4;
  }

  return result;
}

id sub_10004CFA0()
{
  v1 = v0;
  sub_100002814(&qword_10006ED40, &unk_10005AD50);
  v2 = *v0;
  v3 = sub_1000508F8();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        v19 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 8 * v17) = v19;
        v20 = v18;
        result = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_10004D100(uint64_t *a1, uint64_t *a2)
{
  v5 = v2;
  v36 = sub_10004FAD8();
  v38 = *(v36 - 8);
  v6 = *(v38 + 64);
  __chkstk_darwin(v36);
  v35 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100002814(a1, a2);
  v8 = *v2;
  v9 = sub_1000508F8();
  v10 = v9;
  if (*(v8 + 16))
  {
    result = (v9 + 64);
    v12 = ((1 << *(v10 + 32)) + 63) >> 6;
    v31 = v5;
    v32 = (v8 + 64);
    if (v10 != v8 || result >= v8 + 64 + 8 * v12)
    {
      result = memmove(result, v32, 8 * v12);
    }

    v14 = 0;
    v15 = *(v8 + 16);
    v37 = v10;
    *(v10 + 16) = v15;
    v16 = 1 << *(v8 + 32);
    v17 = -1;
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    v18 = v17 & *(v8 + 64);
    v19 = (v16 + 63) >> 6;
    v33 = v38 + 32;
    v34 = v38 + 16;
    if (v18)
    {
      do
      {
        v20 = __clz(__rbit64(v18));
        v39 = (v18 - 1) & v18;
LABEL_17:
        v23 = v20 | (v14 << 6);
        v24 = v38;
        v25 = *(v38 + 72) * v23;
        v27 = v35;
        v26 = v36;
        (*(v38 + 16))(v35, *(v8 + 48) + v25, v36);
        v28 = *(*(v8 + 56) + 8 * v23);
        v29 = v37;
        (*(v24 + 32))(*(v37 + 48) + v25, v27, v26);
        *(*(v29 + 56) + 8 * v23) = v28;

        v18 = v39;
      }

      while (v39);
    }

    v21 = v14;
    while (1)
    {
      v14 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v14 >= v19)
      {

        v5 = v31;
        v10 = v37;
        goto LABEL_21;
      }

      v22 = *(v32 + v14);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v39 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v5 = v10;
  }

  return result;
}

char *sub_10004D378()
{
  v1 = v0;
  v34 = sub_10004FAD8();
  v36 = *(v34 - 8);
  v2 = *(v36 + 64);
  __chkstk_darwin(v34);
  v33 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100002814(&qword_10006EDB0, &qword_1000559F8);
  v4 = *v0;
  v5 = sub_1000508F8();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v29 = v1;
    v30 = v4 + 64;
    if (v6 != v4 || result >= &v8[8 * v9])
    {
      result = memmove(result, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v35 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v31 = v36 + 32;
    v32 = v36 + 16;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v37 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = v36;
        v21 = *(v36 + 72) * v19;
        v23 = v33;
        v22 = v34;
        (*(v36 + 16))(v33, *(v4 + 48) + v21, v34);
        v24 = *(*(v4 + 56) + 8 * v19);
        v25 = v4;
        v26 = v35;
        (*(v20 + 32))(*(v35 + 48) + v21, v23, v22);
        v27 = *(v26 + 56);
        v4 = v25;
        *(v27 + 8 * v19) = v24;

        v14 = v37;
      }

      while (v37);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v29;
        v6 = v35;
        goto LABEL_18;
      }

      v18 = *(v30 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v37 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

char *sub_10004D5F8()
{
  v1 = v0;
  v32 = sub_10004FAD8();
  v34 = *(v32 - 8);
  v2 = *(v34 + 64);
  __chkstk_darwin(v32);
  v31 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100002814(&qword_10006EDD0, &unk_10005AD40);
  v4 = *v0;
  v5 = sub_1000508F8();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v27 = v1;
    v28 = v4 + 64;
    if (v6 != v4 || result >= &v8[8 * v9])
    {
      result = memmove(result, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v33 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v29 = v34 + 32;
    v30 = v34 + 16;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v35 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = v34;
        v21 = *(v34 + 72) * v19;
        v23 = v31;
        v22 = v32;
        (*(v34 + 16))(v31, *(v4 + 48) + v21, v32);
        v24 = *(*(v4 + 56) + v19);
        v25 = v33;
        result = (*(v20 + 32))(*(v33 + 48) + v21, v23, v22);
        *(*(v25 + 56) + v19) = v24;
        v14 = v35;
      }

      while (v35);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v27;
        v6 = v33;
        goto LABEL_18;
      }

      v18 = *(v28 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v35 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

char *sub_10004D868()
{
  v1 = v0;
  v32 = sub_10004FAD8();
  v34 = *(v32 - 8);
  v2 = *(v34 + 64);
  __chkstk_darwin(v32);
  v31 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100002814(&qword_10006EDC0, &qword_100055A08);
  v4 = *v0;
  v5 = sub_1000508F8();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v27 = v1;
    v28 = v4 + 64;
    if (v6 != v4 || result >= &v8[8 * v9])
    {
      result = memmove(result, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v33 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v29 = v34 + 32;
    v30 = v34 + 16;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v35 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = v34;
        v21 = *(v34 + 72) * v19;
        v23 = v31;
        v22 = v32;
        (*(v34 + 16))(v31, *(v4 + 48) + v21, v32);
        v24 = *(*(v4 + 56) + 8 * v19);
        v25 = v33;
        (*(v20 + 32))(*(v33 + 48) + v21, v23, v22);
        *(*(v25 + 56) + 8 * v19) = v24;
        result = v24;
        v14 = v35;
      }

      while (v35);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v27;
        v6 = v33;
        goto LABEL_18;
      }

      v18 = *(v28 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v35 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

void sub_10004DADC(uint64_t a1, uint64_t a2)
{
  v60 = sub_10004FAD8();
  v55 = *(v60 - 8);
  v4 = *(v55 + 64);
  v5 = __chkstk_darwin(v60);
  v56 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v54 = &v47 - v7;
  v8 = sub_100002814(&qword_1000734A8, &qword_10005AC58);
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8 - 8);
  __chkstk_darwin(v10);
  v13 = &v47 - v11;
  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v52 = a2;
    v53 = v12;
    v14 = 0;
    v50 = a1;
    v17 = *(a1 + 64);
    v16 = a1 + 64;
    v15 = v17;
    v18 = 1 << *(v16 - 32);
    v19 = -1;
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    v20 = v19 & v15;
    v47 = (v18 + 63) >> 6;
    v48 = v16;
    v49 = v55 + 16;
    v57 = &v47 - v11;
    v58 = (v55 + 32);
    v51 = (v55 + 8);
    while (v20)
    {
      v59 = (v20 - 1) & v20;
      v21 = __clz(__rbit64(v20)) | (v14 << 6);
      v22 = v53;
LABEL_16:
      v27 = v50;
      v28 = v54;
      v29 = v55;
      v30 = v60;
      (*(v55 + 16))(v54, *(v50 + 48) + *(v55 + 72) * v21, v60);
      v31 = *(*(v27 + 56) + 8 * v21);
      v32 = sub_100002814(&qword_1000734B0, &qword_10005AC60);
      v33 = *(v32 + 48);
      (*(v29 + 32))(v22, v28, v30);
      *(v22 + v33) = v31;
      (*(*(v32 - 8) + 56))(v22, 0, 1, v32);
      v34 = v31;
      v13 = v57;
LABEL_17:
      sub_10004F500(v22, v13, &qword_1000734A8, &qword_10005AC58);
      v35 = sub_100002814(&qword_1000734B0, &qword_10005AC60);
      if ((*(*(v35 - 8) + 48))(v13, 1, v35) == 1)
      {
        return;
      }

      v36 = *(v35 + 48);
      v37 = v56;
      v38 = v60;
      (*v58)(v56, v13, v60);
      v39 = *&v13[v36];
      v40 = v52;
      v41 = sub_10004A0A0(v37);
      v43 = v42;
      (*v51)(v37, v38);
      if ((v43 & 1) == 0)
      {

        return;
      }

      sub_10000E5D8(0, &qword_10006F748, WTContext_ptr);
      v44 = *(*(v40 + 56) + 8 * v41);
      v45 = sub_1000507A8();

      v13 = v57;
      v20 = v59;
      if ((v45 & 1) == 0)
      {
        return;
      }
    }

    if (v47 <= v14 + 1)
    {
      v23 = v14 + 1;
    }

    else
    {
      v23 = v47;
    }

    v24 = v23 - 1;
    v22 = v53;
    while (1)
    {
      v25 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v25 >= v47)
      {
        v46 = sub_100002814(&qword_1000734B0, &qword_10005AC60);
        (*(*(v46 - 8) + 56))(v22, 1, 1, v46);
        v59 = 0;
        v14 = v24;
        goto LABEL_17;
      }

      v26 = *(v48 + 8 * v25);
      ++v14;
      if (v26)
      {
        v59 = (v26 - 1) & v26;
        v21 = __clz(__rbit64(v26)) | (v25 << 6);
        v14 = v25;
        goto LABEL_16;
      }
    }

    __break(1u);
  }
}

uint64_t sub_10004DF7C(uint64_t a1, uint64_t a2)
{
  v58 = sub_10004FAD8();
  v53 = *(v58 - 8);
  v4 = *(v53 + 64);
  v5 = __chkstk_darwin(v58);
  v54 = v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v52 = v48 - v7;
  v8 = sub_100002814(&qword_100073498, &qword_10005ABF8);
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8 - 8);
  result = __chkstk_darwin(v10);
  v14 = v48 - v12;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v51 = v13;
  v15 = 0;
  v49 = a1;
  v18 = *(a1 + 64);
  v17 = a1 + 64;
  v16 = v18;
  v19 = 1 << *(v17 - 32);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & v16;
  v22 = (v19 + 63) >> 6;
  v48[0] = v17;
  v48[1] = v53 + 16;
  v55 = v48 - v12;
  v56 = (v53 + 32);
  v50 = (v53 + 8);
  while (v21)
  {
    v57 = (v21 - 1) & v21;
    v23 = __clz(__rbit64(v21)) | (v15 << 6);
LABEL_16:
    v28 = v49;
    v29 = v52;
    v30 = v53;
    v31 = v58;
    (*(v53 + 16))(v52, *(v49 + 48) + *(v53 + 72) * v23, v58);
    v32 = *(*(v28 + 56) + 8 * v23);
    v33 = sub_100002814(&qword_1000734A0, &qword_10005AC00);
    v34 = *(v33 + 48);
    v35 = *(v30 + 32);
    v36 = v51;
    v35(v51, v29, v31);
    *(v36 + v34) = v32;
    (*(*(v33 - 8) + 56))(v36, 0, 1, v33);
    v14 = v55;
LABEL_17:
    sub_10004F500(v36, v14, &qword_100073498, &qword_10005ABF8);
    v37 = sub_100002814(&qword_1000734A0, &qword_10005AC00);
    v38 = (*(*(v37 - 8) + 48))(v14, 1, v37);
    v39 = v38 == 1;
    if (v38 != 1)
    {
      v40 = *(v37 + 48);
      v41 = v54;
      v42 = v58;
      (*v56)(v54, v14, v58);
      v43 = *&v14[v40];
      v44 = sub_10004A0A0(v41);
      LOBYTE(v40) = v45;
      result = (*v50)(v41, v42);
      if (v40)
      {
        v46 = *(*(a2 + 56) + 8 * v44) == v43;
        v14 = v55;
        v21 = v57;
        if (v46)
        {
          continue;
        }
      }
    }

    return v39;
  }

  if (v22 <= v15 + 1)
  {
    v24 = v15 + 1;
  }

  else
  {
    v24 = v22;
  }

  v25 = v24 - 1;
  while (1)
  {
    v26 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v26 >= v22)
    {
      v47 = sub_100002814(&qword_1000734A0, &qword_10005AC00);
      v36 = v51;
      (*(*(v47 - 8) + 56))(v51, 1, 1, v47);
      v57 = 0;
      v15 = v25;
      goto LABEL_17;
    }

    v27 = *(v48[0] + 8 * v26);
    ++v15;
    if (v27)
    {
      v57 = (v27 - 1) & v27;
      v23 = __clz(__rbit64(v27)) | (v26 << 6);
      v15 = v26;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

void sub_10004E464(id *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1;
  sub_100049624(v2);
}

void sub_10004E494()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension17ProofreadingModel__expandedSuggestion);
  *(v1 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension17ProofreadingModel__expandedSuggestion) = v2;
  v4 = v2;
}

uint64_t sub_10004E574(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v6 = *a1;
  v7 = *a2;

  return a5(v8);
}

uint64_t sub_10004E5C8()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension17ProofreadingModel__task);
  *(v1 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension17ProofreadingModel__task) = *(v0 + 24);
}

void sub_10004E60C()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = *(v2 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension17ProofreadingModel__session);
  *(v2 + OBJC_IVAR____TtC31WritingToolsAppIntentsExtension17ProofreadingModel__session) = v1;
  v4 = v1;
  sub_1000485A4(v3);
}

uint64_t sub_10004E660(uint64_t a1, uint64_t a2)
{
  v58 = sub_10004FAD8();
  v53 = *(v58 - 8);
  v4 = *(v53 + 64);
  v5 = __chkstk_darwin(v58);
  v54 = v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v52 = v48 - v7;
  v8 = sub_100002814(&qword_1000734D8, &qword_10005AD80);
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8 - 8);
  result = __chkstk_darwin(v10);
  v14 = v48 - v12;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v51 = v13;
  v15 = 0;
  v49 = a1;
  v18 = *(a1 + 64);
  v17 = a1 + 64;
  v16 = v18;
  v19 = 1 << *(v17 - 32);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & v16;
  v22 = (v19 + 63) >> 6;
  v48[0] = v17;
  v48[1] = v53 + 16;
  v55 = v48 - v12;
  v56 = (v53 + 32);
  v50 = (v53 + 8);
  while (v21)
  {
    v57 = (v21 - 1) & v21;
    v23 = __clz(__rbit64(v21)) | (v15 << 6);
LABEL_16:
    v28 = v49;
    v29 = v52;
    v30 = v53;
    v31 = v58;
    (*(v53 + 16))(v52, *(v49 + 48) + *(v53 + 72) * v23, v58);
    v32 = *(*(v28 + 56) + v23);
    v33 = sub_100002814(&qword_1000734E0, &qword_10005AD88);
    v34 = *(v33 + 48);
    v35 = *(v30 + 32);
    v36 = v51;
    v35(v51, v29, v31);
    *(v36 + v34) = v32;
    (*(*(v33 - 8) + 56))(v36, 0, 1, v33);
    v14 = v55;
LABEL_17:
    sub_10004F500(v36, v14, &qword_1000734D8, &qword_10005AD80);
    v37 = sub_100002814(&qword_1000734E0, &qword_10005AD88);
    v38 = (*(*(v37 - 8) + 48))(v14, 1, v37);
    v39 = v38 == 1;
    if (v38 != 1)
    {
      v40 = *(v37 + 48);
      v41 = v54;
      v42 = v58;
      (*v56)(v54, v14, v58);
      v43 = v14[v40];
      v44 = sub_10004A0A0(v41);
      LOBYTE(v40) = v45;
      result = (*v50)(v41, v42);
      if (v40)
      {
        v46 = v43 == *(*(a2 + 56) + v44);
        v14 = v55;
        v21 = v57;
        if (v46)
        {
          continue;
        }
      }
    }

    return v39;
  }

  if (v22 <= v15 + 1)
  {
    v24 = v15 + 1;
  }

  else
  {
    v24 = v22;
  }

  v25 = v24 - 1;
  while (1)
  {
    v26 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v26 >= v22)
    {
      v47 = sub_100002814(&qword_1000734E0, &qword_10005AD88);
      v36 = v51;
      (*(*(v47 - 8) + 56))(v51, 1, 1, v47);
      v57 = 0;
      v15 = v25;
      goto LABEL_17;
    }

    v27 = *(v48[0] + 8 * v26);
    ++v15;
    if (v27)
    {
      v57 = (v27 - 1) & v27;
      v23 = __clz(__rbit64(v27)) | (v26 << 6);
      v15 = v26;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

void sub_10004EAC0(uint64_t a1, uint64_t a2)
{
  v60 = sub_10004FAD8();
  v55 = *(v60 - 8);
  v4 = *(v55 + 64);
  v5 = __chkstk_darwin(v60);
  v56 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v54 = &v47 - v7;
  v8 = sub_100002814(&qword_1000734C8, &qword_10005AD70);
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8 - 8);
  __chkstk_darwin(v10);
  v13 = &v47 - v11;
  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v52 = a2;
    v53 = v12;
    v14 = 0;
    v50 = a1;
    v17 = *(a1 + 64);
    v16 = a1 + 64;
    v15 = v17;
    v18 = 1 << *(v16 - 32);
    v19 = -1;
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    v20 = v19 & v15;
    v47 = (v18 + 63) >> 6;
    v48 = v16;
    v49 = v55 + 16;
    v57 = &v47 - v11;
    v58 = (v55 + 32);
    v51 = (v55 + 8);
    while (v20)
    {
      v59 = (v20 - 1) & v20;
      v21 = __clz(__rbit64(v20)) | (v14 << 6);
      v22 = v53;
LABEL_16:
      v27 = v50;
      v28 = v54;
      v29 = v55;
      v30 = v60;
      (*(v55 + 16))(v54, *(v50 + 48) + *(v55 + 72) * v21, v60);
      v31 = *(*(v27 + 56) + 8 * v21);
      v32 = sub_100002814(&qword_1000734D0, &qword_10005AD78);
      v33 = *(v32 + 48);
      (*(v29 + 32))(v22, v28, v30);
      *(v22 + v33) = v31;
      (*(*(v32 - 8) + 56))(v22, 0, 1, v32);
      v34 = v31;
      v13 = v57;
LABEL_17:
      sub_10004F500(v22, v13, &qword_1000734C8, &qword_10005AD70);
      v35 = sub_100002814(&qword_1000734D0, &qword_10005AD78);
      if ((*(*(v35 - 8) + 48))(v13, 1, v35) == 1)
      {
        return;
      }

      v36 = *(v35 + 48);
      v37 = v56;
      v38 = v60;
      (*v58)(v56, v13, v60);
      v39 = *&v13[v36];
      v40 = v52;
      v41 = sub_10004A0A0(v37);
      v43 = v42;
      (*v51)(v37, v38);
      if ((v43 & 1) == 0)
      {

        return;
      }

      sub_10000E5D8(0, &qword_100071130, NSAttributedString_ptr);
      v44 = *(*(v40 + 56) + 8 * v41);
      v45 = sub_1000507A8();

      v13 = v57;
      v20 = v59;
      if ((v45 & 1) == 0)
      {
        return;
      }
    }

    if (v47 <= v14 + 1)
    {
      v23 = v14 + 1;
    }

    else
    {
      v23 = v47;
    }

    v24 = v23 - 1;
    v22 = v53;
    while (1)
    {
      v25 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v25 >= v47)
      {
        v46 = sub_100002814(&qword_1000734D0, &qword_10005AD78);
        (*(*(v46 - 8) + 56))(v22, 1, 1, v46);
        v59 = 0;
        v14 = v24;
        goto LABEL_17;
      }

      v26 = *(v48 + 8 * v25);
      ++v14;
      if (v26)
      {
        v59 = (v26 - 1) & v26;
        v21 = __clz(__rbit64(v26)) | (v25 << 6);
        v14 = v25;
        goto LABEL_16;
      }
    }

    __break(1u);
  }
}

uint64_t sub_10004EF60(uint64_t a1, uint64_t a2)
{
  v60 = sub_10004FAD8();
  v55 = *(v60 - 8);
  v4 = *(v55 + 64);
  v5 = __chkstk_darwin(v60);
  v56 = v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v54 = v50 - v7;
  v8 = sub_100002814(&qword_1000734B8, &qword_10005AD60);
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8 - 8);
  v57 = v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v10);
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v53 = v50 - v13;
  v14 = 0;
  v51 = a1;
  v17 = *(a1 + 64);
  v16 = a1 + 64;
  v15 = v17;
  v18 = 1 << *(v16 - 32);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v20 = v19 & v15;
  v21 = (v18 + 63) >> 6;
  v50[0] = v16;
  v50[1] = v55 + 16;
  v58 = (v55 + 32);
  v52 = (v55 + 8);
  while (v20)
  {
    v59 = (v20 - 1) & v20;
    v22 = __clz(__rbit64(v20)) | (v14 << 6);
LABEL_16:
    v27 = v51;
    v28 = v54;
    v29 = v55;
    v30 = v60;
    (*(v55 + 16))(v54, *(v51 + 48) + *(v55 + 72) * v22, v60);
    v31 = *(*(v27 + 56) + 8 * v22);
    v32 = sub_100002814(&qword_1000734C0, &qword_10005AD68);
    v33 = *(v32 + 48);
    v34 = *(v29 + 32);
    v35 = v57;
    v34(v57, v28, v30);
    *(v35 + v33) = v31;
    (*(*(v32 - 8) + 56))(v35, 0, 1, v32);

LABEL_17:
    v36 = v53;
    sub_10004F500(v35, v53, &qword_1000734B8, &qword_10005AD60);
    v37 = sub_100002814(&qword_1000734C0, &qword_10005AD68);
    v38 = (*(*(v37 - 8) + 48))(v36, 1, v37);
    v39 = v38 == 1;
    if (v38 == 1)
    {
      return v39;
    }

    v40 = *(v37 + 48);
    v41 = v56;
    v42 = v60;
    (*v58)(v56, v36, v60);
    v43 = *(v36 + v40);
    v44 = sub_10004A0A0(v41);
    LOBYTE(v40) = v45;
    (*v52)(v41, v42);
    if ((v40 & 1) == 0)
    {

      return 0;
    }

    v46 = *(*(a2 + 56) + 8 * v44);

    v48 = sub_10000D9F0(v47, v43);

    v20 = v59;
    if ((v48 & 1) == 0)
    {
      return v39;
    }
  }

  if (v21 <= v14 + 1)
  {
    v23 = v14 + 1;
  }

  else
  {
    v23 = v21;
  }

  v24 = v23 - 1;
  while (1)
  {
    v25 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v25 >= v21)
    {
      v49 = sub_100002814(&qword_1000734C0, &qword_10005AD68);
      v35 = v57;
      (*(*(v49 - 8) + 56))(v57, 1, 1, v49);
      v59 = 0;
      v14 = v24;
      goto LABEL_17;
    }

    v26 = *(v50[0] + 8 * v25);
    ++v14;
    if (v26)
    {
      v59 = (v26 - 1) & v26;
      v22 = __clz(__rbit64(v26)) | (v25 << 6);
      v14 = v25;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10004F418(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10004F490(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_100011E90(v4);
}

uint64_t sub_10004F500(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100002814(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

NSRange NSIntersectionRange(NSRange range1, NSRange range2)
{
  v4 = _NSIntersectionRange(range1, range2);
  length = v4.length;
  location = v4.location;
  result.length = length;
  result.location = location;
  return result;
}

NSRange NSUnionRange(NSRange range1, NSRange range2)
{
  v4 = _NSUnionRange(range1, range2);
  length = v4.length;
  location = v4.location;
  result.length = length;
  result.location = location;
  return result;
}