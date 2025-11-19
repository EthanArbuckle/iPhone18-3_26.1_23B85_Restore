void sub_100001E9C(void *a1, void *a2, void *a3)
{
  v4 = v3;
  v8 = OBJC_IVAR____TtC22MercuryPosterExtension17DrawingController_rendererCoordinators;
  swift_beginAccess();
  v9 = *(v4 + v8);

  v10 = sub_100002274(a1, v9);

  if (v10)
  {
    v11 = [a3 animationSettings];
    v12 = sub_100002440(a2, v11);
    if ((v13 & 1) == 0)
    {
      if (qword_10012F548 != -1)
      {
        v24 = v12;
        swift_once();
        v12 = v24;
      }

      v18 = v12;
      v19 = *&v12;
      v20 = sub_1000E96A4();
      sub_100007488(v20, qword_100130DE0);
      v21 = sub_1000E9684();
      v22 = sub_1000E9BB4();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        *v23 = 134217984;
        *(v23 + 4) = v18;
        _os_log_impl(&_mh_execute_header, v21, v22, "coordinator requested %f seconds of extended rendering", v23, 0xCu);
      }

      sub_1000362F4(0xD00000000000001BLL, 0x80000001000F7770, a1, v19 + 0.2);
    }
  }

  else
  {
    if (qword_10012F548 != -1)
    {
      swift_once();
    }

    v14 = sub_1000E96A4();
    sub_100007488(v14, qword_100130DE0);
    v15 = sub_1000E9684();
    v16 = sub_1000E9BA4();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v15, v16, "trying to update environment for a coordinator that isn’t there", v17, 2u);
    }
  }
}

uint64_t sub_100002274(void *a1, uint64_t a2)
{
  if ((a2 & 0xC000000000000001) != 0)
  {
    v2 = a1;
    v3 = sub_1000E9E24();

    if (v3)
    {
      type metadata accessor for WallpaperRenderingCoordinator(0);
      swift_dynamicCast();
      return v6;
    }
  }

  else if (*(a2 + 16))
  {
    sub_100002324(a1);
    if (v5)
    {
    }
  }

  return 0;
}

unint64_t sub_100002324(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1000E9C74(*(v2 + 40));
  return sub_100002374(a1, v4, &qword_100130E98);
}

unint64_t sub_100002374(uint64_t a1, uint64_t a2, unint64_t *a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a2 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v6 = ~v4;
    sub_100012904(0, a3);
    do
    {
      v7 = *(*(v3 + 48) + 8 * v5);
      v8 = sub_1000E9C84();

      if (v8)
      {
        break;
      }

      v5 = (v5 + 1) & v6;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_100002440(id a1, void *a2)
{
  v4 = v2;
  v256 = a2;
  v6 = sub_1000125FC(&qword_100131D78);
  __chkstk_darwin(v6 - 8);
  v245 = &v236 - v7;
  v8 = sub_1000125FC(&qword_100131CE0);
  *&v9 = __chkstk_darwin(v8 - 8).n128_u64[0];
  v255 = &v236 - v10;
  p_name = &stru_10012CFF8.name;
  v12 = [a1 contents];
  v13 = sub_1000E98E4();
  v14 = [v12 objectForUserInfoKey:v13];

  swift_unknownObjectRelease();
  if (v14)
  {
    sub_1000E9CC4();
    swift_unknownObjectRelease();
  }

  else
  {
    v318 = 0u;
    v317 = 0;
  }

  v332 = v318;
  v331 = v317;
  v257 = v3;
  v338 = a1;
  if (*(&v318 + 1))
  {
    if (swift_dynamicCast())
    {
      v15 = v303;
      if (*(v4 + 368) && (*(v4 + 360) == v303 || (sub_1000E9F74() & 1) != 0))
      {
      }

      else
      {
        v16 = qword_10012F678;

        if (v16 != -1)
        {
          swift_once();
        }

        v17 = sub_1000E96A4();
        sub_100007488(v17, qword_100131200);

        v18 = sub_1000E9684();
        v19 = sub_1000E9B94();

        if (os_log_type_enabled(v18, v19))
        {
          v20 = swift_slowAlloc();
          v21 = swift_slowAlloc();
          v331._countAndFlagsBits = v21;
          *v20 = 136446210;
          *(v20 + 4) = sub_100093A3C(v15._countAndFlagsBits, v15._object, &v331._countAndFlagsBits);
          _os_log_impl(&_mh_execute_header, v18, v19, "renderer got an update with a new look identifier %{public}s", v20, 0xCu);
          sub_100012710(v21);
        }

        *(v4 + 360) = v15;

        v22 = (*(*(v4 + 96) + 224))(v15._countAndFlagsBits, v15._object);
        swift_beginAccess();
        *(v4 + 376) = v22;

        v23 = *(v4 + 376);
        if (*(v23 + 16))
        {
          sub_1000125FC(&unk_100131DB0);
          v24 = swift_allocObject();
          v254 = xmmword_1000EC870;
          *(v24 + 16) = xmmword_1000EC870;
          *(v24 + 32) = v15;
          sub_1000125FC(&unk_100132320);
          v25 = swift_allocObject();
          *(v25 + 16) = v254;
          *(v25 + 32) = v15;
          *(v25 + 48) = v23;

          v26 = sub_1000A0670(v25);
          swift_setDeallocating();
          sub_1000047C4(v25 + 32, &unk_100131DC0);
          swift_deallocClassInstance();
          type metadata accessor for SolarEventPreviewer(0);
          v27 = swift_allocObject();
          v28 = sub_100097E04(v24, v26, v27);
          swift_setDeallocating();
          sub_10009881C(v24 + 32);
          swift_deallocClassInstance();
          *(v4 + OBJC_IVAR____TtC22MercuryPosterExtension29WallpaperRenderingCoordinator_solarPreviewer) = v28;
          p_name = (&stru_10012CFF8 + 8);
        }

        else
        {

          *(v4 + 400) = 0;
          *(v4 + 408) = 0;

          *(v4 + OBJC_IVAR____TtC22MercuryPosterExtension29WallpaperRenderingCoordinator_solarPreviewer) = 0;
        }

        a1 = v338;
      }
    }
  }

  else
  {
    sub_1000047C4(&v331, &qword_100131DA0);
  }

  v29 = [a1 p_name[259]];
  v30 = sub_1000E98E4();
  v31 = [v29 objectForUserInfoKey:v30];

  swift_unknownObjectRelease();
  if (v31)
  {
    sub_1000E9CC4();
    swift_unknownObjectRelease();
  }

  else
  {
    v318 = 0u;
    v317 = 0;
  }

  v332 = v318;
  v331 = v317;
  if (*(&v318 + 1))
  {
    if (swift_dynamicCast())
    {
      v32 = v303;

      v33._rawValue = &off_100119E80;
      v34 = sub_1000E9EC4(v33, v32);

      if (v34)
      {
        if (v34 == 1)
        {
          v37 = 0xE400000000000000;
          v36 = 1;
          v35 = 1802658116;
          v38 = *(v4 + 128);
          if (!*(v4 + 128))
          {
            goto LABEL_35;
          }
        }

        else
        {
          if (v34 != 2)
          {
            goto LABEL_41;
          }

          v35 = 0x6974616D6F747541;
          v36 = 2;
          v37 = 0xE900000000000063;
          v38 = *(v4 + 128);
          if (!*(v4 + 128))
          {
LABEL_35:
            v39 = 0xE500000000000000;
            if (v35 != 0x746867694CLL)
            {
LABEL_40:
              v40 = sub_1000E9F74();

              if ((v40 & 1) == 0)
              {
                if (qword_10012F678 != -1)
                {
                  swift_once();
                }

                v211 = sub_1000E96A4();
                sub_100007488(v211, qword_100131200);

                v212 = sub_1000E9684();
                v213 = sub_1000E9B94();

                if (os_log_type_enabled(v212, v213))
                {
                  v214 = swift_slowAlloc();
                  LODWORD(v254) = v36;
                  v215 = v214;
                  v216 = swift_slowAlloc();
                  v331._countAndFlagsBits = v216;
                  *v215 = 136446210;
                  v217 = sub_100093A3C(v32._countAndFlagsBits, v32._object, &v331._countAndFlagsBits);

                  *(v215 + 4) = v217;
                  _os_log_impl(&_mh_execute_header, v212, v213, "renderer got an update with a new appearance mode %{public}s", v215, 0xCu);
                  sub_100012710(v216);

                  *(v4 + 128) = v254;
                }

                else
                {

                  *(v4 + 128) = v36;
                }

                goto LABEL_42;
              }

LABEL_41:

LABEL_42:
              a1 = v338;
              goto LABEL_43;
            }

LABEL_38:
            if (v37 == v39)
            {

              goto LABEL_41;
            }

            goto LABEL_40;
          }
        }
      }

      else
      {
        v36 = 0;
        v37 = 0xE500000000000000;
        v35 = 0x746867694CLL;
        v38 = *(v4 + 128);
        if (!*(v4 + 128))
        {
          goto LABEL_35;
        }
      }

      if (v38 == 1)
      {
        v39 = 0xE400000000000000;
        if (v35 != 1802658116)
        {
          goto LABEL_40;
        }
      }

      else
      {
        v39 = 0xE900000000000063;
        if (v35 != 0x6974616D6F747541)
        {
          goto LABEL_40;
        }
      }

      goto LABEL_38;
    }
  }

  else
  {
    sub_1000047C4(&v331, &qword_100131DA0);
  }

LABEL_43:
  if (![a1 isPreview] || (objc_msgSend(a1, "isSnapshot") & 1) != 0)
  {
    v41 = OBJC_IVAR____TtC22MercuryPosterExtension29WallpaperRenderingCoordinator_solarPreviewContinuousRenderingToken;
    if (*(v4 + OBJC_IVAR____TtC22MercuryPosterExtension29WallpaperRenderingCoordinator_solarPreviewContinuousRenderingToken))
    {

      ContinuousRenderingToken.invalidate()();
    }

    *(v4 + v41) = 0;
    goto LABEL_48;
  }

  v124 = *(v4 + 368);
  if (v124)
  {
    v125 = *(v4 + OBJC_IVAR____TtC22MercuryPosterExtension29WallpaperRenderingCoordinator_solarPreviewer);
    if (v125)
    {
      v126 = *(v4 + 360);
      if ((v126 != *(v125 + 16) || v124 != *(v125 + 24)) && (sub_1000E9F74() & 1) == 0)
      {
        *(v125 + 16) = v126;
        *(v125 + 24) = v124;

        v127 = v255;
        sub_1000E94D4();
        v128 = sub_1000E94E4();
        (*(*(v128 - 8) + 56))(v127, 0, 1, v128);
        v129 = OBJC_IVAR____TtC22MercuryPosterExtensionP33_F62BFB1CA87BCDB560F9BD6D41BC5A8D19SolarEventPreviewer_previewStartDate;
        swift_beginAccess();
        sub_100099040(v127, v125 + v129, &qword_100131CE0);
        swift_endAccess();
      }

      v130 = OBJC_IVAR____TtC22MercuryPosterExtension29WallpaperRenderingCoordinator_solarPreviewContinuousRenderingToken;
      if (!*(v4 + OBJC_IVAR____TtC22MercuryPosterExtension29WallpaperRenderingCoordinator_solarPreviewContinuousRenderingToken))
      {
        *(v4 + v130) = sub_10008BFA8(0x72702072616C6F73, 0xED00007765697665);
LABEL_48:
      }
    }
  }

  v43 = *(v4 + 360);
  v42 = *(v4 + 368);
  v44 = *(v4 + 128);

  v45 = swift_unknownObjectRetain();
  sub_100004824(v45, v44, v43, v42, &v317);
  v46 = *(&v320 + 1);
  v47 = v321;
  v250 = *(&v322 + 1);
  v251 = v322;
  v249 = v323;
  v48 = *(&v317._countAndFlagsBits + 1);
  v313 = v327;
  v314 = v328;
  v315 = v329;
  v316 = v330;
  v309 = v323;
  v310 = v324;
  v311 = v325;
  v312 = v326;
  v305 = v319;
  v306 = v320;
  v307 = v321;
  v308 = v322;
  v303 = v317;
  v304 = v318;
  if (!v256)
  {
LABEL_54:
    v246 = *(&v47 + 1);
    v247 = v47;
    v248 = v46;
    v96 = *(v4 + 320);
    v97 = *(v4 + 336);
    v98 = *(v4 + 288);
    v299 = *(v4 + 304);
    v300 = v96;
    v301 = v97;
    v99 = *(v4 + 256);
    v100 = *(v4 + 272);
    v297[0] = *(v4 + 240);
    v297[1] = v99;
    v297[2] = v100;
    v298 = v98;
    v101 = *(v4 + 160);
    v102 = *(v4 + 192);
    v293 = *(v4 + 176);
    v294 = v102;
    v103 = *(v4 + 224);
    v295 = *(v4 + 208);
    v296 = v103;
    v104 = *(v4 + 160);
    v291 = *(v4 + 144);
    v292 = v104;
    v105 = *(v4 + 160);
    v258 = *(v4 + 144);
    v259 = v105;
    v260 = *(v4 + 176);
    v106 = *(v4 + 241);
    v107 = *(v4 + 257);
    v108 = v107;
    v109 = *(v4 + 289);
    v110 = *(v4 + 305);
    v264 = *(v4 + 273);
    v265 = v109;
    v262 = v106;
    v263 = v107;
    *(v268 + 15) = *(v4 + 352);
    v111 = *(v4 + 321);
    v268[0] = *(v4 + 337);
    v112 = *(v4 + 289);
    v113 = *(v4 + 321);
    v266 = *(v4 + 305);
    v267 = v113;
    v333 = v293;
    v332 = v101;
    v331 = v258;
    *(&v337[3] + 1) = v112;
    v302 = *(v4 + 352);
    v261 = *(v4 + 192);
    v114 = *(&v294 + 1);
    v115 = v295;
    v117 = *(&v296 + 1);
    v116 = v296;
    v118 = v297[0];
    v119 = *(v4 + 192);
    *(&v337[2] + 1) = v264;
    v120 = *(v4 + 241);
    *(&v337[1] + 1) = v108;
    *(v337 + 1) = v120;
    v121 = *(v4 + 337);
    *&v337[7] = *(v4 + 352);
    *(&v337[6] + 1) = v121;
    *(&v337[5] + 1) = v111;
    *(&v337[4] + 1) = v110;
    *&v334 = v119;
    *(&v334 + 1) = *(&v294 + 1);
    v335 = v295;
    v336 = v296;
    LOBYTE(v337[0]) = v297[0];
    if (sub_100004D84(&v331) == 1)
    {
      v284 = v258;
      v285 = v259;
      v286 = v260;
      *&v287 = v261;
      *(&v287 + 1) = v114;
      v288 = v115;
      v289 = __PAIR128__(v117, v116);
      v290[0] = v118;
      *&v290[49] = v265;
      *&v290[33] = v264;
      *&v290[17] = v263;
      *&v290[1] = v262;
      *&v290[112] = *(v268 + 15);
      *&v290[97] = v268[0];
      *&v290[81] = v267;
      *&v290[65] = v266;
      sub_1000299EC(&v291, &v270, &qword_100131DA8);
      sub_1000047C4(&v284, &qword_100131DA8);
    }

    else
    {
      v284 = v258;
      v285 = v259;
      v286 = v260;
      *&v287 = v261;
      *(&v287 + 1) = v114;
      v288 = v115;
      v289 = __PAIR128__(v117, v116);
      v290[0] = v118;
      *&v290[49] = v265;
      *&v290[33] = v264;
      *&v290[17] = v263;
      *&v290[1] = v262;
      *&v290[112] = *(v268 + 15);
      *&v290[97] = v268[0];
      *&v290[81] = v267;
      *&v290[65] = v266;
      sub_1000299EC(&v291, &v270, &qword_100131DA8);
      v256 = *(&v115 + 1);
      v253 = v115;
      sub_100004DF4(v114, v115, *(&v115 + 1), v116, v117, v118 & 1);
      sub_1000047C4(&v284, &qword_100131DA8);
      if (v118)
      {
        v122 = v117;
        v123 = (&stru_10012CFF8 + 8);
        if (CFAbsoluteTimeGetCurrent() <= *&v116 + *&v117)
        {
          v252 = 0;
          LODWORD(v254) = 1;
          v133 = v253;
          goto LABEL_75;
        }

        sub_100098664(v114, v253, v256, v116, v117, 1);
        goto LABEL_74;
      }
    }

    v123 = (&stru_10012CFF8 + 8);
LABEL_74:
    v114 = 0;
    v133 = 0;
    v256 = 0;
    v116 = 0;
    v122 = 0;
    LODWORD(v254) = 255;
    v252 = 1;
    goto LABEL_75;
  }

  v49 = v256;
  [v49 duration];
  if (v50 <= 0.0)
  {

    goto LABEL_54;
  }

  v256 = v49;
  v51 = *(v4 + 320);
  v52 = *(v4 + 288);
  v299 = *(v4 + 304);
  v300 = v51;
  v53 = *(v4 + 320);
  v301 = *(v4 + 336);
  v54 = *(v4 + 256);
  v55 = *(v4 + 224);
  v297[0] = *(v4 + 240);
  v297[1] = v54;
  v56 = *(v4 + 256);
  v57 = *(v4 + 288);
  v297[2] = *(v4 + 272);
  v298 = v57;
  v58 = *(v4 + 192);
  v59 = *(v4 + 160);
  v293 = *(v4 + 176);
  v294 = v58;
  v60 = *(v4 + 192);
  v61 = *(v4 + 224);
  v295 = *(v4 + 208);
  v296 = v61;
  v62 = *(v4 + 160);
  v291 = *(v4 + 144);
  v292 = v62;
  v337[4] = v299;
  v337[5] = v53;
  v337[6] = *(v4 + 336);
  v337[0] = v297[0];
  v337[1] = v56;
  v337[2] = v297[2];
  v337[3] = v52;
  v333 = v293;
  v334 = v60;
  v335 = v295;
  v336 = v55;
  v302 = *(v4 + 352);
  *&v337[7] = *(v4 + 352);
  v331 = v291;
  v332 = v59;
  if (sub_100004D84(&v331) == 1)
  {
    *&v290[64] = v313;
    *&v290[80] = v314;
    *&v290[96] = v315;
    *&v290[112] = v316;
    *v290 = v309;
    *&v290[16] = v310;
    *&v290[32] = v311;
    *&v290[48] = v312;
    v286 = v305;
    v287 = v306;
    v288 = v307;
    v289 = v308;
    v284 = v303;
    v285 = v304;
    v253 = *(&v307 + 1);
    v255 = v307;
    *&v254 = *(&v306 + 1);
    v252 = v309;
    v63 = v316;
    v65 = *(&v312 + 1);
    v64 = v312;
    v66 = v313;
    v243 = *(&v315 + 1);
    v244 = v308;
    v241 = v315;
    v242 = *(&v308 + 1);
    v67 = *(&v314 + 1);
    v68 = v314;
    v239 = *&v290[8];
    v240 = *&v290[24];
    *(&v69 + 1) = *(&v304 + 1);
    v237 = v304;
    v238 = v305;
    v70 = v306;
    v71 = BYTE4(v306);
    v72 = BYTE6(v303._object);
    v73 = BYTE5(v303._object);
    v74 = BYTE4(v303._object);
    object = v303._object;
    *&v69 = v303._countAndFlagsBits;
    v236 = v69;
    sub_100004CBC(&v284, &v270);
    v76 = v74;
    v77 = v73;
    v78 = v72;
    v79 = v255;
    v80 = v71;
    countAndFlagsBits = v236;
    v81 = v237;
    v83 = v68;
    v84 = v238;
    v85 = v239;
    v86 = v70;
    v87 = v241;
    v88 = v242;
    v89 = v240;
    v90 = v67;
    v91 = v243;
    v92 = v244;
    v93 = v252;
    v95 = v253;
    v94 = v254;
    v247 = v255;
    v248 = v254;
    v48 = *(&v236 + 1);
    v246 = v253;
    v250 = v242;
    v251 = v244;
    v249 = v252;
  }

  else
  {
    v246 = *(&v47 + 1);
    v247 = v47;
    v248 = v46;
    countAndFlagsBits = v291._countAndFlagsBits;
    object = v291._object;
    v84 = v293;
    v81 = v292;
    v86 = v294;
    v94 = *(&v294 + 1);
    v95 = *(&v295 + 1);
    v79 = v295;
    v88 = *(&v296 + 1);
    v92 = v296;
    v89 = *(&v297[1] + 8);
    v85 = *(v297 + 8);
    v65 = *(&v298 + 1);
    v64 = v298;
    v66 = v299;
    v91 = *(&v301 + 1);
    v87 = v301;
    v90 = *(&v300 + 1);
    v83 = v300;
    v63 = v302;
    v93 = v297[0];
    v80 = BYTE4(v294);
    v78 = BYTE6(v291._object);
    v77 = BYTE5(v291._object);
    v76 = BYTE4(v291._object);
  }

  v284._countAndFlagsBits = countAndFlagsBits;
  LODWORD(v284._object) = object;
  BYTE4(v284._object) = v76 & 1;
  BYTE5(v284._object) = v77 & 1;
  BYTE6(v284._object) = v78 & 1;
  v285 = v81;
  v286 = v84;
  LODWORD(v287) = v86;
  BYTE4(v287) = v80 & 1;
  *(&v287 + 1) = v94;
  *&v288 = v79;
  *(&v288 + 1) = v95;
  *&v289 = v92;
  *(&v289 + 1) = v88;
  v290[0] = v93 & 1;
  *&v290[8] = v85;
  *&v290[24] = v89;
  *&v290[48] = v64;
  *&v290[56] = v65;
  *&v290[64] = v66;
  *&v290[80] = v83;
  *&v290[88] = v90;
  *&v290[96] = v87;
  *&v290[104] = v91;
  *&v290[112] = v63;
  sub_100004DF4(v94, v79, v95, v92, v88, v93 & 1);
  sub_1000299EC(&v291, &v270, &qword_100131DA8);
  sub_100004D30(&v284);
  if (v93)
  {
    sub_100098664(v94, v79, v95, v92, v88, 1);
  }

  else
  {
    v79 = v94;
  }

  v123 = &stru_10012CFF8.name;
  v131 = v256;
  v132 = v338;
  if ([v338 deviceOrientation] == v79)
  {

    goto LABEL_74;
  }

  if (qword_10012F678 != -1)
  {
    swift_once();
  }

  v193 = sub_1000E96A4();
  sub_100007488(v193, qword_100131200);
  swift_unknownObjectRetain();
  v194 = sub_1000E9684();
  v195 = sub_1000E9B94();
  swift_unknownObjectRelease();
  v196 = os_log_type_enabled(v194, v195);
  v255 = v79;
  if (v196)
  {
    v197 = swift_slowAlloc();
    v270._countAndFlagsBits = swift_slowAlloc();
    *v197 = 136315394;
    if (v79 > 2)
    {
      if (v79 != 3)
      {
        if (v79 == 4)
        {
          v198 = 0x70616373646E616CLL;
          v199 = 0xED00007466654C65;
          goto LABEL_150;
        }

        goto LABEL_147;
      }

      v198 = 0x70616373646E616CLL;
      v199 = 0xEE00746867695265;
    }

    else
    {
      if (v79 != 1)
      {
        if (v79 == 2)
        {
          v198 = 0xD000000000000012;
          v199 = 0x80000001000F8340;
          goto LABEL_150;
        }

LABEL_147:
        v199 = 0xE700000000000000;
        v198 = 0x6E776F6E6B6E75;
        goto LABEL_150;
      }

      v199 = 0xE800000000000000;
      v198 = 0x7469617274726F70;
    }

LABEL_150:
    v222 = sub_100093A3C(v198, v199, &v270._countAndFlagsBits);

    *(v197 + 4) = v222;
    *(v197 + 12) = 2080;
    v223 = [v338 deviceOrientation];
    if (v223 > 2)
    {
      if (v223 == 3)
      {
        v224 = 0x70616373646E616CLL;
        v225 = 0xEE00746867695265;
        goto LABEL_160;
      }

      if (v223 == 4)
      {
        v224 = 0x70616373646E616CLL;
        v225 = 0xED00007466654C65;
        goto LABEL_160;
      }
    }

    else
    {
      if (v223 == 1)
      {
        v225 = 0xE800000000000000;
        v224 = 0x7469617274726F70;
        goto LABEL_160;
      }

      if (v223 == 2)
      {
        v224 = 0xD000000000000012;
        v225 = 0x80000001000F8340;
LABEL_160:
        v226 = sub_100093A3C(v224, v225, &v270._countAndFlagsBits);

        *(v197 + 14) = v226;
        _os_log_impl(&_mh_execute_header, v194, v195, "🔄 renderer starting orientation transition %s → %s", v197, 0x16u);
        swift_arrayDestroy();

        v131 = v256;
        v132 = v338;
        goto LABEL_161;
      }
    }

    v225 = 0xE700000000000000;
    v224 = 0x6E776F6E6B6E75;
    goto LABEL_160;
  }

LABEL_161:
  v253 = [v132 deviceOrientation];
  v227 = [v131 timingFunction];
  if (!v227)
  {
    v227 = [objc_opt_self() functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
  }

  v256 = v227;
  Current = CFAbsoluteTimeGetCurrent();
  [v131 delay];
  v230 = Current + v229;
  [v131 duration];
  v231 = v230;
  v122 = v232;
  [v131 delay];
  v234 = v233;
  [v131 duration];
  sub_100086260(v234 + v235);
  v116 = *&v231;

  v252 = 0;
  LODWORD(v254) = 1;
  v133 = v253;
  v123 = (&stru_10012CFF8 + 8);
  v114 = v255;
LABEL_75:
  v255 = v116;
  v134 = OBJC_IVAR____TtC22MercuryPosterExtension29WallpaperRenderingCoordinator_lastUpdateWasSnapshot;
  if (*(v4 + OBJC_IVAR____TtC22MercuryPosterExtension29WallpaperRenderingCoordinator_lastUpdateWasSnapshot) == 1 && ([v338 v123[407]] & 1) == 0)
  {
    if (qword_10012F678 == -1)
    {
LABEL_107:
      v188 = sub_1000E96A4();
      sub_100007488(v188, qword_100131200);
      v189 = sub_1000E9684();
      v190 = sub_1000E9B94();
      if (os_log_type_enabled(v189, v190))
      {
        v191 = swift_slowAlloc();
        *v191 = 0;
        _os_log_impl(&_mh_execute_header, v189, v190, "⏭️ got misleading environment update (non-snapshot following snapshot), skipping render", v191, 2u);
      }

      sub_100004E7C(v114, v133, v256, v255, v122, v254);

      v134[v4] = 0;
      v337[4] = v313;
      v337[5] = v314;
      v337[6] = v315;
      *&v337[7] = v316;
      v337[0] = v309;
      v337[1] = v310;
      v337[2] = v311;
      v337[3] = v312;
      v333 = v305;
      v334 = v306;
      v335 = v307;
      v336 = v308;
      v331 = v303;
      v332 = v304;
      v192 = &v331;
      goto LABEL_131;
    }

LABEL_167:
    swift_once();
    goto LABEL_107;
  }

  v135 = v338;
  v134[v4] = [v338 v123[407]];
  if ([v135 v123[407]])
  {
    v134 = *(v4 + 48);
    v136 = OBJC_IVAR____TtC22MercuryPosterExtension18WallpaperMetalView_shouldDrawAutomatically;
    if (v134[OBJC_IVAR____TtC22MercuryPosterExtension18WallpaperMetalView_shouldDrawAutomatically] == 1)
    {
      if (qword_10012F678 != -1)
      {
        swift_once();
      }

      v137 = sub_1000E96A4();
      sub_100007488(v137, qword_100131200);
      v138 = sub_1000E9684();
      v139 = sub_1000E9B94();
      if (os_log_type_enabled(v138, v139))
      {
        v140 = swift_slowAlloc();
        v244 = v122;
        *v140 = 0;
        _os_log_impl(&_mh_execute_header, v138, v139, "⏸️ disabling automatic drawing", v140, 2u);
        v122 = v244;
      }
    }

    v134[v136] = 0;
    v337[4] = v313;
    v337[5] = v314;
    v337[6] = v315;
    *&v337[7] = v316;
    v337[0] = v309;
    v337[1] = v310;
    v337[2] = v311;
    v337[3] = v312;
    v333 = v305;
    v334 = v306;
    v335 = v307;
    v336 = v308;
    v331 = v303;
    v332 = v304;
    sub_100004CBC(&v331, &v291);
    v141 = v257;
    sub_1000056F4(&v331, 1, 0);
    v142 = v141;
    if (v141)
    {
      sub_100004D30(&v331);
      if (qword_10012F678 != -1)
      {
        swift_once();
      }

      v143 = sub_1000E96A4();
      sub_100007488(v143, qword_100131200);
      swift_errorRetain();
      v144 = sub_1000E9684();
      v145 = sub_1000E9BA4();

      if (os_log_type_enabled(v144, v145))
      {
        v146 = swift_slowAlloc();
        v244 = v122;
        v147 = v133;
        v148 = v114;
        v149 = v146;
        v134 = swift_slowAlloc();
        *v149 = 138412290;
        swift_errorRetain();
        v150 = _swift_stdlib_bridgeErrorToNSError();
        *(v149 + 4) = v150;
        *v134 = v150;
        _os_log_impl(&_mh_execute_header, v144, v145, "failed to render for snapshot: %@", v149, 0xCu);
        sub_1000047C4(v134, &qword_10012FA60);

        v114 = v148;
        v133 = v147;
        v122 = v244;
      }

      else
      {
      }

      v142 = 0;
    }

    else
    {
      sub_100004D30(&v331);
    }
  }

  else
  {
    v151 = *(v4 + 320);
    v152 = *(v4 + 288);
    v299 = *(v4 + 304);
    v300 = v151;
    v153 = *(v4 + 320);
    v301 = *(v4 + 336);
    v154 = *(v4 + 256);
    v155 = *(v4 + 224);
    v297[0] = *(v4 + 240);
    v297[1] = v154;
    v156 = *(v4 + 256);
    v157 = *(v4 + 288);
    v297[2] = *(v4 + 272);
    v298 = v157;
    v158 = *(v4 + 192);
    v159 = *(v4 + 160);
    v293 = *(v4 + 176);
    v294 = v158;
    v160 = *(v4 + 192);
    v161 = *(v4 + 224);
    v295 = *(v4 + 208);
    v296 = v161;
    v162 = *(v4 + 160);
    v291 = *(v4 + 144);
    v292 = v162;
    v337[4] = v299;
    v337[5] = v153;
    v337[6] = *(v4 + 336);
    v337[0] = v297[0];
    v337[1] = v156;
    v337[2] = v297[2];
    v337[3] = v152;
    v333 = v293;
    v334 = v160;
    v335 = v295;
    v336 = v155;
    v302 = *(v4 + 352);
    *&v337[7] = *(v4 + 352);
    v331 = v291;
    v332 = v159;
    if (sub_100004D84(&v331) != 1)
    {
      v163 = *(&v331._countAndFlagsBits + 1);
      v164 = vabds_f32(*(&v331._countAndFlagsBits + 1), v48);
      if (v164 > 0.5 && v164 < 0.99)
      {
        v280 = v299;
        v281 = v300;
        v282 = v301;
        v283 = v302;
        v276 = v297[0];
        v277 = v297[1];
        v278 = v297[2];
        v279 = v298;
        v272 = v293;
        v273 = v294;
        v274 = v295;
        v275 = v296;
        v270 = v291;
        v271 = v292;
        sub_100004CBC(&v270, &v262);
        if (qword_10012F678 != -1)
        {
          swift_once();
        }

        v165 = sub_1000E96A4();
        sub_100007488(v165, qword_100131200);
        *&v290[64] = v299;
        *&v290[80] = v300;
        *&v290[96] = v301;
        *&v290[112] = v302;
        *v290 = v297[0];
        *&v290[16] = v297[1];
        *&v290[32] = v297[2];
        *&v290[48] = v298;
        v286 = v293;
        v287 = v294;
        v288 = v295;
        v289 = v296;
        v284 = v291;
        v285 = v292;
        sub_100004CBC(&v284, &v262);
        v166 = sub_1000E9684();
        v167 = sub_1000E9BA4();
        sub_1000047C4(&v291, &qword_100131DA8);
        if (os_log_type_enabled(v166, v167))
        {
          v168 = swift_slowAlloc();
          v134 = v122;
          *v168 = 134218240;
          *(v168 + 4) = (1.0 - v163);
          *(v168 + 12) = 2048;
          *(v168 + 14) = (1.0 - v48);
          _os_log_impl(&_mh_execute_header, v166, v167, "⚠️ suspicious backlight change %f → %f", v168, 0x16u);
        }

        sub_1000047C4(&v291, &qword_100131DA8);
      }
    }

    v169 = *(v4 + 48);
    v170 = OBJC_IVAR____TtC22MercuryPosterExtension18WallpaperMetalView_shouldDrawAutomatically;
    if ((v169[OBJC_IVAR____TtC22MercuryPosterExtension18WallpaperMetalView_shouldDrawAutomatically] & 1) == 0)
    {
      v244 = v122;
      v171 = v133;
      v172 = v114;
      if (qword_10012F678 != -1)
      {
        swift_once();
      }

      v173 = sub_1000E96A4();
      sub_100007488(v173, qword_100131200);
      v174 = sub_1000E9684();
      v175 = sub_1000E9B94();
      if (os_log_type_enabled(v174, v175))
      {
        v134 = swift_slowAlloc();
        *v134 = 0;
        _os_log_impl(&_mh_execute_header, v174, v175, "▶️ reenabling automatic drawing", v134, 2u);
      }

      v114 = v172;
      v133 = v171;
      v122 = v244;
    }

    v169[v170] = 1;
    if ((v252 & 1) == 0)
    {
      swift_beginAccess();
      *(&v306 + 1) = v114;
      *&v307 = v133;
      *(&v307 + 1) = v256;
      *&v308 = v255;
      *(&v308 + 1) = v122;
      LOBYTE(v309) = 1;
      sub_100004DF4(v114, v133, v256, v255, v122, 1);
      sub_100098664(v248, v247, v246, v251, v250, v249);
    }

    swift_beginAccess();
    v268[4] = v313;
    v268[5] = v314;
    v268[6] = v315;
    v268[0] = v309;
    v268[1] = v310;
    v268[2] = v311;
    v268[3] = v312;
    v264 = v305;
    v265 = v306;
    v266 = v307;
    v267 = v308;
    v262 = v303;
    v263 = v304;
    v280 = v313;
    v281 = v314;
    v282 = v315;
    v276 = v309;
    v277 = v310;
    v278 = v311;
    v279 = v312;
    v272 = v305;
    v273 = v306;
    v274 = v307;
    v275 = v308;
    v269 = v316;
    v283 = v316;
    v270 = v303;
    v271 = v304;
    _MTLPackedFloat3.init(_:_:_:)(*&v303._countAndFlagsBits, *&v313, *&v315);
    v176 = *(v4 + 320);
    *&v290[64] = *(v4 + 304);
    *&v290[80] = v176;
    *&v290[96] = *(v4 + 336);
    *&v290[112] = *(v4 + 352);
    v177 = *(v4 + 256);
    *v290 = *(v4 + 240);
    *&v290[16] = v177;
    v178 = *(v4 + 288);
    *&v290[32] = *(v4 + 272);
    *&v290[48] = v178;
    v179 = *(v4 + 192);
    v286 = *(v4 + 176);
    v287 = v179;
    v180 = *(v4 + 224);
    v288 = *(v4 + 208);
    v289 = v180;
    v181 = *(v4 + 160);
    v284 = *(v4 + 144);
    v285 = v181;
    v182 = v281;
    *(v4 + 304) = v280;
    *(v4 + 320) = v182;
    *(v4 + 336) = v282;
    *(v4 + 352) = v283;
    v183 = v277;
    *(v4 + 240) = v276;
    *(v4 + 256) = v183;
    v184 = v279;
    *(v4 + 272) = v278;
    *(v4 + 288) = v184;
    v185 = v273;
    *(v4 + 176) = v272;
    *(v4 + 192) = v185;
    v186 = v275;
    *(v4 + 208) = v274;
    *(v4 + 224) = v186;
    v187 = v271;
    *(v4 + 144) = v270;
    *(v4 + 160) = v187;
    sub_100004CBC(&v262, &v258);
    sub_1000047C4(&v284, &qword_100131DA8);
    [v169 setNeedsDisplay];
    v142 = v257;
  }

  swift_beginAccess();
  if (!*(*(v4 + 376) + 16))
  {
    sub_100004E7C(v114, v133, v256, v255, v122, v254);
    goto LABEL_130;
  }

  v253 = v133;
  v133 = v114;

  v201 = sub_100096F68(v200, v4);

  v114 = *(v4 + 376);
  if (!*(v114 + 16))
  {
    __break(1u);
    goto LABEL_166;
  }

  v202 = sub_10009F284(v201);
  if ((v203 & 1) == 0)
  {
LABEL_166:
    __break(1u);
    goto LABEL_167;
  }

  v204 = (*(v114 + 56) + 16 * v202);
  v205 = *v204;
  v206 = v204[1];

  v207 = *(v4 + 408);
  if (!v207 || (v208 = *(v4 + 400), v205 == v208) && v207 == v206 || (sub_1000E9F74() & 1) != 0)
  {
    sub_100004E7C(v133, v253, v256, v255, v122, v254);
LABEL_128:
    *(v4 + 400) = v205;
    *(v4 + 408) = v206;

LABEL_130:
    v299 = v313;
    v300 = v314;
    v301 = v315;
    v302 = v316;
    v297[0] = v309;
    v297[1] = v310;
    v297[2] = v311;
    v298 = v312;
    v293 = v305;
    v294 = v306;
    v295 = v307;
    v296 = v308;
    v291 = v303;
    v292 = v304;
    v192 = &v291;
LABEL_131:
    sub_100004D30(v192);
    return 0;
  }

  v244 = v122;

  v210 = v338;
  if ([v338 isPreview] & 1) != 0 || (objc_msgSend(v210, "isSnapshot"))
  {
    sub_100004E7C(v133, v253, v256, v255, v244, v254);

    goto LABEL_128;
  }

  v257 = v142;
  v218 = OBJC_IVAR____TtC22MercuryPosterExtension29WallpaperRenderingCoordinator_lookTransition;
  swift_beginAccess();
  v219 = v4 + v218;
  v220 = v245;
  sub_1000299EC(v219, v245, &qword_100131D78);
  v221 = type metadata accessor for WallpaperRenderingCoordinator.LookTransitionInfo(0);
  if ((*(*(v221 - 8) + 48))(v220, 1, v221) != 1)
  {

    sub_100004E7C(v133, v253, v256, v255, v244, v254);
    sub_1000047C4(v220, &qword_100131D78);
    goto LABEL_128;
  }

  sub_1000047C4(v220, &qword_100131D78);
  sub_10008B0C8(v208, v207, v205, v206);
  sub_100004E7C(v133, v253, v256, v255, v244, v254);

  v299 = v313;
  v300 = v314;
  v301 = v315;
  v302 = v316;
  v297[0] = v309;
  v297[1] = v310;
  v297[2] = v311;
  v298 = v312;
  v293 = v305;
  v294 = v306;
  v295 = v307;
  v296 = v308;
  v291 = v303;
  v292 = v304;
  sub_100004D30(&v291);
  return 0x3FF0000000000000;
}

uint64_t sub_1000047C4(uint64_t a1, uint64_t *a2)
{
  v3 = sub_1000125FC(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

double sub_100004824@<D0>(void *a1@<X0>, unsigned __int8 a2@<W1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X8>)
{
  [a1 unlockProgress];
  v10 = v9;
  [a1 linearBacklightProgress];
  v12 = v11;
  [a1 backlightProgress];
  v14 = v13;
  v15 = [a1 traitCollection];
  v16 = v15;
  if (v15)
  {
    v17 = [v15 userInterfaceStyle];
  }

  else
  {
    v17 = 0;
  }

  v56 = sub_100004BBC(v17, v16 == 0, a2);
  v18 = [a1 isPreview];
  v19 = [a1 deviceOrientation];
  v95 = 0;
  [a1 floatingObscurableBounds];
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v96 = 0;
  [a1 deviceMotionRotation];
  v28 = v75;
  v29 = v74;
  v30 = *(&v73 + 1);
  v31 = v73;
  v32 = sub_1000E9C44();
  *&v60 = v29;
  *(&v60 + 1) = v28;
  *&v59 = v31;
  *(&v59 + 1) = v30;
  sub_100098AD4(&v59, v32, &v73);
  v54 = v73;
  v55 = v74;
  [a1 salientContentRectangle];
  v99.origin.x = CGRectNull.origin.x;
  v99.origin.y = CGRectNull.origin.y;
  v99.size.width = CGRectNull.size.width;
  v99.size.height = CGRectNull.size.height;
  if (CGRectEqualToRect(v97, v99))
  {
    swift_unknownObjectRelease();
    v33 = 0.0;
  }

  else
  {
    [a1 salientContentRectangle];
    MinY = CGRectGetMinY(v98);
    [a1 canvasSize];
    v34 = v25;
    v35 = v23;
    v36 = v21;
    v37 = v14;
    v38 = v12;
    v39 = v10;
    v41 = v40;
    swift_unknownObjectRelease();
    v33 = MinY / v41;
    v10 = v39;
    v12 = v38;
    v14 = v37;
    v21 = v36;
    v23 = v35;
    v25 = v34;
  }

  v42 = 0xE000000000000000;
  if (a4)
  {
    v42 = a4;
  }

  v43 = a3;
  if (!a4)
  {
    v43 = 0;
  }

  v44 = v10;
  if (v44 < 0.0)
  {
    v44 = 0.0;
  }

  *&v59 = v44;
  *(&v59 + 1) = 1.0 - v12;
  v45 = v14;
  *(&v59 + 2) = v45;
  BYTE12(v59) = v56 & 1;
  *(&v59 + 13) = v18;
  *&v60 = v43;
  *(&v60 + 1) = v42;
  v61 = 0uLL;
  LODWORD(v62) = 0;
  BYTE4(v62) = v96;
  *(&v62 + 1) = v19;
  v63 = 0u;
  v64 = 0u;
  LOBYTE(v65) = v95;
  *(&v65 + 1) = v21;
  *&v66 = v23;
  *(&v66 + 1) = v25;
  *&v67 = v27;
  v68 = v54;
  *&v69 = v55;
  *&v70 = v31;
  *(&v70 + 1) = v30;
  *&v71 = v29;
  *(&v71 + 1) = v28;
  v72 = v33;
  *&v73 = v44;
  *(&v73 + 1) = *(&v59 + 1);
  *(&v73 + 2) = v45;
  BYTE12(v73) = v56 & 1;
  *(&v73 + 13) = v18;
  v74 = v43;
  v75 = v42;
  v77 = 0;
  v76 = 0;
  v78 = 0;
  v79 = v96;
  v80 = v19;
  v81 = 0u;
  v82 = 0u;
  v83 = v95;
  v84 = v21;
  v85 = v23;
  v86 = v25;
  v87 = v27;
  v88 = v54;
  v89 = v55;
  v93 = v28;
  v92 = v29;
  v91 = v30;
  v90 = v31;
  v94 = v33;
  sub_100004CBC(&v59, v58);
  sub_100004D30(&v73);
  v46 = v70;
  *(a5 + 160) = v69;
  *(a5 + 176) = v46;
  *(a5 + 192) = v71;
  *(a5 + 208) = v72;
  v47 = v66;
  *(a5 + 96) = v65;
  *(a5 + 112) = v47;
  v48 = v68;
  *(a5 + 128) = v67;
  *(a5 + 144) = v48;
  v49 = v62;
  *(a5 + 32) = v61;
  *(a5 + 48) = v49;
  v50 = v64;
  *(a5 + 64) = v63;
  *(a5 + 80) = v50;
  result = *&v59;
  v52 = v60;
  *a5 = v59;
  *(a5 + 16) = v52;
  return result;
}

uint64_t sub_100004BBC(uint64_t a1, int a2, unsigned __int8 a3)
{
  if (a3 > 1u)
  {

    return (a1 == 2) & ~a2;
  }

  v6 = sub_1000E9F74();

  if (v6)
  {
    return (a1 == 2) & ~a2;
  }

  if (a3)
  {

    return 1;
  }

  else
  {
    v8 = sub_1000E9F74();

    return v8 & 1;
  }
}

uint64_t sub_100004D84(uint64_t a1)
{
  v1 = *(a1 + 12);
  v2 = v1 >= 2;
  v3 = (v1 + 2147483646) & 0x7FFFFFFF;
  if (v2)
  {
    return (v3 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100004DA0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 216))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 12);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

id sub_100004DF4(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a6)
  {
    return a3;
  }

  return result;
}

uint64_t sub_100004E00(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 216) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 216) = 0;
    }

    if (a2)
    {
      *(result + 12) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_100004E7C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a6 != -1)
  {
    return sub_100098664(result, a2, a3, a4, a5, a6 & 1);
  }

  return result;
}

void sub_100004EF4()
{
  v1 = v0;
  v2 = sub_1000E96A4();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000125FC(&qword_1001311D0);
  __chkstk_darwin(v6 - 8);
  v8 = &v19 - v7;
  v9 = OBJC_IVAR____TtC22MercuryPosterExtension18WallpaperMetalView_shouldDrawAutomatically;
  if (v1[OBJC_IVAR____TtC22MercuryPosterExtension18WallpaperMetalView_shouldDrawAutomatically] == 1)
  {
    v10 = *&v1[OBJC_IVAR____TtC22MercuryPosterExtension18WallpaperMetalView_drawingHandler];
    if (v10)
    {

      v11 = [v1 layer];
      objc_opt_self();
      v12 = swift_dynamicCastObjCClass();
      if (v12)
      {
        v13 = [v12 nextDrawable];

        if (v13)
        {
          v10(v13);
          swift_unknownObjectRelease();
        }
      }

      else
      {
      }

      sub_1000056DC(v10);
    }
  }

  else
  {
    v14 = OBJC_IVAR____TtC22MercuryPosterExtension18WallpaperMetalView_log;
    swift_beginAccess();
    sub_1000299EC(&v1[v14], v8, &qword_1001311D0);
    if ((*(v3 + 48))(v8, 1, v2))
    {
      sub_1000047C4(v8, &qword_1001311D0);
    }

    else
    {
      (*(v3 + 16))(v5, v8, v2);
      sub_1000047C4(v8, &qword_1001311D0);
      v15 = v1;
      v16 = sub_1000E9684();
      v17 = sub_1000E9B94();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        *v18 = 67109120;
        *(v18 + 4) = v1[v9];

        _os_log_impl(&_mh_execute_header, v16, v17, "skipping needs-display render: should auto-draw %{BOOL}d", v18, 8u);
      }

      else
      {

        v16 = v15;
      }

      (*(v3 + 8))(v5, v2);
    }
  }
}

