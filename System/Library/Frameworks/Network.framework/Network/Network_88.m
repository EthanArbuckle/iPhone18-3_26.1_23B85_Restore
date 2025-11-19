void sub_18200CE20(unint64_t a1)
{
  if (sub_182005A28(0, a1))
  {
    if (qword_1EA837250 != -1)
    {
      swift_once();
    }

    if (byte_1EA843430 != 1 || !__nwlog_is_datapath_logging_enabled())
    {
      goto LABEL_6;
    }

    v1 = 0x8000000182BD8640;
    if (qword_1EA837248 == -1)
    {
LABEL_17:
      v4 = sub_182AD2698();
      __swift_project_value_buffer(v4, qword_1EA843418);
      v5 = swift_allocObject();
      *(v5 + 16) = "timerFired(connection:)";
      *(v5 + 24) = 23;
      *(v5 + 32) = 2;
      v6 = swift_allocObject();
      *(v6 + 16) = sub_181F8C724;
      *(v6 + 24) = v5;
      v7 = swift_allocObject();
      *(v7 + 16) = 1564427099;
      *(v7 + 24) = 0xE400000000000000;
      v8 = swift_allocObject();
      *(v8 + 16) = 0xD00000000000002ALL;
      *(v8 + 24) = v1;
      v9 = sub_182AD2678();
      v10 = sub_182AD38A8();
      v40 = swift_allocObject();
      *(v40 + 16) = 32;
      v42 = swift_allocObject();
      *(v42 + 16) = 8;
      v11 = swift_allocObject();
      *(v11 + 16) = sub_181F8C71C;
      *(v11 + 24) = v6;
      v12 = swift_allocObject();
      *(v12 + 16) = sub_181F8C718;
      *(v12 + 24) = v11;
      v44 = swift_allocObject();
      *(v44 + 16) = 32;
      v46 = swift_allocObject();
      *(v46 + 16) = 8;
      v13 = swift_allocObject();
      *(v13 + 16) = sub_181F8C720;
      *(v13 + 24) = v7;
      v14 = swift_allocObject();
      *(v14 + 16) = sub_181F8C718;
      *(v14 + 24) = v13;
      v48 = swift_allocObject();
      *(v48 + 16) = 32;
      v50 = swift_allocObject();
      *(v50 + 16) = 8;
      v15 = swift_allocObject();
      *(v15 + 16) = sub_181F8C720;
      *(v15 + 24) = v8;
      v16 = swift_allocObject();
      *(v16 + 16) = sub_181F8C718;
      *(v16 + 24) = v15;
      v17 = v9;
      if (os_log_type_enabled(v9, v10))
      {
        v18 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        v54 = v19;
        v55 = 0;
        *v18 = 770;
        v38 = v19;
        v56 = v18 + 2;
        v52 = sub_181F8C728;
        v53 = v40;
        sub_181F73AE0(&v52, &v56, &v55, &v54);

        v52 = sub_181F8C728;
        v53 = v42;
        sub_181F73AE0(&v52, &v56, &v55, &v54);

        v52 = sub_181F8C714;
        v53 = v12;
        sub_181F73AE0(&v52, &v56, &v55, &v54);

        v52 = sub_181F8C728;
        v53 = v44;
        sub_181F73AE0(&v52, &v56, &v55, &v54);

        v52 = sub_181F8C728;
        v53 = v46;
        sub_181F73AE0(&v52, &v56, &v55, &v54);

        v52 = sub_181F8C714;
        v53 = v14;
        sub_181F73AE0(&v52, &v56, &v55, &v54);

        v52 = sub_181F8C728;
        v53 = v48;
        sub_181F73AE0(&v52, &v56, &v55, &v54);

        v52 = sub_181F8C728;
        v53 = v50;
        sub_181F73AE0(&v52, &v56, &v55, &v54);

        v52 = sub_181F8C714;
        v53 = v16;
        sub_181F73AE0(&v52, &v56, &v55, &v54);

        _os_log_impl(&dword_181A37000, v17, v10, "%s %s %s", v18, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1865DF520](v38, -1, -1);
        MEMORY[0x1865DF520](v18, -1, -1);
      }

      else
      {
      }

LABEL_6:
      sub_182004888(0, 1, 0, 0, a1);
      goto LABEL_13;
    }

LABEL_27:
    swift_once();
    goto LABEL_17;
  }

  if (qword_1EA837250 != -1)
  {
    swift_once();
  }

  if (byte_1EA843430 == 1 && __nwlog_is_datapath_logging_enabled())
  {
    if (qword_1EA837248 != -1)
    {
      swift_once();
    }

    v20 = sub_182AD2698();
    __swift_project_value_buffer(v20, qword_1EA843418);
    v21 = swift_allocObject();
    *(v21 + 16) = "timerFired(connection:)";
    *(v21 + 24) = 23;
    *(v21 + 32) = 2;
    v22 = swift_allocObject();
    *(v22 + 16) = sub_181F8C724;
    *(v22 + 24) = v21;
    v23 = swift_allocObject();
    *(v23 + 16) = 1564427099;
    *(v23 + 24) = 0xE400000000000000;
    v24 = swift_allocObject();
    *(v24 + 16) = 0xD000000000000019;
    *(v24 + 24) = 0x8000000182BD8670;
    v25 = sub_182AD2678();
    v26 = sub_182AD38A8();
    v41 = swift_allocObject();
    *(v41 + 16) = 32;
    v1 = 8;
    v43 = swift_allocObject();
    *(v43 + 16) = 8;
    v27 = swift_allocObject();
    *(v27 + 16) = sub_181F8C71C;
    *(v27 + 24) = v22;
    v28 = swift_allocObject();
    *(v28 + 16) = sub_181F8C718;
    *(v28 + 24) = v27;
    v45 = swift_allocObject();
    *(v45 + 16) = 32;
    v47 = swift_allocObject();
    *(v47 + 16) = 8;
    v29 = swift_allocObject();
    *(v29 + 16) = sub_181F8C720;
    *(v29 + 24) = v23;
    v30 = swift_allocObject();
    *(v30 + 16) = sub_181F8C718;
    *(v30 + 24) = v29;
    v49 = swift_allocObject();
    *(v49 + 16) = 32;
    v51 = swift_allocObject();
    *(v51 + 16) = 8;
    v31 = swift_allocObject();
    *(v31 + 16) = sub_181F8C720;
    *(v31 + 24) = v24;
    v32 = swift_allocObject();
    *(v32 + 16) = sub_181F8C718;
    *(v32 + 24) = v31;
    v33 = v26;
    v34 = v26;
    v35 = v25;
    if (os_log_type_enabled(v25, v34))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v54 = v37;
      v55 = 0;
      *v36 = 770;
      v39 = v37;
      v56 = v36 + 2;
      v52 = sub_181F8C728;
      v53 = v41;
      sub_181F73AE0(&v52, &v56, &v55, &v54);

      v52 = sub_181F8C728;
      v53 = v43;
      sub_181F73AE0(&v52, &v56, &v55, &v54);

      v52 = sub_181F8C714;
      v53 = v28;
      sub_181F73AE0(&v52, &v56, &v55, &v54);

      v52 = sub_181F8C728;
      v53 = v45;
      sub_181F73AE0(&v52, &v56, &v55, &v54);

      v52 = sub_181F8C728;
      v53 = v47;
      sub_181F73AE0(&v52, &v56, &v55, &v54);

      v52 = sub_181F8C714;
      v53 = v30;
      sub_181F73AE0(&v52, &v56, &v55, &v54);

      v52 = sub_181F8C728;
      v53 = v49;
      sub_181F73AE0(&v52, &v56, &v55, &v54);

      v52 = sub_181F8C728;
      v53 = v51;
      sub_181F73AE0(&v52, &v56, &v55, &v54);

      v52 = sub_181F8C714;
      v53 = v32;
      sub_181F73AE0(&v52, &v56, &v55, &v54);

      _os_log_impl(&dword_181A37000, v35, v33, "%s %s %s", v36, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1865DF520](v39, -1, -1);
      MEMORY[0x1865DF520](v36, -1, -1);
    }

    else
    {
    }

    v3 = *(a1 + 952);
    if (v3)
    {
      goto LABEL_12;
    }

LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v3 = *(a1 + 952);
  if (!v3)
  {
    goto LABEL_26;
  }

LABEL_12:

  sub_182005B4C(a1, v3);

LABEL_13:

  sub_181FF7470(a1);
}

uint64_t sub_18200DBFC(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v4 = v1;
  v6 = v5;
  v8 = v7;
  v9 = v3[3];
  v316 = v3[2];
  v317 = v9;
  v318 = *(v3 + 64);
  v10 = *v3;
  v315 = v3[1];
  v314 = v10;
  if (v11)
  {
    *(v1 + 484) = 1;
    v12 = 2;
  }

  else
  {
    v12 = *(v3 + 9);
    if (v12 == 2)
    {
      *(v1 + 484) = 1;
    }

    else if (v12 == 1)
    {
      *(v1 + 483) = 1;
    }
  }

  v13 = mach_continuous_time();
  if (qword_1EA837030 != -1)
  {
    v118 = v13;
    swift_once();
    v13 = v118;
  }

  v14 = qword_1EA8387E8;
  if (is_mul_ok(v13, qword_1EA8387E8))
  {
    if (qword_1EA837038 == -1)
    {
      goto LABEL_11;
    }
  }

  else
  {
    __break(1u);
  }

  v119 = v13;
  swift_once();
  v13 = v119;
LABEL_11:
  v15 = qword_1EA8387F0;
  if (qword_1EA8387F0)
  {
    if (qword_1EA837010 == -1)
    {
      goto LABEL_13;
    }
  }

  else
  {
    __break(1u);
  }

  v120 = v13;
  swift_once();
  v13 = v120;
LABEL_13:
  v16 = qword_1EA8431F0;
  if (!qword_1EA8431F0)
  {
    __break(1u);
    goto LABEL_112;
  }

  v17 = v13 * v14 / v15 / qword_1EA8431F0;
  if (v12)
  {
    swift_beginAccess();
    if (v12 == 1)
    {
      v18 = (v4 + 176);
    }

    else
    {
      v18 = (v4 + 328);
    }
  }

  else
  {
    swift_beginAccess();
    v18 = (v4 + 24);
  }

  sub_18200F5F4(v18, &v314, v17);
  swift_endAccess();
  v19 = *(v8 + 912);
  v20 = *(v8 + 880);
  v296 = *(v8 + 896);
  v297 = v19;
  v21 = *(v8 + 912);
  v298 = *(v8 + 928);
  v22 = *(v8 + 848);
  v23 = *(v8 + 816);
  v292 = *(v8 + 832);
  v293 = v22;
  v24 = *(v8 + 848);
  v25 = *(v8 + 880);
  v294 = *(v8 + 864);
  v295 = v25;
  v26 = *(v8 + 784);
  v27 = *(v8 + 752);
  v288 = *(v8 + 768);
  v289 = v26;
  v28 = *(v8 + 784);
  v29 = *(v8 + 816);
  v290 = *(v8 + 800);
  v291 = v29;
  v30 = *(v8 + 752);
  v286 = *(v8 + 736);
  v287 = v30;
  v310 = v296;
  v311 = v21;
  v312 = *(v8 + 928);
  v306 = v292;
  v307 = v24;
  v308 = v294;
  v309 = v20;
  v302 = v288;
  v303 = v28;
  v304 = v290;
  v305 = v23;
  v299 = *(v8 + 944);
  v313 = *(v8 + 944);
  v300 = v286;
  v301 = v27;
  if (sub_182015D6C(&v300) == 1)
  {
    goto LABEL_132;
  }

  v149 = v16;
  v284[10] = v310;
  v284[11] = v311;
  v284[12] = v312;
  v285 = v313;
  v284[6] = v306;
  v284[7] = v307;
  v284[8] = v308;
  v284[9] = v309;
  v284[2] = v302;
  v284[3] = v303;
  v284[4] = v304;
  v284[5] = v305;
  v284[0] = v300;
  v284[1] = v301;
  if (sub_182015D80(v284) == 1)
  {
    v31 = nullsub_41(v284);
    p_dst = &__dst;
    memmove(&__dst, v31, 0x48uLL);
    *(&v323 + 1) = 0;
    memmove(&v324, (v31 + 80), 0x50uLL);
    sub_182015D88(&__dst);
  }

  else
  {
    v32 = nullsub_41(v284);
    p_dst = &__dst;
    memmove(&__dst, v32, 0x48uLL);
    *(&v323 + 1) = 0;
    memmove(&v324, (v32 + 80), 0x80uLL);
    sub_18201A508(&__dst);
  }

  v280 = v329;
  v281 = v330;
  v282 = v331;
  v283 = v332;
  v276 = v325;
  v277 = v326;
  v278 = v327;
  v279 = v328;
  v272 = v321;
  v273 = v322;
  v274 = v323;
  v275 = v324;
  v270 = __dst;
  v271 = v320;
  v262 = v329;
  v263 = v330;
  v264 = v331;
  v265 = v332;
  v258 = v325;
  v259 = v326;
  v260 = v327;
  v261 = v328;
  v254 = v321;
  v255 = v322;
  v256 = v323;
  v257 = v324;
  v252 = __dst;
  v253 = v320;
  nullsub_41(&v252);
  v33 = *(v8 + 912);
  v266[10] = *(v8 + 896);
  v266[11] = v33;
  v266[12] = *(v8 + 928);
  v267 = *(v8 + 944);
  v34 = *(v8 + 848);
  v266[6] = *(v8 + 832);
  v266[7] = v34;
  v35 = *(v8 + 880);
  v266[8] = *(v8 + 864);
  v266[9] = v35;
  v36 = *(v8 + 784);
  v266[2] = *(v8 + 768);
  v266[3] = v36;
  v37 = *(v8 + 816);
  v266[4] = *(v8 + 800);
  v266[5] = v37;
  v38 = *(v8 + 752);
  v266[0] = *(v8 + 736);
  v266[1] = v38;
  v39 = v263;
  *(v8 + 896) = v262;
  *(v8 + 912) = v39;
  *(v8 + 928) = v264;
  *(v8 + 944) = v265;
  v40 = v259;
  *(v8 + 832) = v258;
  *(v8 + 848) = v40;
  v41 = v261;
  *(v8 + 864) = v260;
  *(v8 + 880) = v41;
  v42 = v255;
  *(v8 + 768) = v254;
  *(v8 + 784) = v42;
  v43 = v257;
  *(v8 + 800) = v256;
  *(v8 + 816) = v43;
  v44 = v253;
  *(v8 + 736) = v252;
  *(v8 + 752) = v44;
  v268[10] = v296;
  v268[11] = v297;
  v268[12] = v298;
  v269 = v299;
  v268[6] = v292;
  v268[7] = v293;
  v268[8] = v294;
  v268[9] = v295;
  v268[2] = v288;
  v268[3] = v289;
  v268[4] = v290;
  v268[5] = v291;
  v268[0] = v286;
  v268[1] = v287;
  sub_182015D94(v268, &__dst);
  sub_182015DF0(v266);
  v365[2] = v316;
  v365[3] = v317;
  v366 = v318;
  v365[0] = v314;
  v365[1] = v315;
  sub_181FFAD8C(v365, v8, v17, v6);
  if (v12)
  {
    if (v12 != 1)
    {
      goto LABEL_31;
    }

    swift_beginAccess();
    v45 = *(v4 + 200);
    v46 = *(v4 + 320);
    swift_beginAccess();
    v47 = *(v46 + 24);
    v48 = v47[3];
    if (!v48)
    {
LABEL_40:
      v57 = 0;
      p_dst = 0;
      goto LABEL_41;
    }

    if (v48 >= 1)
    {
      goto LABEL_33;
    }

    __break(1u);
  }

  swift_beginAccess();
  v45 = *(v4 + 48);
  v46 = *(v4 + 168);
  swift_beginAccess();
  v47 = *(v46 + 24);
  v49 = v47[3];
  if (!v49)
  {
    goto LABEL_40;
  }

  if (v49 >= 1)
  {
    goto LABEL_33;
  }

  __break(1u);
LABEL_31:
  swift_beginAccess();
  v45 = *(v4 + 352);
  v46 = *(v4 + 472);
  swift_beginAccess();
  v47 = *(v46 + 24);
  v50 = v47[3];
  if (!v50)
  {
    goto LABEL_40;
  }

  if (v50 < 1)
  {
    __break(1u);
    goto LABEL_114;
  }

LABEL_33:
  v51 = v47[4];
  v52 = v47[2];
  if (v51 < v52)
  {
    v52 = 0;
  }

  v53 = v47[v51 - v52 + 5];
  swift_beginAccess();
  v54 = *(v46 + 16);
  if (!*(v54 + 16) || (v55 = sub_18225BD68(v53), (v56 & 1) == 0))
  {
    swift_endAccess();
    goto LABEL_40;
  }

  p_dst = *(*(v54 + 56) + 8 * v55);
  swift_endAccess();

  swift_beginAccess();
  if (*(p_dst + 128) >= v45)
  {
    v57 = 0;
  }

  else
  {

    v57 = sub_182004888(v12, 0, v8, v17, v6);
  }

LABEL_41:
  v58 = *(v8 + 912);
  v59 = *(v8 + 880);
  v234 = *(v8 + 896);
  v235 = v58;
  v60 = *(v8 + 912);
  v236 = *(v8 + 928);
  v61 = *(v8 + 848);
  v62 = *(v8 + 816);
  v230 = *(v8 + 832);
  v231 = v61;
  v63 = *(v8 + 848);
  v64 = *(v8 + 880);
  v232 = *(v8 + 864);
  v233 = v64;
  v65 = *(v8 + 784);
  v66 = *(v8 + 752);
  v226 = *(v8 + 768);
  v227 = v65;
  v67 = *(v8 + 784);
  v68 = *(v8 + 816);
  v228 = *(v8 + 800);
  v229 = v68;
  v69 = *(v8 + 752);
  v224 = *(v8 + 736);
  v225 = v69;
  v248 = v234;
  v249 = v60;
  v250 = *(v8 + 928);
  v244 = v230;
  v245 = v63;
  v246 = v232;
  v247 = v59;
  v240 = v226;
  v241 = v67;
  v242 = v228;
  v243 = v62;
  v237 = *(v8 + 944);
  v251 = *(v8 + 944);
  v238 = v224;
  v239 = v66;
  if (sub_182015D6C(&v238) == 1)
  {
LABEL_133:
    __break(1u);
    goto LABEL_134;
  }

  swift_beginAccess();
  v70 = *(v8 + 200);
  v71 = *(v8 + 232);
  v363 = *(v8 + 216);
  v364[0] = v71;
  *(v364 + 9) = *(v8 + 241);
  v72 = *(v8 + 168);
  v359 = *(v8 + 152);
  v360 = v72;
  v73 = *(v8 + 184);
  v362 = v70;
  v361 = v73;
  v74 = *(v8 + 1072);
  v222[1] = v239;
  v222[0] = v238;
  v222[5] = v243;
  v222[4] = v242;
  v222[3] = v241;
  v222[2] = v240;
  v222[9] = v247;
  v222[8] = v246;
  v222[7] = v245;
  v222[6] = v244;
  v223 = v251;
  v222[12] = v250;
  v222[11] = v249;
  v222[10] = v248;
  if (sub_182015D80(v222) == 1)
  {
    v75 = nullsub_41(v222);
    v200 = v75[6];
    v201 = v75[7];
    v202 = v75[8];
    v203 = v75[9];
    v196 = v75[2];
    v197 = v75[3];
    v198 = v75[4];
    v199 = v75[5];
    v194 = *v75;
    v195 = v75[1];
    sub_18201A394(&v224, &__dst);
    sub_18201A394(&v224, &__dst);
    sub_18201A404(&v359, &__dst);
    sub_182177834(&v359, v74, v57 & 1);
    sub_182015DF0(&v224);
    sub_18201A460(&v359);
    v325 = v200;
    v326 = v201;
    v327 = v202;
    v328 = v203;
    v321 = v196;
    v322 = v197;
    v323 = v198;
    v324 = v199;
    __dst = v194;
    v320 = v195;
    sub_182015D88(&__dst);
    goto LABEL_51;
  }

  v76 = nullsub_41(v222);
  v189 = *(v76 + 144);
  v190 = *(v76 + 160);
  v191 = *(v76 + 176);
  v192 = *(v76 + 192);
  v185 = *(v76 + 80);
  v186 = *(v76 + 96);
  v187 = *(v76 + 112);
  v188 = *(v76 + 128);
  v181 = *(v76 + 16);
  v182 = *(v76 + 32);
  v183 = *(v76 + 48);
  v184 = *(v76 + 64);
  v180 = *v76;
  if ((v57 & 1) != 0 || (v77 = *(v76 + 72)) == 0)
  {
    v329 = v234;
    v330 = v235;
    v331 = v236;
    v332 = v237;
    v325 = v230;
    v326 = v231;
    v327 = v232;
    v328 = v233;
    v321 = v226;
    v322 = v227;
    v323 = v228;
    v324 = v229;
    __dst = v224;
    v320 = v225;
    sub_182015D94(&__dst, &v194);
    goto LABEL_50;
  }

  v144 = v12;
  v146 = p_dst;
  v147 = v17;
  v78 = v6;
  v6 = v76;
  p_dst = *(v76 + 96);
  v79 = v360;
  sub_18201A394(&v224, &__dst);
  sub_18201A394(&v224, &__dst);
  sub_18201A404(&v359, &__dst);
  v80 = mach_continuous_time();
  if (!is_mul_ok(v80, v14))
  {
LABEL_114:
    __break(1u);
    goto LABEL_115;
  }

  v81 = v80 * v14 / v15 / v149;
  if (p_dst)
  {
    v82 = *(v6 + 104);
    v6 = v78;
    v83 = v79;
  }

  else
  {
    if (__CFADD__(v81, v79))
    {
      __break(1u);
      goto LABEL_128;
    }

    v83 = v79;
    v82 = 0;
    if (v81 + v79 <= 1)
    {
      p_dst = 1;
    }

    else
    {
      p_dst = v81 + v79;
    }

    *&v186 = p_dst;
    v6 = v78;
  }

  v112 = __CFADD__(v82, v77);
  v113 = v82 + v77;
  v17 = v147;
  if (v112)
  {
    __break(1u);
    goto LABEL_119;
  }

  *(&v186 + 1) = v113;
  v112 = v81 >= p_dst;
  p_dst = v81 - p_dst;
  v12 = v144;
  if (p_dst == 0 || !v112)
  {
    goto LABEL_93;
  }

  if (v83 < p_dst)
  {
    sub_182015A90(0);
    if ((v83 & 0x8000000000000000) == 0)
    {
      if (p_dst > 2 * v83)
      {
        sub_182015A90(0);
      }

      goto LABEL_82;
    }

LABEL_128:
    __break(1u);
    goto LABEL_129;
  }

LABEL_82:
  sub_182015A90(*(&v186 + 1));
  v114 = *(v185 + 16);
  if (v114 < 3)
  {
    __break(1u);
LABEL_123:
    __break(1u);
    goto LABEL_124;
  }

  v114 = *(&v186 + 1);
  if (*(&v186 + 1) <= *(v185 + 32))
  {
    v114 = *(v185 + 32);
  }

  if (v114 <= *(v185 + 40))
  {
    v114 = *(v185 + 40);
  }

  v115 = *(v185 + 48);
  if (v114 > v115)
  {
    v115 = v114;
  }

  *(&v185 + 1) = v115;
  v116 = v81 + v83;
  if (__CFADD__(v81, v83))
  {
    goto LABEL_123;
  }

  if (v116 <= 1)
  {
    v116 = 1;
  }

  v186 = v116;
LABEL_93:
  v356 = v190;
  v357 = v191;
  v358 = v192;
  v352 = v186;
  v353 = v187;
  v355 = v189;
  v354 = v188;
  v348 = v182;
  v349 = v183;
  v351 = v185;
  v350 = v184;
  v347 = v181;
  v346 = v180;
  if (sub_182011CE0())
  {
    p_dst = v146;
    if (v346 < v349)
    {
      v114 = 10 * v74;
      if ((v74 * 10) >> 64 == (10 * v74) >> 63)
      {
        if ((v114 & 0x8000000000000000) == 0)
        {
          if (v114 >= *(&v350 + 1))
          {
            v114 = *(&v350 + 1);
          }

          v117 = v346 + v114;
          if (!__CFADD__(v346, v114))
          {
            *&v180 = v346 + v114;
            goto LABEL_104;
          }

          goto LABEL_131;
        }

LABEL_130:
        __break(1u);
LABEL_131:
        __break(1u);
LABEL_132:
        __break(1u);
        goto LABEL_133;
      }

LABEL_129:
      __break(1u);
      goto LABEL_130;
    }

    sub_182283E2C(*(&v350 + 1), v83, v74);
    if (v74 + 0x4000000000000000 >= 0)
    {
      v117 = v180;
LABEL_104:
      if ((v74 & 0x8000000000000000) == 0)
      {
        v114 = 2 * v74;
        if (v117 >= 2 * v74)
        {
LABEL_106:
          v343 = v190;
          v344 = v191;
          v345 = v192;
          v339 = v186;
          v340 = v187;
          v342 = v189;
          v341 = v188;
          v335 = v182;
          v336 = v183;
          v338 = v185;
          v337 = v184;
          v334 = v181;
          v333 = v180;
          sub_182015E58();
          sub_182015DF0(&v224);
          sub_18201A460(&v359);
          goto LABEL_50;
        }

LABEL_126:
        *&v180 = v114;
        goto LABEL_106;
      }

LABEL_125:
      __break(1u);
      goto LABEL_126;
    }

LABEL_124:
    __break(1u);
    goto LABEL_125;
  }

  sub_182015DF0(&v224);
  sub_18201A460(&v359);
  *(&v184 + 1) = 0;
  p_dst = v146;
LABEL_50:
  v329 = v190;
  v330 = v191;
  v331 = v192;
  v325 = v186;
  v326 = v187;
  v328 = v189;
  v327 = v188;
  v321 = v182;
  v322 = v183;
  v324 = v185;
  v323 = v184;
  v320 = v181;
  __dst = v180;
  sub_18201A508(&__dst);
LABEL_51:
  v218 = v329;
  v219 = v330;
  v220 = v331;
  v221 = v332;
  v214 = v325;
  v215 = v326;
  v216 = v327;
  v217 = v328;
  v210 = v321;
  v211 = v322;
  v212 = v323;
  v213 = v324;
  v208 = __dst;
  v209 = v320;
  v190 = v329;
  v191 = v330;
  v192 = v331;
  v193 = v332;
  v186 = v325;
  v187 = v326;
  v188 = v327;
  v189 = v328;
  v182 = v321;
  v183 = v322;
  v184 = v323;
  v185 = v324;
  v180 = __dst;
  v181 = v320;
  nullsub_41(&v180);
  v84 = *(v8 + 912);
  v204 = *(v8 + 896);
  v205 = v84;
  v206 = *(v8 + 928);
  v207 = *(v8 + 944);
  v85 = *(v8 + 848);
  v200 = *(v8 + 832);
  v201 = v85;
  v86 = *(v8 + 880);
  v202 = *(v8 + 864);
  v203 = v86;
  v87 = *(v8 + 768);
  v197 = *(v8 + 784);
  v88 = *(v8 + 816);
  v198 = *(v8 + 800);
  v199 = v88;
  v89 = *(v8 + 752);
  v194 = *(v8 + 736);
  v195 = v89;
  v196 = v87;
  v90 = v191;
  *(v8 + 896) = v190;
  *(v8 + 912) = v90;
  *(v8 + 928) = v192;
  *(v8 + 944) = v193;
  v91 = v187;
  *(v8 + 832) = v186;
  *(v8 + 848) = v91;
  v92 = v189;
  *(v8 + 864) = v188;
  *(v8 + 880) = v92;
  v93 = v183;
  *(v8 + 768) = v182;
  *(v8 + 784) = v93;
  v94 = v185;
  *(v8 + 800) = v184;
  *(v8 + 816) = v94;
  v95 = v181;
  *(v8 + 736) = v180;
  *(v8 + 752) = v95;
  sub_182015DF0(&v194);
  swift_beginAccess();
  sub_18201BC10(v4 + 24, v17, v8);
  swift_endAccess();
  swift_beginAccess();
  sub_18201BC10(v4 + 176, v17, v8);
  swift_endAccess();
  swift_beginAccess();
  sub_18201BC10(v4 + 328, v17, v8);
  swift_endAccess();
  if (v12 == 2)
  {
    v96 = *(v8 + 912);
    v97 = *(v8 + 880);
    v161 = *(v8 + 896);
    v162 = v96;
    v98 = *(v8 + 912);
    v163 = *(v8 + 928);
    v99 = *(v8 + 848);
    v100 = *(v8 + 816);
    v157 = *(v8 + 832);
    v158 = v99;
    v101 = *(v8 + 848);
    v102 = *(v8 + 880);
    v159 = *(v8 + 864);
    v160 = v102;
    v103 = *(v8 + 784);
    v104 = *(v8 + 752);
    v153 = *(v8 + 768);
    v154 = v103;
    v105 = *(v8 + 784);
    v106 = *(v8 + 816);
    v155 = *(v8 + 800);
    v156 = v106;
    v107 = *(v8 + 752);
    v152[0] = *(v8 + 736);
    v152[1] = v107;
    v175 = v161;
    v176 = v98;
    v177 = *(v8 + 928);
    v171 = v157;
    v172 = v101;
    v173 = v159;
    v174 = v97;
    v167 = v153;
    v168 = v105;
    v169 = v155;
    v170 = v100;
    v164 = *(v8 + 944);
    v178 = *(v8 + 944);
    v165 = v152[0];
    v166 = v104;
    if (sub_182015D6C(&v165) == 1)
    {
      goto LABEL_135;
    }

    v329 = v175;
    v330 = v176;
    v331 = v177;
    v332 = v178;
    v325 = v171;
    v326 = v172;
    v327 = v173;
    v328 = v174;
    v321 = v167;
    v322 = v168;
    v323 = v169;
    v324 = v170;
    __dst = v165;
    v320 = v166;

    sub_18201A394(v152, v151);

    sub_182296F34(&__dst, v8);

    sub_182015DF0(v152);
  }

  if (*(v6 + 952))
  {

    v109 = sub_182047340(v108, 0, 0);

    if (v109)
    {
      if (qword_1EA837250 == -1)
      {
LABEL_57:
        if (byte_1EA843430 != 1 || !__nwlog_is_datapath_logging_enabled())
        {
          goto LABEL_59;
        }

LABEL_115:
        v139 = v6;
        v146 = p_dst;
        p_dst = 0x8000000182BD7B20;
        if (qword_1EA837248 != -1)
        {
          goto LABEL_136;
        }

        goto LABEL_116;
      }

LABEL_112:
      swift_once();
      goto LABEL_57;
    }
  }

LABEL_59:
  if (*(v6 + 1024))
  {
    goto LABEL_63;
  }

LABEL_60:
  if ((*(v6 + 1125) & 1) != 0 || (*(v4 + 483) & 1) != 0 || *(v4 + 484) == 1)
  {
LABEL_63:
    while ((*(v8 + 1016) & 1) != 0)
    {
LABEL_134:
      __break(1u);
LABEL_135:
      __break(1u);
LABEL_136:
      swift_once();
LABEL_116:
      v121 = sub_182AD2698();
      __swift_project_value_buffer(v121, qword_1EA843418);
      v122 = swift_allocObject();
      *(v122 + 16) = "receivedAck(ack:ackedPath:isMultipath:connection:)";
      *(v122 + 24) = 50;
      *(v122 + 32) = 2;
      v123 = swift_allocObject();
      *(v123 + 16) = sub_181F8C724;
      *(v123 + 24) = v122;
      v124 = swift_allocObject();
      *(v124 + 16) = 1564427099;
      *(v124 + 24) = 0xE400000000000000;
      v125 = swift_allocObject();
      *(v125 + 16) = 0xD000000000000016;
      *(v125 + 24) = p_dst;
      v126 = sub_182AD2678();
      v127 = sub_182AD38A8();
      v141 = swift_allocObject();
      *(v141 + 16) = 32;
      v142 = swift_allocObject();
      *(v142 + 16) = 8;
      v128 = swift_allocObject();
      *(v128 + 16) = sub_181F8C71C;
      *(v128 + 24) = v123;
      v129 = swift_allocObject();
      *(v129 + 16) = sub_181F8C718;
      *(v129 + 24) = v128;
      v140 = swift_allocObject();
      *(v140 + 16) = 32;
      v143 = swift_allocObject();
      *(v143 + 16) = 8;
      v130 = swift_allocObject();
      *(v130 + 16) = sub_181F8C720;
      *(v130 + 24) = v124;
      v131 = swift_allocObject();
      *(v131 + 16) = sub_181F8C718;
      *(v131 + 24) = v130;
      v145 = swift_allocObject();
      *(v145 + 16) = 32;
      v148 = swift_allocObject();
      *(v148 + 16) = 8;
      v132 = swift_allocObject();
      *(v132 + 16) = sub_181F8C720;
      *(v132 + 24) = v125;
      v133 = swift_allocObject();
      *(v133 + 16) = sub_181F8C718;
      *(v133 + 24) = v132;
      v150 = v133;
      v134 = v127;
      v135 = v127;
      v6 = v126;
      if (os_log_type_enabled(v126, v135))
      {
        v136 = swift_slowAlloc();
        v137 = swift_slowAlloc();
        v151[0] = 0;
        *v136 = 770;
        v138 = v137;
        v179 = v137;
        *&v152[0] = v136 + 2;
        *&v165 = sub_181F8C728;
        *(&v165 + 1) = v141;
        sub_181F73AE0(&v165, v152, v151, &v179);

        *&v165 = sub_181F8C728;
        *(&v165 + 1) = v142;
        sub_181F73AE0(&v165, v152, v151, &v179);

        *&v165 = sub_181F8C714;
        *(&v165 + 1) = v129;
        sub_181F73AE0(&v165, v152, v151, &v179);

        *&v165 = sub_181F8C728;
        *(&v165 + 1) = v140;
        sub_181F73AE0(&v165, v152, v151, &v179);

        *&v165 = sub_181F8C274;
        *(&v165 + 1) = v143;
        sub_181F73AE0(&v165, v152, v151, &v179);

        *&v165 = sub_181F8C714;
        *(&v165 + 1) = v131;
        sub_181F73AE0(&v165, v152, v151, &v179);

        *&v165 = sub_181F8C728;
        *(&v165 + 1) = v145;
        sub_181F73AE0(&v165, v152, v151, &v179);

        *&v165 = sub_181F8C728;
        *(&v165 + 1) = v148;
        sub_181F73AE0(&v165, v152, v151, &v179);

        *&v165 = sub_181F8C714;
        *(&v165 + 1) = v150;
        sub_181F73AE0(&v165, v152, v151, &v179);

        _os_log_impl(&dword_181A37000, v6, v134, "%s %s %s", v136, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1865DF520](v138, -1, -1);
        MEMORY[0x1865DF520](v136, -1, -1);
      }

      else
      {
LABEL_119:
      }

      p_dst = v146;
      v6 = v139;
      if ((*(v139 + 1024) & 1) == 0)
      {
        goto LABEL_60;
      }
    }

    *(v8 + 992) = 0;
  }

  sub_181FF7470(v6);
  *(v6 + 1123) = 1;
  v110 = *(v8 + 984);
  if (v110 && (*(v110 + 128) & 0x20) != 0)
  {
    *(v110 + 128) &= ~0x20u;

    sub_1822BBC3C();
  }

  v240 = v316;
  v241 = v317;
  LOBYTE(v242) = v318;
  v239 = v315;
  v238 = v314;
  return sub_18201A4B4(&v238);
}

