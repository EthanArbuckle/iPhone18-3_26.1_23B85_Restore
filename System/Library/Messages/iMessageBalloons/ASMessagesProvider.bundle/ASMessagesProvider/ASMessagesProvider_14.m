void sub_198304()
{
  v1 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_eyebrowLabel);
  if (v1)
  {
    v2 = [v1 text];
    if (v2)
    {
      v3 = v2;
      v4 = sub_769240();
      v6 = v5;
    }

    else
    {
      v4 = 0;
      v6 = 0;
    }

    v30 = v4;
    v31 = v6;
  }

  else
  {
    v30 = 0;
    v31 = 0;
  }

  v7 = [*(v0 + OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_titleLabel) text];
  if (v7)
  {
    v8 = v7;
    v9 = sub_769240();
    v11 = v10;
  }

  else
  {
    v9 = 0;
    v11 = 0;
  }

  v32 = v9;
  v33 = v11;
  v12 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_detailLabel);
  if (v12)
  {
    v13 = [v12 text];
    if (v13)
    {
      v14 = v13;
      v15 = sub_769240();
      v17 = v16;
    }

    else
    {
      v15 = 0;
      v17 = 0;
    }

    v34 = v15;
    v35 = v17;
  }

  else
  {
    v34 = 0;
    v35 = 0;
  }

  v18 = 0;
  v19 = _swiftEmptyArrayStorage;
LABEL_17:
  if (v18 <= 3)
  {
    v20 = 3;
  }

  else
  {
    v20 = v18;
  }

  v21 = v20 + 1;
  v22 = 16 * v18 + 40;
  while (1)
  {
    if (v18 == 3)
    {
      sub_BD88(&qword_941BA0);
      swift_arrayDestroy();
      sub_BD88(&unk_947FF0);
      sub_5FBA8();
      sub_7691A0();

      return;
    }

    if (v21 == ++v18)
    {
      break;
    }

    v23 = v22 + 16;
    v24 = *&v29[v22];
    v22 += 16;
    if (v24)
    {
      v25 = *&v29[v23 - 24];

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v19 = sub_7B5CC(0, *(v19 + 2) + 1, 1, v19);
      }

      v27 = *(v19 + 2);
      v26 = *(v19 + 3);
      if (v27 >= v26 >> 1)
      {
        v19 = sub_7B5CC((v26 > 1), v27 + 1, 1, v19);
      }

      *(v19 + 2) = v27 + 1;
      v28 = &v19[16 * v27];
      *(v28 + 4) = v25;
      *(v28 + 5) = v24;
      goto LABEL_17;
    }
  }

  __break(1u);
}

uint64_t sub_198770()
{
  v7.receiver = v0;
  v7.super_class = type metadata accessor for TitleHeaderView(0);
  v1 = objc_msgSendSuper2(&v7, "_accessibilitySupplementaryFooterViews");
  if (v1)
  {
    v2 = v1;
    v3 = sub_769460();
  }

  else
  {
    v3 = 0;
  }

  v4 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_accessoryView];
  if (v4)
  {
    v5 = v4;

    sub_BD88(&qword_941C10);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_77B6D0;
    *(v3 + 56) = sub_BE70(0, &qword_93E550);
    *(v3 + 32) = v5;
  }

  return v3;
}

id sub_1988CC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TitleHeaderView(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_198A78()
{
  type metadata accessor for TitleHeaderView.Style(319);
  if (v0 <= 0x3F)
  {
    sub_19909C(319, &qword_947E10, type metadata accessor for Accessory);
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_198BF0(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for TitleHeaderView.TextConfiguration(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_10:

    return v9(v10, a2, v8);
  }

  v11 = sub_BD88(&qword_9439E0);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[6];
LABEL_9:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_10;
  }

  v14 = sub_75CFD0();
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[10];
    goto LABEL_9;
  }

  v15 = sub_75CFE0();
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[11];
    goto LABEL_9;
  }

  v17 = *(a1 + a3[13]);
  if (v17 >= 0xFFFFFFFF)
  {
    LODWORD(v17) = -1;
  }

  return (v17 + 1);
}

uint64_t sub_198DCC(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = type metadata accessor for TitleHeaderView.TextConfiguration(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    v13 = sub_BD88(&qword_9439E0);
    if (*(*(v13 - 8) + 84) == a3)
    {
      v10 = v13;
      v14 = *(v13 - 8);
      v15 = a4[6];
    }

    else
    {
      v16 = sub_75CFD0();
      if (*(*(v16 - 8) + 84) == a3)
      {
        v10 = v16;
        v14 = *(v16 - 8);
        v15 = a4[10];
      }

      else
      {
        result = sub_75CFE0();
        if (*(*(result - 8) + 84) != a3)
        {
          *(a1 + a4[13]) = (a2 - 1);
          return result;
        }

        v10 = result;
        v14 = *(result - 8);
        v15 = a4[11];
      }
    }

    v11 = *(v14 + 56);
    v12 = a1 + v15;
  }

  return v11(v12, a2, a2, v10);
}

