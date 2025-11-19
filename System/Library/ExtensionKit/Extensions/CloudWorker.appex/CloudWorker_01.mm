uint64_t sub_100015478(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 1880);
  v6 = *v2;
  *(v4 + 1888) = v1;

  v7 = *(v4 + 1872);
  if (v1)
  {
    (*(*(v4 + 1408) + 8))(*(v4 + 1456), *(v4 + 1400));

    v8 = sub_100024F2C;
  }

  else
  {

    *(v4 + 2104) = a1 & 1;
    v8 = sub_100015614;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_100015614()
{
  v286 = v0;
  v2 = *(*(v0 + 1136) + 16);
  if ((*(v0 + 2104) & 1) == 0)
  {
    v275 = *(v0 + 1888);
    v17 = *(v0 + 1512);
    v2(*(v0 + 1144), *(v0 + 1192), *(v0 + 1128));
    v18 = sub_10002C958();
    v19 = sub_10002CBB8();
    v20 = os_log_type_enabled(v18, v19);
    v21 = *(v0 + 1144);
    v22 = *(v0 + 1128);
    v23 = *(v0 + 992);
    v24 = (*(v0 + 1136) + 8);
    if (v20)
    {
      v282 = *(v0 + 992);
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v285[0] = v26;
      *v25 = 136315138;
      v27 = sub_10002C808();
      v1 = v28;
      v29 = sub_10000B7BC(v27, v28, v285);

      *(v25 + 4) = v29;
      v30 = *v24;
      (*v24)(v21, v22);
      _os_log_impl(&_mh_execute_header, v18, v19, "Invalid remote reply for taskName: %s", v25, 0xCu);
      sub_1000067EC(v26);

      v31 = v282;
    }

    else
    {
      v30 = *v24;
      (*v24)(*(v0 + 1144), *(v0 + 1128));

      v31 = v23;
    }

    sub_10002B7B4(v31, &qword_100038660, &qword_10002DF28);
    v49 = *(v0 + 1576);
    v50 = *(v49 + 48);
    v35 = __OFADD__(v50, 1);
    v51 = v50 + 1;
    if (!v35)
    {
      v52 = *(v0 + 1248);
      v53 = *(v0 + 1192);
      v54 = *(v0 + 1128);
      v55 = *(v0 + 1136) + 8;
      *(v49 + 48) = v51;
      sub_100005B40(v52, type metadata accessor for TaskRecord);
      v30(v53, v54);
      goto LABEL_18;
    }

LABEL_66:
    __break(1u);
LABEL_67:
    v235 = *(v0 + 1512);
    v236 = *(v0 + 920);
    v237 = *(v0 + 912);
    v238 = *(v0 + 904);
    v239 = *(v0 + 896);
    (*(*(v0 + 1136) + 16))(*(v0 + 1168), *(v0 + 1192), *(v0 + 1128));
    (*(v238 + 16))(v237, v236, v239);
    v240 = sub_10002C958();
    v281 = sub_10002CBA8();
    v241 = os_log_type_enabled(v240, v281);
    v242 = *(v0 + 1168);
    v243 = *(v0 + 1136);
    v244 = *(v0 + 1128);
    v245 = *(v0 + 920);
    v284 = *(v0 + 912);
    v246 = *(v0 + 904);
    v247 = *(v0 + 896);
    if (v241)
    {
      v264 = *(v0 + 856);
      v268 = *(v0 + 840);
      v274 = *(v0 + 920);
      v248 = swift_slowAlloc();
      v285[0] = swift_slowAlloc();
      *v248 = 136315394;
      v249 = sub_10002C808();
      v271 = v240;
      v251 = sub_10000B7BC(v249, v250, v285);

      *(v248 + 4) = v251;
      (*(v243 + 8))(v242, v244);
      *(v248 + 12) = 2080;
      sub_10002C878();
      sub_10002B3B8(&qword_100038710, &type metadata accessor for MLHostSystemParameters);
      v252 = sub_10002CD38();
      v254 = v253;
      v1(v264, v268);
      v255 = sub_10000B7BC(v252, v254, v285);

      *(v248 + 14) = v255;
      v256 = *(v246 + 8);
      v256(v284, v247);
      _os_log_impl(&_mh_execute_header, v271, v281, "Parsed TaskParameters successfully for task %s: %s", v248, 0x16u);
      swift_arrayDestroy();

      v257 = v274;
    }

    else
    {
      (*(v243 + 8))(v242, v244);
      v256 = *(v246 + 8);
      v256(v284, v247);

      v257 = v245;
    }

    v256(v257, v247);
    sub_100005B40(*(v0 + 1040), type metadata accessor for TaskParametersRecord);
    goto LABEL_71;
  }

  v3 = *(v0 + 1512);
  v2(*(v0 + 1152), *(v0 + 1192), *(v0 + 1128));
  v4 = sub_10002C958();
  v5 = sub_10002CB98();
  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 1152);
  v8 = *(v0 + 1136);
  v9 = *(v0 + 1128);
  if (v6)
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v285[0] = v11;
    *v10 = 136315138;
    v12 = sub_10002C808();
    v14 = sub_10000B7BC(v12, v13, v285);

    *(v10 + 4) = v14;
    v16 = *(v8 + 8);
    v1 = (v8 + 8);
    v15 = v16;
    v16(v7, v9);
    _os_log_impl(&_mh_execute_header, v4, v5, "Task %s is successfully registered.", v10, 0xCu);
    sub_1000067EC(v11);
  }

  else
  {

    v32 = *(v8 + 8);
    v1 = (v8 + 8);
    v15 = v32;
    v32(v7, v9);
  }

  v33 = *(v0 + 1576);
  v34 = *(v33 + 40);
  v35 = __OFADD__(v34, 1);
  v36 = v34 + 1;
  if (v35)
  {
    __break(1u);
    goto LABEL_66;
  }

  v37 = *(v0 + 1832);
  v38 = *(v0 + 1320);
  v39 = *(v0 + 1312);
  v40 = *(v0 + 1248);
  v41 = *(v0 + 1216);
  v42 = *(v0 + 1192);
  v43 = *(v0 + 832);
  *(v33 + 40) = v36;
  v44 = sub_10002C808();
  sub_10000BD64((v0 + 280), v44, v45);
  v46 = *(v0 + 288);

  sub_10002B74C(v40 + *(v41 + 40), v43, &qword_100038248, &unk_10002D560);
  if ((*(v38 + 48))(v43, 1, v39) == 1)
  {
    v47 = *(v0 + 1248);
    v48 = *(v0 + 832);
    sub_10002B7B4(*(v0 + 992), &qword_100038660, &qword_10002DF28);
    sub_100005B40(v47, type metadata accessor for TaskRecord);
    sub_10002B7B4(v48, &qword_100038248, &unk_10002D560);
  }

  else
  {
    v56 = *(v0 + 1568);
    v57 = *(v0 + 1560);
    v58 = *(v0 + 1360);
    v59 = *(v0 + 1312);
    (*(*(v0 + 1320) + 32))(*(v0 + 1328), *(v0 + 832), v59);
    sub_10002C5D8();
    sub_10002B3B8(&qword_100038700, &type metadata accessor for Date);
    v60 = sub_10002CA08();
    v57(v58, v59);
    if (v60)
    {
      v61 = *(v0 + 1576);
      v62 = *(v0 + 1568);
      v63 = *(v0 + 1560);
      v64 = *(v0 + 1360);
      v65 = *(v0 + 1328);
      v66 = *(v0 + 1312);
      v283 = *(v0 + 1248);
      v67 = *(v0 + 992);
      sub_10002C5D8();
      sub_10002C5F8();
      v69 = v68;
      v63(v64, v66);
      sub_100008578(v69);
      v63(v65, v66);
      sub_10002B7B4(v67, &qword_100038660, &qword_10002DF28);
      v70 = v283;
    }

    else
    {
      v71 = *(v0 + 1568);
      v72 = *(v0 + 1248);
      v73 = *(v0 + 992);
      (*(v0 + 1560))(*(v0 + 1328), *(v0 + 1312));
      sub_10002B7B4(v73, &qword_100038660, &qword_10002DF28);
      v70 = v72;
    }

    sub_100005B40(v70, type metadata accessor for TaskRecord);
  }

  v74 = *(v0 + 1136) + 8;
  v15(*(v0 + 1192), *(v0 + 1128));
  v275 = *(v0 + 1888);
LABEL_18:
  v75 = *(v0 + 1824);
  v76 = *(v0 + 1864) + 1;
  if (v76 == *(v0 + 1856))
  {
LABEL_19:
    *(v0 + 1896) = v75;
    v77 = *(v0 + 1832);
    v78 = *(v0 + 1512);

    v79 = sub_10002C958();
    v80 = sub_10002CB98();
    v81 = os_log_type_enabled(v79, v80);
    v82 = *(v0 + 1832);
    if (v81)
    {
      v83 = swift_slowAlloc();
      v84 = swift_slowAlloc();
      v285[0] = v84;
      *v83 = 136315138;
      swift_beginAccess();
      v85 = *(v82 + 16);

      v86 = sub_10002CB38();
      v88 = v87;

      v89 = sub_10000B7BC(v86, v88, v285);

      *(v83 + 4) = v89;

      _os_log_impl(&_mh_execute_header, v79, v80, "Computed addedTaskNames: %s", v83, 0xCu);
      sub_1000067EC(v84);
    }

    else
    {
    }

    v216 = *(v0 + 1840);
    v217 = *(v0 + 1512);

    v218 = sub_10002C958();
    v219 = sub_10002CB98();
    v220 = os_log_type_enabled(v218, v219);
    v221 = *(v0 + 1840);
    if (v220)
    {
      v222 = swift_slowAlloc();
      v223 = swift_slowAlloc();
      v285[0] = v223;
      *v222 = 136315138;
      swift_beginAccess();
      v224 = *(v221 + 16);

      v225 = sub_10002CB38();
      v227 = v226;

      v228 = sub_10000B7BC(v225, v227, v285);

      *(v222 + 4) = v228;

      _os_log_impl(&_mh_execute_header, v218, v219, "Computed removalTaskNames: %s", v222, 0xCu);
      sub_1000067EC(v223);
    }

    else
    {
    }

    v229 = *(v0 + 1520);
    *(v0 + 1904) = sub_10002C758();
    v230 = *(&_s20LighthouseBackground12MLHostClientC8getTasksSayAA0C4TaskVGyYaAA0cD5ErrorOYKFTjTu + 1);
    v231 = _s20LighthouseBackground12MLHostClientC8getTasksSayAA0C4TaskVGyYaAA0cD5ErrorOYKFTjTu;
    v232 = swift_task_alloc();
    *(v0 + 1912) = v232;
    *v232 = v0;
    v232[1] = sub_1000170CC;
    v233 = *(v0 + 1448);

    return ((&_s20LighthouseBackground12MLHostClientC8getTasksSayAA0C4TaskVGyYaAA0cD5ErrorOYKFTjTu + v231))(v233);
  }

  while (1)
  {
    *(v0 + 1864) = v76;
    v90 = *(v0 + 1768);
    if (v76 >= *(v90 + 16))
    {
      break;
    }

    v91 = *(v0 + 1248);
    v92 = *(v0 + 1216);
    sub_100005AD8(v90 + ((*(v0 + 2096) + 32) & ~*(v0 + 2096)) + *(*(v0 + 1224) + 72) * v76, v91, type metadata accessor for TaskRecord);
    v93 = *(v0 + 1248);
    if (*(v91 + *(v92 + 36)) == 2)
    {
      v94 = *(v0 + 1512);
      sub_100005AD8(v93, *(v0 + 1240), type metadata accessor for TaskRecord);
      v95 = sub_10002C958();
      v96 = sub_10002CB98();
      v97 = os_log_type_enabled(v95, v96);
      v98 = *(v0 + 1240);
      if (v97)
      {
        v99 = swift_slowAlloc();
        v100 = swift_slowAlloc();
        v285[0] = v100;
        *v99 = 136315138;
        v102 = *v98;
        v101 = v98[1];

        v103 = sub_10000B7BC(v102, v101, v285);

        *(v99 + 4) = v103;
        sub_100005B40(v98, type metadata accessor for TaskRecord);
        _os_log_impl(&_mh_execute_header, v95, v96, "Task %s is marked as canceled, skipping.", v99, 0xCu);
        sub_1000067EC(v100);
      }

      else
      {

        sub_100005B40(v98, type metadata accessor for TaskRecord);
      }

      v104 = *(v0 + 1840);
      v105 = *(v0 + 1248);
      v106 = *v105;
      v107 = v105[1];

      sub_10000BD64((v0 + 184), v106, v107);
      v108 = *(v0 + 192);

      sub_100005B40(v105, type metadata accessor for TaskRecord);
      goto LABEL_27;
    }

    v109 = *(v0 + 1672);
    v110 = *(v0 + 1128);
    v111 = *(v0 + 1112);
    v112 = *(v93 + 32);
    v113 = *(v93 + 40);
    sub_10002B3B8(&qword_1000386D0, &type metadata accessor for TaskDefinition);
    sub_10002C468();
    if (v275)
    {
      v114 = *(v0 + 1512);
      v115 = *(v0 + 1248);
      v116 = *(v0 + 1232);
      v117 = *(v0 + 1136);
      v118 = *(v0 + 1128);
      v119 = *(v0 + 1112);

      (*(v117 + 56))(v119, 1, 1, v118);
      sub_10002B7B4(v119, &qword_100038668, &qword_10002DF30);
      sub_100005AD8(v115, v116, type metadata accessor for TaskRecord);
      v120 = sub_10002C958();
      v121 = sub_10002CBB8();
      v122 = os_log_type_enabled(v120, v121);
      v123 = *(v0 + 1232);
      if (v122)
      {
        v124 = swift_slowAlloc();
        v125 = swift_slowAlloc();
        v285[0] = v125;
        *v124 = 136315138;
        v126 = *v123;
        v127 = v123[1];

        v128 = sub_10000B7BC(v126, v127, v285);

        *(v124 + 4) = v128;
        sub_100005B40(v123, type metadata accessor for TaskRecord);
        _os_log_impl(&_mh_execute_header, v120, v121, "Failed to parse TaskDefinition from config file, skipping task %s.", v124, 0xCu);
        sub_1000067EC(v125);
      }

      else
      {

        sub_100005B40(v123, type metadata accessor for TaskRecord);
      }

      sub_100005B40(*(v0 + 1248), type metadata accessor for TaskRecord);
      v275 = 0;
      goto LABEL_27;
    }

    v129 = *(v0 + 1824);
    v130 = *(v0 + 1192);
    v131 = *(v0 + 1136);
    v132 = *(v0 + 1128);
    v133 = *(v0 + 1112);
    v134 = *(v0 + 1016);
    v276 = *(v0 + 1008);
    v135 = *(v0 + 992);
    v136 = *(v0 + 984);
    (*(v131 + 56))(v133, 0, 1, v132);
    (*(v131 + 32))(v130, v133, v132);
    *(swift_task_alloc() + 16) = v130;
    sub_1000087D0(sub_10002B72C, v129, type metadata accessor for TaskParametersRecord, type metadata accessor for TaskParametersRecord, type metadata accessor for TaskParametersRecord, v135);

    sub_10002B74C(v135, v136, &qword_100038660, &qword_10002DF28);
    if ((*(v134 + 48))(v136, 1, v276) == 1)
    {
      goto LABEL_64;
    }

    v137 = *(v0 + 1848);
    v138 = *(v0 + 1040);
    v139 = *(v0 + 896);
    v140 = *(v0 + 888);
    sub_10002B814(*(v0 + 984), v138, type metadata accessor for TaskParametersRecord);
    v142 = *(v138 + 32);
    v141 = *(v138 + 40);
    sub_10002B880(&qword_100038708, &qword_100038658, &qword_10002DF20);
    sub_10002C438();
    v143 = *(v0 + 920);
    v144 = *(v0 + 904);
    v145 = *(v0 + 896);
    v146 = *(v0 + 888);
    v147 = *(v0 + 880);
    v148 = *(v0 + 848);
    v149 = *(v0 + 840);
    (*(v144 + 56))(v146, 0, 1, v145);
    (*(v144 + 32))(v143, v146, v145);
    sub_10002C878();
    v150 = sub_10002C8D8();
    v1 = *(v148 + 8);
    v1(v147, v149);
    if (v150)
    {
      v151._rawValue = v150;
      if (!sub_10002C928(v151))
      {
        v176 = *(v0 + 1512);
        (*(*(v0 + 1136) + 16))(*(v0 + 1184), *(v0 + 1192), *(v0 + 1128));
        v177 = sub_10002C958();
        v178 = sub_10002CB98();
        v179 = os_log_type_enabled(v177, v178);
        v180 = *(v0 + 1184);
        v181 = *(v0 + 1136);
        v182 = *(v0 + 1128);
        if (v179)
        {
          v183 = swift_slowAlloc();
          v278 = v182;
          v184 = swift_slowAlloc();
          v285[0] = v184;
          *v183 = 136315138;
          v185 = sub_10002C808();
          v187 = sub_10000B7BC(v185, v186, v285);

          *(v183 + 4) = v187;

          v188 = v278;
          v279 = *(v181 + 8);
          v279(v180, v188);
          _os_log_impl(&_mh_execute_header, v177, v178, "Skipping registration of task %s as it does not satisfy the targeting rules.", v183, 0xCu);
          sub_1000067EC(v184);
        }

        else
        {

          v279 = *(v181 + 8);
          v279(v180, v182);
        }

        v202 = *(v0 + 1840);
        v203 = *(v0 + 1248);
        v270 = *(v0 + 1128);
        log = *(v0 + 1192);
        v204 = *(v0 + 1040);
        v205 = *(v0 + 992);
        v206 = *(v0 + 920);
        v207 = *(v0 + 904);
        v208 = *(v0 + 896);
        v266 = *(v0 + 1136) + 8;
        v209 = *v203;
        v210 = v203[1];

        sub_10000BD64((v0 + 216), v209, v210);
        v211 = *(v0 + 224);
        goto LABEL_54;
      }
    }

    v152 = *(v0 + 920);
    v153 = *(v0 + 896);
    v154 = *(v0 + 872);
    v155 = *(v0 + 840);
    sub_10002C878();
    v156 = sub_10002C8E8();
    v1(v154, v155);
    if (!v156)
    {
      goto LABEL_41;
    }

    v157._rawValue = v156;
    if (sub_10002C938(v157))
    {

LABEL_41:
      v158 = *(v0 + 920);
      v159 = *(v0 + 896);
      v160 = *(v0 + 864);
      v161 = *(v0 + 840);
      sub_10002C878();
      v162 = sub_10002C8F8();
      v1(v160, v161);
      if (v162 == 2 || (v162 & 1) == 0)
      {
        goto LABEL_67;
      }

      v163 = *(v0 + 1512);
      v164 = sub_10002C958();
      v165 = sub_10002CB98();
      if (os_log_type_enabled(v164, v165))
      {
        v166 = swift_slowAlloc();
        *v166 = 67109376;
        *(v166 + 4) = 1;
        *(v166 + 8) = 1024;
        *(v166 + 10) = 0;
        _os_log_impl(&_mh_execute_header, v164, v165, "Skipping registration of task because betaOnly is %{BOOL}d and isSeedDevice is %{BOOL}d", v166, 0xEu);
      }

      v167 = *(v0 + 1840);
      v168 = *(v0 + 1248);
      v277 = *(v0 + 1192);
      v169 = *(v0 + 1136);
      v269 = *(v0 + 1040);
      loga = *(v0 + 1128);
      v265 = *(v0 + 992);
      v170 = *(v0 + 920);
      v171 = *(v0 + 904);
      v172 = *(v0 + 896);

      v173 = *v168;
      v174 = v168[1];

      sub_10000BD64((v0 + 248), v173, v174);
      v175 = *(v0 + 256);

      (*(v171 + 8))(v170, v172);
      sub_10002B7B4(v265, &qword_100038660, &qword_10002DF28);
      sub_100005B40(v269, type metadata accessor for TaskParametersRecord);
      sub_100005B40(v168, type metadata accessor for TaskRecord);
      (*(v169 + 8))(v277, loga);
      goto LABEL_55;
    }

    v189 = *(v0 + 1512);
    (*(*(v0 + 1136) + 16))(*(v0 + 1176), *(v0 + 1192), *(v0 + 1128));
    v190 = sub_10002C958();
    v191 = sub_10002CB98();
    v192 = os_log_type_enabled(v190, v191);
    v193 = *(v0 + 1176);
    v194 = *(v0 + 1136);
    v195 = *(v0 + 1128);
    if (v192)
    {
      v196 = swift_slowAlloc();
      v280 = v195;
      v197 = swift_slowAlloc();
      v285[0] = v197;
      *v196 = 136315138;
      v198 = sub_10002C808();
      v200 = sub_10000B7BC(v198, v199, v285);

      *(v196 + 4) = v200;

      v201 = v280;
      v279 = *(v194 + 8);
      v279(v193, v201);
      _os_log_impl(&_mh_execute_header, v190, v191, "Skipping registration of task %s as it does not satisfy the os eligibility rules.", v196, 0xCu);
      sub_1000067EC(v197);
    }

    else
    {

      v279 = *(v194 + 8);
      v279(v193, v195);
    }

    v212 = *(v0 + 1840);
    v203 = *(v0 + 1248);
    v270 = *(v0 + 1128);
    log = *(v0 + 1192);
    v204 = *(v0 + 1040);
    v205 = *(v0 + 992);
    v206 = *(v0 + 920);
    v207 = *(v0 + 904);
    v208 = *(v0 + 896);
    v267 = *(v0 + 1136) + 8;
    v213 = *v203;
    v214 = v203[1];

    sub_10000BD64((v0 + 232), v213, v214);
    v215 = *(v0 + 240);
LABEL_54:

    (*(v207 + 8))(v206, v208);
    sub_10002B7B4(v205, &qword_100038660, &qword_10002DF28);
    sub_100005B40(v204, type metadata accessor for TaskParametersRecord);
    sub_100005B40(v203, type metadata accessor for TaskRecord);
    v279(log, v270);
LABEL_55:
    v275 = 0;
    v75 = *(v0 + 1824);
LABEL_27:
    v76 = *(v0 + 1864) + 1;
    if (v76 == *(v0 + 1856))
    {
      goto LABEL_19;
    }
  }

  __break(1u);
LABEL_64:
  sub_10002B7B4(*(v0 + 984), &qword_100038660, &qword_10002DF28);
LABEL_71:
  v258 = *(v0 + 1520);
  *(v0 + 1872) = sub_10002C758();
  v259 = *(&_s20LighthouseBackground12MLHostClientC7addTask14taskDefinitionSbAA0fH0V_tYaAA0cD5ErrorOYKFTjTu + 1);
  v260 = _s20LighthouseBackground12MLHostClientC7addTask14taskDefinitionSbAA0fH0V_tYaAA0cD5ErrorOYKFTjTu;
  v261 = swift_task_alloc();
  *(v0 + 1880) = v261;
  *v261 = v0;
  v261[1] = sub_100015478;
  v262 = *(v0 + 1456);
  v263 = *(v0 + 1192);

  return ((&_s20LighthouseBackground12MLHostClientC7addTask14taskDefinitionSbAA0fH0V_tYaAA0cD5ErrorOYKFTjTu + v260))(v263, v262);
}

uint64_t sub_1000170CC(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 1912);
  v6 = *v2;
  v4[240] = a1;
  v4[241] = v1;

  v7 = v3[238];
  if (v1)
  {
    v8 = v4[222];
    v19 = v4[237];
    v20 = v4[221];
    v9 = v4[208];
    v10 = v4[206];
    v11 = v4[203];
    v12 = v4[202];
    v13 = v4[194];
    v14 = v4[181];
    v15 = v4[176];
    v16 = v4[175];

    (*(v15 + 8))(v14, v16);

    v17 = sub_1000221F0;
  }

  else
  {

    v17 = sub_1000172F0;
  }

  return _swift_task_switch(v17, 0, 0);
}