void sub_18200F5F4(__int128 *a1, uint64_t a2, unint64_t a3)
{
  v3 = *(a2 + 32);
  if (v3 < 0)
  {
    __break(1u);
LABEL_37:
    swift_once();
    goto LABEL_14;
  }

  v7 = *(a1 + 3);
  if (v3 <= v7)
  {
    v8 = *(a1 + 3);
  }

  else
  {
    v8 = *(a2 + 32);
  }

  if (v7 == -1)
  {
    v9 = *(a2 + 32);
  }

  else
  {
    v9 = v8;
  }

  *(a1 + 3) = v9;
  v10 = a1[7];
  v104 = a1[6];
  v105 = v10;
  v106 = a1[8];
  v107 = *(a1 + 18);
  v11 = a1[3];
  v100 = a1[2];
  v101 = v11;
  v12 = a1[5];
  v102 = a1[4];
  v103 = v12;
  v13 = a1[1];
  v98 = *a1;
  v99 = v13;
  v14 = sub_181FF3DD0(v9);
  if (v14)
  {
    v15 = v14;
    swift_beginAccess();
    if (*(v15 + 152))
    {
      if (*(v15 + 144))
      {
        if (*(a2 + 9) == 2)
        {
          v16 = *(a2 + 40);
        }

        else
        {
          v54 = qword_1EA837250;

          if (v54 != -1)
          {
            swift_once();
          }

          if (byte_1EA843430 == 1 && __nwlog_is_datapath_logging_enabled())
          {
            sub_182AD3BA8();

            v91 = 0xD00000000000001CLL;
            v92 = 0x8000000182BD8500;
            v97 = *(a2 + 40);
            v57 = sub_182AD41B8();
            MEMORY[0x1865D9CA0](v57);

            if (qword_1EA837248 != -1)
            {
              swift_once();
            }

            v58 = sub_182AD2698();
            __swift_project_value_buffer(v58, qword_1EA843418);
            v59 = swift_allocObject();
            *(v59 + 16) = "receivedAck(ack:ackedPath:isMultipath:connection:)";
            *(v59 + 24) = 50;
            *(v59 + 32) = 2;
            v60 = swift_allocObject();
            *(v60 + 16) = sub_181F8C724;
            *(v60 + 24) = v59;
            v61 = swift_allocObject();
            *(v61 + 16) = 1564427099;
            *(v61 + 24) = 0xE400000000000000;
            v62 = swift_allocObject();
            *(v62 + 16) = 0xD00000000000001CLL;
            *(v62 + 24) = 0x8000000182BD8500;

            v71 = sub_182AD2678();
            v82 = sub_182AD38A8();
            v72 = swift_allocObject();
            *(v72 + 16) = 32;
            v73 = swift_allocObject();
            *(v73 + 16) = 8;
            v63 = swift_allocObject();
            *(v63 + 16) = sub_181F8C71C;
            *(v63 + 24) = v60;
            v64 = swift_allocObject();
            *(v64 + 16) = sub_181F8C718;
            *(v64 + 24) = v63;
            v75 = swift_allocObject();
            *(v75 + 16) = 32;
            v77 = swift_allocObject();
            *(v77 + 16) = 8;
            v65 = swift_allocObject();
            *(v65 + 16) = sub_181F8C720;
            *(v65 + 24) = v61;
            v66 = swift_allocObject();
            *(v66 + 16) = sub_181F8C718;
            *(v66 + 24) = v65;
            v79 = swift_allocObject();
            *(v79 + 16) = 32;
            v85 = swift_allocObject();
            *(v85 + 16) = 8;
            v67 = swift_allocObject();
            *(v67 + 16) = sub_181F8C720;
            *(v67 + 24) = v62;
            v68 = swift_allocObject();
            *(v68 + 16) = sub_181F8C718;
            *(v68 + 24) = v67;
            v88 = v68;
            if (os_log_type_enabled(v71, v82))
            {
              v69 = swift_slowAlloc();
              v70 = swift_slowAlloc();
              *v69 = 770;
              v93 = v70;
              v96 = 0;
              v97 = v69 + 2;
              v91 = sub_181F8C728;
              v92 = v72;
              sub_181F73AE0(&v91, &v97, &v96, &v93);

              v91 = sub_181F8C728;
              v92 = v73;
              sub_181F73AE0(&v91, &v97, &v96, &v93);

              v91 = sub_181F8C714;
              v92 = v64;
              sub_181F73AE0(&v91, &v97, &v96, &v93);

              v91 = sub_181F8C728;
              v92 = v75;
              sub_181F73AE0(&v91, &v97, &v96, &v93);

              v91 = sub_181F8C728;
              v92 = v77;
              sub_181F73AE0(&v91, &v97, &v96, &v93);

              v91 = sub_181F8C714;
              v92 = v66;
              sub_181F73AE0(&v91, &v97, &v96, &v93);

              v91 = sub_181F8C728;
              v92 = v79;
              sub_181F73AE0(&v91, &v97, &v96, &v93);

              v91 = sub_181F8C728;
              v92 = v85;
              sub_181F73AE0(&v91, &v97, &v96, &v93);

              v91 = sub_181F8C714;
              v92 = v88;
              sub_181F73AE0(&v91, &v97, &v96, &v93);

              _os_log_impl(&dword_181A37000, v71, v82, "%s %s %s", v69, 0x20u);
              swift_arrayDestroy();
              MEMORY[0x1865DF520](v70, -1, -1);
              MEMORY[0x1865DF520](v69, -1, -1);
            }

            else
            {
            }
          }

          v16 = 0;
          *(a2 + 40) = 0;
        }

        v55 = *(v15 + 192);
        swift_beginAccess();
        sub_182164AFC(v55, a3, v16);
        swift_endAccess();
      }
    }

    else
    {
      if (qword_1EA837250 != -1)
      {
        swift_once();
      }

      if (byte_1EA843430 == 1 && __nwlog_is_datapath_logging_enabled())
      {
        if (qword_1EA837248 != -1)
        {
          swift_once();
        }

        v36 = sub_182AD2698();
        __swift_project_value_buffer(v36, qword_1EA843418);
        v37 = swift_allocObject();
        *(v37 + 16) = "receivedAck(ack:ackedPath:isMultipath:connection:)";
        *(v37 + 24) = 50;
        *(v37 + 32) = 2;
        v38 = swift_allocObject();
        *(v38 + 16) = sub_181F8C724;
        *(v38 + 24) = v37;
        v39 = swift_allocObject();
        *(v39 + 16) = 1564427099;
        *(v39 + 24) = 0xE400000000000000;
        v40 = swift_allocObject();
        *(v40 + 16) = 0xD00000000000004DLL;
        *(v40 + 24) = 0x8000000182BD84B0;
        v41 = sub_182AD2678();
        v42 = sub_182AD38A8();
        v76 = swift_allocObject();
        *(v76 + 16) = 32;
        v78 = swift_allocObject();
        *(v78 + 16) = 8;
        v43 = swift_allocObject();
        *(v43 + 16) = sub_181F8C71C;
        *(v43 + 24) = v38;
        v44 = swift_allocObject();
        *(v44 + 16) = sub_181F8C718;
        *(v44 + 24) = v43;
        v81 = swift_allocObject();
        *(v81 + 16) = 32;
        v84 = swift_allocObject();
        *(v84 + 16) = 8;
        v45 = swift_allocObject();
        *(v45 + 16) = sub_181F8C720;
        *(v45 + 24) = v39;
        v46 = swift_allocObject();
        *(v46 + 16) = sub_181F8C718;
        *(v46 + 24) = v45;
        v87 = swift_allocObject();
        *(v87 + 16) = 32;
        osloga = swift_allocObject();
        LOBYTE(osloga[2].isa) = 8;
        v47 = swift_allocObject();
        *(v47 + 16) = sub_181F8C720;
        *(v47 + 24) = v40;
        v48 = swift_allocObject();
        *(v48 + 16) = sub_181F8C718;
        *(v48 + 24) = v47;
        v49 = v42;
        v50 = v42;
        v51 = v41;
        if (os_log_type_enabled(v41, v50))
        {
          v52 = swift_slowAlloc();
          v53 = swift_slowAlloc();
          *v52 = 770;
          v74 = v53;
          v93 = v53;
          v96 = 0;
          v97 = v52 + 2;
          v91 = sub_181F8C728;
          v92 = v76;
          sub_181F73AE0(&v91, &v97, &v96, &v93);

          v91 = sub_181F8C728;
          v92 = v78;
          sub_181F73AE0(&v91, &v97, &v96, &v93);

          v91 = sub_181F8C714;
          v92 = v44;
          sub_181F73AE0(&v91, &v97, &v96, &v93);

          v91 = sub_181F8C728;
          v92 = v81;
          sub_181F73AE0(&v91, &v97, &v96, &v93);

          v91 = sub_181F8C728;
          v92 = v84;
          sub_181F73AE0(&v91, &v97, &v96, &v93);

          v91 = sub_181F8C714;
          v92 = v46;
          sub_181F73AE0(&v91, &v97, &v96, &v93);

          v91 = sub_181F8C728;
          v92 = v87;
          sub_181F73AE0(&v91, &v97, &v96, &v93);

          v91 = sub_181F8C728;
          v92 = osloga;
          sub_181F73AE0(&v91, &v97, &v96, &v93);

          v91 = sub_181F8C714;
          v92 = v48;
          sub_181F73AE0(&v91, &v97, &v96, &v93);

          _os_log_impl(&dword_181A37000, v51, v49, "%s %s %s", v52, 0x20u);
          swift_arrayDestroy();
          MEMORY[0x1865DF520](v74, -1, -1);
          MEMORY[0x1865DF520](v52, -1, -1);
        }

        else
        {
        }
      }
    }

    v56 = *(v15 + 192);

    *(a1 + 4) = v56;
    return;
  }

  if (qword_1EA837250 != -1)
  {
    goto LABEL_37;
  }

LABEL_14:
  if (byte_1EA843430 == 1 && __nwlog_is_datapath_logging_enabled())
  {
    if (qword_1EA837248 != -1)
    {
      swift_once();
    }

    v17 = sub_182AD2698();
    __swift_project_value_buffer(v17, qword_1EA843418);
    v18 = swift_allocObject();
    *(v18 + 16) = "receivedAck(ack:ackedPath:isMultipath:connection:)";
    *(v18 + 24) = 50;
    *(v18 + 32) = 2;
    v19 = swift_allocObject();
    *(v19 + 16) = sub_181F8C724;
    *(v19 + 24) = v18;
    v20 = swift_allocObject();
    *(v20 + 16) = 1564427099;
    *(v20 + 24) = 0xE400000000000000;
    v21 = swift_allocObject();
    *(v21 + 16) = 0xD000000000000048;
    *(v21 + 24) = 0x8000000182BD8460;
    oslog = sub_182AD2678();
    v22 = sub_182AD38A8();
    v23 = swift_allocObject();
    *(v23 + 16) = 32;
    v24 = swift_allocObject();
    *(v24 + 16) = 8;
    v25 = swift_allocObject();
    *(v25 + 16) = sub_181F8C71C;
    *(v25 + 24) = v19;
    v26 = swift_allocObject();
    *(v26 + 16) = sub_181F8C718;
    *(v26 + 24) = v25;
    v83 = swift_allocObject();
    *(v83 + 16) = 32;
    v86 = swift_allocObject();
    *(v86 + 16) = 8;
    v27 = swift_allocObject();
    *(v27 + 16) = sub_181F8C720;
    *(v27 + 24) = v20;
    v28 = swift_allocObject();
    *(v28 + 16) = sub_181F8C718;
    *(v28 + 24) = v27;
    v29 = swift_allocObject();
    *(v29 + 16) = 32;
    v30 = swift_allocObject();
    *(v30 + 16) = 8;
    v31 = swift_allocObject();
    *(v31 + 16) = sub_181F8C720;
    *(v31 + 24) = v21;
    v32 = swift_allocObject();
    *(v32 + 16) = sub_181F8C718;
    *(v32 + 24) = v31;
    v33 = v22;
    if (os_log_type_enabled(oslog, v22))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v96 = v35;
      v97 = 0;
      *v34 = 770;
      v80 = v35;
      v91 = (v34 + 2);
      v94 = sub_181F8C728;
      v95 = v23;
      sub_181F73AE0(&v94, &v91, &v97, &v96);

      v94 = sub_181F8C728;
      v95 = v24;
      sub_181F73AE0(&v94, &v91, &v97, &v96);

      v94 = sub_181F8C714;
      v95 = v26;
      sub_181F73AE0(&v94, &v91, &v97, &v96);

      v94 = sub_181F8C728;
      v95 = v83;
      sub_181F73AE0(&v94, &v91, &v97, &v96);

      v94 = sub_181F8C728;
      v95 = v86;
      sub_181F73AE0(&v94, &v91, &v97, &v96);

      v94 = sub_181F8C714;
      v95 = v28;
      sub_181F73AE0(&v94, &v91, &v97, &v96);

      v94 = sub_181F8C728;
      v95 = v29;
      sub_181F73AE0(&v94, &v91, &v97, &v96);

      v94 = sub_181F8C728;
      v95 = v30;
      sub_181F73AE0(&v94, &v91, &v97, &v96);

      v94 = sub_181F8C714;
      v95 = v32;
      sub_181F73AE0(&v94, &v91, &v97, &v96);

      _os_log_impl(&dword_181A37000, oslog, v33, "%s %s %s", v34, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1865DF520](v80, -1, -1);
      MEMORY[0x1865DF520](v34, -1, -1);
    }

    else
    {
    }
  }
}

uint64_t sub_182010C20()
{

  v1 = *(v0 + 136);
  v14[6] = *(v0 + 120);
  v14[7] = v1;
  v14[8] = *(v0 + 152);
  v15 = *(v0 + 168);
  v2 = *(v0 + 72);
  v14[2] = *(v0 + 56);
  v14[3] = v2;
  v3 = *(v0 + 104);
  v14[4] = *(v0 + 88);
  v14[5] = v3;
  v4 = *(v0 + 40);
  v14[0] = *(v0 + 24);
  v14[1] = v4;
  sub_182010E08(v14);
  v5 = *(v0 + 288);
  v16[6] = *(v0 + 272);
  v16[7] = v5;
  v16[8] = *(v0 + 304);
  v17 = *(v0 + 320);
  v6 = *(v0 + 224);
  v16[2] = *(v0 + 208);
  v16[3] = v6;
  v7 = *(v0 + 256);
  v16[4] = *(v0 + 240);
  v16[5] = v7;
  v8 = *(v0 + 192);
  v16[0] = *(v0 + 176);
  v16[1] = v8;
  sub_182010E08(v16);
  v9 = *(v0 + 440);
  v18[6] = *(v0 + 424);
  v18[7] = v9;
  v18[8] = *(v0 + 456);
  v19 = *(v0 + 472);
  v10 = *(v0 + 376);
  v18[2] = *(v0 + 360);
  v18[3] = v10;
  v11 = *(v0 + 408);
  v18[4] = *(v0 + 392);
  v18[5] = v11;
  v12 = *(v0 + 344);
  v18[0] = *(v0 + 328);
  v18[1] = v12;
  sub_182010E08(v18);
  return swift_deallocClassInstance();
}

uint64_t sub_182010D4C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 152))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 56);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_182010D94(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 152) = 1;
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
      *(result + 56) = (a2 - 1);
      return result;
    }

    *(result + 152) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_182010E38(unint64_t a1, unint64_t a2)
{
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_1820152EC(a1);
  if (*(v2 + 64) < a2)
  {
    v5 = *(v2 + 72);
    v6 = __CFADD__(v5, a1);
    v7 = v5 + a1;
    if (!v6)
    {
      *(v2 + 72) = v7;
      return;
    }

    goto LABEL_10;
  }

  if (qword_1EA837250 != -1)
  {
LABEL_11:
    swift_once();
  }

  if ((byte_1EA843430 & 1) != 0 && __nwlog_is_datapath_logging_enabled())
  {
    if (qword_1EA837248 != -1)
    {
      swift_once();
    }

    v8 = sub_182AD2698();
    __swift_project_value_buffer(v8, qword_1EA843418);
    v9 = swift_allocObject();
    *(v9 + 16) = "packetsAcked(bytesAcked:sentTime:)";
    *(v9 + 24) = 34;
    *(v9 + 32) = 2;
    v10 = swift_allocObject();
    *(v10 + 16) = sub_181F8C724;
    *(v10 + 24) = v9;
    v11 = swift_allocObject();
    *(v11 + 16) = 1564427099;
    *(v11 + 24) = 0xE400000000000000;
    v12 = swift_allocObject();
    *(v12 + 16) = 0xD000000000000027;
    *(v12 + 24) = 0x8000000182BD8330;
    oslog = sub_182AD2678();
    v13 = sub_182AD38A8();
    v14 = swift_allocObject();
    *(v14 + 16) = 32;
    v15 = swift_allocObject();
    *(v15 + 16) = 8;
    v16 = swift_allocObject();
    *(v16 + 16) = sub_181F8C71C;
    *(v16 + 24) = v10;
    v17 = swift_allocObject();
    *(v17 + 16) = sub_181F8C718;
    *(v17 + 24) = v16;
    v28 = swift_allocObject();
    *(v28 + 16) = 32;
    v29 = swift_allocObject();
    *(v29 + 16) = 8;
    v18 = swift_allocObject();
    *(v18 + 16) = sub_181F8C720;
    *(v18 + 24) = v11;
    v19 = swift_allocObject();
    *(v19 + 16) = sub_181F8C718;
    *(v19 + 24) = v18;
    v20 = swift_allocObject();
    *(v20 + 16) = 32;
    v21 = swift_allocObject();
    *(v21 + 16) = 8;
    v22 = swift_allocObject();
    *(v22 + 16) = sub_181F8C720;
    *(v22 + 24) = v12;
    v23 = swift_allocObject();
    *(v23 + 16) = sub_181F8C718;
    *(v23 + 24) = v22;
    v24 = v13;
    if (os_log_type_enabled(oslog, v13))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v33 = v26;
      v34 = 0;
      *v25 = 770;
      v27 = v26;
      v35 = v25 + 2;
      v31 = sub_181F8C728;
      v32 = v14;
      sub_181F73AE0(&v31, &v35, &v34, &v33);

      v31 = sub_181F8C728;
      v32 = v15;
      sub_181F73AE0(&v31, &v35, &v34, &v33);

      v31 = sub_181F8C714;
      v32 = v17;
      sub_181F73AE0(&v31, &v35, &v34, &v33);

      v31 = sub_181F8C728;
      v32 = v28;
      sub_181F73AE0(&v31, &v35, &v34, &v33);

      v31 = sub_181F8C728;
      v32 = v29;
      sub_181F73AE0(&v31, &v35, &v34, &v33);

      v31 = sub_181F8C714;
      v32 = v19;
      sub_181F73AE0(&v31, &v35, &v34, &v33);

      v31 = sub_181F8C728;
      v32 = v20;
      sub_181F73AE0(&v31, &v35, &v34, &v33);

      v31 = sub_181F8C728;
      v32 = v21;
      sub_181F73AE0(&v31, &v35, &v34, &v33);

      v31 = sub_181F8C714;
      v32 = v23;
      sub_181F73AE0(&v31, &v35, &v34, &v33);

      _os_log_impl(&dword_181A37000, oslog, v24, "%s %s %s", v25, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1865DF520](v27, -1, -1);
      MEMORY[0x1865DF520](v25, -1, -1);
    }

    else
    {
    }
  }
}

void sub_18201158C(unint64_t a1, unint64_t a2)
{
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_182014B48(a1);
  if (*(v2 + 64) < a2)
  {
    v5 = *(v2 + 72);
    v6 = __CFADD__(v5, a1);
    v7 = v5 + a1;
    if (!v6)
    {
      *(v2 + 72) = v7;
      return;
    }

    goto LABEL_10;
  }

  if (qword_1EA837250 != -1)
  {
LABEL_11:
    swift_once();
  }

  if ((byte_1EA843430 & 1) != 0 && __nwlog_is_datapath_logging_enabled())
  {
    if (qword_1EA837248 != -1)
    {
      swift_once();
    }

    v8 = sub_182AD2698();
    __swift_project_value_buffer(v8, qword_1EA843418);
    v9 = swift_allocObject();
    *(v9 + 16) = "packetsAcked(bytesAcked:sentTime:)";
    *(v9 + 24) = 34;
    *(v9 + 32) = 2;
    v10 = swift_allocObject();
    *(v10 + 16) = sub_181F8C724;
    *(v10 + 24) = v9;
    v11 = swift_allocObject();
    *(v11 + 16) = 1564427099;
    *(v11 + 24) = 0xE400000000000000;
    v12 = swift_allocObject();
    *(v12 + 16) = 0xD000000000000027;
    *(v12 + 24) = 0x8000000182BD8330;
    oslog = sub_182AD2678();
    v13 = sub_182AD38A8();
    v14 = swift_allocObject();
    *(v14 + 16) = 32;
    v15 = swift_allocObject();
    *(v15 + 16) = 8;
    v16 = swift_allocObject();
    *(v16 + 16) = sub_181F8C71C;
    *(v16 + 24) = v10;
    v17 = swift_allocObject();
    *(v17 + 16) = sub_181F8C718;
    *(v17 + 24) = v16;
    v28 = swift_allocObject();
    *(v28 + 16) = 32;
    v29 = swift_allocObject();
    *(v29 + 16) = 8;
    v18 = swift_allocObject();
    *(v18 + 16) = sub_181F8C720;
    *(v18 + 24) = v11;
    v19 = swift_allocObject();
    *(v19 + 16) = sub_181F8C718;
    *(v19 + 24) = v18;
    v20 = swift_allocObject();
    *(v20 + 16) = 32;
    v21 = swift_allocObject();
    *(v21 + 16) = 8;
    v22 = swift_allocObject();
    *(v22 + 16) = sub_181F8C720;
    *(v22 + 24) = v12;
    v23 = swift_allocObject();
    *(v23 + 16) = sub_181F8C718;
    *(v23 + 24) = v22;
    v24 = v13;
    if (os_log_type_enabled(oslog, v13))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v33 = v26;
      v34 = 0;
      *v25 = 770;
      v27 = v26;
      v35 = v25 + 2;
      v31 = sub_181F8C728;
      v32 = v14;
      sub_181F73AE0(&v31, &v35, &v34, &v33);

      v31 = sub_181F8C728;
      v32 = v15;
      sub_181F73AE0(&v31, &v35, &v34, &v33);

      v31 = sub_181F8C714;
      v32 = v17;
      sub_181F73AE0(&v31, &v35, &v34, &v33);

      v31 = sub_181F8C728;
      v32 = v28;
      sub_181F73AE0(&v31, &v35, &v34, &v33);

      v31 = sub_181F8C728;
      v32 = v29;
      sub_181F73AE0(&v31, &v35, &v34, &v33);

      v31 = sub_181F8C714;
      v32 = v19;
      sub_181F73AE0(&v31, &v35, &v34, &v33);

      v31 = sub_181F8C728;
      v32 = v20;
      sub_181F73AE0(&v31, &v35, &v34, &v33);

      v31 = sub_181F8C728;
      v32 = v21;
      sub_181F73AE0(&v31, &v35, &v34, &v33);

      v31 = sub_181F8C714;
      v32 = v23;
      sub_181F73AE0(&v31, &v35, &v34, &v33);

      _os_log_impl(&dword_181A37000, oslog, v24, "%s %s %s", v25, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1865DF520](v27, -1, -1);
      MEMORY[0x1865DF520](v25, -1, -1);
    }

    else
    {
    }
  }
}

uint64_t sub_182011CE0()
{
  v1 = v0[11];
  if (!v1)
  {
    return 1;
  }

  v2 = *v0;
  if (*v0 < v0[6])
  {
    if (v1 < v2 >> 2)
    {
      if (qword_1EA837250 != -1)
      {
        swift_once();
      }

      if (byte_1EA843430 == 1)
      {
        result = __nwlog_is_datapath_logging_enabled();
        if (result)
        {
          sub_182AD3BA8();
          MEMORY[0x1865D9CA0](0xD000000000000038, 0x8000000182BD7F20);
          v4 = sub_182AD41B8();
          MEMORY[0x1865D9CA0](v4);

          MEMORY[0x1865D9CA0](0xD000000000000013, 0x8000000182BD7F60);
          v56 = v2;
          v5 = sub_182AD41B8();
          MEMORY[0x1865D9CA0](v5);

          if (qword_1EA837248 != -1)
          {
            swift_once();
          }

          v6 = sub_182AD2698();
          __swift_project_value_buffer(v6, qword_1EA843418);
          v7 = swift_allocObject();
          *(v7 + 16) = "congestionWindowValidated";
          *(v7 + 24) = 25;
          *(v7 + 32) = 2;
          v8 = swift_allocObject();
          *(v8 + 16) = sub_181F8C724;
          *(v8 + 24) = v7;
          v9 = swift_allocObject();
          *(v9 + 16) = 1564427099;
          *(v9 + 24) = 0xE400000000000000;
          v10 = swift_allocObject();
          *(v10 + 16) = 0;
          *(v10 + 24) = 0xE000000000000000;

          v11 = sub_182AD2678();
          v12 = sub_182AD38A8();
          v13 = swift_allocObject();
          *(v13 + 16) = 32;
          v46 = swift_allocObject();
          *(v46 + 16) = 8;
          v14 = swift_allocObject();
          *(v14 + 16) = sub_181F8C71C;
          *(v14 + 24) = v8;
          v15 = swift_allocObject();
          *(v15 + 16) = sub_181F8C718;
          *(v15 + 24) = v14;
          v16 = swift_allocObject();
          *(v16 + 16) = 32;
          v48 = swift_allocObject();
          *(v48 + 16) = 8;
          v17 = swift_allocObject();
          *(v17 + 16) = sub_181F8C720;
          *(v17 + 24) = v9;
          v18 = swift_allocObject();
          *(v18 + 16) = sub_181F8C718;
          *(v18 + 24) = v17;
          v50 = swift_allocObject();
          *(v50 + 16) = 32;
          v52 = swift_allocObject();
          *(v52 + 16) = 8;
          v19 = swift_allocObject();
          *(v19 + 16) = sub_181F8C720;
          *(v19 + 24) = v10;
          v20 = swift_allocObject();
          *(v20 + 16) = sub_181F8C718;
          *(v20 + 24) = v19;
          v44 = v12;
          v21 = v11;
          if (os_log_type_enabled(v11, v12))
          {
            v22 = swift_slowAlloc();
            v23 = swift_slowAlloc();
            v54 = v23;
            v55 = 0;
            *v22 = 770;
            v56 = v22 + 2;
            v57 = sub_181F8C728;
            v58 = v13;
            sub_181F73AE0(&v57, &v56, &v55, &v54);

            v57 = sub_181F8C728;
            v58 = v46;
            sub_181F73AE0(&v57, &v56, &v55, &v54);

            v57 = sub_181F8C714;
            v58 = v15;
            sub_181F73AE0(&v57, &v56, &v55, &v54);

            v57 = sub_181F8C728;
            v58 = v16;
            sub_181F73AE0(&v57, &v56, &v55, &v54);

            v57 = sub_181F8C728;
            v58 = v48;
            sub_181F73AE0(&v57, &v56, &v55, &v54);

            v57 = sub_181F8C714;
            v58 = v18;
            sub_181F73AE0(&v57, &v56, &v55, &v54);

            v57 = sub_181F8C728;
            v58 = v50;
            sub_181F73AE0(&v57, &v56, &v55, &v54);

            v57 = sub_181F8C728;
            v58 = v52;
            sub_181F73AE0(&v57, &v56, &v55, &v54);

            v57 = sub_181F8C714;
            v58 = v20;
            sub_181F73AE0(&v57, &v56, &v55, &v54);

            v24 = v21;
            _os_log_impl(&dword_181A37000, v21, v44, "%s %s %s", v22, 0x20u);
            swift_arrayDestroy();
            v25 = v23;
LABEL_21:
            MEMORY[0x1865DF520](v25, -1, -1);
            MEMORY[0x1865DF520](v22, -1, -1);

            return 0;
          }

LABEL_25:

          return 0;
        }

        return result;
      }

      return 0;
    }

    return 1;
  }

  if (v1 >= v2 >> 1)
  {
    return 1;
  }

  if (qword_1EA837250 != -1)
  {
    swift_once();
  }

  if (byte_1EA843430 != 1)
  {
    return 0;
  }

  result = __nwlog_is_datapath_logging_enabled();
  if (result)
  {
    sub_182AD3BA8();
    MEMORY[0x1865D9CA0](0xD000000000000042, 0x8000000182BD7EB0);
    v26 = sub_182AD41B8();
    MEMORY[0x1865D9CA0](v26);

    MEMORY[0x1865D9CA0](0xD000000000000014, 0x8000000182BD7F00);
    v56 = v2;
    v27 = sub_182AD41B8();
    MEMORY[0x1865D9CA0](v27);

    MEMORY[0x1865D9CA0](32, 0xE100000000000000);
    if (qword_1EA837248 != -1)
    {
      swift_once();
    }

    v28 = sub_182AD2698();
    __swift_project_value_buffer(v28, qword_1EA843418);
    v29 = swift_allocObject();
    *(v29 + 16) = "congestionWindowValidated";
    *(v29 + 24) = 25;
    *(v29 + 32) = 2;
    v30 = swift_allocObject();
    *(v30 + 16) = sub_181F8C724;
    *(v30 + 24) = v29;
    v31 = swift_allocObject();
    *(v31 + 16) = 1564427099;
    *(v31 + 24) = 0xE400000000000000;
    v32 = swift_allocObject();
    *(v32 + 16) = 0;
    *(v32 + 24) = 0xE000000000000000;

    v33 = sub_182AD2678();
    v34 = sub_182AD38A8();
    v35 = swift_allocObject();
    *(v35 + 16) = 32;
    v47 = swift_allocObject();
    *(v47 + 16) = 8;
    v36 = swift_allocObject();
    *(v36 + 16) = sub_181F8C71C;
    *(v36 + 24) = v30;
    v37 = swift_allocObject();
    *(v37 + 16) = sub_181F8C718;
    *(v37 + 24) = v36;
    v38 = swift_allocObject();
    *(v38 + 16) = 32;
    v49 = swift_allocObject();
    *(v49 + 16) = 8;
    v39 = swift_allocObject();
    *(v39 + 16) = sub_181F8C720;
    *(v39 + 24) = v31;
    v40 = swift_allocObject();
    *(v40 + 16) = sub_181F8C718;
    *(v40 + 24) = v39;
    v51 = swift_allocObject();
    *(v51 + 16) = 32;
    v53 = swift_allocObject();
    *(v53 + 16) = 8;
    v41 = swift_allocObject();
    *(v41 + 16) = sub_181F8C720;
    *(v41 + 24) = v32;
    v42 = swift_allocObject();
    *(v42 + 16) = sub_181F8C718;
    *(v42 + 24) = v41;
    v45 = v34;
    v21 = v33;
    if (os_log_type_enabled(v33, v34))
    {
      v22 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v54 = v43;
      v55 = 0;
      *v22 = 770;
      v56 = v22 + 2;
      v57 = sub_181F8C728;
      v58 = v35;
      sub_181F73AE0(&v57, &v56, &v55, &v54);

      v57 = sub_181F8C728;
      v58 = v47;
      sub_181F73AE0(&v57, &v56, &v55, &v54);

      v57 = sub_181F8C714;
      v58 = v37;
      sub_181F73AE0(&v57, &v56, &v55, &v54);

      v57 = sub_181F8C728;
      v58 = v38;
      sub_181F73AE0(&v57, &v56, &v55, &v54);

      v57 = sub_181F8C728;
      v58 = v49;
      sub_181F73AE0(&v57, &v56, &v55, &v54);

      v57 = sub_181F8C714;
      v58 = v40;
      sub_181F73AE0(&v57, &v56, &v55, &v54);

      v57 = sub_181F8C728;
      v58 = v51;
      sub_181F73AE0(&v57, &v56, &v55, &v54);

      v57 = sub_181F8C728;
      v58 = v53;
      sub_181F73AE0(&v57, &v56, &v55, &v54);

      v57 = sub_181F8C714;
      v58 = v42;
      sub_181F73AE0(&v57, &v56, &v55, &v54);

      v24 = v21;
      _os_log_impl(&dword_181A37000, v21, v45, "%s %s %s", v22, 0x20u);
      swift_arrayDestroy();
      v25 = v43;
      goto LABEL_21;
    }

    goto LABEL_25;
  }

  return result;
}

