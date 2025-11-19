uint64_t sub_24FC0(uint64_t a1)
{
  v2[1] = a1;
  v5 = sub_C23B4();
  v4 = *(v5 - 8);
  v3 = (*(v4 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v5);
  v6 = v2 - v3;
  (*(v4 + 16))();
  return sub_C34F4();
}

uint64_t sub_25074(uint64_t a1)
{
  v3 = a1;
  v5 = type metadata accessor for INSiriSocialConversation();
  v4 = (*(*(v5 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v1 = __chkstk_darwin(v3);
  v6 = &v3 - v4;
  sub_2C670(v1, &v3 - v4);
  sub_2E660();
  return sub_C3504();
}

uint64_t sub_2510C(uint64_t a1)
{
  v2[1] = a1;
  v5 = sub_C1D34();
  v4 = *(v5 - 8);
  v3 = (*(v4 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v5);
  v6 = v2 - v3;
  (*(v4 + 16))();
  sub_2E5E0();
  return sub_C3504();
}

uint64_t sub_251C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[13] = a3;
  v3[12] = a2;
  v3[11] = a1;
  v3[7] = v3;
  v3[8] = 0;
  v3[9] = 0;
  v3[10] = 0;
  v3[8] = a2;
  v3[9] = a3;
  sub_C1D94();
  v4 = swift_projectBox();
  v3[14] = v4;
  v3[10] = v4;
  v5 = v3[7];

  return _swift_task_switch(sub_25294, 0);
}

uint64_t sub_25294()
{
  v6 = v0[14];
  v1 = v0[12];
  v0[7] = v0;
  v9 = v1[3];
  v10 = v1[4];
  sub_808C(v1, v9);
  v8 = swift_task_alloc();
  v0[15] = v8;
  *(v8 + 16) = v6;
  v2 = async function pointer to dispatch thunk of AuthoredFlowProviding.makeAuthoredFlow(flowDescriptor:extensions:)[1];
  v3 = swift_task_alloc();
  v7[16] = v3;
  *v3 = v7[7];
  v3[1] = sub_253AC;
  v4 = v7[13];

  return dispatch thunk of AuthoredFlowProviding.makeAuthoredFlow(flowDescriptor:extensions:)(v7 + 2, v4, &unk_C5DE0, v8, v9, v10);
}

uint64_t sub_253AC()
{
  v5 = *v0;
  v1 = *(*v0 + 128);
  v4 = *(*v0 + 120);
  *(v5 + 56) = *v0;

  v2 = *(v5 + 56);

  return _swift_task_switch(sub_254E4, 0);
}

uint64_t sub_254E4()
{
  v6 = v0[11];
  v0[7] = v0;
  v8 = v0[5];
  v5 = v0[6];
  v7 = sub_808C(v0 + 2, v8);
  v6[3] = v8;
  v6[4] = v5;
  v1 = sub_1CC64(v6);
  (*(*(v8 - 8) + 16))(v1, v7);
  sub_2560(v0 + 2);
  v2 = *(v0[7] + 8);
  v3 = v0[7];

  return v2();
}

uint64_t sub_255EC(uint64_t a1, uint64_t a2)
{
  v2[7] = a2;
  v2[6] = a1;
  v2[5] = v2;
  v3 = v2[5];
  return _swift_task_switch(sub_2561C, 0);
}

uint64_t sub_2561C()
{
  v4 = v0[7];
  v6 = v0[6];
  v0[5] = v0;
  swift_beginAccess();
  v7 = sub_C1D94();
  v5 = *(v7 - 8);
  (*(v5 + 16))(v6, v4);
  swift_endAccess();
  (*(v5 + 56))(v6, 0, 1, v7);
  v1 = *(v0[5] + 8);
  v2 = v0[5];

  return v1();
}

uint64_t sub_2574C(_BYTE *a1, _BYTE *a2)
{
  v198 = a2;
  v190 = a1;
  v174 = 0;
  v231 = 0;
  v230 = 0;
  v229 = 0;
  v214 = 0;
  v213 = 0;
  v209 = 0;
  v169 = 0;
  v170 = sub_C30A4();
  v171 = *(v170 - 8);
  v172 = v171;
  v3 = *(v171 + 64);
  __chkstk_darwin(0);
  v173 = &v64 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v175 = sub_C3234();
  v176 = *(v175 - 8);
  v177 = v176;
  v178 = *(v176 + 64);
  v5 = __chkstk_darwin(v174);
  v180 = (v178 + 15) & 0xFFFFFFFFFFFFFFF0;
  v179 = &v64 - v180;
  __chkstk_darwin(v5);
  v181 = &v64 - v180;
  v195 = sub_C1C64();
  v182 = *(v195 - 8);
  v193 = v182;
  v6 = *(v182 + 64);
  v7 = __chkstk_darwin(v190);
  v194 = &v64 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v230 = v7;
  v231 = v9;
  v229 = v2;
  v199 = *sub_537EC();

  v187 = v2 + 16;
  v197 = v222;
  sub_24F4(v2 + 16, v222);

  v184 = v223;
  v183 = v224;
  sub_808C(v197, v223);
  v10 = *(v183 + 8);
  v196 = &v219;
  v10(v184);
  v186 = v220;
  v185 = v221;
  sub_808C(v196, v220);
  sub_C1F34();

  v192 = v216;
  sub_24F4(v187, v216);

  v189 = v217;
  v188 = v218;
  sub_808C(v192, v217);
  v11 = *(v188 + 40);
  v191 = &v215;
  v11(v189);
  sub_550B0(v190, v198, v194, v191, v225);
  sub_2560(v191);
  sub_2560(v192);
  (*(v193 + 8))(v194, v195);
  sub_2560(v196);
  sub_2560(v197);

  if (v225[3])
  {
    v12 = v181;
    v139 = __dst;
    sub_BD6C(v225, __dst);
    v13 = sub_BF704();
    (*(v177 + 16))(v12, v13, v175);

    v148 = 32;
    v153 = 32;
    v154 = 7;
    v14 = swift_allocObject();
    v15 = v198;
    v16 = v14;
    v17 = v139;
    v145 = v16;
    *(v16 + 16) = v190;
    *(v16 + 24) = v15;
    v140 = v205;
    sub_24F4(v17, v205);
    v155 = swift_allocObject();
    sub_BD6C(v140, (v155 + 16));
    v168 = sub_C3224();
    v141 = v168;
    v167 = sub_C3874();
    v142 = v167;
    v149 = 17;
    v158 = swift_allocObject();
    v143 = v158;
    *(v158 + 16) = v148;
    v159 = swift_allocObject();
    v144 = v159;
    v151 = 8;
    *(v159 + 16) = 8;
    v18 = swift_allocObject();
    v19 = v145;
    v146 = v18;
    *(v18 + 16) = sub_1D834;
    *(v18 + 24) = v19;
    v20 = swift_allocObject();
    v21 = v146;
    v160 = v20;
    v147 = v20;
    *(v20 + 16) = sub_7BBC;
    *(v20 + 24) = v21;
    v161 = swift_allocObject();
    v150 = v161;
    *(v161 + 16) = v148;
    v162 = swift_allocObject();
    v152 = v162;
    *(v162 + 16) = v151;
    v22 = swift_allocObject();
    v23 = v155;
    v156 = v22;
    *(v22 + 16) = sub_2D2EC;
    *(v22 + 24) = v23;
    v24 = swift_allocObject();
    v25 = v156;
    v165 = v24;
    v157 = v24;
    *(v24 + 16) = sub_7BBC;
    *(v24 + 24) = v25;
    v166 = sub_21E8(&unk_EEFA0, &unk_C50F0);
    v163 = sub_C3C64();
    v164 = v26;

    v27 = v158;
    v28 = v164;
    *v164 = sub_7B48;
    v28[1] = v27;

    v29 = v159;
    v30 = v164;
    v164[2] = sub_7B48;
    v30[3] = v29;

    v31 = v160;
    v32 = v164;
    v164[4] = sub_7C08;
    v32[5] = v31;

    v33 = v161;
    v34 = v164;
    v164[6] = sub_7B48;
    v34[7] = v33;

    v35 = v162;
    v36 = v164;
    v164[8] = sub_7B48;
    v36[9] = v35;

    v37 = v164;
    v38 = v165;
    v164[10] = sub_7C08;
    v37[11] = v38;
    sub_4E48();

    if (os_log_type_enabled(v168, v167))
    {
      v39 = v169;
      v132 = sub_C3954();
      v129 = v132;
      v130 = sub_21E8(&qword_EE828, &qword_C5100);
      v133 = sub_5DD4(0);
      v131 = v133;
      v135 = 2;
      v134 = sub_5DD4(2);
      v204 = v132;
      v203 = v133;
      v202 = v134;
      v136 = &v204;
      sub_5E28(v135, &v204);
      sub_5E28(v135, v136);
      v200 = sub_7B48;
      v201 = v143;
      sub_5E3C(&v200, v136, &v203, &v202);
      v137 = v39;
      v138 = v39;
      if (v39)
      {
        v127 = 0;

        __break(1u);
      }

      else
      {
        v200 = sub_7B48;
        v201 = v144;
        sub_5E3C(&v200, &v204, &v203, &v202);
        v125 = 0;
        v126 = 0;
        v200 = sub_7C08;
        v201 = v147;
        sub_5E3C(&v200, &v204, &v203, &v202);
        v123 = 0;
        v124 = 0;
        v200 = sub_7B48;
        v201 = v150;
        sub_5E3C(&v200, &v204, &v203, &v202);
        v121 = 0;
        v122 = 0;
        v200 = sub_7B48;
        v201 = v152;
        sub_5E3C(&v200, &v204, &v203, &v202);
        v119 = 0;
        v120 = 0;
        v200 = sub_7C08;
        v201 = v157;
        sub_5E3C(&v200, &v204, &v203, &v202);
        v117 = 0;
        v118 = 0;
        _os_log_impl(&dword_0, v141, v142, "Overriding %s with %s", v129, 0x16u);
        sub_5E88(v131);
        sub_5E88(v134);
        sub_C3934();

        v128 = v117;
      }
    }

    else
    {
      v40 = v169;

      v128 = v40;
    }

    v113 = v128;

    (*(v177 + 8))(v181, v175);
    v109 = v227;
    v108 = v228;
    v110 = __dst;
    sub_808C(__dst, v227);
    (*(v108 + 8))(v109);
    v111 = sub_C3084();
    v112 = v41;
    (*(v172 + 8))(v173, v170);
    sub_2560(v110);
    v114 = v111;
    v115 = v112;
    v116 = v113;
  }

  else
  {
    sub_1FA80(v225);

    v213 = v190;
    v214 = v198;
    if (sub_29674())
    {
      v105 = &type metadata for String;
      v104 = sub_C3C64();
      v103 = v42;
      v102 = 1;
      v43 = sub_C3564("dalHello", 8uLL, 1);
      v44 = v102;
      v45 = v103;
      *v103 = v43;
      v45[1] = v46;
      v47 = sub_C3564("dalHelloSiri", 0xCuLL, v44);
      v48 = v102;
      v49 = v103;
      v103[2] = v47;
      v49[3] = v50;
      v51 = sub_C3564("dalGreetingAsSummons", 0x14uLL, v48);
      v52 = v103;
      v53 = v51;
      v54 = v104;
      v103[4] = v53;
      v52[5] = v55;
      sub_4E48();
      v106 = v54;
      v209 = v54;
      v208[3] = v54;
      v208[1] = v190;
      v208[2] = v198;
      v107 = sub_21E8(&qword_EEFE0, &qword_C5AB0);
      sub_1D00C();
      if (sub_C3684())
      {
        v56 = v179;
        v57 = sub_BF704();
        (*(v177 + 16))(v56, v57, v175);
        v100 = sub_C3224();
        v97 = v100;
        v99 = sub_C3874();
        v98 = v99;
        sub_21E8(&unk_EEFA0, &unk_C50F0);
        v101 = sub_C3C64();
        if (os_log_type_enabled(v100, v99))
        {
          v58 = v169;
          v88 = sub_C3954();
          v84 = v88;
          v85 = sub_21E8(&qword_EE828, &qword_C5100);
          v86 = 0;
          v89 = sub_5DD4(0);
          v87 = v89;
          v90 = sub_5DD4(v86);
          v208[0] = v88;
          v207 = v89;
          v206 = v90;
          v91 = 0;
          v92 = v208;
          sub_5E28(0, v208);
          sub_5E28(v91, v92);
          v205[6] = v101;
          v93 = &v64;
          __chkstk_darwin(&v64);
          v94 = &v64 - 6;
          *(&v64 - 4) = v59;
          *(&v64 - 3) = &v207;
          *(&v64 - 2) = &v206;
          v95 = sub_21E8(&unk_EEFB0, qword_C5110);
          sub_8128();
          sub_C3654();
          v96 = v58;
          if (v58)
          {
            __break(1u);
          }

          else
          {
            _os_log_impl(&dword_0, v97, v98, "Overwriting greeting intents", v84, 2u);
            v82 = 0;
            sub_5E88(v87);
            sub_5E88(v90);
            sub_C3934();

            v83 = v96;
          }
        }

        else
        {

          v83 = v169;
        }

        v80 = v83;

        (*(v177 + 8))(v179, v175);
        v213 = sub_C3564("greeting", 8uLL, 1);
        v214 = v60;

        v81 = v80;
      }

      else
      {
        v81 = v169;
      }

      v78 = v81;

      v79 = v78;
    }

    else
    {
      v79 = v169;
    }

    v77 = v79;
    v65 = 19;
    v70 = 1;
    v211 = sub_C3C44();
    v212 = v61;
    v232._countAndFlagsBits = sub_C3564("SocialConversation#", v65, v70);
    object = v232._object;
    v72 = &v211;
    sub_C3C34(v232);

    v67 = v213;
    v68 = v214;

    v210[0] = v67;
    v210[1] = v68;
    v69 = v210;
    sub_C3C24();
    sub_8224(v69);
    v233._countAndFlagsBits = sub_C3564("", 0, v70);
    v71 = v233._object;
    sub_C3C34(v233);

    v74 = v211;
    v73 = v212;

    sub_8224(v72);
    v75 = sub_C3544();
    v76 = v62;
    sub_8224(&v213);
    v114 = v75;
    v115 = v76;
    v116 = v77;
  }

  return v114;
}

uint64_t sub_268B4(uint64_t a1)
{
  v4 = a1;
  v11 = sub_C30A4();
  v8 = *(v11 - 8);
  v9 = v11 - 8;
  v5 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v1 = __chkstk_darwin(v4);
  v10 = &v4 - v5;
  v7 = v1[3];
  v6 = v1[4];
  sub_808C(v1, v7);
  (*(v6 + 8))(v7);
  v12 = sub_C3084();
  v13 = v2;
  (*(v8 + 8))(v10, v11);
  return v12;
}

uint64_t sub_269CC(uint64_t a1)
{
  v262 = a1;
  v2 = v1;
  v326 = v2;
  v315 = 0;
  v263 = sub_2D6A0;
  v264 = sub_7BBC;
  v265 = sub_7B48;
  v266 = sub_7B48;
  v267 = sub_7C08;
  v268 = sub_2D6A0;
  v269 = sub_7BBC;
  v270 = sub_1D834;
  v271 = sub_7BBC;
  v272 = sub_7B48;
  v273 = sub_7B48;
  v274 = sub_7C08;
  v275 = sub_7B48;
  v276 = sub_7B48;
  v277 = sub_7C08;
  v278 = sub_28D28;
  v279 = sub_2D6A0;
  v280 = sub_7BBC;
  v281 = sub_7B48;
  v282 = sub_7B48;
  v283 = sub_7C08;
  v284 = "Fatal error";
  v285 = "Unexpectedly found nil while unwrapping an Optional value";
  v286 = "SocialConversationFlowDelegatePlugin/SocialConversationFlowDelegatePlugin.swift";
  v394 = 0;
  v393 = 0;
  v379 = 0;
  v380 = 0;
  v367 = 0;
  v368 = 0;
  v287 = 0;
  v358 = 0;
  v355 = 0;
  v348 = 0;
  v349 = 0;
  v343 = 0;
  v307 = 0;
  v288 = sub_C1C44();
  v289 = *(v288 - 8);
  v290 = v288 - 8;
  v291 = (*(v289 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v288);
  v292 = v87 - v291;
  v293 = (*(*(sub_21E8(&qword_EF280, &qword_C6580) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v307);
  v294 = v87 - v293;
  v295 = sub_C1C64();
  v296 = *(v295 - 8);
  v297 = v295 - 8;
  v298 = (*(v296 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v295);
  v299 = v87 - v298;
  v300 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v87 - v298);
  v301 = v87 - v300;
  v302 = sub_21E8(&qword_EF288, &qword_C5C10);
  v303 = *(v302 - 8);
  v304 = v302 - 8;
  v305 = (*(v303 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v307);
  v306 = v87 - v305;
  v308 = sub_C1D34();
  v310 = *(v308 - 8);
  v309 = v308 - 8;
  v311 = v310;
  v312 = *(v310 + 64);
  v313 = (v312 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v307);
  v314 = v87 - v313;
  v316 = sub_C3234();
  v317 = *(v316 - 8);
  v318 = v316 - 8;
  v322 = *(v317 + 64);
  v319 = (v322 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v316);
  v320 = v87 - v319;
  v321 = (v322 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v87 - v319);
  v323 = v87 - v321;
  v324 = (v322 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v87 - v321);
  v325 = v87 - v324;
  v394 = a1;
  v393 = v5;
  v327 = &v392;
  swift_beginAccess();
  v329 = *(v326 + 160);

  swift_endAccess();
  v328 = sub_21E8(&qword_EEFE0, &qword_C5AB0);
  v330 = sub_C3394();

  v333 = &v391;
  v391 = v330;
  v6 = sub_C1D24();
  v332 = v390;
  v390[0] = v6;
  v390[1] = v7;
  v331 = sub_21E8(&qword_EF290, &qword_C5C18);
  sub_2D4A4();
  v334 = sub_C3684();
  sub_8224(v332);
  sub_1D7C8(v333);
  if (v334)
  {
    v192 = v287;
    goto LABEL_20;
  }

  sub_2D7DC();
  v259 = sub_EE34();
  v355 = v259;
  v260 = sub_C1CF4();
  v261 = v8;
  if (v8)
  {
    v257 = v260;
    v258 = v261;
  }

  else
  {
    sub_C3B84();
    __break(1u);
  }

  v252 = v258;
  v255 = sub_C3484();

  sub_C1D24();
  v253 = v9;
  v254 = sub_C3484();

  v256 = [v259 load:v255 withFlowId:v254];
  _objc_release(v254);
  _objc_release(v255);
  if ((v256 & 1) == 0)
  {
    v48 = v323;
    v49 = sub_BF704();
    (*(v317 + 16))(v48, v49, v316);
    v171 = v311;
    (*(v310 + 16))(v314, v262, v308);
    v172 = (*(v171 + 80) + 16) & ~*(v171 + 80);
    v175 = 7;
    v176 = swift_allocObject();
    (*(v310 + 32))(v176 + v172, v314, v308);
    v184 = sub_C3224();
    v185 = sub_C3884();
    v173 = 17;
    v178 = swift_allocObject();
    *(v178 + 16) = 32;
    v179 = swift_allocObject();
    *(v179 + 16) = 8;
    v174 = 32;
    v50 = swift_allocObject();
    v51 = v176;
    v177 = v50;
    *(v50 + 16) = v263;
    *(v50 + 24) = v51;
    v52 = swift_allocObject();
    v53 = v177;
    v181 = v52;
    *(v52 + 16) = v264;
    *(v52 + 24) = v53;
    v183 = sub_21E8(&unk_EEFA0, &unk_C50F0);
    v180 = sub_C3C64();
    v182 = v54;

    v55 = v178;
    v56 = v182;
    *v182 = v265;
    v56[1] = v55;

    v57 = v179;
    v58 = v182;
    v182[2] = v266;
    v58[3] = v57;

    v59 = v181;
    v60 = v182;
    v182[4] = v267;
    v60[5] = v59;
    sub_4E48();

    if (os_log_type_enabled(v184, v185))
    {
      v61 = v287;
      v164 = sub_C3954();
      v163 = sub_21E8(&qword_EE828, &qword_C5100);
      v165 = sub_5DD4(0);
      v166 = sub_5DD4(1);
      v167 = &v354;
      v354 = v164;
      v168 = &v353;
      v353 = v165;
      v169 = &v352;
      v352 = v166;
      sub_5E28(2, &v354);
      sub_5E28(1, v167);
      v350 = v265;
      v351 = v178;
      sub_5E3C(&v350, v167, v168, v169);
      v170 = v61;
      if (v61)
      {

        __break(1u);
      }

      else
      {
        v350 = v266;
        v351 = v179;
        sub_5E3C(&v350, &v354, &v353, &v352);
        v162 = 0;
        v350 = v267;
        v351 = v181;
        sub_5E3C(&v350, &v354, &v353, &v352);
        _os_log_impl(&dword_0, v184, v185, "Unable to load flow file for: %s", v164, 0xCu);
        sub_5E88(v165);
        sub_5E88(v166);
        sub_C3934();
      }
    }

    else
    {
    }

    _objc_release(v184);
    (*(v317 + 8))(v323, v316);
    _objc_release(v259);
    v161 = 0;
    return v161 & 1;
  }

  v10 = v325;
  sub_C3564("languages", 9uLL, 1);
  v225 = v11;
  v226 = sub_C3484();

  v227 = [v259 getMetadata:v226];
  _objc_release(v226);
  v230 = sub_C3494();
  v231 = v12;
  v348 = v230;
  v349 = v12;
  _objc_release(v227);
  v13 = sub_BF704();
  (*(v317 + 16))(v10, v13, v316);
  v228 = v311;
  (*(v310 + 16))(v314, v262, v308);
  v229 = (*(v228 + 80) + 16) & ~*(v228 + 80);
  v238 = 7;
  v232 = swift_allocObject();
  (*(v310 + 32))(v232 + v229, v314, v308);

  v237 = 32;
  v14 = swift_allocObject();
  v15 = v231;
  v239 = v14;
  *(v14 + 16) = v230;
  *(v14 + 24) = v15;
  v250 = sub_C3224();
  v251 = sub_C3874();
  v235 = 17;
  v241 = swift_allocObject();
  v234 = 32;
  *(v241 + 16) = 32;
  v242 = swift_allocObject();
  v236 = 8;
  *(v242 + 16) = 8;
  v16 = swift_allocObject();
  v17 = v232;
  v233 = v16;
  *(v16 + 16) = v268;
  *(v16 + 24) = v17;
  v18 = swift_allocObject();
  v19 = v233;
  v243 = v18;
  *(v18 + 16) = v269;
  *(v18 + 24) = v19;
  v244 = swift_allocObject();
  *(v244 + 16) = v234;
  v245 = swift_allocObject();
  *(v245 + 16) = v236;
  v20 = swift_allocObject();
  v21 = v239;
  v240 = v20;
  *(v20 + 16) = v270;
  *(v20 + 24) = v21;
  v22 = swift_allocObject();
  v23 = v240;
  v247 = v22;
  *(v22 + 16) = v271;
  *(v22 + 24) = v23;
  v249 = sub_21E8(&unk_EEFA0, &unk_C50F0);
  v246 = sub_C3C64();
  v248 = v24;

  v25 = v241;
  v26 = v248;
  *v248 = v272;
  v26[1] = v25;

  v27 = v242;
  v28 = v248;
  v248[2] = v273;
  v28[3] = v27;

  v29 = v243;
  v30 = v248;
  v248[4] = v274;
  v30[5] = v29;

  v31 = v244;
  v32 = v248;
  v248[6] = v275;
  v32[7] = v31;

  v33 = v245;
  v34 = v248;
  v248[8] = v276;
  v34[9] = v33;

  v35 = v247;
  v36 = v248;
  v248[10] = v277;
  v36[11] = v35;
  sub_4E48();

  if (os_log_type_enabled(v250, v251))
  {
    v37 = v287;
    v217 = sub_C3954();
    v216 = sub_21E8(&qword_EE828, &qword_C5100);
    v218 = sub_5DD4(0);
    v219 = sub_5DD4(2);
    v221 = &v339;
    v339 = v217;
    v222 = &v338;
    v338 = v218;
    v223 = &v337;
    v337 = v219;
    v220 = 2;
    sub_5E28(2, &v339);
    sub_5E28(v220, v221);
    v335 = v272;
    v336 = v241;
    sub_5E3C(&v335, v221, v222, v223);
    v224 = v37;
    if (v37)
    {

      __break(1u);
    }

    else
    {
      v335 = v273;
      v336 = v242;
      sub_5E3C(&v335, &v339, &v338, &v337);
      v213 = 0;
      v335 = v274;
      v336 = v243;
      sub_5E3C(&v335, &v339, &v338, &v337);
      v212 = 0;
      v335 = v275;
      v336 = v244;
      sub_5E3C(&v335, &v339, &v338, &v337);
      v211 = 0;
      v335 = v276;
      v336 = v245;
      sub_5E3C(&v335, &v339, &v338, &v337);
      v210 = 0;
      v335 = v277;
      v336 = v247;
      sub_5E3C(&v335, &v339, &v338, &v337);
      v209 = 0;
      _os_log_impl(&dword_0, v250, v251, "Languages meta for %s: %s", v217, 0x16u);
      sub_5E88(v218);
      sub_5E88(v219);
      sub_C3934();

      v214 = v209;
    }
  }

  else
  {
    v38 = v287;

    v214 = v38;
  }

  v39 = v214;
  _objc_release(v250);
  (*(v317 + 8))(v325, v316);
  v347[2] = v230;
  v347[3] = v231;
  v199 = 1;
  v197 = 1;
  v40 = sub_C3564("-", 1uLL, 1);
  v195 = v347;
  v347[0] = v40;
  v347[1] = v41;
  v42 = sub_C3564("_", v199, v197 & 1);
  v194 = v346;
  v346[0] = v42;
  v346[1] = v43;
  v193 = sub_B2E8();
  v206 = &type metadata for String;
  sub_28CB8();
  v198 = sub_C39C4();
  v196 = v44;
  sub_8224(v194);
  sub_8224(v195);
  v203 = v345;
  v345[0] = v198;
  v345[1] = v196;
  sub_C3564("/[ ,]+/", 7uLL, v197 & 1);
  sub_C2F24();
  v201 = sub_2DCA0();
  v202 = sub_2DD18();
  v200 = sub_28CF4();
  sub_28D0C();
  v204 = sub_C3424();
  (*(v303 + 8))(v306, v302);
  sub_8224(v203);
  v344 = v204;
  v205 = sub_21E8(&qword_EF2B8, &qword_C5C20);
  v45 = sub_2DDA0();
  result = sub_28D90(v278, 0, v205, v206, &type metadata for Never, v45, &protocol witness table for Never, v215);
  v207 = v39;
  v208 = result;
  if (!v39)
  {
    v191 = v208;
    sub_1D7C8(&v344);
    v343 = v191;
    v186 = sub_C1D24();
    v187 = v47;

    v189 = &v342;
    v342 = v191;
    v188 = v341;
    v341[0] = v186;
    v341[1] = v187;
    v190 = &v340;
    swift_beginAccess();
    sub_21E8(&qword_EF2C8, &qword_C5C28);
    sub_C33F4();
    swift_endAccess();

    _objc_release(v259);
    v192 = v207;
LABEL_20:
    v131 = v192;

    v145 = v387;
    sub_24F4(v326 + 16, v387);

    v133 = v388;
    v132 = v389;
    sub_808C(v145, v388);
    v62 = *(v132 + 8);
    v144 = &v384;
    v62(v133);
    v135 = v385;
    v134 = v386;
    sub_808C(v144, v385);
    sub_C1F34();
    v136 = sub_C1BA4();
    v137 = v63;
    v155 = *(v296 + 8);
    v154 = v296 + 8;
    v155(v301, v295);
    v143 = v383;
    v383[0] = v136;
    v383[1] = v137;
    v138 = 1;
    v157 = 1;
    v64 = sub_C3564("-", 1uLL, 1);
    v142 = v382;
    v382[0] = v64;
    v382[1] = v65;
    v66 = sub_C3564("_", v138, v157 & 1);
    v141 = v381;
    v381[0] = v66;
    v381[1] = v67;
    v139 = sub_B2E8();
    v140 = &type metadata for String;
    sub_28CB8();
    v156 = 0;
    v146 = sub_C39C4();
    v147 = v68;
    sub_8224(v141);
    sub_8224(v142);
    sub_8224(v143);
    sub_2560(v144);
    sub_2560(v145);
    v379 = v146;
    v380 = v147;

    v148 = v374;
    sub_24F4(v326 + 16, v374);

    v150 = v375;
    v149 = v376;
    sub_808C(v148, v375);
    v69 = *(v149 + 8);
    v151 = v371;
    v69(v150);
    v153 = v372;
    v152 = v373;
    sub_808C(v151, v372);
    sub_C1F34();
    sub_C1C54();
    v155(v299, v295);
    sub_C1C24();
    (*(v289 + 8))(v292, v288);
    v158 = sub_C1BC4();
    v159 = *(v158 - 8);
    v160 = v158 - 8;
    if ((*(v159 + 48))(v294, v157) == 1)
    {
      sub_2560(v371);
      sub_2560(v374);
      sub_2D52C(v294);
      v129 = 0;
      v130 = 0;
    }

    else
    {
      v127 = sub_C1BB4();
      v128 = v70;
      (*(v159 + 8))(v294, v158);
      sub_2560(v371);
      sub_2560(v374);
      v129 = v127;
      v130 = v128;
    }

    v369 = v129;
    v370 = v130;
    if (v130)
    {
      v377 = v369;
      v378 = v370;
    }

    else
    {
      v377 = sub_C3564("", 0, 1);
      v378 = v71;
      if (v370)
      {
        sub_8224(&v369);
      }
    }

    v119 = v377;
    v120 = v378;
    v367 = v377;
    v368 = v378;
    v122 = sub_C1D24();
    v123 = v72;
    v121 = &v366;
    swift_beginAccess();
    v124 = *(v326 + 160);

    swift_endAccess();
    v125 = v364;
    v364[0] = v122;
    v364[1] = v123;
    sub_C33E4();
    sub_8224(v125);
    v126 = v365;
    if (v365)
    {
      v118 = v126;
      v116 = v126;
      v358 = v126;

      v357[3] = v116;
      sub_1E160();
      v117 = sub_C3804();

      if (v117)
      {
        v115 = 1;
      }

      else
      {
        v357[2] = v116;
        v114 = v357;
        v357[0] = v119;
        v357[1] = v120;
        sub_1D00C();
        v115 = sub_C3684();
      }

      v113 = v115;

      if (v113)
      {
        v112 = 1;
      }

      else
      {
        v356[2] = v116;
        v111 = v356;
        v356[0] = v146;
        v356[1] = v147;
        sub_1D00C();
        v112 = sub_C3684();
      }

      v110 = v112;

      v161 = v110;
    }

    else
    {
      v73 = v320;

      v74 = sub_BF704();
      (*(v317 + 16))(v73, v74, v316);
      v95 = v311;
      (*(v310 + 16))(v314, v262, v308);
      v96 = (*(v95 + 80) + 16) & ~*(v95 + 80);
      v99 = 7;
      v100 = swift_allocObject();
      (*(v310 + 32))(v100 + v96, v314, v308);
      v108 = sub_C3224();
      v109 = sub_C3884();
      v97 = 17;
      v102 = swift_allocObject();
      *(v102 + 16) = 32;
      v103 = swift_allocObject();
      *(v103 + 16) = 8;
      v98 = 32;
      v75 = swift_allocObject();
      v76 = v100;
      v101 = v75;
      *(v75 + 16) = v279;
      *(v75 + 24) = v76;
      v77 = swift_allocObject();
      v78 = v101;
      v105 = v77;
      *(v77 + 16) = v280;
      *(v77 + 24) = v78;
      v107 = sub_21E8(&unk_EEFA0, &unk_C50F0);
      v104 = sub_C3C64();
      v106 = v79;

      v80 = v102;
      v81 = v106;
      *v106 = v281;
      v81[1] = v80;

      v82 = v103;
      v83 = v106;
      v106[2] = v282;
      v83[3] = v82;

      v84 = v105;
      v85 = v106;
      v106[4] = v283;
      v85[5] = v84;
      sub_4E48();

      if (os_log_type_enabled(v108, v109))
      {
        v86 = v131;
        v88 = sub_C3954();
        v87[2] = sub_21E8(&qword_EE828, &qword_C5100);
        v89 = sub_5DD4(0);
        v90 = sub_5DD4(1);
        v91 = &v363;
        v363 = v88;
        v92 = &v362;
        v362 = v89;
        v93 = &v361;
        v361 = v90;
        sub_5E28(2, &v363);
        sub_5E28(1, v91);
        v359 = v281;
        v360 = v102;
        sub_5E3C(&v359, v91, v92, v93);
        v94 = v86;
        if (v86)
        {

          __break(1u);
        }

        else
        {
          v359 = v282;
          v360 = v103;
          sub_5E3C(&v359, &v363, &v362, &v361);
          v87[1] = 0;
          v359 = v283;
          v360 = v105;
          sub_5E3C(&v359, &v363, &v362, &v361);
          _os_log_impl(&dword_0, v108, v109, "Unable to find enabled locales for flow %s", v88, 0xCu);
          sub_5E88(v89);
          sub_5E88(v90);
          sub_C3934();
        }
      }

      else
      {
      }

      _objc_release(v108);
      (*(v317 + 8))(v320, v316);

      v161 = 0;
    }

    return v161 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_28CB8()
{
  sub_2C4EC(0);

  return 0;
}

uint64_t sub_28D28@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *a1;
  v6 = a1[1];
  v7 = a1[2];
  v8 = a1[3];
  result = sub_C3634();
  *a2 = result;
  a2[1] = v3;
  return result;
}

uint64_t sub_28D90(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v37 = a1;
  v38 = a2;
  v62 = a3;
  v52 = a4;
  v39 = a5;
  v61 = a6;
  v41 = a8;
  v42 = "Fatal error";
  v43 = "Range requires lowerBound <= upperBound";
  v44 = "Swift/Range.swift";
  v45 = "Index out of range";
  v46 = "invalid Collection: count differed in successive traversals";
  v47 = "Swift/ArrayShared.swift";
  v72[3] = a3;
  v72[2] = a4;
  v72[1] = a5;
  v48 = *(a5 - 8);
  v49 = a5 - 8;
  v50 = (*(v48 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(a1);
  v51 = &v18 - v50;
  v9 = *(v8 + 8);
  v53 = 0;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v55 = *(AssociatedTypeWitness - 8);
  v56 = AssociatedTypeWitness - 8;
  v57 = (*(v55 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v10 = __chkstk_darwin(v53);
  v58 = &v18 - v57;
  v59 = (*(*(v11 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v10);
  v60 = &v18 - v59;
  v63 = swift_getAssociatedTypeWitness();
  v64 = *(v63 - 8);
  v65 = v63 - 8;
  v66 = (*(v64 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v12 = __chkstk_darwin(v62);
  v67 = &v18 - v66;
  v68 = (v13 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v12);
  v69 = &v18 - v68;
  v70 = sub_C37C4();
  if (!v70)
  {
    goto LABEL_24;
  }

  v72[0] = sub_C3B14();
  v36 = sub_C3B24();
  sub_C3AF4(v70);
  result = sub_C37B4();
  if (v70 < 0)
  {
    sub_C3B84();
    __break(1u);
LABEL_24:
    v20 = sub_C36F4();
    v21 = v40;
    return v20;
  }

  if (!v70)
  {
LABEL_19:
    v26 = v40;
LABEL_20:
    v22 = v26;
    sub_C37D4();
    v17 = *(swift_getAssociatedConformanceWitness() + 8);
    v25 = sub_C3474();
    v23 = *(v64 + 8);
    v24 = v64 + 8;
    v23(v67, v63);
    if ((v25 & 1) == 0)
    {
      sub_C3BA4();
      __break(1u);
    }

    v23(v69, v63);
    v19 = v72[0];

    v20 = v19;
    v21 = v22;
    return v20;
  }

  v34 = 0;
  for (i = v40; ; i = v30)
  {
    v32 = i;
    v33 = v34;
    if (v34 < 0 || v33 >= v70)
    {
      goto LABEL_18;
    }

    if (v70 < 0)
    {
      sub_C3B84();
      __break(1u);
LABEL_18:
      sub_C3BA4();
      __break(1u);
      goto LABEL_19;
    }

    v31 = v33 + 1;
    if (__OFADD__(v33, 1))
    {
      break;
    }

    v29 = &v71;
    v28 = sub_C3834();
    (*(v55 + 16))(v58);
    v28();
    v16 = v32;
    v37(v58, v51);
    v30 = v16;
    if (v16)
    {
      (*(v55 + 8))(v58, AssociatedTypeWitness);
      (*(v64 + 8))(v69, v63);
      sub_2CCD8(v72);
      (*(v48 + 32))(v41, v51, v39);
      return v27;
    }

    (*(v55 + 8))(v58, AssociatedTypeWitness);
    sub_C3B04();
    sub_C37E4();
    if (v31 == v70)
    {
      v26 = v30;
      goto LABEL_20;
    }

    result = v30;
    v34 = v31;
  }

  __break(1u);
  return result;
}

uint64_t sub_29674()
{
  v98 = 0;
  v146 = 0;
  v145 = 0;
  v97 = 0;
  v99 = sub_C3234();
  v100 = *(v99 - 8);
  v101 = v100;
  v102 = *(v100 + 64);
  v1 = __chkstk_darwin(0);
  v104 = (v102 + 15) & 0xFFFFFFFFFFFFFFF0;
  v103 = v27 - v104;
  __chkstk_darwin(v1);
  v105 = v27 - v104;
  v106 = sub_C1C64();
  v107 = *(v106 - 8);
  v108 = v107;
  v110 = *(v107 + 64);
  v109 = v110;
  __chkstk_darwin(v106 - 8);
  v112 = (v110 + 15) & 0xFFFFFFFFFFFFFFF0;
  v111 = v27 - v112;
  __chkstk_darwin(v27 - v112);
  v113 = v27 - v112;
  v146 = v27 - v112;
  v145 = v0;

  v120 = v142;
  sub_24F4(v0 + 16, v142);

  v116 = v143;
  v115 = v144;
  sub_808C(v120, v143);
  v2 = *(v115 + 40);
  v119 = &v139;
  v2(v116);
  v118 = v140;
  v117 = v141;
  sub_808C(v119, v140);
  v121 = (*(v117 + 24))(v118);
  sub_2560(v119);
  sub_2560(v120);
  if (v121)
  {

    v91 = v132;
    sub_24F4(v114 + 16, v132);

    v87 = v133;
    v86 = v134;
    sub_808C(v91, v133);
    v3 = *(v86 + 8);
    v90 = &v129;
    v3(v87);
    v89 = v130;
    v88 = v131;
    sub_808C(v90, v130);
    sub_C1F34();
    sub_2560(v90);
    sub_2560(v91);
    v92 = *(v114 + 72);

    v128 = v92;
    v127[0] = sub_C1BA4();
    v127[1] = v4;
    v93 = sub_21E8(&qword_EEFE0, &qword_C5AB0);
    sub_1D00C();
    v94 = v127;
    v95 = &v128;
    v96 = sub_C3684();
    sub_8224(v94);
    sub_1D7C8(v95);
    if (v96)
    {
      (*(v108 + 8))(v113, v106);
      v84 = 1;
      v85 = v97;
    }

    else
    {
      v5 = v105;
      v6 = sub_BF704();
      (*(v101 + 16))(v5, v6, v99);
      (*(v108 + 16))(v111, v113, v106);
      v64 = (*(v108 + 80) + 16) & ~*(v108 + 80);
      v73 = swift_allocObject();
      (*(v108 + 32))(v73 + v64, v111, v106);
      v83 = sub_C3224();
      v65 = v83;
      v82 = sub_C3874();
      v66 = v82;
      v67 = 17;
      v72 = 7;
      v76 = swift_allocObject();
      v68 = v76;
      v69 = 32;
      *(v76 + 16) = 32;
      v7 = swift_allocObject();
      v8 = v69;
      v77 = v7;
      v70 = v7;
      *(v7 + 16) = 8;
      v71 = v8;
      v9 = swift_allocObject();
      v10 = v73;
      v74 = v9;
      *(v9 + 16) = sub_2DEF4;
      *(v9 + 24) = v10;
      v11 = swift_allocObject();
      v12 = v74;
      v80 = v11;
      v75 = v11;
      *(v11 + 16) = sub_7BBC;
      *(v11 + 24) = v12;
      v81 = sub_21E8(&unk_EEFA0, &unk_C50F0);
      v78 = sub_C3C64();
      v79 = v13;

      v14 = v76;
      v15 = v79;
      *v79 = sub_7B48;
      v15[1] = v14;

      v16 = v77;
      v17 = v79;
      v79[2] = sub_7B48;
      v17[3] = v16;

      v18 = v79;
      v19 = v80;
      v79[4] = sub_7C08;
      v18[5] = v19;
      sub_4E48();

      if (os_log_type_enabled(v83, v82))
      {
        v20 = v97;
        v57 = sub_C3954();
        v54 = v57;
        v55 = sub_21E8(&qword_EE828, &qword_C5100);
        v58 = sub_5DD4(0);
        v56 = v58;
        v60 = 1;
        v59 = sub_5DD4(1);
        v126 = v57;
        v125 = v58;
        v124 = v59;
        v61 = &v126;
        sub_5E28(2, &v126);
        sub_5E28(v60, v61);
        v122 = sub_7B48;
        v123 = v68;
        sub_5E3C(&v122, v61, &v125, &v124);
        v62 = v20;
        v63 = v20;
        if (v20)
        {
          v52 = 0;

          __break(1u);
        }

        else
        {
          v122 = sub_7B48;
          v123 = v70;
          sub_5E3C(&v122, &v126, &v125, &v124);
          v50 = 0;
          v51 = 0;
          v122 = sub_7C08;
          v123 = v75;
          sub_5E3C(&v122, &v126, &v125, &v124);
          v48 = 0;
          v49 = 0;
          _os_log_impl(&dword_0, v65, v66, "New greeting flow not supported for locale: %s", v54, 0xCu);
          sub_5E88(v56);
          sub_5E88(v59);
          sub_C3934();

          v53 = v48;
        }
      }

      else
      {
        v21 = v97;

        v53 = v21;
      }

      v47 = v53;

      (*(v101 + 8))(v105, v99);
      (*(v108 + 8))(v113, v106);
      v84 = 0;
      v85 = v47;
    }
  }

  else
  {
    v22 = v103;
    v23 = sub_BF704();
    (*(v101 + 16))(v22, v23, v99);
    v45 = sub_C3224();
    v42 = v45;
    v44 = sub_C3874();
    v43 = v44;
    sub_21E8(&unk_EEFA0, &unk_C50F0);
    v46 = sub_C3C64();
    if (os_log_type_enabled(v45, v44))
    {
      v24 = v97;
      v33 = sub_C3954();
      v29 = v33;
      v30 = sub_21E8(&qword_EE828, &qword_C5100);
      v31 = 0;
      v34 = sub_5DD4(0);
      v32 = v34;
      v35 = sub_5DD4(v31);
      v138 = v33;
      v137 = v34;
      v136 = v35;
      v36 = 0;
      v37 = &v138;
      sub_5E28(0, &v138);
      sub_5E28(v36, v37);
      v135 = v46;
      v38 = v27;
      __chkstk_darwin(v27);
      v39 = &v27[-6];
      v27[-4] = v25;
      v27[-3] = &v137;
      v27[-2] = &v136;
      v40 = sub_21E8(&unk_EEFB0, qword_C5110);
      sub_8128();
      sub_C3654();
      v41 = v24;
      if (v24)
      {
        __break(1u);
      }

      else
      {
        _os_log_impl(&dword_0, v42, v43, "New greeting flow not enabled", v29, 2u);
        v27[1] = 0;
        sub_5E88(v32);
        sub_5E88(v35);
        sub_C3934();

        v28 = v41;
      }
    }

    else
    {

      v28 = v97;
    }

    v27[0] = v28;

    (*(v101 + 8))(v103, v99);
    v84 = 0;
    v85 = v27[0];
  }

  return v84 & 1;
}

uint64_t sub_2A268@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v170 = a1;
  v135 = a2;
  v136 = 0;
  v192 = 0;
  v191 = 0;
  v190 = 0;
  v137 = type metadata accessor for INSiriSocialConversation();
  v138 = *(v137 - 8);
  v139 = v138;
  v141 = *(v138 + 64);
  v140 = v141;
  v2 = __chkstk_darwin(0);
  v143 = (v141 + 15) & 0xFFFFFFFFFFFFFFF0;
  v142 = v33 - v143;
  __chkstk_darwin(v2);
  v144 = v33 - v143;
  v192 = v33 - v143;
  v145 = sub_C3234();
  v146 = *(v145 - 8);
  v147 = v146;
  v148 = *(v146 + 64);
  __chkstk_darwin(v145 - 8);
  v150 = (v148 + 15) & 0xFFFFFFFFFFFFFFF0;
  v149 = v33 - v150;
  __chkstk_darwin(v33 - v150);
  v151 = v33 - v150;
  v152 = sub_21E8(&qword_EE800, &unk_C50E0);
  v153 = *(v152 - 8);
  v154 = v153;
  v155 = *(v153 + 64);
  __chkstk_darwin(v152 - 8);
  v157 = (v155 + 15) & 0xFFFFFFFFFFFFFFF0;
  v156 = v33 - v157;
  __chkstk_darwin(v33 - v157);
  v158 = v33 - v157;
  v3 = sub_21E8(&qword_EE808, &unk_C5BE0);
  v159 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v161 = (v159 + 15) & 0xFFFFFFFFFFFFFFF0;
  v160 = v33 - v161;
  __chkstk_darwin(v33 - v161);
  v162 = v33 - v161;
  v168 = sub_21E8(&qword_EEE30, &qword_C5980);
  v164 = *(v168 - 8);
  v166 = v164;
  v165 = (*(v164 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = __chkstk_darwin(v170);
  v167 = v33 - v165;
  v191 = v4;
  v190 = v5;
  sub_8ECA0();
  v171 = sub_C2D84();
  v169 = v6;
  (*(v166 + 8))(v167, v168);
  v171(v189, v170);
  v172 = 0;
  v173 = 0;
  v131 = v189[0];
  v130 = v189[1];

  v132 = v131;
  v133 = v130;
  v134 = v172;
  v129 = v172;
  v188[0] = v131;
  v188[1] = v130;
  v128 = v130 == 0;
  v127 = v128;
  sub_8224(v188);
  if (v127)
  {
    v7 = v129;
    sub_8EC30();
    v124 = sub_C2D84();
    v123 = v8;
    (*(v154 + 8))(v158, v152);
    v124(v170);
    v125 = v7;
    v126 = v7;
    if (v7)
    {
      v120 = v126;
      v121 = 0;

      (*(v139 + 56))(v162, 1, 1, v137);
      v122 = v121;
    }

    else
    {
      (*(v139 + 56))(v162, 0, 1, v137);

      v122 = v125;
    }

    v119 = v122;
    v118 = (*(v139 + 48))(v162, 1, v137) == 1;
    v115 = v118;
    sub_7C14(v162);
    v116 = v115;
    v117 = v119;
  }

  else
  {
    v116 = 0;
    v117 = v129;
  }

  v114 = v117;
  if (v116)
  {
    v9 = v151;
    v10 = sub_BF704();
    (*(v147 + 16))(v9, v10, v145);
    v112 = sub_C3224();
    v109 = v112;
    v111 = sub_C3884();
    v110 = v111;
    sub_21E8(&unk_EEFA0, &unk_C50F0);
    v113 = sub_C3C64();
    if (os_log_type_enabled(v112, v111))
    {
      v11 = v114;
      v100 = sub_C3954();
      v96 = v100;
      v97 = sub_21E8(&qword_EE828, &qword_C5100);
      v98 = 0;
      v101 = sub_5DD4(0);
      v99 = v101;
      v102 = sub_5DD4(v98);
      v177 = v100;
      v176 = v101;
      v175 = v102;
      v103 = 0;
      v104 = &v177;
      sub_5E28(0, &v177);
      sub_5E28(v103, v104);
      v174 = v113;
      v105 = v33;
      __chkstk_darwin(v33);
      v106 = &v33[-6];
      v33[-4] = v12;
      v33[-3] = &v176;
      v33[-2] = &v175;
      v107 = sub_21E8(&unk_EEFB0, qword_C5110);
      sub_8128();
      sub_C3654();
      v108 = v11;
      if (v11)
      {
        __break(1u);
      }

      else
      {
        _os_log_impl(&dword_0, v109, v110, "SocialConversationFlowDelegatePlugin received a parse that cannot be transformed to a valid type", v96, 2u);
        v94 = 0;
        sub_5E88(v99);
        sub_5E88(v102);
        sub_C3934();

        v95 = v108;
      }
    }

    else
    {

      v95 = v114;
    }

    v92 = v95;

    (*(v147 + 8))(v151, v145);
    sub_C1E34();
    return v92;
  }

  v13 = v114;
  sub_8EC30();
  v89 = sub_C2D84();
  v88 = v14;
  (*(v154 + 8))(v156, v152);
  v89(v170);
  v90 = v13;
  v91 = v13;
  if (v13)
  {
    v33[1] = v91;
    v34 = 0;

    (*(v139 + 56))(v160, 1, 1, v137);
    v87 = v34;
  }

  else
  {
    (*(v139 + 56))(v160, 0, 1, v137);

    v87 = v90;
  }

  v86 = v87;
  if ((*(v139 + 48))(v160, 1, v137) == 1)
  {
    sub_7C14(v160);
LABEL_29:
    v35 = sub_22288(v170);
    sub_C1E44();

    return v86;
  }

  sub_7D34(v160, v144);

  v84 = &v185;
  sub_BF5A0();

  v83 = v186;
  v82 = v187;
  sub_808C(v84, v186);
  v85 = (*(v82 + 48))(v83);
  sub_2560(v84);

  if (v85)
  {
    v81 = 0;
  }

  else
  {
    v74 = *(v163 + 104);

    v179 = v74;
    v75 = *v144;
    v76 = *(v144 + 1);

    v178[0] = v75;
    v178[1] = v76;
    v77 = sub_21E8(&qword_EEFE0, &qword_C5AB0);
    sub_1D00C();
    v78 = v178;
    v79 = &v179;
    v80 = sub_C3684();
    sub_8224(v78);
    sub_1D7C8(v79);
    v81 = v80;
  }

  v73 = v81;

  if ((v73 & 1) == 0)
  {
    sub_7EB4(v144);
    goto LABEL_29;
  }

  v15 = v149;
  v16 = sub_BF704();
  (*(v147 + 16))(v15, v16, v145);
  sub_2C670(v144, v142);
  v53 = (*(v139 + 80) + 16) & ~*(v139 + 80);
  v62 = swift_allocObject();
  sub_7D34(v142, (v62 + v53));
  v72 = sub_C3224();
  v54 = v72;
  v71 = sub_C3874();
  v55 = v71;
  v56 = 17;
  v61 = 7;
  v65 = swift_allocObject();
  v57 = v65;
  v58 = 32;
  *(v65 + 16) = 32;
  v17 = swift_allocObject();
  v18 = v58;
  v66 = v17;
  v59 = v17;
  *(v17 + 16) = 8;
  v60 = v18;
  v19 = swift_allocObject();
  v20 = v62;
  v63 = v19;
  *(v19 + 16) = sub_2E1A0;
  *(v19 + 24) = v20;
  v21 = swift_allocObject();
  v22 = v63;
  v69 = v21;
  v64 = v21;
  *(v21 + 16) = sub_7BBC;
  *(v21 + 24) = v22;
  v70 = sub_21E8(&unk_EEFA0, &unk_C50F0);
  v67 = sub_C3C64();
  v68 = v23;

  v24 = v65;
  v25 = v68;
  *v68 = sub_7B48;
  v25[1] = v24;

  v26 = v66;
  v27 = v68;
  v68[2] = sub_7B48;
  v27[3] = v26;

  v28 = v68;
  v29 = v69;
  v68[4] = sub_7C08;
  v28[5] = v29;
  sub_4E48();

  if (os_log_type_enabled(v72, v71))
  {
    v30 = v86;
    v46 = sub_C3954();
    v43 = v46;
    v44 = sub_21E8(&qword_EE828, &qword_C5100);
    v47 = sub_5DD4(0);
    v45 = v47;
    v49 = 1;
    v48 = sub_5DD4(1);
    v184 = v46;
    v183 = v47;
    v182 = v48;
    v50 = &v184;
    sub_5E28(2, &v184);
    sub_5E28(v49, v50);
    v180 = sub_7B48;
    v181 = v57;
    sub_5E3C(&v180, v50, &v183, &v182);
    v51 = v30;
    v52 = v30;
    if (v30)
    {
      v41 = 0;

      __break(1u);
    }

    else
    {
      v180 = sub_7B48;
      v181 = v59;
      sub_5E3C(&v180, &v184, &v183, &v182);
      v39 = 0;
      v40 = 0;
      v180 = sub_7C08;
      v181 = v64;
      sub_5E3C(&v180, &v184, &v183, &v182);
      v37 = 0;
      v38 = 0;
      _os_log_impl(&dword_0, v54, v55, "Received intent for %s and newMultiturn FF disabled", v43, 0xCu);
      sub_5E88(v45);
      sub_5E88(v48);
      sub_C3934();

      v42 = v37;
    }
  }

  else
  {
    v31 = v86;

    v42 = v31;
  }

  v36 = v42;

  (*(v147 + 8))(v149, v145);
  sub_C1E34();
  sub_7EB4(v144);
  return v36;
}

uint64_t *sub_2B940()
{
  sub_1D7C8(v0 + 9);
  sub_8224((v0 + 10));
  sub_1D7C8(v0 + 12);
  sub_1D7C8(v0 + 13);
  sub_2CCD8(v0 + 14);
  sub_2560(v0 + 15);
  return sub_1D7C8(v0 + 20);
}

uint64_t *sub_2B9B4()
{
  v1 = sub_BF340();
  sub_1D7C8(v1 + 9);
  sub_8224((v1 + 10));
  sub_1D7C8(v1 + 12);
  sub_1D7C8(v1 + 13);
  sub_2CCD8(v1 + 14);
  sub_2560(v1 + 15);
  sub_1D7C8(v1 + 20);
  return v1;
}

uint64_t sub_2BA9C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_21E18();
  *a1 = result;
  return result;
}

uint64_t sub_2BB4C@<X0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  sub_24F4(v1 + 16, a1);
  return swift_endAccess();
}

uint64_t sub_2BBA0(uint64_t *a1)
{
  sub_24F4(a1, v4);
  swift_beginAccess();
  sub_2560((v1 + 16));
  sub_BD6C(v4, (v1 + 16));
  swift_endAccess();
  return sub_2560(a1);
}

uint64_t sub_2BC6C()
{
  v2 = *(v0 + 56);

  return v2;
}

uint64_t sub_2BC98@<X0>(uint64_t a1@<X8>)
{
  __dst[5] = 0;
  swift_beginAccess();
  sub_2E2DC((v1 + 64), v7);
  swift_endAccess();
  if (v7[3])
  {
    sub_BD6C(v7, __dst);
    sub_24F4(__dst, a1);
    return sub_2560(__dst);
  }

  else
  {
    sub_1FA80(v7);
    sub_C23C4();
    sub_24F4(v6, v5);
    swift_beginAccess();
    sub_2E370(v5, (v4 + 64));
    swift_endAccess();
    sub_24F4(v6, a1);
    return sub_2560(v6);
  }
}

uint64_t sub_2BDA8(uint64_t *a1)
{
  v5 = 0;
  v6 = a1;
  sub_24F4(a1, v4);
  swift_beginAccess();
  sub_2E370(v4, (v1 + 64));
  swift_endAccess();
  return sub_2560(a1);
}

void (*sub_2BE24(void *a1))(uint64_t **a1, char a2)
{
  v4 = sub_2E4CC(0x58uLL);
  *a1 = v4;
  v4[10] = v1;
  sub_2BC98(v4);
  return sub_2BE98;
}

void sub_2BE98(uint64_t **a1, char a2)
{
  v3 = *a1;
  v2 = (*a1)[10];
  if (a2)
  {
    sub_24F4(v3, (v3 + 5));
    sub_2BDA8(v3 + 5);
    sub_2560(v3);
  }

  else
  {
    sub_2BDA8(v3);
  }

  free(v3);
}

uint64_t sub_2BF10@<X0>(uint64_t a1@<X8>)
{
  __dst[5] = 0;
  swift_beginAccess();
  sub_2E2DC((v1 + 104), v7);
  swift_endAccess();
  if (v7[3])
  {
    sub_BD6C(v7, __dst);
    sub_24F4(__dst, a1);
    return sub_2560(__dst);
  }

  else
  {
    sub_1FA80(v7);
    sub_C22A4();
    sub_24F4(v6, v5);
    swift_beginAccess();
    sub_2E370(v5, (v4 + 104));
    swift_endAccess();
    sub_24F4(v6, a1);
    return sub_2560(v6);
  }
}

uint64_t sub_2C020(uint64_t *a1)
{
  v5 = 0;
  v6 = a1;
  sub_24F4(a1, v4);
  swift_beginAccess();
  sub_2E370(v4, (v1 + 104));
  swift_endAccess();
  return sub_2560(a1);
}

void (*sub_2C09C(void *a1))(uint64_t **a1, char a2)
{
  v4 = sub_2E4CC(0x58uLL);
  *a1 = v4;
  v4[10] = v1;
  sub_2BF10(v4);
  return sub_2C110;
}

void sub_2C110(uint64_t **a1, char a2)
{
  v3 = *a1;
  v2 = (*a1)[10];
  if (a2)
  {
    sub_24F4(v3, (v3 + 5));
    sub_2C020(v3 + 5);
    sub_2560(v3);
  }

  else
  {
    sub_2C020(v3);
  }

  free(v3);
}

uint64_t sub_2C1C4()
{
  sub_2560(v0 + 2);
  v1 = v0[7];

  sub_1FA80(v0 + 8);
  sub_1FA80(v0 + 13);
  return v3;
}

void *sub_2C254()
{
  sub_71CB0();
  *(v0 + 40) = &type metadata for SocialConversationFeatureFlagManager;
  *(v0 + 48) = &protocol witness table for SocialConversationFeatureFlagManager;
  v3 = *sub_2F7DC();

  result = v2;
  v2[7] = v3;
  v2[8] = 0;
  v2[9] = 0;
  v2[10] = 0;
  v2[11] = 0;
  v2[12] = 0;
  v2[13] = 0;
  v2[14] = 0;
  v2[15] = 0;
  v2[16] = 0;
  v2[17] = 0;
  return result;
}

uint64_t sub_2C3BC()
{
  v3 = *(sub_C23B4() - 8);
  v1 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v4 = v1 + *(v3 + 64);
  (*(v3 + 8))(v0 + v1);
  return swift_deallocObject();
}

uint64_t sub_2C488()
{
  v1 = *(sub_C23B4() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_24FC0(v2);
}

unint64_t sub_2C4EC(unint64_t result)
{
  v3 = result;
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {

    if (v3 <= 0)
    {
      return &_swiftEmptyArrayStorage;
    }

    type metadata accessor for CompareOptions();
    v1 = sub_C3704();

    *(v1 + 16) = v3;

    return v1;
  }

  return result;
}

uint64_t sub_2C5F0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2C630()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

char *sub_2C670(char *a1, char *a2)
{
  *a2 = *a1;
  v4 = *(a1 + 1);

  *(a2 + 1) = v4;
  *(a2 + 2) = *(a1 + 2);
  v6 = *(a1 + 3);

  *(a2 + 3) = v6;
  v7 = *(type metadata accessor for INSiriSocialConversation() + 24);
  v9 = sub_C1B54();
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(&a1[v7], 1))
  {
    v2 = sub_21E8(&qword_EE820, &qword_C5A60);
    memcpy(&a2[v7], &a1[v7], *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v10 + 16))();
    (*(v10 + 56))(&a2[v7], 0, 1, v9);
  }

  return a2;
}

uint64_t sub_2C824()
{
  v8 = type metadata accessor for INSiriSocialConversation();
  v1 = *(*(v8 - 8) + 80);
  v6 = (v1 + 16) & ~v1;
  v7 = v6 + *(*(v8 - 8) + 64);
  v2 = *(v0 + v6 + 8);

  v3 = *(v0 + v6 + 24);

  v9 = *(v8 + 24);
  v10 = sub_C1B54();
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(v0 + v6 + v9, 1))
  {
    (*(v11 + 8))(v5 + v6 + v9, v10);
  }

  return swift_deallocObject();
}

uint64_t sub_2C994()
{
  v1 = *(type metadata accessor for INSiriSocialConversation() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_25074(v2);
}

uint64_t sub_2CA50()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2CA90()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2CAD0()
{
  v3 = *(sub_C1D34() - 8);
  v1 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v4 = v1 + *(v3 + 64);
  (*(v3 + 8))(v0 + v1);
  return swift_deallocObject();
}

uint64_t sub_2CB9C()
{
  v1 = *(sub_C1D34() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_2510C(v2);
}

uint64_t sub_2CC58()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2CC98()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t *sub_2CCD8(uint64_t *a1)
{
  v1 = *a1;

  return a1;
}

unint64_t sub_2CD04()
{
  v2 = qword_EF268;
  if (!qword_EF268)
  {
    type metadata accessor for InitDailyUpliftBehaviorResponseHandler();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_EF268);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_2CD84()
{
  v2 = qword_EF270;
  if (!qword_EF270)
  {
    type metadata accessor for InitGreetingBehaviorResponseHandler();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_EF270);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_2CE04()
{
  v2 = qword_EF278;
  if (!qword_EF278)
  {
    type metadata accessor for DismissSiriBehaviorResponseHandler();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_EF278);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_2CE84()
{
  v5 = sub_C1D34();
  v3 = *(v5 - 8);
  v4 = (*(v3 + 80) + 56) & ~*(v3 + 80);
  v6 = (v4 + *(v3 + 64) + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_2560((v0 + 16));
  (*(v3 + 8))(v0 + v4, v5);
  v1 = *(v0 + v6);

  return swift_deallocObject();
}

uint64_t sub_2CF90(uint64_t a1)
{
  v6 = v2;
  *(v2 + 16) = v2;
  v5 = *(sub_C1D34() - 8);
  v7 = (*(v5 + 80) + 56) & ~*(v5 + 80);
  v8 = *(v1 + ((v7 + *(v5 + 64) + 7) & 0xFFFFFFFFFFFFFFF8));
  v3 = swift_task_alloc();
  *(v6 + 24) = v3;
  *v3 = *(v6 + 16);
  v3[1] = sub_4CE4;

  return sub_251C8(a1, v1 + 16, v1 + v7);
}

uint64_t sub_2D0C8()
{
  v3 = *(sub_C23B4() - 8);
  v1 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v4 = v1 + *(v3 + 64);
  (*(v3 + 8))(v0 + v1);
  return swift_deallocObject();
}

uint64_t sub_2D1EC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2D22C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2D26C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2D34C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2D38C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2D424()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2D464()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

unint64_t sub_2D4A4()
{
  v2 = qword_EF298;
  if (!qword_EF298)
  {
    sub_81B0(&qword_EF290, &qword_C5C18);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_EF298);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_2D52C(uint64_t a1)
{
  v3 = sub_C1BC4();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

uint64_t sub_2D5D4()
{
  v3 = *(sub_C1D34() - 8);
  v1 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v4 = v1 + *(v3 + 64);
  (*(v3 + 8))(v0 + v1);
  return swift_deallocObject();
}

uint64_t sub_2D6A0()
{
  v1 = *(sub_C1D34() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_28C94();
}

uint64_t sub_2D75C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2D79C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

unint64_t sub_2D7DC()
{
  v2 = qword_EF2A0;
  if (!qword_EF2A0)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_EF2A0);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_2D840()
{
  v3 = *(sub_C1D34() - 8);
  v1 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v4 = v1 + *(v3 + 64);
  (*(v3 + 8))(v0 + v1);
  return swift_deallocObject();
}

uint64_t sub_2D964()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2D9A4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2D9E4()
{
  v3 = *(sub_C1D34() - 8);
  v1 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v4 = v1 + *(v3 + 64);
  (*(v3 + 8))(v0 + v1);
  return swift_deallocObject();
}

uint64_t sub_2DAB0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2DB48()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2DB88()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2DC20()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2DC60()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

unint64_t sub_2DCA0()
{
  v2 = qword_EF2A8;
  if (!qword_EF2A8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_EF2A8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_2DD18()
{
  v2 = qword_EF2B0;
  if (!qword_EF2B0)
  {
    sub_81B0(&qword_EF288, &qword_C5C10);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_EF2B0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_2DDA0()
{
  v2 = qword_EF2C0;
  if (!qword_EF2C0)
  {
    sub_81B0(&qword_EF2B8, &qword_C5C20);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_EF2C0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_2DE28()
{
  v3 = *(sub_C1C64() - 8);
  v1 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v4 = v1 + *(v3 + 64);
  (*(v3 + 8))(v0 + v1);
  return swift_deallocObject();
}

uint64_t sub_2DEF4()
{
  v1 = *(sub_C1C64() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_2A244();
}

uint64_t sub_2DFB0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2DFF0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2E030()
{
  v8 = type metadata accessor for INSiriSocialConversation();
  v1 = *(*(v8 - 8) + 80);
  v6 = (v1 + 16) & ~v1;
  v7 = v6 + *(*(v8 - 8) + 64);
  v2 = *(v0 + v6 + 8);

  v3 = *(v0 + v6 + 24);

  v9 = *(v8 + 24);
  v10 = sub_C1B54();
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(v0 + v6 + v9, 1))
  {
    (*(v11 + 8))(v5 + v6 + v9, v10);
  }

  return swift_deallocObject();
}

uint64_t sub_2E1A0()
{
  v1 = *(type metadata accessor for INSiriSocialConversation() - 8);
  v2 = (v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  return sub_16208(v2);
}

uint64_t sub_2E25C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2E29C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

void *sub_2E2DC(void *a1, void *a2)
{
  if (a1[3])
  {
    v2 = a1[3];
    a2[3] = v2;
    a2[4] = a1[4];
    (**(v2 - 8))();
  }

  else
  {
    memcpy(a2, a1, 0x28uLL);
  }

  return a2;
}

uint64_t *sub_2E370(const void *a1, uint64_t *a2)
{
  if (a2[3])
  {
    sub_2560(a2);
    memcpy(a2, a1, 0x28uLL);
  }

  else
  {
    memcpy(a2, a1, 0x28uLL);
  }

  return a2;
}

unint64_t sub_2E44C()
{
  v2 = qword_EF568;
  if (!qword_EF568)
  {
    type metadata accessor for SocialConversationFlowDelegatePlugin();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_EF568);
    return WitnessTable;
  }

  return v2;
}

void *sub_2E4CC(size_t a1)
{
  if (&_swift_coroFrameAlloc)
  {
    return swift_coroFrameAlloc();
  }

  else
  {
    return malloc(a1);
  }
}

uint64_t sub_2E520(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = *(v1 + 16);
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_4CE4;

  return sub_255EC(a1, v6);
}

unint64_t sub_2E5E0()
{
  v2 = qword_EF570;
  if (!qword_EF570)
  {
    sub_C1D34();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_EF570);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_2E660()
{
  v2 = qword_EF578;
  if (!qword_EF578)
  {
    type metadata accessor for INSiriSocialConversation();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_EF578);
    return WitnessTable;
  }

  return v2;
}

void *sub_2E6E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v98 = v140;
  v99 = a5;
  v104 = a1;
  v105 = a2;
  v109 = a3;
  v110 = a4;
  v100 = 0;
  v112 = sub_1D834;
  v116 = sub_7BBC;
  v118 = sub_7B48;
  v120 = sub_7B48;
  v123 = sub_7C08;
  memset(__b, 0, sizeof(__b));
  v170 = 0;
  v171 = 0;
  v168 = 0;
  v169 = 0;
  v101 = 0;
  v108 = sub_C3234();
  v106 = *(v108 - 8);
  v107 = v108 - 8;
  v102 = (*(v106 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = __chkstk_darwin(v105);
  v6 = &v48 - v102;
  v103 = &v48 - v102;
  v170 = v7;
  v171 = v5;
  v168 = v8;
  v169 = v9;
  memset(&__b[4], 0, 32);

  __b[0] = v104;
  __b[1] = v105;
  v10 = sub_BF704();
  (*(v106 + 16))(v6, v10, v108);

  v113 = 32;
  v114 = 7;
  v11 = swift_allocObject();
  v12 = v110;
  v115 = v11;
  *(v11 + 16) = v109;
  *(v11 + 24) = v12;
  v127 = sub_C3224();
  v128 = sub_C3874();
  v111 = 17;
  v119 = swift_allocObject();
  *(v119 + 16) = 32;
  v121 = swift_allocObject();
  *(v121 + 16) = 8;
  v13 = swift_allocObject();
  v14 = v115;
  v117 = v13;
  *(v13 + 16) = v112;
  *(v13 + 24) = v14;
  v15 = swift_allocObject();
  v16 = v117;
  v124 = v15;
  *(v15 + 16) = v116;
  *(v15 + 24) = v16;
  v126 = sub_21E8(&unk_EEFA0, &unk_C50F0);
  v122 = sub_C3C64();
  v125 = v17;

  v18 = v119;
  v19 = v125;
  *v125 = v118;
  v19[1] = v18;

  v20 = v121;
  v21 = v125;
  v125[2] = v120;
  v21[3] = v20;

  v22 = v124;
  v23 = v125;
  v125[4] = v123;
  v23[5] = v22;
  sub_4E48();

  if (os_log_type_enabled(v127, v128))
  {
    v24 = v101;
    v91 = sub_C3954();
    v90 = sub_21E8(&qword_EE828, &qword_C5100);
    v92 = sub_5DD4(0);
    v93 = sub_5DD4(1);
    v94 = &v133;
    v133 = v91;
    v95 = &v132;
    v132 = v92;
    v96 = &v131;
    v131 = v93;
    sub_5E28(2, &v133);
    sub_5E28(1, v94);
    v129 = v118;
    v130 = v119;
    sub_5E3C(&v129, v94, v95, v96);
    v97 = v24;
    if (v24)
    {

      __break(1u);
    }

    else
    {
      v129 = v120;
      v130 = v121;
      sub_5E3C(&v129, &v133, &v132, &v131);
      v89 = 0;
      v129 = v123;
      v130 = v124;
      sub_5E3C(&v129, &v133, &v132, &v131);
      _os_log_impl(&dword_0, v127, v128, "rawId: %s", v91, 0xCu);
      sub_5E88(v92);
      sub_5E88(v93);
      sub_C3934();
    }
  }

  else
  {
  }

  _objc_release(v127);
  (*(v106 + 8))(v103, v108);
  v173._countAndFlagsBits = sub_C3564("dalHappy", 8uLL, 1);
  object = v173._object;
  v88 = sub_C3614(v173);

  if (!v88)
  {
    goto LABEL_38;
  }

  v165[2] = v109;
  v165[3] = v110;
  v25 = sub_C3564("Day", 3uLL, 1);
  v85 = v165;
  v165[0] = v25;
  v165[1] = v26;
  sub_B2E8();
  v86 = sub_C39D4();
  sub_8224(v85);
  if ((v86 & 1) == 0)
  {

    v35 = sub_C3564("dalHappyAprilFools", 0x12uLL, 1);
    v61 = v164;
    v164[0] = v35;
    v164[1] = v36;
    v163[2] = v109;
    v163[3] = v110;
    v62 = sub_C3574();
    sub_8224(v61);
    if (v62)
    {

      __b[4] = sub_C3564("aprilfool", 9uLL, 1);
      __b[5] = v37;
    }

    else
    {

      v38 = sub_C3564("dalHappyFestivalOfLights", 0x18uLL, 1);
      v59 = v163;
      v163[0] = v38;
      v163[1] = v39;
      v162[2] = v109;
      v162[3] = v110;
      v60 = sub_C3574();
      sub_8224(v59);
      if (v60)
      {

        __b[4] = sub_C3564("festivaloflight", 0xFuLL, 1);
        __b[5] = v40;
      }

      else
      {

        v41 = sub_C3564("dalHappyValentines", 0x12uLL, 1);
        v57 = v162;
        v162[0] = v41;
        v162[1] = v42;
        v160 = v109;
        v161 = v110;
        v58 = sub_C3574();
        sub_8224(v57);
        if (v58)
        {

          __b[4] = sub_C3564("valentine", 9uLL, 1);
          __b[5] = v43;
        }

        else
        {

          v157 = v109;
          v158 = v110;
          sub_1E0E8();
          sub_C3814();
          v54 = v159;
          v55 = sub_C3634();
          v56 = v44;

          __b[4] = v55;
          __b[5] = v56;
        }
      }
    }

    goto LABEL_38;
  }

  v150 = v109;
  v151 = v110;
  sub_1E0E8();
  v80 = &type metadata for String;
  sub_C3814();
  v146 = v152;
  v147 = v153;
  v148 = v154;
  v149 = v155;
  sub_3E638();
  sub_C3454();
  v77 = v156;
  v78 = sub_C3974();
  v79 = v27;

  v144 = v78;
  v145 = v79;
  v82 = sub_C3644();
  v83 = v28;

  __b[4] = v82;
  __b[5] = v83;

  v81 = sub_C3564("fathers", 7uLL, 1);
  v84 = v29;

  v142[0] = v82;
  v142[1] = v83;
  v142[2] = v81;
  v143 = v84;
  if (v83)
  {
    sub_146A0(v142, &v136);
    if (v143)
    {
      v74 = &v135;
      v135 = v136;
      v30 = *(v98 + 3);
      v73 = &v134;
      v134 = v30;
      v75 = sub_C3574();
      sub_8224(v73);
      sub_8224(v74);
      sub_8224(v142);
      v76 = v75;
      goto LABEL_14;
    }

    sub_8224(&v136);
    goto LABEL_16;
  }

  if (v143)
  {
LABEL_16:
    sub_146E0(v142);
    v76 = 0;
    goto LABEL_14;
  }

  sub_8224(v142);
  v76 = 1;
LABEL_14:
  v72 = v76;

  if (v72)
  {
    __b[4] = sub_C3564("father", 6uLL, 1);
    __b[5] = v31;

    goto LABEL_38;
  }

  v69 = __b[4];
  v70 = __b[5];

  v68 = sub_C3564("mothers", 7uLL, 1);
  v71 = v32;

  v140[0] = v69;
  v140[1] = v70;
  v140[2] = v68;
  v141 = v71;
  if (v70)
  {
    sub_146A0(v140, &v139);
    if (v141)
    {
      v65 = &v138;
      v138 = v139;
      v33 = *(v98 + 1);
      v64 = &v137;
      v137 = v33;
      v66 = sub_C3574();
      sub_8224(v64);
      sub_8224(v65);
      sub_8224(v140);
      v67 = v66;
      goto LABEL_25;
    }

    sub_8224(&v139);
    goto LABEL_27;
  }

  if (v141)
  {
LABEL_27:
    sub_146E0(v140);
    v67 = 0;
    goto LABEL_25;
  }

  sub_8224(v140);
  v67 = 1;
LABEL_25:
  v63 = v67;

  if (v63)
  {
    __b[4] = sub_C3564("mother", 6uLL, 1);
    __b[5] = v34;
  }

LABEL_38:
  sub_C3564("dalHappyFestivalOfLights", 0x18uLL, 1);
  v52 = v45;
  v53 = sub_C3574();

  if (v53)
  {
    __b[6] = sub_C3564("HINDU", 5uLL, 1);
    __b[7] = v46;
  }

  v49 = __b;
  __b[2] = v109;
  __b[3] = v110;
  v50 = __dst;
  v51 = 64;
  memcpy(__dst, __b, sizeof(__dst));
  sub_1D2DC(__dst, v166);

  sub_1CFBC(v49);
  return memcpy(v99, v50, v51);
}

uint64_t sub_2F52C()
{
  v7[2] = 0;
  v7[0] = sub_C3C44();
  v7[1] = v0;
  v10._countAndFlagsBits = sub_C3564("", 0, 1);
  sub_C3C34(v10);

  v9 = *v2;
  sub_146A0(&v9, &v6);
  v5 = v9;
  sub_C3C24();
  sub_8224(&v5);
  v11._countAndFlagsBits = sub_C3564("#", 1uLL, 1);
  sub_C3C34(v11);

  v8 = v2[1];
  sub_146A0(&v8, &v4);
  v3 = v8;
  sub_C3C24();
  sub_8224(&v3);
  v12._countAndFlagsBits = sub_C3564("", 0, 1);
  sub_C3C34(v12);

  sub_8224(v7);
  return sub_C3544();
}

double sub_2F6D4@<D0>(char *a1@<X8>)
{
  v13 = a1;
  v14 = 0;
  v8[1] = 0;
  v11 = type metadata accessor for DialogServiceButton();
  v9 = (*(*(v11 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0);
  v1 = v8 - v9;
  v12 = v1;
  v14 = v8 - v9;
  *v1 = 0;
  *(v1 + 1) = 0;
  v10 = *(v2 + 20);
  v3 = sub_C1AC4();
  (*(*(v3 - 8) + 56))(&v12[v10], 1);
  v4 = v12;
  v5 = v13;
  v6 = &v12[*(v11 + 24)];
  *v6 = 0;
  *(v6 + 1) = 0;
  *&result = sub_3F708(v4, v5).n128_u64[0];
  return result;
}

uint64_t *sub_2F7DC()
{
  if (qword_EE520 != -1)
  {
    swift_once();
  }

  return &qword_F1040;
}

void *sub_2F83C()
{
  v2 = *(v0 + 16);
  _objc_retain(v2);
  return v2;
}

uint64_t sub_2F870@<X0>(uint64_t a1@<X8>)
{
  v4 = OBJC_IVAR____TtC36SocialConversationFlowDelegatePlugin13DialogService_options;
  v2 = sub_C2F14();
  return (*(*(v2 - 8) + 16))(a1, v1 + v4);
}

uint64_t sub_2F8DC()
{
  v1[1] = 0;
  v2 = (*(*(sub_C2F14() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0);
  v3 = v1 - v2;
  type metadata accessor for DialogService();
  sub_2F980();
  result = sub_2F998(v3);
  qword_F1040 = result;
  return result;
}

uint64_t sub_2F998(uint64_t a1)
{
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  return sub_2FA14(a1);
}

uint64_t sub_2F9E4()
{
  v1 = *sub_2F7DC();

  return v1;
}

uint64_t sub_2FA14(uint64_t a1)
{
  v16 = a1;
  v19 = 0;
  v18 = 0;
  v11[1] = 0;
  v15 = sub_C2F14();
  v13 = *(v15 - 8);
  v14 = v15 - 8;
  v11[0] = (*(v13 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0);
  v12 = v11 - v11[0];
  v19 = v2;
  v18 = v1;
  sub_210D0();
  type metadata accessor for DialogService();
  v3 = sub_2115C();
  v4 = v17;
  v5 = v13;
  v6 = v16;
  v7 = v15;
  v8 = v3;
  v9 = v12;
  *(v17 + 16) = v8;
  (*(v5 + 16))(v9, v6, v7);
  (*(v13 + 32))(v4 + OBJC_IVAR____TtC36SocialConversationFlowDelegatePlugin13DialogService_options, v12, v15);
  (*(v13 + 8))(v16, v15);
  return v17;
}

uint64_t sub_2FB84@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  v251 = a7;
  v326 = a1;
  v325 = a2;
  v321 = a3;
  v322 = a4;
  v334 = a5;
  v323 = a6;
  v252 = sub_3E874;
  v253 = sub_7BBC;
  v254 = sub_7B48;
  v255 = sub_7B48;
  v256 = sub_7C08;
  v257 = sub_3EAF4;
  v258 = sub_7BBC;
  v259 = sub_7B48;
  v260 = sub_7B48;
  v261 = sub_7C08;
  v262 = sub_31D84;
  v263 = sub_1D834;
  v264 = sub_7BBC;
  v265 = sub_7B48;
  v266 = sub_7B48;
  v267 = sub_7C08;
  v268 = sub_3EE34;
  v269 = sub_3EE94;
  v270 = sub_7BBC;
  v271 = sub_7B48;
  v272 = sub_7B48;
  v273 = sub_7C08;
  v382 = 0;
  v380 = 0;
  v379 = 0;
  v378 = 0;
  v376 = 0;
  v377 = 0;
  v375 = 0;
  v374 = 0;
  v373 = 0;
  v372 = 0;
  v363 = 0;
  v381 = 0;
  v7 = sub_21E8(&qword_EEF90, &qword_C5DF0);
  v274 = (*(*(v7 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v7);
  v275 = &v103[-v274];
  v319 = 0;
  v276 = sub_C1FE4();
  v277 = *(v276 - 8);
  v278 = v276 - 8;
  v279 = (*(v277 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v319);
  v280 = &v103[-v279];
  v281 = sub_C2264();
  v282 = *(v281 - 8);
  v283 = v281 - 8;
  v284 = (*(v282 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v8 = __chkstk_darwin(v319);
  v285 = &v103[-v284];
  v286 = (v9 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v8);
  v287 = &v103[-v286];
  v382 = &v103[-v286];
  v288 = sub_C2134();
  v289 = *(v288 - 8);
  v290 = v288 - 8;
  v291 = (*(v289 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v319);
  v292 = &v103[-v291];
  v381 = &v103[-v291];
  v293 = sub_C2F14();
  v294 = *(v293 - 8);
  v295 = v293 - 8;
  v296 = (*(v294 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v293);
  v297 = &v103[-v296];
  v298 = sub_21E8(&qword_EEF88, &unk_C5A70);
  v299 = *(v298 - 8);
  v300 = v299;
  v301 = *(v299 + 64);
  v302 = (v301 + 15) & 0xFFFFFFFFFFFFFFF0;
  v10 = __chkstk_darwin(v319);
  v303 = &v103[-v302];
  v304 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  v12 = __chkstk_darwin(v10);
  v305 = &v103[-v304];
  v306 = (v13 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v12);
  v307 = &v103[-v306];
  v380 = &v103[-v306];
  v308 = sub_C3234();
  v309 = *(v308 - 8);
  v310 = v308 - 8;
  v311 = (v309[8] + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v308);
  v312 = &v103[-v311];
  v313 = (v14 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v103[-v311]);
  v314 = &v103[-v313];
  v315 = (v15 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v103[-v313]);
  v316 = &v103[-v315];
  v317 = (v16 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v103[-v315]);
  v318 = &v103[-v317];
  v320 = (*(*(sub_21E8(&qword_EF008, &unk_C5AD0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v319);
  v332 = &v103[-v320];
  v327 = sub_C1AC4();
  v328 = *(v327 - 8);
  v329 = v327 - 8;
  v330 = (*(v328 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v17 = __chkstk_darwin(v326);
  v331 = &v103[-v330];
  v379 = &v103[-v330];
  v378 = v17;
  v376 = v18;
  v377 = v19;
  v375 = v20;
  v374 = v21;
  v373 = v22;
  v372 = v23;
  v333 = *(v23 + 16);
  _objc_retain(v333);
  sub_A93A4(v334, v333);
  v335 = 0;
  v336 = 0;
  _objc_release(v333);
  (*(v328 + 56))(v332, 0, 1, v327);
  v250 = v335;
  v249 = v335;
  if ((*(v328 + 48))(v332, 1, v327) == 1)
  {
    sub_1DAA4(v332);
    v104 = 12;
    v94 = sub_C3C44();
    v112 = &v370;
    v370 = v94;
    v371 = v95;
    v110 = 1;
    v383._countAndFlagsBits = sub_C3564("CatGlobals: ", v104, 1);
    object = v383._object;
    sub_C3C34(v383);

    _objc_retain(v334);
    v107 = &v369;
    v369 = v334;
    v109 = 0;
    v106 = sub_C2E74();
    sub_3E724();
    v96 = sub_C3504();
    v108 = v368;
    v368[0] = v96;
    v368[1] = v97;
    sub_C3C24();
    sub_8224(v108);
    v384._countAndFlagsBits = sub_C3564("", v109, v110 & 1);
    v111 = v384._object;
    sub_C3C34(v384);

    v114 = v370;
    v113 = v371;

    sub_8224(v112);
    v116 = sub_C3544();
    v115 = v98;
    sub_3E7A4();
    v99 = swift_allocError();
    v100 = v115;
    v119 = v99;
    *v101 = v116;
    *(v101 + 8) = v100;
    *(v101 + 16) = 1;
    v117 = sub_2F52C();
    v118 = v102;
    sub_3AFDC(v119, v117, v102, v325, v321, v251);
  }

  else
  {
    v24 = v318;
    (*(v328 + 32))(v331, v332, v327);
    v25 = sub_BF704();
    v234 = v309[2];
    v235 = v309 + 2;
    v234(v24, v25, v308);
    sub_1D2DC(v326, v367);
    v238 = 7;
    v239 = swift_allocObject();
    memcpy((v239 + 16), v326, 0x40uLL);
    v247 = sub_C3224();
    v248 = sub_C3874();
    v236 = 17;
    v241 = swift_allocObject();
    *(v241 + 16) = 32;
    v242 = swift_allocObject();
    *(v242 + 16) = 8;
    v237 = 32;
    v26 = swift_allocObject();
    v27 = v239;
    v240 = v26;
    *(v26 + 16) = v252;
    *(v26 + 24) = v27;
    v28 = swift_allocObject();
    v29 = v240;
    v244 = v28;
    *(v28 + 16) = v253;
    *(v28 + 24) = v29;
    v246 = sub_21E8(&unk_EEFA0, &unk_C50F0);
    v243 = sub_C3C64();
    v245 = v30;

    v31 = v241;
    v32 = v245;
    *v245 = v254;
    v32[1] = v31;

    v33 = v242;
    v34 = v245;
    v245[2] = v255;
    v34[3] = v33;

    v35 = v244;
    v36 = v245;
    v245[4] = v256;
    v36[5] = v35;
    sub_4E48();

    if (os_log_type_enabled(v247, v248))
    {
      v37 = v249;
      v227 = sub_C3954();
      v226 = sub_21E8(&qword_EE828, &qword_C5100);
      v228 = sub_5DD4(0);
      v229 = sub_5DD4(1);
      v230 = &v341;
      v341 = v227;
      v231 = &v340;
      v340 = v228;
      v232 = &v339;
      v339 = v229;
      sub_5E28(2, &v341);
      sub_5E28(1, v230);
      v337 = v254;
      v338 = v241;
      sub_5E3C(&v337, v230, v231, v232);
      v233 = v37;
      if (v37)
      {

        __break(1u);
      }

      else
      {
        v337 = v255;
        v338 = v242;
        sub_5E3C(&v337, &v341, &v340, &v339);
        v223 = 0;
        v337 = v256;
        v338 = v244;
        sub_5E3C(&v337, &v341, &v340, &v339);
        v222 = 0;
        _os_log_impl(&dword_0, v247, v248, "Calling CAT: %s", v227, 0xCu);
        sub_5E88(v228);
        sub_5E88(v229);
        sub_C3934();

        v224 = v222;
      }
    }

    else
    {
      v38 = v249;

      v224 = v38;
    }

    v198 = v224;
    _objc_release(v247);
    v199 = v309[1];
    v200 = v309 + 1;
    v199(v318, v308);
    v201 = 0;
    v203 = sub_C2EA4();
    v206 = sub_2F52C();
    v208 = v39;
    v204 = type metadata accessor for ParameterService();

    sub_1D2DC(v326, v365);
    _objc_retain(v334);
    v202 = v364;
    sub_24F4(v323, v364);
    v205 = sub_749F0(v324, v326, v334, v202);
    v207 = v366;
    v366[3] = v204;
    v366[4] = sub_3E954();
    v366[0] = v205;
    (*(v294 + 16))(v297, v324 + OBJC_IVAR____TtC36SocialConversationFlowDelegatePlugin13DialogService_options, v293);
    sub_C2E94();
    v40 = v316;
    (*(v294 + 8))(v297, v293);
    sub_1FA80(v207);

    v41 = sub_BF704();
    v234(v40, v41, v308);
    sub_19F8C(v307, v305);
    v209 = (*(v300 + 80) + 16) & ~*(v300 + 80);
    v212 = 7;
    v213 = swift_allocObject();
    sub_1D624(v305, (v213 + v209));
    v220 = sub_C3224();
    v221 = sub_C3874();
    v210 = 17;
    v215 = swift_allocObject();
    *(v215 + 16) = 32;
    v216 = swift_allocObject();
    *(v216 + 16) = 8;
    v211 = 32;
    v42 = swift_allocObject();
    v43 = v213;
    v214 = v42;
    *(v42 + 16) = v257;
    *(v42 + 24) = v43;
    v44 = swift_allocObject();
    v45 = v214;
    v218 = v44;
    *(v44 + 16) = v258;
    *(v44 + 24) = v45;
    v217 = sub_C3C64();
    v219 = v46;

    v47 = v215;
    v48 = v219;
    *v219 = v259;
    v48[1] = v47;

    v49 = v216;
    v50 = v219;
    v219[2] = v260;
    v50[3] = v49;

    v51 = v218;
    v52 = v219;
    v219[4] = v261;
    v52[5] = v51;
    sub_4E48();

    if (os_log_type_enabled(v220, v221))
    {
      v53 = v198;
      v191 = sub_C3954();
      v190 = sub_21E8(&qword_EE828, &qword_C5100);
      v192 = sub_5DD4(0);
      v193 = sub_5DD4(1);
      v194 = &v346;
      v346 = v191;
      v195 = &v345;
      v345 = v192;
      v196 = &v344;
      v344 = v193;
      sub_5E28(2, &v346);
      sub_5E28(1, v194);
      v342 = v259;
      v343 = v215;
      sub_5E3C(&v342, v194, v195, v196);
      v197 = v53;
      if (v53)
      {

        __break(1u);
      }

      else
      {
        v342 = v260;
        v343 = v216;
        sub_5E3C(&v342, &v346, &v345, &v344);
        v188 = 0;
        v342 = v261;
        v343 = v218;
        sub_5E3C(&v342, &v346, &v345, &v344);
        v187 = 0;
        _os_log_impl(&dword_0, v220, v221, "result: %s", v191, 0xCu);
        sub_5E88(v192);
        sub_5E88(v193);
        sub_C3934();

        v189 = v187;
      }
    }

    else
    {
      v54 = v198;

      v189 = v54;
    }

    v186 = v189;
    _objc_release(v220);
    v199(v316, v308);
    sub_19F8C(v307, v303);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v123 = *v303;
      v363 = v123;
      swift_errorRetain();
      sub_3E7A4();
      v122 = swift_allocError();
      *v92 = v123;
      *(v92 + 8) = 0;
      *(v92 + 16) = 2;
      v120 = sub_2F52C();
      v121 = v93;
      sub_3AFDC(v122, v120, v93, v325, v321, v251);

      sub_1A068(v307);
      return (*(v328 + 8))(v331, v327);
    }

    else
    {
      v55 = v186;
      v56 = v292;
      (*(v289 + 32))(v292, v303, v288);
      v381 = v56;
      v182 = sub_C2114();
      v362 = sub_C2124();
      v183 = sub_21E8(&qword_EF5A0, &qword_C5DF8);
      v57 = sub_3EC3C();
      result = sub_28D90(v262, 0, v183, &type metadata for String, &type metadata for Never, v57, &protocol witness table for Never, v225);
      v184 = v55;
      v185 = result;
      if (v55)
      {
        __break(1u);
      }

      else
      {
        v169 = v185;
        sub_1D7C8(&v362);
        sub_3C100(v182, v169, v287);
        v59 = v314;

        v60 = sub_BF704();
        v234(v59, v60, v308);

        v171 = 32;
        v172 = 7;
        v61 = swift_allocObject();
        v62 = v321;
        v173 = v61;
        *(v61 + 16) = v325;
        *(v61 + 24) = v62;
        v180 = sub_C3224();
        v181 = sub_C3874();
        v170 = 17;
        v175 = swift_allocObject();
        *(v175 + 16) = 32;
        v176 = swift_allocObject();
        *(v176 + 16) = 8;
        v63 = swift_allocObject();
        v64 = v173;
        v174 = v63;
        *(v63 + 16) = v263;
        *(v63 + 24) = v64;
        v65 = swift_allocObject();
        v66 = v174;
        v178 = v65;
        *(v65 + 16) = v264;
        *(v65 + 24) = v66;
        v177 = sub_C3C64();
        v179 = v67;

        v68 = v175;
        v69 = v179;
        *v179 = v265;
        v69[1] = v68;

        v70 = v176;
        v71 = v179;
        v179[2] = v266;
        v71[3] = v70;

        v72 = v178;
        v73 = v179;
        v179[4] = v267;
        v73[5] = v72;
        sub_4E48();

        if (os_log_type_enabled(v180, v181))
        {
          v74 = v184;
          v162 = sub_C3954();
          v161 = sub_21E8(&qword_EE828, &qword_C5100);
          v163 = sub_5DD4(0);
          v164 = sub_5DD4(1);
          v165 = &v351;
          v351 = v162;
          v166 = &v350;
          v350 = v163;
          v167 = &v349;
          v349 = v164;
          sub_5E28(2, &v351);
          sub_5E28(1, v165);
          v347 = v265;
          v348 = v175;
          sub_5E3C(&v347, v165, v166, v167);
          v168 = v74;
          if (v74)
          {

            __break(1u);
          }

          else
          {
            v347 = v266;
            v348 = v176;
            sub_5E3C(&v347, &v351, &v350, &v349);
            v159 = 0;
            v347 = v267;
            v348 = v178;
            sub_5E3C(&v347, &v351, &v350, &v349);
            v158 = 0;
            _os_log_impl(&dword_0, v180, v181, "Sending SiriKitEvent .completed for %s", v162, 0xCu);
            sub_5E88(v163);
            sub_5E88(v164);
            sub_C3934();

            v160 = v158;
          }
        }

        else
        {
          v75 = v184;

          v160 = v75;
        }

        v136 = v160;
        _objc_release(v180);
        v199(v314, v308);
        v143 = &v359;
        sub_C1E94();
        v140 = v360;
        v141 = v361;
        v139 = sub_808C(v143, v360);
        v137 = 0;
        sub_C1F14();
        (*(v277 + 104))(v280, enum case for ActivityType.completed(_:), v276);

        v76 = sub_C1EB4();
        (*(*(v76 - 8) + 56))(v275, 1);
        sub_1D2DC(v326, v358);
        v144 = 80;
        v148 = 7;
        v138 = swift_allocObject();
        v145 = 64;
        memcpy((v138 + 16), v326, 0x40uLL);
        v142 = sub_C1EE4();
        sub_C1EA4();
        v77 = v312;

        sub_2560(v143);
        v78 = sub_BF704();
        v234(v77, v78, v308);
        sub_1D2DC(v326, v357);
        v149 = swift_allocObject();
        memcpy((v149 + 16), v326, v145);
        v156 = sub_C3224();
        v157 = sub_C3874();
        v146 = 17;
        v151 = swift_allocObject();
        *(v151 + 16) = 32;
        v152 = swift_allocObject();
        *(v152 + 16) = 8;
        v147 = 32;
        v79 = swift_allocObject();
        v80 = v149;
        v150 = v79;
        *(v79 + 16) = v269;
        *(v79 + 24) = v80;
        v81 = swift_allocObject();
        v82 = v150;
        v154 = v81;
        *(v81 + 16) = v270;
        *(v81 + 24) = v82;
        v153 = sub_C3C64();
        v155 = v83;

        v84 = v151;
        v85 = v155;
        *v155 = v271;
        v85[1] = v84;

        v86 = v152;
        v87 = v155;
        v155[2] = v272;
        v87[3] = v86;

        v88 = v154;
        v89 = v155;
        v155[4] = v273;
        v89[5] = v88;
        sub_4E48();

        if (os_log_type_enabled(v156, v157))
        {
          v90 = v136;
          v129 = sub_C3954();
          v128 = sub_21E8(&qword_EE828, &qword_C5100);
          v130 = sub_5DD4(0);
          v131 = sub_5DD4(1);
          v132 = &v356;
          v356 = v129;
          v133 = &v355;
          v355 = v130;
          v134 = &v354;
          v354 = v131;
          sub_5E28(2, &v356);
          sub_5E28(1, v132);
          v352 = v271;
          v353 = v151;
          sub_5E3C(&v352, v132, v133, v134);
          v135 = v90;
          if (v90)
          {

            __break(1u);
          }

          else
          {
            v352 = v272;
            v353 = v152;
            sub_5E3C(&v352, &v356, &v355, &v354);
            v127 = 0;
            v352 = v273;
            v353 = v154;
            sub_5E3C(&v352, &v356, &v355, &v354);
            _os_log_impl(&dword_0, v156, v157, "Successful completion of CAT: %s", v129, 0xCu);
            sub_5E88(v130);
            sub_5E88(v131);
            sub_C3934();
          }
        }

        else
        {
        }

        _objc_release(v156);
        v199(v312, v308);
        v126 = sub_2F52C();
        v124 = v91;
        v125 = sub_C2124();
        (*(v282 + 16))(v285, v287, v281);
        sub_C20E4();
        swift_storeEnumTagMultiPayload();
        (*(v282 + 8))(v287, v281);
        (*(v289 + 8))(v292, v288);
        sub_1A068(v307);
        return (*(v328 + 8))(v331, v327);
      }
    }
  }

  return result;
}

uint64_t sub_31CE8(uint64_t a1)
{
  v3 = a1;
  v5 = sub_21E8(&qword_EEF88, &unk_C5A70);
  v4 = (*(*(v5 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v1 = __chkstk_darwin(v3);
  v6 = &v3 - v4;
  sub_19F8C(v1, (&v3 - v4));
  return sub_C34F4();
}

uint64_t sub_31D84@<X0>(uint64_t *a1@<X8>)
{
  result = sub_C2144();
  *a1 = result;
  a1[1] = v2;
  return result;
}

uint64_t sub_31DD4(uint64_t *a1)
{
  v2 = *a1;

  sub_2F52C();
  sub_C1EC4();
}

uint64_t sub_31E58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  *(v8 + 512) = v7;
  *(v8 + 721) = a7 & 1;
  *(v8 + 504) = a6;
  *(v8 + 496) = a5;
  *(v8 + 488) = a4;
  *(v8 + 480) = a3;
  *(v8 + 472) = a2;
  *(v8 + 464) = a1;
  *(v8 + 408) = v8;
  *(v8 + 416) = 0;
  *(v8 + 392) = 0;
  *(v8 + 400) = 0;
  *(v8 + 424) = 0;
  *(v8 + 432) = 0;
  *(v8 + 440) = 0;
  *(v8 + 720) = 0;
  *(v8 + 448) = 0;
  *(v8 + 456) = 0;
  v9 = *(*(sub_21E8(&qword_EEF90, &qword_C5DF0) - 8) + 64) + 15;
  *(v8 + 520) = swift_task_alloc();
  v10 = sub_C1FE4();
  *(v8 + 528) = v10;
  v19 = *(v10 - 8);
  *(v8 + 536) = v19;
  v11 = *(v19 + 64) + 15;
  *(v8 + 544) = swift_task_alloc();
  v12 = sub_C2F14();
  *(v8 + 552) = v12;
  v20 = *(v12 - 8);
  *(v8 + 560) = v20;
  v13 = *(v20 + 64) + 15;
  *(v8 + 568) = swift_task_alloc();
  v14 = sub_C3234();
  *(v8 + 576) = v14;
  v21 = *(v14 - 8);
  *(v8 + 584) = v21;
  v22 = *(v21 + 64);
  *(v8 + 592) = swift_task_alloc();
  *(v8 + 600) = swift_task_alloc();
  *(v8 + 608) = swift_task_alloc();
  *(v8 + 616) = swift_task_alloc();
  v15 = sub_C1AC4();
  *(v8 + 624) = v15;
  v23 = *(v15 - 8);
  *(v8 + 632) = v23;
  v16 = *(v23 + 64) + 15;
  *(v8 + 640) = swift_task_alloc();
  *(v8 + 416) = a1;
  *(v8 + 392) = a2;
  *(v8 + 400) = a3;
  *(v8 + 424) = a4;
  *(v8 + 432) = a5;
  *(v8 + 440) = a6;
  *(v8 + 720) = a7 & 1;
  *(v8 + 448) = v7;
  v17 = *(v8 + 408);

  return _swift_task_switch(sub_3220C, 0);
}

uint64_t sub_3220C()
{
  v52 = v0;
  v44 = v0[80];
  v1 = v0[64];
  v46 = v0[62];
  v0[51] = v0;
  v45 = *(v1 + 16);
  _objc_retain(v45);
  sub_A93A4(v46, v45);
  v2 = v43[77];
  v33 = v43[72];
  __src = v43[58];
  v32 = v43[73];
  _objc_release(v45);
  v3 = sub_BF704();
  v4 = *(v32 + 16);
  v43[81] = v4;
  v43[82] = (v32 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v4(v2, v3, v33);
  sub_1D2DC(__src, v43 + 2);
  v35 = swift_allocObject();
  memcpy((v35 + 16), __src, 0x40uLL);
  oslog = sub_C3224();
  v42 = sub_C3874();
  v37 = swift_allocObject();
  *(v37 + 16) = 32;
  v38 = swift_allocObject();
  *(v38 + 16) = 8;
  v36 = swift_allocObject();
  *(v36 + 16) = sub_3E874;
  *(v36 + 24) = v35;
  v39 = swift_allocObject();
  *(v39 + 16) = sub_7BBC;
  *(v39 + 24) = v36;
  v43[83] = sub_21E8(&unk_EEFA0, &unk_C50F0);
  sub_C3C64();
  v40 = v5;

  *v40 = sub_7B48;
  v40[1] = v37;

  v40[2] = sub_7B48;
  v40[3] = v38;

  v40[4] = sub_7C08;
  v40[5] = v39;
  sub_4E48();

  if (os_log_type_enabled(oslog, v42))
  {
    buf = sub_C3954();
    sub_21E8(&qword_EE828, &qword_C5100);
    v30 = sub_5DD4(0);
    v31 = sub_5DD4(1);
    v47 = buf;
    v48 = v30;
    v49 = v31;
    sub_5E28(2, &v47);
    sub_5E28(1, &v47);
    v50 = sub_7B48;
    v51 = v37;
    sub_5E3C(&v50, &v47, &v48, &v49);
    v50 = sub_7B48;
    v51 = v38;
    sub_5E3C(&v50, &v47, &v48, &v49);
    v50 = sub_7C08;
    v51 = v39;
    sub_5E3C(&v50, &v47, &v48, &v49);
    _os_log_impl(&dword_0, oslog, v42, "Calling CAT: %s", buf, 0xCu);
    sub_5E88(v30);
    sub_5E88(v31);
    sub_C3934();
  }

  else
  {
  }

  v16 = v43[77];
  v17 = v43[72];
  v26 = v43[71];
  v25 = v43[69];
  v23 = v43[64];
  v18 = v43[63];
  v20 = v43[62];
  v19 = v43[58];
  v15 = v43[73];
  v24 = v43[70];
  _objc_release(oslog);
  v6 = *(v15 + 8);
  v43[84] = v6;
  v43[85] = (v15 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v16, v17);
  sub_C2EF4();
  v27 = sub_2F52C();
  v28 = v7;
  v43[86] = v7;
  v21 = type metadata accessor for ParameterService();

  sub_1D2DC(v19, v43 + 10);
  _objc_retain(v20);
  sub_24F4(v18, (v43 + 39));
  v22 = sub_749F0(v23, v19, v20, v43 + 39);
  v43[37] = v21;
  v43[38] = sub_3E954();
  v43[34] = v22;
  (*(v24 + 16))(v26, v23 + OBJC_IVAR____TtC36SocialConversationFlowDelegatePlugin13DialogService_options, v25);
  v8 = async function pointer to static CATDialog.execute(templateDir:catId:parameters:globals:callback:options:)[1];
  v9 = swift_task_alloc();
  v43[87] = v9;
  *v9 = v43[51];
  v9[1] = sub_32C38;
  v10 = v43[80];
  v11 = v43[71];
  v12 = v43[62];
  v13 = v43[61];

  return static CATDialog.execute(templateDir:catId:parameters:globals:callback:options:)(v10, v27, v28, v13, v12, v43 + 34, v11);
}

uint64_t sub_32C38(uint64_t a1)
{
  v13 = *v2;
  v10 = (*v2 + 16);
  v11 = (*v2 + 408);
  v12 = (*v2 + 272);
  v4 = *(*v2 + 696);
  v13[51] = *v2;
  v13[88] = a1;
  v13[89] = v1;

  if (v1)
  {
    v7 = *v11;
    v6 = sub_34410;
  }

  else
  {
    v9 = v10[84];
    (*(v10[68] + 8))(v10[69], v10[67]);
    sub_1FA80(v12);

    v5 = *v11;
    v6 = sub_32DF4;
  }

  return _swift_task_switch(v6, 0);
}

uint64_t sub_32DF4()
{
  v115 = v0;
  v90 = v0[88];
  v97 = v0[83];
  v88 = v0[82];
  v89 = v0[81];
  v1 = v0[76];
  v87 = v0[72];
  v0[51] = v0;
  v0[57] = v90;
  v2 = sub_BF704();
  v89(v1, v2, v87);
  _objc_retain(v90);
  v91 = swift_allocObject();
  *(v91 + 16) = v90;
  v98 = sub_C3224();
  v99 = sub_C3874();
  v93 = swift_allocObject();
  *(v93 + 16) = 32;
  v94 = swift_allocObject();
  *(v94 + 16) = 8;
  v92 = swift_allocObject();
  *(v92 + 16) = sub_3F0EC;
  *(v92 + 24) = v91;
  v95 = swift_allocObject();
  *(v95 + 16) = sub_7BBC;
  *(v95 + 24) = v92;
  sub_C3C64();
  v96 = v3;

  *v96 = sub_7B48;
  v96[1] = v93;

  v96[2] = sub_7B48;
  v96[3] = v94;

  v96[4] = sub_7C08;
  v96[5] = v95;
  sub_4E48();

  if (os_log_type_enabled(v98, v99))
  {
    v4 = *(v86 + 712);
    buf = sub_C3954();
    sub_21E8(&qword_EE828, &qword_C5100);
    v84 = sub_5DD4(0);
    v85 = sub_5DD4(1);
    v110 = buf;
    v111 = v84;
    v112 = v85;
    sub_5E28(2, &v110);
    sub_5E28(1, &v110);
    v113 = sub_7B48;
    v114 = v93;
    sub_5E3C(&v113, &v110, &v111, &v112);
    if (v4)
    {
    }

    v113 = sub_7B48;
    v114 = v94;
    sub_5E3C(&v113, &v110, &v111, &v112);
    v113 = sub_7C08;
    v114 = v95;
    sub_5E3C(&v113, &v110, &v111, &v112);
    _os_log_impl(&dword_0, v98, v99, "result: %s", buf, 0xCu);
    sub_5E88(v84);
    sub_5E88(v85);
    sub_C3934();

    v82 = 0;
  }

  else
  {

    v82 = *(v86 + 712);
  }

  v79 = *(v86 + 680);
  v80 = *(v86 + 672);
  v77 = *(v86 + 608);
  v78 = *(v86 + 576);
  v81 = *(v86 + 721);
  _objc_release(v98);
  v80(v77, v78);
  if (v81)
  {
    v58 = v82;
  }

  else
  {
    v74 = *(v86 + 664);
    v64 = *(v86 + 656);
    v65 = *(v86 + 648);
    v6 = *(v86 + 600);
    v63 = *(v86 + 576);
    v67 = *(v86 + 480);
    v66 = *(v86 + 472);
    v7 = sub_BF704();
    v65(v6, v7, v63);

    v68 = swift_allocObject();
    *(v68 + 16) = v66;
    *(v68 + 24) = v67;
    oslog = sub_C3224();
    v76 = sub_C3874();
    v70 = swift_allocObject();
    *(v70 + 16) = 32;
    v71 = swift_allocObject();
    *(v71 + 16) = 8;
    v69 = swift_allocObject();
    *(v69 + 16) = sub_1D834;
    *(v69 + 24) = v68;
    v72 = swift_allocObject();
    *(v72 + 16) = sub_7BBC;
    *(v72 + 24) = v69;
    sub_C3C64();
    v73 = v8;

    *v73 = sub_7B48;
    v73[1] = v70;

    v73[2] = sub_7B48;
    v73[3] = v71;

    v73[4] = sub_7C08;
    v73[5] = v72;
    sub_4E48();

    if (os_log_type_enabled(oslog, v76))
    {
      v60 = sub_C3954();
      sub_21E8(&qword_EE828, &qword_C5100);
      v61 = sub_5DD4(0);
      v62 = sub_5DD4(1);
      v105 = v60;
      v106 = v61;
      v107 = v62;
      sub_5E28(2, &v105);
      sub_5E28(1, &v105);
      v108 = sub_7B48;
      v109 = v70;
      sub_5E3C(&v108, &v105, &v106, &v107);
      if (v82)
      {
      }

      v108 = sub_7B48;
      v109 = v71;
      sub_5E3C(&v108, &v105, &v106, &v107);
      v108 = sub_7C08;
      v109 = v72;
      sub_5E3C(&v108, &v105, &v106, &v107);
      _os_log_impl(&dword_0, oslog, v76, "Sending SiriKitEvent .completed for %s", v60, 0xCu);
      sub_5E88(v61);
      sub_5E88(v62);
      sub_C3934();

      v59 = 0;
    }

    else
    {

      v59 = v82;
    }

    v47 = *(v86 + 680);
    v48 = *(v86 + 672);
    v45 = *(v86 + 600);
    v46 = *(v86 + 576);
    v52 = *(v86 + 544);
    v50 = *(v86 + 528);
    v55 = *(v86 + 520);
    v54 = *(v86 + 480);
    v53 = *(v86 + 472);
    __src = *(v86 + 464);
    v49 = *(v86 + 536);
    _objc_release(oslog);
    v48(v45, v46);
    sub_C1E94();
    v57 = *(v86 + 384);
    sub_808C((v86 + 352), *(v86 + 376));
    sub_C1F14();
    (*(v49 + 104))(v52, enum case for ActivityType.completed(_:), v50);

    v9 = sub_C1EB4();
    (*(*(v9 - 8) + 56))(v55, 1);
    sub_1D2DC(__src, (v86 + 208));
    v56 = swift_allocObject();
    memcpy((v56 + 16), __src, 0x40uLL);
    sub_C1EE4();
    sub_C1EA4();

    sub_2560((v86 + 352));
    v58 = v59;
  }

  v42 = *(v86 + 664);
  v33 = *(v86 + 656);
  v34 = *(v86 + 648);
  v10 = *(v86 + 592);
  v32 = *(v86 + 576);
  v35 = *(v86 + 464);
  v11 = sub_BF704();
  v34(v10, v11, v32);
  sub_1D2DC(v35, (v86 + 144));
  v36 = swift_allocObject();
  memcpy((v36 + 16), v35, 0x40uLL);
  log = sub_C3224();
  v44 = sub_C3874();
  v38 = swift_allocObject();
  *(v38 + 16) = 32;
  v39 = swift_allocObject();
  *(v39 + 16) = 8;
  v37 = swift_allocObject();
  *(v37 + 16) = sub_3EE94;
  *(v37 + 24) = v36;
  v40 = swift_allocObject();
  *(v40 + 16) = sub_7BBC;
  *(v40 + 24) = v37;
  sub_C3C64();
  v41 = v12;

  *v41 = sub_7B48;
  v41[1] = v38;

  v41[2] = sub_7B48;
  v41[3] = v39;

  v41[4] = sub_7C08;
  v41[5] = v40;
  sub_4E48();

  if (os_log_type_enabled(log, v44))
  {
    v29 = sub_C3954();
    sub_21E8(&qword_EE828, &qword_C5100);
    v30 = sub_5DD4(0);
    v31 = sub_5DD4(1);
    v100 = v29;
    v101 = v30;
    v102 = v31;
    sub_5E28(2, &v100);
    sub_5E28(1, &v100);
    v103 = sub_7B48;
    v104 = v38;
    sub_5E3C(&v103, &v100, &v101, &v102);
    if (v58)
    {
    }

    v103 = sub_7B48;
    v104 = v39;
    sub_5E3C(&v103, &v100, &v101, &v102);
    v103 = sub_7C08;
    v104 = v40;
    sub_5E3C(&v103, &v100, &v101, &v102);
    _os_log_impl(&dword_0, log, v44, "Successful completion of CAT: %s", v29, 0xCu);
    sub_5E88(v30);
    sub_5E88(v31);
    sub_C3934();
  }

  else
  {
  }

  v17 = *(v86 + 680);
  v18 = *(v86 + 672);
  v21 = *(v86 + 640);
  v20 = *(v86 + 624);
  v22 = *(v86 + 616);
  v23 = *(v86 + 608);
  v24 = *(v86 + 600);
  v25 = *(v86 + 592);
  v16 = *(v86 + 576);
  v26 = *(v86 + 568);
  v27 = *(v86 + 544);
  v28 = *(v86 + 520);
  v19 = *(v86 + 632);
  _objc_release(log);
  v18(v25, v16);
  (*(v19 + 8))(v21, v20);

  v13 = *(*(v86 + 408) + 8);
  v14 = *(v86 + 408);
  v15 = *(v86 + 704);

  return v13(v15);
}

uint64_t sub_34410()
{
  v9 = v0[86];
  v11 = v0[80];
  v10 = v0[79];
  v12 = v0[78];
  v1 = v0[71];
  v2 = v0[70];
  v3 = v0[69];
  v0[51] = v0;
  (*(v2 + 8))(v1, v3);
  sub_1FA80(v0 + 34);

  (*(v10 + 8))(v11, v12);
  v4 = v0[89];
  v5 = v0[80];
  v13 = v0[77];
  v14 = v0[76];
  v15 = v0[75];
  v16 = v0[74];
  v17 = v0[71];
  v18 = v0[68];
  v19 = v0[65];

  v6 = *(v0[51] + 8);
  v7 = v0[51];

  return v6();
}

uint64_t sub_345DC(void *a1)
{
  _objc_retain(a1);
  sub_418E8();
  sub_4194C();
  return sub_C3504();
}

double sub_34638@<D0>(uint64_t a1@<X0>, void *a2@<X1>, char *a3@<X8>)
{
  v68 = a3;
  v104 = a1;
  v112 = a2;
  v122 = 0;
  v121 = 0;
  v120 = 0;
  v119 = 0;
  v118 = 0;
  v117 = 0;
  v123 = 0;
  v115 = 0;
  v99 = 0;
  v69 = sub_C2164();
  v70 = *(v69 - 8);
  v71 = v69 - 8;
  v72 = (*(v70 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0);
  v73 = v32 - v72;
  v74 = sub_C2024();
  v75 = *(v74 - 8);
  v76 = v74 - 8;
  v77 = (*(v75 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v74);
  v78 = v32 - v77;
  v79 = (*(*(sub_21E8(&qword_EF5B0, &qword_C5E08) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v99);
  v80 = v32 - v79;
  v81 = sub_C2134();
  v82 = *(v81 - 8);
  v83 = v81 - 8;
  v84 = (*(v82 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v99);
  v85 = v32 - v84;
  v123 = v32 - v84;
  v86 = type metadata accessor for DialogServiceButton();
  v87 = (*(*(v86 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v99);
  v88 = v32 - v87;
  v122 = v32 - v87;
  v89 = sub_C2F14();
  v90 = *(v89 - 8);
  v91 = v89 - 8;
  v92 = (*(v90 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v89);
  v93 = v32 - v92;
  v94 = sub_21E8(&qword_EEF88, &unk_C5A70);
  v95 = (*(*(v94 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = __chkstk_darwin(v94);
  v96 = (v32 - v95);
  v97 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v3);
  v98 = (v32 - v97);
  v121 = v32 - v97;
  v100 = (*(*(sub_21E8(&qword_EF008, &unk_C5AD0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = __chkstk_darwin(v99);
  v101 = v32 - v100;
  v102 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v5);
  v110 = v32 - v102;
  v105 = sub_C1AC4();
  v106 = *(v105 - 8);
  v107 = v105 - 8;
  v108 = (*(v106 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v7 = __chkstk_darwin(v104);
  v109 = v32 - v108;
  v120 = v32 - v108;
  v119 = v7;
  v118 = v8;
  v117 = v9;
  v111 = *(v9 + 16);
  _objc_retain(v111);
  sub_A93A4(v112, v111);
  v113 = 0;
  _objc_release(v111);
  (*(v106 + 56))(v110, 0, 1, v105);
  if ((*(v106 + 48))(v110, 1, v105) == 1)
  {
    sub_1DAA4(v110);
    return sub_2F6D4(v68);
  }

  else
  {
    (*(v106 + 32))(v109, v110, v105);
    v65 = sub_2F52C();
    v66 = v10;
    v67 = sub_3AA78(v109, v65, v10);

    if (v67)
    {
      v60 = 0;
      v59 = sub_C2EA4();
      v61 = sub_2F52C();
      v64 = v13;
      sub_21E8(&qword_EF000, &qword_C5E10);
      sub_C3C64();
      v63 = sub_C3374();
      v62 = v116;
      memset(v116, 0, sizeof(v116));
      (*(v90 + 16))(v93, v103 + OBJC_IVAR____TtC36SocialConversationFlowDelegatePlugin13DialogService_options, v89);
      sub_C2E94();
      (*(v90 + 8))(v93, v89);
      sub_1FA80(v62);

      sub_2F6D4(v88);
      sub_19F8C(v98, v96);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v28 = v88;
        v32[2] = *v96;
        v29 = *(v88 + 1);
        *v88 = 0;
        *(v28 + 1) = 0;

        (*(v106 + 56))(v101, 1, 1, v105);
        sub_3F4E0(v101, &v88[*(v86 + 20)]);
        v30 = &v88[*(v86 + 24)];
        v31 = *(v30 + 1);
        *v30 = 0;
        *(v30 + 1) = 0;
      }

      else
      {
        v14 = v85;
        (*(v82 + 32))(v85, v96, v81);
        v123 = v14;
        v57 = sub_C2124();
        v115 = v57;
        v114 = v57;
        v58 = sub_21E8(&qword_EF5A0, &qword_C5DF8);
        sub_3EC3C();
        sub_C37F4();
        if ((*(v70 + 48))(v80, 1, v69) == 1)
        {
          sub_3F89C(v80);
          v55 = 0;
          v56 = 0;
        }

        else
        {
          sub_C2154();
          (*(v70 + 8))(v80, v69);
          v53 = sub_C2014();
          v54 = v15;
          (*(v75 + 8))(v78, v74);
          v55 = v53;
          v56 = v54;
        }

        v16 = v88;
        v17 = v56;
        v18 = *(v88 + 1);
        *v88 = v55;
        *(v16 + 1) = v17;

        (*(v106 + 56))(v101, 1, 1, v105);
        sub_3F4E0(v101, &v88[*(v86 + 20)]);
        v19 = &v88[*(v86 + 24)];
        v20 = *(v19 + 1);
        *v19 = 0;
        *(v19 + 1) = 0;

        v51 = sub_C3714();
        v52 = 1;

        if (v52 < v51)
        {
          sub_C3744();
          v46 = sub_C2144();
          v48 = v21;
          (*(v70 + 8))(v73, v69);
          v124._countAndFlagsBits = sub_C3564("#link", 5uLL, 1);
          object = v124._object;
          v49 = sub_C3624(v124);

          v50 = v49;
        }

        else
        {
          v50 = 0;
        }

        v45 = v50;

        if (v45)
        {
          sub_C3744();
          sub_C2154();
          (*(v70 + 8))(v73, v69);
          v43 = sub_C2014();
          v44 = v22;
          (*(v75 + 8))(v78, v74);
          sub_C1AB4();

          sub_3F4E0(v101, &v88[*(v86 + 20)]);
        }

        else
        {
          v41 = sub_C3714();
          v42 = 1;

          if (v42 < v41)
          {
            sub_C3744();
            v36 = sub_C2144();
            v38 = v23;
            (*(v70 + 8))(v73, v69);
            v125._countAndFlagsBits = sub_C3564("#intentName", 0xBuLL, 1);
            v37 = v125._object;
            v39 = sub_C3624(v125);

            v40 = v39;
          }

          else
          {
            v40 = 0;
          }

          v35 = v40;

          if (v35)
          {
            sub_C3744();
            sub_C2154();
            (*(v70 + 8))(v73, v69);
            v33 = sub_C2014();
            v34 = v24;
            (*(v75 + 8))(v78, v74);
            v25 = v34;
            v26 = &v88[*(v86 + 24)];
            v27 = *(v26 + 1);
            *v26 = v33;
            *(v26 + 1) = v25;
          }
        }

        (*(v82 + 8))(v85, v81);
      }

      sub_3F708(v88, v68);
      sub_1A068(v98);
      (*(v106 + 8))(v109, v105);
    }

    else
    {
      v11 = sub_2F6D4(v68);
      (*(v106 + 8))(v109, v105, v11);
    }
  }

  return result;
}

uint64_t sub_35888(uint64_t a1, uint64_t a2, void *a3)
{
  v202 = a1;
  v201 = a2;
  v200 = a3;
  v153 = sub_3FB6C;
  v154 = sub_1D834;
  v155 = sub_7BBC;
  v156 = sub_3FC20;
  v157 = sub_7BBC;
  v158 = sub_7B48;
  v159 = sub_7B48;
  v160 = sub_7C08;
  v161 = sub_7B48;
  v162 = sub_7B48;
  v163 = sub_7C08;
  v244 = 0;
  v242 = 0;
  v241 = 0;
  v239 = 0;
  v240 = 0;
  v238 = 0;
  v237 = 0;
  v234 = 0;
  v228 = 0;
  v229 = 0;
  v226 = 0;
  v227 = 0;
  v164 = 0;
  v243 = 0;
  v224[0] = 0;
  v224[1] = 0;
  v197 = 0;
  v165 = sub_C2024();
  v166 = *(v165 - 8);
  v167 = v165 - 8;
  v168 = (*(v166 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0);
  v169 = v61 - v168;
  v170 = sub_C2164();
  v171 = *(v170 - 8);
  v172 = v170 - 8;
  v173 = (*(v171 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v170);
  v174 = v61 - v173;
  v244 = v61 - v173;
  v175 = (*(*(sub_21E8(&qword_EF5B0, &qword_C5E08) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v197);
  v176 = v61 - v175;
  v177 = sub_C2134();
  v178 = *(v177 - 8);
  v179 = v177 - 8;
  v180 = (*(v178 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v197);
  v181 = v61 - v180;
  v243 = v61 - v180;
  v182 = sub_C2F14();
  v183 = *(v182 - 8);
  v184 = v182 - 8;
  v185 = (*(v183 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v182);
  v186 = v61 - v185;
  v187 = sub_21E8(&qword_EEF88, &unk_C5A70);
  v188 = (*(*(v187 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = __chkstk_darwin(v197);
  v189 = (v61 - v188);
  v190 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v4);
  v191 = (v61 - v190);
  v242 = v61 - v190;
  v192 = sub_C3234();
  v193 = *(v192 - 8);
  v194 = v192 - 8;
  v195 = (*(v193 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v192);
  v196 = v61 - v195;
  v198 = (*(*(sub_21E8(&qword_EF008, &unk_C5AD0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v197);
  v199 = v61 - v198;
  v203 = sub_C1AC4();
  v205 = *(v203 - 8);
  v204 = v203 - 8;
  v206 = v205;
  v207 = *(v205 + 64);
  v208 = (v207 + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = __chkstk_darwin(v202);
  v209 = v61 - v208;
  v210 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  v8 = __chkstk_darwin(v6);
  v211 = v61 - v210;
  v241 = v61 - v210;
  v239 = v8;
  v240 = v9;
  v238 = v10;
  v237 = v3;
  v235 = v8;
  v236 = v9;
  v215 = sub_C3564("#", 1uLL, 1);
  v216 = v11;
  v214 = sub_B2E8();
  v213 = &type metadata for String;
  v212 = sub_37054();
  sub_37068();
  v217 = sub_C39F4();

  v234 = v217;
  if (sub_C3714() >= 2)
  {
    v149 = &type metadata for Substring;
    sub_C3744();
    v141 = v233;
    v233[0] = v233[4];
    v233[1] = v233[5];
    v233[2] = v233[6];
    v233[3] = v233[7];
    v142 = 1;
    v12 = sub_C3564("#", 1uLL, 1);
    v140 = v232;
    v232[0] = v12;
    v232[1] = v13;
    v143 = sub_3F944();
    sub_3F9BC();
    sub_C3854();
    sub_8224(v140);
    sub_3FA34(v141);
    v145 = v231;
    v231[0] = v233[8];
    v231[1] = v233[9];
    v231[2] = v233[10];
    v231[3] = v233[11];
    sub_C3744();
    v144 = v230;
    v230[0] = v230[4];
    v230[1] = v230[5];
    v230[2] = v230[6];
    v230[3] = v230[7];
    sub_C3854();
    sub_3FA34(v144);
    sub_3FA34(v145);
    v146 = v233[15];
    v147 = sub_C3634();
    v148 = v14;

    v228 = v147;
    v229 = v148;
    if (sub_C3714() <= 2)
    {
      v138 = sub_C3564("", 0, 1);
      v139 = v16;
    }

    else
    {
      sub_C3744();
      v135 = v218;
      v136 = sub_C3634();
      v137 = v15;

      v138 = v136;
      v139 = v137;
    }

    v17 = v164;
    v130 = v139;
    v131 = v138;
    v226 = v138;
    v227 = v139;
    v132 = *(v152 + 16);
    _objc_retain(v132);
    sub_A93A4(v200, v132);
    v133 = v17;
    v134 = v17;
    if (v17)
    {
      v61[1] = v134;
      v62 = 0;
      _objc_release(v132);

      (*(v205 + 56))(v199, 1, 1, v203);
      v129 = v62;
    }

    else
    {
      _objc_release(v132);
      (*(v205 + 56))(v199, 0, 1, v203);
      v129 = v133;
    }

    v128 = v129;
    if ((*(v205 + 48))(v199, 1, v203) == 1)
    {
      sub_1DAA4(v199);
      v63 = sub_C3564("", 0, 1);
      v64 = v59;

      v150 = v63;
      v151 = v64;
    }

    else
    {
      v18 = v196;
      v103 = v206;
      v106 = *(v205 + 32);
      v105 = v205 + 32;
      v106(v211, v199, v203);
      v19 = sub_BF704();
      (*(v193 + 16))(v18, v19, v192);

      v113 = 32;
      v114 = 7;
      v20 = swift_allocObject();
      v21 = v148;
      v22 = v205;
      v23 = v211;
      v24 = v203;
      v25 = v20;
      v26 = v209;
      v108 = v25;
      *(v25 + 16) = v147;
      *(v25 + 24) = v21;
      (*(v22 + 16))(v26, v23, v24);
      v104 = (*(v103 + 80) + 16) & ~*(v103 + 80);
      v107 = swift_allocObject();
      v106((v107 + v104), v209, v203);

      v27 = swift_allocObject();
      v28 = v107;
      v115 = v27;
      *(v27 + 16) = v153;
      *(v27 + 24) = v28;

      v126 = sub_C3224();
      v127 = sub_C3874();
      v111 = 17;
      v117 = swift_allocObject();
      v110 = 32;
      *(v117 + 16) = 32;
      v118 = swift_allocObject();
      v112 = 8;
      *(v118 + 16) = 8;
      v29 = swift_allocObject();
      v30 = v108;
      v109 = v29;
      *(v29 + 16) = v154;
      *(v29 + 24) = v30;
      v31 = swift_allocObject();
      v32 = v109;
      v119 = v31;
      *(v31 + 16) = v155;
      *(v31 + 24) = v32;
      v120 = swift_allocObject();
      *(v120 + 16) = v110;
      v121 = swift_allocObject();
      *(v121 + 16) = v112;
      v33 = swift_allocObject();
      v34 = v115;
      v116 = v33;
      *(v33 + 16) = v156;
      *(v33 + 24) = v34;
      v35 = swift_allocObject();
      v36 = v116;
      v123 = v35;
      *(v35 + 16) = v157;
      *(v35 + 24) = v36;
      v125 = sub_21E8(&unk_EEFA0, &unk_C50F0);
      v122 = sub_C3C64();
      v124 = v37;

      v38 = v117;
      v39 = v124;
      *v124 = v158;
      v39[1] = v38;

      v40 = v118;
      v41 = v124;
      v124[2] = v159;
      v41[3] = v40;

      v42 = v119;
      v43 = v124;
      v124[4] = v160;
      v43[5] = v42;

      v44 = v120;
      v45 = v124;
      v124[6] = v161;
      v45[7] = v44;

      v46 = v121;
      v47 = v124;
      v124[8] = v162;
      v47[9] = v46;

      v48 = v123;
      v49 = v124;
      v124[10] = v163;
      v49[11] = v48;
      sub_4E48();

      if (os_log_type_enabled(v126, v127))
      {
        v50 = v128;
        v95 = sub_C3954();
        v94 = sub_21E8(&qword_EE828, &qword_C5100);
        v96 = sub_5DD4(0);
        v97 = sub_5DD4(2);
        v99 = v223;
        v223[0] = v95;
        v100 = &v222;
        v222 = v96;
        v101 = &v221;
        v221 = v97;
        v98 = 2;
        sub_5E28(2, v223);
        sub_5E28(v98, v99);
        v219 = v158;
        v220 = v117;
        sub_5E3C(&v219, v99, v100, v101);
        v102 = v50;
        if (v50)
        {

          __break(1u);
        }

        else
        {
          v219 = v159;
          v220 = v118;
          sub_5E3C(&v219, v223, &v222, &v221);
          v92 = 0;
          v219 = v160;
          v220 = v119;
          sub_5E3C(&v219, v223, &v222, &v221);
          v91 = 0;
          v219 = v161;
          v220 = v120;
          sub_5E3C(&v219, v223, &v222, &v221);
          v90 = 0;
          v219 = v162;
          v220 = v121;
          sub_5E3C(&v219, v223, &v222, &v221);
          v89 = 0;
          v219 = v163;
          v220 = v123;
          sub_5E3C(&v219, v223, &v222, &v221);
          v88 = 0;
          _os_log_impl(&dword_0, v126, v127, "Loading label for CAT ID %s from template directory %s", v95, 0x16u);
          sub_5E88(v96);
          sub_5E88(v97);
          sub_C3934();

          v93 = v88;
        }
      }

      else
      {
        v51 = v128;

        v93 = v51;
      }

      v84 = v93;
      _objc_release(v126);
      (*(v193 + 8))(v196, v192);
      v85 = 0;
      sub_C2EA4();
      sub_21E8(&qword_EF000, &qword_C5E10);
      sub_C3C64();
      v87 = sub_C3374();
      v86 = v225;
      memset(v225, 0, sizeof(v225));
      (*(v183 + 16))(v186, v152 + OBJC_IVAR____TtC36SocialConversationFlowDelegatePlugin13DialogService_options, v182);
      sub_C2E94();
      (*(v183 + 8))(v186, v182);
      sub_1FA80(v86);

      sub_19F8C(v191, v189);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v65 = *v189;
        v66 = sub_C3564("", 0, 1);
        v67 = v58;

        sub_1A068(v191);
        (*(v205 + 8))(v211, v203);

        v150 = v66;
        v151 = v67;
      }

      else
      {
        v52 = v181;
        (*(v178 + 32))(v181, v189, v177);
        v243 = v52;
        v223[1] = sub_C2124();
        v82 = sub_21E8(&qword_EF5A0, &qword_C5DF8);
        sub_3EC3C();
        sub_C3824();
        for (i = v84; ; i = v81)
        {
          v81 = i;
          sub_21E8(&qword_EF5D0, &qword_C5E18);
          sub_C3B44();
          if ((*(v171 + 48))(v176, 1, v170) == 1)
          {
            break;
          }

          (*(v171 + 32))(v174, v176, v170);
          v80 = sub_C35B4();

          if (v80)
          {
            v79 = 1;
          }

          else
          {
            v75 = sub_C2144();
            v77 = v53;
            sub_C3564("#", 1uLL, 1);
            v73 = v54;
            v74 = sub_C3554();
            v76 = v55;

            v245._countAndFlagsBits = v74;
            v245._object = v76;
            v78 = sub_C3624(v245);

            v79 = v78;
          }

          v72 = v79;

          if (v72)
          {
            sub_C2154();
            v70 = sub_C2014();
            v71 = v56;
            (*(v166 + 8))(v169, v165);
            (*(v171 + 8))(v174, v170);
            sub_1D7C8(v224);
            (*(v178 + 8))(v181, v177);
            sub_1A068(v191);
            (*(v205 + 8))(v211, v203);

            v150 = v70;
            v151 = v71;
            return v150;
          }

          (*(v171 + 8))(v174, v170);
        }

        sub_1D7C8(v224);
        v68 = sub_C3564("", 0, 1);
        v69 = v57;
        (*(v178 + 8))(v181, v177);
        sub_1A068(v191);
        (*(v205 + 8))(v211, v203);

        v150 = v68;
        v151 = v69;
      }
    }
  }

  else
  {

    v150 = v202;
    v151 = v201;
  }

  return v150;
}

uint64_t sub_370E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[33] = v8;
  v9[32] = a8;
  v9[31] = a7;
  v9[30] = a6;
  v9[29] = a5;
  v9[28] = a4;
  v9[27] = a3;
  v9[26] = a2;
  v9[25] = a1;
  v9[15] = v9;
  v9[16] = 0;
  v9[17] = 0;
  v9[18] = 0;
  v9[19] = 0;
  v9[20] = 0;
  v9[21] = 0;
  v9[22] = 0;
  v9[23] = 0;
  v9[24] = 0;
  v10 = sub_C2304();
  v9[34] = v10;
  v16 = *(v10 - 8);
  v9[35] = v16;
  v11 = *(v16 + 64) + 15;
  v9[36] = swift_task_alloc();
  v12 = sub_C3234();
  v9[37] = v12;
  v17 = *(v12 - 8);
  v9[38] = v17;
  v13 = *(v17 + 64) + 15;
  v9[39] = swift_task_alloc();
  v9[16] = a2;
  v9[17] = a3;
  v9[18] = a4;
  v9[19] = a5;
  v9[20] = a6;
  v9[21] = a7;
  v9[22] = a8;
  v9[23] = v8;
  v14 = v9[15];

  return _swift_task_switch(sub_37328, 0);
}

uint64_t sub_37328()
{
  v35 = v0;
  v1 = v0[39];
  v19 = v0[38];
  v20 = v0[37];
  __src = v0[26];
  v0[15] = v0;
  v2 = sub_BF704();
  (*(v19 + 16))(v1, v2, v20);
  sub_1D2DC(__src, v0 + 2);
  v22 = swift_allocObject();
  memcpy((v22 + 16), __src, 0x40uLL);
  v28 = sub_C3224();
  v29 = sub_C3874();
  v24 = swift_allocObject();
  *(v24 + 16) = 32;
  v25 = swift_allocObject();
  *(v25 + 16) = 8;
  v23 = swift_allocObject();
  *(v23 + 16) = sub_3EE94;
  *(v23 + 24) = v22;
  v26 = swift_allocObject();
  *(v26 + 16) = sub_7BBC;
  *(v26 + 24) = v23;
  sub_21E8(&unk_EEFA0, &unk_C50F0);
  sub_C3C64();
  v27 = v3;

  *v27 = sub_7B48;
  v27[1] = v24;

  v27[2] = sub_7B48;
  v27[3] = v25;

  v27[4] = sub_7C08;
  v27[5] = v26;
  sub_4E48();

  if (os_log_type_enabled(v28, v29))
  {
    buf = sub_C3954();
    sub_21E8(&qword_EE828, &qword_C5100);
    v16 = sub_5DD4(0);
    v17 = sub_5DD4(1);
    v30 = buf;
    v31 = v16;
    v32 = v17;
    sub_5E28(2, &v30);
    sub_5E28(1, &v30);
    v33 = sub_7B48;
    v34 = v24;
    sub_5E3C(&v33, &v30, &v31, &v32);
    v33 = sub_7B48;
    v34 = v25;
    sub_5E3C(&v33, &v30, &v31, &v32);
    v33 = sub_7C08;
    v34 = v26;
    sub_5E3C(&v33, &v30, &v31, &v32);
    _os_log_impl(&dword_0, v28, v29, "executeAsPattern %s", buf, 0xCu);
    sub_5E88(v16);
    sub_5E88(v17);
    sub_C3934();
  }

  else
  {
  }

  v12 = v18[39];
  v13 = v18[37];
  v11 = v18[38];
  _objc_release(v28);
  (*(v11 + 8))(v12, v13);
  v14 = variable initialization expression of PlayWithMeData.initialized();
  v4 = swift_task_alloc();
  v18[40] = v4;
  *v4 = v18[15];
  v4[1] = sub_37A54;
  v5 = v18[33];
  v6 = v18[29];
  v7 = v18[28];
  v8 = v18[27];
  v9 = v18[26];

  return sub_381B4(v9, v8, v7, v6, v14 & 1);
}

uint64_t sub_37A54(uint64_t a1)
{
  v10 = *v2;
  v4 = *(*v2 + 320);
  v10[15] = *v2;
  v11 = v10 + 15;
  v10[41] = a1;

  if (v1)
  {
    v6 = v10[39];
    v9 = v10[36];

    v7 = *(*v11 + 8);

    return v7();
  }

  else
  {
    v5 = *v11;

    return _swift_task_switch(sub_37C80, 0);
  }
}

uint64_t sub_37C80()
{
  v1 = v0[41];
  v2 = v0[36];
  v3 = v0[33];
  v4 = v0[32];
  v5 = v0[31];
  v6 = v0[30];
  v0[15] = v0;
  v0[24] = v1;
  sub_3C548(v1, v6, v5, v4, v2);
  sub_C20B4();
  v0[42] = sub_C20A4();
  v13 = async function pointer to dispatch thunk of ResponseFactory.makeResponseOutput(patternExecutionResult:outputGenerationManifest:) + async function pointer to dispatch thunk of ResponseFactory.makeResponseOutput(patternExecutionResult:outputGenerationManifest:)[0];
  v7 = async function pointer to dispatch thunk of ResponseFactory.makeResponseOutput(patternExecutionResult:outputGenerationManifest:)[1];
  v8 = swift_task_alloc();
  v12[43] = v8;
  *v8 = v12[15];
  v8[1] = sub_37DB8;
  v9 = v12[41];
  v10 = v12[36];

  return (v13)(v12 + 10, v9, v10);
}

uint64_t sub_37DB8()
{
  v8 = *v1;
  v2 = *(*v1 + 344);
  v8[15] = *v1;
  v9 = v8 + 15;
  v8[44] = v0;

  if (v0)
  {
    v6 = *v9;
    v5 = sub_3805C;
  }

  else
  {
    v3 = v8[42];

    v4 = *v9;
    v5 = sub_37F34;
  }

  return _swift_task_switch(v5, 0);
}

uint64_t sub_37F34()
{
  v7 = v0[41];
  v8 = v0[39];
  v9 = v0[36];
  v5 = v0[35];
  v6 = v0[34];
  v1 = v0[25];
  v0[15] = v0;
  sub_24F4((v0 + 10), v1);
  sub_2560(v0 + 10);
  (*(v5 + 8))(v9, v6);
  _objc_release(v7);

  v2 = *(v0[15] + 8);
  v3 = v0[15];

  return v2();
}

uint64_t sub_3805C()
{
  v1 = v0[42];
  v10 = v0[41];
  v8 = v0[36];
  v7 = v0[35];
  v9 = v0[34];
  v0[15] = v0;

  (*(v7 + 8))(v8, v9);
  _objc_release(v10);
  v2 = v0[44];
  v3 = v0[39];
  v11 = v0[36];

  v4 = *(v0[15] + 8);
  v5 = v0[15];

  return v4();
}

uint64_t sub_381B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 616) = v5;
  *(v6 + 849) = a5 & 1;
  *(v6 + 608) = a4;
  *(v6 + 600) = a3;
  *(v6 + 592) = a2;
  *(v6 + 584) = a1;
  *(v6 + 424) = v6;
  *(v6 + 432) = 0;
  *(v6 + 440) = 0;
  *(v6 + 448) = 0;
  *(v6 + 456) = 0;
  *(v6 + 848) = 0;
  *(v6 + 464) = 0;
  *(v6 + 504) = 0;
  *(v6 + 512) = 0;
  v7 = *(*(sub_21E8(&qword_EEF90, &qword_C5DF0) - 8) + 64) + 15;
  *(v6 + 624) = swift_task_alloc();
  v8 = sub_C1FE4();
  *(v6 + 632) = v8;
  v18 = *(v8 - 8);
  *(v6 + 640) = v18;
  v9 = *(v18 + 64) + 15;
  *(v6 + 648) = swift_task_alloc();
  v10 = sub_C2F14();
  *(v6 + 656) = v10;
  v19 = *(v10 - 8);
  *(v6 + 664) = v19;
  v11 = *(v19 + 64) + 15;
  *(v6 + 672) = swift_task_alloc();
  v12 = *(*(sub_21E8(&qword_EF008, &unk_C5AD0) - 8) + 64) + 15;
  *(v6 + 680) = swift_task_alloc();
  v13 = sub_C1AC4();
  *(v6 + 688) = v13;
  v20 = *(v13 - 8);
  *(v6 + 696) = v20;
  v14 = *(v20 + 64) + 15;
  *(v6 + 704) = swift_task_alloc();
  v15 = sub_C3234();
  *(v6 + 712) = v15;
  v21 = *(v15 - 8);
  *(v6 + 720) = v21;
  v22 = *(v21 + 64);
  *(v6 + 728) = swift_task_alloc();
  *(v6 + 736) = swift_task_alloc();
  *(v6 + 744) = swift_task_alloc();
  *(v6 + 752) = swift_task_alloc();
  *(v6 + 760) = swift_task_alloc();
  *(v6 + 432) = a1;
  *(v6 + 440) = a2;
  *(v6 + 448) = a3;
  *(v6 + 456) = a4;
  *(v6 + 848) = a5 & 1;
  *(v6 + 464) = v5;
  v16 = *(v6 + 424);

  return _swift_task_switch(sub_38580, 0);
}

uint64_t sub_38580()
{
  v119 = v0;
  v1 = v0[95];
  v102 = v0[90];
  v103 = v0[89];
  v105 = v0[73];
  v0[53] = v0;
  v2 = sub_BF704();
  v104 = *(v102 + 16);
  v0[96] = v104;
  v0[97] = (v102 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v104(v1, v2, v103);
  sub_1D2DC(v105, v0 + 2);
  v106 = swift_allocObject();
  memcpy((v106 + 16), v105, 0x40uLL);
  v112 = sub_C3224();
  v113 = sub_C3874();
  v108 = swift_allocObject();
  *(v108 + 16) = 32;
  v109 = swift_allocObject();
  *(v109 + 16) = 8;
  v107 = swift_allocObject();
  *(v107 + 16) = sub_3EE94;
  *(v107 + 24) = v106;
  v110 = swift_allocObject();
  *(v110 + 16) = sub_7BBC;
  *(v110 + 24) = v107;
  v0[98] = sub_21E8(&unk_EEFA0, &unk_C50F0);
  sub_C3C64();
  v111 = v3;

  *v111 = sub_7B48;
  v111[1] = v108;

  v111[2] = sub_7B48;
  v111[3] = v109;

  v111[4] = sub_7C08;
  v111[5] = v110;
  sub_4E48();

  if (os_log_type_enabled(v112, v113))
  {
    buf = sub_C3954();
    sub_21E8(&qword_EE828, &qword_C5100);
    v99 = sub_5DD4(0);
    v100 = sub_5DD4(1);
    v114 = buf;
    v115 = v99;
    v116 = v100;
    sub_5E28(2, &v114);
    sub_5E28(1, &v114);
    v117 = sub_7B48;
    v118 = v108;
    sub_5E3C(&v117, &v114, &v115, &v116);
    v117 = sub_7B48;
    v118 = v109;
    sub_5E3C(&v117, &v114, &v115, &v116);
    v117 = sub_7C08;
    v118 = v110;
    sub_5E3C(&v117, &v114, &v115, &v116);
    _os_log_impl(&dword_0, v112, v113, "Executing %s as pattern", buf, 0xCu);
    sub_5E88(v99);
    sub_5E88(v100);
    sub_C3934();
  }

  else
  {
  }

  v92 = *(v101 + 760);
  v4 = *(v101 + 752);
  v94 = *(v101 + 712);
  v91 = *(v101 + 720);
  _objc_release(v112);
  v93 = *(v91 + 8);
  *(v101 + 792) = v93;
  *(v101 + 800) = (v91 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v93(v92, v94);
  v5 = sub_BF704();
  v104(v4, v5, v94);
  oslog = sub_C3224();
  v95 = sub_C3874();
  v97 = sub_C3C64();
  if (os_log_type_enabled(oslog, v95))
  {
    v87 = sub_C3954();
    sub_21E8(&qword_EE828, &qword_C5100);
    v88 = sub_5DD4(0);
    v89 = sub_5DD4(0);
    *(v101 + 552) = v87;
    *(v101 + 560) = v88;
    *(v101 + 568) = v89;
    sub_5E28(0, (v101 + 552));
    sub_5E28(0, (v101 + 552));
    *(v101 + 576) = v97;
    v90 = swift_task_alloc();
    v90[2] = v101 + 552;
    v90[3] = v101 + 560;
    v90[4] = v101 + 568;
    sub_21E8(&unk_EEFB0, qword_C5110);
    sub_8128();
    sub_C3654();

    _os_log_impl(&dword_0, oslog, v95, "Will execute pattern. If execution stops here, ssh into the device and run: ffctl DialogEngine/VisualCAT=on && ffctl SiriUI/SnippetUI=on && reboot", v87, 2u);
    sub_5E88(v88);
    sub_5E88(v89);
    sub_C3934();
  }

  v81 = *(v101 + 752);
  v82 = *(v101 + 712);
  v84 = *(v101 + 680);
  v83 = *(v101 + 616);
  v86 = *(v101 + 600);
  _objc_release(oslog);
  v93(v81, v82);
  v85 = *(v83 + 16);
  _objc_retain(v85);
  sub_A93A4(v86, v85);
  v80 = *(v101 + 688);
  v79 = *(v101 + 680);
  v78 = *(v101 + 696);
  _objc_release(v85);
  (*(v78 + 56))(v79, 0, 1, v80);
  if ((*(*(v101 + 696) + 48))(*(v101 + 680), 1, *(v101 + 688)) == 1)
  {
    v18 = *(v101 + 728);
    v39 = *(v101 + 712);
    sub_1DAA4(*(v101 + 680));
    v19 = sub_BF704();
    v104(v18, v19, v39);
    v41 = sub_C3224();
    v40 = sub_C3884();
    v42 = sub_C3C64();
    if (os_log_type_enabled(v41, v40))
    {
      v35 = sub_C3954();
      sub_21E8(&qword_EE828, &qword_C5100);
      v36 = sub_5DD4(0);
      v37 = sub_5DD4(0);
      *(v101 + 472) = v35;
      *(v101 + 480) = v36;
      *(v101 + 488) = v37;
      sub_5E28(0, (v101 + 472));
      sub_5E28(0, (v101 + 472));
      *(v101 + 496) = v42;
      v38 = swift_task_alloc();
      v38[2] = v101 + 472;
      v38[3] = v101 + 480;
      v38[4] = v101 + 488;
      sub_21E8(&unk_EEFB0, qword_C5110);
      sub_8128();
      sub_C3654();

      _os_log_impl(&dword_0, v41, v40, "Could not find template directory when executing pattern", v35, 2u);
      sub_5E88(v36);
      sub_5E88(v37);
      sub_C3934();
    }

    v33 = *(v101 + 728);
    v34 = *(v101 + 712);
    _objc_release(v41);
    v93(v33, v34);
    sub_4010C();
    v62 = sub_EE34();
    goto LABEL_19;
  }

  v76 = *(v101 + 584);
  (*(*(v101 + 696) + 32))(*(v101 + 704), *(v101 + 680), *(v101 + 688));
  v74 = *v76;
  v75 = v76[1];

  v77 = sub_C35B4();

  sub_1D2DC(v76, (v101 + 80));
  if (v77)
  {
    sub_1CFBC(*(v101 + 584));
LABEL_10:
    v7 = *(v101 + 744);
    v67 = *(v101 + 712);
    v8 = sub_BF704();
    v104(v7, v8, v67);
    log = sub_C3224();
    v68 = sub_C3884();
    v70 = sub_C3C64();
    if (os_log_type_enabled(log, v68))
    {
      v63 = sub_C3954();
      sub_21E8(&qword_EE828, &qword_C5100);
      v64 = sub_5DD4(0);
      v65 = sub_5DD4(0);
      *(v101 + 520) = v63;
      *(v101 + 528) = v64;
      *(v101 + 536) = v65;
      sub_5E28(0, (v101 + 520));
      sub_5E28(0, (v101 + 520));
      *(v101 + 544) = v70;
      v66 = swift_task_alloc();
      v66[2] = v101 + 520;
      v66[3] = v101 + 528;
      v66[4] = v101 + 536;
      sub_21E8(&unk_EEFB0, qword_C5110);
      sub_8128();
      sub_C3654();

      _os_log_impl(&dword_0, log, v68, "Empty CAT id when executing pattern", v63, 2u);
      sub_5E88(v64);
      sub_5E88(v65);
      sub_C3934();
    }

    v56 = *(v101 + 744);
    v57 = *(v101 + 712);
    v60 = *(v101 + 704);
    v59 = *(v101 + 688);
    v58 = *(v101 + 696);
    _objc_release(log);
    v93(v56, v57);
    sub_4010C();
    v61 = sub_EE34();
    (*(v58 + 8))(v60, v59);
    v62 = v61;
LABEL_19:
    v20 = *(v101 + 760);
    v24 = *(v101 + 752);
    v25 = *(v101 + 744);
    v26 = *(v101 + 736);
    v27 = *(v101 + 728);
    v28 = *(v101 + 704);
    v29 = *(v101 + 680);
    v30 = *(v101 + 672);
    v31 = *(v101 + 648);
    v32 = *(v101 + 624);

    v21 = *(*(v101 + 424) + 8);
    v22 = *(v101 + 424);

    return v21(v62);
  }

  v6 = *(v101 + 584);
  v71 = *(v6 + 16);
  v72 = *(v6 + 24);

  v73 = sub_C35B4();

  sub_1CFBC(*(v101 + 584));
  if (v73)
  {
    goto LABEL_10;
  }

  v53 = *(v101 + 672);
  v52 = *(v101 + 656);
  v50 = *(v101 + 616);
  v43 = *(v101 + 608);
  v44 = *(v101 + 600);
  v45 = *(v101 + 584);
  v51 = *(v101 + 664);
  v48 = type metadata accessor for ParameterService();

  sub_1D2DC(v45, (v101 + 144));
  _objc_retain(v44);
  sub_24F4(v43, v101 + 272);
  v49 = sub_749F0(v50, v45, v44, (v101 + 272));
  *(v101 + 808) = v49;
  *(v101 + 504) = v49;
  sub_C2EC4();
  *(v101 + 392) = sub_C3C44();
  *(v101 + 400) = v9;
  v121._countAndFlagsBits = sub_C3564("", 0, 1);
  sub_C3C34(v121);

  *(v101 + 408) = sub_2F52C();
  *(v101 + 416) = v10;
  sub_C3C24();
  sub_8224(v101 + 408);
  v122._countAndFlagsBits = sub_C3564("", 0, 1);
  sub_C3C34(v122);

  v47 = *(v101 + 392);
  v46 = *(v101 + 400);

  sub_8224(v101 + 392);
  v54 = sub_C3544();
  v55 = v11;
  *(v101 + 816) = v11;

  *(v101 + 336) = v48;
  *(v101 + 344) = sub_3E954();
  *(v101 + 312) = v49;
  (*(v51 + 16))(v53, v50 + OBJC_IVAR____TtC36SocialConversationFlowDelegatePlugin13DialogService_options, v52);
  v12 = async function pointer to static CATResponse.executePattern(templateDir:patternId:parameters:globals:callback:options:)[1];
  v13 = swift_task_alloc();
  *(v101 + 824) = v13;
  *v13 = *(v101 + 424);
  v13[1] = sub_39D38;
  v14 = *(v101 + 704);
  v15 = *(v101 + 672);
  v16 = *(v101 + 600);
  v17 = *(v101 + 592);

  return static CATResponse.executePattern(templateDir:patternId:parameters:globals:callback:options:)(v14, v54, v55, v17, v16, v101 + 312, v15);
}

uint64_t sub_39D38(uint64_t a1)
{
  v13 = *v2;
  v10 = (*v2 + 16);
  v11 = (*v2 + 424);
  v12 = (*v2 + 312);
  v4 = *(*v2 + 824);
  v13[53] = *v2;
  v13[104] = a1;
  v13[105] = v1;

  if (v1)
  {
    v7 = *v11;
    v6 = sub_3A8B8;
  }

  else
  {
    v9 = v10[100];
    (*(v10[81] + 8))(v10[82], v10[80]);
    sub_1FA80(v12);

    v5 = *v11;
    v6 = sub_39EF4;
  }

  return _swift_task_switch(v6, 0);
}

uint64_t sub_39EF4()
{
  v60 = v0;
  v1 = *(v0 + 832);
  v2 = *(v0 + 849);
  *(v0 + 424) = v0;
  *(v0 + 512) = v1;
  if ((v2 & 1) == 0)
  {
    v51 = v54[98];
    v44 = v54[97];
    v45 = v54[96];
    v3 = v54[92];
    v43 = v54[89];
    v4 = sub_BF704();
    v45(v3, v4, v43);
    v52 = sub_C3224();
    v53 = sub_C3874();
    v47 = swift_allocObject();
    *(v47 + 16) = 32;
    v48 = swift_allocObject();
    *(v48 + 16) = 8;
    v46 = swift_allocObject();
    *(v46 + 16) = sub_4800;
    *(v46 + 24) = 0;
    v49 = swift_allocObject();
    *(v49 + 16) = sub_7BBC;
    *(v49 + 24) = v46;
    sub_C3C64();
    v50 = v5;

    *v50 = sub_7B48;
    v50[1] = v47;

    v50[2] = sub_7B48;
    v50[3] = v48;

    v50[4] = sub_7C08;
    v50[5] = v49;
    sub_4E48();

    if (os_log_type_enabled(v52, v53))
    {
      v6 = v54[105];
      buf = sub_C3954();
      sub_21E8(&qword_EE828, &qword_C5100);
      v41 = sub_5DD4(0);
      v42 = sub_5DD4(1);
      v55 = buf;
      v56 = v41;
      v57 = v42;
      sub_5E28(2, &v55);
      sub_5E28(1, &v55);
      v58 = sub_7B48;
      v59 = v47;
      sub_5E3C(&v58, &v55, &v56, &v57);
      if (v6)
      {
      }

      v58 = sub_7B48;
      v59 = v48;
      sub_5E3C(&v58, &v55, &v56, &v57);
      v58 = sub_7C08;
      v59 = v49;
      sub_5E3C(&v58, &v55, &v56, &v57);
      _os_log_impl(&dword_0, v52, v53, "SiriKitEvent .completed for %s", buf, 0xCu);
      sub_5E88(v41);
      sub_5E88(v42);
      sub_C3934();
    }

    else
    {
    }

    v29 = v54[100];
    v30 = v54[99];
    v27 = v54[92];
    v28 = v54[89];
    v34 = v54[81];
    v32 = v54[79];
    v37 = v54[78];
    __src = v54[73];
    v31 = v54[80];
    _objc_release(v52);
    v30(v27, v28);
    sub_C1E94();
    v39 = v54[48];
    sub_808C(v54 + 44, v54[47]);
    sub_C1F14();
    (*(v31 + 104))(v34, enum case for ActivityType.completed(_:), v32);
    v8 = sub_41A2C();
    v35 = *v8;
    v36 = v8[1];

    v9 = sub_C1EB4();
    (*(*(v9 - 8) + 56))(v37, 1);
    sub_1D2DC(__src, v54 + 26);
    v38 = swift_allocObject();
    memcpy((v38 + 16), __src, 0x40uLL);
    sub_C1EE4();
    sub_C1EA4();

    sub_2560(v54 + 44);
  }

  v10 = v54[101];
  v15 = v54[88];
  v16 = v54[86];
  v14 = v54[87];

  (*(v14 + 8))(v15, v16);
  v26 = v54[104];
  v11 = v54[95];
  v17 = v54[94];
  v18 = v54[93];
  v19 = v54[92];
  v20 = v54[91];
  v21 = v54[88];
  v22 = v54[85];
  v23 = v54[84];
  v24 = v54[81];
  v25 = v54[78];

  v12 = *(v54[53] + 8);
  v13 = v54[53];

  return v12(v26);
}

uint64_t sub_3A8B8()
{
  v7 = v0[102];
  v8 = v0[101];
  v11 = v0[95];
  v12 = v0[94];
  v13 = v0[93];
  v14 = v0[92];
  v15 = v0[91];
  v16 = v0[88];
  v9 = v0[87];
  v10 = v0[86];
  v17 = v0[85];
  v18 = v0[84];
  v1 = v0[83];
  v2 = v0[82];
  v19 = v0[81];
  v20 = v0[78];
  v0[53] = v0;
  (*(v1 + 8))();
  sub_1FA80(v0 + 39);

  (*(v9 + 8))(v16, v10);

  v3 = *(*(v21 + 424) + 8);
  v4 = *(v21 + 424);
  v5 = *(v21 + 840);

  return v3();
}

uint64_t sub_3AA78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v63 = v69;
  v47 = a1;
  v46 = a2;
  v45 = a3;
  memset(&v69[13], 0, 40);
  v69[10] = 0;
  v65 = 0;
  v48 = sub_C1AC4();
  v49 = *(v48 - 8);
  v50 = v48 - 8;
  v54 = *(v49 + 64);
  v51 = (v54 + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = __chkstk_darwin(v47);
  v52 = v25 - v51;
  v53 = v51;
  v5 = __chkstk_darwin(v4);
  v55 = v25 - v53;
  v56 = (v54 + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = __chkstk_darwin(v5);
  v57 = v25 - v56;
  v7[17] = v25 - v56;
  v7[16] = v6;
  v7[14] = v8;
  v7[15] = v9;
  v7[13] = v3;
  v7[11] = v8;
  v7[12] = v9;
  v61 = sub_C3564("#", 1uLL, 1);
  v62 = v10;
  v60 = sub_B2E8();
  v59 = &type metadata for String;
  v58 = sub_37054();
  sub_37068();
  v64 = sub_C39F4();

  v63[10] = v64;
  if (sub_C3714() >= 2)
  {
    v30 = 1;
    sub_C3564("dialog", 6uLL, 1);
    v25[1] = v11;
    sub_C1A84();

    v31 = &type metadata for Substring;
    sub_C3744();
    v12 = v63;
    v13 = v30;
    v14 = v63[4];
    v15 = v63[5];
    v16 = v63[6];
    v17 = v63[7];
    v27 = v69;
    v69[0] = v14;
    v69[1] = v15;
    v63[2] = v16;
    v12[3] = v17;
    v18 = sub_C3564(".catfamily", 0xAuLL, v13 & 1);
    v26 = v68;
    v68[0] = v18;
    v68[1] = v19;
    v32 = sub_3F9BC();
    v33 = sub_402A0();
    v28 = &type metadata for String;
    sub_C3844();
    sub_8224(v26);
    sub_3FA34(v27);
    v20 = v63[8];
    v29 = v63[9];
    sub_C1A84();

    v42 = *(v49 + 8);
    v41 = v49 + 8;
    v42(v52, v48);
    sub_C3744();
    v35 = v67;
    v67[0] = v67[4];
    v67[1] = v67[5];
    v67[2] = v67[6];
    v67[3] = v67[7];
    v21 = sub_C3564(".cat", 4uLL, v30 & 1);
    v34 = v66;
    v66[0] = v21;
    v66[1] = v22;
    sub_C3844();
    sub_8224(v34);
    sub_3FA34(v35);
    v36 = v67[9];
    sub_C1A84();

    v42(v55, v48);
    v38 = &v65;
    v65 = 1;
    v40 = [objc_opt_self() defaultManager];
    sub_C1AA4();
    v37 = v23;
    v39 = sub_C3484();

    v43 = [v40 fileExistsAtPath:v39 isDirectory:v38];
    _objc_release(v39);
    _objc_release(v40);
    v42(v57, v48);

    v44 = v43;
  }

  else
  {

    v44 = 0;
  }

  return v44 & 1;
}

uint64_t sub_3AFDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v96 = a6;
  v126 = a1;
  v115 = a2;
  v112 = a3;
  v113 = a4;
  v114 = a5;
  v128 = sub_1A354;
  v132 = sub_7BBC;
  v134 = sub_7B48;
  v136 = sub_7B48;
  v139 = sub_7C08;
  v97 = sub_1D834;
  v98 = sub_7BBC;
  v99 = sub_7B48;
  v100 = sub_7B48;
  v101 = sub_7C08;
  v102 = sub_1C9F0;
  v163 = 0;
  v161 = 0;
  v162 = 0;
  v159 = 0;
  v160 = 0;
  v158 = 0;
  v103 = 0;
  v6 = sub_21E8(&qword_EEF90, &qword_C5DF0);
  v104 = (*(*(v6 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v6);
  v105 = &v50 - v104;
  v106 = 0;
  v107 = sub_C1FE4();
  v108 = *(v107 - 8);
  v109 = v107 - 8;
  v110 = (*(v108 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v106);
  v111 = &v50 - v110;
  v123 = sub_C3234();
  v121 = *(v123 - 8);
  v122 = v123 - 8;
  v117 = v121[8];
  v116 = (v117 + 15) & 0xFFFFFFFFFFFFFFF0;
  v7 = __chkstk_darwin(v126);
  v118 = &v50 - v116;
  v119 = (v117 + 15) & 0xFFFFFFFFFFFFFFF0;
  v8 = __chkstk_darwin(v7);
  v9 = &v50 - v119;
  v120 = &v50 - v119;
  v163 = v8;
  v161 = v10;
  v162 = v11;
  v159 = v12;
  v160 = v13;
  v158 = v14;
  v15 = sub_BF704();
  v124 = v121[2];
  v125 = v121 + 2;
  v124(v9, v15, v123);
  swift_errorRetain();
  v130 = 7;
  v131 = swift_allocObject();
  *(v131 + 16) = v126;
  v143 = sub_C3224();
  v144 = sub_C3884();
  v127 = 17;
  v135 = swift_allocObject();
  *(v135 + 16) = 32;
  v137 = swift_allocObject();
  *(v137 + 16) = 8;
  v129 = 32;
  v16 = swift_allocObject();
  v17 = v131;
  v133 = v16;
  *(v16 + 16) = v128;
  *(v16 + 24) = v17;
  v18 = swift_allocObject();
  v19 = v133;
  v140 = v18;
  *(v18 + 16) = v132;
  *(v18 + 24) = v19;
  v142 = sub_21E8(&unk_EEFA0, &unk_C50F0);
  v138 = sub_C3C64();
  v141 = v20;

  v21 = v135;
  v22 = v141;
  *v141 = v134;
  v22[1] = v21;

  v23 = v137;
  v24 = v141;
  v141[2] = v136;
  v24[3] = v23;

  v25 = v140;
  v26 = v141;
  v141[4] = v139;
  v26[5] = v25;
  sub_4E48();

  if (os_log_type_enabled(v143, v144))
  {
    v27 = v103;
    v89 = sub_C3954();
    v88 = sub_21E8(&qword_EE828, &qword_C5100);
    v90 = sub_5DD4(0);
    v91 = sub_5DD4(1);
    v92 = &v149;
    v149 = v89;
    v93 = &v148;
    v148 = v90;
    v94 = &v147;
    v147 = v91;
    sub_5E28(2, &v149);
    sub_5E28(1, v92);
    v145 = v134;
    v146 = v135;
    sub_5E3C(&v145, v92, v93, v94);
    v95 = v27;
    if (v27)
    {

      __break(1u);
    }

    else
    {
      v145 = v136;
      v146 = v137;
      sub_5E3C(&v145, &v149, &v148, &v147);
      v86 = 0;
      v145 = v139;
      v146 = v140;
      sub_5E3C(&v145, &v149, &v148, &v147);
      v85 = 0;
      _os_log_impl(&dword_0, v143, v144, "Error: %s", v89, 0xCu);
      sub_5E88(v90);
      sub_5E88(v91);
      sub_C3934();

      v87 = v85;
    }
  }

  else
  {
    v28 = v103;

    v87 = v28;
  }

  v29 = v118;
  v70 = v87;
  _objc_release(v143);
  v71 = v121[1];
  v72 = v121 + 1;
  v71(v120, v123);
  v30 = sub_BF704();
  v124(v29, v30, v123);

  v74 = 32;
  v75 = 7;
  v31 = swift_allocObject();
  v32 = v114;
  v76 = v31;
  *(v31 + 16) = v113;
  *(v31 + 24) = v32;
  v83 = sub_C3224();
  v84 = sub_C3874();
  v73 = 17;
  v78 = swift_allocObject();
  *(v78 + 16) = 32;
  v79 = swift_allocObject();
  *(v79 + 16) = 8;
  v33 = swift_allocObject();
  v34 = v76;
  v77 = v33;
  *(v33 + 16) = v97;
  *(v33 + 24) = v34;
  v35 = swift_allocObject();
  v36 = v77;
  v81 = v35;
  *(v35 + 16) = v98;
  *(v35 + 24) = v36;
  v80 = sub_C3C64();
  v82 = v37;

  v38 = v78;
  v39 = v82;
  *v82 = v99;
  v39[1] = v38;

  v40 = v79;
  v41 = v82;
  v82[2] = v100;
  v41[3] = v40;

  v42 = v81;
  v43 = v82;
  v82[4] = v101;
  v43[5] = v42;
  sub_4E48();

  if (os_log_type_enabled(v83, v84))
  {
    v44 = v70;
    v63 = sub_C3954();
    v62 = sub_21E8(&qword_EE828, &qword_C5100);
    v64 = sub_5DD4(0);
    v65 = sub_5DD4(1);
    v66 = &v154;
    v154 = v63;
    v67 = &v153;
    v153 = v64;
    v68 = &v152;
    v152 = v65;
    sub_5E28(2, &v154);
    sub_5E28(1, v66);
    v150 = v99;
    v151 = v78;
    sub_5E3C(&v150, v66, v67, v68);
    v69 = v44;
    if (v44)
    {

      __break(1u);
    }

    else
    {
      v150 = v100;
      v151 = v79;
      sub_5E3C(&v150, &v154, &v153, &v152);
      v61 = 0;
      v150 = v101;
      v151 = v81;
      sub_5E3C(&v150, &v154, &v153, &v152);
      _os_log_impl(&dword_0, v83, v84, "Sending SiriKitEvent .failed for %s", v63, 0xCu);
      sub_5E88(v64);
      sub_5E88(v65);
      sub_C3934();
    }
  }

  else
  {
  }

  _objc_release(v83);
  v71(v118, v123);
  v59 = &v155;
  sub_C1E94();
  v56 = v156;
  v57 = v157;
  v55 = sub_808C(v59, v156);
  v50 = 0;
  sub_C1F14();
  (*(v108 + 104))(v111, enum case for ActivityType.failed(_:), v107);

  v51 = enum case for SiriKitReliabilityCodes.genericError(_:);
  v54 = sub_C1EB4();
  v52 = *(v54 - 8);
  v53 = v54 - 8;
  (*(v52 + 104))(v105, v51);
  v45 = *(v52 + 56);
  v60 = 1;
  v45(v105, 0);

  swift_errorRetain();
  v46 = swift_allocObject();
  v47 = v112;
  v48 = v126;
  v46[2] = v115;
  v46[3] = v47;
  v46[4] = v48;
  v58 = sub_C1EE4();
  sub_C1EA4();

  sub_2560(v59);
  swift_errorRetain();
  *v96 = v126;
  sub_21E8(&qword_EEF88, &unk_C5A70);
  return swift_storeEnumTagMultiPayload();
}

uint64_t *sub_3C100@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v34[4] = 0;
  v31[0] = 0;
  v31[1] = 0;
  v26 = 0;
  v27 = 0;
  v34[6] = a1;
  v34[5] = a2;
  v34[0] = sub_C3564("listenAfterSpeaking", 0x13uLL, 1);
  v34[1] = v3;
  sub_C33E4();
  sub_8224(v34);
  v19 = v34[2];
  v20 = v34[3];

  v18 = sub_C3564("true", 4uLL, 1);
  v21 = v4;

  v32[0] = v19;
  v32[1] = v20;
  *&v33 = v18;
  *(&v33 + 1) = v21;
  if (v20)
  {
    sub_146A0(v32, &v24);
    if (*(&v33 + 1))
    {
      v23 = v24;
      v22 = v33;
      v14 = sub_C3574();
      sub_8224(&v22);
      sub_8224(&v23);
      sub_8224(v32);
      v15 = v14;
      goto LABEL_7;
    }

    sub_8224(&v24);
    goto LABEL_9;
  }

  if (*(&v33 + 1))
  {
LABEL_9:
    sub_146E0(v32);
    v15 = 0;
    goto LABEL_7;
  }

  sub_8224(v32);
  v15 = 1;
LABEL_7:

  if (v15)
  {
    v13 = enum case for BehaviorAfterSpeaking.listen(_:);
    v5 = sub_C2264();
    return (*(*(v5 - 8) + 104))(a3, v13);
  }

  else
  {

    v30 = a2;
    sub_21E8(&qword_EEFE0, &qword_C5AB0);
    sub_1E160();
    sub_C3824();
    while (1)
    {
      sub_21E8(&qword_EF0A8, &qword_C5AF0);
      sub_C3B44();
      if (!v29)
      {
        break;
      }

      v26 = v28;
      v27 = v29;
      v25[2] = v28;
      v25[3] = v29;
      v25[0] = sub_C3564("listenAfterSpeaking", 0x13uLL, 1);
      v25[1] = v7;
      sub_B2E8();
      v12 = sub_C39D4();
      sub_8224(v25);
      if (v12)
      {
        v11 = enum case for BehaviorAfterSpeaking.listen(_:);
        v8 = sub_C2264();
        (*(*(v8 - 8) + 104))(a3, v11);

        return sub_1D7C8(v31);
      }
    }

    sub_1D7C8(v31);
    v10 = enum case for BehaviorAfterSpeaking.defaultBehavior(_:);
    v9 = sub_C2264();
    return (*(*(v9 - 8) + 104))(a3, v10);
  }
}

uint64_t sub_3C548@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v100 = a4;
  v99 = a3;
  v101 = a2;
  v110 = a1;
  v82 = a5;
  v115 = 0;
  v134 = 0;
  v133 = 0;
  v132 = 0;
  v131 = 0;
  v130 = 0;
  v129 = 0;
  v128 = 0;
  v127 = 0;
  v125 = 0;
  v6 = *(*(sub_C1FD4() - 8) + 64);
  __chkstk_darwin(0);
  v83 = v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = sub_C2304();
  v85 = *(v84 - 8);
  v86 = v85;
  v8 = *(v85 + 64);
  __chkstk_darwin(v115);
  v87 = v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v134 = v87;
  v88 = sub_C3234();
  v89 = *(v88 - 8);
  v90 = v89;
  v10 = *(v89 + 64);
  __chkstk_darwin(v88 - 8);
  v91 = v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = *(sub_21E8(&qword_EEF98, &qword_C5A80) - 8);
  v93 = v92;
  v95 = *(v92 + 64);
  v94 = v95;
  v12 = __chkstk_darwin(v115);
  v97 = (v95 + 15) & 0xFFFFFFFFFFFFFFF0;
  v96 = v42 - v97;
  __chkstk_darwin(v12);
  v98 = v42 - v97;
  v133 = v42 - v97;
  v102 = sub_C2264();
  v103 = *(v102 - 8);
  v104 = v103;
  v105 = *(v103 + 64);
  v13 = __chkstk_darwin(v110);
  v107 = (v105 + 15) & 0xFFFFFFFFFFFFFFF0;
  v106 = v42 - v107;
  v14 = __chkstk_darwin(v13);
  v108 = v42 - v107;
  v132 = v42 - v107;
  v131 = v14;
  v130 = v15;
  v129 = v16;
  v128 = v17;
  v127 = v5;
  v109 = [v14 meta];
  v117 = &type metadata for String;
  v111 = sub_C3344();
  v113 = [v110 dialog];
  v112 = v113;
  v114 = sub_40590();
  v126 = sub_C36D4();
  v116 = sub_21E8(&qword_EF5F0, &qword_C5E30);
  v18 = sub_405F4();
  v20 = sub_28D90(sub_3D380, v115, v116, v117, &type metadata for Never, v18, &protocol witness table for Never, v19);
  v118 = 0;
  v119 = v20;
  v81 = v20;
  sub_1D7C8(&v126);

  sub_3C100(v111, v81, v108);

  v125 = 0;
  (*(v104 + 16))(v106, v108, v102);
  if ((*(v104 + 88))(v106, v102) == enum case for BehaviorAfterSpeaking.listen(_:))
  {
    (*(v104 + 8))(v106, v102);
    v125 = 1;
    v80 = 1;
  }

  else
  {
    (*(v104 + 8))(v106, v102);
    v80 = 0;
  }

  v59 = v80;
  type metadata accessor for CannedDialogHelper();
  sub_1A3BC(v59 & 1, v101, v98);
  v21 = v91;
  v22 = sub_BF704();
  (*(v90 + 16))(v21, v22, v88);
  sub_1CB3C(v98, v96);
  v60 = (*(v93 + 80) + 16) & ~*(v93 + 80);
  v69 = swift_allocObject();
  sub_1F620(v96, (v69 + v60));
  v79 = sub_C3224();
  v61 = v79;
  v78 = sub_C3874();
  v62 = v78;
  v63 = 17;
  v68 = 7;
  v72 = swift_allocObject();
  v64 = v72;
  v65 = 32;
  *(v72 + 16) = 32;
  v23 = swift_allocObject();
  v24 = v65;
  v73 = v23;
  v66 = v23;
  *(v23 + 16) = 8;
  v67 = v24;
  v25 = swift_allocObject();
  v26 = v69;
  v70 = v25;
  *(v25 + 16) = sub_407BC;
  *(v25 + 24) = v26;
  v27 = swift_allocObject();
  v28 = v70;
  v76 = v27;
  v71 = v27;
  *(v27 + 16) = sub_7BBC;
  *(v27 + 24) = v28;
  v77 = sub_21E8(&unk_EEFA0, &unk_C50F0);
  v74 = sub_C3C64();
  v75 = v29;

  v30 = v72;
  v31 = v75;
  *v75 = sub_7B48;
  v31[1] = v30;

  v32 = v73;
  v33 = v75;
  v75[2] = sub_7B48;
  v33[3] = v32;

  v34 = v75;
  v35 = v76;
  v75[4] = sub_7C08;
  v34[5] = v35;
  sub_4E48();

  if (os_log_type_enabled(v79, v78))
  {
    v36 = v118;
    v52 = sub_C3954();
    v49 = v52;
    v50 = sub_21E8(&qword_EE828, &qword_C5100);
    v53 = sub_5DD4(0);
    v51 = v53;
    v55 = 1;
    v54 = sub_5DD4(1);
    v124 = v52;
    v123 = v53;
    v122 = v54;
    v56 = &v124;
    sub_5E28(2, &v124);
    sub_5E28(v55, v56);
    v120 = sub_7B48;
    v121 = v64;
    sub_5E3C(&v120, v56, &v123, &v122);
    v57 = v36;
    v58 = v36;
    if (v36)
    {
      v47 = 0;

      __break(1u);
    }

    else
    {
      v120 = sub_7B48;
      v121 = v66;
      sub_5E3C(&v120, &v124, &v123, &v122);
      v45 = 0;
      v46 = 0;
      v120 = sub_7C08;
      v121 = v71;
      sub_5E3C(&v120, &v124, &v123, &v122);
      v43 = 0;
      v44 = 0;
      _os_log_impl(&dword_0, v61, v62, "NL context update: %s", v49, 0xCu);
      sub_5E88(v51);
      sub_5E88(v54);
      sub_C3934();

      v48 = v43;
    }
  }

  else
  {
    v37 = v118;

    v48 = v37;
  }

  (*(v90 + 8))(v91, v88);
  sub_C1FC4();

  v42[1] = v42;
  __chkstk_darwin(v83);
  v38 = v100;
  v39 = v99;
  v42[-4] = &v125;
  v42[-3] = v40;
  v42[-2] = v39;
  v42[-1] = v38;
  sub_C22B4();

  (*(v86 + 16))(v82, v87, v84);
  (*(v86 + 8))(v87, v84);
  sub_1CCE4(v98);
  return (*(v104 + 8))(v108, v102);
}

void sub_3D380(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = [*a1 dialogId];
  *a2 = sub_C3494();
  a2[1] = v2;
  _objc_release(v4);
}

uint64_t sub_3D3F0(uint64_t a1)
{
  v3 = a1;
  v5 = sub_21E8(&qword_EEF98, &qword_C5A80);
  v4 = (*(*(v5 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v1 = __chkstk_darwin(v3);
  v6 = &v3 - v4;
  sub_1CB3C(v1, &v3 - v4);
  return sub_C34F4();
}

uint64_t sub_3D48C(uint64_t a1, uint64_t a2, const void *a3, uint64_t a4, const void *a5)
{
  v78 = a1;
  v74 = a2;
  v76 = a3;
  v79 = a4;
  v80 = a5;
  v55 = sub_4172C;
  v56 = sub_7BBC;
  v57 = sub_7B48;
  v58 = sub_7B48;
  v59 = sub_7C08;
  v96 = 0;
  v95 = 0;
  v94 = 0;
  v93 = 0;
  v92 = 0;
  v91 = 0;
  v60 = 0;
  v66 = 0;
  v61 = sub_C3234();
  v62 = *(v61 - 8);
  v63 = v61 - 8;
  v64 = (*(v62 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v61);
  v65 = v28 - v64;
  v67 = (*(*(sub_21E8(&qword_EEFD0, &unk_C6820) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v66);
  v85 = v28 - v67;
  v84 = sub_C2DB4();
  v81 = *(v84 - 8);
  v82 = v84 - 8;
  v68 = v81;
  v69 = *(v81 + 64);
  v70 = (v69 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v84);
  v71 = v28 - v70;
  v72 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v28 - v70);
  v73 = v28 - v72;
  v96 = v28 - v72;
  v7 = sub_21E8(&qword_EEF98, &qword_C5A80);
  v75 = (*(*(v7 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v7);
  v77 = v28 - v75;
  v95 = a1;
  v94 = v8;
  v93 = v9;
  v92 = v10;
  v91 = v11;
  v12 = *v8;
  v83 = 1;
  sub_C22F4();
  sub_1CB3C(v76, v77);
  sub_C22D4();

  sub_C22E4();
  sub_41538(v80, v85);
  if ((*(v81 + 48))(v85, v83, v84) == 1)
  {
    return sub_1CF14(v85);
  }

  v14 = v65;
  v38 = v68;
  v41 = *(v81 + 32);
  v40 = v81 + 32;
  v41(v73, v85, v84);
  v15 = sub_BF704();
  (*(v62 + 16))(v14, v15, v61);
  v36 = *(v81 + 16);
  v37 = v81 + 16;
  v36(v71, v73, v84);
  v39 = (*(v38 + 80) + 16) & ~*(v38 + 80);
  v44 = 7;
  v45 = swift_allocObject();
  v41((v45 + v39), v71, v84);
  v53 = sub_C3224();
  v54 = sub_C3874();
  v42 = 17;
  v47 = swift_allocObject();
  *(v47 + 16) = 32;
  v48 = swift_allocObject();
  *(v48 + 16) = 8;
  v43 = 32;
  v16 = swift_allocObject();
  v17 = v45;
  v46 = v16;
  *(v16 + 16) = v55;
  *(v16 + 24) = v17;
  v18 = swift_allocObject();
  v19 = v46;
  v50 = v18;
  *(v18 + 16) = v56;
  *(v18 + 24) = v19;
  v52 = sub_21E8(&unk_EEFA0, &unk_C50F0);
  v49 = sub_C3C64();
  v51 = v20;

  v21 = v47;
  v22 = v51;
  *v51 = v57;
  v22[1] = v21;

  v23 = v48;
  v24 = v51;
  v51[2] = v58;
  v24[3] = v23;

  v25 = v50;
  v26 = v51;
  v51[4] = v59;
  v26[5] = v25;
  sub_4E48();

  if (os_log_type_enabled(v53, v54))
  {
    v27 = v60;
    v29 = sub_C3954();
    v28[3] = sub_21E8(&qword_EE828, &qword_C5100);
    v30 = sub_5DD4(0);
    v31 = sub_5DD4(1);
    v32 = &v90;
    v90 = v29;
    v33 = &v89;
    v89 = v30;
    v34 = &v88;
    v88 = v31;
    sub_5E28(2, &v90);
    sub_5E28(1, v32);
    v86 = v57;
    v87 = v47;
    sub_5E3C(&v86, v32, v33, v34);
    v35 = v27;
    if (v27)
    {

      __break(1u);
    }

    else
    {
      v86 = v58;
      v87 = v48;
      sub_5E3C(&v86, &v90, &v89, &v88);
      v28[1] = 0;
      v86 = v59;
      v87 = v50;
      sub_5E3C(&v86, &v90, &v89, &v88);
      _os_log_impl(&dword_0, v53, v54, "overriding responseMode: %s", v29, 0xCu);
      sub_5E88(v30);
      sub_5E88(v31);
      sub_C3934();
    }
  }

  else
  {
  }

  _objc_release(v53);
  (*(v62 + 8))(v65, v61);
  v36(v71, v73, v84);
  sub_C22C4();
  return (*(v81 + 8))(v73, v84);
}

uint64_t sub_3DF30(uint64_t a1)
{
  v2[1] = a1;
  v5 = sub_C2DB4();
  v4 = *(v5 - 8);
  v3 = (*(v4 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v5);
  v6 = v2 - v3;
  (*(v4 + 16))();
  sub_41868();
  return sub_C3504();
}

uint64_t sub_3DFEC()
{
  _objc_release(*(v0 + 16));
  v3 = OBJC_IVAR____TtC36SocialConversationFlowDelegatePlugin13DialogService_options;
  v1 = sub_C2F14();
  (*(*(v1 - 8) + 8))(v0 + v3);
  return v4;
}

uint64_t sub_3E074()
{
  v0 = *sub_3DFEC();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  return swift_deallocClassInstance();
}

uint64_t sub_3E0D8()
{
  v2 = *v0;
  v3 = v0[1];

  return v2;
}

uint64_t sub_3E110()
{
  v2 = *(v0 + 16);

  return v2;
}

uint64_t sub_3E13C()
{
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);

  return v2;
}

uint64_t sub_3E174()
{
  v2 = *(v0 + 40);

  return v2;
}

uint64_t sub_3E1A0@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  *a7 = result;
  a7[1] = a2;
  a7[2] = a3;
  a7[3] = a4;
  a7[4] = a5;
  a7[5] = a6;
  return result;
}

uint64_t sub_3E1BC(uint64_t a1, uint64_t a2)
{

  v3 = v2[1];
  *v2 = a1;
  v2[1] = a2;
}

uint64_t sub_3E208()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);

  return v2;
}

uint64_t sub_3E240(uint64_t a1, uint64_t a2)
{

  v3 = *(v2 + 24);
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

uint64_t sub_3E28C()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);

  return v2;
}

uint64_t sub_3E2C4(uint64_t a1, uint64_t a2)
{

  v3 = *(v2 + 40);
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
}

uint64_t sub_3E310()
{
  v2 = *(v0 + 48);
  v3 = *(v0 + 56);

  return v2;
}

uint64_t sub_3E348(uint64_t a1, uint64_t a2)
{

  v3 = *(v2 + 56);
  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
}

uint64_t sub_3E394()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_3E40C(uint64_t a1)
{
  v8 = a1;
  v6 = (*(*(sub_21E8(&qword_EF008, &unk_C5AD0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = __chkstk_darwin(v8);
  v7 = &v5 - v6;
  sub_1D97C(v2, &v5 - v6);
  v3 = type metadata accessor for DialogServiceButton();
  sub_3F4E0(v7, (v1 + *(v3 + 20)));
  return sub_1DAA4(v8);
}

uint64_t sub_3E4BC()
{
  v1 = (v0 + *(type metadata accessor for DialogServiceButton() + 24));
  v3 = *v1;
  v4 = v1[1];

  return v3;
}

uint64_t sub_3E504(uint64_t a1, uint64_t a2)
{

  v3 = (v2 + *(type metadata accessor for DialogServiceButton() + 24));
  v4 = v3[1];
  *v3 = a1;
  v3[1] = a2;
}

uint64_t sub_3E5B8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_3E5F8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

unint64_t sub_3E638()
{
  v2 = qword_EF580;
  if (!qword_EF580)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_EF580);
    return WitnessTable;
  }

  return v2;
}

uint64_t type metadata accessor for DialogService()
{
  v1 = qword_EF628;
  if (!qword_EF628)
  {
    return swift_getSingletonMetadata();
  }

  return v1;
}

unint64_t sub_3E724()
{
  v2 = qword_EF588;
  if (!qword_EF588)
  {
    sub_C2E74();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_EF588);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_3E7A4()
{
  v2 = qword_EF590;
  if (!qword_EF590)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_EF590);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_3E81C()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  v4 = v0[9];

  return swift_deallocObject();
}

uint64_t sub_3E8D4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_3E914()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

unint64_t sub_3E954()
{
  v2 = qword_EF598;
  if (!qword_EF598)
  {
    type metadata accessor for ParameterService();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_EF598);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_3E9D4()
{
  v4 = *(sub_21E8(&qword_EEF88, &unk_C5A70) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = v5 + *(v4 + 64);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v1 = *(v3 + v5);
  }

  else
  {
    v0 = sub_C2134();
    (*(*(v0 - 8) + 8))(v3 + v5);
  }

  return swift_deallocObject();
}

uint64_t sub_3EAF4()
{
  v1 = *(sub_21E8(&qword_EEF88, &unk_C5A70) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_31CE8(v2);
}

uint64_t sub_3EBBC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_3EBFC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

unint64_t sub_3EC3C()
{
  v2 = qword_EF5A8;
  if (!qword_EF5A8)
  {
    sub_81B0(&qword_EF5A0, &qword_C5DF8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_EF5A8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_3ECC4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_3ED5C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_3ED9C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_3EDDC()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  v4 = v0[9];

  return swift_deallocObject();
}

uint64_t sub_3EE3C()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  v4 = v0[9];

  return swift_deallocObject();
}

uint64_t sub_3EEF4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_3EF34()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_3EF74()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  v4 = v0[9];

  return swift_deallocObject();
}

uint64_t sub_3F024()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_3F064()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_3F14C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_3F18C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_3F1CC()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  v4 = v0[9];

  return swift_deallocObject();
}

uint64_t sub_3F27C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_3F2BC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_3F2FC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_3F394()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_3F3D4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_3F414()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  v4 = v0[9];

  return swift_deallocObject();
}

uint64_t type metadata accessor for DialogServiceButton()
{
  v1 = qword_EF760;
  if (!qword_EF760)
  {
    return swift_getSingletonMetadata();
  }

  return v1;
}

void *sub_3F4E0(const void *a1, void *a2)
{
  v7 = sub_C1AC4();
  v8 = *(v7 - 8);
  v9 = *(v8 + 48);
  if ((v9)(a2, 1))
  {
    if (v9(a1, 1, v7))
    {
      v3 = sub_21E8(&qword_EF008, &unk_C5AD0);
      memcpy(a2, a1, *(*(v3 - 8) + 64));
    }

    else
    {
      (*(v8 + 32))(a2, a1, v7);
      (*(v8 + 56))(a2, 0, 1, v7);
    }
  }

  else if (v9(a1, 1, v7))
  {
    (*(v8 + 8))(a2, v7);
    v2 = sub_21E8(&qword_EF008, &unk_C5AD0);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v8 + 40))(a2, a1, v7);
  }

  return a2;
}

__n128 sub_3F708(char *a1, char *a2)
{
  *a2 = *a1;
  v5 = type metadata accessor for DialogServiceButton();
  v6 = *(v5 + 20);
  v8 = sub_C1AC4();
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(&a1[v6], 1))
  {
    v2 = sub_21E8(&qword_EF008, &unk_C5AD0);
    memcpy(&a2[v6], &a1[v6], *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v9 + 32))();
    (*(v9 + 56))(&a2[v6], 0, 1, v8);
  }

  result = *&a1[*(v5 + 24)];
  *&a2[*(v5 + 24)] = result;
  return result;
}

uint64_t sub_3F89C(uint64_t a1)
{
  v3 = sub_C2164();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

unint64_t sub_3F944()
{
  v2 = qword_EF5B8;
  if (!qword_EF5B8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_EF5B8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_3F9BC()
{
  v2 = qword_EF5C0;
  if (!qword_EF5C0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_EF5C0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_3FA34(uint64_t a1)
{
  v1 = *(a1 + 24);

  return a1;
}

uint64_t sub_3FA60()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_3FAA0()
{
  v3 = *(sub_C1AC4() - 8);
  v1 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v4 = v1 + *(v3 + 64);
  (*(v3 + 8))(v0 + v1);
  return swift_deallocObject();
}

uint64_t sub_3FB6C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_C1AC4();
  v3 = v1 + ((*(*(v2 - 8) + 80) + 16) & ~*(*(v2 - 8) + 80));

  return sub_37080(v3, a1);
}

uint64_t sub_3FBE0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_3FC20()
{
  v5 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = sub_C1AC4();
  v1 = sub_3FC7C();

  return sub_5EF0(v5, v3, v4, v1);
}

unint64_t sub_3FC7C()
{
  v2 = qword_EF5C8;
  if (!qword_EF5C8)
  {
    sub_C1AC4();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_EF5C8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_3FD54()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_3FD94()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_3FE2C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_3FE6C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_3FEAC()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  v4 = v0[9];

  return swift_deallocObject();
}

uint64_t sub_3FF5C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_3FF9C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_3FFDC()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  v4 = v0[9];

  return swift_deallocObject();
}

uint64_t sub_4008C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_400CC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

unint64_t sub_4010C()
{
  v2 = qword_EF5D8;
  if (!qword_EF5D8)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_EF5D8);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_401C8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_40208()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_40248()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  v4 = v0[9];

  return swift_deallocObject();
}

unint64_t sub_402A0()
{
  v2 = qword_EF5E0;
  if (!qword_EF5E0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_EF5E0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_40318()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_403B0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_403F0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_40430()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_404C8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_40508()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_40548()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return swift_deallocObject();
}

unint64_t sub_40590()
{
  v2 = qword_EF5E8;
  if (!qword_EF5E8)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_EF5E8);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_405F4()
{
  v2 = qword_EF5F8;
  if (!qword_EF5F8)
  {
    sub_81B0(&qword_EF5F0, &qword_C5E30);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_EF5F8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_4067C()
{
  v3 = *(sub_21E8(&qword_EEF98, &qword_C5A80) - 8);
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v4 = v5 + *(v3 + 64);
  v6 = sub_C2094();
  v7 = *(v6 - 8);
  if (!(*(v7 + 48))(v0 + v5, 1))
  {
    (*(v7 + 8))(v2 + v5, v6);
  }

  return swift_deallocObject();
}

uint64_t sub_407BC()
{
  v1 = *(sub_21E8(&qword_EEF98, &qword_C5A80) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_3D3F0(v2);
}

uint64_t sub_40884()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_408C4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_40934()
{
  v2 = sub_C2F14();
  updated = v2;
  if (v0 <= 0x3F)
  {
    v4 = *(v2 - 8) + 64;
    updated = swift_updateClassMetadata2();
    if (!updated)
    {
      return 0;
    }
  }

  return updated;
}

uint64_t sub_40A48(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
    {
      v4 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v3 = -1;
      if (!HIDWORD(*(a1 + 8)))
      {
        v3 = *(a1 + 8);
      }

      v4 = v3;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_40B60(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFF)
  {
    *result = a2 + 0x80000000;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *(result + 40) = 0;
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 - 1;
    }
  }

  return result;
}

uint64_t sub_40D7C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 > 0x7FFFFFFF && *(a1 + 64))
    {
      v4 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v3 = -1;
      if (*(a1 + 8) < 0x100000000uLL)
      {
        v3 = *(a1 + 8);
      }

      v4 = v3;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_40EBC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFF)
  {
    *result = a2 + 0x80000000;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *(result + 40) = 0;
    *(result + 48) = 0;
    *(result + 56) = 0;
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 64) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 64) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 - 1;
    }
  }

  return result;
}

uint64_t sub_410D8(uint64_t a1, unsigned int a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v7 = -1;
    if (*(a1 + 8) < 0x100000000uLL)
    {
      v7 = *(a1 + 8);
    }

    v3 = v7 - 1;
    if (v7 - 1 < 0)
    {
      v3 = -1;
    }

    return (v3 + 1);
  }

  else
  {
    v5 = sub_21E8(&qword_EF008, &unk_C5AD0);
    if (a2 == *(*(v5 - 8) + 84))
    {
      return (*(*(v5 - 8) + 48))(a1 + *(a3 + 20), a2, v5);
    }

    else
    {
      __break(1u);
    }
  }

  return v6;
}

uint64_t sub_41230(uint64_t result, unsigned int a2, int a3, uint64_t a4)
{
  v4 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    result = sub_21E8(&qword_EF008, &unk_C5AD0);
    if (a3 == *(*(result - 8) + 84))
    {
      return (*(*(result - 8) + 56))(v4 + *(a4 + 20), a2, a2, result);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_41330()
{
  v3 = sub_41408();
  if (v0 <= 0x3F)
  {
    v3 = sub_4149C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return v3;
}

uint64_t sub_41408()
{
  v4 = qword_EF770;
  if (!qword_EF770)
  {
    v3 = sub_C3964();
    v4 = v3;
    if (!v0)
    {
      v1 = v3;
      atomic_store(v3, &qword_EF770);
      return v1;
    }
  }

  return v4;
}

uint64_t sub_4149C()
{
  v4 = qword_EF778;
  if (!qword_EF778)
  {
    sub_C1AC4();
    v3 = sub_C3964();
    v4 = v3;
    if (!v0)
    {
      v1 = v3;
      atomic_store(v3, &qword_EF778);
      return v1;
    }
  }

  return v4;
}

void *sub_41538(const void *a1, void *a2)
{
  v6 = sub_C2DB4();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = sub_21E8(&qword_EEFD0, &unk_C6820);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 16))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

uint64_t sub_41660()
{
  v3 = *(sub_C2DB4() - 8);
  v1 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v4 = v1 + *(v3 + 64);
  (*(v3 + 8))(v0 + v1);
  return swift_deallocObject();
}

uint64_t sub_4172C()
{
  v1 = *(sub_C2DB4() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_3DF30(v2);
}

uint64_t sub_417E8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_41828()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

unint64_t sub_41868()
{
  v2 = qword_EF7B0;
  if (!qword_EF7B0)
  {
    sub_C2DB4();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_EF7B0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_418E8()
{
  v2 = qword_EF7B8;
  if (!qword_EF7B8)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_EF7B8);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_4194C()
{
  v2 = qword_EF7C0;
  if (!qword_EF7C0)
  {
    sub_418E8();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_EF7C0);
    return WitnessTable;
  }

  return v2;
}

uint64_t *sub_419CC()
{
  if (qword_EE538 != -1)
  {
    swift_once();
  }

  return &qword_F1070;
}

uint64_t *sub_41A2C()
{
  if (qword_EE548 != -1)
  {
    swift_once();
  }

  return &qword_F1090;
}

uint64_t *sub_41A8C()
{
  if (qword_EE540 != -1)
  {
    swift_once();
  }

  return &qword_F1080;
}

uint64_t *sub_41AEC()
{
  if (qword_EE528 != -1)
  {
    swift_once();
  }

  return &qword_F1050;
}

uint64_t *sub_41B4C()
{
  if (qword_EE530 != -1)
  {
    swift_once();
  }

  return &qword_F1060;
}

uint64_t sub_41BAC()
{
  result = sub_C3564("SocialConversation", 0x12uLL, 1);
  qword_F1050 = result;
  qword_F1058 = v1;
  return result;
}

uint64_t sub_41BF0()
{
  v0 = sub_41AEC();
  v2 = *v0;
  v3 = v0[1];

  return v2;
}

uint64_t sub_41C2C()
{
  result = sub_C3564("CannedDialog", 0xCuLL, 1);
  qword_F1060 = result;
  qword_F1068 = v1;
  return result;
}

uint64_t sub_41C70()
{
  v0 = sub_41B4C();
  v2 = *v0;
  v3 = v0[1];

  return v2;
}

uint64_t sub_41CAC()
{
  result = sub_C3564("dalVoiceTrigger", 0xFuLL, 1);
  qword_F1070 = result;
  qword_F1078 = v1;
  return result;
}

uint64_t sub_41CF0()
{
  v0 = sub_419CC();
  v2 = *v0;
  v3 = v0[1];

  return v2;
}

uint64_t sub_41D2C()
{
  result = sub_C3564("dalAgain", 8uLL, 1);
  qword_F1080 = result;
  qword_F1088 = v1;
  return result;
}

uint64_t sub_41D70()
{
  v0 = sub_41A8C();
  v2 = *v0;
  v3 = v0[1];

  return v2;
}

uint64_t sub_41DAC()
{
  result = sub_C3564("SiriSocialConversation", 0x16uLL, 1);
  qword_F1090 = result;
  qword_F1098 = v1;
  return result;
}

uint64_t sub_41DF0()
{
  result = sub_C3564("common_SocialConversation", 0x19uLL, 1);
  qword_F10A0 = result;
  qword_F10A8 = v1;
  return result;
}

uint64_t *sub_41E34()
{
  if (qword_EE550 != -1)
  {
    swift_once();
  }

  return &qword_F10A0;
}

uint64_t sub_41E94()
{
  v0 = sub_41E34();
  v2 = *v0;
  v3 = v0[1];

  return v2;
}

uint64_t sub_41ED0()
{
  result = sub_C3564("uso_NoEntity", 0xCuLL, 1);
  qword_F10B0 = result;
  qword_F10B8 = v1;
  return result;
}

uint64_t *sub_41F14()
{
  if (qword_EE558 != -1)
  {
    swift_once();
  }

  return &qword_F10B0;
}

uint64_t sub_41F74()
{
  v0 = sub_41F14();
  v2 = *v0;
  v3 = v0[1];

  return v2;
}

uint64_t sub_41FB0()
{
  result = sub_C3564("dialog", 6uLL, 1);
  qword_F10C0 = result;
  qword_F10C8 = v1;
  return result;
}

uint64_t *sub_41FF4()
{
  if (qword_EE560 != -1)
  {
    swift_once();
  }

  return &qword_F10C0;
}

uint64_t sub_42054()
{
  v0 = sub_41FF4();
  v2 = *v0;
  v3 = v0[1];

  return v2;
}

uint64_t sub_42090()
{
  result = sub_C3564("dialogId", 8uLL, 1);
  qword_F10D0 = result;
  qword_F10D8 = v1;
  return result;
}

uint64_t *sub_420D4()
{
  if (qword_EE568 != -1)
  {
    swift_once();
  }

  return &qword_F10D0;
}

uint64_t sub_42134()
{
  v0 = sub_420D4();
  v2 = *v0;
  v3 = v0[1];

  return v2;
}

uint64_t sub_421A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[15] = a4;
  v4[14] = a3;
  v4[13] = a2;
  v4[12] = a1;
  v4[4] = v4;
  v4[5] = 0;
  v4[6] = 0;
  v4[2] = 0;
  v4[3] = 0;
  v4[11] = 0;
  v5 = sub_C3234();
  v4[16] = v5;
  v13 = *(v5 - 8);
  v4[17] = v13;
  v6 = *(v13 + 64) + 15;
  v4[18] = swift_task_alloc();
  v7 = sub_C1D34();
  v4[19] = v7;
  v14 = *(v7 - 8);
  v4[20] = v14;
  v4[21] = *(v14 + 64);
  v4[22] = swift_task_alloc();
  v8 = sub_C2D04();
  v4[23] = v8;
  v15 = *(v8 - 8);
  v4[24] = v15;
  v9 = *(v15 + 64) + 15;
  v4[25] = swift_task_alloc();
  v10 = sub_C2C64();
  v4[26] = v10;
  v16 = *(v10 - 8);
  v4[27] = v16;
  v17 = *(v16 + 64);
  v4[28] = swift_task_alloc();
  v4[29] = swift_task_alloc();
  v4[5] = a1;
  v4[6] = a2;
  v4[2] = a3;
  v4[3] = a4;
  v11 = v4[4];

  return _swift_task_switch(sub_42454, 0);
}

uint64_t sub_42454()
{
  v1 = v0[15];
  v2 = v0[14];
  v3 = v0[13];
  v0[4] = v0;
  v42 = sub_42B28(v3, v2, v1);
  if (v42)
  {
    v40 = *(v43 + 232);
    v29 = *(v43 + 224);
    v41 = *(v43 + 208);
    v38 = *(v43 + 200);
    v39 = *(v43 + 184);
    v34 = *(v43 + 176);
    v32 = *(v43 + 168);
    v35 = *(v43 + 152);
    v27 = *(v43 + 120);
    v26 = *(v43 + 112);
    v31 = *(v43 + 96);
    v28 = *(v43 + 216);
    v37 = *(v43 + 192);
    v30 = *(v43 + 160);
    *(v43 + 88) = v42;
    sub_C2C54();

    sub_C2C24();
    sub_C1D24();
    sub_C2C14();
    sub_C2C44();
    sub_C2C04();
    (*(v28 + 16))(v29, v40, v41);
    sub_42E5C();
    sub_C2CE4();
    (*(v30 + 16))(v34, v31, v35);
    v33 = (*(v30 + 80) + 16) & ~*(v30 + 80);
    v36 = swift_allocObject();
    (*(v30 + 32))(v36 + v33, v34, v35);
    sub_C2CF4();

    (*(v37 + 8))(v38, v39);
    (*(v28 + 8))(v40, v41);
  }

  else
  {
    v4 = *(v43 + 144);
    v22 = *(v43 + 128);
    v21 = *(v43 + 136);
    v5 = sub_BF704();
    (*(v21 + 16))(v4, v5, v22);
    oslog = sub_C3224();
    v23 = sub_C3884();
    sub_21E8(&unk_EEFA0, &unk_C50F0);
    v25 = sub_C3C64();
    if (os_log_type_enabled(oslog, v23))
    {
      buf = sub_C3954();
      sub_21E8(&qword_EE828, &qword_C5100);
      v18 = sub_5DD4(0);
      v19 = sub_5DD4(0);
      *(v43 + 56) = buf;
      *(v43 + 64) = v18;
      *(v43 + 72) = v19;
      sub_5E28(0, (v43 + 56));
      sub_5E28(0, (v43 + 56));
      *(v43 + 80) = v25;
      v20 = swift_task_alloc();
      v20[2] = v43 + 56;
      v20[3] = v43 + 64;
      v20[4] = v43 + 72;
      sub_21E8(&unk_EEFB0, qword_C5110);
      sub_8128();
      sub_C3654();

      _os_log_impl(&dword_0, oslog, v23, "Failed to encode flow variables for persisting", buf, 2u);
      sub_5E88(v18);
      sub_5E88(v19);
      sub_C3934();
    }

    v15 = *(v43 + 144);
    v16 = *(v43 + 128);
    v14 = *(v43 + 136);
    _objc_release(oslog);
    (*(v14 + 8))(v15, v16);
  }

  v6 = *(v43 + 232);
  v10 = *(v43 + 224);
  v11 = *(v43 + 200);
  v12 = *(v43 + 176);
  v13 = *(v43 + 144);

  v7 = *(*(v43 + 32) + 8);
  v8 = *(v43 + 32);

  return v7();
}

uint64_t sub_42B28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v26 = a1;
  v21 = a2;
  v22 = a3;
  v44 = 0;
  v42 = 0;
  v43 = 0;
  v41 = 0;
  v29 = __b;
  v31 = 40;
  memset(__b, 0, sizeof(__b));
  v35 = 0;
  v36 = 0;
  v23 = (*(*(sub_21E8(&qword_EF7C8, &qword_C5F90) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v24 = (v8 - v23);
  v44 = __chkstk_darwin(v26);
  v42 = v3;
  v43 = v4;
  v25 = sub_C2D14();
  v27 = &type metadata for String;
  v28 = &protocol witness table for String;
  v41 = sub_C3314();

  v30 = &v45;
  sub_C3354();
  v5 = v32;
  memcpy(v29, v30, v31);
  for (i = v5; ; i = v16)
  {
    v19 = i;
    sub_21E8(&qword_EF7D0, &qword_C5F98);
    v20 = &v38;
    sub_C33D4();
    memcpy(__dst, v20, sizeof(__dst));
    if (!__dst[1])
    {
      sub_49790(__b);
      v9 = &v41;
      v10 = v41;

      sub_1D7C8(v9);
      return v10;
    }

    v13 = __dst[0];
    v15 = __dst[1];
    v35 = __dst[0];
    v36 = __dst[1];
    v14 = v37;
    sub_49814(&__dst[2], v37);
    v6 = v19;

    sub_45FF4(v14, v21, v22, v24);
    v16 = v6;
    v17 = v15;
    v18 = v6;
    if (v6)
    {
      break;
    }

    (*(*(v25 - 8) + 56))(v24, 0, 1);
    v11 = v34;
    v34[0] = v13;
    v34[1] = v15;
    sub_21E8(&qword_EF7D8, &qword_C5FA0);
    sub_C33F4();
    sub_2560(v37);
  }

  v8[2] = v18;
  v8[1] = v17;

  sub_2560(v37);

  sub_49790(__b);
  sub_1D7C8(&v41);
  return v12;
}

uint64_t sub_42E5C()
{
  sub_49878(0);
  sub_21E8(&qword_EF868, &qword_C6268);
  return sub_C3374();
}

uint64_t sub_42EB4(uint64_t a1, int a2, uint64_t a3)
{
  v105 = a1;
  v104 = a2;
  v103 = a3;
  v84 = sub_2D6A0;
  v85 = sub_7BBC;
  v86 = sub_7B48;
  v87 = sub_7B48;
  v88 = sub_7C08;
  v89 = sub_1A354;
  v90 = sub_7BBC;
  v91 = sub_7B48;
  v92 = sub_7B48;
  v93 = sub_7C08;
  v125 = 0;
  v126 = 0;
  v124 = 0;
  v123 = 0;
  v94 = 0;
  v95 = 0;
  v96 = sub_C1D34();
  v98 = *(v96 - 8);
  v97 = v96 - 8;
  v99 = v98;
  v100 = *(v98 + 64);
  v101 = (v100 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0);
  v102 = v37 - v101;
  v106 = sub_C3234();
  v107 = *(v106 - 8);
  v108 = v106 - 8;
  v109 = (*(v107 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = __chkstk_darwin(v105);
  v110 = v37 - v109;
  v111 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = __chkstk_darwin(v3);
  v112 = v37 - v111;
  v125 = v5;
  v126 = v6 & 1;
  v124 = v7;
  if (v6)
  {
    v83 = v105;
    v23 = v110;
    v45 = v105;
    swift_errorRetain();
    v123 = v45;
    v24 = sub_BF704();
    (*(v107 + 16))(v23, v24, v106);
    swift_errorRetain();
    v48 = 7;
    v49 = swift_allocObject();
    *(v49 + 16) = v45;
    v57 = sub_C3224();
    v58 = sub_C3884();
    v46 = 17;
    v51 = swift_allocObject();
    *(v51 + 16) = 32;
    v52 = swift_allocObject();
    *(v52 + 16) = 8;
    v47 = 32;
    v25 = swift_allocObject();
    v26 = v49;
    v50 = v25;
    *(v25 + 16) = v89;
    *(v25 + 24) = v26;
    v27 = swift_allocObject();
    v28 = v50;
    v54 = v27;
    *(v27 + 16) = v90;
    *(v27 + 24) = v28;
    v56 = sub_21E8(&unk_EEFA0, &unk_C50F0);
    v53 = sub_C3C64();
    v55 = v29;

    v30 = v51;
    v31 = v55;
    *v55 = v91;
    v31[1] = v30;

    v32 = v52;
    v33 = v55;
    v55[2] = v92;
    v33[3] = v32;

    v34 = v54;
    v35 = v55;
    v55[4] = v93;
    v35[5] = v34;
    sub_4E48();

    if (os_log_type_enabled(v57, v58))
    {
      v36 = v94;
      v38 = sub_C3954();
      v37[1] = sub_21E8(&qword_EE828, &qword_C5100);
      v39 = sub_5DD4(0);
      v40 = sub_5DD4(1);
      v41 = &v122;
      v122 = v38;
      v42 = &v121;
      v121 = v39;
      v43 = &v120;
      v120 = v40;
      sub_5E28(2, &v122);
      sub_5E28(1, v41);
      v118 = v91;
      v119 = v51;
      sub_5E3C(&v118, v41, v42, v43);
      v44 = v36;
      if (v36)
      {

        __break(1u);
      }

      else
      {
        v118 = v92;
        v119 = v52;
        sub_5E3C(&v118, &v122, &v121, &v120);
        v37[0] = 0;
        v118 = v93;
        v119 = v54;
        sub_5E3C(&v118, &v122, &v121, &v120);
        _os_log_impl(&dword_0, v57, v58, "Failed to donate variable state: %s", v38, 0xCu);
        sub_5E88(v39);
        sub_5E88(v40);
        sub_C3934();
      }
    }

    else
    {
    }

    _objc_release(v57);
    (*(v107 + 8))(v110, v106);
  }

  else
  {
    v8 = v112;
    v9 = sub_BF704();
    (*(v107 + 16))(v8, v9, v106);
    v68 = v99;
    (*(v98 + 16))(v102, v103, v96);
    v69 = (*(v68 + 80) + 16) & ~*(v68 + 80);
    v72 = 7;
    v73 = swift_allocObject();
    (*(v98 + 32))(v73 + v69, v102, v96);
    v81 = sub_C3224();
    v82 = sub_C3874();
    v70 = 17;
    v75 = swift_allocObject();
    *(v75 + 16) = 32;
    v76 = swift_allocObject();
    *(v76 + 16) = 8;
    v71 = 32;
    v10 = swift_allocObject();
    v11 = v73;
    v74 = v10;
    *(v10 + 16) = v84;
    *(v10 + 24) = v11;
    v12 = swift_allocObject();
    v13 = v74;
    v78 = v12;
    *(v12 + 16) = v85;
    *(v12 + 24) = v13;
    v80 = sub_21E8(&unk_EEFA0, &unk_C50F0);
    v77 = sub_C3C64();
    v79 = v14;

    v15 = v75;
    v16 = v79;
    *v79 = v86;
    v16[1] = v15;

    v17 = v76;
    v18 = v79;
    v79[2] = v87;
    v18[3] = v17;

    v19 = v78;
    v20 = v79;
    v79[4] = v88;
    v20[5] = v19;
    sub_4E48();

    if (os_log_type_enabled(v81, v82))
    {
      v21 = v94;
      v61 = sub_C3954();
      v60 = sub_21E8(&qword_EE828, &qword_C5100);
      v62 = sub_5DD4(0);
      v63 = sub_5DD4(1);
      v64 = &v117;
      v117 = v61;
      v65 = &v116;
      v116 = v62;
      v66 = &v115;
      v115 = v63;
      sub_5E28(2, &v117);
      sub_5E28(1, v64);
      v113 = v86;
      v114 = v75;
      sub_5E3C(&v113, v64, v65, v66);
      v67 = v21;
      if (v21)
      {

        __break(1u);
      }

      else
      {
        v113 = v87;
        v114 = v76;
        sub_5E3C(&v113, &v117, &v116, &v115);
        v59 = 0;
        v113 = v88;
        v114 = v78;
        sub_5E3C(&v113, &v117, &v116, &v115);
        _os_log_impl(&dword_0, v81, v82, "Successfully donated variable state for %s", v61, 0xCu);
        sub_5E88(v62);
        sub_5E88(v63);
        sub_C3934();
      }
    }

    else
    {
    }

    _objc_release(v81);
    return (*(v107 + 8))(v112, v106);
  }
}

uint64_t sub_43D64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[12] = a4;
  v4[11] = a3;
  v4[10] = a1;
  v4[4] = v4;
  v4[5] = 0;
  v4[6] = 0;
  v4[2] = 0;
  v4[3] = 0;
  v4[7] = 0;
  v4[8] = 0;
  v5 = sub_C1D34();
  v4[13] = v5;
  v14 = *(v5 - 8);
  v4[14] = v14;
  v4[15] = *(v14 + 64);
  v4[16] = swift_task_alloc();
  v6 = sub_C3234();
  v4[17] = v6;
  v15 = *(v6 - 8);
  v4[18] = v15;
  v16 = *(v15 + 64);
  v4[19] = swift_task_alloc();
  v4[20] = swift_task_alloc();
  v4[21] = swift_task_alloc();
  v7 = *(*(sub_21E8(&qword_EF7E0, &unk_C5FB0) - 8) + 64) + 15;
  v4[22] = swift_task_alloc();
  v8 = sub_C2C64();
  v4[23] = v8;
  v17 = *(v8 - 8);
  v4[24] = v17;
  v4[25] = *(v17 + 64);
  v4[26] = swift_task_alloc();
  v4[27] = swift_task_alloc();
  v9 = sub_C2CB4();
  v4[28] = v9;
  v18 = *(v9 - 8);
  v4[29] = v18;
  v19 = *(v18 + 64);
  v4[30] = swift_task_alloc();
  v4[31] = swift_task_alloc();
  v4[32] = swift_task_alloc();
  v10 = sub_C2CD4();
  v4[33] = v10;
  v20 = *(v10 - 8);
  v4[34] = v20;
  v11 = *(v20 + 64) + 15;
  v4[35] = swift_task_alloc();
  v4[5] = a1;
  v4[6] = a2;
  v4[2] = a3;
  v4[3] = a4;
  v12 = v4[4];

  return _swift_task_switch(sub_44124, 0);
}

uint64_t sub_44124()
{
  v109 = v0;
  v1 = *(v0 + 280);
  *(v0 + 32) = v0;
  sub_C2CC4();
  v96 = v98[35];
  v92 = v98[32];
  v93 = v98[31];
  v91 = v98[30];
  v94 = v98[28];
  v89 = v98[12];
  v87 = v98[11];
  v88 = v98[10];
  v90 = v98[29];
  sub_C2CA4();

  sub_C2C84();

  v95 = *(v90 + 8);
  v95(v91, v94);
  sub_C1D24();
  sub_C2C74();

  v95(v93, v94);
  v97 = sub_C2C94();
  v86 = v98[23];
  v85 = v98[22];
  v84 = v98[24];
  v95(v98[32], v98[28]);
  v98[8] = v97;
  v98[9] = v97;
  sub_21E8(&qword_EF7E8, &qword_C5FC0);
  sub_4A0A8();
  sub_C3444();
  if ((*(v84 + 48))(v85, 1, v86) == 1)
  {
    v7 = v98[20];
    v35 = v98[17];
    v40 = v98[16];
    v38 = v98[15];
    v41 = v98[13];
    v37 = v98[10];
    v34 = v98[18];
    v36 = v98[14];
    sub_4A130(v98[22]);
    v8 = sub_BF704();
    (*(v34 + 16))(v7, v8, v35);
    (*(v36 + 16))(v40, v37, v41);
    v39 = (*(v36 + 80) + 16) & ~*(v36 + 80);
    v42 = swift_allocObject();
    (*(v36 + 32))(v42 + v39, v40, v41);
    log = sub_C3224();
    v49 = sub_C3874();
    v44 = swift_allocObject();
    *(v44 + 16) = 32;
    v45 = swift_allocObject();
    *(v45 + 16) = 8;
    v43 = swift_allocObject();
    *(v43 + 16) = sub_2D6A0;
    *(v43 + 24) = v42;
    v46 = swift_allocObject();
    *(v46 + 16) = sub_7BBC;
    *(v46 + 24) = v43;
    sub_21E8(&unk_EEFA0, &unk_C50F0);
    sub_C3C64();
    v47 = v9;

    *v47 = sub_7B48;
    v47[1] = v44;

    v47[2] = sub_7B48;
    v47[3] = v45;

    v47[4] = sub_7C08;
    v47[5] = v46;
    sub_4E48();

    if (os_log_type_enabled(log, v49))
    {
      v31 = sub_C3954();
      sub_21E8(&qword_EE828, &qword_C5100);
      v32 = sub_5DD4(0);
      v33 = sub_5DD4(1);
      v99 = v31;
      v100 = v32;
      v101 = v33;
      sub_5E28(2, &v99);
      sub_5E28(1, &v99);
      v102 = sub_7B48;
      v103 = v44;
      sub_5E3C(&v102, &v99, &v100, &v101);
      v102 = sub_7B48;
      v103 = v45;
      sub_5E3C(&v102, &v99, &v100, &v101);
      v102 = sub_7C08;
      v103 = v46;
      sub_5E3C(&v102, &v99, &v100, &v101);
      _os_log_impl(&dword_0, log, v49, "No previously donated variable state found for %s", v31, 0xCu);
      sub_5E88(v32);
      sub_5E88(v33);
      sub_C3934();
    }

    else
    {
    }

    v28 = v98[35];
    v29 = v98[33];
    v25 = v98[20];
    v26 = v98[17];
    v27 = v98[34];
    v24 = v98[18];
    _objc_release(log);
    (*(v24 + 8))(v25, v26);
    sub_21E8(&qword_EF000, &qword_C5E10);
    sub_C3C64();
    v30 = sub_C3374();

    (*(v27 + 8))(v28, v29);
    v56 = v30;
  }

  else
  {
    v69 = v98[27];
    v73 = v98[26];
    v71 = v98[25];
    v74 = v98[23];
    v2 = v98[22];
    v3 = v98[21];
    v68 = v98[17];
    v70 = v98[24];
    v67 = v98[18];
    v75 = *(v70 + 32);
    v75();
    v4 = sub_BF704();
    (*(v67 + 16))(v3, v4, v68);
    (*(v70 + 16))(v73, v69, v74);
    v72 = (*(v70 + 80) + 16) & ~*(v70 + 80);
    v76 = swift_allocObject();
    (v75)(v76 + v72, v73, v74);
    oslog = sub_C3224();
    v83 = sub_C3874();
    v78 = swift_allocObject();
    *(v78 + 16) = 0;
    v79 = swift_allocObject();
    *(v79 + 16) = 8;
    v77 = swift_allocObject();
    *(v77 + 16) = sub_4A448;
    *(v77 + 24) = v76;
    v80 = swift_allocObject();
    *(v80 + 16) = sub_4A544;
    *(v80 + 24) = v77;
    sub_21E8(&unk_EEFA0, &unk_C50F0);
    sub_C3C64();
    v81 = v5;

    *v81 = sub_7B48;
    v81[1] = v78;

    v81[2] = sub_7B48;
    v81[3] = v79;

    v81[4] = sub_4A590;
    v81[5] = v80;
    sub_4E48();

    if (os_log_type_enabled(oslog, v83))
    {
      buf = sub_C3954();
      sub_21E8(&qword_EE828, &qword_C5100);
      v65 = sub_5DD4(0);
      v66 = sub_5DD4(0);
      v104 = buf;
      v105 = v65;
      v106 = v66;
      sub_5E28(0, &v104);
      sub_5E28(1, &v104);
      v107 = sub_7B48;
      v108 = v78;
      sub_5E3C(&v107, &v104, &v105, &v106);
      v107 = sub_7B48;
      v108 = v79;
      sub_5E3C(&v107, &v104, &v105, &v106);
      v107 = sub_4A590;
      v108 = v80;
      sub_5E3C(&v107, &v104, &v105, &v106);
      _os_log_impl(&dword_0, oslog, v83, "Retrieved donated state for %ld variable(s)", buf, 0xCu);
      sub_5E88(v65);
      sub_5E88(v66);
      sub_C3934();
    }

    else
    {
    }

    v6 = v98[27];
    v58 = v98[21];
    v59 = v98[17];
    v61 = v98[12];
    v60 = v98[11];
    v57 = v98[18];
    _objc_release(oslog);
    (*(v57 + 8))(v58, v59);
    v62 = sub_C2C34();
    v63 = sub_45A58(v62, v60, v61);
    v54 = v98[35];
    v55 = v98[33];
    v51 = v98[27];
    v52 = v98[23];
    v53 = v98[34];
    v50 = v98[24];

    (*(v50 + 8))(v51, v52);

    (*(v53 + 8))(v54, v55);
    v56 = v63;
  }

  v10 = v98[35];
  v14 = v98[32];
  v15 = v98[31];
  v16 = v98[30];
  v17 = v98[27];
  v18 = v98[26];
  v19 = v98[22];
  v20 = v98[21];
  v21 = v98[20];
  v22 = v98[19];
  v23 = v98[16];

  v11 = *(v98[4] + 8);
  v12 = v98[4];

  return v11(v56);
}

uint64_t sub_459F0()
{
  sub_C2C34();
  sub_C2D14();
  v1 = sub_C33A4();

  return v1;
}

uint64_t sub_45A58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v34 = a1;
  v28 = a2;
  v29 = a3;
  v52 = 0;
  v51 = 0;
  v49 = 0;
  v50 = 0;
  v48 = 0;
  v38 = __b;
  v40 = 40;
  memset(__b, 0, sizeof(__b));
  v45 = 0;
  v46 = 0;
  v36 = sub_C2D14();
  v24 = *(v36 - 8);
  v25 = v36 - 8;
  v26 = (*(v24 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v36);
  v27 = v12 - v26;
  v52 = v12 - v26;
  v30 = (*(*(sub_21E8(&qword_EF800, &qword_C5FC8) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = __chkstk_darwin(v34);
  v31 = (v12 - v30);
  v32 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = __chkstk_darwin(v3);
  v33 = (v12 - v32);
  v51 = v5;
  v49 = v6;
  v50 = v7;
  v35 = &type metadata for String;
  v37 = &protocol witness table for String;
  v48 = sub_C3314();

  v39 = &v53;
  sub_C3354();
  v8 = v41;
  memcpy(v38, v39, v40);
  for (i = v8; ; i = v19)
  {
    v22 = i;
    sub_21E8(&qword_EF808, &qword_C5FD0);
    sub_C33D4();
    sub_4A67C(v31, v33);
    v23 = sub_21E8(&qword_EF810, &unk_C5FD8);
    if ((*(*(v23 - 8) + 48))(v33, 1) == 1)
    {
      sub_49790(__b);
      v13 = &v48;
      v14 = v48;

      sub_1D7C8(v13);
      return v14;
    }

    v17 = *v33;
    v18 = *(v33 + 1);
    v9 = v33 + *(v23 + 48);
    v45 = v17;
    v46 = v18;
    (*(v24 + 32))(v27, v9, v36);
    v10 = v22;

    sub_46D68(v27, v28, v29, v44);
    v19 = v10;
    v20 = v18;
    v21 = v10;
    if (v10)
    {
      break;
    }

    v15 = v43;
    v43[0] = v17;
    v43[1] = v18;
    sub_21E8(&qword_EEFF8, &unk_C5AC0);
    sub_C33F4();
    (*(v24 + 8))(v27, v36);
  }

  v12[2] = v21;
  v12[1] = v20;

  (*(v24 + 8))(v27, v36);

  sub_49790(__b);
  sub_1D7C8(&v48);
  return v16;
}

uint64_t sub_45FF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v109 = &v166;
  v119 = a3;
  v121 = a2;
  v120 = a1;
  v111 = a4;
  v116 = 0;
  v165 = 0;
  v164 = 0;
  v163 = 0;
  v150 = 0;
  v149 = 0;
  v148 = 0;
  v147 = 0u;
  v146 = 0u;
  v139 = 0uLL;
  v136 = 0;
  v135 = 0;
  v134[1] = 0;
  v134[0] = 0;
  v131 = 0;
  v130 = 0;
  v129 = 0;
  v128 = 0;
  v127 = 0;
  v112 = sub_C3234();
  v113 = *(v112 - 8);
  v114 = v113;
  v4 = *(v113 + 64);
  __chkstk_darwin(v112 - 8);
  v115 = v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = (*(*(sub_21E8(&qword_EF7C8, &qword_C5F90) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v116);
  v118 = v28 - v117;
  v122 = sub_C2D14();
  v123 = *(v122 - 8);
  v124 = v123;
  v6 = *(v123 + 64);
  v7 = __chkstk_darwin(v120);
  v125 = v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v165 = v7;
  v163 = v9;
  v164 = v10;
  v126 = v162;
  sub_9268(v7, v162);
  if (swift_dynamicCast())
  {
    v107 = v161;
    v108 = 0;
  }

  else
  {
    v107 = 0;
    v108 = 1;
  }

  v106 = v107;
  if (v108)
  {
    v103 = v160;
    sub_9268(v120, v160);
    if (swift_dynamicCast())
    {
      v101 = v159;
      v102 = 0;
    }

    else
    {
      v101 = 0;
      v102 = 1;
    }

    v100 = v101;
    if (v102)
    {
      v98 = v158;
      sub_9268(v120, v158);
      if (swift_dynamicCast())
      {
        v97 = v157[39];
      }

      else
      {
        v97 = 2;
      }

      v96 = v97;
      if (v97 == 2)
      {
        v94 = v157;
        sub_9268(v120, v157);
        if (swift_dynamicCast())
        {
          v92 = v156[4];
          v93 = v156[5];
        }

        else
        {
          v92 = 0;
          v93 = 0;
        }

        v90 = v93;
        v91 = v92;
        if (v93)
        {
          v88 = v91;
          v89 = v90;
          v87 = v90;
          v86 = v91;
          v130 = v91;
          v131 = v90;

          v15 = v111;
          v16 = v124;
          v17 = v87;
          *v111 = v86;
          v15[1] = v17;
          (*(v16 + 104))();

          result = v110;
          v104 = v110;
        }

        else
        {
          v84 = v156;
          sub_9268(v120, v156);
          v85 = sub_21E8(&qword_EF818, &qword_C5FE8);
          if (swift_dynamicCast())
          {
            v83 = v155[4];
          }

          else
          {
            v83 = 0;
          }

          v82 = v83;
          if (v83)
          {
            v81 = v82;
            v79 = v82;
            v136 = v82;
            v135 = sub_C3324();

            v133[4] = v79;
            sub_4A860();
            sub_C3824();
            for (i = v110; ; i = v73)
            {
              v78 = i;
              sub_21E8(&qword_EF830, &qword_C5FF0);
              sub_C3B44();
              if (!v133[3])
              {
                sub_1D7C8(v134);
                v72 = v135;

                v19 = v124;
                *v111 = v72;
                (*(v19 + 104))();
                sub_1D7C8(&v135);

                result = v78;
                v104 = v78;
                return result;
              }

              v74 = v78;
              v75 = v132;
              sub_49814(v133, v132);
              v18 = v74;
              sub_45FF4(v75, v121, v119);
              v76 = v18;
              v77 = v18;
              if (v18)
              {
                break;
              }

              v73 = 0;
              sub_21E8(&qword_EF838, &qword_C5FF8);
              sub_C3724();
              sub_2560(v132);
            }

            v30 = v77;
            sub_2560(v132);
            sub_1D7C8(v134);
            sub_1D7C8(&v135);

            result = v30;
            v33 = v30;
          }

          else
          {
            v71 = v155;
            sub_9268(v120, v155);
            sub_21E8(&qword_EEFF8, &unk_C5AC0);
            if (swift_dynamicCast())
            {
              v70 = v154[1];
            }

            else
            {
              v70 = 0;
            }

            v69 = v70;
            if (v70)
            {
              v68 = v69;
              v64 = v69;
              v150 = v69;
              v65 = &type metadata for String;
              v66 = &protocol witness table for String;
              v149 = sub_C3314();

              sub_C3354();
              v20 = *v109;
              v21 = v109[1];
              v148 = v167;
              v147 = v21;
              v146 = v20;
              for (j = v110; ; j = v54)
              {
                v63 = j;
                sub_21E8(&qword_EF7D0, &qword_C5F98);
                sub_C33D4();
                v145[1] = v143;
                v145[0] = v142;
                v144 = v141;
                if (!*(&v141 + 1))
                {
                  sub_49790(&v146);
                  v53 = v149;

                  v23 = v124;
                  *v111 = v53;
                  (*(v23 + 104))();
                  sub_1D7C8(&v149);

                  result = v63;
                  v104 = v63;
                  return result;
                }

                v56 = v63;
                v57 = *(&v144 + 1);
                v59 = *(&v144 + 1);
                v55 = v144;
                v139 = v144;
                v58 = v140;
                sub_49814(v145, v140);
                v22 = v56;

                sub_45FF4(v58, v121, v119);
                v60 = v22;
                v61 = v59;
                v62 = v22;
                if (v22)
                {
                  break;
                }

                v54 = 0;
                (*(v124 + 56))(v118, 0, 1, v122);
                v137 = v55;
                v138 = v59;
                sub_21E8(&qword_EF7D8, &qword_C5FA0);
                sub_C33F4();
                sub_2560(v140);
              }

              v29 = v62;
              v28[1] = v61;

              sub_2560(v140);

              sub_49790(&v146);
              sub_1D7C8(&v149);

              return v29;
            }

            else
            {
              v24 = v115;
              v25 = sub_BF704();
              (*(v114 + 16))(v24, v25, v112);
              v51 = sub_C3224();
              v48 = v51;
              v50 = sub_C3884();
              v49 = v50;
              sub_21E8(&unk_EEFA0, &unk_C50F0);
              v52 = sub_C3C64();
              if (os_log_type_enabled(v51, v50))
              {
                v47 = v110;
                v39 = sub_C3954();
                v35 = v39;
                v36 = sub_21E8(&qword_EE828, &qword_C5100);
                v37 = 0;
                v40 = sub_5DD4(0);
                v38 = v40;
                v41 = sub_5DD4(v37);
                v154[0] = v39;
                v153 = v40;
                v152 = v41;
                v42 = 0;
                v43 = v154;
                sub_5E28(0, v154);
                sub_5E28(v42, v43);
                v151 = v52;
                v44 = v28;
                __chkstk_darwin(v28);
                v45 = &v28[-6];
                v28[-4] = v26;
                v28[-3] = &v153;
                v28[-2] = &v152;
                v46 = sub_21E8(&unk_EEFB0, qword_C5110);
                sub_8128();
                v27 = v47;
                sub_C3654();
                if (v27)
                {
                  __break(1u);
                }

                else
                {
                  _os_log_impl(&dword_0, v48, v49, "Unable to convert [String: Any] to [String: JSONValue]", v35, 2u);
                  v34 = 0;
                  sub_5E88(v38);
                  sub_5E88(v41);
                  sub_C3934();
                }
              }

              else
              {
              }

              (*(v114 + 8))(v115, v112);
              sub_4A7E4();
              v31 = 0;
              v32 = swift_allocError();
              swift_willThrow();
              result = v32;
              v33 = v32;
            }
          }
        }
      }

      else
      {
        v95 = v96;
        v14 = v124;
        v129 = v96 & 1;
        *v111 = v96 & 1;
        (*(v14 + 104))();
        result = v110;
        v104 = v110;
      }
    }

    else
    {
      v99 = v100;
      v13 = v124;
      v128 = v100;
      *v111 = v100;
      (*(v13 + 104))();
      result = v110;
      v104 = v110;
    }
  }

  else
  {
    v105 = v106;
    v11 = v124;
    v127 = v106;
    *v111 = v106;
    (*(v11 + 104))();
    result = v110;
    v104 = v110;
  }

  return result;
}