void sub_198F70()
{
  type metadata accessor for TitleHeaderView.TextConfiguration(319);
  if (v0 <= 0x3F)
  {
    sub_19909C(319, &qword_947E88, type metadata accessor for TitleHeaderView.TextConfiguration);
    if (v1 <= 0x3F)
    {
      sub_75CFD0();
      if (v2 <= 0x3F)
      {
        sub_75CFE0();
        if (v3 <= 0x3F)
        {
          sub_1990F0();
          if (v4 <= 0x3F)
          {
            sub_BE70(319, &qword_93E540);
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

void sub_19909C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_76A480();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1990F0()
{
  if (!qword_947E90[0])
  {
    sub_BE70(255, &qword_93E540);
    v0 = sub_76A480();
    if (!v1)
    {
      atomic_store(v0, qword_947E90);
    }
  }
}

uint64_t sub_19917C(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_7666D0();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 24);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_766CA0();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 36);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_1992B4(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = sub_7666D0();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_766CA0();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 36);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_1993D8()
{
  sub_BE70(319, &qword_93E540);
  if (v0 <= 0x3F)
  {
    sub_1994D4();
    if (v1 <= 0x3F)
    {
      sub_7666D0();
      if (v2 <= 0x3F)
      {
        sub_766CA0();
        if (v3 <= 0x3F)
        {
          sub_199524();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1994D4()
{
  if (!qword_94E860)
  {
    v0 = sub_76A480();
    if (!v1)
    {
      atomic_store(v0, &qword_94E860);
    }
  }
}

unint64_t sub_199524()
{
  result = qword_943C60;
  if (!qword_943C60)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_943C60);
  }

  return result;
}

unint64_t sub_19958C()
{
  result = qword_947FA0;
  if (!qword_947FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_947FA0);
  }

  return result;
}

id sub_1995E0(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, double a9, double a10, double a11, double a12, uint64_t a13, int *a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18)
{
  v326 = a6;
  v327 = a8;
  v286 = a7;
  v323 = a1;
  v324 = a5;
  v322 = a4;
  v295 = a3;
  v332 = a2;
  v319 = a9;
  v320 = a10;
  v338 = a16;
  v20 = sub_766690();
  v293 = *(v20 - 8);
  v294 = v20;
  __chkstk_darwin(v20);
  v292 = v285 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v291 = sub_7664A0();
  v289 = *(v291 - 8);
  __chkstk_darwin(v291);
  v288 = v285 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v333 = sub_766CA0();
  v348 = *(v333 - 8);
  __chkstk_darwin(v333);
  v290 = v285 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v316 = sub_75CFF0();
  v314 = *(v316 - 8);
  __chkstk_darwin(v316);
  v315 = v285 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_75CFE0();
  v311 = *(v25 - 8);
  v312 = v25;
  __chkstk_darwin(v25);
  v313 = v285 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_75CFD0();
  v308 = *(v27 - 8);
  v309 = v27;
  __chkstk_darwin(v27);
  v310 = v285 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v318 = sub_75D020();
  v321 = *(v318 - 8);
  __chkstk_darwin(v318);
  v317 = v285 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_75D010();
  v31 = *(v30 - 8);
  __chkstk_darwin(v30);
  v300 = v285 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v33);
  v345 = v285 - v34;
  __chkstk_darwin(v35);
  v344 = v285 - v36;
  __chkstk_darwin(v37);
  v336 = v285 - v38;
  v39 = sub_BD88(&qword_9439E0);
  __chkstk_darwin(v39 - 8);
  v298 = v285 - v40;
  v41 = sub_762D10();
  v329 = *(v41 - 8);
  v330 = v41;
  __chkstk_darwin(v41);
  v328 = v285 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_756CB0();
  v44 = *(v43 - 8);
  __chkstk_darwin(v43);
  v46 = v285 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = type metadata accessor for TitleHeaderView.TextConfiguration(0);
  v297 = *(v47 - 1);
  __chkstk_darwin(v47);
  v337 = v285 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v49);
  v301 = v285 - v50;
  __chkstk_darwin(v51);
  v53 = (v285 - v52);
  v54 = sub_BD88(&qword_947FC0);
  v55 = *(v54 - 8);
  v306 = v54;
  v307 = v55;
  __chkstk_darwin(v54);
  v287 = v285 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v57);
  v341 = v285 - v58;
  __chkstk_darwin(v59);
  v340 = v285 - v60;
  __chkstk_darwin(v61);
  v299 = v285 - v62;
  __chkstk_darwin(v63);
  v343 = v285 - v64;
  __chkstk_darwin(v65);
  v342 = v285 - v66;
  __chkstk_darwin(v67);
  v335 = (v285 - v68);
  __chkstk_darwin(v69);
  v296 = v285 - v70;
  *&v72 = __chkstk_darwin(v71).n128_u64[0];
  v74 = (v285 - v73);
  v325 = a18;
  v75 = [a18 traitCollection];
  v346 = v30;
  v347 = v31;
  v334 = v74;
  v339 = v47;
  v331 = v75;
  v303 = v43;
  v304 = v46;
  v305 = v44;
  if (!v332)
  {
    v89 = *(v31 + 56);
    v89(v74, 1, 1, v30);
    goto LABEL_23;
  }

  v76 = v338;
  sub_19CE28(v338, v53, type metadata accessor for TitleHeaderView.TextConfiguration);
  sub_BE70(0, &qword_93F900);
  v77 = sub_769E10();
  *&v384 = v323;
  *(&v384 + 1) = v332;

  sub_756C90();
  sub_12EC40();
  sub_76A4C0();
  v79 = v78;
  (*(v44 + 8))(v46, v43);

  v80 = 0;
  if ((v79 & 1) == 0)
  {
    [v77 lineHeight];
    v82 = ceil(v81 * 1.3);
    if ((*&v82 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v82 > -9.22337204e18)
    {
      if (v82 >= 9.22337204e18)
      {
LABEL_116:
        __break(1u);
        goto LABEL_117;
      }

      v80 = v82;
      goto LABEL_7;
    }

    __break(1u);
LABEL_115:
    __break(1u);
    goto LABEL_116;
  }

LABEL_7:
  v302 = v53;
  if (!v295)
  {
    goto LABEL_15;
  }

  v285[1] = v80;

  sub_7651B0();
  v83 = v333;
  if (v84 && (v85 = [objc_opt_self() configurationWithFont:v77], v86 = sub_769210(), , v87 = objc_msgSend(objc_opt_self(), "_systemImageNamed:withConfiguration:", v86, v85), v86, v85, v47 = v339, v87))
  {
    [v87 size];
    sub_7670D0();
    swift_allocObject();
    v88 = sub_7670B0();
  }

  else
  {
    v90 = v47[6];
    v91 = sub_7666D0();
    v92 = v288;
    (*(*(v91 - 8) + 16))(v288, v76 + v90, v91);
    v93 = v289;
    v94 = v291;
    (*(v289 + 104))(v92, enum case for FontSource.useCase(_:), v291);
    *(&v385 + 1) = v94;
    v386 = &protocol witness table for FontSource;
    v95 = sub_B1B4(&v384);
    (*(v93 + 16))(v95, v92, v94);

    v96 = v290;
    sub_766CB0();
    (*(v93 + 8))(v92, v94);
    sub_766C90();
    sub_765260();
    v97 = v292;
    sub_7666A0();
    sub_766610();

    (*(v293 + 8))(v97, v294);
    (*(v348 + 8))(v96, v83);
    sub_7670D0();
    swift_allocObject();
    v88 = sub_7670B0();
  }

  if (v88)
  {
    *(&v385 + 1) = sub_7670D0();
    v386 = &protocol witness table for LayoutViewPlaceholder;
    v295 = v88;
    *&v384 = v88;
  }

  else
  {
LABEL_15:
    v295 = 0;
    v386 = 0;
    v384 = 0u;
    v385 = 0u;
  }

  v383 = 0;
  v381 = 0u;
  v382 = 0u;
  v380 = 0;
  v378 = 0u;
  v379 = 0u;
  v98 = sub_7653B0();
  v376 = v98;
  v377 = sub_19CCA8(&qword_93F9B0, &type metadata accessor for Feature);
  v99 = sub_B1B4(v375);
  (*(*(v98 - 8) + 104))(v99, enum case for Feature.measurement_with_labelplaceholder(_:), v98);
  v100 = v77;

  v53 = v100;
  sub_765C30();
  sub_BEB8(v375);
  v101 = v328;
  sub_762D00();
  sub_762CE0();
  (*(v329 + 8))(v101, v330);
  sub_1ED18(&v384, v374, &unk_943B10);
  v102 = v376;
  v103 = v377;
  v104 = sub_B170(v375, v376);
  v372 = v102;
  v373 = *(v103 + 8);
  v105 = sub_B1B4(v371);
  (*(*(v102 - 8) + 16))(v105, v104, v102);
  v106 = v339;
  v107 = v302;
  v108 = *(v302 + v339[8]);
  v369 = &type metadata for Float;
  v370 = &protocol witness table for Float;
  v368 = v108;
  v109 = v339[9];
  v110 = v333;
  v366 = v333;
  v367 = &protocol witness table for StaticDimension;
  v111 = sub_B1B4(v365);
  v112 = *(v348 + 16);
  v112(v111, v107 + v109, v110);
  v113 = v106[10];
  v363 = v110;
  v364 = &protocol witness table for StaticDimension;
  v114 = sub_B1B4(v362);
  v112(v114, v107 + v113, v110);
  sub_1ED18(&v381, &v356, &qword_9417D0);
  v115 = *(&v357 + 1);
  if (*(&v357 + 1))
  {
    v116 = v358;
    v117 = sub_B170(&v356, *(&v357 + 1));
    *(&v360 + 1) = v115;
    v361 = *(v116 + 8);
    v118 = sub_B1B4(&v359);
    (*(*(v115 - 8) + 16))(v118, v117, v115);
    sub_BEB8(&v356);
  }

  else
  {
    sub_10A2C(&v356, &qword_9417D0);
    v359 = 0u;
    v360 = 0u;
    v361 = 0;
  }

  v119 = v296;
  sub_1ED18(&v378, v353, &qword_9417D0);
  v120 = v354;
  v43 = v303;
  if (v354)
  {
    v121 = v355;
    v122 = sub_B170(v353, v354);
    *(&v357 + 1) = v120;
    v358 = *(v121 + 8);
    v123 = sub_B1B4(&v356);
    (*(*(v120 - 8) + 16))(v123, v122, v120);
    sub_BEB8(v353);
  }

  else
  {
    sub_10A2C(v353, &qword_9417D0);
    v356 = 0u;
    v357 = 0u;
    v358 = 0;
  }

  v124 = v339;
  v125 = v302;
  sub_134D8(v302 + v339[12], v353);
  sub_134D8(v125 + v124[13], v352);
  v351 = &protocol witness table for Double;
  v350 = &type metadata for Double;
  v349 = 0x4020000000000000;
  sub_75D000();

  sub_10A2C(&v378, &qword_9417D0);
  v47 = v124;
  sub_10A2C(&v381, &qword_9417D0);
  sub_19CCF0(v125, type metadata accessor for TitleHeaderView.TextConfiguration);
  sub_BEB8(v375);

  sub_10A2C(&v384, &unk_943B10);
  v30 = v346;
  v89 = *(v347 + 56);
  v89(v119, 0, 1, v346);
  sub_109C4(v119, v334, &qword_947FC0);
LABEL_23:
  v126 = v333;
  v127 = v324;
  if (!v327)
  {
LABEL_26:
    v89(v335, 1, 1, v30);
    v386 = 0;
    v384 = 0u;
    v385 = 0u;
    v381 = 0u;
    v382 = 0u;
    v383 = 0;
    goto LABEL_41;
  }

  v128 = v43;
  v53 = type metadata accessor for TitleHeaderView.Style(0);
  v129 = v298;
  sub_1ED18(v338 + v53[6], v298, &qword_9439E0);
  if ((*(v297 + 48))(v129, 1, v47) == 1)
  {
    sub_10A2C(v129, &qword_9439E0);
    v43 = v128;
    goto LABEL_26;
  }

  sub_19CDC0(v129, v301, type metadata accessor for TitleHeaderView.TextConfiguration);
  sub_BE70(0, &qword_93F900);
  v332 = sub_769E10();
  *&v384 = v286;
  *(&v384 + 1) = v327;

  v130 = v304;
  sub_756C90();
  sub_12EC40();
  sub_76A4C0();
  v132 = v131;
  (*(v305 + 8))(v130, v128);

  if (v132)
  {
LABEL_31:
    if (*(v338 + v53[9]) == 2)
    {
      v302 = a14;
      v323 = a13;
      v136 = sub_7653B0();
      *(&v385 + 1) = v136;
      v298 = sub_19CCA8(&qword_93F9B0, &type metadata accessor for Feature);
      v386 = v298;
      v137 = sub_B1B4(&v384);
      LODWORD(v297) = enum case for Feature.measurement_with_labelplaceholder(_:);
      v138 = *(*(v136 - 8) + 104);
      v138(v137);
      v139 = v332;

      v140 = v139;
      sub_765C30();
      sub_BEB8(&v384);
      v141 = v328;
      sub_762D00();
      sub_762CE0();
      v332 = v89;
      v142 = v330;
      v143 = *(v329 + 8);
      v143(v141, v330);
      *(&v382 + 1) = v136;
      v383 = v298;
      v144 = sub_B1B4(&v381);
      (v138)(v144, v297, v136);
      v126 = v333;

      v145 = v140;
      v53 = sub_765C30();
      sub_BEB8(&v381);
      sub_762D00();
      sub_762CE0();

      v143(v141, v142);
      v127 = v324;
      sub_19CCF0(v301, type metadata accessor for TitleHeaderView.TextConfiguration);

      (v332)(v335, 1, 1, v346);
      v47 = v339;
    }

    else
    {
      v386 = 0;
      v384 = 0u;
      v385 = 0u;
      v383 = 0;
      v381 = 0u;
      v382 = 0u;
      v380 = 0;
      v378 = 0u;
      v379 = 0u;
      v146 = sub_7653B0();
      v376 = v146;
      v377 = sub_19CCA8(&qword_93F9B0, &type metadata accessor for Feature);
      v147 = sub_B1B4(v375);
      (*(*(v146 - 8) + 104))(v147, enum case for Feature.measurement_with_labelplaceholder(_:), v146);

      v148 = v332;
      sub_765C30();
      sub_BEB8(v375);
      v149 = v328;
      v332 = v148;
      sub_762D00();
      sub_762CE0();
      (*(v329 + 8))(v149, v330);
      sub_1ED18(&v384, v374, &unk_943B10);
      v150 = v376;
      v151 = v377;
      v152 = sub_B170(v375, v376);
      v372 = v150;
      v373 = *(v151 + 8);
      v153 = sub_B1B4(v371);
      (*(*(v150 - 8) + 16))(v153, v152, v150);
      v154 = v339;
      v155 = v301;
      v156 = *(v301 + v339[8]);
      v369 = &type metadata for Float;
      v370 = &protocol witness table for Float;
      v368 = v156;
      v157 = v339[9];
      v366 = v126;
      v367 = &protocol witness table for StaticDimension;
      v158 = sub_B1B4(v365);
      v159 = v126;
      v160 = *(v348 + 16);
      v160(v158, v155 + v157, v159);
      v161 = v154[10];
      v363 = v159;
      v364 = &protocol witness table for StaticDimension;
      v162 = sub_B1B4(v362);
      v160(v162, v155 + v161, v159);
      sub_1ED18(&v381, &v356, &qword_9417D0);
      v163 = *(&v357 + 1);
      if (*(&v357 + 1))
      {
        v164 = v358;
        v165 = sub_B170(&v356, *(&v357 + 1));
        *(&v360 + 1) = v163;
        v361 = *(v164 + 8);
        v166 = sub_B1B4(&v359);
        (*(*(v163 - 8) + 16))(v166, v165, v163);
        sub_BEB8(&v356);
      }

      else
      {
        sub_10A2C(&v356, &qword_9417D0);
        v359 = 0u;
        v360 = 0u;
        v361 = 0;
      }

      v167 = v347;
      sub_1ED18(&v378, v353, &qword_9417D0);
      v168 = v354;
      if (v354)
      {
        v169 = v355;
        v170 = sub_B170(v353, v354);
        *(&v357 + 1) = v168;
        v358 = *(v169 + 8);
        v171 = sub_B1B4(&v356);
        (*(*(v168 - 8) + 16))(v171, v170, v168);
        sub_BEB8(v353);
      }

      else
      {
        sub_10A2C(v353, &qword_9417D0);
        v356 = 0u;
        v357 = 0u;
        v358 = 0;
      }

      v47 = v339;
      v172 = v301;
      sub_134D8(v301 + v339[12], v353);
      sub_134D8(v172 + v47[13], v352);
      v351 = &protocol witness table for Double;
      v350 = &type metadata for Double;
      v349 = 0x4020000000000000;
      v173 = v335;
      sub_75D000();
      sub_10A2C(&v378, &qword_9417D0);
      sub_10A2C(&v381, &qword_9417D0);
      sub_10A2C(&v384, &unk_943B10);
      sub_19CCF0(v172, type metadata accessor for TitleHeaderView.TextConfiguration);
      sub_BEB8(v375);

      v174 = *(v167 + 56);
      v53 = (v167 + 56);
      v174(v173, 0, 1, v346);
      v386 = 0;
      v384 = 0u;
      v385 = 0u;
      v381 = 0u;
      v382 = 0u;
      v383 = 0;
      v126 = v333;
      v127 = v324;
    }

    v43 = v303;
LABEL_41:
    v332 = type metadata accessor for TitleHeaderView.Style(0);
    v324 = v338 + v332[5];
    sub_19CE28(v324, v337, type metadata accessor for TitleHeaderView.TextConfiguration);
    sub_BE70(0, &qword_93F900);
    v327 = sub_769E10();
    if (!v127)
    {
      goto LABEL_49;
    }

    v175 = v126;
    v44 = v322;
    *&v378 = v322;
    *(&v378 + 1) = v127;

    v46 = v304;
    sub_756C90();
    sub_12EC40();
    sub_76A4C0();
    v177 = v176;
    (*(v305 + 8))(v46, v43);

    if (v177)
    {
LABEL_48:
      v126 = v175;
      if (!v326)
      {
        goto LABEL_56;
      }

LABEL_49:
      v323 = a15;

      sub_7651B0();
      if (v180 && (v181 = [objc_opt_self() configurationWithFont:v327], v182 = sub_769210(), , v183 = objc_msgSend(objc_opt_self(), "_systemImageNamed:withConfiguration:", v182, v181), v182, v47 = v339, v181, v183))
      {
        [v183 size];
        sub_7670D0();
        swift_allocObject();
        v184 = sub_7670B0();
      }

      else
      {
        v185 = v126;
        v186 = v324;
        v187 = v47[6];
        v188 = sub_7666D0();
        v189 = v186 + v187;
        v126 = v185;
        v190 = v288;
        (*(*(v188 - 8) + 16))(v288, v189, v188);
        v191 = v289;
        v192 = v291;
        (*(v289 + 104))(v190, enum case for FontSource.useCase(_:), v291);
        *(&v379 + 1) = v192;
        v380 = &protocol witness table for FontSource;
        v193 = sub_B1B4(&v378);
        (*(v191 + 16))(v193, v190, v192);

        v194 = v290;
        sub_766CB0();
        (*(v191 + 8))(v190, v192);
        sub_766C90();
        sub_765260();
        v195 = v292;
        sub_7666A0();
        sub_766610();

        (*(v293 + 8))(v195, v294);
        (*(v348 + 8))(v194, v126);
        sub_7670D0();
        swift_allocObject();
        v184 = sub_7670B0();
      }

      if (v184)
      {
        v196 = sub_7670D0();
        v380 = &protocol witness table for LayoutViewPlaceholder;
        *(&v379 + 1) = v196;
        v326 = v184;
        *&v378 = v184;
      }

      else
      {
LABEL_56:
        v326 = 0;
        v380 = 0;
        v378 = 0u;
        v379 = 0u;
      }

      v197 = sub_7653B0();
      v376 = v197;
      v377 = sub_19CCA8(&qword_93F9B0, &type metadata accessor for Feature);
      v198 = sub_B1B4(v375);
      (*(*(v197 - 8) + 104))(v198, enum case for Feature.measurement_with_labelplaceholder(_:), v197);

      v199 = v327;
      sub_765C30();
      sub_BEB8(v375);
      v200 = v328;
      v327 = v199;
      sub_762D00();
      sub_762CE0();
      (*(v329 + 8))(v200, v330);
      sub_1ED18(&v378, v374, &unk_943B10);
      v201 = v376;
      v202 = v377;
      v203 = sub_B170(v375, v376);
      v372 = v201;
      v373 = *(v202 + 8);
      v204 = sub_B1B4(v371);
      (*(*(v201 - 8) + 16))(v204, v203, v201);
      v205 = v339;
      v206 = v337;
      v207 = *(v337 + v339[8]);
      v369 = &type metadata for Float;
      v370 = &protocol witness table for Float;
      v368 = v207;
      v208 = v339[9];
      v366 = v126;
      v367 = &protocol witness table for StaticDimension;
      v209 = sub_B1B4(v365);
      v210 = *(v348 + 16);
      v210(v209, v206 + v208, v126);
      v211 = v205[10];
      v363 = v126;
      v364 = &protocol witness table for StaticDimension;
      v212 = sub_B1B4(v362);
      v210(v212, v206 + v211, v126);
      sub_1ED18(&v384, &v356, &qword_9417D0);
      v213 = *(&v357 + 1);
      if (*(&v357 + 1))
      {
        v214 = v358;
        v215 = sub_B170(&v356, *(&v357 + 1));
        *(&v360 + 1) = v213;
        v361 = *(v214 + 8);
        v216 = sub_B1B4(&v359);
        (*(*(v213 - 8) + 16))(v216, v215, v213);
        sub_BEB8(&v356);
      }

      else
      {
        sub_10A2C(&v356, &qword_9417D0);
        v359 = 0u;
        v360 = 0u;
        v361 = 0;
      }

      v217 = v340;
      v218 = v338;
      sub_1ED18(&v381, v353, &qword_9417D0);
      v219 = v354;
      if (v354)
      {
        v220 = v355;
        v221 = sub_B170(v353, v354);
        *(&v357 + 1) = v219;
        v358 = *(v220 + 8);
        v222 = sub_B1B4(&v356);
        (*(*(v219 - 8) + 16))(v222, v221, v219);
        sub_BEB8(v353);
      }

      else
      {
        sub_10A2C(v353, &qword_9417D0);
        v356 = 0u;
        v357 = 0u;
        v358 = 0;
      }

      v223 = v341;
      v224 = v339;
      v225 = v337;
      sub_134D8(v337 + v339[12], v353);
      sub_134D8(v225 + v224[13], v352);
      v351 = &protocol witness table for Double;
      v350 = &type metadata for Double;
      v349 = 0x4020000000000000;
      sub_75D000();
      sub_BEB8(v375);
      sub_10A2C(&v378, &unk_943B10);
      v226 = *(v218 + v332[9]);
      sub_BD88(&qword_947FC8);
      v348 = *(v307 + 72);
      v227 = (*(v307 + 80) + 32) & ~*(v307 + 80);
      if (v226)
      {
        if (v226 != 1)
        {
          v255 = v348;
          v333 = swift_allocObject();
          v256 = v333 + v227;
          sub_1ED18(v334, v333 + v227, &qword_947FC0);
          v257 = v346;
          v258 = v347;
          (*(v347 + 16))(v256 + v255, v336, v346);
          (*(v258 + 56))(v256 + v255, 0, 1, v257);
          v259 = v299;
          sub_1ED18(v256, v299, &qword_947FC0);
          v260 = v287;
          sub_109C4(v259, v287, &qword_947FC0);
          v261 = *(v258 + 48);
          v262 = (v258 + 32);
          v263 = v261(v260, 1, v257);
          v345 = (v258 + 32);
          if (v263 == 1)
          {
            sub_10A2C(v260, &qword_947FC0);
            v264 = _swiftEmptyArrayStorage;
          }

          else
          {
            v265 = *v262;
            (*v262)(v300, v260, v257);
            v264 = _swiftEmptyArrayStorage;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v264 = sub_7B968(0, _swiftEmptyArrayStorage[2] + 1, 1, _swiftEmptyArrayStorage);
            }

            v267 = *(v264 + 2);
            v266 = *(v264 + 3);
            if (v267 >= v266 >> 1)
            {
              v264 = sub_7B968(v266 > 1, v267 + 1, 1, v264);
            }

            *(v264 + 2) = v267 + 1;
            v268 = &v264[((*(v347 + 80) + 32) & ~*(v347 + 80)) + *(v347 + 72) * v267];
            v257 = v346;
            v265(v268, v300, v346);
            v260 = v287;
          }

          v269 = v299;
          sub_1ED18(v256 + v348, v299, &qword_947FC0);
          sub_109C4(v269, v260, &qword_947FC0);
          if (v261(v260, 1, v257) == 1)
          {
            sub_10A2C(v260, &qword_947FC0);
            v254 = v338;
            v53 = v334;
          }

          else
          {
            v270 = v257;
            v271 = *v345;
            (*v345)(v300, v260, v270);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v254 = v338;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v264 = sub_7B968(0, *(v264 + 2) + 1, 1, v264);
            }

            v53 = v334;
            v274 = *(v264 + 2);
            v273 = *(v264 + 3);
            if (v274 >= v273 >> 1)
            {
              v264 = sub_7B968(v273 > 1, v274 + 1, 1, v264);
            }

            *(v264 + 2) = v274 + 1;
            v271(&v264[((*(v347 + 80) + 32) & ~*(v347 + 80)) + *(v347 + 72) * v274], v300, v346);
          }

          swift_setDeallocating();
          swift_arrayDestroy();
LABEL_100:
          swift_deallocClassInstance();
          v43 = v317;
          if (a11 == 0.0 && a12 == 0.0)
          {
            v275 = 0;
            v276 = 0;
            v277 = 0;
            *&v379 = 0;
            *(&v378 + 1) = 0;
          }

          else
          {
            v276 = sub_7670D0();
            swift_allocObject();
            v275 = sub_7670B0();
            v277 = &protocol witness table for LayoutViewPlaceholder;
          }

          *&v378 = v275;
          *(&v379 + 1) = v276;
          v380 = v277;
          sub_1ED18(&v378, v375, &unk_943B10);
          v278 = v332;
          v279 = *(v254 + v332[14]);
          v374[3] = &type metadata for CGFloat;
          v374[4] = &protocol witness table for CGFloat;
          v374[0] = v279;
          (*(v308 + 16))(v310, v254 + v332[10], v309);
          (*(v311 + 16))(v313, v254 + v278[11], v312);
          (*(v314 + 104))(v315, enum case for TitleHeaderLayout.AccessoryHorizontalAlignment.rightJustified(_:), v316);
          sub_75CFA0();
          sub_769DA0();
          sub_19CCA8(&unk_947FD0, &type metadata accessor for TitleHeaderLayout);
          v44 = v318;
          sub_7665A0();
          v375[0] = v280;
          v375[1] = v281;
          sub_769DB0();
          if (JUScreenClassGetMain() != 1)
          {

            (*(v321 + 8))(v43, v44);
            (*(v347 + 8))(v336, v346);
            sub_19CCF0(v337, type metadata accessor for TitleHeaderView.TextConfiguration);
            sub_10A2C(&v381, &qword_9417D0);
            sub_10A2C(&v384, &qword_9417D0);
            sub_10A2C(v335, &qword_947FC0);
            sub_10A2C(v53, &qword_947FC0);
            return sub_10A2C(&v378, &unk_943B10);
          }

          v282 = v346;
          v47 = v347;
          v46 = v331;
          if (qword_93DE20 != -1)
          {
            swift_once();
          }

          v283 = sub_BE38(v339, qword_9A0178);
          if (sub_19C62C(v324, v283))
          {

            (*(v321 + 8))(v43, v44);
            (*(v47 + 1))(v336, v282);
            sub_19CCF0(v337, type metadata accessor for TitleHeaderView.TextConfiguration);
            sub_10A2C(&v381, &qword_9417D0);
            sub_10A2C(&v384, &qword_9417D0);
            sub_10A2C(v335, &qword_947FC0);
            sub_10A2C(v53, &qword_947FC0);
            return sub_10A2C(&v378, &unk_943B10);
          }

          if (qword_93DE28 == -1)
          {
LABEL_111:
            v284 = sub_BE38(v339, qword_9A0190);
            sub_19C62C(v324, v284);

            (*(v321 + 8))(v43, v44);
            (*(v47 + 1))(v336, v346);
            sub_19CCF0(v337, type metadata accessor for TitleHeaderView.TextConfiguration);
            sub_10A2C(&v381, &qword_9417D0);
            sub_10A2C(&v384, &qword_9417D0);
            sub_10A2C(v335, &qword_947FC0);
            sub_10A2C(v53, &qword_947FC0);
            return sub_10A2C(&v378, &unk_943B10);
          }

LABEL_119:
          swift_once();
          goto LABEL_111;
        }

        v228 = v348;
        v333 = swift_allocObject();
        v229 = v333 + v227;
        sub_1ED18(v334, v333 + v227, &qword_947FC0);
        v231 = v346;
        v230 = v347;
        (*(v347 + 16))(v229 + v228, v336, v346);
        v232 = *(v230 + 56);
        v230 += 56;
        v232(v229 + v228, 0, 1, v231);
        sub_1ED18(v335, v229 + 2 * v228, &qword_947FC0);
        v233 = (v230 - 8);
        v344 = (v230 - 24);
        v234 = v231;
        v235 = _swiftEmptyArrayStorage;
        v236 = 3;
        v342 = v229;
        do
        {
          v237 = v343;
          sub_1ED18(v229, v343, &qword_947FC0);
          sub_109C4(v237, v223, &qword_947FC0);
          if ((*v233)(v223, 1, v234) == 1)
          {
            sub_10A2C(v223, &qword_947FC0);
          }

          else
          {
            v238 = *v344;
            (*v344)(v345, v223, v234);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v235 = sub_7B968(0, *(v235 + 2) + 1, 1, v235);
            }

            v240 = *(v235 + 2);
            v239 = *(v235 + 3);
            if (v240 >= v239 >> 1)
            {
              v235 = sub_7B968(v239 > 1, v240 + 1, 1, v235);
            }

            *(v235 + 2) = v240 + 1;
            v234 = v346;
            v238(&v235[((*(v347 + 80) + 32) & ~*(v347 + 80)) + *(v347 + 72) * v240], v345, v346);
            v223 = v341;
          }

          v229 += v348;
          --v236;
        }

        while (v236);
      }

      else
      {
        v241 = v348;
        v242 = 2 * v348;
        v333 = swift_allocObject();
        v243 = v347;
        v244 = v333 + v227;
        sub_1ED18(v334, v333 + v227, &qword_947FC0);
        sub_1ED18(v335, v244 + v241, &qword_947FC0);
        v245 = v346;
        (*(v243 + 16))(v244 + v242, v336, v346);
        (*(v243 + 56))(v244 + v242, 0, 1, v245);
        v246 = (v243 + 48);
        v345 = (v243 + 32);
        v247 = v245;
        v248 = _swiftEmptyArrayStorage;
        v249 = 3;
        v343 = v244;
        do
        {
          v250 = v342;
          sub_1ED18(v244, v342, &qword_947FC0);
          sub_109C4(v250, v217, &qword_947FC0);
          if ((*v246)(v217, 1, v247) == 1)
          {
            sub_10A2C(v217, &qword_947FC0);
          }

          else
          {
            v251 = *v345;
            (*v345)(v344, v217, v247);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v248 = sub_7B968(0, *(v248 + 2) + 1, 1, v248);
            }

            v253 = *(v248 + 2);
            v252 = *(v248 + 3);
            if (v253 >= v252 >> 1)
            {
              v248 = sub_7B968(v252 > 1, v253 + 1, 1, v248);
            }

            *(v248 + 2) = v253 + 1;
            v247 = v346;
            v251(&v248[((*(v347 + 80) + 32) & ~*(v347 + 80)) + *(v347 + 72) * v253], v344, v346);
            v217 = v340;
          }

          v244 += v348;
          --v249;
        }

        while (v249);
      }

      swift_setDeallocating();
      swift_arrayDestroy();
      v254 = v338;
      v53 = v334;
      goto LABEL_100;
    }

    [v327 lineHeight];
    v179 = ceil(v178 * 1.3);
    if ((*&v179 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
    {
      if (v179 > -9.22337204e18)
      {
        if (v179 < 9.22337204e18)
        {
          goto LABEL_48;
        }

LABEL_118:
        __break(1u);
        goto LABEL_119;
      }

LABEL_117:
      __break(1u);
      goto LABEL_118;
    }

    goto LABEL_115;
  }

  result = [v332 lineHeight];
  v135 = ceil(v134 * 1.3);
  if ((*&v135 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_121;
  }

  if (v135 <= -9.22337204e18)
  {
LABEL_121:
    __break(1u);
    goto LABEL_122;
  }

  if (v135 < 9.22337204e18)
  {
    goto LABEL_31;
  }

LABEL_122:
  __break(1u);
  return result;
}

BOOL sub_19C62C(uint64_t a1, uint64_t a2)
{
  sub_BE70(0, &qword_94AB00);
  if ((sub_76A1C0() & 1) == 0)
  {
    return 0;
  }

  v4 = *(a1 + 16);
  v5 = *(a2 + 16);
  if (v4)
  {
    if (!v5 || (*(a1 + 8) != *(a2 + 8) || v4 != v5) && (sub_76A950() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  v6 = type metadata accessor for TitleHeaderView.TextConfiguration(0);
  if (sub_7666C0() & 1) != 0 && *(a1 + v6[7]) == *(a2 + v6[7]) && *(a1 + v6[8]) == *(a2 + v6[8]) && (sub_766C60() & 1) != 0 && (sub_766C60())
  {
    return *(a1 + v6[11]) == *(a2 + v6[11]);
  }

  return 0;
}

BOOL sub_19C74C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TitleHeaderView.TextConfiguration(0);
  v5 = *(v4 - 1);
  __chkstk_darwin(v4);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_BD88(&qword_9439E0);
  __chkstk_darwin(v8 - 8);
  v10 = &v30 - v9;
  v11 = sub_BD88(&qword_947FB0);
  __chkstk_darwin(v11);
  v13 = &v30 - v12;
  sub_BE70(0, &qword_94AB00);
  if ((sub_76A1C0() & 1) == 0)
  {
    return 0;
  }

  v14 = *(a1 + 16);
  v15 = *(a2 + 16);
  if (v14)
  {
    if (!v15 || (*(a1 + 8) != *(a2 + 8) || v14 != v15) && (sub_76A950() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v15)
  {
    return 0;
  }

  if ((sub_7666C0() & 1) == 0)
  {
    return 0;
  }

  if (*(a1 + v4[7]) != *(a2 + v4[7]))
  {
    return 0;
  }

  if (*(a1 + v4[8]) != *(a2 + v4[8]))
  {
    return 0;
  }

  if ((sub_766C60() & 1) == 0)
  {
    return 0;
  }

  if ((sub_766C60() & 1) == 0)
  {
    return 0;
  }

  if (*(a1 + v4[11]) != *(a2 + v4[11]))
  {
    return 0;
  }

  v16 = type metadata accessor for TitleHeaderView.Style(0);
  if (!sub_19C62C(a1 + *(v16 + 20), a2 + *(v16 + 20)))
  {
    return 0;
  }

  v30 = v16;
  v17 = *(v16 + 24);
  v18 = *(v11 + 48);
  sub_1ED18(a1 + v17, v13, &qword_9439E0);
  v31 = v18;
  sub_1ED18(a2 + v17, &v13[v18], &qword_9439E0);
  v19 = *(v5 + 48);
  if (v19(v13, 1, v4) != 1)
  {
    sub_1ED18(v13, v10, &qword_9439E0);
    v20 = v31;
    if (v19(&v13[v31], 1, v4) != 1)
    {
      sub_19CDC0(&v13[v20], v7, type metadata accessor for TitleHeaderView.TextConfiguration);
      v21 = sub_19C62C(v10, v7);
      sub_19CCF0(v7, type metadata accessor for TitleHeaderView.TextConfiguration);
      sub_19CCF0(v10, type metadata accessor for TitleHeaderView.TextConfiguration);
      sub_10A2C(v13, &qword_9439E0);
      if (!v21)
      {
        return 0;
      }

      goto LABEL_23;
    }

    sub_19CCF0(v10, type metadata accessor for TitleHeaderView.TextConfiguration);
LABEL_21:
    sub_10A2C(v13, &qword_947FB0);
    return 0;
  }

  if (v19(&v13[v31], 1, v4) != 1)
  {
    goto LABEL_21;
  }

  sub_10A2C(v13, &qword_9439E0);
LABEL_23:
  v22 = v30;
  if (*(a1 + v30[7]) != *(a2 + v30[7]) || *(a1 + v30[8]) != *(a2 + v30[8]) || *(a1 + v30[9]) != *(a2 + v30[9]) || (sub_75CFC0() & 1) == 0)
  {
    return 0;
  }

  v23 = v22[12];
  v24 = *(a1 + v23);
  v25 = *(a2 + v23);
  if (v24)
  {
    if (!v25)
    {
      return 0;
    }

    sub_BE70(0, &qword_93E540);
    v26 = v25;
    v27 = v24;
    v28 = sub_76A1C0();

    if ((v28 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v25)
  {
    return 0;
  }

  if (sub_76A1C0())
  {
    sub_75CFE0();
    sub_19CCA8(&qword_947FB8, &type metadata accessor for TitleHeaderLayout.ChildrenHorizontalAlignment);
    sub_769430();
    sub_769430();
    return v33 == v32;
  }

  return 0;
}

uint64_t sub_19CCA8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_19CCF0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_19CD50(uint64_t a1, uint64_t a2)
{
  v4 = sub_BD88(&qword_93FF90);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_19CDC0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_19CE28(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_19CE90()
{
  v1 = (v0 + OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_eyebrowText);
  *v1 = 0;
  v1[1] = 0;
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_eyebrowLabel) = 0;
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_eyebrowArtwork) = 0;
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_eyebrowArtworkView) = 0;
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_titleArtwork) = 0;
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_titleArtworkView) = 0;
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_detailLabel) = 0;
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_shortDetailLabel) = 0;
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_accessoryView) = 0;
  v2 = OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_accessory;
  v3 = type metadata accessor for Accessory();
  (*(*(v3 - 8) + 56))(v0 + v2, 1, 1, v3);
  v4 = (v0 + OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_accessoryAction);
  *v4 = 0;
  v4[1] = 0;
  v5 = (v0 + OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_separatorInset);
  v6 = *&UIEdgeInsetsZero.bottom;
  *v5 = *&UIEdgeInsetsZero.top;
  v5[1] = v6;
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_allowsAccessibilityLayouts) = 1;
  sub_76A840();
  __break(1u);
}

char *sub_19CFE8(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = OBJC_IVAR____TtC18ASMessagesProvider21LockupPlaceholderView_iconPlaceholder;
  sub_759210();
  v11 = sub_759020();
  sub_75CD10();

  *&v5[v10] = v11;
  v12 = OBJC_IVAR____TtC18ASMessagesProvider21LockupPlaceholderView_headingPlaceholder;
  sub_7595E0();
  v13 = sub_7595A0();
  v15 = sub_48A70C(v13, v14, UIFontTextStyleFootnote);

  *&v5[v12] = v15;
  v16 = OBJC_IVAR____TtC18ASMessagesProvider21LockupPlaceholderView_titlePlaceholder;
  v17 = sub_7595D0();
  v19 = sub_48A70C(v17, v18, UIFontTextStyleBody);

  *&v5[v16] = v19;
  v20 = OBJC_IVAR____TtC18ASMessagesProvider21LockupPlaceholderView_subtitlePlaceholder;
  v21 = sub_759580();
  v23 = sub_48A70C(v21, v22, UIFontTextStyleFootnote);

  *&v5[v20] = v23;
  v24 = OBJC_IVAR____TtC18ASMessagesProvider21LockupPlaceholderView_offerButtonPlaceholder;
  type metadata accessor for PlaceholderHelper.PlacholderOfferButton();
  *&v5[v24] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v25 = OBJC_IVAR____TtC18ASMessagesProvider21LockupPlaceholderView_contentType;
  v26 = enum case for Shelf.ContentType.smallLockup(_:);
  v27 = sub_764930();
  (*(*(v27 - 8) + 104))(&v5[v25], v26, v27);
  v5[OBJC_IVAR____TtC18ASMessagesProvider21LockupPlaceholderView_wantsHeadingTextPlaceholder] = 0;
  v34.receiver = v5;
  v34.super_class = type metadata accessor for LockupPlaceholderView();
  v28 = objc_msgSendSuper2(&v34, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v32 = v28;
  [v32 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  [v32 addSubview:*&v32[OBJC_IVAR____TtC18ASMessagesProvider21LockupPlaceholderView_iconPlaceholder]];
  [v32 addSubview:*&v32[OBJC_IVAR____TtC18ASMessagesProvider21LockupPlaceholderView_titlePlaceholder]];
  [v32 addSubview:*&v32[OBJC_IVAR____TtC18ASMessagesProvider21LockupPlaceholderView_subtitlePlaceholder]];
  [v32 addSubview:*&v32[OBJC_IVAR____TtC18ASMessagesProvider21LockupPlaceholderView_offerButtonPlaceholder]];

  return v32;
}

uint64_t sub_19D2A4@<X0>(uint64_t *a1@<X8>)
{
  v3 = sub_764930();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = v14 - v8;
  v10 = OBJC_IVAR____TtC18ASMessagesProvider21LockupPlaceholderView_contentType;
  swift_beginAccess();
  v11 = *(v4 + 16);
  v11(v9, v1 + v10, v3);
  v12 = (*(v4 + 88))(v9, v3);
  if (v12 == enum case for Shelf.ContentType.smallLockup(_:))
  {
    return sub_19D504(a1);
  }

  if (v12 == enum case for Shelf.ContentType.mediumLockup(_:))
  {
    return sub_19DA1C(a1);
  }

  if (v12 == enum case for Shelf.ContentType.largeLockup(_:))
  {
    return sub_19DEFC(a1);
  }

  v14[1] = 0;
  v14[2] = 0xE000000000000000;
  sub_76A730(44);
  v11(v6, v1 + v10, v3);
  sub_76A7F0();
  (*(v4 + 8))(v6, v3);
  v15._object = 0x80000000007CCC40;
  v15._countAndFlagsBits = 0xD00000000000002ALL;
  sub_769370(v15);
  result = sub_76A840();
  __break(1u);
  return result;
}

uint64_t sub_19D504@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v36 = a1;
  v35 = sub_762D10();
  v3 = *(v35 - 8);
  __chkstk_darwin(v35);
  v5 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_75CF00();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v34 - v11;
  if (qword_93C668 != -1)
  {
    swift_once();
  }

  v13 = sub_BE38(v6, qword_99B898);
  v38 = v7;
  v14 = *(v7 + 16);
  v14(v12, v13, v6);
  sub_75CE80();
  sub_75CE40();
  v37 = v9;
  v14(v9, v12, v6);
  v15 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider21LockupPlaceholderView_iconPlaceholder);
  v59[8] = sub_759210();
  v59[9] = &protocol witness table for UIView;
  v59[5] = v15;
  v16 = objc_opt_self();
  v17 = v15;
  v18 = [v16 preferredFontForTextStyle:UIFontTextStyleBody];
  v19 = sub_7653B0();
  v59[3] = v19;
  v59[4] = sub_19E738(&qword_93F9B0, &type metadata accessor for Feature);
  v20 = sub_B1B4(v59);
  (*(*(v19 - 8) + 104))(v20, enum case for Feature.measurement_with_labelplaceholder(_:), v19);
  sub_765C30();
  sub_BEB8(v59);
  sub_762D00();
  sub_762CE0();
  (*(v3 + 8))(v5, v35);
  if (*(v2 + OBJC_IVAR____TtC18ASMessagesProvider21LockupPlaceholderView_wantsHeadingTextPlaceholder) == 1)
  {
    v21 = *(v2 + OBJC_IVAR____TtC18ASMessagesProvider21LockupPlaceholderView_headingPlaceholder);
    v22 = sub_BE70(0, &qword_950A70);
    v23 = v21;
    v24 = &protocol witness table for UILabel;
  }

  else
  {
    v22 = 0;
    v24 = 0;
    v21 = 0;
    v55 = 0;
    v56 = 0;
  }

  v57 = v22;
  v58 = v24;
  v54 = v21;
  v25 = *(v2 + OBJC_IVAR____TtC18ASMessagesProvider21LockupPlaceholderView_titlePlaceholder);
  v52 = sub_BE70(0, &qword_950A70);
  v53 = &protocol witness table for UILabel;
  v50 = &protocol witness table for UILabel;
  v51 = v25;
  v26 = *(v2 + OBJC_IVAR____TtC18ASMessagesProvider21LockupPlaceholderView_subtitlePlaceholder);
  v49 = v52;
  v48 = v26;
  v47 = 0;
  v45 = 0u;
  v46 = 0u;
  v44 = 0;
  v42 = 0u;
  v43 = 0u;
  v27 = *(v2 + OBJC_IVAR____TtC18ASMessagesProvider21LockupPlaceholderView_offerButtonPlaceholder);
  v40 = sub_BE70(0, &qword_93E550);
  v41 = &protocol witness table for UIView;
  v39 = v27;
  v28 = sub_75CF20();
  v29 = v36;
  v36[3] = v28;
  v29[4] = sub_19E738(&qword_9480A0, &type metadata accessor for SmallLockupLayout);
  v29[5] = sub_19E738(&qword_94A290, &type metadata accessor for SmallLockupLayout);
  sub_B1B4(v29);
  v30 = v25;
  v31 = v26;
  v32 = v27;
  sub_75CF10();
  return (*(v38 + 8))(v12, v6);
}

uint64_t sub_19DA1C@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v39 = a1;
  v3 = sub_762D10();
  v35 = *(v3 - 8);
  v36 = v3;
  __chkstk_darwin(v3);
  v5 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_75D6B0();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v34 - v11;
  type metadata accessor for MediumLockupCollectionViewCell();
  v13 = [v1 traitCollection];
  sub_278FB0(v12);

  v14 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider21LockupPlaceholderView_offerButtonPlaceholder];
  [v14 sizeThatFits:{0.0, 0.0}];
  sub_75D6A0();
  v15 = *(v7 + 16);
  v37 = v9;
  v38 = v6;
  v15(v9, v12, v6);
  v16 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider21LockupPlaceholderView_iconPlaceholder];
  v59 = sub_759210();
  v60 = &protocol witness table for UIView;
  v58 = v16;
  if (v1[OBJC_IVAR____TtC18ASMessagesProvider21LockupPlaceholderView_wantsHeadingTextPlaceholder] == 1)
  {
    v17 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider21LockupPlaceholderView_headingPlaceholder];
    v18 = sub_BE70(0, &qword_950A70);
    v19 = v17;
    v20 = &protocol witness table for UILabel;
  }

  else
  {
    v18 = 0;
    v20 = 0;
    v17 = 0;
    v54 = 0;
    v55 = 0;
  }

  v56 = v18;
  v57 = v20;
  v53 = v17;
  v21 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider21LockupPlaceholderView_titlePlaceholder];
  v51 = sub_BE70(0, &qword_950A70);
  v52 = &protocol witness table for UILabel;
  v49 = &protocol witness table for UILabel;
  v50 = v21;
  v22 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider21LockupPlaceholderView_subtitlePlaceholder];
  v48 = v51;
  v46 = 0;
  v47 = v22;
  v44 = 0u;
  v45 = 0u;
  v23 = objc_opt_self();
  v24 = v16;
  v25 = v21;
  v26 = v22;
  v27 = [v23 preferredFontForTextStyle:UIFontTextStyleBody];
  v28 = sub_7653B0();
  v43[3] = v28;
  v43[4] = sub_19E738(&qword_93F9B0, &type metadata accessor for Feature);
  v29 = sub_B1B4(v43);
  (*(*(v28 - 8) + 104))(v29, enum case for Feature.measurement_with_labelplaceholder(_:), v28);
  sub_765C30();
  sub_BEB8(v43);
  sub_762D00();
  sub_762CE0();
  (*(v35 + 8))(v5, v36);
  v41 = sub_BE70(0, &qword_93E550);
  v42 = &protocol witness table for UIView;
  v40 = v14;
  v30 = sub_75D6D0();
  v31 = v39;
  v39[3] = v30;
  v31[4] = sub_19E738(&qword_948090, &type metadata accessor for MediumLockupLayout);
  v31[5] = sub_19E738(&qword_948098, &type metadata accessor for MediumLockupLayout);
  sub_B1B4(v31);
  v32 = v14;
  sub_75D6C0();
  return (*(v7 + 8))(v12, v38);
}

uint64_t sub_19DEFC@<X0>(uint64_t *a1@<X8>)
{
  v3 = sub_75C8F0();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_93C8B0 != -1)
  {
    swift_once();
  }

  v7 = sub_BE38(v3, qword_99C5C0);
  (*(v4 + 16))(v6, v7, v3);
  v8 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider21LockupPlaceholderView_iconPlaceholder);
  v34 = sub_759210();
  v35 = &protocol witness table for UIView;
  v33 = v8;
  if (*(v1 + OBJC_IVAR____TtC18ASMessagesProvider21LockupPlaceholderView_wantsHeadingTextPlaceholder) == 1)
  {
    v9 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider21LockupPlaceholderView_headingPlaceholder);
    v10 = sub_BE70(0, &qword_950A70);
    v11 = v9;
    v12 = &protocol witness table for UILabel;
  }

  else
  {
    v10 = 0;
    v12 = 0;
    v9 = 0;
    v29 = 0;
    v30 = 0;
  }

  v31 = v10;
  v32 = v12;
  v28 = v9;
  v13 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider21LockupPlaceholderView_titlePlaceholder);
  v26 = sub_BE70(0, &qword_950A70);
  v27 = &protocol witness table for UILabel;
  v24 = &protocol witness table for UILabel;
  v25 = v13;
  v14 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider21LockupPlaceholderView_subtitlePlaceholder);
  v23 = v26;
  v22 = v14;
  v15 = sub_75C910();
  memset(v20, 0, sizeof(v20));
  v21 = 0;
  a1[3] = v15;
  a1[4] = sub_19E738(&qword_948080, &type metadata accessor for LargeLockupLayout);
  a1[5] = sub_19E738(&qword_948088, &type metadata accessor for LargeLockupLayout);
  sub_B1B4(a1);
  v16 = v8;
  v17 = v13;
  v18 = v14;
  return sub_75C900();
}

uint64_t sub_19E270()
{
  v1 = sub_7664F0();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_75C910();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = type metadata accessor for LockupPlaceholderView();
  v13.receiver = v0;
  v13.super_class = v9;
  objc_msgSendSuper2(&v13, "layoutSubviews");
  sub_19D2A4(v12);
  if (v0[OBJC_IVAR____TtC18ASMessagesProvider21LockupPlaceholderView_wantsHeadingTextPlaceholder] == 1)
  {
    [v0 insertSubview:*&v0[OBJC_IVAR____TtC18ASMessagesProvider21LockupPlaceholderView_headingPlaceholder] belowSubview:*&v0[OBJC_IVAR____TtC18ASMessagesProvider21LockupPlaceholderView_titlePlaceholder]];
  }

  else
  {
    [*&v0[OBJC_IVAR____TtC18ASMessagesProvider21LockupPlaceholderView_headingPlaceholder] removeFromSuperview];
  }

  sub_16C320(v12, v11);
  sub_BD88(&qword_9480A8);
  if (swift_dynamicCast())
  {
    (*(v6 + 8))(v8, v5);
    [*&v0[OBJC_IVAR____TtC18ASMessagesProvider21LockupPlaceholderView_offerButtonPlaceholder] removeFromSuperview];
  }

  else
  {
    [v0 addSubview:*&v0[OBJC_IVAR____TtC18ASMessagesProvider21LockupPlaceholderView_offerButtonPlaceholder]];
  }

  sub_B170(v12, v12[3]);
  sub_75D650();
  sub_7672C0();
  (*(v2 + 8))(v4, v1);
  return sub_BEB8(v12);
}