uint64_t sub_182012C00()
{
  v1 = v0[11];
  if (!v1)
  {
    return 1;
  }

  v2 = *v0;
  if (*v0 < v0[6])
  {
    if (v1 < v2 >> 2)
    {
      if (qword_1EA837250 != -1)
      {
        swift_once();
      }

      if (byte_1EA843430 == 1)
      {
        result = __nwlog_is_datapath_logging_enabled();
        if (result)
        {
          sub_182AD3BA8();
          MEMORY[0x1865D9CA0](0xD000000000000038, 0x8000000182BD7F20);
          v4 = sub_182AD41B8();
          MEMORY[0x1865D9CA0](v4);

          MEMORY[0x1865D9CA0](0xD000000000000013, 0x8000000182BD7F60);
          v56 = v2;
          v5 = sub_182AD41B8();
          MEMORY[0x1865D9CA0](v5);

          if (qword_1EA837248 != -1)
          {
            swift_once();
          }

          v6 = sub_182AD2698();
          __swift_project_value_buffer(v6, qword_1EA843418);
          v7 = swift_allocObject();
          *(v7 + 16) = "congestionWindowValidated";
          *(v7 + 24) = 25;
          *(v7 + 32) = 2;
          v8 = swift_allocObject();
          *(v8 + 16) = sub_181F8C724;
          *(v8 + 24) = v7;
          v9 = swift_allocObject();
          *(v9 + 16) = 1564427099;
          *(v9 + 24) = 0xE400000000000000;
          v10 = swift_allocObject();
          *(v10 + 16) = 0;
          *(v10 + 24) = 0xE000000000000000;

          v11 = sub_182AD2678();
          v12 = sub_182AD38A8();
          v13 = swift_allocObject();
          *(v13 + 16) = 32;
          v46 = swift_allocObject();
          *(v46 + 16) = 8;
          v14 = swift_allocObject();
          *(v14 + 16) = sub_181F8C71C;
          *(v14 + 24) = v8;
          v15 = swift_allocObject();
          *(v15 + 16) = sub_181F8C718;
          *(v15 + 24) = v14;
          v16 = swift_allocObject();
          *(v16 + 16) = 32;
          v48 = swift_allocObject();
          *(v48 + 16) = 8;
          v17 = swift_allocObject();
          *(v17 + 16) = sub_181F8C720;
          *(v17 + 24) = v9;
          v18 = swift_allocObject();
          *(v18 + 16) = sub_181F8C718;
          *(v18 + 24) = v17;
          v50 = swift_allocObject();
          *(v50 + 16) = 32;
          v52 = swift_allocObject();
          *(v52 + 16) = 8;
          v19 = swift_allocObject();
          *(v19 + 16) = sub_181F8C720;
          *(v19 + 24) = v10;
          v20 = swift_allocObject();
          *(v20 + 16) = sub_181F8C718;
          *(v20 + 24) = v19;
          v44 = v12;
          v21 = v11;
          if (os_log_type_enabled(v11, v12))
          {
            v22 = swift_slowAlloc();
            v23 = swift_slowAlloc();
            v54 = v23;
            v55 = 0;
            *v22 = 770;
            v56 = v22 + 2;
            v57 = sub_181F8C728;
            v58 = v13;
            sub_181F73AE0(&v57, &v56, &v55, &v54);

            v57 = sub_181F8C728;
            v58 = v46;
            sub_181F73AE0(&v57, &v56, &v55, &v54);

            v57 = sub_181F8C714;
            v58 = v15;
            sub_181F73AE0(&v57, &v56, &v55, &v54);

            v57 = sub_181F8C728;
            v58 = v16;
            sub_181F73AE0(&v57, &v56, &v55, &v54);

            v57 = sub_181F8C728;
            v58 = v48;
            sub_181F73AE0(&v57, &v56, &v55, &v54);

            v57 = sub_181F8C714;
            v58 = v18;
            sub_181F73AE0(&v57, &v56, &v55, &v54);

            v57 = sub_181F8C728;
            v58 = v50;
            sub_181F73AE0(&v57, &v56, &v55, &v54);

            v57 = sub_181F8C728;
            v58 = v52;
            sub_181F73AE0(&v57, &v56, &v55, &v54);

            v57 = sub_181F8C714;
            v58 = v20;
            sub_181F73AE0(&v57, &v56, &v55, &v54);

            v24 = v21;
            _os_log_impl(&dword_181A37000, v21, v44, "%s %s %s", v22, 0x20u);
            swift_arrayDestroy();
            v25 = v23;
LABEL_21:
            MEMORY[0x1865DF520](v25, -1, -1);
            MEMORY[0x1865DF520](v22, -1, -1);

            return 0;
          }

LABEL_25:

          return 0;
        }

        return result;
      }

      return 0;
    }

    return 1;
  }

  if (v1 >= v2 >> 1)
  {
    return 1;
  }

  if (qword_1EA837250 != -1)
  {
    swift_once();
  }

  if (byte_1EA843430 != 1)
  {
    return 0;
  }

  result = __nwlog_is_datapath_logging_enabled();
  if (result)
  {
    sub_182AD3BA8();
    MEMORY[0x1865D9CA0](0xD000000000000042, 0x8000000182BD7EB0);
    v26 = sub_182AD41B8();
    MEMORY[0x1865D9CA0](v26);

    MEMORY[0x1865D9CA0](0xD000000000000014, 0x8000000182BD7F00);
    v56 = v2;
    v27 = sub_182AD41B8();
    MEMORY[0x1865D9CA0](v27);

    MEMORY[0x1865D9CA0](32, 0xE100000000000000);
    if (qword_1EA837248 != -1)
    {
      swift_once();
    }

    v28 = sub_182AD2698();
    __swift_project_value_buffer(v28, qword_1EA843418);
    v29 = swift_allocObject();
    *(v29 + 16) = "congestionWindowValidated";
    *(v29 + 24) = 25;
    *(v29 + 32) = 2;
    v30 = swift_allocObject();
    *(v30 + 16) = sub_181F8C724;
    *(v30 + 24) = v29;
    v31 = swift_allocObject();
    *(v31 + 16) = 1564427099;
    *(v31 + 24) = 0xE400000000000000;
    v32 = swift_allocObject();
    *(v32 + 16) = 0;
    *(v32 + 24) = 0xE000000000000000;

    v33 = sub_182AD2678();
    v34 = sub_182AD38A8();
    v35 = swift_allocObject();
    *(v35 + 16) = 32;
    v47 = swift_allocObject();
    *(v47 + 16) = 8;
    v36 = swift_allocObject();
    *(v36 + 16) = sub_181F8C71C;
    *(v36 + 24) = v30;
    v37 = swift_allocObject();
    *(v37 + 16) = sub_181F8C718;
    *(v37 + 24) = v36;
    v38 = swift_allocObject();
    *(v38 + 16) = 32;
    v49 = swift_allocObject();
    *(v49 + 16) = 8;
    v39 = swift_allocObject();
    *(v39 + 16) = sub_181F8C720;
    *(v39 + 24) = v31;
    v40 = swift_allocObject();
    *(v40 + 16) = sub_181F8C718;
    *(v40 + 24) = v39;
    v51 = swift_allocObject();
    *(v51 + 16) = 32;
    v53 = swift_allocObject();
    *(v53 + 16) = 8;
    v41 = swift_allocObject();
    *(v41 + 16) = sub_181F8C720;
    *(v41 + 24) = v32;
    v42 = swift_allocObject();
    *(v42 + 16) = sub_181F8C718;
    *(v42 + 24) = v41;
    v45 = v34;
    v21 = v33;
    if (os_log_type_enabled(v33, v34))
    {
      v22 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v54 = v43;
      v55 = 0;
      *v22 = 770;
      v56 = v22 + 2;
      v57 = sub_181F8C728;
      v58 = v35;
      sub_181F73AE0(&v57, &v56, &v55, &v54);

      v57 = sub_181F8C728;
      v58 = v47;
      sub_181F73AE0(&v57, &v56, &v55, &v54);

      v57 = sub_181F8C714;
      v58 = v37;
      sub_181F73AE0(&v57, &v56, &v55, &v54);

      v57 = sub_181F8C728;
      v58 = v38;
      sub_181F73AE0(&v57, &v56, &v55, &v54);

      v57 = sub_181F8C728;
      v58 = v49;
      sub_181F73AE0(&v57, &v56, &v55, &v54);

      v57 = sub_181F8C714;
      v58 = v40;
      sub_181F73AE0(&v57, &v56, &v55, &v54);

      v57 = sub_181F8C728;
      v58 = v51;
      sub_181F73AE0(&v57, &v56, &v55, &v54);

      v57 = sub_181F8C728;
      v58 = v53;
      sub_181F73AE0(&v57, &v56, &v55, &v54);

      v57 = sub_181F8C714;
      v58 = v42;
      sub_181F73AE0(&v57, &v56, &v55, &v54);

      v24 = v21;
      _os_log_impl(&dword_181A37000, v21, v45, "%s %s %s", v22, 0x20u);
      swift_arrayDestroy();
      v25 = v43;
      goto LABEL_21;
    }

    goto LABEL_25;
  }

  return result;
}

void sub_182013B20(uint64_t a1)
{
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  v3 = *(v1 + 8);
  v2 = (v3 + a1);
  if (__CFADD__(v3, a1))
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  *(v1 + 8) = v2;
  if (qword_1EA837250 != -1)
  {
LABEL_10:
    swift_once();
  }

  if (byte_1EA843430 == 1 && __nwlog_is_datapath_logging_enabled())
  {
    goto LABEL_12;
  }

  while ((v2 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_12:
    v33 = 0;
    v34 = 0xE000000000000000;
    sub_182AD3BA8();

    v33 = 0xD00000000000001BLL;
    v34 = 0x8000000182BD7E30;
    v32 = v2;
    v4 = sub_182AD41B8();
    MEMORY[0x1865D9CA0](v4);

    v5 = v33;
    v6 = v34;
    if (qword_1EA837248 != -1)
    {
      swift_once();
    }

    v7 = sub_182AD2698();
    __swift_project_value_buffer(v7, qword_1EA843418);
    v8 = swift_allocObject();
    *(v8 + 16) = "incrementBytesInFlight(_:)";
    *(v8 + 24) = 26;
    *(v8 + 32) = 2;
    v9 = swift_allocObject();
    *(v9 + 16) = sub_181F8C724;
    *(v9 + 24) = v8;
    v10 = swift_allocObject();
    *(v10 + 16) = 1564427099;
    *(v10 + 24) = 0xE400000000000000;
    v11 = swift_allocObject();
    *(v11 + 16) = v5;
    *(v11 + 24) = v6;

    oslog = sub_182AD2678();
    v28 = sub_182AD38A8();
    v27 = swift_allocObject();
    *(v27 + 16) = 32;
    v26 = swift_allocObject();
    *(v26 + 16) = 8;
    v12 = swift_allocObject();
    *(v12 + 16) = sub_181F8C71C;
    *(v12 + 24) = v9;
    v13 = swift_allocObject();
    *(v13 + 16) = sub_181F8C718;
    *(v13 + 24) = v12;
    v14 = swift_allocObject();
    *(v14 + 16) = 32;
    v15 = swift_allocObject();
    *(v15 + 16) = 8;
    v16 = swift_allocObject();
    *(v16 + 16) = sub_181F8C720;
    *(v16 + 24) = v10;
    v17 = swift_allocObject();
    *(v17 + 16) = sub_181F8C718;
    *(v17 + 24) = v16;
    v18 = swift_allocObject();
    *(v18 + 16) = 32;
    v19 = swift_allocObject();
    *(v19 + 16) = 8;
    v20 = swift_allocObject();
    *(v20 + 16) = sub_181F8C720;
    *(v20 + 24) = v11;
    v21 = swift_allocObject();
    *(v21 + 16) = sub_181F8C718;
    *(v21 + 24) = v20;
    if (os_log_type_enabled(oslog, v28))
    {
      v24 = v13;
      v25 = v19;
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v30 = v23;
      v31 = 0;
      *v22 = 770;
      v32 = v22 + 2;
      v33 = sub_181F8C728;
      v34 = v27;
      sub_181F73AE0(&v33, &v32, &v31, &v30);

      v33 = sub_181F8C728;
      v34 = v26;
      sub_181F73AE0(&v33, &v32, &v31, &v30);

      v33 = sub_181F8C714;
      v34 = v24;
      sub_181F73AE0(&v33, &v32, &v31, &v30);

      v33 = sub_181F8C728;
      v34 = v14;
      sub_181F73AE0(&v33, &v32, &v31, &v30);

      v33 = sub_181F8C728;
      v34 = v15;
      sub_181F73AE0(&v33, &v32, &v31, &v30);

      v33 = sub_181F8C714;
      v34 = v17;
      sub_181F73AE0(&v33, &v32, &v31, &v30);

      v33 = sub_181F8C728;
      v34 = v18;
      sub_181F73AE0(&v33, &v32, &v31, &v30);

      v33 = sub_181F8C728;
      v34 = v25;
      sub_181F73AE0(&v33, &v32, &v31, &v30);

      v33 = sub_181F8C714;
      v34 = v21;
      sub_181F73AE0(&v33, &v32, &v31, &v30);

      _os_log_impl(&dword_181A37000, oslog, v28, "%s %s %s", v22, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1865DF520](v23, -1, -1);
      MEMORY[0x1865DF520](v22, -1, -1);
    }

    else
    {
    }
  }
}

void sub_182014334(uint64_t a1)
{
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  v3 = *(v1 + 8);
  v2 = (v3 + a1);
  if (__CFADD__(v3, a1))
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  *(v1 + 8) = v2;
  if (qword_1EA837250 != -1)
  {
LABEL_10:
    swift_once();
  }

  if (byte_1EA843430 == 1 && __nwlog_is_datapath_logging_enabled())
  {
    goto LABEL_12;
  }

  while ((v2 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_12:
    v33 = 0;
    v34 = 0xE000000000000000;
    sub_182AD3BA8();

    v33 = 0xD00000000000001BLL;
    v34 = 0x8000000182BD7E30;
    v32 = v2;
    v4 = sub_182AD41B8();
    MEMORY[0x1865D9CA0](v4);

    v5 = v33;
    v6 = v34;
    if (qword_1EA837248 != -1)
    {
      swift_once();
    }

    v7 = sub_182AD2698();
    __swift_project_value_buffer(v7, qword_1EA843418);
    v8 = swift_allocObject();
    *(v8 + 16) = "incrementBytesInFlight(_:)";
    *(v8 + 24) = 26;
    *(v8 + 32) = 2;
    v9 = swift_allocObject();
    *(v9 + 16) = sub_181F8C724;
    *(v9 + 24) = v8;
    v10 = swift_allocObject();
    *(v10 + 16) = 1564427099;
    *(v10 + 24) = 0xE400000000000000;
    v11 = swift_allocObject();
    *(v11 + 16) = v5;
    *(v11 + 24) = v6;

    oslog = sub_182AD2678();
    v28 = sub_182AD38A8();
    v27 = swift_allocObject();
    *(v27 + 16) = 32;
    v26 = swift_allocObject();
    *(v26 + 16) = 8;
    v12 = swift_allocObject();
    *(v12 + 16) = sub_181F8C71C;
    *(v12 + 24) = v9;
    v13 = swift_allocObject();
    *(v13 + 16) = sub_181F8C718;
    *(v13 + 24) = v12;
    v14 = swift_allocObject();
    *(v14 + 16) = 32;
    v15 = swift_allocObject();
    *(v15 + 16) = 8;
    v16 = swift_allocObject();
    *(v16 + 16) = sub_181F8C720;
    *(v16 + 24) = v10;
    v17 = swift_allocObject();
    *(v17 + 16) = sub_181F8C718;
    *(v17 + 24) = v16;
    v18 = swift_allocObject();
    *(v18 + 16) = 32;
    v19 = swift_allocObject();
    *(v19 + 16) = 8;
    v20 = swift_allocObject();
    *(v20 + 16) = sub_181F8C720;
    *(v20 + 24) = v11;
    v21 = swift_allocObject();
    *(v21 + 16) = sub_181F8C718;
    *(v21 + 24) = v20;
    if (os_log_type_enabled(oslog, v28))
    {
      v24 = v13;
      v25 = v19;
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v30 = v23;
      v31 = 0;
      *v22 = 770;
      v32 = v22 + 2;
      v33 = sub_181F8C728;
      v34 = v27;
      sub_181F73AE0(&v33, &v32, &v31, &v30);

      v33 = sub_181F8C728;
      v34 = v26;
      sub_181F73AE0(&v33, &v32, &v31, &v30);

      v33 = sub_181F8C714;
      v34 = v24;
      sub_181F73AE0(&v33, &v32, &v31, &v30);

      v33 = sub_181F8C728;
      v34 = v14;
      sub_181F73AE0(&v33, &v32, &v31, &v30);

      v33 = sub_181F8C728;
      v34 = v15;
      sub_181F73AE0(&v33, &v32, &v31, &v30);

      v33 = sub_181F8C714;
      v34 = v17;
      sub_181F73AE0(&v33, &v32, &v31, &v30);

      v33 = sub_181F8C728;
      v34 = v18;
      sub_181F73AE0(&v33, &v32, &v31, &v30);

      v33 = sub_181F8C728;
      v34 = v25;
      sub_181F73AE0(&v33, &v32, &v31, &v30);

      v33 = sub_181F8C714;
      v34 = v21;
      sub_181F73AE0(&v33, &v32, &v31, &v30);

      _os_log_impl(&dword_181A37000, oslog, v28, "%s %s %s", v22, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1865DF520](v23, -1, -1);
      MEMORY[0x1865DF520](v22, -1, -1);
    }

    else
    {
    }
  }
}

void sub_182014B48(unint64_t a1)
{
  v2 = *(v1 + 8);
  v3 = (v2 - a1);
  if (v2 < a1)
  {
    __break(1u);
    goto LABEL_8;
  }

  *(v1 + 8) = v3;
  if (qword_1EA837250 != -1)
  {
LABEL_8:
    swift_once();
  }

  if (byte_1EA843430 == 1 && __nwlog_is_datapath_logging_enabled())
  {
    goto LABEL_10;
  }

  while ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_10:
    v33 = 0;
    v34 = 0xE000000000000000;
    sub_182AD3BA8();

    v33 = 0xD00000000000001BLL;
    v34 = 0x8000000182BD7E30;
    v32 = v3;
    v4 = sub_182AD41B8();
    MEMORY[0x1865D9CA0](v4);

    v5 = v33;
    v6 = v34;
    if (qword_1EA837248 != -1)
    {
      swift_once();
    }

    v7 = sub_182AD2698();
    __swift_project_value_buffer(v7, qword_1EA843418);
    v8 = swift_allocObject();
    *(v8 + 16) = "decrementBytesInFlight(_:)";
    *(v8 + 24) = 26;
    *(v8 + 32) = 2;
    v9 = swift_allocObject();
    *(v9 + 16) = sub_181F8C724;
    *(v9 + 24) = v8;
    v10 = swift_allocObject();
    *(v10 + 16) = 1564427099;
    *(v10 + 24) = 0xE400000000000000;
    v11 = swift_allocObject();
    *(v11 + 16) = v5;
    *(v11 + 24) = v6;

    oslog = sub_182AD2678();
    v28 = sub_182AD38A8();
    v27 = swift_allocObject();
    *(v27 + 16) = 32;
    v26 = swift_allocObject();
    *(v26 + 16) = 8;
    v12 = swift_allocObject();
    *(v12 + 16) = sub_181F8C71C;
    *(v12 + 24) = v9;
    v13 = swift_allocObject();
    *(v13 + 16) = sub_181F8C718;
    *(v13 + 24) = v12;
    v14 = swift_allocObject();
    *(v14 + 16) = 32;
    v15 = swift_allocObject();
    *(v15 + 16) = 8;
    v16 = swift_allocObject();
    *(v16 + 16) = sub_181F8C720;
    *(v16 + 24) = v10;
    v17 = swift_allocObject();
    *(v17 + 16) = sub_181F8C718;
    *(v17 + 24) = v16;
    v18 = swift_allocObject();
    *(v18 + 16) = 32;
    v19 = swift_allocObject();
    *(v19 + 16) = 8;
    v20 = swift_allocObject();
    *(v20 + 16) = sub_181F8C720;
    *(v20 + 24) = v11;
    v21 = swift_allocObject();
    *(v21 + 16) = sub_181F8C718;
    *(v21 + 24) = v20;
    if (os_log_type_enabled(oslog, v28))
    {
      v25 = v19;
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v30 = v23;
      v31 = 0;
      *v22 = 770;
      v24 = v23;
      v32 = v22 + 2;
      v33 = sub_181F8C728;
      v34 = v27;
      sub_181F73AE0(&v33, &v32, &v31, &v30);

      v33 = sub_181F8C728;
      v34 = v26;
      sub_181F73AE0(&v33, &v32, &v31, &v30);

      v33 = sub_181F8C714;
      v34 = v13;
      sub_181F73AE0(&v33, &v32, &v31, &v30);

      v33 = sub_181F8C728;
      v34 = v14;
      sub_181F73AE0(&v33, &v32, &v31, &v30);

      v33 = sub_181F8C728;
      v34 = v15;
      sub_181F73AE0(&v33, &v32, &v31, &v30);

      v33 = sub_181F8C714;
      v34 = v17;
      sub_181F73AE0(&v33, &v32, &v31, &v30);

      v33 = sub_181F8C728;
      v34 = v18;
      sub_181F73AE0(&v33, &v32, &v31, &v30);

      v33 = sub_181F8C728;
      v34 = v25;
      sub_181F73AE0(&v33, &v32, &v31, &v30);

      v33 = sub_181F8C714;
      v34 = v21;
      sub_181F73AE0(&v33, &v32, &v31, &v30);

      _os_log_impl(&dword_181A37000, oslog, v28, "%s %s %s", v22, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1865DF520](v24, -1, -1);
      MEMORY[0x1865DF520](v22, -1, -1);
    }

    else
    {
    }
  }
}

void sub_1820152EC(unint64_t a1)
{
  v2 = *(v1 + 8);
  v3 = (v2 - a1);
  if (v2 < a1)
  {
    __break(1u);
    goto LABEL_8;
  }

  *(v1 + 8) = v3;
  if (qword_1EA837250 != -1)
  {
LABEL_8:
    swift_once();
  }

  if (byte_1EA843430 == 1 && __nwlog_is_datapath_logging_enabled())
  {
    goto LABEL_10;
  }

  while ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_10:
    v33 = 0;
    v34 = 0xE000000000000000;
    sub_182AD3BA8();

    v33 = 0xD00000000000001BLL;
    v34 = 0x8000000182BD7E30;
    v32 = v3;
    v4 = sub_182AD41B8();
    MEMORY[0x1865D9CA0](v4);

    v5 = v33;
    v6 = v34;
    if (qword_1EA837248 != -1)
    {
      swift_once();
    }

    v7 = sub_182AD2698();
    __swift_project_value_buffer(v7, qword_1EA843418);
    v8 = swift_allocObject();
    *(v8 + 16) = "decrementBytesInFlight(_:)";
    *(v8 + 24) = 26;
    *(v8 + 32) = 2;
    v9 = swift_allocObject();
    *(v9 + 16) = sub_181F8C724;
    *(v9 + 24) = v8;
    v10 = swift_allocObject();
    *(v10 + 16) = 1564427099;
    *(v10 + 24) = 0xE400000000000000;
    v11 = swift_allocObject();
    *(v11 + 16) = v5;
    *(v11 + 24) = v6;

    oslog = sub_182AD2678();
    v28 = sub_182AD38A8();
    v27 = swift_allocObject();
    *(v27 + 16) = 32;
    v26 = swift_allocObject();
    *(v26 + 16) = 8;
    v12 = swift_allocObject();
    *(v12 + 16) = sub_181F8C71C;
    *(v12 + 24) = v9;
    v13 = swift_allocObject();
    *(v13 + 16) = sub_181F8C718;
    *(v13 + 24) = v12;
    v14 = swift_allocObject();
    *(v14 + 16) = 32;
    v15 = swift_allocObject();
    *(v15 + 16) = 8;
    v16 = swift_allocObject();
    *(v16 + 16) = sub_181F8C720;
    *(v16 + 24) = v10;
    v17 = swift_allocObject();
    *(v17 + 16) = sub_181F8C718;
    *(v17 + 24) = v16;
    v18 = swift_allocObject();
    *(v18 + 16) = 32;
    v19 = swift_allocObject();
    *(v19 + 16) = 8;
    v20 = swift_allocObject();
    *(v20 + 16) = sub_181F8C720;
    *(v20 + 24) = v11;
    v21 = swift_allocObject();
    *(v21 + 16) = sub_181F8C718;
    *(v21 + 24) = v20;
    if (os_log_type_enabled(oslog, v28))
    {
      v25 = v19;
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v30 = v23;
      v31 = 0;
      *v22 = 770;
      v24 = v23;
      v32 = v22 + 2;
      v33 = sub_181F8C728;
      v34 = v27;
      sub_181F73AE0(&v33, &v32, &v31, &v30);

      v33 = sub_181F8C728;
      v34 = v26;
      sub_181F73AE0(&v33, &v32, &v31, &v30);

      v33 = sub_181F8C714;
      v34 = v13;
      sub_181F73AE0(&v33, &v32, &v31, &v30);

      v33 = sub_181F8C728;
      v34 = v14;
      sub_181F73AE0(&v33, &v32, &v31, &v30);

      v33 = sub_181F8C728;
      v34 = v15;
      sub_181F73AE0(&v33, &v32, &v31, &v30);

      v33 = sub_181F8C714;
      v34 = v17;
      sub_181F73AE0(&v33, &v32, &v31, &v30);

      v33 = sub_181F8C728;
      v34 = v18;
      sub_181F73AE0(&v33, &v32, &v31, &v30);

      v33 = sub_181F8C728;
      v34 = v25;
      sub_181F73AE0(&v33, &v32, &v31, &v30);

      v33 = sub_181F8C714;
      v34 = v21;
      sub_181F73AE0(&v33, &v32, &v31, &v30);

      _os_log_impl(&dword_181A37000, oslog, v28, "%s %s %s", v22, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1865DF520](v24, -1, -1);
      MEMORY[0x1865DF520](v22, -1, -1);
    }

    else
    {
    }
  }
}

uint64_t sub_182015A90(uint64_t a1)
{
  isa = v1[14].isa;
  if (isa >= 3)
  {
    v2 = v1;
    sub_182AD3BA8();

    v17[0] = 0xD000000000000010;
    v17[1] = 0x8000000182BD8200;
    v8 = sub_182AD41B8();
    MEMORY[0x1865D9CA0](v8);

    MEMORY[0x1865D9CA0](0xD000000000000012, 0x8000000182BD8220);
    isa = 0xD000000000000010;
    v5 = 0x8000000182BD8200;
    if (qword_1EA837248 != -1)
    {
      goto LABEL_16;
    }

    goto LABEL_9;
  }

  v5 = v1[10].isa;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    goto LABEL_14;
  }

  if (isa < 0)
  {
    goto LABEL_15;
  }

LABEL_4:
  while (isa >= *(v5 + 16))
  {
    __break(1u);
LABEL_12:

    while (1)
    {

      v1 = v2;
      v2[14].isa = 0;
      v5 = v2[10].isa;
      result = swift_isUniquelyReferenced_nonNull_native();
      isa = 0;
      if (result)
      {
        break;
      }

LABEL_14:
      result = sub_1820835AC(v5);
      v5 = result;
      if ((isa & 0x8000000000000000) == 0)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
LABEL_16:
      swift_once();
LABEL_9:
      v9 = sub_182AD2698();
      __swift_project_value_buffer(v9, qword_1EA843418);

      v1 = sub_182AD2678();
      v10 = sub_182AD38C8();

      if (!os_log_type_enabled(v1, v10))
      {
        goto LABEL_12;
      }

      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v17[0] = v12;
      *v11 = 136315650;
      v13 = sub_182AD3BF8();
      v15 = sub_181C64FFC(v13, v14, v17);

      *(v11 + 4) = v15;
      *(v11 + 12) = 2080;
      *(v11 + 14) = sub_181C64FFC(1564427099, 0xE400000000000000, v17);
      *(v11 + 22) = 2080;
      v16 = sub_181C64FFC(isa, v5, v17);

      *(v11 + 24) = v16;
      _os_log_impl(&dword_181A37000, v1, v10, "%s %s %s", v11, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1865DF520](v12, -1, -1);
      MEMORY[0x1865DF520](v11, -1, -1);
    }
  }

  *(v5 + 8 * isa + 32) = a1;
  v1[10].isa = v5;
  v7 = -2;
  if (isa <= 1)
  {
    v7 = 1;
  }

  v1[14].isa = (v7 + isa);
  return result;
}