void sub_10000523C(void *a1)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = *(Strong + 320);
    v34 = *(Strong + 304);
    v35 = v4;
    v36 = *(Strong + 336);
    v37 = *(Strong + 352);
    v5 = *(Strong + 256);
    v30 = *(Strong + 240);
    v31 = v5;
    v6 = *(Strong + 288);
    v32 = *(Strong + 272);
    v33 = v6;
    v7 = *(Strong + 192);
    v26 = *(Strong + 176);
    v27 = v7;
    v8 = *(Strong + 224);
    v28 = *(Strong + 208);
    v29 = v8;
    v9 = *(Strong + 160);
    v24 = *(Strong + 144);
    v25 = v9;
    memmove(__dst, (Strong + 144), 0xD8uLL);
    if (sub_100004D84(__dst) == 1)
    {
      if (qword_10012F678 != -1)
      {
        swift_once();
      }

      v10 = sub_1000E96A4();
      sub_100007488(v10, qword_100131200);
      v11 = sub_1000E9684();
      v12 = sub_1000E9BA4();
      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        *v13 = 0;
        _os_log_impl(&_mh_execute_header, v11, v12, "got a request to render, but have no non-snapshot state", v13, 2u);
      }
    }

    else
    {
      v40[10] = __dst[10];
      v40[11] = __dst[11];
      v40[12] = __dst[12];
      v41 = v39;
      v40[6] = __dst[6];
      v40[7] = __dst[7];
      v40[8] = __dst[8];
      v40[9] = __dst[9];
      v40[2] = __dst[2];
      v40[3] = __dst[3];
      v40[4] = __dst[4];
      v40[5] = __dst[5];
      v40[0] = __dst[0];
      v40[1] = __dst[1];
      v22[10] = v34;
      v22[11] = v35;
      v22[12] = v36;
      v23 = v37;
      v22[6] = v30;
      v22[7] = v31;
      v22[8] = v32;
      v22[9] = v33;
      v22[2] = v26;
      v22[3] = v27;
      v22[4] = v28;
      v22[5] = v29;
      v22[0] = v24;
      v22[1] = v25;
      sub_100004CBC(v22, v21);
      sub_1000056F4(v40, 0, a1);
      v14 = OBJC_IVAR____TtC22MercuryPosterExtension29WallpaperRenderingCoordinator_nextRenderShouldNotifySignificantChange;
      if (*(v3 + OBJC_IVAR____TtC22MercuryPosterExtension29WallpaperRenderingCoordinator_nextRenderShouldNotifySignificantChange) == 1)
      {
        if (qword_10012F678 != -1)
        {
          swift_once();
        }

        v15 = sub_1000E96A4();
        sub_100007488(v15, qword_100131200);
        v16 = sub_1000E9684();
        v17 = sub_1000E9BB4();
        if (os_log_type_enabled(v16, v17))
        {
          v18 = swift_slowAlloc();
          *v18 = 0;
          _os_log_impl(&_mh_execute_header, v16, v17, "recently finished a look transition, notifying significant change", v18, 2u);
        }

        v19 = *(v3 + OBJC_IVAR____TtC22MercuryPosterExtension29WallpaperRenderingCoordinator_significantChangeHandler);
        if (v19)
        {

          v19(v20);
          sub_1000056DC(v19);
        }

        sub_1000047C4(&v24, &qword_100131DA8);
        *(v3 + v14) = 0;
      }

      else
      {
        sub_1000047C4(&v24, &qword_100131DA8);
      }
    }
  }
}