id sub_19E540()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LockupPlaceholderView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for LockupPlaceholderView()
{
  result = qword_948070;
  if (!qword_948070)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_19E688()
{
  result = sub_764930();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_19E738(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_19E780()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC18ASMessagesProvider21LockupPlaceholderView_iconPlaceholder;
  sub_759210();
  v3 = sub_759020();
  sub_75CD10();

  *(v1 + v2) = v3;
  v4 = OBJC_IVAR____TtC18ASMessagesProvider21LockupPlaceholderView_headingPlaceholder;
  sub_7595E0();
  v5 = sub_7595A0();
  v7 = sub_48A70C(v5, v6, UIFontTextStyleFootnote);

  *(v1 + v4) = v7;
  v8 = OBJC_IVAR____TtC18ASMessagesProvider21LockupPlaceholderView_titlePlaceholder;
  v9 = sub_7595D0();
  v11 = sub_48A70C(v9, v10, UIFontTextStyleBody);

  *(v1 + v8) = v11;
  v12 = OBJC_IVAR____TtC18ASMessagesProvider21LockupPlaceholderView_subtitlePlaceholder;
  v13 = sub_759580();
  v15 = sub_48A70C(v13, v14, UIFontTextStyleFootnote);

  *(v1 + v12) = v15;
  v16 = OBJC_IVAR____TtC18ASMessagesProvider21LockupPlaceholderView_offerButtonPlaceholder;
  type metadata accessor for PlaceholderHelper.PlacholderOfferButton();
  *(v1 + v16) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v17 = OBJC_IVAR____TtC18ASMessagesProvider21LockupPlaceholderView_contentType;
  v18 = enum case for Shelf.ContentType.smallLockup(_:);
  v19 = sub_764930();
  (*(*(v19 - 8) + 104))(v1 + v17, v18, v19);
  *(v1 + OBJC_IVAR____TtC18ASMessagesProvider21LockupPlaceholderView_wantsHeadingTextPlaceholder) = 0;
  sub_76A840();
  __break(1u);
}

uint64_t sub_19E9FC(Swift::Float a1, uint64_t a2, uint64_t *a3)
{
  v5 = sub_765080();
  sub_161DC(v5, a3);
  sub_BE38(v5, a3);
  sub_396E8();
  sub_76A120(0.0, 0.0, 0.0, a1);
  return sub_765050();
}

uint64_t sub_19EA90()
{
  v0 = sub_765080();
  sub_161DC(v0, qword_99B550);
  sub_BE38(v0, qword_99B550);
  sub_396E8();
  v1 = objc_opt_self();
  v2 = [v1 blackColor];
  v3 = [v2 colorWithAlphaComponent:0.2];

  v4 = [v1 whiteColor];
  v5 = [v4 colorWithAlphaComponent:0.2];

  v6.super.isa = v3;
  v7.super.isa = v5;
  sub_76A0C0(v6, v7);
  return sub_765050();
}

uint64_t sub_19ED70(double a1, uint64_t a2, uint64_t *a3)
{
  v5 = sub_765080();
  sub_161DC(v5, a3);
  sub_BE38(v5, a3);
  v6 = [objc_opt_self() blackColor];
  v7 = [v6 colorWithAlphaComponent:a1];

  return sub_765050();
}

uint64_t sub_19EE34(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

id sub_19EE88()
{
  ObjectType = swift_getObjectType();
  if (_swiftEmptyArrayStorage >> 62)
  {
    v4 = ObjectType;
    if (sub_76A860())
    {
      sub_1A19EC(_swiftEmptyArrayStorage);
      v2 = v5;
    }

    else
    {
      v2 = &_swiftEmptySetSingleton;
    }

    ObjectType = v4;
  }

  else
  {
    v2 = &_swiftEmptySetSingleton;
  }

  *&v0[OBJC_IVAR____TtC18ASMessagesProvider41AppEventLiveIndicatorAnimationCoordinator_animatingViews] = v2;
  v0[OBJC_IVAR____TtC18ASMessagesProvider41AppEventLiveIndicatorAnimationCoordinator_animationPhase] = 3;
  *&v0[OBJC_IVAR____TtC18ASMessagesProvider41AppEventLiveIndicatorAnimationCoordinator_sleepTimer] = 0;
  *&v0[OBJC_IVAR____TtC18ASMessagesProvider41AppEventLiveIndicatorAnimationCoordinator_currentAnimator] = 0;
  v6.receiver = v0;
  v6.super_class = ObjectType;
  return objc_msgSendSuper2(&v6, "init");
}

void sub_19EF70(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  if (a1)
  {
    v5 = ObjectType;
    v6 = OBJC_IVAR____TtC18ASMessagesProvider41AppEventLiveIndicatorAnimationCoordinator_animatingViews;
    swift_beginAccess();
    v7 = a1;
    sub_1A01E8(&v29, v7);
    swift_endAccess();

    v8 = OBJC_IVAR____TtC18ASMessagesProvider41AppEventLiveIndicatorAnimationCoordinator_animationPhase;
    v9 = *(v2 + OBJC_IVAR____TtC18ASMessagesProvider41AppEventLiveIndicatorAnimationCoordinator_animationPhase);
    if ((v9 - 1) >= 2)
    {
      if (!*(v2 + OBJC_IVAR____TtC18ASMessagesProvider41AppEventLiveIndicatorAnimationCoordinator_animationPhase))
      {
        [v7 setAlpha:1.0];
        goto LABEL_18;
      }
    }

    else
    {
      v10 = *(v2 + OBJC_IVAR____TtC18ASMessagesProvider41AppEventLiveIndicatorAnimationCoordinator_currentAnimator);
      if (v10)
      {
        sub_BD88(&unk_93F5C0);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_77D9F0;
        *(inited + 32) = v7;
        v12 = v7;
        v13 = v10;
        sub_1A19EC(inited);
        v15 = v14;
        swift_setDeallocating();
        swift_arrayDestroy();
        v16 = swift_allocObject();
        *(v16 + 16) = v15;
        *(v16 + 24) = v5;
        v17 = objc_allocWithZone(UIViewPropertyAnimator);
        if (v9 == 1)
        {
          v27 = sub_1A1D28;
          v28 = v16;
          v23 = _NSConcreteStackBlock;
          v24 = 1107296256;
          v18 = &unk_886C68;
        }

        else
        {
          v27 = sub_1A1CF0;
          v28 = v16;
          v23 = _NSConcreteStackBlock;
          v24 = 1107296256;
          v18 = &unk_886C18;
        }

        v25 = sub_23F0CC;
        v26 = v18;
        v21 = _Block_copy(&v23);

        v22 = [v17 initWithDuration:v21 controlPoint1:0.6 controlPoint2:0.33 animations:{0.0, 0.67, 1.0, v23, v24}];
        _Block_release(v21);
        v7 = v22;
        [v13 fractionComplete];
        [v7 setFractionComplete:?];
        [v7 startAnimation];

        goto LABEL_18;
      }

      *(v2 + OBJC_IVAR____TtC18ASMessagesProvider41AppEventLiveIndicatorAnimationCoordinator_animationPhase) = 3;
    }

    v19 = *(v2 + v6);
    if ((v19 & 0xC000000000000001) != 0)
    {

      v20 = sub_76A630();

      if (!v20)
      {
        goto LABEL_18;
      }

LABEL_13:
      if (*(v2 + v8) == 3 && !UIAccessibilityIsReduceMotionEnabled())
      {
        sub_19F560();
      }

      goto LABEL_18;
    }

    if (*(v19 + 16))
    {
      goto LABEL_13;
    }

LABEL_18:
  }
}

void sub_19F2DC()
{
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider41AppEventLiveIndicatorAnimationCoordinator_animationPhase) = 3;
  v1 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider41AppEventLiveIndicatorAnimationCoordinator_sleepTimer);
  if (v1)
  {
    [v1 invalidate];
  }

  v2 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider41AppEventLiveIndicatorAnimationCoordinator_currentAnimator);
  if (v2)
  {
    [v2 stopAnimation:1];
  }

  v3 = OBJC_IVAR____TtC18ASMessagesProvider41AppEventLiveIndicatorAnimationCoordinator_animatingViews;
  swift_beginAccess();
  v4 = *(v0 + v3);
  if ((v4 & 0xC000000000000001) != 0)
  {

    swift_unknownObjectRetain();
    sub_76A5F0();
    sub_2630C();
    sub_1A3148(&qword_946D88, sub_2630C);
    sub_769660();
    v6 = v20;
    v5 = v21;
    v7 = v22;
    v8 = v23;
    v9 = v24;
  }

  else
  {
    v10 = -1 << *(v4 + 32);
    v5 = v4 + 56;
    v7 = ~v10;
    v11 = -v10;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v9 = v12 & *(v4 + 56);
    swift_bridgeObjectRetain_n();
    v8 = 0;
    v6 = v4;
  }

  v13 = (v7 + 64) >> 6;
  if (v6 < 0)
  {
    goto LABEL_18;
  }

  while (1)
  {
    v14 = v8;
    v15 = v9;
    v16 = v8;
    if (!v9)
    {
      break;
    }

LABEL_16:
    v17 = (v15 - 1) & v15;
    v18 = *(*(v6 + 48) + ((v16 << 9) | (8 * __clz(__rbit64(v15)))));
    if (!v18)
    {
LABEL_22:
      sub_1A01E0();

      return;
    }

    while (1)
    {
      [v18 setAlpha:1.0];

      v8 = v16;
      v9 = v17;
      if ((v6 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_18:
      if (sub_76A660())
      {
        sub_2630C();
        swift_dynamicCast();
        v18 = v19;
        v16 = v8;
        v17 = v9;
        if (v19)
        {
          continue;
        }
      }

      goto LABEL_22;
    }
  }

  while (1)
  {
    v16 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v16 >= v13)
    {
      goto LABEL_22;
    }

    v15 = *(v5 + 8 * v16);
    ++v14;
    if (v15)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
}

void sub_19F560()
{
  v1 = OBJC_IVAR____TtC18ASMessagesProvider41AppEventLiveIndicatorAnimationCoordinator_animatingViews;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if ((v2 & 0xC000000000000001) != 0)
  {

    v3 = sub_76A630();

    if (v3)
    {
LABEL_3:
      *(v0 + OBJC_IVAR____TtC18ASMessagesProvider41AppEventLiveIndicatorAnimationCoordinator_animationPhase) = 0;
      v4 = swift_allocObject();
      swift_unknownObjectWeakInit();
      aBlock[4] = sub_1A1D84;
      aBlock[5] = v4;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_123860;
      aBlock[3] = &unk_886CB8;
      v5 = _Block_copy(aBlock);
      v6 = objc_opt_self();

      v7 = [v6 timerWithTimeInterval:0 repeats:v5 block:0.8];
      _Block_release(v5);

      v8 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider41AppEventLiveIndicatorAnimationCoordinator_sleepTimer);
      *(v0 + OBJC_IVAR____TtC18ASMessagesProvider41AppEventLiveIndicatorAnimationCoordinator_sleepTimer) = v7;
      v9 = v7;
      [v8 invalidate];

      v10 = [objc_opt_self() mainRunLoop];
      [v10 addTimer:v9 forMode:NSRunLoopCommonModes];

      return;
    }
  }

  else if (*(v2 + 16))
  {
    goto LABEL_3;
  }

  sub_19F2DC();
}

void sub_19F75C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = *(Strong + OBJC_IVAR____TtC18ASMessagesProvider41AppEventLiveIndicatorAnimationCoordinator_sleepTimer);
    *(Strong + OBJC_IVAR____TtC18ASMessagesProvider41AppEventLiveIndicatorAnimationCoordinator_sleepTimer) = 0;
    v2 = Strong;
    [v1 invalidate];
  }

  swift_beginAccess();
  v3 = swift_unknownObjectWeakLoadStrong();
  if (v3)
  {
    v4 = v3;
    sub_19F804();
  }
}

void sub_19F804()
{
  ObjectType = swift_getObjectType();
  v2 = OBJC_IVAR____TtC18ASMessagesProvider41AppEventLiveIndicatorAnimationCoordinator_animatingViews;
  swift_beginAccess();
  v3 = *(v0 + v2);
  if ((v3 & 0xC000000000000001) == 0)
  {
    if (*(v3 + 16))
    {
      goto LABEL_3;
    }

LABEL_6:
    sub_19F2DC();
    return;
  }

  v4 = sub_76A630();

  if (!v4)
  {
    goto LABEL_6;
  }

LABEL_3:
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider41AppEventLiveIndicatorAnimationCoordinator_animationPhase) = 1;
  v5 = *(v0 + v2);
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = ObjectType;
  v7 = objc_allocWithZone(UIViewPropertyAnimator);
  v19 = sub_1A31B4;
  v20 = v6;
  aBlock = _NSConcreteStackBlock;
  v16 = 1107296256;
  v17 = sub_23F0CC;
  v18 = &unk_886D08;
  v8 = _Block_copy(&aBlock);

  v9 = [v7 initWithDuration:v8 controlPoint1:0.6 controlPoint2:0.33 animations:{0.0, 0.67, 1.0}];
  _Block_release(v8);
  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v19 = sub_1A1D8C;
  v20 = v10;
  aBlock = _NSConcreteStackBlock;
  v16 = 1107296256;
  v17 = sub_19EE34;
  v18 = &unk_886D30;
  v11 = _Block_copy(&aBlock);

  [v9 addCompletion:v11];
  _Block_release(v11);
  v12 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider41AppEventLiveIndicatorAnimationCoordinator_currentAnimator);
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider41AppEventLiveIndicatorAnimationCoordinator_currentAnimator) = v9;
  if (v12)
  {
    v13 = v9;
    [v12 stopAnimation:1];
  }

  else
  {
    v14 = v9;
  }

  [v9 startAnimation];
}

void sub_19FAA8()
{
  ObjectType = swift_getObjectType();
  v2 = OBJC_IVAR____TtC18ASMessagesProvider41AppEventLiveIndicatorAnimationCoordinator_animatingViews;
  swift_beginAccess();
  v3 = *(v0 + v2);
  if ((v3 & 0xC000000000000001) == 0)
  {
    if (*(v3 + 16))
    {
      goto LABEL_3;
    }

LABEL_6:
    sub_19F2DC();
    return;
  }

  v4 = sub_76A630();

  if (!v4)
  {
    goto LABEL_6;
  }

LABEL_3:
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider41AppEventLiveIndicatorAnimationCoordinator_animationPhase) = 2;
  v5 = *(v0 + v2);
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = ObjectType;
  v7 = objc_allocWithZone(UIViewPropertyAnimator);
  v19 = sub_1A31B8;
  v20 = v6;
  aBlock = _NSConcreteStackBlock;
  v16 = 1107296256;
  v17 = sub_23F0CC;
  v18 = &unk_886D80;
  v8 = _Block_copy(&aBlock);

  v9 = [v7 initWithDuration:v8 controlPoint1:0.6 controlPoint2:0.33 animations:{0.0, 0.67, 1.0}];
  _Block_release(v8);
  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v19 = sub_1A1DBC;
  v20 = v10;
  aBlock = _NSConcreteStackBlock;
  v16 = 1107296256;
  v17 = sub_19EE34;
  v18 = &unk_886DA8;
  v11 = _Block_copy(&aBlock);

  [v9 addCompletion:v11];
  _Block_release(v11);
  v12 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider41AppEventLiveIndicatorAnimationCoordinator_currentAnimator);
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider41AppEventLiveIndicatorAnimationCoordinator_currentAnimator) = v9;
  if (v12)
  {
    v13 = v9;
    [v12 stopAnimation:1];
  }

  else
  {
    v14 = v9;
  }

  [v9 startAnimation];
}

void sub_19FD4C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  if (!a1)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v5 = Strong;
      a3();
    }
  }
}

void sub_19FDB4(uint64_t a1, double a2)
{
  v3 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_76A5F0();
    sub_2630C();
    sub_1A3148(&qword_946D88, sub_2630C);
    sub_769660();
    v3 = v17;
    v4 = v18;
    v5 = v19;
    v6 = v20;
    v7 = v21;
  }

  else
  {
    v8 = -1 << *(a1 + 32);
    v4 = a1 + 56;
    v5 = ~v8;
    v9 = -v8;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v7 = v10 & *(a1 + 56);

    v6 = 0;
  }

  if (v3 < 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v11 = v6;
    v12 = v7;
    v13 = v6;
    if (!v7)
    {
      break;
    }

LABEL_12:
    v14 = (v12 - 1) & v12;
    v15 = *(*(v3 + 48) + ((v13 << 9) | (8 * __clz(__rbit64(v12)))));
    if (!v15)
    {
LABEL_18:
      sub_1A01E0();
      return;
    }

    while (1)
    {
      [v15 setAlpha:a2];

      v6 = v13;
      v7 = v14;
      if ((v3 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (sub_76A660())
      {
        sub_2630C();
        swift_dynamicCast();
        v15 = v16;
        v13 = v6;
        v14 = v7;
        if (v16)
        {
          continue;
        }
      }

      goto LABEL_18;
    }
  }

  while (1)
  {
    v13 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v13 >= ((v5 + 64) >> 6))
    {
      goto LABEL_18;
    }

    v12 = *(v4 + 8 * v13);
    ++v11;
    if (v12)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

void sub_19FFBC()
{
  v1 = OBJC_IVAR____TtC18ASMessagesProvider41AppEventLiveIndicatorAnimationCoordinator_animatingViews;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if ((v2 & 0xC000000000000001) != 0)
  {

    v3 = sub_76A630();

    if (!v3)
    {
      return;
    }
  }

  else if (!*(v2 + 16))
  {
    return;
  }

  if (*(v0 + OBJC_IVAR____TtC18ASMessagesProvider41AppEventLiveIndicatorAnimationCoordinator_animationPhase) == 3 && !UIAccessibilityIsReduceMotionEnabled())
  {
    sub_19F560();
  }
}

unint64_t sub_1A018C()
{
  result = qword_9480F8;
  if (!qword_9480F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_9480F8);
  }

  return result;
}

uint64_t sub_1A01E8(void *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = sub_76A640();

    if (v9)
    {

      sub_2630C();
      swift_dynamicCast();
      result = 0;
      *a1 = v22;
      return result;
    }

    result = sub_76A630();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v19 = sub_26EAFC(v7, result + 1);
    if (v19[3] <= v19[2])
    {
      sub_26ECEC();
    }

    v18 = v8;
    sub_26F6FC(v18, v19);

    *v3 = v19;
    goto LABEL_16;
  }

  sub_2630C();
  v11 = sub_76A1B0(*(v6 + 40));
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v3;
    v18 = a2;
    sub_1A096C(v18, v13, isUniquelyReferenced_nonNull_native);
    *v3 = v23;
LABEL_16:
    *a1 = v18;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = sub_76A1C0();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v20 = *(*(v6 + 48) + 8 * v13);
  *a1 = v20;
  v21 = v20;
  return 0;
}