uint64_t sub_182015D6C(uint64_t a1)
{
  v1 = *(a1 + 208);
  if (v1 > 1)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_182015DF0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839B88);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_182015E58()
{
  v1 = *v0;
  if (*v0 != -1)
  {
    if (qword_1EA837250 != -1)
    {
      swift_once();
    }

    if ((byte_1EA843430 & 1) != 0 && __nwlog_is_datapath_logging_enabled())
    {
      goto LABEL_9;
    }

    while ((v1 & 0x8000000000000000) != 0)
    {
      __break(1u);
LABEL_9:
      v31 = 0;
      v32 = 0xE000000000000000;
      sub_182AD3BA8();

      v31 = 0xD000000000000019;
      v32 = 0x8000000182BD7E70;
      v30 = v1;
      v2 = sub_182AD41B8();
      MEMORY[0x1865D9CA0](v2);

      MEMORY[0x1865D9CA0](0x736574796220, 0xE600000000000000);
      v3 = v31;
      v4 = v32;
      if (qword_1EA837248 != -1)
      {
        swift_once();
      }

      v5 = sub_182AD2698();
      __swift_project_value_buffer(v5, qword_1EA843418);
      v6 = swift_allocObject();
      *(v6 + 16) = "logUpdate(qlog:)";
      *(v6 + 24) = 16;
      *(v6 + 32) = 2;
      v7 = swift_allocObject();
      *(v7 + 16) = sub_181F8C724;
      *(v7 + 24) = v6;
      v8 = swift_allocObject();
      *(v8 + 16) = 1564427099;
      *(v8 + 24) = 0xE400000000000000;
      v9 = swift_allocObject();
      *(v9 + 16) = v3;
      *(v9 + 24) = v4;

      v10 = sub_182AD2678();
      v11 = sub_182AD38A8();
      v23 = swift_allocObject();
      *(v23 + 16) = 32;
      v24 = swift_allocObject();
      *(v24 + 16) = 8;
      v12 = swift_allocObject();
      *(v12 + 16) = sub_181F8C71C;
      *(v12 + 24) = v7;
      v13 = swift_allocObject();
      *(v13 + 16) = sub_181F8C718;
      *(v13 + 24) = v12;
      v14 = swift_allocObject();
      *(v14 + 16) = 32;
      v25 = swift_allocObject();
      *(v25 + 16) = 8;
      v15 = swift_allocObject();
      *(v15 + 16) = sub_181F8C720;
      *(v15 + 24) = v8;
      v16 = swift_allocObject();
      *(v16 + 16) = sub_181F8C718;
      *(v16 + 24) = v15;
      v26 = swift_allocObject();
      *(v26 + 16) = 32;
      v27 = swift_allocObject();
      *(v27 + 16) = 8;
      v17 = swift_allocObject();
      *(v17 + 16) = sub_181F8C720;
      *(v17 + 24) = v9;
      v18 = swift_allocObject();
      *(v18 + 16) = sub_181F8C718;
      *(v18 + 24) = v17;
      v22 = v11;
      v19 = v10;
      if (os_log_type_enabled(v10, v11))
      {
        v20 = swift_slowAlloc();
        v21 = swift_slowAlloc();
        v28 = v21;
        v29 = 0;
        *v20 = 770;
        v30 = v20 + 2;
        v31 = sub_181F8C728;
        v32 = v23;
        sub_181F73AE0(&v31, &v30, &v29, &v28);

        v31 = sub_181F8C728;
        v32 = v24;
        sub_181F73AE0(&v31, &v30, &v29, &v28);

        v31 = sub_181F8C714;
        v32 = v13;
        sub_181F73AE0(&v31, &v30, &v29, &v28);

        v31 = sub_181F8C728;
        v32 = v14;
        sub_181F73AE0(&v31, &v30, &v29, &v28);

        v31 = sub_181F8C728;
        v32 = v25;
        sub_181F73AE0(&v31, &v30, &v29, &v28);

        v31 = sub_181F8C714;
        v32 = v16;
        sub_181F73AE0(&v31, &v30, &v29, &v28);

        v31 = sub_181F8C728;
        v32 = v26;
        sub_181F73AE0(&v31, &v30, &v29, &v28);

        v31 = sub_181F8C728;
        v32 = v27;
        sub_181F73AE0(&v31, &v30, &v29, &v28);

        v31 = sub_181F8C714;
        v32 = v18;
        sub_181F73AE0(&v31, &v30, &v29, &v28);

        _os_log_impl(&dword_181A37000, v19, v22, "%s %s %s", v20, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1865DF520](v21, -1, -1);
        MEMORY[0x1865DF520](v20, -1, -1);
      }

      else
      {
      }
    }
  }
}

void sub_182016600()
{
  v1 = *v0;
  if (*v0 != -1)
  {
    if (qword_1EA837250 != -1)
    {
      swift_once();
    }

    if ((byte_1EA843430 & 1) != 0 && __nwlog_is_datapath_logging_enabled())
    {
      goto LABEL_9;
    }

    while ((v1 & 0x8000000000000000) != 0)
    {
      __break(1u);
LABEL_9:
      v31 = 0;
      v32 = 0xE000000000000000;
      sub_182AD3BA8();

      v31 = 0xD000000000000019;
      v32 = 0x8000000182BD7E70;
      v30 = v1;
      v2 = sub_182AD41B8();
      MEMORY[0x1865D9CA0](v2);

      MEMORY[0x1865D9CA0](0x736574796220, 0xE600000000000000);
      v3 = v31;
      v4 = v32;
      if (qword_1EA837248 != -1)
      {
        swift_once();
      }

      v5 = sub_182AD2698();
      __swift_project_value_buffer(v5, qword_1EA843418);
      v6 = swift_allocObject();
      *(v6 + 16) = "logUpdate(qlog:)";
      *(v6 + 24) = 16;
      *(v6 + 32) = 2;
      v7 = swift_allocObject();
      *(v7 + 16) = sub_181F8C724;
      *(v7 + 24) = v6;
      v8 = swift_allocObject();
      *(v8 + 16) = 1564427099;
      *(v8 + 24) = 0xE400000000000000;
      v9 = swift_allocObject();
      *(v9 + 16) = v3;
      *(v9 + 24) = v4;

      v10 = sub_182AD2678();
      v11 = sub_182AD38A8();
      v23 = swift_allocObject();
      *(v23 + 16) = 32;
      v24 = swift_allocObject();
      *(v24 + 16) = 8;
      v12 = swift_allocObject();
      *(v12 + 16) = sub_181F8C71C;
      *(v12 + 24) = v7;
      v13 = swift_allocObject();
      *(v13 + 16) = sub_181F8C718;
      *(v13 + 24) = v12;
      v14 = swift_allocObject();
      *(v14 + 16) = 32;
      v25 = swift_allocObject();
      *(v25 + 16) = 8;
      v15 = swift_allocObject();
      *(v15 + 16) = sub_181F8C720;
      *(v15 + 24) = v8;
      v16 = swift_allocObject();
      *(v16 + 16) = sub_181F8C718;
      *(v16 + 24) = v15;
      v26 = swift_allocObject();
      *(v26 + 16) = 32;
      v27 = swift_allocObject();
      *(v27 + 16) = 8;
      v17 = swift_allocObject();
      *(v17 + 16) = sub_181F8C720;
      *(v17 + 24) = v9;
      v18 = swift_allocObject();
      *(v18 + 16) = sub_181F8C718;
      *(v18 + 24) = v17;
      v22 = v11;
      v19 = v10;
      if (os_log_type_enabled(v10, v11))
      {
        v20 = swift_slowAlloc();
        v21 = swift_slowAlloc();
        v28 = v21;
        v29 = 0;
        *v20 = 770;
        v30 = v20 + 2;
        v31 = sub_181F8C728;
        v32 = v23;
        sub_181F73AE0(&v31, &v30, &v29, &v28);

        v31 = sub_181F8C728;
        v32 = v24;
        sub_181F73AE0(&v31, &v30, &v29, &v28);

        v31 = sub_181F8C714;
        v32 = v13;
        sub_181F73AE0(&v31, &v30, &v29, &v28);

        v31 = sub_181F8C728;
        v32 = v14;
        sub_181F73AE0(&v31, &v30, &v29, &v28);

        v31 = sub_181F8C728;
        v32 = v25;
        sub_181F73AE0(&v31, &v30, &v29, &v28);

        v31 = sub_181F8C714;
        v32 = v16;
        sub_181F73AE0(&v31, &v30, &v29, &v28);

        v31 = sub_181F8C728;
        v32 = v26;
        sub_181F73AE0(&v31, &v30, &v29, &v28);

        v31 = sub_181F8C728;
        v32 = v27;
        sub_181F73AE0(&v31, &v30, &v29, &v28);

        v31 = sub_181F8C714;
        v32 = v18;
        sub_181F73AE0(&v31, &v30, &v29, &v28);

        _os_log_impl(&dword_181A37000, v19, v22, "%s %s %s", v20, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1865DF520](v21, -1, -1);
        MEMORY[0x1865DF520](v20, -1, -1);
      }

      else
      {
      }
    }
  }
}

uint64_t sub_182016DA8@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_182AD3428();
  *(v2 + 16) = 64;
  *(v2 + 32) = 0u;
  *(v2 + 48) = 0u;
  *(v2 + 64) = 0u;
  *(v2 + 80) = 0u;
  *(v2 + 96) = 0u;
  *(v2 + 112) = 0u;
  *(v2 + 128) = 0u;
  *(v2 + 144) = 0u;
  *(v2 + 160) = 0u;
  *(v2 + 176) = 0u;
  *(v2 + 192) = 0u;
  *(v2 + 208) = 0u;
  *(v2 + 224) = 0u;
  *(v2 + 240) = 0u;
  *(v2 + 256) = 0u;
  *(v2 + 272) = 0u;
  *(v2 + 288) = 0u;
  *(v2 + 304) = 0u;
  *(v2 + 320) = 0u;
  *(v2 + 336) = 0u;
  *(v2 + 352) = 0u;
  *(v2 + 368) = 0u;
  *(v2 + 384) = 0u;
  *(v2 + 400) = 0u;
  *(v2 + 416) = 0u;
  *(v2 + 432) = 0u;
  *(v2 + 448) = 0u;
  *(v2 + 464) = 0u;
  *(v2 + 480) = 0u;
  *(v2 + 496) = 0u;
  *(v2 + 512) = 0u;
  *(v2 + 528) = 0u;
  v3 = sub_182AD3428();
  *(v3 + 16) = 64;
  *(v3 + 32) = 0u;
  *(v3 + 48) = 0u;
  *(v3 + 64) = 0u;
  *(v3 + 80) = 0u;
  *(v3 + 96) = 0u;
  *(v3 + 112) = 0u;
  *(v3 + 128) = 0u;
  *(v3 + 144) = 0u;
  *(v3 + 160) = 0u;
  *(v3 + 176) = 0u;
  *(v3 + 192) = 0u;
  *(v3 + 208) = 0u;
  *(v3 + 224) = 0u;
  *(v3 + 240) = 0u;
  *(v3 + 256) = 0u;
  *(v3 + 272) = 0u;
  *(v3 + 288) = 0u;
  *(v3 + 304) = 0u;
  *(v3 + 320) = 0u;
  *(v3 + 336) = 0u;
  *(v3 + 352) = 0u;
  *(v3 + 368) = 0u;
  *(v3 + 384) = 0u;
  *(v3 + 400) = 0u;
  *(v3 + 416) = 0u;
  *(v3 + 432) = 0u;
  *(v3 + 448) = 0u;
  *(v3 + 464) = 0u;
  *(v3 + 480) = 0u;
  *(v3 + 496) = 0u;
  *(v3 + 512) = 0u;
  *(v3 + 528) = 0u;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839B90);
  v4 = swift_allocObject();
  *(v4 + 16) = sub_18225A8F8(MEMORY[0x1E69E7CC0]);
  *(v4 + 24) = *sub_182AD2388();
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = -1;
  *(a1 + 24) = -1;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = v2;
  *(a1 + 64) = 0;
  *(a1 + 72) = v3;
  *(a1 + 80) = xmmword_182AEFBC0;
  *(a1 + 96) = xmmword_182AEFBC0;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  *(a1 + 128) = vdupq_n_s64(3uLL);
  *(a1 + 144) = v4;
}

void sub_182016F14(char *a1)
{
  v5 = *(v1 + 480);
  if ((*(v1 + 481) & 1) == 0 && !*(v1 + 480))
  {
    if (qword_1EA837250 != -1)
    {
      swift_once();
    }

    if (byte_1EA843430 == 1)
    {
      if (qword_1EA837248 != -1)
      {
        swift_once();
      }

      v6 = sub_182AD2698();
      __swift_project_value_buffer(v6, qword_1EA843418);
      oslog = sub_182AD2678();
      v7 = sub_182AD38A8();
      if (os_log_type_enabled(oslog, v7))
      {
        v8 = swift_slowAlloc();
        v9 = swift_slowAlloc();
        v43 = v9;
        *v8 = 136315650;
        v10 = sub_182AD3BF8();
        v12 = sub_181C64FFC(v10, v11, &v43);

        *(v8 + 4) = v12;
        *(v8 + 12) = 2080;
        *(v8 + 14) = sub_181C64FFC(1564427099, 0xE400000000000000, &v43);
        *(v8 + 22) = 2080;
        *(v8 + 24) = sub_181C64FFC(0xD000000000000018, 0x8000000182BD8170, &v43);
        _os_log_impl(&dword_181A37000, oslog, v7, "%s %s %s", v8, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1865DF520](v9, -1, -1);
        MEMORY[0x1865DF520](v8, -1, -1);
      }

      else
      {
      }
    }

    return;
  }

  v13 = *(v1 + 16);
  if (!v13)
  {
    __break(1u);
    goto LABEL_26;
  }

  if (*(v1 + 481))
  {
LABEL_26:
    __break(1u);
LABEL_27:
    swift_once();
LABEL_22:
    v16 = sub_182AD2698();
    __swift_project_value_buffer(v16, qword_1EA843418);
    v17 = swift_allocObject();
    *(v17 + 16) = "setTimer(delay:connection:)";
    *(v17 + 24) = 27;
    *(v17 + 32) = 2;
    v18 = swift_allocObject();
    *(v18 + 16) = sub_181F8C724;
    *(v18 + 24) = v17;
    v19 = swift_allocObject();
    *(v19 + 16) = 1564427099;
    *(v19 + 24) = v13;
    v20 = swift_allocObject();
    *(v20 + 16) = v2;
    *(v20 + 24) = v3;

    v21 = sub_182AD2678();
    v22 = sub_182AD38A8();
    v23 = swift_allocObject();
    *(v23 + 16) = 32;
    v35 = swift_allocObject();
    *(v35 + 16) = 8;
    v24 = swift_allocObject();
    *(v24 + 16) = sub_181F8C71C;
    *(v24 + 24) = v18;
    v25 = swift_allocObject();
    *(v25 + 16) = sub_181F8C718;
    *(v25 + 24) = v24;
    v26 = swift_allocObject();
    *(v26 + 16) = 32;
    v36 = swift_allocObject();
    *(v36 + 16) = 8;
    v27 = swift_allocObject();
    *(v27 + 16) = sub_181F8C720;
    *(v27 + 24) = v19;
    v28 = swift_allocObject();
    *(v28 + 16) = sub_181F8C718;
    *(v28 + 24) = v27;
    v37 = swift_allocObject();
    *(v37 + 16) = 32;
    v38 = swift_allocObject();
    *(v38 + 16) = 8;
    v29 = swift_allocObject();
    *(v29 + 16) = sub_181F8C720;
    *(v29 + 24) = v20;
    v30 = swift_allocObject();
    *(v30 + 16) = sub_181F8C718;
    *(v30 + 24) = v29;
    v34 = v22;
    v31 = v21;
    if (os_log_type_enabled(v21, v22))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v40 = v33;
      v41 = 0;
      *v32 = 770;
      v42 = (v32 + 2);
      v43 = sub_181F8C728;
      v44 = v23;
      sub_181F73AE0(&v43, &v42, &v41, &v40);

      v43 = sub_181F8C728;
      v44 = v35;
      sub_181F73AE0(&v43, &v42, &v41, &v40);

      v43 = sub_181F8C714;
      v44 = v25;
      sub_181F73AE0(&v43, &v42, &v41, &v40);

      v43 = sub_181F8C728;
      v44 = v26;
      sub_181F73AE0(&v43, &v42, &v41, &v40);

      v43 = sub_181F8C728;
      v44 = v36;
      sub_181F73AE0(&v43, &v42, &v41, &v40);

      v43 = sub_181F8C714;
      v44 = v28;
      sub_181F73AE0(&v43, &v42, &v41, &v40);

      v43 = sub_181F8C728;
      v44 = v37;
      sub_181F73AE0(&v43, &v42, &v41, &v40);

      v43 = sub_181F8C728;
      v44 = v38;
      sub_181F73AE0(&v43, &v42, &v41, &v40);

      v43 = sub_181F8C714;
      v44 = v30;
      sub_181F73AE0(&v43, &v42, &v41, &v40);

      _os_log_impl(&dword_181A37000, v31, v34, "%s %s %s", v32, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1865DF520](v33, -1, -1);
      MEMORY[0x1865DF520](v32, -1, -1);
    }

    else
    {
    }

    return;
  }

  sub_181F8BE74(v5, a1);

  if (qword_1EA837250 != -1)
  {
    swift_once();
  }

  if (byte_1EA843430 == 1 && __nwlog_is_datapath_logging_enabled())
  {
    sub_182AD3BA8();

    v43 = 0xD00000000000001ALL;
    v44 = 0x8000000182BD8150;
    if (*(v1 + 481))
    {
      __break(1u);

      while (1)
      {

        __break(1u);
      }
    }

    v14 = sub_182AD41B8();
    MEMORY[0x1865D9CA0](v14);

    v13 = 0xE400000000000000;
    MEMORY[0x1865D9CA0](544175136, 0xE400000000000000);
    v42 = a1;
    v15 = sub_182AD41B8();
    MEMORY[0x1865D9CA0](v15);

    v2 = v43;
    v3 = v44;
    if (qword_1EA837248 == -1)
    {
      goto LABEL_22;
    }

    goto LABEL_27;
  }
}

uint64_t sub_182017920(unint64_t a1)
{
  v6 = MEMORY[0x1E69E7CC0];
  if (*(a1 + 9))
  {
    if (*(a1 + 9) == 1)
    {
      swift_beginAccess();
      v3 = v1 + 176;
    }

    else
    {
      swift_beginAccess();
      v3 = v1 + 328;
    }
  }

  else
  {
    swift_beginAccess();
    v3 = v1 + 24;
  }

  sub_181FF9CF0(v3, a1, &v6, &v5);
  swift_endAccess();
  return v6;
}

uint64_t sub_1820179D8(uint64_t a1, char a2, unint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6)
{
  v10 = a4 - a3;
  v11 = a4 < a3;
  if (!a2)
  {
    swift_beginAccess();
    if (v11)
    {
      goto LABEL_132;
    }

    if (a5 <= a6)
    {
      v31 = a6;
    }

    else
    {
      v31 = a5;
    }

    v11 = &unk_1EA843000;
    while (1)
    {
      v32 = v6[20];
      if ((v32 - 65) < 0xFFFFFFFFFFFFFF7FLL)
      {
        break;
      }

      if (v32 < 0)
      {
        if (v32 <= 0xFFFFFFFFFFFFFFC0)
        {
          break;
        }

        v49 = v31 << -v32;
        v16 = __CFADD__(v31, v49);
        v33 = v31 + v49;
        if (v16)
        {
          goto LABEL_130;
        }
      }

      else
      {
        v34 = v31 >> v32;
        if (v32 >= 0x40)
        {
          v34 = 0;
        }

        v16 = __CFADD__(v31, v34);
        v33 = v31 + v34;
        if (v16)
        {
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
          goto LABEL_137;
        }
      }

LABEL_42:
      if (v32 < 3 || v33 >= v10)
      {
        v91 = v6[6];
        v70 = __OFSUB__(v91, a1);
        v92 = v91 - a1;
        if (!v70)
        {
          a1 = v92 + 1;
          if (__OFADD__(v92, 1))
          {
            goto LABEL_138;
          }

          if (a1 <= 19 && v6[19] < a1)
          {
            v6[19] = a1;
            if (qword_1EA837250 != -1)
            {
              swift_once();
            }

            if (byte_1EA843430 == 1 && __nwlog_is_datapath_logging_enabled())
            {
              v186 = 0;
              v187 = 0xE000000000000000;
              sub_182AD3BA8();
              MEMORY[0x1865D9CA0](0xD000000000000024, 0x8000000182BD82A0);
              v185 = a1;
              sub_182AD3E18();
              v94 = v186;
              v181 = v187;
              if (qword_1EA837248 != -1)
              {
                swift_once();
              }

              v95 = sub_182AD2698();
              __swift_project_value_buffer(v95, qword_1EA843418);
              v96 = swift_allocObject();
              *(v96 + 16) = "spuriousLoss(packetNumber:packetNumberSpace:packetSentTime:ackedtTime:sRTT:latestRTT:path:)";
              *(v96 + 24) = 91;
              *(v96 + 32) = 2;
              v97 = swift_allocObject();
              *(v97 + 16) = sub_181F8C724;
              *(v97 + 24) = v96;
              v98 = swift_allocObject();
              *(v98 + 16) = 1564427099;
              *(v98 + 24) = 0xE400000000000000;
              v99 = swift_allocObject();
              *(v99 + 16) = v94;
              *(v99 + 24) = v181;

              v100 = sub_182AD2678();
              v101 = sub_182AD38A8();
              v81 = swift_allocObject();
              *(v81 + 16) = 32;
              v151 = swift_allocObject();
              *(v151 + 16) = 8;
              v102 = swift_allocObject();
              *(v102 + 16) = sub_181F8C71C;
              *(v102 + 24) = v97;
              v83 = swift_allocObject();
              *(v83 + 16) = sub_181F8C718;
              *(v83 + 24) = v102;
              v158 = swift_allocObject();
              *(v158 + 16) = 32;
              v165 = swift_allocObject();
              *(v165 + 16) = 8;
              v103 = swift_allocObject();
              *(v103 + 16) = sub_181F8C720;
              *(v103 + 24) = v98;
              v104 = swift_allocObject();
              *(v104 + 16) = sub_181F8C718;
              *(v104 + 24) = v103;
              v169 = v104;
              v86 = swift_allocObject();
              *(v86 + 16) = 32;
              oslogf = swift_allocObject();
              LOBYTE(oslogf[2].isa) = 8;
              v105 = swift_allocObject();
              *(v105 + 16) = sub_181F8C720;
              *(v105 + 24) = v99;
              v88 = swift_allocObject();
              *(v88 + 16) = sub_181F8C718;
              *(v88 + 24) = v105;
              v89 = v101;
              v90 = v100;
              if (os_log_type_enabled(v100, v101))
              {
                goto LABEL_144;
              }

              goto LABEL_145;
            }
          }

          return swift_endAccess();
        }

        goto LABEL_135;
      }

      v36 = v32 - 1;
      v6[20] = v32 - 1;
      if (qword_1EA837250 != -1)
      {
        swift_once();
      }

      if (byte_1EA843430 == 1 && __nwlog_is_datapath_logging_enabled())
      {
        v178 = v6;
        v186 = 0;
        v187 = 0xE000000000000000;
        sub_182AD3BA8();

        v186 = 0xD000000000000022;
        v187 = 0x8000000182BD82D0;
        v185 = v36;
        v37 = sub_182AD41B8();
        MEMORY[0x1865D9CA0](v37);

        v38 = v187;
        oslogb = v186;
        if (qword_1EA837248 != -1)
        {
          swift_once();
        }

        v39 = sub_182AD2698();
        __swift_project_value_buffer(v39, qword_1EA843418);
        v40 = swift_allocObject();
        *(v40 + 16) = "spuriousLoss(packetNumber:packetNumberSpace:packetSentTime:ackedtTime:sRTT:latestRTT:path:)";
        *(v40 + 24) = 91;
        *(v40 + 32) = 2;
        v154 = swift_allocObject();
        *(v154 + 16) = sub_181F8C724;
        *(v154 + 24) = v40;
        v161 = swift_allocObject();
        *(v161 + 16) = 1564427099;
        *(v161 + 24) = 0xE400000000000000;
        bufb = swift_allocObject();
        *(bufb + 2) = oslogb;
        *(bufb + 3) = v38;

        oslogc = sub_182AD2678();
        v167 = sub_182AD38A8();
        v134 = swift_allocObject();
        *(v134 + 16) = 32;
        v137 = swift_allocObject();
        *(v137 + 16) = 8;
        v41 = swift_allocObject();
        *(v41 + 16) = sub_181F8C71C;
        *(v41 + 24) = v154;
        v42 = swift_allocObject();
        *(v42 + 16) = sub_181F8C718;
        *(v42 + 24) = v41;
        v140 = v42;
        v143 = swift_allocObject();
        *(v143 + 16) = 32;
        v146 = swift_allocObject();
        *(v146 + 16) = 8;
        v43 = swift_allocObject();
        *(v43 + 16) = sub_181F8C720;
        *(v43 + 24) = v161;
        v44 = swift_allocObject();
        *(v44 + 16) = sub_181F8C718;
        *(v44 + 24) = v43;
        v149 = v44;
        v155 = swift_allocObject();
        *(v155 + 16) = 32;
        v162 = swift_allocObject();
        *(v162 + 16) = 8;
        v45 = swift_allocObject();
        *(v45 + 16) = sub_181F8C720;
        *(v45 + 24) = bufb;
        v46 = swift_allocObject();
        *(v46 + 16) = sub_181F8C718;
        *(v46 + 24) = v45;
        if (os_log_type_enabled(oslogc, v167))
        {
          v47 = swift_slowAlloc();
          v48 = swift_slowAlloc();
          v183 = v48;
          v184 = 0;
          bufc = v47;
          *v47 = 770;
          v125 = v48;
          v185 = v47 + 2;
          v186 = sub_181F8C728;
          v187 = v134;
          sub_181F73AE0(&v186, &v185, &v184, &v183);
          v6 = v178;

          v186 = sub_181F8C728;
          v187 = v137;
          sub_181F73AE0(&v186, &v185, &v184, &v183);

          v186 = sub_181F8C714;
          v187 = v140;
          sub_181F73AE0(&v186, &v185, &v184, &v183);

          v186 = sub_181F8C728;
          v187 = v143;
          sub_181F73AE0(&v186, &v185, &v184, &v183);

          v186 = sub_181F8C728;
          v187 = v146;
          sub_181F73AE0(&v186, &v185, &v184, &v183);

          v186 = sub_181F8C714;
          v187 = v149;
          sub_181F73AE0(&v186, &v185, &v184, &v183);

          v186 = sub_181F8C728;
          v187 = v155;
          sub_181F73AE0(&v186, &v185, &v184, &v183);

          v186 = sub_181F8C728;
          v187 = v162;
          sub_181F73AE0(&v186, &v185, &v184, &v183);

          v186 = sub_181F8C714;
          v187 = v46;
          sub_181F73AE0(&v186, &v185, &v184, &v183);

          _os_log_impl(&dword_181A37000, oslogc, v167, "%s %s %s", bufc, 0x20u);
          swift_arrayDestroy();
          MEMORY[0x1865DF520](v125, -1, -1);
          MEMORY[0x1865DF520](bufc, -1, -1);
        }

        else
        {

          v6 = v178;
        }
      }
    }

    v33 = v31;
    goto LABEL_42;
  }

  if (a2 == 1)
  {
    swift_beginAccess();
    if (v11)
    {
      goto LABEL_131;
    }

    if (a5 <= a6)
    {
      v12 = a6;
    }

    else
    {
      v12 = a5;
    }

    v11 = &unk_1EA843000;
    while (1)
    {
      v13 = v6[39];
      if ((v13 - 65) < 0xFFFFFFFFFFFFFF7FLL)
      {
        break;
      }

      if (v13 < 0)
      {
        if (v13 <= 0xFFFFFFFFFFFFFFC0)
        {
          break;
        }

        v30 = v12 << -v13;
        v16 = __CFADD__(v12, v30);
        v14 = v12 + v30;
        if (v16)
        {
          goto LABEL_128;
        }
      }

      else
      {
        v15 = v12 >> v13;
        if (v13 >= 0x40)
        {
          v15 = 0;
        }

        v16 = __CFADD__(v12, v15);
        v14 = v12 + v15;
        if (v16)
        {
LABEL_128:
          __break(1u);
          goto LABEL_129;
        }
      }

LABEL_14:
      v16 = v13 < 3 || v14 >= v10;
      if (v16)
      {
        v69 = v6[25];
        v70 = __OFSUB__(v69, a1);
        v71 = v69 - a1;
        if (v70)
        {
          goto LABEL_134;
        }

        a1 = v71 + 1;
        if (!__OFADD__(v71, 1))
        {
          if (a1 > 19 || v6[38] >= a1)
          {
            return swift_endAccess();
          }

          v6[38] = a1;
          if (qword_1EA837250 != -1)
          {
            goto LABEL_140;
          }

LABEL_95:
          if (*(v11 + 1072) != 1 || !__nwlog_is_datapath_logging_enabled())
          {
            return swift_endAccess();
          }

          v186 = 0;
          v187 = 0xE000000000000000;
          sub_182AD3BA8();
          MEMORY[0x1865D9CA0](0xD000000000000024, 0x8000000182BD82A0);
          v185 = a1;
          sub_182AD3E18();
          v73 = v186;
          v180 = v187;
          if (qword_1EA837248 != -1)
          {
            swift_once();
          }

          v74 = sub_182AD2698();
          __swift_project_value_buffer(v74, qword_1EA843418);
          v75 = swift_allocObject();
          *(v75 + 16) = "spuriousLoss(packetNumber:packetNumberSpace:packetSentTime:ackedtTime:sRTT:latestRTT:path:)";
          *(v75 + 24) = 91;
          *(v75 + 32) = 2;
          v76 = swift_allocObject();
          *(v76 + 16) = sub_181F8C724;
          *(v76 + 24) = v75;
          v77 = swift_allocObject();
          *(v77 + 16) = 1564427099;
          *(v77 + 24) = 0xE400000000000000;
          v78 = swift_allocObject();
          *(v78 + 16) = v73;
          *(v78 + 24) = v180;

          v79 = sub_182AD2678();
          v80 = sub_182AD38A8();
          v81 = swift_allocObject();
          *(v81 + 16) = 32;
          v151 = swift_allocObject();
          *(v151 + 16) = 8;
          v82 = swift_allocObject();
          *(v82 + 16) = sub_181F8C71C;
          *(v82 + 24) = v76;
          v83 = swift_allocObject();
          *(v83 + 16) = sub_181F8C718;
          *(v83 + 24) = v82;
          v158 = swift_allocObject();
          *(v158 + 16) = 32;
          v165 = swift_allocObject();
          *(v165 + 16) = 8;
          v84 = swift_allocObject();
          *(v84 + 16) = sub_181F8C720;
          *(v84 + 24) = v77;
          v85 = swift_allocObject();
          *(v85 + 16) = sub_181F8C718;
          *(v85 + 24) = v84;
          v169 = v85;
          v86 = swift_allocObject();
          *(v86 + 16) = 32;
          oslogf = swift_allocObject();
          LOBYTE(oslogf[2].isa) = 8;
          v87 = swift_allocObject();
          *(v87 + 16) = sub_181F8C720;
          *(v87 + 24) = v78;
          v88 = swift_allocObject();
          *(v88 + 16) = sub_181F8C718;
          *(v88 + 24) = v87;
          v89 = v80;
          v90 = v79;
          if (os_log_type_enabled(v79, v80))
          {
LABEL_144:
            v122 = swift_slowAlloc();
            v123 = swift_slowAlloc();
            v183 = v123;
            v184 = 0;
            *v122 = 770;
            v185 = v122 + 2;
            v186 = sub_181F8C728;
            v187 = v81;
            sub_181F73AE0(&v186, &v185, &v184, &v183);

            v186 = sub_181F8C728;
            v187 = v151;
            sub_181F73AE0(&v186, &v185, &v184, &v183);

            v186 = sub_181F8C714;
            v187 = v83;
            sub_181F73AE0(&v186, &v185, &v184, &v183);

            v186 = sub_181F8C728;
            v187 = v158;
            sub_181F73AE0(&v186, &v185, &v184, &v183);

            v186 = sub_181F8C728;
            v187 = v165;
            sub_181F73AE0(&v186, &v185, &v184, &v183);

            v186 = sub_181F8C714;
            v187 = v169;
            sub_181F73AE0(&v186, &v185, &v184, &v183);

            v186 = sub_181F8C728;
            v187 = v86;
            sub_181F73AE0(&v186, &v185, &v184, &v183);

            v186 = sub_181F8C728;
            v187 = oslogf;
            sub_181F73AE0(&v186, &v185, &v184, &v183);

            v186 = sub_181F8C714;
            v187 = v88;
            sub_181F73AE0(&v186, &v185, &v184, &v183);

            _os_log_impl(&dword_181A37000, v90, v89, "%s %s %s", v122, 0x20u);
            swift_arrayDestroy();
            MEMORY[0x1865DF520](v123, -1, -1);
            MEMORY[0x1865DF520](v122, -1, -1);

            return swift_endAccess();
          }

LABEL_145:

          return swift_endAccess();
        }

LABEL_137:
        __break(1u);
LABEL_138:
        __break(1u);
LABEL_139:
        __break(1u);
LABEL_140:
        swift_once();
        goto LABEL_95;
      }

      v17 = v13 - 1;
      v6[39] = v13 - 1;
      if (qword_1EA837250 != -1)
      {
        swift_once();
      }

      if (byte_1EA843430 == 1 && __nwlog_is_datapath_logging_enabled())
      {
        v177 = v6;
        v186 = 0;
        v187 = 0xE000000000000000;
        sub_182AD3BA8();

        v186 = 0xD000000000000022;
        v187 = 0x8000000182BD82D0;
        v185 = v17;
        v18 = sub_182AD41B8();
        MEMORY[0x1865D9CA0](v18);

        v19 = v187;
        oslog = v186;
        if (qword_1EA837248 != -1)
        {
          swift_once();
        }

        v20 = sub_182AD2698();
        __swift_project_value_buffer(v20, qword_1EA843418);
        v21 = swift_allocObject();
        *(v21 + 16) = "spuriousLoss(packetNumber:packetNumberSpace:packetSentTime:ackedtTime:sRTT:latestRTT:path:)";
        *(v21 + 24) = 91;
        *(v21 + 32) = 2;
        v152 = swift_allocObject();
        *(v152 + 16) = sub_181F8C724;
        *(v152 + 24) = v21;
        v159 = swift_allocObject();
        *(v159 + 16) = 1564427099;
        *(v159 + 24) = 0xE400000000000000;
        buf = swift_allocObject();
        *(buf + 2) = oslog;
        *(buf + 3) = v19;

        osloga = sub_182AD2678();
        v166 = sub_182AD38A8();
        v133 = swift_allocObject();
        *(v133 + 16) = 32;
        v136 = swift_allocObject();
        *(v136 + 16) = 8;
        v22 = swift_allocObject();
        *(v22 + 16) = sub_181F8C71C;
        *(v22 + 24) = v152;
        v23 = swift_allocObject();
        *(v23 + 16) = sub_181F8C718;
        *(v23 + 24) = v22;
        v139 = v23;
        v142 = swift_allocObject();
        *(v142 + 16) = 32;
        v145 = swift_allocObject();
        *(v145 + 16) = 8;
        v24 = swift_allocObject();
        *(v24 + 16) = sub_181F8C720;
        *(v24 + 24) = v159;
        v25 = swift_allocObject();
        *(v25 + 16) = sub_181F8C718;
        *(v25 + 24) = v24;
        v148 = v25;
        v153 = swift_allocObject();
        *(v153 + 16) = 32;
        v160 = swift_allocObject();
        *(v160 + 16) = 8;
        v26 = swift_allocObject();
        *(v26 + 16) = sub_181F8C720;
        *(v26 + 24) = buf;
        v27 = swift_allocObject();
        *(v27 + 16) = sub_181F8C718;
        *(v27 + 24) = v26;
        if (os_log_type_enabled(osloga, v166))
        {
          v28 = swift_slowAlloc();
          v29 = swift_slowAlloc();
          v183 = v29;
          v184 = 0;
          bufa = v28;
          *v28 = 770;
          v124 = v29;
          v185 = v28 + 2;
          v186 = sub_181F8C728;
          v187 = v133;
          sub_181F73AE0(&v186, &v185, &v184, &v183);
          v6 = v177;

          v186 = sub_181F8C728;
          v187 = v136;
          sub_181F73AE0(&v186, &v185, &v184, &v183);

          v186 = sub_181F8C714;
          v187 = v139;
          sub_181F73AE0(&v186, &v185, &v184, &v183);

          v186 = sub_181F8C728;
          v187 = v142;
          sub_181F73AE0(&v186, &v185, &v184, &v183);

          v186 = sub_181F8C728;
          v187 = v145;
          sub_181F73AE0(&v186, &v185, &v184, &v183);

          v186 = sub_181F8C714;
          v187 = v148;
          sub_181F73AE0(&v186, &v185, &v184, &v183);

          v186 = sub_181F8C728;
          v187 = v153;
          sub_181F73AE0(&v186, &v185, &v184, &v183);

          v186 = sub_181F8C728;
          v187 = v160;
          sub_181F73AE0(&v186, &v185, &v184, &v183);

          v186 = sub_181F8C714;
          v187 = v27;
          sub_181F73AE0(&v186, &v185, &v184, &v183);

          _os_log_impl(&dword_181A37000, osloga, v166, "%s %s %s", bufa, 0x20u);
          swift_arrayDestroy();
          MEMORY[0x1865DF520](v124, -1, -1);
          MEMORY[0x1865DF520](bufa, -1, -1);
        }

        else
        {

          v6 = v177;
        }
      }
    }

    v14 = v12;
    goto LABEL_14;
  }

  swift_beginAccess();
  if (v11)
  {
    goto LABEL_133;
  }

  if (a5 <= a6)
  {
    v50 = a6;
  }

  else
  {
    v50 = a5;
  }

  v11 = &unk_1EA843000;
  while (1)
  {
    v51 = v6[58];
    if ((v51 - 65) < 0xFFFFFFFFFFFFFF7FLL)
    {
LABEL_65:
      v52 = v50;
      goto LABEL_70;
    }

    if (v51 < 0)
    {
      if (v51 <= 0xFFFFFFFFFFFFFFC0)
      {
        goto LABEL_65;
      }

      v68 = v50 << -v51;
      v16 = __CFADD__(v50, v68);
      v52 = v50 + v68;
      if (v16)
      {
        goto LABEL_129;
      }
    }

    else
    {
      v53 = v50 >> v51;
      if (v51 >= 0x40)
      {
        v53 = 0;
      }

      v16 = __CFADD__(v50, v53);
      v52 = v50 + v53;
      if (v16)
      {
LABEL_129:
        __break(1u);
        goto LABEL_130;
      }
    }

LABEL_70:
    if (v51 < 3 || v52 >= v10)
    {
      break;
    }

    v55 = v51 - 1;
    v6[58] = v51 - 1;
    if (qword_1EA837250 != -1)
    {
      swift_once();
    }

    if (byte_1EA843430 == 1 && __nwlog_is_datapath_logging_enabled())
    {
      v179 = v6;
      v186 = 0;
      v187 = 0xE000000000000000;
      sub_182AD3BA8();

      v186 = 0xD000000000000022;
      v187 = 0x8000000182BD82D0;
      v185 = v55;
      v56 = sub_182AD41B8();
      MEMORY[0x1865D9CA0](v56);

      v57 = v187;
      oslogd = v186;
      if (qword_1EA837248 != -1)
      {
        swift_once();
      }

      v58 = sub_182AD2698();
      __swift_project_value_buffer(v58, qword_1EA843418);
      v59 = swift_allocObject();
      *(v59 + 16) = "spuriousLoss(packetNumber:packetNumberSpace:packetSentTime:ackedtTime:sRTT:latestRTT:path:)";
      *(v59 + 24) = 91;
      *(v59 + 32) = 2;
      v156 = swift_allocObject();
      *(v156 + 16) = sub_181F8C724;
      *(v156 + 24) = v59;
      v163 = swift_allocObject();
      *(v163 + 16) = 1564427099;
      *(v163 + 24) = 0xE400000000000000;
      bufd = swift_allocObject();
      *(bufd + 2) = oslogd;
      *(bufd + 3) = v57;

      osloge = sub_182AD2678();
      v168 = sub_182AD38A8();
      v135 = swift_allocObject();
      *(v135 + 16) = 32;
      v138 = swift_allocObject();
      *(v138 + 16) = 8;
      v60 = swift_allocObject();
      *(v60 + 16) = sub_181F8C71C;
      *(v60 + 24) = v156;
      v61 = swift_allocObject();
      *(v61 + 16) = sub_181F8C718;
      *(v61 + 24) = v60;
      v141 = v61;
      v144 = swift_allocObject();
      *(v144 + 16) = 32;
      v147 = swift_allocObject();
      *(v147 + 16) = 8;
      v62 = swift_allocObject();
      *(v62 + 16) = sub_181F8C720;
      *(v62 + 24) = v163;
      v63 = swift_allocObject();
      *(v63 + 16) = sub_181F8C718;
      *(v63 + 24) = v62;
      v150 = v63;
      v157 = swift_allocObject();
      *(v157 + 16) = 32;
      v164 = swift_allocObject();
      *(v164 + 16) = 8;
      v64 = swift_allocObject();
      *(v64 + 16) = sub_181F8C720;
      *(v64 + 24) = bufd;
      v65 = swift_allocObject();
      *(v65 + 16) = sub_181F8C718;
      *(v65 + 24) = v64;
      if (os_log_type_enabled(osloge, v168))
      {
        v66 = swift_slowAlloc();
        v67 = swift_slowAlloc();
        v183 = v67;
        v184 = 0;
        bufe = v66;
        *v66 = 770;
        v126 = v67;
        v185 = v66 + 2;
        v186 = sub_181F8C728;
        v187 = v135;
        sub_181F73AE0(&v186, &v185, &v184, &v183);
        v6 = v179;

        v186 = sub_181F8C728;
        v187 = v138;
        sub_181F73AE0(&v186, &v185, &v184, &v183);

        v186 = sub_181F8C714;
        v187 = v141;
        sub_181F73AE0(&v186, &v185, &v184, &v183);

        v186 = sub_181F8C728;
        v187 = v144;
        sub_181F73AE0(&v186, &v185, &v184, &v183);

        v186 = sub_181F8C728;
        v187 = v147;
        sub_181F73AE0(&v186, &v185, &v184, &v183);

        v186 = sub_181F8C714;
        v187 = v150;
        sub_181F73AE0(&v186, &v185, &v184, &v183);

        v186 = sub_181F8C728;
        v187 = v157;
        sub_181F73AE0(&v186, &v185, &v184, &v183);

        v186 = sub_181F8C728;
        v187 = v164;
        sub_181F73AE0(&v186, &v185, &v184, &v183);

        v186 = sub_181F8C714;
        v187 = v65;
        sub_181F73AE0(&v186, &v185, &v184, &v183);

        _os_log_impl(&dword_181A37000, osloge, v168, "%s %s %s", bufe, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1865DF520](v126, -1, -1);
        MEMORY[0x1865DF520](bufe, -1, -1);
      }

      else
      {

        v6 = v179;
      }
    }
  }

  v106 = v6[44];
  v70 = __OFSUB__(v106, a1);
  v107 = v106 - a1;
  if (v70)
  {
    goto LABEL_136;
  }

  a1 = v107 + 1;
  if (__OFADD__(v107, 1))
  {
    goto LABEL_139;
  }

  if (a1 <= 19 && v6[57] < a1)
  {
    v6[57] = a1;
    if (qword_1EA837250 != -1)
    {
      swift_once();
    }

    if (byte_1EA843430 == 1 && __nwlog_is_datapath_logging_enabled())
    {
      v186 = 0;
      v187 = 0xE000000000000000;
      sub_182AD3BA8();
      MEMORY[0x1865D9CA0](0xD000000000000024, 0x8000000182BD82A0);
      v185 = a1;
      sub_182AD3E18();
      v110 = v186;
      v182 = v187;
      if (qword_1EA837248 != -1)
      {
        swift_once();
      }

      v111 = sub_182AD2698();
      __swift_project_value_buffer(v111, qword_1EA843418);
      v112 = swift_allocObject();
      *(v112 + 16) = "spuriousLoss(packetNumber:packetNumberSpace:packetSentTime:ackedtTime:sRTT:latestRTT:path:)";
      *(v112 + 24) = 91;
      *(v112 + 32) = 2;
      v113 = swift_allocObject();
      *(v113 + 16) = sub_181F8C724;
      *(v113 + 24) = v112;
      v114 = swift_allocObject();
      *(v114 + 16) = 1564427099;
      *(v114 + 24) = 0xE400000000000000;
      v115 = swift_allocObject();
      *(v115 + 16) = v110;
      *(v115 + 24) = v182;

      v116 = sub_182AD2678();
      v117 = sub_182AD38A8();
      v81 = swift_allocObject();
      *(v81 + 16) = 32;
      v151 = swift_allocObject();
      *(v151 + 16) = 8;
      v118 = swift_allocObject();
      *(v118 + 16) = sub_181F8C71C;
      *(v118 + 24) = v113;
      v83 = swift_allocObject();
      *(v83 + 16) = sub_181F8C718;
      *(v83 + 24) = v118;
      v158 = swift_allocObject();
      *(v158 + 16) = 32;
      v165 = swift_allocObject();
      *(v165 + 16) = 8;
      v119 = swift_allocObject();
      *(v119 + 16) = sub_181F8C720;
      *(v119 + 24) = v114;
      v120 = swift_allocObject();
      *(v120 + 16) = sub_181F8C718;
      *(v120 + 24) = v119;
      v169 = v120;
      v86 = swift_allocObject();
      *(v86 + 16) = 32;
      oslogf = swift_allocObject();
      LOBYTE(oslogf[2].isa) = 8;
      v121 = swift_allocObject();
      *(v121 + 16) = sub_181F8C720;
      *(v121 + 24) = v115;
      v88 = swift_allocObject();
      *(v88 + 16) = sub_181F8C718;
      *(v88 + 24) = v121;
      v89 = v117;
      v90 = v116;
      if (os_log_type_enabled(v116, v117))
      {
        goto LABEL_144;
      }

      goto LABEL_145;
    }
  }

  return swift_endAccess();
}