uint64_t sub_1000056DC(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

void sub_1000056F4(uint64_t a1, int a2, void *a3)
{
  v5 = v3;
  v227 = a3;
  LODWORD(v228) = a2;
  v7 = sub_1000E9784();
  v219 = *(v7 - 1);
  v220 = v7;
  __chkstk_darwin(v7);
  v218 = &v205[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_1000E9514();
  __chkstk_darwin(v9 - 8);
  v214 = &v205[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = sub_1000125FC(&qword_100131D70);
  v216 = *(v11 - 8);
  v217 = v11;
  __chkstk_darwin(v11);
  v215 = &v205[-v12];
  v13 = sub_1000E94E4();
  v14 = *(v13 - 8);
  v222 = v13;
  v223 = v14;
  v15 = __chkstk_darwin(v13);
  v17 = &v205[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v15);
  v221 = &v205[-v18];
  v19 = sub_1000125FC(&qword_100131D78);
  v20 = __chkstk_darwin(v19 - 8);
  v22 = &v205[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v20);
  v24 = &v205[-v23];
  v25 = type metadata accessor for WallpaperRenderingCoordinator.LookTransitionInfo(0);
  v26 = *(v25 - 8);
  v27 = __chkstk_darwin(v25);
  v28 = __chkstk_darwin(v27);
  v29 = __chkstk_darwin(v28);
  __chkstk_darwin(v29);
  *&v224 = &v205[-v33];
  v269 = v5[13];
  if (!v269)
  {
    if (qword_10012F678 != -1)
    {
      swift_once();
    }

    v42 = sub_1000E96A4();
    sub_100007488(v42, qword_100131200);
    v43 = sub_1000E9684();
    v44 = sub_1000E9BA4();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      *v45 = 0;
      _os_log_impl(&_mh_execute_header, v43, v44, "got a rendering environment update before our renderer is set up", v45, 2u);
    }

    return;
  }

  v210 = v32;
  v211 = v31;
  v226 = v4;
  v34 = v5[14];
  v212 = v30;
  v213 = v34;
  v35 = OBJC_IVAR____TtC22MercuryPosterExtension29WallpaperRenderingCoordinator_lookTransition;
  swift_beginAccess();
  v225 = v5;
  sub_1000299EC(v5 + v35, v24, &qword_100131D78);
  if ((*(v26 + 48))(v24, 1, v25) == 1)
  {
    swift_unknownObjectRetain();
    sub_1000047C4(v24, &qword_100131D78);
    if ((*(a1 + 13) & 1) != 0 && *(v225 + OBJC_IVAR____TtC22MercuryPosterExtension29WallpaperRenderingCoordinator_solarPreviewer))
    {

      sub_100093214(v250);
      v36 = v250[0];
      v37 = v250[1];
      v38 = v250[2];
      v39 = v250[3];
      v40 = v251;
      i = v252;

      goto LABEL_29;
    }

    v37 = v225[51];
    if (!v37)
    {
      v36 = *(a1 + 16);
      v37 = *(a1 + 24);
      v38 = *(a1 + 32);
      v39 = *(a1 + 40);
      v40 = *(a1 + 48);
      i = *(a1 + 52);
      sub_1000073F4(v36, v37, v38, v39, v40, i);
      goto LABEL_29;
    }

    v36 = v225[50];

LABEL_15:
    v38 = 0;
    v39 = 0;
    v40 = 0;
    i = 0;
    goto LABEL_29;
  }

  v46 = v24;
  v47 = v224;
  sub_100098E68(v46, v224);
  if (v228)
  {
    v48 = (v47 + *(v25 + 28));
    v36 = *v48;
    v37 = v48[1];
    swift_unknownObjectRetain();

    sub_100098F30(v47);
    goto LABEL_15;
  }

  swift_unknownObjectRetain();
  v49 = v221;
  sub_1000E94D4();
  v208 = v25;
  v50 = *(v47 + *(v25 + 20));
  v51 = v47;
  sub_1000E94C4();
  v52 = sub_1000E9484();
  v53 = v17;
  v54 = (v223 + 8);
  v209 = *(v223 + 1);
  v209(v53, v222);
  if (v52)
  {
    p_name = v208;
    (*(v26 + 56))(v22, 1, 1, v208);
    v56 = *&v225;
    swift_beginAccess();
    sub_100099040(v22, *&v56 + v35, &qword_100131D78);
    swift_endAccess();
    if (qword_10012F678 == -1)
    {
      goto LABEL_18;
    }

    goto LABEL_122;
  }

  v67 = v208;
  v223 = v54;
  sub_1000E9454();
  v69 = v68 / v50;
  v70 = v49;
  if (qword_10012F678 != -1)
  {
    swift_once();
  }

  v71 = v69;
  v72 = sub_1000E96A4();
  sub_100007488(v72, qword_100131200);
  v73 = v210;
  sub_100098ECC(v51, v210);
  v74 = v212;
  sub_100098ECC(v51, v212);
  v75 = sub_1000E9684();
  v76 = sub_1000E9B94();
  if (os_log_type_enabled(v75, v76))
  {
    v77 = swift_slowAlloc();
    v211 = swift_slowAlloc();
    *&v231 = v211;
    *v77 = 136446722;
    v78 = (v73 + *(v67 + 6));
    v207 = v75;
    v206 = v76;
    v79 = *v78;
    v80 = v78[1];

    sub_100098F30(v73);
    v81 = sub_100093A3C(v79, v80, &v231);

    *(v77 + 4) = v81;
    *(v77 + 12) = 2082;
    v82 = (v74 + *(v67 + 7));
    v83 = *v82;
    v84 = v82[1];

    sub_100098F30(v74);
    v85 = sub_100093A3C(v83, v84, &v231);

    *(v77 + 14) = v85;
    *(v77 + 22) = 2082;
    *&v229 = v71;
    sub_1000E94F4();
    sub_100098F8C();
    v86 = v215;
    sub_1000E92F4();
    sub_100028F40(&qword_100131D98, &qword_100131D70);
    v87 = v217;
    sub_1000E9884();
    (*(v216 + 8))(v86, v87);
    v88 = sub_100093A3C(v233, *(&v233 + 1), &v231);

    *(v77 + 24) = v88;
    v89 = v207;
    _os_log_impl(&_mh_execute_header, v207, v206, "solar transition “%{public}s” → “%{public}s” %{public}s", v77, 0x20u);
    swift_arrayDestroy();

    v70 = v221;
  }

  else
  {

    sub_100098F30(v74);
    sub_100098F30(v73);
  }

  v93 = *(v67 + 7);
  v94 = v224;
  v95 = (v224 + *(v67 + 6));
  v36 = *v95;
  v37 = v95[1];
  v38 = *(v224 + v93);
  v39 = *(v224 + v93 + 8);

  v96 = v218;
  sub_1000E9774();
  LODWORD(v231) = 1065353216;
  LODWORD(v229) = 0;
  sub_1000E9764();
  (*(v219 + 8))(v96, v220);
  v209(v70, v222);
  sub_100098F30(v94);
  v40 = v233;
  for (i = 1; ; i = 0)
  {
LABEL_29:
    v97 = *(a1 + 32);
    v253 = *(a1 + 16);
    v254[0] = v97;
    *(v254 + 13) = *(a1 + 45);
    sub_100004CBC(a1, &v231);
    sub_100007434(&v253);
    v233 = *a1;
    LOBYTE(v229) = i;
    v255 = v233;
    v256 = v36;
    v257 = v37;
    v258 = v38;
    v259 = v39;
    v260 = v40;
    v261 = i;
    v267[2] = *(a1 + 165);
    v267[3] = *(a1 + 181);
    v268[0] = *(a1 + 197);
    *(v268 + 15) = *(a1 + 212);
    v265 = *(a1 + 101);
    v266 = *(a1 + 117);
    v267[0] = *(a1 + 133);
    v267[1] = *(a1 + 149);
    v262 = *(a1 + 53);
    v263 = *(a1 + 69);
    v264 = *(a1 + 85);
    v234 = v36;
    v235 = v37;
    v236 = v38;
    v237 = v39;
    v238 = v40;
    v239 = i;
    v247 = *(a1 + 165);
    v248 = *(a1 + 181);
    v249[0] = *(a1 + 197);
    *(v249 + 15) = *(a1 + 212);
    v243 = *(a1 + 101);
    v244 = *(a1 + 117);
    v245 = *(a1 + 133);
    v246 = *(a1 + 149);
    v240 = *(a1 + 53);
    v241 = *(a1 + 69);
    v242 = *(a1 + 85);
    sub_100004CBC(&v255, &v231);
    sub_100004D30(&v233);
    if (qword_10012F678 != -1)
    {
      swift_once();
    }

    v98 = sub_1000E96A4();
    v99 = sub_100007488(v98, qword_100131200);
    sub_100004CBC(&v255, &v231);
    v100 = sub_1000E9684();
    v101 = sub_1000E9B94();
    sub_100004D30(&v255);
    v102 = os_log_type_enabled(v100, v101);
    v223 = v99;
    if (v102)
    {
      v103 = swift_slowAlloc();
      v222 = swift_slowAlloc();
      *&v231 = v222;
      *v103 = 136447746;
      sub_1000125FC(&unk_100131D80);
      v104 = swift_allocObject();
      v224 = xmmword_1000EC870;
      *(v104 + 16) = xmmword_1000EC870;
      v105 = v255;
      *(v104 + 56) = &type metadata for Float;
      *(v104 + 64) = &protocol witness table for Float;
      *(v104 + 32) = v105;
      v106 = sub_1000E9924();
      LODWORD(v221) = v101;
      v108 = sub_100093A3C(v106, v107, &v231);

      *(v103 + 4) = v108;
      *(v103 + 12) = 2082;
      if (BYTE12(v255))
      {
        v109 = 2592907248;
      }

      else
      {
        v109 = 2643238896;
      }

      v110 = sub_100093A3C(v109, 0xA400000000000000, &v231);

      *(v103 + 14) = v110;
      *(v103 + 22) = 2082;
      v111 = swift_allocObject();
      *(v111 + 16) = v224;
      v112 = DWORD1(v255);
      *(v111 + 56) = &type metadata for Float;
      *(v111 + 64) = &protocol witness table for Float;
      *(v111 + 32) = v112;
      v113 = sub_1000E9924();
      v115 = sub_100093A3C(v113, v114, &v231);

      *(v103 + 24) = v115;
      *(v103 + 32) = 2080;
      v116 = swift_allocObject();
      *(v116 + 16) = v224;
      v117 = WallpaperState.rotationLandscapeAmount.getter();
      *(v116 + 56) = &type metadata for Float;
      *(v116 + 64) = &protocol witness table for Float;
      *(v116 + 32) = v117;
      v118 = sub_1000E9924();
      v120 = sub_100093A3C(v118, v119, &v231);

      *(v103 + 34) = v120;
      *(v103 + 42) = 2082;
      v121 = v228;
      if (v228)
      {
        v122 = 5457241;
      }

      else
      {
        v122 = 20302;
      }

      if (v228)
      {
        v123 = 0xE300000000000000;
      }

      else
      {
        v123 = 0xE200000000000000;
      }

      v124 = sub_100093A3C(v122, v123, &v231);

      *(v103 + 44) = v124;
      *(v103 + 52) = 2082;
      v125 = swift_allocObject();
      *(v125 + 16) = v224;
      v126 = *(v267 + 11);
      v127 = *(&v267[1] + 3);
      *(v125 + 56) = &type metadata for CGFloat;
      v128 = sub_10001275C();
      *(v125 + 64) = v128;
      *(v125 + 32) = v126;
      v129 = sub_1000E9924();
      v131 = sub_100093A3C(v129, v130, &v231);

      *(v103 + 54) = v131;
      *(v103 + 62) = 2082;
      v132 = swift_allocObject();
      *(v132 + 16) = v224;
      *(v132 + 56) = &type metadata for CGFloat;
      *(v132 + 64) = v128;
      *(v132 + 32) = v127;
      v133 = sub_1000E9924();
      v135 = sub_100093A3C(v133, v134, &v231);

      *(v103 + 64) = v135;
      _os_log_impl(&_mh_execute_header, v100, v221, "rendering 🔓 %{public}s, %{public}s, dim %{public}s, land %s], 📸 %{public}s, 🥙 (%{public}s %{public}s)", v103, 0x48u);
      swift_arrayDestroy();

      v56 = *&v225;
      v136 = v226;
      a1 = v269;
      v137 = v227;
      if ((v121 & 1) == 0)
      {
LABEL_42:
        if (v137)
        {
          v138 = [swift_unknownObjectRetain() texture];
          goto LABEL_49;
        }

        v149 = sub_1000E9684();
        v150 = sub_1000E9BA4();
        if (os_log_type_enabled(v149, v150))
        {
          v151 = swift_slowAlloc();
          *v151 = 0;
          _os_log_impl(&_mh_execute_header, v149, v150, "no drawable available", v151, 2u);
        }

        sub_100004D30(&v255);

LABEL_70:
        swift_unknownObjectRelease();
        return;
      }
    }

    else
    {

      v56 = *&v225;
      v136 = v226;
      a1 = v269;
      v137 = v227;
      if ((v228 & 1) == 0)
      {
        goto LABEL_42;
      }
    }

    v138 = *(*&v56 + 120);
    if (v138)
    {
      swift_unknownObjectRetain();
      v139 = sub_1000E9684();
      v140 = sub_1000E9B94();
      if (os_log_type_enabled(v139, v140))
      {
        v141 = swift_slowAlloc();
        *v141 = 0;
        _os_log_impl(&_mh_execute_header, v139, v140, "reusing existing snapshot texture", v141, 2u);
      }

      v137 = 0;
LABEL_49:
      v142 = v136;
      goto LABEL_50;
    }

    v152 = sub_1000E9684();
    v153 = sub_1000E9B94();
    if (os_log_type_enabled(v152, v153))
    {
      v154 = swift_slowAlloc();
      *v154 = 0;
      _os_log_impl(&_mh_execute_header, v152, v153, "making new snapshot texture", v154, 2u);
    }

    v155 = *(*&v56 + 48);
    v54 = [v155 layer];
    objc_opt_self();
    p_name = &stru_10012CFF8.name;
    [swift_dynamicCastObjCClassUnconditional() drawableSize];
    v157 = v156;
    v56 = v156;

    if ((*&v56 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
LABEL_117:
      __break(1u);
LABEL_118:
      __break(1u);
LABEL_119:
      __break(1u);
LABEL_120:
      __break(1u);
      goto LABEL_121;
    }

    if (v157 <= -9.22337204e18)
    {
      goto LABEL_117;
    }

    v56 = *&v225;
    if (v157 >= 9.22337204e18)
    {
      goto LABEL_118;
    }

    v158 = [v155 layer];
    objc_opt_self();
    [swift_dynamicCastObjCClassUnconditional() drawableSize];
    v160 = *&v159;
    v54 = v159;

    if ((v54 & 0x7FFFFFFFFFFFFFFFLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      goto LABEL_119;
    }

    if (v160 <= -9.22337204e18)
    {
      goto LABEL_120;
    }

    if (v160 < 9.22337204e18)
    {
      break;
    }

LABEL_121:
    __break(1u);
LABEL_122:
    swift_once();
LABEL_18:
    v57 = sub_1000E96A4();
    sub_100007488(v57, qword_100131200);
    v58 = v211;
    sub_100098ECC(v224, v211);
    v59 = sub_1000E9684();
    v60 = sub_1000E9BB4();
    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      v223 = v54;
      v62 = v61;
      v220 = swift_slowAlloc();
      *&v233 = v220;
      *v62 = 136446210;
      v63 = (v58 + *(p_name + 7));
      v64 = v63[1];
      v219 = *v63;

      sub_100098F30(v58);
      v65 = p_name;
      v66 = sub_100093A3C(v219, v64, &v233);

      *(v62 + 4) = v66;
      p_name = v65;
      _os_log_impl(&_mh_execute_header, v59, v60, "solar transition to “%{public}s” finished", v62, 0xCu);
      sub_100012710(v220);
    }

    else
    {

      sub_100098F30(v58);
    }

    v209(v221, v222);
    v90 = v224;
    v91 = (v224 + *(p_name + 7));
    v36 = *v91;
    v37 = v91[1];

    sub_100098F30(v90);
    *(*&v56 + 400) = v36;
    *(*&v56 + 408) = v37;

    v38 = 0;
    v39 = 0;
    v40 = 0;
    v92 = v56;
    *(*&v92 + OBJC_IVAR____TtC22MercuryPosterExtension29WallpaperRenderingCoordinator_nextRenderShouldNotifySignificantChange) = 1;
  }

  v161 = *(*&v56 + 32);
  v162 = (*(*(*&v56 + 96) + 8))();
  v163 = v226;
  v164 = sub_10008B378(v157, v160, v161, v162, *(*&v56 + OBJC_IVAR____TtC22MercuryPosterExtension29WallpaperRenderingCoordinator_colorSpace));
  v142 = v163;
  if (v163)
  {
    sub_100004D30(&v255);
    goto LABEL_70;
  }

  v138 = v164;
  *(*&v56 + 120) = v164;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  v137 = 0;
LABEL_50:
  *&v224 = [*(*&v56 + 40) commandBuffer];
  if (!v224)
  {
    sub_100098870();
    swift_allocError();
    *v148 = 2;
    swift_willThrow();
    sub_100004D30(&v255);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    return;
  }

  v143 = *(*&v56 + 80);
  v222 = v138;
  v226 = v142;
  v227 = v137;
  if (!v143)
  {
    if ((*(*(*&v56 + 96) + 24))() != 1)
    {
      goto LABEL_86;
    }

    v165 = *(*&v56 + 72);
    if (!v165)
    {
      goto LABEL_87;
    }

    goto LABEL_80;
  }

  if (*(v143 + 32))
  {
    if (*(v143 + 32) == 1)
    {

      v144 = sub_1000E9684();
      v145 = sub_1000E9BA4();
      if (os_log_type_enabled(v144, v145))
      {
        v146 = swift_slowAlloc();
        *v146 = 0;
        v147 = "Style is mainRenderTarget but we think we should also be masking";
        goto LABEL_84;
      }

      goto LABEL_85;
    }

    goto LABEL_86;
  }

  if ((v228 & 1) == 0)
  {
    v165 = *(v143 + 24);
    if (!v165)
    {
      __break(1u);
      return;
    }

LABEL_80:
    v171 = v165;
    v170 = 1;
    goto LABEL_88;
  }

  v166 = *(*&v56 + 64);
  if (v166)
  {

    v167 = [v166 mask];
    if (v167)
    {
      v168 = v167;

      v169 = v168;
      v165 = v168;
      v170 = 1;
      goto LABEL_88;
    }
  }

  else
  {
  }

  v144 = sub_1000E9684();
  v145 = sub_1000E9BA4();
  if (os_log_type_enabled(v144, v145))
  {
    v146 = swift_slowAlloc();
    *v146 = 0;
    v147 = "🚨 couldn’t find mask layer when creating snapshot! time occlusion may be wrong";
LABEL_84:
    _os_log_impl(&_mh_execute_header, v144, v145, v147, v146, 2u);
  }

LABEL_85:

LABEL_86:
  v165 = 0;
LABEL_87:
  v170 = 255;
LABEL_88:
  ObjectType = swift_getObjectType();
  v173 = v213;
  v174 = v228;
  (*(v213 + 112))(v228 & 1, ObjectType, v213);
  v175 = v224;
  v176 = v226;
  (*(v173 + 216))(&v255, v222, v165, v170, v224, ObjectType, v173);
  if (v176)
  {
    sub_100009DBC(v165, v170);
    [v175 commit];
    sub_100098870();
    swift_allocError();
    *v177 = 2;
    swift_willThrow();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    sub_100009DBC(v165, v170);
    sub_100004D30(&v255);

    goto LABEL_90;
  }

  LODWORD(v221) = v170;
  sub_100009DBC(v165, v170);
  [v175 commit];
  v178 = v165;
  if (v174)
  {
    [v175 waitUntilCompleted];
    v179 = v225;
    v180 = v225[15];
    if (v180)
    {
      v181 = v225[11];
      v182 = v225[12];
      v183 = *(v182 + 24);
      swift_unknownObjectRetain();
      v184 = v183(v181, v182);
      v193 = sub_10008B6FC(v180, v184, *(v179 + OBJC_IVAR____TtC22MercuryPosterExtension29WallpaperRenderingCoordinator_colorSpace), 1);
      v195 = v194;
      v223 = v196;
      v228 = v179[7];
      v226 = 0;
      if (v197)
      {
        type metadata accessor for CGImage(0);
      }

      else
      {
        v198 = sub_100012904(0, &qword_100131D38);
      }

      v230 = v198;
      *&v229 = v193;
      sub_100032864(&v229, &v231);
      sub_100012800(&v231, v232);
      v199 = v193;
      v200 = sub_1000E9F64();
      sub_100012710(&v231);
      [v228 setContents:v200];
      swift_unknownObjectRelease();
      v192 = v225[8];
      if (v192)
      {
        v220 = v199;
        if (v195 == -1)
        {
          v202 = 0;
          v203 = v223;
        }

        else
        {
          if (v195)
          {
            type metadata accessor for CGImage(0);
          }

          else
          {
            v201 = sub_100012904(0, &qword_100131D38);
          }

          v230 = v201;
          v203 = v223;
          *&v229 = v223;
          sub_100032864(&v229, &v231);
          sub_100012800(&v231, v232);
          v204 = v203;
          v202 = sub_1000E9F64();
          sub_100012710(&v231);
        }

        [v192 setContents:v202];
        sub_100098720(v203, v195);
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
      }

      else
      {
        sub_100098720(v223, v195);
        swift_unknownObjectRelease();
      }

      v179 = v225;
    }

    else
    {
      v228 = v225[7];
      [v228 setContents:0];
      v192 = v179[8];
      [v192 setContents:0];
    }

    [v179[6] setHidden:1];
    [v228 setHidden:0];
    [v192 setHidden:0];
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    sub_100009DBC(v178, v221);
    sub_100004D30(&v255);
LABEL_90:
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  else
  {
    [v175 waitUntilScheduled];
    if (v227)
    {
      [v227 present];
    }

    v226 = 0;
    if (v225[15])
    {
      v185 = sub_1000E9684();
      v186 = sub_1000E9B94();
      if (os_log_type_enabled(v185, v186))
      {
        v187 = swift_slowAlloc();
        *v187 = 0;
        _os_log_impl(&_mh_execute_header, v185, v186, "discarding snapshot resources", v187, 2u);
      }
    }

    v188 = v225;
    v225[15] = 0;
    swift_unknownObjectRelease();
    v189 = v188[7];
    [v189 setContents:0];
    [v189 setHidden:1];
    [v188[6] setHidden:0];
    v190 = v188[8];
    [v190 setContents:0];
    v191 = [v190 mask];
    [v191 setContents:0];

    [v190 setHidden:1];
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    sub_100009DBC(v165, v221);
    sub_100004D30(&v255);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }
}

uint64_t sub_1000072E8(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100007334(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000E94E4();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1000073F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a6)
  {

    v6 = vars8;
  }
}

uint64_t sub_100007488(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_1000074D0(uint64_t a1, uint64_t a2, void *a3, int a4, void *a5)
{
  v152 = a3;
  v6 = v5;
  v153 = a5;
  v154 = a2;
  LODWORD(v156) = a4;
  v8 = sub_1000125FC(&unk_1001303A8);
  __chkstk_darwin(v8 - 8);
  v157 = &v147 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v151 = &v147 - v11;
  __chkstk_darwin(v12);
  v155 = &v147 - v13;
  __chkstk_darwin(v14);
  v16 = &v147 - v15;
  v17 = type metadata accessor for FluidityWallpaperRenderer.RenderingState(0);
  v159 = *(v17 - 8);
  v160 = v17;
  __chkstk_darwin(v17);
  v149 = (&v147 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v19);
  v150 = (&v147 - v20);
  __chkstk_darwin(v21);
  v148 = (&v147 - v22);
  __chkstk_darwin(v23);
  v161 = (&v147 - v24);
  if ((*(v5 + 17) & 1) == 0 && *(v5 + 1020) != (*(a1 + 12) & 1))
  {
    v25 = *(v5 + 24);
    if (v25)
    {

      v25(v26);
      sub_1000056DC(v25);
    }
  }

  v27 = *(v5 + 1184);
  v182[10] = *(v5 + 1168);
  v182[11] = v27;
  v182[12] = *(v5 + 1200);
  v183 = *(v5 + 1216);
  v28 = *(v5 + 1120);
  v182[6] = *(v5 + 1104);
  v182[7] = v28;
  v29 = *(v5 + 1152);
  v182[8] = *(v5 + 1136);
  v182[9] = v29;
  v30 = *(v5 + 1056);
  v182[2] = *(v5 + 1040);
  v182[3] = v30;
  v31 = *(v5 + 1088);
  v182[4] = *(v5 + 1072);
  v182[5] = v31;
  v32 = *(v5 + 1024);
  v182[0] = *(v5 + 1008);
  v182[1] = v32;
  v33 = *(a1 + 176);
  *(v5 + 1168) = *(a1 + 160);
  *(v5 + 1184) = v33;
  *(v5 + 1200) = *(a1 + 192);
  *(v5 + 1216) = *(a1 + 208);
  v34 = *(a1 + 112);
  *(v5 + 1104) = *(a1 + 96);
  *(v5 + 1120) = v34;
  v35 = *(a1 + 144);
  *(v5 + 1136) = *(a1 + 128);
  *(v5 + 1152) = v35;
  v36 = *(a1 + 48);
  *(v5 + 1040) = *(a1 + 32);
  *(v5 + 1056) = v36;
  v37 = *(a1 + 80);
  *(v5 + 1072) = *(a1 + 64);
  *(v5 + 1088) = v37;
  v38 = *(a1 + 16);
  *(v5 + 1008) = *a1;
  *(v5 + 1024) = v38;
  sub_100004CBC(a1, v167);
  sub_100004D30(v182);
  v39 = *(a1 + 32);
  v186 = *(a1 + 16);
  *v187 = v39;
  *&v187[13] = *(a1 + 45);
  v158 = sub_100008CB0(&v186);
  v40 = sub_100008700(v161, v158, v5, a1);
  v41 = *(v5 + 56);
  if (v40)
  {
    if (v41)
    {
      goto LABEL_13;
    }

    v42 = *(v6 + 40);
    if (v42)
    {

      v41 = v42(0xD00000000000002FLL, 0x80000001000F6B40);
      sub_1000056DC(v42);
    }

    else
    {
      v41 = 0;
    }
  }

  else if (v41)
  {

    ContinuousRenderingToken.invalidate()();

    v41 = 0;
  }

  *(v6 + 56) = v41;

LABEL_13:
  v43 = WallpaperState.rotationLandscapeAmount.getter();
  v44 = (a1 + 56);
  v184 = *(a1 + 56);
  *&v185[9] = *(a1 + 81);
  *v185 = *(a1 + 72);
  if (v185[24])
  {
    v44 = (a1 + 64);
  }

  sub_100009A40(v184, *v44, v162, v43);
  v45 = v156;
  v46 = v161;
  if (v156 != 0xFF)
  {
    if ((v156 & 1) == 0)
    {
      sub_100009D98(v152, 0);
      if (qword_10012F768 != -1)
      {
        swift_once();
      }

      v51 = sub_1000E96A4();
      sub_100007488(v51, qword_10013DE00);
      v52 = sub_1000E9684();
      v53 = sub_1000E9BA4();
      if (os_log_type_enabled(v52, v53))
      {
        v54 = swift_slowAlloc();
        *v54 = 0;
        _os_log_impl(&_mh_execute_header, v52, v53, "Floating layer resource had an unexpected texture attachment.", v54, 2u);
      }

      v50 = v152;
      goto LABEL_38;
    }

    v47 = OBJC_IVAR____TtC22MercuryPosterExtension25FluidityWallpaperRenderer_lastRenderingState;
    swift_beginAccess();
    sub_100009884(v6 + v47, v16);
    if (v159[6](v16, 1, v160) == 1)
    {
      v48 = v152;
      sub_100009DA4(v152, v45);
      sub_100009D98(v48, 1);
      v49 = v16;
      v50 = v48;
      sub_1000047C4(v49, &unk_1001303A8);
    }

    else
    {
      v55 = v148;
      sub_100009980(v16, v148);
      if (*v55 == *v46 && *(v55 + 1) == *(v46 + 1))
      {
        v56 = v55[1];
        v50 = v152;
        sub_100009DA4(v152, v45);
        sub_100009D98(v50, 1);
        sub_1000099E4(v55);
        if (v56 == v46[1])
        {
          v57 = [v50 sublayers];
          if (v57)
          {

            v58 = [v50 sublayers];
            if (!v58)
            {
              goto LABEL_35;
            }

            v59 = v58;
            sub_100012904(0, &unk_1001303D0);
            v60 = sub_1000E9A94();

            v61 = v60 >> 62 ? sub_1000E9E64() : *((v60 & 0xFFFFFFFFFFFFFF8) + 0x10);

            v50 = v152;
            if (v61)
            {
              goto LABEL_35;
            }
          }
        }
      }

      else
      {
        v50 = v152;
        sub_100009DA4(v152, v45);
        sub_100009D98(v50, 1);
        sub_1000099E4(v55);
      }
    }

    sub_100016414(v50, v46);
LABEL_35:
    [v50 setHidden:0];
    v62 = -sub_100009DE0();
    if (*(v6 + 1224) != v62)
    {
      *(v6 + 1224) = v62;
      v63 = WallpaperState.rotationLandscapeAmount.getter();
      sub_1000171A0(v50, v63);
    }

    sub_100009DBC(v50, v45);
LABEL_38:
    sub_100009DBC(v50, v45);
  }

  v64 = OBJC_IVAR____TtC22MercuryPosterExtension25FluidityWallpaperRenderer_lastRenderingState;
  swift_beginAccess();
  v65 = v155;
  sub_100009884(v6 + v64, v155);
  v156 = v159[6];
  if (v156(v65, 1, v160) == 1)
  {
    sub_1000047C4(v65, &unk_1001303A8);
  }

  else
  {
    v66 = v65;
    v67 = v150;
    sub_100009980(v66, v150);
    if (*v67 == *v46 && *(v67 + 1) == *(v46 + 1))
    {
      v68 = v67[1];
      sub_1000099E4(v67);
      if (v68 == v46[1])
      {
        goto LABEL_47;
      }
    }

    else
    {
      sub_1000099E4(v67);
    }
  }

  sub_100017848(v46);
LABEL_47:
  v69 = v162[4];
  *(v6 + 144) = v162[3];
  *(v6 + 160) = v69;
  *(v6 + 208) = v163;
  v70 = v162[6];
  *(v6 + 176) = v162[5];
  *(v6 + 192) = v70;
  *(v6 + 104) = v164;
  v71 = *&v165;
  *(v6 + 120) = v165;
  sub_100009F2C(a1, v6, v71);
  v73 = v72;
  *(v6 + 96) = 1.0 - v72;
  v74 = (v6 + 96);
  LODWORD(v75) = *a1;
  [*(v6 + 504) _solveForInput:v75];
  v77 = sub_10000A3EC(v73, v76);
  *(v6 + 76) = v78;
  *(v6 + 80) = v79;
  *(v6 + 84) = LODWORD(v77);
  *(v6 + 88) = v80;
  if (qword_10012F518 != -1)
  {
    swift_once();
  }

  if (byte_10012FDB0 == 1)
  {
    v81 = *(a1 + 112) + -0.18419;
    *(v6 + 64) = v81;
  }

  sub_10000A008(v6, v166, v43);
  v82 = sub_100009DE0();
  v83 = fmodf(6.2832 - v82, 6.2832);
  *(v6 + 68) = v83;
  *(v6 + 100) = v83;
  v84 = v161;
  v85 = *v161;
  *(v6 + 136) = v85;
  v86 = *(v84 + 1);
  *(v6 + 138) = v86;
  v87 = v84[1];
  *(v6 + 140) = v87;
  if (v158 && v87 == 1.0)
  {
    v88 = v151;
    sub_100009884(v6 + v64, v151);
    if (v156(v88, 1, v160) == 1)
    {
      sub_1000047C4(v88, &unk_1001303A8);
    }

    else
    {
      v89 = v149;
      sub_100009980(v88, v149);
      if (*v89 == v85 && *(v89 + 1) == v86)
      {
        v90 = v89[1];
        sub_1000099E4(v89);
        if (v90 == 1.0)
        {
          goto LABEL_62;
        }
      }

      else
      {
        sub_1000099E4(v89);
      }
    }

    if ((*(a1 + 14) & 1) == 0 && (*(a1 + 13) & 1) == 0)
    {
      sub_100018950(v85);
    }
  }

LABEL_62:
  v91 = v157;
  sub_10000A454(v161, v157);
  (v159[7])(v91, 0, 1, v160);
  swift_beginAccess();
  sub_10000A548(v91, v6 + v64);
  swift_endAccess();
  v92 = [objc_allocWithZone(MTLRenderPassDescriptor) init];
  v93 = [v92 colorAttachments];
  v94 = [v93 objectAtIndexedSubscript:0];

  if (!v94)
  {
    __break(1u);
    goto LABEL_84;
  }

  [v94 setTexture:v154];

  v95 = [v92 colorAttachments];
  v96 = [v95 objectAtIndexedSubscript:0];

  if (!v96)
  {
LABEL_84:
    __break(1u);
    goto LABEL_85;
  }

  [v96 setLoadAction:2];

  v97 = [v92 colorAttachments];
  v98 = [v97 objectAtIndexedSubscript:0];

  if (!v98)
  {
LABEL_85:
    __break(1u);
    goto LABEL_86;
  }

  [v98 setClearColor:{0.0, 0.0, 0.0, 1.0}];

  v99 = [v92 colorAttachments];
  v100 = [v99 objectAtIndexedSubscript:0];

  if (!v100)
  {
LABEL_86:
    __break(1u);
    goto LABEL_87;
  }

  [v100 setStoreAction:1];

  v101 = [v92 colorAttachments];
  v102 = [v101 objectAtIndexedSubscript:1];

  if (!v102)
  {
LABEL_87:
    __break(1u);
    goto LABEL_88;
  }

  v103 = *(v6 + 392);
  swift_unknownObjectRetain();
  [v102 setTexture:v103];
  swift_unknownObjectRelease();

  v104 = [v92 colorAttachments];
  v105 = [v104 objectAtIndexedSubscript:1];

  if (!v105)
  {
LABEL_88:
    __break(1u);
    goto LABEL_89;
  }

  [v105 setLoadAction:2];

  v106 = [v92 colorAttachments];
  v107 = [v106 objectAtIndexedSubscript:1];

  if (!v107)
  {
LABEL_89:
    __break(1u);
LABEL_90:
    __break(1u);
  }

  [v107 setClearColor:{0.0, 0.0, 0.0, 1.0}];

  v108 = [v92 colorAttachments];
  v109 = [v108 objectAtIndexedSubscript:1];

  if (!v109)
  {
    goto LABEL_90;
  }

  [v109 setStoreAction:0];

  v110 = [v153 renderCommandEncoderWithDescriptor:v92];
  if (v110)
  {
    v111 = v110;
    v159 = v92;
    v112 = *(v6 + 448);
    v113 = *(v6 + 464);
    v114 = *(v6 + 480);
    v167[0] = *(v6 + 432);
    v167[1] = v112;
    v168 = v113;
    v169 = v114;
    [v110 setVertexBytes:v167 length:64 atIndex:1];
    v115 = v166[0];
    v116 = v166[1];
    v160 = v166[2];
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    v157 = v116;
    [v111 setVertexBuffer:v116 offset:0 atIndex:0];
    *(v6 + 72) = 1;
    *&v167[0] = *(v6 + 64);
    BYTE8(v167[0]) = 1;
    *(v167 + 12) = *(v6 + 76);
    [v111 setVertexBytes:v167 length:28 atIndex:2];
    v117 = *(v6 + 72);
    *&v167[0] = *(v6 + 64);
    BYTE8(v167[0]) = v117;
    *(v167 + 12) = *(v6 + 76);
    [v111 setFragmentBytes:v167 length:28 atIndex:0];
    [v111 setRenderPipelineState:*(v6 + 368)];
    v118 = v160;
    v160 = v115;
    [v111 drawIndexedPrimitives:3 indexCount:v118 indexType:1 indexBuffer:v115 indexBufferOffset:0];
    v119 = v166[4];
    v120 = v166[6];
    v121 = v166[5];
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    [v111 setVertexBuffer:v121 offset:0 atIndex:0];
    *(v6 + 72) = 0;
    *&v167[0] = *(v6 + 64);
    BYTE8(v167[0]) = 0;
    *(v167 + 12) = *(v6 + 76);
    [v111 setVertexBytes:v167 length:28 atIndex:2];
    v122 = *(v6 + 72);
    *&v167[0] = *(v6 + 64);
    BYTE8(v167[0]) = v122;
    *(v167 + 12) = *(v6 + 76);
    [v111 setFragmentBytes:v167 length:28 atIndex:0];
    [v111 drawIndexedPrimitives:3 indexCount:v120 indexType:1 indexBuffer:v119 indexBufferOffset:0];
    v123 = *(v6 + 304);
    v178 = *(v6 + 288);
    v179 = v123;
    v124 = *(v6 + 336);
    v180 = *(v6 + 320);
    v181 = v124;
    v125 = *(v6 + 240);
    v174 = *(v6 + 224);
    v175 = v125;
    v126 = *(v6 + 272);
    v176 = *(v6 + 256);
    v177 = v126;
    v127 = *(v6 + 176);
    v170 = *(v6 + 160);
    v171 = v127;
    v128 = *(v6 + 208);
    v172 = *(v6 + 192);
    v173 = v128;
    v129 = *(v6 + 112);
    v167[0] = *v74;
    v167[1] = v129;
    v130 = *(v6 + 144);
    v168 = *(v6 + 128);
    v169 = v130;
    [v111 setVertexBytes:v167 length:256 atIndex:0];
    v131 = *(v6 + 304);
    v178 = *(v6 + 288);
    v179 = v131;
    v132 = *(v6 + 336);
    v180 = *(v6 + 320);
    v181 = v132;
    v133 = *(v6 + 240);
    v174 = *(v6 + 224);
    v175 = v133;
    v134 = *(v6 + 272);
    v176 = *(v6 + 256);
    v177 = v134;
    v135 = *(v6 + 176);
    v170 = *(v6 + 160);
    v171 = v135;
    v136 = *(v6 + 208);
    v172 = *(v6 + 192);
    v173 = v136;
    v137 = *(v6 + 112);
    v167[0] = *v74;
    v167[1] = v137;
    v138 = *(v6 + 144);
    v168 = *(v6 + 128);
    v169 = v138;
    [v111 setFragmentBytes:v167 length:256 atIndex:0];
    [v111 setFragmentTexture:*(v6 + 400) atIndex:0];
    if (v158 && *(v6 + 140) < 1.0)
    {
      v139 = 384;
    }

    else
    {
      v139 = 376;
    }

    v140 = v161;
    v92 = v159;
    [v111 setRenderPipelineState:*(v6 + v139)];
    [v111 drawPrimitives:3 vertexStart:0 vertexCount:6];
    [v111 endEncoding];
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  else
  {
    v140 = v161;
    if (qword_10012F768 != -1)
    {
      swift_once();
    }

    v141 = sub_1000E96A4();
    sub_100007488(v141, qword_10013DE00);
    v142 = sub_1000E9684();
    v143 = sub_1000E9BA4();
    if (os_log_type_enabled(v142, v143))
    {
      v144 = swift_slowAlloc();
      *v144 = 0;
      _os_log_impl(&_mh_execute_header, v142, v143, "Unable to make render encoder", v144, 2u);
    }

    sub_100018380();
    swift_allocError();
    *v145 = 1;
    swift_willThrow();
  }

  sub_10000A5B8(v166);
  return sub_1000099E4(v140);
}

BOOL sub_100008700(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v58 = a3;
  v60 = a1;
  v6 = sub_1000E94E4();
  v55 = *(v6 - 8);
  v56 = v6;
  __chkstk_darwin(v6);
  v54 = &v51[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_1000125FC(&unk_1001303A8);
  __chkstk_darwin(v8 - 8);
  v10 = &v51[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v11);
  v13 = &v51[-v12];
  __chkstk_darwin(v14);
  v16 = &v51[-v15];
  v17 = type metadata accessor for FluidityWallpaperRenderer.RenderingState(0);
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v51[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v21);
  v23 = &v51[-v22];
  __chkstk_darwin(v24);
  v26 = &v51[-v25];
  *&v51[-v25] = 0;
  v53 = *(v27 + 28);
  sub_1000E94D4();
  v59 = *(v17 + 32);
  *&v26[v59] = 0;
  if (a2)
  {
    v57 = a4;
    v28 = v58;
    if (*(v58 + 17) == 1)
    {
      v29 = OBJC_IVAR____TtC22MercuryPosterExtension25FluidityWallpaperRenderer_lastRenderingState;
      swift_beginAccess();
      sub_100009884(v28 + v29, v16);
      if ((*(v18 + 48))(v16, 1, v17) == 1)
      {
        sub_1000047C4(v16, &unk_1001303A8);
        a4 = v57;
        if (qword_10012F530 != -1)
        {
          swift_once();
        }

        v30 = word_10012FDBA;
      }

      else
      {
        sub_100009980(v16, v23);
        v42 = *v23;
        sub_1000099E4(v23);
        v30 = v42;
        a4 = v57;
      }

      goto LABEL_8;
    }

    v52 = sub_100008DC8(v57, v58);
    v34 = OBJC_IVAR____TtC22MercuryPosterExtension25FluidityWallpaperRenderer_lastRenderingState;
    swift_beginAccess();
    sub_100009884(v28 + v34, v13);
    v35 = *(v18 + 48);
    v36 = v35(v13, 1, v17);
    sub_1000047C4(v13, &unk_1001303A8);
    if (v36 == 1)
    {
      v37 = v52;
      *v26 = v52;
      v38 = sub_1000185B0();
      v39 = v55;
      v40 = (v55 + 40);
      if ((v38 & 0x10000) != 0)
      {
        *(v26 + 1) = v37;
        *(v26 + 1) = 1065353216;
        v44 = v54;
        sub_1000E94B4();
        (*v40)(&v26[v53], v44, v56);
        a4 = v57;
LABEL_24:
        v32 = (*(a4 + 14) & 1) != 0 || (*(a4 + 13) & 1) != 0;
        goto LABEL_9;
      }

      *(v26 + 1) = v38;
      v41 = v54;
      sub_1000E94B4();
    }

    else
    {
      v43 = v52;
      sub_100009884(v28 + v34, v10);
      if (v35(v10, 1, v17) == 1)
      {
        sub_1000047C4(v10, &unk_1001303A8);
        v32 = 0;
        goto LABEL_10;
      }

      sub_100009980(v10, v20);
      v45 = *v20;
      if (v45 == v43)
      {
        *v26 = v43;
        *(v26 + 1) = *(v20 + 1);
        v46 = v20[1];
        *(v26 + 1) = v46;
        v39 = v55;
        v47 = v56;
        (*(v55 + 40))(&v26[v53], v20 + *(v17 + 28), v56);
        a4 = v57;
        v41 = v54;
        if (v46 >= 1.0)
        {
          goto LABEL_24;
        }

        goto LABEL_23;
      }

      *(v26 + 1) = v45;
      *v26 = v43;
      v41 = v54;
      sub_1000E94B4();
      sub_1000099E4(v20);
      v39 = v55;
      v40 = (v55 + 40);
    }

    v47 = v56;
    a4 = v57;
    (*v40)(&v26[v53], v41, v56);
LABEL_23:
    sub_1000E94B4();
    sub_1000E9454();
    v49 = v48;
    (*(v39 + 8))(v41, v47);
    v50 = fmin(v49, 1.0);
    *(v26 + 1) = v50;
    goto LABEL_24;
  }

  v31 = *(a4 + 32);
  v61 = *(a4 + 16);
  v62[0] = v31;
  *(v62 + 13) = *(a4 + 45);
  v30 = sub_1000183D4(&v61, *(a4 + 12));
LABEL_8:
  v32 = 0;
  *v26 = v30;
  *(v26 + 1) = v30;
  *(v26 + 1) = 1065353216;
LABEL_9:
  *&v26[v59] = *(a4 + 4);
LABEL_10:
  sub_100009980(v26, v60);
  return v32;
}

BOOL sub_100008CB0(uint64_t a1)
{
  if (*(a1 + 36))
  {
    return 0;
  }

  v3 = *a1;
  v2 = *(a1 + 8);
  if (*a1)
  {
    v4 = 0;
  }

  else
  {
    v4 = v2 == 0xE000000000000000;
  }

  if (!v4 && (sub_1000E9F74() & 1) == 0)
  {

    v5 = sub_1000838E8(v3, v2);
    if (v5 > 2)
    {
      if (v5 != 3 && v5 != 4)
      {
        return 0;
      }

      goto LABEL_15;
    }

    if (v5)
    {
LABEL_15:
      v6 = sub_1000E9F74();

      return (v6 & 1) != 0;
    }
  }

  return 1;
}

uint64_t sub_100008DC8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000E94E4();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000125FC(&unk_1001303A8);
  __chkstk_darwin(v8 - 8);
  v10 = &v22 - v9;
  v11 = type metadata accessor for FluidityWallpaperRenderer.RenderingState(0);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = (&v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  if ((*(a1 + 14) & 1) == 0 && (*(a1 + 13) & 1) == 0)
  {
    return sub_1000090D8(a1);
  }

  v15 = OBJC_IVAR____TtC22MercuryPosterExtension25FluidityWallpaperRenderer_lastRenderingState;
  swift_beginAccess();
  sub_100009884(a2 + v15, v10);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_1000047C4(v10, &unk_1001303A8);
    if (qword_10012F530 != -1)
    {
      swift_once();
    }

    return word_10012FDBA;
  }

  else
  {
    sub_100009980(v10, v14);
    sub_1000E94B4();
    sub_1000E9454();
    v18 = v17;
    (*(v5 + 8))(v7, v4);
    v16 = *v14;
    if (v18 <= 2.0)
    {
      sub_1000099E4(v14);
    }

    else
    {
      if (qword_10012F518 != -1)
      {
        swift_once();
      }

      v19 = byte_10012FDB0;
      sub_1000099E4(v14);
      v20 = v16 + 1;
      if (v19 == 1)
      {
        if (v16 >= 7)
        {
          return 0;
        }

        else
        {
          return v20;
        }
      }

      else if (v16 >= 15)
      {
        return 8;
      }

      else
      {
        return v20;
      }
    }
  }

  return v16;
}

uint64_t sub_1000090D8(uint64_t a1)
{
  v2 = v1;
  v29 = a1;
  v3 = sub_1000125FC(&unk_1001303A8);
  __chkstk_darwin(v3 - 8);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v28 - v7;
  v9 = type metadata accessor for FluidityWallpaperRenderer.RenderingState(0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = (&v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v13);
  v15 = (&v28 - v14);
  __chkstk_darwin(v16);
  v18 = (&v28 - v17);
  if (qword_10012F538 != -1)
  {
    swift_once();
  }

  v19 = sub_100009580();

  if (v19 != 8)
  {
LABEL_10:
    if (qword_10012F528 != -1)
    {
      swift_once();
    }

    v8 = (v19 + word_10012FDB8);
    if ((v19 + word_10012FDB8) != v8)
    {
      __break(1u);
      goto LABEL_14;
    }

    goto LABEL_15;
  }

  v20 = OBJC_IVAR____TtC22MercuryPosterExtension25FluidityWallpaperRenderer_lastRenderingState;
  swift_beginAccess();
  sub_100009884(v1 + v20, v8);
  if ((*(v10 + 48))(v8, 1, v9) != 1)
  {
LABEL_14:
    sub_100009980(v8, v18);
    v8 = *v18;
    sub_1000099E4(v18);
    goto LABEL_15;
  }

  sub_1000047C4(v8, &unk_1001303A8);
  v8 = sub_1000185B0();
  if ((v8 & 0x10000) != 0)
  {
    v19 = sub_100027720();
    if (qword_10012F528 != -1)
    {
      swift_once();
    }

    v8 = (v19 + word_10012FDB8);
    if (v8 != (v19 + word_10012FDB8))
    {
      __break(1u);
      goto LABEL_10;
    }
  }

LABEL_15:
  v21 = OBJC_IVAR____TtC22MercuryPosterExtension25FluidityWallpaperRenderer_lastRenderingState;
  swift_beginAccess();
  sub_100009884(v2 + v21, v5);
  if ((*(v10 + 48))(v5, 1, v9) == 1)
  {
    sub_1000047C4(v5, &unk_1001303A8);
  }

  else
  {
    sub_100009980(v5, v15);
    if (v15[1] >= 1.0 && *(v15 + *(v9 + 32)) == 1.0 && *(v29 + 4) != 1.0)
    {
      if (*v15 != v8)
      {
        if (qword_10012F768 != -1)
        {
          swift_once();
        }

        v23 = sub_1000E96A4();
        sub_100007488(v23, qword_10013DE00);
        sub_10000A454(v15, v12);
        v24 = sub_1000E9684();
        v25 = sub_1000E9BB4();
        if (os_log_type_enabled(v24, v25))
        {
          v26 = swift_slowAlloc();
          *v26 = 33686016;
          v27 = *v12;
          sub_1000099E4(v12);
          *(v26 + 4) = v27;
          *(v26 + 6) = 514;
          *(v26 + 8) = v8;
          _os_log_impl(&_mh_execute_header, v24, v25, "Waking up at %{public}hd, and the sun says we should be at %{public}hd.", v26, 0xAu);
        }

        else
        {
          sub_1000099E4(v12);
        }
      }
    }

    else
    {
      v8 = *v15;
    }

    sub_1000099E4(v15);
  }

  return v8;
}

uint64_t sub_100009580()
{
  v1 = v0;
  v2 = sub_1000E94E4();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v27 - v7;
  v9 = *(v1 + 48);
  if (v9)
  {
    v10 = v9;
    sub_1000E94B4();
    v11 = [v10 timestamp];
    sub_1000E94A4();

    sub_1000E9454();
    v13 = v12;
    v14 = *(v3 + 8);
    v14(v5, v2);
    v14(v8, v2);
    if (v13 > 1800.0)
    {
      if (qword_10012F758 != -1)
      {
        swift_once();
      }

      v15 = sub_1000E96A4();
      sub_100007488(v15, qword_10013DDD0);
      v16 = sub_1000E9684();
      v17 = sub_1000E9BB4();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        *v18 = 0;
        _os_log_impl(&_mh_execute_header, v16, v17, "We haven't checked location in a while. Try to update.", v18, 2u);
      }

      sub_1000262E0();
    }

    [v10 coordinate];
    v21 = sub_10000A950(v19, v20);

    result = v21;
    *(v1 + 40) = v21;
  }

  else
  {
    if (qword_10012F758 != -1)
    {
      swift_once();
    }

    v23 = sub_1000E96A4();
    sub_100007488(v23, qword_10013DDD0);
    v24 = sub_1000E9684();
    v25 = sub_1000E9BB4();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&_mh_execute_header, v24, v25, "We don't have a location.", v26, 2u);
    }

    return 8;
  }

  return result;
}

uint64_t sub_100009884(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000125FC(&unk_1001303A8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100009908(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 28);
  v6 = sub_1000E94E4();
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_100009980(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FluidityWallpaperRenderer.RenderingState(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000099E4(uint64_t a1)
{
  v2 = type metadata accessor for FluidityWallpaperRenderer.RenderingState(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_100009A40(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, float a4@<S0>)
{
  v9 = [objc_opt_self() currentDevice];
  v10 = [v9 userInterfaceIdiom];

  if (v10 == 1)
  {
    if (a4 == 0.0)
    {
      v11 = *(v4 + 764);
      v44 = *(v4 + 748);
      v45 = v11;
      v46[0] = *(v4 + 780);
      *(v46 + 12) = *(v4 + 792);
      v12 = *(v4 + 700);
      v40 = *(v4 + 684);
      v41 = v12;
      v13 = *(v4 + 732);
      v42 = *(v4 + 716);
      v43 = v13;
      v14 = *(v4 + 808);
      v15 = *(v4 + 816);
      v16 = *(v4 + 820);
      v17 = *(v4 + 824);
      v18 = *(v4 + 832);
      v19 = *(v4 + 836);
      if (a2 == 1)
      {
        goto LABEL_13;
      }

      goto LABEL_8;
    }

    if (a4 == 1.0)
    {
      v23 = *(v4 + 920);
      v44 = *(v4 + 904);
      v45 = v23;
      v46[0] = *(v4 + 936);
      *(v46 + 12) = *(v4 + 948);
      v24 = *(v4 + 856);
      v40 = *(v4 + 840);
      v41 = v24;
      v25 = *(v4 + 888);
      v42 = *(v4 + 872);
      v43 = v25;
      v14 = *(v4 + 964);
      v15 = *(v4 + 972);
      v16 = *(v4 + 976);
      v17 = *(v4 + 980);
      v18 = *(v4 + 988);
      v19 = *(v4 + 992);
      if (a2 == 4)
      {
LABEL_8:
        v14 = vneg_f32(v14);
        v16 = v16 + 3.1416;
        v17 = vneg_f32(v17);
        v19 = v19 + 3.1416;
      }
    }

    else
    {
      sub_100017D9C(a1, v4, v30);
      sub_100017D9C(a2, v4, v31);
      if ((a1 - 3) <= 1 && sub_100019154(a2))
      {
        a4 = 1.0 - a4;
      }

      *&v26 = a4;
      sub_10001EA54(v30, v31, v32, v26);
      v44 = v32[4];
      v45 = v32[5];
      v46[0] = *v33;
      *(v46 + 12) = *&v33[12];
      v40 = v32[0];
      v41 = v32[1];
      v42 = v32[2];
      v43 = v32[3];
      v14 = v34;
      v15 = v35;
      v16 = v36;
      v17 = v37;
      v18 = v38;
      v19 = v39;
    }
  }

  else
  {
    v20 = *(v4 + 608);
    v44 = *(v4 + 592);
    v45 = v20;
    v46[0] = *(v4 + 624);
    v21 = *(v4 + 544);
    v40 = *(v4 + 528);
    v41 = v21;
    v22 = *(v4 + 576);
    v42 = *(v4 + 560);
    v43 = v22;
    *(v46 + 12) = *(v4 + 636);
    v14 = *(v4 + 652);
    v15 = *(v4 + 660);
    v16 = *(v4 + 664);
    v17 = *(v4 + 668);
    v18 = *(v4 + 676);
    v19 = *(v4 + 680);
  }

LABEL_13:
  v27 = v45;
  *(a3 + 64) = v44;
  *(a3 + 80) = v27;
  *(a3 + 96) = v46[0];
  *(a3 + 108) = *(v46 + 12);
  v28 = v41;
  *a3 = v40;
  *(a3 + 16) = v28;
  v29 = v43;
  *(a3 + 32) = v42;
  *(a3 + 48) = v29;
  *(a3 + 124) = v14;
  *(a3 + 132) = v15;
  *(a3 + 136) = v16;
  *(a3 + 140) = v17;
  *(a3 + 148) = v18;
  *(a3 + 152) = v19;
}

float WallpaperState.rotationLandscapeAmount.getter()
{
  v3 = *(v0 + 56);
  v2 = v0 + 56;
  v1 = v3;
  if (*(v2 + 40))
  {
    v4 = *(v2 + 8);
    if (v1 == 4)
    {
      result = 1.0;
      if (v4 == 3)
      {
        return result;
      }

LABEL_14:
      v6 = sub_100009DE0() / 3.1416;
      v7 = floorf(v6);
      return vabds_f32(1.0, fabsf(((v6 - v7) + (v6 - v7)) + -1.0));
    }

    if (v4 == 4)
    {
      if (v1 != 3)
      {
        goto LABEL_14;
      }
    }

    else if (v1 == v4 || (v1 == 3) != (v4 == 3))
    {
      goto LABEL_14;
    }
  }

  else
  {
    result = 1.0;
    if (v1 == 4)
    {
      return result;
    }
  }

  result = 0.0;
  if (v1 == 3)
  {
    return 1.0;
  }

  return result;
}

id sub_100009D98(id a1, char a2)
{
  if (a2)
  {
    return a1;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

id sub_100009DA4(id result, char a2)
{
  if (a2 != -1)
  {
    return sub_100009D98(result, a2 & 1);
  }

  return result;
}

void sub_100009DBC(void *a1, char a2)
{
  if (a2 != -1)
  {
    sub_100009DD4(a1, a2 & 1);
  }
}

void sub_100009DD4(id a1, char a2)
{
  if (a2)
  {
  }

  else
  {
    swift_unknownObjectRelease();
  }
}

float sub_100009DE0()
{
  v1 = *v0 - 2;
  if (*(v0 + 40))
  {
    v2 = *(v0 + 8);
    v3 = 0.0;
    v4 = 0.0;
    if (v1 <= 2)
    {
      v4 = flt_1000EDA24[v1];
    }

    if ((v2 - 2) <= 2)
    {
      v3 = flt_1000EDA24[v2 - 2];
    }

    v7 = *(v0 + 16);
    v5 = *(v0 + 24);
    v6 = *(v0 + 32);
    v8 = (CFAbsoluteTimeGetCurrent() - v5) / v6;
    *&v8 = v8;
    if (*&v8 < 1.0)
    {
      if (*&v8 > 1.0)
      {
        *&v8 = 1.0;
      }

      [v7 _solveForInput:v8];
      v10 = fabsf(vabds_f32(v3, v4) + -3.1416);
      v11 = (v3 - v4) + 6.2832;
      if ((v3 - v4) >= -3.1416)
      {
        v11 = v3 - v4;
      }

      if ((v3 - v4) <= 3.1416)
      {
        v12 = v11;
      }

      else
      {
        v12 = (v3 - v4) + -6.2832;
      }

      if (v10 < 0.1)
      {
        v12 = -3.1416;
      }

      return v4 + (v9 * v12);
    }
  }

  else
  {
    v3 = 0.0;
    if (v1 < 3)
    {
      return flt_1000EDA24[v1];
    }
  }

  return v3;
}

id sub_100009F2C(uint64_t a1, uint64_t a2, double a3)
{
  if (qword_10012F518 != -1)
  {
    swift_once();
  }

  if ((byte_10012FDB0 & 1) != 0 || WallpaperState.rotationLandscapeAmount.getter() != 1.0)
  {
    v7 = *(a2 + 496);
    *&a3 = 1.0 - *(a1 + 4);
  }

  else
  {
    v5 = (*(a1 + 4) + -0.3) / 0.7;
    v6 = 1.0 - (fminf(v5, 1.0) + 0.0);
    v7 = *(a2 + 496);
    if (v5 < 0.0)
    {
      *&a3 = 1.0;
    }

    else
    {
      *&a3 = v6;
    }
  }

  return [v7 _solveForInput:a3];
}

void sub_10000A008(uint64_t a1@<X0>, uint64_t a2@<X8>, float a3@<S0>)
{
  v6 = (a1 + 512);
  swift_beginAccess();
  v7 = *(a1 + 512);
  v8 = *(v7 + 16);
  v9 = *(a1 + 520);
  if (v8 == v9)
  {
    sub_1000173A8(&v56, a3);
    swift_beginAccess();
    v10 = *(a1 + 512);
    sub_10000A41C(&v56, &v51);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(a1 + 512) = v10;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v10 = sub_1000A38C4(0, *(v10 + 2) + 1, 1, v10);
      *v6 = v10;
    }

    v13 = *(v10 + 2);
    v12 = *(v10 + 3);
    if (v13 >= v12 >> 1)
    {
      v10 = sub_1000A38C4((v12 > 1), v13 + 1, 1, v10);
    }

    *(v10 + 2) = v13 + 1;
    v14 = &v10[72 * v13];
    *(v14 + 2) = v56;
    v15 = v57;
    v16 = v58;
    v17 = v59;
    *(v14 + 24) = v60;
    *(v14 + 4) = v16;
    *(v14 + 5) = v17;
    *(v14 + 3) = v15;
    *v6 = v10;
    swift_endAccess();
    goto LABEL_21;
  }

  if (v9 >= v8)
  {
    if (qword_10012F768 == -1)
    {
LABEL_12:
      v28 = sub_1000E96A4();
      sub_100007488(v28, qword_10013DE00);

      v29 = sub_1000E9684();
      v30 = sub_1000E9BA4();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        *v31 = 134218240;
        *(v31 + 4) = *(*(a1 + 512) + 16);
        *(v31 + 12) = 2048;
        *(v31 + 14) = *(a1 + 520);

        _os_log_impl(&_mh_execute_header, v29, v30, "Mesh indicies are out of sync. We have %ld meshes, but are looking for index %ld", v31, 0x16u);
      }

      else
      {
      }

      sub_1000173A8(&v56, 0.0);
      goto LABEL_21;
    }

LABEL_24:
    swift_once();
    goto LABEL_12;
  }

  if (v9 < 0)
  {
    __break(1u);
    goto LABEL_24;
  }

  v18 = v7 + 72 * v9;
  v19 = *(v18 + 48);
  v20 = *(v18 + 64);
  v21 = *(v18 + 80);
  v55 = *(v18 + 96);
  v22 = *(v18 + 32);
  v53 = v20;
  v54 = v21;
  v51 = v22;
  v52 = v19;
  v23 = v55;
  if (v55 == a3)
  {
    v47 = v54;
    v48 = v53;
    v45 = v52;
    v46 = v51;
    sub_10000A41C(&v51, &v56);
    v25 = v45;
    v24 = v46;
    v27 = v47;
    v26 = v48;
LABEL_22:
    *a2 = v24;
    *(a2 + 16) = v25;
    *(a2 + 32) = v26;
    *(a2 + 48) = v27;
    *(a2 + 64) = v23;
    return;
  }

  sub_10000A41C(&v51, &v56);
  sub_1000173A8(&v56, a3);
  v32 = *(a1 + 520);
  swift_beginAccess();
  v33 = *(a1 + 512);
  sub_10000A41C(&v56, v49);
  v34 = swift_isUniquelyReferenced_nonNull_native();
  *(a1 + 512) = v33;
  if (v34)
  {
    if ((v32 & 0x8000000000000000) == 0)
    {
      goto LABEL_18;
    }

LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v33 = sub_10002F5FC(v33);
  *v6 = v33;
  if ((v32 & 0x8000000000000000) != 0)
  {
    goto LABEL_26;
  }

LABEL_18:
  if (v32 >= *(v33 + 2))
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v35 = &v33[72 * v32];
  v49[0] = *(v35 + 2);
  v36 = *(v35 + 3);
  v37 = *(v35 + 4);
  v38 = *(v35 + 5);
  v50 = *(v35 + 24);
  v49[2] = v37;
  v49[3] = v38;
  v49[1] = v36;
  v40 = v58;
  v39 = v59;
  v41 = v57;
  *(v35 + 24) = v60;
  *(v35 + 4) = v40;
  *(v35 + 5) = v39;
  *(v35 + 3) = v41;
  *(v35 + 2) = v56;
  *(a1 + 512) = v33;
  swift_endAccess();
  sub_10000A5B8(v49);
  sub_10000A5B8(&v51);
  v42 = *(a1 + 520);
  v43 = __OFADD__(v42, 1);
  v44 = v42 + 1;
  if (!v43)
  {
    *(a1 + 520) = v44 % 3;
LABEL_21:
    v23 = v60;
    v26 = v58;
    v27 = v59;
    v24 = v56;
    v25 = v57;
    goto LABEL_22;
  }

LABEL_28:
  __break(1u);
}

uint64_t sub_10000A454(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FluidityWallpaperRenderer.RenderingState(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000A4CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 28);
  v7 = sub_1000E94E4();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t sub_10000A548(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000125FC(&unk_1001303A8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_10000A5E8(uint64_t a1, double a2, double a3)
{
  v6 = sub_1000E94E4();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  _MTLPackedFloat3.init(_:_:_:)(*&a2, *&a3, v10);
  v12 = v11;
  v14 = v13;
  v15 = objc_allocWithZone(GEOHorizontalCelestialBodyData);
  isa = sub_1000E9474().super.isa;
  v17 = [v15 initWithLocation:isa date:0 body:{v12, v14}];

  if (v17)
  {
    [v17 altitude];
  }

  else
  {
    if (qword_10012F758 != -1)
    {
      swift_once();
    }

    v18 = sub_1000E96A4();
    sub_100007488(v18, qword_10013DDD0);
    (*(v7 + 16))(v9, a1, v6);
    v19 = sub_1000E9684();
    v20 = sub_1000E9BA4();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      *v21 = 141558531;
      *(v21 + 4) = 1752392040;
      *(v21 + 12) = 2081;
      *&v29[1] = a2;
      *&v29[2] = a3;
      type metadata accessor for CLLocationCoordinate2D(0);
      v22 = sub_1000E9944();
      v24 = sub_100093A3C(v22, v23, &v30);

      *(v21 + 14) = v24;
      *(v21 + 22) = 2082;
      sub_1000299A4(&qword_100130A58, &type metadata accessor for Date);
      v25 = sub_1000E9F54();
      v27 = v26;
      (*(v7 + 8))(v9, v6);
      v28 = sub_100093A3C(v25, v27, &v30);

      *(v21 + 24) = v28;
      _os_log_impl(&_mh_execute_header, v19, v20, "Failed to get elevationDegrees for location:%{private,mask.hash}s, date: %{public}s", v21, 0x20u);
      swift_arrayDestroy();
    }

    else
    {

      (*(v7 + 8))(v9, v6);
    }
  }
}

uint64_t sub_10000A950(double a1, double a2)
{
  v4 = sub_1000E94E4();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v23 - v9;
  sub_1000E94B4();
  sub_10000A5E8(v10, a1, a2);
  v12 = v11;
  sub_1000E9424();
  v14 = v13;
  _MTLPackedFloat3.init(_:_:_:)(*&a1, *&a2, v15);
  v18 = [objc_allocWithZone(GEOSolarEventCalculator) initWithLocation:v16 time:v17 altitudeInDegrees:v14 accuracy:{GEOAlmanacAltitudeSunset, 60.0}];
  [v18 nextEventOfType:16];
  sub_1000E9414();
  sub_1000E9454();
  v25 = 0;
  v23 = 0u;
  v24 = 0u;
  v20 = sub_10000AB5C(v19 < 43200.0, &v23, v12);

  if (*(&v24 + 1))
  {
    sub_100012710(&v23);
  }

  v21 = *(v5 + 8);
  v21(v7, v4);
  v21(v10, v4);
  if (v20 == 8)
  {
    return 3;
  }

  else
  {
    return v20;
  }
}

uint64_t sub_10000AB5C(char a1, uint64_t a2, float a3)
{
  *&v44 = &_swiftEmptyArrayStorage;
  sub_10000B8D8(0, 8, 0);
  v4 = 0;
  v5 = &_swiftEmptyArrayStorage;
  do
  {
    v6 = flt_1000EEC0C[*(&off_100119FE8 + v4 + 32)];
    *&v44 = v5;
    v8 = *(v5 + 2);
    v7 = *(v5 + 3);
    if (v8 >= v7 >> 1)
    {
      sub_10000B8D8((v7 > 1), v8 + 1, 1);
      v5 = v44;
    }

    ++v4;
    *(v5 + 2) = v8 + 1;
    v5[v8 + 8] = vabds_f32(v6, a3);
  }

  while (v4 != 8);
  v9 = sub_1000E9F74();

  if (v9)
  {
    v10 = 0;
    goto LABEL_48;
  }

  v11 = sub_1000E9F74();

  if (v11)
  {
    v10 = 1;
    goto LABEL_48;
  }

  v12 = sub_1000E9F74();

  if (v12)
  {
    v10 = 2;
    goto LABEL_48;
  }

  v13 = sub_1000E9F74();

  if (v13)
  {
    v10 = 3;
LABEL_48:
    v14 = a2;
    v15 = *(v5 + 2);
    if (v15)
    {
      goto LABEL_49;
    }

LABEL_14:
    v16 = 0;
    v17 = 1;
LABEL_15:
    if (*(v14 + 24))
    {
      sub_100028EC4(v14, &v41);
      if (*(&v42 + 1))
      {
LABEL_17:
        sub_100028F28(&v41, &v44);
        if (v17)
        {
          if (v15)
          {
            v18 = 0;
            v19 = 1;
            v20 = 3.4028e38;
            do
            {
              v21 = v5[v18 + 8];
              sub_100012800(&v44, *(&v45 + 1));
              if (v18 == 8)
              {
                __break(1u);
                v32 = sub_1000E9F74();

                if (v32)
                {
                  v10 = 7;
                }

                else
                {
                  v10 = 4;
                }

                goto LABEL_48;
              }

              v22 = v18 + 1;
              LOBYTE(v41) = *(&off_10011A038 + v18 + 32);
              sub_1000276CC();
              v23 = sub_1000E9A14();
              if (v21 < v20)
              {
                v24 = v18;
              }

              else
              {
                v24 = v16;
              }

              if (v21 < v20)
              {
                v25 = v21;
              }

              else
              {
                v25 = v20;
              }

              if (v23)
              {
                v16 = v24;
                v19 &= v21 >= v20;
                v20 = v25;
              }

              ++v18;
            }

            while (v15 != v22);

            sub_100012710(&v44);
            if ((v19 & 1) == 0)
            {
              goto LABEL_38;
            }
          }

          else
          {

            sub_100012710(&v44);
          }

LABEL_41:
          if (qword_10012F758 != -1)
          {
            goto LABEL_68;
          }

          goto LABEL_42;
        }

        sub_100012710(&v44);
LABEL_38:
        if (v16 > 7)
        {
          goto LABEL_67;
        }

        return *(&off_100119FE8 + v16 + 32);
      }
    }

    else
    {
      v26 = *(v14 + 16);
      v41 = *v14;
      v42 = v26;
      v43 = *(v14 + 32);
      if (*(&v26 + 1))
      {
        goto LABEL_17;
      }
    }

    if (*(&v42 + 1))
    {
      sub_100012710(&v41);
    }

    if (v17)
    {
      goto LABEL_41;
    }

    goto LABEL_38;
  }

  v10 = 4;
  v14 = a2;

  v15 = *(v5 + 2);
  if (!v15)
  {
    goto LABEL_14;
  }

LABEL_49:
  v16 = 0;
  v33 = 0;
  v17 = 1;
  v34 = 3.4028e38;
  while (1)
  {
    v35 = v5[v33 + 8];
    if (!*(v14 + 24))
    {
      break;
    }

    sub_100028EC4(v14, &v44);
    v36 = *(&v45 + 1);
    if (*(&v45 + 1))
    {
      goto LABEL_59;
    }

LABEL_61:
    if (a1)
    {
      if (v10 >= v33)
      {
        goto LABEL_50;
      }
    }

    else if (v33 >= v10)
    {
LABEL_50:
      if (v35 < v34)
      {
        v16 = v33;
      }

      v17 &= v35 >= v34;
      if (v35 < v34)
      {
        v34 = v35;
      }
    }

LABEL_54:
    if (v15 == ++v33)
    {
      goto LABEL_15;
    }
  }

  v37 = *(v14 + 16);
  v44 = *v14;
  v45 = v37;
  v46 = *(v14 + 32);
  v36 = *(&v37 + 1);
  if (!*(&v37 + 1))
  {
    goto LABEL_61;
  }

LABEL_59:
  sub_100012800(&v44, v36);
  if (v33 <= 7)
  {
    LOBYTE(v41) = *(&off_10011A010 + v33 + 32);
    sub_1000276CC();
    v38 = sub_1000E9A14();
    sub_100012710(&v44);
    v14 = a2;
    if ((v38 & 1) == 0)
    {
      goto LABEL_54;
    }

    goto LABEL_61;
  }

  __break(1u);
LABEL_67:
  __break(1u);
LABEL_68:
  swift_once();
LABEL_42:
  v28 = sub_1000E96A4();
  sub_100007488(v28, qword_10013DDD0);
  v29 = sub_1000E9684();
  v30 = sub_1000E9BA4();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    *v31 = 0;
    _os_log_impl(&_mh_execute_header, v29, v30, "We couldn't find our closest solar event.", v31, 2u);
  }

  return 8;
}

char *sub_10000B7D4(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000125FC(&qword_100132540);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

char *sub_10000B8D8(char *a1, int64_t a2, char a3)
{
  result = sub_10000B7D4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_10000B900@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_10000B964@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1000E9914();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_10000B990()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000B9D8()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000BA10()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000BA48()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000BA88()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000BAC0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t getEnumTagSinglePayload for FluidityParameters.State(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for FluidityParameters.State(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 16) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for FluidityParameters.Mask(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 12))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for FluidityParameters.Mask(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 12) = v3;
  return result;
}

uint64_t sub_10000BC40()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10000BC88()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000BCC4()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000BD00()
{

  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 105, 7);
}

uint64_t sub_10000BD58()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 32, 7);
}

float sub_10000BDAC(uint64_t a1, float a2)
{
  result = *(a1 + 100) * a2;
  *(a1 + 100) = result;
  return result;
}

float sub_10000BDBC(uint64_t a1, float a2)
{
  result = ((*(a1 + 100) + -1.4) * a2) + 1.4;
  *(a1 + 100) = result;
  return result;
}

float sub_10000BDEC(uint64_t a1, float a2)
{
  result = ((*(a1 + 100) + -0.8) * a2) + 0.8;
  *(a1 + 100) = result;
  return result;
}

float sub_10000BE1C(uint64_t a1, float a2)
{
  result = ((*(a1 + 100) + -1.5) * a2) + 1.5;
  *(a1 + 100) = result;
  return result;
}

float sub_10000BE3C(uint64_t a1, float a2)
{
  result = ((*(a1 + 100) + -0.35) * a2) + 0.35;
  *(a1 + 100) = result;
  return result;
}

float sub_10000BE6C(uint64_t a1, float a2)
{
  result = ((*(a1 + 100) + -0.53) * a2) + 0.53;
  *(a1 + 100) = result;
  return result;
}

float sub_10000BE9C(uint64_t a1, float a2)
{
  result = ((*(a1 + 100) + -0.23) * a2) + 0.23;
  *(a1 + 100) = result;
  return result;
}

float sub_10000BECC(uint64_t a1, float a2)
{
  result = ((*(a1 + 100) + -0.27) * a2) + 0.27;
  *(a1 + 100) = result;
  return result;
}

unsigned int *sub_10000BF40(unsigned int *result, uint64_t a2)
{
  if ((*(a2 + 24) & 0x8000000000000000) == 0)
  {
    *(a2 + 16) = *result;
    *(a2 + 24) = 0;
  }

  return result;
}

double sub_10000BF54@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  if ((*(a1 + 24) & 0x8000000000000000) != 0)
  {
    *&v2 = 0x3F8000003F800000;
    *a2 = xmmword_1000EC900;
  }

  else
  {
    v2 = *(a1 + 32);
    *a2 = v2;
  }

  return *&v2;
}

uint64_t *sub_10000BF80(uint64_t *result, void *a2)
{
  if ((a2[3] & 0x8000000000000000) == 0)
  {
    v3 = *result;
    v2 = result[1];
    a2[2] = *(a2 + 4);
    a2[3] = 0;
    a2[4] = v3;
    a2[5] = v2;
  }

  return result;
}

float sub_10000BFA0@<S0>(float *a1@<X0>, _DWORD *a2@<X8>)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

float sub_10000BFAC(float *a1, _DWORD *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

float sub_10000BFB8@<S0>(uint64_t a1@<X0>, float *a2@<X8>)
{
  result = *(a1 + 4);
  *a2 = result;
  return result;
}

float sub_10000BFC4(float *a1, uint64_t a2)
{
  result = *a1;
  *(a2 + 4) = *a1;
  return result;
}

float sub_10000BFD0@<S0>(uint64_t a1@<X0>, float *a2@<X8>)
{
  result = *(a1 + 8);
  *a2 = result;
  return result;
}

float sub_10000BFDC(float *a1, uint64_t a2)
{
  result = *a1;
  *(a2 + 8) = *a1;
  return result;
}

void sub_10000BFF4(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x63696D616E7964;
  v5 = 0xE300000000000000;
  v6 = 7305076;
  v7 = 0xE500000000000000;
  v8 = 0x6565726874;
  if (v2 != 3)
  {
    v8 = 1920298854;
    v7 = 0xE400000000000000;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 6647407;
    v3 = 0xE300000000000000;
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

uint64_t sub_10000C080(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1000E94E4();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_10000C12C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_1000E94E4();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_10000C1D0()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000C208()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10000C250(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1000E94E4();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_10000C310()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000C348()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000C380()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000C3E4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 32);
  return result;
}

uint64_t sub_10000C42C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 32) = v2;
  return result;
}

uint64_t sub_10000C470@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 40);
  return result;
}

uint64_t sub_10000C4B8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 40) = v2;
  return result;
}

uint64_t sub_10000C4FC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 48);
}

uint64_t sub_10000C54C()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000C59C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000C5D4()
{

  sub_1000C6078(*(v0 + 336), *(v0 + 344) | (*(v0 + 348) << 32));
  sub_1000C538C(*(v0 + 368), *(v0 + 376), *(v0 + 384), *(v0 + 392));
  sub_1000C538C(*(v0 + 416), *(v0 + 424), *(v0 + 432), *(v0 + 440));

  sub_1000C6078(*(v0 + 864), *(v0 + 872) | (*(v0 + 876) << 32));
  sub_1000C538C(*(v0 + 896), *(v0 + 904), *(v0 + 912), *(v0 + 920));
  sub_1000C538C(*(v0 + 944), *(v0 + 952), *(v0 + 960), *(v0 + 968));

  return _swift_deallocObject(v0, 1068, 15);
}

uint64_t sub_10000C7A4()
{
  sub_1000C6078(*(v0 + 16), *(v0 + 24) | (*(v0 + 28) << 32));
  sub_1000C6078(*(v0 + 32), *(v0 + 40) | (*(v0 + 44) << 32));

  return _swift_deallocObject(v0, 52, 7);
}

uint64_t sub_10000C7FC()
{
  sub_1000C538C(v0[2], v0[3], v0[4], v0[5]);
  sub_1000C538C(v0[8], v0[9], v0[10], v0[11]);

  return _swift_deallocObject(v0, 116, 15);
}

uint64_t sub_10000C84C()
{
  sub_1000A1DF8(*(v0 + 16), *(v0 + 24), *(v0 + 32));

  return _swift_deallocObject(v0, 34, 7);
}

uint64_t sub_10000C890@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 40);
  return result;
}

uint64_t sub_10000C8D8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 40) = v2;
  return result;
}