uint64_t sub_1A0400(void *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  sub_769240();
  sub_76AA30();
  sub_769330();
  v7 = sub_76AA80();

  v8 = -1 << *(v6 + 32);
  v9 = v7 & ~v8;
  if ((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    while (1)
    {
      v11 = sub_769240();
      v13 = v12;
      if (v11 == sub_769240() && v13 == v14)
      {

        goto LABEL_12;
      }

      v16 = sub_76A950();

      if (v16)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
      if (((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

LABEL_12:
    v20 = *(*(v6 + 48) + 8 * v9);
    *a1 = v20;
    v21 = v20;
    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22 = *v3;
    v18 = a2;
    sub_1A0ACC(v18, v9, isUniquelyReferenced_nonNull_native);
    *v3 = v22;
    *a1 = v18;
    return 1;
  }
}

uint64_t sub_1A05AC(uint64_t *a1, uint64_t a2)
{
  v5 = *v2;
  v6 = sub_76AA20();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (*(*(v5 + 48) + 8 * v8) != a2)
    {
      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    sub_1A0CB4(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_1A068C(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_764CF0();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_1A3148(&qword_948180, &type metadata accessor for AdamId);
  v33 = a2;
  v11 = sub_769150();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      sub_1A3148(&qword_945868, &type metadata accessor for AdamId);
      v21 = sub_7691C0();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    sub_1A0DD4(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

void sub_1A096C(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_26ECEC();
  }

  else
  {
    if (v7 > v6)
    {
      sub_26F780();
      goto LABEL_12;
    }

    sub_1A1078();
  }

  v8 = *v3;
  v9 = sub_76A1B0(*(*v3 + 40));
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    sub_2630C();
    do
    {
      v12 = *(*(v8 + 48) + 8 * a2);
      v13 = sub_76A1C0();

      if (v13)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v14 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = a1;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return;
  }

  __break(1u);
LABEL_15:
  sub_76A9A0();
  __break(1u);
}

uint64_t sub_1A0ACC(uint64_t result, unint64_t a2, char a3)
{
  v4 = v3;
  v6 = result;
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 > v7 && (a3 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a3)
  {
    sub_26EF14();
  }

  else
  {
    if (v8 > v7)
    {
      result = sub_26F8D0();
      goto LABEL_16;
    }

    sub_1A128C();
  }

  v9 = *v3;
  sub_769240();
  sub_76AA30();
  sub_769330();
  v10 = sub_76AA80();

  v11 = -1 << *(v9 + 32);
  a2 = v10 & ~v11;
  if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v12 = ~v11;
    type metadata accessor for ActivityType(0);
    do
    {
      v13 = sub_769240();
      v15 = v14;
      if (v13 == sub_769240() && v15 == v16)
      {
        goto LABEL_19;
      }

      v18 = sub_76A950();

      if (v18)
      {
        goto LABEL_20;
      }

      a2 = (a2 + 1) & v12;
    }

    while (((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_16:
  v19 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v19 + 48) + 8 * a2) = v6;
  v20 = *(v19 + 16);
  v21 = __OFADD__(v20, 1);
  v22 = v20 + 1;
  if (!v21)
  {
    *(v19 + 16) = v22;
    return result;
  }

  __break(1u);
LABEL_19:

LABEL_20:
  result = sub_76A9A0();
  __break(1u);
  return result;
}

uint64_t sub_1A0CB4(uint64_t result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_26F190();
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_26FA20();
      a2 = v7;
      goto LABEL_12;
    }

    sub_1A14E0();
  }

  v8 = *v3;
  result = sub_76AA20();
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    while (*(*(v8 + 48) + 8 * a2) != v4)
    {
      a2 = (a2 + 1) & v10;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v11 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v11 + 48) + 8 * a2) = v4;
  v12 = *(v11 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (!v13)
  {
    *(v11 + 16) = v14;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_76A9A0();
  __break(1u);
  return result;
}

uint64_t sub_1A0DD4(uint64_t a1, unint64_t a2, char a3)
{
  v32 = a1;
  v6 = sub_764CF0();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v29 = v3;
  v30 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_26F3B4();
  }

  else
  {
    if (v12 > v11)
    {
      sub_26FB60();
      goto LABEL_12;
    }

    sub_1A16D0();
  }

  v13 = *v3;
  sub_1A3148(&qword_948180, &type metadata accessor for AdamId);
  v14 = sub_769150();
  v15 = v13 + 56;
  v31 = v13;
  v16 = -1 << *(v13 + 32);
  a2 = v14 & ~v16;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    do
    {
      v18(v10, *(v31 + 48) + v21 * a2, v6);
      sub_1A3148(&qword_945868, &type metadata accessor for AdamId);
      v22 = sub_7691C0();
      (*(v19 - 8))(v10, v6);
      if (v22)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v15 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v23 = v30;
  v24 = *v29;
  *(v24 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v23 + 32))(*(v24 + 48) + *(v23 + 72) * a2, v32, v6, v8);
  v26 = *(v24 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (!v27)
  {
    *(v24 + 16) = v28;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_76A9A0();
  __break(1u);
  return result;
}

uint64_t sub_1A1078()
{
  v1 = v0;
  v2 = *v0;
  sub_BD88(&qword_948100);
  result = sub_76A700();
  v4 = result;
  if (*(v2 + 16))
  {
    v24 = v0;
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    while (v8)
    {
      v12 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_15:
      v15 = *(v4 + 40);
      v16 = *(*(v2 + 48) + 8 * (v12 | (v5 << 6)));
      result = sub_76A1B0(v15);
      v17 = -1 << *(v4 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v10 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v10 + 8 * v19);
          if (v23 != -1)
          {
            v11 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v11 = __clz(__rbit64((-1 << v18) & ~*(v10 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      *(*(v4 + 48) + 8 * v11) = v16;
      ++*(v4 + 16);
    }

    v13 = v5;
    while (1)
    {
      v5 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v5 >= v9)
      {

        v1 = v24;
        goto LABEL_26;
      }

      v14 = *(v2 + 56 + 8 * v5);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v8 = (v14 - 1) & v14;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_1A128C()
{
  v1 = v0;
  v2 = *v0;
  sub_BD88(&qword_948128);
  result = sub_76A700();
  v4 = result;
  if (*(v2 + 16))
  {
    v26 = v0;
    v27 = v2;
    v5 = 0;
    v6 = v2 + 56;
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v2 + 48) + 8 * (v13 | (v5 << 6)));
      sub_769240();
      sub_76AA30();
      v17 = v16;
      sub_769330();
      v18 = sub_76AA80();

      v19 = -1 << *(v4 + 32);
      v20 = v18 & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v11 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v11 + 8 * v21);
          if (v25 != -1)
          {
            v12 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v20) & ~*(v11 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v4 + 48) + 8 * v12) = v17;
      ++*(v4 + 16);
      v2 = v27;
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v5 >= v10)
      {

        v1 = v26;
        goto LABEL_26;
      }

      v15 = *(v6 + 8 * v5);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_1A14E0()
{
  v1 = v0;
  v2 = *v0;
  sub_BD88(&qword_948140);
  result = sub_76A700();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    while (v8)
    {
      v12 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_15:
      v15 = *(*(v2 + 48) + 8 * (v12 | (v5 << 6)));
      result = sub_76AA20();
      v16 = -1 << *(v4 + 32);
      v17 = result & ~v16;
      v18 = v17 >> 6;
      if (((-1 << v17) & ~*(v10 + 8 * (v17 >> 6))) == 0)
      {
        v19 = 0;
        v20 = (63 - v16) >> 6;
        while (++v18 != v20 || (v19 & 1) == 0)
        {
          v21 = v18 == v20;
          if (v18 == v20)
          {
            v18 = 0;
          }

          v19 |= v21;
          v22 = *(v10 + 8 * v18);
          if (v22 != -1)
          {
            v11 = __clz(__rbit64(~v22)) + (v18 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_26;
      }

      v11 = __clz(__rbit64((-1 << v17) & ~*(v10 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      *(*(v4 + 48) + 8 * v11) = v15;
      ++*(v4 + 16);
    }

    v13 = v5;
    while (1)
    {
      v5 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v5 >= v9)
      {
        goto LABEL_24;
      }

      v14 = *(v2 + 56 + 8 * v5);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v8 = (v14 - 1) & v14;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
  }

  else
  {
LABEL_24:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_1A16D0()
{
  v1 = v0;
  v32 = sub_764CF0();
  v2 = *(v32 - 8);
  __chkstk_darwin(v32);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  sub_BD88(&qword_9520F0);
  v6 = sub_76A700();
  result = v5;
  if (*(v5 + 16))
  {
    v27 = v0;
    v8 = 0;
    v9 = v5 + 56;
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v30 = v2 + 16;
    v31 = v2;
    v14 = v6 + 56;
    v28 = (v2 + 32);
    v29 = result;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v31 + 72);
      (*(v31 + 16))(v4, *(result + 48) + v19 * (v16 | (v8 << 6)), v32);
      sub_1A3148(&qword_948180, &type metadata accessor for AdamId);
      result = sub_769150();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v14 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v14 + 8 * v22);
          if (v26 != -1)
          {
            v15 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v15 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      (*v28)(*(v6 + 48) + v15 * v19, v4, v32);
      ++*(v6 + 16);
      result = v29;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v27;
        goto LABEL_26;
      }

      v18 = *(v9 + 8 * v8);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v6;
  }

  return result;
}

void sub_1A19EC(unint64_t a1)
{
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    if (sub_76A860())
    {
LABEL_3:
      sub_BD88(&qword_948100);
      v3 = sub_76A720();
      v4 = a1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      v5 = sub_76A860();
      if (!v5)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else if (*(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)))
  {
    goto LABEL_3;
  }

  v3 = &_swiftEmptySetSingleton;
  v4 = a1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return;
  }

LABEL_9:
  v6 = (v3 + 7);
  v37 = v5;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v7 = 0;
    while (1)
    {
      v8 = sub_76A770();
      v9 = __OFADD__(v7++, 1);
      if (v9)
      {
        break;
      }

      v10 = v8;
      v11 = sub_76A1B0(v3[5]);
      v12 = -1 << *(v3 + 32);
      v13 = v11 & ~v12;
      v14 = v13 >> 6;
      v15 = *&v6[8 * (v13 >> 6)];
      v16 = 1 << v13;
      if (((1 << v13) & v15) != 0)
      {
        v17 = ~v12;
        sub_2630C();
        while (1)
        {
          v18 = *(v3[6] + 8 * v13);
          v19 = sub_76A1C0();

          if (v19)
          {
            break;
          }

          v13 = (v13 + 1) & v17;
          v14 = v13 >> 6;
          v15 = *&v6[8 * (v13 >> 6)];
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            v5 = v37;
            goto LABEL_18;
          }
        }

        swift_unknownObjectRelease();
        v5 = v37;
        if (v7 == v37)
        {
          return;
        }
      }

      else
      {
LABEL_18:
        *&v6[8 * v14] = v16 | v15;
        *(v3[6] + 8 * v13) = v10;
        v20 = v3[2];
        v9 = __OFADD__(v20, 1);
        v21 = v20 + 1;
        if (v9)
        {
          goto LABEL_32;
        }

        v3[2] = v21;
        if (v7 == v5)
        {
          return;
        }
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
  }

  else
  {
    v22 = 0;
    v36 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
    while (v22 != v36)
    {
      v23 = v3[5];
      v24 = *(a1 + 32 + 8 * v22);
      v25 = sub_76A1B0(v23);
      v26 = -1 << *(v3 + 32);
      v27 = v25 & ~v26;
      v28 = v27 >> 6;
      v29 = *&v6[8 * (v27 >> 6)];
      v30 = 1 << v27;
      if (((1 << v27) & v29) != 0)
      {
        v31 = ~v26;
        sub_2630C();
        while (1)
        {
          v32 = *(v3[6] + 8 * v27);
          v33 = sub_76A1C0();

          if (v33)
          {
            break;
          }

          v27 = (v27 + 1) & v31;
          v28 = v27 >> 6;
          v29 = *&v6[8 * (v27 >> 6)];
          v30 = 1 << v27;
          if (((1 << v27) & v29) == 0)
          {
            goto LABEL_29;
          }
        }
      }

      else
      {
LABEL_29:
        *&v6[8 * v28] = v30 | v29;
        *(v3[6] + 8 * v27) = v24;
        v34 = v3[2];
        v9 = __OFADD__(v34, 1);
        v35 = v34 + 1;
        if (v9)
        {
          goto LABEL_34;
        }

        v3[2] = v35;
      }

      if (++v22 == v37)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
}

uint64_t sub_1A1CB8()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1A1D10(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1A1D4C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

void *sub_1A1DEC(uint64_t a1)
{
  v2 = sub_757480();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    sub_BD88(&qword_948160);
    v9 = sub_76A720();
    v10 = 0;
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v35 = v12;
    v36 = v9 + 56;
    v13 = *(v11 + 64);
    v32 = v8;
    v33 = a1 + ((v13 + 32) & ~v13);
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    v31 = (v11 + 16);
    while (1)
    {
      v34 = v10;
      v35(v37, v33 + v14 * v10, v2);
      sub_1A3148(&qword_948168, &type metadata accessor for Calendar.Component);
      v16 = sub_769150();
      v17 = ~(-1 << *(v9 + 32));
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *(v36 + 8 * v19);
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) != 0)
      {
        while (1)
        {
          v22 = v11;
          v35(v5, *(v9 + 48) + v18 * v14, v2);
          sub_1A3148(&qword_948170, &type metadata accessor for Calendar.Component);
          v23 = sub_7691C0();
          v24 = *v15;
          (*v15)(v5, v2);
          if (v23)
          {
            break;
          }

          v18 = (v18 + 1) & v17;
          v19 = v18 >> 6;
          v20 = *(v36 + 8 * (v18 >> 6));
          v21 = 1 << v18;
          v11 = v22;
          if (((1 << v18) & v20) == 0)
          {
            goto LABEL_8;
          }
        }

        v24(v37, v2);
        v11 = v22;
      }

      else
      {
LABEL_8:
        v25 = v37;
        *(v36 + 8 * v19) = v21 | v20;
        result = (*v31)(*(v9 + 48) + v18 * v14, v25, v2);
        v27 = *(v9 + 16);
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          __break(1u);
          return result;
        }

        *(v9 + 16) = v29;
      }

      v10 = v34 + 1;
      if (v34 + 1 == v32)
      {
        return v9;
      }
    }
  }

  return &_swiftEmptySetSingleton;
}

void *sub_1A210C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_BD88(&qword_948128);
    v3 = sub_76A720();
    v4 = 0;
    v5 = v3 + 56;
    v25 = v1;
    v26 = a1 + 32;
    v6 = v1;
    while (1)
    {
      v7 = *(v26 + 8 * v4);
      sub_769240();
      sub_76AA30();
      v27 = v7;
      sub_769330();
      v8 = sub_76AA80();

      v10 = -1 << *(v3 + 32);
      v11 = v8 & ~v10;
      v12 = v11 >> 6;
      v13 = *(v5 + 8 * (v11 >> 6));
      v14 = 1 << v11;
      if (((1 << v11) & v13) == 0)
      {
        goto LABEL_15;
      }

      v15 = ~v10;
      do
      {
        v16 = sub_769240();
        v18 = v17;
        if (v16 == sub_769240() && v18 == v19)
        {

LABEL_4:
          v6 = v25;
          goto LABEL_5;
        }

        v21 = sub_76A950();

        if (v21)
        {

          goto LABEL_4;
        }

        v11 = (v11 + 1) & v15;
        v12 = v11 >> 6;
        v13 = *(v5 + 8 * (v11 >> 6));
        v14 = 1 << v11;
      }

      while (((1 << v11) & v13) != 0);
      v6 = v25;
LABEL_15:
      *(v5 + 8 * v12) = v14 | v13;
      *(*(v3 + 48) + 8 * v11) = v27;
      v22 = *(v3 + 16);
      v23 = __OFADD__(v22, 1);
      v24 = v22 + 1;
      if (v23)
      {
        __break(1u);
        return result;
      }

      *(v3 + 16) = v24;
LABEL_5:
      if (++v4 == v6)
      {
        return v3;
      }
    }
  }

  return &_swiftEmptySetSingleton;
}

void *sub_1A2300(uint64_t a1)
{
  v2 = sub_764930();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    sub_BD88(&qword_948130);
    v9 = sub_76A720();
    v10 = 0;
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v35 = v12;
    v36 = v9 + 56;
    v13 = *(v11 + 64);
    v32 = v8;
    v33 = a1 + ((v13 + 32) & ~v13);
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    v31 = (v11 + 16);
    while (1)
    {
      v34 = v10;
      v35(v37, v33 + v14 * v10, v2);
      sub_1A3148(&qword_948138, &type metadata accessor for Shelf.ContentType);
      v16 = sub_769150();
      v17 = ~(-1 << *(v9 + 32));
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *(v36 + 8 * v19);
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) != 0)
      {
        while (1)
        {
          v22 = v11;
          v35(v5, *(v9 + 48) + v18 * v14, v2);
          sub_1A3148(&qword_944DC0, &type metadata accessor for Shelf.ContentType);
          v23 = sub_7691C0();
          v24 = *v15;
          (*v15)(v5, v2);
          if (v23)
          {
            break;
          }

          v18 = (v18 + 1) & v17;
          v19 = v18 >> 6;
          v20 = *(v36 + 8 * (v18 >> 6));
          v21 = 1 << v18;
          v11 = v22;
          if (((1 << v18) & v20) == 0)
          {
            goto LABEL_8;
          }
        }

        v24(v37, v2);
        v11 = v22;
      }

      else
      {
LABEL_8:
        v25 = v37;
        *(v36 + 8 * v19) = v21 | v20;
        result = (*v31)(*(v9 + 48) + v18 * v14, v25, v2);
        v27 = *(v9 + 16);
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          __break(1u);
          return result;
        }

        *(v9 + 16) = v29;
      }

      v10 = v34 + 1;
      if (v34 + 1 == v32)
      {
        return v9;
      }
    }
  }

  return &_swiftEmptySetSingleton;
}

Swift::Int sub_1A2620(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_BD88(&qword_948120);
    v3 = sub_76A720();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (1)
    {
      v10 = *(v6 + 8 * v4);
      sub_76AA30();
      sub_76AA40(v10);
      result = sub_76AA80();
      v12 = ~(-1 << *(v3 + 32));
      v13 = result & v12;
      v14 = (result & v12) >> 6;
      v15 = *(v5 + 8 * v14);
      v16 = 1 << (result & v12);
      v17 = *(v3 + 48);
      if ((v16 & v15) != 0)
      {
        while (*(v17 + 8 * v13) != v10)
        {
          v13 = (v13 + 1) & v12;
          v14 = v13 >> 6;
          v15 = *(v5 + 8 * (v13 >> 6));
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            goto LABEL_3;
          }
        }
      }

      else
      {
LABEL_3:
        *(v5 + 8 * v14) = v16 | v15;
        *(v17 + 8 * v13) = v10;
        v7 = *(v3 + 16);
        v8 = __OFADD__(v7, 1);
        v9 = v7 + 1;
        if (v8)
        {
          __break(1u);
          return result;
        }

        *(v3 + 16) = v9;
      }

      if (++v4 == v1)
      {
        return v3;
      }
    }
  }

  return &_swiftEmptySetSingleton;
}

void *sub_1A275C(uint64_t a1)
{
  v2 = sub_757640();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    sub_BD88(&qword_948178);
    v9 = sub_76A720();
    v10 = 0;
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v35 = v12;
    v36 = v9 + 56;
    v13 = *(v11 + 64);
    v32 = v8;
    v33 = a1 + ((v13 + 32) & ~v13);
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    v31 = (v11 + 16);
    while (1)
    {
      v34 = v10;
      v35(v37, v33 + v14 * v10, v2);
      sub_1A3148(&unk_952080, &type metadata accessor for IndexPath);
      v16 = sub_769150();
      v17 = ~(-1 << *(v9 + 32));
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *(v36 + 8 * v19);
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) != 0)
      {
        while (1)
        {
          v22 = v11;
          v35(v5, *(v9 + 48) + v18 * v14, v2);
          sub_1A3148(&qword_944B50, &type metadata accessor for IndexPath);
          v23 = sub_7691C0();
          v24 = *v15;
          (*v15)(v5, v2);
          if (v23)
          {
            break;
          }

          v18 = (v18 + 1) & v17;
          v19 = v18 >> 6;
          v20 = *(v36 + 8 * (v18 >> 6));
          v21 = 1 << v18;
          v11 = v22;
          if (((1 << v18) & v20) == 0)
          {
            goto LABEL_8;
          }
        }

        v24(v37, v2);
        v11 = v22;
      }

      else
      {
LABEL_8:
        v25 = v37;
        *(v36 + 8 * v19) = v21 | v20;
        result = (*v31)(*(v9 + 48) + v18 * v14, v25, v2);
        v27 = *(v9 + 16);
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          __break(1u);
          return result;
        }

        *(v9 + 16) = v29;
      }

      v10 = v34 + 1;
      if (v34 + 1 == v32)
      {
        return v9;
      }
    }
  }

  return &_swiftEmptySetSingleton;
}

unint64_t sub_1A2A7C(unint64_t result)
{
  v1 = result;
  v2 = result >> 62;
  if (result >> 62)
  {
    result = sub_76A860();
    if (result)
    {
LABEL_3:
      sub_BD88(&qword_948148);
      result = sub_76A720();
      v3 = result;
      v4 = v1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      result = sub_76A860();
      v5 = result;
      if (!result)
      {
        return v3;
      }

      goto LABEL_9;
    }
  }

  else if (*(&dword_10 + (result & 0xFFFFFFFFFFFFFF8)))
  {
    goto LABEL_3;
  }

  v3 = &_swiftEmptySetSingleton;
  v4 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return v3;
  }

LABEL_9:
  v6 = 0;
  v7 = v3 + 56;
  v20 = v1 & 0xC000000000000001;
  v18 = v1 + 32;
  v19 = v1 & 0xFFFFFFFFFFFFFF8;
  while (v20)
  {
    result = sub_76A770();
    v8 = result;
    v9 = __OFADD__(v6++, 1);
    if (v9)
    {
      goto LABEL_25;
    }

LABEL_18:
    sub_767C10();
    sub_1A3148(&qword_948150, &type metadata accessor for AnyCancellable);
    result = sub_769150();
    v10 = -1 << v3[32];
    v11 = result & ~v10;
    v12 = v11 >> 6;
    v13 = *&v7[8 * (v11 >> 6)];
    v14 = 1 << v11;
    if (((1 << v11) & v13) != 0)
    {
      v15 = ~v10;
      sub_1A3148(&qword_948158, &type metadata accessor for AnyCancellable);
      while (1)
      {
        result = sub_7691C0();
        if (result)
        {
          break;
        }

        v11 = (v11 + 1) & v15;
        v12 = v11 >> 6;
        v13 = *&v7[8 * (v11 >> 6)];
        v14 = 1 << v11;
        if (((1 << v11) & v13) == 0)
        {
          goto LABEL_22;
        }
      }
    }

    else
    {
LABEL_22:
      *&v7[8 * v12] = v14 | v13;
      *(*(v3 + 6) + 8 * v11) = v8;
      v16 = *(v3 + 2);
      v9 = __OFADD__(v16, 1);
      v17 = v16 + 1;
      if (v9)
      {
        goto LABEL_26;
      }

      *(v3 + 2) = v17;
    }

    if (v6 == v5)
    {
      return v3;
    }
  }

  if (v6 >= *(v19 + 16))
  {
    goto LABEL_27;
  }

  v8 = *(v18 + 8 * v6);

  v9 = __OFADD__(v6++, 1);
  if (!v9)
  {
    goto LABEL_18;
  }

LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

void *sub_1A2D10(uint64_t a1)
{
  v2 = sub_768E20();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    sub_BD88(&qword_948108);
    v9 = sub_76A720();
    v10 = 0;
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v35 = v12;
    v36 = v9 + 56;
    v13 = *(v11 + 64);
    v32 = v8;
    v33 = a1 + ((v13 + 32) & ~v13);
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    v31 = (v11 + 16);
    while (1)
    {
      v34 = v10;
      v35(v37, v33 + v14 * v10, v2);
      sub_1A3148(&qword_948110, &type metadata accessor for MetricsFieldInclusionRequest);
      v16 = sub_769150();
      v17 = ~(-1 << *(v9 + 32));
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *(v36 + 8 * v19);
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) != 0)
      {
        while (1)
        {
          v22 = v11;
          v35(v5, *(v9 + 48) + v18 * v14, v2);
          sub_1A3148(&qword_948118, &type metadata accessor for MetricsFieldInclusionRequest);
          v23 = sub_7691C0();
          v24 = *v15;
          (*v15)(v5, v2);
          if (v23)
          {
            break;
          }

          v18 = (v18 + 1) & v17;
          v19 = v18 >> 6;
          v20 = *(v36 + 8 * (v18 >> 6));
          v21 = 1 << v18;
          v11 = v22;
          if (((1 << v18) & v20) == 0)
          {
            goto LABEL_8;
          }
        }

        v24(v37, v2);
        v11 = v22;
      }

      else
      {
LABEL_8:
        v25 = v37;
        *(v36 + 8 * v19) = v21 | v20;
        result = (*v31)(*(v9 + 48) + v18 * v14, v25, v2);
        v27 = *(v9 + 16);
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          __break(1u);
          return result;
        }

        *(v9 + 16) = v29;
      }

      v10 = v34 + 1;
      if (v34 + 1 == v32)
      {
        return v9;
      }
    }
  }

  return &_swiftEmptySetSingleton;
}

uint64_t sub_1A3030(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_BD88(&qword_948140);
    v3 = sub_76A720();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    v7 = ~(-1 << *(v3 + 32));
    while (1)
    {
      v11 = *(v6 + 8 * v4);
      result = sub_76AA20();
      v13 = result & v7;
      v14 = (result & v7) >> 6;
      v15 = *(v5 + 8 * v14);
      v16 = 1 << (result & v7);
      v17 = *(v3 + 48);
      if ((v16 & v15) != 0)
      {
        while (*(v17 + 8 * v13) != v11)
        {
          v13 = (v13 + 1) & v7;
          v14 = v13 >> 6;
          v15 = *(v5 + 8 * (v13 >> 6));
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            goto LABEL_3;
          }
        }
      }

      else
      {
LABEL_3:
        *(v5 + 8 * v14) = v16 | v15;
        *(v17 + 8 * v13) = v11;
        v8 = *(v3 + 16);
        v9 = __OFADD__(v8, 1);
        v10 = v8 + 1;
        if (v9)
        {
          __break(1u);
          return result;
        }

        *(v3 + 16) = v10;
      }

      if (++v4 == v1)
      {
        return v3;
      }
    }
  }

  return &_swiftEmptySetSingleton;
}