uint64_t sub_1000172F0()
{
  v796 = v0;
  v1 = v0;
  v2 = v0[241];
  v3 = v0[240];
  v4 = v0[189];

  v6 = sub_10000E950(v5);
  v782 = v2;
  v0[242] = v6;

  swift_bridgeObjectRetain_n();
  v7 = sub_10002C958();
  v8 = sub_10002CB98();
  v788 = v0;
  v735 = v6;
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = v10;
    v795[0] = v10;
    *v9 = 136315138;
    v12 = v6[2];
    v13 = v6;
    if (v12)
    {
      v732 = v10;
      v741 = v8;
      v757 = v7;
      v14 = v1[88];
      v794[0] = _swiftEmptyArrayStorage;
      sub_10000DB24(0, v12, 0);
      v15 = _swiftEmptyArrayStorage;
      v16 = *(v14 + 16);
      v14 += 16;
      v17 = v13 + ((*(v14 + 64) + 32) & ~*(v14 + 64));
      v767 = *(v14 + 56);
      v775 = v16;
      v18 = (v14 - 8);
      do
      {
        v19 = v788[103];
        v20 = v788[87];
        v775(v19, v17, v20);
        v21 = sub_10002C728();
        v23 = v22;
        (*v18)(v19, v20);
        v794[0] = v15;
        v25 = *(v15 + 2);
        v24 = *(v15 + 3);
        if (v25 >= v24 >> 1)
        {
          sub_10000DB24((v24 > 1), v25 + 1, 1);
          v15 = v794[0];
        }

        *(v15 + 2) = v25 + 1;
        v26 = &v15[16 * v25];
        *(v26 + 4) = v21;
        *(v26 + 5) = v23;
        v17 += v767;
        --v12;
      }

      while (v12);
      v1 = v788;
      v7 = v757;
      v8 = v741;
      v11 = v732;
    }

    v27 = sub_10002CA98();
    v29 = v28;

    v30 = sub_10000B7BC(v27, v29, v795);

    *(v9 + 4) = v30;
    v6 = v735;
    swift_bridgeObjectRelease_n();
    _os_log_impl(&_mh_execute_header, v7, v8, "Retrieved registered dynamic tasks: %s", v9, 0xCu);
    sub_1000067EC(v11);
  }

  else
  {

    swift_bridgeObjectRelease_n();
  }

  v31 = v1[228];
  v32 = v1[189];
  swift_bridgeObjectRetain_n();
  v33 = sub_10002C958();
  v34 = sub_10002CB98();
  v35 = os_log_type_enabled(v33, v34);
  v36 = v1[228];
  if (v35)
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v795[0] = v38;
    *v37 = 134218242;
    *(v37 + 4) = *(v36 + 16);

    *(v37 + 12) = 2080;
    sub_100008968(v36, type metadata accessor for TaskParametersRecord, type metadata accessor for TaskParametersRecord, v794);
    v39 = sub_10002CA98();
    v41 = v40;

    v42 = v39;
    v1 = v788;
    v43 = sub_10000B7BC(v42, v41, v795);
    v6 = v735;

    *(v37 + 14) = v43;
    swift_bridgeObjectRelease_n();
    _os_log_impl(&_mh_execute_header, v33, v34, "Processing TaskParametersRecords (count: %ld): %s", v37, 0x16u);
    sub_1000067EC(v38);
  }

  else
  {

    swift_bridgeObjectRelease_n();
  }

  v44 = v6[2];
  v1[243] = v44;
  v776 = v44;
  if (v44)
  {
    v45 = v1[230];
    v46 = v1[229];
    v705 = v1[129];
    v674 = v1[128];
    v47 = v1[127];
    v48 = v1[88];
    v49 = v1[75];
    v50 = v1[71];
    v51 = *(v48 + 80);
    *(v1 + 525) = v51;
    v758 = v6 + ((v51 + 32) & ~v51);
    swift_beginAccess();
    swift_beginAccess();
    v52 = 0;
    v768 = v48;
    v723 = (v47 + 48);
    v701 = (v49 + 56);
    v694 = enum case for URL.DirectoryHint.inferFromPath(_:);
    v690 = (v50 + 104);
    v686 = (v50 + 8);
    v682 = (v49 + 8);
    v679 = (v49 + 16);
    v53 = (v48 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v728 = v53;
    v748 = (v48 + 8);
    while (1)
    {
      if (v52 >= v6[2])
      {
        __break(1u);
LABEL_179:
        __break(1u);
        goto LABEL_180;
      }

      v58 = v1[230];
      v59 = v1[102];
      v60 = v1[87];
      v61 = *(v768 + 72);
      v1[244] = v61;
      v62 = *(v768 + 16);
      v1[245] = v62;
      v1[246] = v53;
      v62(v59, &v758[v61 * v52], v60);
      v63 = *(v58 + 16);
      v1[247] = v63;

      v64 = sub_10002C728();
      v66 = sub_100008480(v64, v65, v63);

      v67 = v1[102];
      if (v66)
      {
        v68 = v1[189];
        v62(v1[101], v1[102], v1[87]);
        v69 = sub_10002C958();
        v70 = sub_10002CBA8();
        v71 = os_log_type_enabled(v69, v70);
        v72 = v1[101];
        v73 = v1[87];
        if (v71)
        {
          v74 = swift_slowAlloc();
          v75 = swift_slowAlloc();
          v794[0] = v75;
          *v74 = 136315138;
          v76 = sub_10002C728();
          v78 = sub_10000B7BC(v76, v77, v794);
          v6 = v735;

          *(v74 + 4) = v78;
          v54 = v748;
          (*v748)(v72, v73);
          _os_log_impl(&_mh_execute_header, v69, v70, "Skipping task. It is being removed: %s", v74, 0xCu);
          sub_1000067EC(v75);
          v1 = v788;
        }

        else
        {

          v54 = v748;
          (*v748)(v72, v73);
        }
      }

      else
      {
        v79 = *(v1[229] + 16);

        v80 = sub_10002C728();
        v82 = sub_100008480(v80, v81, v79);

        if (v82)
        {
          v83 = v1[228];
          v84 = v1[126];
          v85 = v1[122];
          v86 = v1[102];
          *(swift_task_alloc() + 16) = v86;
          sub_1000087D0(sub_10002BD9C, v83, type metadata accessor for TaskParametersRecord, type metadata accessor for TaskParametersRecord, type metadata accessor for TaskParametersRecord, v85);

          v87 = (*v723)(v85, 1, v84);
          v88 = v1[122];
          v89 = v1[102];
          if (v87 == 1)
          {
            v90 = v1[189];
            v91 = v1[99];
            v92 = v1[87];
            sub_10002B7B4(v88, &qword_100038660, &qword_10002DF28);
            v62(v91, v89, v92);
            v93 = sub_10002C958();
            v94 = sub_10002CB98();
            v95 = os_log_type_enabled(v93, v94);
            v96 = v1[99];
            v97 = v1[87];
            if (v95)
            {
              v98 = swift_slowAlloc();
              v99 = swift_slowAlloc();
              v794[0] = v99;
              *v98 = 136315138;
              v100 = sub_10002C728();
              v102 = sub_10000B7BC(v100, v101, v794);

              *(v98 + 4) = v102;
              v1 = v788;
              v54 = v748;
              (*v748)(v96, v97);
              _os_log_impl(&_mh_execute_header, v93, v94, "Skipping task. No TaskParametersRecord found for: %s", v98, 0xCu);
              sub_1000067EC(v99);
              v6 = v735;
            }

            else
            {

              v54 = v748;
              (*v748)(v96, v97);
            }
          }

          else
          {
            sub_10002B814(v88, v1[129], type metadata accessor for TaskParametersRecord);
            sub_10002C708();
            if (!v114)
            {
              v135 = v1[189];
              sub_100005AD8(v1[129], v1[128], type metadata accessor for TaskParametersRecord);
              v136 = sub_10002C958();
              v137 = sub_10002CBB8();
              v138 = os_log_type_enabled(v136, v137);
              v139 = v1[128];
              if (v138)
              {
                v140 = swift_slowAlloc();
                v141 = swift_slowAlloc();
                v794[0] = v141;
                *v140 = 136315138;
                v142 = *v139;
                v143 = v674[1];

                v144 = sub_10000B7BC(v142, v143, v794);

                *(v140 + 4) = v144;
                sub_100005B40(v139, type metadata accessor for TaskParametersRecord);
                _os_log_impl(&_mh_execute_header, v136, v137, "Task %s doesn't have a valid taskFolder. Skipping task.", v140, 0xCu);
                sub_1000067EC(v141);
              }

              else
              {

                sub_100005B40(v139, type metadata accessor for TaskParametersRecord);
              }

              v54 = v748;
              v53 = v728;
              sub_100005B40(v1[129], type metadata accessor for TaskParametersRecord);
              goto LABEL_16;
            }

            v712 = v1[86];
            v115 = v1[85];
            v716 = v1[74];
            v116 = v1[72];
            v117 = v1[70];
            (*v701)(v1[73], 1, 1);
            v118 = *v690;
            (*v690)(v116, v694, v117);

            sub_10002C558();
            v1[39] = 0x6574656D61726170;
            v1[40] = 0xEF6E6F736A2E7372;
            v118(v116, v694, v117);
            sub_10002B6D0();
            sub_10002C568();
            (*v686)(v116, v117);
            v119 = *v682;
            (*v682)(v115, v716);
            v120 = *(v705 + 32);
            v121 = *(v705 + 40);
            sub_10002C588();
            v122 = v1[86];
            if (v782)
            {
              v123 = v1[189];
              (*v679)(v1[78], v122, v1[74]);
              swift_errorRetain();
              swift_errorRetain();
              v124 = sub_10002C958();
              v125 = sub_10002CBB8();
              v126 = os_log_type_enabled(v124, v125);
              v127 = v1[86];
              v128 = v1[78];
              v129 = v1[74];
              if (v126)
              {
                logb = v124;
                v130 = swift_slowAlloc();
                v669 = swift_slowAlloc();
                v713 = swift_slowAlloc();
                v794[0] = v713;
                *v130 = 136315394;
                sub_10002B3B8(&qword_1000386F0, &type metadata accessor for URL);
                v131 = sub_10002CD38();
                v671 = v127;
                v133 = sub_10000B7BC(v131, v132, v794);

                *(v130 + 4) = v133;
                v119(v128, v129);
                *(v130 + 12) = 2112;
                swift_errorRetain();
                v134 = _swift_stdlib_bridgeErrorToNSError();
                *(v130 + 14) = v134;
                *v669 = v134;

                _os_log_impl(&_mh_execute_header, logb, v125, "Failed at writing taskParamFile: %s : %@", v130, 0x16u);
                sub_10002B7B4(v669, &qword_1000386C8, &qword_10002DF80);

                sub_1000067EC(v713);

                v119(v671, v129);
              }

              else
              {

                v119(v128, v129);

                v119(v127, v129);
              }

              v6 = v735;
              v54 = v748;
              v53 = v728;
              v1 = v788;
              sub_100005B40(v788[129], type metadata accessor for TaskParametersRecord);
              v782 = 0;
              goto LABEL_16;
            }

            v145 = v1[129];
            v119(v122, v1[74]);

            sub_100005B40(v145, type metadata accessor for TaskParametersRecord);
            v782 = 0;
            v6 = v735;
            v54 = v748;
          }

          v53 = v728;
        }

        else
        {
          v103 = v1[189];
          v62(v1[100], v1[102], v1[87]);
          v104 = sub_10002C958();
          v105 = sub_10002CBA8();
          v106 = os_log_type_enabled(v104, v105);
          v107 = v1[100];
          v108 = v1[87];
          if (v106)
          {
            v109 = swift_slowAlloc();
            v110 = swift_slowAlloc();
            v794[0] = v110;
            *v109 = 136315138;
            v111 = sub_10002C728();
            v113 = sub_10000B7BC(v111, v112, v794);
            v1 = v788;

            *(v109 + 4) = v113;
            v6 = v735;
            v54 = v748;
            (*v748)(v107, v108);
            _os_log_impl(&_mh_execute_header, v104, v105, "Skipping task. It was not registered locally: %s", v109, 0xCu);
            sub_1000067EC(v110);
            v53 = v728;
          }

          else
          {

            v54 = v748;
            (*v748)(v107, v108);
          }
        }
      }

LABEL_16:
      ++v52;
      v55 = v1[102];
      v56 = v1[87];
      v57 = *v54;
      v1[248] = *v54;
      v1[249] = v54 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v57(v55, v56);
      if (v776 == v52)
      {
        v146 = 0;
        while (1)
        {
          v1[250] = v146;
          v147 = v1[242];
          if (v146 >= *(v147 + 16))
          {
            break;
          }

          v148 = v1[247];
          v149 = v1[246];
          (v1[245])(v1[98], v147 + ((*(v1 + 2100) + 32) & ~*(v1 + 2100)) + v1[244] * v146, v1[87]);

          v150 = sub_10002C728();
          v152 = sub_100008480(v150, v151, v148);

          if (v152)
          {
            v263 = v1[246];
            v264 = v1[189];
            (v1[245])(v1[97], v1[98], v1[87]);
            v265 = sub_10002C958();
            v266 = sub_10002CB98();
            v267 = os_log_type_enabled(v265, v266);
            v268 = v1[249];
            v269 = v1[248];
            v270 = v1[97];
            v271 = v1[87];
            if (v267)
            {
              v272 = swift_slowAlloc();
              v273 = swift_slowAlloc();
              v794[0] = v273;
              *v272 = 136315138;
              v274 = sub_10002C728();
              v276 = sub_10000B7BC(v274, v275, v794);

              *(v272 + 4) = v276;
              v1 = v788;
              v269(v270, v271);
              _os_log_impl(&_mh_execute_header, v265, v266, "Task %s is being removed.", v272, 0xCu);
              sub_1000067EC(v273);
            }

            else
            {

              v269(v270, v271);
            }

            v277 = v1[190];
            v278 = v1[98];
            v1[251] = sub_10002C758();
            v279 = sub_10002C728();
            v281 = v280;
            v1[252] = v280;
            v282 = *(&_s20LighthouseBackground12MLHostClientC10removeTaskySbSSYaAA0cD5ErrorOYKFTjTu + 1);
            v283 = _s20LighthouseBackground12MLHostClientC10removeTaskySbSSYaAA0cD5ErrorOYKFTjTu;
            v284 = swift_task_alloc();
            v1[253] = v284;
            *v284 = v1;
            v284[1] = sub_10001BC2C;
            v285 = v1[179];

            return ((&_s20LighthouseBackground12MLHostClientC10removeTaskySbSSYaAA0cD5ErrorOYKFTjTu + v283))(v279, v281, v285);
          }

          v153 = v1[249];
          (v1[248])(v1[98], v1[87]);
          v146 = v1[250] + 1;
          if (v146 == v1[243])
          {
            goto LABEL_45;
          }
        }

LABEL_180:
        __break(1u);
LABEL_181:
        __break(1u);
LABEL_182:
        __break(1u);
LABEL_183:
        __break(1u);
LABEL_184:
        __break(1u);
LABEL_185:
        __break(1u);
      }
    }
  }

LABEL_45:
  v154 = v1[229];
  v155 = v1[189];
  v156 = swift_allocObject();
  v1[255] = v156;
  swift_beginAccess();
  v157 = *(v154 + 16);
  v683 = v156;
  *(v156 + 16) = v157;
  v687 = (v156 + 16);
  v1[256] = v157;
  v777 = v157;

  v158 = sub_10002C958();
  v159 = sub_10002CB98();
  if (os_log_type_enabled(v158, v159))
  {
    v160 = swift_slowAlloc();
    v795[0] = 0;
    v794[0] = 0;
    *v160 = 0;
    v793[0] = v160 + 2;
    sub_10000B2CC(_swiftEmptyArrayStorage, v793, v795, v794);
    _os_log_impl(&_mh_execute_header, v158, v159, "Querying registered tasks for existing payloads...", v160, 2u);
  }

  if (v1[243])
  {
    v161 = 0;
    v162 = v1[88];
    v163 = v1[75];
    v164 = v1[71];
    v749 = v1[242] + ((*(v162 + 80) + 32) & ~*(v162 + 80));
    v759 = v162;
    v165 = (v162 + 8);
    log = (v163 + 56);
    v706 = enum case for URL.DirectoryHint.inferFromPath(_:);
    v702 = (v164 + 104);
    v695 = (v164 + 8);
    v691 = (v163 + 8);
    v769 = (v162 + 8);
    do
    {
      if (v161 >= *(v1[242] + 16))
      {
        goto LABEL_179;
      }

      v167 = *(v759 + 16);
      v167(v1[95], v749 + *(v759 + 72) * v161, v1[87]);

      v168 = sub_10002C728();
      v170 = sub_100008480(v168, v169, v777);

      if (v170)
      {
        v171 = v1[95];
        sub_10002C708();
        if (v172)
        {
          v717 = v167;
          v736 = v161;
          v724 = v1[85];
          v173 = v1[84];
          v729 = v1[74];
          v174 = v1[72];
          v175 = v1[70];
          (log->isa)(v1[73], 1, 1);
          v176 = *v702;
          (*v702)(v174, v706, v175);

          sub_10002C558();
          v1[43] = 0x737465737361;
          v1[44] = 0xE600000000000000;
          v176(v174, v706, v175);
          sub_10002B6D0();
          sub_10002C568();
          (*v695)(v174, v175);
          v177 = *v691;
          (*v691)(v173, v729);
          sub_10002C548(0);
          v177(v724, v729);
          v178 = [objc_opt_self() defaultManager];
          v179 = sub_10002CA18();
          LODWORD(v174) = [v178 fileExistsAtPath:v179];

          if (v174)
          {
            v180 = v1[189];
            v717(v1[93], v1[95], v1[87]);
            v181 = sub_10002C958();
            v182 = sub_10002CB98();
            v183 = os_log_type_enabled(v181, v182);
            v184 = v1[93];
            v185 = v1[87];
            if (v183)
            {
              v725 = v1[87];
              v186 = swift_slowAlloc();
              v187 = swift_slowAlloc();
              v794[0] = v187;
              *v186 = 136315138;
              v188 = sub_10002C728();
              v190 = sub_10000B7BC(v188, v189, v794);

              *(v186 + 4) = v190;
              v1 = v788;

              v191 = *v769;
              (*v769)(v184, v725);
              _os_log_impl(&_mh_execute_header, v181, v182, "Assets already available. Skipping payload download for task: %s", v186, 0xCu);
              sub_1000067EC(v187);
            }

            else
            {

              v191 = *v769;
              (*v769)(v184, v185);
            }

            v216 = v1[95];
            v217 = v1[87];
            v218 = sub_10002C728();
            sub_10000BEB4(v218, v219);

            v191(v216, v217);
            v161 = v736;
            v165 = v769;
          }

          else
          {
            v165 = v769;
            (*v769)(v1[95], v1[87]);

            v161 = v736;
          }

          goto LABEL_50;
        }

        v206 = v1[189];
        v167(v1[92], v1[95], v1[87]);
        v193 = sub_10002C958();
        v207 = sub_10002CB98();
        v208 = os_log_type_enabled(v193, v207);
        v196 = v1[95];
        v197 = v1[92];
        v198 = v1[87];
        if (v208)
        {
          v209 = v161;
          v210 = swift_slowAlloc();
          v211 = swift_slowAlloc();
          v794[0] = v211;
          *v210 = 136315138;
          v212 = sub_10002C728();
          v214 = sub_10000B7BC(v212, v213, v794);

          *(v210 + 4) = v214;
          v1 = v788;
          v215 = *v769;
          (*v769)(v197, v198);
          _os_log_impl(&_mh_execute_header, v193, v207, "Skipping registeredTask %s due to lack of taskFolder.", v210, 0xCu);
          sub_1000067EC(v211);
          v165 = v769;

          v161 = v209;

          v215(v196, v198);
          goto LABEL_50;
        }
      }

      else
      {
        v192 = v1[189];
        v167(v1[94], v1[95], v1[87]);
        v193 = sub_10002C958();
        v194 = sub_10002CB98();
        v195 = os_log_type_enabled(v193, v194);
        v196 = v1[95];
        v197 = v1[94];
        v198 = v1[87];
        if (v195)
        {
          v199 = swift_slowAlloc();
          v200 = swift_slowAlloc();
          v794[0] = v200;
          *v199 = 136315138;
          v201 = sub_10002C728();
          v203 = v161;
          v204 = sub_10000B7BC(v201, v202, v794);
          v165 = v769;

          *(v199 + 4) = v204;
          v205 = *v769;
          (*v769)(v197, v198);
          _os_log_impl(&_mh_execute_header, v193, v194, "Skipping payloads for registeredTask %s it was not added in this run.", v199, 0xCu);
          sub_1000067EC(v200);
          v1 = v788;

          v205(v196, v198);
          v161 = v203;
          goto LABEL_50;
        }
      }

      v166 = *v165;
      (*v165)(v197, v198);

      v166(v196, v198);
LABEL_50:
      ++v161;
    }

    while (v161 != v1[243]);
  }

  v220 = v1[189];

  v221 = sub_10002C958();
  v222 = sub_10002CB98();
  if (!os_log_type_enabled(v221, v222))
  {

    if ((sub_10002CB18() & 1) == 0)
    {
      goto LABEL_66;
    }

LABEL_72:
    v240 = v1;
    v241 = v1[242];
    v242 = v240[240];
    v243 = v240[228];
    v244 = v240[222];
    v245 = v240[221];
    v246 = v240[208];
    v247 = v240[206];
    v248 = v240[203];
    v249 = v240[194];
    v250 = v240[189];

    v251 = sub_10002C958();
    v252 = sub_10002CB98();
    if (os_log_type_enabled(v251, v252))
    {
      v253 = swift_slowAlloc();
      v795[0] = 0;
      v794[0] = 0;
      *v253 = 0;
      v793[0] = v253 + 2;
      sub_10000B2CC(_swiftEmptyArrayStorage, v793, v795, v794);
      _os_log_impl(&_mh_execute_header, v251, v252, "Task cancelled before querying for TaskPayloads.", v253, 2u);
    }

    v1 = v788;
    v750 = v788[231];
    v761 = v788[230];
    v254 = v788[209];
    v255 = v788[203];
    v256 = v788[202];
    v257 = v788[201];
    v258 = v788[200];
    v742 = v788[199];
    v259 = v788[198];
    v260 = v788[197];
    v778 = v788[188];
    v783 = v788[229];
    v261 = v788[187];
    v770 = v788[186];
    v262 = objc_allocWithZone(sub_10002C7C8());
    v609 = sub_10002C7B8();

    sub_100007A74(v260);
    (*(v261 + 8))(v778, v770);
    goto LABEL_175;
  }

  v223 = swift_slowAlloc();
  v224 = swift_slowAlloc();
  v794[0] = v224;
  *v223 = 136315138;
  swift_beginAccess();
  v225 = *(v683 + 16);

  v226 = sub_10002CB38();
  v228 = v227;

  v229 = sub_10000B7BC(v226, v228, v794);

  *(v223 + 4) = v229;

  _os_log_impl(&_mh_execute_header, v221, v222, "Computed payloadsTaskNames: %s", v223, 0xCu);
  sub_1000067EC(v224);

  if (sub_10002CB18())
  {
    goto LABEL_72;
  }

LABEL_66:
  swift_beginAccess();
  v230 = *v687;
  if (*(*v687 + 16))
  {
    v231 = v1[189];
    swift_retain_n();
    v232 = sub_10002C958();
    v233 = sub_10002CB98();
    if (os_log_type_enabled(v232, v233))
    {
      v234 = swift_slowAlloc();
      v235 = swift_slowAlloc();
      v236 = v235;
      v795[0] = v235;
      *v234 = 136315138;
      v237 = *(v230 + 16);
      if (v237)
      {
        v760 = v235;
        v238 = sub_10000B738(v237, 0);
        v239 = sub_10000E634(v794, v238 + 4, v237, v230);
        swift_bridgeObjectRetain_n();
        sub_10002B724();
        if (v239 != v237)
        {
          goto LABEL_185;
        }

        v1 = v788;
        v236 = v760;
      }

      else
      {

        v238 = _swiftEmptyArrayStorage;
      }

      v794[0] = v238;
      sub_10000BFF0(v794);
      if (v782)
      {
      }

      v370 = sub_10002CA98();
      v372 = v371;

      v373 = sub_10000B7BC(v370, v372, v795);

      *(v234 + 4) = v373;

      _os_log_impl(&_mh_execute_header, v232, v233, "Querying TaskPayloads for new tasks: %s", v234, 0xCu);
      sub_1000067EC(v236);
    }

    else
    {
    }

    v374 = v1[214];
    v375 = v1[212];
    v376 = v1[211];
    v377 = v1[210];
    v378 = v1[203];
    v379 = v1[202];
    v380 = v1[201];
    v381 = swift_allocObject();
    *(v381 + 16) = xmmword_10002DE40;
    *(v381 + 56) = &type metadata for String;
    *(v381 + 64) = v375;
    *(v381 + 32) = 0x656D614E6B736174;
    *(v381 + 40) = 0xE800000000000000;
    v382 = *v687;

    v384 = sub_100008AE8(v383);

    *(v381 + 96) = sub_100005338(&qword_1000386D8, &qword_10002DFA0);
    *(v381 + 104) = sub_10002B880(&qword_1000386E0, &qword_1000386D8, &qword_10002DFA0);
    *(v381 + 72) = v384;
    v385 = sub_10002CB88();
    v798._countAndFlagsBits = 0x6C7961506B736154;
    v798._object = 0xEC0000007364616FLL;
    isa = sub_10002CBC8(v798, v385).super.isa;
    v788[257] = isa;
    v387 = swift_task_alloc();
    v788[258] = v387;
    *(v387 + 16) = isa;
    *(v387 + 24) = v380;
    v388 = swift_task_alloc();
    v788[259] = v388;
    *(v388 + 16) = &unk_10002DFB0;
    *(v388 + 24) = v387;
    v389 = async function pointer to CKDatabase.configuredWith<A>(configuration:group:body:)[1];
    v390 = swift_task_alloc();
    v788[260] = v390;
    *v390 = v788;
    v390[1] = sub_10001F8D0;
    v391 = v788[219];
    v392 = v788[200];

    return CKDatabase.configuredWith<A>(configuration:group:body:)(v788 + 37, v378, v379, &unk_10002DFB8, v388, v391);
  }

  v287 = v1[203];

  v288 = _swiftEmptyArrayStorage[2];
  if (v288)
  {
    v289 = 0;
    v290 = &_swiftEmptyArrayStorage[6];
    v743 = v1[65];
    v751 = v1[69];
    v779 = _swiftEmptyArrayStorage;
    while (1)
    {
      if (v289 >= _swiftEmptyArrayStorage[2])
      {
        goto LABEL_181;
      }

      v291 = *(v290 - 2);
      v292 = *(v290 - 1);
      if (*v290)
      {
        v293 = v1[189];
        sub_10002B400(*(v290 - 1), 1);
        sub_10002B400(v292, 1);
        sub_10002B400(v292, 1);
        v294 = v291;
        v295 = sub_10002C958();
        v296 = sub_10002CBB8();
        if (os_log_type_enabled(v295, v296))
        {
          v297 = swift_slowAlloc();
          v298 = swift_slowAlloc();
          *v297 = 138412290;
          swift_errorRetain();
          v299 = _swift_stdlib_bridgeErrorToNSError();
          *(v297 + 4) = v299;
          *v298 = v299;

          sub_10002B40C(v292, 1);
          sub_10002B40C(v292, 1);
          _os_log_impl(&_mh_execute_header, v295, v296, "Error: %@", v297, 0xCu);
          sub_10002B7B4(v298, &qword_1000386C8, &qword_10002DF80);
          v1 = v788;

          sub_10002B40C(v292, 1);
        }

        else
        {

          sub_10002B40C(v292, 1);
          sub_10002B40C(v292, 1);
        }

        v310 = v1[197];
        v311 = *(v310 + 96);
        v312 = __OFADD__(v311, 1);
        v313 = v311 + 1;
        if (v312)
        {
          goto LABEL_182;
        }

        *(v310 + 96) = v313;
      }

      else
      {
        v301 = v1[63];
        v300 = v1[64];
        sub_10002B400(*(v290 - 1), 0);
        sub_10002B400(v292, 0);
        v302 = v291;
        sub_1000049E8(v292, v301);
        if ((*(v743 + 48))(v301, 1, v300) == 1)
        {
          v303 = v1[189];
          sub_10002B7B4(v1[63], &qword_100038640, &qword_10002DF00);
          v304 = v292;
          v305 = sub_10002C958();
          v306 = sub_10002CBB8();
          if (os_log_type_enabled(v305, v306))
          {
            v307 = swift_slowAlloc();
            v308 = v288;
            v309 = swift_slowAlloc();
            *v307 = 138412290;
            *(v307 + 4) = v304;
            *v309 = v292;

            sub_10002B40C(v292, 0);
            _os_log_impl(&_mh_execute_header, v305, v306, "Skipping record: %@", v307, 0xCu);
            sub_10002B7B4(v309, &qword_1000386C8, &qword_10002DF80);
            v288 = v308;

            sub_10002B40C(v292, 0);
          }

          else
          {

            sub_10002B40C(v292, 0);
            sub_10002B40C(v292, 0);
          }

          goto LABEL_84;
        }

        v314 = v1[208];
        v315 = v1[69];
        v316 = v1;
        v317 = v1[63];

        sub_10002B814(v317, v315, type metadata accessor for TaskPayloadRecord);
        if ((sub_100008480(v751[2], v751[3], v314) & 1) == 0)
        {
          v328 = v316[189];
          v329 = sub_10002C958();
          v330 = sub_10002CBA8();
          v331 = os_log_type_enabled(v329, v330);
          v332 = v316[69];
          if (v331)
          {
            v333 = swift_slowAlloc();
            v795[0] = 0;
            v794[0] = 0;
            *v333 = 0;
            v793[0] = v333 + 2;
            sub_10000B2CC(_swiftEmptyArrayStorage, v793, v795, v794);
            v334 = v330;
            v335 = v329;
            v336 = "Skipping taskPayloadRecord because associated with an unavailable extensionId.";
            goto LABEL_108;
          }

LABEL_109:

          sub_10002B40C(v292, 0);
          sub_100005B40(v332, type metadata accessor for TaskPayloadRecord);
LABEL_84:
          v1 = v788;
          goto LABEL_85;
        }

        v318 = v316[256];
        v319 = *v316[69];
        v320 = v751[1];

        LOBYTE(v319) = sub_100008480(v319, v320, v318);

        v1 = v316;
        if ((v319 & 1) == 0)
        {
          v337 = v316[189];
          v329 = sub_10002C958();
          v338 = sub_10002CBA8();
          v339 = os_log_type_enabled(v329, v338);
          v332 = v316[69];
          if (v339)
          {
            v333 = swift_slowAlloc();
            v795[0] = 0;
            v794[0] = 0;
            *v333 = 0;
            v793[0] = v333 + 2;
            sub_10000B2CC(_swiftEmptyArrayStorage, v793, v795, v794);
            v334 = v338;
            v335 = v329;
            v336 = "Skipping taskPayloadRecord because associated with an unavailable taskName.";
LABEL_108:
            _os_log_impl(&_mh_execute_header, v335, v334, v336, v333, 2u);
          }

          goto LABEL_109;
        }

        sub_100005AD8(v316[69], v316[68], type metadata accessor for TaskPayloadRecord);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v779 = sub_10000B55C(0, v779[2] + 1, 1, v779, &qword_100038758, &qword_10002DFF0, type metadata accessor for TaskPayloadRecord);
        }

        v322 = v779[2];
        v321 = v779[3];
        if (v322 >= v321 >> 1)
        {
          v779 = sub_10000B55C(v321 > 1, v322 + 1, 1, v779, &qword_100038758, &qword_10002DFF0, type metadata accessor for TaskPayloadRecord);
        }

        v323 = v316[197];
        v324 = v1[69];
        v325 = v1[68];
        v779[2] = v322 + 1;
        sub_10002B814(v325, v779 + ((*(v743 + 80) + 32) & ~*(v743 + 80)) + *(v743 + 72) * v322, type metadata accessor for TaskPayloadRecord);
        sub_10002B40C(v292, 0);
        sub_100005B40(v324, type metadata accessor for TaskPayloadRecord);
        v326 = *(v323 + 88);
        v312 = __OFADD__(v326, 1);
        v327 = v326 + 1;
        if (v312)
        {
          goto LABEL_184;
        }

        *(v1[197] + 88) = v327;
      }

LABEL_85:
      ++v289;
      v290 += 24;
      if (v288 == v289)
      {
        goto LABEL_112;
      }
    }
  }

  v779 = _swiftEmptyArrayStorage;