uint64_t sub_18201A394(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839B88);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_18201A510(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 120);
  v3 = *(v2 + 16);
  if (!v3)
  {
    goto LABEL_35;
  }

  v4 = 0;
  v47 = *(a1 + 104);
  v5 = (v2 + 80 * v3 - 48);
  do
  {
    v54 = *v5;
    v6 = v5[1];
    v7 = v5[2];
    v8 = v5[4];
    v57 = v5[3];
    v58 = v8;
    v55 = v6;
    v56 = v7;
    if (HIDWORD(v54) >> 27)
    {
      if (HIDWORD(v54) >> 27 == 1 && (BYTE11(v54) & 1) != 0)
      {
        goto LABEL_13;
      }
    }

    else if ((BYTE8(v56) & 1) == 0 && v56 >= 1)
    {
      goto LABEL_13;
    }

    if ((*(&v54 + 1) >> 59) <= 0x1D && ((1 << (*(&v54 + 1) >> 59)) & 0x3238000D) != 0)
    {
LABEL_13:
      sub_181F842F0(&v54, &v52);
      if (qword_1EA837250 != -1)
      {
        swift_once();
      }

      if (byte_1EA843430 == 1 && (__nwlog_is_datapath_logging_enabled() & 1) != 0)
      {
        if (qword_1EA837248 != -1)
        {
          swift_once();
        }

        v22 = sub_182AD2698();
        __swift_project_value_buffer(v22, qword_1EA843418);
        v23 = swift_allocObject();
        *(v23 + 16) = "prepareRetransmission(packet:connection:)";
        *(v23 + 24) = 41;
        *(v23 + 32) = 2;
        v24 = swift_allocObject();
        *(v24 + 16) = sub_181F8C724;
        *(v24 + 24) = v23;
        v25 = swift_allocObject();
        *(v25 + 16) = 1564427099;
        *(v25 + 24) = 0xE400000000000000;
        v37 = swift_allocObject();
        *(v37 + 16) = 0xD000000000000029;
        *(v37 + 24) = 0x8000000182BD7FB0;
        oslog = sub_182AD2678();
        v45 = sub_182AD38A8();
        v38 = swift_allocObject();
        *(v38 + 16) = 32;
        v39 = swift_allocObject();
        *(v39 + 16) = 8;
        v26 = swift_allocObject();
        *(v26 + 16) = sub_181F8C71C;
        *(v26 + 24) = v24;
        v27 = swift_allocObject();
        *(v27 + 16) = sub_181F8C718;
        *(v27 + 24) = v26;
        v40 = v27;
        v41 = swift_allocObject();
        *(v41 + 16) = 32;
        v42 = swift_allocObject();
        *(v42 + 16) = 8;
        v28 = swift_allocObject();
        *(v28 + 16) = sub_181F8C720;
        *(v28 + 24) = v25;
        v29 = swift_allocObject();
        *(v29 + 16) = sub_181F8C718;
        *(v29 + 24) = v28;
        v43 = v29;
        v44 = swift_allocObject();
        *(v44 + 16) = 32;
        v30 = swift_allocObject();
        *(v30 + 16) = 8;
        v31 = swift_allocObject();
        *(v31 + 16) = sub_181F8C720;
        *(v31 + 24) = v37;
        v32 = swift_allocObject();
        *(v32 + 16) = sub_181F8C718;
        *(v32 + 24) = v31;
        if (os_log_type_enabled(oslog, v45))
        {
          v33 = swift_slowAlloc();
          v34 = swift_slowAlloc();
          v50 = v34;
          v51 = 0;
          *v33 = 770;
          v36 = v34;
          v49[0] = v33 + 2;
          v52 = sub_181F8C728;
          v53 = v38;
          sub_181F73AE0(&v52, v49, &v51, &v50);

          v52 = sub_181F8C728;
          v53 = v39;
          sub_181F73AE0(&v52, v49, &v51, &v50);

          v52 = sub_181F8C714;
          v53 = v40;
          sub_181F73AE0(&v52, v49, &v51, &v50);

          v52 = sub_181F8C728;
          v53 = v41;
          sub_181F73AE0(&v52, v49, &v51, &v50);

          v52 = sub_181F8C728;
          v53 = v42;
          sub_181F73AE0(&v52, v49, &v51, &v50);

          v52 = sub_181F8C714;
          v53 = v43;
          sub_181F73AE0(&v52, v49, &v51, &v50);

          v52 = sub_181F8C728;
          v53 = v44;
          sub_181F73AE0(&v52, v49, &v51, &v50);

          v52 = sub_181F8C728;
          v53 = v30;
          sub_181F73AE0(&v52, v49, &v51, &v50);

          v52 = sub_181F8C714;
          v53 = v32;
          sub_181F73AE0(&v52, v49, &v51, &v50);

          _os_log_impl(&dword_181A37000, oslog, v45, "%s %s %s", v33, 0x20u);
          swift_arrayDestroy();
          MEMORY[0x1865DF520](v36, -1, -1);
          MEMORY[0x1865DF520](v33, -1, -1);
          sub_181F8434C(&v54);
        }

        else
        {
          sub_181F8434C(&v54);
        }
      }

      else
      {
        sub_181F8434C(&v54);
      }

      goto LABEL_18;
    }

    v10 = *(*(a2 + 296) + 32);
    if (!*(v10 + 16))
    {
      goto LABEL_33;
    }

    v11 = sub_18224EF74(v47);
    if ((v12 & 1) == 0)
    {
      goto LABEL_34;
    }

    v13 = *(*(v10 + 56) + 8 * v11);
    swift_beginAccess();
    v14 = *(v13 + 16);
    v15 = *(v14 + 2);
    sub_181F842F0(&v54, &v52);
    sub_181F842F0(&v54, &v52);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v13 + 16) = v14;
    if (!isUniquelyReferenced_nonNull_native || v15 >= *(v14 + 3) >> 1)
    {
      v14 = sub_181F59790(isUniquelyReferenced_nonNull_native, v15 + 1, 1, v14);
      *(v13 + 16) = v14;
    }

    swift_arrayDestroy();
    v17 = *(v14 + 2);
    memmove(v14 + 112, v14 + 32, 80 * v17);
    *(v14 + 2) = v17 + 1;
    v18 = v55;
    *(v14 + 2) = v54;
    v20 = v57;
    v19 = v58;
    v21 = v56;
    *(v14 + 3) = v18;
    *(v14 + 4) = v21;
    *(v14 + 5) = v20;
    *(v14 + 6) = v19;
    *(v13 + 16) = v14;
    swift_endAccess();

    sub_181F8434C(&v54);
    v4 = 1;
LABEL_18:
    if (v3 == 1)
    {
      return v4 & 1;
    }

    --v3;
    v5 -= 5;
  }

  while (v3 <= *(v2 + 16));
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  v4 = 0;
  return v4 & 1;
}

uint64_t sub_18201AEC0(uint64_t result, char a2, uint64_t a3)
{
  v4 = *(result + 16);
  if (!v4)
  {
    return result;
  }

  v5 = v3;
  v7 = a2;
  v8 = 0;
  v101 = 0;
  v9 = 0;
  v99 = result;
  v10 = (result + 40);
  v11 = *(result + 16);
  do
  {
    v13 = *v10;
    v10 += 2;
    v12 = v13;
    if (v7)
    {
      if (v7 == 1)
      {
        swift_beginAccess();
        v14 = v5[40];
        swift_beginAccess();
        v15 = *(v14 + 16);
        if (!*(v15 + 16))
        {
          goto LABEL_3;
        }

        v16 = sub_18225BD68(v12);
        if ((v17 & 1) == 0)
        {
          goto LABEL_3;
        }

        v18 = *(*(v15 + 56) + 8 * v16);
        swift_endAccess();
        if (!v8 || !v9)
        {
          goto LABEL_13;
        }

        v19 = *(v9 + 16);
        result = swift_beginAccess();
        v20 = *(v18 + 144);
        if (!v20)
        {
          goto LABEL_109;
        }

        if (v19 != *(v20 + 16))
        {
          swift_beginAccess();
          v54 = *(v8 + 128);

          LOBYTE(v54) = sub_181FFD0CC(v54, v9, v101, 1);

          *(v8 + 208) = v54 & 1;

          v101 = 0;
        }

        else
        {
LABEL_13:
        }

        swift_beginAccess();
        v21 = *(v18 + 144);

        if (*(v18 + 153) == 1)
        {
          v22 = *(v18 + 72);
          v23 = __OFADD__(v101, v22);
          v24 = v101 + v22;
          if (v23)
          {
            goto LABEL_104;
          }

          v101 = v24;
        }

        v25 = v5[33];
        v23 = __OFADD__(v25, 1);
        v26 = v25 + 1;
        if (v23)
        {
          goto LABEL_102;
        }

        if (v26 == *(v18 + 128))
        {
          v27 = *(v18 + 192);
          if (v27 >= v5[35])
          {
            v28 = v5[35];
          }

          else
          {
            v28 = *(v18 + 192);
          }
        }

        else
        {
          v28 = *(v18 + 192);
          v27 = v28;
        }

        v5[35] = v28;
        if (v27 < v5[34])
        {
          if (qword_1EA837248 != -1)
          {
            swift_once();
          }

          v64 = sub_182AD2698();
          __swift_project_value_buffer(v64, qword_1EA843418);
          v65 = sub_182AD2678();
          v66 = sub_182AD38C8();
          if (os_log_type_enabled(v65, v66))
          {
            loga = v65;
            v67 = swift_slowAlloc();
            v93 = swift_slowAlloc();
            v102[0] = v93;
            *v67 = 136315650;
            v68 = sub_182AD3BF8();
            v87 = sub_181C64FFC(v68, v69, v102);

            *(v67 + 4) = v87;
            *(v67 + 12) = 2080;
            *(v67 + 14) = sub_181C64FFC(1564427099, 0xE400000000000000, v102);
            *(v67 + 22) = 2080;
            *(v67 + 24) = sub_181C64FFC(0xD000000000000029, 0x8000000182BD7C80, v102);
            _os_log_impl(&dword_181A37000, loga, v66, "%s %s %s", v67, 0x20u);
            swift_arrayDestroy();
            MEMORY[0x1865DF520](v93, -1, -1);
            MEMORY[0x1865DF520](v67, -1, -1);
          }

          else
          {
          }
        }

        v52 = *(v18 + 192);
        v5[34] = v52;
        v5[33] = *(v18 + 128);
      }

      else
      {
        swift_beginAccess();
        v41 = v5[59];
        swift_beginAccess();
        v42 = *(v41 + 16);
        if (!*(v42 + 16))
        {
          goto LABEL_3;
        }

        v43 = sub_18225BD68(v12);
        if ((v44 & 1) == 0)
        {
          goto LABEL_3;
        }

        v18 = *(*(v42 + 56) + 8 * v43);
        swift_endAccess();
        if (!v8 || !v9)
        {
          goto LABEL_43;
        }

        v45 = *(v9 + 16);
        result = swift_beginAccess();
        v46 = *(v18 + 144);
        if (!v46)
        {
          goto LABEL_107;
        }

        if (v45 != *(v46 + 16))
        {
          swift_beginAccess();
          v56 = *(v8 + 128);

          LOBYTE(v56) = sub_181FFD0CC(v56, v9, v101, 2);

          *(v8 + 208) = v56 & 1;

          v101 = 0;
        }

        else
        {
LABEL_43:
        }

        swift_beginAccess();
        v21 = *(v18 + 144);

        if (*(v18 + 153) == 1)
        {
          v47 = *(v18 + 72);
          v23 = __OFADD__(v101, v47);
          v48 = v101 + v47;
          if (v23)
          {
            goto LABEL_106;
          }

          v101 = v48;
        }

        v49 = v5[52];
        v23 = __OFADD__(v49, 1);
        v50 = v49 + 1;
        if (v23)
        {
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
          return result;
        }

        if (v50 == *(v18 + 128))
        {
          v51 = *(v18 + 192);
          if (v51 >= v5[54])
          {
            v28 = v5[54];
          }

          else
          {
            v28 = *(v18 + 192);
          }
        }

        else
        {
          v28 = *(v18 + 192);
          v51 = v28;
        }

        v5[54] = v28;
        if (v51 < v5[53])
        {
          if (qword_1EA837248 != -1)
          {
            swift_once();
          }

          v76 = sub_182AD2698();
          __swift_project_value_buffer(v76, qword_1EA843418);
          v77 = sub_182AD2678();
          v78 = sub_182AD38C8();
          if (os_log_type_enabled(v77, v78))
          {
            logb = v77;
            v79 = swift_slowAlloc();
            v95 = swift_slowAlloc();
            v102[0] = v95;
            *v79 = 136315650;
            v80 = sub_182AD3BF8();
            v89 = sub_181C64FFC(v80, v81, v102);

            *(v79 + 4) = v89;
            *(v79 + 12) = 2080;
            *(v79 + 14) = sub_181C64FFC(1564427099, 0xE400000000000000, v102);
            *(v79 + 22) = 2080;
            *(v79 + 24) = sub_181C64FFC(0xD000000000000029, 0x8000000182BD7C80, v102);
            _os_log_impl(&dword_181A37000, logb, v78, "%s %s %s", v79, 0x20u);
            swift_arrayDestroy();
            MEMORY[0x1865DF520](v95, -1, -1);
            MEMORY[0x1865DF520](v79, -1, -1);
          }

          else
          {
          }
        }

        v52 = *(v18 + 192);
        v5[53] = v52;
        v5[52] = *(v18 + 128);
      }

      if (v52 < v28)
      {
        goto LABEL_67;
      }
    }

    else
    {
      swift_beginAccess();
      v29 = v5[21];
      swift_beginAccess();
      v30 = *(v29 + 16);
      if (!*(v30 + 16) || (v31 = sub_18225BD68(v12), (v32 & 1) == 0))
      {
LABEL_3:
        swift_endAccess();
        goto LABEL_4;
      }

      v18 = *(*(v30 + 56) + 8 * v31);
      swift_endAccess();
      if (!v8 || !v9)
      {
        goto LABEL_28;
      }

      v33 = *(v9 + 16);
      result = swift_beginAccess();
      v34 = *(v18 + 144);
      if (!v34)
      {
        goto LABEL_108;
      }

      if (v33 != *(v34 + 16))
      {
        swift_beginAccess();
        v55 = *(v8 + 128);

        LOBYTE(v55) = sub_181FFD0CC(v55, v9, v101, 0);

        *(v8 + 208) = v55 & 1;

        v101 = 0;
      }

      else
      {
LABEL_28:
      }

      swift_beginAccess();
      v21 = *(v18 + 144);

      if (*(v18 + 153) == 1)
      {
        v35 = *(v18 + 72);
        v23 = __OFADD__(v101, v35);
        v36 = v101 + v35;
        if (v23)
        {
          goto LABEL_105;
        }

        v101 = v36;
      }

      v37 = v5[14];
      v23 = __OFADD__(v37, 1);
      v38 = v37 + 1;
      if (v23)
      {
        goto LABEL_103;
      }

      if (v38 == *(v18 + 128))
      {
        v39 = *(v18 + 192);
        if (v39 >= v5[16])
        {
          v40 = v5[16];
        }

        else
        {
          v40 = *(v18 + 192);
        }
      }

      else
      {
        v40 = *(v18 + 192);
        v39 = v40;
      }

      v5[16] = v40;
      if (v39 < v5[15])
      {
        if (qword_1EA837248 != -1)
        {
          swift_once();
        }

        v70 = sub_182AD2698();
        __swift_project_value_buffer(v70, qword_1EA843418);
        v71 = sub_182AD2678();
        v72 = sub_182AD38C8();
        if (os_log_type_enabled(v71, v72))
        {
          v91 = v72;
          v73 = swift_slowAlloc();
          v94 = swift_slowAlloc();
          v102[0] = v94;
          *v73 = 136315650;
          v74 = sub_182AD3BF8();
          v88 = sub_181C64FFC(v74, v75, v102);

          *(v73 + 4) = v88;
          *(v73 + 12) = 2080;
          *(v73 + 14) = sub_181C64FFC(1564427099, 0xE400000000000000, v102);
          *(v73 + 22) = 2080;
          *(v73 + 24) = sub_181C64FFC(0xD000000000000029, 0x8000000182BD7C80, v102);
          _os_log_impl(&dword_181A37000, v71, v91, "%s %s %s", v73, 0x20u);
          swift_arrayDestroy();
          MEMORY[0x1865DF520](v94, -1, -1);
          MEMORY[0x1865DF520](v73, -1, -1);
        }
      }

      v53 = *(v18 + 192);
      v5[15] = v53;
      v5[14] = *(v18 + 128);
      if (v53 < v40)
      {
LABEL_67:
        if (qword_1EA837248 != -1)
        {
          swift_once();
        }

        v57 = sub_182AD2698();
        __swift_project_value_buffer(v57, qword_1EA843418);
        v58 = sub_182AD2678();
        v59 = sub_182AD38C8();
        log = v58;
        if (os_log_type_enabled(v58, v59))
        {
          v90 = v59;
          v60 = swift_slowAlloc();
          v92 = swift_slowAlloc();
          v102[0] = v92;
          *v60 = 136315650;
          v61 = sub_182AD3BF8();
          v63 = sub_181C64FFC(v61, v62, v102);

          *(v60 + 4) = v63;
          *(v60 + 12) = 2080;
          *(v60 + 14) = sub_181C64FFC(1564427099, 0xE400000000000000, v102);
          *(v60 + 22) = 2080;
          *(v60 + 24) = sub_181C64FFC(0xD000000000000029, 0x8000000182BD7C50, v102);
          _os_log_impl(&dword_181A37000, log, v90, "%s %s %s", v60, 0x20u);
          swift_arrayDestroy();
          MEMORY[0x1865DF520](v92, -1, -1);
          MEMORY[0x1865DF520](v60, -1, -1);
        }
      }
    }

    v8 = v18;
    v9 = v21;
    v7 = a2;
LABEL_4:
    swift_endAccess();
    --v11;
  }

  while (v11);
  if (v9 && v8)
  {
    swift_beginAccess();
    v82 = *(v8 + 128);

    LOBYTE(v82) = sub_181FFD0CC(v82, v9, v101, v7);

    *(v8 + 208) = v82 & 1;
  }

  v83 = (v99 + 16 * v4 + 24);
  do
  {
    v86 = *v83;
    if (*(v83 - 8))
    {
      if (*(v83 - 8) == 1)
      {
        swift_beginAccess();
        v84 = (v5 + 22);
        v85 = 1;
      }

      else
      {
        swift_beginAccess();
        v84 = (v5 + 41);
        v85 = 2;
      }
    }

    else
    {
      swift_beginAccess();
      v84 = (v5 + 3);
      v85 = 0;
    }

    sub_18200463C(v84, v85, v86, v5, a3);
    swift_endAccess();
    v83 -= 2;
    --v4;
  }

  while (v4);
}