uint64_t sub_10000C91C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 48);
  return result;
}

uint64_t sub_10000C964(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 48) = v2;
  return result;
}

uint64_t sub_10000D430()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000D554(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t _s22MercuryPosterExtension10SpaceSceneV5LightV4GoboO12MaskGradientVwet_0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10000D58C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_10000D59C()
{
  v0 = sub_1000E96A4();
  sub_100011C54(v0, qword_10012F4C8);
  v1 = sub_100007488(v0, qword_10012F4C8);
  if (qword_10012F730 != -1)
  {
    swift_once();
  }

  v2 = sub_100007488(v0, qword_10013DD58);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_10000D664(void *a1, id a2)
{
  v5 = [objc_msgSend(a2 "sourceContents")];
  swift_unknownObjectRelease();
  if (!v5)
  {
    goto LABEL_4;
  }

  v6 = sub_1000E9914();
  v8 = v7;

  v9 = sub_100083980(v6, v8);
  if (v9 >= 0xF8u)
  {

LABEL_4:
    if (qword_10012F4C0 != -1)
    {
      swift_once();
    }

    v10 = sub_1000E96A4();
    sub_100007488(v10, qword_10012F4C8);
    v11 = sub_1000E9684();
    v12 = sub_1000E9BA4();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v11, v12, "couldn’t set up editing, no descriptor identifier!", v13, 2u);
    }

    v14 = [a1 contentOverlayView];
    v15 = [objc_opt_self() systemGrayColor];
    oslog = [v15 colorWithAlphaComponent:0.5];

    [v14 setBackgroundColor:oslog];

    return;
  }

  v16 = v9;
  v56 = v6;
  v58 = a2;
  osloga = v8;
  v17 = sub_100083E4C(v9);
  v54 = v18;
  v55 = v17;
  v51 = a1;
  v52 = v2;
  v57 = sub_10000E118(a1, v16);
  v20 = v19;
  v21 = sub_100011CB8(v16);
  v22 = v21;
  if (v21 >> 62)
  {
    v23 = sub_1000E9E64();
    v50 = v16;
    if (v23)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v23 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v50 = v16;
    if (v23)
    {
LABEL_11:
      v62[0] = _swiftEmptyArrayStorage;
      sub_1000AA408(0, v23 & ~(v23 >> 63), 0);
      if (v23 < 0)
      {
        __break(1u);
        return;
      }

      v24 = 0;
      v25 = v62[0];
      do
      {
        if ((v22 & 0xC000000000000001) != 0)
        {
          v26 = sub_1000E9D74();
        }

        else
        {
          v26 = *(v22 + 8 * v24 + 32);
        }

        v27 = v26;
        v28 = [v26 identifier];
        v29 = sub_1000E9914();
        v31 = v30;

        v62[0] = v25;
        v33 = v25[2];
        v32 = v25[3];
        if (v33 >= v32 >> 1)
        {
          sub_1000AA408((v32 > 1), v33 + 1, 1);
          v25 = v62[0];
        }

        ++v24;
        v25[2] = v33 + 1;
        v34 = &v25[2 * v33];
        v34[4] = v29;
        v34[5] = v31;
      }

      while (v23 != v24);

      goto LABEL_22;
    }
  }

  v25 = _swiftEmptyArrayStorage;
LABEL_22:
  v35 = v58;
  v53 = sub_10001225C(v58);
  v36 = osloga;
  if (qword_10012F4C0 != -1)
  {
    swift_once();
  }

  v37 = sub_1000E96A4();
  sub_100007488(v37, qword_10012F4C8);

  v38 = sub_1000E9684();
  v39 = sub_1000E9B94();

  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    v62[0] = swift_slowAlloc();
    *v40 = 136446466;
    v41 = v56;
    *(v40 + 4) = sub_100093A3C(v56, osloga, v62);
    *(v40 + 12) = 2082;
    v42 = v57;
    *(v40 + 14) = sub_100093A3C(v57, v20, v62);
    _os_log_impl(&_mh_execute_header, v38, v39, "creating editing coordinator for descriptor “%{public}s” look “%{public}s”", v40, 0x16u);
    swift_arrayDestroy();

    v35 = v58;
    v36 = osloga;
  }

  else
  {

    v41 = v56;
    v42 = v57;
  }

  type metadata accessor for WallpaperEditingCoordinator();
  swift_allocObject();

  swift_unknownObjectRetain();
  v43 = v36;
  v44 = v20;
  v45 = sub_10008C920(v41, v43, v55, v54, v35, v42, v20, v25, v53);
  v46 = OBJC_IVAR____TtC22MercuryPosterExtension17EditingController_resources;
  v47 = v45;
  swift_beginAccess();

  v48 = v51;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v61 = *(v52 + v46);
  *(v52 + v46) = 0x8000000000000000;
  sub_1000B488C(v50, v47, v42, v44, v48, isUniquelyReferenced_nonNull_native);

  *(v52 + v46) = v61;
  swift_endAccess();
}

