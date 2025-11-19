void sub_1000178C8(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = v4;
  v290 = a3;
  v291 = a1;
  v292 = v5;
  v285 = *v5;
  v286 = a2;
  v279 = sub_1000850C8();
  v281 = *(v279 - 8);
  v7 = v281[8];
  __chkstk_darwin(v279);
  v278 = &v265 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100005740(&qword_1000A56E8, &qword_10008D350);
  v10 = *(*(v9 - 8) + 64);
  v11 = __chkstk_darwin(v9 - 8);
  v277 = &v265 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v280 = &v265 - v13;
  v14 = sub_1000847C8();
  v287 = *(v14 - 8);
  v288 = v14;
  v15 = *(v287 + 64);
  v16 = __chkstk_darwin(v14);
  v282 = (&v265 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = __chkstk_darwin(v16);
  v283 = &v265 - v19;
  v20 = __chkstk_darwin(v18);
  v274 = &v265 - v21;
  v22 = __chkstk_darwin(v20);
  *&v275 = &v265 - v23;
  v24 = __chkstk_darwin(v22);
  v276 = &v265 - v25;
  v26 = __chkstk_darwin(v24);
  v284 = (&v265 - v27);
  v28 = __chkstk_darwin(v26);
  v289 = &v265 - v29;
  v30 = __chkstk_darwin(v28);
  v32 = &v265 - v31;
  v33 = __chkstk_darwin(v30);
  v35 = &v265 - v34;
  v36 = __chkstk_darwin(v33);
  v38 = &v265 - v37;
  v39 = __chkstk_darwin(v36);
  v41 = &v265 - v40;
  v42 = __chkstk_darwin(v39);
  v44 = &v265 - v43;
  v45 = __chkstk_darwin(v42);
  v47 = &v265 - v46;
  __chkstk_darwin(v45);
  v49 = &v265 - v48;
  v50 = v298;
  sub_100085348();
  if (v50)
  {
    return;
  }

  v271 = v47;
  v272 = v49;
  v267 = v41;
  v268 = v44;
  v266 = v38;
  v269 = v32;
  v270 = v35;
  v273 = a4;
  v298 = 0;
  v51 = v292;
  if (*(v292 + 24) != 1)
  {
    v59 = v291;
    v60 = v291[3];
    v61 = v291[4];
    sub_10000626C(v291, v60);
    v62 = (*(v61 + 16))(v60, v61);
    if (v63)
    {
      v64 = v63;
    }

    else
    {
      v88 = [objc_opt_self() mainBundle];
      v89 = sub_100085068();
      v90 = [v88 localizedStringForKey:v89 value:0 table:0];

      v91 = sub_100085098();
      v64 = v92;

      v62 = v91;
    }

    v93 = v298;
    sub_1000154B4(v62, v64, v290, 0x656D686361747461, 0xEA0000000000746ELL, v289);
    if (v93)
    {

      return;
    }

    v280 = v64;
    sub_100084718();
    v94 = v51[12];
    v290 = v51[11];
    v281 = v94;
    v95 = v59[3];
    v96 = v59[4];
    sub_10000626C(v59, v95);
    v97 = *(v51 + 5);
    v296[0] = *(v51 + 3);
    v296[1] = v97;
    v297[0] = *(v51 + 7);
    *(v297 + 13) = *(v51 + 69);
    v98 = (*(v96 + 96))(v296, v95, v96);
    v100 = v99;
    ObjectType = swift_getObjectType();
    sub_1000849A8();
    v298 = 0;
    v279 = ObjectType;
    sub_10000650C(v98, v100);
    v135 = sub_100008250(0, &qword_1000A5BC0, ICArchive_ptr);
    v35 = v59;
    v136 = v59[3];
    v137 = v59[4];
    v138 = sub_10000626C(v59, v136);
    sub_10001D038(v138, v135, v136, v137);
    v139 = v288;
    if (!v140)
    {
      goto LABEL_113;
    }

    v141 = sub_100085068();

    v142 = [v141 ic_sanitizedFilenameString];

    sub_100085098();
    v143 = *(v35 + 24);
    v144 = *(v35 + 32);
    sub_10000626C(v35, v143);
    v145 = v277;
    (*(v144 + 48))(v143, v144);
    v146 = v287;
    if ((*(v287 + 48))(v145, 1, v139) != 1)
    {
      v187 = v276;
      (*(v146 + 32))(v276, v145, v139);
      v188 = v275;
      sub_100084718();
      v189 = v187;

      v190 = v298;
      sub_100084A18();
      v298 = v190;
      v73 = v292;
      if (!v190)
      {
        v209 = *(v146 + 8);
        v210 = v188;
        v211 = v288;
        v209(v210, v288);
        v209(v189, v211);
        goto LABEL_114;
      }

      v191 = *(v146 + 8);
      v192 = v188;
      v193 = v288;
      v191(v192, v288);
      v191(v189, v193);
LABEL_80:
      v298 = 0;
      if (qword_1000A53E0 != -1)
      {
        goto LABEL_130;
      }

      while (1)
      {
        v201 = sub_100084FB8();
        sub_10000B614(v201, qword_1000A5AA0);
        swift_errorRetain();
        v202 = sub_100084FA8();
        v203 = sub_100085378();

        if (os_log_type_enabled(v202, v203))
        {
          v204 = swift_slowAlloc();
          v205 = swift_slowAlloc();
          v295[0] = v205;
          *v204 = 136315138;
          swift_getErrorValue();
          v206 = sub_100085988();
          v208 = sub_100038A4C(v206, v207, v295);

          *(v204 + 4) = v208;
          _os_log_impl(&_mh_execute_header, v202, v203, "Cannot export attachment media file — skipping {error: %s}", v204, 0xCu);
          sub_100006304(v205);
          v35 = v291;

          v73 = v292;
        }

        else
        {
        }

LABEL_114:
        v173 = objc_autoreleasePoolPush();
        v240 = v298;
        sub_10001ABCC(v35, v73);
        if (v240)
        {
          goto LABEL_135;
        }

        objc_autoreleasePoolPop(v173);
        v241 = objc_autoreleasePoolPush();
        sub_10001AEFC(v35, v73);

        objc_autoreleasePoolPop(v241);
        v242 = *(v35 + 24);
        v243 = *(v35 + 32);
        sub_10000626C(v35, v242);
        v244 = (*(v243 + 64))(v242, v243);
        v246 = 0;
        v248 = (v244 + 56);
        v247 = *(v244 + 56);
        v298 = v244;
        v249 = 1 << *(v244 + 32);
        v250 = -1;
        if (v249 < 64)
        {
          v250 = ~(-1 << v249);
        }

        v70 = v250 & v247;
        v251 = (v249 + 63) >> 6;
        v252 = v287;
        v277 = (v287 + 16);
        v291 = (v287 + 8);
        *&v245 = 136315138;
        v275 = v245;
        v68 = v282;
        v280 = (v244 + 56);
        v278 = v251;
        while (v70)
        {
          v35 = v246;
LABEL_123:
          v254 = __clz(__rbit64(v70));
          v70 &= v70 - 1;
          v255 = v283;
          v256 = v288;
          (*(v252 + 16))(v283, *(v298 + 48) + *(v252 + 72) * (v254 | (v35 << 6)), v288);
          sub_1000846E8();
          sub_100084718();

          sub_100084A18();
          v253 = *v291;
          (*v291)(v255, v256);
          v253(v68, v256);
          v246 = v35;
          v73 = v292;
          v252 = v287;
          v248 = v280;
          v251 = v278;
        }

        while (1)
        {
          v35 = v246 + 1;
          if (__OFADD__(v246, 1))
          {
            __break(1u);
            goto LABEL_127;
          }

          if (v35 >= v251)
          {
            break;
          }

          v70 = *&v248[8 * v35];
          ++v246;
          if (v70)
          {
            goto LABEL_123;
          }
        }

        v257 = v273;
        v258 = [v273 completedUnitCount];
        if (!__OFADD__(v258, 1))
        {
          v259 = [v257 setCompletedUnitCount:v258 + 1];
          v295[0] = v286;
          __chkstk_darwin(v259);
          v260 = v289;
          *(&v265 - 4) = v73;
          *(&v265 - 3) = v260;
          *(&v265 - 2) = v257;
          v262 = *(v285 + 80);
          v261 = *(v285 + 88);
          swift_getAssociatedTypeWitness();
          swift_getAssociatedConformanceWitness();
          sub_100084B28();
          sub_100085278();
          swift_getWitnessTable();
          sub_1000851C8();
          v263 = *v291;
          v264 = v288;
          (*v291)(v284, v288);
          v263(v260, v264);
          return;
        }

        __break(1u);
LABEL_130:
        swift_once();
      }
    }

    sub_1000058F0(v145, &qword_1000A56E8, &qword_10008D350);
    v147 = *(v35 + 24);
    v148 = *(v35 + 32);
    sub_10000626C(v35, v147);
    v149 = (*(v148 + 56))(v147, v148);
    if (v150 >> 60 == 15)
    {

      goto LABEL_113;
    }

LABEL_78:
    v197 = v149;
    v198 = v150;
    v199 = v274;
    sub_100084718();

    v200 = v298;
    sub_1000849A8();
    v298 = v200;
    if (v200)
    {
      (*(v287 + 8))(v199, v139);
      sub_10001C19C(v197, v198);
      v73 = v292;
      goto LABEL_80;
    }

    (*(v287 + 8))(v199, v139);
    sub_10001C19C(v197, v198);
LABEL_113:
    v73 = v292;
    goto LABEL_114;
  }

  LODWORD(v289) = *(v292 + 25);
  v52 = v291;
  if (v289 == 2)
  {
    sub_10001C118(v291, v295);
    sub_100005740(&qword_1000A59C8, &qword_10008B770);
    sub_100008250(0, &qword_1000A56B0, ICAttachment_ptr);
    if (swift_dynamicCast())
    {
      v53 = v293;
      v54 = [v293 isTable];

      if (v54)
      {
        return;
      }
    }
  }

  sub_10001C118(v52, v295);
  v55 = sub_100005740(&qword_1000A59C8, &qword_10008B770);
  v56 = sub_100008250(0, &qword_1000A56B0, ICAttachment_ptr);
  if (swift_dynamicCast())
  {
    v57 = v293;
    v58 = [v293 parentAttachment];

    if (v58)
    {

      return;
    }
  }

  v282 = v56;
  v65 = v52[3];
  v66 = v52[4];
  sub_10000626C(v52, v65);
  v284 = (*(v66 + 88))(v65, v66);
  v68 = v67;
  v69 = v52[3];
  v70 = v52[4];
  sub_10000626C(v52, v69);
  v71 = (*(v70 + 80))(v69, v70);
  v283 = v55;
  if (v72 >> 60 == 15)
  {
LABEL_23:
    v102 = v52[3];
    v103 = v52[4];
    sub_10000626C(v52, v102);
    v104 = (*(v103 + 72))(v102, v103);
    if (v105 >> 60 != 15)
    {
      v116 = v104;
      v117 = v105;
      if (v68)
      {
        v118 = v292[11];
        v119 = v292[12];
        v70 = swift_getObjectType();

        v35 = v271;
        sub_100084718();

        v120 = v298;
        sub_1000849A8();
        v298 = v120;
        v87 = v286;
        if (!v120)
        {
          (*(v287 + 8))(v35, v288);
          sub_10001C19C(v116, v117);
          goto LABEL_46;
        }

        (*(v287 + 8))(v35, v288);
        if (qword_1000A53E0 != -1)
        {
          swift_once();
        }

        v121 = sub_100084FB8();
        sub_10000B614(v121, qword_1000A5AA0);
        v70 = v298;
        swift_errorRetain();
        v122 = sub_100084FA8();
        v123 = sub_100085378();

        if (os_log_type_enabled(v122, v123))
        {
          v70 = swift_slowAlloc();
          v35 = swift_slowAlloc();
          v295[0] = v35;
          *v70 = 136315138;
          swift_getErrorValue();
          v284 = v122;
          v124 = sub_100085988();
          v126 = v68;
          v127 = sub_100038A4C(v124, v125, v295);

          *(v70 + 4) = v127;
          v68 = v126;
          v128 = v284;
          _os_log_impl(&_mh_execute_header, v284, v123, "Cannot export attachment fallback image file — skipping {error: %s}", v70, 0xCu);
          sub_100006304(v35);
          v87 = v286;

          sub_10001C19C(v116, v117);
        }

        else
        {
          sub_10001C19C(v116, v117);
        }

        goto LABEL_45;
      }

      sub_10001C19C(v104, v105);
      goto LABEL_55;
    }

    if (v68)
    {
      v106 = v52[3];
      v107 = v52[4];
      sub_10000626C(v52, v106);
      v108 = *(v107 + 48);

      v109 = v280;
      v108(v106, v107);
      v110 = v287;
      v70 = v288;
      if ((*(v287 + 48))(v109, 1, v288) == 1)
      {
        sub_1000058F0(v109, &qword_1000A56E8, &qword_10008D350);
        v111 = v52[3];
        v112 = v52[4];
        sub_10000626C(v52, v111);
        v113 = (*(v112 + 56))(v111, v112);
        v73 = v292;
        if (v114 >> 60 == 15)
        {

          v115 = v273;
LABEL_56:
          v134 = v285;
          v87 = v286;
          goto LABEL_57;
        }

        v151 = v113;
        v152 = v114;
        v153 = v292[11];
        v35 = v292[12];
        swift_getObjectType();
        v70 = v266;
        sub_100084718();
        v284 = v68;

        v154 = v298;
        sub_1000849A8();
        v298 = v154;
        v87 = v286;
        if (!v154)
        {
          (*(v287 + 8))(v70, v288);
          sub_10001C19C(v151, v152);
          v115 = v273;
          v73 = v292;
          v68 = v284;
          v134 = v285;
          goto LABEL_57;
        }

        (*(v287 + 8))(v70, v288);
        sub_10001C19C(v151, v152);
        v68 = v284;
      }

      else
      {
        v129 = v268;
        (*(v110 + 32))(v268, v109, v70);
        v130 = v292[11];
        v35 = v110;
        v280 = v292[12];
        swift_getObjectType();
        v131 = v267;
        sub_100084718();

        v132 = v298;
        sub_100084A18();
        v298 = v132;
        if (!v132)
        {
          v162 = *(v110 + 8);
          v162(v131, v70);
          v162(v129, v70);
          goto LABEL_55;
        }

        v133 = *(v110 + 8);
        v133(v131, v70);
        v133(v129, v70);
      }

      v298 = 0;
      if (qword_1000A53E0 != -1)
      {
        swift_once();
      }

      v155 = sub_100084FB8();
      sub_10000B614(v155, qword_1000A5AA0);
      swift_errorRetain();
      v156 = sub_100084FA8();
      v157 = sub_100085378();

      if (os_log_type_enabled(v156, v157))
      {
        v158 = swift_slowAlloc();
        v70 = swift_slowAlloc();
        v295[0] = v70;
        *v158 = 136315138;
        swift_getErrorValue();
        v159 = sub_100085988();
        v35 = v68;
        v161 = sub_100038A4C(v159, v160, v295);

        *(v158 + 4) = v161;
        v68 = v35;
        _os_log_impl(&_mh_execute_header, v156, v157, "Cannot export attachment media file — skipping {error: %s}", v158, 0xCu);
        sub_100006304(v70);
      }

      else
      {
      }
    }

LABEL_55:
    v115 = v273;
    v73 = v292;
    goto LABEL_56;
  }

  v35 = v71;
  v73 = v72;
  if (!v68)
  {
    sub_10001C19C(v71, v72);
    goto LABEL_23;
  }

  v74 = v292[11];
  v75 = v292[12];
  v70 = swift_getObjectType();

  v76 = v272;
  sub_100084718();

  v77 = v298;
  sub_1000849A8();
  v298 = v77;
  if (!v77)
  {
    (*(v287 + 8))(v76, v288);
    sub_10001C19C(v35, v73);
    goto LABEL_55;
  }

  (*(v287 + 8))(v76, v288);
  v70 = v286;
  if (qword_1000A53E0 != -1)
  {
    goto LABEL_128;
  }

  while (1)
  {
    v78 = sub_100084FB8();
    sub_10000B614(v78, qword_1000A5AA0);
    swift_errorRetain();
    v79 = sub_100084FA8();
    v80 = sub_100085378();

    if (os_log_type_enabled(v79, v80))
    {
      v81 = swift_slowAlloc();
      v82 = swift_slowAlloc();
      v284 = v68;
      v83 = v82;
      v295[0] = v82;
      *v81 = 136315138;
      swift_getErrorValue();
      v84 = sub_100085988();
      v70 = v35;
      v35 = sub_100038A4C(v84, v85, v295);

      *(v81 + 4) = v35;
      v86 = v286;
      _os_log_impl(&_mh_execute_header, v79, v80, "Cannot export attachment fallback PDF file — skipping {error: %s}", v81, 0xCu);
      sub_100006304(v83);
      v68 = v284;

      sub_10001C19C(v70, v73);

      v87 = v86;
LABEL_45:
      v298 = 0;
LABEL_46:
      v115 = v273;
      v73 = v292;
      v134 = v285;
    }

    else
    {
      sub_10001C19C(v35, v73);

      v298 = 0;
      v115 = v273;
      v73 = v292;
      v134 = v285;
      v87 = v70;
    }

LABEL_57:
    if (v289 != 1 || (sub_10001C118(v291, v295), (swift_dynamicCast() & 1) == 0))
    {

      v68 = v290;
      goto LABEL_67;
    }

    v35 = v87;
    v284 = v68;
    v163 = v293;
    v164 = [v293 isAudio];
    v68 = v290;
    if (!v164)
    {

      v87 = v35;
      goto LABEL_67;
    }

    v165 = [v163 attachmentModel];
    objc_opt_self();
    v166 = swift_dynamicCastObjCClass();
    if (v166)
    {
      break;
    }

    v115 = v273;
LABEL_110:
    v134 = v285;
    v87 = v35;
LABEL_67:
    v182 = [v115 completedUnitCount];
    if (!__OFADD__(v182, 1))
    {
      v183 = [v115 setCompletedUnitCount:v182 + 1];
      v295[0] = v87;
      __chkstk_darwin(v183);
      *(&v265 - 4) = v73;
      *(&v265 - 3) = v68;
      *(&v265 - 2) = v115;
      v186 = v134 + 80;
      v185 = *(v134 + 80);
      v184 = *(v186 + 8);
      swift_getAssociatedTypeWitness();
      swift_getAssociatedConformanceWitness();
      sub_100084B28();
      sub_100085278();
      swift_getWitnessTable();
      sub_1000851C8();
      return;
    }

LABEL_127:
    __break(1u);
LABEL_128:
    swift_once();
  }

  v167 = v166;
  v289 = v165;
  v168 = v291[3];
  v169 = v291[4];
  sub_10000626C(v291, v168);
  v170 = (*(v169 + 8))(v168, v169);
  v295[0] = 0x7263736E6172745FLL;
  v295[1] = 0xEF7478742E747069;
  v293 = v170;
  v294 = v171;
  v293 = sub_100085198();
  v294 = v172;
  sub_100085148();
  v173 = v68;
  sub_100084718();

  v174 = [v167 audioDocument];
  if (!v174)
  {
    goto LABEL_133;
  }

  v175 = v174;
  v176 = [v174 transcriptAsPlainText];

  sub_100085098();
  v177 = v278;
  sub_1000850B8();
  v139 = sub_1000850A8();
  v179 = v178;
  v173 = v281 + 1;
  v283 = v281[1];
  v149 = (v283)(v177, v279);
  v281 = v173;
  if (v179 >> 60 == 15)
  {
LABEL_92:
    v216 = v291[3];
    v217 = v291[4];
    sub_10000626C(v291, v216);
    v218 = (*(v217 + 8))(v216, v217);
    strcpy(v295, "_summary.txt");
    BYTE5(v295[1]) = 0;
    HIWORD(v295[1]) = -5120;
    v293 = v218;
    v294 = v219;
    v293 = sub_100085198();
    v294 = v220;
    sub_100085148();
    v68 = v290;
    v173 = v290;
    sub_100084718();

    v221 = [v167 audioDocument];
    if (!v221)
    {
      goto LABEL_134;
    }

    v222 = v221;

    v223 = [v222 recordingSummaryAsPlainText];

    v173 = sub_100085098();
    v224 = v278;
    sub_1000850B8();
    v225 = sub_1000850A8();
    v227 = v226;

    (v283)(v224, v279);
    if (v227 >> 60 == 15)
    {

LABEL_95:
      v228 = v288;
      v70 = v270;
LABEL_109:
      v239 = *(v287 + 8);
      v239(v269, v228);
      v239(v70, v228);
      v115 = v273;
      v73 = v292;
      goto LABEL_110;
    }

    v229 = v227 >> 62;
    v70 = v270;
    if ((v227 >> 62) > 1)
    {
      v228 = v288;
      if (v229 != 2)
      {
        goto LABEL_108;
      }

      v232 = *(v225 + 16);
      v231 = *(v225 + 24);
      v196 = __OFSUB__(v231, v232);
      v230 = v231 - v232;
      if (!v196)
      {
LABEL_105:
        if (v230 > 0)
        {
          v233 = v292[11];
          v234 = v292[12];
          swift_getObjectType();
          v235 = v269;
          v236 = v298;
          sub_1000849A8();
          v298 = v236;
          if (v236)
          {

            sub_10001C19C(v225, v227);
            v237 = v288;
            v238 = *(v287 + 8);
            v238(v235, v288);
            v238(v270, v237);
            return;
          }

          sub_10001C19C(v225, v227);
          goto LABEL_95;
        }

LABEL_108:

        sub_10001C19C(v225, v227);
        goto LABEL_109;
      }

      __break(1u);
    }

    else
    {
      v228 = v288;
      if (!v229)
      {
        v230 = BYTE6(v227);
        goto LABEL_105;
      }
    }

    LODWORD(v230) = HIDWORD(v225) - v225;
    if (__OFSUB__(HIDWORD(v225), v225))
    {
      goto LABEL_132;
    }

    v230 = v230;
    goto LABEL_105;
  }

  v180 = v179 >> 62;
  if ((v179 >> 62) > 1)
  {
    if (v180 != 2)
    {
LABEL_91:
      sub_10001C19C(v139, v179);
      goto LABEL_92;
    }

    v195 = *(v139 + 16);
    v194 = *(v139 + 24);
    v196 = __OFSUB__(v194, v195);
    v181 = v194 - v195;
    if (!v196)
    {
LABEL_87:
      if (v181 >= 1)
      {
        v212 = v292[11];
        v213 = v292[12];
        swift_getObjectType();
        v214 = v270;
        v215 = v298;
        sub_1000849A8();
        v298 = v215;
        if (v215)
        {
          (*(v287 + 8))(v214, v288);

          sub_10001C19C(v139, v179);

          return;
        }

        v35 = v286;
      }

      goto LABEL_91;
    }

    __break(1u);
    goto LABEL_78;
  }

  if (!v180)
  {
    v181 = BYTE6(v179);
    goto LABEL_87;
  }

  LODWORD(v181) = HIDWORD(v139) - v139;
  if (!__OFSUB__(HIDWORD(v139), v139))
  {
    v181 = v181;
    goto LABEL_87;
  }

  __break(1u);
LABEL_132:
  __break(1u);
LABEL_133:
  __break(1u);
LABEL_134:
  __break(1u);
LABEL_135:
  objc_autoreleasePoolPop(v173);
  __break(1u);
}

uint64_t sub_100019A04@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v4 = *(a1 + a2 - 16);
  v5 = *(a1 + a2 - 8);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  sub_100084B28();
  result = sub_100084AA8();
  *a3 = result;
  return result;
}

void sub_100019A9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = objc_autoreleasePoolPush();
  sub_100019B24(a2, a1, a3, a4, &v9);
  objc_autoreleasePoolPop(v8);
}

uint64_t sub_100019B24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v22 = a5;
  v10 = sub_1000847C8();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v21 - v16;
  v18 = *(v11 + 16);
  if (*(a1 + 24) != 1)
  {
    v18(v15, a3, v10);
    sub_100014EE0(a2, v15, a4);
    v19 = v5;
    if (!v5)
    {
      return (*(v11 + 8))(v15, v10);
    }

    v17 = v15;
LABEL_6:
    result = (*(v11 + 8))(v17, v10);
    *v22 = v19;
    return result;
  }

  v18(&v21 - v16, a3, v10);
  sub_100019CE8(a2, v17, a4);
  v19 = v5;
  if (v5)
  {
    goto LABEL_6;
  }

  v15 = v17;
  return (*(v11 + 8))(v15, v10);
}