LABEL_112:

  if (sub_10002CB18())
  {
    v340 = v1[242];
    v341 = v1[240];
    v342 = v1[228];
    v343 = v1[222];
    v344 = v1[221];
    v345 = v1[208];
    v346 = v1[206];
    v347 = v1[194];
    v348 = v1[189];

    v349 = sub_10002C958();
    v350 = sub_10002CB98();
    if (os_log_type_enabled(v349, v350))
    {
      v351 = swift_slowAlloc();
      v795[0] = 0;
      v794[0] = 0;
      *v351 = 0;
      v793[0] = v351 + 2;
      sub_10000B2CC(_swiftEmptyArrayStorage, v793, v795, v794);
      _os_log_impl(&_mh_execute_header, v349, v350, "Task cancelled before processing TaskPayloads.", v351, 2u);
    }

    v752 = v1[231];
    v762 = v1[255];
    v352 = v1[209];
    v353 = v1[203];
    v354 = v1[202];
    v355 = v1[201];
    v356 = v1[200];
    v744 = v1[199];
    v357 = v1[198];
    v358 = v1[197];
    v784 = v1[188];
    v789 = v1[229];
    v359 = v1[187];
    v771 = v1[230];
    v780 = v1[186];
    v360 = objc_allocWithZone(sub_10002C7C8());
    v609 = sub_10002C7B8();

    goto LABEL_173;
  }

  v361 = v1[189];
  swift_bridgeObjectRetain_n();
  v362 = sub_10002C958();
  v363 = sub_10002CB98();
  if (os_log_type_enabled(v362, v363))
  {
    v364 = swift_slowAlloc();
    v365 = swift_slowAlloc();
    v795[0] = v365;
    *v364 = 134218242;
    *(v364 + 4) = v779[2];

    *(v364 + 12) = 2080;
    sub_100008968(v779, type metadata accessor for TaskPayloadRecord, type metadata accessor for TaskPayloadRecord, v794);
    v366 = sub_10002CA98();
    v368 = v367;

    v369 = sub_10000B7BC(v366, v368, v795);

    *(v364 + 14) = v369;
    swift_bridgeObjectRelease_n();
    _os_log_impl(&_mh_execute_header, v362, v363, "Processing TaskPayloadRecords (count: %ld): %s", v364, 0x16u);
    sub_1000067EC(v365);
  }

  else
  {

    swift_bridgeObjectRelease_n();
  }

  if (!v1[243])
  {
LABEL_163:
    v539 = v1[228];
    v540 = v1[221];
    v541 = v1[196];
    v542 = v1[195];
    v543 = v1[170];
    v544 = v1[164];

    sub_10002C5D8();
    sub_10002C598();
    v546 = v545;
    v542(v543, v544);
    v547 = objc_allocWithZone(NSUserDefaults);
    v548 = sub_10002CA18();
    v549 = [v547 initWithSuiteName:v548];

    if (v549)
    {
      v550 = v1[189];
      v551 = sub_10002C958();
      v552 = sub_10002CB98();
      v553 = os_log_type_enabled(v551, v552);
      v554 = v1[242];
      v555 = v1[240];
      v556 = v1[222];
      v557 = v1[208];
      v558 = v1;
      v559 = v1[206];
      v560 = v558[194];
      if (v553)
      {
        v561 = swift_slowAlloc();
        *v561 = 134217984;
        *(v561 + 4) = v546;

        _os_log_impl(&_mh_execute_header, v551, v552, "Marking lastSuccessTimestamp: %f", v561, 0xCu);
      }

      else
      {
      }

      v589 = sub_10002CB28().super.super.isa;
      v590 = sub_10002CA18();
      [v549 setValue:v589 forKey:v590];

      v1 = v788;
    }

    else
    {
      v583 = v1[242];
      v584 = v1[240];
      v585 = v1[222];
      v586 = v1[208];
      v587 = v1[206];
      v588 = v1[194];
    }

    v755 = v1[231];
    v765 = v1[255];
    v591 = v1[209];
    v592 = v1[203];
    v593 = v1[202];
    v594 = v1[201];
    v595 = v1[200];
    v744 = v1[199];
    v596 = v1[198];
    v358 = v1[197];
    v784 = v1[188];
    v791 = v1[229];
    v359 = v1[187];
    v773 = v1[230];
    v780 = v1[186];
    v597 = objc_allocWithZone(sub_10002C7C8());
    v609 = sub_10002C7B8();

LABEL_173:

    v582 = v358;
    goto LABEL_174;
  }

  v393 = 0;
  v753 = (v1[65] + 48);
  v394 = v1[75];
  v395 = v1[71];
  v692 = (v395 + 104);
  v688 = (v395 + 8);
  v745 = (v394 + 8);
  v703 = (v394 + 16);
  v672 = v1[67];
  v763 = v1[88];
  v396 = (v763 + 8);
  v667 = v1[66];
  v714 = enum case for URL.DirectoryHint.inferFromPath(_:);
  v733 = (v763 + 8);
  loga = (v394 + 56);
  while (1)
  {
    v399 = v1[242];
    if (*(v399 + 16) <= v393)
    {
      goto LABEL_183;
    }

    v400 = *(v763 + 16);
    v400(v1[91], v399 + ((*(v763 + 80) + 32) & ~*(v763 + 80)) + *(v763 + 72) * v393, v1[87]);
    if (sub_10002CB18())
    {
      break;
    }

    v401 = v1[91];
    v402 = v1[64];
    v403 = v1[62];
    *(swift_task_alloc() + 16) = v401;
    sub_1000087D0(sub_10002B6B0, v779, type metadata accessor for TaskPayloadRecord, type metadata accessor for TaskPayloadRecord, type metadata accessor for TaskPayloadRecord, v403);

    if ((*v753)(v403, 1, v402) == 1)
    {
      v404 = v1[189];
      v405 = v1[91];
      v406 = v1[90];
      v407 = v1[87];
      sub_10002B7B4(v1[62], &qword_100038640, &qword_10002DF00);
      v400(v406, v405, v407);
      v408 = sub_10002C958();
      v409 = sub_10002CB98();
      v410 = os_log_type_enabled(v408, v409);
      v411 = v1[90];
      v412 = v1[87];
      if (v410)
      {
        v413 = swift_slowAlloc();
        v414 = swift_slowAlloc();
        v794[0] = v414;
        *v413 = 136315138;
        v415 = sub_10002C728();
        v417 = sub_10000B7BC(v415, v416, v794);
        v396 = (v763 + 8);

        *(v413 + 4) = v417;
        v1 = v788;
        v397 = *v733;
        (*v733)(v411, v412);
        _os_log_impl(&_mh_execute_header, v408, v409, "Skipping task. No TaskPayloadRecord found for: %s", v413, 0xCu);
        sub_1000067EC(v414);
      }

      else
      {

        v397 = *v396;
        (*v396)(v411, v412);
      }
    }

    else
    {
      v418 = v1[91];
      sub_10002B814(v1[62], v1[67], type metadata accessor for TaskPayloadRecord);
      sub_10002C708();
      if (!v419)
      {
        v450 = v1[189];
        sub_100005AD8(v1[67], v1[66], type metadata accessor for TaskPayloadRecord);
        v451 = sub_10002C958();
        v452 = sub_10002CBB8();
        v453 = os_log_type_enabled(v451, v452);
        v454 = v1[67];
        v455 = v1[66];
        if (v453)
        {
          v456 = swift_slowAlloc();
          v457 = swift_slowAlloc();
          v794[0] = v457;
          *v456 = 136315138;
          v458 = *v455;
          v459 = *(v667 + 8);

          v460 = sub_10000B7BC(v458, v459, v794);
          v1 = v788;

          *(v456 + 4) = v460;
          sub_100005B40(v455, type metadata accessor for TaskPayloadRecord);
          _os_log_impl(&_mh_execute_header, v451, v452, "Task %s doesn't have a valid taskFolder. Skipping task.", v456, 0xCu);
          sub_1000067EC(v457);

          v461 = v454;
          v396 = (v763 + 8);
        }

        else
        {
          sub_100005B40(v1[66], type metadata accessor for TaskPayloadRecord);

          v461 = v454;
        }

        sub_100005B40(v461, type metadata accessor for TaskPayloadRecord);
        v397 = *v396;
        goto LABEL_131;
      }

      v726 = v393;
      v420 = v1[85];
      v718 = v1[83];
      v737 = v1[74];
      v421 = v1[72];
      v422 = v1[70];
      v696 = loga->isa;
      (loga->isa)(v1[73], 1, 1);
      v423 = *v692;
      (*v692)(v421, v714, v422);

      v424 = v423;
      sub_10002C558();
      v1[25] = 0x737465737361;
      v1[26] = 0xE600000000000000;
      v423(v421, v714, v422);
      sub_10002B6D0();
      sub_10002C568();
      v425 = *v688;
      (*v688)(v421, v422);
      v426 = v737;
      v738 = *v745;
      (*v745)(v420, v426);
      v427 = objc_opt_self();
      v428 = [v427 defaultManager];
      sub_10002C548(0);
      v429 = sub_10002CA18();

      v1[48] = 0;
      LODWORD(v421) = [v428 createDirectoryAtPath:v429 withIntermediateDirectories:1 attributes:0 error:v1 + 48];

      v430 = v1[48];
      v431 = v1[189];
      v432 = v1[74];
      if (!v421)
      {
        v462 = v1[83];
        v463 = v1[77];
        v464 = v430;
        sub_10002C508();

        swift_willThrow();
        (*v703)(v463, v462, v432);
        swift_errorRetain();
        swift_errorRetain();
        v465 = v1;
        v466 = sub_10002C958();
        v467 = sub_10002CBB8();
        v468 = os_log_type_enabled(v466, v467);
        v469 = v465[83];
        v470 = v465[77];
        v471 = v465[74];
        v472 = v465[67];
        if (v468)
        {
          v473 = swift_slowAlloc();
          v785 = v469;
          v474 = swift_slowAlloc();
          v697 = swift_slowAlloc();
          v794[0] = v697;
          *v473 = 136315394;
          sub_10002B3B8(&qword_1000386F0, &type metadata accessor for URL);
          v475 = sub_10002CD38();
          v719 = v472;
          v477 = sub_10000B7BC(v475, v476, v794);

          *(v473 + 4) = v477;
          v738(v470, v471);
          *(v473 + 12) = 2112;
          swift_errorRetain();
          v478 = _swift_stdlib_bridgeErrorToNSError();
          *(v473 + 14) = v478;
          *v474 = v478;

          _os_log_impl(&_mh_execute_header, v466, v467, "Failed at creating taskAssetsURL: %s : %@", v473, 0x16u);
          sub_10002B7B4(v474, &qword_1000386C8, &qword_10002DF80);

          sub_1000067EC(v697);

          v738(v785, v471);
          v479 = v719;
        }

        else
        {

          v738(v470, v471);

          v738(v469, v471);
          v479 = v472;
        }

        sub_100005B40(v479, type metadata accessor for TaskPayloadRecord);
        v396 = (v763 + 8);
        v397 = *v733;
        v1 = v788;
        goto LABEL_131;
      }

      v675 = v427;
      v677 = v425;
      v433 = v1[82];
      v684 = v1[81];
      v434 = v788[72];
      v435 = v788[70];
      v436 = *(v672 + 32);
      v437 = *(v672 + 40);
      v696(v788[73], 1, 1, v432);
      v424(v434, v714, v435);
      v438 = v430;

      v1 = v788;
      sub_10002C558();
      v439 = *v703;
      (*v703)(v684, v433, v432);
      v440 = sub_10002C958();
      v441 = sub_10002CB98();
      v442 = os_log_type_enabled(v440, v441);
      v443 = v788[81];
      v444 = v788[74];
      if (v442)
      {
        v445 = swift_slowAlloc();
        v446 = swift_slowAlloc();
        v794[0] = v446;
        *v445 = 136315138;
        sub_10002B3B8(&qword_1000386F0, &type metadata accessor for URL);
        v447 = sub_10002CD38();
        v449 = sub_10000B7BC(v447, v448, v794);

        *(v445 + 4) = v449;
        v738(v443, v444);
        _os_log_impl(&_mh_execute_header, v440, v441, "Processing: %s", v445, 0xCu);
        sub_1000067EC(v446);
        v1 = v788;
      }

      else
      {

        v738(v443, v444);
      }

      v480 = sub_100008DB0(v1[82], v1[83]);
      v481 = v1[189];
      if (v480)
      {
        v439(v1[80], v1[83], v1[74]);
        v482 = sub_10002C958();
        v483 = sub_10002CB98();
        v484 = os_log_type_enabled(v482, v483);
        v485 = v1[83];
        v486 = v1[82];
        v487 = v1[80];
        v488 = v1[74];
        v489 = v1[67];
        if (v484)
        {
          v490 = swift_slowAlloc();
          v720 = v489;
          v491 = swift_slowAlloc();
          v794[0] = v491;
          *v490 = 136315138;
          sub_10002B3B8(&qword_1000386F0, &type metadata accessor for URL);
          v492 = sub_10002CD38();
          v698 = v485;
          v494 = sub_10000B7BC(v492, v493, v794);

          *(v490 + 4) = v494;

          v738(v487, v488);
          _os_log_impl(&_mh_execute_header, v482, v483, "TaskPayload extracted at: %s", v490, 0xCu);
          sub_1000067EC(v491);

          v1 = v788;

          v738(v486, v488);
          v738(v698, v488);
          v495 = v720;
        }

        else
        {

          v738(v487, v488);

          v738(v486, v488);
          v738(v485, v488);
          v495 = v489;
        }
      }

      else
      {
        v496 = sub_10002C958();
        v497 = sub_10002CB98();
        if (os_log_type_enabled(v496, v497))
        {
          v498 = swift_slowAlloc();
          v795[0] = 0;
          v794[0] = 0;
          *v498 = 0;
          v793[0] = v498 + 2;
          sub_10000B2CC(_swiftEmptyArrayStorage, v793, v795, v794);
          _os_log_impl(&_mh_execute_header, v496, v497, "Failed at processing archive, copying raw archive into taskFolder.", v498, 2u);
        }

        v499 = v1[83];
        v500 = v1[82];
        v501 = v1[79];
        v502 = v1[72];
        v503 = v1[70];
        v1[45] = 0x612E737465737361;
        v1[46] = 0xEA00000000007261;
        v424(v502, v714, v503);
        sub_10002C568();
        v677(v502, v503);
        v504 = [v675 defaultManager];
        sub_10002C528(v505);
        v507 = v506;
        sub_10002C528(v508);
        v510 = v509;
        v1[50] = 0;
        LODWORD(v501) = [v504 copyItemAtURL:v507 toURL:v509 error:v1 + 50];

        v511 = v1[50];
        v512 = v1[74];
        if (!v501)
        {
          v518 = v1[189];
          v519 = v1[79];
          v520 = v1[76];
          v521 = v511;
          sub_10002C508();

          swift_willThrow();
          v439(v520, v519, v512);
          swift_errorRetain();
          swift_errorRetain();
          v522 = sub_10002C958();
          v523 = sub_10002CBB8();
          v524 = os_log_type_enabled(v522, v523);
          v525 = v1[83];
          v526 = v1[82];
          v527 = v1[79];
          v528 = v1[76];
          v529 = v1;
          v530 = v1[74];
          v531 = v529[67];
          if (v524)
          {
            v786 = v526;
            v532 = swift_slowAlloc();
            v721 = v525;
            v533 = swift_slowAlloc();
            v680 = swift_slowAlloc();
            v794[0] = v680;
            *v532 = 136315394;
            sub_10002B3B8(&qword_1000386F0, &type metadata accessor for URL);
            v534 = sub_10002CD38();
            v699 = v531;
            v536 = sub_10000B7BC(v534, v535, v794);

            *(v532 + 4) = v536;
            v738(v528, v530);
            *(v532 + 12) = 2112;
            swift_errorRetain();
            v537 = _swift_stdlib_bridgeErrorToNSError();
            *(v532 + 14) = v537;
            *v533 = v537;

            _os_log_impl(&_mh_execute_header, v522, v523, "Failed at asset to: %s : %@", v532, 0x16u);
            sub_10002B7B4(v533, &qword_1000386C8, &qword_10002DF80);

            sub_1000067EC(v680);

            v738(v527, v530);
            v738(v786, v530);
            v738(v721, v530);
            v538 = v699;
          }

          else
          {

            v738(v528, v530);

            v738(v527, v530);
            v738(v526, v530);
            v738(v525, v530);
            v538 = v531;
          }

          sub_100005B40(v538, type metadata accessor for TaskPayloadRecord);
          v396 = (v763 + 8);
          v393 = v726;
          v397 = *v733;
          v1 = v788;
          goto LABEL_131;
        }

        v513 = v1[83];
        v514 = v1[82];
        v515 = v1[79];
        v516 = v1[67];
        v517 = v511;

        v738(v515, v512);
        v738(v514, v512);
        v738(v513, v512);
        v495 = v516;
      }

      sub_100005B40(v495, type metadata accessor for TaskPayloadRecord);
      v396 = (v763 + 8);
      v397 = *v733;
      v393 = v726;
    }

LABEL_131:
    ++v393;
    v398 = v1[243];
    v397(v1[91], v1[87]);
    if (v393 == v398)
    {
      goto LABEL_163;
    }
  }

  v562 = v1[242];
  v563 = v1[240];
  v564 = v1[228];
  v565 = v1[222];
  v566 = v1[221];
  v567 = v1[208];
  v568 = v1[206];
  v569 = v1[194];
  v570 = v1[189];

  v571 = sub_10002C958();
  v572 = sub_10002CB98();
  if (os_log_type_enabled(v571, v572))
  {
    v573 = swift_slowAlloc();
    v795[0] = 0;
    v794[0] = 0;
    *v573 = 0;
    v793[0] = v573 + 2;
    sub_10000B2CC(_swiftEmptyArrayStorage, v793, v795, v794);
    _os_log_impl(&_mh_execute_header, v571, v572, "Task cancelled while processing TaskPayloads.", v573, 2u);
  }

  v754 = v1[231];
  v764 = v1[255];
  v772 = v1[230];
  v790 = v1[229];
  v574 = v1[209];
  v575 = v1[203];
  v576 = v1[202];
  v577 = v1[201];
  v578 = v1[200];
  v730 = v1[199];
  v579 = v1[198];
  v580 = v1[197];
  v359 = v1[187];
  v780 = v1[186];
  v784 = v1[188];
  v739 = v1[87];
  v746 = v1[91];
  v581 = objc_allocWithZone(sub_10002C7C8());
  v609 = sub_10002C7B8();

  (*v733)(v746, v739);

  v582 = v580;
LABEL_174:
  sub_100007A74(v582);
  (*(v359 + 8))(v784, v780);
LABEL_175:

  v598 = v1[188];
  v599 = v1[185];
  v600 = v1[184];
  v601 = v1[183];
  v602 = v1[182];
  v603 = v1[181];
  v604 = v1[180];
  v605 = v1[179];
  v606 = v1[178];
  v607 = v1[177];
  v610 = v1[174];
  v611 = v1[173];
  v612 = v1[170];
  v613 = v1[169];
  v614 = v1[168];
  v615 = v1[167];
  v616 = v1[166];
  v617 = v1[163];
  v618 = v1[160];
  v619 = v1[159];
  v620 = v1[158];
  v621 = v1[157];
  v622 = v1[156];
  v623 = v1[155];
  v624 = v1[154];
  v625 = v1[151];
  v626 = v1[150];
  v627 = v1[149];
  v628 = v1[148];
  v629 = v1[147];
  v630 = v1[146];
  v631 = v1[145];
  v632 = v1[144];
  v633 = v1[143];
  v634 = v1[140];
  v635 = v1[139];
  v636 = v1[138];
  v637 = v1[137];
  v638 = v1[136];
  v639 = v1[135];
  v640 = v1[132];
  v641 = v1[131];
  v642 = v1[130];
  v643 = v1[129];
  v644 = v1[128];
  v645 = v1[125];
  v646 = v1[124];
  v647 = v1[123];
  v648 = v1[122];
  v649 = v1[121];
  v650 = v1[118];
  v651 = v1[115];
  v652 = v1[114];
  v653 = v1[111];
  v654 = v1[110];
  v655 = v1[109];
  v656 = v1[108];
  v657 = v1[107];
  v658 = v1[104];
  v659 = v1[103];
  v660 = v1[102];
  v661 = v1[101];
  v662 = v1[100];
  v663 = v1[99];
  v664 = v1[98];
  v665 = v1[97];
  v666 = v1[96];
  v668 = v1[95];
  v670 = v1[94];
  v673 = v1[93];
  v676 = v1[92];
  v678 = v1[91];
  v681 = v1[90];
  v685 = v1[89];
  v689 = v1[86];
  v693 = v1[85];
  v700 = v1[84];
  v704 = v1[83];
  v707 = v1[82];
  logc = v1[81];
  v715 = v1[80];
  v722 = v1[79];
  v727 = v1[78];
  v731 = v1[77];
  v734 = v1[76];
  v740 = v1[73];
  v747 = v1[72];
  v756 = v1[69];
  v766 = v1[68];
  v774 = v1[67];
  v781 = v1[66];
  v787 = v1[63];
  v792 = v1[62];

  v608 = v1[1];

  return v608(v609);
}

uint64_t sub_10001BC2C(char a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 2024);
  v6 = *v2;
  *(v4 + 2105) = a1;
  *(v4 + 2032) = v1;

  v7 = *(v3 + 2016);
  v8 = *(v3 + 2008);

  if (v1)
  {
    v9 = sub_10002660C;
  }

  else
  {
    v9 = sub_10001BDB4;
  }

  return _swift_task_switch(v9, 0, 0);
}

uint64_t sub_10001BDB4()
{
  v655 = v0;
  v1 = v0[246];
  v2 = v0[189];
  (v0[245])(v0[96], v0[98], v0[87]);
  v3 = sub_10002C958();
  v4 = sub_10002CB98();
  v650 = v0;
  if (os_log_type_enabled(v3, v4))
  {
    v635 = *(v0 + 2105);
    v630 = v0[249];
    v5 = v0[248];
    v641 = v0[98];
    v6 = v0[96];
    v7 = v0[87];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v653[0] = v9;
    *v8 = 136315394;
    v10 = sub_10002C728();
    v12 = sub_10000B7BC(v10, v11, v653);

    *(v8 + 4) = v12;
    v5(v6, v7);
    *(v8 + 12) = 1024;
    *(v8 + 14) = v635;
    _os_log_impl(&_mh_execute_header, v3, v4, "Task %s is removed: %{BOOL}d.", v8, 0x12u);
    sub_1000067EC(v9);

    v5(v641, v7);
  }

  else
  {
    v13 = v0[249];
    v14 = v0[248];
    v15 = v0[98];
    v16 = v0[87];
    v14(v0[96], v16);

    v14(v15, v16);
  }

  v569 = v0[254];
  while (1)
  {
    v17 = v0[250] + 1;
    if (v17 == v0[243])
    {
      break;
    }

    v0[250] = v17;
    v18 = v0[242];
    if (v17 >= *(v18 + 16))
    {
LABEL_144:
      __break(1u);
LABEL_145:
      __break(1u);
LABEL_146:
      __break(1u);
LABEL_147:
      __break(1u);
LABEL_148:
      __break(1u);
LABEL_149:
      __break(1u);
    }

    v19 = v0[247];
    v20 = v0[246];
    (v0[245])(v0[98], v18 + ((*(v0 + 2100) + 32) & ~*(v0 + 2100)) + v0[244] * v17, v0[87]);

    v21 = sub_10002C728();
    v23 = sub_100008480(v21, v22, v19);

    if (v23)
    {
      v136 = v0[246];
      v137 = v0[189];
      (v0[245])(v0[97], v0[98], v0[87]);
      v138 = sub_10002C958();
      v139 = sub_10002CB98();
      v140 = os_log_type_enabled(v138, v139);
      v141 = v0[249];
      v142 = v0[248];
      v143 = v0[97];
      v144 = v0[87];
      if (v140)
      {
        v145 = swift_slowAlloc();
        v146 = swift_slowAlloc();
        v653[0] = v146;
        *v145 = 136315138;
        v147 = sub_10002C728();
        v149 = sub_10000B7BC(v147, v148, v653);

        *(v145 + 4) = v149;
        v142(v143, v144);
        _os_log_impl(&_mh_execute_header, v138, v139, "Task %s is being removed.", v145, 0xCu);
        sub_1000067EC(v146);
      }

      else
      {

        v142(v143, v144);
      }

      v201 = v0[190];
      v202 = v0[98];
      v0[251] = sub_10002C758();
      v203 = sub_10002C728();
      v205 = v204;
      v0[252] = v204;
      v206 = *(&_s20LighthouseBackground12MLHostClientC10removeTaskySbSSYaAA0cD5ErrorOYKFTjTu + 1);
      v207 = _s20LighthouseBackground12MLHostClientC10removeTaskySbSSYaAA0cD5ErrorOYKFTjTu;
      v208 = swift_task_alloc();
      v0[253] = v208;
      *v208 = v0;
      v208[1] = sub_10001BC2C;
      v209 = v0[179];

      return ((&_s20LighthouseBackground12MLHostClientC10removeTaskySbSSYaAA0cD5ErrorOYKFTjTu + v207))(v203, v205, v209);
    }

    v24 = v0[249];
    (v0[248])(v0[98], v0[87]);
  }

  v25 = v0[229];
  v26 = v0[189];
  v27 = swift_allocObject();
  v0[255] = v27;
  swift_beginAccess();
  v28 = *(v25 + 16);
  v562 = v27;
  *(v27 + 16) = v28;
  v565 = (v27 + 16);
  v0[256] = v28;
  v642 = v28;

  v29 = sub_10002C958();
  v30 = sub_10002CB98();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v654[0] = 0;
    v653[0] = 0;
    *v31 = 0;
    v652[0] = v31 + 2;
    sub_10000B2CC(_swiftEmptyArrayStorage, v652, v654, v653);
    _os_log_impl(&_mh_execute_header, v29, v30, "Querying registered tasks for existing payloads...", v31, 2u);
  }

  if (v0[243])
  {
    v32 = 0;
    v33 = v0[88];
    v34 = v0[75];
    v35 = v0[71];
    v631 = v0[242] + ((*(v33 + 80) + 32) & ~*(v33 + 80));
    v636 = v33;
    v36 = (v33 + 8);
    v587 = (v34 + 56);
    v584 = enum case for URL.DirectoryHint.inferFromPath(_:);
    v582 = (v35 + 104);
    v579 = (v35 + 8);
    v573 = (v34 + 8);
    v622 = (v33 + 8);
    do
    {
      if (v32 >= *(v0[242] + 16))
      {
        __break(1u);
        goto LABEL_144;
      }

      v38 = *(v636 + 16);
      v38(v0[95], v631 + *(v636 + 72) * v32, v0[87]);

      v39 = sub_10002C728();
      v41 = sub_100008480(v39, v40, v642);

      if (v41)
      {
        v42 = v0[95];
        sub_10002C708();
        if (v43)
        {
          v608 = v32;
          v44 = v0[84];
          v595 = v0[85];
          v600 = v0[74];
          v45 = v0[72];
          v46 = v0[70];
          (*v587)(v0[73], 1, 1);
          v47 = *v582;
          (*v582)(v45, v584, v46);

          sub_10002C558();
          v650[43] = 0x737465737361;
          v650[44] = 0xE600000000000000;
          v47(v45, v584, v46);
          v0 = v650;
          sub_10002B6D0();
          sub_10002C568();
          (*v579)(v45, v46);
          v48 = *v573;
          (*v573)(v44, v600);
          sub_10002C548(0);
          v48(v595, v600);
          v49 = [objc_opt_self() defaultManager];
          v50 = sub_10002CA18();
          LODWORD(v48) = [v49 fileExistsAtPath:v50];

          if (v48)
          {
            v51 = v650[189];
            v38(v650[93], v650[95], v650[87]);
            v52 = sub_10002C958();
            v53 = sub_10002CB98();
            v54 = os_log_type_enabled(v52, v53);
            v55 = v650[93];
            v56 = v650[87];
            if (v54)
            {
              v57 = swift_slowAlloc();
              v596 = v56;
              v58 = swift_slowAlloc();
              v653[0] = v58;
              *v57 = 136315138;
              v59 = sub_10002C728();
              v61 = sub_10000B7BC(v59, v60, v653);

              *(v57 + 4) = v61;

              v62 = *v622;
              (*v622)(v55, v596);
              _os_log_impl(&_mh_execute_header, v52, v53, "Assets already available. Skipping payload download for task: %s", v57, 0xCu);
              sub_1000067EC(v58);
            }

            else
            {

              v62 = *v622;
              (*v622)(v55, v56);
            }

            v32 = v608;
            v87 = v650[95];
            v88 = v650[87];
            v89 = sub_10002C728();
            sub_10000BEB4(v89, v90);

            v62(v87, v88);
            v36 = v622;
          }

          else
          {
            v36 = v622;
            (*v622)(v650[95], v650[87]);

            v32 = v608;
          }

          goto LABEL_15;
        }

        v77 = v0[189];
        v38(v0[92], v0[95], v0[87]);
        v64 = sub_10002C958();
        v78 = sub_10002CB98();
        v79 = os_log_type_enabled(v64, v78);
        v67 = v0[95];
        v68 = v0[92];
        v69 = v0[87];
        if (v79)
        {
          v80 = v32;
          v81 = swift_slowAlloc();
          v82 = swift_slowAlloc();
          v653[0] = v82;
          *v81 = 136315138;
          v83 = sub_10002C728();
          v85 = sub_10000B7BC(v83, v84, v653);

          *(v81 + 4) = v85;
          v86 = *v622;
          (*v622)(v68, v69);
          _os_log_impl(&_mh_execute_header, v64, v78, "Skipping registeredTask %s due to lack of taskFolder.", v81, 0xCu);
          sub_1000067EC(v82);
          v36 = v622;

          v32 = v80;

          v86(v67, v69);
          goto LABEL_14;
        }
      }

      else
      {
        v63 = v0[189];
        v38(v0[94], v0[95], v0[87]);
        v64 = sub_10002C958();
        v65 = sub_10002CB98();
        v66 = os_log_type_enabled(v64, v65);
        v67 = v0[95];
        v68 = v0[94];
        v69 = v0[87];
        if (v66)
        {
          v70 = swift_slowAlloc();
          v71 = swift_slowAlloc();
          v653[0] = v71;
          *v70 = 136315138;
          v72 = sub_10002C728();
          v74 = v32;
          v75 = sub_10000B7BC(v72, v73, v653);
          v36 = v622;

          *(v70 + 4) = v75;
          v76 = *v622;
          (*v622)(v68, v69);
          _os_log_impl(&_mh_execute_header, v64, v65, "Skipping payloads for registeredTask %s it was not added in this run.", v70, 0xCu);
          sub_1000067EC(v71);

          v76(v67, v69);
          v32 = v74;
          goto LABEL_14;
        }
      }

      v37 = *v36;
      (*v36)(v68, v69);

      v37(v67, v69);
LABEL_14:
      v0 = v650;
LABEL_15:
      ++v32;
    }

    while (v32 != v0[243]);
  }

  v91 = v0[189];

  v92 = sub_10002C958();
  v93 = sub_10002CB98();
  if (!os_log_type_enabled(v92, v93))
  {

    if ((sub_10002CB18() & 1) == 0)
    {
      goto LABEL_31;
    }

LABEL_37:
    v112 = v0;
    v113 = v0[242];
    v114 = v0[240];
    v115 = v0[228];
    v116 = v0[222];
    v117 = v0[221];
    v118 = v0[208];
    v119 = v0[206];
    v120 = v0[203];
    v121 = v112[194];
    v122 = v112[189];

    v123 = sub_10002C958();
    v124 = sub_10002CB98();
    if (os_log_type_enabled(v123, v124))
    {
      v125 = swift_slowAlloc();
      v654[0] = 0;
      v653[0] = 0;
      *v125 = 0;
      v652[0] = v125 + 2;
      sub_10000B2CC(_swiftEmptyArrayStorage, v652, v654, v653);
      _os_log_impl(&_mh_execute_header, v123, v124, "Task cancelled before querying for TaskPayloads.", v125, 2u);
    }

    v126 = v650;
    v615 = v650[231];
    v624 = v650[230];
    v127 = v650[209];
    v128 = v650[203];
    v129 = v650[202];
    v130 = v650[201];
    v131 = v650[200];
    v609 = v650[199];
    v132 = v650[198];
    v133 = v650[197];
    v637 = v650[188];
    v644 = v650[229];
    v134 = v650[187];
    v632 = v650[186];
    v135 = objc_allocWithZone(sub_10002C7C8());
    v491 = sub_10002C7B8();

    sub_100007A74(v133);
    (*(v134 + 8))(v637, v632);
    goto LABEL_140;
  }

  v94 = swift_slowAlloc();
  v95 = swift_slowAlloc();
  v653[0] = v95;
  *v94 = 136315138;
  swift_beginAccess();
  v96 = *(v562 + 16);

  v97 = sub_10002CB38();
  v99 = v98;

  v100 = sub_10000B7BC(v97, v99, v653);

  *(v94 + 4) = v100;

  _os_log_impl(&_mh_execute_header, v92, v93, "Computed payloadsTaskNames: %s", v94, 0xCu);
  sub_1000067EC(v95);

  if (sub_10002CB18())
  {
    goto LABEL_37;
  }

LABEL_31:
  swift_beginAccess();
  v101 = *v565;
  if (*(*v565 + 16))
  {
    v102 = v0[189];
    swift_retain_n();
    v103 = sub_10002C958();
    v104 = sub_10002CB98();
    if (os_log_type_enabled(v103, v104))
    {
      v105 = swift_slowAlloc();
      v106 = swift_slowAlloc();
      v107 = v106;
      v654[0] = v106;
      *v105 = 136315138;
      v108 = *(v101 + 16);
      if (v108)
      {
        v623 = v106;
        v643 = v103;
        v109 = sub_10000B738(v108, 0);
        v110 = sub_10000E634(v653, v109 + 4, v108, v101);
        swift_bridgeObjectRetain_n();
        sub_10002B724();
        if (v110 != v108)
        {
          goto LABEL_149;
        }

        v111 = v569;
        v103 = v643;
        v107 = v623;
      }

      else
      {

        v109 = _swiftEmptyArrayStorage;
        v111 = v569;
      }

      v653[0] = v109;
      sub_10000BFF0(v653);
      if (v111)
      {
      }

      v244 = sub_10002CA98();
      v246 = v245;

      v247 = sub_10000B7BC(v244, v246, v654);

      *(v105 + 4) = v247;

      _os_log_impl(&_mh_execute_header, v103, v104, "Querying TaskPayloads for new tasks: %s", v105, 0xCu);
      sub_1000067EC(v107);
    }

    else
    {
    }

    v248 = v650[214];
    v249 = v650[212];
    v250 = v650[211];
    v251 = v650[210];
    v252 = v650[203];
    v253 = v650[202];
    v254 = v650[201];
    v255 = swift_allocObject();
    *(v255 + 16) = xmmword_10002DE40;
    *(v255 + 56) = &type metadata for String;
    *(v255 + 64) = v249;
    *(v255 + 32) = 0x656D614E6B736174;
    *(v255 + 40) = 0xE800000000000000;
    v256 = *v565;

    v258 = sub_100008AE8(v257);

    *(v255 + 96) = sub_100005338(&qword_1000386D8, &qword_10002DFA0);
    *(v255 + 104) = sub_10002B880(&qword_1000386E0, &qword_1000386D8, &qword_10002DFA0);
    *(v255 + 72) = v258;
    v259 = sub_10002CB88();
    v657._countAndFlagsBits = 0x6C7961506B736154;
    v657._object = 0xEC0000007364616FLL;
    isa = sub_10002CBC8(v657, v259).super.isa;
    v650[257] = isa;
    v261 = swift_task_alloc();
    v650[258] = v261;
    *(v261 + 16) = isa;
    *(v261 + 24) = v254;
    v262 = swift_task_alloc();
    v650[259] = v262;
    *(v262 + 16) = &unk_10002DFB0;
    *(v262 + 24) = v261;
    v263 = async function pointer to CKDatabase.configuredWith<A>(configuration:group:body:)[1];
    v264 = swift_task_alloc();
    v650[260] = v264;
    *v264 = v650;
    v264[1] = sub_10001F8D0;
    v265 = v650[219];
    v266 = v650[200];

    return CKDatabase.configuredWith<A>(configuration:group:body:)(v650 + 37, v252, v253, &unk_10002DFB8, v262, v265);
  }

  v150 = v0[203];

  v151 = v0;
  v645 = _swiftEmptyArrayStorage[2];
  if (v645)
  {
    v152 = 0;
    v153 = &_swiftEmptyArrayStorage[6];
    v610 = v0[65];
    v616 = v0[69];
    v638 = _swiftEmptyArrayStorage;
    while (1)
    {
      if (v152 >= _swiftEmptyArrayStorage[2])
      {
        goto LABEL_145;
      }

      v154 = *(v153 - 2);
      v155 = *(v153 - 1);
      if (*v153)
      {
        v156 = v151[189];
        sub_10002B400(*(v153 - 1), 1);
        sub_10002B400(v155, 1);
        sub_10002B400(v155, 1);
        v157 = v154;
        v158 = sub_10002C958();
        v159 = sub_10002CBB8();
        if (os_log_type_enabled(v158, v159))
        {
          v160 = swift_slowAlloc();
          v161 = swift_slowAlloc();
          *v160 = 138412290;
          swift_errorRetain();
          v162 = _swift_stdlib_bridgeErrorToNSError();
          *(v160 + 4) = v162;
          *v161 = v162;

          sub_10002B40C(v155, 1);
          sub_10002B40C(v155, 1);
          _os_log_impl(&_mh_execute_header, v158, v159, "Error: %@", v160, 0xCu);
          sub_10002B7B4(v161, &qword_1000386C8, &qword_10002DF80);

          sub_10002B40C(v155, 1);
        }

        else
        {

          sub_10002B40C(v155, 1);
          sub_10002B40C(v155, 1);
        }

        v172 = v151[197];
        v173 = *(v172 + 96);
        v174 = __OFADD__(v173, 1);
        v175 = v173 + 1;
        if (v174)
        {
          goto LABEL_146;
        }

        *(v172 + 96) = v175;
      }

      else
      {
        v164 = v151[63];
        v163 = v151[64];
        sub_10002B400(*(v153 - 1), 0);
        sub_10002B400(v155, 0);
        v165 = v154;
        sub_1000049E8(v155, v164);
        if ((*(v610 + 48))(v164, 1, v163) == 1)
        {
          v166 = v151[189];
          sub_10002B7B4(v151[63], &qword_100038640, &qword_10002DF00);
          v167 = v155;
          v168 = sub_10002C958();
          v169 = sub_10002CBB8();
          if (os_log_type_enabled(v168, v169))
          {
            v170 = swift_slowAlloc();
            v171 = swift_slowAlloc();
            *v170 = 138412290;
            *(v170 + 4) = v167;
            *v171 = v155;

            sub_10002B40C(v155, 0);
            _os_log_impl(&_mh_execute_header, v168, v169, "Skipping record: %@", v170, 0xCu);
            sub_10002B7B4(v171, &qword_1000386C8, &qword_10002DF80);
            v151 = v650;

            sub_10002B40C(v155, 0);
          }

          else
          {

            sub_10002B40C(v155, 0);
            sub_10002B40C(v155, 0);
          }

          goto LABEL_45;
        }

        v176 = v151[208];
        v177 = v151[69];
        v178 = v151[63];

        sub_10002B814(v178, v177, type metadata accessor for TaskPayloadRecord);
        if ((sub_100008480(v616[2], v616[3], v176) & 1) == 0)
        {
          v189 = v151[189];
          v190 = sub_10002C958();
          v191 = sub_10002CBA8();
          v192 = os_log_type_enabled(v190, v191);
          v193 = v151[69];
          if (v192)
          {
            v194 = swift_slowAlloc();
            v654[0] = 0;
            v653[0] = 0;
            *v194 = 0;
            v652[0] = v194 + 2;
            sub_10000B2CC(_swiftEmptyArrayStorage, v652, v654, v653);
            v195 = v191;
            v196 = v190;
            v197 = "Skipping taskPayloadRecord because associated with an unavailable extensionId.";
            goto LABEL_68;
          }

LABEL_69:

          sub_10002B40C(v155, 0);
          sub_100005B40(v193, type metadata accessor for TaskPayloadRecord);
          goto LABEL_45;
        }

        v179 = v151[256];
        v180 = *v151[69];
        v181 = v616[1];

        LOBYTE(v180) = sub_100008480(v180, v181, v179);

        if ((v180 & 1) == 0)
        {
          v198 = v151[189];
          v190 = sub_10002C958();
          v199 = sub_10002CBA8();
          v200 = os_log_type_enabled(v190, v199);
          v193 = v151[69];
          if (v200)
          {
            v194 = swift_slowAlloc();
            v654[0] = 0;
            v653[0] = 0;
            *v194 = 0;
            v652[0] = v194 + 2;
            sub_10000B2CC(_swiftEmptyArrayStorage, v652, v654, v653);
            v195 = v199;
            v196 = v190;
            v197 = "Skipping taskPayloadRecord because associated with an unavailable taskName.";
LABEL_68:
            _os_log_impl(&_mh_execute_header, v196, v195, v197, v194, 2u);
          }

          goto LABEL_69;
        }

        sub_100005AD8(v151[69], v151[68], type metadata accessor for TaskPayloadRecord);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v638 = sub_10000B55C(0, v638[2] + 1, 1, v638, &qword_100038758, &qword_10002DFF0, type metadata accessor for TaskPayloadRecord);
        }

        v183 = v638[2];
        v182 = v638[3];
        if (v183 >= v182 >> 1)
        {
          v638 = sub_10000B55C(v182 > 1, v183 + 1, 1, v638, &qword_100038758, &qword_10002DFF0, type metadata accessor for TaskPayloadRecord);
        }

        v184 = v151[197];
        v185 = v151[69];
        v186 = v151[68];
        v638[2] = v183 + 1;
        sub_10002B814(v186, v638 + ((*(v610 + 80) + 32) & ~*(v610 + 80)) + *(v610 + 72) * v183, type metadata accessor for TaskPayloadRecord);
        sub_10002B40C(v155, 0);
        sub_100005B40(v185, type metadata accessor for TaskPayloadRecord);
        v187 = *(v184 + 88);
        v174 = __OFADD__(v187, 1);
        v188 = v187 + 1;
        if (v174)
        {
          goto LABEL_148;
        }

        *(v151[197] + 88) = v188;
      }

LABEL_45:
      ++v152;
      v153 += 24;
      if (v645 == v152)
      {
        goto LABEL_76;
      }
    }
  }

  v638 = _swiftEmptyArrayStorage;