uint64_t sub_18201BC10(uint64_t a1, unint64_t a2, void *a3)
{
  v5 = a1;
  v6 = *(a1 + 144);
  swift_beginAccess();
  v7 = *(v6 + 24);
  v8 = v7[4];
  if (v7[2] >= v7[3] + v8)
  {
    v9 = v7[3] + v8;
  }

  else
  {
    v9 = v7[2];
  }

  v76 = *(v6 + 24);
  v77 = v8;
  v78 = v9;

  v10 = swift_beginAccess();
  v11 = &__nwlog_fault_add_description_to_list(char const*)::mutex.__opaque[48];
  v68 = a2;
  v69 = a3;
  v67 = v5;
  if (v8 == v9)
  {
    goto LABEL_6;
  }

LABEL_5:
  v12 = v76;
  do
  {
    v14 = v77;
    v15 = ++v77;
    v16 = *(v12 + 8 * v14 + 40);
    swift_beginAccess();
    v17 = *(v6 + 16);
    if (!*(v17 + 16))
    {
      goto LABEL_51;
    }

    v18 = sub_18225BD68(v16);
    if ((v19 & 1) == 0)
    {
      goto LABEL_51;
    }

    v20 = *(*(v17 + 56) + 8 * v18);
    swift_endAccess();
    v21 = *(v20 + 200);
    if (!v21)
    {
      break;
    }

    v10 = swift_beginAccess();
    if (*(v5 + 24) < *(v20 + 128))
    {
      break;
    }

    if (a2 < v21)
    {
LABEL_47:
      __break(1u);
      goto LABEL_48;
    }

    if (a3[21] < a2 - v21)
    {
      v22 = *(v11 + 74);

      if (v22 != -1)
      {
        swift_once();
      }

      if (byte_1EA843430 == 1 && __nwlog_is_datapath_logging_enabled())
      {
        v73 = 0;
        v74 = 0xE000000000000000;
        sub_182AD3BA8();
        MEMORY[0x1865D9CA0](0xD000000000000015, 0x8000000182BD81C0);
        v72[0] = *(v20 + 128);
        sub_182AD3E18();
        MEMORY[0x1865D9CA0](0x20726574666120, 0xE700000000000000);
        v34 = *(v20 + 200);
        v35 = a2 >= v34;
        v36 = a2 - v34;
        if (!v35)
        {
          goto LABEL_52;
        }

        v72[0] = v36;
        v37 = sub_182AD41B8();
        MEMORY[0x1865D9CA0](v37);

        v38 = v73;
        v66 = v74;
        if (qword_1EA837248 != -1)
        {
          swift_once();
        }

        v39 = sub_182AD2698();
        __swift_project_value_buffer(v39, qword_1EA843418);
        v40 = swift_allocObject();
        *(v40 + 16) = "removeLostPackets(ackedPath:now:)";
        *(v40 + 24) = 33;
        *(v40 + 32) = 2;
        v41 = swift_allocObject();
        *(v41 + 16) = sub_181F8C724;
        *(v41 + 24) = v40;
        v42 = swift_allocObject();
        *(v42 + 16) = 1564427099;
        *(v42 + 24) = 0xE400000000000000;
        v43 = swift_allocObject();
        *(v43 + 16) = v38;
        *(v43 + 24) = v66;

        oslog = sub_182AD2678();
        v64 = sub_182AD38A8();
        v60 = swift_allocObject();
        *(v60 + 16) = 32;
        v61 = swift_allocObject();
        *(v61 + 16) = 8;
        v44 = swift_allocObject();
        *(v44 + 16) = sub_181F8C71C;
        *(v44 + 24) = v41;
        v45 = swift_allocObject();
        *(v45 + 16) = sub_181F8C718;
        *(v45 + 24) = v44;
        v63 = swift_allocObject();
        *(v63 + 16) = 32;
        v62 = swift_allocObject();
        *(v62 + 16) = 8;
        v46 = swift_allocObject();
        *(v46 + 16) = sub_181F8C720;
        *(v46 + 24) = v42;
        v47 = swift_allocObject();
        *(v47 + 16) = sub_181F8C718;
        *(v47 + 24) = v46;
        v48 = swift_allocObject();
        *(v48 + 16) = 32;
        v49 = swift_allocObject();
        *(v49 + 16) = 8;
        v50 = swift_allocObject();
        *(v50 + 16) = sub_181F8C720;
        *(v50 + 24) = v43;
        v51 = swift_allocObject();
        *(v51 + 16) = sub_181F8C718;
        *(v51 + 24) = v50;
        if (os_log_type_enabled(oslog, v64))
        {
          v55 = v45;
          v56 = v47;
          v57 = v51;
          v58 = v48;
          v59 = v49;
          v52 = swift_slowAlloc();
          v53 = swift_slowAlloc();
          v70 = v53;
          v71 = 0;
          *v52 = 770;
          v72[0] = v52 + 1;
          v73 = sub_181F8C728;
          v74 = v60;
          sub_181F73AE0(&v73, v72, &v71, &v70);
          v5 = v67;
          v11 = (&__nwlog_fault_add_description_to_list(char const*)::mutex + 56);

          v73 = sub_181F8C728;
          v74 = v61;
          sub_181F73AE0(&v73, v72, &v71, &v70);
          a2 = v68;

          v73 = sub_181F8C714;
          v74 = v55;
          sub_181F73AE0(&v73, v72, &v71, &v70);

          v73 = sub_181F8C728;
          v74 = v63;
          sub_181F73AE0(&v73, v72, &v71, &v70);

          v73 = sub_181F8C728;
          v74 = v62;
          sub_181F73AE0(&v73, v72, &v71, &v70);

          v73 = sub_181F8C714;
          v74 = v56;
          sub_181F73AE0(&v73, v72, &v71, &v70);

          v73 = sub_181F8C728;
          v74 = v58;
          sub_181F73AE0(&v73, v72, &v71, &v70);

          v73 = sub_181F8C728;
          v74 = v59;
          sub_181F73AE0(&v73, v72, &v71, &v70);

          v73 = sub_181F8C714;
          v74 = v57;
          sub_181F73AE0(&v73, v72, &v71, &v70);

          _os_log_impl(&dword_181A37000, oslog, v64, "%s %s %s", 0, 0x20u);
          swift_arrayDestroy();
          MEMORY[0x1865DF520](v53, -1, -1);
          MEMORY[0x1865DF520](0, -1, -1);

          a3 = v69;
        }

        else
        {

          a2 = v68;
          a3 = v69;
          v5 = v67;
          v11 = (&__nwlog_fault_add_description_to_list(char const*)::mutex + 56);
        }
      }

      swift_beginAccess();
      v23 = *(v6 + 16);
      if (!*(v23 + 16) || (v24 = sub_18225BD68(v16), (v25 & 1) == 0))
      {
        swift_endAccess();

        goto LABEL_36;
      }

      a3 = *(*(v23 + 56) + 8 * v24);
      swift_endAccess();
      swift_beginAccess();

      sub_1822501BC(v16);
      swift_endAccess();

      v27 = *(v6 + 24);
      v28 = v27[4];
      v29 = v27[3] + v28;
      if (v27[2] < v29)
      {
        v29 = v27[2];
      }

      v73 = *(v6 + 24);
      v74 = v28;
      v75 = v29;
      v30 = -1;
      while (1)
      {
        if (v28 == v75)
        {
          v26 = sub_181AC81FC(v26);
          if ((v26 & 1) == 0)
          {

LABEL_35:

            a2 = v68;
            a3 = v69;
            v5 = v67;
            v11 = (&__nwlog_fault_add_description_to_list(char const*)::mutex + 56);
            break;
          }

          v28 = v74;
        }

        v74 = v28 + 1;
        v31 = v30 + 2;
        if (__OFADD__(v30 + 1, 1))
        {
          __break(1u);
          goto LABEL_47;
        }

        v32 = *(v73 + v28 + 5);
        ++v30;
        ++v28;
        if (v32 == v16)
        {
          swift_beginAccess();
          if (v30 < *(*(v6 + 24) + 24))
          {

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_1820E6310();
            }

            v33 = *(v6 + 24);
            if (v30 < *(v33 + 24))
            {
              if (v31 >= v30)
              {
                sub_181D8977C(v30, v31, (v33 + 16), v33 + 40, v79);

                sub_18226EC18(v30, v31, (v33 + 16), (v33 + 40));
                swift_endAccess();

                goto LABEL_35;
              }

LABEL_50:
              __break(1u);
LABEL_51:
              swift_endAccess();
              __break(1u);
LABEL_52:
              __break(1u);

              while (1)
              {

                __break(1u);
              }
            }

LABEL_49:
            __break(1u);
            goto LABEL_50;
          }

LABEL_48:
          __break(1u);
          goto LABEL_49;
        }
      }
    }

LABEL_36:
    if (v15 != v78)
    {
      goto LABEL_5;
    }

LABEL_6:
    v13 = sub_181AC81FC(v10);
    v12 = v76;
  }

  while ((v13 & 1) != 0);
}

void sub_18201C7E0(uint64_t a1, uint64_t a2, _BYTE *a3, unint64_t a4)
{
  v7 = 0;
  v8 = *(a1 + 144);
  v9 = 2;
  do
  {
    if (v9 < 1)
    {
      goto LABEL_17;
    }

    swift_beginAccess();
    v10 = *(v8 + 16);
    v11 = *(v10 + 16);
    v12 = v11 - v7;
    if (__OFSUB__(v11, v7))
    {
      __break(1u);
LABEL_23:
      __break(1u);
      goto LABEL_24;
    }

    v13 = v12 - 1;
    if (__OFSUB__(v12, 1))
    {
      goto LABEL_23;
    }

    if (v13 < 0)
    {
      goto LABEL_16;
    }

    swift_beginAccess();
    v14 = *(v8 + 24);
    if (v13 >= v14[3] || v11 == 0)
    {
      goto LABEL_16;
    }

    v16 = v14[4] + v13;
    v17 = v14[2];
    if (v16 < v17)
    {
      v17 = 0;
    }

    v18 = sub_18225BD68(v14[v16 - v17 + 5]);
    if ((v19 & 1) == 0)
    {
      goto LABEL_16;
    }

    v20 = *(*(v10 + 56) + 8 * v18);
    swift_beginAccess();

    v21 = sub_18201A510(v20 + 16, a2);
    swift_endAccess();

    v9 -= v21 & 1;
    *a3 = 1;
  }

  while (!__OFADD__(v7++, 1));
  __break(1u);
LABEL_16:
  if (v9 != 1)
  {
    return;
  }

LABEL_17:
  if (sub_182047340(a4, 1, 0))
  {
    return;
  }

  if (qword_1EA837250 != -1)
  {
LABEL_24:
    swift_once();
  }

  if (byte_1EA843430 == 1 && __nwlog_is_datapath_logging_enabled())
  {
    if (qword_1EA837248 != -1)
    {
      swift_once();
    }

    v23 = sub_182AD2698();
    __swift_project_value_buffer(v23, qword_1EA843418);
    v24 = swift_allocObject();
    *(v24 + 16) = "sendPTO(connection:path:)";
    *(v24 + 24) = 25;
    *(v24 + 32) = 2;
    v25 = swift_allocObject();
    *(v25 + 16) = sub_181F8C724;
    *(v25 + 24) = v24;
    v26 = swift_allocObject();
    *(v26 + 16) = 1564427099;
    *(v26 + 24) = 0xE400000000000000;
    v27 = swift_allocObject();
    *(v27 + 16) = 0xD000000000000040;
    *(v27 + 24) = 0x8000000182BD86D0;
    v28 = sub_182AD2678();
    v29 = sub_182AD38A8();
    v30 = swift_allocObject();
    *(v30 + 16) = 32;
    v41 = swift_allocObject();
    *(v41 + 16) = 8;
    v31 = swift_allocObject();
    *(v31 + 16) = sub_181F8C71C;
    *(v31 + 24) = v25;
    v32 = swift_allocObject();
    *(v32 + 16) = sub_181F8C718;
    *(v32 + 24) = v31;
    v42 = swift_allocObject();
    *(v42 + 16) = 32;
    v43 = swift_allocObject();
    *(v43 + 16) = 8;
    v33 = swift_allocObject();
    *(v33 + 16) = sub_181F8C720;
    *(v33 + 24) = v26;
    v34 = swift_allocObject();
    *(v34 + 16) = sub_181F8C718;
    *(v34 + 24) = v33;
    v44 = swift_allocObject();
    *(v44 + 16) = 32;
    v45 = swift_allocObject();
    *(v45 + 16) = 8;
    v35 = swift_allocObject();
    *(v35 + 16) = sub_181F8C720;
    *(v35 + 24) = v27;
    v36 = swift_allocObject();
    *(v36 + 16) = sub_181F8C718;
    *(v36 + 24) = v35;
    v37 = v29;
    v38 = v28;
    if (os_log_type_enabled(v28, v29))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v48 = v40;
      v49 = 0;
      *v39 = 770;
      v50 = v39 + 2;
      v46 = sub_181F8C728;
      v47 = v30;
      sub_181F73AE0(&v46, &v50, &v49, &v48);

      v46 = sub_181F8C728;
      v47 = v41;
      sub_181F73AE0(&v46, &v50, &v49, &v48);

      v46 = sub_181F8C714;
      v47 = v32;
      sub_181F73AE0(&v46, &v50, &v49, &v48);

      v46 = sub_181F8C728;
      v47 = v42;
      sub_181F73AE0(&v46, &v50, &v49, &v48);

      v46 = sub_181F8C728;
      v47 = v43;
      sub_181F73AE0(&v46, &v50, &v49, &v48);

      v46 = sub_181F8C714;
      v47 = v34;
      sub_181F73AE0(&v46, &v50, &v49, &v48);

      v46 = sub_181F8C728;
      v47 = v44;
      sub_181F73AE0(&v46, &v50, &v49, &v48);

      v46 = sub_181F8C728;
      v47 = v45;
      sub_181F73AE0(&v46, &v50, &v49, &v48);

      v46 = sub_181F8C714;
      v47 = v36;
      sub_181F73AE0(&v46, &v50, &v49, &v48);

      _os_log_impl(&dword_181A37000, v38, v37, "%s %s %s", v39, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1865DF520](v40, -1, -1);
      MEMORY[0x1865DF520](v39, -1, -1);
    }

    else
    {
    }
  }
}

unint64_t sub_18201D014()
{
  result = qword_1EA839B98;
  if (!qword_1EA839B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA839B98);
  }

  return result;
}

unint64_t sub_18201D068()
{
  result = qword_1EA839BA0;
  if (!qword_1EA839BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA839BA0);
  }

  return result;
}