void sub_100019CE8(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v70 = a3;
  v80 = a2;
  v78 = a1;
  v4 = *v3;
  v79 = sub_100084668();
  v71 = *(v79 - 8);
  v5 = *(v71 + 64);
  __chkstk_darwin(v79);
  v84 = &v67 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100005740(&qword_1000A56E8, &qword_10008D350);
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v72 = &v67 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v74 = &v67 - v11;
  strcpy(v86, "identifier title hasMedia children ");
  v12 = *(v4 + 88);
  v73 = v3;
  v13 = *(v4 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v87[0] = AssociatedTypeWitness;
  v87[1] = sub_100011888(&qword_1000A5BB0, &qword_10008B7B8);
  v87[2] = &type metadata for Bool;
  swift_getAssociatedConformanceWitness();
  sub_100084B28();
  v87[3] = sub_100085278();
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v75 = *(TupleTypeMetadata - 8);
  v15 = *(v75 + 64);
  __chkstk_darwin(TupleTypeMetadata);
  v17 = &v67 - v16;
  v18 = sub_100084B28();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v22 = (&v67 - v21);
  v23 = sub_1000847C8();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  v26 = __chkstk_darwin(v23);
  v68 = &v67 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __chkstk_darwin(v26);
  v69 = &v67 - v29;
  v30 = __chkstk_darwin(v28);
  v32 = &v67 - v31;
  __chkstk_darwin(v30);
  v34 = &v67 - v33;
  v82 = *(v24 + 16);
  v83 = v24 + 16;
  v82(&v67 - v33, v80, v23);
  (*(v19 + 16))(v22, v78, v18);
  if ((*(v19 + 88))(v22, v18) != enum case for ICObjectReferences.attachment<A>(_:))
  {
    (*(v24 + 8))(v34, v23);
    (*(v19 + 8))(v22, v18);
    return;
  }

  v67 = v34;
  v85 = v24;
  v81 = v23;
  (*(v19 + 96))(v22, v18);
  v35 = *v22;
  v36 = swift_projectBox();
  v37 = TupleTypeMetadata;
  (*(v75 + 16))(v17, v36, TupleTypeMetadata);
  v38 = *&v17[*(v37 + 48) + 8];

  v39 = *&v17[*(v37 + 80)];

  (*(*(AssociatedTypeWitness - 8) + 8))(v17, AssociatedTypeWitness);

  v40 = [objc_opt_self() defaultManager];
  v41 = v77;
  v42 = sub_100085358();
  if (v41)
  {
    (*(v85 + 8))(v67, v81);

    return;
  }

  v43 = v42;

  v44 = v81;
  TupleTypeMetadata = *(v43 + 16);
  if (TupleTypeMetadata)
  {
    v45 = 0;
    v80 = v43 + ((*(v85 + 80) + 32) & ~*(v85 + 80));
    v46 = (v71 + 8);
    v75 = v85 + 8;
    v77 = xmmword_10008B5D0;
    while (v45 < *(v43 + 16))
    {
      v82(v32, v80 + *(v85 + 72) * v45, v44);
      sub_100005740(&qword_1000A5BB8, &qword_10008B7C0);
      inited = swift_initStackObject();
      *(inited + 16) = v77;
      *(inited + 32) = NSURLIsDirectoryKey;
      v48 = NSURLIsDirectoryKey;
      sub_100079F54(inited);
      swift_setDeallocating();
      sub_10001C2BC(inited + 32, type metadata accessor for URLResourceKey);
      v49 = v84;
      sub_1000846C8();

      v50 = sub_100084638();
      (*v46)(v49, v79);
      if (v50 != 2 && (v50 & 1) != 0)
      {

        v51 = v85;
        v44 = v81;
        (*(v85 + 32))(v74, v32, v81);
        v52 = 0;
        goto LABEL_13;
      }

      ++v45;
      v44 = v81;
      (*v75)(v32, v81);
      if (TupleTypeMetadata == v45)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_12:

    v52 = 1;
    v51 = v85;
LABEL_13:
    v53 = v74;
    (*(v51 + 56))(v74, v52, 1, v44);
    v54 = v53;
    v55 = v72;
    sub_100005888(v54, v72, &qword_1000A56E8, &qword_10008D350);
    v56 = (*(v51 + 48))(v55, 1, v44);
    v57 = v73;
    v58 = v78;
    v59 = v67;
    if (v56 == 1)
    {
      sub_1000058F0(v55, &qword_1000A56E8, &qword_10008D350);
      v88 = 0;
      if (*(v57 + 24) == 1 && *(v57 + 25) == 2)
      {
        v60 = objc_autoreleasePoolPush();
        sub_10001A968(v57, v58, &v88, v87);
        objc_autoreleasePoolPop(v60);
        if (v88)
        {
          sub_1000058F0(v74, &qword_1000A56E8, &qword_10008D350);
          (*(v51 + 8))(v59, v44);
          return;
        }
      }

      if (*(v57 + 25) == 1)
      {
        v64 = 0x656D686361747461;
      }

      else
      {
        v64 = 0x656D686361747441;
      }

      v65 = v68;
      sub_1000154B4(v64, 0xEB0000000073746ELL, v59, 0, 0, v68);

      sub_100014EE0(v58, v65, v70);
      v66 = v74;
      v62 = *(v51 + 8);
      v62(v65, v44);
      v63 = v66;
    }

    else
    {
      v61 = v69;
      (*(v51 + 32))(v69, v55, v44);
      sub_100014EE0(v58, v61, v70);
      v62 = *(v51 + 8);
      v62(v61, v44);
      v63 = v74;
    }

    sub_1000058F0(v63, &qword_1000A56E8, &qword_10008D350);
    v62(v59, v44);
  }
}

void sub_10001A820(char a1)
{
  if ((*(v1 + 120) & 1) != 0 || (a1 & 0x1F) == 0)
  {
    v2 = *(v1 + 16);
    sub_100084C08();
    if (swift_dynamicCastClass())
    {
      v3 = v1;
      v4 = qword_1000A53E0;
      swift_unknownObjectRetain();
      if (v4 != -1)
      {
        swift_once();
      }

      v5 = sub_100084FB8();
      sub_10000B614(v5, qword_1000A5AA0);
      v6 = sub_100084FA8();
      v7 = sub_100085368();
      if (os_log_type_enabled(v6, v7))
      {
        v8 = swift_slowAlloc();
        *v8 = 0;
        _os_log_impl(&_mh_execute_header, v6, v7, "Resetting context…", v8, 2u);
      }

      v9 = sub_100084BF8();
      [v9 reset];
      swift_unknownObjectRelease();

      v1 = v3;
    }

    *(v1 + 120) = 0;
  }
}

void sub_10001A968(void *a1, uint64_t a2, _BYTE *a3, void *a4)
{
  v7 = a1[2];
  v8 = *(*a1 + 80);
  v9 = *(*a1 + 88);
  sub_100084A68();
  if (v4)
  {
    *a4 = v4;
    return;
  }

  if (v15[3])
  {
    sub_100005740(&qword_1000A59C8, &qword_10008B770);
    if (swift_dynamicCast())
    {
      if (*(&v17 + 1))
      {
        sub_10001C024(&v16, v19);
        sub_10001C118(v19, &v16);
        sub_100008250(0, &qword_1000A56B0, ICAttachment_ptr);
        if (swift_dynamicCast())
        {
          v10 = [v15[0] isTable];

          sub_100006304(v19);
          if (v10)
          {
            *a3 = 1;
          }
        }

        else
        {
          sub_100006304(v19);
        }

        return;
      }
    }

    else
    {
      v18 = 0;
      v16 = 0u;
      v17 = 0u;
    }
  }

  else
  {
    sub_1000058F0(v15, &qword_1000A5AD0, &unk_10008B5E0);
    v16 = 0u;
    v17 = 0u;
    v18 = 0;
  }

  sub_1000058F0(&v16, &qword_1000A5BA8, &qword_10008F750);
  if (qword_1000A53E0 != -1)
  {
    swift_once();
  }

  v11 = sub_100084FB8();
  sub_10000B614(v11, qword_1000A5AA0);
  v12 = sub_100084FA8();
  v13 = sub_100085388();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&_mh_execute_header, v12, v13, "Object to be exported does not exist anymore — skipping", v14, 2u);
  }
}

void sub_10001ABCC(void *a1, uint64_t a2)
{
  v5 = sub_1000847C8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a1[3];
  v11 = a1[4];
  sub_10000626C(a1, v10);
  v12 = (*(v11 + 72))(v10, v11);
  if (v13 >> 60 != 15)
  {
    v14 = *(a2 + 88);
    v26 = *(a2 + 96);
    v15 = v12;
    v16 = v13;
    swift_getObjectType();
    sub_100084718();
    sub_1000849A8();
    if (v2)
    {
      v26 = v16;
      (*(v6 + 8))(v9, v5);
      if (qword_1000A53E0 != -1)
      {
        swift_once();
      }

      v17 = sub_100084FB8();
      sub_10000B614(v17, qword_1000A5AA0);
      swift_errorRetain();
      v18 = sub_100084FA8();
      v19 = sub_100085378();

      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        v21 = swift_slowAlloc();
        v27 = v21;
        *v20 = 136315138;
        swift_getErrorValue();
        v22 = sub_100085988();
        v24 = sub_100038A4C(v22, v23, &v27);

        *(v20 + 4) = v24;
        _os_log_impl(&_mh_execute_header, v18, v19, "Cannot export attachment preview image file — skipping {error: %s}", v20, 0xCu);
        sub_100006304(v21);

        sub_10001C19C(v15, v26);
      }

      else
      {
        sub_10001C19C(v15, v26);
      }
    }

    else
    {
      (*(v6 + 8))(v9, v5);
      sub_10001C19C(v15, v16);
    }
  }
}

void sub_10001AEFC(void *a1, uint64_t a2)
{
  v5 = sub_1000847C8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a1[3];
  v11 = a1[4];
  sub_10000626C(a1, v10);
  v12 = (*(v11 + 80))(v10, v11);
  if (v13 >> 60 != 15)
  {
    v14 = *(a2 + 88);
    v26 = *(a2 + 96);
    v15 = v12;
    v16 = v13;
    swift_getObjectType();
    sub_100084718();
    sub_1000849A8();
    if (v2)
    {
      v26 = v16;
      (*(v6 + 8))(v9, v5);
      if (qword_1000A53E0 != -1)
      {
        swift_once();
      }

      v17 = sub_100084FB8();
      sub_10000B614(v17, qword_1000A5AA0);
      swift_errorRetain();
      v18 = sub_100084FA8();
      v19 = sub_100085378();

      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        v21 = swift_slowAlloc();
        v27 = v21;
        *v20 = 136315138;
        swift_getErrorValue();
        v22 = sub_100085988();
        v24 = sub_100038A4C(v22, v23, &v27);

        *(v20 + 4) = v24;
        _os_log_impl(&_mh_execute_header, v18, v19, "Cannot export attachment fallback PDF file — skipping {error: %s}", v20, 0xCu);
        sub_100006304(v21);

        sub_10001C19C(v15, v26);
      }

      else
      {
        sub_10001C19C(v15, v26);
      }
    }

    else
    {
      (*(v6 + 8))(v9, v5);
      sub_10001C19C(v15, v16);
    }
  }
}

void sub_10001B22C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = objc_autoreleasePoolPush();
  sub_100014EE0(a1, a3, a4);
  objc_autoreleasePoolPop(v7);
}

uint64_t sub_10001B29C()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    *(result + 120) = 1;
  }

  return result;
}

void sub_10001B49C()
{
  v0 = [objc_opt_self() sharedContext];
  if (v0 && (v1 = v0, v2 = [v0 snapshotManagedObjectContext], v1, v2))
  {
    swift_getObjectType();
    if (qword_1000A5428 != -1)
    {
      swift_once();
    }

    v3 = static ICArchiveCreator.default;
    v5 = qword_1000B17A0;
    v4 = unk_1000B17A8;
    v6 = xmmword_1000B17B0;

    v7 = 0;
    v8 = v3;
    v9 = v5;
    v10 = v4;
    v11 = v6;
    IsAlexandriaDemoModeEnabled = ICInternalSettingsIsAlexandriaDemoModeEnabled();
    v13 = ICInternalSettingsIsAlexandriaDemoModeEnabled();
    v14 = ICInternalSettingsIsAlexandriaDemoModeEnabled();
    v15 = 0;
    sub_10001C494(v2, &v7);
    swift_deallocPartialClassInstance();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_10001B668@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v28 = a3;
  v29 = a2;
  v35 = sub_100005740(&qword_1000A5BD0, &unk_10008B7C8);
  v4 = *(*(v35 - 8) + 64);
  __chkstk_darwin(v35);
  v6 = &v28 - v5;
  v7 = sub_100005740(&qword_1000A59F0, &qword_10008B510);
  v30 = *(v7 - 8);
  v8 = *(v30 + 64);
  __chkstk_darwin(v7);
  v34 = &v28 - v9;
  if (a1 >> 62)
  {
    goto LABEL_21;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_100085718())
  {
    v11 = 0;
    v37 = a1 & 0xFFFFFFFFFFFFFF8;
    v38 = a1 & 0xC000000000000001;
    v32 = (v30 + 32);
    v33 = (v30 + 48);
    v39 = _swiftEmptyArrayStorage;
    v31 = (v30 + 56);
    while (1)
    {
      if (v38)
      {
        v12 = sub_100085648();
      }

      else
      {
        if (v11 >= *(v37 + 16))
        {
          goto LABEL_20;
        }

        v12 = *(a1 + 8 * v11 + 32);
      }

      v13 = v12;
      v14 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      v15 = v7;
      v16 = [v12 managedObjectContext];
      if (v16)
      {
        v17 = v16;
        v18 = a1;
        __chkstk_darwin(v16);
        v19 = v36;
        *(&v28 - 2) = v13;
        *(&v28 - 1) = v19;
        v20 = v40;
        sub_100085488();
        v40 = v20;

        v7 = v15;
        if ((*v33)(v6, 1, v15) != 1)
        {
          v21 = *v32;
          (*v32)(v34, v6, v15);
          v22 = v39;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v22 = sub_10000F014(0, v22[2] + 1, 1, v22);
          }

          v24 = v22[2];
          v23 = v22[3];
          v39 = v22;
          if (v24 >= v23 >> 1)
          {
            v39 = sub_10000F014(v23 > 1, v24 + 1, 1, v39);
          }

          v25 = v39;
          v39[2] = v24 + 1;
          v7 = v15;
          v21(&v25[((*(v30 + 80) + 32) & ~*(v30 + 80)) + *(v30 + 72) * v24], v34, v15);
          a1 = v18;
          goto LABEL_6;
        }
      }

      else
      {

        (*v31)(v6, 1, 1, v7);
      }

      sub_1000058F0(v6, &qword_1000A5BD0, &unk_10008B7C8);
LABEL_6:
      ++v11;
      if (v14 == i)
      {
        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    ;
  }

  v39 = _swiftEmptyArrayStorage;
LABEL_23:
  v26 = *(v36 + OBJC_IVAR___ICArchiveExporter_exporter);
  sub_100069B38(v39, v29, v28);
}

uint64_t sub_10001BD64(uint64_t a1, _OWORD *a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 128) = 0u;
  *(v4 + 144) = 0u;
  v5 = a2[1];
  *(v4 + 24) = *a2;
  *(v4 + 104) = 0;
  *(v4 + 112) = 32;
  *(v4 + 120) = 0;
  *(v4 + 16) = a1;
  *(v4 + 40) = v5;
  *(v4 + 56) = a2[2];
  *(v4 + 69) = *(a2 + 45);
  *(v4 + 88) = a3;
  *(v4 + 96) = a4;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  sub_100011C60();
  return v4;
}

uint64_t sub_10001BDD4(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t sub_10001BEE4(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

__n128 sub_10001BF08(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 45) = *(a2 + 45);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_10001BF24(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFFD && *(a1 + 61))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 16);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v5 = -1;
  }

  else
  {
    v5 = v4;
  }

  v6 = v5 - 1;
  if (v4 < 1)
  {
    v7 = -1;
  }

  else
  {
    v7 = v6;
  }

  return (v7 + 1);
}

uint64_t sub_10001BF8C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 60) = 0;
    *(result + 56) = 0;
    *result = a2 - 2147483646;
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 61) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 61) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_10001C024(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_10001C03C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  swift_getAssociatedTypeWitness();

  return swift_getAssociatedConformanceWitness();
}

__n128 sub_10001C0C0(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_10001C118(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_10001C19C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_10000650C(a1, a2);
  }

  return a1;
}

uint64_t sub_10001C1C8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_100014D24() & 1;
}

uint64_t sub_10001C1E8(uint64_t a1, void *a2)
{
  v5 = *(v2 + 32);
  v6 = *(v2 + 40);
  result = v5();
  if (v3)
  {
    *a2 = v3;
  }

  return result;
}

uint64_t sub_10001C220(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t sub_10001C274(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10001C2BC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10001C31C(uint64_t a1)
{
  v2 = v1[3];
  v3 = v1[4];
  v4 = v1[2];
  return sub_100014EE0(a1, v2, v3);
}

uint64_t sub_10001C348()
{
  v1 = *(v0 + 32);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10001C380()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  return sub_100084A68();
}

uint64_t sub_10001C3A8()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10001C3E0()
{
  v1 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10001C418()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  return sub_10001B29C();
}

uint64_t sub_10001C424(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10001C43C()
{
  v1 = *(v0 + 16);
  v2 = *(*(*(v0 + 24) + OBJC_IVAR___ICArchiveExporter_exporter) + 84);
  v3 = v1;
  return sub_100084B08();
}

id sub_10001C494(void *a1, _OWORD *a2)
{
  v4 = sub_100084C08();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  v7 = a1;
  v8 = sub_100084BE8();
  v9 = [objc_opt_self() defaultManager];
  sub_100005740(&qword_1000A5BD8, &qword_10008B7D8);
  v10 = swift_allocObject();
  *(v10 + 128) = 0u;
  *(v10 + 144) = 0u;
  v11 = a2[1];
  *(v10 + 24) = *a2;
  *(v10 + 104) = 0;
  *(v10 + 112) = 32;
  *(v10 + 120) = 0;
  *(v10 + 16) = v8;
  *(v10 + 40) = v11;
  *(v10 + 56) = a2[2];
  *(v10 + 69) = *(a2 + 45);
  *(v10 + 88) = v9;
  *(v10 + 96) = &protocol witness table for NSFileManager;

  v12 = v9;
  sub_1000699CC();

  v13 = type metadata accessor for ICArchiveExporterObjCBridge();
  v14 = objc_allocWithZone(v13);
  *&v14[OBJC_IVAR___ICArchiveExporter_exporter] = v10;
  v17.receiver = v14;
  v17.super_class = v13;

  v15 = objc_msgSendSuper2(&v17, "init");

  return v15;
}

void sub_10001C5F0()
{
  v0 = [objc_opt_self() sharedContext];
  if (v0 && (v1 = v0, v2 = [v0 snapshotManagedObjectContext], v1, v2))
  {
    if (qword_1000A5428 != -1)
    {
      swift_once();
    }

    v3 = static ICArchiveCreator.default;
    v5 = qword_1000B17A0;
    v4 = unk_1000B17A8;
    v6 = xmmword_1000B17B0;

    v7 = 0;
    v8 = v3;
    v9 = v5;
    v10 = v4;
    v11 = v6;
    IsAlexandriaDemoModeEnabled = ICInternalSettingsIsAlexandriaDemoModeEnabled();
    v13 = ICInternalSettingsIsAlexandriaDemoModeEnabled();
    v14 = ICInternalSettingsIsAlexandriaDemoModeEnabled();
    v15 = 256;
    sub_10001C494(v2, &v7);
  }

  else
  {
    __break(1u);
  }
}

void sub_10001C720()
{
  v0 = [objc_opt_self() sharedContext];
  if (v0 && (v1 = v0, v2 = [v0 snapshotManagedObjectContext], v1, v2))
  {
    if (qword_1000A5428 != -1)
    {
      swift_once();
    }

    v3 = static ICArchiveCreator.default;
    v5 = qword_1000B17A0;
    v4 = unk_1000B17A8;
    v6 = xmmword_1000B17B0;

    IsAlexandriaDemoModeEnabled = ICInternalSettingsIsAlexandriaDemoModeEnabled();
    ICInternalSettingsIsAlexandriaDemoModeEnabled();
    v8 = 513;
    v9 = v3;
    v10 = v5;
    v11 = v4;
    v12 = v6;
    v13 = IsAlexandriaDemoModeEnabled;
    v14 = 1;
    v15 = ICInternalSettingsIsAlexandriaDemoModeEnabled();
    v16 = 0;
    sub_10001C494(v2, &v8);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_10001C848@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  return sub_100013B28(a1, a2);
}

_OWORD *sub_10001C864(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t static ICArchive.archiveTitle<A>(for:)(uint64_t a1)
{
  v2 = sub_100084B28();
  v3 = sub_1000854E8();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = v21 - v6;
  if (sub_100085268() != 1)
  {
    goto LABEL_9;
  }

  v21[1] = a1;
  sub_100085278();
  swift_getWitnessTable();
  sub_100085308();
  v8 = *(v2 - 8);
  if ((*(v8 + 48))(v7, 1, v2) == 1)
  {
    (*(v4 + 8))(v7, v3);
LABEL_9:
    v17 = [objc_opt_self() mainBundle];
    v18 = sub_100085068();
    v19 = [v17 localizedStringForKey:v18 value:0 table:0];

    v13 = sub_100085098();
    return v13;
  }

  sub_100084AE8();
  v10 = v9;
  (*(v8 + 8))(v7, v2);
  if (!v10)
  {
    goto LABEL_9;
  }

  v11 = sub_100085068();

  v12 = [v11 ic_sanitizedFilenameString];

  v13 = sub_100085098();
  v15 = v14;

  v16 = HIBYTE(v15) & 0xF;
  if ((v15 & 0x2000000000000000) == 0)
  {
    v16 = v13 & 0xFFFFFFFFFFFFLL;
  }

  if (!v16)
  {

    goto LABEL_9;
  }

  return v13;
}

uint64_t static ICArchive.markdownArchiveFilename(forTitle:)()
{
  v0 = sub_100085068();
  v1 = [v0 ic_sanitizedFilenameString];

  v2 = sub_100085098();
  return v2;
}

uint64_t static ICArchive.archiveFilename(forTitle:)()
{
  v0 = sub_100085068();
  v1 = [v0 ic_sanitizedFilenameString];

  v2 = sub_100085098();
  v4._countAndFlagsBits = 46;
  v4._object = 0xE100000000000000;
  sub_100085158(v4);
  v5._countAndFlagsBits = 0x6372617365746F6ELL;
  v5._object = 0xEC00000065766968;
  sub_100085158(v5);
  return v2;
}

unint64_t sub_10001CD08(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v2 = *(a2 + 16);
    if ((v2 - result) >= 1 && v2 < result)
    {
      __break(1u);
    }

    return a2;
  }

  return result;
}

uint64_t sub_10001CD4C()
{
  v0 = sub_1000844E8();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100084528();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  v8 = sub_100084518();
  (*(v1 + 104))(v4, enum case for JSONEncoder.DateEncodingStrategy.iso8601(_:), v0);
  result = sub_1000844F8();
  qword_1000B1780 = v8;
  return result;
}

uint64_t sub_10001CE40()
{
  v0 = sub_100084498();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000844D8();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  v8 = sub_1000844C8();
  (*(v1 + 104))(v4, enum case for JSONDecoder.DateDecodingStrategy.iso8601(_:), v0);
  result = sub_1000844A8();
  qword_1000B1788 = v8;
  return result;
}

uint64_t sub_10001CF34(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_10001CFE0(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_100085948() & 1;
  }
}

uint64_t sub_10001D038(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a3 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(a1);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v9);
  v10 = (*(a4 + 32))(a3, a4);
  v12 = v10;
  v13 = v11;
  if (v11)
  {
    v27 = v10;
    v28 = v11;
    __chkstk_darwin(v10);
    *(&v26 - 2) = &v27;
    v14 = sub_10001CF34(sub_10001D2E4, (&v26 - 4), &off_10009DD00);
    swift_arrayDestroy();
    if (v14)
    {
      v27 = v12;
      v28 = v13;
      v31 = 46;
      v32 = 0xE100000000000000;
      sub_10001D33C();
      v15 = sub_1000854F8();

      v17 = (v15 + 16);
      v16 = *(v15 + 16);
      v27 = v15;
      v28 = v15 + 32;
      if (v16 <= 1)
      {
        v18 = 1;
      }

      else
      {
        v18 = 2 * v16 - 1;
      }

      v29 = 0;
      v30 = v18;

      sub_100005740(&qword_1000A5BE8, &unk_10008B7F0);
      sub_10001D390();
      v19 = sub_100085038();
      v21 = v20;
      swift_unknownObjectRelease();
      if (*v17)
      {
        v22 = &v17[2 * *v17];
        v23 = *v22;
        v24 = v22[1];

        v27 = v19;
        v28 = v21;
        v33._countAndFlagsBits = 3027488;
        v33._object = 0xE300000000000000;
        sub_100085158(v33);
        v34._countAndFlagsBits = v23;
        v34._object = v24;
        sub_100085158(v34);
      }

      else
      {

        v27 = v19;
        v28 = v21;
        v35._countAndFlagsBits = 12832;
        v35._object = 0xE200000000000000;
        sub_100085158(v35);
      }

      v12 = v27;
    }
  }

  (*(v6 + 8))(v9, a3);
  return v12;
}

uint64_t sub_10001D2E4(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_100085948() & 1;
  }
}

unint64_t sub_10001D33C()
{
  result = qword_1000A5BE0;
  if (!qword_1000A5BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A5BE0);
  }

  return result;
}

unint64_t sub_10001D390()
{
  result = qword_1000A5BF0;
  if (!qword_1000A5BF0)
  {
    sub_100011888(&qword_1000A5BE8, &unk_10008B7F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A5BF0);
  }

  return result;
}

uint64_t sub_10001D3F4()
{
  v0 = sub_100084FB8();
  sub_10000B64C(v0, qword_1000A5BF8);
  sub_10000B614(v0, qword_1000A5BF8);
  return sub_100084F98();
}

uint64_t sub_10001D440(uint64_t a1, void *a2, CGColor *a3, uint64_t a4, uint64_t a5, void *a6, int a7)
{
  v12 = _s16AttributedStringV9AttributeVMa(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12 - 8);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a6;

  sub_10001D5C8(v18, a2, a3, a6, a7, v16);
  v19 = *(a5 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a5 + 16) = v19;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v19 = sub_10000F220(0, v19[2] + 1, 1, v19);
    *(a5 + 16) = v19;
  }

  v22 = v19[2];
  v21 = v19[3];
  if (v22 >= v21 >> 1)
  {
    v19 = sub_10000F220(v21 > 1, v22 + 1, 1, v19);
    *(a5 + 16) = v19;
  }

  v19[2] = v22 + 1;
  return sub_100032CA4(v16, v19 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * v22, _s16AttributedStringV9AttributeVMa);
}