LABEL_76:

  if (sub_10002CB18())
  {
    v211 = v151[242];
    v212 = v151[240];
    v213 = v151[228];
    v214 = v151[222];
    v215 = v151[221];
    v216 = v151[208];
    v217 = v151[206];
    v218 = v151[194];
    v219 = v151[189];

    v220 = sub_10002C958();
    v221 = sub_10002CB98();
    if (os_log_type_enabled(v220, v221))
    {
      v222 = swift_slowAlloc();
      v654[0] = 0;
      v653[0] = 0;
      *v222 = 0;
      v652[0] = v222 + 2;
      sub_10000B2CC(_swiftEmptyArrayStorage, v652, v654, v653);
      _os_log_impl(&_mh_execute_header, v220, v221, "Task cancelled before processing TaskPayloads.", v222, 2u);
    }

    v126 = v151;
    v617 = v151[231];
    v625 = v151[255];
    v223 = v151[230];
    v224 = v151[229];
    v225 = v151[209];
    v226 = v151[203];
    v227 = v151[202];
    v228 = v151[201];
    v229 = v151[200];
    v611 = v151[199];
    v230 = v151[198];
    v231 = v126[197];
    v646 = v126[188];
    v232 = v126[187];
    v639 = v126[186];
    v233 = objc_allocWithZone(sub_10002C7C8());
    v491 = sub_10002C7B8();

    goto LABEL_138;
  }

  v234 = v151[189];
  v235 = v638;
  swift_bridgeObjectRetain_n();
  v236 = sub_10002C958();
  v237 = sub_10002CB98();
  if (os_log_type_enabled(v236, v237))
  {
    v238 = swift_slowAlloc();
    v239 = swift_slowAlloc();
    v654[0] = v239;
    *v238 = 134218242;
    *(v238 + 4) = v638[2];

    *(v238 + 12) = 2080;
    sub_100008968(v638, type metadata accessor for TaskPayloadRecord, type metadata accessor for TaskPayloadRecord, v653);
    v240 = sub_10002CA98();
    v242 = v241;

    v243 = sub_10000B7BC(v240, v242, v654);

    *(v238 + 14) = v243;
    v235 = v638;
    swift_bridgeObjectRelease_n();
    _os_log_impl(&_mh_execute_header, v236, v237, "Processing TaskPayloadRecords (count: %ld): %s", v238, 0x16u);
    sub_1000067EC(v239);

    if (!v151[243])
    {
      goto LABEL_128;
    }
  }

  else
  {

    swift_bridgeObjectRelease_n();
    if (!v151[243])
    {
LABEL_128:
      v418 = v151[228];
      v419 = v151[221];
      v420 = v151[196];
      v421 = v151[195];
      v422 = v151[170];
      v423 = v151[164];

      sub_10002C5D8();
      sub_10002C598();
      v425 = v424;
      v421(v422, v423);
      v426 = objc_allocWithZone(NSUserDefaults);
      v427 = sub_10002CA18();
      v428 = [v426 initWithSuiteName:v427];

      if (v428)
      {
        v429 = v151[189];
        v430 = sub_10002C958();
        v431 = sub_10002CB98();
        v432 = os_log_type_enabled(v430, v431);
        v433 = v151[242];
        v434 = v151[240];
        v435 = v151[222];
        v436 = v151[208];
        v437 = v151;
        v438 = v151[206];
        v439 = v437[194];
        if (v432)
        {
          v440 = swift_slowAlloc();
          *v440 = 134217984;
          *(v440 + 4) = v425;

          _os_log_impl(&_mh_execute_header, v430, v431, "Marking lastSuccessTimestamp: %f", v440, 0xCu);
        }

        else
        {
        }

        v469 = sub_10002CB28().super.super.isa;
        v470 = sub_10002CA18();
        [v428 setValue:v469 forKey:v470];

        v151 = v650;
      }

      else
      {
        v463 = v151[242];
        v464 = v151[240];
        v465 = v151[222];
        v466 = v151[208];
        v467 = v151[206];
        v468 = v151[194];
      }

      v126 = v151;
      v620 = v151[231];
      v628 = v151[255];
      v471 = v151[230];
      v472 = v151[229];
      v473 = v151[209];
      v474 = v151[203];
      v475 = v151[202];
      v476 = v151[201];
      v477 = v151[200];
      v611 = v151[199];
      v478 = v151[198];
      v231 = v126[197];
      v646 = v126[188];
      v232 = v126[187];
      v639 = v126[186];
      v479 = objc_allocWithZone(sub_10002C7C8());
      v491 = sub_10002C7B8();

LABEL_138:

      v462 = v231;
      goto LABEL_139;
    }
  }

  v267 = 0;
  v268 = v151[88];
  v269 = v268 + 16;
  v618 = (v151[65] + 48);
  v270 = v151[75];
  v271 = (v270 + 56);
  v272 = v151[71];
  v563 = (v272 + 104);
  v560 = (v272 + 8);
  v605 = (v270 + 8);
  v580 = (v270 + 16);
  v626 = v268;
  v552 = v151[67];
  v549 = v151[66];
  v585 = enum case for URL.DirectoryHint.inferFromPath(_:);
  v597 = v268 + 16;
  v612 = (v270 + 56);
  v633 = (v268 + 8);
  while (1)
  {
    v275 = v151[242];
    if (*(v275 + 16) <= v267)
    {
      goto LABEL_147;
    }

    v276 = *(v626 + 16);
    v276(v151[91], v275 + ((*(v626 + 80) + 32) & ~*(v626 + 80)) + *(v626 + 72) * v267, v151[87]);
    if (sub_10002CB18())
    {
      break;
    }

    v277 = v151[91];
    v278 = v151[64];
    v279 = v151[62];
    *(swift_task_alloc() + 16) = v277;
    sub_1000087D0(sub_10002B6B0, v235, type metadata accessor for TaskPayloadRecord, type metadata accessor for TaskPayloadRecord, type metadata accessor for TaskPayloadRecord, v279);

    if ((*v618)(v279, 1, v278) == 1)
    {
      v280 = v151[189];
      v281 = v151[91];
      v282 = v151[90];
      v283 = v151[87];
      sub_10002B7B4(v151[62], &qword_100038640, &qword_10002DF00);
      v284 = v283;
      v285 = v269;
      v276(v282, v281, v284);
      v286 = sub_10002C958();
      v287 = sub_10002CB98();
      v288 = os_log_type_enabled(v286, v287);
      v289 = v151[90];
      v290 = v151[87];
      if (v288)
      {
        v291 = swift_slowAlloc();
        v647 = v267;
        v292 = swift_slowAlloc();
        v653[0] = v292;
        *v291 = 136315138;
        v293 = sub_10002C728();
        v295 = sub_10000B7BC(v293, v294, v653);
        v271 = v612;

        *(v291 + 4) = v295;
        v151 = v650;
        v273 = *v633;
        (*v633)(v289, v290);
        _os_log_impl(&_mh_execute_header, v286, v287, "Skipping task. No TaskPayloadRecord found for: %s", v291, 0xCu);
        sub_1000067EC(v292);
        v267 = v647;
        v269 = v597;

        v235 = v638;
      }

      else
      {

        v273 = *v633;
        (*v633)(v289, v290);
        v235 = v638;
        v269 = v285;
      }
    }

    else
    {
      v296 = v151[91];
      sub_10002B814(v151[62], v151[67], type metadata accessor for TaskPayloadRecord);
      sub_10002C708();
      if (v297)
      {
        v648 = v267;
        v298 = v151[85];
        v588 = v151[83];
        v601 = v151[74];
        v299 = v151[72];
        v300 = v271;
        v301 = v151[70];
        v566 = *v300;
        (*v300)(v151[73], 1, 1);
        v302 = *v563;
        (*v563)(v299, v585, v301);

        sub_10002C558();
        v151[25] = 0x737465737361;
        v151[26] = 0xE600000000000000;
        v574 = v302;
        v302(v299, v585, v301);
        sub_10002B6D0();
        sub_10002C568();
        v303 = *v560;
        (*v560)(v299, v301);
        v304 = v601;
        v602 = *v605;
        (*v605)(v298, v304);
        v305 = objc_opt_self();
        v306 = [v305 defaultManager];
        sub_10002C548(0);
        v307 = sub_10002CA18();

        v151[48] = 0;
        v308 = [v306 createDirectoryAtPath:v307 withIntermediateDirectories:1 attributes:0 error:v151 + 48];

        v309 = v151[48];
        v310 = v151[189];
        v311 = v151[74];
        if (v308)
        {
          v554 = v305;
          v556 = v303;
          v312 = v151[82];
          v589 = v151[81];
          v313 = v151[73];
          v314 = v151[72];
          v315 = v151[70];
          v317 = *(v552 + 32);
          v316 = *(v552 + 40);
          v566(v313, 1, 1, v311);
          v574(v314, v585, v315);
          v318 = v309;

          v151 = v650;
          sub_10002C558();
          v319 = *v580;
          (*v580)(v589, v312, v311);
          v320 = sub_10002C958();
          v321 = sub_10002CB98();
          v322 = os_log_type_enabled(v320, v321);
          v323 = v650[81];
          v324 = v650[74];
          if (v322)
          {
            v325 = swift_slowAlloc();
            v326 = swift_slowAlloc();
            v653[0] = v326;
            *v325 = 136315138;
            sub_10002B3B8(&qword_1000386F0, &type metadata accessor for URL);
            v327 = sub_10002CD38();
            v329 = sub_10000B7BC(v327, v328, v653);

            *(v325 + 4) = v329;
            v151 = v650;
            v602(v323, v324);
            _os_log_impl(&_mh_execute_header, v320, v321, "Processing: %s", v325, 0xCu);
            sub_1000067EC(v326);
          }

          else
          {

            v602(v323, v324);
          }

          v360 = sub_100008DB0(v151[82], v151[83]);
          v361 = v151[189];
          if ((v360 & 1) == 0)
          {
            v377 = sub_10002C958();
            v378 = sub_10002CB98();
            if (os_log_type_enabled(v377, v378))
            {
              v379 = swift_slowAlloc();
              v654[0] = 0;
              v653[0] = 0;
              *v379 = 0;
              v652[0] = v379 + 2;
              sub_10000B2CC(_swiftEmptyArrayStorage, v652, v654, v653);
              _os_log_impl(&_mh_execute_header, v377, v378, "Failed at processing archive, copying raw archive into taskFolder.", v379, 2u);
            }

            v380 = v151[83];
            v381 = v151[82];
            v382 = v151[79];
            v383 = v151[72];
            v384 = v151[70];
            v151[45] = 0x612E737465737361;
            v151[46] = 0xEA00000000007261;
            v574(v383, v585, v384);
            sub_10002C568();
            v556(v383, v384);
            v385 = [v554 defaultManager];
            sub_10002C528(v386);
            v388 = v387;
            sub_10002C528(v389);
            v391 = v390;
            v151[50] = 0;
            LODWORD(v382) = [v385 copyItemAtURL:v388 toURL:v390 error:v151 + 50];

            v392 = v151[50];
            v393 = v151[74];
            if (v382)
            {
              v394 = v151[83];
              v395 = v151[82];
              v396 = v151[79];
              v397 = v151[67];
              v398 = v392;

              v602(v396, v393);
              v602(v395, v393);
              v602(v394, v393);
              sub_100005B40(v397, type metadata accessor for TaskPayloadRecord);
              v235 = v638;
              v273 = *v633;
              v267 = v648;
              v269 = v597;
              v271 = v612;
            }

            else
            {
              v399 = v151[189];
              v400 = v151[79];
              v401 = v151[76];
              v402 = v392;
              sub_10002C508();

              swift_willThrow();
              v319(v401, v400, v393);
              swift_errorRetain();
              swift_errorRetain();
              v403 = sub_10002C958();
              v404 = sub_10002CBB8();
              v405 = os_log_type_enabled(v403, v404);
              v406 = v151[83];
              v407 = v151[82];
              v592 = v151[79];
              v408 = v151[76];
              v409 = v151[74];
              v410 = v151[67];
              if (v405)
              {
                v577 = v151[82];
                v411 = swift_slowAlloc();
                v571 = v406;
                v412 = swift_slowAlloc();
                v558 = swift_slowAlloc();
                v653[0] = v558;
                *v411 = 136315394;
                sub_10002B3B8(&qword_1000386F0, &type metadata accessor for URL);
                v413 = sub_10002CD38();
                v567 = v410;
                v415 = sub_10000B7BC(v413, v414, v653);
                v151 = v650;

                *(v411 + 4) = v415;
                v602(v408, v409);
                *(v411 + 12) = 2112;
                swift_errorRetain();
                v416 = _swift_stdlib_bridgeErrorToNSError();
                *(v411 + 14) = v416;
                *v412 = v416;

                _os_log_impl(&_mh_execute_header, v403, v404, "Failed at asset to: %s : %@", v411, 0x16u);
                sub_10002B7B4(v412, &qword_1000386C8, &qword_10002DF80);

                sub_1000067EC(v558);

                v602(v592, v409);
                v602(v577, v409);
                v602(v571, v409);
                v417 = v567;
              }

              else
              {

                v602(v408, v409);

                v602(v592, v409);
                v602(v407, v409);
                v602(v406, v409);
                v417 = v410;
              }

              sub_100005B40(v417, type metadata accessor for TaskPayloadRecord);
              v267 = v648;
              v271 = v612;
              v235 = v638;
              v273 = *v633;
              v269 = v597;
            }

            goto LABEL_95;
          }

          v319(v151[80], v151[83], v151[74]);
          v362 = sub_10002C958();
          v363 = sub_10002CB98();
          v364 = os_log_type_enabled(v362, v363);
          v365 = v151[83];
          v366 = v151[82];
          v367 = v151[80];
          v368 = v151[74];
          v369 = v151[67];
          if (v364)
          {
            v370 = swift_slowAlloc();
            v591 = v369;
            v371 = swift_slowAlloc();
            v653[0] = v371;
            *v370 = 136315138;
            sub_10002B3B8(&qword_1000386F0, &type metadata accessor for URL);
            v372 = sub_10002CD38();
            v576 = v365;
            v374 = sub_10000B7BC(v372, v373, v653);
            v151 = v650;

            *(v370 + 4) = v374;

            v602(v367, v368);
            _os_log_impl(&_mh_execute_header, v362, v363, "TaskPayload extracted at: %s", v370, 0xCu);
            sub_1000067EC(v371);

            v602(v366, v368);
            v602(v576, v368);
            v375 = v591;
          }

          else
          {

            v602(v367, v368);

            v602(v366, v368);
            v602(v365, v368);
            v375 = v369;
          }

          sub_100005B40(v375, type metadata accessor for TaskPayloadRecord);
          v271 = v612;
          v376 = v633;
          v235 = v638;
        }

        else
        {
          v343 = v151[83];
          v344 = v151[77];
          v345 = v309;
          sub_10002C508();

          swift_willThrow();
          (*v580)(v344, v343, v311);
          swift_errorRetain();
          swift_errorRetain();
          v346 = sub_10002C958();
          v347 = sub_10002CBB8();
          v348 = os_log_type_enabled(v346, v347);
          v349 = v151[83];
          v350 = v151[77];
          v351 = v151[74];
          v352 = v151[67];
          if (v348)
          {
            v353 = swift_slowAlloc();
            v590 = v349;
            v354 = swift_slowAlloc();
            v570 = swift_slowAlloc();
            v653[0] = v570;
            *v353 = 136315394;
            sub_10002B3B8(&qword_1000386F0, &type metadata accessor for URL);
            v355 = sub_10002CD38();
            v575 = v352;
            v357 = sub_10000B7BC(v355, v356, v653);
            v151 = v650;

            *(v353 + 4) = v357;
            v602(v350, v351);
            *(v353 + 12) = 2112;
            swift_errorRetain();
            v358 = _swift_stdlib_bridgeErrorToNSError();
            *(v353 + 14) = v358;
            *v354 = v358;

            _os_log_impl(&_mh_execute_header, v346, v347, "Failed at creating taskAssetsURL: %s : %@", v353, 0x16u);
            sub_10002B7B4(v354, &qword_1000386C8, &qword_10002DF80);

            sub_1000067EC(v570);

            v602(v590, v351);
            v359 = v575;
          }

          else
          {

            v602(v350, v351);

            v602(v349, v351);
            v359 = v352;
          }

          sub_100005B40(v359, type metadata accessor for TaskPayloadRecord);
          v235 = v638;
          v271 = v612;
          v376 = v633;
        }

        v273 = *v376;
        v267 = v648;
        v269 = v597;
      }

      else
      {
        v330 = v151[189];
        sub_100005AD8(v151[67], v151[66], type metadata accessor for TaskPayloadRecord);
        v331 = sub_10002C958();
        v332 = sub_10002CBB8();
        v333 = os_log_type_enabled(v331, v332);
        v334 = v151[67];
        v335 = v151[66];
        if (v333)
        {
          v336 = swift_slowAlloc();
          v337 = v267;
          v338 = swift_slowAlloc();
          v653[0] = v338;
          *v336 = 136315138;
          v339 = *v335;
          v340 = *(v549 + 8);

          v341 = sub_10000B7BC(v339, v340, v653);
          v151 = v650;

          *(v336 + 4) = v341;
          sub_100005B40(v335, type metadata accessor for TaskPayloadRecord);
          _os_log_impl(&_mh_execute_header, v331, v332, "Task %s doesn't have a valid taskFolder. Skipping task.", v336, 0xCu);
          sub_1000067EC(v338);
          v267 = v337;

          v342 = v334;
          v271 = v612;
        }

        else
        {
          sub_100005B40(v151[66], type metadata accessor for TaskPayloadRecord);

          v342 = v334;
        }

        sub_100005B40(v342, type metadata accessor for TaskPayloadRecord);
        v235 = v638;
        v273 = *v633;
      }
    }

LABEL_95:
    ++v267;
    v274 = v151[243];
    v273(v151[91], v151[87]);
    if (v267 == v274)
    {
      goto LABEL_128;
    }
  }

  v441 = v151[242];
  v442 = v151[240];
  v443 = v151[228];
  v444 = v151[222];
  v445 = v151[221];
  v446 = v151[208];
  v447 = v151[206];
  v448 = v151[194];
  v449 = v151[189];

  v450 = sub_10002C958();
  v451 = sub_10002CB98();
  if (os_log_type_enabled(v450, v451))
  {
    v452 = swift_slowAlloc();
    v654[0] = 0;
    v653[0] = 0;
    *v452 = 0;
    v652[0] = v452 + 2;
    sub_10000B2CC(_swiftEmptyArrayStorage, v652, v654, v653);
    _os_log_impl(&_mh_execute_header, v450, v451, "Task cancelled while processing TaskPayloads.", v452, 2u);
  }

  v613 = v151[231];
  v619 = v151[255];
  v627 = v151[230];
  v453 = v151[229];
  v454 = v151[209];
  v455 = v151[203];
  v456 = v151[202];
  v126 = v151;
  v457 = v151[201];
  v458 = v126[200];
  v459 = v126[198];
  v460 = v126[197];
  v646 = v126[188];
  v232 = v126[187];
  v639 = v126[186];
  v606 = v126[91];
  v598 = v126[199];
  v603 = v126[87];
  v461 = objc_allocWithZone(sub_10002C7C8());
  v491 = sub_10002C7B8();

  (*v633)(v606, v603);

  v462 = v460;
LABEL_139:
  sub_100007A74(v462);
  (*(v232 + 8))(v646, v639);
LABEL_140:

  v480 = v126[188];
  v481 = v126[185];
  v482 = v126[184];
  v483 = v126[183];
  v484 = v126[182];
  v485 = v126[181];
  v486 = v126[180];
  v487 = v126[179];
  v488 = v126[178];
  v489 = v126[177];
  v492 = v126[174];
  v493 = v126[173];
  v494 = v126[170];
  v495 = v126[169];
  v496 = v126[168];
  v497 = v126[167];
  v498 = v126[166];
  v499 = v126[163];
  v500 = v126[160];
  v501 = v126[159];
  v502 = v126[158];
  v503 = v126[157];
  v504 = v126[156];
  v505 = v126[155];
  v506 = v126[154];
  v507 = v126[151];
  v508 = v126[150];
  v509 = v126[149];
  v510 = v126[148];
  v511 = v126[147];
  v512 = v126[146];
  v513 = v126[145];
  v514 = v126[144];
  v515 = v126[143];
  v516 = v126[140];
  v517 = v126[139];
  v518 = v126[138];
  v519 = v126[137];
  v520 = v126[136];
  v521 = v126[135];
  v522 = v126[132];
  v523 = v126[131];
  v524 = v126[130];
  v525 = v126[129];
  v526 = v126[128];
  v527 = v126[125];
  v528 = v126[124];
  v529 = v126[123];
  v530 = v126[122];
  v531 = v126[121];
  v532 = v126[118];
  v533 = v126[115];
  v534 = v126[114];
  v535 = v126[111];
  v536 = v126[110];
  v537 = v126[109];
  v538 = v126[108];
  v539 = v126[107];
  v540 = v126[104];
  v541 = v126[103];
  v542 = v126[102];
  v543 = v126[101];
  v544 = v126[100];
  v545 = v126[99];
  v546 = v126[98];
  v547 = v126[97];
  v548 = v126[96];
  v550 = v126[95];
  v551 = v126[94];
  v553 = v126[93];
  v555 = v126[92];
  v557 = v126[91];
  v559 = v126[90];
  v561 = v126[89];
  v564 = v126[86];
  v568 = v126[85];
  v572 = v126[84];
  v578 = v126[83];
  v581 = v126[82];
  v583 = v126[81];
  v586 = v126[80];
  v593 = v126[79];
  v594 = v126[78];
  v599 = v126[77];
  v604 = v126[76];
  v607 = v126[73];
  v614 = v126[72];
  v621 = v126[69];
  v629 = v126[68];
  v634 = v126[67];
  v640 = v126[66];
  v649 = v126[63];
  v651 = v126[62];

  v490 = v126[1];

  return v490(v491);
}

uint64_t sub_10001F8D0()
{
  v2 = *v1;
  v3 = *(*v1 + 2080);
  v4 = *v1;
  *(v2 + 2088) = v0;

  v5 = *(v2 + 2072);
  v6 = *(v2 + 2064);
  if (v0)
  {
    v7 = *(v2 + 1824);
    v8 = *(v2 + 1768);
    v9 = *(v2 + 1624);

    v10 = sub_10002A2D0;
  }

  else
  {
    v11 = *(v2 + 1624);

    v10 = sub_10001FAA8;
  }

  return _swift_task_switch(v10, 0, 0);
}

uint64_t sub_10001FAA8()
{
  v438 = v0;
  v1 = *(v0 + 1576);

  v2 = *(v0 + 296);
  v3 = *(v2 + 16);
  *(v1 + 80) = v3;
  v428 = *(v0 + 2088);
  if (v3)
  {
    v4 = 0;
    v395 = *(v0 + 520);
    v5 = (v2 + 48);
    v399 = *(v0 + 552);
    v404 = v2;
    v410 = _swiftEmptyArrayStorage;
    v420 = v3;
    while (1)
    {
      if (v4 >= *(v2 + 16))
      {
        __break(1u);
LABEL_90:
        __break(1u);
LABEL_91:
        __break(1u);
LABEL_92:
        __break(1u);
      }

      v6 = *(v5 - 2);
      v7 = *(v5 - 1);
      if (*v5)
      {
        v8 = *(v0 + 1512);
        sub_10002B400(*(v5 - 1), 1);
        sub_10002B400(v7, 1);
        sub_10002B400(v7, 1);
        v9 = v6;
        v10 = sub_10002C958();
        v11 = sub_10002CBB8();
        if (os_log_type_enabled(v10, v11))
        {
          v12 = swift_slowAlloc();
          v13 = swift_slowAlloc();
          *v12 = 138412290;
          swift_errorRetain();
          v14 = _swift_stdlib_bridgeErrorToNSError();
          *(v12 + 4) = v14;
          *v13 = v14;

          sub_10002B40C(v7, 1);
          sub_10002B40C(v7, 1);
          _os_log_impl(&_mh_execute_header, v10, v11, "Error: %@", v12, 0xCu);
          sub_10002B7B4(v13, &qword_1000386C8, &qword_10002DF80);

          v3 = v420;

          sub_10002B40C(v7, 1);
        }

        else
        {

          sub_10002B40C(v7, 1);
          sub_10002B40C(v7, 1);
        }

        v24 = *(v0 + 1576);
        v25 = *(v24 + 96);
        v26 = __OFADD__(v25, 1);
        v27 = v25 + 1;
        if (v26)
        {
          goto LABEL_90;
        }

        *(v24 + 96) = v27;
      }

      else
      {
        v16 = *(v0 + 504);
        v15 = *(v0 + 512);
        sub_10002B400(*(v5 - 1), 0);
        sub_10002B400(v7, 0);
        v17 = v6;
        sub_1000049E8(v7, v16);
        if ((*(v395 + 48))(v16, 1, v15) == 1)
        {
          v18 = *(v0 + 1512);
          sub_10002B7B4(*(v0 + 504), &qword_100038640, &qword_10002DF00);
          v19 = v7;
          v20 = sub_10002C958();
          v21 = sub_10002CBB8();
          if (os_log_type_enabled(v20, v21))
          {
            v22 = swift_slowAlloc();
            v23 = swift_slowAlloc();
            *v22 = 138412290;
            *(v22 + 4) = v19;
            *v23 = v7;

            sub_10002B40C(v7, 0);
            _os_log_impl(&_mh_execute_header, v20, v21, "Skipping record: %@", v22, 0xCu);
            sub_10002B7B4(v23, &qword_1000386C8, &qword_10002DF80);
            v3 = v420;

            v2 = v404;

            sub_10002B40C(v7, 0);
          }

          else
          {

            sub_10002B40C(v7, 0);
            sub_10002B40C(v7, 0);
          }

          goto LABEL_4;
        }

        v28 = *(v0 + 1664);
        v29 = *(v0 + 552);
        v30 = *(v0 + 504);

        sub_10002B814(v30, v29, type metadata accessor for TaskPayloadRecord);
        if ((sub_100008480(v399[2], v399[3], v28) & 1) == 0)
        {
          v41 = *(v0 + 1512);
          v42 = sub_10002C958();
          v43 = sub_10002CBA8();
          v44 = os_log_type_enabled(v42, v43);
          v45 = *(v0 + 552);
          if (v44)
          {
            v46 = swift_slowAlloc();
            v436 = 0;
            v437[0] = 0;
            *v46 = 0;
            v435[0] = v46 + 2;
            sub_10000B2CC(_swiftEmptyArrayStorage, v435, &v436, v437);
            v2 = v404;
            v47 = v43;
            v48 = v42;
            v49 = "Skipping taskPayloadRecord because associated with an unavailable extensionId.";
            goto LABEL_27;
          }

LABEL_28:

          sub_10002B40C(v7, 0);
          sub_100005B40(v45, type metadata accessor for TaskPayloadRecord);
          goto LABEL_4;
        }

        v31 = *(v0 + 2048);
        v32 = **(v0 + 552);
        v33 = v399[1];

        LOBYTE(v32) = sub_100008480(v32, v33, v31);

        if ((v32 & 1) == 0)
        {
          v50 = *(v0 + 1512);
          v42 = sub_10002C958();
          v51 = sub_10002CBA8();
          v52 = os_log_type_enabled(v42, v51);
          v45 = *(v0 + 552);
          if (v52)
          {
            v46 = swift_slowAlloc();
            v436 = 0;
            v437[0] = 0;
            *v46 = 0;
            v435[0] = v46 + 2;
            sub_10000B2CC(_swiftEmptyArrayStorage, v435, &v436, v437);
            v2 = v404;
            v47 = v51;
            v48 = v42;
            v49 = "Skipping taskPayloadRecord because associated with an unavailable taskName.";
LABEL_27:
            _os_log_impl(&_mh_execute_header, v48, v47, v49, v46, 2u);
          }

          goto LABEL_28;
        }

        sub_100005AD8(*(v0 + 552), *(v0 + 544), type metadata accessor for TaskPayloadRecord);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v410 = sub_10000B55C(0, v410[2] + 1, 1, v410, &qword_100038758, &qword_10002DFF0, type metadata accessor for TaskPayloadRecord);
        }

        v35 = v410[2];
        v34 = v410[3];
        if (v35 >= v34 >> 1)
        {
          v410 = sub_10000B55C(v34 > 1, v35 + 1, 1, v410, &qword_100038758, &qword_10002DFF0, type metadata accessor for TaskPayloadRecord);
        }

        v36 = *(v0 + 1576);
        v37 = *(v0 + 552);
        v38 = *(v0 + 544);
        v410[2] = v35 + 1;
        sub_10002B814(v38, v410 + ((*(v395 + 80) + 32) & ~*(v395 + 80)) + *(v395 + 72) * v35, type metadata accessor for TaskPayloadRecord);
        sub_10002B40C(v7, 0);
        sub_100005B40(v37, type metadata accessor for TaskPayloadRecord);
        v39 = *(v36 + 88);
        v26 = __OFADD__(v39, 1);
        v40 = v39 + 1;
        if (v26)
        {
          goto LABEL_92;
        }

        *(*(v0 + 1576) + 88) = v40;
        v2 = v404;
        v3 = v420;
      }

LABEL_4:
      ++v4;
      v5 += 24;
      if (v3 == v4)
      {
        goto LABEL_30;
      }
    }
  }

  v410 = _swiftEmptyArrayStorage;