uint64_t sub_1A3148(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for HeaderButton()
{
  result = qword_9481B0;
  if (!qword_9481B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1A3270()
{
  v0 = sub_7666D0();
  sub_161DC(v0, qword_948188);
  v1 = sub_BE38(v0, qword_948188);
  if (qword_93D4C0 != -1)
  {
    swift_once();
  }

  v2 = sub_BE38(v0, qword_99E650);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1A3338()
{
  v0 = sub_7666D0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for HeaderButton();
  if (qword_93C5D8 != -1)
  {
    swift_once();
  }

  v4 = sub_BE38(v0, qword_948188);
  (*(v1 + 16))(v3, v4, v0);
  result = sub_75C550();
  qword_9481A0 = result;
  return result;
}

uint64_t sub_1A3454()
{
  v0 = sub_7666D0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();
  if (qword_93C5D8 != -1)
  {
    swift_once();
  }

  v4 = sub_BE38(v0, qword_948188);
  (*(v1 + 16))(v3, v4, v0);
  v5 = sub_75C550();
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v5;
}

id sub_1A3598(void *a1)
{
  v2 = v1;
  v13.receiver = v1;
  v13.super_class = type metadata accessor for HeaderButton();
  objc_msgSendSuper2(&v13, "traitCollectionDidChange:", a1);
  v4 = [v1 traitCollection];
  v5 = [v4 layoutDirection];

  if (!a1 || (result = [a1 layoutDirection], v5 != result))
  {
    v7 = *&v2[qword_9481A8];
    v8 = [v2 traitCollection];
    v9 = sub_7699F0();

    if (v9)
    {
      v10 = v7;
    }

    else
    {
      v10 = 0.0;
    }

    if (v9)
    {
      v11 = 0.0;
    }

    else
    {
      v11 = v7;
    }

    if (v9)
    {
      v12 = -v7;
    }

    else
    {
      v12 = v7;
    }

    if ((v9 & 1) == 0)
    {
      v7 = -v7;
    }

    [v2 setContentEdgeInsets:{0.0, v11, 0.0, v10}];
    return [v2 setImageEdgeInsets:{0.0, v7, 0.0, v12}];
  }

  return result;
}

void sub_1A36CC(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = a1;
  sub_1A3598(a3);
}

id sub_1A3738(char *a1, double a2, double a3, double a4, double a5)
{
  *&a1[qword_9481A8] = 0;
  v10.receiver = a1;
  v10.super_class = type metadata accessor for HeaderButton();
  return objc_msgSendSuper2(&v10, "initWithFrame:", a2, a3, a4, a5);
}

id sub_1A37B8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HeaderButton();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1A37FC(uint64_t a1)
{
  v2 = sub_7664A0();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v10[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_7666D0();
  (*(*(v6 - 8) + 16))(v5, a1, v6);
  (*(v3 + 104))(v5, enum case for FontSource.useCase(_:), v2);
  v10[3] = v2;
  v10[4] = &protocol witness table for FontSource;
  v7 = sub_B1B4(v10);
  (*(v3 + 16))(v7, v5, v2);
  sub_765C10();
  (*(v3 + 8))(v5, v2);
  sub_BEB8(v10);
  return JUScreenClassGetMain();
}

id sub_1A399C@<X0>(uint64_t a1@<X8>)
{
  v1 = sub_BD88(&qword_9482D8);
  __chkstk_darwin(v1 - 8);
  sub_765D80();
  v12 = sub_765DA0();
  v11 = v2;
  v10 = sub_765DB0();
  v9 = v3;
  sub_765D10();
  sub_765D60();
  sub_765D20();
  sub_765D50();
  sub_765D30();
  sub_765D40();
  v4 = objc_opt_self();
  result = [v4 shared];
  if (result)
  {
    v6 = result;
    v7 = [result isAccountModificationRestricted];

    if (v7)
    {
LABEL_5:
      sub_765D90();
      return sub_765D70();
    }

    result = [v4 shared];
    if (result)
    {
      v8 = result;
      [result isAddingFriendsRestricted];

      goto LABEL_5;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1A3B98(uint64_t a1, uint64_t a2)
{
  v3 = sub_BD88(&unk_93F980);
  __chkstk_darwin(v3 - 8);
  v5 = &v23 - v4;
  v6 = sub_765DC0();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v23 - v11;
  sub_762C50();
  sub_765D30();
  v13 = *(v7 + 8);
  v13(v12, v6);
  if (!v28[3])
  {
    return sub_10A2C(v28, &qword_9482C0);
  }

  sub_BD88(&unk_9482C8);
  sub_764C80();
  result = swift_dynamicCast();
  if (result)
  {
    v24 = v27;
    sub_75A920();
    sub_768900();
    sub_768ED0();
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v16 = Strong;
      sub_762C50();
      sub_765D80();
      v13(v9, v6);
      v17 = swift_dynamicCast();
      v18 = v17 == 0;
      if (v17)
      {
        v19 = v25;
      }

      else
      {
        v19 = 0;
      }

      if (v18)
      {
        v20 = 0;
      }

      else
      {
        v20 = v26;
      }

      sub_5AE50(v19, v20);
    }

    v21 = sub_BD88(&unk_93F630);
    sub_768860();
    v22 = *(v21 - 8);
    if ((*(v22 + 48))(v5, 1, v21) == 1)
    {

      return sub_10A2C(v5, &unk_93F980);
    }

    else
    {
      sub_32A6C0(v24, 1, a2, v5);

      return (*(v22 + 8))(v5, v21);
    }
  }

  return result;
}

uint64_t sub_1A3F20(uint64_t a1, uint64_t a2)
{
  v3 = sub_BD88(&unk_93F980);
  __chkstk_darwin(v3 - 8);
  v5 = &v15[-v4 - 8];
  v6 = sub_765DC0();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v15[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_762C50();
  sub_765D40();
  (*(v7 + 8))(v9, v6);
  if (!v16)
  {
    return sub_10A2C(v15, &qword_9482C0);
  }

  sub_BD88(&unk_9482C8);
  sub_764C80();
  result = swift_dynamicCast();
  if (result)
  {
    v11 = v14;
    v12 = sub_BD88(&unk_93F630);
    sub_768860();
    v13 = *(v12 - 8);
    if ((*(v13 + 48))(v5, 1, v12) == 1)
    {

      return sub_10A2C(v5, &unk_93F980);
    }

    else
    {
      sub_32A6C0(v11, 1, a2, v5);

      return (*(v13 + 8))(v5, v12);
    }
  }

  return result;
}

uint64_t sub_1A418C(uint64_t result)
{
  if (result)
  {

    sub_765320();
    sub_75A110();
    sub_765E60();
    sub_75A090();
    swift_allocObject();
    swift_unknownObjectWeakInit();

    sub_75A040();

    sub_10A2C(v1, &unk_9443A0);
  }

  return result;
}

void sub_1A42B0()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = *(Strong + OBJC_IVAR____TtC18ASMessagesProvider34SmallContactCardCollectionViewCell_smallPlayerCard);

    swift_beginAccess();
    v3 = swift_unknownObjectWeakLoadStrong();
    if (v3)
    {
      v4 = v3;
      v5 = *(v3 + OBJC_IVAR____TtC18ASMessagesProvider34SmallContactCardCollectionViewCell_smallPlayerCard);

      v6 = sub_765E50();
      if (v6)
      {
      }
    }

    sub_765E20();
  }
}

uint64_t sub_1A43F0()
{
  sub_75A110();
  sub_765E60();
  sub_75A090();
  sub_75A0B0();
  return sub_1EB60(v1);
}

uint64_t sub_1A4470()
{
  sub_765E60();
  sub_765E30();
  v1 = [objc_opt_self() absoluteDimension:v0];
  v2 = sub_75F970();

  return v2;
}

uint64_t sub_1A45A4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1A45EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_765DC0();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v17 - v10;
  sub_762C50();
  sub_1A399C(v11);
  v12 = *(v6 + 8);
  v12(v8, v5);
  sub_765E40();
  v12(v11, v5);
  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v14 = swift_allocObject();
  v14[2] = a1;
  v14[3] = a3;
  v14[4] = v13;

  sub_765DF0();

  v15 = swift_allocObject();
  *(v15 + 16) = a1;
  *(v15 + 24) = a3;

  return sub_765E10();
}

uint64_t sub_1A4808()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1A4840()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1A4888()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1A48D0()
{
  v0 = sub_7666D0();
  sub_161DC(v0, qword_9482E0);
  v1 = sub_BE38(v0, qword_9482E0);
  if (qword_93D608 != -1)
  {
    swift_once();
  }

  v2 = sub_BE38(v0, qword_99EA10);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

char *sub_1A4998(void *a1, double a2, double a3, double a4, double a5)
{
  v6 = v5;
  v12 = sub_BD88(&unk_93E530);
  __chkstk_darwin(v12 - 8);
  v45 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v44 - v15;
  v17 = sub_7666D0();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v44 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6[OBJC_IVAR____TtC18ASMessagesProvider18ExpandableTextView_hasMoreButton] = 1;
  v6[OBJC_IVAR____TtC18ASMessagesProvider18ExpandableTextView_alwaysShowsMoreButtonWhenCollapsed] = 0;
  *&v6[OBJC_IVAR____TtC18ASMessagesProvider18ExpandableTextView_collapsedNumberOfLines] = 3;
  v6[OBJC_IVAR____TtC18ASMessagesProvider18ExpandableTextView_isCollapsed] = 1;
  *&v6[OBJC_IVAR____TtC18ASMessagesProvider18ExpandableTextView_languageAwareString] = 0;
  v21 = &v6[OBJC_IVAR____TtC18ASMessagesProvider18ExpandableTextView_moreTapHandler];
  *v21 = 0;
  v21[1] = 0;
  if (qword_93D608 != -1)
  {
    swift_once();
  }

  v22 = sub_BE38(v17, qword_99EA10);
  type metadata accessor for FadeInDynamicTypeButton();
  v23 = *(v18 + 16);
  v23(v20, v22, v17);
  v24 = a1;
  v25 = sub_FD810(v20, v24);

  v26 = v25;
  v47._countAndFlagsBits = 0x4D5F4E4F49544341;
  v47._object = 0xEB0000000045524FLL;
  v48._countAndFlagsBits = 0;
  v48._object = 0xE000000000000000;
  sub_75B750(v47, v48);
  v27 = sub_769210();

  [v26 setTitle:v27 forState:0];

  [v26 setContentEdgeInsets:{COERCE_DOUBLE(1), 0.0, 0.0, 0.0}];
  [v26 setAdjustsImageWhenHighlighted:0];

  *&v6[OBJC_IVAR____TtC18ASMessagesProvider18ExpandableTextView_moreButton] = v26;
  sub_75BB20();
  v28 = sub_75BB00();
  *&v6[OBJC_IVAR____TtC18ASMessagesProvider18ExpandableTextView_textLabel] = v28;
  v29 = v28;
  sub_75BAD0();

  v30 = type metadata accessor for ExpandableTextView();
  v46.receiver = v6;
  v46.super_class = v30;
  v31 = objc_msgSendSuper2(&v46, "initWithFrame:", a2, a3, a4, a5);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v35 = v31;
  [v35 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  [v35 setUserInteractionEnabled:1];
  [v35 setBackgroundColor:v24];
  v36 = OBJC_IVAR____TtC18ASMessagesProvider18ExpandableTextView_textLabel;
  [*&v35[OBJC_IVAR____TtC18ASMessagesProvider18ExpandableTextView_textLabel] setNumberOfLines:*&v35[OBJC_IVAR____TtC18ASMessagesProvider18ExpandableTextView_collapsedNumberOfLines]];
  [*&v35[v36] setLineBreakMode:0];
  [*&v35[v36] setTextAlignment:4];
  if (qword_93C5E8 != -1)
  {
    swift_once();
  }

  v37 = sub_BE38(v17, qword_9482E0);
  v23(v16, v37, v17);
  (*(v18 + 56))(v16, 0, 1, v17);
  sub_1ED18(v16, v45, &unk_93E530);
  sub_75BA40();
  sub_10A2C(v16, &unk_93E530);
  [v35 addSubview:*&v35[v36]];
  v38 = OBJC_IVAR____TtC18ASMessagesProvider18ExpandableTextView_moreButton;
  v39 = [*&v35[OBJC_IVAR____TtC18ASMessagesProvider18ExpandableTextView_moreButton] traitCollection];
  v40 = [v39 preferredContentSizeCategory];

  sub_769B60();
  v41 = *&v35[v38];
  [v41 addTarget:v35 action:"moreFrom:" forControlEvents:64];

  v42 = *&v35[v38];
  sub_75D600();

  [v35 addSubview:*&v35[v38]];
  return v35;
}

void sub_1A5114(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = *(v2 + OBJC_IVAR____TtC18ASMessagesProvider18ExpandableTextView_textLabel);
  v7 = [v6 text];
  if (!v7)
  {
    if (!a2)
    {
      return;
    }

LABEL_11:
    v14 = HIBYTE(a2) & 0xF;
    if ((a2 & 0x2000000000000000) == 0)
    {
      v14 = a1 & 0xFFFFFFFFFFFFLL;
    }

    if (v14)
    {
      sub_75E140();

      sub_75E0F0();
      sub_75E0E0();
      v15 = sub_75E160();
      v16 = 0;
    }

    else
    {
      v16 = 0;
      v15 = 0;
    }

    goto LABEL_19;
  }

  v8 = v7;
  v9 = sub_769240();
  v11 = v10;

  if (a2)
  {
    if (v11)
    {
      if (v9 == a1 && v11 == a2)
      {

LABEL_24:

        return;
      }

      v13 = sub_76A950();

      if (v13)
      {
        goto LABEL_24;
      }
    }

    goto LABEL_11;
  }

  if (!v11)
  {
    return;
  }

  v15 = 0;
  v16 = 1;
LABEL_19:
  v17 = *(v3 + OBJC_IVAR____TtC18ASMessagesProvider18ExpandableTextView_languageAwareString);
  *(v3 + OBJC_IVAR____TtC18ASMessagesProvider18ExpandableTextView_languageAwareString) = v15;
  v18 = v15;

  if (v15)
  {
    sub_75E120();

LABEL_27:
    v19 = sub_769210();

    goto LABEL_28;
  }

  if ((v16 & 1) == 0)
  {
    goto LABEL_27;
  }

  v19 = 0;
LABEL_28:
  [v6 setText:v19];

  sub_1A5974();
}

void sub_1A532C(void *a1)
{
  v2 = v1;
  v4 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider18ExpandableTextView_textLabel);
  v5 = [v4 attributedText];
  v6 = v5;
  if (!a1)
  {
    if (!v5)
    {
      return;
    }

    goto LABEL_10;
  }

  if (!v5)
  {
    v8 = a1;
LABEL_8:
    v17 = v8;
    if ([v8 length])
    {
      v9 = sub_75E140();
      v10 = v17;
      sub_75E0E0();
      v11 = objc_allocWithZone(v9);
      v12 = sub_75E150();
LABEL_11:
      v13 = *(v2 + OBJC_IVAR____TtC18ASMessagesProvider18ExpandableTextView_languageAwareString);
      *(v2 + OBJC_IVAR____TtC18ASMessagesProvider18ExpandableTextView_languageAwareString) = v12;
      v14 = v12;

      if (v12)
      {
        v15 = sub_75E0D0();

        v18 = a1;
      }

      else
      {
        v18 = a1;
        v15 = v18;
      }

      [v4 setAttributedText:v15];

      sub_1A5974();
      v8 = v18;
      goto LABEL_15;
    }

LABEL_10:
    v12 = 0;
    goto LABEL_11;
  }

  sub_BE70(0, &qword_9562D0);
  v16 = a1;
  v7 = sub_76A1C0();

  v8 = v16;
  if ((v7 & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_15:
}

id sub_1A561C()
{
  v1 = v0;
  v18.receiver = v0;
  v18.super_class = type metadata accessor for ExpandableTextView();
  objc_msgSendSuper2(&v18, "layoutSubviews");
  sub_75D650();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider18ExpandableTextView_textLabel];
  [v10 sizeThatFits:{v6, v8}];
  v12 = v11;
  v19.origin.x = v3;
  v19.origin.y = v5;
  v19.size.width = v7;
  v19.size.height = v9;
  [v10 setFrame:{v3, v5, CGRectGetWidth(v19), v12}];
  v13 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider18ExpandableTextView_moreButton];
  result = [v13 isHidden];
  if ((result & 1) == 0)
  {
    result = [v10 numberOfLines];
    if (__OFSUB__(result, 1))
    {
      __break(1u);
    }

    else
    {
      v15 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider18ExpandableTextView_languageAwareString];
      if (v15)
      {
        v16 = v15;
        [v10 numberOfLines];
        [v10 lineBreakMode];
        v17 = sub_75E100();
      }

      else
      {
        v17 = 0;
      }

      [v13 sizeThatFits:{v7, v9}];
      v20.origin.x = v3;
      v20.origin.y = v5;
      v20.size.width = v7;
      v20.size.height = v9;
      CGRectGetMaxX(v20);
      v21.origin.x = v3;
      v21.origin.y = v5;
      v21.size.width = v7;
      v21.size.height = v9;
      CGRectGetMaxY(v21);
      sub_75D650();
      sub_769D30();
      [v13 setFrame:?];
      *(v13 + qword_944EC0) = v17 == 1;
      return sub_FD398();
    }
  }

  return result;
}

id sub_1A5974()
{
  v7 = sub_BD88(&unk_93E530);
  *&v8 = __chkstk_darwin(v7 - 8).n128_u64[0];
  v10 = &v47 - v9;
  v11 = [*&v0[OBJC_IVAR____TtC18ASMessagesProvider18ExpandableTextView_textLabel] attributedText];
  if (v11)
  {
    if (v0[OBJC_IVAR____TtC18ASMessagesProvider18ExpandableTextView_hasMoreButton] == 1 && v0[OBJC_IVAR____TtC18ASMessagesProvider18ExpandableTextView_isCollapsed] == 1)
    {
      if (v0[OBJC_IVAR____TtC18ASMessagesProvider18ExpandableTextView_alwaysShowsMoreButtonWhenCollapsed] == 1)
      {
        v12 = v11;
        [*&v0[OBJC_IVAR____TtC18ASMessagesProvider18ExpandableTextView_moreButton] setHidden:0];
LABEL_23:

        return [v0 setNeedsLayout];
      }

      v12 = v11;
      v14 = [v11 length];
      v15 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider18ExpandableTextView_moreButton];
      if (!v14)
      {
        [*&v0[OBJC_IVAR____TtC18ASMessagesProvider18ExpandableTextView_moreButton] setHidden:1];
        goto LABEL_23;
      }

      v16 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider18ExpandableTextView_collapsedNumberOfLines];
      type metadata accessor for ExpandableTextView();
      sub_75D650();
      v19 = __OFADD__(v16, 1);
      v20 = v16 + 1;
      if (v19)
      {
        __break(1u);
      }

      else
      {
        v4 = v17;
        v3 = v18;
        v21 = fabs(v17);
        if (v17 > 1.79769313e308)
        {
          v21 = 1.79769313e308;
        }

        v22 = 0.0;
        if (v21 == 0.0)
        {
          goto LABEL_22;
        }

        top = UIEdgeInsetsZero.top;
        left = UIEdgeInsetsZero.left;
        bottom = UIEdgeInsetsZero.bottom;
        right = UIEdgeInsetsZero.right;
        v2 = v12;
        v25 = [v0 traitCollection];
        v26 = type metadata accessor for ExpandableTextView.MeasurementsCacheKey();
        v27 = objc_allocWithZone(v26);
        v28 = &v27[OBJC_IVAR____TtCC18ASMessagesProvider18ExpandableTextViewP33_22EA8C57047A2D7BD3210E46FB89642920MeasurementsCacheKey_layoutMargins];
        *v28 = UIEdgeInsetsZero.top;
        v28[1] = left;
        v28[2] = bottom;
        v28[3] = right;
        *&v27[OBJC_IVAR____TtCC18ASMessagesProvider18ExpandableTextViewP33_22EA8C57047A2D7BD3210E46FB89642920MeasurementsCacheKey_numberOfLines] = v20;
        v29 = &v27[OBJC_IVAR____TtCC18ASMessagesProvider18ExpandableTextViewP33_22EA8C57047A2D7BD3210E46FB89642920MeasurementsCacheKey_fittingSize];
        *v29 = v4;
        *(v29 + 1) = 0x7FEFFFFFFFFFFFFFLL;
        *&v27[OBJC_IVAR____TtCC18ASMessagesProvider18ExpandableTextViewP33_22EA8C57047A2D7BD3210E46FB89642920MeasurementsCacheKey_traitCollection] = v25;
        *&v27[OBJC_IVAR____TtCC18ASMessagesProvider18ExpandableTextViewP33_22EA8C57047A2D7BD3210E46FB89642920MeasurementsCacheKey_attributedText] = v2;
        v48.receiver = v27;
        v48.super_class = v26;
        v1 = objc_msgSendSuper2(&v48, "init");
        if (qword_93C5F0 == -1)
        {
LABEL_15:
          v30 = qword_9482F8;
          v31 = [qword_9482F8 objectForKey:v1];
          if (v31)
          {
            v32 = v31;

            v22 = *&v32[OBJC_IVAR____TtCC18ASMessagesProvider18ExpandableTextViewP33_22EA8C57047A2D7BD3210E46FB89642910CacheValue_measurements + 8];
          }

          else
          {
            v33 = qword_93C5E8;
            v32 = v2;
            if (v33 != -1)
            {
              swift_once();
            }

            v34 = sub_7666D0();
            v35 = sub_BE38(v34, qword_9482E0);
            v36 = *(v34 - 8);
            (*(v36 + 16))(v10, v35, v34);
            (*(v36 + 56))(v10, 0, 1, v34);
            sub_766B00();
            sub_766B20();
            sub_766B10();
            v38 = v37;
            v40 = v39;
            v42 = v41;

            sub_10A2C(v10, &unk_93E530);
            v22 = top + bottom + v38;
            v43 = type metadata accessor for ExpandableTextView.CacheValue();
            v44 = objc_allocWithZone(v43);
            v45 = &v44[OBJC_IVAR____TtCC18ASMessagesProvider18ExpandableTextViewP33_22EA8C57047A2D7BD3210E46FB89642910CacheValue_measurements];
            *v45 = v4;
            v45[1] = v22;
            *(v45 + 2) = v40;
            *(v45 + 3) = v42;
            v47.receiver = v44;
            v47.super_class = v43;
            v46 = objc_msgSendSuper2(&v47, "init");
            [v30 setObject:v46 forKey:v1];
          }

LABEL_22:
          [v15 setHidden:v3 >= v22];
          goto LABEL_23;
        }
      }

      swift_once();
      goto LABEL_15;
    }
  }

  [*&v0[OBJC_IVAR____TtC18ASMessagesProvider18ExpandableTextView_moreButton] setHidden:1];
  return [v0 setNeedsLayout];
}

id sub_1A5F58()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ExpandableTextView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id (*sub_1A6074(void *a1))(void *a1, uint64_t a2)
{
  v2 = *v1;
  v3 = OBJC_IVAR____TtC18ASMessagesProvider18ExpandableTextView_textLabel;
  a1[1] = *v1;
  a1[2] = v3;
  *a1 = [*(v2 + v3) numberOfLines];
  return sub_1A60D4;
}

id (*sub_1A611C(void *a1))(void *a1, uint64_t a2)
{
  v2 = *v1;
  v3 = OBJC_IVAR____TtC18ASMessagesProvider18ExpandableTextView_textLabel;
  a1[1] = *v1;
  a1[2] = v3;
  *a1 = [*(v2 + v3) lineBreakMode];
  return sub_1A617C;
}

id sub_1A61A0()
{
  v1 = [*(*v0 + OBJC_IVAR____TtC18ASMessagesProvider18ExpandableTextView_textLabel) font];

  return v1;
}

void sub_1A61E4(void *a1)
{
  [*(*v1 + OBJC_IVAR____TtC18ASMessagesProvider18ExpandableTextView_textLabel) setFont:a1];
}

void (*sub_1A6238(void *a1))(id *a1)
{
  v3 = *(*v1 + OBJC_IVAR____TtC18ASMessagesProvider18ExpandableTextView_textLabel);
  a1[1] = v3;
  *a1 = [v3 font];
  return sub_1A62A0;
}

void sub_1A62A0(id *a1)
{
  v1 = *a1;
  [a1[1] setFont:?];
}

uint64_t sub_1A6350(uint64_t a1)
{
  swift_getObjectType();
  sub_1ED18(a1, v11, &unk_93FBD0);
  if (!v12)
  {
    sub_10A2C(v11, &unk_93FBD0);
    goto LABEL_14;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_14:
    v8 = 0;
    return v8 & 1;
  }

  v3 = (v1 + OBJC_IVAR____TtCC18ASMessagesProvider18ExpandableTextViewP33_22EA8C57047A2D7BD3210E46FB89642920MeasurementsCacheKey_layoutMargins);
  v4 = &v10[OBJC_IVAR____TtCC18ASMessagesProvider18ExpandableTextViewP33_22EA8C57047A2D7BD3210E46FB89642920MeasurementsCacheKey_layoutMargins];
  if (*(v1 + OBJC_IVAR____TtCC18ASMessagesProvider18ExpandableTextViewP33_22EA8C57047A2D7BD3210E46FB89642920MeasurementsCacheKey_layoutMargins) != *&v10[OBJC_IVAR____TtCC18ASMessagesProvider18ExpandableTextViewP33_22EA8C57047A2D7BD3210E46FB89642920MeasurementsCacheKey_layoutMargins] || v3[1] != v4[1] || v3[2] != v4[2] || v3[3] != v4[3] || *(v1 + OBJC_IVAR____TtCC18ASMessagesProvider18ExpandableTextViewP33_22EA8C57047A2D7BD3210E46FB89642920MeasurementsCacheKey_numberOfLines) != *&v10[OBJC_IVAR____TtCC18ASMessagesProvider18ExpandableTextViewP33_22EA8C57047A2D7BD3210E46FB89642920MeasurementsCacheKey_numberOfLines] || *(v1 + OBJC_IVAR____TtCC18ASMessagesProvider18ExpandableTextViewP33_22EA8C57047A2D7BD3210E46FB89642920MeasurementsCacheKey_fittingSize) != *&v10[OBJC_IVAR____TtCC18ASMessagesProvider18ExpandableTextViewP33_22EA8C57047A2D7BD3210E46FB89642920MeasurementsCacheKey_fittingSize] || *(v1 + OBJC_IVAR____TtCC18ASMessagesProvider18ExpandableTextViewP33_22EA8C57047A2D7BD3210E46FB89642920MeasurementsCacheKey_fittingSize + 8) != *&v10[OBJC_IVAR____TtCC18ASMessagesProvider18ExpandableTextViewP33_22EA8C57047A2D7BD3210E46FB89642920MeasurementsCacheKey_fittingSize + 8] || (sub_BE70(0, &qword_94AB00), v5 = *&v10[OBJC_IVAR____TtCC18ASMessagesProvider18ExpandableTextViewP33_22EA8C57047A2D7BD3210E46FB89642920MeasurementsCacheKey_traitCollection], v6 = sub_76A1C0(), v5, (v6 & 1) == 0))
  {

    goto LABEL_14;
  }

  v7 = *&v10[OBJC_IVAR____TtCC18ASMessagesProvider18ExpandableTextViewP33_22EA8C57047A2D7BD3210E46FB89642920MeasurementsCacheKey_attributedText];
  v8 = sub_76A1C0();

  return v8 & 1;
}

Swift::Int sub_1A6570()
{
  sub_76AA90();
  sub_7697C0();
  sub_76AA40(*(v0 + OBJC_IVAR____TtCC18ASMessagesProvider18ExpandableTextViewP33_22EA8C57047A2D7BD3210E46FB89642920MeasurementsCacheKey_numberOfLines));
  v1 = v0 + OBJC_IVAR____TtCC18ASMessagesProvider18ExpandableTextViewP33_22EA8C57047A2D7BD3210E46FB89642920MeasurementsCacheKey_fittingSize;
  v2 = *(v0 + OBJC_IVAR____TtCC18ASMessagesProvider18ExpandableTextViewP33_22EA8C57047A2D7BD3210E46FB89642920MeasurementsCacheKey_fittingSize);
  if (v2 == 0.0)
  {
    v2 = 0.0;
  }

  sub_76AA60(*&v2);
  v3 = *(v1 + 8);
  if (v3 == 0.0)
  {
    v3 = 0.0;
  }

  sub_76AA60(*&v3);
  sub_76A1D0();
  sub_76A1D0();
  return sub_76AA70();
}

uint64_t sub_1A66F0(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  sub_1ED18(a1, v17, &unk_93FBD0);
  v4 = v18;
  if (v18)
  {
    v5 = sub_B170(v17, v18);
    v6 = *(v4 - 8);
    v7 = __chkstk_darwin(v5);
    v9 = v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v6 + 16))(v9, v7);
    v10 = sub_76A930();
    (*(v6 + 8))(v9, v4);
    sub_BEB8(v17);
  }

  else
  {
    v10 = 0;
  }

  v16.receiver = v1;
  v16.super_class = ObjectType;
  v11 = objc_msgSendSuper2(&v16, "isEqual:", v10);
  swift_unknownObjectRelease();
  if (v11)
  {
    sub_1ED18(a1, v17, &unk_93FBD0);
    if (v18)
    {
      if (swift_dynamicCast())
      {
        v12 = v15[1];
        v13 = JUMeasurementsEqual();

        return v13;
      }
    }

    else
    {
      sub_10A2C(v17, &unk_93FBD0);
    }
  }

  return 0;
}

uint64_t sub_1A6914(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(_OWORD *))
{
  if (a3)
  {
    v6 = a1;
    swift_unknownObjectRetain();
    sub_76A510();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v10, 0, sizeof(v10));
    v7 = a1;
  }

  v8 = a4(v10);

  sub_10A2C(v10, &unk_93FBD0);
  return v8 & 1;
}

Swift::Int sub_1A69D0()
{
  sub_76AA90();
  v1 = (v0 + OBJC_IVAR____TtCC18ASMessagesProvider18ExpandableTextViewP33_22EA8C57047A2D7BD3210E46FB89642910CacheValue_measurements);
  v2 = *(v0 + OBJC_IVAR____TtCC18ASMessagesProvider18ExpandableTextViewP33_22EA8C57047A2D7BD3210E46FB89642910CacheValue_measurements);
  if (v2 == 0.0)
  {
    v2 = 0.0;
  }

  sub_76AA60(*&v2);
  v3 = v1[1];
  if (v3 == 0.0)
  {
    v3 = 0.0;
  }

  sub_76AA60(*&v3);
  v4 = v1[2];
  if (v4 == 0.0)
  {
    v4 = 0.0;
  }

  sub_76AA60(*&v4);
  v5 = v1[3];
  if (v5 == 0.0)
  {
    v5 = 0.0;
  }

  sub_76AA60(*&v5);
  return sub_76AA70();
}

id sub_1A6ADC()
{
  result = [objc_allocWithZone(NSCache) init];
  qword_9482F8 = result;
  return result;
}

void sub_1A6B10(void *a1)
{
  v2 = v1;
  v3 = a1;
  v4 = OBJC_IVAR____TtC18ASMessagesProvider18ExpandableTextView_languageAwareString;
  v5 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider18ExpandableTextView_languageAwareString);
  if (v5)
  {
    v6 = v5;
    v7 = sub_75E120();
    v9 = v8;

    if (!v3)
    {
      if (!v9)
      {
        return;
      }

      v3 = 0;
      goto LABEL_21;
    }
  }

  else
  {
    if (!a1)
    {
      return;
    }

    v9 = 0;
    v7 = 0;
  }

  v10 = v3;
  v11 = sub_75E120();
  v13 = v12;

  if (!v9)
  {
    if (!v13)
    {
      return;
    }

    goto LABEL_17;
  }

  if (!v13)
  {
LABEL_17:

LABEL_18:
    v16 = v10;
    v17 = sub_75E130();

    if (v17)
    {
      v3 = 0;
    }

    else
    {
      v18 = v16;
    }

LABEL_21:
    v19 = *(v2 + v4);
    *(v2 + v4) = v3;
    v20 = v3;

    v21 = *(v2 + OBJC_IVAR____TtC18ASMessagesProvider18ExpandableTextView_textLabel);
    if (v3)
    {
      v22 = sub_75E0D0();
    }

    else
    {
      v22 = 0;
    }

    [v21 setAttributedText:v22];

    sub_1A5974();
    return;
  }

  if (v7 != v11 || v9 != v13)
  {
    v15 = sub_76A950();

    if (v15)
    {
      return;
    }

    goto LABEL_18;
  }
}

double sub_1A6D2C(uint64_t a1, int a2, int a3, void *a4)
{
  v159 = a4;
  v154 = a3;
  v167 = a2;
  v5 = sub_BD88(&qword_9540B0);
  v163 = *(v5 - 8);
  v164 = v5;
  __chkstk_darwin(v5);
  v162 = v146 - v6;
  v7 = sub_7615B0();
  v155 = *(v7 - 8);
  v156 = v7;
  __chkstk_darwin(v7);
  v157 = v146 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_7615D0();
  v10 = *(v9 - 8);
  v160 = v9;
  v161 = v10;
  __chkstk_darwin(v9);
  v158 = v146 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_766D70();
  v165 = *(v12 - 8);
  v166 = v12;
  __chkstk_darwin(v12);
  v173 = v146 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v182 = v146 - v15;
  __chkstk_darwin(v16);
  v183 = v146 - v17;
  __chkstk_darwin(v18);
  v184 = v146 - v19;
  __chkstk_darwin(v20);
  v185 = v146 - v21;
  __chkstk_darwin(v22);
  v181 = v146 - v23;
  __chkstk_darwin(v24);
  v186 = v146 - v25;
  __chkstk_darwin(v26);
  v175 = v146 - v27;
  v28 = sub_767030();
  v29 = *(v28 - 8);
  __chkstk_darwin(v28);
  v152 = v146 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v153 = v146 - v32;
  __chkstk_darwin(v33);
  v35 = v146 - v34;
  __chkstk_darwin(v36);
  v180 = v146 - v37;
  __chkstk_darwin(v38);
  v149 = v146 - v39;
  __chkstk_darwin(v40);
  v150 = v146 - v41;
  __chkstk_darwin(v42);
  v172 = v146 - v43;
  __chkstk_darwin(v44);
  v147 = v146 - v45;
  __chkstk_darwin(v46);
  v148 = v146 - v47;
  __chkstk_darwin(v48);
  v177 = v146 - v49;
  __chkstk_darwin(v50);
  v178 = v146 - v51;
  __chkstk_darwin(v52);
  v179 = v146 - v53;
  __chkstk_darwin(v54);
  v187 = v146 - v55;
  __chkstk_darwin(v56);
  v58 = v146 - v57;
  __chkstk_darwin(v59);
  v171 = v146 - v60;
  __chkstk_darwin(v61);
  v63 = v146 - v62;
  __chkstk_darwin(v64);
  v66 = v146 - v65;
  __chkstk_darwin(v67);
  v69 = v146 - v68;
  __chkstk_darwin(v70);
  v176 = v146 - v71;
  v72 = sub_765020();
  if (v72)
  {
  }

  v168 = v72;
  v174 = v58;
  v189 = a1;
  v170 = v35;
  sub_767020();
  if (qword_93D728 != -1)
  {
    swift_once();
  }

  v190 = sub_7666D0();
  sub_BE38(v190, qword_99ED70);
  sub_766FF0();
  v73 = v29;
  v76 = *(v29 + 8);
  v74 = v29 + 8;
  v75 = v76;
  v76(v63, v28);
  v77 = v28;
  v78 = v167;
  v146[3] = ~v167;
  sub_767010();
  v76(v66, v77);
  v79 = (v78 & 1) == 0;
  v80 = v77;
  if (v79)
  {
    v81 = 4;
  }

  else
  {
    v81 = 0;
  }

  v146[2] = v81;
  sub_767000();
  v192 = v75;
  v193 = v74;
  v75(v69, v77);
  v82 = sub_764FE0();
  if (v82)
  {
    v83 = v82;
    sub_75E120();
  }

  v84 = *(v73 + 16);
  v188 = v73 + 16;
  v191 = v84;
  v84(v63, v176, v77);
  sub_766D50();
  sub_766D90();
  v151 = sub_7670D0();
  swift_allocObject();
  v169 = sub_767090();
  v85 = v187;
  sub_767020();
  if (qword_93D740 != -1)
  {
    swift_once();
  }

  v86 = sub_BE38(v190, qword_99EDB8);
  v87 = v174;
  v146[1] = v86;
  sub_766FF0();
  v88 = v192;
  v192(v85, v80);
  sub_767010();
  v88(v87, v80);
  v89 = v171;
  sub_767000();
  v88(v63, v80);
  sub_765010();
  v90 = v89;
  v91 = v191;
  v191(v63, v90, v80);
  sub_766D50();
  v92 = v187;
  sub_766D90();
  sub_767020();
  if (qword_93D748 != -1)
  {
    swift_once();
  }

  sub_BE38(v190, qword_99EDD0);
  sub_766FF0();
  v88(v92, v80);
  sub_767010();
  v88(v87, v80);
  sub_767000();
  v88(v63, v80);
  v93 = sub_764FB0();
  if (v93)
  {
    v94 = v93;
    sub_75E120();

    v91 = v191;
  }

  v91(v63, v179, v80);
  sub_766D50();
  sub_766D90();
  v95 = v187;
  sub_767020();
  if (qword_93D750 != -1)
  {
    swift_once();
  }

  sub_BE38(v190, qword_99EDE8);
  v96 = v174;
  sub_766FF0();
  v97 = v192;
  v192(v95, v80);
  sub_767010();
  v97(v96, v80);
  sub_767000();
  v97(v63, v80);
  v98 = sub_764FC0();
  if (v98)
  {
    v99 = v98;
    sub_75E120();

    v191(v63, v178, v80);
  }

  else
  {
    v91(v63, v178, v80);
  }

  sub_766D50();
  sub_766D90();
  sub_767020();
  if (qword_93D738 != -1)
  {
    swift_once();
  }

  v100 = sub_BE38(v190, qword_99EDA0);
  v101 = v147;
  v146[0] = v100;
  sub_766FF0();
  v102 = v192;
  v192(v63, v80);
  v103 = v148;
  sub_767010();
  v102(v101, v80);
  sub_767000();
  v102(v103, v80);
  v104 = sub_765000();
  if (v104)
  {
    v105 = v104;
    sub_75E120();
  }

  v106 = v191;
  v191(v63, v177, v80);
  sub_766D50();
  sub_766D90();
  sub_767020();
  v107 = v190;
  if (qword_93D730 != -1)
  {
    v145 = v190;
    swift_once();
    v107 = v145;
  }

  sub_BE38(v107, qword_99ED88);
  v108 = v149;
  sub_766FF0();
  v109 = v192;
  v192(v63, v80);
  v110 = v150;
  sub_767010();
  v109(v108, v80);
  v111 = v172;
  sub_767000();
  v109(v110, v80);
  v203._object = 0x80000000007D32E0;
  v203._countAndFlagsBits = 0xD000000000000012;
  v204._countAndFlagsBits = 0;
  v204._object = 0xE000000000000000;
  sub_75B750(v203, v204);
  v106(v63, v111, v80);
  sub_766D50();
  sub_766D90();
  v112 = v187;
  sub_767020();
  v113 = v174;
  sub_766FF0();
  v114 = v109;
  v109(v112, v80);
  sub_767010();
  v109(v113, v80);
  sub_767000();
  v109(v63, v80);
  v115 = sub_765020();
  v116 = v173;
  if (v115)
  {
    sub_765710();

    v114 = v192;
  }

  v191(v63, v180, v80);
  sub_766D50();
  sub_766D90();
  sub_767020();
  v117 = v152;
  sub_766FF0();
  v114(v63, v80);
  v118 = v153;
  sub_767010();
  v114(v117, v80);
  v119 = v170;
  sub_767000();
  v114(v118, v80);
  if (sub_765020())
  {
    v120 = sub_765700();

    if (v120)
    {
      sub_75E120();
    }
  }

  v191(v63, v119, v80);
  sub_766D50();
  sub_766D90();
  v121 = v116;
  if (qword_93C8C8 != -1)
  {
    swift_once();
  }

  v122 = v156;
  v123 = sub_BE38(v156, qword_99C700);
  (*(v155 + 16))(v157, v123, v122);
  v124 = v166;
  v202[3] = v166;
  v202[4] = &protocol witness table for LabelPlaceholder;
  v125 = sub_B1B4(v202);
  v126 = v165;
  v127 = *(v165 + 16);
  v127(v125, v175, v124);
  v201[3] = v124;
  v201[4] = &protocol witness table for LabelPlaceholder;
  v128 = sub_B1B4(v201);
  v127(v128, v186, v124);
  v200[3] = v124;
  v200[4] = &protocol witness table for LabelPlaceholder;
  v129 = sub_B1B4(v200);
  v127(v129, v181, v124);
  v199[3] = v124;
  v199[4] = &protocol witness table for LabelPlaceholder;
  v130 = sub_B1B4(v199);
  v127(v130, v185, v124);
  v198[3] = v124;
  v198[4] = &protocol witness table for LabelPlaceholder;
  v131 = sub_B1B4(v198);
  v127(v131, v184, v124);
  v197[3] = v124;
  v197[4] = &protocol witness table for LabelPlaceholder;
  v132 = sub_B1B4(v197);
  v127(v132, v183, v124);
  v196[3] = v124;
  v196[4] = &protocol witness table for LabelPlaceholder;
  v133 = sub_B1B4(v196);
  v127(v133, v182, v124);
  v195[3] = v124;
  v195[4] = &protocol witness table for LabelPlaceholder;
  v134 = sub_B1B4(v195);
  v127(v134, v121, v124);
  v194 = v169;
  sub_7665D0();
  v135 = v158;
  sub_7615C0();
  v136 = [v159 traitCollection];
  sub_1A884C(&qword_94E350, &type metadata accessor for ProductReviewCustomLayout);
  v137 = v162;
  v138 = v160;
  sub_766730();
  swift_getOpaqueTypeConformance2();
  v139 = v164;
  sub_7673F0();
  v141 = v140;

  (*(v163 + 8))(v137, v139);
  (*(v161 + 8))(v135, v138);
  v142 = *(v126 + 8);
  v142(v173, v124);
  v143 = v192;
  v192(v170, v80);
  v142(v182, v124);
  v143(v180, v80);
  v142(v183, v124);
  v143(v172, v80);
  v142(v184, v124);
  v143(v177, v80);
  v142(v185, v124);
  v143(v178, v80);
  v142(v181, v124);
  v143(v179, v80);
  v142(v186, v124);
  v143(v171, v80);
  v142(v175, v124);
  v143(v176, v80);
  return v141;
}