void sub_10001D5C8(uint64_t a1@<X0>, void *a2@<X1>, CGColor *a3@<X2>, void *a4@<X3>, int a5@<W4>, char *a6@<X8>)
{
  v242 = a5;
  v265 = a4;
  v266 = a2;
  v263 = a3;
  v267 = a1;
  v7 = sub_100005740(&qword_1000A5C10, &unk_10008B820);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v241 = (&v235 - v9);
  v10 = sub_100005740(&qword_1000A56E8, &qword_10008D350);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v270 = &v235 - v12;
  v13 = sub_1000847C8();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = __chkstk_darwin(v13);
  v236 = &v235 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v255 = &v235 - v18;
  v19 = sub_100005740(&qword_1000A5C18, &unk_10008B830);
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19 - 8);
  v247 = &v235 - v21;
  v22 = sub_100005740(&qword_1000A5490, &qword_10008CD80);
  v23 = *(*(v22 - 8) + 64);
  __chkstk_darwin(v22 - 8);
  v254.i64[0] = &v235 - v24;
  v25 = sub_100005740(&qword_1000A5C20, &unk_10008B840);
  v26 = *(*(v25 - 8) + 64);
  __chkstk_darwin(v25 - 8);
  v28 = &v235 - v27;
  v29 = sub_100084918();
  v30 = *(v29 - 8);
  v31 = *(v30 + 64);
  __chkstk_darwin(v29);
  v249 = &v235 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = _s16AttributedStringV9AttributeVMa(0);
  v34 = v33[5];
  v260 = v30;
  v35 = *(v30 + 56);
  v248 = v34;
  v262 = v35;
  v35(&a6[v34], 1, 1, v29);
  v36 = v33[6];
  v37 = sub_1000848B8();
  v38 = *(v37 - 8);
  v39 = *(v38 + 56);
  v252 = v37;
  v253.i64[0] = v36;
  v250 = (v38 + 56);
  v251 = v39;
  (v39)(&a6[v36], 1, 1);
  v40 = &a6[v33[7]];
  *v40 = xmmword_10008B800;
  *(v40 + 1) = 0u;
  *(v40 + 2) = 0u;
  *(v40 + 3) = 0u;
  *(v40 + 8) = 0;
  v41 = v33[8];
  v42 = _s16AttributedStringV14ParagraphStyleVMa(0);
  v43 = *(v42 - 8);
  v44 = *(v43 + 56);
  v245 = v42;
  v246 = v41;
  v243 = v43 + 56;
  v244 = v44;
  (v44)(&a6[v41], 1, 1);
  v258 = v33[9];
  a6[v258] = 5;
  v45 = v33[10];
  v261 = v14;
  v46 = *(v14 + 56);
  v257 = v45;
  v264 = v13;
  v268 = v46;
  v269 = v14 + 56;
  v46(&a6[v45], 1, 1, v13);
  v259 = v33[11];
  a6[v259] = 5;
  v47 = &a6[v33[12]];
  *v47 = 0;
  v47[1] = 0;
  v256 = v47;
  v48 = v33[13];
  v49 = _s16AttributedStringV16InlineAttachmentVMa(0);
  v50 = *(v49 - 8);
  v51 = *(v50 + 56);
  v239 = v49;
  v240 = v48;
  v237 = v50 + 56;
  v238 = v51;
  (v51)(&a6[v48], 1, 1);
  v52 = v266;
  v53 = v267;
  v266 = a6;
  v54 = v263;
  *a6 = v52;
  *(a6 + 1) = v54;
  if (!*(v53 + 16))
  {
    goto LABEL_6;
  }

  v55 = ICTTAttributeNameReplicaID;
  v56 = sub_1000392C8(v55);
  if ((v57 & 1) == 0)
  {

LABEL_6:
    v262(v28, 1, 1, v29);
    goto LABEL_7;
  }

  sub_1000056E4(*(v53 + 56) + 32 * v56, &v280);

  v58 = swift_dynamicCast();
  v59 = v262;
  v262(v28, v58 ^ 1u, 1, v29);
  v60 = v260;
  if ((*(v260 + 48))(v28, 1, v29) != 1)
  {
    v263 = *(v60 + 32);
    v61 = v249;
    (v263)(v249, v28, v29);
    v62 = v266;
    v63 = v248;
    sub_1000058F0(v266 + v248, &qword_1000A5C20, &unk_10008B840);
    (v263)(&v62[v63], v61, v29);
    v59(&v62[v63], 0, 1, v29);
    goto LABEL_8;
  }

LABEL_7:
  sub_1000058F0(v28, &qword_1000A5C20, &unk_10008B840);
LABEL_8:
  v64 = v270;
  if (!*(v53 + 16))
  {
    goto LABEL_12;
  }

  v65 = ICTTAttributeNameTimestamp;
  v66 = sub_1000392C8(v65);
  if (v67)
  {
    sub_1000056E4(*(v53 + 56) + 32 * v66, &v280);

    if (swift_dynamicCast())
    {
      v68 = v254.i64[0];
      sub_100084868();
      v251(v68, 0, 1, v252);
      sub_100005820(v68, v266 + v253.i64[0], &qword_1000A5490, &qword_10008CD80);
    }

LABEL_12:
    if (!*(v53 + 16))
    {
      goto LABEL_29;
    }

    goto LABEL_15;
  }

  if (!*(v53 + 16))
  {
    goto LABEL_29;
  }

LABEL_15:
  v69 = ICTTAttributeNameFont;
  v70 = sub_1000392C8(v69);
  if ((v71 & 1) == 0)
  {

    if (!*(v53 + 16))
    {
      goto LABEL_37;
    }

    goto LABEL_30;
  }

  sub_1000056E4(*(v53 + 56) + 32 * v70, v285);

  sub_100008250(0, &qword_1000A5C48, ICTTFont_ptr);
  if (swift_dynamicCast())
  {
    v72 = v271;
    v73 = *(v40 + 1);
    v280 = *v40;
    v281 = v73;
    v74 = *(v40 + 2);
    v75 = *(v40 + 3);
    v282 = v74;
    v283 = v75;
    v284 = *(v40 + 8);
    v76 = *(&v280 + 1);
    if (*(&v280 + 1) == 1)
    {
      v262 = 0;
      v263 = 0;
      v76 = 0;
      v260 = 0;
      v254.i64[0] = 0;
      v77 = 0;
      v78 = 0;
      v74.i64[0] = 0x2000200020002;
      v253 = v74;
      v79 = 1;
      v80 = 1;
    }

    else
    {
      v262 = v281;
      v263 = v280;
      v74.i32[0] = *(&v281 + 9);
      v253 = vmovl_u8(*v74.i8);
      v260 = v282.i64[0];
      v77 = *(&v283 + 1);
      v254.i64[0] = v283;
      v78 = v284;
      v80 = v282.i8[8];
      v79 = BYTE8(v281);
    }

    v81 = v79 & 1;
    v274 = v79 & 1;
    v82 = v80 & 1;
    v273 = v80 & 1;
    v83 = *(v40 + 3);
    v277 = *(v40 + 2);
    v278 = v83;
    v279 = *(v40 + 8);
    v84 = *(v40 + 1);
    v275 = *v40;
    v276 = v84;
    sub_100005888(&v280, v272, &qword_1000A5C40, &qword_10008B858);
    sub_1000058F0(&v275, &qword_1000A5C40, &qword_10008B858);
    v85 = v262;
    *v40 = v263;
    *(v40 + 1) = v76;
    *(v40 + 2) = v85;
    v40[24] = v81;
    *(v40 + 25) = vuzp1_s8(*v253.i8, *v253.i8).u32[0];
    *(v40 + 4) = v260;
    v40[40] = v82;
    *(v40 + 6) = v254.i64[0];
    *(v40 + 7) = v77;
    *(v40 + 8) = v78;
    v86 = v72;
    v87 = [(CGColor *)v72 fontName];
    if (v87)
    {
      v88 = v87;
      v89 = sub_100085098();
      v91 = v90;
    }

    else
    {
      v89 = 0;
      v91 = 0;
    }

    v53 = v267;
    v64 = v270;
    v92 = *(v40 + 1);

    *v40 = v89;
    *(v40 + 1) = v91;
    if (v91 != 1)
    {
      [(CGColor *)v86 pointSize];
      *(v40 + 2) = v93;
      v40[24] = 0;
      if (*(v40 + 1) != 1)
      {
        v40[25] = [(CGColor *)v86 fontHints]& 1;
        if (*(v40 + 1) != 1)
        {
          v234 = [(CGColor *)v86 fontHints];

          v40[26] = (v234 & 2) != 0;
          if (!*(v53 + 16))
          {
            goto LABEL_37;
          }

          goto LABEL_30;
        }
      }
    }
  }

LABEL_29:
  if (!*(v53 + 16))
  {
    goto LABEL_37;
  }

LABEL_30:
  v94 = ICTTAttributeNameFontHints;
  v95 = sub_1000392C8(v94);
  if (v96)
  {
    sub_1000056E4(*(v53 + 56) + 32 * v95, v285);

    if (swift_dynamicCast())
    {
      v97 = v271;
      v98 = *(v40 + 1);
      v280 = *v40;
      v281 = v98;
      v99 = *(v40 + 3);
      v282 = *(v40 + 2);
      v283 = v99;
      v284 = *(v40 + 8);
      v100 = *(&v280 + 1);
      if (*(&v280 + 1) == 1)
      {
        v262 = 0;
        v263 = 0;
        v100 = 0;
        v260 = 0;
        v254.i64[0] = 0;
        v251 = 0;
        v252 = 0;
        v253.i32[0] = 2;
        v101 = 1;
        v102 = 2;
        v103 = 1;
      }

      else
      {
        v262 = v281;
        v263 = v280;
        v253.i32[0] = BYTE11(v281);
        v102 = BYTE12(v281);
        v260 = v282.i64[0];
        v254.i64[0] = v283;
        v251 = v284;
        v252 = *(&v283 + 1);
        v103 = v282.i8[8];
        v101 = BYTE8(v281);
      }

      v104 = v101 & 1;
      v274 = v101 & 1;
      v105 = v103 & 1;
      v273 = v103 & 1;
      v106 = *(v40 + 3);
      v277 = *(v40 + 2);
      v278 = v106;
      v279 = *(v40 + 8);
      v107 = *(v40 + 1);
      v275 = *v40;
      v276 = v107;
      sub_100005888(&v280, v272, &qword_1000A5C40, &qword_10008B858);
      sub_1000058F0(&v275, &qword_1000A5C40, &qword_10008B858);
      v108 = v262;
      *v40 = v263;
      *(v40 + 1) = v100;
      *(v40 + 2) = v108;
      v40[24] = v104;
      v40[27] = v253.i8[0];
      v40[28] = v102;
      *(v40 + 4) = v260;
      v40[40] = v105;
      v109 = v251;
      v110 = v252;
      *(v40 + 6) = v254.i64[0];
      *(v40 + 7) = v110;
      *(v40 + 8) = v109;
      v40[25] = v97 & 1;
      v40[26] = (v97 & 2) != 0;
      v64 = v270;
    }
  }

  else
  {
  }

LABEL_37:
  if (*(v53 + 16))
  {
    v111 = ICTTAttributeNameUnderline;
    v112 = sub_1000392C8(v111);
    if (v113)
    {
      sub_1000056E4(*(v53 + 56) + 32 * v112, v285);

      if (swift_dynamicCast())
      {
        LODWORD(v263) = v271;
        v114 = *(v40 + 1);
        v280 = *v40;
        v281 = v114;
        v115 = *(v40 + 3);
        v282 = *(v40 + 2);
        v283 = v115;
        v284 = *(v40 + 8);
        v116 = *(&v280 + 1);
        if (*(&v280 + 1) == 1)
        {
          v262 = 0;
          v116 = 0;
          v260 = 0;
          v254.i64[0] = 0;
          v251 = 0;
          v252 = 0;
          v250 = 0;
          v253.i32[0] = 2;
          v117 = 1;
          v118 = 2;
          v119 = 2;
          v120 = 1;
        }

        else
        {
          v262 = v280;
          v260 = v281;
          v253.i32[0] = BYTE9(v281);
          v118 = BYTE10(v281);
          v119 = BYTE12(v281);
          v254.i64[0] = v282.i64[0];
          v251 = *(&v283 + 1);
          v252 = v283;
          v250 = v284;
          v120 = v282.i8[8];
          v117 = BYTE8(v281);
        }

        v131 = v117 & 1;
        v274 = v117 & 1;
        v132 = v120 & 1;
        v273 = v120 & 1;
        v133 = *(v40 + 3);
        v277 = *(v40 + 2);
        v278 = v133;
        v279 = *(v40 + 8);
        v134 = *(v40 + 1);
        v275 = *v40;
        v276 = v134;
        sub_100005888(&v280, v272, &qword_1000A5C40, &qword_10008B858);
        sub_1000058F0(&v275, &qword_1000A5C40, &qword_10008B858);
        *v40 = v262;
        *(v40 + 1) = v116;
        *(v40 + 2) = v260;
        v40[24] = v131;
        v40[25] = v253.i8[0];
        v40[26] = v118;
        v40[28] = v119;
        *(v40 + 4) = v254.i64[0];
        v40[40] = v132;
        v135 = v251;
        *(v40 + 6) = v252;
        *(v40 + 7) = v135;
        *(v40 + 8) = v250;
        v40[27] = v263;
        v64 = v270;
        if (!*(v53 + 16))
        {
          goto LABEL_54;
        }

        goto LABEL_44;
      }
    }

    else
    {
    }
  }

  if (!*(v53 + 16))
  {
    goto LABEL_54;
  }

LABEL_44:
  v121 = ICTTAttributeNameStrikethrough;
  v122 = sub_1000392C8(v121);
  if (v123)
  {
    sub_1000056E4(*(v53 + 56) + 32 * v122, v285);

    if (swift_dynamicCast())
    {
      LODWORD(v263) = v271;
      v124 = *(v40 + 1);
      v280 = *v40;
      v281 = v124;
      v125 = *(v40 + 3);
      v282 = *(v40 + 2);
      v283 = v125;
      v284 = *(v40 + 8);
      v126 = *(&v280 + 1);
      if (*(&v280 + 1) == 1)
      {
        v262 = 0;
        v126 = 0;
        v260 = 0;
        v254.i64[0] = 0;
        v251 = 0;
        v252 = 0;
        v250 = 0;
        v253.i32[0] = 2;
        v127 = 1;
        v128 = 2;
        v129 = 2;
        v130 = 1;
      }

      else
      {
        v262 = v280;
        v260 = v281;
        v253.i32[0] = BYTE9(v281);
        v128 = BYTE10(v281);
        v129 = BYTE11(v281);
        v254.i64[0] = v282.i64[0];
        v251 = *(&v283 + 1);
        v252 = v283;
        v250 = v284;
        v130 = v282.i8[8];
        v127 = BYTE8(v281);
      }

      v136 = v127 & 1;
      v274 = v127 & 1;
      v137 = v130 & 1;
      v273 = v130 & 1;
      v138 = *(v40 + 3);
      v277 = *(v40 + 2);
      v278 = v138;
      v279 = *(v40 + 8);
      v139 = *(v40 + 1);
      v275 = *v40;
      v276 = v139;
      sub_100005888(&v280, v272, &qword_1000A5C40, &qword_10008B858);
      sub_1000058F0(&v275, &qword_1000A5C40, &qword_10008B858);
      *v40 = v262;
      *(v40 + 1) = v126;
      *(v40 + 2) = v260;
      v40[24] = v136;
      v40[25] = v253.i8[0];
      v40[26] = v128;
      v40[27] = v129;
      *(v40 + 4) = v254.i64[0];
      v40[40] = v137;
      v140 = v251;
      *(v40 + 6) = v252;
      *(v40 + 7) = v140;
      *(v40 + 8) = v250;
      v40[28] = v263;
      v64 = v270;
    }
  }

  else
  {
  }

LABEL_54:
  if (!*(v53 + 16))
  {
    goto LABEL_60;
  }

  v141 = ICTTAttributeNameSuperscript;
  v142 = sub_1000392C8(v141);
  if ((v143 & 1) == 0)
  {

LABEL_60:
    if (!*(v53 + 16))
    {
      goto LABEL_83;
    }

    goto LABEL_61;
  }

  sub_1000056E4(*(v53 + 56) + 32 * v142, v285);

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_60;
  }

  v263 = v271;
  v144 = *(v40 + 1);
  v280 = *v40;
  v281 = v144;
  v145 = *(v40 + 2);
  v146 = *(v40 + 3);
  v282 = v145;
  v283 = v146;
  v284 = *(v40 + 8);
  v147 = *(&v280 + 1);
  if (*(&v280 + 1) == 1)
  {
    v262 = 0;
    v147 = 0;
    v260 = 0;
    v148 = 0;
    v149 = 0;
    v150 = 0;
    v145.i64[0] = 0x2000200020002;
    v254 = v145;
    v151 = 1;
  }

  else
  {
    v262 = v280;
    v260 = v281;
    v145.i32[0] = *(&v281 + 9);
    v254 = vmovl_u8(*v145.i8);
    v149 = *(&v283 + 1);
    v148 = v283;
    v150 = v284;
    v151 = BYTE8(v281);
  }

  v186 = v151 & 1;
  v274 = v151 & 1;
  v187 = *(v40 + 3);
  v277 = *(v40 + 2);
  v278 = v187;
  v279 = *(v40 + 8);
  v188 = *(v40 + 1);
  v275 = *v40;
  v276 = v188;
  sub_100005888(&v280, v272, &qword_1000A5C40, &qword_10008B858);
  sub_1000058F0(&v275, &qword_1000A5C40, &qword_10008B858);
  *v40 = v262;
  *(v40 + 1) = v147;
  *(v40 + 2) = v260;
  v40[24] = v186;
  *(v40 + 25) = vuzp1_s8(*v254.i8, *v254.i8).u32[0];
  *(v40 + 6) = v148;
  *(v40 + 7) = v149;
  *(v40 + 8) = v150;
  *(v40 + 4) = v263;
  v40[40] = 0;
  v64 = v270;
  if (!*(v53 + 16))
  {
LABEL_83:
    v175 = v264;
    v174 = v265;
    if (!*(v53 + 16))
    {
LABEL_89:
      v268(v64, 1, 1, v175);
LABEL_90:
      sub_1000058F0(v64, &qword_1000A56E8, &qword_10008D350);
      if (!*(v53 + 16))
      {
        goto LABEL_87;
      }

      goto LABEL_91;
    }

    goto LABEL_84;
  }

LABEL_61:
  v152 = ICTTAttributeNameForegroundColor;
  v153 = sub_1000392C8(v152);
  if (v154)
  {
    sub_1000056E4(*(v53 + 56) + 32 * v153, v285);

    v155 = *(v40 + 1);
    v280 = *v40;
    v281 = v155;
    v156 = *(v40 + 2);
    v157 = *(v40 + 3);
    v282 = v156;
    v283 = v157;
    v284 = *(v40 + 8);
    v158 = *(&v280 + 1);
    if (*(&v280 + 1) == 1)
    {
      v262 = 0;
      v263 = 0;
      v158 = 0;
      v260 = 0;
      v254.i64[0] = 0;
      v159 = 0;
      v160 = 0;
      v156.i64[0] = 0x2000200020002;
      v253 = v156;
      v161 = 1;
      v162 = 1;
    }

    else
    {
      v262 = v281;
      v263 = v280;
      v156.i32[0] = *(&v281 + 9);
      v253 = vmovl_u8(*v156.i8);
      v260 = v282.i64[0];
      v159 = *(&v283 + 1);
      v254.i64[0] = v283;
      v160 = v284;
      v162 = v282.i8[8];
      v161 = BYTE8(v281);
    }

    v163 = v161 & 1;
    v274 = v161 & 1;
    v164 = v162 & 1;
    v273 = v162 & 1;
    v165 = *(v40 + 3);
    v277 = *(v40 + 2);
    v278 = v165;
    v279 = *(v40 + 8);
    v166 = *(v40 + 1);
    v275 = *v40;
    v276 = v166;
    sub_100005888(&v280, v272, &qword_1000A5C40, &qword_10008B858);
    sub_1000058F0(&v275, &qword_1000A5C40, &qword_10008B858);
    v167 = v262;
    *v40 = v263;
    *(v40 + 1) = v158;
    *(v40 + 2) = v167;
    v40[24] = v163;
    *(v40 + 25) = vuzp1_s8(*v253.i8, *v253.i8).u32[0];
    *(v40 + 4) = v260;
    v40[40] = v164;
    *(v40 + 6) = v254.i64[0];
    *(v40 + 7) = v159;
    *(v40 + 8) = v160;
    sub_1000056E4(v285, v272);
    type metadata accessor for CGColor(0);
    swift_dynamicCast();
    v168 = sub_100030B30(v271);
    v170 = v169;
    v172 = v171;
    sub_100006304(v285);
    v173 = *(v40 + 8);
    sub_100031130(*(v40 + 6), *(v40 + 7));
    *(v40 + 6) = v168;
    *(v40 + 7) = v170;
    *(v40 + 8) = v172;
    v64 = v270;
  }

  else
  {
  }

  v175 = v264;
  v174 = v265;
  if (*(v53 + 16))
  {
    v176 = ICTTAttributeNameParagraphStyle;
    v177 = sub_1000392C8(v176);
    if (v178)
    {
      sub_1000056E4(*(v53 + 56) + 32 * v177, &v280);

      sub_100008250(0, &qword_1000A5C38, ICTTParagraphStyle_ptr);
      if (swift_dynamicCast())
      {
        v179 = v275;
        v180 = v247;
        sub_1000228C8(v179, v247);
        v244(v180, 0, 1, v245);
        v181 = v266;
        sub_100005820(v180, v266 + v246, &qword_1000A5C18, &unk_10008B830);
        v182 = [v179 writingDirection];

        v183 = v182 + 1;
        if (v182 == 3)
        {
          v184 = 4;
        }

        else
        {
          v184 = 5;
        }

        if (v183 >= 4)
        {
          v185 = v184;
        }

        else
        {
          v185 = 0x2030100u >> (8 * v183);
        }

        *(v181 + v259) = v185;
        if (!*(v53 + 16))
        {
          goto LABEL_89;
        }

        goto LABEL_84;
      }
    }

    else
    {
    }
  }

  if (!*(v53 + 16))
  {
    goto LABEL_89;
  }

LABEL_84:
  v189 = ICTTNSLinkAttributeName;
  v190 = sub_1000392C8(v189);
  if ((v191 & 1) == 0)
  {

    goto LABEL_89;
  }

  sub_1000056E4(*(v53 + 56) + 32 * v190, &v280);

  v192 = swift_dynamicCast();
  v268(v64, v192 ^ 1u, 1, v175);
  if ((*(v261 + 48))(v64, 1, v175) == 1)
  {
    goto LABEL_90;
  }

  v193 = *(v261 + 32);
  v194 = v255;
  v193(v255, v64, v175);
  v195 = v266;
  v196 = v257;
  sub_1000058F0(v266 + v257, &qword_1000A56E8, &qword_10008D350);
  v193(&v195[v196], v194, v175);
  v268(&v195[v196], 0, 1, v175);
  if (!*(v53 + 16))
  {
LABEL_87:
    v280 = 0u;
    v281 = 0u;
    goto LABEL_105;
  }

LABEL_91:
  v197 = ICTTNSWritingDirectionAttributeName;
  v198 = sub_1000392C8(v197);
  if (v199)
  {
    sub_1000056E4(*(v53 + 56) + 32 * v198, &v280);
  }

  else
  {
    v280 = 0u;
    v281 = 0u;
  }

  if (*(&v281 + 1))
  {
    if (swift_dynamicCast())
    {
      v200 = v275 + 1;
      if (v275 == 3)
      {
        v201 = 4;
      }

      else
      {
        v201 = 5;
      }

      if (v200 < 4)
      {
        v201 = 0x2030100u >> (8 * v200);
      }

      *(v266 + v259) = v201;
    }

    if (!*(v53 + 16))
    {
      goto LABEL_106;
    }

    goto LABEL_103;
  }

LABEL_105:
  sub_1000058F0(&v280, &qword_1000A5AD0, &unk_10008B5E0);
  if (!*(v53 + 16))
  {
LABEL_106:
    v280 = 0u;
    v281 = 0u;
    goto LABEL_114;
  }

LABEL_103:
  v202 = ICTTAttributeNameEmphasis;
  v203 = sub_1000392C8(v202);
  if (v204)
  {
    sub_1000056E4(*(v53 + 56) + 32 * v203, &v280);
  }

  else
  {
    v280 = 0u;
    v281 = 0u;
  }

  if (*(&v281 + 1))
  {
    if (swift_dynamicCast())
    {
      v205 = ICEmphasisColorTypeForTag();
      v206 = sub_100031030(v205);
      *(v266 + v258) = v206;
    }

    if (!*(v53 + 16))
    {
      goto LABEL_115;
    }

    goto LABEL_112;
  }

LABEL_114:
  sub_1000058F0(&v280, &qword_1000A5AD0, &unk_10008B5E0);
  if (!*(v53 + 16))
  {
LABEL_115:
    v280 = 0u;
    v281 = 0u;
    goto LABEL_118;
  }

LABEL_112:
  v207 = ICTTNSAttachmentAttributeName;
  v208 = sub_1000392C8(v207);
  if (v209)
  {
    sub_1000056E4(*(v53 + 56) + 32 * v208, &v280);
  }

  else
  {
    v280 = 0u;
    v281 = 0u;
  }

LABEL_118:

  if (!*(&v281 + 1))
  {

    sub_1000058F0(&v280, &qword_1000A5AD0, &unk_10008B5E0);
    return;
  }

  sub_100008250(0, &qword_1000A5C28, ICTTAttachment_ptr);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_139;
  }

  v210 = v275;
  if ([objc_opt_self() isInlineAttachment:v275])
  {
    if (v174)
    {
      v211 = v174;
      v212 = [v210 inlineAttachmentInContext:v211];
      if (v212)
      {
        v213 = v212;
        v214 = v241;
        sub_100023F00(v213, v241);
        v238(v214, 0, 1, v239);
        sub_100005820(v214, v266 + v240, &qword_1000A5C10, &unk_10008B820);
        if ((v242 & 1) != 0 && (v215 = [v213 tokenContentIdentifier]) != 0 && (v216 = v215, v217 = NotesAppURLForNoteIdentifierOrTokenContentIdentifier(), v216, v217))
        {
          v218 = v236;
          sub_100084768();

          v219 = v266;
          v220 = v257;
          sub_1000058F0(v266 + v257, &qword_1000A56E8, &qword_10008D350);
          (*(v261 + 32))(&v219[v220], v218, v175);
          v268(&v219[v220], 0, 1, v175);
        }

        else
        {
        }

        return;
      }
    }

    if (qword_1000A5400 != -1)
    {
      swift_once();
    }

    v227 = sub_100084FB8();
    sub_10000B614(v227, qword_1000A5BF8);
    v228 = v210;
    v229 = sub_100084FA8();
    v230 = sub_100085368();

    if (os_log_type_enabled(v229, v230))
    {
      v231 = swift_slowAlloc();
      v232 = swift_slowAlloc();
      *v231 = 138412290;
      *(v231 + 4) = v228;
      *v232 = v228;
      v233 = v228;
      _os_log_impl(&_mh_execute_header, v229, v230, "Cannot resolve inline attachment — skipping {attachment: %@}", v231, 0xCu);
      sub_1000058F0(v232, &qword_1000A5C30, &qword_10008B850);
    }

    else
    {
    }

LABEL_139:

    return;
  }

  v221 = [v210 attachmentIdentifier];
  if (v221)
  {
    v222 = v221;
    v223 = sub_100085098();
    v225 = v224;
  }

  else
  {

    v223 = 0;
    v225 = 0;
  }

  v226 = v256;
  *v256 = v223;
  v226[1] = v225;
}