uint64_t sub_18201D0CC@<X0>(uint64_t result@<X0>, _WORD *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = result;
  v4 = *result;
  v5 = *(result + 16);
  if (*(result + 32) == 1 && *(result + 24))
  {
    goto LABEL_7;
  }

  v6 = *(result + 8) - v4;
  if (!v4)
  {
    v6 = 0;
  }

  v7 = __OFSUB__(v6, v5);
  v8 = v6 - v5;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    if (v8 < 2)
    {
LABEL_7:
      v9 = 1;
      *(result + 24) = 1;
      *(result + 32) = 1;
      v10 = 1;
LABEL_10:
      *a3 = v9;
      *(a3 + 8) = v10;
      return result;
    }

    if (v4)
    {
      v11 = a3;
      *a2 = bswap32(*(v4 + v5)) >> 16;
      result = sub_1820E2C6C(2);
      v9 = *(v3 + 24);
      v10 = *(v3 + 32);
      a3 = v11;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_18201D174@<X0>(uint64_t *a1@<X1>, uint64_t a2@<X8>)
{
  v4 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v4;
  if ((result & 1) == 0)
  {
    result = sub_182083570(v4);
    v4 = result;
    *a1 = result;
  }

  if (*(v4 + 16) < 3uLL)
  {
    __break(1u);
    goto LABEL_15;
  }

  result = Deserializer.uint8(_:)((v4 + 34), &v12);
  if (*(*a1 + 16) < 2uLL)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  result = Deserializer.uint8(_:)((*a1 + 33), &v10);
  if (!*(*a1 + 16))
  {
LABEL_16:
    __break(1u);
    return result;
  }

  result = Deserializer.uint8(_:)((*a1 + 32), &v8);
  if (v13 == 1 && (v6 = v12, v12 == 1))
  {
    v7 = 1;
  }

  else
  {
    if ((v11 & (v10 == 1)) != 0)
    {
      v6 = 1;
    }

    else
    {
      v6 = v8;
    }

    v7 = v11 & (v10 == 1) | v9;
  }

  *a2 = v6;
  *(a2 + 8) = v7 & 1;
  return result;
}

uint64_t sub_18201D27C@<X0>(uint64_t result@<X0>, _DWORD *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = result;
  v4 = *result;
  v5 = *(result + 16);
  if (*(result + 32) == 1 && *(result + 24))
  {
    goto LABEL_7;
  }

  v6 = *(result + 8) - v4;
  if (!v4)
  {
    v6 = 0;
  }

  v7 = __OFSUB__(v6, v5);
  v8 = v6 - v5;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    if (v8 < 4)
    {
LABEL_7:
      v9 = 1;
      *(result + 24) = 1;
      *(result + 32) = 1;
      v10 = 1;
LABEL_10:
      *a3 = v9;
      *(a3 + 8) = v10;
      return result;
    }

    if (v4)
    {
      v11 = a3;
      *a2 = bswap32(*(v4 + v5));
      result = sub_1820E2C6C(4);
      v9 = *(v3 + 24);
      v10 = *(v3 + 32);
      a3 = v11;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

void sub_18201D320(_DWORD **a1@<X0>, unint64_t a2@<X1>, __int128 *a3@<X8>)
{
  v6 = a1;
  v8 = &v237;
  v9 = a1[7];
  v10 = a1[8];
  v11 = a1[9];
  if (*(a1 + 24) == 5)
  {
    v12 = nw_frame_unclaimed_length(*a1);
    goto LABEL_6;
  }

  if (!v11)
  {
    goto LABEL_17;
  }

  v13 = v9 + v10;
  if (__OFADD__(v9, v10))
  {
    __break(1u);
    goto LABEL_106;
  }

  v14 = __OFSUB__(v11, v13);
  v12 = v11 - v13;
  if (v14)
  {
LABEL_106:
    __break(1u);
    goto LABEL_107;
  }

LABEL_6:
  if (v12 < 21)
  {
LABEL_17:
    v4 = *(a2 + 80);
    v3 = *(a2 + 88);
    *&v237 = 0;
    *(&v237 + 1) = 0xE000000000000000;

    v26 = &v237;
    sub_182AD3BA8();

    *&v237 = 0xD00000000000001BLL;
    *(&v237 + 1) = 0x8000000182BD8A10;
    if (*(v6 + 24) == 5)
    {
      v27 = nw_frame_unclaimed_length(*v6);
    }

    else if (v11)
    {
      v35 = v9 + v10;
      if (__OFADD__(v9, v10))
      {
        __break(1u);
        goto LABEL_122;
      }

      v14 = __OFSUB__(v11, v35);
      v27 = v11 - v35;
      if (v14)
      {
        __break(1u);
        goto LABEL_30;
      }
    }

    else
    {
      v27 = 0;
    }

    *&v225 = v27;
    v56 = sub_182AD41B8();
    MEMORY[0x1865D9CA0](v56);

    v57 = v237;
    if (qword_1EA837248 != -1)
    {
      swift_once();
    }

    v58 = sub_182AD2698();
    __swift_project_value_buffer(v58, qword_1EA843418);

    v59 = sub_182AD2678();
    v60 = sub_182AD38B8();

    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      v62 = v4;
      v63 = swift_slowAlloc();
      *&v237 = v63;
      *v61 = 136315650;
      v64 = sub_182AD3BF8();
      v66 = sub_181C64FFC(v64, v65, &v237);

      *(v61 + 4) = v66;
      *(v61 + 12) = 2080;
      v67 = sub_181C64FFC(v62, v3, &v237);

      *(v61 + 14) = v67;
      *(v61 + 22) = 2080;
      v68 = sub_181C64FFC(v57, *(&v57 + 1), &v237);

      *(v61 + 24) = v68;
      _os_log_impl(&dword_181A37000, v59, v60, "%s %s %s", v61, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1865DF520](v63, -1, -1);
      MEMORY[0x1865DF520](v61, -1, -1);
    }

    else
    {
    }

    sub_1820223F0(&v237);
    v69 = *v246;
    a3[8] = v245;
    a3[9] = v69;
    *(a3 + 156) = *&v246[12];
    v70 = v242;
    a3[4] = v241;
    a3[5] = v70;
    v71 = v244;
    a3[6] = v243;
    a3[7] = v71;
    v72 = *fromStart;
    *a3 = v237;
    a3[1] = v72;
    v24 = v239;
    v23 = v240;
    goto LABEL_48;
  }

  v15 = *(a2 + 952);
  if (v15 && (v16 = *(v15 + 80)) != 0)
  {
    v17 = *(v16 + 16);
  }

  else
  {
    v17 = 0;
  }

  v4 = &v225;
  v3 = 0;
  sub_18201F1A0(v6, v17, v235, &v237);
  v9 = &v214;
  if (v246[27] == 1)
  {
    if (*(v6 + 24) == 5)
    {
      v25 = nw_frame_unclaimed_length(*v6);
      goto LABEL_33;
    }

LABEL_30:
    v36 = v6[9];
    if (!v36)
    {
LABEL_38:
      v233 = v245;
      v234[0] = *v246;
      *(v4 + 156) = *&v246[12];
      v229 = v241;
      v230 = v242;
      v231 = v243;
      v232 = v244;
      v225 = v237;
      v226 = *fromStart;
      v227 = v239;
      v228 = v240;
      nullsub_41(&v225);
LABEL_12:
      v18 = v234[0];
      a3[8] = v233;
      a3[9] = v18;
      v19 = *(v4 + 156);
LABEL_13:
      *(a3 + 156) = v19;
      v20 = v230;
      a3[4] = v229;
      a3[5] = v20;
      v21 = v232;
      a3[6] = v231;
      a3[7] = v21;
      v22 = v226;
      *a3 = v225;
      a3[1] = v22;
      v24 = v227;
      v23 = v228;
LABEL_48:
      a3[2] = v24;
      a3[3] = v23;
      return;
    }

    v37 = v6[7];
    v38 = v6[8];
    v14 = __OFADD__(v37, v38);
    v39 = v38 + v37;
    if (v14)
    {
      __break(1u);
    }

    else
    {
      v14 = __OFSUB__(v36, v39);
      v25 = v36 - v39;
      if (!v14)
      {
LABEL_33:
        if (v25)
        {
          v41 = *(a2 + 80);
          v40 = *(a2 + 88);
          v42 = qword_1EA837248;

          if (v42 != -1)
          {
            swift_once();
          }

          v43 = sub_182AD2698();
          __swift_project_value_buffer(v43, qword_1EA843418);

          v44 = sub_182AD2678();
          v45 = sub_182AD38B8();

          if (os_log_type_enabled(v44, v45))
          {
            v46 = swift_slowAlloc();
            v47 = swift_slowAlloc();
            *&v225 = v47;
            *v46 = 136315650;
            v48 = sub_182AD3BF8();
            v50 = sub_181C64FFC(v48, v49, &v225);

            *(v46 + 4) = v50;
            v4 = &v225;
            *(v46 + 12) = 2080;
            v51 = sub_181C64FFC(v41, v40, &v225);

            *(v46 + 14) = v51;
            *(v46 + 22) = 2080;
            *(v46 + 24) = sub_181C64FFC(0xD000000000000024, 0x8000000182BD89E0, &v225);
            _os_log_impl(&dword_181A37000, v44, v45, "%s %s %s", v46, 0x20u);
            swift_arrayDestroy();
            v52 = v47;
            v9 = &v214;
            MEMORY[0x1865DF520](v52, -1, -1);
            MEMORY[0x1865DF520](v46, -1, -1);
          }

          else
          {
          }

LABEL_40:
          sub_1820223F0(&v214);
          v53 = v9[7];
          v54 = v9[9];
          a3[8] = v9[8];
          a3[9] = v54;
          v55 = *(v9 + 156);
LABEL_60:
          *(a3 + 156) = v55;
          v78 = v219;
          a3[4] = v218;
          a3[5] = v78;
          a3[6] = v220;
          a3[7] = v53;
          v79 = v215;
          *a3 = v214;
          a3[1] = v79;
          v80 = v217;
          a3[2] = v216;
          a3[3] = v80;
          v233 = v245;
          v234[0] = *v246;
          *(v4 + 156) = *&v246[12];
          goto LABEL_61;
        }

        goto LABEL_38;
      }
    }

    __break(1u);
    goto LABEL_128;
  }

  v224 = 0;
  v28 = *(a2 + 328);
  v29 = BYTE8(v243);
  v30 = *(&v241 + 1);
  v31 = v242;

  sub_1822975B8(v29, v30, v31, v28, &v224);

  v32 = fromStart[0];
  if (!Frame.unclaim(fromStart:fromEnd:adjustSingleIPAggregate:)(fromStart[0], 0, 1))
  {
    goto LABEL_59;
  }

  v33 = BYTE1(v242);

  v11 = sub_182232B60(v33);

  *&v240 = v11;
  fromStart[1] = v32;
  LOBYTE(v239) = 0;
  if ((sub_1820224B4(a2, &v237, v6) & 1) == 0)
  {
    goto LABEL_59;
  }

  v213 = 0;
  sub_1820E1710(v6, 0, &v213, &v225);
  if (BYTE8(v225) == 1 && v225)
  {
    v225 = xmmword_182AEFDE0;
    LOBYTE(v226) = 0;
    sub_181F5F494();
    swift_willThrowTypedImpl();
LABEL_24:
    v233 = v245;
    v234[0] = *v246;
    v34 = *&v246[12];
LABEL_57:
    *(v4 + 156) = v34;
    v229 = v241;
    v230 = v242;
    v231 = v243;
    v232 = v244;
    v225 = v237;
    v226 = *fromStart;
    v227 = v239;
    v228 = v240;
    sub_181F843A0(&v225);
    sub_1820223F0(&v225);
    goto LABEL_12;
  }

  if (!Frame.claim(fromStart:fromEnd:adjustSingleIPAggregate:)(v32, 0, 1) || ((v4 = &v225, v73 = (v213 & 3) + 1, LODWORD(v210) = v246[24], v246[24] != 1) ? ((LODWORD(v209) = v213 & 0x18, (v213 & 4) != 0) ? (v74 = 4) : (v74 = 3), BYTE1(v242) = v74) : (LODWORD(v209) = v213 & 0xF), v75 = sub_182022CC8(v6, (v213 & 3u) + 1), (v76 & 1) != 0))
  {
LABEL_59:
    sub_1820223F0(&v214);
    v53 = v221;
    v77 = v223[0];
    a3[8] = v222;
    a3[9] = v77;
    v55 = *(v223 + 12);
    goto LABEL_60;
  }

  BYTE8(v243) = v29;
  if (__OFADD__(v32, v73))
  {
    __break(1u);
    goto LABEL_174;
  }

  fromStart[0] = v32 + v73;
  v81 = v224 + 1;
  if (__OFADD__(v224, 1))
  {
LABEL_174:
    __break(1u);
    goto LABEL_175;
  }

  v82 = 1 << (8 * v73);
  v83 = v82 >> 1;
  if (__OFADD__(v224, v82 >> 1))
  {
LABEL_175:
    __break(1u);
    goto LABEL_176;
  }

  v84 = (v224 + (v82 >> 1)) & -v82;
  v4 = (v75 + v84);
  if (__OFADD__(v75, v84))
  {
LABEL_176:
    __break(1u);
    goto LABEL_177;
  }

  *&v244 = v75 + v84;
  v14 = __OFADD__(v81, v83);
  v85 = v81 + v83;
  if (!v14)
  {
    v208 = v32 + v73;
    if (v85 < v4 && v4 > v82)
    {
      *&v244 = v4 - v82;
      v4 = (v4 - v82);
    }

    v29 = *(a2 + 80);
    v32 = *(a2 + 88);
    v86 = qword_1EA837250;

    if (v86 == -1)
    {
      goto LABEL_71;
    }

    goto LABEL_178;
  }

LABEL_177:
  __break(1u);
LABEL_178:
  swift_once();
LABEL_71:
  if (byte_1EA843430 == 1 && (__nwlog_is_datapath_logging_enabled() & 1) != 0)
  {
    strcpy(&v225, "received pn ");
    BYTE13(v225) = 0;
    HIWORD(v225) = -5120;
    v206 = v4;
    *&v214 = v4;
    v179 = sub_182AD41B8();
    MEMORY[0x1865D9CA0](v179);

    v180 = v225;
    if (qword_1EA837248 != -1)
    {
      swift_once();
    }

    v181 = sub_182AD2698();
    __swift_project_value_buffer(v181, qword_1EA843418);
    v182 = swift_allocObject();
    *(v182 + 16) = "parse(frame:connection:path:ecn:)";
    *(v182 + 24) = 33;
    *(v182 + 32) = 2;
    v183 = swift_allocObject();
    *(v183 + 16) = sub_181F8C724;
    *(v183 + 24) = v182;
    v204 = swift_allocObject();
    *(v204 + 16) = v29;
    *(v204 + 24) = v32;
    v195 = swift_allocObject();
    *(v195 + 16) = v180;

    oslog = sub_182AD2678();
    v184 = sub_182AD38A8();
    v197 = swift_allocObject();
    *(v197 + 16) = 32;
    v198 = swift_allocObject();
    *(v198 + 16) = 8;
    v185 = swift_allocObject();
    *(v185 + 16) = sub_181F8C71C;
    *(v185 + 24) = v183;
    v186 = swift_allocObject();
    *(v186 + 16) = sub_181F8C718;
    *(v186 + 24) = v185;
    v199 = v186;
    v200 = swift_allocObject();
    *(v200 + 16) = 32;
    v201 = swift_allocObject();
    *(v201 + 16) = 8;
    v187 = swift_allocObject();
    *(v187 + 16) = sub_181F8C720;
    *(v187 + 24) = v204;
    v188 = swift_allocObject();
    *(v188 + 16) = sub_181F8C718;
    *(v188 + 24) = v187;
    v202 = v188;
    v203 = swift_allocObject();
    *(v203 + 16) = 32;
    v205 = swift_allocObject();
    *(v205 + 16) = 8;
    v189 = swift_allocObject();
    *(v189 + 16) = sub_181F8C720;
    *(v189 + 24) = v195;
    v190 = swift_allocObject();
    *(v190 + 16) = sub_181F8C718;
    *(v190 + 24) = v189;
    v191 = v184;
    v8 = oslog;
    if (os_log_type_enabled(oslog, v184))
    {
      v192 = swift_slowAlloc();
      v193 = swift_slowAlloc();
      v211 = v193;
      v212 = 0;
      *v192 = 770;
      v196 = v193;
      *&v214 = v192 + 2;
      *&v225 = sub_181F8C728;
      *(&v225 + 1) = v197;
      sub_181F73AE0(&v225, &v214, &v212, &v211);

      *&v225 = sub_181F8C728;
      *(&v225 + 1) = v198;
      sub_181F73AE0(&v225, &v214, &v212, &v211);

      *&v225 = sub_181F8C714;
      *(&v225 + 1) = v199;
      sub_181F73AE0(&v225, &v214, &v212, &v211);

      *&v225 = sub_181F8C728;
      *(&v225 + 1) = v200;
      sub_181F73AE0(&v225, &v214, &v212, &v211);

      *&v225 = sub_181F8C728;
      *(&v225 + 1) = v201;
      sub_181F73AE0(&v225, &v214, &v212, &v211);

      *&v225 = sub_181F8C714;
      *(&v225 + 1) = v202;
      sub_181F73AE0(&v225, &v214, &v212, &v211);

      *&v225 = sub_181F8C728;
      *(&v225 + 1) = v203;
      sub_181F73AE0(&v225, &v214, &v212, &v211);

      *&v225 = sub_181F8C728;
      *(&v225 + 1) = v205;
      sub_181F73AE0(&v225, &v214, &v212, &v211);

      *&v225 = sub_181F8C714;
      *(&v225 + 1) = v190;
      sub_181F73AE0(&v225, &v214, &v212, &v211);

      _os_log_impl(&dword_181A37000, oslog, v191, "%s %s %s", v192, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1865DF520](v196, -1, -1);
      MEMORY[0x1865DF520](v192, -1, -1);

      goto LABEL_189;
    }

    goto LABEL_188;
  }

  while (1)
  {
    v87 = v6[7];
    v207 = v6[8];
    v88 = v6[9];
    v10 = v208;
    if (*(v6 + 24) == 5)
    {
      break;
    }

    if (!v88)
    {
      goto LABEL_87;
    }

    v90 = v207 + v87;
    if (__OFADD__(v87, v207))
    {
      goto LABEL_186;
    }

    v14 = __OFSUB__(v88, v90);
    v89 = v88 - v90;
    if (!v14)
    {
      goto LABEL_79;
    }

LABEL_187:
    __break(1u);
LABEL_188:

LABEL_189:
    v8 = &v237;
    v4 = v206;
  }

  v89 = nw_frame_unclaimed_length(*v6);
LABEL_79:
  if (v89 < v11)
  {
    goto LABEL_88;
  }

  v206 = v4;
  if (*(v6 + 24) == 5)
  {
    v91 = nw_frame_unclaimed_length(*v6);
LABEL_109:
    v4 = &v225;
    goto LABEL_110;
  }

  v4 = &v225;
  if (!v88)
  {
LABEL_107:
    v91 = 0;
    goto LABEL_110;
  }

  v92 = v207 + v87;
  if (__OFADD__(v87, v207))
  {
    goto LABEL_191;
  }

  v14 = __OFSUB__(v88, v92);
  v91 = v88 - v92;
  if (v14)
  {
    __break(1u);
LABEL_87:
    if (v11 <= 0)
    {
      v206 = v4;
      v91 = 0;
      goto LABEL_109;
    }

LABEL_88:
    if (v210)
    {
      v93 = 18508;
    }

    else
    {
      v93 = 18515;
    }

    v94 = *(a2 + 88);
    v210 = *(a2 + 80);
    *&v225 = 0;
    *(&v225 + 1) = 0xE000000000000000;

    sub_182AD3BA8();

    *&v225 = 0x2074726F6853;
    *(&v225 + 1) = 0xE600000000000000;
    MEMORY[0x1865D9CA0](v93, 0xE200000000000000);

    MEMORY[0x1865D9CA0](0x3A74656B63617020, 0xE900000000000020);
    if (*(v6 + 24) == 5)
    {
      v95 = nw_frame_unclaimed_length(*v6);
LABEL_99:
      *&v214 = v95;
      v97 = sub_182AD41B8();
      MEMORY[0x1865D9CA0](v97);

      MEMORY[0x1865D9CA0](2112544, 0xE300000000000000);
      *&v214 = v11;
      v98 = sub_182AD41B8();
      MEMORY[0x1865D9CA0](v98);

      v99 = v225;
      if (qword_1EA837248 != -1)
      {
        swift_once();
      }

      v100 = sub_182AD2698();
      __swift_project_value_buffer(v100, qword_1EA843418);

      v101 = sub_182AD2678();
      v102 = sub_182AD38B8();

      if (os_log_type_enabled(v101, v102))
      {
        v103 = swift_slowAlloc();
        v104 = swift_slowAlloc();
        *&v225 = v104;
        *v103 = 136315650;
        v105 = sub_182AD3BF8();
        v107 = sub_181C64FFC(v105, v106, &v225);

        *(v103 + 4) = v107;
        *(v103 + 12) = 2080;
        v108 = sub_181C64FFC(v210, v94, &v225);

        *(v103 + 14) = v108;
        *(v103 + 22) = 2080;
        v109 = sub_181C64FFC(v99, *(&v99 + 1), &v225);

        *(v103 + 24) = v109;
        _os_log_impl(&dword_181A37000, v101, v102, "%s %s %s", v103, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1865DF520](v104, -1, -1);
        MEMORY[0x1865DF520](v103, -1, -1);
      }

      else
      {
      }

      sub_1820223F0(&v214);
      v110 = v221;
      v111 = v223[0];
      a3[8] = v222;
      a3[9] = v111;
      *(a3 + 156) = *(v223 + 12);
      v112 = v219;
      a3[4] = v218;
      a3[5] = v112;
      a3[6] = v220;
      a3[7] = v110;
      v113 = v215;
      *a3 = v214;
      a3[1] = v113;
      v114 = v217;
      a3[2] = v216;
      a3[3] = v114;
      v233 = v245;
      v234[0] = *v246;
      *(v234 + 12) = *&v246[12];
      goto LABEL_61;
    }

    if (!v88)
    {
LABEL_98:
      v95 = 0;
      goto LABEL_99;
    }

    v96 = v207 + v87;
    if (!__OFADD__(v87, v207))
    {
      v14 = __OFSUB__(v88, v96);
      v95 = v88 - v96;
      if (!v14)
      {
        goto LABEL_99;
      }

      __break(1u);
      goto LABEL_98;
    }

    __break(1u);
LABEL_191:
    __break(1u);
LABEL_192:
    swift_once();
LABEL_117:
    v120 = sub_182AD2698();
    __swift_project_value_buffer(v120, qword_1EA843418);

    v26 = sub_182AD2678();
    v121 = sub_182AD38B8();

    if (os_log_type_enabled(v26, v121))
    {
      v122 = swift_slowAlloc();
      v123 = swift_slowAlloc();
      *&v225 = v123;
      *v122 = 136315650;
      v124 = sub_182AD3BF8();
      v126 = sub_181C64FFC(v124, v125, &v225);

      *(v122 + 4) = v126;
      *(v122 + 12) = 2080;
      v127 = sub_181C64FFC(v209, v6, &v225);

      *(v122 + 14) = v127;
      *(v122 + 22) = 2080;
      *(v122 + 24) = sub_181C64FFC(0xD00000000000001ALL, v210, &v225);
      _os_log_impl(&dword_181A37000, v26, v121, "%s %s %s", v122, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1865DF520](v123, -1, -1);
      MEMORY[0x1865DF520](v122, -1, -1);

LABEL_123:
      v129 = *(a2 + 1144);
      v130 = *(a2 + 1152);
      *(a2 + 1144) = 0xD00000000000001ALL;
      v131 = v210;
      goto LABEL_124;
    }

LABEL_122:

    goto LABEL_123;
  }

LABEL_110:
  v9 = &v214;
  v14 = __OFSUB__(v91, v11);
  v115 = (v91 - v11);
  if (v14)
  {
    __break(1u);
LABEL_186:
    __break(1u);
    goto LABEL_187;
  }

  *(&v239 + 1) = v115;
  if (!Frame.unclaim(fromStart:fromEnd:adjustSingleIPAggregate:)(v10, 0, 1))
  {
    goto LABEL_40;
  }

  v116 = sub_182022EE0(&v237, v6, a2);
  if (v3)
  {
    sub_18202232C(v116, v117, v118);
    goto LABEL_24;
  }

  if (!Frame.claim(fromStart:fromEnd:adjustSingleIPAggregate:)(v10, 0, 1))
  {
    goto LABEL_40;
  }

  v8 = &v225;
  if (v209)
  {
    v6 = *(a2 + 88);
    v209 = *(a2 + 80);
    v210 = 0x8000000182BD8960;
    v119 = qword_1EA837248;

    if (v119 == -1)
    {
      goto LABEL_117;
    }

    goto LABEL_192;
  }

  if (*(v6 + 24) == 5)
  {
    v128 = nw_frame_unclaimed_length(*v6);
    goto LABEL_131;
  }

LABEL_128:
  v138 = v6[9];
  if (!v138)
  {
    goto LABEL_161;
  }

  v139 = v6[7];
  v140 = v6[8];
  v14 = __OFADD__(v139, v140);
  v141 = v140 + v139;
  if (v14)
  {
    __break(1u);
    goto LABEL_197;
  }

  v14 = __OFSUB__(v138, v141);
  v128 = v138 - v141;
  if (v14)
  {
LABEL_197:
    __break(1u);
LABEL_198:
    swift_once();
LABEL_168:
    v169 = sub_182AD2698();
    __swift_project_value_buffer(v169, qword_1EA843418);

    v170 = sub_182AD2678();
    v171 = sub_182AD38B8();

    if (os_log_type_enabled(v170, v171))
    {
      v172 = swift_slowAlloc();
      v173 = swift_slowAlloc();
      *&v225 = v173;
      *v172 = 136315650;
      v174 = sub_182AD3BF8();
      v176 = sub_181C64FFC(v174, v175, &v225);

      *(v172 + 4) = v176;
      *(v172 + 12) = 2080;
      v177 = sub_181C64FFC(v210, v3, &v225);

      *(v172 + 14) = v177;
      *(v172 + 22) = 2080;
      v178 = sub_181C64FFC(v209, a2, &v225);

      *(v172 + 24) = v178;
      _os_log_impl(&dword_181A37000, v170, v171, "%s %s %s", v172, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1865DF520](v173, -1, -1);
      MEMORY[0x1865DF520](v172, -1, -1);
    }

    else
    {
    }

    goto LABEL_125;
  }

LABEL_131:
  if (!v128)
  {
LABEL_161:
    v6 = *(a2 + 80);
    v3 = *(a2 + 88);
    v157 = qword_1EA837248;

    if (v157 != -1)
    {
LABEL_195:
      swift_once();
    }

    v158 = sub_182AD2698();
    __swift_project_value_buffer(v158, qword_1EA843418);

    v159 = sub_182AD2678();
    v160 = sub_182AD38B8();

    if (os_log_type_enabled(v159, v160))
    {
      v161 = swift_slowAlloc();
      v162 = swift_slowAlloc();
      *&v225 = v162;
      *v161 = 136315650;
      v163 = sub_182AD3BF8();
      v165 = sub_181C64FFC(v163, v164, &v225);

      *(v161 + 4) = v165;
      *(v161 + 12) = 2080;
      v166 = sub_181C64FFC(v6, v3, &v225);

      *(v161 + 14) = v166;
      *(v161 + 22) = 2080;
      *(v161 + 24) = sub_181C64FFC(0xD000000000000015, 0x8000000182BD89C0, &v225);
      _os_log_impl(&dword_181A37000, v159, v160, "%s %s %s", v161, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1865DF520](v162, -1, -1);
      MEMORY[0x1865DF520](v161, -1, -1);
    }

    else
    {
    }

LABEL_165:
    v233 = v245;
    v234[0] = *v246;
    *(v234 + 12) = *&v246[12];
    v229 = v241;
    v230 = v242;
    v231 = v243;
    v232 = v244;
    v225 = v237;
    v226 = *fromStart;
    v227 = v239;
    v228 = v240;
    nullsub_41(&v225);
    v167 = v234[0];
    a3[8] = v233;
    a3[9] = v167;
    v19 = *(v234 + 12);
    goto LABEL_13;
  }

  while (1)
  {
    if (*(v6 + 24) == 5)
    {
      v142 = nw_frame_unclaimed_length(*v6);
LABEL_137:
      if (v11 >= v142)
      {
        goto LABEL_165;
      }

      goto LABEL_138;
    }

    v143 = v6[9];
    if (v143)
    {
      v144 = v6[7];
      v145 = v6[8];
      v14 = __OFADD__(v144, v145);
      v146 = v145 + v144;
      if (v14)
      {
        __break(1u);
LABEL_194:
        __break(1u);
        goto LABEL_195;
      }

      v14 = __OFSUB__(v143, v146);
      v142 = v143 - v146;
      if (v14)
      {
        goto LABEL_194;
      }

      goto LABEL_137;
    }

    if ((v11 & 0x8000000000000000) == 0)
    {
      goto LABEL_165;
    }

LABEL_138:
    v212 = 0;
    sub_1820E1764(v6, 0, &v212, &v225);
    if (BYTE8(v225) == 1 && v225)
    {
      v225 = xmmword_182AEFDE0;
      LOBYTE(v226) = 0;
      sub_181F5F494();
      swift_willThrowTypedImpl();
LABEL_171:
      v233 = v245;
      v234[0] = *v246;
      v34 = *&v246[12];
      v4 = &v225;
      goto LABEL_57;
    }

    v147 = v212;
    v148 = sub_18211CE54(v212);
    if (v149 == -1)
    {
      v3 = *(a2 + 88);
      v210 = *(a2 + 80);
      *&v225 = 0;
      *(&v225 + 1) = 0xE000000000000000;

      sub_182AD3BA8();
      MEMORY[0x1865D9CA0](0xD000000000000013, 0x8000000182BD8980);
      *&v214 = v147;
      v168 = sub_182AD41B8();
      MEMORY[0x1865D9CA0](v168);

      MEMORY[0x1865D9CA0](0x206E702820, 0xE500000000000000);
      *&v214 = v206;
      sub_182AD3E18();
      MEMORY[0x1865D9CA0](41, 0xE100000000000000);
      a2 = *(&v225 + 1);
      v209 = v225;
      if (qword_1EA837248 != -1)
      {
        goto LABEL_198;
      }

      goto LABEL_168;
    }

    if (v147 >= 0x40)
    {
      break;
    }

    if (v149 == 2 && (v148 - 23) < 6)
    {
      goto LABEL_180;
    }

LABEL_153:
    sub_1821034DC(v148, v149, v6, &v237, a2, v235, &v214);
    if (v3)
    {
      sub_18202232C(v235[0], v235[1], v236);
      goto LABEL_171;
    }

    v227 = v216;
    v228 = v217;
    v229 = v218;
    v225 = v214;
    v226 = v215;
    v150 = *(&v244 + 1);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v150 = sub_181F59790(0, *(v150 + 2) + 1, 1, v150);
    }

    v152 = *(v150 + 2);
    v151 = *(v150 + 3);
    if (v152 >= v151 >> 1)
    {
      v150 = sub_181F59790((v151 > 1), v152 + 1, 1, v150);
    }

    *(v150 + 2) = v152 + 1;
    v153 = &v150[80 * v152];
    *(v153 + 2) = v225;
    v154 = v226;
    v155 = v227;
    v156 = v229;
    *(v153 + 5) = v228;
    *(v153 + 6) = v156;
    *(v153 + 3) = v154;
    *(v153 + 4) = v155;
    *(&v244 + 1) = v150;
  }

  if (v147 < 0x4000)
  {
    if (v149 != 2 || (v148 - 23) >= 2)
    {
      goto LABEL_180;
    }

    goto LABEL_153;
  }

  if (!(v147 >> 30))
  {
    if (v149 != 2 || (v148 - 25) >= 4 || ((v148 + 9) & 0xE) == 0)
    {
      goto LABEL_180;
    }

    goto LABEL_153;
  }

  if (v147 >> 62)
  {
    sub_182AD3EA8();
    __break(1u);

    while (1)
    {

      __break(1u);
    }
  }

LABEL_180:
  v131 = 0x8000000182BD89A0;
  v129 = *(a2 + 1144);
  v130 = *(a2 + 1152);
  *(a2 + 1144) = 0xD00000000000001BLL;
LABEL_124:
  *(a2 + 1152) = v131;
  v132 = *(a2 + 1160);
  *(a2 + 1160) = 4;
  sub_182023268(v129, v130, v132);
LABEL_125:
  sub_1820223F0(&v214);
  v133 = v221;
  v134 = v223[0];
  a3[8] = v222;
  a3[9] = v134;
  *(a3 + 156) = *(v223 + 12);
  v135 = v219;
  a3[4] = v218;
  a3[5] = v135;
  a3[6] = v220;
  a3[7] = v133;
  v136 = v215;
  *a3 = v214;
  a3[1] = v136;
  v137 = v217;
  a3[2] = v216;
  a3[3] = v137;
  v233 = v245;
  v234[0] = *v246;
  *(v8 + 156) = *&v246[12];
LABEL_61:
  v229 = v241;
  v230 = v242;
  v231 = v243;
  v232 = v244;
  v225 = v237;
  v226 = *fromStart;
  v227 = v239;
  v228 = v240;
  sub_181F843A0(&v225);
}

void sub_18201F1A0(_DWORD **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v71 = 0;
  if (*(a1 + 24) == 5)
  {
    v9 = nw_frame_unclaimed_length(*a1);
    goto LABEL_9;
  }

  v10 = a1[9];
  if (!v10)
  {
    goto LABEL_8;
  }

  v11 = a1[7];
  v12 = a1[8];
  v13 = __OFADD__(v11, v12);
  v14 = v12 + v11;
  if (v13)
  {
    __break(1u);
    return;
  }

  v9 = v10 - v14;
  if (__OFSUB__(v10, v14))
  {
    __break(1u);
LABEL_8:
    v9 = 0;
  }

LABEL_9:
  sub_1820D733C(a1, 1, &v71, v46);
  if (v46[8] != 1 || *v46 == 0)
  {
    if (v71 < 0)
    {
      sub_18201F410(a1, v71, v9, &v44, v46);
      if (v4)
      {
        goto LABEL_16;
      }
    }

    else
    {
      sub_182020C28(a1, v71, a2, v9, &v44, v46);
      if (v4)
      {
LABEL_16:
        v16 = v44;
        v17 = v45;
        goto LABEL_17;
      }
    }

    v18 = v46[0];
    v19 = *&v46[8];
    v20 = v47;
    v21 = v48;
    v22 = v49;
    v23 = v50;
    v24 = v51;
    v25 = v52;
    v26 = v53;
    v27 = v54;
    v28 = v55;
    v29 = v56;
    v31 = v57;
    v30 = v58;
    v32 = v59;
    v33 = v60;
    v34 = v61;
    v35 = v62;
    v36 = v63;
    v37 = v64;
    v38 = v65;
    v39 = v66;
    v40 = v67;
    v41 = v68;
    v42 = v69;
    v43 = v70;
    v46[0] = v48;
    *a4 = v18;
    *(a4 + 8) = v19;
    *(a4 + 24) = v20;
    *(a4 + 32) = v21;
    *(a4 + 40) = v22;
    *(a4 + 56) = v23;
    *(a4 + 64) = v24;
    *(a4 + 72) = v25;
    *(a4 + 80) = v26;
    *(a4 + 81) = v27;
    *(a4 + 88) = v28;
    *(a4 + 104) = v29;
    *(a4 + 112) = v31;
    *(a4 + 120) = v30;
    *(a4 + 128) = v32;
    *(a4 + 136) = v33;
    *(a4 + 137) = v34;
    *(a4 + 138) = v35;
    *(a4 + 139) = v36;
    *(a4 + 144) = v37;
    *(a4 + 152) = v38;
    *(a4 + 160) = v39;
    *(a4 + 168) = v40;
    *(a4 + 169) = v41;
    *(a4 + 170) = v42;
    *(a4 + 171) = v43;
    return;
  }

  *v46 = xmmword_182AEFDE0;
  v46[16] = 0;
  sub_181F5F494();
  swift_willThrowTypedImpl();
  v16 = xmmword_182AEFDE0;
  v17 = 0;
LABEL_17:
  *a3 = v16;
  *(a3 + 16) = v17;
}

unint64_t sub_18201F3C8@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_1820E2CC0();
  *a2 = result;
  v7 = *(a1 + 32);
  *a3 = *(a1 + 24);
  *(a3 + 8) = v7;
  return result;
}

double sub_18201F410@<D0>(_DWORD **a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v188 = a4;
  LODWORD(v184) = a2;
  v183 = a5;
  v7 = sub_182AD27E8();
  v181 = *(v7 - 8);
  v182 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v180 = (&v176 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839BA8);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v176 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA83A980);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v187 = &v176 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v176 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v185 = &v176 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8398E0);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v22 = &v176 - v21;
  v214 = 0;
  v213 = 0;
  v210 = MEMORY[0x1E69E7CC0];
  v211 = MEMORY[0x1E69E7CC0];
  v212 = 0;
  v189[2] = &v214;
  v189[3] = &v213;
  v189[4] = &v211;
  v189[5] = &v212;
  v189[6] = &v210;
  if (*(a1 + 24) != 2)
  {
LABEL_4:
    v32 = *(a1 + 11);
    v206 = *(a1 + 10);
    v207 = v32;
    v208 = *(a1 + 12);
    v209 = *(a1 + 208);
    v33 = *(a1 + 7);
    v202 = *(a1 + 6);
    v203 = v33;
    v34 = *(a1 + 9);
    v204 = *(a1 + 8);
    v205 = v34;
    v35 = *(a1 + 3);
    v198 = *(a1 + 2);
    v199 = v35;
    v36 = *(a1 + 5);
    v200 = *(a1 + 4);
    v201 = v36;
    v37 = *(a1 + 1);
    v196 = *a1;
    v197 = v37;
    v38 = Frame.unclaimedBytes.getter();
    if (v40)
    {
      v190 = 1;
      LOBYTE(v191) = 1;
      goto LABEL_32;
    }

    if (v38)
    {
      v41 = v39;
    }

    else
    {
      v41 = 0;
    }

    *&v196 = v38;
    *(&v196 + 1) = v41;
    v197 = 0uLL;
    LOBYTE(v198) = 1;
    Deserializer.uint32NetworkByteOrder(_:)(&v214, &v192);
    Deserializer.uint8(_:)(&v213, &v190);
    Deserializer.buffer(_:length:)(v213, v195);
    Deserializer.uint8(_:)(&v212, v194);
    Deserializer.buffer(_:length:)(v212, &v193);
    v42 = *(&v197 + 1);
    if (v198)
    {
      if (*(&v197 + 1))
      {
        v43 = 1;
LABEL_31:
        v190 = v42;
        LOBYTE(v191) = v43 & 1;
        goto LABEL_32;
      }

      if (v196)
      {
        v66 = *(&v196 + 1) - v196;
      }

      else
      {
        v66 = 0;
      }

      v42 = v66 - v197;
      if (__OFSUB__(v66, v197))
      {
        __break(1u);
      }

      else if ((v42 & 0x8000000000000000) == 0)
      {
        v55 = v66 == v197;
        goto LABEL_28;
      }

      __break(1u);
LABEL_141:
      __break(1u);
LABEL_142:
      __break(1u);
      goto LABEL_143;
    }

    v55 = 0;
LABEL_28:
    v67 = Frame.claim(fromStart:fromEnd:adjustSingleIPAggregate:)(v197, 0, 1);
    if (!v67)
    {
      v42 = 2;
    }

    v43 = !v67 || v55;
    goto LABEL_31;
  }

  v179 = a3;
  v23 = swift_projectBox();
  sub_181AB5D28(v23, v22, &qword_1EA8398E0);
  v24 = sub_182AD2868();
  a3 = *(v24 - 8) + 8;
  v177 = *a3;
  v177(v22, v24);
  v25 = *(a1 + 11);
  v206 = *(a1 + 10);
  v207 = v25;
  v208 = *(a1 + 12);
  v209 = *(a1 + 208);
  v26 = *(a1 + 7);
  v202 = *(a1 + 6);
  v203 = v26;
  v27 = *(a1 + 9);
  v204 = *(a1 + 8);
  v205 = v27;
  v28 = *(a1 + 3);
  v198 = *(a1 + 2);
  v199 = v28;
  v29 = *(a1 + 5);
  v200 = *(a1 + 4);
  v201 = v29;
  v30 = *a1;
  v31 = *(a1 + 1);
  *&v178 = a1;
  v196 = v30;
  v197 = v31;
  sub_1821438A8(v11);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_181F49A88(v11, &qword_1EA839BA8);
    a3 = v179;
    a1 = v178;
    goto LABEL_4;
  }

  v44 = v185;
  sub_182022420(v11, v185);
  sub_181AB5D28(v44, v17, &unk_1EA83A980);
  v45 = sub_182AD27F8();
  v46 = v177;
  v177(v17, v24);
  v47 = *(v45 + 16);

  if (v47)
  {
    if (v47 == 1)
    {
      v48 = v187;
      sub_181AB5D28(v44, v187, &unk_1EA83A980);
      v49 = sub_182AD27F8();
      v46(v48, v24);
      v50 = v182;
      if (!*(v49 + 16))
      {
LABEL_157:

        __break(1u);
        goto LABEL_158;
      }

      v52 = v180;
      v51 = v181;
      (*(v181 + 16))(v180, v49 + ((*(v51 + 80) + 32) & ~*(v51 + 80)), v182);

      MEMORY[0x1EEE9AC00](v53);
      a1 = v178;
      *(&v176 - 4) = v178;
      *(&v176 - 24) = 1;
      *(&v176 - 2) = sub_182022410;
      *(&v176 - 1) = v189;
      v54 = v186;
      sub_182AD27D8();
      v186 = v54;
      sub_181F49A88(v44, &unk_1EA83A980);
      (*(v51 + 8))(v52, v50);
      a3 = v179;
    }

    else
    {
      v192 = xmmword_182AE7580;
      sub_181AB5D28(v44, v17, &unk_1EA83A980);
      v56 = sub_182AD27F8();
      v46(v17, v24);
      isa = v56[2].isa;
      if (isa)
      {
        v58 = v182;
        v59 = *(v181 + 80);
        v180 = v56;
        v60 = v56 + ((v59 + 32) & ~v59);
        v187 = *(v181 + 72);
        v61 = (v181 + 16);
        v62 = v186;
        do
        {
          *(&v197 + 1) = v58;
          *&v198 = MEMORY[0x1E6969D40];
          boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(&v196);
          (*v61)(boxed_opaque_existential_0Tm, v60, v58);
          __swift_project_boxed_opaque_existential_1(&v196, *(&v197 + 1));
          sub_182AD1DC8();
          v65 = v190;
          v64 = v191;
          __swift_destroy_boxed_opaque_existential_1(&v196);
          sub_182AD2178();
          sub_181C1F2E4(v65, v64);
          v60 += v187;
          isa = (isa - 1);
        }

        while (isa);
        v186 = v62;
      }

      v99 = v192;
      MEMORY[0x1EEE9AC00](v98);
      a1 = v178;
      *(&v176 - 4) = v178;
      *(&v176 - 24) = 1;
      *(&v176 - 2) = sub_182022410;
      *(&v176 - 1) = v189;
      v100 = v186;
      sub_1820E375C(sub_182022490, (&v176 - 6), v99, *(&v99 + 1));
      v186 = v100;
      sub_181F49A88(v185, &unk_1EA83A980);
      sub_181C1F2E4(v99, *(&v99 + 1));
      a3 = v179;
    }
  }

  else
  {
    sub_181F49A88(v44, &unk_1EA83A980);
    v190 = 1;
    LOBYTE(v191) = 1;
    a3 = v179;
    a1 = v178;
  }

LABEL_32:
  if (v191 == 1 && v190)
  {
    goto LABEL_34;
  }

  v69 = v213;

  sub_1822C3068(v187, v69, &v196);
  v70 = v196;
  v71 = v212;

  sub_1822C3068(v185, v71, &v196);
  v72 = v196;
  v73 = v214;
  if (v214 != 1)
  {
    if (v214)
    {

      *&v196 = 0;
      *(&v196 + 1) = 0xE000000000000000;
      sub_182AD3BA8();

      *&v196 = 0xD000000000000016;
      *(&v196 + 1) = 0x8000000182BD88B0;
      LODWORD(v192) = v73;
      v79 = sub_182AD41B8();
      MEMORY[0x1865D9CA0](v79);

      v80 = v196;
      if (qword_1EA837248 != -1)
      {
        swift_once();
      }

      v81 = sub_182AD2698();
      __swift_project_value_buffer(v81, qword_1EA843418);

      v82 = sub_182AD2678();
      v83 = sub_182AD38B8();

      if (os_log_type_enabled(v82, v83))
      {
        v84 = swift_slowAlloc();
        v85 = swift_slowAlloc();
        *&v196 = v85;
        *v84 = 136315650;
        v86 = sub_182AD3BF8();
        v88 = sub_181C64FFC(v86, v87, &v196);

        *(v84 + 4) = v88;
        *(v84 + 12) = 2080;
        *(v84 + 14) = sub_181C64FFC(1564427099, 0xE400000000000000, &v196);
        *(v84 + 22) = 2080;
        v89 = sub_181C64FFC(v80, *(&v80 + 1), &v196);

        *(v84 + 24) = v89;
        _os_log_impl(&dword_181A37000, v82, v83, "%s %s %s", v84, 0x20u);
        swift_arrayDestroy();
        a3 = v188;
        MEMORY[0x1865DF520](v85, -1, -1);
        MEMORY[0x1865DF520](v84, -1, -1);
      }

      else
      {

        a3 = v188;
      }

      v196 = xmmword_182AE8BA0;
      LOBYTE(v197) = 0;
      sub_181F5F494();
      swift_willThrowTypedImpl();
      v68 = 4;
      goto LABEL_127;
    }

    v74 = a1[7];
    v75 = a1[8];
    v76 = a1[9];
    if (*(a1 + 24) == 5)
    {
      v77 = nw_frame_unclaimed_length(*a1);
    }

    else
    {
      if (!v76)
      {
        goto LABEL_88;
      }

      v90 = v75 + v74;
      if (__OFADD__(v74, v75))
      {
LABEL_143:
        __break(1u);
        goto LABEL_144;
      }

      v91 = __OFSUB__(v76, v90);
      v77 = v76 - v90;
      if (v91)
      {
LABEL_144:
        __break(1u);
        goto LABEL_145;
      }
    }

    if ((v77 & 3) != 0)
    {

      *&v196 = 0;
      *(&v196 + 1) = 0xE000000000000000;
      v70 = &v196;
      sub_182AD3BA8();

      *&v196 = 0xD000000000000018;
      *(&v196 + 1) = 0x8000000182BD88F0;
      if (*(a1 + 24) == 5)
      {
        v92 = nw_frame_unclaimed_length(*a1);
LABEL_117:
        v110 = -v92 < 0;
        v147 = -v92 & 3;
        v148 = v92 & 3;
        if (!v110)
        {
          v148 = -v147;
        }

        *&v192 = v148;
        v149 = sub_182AD41B8();
        MEMORY[0x1865D9CA0](v149);

        v150 = v196;
        if (qword_1EA837248 != -1)
        {
          swift_once();
        }

        v151 = sub_182AD2698();
        __swift_project_value_buffer(v151, qword_1EA843418);

        v152 = sub_182AD2678();
        v153 = sub_182AD38B8();

        if (!os_log_type_enabled(v152, v153))
        {

          a3 = v188;
          goto LABEL_126;
        }

        v154 = swift_slowAlloc();
        v155 = swift_slowAlloc();
        *&v196 = v155;
        *v154 = 136315650;
        v156 = sub_182AD3BF8();
        v158 = sub_181C64FFC(v156, v157, &v196);

        *(v154 + 4) = v158;
        *(v154 + 12) = 2080;
        *(v154 + 14) = sub_181C64FFC(1564427099, 0xE400000000000000, &v196);
        *(v154 + 22) = 2080;
        v159 = sub_181C64FFC(v150, *(&v150 + 1), &v196);

        *(v154 + 24) = v159;
        _os_log_impl(&dword_181A37000, v152, v153, "%s %s %s", v154, 0x20u);
        swift_arrayDestroy();
        a3 = v188;
        MEMORY[0x1865DF520](v155, -1, -1);
        v160 = v154;
        goto LABEL_123;
      }

      if (!v76)
      {
        v92 = 0;
        goto LABEL_117;
      }

      v96 = v75 + v74;
      if (__OFADD__(v74, v75))
      {
        goto LABEL_149;
      }

      v91 = __OFSUB__(v76, v96);
      v92 = v76 - v96;
      if (!v91)
      {
        goto LABEL_117;
      }

      __break(1u);
      goto LABEL_69;
    }

    if (*(a1 + 24) == 5)
    {
      v179 = v70;
      v95 = nw_frame_unclaimed_length(*a1);
      goto LABEL_82;
    }

    if (v76)
    {
      v109 = v75 + v74;
      if (__OFADD__(v74, v75))
      {
LABEL_153:
        __break(1u);
        goto LABEL_154;
      }

      v91 = __OFSUB__(v76, v109);
      v95 = v76 - v109;
      if (v91)
      {
LABEL_154:
        __break(1u);
        goto LABEL_155;
      }

      v179 = v70;
LABEL_82:
      v110 = -v95 < 0;
      v111 = -v95 & 3;
      v112 = v95 & 3;
      if (v110)
      {
        v113 = v112;
      }

      else
      {
        v113 = -v111;
      }

      if (v113 < 0)
      {
        goto LABEL_142;
      }

      if (v113)
      {
        v114 = sub_182AD3428();
        *(v114 + 16) = v113;
        bzero((v114 + 32), 4 * v113);
LABEL_90:
        *&v192 = v114;
        sub_1820D5A58(a1, 1, v113, &v192, &v196);
        if (BYTE8(v196) != 1 || !v196)
        {
          v116 = *(v192 + 16);
          v117 = MEMORY[0x1E69E7CC0];
          v177 = v192;
          if (v116)
          {
            a3 = v192 + 32;
            v184 = 0x8000000182BD8910;
            *&v115 = 136315650;
            v178 = v115;
            do
            {
              while (1)
              {
                v119 = *a3;
                a3 += 4;
                v118 = v119;
                if (v119)
                {
                  if (v118 != 1)
                  {
                    break;
                  }
                }

                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v117 = sub_181F59BF8(0, *(v117 + 2) + 1, 1, v117);
                }

                v121 = *(v117 + 2);
                v120 = *(v117 + 3);
                if (v121 >= v120 >> 1)
                {
                  v117 = sub_181F59BF8((v120 > 1), v121 + 1, 1, v117);
                }

                *(v117 + 2) = v121 + 1;
                v117[v121 + 32] = v118;
                if (!--v116)
                {
                  goto LABEL_109;
                }
              }

              *&v196 = 0;
              *(&v196 + 1) = 0xE000000000000000;
              sub_182AD3BA8();

              *&v196 = 0xD000000000000011;
              *(&v196 + 1) = v184;
              LODWORD(v190) = v118;
              v122 = sub_182AD41B8();
              MEMORY[0x1865D9CA0](v122);

              v123 = v196;
              if (qword_1EA837248 != -1)
              {
                swift_once();
              }

              v124 = sub_182AD2698();
              __swift_project_value_buffer(v124, qword_1EA843418);

              v125 = sub_182AD2678();
              v126 = sub_182AD38B8();

              LODWORD(v188) = v126;
              if (os_log_type_enabled(v125, v126))
              {
                v127 = swift_slowAlloc();
                v181 = v123;
                v128 = v127;
                v182 = swift_slowAlloc();
                *&v196 = v182;
                *v128 = v178;
                v129 = sub_182AD3BF8();
                v180 = v125;
                v131 = sub_181C64FFC(v129, v130, &v196);

                *(v128 + 4) = v131;
                *(v128 + 12) = 2080;
                *(v128 + 14) = sub_181C64FFC(1564427099, 0xE400000000000000, &v196);
                *(v128 + 22) = 2080;
                v132 = sub_181C64FFC(v181, *(&v123 + 1), &v196);

                *(v128 + 24) = v132;
                v125 = v180;
                _os_log_impl(&dword_181A37000, v180, v188, "%s %s %s", v128, 0x20u);
                v133 = v182;
                swift_arrayDestroy();
                MEMORY[0x1865DF520](v133, -1, -1);
                MEMORY[0x1865DF520](v128, -1, -1);
              }

              else
              {
              }

              --v116;
            }

            while (v116);
          }

LABEL_109:
          v134 = v183;
          *v183 = 4;
          *(v134 + 16) = 0;
          *(v134 + 24) = 0;
          *(v134 + 8) = -1;
          *(v134 + 32) = 1;
          *(v134 + 72) = 0;
          *(v134 + 48) = 0;
          *(v134 + 56) = 0;
          *(v134 + 40) = 0;
          *(v134 + 64) = 0;
          *(v134 + 80) = 1281;
          *(v134 + 88) = 0;
          *(v134 + 96) = 0;
          *(v134 + 144) = 0;
          *(v134 + 136) = 0;
          *(v134 + 120) = MEMORY[0x1E69E7CC0];
          *(v134 + 128) = 0;
          *(v134 + 152) = 2;
          *(v134 + 160) = 0;
          *(v134 + 168) = 16908289;
          v135 = v179;

          *(v134 + 88) = v135;

          *(v134 + 96) = v72;
          *(v134 + 160) = v117;
          v136 = *(v135 + 16);

          v91 = __OFADD__(v136, 6);
          v137 = v136 + 6;
          if (!v91)
          {
            v138 = *(v72 + 16);

            v91 = __OFADD__(v137, v138 + 1);
            v139 = v137 + v138 + 1;
            if (!v91)
            {
              v140 = *(v117 + 2);

              if (!(v140 >> 61))
              {
                if (!__OFADD__(v139, 4 * v140))
                {
                  v141 = v183;
                  *(v183 + 16) = v139 + 4 * v140;
                  *(v141 + 104) = 0;
                  *(v141 + 112) = -1;
                  *(v141 + 152) = 0;
                  return result;
                }

                goto LABEL_148;
              }

LABEL_147:
              __break(1u);
LABEL_148:
              __break(1u);
LABEL_149:
              __break(1u);
LABEL_150:
              __break(1u);
              goto LABEL_151;
            }

LABEL_146:
            __break(1u);
            goto LABEL_147;
          }

LABEL_145:
          __break(1u);
          goto LABEL_146;
        }

        goto LABEL_92;
      }

LABEL_89:
      v114 = MEMORY[0x1E69E7CC0];
      goto LABEL_90;
    }