void sub_10000DD6C(uint64_t a1, void *a2, void *a3)
{
  v7 = OBJC_IVAR____TtC22MercuryPosterExtension17EditingController_resources;
  swift_beginAccess();
  v8 = *(v3 + v7);
  if (*(v8 + 16))
  {

    v9 = sub_10009F1B8(a1);
    if (v10)
    {
      v11 = (*(v8 + 56) + 32 * v9);
      v12 = *v11;
      v13 = *(v11 + 1);
      swift_retain_n();

      sub_100011C10(v12, v13);
      v14 = [a3 animationSettings];
      sub_10008E624(a2, v14);
    }

    else
    {
    }
  }
}

uint64_t sub_10000DF14(void *a1)
{
  v2 = [objc_msgSend(a1 "environment")];
  swift_unknownObjectRelease();
  v3 = [v2 descriptorIdentifier];
  swift_unknownObjectRelease();
  if (v3)
  {
    v4 = sub_1000E9914();
    v6 = v5;

    v7 = sub_100083980(v4, v6);
    if (v7 <= 0xF7u)
    {
      return sub_10000E118(a1, v7);
    }
  }

  if (qword_10012F4C0 != -1)
  {
    swift_once();
  }

  v8 = sub_1000E96A4();
  sub_100007488(v8, qword_10012F4C8);
  v9 = sub_1000E9684();
  v10 = sub_1000E9BA4();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "We don't know our initial look identifier. This will crash the editor.", v11, 2u);
  }

  return 0;
}