uint64_t sub_10001EF40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a1 + 32);
  v8 = *(a1 + 40);
  type metadata accessor for Key(0);
  sub_100031408(&qword_1000A5660, type metadata accessor for Key);
  v10 = sub_100085008();
  v9(v10, a3, a4, a5);
}

id sub_10001F010(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v30 = a4;
  v28 = a2;
  v29 = a3;
  v27 = a1;
  v9 = _s16AttributedStringV9AttributeVMa(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9 - 8);
  v13 = (&v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = objc_allocWithZone(NSMutableAttributedString);
  v15 = sub_100085068();
  v16 = [v14 initWithString:v15];

  v17 = *(a7 + 16);
  if (v17)
  {
    v18 = a7 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    v19 = *(v10 + 72);
    while (1)
    {
      sub_100032EB8(v18, v13, _s16AttributedStringV9AttributeVMa);
      sub_10001F27C(v27, v28, v29, v30);
      if (v7)
      {
        break;
      }

      type metadata accessor for Key(0);
      sub_100031408(&qword_1000A5660, type metadata accessor for Key);
      isa = sub_100084FF8().super.isa;

      v22 = *v13;
      v21 = v13[1];
      v32.location = [v16 ic_range];
      v32.length = v23;
      v31.location = v22;
      v31.length = v21;
      v24 = NSIntersectionRange(v31, v32);
      [v16 addAttributes:isa range:{v24.location, v24.length}];

      sub_100032F20(v13, _s16AttributedStringV9AttributeVMa);
      v18 += v19;
      if (!--v17)
      {
        return v16;
      }
    }

    sub_100032F20(v13, _s16AttributedStringV9AttributeVMa);
  }

  return v16;
}

unint64_t sub_10001F27C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v125 = a4;
  v113 = a3;
  v112 = a2;
  v121 = a1;
  v5 = sub_100005740(&qword_1000A5C10, &unk_10008B820);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v124 = &v109 - v7;
  v123 = _s16AttributedStringV16InlineAttachmentVMa(0);
  v122 = *(v123 - 8);
  v8 = *(v122 + 64);
  __chkstk_darwin(v123);
  v114 = &v109 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100005740(&qword_1000A56E8, &qword_10008D350);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v118 = &v109 - v12;
  v120 = sub_1000847C8();
  v119 = *(v120 - 8);
  v13 = *(v119 + 64);
  __chkstk_darwin(v120);
  v111 = &v109 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100005740(&qword_1000A5C18, &unk_10008B830);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v117 = &v109 - v17;
  v18 = sub_100005740(&qword_1000A5490, &qword_10008CD80);
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  v21 = &v109 - v20;
  v116 = sub_1000848B8();
  v115 = *(v116 - 8);
  v22 = *(v115 + 64);
  __chkstk_darwin(v116);
  v110 = &v109 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_100005740(&qword_1000A5C20, &unk_10008B840);
  v25 = *(*(v24 - 8) + 64);
  __chkstk_darwin(v24 - 8);
  v27 = &v109 - v26;
  v28 = sub_100084918();
  v29 = *(v28 - 8);
  v30 = *(v29 + 64);
  __chkstk_darwin(v28);
  v32 = &v109 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = _s16AttributedStringV9AttributeVMa(0);
  v34 = v4;
  v35 = (v4 + v33[7]);
  v36 = v35[1];
  if (v36 == 1)
  {
    v37 = sub_10003E63C(_swiftEmptyArrayStorage);
  }

  else
  {
    v130 = *v35;
    v131 = v36;
    v38 = *(v35 + 2);
    v132 = *(v35 + 1);
    v133 = v38;
    v134 = *(v35 + 3);
    v135 = v35[8];
    v37 = sub_100020D70();
  }

  v39 = v37;
  sub_100005888(v4 + v33[5], v27, &qword_1000A5C20, &unk_10008B840);
  if ((*(v29 + 48))(v27, 1, v28) == 1)
  {
    sub_1000058F0(v27, &qword_1000A5C20, &unk_10008B840);
  }

  else
  {
    (*(v29 + 32))(v32, v27, v28);
    v40 = ICTTAttributeNameReplicaID;
    v129 = v28;
    v41 = sub_100032F80(&v128);
    (*(v29 + 16))(v41, v32, v28);
    sub_10001C864(&v128, v127);
    v42 = v40;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v136 = v39;
    sub_10003B0C4(v127, v42, isUniquelyReferenced_nonNull_native);

    (*(v29 + 8))(v32, v28);
    v39 = v136;
  }

  v44 = v126;
  v45 = v34;
  sub_100005888(v34 + v33[6], v21, &qword_1000A5490, &qword_10008CD80);
  v46 = v115;
  v47 = v116;
  if ((*(v115 + 48))(v21, 1, v116) == 1)
  {
    sub_1000058F0(v21, &qword_1000A5490, &qword_10008CD80);
  }

  else
  {
    v48 = *(v46 + 32);
    v126 = v45;
    v49 = v44;
    v50 = v110;
    v48(v110, v21, v47);
    v51 = ICTTAttributeNameTimestamp;
    sub_100084878();
    v53 = v52 + *(v125 + 8);
    v129 = &type metadata for Double;
    *&v128 = v53;
    sub_10001C864(&v128, v127);
    v54 = swift_isUniquelyReferenced_nonNull_native();
    v136 = v39;
    sub_10003B0C4(v127, v51, v54);

    v55 = v50;
    v44 = v49;
    v45 = v126;
    (*(v46 + 8))(v55, v47);
    v39 = v136;
  }

  v56 = v117;
  v57 = v33;
  sub_100005888(v45 + v33[8], v117, &qword_1000A5C18, &unk_10008B830);
  v58 = _s16AttributedStringV14ParagraphStyleVMa(0);
  v59 = (*(*(v58 - 8) + 48))(v56, 1, v58);
  v60 = v120;
  if (v59 == 1)
  {
    sub_1000058F0(v56, &qword_1000A5C18, &unk_10008B830);
    v61 = *(v45 + v33[11]);
    v62 = v119;
    if (*(v45 + v57[11]) > 2u)
    {
      if (v61 == 3)
      {
        v63 = 1;
      }

      else
      {
        if (v61 != 4)
        {
          goto LABEL_34;
        }

        v63 = 3;
      }
    }

    else if (v61)
    {
      if (v61 == 1)
      {
        v63 = 0;
      }

      else
      {
        v63 = 2;
      }
    }

    else
    {
      v63 = -1;
    }

    v67 = ICTTNSWritingDirectionAttributeName;
    v129 = &type metadata for Int;
    *&v128 = v63;
    sub_10001C864(&v128, v127);
    v68 = v67;
    v69 = swift_isUniquelyReferenced_nonNull_native();
    v136 = v39;
    sub_10003B0C4(v127, v68, v69);

    v39 = v136;
  }

  else
  {
    v64 = sub_100022C98();
    sub_100032F20(v56, _s16AttributedStringV14ParagraphStyleVMa);
    v65 = *(v45 + v33[11]);
    v62 = v119;
    if (*(v45 + v57[11]) > 2u)
    {
      if (v65 == 3)
      {
        v66 = 1;
      }

      else if (v65 == 4)
      {
        v66 = 3;
      }

      else
      {
        v66 = [v64 writingDirection];
      }
    }

    else if (v65)
    {
      if (v65 == 1)
      {
        v66 = 0;
      }

      else
      {
        v66 = 2;
      }
    }

    else
    {
      v66 = -1;
    }

    [v64 setWritingDirection:v66];
    v70 = ICTTAttributeNameParagraphStyle;
    [v64 copy];
    sub_100085528();
    swift_unknownObjectRelease();
    v71 = swift_isUniquelyReferenced_nonNull_native();
    *&v127[0] = v39;
    sub_10003B0C4(&v128, v70, v71);

    v39 = *&v127[0];
  }

LABEL_34:
  v72 = v118;
  sub_100005888(v45 + v57[10], v118, &qword_1000A56E8, &qword_10008D350);
  if ((*(v62 + 48))(v72, 1, v60) == 1)
  {
    sub_1000058F0(v72, &qword_1000A56E8, &qword_10008D350);
  }

  else
  {
    v73 = v111;
    (*(v62 + 32))(v111, v72, v60);
    v74 = ICTTNSLinkAttributeName;
    sub_1000846F8(v75);
    v77 = v76;
    v129 = sub_100008250(0, &qword_1000A5C98, NSURL_ptr);
    *&v128 = v77;
    sub_10001C864(&v128, v127);
    v78 = swift_isUniquelyReferenced_nonNull_native();
    v136 = v39;
    sub_10003B0C4(v127, v74, v78);

    (*(v62 + 8))(v73, v60);
    v39 = v136;
  }

  v79 = *(v45 + v57[9]);
  if (v79 != 5)
  {
    v80 = ICTTAttributeNameEmphasis;
    v81 = qword_10008C9C0[v79];
    v129 = &type metadata for Int;
    *&v128 = v81;
    sub_10001C864(&v128, v127);
    v82 = v80;
    v83 = swift_isUniquelyReferenced_nonNull_native();
    v136 = v39;
    sub_10003B0C4(v127, v82, v83);

    v39 = v136;
  }

  v84 = v121;
  v85 = (v45 + v57[12]);
  v86 = v85[1];
  if (v86)
  {
    if (*(v121 + 16))
    {
      v87 = sub_100039138(*v85, v86);
      if (v88)
      {
        v89 = *(*(v84 + 56) + 8 * v87);
        v90 = ICTTNSAttachmentAttributeName;
        v129 = sub_100008250(0, &qword_1000A5C28, ICTTAttachment_ptr);
        *&v128 = v89;
        sub_10001C864(&v128, v127);
        v91 = v89;
        v92 = v90;
        v93 = swift_isUniquelyReferenced_nonNull_native();
        v136 = v39;
        sub_10003B0C4(v127, v92, v93);

        v39 = v136;
      }
    }
  }

  v94 = v124;
  sub_100005888(v45 + v57[13], v124, &qword_1000A5C10, &unk_10008B820);
  if ((*(v122 + 48))(v94, 1, v123) == 1)
  {
    sub_1000058F0(v94, &qword_1000A5C10, &unk_10008B820);
  }

  else
  {
    v95 = v114;
    sub_100032CA4(v94, v114, _s16AttributedStringV16InlineAttachmentVMa);
    v96 = sub_100024174(v112, v113, v125);
    if (v44)
    {
      sub_100032F20(v95, _s16AttributedStringV16InlineAttachmentVMa);
    }

    else
    {
      v97 = v96;
      v98 = [v96 identifier];
      if (v98)
      {
        v99 = v98;
        sub_100085098();
      }

      v100 = [v97 typeUTI];
      if (v100)
      {
        v101 = v100;
        sub_100085098();
      }

      v102 = sub_100008250(0, &qword_1000A5C28, ICTTAttachment_ptr);
      v103 = sub_100085398();
      v104 = ICTTNSAttachmentAttributeName;
      v129 = v102;
      *&v128 = v103;
      sub_10001C864(&v128, v127);
      v105 = v104;
      v106 = v103;
      v107 = swift_isUniquelyReferenced_nonNull_native();
      v136 = v39;
      sub_10003B0C4(v127, v105, v107);

      sub_100032F20(v114, _s16AttributedStringV16InlineAttachmentVMa);
      return v136;
    }
  }

  return v39;
}