LABEL_30:

  if (sub_10002CB18())
  {
    v53 = *(v0 + 1936);
    v54 = *(v0 + 1920);
    v55 = *(v0 + 1824);
    v56 = *(v0 + 1776);
    v57 = *(v0 + 1768);
    v58 = *(v0 + 1664);
    v59 = *(v0 + 1648);
    v60 = *(v0 + 1552);
    v61 = *(v0 + 1512);

    v62 = sub_10002C958();
    v63 = sub_10002CB98();
    if (os_log_type_enabled(v62, v63))
    {
      v64 = swift_slowAlloc();
      v436 = 0;
      v437[0] = 0;
      *v64 = 0;
      v435[0] = v64 + 2;
      sub_10000B2CC(_swiftEmptyArrayStorage, v435, &v436, v437);
      _os_log_impl(&_mh_execute_header, v62, v63, "Task cancelled before processing TaskPayloads.", v64, 2u);
    }

    v405 = *(v0 + 1848);
    v411 = *(v0 + 2040);
    v415 = *(v0 + 1840);
    v65 = *(v0 + 1672);
    v66 = *(v0 + 1624);
    v67 = *(v0 + 1616);
    v68 = *(v0 + 1608);
    v69 = *(v0 + 1600);
    v400 = *(v0 + 1592);
    v70 = *(v0 + 1584);
    v71 = *(v0 + 1576);
    v424 = *(v0 + 1504);
    v429 = *(v0 + 1832);
    v72 = *(v0 + 1496);
    v421 = *(v0 + 1488);
    v73 = objc_allocWithZone(sub_10002C7C8());
    v295 = sub_10002C7B8();

    goto LABEL_85;
  }

  v74 = *(v0 + 1512);
  v75 = v410;
  swift_bridgeObjectRetain_n();
  v76 = sub_10002C958();
  v77 = sub_10002CB98();
  if (os_log_type_enabled(v76, v77))
  {
    v78 = swift_slowAlloc();
    v79 = swift_slowAlloc();
    v436 = v79;
    *v78 = 134218242;
    *(v78 + 4) = v410[2];

    *(v78 + 12) = 2080;
    sub_100008968(v410, type metadata accessor for TaskPayloadRecord, type metadata accessor for TaskPayloadRecord, v437);
    v80 = sub_10002CA98();
    v82 = v81;

    v83 = sub_10000B7BC(v80, v82, &v436);

    *(v78 + 14) = v83;
    swift_bridgeObjectRelease_n();
    _os_log_impl(&_mh_execute_header, v76, v77, "Processing TaskPayloadRecords (count: %ld): %s", v78, 0x16u);
    sub_1000067EC(v79);

    if (!*(v0 + 1944))
    {
      goto LABEL_75;
    }
  }

  else
  {

    swift_bridgeObjectRelease_n();
    if (!*(v0 + 1944))
    {
LABEL_75:
      v224 = *(v0 + 1824);
      v225 = *(v0 + 1768);
      v226 = *(v0 + 1568);
      v227 = *(v0 + 1560);
      v228 = *(v0 + 1360);
      v229 = *(v0 + 1312);

      sub_10002C5D8();
      sub_10002C598();
      v231 = v230;
      v227(v228, v229);
      v232 = objc_allocWithZone(NSUserDefaults);
      v233 = sub_10002CA18();
      v234 = [v232 initWithSuiteName:v233];

      if (v234)
      {
        v235 = *(v0 + 1512);
        v236 = sub_10002C958();
        v237 = sub_10002CB98();
        v238 = os_log_type_enabled(v236, v237);
        v239 = *(v0 + 1936);
        v240 = *(v0 + 1920);
        v241 = *(v0 + 1776);
        v242 = *(v0 + 1664);
        v243 = *(v0 + 1648);
        v244 = *(v0 + 1552);
        if (v238)
        {
          v245 = swift_slowAlloc();
          *v245 = 134217984;
          *(v245 + 4) = v231;

          _os_log_impl(&_mh_execute_header, v236, v237, "Marking lastSuccessTimestamp: %f", v245, 0xCu);
        }

        else
        {
          v273 = *(v0 + 1648);
        }

        isa = sub_10002CB28().super.super.isa;
        v275 = sub_10002CA18();
        [v234 setValue:isa forKey:v275];
      }

      else
      {
        v267 = *(v0 + 1936);
        v268 = *(v0 + 1920);
        v269 = *(v0 + 1776);
        v270 = *(v0 + 1664);
        v271 = *(v0 + 1648);
        v272 = *(v0 + 1552);
      }

      v408 = *(v0 + 1848);
      v413 = *(v0 + 2040);
      v418 = *(v0 + 1840);
      v276 = *(v0 + 1672);
      v277 = *(v0 + 1624);
      v278 = *(v0 + 1616);
      v279 = *(v0 + 1608);
      v280 = *(v0 + 1600);
      v400 = *(v0 + 1592);
      v281 = *(v0 + 1584);
      v71 = *(v0 + 1576);
      v424 = *(v0 + 1504);
      v433 = *(v0 + 1832);
      v72 = *(v0 + 1496);
      v421 = *(v0 + 1488);
      v282 = objc_allocWithZone(sub_10002C7C8());
      v295 = sub_10002C7B8();

LABEL_85:

      sub_100007A74(v71);
      (*(v72 + 8))(v424, v421);
      goto LABEL_86;
    }
  }

  v84 = 0;
  v401 = (*(v0 + 520) + 48);
  v85 = *(v0 + 600);
  v86 = (v85 + 56);
  v87 = *(v0 + 568);
  v380 = (v87 + 104);
  v366 = (v87 + 8);
  v396 = (v85 + 8);
  v375 = (v85 + 16);
  v356 = *(v0 + 536);
  v406 = *(v0 + 704);
  v88 = (v406 + 8);
  v353 = *(v0 + 528);
  v393 = (v406 + 8);
  v416 = (v85 + 56);
  v378 = enum case for URL.DirectoryHint.inferFromPath(_:);
  while (1)
  {
    v92 = *(v0 + 1936);
    if (*(v92 + 16) <= v84)
    {
      goto LABEL_91;
    }

    v93 = *(v406 + 16);
    v93(*(v0 + 728), v92 + ((*(v406 + 80) + 32) & ~*(v406 + 80)) + *(v406 + 72) * v84, *(v0 + 696));
    if (sub_10002CB18())
    {
      break;
    }

    v425 = v84;
    v94 = *(v0 + 728);
    v95 = *(v0 + 512);
    v96 = *(v0 + 496);
    *(swift_task_alloc() + 16) = v94;
    sub_1000087D0(sub_10002B6B0, v75, type metadata accessor for TaskPayloadRecord, type metadata accessor for TaskPayloadRecord, type metadata accessor for TaskPayloadRecord, v96);

    if ((*v401)(v96, 1, v95) == 1)
    {
      v97 = *(v0 + 1512);
      v98 = *(v0 + 728);
      v99 = *(v0 + 720);
      v100 = *(v0 + 696);
      sub_10002B7B4(*(v0 + 496), &qword_100038640, &qword_10002DF00);
      v93(v99, v98, v100);
      v101 = sub_10002C958();
      v102 = sub_10002CB98();
      v103 = os_log_type_enabled(v101, v102);
      v104 = *(v0 + 720);
      v105 = *(v0 + 696);
      if (v103)
      {
        v106 = swift_slowAlloc();
        v107 = swift_slowAlloc();
        v437[0] = v107;
        *v106 = 136315138;
        v108 = sub_10002C728();
        v110 = sub_10000B7BC(v108, v109, v437);

        *(v106 + 4) = v110;
        v88 = (v406 + 8);
        v89 = *v393;
        (*v393)(v104, v105);
        _os_log_impl(&_mh_execute_header, v101, v102, "Skipping task. No TaskPayloadRecord found for: %s", v106, 0xCu);
        sub_1000067EC(v107);
      }

      else
      {

        v89 = *v88;
        (*v88)(v104, v105);
      }
    }

    else
    {
      v111 = *(v0 + 728);
      sub_10002B814(*(v0 + 496), *(v0 + 536), type metadata accessor for TaskPayloadRecord);
      sub_10002C708();
      if (v112)
      {
        v113 = *(v0 + 680);
        v382 = *(v0 + 664);
        v388 = *(v0 + 592);
        v114 = *(v0 + 576);
        v115 = *(v0 + 560);
        v370 = *v86;
        (*v86)(*(v0 + 584), 1, 1);
        v116 = *v380;
        (*v380)(v114, v378, v115);

        sub_10002C558();
        *(v0 + 200) = 0x737465737361;
        *(v0 + 208) = 0xE600000000000000;
        v368 = v116;
        v116(v114, v378, v115);
        sub_10002B6D0();
        sub_10002C568();
        v363 = *v366;
        (*v366)(v114, v115);
        v117 = *v396;
        (*v396)(v113, v388);
        v118 = objc_opt_self();
        v119 = [v118 defaultManager];
        sub_10002C548(0);
        v120 = sub_10002CA18();

        *(v0 + 384) = 0;
        v121 = [v119 createDirectoryAtPath:v120 withIntermediateDirectories:1 attributes:0 error:v0 + 384];

        v122 = *(v0 + 384);
        v123 = *(v0 + 1512);
        v124 = *(v0 + 592);
        if (!v121)
        {
          v153 = *(v0 + 664);
          v154 = *(v0 + 616);
          v155 = v122;
          sub_10002C508();

          swift_willThrow();
          (*v375)(v154, v153, v124);
          swift_errorRetain();
          swift_errorRetain();
          v156 = sub_10002C958();
          v157 = sub_10002CBB8();
          v158 = os_log_type_enabled(v156, v157);
          v159 = *(v0 + 664);
          v160 = *(v0 + 616);
          v161 = *(v0 + 592);
          v162 = *(v0 + 536);
          if (v158)
          {
            v390 = v117;
            v163 = swift_slowAlloc();
            v430 = v159;
            v164 = swift_slowAlloc();
            v372 = swift_slowAlloc();
            v437[0] = v372;
            *v163 = 136315394;
            sub_10002B3B8(&qword_1000386F0, &type metadata accessor for URL);
            v165 = sub_10002CD38();
            v383 = v162;
            v167 = sub_10000B7BC(v165, v166, v437);

            *(v163 + 4) = v167;
            v390(v160, v161);
            *(v163 + 12) = 2112;
            swift_errorRetain();
            v168 = _swift_stdlib_bridgeErrorToNSError();
            *(v163 + 14) = v168;
            *v164 = v168;

            _os_log_impl(&_mh_execute_header, v156, v157, "Failed at creating taskAssetsURL: %s : %@", v163, 0x16u);
            sub_10002B7B4(v164, &qword_1000386C8, &qword_10002DF80);

            sub_1000067EC(v372);

            v390(v430, v161);
            v169 = v383;
          }

          else
          {

            v117(v160, v161);

            v117(v159, v161);
            v169 = v162;
          }

          sub_100005B40(v169, type metadata accessor for TaskPayloadRecord);
          v88 = (v406 + 8);
LABEL_63:
          v90 = v425;
LABEL_71:
          v89 = *v88;
          v75 = v410;
          goto LABEL_41;
        }

        v358 = v118;
        v389 = v117;
        v125 = *(v0 + 656);
        v361 = *(v0 + 648);
        v126 = *(v0 + 576);
        v127 = *(v0 + 560);
        v128 = *(v356 + 32);
        v129 = *(v356 + 40);
        v370(*(v0 + 584), 1, 1, v124);
        v368(v126, v378, v127);
        v130 = v122;

        sub_10002C558();
        v371 = *v375;
        (*v375)(v361, v125, v124);
        v131 = sub_10002C958();
        v132 = sub_10002CB98();
        v133 = os_log_type_enabled(v131, v132);
        v134 = *(v0 + 648);
        v135 = *(v0 + 592);
        if (v133)
        {
          v136 = swift_slowAlloc();
          v137 = swift_slowAlloc();
          v437[0] = v137;
          *v136 = 136315138;
          sub_10002B3B8(&qword_1000386F0, &type metadata accessor for URL);
          v138 = sub_10002CD38();
          v140 = sub_10000B7BC(v138, v139, v437);

          *(v136 + 4) = v140;
          v389(v134, v135);
          _os_log_impl(&_mh_execute_header, v131, v132, "Processing: %s", v136, 0xCu);
          sub_1000067EC(v137);
        }

        else
        {

          v117(v134, v135);
        }

        v75 = v410;
        v170 = sub_100008DB0(*(v0 + 656), *(v0 + 664));
        v171 = *(v0 + 1512);
        if (v170)
        {
          v371(*(v0 + 640), *(v0 + 664), *(v0 + 592));
          v172 = sub_10002C958();
          v173 = sub_10002CB98();
          v174 = os_log_type_enabled(v172, v173);
          v175 = *(v0 + 664);
          v176 = *(v0 + 656);
          v177 = *(v0 + 640);
          v178 = *(v0 + 592);
          v179 = *(v0 + 536);
          if (v174)
          {
            v384 = *(v0 + 664);
            v180 = swift_slowAlloc();
            v181 = swift_slowAlloc();
            v437[0] = v181;
            *v180 = 136315138;
            sub_10002B3B8(&qword_1000386F0, &type metadata accessor for URL);
            v182 = sub_10002CD38();
            v184 = sub_10000B7BC(v182, v183, v437);

            *(v180 + 4) = v184;

            v389(v177, v178);
            _os_log_impl(&_mh_execute_header, v172, v173, "TaskPayload extracted at: %s", v180, 0xCu);
            sub_1000067EC(v181);

            v389(v176, v178);
            v389(v384, v178);
          }

          else
          {

            v389(v177, v178);

            v389(v176, v178);
            v389(v175, v178);
          }

          sub_100005B40(v179, type metadata accessor for TaskPayloadRecord);
          v90 = v425;
          v88 = (v406 + 8);
          goto LABEL_71;
        }

        v185 = sub_10002C958();
        v186 = sub_10002CB98();
        v88 = (v406 + 8);
        if (os_log_type_enabled(v185, v186))
        {
          v187 = swift_slowAlloc();
          v436 = 0;
          v437[0] = 0;
          *v187 = 0;
          v435[0] = v187 + 2;
          sub_10000B2CC(_swiftEmptyArrayStorage, v435, &v436, v437);
          _os_log_impl(&_mh_execute_header, v185, v186, "Failed at processing archive, copying raw archive into taskFolder.", v187, 2u);
        }

        v188 = *(v0 + 664);
        v189 = *(v0 + 656);
        v190 = *(v0 + 632);
        v191 = *(v0 + 576);
        v192 = *(v0 + 560);
        *(v0 + 360) = 0x612E737465737361;
        *(v0 + 368) = 0xEA00000000007261;
        v368(v191, v378, v192);
        sub_10002C568();
        v363(v191, v192);
        v193 = [v358 defaultManager];
        sub_10002C528(v194);
        v196 = v195;
        sub_10002C528(v197);
        v199 = v198;
        *(v0 + 400) = 0;
        LODWORD(v190) = [v193 copyItemAtURL:v196 toURL:v198 error:v0 + 400];

        v200 = *(v0 + 400);
        v201 = *(v0 + 592);
        if (!v190)
        {
          v207 = *(v0 + 1512);
          v208 = *(v0 + 632);
          v209 = *(v0 + 608);
          v210 = v200;
          sub_10002C508();

          swift_willThrow();
          v371(v209, v208, v201);
          swift_errorRetain();
          swift_errorRetain();
          v211 = sub_10002C958();
          v212 = sub_10002CBB8();
          v213 = os_log_type_enabled(v211, v212);
          v214 = *(v0 + 664);
          v431 = *(v0 + 656);
          v385 = *(v0 + 632);
          v215 = *(v0 + 608);
          v216 = *(v0 + 592);
          v217 = *(v0 + 536);
          if (v213)
          {
            v218 = swift_slowAlloc();
            v373 = v217;
            v219 = swift_slowAlloc();
            v364 = swift_slowAlloc();
            v437[0] = v364;
            *v218 = 136315394;
            sub_10002B3B8(&qword_1000386F0, &type metadata accessor for URL);
            v220 = sub_10002CD38();
            v222 = sub_10000B7BC(v220, v221, v437);

            *(v218 + 4) = v222;
            v389(v215, v216);
            *(v218 + 12) = 2112;
            swift_errorRetain();
            v223 = _swift_stdlib_bridgeErrorToNSError();
            *(v218 + 14) = v223;
            *v219 = v223;

            _os_log_impl(&_mh_execute_header, v211, v212, "Failed at asset to: %s : %@", v218, 0x16u);
            sub_10002B7B4(v219, &qword_1000386C8, &qword_10002DF80);

            sub_1000067EC(v364);

            v88 = (v406 + 8);

            v389(v385, v216);
            v389(v431, v216);
            v389(v214, v216);
            sub_100005B40(v373, type metadata accessor for TaskPayloadRecord);
          }

          else
          {

            v389(v215, v216);

            v389(v385, v216);
            v389(v431, v216);
            v389(v214, v216);
            sub_100005B40(v217, type metadata accessor for TaskPayloadRecord);
          }

          goto LABEL_63;
        }

        v202 = *(v0 + 664);
        v203 = *(v0 + 656);
        v204 = *(v0 + 632);
        v205 = *(v0 + 536);
        v206 = v200;

        v389(v204, v201);
        v389(v203, v201);
        v389(v202, v201);
        v152 = v205;
      }

      else
      {
        v141 = *(v0 + 1512);
        sub_100005AD8(*(v0 + 536), *(v0 + 528), type metadata accessor for TaskPayloadRecord);
        v142 = sub_10002C958();
        v143 = sub_10002CBB8();
        v144 = os_log_type_enabled(v142, v143);
        v145 = *(v0 + 536);
        v146 = *(v0 + 528);
        if (v144)
        {
          v147 = swift_slowAlloc();
          v148 = swift_slowAlloc();
          v437[0] = v148;
          *v147 = 136315138;
          v149 = *v146;
          v150 = *(v353 + 8);

          v151 = sub_10000B7BC(v149, v150, v437);
          v88 = (v406 + 8);

          *(v147 + 4) = v151;
          sub_100005B40(v146, type metadata accessor for TaskPayloadRecord);
          _os_log_impl(&_mh_execute_header, v142, v143, "Task %s doesn't have a valid taskFolder. Skipping task.", v147, 0xCu);
          sub_1000067EC(v148);
        }

        else
        {
          sub_100005B40(*(v0 + 528), type metadata accessor for TaskPayloadRecord);
        }

        v152 = v145;
      }

      sub_100005B40(v152, type metadata accessor for TaskPayloadRecord);
      v89 = *v88;
    }

    v90 = v425;
LABEL_41:
    v84 = v90 + 1;
    v91 = *(v0 + 1944);
    v89(*(v0 + 728), *(v0 + 696));
    v86 = v416;
    if (v84 == v91)
    {
      goto LABEL_75;
    }
  }

  v246 = *(v0 + 1936);
  v247 = *(v0 + 1920);
  v248 = *(v0 + 1824);
  v249 = *(v0 + 1776);
  v250 = *(v0 + 1768);
  v251 = *(v0 + 1664);
  v252 = *(v0 + 1648);
  v253 = *(v0 + 1552);
  v254 = *(v0 + 1512);

  v255 = sub_10002C958();
  v256 = sub_10002CB98();
  if (os_log_type_enabled(v255, v256))
  {
    v257 = swift_slowAlloc();
    v436 = 0;
    v437[0] = 0;
    *v257 = 0;
    v435[0] = v257 + 2;
    sub_10000B2CC(_swiftEmptyArrayStorage, v435, &v436, v437);
    _os_log_impl(&_mh_execute_header, v255, v256, "Task cancelled while processing TaskPayloads.", v257, 2u);
  }

  v407 = *(v0 + 1848);
  v412 = *(v0 + 2040);
  v417 = *(v0 + 1840);
  v258 = *(v0 + 1672);
  v259 = *(v0 + 1624);
  v260 = *(v0 + 1616);
  v261 = *(v0 + 1608);
  v262 = *(v0 + 1600);
  v391 = *(v0 + 1592);
  v263 = *(v0 + 1584);
  v264 = *(v0 + 1576);
  v426 = *(v0 + 1504);
  v432 = *(v0 + 1832);
  v265 = *(v0 + 1496);
  v422 = *(v0 + 1488);
  v397 = *(v0 + 696);
  v402 = *(v0 + 728);
  v266 = objc_allocWithZone(sub_10002C7C8());
  v295 = sub_10002C7B8();

  (*v393)(v402, v397);

  sub_100007A74(v264);
  (*(v265 + 8))(v426, v422);
LABEL_86:

  v283 = *(v0 + 1504);
  v284 = *(v0 + 1480);
  v285 = *(v0 + 1472);
  v286 = *(v0 + 1464);
  v287 = *(v0 + 1456);
  v288 = *(v0 + 1448);
  v289 = *(v0 + 1440);
  v290 = *(v0 + 1432);
  v291 = *(v0 + 1424);
  v292 = *(v0 + 1416);
  v296 = *(v0 + 1392);
  v297 = *(v0 + 1384);
  v298 = *(v0 + 1360);
  v299 = *(v0 + 1352);
  v300 = *(v0 + 1344);
  v301 = *(v0 + 1336);
  v302 = *(v0 + 1328);
  v303 = *(v0 + 1304);
  v304 = *(v0 + 1280);
  v305 = *(v0 + 1272);
  v306 = *(v0 + 1264);
  v307 = *(v0 + 1256);
  v308 = *(v0 + 1248);
  v309 = *(v0 + 1240);
  v310 = *(v0 + 1232);
  v311 = *(v0 + 1208);
  v312 = *(v0 + 1200);
  v313 = *(v0 + 1192);
  v314 = *(v0 + 1184);
  v315 = *(v0 + 1176);
  v316 = *(v0 + 1168);
  v317 = *(v0 + 1160);
  v318 = *(v0 + 1152);
  v319 = *(v0 + 1144);
  v320 = *(v0 + 1120);
  v321 = *(v0 + 1112);
  v322 = *(v0 + 1104);
  v323 = *(v0 + 1096);
  v324 = *(v0 + 1088);
  v325 = *(v0 + 1080);
  v326 = *(v0 + 1056);
  v327 = *(v0 + 1048);
  v328 = *(v0 + 1040);
  v329 = *(v0 + 1032);
  v330 = *(v0 + 1024);
  v331 = *(v0 + 1000);
  v332 = *(v0 + 992);
  v333 = *(v0 + 984);
  v334 = *(v0 + 976);
  v335 = *(v0 + 968);
  v336 = *(v0 + 944);
  v337 = *(v0 + 920);
  v338 = *(v0 + 912);
  v339 = *(v0 + 888);
  v340 = *(v0 + 880);
  v341 = *(v0 + 872);
  v342 = *(v0 + 864);
  v343 = *(v0 + 856);
  v344 = *(v0 + 832);
  v345 = *(v0 + 824);
  v346 = *(v0 + 816);
  v347 = *(v0 + 808);
  v348 = *(v0 + 800);
  v349 = *(v0 + 792);
  v350 = *(v0 + 784);
  v351 = *(v0 + 776);
  v352 = *(v0 + 768);
  v354 = *(v0 + 760);
  v355 = *(v0 + 752);
  v357 = *(v0 + 744);
  v359 = *(v0 + 736);
  v360 = *(v0 + 728);
  v362 = *(v0 + 720);
  v365 = *(v0 + 712);
  v367 = *(v0 + 688);
  v369 = *(v0 + 680);
  v374 = *(v0 + 672);
  v376 = *(v0 + 664);
  v377 = *(v0 + 656);
  v379 = *(v0 + 648);
  v381 = *(v0 + 640);
  v386 = *(v0 + 632);
  v387 = *(v0 + 624);
  v392 = *(v0 + 616);
  v394 = *(v0 + 608);
  v398 = *(v0 + 584);
  v403 = *(v0 + 576);
  v409 = *(v0 + 552);
  v414 = *(v0 + 544);
  v419 = *(v0 + 536);
  v423 = *(v0 + 528);
  v427 = *(v0 + 504);
  v434 = *(v0 + 496);

  v293 = *(v0 + 8);

  return v293(v295);
}

uint64_t sub_1000221F0()
{
  v119 = v0;
  v1 = v0[189];
  v2 = sub_10002C958();
  v3 = sub_10002CBB8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v117 = 0;
    v118[0] = 0;
    *v4 = 0;
    v116 = v4 + 2;
    sub_10000B2CC(_swiftEmptyArrayStorage, &v116, &v117, v118);
    _os_log_impl(&_mh_execute_header, v2, v3, "Invalid remote reply when requesting active tasks.", v4, 2u);
  }

  v106 = v0[231];
  v108 = v0[230];
  v5 = v0[209];
  v6 = v0[203];
  v7 = v0[202];
  v8 = v0[201];
  v9 = v0[200];
  v104 = v0[199];
  v10 = v0[198];
  v11 = v0[197];
  v112 = v0[229];
  v114 = v0[188];
  v12 = v0[187];
  v110 = v0[186];
  v13 = objc_allocWithZone(sub_10002C7C8());
  v26 = sub_10002C7B8();

  sub_100007A74(v11);
  (*(v12 + 8))(v114, v110);

  v14 = v0[188];
  v15 = v0[185];
  v16 = v0[184];
  v17 = v0[183];
  v18 = v0[182];
  v19 = v0[181];
  v20 = v0[180];
  v21 = v0[179];
  v22 = v0[178];
  v23 = v0[177];
  v27 = v0[174];
  v28 = v0[173];
  v29 = v0[170];
  v30 = v0[169];
  v31 = v0[168];
  v32 = v0[167];
  v33 = v0[166];
  v34 = v0[163];
  v35 = v0[160];
  v36 = v0[159];
  v37 = v0[158];
  v38 = v0[157];
  v39 = v0[156];
  v40 = v0[155];
  v41 = v0[154];
  v42 = v0[151];
  v43 = v0[150];
  v44 = v0[149];
  v45 = v0[148];
  v46 = v0[147];
  v47 = v0[146];
  v48 = v0[145];
  v49 = v0[144];
  v50 = v0[143];
  v51 = v0[140];
  v52 = v0[139];
  v53 = v0[138];
  v54 = v0[137];
  v55 = v0[136];
  v56 = v0[135];
  v57 = v0[132];
  v58 = v0[131];
  v59 = v0[130];
  v60 = v0[129];
  v61 = v0[128];
  v62 = v0[125];
  v63 = v0[124];
  v64 = v0[123];
  v65 = v0[122];
  v66 = v0[121];
  v67 = v0[118];
  v68 = v0[115];
  v69 = v0[114];
  v70 = v0[111];
  v71 = v0[110];
  v72 = v0[109];
  v73 = v0[108];
  v74 = v0[107];
  v75 = v0[104];
  v76 = v0[103];
  v77 = v0[102];
  v78 = v0[101];
  v79 = v0[100];
  v80 = v0[99];
  v81 = v0[98];
  v82 = v0[97];
  v83 = v0[96];
  v84 = v0[95];
  v85 = v0[94];
  v86 = v0[93];
  v87 = v0[92];
  v88 = v0[91];
  v89 = v0[90];
  v90 = v0[89];
  v91 = v0[86];
  v92 = v0[85];
  v93 = v0[84];
  v94 = v0[83];
  v95 = v0[82];
  v96 = v0[81];
  v97 = v0[80];
  v98 = v0[79];
  v99 = v0[78];
  v100 = v0[77];
  v101 = v0[76];
  v102 = v0[73];
  v103 = v0[72];
  v105 = v0[69];
  v107 = v0[68];
  v109 = v0[67];
  v111 = v0[66];
  v113 = v0[63];
  v115 = v0[62];

  v24 = v0[1];

  return v24(v26);
}

uint64_t sub_100022908()
{
  v115 = v0;
  v1 = v0[189];
  v2 = sub_10002C958();
  v3 = sub_10002CBB8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v113 = 0;
    v114[0] = 0;
    *v4 = 0;
    v112 = v4 + 2;
    sub_10000B2CC(_swiftEmptyArrayStorage, &v112, &v113, v114);
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed at fetching available extentions from mlhostd.", v4, 2u);
  }

  v5 = v0[203];
  v6 = v0[202];
  v7 = v0[201];
  v8 = v0[200];
  v9 = v0[199];
  v10 = v0[198];
  v11 = v0[197];
  v12 = v0[187];
  v108 = v0[186];
  v110 = v0[188];
  v13 = objc_allocWithZone(sub_10002C7C8());
  v26 = sub_10002C7B8();

  sub_100007A74(v11);
  (*(v12 + 8))(v110, v108);

  v14 = v0[188];
  v15 = v0[185];
  v16 = v0[184];
  v17 = v0[183];
  v18 = v0[182];
  v19 = v0[181];
  v20 = v0[180];
  v21 = v0[179];
  v22 = v0[178];
  v23 = v0[177];
  v27 = v0[174];
  v28 = v0[173];
  v29 = v0[170];
  v30 = v0[169];
  v31 = v0[168];
  v32 = v0[167];
  v33 = v0[166];
  v34 = v0[163];
  v35 = v0[160];
  v36 = v0[159];
  v37 = v0[158];
  v38 = v0[157];
  v39 = v0[156];
  v40 = v0[155];
  v41 = v0[154];
  v42 = v0[151];
  v43 = v0[150];
  v44 = v0[149];
  v45 = v0[148];
  v46 = v0[147];
  v47 = v0[146];
  v48 = v0[145];
  v49 = v0[144];
  v50 = v0[143];
  v51 = v0[140];
  v52 = v0[139];
  v53 = v0[138];
  v54 = v0[137];
  v55 = v0[136];
  v56 = v0[135];
  v57 = v0[132];
  v58 = v0[131];
  v59 = v0[130];
  v60 = v0[129];
  v61 = v0[128];
  v62 = v0[125];
  v63 = v0[124];
  v64 = v0[123];
  v65 = v0[122];
  v66 = v0[121];
  v67 = v0[118];
  v68 = v0[115];
  v69 = v0[114];
  v70 = v0[111];
  v71 = v0[110];
  v72 = v0[109];
  v73 = v0[108];
  v74 = v0[107];
  v75 = v0[104];
  v76 = v0[103];
  v77 = v0[102];
  v78 = v0[101];
  v79 = v0[100];
  v80 = v0[99];
  v81 = v0[98];
  v82 = v0[97];
  v83 = v0[96];
  v84 = v0[95];
  v85 = v0[94];
  v86 = v0[93];
  v87 = v0[92];
  v88 = v0[91];
  v89 = v0[90];
  v90 = v0[89];
  v91 = v0[86];
  v92 = v0[85];
  v93 = v0[84];
  v94 = v0[83];
  v95 = v0[82];
  v96 = v0[81];
  v97 = v0[80];
  v98 = v0[79];
  v99 = v0[78];
  v100 = v0[77];
  v101 = v0[76];
  v102 = v0[73];
  v103 = v0[72];
  v104 = v0[69];
  v105 = v0[68];
  v106 = v0[67];
  v107 = v0[66];
  v109 = v0[63];
  v111 = v0[62];

  v24 = v0[1];

  return v24(v26);
}