uint64_t sub_10000E118(void *a1, unsigned __int8 a2)
{
  v5 = OBJC_IVAR____TtC22MercuryPosterExtension17EditingController_resources;
  swift_beginAccess();
  v6 = *(v2 + v5);
  if (*(v6 + 16))
  {

    v7 = sub_10009F1B8(a1);
    if (v8)
    {
      v9 = (*(v6 + 56) + 32 * v7);
      v10 = *v9;
      v11 = *(v9 + 1);
      v12 = *(v9 + 2);

      swift_bridgeObjectRetain_n();

      sub_100011C10(v10, v11);
      return v12;
    }
  }

  v14 = [objc_msgSend(a1 "environment")];
  swift_unknownObjectRelease();
  v27[0] = 0;
  v15 = [v14 loadUserInfoWithError:v27];
  swift_unknownObjectRelease();
  v16 = v27[0];
  if (v15)
  {
    v17 = sub_1000E98A4();
    v18 = v16;

    strcpy(v26, "lookIdentifier");
    v26[15] = -18;
    sub_1000E9D14();
    if (*(v17 + 16) && (v19 = sub_10009F174(v27), (v20 & 1) != 0))
    {
      sub_100012898(*(v17 + 56) + 32 * v19, v28);
      sub_100012844(v27);

      if (swift_dynamicCast())
      {
        return *v26;
      }
    }

    else
    {

      sub_100012844(v27);
    }
  }

  else
  {
    v21 = v27[0];
    sub_1000E92E4();

    swift_willThrow();
    if (qword_10012F4C0 != -1)
    {
      swift_once();
    }

    v22 = sub_1000E96A4();
    sub_100007488(v22, qword_10012F4C8);
    v23 = sub_1000E9684();
    v24 = sub_1000E9B94();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&_mh_execute_header, v23, v24, "no stored look identifier, using fallback", v25, 2u);
    }
  }

  return sub_100083F34(a2);
}

uint64_t sub_10000E448(void *a1)
{
  v3 = OBJC_IVAR____TtC22MercuryPosterExtension17EditingController_resources;
  swift_beginAccess();
  v4 = *(v1 + v3);
  if (*(v4 + 16))
  {

    v5 = sub_10009F1B8(a1);
    if (v6)
    {
      v7 = (*(v4 + 56) + 32 * v5);
      v8 = *v7;
      v9 = *(v7 + 1);

      sub_100011C10(v8, v9);
      return sub_100011CB8(v8);
    }
  }

  v10 = [objc_msgSend(a1 "environment")];
  swift_unknownObjectRelease();
  v8 = [v10 descriptorIdentifier];
  swift_unknownObjectRelease();
  if (v8)
  {
    v11 = sub_1000E9914();
    v13 = v12;

    LODWORD(v8) = sub_100083980(v11, v13);
    if (v8 <= 0xF7u)
    {
      return sub_100011CB8(v8);
    }
  }

  if (qword_10012F4C0 != -1)
  {
    swift_once();
  }

  v14 = sub_1000E96A4();
  sub_100007488(v14, qword_10012F4C8);
  v15 = sub_1000E9684();
  v16 = sub_1000E9BA4();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&_mh_execute_header, v15, v16, "couldn’t find identifier when providing looks", v17, 2u);
  }

  sub_1000125FC(&qword_1001303F0);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1000EC860;
  v19 = objc_allocWithZone(PREditingLook);
  v20 = sub_1000E98E4();
  v21 = sub_1000E98E4();
  v22 = [v19 initWithIdentifier:v20 displayName:v21];

  result = v18;
  *(v18 + 32) = v22;
  return result;
}

void *sub_10000E784(void *a1)
{
  v3 = OBJC_IVAR____TtC22MercuryPosterExtension17EditingController_resources;
  swift_beginAccess();
  v4 = *(v1 + v3);
  if (!*(v4 + 16))
  {
    goto LABEL_8;
  }

  v5 = sub_10009F1B8(a1);
  if ((v6 & 1) == 0)
  {

LABEL_8:
    if (qword_10012F4C0 != -1)
    {
      swift_once();
    }

    v15 = sub_1000E96A4();
    sub_100007488(v15, qword_10012F4C8);
    v16 = sub_1000E9684();
    v17 = sub_1000E9B94();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v16, v17, "Don't know our identifier for leadingMenuElements.", v18, 2u);
    }

    return _swiftEmptyArrayStorage;
  }

  v7 = (*(v4 + 56) + 32 * v5);
  v8 = *v7;
  v9 = *(v7 + 1);

  sub_100011C10(v8, v9);
  if (!(v8 >> 6) || v8 >> 6 == 1 && (v10 = [objc_opt_self() currentDevice], v11 = objc_msgSend(v10, "userInterfaceIdiom"), v10, v11 != 1))
  {
    sub_1000125FC(&qword_1001303F0);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_1000EC860;
    v13 = [a1 depthEffectMenu];
    result = v12;
    *(v12 + 32) = v13;
    return result;
  }

  return _swiftEmptyArrayStorage;
}

void *sub_10000E9BC(void *a1)
{
  v3 = OBJC_IVAR____TtC22MercuryPosterExtension17EditingController_resources;
  swift_beginAccess();
  v4 = *(v1 + v3);
  if (!*(v4 + 16))
  {
    goto LABEL_6;
  }

  v5 = sub_10009F1B8(a1);
  if ((v6 & 1) == 0)
  {

LABEL_6:
    if (qword_10012F4C0 != -1)
    {
      swift_once();
    }

    v13 = sub_1000E96A4();
    sub_100007488(v13, qword_10012F4C8);
    v14 = sub_1000E9684();
    v15 = sub_1000E9B94();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v14, v15, "Don't know our identifier for trailingMenuElements.", v16, 2u);
    }

    return _swiftEmptyArrayStorage;
  }

  v7 = (*(v4 + 56) + 32 * v5);
  v8 = *v7;
  v9 = *(v7 + 1);

  sub_100011C10(v8, v9);
  if ((v8 & 0x80000000) == 0)
  {
    sub_1000125FC(&qword_1001303F0);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_1000EC860;
    v11 = [a1 appearanceMenu];
    result = v10;
    *(v10 + 32) = v11;
    return result;
  }

  return _swiftEmptyArrayStorage;
}

Class sub_10000EBA8(void *a1, uint64_t a2, void *a3, uint64_t (*a4)(id))
{
  v6 = a3;
  v7 = a1;
  v8 = a4(v6);

  if (v8)
  {
    sub_100012904(0, &qword_10012FAE8);
    v9.super.isa = sub_1000E9A74().super.isa;
  }

  else
  {
    v9.super.isa = 0;
  }

  return v9.super.isa;
}

uint64_t sub_10000EC4C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC22MercuryPosterExtension17EditingController_resources;
  swift_beginAccess();
  v4 = *(v1 + v3);
  if (*(v4 + 16))
  {

    v5 = sub_10009F1B8(a1);
    if (v6)
    {
      v7 = (*(v4 + 56) + 32 * v5);
      v8 = *v7;
      v9 = *(v7 + 1);
      swift_retain_n();

      sub_100011C10(v8, v9);
      v10 = *(v9 + 496);

      return qword_1000ED238[v10];
    }
  }

  if (qword_10012F4C0 != -1)
  {
    swift_once();
  }

  v12 = sub_1000E96A4();
  sub_100007488(v12, qword_10012F4C8);
  v13 = sub_1000E9684();
  v14 = sub_1000E9BA4();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v13, v14, "Trying to read active appearance but no editing coordinator.", v15, 2u);
  }

  return 0;
}

void sub_10000EE30(uint64_t a1, uint64_t a2)
{
  v5 = OBJC_IVAR____TtC22MercuryPosterExtension17EditingController_resources;
  swift_beginAccess();
  v6 = *(v2 + v5);
  if (*(v6 + 16))
  {

    v7 = sub_10009F1B8(a1);
    if (v8)
    {
      v9 = (*(v6 + 56) + 32 * v7);
      v10 = *v9;
      v11 = *(v9 + 1);
      swift_retain_n();

      sub_100011C10(v10, v11);
      if (a2 == 2)
      {
        v12 = 1;
      }

      else
      {
        v12 = 2 * (a2 != 1);
      }

      sub_10008E48C(v12);

      return;
    }
  }

  if (qword_10012F4C0 != -1)
  {
    swift_once();
  }

  v13 = sub_1000E96A4();
  sub_100007488(v13, qword_10012F4C8);
  v14 = sub_1000E9684();
  v15 = sub_1000E9BA4();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&_mh_execute_header, v14, v15, "Trying to update appearance but no editing coordinator.", v16, 2u);
  }
}

void sub_10000F040(uint64_t a1, void *a2, double a3)
{
  v7 = OBJC_IVAR____TtC22MercuryPosterExtension17EditingController_resources;
  swift_beginAccess();
  v8 = *(v3 + v7);
  if (*(v8 + 16))
  {

    v9 = sub_10009F1B8(a1);
    if (v10)
    {
      v11 = (*(v8 + 56) + 32 * v9);
      v12 = *v11;
      v13 = *(v11 + 1);
      swift_retain_n();

      sub_100011C10(v12, v13);
      if (qword_10012F4C0 != -1)
      {
        swift_once();
      }

      v14 = sub_1000E96A4();
      sub_100007488(v14, qword_10012F4C8);
      v15 = a2;
      v16 = sub_1000E9684();
      v17 = sub_1000E9B94();

      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        v36 = swift_slowAlloc();
        *v18 = 136315394;
        v19 = [v15 identifier];
        v20 = sub_1000E9914();
        v22 = v21;

        v23 = sub_100093A3C(v20, v22, &v36);

        *(v18 + 4) = v23;
        *(v18 + 12) = 2080;
        sub_1000125FC(&unk_100131D80);
        v24 = swift_allocObject();
        *(v24 + 16) = xmmword_1000EC870;
        *(v24 + 56) = &type metadata for CGFloat;
        *(v24 + 64) = sub_10001275C();
        *(v24 + 32) = a3;
        v25 = sub_1000E9924();
        v27 = sub_100093A3C(v25, v26, &v36);

        *(v18 + 14) = v27;
        _os_log_impl(&_mh_execute_header, v16, v17, "transitioning to %s progress %s", v18, 0x16u);
        swift_arrayDestroy();
      }

      v28 = [v15 identifier];
      v29 = sub_1000E9914();
      v31 = v30;

      sub_10008EF68(v29, v31, a3);

      return;
    }
  }

  if (qword_10012F4C0 != -1)
  {
    swift_once();
  }

  v32 = sub_1000E96A4();
  sub_100007488(v32, qword_10012F4C8);
  v33 = sub_1000E9684();
  v34 = sub_1000E9BA4();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    *v35 = 0;
    _os_log_impl(&_mh_execute_header, v33, v34, "no editing coordinator available to transition", v35, 2u);
  }
}

void sub_10000F480(uint64_t a1, void *a2)
{
  v5 = OBJC_IVAR____TtC22MercuryPosterExtension17EditingController_resources;
  swift_beginAccess();
  v6 = *(v2 + v5);
  if (*(v6 + 16))
  {

    v7 = sub_10009F1B8(a1);
    if (v8)
    {
      v9 = (*(v6 + 56) + 32 * v7);
      v10 = *v9;
      v11 = *(v9 + 1);
      swift_retain_n();

      sub_100011C10(v10, v11);
      if (qword_10012F4C0 != -1)
      {
        swift_once();
      }

      v12 = sub_1000E96A4();
      sub_100007488(v12, qword_10012F4C8);
      v13 = a2;
      v14 = sub_1000E9684();
      v15 = sub_1000E9B94();

      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        v31 = v17;
        *v16 = 136315138;
        v18 = [v13 identifier];
        v19 = sub_1000E9914();
        v21 = v20;

        v22 = sub_100093A3C(v19, v21, &v31);

        *(v16 + 4) = v22;
        _os_log_impl(&_mh_execute_header, v14, v15, "finalizing transition to %s", v16, 0xCu);
        sub_100012710(v17);
      }

      v23 = [v13 identifier];
      v24 = sub_1000E9914();
      v26 = v25;

      sub_10008F110(v24, v26);

      return;
    }
  }

  if (qword_10012F4C0 != -1)
  {
    swift_once();
  }

  v27 = sub_1000E96A4();
  sub_100007488(v27, qword_10012F4C8);
  v28 = sub_1000E9684();
  v29 = sub_1000E9BA4();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    *v30 = 0;
    _os_log_impl(&_mh_execute_header, v28, v29, "no editing coordinator available to finish transition", v30, 2u);
  }
}

void sub_10000F810(void *a1, id a2, void *a3)
{
  v7 = [a2 backgroundView];
  v8 = [objc_opt_self() blackColor];
  [v7 setBackgroundColor:v8];

  v9 = OBJC_IVAR____TtC22MercuryPosterExtension17EditingController_resources;
  swift_beginAccess();
  v10 = *(v3 + v9);
  if (!*(v10 + 16))
  {
    goto LABEL_5;
  }

  v11 = sub_10009F1B8(a1);
  if ((v12 & 1) == 0)
  {

LABEL_5:
    if (qword_10012F4C0 != -1)
    {
      swift_once();
    }

    v22 = sub_1000E96A4();
    sub_100007488(v22, qword_10012F4C8);
    v23 = sub_1000E9684();
    v24 = sub_1000E9BA4();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&_mh_execute_header, v23, v24, "no editing coordinator available to populate views", v25, 2u);
    }

    return;
  }

  v13 = (*(v10 + 56) + 32 * v11);
  v14 = *v13;
  v15 = *(v13 + 1);
  swift_retain_n();

  sub_100011C10(v14, v15);
  v16 = [a2 backgroundView];
  v17 = [a2 floatingView];
  v18 = [a3 identifier];
  v19 = sub_1000E9914();
  v21 = v20;

  sub_10008D368(v16, v17, v19, v21);

  v26 = *(v15 + 80);
  if (!v26)
  {
    goto LABEL_13;
  }

  v27 = *(v15 + 88);
  ObjectType = swift_getObjectType();
  v29 = *(v27 + 88);
  swift_unknownObjectRetain();
  v29(1, ObjectType, v27);
  v30 = swift_allocObject();
  *(v30 + 16) = v26;
  *(v30 + 24) = v27;
  v31 = swift_allocObject();
  *(v31 + 16) = sub_1000126AC;
  *(v31 + 24) = v30;
  v37[4] = sub_1000126C8;
  v37[5] = v31;
  v37[0] = _NSConcreteStackBlock;
  v37[1] = 1107296256;
  v37[2] = sub_10000FE00;
  v37[3] = &unk_100122738;
  v32 = _Block_copy(v37);
  swift_unknownObjectRetain();

  [a1 updatePreferences:v32];
  _Block_release(v32);
  LOBYTE(v32) = swift_isEscapingClosureAtFileLocation();

  if ((v32 & 1) == 0)
  {
    v33 = swift_allocObject();
    *(v33 + 24) = v27;
    swift_unknownObjectWeakInit();
    v34 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v35 = swift_allocObject();
    *(v35 + 16) = v34;
    *(v35 + 24) = v33;
    v36 = *(v27 + 192);

    v36(sub_100012708, v35, ObjectType, v27);

    swift_unknownObjectRelease();

LABEL_13:

    return;
  }

  __break(1u);
}

uint64_t sub_10000FE00(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  swift_unknownObjectRetain();
  v6 = a3;
  v5(a2, v6);

  return swift_unknownObjectRelease();
}

void sub_10000FE68(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    isEscapingClosureAtFileLocation = Strong;
    swift_beginAccess();
    v5 = swift_unknownObjectWeakLoadStrong();
    if (v5)
    {
      v6 = v5;
      v7 = *(a2 + 24);
      v8 = swift_allocObject();
      *(v8 + 16) = v6;
      *(v8 + 24) = v7;
      v9 = swift_allocObject();
      *(v9 + 16) = sub_100012D40;
      *(v9 + 24) = v8;
      v11[4] = sub_100012D44;
      v11[5] = v9;
      v11[0] = _NSConcreteStackBlock;
      v11[1] = 1107296256;
      v11[2] = sub_10000FE00;
      v11[3] = &unk_100122828;
      v10 = _Block_copy(v11);
      swift_unknownObjectRetain();

      [isEscapingClosureAtFileLocation updatePreferences:v10];
      swift_unknownObjectRelease();

      _Block_release(v10);
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if ((isEscapingClosureAtFileLocation & 1) == 0)
      {
        return;
      }

      __break(1u);
    }
  }
}

id sub_100010020(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  ObjectType = swift_getObjectType();
  v7 = (*(a4 + 176))(ObjectType, a4);
  if (v8)
  {
    x = CGRectNull.origin.x;
    y = CGRectNull.origin.y;
    width = CGRectNull.size.width;
    height = CGRectNull.size.height;
  }

  else
  {
    y = *&v7;
    x = 0.0;
    width = 0.0;
    height = 0.0;
  }

  return [a1 setPreferredSalientContentRectangle:{x, y, width, height}];
}

uint64_t sub_100010148(void *a1, void (*a2)(id))
{
  v5 = OBJC_IVAR____TtC22MercuryPosterExtension17EditingController_resources;
  swift_beginAccess();
  v6 = *(v2 + v5);
  if (*(v6 + 16))
  {

    v7 = sub_10009F1B8(a1);
    v8 = a2;
    if (v9)
    {
      v10 = (*(v6 + 56) + 32 * v7);
      v11 = *v10;
      v12 = *(v10 + 1);
      swift_retain_n();

      v13 = v11;
      goto LABEL_7;
    }
  }

  else
  {
    v8 = a2;
  }

  v13 = 0;
  v12 = 0;
LABEL_7:
  sub_100011C10(v13, v12);
  v14 = sub_100012504(v12);
  v15 = [objc_msgSend(a1 "environment")];
  swift_unknownObjectRelease();
  sub_1000125FC(&qword_10012FA50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000EC880;
  strcpy(v36, "lookIdentifier");
  sub_1000E9D14();
  v17 = [a1 currentLook];
  v18 = [v17 identifier];

  v19 = sub_1000E9914();
  v21 = v20;

  *(inited + 96) = &type metadata for String;
  *(inited + 72) = v19;
  *(inited + 80) = v21;
  strcpy(v36, "appearanceMode");
  HIBYTE(v36[1]) = -18;
  sub_1000E9D14();
  if (v14)
  {
    if (v14 == 1)
    {
      v22 = 0xE400000000000000;
      v23 = 1802658116;
    }

    else
    {
      v22 = 0xE900000000000063;
      v23 = 0x6974616D6F747541;
    }
  }

  else
  {
    v22 = 0xE500000000000000;
    v23 = 0x746867694CLL;
  }

  *(inited + 168) = &type metadata for String;
  *(inited + 144) = v23;
  *(inited + 152) = v22;
  sub_1000A15FC(inited);
  swift_setDeallocating();
  sub_1000125FC(&qword_10012FA58);
  swift_arrayDestroy();
  isa = sub_1000E9894().super.isa;

  v36[0] = 0;
  v25 = [v15 storeUserInfo:isa error:v36];

  if (v25)
  {
    v26 = v36[0];
    if (!v12)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

  v27 = v36[0];
  sub_1000E92E4();

  swift_willThrow();
  if (qword_10012F4C0 != -1)
  {
    swift_once();
  }

  v28 = sub_1000E96A4();
  sub_100007488(v28, qword_10012F4C8);
  swift_errorRetain();
  v29 = sub_1000E9684();
  v30 = sub_1000E9BA4();

  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    *v31 = 138543362;
    swift_errorRetain();
    v33 = _swift_stdlib_bridgeErrorToNSError();
    *(v31 + 4) = v33;
    *v32 = v33;
    _os_log_impl(&_mh_execute_header, v29, v30, "couldn’t store user info: %{public}@", v31, 0xCu);
    sub_100012644(v32);

    if (!v12)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

  if (v12)
  {
LABEL_21:
    v34 = *(v12 + 56);

    sub_100086D4C();
    *(v34 + OBJC_IVAR____TtC22MercuryPosterExtension18WallpaperMetalView_wantsIndefiniteContinuousRendering) = 0;
    sub_1000871AC();
    swift_beginAccess();
    *(v12 + 520) = &_swiftEmptySetSingleton;
  }

LABEL_22:
  v8(v26);
}

uint64_t sub_100010710(uint64_t a1)
{
  if (qword_10012F4C0 != -1)
  {
    swift_once();
  }

  v2 = sub_1000E96A4();
  sub_100007488(v2, qword_10012F4C8);
  v3 = sub_1000E9684();
  v4 = sub_1000E9B94();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "editor invalidated, cleaning up coordinator", v5, 2u);
  }

  swift_beginAccess();
  v6 = sub_100036D80(a1);
  v8 = v7;
  swift_endAccess();
  return sub_100011C10(v6, v8);
}

id sub_10001091C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for EditingController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

double variable initialization expression of WallpaperState.look@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *a1 = xmmword_1000EC890;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 29) = 0;
  return result;
}

double variable initialization expression of WallpaperState.rotationInfo@<D0>(uint64_t a1@<X8>)
{
  *a1 = 1;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0;
  return result;
}

void variable initialization expression of WallpaperState.deviceMotion(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  a1[6] = 0;
  a1[7] = 0x3FF0000000000000;
  a1[4] = 0;
  a1[5] = 0;
}

double sub_1000109F8@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 48) = 0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 52) = xmmword_1000EC8A0;
  *(a1 + 68) = xmmword_1000EC8B0;
  *(a1 + 84) = xmmword_1000EC8C0;
  *(a1 + 100) = xmmword_1000EC8A0;
  *(a1 + 116) = xmmword_1000EC8D0;
  *(a1 + 132) = xmmword_1000EC8E0;
  *&result = 1065353216;
  *(a1 + 148) = 1065353216;
  return result;
}

void variable initialization expression of TextureLoader.loader()
{
  v0 = qword_10012F7B0;
  if (qword_10012F7B0)
  {
    v1 = objc_allocWithZone(MTKTextureLoader);

    [v1 initWithDevice:v0];
  }

  else
  {
    __break(1u);
  }
}

double variable initialization expression of ShippouScene.camera()
{
  type metadata accessor for ShippouCamera();
  v0 = swift_allocObject();
  *(v0 + 16) = 1109288550;
  if (qword_10012F4E0 != -1)
  {
    v5 = v0;
    swift_once();
    v0 = v5;
  }

  result = *&xmmword_10013A960;
  v2 = *algn_10013A970;
  v3 = xmmword_10013A980;
  v4 = unk_10013A990;
  *(v0 + 32) = xmmword_10013A960;
  *(v0 + 48) = v2;
  *(v0 + 64) = v3;
  *(v0 + 80) = v4;
  return result;
}

id variable initialization expression of ShippouScene.undimTiming()
{
  v0 = objc_allocWithZone(CAMediaTimingFunction);
  LODWORD(v1) = 0.5;
  LODWORD(v2) = 1.0;

  return [v0 initWithControlPoints:v1 :0.0 :0.0 :v2];
}

id variable initialization expression of ShippouScene.unlockTiming()
{
  v0 = objc_allocWithZone(CAMediaTimingFunction);
  LODWORD(v1) = 1059481190;
  LODWORD(v2) = 1051931443;
  LODWORD(v3) = 1.0;

  return [v0 initWithControlPoints:v1 :0.0 :v2 :v3];
}

void sub_100010C64(__n128 *a1@<X0>, double *a2@<X1>, double (*a3)(__n128, __n128, __n128, __n128, double)@<X2>, _OWORD *a4@<X8>)
{
  *&v5 = a3(*a1, a1[1], a1[2], a1[3], *a2);
  *a4 = v5;
  a4[1] = v6;
  a4[2] = v7;
  a4[3] = v8;
}

float sub_100010CA8(uint64_t a1, float *a2)
{
  v3 = *a2 / 0.95833;
  v4 = 0.0;
  if (v3 >= 0.0)
  {
    v4 = *a2 / 0.95833;
  }

  v5 = v4 * 3.1416;
  if (v3 >= 1.0)
  {
    v6 = 3.1416;
  }

  else
  {
    v6 = v5;
  }

  result = *(a1 + 100) * (((0.5 - (cosf(v6) * 0.5)) * 0.7) + 0.3);
  *(a1 + 100) = result;
  return result;
}

float sub_100010D40(uint64_t a1, float *a2)
{
  v3 = *a2 / 0.75;
  v4 = 0.0;
  if (v3 >= 0.0)
  {
    v4 = *a2 / 0.75;
  }

  v5 = v4 * 3.1416;
  if (v3 >= 1.0)
  {
    v6 = 3.1416;
  }

  else
  {
    v6 = v5;
  }

  result = *(a1 + 100) * (((0.5 - (cosf(v6) * 0.5)) * 0.7) + 0.3);
  *(a1 + 100) = result;
  return result;
}

float sub_100010DF0(uint64_t a1, float *a2)
{
  v3 = 0.0;
  if (*a2 >= 0.0)
  {
    v3 = *a2;
  }

  v4 = v3 * 3.1416;
  if (*a2 >= 1.0)
  {
    v5 = 3.1416;
  }

  else
  {
    v5 = v4;
  }

  result = *(a1 + 100) * (((0.5 - (cosf(v5) * 0.5)) * 0.7) + 0.3);
  *(a1 + 100) = result;
  return result;
}

float sub_100010E78(uint64_t a1, float *a2)
{
  v3 = *a2 + *a2;
  v4 = 0.0;
  if (v3 >= 0.0)
  {
    v4 = *a2 + *a2;
  }

  v5 = v4 * 3.1416;
  if (v3 >= 1.0)
  {
    v6 = 3.1416;
  }

  else
  {
    v6 = v5;
  }

  result = *(a1 + 100) * (((cosf(v6) * 0.5) + -0.5) + 2.0);
  *(a1 + 100) = result;
  return result;
}