uint64_t sub_10001FFC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  sub_100005740(&qword_1000A5C90, &qword_10008B898);
  result = sub_100085728();
  v9 = 0;
  v41 = a1;
  v42 = result;
  v12 = *(a1 + 64);
  v11 = a1 + 64;
  v10 = v12;
  v13 = 1 << *(v11 - 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & v10;
  v16 = (v13 + 63) >> 6;
  v40 = result + 64;
  if (v15)
  {
    while (1)
    {
      v17 = __clz(__rbit64(v15));
      v43 = (v15 - 1) & v15;
LABEL_10:
      v20 = v17 | (v9 << 6);
      v21 = (*(v41 + 48) + 16 * v20);
      v44 = *v21;
      v22 = *(*(v41 + 56) + 8 * v20);
      v45 = v21[1];

      v23 = v22;
      v24 = [v23 identifier];
      if (v24)
      {
        v25 = v24;
        sub_100085098();
      }

      v26 = [v23 typeUTI];
      if (v26)
      {
        v27 = v26;
        sub_100085098();
      }

      sub_100008250(0, &qword_1000A5C28, ICTTAttachment_ptr);
      v28 = sub_100085398();

      *(v40 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      result = v42;
      v29 = (v42[6] + 16 * v20);
      *v29 = v44;
      v29[1] = v45;
      *(v42[7] + 8 * v20) = v28;
      v30 = v42[2];
      v31 = __OFADD__(v30, 1);
      v32 = v30 + 1;
      if (v31)
      {
        break;
      }

      v42[2] = v32;
      v15 = v43;
      if (!v43)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v9 >= v16)
      {
        v33 = sub_10001F010(result, a2, a3, a4, a5, a6, a7);

        return v33;
      }

      v19 = *(v11 + 8 * v9);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v43 = (v19 - 1) & v19;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_100020234(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[0] = a4;
  v6 = sub_100005740(&qword_1000A61E8, &qword_10008C0F0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = v13 - v9;
  v11 = a1[4];
  sub_10000626C(a1, a1[3]);
  sub_100034C48();
  sub_100085A78();
  v15 = 0;
  sub_100085898();
  if (!v4)
  {
    v13[1] = v13[0];
    v14 = 1;
    sub_100005740(&qword_1000A61D0, &qword_10008C0E8);
    sub_100034C9C(&qword_1000A61F0, &qword_1000A61F8);
    sub_1000858D8();
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_100020430()
{
  if (*v0)
  {
    result = 0x7475626972747461;
  }

  else
  {
    result = 1954047348;
  }

  *v0;
  return result;
}

uint64_t sub_100020468@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1954047348 && a2 == 0xE400000000000000;
  if (v5 || (sub_100085948() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x7475626972747461 && a2 == 0xEA00000000007365)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_100085948();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_100020558(uint64_t a1)
{
  v2 = sub_100034C48();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100020594(uint64_t a1)
{
  v2 = sub_100034C48();

  return CodingKey.debugDescription.getter(a1, v2);
}

CGColorRef sub_10002061C(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v6 = sub_100085068();
  v7 = CGColorSpaceCreateWithName(v6);

  if (!v7)
  {
    if (qword_1000A5400 != -1)
    {
      swift_once();
    }

    v15 = sub_100084FB8();
    sub_10000B614(v15, qword_1000A5BF8);

    v16 = sub_100084FA8();
    v17 = sub_100085378();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v29 = v19;
      *v18 = 136315138;
      *(v18 + 4) = sub_100038A4C(a1, a2, &v29);
      _os_log_impl(&_mh_execute_header, v16, v17, "Cannot create color space with name — returning nil {name: %s}", v18, 0xCu);
      sub_100006304(v19);
    }

    return 0;
  }

  v8 = *(a3 + 16);
  v9 = _swiftEmptyArrayStorage;
  if (v8)
  {
    v29 = _swiftEmptyArrayStorage;
    sub_10003BE4C(0, v8, 0);
    v9 = _swiftEmptyArrayStorage;
    v10 = (a3 + 32);
    v11 = _swiftEmptyArrayStorage[2];
    do
    {
      v12 = *v10;
      v29 = v9;
      v13 = v9[3];
      if (v11 >= v13 >> 1)
      {
        sub_10003BE4C((v13 > 1), v11 + 1, 1);
        v9 = v29;
      }

      v9[2] = v11 + 1;
      v9[v11 + 4] = v12;
      ++v10;
      ++v11;
      --v8;
    }

    while (v8);
  }

  v14 = CGColorCreate(v7, v9 + 4);

  if (!v14)
  {
    if (qword_1000A5400 != -1)
    {
      swift_once();
    }

    v20 = sub_100084FB8();
    sub_10000B614(v20, qword_1000A5BF8);

    v21 = sub_100084FA8();
    v22 = sub_100085378();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v29 = v24;
      *v23 = 136315138;
      v25 = sub_100085218();
      v27 = sub_100038A4C(v25, v26, &v29);

      *(v23 + 4) = v27;
      _os_log_impl(&_mh_execute_header, v21, v22, "Cannot create color with components — returning nil {components: %s}", v23, 0xCu);
      sub_100006304(v24);
    }

    return 0;
  }

  return v14;
}

uint64_t sub_100020994(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[0] = a4;
  v6 = sub_100005740(&qword_1000A62C8, &qword_10008C8A8);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = v13 - v9;
  v11 = a1[4];
  sub_10000626C(a1, a1[3]);
  sub_100035954();
  sub_100085A78();
  v15 = 0;
  sub_100085898();
  if (!v4)
  {
    v13[1] = v13[0];
    v14 = 1;
    sub_100005740(&qword_1000A62B8, &qword_10008C8A0);
    sub_1000359A8(&qword_1000A62D0);
    sub_1000858D8();
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_100020B5C()
{
  if (*v0)
  {
    result = 0x6E656E6F706D6F63;
  }

  else
  {
    result = 0x6563617073;
  }

  *v0;
  return result;
}

uint64_t sub_100020B98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6563617073 && a2 == 0xE500000000000000;
  if (v6 || (sub_100085948() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6E656E6F706D6F63 && a2 == 0xEA00000000007374)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_100085948();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_100020C78(uint64_t a1)
{
  v2 = sub_100035954();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100020CB4(uint64_t a1)
{
  v2 = sub_100035954();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100020D1C@<X0>(uint64_t (*a1)(void)@<X3>, uint64_t *a2@<X8>)
{
  result = a1();
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
  }

  return result;
}

void *sub_100020D70()
{
  v1 = v0;
  v48 = &_swiftEmptyDictionarySingleton;
  v2 = *(v0 + 26);
  if (v2)
  {
    v3 = *(v0 + 25) & 1 | 2;
  }

  else
  {
    v3 = *(v0 + 25) & 1;
  }

  if (v2 == 2)
  {
    v4 = *(v0 + 25) & 1;
  }

  else
  {
    v4 = v3;
  }

  if (v0[1])
  {
    v5 = *v0;
    if (v0[3])
    {
      v6 = objc_allocWithZone(ICTTFont);
      v7 = sub_100085068();
      v8 = [v6 initWithName:v7 size:v4 hints:0.0];
    }

    else
    {
      v12 = *(v0 + 2);
      v13 = objc_allocWithZone(ICTTFont);
      v7 = sub_100085068();
      v8 = [v13 initWithName:v7 size:v4 hints:v12];
    }

    v14 = v8;

    v15 = ICTTAttributeNameFont;
    if (!v14)
    {
      goto LABEL_20;
    }

LABEL_18:
    v47 = sub_100008250(0, &qword_1000A5C48, ICTTFont_ptr);
    *&v46 = v14;
    sub_10001C864(&v46, v45);
    v17 = v15;
    v10 = v14;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_10003B0C4(v45, v17, isUniquelyReferenced_nonNull_native);

    goto LABEL_19;
  }

  if ((v0[3] & 1) == 0)
  {
    v16 = [objc_allocWithZone(ICTTFont) initWithName:0 size:v4 hints:*(v0 + 2)];
    v15 = ICTTAttributeNameFont;
    if (!v16)
    {
LABEL_20:
      v19 = v15;
      sub_10002B8C4(v19, v45);

      sub_1000058F0(v45, &qword_1000A5AD0, &unk_10008B5E0);
      goto LABEL_21;
    }

    v14 = v16;
    goto LABEL_18;
  }

  if (v4)
  {
    v9 = ICTTAttributeNameFontHints;
    v47 = &type metadata for UInt32;
    LODWORD(v46) = v4;
    sub_10001C864(&v46, v45);
    v10 = v9;
    v11 = swift_isUniquelyReferenced_nonNull_native();
    sub_10003B0C4(v45, v10, v11);
LABEL_19:

    v48 = &_swiftEmptyDictionarySingleton;
  }

LABEL_21:
  v20 = *(v0 + 27);
  if (v20 != 2 && (v20 & 1) != 0)
  {
    v21 = ICTTAttributeNameUnderline;
    v47 = &type metadata for Bool;
    LOBYTE(v46) = 1;
    sub_10001C864(&v46, v45);
    v22 = v21;
    v23 = v48;
    v24 = swift_isUniquelyReferenced_nonNull_native();
    sub_10003B0C4(v45, v22, v24);

    v48 = v23;
  }

  v25 = *(v1 + 28);
  if (v25 != 2 && (v25 & 1) != 0)
  {
    v26 = ICTTAttributeNameStrikethrough;
    v47 = &type metadata for Bool;
    LOBYTE(v46) = 1;
    sub_10001C864(&v46, v45);
    v27 = v26;
    v28 = v48;
    v29 = swift_isUniquelyReferenced_nonNull_native();
    sub_10003B0C4(v45, v27, v29);

    v48 = v28;
  }

  if ((v1[5] & 1) == 0)
  {
    v30 = v1[4];
    v31 = ICTTAttributeNameSuperscript;
    v47 = &type metadata for Int;
    *&v46 = v30;
    sub_10001C864(&v46, v45);
    v32 = v31;
    v33 = v48;
    v34 = swift_isUniquelyReferenced_nonNull_native();
    sub_10003B0C4(v45, v32, v34);

    v48 = v33;
  }

  v35 = v1[7];
  if (v35)
  {
    v36 = sub_10002061C(v1[6], v35, v1[8]);
    if (v36)
    {
      v37 = v36;
      v38 = ICTTAttributeNameForegroundColor;
      type metadata accessor for CGColor(0);
      v47 = v39;
      *&v46 = v37;
      sub_10001C864(&v46, v45);
      v40 = v38;
      v41 = v37;
      v42 = v48;
      v43 = swift_isUniquelyReferenced_nonNull_native();
      sub_10003B0C4(v45, v40, v43);

      return v42;
    }
  }

  return v48;
}

uint64_t sub_1000211A4(void *a1)
{
  v3 = v1;
  v5 = sub_100005740(&qword_1000A6090, &qword_10008C098);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v22[-v8];
  v10 = a1[4];
  sub_10000626C(a1, a1[3]);
  sub_100034454();
  sub_100085A78();
  v11 = *v3;
  v12 = v3[1];
  LOBYTE(v23) = 0;
  sub_100085848();
  if (!v2)
  {
    v13 = v3[2];
    v14 = *(v3 + 24);
    LOBYTE(v23) = 1;
    sub_100085868();
    v15 = *(v3 + 25);
    LOBYTE(v23) = 2;
    sub_100085858();
    v16 = *(v3 + 26);
    LOBYTE(v23) = 3;
    sub_100085858();
    v17 = *(v3 + 27);
    LOBYTE(v23) = 4;
    sub_100085858();
    v18 = *(v3 + 28);
    LOBYTE(v23) = 5;
    sub_100085858();
    v19 = v3[4];
    v20 = *(v3 + 40);
    LOBYTE(v23) = 6;
    sub_100085878();
    v23 = *(v3 + 3);
    v24 = v3[8];
    v22[15] = 7;
    sub_100034564();
    sub_100085888();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_100021434()
{
  v1 = *v0;
  v2 = 1701667182;
  v3 = 0x7263737265707573;
  if (v1 != 6)
  {
    v3 = 0x726F6C6F63;
  }

  v4 = 0x6C7265646E557369;
  if (v1 != 4)
  {
    v4 = 0x656B697274537369;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x646C6F427369;
  if (v1 != 2)
  {
    v5 = 0x63696C6174497369;
  }

  if (*v0)
  {
    v2 = 0x7A6953746E696F70;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_100021540@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1000318B4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100021568(uint64_t a1)
{
  v2 = sub_100034454();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000215A4(uint64_t a1)
{
  v2 = sub_100034454();

  return CodingKey.debugDescription.getter(a1, v2);
}

__n128 sub_1000215E0@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_100031B58(a1, v6);
  if (!v2)
  {
    v5 = v6[3];
    *(a2 + 32) = v6[2];
    *(a2 + 48) = v5;
    *(a2 + 64) = v7;
    result = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = result;
  }

  return result;
}

Swift::Int sub_100021658()
{
  v1 = *v0;
  sub_100085A08();
  sub_100085118();

  return sub_100085A38();
}

uint64_t sub_10002171C()
{
  *v0;
  *v0;
  *v0;
  sub_100085118();
}

Swift::Int sub_1000217CC()
{
  v1 = *v0;
  sub_100085A08();
  sub_100085118();

  return sub_100085A38();
}

uint64_t sub_10002188C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000321AC(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

void sub_1000218BC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0x454C50525550;
  v5 = 0xE600000000000000;
  v6 = 0x45474E41524FLL;
  v7 = 1414416717;
  if (v2 != 3)
  {
    v7 = 1163217986;
  }

  if (v2 != 2)
  {
    v6 = v7;
    v5 = 0xE400000000000000;
  }

  if (*v1)
  {
    v4 = 1263421776;
    v3 = 0xE400000000000000;
  }

  if (*v1 <= 1u)
  {
    v8 = v4;
  }

  else
  {
    v8 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v8;
  a1[1] = v3;
}

uint64_t sub_100021A00(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0x4C5F444548534144;
    v6 = 0x44455245424D554ELL;
    if (a1 != 8)
    {
      v6 = 0x53494C4B43454843;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0x434150534F4E4F4DLL;
    if (a1 != 5)
    {
      v7 = 0x4C5F54454C4C5542;
    }

    if (a1 <= 6u)
    {
      return v7;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0x454C544954;
    v2 = 0x4944414548425553;
    v3 = 1497648962;
    if (a1 != 3)
    {
      v3 = 0x4E4F4954504143;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 0x474E4944414548;
    }

    if (a1 <= 1u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_100021B5C(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = sub_100021A00(*a1);
  v5 = v4;
  if (v3 == sub_100021A00(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_100085948();
  }

  return v8 & 1;
}

Swift::Int sub_100021BE4()
{
  v1 = *v0;
  sub_100085A08();
  sub_100021A00(v1);
  sub_100085118();

  return sub_100085A38();
}

uint64_t sub_100021C48()
{
  sub_100021A00(*v0);
  sub_100085118();
}

Swift::Int sub_100021C9C()
{
  v1 = *v0;
  sub_100085A08();
  sub_100021A00(v1);
  sub_100085118();

  return sub_100085A38();
}

uint64_t sub_100021CFC@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000321F8(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

uint64_t sub_100021D2C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100021A00(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

Swift::Int sub_100021E14()
{
  v1 = *v0;
  sub_100085A08();
  sub_100085118();

  return sub_100085A38();
}

uint64_t sub_100021EEC()
{
  *v0;
  *v0;
  *v0;
  sub_100085118();
}

Swift::Int sub_100021FB0()
{
  v1 = *v0;
  sub_100085A08();
  sub_100085118();

  return sub_100085A38();
}

uint64_t sub_100022084@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100032244(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

void sub_1000220B4(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 1413891404;
  v5 = 0xE500000000000000;
  v6 = 0x5448474952;
  v7 = 0xE900000000000044;
  v8 = 0x454946495453554ALL;
  if (v2 != 3)
  {
    v8 = 0x4C41525554414ELL;
    v7 = 0xE700000000000000;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x5245544E4543;
    v3 = 0xE600000000000000;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t sub_1000221F8(void *a1)
{
  v3 = v1;
  v5 = sub_100005740(&qword_1000A6068, &qword_10008C088);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v13[-v8];
  v10 = a1[4];
  sub_10000626C(a1, a1[3]);
  sub_100034400();
  sub_100085A78();
  v13[15] = 0;
  sub_100084918();
  sub_100031408(&qword_1000A6070, &type metadata accessor for UUID);
  sub_1000858D8();
  if (!v2)
  {
    v11 = *(v3 + *(_s16AttributedStringV13ChecklistItemVMa(0) + 20));
    v13[14] = 1;
    sub_1000858A8();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1000223B0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v4 = sub_100084918();
  v27 = *(v4 - 8);
  v28 = v4;
  v5 = *(v27 + 64);
  __chkstk_darwin(v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_100005740(&qword_1000A6050, &qword_10008C080);
  v26 = *(v29 - 8);
  v8 = *(v26 + 64);
  __chkstk_darwin(v29);
  v10 = &v24 - v9;
  v11 = _s16AttributedStringV13ChecklistItemVMa(0);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[4];
  sub_10000626C(a1, a1[3]);
  sub_100034400();
  sub_100085A68();
  if (v2)
  {
    return sub_100006304(a1);
  }

  v24 = v14;
  v16 = v26;
  v17 = v27;
  v31 = 0;
  sub_100031408(&qword_1000A6060, &type metadata accessor for UUID);
  v18 = v28;
  sub_100085828();
  (*(v17 + 32))(v24, v7, v18);
  v30 = 1;
  v19 = sub_1000857F8();
  (*(v16 + 8))(v10, v29);
  v20 = v19 & 1;
  v22 = v24;
  v21 = v25;
  v24[*(v11 + 20)] = v20;
  sub_100032EB8(v22, v21, _s16AttributedStringV13ChecklistItemVMa);
  sub_100006304(a1);
  return sub_100032F20(v22, _s16AttributedStringV13ChecklistItemVMa);
}

uint64_t sub_100022704()
{
  if (*v0)
  {
    result = 0x656E6F447369;
  }

  else
  {
    result = 0x696669746E656469;
  }

  *v0;
  return result;
}

uint64_t sub_100022740@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v6 || (sub_100085948() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x656E6F447369 && a2 == 0xE600000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_100085948();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_100022820(uint64_t a1)
{
  v2 = sub_100034400();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10002285C(uint64_t a1)
{
  v2 = sub_100034400();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000228C8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100005740(&qword_1000A5C20, &unk_10008B840);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v36 - v6;
  v8 = sub_100005740(&qword_1000A5C50, &qword_10008B860);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v36 - v10;
  v12 = _s16AttributedStringV14ParagraphStyleVMa(0);
  v13 = v12[8];
  v14 = _s16AttributedStringV13ChecklistItemVMa(0);
  v15 = *(v14 - 8);
  v37 = *(v15 + 56);
  v38 = v13;
  v36 = v15 + 56;
  v37(a2 + v13, 1, 1, v14);
  v16 = v12[10];
  v17 = sub_100084918();
  v18 = *(v17 - 8);
  v40 = *(v18 + 56);
  v41 = v16;
  v39 = v18 + 56;
  v40(a2 + v16, 1, 1, v17);
  v19 = sub_100030DD0([a1 style]);
  if (v19 == 10)
  {
    v20 = 3;
  }

  else
  {
    v20 = v19;
  }

  *a2 = v20;
  v21 = sub_100030F48([a1 alignment]);
  if (v21 == 5)
  {
    v22 = 4;
  }

  else
  {
    v22 = v21;
  }

  *(a2 + 1) = v22;
  *(a2 + 8) = [a1 indent];
  if (sub_100021A00(v20) == 0x44455245424D554ELL && v23 == 0xED00005453494C5FLL)
  {

LABEL_11:
    v25 = [a1 startingItemNumber];
    v26 = 0;
    goto LABEL_13;
  }

  v24 = sub_100085948();

  if (v24)
  {
    goto LABEL_11;
  }

  v25 = 0;
  v26 = 1;
LABEL_13:
  *(a2 + 16) = v25;
  *(a2 + 24) = v26;
  v27 = [a1 todo];
  if (v27)
  {
    v28 = v27;
    v29 = [v28 uuid];
    sub_1000848F8();

    LOBYTE(v29) = [v28 done];
    v30 = 0;
    v11[*(v14 + 20)] = v29;
  }

  else
  {
    v30 = 1;
  }

  v31 = 1;
  v37(v11, v30, 1, v14);
  v32 = a2 + v12[9];
  sub_100005820(v11, a2 + v38, &qword_1000A5C50, &qword_10008B860);
  *v32 = [a1 blockQuoteLevel];
  *(v32 + 8) = 0;
  v33 = [a1 uuid];
  if (v33)
  {
    v34 = v33;
    sub_1000848F8();

    v31 = 0;
    a1 = v34;
  }

  v40(v7, v31, 1, v17);
  return sub_100005820(v7, a2 + v41, &qword_1000A5C20, &unk_10008B840);
}

id sub_100022C98()
{
  v1 = v0;
  v2 = sub_100005740(&qword_1000A5C20, &unk_10008B840);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v25 - v4;
  v6 = sub_100005740(&qword_1000A5C50, &qword_10008B860);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v25 - v8;
  v10 = sub_1000219EC(*v1);
  v11 = [objc_opt_self() paragraphStyleNamed:v10];
  [v11 setAlignment:*(v1 + 1)];
  [v11 setIndent:*(v1 + 8)];
  if (*(v1 + 24) == 1)
  {
    v12 = [v11 startingItemNumber];
  }

  else
  {
    v12 = *(v1 + 16);
  }

  [v11 setStartingItemNumber:v12];
  v13 = _s16AttributedStringV14ParagraphStyleVMa(0);
  sub_100005888(v1 + v13[8], v9, &qword_1000A5C50, &qword_10008B860);
  v14 = _s16AttributedStringV13ChecklistItemVMa(0);
  if ((*(*(v14 - 8) + 48))(v9, 1, v14) == 1)
  {
    sub_1000058F0(v9, &qword_1000A5C50, &qword_10008B860);
    v15 = 0;
  }

  else
  {
    v16 = v9[*(v14 + 20)];
    v17 = objc_allocWithZone(ICTTTodo);
    isa = sub_1000848E8().super.isa;
    v15 = [v17 initWithIdentifier:isa done:v16];

    sub_100032F20(v9, _s16AttributedStringV13ChecklistItemVMa);
  }

  [v11 setTodo:v15];

  v19 = (v1 + v13[9]);
  if (*(v19 + 8))
  {
    v20 = 0;
  }

  else
  {
    v20 = *v19;
  }

  [v11 setBlockQuoteLevel:v20];
  sub_100005888(v1 + v13[10], v5, &qword_1000A5C20, &unk_10008B840);
  v21 = sub_100084918();
  v22 = *(v21 - 8);
  v23 = 0;
  if ((*(v22 + 48))(v5, 1, v21) != 1)
  {
    v23 = sub_1000848E8().super.isa;
    (*(v22 + 8))(v5, v21);
  }

  [v11 setUuid:v23];

  return v11;
}

uint64_t sub_100022FEC(void *a1)
{
  v3 = v1;
  v5 = sub_100005740(&qword_1000A60C8, &qword_10008C0A8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v21[-v8];
  v10 = a1[4];
  sub_10000626C(a1, a1[3]);
  sub_1000345B8();
  sub_100085A78();
  v21[15] = *v3;
  v21[14] = 0;
  sub_1000346B4();
  sub_1000858D8();
  if (!v2)
  {
    v21[13] = *(v3 + 1);
    v21[12] = 1;
    sub_100034708();
    sub_1000858D8();
    v11 = *(v3 + 8);
    v21[11] = 2;
    sub_1000858C8();
    v12 = *(v3 + 16);
    v13 = *(v3 + 24);
    v21[10] = 3;
    sub_100085878();
    v14 = _s16AttributedStringV14ParagraphStyleVMa(0);
    v15 = v14[8];
    v21[9] = 4;
    _s16AttributedStringV13ChecklistItemVMa(0);
    sub_100031408(&qword_1000A60E0, _s16AttributedStringV13ChecklistItemVMa);
    sub_100085888();
    v16 = (v3 + v14[9]);
    v17 = *v16;
    v18 = *(v16 + 8);
    v21[8] = 5;
    sub_100085878();
    v19 = v14[10];
    v21[7] = 6;
    sub_100084918();
    sub_100031408(&qword_1000A6070, &type metadata accessor for UUID);
    sub_100085888();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1000232FC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v39 = a2;
  v3 = sub_100005740(&qword_1000A5C20, &unk_10008B840);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v40 = &v39 - v5;
  v6 = sub_100005740(&qword_1000A5C50, &qword_10008B860);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v41 = &v39 - v8;
  v9 = sub_100005740(&qword_1000A60A0, &qword_10008C0A0);
  v42 = *(v9 - 8);
  v43 = v9;
  v10 = *(v42 + 64);
  __chkstk_darwin(v9);
  v12 = &v39 - v11;
  v13 = _s16AttributedStringV14ParagraphStyleVMa(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = __chkstk_darwin(v13);
  v17 = &v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(v15 + 32);
  v19 = _s16AttributedStringV13ChecklistItemVMa(0);
  v20 = v18;
  (*(*(v19 - 8) + 56))(&v17[v18], 1, 1, v19);
  v21 = *(v13 + 40);
  v22 = sub_100084918();
  v23 = *(*(v22 - 8) + 56);
  v46 = v21;
  v24 = v17;
  v23(&v17[v21], 1, 1, v22);
  v26 = a1[3];
  v25 = a1[4];
  v47 = a1;
  sub_10000626C(a1, v26);
  sub_1000345B8();
  v44 = v12;
  v27 = v45;
  sub_100085A68();
  if (v27)
  {
    sub_100006304(v47);
    sub_1000058F0(v24 + v20, &qword_1000A5C50, &qword_10008B860);
    return sub_1000058F0(v24 + v46, &qword_1000A5C20, &unk_10008B840);
  }

  else
  {
    v45 = v19;
    v28 = v42;
    v55 = 0;
    sub_10003460C();
    sub_100085828();
    *v24 = v56;
    v53 = 1;
    sub_100034660();
    sub_100085828();
    v29 = v28;
    *(v24 + 1) = v54;
    v52 = 2;
    *(v24 + 8) = sub_100085818();
    v51 = 3;
    *(v24 + 16) = sub_1000857C8();
    *(v24 + 24) = v30 & 1;
    v50 = 4;
    sub_100031408(&qword_1000A60C0, _s16AttributedStringV13ChecklistItemVMa);
    v31 = v41;
    sub_1000857D8();
    sub_100005820(v31, v24 + v20, &qword_1000A5C50, &qword_10008B860);
    v49 = 5;
    v32 = sub_1000857C8();
    v33 = v24 + *(v13 + 36);
    *v33 = v32;
    *(v33 + 8) = v34 & 1;
    v48 = 6;
    sub_100031408(&qword_1000A6060, &type metadata accessor for UUID);
    v35 = v40;
    v36 = v43;
    v37 = v44;
    sub_1000857D8();
    (*(v29 + 8))(v37, v36);
    sub_100005820(v35, v24 + v46, &qword_1000A5C20, &unk_10008B840);
    sub_100032EB8(v24, v39, _s16AttributedStringV14ParagraphStyleVMa);
    sub_100006304(v47);
    return sub_100032F20(v24, _s16AttributedStringV14ParagraphStyleVMa);
  }
}

uint64_t sub_10002389C()
{
  v1 = *v0;
  v2 = 1701667182;
  v3 = 0x6F75516B636F6C62;
  if (v1 != 5)
  {
    v3 = 1684632949;
  }

  v4 = 0xD000000000000012;
  if (v1 != 3)
  {
    v4 = 0x73696C6B63656863;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x6E656D6E67696C61;
  if (v1 != 1)
  {
    v5 = 0x746E65646E69;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_100023984@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100032290(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1000239B8(uint64_t a1)
{
  v2 = sub_1000345B8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000239F4(uint64_t a1)
{
  v2 = sub_1000345B8();

  return CodingKey.debugDescription.getter(a1, v2);
}

Swift::Int sub_100023A6C()
{
  v1 = *v0;
  sub_100085A08();
  sub_100085118();

  return sub_100085A38();
}

uint64_t sub_100023B70()
{
  *v0;
  *v0;
  *v0;
  sub_100085118();
}

Swift::Int sub_100023C60()
{
  v1 = *v0;
  sub_100085A08();
  sub_100085118();

  return sub_100085A38();
}

uint64_t sub_100023E10@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000324F4(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

void sub_100023E40(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x4C41525554414ELL;
  v5 = 0x8000000100086450;
  v6 = 0xD000000000000016;
  v7 = 0xED00005446454C5FLL;
  v8 = 0x4F545F5448474952;
  if (v2 != 3)
  {
    v8 = 0xD000000000000016;
    v7 = 0x8000000100086480;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x5F4F545F5446454CLL;
    v3 = 0xED00005448474952;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

void sub_100023F00(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_100005740(&qword_1000A5490, &qword_10008CD80);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v37 - v6;
  v38 = _s16AttributedStringV16InlineAttachmentVMa(0);
  v8 = *(v38 + 24);
  v9 = sub_1000848B8();
  v10 = *(*(v9 - 8) + 56);
  v10(a2 + v8, 1, 1, v9);
  v11 = [a1 typeUTI];
  if (v11)
  {
    v12 = v11;
    v13 = sub_100085098();
    v15 = v14;
  }

  else
  {
    v13 = 0;
    v15 = 0;
  }

  *a2 = v13;
  a2[1] = v15;
  v16 = [a1 identifier];
  if (v16)
  {
    v17 = v16;
    v18 = sub_100085098();
    v20 = v19;
  }

  else
  {
    v18 = 0;
    v20 = 0xE000000000000000;
  }

  a2[2] = v18;
  a2[3] = v20;
  v21 = [a1 creationDate];
  if (v21)
  {
    v22 = v21;
    sub_100084888();

    v23 = 0;
  }

  else
  {
    v23 = 1;
  }

  v10(v7, v23, 1, v9);
  sub_100005820(v7, a2 + v8, &qword_1000A5490, &qword_10008CD80);
  v24 = [a1 tokenContentIdentifier];
  if (v24)
  {
    v25 = v24;
    v26 = sub_100085098();
    v28 = v27;
  }

  else
  {
    v26 = 0;
    v28 = 0;
  }

  v29 = v38;
  v30 = (a2 + *(v38 + 28));
  *v30 = v26;
  v30[1] = v28;
  v31 = [a1 altText];
  if (v31)
  {
    v32 = v31;
    v33 = sub_100085098();
    v35 = v34;
  }

  else
  {

    v33 = 0;
    v35 = 0;
  }

  v36 = (a2 + *(v29 + 32));
  *v36 = v33;
  v36[1] = v35;
}

id sub_100024174(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v8 = sub_100005740(&qword_1000A5490, &qword_10008CD80);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v44 - v10;
  v12 = sub_1000848B8();
  v48 = *(v12 - 8);
  v13 = *(v48 + 64);
  v14 = __chkstk_darwin(v12);
  v16 = &v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v44 - v17;
  ObjectType = swift_getObjectType();
  v20 = (*(a2 + 48))(v5[2], v5[3], a3, ObjectType, a2);
  v21 = v20;
  if (!v4)
  {
    v46 = 0;
    v47 = v20;
    v44 = v11;
    v45 = v18;
    v22 = v48;
    v23 = v3[1];
    if (v23)
    {
      v24 = *v5;
      v25 = v47;
      v26 = v47;
      v27 = v5;
      v23 = sub_100085068();
    }

    else
    {
      v27 = v5;
      v25 = v47;
      v28 = v47;
    }

    v29 = v16;
    [v25 setTypeUTI:{v23, v44}];

    v30 = _s16AttributedStringV16InlineAttachmentVMa(0);
    v31 = v44;
    sub_100005888(v27 + v30[6], v44, &qword_1000A5490, &qword_10008CD80);
    v32 = *(v22 + 48);
    if (v32(v31, 1, v12) == 1)
    {
      sub_1000848A8();
      if (v32(v31, 1, v12) != 1)
      {
        sub_1000058F0(v31, &qword_1000A5490, &qword_10008CD80);
      }
    }

    else
    {
      (*(v22 + 32))(v29, v31, v12);
    }

    v33 = *(a3 + 8);
    v34 = v45;
    sub_100084858();
    v35 = *(v22 + 8);
    v35(v29, v12);
    isa = sub_100084848().super.isa;
    v35(v34, v12);
    v21 = v47;
    [v47 setCreationDate:isa];

    v37 = (v5 + v30[7]);
    if (v37[1])
    {
      v38 = *v37;
      v39 = sub_100085068();
    }

    else
    {
      v39 = 0;
    }

    [v21 setTokenContentIdentifier:v39];

    v40 = (v5 + v30[8]);
    if (v40[1])
    {
      v41 = *v40;
      v42 = sub_100085068();
    }

    else
    {
      v42 = 0;
    }

    [v21 setAltText:v42];
  }

  return v21;
}

uint64_t sub_1000244F0(void *a1)
{
  v3 = v1;
  v5 = sub_100005740(&qword_1000A6108, &qword_10008C0B8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v24[-v8];
  v10 = a1[4];
  sub_10000626C(a1, a1[3]);
  sub_100034804();
  sub_100085A78();
  v11 = *v3;
  v12 = v3[1];
  v24[15] = 0;
  sub_100085848();
  if (!v2)
  {
    v14 = v3[2];
    v15 = v3[3];
    v24[14] = 1;
    sub_100085898();
    v16 = _s16AttributedStringV16InlineAttachmentVMa(0);
    v17 = v16[6];
    v24[13] = 2;
    sub_1000848B8();
    sub_100031408(&qword_1000A5630, &type metadata accessor for Date);
    sub_100085888();
    v18 = (v3 + v16[7]);
    v19 = *v18;
    v20 = v18[1];
    v24[12] = 3;
    sub_100085848();
    v21 = (v3 + v16[8]);
    v22 = *v21;
    v23 = v21[1];
    v24[11] = 4;
    sub_100085848();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_100024760@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v43 = a2;
  v3 = sub_100005740(&qword_1000A5490, &qword_10008CD80);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v42 - v5;
  v7 = sub_100005740(&qword_1000A60F8, &qword_10008C0B0);
  v44 = *(v7 - 8);
  v45 = v7;
  v8 = *(v44 + 64);
  __chkstk_darwin(v7);
  v10 = &v42 - v9;
  v11 = _s16AttributedStringV16InlineAttachmentVMa(0);
  v12 = *(*(v11 - 8) + 64);
  v13 = __chkstk_darwin(v11);
  v15 = (&v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = *(v13 + 24);
  v17 = sub_1000848B8();
  v18 = *(*(v17 - 8) + 56);
  v47 = v16;
  v19 = v15;
  v18(v15 + v16, 1, 1, v17);
  v20 = a1[3];
  v21 = a1[4];
  v48 = a1;
  sub_10000626C(a1, v20);
  sub_100034804();
  v46 = v10;
  v22 = v49;
  sub_100085A68();
  if (v22)
  {
    v49 = v22;
    v25 = 0;
    v26 = v47;
  }

  else
  {
    v24 = v44;
    v23 = v45;
    v54 = 0;
    *v19 = sub_100085798();
    v19[1] = v29;
    v53 = 1;
    v30 = sub_1000857E8();
    v49 = 0;
    v26 = v47;
    v19[2] = v30;
    v19[3] = v31;
    v52 = 2;
    sub_100031408(&qword_1000A55F8, &type metadata accessor for Date);
    v32 = v49;
    sub_1000857D8();
    v49 = v32;
    if (v32)
    {
      (*(v24 + 8))(v46, v23);
    }

    else
    {
      sub_100005820(v6, v19 + v26, &qword_1000A5490, &qword_10008CD80);
      v51 = 3;
      v33 = v49;
      v34 = sub_100085798();
      if (!v33)
      {
        v36 = (v19 + *(v11 + 28));
        *v36 = v34;
        v36[1] = v35;
        v50 = 4;
        v37 = sub_100085798();
        v49 = 0;
        v38 = v37;
        v40 = v39;
        v41 = (v19 + *(v11 + 32));
        (*(v24 + 8))(v46, v45);
        *v41 = v38;
        v41[1] = v40;
        sub_100032EB8(v19, v43, _s16AttributedStringV16InlineAttachmentVMa);
        sub_100006304(v48);
        return sub_100032F20(v19, _s16AttributedStringV16InlineAttachmentVMa);
      }

      v49 = v33;
      (*(v24 + 8))(v46, v45);
    }

    v25 = 1;
  }

  sub_100006304(v48);

  if (v25)
  {
    v27 = v19[3];
  }

  sub_1000058F0(v19 + v26, &qword_1000A5490, &qword_10008CD80);
}

unint64_t sub_100024BC8()
{
  v1 = *v0;
  v2 = 0x696669746E656469;
  v3 = 0x4164657461657263;
  v4 = 0x74786554746C61;
  if (v1 == 3)
  {
    v4 = 0xD000000000000011;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000018;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_100024C70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100032540(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100024CA4(uint64_t a1)
{
  v2 = sub_100034804();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100024CE0(uint64_t a1)
{
  v2 = sub_100034804();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100024D4C(void *a1)
{
  v3 = sub_100005740(&qword_1000A61B8, &qword_10008C0D8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v10 - v6;
  v8 = a1[4];
  sub_10000626C(a1, a1[3]);
  sub_100034BF4();
  sub_100085A78();
  v12 = 0;
  sub_1000858C8();
  if (!v1)
  {
    v11 = 1;
    sub_1000858C8();
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_100024ED4()
{
  if (*v0)
  {
    result = 0x6874676E656CLL;
  }

  else
  {
    result = 0x7441737472617473;
  }

  *v0;
  return result;
}

uint64_t sub_100024F0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x7441737472617473 && a2 == 0xE800000000000000;
  if (v6 || (sub_100085948() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6874676E656CLL && a2 == 0xE600000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_100085948();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_100024FE4(uint64_t a1)
{
  v2 = sub_100034BF4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100025020(uint64_t a1)
{
  v2 = sub_100034BF4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10002505C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_10003270C(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

uint64_t sub_100025088(void *a1)
{
  v2 = *v1;
  v3 = v1[1];
  return sub_100024D4C(a1);
}

unint64_t sub_1000250A4(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0xD000000000000010;
    v6 = 0xD000000000000014;
    if (a1 != 8)
    {
      v6 = 0xD000000000000010;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0x7369736168706D65;
    if (a1 != 5)
    {
      v7 = 1802398060;
    }

    if (a1 <= 6u)
    {
      return v7;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0x65676E6172;
    v2 = 0x6D617473656D6974;
    v3 = 1953394534;
    if (a1 != 3)
    {
      v3 = 0x7061726761726170;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 0xD000000000000010;
    }

    if (a1 <= 1u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_1000251F4(void *a1)
{
  v3 = v1;
  v5 = sub_100005740(&qword_1000A6158, &qword_10008C0C8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v25 - v8;
  v10 = a1[4];
  sub_10000626C(a1, a1[3]);
  sub_100034858();
  sub_100085A78();
  v36[0] = *v3;
  LOBYTE(v31) = 0;
  sub_1000349FC();
  sub_1000858D8();
  if (!v2)
  {
    v11 = _s16AttributedStringV9AttributeVMa(0);
    v12 = v11[5];
    LOBYTE(v36[0]) = 1;
    sub_100084918();
    sub_100031408(&qword_1000A6070, &type metadata accessor for UUID);
    sub_100085888();
    v13 = v11[6];
    v40 = 2;
    sub_1000848B8();
    sub_100031408(&qword_1000A5630, &type metadata accessor for Date);
    sub_100085888();
    v14 = v3 + v11[7];
    v15 = *(v14 + 1);
    v16 = *(v14 + 3);
    v37 = *(v14 + 2);
    v38 = v16;
    v17 = *(v14 + 1);
    v36[0] = *v14;
    v36[1] = v17;
    v32 = v15;
    v33 = v37;
    v34 = *(v14 + 3);
    v39 = *(v14 + 8);
    v35 = *(v14 + 8);
    v31 = v36[0];
    v30 = 3;
    sub_100005888(v36, v28, &qword_1000A5C40, &qword_10008B858);
    sub_100034A50();
    sub_100085888();
    v28[2] = v33;
    v28[3] = v34;
    v29 = v35;
    v28[1] = v32;
    v28[0] = v31;
    sub_1000058F0(v28, &qword_1000A5C40, &qword_10008B858);
    v18 = v11[8];
    v27 = 4;
    _s16AttributedStringV14ParagraphStyleVMa(0);
    sub_100031408(&qword_1000A6170, _s16AttributedStringV14ParagraphStyleVMa);
    sub_100085888();
    v27 = *(v3 + v11[9]);
    v26 = 5;
    sub_100034AA4();
    sub_100085888();
    v19 = v11[10];
    v27 = 6;
    sub_1000847C8();
    sub_100031408(&qword_1000A6180, &type metadata accessor for URL);
    sub_100085888();
    v27 = *(v3 + v11[11]);
    v26 = 7;
    sub_100034AF8();
    sub_100085888();
    v20 = (v3 + v11[12]);
    v21 = *v20;
    v22 = v20[1];
    v27 = 8;
    sub_100085848();
    v23 = v11[13];
    v27 = 9;
    _s16AttributedStringV16InlineAttachmentVMa(0);
    sub_100031408(&qword_1000A6190, _s16AttributedStringV16InlineAttachmentVMa);
    sub_100085888();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1000257B8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v71 = a2;
  v3 = sub_100005740(&qword_1000A5C10, &unk_10008B820);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v72 = v69 - v5;
  v6 = sub_100005740(&qword_1000A56E8, &qword_10008D350);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v73 = v69 - v8;
  v9 = sub_100005740(&qword_1000A5C18, &unk_10008B830);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v74 = v69 - v11;
  v12 = sub_100005740(&qword_1000A5490, &qword_10008CD80);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v75 = v69 - v14;
  v15 = sub_100005740(&qword_1000A5C20, &unk_10008B840);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v77 = v69 - v17;
  v80 = sub_100005740(&qword_1000A6110, &qword_10008C0C0);
  v78 = *(v80 - 8);
  v18 = *(v78 + 64);
  __chkstk_darwin(v80);
  v20 = v69 - v19;
  v21 = _s16AttributedStringV9AttributeVMa(0);
  v22 = *(*(v21 - 1) + 64);
  v23 = __chkstk_darwin(v21);
  v25 = v69 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = *(v23 + 20);
  v27 = sub_100084918();
  v28 = *(*(v27 - 8) + 56);
  v85 = v26;
  v76 = v27;
  v28(&v25[v26], 1, 1);
  v29 = v21[6];
  v30 = sub_1000848B8();
  v31 = *(*(v30 - 8) + 56);
  v84 = v29;
  v31(&v25[v29], 1, 1, v30);
  v32 = &v25[v21[7]];
  *v32 = xmmword_10008B800;
  *(v32 + 1) = 0u;
  *(v32 + 2) = 0u;
  *(v32 + 3) = 0u;
  v104 = v32;
  *(v32 + 8) = 0;
  v33 = v21[8];
  v34 = _s16AttributedStringV14ParagraphStyleVMa(0);
  v35 = *(*(v34 - 8) + 56);
  v88 = v33;
  v35(&v25[v33], 1, 1, v34);
  v36 = v21[10];
  v37 = sub_1000847C8();
  v38 = *(*(v37 - 8) + 56);
  v87 = v36;
  v38(&v25[v36], 1, 1, v37);
  v39 = v21[13];
  v40 = _s16AttributedStringV16InlineAttachmentVMa(0);
  v41 = *(*(v40 - 8) + 56);
  v82 = v39;
  v86 = v25;
  v41(&v25[v39], 1, 1, v40);
  v43 = a1[3];
  v42 = a1[4];
  v83 = a1;
  sub_10000626C(a1, v43);
  sub_100034858();
  v79 = v20;
  v44 = v81;
  sub_100085A68();
  if (v44)
  {
    v46 = v85;
    v47 = v84;
    v48 = v86;
    sub_100006304(v83);
    sub_1000058F0(v48 + v46, &qword_1000A5C20, &unk_10008B840);
    sub_1000058F0(v48 + v47, &qword_1000A5490, &qword_10008CD80);
    v49 = *(v104 + 3);
    v101 = *(v104 + 2);
    v102 = v49;
    v103 = *(v104 + 8);
    v50 = *(v104 + 1);
    v99 = *v104;
    v100 = v50;
    sub_1000058F0(&v99, &qword_1000A5C40, &qword_10008B858);
    sub_1000058F0(v48 + v88, &qword_1000A5C18, &unk_10008B830);
    sub_1000058F0(v48 + v87, &qword_1000A56E8, &qword_10008D350);

    return sub_1000058F0(v48 + v82, &qword_1000A5C10, &unk_10008B820);
  }

  else
  {
    v45 = v77;
    v81 = v34;
    v70 = v21;
    v69[1] = v40;
    LOBYTE(v96[0]) = 0;
    sub_1000348AC();
    sub_100085828();
    v51 = v86;
    *v86 = v99;
    LOBYTE(v99) = 1;
    sub_100031408(&qword_1000A6060, &type metadata accessor for UUID);
    sub_1000857D8();
    sub_100005820(v45, v51 + v85, &qword_1000A5C20, &unk_10008B840);
    LOBYTE(v99) = 2;
    sub_100031408(&qword_1000A55F8, &type metadata accessor for Date);
    v52 = v75;
    sub_1000857D8();
    sub_100005820(v52, v51 + v84, &qword_1000A5490, &qword_10008CD80);
    v98 = 3;
    sub_100034900();
    sub_1000857D8();
    v53 = v51;
    v93 = v101;
    v94 = v102;
    v95 = v103;
    v92 = v100;
    v91 = v99;
    v54 = v104;
    v55 = *(v104 + 2);
    v96[3] = *(v104 + 3);
    v97 = *(v104 + 8);
    v56 = *v104;
    v96[1] = *(v104 + 1);
    v96[2] = v55;
    v96[0] = v56;
    sub_1000058F0(v96, &qword_1000A5C40, &qword_10008B858);
    v57 = v94;
    *(v54 + 2) = v93;
    *(v54 + 3) = v57;
    *(v54 + 8) = v95;
    v58 = v92;
    *v54 = v91;
    *(v54 + 1) = v58;
    v90 = 4;
    sub_100031408(&qword_1000A6130, _s16AttributedStringV14ParagraphStyleVMa);
    v59 = v74;
    sub_1000857D8();
    sub_100005820(v59, v51 + v88, &qword_1000A5C18, &unk_10008B830);
    v89 = 5;
    sub_100034954();
    sub_1000857D8();
    *(v51 + v70[9]) = v90;
    v90 = 6;
    sub_100031408(&qword_1000A6140, &type metadata accessor for URL);
    v60 = v73;
    sub_1000857D8();
    sub_100005820(v60, v53 + v87, &qword_1000A56E8, &qword_10008D350);
    v89 = 7;
    sub_1000349A8();
    sub_1000857D8();
    v61 = v70;
    *(v53 + v70[11]) = v90;
    v90 = 8;
    v62 = sub_100085798();
    v63 = (v53 + v61[12]);
    *v63 = v62;
    v63[1] = v64;
    v90 = 9;
    sub_100031408(&qword_1000A6150, _s16AttributedStringV16InlineAttachmentVMa);
    v65 = v80;
    v66 = v79;
    sub_1000857D8();
    (*(v78 + 8))(v66, v65);
    v67 = v86;
    sub_100005820(v72, v86 + v82, &qword_1000A5C10, &unk_10008B820);
    sub_100032EB8(v67, v71, _s16AttributedStringV9AttributeVMa);
    sub_100006304(v83);
    return sub_100032F20(v67, _s16AttributedStringV9AttributeVMa);
  }
}

uint64_t sub_100026490@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1000328B4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1000264C4(uint64_t a1)
{
  v2 = sub_100034858();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100026500(uint64_t a1)
{
  v2 = sub_100034858();

  return CodingKey.debugDescription.getter(a1, v2);
}

void sub_10002656C()
{
  v1 = sub_1000847C8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for MarkdownStyle(0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100032EB8(v0, v9, type metadata accessor for MarkdownStyle);
  v10 = (*(v2 + 48))(v9, 6, v1);
  if (v10 <= 2)
  {
    if (!v10)
    {
      (*(v2 + 32))(v5, v9, v1);
      sub_100085A18(6uLL);
      sub_100031408(&qword_1000A5C70, &type metadata accessor for URL);
      sub_100085028();
      (*(v2 + 8))(v5, v1);
      return;
    }

    v11 = v10 != 1;
  }

  else if (v10 > 4)
  {
    if (v10 == 5)
    {
      v11 = 4;
    }

    else
    {
      v11 = 5;
    }
  }

  else if (v10 == 3)
  {
    v11 = 2;
  }

  else
  {
    v11 = 3;
  }

  sub_100085A18(v11);
}

Swift::Int sub_100026788()
{
  sub_100085A08();
  sub_10002656C();
  return sub_100085A38();
}

Swift::Int sub_1000267CC()
{
  sub_100085A08();
  sub_10002656C();
  return sub_100085A38();
}

void sub_10002680C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, void *a11)
{
  sub_100005888(a1, aBlock, &qword_1000A5AD0, &unk_10008B5E0);
  if (v46)
  {
    sub_100008250(0, &qword_1000A5C38, ICTTParagraphStyle_ptr);
    if (swift_dynamicCast())
    {
      if ([v44 style] == 4)
      {
        v17 = sub_100030DD0([v44 style]);
        if (v17 <= 4u)
        {
          v18 = v17;
          v30 = 0xE200000000000000;
          v31 = 8227;
          v32 = 0xE400000000000000;
          v33 = 539173667;
          v34 = 0xE000000000000000;
          v35 = 0x2023232323;
          if (v17 == 3)
          {
            v35 = 0;
          }

          else
          {
            v34 = 0xE500000000000000;
          }

          if (v17 != 2)
          {
            v33 = v35;
            v32 = v34;
          }

          if (v17)
          {
            v31 = 2106147;
            v30 = 0xE300000000000000;
          }

          if (v17 <= 1u)
          {
            v20 = v31;
          }

          else
          {
            v20 = v33;
          }

          if (v17 <= 1u)
          {
            v19 = v30;
          }

          else
          {
            v19 = v32;
          }

          goto LABEL_34;
        }

        if (v17 <= 7u)
        {
          if (v17 == 5)
          {
            v18 = v17;
            v19 = 0xE400000000000000;
            v20 = 174088288;
            goto LABEL_34;
          }

          if (v17 == 6)
          {
            v18 = v17;
            v19 = 0xE200000000000000;
            v20 = 8234;
LABEL_34:
            swift_beginAccess();
            v49._countAndFlagsBits = v20;
            v49._object = v19;
            sub_100085158(v49);
            swift_endAccess();

            v36 = [a6 attributedSubstringFromRange:{a2, a3}];
            v37 = [v36 string];

            v38 = sub_100085098();
            v40 = v39;

            swift_beginAccess();
            v50._countAndFlagsBits = v38;
            v50._object = v40;
            sub_100085158(v50);

            if (v18 == 5)
            {
              v41._countAndFlagsBits = 1616928778;
            }

            else
            {
              v41._countAndFlagsBits = 0;
            }

            if (v18 == 5)
            {
              v42 = 0xE400000000000000;
            }

            else
            {
              v42 = 0xE000000000000000;
            }

            v41._object = v42;
            sub_100085158(v41);

            v51._countAndFlagsBits = 10;
            v51._object = 0xE100000000000000;
            sub_100085158(v51);
            swift_endAccess();

            swift_beginAccess();
            *(a7 + 16) = 0;
            swift_beginAccess();
            *(a8 + 16) = 0;
            return;
          }

LABEL_31:
          v18 = v17;
          v19 = 0xE200000000000000;
          v20 = 8237;
          goto LABEL_34;
        }

        if (v17 == 8)
        {
          v18 = v17;
          v20 = 0;
          v19 = 0xE000000000000000;
          goto LABEL_34;
        }

        if (v17 == 9)
        {
          goto LABEL_31;
        }

        v43 = a2;
        v21 = a5;
        v22 = a7;
        v23 = a8;
      }

      else
      {
        v21 = a5;
        v22 = a7;
        v23 = a8;
        v43 = a2;
      }

      v24 = a3;
    }

    else
    {
      v21 = a5;
      v22 = a7;
      v23 = a8;
      v43 = a2;
      v24 = a3;
    }
  }

  else
  {
    v21 = a5;
    v22 = a7;
    v23 = a8;
    v43 = a2;
    v24 = a3;
    sub_1000058F0(aBlock, &qword_1000A5AD0, &unk_10008B5E0);
  }

  v25 = [a6 string];
  if (!v25)
  {
    sub_100085098();
    v25 = sub_100085068();
  }

  v26 = swift_allocObject();
  *(v26 + 16) = a6;
  *(v26 + 24) = v22;
  *(v26 + 32) = v23;
  *(v26 + 40) = a9;
  *(v26 + 48) = a10;
  *(v26 + 56) = a11;
  *(v26 + 64) = v21;
  v47 = sub_10003133C;
  v48 = v26;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10002A60C;
  v46 = &unk_10009F110;
  v27 = _Block_copy(aBlock);
  v28 = a6;

  v29 = a11;

  [v25 ic_enumerateParagraphsInRange:v43 usingBlock:{v24, v27}];
  _Block_release(v27);
}

uint64_t sub_100026CAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9, void *a10)
{
  v160 = a8;
  v165 = sub_1000847C8();
  v15 = *(v165 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v165);
  v164 = &v140 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for MarkdownStyle(0);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v21 = __chkstk_darwin(v18 - 8);
  v23 = &v140 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v21);
  v166 = &v140 - v25;
  if (__OFSUB__(a3, a1))
  {
LABEL_146:
    __break(1u);
LABEL_147:
    __break(1u);
    goto LABEL_148;
  }

  v176 = 0;
  v177 = 0xE000000000000000;
  v175 = 0;
  if ([a5 attribute:ICTTAttributeNameParagraphStyle atIndex:a1 effectiveRange:0])
  {
    sub_100085528();
    swift_unknownObjectRelease();
  }

  else
  {
    v173 = 0u;
    v174 = 0u;
  }

  aBlock = v173;
  v169 = v174;
  v155 = v15;
  v154 = a1;
  v153 = a5;
  v161 = a3 - a1;
  if (!*(&v174 + 1))
  {
    sub_1000058F0(&aBlock, &qword_1000A5AD0, &unk_10008B5E0);
LABEL_10:
    v159 = 0;
    v27._countAndFlagsBits = 0;
    v28 = 0;
    v29 = 0;
    v157 = 0;
    v30 = 0;
    v158 = 0xE000000000000000;
    v31 = 0xE000000000000000;
    v32 = 0xE000000000000000;
    v33 = 0xE000000000000000;
    v156 = 0xE000000000000000;
    v34 = 0xE000000000000000;
LABEL_11:
    v27._object = v31;
    sub_100085158(v27);

    v178._countAndFlagsBits = v28;
    v178._object = v32;
    sub_100085158(v178);

    v179._countAndFlagsBits = v29;
    v179._object = v33;
    sub_100085158(v179);

    v180._countAndFlagsBits = v30;
    v180._object = v34;
    sub_100085158(v180);

    v35 = v161;
    if (v161 < 1)
    {
      v59 = 0;
      v60 = v159;
      v61 = v158;
LABEL_42:
      v184._countAndFlagsBits = v157;
      v184._object = v156;
      sub_100085158(v184);

      v185._countAndFlagsBits = v60;
      v185._object = v61;
      sub_100085158(v185);

      v186._countAndFlagsBits = 663584;
      v186._object = 0xE300000000000000;
      sub_100085158(v186);
      v62 = v176;
      v63 = v177;
      swift_beginAccess();

      v187._countAndFlagsBits = v62;
      v187._object = v63;
      sub_100085158(v187);
      swift_endAccess();

      return sub_10000852C(v59);
    }

    v36 = v155;
    v172 = _swiftEmptyArrayStorage;
    v37 = swift_allocObject();
    v38 = v153;
    *(v37 + 16) = v153;
    *(v37 + 24) = &v175;
    *(v37 + 32) = &v176;
    *(v37 + 40) = a9;
    *(v37 + 48) = a10;
    *(v37 + 56) = &v172;
    v39 = swift_allocObject();
    *(v39 + 16) = sub_1000313D4;
    *(v39 + 24) = v37;
    v152 = v37;
    v170 = sub_100035C90;
    v171 = v39;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    *&v169 = sub_10001EF40;
    *(&v169 + 1) = &unk_10009F188;
    v40 = _Block_copy(&aBlock);
    v41 = v38;
    v42 = a10;

    [v41 enumerateAttributesInRange:v154 options:v35 usingBlock:{0, v40}];
    _Block_release(v40);
    LOBYTE(v40) = swift_isEscapingClosureAtFileLocation();

    if ((v40 & 1) == 0)
    {
      v43 = v172;
      v44 = v172[2];
      if (v44)
      {
        v45 = v172 + ((*(v19 + 80) + 32) & ~*(v19 + 80));
        v46 = (v36 + 48);
        v161 = v36 + 32;
        v160 = v36 + 8;

        v162 = v19;
        v163 = v23;
        while (v44 <= v43[2])
        {
          --v44;
          v52 = v166;
          sub_100032EB8(&v45[*(v19 + 72) * v44], v166, type metadata accessor for MarkdownStyle);
          sub_100032EB8(v52, v23, type metadata accessor for MarkdownStyle);
          v53 = (*v46)(v23, 6, v165);
          if (v53 > 2)
          {
            v47 = 32382;
            if (v53 != 5)
            {
              v47 = 15677;
            }

            v48 = 2763306;
            if (v53 != 3)
            {
              v48 = 11051;
            }

            v49 = 0xE300000000000000;
            if (v53 != 3)
            {
              v49 = 0xE200000000000000;
            }

            if (v53 <= 4)
            {
              v50 = v48;
            }

            else
            {
              v50 = v47;
            }

            if (v53 <= 4)
            {
              v51 = v49;
            }

            else
            {
              v51 = 0xE200000000000000;
            }
          }

          else if (v53)
          {
            if (v53 == 1)
            {
              v50 = 10794;
            }

            else
            {
              v50 = 42;
            }

            if (v53 == 1)
            {
              v51 = 0xE200000000000000;
            }

            else
            {
              v51 = 0xE100000000000000;
            }
          }

          else
          {
            v54 = v164;
            v55 = v23;
            v56 = v165;
            (*v161)(v164, v55, v165);
            *&aBlock = 10333;
            *(&aBlock + 1) = 0xE200000000000000;
            sub_100031408(&qword_1000A5AD8, &type metadata accessor for URL);
            v182._countAndFlagsBits = sub_100085908();
            sub_100085158(v182);

            v183._countAndFlagsBits = 41;
            v183._object = 0xE100000000000000;
            sub_100085158(v183);
            v51 = *(&aBlock + 1);
            v50 = aBlock;
            v57 = v54;
            v19 = v162;
            v58 = v56;
            v23 = v163;
            (*v160)(v57, v58);
          }

          v181._countAndFlagsBits = v50;
          v181._object = v51;
          sub_100085158(v181);

          sub_100032F20(v166, type metadata accessor for MarkdownStyle);
          if (!v44)
          {
            goto LABEL_40;
          }
        }

        __break(1u);
LABEL_40:
      }

      v60 = v159;

      v59 = sub_1000313D4;
      v61 = v158;
      goto LABEL_42;
    }

    goto LABEL_147;
  }

  sub_100008250(0, &qword_1000A5C38, ICTTParagraphStyle_ptr);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_10;
  }

  v26 = v167;
  LODWORD(v157) = sub_100030DD0([v167 style]);
  if (v157 == 10)
  {

    goto LABEL_10;
  }

  v151 = a6;
  v150 = a7;
  if ([v26 writingDirection] == 1)
  {
    v143 = 0xEF3E226C7472223DLL;
    v144 = 0x726964207669643CLL;
    v64 = 0xE600000000000000;
    v65 = 0x3E7669642F3CLL;
  }

  else
  {
    v65 = 0;
    v144 = 0;
    v64 = 0xE000000000000000;
    v143 = 0xE000000000000000;
  }

  v66 = [v26 isList];
  v152 = v26;
  if (v66 && [v26 indent] >= 1)
  {
    result = [v26 indent];
    if (result < 1)
    {
LABEL_148:
      __break(1u);
      goto LABEL_149;
    }

    v67 = result;
    v68 = 0;
    v69 = 0xE000000000000000;
    v26 = 1;
    while (1)
    {
      *&aBlock = v68;
      *(&aBlock + 1) = v69;
      v188._countAndFlagsBits = 538976288;
      v188._object = 0xE400000000000000;
      sub_100085158(v188);
      v69 = *(&aBlock + 1);
      v68 = aBlock;
      if (v67 == v26)
      {
        break;
      }

      if (__OFADD__(v26++, 1))
      {
        __break(1u);
        goto LABEL_54;
      }
    }

    v26 = v152;
  }

  else
  {
LABEL_54:
    v68 = 0;
    v69 = 0xE000000000000000;
  }

  if ([v26 blockQuoteLevel])
  {
    v71 = v151;
    swift_beginAccess();
    v72 = *(v71 + 16);
    if (v72 < 1)
    {
      v74 = 0;
      v75 = 0xE000000000000000;
    }

    else
    {
      v73 = v150;
      swift_beginAccess();
      v74 = 0;
      v75 = 0xE000000000000000;
      if (*(v73 + 16) >= 1 && v161 >= 1)
      {
        v76 = [v152 blockQuoteLevel];
        if (v76 >= v72)
        {
          v76 = v72;
        }

        *&aBlock = sub_100032C00(v76);
        *(&aBlock + 1) = v77;
        v189._countAndFlagsBits = 10;
        v189._object = 0xE100000000000000;
        sub_100085158(v189);
        v75 = *(&aBlock + 1);
        v74 = aBlock;
      }
    }

    *&aBlock = v74;
    *(&aBlock + 1) = v75;
    v81 = v152;
    v191._countAndFlagsBits = sub_100032C00([v152 blockQuoteLevel]);
    sub_100085158(v191);

    v80 = *(&aBlock + 1);
    v146 = aBlock;
    goto LABEL_71;
  }

  v78 = v151;
  swift_beginAccess();
  if (*(v78 + 16) < 1)
  {
    v146 = 0;
    v80 = 0xE000000000000000;
    goto LABEL_70;
  }

  v79 = v150;
  swift_beginAccess();
  v146 = 0;
  v80 = 0xE000000000000000;
  if (*(v79 + 16) < 1)
  {
LABEL_70:
    v81 = v152;
    goto LABEL_71;
  }

  v81 = v152;
  if (v161 >= 1)
  {
    v190._countAndFlagsBits = 10;
    v190._object = 0xE100000000000000;
    sub_100085158(v190);
    v146 = 0;
    v80 = 0xE000000000000000;
  }

LABEL_71:
  v142 = v80;
  v82 = sub_100021A00(v157);
  v149 = v83;
  v163 = v23;
  v159 = v65;
  v158 = v64;
  v147 = v82;
  if (v82 != 0x44455245424D554ELL || v83 != 0xED00005453494C5FLL)
  {
    v84 = sub_100085948();

    if (v84)
    {
      goto LABEL_75;
    }

    v100 = 0;
    v101 = 0xE000000000000000;
    if (v157 > 4u)
    {
      v102 = v149;
      v103 = v147;
      if (v157 <= 6u)
      {
        if (v157 == 5)
        {
          v101 = 0xE400000000000000;
          v100 = 174088288;
        }

        else
        {
          v101 = 0xE200000000000000;
          v100 = 8234;
        }
      }

      else if (v157 != 8)
      {
        v101 = 0xE200000000000000;
        v100 = 8237;
      }
    }

    else
    {
      v102 = v149;
      v103 = v147;
      if (v157 <= 1u)
      {
        if (v157)
        {
          v101 = 0xE300000000000000;
          v100 = 2106147;
        }

        else
        {
          v101 = 0xE200000000000000;
          v100 = 8227;
        }
      }

      else if (v157 == 2)
      {
        v101 = 0xE400000000000000;
        v100 = 539173667;
      }

      else if (v157 != 3)
      {
        v101 = 0xE500000000000000;
        v100 = 0x2023232323;
      }
    }

    v148 = v101;
    if (v103 == 0x53494C4B43454843 && v102 == 0xE900000000000054)
    {
    }

    else
    {
      v104 = sub_100085948();

      if ((v104 & 1) == 0)
      {
LABEL_110:
        v141 = v100;
        v109 = v157 == 5;
        v110 = 1616928778;
        if (v157 != 5)
        {
          v110 = 0;
        }

        v157 = v110;
        v111 = 0xE000000000000000;
        if (v109)
        {
          v111 = 0xE400000000000000;
        }

        v156 = v111;
        v112 = [v81 indent];
        v113 = v160;
        swift_beginAccess();
        v114 = *(v113 + 16);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v167 = *(v113 + 16);
        *(v113 + 16) = 0x8000000000000000;
        sub_10003B204(0, v112, isUniquelyReferenced_nonNull_native);
        v99 = v167;
        *(v113 + 16) = v167;
        swift_endAccess();
        goto LABEL_115;
      }
    }

    v105 = [v81 todo];
    if (v105)
    {
      v106 = v105;
      v107 = [v105 done];

      if (v107)
      {
        v108 = 120;
      }

      else
      {
        v108 = 32;
      }
    }

    else
    {
      v108 = 32;
    }

    *&aBlock = v100;
    *(&aBlock + 1) = v148;
    v193._countAndFlagsBits = 91;
    v193._object = 0xE100000000000000;
    sub_100085158(v193);
    v194._countAndFlagsBits = v108;
    v194._object = 0xE100000000000000;
    sub_100085158(v194);
    v195._countAndFlagsBits = 8285;
    v195._object = 0xE200000000000000;
    sub_100085158(v195);
    v148 = *(&aBlock + 1);
    v100 = aBlock;
    goto LABEL_110;
  }

LABEL_75:
  v85 = [v81 indent];
  v86 = v160;
  swift_beginAccess();
  v87 = *(v86 + 16);
  if (!*(v87 + 16) || (v88 = sub_1000391B0(v85), (v89 & 1) == 0))
  {
    swift_endAccess();
LABEL_81:
    v92 = v152;
    v93 = [v152 startingItemNumber];
    if (v93 <= 1)
    {
      v91 = 1;
    }

    else
    {
      v91 = v93;
    }

    goto LABEL_84;
  }

  v90 = *(*(v87 + 56) + 8 * v88);
  result = swift_endAccess();
  if (!v90)
  {
    goto LABEL_81;
  }

  v91 = v90 + 1;
  if (!__OFADD__(v90, 1))
  {
    v92 = v152;
LABEL_84:
    v167 = v91;
    *&aBlock = sub_100085908();
    *(&aBlock + 1) = v94;
    v192._countAndFlagsBits = 8238;
    v192._object = 0xE200000000000000;
    sub_100085158(v192);
    v148 = *(&aBlock + 1);
    v141 = aBlock;
    v95 = [v92 indent];
    v96 = v160;
    swift_beginAccess();
    v97 = *(v96 + 16);
    v98 = swift_isUniquelyReferenced_nonNull_native();
    v167 = *(v96 + 16);
    *(v96 + 16) = 0x8000000000000000;
    sub_10003B204(v91, v95, v98);
    v99 = v167;
    *(v96 + 16) = v167;
    swift_endAccess();
    v157 = 0;
    v156 = 0xE000000000000000;
LABEL_115:

    v116 = 0;
    v117 = 1 << v99[32];
    v118 = -1;
    if (v117 < 64)
    {
      v118 = ~(-1 << v117);
    }

    v119 = v118 & *(v99 + 8);
    v120 = (v117 + 63) >> 6;
    v145 = v68;
    while (v119)
    {
LABEL_125:
      v122 = __clz(__rbit64(v119));
      v119 &= v119 - 1;
      v123 = *(*(v99 + 6) + ((v116 << 9) | (8 * v122)));
      result = [v152 indent];
      if (result < v123)
      {
        swift_beginAccess();
        v124 = *(v160 + 16);
        v125 = sub_1000391B0(v123);
        v126 = v160;
        if (v127)
        {
          v128 = v125;
          v129 = *(v160 + 16);
          v130 = swift_isUniquelyReferenced_nonNull_native();
          v131 = v126;
          v132 = *(v126 + 16);
          v167 = v132;
          *(v131 + 16) = 0x8000000000000000;
          if (!v130)
          {
            sub_10002C350();
            v132 = v167;
          }

          sub_10002BB2C(v128, v132);
          *(v131 + 16) = v132;
          v68 = v145;
        }

        result = swift_endAccess();
      }
    }

    while (1)
    {
      v121 = v116 + 1;
      if (__OFADD__(v116, 1))
      {
        break;
      }

      if (v121 >= v120)
      {

        v133 = [v152 blockQuoteLevel];
        v134 = v151;
        swift_beginAccess();
        *(v134 + 16) = v133;
        v135 = v150;
        swift_beginAccess();
        *(v135 + 16) = v161;
        v136 = v147;
        if (v147 == 0x454C544954 && v149 == 0xE500000000000000)
        {
          v33 = v69;
          v29 = v68;

          v23 = v163;
          v31 = v143;
          v28 = v146;
          goto LABEL_138;
        }

        v137 = sub_100085948();

        v23 = v163;
        v31 = v143;
        v28 = v146;
        if (v137)
        {
LABEL_133:
          v33 = v69;
          v29 = v68;

          goto LABEL_138;
        }

        if (v136 == 0x474E4944414548 && v149 == 0xE700000000000000)
        {
          v33 = v69;
          goto LABEL_137;
        }

        v138 = sub_100085948();

        if (v138)
        {
          goto LABEL_133;
        }

        v33 = v69;
        if (v136 == 0x4944414548425553 && v149 == 0xEA0000000000474ELL)
        {
LABEL_137:
          v29 = v68;
        }

        else
        {
          v29 = v68;
          v139 = sub_100085948();

          if ((v139 & 1) == 0)
          {
            goto LABEL_139;
          }
        }

LABEL_138:
        v175 = 1;
LABEL_139:
        v27._countAndFlagsBits = v144;
        v32 = v142;
        v30 = v141;
        v34 = v148;
        goto LABEL_11;
      }

      v119 = *&v99[8 * v121 + 64];
      ++v116;
      if (v119)
      {
        v116 = v121;
        goto LABEL_125;
      }
    }

    __break(1u);
    goto LABEL_146;
  }

LABEL_149:
  __break(1u);
  return result;
}

uint64_t sub_100027F70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, _BYTE *a6, uint64_t a7, int a8, void *a9, char *a10)
{
  LODWORD(v189) = a8;
  v202 = a7;
  v185 = a6;
  v14 = sub_100005740(&qword_1000A56E8, &qword_10008D350);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v203 = &v181 - v16;
  v204 = sub_1000847C8();
  v191 = *(v204 - 8);
  v17 = *(v191 + 64);
  v18 = __chkstk_darwin(v204);
  v197 = &v181 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v21 = &v181 - v20;
  v22 = type metadata accessor for MarkdownStyle(0);
  v198 = *(v22 - 8);
  v23 = *(v198 + 64);
  v24 = __chkstk_darwin(v22 - 8);
  v194 = &v181 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __chkstk_darwin(v24);
  v192 = &v181 - v27;
  v28 = __chkstk_darwin(v26);
  v30 = &v181 - v29;
  v31 = __chkstk_darwin(v28);
  v199 = &v181 - v32;
  v33 = __chkstk_darwin(v31);
  v201 = &v181 - v34;
  v35 = __chkstk_darwin(v33);
  v187 = &v181 - v36;
  v37 = __chkstk_darwin(v35);
  v200 = &v181 - v38;
  v39 = __chkstk_darwin(v37);
  v196 = (&v181 - v40);
  v41 = __chkstk_darwin(v39);
  v186 = &v181 - v42;
  v43 = __chkstk_darwin(v41);
  v195 = (&v181 - v44);
  v45 = __chkstk_darwin(v43);
  v193 = &v181 - v46;
  v47 = __chkstk_darwin(v45);
  v49 = &v181 - v48;
  v50 = __chkstk_darwin(v47);
  v184 = &v181 - v51;
  v52 = __chkstk_darwin(v50);
  v183 = &v181 - v53;
  v54 = __chkstk_darwin(v52);
  v56 = &v181 - v55;
  __chkstk_darwin(v54);
  v58 = &v181 - v57;
  v59 = [a5 attributedSubstringFromRange:{a2, a3}];
  v60 = [v59 string];

  v188 = sub_100085098();
  v190 = v61;

  if (*(a1 + 16))
  {
    v62 = ICTTAttributeNameFont;
    v63 = sub_1000392C8(v62);
    if (v64)
    {
      sub_1000056E4(*(a1 + 56) + 32 * v63, &v207);

      sub_100008250(0, &qword_1000A5C48, ICTTFont_ptr);
      if (swift_dynamicCast())
      {
        v181 = v49;
        v65 = v206;
        if (([v206 fontHints] & 1) != 0 && (*v185 & 1) == 0)
        {
          v182 = v21;
          (*(v191 + 56))(v58, 1, 6, v204);
          v66 = sub_10000F248(0, 1, 1, _swiftEmptyArrayStorage);
          v177 = v66[2];
          v176 = v66[3];
          if (v177 >= v176 >> 1)
          {
            v66 = sub_10000F248(v176 > 1, v177 + 1, 1, v66);
          }

          v66[2] = v177 + 1;
          sub_100032CA4(v58, v66 + ((*(v198 + 80) + 32) & ~*(v198 + 80)) + *(v198 + 72) * v177, type metadata accessor for MarkdownStyle);
          v21 = v182;
        }

        else
        {
          v66 = _swiftEmptyArrayStorage;
        }

        if (([v65 fontHints] & 2) != 0)
        {
          (*(v191 + 56))(v56, 2, 6, v204);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v67 = v198;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v66 = sub_10000F248(0, v66[2] + 1, 1, v66);
          }

          v180 = v66[2];
          v179 = v66[3];
          if (v180 >= v179 >> 1)
          {
            v66 = sub_10000F248(v179 > 1, v180 + 1, 1, v66);
          }

          v66[2] = v180 + 1;
          sub_100032CA4(v56, v66 + ((*(v67 + 80) + 32) & ~*(v67 + 80)) + *(v67 + 72) * v180, type metadata accessor for MarkdownStyle);
        }

        else
        {

          v67 = v198;
        }

        v49 = v181;
        if (!*(a1 + 16))
        {
          goto LABEL_26;
        }

        goto LABEL_9;
      }
    }

    else
    {
    }
  }

  v66 = _swiftEmptyArrayStorage;
  v67 = v198;
  if (*(a1 + 16))
  {
LABEL_9:
    v68 = ICTTAttributeNameFontHints;
    v69 = sub_1000392C8(v68);
    if (v70)
    {
      sub_1000056E4(*(a1 + 56) + 32 * v69, &v207);

      if (swift_dynamicCast())
      {
        v71 = v49;
        v72 = v206;
        if ((v206 & 1) != 0 && (*v185 & 1) == 0)
        {
          v182 = v21;
          (*(v191 + 56))(v183, 1, 6, v204);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v66 = sub_10000F248(0, v66[2] + 1, 1, v66);
          }

          v74 = v66[2];
          v73 = v66[3];
          if (v74 >= v73 >> 1)
          {
            v66 = sub_10000F248(v73 > 1, v74 + 1, 1, v66);
          }

          v66[2] = v74 + 1;
          sub_100032CA4(v183, v66 + ((*(v67 + 80) + 32) & ~*(v67 + 80)) + *(v67 + 72) * v74, type metadata accessor for MarkdownStyle);
          v21 = v182;
        }

        if ((v72 & 2) != 0)
        {
          (*(v191 + 56))(v184, 2, 6, v204);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v66 = sub_10000F248(0, v66[2] + 1, 1, v66);
          }

          v76 = v66[2];
          v75 = v66[3];
          if (v76 >= v75 >> 1)
          {
            v66 = sub_10000F248(v75 > 1, v76 + 1, 1, v66);
          }

          v66[2] = v76 + 1;
          sub_100032CA4(v184, v66 + ((*(v67 + 80) + 32) & ~*(v67 + 80)) + *(v67 + 72) * v76, type metadata accessor for MarkdownStyle);
        }

        v49 = v71;
      }
    }

    else
    {
    }
  }

LABEL_26:
  if (*(a1 + 16))
  {
    v77 = ICTTAttributeNameUnderline;
    v78 = sub_1000392C8(v77);
    if (v79)
    {
      sub_1000056E4(*(a1 + 56) + 32 * v78, &v207);

      sub_1000058F0(&v207, &qword_1000A5AD0, &unk_10008B5E0);
      (*(v191 + 56))(v49, 4, 6, v204);
      v80 = v49;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        goto LABEL_162;
      }

      goto LABEL_29;
    }
  }

  v207 = 0u;
  v208 = 0u;
  sub_1000058F0(&v207, &qword_1000A5AD0, &unk_10008B5E0);
  if (*(a1 + 16))
  {
    goto LABEL_35;
  }

LABEL_43:
  v207 = 0u;
  v208 = 0u;
  sub_1000058F0(&v207, &qword_1000A5AD0, &unk_10008B5E0);
  if (*(a1 + 16))
  {
    goto LABEL_44;
  }

LABEL_52:
  v207 = 0u;
  v208 = 0u;
  sub_1000058F0(&v207, &qword_1000A5AD0, &unk_10008B5E0);
  if (*(a1 + 16))
  {
    goto LABEL_53;
  }

LABEL_62:
  v97 = v203;
  (*(v191 + 56))(v203, 1, 1, v204);
LABEL_63:
  sub_1000058F0(v97, &qword_1000A56E8, &qword_10008D350);
  if (!*(a1 + 16))
  {
    goto LABEL_68;
  }

LABEL_64:
  v113 = ICTTNSAttachmentAttributeName;
  v114 = sub_1000392C8(v113);
  if ((v115 & 1) == 0)
  {

    while (1)
    {
LABEL_68:
      v203 = a10;
      v117 = *a10;

      v119 = sub_10007A868(v118);

      v121 = sub_10007A868(v120);
      v189 = v66;

      if (*(v121 + 2) <= v119[2] >> 3)
      {
        *&v207 = v119;

        sub_10002C888(v121);
        v66 = v207;
      }

      else
      {

        v66 = sub_10002CA90(v121, v119);
      }

      v206 = v66;
      if (v119[2] <= *(v121 + 2) >> 3)
      {
        *&v207 = v121;

        sub_10002C888(v119);

        v122 = v207;
      }

      else
      {

        v122 = sub_10002CA90(v119, v121);
      }

      a1 = v196;
      v205 = v122;
      v80 = *v203;
      v123 = *(*v203 + 16);
      v193 = v30;
      if (!v123)
      {

LABEL_88:
        v130 = *v203;
        v131 = *(*v203 + 16);
        v132 = v199;
        v133 = v201;
        if (v131)
        {
          v134 = v206;
          v135 = v130 + ((*(v67 + 80) + 32) & ~*(v67 + 80));
          v136 = (v191 + 48);
          v195 = (v191 + 8);
          v196 = (v191 + 32);

          while (v131 <= *(v130 + 16))
          {
            --v131;
            sub_100032EB8(v135 + *(v67 + 72) * v131, v133, type metadata accessor for MarkdownStyle);
            if (sub_100029E10(v133, v134))
            {
              sub_100032EB8(v133, v132, type metadata accessor for MarkdownStyle);
              v144 = (*v136)(v132, 6, v204);
              if (v144 > 2)
              {
                v137 = 32382;
                if (v144 != 5)
                {
                  v137 = 15677;
                }

                v138 = 0xE200000000000000;
                v139 = 2763306;
                if (v144 == 3)
                {
                  v138 = 0xE300000000000000;
                }

                else
                {
                  v139 = 11051;
                }

                v140 = v144 <= 4;
                if (v144 <= 4)
                {
                  v141._countAndFlagsBits = v139;
                }

                else
                {
                  v141._countAndFlagsBits = v137;
                }

                if (v140)
                {
                  v142 = v138;
                }

                else
                {
                  v142 = 0xE200000000000000;
                }
              }

              else if (v144)
              {
                v145 = v144 == 1;
                if (v144 == 1)
                {
                  v141._countAndFlagsBits = 10794;
                }

                else
                {
                  v141._countAndFlagsBits = 42;
                }

                if (v145)
                {
                  v142 = 0xE200000000000000;
                }

                else
                {
                  v142 = 0xE100000000000000;
                }
              }

              else
              {
                v146 = v197;
                v147 = v204;
                (*v196)(v197, v199, v204);
                *&v207 = 10333;
                *(&v207 + 1) = 0xE200000000000000;
                sub_100031408(&qword_1000A5AD8, &type metadata accessor for URL);
                v210._countAndFlagsBits = sub_100085908();
                sub_100085158(v210);

                v211._countAndFlagsBits = 41;
                v211._object = 0xE100000000000000;
                sub_100085158(v211);
                v142 = *(&v207 + 1);
                v148 = v207;
                v149 = v146;
                v150 = v147;
                v67 = v198;
                v132 = v199;
                (*v195)(v149, v150);
                v141._countAndFlagsBits = v148;
              }

              v141._object = v142;
              sub_100085158(v141);

              v143 = v200;
              sub_10002A4D8(*(*v203 + 16) - 1, v200);
              sub_100032F20(v143, type metadata accessor for MarkdownStyle);
              v133 = v201;
            }

            sub_100032F20(v133, type metadata accessor for MarkdownStyle);
            if (!v131)
            {
              goto LABEL_115;
            }
          }

          __break(1u);
LABEL_115:

          v30 = v193;
        }

        v151 = v189[2];
        if (v151)
        {
          v152 = v205;
          v153 = (*(v67 + 80) + 32) & ~*(v67 + 80);
          v154 = v189 + v153;
          v155 = (v191 + 48);
          v156 = *(v67 + 72);
          do
          {
            sub_100032EB8(v154, v30, type metadata accessor for MarkdownStyle);
            if (sub_100029E10(v30, v152))
            {
              v157 = v192;
              sub_100032EB8(v30, v192, type metadata accessor for MarkdownStyle);
              v158 = (*v155)(v157, 6, v204);
              if (v158 <= 2)
              {
                if (v158)
                {
                  v165 = v158 == 1;
                  if (v158 == 1)
                  {
                    v163._countAndFlagsBits = 10794;
                  }

                  else
                  {
                    v163._countAndFlagsBits = 42;
                  }

                  if (v165)
                  {
                    v164 = 0xE200000000000000;
                  }

                  else
                  {
                    v164 = 0xE100000000000000;
                  }
                }

                else
                {
                  sub_100032F20(v192, type metadata accessor for MarkdownStyle);
                  v164 = 0xE100000000000000;
                  v163._countAndFlagsBits = 91;
                }
              }

              else
              {
                v159 = 32382;
                if (v158 != 5)
                {
                  v159 = 15677;
                }

                v160 = 2763306;
                if (v158 != 3)
                {
                  v160 = 11051;
                }

                v161 = 0xE300000000000000;
                if (v158 != 3)
                {
                  v161 = 0xE200000000000000;
                }

                v162 = v158 <= 4;
                if (v158 <= 4)
                {
                  v163._countAndFlagsBits = v160;
                }

                else
                {
                  v163._countAndFlagsBits = v159;
                }

                if (v162)
                {
                  v164 = v161;
                }

                else
                {
                  v164 = 0xE200000000000000;
                }
              }

              v163._object = v164;
              sub_100085158(v163);

              sub_100032EB8(v30, v194, type metadata accessor for MarkdownStyle);
              v166 = v203;
              v167 = *v203;
              v168 = swift_isUniquelyReferenced_nonNull_native();
              *v166 = v167;
              if ((v168 & 1) == 0)
              {
                v167 = sub_10000F248(0, v167[2] + 1, 1, v167);
                *v203 = v167;
              }

              v170 = v167[2];
              v169 = v167[3];
              if (v170 >= v169 >> 1)
              {
                v174 = sub_10000F248(v169 > 1, v170 + 1, 1, v167);
                *v203 = v174;
              }

              v171 = v193;
              sub_100032F20(v193, type metadata accessor for MarkdownStyle);
              v172 = *v203;
              *(v172 + 16) = v170 + 1;
              v173 = v172 + v153 + v170 * v156;
              v30 = v171;
              sub_100032CA4(v194, v173, type metadata accessor for MarkdownStyle);
            }

            else
            {
              sub_100032F20(v30, type metadata accessor for MarkdownStyle);
            }

            v154 += v156;
            --v151;
          }

          while (v151);
        }

        v212._countAndFlagsBits = v188;
        v212._object = v190;
        sub_100085158(v212);
      }

      v30 = v121;
      v21 = (v80 + ((*(v67 + 80) + 32) & ~*(v67 + 80)));

      v124 = 0;
      v125 = 0;
      while (v125 < *(v80 + 16))
      {
        sub_100032EB8(&v21[*(v67 + 72) * v125], a1, type metadata accessor for MarkdownStyle);
        v126 = sub_100029E10(a1, v66);
        if (v124)
        {
          if (v126)
          {
            goto LABEL_77;
          }

          v127 = v187;
          sub_100032EB8(a1, v187, type metadata accessor for MarkdownStyle);
          v128 = v200;
          sub_1000769E4(v200, v127);
          a1 = v196;
          sub_100032F20(v128, type metadata accessor for MarkdownStyle);
          if (sub_100029E10(a1, v30))
          {
            sub_100032EB8(a1, v127, type metadata accessor for MarkdownStyle);
            sub_1000769E4(v128, v127);
            a1 = v196;
            sub_100032F20(v128, type metadata accessor for MarkdownStyle);
            v129 = a1;
            goto LABEL_84;
          }

LABEL_83:
          v129 = a1;
LABEL_84:
          sub_100032F20(v129, type metadata accessor for MarkdownStyle);
          if (v123 - 1 == v125)
          {
LABEL_86:

            v30 = v193;
            goto LABEL_88;
          }

          v66 = v206;
          ++v125;
          v124 = 1;
        }

        else
        {
          if (v126)
          {
            goto LABEL_83;
          }

LABEL_77:
          ++v125;
          sub_100032F20(a1, type metadata accessor for MarkdownStyle);
          if (v123 == v125)
          {
            goto LABEL_86;
          }
        }
      }

      __break(1u);
LABEL_162:
      v66 = sub_10000F248(0, v66[2] + 1, 1, v66);
LABEL_29:
      v82 = v66[2];
      v81 = v66[3];
      if (v82 >= v81 >> 1)
      {
        v66 = sub_10000F248(v81 > 1, v82 + 1, 1, v66);
      }

      v66[2] = v82 + 1;
      sub_100032CA4(v80, v66 + ((*(v67 + 80) + 32) & ~*(v67 + 80)) + *(v67 + 72) * v82, type metadata accessor for MarkdownStyle);
      if (!*(a1 + 16))
      {
        goto LABEL_43;
      }

LABEL_35:
      v83 = ICTTAttributeNameStrikethrough;
      v84 = sub_1000392C8(v83);
      if ((v85 & 1) == 0)
      {

        goto LABEL_43;
      }

      sub_1000056E4(*(a1 + 56) + 32 * v84, &v207);

      sub_1000058F0(&v207, &qword_1000A5AD0, &unk_10008B5E0);
      (*(v191 + 56))(v193, 5, 6, v204);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v66 = sub_10000F248(0, v66[2] + 1, 1, v66);
      }

      v87 = v66[2];
      v86 = v66[3];
      if (v87 >= v86 >> 1)
      {
        v66 = sub_10000F248(v86 > 1, v87 + 1, 1, v66);
      }

      v66[2] = v87 + 1;
      sub_100032CA4(v193, v66 + ((*(v67 + 80) + 32) & ~*(v67 + 80)) + *(v67 + 72) * v87, type metadata accessor for MarkdownStyle);
      if (!*(a1 + 16))
      {
        goto LABEL_52;
      }

LABEL_44:
      v88 = ICTTAttributeNameEmphasis;
      v89 = sub_1000392C8(v88);
      if ((v90 & 1) == 0)
      {

        goto LABEL_52;
      }

      sub_1000056E4(*(a1 + 56) + 32 * v89, &v207);

      sub_1000058F0(&v207, &qword_1000A5AD0, &unk_10008B5E0);
      (*(v191 + 56))(v195, 6, 6, v204);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v66 = sub_10000F248(0, v66[2] + 1, 1, v66);
      }

      v92 = v66[2];
      v91 = v66[3];
      if (v92 >= v91 >> 1)
      {
        v66 = sub_10000F248(v91 > 1, v92 + 1, 1, v66);
      }

      v66[2] = v92 + 1;
      sub_100032CA4(v195, v66 + ((*(v67 + 80) + 32) & ~*(v67 + 80)) + *(v67 + 72) * v92, type metadata accessor for MarkdownStyle);
      if (!*(a1 + 16))
      {
        goto LABEL_62;
      }

LABEL_53:
      v93 = ICTTNSLinkAttributeName;
      v94 = sub_1000392C8(v93);
      if ((v95 & 1) == 0)
      {

        goto LABEL_62;
      }

      v182 = v21;
      sub_1000056E4(*(a1 + 56) + 32 * v94, &v207);

      v97 = v203;
      v96 = v204;
      v98 = swift_dynamicCast();
      v99 = v66;
      v100 = v191;
      v101 = *(v191 + 56);
      v101(v97, v98 ^ 1u, 1, v96);
      v102 = v100;
      v66 = v99;
      if ((*(v102 + 48))(v97, 1, v96) == 1)
      {
        goto LABEL_63;
      }

      v103 = v191;
      v104 = v97;
      v105 = v182;
      v106 = v204;
      (*(v191 + 32))(v182, v104, v204);
      v107 = v103;
      v108 = v99;
      v109 = v186;
      (*(v107 + 16))(v186, v105, v106);
      v101(v109, 0, 6, v106);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v108 = sub_10000F248(0, v108[2] + 1, 1, v108);
      }

      v111 = v108[2];
      v110 = v108[3];
      v112 = v108;
      if (v111 >= v110 >> 1)
      {
        v112 = sub_10000F248(v110 > 1, v111 + 1, 1, v108);
      }

      (*(v191 + 8))(v182, v204);
      *(v112 + 16) = v111 + 1;
      v66 = v112;
      sub_100032CA4(v109, v112 + ((*(v67 + 80) + 32) & ~*(v67 + 80)) + *(v67 + 72) * v111, type metadata accessor for MarkdownStyle);
      if (*(a1 + 16))
      {
        goto LABEL_64;
      }
    }
  }

  sub_1000056E4(*(a1 + 56) + 32 * v114, &v207);

  sub_100008250(0, &qword_1000A5C28, ICTTAttachment_ptr);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_68;
  }

  v116 = v206;

  v209._countAndFlagsBits = sub_1000296BC(v116, v189, a9);
  sub_100085158(v209);
}

NSObject *sub_1000296BC(void *a1, char a2, void *a3)
{
  v6 = sub_100084568();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v64[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = sub_1000847C8();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v64[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if ([objc_opt_self() isInlineAttachment:a1])
  {
    v16 = [a1 inlineAttachmentInContext:a3];
    if (v16)
    {
      v17 = v16;
      v18 = [v16 displayText];
      v19 = sub_100085098();

      return v19;
    }

    if (qword_1000A5400 != -1)
    {
      swift_once();
    }

    v25 = sub_100084FB8();
    sub_10000B614(v25, qword_1000A5BF8);
    v26 = a1;
    v21 = sub_100084FA8();
    v27 = sub_100085368();

    if (os_log_type_enabled(v21, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      *v28 = 138412290;
      *(v28 + 4) = v26;
      *v29 = v26;
      v30 = v26;
      _os_log_impl(&_mh_execute_header, v21, v27, "Cannot resolve inline attachment — skipping {attachment: %@}", v28, 0xCu);
      sub_1000058F0(v29, &qword_1000A5C30, &qword_10008B850);
    }

    goto LABEL_40;
  }

  result = [a1 attachmentInContext:a3];
  if (!result)
  {
    return result;
  }

  v21 = result;
  if ([result isTable]&& a2 == 2)
  {
    v22 = [v21 tableModel];
    sub_10002A758(v22, a3);
    v24 = v23;

    return v24;
  }

  if ([v21 isURL]&& (v31 = [v21 URL]) != 0)
  {
    v32 = v31;
    sub_100084768();

    v68 = 91;
    v69 = 0xE100000000000000;
    v33 = [v21 title];
    if (v33)
    {
      v34 = v33;
      v35 = sub_100085098();
      object = v36;

      v38._countAndFlagsBits = v35;
    }

    else
    {
      v38._countAndFlagsBits = sub_1000846A8();
      object = v38._object;
    }

    v38._object = object;
    sub_100085158(v38);

    v74._countAndFlagsBits = 10333;
    v74._object = 0xE200000000000000;
    sub_100085158(v74);
    sub_100031408(&qword_1000A5AD8, &type metadata accessor for URL);
    v75._countAndFlagsBits = sub_100085908();
    sub_100085158(v75);

    v76._countAndFlagsBits = 41;
    v76._object = 0xE100000000000000;
    sub_100085158(v76);

    v63 = v68;
    (*(v12 + 8))(v15, v11);
    return v63;
  }

  else
  {
    v39 = ([v21 hasFallbackImage]& 1) != 0 || ([v21 hasFallbackPDF]& 1) != 0 || [v21 attachmentType]== 3 || [v21 attachmentType]== 5;
    v65 = v39;
    v40 = [v21 title];
    if (!v40)
    {
      v40 = [v21 userTitle];
      if (!v40)
      {
        v40 = [v21 defaultTitle];
      }
    }

    v41 = v40;
    v42 = sub_100085098();
    v44 = v43;

    v45 = sub_100067784();
    if (!v46)
    {

      if (qword_1000A5400 != -1)
      {
        swift_once();
      }

      v59 = sub_100084FB8();
      sub_10000B614(v59, qword_1000A5BF8);
      v60 = sub_100084FA8();
      v61 = sub_100085378();
      if (os_log_type_enabled(v60, v61))
      {
        v62 = swift_slowAlloc();
        *v62 = 0;
        _os_log_impl(&_mh_execute_header, v60, v61, "could not get filename for attachment we're exporting", v62, 2u);
      }

LABEL_40:
      return 0;
    }

    v47 = v45;
    v48 = v46;
    v68 = 0;
    v69 = 0xE000000000000000;
    if (a2 == 1)
    {
      v49._countAndFlagsBits = 0x656D686361747461;
    }

    else
    {
      v49._countAndFlagsBits = 0x656D686361747441;
    }

    v49._object = 0xEC0000002F73746ELL;
    sub_100085158(v49);

    v66 = v47;
    v67 = v48;
    sub_100084548();
    sub_10001D33C();
    v50 = sub_100085518();
    v52 = v51;
    (*(v7 + 8))(v10, v6);

    if (v52)
    {
      v53._countAndFlagsBits = v50;
    }

    else
    {
      v53._countAndFlagsBits = 0;
    }

    if (v52)
    {
      v54 = v52;
    }

    else
    {
      v54 = 0xE000000000000000;
    }

    v53._object = v54;
    sub_100085158(v53);

    v56 = v68;
    v55 = v69;
    if (v65)
    {
      v57 = 23329;
      v58 = 0xE200000000000000;
    }

    else
    {
      v57 = 91;
      v58 = 0xE100000000000000;
    }

    v68 = v57;
    v69 = v58;
    v70._countAndFlagsBits = v42;
    v70._object = v44;
    sub_100085158(v70);

    v71._countAndFlagsBits = 10333;
    v71._object = 0xE200000000000000;
    sub_100085158(v71);
    v72._countAndFlagsBits = v56;
    v72._object = v55;
    sub_100085158(v72);

    v73._countAndFlagsBits = 41;
    v73._object = 0xE100000000000000;
    sub_100085158(v73);

    return v68;
  }
}

uint64_t sub_100029E10(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000847C8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v35[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v45 = sub_100005740(&qword_1000A5C60, &qword_10008B870);
  v9 = *(*(v45 - 8) + 64);
  __chkstk_darwin(v45);
  v11 = &v35[-v10];
  v12 = type metadata accessor for MarkdownStyle(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = __chkstk_darwin(v12 - 8);
  v17 = &v35[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v15);
  v19 = &v35[-v18];
  if (!*(a2 + 16))
  {
    return 0;
  }

  v39 = v5;
  v20 = *(a2 + 40);
  sub_100085A08();
  sub_10002656C();
  v21 = sub_100085A38();
  v22 = a2 + 56;
  v23 = -1 << *(a2 + 32);
  v24 = v21 & ~v23;
  if (((*(a2 + 56 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24) & 1) == 0)
  {
    return 0;
  }

  v40 = v17;
  v44 = a1;
  v25 = ~v23;
  v26 = *(v13 + 72);
  v42 = v25;
  v43 = v26;
  v27 = (v39 + 6);
  v41 = (v39 + 1);
  v38 = v8;
  v39 += 4;
  while (1)
  {
    sub_100032EB8(*(a2 + 48) + v43 * v24, v19, type metadata accessor for MarkdownStyle);
    v28 = *(v45 + 48);
    sub_100032EB8(v19, v11, type metadata accessor for MarkdownStyle);
    sub_100032EB8(v44, &v11[v28], type metadata accessor for MarkdownStyle);
    v29 = *v27;
    v30 = (*v27)(v11, 6, v4);
    if (v30 > 2)
    {
      if (v30 > 4)
      {
        if (v30 == 5)
        {
          sub_100032F20(v19, type metadata accessor for MarkdownStyle);
          if (v29(&v11[v28], 6, v4) == 5)
          {
            goto LABEL_29;
          }
        }

        else
        {
          sub_100032F20(v19, type metadata accessor for MarkdownStyle);
          if (v29(&v11[v28], 6, v4) == 6)
          {
            goto LABEL_29;
          }
        }
      }

      else if (v30 == 3)
      {
        sub_100032F20(v19, type metadata accessor for MarkdownStyle);
        if (v29(&v11[v28], 6, v4) == 3)
        {
          goto LABEL_29;
        }
      }

      else
      {
        sub_100032F20(v19, type metadata accessor for MarkdownStyle);
        if (v29(&v11[v28], 6, v4) == 4)
        {
          goto LABEL_29;
        }
      }

      goto LABEL_23;
    }

    if (v30)
    {
      if (v30 == 1)
      {
        sub_100032F20(v19, type metadata accessor for MarkdownStyle);
        if (v29(&v11[v28], 6, v4) == 1)
        {
          goto LABEL_29;
        }
      }

      else
      {
        sub_100032F20(v19, type metadata accessor for MarkdownStyle);
        if (v29(&v11[v28], 6, v4) == 2)
        {
          goto LABEL_29;
        }
      }

      goto LABEL_23;
    }

    v31 = v40;
    sub_100032EB8(v11, v40, type metadata accessor for MarkdownStyle);
    if (!v29(&v11[v28], 6, v4))
    {
      break;
    }

    sub_100032F20(v19, type metadata accessor for MarkdownStyle);
    (*v41)(v31, v4);
    v25 = v42;
LABEL_23:
    sub_1000058F0(v11, &qword_1000A5C60, &qword_10008B870);
LABEL_24:
    v24 = (v24 + 1) & v25;
    if (((*(v22 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24) & 1) == 0)
    {
      return 0;
    }
  }

  v32 = v38;
  (*v39)(v38, &v11[v28], v4);
  v36 = sub_100084758();
  v37 = v22;
  v33 = *v41;
  (*v41)(v32, v4);
  sub_100032F20(v19, type metadata accessor for MarkdownStyle);
  v33(v31, v4);
  v22 = v37;
  v25 = v42;
  if ((v36 & 1) == 0)
  {
    sub_100032F20(v11, type metadata accessor for MarkdownStyle);
    goto LABEL_24;
  }

LABEL_29:
  sub_100032F20(v11, type metadata accessor for MarkdownStyle);
  return 1;
}

uint64_t sub_10002A3E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v6 = *(a3 + 40);
  sub_100085A08();
  sub_100085118();
  v7 = sub_100085A38();
  v8 = -1 << *(a3 + 32);
  v9 = v7 & ~v8;
  if (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
    return 0;
  }

  v10 = ~v8;
  while (1)
  {
    v11 = (*(a3 + 48) + 16 * v9);
    v12 = *v11 == a1 && v11[1] == a2;
    if (v12 || (sub_100085948() & 1) != 0)
    {
      break;
    }

    v9 = (v9 + 1) & v10;
    if (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

size_t sub_10002A4D8@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_10002E11C(v5);
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
    v9 = *(type metadata accessor for MarkdownStyle(0) - 8);
    v10 = *(v9 + 72);
    v11 = v5 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + v10 * a1;
    result = sub_100032CA4(v11, a2, type metadata accessor for MarkdownStyle);
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

uint64_t sub_10002A60C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *(a1 + 32);
  v9 = *(a1 + 40);

  v10(a2, a3, a4, a5);
}

uint64_t sub_10002A6AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *(a1 + 32);
  v9 = *(a1 + 40);
  if (a2)
  {
    ObjectType = swift_getObjectType();
    *&v12 = a2;
    sub_10001C864(&v12, v14);
  }

  else
  {
    memset(v14, 0, sizeof(v14));
  }

  swift_unknownObjectRetain();
  v10(v14, a3, a4, a5);
  return sub_1000058F0(v14, &qword_1000A5AD0, &unk_10008B5E0);
}

void sub_10002A758(void *a1, void *a2)
{
  v44[0] = 0;
  v44[1] = 0xE000000000000000;
  v43 = &_swiftEmptyDictionarySingleton;
  if (a1)
  {
    v3 = a1;
    v4 = [v3 table];
    v5 = swift_allocObject();
    v5[2] = &v43;
    v5[3] = v3;
    v5[4] = a2;
    v6 = swift_allocObject();
    *(v6 + 16) = sub_100032D4C;
    *(v6 + 24) = v5;
    v41 = sub_100032D58;
    v42 = v6;
    aBlock = _NSConcreteStackBlock;
    v38 = 1107296256;
    v39 = sub_100055E30;
    v40 = &unk_10009F200;
    v7 = _Block_copy(&aBlock);
    v8 = v3;
    v9 = a2;

    [v4 enumerateColumnsWithBlock:v7];

    _Block_release(v7);
    LOBYTE(a2) = swift_isEscapingClosureAtFileLocation();

    if (a2)
    {
LABEL_24:
      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
    }

    else
    {
      v10 = 0;
      v11 = 0;
      v12 = 1 << v43[32];
      v13 = -1;
      if (v12 < 64)
      {
        v13 = ~(-1 << v12);
      }

      v14 = v13 & *(v43 + 8);
      v15 = (v12 + 63) >> 6;
      do
      {
        if (!v14)
        {
          while (1)
          {
            v16 = v11 + 1;
            if (__OFADD__(v11, 1))
            {
              break;
            }

            if (v16 >= v15)
            {
              goto LABEL_15;
            }

            v14 = *&v43[8 * v16 + 64];
            ++v11;
            if (v14)
            {
              v11 = v16;
              goto LABEL_12;
            }
          }

          __break(1u);
          goto LABEL_24;
        }

        v16 = v11;
LABEL_12:
        v17 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
        v18 = *(*(v43 + 7) + ((v16 << 9) | (8 * v17)));
        v19 = __OFADD__(v10, v18);
        v10 += v18;
      }

      while (!v19);
      __break(1u);
LABEL_15:
      v20 = [v8 table];
      v21 = [v20 columnCount];

      v22 = v21 - 1;
      if (__OFSUB__(v21, 1))
      {
        goto LABEL_25;
      }

      v23 = (v22 * 3) >> 64;
      v24 = 3 * v22;
      if (v23 != v24 >> 63)
      {
        goto LABEL_26;
      }

      v19 = __OFADD__(v10, v24);
      v25 = v10 + v24;
      if (!v19)
      {
        v19 = __OFADD__(v25, 4);
        v26 = v25 + 4;
        if (v19)
        {
          goto LABEL_28;
        }

        v27 = v26 < 80;
        v45._countAndFlagsBits = 10;
        v45._object = 0xE100000000000000;
        sub_100085158(v45);
        v36 = 1;
        v28 = [v8 table];
        v29 = swift_allocObject();
        *(v29 + 16) = v8;
        *(v29 + 24) = v9;
        *(v29 + 32) = v27;
        *(v29 + 40) = &v43;
        *(v29 + 48) = v44;
        *(v29 + 56) = &v36;
        v30 = swift_allocObject();
        *(v30 + 16) = sub_100032DA0;
        *(v30 + 24) = v29;
        v41 = sub_100035D2C;
        v42 = v30;
        aBlock = _NSConcreteStackBlock;
        v38 = 1107296256;
        v39 = sub_100055E30;
        v40 = &unk_10009F278;
        v31 = _Block_copy(&aBlock);
        v32 = v8;
        v33 = v9;

        [v28 enumerateRowsWithBlock:v31];

        _Block_release(v31);
        LOBYTE(v32) = swift_isEscapingClosureAtFileLocation();

        if ((v32 & 1) == 0)
        {

          v34 = sub_100032DA0;
          v35 = sub_100032D4C;
          goto LABEL_22;
        }

        goto LABEL_29;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
    return;
  }

  v35 = 0;
  v34 = 0;
LABEL_22:

  sub_10000852C(v35);
  sub_10000852C(v34);
}

uint64_t sub_10002ABF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, void *a5, void *a6)
{
  v10 = sub_100084948();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = aBlock - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *a4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  aBlock[0] = *a4;
  *a4 = 0x8000000000000000;
  sub_10003B204(0, a2, isUniquelyReferenced_nonNull_native);
  v17 = *a4;
  *a4 = aBlock[0];

  v18 = [a5 table];
  sub_100084938();
  sub_100084928(v19);
  v21 = v20;
  (*(v11 + 8))(v14, v10);
  v22 = swift_allocObject();
  v22[2] = a6;
  v22[3] = a4;
  v22[4] = a2;
  v23 = swift_allocObject();
  *(v23 + 16) = sub_100032EAC;
  *(v23 + 24) = v22;
  aBlock[4] = sub_100035C94;
  aBlock[5] = v23;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10002B0AC;
  aBlock[3] = &unk_10009F3E0;
  v24 = _Block_copy(aBlock);
  v25 = a6;

  [v18 enumerateCellObjectsInCellSelectionContainingColumnIndices:v21 rowIndices:0 copyItems:0 usingBlock:v24];

  _Block_release(v24);
  LOBYTE(a6) = swift_isEscapingClosureAtFileLocation();

  if (a6)
  {
    __break(1u);
  }

  return result;
}

id sub_10002AE80(id result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t a7)
{
  if (result)
  {
    v21 = result;
    result = [result attributedString];
    if (!result)
    {
      __break(1u);
      return result;
    }

    v10 = result;
    v11 = [result ic_attributedStringByFlatteningInlineAttachmentsWithContext:a5];
    v12 = [v11 string];

    sub_100085098();
    sub_10001D33C();
    sub_100085508();

    sub_100085508();

    v13 = sub_100085128();
    v14 = *a6;
    if (*(*a6 + 16) && (v15 = sub_1000391B0(a7), (v16 & 1) != 0))
    {
      if (*(*(v14 + 56) + 8 * v15) >= v13)
      {
        goto LABEL_9;
      }
    }

    else if (v13 <= 0)
    {
      goto LABEL_9;
    }

    v17 = sub_100085128();

    v18 = *a6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22 = *a6;
    *a6 = 0x8000000000000000;
    sub_10003B204(v17, a7, isUniquelyReferenced_nonNull_native);
    v20 = *a6;
    *a6 = v22;
LABEL_9:

    return v21;
  }

  return result;
}

id sub_10002B0AC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *(a1 + 32);
  v9 = *(a1 + 40);
  v11 = a2;
  v12 = v10(a2, a3, a4, a5);

  return v12;
}

uint64_t sub_10002B130(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5, char a6, uint64_t a7, uint64_t a8, _BYTE *a9)
{
  v14 = sub_100084948();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = &aBlock - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = 0;
  v43 = 0xE000000000000000;
  v19 = [a4 table];
  sub_100084938();
  sub_100084928(v20);
  v22 = v21;
  (*(v15 + 8))(v18, v14);
  v23 = swift_allocObject();
  *(v23 + 16) = &v42;
  *(v23 + 24) = a5;
  *(v23 + 32) = a6;
  *(v23 + 40) = a7;
  *(v23 + 48) = a4;
  v24 = swift_allocObject();
  *(v24 + 16) = sub_100032E14;
  *(v24 + 24) = v23;
  v40 = sub_100032E44;
  v41 = v24;
  aBlock = _NSConcreteStackBlock;
  v37 = 1107296256;
  v38 = sub_10002B0AC;
  v39 = &unk_10009F2F0;
  v25 = _Block_copy(&aBlock);
  v26 = a5;
  v27 = a4;

  [v19 enumerateCellObjectsInCellSelectionContainingColumnIndices:0 rowIndices:v22 copyItems:0 usingBlock:v25];

  _Block_release(v25);
  LOBYTE(v22) = swift_isEscapingClosureAtFileLocation();

  if (v22)
  {
    __break(1u);
  }

  else
  {
    v29 = v42;
    v30 = v43;

    v44._countAndFlagsBits = v29;
    v44._object = v30;
    sub_100085158(v44);

    v45._countAndFlagsBits = 10;
    v45._object = 0xE100000000000000;
    sub_100085158(v45);
    if (*a9 != 1)
    {
      v35 = 0;
      goto LABEL_6;
    }

    v31 = [v27 table];
    v32 = swift_allocObject();
    *(v32 + 16) = a8;
    *(v32 + 24) = a7;
    v33 = swift_allocObject();
    *(v33 + 16) = sub_100032E6C;
    *(v33 + 24) = v32;
    v40 = sub_100035D2C;
    v41 = v33;
    aBlock = _NSConcreteStackBlock;
    v37 = 1107296256;
    v38 = sub_100055E30;
    v39 = &unk_10009F368;
    v34 = _Block_copy(&aBlock);

    [v31 enumerateColumnsWithBlock:v34];

    _Block_release(v34);
    LOBYTE(v31) = swift_isEscapingClosureAtFileLocation();

    if ((v31 & 1) == 0)
    {
      v46._countAndFlagsBits = 687136;
      v46._object = 0xE300000000000000;
      sub_100085158(v46);
      *a9 = 0;
      v35 = sub_100032E6C;
LABEL_6:

      return sub_10000852C(v35);
    }
  }

  __break(1u);
  return result;
}

void sub_10002B55C(void *a1, uint64_t a2, int a3, int a4, int a5, uint64_t a6, char a7, uint64_t *a8, id a9)
{
  if (a1)
  {
    v11 = a1;
    if (a2)
    {
      v12._countAndFlagsBits = 2128928;
      v12._object = 0xE300000000000000;
    }

    else
    {
      v12._countAndFlagsBits = 8316;
      v12._object = 0xE200000000000000;
    }

    sub_100085158(v12);
    v13 = [v11 attributedString];
    if (!v13)
    {
      goto LABEL_22;
    }

    v14 = v13;
    v15 = [v13 ic_attributedStringByFlatteningInlineAttachmentsWithContext:a6];
    v16 = [v15 string];

    sub_100085098();
    v17 = sub_10001D33C();
    sub_100085508();

    v30 = v17;
    v31 = v17;
    v29 = v17;
    v18 = sub_100085508();
    v20 = v19;

    v34._countAndFlagsBits = v18;
    v34._object = v20;
    sub_100085158(v34);
    if (a7)
    {
      v21 = *a8;
      if (*(*a8 + 16) && (v22 = sub_1000391B0(a2), (v23 & 1) != 0))
      {
        v24 = *(*(v21 + 56) + 8 * v22);
      }

      else
      {
        v24 = 0;
      }

      v25 = sub_100085128();

      v26 = v24 - v25;
      if (__OFSUB__(v24, v25))
      {
LABEL_21:
        __break(1u);
LABEL_22:
        __break(1u);
        return;
      }

      if (v26 < 1)
      {
LABEL_16:
        v27 = [a9 table];
        v28 = [v27 columnCount];

        if (!__OFSUB__(v28, 1))
        {
          if (v28 - 1 == a2)
          {
            v37._countAndFlagsBits = 31776;
            v37._object = 0xE200000000000000;
            sub_100085158(v37);
          }

          return;
        }

        __break(1u);
        goto LABEL_21;
      }

      v35._countAndFlagsBits = 32;
      v35._object = 0xE100000000000000;
      v36._countAndFlagsBits = sub_100085188(v35, v26);
      sub_100085158(v36);
    }

    goto LABEL_16;
  }
}

uint64_t sub_10002B814(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  if (a2)
  {
    v7._countAndFlagsBits = 2128928;
    v7._object = 0xE300000000000000;
  }

  else
  {
    v7._countAndFlagsBits = 8316;
    v7._object = 0xE200000000000000;
  }

  sub_100085158(v7);
  v8 = *a5;
  v9 = *(*a5 + 16);
  if (v9)
  {
    v10 = sub_1000391B0(a2);
    if (v11)
    {
      v9 = *(*(v8 + 56) + 8 * v10);
    }

    else
    {
      v9 = 0;
    }
  }

  if (v9 <= 1)
  {
    v12 = 1;
  }

  else
  {
    v12 = v9;
  }

  v15._countAndFlagsBits = 45;
  v15._object = 0xE100000000000000;
  v16._countAndFlagsBits = sub_100085188(v15, v12);
  sub_100085158(v16);
}

double sub_10002B8C4@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = v2;
  v5 = *v2;
  v6 = sub_1000392C8(a1);
  if (v7)
  {
    v8 = v6;
    v9 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v3;
    v13 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_10002C1D0();
      v11 = v13;
    }

    sub_10001C864((*(v11 + 56) + 32 * v8), a2);
    sub_10002B964(v8, v11);
    *v3 = v11;
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

void sub_10002B964(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_100085558() + 1) & ~v5;
    do
    {
      v10 = *(a2 + 40);
      v11 = *(*(a2 + 48) + 8 * v6);
      sub_100085098();
      sub_100085A08();
      v12 = v11;
      sub_100085118();
      v13 = sub_100085A38();

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        if (v14 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v14 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v14)
      {
LABEL_10:
        v15 = *(a2 + 48);
        v16 = (v15 + 8 * v3);
        v17 = (v15 + 8 * v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
        }

        v18 = *(a2 + 56);
        v19 = (v18 + 32 * v3);
        v20 = (v18 + 32 * v6);
        if (v3 != v6 || v19 >= v20 + 2)
        {
          v9 = v20[1];
          *v19 = *v20;
          v19[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }
}

uint64_t sub_10002BB2C(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_100085558() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = *(a2 + 48);
      v11 = (v10 + 8 * v6);
      v12 = *v11;
      result = sub_1000859F8();
      v13 = result & v7;
      if (v3 >= v8)
      {
        if (v13 >= v8 && v3 >= v13)
        {
LABEL_15:
          v16 = (v10 + 8 * v3);
          if (v3 != v6 || v16 >= v11 + 1)
          {
            *v16 = *v11;
          }

          v17 = *(a2 + 56);
          v18 = (v17 + 8 * v3);
          v19 = (v17 + 8 * v6);
          if (v3 != v6 || v18 >= v19 + 1)
          {
            *v18 = *v19;
            v3 = v6;
          }
        }
      }

      else if (v13 >= v8 || v3 >= v13)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }

  return result;
}

char *sub_10002BC9C()
{
  v1 = v0;
  v38 = sub_100005740(&qword_1000A58E8, &qword_10008B8B0);
  v40 = *(v38 - 8);
  v2 = *(v40 + 64);
  __chkstk_darwin(v38);
  v37 = &v32 - v3;
  sub_100005740(&qword_1000A5CB0, &unk_10008B8B8);
  v4 = *v0;
  v5 = sub_100085728();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v32 = v1;
    v33 = v4 + 64;
    if (v6 != v4 || result >= &v8[8 * v9])
    {
      result = memmove(result, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v39 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v34 = v40 + 32;
    v35 = v40 + 16;
    v36 = v4;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v41 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = v40;
        v21 = *(v40 + 72) * v19;
        v22 = v37;
        v23 = v38;
        (*(v40 + 16))(v37, *(v4 + 48) + v21, v38);
        v24 = 24 * v19;
        v25 = *(v4 + 56) + 24 * v19;
        v26 = *v25;
        v27 = *(v25 + 8);
        v28 = v39;
        v29 = *(v20 + 32);
        LOBYTE(v20) = *(v25 + 16);
        v29(*(v39 + 48) + v21, v22, v23);
        v30 = *(v28 + 56);
        v4 = v36;
        v31 = v30 + v24;
        *v31 = v26;
        *(v31 + 8) = v27;
        *(v31 + 16) = v20;
        result = sub_1000112CC(v26, v27, v20);
        v14 = v41;
      }

      while (v41);
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

        v1 = v32;
        v6 = v39;
        goto LABEL_18;
      }

      v18 = *(v33 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v41 = (v18 - 1) & v18;
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

char *sub_10002BF44()
{
  v1 = v0;
  v36 = sub_100084918();
  v38 = *(v36 - 8);
  v2 = *(v38 + 64);
  __chkstk_darwin(v36);
  v35 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100005740(&qword_1000A5C80, &qword_10008F8A0);
  v4 = *v0;
  v5 = sub_100085728();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v30 = v1;
    v31 = v4 + 64;
    if (v6 != v4 || result >= &v8[8 * v9])
    {
      result = memmove(result, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v37 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v32 = v38 + 32;
    v33 = v38 + 16;
    v34 = v4;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v39 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = v38;
        v21 = *(v38 + 72) * v19;
        v22 = v35;
        v23 = v36;
        (*(v38 + 16))(v35, *(v4 + 48) + v21, v36);
        v24 = 16 * v19;
        v25 = (*(v4 + 56) + 16 * v19);
        v26 = *v25;
        v27 = v25[1];
        v28 = v37;
        (*(v20 + 32))(*(v37 + 48) + v21, v22, v23);
        v29 = (*(v28 + 56) + v24);
        *v29 = v26;
        v29[1] = v27;
        v4 = v34;

        v14 = v39;
      }

      while (v39);
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

        v1 = v30;
        v6 = v37;
        goto LABEL_18;
      }

      v18 = *(v31 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v39 = (v18 - 1) & v18;
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

id sub_10002C1D0()
{
  v1 = v0;
  sub_100005740(&qword_1000A5CA0, &unk_10008B8A0);
  v2 = *v0;
  v3 = sub_100085728();
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
        sub_1000056E4(*(v2 + 56) + 32 * v17, v19);
        *(*(v4 + 48) + 8 * v17) = v18;
        sub_10001C864(v19, (*(v4 + 56) + 32 * v17));
        result = v18;
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

void *sub_10002C350()
{
  v1 = v0;
  sub_100005740(&qword_1000A5C58, &qword_10008B868);
  v2 = *v0;
  v3 = sub_100085728();
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + 8 * v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + 8 * v14);
      *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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