uint64_t sub_100022FDC()
{
  v106 = v0;
  v1 = v0[189];
  v2 = v0[185];
  (*(v0[187] + 56))(v2, 1, 1, v0[186]);
  sub_10002B7B4(v2, &qword_100038678, &qword_10002DF40);
  v3 = sub_10002C958();
  v4 = sub_10002CBB8();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v104 = 0;
    v105[0] = 0;
    *v5 = 0;
    v103 = v5 + 2;
    sub_10000B2CC(_swiftEmptyArrayStorage, &v103, &v104, v105);
    _os_log_impl(&_mh_execute_header, v3, v4, "Failed at querying mlhostd.", v5, 2u);
  }

  v6 = objc_allocWithZone(sub_10002C7C8());
  v19 = sub_10002C7B8();
  v7 = v0[188];
  v8 = v0[185];
  v9 = v0[184];
  v10 = v0[183];
  v11 = v0[182];
  v12 = v0[181];
  v13 = v0[180];
  v14 = v0[179];
  v15 = v0[178];
  v16 = v0[177];
  v20 = v0[174];
  v21 = v0[173];
  v22 = v0[170];
  v23 = v0[169];
  v24 = v0[168];
  v25 = v0[167];
  v26 = v0[166];
  v27 = v0[163];
  v28 = v0[160];
  v29 = v0[159];
  v30 = v0[158];
  v31 = v0[157];
  v32 = v0[156];
  v33 = v0[155];
  v34 = v0[154];
  v35 = v0[151];
  v36 = v0[150];
  v37 = v0[149];
  v38 = v0[148];
  v39 = v0[147];
  v40 = v0[146];
  v41 = v0[145];
  v42 = v0[144];
  v43 = v0[143];
  v44 = v0[140];
  v45 = v0[139];
  v46 = v0[138];
  v47 = v0[137];
  v48 = v0[136];
  v49 = v0[135];
  v50 = v0[132];
  v51 = v0[131];
  v52 = v0[130];
  v53 = v0[129];
  v54 = v0[128];
  v55 = v0[125];
  v56 = v0[124];
  v57 = v0[123];
  v58 = v0[122];
  v59 = v0[121];
  v60 = v0[118];
  v61 = v0[115];
  v62 = v0[114];
  v63 = v0[111];
  v64 = v0[110];
  v65 = v0[109];
  v66 = v0[108];
  v67 = v0[107];
  v68 = v0[104];
  v69 = v0[103];
  v70 = v0[102];
  v71 = v0[101];
  v72 = v0[100];
  v73 = v0[99];
  v74 = v0[98];
  v75 = v0[97];
  v76 = v0[96];
  v77 = v0[95];
  v78 = v0[94];
  v79 = v0[93];
  v80 = v0[92];
  v81 = v0[91];
  v82 = v0[90];
  v83 = v0[89];
  v84 = v0[86];
  v85 = v0[85];
  v86 = v0[84];
  v87 = v0[83];
  v88 = v0[82];
  v89 = v0[81];
  v90 = v0[80];
  v91 = v0[79];
  v92 = v0[78];
  v93 = v0[77];
  v94 = v0[76];
  v95 = v0[73];
  v96 = v0[72];
  v97 = v0[69];
  v98 = v0[68];
  v99 = v0[67];
  v100 = v0[66];
  v101 = v0[63];
  v102 = v0[62];

  v17 = v0[1];

  return v17(v19);
}

uint64_t sub_100023688()
{
  v179 = v0;
  v1 = *(v0 + 1760);
  v2 = *(v0 + 1704);
  v3 = *(v0 + 1568);
  v4 = *(v0 + 1560);
  v5 = *(v0 + 1352);
  v6 = *(v0 + 1312);

  v4(v5, v6);
  *(v0 + 440) = v1;
  swift_errorRetain();
  sub_100005338(&qword_1000386B8, &qword_10002DF78);
  type metadata accessor for CKError(0);
  if (swift_dynamicCast())
  {
    v7 = *(v0 + 1512);
    v8 = *(v0 + 432);
    v9 = sub_10002C958();
    v10 = sub_10002CBB8();
    v11 = os_log_type_enabled(v9, v10);
    v12 = *(v0 + 1760);
    v13 = *(v0 + 1664);
    v14 = *(v0 + 1648);
    v171 = v8;
    if (v11)
    {
      if (*(v0 + 1552))
      {
        v15 = *(v0 + 1552);
      }

      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      *v16 = 138412290;
      v18 = v171;
      v19 = _swift_stdlib_bridgeErrorToNSError();
      *(v16 + 4) = v19;
      *v17 = v19;

      _os_log_impl(&_mh_execute_header, v9, v10, "CKError: %@", v16, 0xCu);
      sub_10002B7B4(v17, &qword_1000386C8, &qword_10002DF80);

      v8 = v171;
    }

    else
    {

      v9 = v8;
    }

    *(v0 + 408) = v8;
    sub_10002B3B8(&qword_1000384F0, type metadata accessor for CKError);
    sub_10002C4D8();
    if (*(v0 + 448) == 7)
    {
      v33 = *(v0 + 1512);
      v34 = sub_10002C958();
      v35 = sub_10002CB98();
      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        v178[0] = 0;
        v175[0] = 0;
        *v36 = 0;
        v174 = v36 + 2;
        sub_10000B2CC(_swiftEmptyArrayStorage, &v174, v178, v175);
        _os_log_impl(&_mh_execute_header, v34, v35, "Found CloudKit rate-limit, deferring execution.", v36, 2u);
      }

      v37 = *(v0 + 1672);
      v38 = *(v0 + 1624);
      v39 = *(v0 + 1616);
      v40 = *(v0 + 1608);
      v41 = *(v0 + 1600);
      v42 = *(v0 + 1584);
      v43 = *(v0 + 1576);
      v167 = *(v0 + 1504);
      v44 = *(v0 + 1496);
      v159 = *(v0 + 1592);
      v163 = *(v0 + 1488);
      v45 = objc_allocWithZone(sub_10002C7C8());
      v79 = sub_10002C7B8();

      v46 = *(v0 + 440);

      sub_100007A74(v43);
      (*(v44 + 8))(v167, v163);
    }

    else
    {
      v57 = *(v0 + 1672);
      v58 = *(v0 + 1624);
      v59 = *(v0 + 1616);
      v60 = *(v0 + 1608);
      v61 = *(v0 + 1600);
      v62 = *(v0 + 1584);
      v63 = *(v0 + 1576);
      v169 = *(v0 + 1504);
      v64 = *(v0 + 1496);
      v161 = *(v0 + 1592);
      v165 = *(v0 + 1488);
      v176 = &type metadata for CloudError;
      v177 = sub_10002B364();
      LOBYTE(v175[0]) = 1;
      v65 = objc_allocWithZone(sub_10002C7C8());
      v79 = sub_10002C7A8();

      v66 = *(v0 + 440);

      sub_100007A74(v63);
      (*(v64 + 8))(v169, v165);
    }
  }

  else
  {
    v20 = *(v0 + 1760);
    v21 = *(v0 + 1512);
    v22 = *(v0 + 440);

    swift_errorRetain();
    swift_errorRetain();
    v23 = sub_10002C958();
    v24 = sub_10002CBB8();
    v25 = os_log_type_enabled(v23, v24);
    v26 = *(v0 + 1760);
    v27 = *(v0 + 1664);
    v28 = *(v0 + 1648);
    if (v25)
    {
      if (*(v0 + 1552))
      {
        v29 = *(v0 + 1552);
      }

      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      *v30 = 138412290;
      swift_errorRetain();
      v32 = _swift_stdlib_bridgeErrorToNSError();
      *(v30 + 4) = v32;
      *v31 = v32;

      _os_log_impl(&_mh_execute_header, v23, v24, "Error: %@", v30, 0xCu);
      sub_10002B7B4(v31, &qword_1000386C8, &qword_10002DF80);
    }

    else
    {
      v47 = *(v0 + 1648);
    }

    v48 = *(v0 + 1672);
    v49 = *(v0 + 1624);
    v50 = *(v0 + 1616);
    v51 = *(v0 + 1608);
    v52 = *(v0 + 1600);
    v53 = *(v0 + 1584);
    v54 = *(v0 + 1576);
    v168 = *(v0 + 1504);
    v172 = *(v0 + 1760);
    v55 = *(v0 + 1496);
    v160 = *(v0 + 1592);
    v164 = *(v0 + 1488);
    v176 = &type metadata for CloudError;
    v177 = sub_10002B364();
    LOBYTE(v175[0]) = 1;
    v56 = objc_allocWithZone(sub_10002C7C8());
    v79 = sub_10002C7A8();

    sub_100007A74(v54);
    (*(v55 + 8))(v168, v164);
  }

  v67 = *(v0 + 1504);
  v68 = *(v0 + 1480);
  v69 = *(v0 + 1472);
  v70 = *(v0 + 1464);
  v71 = *(v0 + 1456);
  v72 = *(v0 + 1448);
  v73 = *(v0 + 1440);
  v74 = *(v0 + 1432);
  v75 = *(v0 + 1424);
  v76 = *(v0 + 1416);
  v80 = *(v0 + 1392);
  v81 = *(v0 + 1384);
  v82 = *(v0 + 1360);
  v83 = *(v0 + 1352);
  v84 = *(v0 + 1344);
  v85 = *(v0 + 1336);
  v86 = *(v0 + 1328);
  v87 = *(v0 + 1304);
  v88 = *(v0 + 1280);
  v89 = *(v0 + 1272);
  v90 = *(v0 + 1264);
  v91 = *(v0 + 1256);
  v92 = *(v0 + 1248);
  v93 = *(v0 + 1240);
  v94 = *(v0 + 1232);
  v95 = *(v0 + 1208);
  v96 = *(v0 + 1200);
  v97 = *(v0 + 1192);
  v98 = *(v0 + 1184);
  v99 = *(v0 + 1176);
  v100 = *(v0 + 1168);
  v101 = *(v0 + 1160);
  v102 = *(v0 + 1152);
  v103 = *(v0 + 1144);
  v104 = *(v0 + 1120);
  v105 = *(v0 + 1112);
  v106 = *(v0 + 1104);
  v107 = *(v0 + 1096);
  v108 = *(v0 + 1088);
  v109 = *(v0 + 1080);
  v110 = *(v0 + 1056);
  v111 = *(v0 + 1048);
  v112 = *(v0 + 1040);
  v113 = *(v0 + 1032);
  v114 = *(v0 + 1024);
  v115 = *(v0 + 1000);
  v116 = *(v0 + 992);
  v117 = *(v0 + 984);
  v118 = *(v0 + 976);
  v119 = *(v0 + 968);
  v120 = *(v0 + 944);
  v121 = *(v0 + 920);
  v122 = *(v0 + 912);
  v123 = *(v0 + 888);
  v124 = *(v0 + 880);
  v125 = *(v0 + 872);
  v126 = *(v0 + 864);
  v127 = *(v0 + 856);
  v128 = *(v0 + 832);
  v129 = *(v0 + 824);
  v130 = *(v0 + 816);
  v131 = *(v0 + 808);
  v132 = *(v0 + 800);
  v133 = *(v0 + 792);
  v134 = *(v0 + 784);
  v135 = *(v0 + 776);
  v136 = *(v0 + 768);
  v137 = *(v0 + 760);
  v138 = *(v0 + 752);
  v139 = *(v0 + 744);
  v140 = *(v0 + 736);
  v141 = *(v0 + 728);
  v142 = *(v0 + 720);
  v143 = *(v0 + 712);
  v144 = *(v0 + 688);
  v145 = *(v0 + 680);
  v146 = *(v0 + 672);
  v147 = *(v0 + 664);
  v148 = *(v0 + 656);
  v149 = *(v0 + 648);
  v150 = *(v0 + 640);
  v151 = *(v0 + 632);
  v152 = *(v0 + 624);
  v153 = *(v0 + 616);
  v154 = *(v0 + 608);
  v155 = *(v0 + 584);
  v156 = *(v0 + 576);
  v157 = *(v0 + 552);
  v158 = *(v0 + 544);
  v162 = *(v0 + 536);
  v166 = *(v0 + 528);
  v170 = *(v0 + 504);
  v173 = *(v0 + 496);

  v77 = *(v0 + 8);

  return v77(v79);
}

uint64_t sub_1000242D8()
{
  v176 = v0;
  v1 = *(v0 + 1816);

  *(v0 + 456) = v1;
  swift_errorRetain();
  sub_100005338(&qword_1000386B8, &qword_10002DF78);
  type metadata accessor for CKError(0);
  if (swift_dynamicCast())
  {
    v2 = *(v0 + 1512);
    v3 = *(v0 + 464);
    v4 = sub_10002C958();
    v5 = sub_10002CBB8();
    v6 = os_log_type_enabled(v4, v5);
    v7 = *(v0 + 1816);
    v8 = *(v0 + 1776);
    v9 = *(v0 + 1664);
    v10 = *(v0 + 1648);
    v168 = v3;
    if (v6)
    {
      if (*(v0 + 1552))
      {
        v11 = *(v0 + 1552);
      }

      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      *v12 = 138412290;
      v14 = v3;
      v15 = _swift_stdlib_bridgeErrorToNSError();
      *(v12 + 4) = v15;
      *v13 = v15;

      v3 = v168;
      _os_log_impl(&_mh_execute_header, v4, v5, "CKError: %@", v12, 0xCu);
      sub_10002B7B4(v13, &qword_1000386C8, &qword_10002DF80);
    }

    else
    {

      v4 = v3;
    }

    *(v0 + 376) = v3;
    sub_10002B3B8(&qword_1000384F0, type metadata accessor for CKError);
    sub_10002C4D8();
    if (*(v0 + 472) == 7)
    {
      v30 = *(v0 + 1512);
      v31 = sub_10002C958();
      v32 = sub_10002CB98();
      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        v175[0] = 0;
        v172[0] = 0;
        *v33 = 0;
        v171 = v33 + 2;
        sub_10000B2CC(_swiftEmptyArrayStorage, &v171, v175, v172);
        _os_log_impl(&_mh_execute_header, v31, v32, "Found CloudKit rate-limit, deferring execution.", v33, 2u);
      }

      v34 = *(v0 + 1672);
      v35 = *(v0 + 1624);
      v36 = *(v0 + 1616);
      v37 = *(v0 + 1608);
      v38 = *(v0 + 1600);
      v39 = *(v0 + 1584);
      v40 = *(v0 + 1576);
      v164 = *(v0 + 1504);
      v41 = *(v0 + 1496);
      v156 = *(v0 + 1592);
      v160 = *(v0 + 1488);
      v42 = objc_allocWithZone(sub_10002C7C8());
      v76 = sub_10002C7B8();

      v43 = *(v0 + 456);

      sub_100007A74(v40);
      (*(v41 + 8))(v164, v160);
    }

    else
    {
      v54 = *(v0 + 1672);
      v55 = *(v0 + 1624);
      v56 = *(v0 + 1616);
      v57 = *(v0 + 1608);
      v58 = *(v0 + 1600);
      v59 = *(v0 + 1584);
      v60 = *(v0 + 1576);
      v166 = *(v0 + 1504);
      v61 = *(v0 + 1496);
      v158 = *(v0 + 1592);
      v162 = *(v0 + 1488);
      v173 = &type metadata for CloudError;
      v174 = sub_10002B364();
      LOBYTE(v172[0]) = 1;
      v62 = objc_allocWithZone(sub_10002C7C8());
      v76 = sub_10002C7A8();

      v63 = *(v0 + 456);

      sub_100007A74(v60);
      (*(v61 + 8))(v166, v162);
    }
  }

  else
  {
    v16 = *(v0 + 1816);
    v17 = *(v0 + 1512);
    v18 = *(v0 + 456);

    swift_errorRetain();
    swift_errorRetain();
    v19 = sub_10002C958();
    v20 = sub_10002CBB8();
    v21 = os_log_type_enabled(v19, v20);
    v22 = *(v0 + 1816);
    v23 = *(v0 + 1776);
    v24 = *(v0 + 1664);
    v25 = *(v0 + 1648);
    if (v21)
    {
      if (*(v0 + 1552))
      {
        v26 = *(v0 + 1552);
      }

      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      *v27 = 138412290;
      swift_errorRetain();
      v29 = _swift_stdlib_bridgeErrorToNSError();
      *(v27 + 4) = v29;
      *v28 = v29;

      _os_log_impl(&_mh_execute_header, v19, v20, "Error: %@", v27, 0xCu);
      sub_10002B7B4(v28, &qword_1000386C8, &qword_10002DF80);
    }

    else
    {
      v44 = *(v0 + 1648);
    }

    v45 = *(v0 + 1672);
    v46 = *(v0 + 1624);
    v47 = *(v0 + 1616);
    v48 = *(v0 + 1608);
    v49 = *(v0 + 1600);
    v50 = *(v0 + 1584);
    v51 = *(v0 + 1576);
    v165 = *(v0 + 1504);
    v169 = *(v0 + 1816);
    v52 = *(v0 + 1496);
    v157 = *(v0 + 1592);
    v161 = *(v0 + 1488);
    v173 = &type metadata for CloudError;
    v174 = sub_10002B364();
    LOBYTE(v172[0]) = 1;
    v53 = objc_allocWithZone(sub_10002C7C8());
    v76 = sub_10002C7A8();

    sub_100007A74(v51);
    (*(v52 + 8))(v165, v161);
  }

  v64 = *(v0 + 1504);
  v65 = *(v0 + 1480);
  v66 = *(v0 + 1472);
  v67 = *(v0 + 1464);
  v68 = *(v0 + 1456);
  v69 = *(v0 + 1448);
  v70 = *(v0 + 1440);
  v71 = *(v0 + 1432);
  v72 = *(v0 + 1424);
  v73 = *(v0 + 1416);
  v77 = *(v0 + 1392);
  v78 = *(v0 + 1384);
  v79 = *(v0 + 1360);
  v80 = *(v0 + 1352);
  v81 = *(v0 + 1344);
  v82 = *(v0 + 1336);
  v83 = *(v0 + 1328);
  v84 = *(v0 + 1304);
  v85 = *(v0 + 1280);
  v86 = *(v0 + 1272);
  v87 = *(v0 + 1264);
  v88 = *(v0 + 1256);
  v89 = *(v0 + 1248);
  v90 = *(v0 + 1240);
  v91 = *(v0 + 1232);
  v92 = *(v0 + 1208);
  v93 = *(v0 + 1200);
  v94 = *(v0 + 1192);
  v95 = *(v0 + 1184);
  v96 = *(v0 + 1176);
  v97 = *(v0 + 1168);
  v98 = *(v0 + 1160);
  v99 = *(v0 + 1152);
  v100 = *(v0 + 1144);
  v101 = *(v0 + 1120);
  v102 = *(v0 + 1112);
  v103 = *(v0 + 1104);
  v104 = *(v0 + 1096);
  v105 = *(v0 + 1088);
  v106 = *(v0 + 1080);
  v107 = *(v0 + 1056);
  v108 = *(v0 + 1048);
  v109 = *(v0 + 1040);
  v110 = *(v0 + 1032);
  v111 = *(v0 + 1024);
  v112 = *(v0 + 1000);
  v113 = *(v0 + 992);
  v114 = *(v0 + 984);
  v115 = *(v0 + 976);
  v116 = *(v0 + 968);
  v117 = *(v0 + 944);
  v118 = *(v0 + 920);
  v119 = *(v0 + 912);
  v120 = *(v0 + 888);
  v121 = *(v0 + 880);
  v122 = *(v0 + 872);
  v123 = *(v0 + 864);
  v124 = *(v0 + 856);
  v125 = *(v0 + 832);
  v126 = *(v0 + 824);
  v127 = *(v0 + 816);
  v128 = *(v0 + 808);
  v129 = *(v0 + 800);
  v130 = *(v0 + 792);
  v131 = *(v0 + 784);
  v132 = *(v0 + 776);
  v133 = *(v0 + 768);
  v134 = *(v0 + 760);
  v135 = *(v0 + 752);
  v136 = *(v0 + 744);
  v137 = *(v0 + 736);
  v138 = *(v0 + 728);
  v139 = *(v0 + 720);
  v140 = *(v0 + 712);
  v141 = *(v0 + 688);
  v142 = *(v0 + 680);
  v143 = *(v0 + 672);
  v144 = *(v0 + 664);
  v145 = *(v0 + 656);
  v146 = *(v0 + 648);
  v147 = *(v0 + 640);
  v148 = *(v0 + 632);
  v149 = *(v0 + 624);
  v150 = *(v0 + 616);
  v151 = *(v0 + 608);
  v152 = *(v0 + 584);
  v153 = *(v0 + 576);
  v154 = *(v0 + 552);
  v155 = *(v0 + 544);
  v159 = *(v0 + 536);
  v163 = *(v0 + 528);
  v167 = *(v0 + 504);
  v170 = *(v0 + 496);

  v74 = *(v0 + 8);

  return v74(v76);
}

uint64_t sub_100024F2C()
{
  v221 = v0;
  v1 = *(v0 + 1512);
  (*(*(v0 + 1136) + 16))(*(v0 + 1144), *(v0 + 1192), *(v0 + 1128));
  v2 = sub_10002C958();
  v3 = sub_10002CBB8();
  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v0 + 1144);
  v6 = *(v0 + 1128);
  v7 = *(v0 + 992);
  v8 = (*(v0 + 1136) + 8);
  if (v4)
  {
    v218 = *(v0 + 992);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v220[0] = v10;
    *v9 = 136315138;
    v11 = sub_10002C808();
    v13 = sub_10000B7BC(v11, v12, v220);

    *(v9 + 4) = v13;
    v14 = *v8;
    (*v8)(v5, v6);
    _os_log_impl(&_mh_execute_header, v2, v3, "Invalid remote reply for taskName: %s", v9, 0xCu);
    sub_1000067EC(v10);

    v15 = v218;
  }

  else
  {
    v14 = *v8;
    (*v8)(*(v0 + 1144), *(v0 + 1128));

    v15 = v7;
  }

  sub_10002B7B4(v15, &qword_100038660, &qword_10002DF28);
  v16 = *(v0 + 1576);
  v17 = *(v16 + 48);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (v18)
  {
    __break(1u);
  }

  v20 = *(v0 + 1248);
  v21 = *(v0 + 1192);
  v22 = *(v0 + 1128);
  v23 = *(v0 + 1136) + 8;
  *(v16 + 48) = v19;
  sub_100005B40(v20, type metadata accessor for TaskRecord);
  v14(v21, v22);
  v24 = *(v0 + 1824);
  v25 = *(v0 + 1864) + 1;
  if (v25 == *(v0 + 1856))
  {
LABEL_6:
    *(v0 + 1896) = v24;
    v26 = *(v0 + 1832);
    v27 = *(v0 + 1512);

    v28 = sub_10002C958();
    v29 = sub_10002CB98();
    v30 = os_log_type_enabled(v28, v29);
    v31 = *(v0 + 1832);
    if (v30)
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v220[0] = v33;
      *v32 = 136315138;
      swift_beginAccess();
      v34 = *(v31 + 16);

      v35 = sub_10002CB38();
      v37 = v36;

      v38 = sub_10000B7BC(v35, v37, v220);

      *(v32 + 4) = v38;

      _os_log_impl(&_mh_execute_header, v28, v29, "Computed addedTaskNames: %s", v32, 0xCu);
      sub_1000067EC(v33);
    }

    else
    {
    }

    v152 = *(v0 + 1840);
    v153 = *(v0 + 1512);

    v154 = sub_10002C958();
    v155 = sub_10002CB98();
    v156 = os_log_type_enabled(v154, v155);
    v157 = *(v0 + 1840);
    if (v156)
    {
      v158 = swift_slowAlloc();
      v159 = swift_slowAlloc();
      v220[0] = v159;
      *v158 = 136315138;
      swift_beginAccess();
      v160 = *(v157 + 16);

      v161 = sub_10002CB38();
      v163 = v162;

      v164 = sub_10000B7BC(v161, v163, v220);

      *(v158 + 4) = v164;

      _os_log_impl(&_mh_execute_header, v154, v155, "Computed removalTaskNames: %s", v158, 0xCu);
      sub_1000067EC(v159);
    }

    else
    {
    }

    v165 = *(v0 + 1520);
    *(v0 + 1904) = sub_10002C758();
    v166 = *(&_s20LighthouseBackground12MLHostClientC8getTasksSayAA0C4TaskVGyYaAA0cD5ErrorOYKFTjTu + 1);
    v167 = _s20LighthouseBackground12MLHostClientC8getTasksSayAA0C4TaskVGyYaAA0cD5ErrorOYKFTjTu;
    v168 = swift_task_alloc();
    *(v0 + 1912) = v168;
    *v168 = v0;
    v168[1] = sub_1000170CC;
    v169 = *(v0 + 1448);

    return ((&_s20LighthouseBackground12MLHostClientC8getTasksSayAA0C4TaskVGyYaAA0cD5ErrorOYKFTjTu + v167))(v169);
  }

  while (1)
  {
    *(v0 + 1864) = v25;
    v39 = *(v0 + 1768);
    if (v25 >= *(v39 + 16))
    {
      __break(1u);
LABEL_47:
      sub_10002B7B4(*(v0 + 984), &qword_100038660, &qword_10002DF28);
      goto LABEL_52;
    }

    v40 = *(v0 + 1248);
    v41 = *(v0 + 1216);
    sub_100005AD8(v39 + ((*(v0 + 2096) + 32) & ~*(v0 + 2096)) + *(*(v0 + 1224) + 72) * v25, v40, type metadata accessor for TaskRecord);
    v42 = *(v0 + 1248);
    if (*(v40 + *(v41 + 36)) == 2)
    {
      v43 = *(v0 + 1512);
      sub_100005AD8(v42, *(v0 + 1240), type metadata accessor for TaskRecord);
      v44 = sub_10002C958();
      v45 = sub_10002CB98();
      v46 = os_log_type_enabled(v44, v45);
      v47 = *(v0 + 1240);
      if (v46)
      {
        v48 = swift_slowAlloc();
        v49 = swift_slowAlloc();
        v220[0] = v49;
        *v48 = 136315138;
        v51 = *v47;
        v50 = v47[1];

        v52 = sub_10000B7BC(v51, v50, v220);

        *(v48 + 4) = v52;
        sub_100005B40(v47, type metadata accessor for TaskRecord);
        _os_log_impl(&_mh_execute_header, v44, v45, "Task %s is marked as canceled, skipping.", v48, 0xCu);
        sub_1000067EC(v49);
      }

      else
      {

        sub_100005B40(v47, type metadata accessor for TaskRecord);
      }

      v58 = *(v0 + 1840);
      v59 = *(v0 + 1248);
      v60 = *v59;
      v61 = v59[1];

      sub_10000BD64((v0 + 184), v60, v61);
      v62 = *(v0 + 192);

      sub_100005B40(v59, type metadata accessor for TaskRecord);
      goto LABEL_15;
    }

    v53 = *(v0 + 1672);
    v54 = *(v0 + 1128);
    v55 = *(v0 + 1112);
    v56 = *(v42 + 32);
    v57 = *(v42 + 40);
    sub_10002B3B8(&qword_1000386D0, &type metadata accessor for TaskDefinition);
    sub_10002C468();
    v63 = *(v0 + 1824);
    v64 = *(v0 + 1192);
    v65 = *(v0 + 1136);
    v66 = *(v0 + 1128);
    v67 = *(v0 + 1112);
    v68 = *(v0 + 1016);
    v212 = *(v0 + 1008);
    v69 = *(v0 + 992);
    v70 = *(v0 + 984);
    (*(v65 + 56))(v67, 0, 1, v66);
    (*(v65 + 32))(v64, v67, v66);
    *(swift_task_alloc() + 16) = v64;
    sub_1000087D0(sub_10002B72C, v63, type metadata accessor for TaskParametersRecord, type metadata accessor for TaskParametersRecord, type metadata accessor for TaskParametersRecord, v69);

    sub_10002B74C(v69, v70, &qword_100038660, &qword_10002DF28);
    v71 = (*(v68 + 48))(v70, 1, v212);
    if (v71 == 1)
    {
      goto LABEL_47;
    }

    v72 = *(v0 + 1848);
    v73 = *(v0 + 1040);
    v74 = *(v0 + 896);
    v75 = *(v0 + 888);
    sub_10002B814(*(v0 + 984), v73, type metadata accessor for TaskParametersRecord);
    v77 = *(v73 + 32);
    v76 = *(v73 + 40);
    sub_10002B880(&qword_100038708, &qword_100038658, &qword_10002DF20);
    sub_10002C438();
    v78 = *(v0 + 920);
    v79 = *(v0 + 904);
    v80 = *(v0 + 896);
    v81 = *(v0 + 888);
    v82 = *(v0 + 880);
    v83 = *(v0 + 848);
    v84 = *(v0 + 840);
    (*(v79 + 56))(v81, 0, 1, v80);
    (*(v79 + 32))(v78, v81, v80);
    sub_10002C878();
    v85 = sub_10002C8D8();
    v86 = *(v83 + 8);
    v86(v82, v84);
    if (v85)
    {
      v87._rawValue = v85;
      if (!sub_10002C928(v87))
      {
        v112 = *(v0 + 1512);
        (*(*(v0 + 1136) + 16))(*(v0 + 1184), *(v0 + 1192), *(v0 + 1128));
        v113 = sub_10002C958();
        v114 = sub_10002CB98();
        v115 = os_log_type_enabled(v113, v114);
        v116 = *(v0 + 1184);
        v117 = *(v0 + 1136);
        v118 = *(v0 + 1128);
        if (v115)
        {
          v119 = swift_slowAlloc();
          v214 = v118;
          v120 = swift_slowAlloc();
          v220[0] = v120;
          *v119 = 136315138;
          v121 = sub_10002C808();
          v123 = sub_10000B7BC(v121, v122, v220);

          *(v119 + 4) = v123;

          v124 = v214;
          v215 = *(v117 + 8);
          v215(v116, v124);
          _os_log_impl(&_mh_execute_header, v113, v114, "Skipping registration of task %s as it does not satisfy the targeting rules.", v119, 0xCu);
          sub_1000067EC(v120);
        }

        else
        {

          v215 = *(v117 + 8);
          v215(v116, v118);
        }

        v138 = *(v0 + 1840);
        v139 = *(v0 + 1248);
        v208 = *(v0 + 1128);
        log = *(v0 + 1192);
        v140 = *(v0 + 1040);
        v141 = *(v0 + 992);
        v142 = *(v0 + 920);
        v143 = *(v0 + 904);
        v144 = *(v0 + 896);
        v204 = *(v0 + 1136) + 8;
        v145 = *v139;
        v146 = v139[1];

        sub_10000BD64((v0 + 216), v145, v146);
        v147 = *(v0 + 224);
        goto LABEL_37;
      }
    }

    v88 = *(v0 + 920);
    v89 = *(v0 + 896);
    v90 = *(v0 + 872);
    v91 = *(v0 + 840);
    sub_10002C878();
    v92 = sub_10002C8E8();
    v86(v90, v91);
    if (!v92)
    {
      goto LABEL_24;
    }

    v93._rawValue = v92;
    if (sub_10002C938(v93))
    {
      break;
    }

    v125 = *(v0 + 1512);
    (*(*(v0 + 1136) + 16))(*(v0 + 1176), *(v0 + 1192), *(v0 + 1128));
    v126 = sub_10002C958();
    v127 = sub_10002CB98();
    v128 = os_log_type_enabled(v126, v127);
    v129 = *(v0 + 1176);
    v130 = *(v0 + 1136);
    v131 = *(v0 + 1128);
    if (v128)
    {
      v132 = swift_slowAlloc();
      v216 = v131;
      v133 = swift_slowAlloc();
      v220[0] = v133;
      *v132 = 136315138;
      v134 = sub_10002C808();
      v136 = sub_10000B7BC(v134, v135, v220);

      *(v132 + 4) = v136;

      v137 = v216;
      v215 = *(v130 + 8);
      v215(v129, v137);
      _os_log_impl(&_mh_execute_header, v126, v127, "Skipping registration of task %s as it does not satisfy the os eligibility rules.", v132, 0xCu);
      sub_1000067EC(v133);
    }

    else
    {

      v215 = *(v130 + 8);
      v215(v129, v131);
    }

    v148 = *(v0 + 1840);
    v139 = *(v0 + 1248);
    v208 = *(v0 + 1128);
    log = *(v0 + 1192);
    v140 = *(v0 + 1040);
    v141 = *(v0 + 992);
    v142 = *(v0 + 920);
    v143 = *(v0 + 904);
    v144 = *(v0 + 896);
    v205 = *(v0 + 1136) + 8;
    v149 = *v139;
    v150 = v139[1];

    sub_10000BD64((v0 + 232), v149, v150);
    v151 = *(v0 + 240);
LABEL_37:

    (*(v143 + 8))(v142, v144);
    sub_10002B7B4(v141, &qword_100038660, &qword_10002DF28);
    sub_100005B40(v140, type metadata accessor for TaskParametersRecord);
    sub_100005B40(v139, type metadata accessor for TaskRecord);
    v215(log, v208);
LABEL_38:
    v24 = *(v0 + 1824);
LABEL_15:
    v25 = *(v0 + 1864) + 1;
    if (v25 == *(v0 + 1856))
    {
      goto LABEL_6;
    }
  }