double sub_1A8148()
{
  v0 = sub_BD88(&qword_943FD0);
  v47 = *(v0 - 8);
  __chkstk_darwin(v0);
  v46 = &v36 - v1;
  v45 = sub_75FA00();
  v44 = *(v45 - 8);
  __chkstk_darwin(v45);
  v41 = &v36 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v43 = &v36 - v4;
  v50 = sub_BD88(&qword_946810);
  v42 = *(v50 - 8);
  __chkstk_darwin(v50);
  v40 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v49 = &v36 - v7;
  v8 = sub_BD88(&unk_94F1F0);
  v39 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v36 - v9;
  v48 = sub_7656C0();
  v11 = *(v48 - 8);
  __chkstk_darwin(v48);
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_765030();
  v15 = sub_1A884C(&unk_955EE0, &type metadata accessor for Review);
  sub_75C750();
  v16 = v53[0];
  if (!v53[0])
  {
    return 0.0;
  }

  swift_getKeyPath();
  v38 = v0;
  sub_75C7B0();

  sub_765580();
  v18 = v17;
  v37 = *(v11 + 8);
  v37(v13, v48);
  swift_getKeyPath();
  sub_75C7B0();

  v19 = v53[0];
  v20 = type metadata accessor for SnapshotPageTraitEnvironment();
  v21 = objc_allocWithZone(v20);
  v22 = &v21[OBJC_IVAR____TtC18ASMessagesProvider28SnapshotPageTraitEnvironment_pageContainerSize];
  *v22 = v18;
  *(v22 + 1) = 0x7FEFFFFFFFFFFFFFLL;
  *&v21[OBJC_IVAR____TtC18ASMessagesProvider28SnapshotPageTraitEnvironment_traitCollection] = v19;
  v54.receiver = v21;
  v54.super_class = v20;
  v23 = objc_msgSendSuper2(&v54, "init");
  v53[3] = v14;
  v53[4] = v15;
  v53[0] = v16;
  swift_getKeyPath();
  sub_75C7B0();

  swift_getKeyPath();
  sub_768750();

  (*(v39 + 8))(v10, v8);

  v24 = v49;
  sub_75C800();
  v25 = v43;
  sub_75C740();
  swift_getKeyPath();
  sub_75C7B0();

  sub_765630();
  v37(v13, v48);
  sub_134D8(v53, v51);
  v26 = v23;
  sub_BD88(&unk_944DA0);
  swift_dynamicCast();
  v27 = v42;
  (*(v42 + 16))(v40, v24, v50);
  sub_768FA0();
  v28 = v46;
  sub_769060();
  v29 = v52;
  v30 = v41;
  sub_75F980();
  sub_1A884C(&qword_94FA60, &type metadata accessor for ComponentLayoutOptions);
  v31 = v45;
  LOBYTE(v20) = sub_76A520();
  v32 = *(v44 + 8);
  v32(v30, v31);
  sub_1A6D2C(v29, v20 & 1, v20 & 1, v26);
  v34 = v33;

  (*(v47 + 8))(v28, v38);
  v32(v25, v31);
  (*(v27 + 8))(v49, v50);

  sub_BEB8(v53);
  return v34;
}

uint64_t sub_1A884C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1A8898()
{
  v7 = sub_769960();
  v0 = *(v7 - 8);
  __chkstk_darwin(v7);
  v2 = v6 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_769920();
  __chkstk_darwin(v3);
  v4 = sub_7683C0();
  __chkstk_darwin(v4 - 8);
  v6[1] = sub_12EA98();
  sub_7683B0();
  v8 = _swiftEmptyArrayStorage;
  sub_1A937C(&qword_9483F0, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_BD88(&qword_9483F8);
  sub_1A93C4(&unk_948400, &qword_9483F8);
  sub_76A5A0();
  (*(v0 + 104))(v2, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v7);
  result = sub_769990();
  qword_9483E8 = result;
  return result;
}

uint64_t sub_1A8AE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = [objc_opt_self() sharedInstance];
  v17[0] = 0;
  LODWORD(a4) = [v10 setCategory:a3 mode:a4 options:a5 error:v17];

  if (a4)
  {
    v11 = v17[0];
  }

  else
  {
    v12 = v17[0];
    sub_756F70();

    swift_willThrow();
    if (qword_93DEF0 != -1)
    {
      swift_once();
    }

    v13 = sub_768FF0();
    sub_BE38(v13, qword_9A0400);
    sub_BD88(&qword_93FD00);
    sub_7685F0();
    *(swift_allocObject() + 16) = xmmword_77E280;
    sub_768540();
    swift_getErrorValue();
    v17[3] = v16;
    v14 = sub_B1B4(v17);
    (*(*(v16 - 1) + 16))(v14);
    sub_7685E0();
    sub_BDD0(v17);
    sub_768EA0();
  }

  return sub_1A9090(a1, a2, &unk_886EC0, sub_1A979C, &unk_886ED8);
}

uint64_t sub_1A8DA0(uint64_t a1, uint64_t a2)
{
  v4 = objc_opt_self();
  v5 = [v4 sharedInstance];
  v6 = [v5 categoryOptions];

  if ((v6 & 1) == 0)
  {
    v7 = [v4 sharedInstance];
    v15[0] = 0;
    v8 = [v7 setCategory:AVAudioSessionCategoryPlayback mode:AVAudioSessionModeDefault options:1 error:v15];

    if (v8)
    {
      v9 = v15[0];
    }

    else
    {
      v10 = v15[0];
      sub_756F70();

      swift_willThrow();
      if (qword_93DEF0 != -1)
      {
        swift_once();
      }

      v11 = sub_768FF0();
      sub_BE38(v11, qword_9A0400);
      sub_BD88(&qword_93FD00);
      sub_7685F0();
      *(swift_allocObject() + 16) = xmmword_77E280;
      sub_768540();
      swift_getErrorValue();
      v15[3] = v14;
      v12 = sub_B1B4(v15);
      (*(*(v14 - 1) + 16))(v12);
      sub_7685E0();
      sub_BDD0(v15);
      sub_768EA0();
    }
  }

  return sub_1A9090(a1, a2, &unk_886F60, sub_1A9758, &unk_886F78);
}

uint64_t sub_1A9090(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v19 = a5;
  v8 = sub_768380();
  v21 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_7683C0();
  v11 = *(v20 - 8);
  __chkstk_darwin(v20);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_12EA98();
  v14 = sub_769970();
  v15 = swift_allocObject();
  *(v15 + 16) = a1;
  *(v15 + 24) = a2;
  aBlock[4] = a4;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23F0CC;
  aBlock[3] = v19;
  v16 = _Block_copy(aBlock);
  sub_F714(a1);

  sub_7683A0();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_1A937C(&qword_9406E0, &type metadata accessor for DispatchWorkItemFlags);
  sub_BD88(&qword_940350);
  sub_1A93C4(&qword_9406F0, &qword_940350);
  sub_76A5A0();
  sub_769980();
  _Block_release(v16);

  (*(v21 + 8))(v10, v8);
  return (*(v11 + 8))(v13, v20);
}