LABEL_88:
    v179 = v70;
    v113 = 0;
    goto LABEL_89;
  }

  if ((v184 & 0x40) == 0)
  {
    a3 = v188;

    if (qword_1EA837248 == -1)
    {
LABEL_137:
      v169 = sub_182AD2698();
      __swift_project_value_buffer(v169, qword_1EA843418);
      v152 = sub_182AD2678();
      v170 = sub_182AD38B8();
      if (!os_log_type_enabled(v152, v170))
      {
        goto LABEL_124;
      }

      v171 = swift_slowAlloc();
      v172 = swift_slowAlloc();
      *&v196 = v172;
      *v171 = 136315650;
      v173 = sub_182AD3BF8();
      v175 = sub_181C64FFC(v173, v174, &v196);

      *(v171 + 4) = v175;
      *(v171 + 12) = 2080;
      *(v171 + 14) = sub_181C64FFC(1564427099, 0xE400000000000000, &v196);
      *(v171 + 22) = 2080;
      *(v171 + 24) = sub_181C64FFC(0xD00000000000001DLL, 0x8000000182BD88D0, &v196);
      _os_log_impl(&dword_181A37000, v152, v170, "%s %s %s", v171, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1865DF520](v172, -1, -1);
      v160 = v171;
LABEL_123:
      MEMORY[0x1865DF520](v160, -1, -1);
LABEL_124:

LABEL_126:
      v196 = xmmword_182AEFDE0;
      LOBYTE(v197) = 0;
      sub_181F5F494();
      swift_willThrowTypedImpl();
      v68 = 14;
      goto LABEL_127;
    }

LABEL_158:
    swift_once();
    goto LABEL_137;
  }

  v78 = (v184 >> 4) & 3;
  *&v192 = 0;
  if (v78 > 1)
  {
    if (v78 != 2)
    {
      goto LABEL_61;
    }

    v93 = 1;
    sub_1820D6A9C(a1, 1, &v192, &v196);
    if (BYTE8(v196) != 1)
    {
      v94 = 1;
      goto LABEL_70;
    }

    v94 = 1;
    if (v196)
    {
LABEL_61:

LABEL_34:
      v196 = xmmword_182AEFDE0;
      LOBYTE(v197) = 0;
      sub_181F5F494();
      swift_willThrowTypedImpl();
LABEL_35:
      v68 = 14;
      a3 = v188;
LABEL_127:

      *a3 = v68;
      *(a3 + 8) = 0;
      *(a3 + 16) = 0;
      return result;
    }

LABEL_70:
    if (*(a1 + 24) == 5)
    {
      v97 = nw_frame_unclaimed_length(*a1);
    }

    else
    {
      v97 = a1[9];
      if (v97)
      {
        v101 = a1[7];
        v102 = a1[8];
        v91 = __OFADD__(v101, v102);
        v103 = v102 + v101;
        if (v91)
        {
LABEL_151:
          __break(1u);
          goto LABEL_152;
        }

        v91 = __OFSUB__(v97, v103);
        v97 -= v103;
        if (v91)
        {
LABEL_152:
          __break(1u);
          goto LABEL_153;
        }
      }
    }

    v104 = a3 - v97;
    if (!__OFSUB__(a3, v97))
    {
      v105 = v72;
      v106 = v192;
      v107 = v183;
      *v183 = 4;
      *(v107 + 16) = 0;
      *(v107 + 24) = 0;
      *(v107 + 8) = -1;
      *(v107 + 32) = 1;
      *(v107 + 72) = 0;
      *(v107 + 48) = 0;
      *(v107 + 56) = 0;
      *(v107 + 40) = 0;
      *(v107 + 64) = 0;
      *(v107 + 80) = 1281;
      *(v107 + 88) = 0;
      *(v107 + 96) = 0;
      *(v107 + 144) = 0;
      *(v107 + 136) = 0;
      *(v107 + 120) = MEMORY[0x1E69E7CC0];
      *(v107 + 128) = 0;
      *(v107 + 152) = 2;
      *(v107 + 160) = 0;
      *(v107 + 168) = 131073;

      *(v107 + 88) = v70;

      *(v107 + 96) = v105;
      *(v107 + 81) = v94;
      *(v107 + 104) = v93;
      *(v107 + 112) = -1;
      *(v107 + 40) = v106;
      *(v107 + 16) = v104;
      return result;
    }

    goto LABEL_141;
  }

  if (v78)
  {
LABEL_69:
    v94 = 3;
    v93 = 2;
    goto LABEL_70;
  }

  v195[0] = MEMORY[0x1E69E7CC0];
  sub_1820D6258(a1, 1, &v190, v195, &v192, &v196);
  if (BYTE8(v196) == 1 && v196)
  {
LABEL_92:

    v196 = xmmword_182AEFDE0;
    LOBYTE(v197) = 0;
    sub_181F5F494();
    swift_willThrowTypedImpl();

    goto LABEL_35;
  }

  v188 = v72;
  v142 = v70;
  v143 = v195[0];
  v144 = v192;
  if (*(a1 + 24) == 5)
  {
    v145 = *a1;

    v146 = nw_frame_unclaimed_length(v145);
  }

  else
  {
    v161 = a1[9];
    if (v161)
    {
      v162 = a1[7];
      v163 = a1[8];
      v91 = __OFADD__(v162, v163);
      v164 = v163 + v162;
      if (v91)
      {
LABEL_155:
        __break(1u);
        goto LABEL_156;
      }

      v146 = v161 - v164;
      if (__OFSUB__(v161, v164))
      {
LABEL_156:
        __break(1u);
        goto LABEL_157;
      }
    }

    else
    {

      v146 = 0;
    }
  }

  if (__OFSUB__(a3, v146))
  {
    goto LABEL_150;
  }

  LOBYTE(v196) = 1;
  v194[0] = 1;
  swift_bridgeObjectRelease_n();
  v165 = v196;
  v166 = v194[0];

  v167 = v183;
  *v183 = 4;
  *(v167 + 8) = -1;
  *(v167 + 16) = a3 - v146;
  *(v167 + 24) = 0;
  *(v167 + 32) = v165;
  *(v167 + 48) = 0;
  *(v167 + 56) = 0;
  *(v167 + 40) = v144;
  *(v167 + 64) = 0;
  *(v167 + 72) = 0;
  *(v167 + 80) = v166;
  *(v167 + 81) = 0;
  v168 = v188;
  *(v167 + 88) = v142;
  *(v167 + 96) = v168;
  *(v167 + 104) = 0;
  *(v167 + 112) = -1;
  *(v167 + 120) = MEMORY[0x1E69E7CC0];
  *(v167 + 128) = 0;
  *(v167 + 136) = 0;
  *(v167 + 160) = 0;
  *&result = 131073;
  *(v167 + 168) = 131073;
  *(v167 + 144) = v143;
  *(v167 + 152) = 1;
  return result;
}

uint64_t sub_182020C28@<X0>(__int128 *a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  if ((a2 & 0x40) == 0)
  {
    if (qword_1EA837248 == -1)
    {
LABEL_16:
      v23 = sub_182AD2698();
      __swift_project_value_buffer(v23, qword_1EA843418);
      v24 = sub_182AD2678();
      v25 = sub_182AD38B8();
      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        v27 = swift_slowAlloc();
        *&v31 = v27;
        *v26 = 136315650;
        v28 = sub_182AD3BF8();
        v30 = sub_181C64FFC(v28, v29, &v31);

        *(v26 + 4) = v30;
        *(v26 + 12) = 2080;
        *(v26 + 14) = sub_181C64FFC(1564427099, 0xE400000000000000, &v31);
        *(v26 + 22) = 2080;
        *(v26 + 24) = sub_181C64FFC(0xD00000000000001ELL, 0x8000000182BD8BB0, &v31);
        _os_log_impl(&dword_181A37000, v24, v25, "%s %s %s", v26, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1865DF520](v27, -1, -1);
        MEMORY[0x1865DF520](v26, -1, -1);
      }

      v31 = xmmword_182AEFDE0;
      v32 = 0;
      sub_181F5F494();
      result = swift_willThrowTypedImpl();
      goto LABEL_9;
    }

LABEL_22:
    swift_once();
    goto LABEL_16;
  }

  v12 = MEMORY[0x1E69E7CC0];
  v33 = MEMORY[0x1E69E7CC0];
  sub_1820D72E8(a1, 1, &v33, a3, &v31);
  if (BYTE8(v31) == 1 && v31 != 0)
  {
    v31 = xmmword_182AEFDE0;
    v32 = 0;
    sub_181F5F494();
    swift_willThrowTypedImpl();

LABEL_9:
    *a5 = xmmword_182AEFDE0;
    *(a5 + 16) = 0;
    return result;
  }

  a5 = v33;

  sub_1822C3068(v14, a3, &v31);
  v15 = v31;
  if (*(a1 + 24) == 5)
  {
    v16 = nw_frame_unclaimed_length(*a1);
  }

  else
  {
    v16 = *(a1 + 9);
    if (v16)
    {
      v18 = *(a1 + 7);
      v19 = *(a1 + 8);
      v20 = __OFADD__(v18, v19);
      v21 = v19 + v18;
      if (v20)
      {
LABEL_20:
        __break(1u);
        goto LABEL_21;
      }

      v20 = __OFSUB__(v16, v21);
      v16 -= v21;
      if (v20)
      {
LABEL_21:
        __break(1u);
        goto LABEL_22;
      }
    }
  }

  v20 = __OFSUB__(a4, v16);
  v22 = a4 - v16;
  if (v20)
  {
    __break(1u);
    goto LABEL_20;
  }

  *a6 = 4;
  *(a6 + 8) = -1;
  *(a6 + 24) = 0;
  *(a6 + 32) = 1;
  *(a6 + 72) = 0;
  *(a6 + 48) = 0;
  *(a6 + 56) = 0;
  *(a6 + 40) = 0;
  *(a6 + 64) = 0;
  *(a6 + 80) = 1;
  *(a6 + 96) = 0;
  *(a6 + 144) = 0;
  *(a6 + 120) = v12;
  *(a6 + 128) = 0;
  *(a6 + 136) = 0;
  *(a6 + 152) = 2;
  *(a6 + 160) = 0;
  *(a6 + 168) = 0;
  *(a6 + 171) = 0;

  *(a6 + 88) = v15;
  *(a6 + 16) = v22;
  *(a6 + 170) = (a2 & 0x20) != 0;
  *(a6 + 104) = 2;
  *(a6 + 112) = -1;
  *(a6 + 81) = 3;
  return result;
}

uint64_t sub_182020F90@<X0>(_DWORD *a1@<X1>, _BYTE *a2@<X2>, _BYTE *a3@<X4>, uint64_t a4@<X8>)
{
  Deserializer.uint32NetworkByteOrder(_:)(a1, &v20);
  Deserializer.uint8(_:)(a2, &v18);
  Deserializer.buffer(_:length:)(*a2, &v16);
  Deserializer.uint8(_:)(a3, &v14);
  result = Deserializer.buffer(_:length:)(*a3, &v12);
  v8 = v19;
  if (v20 == 1)
  {
    v9 = v21;
  }

  else
  {
    v9 = 0;
  }

  if (v18 != 1)
  {
    v8 = 0;
  }

  v10 = 1;
  v11 = 1;
  if ((v9 & 1) == 0 && (v8 & 1) == 0)
  {
    if (v17 != 1 || (v10 = v16, v16 != 1))
    {
      if ((v15 & (v14 == 1)) != 0)
      {
        v10 = 1;
      }

      else
      {
        v10 = v12;
      }

      v11 = v15 & (v14 == 1) | v13;
    }
  }

  *a4 = v10;
  *(a4 + 8) = v11 & 1;
  return result;
}

uint64_t sub_182021098@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, char **a3@<X2>, uint64_t a4@<X8>)
{
  if (a2 < 0)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v7 = a2;
  if (a2)
  {
    v6 = a3;
    v8 = a1;
    v9 = *a1;
    v4 = a1[1];
    v5 = *a3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v6 = v5;
    v26 = a4;
    if (isUniquelyReferenced_nonNull_native)
    {
LABEL_4:
      v12 = 0;
      *v6 = v5;
      v27 = v4 - v9;
      v28 = v9;
      if (v9)
      {
        v13 = v4 - v9;
      }

      else
      {
        v13 = 0;
      }

      v5 = MEMORY[0x1E69E7CC0];
      while (1)
      {
        if (v7 == v12)
        {
          __break(1u);
LABEL_38:
          __break(1u);
LABEL_39:
          __break(1u);
LABEL_40:
          __break(1u);
          goto LABEL_41;
        }

        v9 = *v6;
        result = swift_isUniquelyReferenced_nonNull_native();
        *v6 = v9;
        if ((result & 1) == 0)
        {
          result = sub_1820835D4(v9);
          v9 = result;
          *v6 = result;
        }

        if (v12 >= *(v9 + 16))
        {
          goto LABEL_38;
        }

        v15 = v8[2];
        if (*(v8 + 32) == 1 && v8[3])
        {
          goto LABEL_19;
        }

        if (__OFSUB__(v13, v15))
        {
          goto LABEL_39;
        }

        if (v13 - v15 < 4)
        {
          goto LABEL_19;
        }

        if (!v28)
        {
          __break(1u);
          return result;
        }

        *(v9 + 4 * v12 + 32) = *(v28 + v15);
        if (__OFSUB__(v27, v15))
        {
          goto LABEL_40;
        }

        if (v27 - v15 <= 3)
        {
LABEL_19:
          v4 = 1;
          v8[3] = 1;
          *(v8 + 32) = 1;
          v16 = 1;
        }

        else
        {
          v8[2] = v15 + 4;
          v4 = v8[3];
          v16 = *(v8 + 32);
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v5 = sub_181F5A68C(0, *(v5 + 2) + 1, 1, v5);
        }

        v18 = *(v5 + 2);
        v17 = *(v5 + 3);
        v9 = v18 + 1;
        if (v18 >= v17 >> 1)
        {
          v5 = sub_181F5A68C((v17 > 1), v18 + 1, 1, v5);
        }

        ++v12;
        *(v5 + 2) = v9;
        v19 = &v5[16 * v18];
        *(v19 + 4) = v4;
        v19[40] = v16;
        if (v7 == v12)
        {
          v20 = (v5 + 16);
          a4 = v26;
          goto LABEL_28;
        }
      }
    }

LABEL_42:
    v5 = sub_1820835D4(v5);
    goto LABEL_4;
  }

  v5 = MEMORY[0x1E69E7CC0];
  v20 = MEMORY[0x1E69E7CC0] + 16;
  v9 = *(MEMORY[0x1E69E7CC0] + 16);
  if (v9)
  {
LABEL_28:
    v21 = v5 + 40;
    v22 = v9;
    while (1)
    {
      if (*v21 == 1)
      {
        v23 = *(v21 - 1);
        if (v23)
        {
          break;
        }
      }

      v21 += 16;
      if (!--v22)
      {
        v24 = v20 + 16 * v9;
        v23 = *v24;
        v25 = *(v24 + 8);
        goto LABEL_36;
      }
    }
  }

  else
  {
    v23 = 1;
  }

  v25 = 1;
LABEL_36:

  *a4 = v23;
  *(a4 + 8) = v25;
  return result;
}

unint64_t sub_1820212FC@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X1>, unint64_t *a3@<X3>, uint64_t a4@<X8>)
{
  result = sub_1820E2CC0();
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  *a2 = result;
  v9 = *(a1 + 24);
  v10 = *(a1 + 32);
  Deserializer.buffer(_:length:)(result, &v14);
  result = sub_1820E2CC0();
  if ((result & 0x8000000000000000) != 0)
  {
LABEL_14:
    __break(1u);
    return result;
  }

  *a3 = result;
  if (v9 == 1)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  if (v11)
  {
    v12 = 1;
    v13 = 1;
  }

  else
  {
    if ((v15 & (v14 == 1)) != 0)
    {
      v12 = 1;
    }

    else
    {
      v12 = *(a1 + 24);
    }

    v13 = v15 & (v14 == 1) | *(a1 + 32);
  }

  *a4 = v12;
  *(a4 + 8) = v13 & 1;
  return result;
}

unint64_t sub_1820213C4@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_1820E2CC0();
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    *a2 = result;
    v7 = *(a1 + 32);
    *a3 = *(a1 + 24);
    *(a3 + 8) = v7;
  }

  return result;
}

void sub_182021414(_DWORD **a1@<X0>, __int128 *a2@<X8>)
{
  v95[0] = 0;
  if (*(a1 + 24) == 5)
  {
    v6 = nw_frame_unclaimed_length(*a1);
    goto LABEL_9;
  }

  v7 = a1[9];
  if (!v7)
  {
    goto LABEL_8;
  }

  v8 = a1[7];
  v9 = a1[8];
  v10 = __OFADD__(v8, v9);
  v11 = v9 + v8;
  if (v10)
  {
    __break(1u);
    goto LABEL_31;
  }

  v6 = v7 - v11;
  if (__OFSUB__(v7, v11))
  {
    __break(1u);
LABEL_8:
    v6 = 0;
  }

LABEL_9:
  v2 = 0;
  v3 = &v85;
  sub_1820D7294(a1, 1, v95, &v85);
  if (BYTE8(v85) != 1 || v85 == 0)
  {
    if (v95[0] < 0)
    {
      sub_18201F410(a1, v95[0], v6, &v84, &v85);
      v80 = v93;
      v81[0] = *v94;
      *(v81 + 12) = *&v94[12];
      v76 = v89;
      v77 = v90;
      v78 = v91;
      v79 = v92;
      v72 = v85;
      v73 = v86;
      v74 = v87;
      v75 = v88;
      nullsub_41(&v72);
      v38 = v81[0];
      a2[8] = v80;
      a2[9] = v38;
      *(a2 + 156) = *(v81 + 12);
      v39 = v77;
      a2[4] = v76;
      a2[5] = v39;
      v40 = v79;
      a2[6] = v78;
      a2[7] = v40;
      v41 = v73;
      *a2 = v72;
      a2[1] = v41;
      v37 = v74;
      v36 = v75;
      goto LABEL_28;
    }

    if (qword_1EA837250 == -1)
    {
LABEL_16:
      if (byte_1EA843430 != 1 || !__nwlog_is_datapath_logging_enabled())
      {
        goto LABEL_27;
      }

      if (qword_1EA837248 != -1)
      {
        swift_once();
      }

      v13 = sub_182AD2698();
      __swift_project_value_buffer(v13, qword_1EA843418);
      v14 = swift_allocObject();
      *(v14 + 16) = "parsePrelude(frame:)";
      *(v14 + 24) = 20;
      *(v14 + 32) = 2;
      v15 = swift_allocObject();
      *(v15 + 16) = sub_181F8C724;
      *(v15 + 24) = v14;
      v16 = swift_allocObject();
      *(v16 + 16) = 1564427099;
      *(v16 + 24) = 0xE400000000000000;
      v17 = swift_allocObject();
      *(v17 + 16) = 0xD000000000000015;
      *(v17 + 24) = 0x8000000182BD8850;
      v18 = sub_182AD2678();
      v19 = sub_182AD38A8();
      v60 = swift_allocObject();
      *(v60 + 16) = 32;
      v62 = swift_allocObject();
      *(v62 + 16) = 8;
      v20 = swift_allocObject();
      *(v20 + 16) = sub_181F8C71C;
      *(v20 + 24) = v15;
      v21 = swift_allocObject();
      *(v21 + 16) = sub_181F8C718;
      *(v21 + 24) = v20;
      v64 = swift_allocObject();
      *(v64 + 16) = 32;
      v66 = swift_allocObject();
      *(v66 + 16) = 8;
      v22 = swift_allocObject();
      *(v22 + 16) = sub_181F8C720;
      *(v22 + 24) = v16;
      v23 = swift_allocObject();
      *(v23 + 16) = sub_181F8C718;
      *(v23 + 24) = v22;
      v68 = swift_allocObject();
      *(v68 + 16) = 32;
      v70 = swift_allocObject();
      *(v70 + 16) = 8;
      v24 = swift_allocObject();
      *(v24 + 16) = sub_181F8C720;
      *(v24 + 24) = v17;
      v25 = swift_allocObject();
      *(v25 + 16) = sub_181F8C718;
      *(v25 + 24) = v24;
      v26 = v19;
      v27 = v19;
      v28 = v18;
      if (os_log_type_enabled(v18, v27))
      {
        v29 = swift_slowAlloc();
        v30 = swift_slowAlloc();
        v82 = v30;
        v83 = 0;
        *v29 = 770;
        buf = v30;
        *&v72 = v29 + 2;
        *&v85 = sub_181F8C728;
        *(&v85 + 1) = v60;
        sub_181F73AE0(&v85, &v72, &v83, &v82);
        if (v2)
        {

          while (1)
          {

            __break(1u);
          }
        }

        *&v85 = sub_181F8C728;
        *(&v85 + 1) = v62;
        sub_181F73AE0(&v85, &v72, &v83, &v82);

        *&v85 = sub_181F8C714;
        *(&v85 + 1) = v21;
        sub_181F73AE0(&v85, &v72, &v83, &v82);

        *&v85 = sub_181F8C728;
        *(&v85 + 1) = v64;
        sub_181F73AE0(&v85, &v72, &v83, &v82);

        *&v85 = sub_181F8C728;
        *(&v85 + 1) = v66;
        sub_181F73AE0(&v85, &v72, &v83, &v82);

        *&v85 = sub_181F8C714;
        *(&v85 + 1) = v23;
        sub_181F73AE0(&v85, &v72, &v83, &v82);

        *&v85 = sub_181F8C728;
        *(&v85 + 1) = v68;
        sub_181F73AE0(&v85, &v72, &v83, &v82);

        *&v85 = sub_181F8C728;
        *(&v85 + 1) = v70;
        sub_181F73AE0(&v85, &v72, &v83, &v82);

        *&v85 = sub_181F8C714;
        *(&v85 + 1) = v25;
        sub_181F73AE0(&v85, &v72, &v83, &v82);

        _os_log_impl(&dword_181A37000, v28, v26, "%s %s %s", v29, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1865DF520](buf, -1, -1);
        v31 = v29;
        goto LABEL_36;
      }

LABEL_37:

      goto LABEL_38;
    }

LABEL_31:
    swift_once();
    goto LABEL_16;
  }

  v85 = xmmword_182AEFDE0;
  LOBYTE(v86) = 0;
  sub_181F5F494();
  swift_willThrowTypedImpl();
  if (qword_1EA837250 != -1)
  {
    swift_once();
  }

  if (byte_1EA843430 != 1 || !__nwlog_is_datapath_logging_enabled())
  {
    goto LABEL_27;
  }

  if (qword_1EA837248 != -1)
  {
    swift_once();
  }

  v42 = sub_182AD2698();
  __swift_project_value_buffer(v42, qword_1EA843418);
  v43 = swift_allocObject();
  *(v43 + 16) = "parsePrelude(frame:)";
  *(v43 + 24) = 20;
  *(v43 + 32) = 2;
  v44 = swift_allocObject();
  *(v44 + 16) = sub_181F8C258;
  *(v44 + 24) = v43;
  v45 = swift_allocObject();
  *(v45 + 16) = 1564427099;
  *(v45 + 24) = 0xE400000000000000;
  v46 = swift_allocObject();
  *(v46 + 16) = 0xD000000000000015;
  *(v46 + 24) = 0x8000000182BD8830;
  v47 = sub_182AD2678();
  v48 = sub_182AD38A8();
  v63 = swift_allocObject();
  *(v63 + 16) = 32;
  v65 = swift_allocObject();
  *(v65 + 16) = 8;
  v49 = swift_allocObject();
  *(v49 + 16) = sub_181F8C264;
  *(v49 + 24) = v44;
  v50 = swift_allocObject();
  *(v50 + 16) = sub_181F8C27C;
  *(v50 + 24) = v49;
  v67 = swift_allocObject();
  *(v67 + 16) = 32;
  v69 = swift_allocObject();
  *(v69 + 16) = 8;
  v51 = swift_allocObject();
  *(v51 + 16) = sub_181F8C26C;
  *(v51 + 24) = v45;
  v52 = swift_allocObject();
  *(v52 + 16) = sub_181F8C718;
  *(v52 + 24) = v51;
  v61 = swift_allocObject();
  *(v61 + 16) = 32;
  v71 = swift_allocObject();
  *(v71 + 16) = 8;
  v53 = swift_allocObject();
  *(v53 + 16) = sub_181F8C26C;
  *(v53 + 24) = v46;
  v54 = swift_allocObject();
  *(v54 + 16) = sub_181F8C718;
  *(v54 + 24) = v53;
  v55 = v48;
  v56 = v48;
  v28 = v47;
  if (!os_log_type_enabled(v47, v56))
  {
    goto LABEL_37;
  }

  v57 = swift_slowAlloc();
  v82 = swift_slowAlloc();
  v83 = 0;
  v58 = v82;
  *v57 = 770;
  *&v72 = v57 + 2;
  *&v85 = sub_181F8C274;
  *(&v85 + 1) = v63;
  sub_181F73AE0(&v85, &v72, &v83, &v82);

  *&v85 = sub_181F8C728;
  *(&v85 + 1) = v65;
  sub_181F73AE0(&v85, &v72, &v83, &v82);

  *&v85 = sub_181F8C284;
  *(&v85 + 1) = v50;
  sub_181F73AE0(&v85, &v72, &v83, &v82);

  *&v85 = sub_181F8C728;
  *(&v85 + 1) = v67;
  sub_181F73AE0(&v85, &v72, &v83, &v82);

  *&v85 = sub_181F8C728;
  *(&v85 + 1) = v69;
  sub_181F73AE0(&v85, &v72, &v83, &v82);

  *&v85 = sub_181F8C714;
  *(&v85 + 1) = v52;
  sub_181F73AE0(&v85, &v72, &v83, &v82);

  *&v85 = sub_181F8C728;
  *(&v85 + 1) = v61;
  sub_181F73AE0(&v85, &v72, &v83, &v82);

  *&v85 = sub_181F8C728;
  *(&v85 + 1) = v71;
  sub_181F73AE0(&v85, &v72, &v83, &v82);

  *&v85 = sub_181F8C714;
  *(&v85 + 1) = v54;
  sub_181F73AE0(&v85, &v72, &v83, &v82);

  _os_log_impl(&dword_181A37000, v28, v55, "%s %s %s", v57, 0x20u);
  swift_arrayDestroy();
  MEMORY[0x1865DF520](v58, -1, -1);
  v31 = v57;
LABEL_36:
  MEMORY[0x1865DF520](v31, -1, -1);
LABEL_38:

LABEL_27:
  sub_1820223F0(&v85);
  v32 = *v94;
  a2[8] = v93;
  a2[9] = v32;
  *(a2 + 156) = *(v3 + 156);
  v33 = v90;
  a2[4] = v89;
  a2[5] = v33;
  v34 = v92;
  a2[6] = v91;
  a2[7] = v34;
  v35 = v86;
  *a2 = v85;
  a2[1] = v35;
  v37 = v87;
  v36 = v88;
LABEL_28:
  a2[2] = v37;
  a2[3] = v36;
}

uint64_t sub_18202232C(uint64_t result, uint64_t a2, char a3)
{
  if ((a3 & 0xF0) == 0x50)
  {
    return sub_182022344(result, a2, a3 & 0xF);
  }

  return result;
}

uint64_t sub_182022344(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 == 1)
  {
  }

  return result;
}

uint64_t sub_18202235C@<X0>(uint64_t result@<X0>, _BYTE *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = result;
  v5 = *result;
  v6 = *(result + 16);
  if (*(result + 32) == 1 && *(result + 24))
  {
    goto LABEL_8;
  }

  v7 = *(result + 8) - v5;
  if (!v5)
  {
    v7 = 0;
  }

  v8 = __OFSUB__(v7, v6);
  v9 = v7 - v6;
  if (!v8)
  {
    if (v9 >= 1)
    {
      *a2 = *(v5 + v6);
      result = sub_1820E2C6C(1);
      v10 = *(v3 + 24);
      v11 = *(v3 + 32);
LABEL_9:
      *a3 = v10;
      *(a3 + 8) = v11;
      return result;
    }

LABEL_8:
    v10 = 1;
    *(result + 24) = 1;
    *(result + 32) = 1;
    v11 = 1;
    goto LABEL_9;
  }

  __break(1u);
  return result;
}