double variable initialization expression of ToriScene.camera()
{
  type metadata accessor for ToriCamera();
  v0 = swift_allocObject();
  v0[1] = xmmword_1000EC930;
  if (qword_10012F4E0 != -1)
  {
    v5 = v0;
    swift_once();
    v0 = v5;
  }

  result = *&xmmword_10013A960;
  v2 = *algn_10013A970;
  v3 = xmmword_10013A980;
  v4 = unk_10013A990;
  v0[2] = xmmword_10013A960;
  v0[3] = v2;
  v0[4] = v3;
  v0[5] = v4;
  return result;
}

double _s22MercuryPosterExtension12ShippouSceneC12cameraHolderSo13simd_float4x4avpfi_0()
{
  if (qword_10012F4E0 != -1)
  {
    swift_once();
  }

  return *&xmmword_10013A960;
}

id variable initialization expression of ToriScene.undimTiming()
{
  v0 = objc_allocWithZone(CAMediaTimingFunction);
  LODWORD(v1) = 0.5;
  LODWORD(v2) = 1.0;
  LODWORD(v3) = 0.5;

  return [v0 initWithControlPoints:v1 :0.0 :v2 :v3];
}

id variable initialization expression of ToriScene.unlockTiming()
{
  v0 = objc_allocWithZone(CAMediaTimingFunction);
  LODWORD(v1) = 1055119114;
  LODWORD(v2) = 1028443341;
  LODWORD(v3) = 1057803469;
  LODWORD(v4) = 1064514355;

  return [v0 initWithControlPoints:v1 :v2 :v3 :v4];
}

__n128 sub_100011118(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_10001112C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 48))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10001114C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 48) = v3;
  return result;
}

__n128 initializeBufferWithCopyOfBuffer for FluidityWallpaperRenderer.MeshResource.MeshVertex(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

__n128 sub_1000111E0(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_1000111EC(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 32) = v3;
  return result;
}

__n128 sub_10001122C(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_100011240(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 64))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100011260(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 64) = v3;
  return result;
}

__n128 sub_1000112B0(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  v8 = a2[8];
  v9 = a2[9];
  v10 = a2[11];
  *(a1 + 160) = a2[10];
  *(a1 + 176) = v10;
  *(a1 + 128) = v8;
  *(a1 + 144) = v9;
  result = a2[12];
  v12 = a2[13];
  v13 = a2[15];
  *(a1 + 224) = a2[14];
  *(a1 + 240) = v13;
  *(a1 + 192) = result;
  *(a1 + 208) = v12;
  return result;
}

uint64_t sub_1000112F4(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 256))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100011314(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 248) = 0;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 256) = v3;
  return result;
}

__n128 sub_100011394(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 12) = *(a2 + 12);
  *a1 = result;
  return result;
}