LABEL_24:
  v94 = *(v0 + 920);
  v95 = *(v0 + 896);
  v96 = *(v0 + 864);
  v97 = *(v0 + 840);
  sub_10002C878();
  v98 = sub_10002C8F8();
  v86(v96, v97);
  if (v98 != 2 && (v98 & 1) != 0)
  {
    v99 = *(v0 + 1512);
    v100 = sub_10002C958();
    v101 = sub_10002CB98();
    if (os_log_type_enabled(v100, v101))
    {
      v102 = swift_slowAlloc();
      *v102 = 67109376;
      *(v102 + 4) = 1;
      *(v102 + 8) = 1024;
      *(v102 + 10) = 0;
      _os_log_impl(&_mh_execute_header, v100, v101, "Skipping registration of task because betaOnly is %{BOOL}d and isSeedDevice is %{BOOL}d", v102, 0xEu);
    }

    v103 = *(v0 + 1840);
    v104 = *(v0 + 1248);
    v105 = *(v0 + 1136);
    loga = *(v0 + 1128);
    v213 = *(v0 + 1192);
    v203 = *(v0 + 992);
    v207 = *(v0 + 1040);
    v106 = *(v0 + 920);
    v107 = *(v0 + 904);
    v108 = *(v0 + 896);

    v109 = *v104;
    v110 = v104[1];

    sub_10000BD64((v0 + 248), v109, v110);
    v111 = *(v0 + 256);

    (*(v107 + 8))(v106, v108);
    sub_10002B7B4(v203, &qword_100038660, &qword_10002DF28);
    sub_100005B40(v207, type metadata accessor for TaskParametersRecord);
    sub_100005B40(v104, type metadata accessor for TaskRecord);
    (*(v105 + 8))(v213, loga);
    goto LABEL_38;
  }

  v171 = *(v0 + 1512);
  v172 = *(v0 + 920);
  v173 = *(v0 + 912);
  v174 = *(v0 + 904);
  v175 = *(v0 + 896);
  (*(*(v0 + 1136) + 16))(*(v0 + 1168), *(v0 + 1192), *(v0 + 1128));
  (*(v174 + 16))(v173, v172, v175);
  v176 = sub_10002C958();
  v177 = sub_10002CBA8();
  v178 = os_log_type_enabled(v176, v177);
  v179 = *(v0 + 1168);
  v180 = *(v0 + 1136);
  v217 = *(v0 + 920);
  v219 = *(v0 + 912);
  v181 = *(v0 + 904);
  v182 = *(v0 + 896);
  if (v178)
  {
    v202 = *(v0 + 856);
    v206 = *(v0 + 840);
    v201 = *(v0 + 1128);
    logb = v176;
    v183 = swift_slowAlloc();
    v220[0] = swift_slowAlloc();
    *v183 = 136315394;
    v184 = sub_10002C808();
    v186 = sub_10000B7BC(v184, v185, v220);

    *(v183 + 4) = v186;
    (*(v180 + 8))(v179, v201);
    *(v183 + 12) = 2080;
    v187 = v182;
    sub_10002C878();
    sub_10002B3B8(&qword_100038710, &type metadata accessor for MLHostSystemParameters);
    v188 = sub_10002CD38();
    v190 = v189;
    v86(v202, v206);
    v191 = sub_10000B7BC(v188, v190, v220);

    *(v183 + 14) = v191;
    v192 = *(v181 + 8);
    v192(v219, v187);
    _os_log_impl(&_mh_execute_header, logb, v177, "Parsed TaskParameters successfully for task %s: %s", v183, 0x16u);
    swift_arrayDestroy();

    v193 = v217;
    v194 = v187;
  }

  else
  {
    (*(v180 + 8))(v179, *(v0 + 1128));
    v192 = *(v181 + 8);
    v192(v219, v182);

    v193 = v217;
    v194 = v182;
  }

  v192(v193, v194);
  sub_100005B40(*(v0 + 1040), type metadata accessor for TaskParametersRecord);
LABEL_52:
  v195 = *(v0 + 1520);
  *(v0 + 1872) = sub_10002C758();
  v196 = *(&_s20LighthouseBackground12MLHostClientC7addTask14taskDefinitionSbAA0fH0V_tYaAA0cD5ErrorOYKFTjTu + 1);
  v197 = _s20LighthouseBackground12MLHostClientC7addTask14taskDefinitionSbAA0fH0V_tYaAA0cD5ErrorOYKFTjTu;
  v198 = swift_task_alloc();
  *(v0 + 1880) = v198;
  *v198 = v0;
  v198[1] = sub_100015478;
  v199 = *(v0 + 1456);
  v200 = *(v0 + 1192);

  return ((&_s20LighthouseBackground12MLHostClientC7addTask14taskDefinitionSbAA0fH0V_tYaAA0cD5ErrorOYKFTjTu + v197))(v200, v199);
}

uint64_t sub_10002660C()
{
  v670 = v0;
  v647 = v0[245];
  v654 = v0[246];
  v664 = v0[189];
  v1 = v0[180];
  v2 = v0[178];
  v642 = v0[177];
  v3 = v0[176];
  v4 = v0[175];
  v5 = v0[98];
  v6 = v0[89];
  v7 = v0[87];
  v8 = *(v3 + 32);
  v8(v1, v0[179], v4);
  v8(v2, v1, v4);
  v9 = v7;
  v10 = v0;
  v647(v6, v5, v9);
  v633 = *(v3 + 16);
  v633(v642, v2, v4);
  v11 = sub_10002C958();
  v12 = sub_10002CBB8();
  v13 = os_log_type_enabled(v11, v12);
  v14 = v0[249];
  v15 = v0[248];
  v16 = v0[178];
  v17 = v0[177];
  v18 = v0[176];
  v19 = v10[175];
  v648 = v16;
  v655 = v10[98];
  v20 = v10[89];
  v21 = v10[87];
  v665 = v10;
  if (v13)
  {
    v22 = swift_slowAlloc();
    v618 = swift_slowAlloc();
    v625 = swift_slowAlloc();
    v668[0] = v625;
    *v22 = 136315394;
    v23 = sub_10002C728();
    v608 = v12;
    v25 = sub_10000B7BC(v23, v24, v668);

    *(v22 + 4) = v25;
    v15(v20, v21);
    *(v22 + 12) = 2112;
    sub_10002B3B8(&qword_1000386F8, &type metadata accessor for MLHostClientError);
    swift_allocError();
    v633(v26, v17, v19);
    v27 = _swift_stdlib_bridgeErrorToNSError();
    *(v22 + 14) = v27;
    *v618 = v27;
    v28 = *(v18 + 8);
    v28(v17, v19);
    _os_log_impl(&_mh_execute_header, v11, v608, "Failed to remove task %s: %@", v22, 0x16u);
    sub_10002B7B4(v618, &qword_1000386C8, &qword_10002DF80);

    sub_1000067EC(v625);

    v10 = v665;

    v28(v648, v19);
    v15(v655, v21);
  }

  else
  {

    v29 = *(v18 + 8);
    v29(v17, v19);
    v15(v20, v21);
    v29(v648, v19);
    v15(v655, v21);
  }

  while (1)
  {
    v37 = v10[250] + 1;
    if (v37 == v10[243])
    {
      break;
    }

    v10[250] = v37;
    v30 = v10[242];
    if (v37 >= *(v30 + 16))
    {
LABEL_140:
      __break(1u);
LABEL_141:
      __break(1u);
LABEL_142:
      __break(1u);
LABEL_143:
      __break(1u);
LABEL_144:
      __break(1u);
LABEL_145:
      __break(1u);
    }

    v31 = v10[247];
    v32 = v10[246];
    (v10[245])(v10[98], v30 + ((*(v10 + 2100) + 32) & ~*(v10 + 2100)) + v10[244] * v37, v10[87]);

    v33 = sub_10002C728();
    v35 = sub_100008480(v33, v34, v31);

    if (v35)
    {
      v146 = v10[246];
      v147 = v10[189];
      (v10[245])(v10[97], v10[98], v10[87]);
      v148 = sub_10002C958();
      v149 = sub_10002CB98();
      v150 = os_log_type_enabled(v148, v149);
      v151 = v10[249];
      v152 = v10[248];
      v153 = v10[97];
      v154 = v10[87];
      if (v150)
      {
        v155 = swift_slowAlloc();
        v156 = swift_slowAlloc();
        v668[0] = v156;
        *v155 = 136315138;
        v157 = sub_10002C728();
        v159 = sub_10000B7BC(v157, v158, v668);

        *(v155 + 4) = v159;
        v10 = v665;
        v152(v153, v154);
        _os_log_impl(&_mh_execute_header, v148, v149, "Task %s is being removed.", v155, 0xCu);
        sub_1000067EC(v156);
      }

      else
      {

        v152(v153, v154);
      }

      v211 = v10[190];
      v212 = v10[98];
      v10[251] = sub_10002C758();
      v213 = sub_10002C728();
      v215 = v214;
      v10[252] = v214;
      v216 = *(&_s20LighthouseBackground12MLHostClientC10removeTaskySbSSYaAA0cD5ErrorOYKFTjTu + 1);
      v217 = _s20LighthouseBackground12MLHostClientC10removeTaskySbSSYaAA0cD5ErrorOYKFTjTu;
      v218 = swift_task_alloc();
      v10[253] = v218;
      *v218 = v10;
      v218[1] = sub_10001BC2C;
      v219 = v10[179];

      return ((&_s20LighthouseBackground12MLHostClientC10removeTaskySbSSYaAA0cD5ErrorOYKFTjTu + v217))(v213, v215, v219);
    }

    v36 = v10[249];
    (v10[248])(v10[98], v10[87]);
  }

  v38 = v10[229];
  v39 = v10[189];
  v40 = swift_allocObject();
  v10[255] = v40;
  swift_beginAccess();
  v41 = *(v38 + 16);
  v572 = v40;
  *(v40 + 16) = v41;
  v577 = (v40 + 16);
  v10[256] = v41;
  v649 = v41;

  v42 = sub_10002C958();
  v43 = sub_10002CB98();
  if (!os_log_type_enabled(v42, v43))
  {

    if (!v10[243])
    {
      goto LABEL_29;
    }

    goto LABEL_12;
  }

  v44 = swift_slowAlloc();
  v669[0] = 0;
  v668[0] = 0;
  *v44 = 0;
  v667[0] = v44 + 2;
  sub_10000B2CC(_swiftEmptyArrayStorage, v667, v669, v668);
  _os_log_impl(&_mh_execute_header, v42, v43, "Querying registered tasks for existing payloads...", v44, 2u);

  if (v10[243])
  {
LABEL_12:
    v45 = 0;
    v46 = v10[88];
    v47 = v10[75];
    v48 = v10[71];
    v634 = v10[242] + ((*(v46 + 80) + 32) & ~*(v46 + 80));
    v643 = v46;
    v49 = (v46 + 8);
    v596 = (v47 + 56);
    v593 = enum case for URL.DirectoryHint.inferFromPath(_:);
    v591 = (v48 + 104);
    v588 = (v48 + 8);
    v582 = (v47 + 8);
    v656 = (v46 + 8);
    do
    {
      if (v45 >= *(v10[242] + 16))
      {
        __break(1u);
        goto LABEL_140;
      }

      v51 = *(v643 + 16);
      v51(v10[95], v634 + *(v643 + 72) * v45, v10[87]);

      v52 = sub_10002C728();
      v54 = sub_100008480(v52, v53, v649);

      if (v54)
      {
        v55 = v10[95];
        sub_10002C708();
        if (v56)
        {
          v57 = v10[84];
          v604 = v10[85];
          v609 = v10[74];
          v58 = v10[72];
          v59 = v10[70];
          (*v596)(v10[73], 1, 1);
          v60 = *v591;
          (*v591)(v58, v593, v59);

          sub_10002C558();
          v665[43] = 0x737465737361;
          v665[44] = 0xE600000000000000;
          v60(v58, v593, v59);
          v10 = v665;
          sub_10002B6D0();
          sub_10002C568();
          (*v588)(v58, v59);
          v61 = *v582;
          (*v582)(v57, v609);
          sub_10002C548(0);
          v61(v604, v609);
          v62 = [objc_opt_self() defaultManager];
          v63 = sub_10002CA18();
          LODWORD(v61) = [v62 fileExistsAtPath:v63];

          if (v61)
          {
            v64 = v665[189];
            v51(v665[93], v665[95], v665[87]);
            v65 = sub_10002C958();
            v66 = sub_10002CB98();
            v67 = os_log_type_enabled(v65, v66);
            v68 = v665[93];
            v610 = v665[87];
            v49 = v656;
            if (v67)
            {
              v69 = swift_slowAlloc();
              v70 = swift_slowAlloc();
              v668[0] = v70;
              *v69 = 136315138;
              v71 = sub_10002C728();
              v73 = sub_10000B7BC(v71, v72, v668);

              *(v69 + 4) = v73;
              v49 = v656;

              v74 = *v656;
              (*v656)(v68, v610);
              _os_log_impl(&_mh_execute_header, v65, v66, "Assets already available. Skipping payload download for task: %s", v69, 0xCu);
              sub_1000067EC(v70);
            }

            else
            {

              v74 = *v656;
              (*v656)(v68, v610);
            }

            v97 = v665[95];
            v98 = v665[87];
            v99 = sub_10002C728();
            sub_10000BEB4(v99, v100);

            v74(v97, v98);
          }

          else
          {
            v49 = v656;
            (*v656)(v665[95], v665[87]);
          }

          goto LABEL_15;
        }

        v88 = v10[189];
        v51(v10[92], v10[95], v10[87]);
        v76 = sub_10002C958();
        v89 = sub_10002CB98();
        v90 = os_log_type_enabled(v76, v89);
        v79 = v10[95];
        v80 = v10[92];
        v81 = v10[87];
        if (v90)
        {
          v91 = swift_slowAlloc();
          v92 = swift_slowAlloc();
          v668[0] = v92;
          *v91 = 136315138;
          v93 = sub_10002C728();
          v95 = sub_10000B7BC(v93, v94, v668);

          *(v91 + 4) = v95;
          v49 = v656;
          v96 = *v656;
          (*v656)(v80, v81);
          _os_log_impl(&_mh_execute_header, v76, v89, "Skipping registeredTask %s due to lack of taskFolder.", v91, 0xCu);
          sub_1000067EC(v92);

          v96(v79, v81);
          goto LABEL_14;
        }
      }

      else
      {
        v75 = v10[189];
        v51(v10[94], v10[95], v10[87]);
        v76 = sub_10002C958();
        v77 = sub_10002CB98();
        v78 = os_log_type_enabled(v76, v77);
        v79 = v10[95];
        v80 = v10[94];
        v81 = v10[87];
        if (v78)
        {
          v82 = swift_slowAlloc();
          v83 = swift_slowAlloc();
          v668[0] = v83;
          *v82 = 136315138;
          v84 = sub_10002C728();
          v86 = sub_10000B7BC(v84, v85, v668);

          *(v82 + 4) = v86;
          v87 = *v656;
          (*v656)(v80, v81);
          _os_log_impl(&_mh_execute_header, v76, v77, "Skipping payloads for registeredTask %s it was not added in this run.", v82, 0xCu);
          sub_1000067EC(v83);
          v49 = v656;

          v87(v79, v81);
          goto LABEL_14;
        }
      }

      v50 = *v49;
      (*v49)(v80, v81);

      v50(v79, v81);
LABEL_14:
      v10 = v665;
LABEL_15:
      ++v45;
    }

    while (v45 != v10[243]);
  }

LABEL_29:
  v101 = v10[189];

  v102 = sub_10002C958();
  v103 = sub_10002CB98();
  if (!os_log_type_enabled(v102, v103))
  {

    if ((sub_10002CB18() & 1) == 0)
    {
      goto LABEL_31;
    }

LABEL_37:
    v122 = v10;
    v123 = v10[242];
    v124 = v122[240];
    v125 = v122[228];
    v126 = v122[222];
    v127 = v122[221];
    v128 = v122[208];
    v129 = v122[206];
    v130 = v122[203];
    v131 = v122[194];
    v132 = v122[189];

    v133 = sub_10002C958();
    v134 = sub_10002CB98();
    if (os_log_type_enabled(v133, v134))
    {
      v135 = swift_slowAlloc();
      v669[0] = 0;
      v668[0] = 0;
      *v135 = 0;
      v667[0] = v135 + 2;
      sub_10000B2CC(_swiftEmptyArrayStorage, v667, v669, v668);
      _os_log_impl(&_mh_execute_header, v133, v134, "Task cancelled before querying for TaskPayloads.", v135, 2u);
    }

    v136 = v665;
    v626 = v665[231];
    v636 = v665[230];
    v137 = v665[209];
    v138 = v665[203];
    v139 = v665[202];
    v140 = v665[201];
    v141 = v665[200];
    v619 = v665[199];
    v142 = v665[198];
    v143 = v665[197];
    v650 = v665[188];
    v658 = v665[229];
    v144 = v665[187];
    v644 = v665[186];
    v145 = objc_allocWithZone(sub_10002C7C8());
    v501 = sub_10002C7B8();

    sub_100007A74(v143);
    (*(v144 + 8))(v650, v644);
    goto LABEL_136;
  }

  v104 = swift_slowAlloc();
  v105 = swift_slowAlloc();
  v668[0] = v105;
  *v104 = 136315138;
  swift_beginAccess();
  v106 = *(v572 + 16);

  v107 = sub_10002CB38();
  v109 = v108;

  v110 = sub_10000B7BC(v107, v109, v668);

  *(v104 + 4) = v110;

  _os_log_impl(&_mh_execute_header, v102, v103, "Computed payloadsTaskNames: %s", v104, 0xCu);
  sub_1000067EC(v105);

  if (sub_10002CB18())
  {
    goto LABEL_37;
  }

LABEL_31:
  swift_beginAccess();
  v111 = v10;
  v112 = *v577;
  if (*(*v577 + 16))
  {
    v113 = v111[189];
    swift_retain_n();
    v114 = sub_10002C958();
    v115 = sub_10002CB98();
    if (os_log_type_enabled(v114, v115))
    {
      v116 = swift_slowAlloc();
      v117 = swift_slowAlloc();
      v118 = v117;
      v669[0] = v117;
      *v116 = 136315138;
      v119 = *(v112 + 16);
      if (v119)
      {
        v635 = v117;
        v657 = v114;
        v120 = sub_10000B738(v119, 0);
        v121 = sub_10000E634(v668, v120 + 4, v119, v112);
        swift_bridgeObjectRetain_n();
        sub_10002B724();
        if (v121 != v119)
        {
          goto LABEL_145;
        }

        v114 = v657;
        v118 = v635;
      }

      else
      {

        v120 = _swiftEmptyArrayStorage;
      }

      v668[0] = v120;
      sub_10000BFF0(v668);

      v254 = sub_10002CA98();
      v256 = v255;

      v257 = sub_10000B7BC(v254, v256, v669);

      *(v116 + 4) = v257;

      _os_log_impl(&_mh_execute_header, v114, v115, "Querying TaskPayloads for new tasks: %s", v116, 0xCu);
      sub_1000067EC(v118);
    }

    else
    {
    }

    v258 = v665[214];
    v259 = v665[212];
    v260 = v665[211];
    v261 = v665[210];
    v262 = v665[203];
    v263 = v665[202];
    v264 = v665[201];
    v265 = swift_allocObject();
    *(v265 + 16) = xmmword_10002DE40;
    *(v265 + 56) = &type metadata for String;
    *(v265 + 64) = v259;
    *(v265 + 32) = 0x656D614E6B736174;
    *(v265 + 40) = 0xE800000000000000;
    v266 = *v577;

    v268 = sub_100008AE8(v267);

    *(v265 + 96) = sub_100005338(&qword_1000386D8, &qword_10002DFA0);
    *(v265 + 104) = sub_10002B880(&qword_1000386E0, &qword_1000386D8, &qword_10002DFA0);
    *(v265 + 72) = v268;
    v269 = sub_10002CB88();
    v672._countAndFlagsBits = 0x6C7961506B736154;
    v672._object = 0xEC0000007364616FLL;
    isa = sub_10002CBC8(v672, v269).super.isa;
    v665[257] = isa;
    v271 = swift_task_alloc();
    v665[258] = v271;
    *(v271 + 16) = isa;
    *(v271 + 24) = v264;
    v272 = swift_task_alloc();
    v665[259] = v272;
    *(v272 + 16) = &unk_10002DFB0;
    *(v272 + 24) = v271;
    v273 = async function pointer to CKDatabase.configuredWith<A>(configuration:group:body:)[1];
    v274 = swift_task_alloc();
    v665[260] = v274;
    *v274 = v665;
    v274[1] = sub_10001F8D0;
    v275 = v665[219];
    v276 = v665[200];

    return CKDatabase.configuredWith<A>(configuration:group:body:)(v665 + 37, v262, v263, &unk_10002DFB8, v272, v275);
  }

  v160 = v111[203];

  v161 = v111;
  v659 = _swiftEmptyArrayStorage[2];
  if (v659)
  {
    v162 = 0;
    v163 = &_swiftEmptyArrayStorage[6];
    v620 = v111[65];
    v627 = v111[69];
    v651 = _swiftEmptyArrayStorage;
    while (1)
    {
      if (v162 >= _swiftEmptyArrayStorage[2])
      {
        goto LABEL_141;
      }

      v164 = *(v163 - 2);
      v165 = *(v163 - 1);
      if (*v163)
      {
        v166 = v161[189];
        sub_10002B400(*(v163 - 1), 1);
        sub_10002B400(v165, 1);
        sub_10002B400(v165, 1);
        v167 = v164;
        v168 = sub_10002C958();
        v169 = sub_10002CBB8();
        if (os_log_type_enabled(v168, v169))
        {
          v170 = swift_slowAlloc();
          v171 = swift_slowAlloc();
          *v170 = 138412290;
          swift_errorRetain();
          v172 = _swift_stdlib_bridgeErrorToNSError();
          *(v170 + 4) = v172;
          *v171 = v172;

          sub_10002B40C(v165, 1);
          sub_10002B40C(v165, 1);
          _os_log_impl(&_mh_execute_header, v168, v169, "Error: %@", v170, 0xCu);
          sub_10002B7B4(v171, &qword_1000386C8, &qword_10002DF80);

          sub_10002B40C(v165, 1);
        }

        else
        {

          sub_10002B40C(v165, 1);
          sub_10002B40C(v165, 1);
        }

        v182 = v161[197];
        v183 = *(v182 + 96);
        v184 = __OFADD__(v183, 1);
        v185 = v183 + 1;
        if (v184)
        {
          goto LABEL_142;
        }

        *(v182 + 96) = v185;
      }

      else
      {
        v174 = v161[63];
        v173 = v161[64];
        sub_10002B400(*(v163 - 1), 0);
        sub_10002B400(v165, 0);
        v175 = v164;
        sub_1000049E8(v165, v174);
        if ((*(v620 + 48))(v174, 1, v173) == 1)
        {
          v176 = v161[189];
          sub_10002B7B4(v161[63], &qword_100038640, &qword_10002DF00);
          v177 = v165;
          v178 = sub_10002C958();
          v179 = sub_10002CBB8();
          if (os_log_type_enabled(v178, v179))
          {
            v180 = swift_slowAlloc();
            v181 = swift_slowAlloc();
            *v180 = 138412290;
            *(v180 + 4) = v177;
            *v181 = v165;

            sub_10002B40C(v165, 0);
            _os_log_impl(&_mh_execute_header, v178, v179, "Skipping record: %@", v180, 0xCu);
            sub_10002B7B4(v181, &qword_1000386C8, &qword_10002DF80);
            v161 = v665;

            sub_10002B40C(v165, 0);
          }

          else
          {

            sub_10002B40C(v165, 0);
            sub_10002B40C(v165, 0);
          }

          goto LABEL_45;
        }

        v186 = v161[208];
        v187 = v161[69];
        v188 = v161[63];

        sub_10002B814(v188, v187, type metadata accessor for TaskPayloadRecord);
        if ((sub_100008480(v627[2], v627[3], v186) & 1) == 0)
        {
          v199 = v161[189];
          v200 = sub_10002C958();
          v201 = sub_10002CBA8();
          v202 = os_log_type_enabled(v200, v201);
          v203 = v161[69];
          if (v202)
          {
            v204 = swift_slowAlloc();
            v669[0] = 0;
            v668[0] = 0;
            *v204 = 0;
            v667[0] = v204 + 2;
            sub_10000B2CC(_swiftEmptyArrayStorage, v667, v669, v668);
            v205 = v201;
            v206 = v200;
            v207 = "Skipping taskPayloadRecord because associated with an unavailable extensionId.";
            goto LABEL_68;
          }

LABEL_69:

          sub_10002B40C(v165, 0);
          sub_100005B40(v203, type metadata accessor for TaskPayloadRecord);
          goto LABEL_45;
        }

        v189 = v161[256];
        v190 = *v161[69];
        v191 = v627[1];

        LOBYTE(v190) = sub_100008480(v190, v191, v189);

        if ((v190 & 1) == 0)
        {
          v208 = v161[189];
          v200 = sub_10002C958();
          v209 = sub_10002CBA8();
          v210 = os_log_type_enabled(v200, v209);
          v203 = v161[69];
          if (v210)
          {
            v204 = swift_slowAlloc();
            v669[0] = 0;
            v668[0] = 0;
            *v204 = 0;
            v667[0] = v204 + 2;
            sub_10000B2CC(_swiftEmptyArrayStorage, v667, v669, v668);
            v205 = v209;
            v206 = v200;
            v207 = "Skipping taskPayloadRecord because associated with an unavailable taskName.";
LABEL_68:
            _os_log_impl(&_mh_execute_header, v206, v205, v207, v204, 2u);
          }

          goto LABEL_69;
        }

        sub_100005AD8(v161[69], v161[68], type metadata accessor for TaskPayloadRecord);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v651 = sub_10000B55C(0, v651[2] + 1, 1, v651, &qword_100038758, &qword_10002DFF0, type metadata accessor for TaskPayloadRecord);
        }

        v193 = v651[2];
        v192 = v651[3];
        if (v193 >= v192 >> 1)
        {
          v651 = sub_10000B55C(v192 > 1, v193 + 1, 1, v651, &qword_100038758, &qword_10002DFF0, type metadata accessor for TaskPayloadRecord);
        }

        v194 = v161[197];
        v195 = v161[69];
        v196 = v161[68];
        v651[2] = v193 + 1;
        sub_10002B814(v196, v651 + ((*(v620 + 80) + 32) & ~*(v620 + 80)) + *(v620 + 72) * v193, type metadata accessor for TaskPayloadRecord);
        sub_10002B40C(v165, 0);
        sub_100005B40(v195, type metadata accessor for TaskPayloadRecord);
        v197 = *(v194 + 88);
        v184 = __OFADD__(v197, 1);
        v198 = v197 + 1;
        if (v184)
        {
          goto LABEL_144;
        }

        *(v161[197] + 88) = v198;
      }

LABEL_45:
      ++v162;
      v163 += 24;
      if (v659 == v162)
      {
        goto LABEL_76;
      }
    }
  }

  v651 = _swiftEmptyArrayStorage;
