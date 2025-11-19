uint64_t sub_17A0(uint64_t a1)
{
  v30 = a1;
  v18 = 0;
  v31 = &unk_7E240;
  v41 = 0;
  v40 = 0;
  v15 = (*(*(sub_1A88(&qword_90AD0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v33 = &v15 - v15;
  v41 = __chkstk_darwin(v30);
  v40 = v1;
  sub_1AF4(v41);
  v16 = 9;
  v2 = sub_7D704();
  v25 = &v38;
  v38 = v2;
  v39 = v3;
  v29 = 1;
  v42._countAndFlagsBits = sub_7CF84("Download ", v16, 1);
  object = v42._object;
  sub_7D6F4(v42);

  v19 = &v37;
  swift_beginAccess();
  v20 = *(v30 + 16);
  v21 = *(v30 + 24);

  swift_endAccess();

  v22 = v36;
  v36[0] = v20;
  v36[1] = v21;
  sub_7D6E4();
  sub_1F58();
  v28 = 0;
  v43._countAndFlagsBits = sub_7CF84("", 0, v29 & 1);
  v24 = v43._object;
  sub_7D6F4(v43);
  v4 = v23;

  v27 = v38;
  v26 = v39;

  sub_1F58();
  v32 = sub_7CF74();
  v34 = v5;
  sub_7D1A4();
  v6 = sub_7D1E4();
  (*(*(v6 - 8) + 56))(v33, 0, v29);

  v7 = swift_allocObject();
  v8 = v30;
  v9 = v31;
  v10 = v33;
  v11 = v34;
  v12 = v7;
  v13 = v32;
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = v8;
  v12[5] = v4;
  v35 = sub_5370(v13, v11, v10, v9, v12, &type metadata for () + 8);
  sub_5900(v33);
}

uint64_t sub_1A88(uint64_t *a1)
{
  v4 = *a1;
  if (!*a1)
  {
    TypeByMangledNameInContext2 = swift_getTypeByMangledNameInContext2();
    *a1 = TypeByMangledNameInContext2;
    return TypeByMangledNameInContext2;
  }

  return v4;
}

uint64_t sub_1AF4(uint64_t a1)
{
  v40 = a1;
  v2 = v1;
  v33 = v2;
  v28 = 0;
  v41 = &unk_7E258;
  v55 = 0;
  v54 = 0;
  v4 = sub_1A88(&qword_90AD0);
  v19[0] = (*(*(v4 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v4);
  v43 = v19 - v19[0];
  v55 = a1;
  v54 = v5;

  sub_6AE48();

  v19[1] = &v53;
  v27 = 32;
  swift_beginAccess();
  v20 = *(v40 + 16);
  v21 = *(v40 + 24);

  swift_endAccess();

  v23 = &v52;
  v52 = v40;
  v22 = v51;
  v51[0] = v20;
  v51[1] = v21;
  v24 = &v50;
  swift_beginAccess();
  sub_1A88(&qword_90AD8);
  sub_7CE14();
  swift_endAccess();
  v25 = 21;
  v6 = sub_7D704();
  v35 = &v48;
  v48 = v6;
  v49 = v7;
  v39 = 1;
  v56._countAndFlagsBits = sub_7CF84("Processing timer for ", v25, 1);
  object = v56._object;
  sub_7D6F4(v56);

  v29 = &v47;
  swift_beginAccess();
  v30 = *(v40 + 16);
  v31 = *(v40 + 24);

  swift_endAccess();

  v32 = v46;
  v46[0] = v30;
  v46[1] = v31;
  sub_7D6E4();
  sub_1F58();
  v38 = 0;
  v57._countAndFlagsBits = sub_7CF84("", 0, v39 & 1);
  v34 = v57._object;
  sub_7D6F4(v57);
  v8 = v33;

  v37 = v48;
  v36 = v49;

  sub_1F58();
  v42 = sub_7CF74();
  v44 = v9;
  v10 = sub_7D1E4();
  (*(*(v10 - 8) + 56))(v43, v39);

  v11 = swift_allocObject();
  v12 = v40;
  v13 = v41;
  v14 = v43;
  v15 = v44;
  v16 = v11;
  v17 = v42;
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = v8;
  v16[5] = v12;
  v45 = sub_5370(v17, v15, v14, v13, v16, &type metadata for () + 8);
  sub_5900(v43);
}

uint64_t sub_1F84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[18] = a5;
  v5[17] = a4;
  v5[11] = v5;
  v5[12] = 0;
  v5[13] = 0;
  v5[14] = 0;
  v5[15] = 0;
  v5[16] = 0;
  v5[12] = a4;
  v5[13] = a5;
  return _swift_task_switch(sub_1FE8, 0);
}

uint64_t sub_1FE8()
{
  v11 = *(v0 + 144);
  v12 = *(v0 + 136);
  *(v0 + 88) = v0;
  sub_1A88(&qword_90C30);
  sub_7D714();
  v7 = v1;
  kCTFontDownloadableAttribute;
  *v7 = kCTFontDownloadableAttribute;
  *(v7 + 32) = &type metadata for Bool;
  *(v7 + 8) = 1;
  kCTFontFamilyNameAttribute;
  *(v7 + 40) = kCTFontFamilyNameAttribute;

  swift_beginAccess();
  v6 = *(v12 + 16);
  v8 = *(v12 + 24);

  swift_endAccess();
  *(v7 + 72) = &type metadata for String;
  *(v7 + 48) = v6;
  *(v7 + 56) = v8;

  sub_71DDC();
  type metadata accessor for CFString();
  sub_B438();
  sub_7CDB4();
  isa = sub_7CD84().super.isa;
  v17 = CTFontDescriptorCreateWithAttributes(isa);

  *(v0 + 112) = v17;
  v16 = swift_allocObject();
  *(v0 + 120) = v16 + 16;
  *(v16 + 16) = 0;
  v15 = swift_allocObject();
  *(v0 + 128) = v15 + 16;
  *(v15 + 16) = 0;
  type metadata accessor for CTFontDescriptor();
  sub_7D714();
  v10 = v2;
  v17;
  *v10 = v17;
  sub_71DDC();
  v14 = sub_7D094().super.isa;

  swift_unownedRetain();

  swift_unownedRetainStrong();
  swift_unownedRetain();

  v3 = swift_allocObject();
  v3[2] = v12;
  v3[3] = v16;
  v3[4] = v15;
  v3[5] = v11;
  *(v0 + 48) = sub_E4CC;
  *(v0 + 56) = v3;
  *(v0 + 16) = _NSConcreteStackBlock;
  *(v0 + 24) = 1107296256;
  *(v0 + 28) = 0;
  *(v0 + 32) = sub_5E88;
  *(v0 + 40) = &unk_8E8A0;
  v13 = _Block_copy((v0 + 16));

  swift_unownedRelease();
  CTFontDescriptorDownloadMatchingFontDescriptors();
  _Block_release(v13);

  v4 = *(*(v0 + 88) + 8);

  return v4();
}

uint64_t sub_2470()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_24C0(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_25A4;

  return sub_1F84(a1, v6, v7, v8, v9);
}

uint64_t sub_25A4()
{
  v3 = *v0;
  *(v3 + 16) = *v0;

  v1 = *(*(v3 + 16) + 8);

  return v1();
}

uint64_t sub_26CC(unsigned int a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v368 = a1;
  v363 = a2;
  v364 = a3;
  v365 = a4;
  v366 = a5;
  v367 = a6;
  v360 = &unk_7E8A0;
  v361 = &unk_7E8B0;
  v362 = &unk_7E8C0;
  v445 = 0;
  v444 = 0;
  v443 = 0;
  v442 = 0;
  v441 = 0;
  v440 = 0;
  v439 = 0;
  v431 = 0;
  v392 = 0;
  v389 = 0;
  v369 = (*(*(sub_1A88(&qword_90AD0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v370 = &v98 - v369;
  v445 = __chkstk_darwin(v368);
  v444 = v6;
  v443 = v7;
  v442 = v8 + 16;
  v441 = v9 + 16;
  v440 = v10;
  if (!v445)
  {
    v347 = 1;
    v356 = sub_7CF84("download(_:)", 0xCuLL, 1);
    v359 = v11;
    v12 = sub_7D704();
    v349 = &v373;
    v373 = v12;
    v374 = v13;
    v446._countAndFlagsBits = sub_7CF84("⬇️ ", 7uLL, 0);
    object = v446._object;
    sub_7D6F4(v446);

    v343 = &v372;
    swift_beginAccess();
    v344 = *(v364 + 16);
    v345 = *(v364 + 24);

    swift_endAccess();

    v346 = v371;
    v371[0] = v344;
    v371[1] = v345;
    v352 = &type metadata for String;
    sub_7D6E4();
    sub_1F58();
    v447._countAndFlagsBits = sub_7CF84(" did begin", 0xAuLL, v347 & 1);
    v348 = v447._object;
    sub_7D6F4(v447);

    v351 = v373;
    v350 = v374;

    sub_1F58();
    v355 = sub_7CF74();
    v358 = v14;
    v357 = sub_7D714();
    v353 = sub_4754();
    v354 = sub_4754();
    v15 = sub_4760();
    sub_71E20(v356, v359, v353 & 1, v354 & 1, v355, v358, v15, v357);

    goto LABEL_62;
  }

  switch(v368)
  {
    case 1u:
      v206 = 1;
      v198 = sub_7CF84("download(_:)", 0xCuLL, 1);
      v199 = v63;
      v64 = sub_7D704();
      v204 = &v421;
      v421 = v64;
      v422 = v65;
      v462._countAndFlagsBits = sub_7CF84("⬇️ ", 7uLL, 0);
      v200 = v462._object;
      sub_7D6F4(v462);

      v201 = &v420;
      v208 = 32;
      v209 = 0;
      swift_beginAccess();
      v202 = *(v364 + 16);
      v203 = *(v364 + 24);

      swift_endAccess();

      v205 = v419;
      v419[0] = v202;
      v419[1] = v203;
      sub_7D6E4();
      sub_1F58();
      v463._countAndFlagsBits = sub_7CF84(" finished. Without errors? ", 0x1BuLL, v206 & 1);
      v207 = v463._object;
      sub_7D6F4(v463);

      v210 = &v418;
      swift_beginAccess();
      v211 = *(v365 + 16);
      swift_endAccess();
      if (v211)
      {
        v196 = sub_7CF84("❌", 3uLL, 0);
      }

      else
      {
        v196 = sub_7CF84("✅", 3uLL, 0);
      }

      v197 = v66;
      v192 = v417;
      v417[0] = v196;
      v417[1] = v66;
      v191 = &v421;
      sub_7D6E4();
      sub_1F58();
      v464._countAndFlagsBits = sub_7CF84(" Downloaded? ", 0xDuLL, 1);
      v193 = v464._object;
      sub_7D6F4(v464);

      v194 = &v416;
      swift_beginAccess();
      v195 = *(v366 + 16);
      swift_endAccess();
      if (v195)
      {
        v189 = sub_7CF84("✅", 3uLL, 0);
      }

      else
      {
        v189 = sub_7CF84("❌", 3uLL, 0);
      }

      v190 = v67;
      v175 = v415;
      v415[0] = v189;
      v415[1] = v67;
      v181 = &type metadata for String;
      v177 = &v421;
      sub_7D6E4();
      sub_1F58();
      v180 = 0;
      v465._countAndFlagsBits = sub_7CF84("", 0, 1);
      v176 = v465._object;
      sub_7D6F4(v465);

      v179 = v421;
      v178 = v422;

      sub_1F58();
      v184 = sub_7CF74();
      v186 = v68;
      v185 = sub_7D714();
      v182 = sub_4754();
      v183 = sub_4754();
      v69 = sub_4760();
      sub_71E20(v198, v199, v182 & 1, v183 & 1, v184, v186, v69, v185);

      v187 = &v414;
      swift_beginAccess();
      v188 = *(v366 + 16);
      swift_endAccess();
      if (v188)
      {
        v172 = &v413;
        swift_beginAccess();
        v173 = *(v365 + 16);
        swift_endAccess();
        v174 = v173;
      }

      else
      {
        v174 = 1;
      }

      if (v174)
      {
        v157 = 16;
        v70 = sub_7D704();
        v164 = &v411;
        v411 = v70;
        v412 = v71;
        v168 = 1;
        v466._countAndFlagsBits = sub_7CF84("Stop processing ", v157, 1);
        v158 = v466._object;
        sub_7D6F4(v466);

        v159 = &v410;
        swift_beginAccess();
        v160 = *(v364 + 16);
        v161 = *(v364 + 24);

        swift_endAccess();

        v162 = v409;
        v409[0] = v160;
        v409[1] = v161;
        sub_7D6E4();
        sub_1F58();
        v167 = 0;
        v467._countAndFlagsBits = sub_7CF84("", 0, v168 & 1);
        v163 = v467._object;
        sub_7D6F4(v467);

        v166 = v411;
        v165 = v412;

        sub_1F58();
        v169 = sub_7CF74();
        v170 = v72;
        v73 = sub_7D1E4();
        (*(*(v73 - 8) + 56))(v370, v168);
        swift_unownedRetain();

        v74 = swift_allocObject();
        v75 = v367;
        v76 = v364;
        v77 = v360;
        v78 = v370;
        v79 = v170;
        v80 = v74;
        v81 = v169;
        v80[2] = 0;
        v80[3] = 0;
        v80[4] = v75;
        v80[5] = v76;
        v171 = sub_5370(v81, v79, v78, v77, v80, &type metadata for () + 8);
        sub_5900(v370);
      }

      goto LABEL_62;
    case 3u:
      v311 = 1;
      v320 = sub_7CF84("download(_:)", 0xCuLL, 1);
      v323 = v21;
      v22 = sub_7D704();
      v313 = &v381;
      v381 = v22;
      v382 = v23;
      v450._countAndFlagsBits = sub_7CF84("⬇️ ", 7uLL, 0);
      v306 = v450._object;
      sub_7D6F4(v450);

      v307 = &v380;
      swift_beginAccess();
      v308 = *(v364 + 16);
      v309 = *(v364 + 24);

      swift_endAccess();

      v310 = v379;
      v379[0] = v308;
      v379[1] = v309;
      v316 = &type metadata for String;
      sub_7D6E4();
      sub_1F58();
      v451._countAndFlagsBits = sub_7CF84(" stalled", 8uLL, v311 & 1);
      v312 = v451._object;
      sub_7D6F4(v451);

      v315 = v381;
      v314 = v382;

      sub_1F58();
      v319 = sub_7CF74();
      v322 = v24;
      v321 = sub_7D714();
      v317 = sub_4754();
      v318 = sub_4754();
      v25 = sub_4760();
      sub_71E20(v320, v323, v317 & 1, v318 & 1, v319, v322, v25, v321);

      goto LABEL_62;
    case 4u:
      v329 = 1;
      v338 = sub_7CF84("download(_:)", 0xCuLL, 1);
      v341 = v16;
      v17 = sub_7D704();
      v331 = &v377;
      v377 = v17;
      v378 = v18;
      v448._countAndFlagsBits = sub_7CF84("⬇️ ", 7uLL, 0);
      v324 = v448._object;
      sub_7D6F4(v448);

      v325 = &v376;
      swift_beginAccess();
      v326 = *(v364 + 16);
      v327 = *(v364 + 24);

      swift_endAccess();

      v328 = v375;
      v375[0] = v326;
      v375[1] = v327;
      v334 = &type metadata for String;
      sub_7D6E4();
      sub_1F58();
      v449._countAndFlagsBits = sub_7CF84(" will begin download", 0x14uLL, v329 & 1);
      v330 = v449._object;
      sub_7D6F4(v449);

      v333 = v377;
      v332 = v378;

      sub_1F58();
      v337 = sub_7CF74();
      v340 = v19;
      v339 = sub_7D714();
      v335 = sub_4754();
      v336 = sub_4754();
      v20 = sub_4760();
      sub_71E20(v338, v341, v335 & 1, v336 & 1, v337, v340, v20, v339);

      goto LABEL_62;
    case 5u:
      v363;
      objc_opt_self();
      v305 = swift_dynamicCastObjCClass();
      if (v305)
      {
        v304 = v305;
        v303 = sub_1A88(&qword_90C40);
        v304;
        sub_E544();
        sub_7D774();

        if (v383)
        {
          v302 = v383;
          goto LABEL_17;
        }
      }

      else
      {
      }

      v302 = 0;
LABEL_17:
      v301 = v302;
      if (v302)
      {
        v300 = v301;
        v297 = v301;
        v392 = v301;
        v296 = kCTFontDescriptorMatchingPercentage;
        kCTFontDescriptorMatchingPercentage;
        v26 = sub_7CF14();
        v298 = v390;
        v390[0] = v26;
        v390[1] = v27;
        sub_7CE04();
        sub_1F58();
        v299 = v391;
        if (v391)
        {
          v295 = v299;
          v294 = v299;
          v389 = v299;

          v281 = 1;
          v290 = sub_7CF84("download(_:)", 0xCuLL, 1);
          v293 = v28;
          v29 = sub_7D704();
          v283 = &v387;
          v387 = v29;
          v388 = v30;
          v279 = 4;
          v452._countAndFlagsBits = sub_7CF84("⏳ ", 4uLL, 0);
          v274 = v452._object;
          sub_7D6F4(v452);

          v275 = &v386;
          swift_beginAccess();
          v276 = *(v364 + 16);
          v277 = *(v364 + 24);

          swift_endAccess();

          v278 = v385;
          v385[0] = v276;
          v385[1] = v277;
          v286 = &type metadata for String;
          sub_7D6E4();
          sub_1F58();
          v453._countAndFlagsBits = sub_7CF84(" is ", v279, v281 & 1);
          v280 = v453._object;
          sub_7D6F4(v453);

          swift_getObjectType();
          v384 = v294;
          sub_7D6D4();
          v454._countAndFlagsBits = sub_7CF84(" %% downloaded", 0xEuLL, v281 & 1);
          v282 = v454._object;
          sub_7D6F4(v454);

          v285 = v387;
          v284 = v388;

          sub_1F58();
          v289 = sub_7CF74();
          v292 = v31;
          v291 = sub_7D714();
          v287 = sub_4754();
          v288 = sub_4754();
          v32 = sub_4760();
          sub_71E20(v290, v293, v287 & 1, v288 & 1, v289, v292, v32, v291);

          swift_unknownObjectRelease();
        }

        else
        {
        }
      }

      goto LABEL_62;
    case 6u:
      v268 = 1;
      v260 = sub_7CF84("download(_:)", 0xCuLL, 1);
      v261 = v33;
      v34 = sub_7D704();
      v266 = &v407;
      v407 = v34;
      v408 = v35;
      v455._countAndFlagsBits = sub_7CF84("⬇️ ", 7uLL, 0);
      v262 = v455._object;
      sub_7D6F4(v455);

      v263 = &v406;
      v270 = 32;
      v271 = 0;
      swift_beginAccess();
      v264 = *(v364 + 16);
      v265 = *(v364 + 24);

      swift_endAccess();

      v267 = v405;
      v405[0] = v264;
      v405[1] = v265;
      sub_7D6E4();
      sub_1F58();
      v456._countAndFlagsBits = sub_7CF84(" finished downloading ", 0x16uLL, v268 & 1);
      v269 = v456._object;
      sub_7D6F4(v456);

      v272 = &v404;
      swift_beginAccess();
      v273 = *(v365 + 16);
      swift_endAccess();
      if (v273)
      {
        v258 = sub_7CF84("❌", 3uLL, 0);
      }

      else
      {
        v258 = sub_7CF84("✅", 3uLL, 0);
      }

      v259 = v36;
      v244 = v403;
      v403[0] = v258;
      v403[1] = v36;
      v250 = &type metadata for String;
      v246 = &v407;
      sub_7D6E4();
      sub_1F58();
      v249 = 0;
      v457._countAndFlagsBits = sub_7CF84("", 0, 1);
      v245 = v457._object;
      sub_7D6F4(v457);

      v248 = v407;
      v247 = v408;

      sub_1F58();
      v253 = sub_7CF74();
      v255 = v37;
      v254 = sub_7D714();
      v251 = sub_4754();
      v252 = sub_4754();
      v38 = sub_4760();
      sub_71E20(v260, v261, v251 & 1, v252 & 1, v253, v255, v38, v254);

      v256 = &v402;
      swift_beginAccess();
      v257 = *(v365 + 16);
      swift_endAccess();
      if (v257)
      {
        v212 = 16;
        v51 = sub_7D704();
        v219 = &v400;
        v400 = v51;
        v401 = v52;
        v223 = 1;
        v460._countAndFlagsBits = sub_7CF84("Stop processing ", v212, 1);
        v213 = v460._object;
        sub_7D6F4(v460);

        v214 = &v399;
        swift_beginAccess();
        v215 = *(v364 + 16);
        v216 = *(v364 + 24);

        swift_endAccess();

        v217 = v398;
        v398[0] = v215;
        v398[1] = v216;
        sub_7D6E4();
        sub_1F58();
        v222 = 0;
        v461._countAndFlagsBits = sub_7CF84("", 0, v223 & 1);
        v218 = v461._object;
        sub_7D6F4(v461);

        v221 = v400;
        v220 = v401;

        sub_1F58();
        v224 = sub_7CF74();
        v225 = v53;
        v54 = sub_7D1E4();
        (*(*(v54 - 8) + 56))(v370, v223);
        swift_unownedRetain();

        v55 = swift_allocObject();
        v56 = v367;
        v57 = v364;
        v58 = v361;
        v59 = v370;
        v60 = v225;
        v61 = v55;
        v62 = v224;
        v61[2] = 0;
        v61[3] = 0;
        v61[4] = v56;
        v61[5] = v57;
        v226 = sub_5370(v62, v60, v59, v58, v61, &type metadata for () + 8);
      }

      else
      {
        v227 = &v397;
        v230 = 0;
        swift_beginAccess();
        *(v366 + 16) = 1;
        swift_endAccess();
        v228 = 22;
        v39 = sub_7D704();
        v236 = &v395;
        v395 = v39;
        v396 = v40;
        v240 = 1;
        v458._countAndFlagsBits = sub_7CF84("Download cooldown for ", v228, 1);
        v229 = v458._object;
        sub_7D6F4(v458);

        v231 = &v394;
        swift_beginAccess();
        v232 = *(v364 + 16);
        v233 = *(v364 + 24);

        swift_endAccess();

        v234 = v393;
        v393[0] = v232;
        v393[1] = v233;
        sub_7D6E4();
        sub_1F58();
        v239 = 0;
        v459._countAndFlagsBits = sub_7CF84("", 0, v240 & 1);
        v235 = v459._object;
        sub_7D6F4(v459);

        v238 = v395;
        v237 = v396;

        sub_1F58();
        v241 = sub_7CF74();
        v242 = v41;
        v42 = sub_7D1E4();
        (*(*(v42 - 8) + 56))(v370, v240);
        swift_unownedRetain();

        v43 = swift_allocObject();
        v44 = v367;
        v45 = v364;
        v46 = v362;
        v47 = v370;
        v48 = v242;
        v49 = v43;
        v50 = v241;
        v49[2] = 0;
        v49[3] = 0;
        v49[4] = v44;
        v49[5] = v45;
        v243 = sub_5370(v50, v48, v47, v46, v49, &type metadata for () + 8);
      }

      sub_5900(v370);

      goto LABEL_62;
  }

  if (v368 != 8)
  {
LABEL_62:
    v99 = 1;
    return v99 & 1;
  }

  v363;
  objc_opt_self();
  v156 = swift_dynamicCastObjCClass();
  if (v156)
  {
    v155 = v156;
    v154 = sub_1A88(&qword_90C40);
    v155;
    sub_E544();
    sub_7D774();

    if (v423)
    {
      v153 = v423;
      goto LABEL_48;
    }
  }

  else
  {
  }

  v153 = 0;
LABEL_48:
  v152 = v153;
  if (!v153)
  {
    goto LABEL_62;
  }

  v151 = v152;
  v148 = v152;
  v439 = v152;
  v147 = kCTFontDescriptorMatchingError;
  kCTFontDescriptorMatchingError;
  v82 = sub_7CF14();
  v149 = v437;
  v437[0] = v82;
  v437[1] = v83;
  sub_7CE04();
  sub_1F58();
  v150 = v438;
  if (v438)
  {
    v146 = v150;
    v144 = &v425;
    v425 = v150;
    sub_1A88(&qword_90C38);
    v84 = swift_dynamicCast();
    if (v84)
    {
      v143 = v424;
    }

    else
    {
      v143 = 0;
    }

    v142 = v143;

    v145 = v142;
  }

  else
  {

    v145 = 0;
  }

  v141 = v145;
  if (v145)
  {
    v140 = v141;
    v122 = v141;
    v431 = v141;
    v115 = 1;
    v118 = sub_7CF84("download(_:)", 0xCuLL, 1);
    v121 = v90;
    v91 = sub_7D704();
    v110 = &v429;
    v429 = v91;
    v430 = v92;
    v470._countAndFlagsBits = sub_7CF84("❌ Download for ", 0x11uLL, 0);
    v100 = v470._object;
    sub_7D6F4(v470);

    v101 = &v428;
    swift_beginAccess();
    v102 = *(v364 + 16);
    v103 = *(v364 + 24);

    swift_endAccess();

    v104 = v427;
    v427[0] = v102;
    v427[1] = v103;
    v113 = &type metadata for String;
    v106 = &protocol witness table for String;
    v107 = &protocol witness table for String;
    sub_7D6E4();
    sub_1F58();
    v471._countAndFlagsBits = sub_7CF84(" failed with error: ", 0x14uLL, v115 & 1);
    v105 = v471._object;
    sub_7D6F4(v471);

    swift_getErrorValue();
    v93 = sub_7D7B4();
    v108 = v426;
    v426[0] = v93;
    v426[1] = v94;
    sub_7D6E4();
    sub_1F58();
    v114 = 0;
    v472._countAndFlagsBits = sub_7CF84("", 0, v115 & 1);
    v109 = v472._object;
    sub_7D6F4(v472);

    v112 = v429;
    v111 = v430;

    sub_1F58();
    v116 = sub_7CF74();
    v120 = v95;
    v117 = sub_7D3A4();
    v119 = sub_7D714();
    v96 = sub_4754();
    sub_71E20(v118, v121, v96 & 1, v115 & 1, v116, v120, v117, v119);
  }

  else
  {
    v133 = 1;
    v136 = sub_7CF84("download(_:)", 0xCuLL, 1);
    v139 = v85;
    v86 = sub_7D704();
    v129 = &v435;
    v435 = v86;
    v436 = v87;
    v468._countAndFlagsBits = sub_7CF84("❌ Download for ", 0x11uLL, 0);
    v123 = v468._object;
    sub_7D6F4(v468);

    v124 = &v434;
    swift_beginAccess();
    v125 = *(v364 + 16);
    v126 = *(v364 + 24);

    swift_endAccess();

    v127 = v433;
    v433[0] = v125;
    v433[1] = v126;
    v132 = &type metadata for String;
    sub_7D6E4();
    sub_1F58();
    v469._countAndFlagsBits = sub_7CF84(" failed", 7uLL, v133 & 1);
    v128 = v469._object;
    sub_7D6F4(v469);

    v131 = v435;
    v130 = v436;

    sub_1F58();
    v134 = sub_7CF74();
    v138 = v88;
    v135 = sub_7D3A4();
    v137 = sub_7D714();
    v89 = sub_4754();
    sub_71E20(v136, v139, v89 & 1, v133 & 1, v134, v138, v135, v137);
  }

  v98 = &v432;
  swift_beginAccess();
  *(v365 + 16) = 1;
  swift_endAccess();

  v99 = 0;
  return v99 & 1;
}

uint64_t sub_4778(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a5;
  v5[5] = a4;
  v5[2] = v5;
  v5[3] = 0;
  v5[4] = 0;
  v5[3] = a4;
  v5[4] = a5;
  return _swift_task_switch(sub_47C8, 0);
}

uint64_t sub_47C8()
{
  v4 = v0;
  v0[2] = v0;
  swift_unownedRetainStrong();
  v1 = swift_task_alloc();
  v4[7] = v1;
  *v1 = v4[2];
  v1[1] = sub_488C;
  v2 = v4[6];

  return sub_49EC(v2, 30);
}

uint64_t sub_488C()
{
  v3 = *v0;
  *(v3 + 16) = *v0;

  v1 = *(*(v3 + 16) + 8);

  return v1();
}

uint64_t sub_49EC(uint64_t a1, uint64_t a2)
{
  v3[28] = v2;
  v3[27] = a2;
  v3[26] = a1;
  v3[17] = v3;
  v3[18] = 0;
  v3[19] = 0;
  v3[20] = 0;
  v3[22] = 0;
  v4 = sub_7D5A4();
  v3[29] = v4;
  v3[30] = *(v4 - 8);
  v3[31] = swift_task_alloc();
  v3[18] = a1;
  v3[19] = a2;
  v3[20] = v2;
  sub_7D184();
  v3[32] = sub_7D174();
  v9 = sub_7D154();
  v3[33] = v9;
  v3[34] = v5;

  return _swift_task_switch(sub_4B64, v9);
}

uint64_t sub_4B64()
{
  v1 = *(v0 + 216);
  *(v0 + 136) = v0;
  *(v0 + 168) = v1;
  sub_AF70();
  *(v0 + 88) = sub_7D844();
  *(v0 + 96) = v2;
  *(v0 + 64) = 0;
  *(v0 + 72) = 0;
  *(v0 + 80) = 1;
  v8 = sub_AFE8();
  sub_A8F8();
  v3 = swift_task_alloc();
  v7[35] = v3;
  *v3 = v7[17];
  v3[1] = sub_4CD4;
  v4 = v7[31];
  v5 = v7[29];

  return sub_A91C(v0 + 88, v0 + 64, v4, v5, v8);
}

uint64_t sub_4CD4()
{
  v5 = *v1;
  v5[17] = *v1;
  v5[36] = v0;

  if (v0)
  {
    v2 = v5[33];
    v3 = sub_5264;
  }

  else
  {
    (*(v5[30] + 8))(v5[31], v5[29]);
    v2 = v5[33];
    v3 = sub_4E74;
  }

  return _swift_task_switch(v3, v2);
}

uint64_t sub_4E74()
{
  v16 = v0[26];
  v0[17] = v0;

  swift_beginAccess();
  v17 = *(v16 + 16);
  v18 = *(v16 + 24);

  swift_endAccess();

  swift_beginAccess();
  v0[13] = v17;
  v0[14] = v18;
  type metadata accessor for FontAssetFamily();
  sub_7CE04();
  sub_1F58();
  v19 = v0[23];
  swift_endAccess();
  v0[24] = v19;
  if (v0[24])
  {
    sub_B068();
    v14 = v15[26];
    v10 = sub_7CF84("startTimer(for:seconds:)", 0x18uLL, 1);
    v13 = v1;
    v15[15] = sub_7D704();
    v15[16] = v2;
    v21._countAndFlagsBits = sub_7CF84("❌ Assuming failed download for: ", 0x22uLL, 0);
    sub_7D6F4(v21);

    v15[25] = v14;
    sub_7D6D4();
    v22._countAndFlagsBits = sub_7CF84("", 0, 1);
    sub_7D6F4(v22);

    sub_1F58();
    v9 = sub_7CF74();
    v12 = v3;
    v11 = sub_7D714();
    v7 = sub_4754();
    v8 = sub_4754();
    v4 = sub_4760();
    sub_71E20(v10, v13, v7 & 1, v8 & 1, v9, v12, v4, v11);

    sub_5B58(v14, 0);
  }

  else
  {
    sub_B068();
  }

  v5 = *(v15[17] + 8);

  return v5();
}

uint64_t sub_5264()
{
  v6 = v0[36];
  v1 = v0[31];
  v2 = v0[30];
  v3 = v0[29];
  v0[17] = v0;
  (*(v2 + 8))(v1, v3);
  swift_errorRetain();
  v0[22] = v6;

  v4 = *(v0[17] + 8);

  return v4();
}

uint64_t sub_5370(uint64_t a1, uint64_t a2, const void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v44 = a1;
  v45 = a2;
  v53 = a3;
  v54 = a4;
  v55 = a5;
  v46 = a6;
  v47 = "Fatal error";
  v48 = "Unexpectedly found nil while unwrapping an Optional value";
  v49 = "_Concurrency/arm64e-apple-ios.private.swiftinterface";
  v50 = &unk_7E870;
  v51 = 0;
  v64 = a6;
  v52 = (*(*(sub_1A88(&qword_90AD0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v55);
  v56 = &v15 - v52;

  v62 = v54;
  v63 = v55;
  sub_E19C(v53, v56);
  v57 = sub_7D1E4();
  v58 = *(v57 - 8);
  v59 = v57 - 8;
  if ((*(v58 + 48))(v56, 1) == 1)
  {
    sub_5900(v56);
    v43 = 0;
  }

  else
  {
    v42 = sub_7D1D4();
    (*(v58 + 8))(v56, v57);
    v43 = v42;
  }

  v39 = v43 | 0x1000;
  v41 = *(v55 + 16);
  v40 = *(v55 + 24);
  swift_unknownObjectRetain();

  if (v41)
  {
    v37 = v41;
    v38 = v40;
    v31 = v40;
    v32 = v41;
    swift_getObjectType();
    v33 = sub_7D154();
    v34 = v6;
    swift_unknownObjectRelease();
    v35 = v33;
    v36 = v34;
  }

  else
  {
    v35 = 0;
    v36 = 0;
  }

  v29 = v36;
  v30 = v35;
  if (v45)
  {
    v27 = v44;
    v28 = v45;
    v7 = v51;
    v25 = sub_7CF54();
    sub_CB0C(v25 + 32, &v62, v46, &v60);
    if (v7)
    {
      __break(1u);
    }

    v24 = v60;

    v26 = v24;
  }

  else
  {
    v26 = 0;
  }

  v23 = v26;
  if (v26)
  {
    v17 = v23;
    v18 = v23;
  }

  else
  {

    v19 = v62;
    v20 = v63;

    v8 = swift_allocObject();
    v9 = v19;
    v10 = v20;
    v11 = v30;
    v12 = v29;
    v21 = v8;
    v8[2] = v46;
    v8[3] = v9;
    v8[4] = v10;
    v22 = 0;
    if (v11 != 0 || v12 != 0)
    {
      v61[0] = 0;
      v61[1] = 0;
      v61[2] = v30;
      v61[3] = v29;
      v22 = v61;
    }

    v18 = swift_task_create();
  }

  sub_CCCC();
  v16 = v13;

  return v16;
}

uint64_t sub_5900(uint64_t a1)
{
  v3 = sub_7D1E4();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

uint64_t sub_59A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a5;
  v5[5] = a4;
  v5[2] = v5;
  v5[3] = 0;
  v5[4] = 0;
  v5[3] = a4;
  v5[4] = a5;
  return _swift_task_switch(sub_59F8, 0);
}

uint64_t sub_59F8()
{
  *(v0 + 16) = v0;
  swift_unownedRetainStrong();
  sub_7D184();
  *(v0 + 56) = sub_7D174();
  v1 = sub_7D154();

  return _swift_task_switch(sub_5AA0, v1);
}

uint64_t sub_5AA0()
{
  v1 = *(v0 + 48);
  *(v0 + 16) = v0;
  sub_5B58(v1, 0);

  v2 = *(*(v0 + 16) + 8);

  return v2();
}

void *sub_5B58(uint64_t a1, char a2)
{
  v14 = 0;
  v16 = a1;
  v15 = a2 & 1;

  swift_beginAccess();
  v9 = *(a1 + 16);
  v10 = *(a1 + 24);

  swift_endAccess();

  swift_beginAccess();
  v12[1] = v9;
  v12[2] = v10;
  type metadata accessor for FontAssetFamily();
  sub_7CE04();
  sub_1F58();
  swift_endAccess();
  v12[0] = v13;
  v6 = v13 != 0;
  result = v12;
  sub_B068();
  if (v6)
  {

    swift_beginAccess();
    v4 = *(a1 + 16);
    v5 = *(a1 + 24);

    swift_endAccess();

    v11[9] = v4;
    v11[10] = v5;
    swift_beginAccess();
    sub_1A88(&qword_90AD8);
    sub_7CDA4();
    swift_endAccess();
    sub_1F58();

    if (a2)
    {

      v11[4] = a1;
      v3 = sub_14078(v11);
      sub_1A88(&qword_90AF0);
      sub_7D264();
      v3();

      sub_6CB54();

      sub_6AE48();
    }

    else
    {

      sub_6AE48();
    }
  }

  return result;
}

uint64_t sub_5E88(uint64_t a1, unsigned int a2, void *a3)
{
  v4 = *(a1 + 32);

  a3;
  v7 = v4(a2, a3);

  return v7 & 1;
}

__int128 *sub_5F18(uint64_t a1)
{
  v35 = a1;
  v27 = 0;
  v49 = 0;
  v48 = 0;
  v47 = 0;
  v46 = 0;
  v45 = 0u;
  v44 = 0u;
  v36 = 0;
  v39 = 0;
  v38 = 0;
  v34 = sub_7BD04();
  v28 = v34;
  v29 = *(v34 - 8);
  v30 = v29;
  __chkstk_darwin(v34 - 8);
  v31 = v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = v31;
  v32 = (*(*(sub_1A88(&qword_90AF8) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v35);
  v33 = v10 - v32;
  v48 = v3;
  v47 = v1;

  sub_B094();
  sub_7D224();
  v46 = v52;
  v45 = v51;
  v44 = v50;
  for (i = v36; ; i = v10[0])
  {
    v26 = i;
    sub_1A88(&qword_90B08);
    sub_7D294();
    if ((*(v30 + 48))(v33, 1, v28) == 1)
    {
      result = &v44;
      sub_B114();
      return result;
    }

    v4 = v26;
    (*(v30 + 32))(v31, v33, v28);
    v42 = sub_13F40();
    v23 = v10;
    __chkstk_darwin(v10);
    v21 = &v10[-4];
    v10[-2] = v5;
    v22 = sub_1A88(&qword_90AF0);
    sub_B1C4();
    sub_7D034();
    v24 = v4;
    v25 = v23;
    if (v4)
    {
      break;
    }

    sub_B2C0();
    v20 = v43;
    if (v43)
    {
      v19 = v20;
      v6 = v24;
      v17 = v20;
      v38 = v20;
      sub_6634(v20);

      v18 = v6;
    }

    else
    {
      v7 = v24;
      v40 = sub_13FDC();
      v14 = v10;
      __chkstk_darwin(v10);
      v12 = &v10[-4];
      v10[-2] = v8;
      v13 = sub_1A88(&qword_90B18);
      sub_B318();
      sub_7D034();
      v15 = v7;
      v16 = v14;
      if (v7)
      {
        goto LABEL_13;
      }

      sub_B2C0();
      v11 = v41;
      if (v41)
      {
        v10[2] = v11;
        v10[1] = v11;
        v39 = v11;
        sub_6C84(v11);
      }

      v18 = v15;
    }

    v10[0] = v18;
    (*(v30 + 8))(v31, v28);
  }

  __break(1u);
LABEL_13:
  result = v16;
  __break(1u);
  return result;
}

uint64_t sub_645C(uint64_t a1, uint64_t a2)
{
  v8 = a1;
  v9 = a2;
  v22 = 0;
  v21 = 0;
  v10 = 0;
  v11 = sub_7BD04();
  v12 = *(v11 - 8);
  v13 = v11 - 8;
  v14 = (*(v12 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0);
  v15 = &v6 - v14;
  v16 = *v2;
  v22 = v16;
  v21 = v3;
  v17 = sub_7D184();
  v18 = sub_7D174();
  v19 = sub_7D154();
  v20 = v4;
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  (*(v12 + 16))(v15, v16 + OBJC_IVAR____TtC12FontSettings6Family_id, v11);

  v7 = sub_7BCE4();
  (*(v12 + 8))(v15, v11);

  return v7 & 1;
}

uint64_t sub_6634(uint64_t a1)
{
  v10 = sub_7CF84("requestRemove(_:)", 0x11uLL, 1);
  v13 = v1;
  sub_7D704();
  v23._countAndFlagsBits = sub_7CF84("🚮 Requesting removal of font asset family: ", 0x2EuLL, 0);
  sub_7D6F4(v23);

  swift_beginAccess();

  swift_endAccess();

  sub_7D6E4();
  sub_1F58();
  v24._countAndFlagsBits = sub_7CF84("", 0, 1);
  sub_7D6F4(v24);

  sub_1F58();
  v9 = sub_7CF74();
  v12 = v2;
  v11 = sub_7D714();
  v7 = sub_4754();
  v8 = sub_4754();
  v3 = sub_4760();
  sub_71E20(v10, v13, v7 & 1, v8 & 1, v9, v12, v3, v11);

  sub_1A88(&qword_90B28);
  sub_7D714();
  v17 = v4;
  sub_1A88(&qword_90B30);
  sub_7D714();
  v15 = v5;
  kCTFontFamilyNameAttribute;
  type metadata accessor for CFString();
  sub_B438();
  sub_7D6B4();

  swift_beginAccess();
  v14 = *(a1 + 16);
  v16 = *(a1 + 24);

  swift_endAccess();
  v15[8] = &type metadata for String;
  v15[5] = v14;
  v15[6] = v16;

  sub_71DDC();

  *v17 = sub_7CDB4();
  sub_71DDC();
  v19 = objc_opt_self();

  isa = sub_7D094().super.isa;

  v18 = kFSUserFontManagerUninstallFontAssetsIdentifier;
  kFSUserFontManagerUninstallFontAssetsIdentifier;
  sub_7CF14();
  v20 = sub_7CF04();

  [v19 uninstallFonts:isa forIdentifier:v20 appInfo:0 completionHandler:?];
  sub_7B8C(a1);
}

uint64_t sub_6AAC(uint64_t a1, uint64_t a2)
{
  v8 = a1;
  v9 = a2;
  v22 = 0;
  v21 = 0;
  v10 = 0;
  v11 = sub_7BD04();
  v12 = *(v11 - 8);
  v13 = v11 - 8;
  v14 = (*(v12 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0);
  v15 = &v6 - v14;
  v16 = *v2;
  v22 = v16;
  v21 = v3;
  v17 = sub_7D184();
  v18 = sub_7D174();
  v19 = sub_7D154();
  v20 = v4;
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  (*(v12 + 16))(v15, v16 + OBJC_IVAR____TtC12FontSettings6Family_id, v11);

  v7 = sub_7BCE4();
  (*(v12 + 8))(v15, v11);

  return v7 & 1;
}

uint64_t sub_6C84(uint64_t a1)
{
  v12 = sub_7CF84("requestRemove(_:)", 0x11uLL, 1);
  v15 = v1;
  sub_7D704();
  v20._countAndFlagsBits = sub_7CF84("🚮 Requesting removal of installed family: ", 0x2DuLL, 0);
  sub_7D6F4(v20);

  swift_beginAccess();

  swift_endAccess();

  sub_7D6E4();
  sub_1F58();
  v21._countAndFlagsBits = sub_7CF84("", 0, 1);
  sub_7D6F4(v21);

  sub_1F58();
  v11 = sub_7CF74();
  v14 = v2;
  v13 = sub_7D714();
  v9 = sub_4754();
  v10 = sub_4754();
  v3 = sub_4760();
  sub_71E20(v12, v15, v9 & 1, v10 & 1, v11, v14, v3, v13);

  sub_6C6DC();

  v17 = sub_1A88(&qword_90B40);
  v18 = sub_1A88(&qword_90B28);
  v4 = sub_B4B8();
  sub_7FFC(sub_7E44, 0, v17, v18, &type metadata for Never, v4, &protocol witness table for Never, v19);
  sub_B2C0();
  v6 = objc_opt_self();

  isa = sub_7D094().super.isa;

  swift_beginAccess();

  swift_endAccess();
  v7 = sub_7CF04();

  [v6 uninstallFonts:isa forIdentifier:v7 appInfo:0 completionHandler:?];

  sub_88E0(a1);
}

uint64_t sub_7078(__objc2_class **a1)
{
  v74 = a1;
  v75 = 0;
  v70 = &unk_7E2C0;
  v71 = &unk_7E2B0;
  v88 = 0;
  v87 = 0;
  v86 = 0;
  v81 = 0;
  v72 = (*(*(sub_1A88(&qword_90AD0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v73 = &v29 - v72;
  v88 = __chkstk_darwin(v74);
  v87 = v1;

  v2 = v75;
  if (_TtC12FontSettings15FontAssetFamily == *v74)
  {
    v2 = v74;
  }

  v76 = v2;
  if (v2)
  {
    v68 = v76;
  }

  else
  {

    v68 = 0;
  }

  v67 = v68;
  if (v68)
  {
    v66 = v67;
    v65 = v67;
    v81 = v67;
    sub_1AF4(v67);
    v50 = 19;
    v3 = sub_7D704();
    v57 = &v79;
    v79 = v3;
    v80 = v4;
    v61 = 1;
    v89._countAndFlagsBits = sub_7CF84("Request removal of ", v50, 1);
    object = v89._object;
    sub_7D6F4(v89);

    v52 = &v78;
    swift_beginAccess();
    v53 = *(v65 + 16);
    v54 = *(v65 + 24);

    swift_endAccess();

    v55 = v77;
    v77[0] = v53;
    v77[1] = v54;
    sub_7D6E4();
    sub_1F58();
    v60 = 0;
    v90._countAndFlagsBits = sub_7CF84("", 0, v61 & 1);
    v56 = v90._object;
    sub_7D6F4(v90);

    v59 = v79;
    v58 = v80;

    sub_1F58();
    v62 = sub_7CF74();
    v63 = v5;
    sub_7D194();
    v6 = sub_7D1E4();
    (*(*(v6 - 8) + 56))(v73, 0, v61);

    v7 = swift_allocObject();
    v8 = v69;
    v9 = v70;
    v10 = v73;
    v11 = v63;
    v12 = v65;
    v13 = v7;
    v14 = v62;
    v13[2] = 0;
    v13[3] = 0;
    v13[4] = v8;
    v13[5] = v12;
    v64 = sub_5370(v14, v11, v10, v9, v13, &type metadata for () + 8);
    sub_5900(v73);
  }

  else
  {

    v16 = 0;
    if (_TtC12FontSettings18FontProviderFamily == *v74)
    {
      v16 = v74;
    }

    v49 = v16;
    if (v16)
    {
      v48 = v49;
    }

    else
    {

      v48 = 0;
    }

    v47 = v48;
    if (v48)
    {
      v46 = v47;
      v45 = v47;
      v86 = v47;

      sub_6AE48();

      v30 = 19;
      v17 = sub_7D704();
      v37 = &v84;
      v84 = v17;
      v85 = v18;
      v41 = 1;
      v91._countAndFlagsBits = sub_7CF84("Request removal of ", v30, 1);
      v31 = v91._object;
      sub_7D6F4(v91);

      v32 = &v83;
      swift_beginAccess();
      v33 = v45[2];
      v34 = v45[3];

      swift_endAccess();

      v35 = v82;
      v82[0] = v33;
      v82[1] = v34;
      sub_7D6E4();
      sub_1F58();
      v40 = 0;
      v92._countAndFlagsBits = sub_7CF84("", 0, v41 & 1);
      v36 = v92._object;
      sub_7D6F4(v92);

      v39 = v84;
      v38 = v85;

      sub_1F58();
      v42 = sub_7CF74();
      v43 = v19;
      sub_7D194();
      v20 = sub_7D1E4();
      (*(*(v20 - 8) + 56))(v73, 0, v41);

      v21 = swift_allocObject();
      v22 = v69;
      v23 = v71;
      v24 = v73;
      v25 = v43;
      v26 = v45;
      v27 = v21;
      v28 = v42;
      v27[2] = 0;
      v27[3] = 0;
      v27[4] = v22;
      v27[5] = v26;
      v44 = sub_5370(v28, v25, v24, v23, v27, &type metadata for () + 8);
      sub_5900(v73);
    }
  }

  return result;
}

uint64_t sub_7864(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a5;
  v5[5] = a4;
  v5[2] = v5;
  v5[3] = 0;
  v5[4] = 0;
  v5[3] = a4;
  v5[4] = a5;
  return _swift_task_switch(sub_78B4, 0);
}

uint64_t sub_78B4()
{
  *(v0 + 16) = v0;
  sub_7D184();
  *(v0 + 56) = sub_7D174();
  v1 = sub_7D154();

  return _swift_task_switch(sub_7954, v1);
}

uint64_t sub_7954()
{
  v1 = *(v0 + 48);
  *(v0 + 16) = v0;
  sub_6634(v1);

  v2 = *(*(v0 + 16) + 8);

  return v2();
}

uint64_t sub_79F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a5;
  v5[5] = a4;
  v5[2] = v5;
  v5[3] = 0;
  v5[4] = 0;
  v5[3] = a4;
  v5[4] = a5;
  return _swift_task_switch(sub_7A48, 0);
}

uint64_t sub_7A48()
{
  *(v0 + 16) = v0;
  sub_7D184();
  *(v0 + 56) = sub_7D174();
  v1 = sub_7D154();

  return _swift_task_switch(sub_7AE8, v1);
}

uint64_t sub_7AE8()
{
  v1 = *(v0 + 48);
  *(v0 + 16) = v0;
  sub_6C84(v1);

  v2 = *(*(v0 + 16) + 8);

  return v2();
}

uint64_t sub_7B8C(uint64_t a1)
{
  v17[13] = 0;
  v17[14] = a1;
  v11 = sub_7CF84("remove(_:)", 0xAuLL, 1);
  v14 = v1;
  v17[11] = sub_7D704();
  v17[12] = v2;
  v18._countAndFlagsBits = sub_7CF84("🗑️ Removing font asset family: ", 0x24uLL, 0);
  sub_7D6F4(v18);

  swift_beginAccess();
  v6 = *(a1 + 16);
  v7 = *(a1 + 24);

  swift_endAccess();

  v17[6] = v6;
  v17[7] = v7;
  sub_7D6E4();
  sub_1F58();
  v19._countAndFlagsBits = sub_7CF84("", 0, 1);
  sub_7D6F4(v19);

  sub_1F58();
  v10 = sub_7CF74();
  v13 = v3;
  v12 = sub_7D714();
  v8 = sub_4754();
  v9 = sub_4754();
  v4 = sub_4760();
  sub_71E20(v11, v14, v8 & 1, v9 & 1, v10, v13, v4, v12);

  sub_6CB54();

  sub_6AE48();

  v17[4] = a1;
  v16 = sub_14078(v17);
  sub_1A88(&qword_90AF0);
  sub_7D274();
  v16();
}

uint64_t sub_7E44@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v6 = *a1;
  v7 = a1[1];
  sub_7D184();
  sub_7D174();
  sub_7D154();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_1A88(&qword_90B30);
  sub_7D714();
  v4 = v2;
  sub_7CF84("actualPath", 0xAuLL, 1);
  sub_7D6B4();

  v4[8] = &type metadata for String;
  v4[5] = v6;
  v4[6] = v7;
  sub_71DDC();
  sub_1F58();
  *a2 = sub_7CDB4();
}

uint64_t sub_7FFC(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v34 = a1;
  v35 = a2;
  v59 = a3;
  v49 = a4;
  v36 = a5;
  v58 = a6;
  v38 = a8;
  v39 = "Fatal error";
  v40 = "Range requires lowerBound <= upperBound";
  v41 = "Swift/Range.swift";
  v42 = "Index out of range";
  v43 = "invalid Collection: count differed in successive traversals";
  v44 = "Swift/ArrayShared.swift";
  v72 = a3;
  v71 = a4;
  v70 = a5;
  v45 = *(a5 - 8);
  v46 = a5 - 8;
  v47 = (*(v45 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(a1);
  v48 = &v15 - v47;
  v50 = 0;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v52 = *(AssociatedTypeWitness - 8);
  v53 = AssociatedTypeWitness - 8;
  v54 = (*(v52 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v8 = __chkstk_darwin(v50);
  v55 = &v15 - v54;
  v56 = (*(*(v9 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v8);
  v57 = &v15 - v56;
  v60 = swift_getAssociatedTypeWitness();
  v61 = *(v60 - 8);
  v62 = v60 - 8;
  v63 = (*(v61 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v10 = __chkstk_darwin(v59);
  v64 = &v15 - v63;
  v65 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v10);
  v66 = &v15 - v65;
  v67 = sub_7D2F4();
  if (!v67)
  {
    goto LABEL_24;
  }

  v69 = sub_7D584();
  v33 = sub_7D594();
  sub_7D564(v67);
  result = sub_7D2E4();
  if (v67 < 0)
  {
    sub_7D5E4();
    __break(1u);
LABEL_24:
    v17 = sub_7D0D4();
    v18 = v37;
    return v17;
  }

  if (!v67)
  {
LABEL_19:
    v23 = v37;
LABEL_20:
    v19 = v23;
    sub_7D304();
    swift_getAssociatedConformanceWitness();
    v22 = sub_7CE84();
    v20 = *(v61 + 8);
    v21 = v61 + 8;
    v20(v64, v60);
    if ((v22 & 1) == 0)
    {
      sub_7D624();
      __break(1u);
    }

    v20(v66, v60);
    v16 = v69;

    v17 = v16;
    v18 = v19;
    return v17;
  }

  v31 = 0;
  for (i = v37; ; i = v27)
  {
    v29 = i;
    v30 = v31;
    if (v31 < 0 || v30 >= v67)
    {
      goto LABEL_18;
    }

    if (v67 < 0)
    {
      sub_7D5E4();
      __break(1u);
LABEL_18:
      sub_7D624();
      __break(1u);
      goto LABEL_19;
    }

    v28 = v30 + 1;
    if (__OFADD__(v30, 1))
    {
      break;
    }

    v26 = &v68;
    v25 = sub_7D364();
    (*(v52 + 16))(v55);
    v25();
    v14 = v29;
    v34(v55, v48);
    v27 = v14;
    if (v14)
    {
      (*(v52 + 8))(v55, AssociatedTypeWitness);
      (*(v61 + 8))(v66, v60);
      sub_B068();
      (*(v45 + 32))(v38, v48, v36);
      return v24;
    }

    (*(v52 + 8))(v55, AssociatedTypeWitness);
    sub_7D574();
    sub_7D314();
    if (v28 == v67)
    {
      v23 = v27;
      goto LABEL_20;
    }

    result = v27;
    v31 = v28;
  }

  __break(1u);
  return result;
}

uint64_t sub_88E0(uint64_t a1)
{
  v17[13] = 0;
  v17[14] = a1;
  v11 = sub_7CF84("remove(_:)", 0xAuLL, 1);
  v14 = v1;
  v17[11] = sub_7D704();
  v17[12] = v2;
  v18._countAndFlagsBits = sub_7CF84("🗑️ Removing font provider family: ", 0x27uLL, 0);
  sub_7D6F4(v18);

  swift_beginAccess();
  v6 = *(a1 + 16);
  v7 = *(a1 + 24);

  swift_endAccess();

  v17[6] = v6;
  v17[7] = v7;
  sub_7D6E4();
  sub_1F58();
  v19._countAndFlagsBits = sub_7CF84("", 0, 1);
  sub_7D6F4(v19);

  sub_1F58();
  v10 = sub_7CF74();
  v13 = v3;
  v12 = sub_7D714();
  v8 = sub_4754();
  v9 = sub_4754();
  v4 = sub_4760();
  sub_71E20(v11, v14, v8 & 1, v9 & 1, v10, v13, v4, v12);

  v17[4] = a1;
  v16 = sub_14234(v17);
  sub_1A88(&qword_90B18);
  sub_7D274();
  v16();
}

uint64_t sub_8B74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = v5;
  v5[3] = 0;
  v5[4] = 0;
  v5[3] = a4;
  v5[4] = a5;
  v6 = swift_task_alloc();
  *(v8 + 40) = v6;
  *v6 = *(v8 + 16);
  v6[1] = sub_8C4C;

  return sub_49EC(a5, 120);
}

uint64_t sub_8C4C()
{
  v3 = *v0;
  *(v3 + 16) = *v0;

  v1 = *(*(v3 + 16) + 8);

  return v1();
}

uint64_t sub_8D8C()
{

  swift_beginAccess();
  type metadata accessor for FontAssetFamily();
  sub_7CE04();
  sub_1F58();
  if (!v1)
  {
    return swift_endAccess();
  }

  swift_endAccess();
  sub_5B58(v1, 1);
}

uint64_t sub_8EC4()
{
  *(v1 + 600) = v0;
  *(v1 + 496) = v1;
  *(v1 + 504) = 0;
  *(v1 + 512) = 0;
  *(v1 + 776) = 0;
  *(v1 + 520) = 0;
  *(v1 + 536) = 0;
  memset((v1 + 136), 0, 0x28uLL);
  *(v1 + 560) = 0;
  *(v1 + 576) = 0;
  memset((v1 + 216), 0, 0x28uLL);
  memset((v1 + 256), 0, 0x28uLL);
  *(v1 + 448) = 0;
  *(v1 + 456) = 0;
  v2 = sub_7BCD4();
  *(v1 + 608) = v2;
  *(v1 + 616) = *(v2 - 8);
  *(v1 + 624) = swift_task_alloc();
  *(v1 + 632) = swift_task_alloc();
  sub_1A88(&qword_90B50);
  *(v1 + 640) = swift_task_alloc();
  *(v1 + 648) = swift_task_alloc();
  v3 = sub_7BB94();
  *(v1 + 656) = v3;
  *(v1 + 664) = *(v3 - 8);
  *(v1 + 672) = swift_task_alloc();
  sub_1A88(&qword_90B58);
  *(v1 + 680) = swift_task_alloc();
  v4 = sub_7D3D4();
  *(v1 + 688) = v4;
  *(v1 + 696) = *(v4 - 8);
  *(v1 + 704) = swift_task_alloc();
  *(v1 + 504) = v0;
  *(v1 + 712) = sub_7D184();
  *(v1 + 720) = sub_7D174();
  v7 = sub_7D154();
  *(v1 + 728) = v7;
  *(v1 + 736) = v5;

  return _swift_task_switch(sub_91DC, v7);
}

uint64_t sub_91DC()
{
  *(v0 + 496) = v0;
  v8 = [objc_opt_self() defaultCenter];
  v7 = *sub_61278();
  v7;
  v1 = sub_7D3E4();
  *(v0 + 744) = v1;

  *(v0 + 512) = v1;
  *(v0 + 776) = 0;

  sub_7D3C4();
  *(v0 + 777) = 0;
  v10 = sub_7D174();
  *(v0 + 752) = v10;
  v2 = swift_task_alloc();
  v9[95] = v2;
  v3 = sub_B7A8();
  *v2 = v9[62];
  v2[1] = sub_938C;
  v4 = v9[86];
  v5 = v9[85];

  return _sScIsE4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKF(v5, v10, &protocol witness table for MainActor, v4, v3);
}

uint64_t sub_938C()
{
  v5 = *v1 + 16;
  *(*v1 + 496) = *v1;

  if (v0)
  {
    v2 = *(v5 + 712);
    v3 = sub_A8E4;
  }

  else
  {
    swift_unknownObjectRelease();
    v2 = *(v5 + 712);
    v3 = sub_950C;
  }

  return _swift_task_switch(v3, v2);
}

uint64_t sub_950C()
{
  v1 = v0[85];
  v2 = v0[83];
  v3 = v0[82];
  v0[62] = v0;
  if ((*(v2 + 48))(v1, 1, v3) == 1)
  {
    (*(*(v61 + 696) + 8))();

    v21 = *(*(v61 + 496) + 8);

    return v21();
  }

  else
  {
    (*(*(v61 + 664) + 32))(*(v61 + 672), *(v61 + 680), *(v61 + 656));
    if (sub_7BB84())
    {
      sub_BA0C(&kCTFontManagerAvailableFontURLsAddedKey, (v61 + 592));
      sub_1A88(&qword_90B88);
      sub_BA4C();
      sub_7D6B4();
      sub_7CE04();

      sub_BAE4(v61 + 296);
      sub_BB0C((v61 + 592));
    }

    else
    {
      *(v61 + 336) = 0;
      *(v61 + 344) = 0;
      *(v61 + 352) = 0;
      *(v61 + 360) = 0;
    }

    if (*(v61 + 360))
    {
      sub_1A88(&qword_90B68);
      if (swift_dynamicCast())
      {
        v60 = *(v61 + 584);
      }

      else
      {
        v60 = 0;
      }

      v59 = v60;
    }

    else
    {
      sub_B828(v61 + 336);
      v59 = 0;
    }

    if (v59)
    {
      *(v61 + 560) = v59;

      *(v61 + 568) = v59;
      sub_1A88(&qword_90B68);
      sub_B904();
      sub_B984();
      *(v61 + 576) = sub_7D2C4();

      sub_7D224();
      memcpy((v61 + 216), (v61 + 96), 0x28uLL);
      for (i = *(v61 + 777); ; i = v50)
      {
        v55 = *(v61 + 648);
        v56 = *(v61 + 608);
        v54 = *(v61 + 616);
        sub_1A88(&qword_90B80);
        sub_7D294();
        if ((*(v54 + 48))(v55, 1, v56) == 1)
        {
          break;
        }

        (*(*(v61 + 616) + 32))(*(v61 + 632), *(v61 + 648), *(v61 + 608));
        sub_7BCA4();
        v4 = sub_612D8();
        v51 = *v4;
        v52 = v4[1];

        v63._countAndFlagsBits = v51;
        v63._object = v52;
        v53 = sub_7D014(v63);

        if (v53)
        {
          *(v61 + 776) = 1;
          v50 = 1;
        }

        else
        {
          sub_61338();
          sub_7D224();
          memcpy((v61 + 256), (v61 + 56), 0x28uLL);
          while (1)
          {
            sub_1A88(&qword_90B98);
            sub_7D294();
            v48 = *(v61 + 432);
            v49 = *(v61 + 440);
            if (!v49)
            {
              break;
            }

            *(v61 + 448) = v48;
            *(v61 + 456) = v49;
            v44 = sub_7CF84("respondToNotification()", 0x17uLL, 1);
            v47 = v5;
            *(v61 + 464) = sub_7D704();
            *(v61 + 472) = v6;
            v64._countAndFlagsBits = sub_7CF84("➕ Notified of addition: ", 0x1AuLL, 0);
            sub_7D6F4(v64);

            *(v61 + 480) = v48;
            *(v61 + 488) = v49;
            sub_7D6E4();
            v65._countAndFlagsBits = sub_7CF84("", 0, 1);
            sub_7D6F4(v65);

            sub_1F58();
            v43 = sub_7CF74();
            v46 = v7;
            v45 = sub_7D714();
            v41 = sub_4754();
            v42 = sub_4754();
            v8 = sub_4760();
            sub_71E20(v44, v47, v41 & 1, v42 & 1, v43, v46, v8, v45);

            sub_8D8C();
          }

          sub_B114();
          v50 = i;
        }

        (*(*(v61 + 616) + 8))(*(v61 + 632), *(v61 + 608));
      }

      sub_B114();

      v57 = i;
    }

    else
    {
      v57 = *(v61 + 777);
    }

    if (sub_7BB84())
    {
      sub_BA0C(&kCTFontManagerAvailableFontURLsRemovedKey, (v61 + 552));
      sub_1A88(&qword_90B88);
      sub_BA4C();
      sub_7D6B4();
      sub_7CE04();

      sub_BAE4(v61 + 176);
      sub_BB0C((v61 + 552));
    }

    else
    {
      *(v61 + 368) = 0;
      *(v61 + 376) = 0;
      *(v61 + 384) = 0;
      *(v61 + 392) = 0;
    }

    if (*(v61 + 392))
    {
      sub_1A88(&qword_90B68);
      if (swift_dynamicCast())
      {
        v40 = *(v61 + 544);
      }

      else
      {
        v40 = 0;
      }

      v39 = v40;
    }

    else
    {
      sub_B828(v61 + 368);
      v39 = 0;
    }

    if (v39)
    {
      *(v61 + 520) = v39;

      *(v61 + 528) = v39;
      sub_1A88(&qword_90B68);
      sub_B904();
      sub_B984();
      *(v61 + 536) = sub_7D2C4();

      sub_7D224();
      memcpy((v61 + 136), (v61 + 16), 0x28uLL);
      for (j = v57; ; j = v23)
      {
        v35 = *(v61 + 640);
        v36 = *(v61 + 608);
        v34 = *(v61 + 616);
        sub_1A88(&qword_90B80);
        sub_7D294();
        if ((*(v34 + 48))(v35, 1, v36) == 1)
        {
          break;
        }

        (*(*(v61 + 616) + 32))();
        v27 = sub_7CF84("respondToNotification()", 0x17uLL, 1);
        v30 = v9;
        *(v61 + 400) = sub_7D704();
        *(v61 + 408) = v10;
        v66._countAndFlagsBits = sub_7CF84("➖ Notified of removal: ", 0x19uLL, 0);
        sub_7D6F4(v66);

        *(v61 + 416) = sub_7BCA4();
        *(v61 + 424) = v11;
        sub_7D6E4();
        sub_1F58();
        v67._countAndFlagsBits = sub_7CF84("", 0, 1);
        sub_7D6F4(v67);

        sub_1F58();
        v26 = sub_7CF74();
        v29 = v12;
        v28 = sub_7D714();
        v24 = sub_4754();
        v25 = sub_4754();
        v13 = sub_4760();
        sub_71E20(v27, v30, v24 & 1, v25 & 1, v26, v29, v13, v28);

        sub_7BCA4();
        v14 = sub_612D8();
        v31 = *v14;
        v32 = v14[1];

        v68._countAndFlagsBits = v31;
        v68._object = v32;
        v33 = sub_7D014(v68);

        if (v33)
        {
          *(v61 + 776) = 1;
          v23 = 1;
        }

        else
        {
          v23 = j;
        }

        (*(*(v61 + 616) + 8))(*(v61 + 624), *(v61 + 608));
      }

      sub_B114();

      v37 = j;
    }

    else
    {
      v37 = v57;
    }

    *(v61 + 778) = v37 & 1;
    if (v37)
    {
      v15 = swift_task_alloc();
      *(v61 + 768) = v15;
      *v15 = *(v61 + 496);
      v15[1] = sub_A66C;

      return sub_F0A0();
    }

    else
    {
      (*(*(v61 + 664) + 8))(*(v61 + 672), *(v61 + 656));
      *(v61 + 777) = *(v61 + 778) & 1;
      v22 = sub_7D174();
      *(v61 + 752) = v22;
      v17 = swift_task_alloc();
      *(v61 + 760) = v17;
      v18 = sub_B7A8();
      *v17 = *(v61 + 496);
      v17[1] = sub_938C;
      v19 = *(v61 + 688);
      v20 = *(v61 + 680);

      return _sScIsE4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKF(v20, v22, &protocol witness table for MainActor, v19, v18);
    }
  }
}

uint64_t sub_A66C()
{
  v3 = *v0;
  *(*v0 + 496) = *v0;

  v1 = *(v3 + 728);

  return _swift_task_switch(sub_A7AC, v1);
}

uint64_t sub_A7AC()
{
  *(v0 + 496) = v0;
  (*(*(v0 + 664) + 8))(*(v0 + 672), *(v0 + 656));
  *(v0 + 777) = *(v0 + 778) & 1;
  v7 = sub_7D174();
  *(v0 + 752) = v7;
  v1 = swift_task_alloc();
  v6[95] = v1;
  v2 = sub_B7A8();
  *v1 = v6[62];
  v1[1] = sub_938C;
  v3 = v6[86];
  v4 = v6[85];

  return (_sScIsE4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKF)(v4, v7, &protocol witness table for MainActor, v3, v2);
}

uint64_t sub_A91C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = v5;
  *(v5 + 16) = v5;
  v6 = swift_task_alloc();
  *(v8 + 24) = v6;
  *v6 = *(v8 + 16);
  v6[1] = sub_AA08;

  return sub_CCE0(a1, a2, a4, a5);
}

uint64_t sub_AA08()
{
  v2 = *v1;
  *(v2 + 16) = *v1;
  v5 = v2 + 16;

  if (v0)
  {
    v3 = *(*v5 + 8);
  }

  else
  {
    v3 = *(*v5 + 8);
  }

  return v3();
}

uint64_t sub_AB94@<X0>(uint64_t *a1@<X8>)
{
  *a1 = sub_7CB24();
  v3 = enum case for PopoverAttachmentAnchor.rect(_:);
  v1 = sub_7C4F4();
  return (*(*(v1 - 8) + 104))(a1, v3);
}

uint64_t sub_AC14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (sub_D1EC(18, 1, 0))
  {
    if (a5 != 4)
    {
      sub_7C5C4();
    }

    return sub_7C794();
  }

  else if (sub_D1EC(18, 0, 0))
  {
    return sub_7C954();
  }

  else
  {
    return sub_7C964();
  }
}

uint64_t sub_AE3C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_AE8C(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_25A4;

  return sub_8B74(a1, v6, v7, v8, v9);
}

unint64_t sub_AF70()
{
  v2 = qword_90AE0;
  if (!qword_90AE0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_90AE0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_AFE8()
{
  v2 = qword_90AE8;
  if (!qword_90AE8)
  {
    sub_7D5A4();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_90AE8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_B094()
{
  v2 = qword_90B00;
  if (!qword_90B00)
  {
    sub_7BD04();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_90B00);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_B1C4()
{
  v2 = qword_90B10;
  if (!qword_90B10)
  {
    sub_B24C(&qword_90AF0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_90B10);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_B24C(uint64_t *a1)
{
  v4 = *a1;
  if (!*a1)
  {
    TypeByMangledNameInContextInMetadataState2 = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = TypeByMangledNameInContextInMetadataState2;
    return TypeByMangledNameInContextInMetadataState2;
  }

  return v4;
}

unint64_t sub_B318()
{
  v2 = qword_90B20;
  if (!qword_90B20)
  {
    sub_B24C(&qword_90B18);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_90B20);
    return WitnessTable;
  }

  return v2;
}

uint64_t type metadata accessor for CFString()
{
  v4 = qword_90BE0;
  if (!qword_90BE0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_90BE0);
      return v1;
    }
  }

  return v4;
}

unint64_t sub_B438()
{
  v2 = qword_90B38;
  if (!qword_90B38)
  {
    type metadata accessor for CFString();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_90B38);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_B4B8()
{
  v2 = qword_90B48;
  if (!qword_90B48)
  {
    sub_B24C(&qword_90B40);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_90B48);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_B540()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_B590(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_25A4;

  return sub_79F8(a1, v6, v7, v8, v9);
}

uint64_t sub_B674()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_B6C4(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_25A4;

  return sub_7864(a1, v6, v7, v8, v9);
}

unint64_t sub_B7A8()
{
  v2 = qword_90B60;
  if (!qword_90B60)
  {
    sub_7D3D4();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_90B60);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_B828(uint64_t a1)
{
  if (*(a1 + 24))
  {
    sub_B864(a1);
  }

  return a1;
}

uint64_t sub_B864(uint64_t a1)
{
  v2 = *(a1 + 24);
  if ((*(*(v2 - 8) + 80) & 0x20000) != 0)
  {
  }

  else
  {
    return (*(*(v2 - 8) + 8))(a1);
  }
}

unint64_t sub_B904()
{
  v2 = qword_90B70;
  if (!qword_90B70)
  {
    sub_7BCD4();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_90B70);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_B984()
{
  v2 = qword_90B78;
  if (!qword_90B78)
  {
    sub_B24C(&qword_90B68);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_90B78);
    return WitnessTable;
  }

  return v2;
}

void *sub_BA0C(id *a1, void *a2)
{
  v3 = *a1;
  *a1;
  result = a2;
  *a2 = v3;
  return result;
}

unint64_t sub_BA4C()
{
  v2 = qword_90B90;
  if (!qword_90B90)
  {
    sub_B24C(&qword_90B88);
    sub_B438();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_90B90);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_BE10()
{
  sub_EEA8();
  sub_EF28();
  return sub_7D6A4();
}

uint64_t sub_BE4C()
{
  sub_EEA8();
  sub_EF28();
  return sub_7D674();
}

uint64_t sub_BE98()
{
  sub_EEA8();
  sub_EF28();
  return sub_7D684() & 1;
}

uint64_t sub_BEE8()
{
  sub_EEA8();
  sub_EF28();
  return sub_7D694();
}

void sub_C004(uint64_t a1@<X8>)
{
  sub_C040();
  *a1 = v1;
  *(a1 + 8) = v2 & 1;
}

uint64_t sub_C0B0@<X0>(unsigned int *a1@<X0>, _DWORD *a2@<X8>)
{
  result = nullsub_1(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_C1B0()
{
  sub_EE28();
  sub_EF28();
  return sub_7D6A4();
}

uint64_t sub_C1EC()
{
  sub_EE28();
  sub_EF28();
  return sub_7D674();
}

uint64_t sub_C238()
{
  sub_EE28();
  sub_EF28();
  return sub_7D684() & 1;
}

uint64_t sub_C288()
{
  sub_EE28();
  sub_EF28();
  return sub_7D694();
}

uint64_t sub_C3D8@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X8>)
{
  result = nullsub_1(*a1);
  *a2 = result;
  *(a2 + 4) = 0;
  return result;
}

uint64_t sub_C418@<X0>(_DWORD *a1@<X8>)
{
  result = nullsub_1(*v1);
  *a1 = result;
  return result;
}

uint64_t sub_C448()
{
  sub_E0A4();
  sub_E124();
  return sub_7D904();
}

uint64_t sub_C64C()
{
  sub_E0A4();
  sub_E124();
  return sub_7D8F4();
}

uint64_t sub_C690()
{
  sub_E0A4();
  sub_E124();
  return sub_7D8D4();
}

uint64_t sub_C6D4()
{
  sub_E0A4();
  sub_E124();
  return sub_7D8E4();
}

uint64_t sub_C840@<X0>(unsigned __int8 *a1@<X0>, _WORD *a2@<X8>)
{
  result = nullsub_1(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_C880@<X0>(_BYTE *a1@<X8>)
{
  result = nullsub_1(*v1);
  *a1 = result;
  return result;
}

NSString sub_C8B0@<X0>(void *a1@<X8>)
{
  result = sub_C8E8();
  *a1 = result;
  return result;
}

NSString sub_C8E8()
{

  v1 = sub_7CF04();
  v1;

  return v1;
}

uint64_t sub_C954@<X0>(uint64_t *a1@<X8>)
{
  result = sub_C988(*v1);
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_C988(void *a1)
{
  a1;
  v3 = sub_7CF14();

  return v3;
}

uint64_t sub_C9E8()
{
  sub_EFA0();
  sub_EEA8();
  return sub_7D654();
}

uint64_t sub_CAC0()
{
  sub_F020();
  sub_EE28();
  return sub_7D654();
}

uint64_t sub_CB0C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X5>, uint64_t a3@<X6>, uint64_t *a4@<X8>)
{
  if (!a1)
  {
    sub_7D5E4();
    __break(1u);
  }

  v5 = *a2;
  v6 = a2[1];

  v7 = swift_allocObject();
  v7[2] = a3;
  v7[3] = v5;
  v7[4] = v6;
  result = swift_task_create();
  *a4 = result;
  return result;
}

uint64_t sub_CCE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[7] = v4;
  v5[6] = a4;
  v5[5] = a3;
  v5[4] = a2;
  v5[3] = a1;
  v5[2] = v5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5[8] = AssociatedTypeWitness;
  v5[9] = *(AssociatedTypeWitness - 8);
  v5[10] = swift_task_alloc();
  v5[11] = swift_task_alloc();

  return _swift_task_switch(sub_CE0C, 0);
}

uint64_t sub_CE0C()
{
  v9 = v0[10];
  v8 = v0[9];
  v10 = v0[8];
  v0[2] = v0;
  sub_7D784();
  swift_getAssociatedConformanceWitness();
  sub_7D5B4();
  v1 = *(v8 + 8);
  v0[12] = v1;
  v0[13] = (v8 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v1(v9, v10);
  v2 = swift_task_alloc();
  v11[14] = v2;
  *v2 = v11[2];
  v2[1] = sub_CF74;
  v3 = v11[11];
  v4 = v11[6];
  v5 = v11[5];
  v6 = v11[4];

  return dispatch thunk of Clock.sleep(until:tolerance:)(v3, v6, v5, v4);
}

uint64_t sub_CF74()
{
  v4 = *v1;
  *(v4 + 16) = *v1;
  *(v4 + 120) = v0;

  if (v0)
  {
    (*(v4 + 96))(*(v4 + 88), *(v4 + 64));

    return _swift_task_switch(sub_D144, 0);
  }

  else
  {
    (*(v4 + 96))();

    v2 = *(*(v4 + 16) + 8);

    return v2();
  }
}

uint64_t sub_D144()
{
  *(v0 + 16) = v0;

  v1 = *(*(v0 + 16) + 8);

  return v1();
}

__n128 sub_D228(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_D23C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (*(a1 + 32))
    {
      v3 = *a1;
    }

    else
    {
      v3 = -1;
    }
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

uint64_t sub_D344(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    if (a3)
    {
      *(result + 32) = 1;
    }
  }

  else if (a3)
  {
    *(result + 32) = 0;
  }

  return result;
}

uint64_t type metadata accessor for CGRect()
{
  v4 = qword_90BA0;
  if (!qword_90BA0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_90BA0);
      return v1;
    }
  }

  return v4;
}

__n128 sub_D58C(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_D598(uint64_t a1, int a2)
{
  if (a2)
  {
    if (*(a1 + 16))
    {
      v3 = *a1;
    }

    else
    {
      v3 = -1;
    }
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

uint64_t sub_D6A4(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    if (a3)
    {
      *(result + 16) = 1;
    }
  }

  else if (a3)
  {
    *(result + 16) = 0;
  }

  return result;
}

uint64_t type metadata accessor for CGPoint()
{
  v4 = qword_90BA8;
  if (!qword_90BA8)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_90BA8);
      return v1;
    }
  }

  return v4;
}

uint64_t type metadata accessor for CTFont()
{
  v4 = qword_90BB0;
  if (!qword_90BB0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_90BB0);
      return v1;
    }
  }

  return v4;
}

uint64_t type metadata accessor for ComparisonResult()
{
  v4 = qword_90BB8;
  if (!qword_90BB8)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_90BB8);
      return v1;
    }
  }

  return v4;
}

uint64_t type metadata accessor for CFComparisonResult()
{
  v4 = qword_90BC0;
  if (!qword_90BC0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_90BC0);
      return v1;
    }
  }

  return v4;
}

uint64_t type metadata accessor for CTFontSymbolicTraits()
{
  v4 = qword_90BC8;
  if (!qword_90BC8)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_90BC8);
      return v1;
    }
  }

  return v4;
}

uint64_t type metadata accessor for CGSize()
{
  v4 = qword_90BD0;
  if (!qword_90BD0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_90BD0);
      return v1;
    }
  }

  return v4;
}

uint64_t type metadata accessor for CTFontDescriptor()
{
  v4 = qword_90BD8;
  if (!qword_90BD8)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_90BD8);
      return v1;
    }
  }

  return v4;
}

uint64_t type metadata accessor for OSLogType()
{
  v4 = qword_90BE8;
  if (!qword_90BE8)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_90BE8);
      return v1;
    }
  }

  return v4;
}

unint64_t sub_DD44()
{
  v2 = qword_90BF0;
  if (!qword_90BF0)
  {
    type metadata accessor for CTFontSymbolicTraits();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_90BF0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_DDDC()
{
  v2 = qword_90BF8;
  if (!qword_90BF8)
  {
    type metadata accessor for CTFontSymbolicTraits();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_90BF8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_DE74()
{
  v2 = qword_90C00;
  if (!qword_90C00)
  {
    type metadata accessor for CTFontSymbolicTraits();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_90C00);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_DF0C()
{
  v2 = qword_90C08;
  if (!qword_90C08)
  {
    type metadata accessor for CTFontSymbolicTraits();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_90C08);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_DFA4()
{
  v2 = qword_90C10;
  if (!qword_90C10)
  {
    type metadata accessor for CFString();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_90C10);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_E024()
{
  v2 = qword_90C18;
  if (!qword_90C18)
  {
    type metadata accessor for OSLogType();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_90C18);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_E0A4()
{
  v2 = qword_90C20;
  if (!qword_90C20)
  {
    type metadata accessor for CTFontSymbolicTraits();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_90C20);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_E124()
{
  v2 = qword_90C28;
  if (!qword_90C28)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_90C28);
    return WitnessTable;
  }

  return v2;
}

void *sub_E19C(const void *a1, void *a2)
{
  v6 = sub_7D1E4();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = sub_1A88(&qword_90AD0);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 16))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

uint64_t sub_E30C(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = *(v1 + 24);
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_25A4;

  return sub_17A28(a1, v6);
}

uint64_t sub_E474()
{

  swift_unownedRelease();
  return swift_deallocObject();
}

uint64_t sub_E4E0(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

unint64_t sub_E544()
{
  v2 = qword_90C48;
  if (!qword_90C48)
  {
    sub_B24C(&qword_90C40);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_90C48);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_E5CC()
{
  swift_unknownObjectRelease();
  swift_unownedRelease();

  return swift_deallocObject();
}

uint64_t sub_E61C(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_25A4;

  return sub_59A8(a1, v6, v7, v8, v9);
}

uint64_t sub_E700()
{
  swift_unknownObjectRelease();
  swift_unownedRelease();

  return swift_deallocObject();
}

uint64_t sub_E750(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_25A4;

  return sub_59A8(a1, v6, v7, v8, v9);
}

uint64_t sub_E834()
{
  swift_unknownObjectRelease();
  swift_unownedRelease();

  return swift_deallocObject();
}

uint64_t sub_E884(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_25A4;

  return sub_4778(a1, v6, v7, v8, v9);
}

uint64_t type metadata accessor for Key()
{
  v4 = qword_90C50;
  if (!qword_90C50)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_90C50);
      return v1;
    }
  }

  return v4;
}

uint64_t type metadata accessor for FileAttributeKey()
{
  v4 = qword_90C58;
  if (!qword_90C58)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_90C58);
      return v1;
    }
  }

  return v4;
}

unint64_t sub_EAB0()
{
  v2 = qword_90C60;
  if (!qword_90C60)
  {
    type metadata accessor for FileAttributeKey();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_90C60);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_EB48()
{
  v2 = qword_90C68;
  if (!qword_90C68)
  {
    type metadata accessor for FileAttributeKey();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_90C68);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_EBE0()
{
  v2 = qword_90C70;
  if (!qword_90C70)
  {
    type metadata accessor for Key();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_90C70);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_EC78()
{
  v2 = qword_90C78;
  if (!qword_90C78)
  {
    type metadata accessor for Key();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_90C78);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_ED10()
{
  v2 = qword_90C80;
  if (!qword_90C80)
  {
    type metadata accessor for Key();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_90C80);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_EDA8()
{
  v2 = qword_90C88;
  if (!qword_90C88)
  {
    type metadata accessor for FileAttributeKey();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_90C88);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_EE28()
{
  v2 = qword_90C90;
  if (!qword_90C90)
  {
    type metadata accessor for FileAttributeKey();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_90C90);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_EEA8()
{
  v2 = qword_90C98;
  if (!qword_90C98)
  {
    type metadata accessor for Key();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_90C98);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_EF28()
{
  v2 = qword_90CA0;
  if (!qword_90CA0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_90CA0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_EFA0()
{
  v2 = qword_90CA8;
  if (!qword_90CA8)
  {
    type metadata accessor for Key();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_90CA8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_F020()
{
  v2 = qword_90CB0;
  if (!qword_90CB0)
  {
    type metadata accessor for FileAttributeKey();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_90CB0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_F0A0()
{
  v1[4] = v0;
  v1[2] = v1;
  v1[3] = 0;
  v1[3] = v0;
  sub_7D184();
  v1[5] = sub_7D174();
  v2 = sub_7D154();

  return _swift_task_switch(sub_F154, v2);
}

uint64_t sub_F154()
{
  *(v0 + 16) = v0;
  sub_12244();
  sub_14500();

  v1 = *(*(v0 + 16) + 8);

  return v1();
}

uint64_t sub_F208()
{
  v2 = sub_F2D4();
  sub_FA28(v2, v0);
  sub_14314();
  sub_143B8();
  sub_1445C();
  sub_14500();
}

uint64_t sub_F2D4()
{
  v34 = 0;
  v33 = 0;
  v32 = 0;
  v30 = 0;
  v31 = 0;
  v24 = 0;
  v25 = 0;
  memset(__b, 0, sizeof(__b));
  v35 = v0;
  type metadata accessor for CTFontDescriptor();
  v34 = sub_7D714();
  v33 = sub_145A4();
  v15 = [objc_opt_self() familyNames];
  v16 = sub_7D0A4();
  v32 = v16;

  v29 = v16;
  sub_1A88(&qword_90CB8);
  sub_127A8();
  sub_7D354();
  while (1)
  {
    sub_1A88(&qword_90CC8);
    sub_7D5D4();
    v13 = v27;
    v14 = v28;
    if (!v28)
    {
      break;
    }

    v24 = v27;
    v25 = v28;
    sub_145A4();

    sub_7CE04();
    sub_1F58();
    if (v18)
    {

      __b[0] = v17;
      __b[1] = v18;
      LOBYTE(__b[2]) = v19 & 1;
      __b[3] = v20;
      __b[4] = v21;
      __b[5] = v22;

      LOBYTE(__b[2]) = 1;

      sub_1A88(&qword_90CF0);
      sub_7CE14();
      sub_128B8();
    }

    else
    {

      sub_1A88(&qword_90C30);
      sub_7D714();
      v5 = v1;
      kCTFontFamilyNameAttribute;
      *v5 = kCTFontFamilyNameAttribute;

      *(v5 + 32) = &type metadata for String;
      *(v5 + 8) = v13;
      *(v5 + 16) = v14;
      kCTFontDownloadedAttribute;
      *(v5 + 40) = kCTFontDownloadedAttribute;
      *(v5 + 72) = &type metadata for Bool;
      *(v5 + 48) = 0;
      kCTFontDownloadableAttribute;
      *(v5 + 80) = kCTFontDownloadableAttribute;
      *(v5 + 112) = &type metadata for Bool;
      *(v5 + 88) = 0;
      sub_71DDC();
      type metadata accessor for CFString();
      sub_B438();
      sub_7CDB4();
      isa = sub_7CD84().super.isa;
      v11 = CTFontDescriptorCreateWithAttributes(isa);

      v11;
      v11;
      sub_1A88(&qword_90CE0);
      sub_7D714();
      v9 = v2;
      v7 = kCTFontUserInstalledAttribute;
      kCTFontUserInstalledAttribute;
      *v9 = v7;
      v8 = sub_61724();

      *(v9 + 8) = (v8 ^ 1) & 1;
      sub_71DDC();
      sub_7CDB4();
      v10 = sub_7CD84().super.isa;
      CopyWithAttributes = CTFontDescriptorCreateCopyWithAttributes(v11, v10);

      CopyWithAttributes;

      sub_1A88(&qword_90CE8);
      sub_7D0F4();
    }
  }

  sub_B2C0();

  v4 = sub_10148();

  v26 = sub_7CDD4();
  sub_1A88(&qword_90CD0);
  sub_12830();
  sub_7D134();

  sub_B2C0();
  sub_B2C0();
  return v4;
}

uint64_t sub_FA28(uint64_t a1, uint64_t a2)
{
  v35 = 0;
  v34 = 0;
  v33 = 0;
  v32 = 0;
  v30 = 0;
  v31 = 0;
  v26 = 0;
  v27 = 0;
  memset(__b, 0, sizeof(__b));
  v38 = a1;
  v37 = a2;
  v36 = v2;
  type metadata accessor for Family();
  sub_7D714();
  sub_128FC();
  v35 = sub_7D214();
  type metadata accessor for FontAssetFamily();
  sub_7D714();
  sub_1297C();
  v34 = sub_7D214();
  sub_7D714();
  v33 = sub_7D214();
  type metadata accessor for FontProviderFamily();
  sub_7D714();
  sub_129FC();
  v32 = sub_7D214();

  v29 = a1;
  sub_1A88(&qword_90CE8);
  sub_12A7C();
  sub_7D354();
  while (1)
  {
    sub_1A88(&qword_90D18);
    sub_7D5D4();
    v15 = v28;
    if (!v28)
    {
      break;
    }

    if (sub_61E48())
    {
      v15;
      sub_6A410(v15);

      v14 = sub_6ACF8();

      if (sub_62C5C(v14, 2))
      {

        sub_1A88(&qword_90AF0);
        sub_7D264();
      }

      sub_1A88(&qword_90AF0);
      sub_7D264();
    }

    else if (sub_61724())
    {
      v15;
      sub_6A45C(v15);
      sub_1A88(&qword_90D38);
      sub_7D264();
    }

    else if (sub_61AC4())
    {
      v15;
      sub_6A3C4(v15);
      sub_1A88(&qword_90B18);
      sub_7D264();
    }
  }

  sub_B2C0();

  v25 = a2;
  sub_1A88(&qword_90D20);
  sub_12B04();
  sub_7D354();
  while (1)
  {
    sub_1A88(&qword_90D30);
    sub_7D5D4();
    v9 = v19;
    v10 = v20;
    v11 = v21;
    v12 = v22;
    v13 = v23;
    if (!v20)
    {
      break;
    }

    __b[0] = v19;
    __b[1] = v20;
    LOBYTE(__b[2]) = v21 & 1;
    __b[3] = v22;
    __b[4] = v23;
    __b[5] = v24;

    v3 = sub_6175C();
    v6 = *v3;
    v7 = v3[1];

    v39._countAndFlagsBits = v6;
    v39._object = v7;
    v8 = sub_7D014(v39);

    if (v8)
    {
    }

    else
    {

      sub_6A4A8(v9, v10, v12, v13);

      sub_1A88(&qword_90AF0);
      sub_7D264();

      if (v11)
      {

        sub_7D264();
      }
    }
  }

  sub_B2C0();
  v5 = v35;

  sub_B2C0();
  sub_B2C0();
  sub_B2C0();
  sub_B2C0();
  return v5;
}

uint64_t sub_10148()
{

  sub_1A88(&qword_90CE8);
  sub_13888();
  return sub_7D554();
}

uint64_t sub_101FC()
{
  v2 = [objc_opt_self() cachedDownloadFamiles];
  sub_7CD94();

  sub_1A88(&qword_90B28);
  sub_1A88(&qword_90D48);
  sub_1393C();
  sub_7D024();

  sub_1A88(&qword_90D58);
  sub_139C4();
  v1 = sub_7CDC4();

  return v1;
}

void *sub_103C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v93 = 0;
  v94 = 0;
  v90 = 0;
  memset(__b, 0, sizeof(__b));
  v82 = 0;
  v81 = 0;
  v79 = 0;
  v80 = 0;
  v70 = 0;
  v68 = 0;
  v69 = 0;
  v63 = 0;
  v64 = 0;
  v61 = 0;
  v62 = 0;
  v53 = 0;
  v54 = 0;
  v101 = a1;
  v100 = a2;
  sub_7D184();
  sub_7D174();
  sub_7D154();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_13E30(a1, v99);
  if (swift_dynamicCast())
  {
    v46 = v97;
    v47 = v98;
  }

  else
  {
    v46 = 0;
    v47 = 0;
  }

  if (v47)
  {
    v93 = v46;
    v94 = v47;
    sub_13E9C(a2, v92);
    sub_1A88(&qword_90B28);
    v3 = swift_dynamicCast();
    if (v3)
    {
      v45 = v91[8];
    }

    else
    {
      v45 = 0;
    }

    if (v45)
    {
      v90 = v45;
      v43 = *sub_6175C();

      v44 = sub_7D014(v43);

      if (v44)
      {
        memset(v51, 0, 64);

        memcpy(__dst, v51, sizeof(__dst));
      }

      else
      {

        v38 = sub_4754();
        v39 = sub_617BC();
        v40 = v4;
        v5 = sub_617E8();
        sub_6180C(v46, v47, v38 & 1, v39, v40, v5, v102);
        v41 = v102[16];
        v42 = v102[16];
        memcpy(__b, v102, sizeof(__b));
        v6 = sub_61828();
        sub_13F00(v6, &v85);
        sub_7D6B4();
        sub_7CE04();
        if (v87)
        {
          sub_1A88(&qword_90CB8);
          if (swift_dynamicCast())
          {
            v36 = v51[8];
          }

          else
          {
            v36 = 0;
          }

          sub_BAE4(v84);
          sub_1F58();
          v37 = v36;
        }

        else
        {
          sub_BAE4(v84);
          sub_1F58();
          sub_B828(v86);
          v37 = 0;
        }

        v83 = v37;
        if (v37)
        {
          v88 = v83;
        }

        else
        {
          v88 = sub_7D714();
        }

        v29 = v88;
        v82 = v88;

        __b[5] = v29;

        v30 = objc_opt_self();
        sub_7D714();
        v28 = v7;
        v8 = sub_61888();
        sub_13F00(v8, v28);
        sub_71DDC();
        sub_7D0C4();

        isa = sub_7D094().super.isa;

        sub_7BD14();
        v31 = sub_7D094().super.isa;

        v33 = [v30 preferredLocalizationsFromArray:isa forPreferences:v31];

        v81 = sub_7D0A4();
        sub_7D714();
        v34 = v9;
        v10 = sub_61888();
        sub_13F00(v10, v34);
        sub_71DDC();
        v35 = sub_7D124();

        if (v35)
        {
          memset(v52, 0, 64);

          sub_128B8();

          memcpy(__dst, v52, sizeof(__dst));
        }

        else
        {
          v79 = 0;
          v80 = 0;
          v11 = sub_618E8();
          sub_13F00(v11, &v76);
          sub_7D6B4();
          sub_7CE04();
          if (v78)
          {
            sub_1A88(&qword_90DB8);
            if (swift_dynamicCast())
            {
              v26 = v52[8];
            }

            else
            {
              v26 = 0;
            }

            sub_BAE4(v75);
            sub_1F58();
            v27 = v26;
          }

          else
          {
            sub_BAE4(v75);
            sub_1F58();
            sub_B828(v77);
            v27 = 0;
          }

          if (v27)
          {
            v70 = v27;
            v67 = sub_7BD14();
            sub_1A88(&qword_90CB8);
            sub_127A8();
            sub_7D354();
            while (1)
            {
              sub_1A88(&qword_90CC8);
              sub_7D5D4();
              if (!v66)
              {
                sub_B2C0();

                goto LABEL_44;
              }

              v63 = v65;
              v64 = v66;

              v20 = sub_7CF04();
              v21 = CTCopyLanguageIdentifierNormalizedForLocalizedNames();

              v22 = sub_7CF14();
              v23 = v12;
              v61 = v22;
              v62 = v12;

              v57 = v22;
              v58 = v23;
              sub_7CE04();
              sub_1F58();
              v24 = v59;
              v25 = v60;
              if (v60)
              {
                break;
              }
            }

            v53 = v59;
            v54 = v60;

            __b[3] = v24;
            __b[4] = v25;

            v17 = __b[0];
            v18 = __b[1];

            v19 = __b[5];

            v55[0] = v46;
            v55[1] = v47;
            v55[2] = v17;
            v55[3] = v18;
            LOBYTE(v55[4]) = v42;
            v55[5] = v24;
            v55[6] = v25;
            v55[7] = v19;
            memcpy(v56, v55, sizeof(v56));

            sub_B2C0();

            sub_128B8();

            memcpy(__dst, v56, sizeof(__dst));
          }

          else
          {
LABEL_44:
            v73 = 0;
            v74 = 0;

            __b[3] = v46;
            __b[4] = v47;

            v14 = __b[0];
            v15 = __b[1];

            v16 = __b[5];

            v71[0] = v46;
            v71[1] = v47;
            v71[2] = v14;
            v71[3] = v15;
            LOBYTE(v71[4]) = v41;
            v71[5] = v46;
            v71[6] = v47;
            v71[7] = v16;
            memcpy(v72, v71, sizeof(v72));

            sub_128B8();

            memcpy(__dst, v72, sizeof(__dst));
          }
        }
      }
    }

    else
    {
      memset(v91, 0, 64);

      memcpy(__dst, v91, sizeof(__dst));
    }
  }

  else
  {
    memset(__src, 0, sizeof(__src));
    memcpy(__dst, __src, sizeof(__dst));
  }

  return memcpy(a3, __dst, 0x40uLL);
}

uint64_t sub_11118()
{
  v1[17] = v0;
  v1[9] = v1;
  v1[10] = 0;
  v1[11] = 0;
  v1[12] = 0;
  v1[13] = 0;
  v1[14] = 0;
  v1[15] = 0;
  v1[16] = 0;
  sub_1A88(&qword_90AD0);
  v1[18] = swift_task_alloc();
  v1[10] = v0;
  sub_7D184();
  v1[19] = sub_7D174();
  v4 = sub_7D154();
  v1[20] = v4;
  v1[21] = v2;

  return _swift_task_switch(sub_11230, v4);
}

uint64_t sub_11230()
{
  v10 = v0[18];
  v6 = v0[17];
  v0[9] = v0;
  v5 = (v6 + OBJC_IVAR____TtC12FontSettings17FontSettingsModel_processingFamilies);
  swift_beginAccess();
  v7 = *v5;
  v0[22] = *v5;

  swift_endAccess();
  v0[11] = v7;
  v9 = sub_7CF84("Create families", 0xFuLL, 1);
  v11 = v1;
  sub_7D1B4();
  v2 = sub_7D1E4();
  (*(*(v2 - 8) + 56))(v10, 0, 1);

  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = v6;
  v8[5] = v7;
  v14 = sub_1A88(&qword_90D68);
  v13 = sub_5370(v9, v11, v10, &unk_7EC50, v8, v14);
  v0[23] = v13;
  sub_5900(v10);

  v0[12] = v13;
  v3 = swift_task_alloc();
  *(v12 + 192) = v3;
  *v3 = *(v12 + 72);
  v3[1] = sub_11474;

  return Task<>.value.getter(v12 + 16, v13, v14);
}

uint64_t sub_11474()
{
  v3 = *v0;
  *(*v0 + 72) = *v0;

  v1 = *(v3 + 160);

  return _swift_task_switch(sub_115B4, v1);
}

uint64_t sub_115B4()
{
  v0[9] = v0;
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[5];
  v0[13] = v0[2];
  v0[14] = v1;
  v0[15] = v2;
  v0[16] = v3;
  sub_14314();
  sub_143B8();
  sub_1445C();
  sub_14500();

  v4 = *(v0[9] + 8);

  return v4();
}

uint64_t sub_1170C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[18] = a5;
  v5[17] = a4;
  v5[16] = a1;
  v5[2] = v5;
  v5[3] = 0;
  v5[4] = 0;
  v5[5] = 0;
  v5[6] = 0;
  v5[7] = 0;
  v5[8] = 0;
  v5[9] = 0;
  v5[10] = 0;
  v5[11] = 0;
  v5[12] = 0;
  v5[3] = a4;
  v5[4] = a5;
  return _swift_task_switch(sub_11780, 0);
}

uint64_t sub_11780()
{
  v0[2] = v0;
  v1 = sub_12244();
  v0[19] = v1;
  v0[20] = v2;
  v0[5] = v1;
  v0[6] = v2;
  sub_1A88(&qword_90D90);
  sub_7D714();
  v0[21] = type metadata accessor for CTFontDescriptor();
  v0[7] = sub_7CDB4();
  v3 = sub_12B8C();
  v0[22] = v3;
  v0[8] = v3;
  v0[23] = sub_7D184();
  v0[24] = sub_7D174();
  v4 = sub_7D154();

  return _swift_task_switch(sub_118D8, v4);
}

uint64_t sub_118D8()
{
  *(v0 + 16) = v0;
  *(v0 + 200) = sub_10148();

  return _swift_task_switch(sub_11968, 0);
}

uint64_t sub_11968()
{
  *(v0 + 16) = v0;
  *(v0 + 208) = sub_7D174();
  v1 = sub_7D154();

  return _swift_task_switch(sub_11A00, v1);
}

uint64_t sub_11A00()
{
  v1 = v0[25];
  v2 = v0[20];
  v0[2] = v0;
  sub_12D28(v1, (v0 + 7), v2);

  return _swift_task_switch(sub_11A9C, 0);
}

uint64_t sub_11A9C()
{
  v0[2] = v0;
  v1 = sub_12F80();
  v0[27] = v1;
  v0[9] = v1;
  v0[28] = sub_7D174();
  v2 = sub_7D154();

  return _swift_task_switch(sub_11B50, v2);
}

uint64_t sub_11B50()
{
  *(v0 + 16) = v0;
  *(v0 + 232) = sub_10148();

  return _swift_task_switch(sub_11BE0, 0);
}

uint64_t sub_11BE0()
{
  *(v0 + 16) = v0;
  *(v0 + 240) = sub_7D174();
  v1 = sub_7D154();

  return _swift_task_switch(sub_11C78, v1);
}

uint64_t sub_11C78()
{
  v1 = v0[29];
  v2 = v0[20];
  v0[2] = v0;
  sub_12D28(v1, (v0 + 7), v2);

  return _swift_task_switch(sub_11D14, 0);
}

uint64_t sub_11D14()
{
  v0[2] = v0;
  v0[13] = sub_7CDD4();
  sub_1A88(&qword_90D98);
  sub_13CBC();
  v0[31] = sub_7D134();
  v0[32] = sub_7D714();
  v0[33] = sub_7D174();
  v1 = sub_7D154();

  return _swift_task_switch(sub_11E20, v1);
}

uint64_t sub_11E20()
{
  v1 = v0[32];
  v2 = v0[31];
  v0[2] = v0;
  v0[34] = sub_FA28(v2, v1);
  v0[35] = v3;
  v0[36] = v4;
  v0[37] = v5;

  return _swift_task_switch(sub_11ED8, 0);
}

uint64_t sub_11ED8()
{
  v9 = v0[36];
  v11 = v0[35];
  v8 = v0[34];
  v10 = v0[18];
  v0[2] = v0;

  v0[10] = v8;

  v0[11] = v11;

  v0[12] = v9;

  *(swift_task_alloc() + 16) = v10;
  type metadata accessor for FontAssetFamily();
  sub_1297C();
  v12 = sub_7D254();
  v4 = v7[36];
  v3 = v7[34];
  v6 = v7[19];
  v5 = v7[16];

  v7[11] = v12;

  v7[14] = sub_7CDD4();
  sub_1A88(&qword_90DA8);
  sub_13D70();
  v7[15] = sub_7D2C4();
  sub_1A88(&qword_90AF0);
  sub_B1C4();
  sub_7D2B4();
  *v5 = v3;
  sub_13DF8(v7 + 11, v5 + 1);
  v5[2] = v4;

  v5[3] = v6;
  sub_B2C0();
  sub_B2C0();
  sub_B2C0();

  sub_B2C0();

  v1 = *(v7[2] + 8);

  return v1();
}

uint64_t sub_12244()
{
  type metadata accessor for FontProviderFamily();
  sub_7D714();
  sub_129FC();
  v13 = sub_7D214();
  sub_7D714();
  sub_7D214();
  sub_1A88(&qword_90CE0);
  sub_7D714();
  v7 = v0;
  v6 = kCTFontUserInstalledAttribute;
  kCTFontUserInstalledAttribute;
  *v7 = v6;
  *(v7 + 8) = 1;
  kCTFontDownloadableAttribute;
  *(v7 + 16) = kCTFontDownloadableAttribute;
  *(v7 + 24) = 0;
  kCTFontDownloadedAttribute;
  *(v7 + 32) = kCTFontDownloadedAttribute;
  *(v7 + 40) = 0;
  sub_71DDC();
  type metadata accessor for CFString();
  sub_B438();
  sub_7CDB4();
  isa = sub_7CD84().super.isa;
  v9 = CTFontDescriptorCreateWithAttributes(isa);

  MatchingFontDescriptors = CTFontDescriptorCreateMatchingFontDescriptors(v9, 0);
  if (MatchingFontDescriptors)
  {
    objc_opt_self();
    v5 = swift_dynamicCastObjCClass();
    if (v5)
    {
      sub_1A88(&qword_90CE8);
      v5;
      sub_13B80();
      sub_7D774();

      if (v11)
      {
        v4 = v11;
LABEL_7:
        v3 = v4;
        goto LABEL_8;
      }
    }

    else
    {
    }

    v4 = 0;
    goto LABEL_7;
  }

  v3 = 0;
LABEL_8:
  if (v3)
  {

    sub_1A88(&qword_90CE8);
    sub_12A7C();
    sub_7D354();
    while (1)
    {
      sub_1A88(&qword_90D18);
      sub_7D5D4();
      if (!v12)
      {
        break;
      }

      sub_61948();
      v2 = sub_7D2A4();
      sub_1F58();

      if (v2 & 1) == 0 && (sub_61724() & 1) == 0 && (sub_61AC4())
      {
        sub_61948();
        sub_1A88(&qword_90B40);
        sub_7D264();

        v12;
        sub_6A3C4(v12);
        sub_1A88(&qword_90B18);
        sub_7D264();
      }
    }

    sub_B2C0();
  }

  sub_B2C0();
  sub_B2C0();
  return v13;
}

unint64_t sub_127A8()
{
  v2 = qword_90CC0;
  if (!qword_90CC0)
  {
    sub_B24C(&qword_90CB8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_90CC0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_12830()
{
  v2 = qword_90CD8;
  if (!qword_90CD8)
  {
    sub_B24C(&qword_90CD0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_90CD8);
    return WitnessTable;
  }

  return v2;
}

void __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> sub_128B8()
{
}

unint64_t sub_128FC()
{
  v2 = qword_90CF8;
  if (!qword_90CF8)
  {
    type metadata accessor for Family();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_90CF8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1297C()
{
  v2 = qword_90D00;
  if (!qword_90D00)
  {
    type metadata accessor for FontAssetFamily();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_90D00);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_129FC()
{
  v2 = qword_90D08;
  if (!qword_90D08)
  {
    type metadata accessor for FontProviderFamily();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_90D08);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_12A7C()
{
  v2 = qword_90D10;
  if (!qword_90D10)
  {
    sub_B24C(&qword_90CE8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_90D10);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_12B04()
{
  v2 = qword_90D28;
  if (!qword_90D28)
  {
    sub_B24C(&qword_90D20);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_90D28);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_12B8C()
{
  v5 = [objc_opt_self() familyNames];
  sub_7D0A4();

  v6 = sub_1A88(&qword_90CB8);
  sub_13C34();
  sub_7D554();

  v2 = type metadata accessor for CTFontDescriptor();
  v0 = sub_127A8();
  v4 = sub_7FFC(sub_1339C, 0, v6, v2, &type metadata for Never, v0, &protocol witness table for Never, v3);
  sub_B2C0();
  return v4;
}

void *sub_12D28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7[1] = 0;
  v7[4] = a1;
  v7[3] = a2;
  v7[2] = a3;

  v7[0] = a3;

  sub_1A88(&qword_90CE8);
  sub_12A7C();
  sub_7D354();
  while (1)
  {
    sub_1A88(&qword_90D18);
    sub_7D5D4();
    if (!v6)
    {
      break;
    }

    sub_61948();
    v4 = sub_7D2A4();
    sub_1F58();

    if ((v4 & 1) == 0)
    {
      sub_61948();
      v6;
      sub_1A88(&qword_90D80);
      sub_7CE14();
      sub_61948();
      sub_1A88(&qword_90B40);
      sub_7D264();
    }
  }

  sub_B2C0();
  result = v7;
  sub_B2C0();
  return result;
}

uint64_t sub_12F80()
{
  sub_1A88(&qword_90CE0);
  sub_7D714();
  v5 = v0;
  kCTFontDownloadableAttribute;
  *v5 = kCTFontDownloadableAttribute;
  *(v5 + 8) = 1;
  sub_71DDC();
  type metadata accessor for CFString();
  sub_B438();
  sub_7CDB4();
  isa = sub_7CD84().super.isa;
  v7 = CTFontDescriptorCreateWithAttributes(isa);

  MatchingFontDescriptors = CTFontDescriptorCreateMatchingFontDescriptors(v7, 0);

  if (MatchingFontDescriptors)
  {
    objc_opt_self();
    v4 = swift_dynamicCastObjCClass();
    if (v4)
    {
      sub_1A88(&qword_90CE8);
      v4;
      sub_13B80();
      sub_7D774();

      if (v9)
      {
        v3 = v9;
LABEL_7:
        v2 = v3;
        goto LABEL_8;
      }
    }

    else
    {
    }

    v3 = 0;
    goto LABEL_7;
  }

  v2 = 0;
LABEL_8:
  if (v2)
  {
    return v2;
  }

  type metadata accessor for CTFontDescriptor();
  return sub_7D714();
}

BOOL sub_1320C()
{

  swift_beginAccess();

  swift_endAccess();

  type metadata accessor for FontAssetFamily();
  sub_7CE04();
  sub_1F58();
  sub_B068();
  return v1 == 0;
}

CTFontDescriptorRef sub_1339C@<X0>(const __CFString **a1@<X0>, CTFontDescriptorRef *a2@<X8>)
{
  v4 = *a1;
  v6 = a1[1];
  sub_1A88(&qword_90D88);
  sub_7D714();
  v5 = v2;
  kCTFontFamilyNameAttribute;
  *v5 = kCTFontFamilyNameAttribute;

  v5[1] = v4;
  v5[2] = v6;
  sub_71DDC();
  type metadata accessor for CFString();
  sub_B438();
  sub_7CDB4();
  isa = sub_7CD84().super.isa;
  v8 = CTFontDescriptorCreateWithAttributes(isa);

  result = v8;
  *a2 = v8;
  return result;
}

uint64_t sub_134E0(void **a1)
{
  v18 = *a1;
  sub_7D184();
  sub_7D174();
  sub_7D154();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (CTFontDescriptorIsVisible())
  {
    v16 = sub_61C04();
    v18;
    if (v16)
    {
      v15 = 1;
    }

    else
    {
      v15 = sub_61724();
    }

    if (v15)
    {
      v17 = 1;
    }

    else if (sub_61D44())
    {
      sub_1A88(&qword_90CB8);
      sub_127A8();
      v14 = sub_7D344();

      if (v14)
      {
        v13 = 1;
      }

      else
      {
        sub_7D714();
        v6 = v1;
        v2 = sub_61888();
        sub_13F00(v2, v6);
        sub_71DDC();
        v8 = objc_opt_self();
        sub_7D714();
        v7 = v3;
        v4 = sub_61888();
        sub_13F00(v4, v7);
        sub_71DDC();
        sub_7D0C4();

        isa = sub_7D094().super.isa;

        sub_7BD14();
        v9 = sub_7D094().super.isa;

        v11 = [v8 preferredLocalizationsFromArray:isa forPreferences:v9];

        sub_7D0A4();
        v12 = sub_7D124() ^ 1;
        sub_B2C0();

        sub_B2C0();
        v13 = v12;
      }

      v17 = v13;
    }

    else
    {
      v17 = 1;
    }
  }

  else
  {
    v17 = 0;
  }

  return v17 & 1;
}

unint64_t sub_13888()
{
  v2 = qword_90D40;
  if (!qword_90D40)
  {
    sub_B24C(&qword_90CE8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_90D40);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1393C()
{
  v2 = qword_90D50;
  if (!qword_90D50)
  {
    sub_B24C(&qword_90B28);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_90D50);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_139C4()
{
  v2 = qword_90D60;
  if (!qword_90D60)
  {
    sub_B24C(&qword_90D58);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_90D60);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_13A4C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_13A9C(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_25A4;

  return sub_1170C(a1, v6, v7, v8, v9);
}

unint64_t sub_13B80()
{
  v2 = qword_90D70;
  if (!qword_90D70)
  {
    sub_B24C(&qword_90CE8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_90D70);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_13C34()
{
  v2 = qword_90D78;
  if (!qword_90D78)
  {
    sub_B24C(&qword_90CB8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_90D78);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_13CBC()
{
  v2 = qword_90DA0;
  if (!qword_90DA0)
  {
    sub_B24C(&qword_90D98);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_90DA0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_13D70()
{
  v2 = qword_90DB0;
  if (!qword_90DB0)
  {
    sub_B24C(&qword_90DA8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_90DB0);
    return WitnessTable;
  }

  return v2;
}

void *sub_13DF8(uint64_t *a1, void *a2)
{
  v4 = *a1;

  result = a2;
  *a2 = v4;
  return result;
}

uint64_t sub_13E30(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 24);
  *(a2 + 24) = v2;
  *(a2 + 32) = *(a1 + 32);
  (**(v2 - 8))(a2);
  return a2;
}

uint64_t sub_13E9C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 24);
  *(a2 + 24) = v2;
  (**(v2 - 8))(a2);
  return a2;
}

void *sub_13F00(void *a1, void *a2)
{
  *a2 = *a1;
  v4 = a1[1];

  result = a2;
  a2[1] = v4;
  return result;
}

uint64_t sub_13F40()
{

  swift_getKeyPath();
  swift_getKeyPath();
  sub_7BE14();

  return v1;
}

uint64_t sub_13FDC()
{

  swift_getKeyPath();
  swift_getKeyPath();
  sub_7BE14();

  return v1;
}

void (*sub_14078(void *a1))(void (***a1)(void, void))
{
  v3 = sub_17EB8(0x40uLL);
  *a1 = v3;
  v3[4] = v2;

  v3[5] = swift_getKeyPath();
  v3[6] = swift_getKeyPath();
  v3[7] = sub_7BE04();
  return sub_14158;
}

void sub_14158(void (***a1)(void, void))
{
  v1 = *a1;
  v1[7](v1, 0);

  free(v1);
}

void (*sub_14234(void *a1))(void (***a1)(void, void))
{
  v3 = sub_17EB8(0x40uLL);
  *a1 = v3;
  v3[4] = v2;

  v3[5] = swift_getKeyPath();
  v3[6] = swift_getKeyPath();
  v3[7] = sub_7BE04();
  return sub_14158;
}

uint64_t sub_14314()
{

  swift_getKeyPath();
  swift_getKeyPath();

  sub_7BE24();
}

uint64_t sub_143B8()
{

  swift_getKeyPath();
  swift_getKeyPath();

  sub_7BE24();
}

uint64_t sub_1445C()
{

  swift_getKeyPath();
  swift_getKeyPath();

  sub_7BE24();
}

uint64_t sub_14500()
{

  swift_getKeyPath();
  swift_getKeyPath();

  sub_7BE24();
}

uint64_t sub_145A4()
{
  v7 = (v0 + OBJC_IVAR____TtC12FontSettings17FontSettingsModel__cachedFamilies);
  swift_beginAccess();
  v8 = *v7;

  swift_endAccess();
  sub_B2C0();
  if (!v8)
  {
    v5 = sub_101FC();
    v4 = (v6 + OBJC_IVAR____TtC12FontSettings17FontSettingsModel__cachedFamilies);
    swift_beginAccess();
    *v4 = v5;

    swift_endAccess();
  }

  v2 = (v6 + OBJC_IVAR____TtC12FontSettings17FontSettingsModel__cachedFamilies);
  swift_beginAccess();
  v3 = *v2;

  swift_endAccess();
  if (v3)
  {
    return v3;
  }

  sub_1A88(&qword_90D48);
  sub_7D714();
  return sub_7CDB4();
}

uint64_t sub_1477C()
{
  type metadata accessor for FontSettingsModel();
  result = sub_147B0();
  qword_94E38 = result;
  return result;
}

uint64_t *sub_147EC()
{
  if (qword_90A28 != -1)
  {
    swift_once();
  }

  return &qword_94E38;
}

uint64_t sub_1484C()
{
  v1 = *sub_147EC();

  return v1;
}

uint64_t sub_1487C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6[1] = a1;

  v6[0] = a1;
  v2 = sub_1A88(&qword_90D38);
  sub_17330(v6, v2, a2);
}

uint64_t sub_148EC()
{

  swift_getKeyPath();
  swift_getKeyPath();
  sub_7BE14();

  return v1;
}

uint64_t sub_14988@<X0>(uint64_t *a1@<X8>)
{

  *a1 = sub_148EC();
}

uint64_t sub_149E4(uint64_t *a1)
{
  sub_13DF8(a1, &v2);

  sub_14314();
}

uint64_t sub_14A4C()
{
  swift_beginAccess();
  sub_1A88(&qword_90DE0);
  sub_7BDE4();
  return swift_endAccess();
}

uint64_t sub_14AC8(uint64_t a1)
{
  v7 = a1;
  v11 = 0;
  v10 = 0;
  v8 = sub_1A88(&qword_90DE8);
  v5 = *(v8 - 8);
  v6 = v8 - 8;
  v4[0] = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v8);
  v4[1] = v4 - v4[0];
  v11 = v2;
  v10 = v1;
  (*(v5 + 16))();
  v4[2] = &v9;
  swift_beginAccess();
  sub_1A88(&qword_90DE0);
  sub_7BDF4();
  swift_endAccess();
  return (*(v5 + 8))(v7, v8);
}

uint64_t sub_14C1C@<X0>(uint64_t a1@<X8>)
{
  v4 = v1 + OBJC_IVAR____TtC12FontSettings17FontSettingsModel__shippedFamilies;
  swift_beginAccess();
  v2 = sub_1A88(&qword_90DE0);
  (*(*(v2 - 8) + 16))(a1, v4);
  return swift_endAccess();
}

uint64_t sub_14CB4(uint64_t a1)
{
  v10 = a1;
  v11 = sub_1A88(&qword_90DE0);
  v8 = *(v11 - 8);
  v9 = v11 - 8;
  v4 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v11);
  v6 = &v3 - v4;
  (*(v8 + 16))();
  v5 = v1 + OBJC_IVAR____TtC12FontSettings17FontSettingsModel__shippedFamilies;
  v7 = &v12;
  swift_beginAccess();
  (*(v8 + 40))(v5, v6, v11);
  swift_endAccess();
  return (*(v8 + 8))(v10, v11);
}

uint64_t sub_14E00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6[1] = a1;

  v6[0] = a1;
  v2 = sub_1A88(&qword_90AF0);
  sub_17330(v6, v2, a2);
}

uint64_t sub_14E70()
{

  swift_getKeyPath();
  swift_getKeyPath();
  sub_7BE14();

  return v1;
}

uint64_t sub_14F0C@<X0>(uint64_t *a1@<X8>)
{

  *a1 = sub_14E70();
}

uint64_t sub_14F68(uint64_t *a1)
{
  sub_13DF8(a1, &v2);

  sub_143B8();
}

uint64_t sub_14FD0()
{
  swift_beginAccess();
  sub_1A88(&qword_90DF0);
  sub_7BDE4();
  return swift_endAccess();
}

uint64_t sub_1504C(uint64_t a1)
{
  v7 = a1;
  v11 = 0;
  v10 = 0;
  v8 = sub_1A88(&qword_90DF8);
  v5 = *(v8 - 8);
  v6 = v8 - 8;
  v4[0] = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v8);
  v4[1] = v4 - v4[0];
  v11 = v2;
  v10 = v1;
  (*(v5 + 16))();
  v4[2] = &v9;
  swift_beginAccess();
  sub_1A88(&qword_90DF0);
  sub_7BDF4();
  swift_endAccess();
  return (*(v5 + 8))(v7, v8);
}

uint64_t sub_151A0@<X0>(uint64_t a1@<X8>)
{
  v4 = v1 + OBJC_IVAR____TtC12FontSettings17FontSettingsModel__fontAssetFamilies;
  swift_beginAccess();
  v2 = sub_1A88(&qword_90DF0);
  (*(*(v2 - 8) + 16))(a1, v4);
  return swift_endAccess();
}

uint64_t sub_15238(uint64_t a1)
{
  v10 = a1;
  v11 = sub_1A88(&qword_90DF0);
  v8 = *(v11 - 8);
  v9 = v11 - 8;
  v4 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v11);
  v6 = &v3 - v4;
  (*(v8 + 16))();
  v5 = v1 + OBJC_IVAR____TtC12FontSettings17FontSettingsModel__fontAssetFamilies;
  v7 = &v12;
  swift_beginAccess();
  (*(v8 + 40))(v5, v6, v11);
  swift_endAccess();
  return (*(v8 + 8))(v10, v11);
}

uint64_t sub_15384@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6[1] = a1;

  v6[0] = a1;
  v2 = sub_1A88(&qword_90B18);
  sub_17330(v6, v2, a2);
}

uint64_t sub_153F4@<X0>(uint64_t *a1@<X8>)
{

  *a1 = sub_13FDC();
}

uint64_t sub_15450(uint64_t *a1)
{
  sub_13DF8(a1, &v2);

  sub_14500();
}

uint64_t sub_154B8()
{
  swift_beginAccess();
  sub_1A88(&qword_90E00);
  sub_7BDE4();
  return swift_endAccess();
}

uint64_t sub_15534(uint64_t a1)
{
  v7 = a1;
  v11 = 0;
  v10 = 0;
  v8 = sub_1A88(&qword_90E08);
  v5 = *(v8 - 8);
  v6 = v8 - 8;
  v4[0] = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v8);
  v4[1] = v4 - v4[0];
  v11 = v2;
  v10 = v1;
  (*(v5 + 16))();
  v4[2] = &v9;
  swift_beginAccess();
  sub_1A88(&qword_90E00);
  sub_7BDF4();
  swift_endAccess();
  return (*(v5 + 8))(v7, v8);
}

uint64_t sub_15688@<X0>(uint64_t a1@<X8>)
{
  v4 = v1 + OBJC_IVAR____TtC12FontSettings17FontSettingsModel__fontProviderFamilies;
  swift_beginAccess();
  v2 = sub_1A88(&qword_90E00);
  (*(*(v2 - 8) + 16))(a1, v4);
  return swift_endAccess();
}

uint64_t sub_15720(uint64_t a1)
{
  v10 = a1;
  v11 = sub_1A88(&qword_90E00);
  v8 = *(v11 - 8);
  v9 = v11 - 8;
  v4 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v11);
  v6 = &v3 - v4;
  (*(v8 + 16))();
  v5 = v1 + OBJC_IVAR____TtC12FontSettings17FontSettingsModel__fontProviderFamilies;
  v7 = &v12;
  swift_beginAccess();
  (*(v8 + 40))(v5, v6, v11);
  swift_endAccess();
  return (*(v8 + 8))(v10, v11);
}

uint64_t sub_1586C@<X0>(uint64_t *a1@<X8>)
{

  *a1 = sub_13F40();
}

uint64_t sub_158E0(uint64_t *a1)
{
  sub_13DF8(a1, &v2);

  sub_1445C();
}

uint64_t type metadata accessor for FontSettingsModel()
{
  v1 = qword_90E40;
  if (!qword_90E40)
  {
    return swift_getSingletonMetadata();
  }

  return v1;
}

uint64_t sub_15A64()
{
  swift_beginAccess();
  sub_1A88(&qword_90DF0);
  sub_7BDE4();
  return swift_endAccess();
}

uint64_t sub_15AE0(uint64_t a1)
{
  v7 = a1;
  v11 = 0;
  v10 = 0;
  v8 = sub_1A88(&qword_90DF8);
  v5 = *(v8 - 8);
  v6 = v8 - 8;
  v4[0] = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v8);
  v4[1] = v4 - v4[0];
  v11 = v2;
  v10 = v1;
  (*(v5 + 16))();
  v4[2] = &v9;
  swift_beginAccess();
  sub_1A88(&qword_90DF0);
  sub_7BDF4();
  swift_endAccess();
  return (*(v5 + 8))(v7, v8);
}

uint64_t sub_15C34@<X0>(uint64_t a1@<X8>)
{
  v4 = v1 + OBJC_IVAR____TtC12FontSettings17FontSettingsModel__downloadedFamilies;
  swift_beginAccess();
  v2 = sub_1A88(&qword_90DF0);
  (*(*(v2 - 8) + 16))(a1, v4);
  return swift_endAccess();
}

uint64_t sub_15CCC(uint64_t a1)
{
  v10 = a1;
  v11 = sub_1A88(&qword_90DF0);
  v8 = *(v11 - 8);
  v9 = v11 - 8;
  v4 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v11);
  v6 = &v3 - v4;
  (*(v8 + 16))();
  v5 = v1 + OBJC_IVAR____TtC12FontSettings17FontSettingsModel__downloadedFamilies;
  v7 = &v12;
  swift_beginAccess();
  (*(v8 + 40))(v5, v6, v11);
  swift_endAccess();
  return (*(v8 + 8))(v10, v11);
}

uint64_t sub_15E18()
{
  v2 = (v0 + OBJC_IVAR____TtC12FontSettings17FontSettingsModel_processingFamilies);
  swift_beginAccess();
  v3 = *v2;

  swift_endAccess();
  return v3;
}

uint64_t sub_15E78(uint64_t a1)
{

  v3 = (v1 + OBJC_IVAR____TtC12FontSettings17FontSettingsModel_processingFamilies);
  swift_beginAccess();
  *v3 = a1;

  swift_endAccess();
}

uint64_t sub_15EE8()
{
  v2 = (v0 + OBJC_IVAR____TtC12FontSettings17FontSettingsModel__cachedFamilies);
  swift_beginAccess();
  v3 = *v2;

  swift_endAccess();
  return v3;
}

uint64_t sub_15F48(uint64_t a1)
{

  v3 = (v1 + OBJC_IVAR____TtC12FontSettings17FontSettingsModel__cachedFamilies);
  swift_beginAccess();
  *v3 = a1;

  swift_endAccess();
}

uint64_t sub_15FB8()
{
  v60 = &protocol witness table for MainActor;
  v62 = &unk_7EE18;
  v70 = &unk_7EE28;
  v77 = 0;
  v1 = sub_1A88(&qword_90AD0);
  v28 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v1);
  v73 = &v28 - v28;
  v49 = sub_1A88(&qword_90E00);
  v45 = *(v49 - 8);
  v46 = v49 - 8;
  v29 = (*(v45 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v49);
  v48 = &v28 - v29;
  v53 = sub_1A88(&qword_90DF0);
  v40 = *(v53 - 8);
  v41 = v53 - 8;
  v30 = (*(v40 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v53);
  v52 = &v28 - v30;
  v38 = sub_1A88(&qword_90DE0);
  v34 = *(v38 - 8);
  v35 = v38 - 8;
  v31 = (*(v34 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v38);
  v37 = &v28 - v31;
  v77 = v0;
  v36 = OBJC_IVAR____TtC12FontSettings17FontSettingsModel__shippedFamilies;
  v58 = 0;
  v32 = type metadata accessor for Family();
  v33 = sub_7D714();
  sub_128FC();
  v2 = sub_7D214();
  sub_1487C(v2, v37);
  (*(v34 + 32))(v0 + v36, v37, v38);
  v42 = OBJC_IVAR____TtC12FontSettings17FontSettingsModel__fontAssetFamilies;
  v56 = type metadata accessor for FontAssetFamily();
  v39 = sub_7D714();
  v50 = sub_1297C();
  v3 = sub_7D214();
  sub_14E00(v3, v52);
  v55 = *(v40 + 32);
  v54 = v40 + 32;
  v55(v0 + v42, v52, v53);
  v47 = OBJC_IVAR____TtC12FontSettings17FontSettingsModel__fontProviderFamilies;
  v43 = type metadata accessor for FontProviderFamily();
  v44 = sub_7D714();
  sub_129FC();
  v4 = sub_7D214();
  sub_15384(v4, v48);
  (*(v45 + 32))(v0 + v47, v48, v49);
  v51 = OBJC_IVAR____TtC12FontSettings17FontSettingsModel__downloadedFamilies;
  sub_7D714();
  v5 = sub_7D214();
  sub_14E00(v5, v52);
  v55(v0 + v51, v52, v53);
  v57 = OBJC_IVAR____TtC12FontSettings17FontSettingsModel_processingFamilies;
  sub_1A88(&qword_90E10);
  sub_7D714();
  v6 = sub_7CDB4();
  v7 = v58;
  *(v0 + v57) = v6;
  *(v0 + OBJC_IVAR____TtC12FontSettings17FontSettingsModel__cachedFamilies) = v7;
  sub_F208();
  v64 = 1;
  v63 = sub_7CF84("First load of fonts", 0x13uLL, 1);
  v61 = v8;
  v65 = sub_7D1E4();
  v9 = *(v65 - 8);
  v67 = *(v9 + 56);
  v66 = v9 + 56;
  v67(v73, v64);

  sub_7D184();
  v10 = sub_7D174();
  v11 = v76;
  v59 = v10;
  v68 = 40;
  v69 = 7;
  v12 = swift_allocObject();
  v13 = v60;
  v14 = v61;
  v15 = v62;
  v16 = v73;
  v17 = v12;
  v18 = v63;
  v17[2] = v59;
  v17[3] = v13;
  v17[4] = v11;
  v71 = &type metadata for () + 8;
  sub_16928(v18, v14, v16, v15, v17, &type metadata for () + 8);

  v72 = sub_7CF84("CoreText responder", 0x12uLL, v64 & 1);
  v74 = v19;
  sub_16EF4();
  (v67)(v73, 0, v64, v65);

  v20 = swift_allocObject();
  v21 = v70;
  v22 = v71;
  v23 = v73;
  v24 = v74;
  v25 = v20;
  v26 = v72;
  v25[2] = 0;
  v25[3] = 0;
  v25[4] = v11;
  v75 = sub_5370(v26, v24, v23, v21, v25, v22);
  sub_5900(v73);

  return v76;
}

uint64_t sub_1666C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = v4;
  v4[3] = 0;
  v4[3] = a4;
  v4[4] = sub_7D184();
  v4[5] = sub_7D174();
  v5 = swift_task_alloc();
  *(v7 + 48) = v5;
  *v5 = *(v7 + 16);
  v5[1] = sub_16744;

  return sub_11118();
}

uint64_t sub_16744()
{
  *(*v0 + 16) = *v0;

  v1 = sub_7D154();

  return _swift_task_switch(sub_1689C, v1);
}

uint64_t sub_1689C()
{
  *(v0 + 16) = v0;

  v1 = *(*(v0 + 16) + 8);

  return v1();
}

uint64_t sub_16928(uint64_t a1, uint64_t a2, const void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v45 = a1;
  v46 = a2;
  v54 = a3;
  v55 = a4;
  v56 = a5;
  v47 = a6;
  v48 = "Fatal error";
  v49 = "Unexpectedly found nil while unwrapping an Optional value";
  v50 = "_Concurrency/arm64e-apple-ios.private.swiftinterface";
  v51 = &unk_7E870;
  v52 = 0;
  v65 = a6;
  v53 = (*(*(sub_1A88(&qword_90AD0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v56);
  v57 = &v14 - v53;

  v63 = v55;
  v64 = v56;
  sub_E19C(v54, v57);
  v58 = sub_7D1E4();
  v59 = *(v58 - 8);
  v60 = v58 - 8;
  if ((*(v59 + 48))(v57, 1) == 1)
  {
    sub_5900(v57);
    v44 = 0;
  }

  else
  {
    v43 = sub_7D1D4();
    (*(v59 + 8))(v57, v58);
    v44 = v43;
  }

  v40 = v44 | 0x1C00;
  v42 = *(v56 + 16);
  v41 = *(v56 + 24);
  swift_unknownObjectRetain();

  if (v42)
  {
    v38 = v42;
    v39 = v41;
    v32 = v41;
    v33 = v42;
    swift_getObjectType();
    v34 = sub_7D154();
    v35 = v6;
    swift_unknownObjectRelease();
    v36 = v34;
    v37 = v35;
  }

  else
  {
    v36 = 0;
    v37 = 0;
  }

  v30 = v37;
  v31 = v36;

  if (v46)
  {
    v28 = v45;
    v29 = v46;
    v7 = v52;
    v25 = v46;
    v26 = sub_7CF54();

    sub_17CB0(v26 + 32, &v63, v47, &v61);
    if (v7)
    {
      __break(1u);
    }

    v24 = v61;

    v27 = v24;
  }

  else
  {
    v27 = 0;
  }

  v23 = v27;
  if (v27)
  {
    v17 = v23;
    v16 = v23;
    sub_5900(v54);

    v18 = v16;
  }

  else
  {

    sub_5900(v54);
    v19 = v63;
    v20 = v64;

    v8 = swift_allocObject();
    v9 = v19;
    v10 = v20;
    v11 = v31;
    v12 = v30;
    v21 = v8;
    v8[2] = v47;
    v8[3] = v9;
    v8[4] = v10;
    v22 = 0;
    if (v11 != 0 || v12 != 0)
    {
      v62[0] = 0;
      v62[1] = 0;
      v62[2] = v31;
      v62[3] = v30;
      v22 = v62;
    }

    v18 = swift_task_create();
  }

  v15 = v18;

  return v15;
}

uint64_t sub_16F10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = v4;
  *(v4 + 24) = 0;
  *(v4 + 24) = a4;
  v5 = swift_task_alloc();
  *(v7 + 32) = v5;
  *v5 = *(v7 + 16);
  v5[1] = sub_16FCC;

  return sub_8EC4();
}

uint64_t sub_16FCC()
{
  v3 = *v0;
  *(v3 + 16) = *v0;

  v1 = *(*(v3 + 16) + 8);

  return v1();
}

uint64_t sub_17100()
{
  v4 = OBJC_IVAR____TtC12FontSettings17FontSettingsModel__shippedFamilies;
  v1 = sub_1A88(&qword_90DE0);
  (*(*(v1 - 8) + 8))(v0 + v4);
  v5 = OBJC_IVAR____TtC12FontSettings17FontSettingsModel__fontAssetFamilies;
  v7 = sub_1A88(&qword_90DF0);
  v8 = *(*(v7 - 8) + 8);
  v8(v0 + v5);
  v6 = OBJC_IVAR____TtC12FontSettings17FontSettingsModel__fontProviderFamilies;
  v2 = sub_1A88(&qword_90E00);
  (*(*(v2 - 8) + 8))(v0 + v6);
  (v8)(v0 + OBJC_IVAR____TtC12FontSettings17FontSettingsModel__downloadedFamilies, v7);
  sub_B2C0();
  sub_B2C0();
  return v9;
}

uint64_t sub_172DC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_7BDC4();
  *a1 = result;
  return result;
}

uint64_t sub_17330@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4[1] = a3;
  v7 = a1;
  v8 = a2;
  v9 = a2;
  v5 = *(a2 - 8);
  v6 = a2 - 8;
  v4[0] = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(a1);
  v4[2] = v4 - v4[0];
  (*(v5 + 16))();
  sub_7BDD4();
  return (*(v5 + 8))(v7, v8);
}

uint64_t sub_17420()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_17468(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_25A4;

  return sub_1666C(a1, v6, v7, v8);
}

uint64_t sub_17540()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_17588(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_25A4;

  return sub_16F10(a1, v6, v7, v8);
}

uint64_t sub_1767C()
{
  updated = sub_17830();
  if (v0 <= 0x3F)
  {
    updated = sub_178D4();
    if (v1 <= 0x3F)
    {
      updated = sub_17978();
      if (v2 <= 0x3F)
      {
        updated = swift_updateClassMetadata2();
        if (!updated)
        {
          return 0;
        }
      }
    }
  }

  return updated;
}

uint64_t sub_17830()
{
  v4 = qword_90E50;
  if (!qword_90E50)
  {
    sub_B24C(&qword_90D38);
    v3 = sub_7BE34();
    v4 = v3;
    if (!v0)
    {
      v1 = v3;
      atomic_store(v3, &qword_90E50);
      return v1;
    }
  }

  return v4;
}

uint64_t sub_178D4()
{
  v4 = qword_90E58;
  if (!qword_90E58)
  {
    sub_B24C(&qword_90AF0);
    v3 = sub_7BE34();
    v4 = v3;
    if (!v0)
    {
      v1 = v3;
      atomic_store(v3, &qword_90E58);
      return v1;
    }
  }

  return v4;
}

uint64_t sub_17978()
{
  v4 = qword_90E60;
  if (!qword_90E60)
  {
    sub_B24C(&qword_90B18);
    v3 = sub_7BE34();
    v4 = v3;
    if (!v0)
    {
      v1 = v3;
      atomic_store(v3, &qword_90E60);
      return v1;
    }
  }

  return v4;
}

uint64_t sub_17A28(uint64_t a1, int *a2)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_17B3C;

  return v6(a1);
}

uint64_t sub_17B3C()
{
  v3 = *v0;
  *(v3 + 16) = *v0;

  v1 = *(*(v3 + 16) + 8);

  return v1();
}

uint64_t sub_17CB0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X5>, uint64_t a3@<X6>, uint64_t *a4@<X8>)
{
  if (!a1)
  {
    sub_7D5E4();
    __break(1u);
  }

  v5 = *a2;
  v6 = a2[1];

  v7 = swift_allocObject();
  v7[2] = a3;
  v7[3] = v5;
  v7[4] = v6;
  result = swift_task_create();
  *a4 = result;
  return result;
}

void *sub_17EB8(size_t a1)
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

uint64_t sub_17F0C@<X0>(uint64_t a1@<X8>)
{
  v5 = a1;
  v6 = sub_1A88(&qword_90F08);
  v4 = (*(*(v6 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v1 = __chkstk_darwin(v3[1]);
  v7 = v3 - v4;
  sub_17FC0(v1, (v3 - v4));
  sub_7BF04();
  return sub_18094(v7);
}

void *sub_17FC0(uint64_t *a1, void *a2)
{
  sub_1A88(&qword_90F10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v2 = sub_7CD24();
    (*(*(v2 - 8) + 16))(a2, a1);
  }

  else
  {
    v4 = *a1;

    *a2 = v4;
  }

  swift_storeEnumTagMultiPayload();
  return a2;
}

uint64_t sub_18094(uint64_t a1)
{
  sub_1A88(&qword_90F10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v1 = sub_7CD24();
    (*(*(v1 - 8) + 8))(a1);
  }

  else
  {
  }

  return a1;
}

uint64_t sub_18150(uint64_t a1)
{
  v5 = a1;
  v3[0] = (*(*(sub_1A88(&qword_90F08) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v1 = __chkstk_darwin(v5);
  v4 = v3 - v3[0];
  sub_17FC0(v1, (v3 - v3[0]));
  sub_181F4(v4, v3[1]);
  return sub_18094(v5);
}

void *sub_181F4(const void *a1, void *a2)
{
  if (a2 != a1)
  {
    sub_18094(a2);
    v4 = sub_1A88(&qword_90F10);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v2 = sub_7CD24();
      (*(*(v2 - 8) + 32))(a2, a1);
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      memcpy(a2, a1, *(*(v4 - 8) + 64));
    }
  }

  return a2;
}

uint64_t sub_182E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v8 = a2;
  v6 = a1;
  v9 = sub_1A88(&qword_90F18);
  v7 = (*(*(v9 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = __chkstk_darwin(v6);
  v10 = &v5 - v7;
  sub_183A4((v3 + *(v2 + 36)), (&v5 - v7));
  sub_7BF04();
  return sub_18478(v10);
}

void *sub_183A4(uint64_t *a1, void *a2)
{
  sub_1A88(&qword_90F20);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v2 = sub_7BD84();
    (*(*(v2 - 8) + 16))(a2, a1);
  }

  else
  {
    v4 = *a1;

    *a2 = v4;
  }

  swift_storeEnumTagMultiPayload();
  return a2;
}

uint64_t sub_18478(uint64_t a1)
{
  sub_1A88(&qword_90F20);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v1 = sub_7BD84();
    (*(*(v1 - 8) + 8))(a1);
  }

  else
  {
  }

  return a1;
}

uint64_t sub_18538(uint64_t a1, uint64_t a2)
{
  v8 = a1;
  v6 = a2;
  v5 = (*(*(sub_1A88(&qword_90F18) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = __chkstk_darwin(v8);
  v7 = &v5 - v5;
  sub_183A4(v3, (&v5 - v5));
  sub_185E4(v7, (v2 + *(v6 + 36)));
  return sub_18478(v8);
}

void *sub_185E4(const void *a1, void *a2)
{
  if (a2 != a1)
  {
    sub_18478(a2);
    v4 = sub_1A88(&qword_90F20);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v2 = sub_7BD84();
      (*(*(v2 - 8) + 32))(a2, a1);
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      memcpy(a2, a1, *(*(v4 - 8) + 64));
    }
  }

  return a2;
}

uint64_t sub_186E8(uint64_t a1)
{
  v3 = *(v1 + *(a1 + 44));

  return v3;
}

uint64_t sub_18728(uint64_t a1, uint64_t a2, uint64_t a3)
{

  v4 = (v3 + *(a3 + 44));
  *v4 = a1;
  v4[1] = a2;
}

uint64_t sub_18784@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v47 = a2;
  v90 = a1;
  v48 = &protocol conformance descriptor for NavigationLink<A, B>;
  v49 = &protocol conformance descriptor for <> _ConditionalContent<A, B>;
  v115 = 0;
  v114 = 0;
  v113 = 0;
  v112 = 0;
  v110 = 0;
  v107 = 0;
  v51 = *(a1 + 16);
  v120 = v51;
  v50 = (*(*(v51 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v52 = &v24 - v50;
  v53 = *(__chkstk_darwin(a1) + 24);
  v116 = &type metadata for Text;
  v117 = v51;
  v118 = &protocol witness table for Text;
  v119 = v53;
  v86 = 0;
  v84 = sub_7C0A4();
  v54 = *(v84 - 8);
  v55 = v84 - 8;
  v56 = (v54[8] + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = __chkstk_darwin(v86);
  v57 = &v24 - v56;
  v58 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = __chkstk_darwin(v2);
  v59 = &v24 - v58;
  v60 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v4);
  v61 = &v24 - v60;
  v115 = &v24 - v60;
  v62 = sub_7CEF4();
  v63 = *(v62 - 8);
  v64 = v62 - 8;
  v65 = (*(v63 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v62);
  v66 = &v24 - v65;
  v85 = sub_1A88(&qword_90F28);
  v67 = *(v85 - 8);
  v68 = v85 - 8;
  v69 = (v67[8] + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v85);
  v70 = &v24 - v69;
  v71 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v24 - v69);
  v72 = &v24 - v71;
  v73 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v24 - v71);
  v74 = &v24 - v73;
  v114 = &v24 - v73;
  v75 = sub_1A88(&qword_90F08);
  v76 = (*(*(v75 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v86);
  v77 = (&v24 - v76);
  v78 = sub_7CD24();
  v79 = *(v78 - 8);
  v80 = v78 - 8;
  v81 = (*(v79 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v78);
  v82 = &v24 - v81;
  v97 = sub_1A88(&qword_90F18);
  v83 = (*(*(v97 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v86);
  v8 = (&v24 - v83);
  v98 = &v24 - v83;
  v103 = sub_7BD84();
  v99 = *(v103 - 8);
  v100 = v103 - 8;
  v87 = (*(v99 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v9 = __chkstk_darwin(v86);
  v101 = &v24 - v87;
  v88 = (v10 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v9);
  v102 = &v24 - v88;
  v91 = sub_7C3A4();
  v93 = *(*(v91 - 8) + 64);
  v92 = (v93 + 15) & 0xFFFFFFFFFFFFFFF0;
  v11 = __chkstk_darwin(v90);
  v94 = &v24 - v92;
  v95 = (v93 + 15) & 0xFFFFFFFFFFFFFFF0;
  v12 = __chkstk_darwin(v11);
  v96 = &v24 - v95;
  v113 = &v24 - v95;
  v112 = v13;
  sub_183A4((v13 + *(v12 + 36)), v8);
  sub_7BF04();
  sub_18478(v98);
  (*(v99 + 104))(v101, enum case for SettingsAppPrimaryNavigationMode.stateDriven(_:), v103);
  sub_19824();
  v106 = sub_7D724();
  v105 = *(v99 + 8);
  v104 = v99 + 8;
  v105(v101, v103);
  v105(v102, v103);
  if (v106 & 1) != 0 && (sub_17FC0(v89, v77), sub_7BF04(), sub_18094(v77), v46 = sub_7CD14(), (*(v79 + 8))(v82, v78), (v46))
  {
    sub_79024(*(v89 + *(v90 + 40)), v66);
    v38 = sub_61F88(v66);
    v39 = v14;
    (*(v63 + 8))(v66, v62);
    v42 = v109;
    v109[0] = v38;
    v109[1] = v39;
    v15 = *(v89 + *(v90 + 40));
    v40 = &v108;
    v108 = v15;
    v41 = sub_198A4();
    sub_19E54();
    sub_7C094();
    v43 = sub_19B70();
    sub_1991C(v72, v85, v74);
    v44 = v67[1];
    v45 = v67 + 1;
    v44(v72, v85);
    v107 = v72;
    v37 = v67[2];
    v36 = v67 + 2;
    v37(v70, v74, v85);
    sub_1991C(v70, v85, v72);
    v44(v70, v85);
    v37(v70, v72, v85);
    WitnessTable = swift_getWitnessTable();
    sub_19980(v70, v85, v84, v43, WitnessTable, v94);
    v44(v70, v85);
    v17 = sub_7C384();
    sub_19BF8(v94, v96, v84, v17);
    v44(v72, v85);
    v44(v74, v85);
  }

  else
  {
    sub_79024(*(v89 + *(v90 + 40)), v66);
    v28 = sub_61F88(v66);
    v29 = v18;
    (*(v63 + 8))(v66, v62);
    v31 = v111;
    v111[0] = v28;
    v111[1] = v29;
    v19 = v89 + *(v90 + 44);
    v30 = *v19;
    v32 = *(v19 + 1);

    v30(*(v89 + *(v90 + 40)));
    sub_198A4();
    sub_7C084();

    v33 = swift_getWitnessTable();
    sub_1991C(v59, v84, v61);
    v34 = v54[1];
    v35 = v54 + 1;
    v34(v59, v84);
    v110 = v59;
    v27 = v54[2];
    v26 = v54 + 2;
    v27(v57, v61, v84);
    sub_1991C(v57, v84, v59);
    v34(v57, v84);
    v27(v57, v59, v84);
    v20 = sub_19B70();
    sub_19A78(v57, v85, v84, v20, v33, v94);
    v34(v57, v84);
    v21 = sub_7C384();
    sub_19BF8(v94, v96, v84, v21);
    v34(v59, v84);
    v34(v61, v84);
  }

  v25 = sub_7C384();
  sub_19CD0(v96, v94, v84, v25);
  v24 = sub_19B70();
  v22 = swift_getWitnessTable();
  v109[2] = v24;
  v109[3] = v22;
  swift_getWitnessTable();
  sub_1991C(v94, v91, v47);
  sub_19DA8(v94, v84, v25);
  return sub_19DA8(v96, v84, v25);
}

unint64_t sub_19824()
{
  v2 = qword_90F30;
  if (!qword_90F30)
  {
    sub_7BD84();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_90F30);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_198A4()
{
  v2 = qword_90F38;
  if (!qword_90F38)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_90F38);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_19980@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v11 = a6;
  v8[1] = a1;
  v13 = a2;
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v18 = a2;
  v17 = a3;
  v10 = sub_7C384();
  v9 = (*(*(v10 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v10);
  v12 = v8 - v9;
  (*(*(v6 - 8) + 16))();
  swift_storeEnumTagMultiPayload();
  return sub_7C394();
}

uint64_t sub_19A78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v11 = a6;
  v8[1] = a1;
  v13 = a2;
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v18 = a2;
  v17 = a3;
  v10 = sub_7C384();
  v9 = (*(*(v10 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v10);
  v12 = v8 - v9;
  (*(*(v6 - 8) + 16))();
  swift_storeEnumTagMultiPayload();
  return sub_7C394();
}

unint64_t sub_19B70()
{
  v2 = qword_90F40;
  if (!qword_90F40)
  {
    sub_B24C(&qword_90F28);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_90F40);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_19BF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(*(a3 - 8) + 32))(a2, a1);
  }

  else
  {
    (*(*(*(a4 + 16) - 8) + 32))(a2, a1);
  }

  swift_storeEnumTagMultiPayload();
  return a2;
}

uint64_t sub_19CD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(*(a3 - 8) + 16))(a2, a1);
  }

  else
  {
    (*(*(*(a4 + 16) - 8) + 16))(a2, a1);
  }

  swift_storeEnumTagMultiPayload();
  return a2;
}

uint64_t sub_19DA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(*(a2 - 8) + 8))(a1);
  }

  else
  {
    (*(*(*(a3 + 16) - 8) + 8))(a1);
  }

  return a1;
}

unint64_t sub_19E54()
{
  v2 = qword_90F48[0];
  if (!qword_90F48[0])
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, qword_90F48);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_19ECC@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  swift_getKeyPath();
  sub_7BF24();
  v7 = type metadata accessor for AdaptiveNavigationLink();
  swift_getKeyPath();
  sub_7BF24();
  result = v7;
  *(a4 + *(v7 + 40)) = a1;
  v5 = (a4 + *(v7 + 44));
  *v5 = a2;
  v5[1] = a3;
  return result;
}

unint64_t sub_1A014()
{
  v4 = sub_1A50C();
  if (v0 <= 0x3F)
  {
    v4 = sub_1A5A8();
    if (v1 <= 0x3F)
    {
      v4 = sub_1A644();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return v4;
}

uint64_t sub_1A150(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v10 = sub_1A88(&qword_90F08);
  if (a2 == *(*(v10 - 8) + 84))
  {
    return (*(*(v10 - 8) + 48))(a1, a2, v10);
  }

  else
  {
    v5 = sub_1A88(&qword_90F18);
    if (a2 == *(*(v5 - 8) + 84))
    {
      return (*(*(v5 - 8) + 48))(a1 + *(a3 + 36), a2, v5);
    }

    else if (a2 == 0x7FFFFFFF)
    {
      v4 = -1;
      if (*(a1 + *(a3 + 44)) < 0x100000000uLL)
      {
        v4 = *(a1 + *(a3 + 44));
      }

      return (v4 + 1);
    }

    else
    {
      __break(1u);
    }
  }

  return v6;
}

uint64_t sub_1A340(uint64_t a1, unsigned int a2, int a3, uint64_t a4)
{
  v9 = sub_1A88(&qword_90F08);
  if (a3 == *(*(v9 - 8) + 84))
  {
    return (*(*(v9 - 8) + 56))(a1, a2, a2, v9);
  }

  result = sub_1A88(&qword_90F18);
  if (a3 == *(*(result - 8) + 84))
  {
    return (*(*(result - 8) + 56))(a1 + *(a4 + 36), a2, a2, result);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 44)) = a2 - 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1A50C()
{
  v4 = qword_90FD0;
  if (!qword_90FD0)
  {
    sub_7CD24();
    v3 = sub_7BF14();
    v4 = v3;
    if (!v0)
    {
      v1 = v3;
      atomic_store(v3, &qword_90FD0);
      return v1;
    }
  }

  return v4;
}

uint64_t sub_1A5A8()
{
  v4 = qword_90FD8;
  if (!qword_90FD8)
  {
    sub_7BD84();
    v3 = sub_7BF14();
    v4 = v3;
    if (!v0)
    {
      v1 = v3;
      atomic_store(v3, &qword_90FD8);
      return v1;
    }
  }

  return v4;
}

unint64_t sub_1A644()
{
  v2 = qword_90FE0;
  if (!qword_90FE0)
  {
    FunctionTypeMetadata0 = swift_getFunctionTypeMetadata0();
    atomic_store(FunctionTypeMetadata0, &qword_90FE0);
    return FunctionTypeMetadata0;
  }

  return v2;
}

uint64_t sub_1A6B0()
{
  sub_B24C(&qword_90F28);
  sub_7C0A4();
  sub_7C3A4();
  sub_19B70();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1A808@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v9 = a2;
  v5 = a1;
  v3[1] = 0;
  v11 = sub_7CD24();
  v7 = *(v11 - 8);
  v8 = v11 - 8;
  v4 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0);
  v10 = v3 - v4;
  v14 = sub_7C244();
  v12 = *(v14 - 8);
  v13 = v14 - 8;
  v6 = (*(v12 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v14);
  v15 = v3 - v6;
  (*(v12 + 16))(v3 - v6);
  sub_7C214();
  (*(v7 + 32))(v9, v10, v11);
  return (*(v12 + 8))(v15, v14);
}

uint64_t sub_1A9B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v9 = a2;
  v5 = a1;
  v3[1] = 0;
  v11 = sub_7BD84();
  v7 = *(v11 - 8);
  v8 = v11 - 8;
  v4 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0);
  v10 = v3 - v4;
  v14 = sub_7C244();
  v12 = *(v14 - 8);
  v13 = v14 - 8;
  v6 = (*(v12 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v14);
  v15 = v3 - v6;
  (*(v12 + 16))(v3 - v6);
  sub_7C1E4();
  (*(v7 + 32))(v9, v10, v11);
  return (*(v12 + 8))(v15, v14);
}

uint64_t sub_1AB94()
{

  type metadata accessor for FontSettingsModel();
  sub_1AC10();
  v1 = sub_7C184();

  return v1;
}

unint64_t sub_1AC10()
{
  v2 = qword_90FE8;
  if (!qword_90FE8)
  {
    type metadata accessor for FontSettingsModel();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_90FE8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1AC90()
{

  type metadata accessor for FontSettingsModel();
  sub_1AC10();
  v1 = sub_7C194();

  return v1;
}

uint64_t sub_1AD3C(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
}

uint64_t sub_1AD84()
{
  type metadata accessor for Family();
  sub_1ADCC();
  return sub_7C0D4();
}

unint64_t sub_1ADCC()
{
  v2 = qword_90FF0;
  if (!qword_90FF0)
  {
    type metadata accessor for Family();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_90FF0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1AE4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return a4;
}

uint64_t sub_1AEAC(uint64_t a1)
{

  *(v1 + 24) = a1;
}

uint64_t sub_1AF00()
{

  type metadata accessor for Family();
  sub_1ADCC();
  v1 = sub_7C0E4();

  return v1;
}

uint64_t sub_1AFBC(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

uint64_t sub_1B008()
{
  type metadata accessor for FontSettingsModel();
  sub_1AC10();
  v1 = sub_7C1A4();

  sub_1AD84();

  sub_1B0CC();
  return v1;
}

uint64_t sub_1B104@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v37 = a5;
  v27 = a1;
  v22 = a2;
  v23 = a3;
  v28 = a4;
  v18 = sub_1CAB4;
  v24 = sub_1E244;
  v34 = &opaque type descriptor for <<opaque return type of View.swipeActions<A>(edge:allowsFullSwipe:content:)>>;
  v60 = 0;
  v58 = 0u;
  v59 = 0u;
  v19 = sub_1A88(&qword_90FF8);
  v12 = (*(*(v19 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v19);
  v21 = &v12 - v12;
  v30 = sub_1A88(&qword_91000);
  v13 = (*(*(v30 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v30);
  v29 = &v12 - v13;
  v41 = sub_1A88(&qword_91008);
  v35 = *(v41 - 8);
  v36 = v41 - 8;
  v14 = (*(v35 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = __chkstk_darwin(v27);
  v39 = &v12 - v14;
  v15 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  v7 = __chkstk_darwin(v5);
  v40 = &v12 - v15;
  v60 = &v12 - v15;
  *&v58 = v7;
  *(&v58 + 1) = v8;
  *&v59 = v9;
  *(&v59 + 1) = v10;

  v16 = &v49;
  v50 = v27;
  v51 = v22;
  v52 = v23;
  v53 = v28;
  v17 = sub_1A88(&qword_91010);
  sub_1CAC8();
  sub_7CA14();

  v20 = sub_1D5BC();
  sub_1D5A4();
  v26 = 1;
  sub_1D654();
  sub_1D6D4(v21);

  v25 = &v44;
  v45 = v27;
  v46 = v22;
  v47 = v23;
  v48 = v28;
  v31 = sub_1A88(&qword_910C8);
  v32 = sub_1E708();
  v33 = sub_1E838();
  sub_1E6EC();
  sub_7C7D4();

  sub_1D6D4(v29);
  v54 = v30;
  v55 = v31;
  v56 = v32;
  v57 = v33;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_1991C(v39, v41, v40);
  v43 = *(v35 + 8);
  v42 = v35 + 8;
  v43(v39, v41);
  (*(v35 + 16))(v39, v40, v41);
  sub_1991C(v39, v41, v37);
  v43(v39, v41);
  return (v43)(v40, v41);
}

uint64_t sub_1B6B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v121 = &v188;
  v122 = a5;
  v167 = a1;
  v168 = a2;
  v169 = a3;
  v170 = a4;
  v222 = 0;
  v221 = 0;
  v220 = 0;
  v219 = 0;
  v218 = 0;
  v217 = 0;
  v215 = 0u;
  v216 = 0u;
  v213 = 0u;
  v214 = 0u;
  v210 = 0u;
  v211 = 0u;
  v207 = 0;
  v205 = 0u;
  v206 = 0u;
  v202 = 0u;
  v203 = 0u;
  v199 = 0;
  v198 = 0;
  v196 = 0;
  v195 = 0;
  v193 = 0;
  v192 = 0;
  v190 = 0;
  v188 = 0u;
  v189 = 0u;
  v185 = 0u;
  v186 = 0u;
  v182 = 0;
  v123 = sub_1A88(&qword_91088);
  v124 = (*(*(v123 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v123);
  v125 = (&v53 - v124);
  v126 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v53 - v124);
  v127 = (&v53 - v126);
  v128 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v53 - v126);
  v129 = (&v53 - v128);
  v222 = &v53 - v128;
  v130 = sub_1A88(&qword_91028);
  v131 = (*(*(v130 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v130);
  v132 = &v53 - v131;
  v171 = 0;
  v133 = type metadata accessor for CachedDownloadView();
  v134 = (*(*(v133 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v133);
  v135 = &v53 - v134;
  v136 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v53 - v134);
  v137 = &v53 - v136;
  v138 = (v8 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v53 - v136);
  v139 = &v53 - v138;
  v221 = &v53 - v138;
  v140 = sub_1A88(&qword_91068);
  v141 = (*(*(v140 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v171);
  v142 = &v53 - v141;
  v143 = type metadata accessor for ProcessingView();
  v144 = (*(*(v143 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v143);
  v145 = &v53 - v144;
  v146 = (v9 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v53 - v144);
  v147 = &v53 - v146;
  v148 = (v10 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v53 - v146);
  v149 = &v53 - v148;
  v220 = &v53 - v148;
  v150 = sub_1A88(&qword_91048);
  v151 = (*(*(v150 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v171);
  v152 = &v53 - v151;
  v153 = type metadata accessor for DownloadView();
  v154 = (*(*(v153 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v153);
  v155 = &v53 - v154;
  v156 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v53 - v154);
  v157 = &v53 - v156;
  v158 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v53 - v156);
  v159 = &v53 - v158;
  v219 = &v53 - v158;
  v160 = sub_1A88(&qword_91038);
  v161 = (*(*(v160 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v160);
  v162 = (&v53 - v161);
  v163 = (v13 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v53 - v161);
  v164 = (&v53 - v163);
  v165 = (v14 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v53 - v163);
  v166 = (&v53 - v165);
  v218 = &v53 - v165;
  v172 = sub_1A88(&qword_91010);
  v174 = *(*(v172 - 8) + 64);
  v173 = (v174 + 15) & 0xFFFFFFFFFFFFFFF0;
  v15 = __chkstk_darwin(v171);
  v175 = (&v53 - v173);
  v176 = (v174 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v15);
  v177 = (&v53 - v176);
  v217 = &v53 - v176;
  *&v215 = v16;
  *(&v215 + 1) = v17;
  *&v216 = v18;
  *(&v216 + 1) = v19;
  v178 = sub_7D184();
  v179 = sub_7D174();
  v180 = sub_7D154();
  v181 = v20;
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v21 = sub_1AE4C(v167, v168, v169, v170);
  v119 = v21;
  v22 = 0;
  if (_TtC12FontSettings15FontAssetFamily == *v21)
  {
    v22 = v21;
  }

  v120 = v22;
  if (v22)
  {
    v118 = v120;
  }

  else
  {

    v118 = 0;
  }

  v117 = v118;
  if (v118)
  {
    v116 = v117;
    v112 = v117;
    v195 = v117;

    v113 = sub_6ACF8();

    if (v113)
    {
      if (v113 == 1)
      {

        sub_1D210(v112, v157);
        v111 = sub_1CD68();
        sub_1991C(v157, v153, v159);
        sub_1FF20(v157);
        v182 = v157;
        sub_1FE44(v159, v155);
        sub_1991C(v155, v153, v157);
        sub_1FF20(v155);
        sub_1FE44(v157, v155);
        v25 = sub_1CE5C();
        sub_19980(v155, v153, &unk_8EBC0, v111, v25, v152);
        sub_1FF20(v155);
        v110 = sub_1CCC0();
        v26 = sub_1CED8();
        sub_19980(v152, v150, v140, v110, v26, v164);
        sub_26B48(v152);
        sub_26318(v164, v166);
        sub_1FF20(v157);
        sub_1FF20(v159);
      }

      else if (v113 == 2)
      {

        v27 = sub_1D320();
        v98 = v187;
        v187[0] = v27;
        v187[1] = v28;
        v187[2] = v29;
        v187[3] = v30;
        v105 = sub_1CE5C();
        v109 = &v188;
        v104 = &unk_8EBC0;
        sub_1991C(v98, &unk_8EBC0, &v188);
        sub_1FFB0();
        v99 = v188;
        v100 = v189;

        v101 = v184;
        v184[0] = v99;
        v184[1] = v100;
        v108 = &v185;
        sub_1991C(v184, v104, &v185);
        sub_1FFB0();
        v102 = v185;
        v103 = v186;

        v106 = v183;
        v183[0] = v102;
        v183[1] = v103;
        v31 = sub_1CD68();
        sub_19A78(v106, v153, v104, v31, v105, v152);
        sub_1FFB0();
        v107 = sub_1CCC0();
        v32 = sub_1CED8();
        sub_19980(v152, v150, v140, v107, v32, v164);
        sub_26B48(v152);
        sub_26318(v164, v166);
        sub_1FFB0();
        sub_1FFB0();
      }

      else
      {

        v94 = &v191;
        swift_beginAccess();
        v95 = *(v112 + 32);
        v96 = *(v112 + 40);

        swift_endAccess();

        sub_1D3E4(v95, v96, v147);
        v97 = sub_1CF80();
        sub_1991C(v147, v143, v149);
        sub_2009C(v147);
        v190 = v147;
        sub_1FFE8(v149, v145);
        sub_1991C(v145, v143, v147);
        sub_2009C(v145);
        sub_1FFE8(v147, v145);
        v33 = sub_1D074();
        sub_19980(v145, v143, v133, v97, v33, v142);
        sub_2009C(v145);
        v93 = sub_1CCC0();
        v34 = sub_1CED8();
        sub_19A78(v142, v150, v140, v93, v34, v164);
        sub_261F8(v142);
        sub_26318(v164, v166);
        sub_2009C(v147);
        sub_2009C(v149);
      }
    }

    else
    {

      v89 = &v194;
      swift_beginAccess();
      v90 = *(v112 + 32);
      v91 = *(v112 + 40);

      swift_endAccess();

      sub_1D4C4(v90, v91, v137);
      v92 = sub_1D074();
      sub_1991C(v137, v133, v139);
      sub_201D4(v137);
      v193 = v137;
      sub_20120(v139, v135);
      sub_1991C(v135, v133, v137);
      sub_201D4(v135);
      sub_20120(v137, v135);
      v35 = sub_1CF80();
      sub_19A78(v135, v143, v133, v35, v92, v142);
      sub_201D4(v135);
      v88 = sub_1CCC0();
      v36 = sub_1CED8();
      sub_19A78(v142, v150, v140, v88, v36, v164);
      sub_261F8(v142);
      sub_26318(v164, v166);
      sub_201D4(v137);
      sub_201D4(v139);
    }

    v192 = v164;
    sub_265D8(v166, v162);
    v86 = sub_1CC18();
    sub_1991C(v162, v160, v164);
    sub_26938(v162);
    sub_265D8(v164, v162);
    v37 = sub_1D168();
    sub_19980(v162, v160, v123, v86, v37, v132);
    sub_26938(v162);
    v87 = sub_1CB70();
    v38 = sub_1CE5C();
    sub_19980(v132, v130, &unk_8EBC0, v87, v38, v175);
    sub_25F04(v132);
    sub_251B8(v175, v177);
    sub_26938(v164);
    sub_26938(v166);
  }

  else
  {
    v23 = sub_1AE4C(v167, v168, v169, v170);
    v114 = v23;
    v24 = 0;
    if (_TtC12FontSettings18FontProviderFamily == *v23)
    {
      v24 = v23;
    }

    v115 = v24;
    if (v24)
    {
      v85 = v115;
    }

    else
    {

      v85 = 0;
    }

    v84 = v85;
    if (v85)
    {
      v83 = v84;
      v70 = v84;
      v207 = v84;

      v71 = sub_6ACF8();

      if (sub_62C5C(v71, 3))
      {
        v198 = v149;

        v66 = &v197;
        swift_beginAccess();
        v67 = v70[4];
        v68 = v70[5];

        swift_endAccess();

        sub_1D3E4(v67, v68, v147);
        v69 = sub_1CF80();
        sub_1991C(v147, v143, v149);
        sub_2009C(v147);
        v196 = v147;
        sub_1FFE8(v149, v145);
        sub_1991C(v145, v143, v147);
        sub_2009C(v145);
        sub_1FFE8(v147, v145);
        v44 = sub_1CE5C();
        sub_19980(v145, v143, &unk_8EBC0, v69, v44, v127);
        sub_2009C(v145);
        sub_25BC0(v127, v129);
        sub_2009C(v147);
        sub_2009C(v149);
      }

      else
      {

        v45 = sub_1D320();
        v55 = v204;
        v204[0] = v45;
        v204[1] = v46;
        v204[2] = v47;
        v204[3] = v48;
        v62 = sub_1CE5C();
        v65 = &v205;
        v61 = &unk_8EBC0;
        sub_1991C(v55, &unk_8EBC0, &v205);
        sub_1FFB0();
        v56 = v205;
        v57 = v206;

        v58 = v201;
        v201[0] = v56;
        v201[1] = v57;
        v64 = &v202;
        sub_1991C(v201, v61, &v202);
        sub_1FFB0();
        v59 = v202;
        v60 = v203;

        v63 = v200;
        v200[0] = v59;
        v200[1] = v60;
        v49 = sub_1CF80();
        sub_19A78(v63, v143, v61, v49, v62, v127);
        sub_1FFB0();
        sub_25BC0(v127, v129);
        sub_1FFB0();
        sub_1FFB0();
      }

      v199 = v127;
      sub_25CD0(v129, v125);
      v53 = sub_1D168();
      sub_1991C(v125, v123, v127);
      sub_25E30(v125);
      sub_25CD0(v127, v125);
      v50 = sub_1CC18();
      sub_19A78(v125, v160, v123, v50, v53, v132);
      sub_25E30(v125);
      v54 = sub_1CB70();
      v51 = sub_1CE5C();
      sub_19980(v132, v130, &unk_8EBC0, v54, v51, v175);
      sub_25F04(v132);
      sub_251B8(v175, v177);
      sub_25E30(v127);
      sub_25E30(v129);
    }

    else
    {
      sub_1AE4C(v167, v168, v169, v170);
      v39 = sub_1D320();
      v72 = v212;
      v212[0] = v39;
      v212[1] = v40;
      v212[2] = v41;
      v212[3] = v42;
      v79 = sub_1CE5C();
      v82 = &v213;
      v78 = &unk_8EBC0;
      sub_1991C(v72, &unk_8EBC0, &v213);
      sub_1FFB0();
      v73 = v213;
      v74 = v214;

      v75 = v209;
      v209[0] = v73;
      v209[1] = v74;
      v81 = &v210;
      sub_1991C(v209, v78, &v210);
      sub_1FFB0();
      v76 = v210;
      v77 = v211;

      v80 = v208;
      v208[0] = v76;
      v208[1] = v77;
      v43 = sub_1CB70();
      sub_19A78(v80, v130, v78, v43, v79, v175);
      sub_1FFB0();
      sub_251B8(v175, v177);
      sub_1FFB0();
      sub_1FFB0();
    }
  }

  sub_25624(v177, v175);
  sub_1CAC8();
  sub_1991C(v175, v172, v122);
  sub_1D6D4(v175);
  sub_1D6D4(v177);
}

unint64_t sub_1CAC8()
{
  v2 = qword_91018;
  if (!qword_91018)
  {
    sub_B24C(&qword_91010);
    sub_1CB70();
    sub_1CE5C();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_91018);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1CB70()
{
  v2 = qword_91020;
  if (!qword_91020)
  {
    sub_B24C(&qword_91028);
    sub_1CC18();
    sub_1D168();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_91020);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1CC18()
{
  v2 = qword_91030;
  if (!qword_91030)
  {
    sub_B24C(&qword_91038);
    sub_1CCC0();
    sub_1CED8();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_91030);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1CCC0()
{
  v2 = qword_91040;
  if (!qword_91040)
  {
    sub_B24C(&qword_91048);
    sub_1CD68();
    sub_1CE5C();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_91040);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1CD68()
{
  v2 = qword_91050;
  if (!qword_91050)
  {
    type metadata accessor for DownloadView();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_91050);
    return WitnessTable;
  }

  return v2;
}

uint64_t type metadata accessor for DownloadView()
{
  v1 = qword_91328;
  if (!qword_91328)
  {
    return swift_getSingletonMetadata();
  }

  return v1;
}

unint64_t sub_1CE5C()
{
  v2 = qword_91058;
  if (!qword_91058)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_91058);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1CED8()
{
  v2 = qword_91060;
  if (!qword_91060)
  {
    sub_B24C(&qword_91068);
    sub_1CF80();
    sub_1D074();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_91060);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1CF80()
{
  v2 = qword_91070;
  if (!qword_91070)
  {
    type metadata accessor for ProcessingView();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_91070);
    return WitnessTable;
  }

  return v2;
}

uint64_t type metadata accessor for ProcessingView()
{
  v1 = qword_91298;
  if (!qword_91298)
  {
    return swift_getSingletonMetadata();
  }

  return v1;
}

unint64_t sub_1D074()
{
  v2 = qword_91078;
  if (!qword_91078)
  {
    type metadata accessor for CachedDownloadView();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_91078);
    return WitnessTable;
  }

  return v2;
}

uint64_t type metadata accessor for CachedDownloadView()
{
  v1 = qword_913D0;
  if (!qword_913D0)
  {
    return swift_getSingletonMetadata();
  }

  return v1;
}

unint64_t sub_1D168()
{
  v2 = qword_91080;
  if (!qword_91080)
  {
    sub_B24C(&qword_91088);
    sub_1CF80();
    sub_1CE5C();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_91080);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1D210@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v16 = a2;
  v17 = a1;
  v20 = 0;
  v19 = 0;
  v12[1] = 0;
  v15 = type metadata accessor for DownloadView();
  v13 = (*(*(v15 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0);
  v18 = (v12 - v13);
  v20 = v12 - v13;
  v19 = v2;
  v14 = type metadata accessor for FontSettingsModel();
  sub_1AC10();
  v3 = sub_7C1A4();
  v4 = v18;
  v18[2] = v3;
  v4[3] = v5;
  sub_7BCF4();

  v6 = sub_1FDE0();
  v7 = v18;
  v9 = v8;
  v10 = v16;
  *v18 = v6;
  *(v7 + 1) = v9;
  sub_1FE44(v7, v10);

  return sub_1FF20(v18);
}

uint64_t sub_1D320()
{
  type metadata accessor for FontSettingsModel();
  sub_1AC10();
  sub_7C1A4();

  v1 = sub_1AD84();

  sub_1FFB0();
  return v1;
}

uint64_t sub_1D3E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v11 = a3;
  v10 = a1;
  v12 = a2;
  v16 = 0;
  v14 = 0;
  v15 = 0;
  v3 = type metadata accessor for ProcessingView();
  v9 = (*(*(v3 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v3);
  v13 = &v9 - v9;
  v16 = &v9 - v9;
  v14 = v10;
  v15 = v4;
  sub_7BCF4();

  v5 = v13;
  v6 = v11;
  v7 = v12;
  *v13 = v10;
  *(v5 + 1) = v7;
  sub_1FFE8(v5, v6);

  return sub_2009C(v13);
}

uint64_t sub_1D4C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v11 = a3;
  v10 = a1;
  v12 = a2;
  v16 = 0;
  v14 = 0;
  v15 = 0;
  v3 = type metadata accessor for CachedDownloadView();
  v9 = (*(*(v3 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v3);
  v13 = &v9 - v9;
  v16 = &v9 - v9;
  v14 = v10;
  v15 = v4;
  sub_7BCF4();

  v5 = v13;
  v6 = v11;
  v7 = v12;
  *v13 = v10;
  *(v5 + 1) = v7;
  sub_20120(v5, v6);

  return sub_201D4(v13);
}

unint64_t sub_1D5BC()
{
  v2 = qword_91090;
  if (!qword_91090)
  {
    sub_B24C(&qword_90FF8);
    sub_1CAC8();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_91090);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1D654()
{
  sub_7C544();
  sub_25138();
  return sub_7C904();
}

uint64_t sub_1D6D4(uint64_t a1)
{
  sub_1A88(&qword_91098);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    goto LABEL_12;
  }

  sub_1A88(&qword_910A0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1A88(&qword_910C0);
    if (swift_getEnumCaseMultiPayload() != 1)
    {

      v6 = a1 + *(type metadata accessor for ProcessingView() + 20);
      v4 = sub_7BD04();
      (*(*(v4 - 8) + 8))(v6);
      return a1;
    }

    goto LABEL_12;
  }

  sub_1A88(&qword_910A8);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_1A88(&qword_910B0);
    if (swift_getEnumCaseMultiPayload() != 1)
    {

      v9 = a1 + *(type metadata accessor for DownloadView() + 24);
      v1 = sub_7BD04();
      (*(*(v1 - 8) + 8))(v9);
      return a1;
    }

LABEL_12:

    return a1;
  }

  sub_1A88(&qword_910B8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {

    v7 = a1 + *(type metadata accessor for CachedDownloadView() + 20);
    v3 = sub_7BD04();
    (*(*(v3 - 8) + 8))(v7);
  }

  else
  {

    v8 = a1 + *(type metadata accessor for ProcessingView() + 20);
    v2 = sub_7BD04();
    (*(*(v2 - 8) + 8))(v8);
  }

  return a1;
}

uint64_t sub_1DA14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v38 = a5;
  v49 = a1;
  v46 = a2;
  v47 = a3;
  v48 = a4;
  v68 = 0;
  v67 = 0;
  v65 = 0u;
  v66 = 0u;
  v64 = 0;
  v63 = 0;
  v62 = 0;
  v61 = 0;
  v39 = sub_1A88(&qword_91108);
  v40 = (*(*(v39 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v39);
  v41 = &v21 - v40;
  v42 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v21 - v40);
  v43 = &v21 - v42;
  v44 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v21 - v42);
  v45 = &v21 - v44;
  v68 = &v21 - v44;
  v50 = sub_1A88(&qword_910C8);
  v51 = (*(*(v50 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v7 = __chkstk_darwin(v49);
  v52 = &v21 - v51;
  v53 = (v8 + 15) & 0xFFFFFFFFFFFFFFF0;
  v9 = __chkstk_darwin(v7);
  v54 = &v21 - v53;
  v55 = (v10 + 15) & 0xFFFFFFFFFFFFFFF0;
  v11 = __chkstk_darwin(v9);
  v56 = &v21 - v55;
  v67 = &v21 - v55;
  *&v65 = v11;
  *(&v65 + 1) = v12;
  *&v66 = v13;
  *(&v66 + 1) = v14;
  v57 = sub_7D184();
  v58 = sub_7D174();
  v59 = sub_7D154();
  v60 = v15;
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v16 = sub_1AE4C(v49, v46, v47, v48);
  v36 = v16;
  v17 = 0;
  if (_TtC12FontSettings15FontAssetFamily == *v16)
  {
    v17 = v16;
  }

  v37 = v17;
  if (v17)
  {
    v35 = v37;
  }

  else
  {

    v35 = 0;
  }

  v34 = v35;
  if (v35)
  {
    v33 = v34;
    v31 = v34;
    v62 = v34;

    v32 = sub_6ACF8();

    if (sub_62C5C(v32, 2))
    {
      sub_1E258(v31, v49, v46, v47, v48, v43);
      v30 = sub_1E970();
      sub_1991C(v43, v39, v45);
      sub_20364(v43);
      v61 = v43;
      sub_24FE8(v45, v41);
      sub_1991C(v41, v39, v43);
      sub_20364(v41);
      sub_24FE8(v43, v41);
      sub_19980(v41, v39, v39, v30, v30, v52);
      sub_20364(v41);
      v29 = sub_1A88(&qword_910F8);
      (*(*(v29 - 8) + 56))(v52, 0, 1);
      sub_1E8D0();
      sub_4E680(v52, v29, v54);
      sub_246D4(v52);
      sub_24930(v54, v56);
      sub_20364(v43);
      sub_20364(v45);

      goto LABEL_22;
    }
  }

  v18 = sub_1AE4C(v49, v46, v47, v48);
  v27 = v18;
  v19 = 0;
  if (_TtC12FontSettings18FontProviderFamily == *v18)
  {
    v19 = v18;
  }

  v28 = v19;
  if (v19)
  {

    v26 = 1;
  }

  else
  {

    v26 = 0;
  }

  if (v26)
  {
    v64 = v45;
    v24 = sub_1AE4C(v49, v46, v47, v48);
    sub_1E258(v24, v49, v46, v47, v48, v43);

    v25 = sub_1E970();
    sub_1991C(v43, v39, v45);
    sub_20364(v43);
    v63 = v43;
    sub_24FE8(v45, v41);
    sub_1991C(v41, v39, v43);
    sub_20364(v41);
    sub_24FE8(v43, v41);
    sub_19A78(v41, v39, v39, v25, v25, v52);
    sub_20364(v41);
    v23 = sub_1A88(&qword_910F8);
    (*(*(v23 - 8) + 56))(v52, 0, 1);
    sub_1E8D0();
    sub_4E680(v52, v23, v54);
    sub_246D4(v52);
    sub_24930(v54, v56);
    sub_20364(v43);
    sub_20364(v45);
  }

  else
  {
    v22 = sub_1A88(&qword_910F8);
    (*(*(v22 - 8) + 56))(v52, 1);
    sub_1E8D0();
    sub_4E680(v52, v22, v54);
    sub_246D4(v52);
    sub_24930(v54, v56);
  }

LABEL_22:
  sub_24C50(v56, v54);
  sub_1E838();
  sub_1991C(v54, v50, v38);
  sub_246D4(v54);
  sub_246D4(v56);
}

uint64_t sub_1E258@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v47 = a6;
  v27 = a1;
  v23 = a2;
  v24 = a3;
  v25 = a4;
  v26 = a5;
  v29 = 0;
  v30 = sub_202A8;
  v28 = sub_1ED54;
  v54 = 0;
  v52 = 0u;
  v53 = 0u;
  v44 = sub_7CEF4();
  v41 = *(v44 - 8);
  v42 = v44 - 8;
  v19 = (*(v41 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v44);
  v43 = &v19 - v19;
  v35 = sub_1A88(&qword_91128);
  v32 = *(v35 - 8);
  v33 = v35 - 8;
  v20 = (*(v32 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v35);
  v34 = &v19 - v20;
  v36 = sub_1A88(&qword_91118);
  v21 = (*(*(v36 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v36);
  v39 = &v19 - v21;
  v48 = sub_1A88(&qword_91108);
  v22 = (*(*(v48 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = __chkstk_darwin(v23);
  v50 = &v19 - v22;
  v54 = v7;
  *&v52 = v6;
  *(&v52 + 1) = v8;
  *&v53 = v9;
  *(&v53 + 1) = v10;

  v11 = swift_allocObject();
  v12 = v24;
  v13 = v25;
  v14 = v26;
  v15 = v27;
  v11[2] = v23;
  v11[3] = v12;
  v11[4] = v13;
  v11[5] = v14;
  v11[6] = v15;
  sub_7CB44();
  v31 = sub_7C9C4();
  sub_1EAC0();
  sub_7C8D4();

  (*(v32 + 8))(v34, v35);
  v40 = 1;
  v37 = sub_7CF84("SWIPE_REMOVE_FAMILY", 0x13uLL, 1);
  v38 = v16;
  sub_1EA18();
  sub_7C884();

  sub_202C0(v39);
  sub_7CF84("Remove font", 0xBuLL, v40 & 1);
  sub_7CE94();
  v45 = sub_61F88(v43);
  v46 = v17;
  (*(v41 + 8))(v43, v44);
  v49 = v51;
  v51[0] = v45;
  v51[1] = v46;
  sub_198A4();
  sub_7C114();
  sub_1F58();
  return sub_20364(v50);
}

unint64_t sub_1E708()
{
  v2 = qword_910D0;
  if (!qword_910D0)
  {
    sub_B24C(&qword_91000);
    sub_1D5BC();
    sub_1E7B0();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_910D0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1E7B0()
{
  v2 = qword_910D8;
  if (!qword_910D8)
  {
    sub_B24C(&qword_910E0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_910D8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1E838()
{
  v2 = qword_910E8;
  if (!qword_910E8)
  {
    sub_B24C(&qword_910C8);
    sub_1E8D0();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_910E8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1E8D0()
{
  v2 = qword_910F0;
  if (!qword_910F0)
  {
    sub_B24C(&qword_910F8);
    sub_1E970();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_910F0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1E970()
{
  v2 = qword_91100;
  if (!qword_91100)
  {
    sub_B24C(&qword_91108);
    sub_1EA18();
    sub_1EBD0();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_91100);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1EA18()
{
  v2 = qword_91110;
  if (!qword_91110)
  {
    sub_B24C(&qword_91118);
    sub_1EAC0();
    sub_1EB48();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_91110);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1EAC0()
{
  v2 = qword_91120;
  if (!qword_91120)
  {
    sub_B24C(&qword_91128);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_91120);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1EB48()
{
  v2 = qword_91130;
  if (!qword_91130)
  {
    sub_B24C(&qword_91138);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_91130);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1EBD0()
{
  v2 = qword_91140;
  if (!qword_91140)
  {
    sub_7C574();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_91140);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1EC50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __objc2_class **a5)
{
  sub_7D184();
  sub_7D174();
  sub_7D154();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_1AB94();
  sub_7078(a5);
}

uint64_t sub_1ED54@<X0>(uint64_t a1@<X8>)
{
  v6 = 0;
  sub_7D184();
  sub_7D174();
  sub_7D154();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_7CF84("trash", 5uLL, 1);
  v5 = sub_7CA34();
  sub_1991C(&v5, &type metadata for Image, &v6);
  sub_B068();
  v2 = v6;

  v4 = v2;
  sub_1991C(&v4, &type metadata for Image, a1);
  sub_B068();
  sub_B068();
}

uint64_t sub_1EEBC(uint64_t a1, uint64_t a2)
{

  return a2;
}

uint64_t sub_1EF1C(uint64_t a1)
{

  *(v1 + 8) = a1;
}

uint64_t sub_1EF70()
{

  type metadata accessor for Family();
  sub_1ADCC();
  v1 = sub_7C0E4();

  return v1;
}

uint64_t sub_1F02C(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
}

uint64_t sub_1F078()
{

  type metadata accessor for FontSettingsModel();
  sub_1AC10();
  v1 = sub_7C184();

  return v1;
}

uint64_t sub_1F0FC()
{

  type metadata accessor for FontSettingsModel();
  sub_1AC10();
  v1 = sub_7C194();

  return v1;
}

uint64_t sub_1F1B4(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

uint64_t sub_1F1FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v38 = a5;
  v22 = a1;
  v23 = a2;
  v24 = a3;
  v25 = a4;
  v49 = 0;
  v47 = 0u;
  v48 = 0u;
  v26 = 0;
  v27 = type metadata accessor for FamilyView();
  v14 = (*(*(v27 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v27);
  v5 = (&v14 - v14);
  v31 = &v14 - v14;
  v33 = sub_1A88(&qword_91148);
  v15 = (*(*(v33 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v33);
  v32 = &v14 - v15;
  v42 = sub_1A88(&qword_91150);
  v36 = *(v42 - 8);
  v37 = v42 - 8;
  v16 = (*(v36 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = __chkstk_darwin(v22);
  v40 = &v14 - v16;
  v17 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  v8 = __chkstk_darwin(v6);
  v41 = &v14 - v17;
  v49 = &v14 - v17;
  *&v47 = v8;
  *(&v47 + 1) = v9;
  *&v48 = v10;
  *(&v48 + 1) = v11;
  v19 = sub_1EEBC(v8, v9);
  v18 = &v46;
  swift_beginAccess();
  v20 = *(v19 + 32);
  v21 = *(v19 + 40);

  swift_endAccess();

  v35 = v45;
  v45[0] = v20;
  v45[1] = v21;
  v12 = sub_1EEBC(v22, v23);
  sub_2E6EC(v12, v5);
  v30 = sub_1F078();
  v28 = type metadata accessor for FontSettingsModel();
  v29 = sub_20464();
  sub_1AC10();
  sub_7C834();

  sub_204E4(v31);
  v34 = sub_205F8();
  sub_198A4();
  sub_7C084();
  v39 = sub_20728();
  sub_1991C(v40, v42, v41);
  v44 = *(v36 + 8);
  v43 = v36 + 8;
  v44(v40, v42);
  (*(v36 + 16))(v40, v41, v42);
  sub_1991C(v40, v42, v38);
  v44(v40, v42);
  return (v44)(v41, v42);
}

uint64_t sub_1F660()
{
  v2 = *v0;

  return v2;
}

uint64_t sub_1F698@<X0>(uint64_t a1@<X8>)
{
  v4 = *(type metadata accessor for ProcessingView() + 20);
  v2 = sub_7BD04();
  return (*(*(v2 - 8) + 16))(a1, v1 + v4);
}

uint64_t sub_1F710@<X0>(uint64_t a1@<X8>)
{
  v11 = a1;
  v7 = sub_207B0;
  v19 = 0;
  v18 = 0;
  v12 = sub_1A88(&qword_91188);
  v5 = (*(*(v12 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v12);
  v14 = &v4 - v5;
  v6 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v4 - v5);
  v15 = &v4 - v6;
  v19 = &v4 - v6;
  v18 = v1;
  v8 = &v16;
  v17 = v1;
  v9 = sub_1A88(&qword_91190);
  v10 = sub_207B8();
  sub_1FDBC();
  sub_7CB74();
  v13 = sub_20840();
  sub_1991C(v14, v12, v15);
  sub_208C8(v14);
  sub_20A40(v15, v14);
  sub_1991C(v14, v12, v11);
  sub_208C8(v14);
  return sub_208C8(v15);
}

uint64_t sub_1F89C@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v26 = v70;
  v27 = a2;
  v38 = a1;
  v72 = 0;
  v71 = 0;
  memset(v70, 0, sizeof(v70));
  v60 = 0;
  v61 = 0;
  v39 = 0;
  v28 = sub_7BD04();
  v29 = *(v28 - 8);
  v30 = v28 - 8;
  v31 = (*(v29 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v28);
  v32 = &v11 - v31;
  v33 = sub_1A88(&qword_911B8);
  v34 = *(v33 - 8);
  v35 = v33 - 8;
  v36 = (*(v34 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v33);
  v37 = &v11 - v36;
  v40 = sub_1A88(&qword_911C0);
  v42 = *(*(v40 - 8) + 64);
  v41 = (v42 + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = __chkstk_darwin(v39);
  v43 = &v11 - v41;
  v44 = (v42 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v2);
  v45 = &v11 - v44;
  v72 = &v11 - v44;
  v71 = v3;
  v46 = sub_7D184();
  v47 = sub_7D174();
  v48 = sub_7D154();
  v49 = v4;
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v11 = *v38;
  v12 = *(v38 + 1);

  v13 = v69;
  v69[0] = v11;
  v69[1] = v12;
  sub_198A4();
  v65 = sub_7C6E4();
  v66 = v5;
  v67 = v6;
  v68 = v7;
  v14 = v62;
  v62[0] = v65;
  v62[1] = v5;
  v15 = 1;
  v63 = v6 & 1;
  v64 = v7;
  v25 = v70;
  v18 = &type metadata for Text;
  v20 = &protocol witness table for Text;
  sub_1991C(v62, &type metadata for Text, v70);
  sub_23BF4(v14);
  v16 = 0;
  v58 = sub_7CB84();
  v59 = v8 & 1 & v15;
  v19 = &type metadata for Spacer;
  v21 = &protocol witness table for Spacer;
  sub_1991C(&v58, &type metadata for Spacer, &v60);
  sub_7BF84();
  v9 = type metadata accessor for ProcessingView();
  (*(v29 + 16))(v32, &v38[*(v9 + 20)], v28);
  v17 = sub_24420();
  sub_B094();
  sub_7C8B4();
  (*(v29 + 8))(v32, v28);
  (*(v34 + 8))(v37, v33);
  v22 = sub_244A8();
  sub_1991C(v43, v40, v45);
  sub_24530(v43);
  v24 = v56;
  sub_23E4C(v25, v56);
  v23 = v57;
  v57[0] = v24;
  v54 = v60;
  v55 = v61;
  v57[1] = &v54;
  sub_245F4(v45, v43);
  v57[2] = v43;
  v53[0] = v18;
  v53[1] = v19;
  v53[2] = v40;
  v50 = v20;
  v51 = v21;
  v52 = v22;
  sub_4E6CC(v23, 3uLL, v53, v27);
  sub_24530(v43);
  sub_23BF4(v24);
  sub_24530(v45);
  sub_23BF4(v25);
}

char *sub_1FE44(char *a1, char *a2)
{
  *a2 = *a1;
  v4 = *(a1 + 1);

  *(a2 + 1) = v4;
  v5 = *(a1 + 2);

  *(a2 + 2) = v5;
  *(a2 + 3) = *(a1 + 3);
  v6 = *(type metadata accessor for DownloadView() + 24);
  v2 = sub_7BD04();
  (*(*(v2 - 8) + 16))(&a2[v6], &a1[v6]);
  return a2;
}

uint64_t sub_1FF20(uint64_t a1)
{

  v3 = *(type metadata accessor for DownloadView() + 24);
  v1 = sub_7BD04();
  (*(*(v1 - 8) + 8))(a1 + v3);
  return a1;
}

char *sub_1FFE8(char *a1, char *a2)
{
  *a2 = *a1;
  v4 = *(a1 + 1);

  *(a2 + 1) = v4;
  v5 = *(type metadata accessor for ProcessingView() + 20);
  v2 = sub_7BD04();
  (*(*(v2 - 8) + 16))(&a2[v5], &a1[v5]);
  return a2;
}

uint64_t sub_2009C(uint64_t a1)
{

  v3 = *(type metadata accessor for ProcessingView() + 20);
  v1 = sub_7BD04();
  (*(*(v1 - 8) + 8))(a1 + v3);
  return a1;
}

char *sub_20120(char *a1, char *a2)
{
  *a2 = *a1;
  v4 = *(a1 + 1);

  *(a2 + 1) = v4;
  v5 = *(type metadata accessor for CachedDownloadView() + 20);
  v2 = sub_7BD04();
  (*(*(v2 - 8) + 16))(&a2[v5], &a1[v5]);
  return a2;
}

uint64_t sub_201D4(uint64_t a1)
{

  v3 = *(type metadata accessor for CachedDownloadView() + 20);
  v1 = sub_7BD04();
  (*(*(v1 - 8) + 8))(a1 + v3);
  return a1;
}

uint64_t sub_20258()
{

  return swift_deallocObject();
}

uint64_t sub_202C0(uint64_t a1)
{
  v1 = sub_1A88(&qword_91128);
  (*(*(v1 - 8) + 8))(a1);
  sub_1A88(&qword_91118);

  return a1;
}

uint64_t sub_20364(uint64_t a1)
{
  v1 = sub_1A88(&qword_91128);
  (*(*(v1 - 8) + 8))(a1);
  sub_1A88(&qword_91118);

  v4 = *(sub_1A88(&qword_91108) + 36);
  v2 = sub_7C574();
  (*(*(v2 - 8) + 8))(a1 + v4);
  return a1;
}

unint64_t sub_20464()
{
  v2 = qword_91158;
  if (!qword_91158)
  {
    type metadata accessor for FamilyView();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_91158);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_204E4(uint64_t a1)
{

  v3 = *(type metadata accessor for FamilyView() + 28);
  sub_1A88(&qword_91160);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v1 = sub_7BFD4();
    (*(*(v1 - 8) + 8))(a1 + v3);
  }

  else
  {
  }

  return a1;
}

unint64_t sub_205F8()
{
  v2 = qword_91168;
  if (!qword_91168)
  {
    sub_B24C(&qword_91148);
    sub_20464();
    sub_206A0();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_91168);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_206A0()
{
  v2 = qword_91170;
  if (!qword_91170)
  {
    sub_B24C(&qword_91178);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_91170);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_20728()
{
  v2 = qword_91180;
  if (!qword_91180)
  {
    sub_B24C(&qword_91150);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_91180);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_207B8()
{
  v2 = qword_91198;
  if (!qword_91198)
  {
    sub_B24C(&qword_91190);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_91198);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_20840()
{
  v2 = qword_911A0;
  if (!qword_911A0)
  {
    sub_B24C(&qword_91188);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_911A0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_208C8(uint64_t a1)
{
  v4 = a1 + *(sub_1A88(&qword_911A8) + 44);
  sub_209FC(*v4, *(v4 + 8), *(v4 + 16) & 1);

  v5 = *(sub_1A88(&qword_911B0) + 64);
  v1 = sub_1A88(&qword_911B8);
  (*(*(v1 - 8) + 8))();
  v6 = *(sub_1A88(&qword_911C0) + 52);
  v2 = sub_7BD04();
  (*(*(v2 - 8) + 8))(v4 + v5 + v6);
  return a1;
}

uint64_t sub_209FC(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_20A40(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  *(a2 + 16) = *(a1 + 16);
  v6 = *(sub_1A88(&qword_911A8) + 44);
  v7 = *(a1 + v6);
  v8 = *(a1 + v6 + 8);
  v9 = *(a1 + v6 + 16);
  sub_20C1C(v7, v8, v9 & 1);
  v11 = a2 + v6;
  *v11 = v7;
  *(v11 + 8) = v8;
  *(v11 + 16) = v9 & 1;
  v10 = *(a1 + v6 + 24);

  *(v11 + 24) = v10;
  *(v11 + 32) = *(a1 + v6 + 32);
  *(v11 + 40) = *(a1 + v6 + 40);
  v12 = *(sub_1A88(&qword_911B0) + 64);
  v2 = sub_1A88(&qword_911B8);
  (*(*(v2 - 8) + 16))();
  v13 = *(sub_1A88(&qword_911C0) + 52);
  v3 = sub_7BD04();
  (*(*(v3 - 8) + 16))(a2 + v6 + v12 + v13, a1 + v6 + v12 + v13);
  return a2;
}

uint64_t sub_20C1C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

unint64_t sub_20C60()
{
  v2 = qword_911C8;
  if (!qword_911C8)
  {
    type metadata accessor for FontAssetFamily();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_911C8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_20CF8()
{
  v2 = *(v0 + 8);

  return v2;
}

uint64_t sub_20D30()
{

  type metadata accessor for FontAssetFamily();
  sub_20C60();
  v1 = sub_7C0E4();

  return v1;
}

uint64_t sub_20DA4()
{
  v2 = *v0;

  return v2;
}

uint64_t sub_20DDC()
{

  type metadata accessor for FontSettingsModel();
  sub_1AC10();
  v1 = sub_7C184();

  return v1;
}

uint64_t sub_20E50()
{

  type metadata accessor for FontSettingsModel();
  sub_1AC10();
  v1 = sub_7C194();

  return v1;
}

uint64_t sub_20EC4()
{
  v2 = *(v0 + 16);

  return v2;
}

uint64_t sub_20EFC@<X0>(uint64_t a1@<X8>)
{
  v4 = *(type metadata accessor for DownloadView() + 24);
  v2 = sub_7BD04();
  return (*(*(v2 - 8) + 16))(a1, v1 + v4);
}

uint64_t sub_20F74@<X0>(uint64_t a1@<X8>)
{
  v11 = a1;
  v7 = sub_2180C;
  v19 = 0;
  v18 = 0;
  v12 = sub_1A88(&qword_911D0);
  v5 = (*(*(v12 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v12);
  v14 = &v4 - v5;
  v6 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v4 - v5);
  v15 = &v4 - v6;
  v19 = &v4 - v6;
  v18 = v1;
  v8 = &v16;
  v17 = v1;
  v9 = sub_1A88(&qword_911D8);
  v10 = sub_21814();
  sub_1FDBC();
  sub_7CB74();
  v13 = sub_2189C();
  sub_1991C(v14, v12, v15);
  sub_21924(v14);
  sub_21A58(v15, v14);
  sub_1991C(v14, v12, v11);
  sub_21924(v14);
  return sub_21924(v15);
}

uint64_t sub_21100@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v40 = a2;
  v58 = a1;
  v41 = sub_24170;
  v42 = sub_21D10;
  v96 = 0;
  v95 = 0;
  memset(v94, 0, sizeof(v94));
  v83 = 0;
  v84 = 0;
  v59 = 0;
  v43 = sub_7CEF4();
  v44 = *(v43 - 8);
  v45 = v43 - 8;
  v46 = (*(v44 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0);
  v47 = &v14 - v46;
  v2 = type metadata accessor for DownloadView();
  v48 = *(v2 - 8);
  v49 = v48;
  v50 = *(v48 + 64);
  v51 = (v50 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v2);
  v52 = &v14 - v51;
  v53 = sub_1A88(&qword_91128);
  v54 = *(v53 - 8);
  v55 = v53 - 8;
  v56 = (*(v54 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v53);
  v57 = &v14 - v56;
  v60 = sub_1A88(&qword_91200);
  v64 = *(*(v60 - 8) + 64);
  v61 = (v64 + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = __chkstk_darwin(v59);
  v62 = &v14 - v61;
  v63 = (v64 + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = __chkstk_darwin(v3);
  v65 = &v14 - v63;
  v66 = (v64 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v4);
  v67 = &v14 - v66;
  v96 = &v14 - v66;
  v95 = v5;
  v68 = sub_7D184();
  v69 = sub_7D174();
  v70 = sub_7D154();
  v71 = v6;
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v15 = sub_20CF8();
  v14 = &v93;
  v22 = 0;
  swift_beginAccess();
  v16 = *(v15 + 32);
  v17 = *(v15 + 40);

  swift_endAccess();

  v18 = v92;
  v92[0] = v16;
  v92[1] = v17;
  v30 = sub_198A4();
  v29 = &type metadata for String;
  v88 = sub_7C6E4();
  v89 = v7;
  v90 = v8;
  v91 = v9;
  v19 = v85;
  v85[0] = v88;
  v85[1] = v7;
  v26 = 1;
  v86 = v8 & 1;
  v87 = v9;
  v39 = v94;
  v32 = &type metadata for Text;
  v34 = &protocol witness table for Text;
  sub_1991C(v85, &type metadata for Text, v94);
  sub_23BF4(v19);
  v81 = sub_7CB84();
  v82 = v10 & 1 & v26;
  v33 = &type metadata for Spacer;
  v35 = &protocol witness table for Spacer;
  sub_1991C(&v81, &type metadata for Spacer, &v83);
  sub_1FE44(v58, v52);
  v20 = (*(v49 + 80) + 16) & ~*(v49 + 80);
  v21 = swift_allocObject();
  sub_240CC(v52, (v21 + v20));
  sub_7CB44();
  v25 = 8;
  v23 = sub_7CF84("DOWNLOAD", 8uLL, v26 & 1);
  v24 = v11;
  sub_1EAC0();
  sub_7C884();

  (*(v54 + 8))(v57, v53);
  sub_7CF84("Download", v25, v26 & 1);
  sub_7CE94();
  v27 = sub_61F88(v47);
  v28 = v12;
  (*(v44 + 8))(v47, v43);
  v31 = v80;
  v80[0] = v27;
  v80[1] = v28;
  sub_7C114();
  sub_1F58();
  sub_241D4(v62);
  v36 = sub_24298();
  sub_1991C(v65, v60, v67);
  sub_241D4(v65);
  v38 = v78;
  sub_23E4C(v39, v78);
  v37 = v79;
  v79[0] = v38;
  v76 = v83;
  v77 = v84;
  v79[1] = &v76;
  sub_24340(v67, v65);
  v79[2] = v65;
  v75[0] = v32;
  v75[1] = v33;
  v75[2] = v60;
  v72 = v34;
  v73 = v35;
  v74 = v36;
  sub_4E6CC(v37, 3uLL, v75, v40);
  sub_241D4(v65);
  sub_23BF4(v38);
  sub_241D4(v67);
  sub_23BF4(v39);
}

unint64_t sub_21814()
{
  v2 = qword_911E0;
  if (!qword_911E0)
  {
    sub_B24C(&qword_911D8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_911E0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_2189C()
{
  v2 = qword_911E8;
  if (!qword_911E8)
  {
    sub_B24C(&qword_911D0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_911E8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_21924(uint64_t a1)
{
  v4 = a1 + *(sub_1A88(&qword_911F0) + 44);
  sub_209FC(*v4, *(v4 + 8), *(v4 + 16) & 1);

  v5 = *(sub_1A88(&qword_911F8) + 64);
  v1 = sub_1A88(&qword_91128);
  (*(*(v1 - 8) + 8))();
  v6 = *(sub_1A88(&qword_91200) + 36);
  v2 = sub_7C574();
  (*(*(v2 - 8) + 8))(v4 + v5 + v6);
  return a1;
}

uint64_t sub_21A58(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  *(a2 + 16) = *(a1 + 16);
  v6 = *(sub_1A88(&qword_911F0) + 44);
  v7 = *(a1 + v6);
  v8 = *(a1 + v6 + 8);
  v9 = *(a1 + v6 + 16);
  sub_20C1C(v7, v8, v9 & 1);
  v11 = a2 + v6;
  *v11 = v7;
  *(v11 + 8) = v8;
  *(v11 + 16) = v9 & 1;
  v10 = *(a1 + v6 + 24);

  *(v11 + 24) = v10;
  *(v11 + 32) = *(a1 + v6 + 32);
  *(v11 + 40) = *(a1 + v6 + 40);
  v12 = *(sub_1A88(&qword_911F8) + 64);
  v2 = sub_1A88(&qword_91128);
  (*(*(v2 - 8) + 16))();
  v13 = *(sub_1A88(&qword_91200) + 36);
  v3 = sub_7C574();
  (*(*(v3 - 8) + 16))(a2 + v6 + v12 + v13, a1 + v6 + v12 + v13);
  return a2;
}

uint64_t sub_21C34()
{
  sub_7D184();
  sub_7D174();
  sub_7D154();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_20DDC();
  v1 = sub_20CF8();
  sub_17A0(v1);
}

uint64_t sub_21D10@<X0>(uint64_t a1@<X8>)
{
  v6 = 0;
  sub_7D184();
  sub_7D174();
  sub_7D154();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_7CF84("arrow.down.circle", 0x11uLL, 1);
  v5 = sub_7CA34();
  sub_1991C(&v5, &type metadata for Image, &v6);
  sub_B068();
  v2 = v6;

  v4 = v2;
  sub_1991C(&v4, &type metadata for Image, a1);
  sub_B068();
  sub_B068();
}

uint64_t sub_21E68@<X0>(uint64_t a1@<X8>)
{
  v4 = *(type metadata accessor for CachedDownloadView() + 20);
  v2 = sub_7BD04();
  return (*(*(v2 - 8) + 16))(a1, v1 + v4);
}

uint64_t sub_21EE0@<X0>(uint64_t a1@<X8>)
{
  v11 = a1;
  v7 = sub_22570;
  v19 = 0;
  v18 = 0;
  v12 = sub_1A88(&qword_91208);
  v5 = (*(*(v12 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v12);
  v14 = &v4 - v5;
  v6 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v4 - v5);
  v15 = &v4 - v6;
  v19 = &v4 - v6;
  v18 = v1;
  v8 = &v16;
  v17 = v1;
  v9 = sub_1A88(&qword_91210);
  v10 = sub_22578();
  sub_1FDBC();
  sub_7CB74();
  v13 = sub_22600();
  sub_1991C(v14, v12, v15);
  sub_22688(v14);
  sub_22794(v15, v14);
  sub_1991C(v14, v12, v11);
  sub_22688(v14);
  return sub_22688(v15);
}

uint64_t sub_2206C@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  v38 = a1;
  v74 = 0;
  v73 = 0;
  memset(v72, 0, sizeof(v72));
  v62 = 0;
  v63 = 0;
  v39 = 0;
  v33 = sub_7BD04();
  v34 = *(v33 - 8);
  v35 = v33 - 8;
  v36 = (*(v34 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v33);
  v37 = &v12 - v36;
  v40 = sub_1A88(&qword_91238);
  v42 = *(*(v40 - 8) + 64);
  v41 = (v42 + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = __chkstk_darwin(v39);
  v43 = &v12 - v41;
  v44 = (v42 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v2);
  v45 = &v12 - v44;
  v74 = &v12 - v44;
  v73 = v3;
  v46 = sub_7D184();
  v47 = sub_7D174();
  v48 = sub_7D154();
  v49 = v4;
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v13 = *v38;
  v14 = *(v38 + 1);

  v15 = v71;
  v71[0] = v13;
  v71[1] = v14;
  sub_198A4();
  v67 = sub_7C6E4();
  v68 = v5;
  v69 = v6;
  v70 = v7;
  v16 = v64;
  v64[0] = v67;
  v64[1] = v5;
  v17 = 1;
  v65 = v6 & 1;
  v66 = v7;
  v31 = v72;
  v24 = &type metadata for Text;
  v26 = &protocol witness table for Text;
  sub_1991C(v64, &type metadata for Text, v72);
  sub_23BF4(v16);
  v20 = 0;
  v60 = sub_7CB84();
  v61 = v8 & 1 & v17;
  v25 = &type metadata for Spacer;
  v27 = &protocol witness table for Spacer;
  sub_1991C(&v60, &type metadata for Spacer, &v62);
  sub_7CF84("arrow.down.circle", 0x11uLL, v17 & 1);
  v9 = sub_7CA34();
  v19 = v59;
  v59[0] = v9;
  v18 = sub_7CA04();
  sub_7C7F4();

  sub_B068();
  v23 = v58;
  v58[0] = v59[1];
  v58[1] = v59[2];
  v58[2] = v59[3];
  v10 = type metadata accessor for CachedDownloadView();
  (*(v34 + 16))(v37, &v38[*(v10 + 20)], v33);
  v21 = sub_1A88(&qword_91408);
  v22 = sub_23C3C();
  sub_B094();
  sub_7C8B4();
  (*(v34 + 8))(v37, v33);
  sub_23CE0();
  v28 = sub_23D24();
  sub_1991C(v43, v40, v45);
  sub_23DAC(v43);
  v30 = v56;
  sub_23E4C(v31, v56);
  v29 = v57;
  v57[0] = v30;
  v54 = v62;
  v55 = v63;
  v57[1] = &v54;
  sub_23ED4(v45, v43);
  v57[2] = v43;
  v53[0] = v24;
  v53[1] = v25;
  v53[2] = v40;
  v50 = v26;
  v51 = v27;
  v52 = v28;
  sub_4E6CC(v29, 3uLL, v53, v32);
  sub_23DAC(v43);
  sub_23BF4(v30);
  sub_23DAC(v45);
  sub_23BF4(v31);
}

unint64_t sub_22578()
{
  v2 = qword_91218;
  if (!qword_91218)
  {
    sub_B24C(&qword_91210);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_91218);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_22600()
{
  v2 = qword_91220;
  if (!qword_91220)
  {
    sub_B24C(&qword_91208);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_91220);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_22688(uint64_t a1)
{
  v3 = a1 + *(sub_1A88(&qword_91228) + 44);
  sub_209FC(*v3, *(v3 + 8), *(v3 + 16) & 1);

  v4 = v3 + *(sub_1A88(&qword_91230) + 64);

  v5 = *(sub_1A88(&qword_91238) + 52);
  v1 = sub_7BD04();
  (*(*(v1 - 8) + 8))(v4 + v5);
  return a1;
}