uint64_t sub_1000113A8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 28))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1000113FC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 28) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 28) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_100011458(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1000114A0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100011518()
{
  sub_1000E9914();
  v0 = sub_1000E99E4();

  return v0;
}

uint64_t sub_100011554()
{
  sub_1000E9914();
  sub_1000E9974();
}

Swift::Int sub_1000115A8()
{
  sub_1000E9914();
  sub_1000EA024();
  sub_1000E9974();
  v0 = sub_1000EA064();

  return v0;
}

uint64_t sub_100011624(uint64_t a1, id *a2)
{
  result = sub_1000E98F4();
  *a2 = 0;
  return result;
}

uint64_t sub_10001169C(uint64_t a1, id *a2)
{
  v3 = sub_1000E9904();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_10001171C@<X0>(void *a1@<X8>)
{
  sub_1000E9914();
  v2 = sub_1000E98E4();

  *a1 = v2;
  return result;
}

Swift::Int sub_100011760()
{
  v1 = *v0;
  sub_1000EA024();
  sub_1000EA034(v1);
  return sub_1000EA064();
}

Swift::Int sub_1000117A8()
{
  v1 = *v0;
  sub_1000EA024();
  sub_1000EA034(v1);
  return sub_1000EA064();
}

Swift::Int sub_100011890()
{
  sub_1000EA024();
  swift_getWitnessTable();
  sub_1000E95F4();
  return sub_1000EA064();
}

uint64_t sub_1000118F8()
{
  swift_getWitnessTable();

  return sub_1000E95E4();
}

uint64_t sub_100011964()
{
  v0 = sub_1000E9914();
  v2 = v1;
  if (v0 == sub_1000E9914() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_1000E9F74();
  }

  return v5 & 1;
}

uint64_t sub_1000119EC@<X0>(void *a1@<X8>)
{
  v2 = sub_1000E98E4();

  *a1 = v2;
  return result;
}

uint64_t sub_100011A34(uint64_t a1)
{
  v2 = sub_100011B80(&qword_10012F9E0, type metadata accessor for Option);
  v3 = sub_100011B80(&qword_10012F9E8, type metadata accessor for Option);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_100011B80(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100011C10(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t *sub_100011C54(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_100011CB8(int a1)
{
  v57 = a1;
  result = sub_1000841E0(a1);
  v2 = result;
  v3 = 0;
  v4 = _swiftEmptyArrayStorage;
  v70 = _swiftEmptyArrayStorage;
  v5 = *(result + 16);
  *&v6 = 136315650;
  v56 = v6;
LABEL_2:
  v7 = v3 << 6;
  while (1)
  {
    if (v5 == v3)
    {

      return v4;
    }

    if (v3 >= *(v2 + 16))
    {
      break;
    }

    ++v3;
    v8 = v7 + 64;
    v9 = *(v2 + v7 + 68);
    v7 += 64;
    if ((v9 & 1) == 0)
    {
      v58 = v5;
      v10 = *(v2 + v8 - 32);
      v11 = *(v2 + v8 - 24);
      v12 = *(v2 + v8 - 16);
      v13 = *(v2 + v8 - 8);
      v14 = *(v2 + v8);
      v15 = *(v2 + v8 + 16);
      v61 = *(v2 + v8 + 8);
      v16 = *(v2 + v8 + 24);
      v67 = v10;
      v17 = v11;
      v65 = v12;
      v18 = v13;
      v19 = v14;
      sub_1000073F4(v10, v11, v12, v13, v14, 0);
      v20 = qword_10012F4C0;
      v21 = v15;

      v60 = v16;
      v62 = v16;
      if (v20 != -1)
      {
        swift_once();
      }

      v22 = sub_1000E96A4();
      sub_100007488(v22, qword_10012F4C8);
      v23 = v67;
      v24 = v17;
      v25 = v17;
      v26 = v65;
      sub_1000073F4(v67, v25, v65, v18, v19, 0);

      v27 = sub_1000E9684();
      v28 = sub_1000E9B94();
      sub_1000127B0(v23, v24, v26, v18, v19, 0);

      v55 = v28;
      v59 = v27;
      v29 = os_log_type_enabled(v27, v28);
      v63 = v18;
      v64 = v21;
      v66 = v24;
      v30 = v19;
      if (v29)
      {
        v31 = swift_slowAlloc();
        v68[0] = swift_slowAlloc();
        *v31 = v56;
        v32 = sub_100081628(v57);
        v34 = sub_100093A3C(v32, v33, v68);

        *(v31 + 4) = v34;
        *(v31 + 12) = 2080;
        *(v31 + 14) = sub_100093A3C(v67, v66, v68);
        *(v31 + 22) = 2080;
        *(v31 + 24) = sub_100093A3C(v61, v64, v68);
        v35 = v59;
        _os_log_impl(&_mh_execute_header, v59, v55, "Look - renderer: %s value: %s name: %s", v31, 0x20u);
        swift_arrayDestroy();
      }

      else
      {
      }

      v5 = v58;
      LODWORD(v61) = v30;
      v36 = v62;
      if (v60)
      {
        v37 = objc_allocWithZone(PRPosterColor);
        v36 = v36;
        v38 = [v37 initWithColor:v36];
        v69 = sub_100012904(0, &qword_10012FAE0);
        v68[0] = v38;
        v39 = sub_1000E98E4();
        v40 = sub_1000E98E4();
        v41 = v69;
        if (v69)
        {
          v42 = sub_100012800(v68, v69);
          v62 = v54;
          v43 = *(v41 - 8);
          v44 = __chkstk_darwin(v42);
          v46 = v36;
          v47 = &v54[-((v45 + 15) & 0xFFFFFFFFFFFFFFF0)];
          (*(v43 + 16))(v47, v44);
          v48 = sub_1000E9F64();
          v49 = v47;
          v36 = v46;
          (*(v43 + 8))(v49, v41);
          sub_100012710(v68);
        }

        else
        {
          v48 = 0;
        }

        [objc_allocWithZone(PREditingLook) initWithIdentifier:v39 displayName:v40 initialTimeFontConfiguration:0 initialTitleColor:v48];

        swift_unknownObjectRelease();
        sub_1000E9A64();
        if (*((v70 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v70 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1000E9AB4();
        }

        sub_1000E9AD4();

        v4 = v70;
        v51 = v67;
      }

      else
      {
        v50 = objc_allocWithZone(PREditingLook);
        v51 = v67;
        v52 = sub_1000E98E4();
        v53 = sub_1000E98E4();
        [v50 initWithIdentifier:v52 displayName:v53];

        sub_1000E9A64();
        if (*((v70 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v70 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1000E9AB4();
        }

        sub_1000E9AD4();
        v4 = v70;
      }

      sub_1000127B0(v51, v66, v65, v63, v61, 0);

      goto LABEL_2;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10001225C(void *a1)
{
  v16[0] = 0;
  v1 = [objc_msgSend(a1 "sourceContents")];
  swift_unknownObjectRelease();
  v2 = v16[0];
  if (!v1)
  {
    v9 = v16[0];
    sub_1000E92E4();

    swift_willThrow();
    if (qword_10012F4C0 != -1)
    {
      swift_once();
    }

    v10 = sub_1000E96A4();
    sub_100007488(v10, qword_10012F4C8);
    v11 = sub_1000E9684();
    v12 = sub_1000E9B94();
    if (os_log_type_enabled(v11, v12))
    {
      v8 = 2;
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v11, v12, "no stored appearance mode, using fallback", v13, 2u);

      return v8;
    }

    return 2;
  }

  v3 = sub_1000E98A4();
  v4 = v2;

  strcpy(&v15, "appearanceMode");
  HIBYTE(v15._object) = -18;
  sub_1000E9D14();
  if (!*(v3 + 16) || (v5 = sub_10009F174(v16), (v6 & 1) == 0))
  {

    sub_100012844(v16);
    return 2;
  }

  sub_100012898(*(v3 + 56) + 32 * v5, v17);
  sub_100012844(v16);

  if ((swift_dynamicCast() & 1) == 0)
  {
    return 2;
  }

  v7._rawValue = &off_100119E80;
  v8 = sub_1000E9EC4(v7, v15);

  if (v8 >= 3)
  {
    return 2;
  }

  else
  {
    return v8;
  }
}

uint64_t sub_100012504(uint64_t a1)
{
  if (a1)
  {
    return *(a1 + 496);
  }

  if (qword_10012F4C0 != -1)
  {
    swift_once();
  }

  v2 = sub_1000E96A4();
  sub_100007488(v2, qword_10012F4C8);
  v3 = sub_1000E9684();
  v4 = sub_1000E9BA4();
  if (os_log_type_enabled(v3, v4))
  {
    v1 = 2;
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "no editing coordinator available to provide an appearance mode in finalization", v5, 2u);
  }

  else
  {

    return 2;
  }

  return v1;
}

uint64_t sub_1000125FC(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_100012644(uint64_t a1)
{
  v2 = sub_1000125FC(&qword_10012FA60);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000126F0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100012710(uint64_t a1)
{
  v1 = *(*(a1 + 24) - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

unint64_t sub_10001275C()
{
  result = qword_10012FAD0;
  if (!qword_10012FAD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012FAD0);
  }

  return result;
}

uint64_t sub_1000127B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{

  if (a6)
  {
  }

  return result;
}

void *sub_100012800(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_100012898(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_100012904(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

__n128 sub_100012960(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

__n128 sub_100012980(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_100012994(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 40))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000129B4(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 40) = v3;
  return result;
}

__n128 sub_100012A60(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

__n128 initializeBufferWithCopyOfBuffer for FluidityParameters.State(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_100012AB4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;

  return v2 + 16;
}

__n128 sub_100012AE4(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for FluidityParameters.Mask(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 2);
  *result = v2;
  return result;
}

__n128 sub_100012C88(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t storeEnumTagSinglePayload for SpaceScene.Light.Gobo.MaskGradient(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 24) = v3;
  return result;
}

void sub_100012CF0(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

__n128 sub_100012D88()
{
  result = matrix_identity_float4x4.columns[0];
  v1 = matrix_identity_float4x4.columns[1];
  v2 = matrix_identity_float4x4.columns[2];
  v3 = matrix_identity_float4x4.columns[3];
  xmmword_10013A960 = matrix_identity_float4x4.columns[0];
  *algn_10013A970 = v1;
  xmmword_10013A980 = v2;
  unk_10013A990 = v3;
  return result;
}

__n128 sub_100012DAC@<Q0>(_OWORD *a1@<X8>, __n128 a2@<Q0>, __n128 a3@<Q1>, __n128 a4@<Q2>)
{
  sub_1000125FC(&qword_100132540);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000ED250;
  *(inited + 32) = a2.n128_u64[0];
  *(inited + 40) = a2.n128_u32[2];
  sub_1000AB384(inited);
  v15 = v6;
  swift_setDeallocating();
  v7 = swift_initStackObject();
  *(v7 + 16) = xmmword_1000ED250;
  *(v7 + 32) = a3.n128_u64[0];
  *(v7 + 40) = a3.n128_u32[2];
  sub_1000AB384(v7);
  v13 = v8;
  swift_setDeallocating();
  v9 = swift_initStackObject();
  *(v9 + 16) = xmmword_1000ED250;
  *(v9 + 32) = a4.n128_u64[0];
  *(v9 + 40) = a4.n128_u32[2];
  sub_1000AB384(v9);
  v17 = v10;
  swift_setDeallocating();
  *a1 = v15;
  a1[1] = v13;
  result = v17;
  a1[2] = v17;
  return result;
}

double sub_100012EB4(float32x4_t a1, float32x4_t a2, float32x4_t a3, float32x4_t a4, float32x4_t a5)
{
  v9 = vaddq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(a2, a1.f32[0]), a3, *a1.f32, 1), a4, a1, 2), a5);
  sub_1000125FC(&qword_100132540);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000ED250;
  *(inited + 32) = v9.i64[0];
  *(inited + 40) = v9.i32[2];
  sub_1000AB384(inited);
  v8 = v6;
  swift_setDeallocating();
  *&result = vdivq_f32(v8, vdupq_laneq_s32(v9, 3)).u64[0];
  return result;
}

__n128 sub_100012F58()
{
  result = matrix_identity_float3x3.columns[0];
  v1 = matrix_identity_float3x3.columns[1];
  v2 = matrix_identity_float3x3.columns[2];
  xmmword_10013A9A0 = matrix_identity_float3x3.columns[0];
  *algn_10013A9B0 = v1;
  xmmword_10013A9C0 = v2;
  return result;
}

BOOL sub_100012F7C(float32x4_t *a1, float a2)
{
  v3 = 1.0 - a2;
  v4 = vmulq_f32(v2[2], a1[2]);
  if (v3 >= (v4.f32[2] + vaddv_f32(*v4.f32)))
  {
    return 0;
  }

  v5 = vmulq_f32(*a1, *v2);
  if (v3 >= (v5.f32[2] + vaddv_f32(*v5.f32)))
  {
    return 0;
  }

  v6 = vmulq_f32(v2[1], a1[1]);
  return v3 < (v6.f32[2] + vaddv_f32(*v6.f32));
}

double sub_100012FF0()
{
  *&result = 1065353216;
  *&xmmword_10013A9D0 = 1065353216;
  *(&xmmword_10013A9D0 + 1) = 0x3F80000000000000;
  qword_10013A9E0 = 0;
  return result;
}

double sub_100013014()
{
  result = 0.0;
  xmmword_10013A9F0 = xmmword_1000ED260;
  return result;
}

uint64_t sub_100013028()
{
  v1 = v0;
  v2 = [v0 threadExecutionWidth];
  v3 = [v0 maxTotalThreadsPerThreadgroup];
  result = [v1 threadExecutionWidth];
  if (result)
  {
    if (v3 != 0x8000000000000000 || result != -1)
    {
      sub_100013B98(v2, v3 / result, &v6);
      return v6;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1000130C0(uint64_t a1)
{
  if (a1 <= 69)
  {
    if ((a1 - 10) < 2)
    {
      return 1;
    }

    if (a1 == 25)
    {
      return 2;
    }
  }

  else
  {
    if ((a1 - 70) < 2 || (a1 - 80) < 2)
    {
      return 4;
    }

    if (a1 == 115)
    {
      return 8;
    }
  }

  sub_1000E9D64(27);
  v2._object = 0x80000001000F6800;
  v2._countAndFlagsBits = 0xD000000000000019;
  sub_1000E99A4(v2);
  type metadata accessor for MTLPixelFormat(0);
  sub_1000E9DF4();
  result = sub_1000E9E44();
  __break(1u);
  return result;
}

uint64_t sub_1000131E4(uint64_t a1)
{
  if (a1 <= 69)
  {
    if ((a1 - 10) < 2)
    {
      return 0;
    }

    if (a1 == 25)
    {
      return 4352;
    }
  }

  else
  {
    if ((a1 - 70) < 2)
    {
      return 16385;
    }

    if ((a1 - 80) < 2)
    {
      return 8194;
    }

    if (a1 == 115)
    {
      return 4353;
    }
  }

  sub_1000E9D64(27);
  v2._object = 0x80000001000F6800;
  v2._countAndFlagsBits = 0xD000000000000019;
  sub_1000E99A4(v2);
  type metadata accessor for MTLPixelFormat(0);
  sub_1000E9DF4();
  result = sub_1000E9E44();
  __break(1u);
  return result;
}

void sub_100013318()
{
  v0 = sub_100013BA8();
  static _MTLPackedFloat3.zero = LODWORD(v0);
  *algn_10013AA04 = v1;
  dword_10013AA08 = v2;
}

int *_MTLPackedFloat3.zero.unsafeMutableAddressor()
{
  if (qword_10012F500 != -1)
  {
    swift_once();
  }

  return &static _MTLPackedFloat3.zero;
}

float static _MTLPackedFloat3.zero.getter()
{
  if (qword_10012F500 != -1)
  {
    swift_once();
  }

  return *&static _MTLPackedFloat3.zero;
}

uint64_t sub_1000133E8()
{
  v0 = sub_1000E9674();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v2 = sub_1000125FC(&qword_10012FD98);
  __chkstk_darwin(v2 - 8);
  v4 = &v7 - v3;
  sub_100011C54(v0, qword_10013AA10);
  v5 = sub_100007488(v0, qword_10013AA10);
  sub_1000E9664();
  sub_1000E9644();
  result = (*(v1 + 48))(v4, 1, v0);
  if (result != 1)
  {
    return (*(v1 + 32))(v5, v4, v0);
  }

  __break(1u);
  return result;
}

void sub_10001358C(int32x4_t *a1@<X8>, float a2@<S0>, __n128 a3@<Q1>)
{
  v7 = __sincosf_stret(a2);
  *v5.i32 = v7.__cosval;
  *v4.i32 = v7.__sinval;
  if (fabsf(v7.__sinval) < 0.00001)
  {
    v6.i32[0] = 1.0;
    v8.i64[0] = 0x8000000080000000;
    v8.i64[1] = 0x8000000080000000;
    v9 = vbslq_s8(v8, v6, v5);
    if (v7.__cosval == 0.0)
    {
      *v9.i32 = 0.0;
    }

    v10 = a3.n128_f32[0];
    cosval = *v9.i32;
    v11 = a3.n128_f32[2];
    v12 = a3.n128_f32[1];
    if (a3.n128_f32[0] == 0.0)
    {
      if (a3.n128_f32[1] == 0.0)
      {
        v13 = 1.0;
        v9.i64[0] = 0;
        if (a3.n128_f32[2] == 1.0)
        {
          v62.i32[0] = 0;
LABEL_25:
          sub_1000125FC(&qword_10012FD90);
          v17 = swift_allocObject();
          v18 = __PAIR64__(v62.u32[0], LODWORD(cosval));
          v59 = __PAIR64__(v62.u32[0], LODWORD(cosval));
          *&v19 = -*v62.i32;
          *(&v19 + 1) = cosval;
          v65 = v19;
          v17[2] = v18;
          v17[3] = v19;
          v17[4] = xmmword_1000EC920;
          swift_setDeallocating();
          swift_deallocClassInstance();
          v20 = vzip1q_s32(v59, 0);
          v21 = vzip1q_s32(v65, 0);
          v22 = vzip1q_s32(v20, v21);
          v23 = vzip2q_s32(v20, v21);
          v22.i32[2] = 0;
          v23.i32[2] = 0;
          v24 = xmmword_1000EC920;
          goto LABEL_57;
        }

        if (a3.n128_f32[1] == 1.0)
        {
          v62.i32[0] = 0;
          if (a3.n128_f32[2] != 0.0)
          {
            goto LABEL_44;
          }

          goto LABEL_41;
        }

        v62 = v9;
LABEL_48:
        if (v10 != v13)
        {
          goto LABEL_51;
        }

LABEL_29:
        if (v11 != 0.0)
        {
          goto LABEL_51;
        }

        sub_1000125FC(&qword_10012FD90);
        v25 = swift_allocObject();
        v26.i32[0] = 0;
        v26.i32[3] = 0;
        *(v26.i64 + 4) = LODWORD(cosval);
        v55 = v26;
        v27 = v26;
        v27.i32[2] = v62.i32[0];
        v25[2] = xmmword_1000EC8E0;
        v25[3] = v27;
        LODWORD(v28) = 0;
        *(&v28 + 1) = -*v62.i32;
        *(&v28 + 1) = LODWORD(cosval);
        v25[4] = v28;
        swift_setDeallocating();
        swift_deallocClassInstance();
        v22 = xmmword_1000EC8E0;
        v23 = vzip2q_s32(xmmword_1000EC8E0, vzip1q_s32(v55, 0));
        v22.i32[1] = 0;
        v24 = vzip1q_s32(0, v62);
        v22.i32[2] = 0;
        *&v23.i32[2] = -*v62.i32;
LABEL_56:
        *&v24.i32[2] = cosval;
        goto LABEL_57;
      }

      v62.i32[0] = 0;
      goto LABEL_39;
    }

    v9.i64[0] = 0;
    if (a3.n128_f32[0] != 1.0)
    {
      v62.i32[0] = 0;
      goto LABEL_51;
    }

    v62 = v9;
LABEL_28:
    if (v12 != 0.0)
    {
      goto LABEL_51;
    }

    goto LABEL_29;
  }

  v10 = a3.n128_f32[0];
  if (fabsf(v7.__cosval) >= 0.00001)
  {
    v12 = a3.n128_f32[1];
    cosval = v7.__cosval;
    v62 = v4;
    v11 = a3.n128_f32[2];
    if (a3.n128_f32[0] == 0.0)
    {
      if (a3.n128_f32[1] == 0.0 && a3.n128_f32[2] == 1.0)
      {
        goto LABEL_25;
      }

      if (a3.n128_f32[1] == 1.0 && a3.n128_f32[2] == 0.0)
      {
        goto LABEL_41;
      }
    }

    if (a3.n128_f32[0] != 1.0)
    {
      goto LABEL_51;
    }

    goto LABEL_28;
  }

  v6.i32[0] = 1.0;
  v14.i64[0] = 0x8000000080000000;
  v14.i64[1] = 0x8000000080000000;
  LODWORD(v15) = vbslq_s8(v14, v6, v4).u32[0];
  if (v7.__sinval == 0.0)
  {
    *v4.i32 = 0.0;
  }

  else
  {
    *v4.i32 = v15;
  }

  v62 = v4;
  v11 = a3.n128_f32[2];
  v12 = a3.n128_f32[1];
  if (a3.n128_f32[0] != 0.0)
  {
    if (a3.n128_f32[0] != 1.0)
    {
      cosval = 0.0;
      goto LABEL_51;
    }

    cosval = 0.0;
    if (a3.n128_f32[1] == 0.0)
    {
      goto LABEL_29;
    }

    goto LABEL_51;
  }

  if (a3.n128_f32[1] == 0.0)
  {
    v13 = 1.0;
    if (a3.n128_f32[2] == 1.0)
    {
      cosval = 0.0;
      goto LABEL_25;
    }

    if (a3.n128_f32[1] == 1.0)
    {
      cosval = 0.0;
      if (a3.n128_f32[2] != 0.0)
      {
LABEL_44:
        v12 = 1.0;
        goto LABEL_51;
      }

      goto LABEL_41;
    }

    cosval = 0.0;
    goto LABEL_48;
  }

  cosval = 0.0;
LABEL_39:
  if (v12 == 1.0 && v11 == 0.0)
  {
LABEL_41:
    sub_1000125FC(&qword_10012FD90);
    v29 = swift_allocObject();
    *v30.i32 = -*v62.i32;
    v60 = v30;
    v31 = LODWORD(cosval);
    *(&v31 + 2) = -*v62.i32;
    v29[2] = v31;
    v29[3] = xmmword_1000EC910;
    *&v31 = v62.u32[0];
    *(&v31 + 1) = LODWORD(cosval);
    v29[4] = v31;
    swift_setDeallocating();
    swift_deallocClassInstance();
    v24 = v60;
    v22 = vzip1q_s32(LODWORD(cosval), v62.u32[0]);
    __asm { FMOV            V1.4S, #1.0 }

    v23 = vzip2q_s32(v22, _Q1);
    v22.i32[1] = 0;
    v24.i32[1] = 0;
    v22.i32[2] = v62.i32[0];
    v23.i32[2] = 0;
    goto LABEL_56;
  }

LABEL_51:
  v36 = (v11 * v11) + ((v10 * v10) + (v12 * v12));
  if (v36 != 0.0)
  {
    v37 = sqrtf(v36);
    v38 = (v10 / v37) * (v10 / v37);
    v39 = (v12 / v37) * (v12 / v37);
    v56 = (v11 / v37) * (v11 / v37);
    v40 = ((v10 / v37) * (v12 / v37)) * (1.0 - cosval);
    v41 = ((v12 / v37) * (v11 / v37)) * (1.0 - cosval);
    v42 = ((v11 / v37) * (v10 / v37)) * (1.0 - cosval);
    v43 = (v10 / v37) * *v62.i32;
    v44 = (v12 / v37) * *v62.i32;
    v45 = (v11 / v37) * *v62.i32;
    sub_1000125FC(&qword_10012FD90);
    v46 = swift_allocObject();
    *&v47 = v38 + ((1.0 - v38) * cosval);
    *v48.i32 = v42 - v44;
    *(&v47 + 1) = v45 + v40;
    v61 = v48;
    v63 = v47;
    v49 = v47;
    *(&v49 + 2) = v42 - v44;
    *&v50 = v40 - v45;
    *(&v50 + 1) = v39 + ((1.0 - v39) * cosval);
    v54 = v50;
    v51 = v50;
    *(&v51 + 2) = v43 + v41;
    v46[2] = v49;
    v46[3] = v51;
    cosval = v56 + ((1.0 - v56) * cosval);
    *&v49 = v44 + v42;
    *(&v49 + 1) = v41 - v43;
    v57 = v49;
    *(&v49 + 1) = LODWORD(cosval);
    v46[4] = v49;
    swift_setDeallocating();
    swift_deallocClassInstance();
    v52 = vzip1q_s32(v63, v57);
    v53 = vzip1q_s32(v54, 0);
    v22 = vzip1q_s32(v52, v53);
    v23 = vzip2q_s32(v52, v53);
    v24 = v61;
    *&v22.i32[2] = v44 + v42;
    *&v23.i32[2] = v41 - v43;
    *&v24.i32[1] = v43 + v41;
    goto LABEL_56;
  }

  if (qword_10012F4E8 != -1)
  {
    swift_once();
  }

  v22 = xmmword_10013A9A0;
  v23 = *algn_10013A9B0;
  v24 = xmmword_10013A9C0;
LABEL_57:
  *a1 = v22;
  a1[1] = v23;
  a1[2] = v24;
}

uint64_t sub_100013B98@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  a3[2] = 1;
  return result;
}

uint64_t getEnumTagSinglePayload for WallpaperMetalRenderingFloatingLayerStyle(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for WallpaperMetalRenderingFloatingLayerStyle(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_100013D18()
{
  result = qword_10012FDA0;
  if (!qword_10012FDA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012FDA0);
  }

  return result;
}

Swift::Int sub_100013D6C()
{
  v1 = *v0;
  sub_1000EA024();
  sub_1000EA034(v1);
  return sub_1000EA064();
}

Swift::Int sub_100013DB4()
{
  v1 = *v0;
  sub_1000EA024();
  sub_1000EA034(v1);
  return sub_1000EA064();
}

void sub_100013E0C()
{
  v0 = kCGColorSpaceExtendedSRGB;
  v1 = CGColorSpaceCreateWithName(v0);

  qword_10013AA28 = v1;
}

void sub_100013E50()
{
  v0 = [objc_opt_self() currentDevice];
  v1 = [v0 userInterfaceIdiom];

  byte_10012FDB0 = v1 != 1;
}

size_t sub_100013EC4(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  swift_unknownObjectRetain();
  v8 = [a3 contents];
  result = [a3 length];
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  memmove(v8, (a2 + 32), result);
  v10 = [swift_unknownObjectRetain() contents];
  result = [a4 length];
  if ((result & 0x8000000000000000) != 0)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  return memmove(v10, (a1 + 32), result);
}

uint64_t sub_100013F98()
{
  if (qword_10012F518 != -1)
  {
    result = swift_once();
  }

  if (byte_10012FDB0)
  {
    v0 = 4;
  }

  else
  {
    v0 = 5;
  }

  dword_10012FDB4 = v0;
  return result;
}

uint64_t sub_100013FFC()
{
  if (qword_10012F518 != -1)
  {
    result = swift_once();
  }

  if (byte_10012FDB0)
  {
    v0 = 0;
  }

  else
  {
    v0 = 8;
  }

  word_10012FDB8 = v0;
  return result;
}

uint64_t sub_100014060()
{
  if (qword_10012F528 != -1)
  {
    result = swift_once();
  }

  if ((word_10012FDB8 + 3) == word_10012FDB8 + 3)
  {
    word_10012FDBA = word_10012FDB8 + 3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1000140CC(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = v4;
  v10 = sub_1000E93B4();
  __chkstk_darwin(v10);
  v14 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v5 + OBJC_IVAR____TtC22MercuryPosterExtension25FluidityWallpaperRenderer_loader);
  if (v15)
  {
    v43 = v11;
    v44 = v12;
    v16 = objc_opt_self();
    v45 = v15;
    v17 = [v16 mainBundle];
    v18 = sub_1000E98E4();
    v19 = a3;
    v20 = sub_1000E98E4();
    v21 = [v17 URLForResource:v18 withExtension:v20];

    if (v21)
    {
      sub_1000E9364();

      sub_1000E9344(v22);
      v24 = v23;
      type metadata accessor for Option(0);
      sub_100019214();
      isa = sub_1000E9894().super.isa;
      v46 = 0;
      v26 = v45;
      v27 = [v45 newTextureWithContentsOfURL:v24 options:isa error:&v46];

      if (v27)
      {
        v28 = *(v44 + 8);
        v29 = v46;
        v28(v14, v43);

        return v27;
      }

      v42 = v46;
      sub_1000E92E4();

      swift_willThrow();

      (*(v44 + 8))(v14, v43);
    }

    else
    {
      v35 = a1;
      v36 = a4;
      v37 = v45;
      if (qword_10012F768 != -1)
      {
        swift_once();
      }

      v38 = sub_1000E96A4();
      sub_100007488(v38, qword_10013DE00);

      v39 = sub_1000E9684();
      v40 = sub_1000E9BA4();

      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        v46 = swift_slowAlloc();
        *v41 = 136315394;
        *(v41 + 4) = sub_100093A3C(v35, a2, &v46);
        *(v41 + 12) = 2080;
        *(v41 + 14) = sub_100093A3C(v19, v36, &v46);
        _os_log_impl(&_mh_execute_header, v39, v40, "Couldn't find url for texture: %s.%s", v41, 0x16u);
        swift_arrayDestroy();
      }
    }
  }

  else
  {
    if (qword_10012F768 != -1)
    {
      swift_once();
    }

    v31 = sub_1000E96A4();
    sub_100007488(v31, qword_10013DE00);
    v32 = sub_1000E9684();
    v33 = sub_1000E9BA4();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&_mh_execute_header, v32, v33, "Couldn't find metal texture loader", v34, 2u);
    }
  }

  return 0;
}

void sub_100014580(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = v6;
  v200 = a3;
  v201 = a6;
  v192 = a4;
  v193 = a5;
  v202 = a1;
  v9 = sub_1000E93B4();
  v195 = *(v9 - 8);
  __chkstk_darwin(v9);
  v190 = &v182 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v191 = &v182 - v12;
  __chkstk_darwin(v13);
  v15 = &v182 - v14;
  __chkstk_darwin(v16);
  v197 = &v182 - v17;
  *(v6 + 16) = 0;
  *(v6 + 24) = 0u;
  *(v6 + 40) = 0u;
  *(v6 + 56) = 0u;
  *(v6 + 72) = 0;
  *(v6 + 76) = 0u;
  *(v6 + 96) = 0u;
  *(v6 + 112) = 0u;
  *(v6 + 128) = 0u;
  *(v6 + 144) = 0u;
  *(v6 + 160) = 0u;
  *(v6 + 176) = 0u;
  *(v6 + 192) = 0u;
  *(v6 + 208) = 0u;
  *(v6 + 224) = 0u;
  *(v6 + 240) = 0u;
  *(v6 + 256) = 0u;
  *(v6 + 272) = 0u;
  *(v6 + 288) = 0u;
  *(v6 + 304) = 0u;
  *(v6 + 320) = 0u;
  *(v6 + 336) = 0u;
  v189 = (v6 + 392);
  *(v6 + 392) = 0u;
  *(v6 + 432) = xmmword_1000EC8E0;
  *(v6 + 448) = xmmword_1000EC910;
  *(v6 + 464) = xmmword_1000EC920;
  *(v6 + 480) = xmmword_1000ED260;
  v18 = objc_opt_self();
  *(v6 + 496) = [v18 functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
  *(v6 + 504) = [v18 functionWithName:kCAMediaTimingFunctionEaseOut];
  *(v6 + 512) = _swiftEmptyArrayStorage;
  *(v6 + 520) = 0;
  LOBYTE(v207[0]) = 0;
  v205[0] = 0;
  *(v6 + 1008) = 0;
  *(v6 + 1016) = 1065353216;
  *(v6 + 1020) = 0;
  *(v6 + 1022) = 0;
  *(v6 + 1024) = xmmword_1000EC890;
  *(v6 + 1040) = 0u;
  *(v6 + 1056) = 0;
  *(v6 + 1060) = 0;
  *(v6 + 1064) = 1;
  *(v6 + 1072) = 0u;
  *(v6 + 1088) = 0u;
  *(v6 + 1104) = 0;
  *(v6 + 1112) = 0u;
  *(v6 + 1128) = 0u;
  *(v6 + 1152) = 0;
  *(v6 + 1160) = 0u;
  *(v6 + 1208) = 0x3FF0000000000000;
  *(v6 + 1200) = 0;
  *(v6 + 1184) = 0u;
  *(v6 + 1216) = 0;
  *(v6 + 1224) = 0;
  *(v6 + 1248) = 0;
  *(v6 + 1232) = 0u;
  v19 = OBJC_IVAR____TtC22MercuryPosterExtension25FluidityWallpaperRenderer_lastRenderingState;
  v20 = type metadata accessor for FluidityWallpaperRenderer.RenderingState(0);
  v21 = *(*(v20 - 8) + 56);
  v199 = v19;
  v21(v8 + v19, 1, 1, v20);
  v22 = OBJC_IVAR____TtC22MercuryPosterExtension25FluidityWallpaperRenderer_loaderOptions;
  sub_1000125FC(&unk_100130390);
  v23 = swift_allocObject();
  v24 = MTKTextureLoaderOptionTextureStorageMode;
  *(v23 + 32) = MTKTextureLoaderOptionTextureStorageMode;
  *(v23 + 16) = xmmword_1000EC870;
  *(v23 + 64) = &type metadata for UInt;
  *(v23 + 40) = 2;
  v25 = v24;
  v26 = sub_1000A0EDC(v23);
  swift_setDeallocating();
  sub_1000047C4(v23 + 32, &unk_100130CE0);
  swift_deallocClassInstance();
  v198 = v22;
  *(v8 + v22) = v26;
  if (qword_10012F768 != -1)
  {
    swift_once();
  }

  v196 = v9;
  v27 = sub_1000E96A4();
  v194 = sub_100007488(v27, qword_10013DE00);
  v28 = sub_1000E9684();
  v29 = sub_1000E9BB4();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    *v30 = 0;
    _os_log_impl(&_mh_execute_header, v28, v29, "Initializing Fluidity Wallpaper", v30, 2u);
  }

  v31 = objc_opt_self();
  v32 = [v31 mainBundle];
  v33 = sub_1000E98E4();
  v34 = sub_1000E98E4();
  v35 = [v32 URLForResource:v33 withExtension:v34];

  if (!v35)
  {

    v46 = sub_1000E9684();
    v47 = sub_1000E9BA4();
    v48 = os_log_type_enabled(v46, v47);
    v45 = v199;
    if (v48)
    {
      v49 = swift_slowAlloc();
      *v49 = 0;
      _os_log_impl(&_mh_execute_header, v46, v47, "Error: Could not find the configuration file.", v49, 2u);
    }

    sub_100018380();
    swift_allocError();
    *v50 = 0;
    swift_willThrow();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    v41 = 0;
    v42 = 0;
    v43 = 0;
    v44 = 0;
LABEL_12:
    sub_1000056DC(*(v8 + 24));
    sub_1000056DC(*(v8 + 40));

    if (v41)
    {
      swift_unknownObjectRelease();
      if (!v42)
      {
        goto LABEL_14;
      }
    }

    else if (!v42)
    {
LABEL_14:
      if (!v43)
      {
LABEL_16:
        if (v44)
        {
          swift_unknownObjectRelease();
        }

        swift_unknownObjectRelease();
        swift_unknownObjectRelease();

        v51 = *(v8 + 1184);
        v207[10] = *(v8 + 1168);
        v207[11] = v51;
        v207[12] = *(v8 + 1200);
        v208 = *(v8 + 1216);
        v52 = *(v8 + 1120);
        v207[6] = *(v8 + 1104);
        v207[7] = v52;
        v53 = *(v8 + 1152);
        v207[8] = *(v8 + 1136);
        v207[9] = v53;
        v54 = *(v8 + 1056);
        v207[2] = *(v8 + 1040);
        v207[3] = v54;
        v55 = *(v8 + 1088);
        v207[4] = *(v8 + 1072);
        v207[5] = v55;
        v56 = *(v8 + 1024);
        v207[0] = *(v8 + 1008);
        v207[1] = v56;
        sub_100004D30(v207);

        sub_1000047C4(v8 + v45, &unk_1001303A8);

        type metadata accessor for FluidityWallpaperRenderer(0);
        swift_deallocPartialClassInstance();
        return;
      }

LABEL_15:
      swift_unknownObjectRelease();
      goto LABEL_16;
    }

    swift_unknownObjectRelease();
    if (!v43)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  sub_1000E9364();

  v36 = v195;
  v37 = v196;
  v38 = v197;
  v39 = v15;
  v40 = *(v195 + 32);
  v40(v197, v39, v196);
  sub_100018ACC(v38, v206);
  if (v7)
  {
    swift_unknownObjectRelease();

    swift_unknownObjectRelease();
    (*(v36 + 8))(v38, v37);
    v41 = 0;
    v42 = 0;
    v43 = 0;
    v44 = 0;
LABEL_8:
    v45 = v199;
    goto LABEL_12;
  }

  v185 = v40;
  memcpy((v8 + 528), v206, 0x1D4uLL);
  *(v8 + 360) = v202;
  v57 = v193;
  *(v8 + 408) = v192;
  *(v8 + 416) = v57;
  v58 = [swift_unknownObjectRetain() newDefaultLibrary];
  if (!v58)
  {

    v136 = sub_1000E9684();
    v137 = sub_1000E9BA4();
    v138 = os_log_type_enabled(v136, v137);
    v45 = v199;
    if (v138)
    {
      v139 = swift_slowAlloc();
      *v139 = 0;
      _os_log_impl(&_mh_execute_header, v136, v137, "Error: Failed to load Metal libary.", v139, 2u);
    }

    sub_100018380();
    swift_allocError();
    *v140 = 0;
    swift_willThrow();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    (*(v36 + 8))(v197, v37);
    v42 = 0;
    v43 = 0;
    v44 = 0;
    v41 = 1;
    goto LABEL_12;
  }

  v183 = 0;
  v184 = v31;
  v59 = v58;
  v60 = [objc_allocWithZone(MTLRenderPipelineDescriptor) init];
  v61 = sub_1000E98E4();
  v62 = [v59 newFunctionWithName:v61];

  [v60 setVertexFunction:v62];
  swift_unknownObjectRelease();
  v63 = sub_1000E98E4();
  v188 = v59;
  v64 = [v59 newFunctionWithName:v63];

  [v60 setFragmentFunction:v64];
  swift_unknownObjectRelease();
  v65 = [v60 colorAttachments];
  v66 = [v65 objectAtIndexedSubscript:0];

  if (!v66)
  {
    __break(1u);
    goto LABEL_73;
  }

  [v66 setWriteMask:0];

  v67 = [v60 colorAttachments];
  v68 = [v67 objectAtIndexedSubscript:0];

  if (!v68)
  {
LABEL_73:
    __break(1u);
    goto LABEL_74;
  }

  [v68 setPixelFormat:80];

  v69 = [v60 colorAttachments];
  v70 = [v69 objectAtIndexedSubscript:1];

  if (!v70)
  {
LABEL_74:
    __break(1u);
    goto LABEL_75;
  }

  [v70 setWriteMask:15];

  v71 = [v60 colorAttachments];
  v72 = [v71 objectAtIndexedSubscript:1];

  if (!v72)
  {
LABEL_75:
    __break(1u);
    goto LABEL_76;
  }

  [v72 setPixelFormat:105];

  v73 = [v60 colorAttachments];
  v74 = [v73 objectAtIndexedSubscript:1];

  if (!v74)
  {
LABEL_76:
    __break(1u);
    goto LABEL_77;
  }

  [v74 setBlendingEnabled:1];

  v75 = [v60 colorAttachments];
  v76 = [v75 objectAtIndexedSubscript:1];

  if (!v76)
  {
LABEL_77:
    __break(1u);
    goto LABEL_78;
  }

  [v76 setRgbBlendOperation:0];

  v77 = [v60 colorAttachments];
  v78 = [v77 objectAtIndexedSubscript:1];

  if (!v78)
  {
LABEL_78:
    __break(1u);
    goto LABEL_79;
  }

  [v78 setAlphaBlendOperation:0];

  v79 = [v60 colorAttachments];
  v80 = [v79 objectAtIndexedSubscript:1];

  if (!v80)
  {
LABEL_79:
    __break(1u);
    goto LABEL_80;
  }

  [v80 setSourceRGBBlendFactor:4];

  v81 = [v60 colorAttachments];
  v82 = [v81 objectAtIndexedSubscript:1];

  if (!v82)
  {
LABEL_80:
    __break(1u);
    goto LABEL_81;
  }

  [v82 setSourceAlphaBlendFactor:4];

  v83 = [v60 colorAttachments];
  v84 = [v83 objectAtIndexedSubscript:1];

  if (!v84)
  {
LABEL_81:
    __break(1u);
    goto LABEL_82;
  }

  [v84 setDestinationRGBBlendFactor:1];

  v85 = [v60 colorAttachments];
  v86 = [v85 objectAtIndexedSubscript:1];

  if (!v86)
  {
LABEL_82:
    __break(1u);
LABEL_83:
    __break(1u);
    goto LABEL_84;
  }

  [v86 setDestinationAlphaBlendFactor:8];

  *&v207[0] = 0;
  v187 = v60;
  v87 = [v202 newRenderPipelineStateWithDescriptor:v60 error:v207];
  v88 = *&v207[0];
  if (!v87)
  {
    v150 = *&v207[0];

    sub_1000E92E4();

    swift_willThrow();
    swift_errorRetain();
    v151 = sub_1000E9684();
    v152 = sub_1000E9BA4();

    if (os_log_type_enabled(v151, v152))
    {
      v153 = swift_slowAlloc();
      v154 = swift_slowAlloc();
      *v153 = 138543362;
      swift_errorRetain();
      v155 = _swift_stdlib_bridgeErrorToNSError();
      *(v153 + 4) = v155;
      *v154 = v155;
      _os_log_impl(&_mh_execute_header, v151, v152, "Error: Failed to create SDF pipeline state. %{public}@", v153, 0xCu);
      sub_1000047C4(v154, &qword_10012FA60);
    }

    sub_100018380();
    swift_allocError();
    *v156 = 0;
    swift_willThrow();
    swift_unknownObjectRelease();

    swift_unknownObjectRelease();

    swift_unknownObjectRelease();
    (*(v195 + 8))(v197, v196);
    v42 = 0;
    v43 = 0;
    v44 = 0;
    v41 = 1;
    goto LABEL_8;
  }

  *(v8 + 368) = v87;
  v89 = objc_allocWithZone(MTLFunctionConstantValues);
  v90 = v88;
  v91 = [v89 init];
  if (qword_10012F518 != -1)
  {
    swift_once();
  }

  v205[0] = byte_10012FDB0;
  [v91 setConstantValue:v205 type:53 atIndex:0];
  v204 = 0;
  [v91 setConstantValue:&v204 type:53 atIndex:2];
  v203 = 0;
  v92 = [objc_allocWithZone(MTLRenderPipelineDescriptor) init];
  v93 = sub_1000E98E4();
  v94 = [v188 newFunctionWithName:v93];

  [v92 setVertexFunction:v94];
  swift_unknownObjectRelease();
  v95 = [v92 colorAttachments];
  v96 = [v95 objectAtIndexedSubscript:0];

  if (!v96)
  {
    goto LABEL_83;
  }

  [v96 setPixelFormat:80];

  v97 = [v92 colorAttachments];
  v98 = [v97 objectAtIndexedSubscript:1];

  if (!v98)
  {
LABEL_84:
    __break(1u);
    goto LABEL_85;
  }

  [v98 setPixelFormat:105];

  v186 = v92;
  v99 = [v92 colorAttachments];
  v100 = [v99 objectAtIndexedSubscript:1];

  if (!v100)
  {
LABEL_85:
    __break(1u);
    return;
  }

  [v100 setWriteMask:0];

  [v91 setConstantValue:&v203 type:53 atIndex:1];
  v101 = sub_1000E98E4();
  *&v207[0] = 0;
  v200 = v91;
  v102 = [v188 newFunctionWithName:v101 constantValues:? error:?];

  v103 = *&v207[0];
  v104 = v184;
  if (!v102 || (v105 = *&v207[0], v106 = v186, [v186 setFragmentFunction:v102], swift_unknownObjectRelease(), *&v207[0] = 0, v107 = objc_msgSend(v202, "newRenderPipelineStateWithDescriptor:error:", v106, v207), v103 = *&v207[0], !v107))
  {
    v141 = v103;
    sub_1000E92E4();

    swift_willThrow();
    swift_errorRetain();
    v142 = sub_1000E9684();
    v143 = sub_1000E9BA4();

    v144 = os_log_type_enabled(v142, v143);
    v145 = v196;
    if (v144)
    {
      v146 = swift_slowAlloc();
      v147 = swift_slowAlloc();
      *v146 = 138543362;
      swift_errorRetain();
      v148 = _swift_stdlib_bridgeErrorToNSError();
      *(v146 + 4) = v148;
      *v147 = v148;
      _os_log_impl(&_mh_execute_header, v142, v143, "Error: Failed to create static render pipeline state. %{public}@", v146, 0xCu);
      sub_1000047C4(v147, &qword_10012FA60);
    }

    sub_100018380();
    swift_allocError();
    *v149 = 0;
    swift_willThrow();
    swift_unknownObjectRelease();

    swift_unknownObjectRelease();

    swift_unknownObjectRelease();
    (*(v195 + 8))(v197, v145);
    v43 = 0;
    v44 = 0;
    v41 = 1;
    v42 = 1;
    goto LABEL_8;
  }

  *(v8 + 376) = v107;
  v203 = 1;
  v108 = v103;
  v109 = v200;
  [v200 setConstantValue:&v203 type:53 atIndex:1];
  v110 = sub_1000E98E4();
  *&v207[0] = 0;
  v111 = [v188 newFunctionWithName:v110 constantValues:v109 error:v207];

  v112 = *&v207[0];
  if (!v111)
  {
    v116 = v196;
    goto LABEL_60;
  }

  v113 = *&v207[0];
  v114 = v186;
  [v186 setFragmentFunction:v111];
  swift_unknownObjectRelease();
  *&v207[0] = 0;
  v115 = [v202 newRenderPipelineStateWithDescriptor:v114 error:v207];
  v112 = *&v207[0];
  v116 = v196;
  if (!v115)
  {
LABEL_60:
    v157 = v112;
    sub_1000E92E4();

    swift_willThrow();
    v158 = sub_1000E9684();
    v159 = sub_1000E9BA4();
    v160 = os_log_type_enabled(v158, v159);
    v45 = v199;
    if (v160)
    {
      v161 = swift_slowAlloc();
      *v161 = 0;
      _os_log_impl(&_mh_execute_header, v158, v159, "Error: Failed to create blending render pipeline state.", v161, 2u);
    }

    sub_100018380();
    swift_allocError();
    *v162 = 0;
    swift_willThrow();

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    (*(v195 + 8))(v197, v116);
    v44 = 0;
    v41 = 1;
    v42 = 1;
    v43 = 1;
    goto LABEL_12;
  }

  *(v8 + 384) = v115;
  v117 = v112;
  v118 = [v104 mainBundle];
  v119 = sub_1000E98E4();
  v120 = sub_1000E98E4();
  v121 = [v118 URLForResource:v119 withExtension:v120];

  if (!v121)
  {
    v163 = sub_1000E9684();
    v164 = sub_1000E9BA4();
    v165 = os_log_type_enabled(v163, v164);
    v166 = v195;
    if (v165)
    {
      v167 = swift_slowAlloc();
      *v167 = 0;
      _os_log_impl(&_mh_execute_header, v163, v164, "Could not find color configuration.", v167, 2u);
    }

    sub_100018380();
    swift_allocError();
    *v168 = 0;
    swift_willThrow();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    swift_unknownObjectRelease();
    (*(v166 + 8))(v197, v116);
    v41 = 1;
    v42 = 1;
    v43 = 1;
    v44 = 1;
    goto LABEL_8;
  }

  v122 = v190;
  sub_1000E9364();

  v185(v191, v122, v116);
  v123 = v183;
  v124 = sub_1000E93D4();
  v126 = v195;
  if (v123)
  {
    v129 = sub_1000E9684();
    v130 = sub_1000E9BA4();
    v131 = os_log_type_enabled(v129, v130);
    v132 = v196;
    if (v131)
    {
      v133 = swift_slowAlloc();
      *v133 = 0;
      _os_log_impl(&_mh_execute_header, v129, v130, "Could not decode color configuration.", v133, 2u);
      v126 = v195;
    }

    sub_100018380();
    swift_allocError();
    *v134 = 0;
    swift_willThrow();

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    v135 = *(v126 + 8);
    v135(v191, v132);
    v135(v197, v132);
    v41 = 1;
    v42 = 1;
    v43 = 1;
    v44 = 1;
    v45 = v199;
    goto LABEL_12;
  }

  v127 = v124;
  v128 = v125;
  sub_1000E9174();
  swift_allocObject();
  sub_1000E9164();
  sub_1000125FC(&qword_1001303B8);
  sub_100018FC4();
  sub_1000E9154();
  v169 = *(v195 + 8);
  v169(v191, v196);

  sub_1000190E4(v127, v128);
  *(v8 + 352) = *&v207[0];
  v170 = objc_allocWithZone(MTKTextureLoader);
  v171 = v202;
  v172 = [v170 initWithDevice:v202];
  *(v8 + OBJC_IVAR____TtC22MercuryPosterExtension25FluidityWallpaperRenderer_loader) = v172;
  *(v8 + 400) = sub_1000140CC(1936744813, 0xE400000000000000, 6711668, 0xE300000000000000);
  swift_unknownObjectRelease();
  if (*(v8 + 392) || (v173 = [objc_opt_self() texture2DDescriptorWithPixelFormat:105 width:v192 height:v193 mipmapped:0], objc_msgSend(v173, "setTextureType:", 2), objc_msgSend(v173, "setStorageMode:", 3), objc_msgSend(v173, "setUsage:", 5), v174 = objc_msgSend(v171, "newTextureWithDescriptor:", v173), v173, v175 = v189, *v189 = v174, swift_unknownObjectRelease(), *v175))
  {
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    swift_unknownObjectRelease();
    v169(v197, v196);
  }

  else
  {
    v176 = sub_1000E9684();
    v177 = sub_1000E9BA4();
    v178 = os_log_type_enabled(v176, v177);
    v179 = v187;
    if (v178)
    {
      v180 = swift_slowAlloc();
      *v180 = 0;
      _os_log_impl(&_mh_execute_header, v176, v177, "Failed to create SDF render texture.", v180, 2u);
    }

    sub_100018380();
    swift_allocError();
    *v181 = 0;
    swift_willThrow();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    swift_unknownObjectRelease();
    v169(v197, v196);
  }
}