LABEL_76:

  if (sub_10002CB18())
  {
    v221 = v161[242];
    v222 = v161[240];
    v223 = v161[228];
    v224 = v161[222];
    v225 = v161[221];
    v226 = v161[208];
    v227 = v161[206];
    v228 = v161[194];
    v229 = v161[189];

    v230 = sub_10002C958();
    v231 = sub_10002CB98();
    if (os_log_type_enabled(v230, v231))
    {
      v232 = swift_slowAlloc();
      v669[0] = 0;
      v668[0] = 0;
      *v232 = 0;
      v667[0] = v232 + 2;
      sub_10000B2CC(_swiftEmptyArrayStorage, v667, v669, v668);
      _os_log_impl(&_mh_execute_header, v230, v231, "Task cancelled before processing TaskPayloads.", v232, 2u);
    }

    v136 = v161;
    v628 = v161[231];
    v637 = v161[255];
    v233 = v161[230];
    v234 = v161[229];
    v235 = v161[209];
    v236 = v161[203];
    v237 = v161[202];
    v238 = v161[201];
    v239 = v161[200];
    v621 = v161[199];
    v240 = v161[198];
    v241 = v136[197];
    v660 = v136[188];
    v242 = v136[187];
    v652 = v136[186];
    v243 = objc_allocWithZone(sub_10002C7C8());
    v501 = sub_10002C7B8();

    goto LABEL_134;
  }

  v244 = v161[189];
  v245 = v651;
  swift_bridgeObjectRetain_n();
  v246 = sub_10002C958();
  v247 = sub_10002CB98();
  if (os_log_type_enabled(v246, v247))
  {
    v248 = swift_slowAlloc();
    v249 = swift_slowAlloc();
    v669[0] = v249;
    *v248 = 134218242;
    *(v248 + 4) = v651[2];

    *(v248 + 12) = 2080;
    sub_100008968(v651, type metadata accessor for TaskPayloadRecord, type metadata accessor for TaskPayloadRecord, v668);
    v250 = sub_10002CA98();
    v252 = v251;

    v253 = sub_10000B7BC(v250, v252, v669);

    *(v248 + 14) = v253;
    v245 = v651;
    swift_bridgeObjectRelease_n();
    _os_log_impl(&_mh_execute_header, v246, v247, "Processing TaskPayloadRecords (count: %ld): %s", v248, 0x16u);
    sub_1000067EC(v249);

    if (!v161[243])
    {
      goto LABEL_124;
    }
  }

  else
  {

    swift_bridgeObjectRelease_n();
    if (!v161[243])
    {
LABEL_124:
      v428 = v161[228];
      v429 = v161[221];
      v430 = v161[196];
      v431 = v161[195];
      v432 = v161[170];
      v433 = v161[164];

      sub_10002C5D8();
      sub_10002C598();
      v435 = v434;
      v431(v432, v433);
      v436 = objc_allocWithZone(NSUserDefaults);
      v437 = sub_10002CA18();
      v438 = [v436 initWithSuiteName:v437];

      if (v438)
      {
        v439 = v161[189];
        v440 = sub_10002C958();
        v441 = sub_10002CB98();
        v442 = os_log_type_enabled(v440, v441);
        v443 = v161[242];
        v444 = v161[240];
        v445 = v161[222];
        v446 = v161[208];
        v447 = v161;
        v448 = v161[206];
        v449 = v447[194];
        if (v442)
        {
          v450 = swift_slowAlloc();
          *v450 = 134217984;
          *(v450 + 4) = v435;

          _os_log_impl(&_mh_execute_header, v440, v441, "Marking lastSuccessTimestamp: %f", v450, 0xCu);
        }

        else
        {
        }

        v479 = sub_10002CB28().super.super.isa;
        v480 = sub_10002CA18();
        [v438 setValue:v479 forKey:v480];

        v161 = v665;
      }

      else
      {
        v473 = v161[242];
        v474 = v161[240];
        v475 = v161[222];
        v476 = v161[208];
        v477 = v161[206];
        v478 = v161[194];
      }

      v136 = v161;
      v631 = v161[231];
      v640 = v161[255];
      v481 = v161[230];
      v482 = v161[229];
      v483 = v161[209];
      v484 = v161[203];
      v485 = v161[202];
      v486 = v161[201];
      v487 = v161[200];
      v621 = v161[199];
      v488 = v161[198];
      v241 = v136[197];
      v660 = v136[188];
      v242 = v136[187];
      v652 = v136[186];
      v489 = objc_allocWithZone(sub_10002C7C8());
      v501 = sub_10002C7B8();

LABEL_134:

      v472 = v241;
      goto LABEL_135;
    }
  }

  v277 = 0;
  v278 = v161[88];
  v279 = v278 + 16;
  v629 = (v161[65] + 48);
  v280 = v161[75];
  v281 = (v280 + 56);
  v282 = v161[71];
  v573 = (v282 + 104);
  v570 = (v282 + 8);
  v615 = (v280 + 8);
  v589 = (v280 + 16);
  v638 = v278;
  v562 = v161[67];
  v559 = v161[66];
  v594 = enum case for URL.DirectoryHint.inferFromPath(_:);
  v605 = v278 + 16;
  v622 = (v280 + 56);
  v645 = (v278 + 8);
  while (1)
  {
    v285 = v161[242];
    if (*(v285 + 16) <= v277)
    {
      goto LABEL_143;
    }

    v286 = *(v638 + 16);
    v286(v161[91], v285 + ((*(v638 + 80) + 32) & ~*(v638 + 80)) + *(v638 + 72) * v277, v161[87]);
    if (sub_10002CB18())
    {
      break;
    }

    v287 = v161[91];
    v288 = v161[64];
    v289 = v161[62];
    *(swift_task_alloc() + 16) = v287;
    sub_1000087D0(sub_10002B6B0, v245, type metadata accessor for TaskPayloadRecord, type metadata accessor for TaskPayloadRecord, type metadata accessor for TaskPayloadRecord, v289);

    if ((*v629)(v289, 1, v288) == 1)
    {
      v290 = v161[189];
      v291 = v161[91];
      v292 = v161[90];
      v293 = v161[87];
      sub_10002B7B4(v161[62], &qword_100038640, &qword_10002DF00);
      v294 = v293;
      v295 = v279;
      v286(v292, v291, v294);
      v296 = sub_10002C958();
      v297 = sub_10002CB98();
      v298 = os_log_type_enabled(v296, v297);
      v299 = v161[90];
      v300 = v161[87];
      if (v298)
      {
        v301 = swift_slowAlloc();
        v661 = v277;
        v302 = swift_slowAlloc();
        v668[0] = v302;
        *v301 = 136315138;
        v303 = sub_10002C728();
        v305 = sub_10000B7BC(v303, v304, v668);
        v281 = v622;

        *(v301 + 4) = v305;
        v161 = v665;
        v283 = *v645;
        (*v645)(v299, v300);
        _os_log_impl(&_mh_execute_header, v296, v297, "Skipping task. No TaskPayloadRecord found for: %s", v301, 0xCu);
        sub_1000067EC(v302);
        v277 = v661;
        v279 = v605;

        v245 = v651;
      }

      else
      {

        v283 = *v645;
        (*v645)(v299, v300);
        v245 = v651;
        v279 = v295;
      }
    }

    else
    {
      v306 = v161[91];
      sub_10002B814(v161[62], v161[67], type metadata accessor for TaskPayloadRecord);
      sub_10002C708();
      if (v307)
      {
        v662 = v277;
        v308 = v161[85];
        v597 = v161[83];
        v611 = v161[74];
        v309 = v161[72];
        v310 = v281;
        v311 = v161[70];
        v578 = *v310;
        (*v310)(v161[73], 1, 1);
        v312 = *v573;
        (*v573)(v309, v594, v311);

        sub_10002C558();
        v161[25] = 0x737465737361;
        v161[26] = 0xE600000000000000;
        v583 = v312;
        v312(v309, v594, v311);
        sub_10002B6D0();
        sub_10002C568();
        v313 = *v570;
        (*v570)(v309, v311);
        v314 = v611;
        v612 = *v615;
        (*v615)(v308, v314);
        v315 = objc_opt_self();
        v316 = [v315 defaultManager];
        sub_10002C548(0);
        v317 = sub_10002CA18();

        v161[48] = 0;
        v318 = [v316 createDirectoryAtPath:v317 withIntermediateDirectories:1 attributes:0 error:v161 + 48];

        v319 = v161[48];
        v320 = v161[189];
        v321 = v161[74];
        if (v318)
        {
          v564 = v315;
          v566 = v313;
          v322 = v161[82];
          v598 = v161[81];
          v323 = v161[73];
          v324 = v161[72];
          v325 = v161[70];
          v327 = *(v562 + 32);
          v326 = *(v562 + 40);
          (v578)(v323, 1, 1, v321);
          v583(v324, v594, v325);
          v328 = v319;

          v161 = v665;
          sub_10002C558();
          v329 = *v589;
          (*v589)(v598, v322, v321);
          v330 = sub_10002C958();
          v331 = sub_10002CB98();
          v332 = os_log_type_enabled(v330, v331);
          v333 = v665[81];
          v334 = v665[74];
          if (v332)
          {
            v335 = swift_slowAlloc();
            v336 = swift_slowAlloc();
            v668[0] = v336;
            *v335 = 136315138;
            sub_10002B3B8(&qword_1000386F0, &type metadata accessor for URL);
            v337 = sub_10002CD38();
            v339 = sub_10000B7BC(v337, v338, v668);

            *(v335 + 4) = v339;
            v161 = v665;
            v612(v333, v334);
            _os_log_impl(&_mh_execute_header, v330, v331, "Processing: %s", v335, 0xCu);
            sub_1000067EC(v336);
          }

          else
          {

            v612(v333, v334);
          }

          v370 = sub_100008DB0(v161[82], v161[83]);
          v371 = v161[189];
          if ((v370 & 1) == 0)
          {
            v387 = sub_10002C958();
            v388 = sub_10002CB98();
            if (os_log_type_enabled(v387, v388))
            {
              v389 = swift_slowAlloc();
              v669[0] = 0;
              v668[0] = 0;
              *v389 = 0;
              v667[0] = v389 + 2;
              sub_10000B2CC(_swiftEmptyArrayStorage, v667, v669, v668);
              _os_log_impl(&_mh_execute_header, v387, v388, "Failed at processing archive, copying raw archive into taskFolder.", v389, 2u);
            }

            v390 = v161[83];
            v391 = v161[82];
            v392 = v161[79];
            v393 = v161[72];
            v394 = v161[70];
            v161[45] = 0x612E737465737361;
            v161[46] = 0xEA00000000007261;
            v583(v393, v594, v394);
            sub_10002C568();
            v566(v393, v394);
            v395 = [v564 defaultManager];
            sub_10002C528(v396);
            v398 = v397;
            sub_10002C528(v399);
            v401 = v400;
            v161[50] = 0;
            LODWORD(v392) = [v395 copyItemAtURL:v398 toURL:v400 error:v161 + 50];

            v402 = v161[50];
            v403 = v161[74];
            if (v392)
            {
              v404 = v161[83];
              v405 = v161[82];
              v406 = v161[79];
              v407 = v161[67];
              v408 = v402;

              v612(v406, v403);
              v612(v405, v403);
              v612(v404, v403);
              sub_100005B40(v407, type metadata accessor for TaskPayloadRecord);
              v245 = v651;
              v283 = *v645;
              v277 = v662;
              v279 = v605;
              v281 = v622;
            }

            else
            {
              v409 = v161[189];
              v410 = v161[79];
              v411 = v161[76];
              v412 = v402;
              sub_10002C508();

              swift_willThrow();
              v329(v411, v410, v403);
              swift_errorRetain();
              swift_errorRetain();
              v413 = sub_10002C958();
              v414 = sub_10002CBB8();
              v415 = os_log_type_enabled(v413, v414);
              v416 = v161[83];
              v417 = v161[82];
              v601 = v161[79];
              v418 = v161[76];
              v419 = v161[74];
              v420 = v161[67];
              if (v415)
              {
                v586 = v161[82];
                v421 = swift_slowAlloc();
                v580 = v416;
                v422 = swift_slowAlloc();
                v568 = swift_slowAlloc();
                v668[0] = v568;
                *v421 = 136315394;
                sub_10002B3B8(&qword_1000386F0, &type metadata accessor for URL);
                v423 = sub_10002CD38();
                v575 = v420;
                v425 = sub_10000B7BC(v423, v424, v668);
                v161 = v665;

                *(v421 + 4) = v425;
                v612(v418, v419);
                *(v421 + 12) = 2112;
                swift_errorRetain();
                v426 = _swift_stdlib_bridgeErrorToNSError();
                *(v421 + 14) = v426;
                *v422 = v426;

                _os_log_impl(&_mh_execute_header, v413, v414, "Failed at asset to: %s : %@", v421, 0x16u);
                sub_10002B7B4(v422, &qword_1000386C8, &qword_10002DF80);

                sub_1000067EC(v568);

                v612(v601, v419);
                v612(v586, v419);
                v612(v580, v419);
                v427 = v575;
              }

              else
              {

                v612(v418, v419);

                v612(v601, v419);
                v612(v417, v419);
                v612(v416, v419);
                v427 = v420;
              }

              sub_100005B40(v427, type metadata accessor for TaskPayloadRecord);
              v277 = v662;
              v281 = v622;
              v245 = v651;
              v283 = *v645;
              v279 = v605;
            }

            goto LABEL_91;
          }

          v329(v161[80], v161[83], v161[74]);
          v372 = sub_10002C958();
          v373 = sub_10002CB98();
          v374 = os_log_type_enabled(v372, v373);
          v375 = v161[83];
          v376 = v161[82];
          v377 = v161[80];
          v378 = v161[74];
          v379 = v161[67];
          if (v374)
          {
            v380 = swift_slowAlloc();
            v600 = v379;
            v381 = swift_slowAlloc();
            v668[0] = v381;
            *v380 = 136315138;
            sub_10002B3B8(&qword_1000386F0, &type metadata accessor for URL);
            v382 = sub_10002CD38();
            v585 = v375;
            v384 = sub_10000B7BC(v382, v383, v668);
            v161 = v665;

            *(v380 + 4) = v384;

            v612(v377, v378);
            _os_log_impl(&_mh_execute_header, v372, v373, "TaskPayload extracted at: %s", v380, 0xCu);
            sub_1000067EC(v381);

            v612(v376, v378);
            v612(v585, v378);
            v385 = v600;
          }

          else
          {

            v612(v377, v378);

            v612(v376, v378);
            v612(v375, v378);
            v385 = v379;
          }

          sub_100005B40(v385, type metadata accessor for TaskPayloadRecord);
          v281 = v622;
          v386 = v645;
          v245 = v651;
        }

        else
        {
          v353 = v161[83];
          v354 = v161[77];
          v355 = v319;
          sub_10002C508();

          swift_willThrow();
          (*v589)(v354, v353, v321);
          swift_errorRetain();
          swift_errorRetain();
          v356 = sub_10002C958();
          v357 = sub_10002CBB8();
          v358 = os_log_type_enabled(v356, v357);
          v359 = v161[83];
          v360 = v161[77];
          v361 = v161[74];
          v362 = v161[67];
          if (v358)
          {
            v363 = swift_slowAlloc();
            v599 = v359;
            v364 = swift_slowAlloc();
            v579 = swift_slowAlloc();
            v668[0] = v579;
            *v363 = 136315394;
            sub_10002B3B8(&qword_1000386F0, &type metadata accessor for URL);
            v365 = sub_10002CD38();
            v584 = v362;
            v367 = sub_10000B7BC(v365, v366, v668);
            v161 = v665;

            *(v363 + 4) = v367;
            v612(v360, v361);
            *(v363 + 12) = 2112;
            swift_errorRetain();
            v368 = _swift_stdlib_bridgeErrorToNSError();
            *(v363 + 14) = v368;
            *v364 = v368;

            _os_log_impl(&_mh_execute_header, v356, v357, "Failed at creating taskAssetsURL: %s : %@", v363, 0x16u);
            sub_10002B7B4(v364, &qword_1000386C8, &qword_10002DF80);

            sub_1000067EC(v579);

            v612(v599, v361);
            v369 = v584;
          }

          else
          {

            v612(v360, v361);

            v612(v359, v361);
            v369 = v362;
          }

          sub_100005B40(v369, type metadata accessor for TaskPayloadRecord);
          v245 = v651;
          v281 = v622;
          v386 = v645;
        }

        v283 = *v386;
        v277 = v662;
        v279 = v605;
      }

      else
      {
        v340 = v161[189];
        sub_100005AD8(v161[67], v161[66], type metadata accessor for TaskPayloadRecord);
        v341 = sub_10002C958();
        v342 = sub_10002CBB8();
        v343 = os_log_type_enabled(v341, v342);
        v344 = v161[67];
        v345 = v161[66];
        if (v343)
        {
          v346 = swift_slowAlloc();
          v347 = v277;
          v348 = swift_slowAlloc();
          v668[0] = v348;
          *v346 = 136315138;
          v349 = *v345;
          v350 = *(v559 + 8);

          v351 = sub_10000B7BC(v349, v350, v668);
          v161 = v665;

          *(v346 + 4) = v351;
          sub_100005B40(v345, type metadata accessor for TaskPayloadRecord);
          _os_log_impl(&_mh_execute_header, v341, v342, "Task %s doesn't have a valid taskFolder. Skipping task.", v346, 0xCu);
          sub_1000067EC(v348);
          v277 = v347;

          v352 = v344;
          v281 = v622;
        }

        else
        {
          sub_100005B40(v161[66], type metadata accessor for TaskPayloadRecord);

          v352 = v344;
        }

        sub_100005B40(v352, type metadata accessor for TaskPayloadRecord);
        v245 = v651;
        v283 = *v645;
      }
    }

LABEL_91:
    ++v277;
    v284 = v161[243];
    v283(v161[91], v161[87]);
    if (v277 == v284)
    {
      goto LABEL_124;
    }
  }

  v451 = v161[242];
  v452 = v161[240];
  v453 = v161[228];
  v454 = v161[222];
  v455 = v161[221];
  v456 = v161[208];
  v457 = v161[206];
  v458 = v161[194];
  v459 = v161[189];

  v460 = sub_10002C958();
  v461 = sub_10002CB98();
  if (os_log_type_enabled(v460, v461))
  {
    v462 = swift_slowAlloc();
    v669[0] = 0;
    v668[0] = 0;
    *v462 = 0;
    v667[0] = v462 + 2;
    sub_10000B2CC(_swiftEmptyArrayStorage, v667, v669, v668);
    _os_log_impl(&_mh_execute_header, v460, v461, "Task cancelled while processing TaskPayloads.", v462, 2u);
  }

  v623 = v161[231];
  v630 = v161[255];
  v639 = v161[230];
  v463 = v161[229];
  v464 = v161[209];
  v465 = v161[203];
  v466 = v161[202];
  v136 = v161;
  v467 = v161[201];
  v468 = v136[200];
  v469 = v136[198];
  v470 = v136[197];
  v660 = v136[188];
  v242 = v136[187];
  v652 = v136[186];
  v616 = v136[91];
  v606 = v136[199];
  v613 = v136[87];
  v471 = objc_allocWithZone(sub_10002C7C8());
  v501 = sub_10002C7B8();

  (*v645)(v616, v613);

  v472 = v470;
LABEL_135:
  sub_100007A74(v472);
  (*(v242 + 8))(v660, v652);
LABEL_136:

  v490 = v136[188];
  v491 = v136[185];
  v492 = v136[184];
  v493 = v136[183];
  v494 = v136[182];
  v495 = v136[181];
  v496 = v136[180];
  v497 = v136[179];
  v498 = v136[178];
  v499 = v136[177];
  v502 = v136[174];
  v503 = v136[173];
  v504 = v136[170];
  v505 = v136[169];
  v506 = v136[168];
  v507 = v136[167];
  v508 = v136[166];
  v509 = v136[163];
  v510 = v136[160];
  v511 = v136[159];
  v512 = v136[158];
  v513 = v136[157];
  v514 = v136[156];
  v515 = v136[155];
  v516 = v136[154];
  v517 = v136[151];
  v518 = v136[150];
  v519 = v136[149];
  v520 = v136[148];
  v521 = v136[147];
  v522 = v136[146];
  v523 = v136[145];
  v524 = v136[144];
  v525 = v136[143];
  v526 = v136[140];
  v527 = v136[139];
  v528 = v136[138];
  v529 = v136[137];
  v530 = v136[136];
  v531 = v136[135];
  v532 = v136[132];
  v533 = v136[131];
  v534 = v136[130];
  v535 = v136[129];
  v536 = v136[128];
  v537 = v136[125];
  v538 = v136[124];
  v539 = v136[123];
  v540 = v136[122];
  v541 = v136[121];
  v542 = v136[118];
  v543 = v136[115];
  v544 = v136[114];
  v545 = v136[111];
  v546 = v136[110];
  v547 = v136[109];
  v548 = v136[108];
  v549 = v136[107];
  v550 = v136[104];
  v551 = v136[103];
  v552 = v136[102];
  v553 = v136[101];
  v554 = v136[100];
  v555 = v136[99];
  v556 = v136[98];
  v557 = v136[97];
  v558 = v136[96];
  v560 = v136[95];
  v561 = v136[94];
  v563 = v136[93];
  v565 = v136[92];
  v567 = v136[91];
  v569 = v136[90];
  v571 = v136[89];
  v574 = v136[86];
  v576 = v136[85];
  v581 = v136[84];
  v587 = v136[83];
  v590 = v136[82];
  v592 = v136[81];
  v595 = v136[80];
  v602 = v136[79];
  v603 = v136[78];
  v607 = v136[77];
  v614 = v136[76];
  v617 = v136[73];
  v624 = v136[72];
  v632 = v136[69];
  v641 = v136[68];
  v646 = v136[67];
  v653 = v136[66];
  v663 = v136[63];
  v666 = v136[62];

  v500 = v136[1];

  return v500(v501);
}

uint64_t sub_10002A2D0()
{
  v188 = v0;
  v1 = *(v0 + 2088);

  *(v0 + 424) = v1;
  swift_errorRetain();
  sub_100005338(&qword_1000386B8, &qword_10002DF78);
  type metadata accessor for CKError(0);
  if (swift_dynamicCast())
  {
    v2 = *(v0 + 1512);
    v3 = *(v0 + 480);
    v4 = sub_10002C958();
    v5 = sub_10002CBB8();
    v6 = os_log_type_enabled(v4, v5);
    v7 = *(v0 + 2088);
    v173 = *(v0 + 1936);
    v177 = *(v0 + 1920);
    v8 = *(v0 + 1776);
    v9 = *(v0 + 1648);
    v182 = v3;
    if (v6)
    {
      if (*(v0 + 1552))
      {
        v10 = *(v0 + 1552);
      }

      v165 = *(v0 + 1664);
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      *v11 = 138412290;
      v13 = v3;
      v14 = _swift_stdlib_bridgeErrorToNSError();
      *(v11 + 4) = v14;
      *v12 = v14;

      v3 = v182;
      _os_log_impl(&_mh_execute_header, v4, v5, "CKError: %@", v11, 0xCu);
      sub_10002B7B4(v12, &qword_1000386C8, &qword_10002DF80);
    }

    else
    {

      v4 = v3;
    }

    *(v0 + 416) = v3;
    sub_10002B3B8(&qword_1000384F0, type metadata accessor for CKError);
    sub_10002C4D8();
    if (*(v0 + 392) == 7)
    {
      v31 = *(v0 + 1512);
      v32 = sub_10002C958();
      v33 = sub_10002CB98();
      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        v187[0] = 0;
        v186[0] = 0;
        *v34 = 0;
        v185 = v34 + 2;
        sub_10000B2CC(_swiftEmptyArrayStorage, &v185, v187, v186);
        _os_log_impl(&_mh_execute_header, v32, v33, "Found CloudKit rate-limit, deferring execution.", v34, 2u);
      }

      v157 = *(v0 + 1848);
      v161 = *(v0 + 2040);
      v35 = *(v0 + 1672);
      v36 = *(v0 + 1624);
      v37 = *(v0 + 1616);
      v38 = *(v0 + 1608);
      v39 = *(v0 + 1600);
      v153 = *(v0 + 1592);
      v40 = *(v0 + 1584);
      v41 = *(v0 + 1576);
      v174 = *(v0 + 1504);
      v178 = *(v0 + 1832);
      v42 = *(v0 + 1496);
      v166 = *(v0 + 1840);
      v170 = *(v0 + 1488);
      v43 = objc_allocWithZone(sub_10002C7C8());
      v77 = sub_10002C7B8();

      v44 = *(v0 + 424);

      v45 = v41;
    }

    else
    {
      v159 = *(v0 + 1848);
      v163 = *(v0 + 2040);
      v56 = *(v0 + 1672);
      v57 = *(v0 + 1624);
      v58 = *(v0 + 1616);
      v59 = *(v0 + 1608);
      v60 = *(v0 + 1600);
      v155 = *(v0 + 1592);
      v61 = *(v0 + 1584);
      v62 = *(v0 + 1576);
      v174 = *(v0 + 1504);
      v180 = *(v0 + 1832);
      v42 = *(v0 + 1496);
      v168 = *(v0 + 1840);
      v170 = *(v0 + 1488);
      v186[3] = &type metadata for CloudError;
      v186[4] = sub_10002B364();
      LOBYTE(v186[0]) = 1;
      v63 = objc_allocWithZone(sub_10002C7C8());
      v77 = sub_10002C7A8();

      v64 = *(v0 + 424);

      v45 = v62;
    }

    sub_100007A74(v45);
    (*(v42 + 8))(v174, v170);
  }

  else
  {
    v15 = *(v0 + 2088);
    v16 = *(v0 + 1512);
    v17 = *(v0 + 424);

    swift_errorRetain();
    swift_errorRetain();
    v18 = sub_10002C958();
    v19 = sub_10002CBB8();
    v20 = os_log_type_enabled(v18, v19);
    v21 = *(v0 + 2088);
    v22 = *(v0 + 1936);
    v23 = *(v0 + 1920);
    v24 = *(v0 + 1776);
    v25 = *(v0 + 1664);
    v26 = *(v0 + 1648);
    if (v20)
    {
      if (*(v0 + 1552))
      {
        v27 = *(v0 + 1552);
      }

      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      *v28 = 138412290;
      swift_errorRetain();
      v30 = _swift_stdlib_bridgeErrorToNSError();
      *(v28 + 4) = v30;
      *v29 = v30;

      _os_log_impl(&_mh_execute_header, v18, v19, "Error: %@", v28, 0xCu);
      sub_10002B7B4(v29, &qword_1000386C8, &qword_10002DF80);
    }

    else
    {
      v46 = *(v0 + 1648);
    }

    v162 = *(v0 + 2088);
    v167 = *(v0 + 2040);
    v47 = *(v0 + 1672);
    v48 = *(v0 + 1624);
    v49 = *(v0 + 1616);
    v50 = *(v0 + 1608);
    v51 = *(v0 + 1600);
    v154 = *(v0 + 1592);
    v158 = *(v0 + 1848);
    v52 = *(v0 + 1584);
    v53 = *(v0 + 1576);
    v179 = *(v0 + 1504);
    v183 = *(v0 + 1832);
    v54 = *(v0 + 1496);
    v171 = *(v0 + 1840);
    v175 = *(v0 + 1488);
    v55 = objc_allocWithZone(sub_10002C7C8());
    v77 = sub_10002C7B8();

    sub_100007A74(v53);
    (*(v54 + 8))(v179, v175);
  }

  v65 = *(v0 + 1504);
  v66 = *(v0 + 1480);
  v67 = *(v0 + 1472);
  v68 = *(v0 + 1464);
  v69 = *(v0 + 1456);
  v70 = *(v0 + 1448);
  v71 = *(v0 + 1440);
  v72 = *(v0 + 1432);
  v73 = *(v0 + 1424);
  v74 = *(v0 + 1416);
  v78 = *(v0 + 1392);
  v79 = *(v0 + 1384);
  v80 = *(v0 + 1360);
  v81 = *(v0 + 1352);
  v82 = *(v0 + 1344);
  v83 = *(v0 + 1336);
  v84 = *(v0 + 1328);
  v85 = *(v0 + 1304);
  v86 = *(v0 + 1280);
  v87 = *(v0 + 1272);
  v88 = *(v0 + 1264);
  v89 = *(v0 + 1256);
  v90 = *(v0 + 1248);
  v91 = *(v0 + 1240);
  v92 = *(v0 + 1232);
  v93 = *(v0 + 1208);
  v94 = *(v0 + 1200);
  v95 = *(v0 + 1192);
  v96 = *(v0 + 1184);
  v97 = *(v0 + 1176);
  v98 = *(v0 + 1168);
  v99 = *(v0 + 1160);
  v100 = *(v0 + 1152);
  v101 = *(v0 + 1144);
  v102 = *(v0 + 1120);
  v103 = *(v0 + 1112);
  v104 = *(v0 + 1104);
  v105 = *(v0 + 1096);
  v106 = *(v0 + 1088);
  v107 = *(v0 + 1080);
  v108 = *(v0 + 1056);
  v109 = *(v0 + 1048);
  v110 = *(v0 + 1040);
  v111 = *(v0 + 1032);
  v112 = *(v0 + 1024);
  v113 = *(v0 + 1000);
  v114 = *(v0 + 992);
  v115 = *(v0 + 984);
  v116 = *(v0 + 976);
  v117 = *(v0 + 968);
  v118 = *(v0 + 944);
  v119 = *(v0 + 920);
  v120 = *(v0 + 912);
  v121 = *(v0 + 888);
  v122 = *(v0 + 880);
  v123 = *(v0 + 872);
  v124 = *(v0 + 864);
  v125 = *(v0 + 856);
  v126 = *(v0 + 832);
  v127 = *(v0 + 824);
  v128 = *(v0 + 816);
  v129 = *(v0 + 808);
  v130 = *(v0 + 800);
  v131 = *(v0 + 792);
  v132 = *(v0 + 784);
  v133 = *(v0 + 776);
  v134 = *(v0 + 768);
  v135 = *(v0 + 760);
  v136 = *(v0 + 752);
  v137 = *(v0 + 744);
  v138 = *(v0 + 736);
  v139 = *(v0 + 728);
  v140 = *(v0 + 720);
  v141 = *(v0 + 712);
  v142 = *(v0 + 688);
  v143 = *(v0 + 680);
  v144 = *(v0 + 672);
  v145 = *(v0 + 664);
  v146 = *(v0 + 656);
  v147 = *(v0 + 648);
  v148 = *(v0 + 640);
  v149 = *(v0 + 632);
  v150 = *(v0 + 624);
  v151 = *(v0 + 616);
  v152 = *(v0 + 608);
  v156 = *(v0 + 584);
  v160 = *(v0 + 576);
  v164 = *(v0 + 552);
  v169 = *(v0 + 544);
  v172 = *(v0 + 536);
  v176 = *(v0 + 528);
  v181 = *(v0 + 504);
  v184 = *(v0 + 496);

  v75 = *(v0 + 8);

  return v75(v77);
}

uint64_t sub_10002AFF4()
{
  v1 = *(v0 + 112);

  return _swift_deallocObject(v0, 120, 7);
}

unint64_t sub_10002B02C()
{
  result = qword_100038690;
  if (!qword_100038690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100038690);
  }

  return result;
}

unint64_t sub_10002B080()
{
  result = qword_1000386A0;
  if (!qword_1000386A0)
  {
    sub_10002B9AC(255, &qword_100038698, NSDate_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000386A0);
  }

  return result;
}

uint64_t sub_10002B0E8(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002B190;

  return sub_10000807C(a1, v5, v4);
}

uint64_t sub_10002B190(uint64_t a1, uint64_t a2)
{
  v5 = *(*v2 + 16);
  v8 = *v2;

  v6 = *(v8 + 8);

  return v6(a1, a2);
}

uint64_t sub_10002B29C(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_10002BDC0;

  return sub_10000826C(a1, a2, v7);
}

unint64_t sub_10002B364()
{
  result = qword_1000386C0;
  if (!qword_1000386C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000386C0);
  }

  return result;
}

uint64_t sub_10002B3B8(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_10002B400(void *a1, char a2)
{
  if (a2)
  {
    return swift_errorRetain();
  }

  else
  {
    return a1;
  }
}

void sub_10002B40C(void *a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

uint64_t sub_10002B418(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002BDC4;

  return sub_100008618(a1, v5, v4);
}

uint64_t sub_10002B4C0(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_10000A6C4;

  return sub_10000826C(a1, a2, v7);
}

uint64_t sub_10002B588()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10002B5C0(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_10002B608(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002BDC4;

  return sub_100008618(a1, v5, v4);
}

unint64_t sub_10002B6D0()
{
  result = qword_1000386E8;
  if (!qword_1000386E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000386E8);
  }

  return result;
}

uint64_t sub_10002B74C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100005338(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_10002B7B4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100005338(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_10002B814(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10002B880(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_10002B5C0(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10002B8C8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_10002B92C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10002B9AC(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t *sub_10002B9F4(uint64_t a1, uint64_t *a2)
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

__n128 sub_10002BA58(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 12);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_10002BA84(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 104))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 96);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10002BACC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 104) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 96) = (a2 - 1);
      return result;
    }

    *(result + 104) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CloudError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CloudError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_10002BC94()
{
  result = qword_1000387B8;
  if (!qword_1000387B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000387B8);
  }

  return result;
}

unint64_t sub_10002BCEC()
{
  result = qword_1000387C0;
  if (!qword_1000387C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000387C0);
  }

  return result;
}

unint64_t sub_10002BD44()
{
  result = qword_1000387C8;
  if (!qword_1000387C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000387C8);
  }

  return result;
}

uint64_t Array<A>.mean()(uint64_t a1, uint64_t a2)
{
  v2 = *(*(a2 - 8) + 64);
  __chkstk_darwin(a1);
  v3 = sub_10002CAD8();
  v4 = v3 - 1;
  if (v3 < 1)
  {
    return 0;
  }

  v5 = 0.0;
  v6 = 1;
  while (1)
  {
    sub_10002CB08();
    sub_10002C3A4();
    sub_10002C9B8();
    v5 = v5 + (v9 - v5) / v6;
    if (!v4)
    {
      break;
    }

    --v4;
    if (__OFADD__(v6++, 1))
    {
      __break(1u);
      return *&v5;
    }
  }

  return *&v5;
}

uint64_t Array<A>.median()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(a1);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v13 = &v20 - v12;
  __chkstk_darwin(v11);
  v14 = sub_10002CAD8();
  if (v14 < 1)
  {
    *&result = 0.0;
  }

  else
  {
    v21 = *&a1;
    sub_10002CAF8();
    swift_getWitnessTable();
    v15 = *(a3 + 16);
    v16 = *(*(v15 + 24) + 8);
    sub_10002CA58();
    sub_10002CB08();
    if (v14)
    {

      sub_10002C3A4();
      sub_10002C9B8();
      *&result = v21;
    }

    else
    {
      sub_10002CB08();

      v17 = *(*(*(v15 + 16) + 8) + 8);
      sub_10002CC78();
      v18 = *(v6 + 8);
      v18(v10, a2);
      v18(v13, a2);
      sub_10002C3A4();
      sub_10002C9B8();
      *&result = v21 * 0.5;
    }
  }

  return result;
}

uint64_t Array<A>.stddev()(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(a1);
  v6 = sub_10002CAD8();
  if (v6 < 2)
  {
    return 0;
  }

  v14 = v6;
  result = Array<A>.mean()(a1, a2);
  if ((v8 & 1) == 0)
  {
    v9 = *&result;
    if (sub_10002CAE8())
    {
      v10 = 0;
      v11 = 0.0;
      while (1)
      {
        v12 = sub_10002CAC8();
        sub_10002CAA8();
        if (v12)
        {
          (*(v4 + 16))(&v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v10, a2);
          v13 = v10 + 1;
          if (__OFADD__(v10, 1))
          {
            goto LABEL_14;
          }
        }

        else
        {
          result = sub_10002CC58();
          if (v5 != 8)
          {
            __break(1u);
            return result;
          }

          v15 = *&result;
          (*(v4 + 16))(&v14 - 2, &v15, a2);
          swift_unknownObjectRelease();
          v13 = v10 + 1;
          if (__OFADD__(v10, 1))
          {
LABEL_14:
            __break(1u);
            break;
          }
        }

        sub_10002C3A4();
        sub_10002C9B8();
        v11 = v11 + (v15 - v9) * (v15 - v9);
        ++v10;
        if (v13 == sub_10002CAE8())
        {
          return sqrt(v11 / v14);
        }
      }
    }

    v11 = 0.0;
    return sqrt(v11 / v14);
  }

  return result;
}

unint64_t sub_10002C3A4()
{
  result = qword_1000387D0;
  if (!qword_1000387D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000387D0);
  }

  return result;
}