uint64_t sub_1A9364(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1A937C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1A93C4(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_133D8(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1A9418(uint64_t a1, uint64_t a2)
{
  v4 = sub_768380();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_7683C0();
  v8 = *(v15 - 8);
  __chkstk_darwin(v15);
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_93C5F8 != -1)
  {
    swift_once();
  }

  v14[1] = qword_9483E8;
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = a2;
  aBlock[4] = sub_1A9710;
  aBlock[5] = v11;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23F0CC;
  aBlock[3] = &unk_886F28;
  v12 = _Block_copy(aBlock);
  sub_F714(a1);
  sub_7683A0();
  v16 = _swiftEmptyArrayStorage;
  sub_1A937C(&qword_9406E0, &type metadata accessor for DispatchWorkItemFlags);
  sub_BD88(&qword_940350);
  sub_1A93C4(&qword_9406F0, &qword_940350);
  sub_76A5A0();
  sub_769980();
  _Block_release(v12);
  (*(v5 + 8))(v7, v4);
  (*(v8 + 8))(v10, v15);
}

uint64_t sub_1A9718()
{
  if (*(v0 + 16))
  {
  }

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1A975C()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    return v1();
  }

  return result;
}

double sub_1A97AC(uint64_t a1)
{
  v2 = sub_759B00();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_7656C0();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_75DA20();
  sub_765630();
  (*(v7 + 8))(v9, v6);
  sub_5C8B80(a1, v5);
  sub_75DA40();
  sub_759AA0();
  v11 = v10;
  swift_unknownObjectRelease();
  (*(v3 + 8))(v5, v2);
  return v11;
}

double sub_1A99C4()
{
  v0 = sub_75DAB0();
  v45 = *(v0 - 8);
  v46 = v0;
  __chkstk_darwin(v0);
  v2 = &v41[-((v1 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v3 = sub_759B00();
  v49 = *(v3 - 8);
  v50 = v3;
  __chkstk_darwin(v3);
  v48 = &v41[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v47 = &v41[-v6];
  __chkstk_darwin(v7);
  v9 = &v41[-v8];
  v10 = sub_7656C0();
  v43 = *(v10 - 8);
  v44 = v10;
  __chkstk_darwin(v10);
  v12 = &v41[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = sub_BD88(&unk_94F1F0);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v41[-v15];
  sub_764C80();
  sub_1AA0D4(&qword_951430, &type metadata accessor for Action);
  sub_75C750();
  if (!v52)
  {
    return 0.0;
  }

  v51 = v52;

  sub_BD88(&unk_952540);
  if (swift_dynamicCast())
  {
    sub_B170(&v52, *(&v53 + 1));
    v42 = sub_762A20();
    sub_BEB8(&v52);
  }

  else
  {
    v54 = 0;
    v52 = 0u;
    v53 = 0u;
    sub_1AA11C(&v52);
    v42 = 0;
  }

  swift_getKeyPath();
  sub_75C7B0();

  swift_getKeyPath();
  sub_768750();

  (*(v14 + 8))(v16, v13);
  if (v52 == 1)
  {
    swift_getKeyPath();
    sub_75C7B0();

    sub_765630();
    (*(v43 + 8))(v12, v44);
    sub_75C720();
    sub_5C8B80(v2, v9);
    (*(v45 + 8))(v2, v46);
    v18 = sub_527DE4();
    swift_getObjectType();
    sub_2524B8(v9, v18);
    v17 = v19;

    swift_unknownObjectRelease();
    (*(v49 + 8))(v9, v50);
  }

  else
  {
    v20 = ASKDeviceTypeGetCurrent();
    v21 = sub_769240();
    v23 = v22;
    v24 = sub_769240();
    v26 = v49;
    if (v21 != v24 || v23 != v25)
    {
      sub_76A950();
    }

    sub_75C720();
    v27 = v47;
    sub_5C8B80(v2, v47);
    (*(v45 + 8))(v2, v46);
    swift_getKeyPath();
    sub_75C7B0();

    sub_765630();
    (*(v43 + 8))(v12, v44);
    v28 = v50;
    (*(v26 + 16))(v48, v27, v50);
    v29 = sub_527DE4();
    v30 = sub_764C60();
    v32 = v31;
    v33 = sub_764C70();
    if (v33)
    {
    }

    v34 = v33 != 0;
    swift_getObjectType();
    v35 = sub_527DE4();
    swift_getObjectType();
    v36 = sub_3DB210(v35);
    swift_unknownObjectRelease();
    v37 = v48;
    sub_251BC4(v48, v29, v30, v32, v34, v36, v42 & 1);
    v17 = v38;

    swift_unknownObjectRelease();

    v39 = *(v26 + 8);
    v39(v37, v28);
    v39(v47, v28);
  }

  return v17;
}

uint64_t sub_1AA0D4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1AA11C(uint64_t a1)
{
  v2 = sub_BD88(&unk_9513E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1AA194(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v27 = a1;
  v25 = a2;
  v26 = a3;
  v3 = sub_BD88(&unk_94F1F0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v24 - v5;
  v7 = sub_7656C0();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_75DA20();
  sub_765630();
  v12 = v11;
  v14 = v13;
  v15 = *(v8 + 8);
  v15(v10, v7);
  sub_75DAA0();
  swift_getKeyPath();
  sub_768750();

  (*(v4 + 8))(v6, v3);
  v16 = v29;
  sub_75DA20();
  sub_765580();
  v18 = v17;
  v15(v10, v7);
  v19 = sub_75DA30();
  v20 = type metadata accessor for SnapshotPageTraitEnvironment();
  v21 = objc_allocWithZone(v20);
  v22 = &v21[OBJC_IVAR____TtC18ASMessagesProvider28SnapshotPageTraitEnvironment_pageContainerSize];
  *v22 = v18;
  *(v22 + 1) = 0x7FEFFFFFFFFFFFFFLL;
  *&v21[OBJC_IVAR____TtC18ASMessagesProvider28SnapshotPageTraitEnvironment_traitCollection] = v19;
  v28.receiver = v21;
  v28.super_class = v20;
  v23 = objc_msgSendSuper2(&v28, "init");
  (*(*(v25 + 8) + 16))(v16, v23, v27, v12, v14);
}

uint64_t sub_1AA434(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v25 = a6;
  v24 = a5;
  v22 = a2;
  v7 = sub_75DAB0();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_BD88(&unk_944DB0);
  __chkstk_darwin(v11 - 8);
  v13 = &v22 - v12;
  v14 = sub_7601F0();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = a1;
  sub_75C720();
  sub_763C00();
  (*(v8 + 8))(v10, v7);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    return sub_10A2C(v13, &unk_944DB0);
  }

  (*(v15 + 32))(v17, v13, v14);
  v19 = sub_1AA738(v23);
  __chkstk_darwin(v19);
  *(&v22 - 2) = v17;
  v20 = sub_3A06DC(sub_F81F0, (&v22 - 4), v19);

  if (v20 >> 62)
  {
    if (!sub_76A860())
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  if (*(&dword_10 + (v20 & 0xFFFFFFFFFFFFFF8)))
  {
LABEL_5:
    v21._rawValue = v20;
    sub_75A070(v21);
  }

LABEL_6:

  return (*(v15 + 8))(v17, v14);
}

double *sub_1AA738(uint64_t a1)
{
  v2 = sub_764930();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = v21 - v7;
  v9 = sub_BD88(&unk_94F1F0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v21 - v11;
  swift_getKeyPath();
  v24 = a1;
  sub_75C7B0();

  swift_getKeyPath();
  sub_768750();

  v14 = *(v10 + 8);
  v13 = v10 + 8;
  v23 = v14;
  v14(v12, v9);
  v22 = *(v3 + 104);
  v22(v5, enum case for Shelf.ContentType.todayCard(_:), v2);
  v21[2] = sub_1AAB98();
  LOBYTE(a1) = sub_7691C0();
  v15 = *(v3 + 8);
  v15(v5, v2);
  v15(v8, v2);
  if ((a1 & 1) == 0)
  {
    swift_getKeyPath();
    v21[1] = v13;
    sub_75C7B0();

    swift_getKeyPath();
    sub_768750();

    v23(v12, v9);
    v22(v5, enum case for Shelf.ContentType.miniTodayCard(_:), v2);
    v16 = sub_7691C0();
    v15(v5, v2);
    v15(v8, v2);
    if ((v16 & 1) == 0)
    {
      sub_BD88(&qword_944DC8);
      sub_75C760();
      if (v26)
      {
        sub_10914(&v25, v27);
        sub_B170(v27, v27[3]);
        v17 = sub_75E950();
        if (v17)
        {
          v18 = v17;
          sub_BD88(&unk_93F5C0);
          v19 = swift_allocObject();
          *(v19 + 16) = xmmword_77D9F0;
          *(v19 + 32) = v18;
          sub_BEB8(v27);
          return v19;
        }

        sub_BEB8(v27);
      }

      else
      {
        sub_10A2C(&v25, &unk_944DD0);
      }
    }
  }

  return _swiftEmptyArrayStorage;
}

uint64_t sub_1AAB28@<X0>(uint64_t *a1@<X8>)
{
  sub_7601E0();
  sub_7601C0();
  result = sub_765330();
  *a1 = result;
  return result;
}

unint64_t sub_1AAB98()
{
  result = qword_944DC0;
  if (!qword_944DC0)
  {
    sub_764930();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_944DC0);
  }

  return result;
}

void sub_1AAC90(void *a1)
{
  v13 = [a1 viewControllerForKey:UITransitionContextFromViewControllerKey];
  if (v13)
  {
    objc_opt_self();
    v3 = swift_dynamicCastObjCClass();
    if (v3)
    {
      v4 = v3;
      sub_2B49D4(v3, a1, 1);
      v5 = swift_allocObject();
      *(v5 + 16) = v4;
      v6 = OBJC_IVAR____TtC18ASMessagesProvider27AnimatedTransitionWithTasks_tasks;
      swift_beginAccess();
      v7 = *(v1 + v6);
      v8 = v13;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v1 + v6) = v7;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v7 = sub_7BB70(0, *(v7 + 2) + 1, 1, v7);
        *(v1 + v6) = v7;
      }

      v11 = *(v7 + 2);
      v10 = *(v7 + 3);
      if (v11 >= v10 >> 1)
      {
        v7 = sub_7BB70((v10 > 1), v11 + 1, 1, v7);
      }

      *(v7 + 2) = v11 + 1;
      v12 = &v7[24 * v11];
      *(v12 + 4) = sub_1ABCA4;
      *(v12 + 5) = v5;
      v12[48] = 2;
      *(v1 + v6) = v7;
      swift_endAccess();
    }

    else
    {
    }
  }
}

void sub_1AAE48(void *a1)
{
  v2 = v1;
  v89 = sub_768380();
  v88 = *(v89 - 8);
  __chkstk_darwin(v89);
  v85 = &v77 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = sub_7683C0();
  v86 = *(v87 - 8);
  __chkstk_darwin(v87);
  v6 = &v77 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = sub_7683E0();
  v84 = *(v91 - 8);
  __chkstk_darwin(v91);
  v8 = &v77 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v81 = &v77 - v10;
  sub_B584C(0);
  v11 = [a1 viewControllerForKey:UITransitionContextToViewControllerKey];
  if (v11)
  {
    v12 = v11;
    [a1 finalFrameForViewController:v11];
  }

  else
  {
    v12 = [a1 containerView];
    [v12 bounds];
  }

  v17 = v13;
  v18 = v14;
  v19 = v15;
  v20 = v16;

  v21 = &v1[OBJC_IVAR____TtC18ASMessagesProvider23BouncyFromRectAnimation_fromRect];
  v22 = v1[OBJC_IVAR____TtC18ASMessagesProvider23BouncyFromRectAnimation_fromRect + 32];
  if (v22)
  {
    v96.origin.x = v17;
    v96.origin.y = v18;
    v96.size.width = v19;
    v96.size.height = v20;
    v23 = CGRectGetWidth(v96) * 0.2;
    v97.origin.x = v17;
    v97.origin.y = v18;
    v97.size.width = v19;
    v97.size.height = v20;
    v24 = CGRectGetHeight(v97) * 0.2;
    v98.origin.x = v17;
    v98.origin.y = v18;
    v98.size.width = v19;
    v98.size.height = v20;
    v99 = CGRectInset(v98, v23, v24);
    x = v99.origin.x;
    y = v99.origin.y;
    width = v99.size.width;
    height = v99.size.height;
  }

  else
  {
    v25 = v21[2];
    height = v21[3];
    width = v25;
    v26 = *v21;
    y = v21[1];
    x = v26;
  }

  v27 = x;
  v100.origin.x = x;
  v28 = y;
  v100.origin.y = y;
  v29 = width;
  v100.size.width = width;
  v30 = height;
  v100.size.height = height;
  v83 = CGRectGetWidth(v100);
  v101.origin.x = v17;
  v101.origin.y = v18;
  v101.size.width = v19;
  v101.size.height = v20;
  v82 = CGRectGetWidth(v101);
  v102.origin.x = v27;
  v102.origin.y = v28;
  v102.size.width = v29;
  v102.size.height = v30;
  v80 = CGRectGetHeight(v102);
  v103.origin.x = v17;
  v103.origin.y = v18;
  v103.size.width = v19;
  v103.size.height = v20;
  v79 = CGRectGetHeight(v103);
  v104.origin.x = v27;
  x = v27;
  v104.origin.y = v28;
  v104.size.width = v29;
  width = v29;
  v104.size.height = v30;
  height = v30;
  MidX = CGRectGetMidX(v104);
  v105.origin.x = v17;
  v105.origin.y = v18;
  v105.size.width = v19;
  v105.size.height = v20;
  v77 = CGRectGetMidX(v105);
  v106.origin.x = v27;
  v106.origin.y = v28;
  v31 = v28;
  v106.size.width = v29;
  v106.size.height = v30;
  MidY = CGRectGetMidY(v106);
  v107.origin.x = v17;
  v107.origin.y = v18;
  v107.size.width = v19;
  v107.size.height = v20;
  v33 = CGRectGetMidY(v107);
  v34 = sqrt((v83 - v82) * (v83 - v82) + (v80 - v79) * (v80 - v79));
  v35 = sqrt((MidX - v77) * (MidX - v77) + (MidY - v33) * (MidY - v33));
  if (v34 > v35)
  {
    v35 = v34;
  }

  v80 = v35 / 0.7 / v35;
  v108.origin.x = v17;
  v108.origin.y = v18;
  v108.size.width = v19;
  v108.size.height = v20;
  v36 = CGRectGetMidX(v108);
  v37 = x;
  v109.origin.x = x;
  v109.origin.y = v31;
  v109.size.width = width;
  v38 = height;
  v109.size.height = height;
  v39 = v36 - CGRectGetMidX(v109);
  v83 = v17;
  v110.origin.x = v17;
  v40 = v18;
  v110.origin.y = v18;
  v79 = v19;
  v110.size.width = v19;
  v82 = v20;
  v110.size.height = v20;
  MinY = CGRectGetMinY(v110);
  v111.origin.x = v37;
  v111.origin.y = v31;
  v111.size.width = width;
  v111.size.height = v38;
  v42 = MinY - CGRectGetMinY(v111);
  v43 = [a1 viewForKey:UITransitionContextToViewKey];
  v44 = v43;
  if (v43)
  {
    v45 = y + v42;
    v46 = x + v39;
    v47 = v43;
    v48 = [a1 containerView];
    [v48 addSubview:v47];

    [v47 setFrame:{v46, v45, width, height}];
    if (v22)
    {
      [v47 setAlpha:0.0];
    }
  }

  [v44 layoutIfNeeded];
  CATransform3DMakeTranslation(&aBlock, -v39, -v42, 0.0);
  v49 = sub_769210();
  v50 = [objc_opt_self() animationWithKeyPath:v49];

  v51 = objc_opt_self();
  v52 = v50;
  v53 = [v51 valueWithCATransform3D:&aBlock];
  [v52 setFromValue:v53];

  v54 = *&CATransform3DIdentity.m33;
  *&aBlock.m31 = *&CATransform3DIdentity.m31;
  *&aBlock.m33 = v54;
  v55 = *&CATransform3DIdentity.m43;
  *&aBlock.m41 = *&CATransform3DIdentity.m41;
  *&aBlock.m43 = v55;
  v56 = *&CATransform3DIdentity.m13;
  *&aBlock.m11 = *&CATransform3DIdentity.m11;
  *&aBlock.m13 = v56;
  v57 = *&CATransform3DIdentity.m23;
  *&aBlock.m21 = *&CATransform3DIdentity.m21;
  *&aBlock.m23 = v57;
  v58 = [v51 valueWithCATransform3D:&aBlock];
  [v52 setToValue:v58];

  [v52 setDamping:16.0];
  [v52 setMass:1.0];
  [v52 setStiffness:150.0];
  [v52 setInitialVelocity:v80];
  v59 = v52;
  [v59 settlingDuration];
  [v59 setDuration:?];
  [v59 setFillMode:kCAFillModeBackwards];

  width = *&v44;
  if (*&v44 != 0.0)
  {
    v60 = [*&width layer];
    v61 = sub_769210();
    [v60 addAnimation:v59 forKey:v61];
  }

  [v59 settlingDuration];
  sub_12EA98();
  v62 = sub_769970();
  sub_7683D0();
  v63 = v81;
  sub_768450();
  height = *(v84 + 8);
  (*&height)(v8, v91);
  v64 = swift_allocObject();
  *(v64 + 16) = a1;
  *(v64 + 24) = v2;
  *&aBlock.m21 = sub_1ABBCC;
  *&aBlock.m22 = v64;
  *&aBlock.m11 = _NSConcreteStackBlock;
  *&aBlock.m12 = 1107296256;
  *&aBlock.m13 = sub_23F0CC;
  *&aBlock.m14 = &unk_886FC8;
  v65 = _Block_copy(&aBlock);
  swift_unknownObjectRetain();
  x = COERCE_DOUBLE(v2);

  sub_7683A0();
  *&aBlock.m11 = _swiftEmptyArrayStorage;
  sub_4C81C();
  sub_BD88(&qword_940350);
  sub_4C874();
  v66 = v85;
  v67 = v89;
  sub_76A5A0();
  sub_769930();
  _Block_release(v65);

  (*(v88 + 8))(v66, v67);
  (*(v86 + 8))(v6, v87);
  (*&height)(v63, v91);
  v68 = objc_opt_self();
  v69 = swift_allocObject();
  v70 = x;
  v71 = width;
  *(v69 + 16) = x;
  *(v69 + 24) = v71;
  *(v69 + 32) = v83;
  *(v69 + 40) = v40;
  v72 = v82;
  *(v69 + 48) = v79;
  *(v69 + 56) = v72;
  *&aBlock.m21 = sub_1ABC5C;
  *&aBlock.m22 = v69;
  *&aBlock.m11 = _NSConcreteStackBlock;
  *&aBlock.m12 = 1107296256;
  *&aBlock.m13 = sub_23F0CC;
  *&aBlock.m14 = &unk_887018;
  v73 = _Block_copy(&aBlock);
  v74 = *&v71;
  v75 = *&v70;

  *&aBlock.m21 = static CondensedEditorialSearchResultContentView.prefetchArtwork(for:with:asPartOf:);
  aBlock.m22 = 0.0;
  *&aBlock.m11 = _NSConcreteStackBlock;
  *&aBlock.m12 = 1107296256;
  *&aBlock.m13 = sub_3D6D80;
  *&aBlock.m14 = &unk_887040;
  v76 = _Block_copy(&aBlock);
  [v68 animateWithDuration:129 delay:v73 options:v76 animations:0.35 completion:0.0];

  _Block_release(v76);
  _Block_release(v73);
}

id sub_1ABA60(double a1, double a2, double a3, double a4, uint64_t a5, void *a6)
{
  sub_B584C(1);
  result = [a6 setFrame:{a1, a2, a3, a4}];
  if (a6)
  {

    return [a6 setAlpha:1.0];
  }

  return result;
}

id sub_1ABB34()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BouncyFromRectAnimation();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1ABB8C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1ABC04(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1ABC1C()
{

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_1ABC6C()
{

  return _swift_deallocObject(v0, 24, 7);
}

void sub_1ABCA4()
{
  v1 = [*(v0 + 16) tabBar];
  [v1 setHidden:0];
}

void sub_1ABD10(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = sub_768C60();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = &v4[OBJC_IVAR____TtC18ASMessagesProvider28GuidedSearchTokenPaletteView_onSelect];
  *v14 = 0;
  *(v14 + 1) = 0;
  *&v4[OBJC_IVAR____TtC18ASMessagesProvider28GuidedSearchTokenPaletteView_collectionView] = 0;
  v15 = &v4[OBJC_IVAR____TtC18ASMessagesProvider28GuidedSearchTokenPaletteView_previousLayoutWidth];
  *v15 = 0;
  v15[8] = 1;
  *&v4[OBJC_IVAR____TtC18ASMessagesProvider28GuidedSearchTokenPaletteView_impressionCalculator] = 0;
  *&v4[OBJC_IVAR____TtC18ASMessagesProvider28GuidedSearchTokenPaletteView_impressionsCoordinator] = 0;
  *&v4[OBJC_IVAR____TtC18ASMessagesProvider28GuidedSearchTokenPaletteView_impressionsScrollObserver] = 0;
  v16 = OBJC_IVAR____TtC18ASMessagesProvider28GuidedSearchTokenPaletteView_containerImpressionMetrics;
  v17 = sub_768AB0();
  (*(*(v17 - 8) + 56))(&v4[v16], 1, 1, v17);
  *&v4[OBJC_IVAR____TtC18ASMessagesProvider28GuidedSearchTokenPaletteView_tokens] = _swiftEmptyArrayStorage;
  *&v4[OBJC_IVAR____TtC18ASMessagesProvider28GuidedSearchTokenPaletteView_layout] = [objc_allocWithZone(type metadata accessor for GuidedSearchTokenPaletteCollectionViewLayout()) init];
  v47.receiver = v4;
  v47.super_class = ObjectType;
  v18 = objc_msgSendSuper2(&v47, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v22 = v18;
  [v22 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v23 = OBJC_IVAR____TtC18ASMessagesProvider28GuidedSearchTokenPaletteView_layout;
  *(*&v22[OBJC_IVAR____TtC18ASMessagesProvider28GuidedSearchTokenPaletteView_layout] + OBJC_IVAR____TtC18ASMessagesProvider44GuidedSearchTokenPaletteCollectionViewLayout_layoutDelegate + 8) = &off_887118;
  swift_unknownObjectWeakAssign();
  v24 = [objc_allocWithZone(UICollectionView) initWithFrame:*&v22[v23] collectionViewLayout:{0.0, 0.0, 0.0, 0.0}];
  v25 = OBJC_IVAR____TtC18ASMessagesProvider28GuidedSearchTokenPaletteView_collectionView;
  v26 = *&v22[OBJC_IVAR____TtC18ASMessagesProvider28GuidedSearchTokenPaletteView_collectionView];
  *&v22[OBJC_IVAR____TtC18ASMessagesProvider28GuidedSearchTokenPaletteView_collectionView] = v24;
  v27 = v24;

  if (!v27)
  {
    __break(1u);
    goto LABEL_14;
  }

  v28 = [objc_opt_self() clearColor];
  [v27 setBackgroundColor:v28];

  v29 = *&v22[v25];
  if (!v29)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  [v29 setDataSource:v22];
  v30 = *&v22[v25];
  if (!v30)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  [v30 setDelegate:v22];
  v31 = *&v22[v25];
  if (!v31)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  [v31 setShowsHorizontalScrollIndicator:0];
  v32 = *&v22[v25];
  if (!v32)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  [v32 setShowsVerticalScrollIndicator:0];
  v33 = *&v22[v25];
  if (!v33)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  [v33 setBouncesHorizontally:1];
  v34 = *&v22[v25];
  if (!v34)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  [v34 setClipsToBounds:0];
  if (!*&v22[v25])
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  [v22 addSubview:?];
  v35 = *&v22[v25];
  if (!v35)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v36 = v10;
  v45[1] = ObjectType;
  [v35 setPreservesSuperviewLayoutMargins:1];
  v37 = *&v22[v25];
  if (!v37)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  type metadata accessor for GuidedSearchTokenCell();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v39 = v37;
  sub_769BD0();
  v40 = sub_769210();

  [v39 registerClass:ObjCClassFromMetadata forCellWithReuseIdentifier:v40];

  v41 = *&v22[v25];
  if (v41)
  {
    memset(v46, 0, sizeof(v46));
    v42 = v41;
    sub_768C20();
    sub_10A2C(v46, &unk_93FBD0);
    sub_769E70();

    (*(v11 + 8))(v13, v36);
    v43 = [v22 traitCollection];

    [*&v22[v23] invalidateLayout];
    sub_BD88(&qword_9477F0);
    v44 = swift_allocObject();
    *(v44 + 16) = xmmword_77E280;
    *(v44 + 32) = sub_767890();
    *(v44 + 40) = &protocol witness table for UITraitHorizontalSizeClass;
    *(v44 + 48) = sub_767B80();
    *(v44 + 56) = &protocol witness table for UITraitPreferredContentSizeCategory;
    sub_769F40();

    swift_unknownObjectRelease();

    return;
  }

LABEL_23:
  __break(1u);
}

void sub_1AC2DC()
{
  v1 = v0;
  v10.receiver = v0;
  v10.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v10, "layoutSubviews");
  v2 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider28GuidedSearchTokenPaletteView_collectionView];
  if (v2)
  {
    v3 = v2;
    [v1 bounds];
    Width = CGRectGetWidth(v11);

    [v3 setFrame:{0.0, 0.0, Width, 60.0}];
    v5 = [v1 traitCollection];
    v6 = sub_7699E0();

    if ((v6 & 1) != 0 && (v1[OBJC_IVAR____TtC18ASMessagesProvider28GuidedSearchTokenPaletteView_previousLayoutWidth + 8] & 1) == 0)
    {
      v7 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider28GuidedSearchTokenPaletteView_previousLayoutWidth];
      [v1 bounds];
      if (v7 <= 834.0 == CGRectGetWidth(v12) > 834.0)
      {

        [*&v1[OBJC_IVAR____TtC18ASMessagesProvider28GuidedSearchTokenPaletteView_layout] invalidateLayout];
      }
    }

    [v1 bounds];
    v8 = CGRectGetWidth(v13);
    v9 = &v1[OBJC_IVAR____TtC18ASMessagesProvider28GuidedSearchTokenPaletteView_previousLayoutWidth];
    *v9 = v8;
    *(v9 + 8) = 0;
  }

  else
  {
    __break(1u);
  }
}

void sub_1AC518(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(a1 + OBJC_IVAR____TtC18ASMessagesProvider28GuidedSearchTokenPaletteView_tokens) = a2;

  if (*(a3 + 16))
  {
    v8 = *(a1 + OBJC_IVAR____TtC18ASMessagesProvider28GuidedSearchTokenPaletteView_collectionView);
    if (!v8)
    {
      __break(1u);
      goto LABEL_11;
    }

    sub_757640();
    v9 = v8;
    isa = sub_769450().super.isa;
    [v9 deleteItemsAtIndexPaths:isa];
  }

  if (!*(a5 + 16))
  {
    return;
  }

  v11 = *(a1 + OBJC_IVAR____TtC18ASMessagesProvider28GuidedSearchTokenPaletteView_collectionView);
  if (!v11)
  {
LABEL_11:
    __break(1u);
    return;
  }

  sub_757640();
  v12 = v11;
  v13 = sub_769450().super.isa;
  [v12 insertItemsAtIndexPaths:v13];
}

void sub_1AC654(uint64_t a1, char a2)
{
  if (a2)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v3 = Strong;
      sub_1AC6B0();
    }
  }
}

void sub_1AC6B0()
{
  if (*(*(v0 + OBJC_IVAR____TtC18ASMessagesProvider28GuidedSearchTokenPaletteView_layout) + OBJC_IVAR____TtC18ASMessagesProvider44GuidedSearchTokenPaletteCollectionViewLayout_pinningEnabled) == 1)
  {
    v1 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v2 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v3 = objc_opt_self();
    v10 = sub_1AF1A8;
    v11 = v1;
    v6 = _NSConcreteStackBlock;
    v7 = 1107296256;
    v8 = sub_23F0CC;
    v9 = &unk_887218;
    v4 = _Block_copy(&v6);

    v10 = sub_1AF1B0;
    v11 = v2;
    v6 = _NSConcreteStackBlock;
    v7 = 1107296256;
    v8 = sub_3D6D80;
    v9 = &unk_887240;
    v5 = _Block_copy(&v6);

    [v3 animateWithDuration:0 delay:v4 usingSpringWithDamping:v5 initialSpringVelocity:0.3 options:0.0 animations:27.0 completion:0.0];
    _Block_release(v5);
    _Block_release(v4);
  }
}

void sub_1AC8A8()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = *(Strong + OBJC_IVAR____TtC18ASMessagesProvider28GuidedSearchTokenPaletteView_collectionView);
    v2 = Strong;
    v3 = v1;

    if (v1)
    {
      [v3 setContentOffset:{0.0, 0.0}];
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_1AC938()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = *(Strong + OBJC_IVAR____TtC18ASMessagesProvider28GuidedSearchTokenPaletteView_layout);

    v2[OBJC_IVAR____TtC18ASMessagesProvider44GuidedSearchTokenPaletteCollectionViewLayout_pinningEnabled] = 0;
  }

  swift_beginAccess();
  v3 = swift_unknownObjectWeakLoadStrong();
  if (v3)
  {
    v4 = v3;
    v5 = *(v3 + OBJC_IVAR____TtC18ASMessagesProvider28GuidedSearchTokenPaletteView_layout);

    [v5 invalidateLayout];
  }
}

void sub_1ACA04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v26 = a2;
  v7 = sub_BD88(&unk_93FF30);
  __chkstk_darwin(v7 - 8);
  v9 = &v26 - v8;
  v10 = sub_768AB0();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtC18ASMessagesProvider28GuidedSearchTokenPaletteView_containerImpressionMetrics;
  swift_beginAccess();
  sub_1ADA98(a3, &v4[v14]);
  swift_endAccess();
  v15 = OBJC_IVAR____TtC18ASMessagesProvider28GuidedSearchTokenPaletteView_impressionCalculator;
  swift_beginAccess();
  *&v4[v15] = a1;

  sub_1ED18(a3, v9, &unk_93FF30);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {

    sub_10A2C(v9, &unk_93FF30);
  }

  else
  {
    (*(v11 + 32))(v13, v9, v10);

    [v4 bounds];
    sub_75F4B0();
    (*(v11 + 8))(v13, v10);
  }

  v16 = OBJC_IVAR____TtC18ASMessagesProvider28GuidedSearchTokenPaletteView_collectionView;
  v17 = *&v4[OBJC_IVAR____TtC18ASMessagesProvider28GuidedSearchTokenPaletteView_collectionView];
  if (!v17)
  {
    __break(1u);
    goto LABEL_13;
  }

  sub_764280();
  swift_allocObject();
  v18 = v17;
  v19 = sub_764220();
  v20 = OBJC_IVAR____TtC18ASMessagesProvider28GuidedSearchTokenPaletteView_impressionsCoordinator;
  *&v4[OBJC_IVAR____TtC18ASMessagesProvider28GuidedSearchTokenPaletteView_impressionsCoordinator] = v19;

  if (*&v4[v20])
  {

    sub_764250();

    if (*&v4[v20])
    {

      sub_764240();
    }
  }

  sub_7614F0();
  swift_allocObject();

  v21 = sub_761500();
  v22 = OBJC_IVAR____TtC18ASMessagesProvider28GuidedSearchTokenPaletteView_impressionsScrollObserver;
  *&v4[OBJC_IVAR____TtC18ASMessagesProvider28GuidedSearchTokenPaletteView_impressionsScrollObserver] = v21;

  if (*&v4[v22])
  {
    v23 = *&v4[v16];
    if (v23)
    {

      v24.super.super.super.isa = v23;
      isa = v24.super.super.super.isa;
      sub_7614D0(v24);

      return;
    }

LABEL_13:
    __break(1u);
  }
}

uint64_t type metadata accessor for GuidedSearchTokenPaletteView()
{
  result = qword_948520;
  if (!qword_948520)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1ACE48()
{
  sub_1ACF18();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1ACF18()
{
  if (!qword_948530)
  {
    sub_768AB0();
    v0 = sub_76A480();
    if (!v1)
    {
      atomic_store(v0, &qword_948530);
    }
  }
}

id sub_1AD0E0(void *a1)
{
  type metadata accessor for GuidedSearchTokenCell();
  sub_769BD0();
  v2 = sub_769210();

  isa = sub_757550().super.isa;
  v4 = [a1 dequeueReusableCellWithReuseIdentifier:v2 forIndexPath:isa];

  v5 = swift_dynamicCastClass();
  if (v5)
  {
    v6 = v5;
    v4 = v4;
    sub_1AD208(v13);
    v7 = v14;
    if (v14)
    {
      v9 = v13[1];
      v8 = v13[2];
      v10 = v13[0];
      v11 = v15;

      sub_47C360(v10, v9, v8, v7, v11 & 1);

      return v6;
    }

    else
    {
    }
  }

  return v4;
}

uint64_t sub_1AD208@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC18ASMessagesProvider28GuidedSearchTokenPaletteView_tokens;
  v4 = *(*(v1 + OBJC_IVAR____TtC18ASMessagesProvider28GuidedSearchTokenPaletteView_tokens) + 16);
  result = sub_7575A0();
  v6 = 0;
  v7 = 0;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  if (result < 0 || result >= v4)
  {
    goto LABEL_6;
  }

  result = sub_7575A0();
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v11 = *(v1 + v3);
    if (result < *(v11 + 16))
    {
      v12 = v11 + 40 * result;
      v7 = *(v12 + 32);
      v8 = *(v12 + 40);
      v9 = *(v12 + 48);
      v10 = *(v12 + 56);
      v6 = *(v12 + 64);

LABEL_6:
      *a1 = v7;
      *(a1 + 8) = v8;
      *(a1 + 16) = v9;
      *(a1 + 24) = v10;
      *(a1 + 32) = v6;
      return result;
    }
  }

  __break(1u);
  return result;
}

__n128 sub_1AD7E8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1AD7FC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1AD844(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1AD898()
{
  v1 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider28GuidedSearchTokenPaletteView_tokens);
  v2 = *(v1 + 16);

  v4 = 0;
LABEL_2:
  v5 = 40 * v4;
  while (1)
  {
    if (v2 == v4)
    {

      v15 = _swiftEmptyArrayStorage[2];

      return v15;
    }

    if (v4 >= *(v1 + 16))
    {
      break;
    }

    ++v4;
    v6 = v5 + 40;
    v7 = *(v1 + v5 + 64);
    v5 += 40;
    if (v7)
    {
      v9 = *(v1 + v6 - 8);
      v8 = *(v1 + v6);
      v11 = *(v1 + v6 + 8);
      v10 = *(v1 + v6 + 16);

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_143DA0(0, _swiftEmptyArrayStorage[2] + 1, 1);
      }

      v13 = _swiftEmptyArrayStorage[2];
      v12 = _swiftEmptyArrayStorage[3];
      if (v13 >= v12 >> 1)
      {
        result = sub_143DA0((v12 > 1), v13 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v13 + 1;
      v14 = &_swiftEmptyArrayStorage[5 * v13];
      v14[4] = v9;
      v14[5] = v8;
      v14[6] = v11;
      v14[7] = v10;
      *(v14 + 64) = 1;
      goto LABEL_2;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1AD9E8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *(a1 + 32);
  v7 = *(a2 + 8);
  v8 = *(a2 + 16);
  v9 = *(a2 + 24);
  v10 = *(a2 + 32);
  if (v3)
  {
    if (!v7)
    {
      return 0;
    }

    v11 = *a1 == *a2 && v3 == v7;
    if (!v11 && (sub_76A950() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v7)
  {
    return 0;
  }

  v12 = v4 == v8 && v5 == v9;
  if (v12 || (sub_76A950() & 1) != 0)
  {
    return v6 ^ v10 ^ 1u;
  }

  return 0;
}

uint64_t sub_1ADA98(uint64_t a1, uint64_t a2)
{
  v4 = sub_BD88(&unk_93FF30);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

double sub_1ADB08(uint64_t a1, void *a2)
{
  v4 = sub_76A920();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_762D10();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_47D874(*a1, *(a1 + 8), *(a1 + 16), *(a1 + 24), a2, v10);
  v32 = *(a1 + 32);
  sub_26F08();
  v14 = qword_93D160;
  v28 = v13;
  if (v14 != -1)
  {
    swift_once();
  }

  v15 = sub_7666D0();
  sub_BE38(v15, qword_99DCA8);
  sub_769E00();
  v16 = sub_7653B0();
  v30 = v16;
  v31 = sub_9BA34();
  v17 = sub_B1B4(v29);
  (*(*(v16 - 8) + 104))(v17, enum case for Feature.measurement_with_labelplaceholder(_:), v16);
  sub_765C30();
  sub_BEB8(v29);
  sub_762CD0();
  sub_762CE0();
  (*(v9 + 8))(v12, v8);
  sub_B170(v29, v30);
  sub_7665B0();
  sub_769DC0();
  (*(v5 + 104))(v7, enum case for FloatingPointRoundingRule.up(_:), v4);
  sub_769D80();
  v19 = v18;
  (*(v5 + 8))(v7, v4);
  v20 = [a2 traitCollection];
  v21 = sub_47DB74();

  if (v32 == 1)
  {
    [v21 size];
    v23 = v22;

    v24 = v23 + 5.0;
  }

  else
  {

    v24 = 0.0;
  }

  v25 = v19 + v24;
  sub_BEB8(v29);
  return v25;
}

id sub_1ADED4(char *a1)
{
  v2 = *&a1[OBJC_IVAR____TtC18ASMessagesProvider28GuidedSearchTokenPaletteView_layout];

  return [v2 invalidateLayout];
}

uint64_t sub_1ADF30(int64_t a1, unsigned __int8 *a2)
{
  v68 = sub_BD88(&qword_941BC0);
  v67 = *(v68 - 8);
  __chkstk_darwin(v68);
  v71 = &v64 - v4;
  v74 = sub_757640();
  v82 = *(v74 - 8);
  __chkstk_darwin(v74);
  v66 = &v64 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v84 = &v64 - v7;
  __chkstk_darwin(v8);
  v78 = &v64 - v9;
  v10 = sub_BD88(&qword_948550);
  __chkstk_darwin(v10);
  v81 = &v64 - v11;
  v75 = sub_BD88(&qword_948558);
  v70 = *(v75 - 8);
  __chkstk_darwin(v75);
  v69 = &v64 - v12;
  v13 = *(a1 + 16);
  v14 = _swiftEmptyArrayStorage;
  v80 = v13;
  v76 = a1;
  v77 = a2;
  if (v13)
  {
    v86[0] = _swiftEmptyArrayStorage;
    sub_143CDC(0, v13, 0);
    v14 = v86[0];
    v15 = (a1 + 56);
    do
    {
      v17 = *(v15 - 1);
      v16 = *v15;
      v86[0] = v14;
      v19 = v14[2];
      v18 = v14[3];

      if (v19 >= v18 >> 1)
      {
        sub_143CDC((v18 > 1), v19 + 1, 1);
        v14 = v86[0];
      }

      v14[2] = v19 + 1;
      v20 = &v14[2 * v19];
      v20[4] = v17;
      v20[5] = v16;
      v15 += 5;
      --v13;
    }

    while (v13);
    a2 = v77;
  }

  v21 = *(a2 + 2);
  v22 = _swiftEmptyArrayStorage;
  v64 = v21;
  if (v21)
  {
    v86[0] = _swiftEmptyArrayStorage;
    sub_143CDC(0, v21, 0);
    v22 = v86[0];
    v23 = (a2 + 56);
    v24 = v21;
    do
    {
      v26 = *(v23 - 1);
      v25 = *v23;
      v86[0] = v22;
      v28 = v22[2];
      v27 = v22[3];

      if (v28 >= v27 >> 1)
      {
        sub_143CDC((v27 > 1), v28 + 1, 1);
        v22 = v86[0];
      }

      v22[2] = v28 + 1;
      v29 = &v22[2 * v28];
      v29[4] = v26;
      v29[5] = v25;
      v23 += 5;
      --v24;
    }

    while (v24);
  }

  v86[0] = v22;
  v86[4] = v14;
  sub_BD88(&unk_947FF0);
  sub_16194(&qword_94EC70, &unk_947FF0);
  v30 = v69;
  sub_769190();

  v31 = v81;
  (*(v70 + 16))(v81, v30, v75);
  v32 = *(v10 + 36);
  sub_16194(&qword_948560, &qword_948558);
  sub_7696C0();
  sub_7696F0();
  if (*(v31 + v32) == v86[0])
  {
    v72 = _swiftEmptyArrayStorage;
    v85 = _swiftEmptyArrayStorage;
  }

  else
  {
    v79 = (v82 + 32);
    v85 = _swiftEmptyArrayStorage;
    v72 = _swiftEmptyArrayStorage;
    do
    {
      while (1)
      {
        v54 = sub_769710();
        v56 = *(v55 + 33);
        v83 = *(v55 + 16);
        DebugMenuPage.debugSettingsProviders.getter();
        v54(v86, 0);
        sub_769700();
        if (v56 == 1)
        {
          break;
        }

        sub_7575B0();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v85 = sub_7BA20(0, v85[2] + 1, 1, v85);
        }

        v58 = v85[2];
        v57 = v85[3];
        if (v58 >= v57 >> 1)
        {
          v85 = sub_7BA20(v57 > 1, v58 + 1, 1, v85);
        }

        sub_1AF1C0();
        v59 = v84;
        v60 = v85;
        v85[2] = v58 + 1;
        (*(v82 + 32))(v60 + ((*(v82 + 80) + 32) & ~*(v82 + 80)) + *(v82 + 72) * v58, v59, v74);
        v31 = v81;
        sub_7696F0();
        if (*(v31 + v32) == v86[0])
        {
          goto LABEL_14;
        }
      }

      sub_7575B0();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v72 = sub_7BA20(0, v72[2] + 1, 1, v72);
      }

      v62 = v72[2];
      v61 = v72[3];
      if (v62 >= v61 >> 1)
      {
        v72 = sub_7BA20(v61 > 1, v62 + 1, 1, v72);
      }

      sub_1AF1C0();
      v63 = v72;
      v72[2] = v62 + 1;
      (*(v82 + 32))(v63 + ((*(v82 + 80) + 32) & ~*(v82 + 80)) + *(v82 + 72) * v62, v78, v74);
      v31 = v81;
      sub_7696F0();
    }

    while (*(v31 + v32) != v86[0]);
  }

LABEL_14:
  result = sub_10A2C(v31, &qword_948550);
  v34 = v80;
  if (!v80)
  {
    v73 = _swiftEmptyArrayStorage;
LABEL_62:
    (*(v70 + 8))(v69, v75);
    return v72;
  }

  v35 = 0;
  v78 = (v76 + 32);
  v65 = (v82 + 32);
  v77 += 64;
  v73 = _swiftEmptyArrayStorage;
  v76 = v64 + 1;
  while (2)
  {
    if (v35 >= v34)
    {
      __break(1u);
    }

    else if (!__OFADD__(v35, 1))
    {
      v84 = v35 + 1;
      v36 = v77;
      v79 = v35;
      v37 = &v78[40 * v35];
      v38 = *(v37 + 1);
      v81 = *v37;
      v83 = v38;
      v40 = *(v37 + 2);
      v39 = *(v37 + 3);
      LODWORD(v82) = v37[32];
      v41 = v76;
      while (1)
      {
        if (!--v41)
        {
          goto LABEL_17;
        }

        v42 = *(v36 - 4);
        v43 = *(v36 - 3);
        v45 = *(v36 - 2);
        v44 = *(v36 - 1);
        v46 = *v36;
        v47 = v45 == v40 && v44 == v39;
        v48 = v47;
        if (v47)
        {
          break;
        }

        v36 += 40;
        result = sub_76A950();
        if (result)
        {
          v49 = v83;
          if (v83)
          {
            goto LABEL_31;
          }

LABEL_37:
          if (v43)
          {
            goto LABEL_40;
          }

          goto LABEL_38;
        }
      }

      v45 = v40;
      v49 = v83;
      if (!v83)
      {
        goto LABEL_37;
      }

LABEL_31:
      if (!v43)
      {
        goto LABEL_41;
      }

      result = v81;
      if (v81 == v42 && v49 == v43 || (result = sub_76A950(), (result & 1) != 0))
      {
LABEL_38:
        if (v48 || (result = sub_76A950(), (result & 1) != 0))
        {
          if (v82 == v46)
          {
LABEL_17:
            v35 = v84;
            v34 = v80;
            if (v84 == v80)
            {
              goto LABEL_62;
            }

            continue;
          }
        }
      }

LABEL_40:

LABEL_41:

      sub_7575B0();
      v50 = v71 + *(v68 + 48);
      (*v65)();
      *v50 = v42;
      *(v50 + 8) = v43;
      *(v50 + 16) = v45;
      *(v50 + 24) = v44;
      *(v50 + 32) = v46;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v73 = sub_7B9FC(0, v73[2] + 1, 1, v73);
      }

      v34 = v80;
      v35 = v84;
      v52 = v73[2];
      v51 = v73[3];
      if (v52 >= v51 >> 1)
      {
        v73 = sub_7B9FC(v51 > 1, v52 + 1, 1, v73);
      }

      v53 = v73;
      v73[2] = v52 + 1;
      result = sub_109C4(v71, v53 + ((*(v67 + 80) + 32) & ~*(v67 + 80)) + *(v67 + 72) * v52, &qword_941BC0);
      if (v35 != v34)
      {
        continue;
      }

      goto LABEL_62;
    }

    break;
  }

  __break(1u);
  return result;
}

void sub_1AE9B4(unsigned __int8 *a1)
{
  v2 = v1;
  v4 = sub_757640();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_BD88(&unk_948540);
  __chkstk_darwin(v8 - 8);
  v10 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v64 = &v54 - v12;
  v65 = v2;

  v13 = sub_1ADF30(v55, a1);
  v56 = v14;
  v57 = v13;
  v16 = v15;
  v17 = *(v15 + 16);
  if (v17)
  {
    v54 = a1;
    v62 = (v5 + 32);
    v63 = OBJC_IVAR____TtC18ASMessagesProvider28GuidedSearchTokenPaletteView_collectionView;
    v58 = (v5 + 8);

    v18 = 0;
    v60 = v10;
    v61 = v16;
    v59 = v17;
    while (1)
    {
      v19 = v64;
      if (v18 == v17)
      {
        v20 = sub_BD88(&qword_941BC0);
        (*(*(v20 - 8) + 56))(v10, 1, 1, v20);
        v66 = v17;
      }

      else
      {
        if ((v18 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_23:
          __break(1u);
LABEL_24:
          __break(1u);
LABEL_25:
          __break(1u);
LABEL_26:
          __break(1u);
          return;
        }

        if (v18 >= *(v16 + 16))
        {
          goto LABEL_23;
        }

        v21 = v4;
        v22 = v16;
        v23 = v18;
        v24 = sub_BD88(&qword_941BC0);
        v25 = *(v24 - 8);
        sub_1ED18(v22 + ((*(v25 + 80) + 32) & ~*(v25 + 80)) + *(v25 + 72) * v23, v10, &qword_941BC0);
        v66 = v23 + 1;
        v16 = v22;
        v4 = v21;
        (*(v25 + 56))(v10, 0, 1, v24);
      }

      sub_109C4(v10, v19, &unk_948540);
      v26 = sub_BD88(&qword_941BC0);
      if ((*(*(v26 - 8) + 48))(v19, 1, v26) == 1)
      {

        a1 = v54;
        break;
      }

      v27 = v19 + *(v26 + 48);
      v28 = *v27;
      v29 = *(v27 + 8);
      v31 = *(v27 + 16);
      v30 = *(v27 + 24);
      v32 = *(v27 + 32);
      v33 = v19;
      v34 = v4;
      (*v62)(v7, v33, v4);
      v35 = *&v65[v63];
      if (!v35)
      {
        goto LABEL_24;
      }

      v36 = v35;
      isa = sub_757550().super.isa;
      v38 = [v36 cellForItemAtIndexPath:isa];

      if (v38)
      {
        type metadata accessor for GuidedSearchTokenCell();
        if (swift_dynamicCastClass())
        {
          sub_47C360(v28, v29, v31, v30, v32);
        }

        v4 = v34;
        (*v58)(v7, v34);
      }

      else
      {
        v4 = v34;
        (*v58)(v7, v34);
      }

      v10 = v60;
      v16 = v61;
      v17 = v59;
      v18 = v66;
    }
  }

  v39 = *(v57 + 16);
  if (v39)
  {
    v40 = *&v65[OBJC_IVAR____TtC18ASMessagesProvider28GuidedSearchTokenPaletteView_collectionView];
    if (!v40)
    {
      goto LABEL_26;
    }

    v41 = v40;
    [v41 contentOffset];
    [v41 setContentOffset:0 animated:?];

    *(*&v65[OBJC_IVAR____TtC18ASMessagesProvider28GuidedSearchTokenPaletteView_layout] + OBJC_IVAR____TtC18ASMessagesProvider44GuidedSearchTokenPaletteCollectionViewLayout_pinningEnabled) = 1;
  }

  v42 = *&v65[OBJC_IVAR____TtC18ASMessagesProvider28GuidedSearchTokenPaletteView_collectionView];
  if (!v42)
  {
    goto LABEL_25;
  }

  v43 = v39 != 0;
  v44 = v42;

  v45 = swift_allocObject();
  v46 = v65;
  v45[2] = v65;
  v45[3] = a1;
  v47 = v56;
  v45[4] = v57;
  v45[5] = v16;
  v45[6] = v47;
  v48 = swift_allocObject();
  *(v48 + 16) = sub_1AF0F4;
  *(v48 + 24) = v45;
  v71 = sub_2EC28;
  v72 = v48;
  aBlock = _NSConcreteStackBlock;
  v68 = 1107296256;
  v69 = sub_1EB578;
  v70 = &unk_887178;
  v49 = _Block_copy(&aBlock);
  v50 = v46;

  v51 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v52 = swift_allocObject();
  *(v52 + 16) = v43;
  *(v52 + 24) = v51;
  v71 = sub_1AF19C;
  v72 = v52;
  aBlock = _NSConcreteStackBlock;
  v68 = 1107296256;
  v69 = sub_3D6D80;
  v70 = &unk_8871F0;
  v53 = _Block_copy(&aBlock);

  [v44 performBatchUpdates:v49 completion:v53];
  _Block_release(v53);
  _Block_release(v49);
}

uint64_t sub_1AF09C()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1AF114(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1AF12C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1AF164()
{

  return _swift_deallocObject(v0, 32, 7);
}

void sub_1AF1C8()
{
  v1 = (v0 + OBJC_IVAR____TtC18ASMessagesProvider28GuidedSearchTokenPaletteView_onSelect);
  *v1 = 0;
  v1[1] = 0;
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider28GuidedSearchTokenPaletteView_collectionView) = 0;
  v2 = v0 + OBJC_IVAR____TtC18ASMessagesProvider28GuidedSearchTokenPaletteView_previousLayoutWidth;
  *v2 = 0;
  *(v2 + 8) = 1;
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider28GuidedSearchTokenPaletteView_impressionCalculator) = 0;
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider28GuidedSearchTokenPaletteView_impressionsCoordinator) = 0;
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider28GuidedSearchTokenPaletteView_impressionsScrollObserver) = 0;
  v3 = OBJC_IVAR____TtC18ASMessagesProvider28GuidedSearchTokenPaletteView_containerImpressionMetrics;
  v4 = sub_768AB0();
  (*(*(v4 - 8) + 56))(v0 + v3, 1, 1, v4);
  sub_76A840();
  __break(1u);
}

uint64_t sub_1AF2C8(void *a1)
{
  v3 = sub_BD88(&unk_93FF30);
  __chkstk_darwin(v3 - 8);
  v5 = &v13[-v4];
  v6 = sub_768AB0();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v13[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = OBJC_IVAR____TtC18ASMessagesProvider28GuidedSearchTokenPaletteView_containerImpressionMetrics;
  swift_beginAccess();
  sub_1ED18(v1 + v10, v5, &unk_93FF30);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    result = sub_10A2C(v5, &unk_93FF30);
  }

  else
  {
    (*(v7 + 32))(v9, v5, v6);
    v12 = OBJC_IVAR____TtC18ASMessagesProvider28GuidedSearchTokenPaletteView_impressionCalculator;
    swift_beginAccess();
    if (*(v1 + v12))
    {
      swift_endAccess();

      [a1 frame];
      sub_75F500();

      result = (*(v7 + 8))(v9, v6);
    }

    else
    {
      (*(v7 + 8))(v9, v6);
      result = swift_endAccess();
    }
  }

  if (*(v1 + OBJC_IVAR____TtC18ASMessagesProvider28GuidedSearchTokenPaletteView_impressionsCoordinator))
  {

    sub_764260();
  }

  return result;
}

uint64_t sub_1AF558()
{
  v0 = sub_760500();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v16 - v5;
  v7 = type metadata accessor for MetadataRibbonIconWithLabelView.Configuration(0);
  sub_161DC(v7, qword_99B6F8);
  v8 = sub_BE38(v7, qword_99B6F8);
  if (qword_93C740 != -1)
  {
    swift_once();
  }

  v9 = sub_BE38(v0, qword_99BB00);
  v10 = *(v1 + 16);
  v10(v6, v9, v0);
  sub_396E8();
  v11 = sub_769FF0();
  if (qword_93C760 != -1)
  {
    swift_once();
  }

  v12 = sub_BE38(v0, qword_99BB60);
  v10(v3, v12, v0);
  v13 = sub_769FF0();
  v14 = *(v1 + 32);
  v14(v8, v6, v0);
  *(v8 + v7[5]) = v11;
  result = (v14)(v8 + v7[6], v3, v0);
  *(v8 + v7[7]) = v13;
  return result;
}

char *sub_1AF778(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v10 = type metadata accessor for MetadataRibbonIconWithLabelView.Configuration(0);
  __chkstk_darwin(v10);
  v85 = &v82 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_75FC90();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v82 = &v82 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_BD88(&qword_948660);
  __chkstk_darwin(v15);
  v17 = &v82 - v16;
  v18 = sub_BD88(&qword_93EBC0);
  __chkstk_darwin(v18 - 8);
  v83 = &v82 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = &v82 - v21;
  v23 = sub_763DF0();
  v88 = *(v23 - 8);
  v89 = v23;
  __chkstk_darwin(v23);
  v86 = &v82 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v84 = &v82 - v26;
  sub_763DD0();
  *&v4[OBJC_IVAR____TtC18ASMessagesProvider31MetadataRibbonIconWithLabelView_artwork] = 0;
  v27 = &v4[OBJC_IVAR____TtC18ASMessagesProvider31MetadataRibbonIconWithLabelView_id];
  *v27 = 0u;
  *(v27 + 1) = 0u;
  *(v27 + 4) = 0;
  v28 = *(v13 + 56);
  v28(&v4[OBJC_IVAR____TtC18ASMessagesProvider31MetadataRibbonIconWithLabelView_itemType], 1, 1, v12);
  v29 = &v4[OBJC_IVAR____TtC18ASMessagesProvider31MetadataRibbonIconWithLabelView_labelMaxWidth];
  *v29 = 0;
  v29[8] = 1;
  v30 = &v4[OBJC_IVAR____TtC18ASMessagesProvider31MetadataRibbonIconWithLabelView_truncationLegibilityThreshold];
  *v30 = 0;
  v30[8] = 1;
  v4[OBJC_IVAR____TtC18ASMessagesProvider31MetadataRibbonIconWithLabelView_allowsTruncation] = 2;
  v31 = &v4[OBJC_IVAR____TtC18ASMessagesProvider31MetadataRibbonIconWithLabelView_artworkSize];
  *v31 = 0;
  *(v31 + 1) = 0;
  v32 = OBJC_IVAR____TtC18ASMessagesProvider31MetadataRibbonIconWithLabelView_configuration;
  if (qword_93C600 != -1)
  {
    swift_once();
  }

  v87 = v10;
  v33 = sub_BE38(v10, qword_99B6F8);
  sub_1B232C(v33, &v5[v32]);
  sub_75BB20();
  *&v5[OBJC_IVAR____TtC18ASMessagesProvider31MetadataRibbonIconWithLabelView_label] = sub_75BB00();
  *&v5[OBJC_IVAR____TtC18ASMessagesProvider31MetadataRibbonIconWithLabelView_artworkView] = [objc_allocWithZone(sub_759210()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v92.receiver = v5;
  v92.super_class = ObjectType;
  v34 = objc_msgSendSuper2(&v92, "initWithFrame:", a1, a2, a3, a4);
  v35 = OBJC_IVAR____TtC18ASMessagesProvider31MetadataRibbonIconWithLabelView_itemType;
  swift_beginAccess();
  (*(v13 + 104))(v22, enum case for MetadataRibbonItemType.developer(_:), v12);
  v28(v22, 0, 1, v12);
  v36 = *(v15 + 48);
  sub_1ED18(&v34[v35], v17, &qword_93EBC0);
  sub_1ED18(v22, &v17[v36], &qword_93EBC0);
  v37 = *(v13 + 48);
  if (v37(v17, 1, v12) != 1)
  {
    v41 = v83;
    sub_1ED18(v17, v83, &qword_93EBC0);
    if (v37(&v17[v36], 1, v12) != 1)
    {
      v44 = v82;
      (*(v13 + 32))(v82, &v17[v36], v12);
      sub_1B23EC(&qword_948668, &type metadata accessor for MetadataRibbonItemType);
      v45 = v34;
      v46 = sub_7691C0();
      v47 = *(v13 + 8);
      v47(v44, v12);
      sub_10A2C(v22, &qword_93EBC0);
      v47(v41, v12);
      sub_10A2C(v17, &qword_93EBC0);
      v40 = v87;
      if (v46)
      {
        goto LABEL_11;
      }

LABEL_9:
      v43 = v84;
      sub_763DD0();
      goto LABEL_12;
    }

    v42 = v34;
    sub_10A2C(v22, &qword_93EBC0);
    (*(v13 + 8))(v41, v12);
    v40 = v87;
LABEL_8:
    sub_10A2C(v17, &qword_948660);
    goto LABEL_9;
  }

  v38 = v34;
  sub_10A2C(v22, &qword_93EBC0);
  v39 = v37(&v17[v36], 1, v12);
  v40 = v87;
  if (v39 != 1)
  {
    goto LABEL_8;
  }

  sub_10A2C(v17, &qword_93EBC0);
LABEL_11:
  v43 = v84;
  sub_763DE0();
LABEL_12:
  v48 = OBJC_IVAR____TtC18ASMessagesProvider31MetadataRibbonIconWithLabelView_metrics;
  v87 = OBJC_IVAR____TtC18ASMessagesProvider31MetadataRibbonIconWithLabelView_metrics;
  swift_beginAccess();
  (*(v88 + 40))(&v34[v48], v43, v89);
  swift_endAccess();
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v52 = v34;
  [v52 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v53 = OBJC_IVAR____TtC18ASMessagesProvider31MetadataRibbonIconWithLabelView_artworkView;
  [*&v52[OBJC_IVAR____TtC18ASMessagesProvider31MetadataRibbonIconWithLabelView_artworkView] setContentMode:0];
  v54 = *&v52[v53];
  sub_7590F0();

  v55 = *&v52[v53];
  v56 = &v52[OBJC_IVAR____TtC18ASMessagesProvider31MetadataRibbonIconWithLabelView_configuration];
  v84 = v34;
  v57 = v85;
  sub_1B232C(&v52[OBJC_IVAR____TtC18ASMessagesProvider31MetadataRibbonIconWithLabelView_configuration], v85);
  v58 = v55;
  v59 = [v52 traitCollection];

  v60.super.isa = v59;
  v61.super.isa = sub_7604E0(v60).super.isa;
  v62 = [(objc_class *)v59 preferredContentSizeCategory];
  v63 = sub_769B20();

  if (v63)
  {
    v64 = 3;
  }

  else
  {
    v64 = 1;
  }

  v65 = [objc_opt_self() configurationWithFont:v61.super.isa scale:v64];

  sub_1B2390(v57);
  sub_759120();

  v66 = *&v56[*(v40 + 28)];
  v67 = *&v52[v53];
  v68 = v66;
  sub_7590A0();

  v69 = OBJC_IVAR____TtC18ASMessagesProvider31MetadataRibbonIconWithLabelView_label;
  [*&v52[OBJC_IVAR____TtC18ASMessagesProvider31MetadataRibbonIconWithLabelView_label] setTextColor:*&v56[*(v40 + 20)]];
  v70 = *&v52[v69];
  v71 = sub_760500();
  v91[3] = v71;
  v91[4] = sub_1B23EC(&qword_9443B0, &type metadata accessor for MetadataRibbonTextStyle);
  v72 = sub_B1B4(v91);
  (*(*(v71 - 8) + 16))(v72, v56, v71);
  v73 = v70;
  sub_75BA60();

  v74 = *&v52[v69];
  v75 = v88;
  v76 = v86;
  v77 = v89;
  (*(v88 + 16))(v86, &v84[v87], v89);
  v78 = v74;
  v79 = sub_763DB0();
  (*(v75 + 8))(v76, v77);
  [v78 setNumberOfLines:v79];

  [v52 addSubview:*&v52[v69]];
  [v52 addSubview:*&v52[v53]];
  sub_BD88(&qword_9477F0);
  v80 = swift_allocObject();
  *(v80 + 16) = xmmword_77B6D0;
  *(v80 + 32) = sub_767B80();
  *(v80 + 40) = &protocol witness table for UITraitPreferredContentSizeCategory;
  sub_769F40();

  swift_unknownObjectRelease();

  return v52;
}

uint64_t sub_1B0244()
{
  ObjectType = swift_getObjectType();
  v19 = ObjectType;
  v2 = sub_7664F0();
  v21 = *(v2 - 8);
  v22 = v2;
  __chkstk_darwin(v2);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_763DF0();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_763E00();
  v9 = *(v20 - 8);
  *&v10 = __chkstk_darwin(v20).n128_u64[0];
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29.receiver = v0;
  v29.super_class = ObjectType;
  objc_msgSendSuper2(&v29, "layoutSubviews", v10, v19);
  v13 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider31MetadataRibbonIconWithLabelView_label];
  v27 = sub_75BB20();
  v28 = &protocol witness table for UILabel;
  v26 = v13;
  v14 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider31MetadataRibbonIconWithLabelView_artworkView];
  v24 = sub_759210();
  v25 = &protocol witness table for UIView;
  v23 = v14;
  v15 = OBJC_IVAR____TtC18ASMessagesProvider31MetadataRibbonIconWithLabelView_metrics;
  swift_beginAccess();
  (*(v6 + 16))(v8, &v0[v15], v5);
  v16 = v13;
  v17 = v14;
  sub_763D80();
  sub_75D650();
  sub_763DA0();
  (*(v21 + 8))(v4, v22);
  return (*(v9 + 8))(v12, v20);
}

double sub_1B053C(uint64_t a1)
{
  v18[0] = a1;
  v2 = sub_763DF0();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_763E00();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider31MetadataRibbonIconWithLabelView_label);
  v18[12] = sub_75BB20();
  v18[13] = &protocol witness table for UILabel;
  v18[9] = v10;
  v11 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider31MetadataRibbonIconWithLabelView_artworkView);
  v18[7] = sub_759210();
  v18[8] = &protocol witness table for UIView;
  v18[4] = v11;
  v12 = OBJC_IVAR____TtC18ASMessagesProvider31MetadataRibbonIconWithLabelView_metrics;
  swift_beginAccess();
  (*(v3 + 16))(v5, v1 + v12, v2);
  v13 = v10;
  v14 = v11;
  sub_763D80();
  sub_763D90();
  v16 = v15;
  (*(v7 + 8))(v9, v6);
  return v16;
}

id sub_1B07FC(uint64_t a1, uint64_t a2, NSString a3, uint64_t a4)
{
  v5 = v4;
  v28 = a4;
  v27 = sub_765240();
  v8 = *(v27 - 8);
  __chkstk_darwin(v27);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_763DF0();
  v12 = *(v11 - 8);
  *&v13 = __chkstk_darwin(v11).n128_u64[0];
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *&v5[OBJC_IVAR____TtC18ASMessagesProvider31MetadataRibbonIconWithLabelView_label];
  if (a3)
  {
    a3 = sub_769210();
  }

  [v16 setText:{a3, v13, v27, v28}];

  *&v5[OBJC_IVAR____TtC18ASMessagesProvider31MetadataRibbonIconWithLabelView_artwork] = a1;

  if (a1)
  {
    v17 = OBJC_IVAR____TtC18ASMessagesProvider31MetadataRibbonIconWithLabelView_metrics;
    swift_beginAccess();
    (*(v12 + 16))(v15, &v5[v17], v11);
    v18 = OBJC_IVAR____TtC18ASMessagesProvider31MetadataRibbonIconWithLabelView_configuration;
    swift_retain_n();
    v19 = [v5 traitCollection];
    v20 = sub_1B1748(a1, v15, &v5[v18], v19);
    v22 = v21;

    (*(v12 + 8))(v15, v11);
    v23 = &v5[OBJC_IVAR____TtC18ASMessagesProvider31MetadataRibbonIconWithLabelView_artworkSize];
    *v23 = v20;
    *(v23 + 1) = v22;
    v24 = sub_759150();
    *(v25 + 16) = v20;
    *(v25 + 24) = v22;
    v24(v29, 0);
    [v5 setNeedsLayout];
    sub_765250();
    sub_765210();
    (*(v8 + 8))(v10, v27);
    sub_765330();
    sub_75A110();
    sub_759210();
    sub_75A090();
    swift_allocObject();
    swift_unknownObjectWeakInit();

    sub_75A040();

    sub_10A2C(v29, &unk_9443A0);

    return [v5 setNeedsLayout];
  }

  else
  {

    return [v5 setNeedsLayout];
  }
}

void sub_1B0C00(objc_class *a1, char a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = *(Strong + OBJC_IVAR____TtC18ASMessagesProvider31MetadataRibbonIconWithLabelView_artworkView);

    v10.is_nil = (a2 & 1) == 0;
    v10.value.super.isa = a1;
    sub_759140(v10, v7);
  }

  swift_beginAccess();
  v8 = swift_unknownObjectWeakLoadStrong();
  if (v8)
  {
    v9 = v8;
    [v8 setNeedsLayout];
  }
}

void sub_1B0DFC()
{
  sub_763DF0();
  if (v0 <= 0x3F)
  {
    sub_DBB44();
    if (v1 <= 0x3F)
    {
      type metadata accessor for MetadataRibbonIconWithLabelView.Configuration(319);
      if (v2 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

uint64_t sub_1B0F78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_760500();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1B1048(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_760500();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

unint64_t sub_1B1100()
{
  result = sub_760500();
  if (v1 <= 0x3F)
  {
    result = sub_396E8();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1B1194()
{
  sub_75A110();
  sub_768900();
  sub_768ED0();
  v0 = sub_75D790();
  v1 = sub_75D7B0();
  sub_1B07FC(v0, v1, v2, v4);
}

uint64_t sub_1B1248@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC18ASMessagesProvider31MetadataRibbonIconWithLabelView_itemType;
  swift_beginAccess();
  return sub_1ED18(v1 + v3, a1, &qword_93EBC0);
}

uint64_t sub_1B12B0(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18ASMessagesProvider31MetadataRibbonIconWithLabelView_itemType;
  swift_beginAccess();
  sub_B33C8(a1, v1 + v3, &qword_93EBC0);
  return swift_endAccess();
}

uint64_t sub_1B138C(uint64_t a1, char a2)
{
  v5 = v2 + OBJC_IVAR____TtC18ASMessagesProvider31MetadataRibbonIconWithLabelView_labelMaxWidth;
  result = swift_beginAccess();
  *v5 = a1;
  *(v5 + 8) = a2 & 1;
  return result;
}

uint64_t sub_1B1458(uint64_t a1, char a2)
{
  v5 = v2 + OBJC_IVAR____TtC18ASMessagesProvider31MetadataRibbonIconWithLabelView_truncationLegibilityThreshold;
  result = swift_beginAccess();
  *v5 = a1;
  *(v5 + 8) = a2 & 1;
  return result;
}

uint64_t sub_1B1518()
{
  v1 = OBJC_IVAR____TtC18ASMessagesProvider31MetadataRibbonIconWithLabelView_allowsTruncation;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1B155C(char a1)
{
  v3 = OBJC_IVAR____TtC18ASMessagesProvider31MetadataRibbonIconWithLabelView_allowsTruncation;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1B160C@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC18ASMessagesProvider31MetadataRibbonIconWithLabelView_id;
  swift_beginAccess();
  return sub_1ED18(v1 + v3, a1, &unk_9443A0);
}

uint64_t sub_1B1674(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18ASMessagesProvider31MetadataRibbonIconWithLabelView_id;
  swift_beginAccess();
  sub_B33C8(a1, v1 + v3, &unk_9443A0);
  return swift_endAccess();
}

double sub_1B1748(uint64_t a1, uint64_t a2, uint64_t a3, objc_class *a4)
{
  v6 = sub_766690();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v28[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    return 0.0;
  }

  type metadata accessor for MetadataRibbonIconWithLabelView.Configuration(0);

  v10.super.isa = a4;
  v11.super.isa = sub_7604E0(v10).super.isa;
  v12 = [(objc_class *)a4 preferredContentSizeCategory];
  v13 = sub_769B20();

  if (v13)
  {
    v14 = 3;
  }

  else
  {
    v14 = 1;
  }

  v15 = [objc_opt_self() configurationWithFont:v11.super.isa scale:v14];

  if (sub_765160())
  {
    v16 = v15;
    if (sub_765190())
    {
      v17 = sub_759910();
      goto LABEL_11;
    }

    if (sub_765180())
    {
      v17 = sub_56EBA8(a1, v15);
LABEL_11:
      v19 = v17;

      if (v19)
      {
        [v19 size];
        v18 = v20;

        return v18;
      }

      goto LABEL_14;
    }
  }

LABEL_14:
  if ((sub_765190() & 1) != 0 && (sub_7651B0(), v21))
  {
    v22 = v15;
    v23 = sub_759920();

    [v23 size];
    v18 = v24;
  }

  else
  {

    sub_763DC0();
    sub_B170(v28, v28[3]);
    sub_766710();
    sub_BEB8(v28);
    sub_765260();
    sub_7666A0();
    sub_766650();
    v18 = v25;

    (*(v7 + 8))(v9, v6);
  }

  return v18;
}

uint64_t sub_1B1A4C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

double sub_1B1AA0(uint64_t a1, void *a2)
{
  v3 = sub_763E00();
  v48 = *(v3 - 8);
  v49 = v3;
  __chkstk_darwin(v3);
  v47 = v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_766D70();
  v42 = *(v44 - 8);
  __chkstk_darwin(v44);
  v41 = v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_767030();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = v39 - v11;
  __chkstk_darwin(v13);
  v46 = v39 - v14;
  v45 = sub_763DF0();
  v43 = *(v45 - 8);
  __chkstk_darwin(v45);
  v40 = v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = v39 - v17;
  v19 = sub_75D790();
  v39[3] = sub_75D7B0();
  v39[2] = v20;
  sub_763DD0();
  if (qword_93C600 != -1)
  {
    swift_once();
  }

  v21 = type metadata accessor for MetadataRibbonIconWithLabelView.Configuration(0);
  v22 = sub_BE38(v21, qword_99B6F8);
  v23 = [a2 traitCollection];
  sub_1B1748(v19, v18, v22, v23);

  v24 = sub_7670D0();
  v39[1] = a2;
  v25 = v24;
  swift_allocObject();
  v26 = sub_7670B0();
  v39[0] = v19;
  v27 = v26;
  sub_767020();
  v28 = sub_760500();
  v54[3] = v28;
  v54[4] = sub_1B23EC(&qword_9443B0, &type metadata accessor for MetadataRibbonTextStyle);
  v29 = sub_B1B4(v54);
  (*(*(v28 - 8) + 16))(v29, v22, v28);
  sub_766F80();
  v30 = *(v7 + 8);
  v30(v9, v6);
  sub_BEB8(v54);
  sub_763DB0();
  v31 = v46;
  sub_767010();
  v30(v12, v6);
  (*(v7 + 16))(v12, v31, v6);
  sub_766D50();
  v32 = v41;
  sub_766D90();
  sub_766D40();
  (*(v42 + 8))(v32, v44);
  sub_134D8(v54, v53);
  v51 = v25;
  v52 = &protocol witness table for LayoutViewPlaceholder;
  v50 = v27;
  v33 = v43;
  v34 = v45;
  (*(v43 + 16))(v40, v18, v45);

  v35 = v47;
  sub_763D80();
  sub_763D90();
  v37 = v36;

  (*(v48 + 8))(v35, v49);
  sub_BEB8(v54);
  v30(v31, v6);
  (*(v33 + 8))(v18, v34);
  return v37;
}