id sub_100105BF4()
{
  v1 = sub_10000C518(&qword_10093FDB0);
  __chkstk_darwin(v1 - 8);
  v3 = &v30 - v2;
  v4 = type metadata accessor for TitleHeaderView(0);
  v31.receiver = v0;
  v31.super_class = v4;
  objc_msgSendSuper2(&v31, "prepareForReuse");
  v5 = &v0[OBJC_IVAR____TtC22SubscribePageExtension15TitleHeaderView_accessoryAction];
  v6 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension15TitleHeaderView_accessoryAction];
  *v5 = 0;
  *(v5 + 1) = 0;
  sub_1000164A8(v6);
  v7 = type metadata accessor for Accessory();
  (*(*(v7 - 8) + 56))(v3, 1, 1, v7);
  v8 = OBJC_IVAR____TtC22SubscribePageExtension15TitleHeaderView_accessory;
  swift_beginAccess();
  sub_10010AA88(v3, &v0[v8]);
  swift_endAccess();
  v9 = OBJC_IVAR____TtC22SubscribePageExtension15TitleHeaderView_accessoryView;
  if (!*&v0[OBJC_IVAR____TtC22SubscribePageExtension15TitleHeaderView_accessoryView])
  {
    goto LABEL_6;
  }

  objc_opt_self();
  v10 = swift_dynamicCastObjCClass();
  if (v10)
  {
    [v10 removeTarget:v0 action:"didTapWithAccessoryView:" forControlEvents:64];
  }

  v11 = *&v0[v9];
  if (v11)
  {
    [v11 removeFromSuperview];
    v12 = *&v0[v9];
  }

  else
  {
LABEL_6:
    v12 = 0;
  }

  *&v0[v9] = 0;

  v13 = OBJC_IVAR____TtC22SubscribePageExtension15TitleHeaderView_titleArtwork;
  v14 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension15TitleHeaderView_titleArtwork];
  if (v14)
  {
    v15 = OBJC_IVAR____TtC22SubscribePageExtension15TitleHeaderView_titleArtworkView;
    v16 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension15TitleHeaderView_titleArtworkView];

    if (v16)
    {
      [v16 removeFromSuperview];
      v17 = *&v0[v15];
    }

    else
    {
      v17 = 0;
    }

    *&v0[v15] = 0;
  }

  *&v0[v13] = 0;

  sub_100100E7C(v14);

  v18 = OBJC_IVAR____TtC22SubscribePageExtension15TitleHeaderView_eyebrowArtwork;
  v19 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension15TitleHeaderView_eyebrowArtwork];
  if (v19)
  {
    v20 = OBJC_IVAR____TtC22SubscribePageExtension15TitleHeaderView_eyebrowArtworkView;
    v21 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension15TitleHeaderView_eyebrowArtworkView];

    if (v21)
    {
      [v21 removeFromSuperview];
      v22 = *&v0[v20];
    }

    else
    {
      v22 = 0;
    }

    *&v0[v20] = 0;
  }

  *&v0[v18] = 0;

  sub_100100BDC(v19);

  v23 = &v0[OBJC_IVAR____TtC22SubscribePageExtension15TitleHeaderView_eyebrowText];
  v25 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension15TitleHeaderView_eyebrowText];
  v24 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension15TitleHeaderView_eyebrowText + 8];
  if (v24)
  {
    v26 = OBJC_IVAR____TtC22SubscribePageExtension15TitleHeaderView_eyebrowLabel;
    v27 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension15TitleHeaderView_eyebrowLabel];

    if (v27)
    {
      [v27 removeFromSuperview];
      v28 = *&v0[v26];
    }

    else
    {
      v28 = 0;
    }

    *&v0[v26] = 0;
  }

  *v23 = 0;
  *(v23 + 1) = 0;

  sub_10010063C(v25, v24);

  return [*&v0[OBJC_IVAR____TtC22SubscribePageExtension15TitleHeaderView_titleLabel] setText:0];
}

void sub_100105FD4()
{
  v1 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension15TitleHeaderView_eyebrowLabel);
  if (v1)
  {
    v2 = [v1 text];
    if (v2)
    {
      v3 = v2;
      v4 = sub_100753094();
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

  v7 = [*(v0 + OBJC_IVAR____TtC22SubscribePageExtension15TitleHeaderView_titleLabel) text];
  if (v7)
  {
    v8 = v7;
    v9 = sub_100753094();
    v11 = v10;
  }

  else
  {
    v9 = 0;
    v11 = 0;
  }

  v32 = v9;
  v33 = v11;
  v12 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension15TitleHeaderView_detailLabel);
  if (v12)
  {
    v13 = [v12 text];
    if (v13)
    {
      v14 = v13;
      v15 = sub_100753094();
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
      sub_10000C518(&qword_10092FE70);
      swift_arrayDestroy();
      sub_10000C518(&unk_100928A70);
      sub_10010ABC4();
      sub_100752FF4();

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
        v19 = sub_1002554F8(0, *(v19 + 2) + 1, 1, v19);
      }

      v27 = *(v19 + 2);
      v26 = *(v19 + 3);
      if (v27 >= v26 >> 1)
      {
        v19 = sub_1002554F8((v26 > 1), v27 + 1, 1, v19);
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

uint64_t sub_100106440()
{
  v7.receiver = v0;
  v7.super_class = type metadata accessor for TitleHeaderView(0);
  v1 = objc_msgSendSuper2(&v7, "_accessibilitySupplementaryFooterViews");
  if (v1)
  {
    v2 = v1;
    v3 = sub_1007532A4();
  }

  else
  {
    v3 = 0;
  }

  v4 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension15TitleHeaderView_accessoryView];
  if (v4)
  {
    v5 = v4;

    sub_10000C518(&unk_1009259C0);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_1007A5A00;
    *(v3 + 56) = sub_100016C60(0, &qword_100922300);
    *(v3 + 32) = v5;
  }

  return v3;
}

id sub_10010659C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TitleHeaderView(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_100106748()
{
  type metadata accessor for TitleHeaderView.Style(319);
  if (v0 <= 0x3F)
  {
    sub_100106D6C(319, &qword_100928850, type metadata accessor for Accessory);
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_1001068C0(uint64_t a1, uint64_t a2, int *a3)
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

  v11 = sub_10000C518(&unk_100940600);
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

  v14 = sub_100747134();
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[10];
    goto LABEL_9;
  }

  v15 = sub_100747144();
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

uint64_t sub_100106A9C(uint64_t a1, uint64_t a2, int a3, int *a4)
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
    v13 = sub_10000C518(&unk_100940600);
    if (*(*(v13 - 8) + 84) == a3)
    {
      v10 = v13;
      v14 = *(v13 - 8);
      v15 = a4[6];
    }

    else
    {
      v16 = sub_100747134();
      if (*(*(v16 - 8) + 84) == a3)
      {
        v10 = v16;
        v14 = *(v16 - 8);
        v15 = a4[10];
      }

      else
      {
        result = sub_100747144();
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

void sub_100106C40()
{
  type metadata accessor for TitleHeaderView.TextConfiguration(319);
  if (v0 <= 0x3F)
  {
    sub_100106D6C(319, &qword_1009288C8, type metadata accessor for TitleHeaderView.TextConfiguration);
    if (v1 <= 0x3F)
    {
      sub_100747134();
      if (v2 <= 0x3F)
      {
        sub_100747144();
        if (v3 <= 0x3F)
        {
          sub_100106DC0();
          if (v4 <= 0x3F)
          {
            sub_100016C60(319, &qword_100923500);
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

void sub_100106D6C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_100754284();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_100106DC0()
{
  if (!qword_1009288D0[0])
  {
    sub_100016C60(255, &qword_100923500);
    v0 = sub_100754284();
    if (!v1)
    {
      atomic_store(v0, qword_1009288D0);
    }
  }
}

uint64_t sub_100106E4C(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_100750534();
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
      v13 = sub_100750B04();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 36);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_100106F84(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = sub_100750534();
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
      v13 = sub_100750B04();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 36);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_1001070A8()
{
  sub_100016C60(319, &qword_100923500);
  if (v0 <= 0x3F)
  {
    sub_1001071A4();
    if (v1 <= 0x3F)
    {
      sub_100750534();
      if (v2 <= 0x3F)
      {
        sub_100750B04();
        if (v3 <= 0x3F)
        {
          sub_1001071F4();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1001071A4()
{
  if (!qword_10092C930)
  {
    v0 = sub_100754284();
    if (!v1)
    {
      atomic_store(v0, &qword_10092C930);
    }
  }
}

unint64_t sub_1001071F4()
{
  result = qword_1009289A0;
  if (!qword_1009289A0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1009289A0);
  }

  return result;
}

unint64_t sub_10010725C()
{
  result = qword_1009289F0;
  if (!qword_1009289F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009289F0);
  }

  return result;
}

id sub_1001072B0(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, double a9, double a10, double a11, double a12, uint64_t a13, int *a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18)
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
  v20 = sub_1007504F4();
  v293 = *(v20 - 8);
  v294 = v20;
  __chkstk_darwin(v20);
  v292 = v285 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v291 = sub_100750304();
  v289 = *(v291 - 8);
  __chkstk_darwin(v291);
  v288 = v285 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v333 = sub_100750B04();
  v348 = *(v333 - 8);
  __chkstk_darwin(v333);
  v290 = v285 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v316 = sub_100747154();
  v314 = *(v316 - 8);
  __chkstk_darwin(v316);
  v315 = v285 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_100747144();
  v311 = *(v25 - 8);
  v312 = v25;
  __chkstk_darwin(v25);
  v313 = v285 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_100747134();
  v308 = *(v27 - 8);
  v309 = v27;
  __chkstk_darwin(v27);
  v310 = v285 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v318 = sub_100747184();
  v321 = *(v318 - 8);
  __chkstk_darwin(v318);
  v317 = v285 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_100747174();
  v31 = *(v30 - 8);
  __chkstk_darwin(v30);
  v300 = v285 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v33);
  v345 = v285 - v34;
  __chkstk_darwin(v35);
  v344 = v285 - v36;
  __chkstk_darwin(v37);
  v336 = v285 - v38;
  v39 = sub_10000C518(&unk_100940600);
  __chkstk_darwin(v39 - 8);
  v298 = v285 - v40;
  v41 = sub_10074CD14();
  v329 = *(v41 - 8);
  v330 = v41;
  __chkstk_darwin(v41);
  v328 = v285 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_100740E74();
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
  v54 = sub_10000C518(&qword_1009289F8);
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
  sub_10010A978(v338, v53, type metadata accessor for TitleHeaderView.TextConfiguration);
  sub_100016C60(0, &qword_100923AB0);
  v77 = sub_100753C14();
  *&v384 = v323;
  *(&v384 + 1) = v332;

  sub_100740E54();
  sub_1000D5C0C();
  sub_1007542C4();
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

  sub_10074F1F4();
  v83 = v333;
  if (v84 && (v85 = [objc_opt_self() configurationWithFont:v77], v86 = sub_100753064(), , v87 = objc_msgSend(objc_opt_self(), "_systemImageNamed:withConfiguration:", v86, v85), v86, v85, v47 = v339, v87))
  {
    [v87 size];
    sub_100750F34();
    swift_allocObject();
    v88 = sub_100750F14();
  }

  else
  {
    v90 = v47[6];
    v91 = sub_100750534();
    v92 = v288;
    (*(*(v91 - 8) + 16))(v288, v76 + v90, v91);
    v93 = v289;
    v94 = v291;
    (*(v289 + 104))(v92, enum case for FontSource.useCase(_:), v291);
    *(&v385 + 1) = v94;
    v386 = &protocol witness table for FontSource;
    v95 = sub_10000D134(&v384);
    (*(v93 + 16))(v95, v92, v94);

    v96 = v290;
    sub_100750B14();
    (*(v93 + 8))(v92, v94);
    sub_100750AF4();
    sub_10074F2A4();
    v97 = v292;
    sub_100750504();
    sub_100750474();

    (*(v293 + 8))(v97, v294);
    (*(v348 + 8))(v96, v83);
    sub_100750F34();
    swift_allocObject();
    v88 = sub_100750F14();
  }

  if (v88)
  {
    *(&v385 + 1) = sub_100750F34();
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
  v98 = sub_10074F3F4();
  v376 = v98;
  v377 = sub_10010AA40(&qword_10092AC70, &type metadata accessor for Feature);
  v99 = sub_10000D134(v375);
  (*(*(v98 - 8) + 104))(v99, enum case for Feature.measurement_with_labelplaceholder(_:), v98);
  v100 = v77;

  v53 = v100;
  sub_10074FC74();
  sub_10000C620(v375);
  v101 = v328;
  sub_10074CD04();
  sub_10074CCE4();
  (*(v329 + 8))(v101, v330);
  sub_100016B4C(&v384, v374, &unk_100928A00);
  v102 = v376;
  v103 = v377;
  v104 = sub_10000C888(v375, v376);
  v372 = v102;
  v373 = *(v103 + 8);
  v105 = sub_10000D134(v371);
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
  v111 = sub_10000D134(v365);
  v112 = *(v348 + 16);
  v112(v111, v107 + v109, v110);
  v113 = v106[10];
  v363 = v110;
  v364 = &protocol witness table for StaticDimension;
  v114 = sub_10000D134(v362);
  v112(v114, v107 + v113, v110);
  sub_100016B4C(&v381, &v356, &qword_10092BC30);
  v115 = *(&v357 + 1);
  if (*(&v357 + 1))
  {
    v116 = v358;
    v117 = sub_10000C888(&v356, *(&v357 + 1));
    *(&v360 + 1) = v115;
    v361 = *(v116 + 8);
    v118 = sub_10000D134(&v359);
    (*(*(v115 - 8) + 16))(v118, v117, v115);
    sub_10000C620(&v356);
  }

  else
  {
    sub_10000C8CC(&v356, &qword_10092BC30);
    v359 = 0u;
    v360 = 0u;
    v361 = 0;
  }

  v119 = v296;
  sub_100016B4C(&v378, v353, &qword_10092BC30);
  v120 = v354;
  v43 = v303;
  if (v354)
  {
    v121 = v355;
    v122 = sub_10000C888(v353, v354);
    *(&v357 + 1) = v120;
    v358 = *(v121 + 8);
    v123 = sub_10000D134(&v356);
    (*(*(v120 - 8) + 16))(v123, v122, v120);
    sub_10000C620(v353);
  }

  else
  {
    sub_10000C8CC(v353, &qword_10092BC30);
    v356 = 0u;
    v357 = 0u;
    v358 = 0;
  }

  v124 = v339;
  v125 = v302;
  sub_10000C824(v302 + v339[12], v353);
  sub_10000C824(v125 + v124[13], v352);
  v351 = &protocol witness table for Double;
  v350 = &type metadata for Double;
  v349 = 0x4020000000000000;
  sub_100747164();

  sub_10000C8CC(&v378, &qword_10092BC30);
  v47 = v124;
  sub_10000C8CC(&v381, &qword_10092BC30);
  sub_10010A9E0(v125, type metadata accessor for TitleHeaderView.TextConfiguration);
  sub_10000C620(v375);

  sub_10000C8CC(&v384, &unk_100928A00);
  v30 = v346;
  v89 = *(v347 + 56);
  v89(v119, 0, 1, v346);
  sub_100066578(v119, v334, &qword_1009289F8);
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
  sub_100016B4C(v338 + v53[6], v298, &unk_100940600);
  if ((*(v297 + 48))(v129, 1, v47) == 1)
  {
    sub_10000C8CC(v129, &unk_100940600);
    v43 = v128;
    goto LABEL_26;
  }

  sub_10010AAF8(v129, v301, type metadata accessor for TitleHeaderView.TextConfiguration);
  sub_100016C60(0, &qword_100923AB0);
  v332 = sub_100753C14();
  *&v384 = v286;
  *(&v384 + 1) = v327;

  v130 = v304;
  sub_100740E54();
  sub_1000D5C0C();
  sub_1007542C4();
  v132 = v131;
  (*(v305 + 8))(v130, v128);

  if (v132)
  {
LABEL_31:
    if (*(v338 + v53[9]) == 2)
    {
      v302 = a14;
      v323 = a13;
      v136 = sub_10074F3F4();
      *(&v385 + 1) = v136;
      v298 = sub_10010AA40(&qword_10092AC70, &type metadata accessor for Feature);
      v386 = v298;
      v137 = sub_10000D134(&v384);
      LODWORD(v297) = enum case for Feature.measurement_with_labelplaceholder(_:);
      v138 = *(*(v136 - 8) + 104);
      v138(v137);
      v139 = v332;

      v140 = v139;
      sub_10074FC74();
      sub_10000C620(&v384);
      v141 = v328;
      sub_10074CD04();
      sub_10074CCE4();
      v332 = v89;
      v142 = v330;
      v143 = *(v329 + 8);
      v143(v141, v330);
      *(&v382 + 1) = v136;
      v383 = v298;
      v144 = sub_10000D134(&v381);
      (v138)(v144, v297, v136);
      v126 = v333;

      v145 = v140;
      v53 = sub_10074FC74();
      sub_10000C620(&v381);
      sub_10074CD04();
      sub_10074CCE4();

      v143(v141, v142);
      v127 = v324;
      sub_10010A9E0(v301, type metadata accessor for TitleHeaderView.TextConfiguration);

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
      v146 = sub_10074F3F4();
      v376 = v146;
      v377 = sub_10010AA40(&qword_10092AC70, &type metadata accessor for Feature);
      v147 = sub_10000D134(v375);
      (*(*(v146 - 8) + 104))(v147, enum case for Feature.measurement_with_labelplaceholder(_:), v146);

      v148 = v332;
      sub_10074FC74();
      sub_10000C620(v375);
      v149 = v328;
      v332 = v148;
      sub_10074CD04();
      sub_10074CCE4();
      (*(v329 + 8))(v149, v330);
      sub_100016B4C(&v384, v374, &unk_100928A00);
      v150 = v376;
      v151 = v377;
      v152 = sub_10000C888(v375, v376);
      v372 = v150;
      v373 = *(v151 + 8);
      v153 = sub_10000D134(v371);
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
      v158 = sub_10000D134(v365);
      v159 = v126;
      v160 = *(v348 + 16);
      v160(v158, v155 + v157, v159);
      v161 = v154[10];
      v363 = v159;
      v364 = &protocol witness table for StaticDimension;
      v162 = sub_10000D134(v362);
      v160(v162, v155 + v161, v159);
      sub_100016B4C(&v381, &v356, &qword_10092BC30);
      v163 = *(&v357 + 1);
      if (*(&v357 + 1))
      {
        v164 = v358;
        v165 = sub_10000C888(&v356, *(&v357 + 1));
        *(&v360 + 1) = v163;
        v361 = *(v164 + 8);
        v166 = sub_10000D134(&v359);
        (*(*(v163 - 8) + 16))(v166, v165, v163);
        sub_10000C620(&v356);
      }

      else
      {
        sub_10000C8CC(&v356, &qword_10092BC30);
        v359 = 0u;
        v360 = 0u;
        v361 = 0;
      }

      v167 = v347;
      sub_100016B4C(&v378, v353, &qword_10092BC30);
      v168 = v354;
      if (v354)
      {
        v169 = v355;
        v170 = sub_10000C888(v353, v354);
        *(&v357 + 1) = v168;
        v358 = *(v169 + 8);
        v171 = sub_10000D134(&v356);
        (*(*(v168 - 8) + 16))(v171, v170, v168);
        sub_10000C620(v353);
      }

      else
      {
        sub_10000C8CC(v353, &qword_10092BC30);
        v356 = 0u;
        v357 = 0u;
        v358 = 0;
      }

      v47 = v339;
      v172 = v301;
      sub_10000C824(v301 + v339[12], v353);
      sub_10000C824(v172 + v47[13], v352);
      v351 = &protocol witness table for Double;
      v350 = &type metadata for Double;
      v349 = 0x4020000000000000;
      v173 = v335;
      sub_100747164();
      sub_10000C8CC(&v378, &qword_10092BC30);
      sub_10000C8CC(&v381, &qword_10092BC30);
      sub_10000C8CC(&v384, &unk_100928A00);
      sub_10010A9E0(v172, type metadata accessor for TitleHeaderView.TextConfiguration);
      sub_10000C620(v375);

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
    sub_10010A978(v324, v337, type metadata accessor for TitleHeaderView.TextConfiguration);
    sub_100016C60(0, &qword_100923AB0);
    v327 = sub_100753C14();
    if (!v127)
    {
      goto LABEL_49;
    }

    v175 = v126;
    v44 = v322;
    *&v378 = v322;
    *(&v378 + 1) = v127;

    v46 = v304;
    sub_100740E54();
    sub_1000D5C0C();
    sub_1007542C4();
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

      sub_10074F1F4();
      if (v180 && (v181 = [objc_opt_self() configurationWithFont:v327], v182 = sub_100753064(), , v183 = objc_msgSend(objc_opt_self(), "_systemImageNamed:withConfiguration:", v182, v181), v182, v47 = v339, v181, v183))
      {
        [v183 size];
        sub_100750F34();
        swift_allocObject();
        v184 = sub_100750F14();
      }

      else
      {
        v185 = v126;
        v186 = v324;
        v187 = v47[6];
        v188 = sub_100750534();
        v189 = v186 + v187;
        v126 = v185;
        v190 = v288;
        (*(*(v188 - 8) + 16))(v288, v189, v188);
        v191 = v289;
        v192 = v291;
        (*(v289 + 104))(v190, enum case for FontSource.useCase(_:), v291);
        *(&v379 + 1) = v192;
        v380 = &protocol witness table for FontSource;
        v193 = sub_10000D134(&v378);
        (*(v191 + 16))(v193, v190, v192);

        v194 = v290;
        sub_100750B14();
        (*(v191 + 8))(v190, v192);
        sub_100750AF4();
        sub_10074F2A4();
        v195 = v292;
        sub_100750504();
        sub_100750474();

        (*(v293 + 8))(v195, v294);
        (*(v348 + 8))(v194, v126);
        sub_100750F34();
        swift_allocObject();
        v184 = sub_100750F14();
      }

      if (v184)
      {
        v196 = sub_100750F34();
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

      v197 = sub_10074F3F4();
      v376 = v197;
      v377 = sub_10010AA40(&qword_10092AC70, &type metadata accessor for Feature);
      v198 = sub_10000D134(v375);
      (*(*(v197 - 8) + 104))(v198, enum case for Feature.measurement_with_labelplaceholder(_:), v197);

      v199 = v327;
      sub_10074FC74();
      sub_10000C620(v375);
      v200 = v328;
      v327 = v199;
      sub_10074CD04();
      sub_10074CCE4();
      (*(v329 + 8))(v200, v330);
      sub_100016B4C(&v378, v374, &unk_100928A00);
      v201 = v376;
      v202 = v377;
      v203 = sub_10000C888(v375, v376);
      v372 = v201;
      v373 = *(v202 + 8);
      v204 = sub_10000D134(v371);
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
      v209 = sub_10000D134(v365);
      v210 = *(v348 + 16);
      v210(v209, v206 + v208, v126);
      v211 = v205[10];
      v363 = v126;
      v364 = &protocol witness table for StaticDimension;
      v212 = sub_10000D134(v362);
      v210(v212, v206 + v211, v126);
      sub_100016B4C(&v384, &v356, &qword_10092BC30);
      v213 = *(&v357 + 1);
      if (*(&v357 + 1))
      {
        v214 = v358;
        v215 = sub_10000C888(&v356, *(&v357 + 1));
        *(&v360 + 1) = v213;
        v361 = *(v214 + 8);
        v216 = sub_10000D134(&v359);
        (*(*(v213 - 8) + 16))(v216, v215, v213);
        sub_10000C620(&v356);
      }

      else
      {
        sub_10000C8CC(&v356, &qword_10092BC30);
        v359 = 0u;
        v360 = 0u;
        v361 = 0;
      }

      v217 = v340;
      v218 = v338;
      sub_100016B4C(&v381, v353, &qword_10092BC30);
      v219 = v354;
      if (v354)
      {
        v220 = v355;
        v221 = sub_10000C888(v353, v354);
        *(&v357 + 1) = v219;
        v358 = *(v220 + 8);
        v222 = sub_10000D134(&v356);
        (*(*(v219 - 8) + 16))(v222, v221, v219);
        sub_10000C620(v353);
      }

      else
      {
        sub_10000C8CC(v353, &qword_10092BC30);
        v356 = 0u;
        v357 = 0u;
        v358 = 0;
      }

      v223 = v341;
      v224 = v339;
      v225 = v337;
      sub_10000C824(v337 + v339[12], v353);
      sub_10000C824(v225 + v224[13], v352);
      v351 = &protocol witness table for Double;
      v350 = &type metadata for Double;
      v349 = 0x4020000000000000;
      sub_100747164();
      sub_10000C620(v375);
      sub_10000C8CC(&v378, &unk_100928A00);
      v226 = *(v218 + v332[9]);
      sub_10000C518(&qword_100928A10);
      v348 = *(v307 + 72);
      v227 = (*(v307 + 80) + 32) & ~*(v307 + 80);
      if (v226)
      {
        if (v226 != 1)
        {
          v255 = v348;
          v333 = swift_allocObject();
          v256 = v333 + v227;
          sub_100016B4C(v334, v333 + v227, &qword_1009289F8);
          v257 = v346;
          v258 = v347;
          (*(v347 + 16))(v256 + v255, v336, v346);
          (*(v258 + 56))(v256 + v255, 0, 1, v257);
          v259 = v299;
          sub_100016B4C(v256, v299, &qword_1009289F8);
          v260 = v287;
          sub_100066578(v259, v287, &qword_1009289F8);
          v261 = *(v258 + 48);
          v262 = (v258 + 32);
          v263 = v261(v260, 1, v257);
          v345 = (v258 + 32);
          if (v263 == 1)
          {
            sub_10000C8CC(v260, &qword_1009289F8);
            v264 = _swiftEmptyArrayStorage;
          }

          else
          {
            v265 = *v262;
            (*v262)(v300, v260, v257);
            v264 = _swiftEmptyArrayStorage;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v264 = sub_100255918(0, _swiftEmptyArrayStorage[2] + 1, 1, _swiftEmptyArrayStorage);
            }

            v267 = *(v264 + 2);
            v266 = *(v264 + 3);
            if (v267 >= v266 >> 1)
            {
              v264 = sub_100255918(v266 > 1, v267 + 1, 1, v264);
            }

            *(v264 + 2) = v267 + 1;
            v268 = &v264[((*(v347 + 80) + 32) & ~*(v347 + 80)) + *(v347 + 72) * v267];
            v257 = v346;
            v265(v268, v300, v346);
            v260 = v287;
          }

          v269 = v299;
          sub_100016B4C(v256 + v348, v299, &qword_1009289F8);
          sub_100066578(v269, v260, &qword_1009289F8);
          if (v261(v260, 1, v257) == 1)
          {
            sub_10000C8CC(v260, &qword_1009289F8);
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
              v264 = sub_100255918(0, *(v264 + 2) + 1, 1, v264);
            }

            v53 = v334;
            v274 = *(v264 + 2);
            v273 = *(v264 + 3);
            if (v274 >= v273 >> 1)
            {
              v264 = sub_100255918(v273 > 1, v274 + 1, 1, v264);
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
            v276 = sub_100750F34();
            swift_allocObject();
            v275 = sub_100750F14();
            v277 = &protocol witness table for LayoutViewPlaceholder;
          }

          *&v378 = v275;
          *(&v379 + 1) = v276;
          v380 = v277;
          sub_100016B4C(&v378, v375, &unk_100928A00);
          v278 = v332;
          v279 = *(v254 + v332[14]);
          v374[3] = &type metadata for CGFloat;
          v374[4] = &protocol witness table for CGFloat;
          v374[0] = v279;
          (*(v308 + 16))(v310, v254 + v332[10], v309);
          (*(v311 + 16))(v313, v254 + v278[11], v312);
          (*(v314 + 104))(v315, enum case for TitleHeaderLayout.AccessoryHorizontalAlignment.rightJustified(_:), v316);
          sub_100747104();
          sub_100753BA4();
          sub_10010AA40(&qword_100928A18, &type metadata accessor for TitleHeaderLayout);
          v44 = v318;
          sub_100750404();
          v375[0] = v280;
          v375[1] = v281;
          sub_100753BB4();
          if (JUScreenClassGetMain() != 1)
          {

            (*(v321 + 8))(v43, v44);
            (*(v347 + 8))(v336, v346);
            sub_10010A9E0(v337, type metadata accessor for TitleHeaderView.TextConfiguration);
            sub_10000C8CC(&v381, &qword_10092BC30);
            sub_10000C8CC(&v384, &qword_10092BC30);
            sub_10000C8CC(v335, &qword_1009289F8);
            sub_10000C8CC(v53, &qword_1009289F8);
            return sub_10000C8CC(&v378, &unk_100928A00);
          }

          v282 = v346;
          v47 = v347;
          v46 = v331;
          if (qword_100920AD0 != -1)
          {
            swift_once();
          }

          v283 = sub_10000D0FC(v339, qword_10097FF28);
          if (sub_10010A2FC(v324, v283))
          {

            (*(v321 + 8))(v43, v44);
            (*(v47 + 1))(v336, v282);
            sub_10010A9E0(v337, type metadata accessor for TitleHeaderView.TextConfiguration);
            sub_10000C8CC(&v381, &qword_10092BC30);
            sub_10000C8CC(&v384, &qword_10092BC30);
            sub_10000C8CC(v335, &qword_1009289F8);
            sub_10000C8CC(v53, &qword_1009289F8);
            return sub_10000C8CC(&v378, &unk_100928A00);
          }

          if (qword_100920AD8 == -1)
          {
LABEL_111:
            v284 = sub_10000D0FC(v339, qword_10097FF40);
            sub_10010A2FC(v324, v284);

            (*(v321 + 8))(v43, v44);
            (*(v47 + 1))(v336, v346);
            sub_10010A9E0(v337, type metadata accessor for TitleHeaderView.TextConfiguration);
            sub_10000C8CC(&v381, &qword_10092BC30);
            sub_10000C8CC(&v384, &qword_10092BC30);
            sub_10000C8CC(v335, &qword_1009289F8);
            sub_10000C8CC(v53, &qword_1009289F8);
            return sub_10000C8CC(&v378, &unk_100928A00);
          }

LABEL_119:
          swift_once();
          goto LABEL_111;
        }

        v228 = v348;
        v333 = swift_allocObject();
        v229 = v333 + v227;
        sub_100016B4C(v334, v333 + v227, &qword_1009289F8);
        v231 = v346;
        v230 = v347;
        (*(v347 + 16))(v229 + v228, v336, v346);
        v232 = *(v230 + 56);
        v230 += 56;
        v232(v229 + v228, 0, 1, v231);
        sub_100016B4C(v335, v229 + 2 * v228, &qword_1009289F8);
        v233 = (v230 - 8);
        v344 = (v230 - 24);
        v234 = v231;
        v235 = _swiftEmptyArrayStorage;
        v236 = 3;
        v342 = v229;
        do
        {
          v237 = v343;
          sub_100016B4C(v229, v343, &qword_1009289F8);
          sub_100066578(v237, v223, &qword_1009289F8);
          if ((*v233)(v223, 1, v234) == 1)
          {
            sub_10000C8CC(v223, &qword_1009289F8);
          }

          else
          {
            v238 = *v344;
            (*v344)(v345, v223, v234);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v235 = sub_100255918(0, *(v235 + 2) + 1, 1, v235);
            }

            v240 = *(v235 + 2);
            v239 = *(v235 + 3);
            if (v240 >= v239 >> 1)
            {
              v235 = sub_100255918(v239 > 1, v240 + 1, 1, v235);
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
        sub_100016B4C(v334, v333 + v227, &qword_1009289F8);
        sub_100016B4C(v335, v244 + v241, &qword_1009289F8);
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
          sub_100016B4C(v244, v342, &qword_1009289F8);
          sub_100066578(v250, v217, &qword_1009289F8);
          if ((*v246)(v217, 1, v247) == 1)
          {
            sub_10000C8CC(v217, &qword_1009289F8);
          }

          else
          {
            v251 = *v345;
            (*v345)(v344, v217, v247);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v248 = sub_100255918(0, *(v248 + 2) + 1, 1, v248);
            }

            v253 = *(v248 + 2);
            v252 = *(v248 + 3);
            if (v253 >= v252 >> 1)
            {
              v248 = sub_100255918(v252 > 1, v253 + 1, 1, v248);
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

BOOL sub_10010A2FC(uint64_t a1, uint64_t a2)
{
  sub_100016C60(0, &qword_1009327F0);
  if ((sub_100753FC4() & 1) == 0)
  {
    return 0;
  }

  v4 = *(a1 + 16);
  v5 = *(a2 + 16);
  if (v4)
  {
    if (!v5 || (*(a1 + 8) != *(a2 + 8) || v4 != v5) && (sub_100754754() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  v6 = type metadata accessor for TitleHeaderView.TextConfiguration(0);
  if (sub_100750524() & 1) != 0 && *(a1 + v6[7]) == *(a2 + v6[7]) && *(a1 + v6[8]) == *(a2 + v6[8]) && (sub_100750AC4() & 1) != 0 && (sub_100750AC4())
  {
    return *(a1 + v6[11]) == *(a2 + v6[11]);
  }

  return 0;
}

BOOL sub_10010A41C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TitleHeaderView.TextConfiguration(0);
  v5 = *(v4 - 1);
  __chkstk_darwin(v4);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10000C518(&unk_100940600);
  __chkstk_darwin(v8 - 8);
  v10 = &v30 - v9;
  v11 = sub_10000C518(&qword_100928A30);
  __chkstk_darwin(v11);
  v13 = &v30 - v12;
  sub_100016C60(0, &qword_1009327F0);
  if ((sub_100753FC4() & 1) == 0)
  {
    return 0;
  }

  v14 = *(a1 + 16);
  v15 = *(a2 + 16);
  if (v14)
  {
    if (!v15 || (*(a1 + 8) != *(a2 + 8) || v14 != v15) && (sub_100754754() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v15)
  {
    return 0;
  }

  if ((sub_100750524() & 1) == 0)
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

  if ((sub_100750AC4() & 1) == 0)
  {
    return 0;
  }

  if ((sub_100750AC4() & 1) == 0)
  {
    return 0;
  }

  if (*(a1 + v4[11]) != *(a2 + v4[11]))
  {
    return 0;
  }

  v16 = type metadata accessor for TitleHeaderView.Style(0);
  if (!sub_10010A2FC(a1 + *(v16 + 20), a2 + *(v16 + 20)))
  {
    return 0;
  }

  v30 = v16;
  v17 = *(v16 + 24);
  v18 = *(v11 + 48);
  sub_100016B4C(a1 + v17, v13, &unk_100940600);
  v31 = v18;
  sub_100016B4C(a2 + v17, &v13[v18], &unk_100940600);
  v19 = *(v5 + 48);
  if (v19(v13, 1, v4) != 1)
  {
    sub_100016B4C(v13, v10, &unk_100940600);
    v20 = v31;
    if (v19(&v13[v31], 1, v4) != 1)
    {
      sub_10010AAF8(&v13[v20], v7, type metadata accessor for TitleHeaderView.TextConfiguration);
      v21 = sub_10010A2FC(v10, v7);
      sub_10010A9E0(v7, type metadata accessor for TitleHeaderView.TextConfiguration);
      sub_10010A9E0(v10, type metadata accessor for TitleHeaderView.TextConfiguration);
      sub_10000C8CC(v13, &unk_100940600);
      if (!v21)
      {
        return 0;
      }

      goto LABEL_23;
    }

    sub_10010A9E0(v10, type metadata accessor for TitleHeaderView.TextConfiguration);
LABEL_21:
    sub_10000C8CC(v13, &qword_100928A30);
    return 0;
  }

  if (v19(&v13[v31], 1, v4) != 1)
  {
    goto LABEL_21;
  }

  sub_10000C8CC(v13, &unk_100940600);
LABEL_23:
  v22 = v30;
  if (*(a1 + v30[7]) != *(a2 + v30[7]) || *(a1 + v30[8]) != *(a2 + v30[8]) || *(a1 + v30[9]) != *(a2 + v30[9]) || (sub_100747124() & 1) == 0)
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

    sub_100016C60(0, &qword_100923500);
    v26 = v25;
    v27 = v24;
    v28 = sub_100753FC4();

    if ((v28 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v25)
  {
    return 0;
  }

  if (sub_100753FC4())
  {
    sub_100747144();
    sub_10010AA40(&qword_100928A38, &type metadata accessor for TitleHeaderLayout.ChildrenHorizontalAlignment);
    sub_100753274();
    sub_100753274();
    return v33 == v32;
  }

  return 0;
}

uint64_t sub_10010A978(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10010A9E0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10010AA40(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10010AA88(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C518(&qword_10093FDB0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10010AAF8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10010AB60(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TitleHeaderView.Style(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

unint64_t sub_10010ABC4()
{
  result = qword_10092FA00;
  if (!qword_10092FA00)
  {
    sub_10000C724(&unk_100928A70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10092FA00);
  }

  return result;
}

void sub_10010AC28()
{
  v1 = (v0 + OBJC_IVAR____TtC22SubscribePageExtension15TitleHeaderView_eyebrowText);
  *v1 = 0;
  v1[1] = 0;
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension15TitleHeaderView_eyebrowLabel) = 0;
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension15TitleHeaderView_eyebrowArtwork) = 0;
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension15TitleHeaderView_eyebrowArtworkView) = 0;
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension15TitleHeaderView_titleArtwork) = 0;
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension15TitleHeaderView_titleArtworkView) = 0;
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension15TitleHeaderView_detailLabel) = 0;
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension15TitleHeaderView_shortDetailLabel) = 0;
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension15TitleHeaderView_accessoryView) = 0;
  v2 = OBJC_IVAR____TtC22SubscribePageExtension15TitleHeaderView_accessory;
  v3 = type metadata accessor for Accessory();
  (*(*(v3 - 8) + 56))(v0 + v2, 1, 1, v3);
  v4 = (v0 + OBJC_IVAR____TtC22SubscribePageExtension15TitleHeaderView_accessoryAction);
  *v4 = 0;
  v4[1] = 0;
  v5 = (v0 + OBJC_IVAR____TtC22SubscribePageExtension15TitleHeaderView_separatorInset);
  v6 = *&UIEdgeInsetsZero.bottom;
  *v5 = *&UIEdgeInsetsZero.top;
  v5[1] = v6;
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension15TitleHeaderView_allowsAccessibilityLayouts) = 1;
  sub_100754644();
  __break(1u);
}

uint64_t type metadata accessor for HeaderButton()
{
  result = qword_100928AC8;
  if (!qword_100928AC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10010AE1C()
{
  v0 = sub_100750534();
  sub_100039C50(v0, qword_100928AA0);
  v1 = sub_10000D0FC(v0, qword_100928AA0);
  if (qword_100920EA0 != -1)
  {
    swift_once();
  }

  v2 = sub_10000D0FC(v0, qword_100980930);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_10010AEE4()
{
  v0 = sub_100750534();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for HeaderButton();
  if (qword_100920298 != -1)
  {
    swift_once();
  }

  v4 = sub_10000D0FC(v0, qword_100928AA0);
  (*(v1 + 16))(v3, v4, v0);
  result = sub_1007466B4();
  qword_100928AB8 = result;
  return result;
}

uint64_t sub_10010B000()
{
  v0 = sub_100750534();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();
  if (qword_100920298 != -1)
  {
    swift_once();
  }

  v4 = sub_10000D0FC(v0, qword_100928AA0);
  (*(v1 + 16))(v3, v4, v0);
  v5 = sub_1007466B4();
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v5;
}

id sub_10010B144(void *a1)
{
  v2 = v1;
  v13.receiver = v1;
  v13.super_class = type metadata accessor for HeaderButton();
  objc_msgSendSuper2(&v13, "traitCollectionDidChange:", a1);
  v4 = [v1 traitCollection];
  v5 = [v4 layoutDirection];

  if (!a1 || (result = [a1 layoutDirection], v5 != result))
  {
    v7 = *&v2[qword_100928AC0];
    v8 = [v2 traitCollection];
    v9 = sub_1007537F4();

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

void sub_10010B278(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = a1;
  sub_10010B144(a3);
}

id sub_10010B2E4(char *a1, double a2, double a3, double a4, double a5)
{
  *&a1[qword_100928AC0] = 0;
  v10.receiver = a1;
  v10.super_class = type metadata accessor for HeaderButton();
  return objc_msgSendSuper2(&v10, "initWithFrame:", a2, a3, a4, a5);
}

id sub_10010B364()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HeaderButton();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10010B3A8(uint64_t a1)
{
  v2 = sub_100750304();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v10[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100750534();
  (*(*(v6 - 8) + 16))(v5, a1, v6);
  (*(v3 + 104))(v5, enum case for FontSource.useCase(_:), v2);
  v10[3] = v2;
  v10[4] = &protocol witness table for FontSource;
  v7 = sub_10000D134(v10);
  (*(v3 + 16))(v7, v5, v2);
  sub_10074FC54();
  (*(v3 + 8))(v5, v2);
  sub_10000C620(v10);
  return JUScreenClassGetMain();
}

char *sub_10010B548(uint64_t a1, uint64_t a2)
{
  v5 = OBJC_IVAR____TtC22SubscribePageExtension42ArcadeDownloadPackCategoriesViewController_pageView;
  type metadata accessor for ArcadeDownloadPackCategoriesPageView();
  *&v2[v5] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v6 = OBJC_IVAR____TtC22SubscribePageExtension42ArcadeDownloadPackCategoriesViewController_continueButton;
  *&v2[v6] = [objc_opt_self() boldButton];
  v7 = OBJC_IVAR____TtC22SubscribePageExtension42ArcadeDownloadPackCategoriesViewController_skipButton;
  *&v2[v7] = [objc_opt_self() linkButton];
  *&v2[OBJC_IVAR____TtC22SubscribePageExtension42ArcadeDownloadPackCategoriesViewController_presenter] = a1;
  v8 = *&v2[v5];
  swift_retain_n();
  v9 = v8;

  v10 = sub_100167D8C(a1, v9, a2, v2);
  sub_10010BF38(&qword_100928B70);
  v11 = v10;

  sub_10074E114();

  [*&v11[OBJC_IVAR____TtC22SubscribePageExtension42ArcadeDownloadPackCategoriesViewController_continueButton] addTarget:v11 action:"didTapContinueButton" forControlEvents:64];
  [*&v11[OBJC_IVAR____TtC22SubscribePageExtension42ArcadeDownloadPackCategoriesViewController_skipButton] addTarget:v11 action:"didTapSkipButton" forControlEvents:64];

  return v11;
}

void sub_10010B87C(uint64_t a1)
{
  v2 = v1;
  sub_1007442C4();
  sub_100752764();
  sub_100752D34();
  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_1000B281C(a1, v17, sub_10010BF30, v4);

  v5 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension42ArcadeDownloadPackCategoriesViewController_continueButton];
  sub_10074D504();
  sub_10074ECB4();
  v7 = v6;

  if (v7)
  {
    v8 = sub_100753064();
  }

  else
  {
    v8 = 0;
  }

  [v5 setTitle:v8 forState:0];

  v9 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension42ArcadeDownloadPackCategoriesViewController_skipButton];
  sub_10074D4F4();
  sub_10074ECB4();
  v11 = v10;

  if (v11)
  {
    v12 = sub_100753064();
  }

  else
  {
    v12 = 0;
  }

  [v9 setTitle:v12 forState:0];

  v13 = sub_100753064();
  [v5 setAccessibilityIdentifier:v13];

  v14 = sub_100753064();
  [v9 setAccessibilityIdentifier:v14];

  v15 = [v2 buttonTray];
  [v15 addButton:v5];

  v16 = [v2 buttonTray];
  [v16 addButton:v9];

  sub_10019B200();
}

uint64_t sub_10010BB1C()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;

    sub_10074E124();
  }

  return result;
}

id sub_10010BB9C()
{
  v1 = [v0 buttonTray];
  sub_10074E674();
  v2 = sub_100753064();

  [v1 setCaptionText:v2 style:2];

  v3 = sub_10074E694();
  sub_1004B1408(v3 & 1);
  v4 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension42ArcadeDownloadPackCategoriesViewController_continueButton];
  v5 = sub_10074E684() & 1;

  return [v4 setEnabled:v5];
}

uint64_t sub_10010BC84()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension32ArcadeDownloadPackViewController_objectGraph];
  sub_10074E1F4();
  swift_allocObject();
  swift_retain_n();

  sub_10074E1A4();
  v3 = objc_allocWithZone(type metadata accessor for ArcadeDownloadPackSuggestionsViewController());

  v5 = sub_100166A64(v4, v2);
  v6 = [v1 navigationController];
  if (v6)
  {
    v7 = v6;
    [v6 pushViewController:v5 animated:1];
  }
}

void sub_10010BD94()
{

  v1 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension42ArcadeDownloadPackCategoriesViewController_skipButton);
}

uint64_t sub_10010BEF8()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10010BF38(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ArcadeDownloadPackCategoriesViewController();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t AppPromotionFormattedDateLayout.Metrics.textTopSpace.setter(__int128 *a1)
{
  sub_10000C620(v1);

  return sub_100012160(a1, v1);
}

uint64_t AppEventCardLayout.Metrics.artworkAspectRatio.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AppEventCardLayout.Metrics(0) + 20);
  v4 = sub_1007504F4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AppEventCardLayout.Metrics.artworkAspectRatio.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AppEventCardLayout.Metrics(0) + 20);
  v4 = sub_1007504F4();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AppEventCardLayout.Metrics.notifyMePadding.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for AppEventCardLayout.Metrics(0) + 24);
  sub_10000C620(v1 + v3);

  return sub_100012160(a1, v1 + v3);
}

uint64_t AppEventCardLayout.Metrics.kindTopSpace.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for AppEventCardLayout.Metrics(0) + 28);
  sub_10000C620(v1 + v3);

  return sub_100012160(a1, v1 + v3);
}

uint64_t AppEventCardLayout.Metrics.titleTopSpace.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for AppEventCardLayout.Metrics(0) + 32);
  sub_10000C620(v1 + v3);

  return sub_100012160(a1, v1 + v3);
}

uint64_t AppEventCardLayout.Metrics.subtitleTopSpace.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for AppEventCardLayout.Metrics(0) + 36);
  sub_10000C620(v1 + v3);

  return sub_100012160(a1, v1 + v3);
}

uint64_t AppEventCardLayout.Metrics.textBottomSpace.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for AppEventCardLayout.Metrics(0) + 40);
  sub_10000C620(v1 + v3);

  return sub_100012160(a1, v1 + v3);
}

uint64_t AppEventCardLayout.Metrics.init(contentHorizontalMargin:artworkAspectRatio:notifyMePadding:kindTopSpace:titleTopSpace:subtitleTopSpace:textBottomSpace:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, __int128 *a4@<X3>, __int128 *a5@<X4>, __int128 *a6@<X5>, __int128 *a7@<X6>, uint64_t a8@<X8>)
{
  sub_100012160(a1, a8);
  v15 = type metadata accessor for AppEventCardLayout.Metrics(0);
  v16 = v15[5];
  v17 = sub_1007504F4();
  (*(*(v17 - 8) + 32))(a8 + v16, a2, v17);
  sub_100012160(a3, a8 + v15[6]);
  sub_100012160(a4, a8 + v15[7]);
  sub_100012160(a5, a8 + v15[8]);
  sub_100012160(a6, a8 + v15[9]);
  v18 = a8 + v15[10];

  return sub_100012160(a7, v18);
}

uint64_t sub_10010C610(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppEventCardLayout.Metrics(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

__n128 AppEventCardLayout.init(metrics:shadowView:contentView:borderView:mediaContentView:artworkView:videoView:gradientBlurView:notifyMeButton:kindLabel:titleLabel:subtitleLabel:separatorView:lockupContainerView:lockupView:)@<Q0>(uint64_t a1@<X0>, __int128 *a2@<X1>, __int128 *a3@<X2>, __int128 *a4@<X3>, __int128 *a5@<X4>, __int128 *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, __int128 *a11, __int128 *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  sub_10010CC50(a1, a9);
  v22 = type metadata accessor for AppEventCardLayout(0);
  sub_100012160(a2, a9 + v22[5]);
  sub_100012160(a3, a9 + v22[6]);
  sub_100012160(a4, a9 + v22[7]);
  sub_100012160(a5, a9 + v22[8]);
  sub_100012160(a6, a9 + v22[9]);
  v23 = a9 + v22[10];
  v24 = *(a7 + 16);
  *v23 = *a7;
  *(v23 + 16) = v24;
  *(v23 + 32) = *(a7 + 32);
  v25 = a9 + v22[11];
  v26 = *(a8 + 16);
  *v25 = *a8;
  *(v25 + 16) = v26;
  *(v25 + 32) = *(a8 + 32);
  v27 = a9 + v22[12];
  v28 = *(a10 + 16);
  *v27 = *a10;
  *(v27 + 16) = v28;
  *(v27 + 32) = *(a10 + 32);
  sub_100012160(a11, a9 + v22[13]);
  sub_100012160(a12, a9 + v22[14]);
  v29 = a9 + v22[15];
  v30 = *(a13 + 16);
  *v29 = *a13;
  *(v29 + 16) = v30;
  *(v29 + 32) = *(a13 + 32);
  v31 = a9 + v22[16];
  v32 = *(a14 + 16);
  *v31 = *a14;
  *(v31 + 16) = v32;
  *(v31 + 32) = *(a14 + 32);
  v33 = a9 + v22[17];
  v34 = *(a15 + 16);
  *v33 = *a15;
  *(v33 + 16) = v34;
  *(v33 + 32) = *(a15 + 32);
  v35 = a9 + v22[18];
  result = *a16;
  v37 = *(a16 + 16);
  *v35 = *a16;
  *(v35 + 16) = v37;
  *(v35 + 32) = *(a16 + 32);
  return result;
}

uint64_t sub_10010CC50(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppEventCardLayout.Metrics(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void static AppEventCardLayout.estimatedMeasurementsNonAXLayout(fitting:using:shelfItems:asPartOf:in:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  ObjectType = swift_getObjectType();

  sub_10010F91C(a1, a2, a3, a4, ObjectType);
}

void AppEventCardLayout.measurements(fitting:in:)(void *a1)
{
  ObjectType = swift_getObjectType();

  sub_10010E438(a1, v1, ObjectType);
}

uint64_t static AppPromotionCardLayout.prefersAccessibilityLayout(with:)(void *a1)
{
  v1 = [a1 preferredContentSizeCategory];
  v2 = sub_100753954();

  return v2 & 1;
}

uint64_t AppEventCardLayout.placeChildren(relativeTo:in:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>, CGFloat a3@<D0>, CGFloat a4@<D1>, CGFloat a5@<D2>, CGFloat a6@<D3>)
{
  v7 = v6;
  v145 = a2;
  v142 = COERCE_DOUBLE(sub_100747064());
  v141 = *(*&v142 - 8);
  __chkstk_darwin(*&v142);
  v139 = &v132 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100754724();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v132 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for AppEventCardLayout(0);
  sub_10000C888((v6 + v18[5]), *(v6 + v18[5] + 24));
  sub_100750394();
  sub_10000C888((v7 + v18[6]), *(v7 + v18[6] + 24));
  sub_100750394();
  sub_10000C888((v7 + v18[7]), *(v7 + v18[7] + 24));
  sub_100750394();
  sub_10000C888(v7, v7[3]);
  sub_100536120();
  sub_100750564();
  v146 = v19;
  v147 = *(v15 + 8);
  (*&v147)(v17, v14);
  v20 = type metadata accessor for AppEventCardLayout.Metrics(0);
  v158.origin.x = 0.0;
  v158.origin.y = 0.0;
  v158.size.width = a5;
  v158.size.height = a6;
  CGRectGetWidth(v158);
  sub_1007504C4();
  Height = round(v21);
  v159.origin.x = 0.0;
  v159.origin.y = 0.0;
  v159.size.width = a5;
  v151 = a6;
  v159.size.height = a6;
  if (vabdd_f64(Height, CGRectGetHeight(v159)) < 1.0)
  {
    v160.origin.x = 0.0;
    v160.origin.y = 0.0;
    v160.size.width = a5;
    v160.size.height = v151;
    Height = CGRectGetHeight(v160);
  }

  v161.origin.x = 0.0;
  v161.origin.y = 0.0;
  v161.size.width = a5;
  v161.size.height = v151;
  Width = CGRectGetWidth(v161);
  sub_10000C888((v6 + v18[8]), *(v6 + v18[8] + 24));
  sub_100753B24();
  sub_100750394();
  v162.origin.x = 0.0;
  v162.origin.y = 0.0;
  v162.size.width = Width;
  v162.size.height = Height;
  v24 = CGRectGetWidth(v162);
  sub_10000C888((v6 + v18[9]), *(v6 + v18[9] + 24));
  sub_100753B24();
  sub_100750394();
  sub_100016B4C(v6 + v18[10], v156, &unk_100928A00);
  if (v157)
  {
    sub_10000C888(v156, v157);
    sub_100750394();
    sub_10000C620(v156);
  }

  else
  {
    sub_10000C8CC(v156, &unk_100928A00);
  }

  sub_100016B4C(v6 + v18[11], v156, &unk_100928A00);
  if (v157)
  {
    sub_10000C888(v156, v157);
    sub_100750394();
    sub_10000C620(v156);
  }

  else
  {
    sub_10000C8CC(v156, &unk_100928A00);
  }

  sub_100016B4C(v6 + v18[17], &v154, &unk_100928A00);
  v148 = a4;
  v149 = a3;
  if (!v155)
  {
    sub_10000C8CC(&v154, &unk_100928A00);
LABEL_17:
    LODWORD(v141) = 1;
    MinX = 0.0;
    v137 = 0.0;
    v136 = 0.0;
    v138 = 0.0;
    goto LABEL_18;
  }

  sub_100012160(&v154, v156);
  sub_10000C888(v156, v157);
  if (sub_1007503A4())
  {
LABEL_16:
    sub_10000C620(v156);
    goto LABEL_17;
  }

  sub_100016B4C(v6 + v18[18], &v152, &unk_100928A00);
  if (!v153)
  {
    sub_10000C8CC(&v152, &unk_100928A00);
    goto LABEL_16;
  }

  sub_100012160(&v152, &v154);
  sub_10000C888(&v154, v155);
  if (sub_1007503A4())
  {
    sub_10000C620(&v154);
    goto LABEL_16;
  }

  MaxY = v24;
  v109 = sub_10010FD98(0.0, 0.0, a5, v151, 0.0, v146);
  v111 = v110;
  v138 = v112;
  v134 = v113;
  MinX = COERCE_DOUBLE(swift_getObjectType());
  v114 = [a1 traitCollection];
  v115 = [v114 preferredContentSizeCategory];
  v137 = *&UIContentSizeCategoryExtraExtraExtraLarge;
  v116 = sub_100753954();

  v144 = Height;
  v135 = Width;
  v133 = v20;
  if (v116)
  {
    if (qword_100920450 != -1)
    {
      swift_once();
    }

    v117 = qword_10097E0C0;
  }

  else
  {
    if (qword_100920448 != -1)
    {
      swift_once();
    }

    v117 = qword_10097E0A8;
  }

  v118 = v142;
  v119 = sub_10000D0FC(*&v142, v117);
  v120 = v139;
  (*(*&v141 + 16))(v139, v119, COERCE_DOUBLE(*&v118));
  v121 = [a1 traitCollection];
  v122 = [v121 preferredContentSizeCategory];
  sub_100753954();

  type metadata accessor for SmallLockupView();
  v123 = v138;
  v124 = v134;
  sub_1001CF184(v120, a1);
  v126 = ceil(v125);
  v181.origin.x = 0.0;
  v181.origin.y = 0.0;
  v181.size.width = a5;
  v127 = v151;
  v181.size.height = v151;
  MinX = CGRectGetMinX(v181);
  v182.origin.x = v109;
  v182.origin.y = v111;
  v182.size.width = v123;
  v182.size.height = v124;
  v128 = v111;
  v129 = v109;
  v130 = CGRectGetHeight(v182) - v126;
  v183.origin.x = 0.0;
  v183.origin.y = 0.0;
  v183.size.width = a5;
  v183.size.height = v127;
  v131 = CGRectGetWidth(v183);
  sub_10000C888(v156, v157);
  v137 = v130;
  v136 = v131;
  sub_100750394();
  v184.origin.x = v129;
  v184.origin.y = v128;
  v184.size.width = v123;
  v184.size.height = v124;
  v132 = CGRectGetMinX(v184);
  v185.origin.x = v129;
  v185.origin.y = v128;
  v185.size.width = v123;
  v185.size.height = v124;
  CGRectGetMinY(v185);
  v186.origin.x = v129;
  v186.origin.y = v128;
  v186.size.width = v123;
  v186.size.height = v124;
  CGRectGetWidth(v186);
  sub_10000C888(&v154, v155);
  v138 = v126;
  sub_100750394();
  (*(*&v141 + 8))(v120, COERCE_DOUBLE(*&v142));
  sub_10000C620(&v154);
  sub_10000C620(v156);
  LODWORD(v141) = 0;
  Height = v144;
  Width = v135;
  v24 = MaxY;
  a4 = v148;
  a3 = v149;
  v20 = v133;
LABEL_18:
  sub_100016B4C(v7 + v18[12], &v154, &unk_100928A00);
  v150 = a5;
  if (v155)
  {
    sub_100012160(&v154, v156);
    sub_10000C888(v156, v157);
    v25 = v151;
    sub_100750404();
    v144 = Height;
    v142 = v26;
    sub_10000C888((v7 + v20[6]), *(v7 + v20[6] + 24));
    sub_100536120();
    sub_100750564();
    MaxY = v24;
    (*&v147)(v17, v14);
    v163.origin.x = a3;
    v163.origin.y = a4;
    v163.size.width = a5;
    v163.size.height = v25;
    CGRectGetMaxX(v163);
    v164.origin.x = a3;
    v164.origin.y = a4;
    v164.size.width = a5;
    v164.size.height = v25;
    CGRectGetMinY(v164);
    sub_10000C888(v156, v157);
    v24 = MaxY;
    Height = v144;
    sub_100753B24();
    sub_100750394();
    sub_10000C620(v156);
  }

  else
  {
    sub_10000C8CC(&v154, &unk_100928A00);
  }

  v27 = [a1 traitCollection];
  v28 = [v27 preferredContentSizeCategory];
  v29 = sub_100753954();

  if (v29)
  {
    v30 = sub_10010FD98(0.0, 0.0, v150, v151, 0.0, v146);
    v147 = v30;
    v32 = v31;
    v146 = v31;
    v34 = v33;
    v36 = v35;
    v165.origin.x = 0.0;
    v165.origin.y = 0.0;
    v165.size.width = v24;
    v165.size.height = Height;
    MaxY = CGRectGetMaxY(v165);
    v37 = (v7 + v18[13]);
    sub_10000C888(v37, v37[3]);
    sub_100750404();
    v39 = v38;
    v41 = v40;
    v144 = v42;
    sub_10000C888((v7 + v20[7]), *(v7 + v20[7] + 24));
    sub_100750584();
    v44 = v43;
    v166.origin.x = v30;
    v166.origin.y = v32;
    v166.size.width = v34;
    v166.size.height = v36;
    v45 = CGRectGetMinX(v166);
    v46 = MaxY + v44;
    sub_10000C888(v37, v37[3]);
    sub_100753B24();
    sub_100750394();
    v167.origin.x = v45;
    v167.origin.y = v46;
    v167.size.width = v39;
    v167.size.height = v41;
    v47 = CGRectGetMaxY(v167) - v144;
    v48 = (v7 + v18[14]);
    sub_10000C888(v48, v48[3]);
    v49 = v36;
    sub_100750404();
    v51 = v50;
    v53 = v52;
    v55 = v54;
    sub_10000C888((v7 + v20[8]), *(v7 + v20[8] + 24));
    v142 = v55;
    sub_100750584();
    v57 = v56;
    v168.origin.x = v147;
    v168.origin.y = v146;
    v144 = v34;
    v168.size.width = v34;
    MaxY = v49;
    v168.size.height = v49;
    v58 = CGRectGetMinX(v168);
    sub_10000C888(v48, v48[3]);
    sub_100753B24();
    sub_100750394();
    v169.origin.x = v58;
    v169.origin.y = v47 + v57;
    v169.size.width = v51;
    v169.size.height = v53;
    v59 = CGRectGetMaxY(v169);
    sub_100016B4C(v7 + v18[15], &v154, &qword_10092BC30);
    if (v155)
    {
      sub_100012160(&v154, v156);
      sub_10000C888(v156, v157);
      if (sub_100750364())
      {
        v60 = v59 - v142;
        sub_10000C888(v156, v157);
        v61 = v144;
        v62 = MaxY;
        sub_100750404();
        v64 = v63;
        v66 = v65;
        sub_10000C888((v7 + v20[9]), *(v7 + v20[9] + 24));
        sub_100750584();
        v68 = v67;
        v170.origin.x = v147;
        v170.origin.y = v146;
        v170.size.width = v61;
        v170.size.height = v62;
        v69 = CGRectGetMinX(v170);
        sub_10000C888(v156, v157);
        sub_100753B24();
        sub_100750394();
        v171.origin.x = v69;
        v171.origin.y = v60 + v68;
        v171.size.width = v64;
        v171.size.height = v66;
        CGRectGetMaxY(v171);
      }

      sub_10000C620(v156);
    }

    else
    {
      sub_10000C8CC(&v154, &qword_10092BC30);
    }

    sub_100016B4C(v7 + v18[16], &v154, &unk_100928A00);
    if (v155)
    {
      sub_100012160(&v154, v156);
      sub_10000C888(v156, v157);
      if ((sub_1007503A4() & 1) == 0 && (LOBYTE(v141) & 1) == 0)
      {
        sub_10000C888(v156, v157);
        v102 = v144;
        v103 = MaxY;
        sub_100750404();
        v105 = v104;
        v178.origin.x = MinX;
        v178.origin.y = v137;
        v178.size.width = v136;
        v178.size.height = v138;
        v142 = CGRectGetMinY(v178) - v105;
        v106 = v147;
        v179.origin.x = v147;
        v107 = v146;
        v179.origin.y = v146;
        v179.size.width = v102;
        v179.size.height = v103;
        v141 = CGRectGetMinX(v179);
        v180.origin.x = v106;
        v180.origin.y = v107;
        v180.size.width = v102;
        v180.size.height = v103;
        CGRectGetWidth(v180);
        sub_10000C888(v156, v157);
        sub_100750394();
      }

      sub_10000C620(v156);
    }

    else
    {
      sub_10000C8CC(&v154, &unk_100928A00);
    }
  }

  else
  {
    v70 = sub_10010FD98(0.0, 0.0, Width, Height, 0.0, v146);
    v72 = v71;
    v74 = v73;
    v76 = v75;
    sub_10000C888((v7 + v20[10]), *(v7 + v20[10] + 24));
    sub_100536120();
    sub_100750564();
    v78 = v77;
    (*&v147)(v17, v14);
    v146 = v70;
    v172.origin.x = v70;
    v144 = v72;
    v172.origin.y = v72;
    v172.size.width = v74;
    v172.size.height = v76;
    v79 = CGRectGetHeight(v172) - v78;
    sub_100016B4C(v7 + v18[15], &v154, &qword_10092BC30);
    if (v155)
    {
      sub_100012160(&v154, v156);
      sub_10000C888(v156, v157);
      if (sub_100750364())
      {
        sub_10000C888(v156, v157);
        sub_100750404();
        v81 = v80;
        v83 = v82;
        v147 = *&v84;
        MaxY = v85;
        v86 = v85 + v79 - v82;
        v173.origin.x = v146;
        v173.origin.y = v144;
        v173.size.width = v74;
        v173.size.height = v76;
        v87 = CGRectGetMinX(v173);
        sub_10000C888(v156, v157);
        sub_100753B24();
        sub_100750394();
        sub_10000C888((v7 + v20[9]), *(v7 + v20[9] + 24));
        sub_100750584();
        v89 = v88;
        v174.origin.x = v87;
        v174.origin.y = v86;
        v174.size.width = v81;
        v174.size.height = v83;
        v79 = CGRectGetMinY(v174) - v89;
      }

      sub_10000C620(v156);
    }

    else
    {
      sub_10000C8CC(&v154, &qword_10092BC30);
    }

    v90 = (v7 + v18[14]);
    sub_10000C888(v90, v90[3]);
    sub_100750404();
    v92 = v91;
    v94 = v93;
    v147 = *&v95;
    v96 = v76;
    v97 = v74;
    MaxY = v98;
    v99 = v98 + v79 - v93;
    v175.origin.x = v146;
    v175.origin.y = v144;
    v175.size.width = v97;
    v175.size.height = v96;
    v100 = CGRectGetMinX(v175);
    sub_10000C888(v90, v90[3]);
    sub_100753B24();
    sub_100750394();
    sub_10000C888((v7 + v20[8]), *(v7 + v20[8] + 24));
    sub_100750584();
    v176.origin.x = v100;
    v176.origin.y = v99;
    v176.size.width = v92;
    v176.size.height = v94;
    CGRectGetMinY(v176);
    v101 = (v7 + v18[13]);
    sub_10000C888(v101, v101[3]);
    sub_100750404();
    v177.origin.x = v146;
    v177.origin.y = v144;
    v177.size.width = v97;
    v177.size.height = v96;
    CGRectGetMinX(v177);
    sub_10000C888(v101, v101[3]);
    sub_100753B24();
    sub_100750394();
  }

  return sub_100750314();
}

void sub_10010E438(void *a1, uint64_t a2, int *a3)
{
  v81 = a3;
  v79 = sub_100754724();
  v83 = *(v79 - 8);
  __chkstk_darwin(v79);
  v82 = &v60 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = sub_100750A94();
  v76 = *(v78 - 8);
  __chkstk_darwin(v78);
  v74 = &v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = sub_100750AB4();
  v75 = *(v77 - 8);
  __chkstk_darwin(v77);
  v73 = &v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = sub_100750FD4();
  v70 = *(v72 - 8);
  __chkstk_darwin(v72);
  v69 = &v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = sub_1007479B4();
  v67 = *(v68 - 8);
  __chkstk_darwin(v68);
  v65 = &v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v66 = &v60 - v11;
  v12 = sub_100747064();
  v71 = *(v12 - 8);
  __chkstk_darwin(v12);
  v14 = &v60 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for AppEventCardLayout(0);
  sub_100016B4C(a2 + v15[18], &v86, &unk_100928A00);
  v16 = v87;
  sub_10000C8CC(&v86, &unk_100928A00);
  v17 = [a1 traitCollection];
  v18 = [v17 preferredContentSizeCategory];
  v19 = sub_100753954();

  if (v19)
  {
    v60 = v16;
    v80 = a2;
    v20 = v15[13];
    v21 = v15[14];
    v22 = v15[16];
    v63 = v15[15];
    v64 = v22;
    if (qword_100920450 != -1)
    {
      swift_once();
    }

    v61 = (v80 + v20);
    v62 = (v80 + v21);
    v23 = sub_10000D0FC(v12, qword_10097E0C0);
    v81 = type metadata accessor for AppEventCardLayout.Metrics(0);
    sub_1007504C4();
    v25 = v24;
    v26 = [a1 traitCollection];
    v27 = v71;
    (*(v71 + 16))(v14, v23, v12);
    v28 = sub_100746FD4();
    v30 = v72;
    if ((v31 & 1) == 0 && ((v28 | v29) & 0x7FFFFFFFFFFFFFFFLL) == 0)
    {
      if (sub_100753804())
      {
        if (qword_100921988 != -1)
        {
          swift_once();
        }

        v32 = qword_10093FF40;
      }

      else
      {
        if (qword_100921990 != -1)
        {
          swift_once();
        }

        v32 = qword_10093FF58;
      }

      v33 = v68;
      v34 = sub_10000D0FC(v68, v32);
      v35 = v67;
      v36 = v65;
      (*(v67 + 16))(v65, v34, v33);
      v37 = v66;
      (*(v35 + 32))(v66, v36, v33);
      sub_100747964();
      sub_100747994();
      sub_100746FE4();
      (*(v35 + 8))(v37, v33);
    }

    sub_100746F14();
    v39 = v38;

    (*(v27 + 8))(v14, v12);
    *&v84 = _swiftEmptyArrayStorage;
    sub_10000C518(&qword_100946760);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1007A5A00;
    v87 = &type metadata for CGFloat;
    v88 = &protocol witness table for CGFloat;
    *&v86 = v25;
    *(inited + 56) = v30;
    *(inited + 64) = &protocol witness table for VerticalSpaceMeasurable;
    sub_10000D134((inited + 32));
    sub_100750FE4();
    sub_10049FB8C(inited);
    v41 = v80;
    v42 = v79;
    if (v60)
    {
      v87 = &type metadata for CGFloat;
      v88 = &protocol witness table for CGFloat;
      *&v86 = ceil(v39 + 16.0 + 16.0);
      v43 = v69;
      sub_100750FE4();
      v44 = v84;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v44 = sub_1002548C4(0, v44[2] + 1, 1, v44);
      }

      v46 = v44[2];
      v45 = v44[3];
      if (v46 >= v45 >> 1)
      {
        v44 = sub_1002548C4((v45 > 1), v46 + 1, 1, v44);
      }

      v87 = v30;
      v88 = &protocol witness table for VerticalSpaceMeasurable;
      v47 = sub_10000D134(&v86);
      v48 = v70;
      (*(v70 + 16))(v47, v43, v30);
      v44[2] = v46 + 1;
      sub_100012160(&v86, &v44[5 * v46 + 4]);
      (*(v48 + 8))(v43, v30);
      *&v84 = v44;
    }

    (*(v76 + 104))(v74, enum case for StackMeasurable.Axis.vertical(_:), v78);
    v49 = v73;
    sub_100750AA4();
    sub_100750A84();
    (*(v75 + 8))(v49, v77);
    sub_10000C888(v41, v41[3]);
    v50 = v82;
    sub_100536120();
    sub_100750564();
    v51 = *(v83 + 8);
    v83 += 8;
    v51(v50, v42);
    sub_100753BA4();
    sub_10000C888(v61, v61[3]);
    sub_100750404();
    v53 = v52;
    v54 = v81;
    sub_10000C888((v41 + v81[7]), *(v41 + v81[7] + 24));
    sub_100750584();
    *&v86 = v53;
    sub_100750554();
    sub_10000C888(v62, v62[3]);
    sub_100750404();
    v56 = v55;
    sub_10000C888((v41 + v54[8]), *(v41 + v54[8] + 24));
    sub_100750584();
    *&v86 = v56;
    sub_100750554();
    sub_100016B4C(v41 + v63, &v84, &qword_10092BC30);
    if (v85)
    {
      sub_100012160(&v84, &v86);
      sub_10000C888(&v86, v87);
      if (sub_100750364())
      {
        sub_10000C888(&v86, v87);
        sub_100750404();
        v58 = v57;
        sub_10000C888((v41 + v81[9]), *(v41 + v81[9] + 24));
        sub_100750584();
        *&v84 = v58;
        sub_100750554();
      }

      sub_10000C620(&v86);
    }

    else
    {
      sub_10000C8CC(&v84, &qword_10092BC30);
    }

    sub_10000C888((v41 + v81[10]), *(v41 + v81[10] + 24));
    v59 = v82;
    sub_100536120();
    sub_100750564();
    v51(v59, v42);
    sub_100016B4C(v41 + v64, &v84, &unk_100928A00);
    if (v85)
    {
      sub_100012160(&v84, &v86);
      sub_10000C888(&v86, v87);
      if ((sub_1007503A4() & 1) == 0)
      {
        sub_10000C888(&v86, v87);
        sub_100750404();
      }

      sub_10000C620(&v86);
    }

    else
    {
      sub_10000C8CC(&v84, &unk_100928A00);
    }
  }

  else
  {
    sub_10010F1F0(a2, v16 != 0, a1);
  }
}

double sub_10010F1F0(uint64_t a1, int a2, void *a3)
{
  v45 = a2;
  v50 = sub_100750A94();
  v48 = *(v50 - 8);
  __chkstk_darwin(v50);
  v47 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_100750AB4();
  v49 = *(v51 - 8);
  __chkstk_darwin(v51);
  v6 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_100750FD4();
  v44 = *(v46 - 8);
  __chkstk_darwin(v46);
  v43 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1007479B4();
  v42 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v41 - v12;
  v14 = sub_100747064();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100920448 != -1)
  {
    swift_once();
  }

  v18 = sub_10000D0FC(v14, qword_10097E0A8);
  type metadata accessor for AppEventCardLayout.Metrics(0);
  sub_1007504C4();
  v20 = v19;
  v52 = a3;
  v21 = [a3 traitCollection];
  (*(v15 + 16))(v17, v18, v14);
  v22 = sub_100746FD4();
  if ((v24 & 1) == 0 && ((v22 | v23) & 0x7FFFFFFFFFFFFFFFLL) == 0)
  {
    if (sub_100753804())
    {
      if (qword_100921988 != -1)
      {
        swift_once();
      }

      v25 = qword_10093FF40;
    }

    else
    {
      if (qword_100921990 != -1)
      {
        swift_once();
      }

      v25 = qword_10093FF58;
    }

    v26 = sub_10000D0FC(v8, v25);
    v27 = v42;
    (*(v42 + 16))(v10, v26, v8);
    (*(v27 + 32))(v13, v10, v8);
    sub_100747964();
    sub_100747994();
    sub_100746FE4();
    (*(v27 + 8))(v13, v8);
  }

  sub_100746F14();
  v29 = v28;

  (*(v15 + 8))(v17, v14);
  v56 = _swiftEmptyArrayStorage;
  sub_10000C518(&qword_100946760);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1007A5A00;
  v54 = &type metadata for CGFloat;
  v55 = &protocol witness table for CGFloat;
  *&v53 = v20;
  v31 = v46;
  *(inited + 56) = v46;
  *(inited + 64) = &protocol witness table for VerticalSpaceMeasurable;
  sub_10000D134((inited + 32));
  sub_100750FE4();
  sub_10049FB8C(inited);
  if (v45)
  {
    v54 = &type metadata for CGFloat;
    v55 = &protocol witness table for CGFloat;
    *&v53 = ceil(v29 + 4.0 + 4.0);
    v32 = v43;
    sub_100750FE4();
    v33 = v56;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v33 = sub_1002548C4(0, v33[2] + 1, 1, v33);
    }

    v35 = v33[2];
    v34 = v33[3];
    if (v35 >= v34 >> 1)
    {
      v33 = sub_1002548C4((v34 > 1), v35 + 1, 1, v33);
    }

    v54 = v31;
    v55 = &protocol witness table for VerticalSpaceMeasurable;
    v36 = sub_10000D134(&v53);
    v37 = v44;
    (*(v44 + 16))(v36, v32, v31);
    v33[2] = v35 + 1;
    sub_100012160(&v53, &v33[5 * v35 + 4]);
    (*(v37 + 8))(v32, v31);
    v56 = v33;
  }

  (*(v48 + 104))(v47, enum case for StackMeasurable.Axis.vertical(_:), v50);
  sub_100750AA4();
  sub_100750A84();
  v39 = v38;
  (*(v49 + 8))(v6, v51);
  return v39;
}

void sub_10010F91C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v21 = a5;
  v20 = a4;
  v27 = a3;
  v19 = a1;
  v26 = sub_100742284();
  v6 = *(v26 - 8);
  __chkstk_darwin(v26);
  v25 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_10074ED34();
  v8 = *(v24 - 8);
  __chkstk_darwin(v24);
  v23 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = _swiftEmptyArrayStorage;
  v34 = _swiftEmptyArrayStorage;
  v11 = *(a2 + 16);
  if (v11)
  {
    v12 = a2 + 32;
    do
    {
      sub_10000C824(v12, v33);
      sub_100012160(v33, v31);
      sub_10000C518(&qword_1009242A0);
      sub_1007428B4();
      if ((swift_dynamicCast() & 1) != 0 && v32)
      {
        sub_100753284();
        if (*((v34 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v34 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_100753304();
        }

        sub_100753344();
        v10 = v34;
      }

      v12 += 40;
      --v11;
    }

    while (v11);
  }

  if (v10 >> 62)
  {
LABEL_25:
    v28 = v10 & 0xFFFFFFFFFFFFFF8;
    v30 = sub_100754664();
  }

  else
  {
    v28 = v10 & 0xFFFFFFFFFFFFFF8;
    v30 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v13 = 0;
  v29 = v10 & 0xC000000000000001;
  v22 = (v8 + 8);
  ++v6;
  do
  {
    v14 = v13;
    if (v30 == v13)
    {
      break;
    }

    if (v29)
    {
      sub_100754574();
      if (__OFADD__(v14, 1))
      {
LABEL_21:
        __break(1u);
LABEL_22:

        break;
      }
    }

    else
    {
      if (v13 >= *(v28 + 16))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (__OFADD__(v14, 1))
      {
        goto LABEL_21;
      }
    }

    if ((sub_100742854() & 1) == 0)
    {
      goto LABEL_22;
    }

    sub_10000C518(&unk_100925780);
    sub_100752764();
    sub_100752D34();
    swift_getObjectType();
    sub_100742894();
    v15 = v23;
    sub_10074EF44();

    sub_1007424E4();
    (*v22)(v15, v24);
    swift_getObjectType();
    sub_100742894();
    sub_10074EE44();

    v8 = v25;
    sub_1007423E4();
    v16 = sub_100742234();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    (*v6)(v8, v26);
    v13 = v14 + 1;
  }

  while ((v16 & 1) == 0);
  v17 = v30 != v14;

  sub_10010F1F0(v19, v17, v20);
}

uint64_t sub_10010FDC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for AppEventCardLayout.Metrics(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 24);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_10010FE9C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for AppEventCardLayout.Metrics(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 24) = (a2 - 1);
  }

  return result;
}

void sub_10010FF58()
{
  type metadata accessor for AppEventCardLayout.Metrics(319);
  if (v0 <= 0x3F)
  {
    sub_100110300(319, &unk_10092C900);
    if (v1 <= 0x3F)
    {
      sub_100110090(319, &qword_10092C920, &qword_100926520);
      if (v2 <= 0x3F)
      {
        sub_100110300(319, &qword_10092D510);
        if (v3 <= 0x3F)
        {
          sub_100110090(319, &unk_10092C910, &unk_10092D520);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_100110090(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  if (!*a2)
  {
    sub_10000C724(a3);
    v4 = sub_100754284();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1001100F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1007504F4();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1001101B8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_1007504F4();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_10011025C()
{
  result = sub_100110300(319, &qword_1009289A0);
  if (v1 <= 0x3F)
  {
    result = sub_1007504F4();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_100110300(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

id sub_1001104A0()
{
  sub_100746334();
  v0 = sub_10074ECC4();

  if (!v0)
  {
    goto LABEL_10;
  }

  if ((sub_10074F1A4() & 1) == 0)
  {
    goto LABEL_9;
  }

  if (sub_10074F1D4())
  {
    v1 = sub_100743AC4();
    goto LABEL_7;
  }

  if ((sub_10074F1C4() & 1) == 0)
  {
LABEL_9:

    goto LABEL_10;
  }

  v1 = sub_10056028C(v0, 0);
LABEL_7:
  v2 = v1;

  if (v2)
  {
    return v2;
  }

LABEL_10:
  v4 = objc_allocWithZone(UIImage);

  return [v4 init];
}

id sub_100110634()
{
  v1 = sub_10000C518(&unk_100923960);
  __chkstk_darwin(v1 - 8);
  v3 = &v9 - v2;
  v4 = *&v0[OBJC_IVAR____TtC22SubscribePageExtensionP33_932442DA714B10A6559014343396A9F814ActionActivity_objectGraph];
  v5 = sub_10000C518(&unk_100923210);
  sub_1007526C4();
  v6 = *(v5 - 8);
  if ((*(v6 + 48))(v3, 1, v5) == 1)
  {
    sub_100052F00(v3);
  }

  else
  {
    v7 = sub_100746334();
    sub_1003C0E00(v7, 1, v4, v3);

    (*(v6 + 8))(v3, v5);
  }

  return [v0 activityDidFinish:1];
}

uint64_t type metadata accessor for ActionActivity()
{
  result = qword_100928D20;
  if (!qword_100928D20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100110914()
{
  result = sub_100746344();
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

id sub_1001109B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v45 = a3;
  v9 = sub_100746344();
  v52 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = v43 - v13;
  sub_1007442C4();
  sub_100752764();
  sub_100752D34();
  v15 = OBJC_IVAR____TtC22SubscribePageExtension22ActivityViewController_artworkLoader;
  *&v4[OBJC_IVAR____TtC22SubscribePageExtension22ActivityViewController_artworkLoader] = v55;
  sub_100744AC4();
  sub_100752D34();
  v16 = v55;
  v17 = *&v5[v15];

  v46 = v16;
  v18 = sub_1007449C4();
  v47 = a1;
  v19 = sub_100446780(v17, v18 & 1);

  v20 = *(a2 + 16);
  v51 = a4;
  if (v20)
  {
    v43[0] = v19;
    v44 = v5;
    v55 = _swiftEmptyArrayStorage;
    sub_1007545C4();
    v21 = *(v52 + 16);
    v22 = *(v52 + 80);
    v43[1] = a2;
    v23 = (a2 + ((v22 + 32) & ~v22));
    v49 = *(v52 + 72);
    v50 = v21;
    v52 += 16;
    v48 = (v52 - 8);
    do
    {
      v24 = v50;
      v50(v14, v23, v9);
      v24(v11, v14, v9);
      v25 = type metadata accessor for ActionActivity();
      v26 = objc_allocWithZone(v25);
      v24(&v26[OBJC_IVAR____TtC22SubscribePageExtensionP33_932442DA714B10A6559014343396A9F814ActionActivity_activity], v11, v9);
      *&v26[OBJC_IVAR____TtC22SubscribePageExtensionP33_932442DA714B10A6559014343396A9F814ActionActivity_objectGraph] = a4;
      v54.receiver = v26;
      v54.super_class = v25;

      objc_msgSendSuper2(&v54, "init");
      v27 = *v48;
      (*v48)(v11, v9);
      v27(v14, v9);
      sub_1007545A4();
      sub_1007545D4();
      a4 = v51;
      sub_1007545E4();
      sub_1007545B4();
      v23 += v49;
      --v20;
    }

    while (v20);

    v5 = v44;
    v28 = v45;
    v19 = v43[0];
  }

  else
  {

    v28 = v45;
  }

  sub_100157BCC(v19);

  isa = sub_100753294().super.isa;

  sub_100110F20();
  v30 = sub_100753294().super.isa;

  v31 = type metadata accessor for ActivityViewController();
  v53.receiver = v5;
  v53.super_class = v31;
  v32 = objc_msgSendSuper2(&v53, "initWithActivityItems:applicationActivities:", isa, v30);

  v33 = v32;
  [v33 setSharingStyle:v28];
  sub_10000C518(&unk_10093E480);
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_1007A7250;
  *(v34 + 32) = UIActivityTypeAddToReadingList;
  *(v34 + 40) = UIActivityTypeAssignToContact;
  *(v34 + 48) = UIActivityTypePostToFlickr;
  *(v34 + 56) = UIActivityTypePrint;
  *(v34 + 64) = UIActivityTypeSaveToCameraRoll;
  *(v34 + 72) = UIActivityTypeCopyToPasteboard;
  type metadata accessor for ActivityType(0);
  v35 = UIActivityTypeAddToReadingList;
  v36 = UIActivityTypeAssignToContact;
  v37 = UIActivityTypePostToFlickr;
  v38 = UIActivityTypePrint;
  v39 = UIActivityTypeSaveToCameraRoll;
  v40 = UIActivityTypeCopyToPasteboard;
  v41 = sub_100753294().super.isa;

  [v33 setExcludedActivityTypes:v41];

  return v33;
}

id sub_100110EB4(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, "dealloc");
}

unint64_t sub_100110F20()
{
  result = qword_100928D60;
  if (!qword_100928D60)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100928D60);
  }

  return result;
}

uint64_t sub_100110F6C(uint64_t result)
{
  v2 = v1;
  v3 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension30ProductMediaCollectionViewCell_media);
  *(v1 + OBJC_IVAR____TtC22SubscribePageExtension30ProductMediaCollectionViewCell_media) = result;
  if (result)
  {
    v6 = result;
    if (v3)
    {
      v5 = v3;
      sub_100743FA4();
      sub_100116ABC(&qword_100928E70, &type metadata accessor for ProductMedia);
      swift_retain_n();
      v4 = sub_100753014();

      if (v4)
      {
        goto LABEL_9;
      }
    }

    else
    {
    }

LABEL_8:
    [*(v2 + OBJC_IVAR____TtC22SubscribePageExtension30ProductMediaCollectionViewCell_collectionView) reloadData];
LABEL_9:
  }

  if (v3)
  {
    goto LABEL_8;
  }

  return result;
}

void sub_100111078(uint64_t a1)
{
  if (a1)
  {
    sub_10074B184();
    sub_100752764();

    sub_100752D34();
    sub_10074C4B4();
    swift_allocObject();
    v2 = v6;
    sub_10074C4C4();
    sub_100749AC4();
  }

  if (*&v1[OBJC_IVAR____TtC22SubscribePageExtension30ProductMediaCollectionViewCell_objectGraph])
  {
    sub_10074B184();
    sub_100752764();

    sub_100752D34();
    v3 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension30ProductMediaCollectionViewCell_compoundScrollObserver];
    sub_10074C4B4();
    swift_allocObject();
    v4 = v6;
    sub_10074C4C4();
    sub_100749AD4();

    v5 = [v1 window];
    if (v5)
    {

      [v3 scrollViewDidScroll:*&v1[OBJC_IVAR____TtC22SubscribePageExtension30ProductMediaCollectionViewCell_collectionView]];
    }
  }
}

uint64_t sub_100111240()
{
  if (qword_100921710 != -1)
  {
    swift_once();
  }

  v0 = sub_100750B04();
  v1 = sub_10000D0FC(v0, qword_1009820B0);
  qword_100928D88 = v0;
  unk_100928D90 = &protocol witness table for StaticDimension;
  v2 = sub_10000D134(qword_100928D70);
  v3 = *(*(v0 - 8) + 16);

  return v3(v2, v1, v0);
}

char *sub_100111338(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = OBJC_IVAR____TtC22SubscribePageExtension30ProductMediaCollectionViewCell_flowLayout;
  *&v4[v11] = [objc_allocWithZone(type metadata accessor for NestedHorizontalShelfCollectionViewFlowLayout()) init];
  v12 = OBJC_IVAR____TtC22SubscribePageExtension30ProductMediaCollectionViewCell_compoundScrollObserver;
  v13 = objc_allocWithZone(sub_100749AF4());
  *&v4[v12] = sub_100749AE4();
  *&v4[OBJC_IVAR____TtC22SubscribePageExtension30ProductMediaCollectionViewCell_screenshotFetcher] = 0;
  *&v4[OBJC_IVAR____TtC22SubscribePageExtension30ProductMediaCollectionViewCell_media] = 0;
  *&v4[OBJC_IVAR____TtC22SubscribePageExtension30ProductMediaCollectionViewCell_objectGraph] = 0;
  *&v4[OBJC_IVAR____TtC22SubscribePageExtension30ProductMediaCollectionViewCell_fallbackHorizontalViewMargin] = 0x4020000000000000;
  *&v4[OBJC_IVAR____TtC22SubscribePageExtension30ProductMediaCollectionViewCell_pageTraits] = 0;
  v14 = OBJC_IVAR____TtC22SubscribePageExtension30ProductMediaCollectionViewCell_itemLayoutContext;
  v15 = sub_1007469A4();
  (*(*(v15 - 8) + 56))(&v5[v14], 1, 1, v15);
  *&v5[OBJC_IVAR____TtC22SubscribePageExtension30ProductMediaCollectionViewCell_topAccessoryView] = 0;
  *&v5[OBJC_IVAR____TtC22SubscribePageExtension30ProductMediaCollectionViewCell_bottomAccessoryView] = 0;
  v5[OBJC_IVAR____TtC22SubscribePageExtension30ProductMediaCollectionViewCell_displaysTopAccessoryDivider] = 0;
  v5[OBJC_IVAR____TtC22SubscribePageExtension30ProductMediaCollectionViewCell_displaysBottomAccessoryDivider] = 0;
  *&v5[OBJC_IVAR____TtC22SubscribePageExtension30ProductMediaCollectionViewCell_topAccessoryDividerView] = 0;
  *&v5[OBJC_IVAR____TtC22SubscribePageExtension30ProductMediaCollectionViewCell_bottomAccessoryDividerView] = 0;
  v16 = &v5[OBJC_IVAR____TtC22SubscribePageExtension30ProductMediaCollectionViewCell_screenshotSelectionHandler];
  *v16 = 0;
  v16[1] = 0;
  v17 = [objc_allocWithZone(UICollectionView) initWithFrame:*&v5[v11] collectionViewLayout:{0.0, 0.0, 0.0, 0.0}];
  *&v5[OBJC_IVAR____TtC22SubscribePageExtension30ProductMediaCollectionViewCell_collectionView] = v17;
  v36.receiver = v5;
  v36.super_class = ObjectType;
  v18 = objc_msgSendSuper2(&v36, "initWithFrame:", a1, a2, a3, a4);
  v19 = [v18 contentView];
  [v19 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

  v20 = OBJC_IVAR____TtC22SubscribePageExtension30ProductMediaCollectionViewCell_collectionView;
  [*&v18[OBJC_IVAR____TtC22SubscribePageExtension30ProductMediaCollectionViewCell_collectionView] setDecelerationRate:UIScrollViewDecelerationRateFast];
  v21 = *&v18[v20];
  v22 = objc_opt_self();
  v23 = v21;
  v24 = [v22 clearColor];
  [v23 setBackgroundColor:v24];

  [*&v18[v20] setAllowsSelection:1];
  [*&v18[v20] setAlwaysBounceHorizontal:1];
  [*&v18[v20] setShowsHorizontalScrollIndicator:0];
  [*&v18[v20] setDataSource:v18];
  v25 = *&v18[v20];
  [v25 setDelegate:v18];

  v26 = *&v18[v20];
  type metadata accessor for VideoCollectionViewCell();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v28 = v26;
  sub_1007539D4();
  v29 = sub_100753064();

  [v28 registerClass:ObjCClassFromMetadata forCellWithReuseIdentifier:v29];

  v30 = *&v18[v20];
  type metadata accessor for ScreenshotCollectionViewCell();
  v31 = swift_getObjCClassFromMetadata();
  v32 = v30;
  sub_1007539D4();
  v33 = sub_100753064();

  [v32 registerClass:v31 forCellWithReuseIdentifier:v33];

  v34 = [v18 contentView];
  [v34 addSubview:*&v18[v20]];

  return v18;
}

id sub_1001117B0()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  *&v92 = COERCE_DOUBLE(type metadata accessor for DividerView.Style(0));
  __chkstk_darwin(v92);
  v4 = &v81 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100754724();
  v6 = *(v5 - 8);
  *&v7 = __chkstk_darwin(v5).n128_u64[0];
  v9 = &v81 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104.receiver = v1;
  v104.super_class = ObjectType;
  objc_msgSendSuper2(&v104, "layoutSubviews", v7);
  v10 = [v1 contentView];
  sub_100016C60(0, &qword_100922300);
  sub_1007477B4();
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v100 = v17;

  v91 = OBJC_IVAR____TtC22SubscribePageExtension30ProductMediaCollectionViewCell_bottomAccessoryView;
  v18 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension30ProductMediaCollectionViewCell_bottomAccessoryView];
  v101 = 0.0;
  v19 = 0.0;
  v20 = 0.0;
  v21 = 0.0;
  if (v18)
  {
    v22 = v18;
    [v22 frame];
    v19 = v23;
    v20 = v24;
    if (qword_1009202C0 != -1)
    {
      swift_once();
    }

    sub_10000C888(qword_10097DB38, qword_10097DB50);
    sub_100536120();
    sub_100750564();
    v21 = v25;

    (*(v6 + 8))(v9, v5);
  }

  v94 = v20;
  v90 = OBJC_IVAR____TtC22SubscribePageExtension30ProductMediaCollectionViewCell_topAccessoryView;
  v26 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension30ProductMediaCollectionViewCell_topAccessoryView];
  v103 = 0.0;
  v27 = 0.0;
  if (v26)
  {
    v28 = v26;
    [v28 frame];
    v101 = v29;
    v103 = v30;
    if (qword_1009202B8 != -1)
    {
      swift_once();
    }

    sub_10000C888(qword_100928DC0, qword_100928DD8);
    sub_100536120();
    sub_100750564();
    v27 = v31;

    (*(v6 + 8))(v9, v5);
  }

  v86 = v19;
  v95 = v27;
  v89 = OBJC_IVAR____TtC22SubscribePageExtension30ProductMediaCollectionViewCell_topAccessoryDividerView;
  v32 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension30ProductMediaCollectionViewCell_topAccessoryDividerView];
  v33 = 0.0;
  v99 = 0.0;
  v34 = 0.0;
  MinY = 0.0;
  v36 = 0.0;
  if (v32)
  {
    v37 = OBJC_IVAR____TtC22SubscribePageExtension11DividerView_style;
    swift_beginAccess();
    sub_1001154F8(v32 + v37, v4);
    v38 = qword_100920D68;
    v39 = v32;
    if (v38 != -1)
    {
      swift_once();
    }

    v40 = floor(*&qword_100980620);
    sub_1007502D4();
    sub_100750B04();
    sub_100750564();
    v42 = v41;
    (*(v6 + 8))(v9, v5);
    v36 = v40 + v42;
    sub_1001155C0(v4, type metadata accessor for DividerView.Style);
    v105.origin.x = v12;
    v105.origin.y = v14;
    v105.size.width = v16;
    v43 = v100;
    v105.size.height = v100;
    v34 = CGRectGetMaxX(v105) - v16;
    v106.origin.x = v12;
    v106.origin.y = v14;
    v106.size.width = v16;
    v106.size.height = v43;
    MinY = CGRectGetMinY(v106);

    v33 = v16;
  }

  v93 = v33;
  v102 = MinY;
  v44 = OBJC_IVAR____TtC22SubscribePageExtension30ProductMediaCollectionViewCell_bottomAccessoryDividerView;
  v45 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension30ProductMediaCollectionViewCell_bottomAccessoryDividerView];
  v97 = 0.0;
  v96 = 0.0;
  v98 = 0.0;
  if (v45)
  {
    v46 = OBJC_IVAR____TtC22SubscribePageExtension11DividerView_style;
    swift_beginAccess();
    sub_1001154F8(v45 + v46, v4);
    v47 = qword_100920D68;
    v48 = v45;
    if (v47 != -1)
    {
      swift_once();
    }

    v49 = floor(*&qword_100980620);
    sub_1007502D4();
    sub_100750B04();
    sub_100750564();
    v51 = v50;
    (*(v6 + 8))(v9, v5);
    v52 = v49 + v51;
    sub_1001155C0(v4, type metadata accessor for DividerView.Style);
    v107.origin.x = v12;
    v107.origin.y = v14;
    v107.size.width = v16;
    v53 = v100;
    v107.size.height = v100;
    v99 = CGRectGetMaxX(v107) - v16;
    v108.origin.x = v12;
    v108.origin.y = v14;
    v108.size.width = v16;
    v108.size.height = v53;
    MaxY = CGRectGetMaxY(v108);

    v98 = v52;
    v97 = MaxY - ceil(v52);
    v96 = v16;
  }

  *&v92 = v16;
  v55 = v14;
  v56 = v90;
  if (*&v1[v90])
  {
    v57 = v12;
    if (qword_1009202A8 != -1)
    {
      swift_once();
    }

    sub_10000C888(qword_100928D70, qword_100928D88);
    sub_100536120();
    sub_100750564();
    v59 = v58;
    (*(v6 + 8))(v9, v5);
  }

  else
  {
    v57 = v12;
    v59 = 0.0;
  }

  if (qword_1009202B0 != -1)
  {
    swift_once();
  }

  sub_10000C888(qword_100928D98, qword_100928DB0);
  sub_100536120();
  sub_100750564();
  v61 = v60;
  (*(v6 + 8))(v9, v5);
  v87 = v59;
  v85 = v21;
  v62 = v94 + v103 + v21 + v95 + v59 + v61;
  v63 = v34;
  v109.origin.x = v34;
  v109.origin.y = v102;
  v64 = v93;
  v109.size.width = v93;
  v65 = v36;
  v109.size.height = v36;
  v66 = CGRectGetHeight(v109) + v62;
  v110.origin.x = v99;
  v110.origin.y = v97;
  v110.size.width = v96;
  v110.size.height = v98;
  v88 = CGRectGetHeight(v110) + v66;
  v111.origin.x = v57;
  v111.origin.y = v55;
  v67 = *&v92;
  *&v111.size.width = v92;
  v68 = v100;
  v111.size.height = v100;
  MinX = CGRectGetMinX(v111);
  v83 = v63;
  v112.origin.x = v63;
  v112.origin.y = v102;
  v112.size.width = v64;
  v84 = v65;
  v112.size.height = v65;
  v70 = v87 + CGRectGetMaxY(v112);
  v113.origin.x = v57;
  v113.origin.y = v55;
  v113.size.width = v67;
  v113.size.height = v68;
  v71 = CGRectGetMinX(v113);
  v87 = MinX;
  v114.origin.x = MinX;
  v82 = v70;
  v114.origin.y = v70;
  v114.size.width = v101;
  v114.size.height = v103;
  v72 = v95 + CGRectGetMaxY(v114);
  v115.origin.x = v57;
  v115.origin.y = v55;
  v115.size.width = v67;
  v115.size.height = v68;
  Width = CGRectGetWidth(v115);
  v116.origin.x = v57;
  v116.origin.y = v55;
  v116.size.width = v67;
  v116.size.height = v68;
  v74 = CGRectGetHeight(v116) - v88;
  v117.origin.x = v57;
  v117.origin.y = v55;
  v117.size.width = v67;
  v117.size.height = v68;
  v75 = CGRectGetMinX(v117);
  v118.origin.x = v71;
  v118.origin.y = v72;
  v118.size.width = Width;
  v118.size.height = v74;
  v76 = CGRectGetMaxY(v118);
  v77 = *&v1[v89];
  if (v77)
  {
    [v77 setFrame:{v83, v102, v93, v84}];
  }

  v78 = *&v1[v56];
  if (v78)
  {
    [v78 setFrame:{v87, v82, v101, v103}];
  }

  [*&v1[OBJC_IVAR____TtC22SubscribePageExtension30ProductMediaCollectionViewCell_collectionView] setFrame:{v71, v72, Width, v74}];
  v79 = *&v1[v91];
  if (v79)
  {
    [v79 setFrame:{v75, v85 + v76, v86, v94}];
  }

  result = *&v1[v44];
  if (result)
  {
    return [result setFrame:{v99, v97, v96, v98}];
  }

  return result;
}

void sub_10011220C(void *a1, uint64_t *a2)
{
  if (*(v2 + *a1) == 1)
  {
    v4 = [objc_allocWithZone(type metadata accessor for DividerView(0)) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
    v5 = *a2;
    v6 = *(v2 + *a2);
    if (v6)
    {
      [v6 removeFromSuperview];
      v7 = *(v2 + v5);
    }

    else
    {
      v7 = 0;
    }

    *(v2 + v5) = v4;
    v11 = v4;

    sub_10011231C(a2);
  }

  else
  {
    v8 = *a2;
    v9 = *(v2 + *a2);
    if (v9)
    {
      [v9 removeFromSuperview];
      v10 = *(v2 + v8);
    }

    else
    {
      v10 = 0;
    }

    *(v2 + v8) = 0;

    sub_10011231C(a2);
  }
}

id sub_10011231C(void *a1)
{
  v3 = type metadata accessor for DividerView.Style(0);
  *&v4 = __chkstk_darwin(v3).n128_u64[0];
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *&v1[*a1];
  if (!v7)
  {
    return [v1 setNeedsLayout];
  }

  v8 = qword_100920D78;
  v9 = v7;
  if (v8 != -1)
  {
    swift_once();
  }

  v10 = sub_10000D0FC(v3, qword_100980640);
  sub_1001154F8(v10, v6);
  v11 = &v9[OBJC_IVAR____TtC22SubscribePageExtension11DividerView_style];
  swift_beginAccess();
  sub_10011555C(v6, v11);
  swift_endAccess();
  v12 = &v9[OBJC_IVAR____TtC22SubscribePageExtension11DividerView_separatorInset];
  v13 = *(v11 + 1);
  *v12 = *v11;
  *(v12 + 1) = v13;
  [v9 setNeedsLayout];
  [v9 setNeedsLayout];
  sub_1001155C0(v6, type metadata accessor for DividerView.Style);
  result = *&v1[OBJC_IVAR____TtC22SubscribePageExtension30ProductMediaCollectionViewCell_pageTraits];
  if (result)
  {
    [result pageMarginInsets];
    *v12 = v15;
    *(v12 + 1) = v16;
    *(v12 + 2) = v17;
    *(v12 + 3) = v18;
    [v9 setNeedsLayout];
    v19 = [v1 contentView];
    [v19 addSubview:v9];

    return [v1 setNeedsLayout];
  }

  __break(1u);
  return result;
}

unint64_t sub_100112544(void *a1)
{
  if (!*(v1 + OBJC_IVAR____TtC22SubscribePageExtension30ProductMediaCollectionViewCell_media))
  {
LABEL_9:
    type metadata accessor for VideoCollectionViewCell();
    sub_1007539D4();
    v10 = sub_100753064();

    isa = sub_100741704().super.isa;
    v12 = [a1 dequeueReusableCellWithReuseIdentifier:v10 forIndexPath:isa];

    return v12;
  }

  v3 = sub_100743F84();
  result = sub_100741774();
  if ((v3 & 0xC000000000000001) != 0)
  {
    sub_100754574();
    goto LABEL_6;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result < *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {

LABEL_6:

    v5 = sub_100746004();

    if (v5)
    {

      type metadata accessor for ScreenshotCollectionViewCell();
      sub_1007539D4();
      v6 = sub_100753064();

      v7 = sub_100741704().super.isa;
      v8 = [a1 dequeueReusableCellWithReuseIdentifier:v6 forIndexPath:v7];

      v9 = swift_dynamicCastClassUnconditional();
      *(*(v9 + OBJC_IVAR____TtC22SubscribePageExtension28ScreenshotCollectionViewCell_borderedScreenshotView) + OBJC_IVAR____TtC22SubscribePageExtension22BorderedScreenshotView_platform) = sub_100743F94();

      sub_10028864C();

      return v9;
    }

    goto LABEL_9;
  }

  __break(1u);
  return result;
}

uint64_t sub_1001129B8(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5, void (*a6)(id, char *))
{
  v10 = sub_1007417F4();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100741744();
  v14 = a3;
  v15 = a4;
  v16 = a1;
  a6(v15, v13);

  return (*(v11 + 8))(v13, v10);
}

void sub_100112AD4(void *a1)
{
  if (!*(v1 + OBJC_IVAR____TtC22SubscribePageExtension30ProductMediaCollectionViewCell_media))
  {
    return;
  }

  v3 = sub_100743F84();

  v4 = sub_100741774();
  if ((v3 & 0xC000000000000001) == 0)
  {
    if ((v4 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v4 < *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {

      goto LABEL_6;
    }

    __break(1u);
    return;
  }

  sub_100754574();
LABEL_6:

  v5 = sub_100746004();
  if (v5)
  {
    v6 = v5;
    v7 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension30ProductMediaCollectionViewCell_screenshotSelectionHandler);
    if (v7)
    {

      v8 = sub_100741774();
      v7(v6, v8);
      sub_1000164A8(v7);
    }

    isa = sub_100741704().super.isa;
    [a1 deselectItemAtIndexPath:isa animated:1];
  }

  else
  {
  }
}

uint64_t type metadata accessor for ProductMediaCollectionViewCell()
{
  result = qword_100928E50;
  if (!qword_100928E50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100112FC4()
{
  sub_100016898();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

double sub_1001130AC(uint64_t a1, int a2, int a3, void *a4, double a5, double a6, double a7, double a8, double a9)
{
  v159 = a9;
  v149 = a8;
  v145 = a3;
  v144 = a2;
  v143 = sub_100754724();
  v146 = *(v143 - 8);
  __chkstk_darwin(v143);
  v15 = &v141 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v142 = COERCE_DOUBLE(sub_1007428D4());
  v141 = *(*&v142 - 8);
  __chkstk_darwin(*&v142);
  v150 = &v141 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1007504F4();
  v154 = *(v17 - 8);
  __chkstk_darwin(v17);
  ObjectType = &v141 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v151 = &v141 - v20;
  __chkstk_darwin(v21);
  v23 = &v141 - v22;
  __chkstk_darwin(v24);
  v26 = &v141 - v25;
  v27 = sub_10000C518(&unk_1009281D0);
  __chkstk_darwin(v27 - 8);
  v156 = &v141 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v161 = &v141 - v30;
  __chkstk_darwin(v31);
  v162 = &v141 - v32;
  v33 = type metadata accessor for ScreenshotDisplayConfiguration();
  __chkstk_darwin(v33 - 8);
  v147 = &v141 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v160 = sub_100743F94();
  v153 = a1;
  v35 = sub_100743F84();
  v36 = v35;
  if (v35 >> 62)
  {
LABEL_106:
    v37 = sub_100754664();
  }

  else
  {
    v37 = *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  *&v164 = v26;
  v148 = v15;
  v163 = v23;
  v157 = a4;
  if (v37)
  {
    v26 = 0;
    v158 = (v36 & 0xC000000000000001);
    a4 = (v36 & 0xFFFFFFFFFFFFFF8);
    while (1)
    {
      if (v158)
      {
        sub_100754574();
        v39 = v26 + 1;
        if (__OFADD__(v26, 1))
        {
LABEL_16:
          __break(1u);
          break;
        }
      }

      else
      {
        if (v26 >= *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_106;
        }

        v39 = v26 + 1;
        if (__OFADD__(v26, 1))
        {
          goto LABEL_16;
        }
      }

      if (sub_100746004())
      {
        v38 = sub_10074F114();

        if (v38)
        {
          goto LABEL_18;
        }
      }

      else
      {
        if (!sub_100746014())
        {

          v155 = 1;
          a4 = v157;
          v15 = v148;
          goto LABEL_21;
        }

        sub_10074EC14();
        v40 = sub_10074F114();

        v15 = v148;
        if (v40)
        {
LABEL_18:
          v155 = 1;
          a4 = v157;
LABEL_21:
          v23 = v163;
          goto LABEL_22;
        }
      }

      ++v26;
      v23 = v163;
      if (v39 == v37)
      {
        v155 = 0;
        a4 = v157;
        goto LABEL_22;
      }
    }
  }

  v155 = 0;
LABEL_22:

  sub_100743864();

  sub_1002898DC(v41, v147);

  v42 = sub_100743F84();
  if (v42 >> 62)
  {
    v37 = v42;
    v43 = sub_100754664();
  }

  else
  {
    v43 = *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v44 = v154;

  if (v43 >= 1)
  {
    v45 = sub_100743F84();
    v46 = v45;
    if (v45 >> 62)
    {
      v43 = v45;
      v110 = sub_100754664();
      v46 = v43;
      v47 = v110;
      if (v110)
      {
        goto LABEL_27;
      }
    }

    else
    {
      v47 = *((v45 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v47)
      {
LABEL_27:
        if (v47 >= 1)
        {
          v141 = a5;
          v142 = a6;
          v48 = v46;
          ObjectType = swift_getObjectType();
          v49 = 0;
          v151 = (v48 & 0xC000000000000001);
          v50 = (v44 + 56);
          v51 = 0.0;
          v158 = (v44 + 32);
          v52 = (v44 + 48);
          v150 = (v44 + 16);
          v53 = (v44 + 8);
          v154 = v48;
          v153 = v47;
          do
          {
            if (v151)
            {
              sub_100754574();
            }

            else
            {
            }

            if (sub_100746004())
            {
              sub_10074F2A4();
              v57 = v161;
              sub_100750504();

              v58 = *v50;
              (*v50)(v57, 0, 1, v17);
              v59 = v162;
              (*v158)();
              v58(v59, 0, 1, v17);
            }

            else
            {
              v60 = *v50;
              v61 = 1;
              (*v50)(v161, 1, 1, v17);
              if (sub_100746014())
              {
                sub_10074EC14();

                sub_10074F2A4();
                v59 = v162;
                sub_100750504();

                v61 = 0;
              }

              else
              {
                v59 = v162;
              }

              v60(v59, v61, 1, v17);
              v62 = (*v52)(v161, 1, v17);
              v23 = v163;
              if (v62 != 1)
              {
                sub_10000C8CC(v161, &unk_1009281D0);
              }
            }

            v63 = sub_1007444C4();
            v64 = v59;
            v65 = v156;
            sub_100115488(v64, v156);
            v66 = *v52;
            if ((*v52)(v65, 1, v17) == 1)
            {
              sub_100750504();
              if (v66(v65, 1, v17) != 1)
              {
                sub_10000C8CC(v65, &unk_1009281D0);
              }
            }

            else
            {
              (*v158)(v164, v65, v17);
            }

            v67 = v157;
            if ((v155 & v63) != 0)
            {
              v68 = v164;
              if (sub_100750444())
              {
                (*v150)(v23, v68, v17);
              }

              else
              {
                sub_100750484();
              }

              v69 = 1;
            }

            else
            {
              (*v150)(v23, v164, v17);
              v69 = sub_100750444();
            }

            v70 = [v67 traitCollection];
            v71 = sub_1007537B4();

            if (v71)
            {
              if (v149 >= a7)
              {
                JUScreenClassGetPortraitWidth();
                v72 = 4.0;
                v73 = 2.0;
                v23 = v163;
                if (v85 < a7)
                {
                  JUScreenClassGetPortraitWidth();
                  if (v86 < a7)
                  {
                    v72 = 5.0;
                  }

                  else
                  {
                    v72 = 4.0;
                  }
                }
              }

              else
              {
                JUScreenClassGetLandscapeWidth();
                v72 = 5.0;
                v73 = 2.0;
                v23 = v163;
                if (v74 < a7)
                {
                  JUScreenClassGetLandscapeWidth();
                  if (v75 < a7)
                  {
                    v72 = 6.0;
                  }

                  else
                  {
                    v72 = 5.0;
                  }
                }
              }
            }

            else
            {
              if (v69)
              {
                v73 = 2.0;
              }

              else
              {
                v73 = 1.0;
              }

              if (v69)
              {
                v72 = 3.0;
              }

              else
              {
                v72 = 1.0;
              }

              v23 = v163;
            }

            [v67 pageMarginInsets];
            v77 = v76;
            [v67 pageMarginInsets];
            v79 = v77 + v78;
            PageTraitEnvironment.pageColumnMargin.getter();
            v81 = (v73 + -1.0) * v80 + v73 / v72 * (v159 - (v79 + (v72 + -1.0) * v80));
            v82 = [v67 traitCollection];
            v83 = sub_1007537B4();

            if ((v83 & 1) == 0 || (JUScreenClassGetPortraitWidth(), JUScreenClassGetLandscapeWidth(), sub_1007504B4(), v81 < v84))
            {
              sub_1007504C4();
            }

            ++v49;
            sub_1007504C4();
            v55 = v54;

            v56 = *v53;
            (*v53)(v23, v17);
            v56(v164, v17);
            sub_10000C8CC(v162, &unk_1009281D0);
            if (v55 > v51)
            {
              v51 = v55;
            }
          }

          while (v153 != v49);

          v15 = v148;
          a6 = v142;
          a5 = v141;
          goto LABEL_110;
        }

        __break(1u);
        goto LABEL_141;
      }
    }

    v51 = 0.0;
    goto LABEL_110;
  }

  v87 = v150;
  sub_1007444B4();
  v88 = v141;
  v89 = v142;
  v90 = (*(*&v141 + 88))(v87, COERCE_DOUBLE(*&v142));
  v43 = ObjectType;
  v37 = v151;
  if (v90 == enum case for AppPlatform.phone(_:) || v90 == enum case for AppPlatform.pad(_:) || v90 == enum case for AppPlatform.messages(_:))
  {
    goto LABEL_77;
  }

  if (v90 == enum case for AppPlatform.watch(_:))
  {
    if (qword_100920770 == -1)
    {
LABEL_86:
      v92 = sub_10000D0FC(v17, qword_10097ECE0);
      (*(v44 + 16))(v37, v92, v17);
      goto LABEL_78;
    }

LABEL_141:
    swift_once();
    goto LABEL_86;
  }

  if (v90 == enum case for AppPlatform.tv(_:) || v90 == enum case for AppPlatform.mac(_:))
  {
LABEL_77:
    sub_100750504();
    goto LABEL_78;
  }

  sub_100750504();
  (*(*&v88 + 8))(v150, COERCE_DOUBLE(*&v89));
LABEL_78:
  if (sub_1007444C4() & 1) != 0 && (sub_100750444())
  {
    if (sub_100750444())
    {
      (*(v44 + 16))(v43, v37, v17);
    }

    else
    {
      sub_100750484();
    }

    v91 = 1;
  }

  else
  {
    (*(v44 + 16))(v43, v37, v17);
    v91 = sub_100750444();
  }

  swift_getObjectType();
  v93 = [a4 traitCollection];
  v94 = sub_1007537B4();

  if (v94)
  {
    v95 = sub_10063C440(a7, v149);
    v97 = v96;
  }

  else
  {
    if (v91)
    {
      v95 = 2.0;
    }

    else
    {
      v95 = 1.0;
    }

    if (v91)
    {
      v97 = 3.0;
    }

    else
    {
      v97 = 1.0;
    }
  }

  [a4 pageMarginInsets];
  v99 = v98;
  [a4 pageMarginInsets];
  v101 = v99 + v100;
  PageTraitEnvironment.pageColumnMargin.getter();
  v103 = (v95 + -1.0) * v102 + v95 / v97 * (v159 - (v101 + (v97 + -1.0) * v102));
  v104 = [a4 traitCollection];
  v105 = sub_1007537B4();

  v106 = ObjectType;
  if ((v105 & 1) == 0 || (JUScreenClassGetPortraitWidth(), JUScreenClassGetLandscapeWidth(), sub_1007504B4(), v103 < v107))
  {
    sub_1007504C4();
  }

  sub_1007504C4();
  v51 = v108;
  v109 = *(v44 + 8);
  v109(v106, v17);
  v109(v151, v17);
LABEL_110:
  sub_10000C518(&unk_10092F780);
  inited = swift_initStackObject();
  v164 = xmmword_1007A5A00;
  *(inited + 16) = xmmword_1007A5A00;
  *(inited + 32) = v51;
  v165 = inited;
  v112 = v143;
  if (a5 >= COERCE_DOUBLE(1))
  {
    v113 = swift_initStackObject();
    *(v113 + 16) = xmmword_1007A5620;
    if (qword_1009202A8 != -1)
    {
      swift_once();
    }

    sub_10000C888(qword_100928D70, qword_100928D88);
    sub_100536120();
    sub_100750564();
    v115 = v114;
    v116 = *(v146 + 8);
    v116(v15, v112);
    *(v113 + 32) = v115;
    *(v113 + 40) = a5;
    if (qword_1009202B8 != -1)
    {
      swift_once();
    }

    sub_10000C888(qword_100928DC0, qword_100928DD8);
    sub_100536120();
    sub_100750564();
    v118 = v117;
    v116(v15, v112);
    *(v113 + 48) = v118;
    sub_10049FD08(v113);
  }

  if (a6 >= COERCE_DOUBLE(1))
  {
    v119 = swift_initStackObject();
    *(v119 + 16) = xmmword_1007A6580;
    *(v119 + 32) = a6;
    if (qword_1009202C0 != -1)
    {
      swift_once();
    }

    sub_10000C888(qword_10097DB38, qword_10097DB50);
    sub_100536120();
    sub_100750564();
    v121 = v120;
    (*(v146 + 8))(v15, v112);
    *(v119 + 40) = v121;
    sub_10049FD08(v119);
  }

  v122 = swift_initStackObject();
  *(v122 + 16) = v164;
  if (qword_1009202B0 != -1)
  {
    swift_once();
  }

  sub_10000C888(qword_100928D98, qword_100928DB0);
  swift_getObjectType();
  v123 = v148;
  sub_100536120();
  sub_100750564();
  v125 = v124;
  (*(v146 + 8))(v123, v112);
  *(v122 + 32) = v125;
  sub_10049FD08(v122);
  v126 = swift_initStackObject();
  *(v126 + 16) = xmmword_1007A6580;
  v127 = 0.0;
  v128 = 0.0;
  if (v144)
  {
    type metadata accessor for DividerView(0);
    if (qword_100920D78 != -1)
    {
      swift_once();
    }

    v129 = type metadata accessor for DividerView.Style(0);
    sub_10000D0FC(v129, qword_100980640);
    v128 = sub_1004CB0AC();
  }

  *(v126 + 32) = v128;
  if (v145)
  {
    type metadata accessor for DividerView(0);
    if (qword_100920D78 != -1)
    {
      swift_once();
    }

    v130 = type metadata accessor for DividerView.Style(0);
    sub_10000D0FC(v130, qword_100980640);
    v127 = sub_1004CB0AC();
  }

  *(v126 + 40) = v127;
  sub_10049FD08(v126);
  v131 = *(v165 + 16);
  if (!v131)
  {
    v132 = v147;
    goto LABEL_139;
  }

  v132 = v147;
  if (v131 <= 3)
  {
    v133 = 0;
    v134 = 0.0;
LABEL_137:
    v137 = v131 - v133;
    v138 = (v165 + 8 * v133 + 32);
    do
    {
      v139 = *v138++;
      v134 = v134 + v139;
      --v137;
    }

    while (v137);
    goto LABEL_139;
  }

  v133 = v131 & 0x7FFFFFFFFFFFFFFCLL;
  v135 = (v165 + 48);
  v134 = 0.0;
  v136 = v131 & 0x7FFFFFFFFFFFFFFCLL;
  do
  {
    v134 = v134 + *(v135 - 2) + *(v135 - 1) + *v135 + v135[1];
    v135 += 4;
    v136 -= 4;
  }

  while (v136);
  if (v131 != v133)
  {
    goto LABEL_137;
  }

LABEL_139:
  sub_1001155C0(v132, type metadata accessor for ScreenshotDisplayConfiguration);

  return v159;
}

unint64_t sub_100114558(uint64_t a1, void *a2, double a3)
{
  v6 = type metadata accessor for ScreenshotDisplayConfiguration();
  __chkstk_darwin(v6 - 8);
  v65 = &v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = sub_1007504F4();
  v8 = *(v68 - 8);
  __chkstk_darwin(v68);
  v10 = &v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v59 - v12;
  v66 = a1;
  result = sub_100743F84();
  v15 = result;
  if (result >> 62)
  {
    result = sub_100754664();
    v16 = result;
    if (result)
    {
      goto LABEL_3;
    }

LABEL_46:

    return _swiftEmptyArrayStorage;
  }

  v16 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v16)
  {
    goto LABEL_46;
  }

LABEL_3:
  if (v16 >= 1)
  {
    v17 = 0;
    v67 = v15 & 0xC000000000000001;
    v59 = (v8 + 16);
    v60 = (v8 + 8);
    v18 = _swiftEmptyArrayStorage;
    v63 = v13;
    v64 = v10;
    v61 = v16;
    v62 = v15;
    while (1)
    {
      if (v67)
      {
        v19 = sub_100754574();
        v20 = sub_100746004();
        if (v20)
        {
          goto LABEL_9;
        }
      }

      else
      {
        v19 = *(v15 + 8 * v17 + 32);

        v20 = sub_100746004();
        if (v20)
        {
LABEL_9:
          v21 = v20;
          v69 = v19;
LABEL_13:
          sub_10074F2A4();
          sub_100750504();
          v22 = sub_100743F24();
          sub_100743864();
          v23 = sub_100743F94();
          v24 = v65;
          sub_1002898DC(v23, v65);

          v25 = *(v24 + 64);
          v26 = *(v24 + 80);
          sub_1001155C0(v24, type metadata accessor for ScreenshotDisplayConfiguration);
          swift_getObjectType();
          [a2 pageContainerSize];
          v28 = v27;
          v30 = v29;
          if (v22)
          {
            v31 = sub_100750444();
            v32 = v64;
            if (v31)
            {
              (*v59)(v64, v13, v68);
            }

            else
            {
              sub_100750484();
            }

            v33 = 1;
          }

          else
          {
            v32 = v64;
            (*v59)(v64, v13, v68);
            v33 = sub_100750444();
          }

          v34 = [a2 traitCollection];
          v35 = sub_1007537B4();

          if (v35)
          {
            if (v30 >= v28)
            {
              JUScreenClassGetPortraitWidth();
              v36 = 4.0;
              v37 = 2.0;
              v13 = v63;
              if (v28 > v57)
              {
                JUScreenClassGetPortraitWidth();
                if (v28 > v58)
                {
                  v36 = 5.0;
                }

                else
                {
                  v36 = 4.0;
                }
              }
            }

            else
            {
              JUScreenClassGetLandscapeWidth();
              v36 = 5.0;
              v37 = 2.0;
              v13 = v63;
              if (v28 > v38)
              {
                JUScreenClassGetLandscapeWidth();
                if (v28 > v39)
                {
                  v36 = 6.0;
                }

                else
                {
                  v36 = 5.0;
                }
              }
            }
          }

          else
          {
            if (v33)
            {
              v37 = 2.0;
            }

            else
            {
              v37 = 1.0;
            }

            if (v33)
            {
              v36 = 3.0;
            }

            else
            {
              v36 = 1.0;
            }

            v13 = v63;
          }

          [a2 pageMarginInsets];
          v41 = v40;
          [a2 pageMarginInsets];
          v43 = v41 + v42;
          PageTraitEnvironment.pageColumnMargin.getter();
          v45 = (v37 + -1.0) * v44 + v37 / v36 * (a3 - (v43 + (v36 + -1.0) * v44));
          v46 = [a2 traitCollection];
          v47 = sub_1007537B4();

          if ((v47 & 1) == 0 || (JUScreenClassGetPortraitWidth(), JUScreenClassGetLandscapeWidth(), sub_1007504B4(), v45 < v48))
          {
            sub_1007504C4();
            v48 = v45;
          }

          v49 = v48 - (v25 + v26);
          sub_1007504C4();
          v51 = v50;
          v52 = *v60;
          v53 = v68;
          (*v60)(v32, v68);
          v52(v13, v53);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v18 = sub_100254FF4(0, v18[2] + 1, 1, v18);
          }

          v16 = v61;
          v15 = v62;
          v55 = v18[2];
          v54 = v18[3];
          if (v55 >= v54 >> 1)
          {
            v18 = sub_100254FF4((v54 > 1), v55 + 1, 1, v18);
          }

          v18[2] = v55 + 1;
          v56 = &v18[3 * v55];
          *(v56 + 4) = v21;
          v56[5] = v49;
          *(v56 + 6) = v51;
          goto LABEL_6;
        }
      }

      if (sub_100746014())
      {
        v69 = v19;
        v21 = sub_10074EC14();

        goto LABEL_13;
      }

LABEL_6:
      if (v16 == ++v17)
      {

        return v18;
      }
    }
  }

  __break(1u);
  return result;
}

void sub_100114B04(uint64_t a1)
{
  v2 = v1;
  sub_10000C824(a1, v25);
  sub_10000C518(&unk_100923100);
  sub_100743FA4();
  if (swift_dynamicCast())
  {
    v3 = OBJC_IVAR____TtC22SubscribePageExtension30ProductMediaCollectionViewCell_screenshotFetcher;
    if (!*&v1[OBJC_IVAR____TtC22SubscribePageExtension30ProductMediaCollectionViewCell_screenshotFetcher])
    {
      type metadata accessor for ScreenshotFetcher();
      v4 = swift_allocObject();
      *(v4 + 16) = sub_10041434C(_swiftEmptyArrayStorage);
      *(v4 + 32) = 0;
      swift_unknownObjectWeakInit();
      *(v4 + 32) = &off_100868388;
      swift_unknownObjectWeakAssign();
      *&v1[v3] = v4;
      swift_retain_n();

      v5 = *&v1[v3];
      if (v5)
      {
        *(v5 + 32) = &off_100868388;
        swift_unknownObjectWeakAssign();
      }
    }

    swift_retain_n();
    v6 = [v1 traitCollection];
    sub_1007537B4();

    v7 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension30ProductMediaCollectionViewCell_media];
    if (v7)
    {
      v8 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension30ProductMediaCollectionViewCell_pageTraits];
      if (!v8)
      {
LABEL_26:
        __break(1u);
        return;
      }

      swift_unknownObjectRetain();
      [v2 bounds];
      v10 = sub_100114558(v7, v8, v9);

      swift_unknownObjectRelease();
    }

    else
    {
      v10 = _swiftEmptyArrayStorage;
    }

    v24 = sub_100743F24() & 1;
    v11 = sub_1004C7000(v10, v24);
    v12 = v11;
    v23 = v10[2];
    if (v23)
    {
      v13 = 0;
      v14 = v10 + 6;
      v21 = v11 & 0xC000000000000001;
      v22 = v11 >> 62;
      while (v13 < v10[2])
      {
        v15 = *(v14 - 2);
        v16 = *(v14 - 1);
        v17 = *v14;
        if (v22)
        {
          v18 = sub_100754664();
        }

        else
        {
          v18 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        if (v13 == v18)
        {
          goto LABEL_22;
        }

        if (v21)
        {

          sub_100754574();
        }

        else
        {
          if (v13 >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_25;
          }
        }

        v26 = 0;
        memset(v25, 0, sizeof(v25));
        v19 = swift_allocObject();
        swift_weakInit();
        v20 = swift_allocObject();
        *(v20 + 16) = v24;
        *(v20 + 24) = v19;
        *(v20 + 32) = v15;
        *(v20 + 40) = v16;
        *(v20 + 48) = v17;
        *(v20 + 56) = v13;

        sub_1007441F4();

        sub_10000C8CC(v25, &unk_1009276E0);

        v14 += 3;
        if (v23 == ++v13)
        {
          goto LABEL_22;
        }
      }

      __break(1u);
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

LABEL_22:
  }
}

void sub_100114EC8()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC22SubscribePageExtension30ProductMediaCollectionViewCell_flowLayout;
  *(v1 + v2) = [objc_allocWithZone(type metadata accessor for NestedHorizontalShelfCollectionViewFlowLayout()) init];
  v3 = OBJC_IVAR____TtC22SubscribePageExtension30ProductMediaCollectionViewCell_compoundScrollObserver;
  v4 = objc_allocWithZone(sub_100749AF4());
  *(v1 + v3) = sub_100749AE4();
  *(v1 + OBJC_IVAR____TtC22SubscribePageExtension30ProductMediaCollectionViewCell_screenshotFetcher) = 0;
  *(v1 + OBJC_IVAR____TtC22SubscribePageExtension30ProductMediaCollectionViewCell_media) = 0;
  *(v1 + OBJC_IVAR____TtC22SubscribePageExtension30ProductMediaCollectionViewCell_objectGraph) = 0;
  *(v1 + OBJC_IVAR____TtC22SubscribePageExtension30ProductMediaCollectionViewCell_fallbackHorizontalViewMargin) = 0x4020000000000000;
  *(v1 + OBJC_IVAR____TtC22SubscribePageExtension30ProductMediaCollectionViewCell_pageTraits) = 0;
  v5 = OBJC_IVAR____TtC22SubscribePageExtension30ProductMediaCollectionViewCell_itemLayoutContext;
  v6 = sub_1007469A4();
  (*(*(v6 - 8) + 56))(v1 + v5, 1, 1, v6);
  *(v1 + OBJC_IVAR____TtC22SubscribePageExtension30ProductMediaCollectionViewCell_topAccessoryView) = 0;
  *(v1 + OBJC_IVAR____TtC22SubscribePageExtension30ProductMediaCollectionViewCell_bottomAccessoryView) = 0;
  *(v1 + OBJC_IVAR____TtC22SubscribePageExtension30ProductMediaCollectionViewCell_displaysTopAccessoryDivider) = 0;
  *(v1 + OBJC_IVAR____TtC22SubscribePageExtension30ProductMediaCollectionViewCell_displaysBottomAccessoryDivider) = 0;
  *(v1 + OBJC_IVAR____TtC22SubscribePageExtension30ProductMediaCollectionViewCell_topAccessoryDividerView) = 0;
  *(v1 + OBJC_IVAR____TtC22SubscribePageExtension30ProductMediaCollectionViewCell_bottomAccessoryDividerView) = 0;
  v7 = (v1 + OBJC_IVAR____TtC22SubscribePageExtension30ProductMediaCollectionViewCell_screenshotSelectionHandler);
  *v7 = 0;
  v7[1] = 0;
  sub_100754644();
  __break(1u);
}

void sub_10011505C(objc_class *a1, uint64_t a2)
{
  v5 = sub_1007417F4();
  v6 = *(v5 - 8);
  *&v7 = __chkstk_darwin(v5).n128_u64[0];
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [v2 window];
  if (v10)
  {

    if (*&v2[OBJC_IVAR____TtC22SubscribePageExtension30ProductMediaCollectionViewCell_media])
    {
      v11 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension30ProductMediaCollectionViewCell_collectionView];

      if ([v11 numberOfSections] >= 1 && objc_msgSend(v11, "numberOfItemsInSection:", 0) > a2)
      {
        v12 = sub_100743F84();
        v13 = v12 >> 62 ? sub_100754664() : *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);

        if (v13 > a2)
        {
          v14 = sub_100743F84();
          if ((v14 & 0xC000000000000001) == 0)
          {
            if (a2 < 0)
            {
              __break(1u);
            }

            else if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
            {

              goto LABEL_12;
            }

            __break(1u);
            return;
          }

          sub_100754574();
LABEL_12:

          sub_10000C518(&qword_1009253E0);
          v15 = swift_allocObject();
          *(v15 + 16) = xmmword_1007A6580;
          *(v15 + 32) = 0;
          *(v15 + 40) = a2;
          sub_1007416F4();
          isa = sub_100741704().super.isa;
          (*(v6 + 8))(v9, v5);
          v17 = [v11 cellForItemAtIndexPath:isa];

          if (v17)
          {
            type metadata accessor for ScreenshotCollectionViewCell();
            v18 = swift_dynamicCastClass();
            if (v18)
            {
              v19 = v18;
              v20 = v17;
              if (sub_100746004())
              {

                v21 = *(*(v19 + OBJC_IVAR____TtC22SubscribePageExtension28ScreenshotCollectionViewCell_borderedScreenshotView) + OBJC_IVAR____TtC22SubscribePageExtension22BorderedScreenshotView_artworkView);
                v27.value.super.isa = a1;
                v27.is_nil = 1;
                sub_1007432F4(v27, v22);

                goto LABEL_26;
              }
            }

            type metadata accessor for VideoCollectionViewCell();
            if (swift_dynamicCastClass())
            {
              v17 = v17;
              if (sub_100746014())
              {

                Strong = swift_unknownObjectWeakLoadStrong();
                if (Strong)
                {
                  v24 = Strong;
                  [*(Strong + qword_10093CB50) setImage:a1];
                }
              }
            }
          }

LABEL_26:

          return;
        }
      }
    }
  }
}

uint64_t sub_1001153FC()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100115434()
{

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_100115488(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C518(&unk_1009281D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001154F8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DividerView.Style(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10011555C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DividerView.Style(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001155C0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100115620()
{
  if (!*(v0 + OBJC_IVAR____TtC22SubscribePageExtension30ProductMediaCollectionViewCell_pageTraits) || !*(v0 + OBJC_IVAR____TtC22SubscribePageExtension30ProductMediaCollectionViewCell_media))
  {
    return 0;
  }

  v1 = sub_100743F84();

  if (v1 >> 62)
  {
    v2 = sub_100754664();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return v2;
}

void sub_1001156BC(void *a1)
{
  v3 = type metadata accessor for ScreenshotDisplayConfiguration();
  __chkstk_darwin(v3 - 8);
  v5 = &v55 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10000C518(&unk_1009281D0);
  __chkstk_darwin(v6 - 8);
  v8 = &v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v55 - v10;
  v12 = sub_1007504F4();
  v58 = *(v12 - 8);
  __chkstk_darwin(v12);
  v14 = &v55 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v55 - v16;
  if (!*(v1 + OBJC_IVAR____TtC22SubscribePageExtension30ProductMediaCollectionViewCell_media))
  {
    return;
  }

  [a1 frame];
  if (v18 <= 0.0 || v19 <= 0.0)
  {

    return;
  }

  v56 = v1;
  v20 = v18;
  v21 = sub_100743F84();
  v22 = sub_100741774();
  if ((v21 & 0xC000000000000001) == 0)
  {
    if ((v22 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v22 < *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v23 = *(v21 + 8 * v22 + 32);

      goto LABEL_8;
    }

    __break(1u);
LABEL_42:
    __break(1u);
    return;
  }

  v23 = sub_100754574();
LABEL_8:

  v24 = sub_100746004();
  v57 = v23;
  if (v24)
  {
    sub_10074F2A4();
    sub_100750504();

    v25 = v58;
    v26 = *(v58 + 56);
    v26(v8, 0, 1, v12);
    (*(v25 + 32))(v11, v8, v12);
    v26(v11, 0, 1, v12);
    v27 = (*(v25 + 48))(v11, 1, v12);
  }

  else
  {
    v55 = *(v58 + 56);
    v55(v8, 1, 1, v12);
    if (sub_100746014())
    {
      sub_10074EC14();

      sub_10074F2A4();
      sub_100750504();

      v28 = 0;
    }

    else
    {
      v28 = 1;
    }

    v55(v11, v28, 1, v12);
    v25 = v58;
    v29 = *(v58 + 48);
    if (v29(v8, 1, v12) != 1)
    {
      sub_10000C8CC(v8, &unk_1009281D0);
    }

    v27 = v29(v11, 1, v12);
  }

  if (v27 == 1)
  {

    sub_10000C8CC(v11, &unk_1009281D0);
    return;
  }

  (*(v25 + 32))(v17, v11, v12);
  sub_100743864();
  v30 = sub_100743F94();
  sub_1002898DC(v30, v5);

  v31 = sub_100743F24();
  v32 = *(v56 + OBJC_IVAR____TtC22SubscribePageExtension30ProductMediaCollectionViewCell_pageTraits);
  if (!v32)
  {
    goto LABEL_42;
  }

  v33 = v31;
  [swift_unknownObjectRetain() pageContainerSize];
  v35 = v34;
  v37 = v36;
  if (v33)
  {
    if (sub_100750444())
    {
      (*(v25 + 16))(v14, v17, v12);
    }

    else
    {
      sub_100750484();
    }

    v38 = 1;
  }

  else
  {
    (*(v25 + 16))(v14, v17, v12);
    v38 = sub_100750444();
  }

  swift_getObjectType();
  v39 = [v32 traitCollection];
  v40 = sub_1007537B4();

  if (v40)
  {
    v41 = sub_10063C440(v35, v37);
    v43 = v42;
  }

  else
  {
    if (v38)
    {
      v41 = 2.0;
    }

    else
    {
      v41 = 1.0;
    }

    if (v38)
    {
      v43 = 3.0;
    }

    else
    {
      v43 = 1.0;
    }
  }

  v44 = v58;
  [v32 pageMarginInsets];
  v46 = v45;
  [v32 pageMarginInsets];
  v48 = v46 + v47;
  PageTraitEnvironment.pageColumnMargin.getter();
  v50 = (v41 + -1.0) * v49 + v41 / v43 * (v20 - (v48 + (v43 + -1.0) * v49));
  v51 = [v32 traitCollection];
  v52 = sub_1007537B4();

  if ((v52 & 1) == 0 || (JUScreenClassGetPortraitWidth(), JUScreenClassGetLandscapeWidth(), sub_1007504B4(), v50 < v53))
  {
    sub_1007504C4();
  }

  sub_1007504C4();
  swift_unknownObjectRelease();

  v54 = *(v44 + 8);
  v54(v14, v12);
  sub_1001155C0(v5, type metadata accessor for ScreenshotDisplayConfiguration);
  v54(v17, v12);
}

void sub_100115D84(void *a1)
{
  v2 = v1;
  v4 = sub_10000C518(&unk_1009281C0);
  __chkstk_darwin(v4 - 8);
  v6 = v68 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v78 = v68 - v8;
  v9 = sub_10000C518(&unk_100923970);
  __chkstk_darwin(v9 - 8);
  v77 = v68 - v10;
  v11 = sub_100744864();
  __chkstk_darwin(v11 - 8);
  __chkstk_darwin(v12);
  v13 = sub_10000C518(&unk_1009281D0);
  __chkstk_darwin(v13 - 8);
  v15 = v68 - v14;
  v16 = sub_100744894();
  v76 = *(v16 - 8);
  __chkstk_darwin(v16);
  v18 = v68 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_100747D94();
  __chkstk_darwin(v19);
  v23 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension30ProductMediaCollectionViewCell_media);
  if (!v23)
  {
    return;
  }

  v72 = v6;
  v73 = v22;
  v74 = v20;
  v75 = v68 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);

  v79 = v23;
  v24 = sub_100743F84();
  v25 = sub_100741774();
  if ((v24 & 0xC000000000000001) == 0)
  {
    if ((v25 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v25 < *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v26 = *(v24 + 8 * v25 + 32);

      goto LABEL_6;
    }

    __break(1u);
    return;
  }

  v26 = sub_100754574();
LABEL_6:

  type metadata accessor for ScreenshotCollectionViewCell();
  v27 = swift_dynamicCastClass();
  if (v27)
  {
    v28 = v27;
    v29 = a1;
    v30 = sub_100746004();
    if (v30)
    {
      v31 = v30;
      v32 = *(v2 + OBJC_IVAR____TtC22SubscribePageExtension30ProductMediaCollectionViewCell_screenshotFetcher);
      if (v32)
      {
        swift_beginAccess();
        v33 = *(v32 + 16);

        v34 = sub_10030C758(v31, v33);

        if (v34)
        {
          v35 = *(*(v28 + OBJC_IVAR____TtC22SubscribePageExtension28ScreenshotCollectionViewCell_borderedScreenshotView) + OBJC_IVAR____TtC22SubscribePageExtension22BorderedScreenshotView_artworkView);
          v36 = v34;
          v37 = v35;
          v38 = sub_100743334();

          if (v38)
          {
            sub_100016C60(0, &qword_10092B280);
            v40 = v36;
            v41 = sub_100753FC4();

            v42 = v41 ^ 1;
          }

          else
          {
            v42 = 1;
          }

          v82.is_nil = v42 & 1;
          v82.value.super.isa = v34;
          sub_100743384(v82, v39);
        }

        else
        {
        }

        return;
      }

      goto LABEL_25;
    }

    goto LABEL_24;
  }

  type metadata accessor for VideoCollectionViewCell();
  v43 = swift_dynamicCastClass();
  if (!v43)
  {
LABEL_24:

LABEL_25:

    return;
  }

  v71 = v43;
  v44 = a1;
  v45 = sub_100746014();
  if (!v45)
  {

    goto LABEL_24;
  }

  v46 = v45;
  v70 = v26;
  if (!*(v2 + OBJC_IVAR____TtC22SubscribePageExtension30ProductMediaCollectionViewCell_objectGraph))
  {

    goto LABEL_25;
  }

  v68[1] = *(v2 + OBJC_IVAR____TtC22SubscribePageExtension30ProductMediaCollectionViewCell_objectGraph);
  v69 = v44;
  v47 = *(v2 + OBJC_IVAR____TtC22SubscribePageExtension30ProductMediaCollectionViewCell_screenshotFetcher);
  if (v47)
  {

    v48 = sub_10074EC14();
    swift_beginAccess();
    v49 = *(v47 + 16);

    v50 = sub_10030C758(v48, v49);

    if (v50)
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v52 = Strong;
        [*(Strong + qword_10093CB50) setImage:v50];
      }
    }
  }

  else
  {
  }

  (*(v76 + 104))(v18, enum case for VideoFillMode.scaleAspectFit(_:), v16);
  sub_10074EC14();
  sub_10074F2A4();
  sub_100750504();

  v53 = sub_1007504F4();
  (*(*(v53 - 8) + 56))(v15, 0, 1, v53);
  sub_10074EBB4();
  sub_10074EBF4();
  LODWORD(v76) = sub_10074EBC4();
  sub_10074EBA4();
  sub_10074EC04();
  sub_100743F94();
  sub_100744504();
  v54 = v46;

  sub_100747D74();
  sub_1007464C4();
  sub_1007526E4();
  sub_10074EB94();
  v55 = v77;
  sub_10074EC24();
  v56 = sub_100741264();
  (*(*(v56 - 8) + 56))(v55, 0, 1, v56);
  v57 = v78;
  sub_10074EBE4();
  v58 = v72;
  v76 = v54;
  sub_10074EBD4();
  type metadata accessor for VideoView();
  sub_100116ABC(&qword_1009230E0, type metadata accessor for VideoView);
  v59 = sub_1007464A4();
  sub_10000C8CC(v58, &unk_1009281C0);
  sub_10000C8CC(v57, &unk_1009281C0);
  sub_10000C8CC(v55, &unk_100923970);
  sub_10000C8CC(&v80, &unk_1009276E0);
  v60 = v59;
  v61 = v71;
  sub_1003F89C8();
  swift_unknownObjectWeakAssign();
  v62 = swift_unknownObjectWeakLoadStrong();
  if (v62)
  {
    v63 = v62;
    v64 = [v61 contentView];
    [v64 addSubview:v63];

    [v61 setNeedsLayout];
  }

  sub_10074B184();
  sub_100752764();
  sub_100752D34();
  v65 = v80;
  v66 = swift_unknownObjectWeakLoadStrong();
  sub_100116ABC(&qword_100928E78, type metadata accessor for VideoCollectionViewCell);
  v67 = v69;
  sub_10074B164();

  (*(v73 + 8))(v75, v74);
}

void sub_1001167AC(void *a1)
{
  type metadata accessor for ScreenshotCollectionViewCell();
  v3 = swift_dynamicCastClass();
  if (v3)
  {
    v4 = *(*(v3 + OBJC_IVAR____TtC22SubscribePageExtension28ScreenshotCollectionViewCell_borderedScreenshotView) + OBJC_IVAR____TtC22SubscribePageExtension22BorderedScreenshotView_artworkView);
    v5 = a1;
    v9 = v4;
    sub_100743344();
  }

  else
  {
    type metadata accessor for VideoCollectionViewCell();
    if (swift_dynamicCastClass() && *(v1 + OBJC_IVAR____TtC22SubscribePageExtension30ProductMediaCollectionViewCell_objectGraph))
    {
      sub_10074B184();
      sub_100752764();
      v6 = a1;

      sub_100752D34();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        sub_100116ABC(&qword_1009230E0, type metadata accessor for VideoView);
      }

      sub_100116ABC(&qword_100928E78, type metadata accessor for VideoCollectionViewCell);
      v8 = v6;
      sub_10074B124();
    }
  }
}

void sub_1001169B8(void *a1, SEL *a2)
{
  objc_opt_self();
  v5 = swift_dynamicCastObjCClass();
  if (v5)
  {
    v6 = v5;
    if (*(v2 + OBJC_IVAR____TtC22SubscribePageExtension30ProductMediaCollectionViewCell_pageTraits))
    {
      swift_getObjectType();
      v7 = a1;
      swift_unknownObjectRetain();
      PageTraitEnvironment.pageColumnMargin.getter();
      v9 = v8;
      swift_unknownObjectRelease();
    }

    else
    {
      v10 = a1;
      v9 = 8.0;
    }

    [v6 *a2];
  }

  if (*(v2 + OBJC_IVAR____TtC22SubscribePageExtension30ProductMediaCollectionViewCell_pageTraits))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    PageTraitEnvironment.pageColumnMargin.getter();
    swift_unknownObjectRelease();
  }
}

uint64_t sub_100116ABC(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_100116BF8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CollectionViewTableLayout();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100116C50()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_100116CAC@<X0>(uint64_t a1@<X8>)
{
  v27 = a1;
  v1 = sub_100747524();
  v25 = *(v1 - 8);
  v26 = v1;
  __chkstk_darwin(v1);
  v24 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_10074F6E4();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v24 - v8;
  v10 = sub_10074F704();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  sub_100746914();

  v14 = v29;
  v15 = sub_1007537E4();

  if (v15 & 1) != 0 && (swift_getKeyPath(), sub_100746914(), , v16 = v28, v17 = sub_100753804(), v16, (v17 & 1) == 0) && (swift_getKeyPath(), sub_100746914(), , sub_10074F6F4(), (*(v11 + 8))(v13, v10), (*(v4 + 104))(v6, enum case for PageGrid.Direction.horizontal(_:), v3), v18 = sub_10074F6D4(), v19 = *(v4 + 8), v19(v6, v3), v19(v9, v3), (v18))
  {
    (*(v25 + 104))(v24, enum case for ComponentSeparator.Position.top(_:), v26);
    v20 = v27;
    sub_100747534();
    v21 = 0;
  }

  else
  {
    v21 = 1;
    v20 = v27;
  }

  v22 = sub_100747564();
  return (*(*(v22 - 8) + 56))(v20, v21, 1, v22);
}

UIColor sub_100117080(double a1, uint64_t a2, UIColor *a3)
{
  sub_10000D198();
  v5 = objc_opt_self();
  v6 = [v5 blackColor];
  v7 = [v6 colorWithAlphaComponent:a1];

  v8 = [v5 whiteColor];
  v9 = [v8 colorWithAlphaComponent:a1];

  v10.super.isa = v7;
  v11.super.isa = v9;
  result.super.isa = sub_100753EC4(v10, v11).super.isa;
  a3->super.isa = result.super.isa;
  return result;
}

char *sub_100117158(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC22SubscribePageExtension26InteractiveTitleHeaderView_titleView;
  type metadata accessor for TitleHeaderView(0);
  *&v4[v9] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v10 = OBJC_IVAR____TtC22SubscribePageExtension26InteractiveTitleHeaderView_currentState;
  v11 = type metadata accessor for InteractiveSectionBackgroundScrollObserver.State(0);
  (*(*(v11 - 8) + 56))(&v4[v10], 1, 1, v11);
  v17.receiver = v4;
  v17.super_class = type metadata accessor for InteractiveTitleHeaderView();
  v12 = objc_msgSendSuper2(&v17, "initWithFrame:", a1, a2, a3, a4);
  v13 = objc_opt_self();
  v14 = v12;
  v15 = [v13 clearColor];
  [v14 setBackgroundColor:v15];

  [v14 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];
  [v14 addSubview:*&v14[OBJC_IVAR____TtC22SubscribePageExtension26InteractiveTitleHeaderView_titleView]];

  return v14;
}

id sub_10011757C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for InteractiveTitleHeaderView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for InteractiveTitleHeaderView()
{
  result = qword_100928F78;
  if (!qword_100928F78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100117654()
{
  sub_1000501F0();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1001176F4@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC22SubscribePageExtension26InteractiveTitleHeaderView_currentState;
  swift_beginAccess();
  return sub_100117A4C(v3 + v4, a1);
}

id sub_100117774(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10000C518(&unk_100924290);
  __chkstk_darwin(v4 - 8);
  v6 = &aBlock[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &aBlock[-1] - v8;
  v10 = type metadata accessor for InteractiveSectionBackgroundScrollObserver.State(0);
  v11 = sub_1002EF020();
  v12 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension26InteractiveTitleHeaderView_titleView];
  result = [v12 overrideUserInterfaceStyle];
  if (result != v11)
  {
    v14 = OBJC_IVAR____TtC22SubscribePageExtension26InteractiveTitleHeaderView_currentState;
    swift_beginAccess();
    sub_100117A4C(v2 + v14, v9);
    v15 = *(v10 - 8);
    v16 = (*(v15 + 48))(v9, 1, v10);
    sub_100117ABC(v9);
    if (v16 == 1)
    {
      [v12 setOverrideUserInterfaceStyle:v11];
    }

    else
    {
      v17 = objc_opt_self();
      v18 = swift_allocObject();
      *(v18 + 16) = v2;
      *(v18 + 24) = v11;
      aBlock[4] = sub_100117BCC;
      aBlock[5] = v18;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1000CF7B0;
      aBlock[3] = &unk_100868438;
      v19 = _Block_copy(aBlock);
      v20 = v2;

      [v17 transitionWithView:v12 duration:5308420 options:v19 animations:0 completion:0.4];
      _Block_release(v19);
    }

    sub_100052C34(a1, v6);
    (*(v15 + 56))(v6, 0, 1, v10);
    swift_beginAccess();
    sub_100117B24(v6, v2 + v14);
    return swift_endAccess();
  }

  return result;
}

uint64_t sub_100117A4C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C518(&unk_100924290);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100117ABC(uint64_t a1)
{
  v2 = sub_10000C518(&unk_100924290);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100117B24(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C518(&unk_100924290);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100117B94()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100117BE8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100117C00(uint64_t a1, uint64_t a2)
{
  v38 = a2;
  v4 = sub_10000C518(&qword_100934110);
  __chkstk_darwin(v4 - 8);
  v35 = &v29 - v5;
  v34 = sub_10074C3E4();
  v6 = *(v34 - 8);
  __chkstk_darwin(v34);
  v33 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_10000C518(&unk_100925560);
  v36 = *(v37 - 8);
  __chkstk_darwin(v37);
  v9 = &v29 - v8;
  v10 = sub_10000C518(&unk_1009259B0);
  __chkstk_darwin(v10 - 8);
  v12 = &v29 - v11;
  v13 = sub_10074D734();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_10000C518(&unk_100925540);
  __chkstk_darwin(v17 - 8);
  v19 = &v29 - v18;
  v31 = *(v2 + OBJC_IVAR____TtC22SubscribePageExtension16ArcadeLockupView_offerButton);
  v32 = a1;
  v30 = sub_100743DA4();
  v20 = sub_100743DC4();
  v21 = sub_100743DB4();
  (*(v14 + 104))(v16, enum case for OfferButtonPresenterViewAlignment.center(_:), v13);
  (*(v14 + 56))(v12, 1, 1, v13);
  sub_100118364(&unk_100925550, &type metadata accessor for OfferButtonPresenterViewAlignment);
  sub_10074A9C4();
  v22 = sub_10000C518(&unk_10092EEA0);
  (*(*(v22 - 8) + 56))(v19, 0, 1, v22);
  v23 = v34;
  (*(v6 + 104))(v33, enum case for OfferButtonSubtitlePosition.left(_:), v34);
  (*(v6 + 56))(v35, 1, 1, v23);
  sub_100118364(&qword_1009332C0, &type metadata accessor for OfferButtonSubtitlePosition);
  sub_10074A9C4();
  sub_10015DE40(v30, v20, v21, v19, v9, v38, 0, 0);

  (*(v36 + 8))(v9, v37);
  sub_10005652C(v19);
  sub_100743D84();
  sub_100743D94();
  sub_10074B294();
  sub_100752764();
  sub_100752D34();
  v24 = sub_10074B1F4();
  swift_allocObject();
  v25 = sub_10074B1D4();
  sub_100118364(&qword_100928F88, type metadata accessor for ArcadeLockupView);
  v26 = swift_unknownObjectRetain();
  sub_10074B1E4();
  v39[3] = v24;
  v39[0] = v25;
  v27 = OBJC_IVAR____TtC22SubscribePageExtension16ArcadeLockupView_offerLabelPresenter;
  swift_beginAccess();

  sub_1001183AC(v39, v26 + v27);
  swift_endAccess();
  [v26 setNeedsLayout];
}

id sub_1001181F0(uint64_t a1, uint64_t a2)
{
  v5 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension16ArcadeLockupView_subtitleLabel];
  result = [v5 text];
  if (!result)
  {
    if (!a2)
    {
      return result;
    }

    goto LABEL_10;
  }

  v7 = result;
  v8 = sub_100753094();
  v10 = v9;

  if (!a2)
  {

    v13 = 0;
    goto LABEL_12;
  }

  if (v8 != a1 || v10 != a2)
  {
    v12 = sub_100754754();

    if (v12)
    {
      return result;
    }

LABEL_10:
    v13 = sub_100753064();
LABEL_12:
    [v5 setText:v13];

    [v5 setHidden:sub_100753114() & 1];

    return [v2 setNeedsLayout];
  }
}

uint64_t sub_100118364(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1001183AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C518(&unk_100923520);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

double sub_10011841C()
{
  v0 = sub_100747C14();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100746884();
  v4 = sub_100118548();
  (*(v1 + 8))(v3, v0);
  return v4;
}

double sub_100118548()
{
  v0 = sub_1007473B4();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10074F704();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100747B84();
  sub_10074F674();
  v8 = *(v5 + 8);
  v8(v7, v4);
  sub_100747B84();
  sub_10074F5C4();
  v10 = v9;
  v8(v7, v4);
  v11 = sub_100747B94();
  v12 = type metadata accessor for SnapshotPageTraitEnvironment();
  v13 = objc_allocWithZone(v12);
  v14 = &v13[OBJC_IVAR____TtC22SubscribePageExtension28SnapshotPageTraitEnvironment_pageContainerSize];
  *v14 = v10;
  *(v14 + 1) = 0x7FEFFFFFFFFFFFFFLL;
  *&v13[OBJC_IVAR____TtC22SubscribePageExtension28SnapshotPageTraitEnvironment_traitCollection] = v11;
  v20.receiver = v13;
  v20.super_class = v12;
  v15 = objc_msgSendSuper2(&v20, "init");
  if (qword_100921850 != -1)
  {
    swift_once();
  }

  v16 = sub_10000D0FC(v0, qword_10093E790);
  __chkstk_darwin(v16);
  *(&v20 - 2) = v15;
  sub_10074F4B4();

  sub_100747BA4();
  sub_1007473D4();
  sub_100118888(&qword_100928F98, &type metadata accessor for ArcadeFooterLayout);
  sub_100750D34();
  v18 = v17;
  swift_unknownObjectRelease();
  (*(v1 + 8))(v3, v0);
  return v18;
}

uint64_t sub_100118888(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100118934()
{
  v0 = sub_10000C518(&unk_100925370);
  __chkstk_darwin(v0 - 8);
  v1 = sub_10000C518(&unk_100929040);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v6 - v3;
  sub_1007468F4();
  sub_100752994();
  sub_1000E9564();
  sub_100752954();
  return (*(v2 + 8))(v4, v1);
}

void sub_100118C90(uint64_t a1)
{
  v3 = sub_10074F314();
  __chkstk_darwin(v3 - 8);
  v4 = sub_10074F284();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {

    sub_10074F294();
    v8 = sub_10074F254();
    (*(v5 + 8))(v7, v4);
    sub_10074F374();
    v9 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension23QuoteCollectionViewCell_quoteView);
    v10 = OBJC_IVAR____TtC22SubscribePageExtension9QuoteView_artworkView;
    v11 = *(v9 + OBJC_IVAR____TtC22SubscribePageExtension9QuoteView_artworkView);
    sub_10074F324();
    sub_100743364();
    [v11 setContentMode:sub_10074F184()];
    sub_100747FB4();
    sub_1007433A4();
    if (!sub_10074F1E4())
    {
      sub_100016C60(0, &qword_100923500);
      sub_100753E34();
    }

    sub_100743224();

    [*(v9 + v10) setContentMode:v8];
    v12 = *(v9 + v10);
    sub_1007433C4();
    sub_10011B4B8(&qword_100925570, &type metadata accessor for ArtworkView);
    v13 = v12;
    sub_100744204();
  }
}

void sub_100118F20(uint64_t a1)
{
  swift_getObjectType();
  v3 = sub_10074F314();
  __chkstk_darwin(v3 - 8);
  v4 = sub_10074F284();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {

    sub_10074F294();
    v8 = sub_10074F254();
    (*(v5 + 8))(v7, v4);
    if (*(v1 + OBJC_IVAR____TtC22SubscribePageExtension31SmallBreakoutCollectionViewCell_pageTraits))
    {
      swift_getObjectType();
      swift_unknownObjectRetain();
      sub_100120D24();
      swift_unknownObjectRelease();
    }

    sub_10074F374();
    v9 = OBJC_IVAR____TtC22SubscribePageExtension31SmallBreakoutCollectionViewCell_iconView;
    v10 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension31SmallBreakoutCollectionViewCell_iconView);
    sub_10074F324();
    sub_100743364();
    [v10 setContentMode:sub_10074F184()];
    sub_100747FB4();
    sub_1007433A4();
    if (!sub_10074F1E4())
    {
      sub_100016C60(0, &qword_100923500);
      sub_100753E34();
    }

    sub_100743224();

    [*(v1 + v9) setContentMode:v8];
    v11 = *(v1 + v9);
    sub_1007433C4();
    sub_10011B4B8(&qword_100925570, &type metadata accessor for ArtworkView);
    v12 = v11;
    sub_100744204();
  }
}

void sub_100119200(uint64_t a1)
{
  v3 = sub_10074F314();
  __chkstk_darwin(v3 - 8);
  v4 = sub_10074F284();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {

    sub_10074F294();
    v8 = sub_10074F254();
    (*(v5 + 8))(v7, v4);
    v9 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension38TodayCardSmallLockupCollectionViewCell_lockupView);
    swift_beginAccess();
    sub_10074F374();
    v10 = OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_artworkView;
    v11 = *(v9 + OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_artworkView);
    sub_10074F324();
    sub_100743364();
    [v11 setContentMode:sub_10074F184()];
    sub_100747FB4();
    sub_1007433A4();
    if (!sub_10074F1E4())
    {
      sub_100016C60(0, &qword_100923500);
      sub_100753E34();
    }

    sub_100743224();

    [*(v9 + v10) setContentMode:v8];
    v12 = *(v9 + v10);
    sub_1007433C4();
    sub_10011B4B8(&qword_100925570, &type metadata accessor for ArtworkView);
    v13 = v12;
    sub_100744204();
  }
}

void sub_1001194B0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_10074F314();
  __chkstk_darwin(v6 - 8);
  v7 = sub_100747064();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10074F284();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v24 = a2;

    sub_10074F294();
    v15 = v3;
    v16 = sub_10074F254();
    (*(v12 + 8))(v14, v11);
    v17 = OBJC_IVAR____TtC22SubscribePageExtension35TodayCardMarketingLockupOverlayView_lockupView;
    v18 = v15;
    v19 = *(*(v15 + OBJC_IVAR____TtC22SubscribePageExtension35TodayCardMarketingLockupOverlayView_lockupView) + OBJC_IVAR____TtC22SubscribePageExtension19CrossLinkLockupView_lockupView);
    v20 = OBJC_IVAR____TtC22SubscribePageExtension15SmallLockupView_metrics;
    swift_beginAccess();
    (*(v8 + 16))(v10, v19 + v20, v7);
    sub_100746F34();
    (*(v8 + 8))(v10, v7);
    sub_10074F374();
    v21 = *(*(v18 + v17) + OBJC_IVAR____TtC22SubscribePageExtension19CrossLinkLockupView_artworkView);
    sub_10074F324();
    sub_100743364();
    [v21 setContentMode:sub_10074F184()];
    sub_100747FB4();
    sub_1007433A4();
    if (!sub_10074F1E4())
    {
      sub_100016C60(0, &qword_100923500);
      sub_100753E34();
    }

    sub_100743224();

    [*(*(v18 + v17) + OBJC_IVAR____TtC22SubscribePageExtension19CrossLinkLockupView_artworkView) setContentMode:v16];
    v22 = *(*(v18 + v17) + OBJC_IVAR____TtC22SubscribePageExtension19CrossLinkLockupView_artworkView);
    sub_1007433C4();
    sub_10011B4B8(&qword_100925570, &type metadata accessor for ArtworkView);
    v23 = v22;
    sub_100744204();
  }
}

void sub_100119858(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_10074F314();
  __chkstk_darwin(v6 - 8);
  v26 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10074A7B4();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v23 - v13;
  v15 = sub_10074F284();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v23 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v25 = a2;

    sub_10074F294();
    v23 = sub_10074F254();
    (*(v16 + 8))(v18, v15);
    v19 = [v3 traitCollection];
    v24 = v3;
    v20 = v3[OBJC_IVAR____TtC22SubscribePageExtension31RibbonBarItemCollectionViewCell_artworkSize + 16];
    if (sub_100753804())
    {
      sub_1001C1510(v19, v11);
    }

    else if (v20)
    {
      sub_1001C1848();
    }

    else
    {
      sub_1001C18E8();
    }

    v21 = v23;

    (*(v9 + 32))(v14, v11, v8);
    sub_10074A794();
    (*(v9 + 8))(v14, v8);
    sub_10074F374();
    v22 = *&v24[OBJC_IVAR____TtC22SubscribePageExtension31RibbonBarItemCollectionViewCell_artworkView];
    sub_10074F324();
    sub_100743364();
    [v22 setContentMode:sub_10074F184()];
    sub_100747FB4();
    sub_1007433A4();
    if (!sub_10074F1E4())
    {
      sub_100016C60(0, &qword_100923500);
      sub_100753E34();
    }

    sub_100743224();
    [v22 setContentMode:v21];
    sub_1007433C4();
    sub_10011B4B8(&qword_100925570, &type metadata accessor for ArtworkView);
    sub_100744204();
  }
}

void sub_100119C2C(uint64_t a1)
{
  v3 = sub_10074F314();
  __chkstk_darwin(v3 - 8);
  v4 = sub_10074F284();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {

    sub_10074F294();
    v8 = sub_10074F254();
    (*(v5 + 8))(v7, v4);
    if (qword_100921960 != -1)
    {
      swift_once();
    }

    v9 = sub_100741E54();
    sub_10000D0FC(v9, qword_100982740);
    sub_100741DC4();
    sub_10074F374();
    v10 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension37InAppPurchaseLockupCollectionViewCell_lockupView);
    v11 = OBJC_IVAR____TtC22SubscribePageExtension23InAppPurchaseLockupView_iconView;
    v12 = *(*(v10 + OBJC_IVAR____TtC22SubscribePageExtension23InAppPurchaseLockupView_iconView) + OBJC_IVAR____TtC22SubscribePageExtension17InAppPurchaseView_artworkView);
    sub_10074F324();
    sub_100743364();
    [v12 setContentMode:sub_10074F184()];
    sub_100747FB4();
    sub_1007433A4();
    if (!sub_10074F1E4())
    {
      sub_100016C60(0, &qword_100923500);
      sub_100753E34();
    }

    sub_100743224();

    [*(*(v10 + v11) + OBJC_IVAR____TtC22SubscribePageExtension17InAppPurchaseView_artworkView) setContentMode:v8];
    v13 = *(*(v10 + v11) + OBJC_IVAR____TtC22SubscribePageExtension17InAppPurchaseView_artworkView);
    sub_1007433C4();
    sub_10011B4B8(&qword_100925570, &type metadata accessor for ArtworkView);
    v14 = v13;
    sub_100744204();
  }
}

void sub_100119F20(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_10074F314();
  __chkstk_darwin(v6 - 8);
  v7 = sub_100747064();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10074F284();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v23 = a2;

    sub_10074F294();
    v15 = sub_10074F254();
    (*(v12 + 8))(v14, v11);
    v16 = v15;
    v17 = *(v3 + OBJC_IVAR____TtC22SubscribePageExtension29SmallLockupCollectionViewCell_lockupView);
    v18 = OBJC_IVAR____TtC22SubscribePageExtension15SmallLockupView_metrics;
    swift_beginAccess();
    (*(v8 + 16))(v10, v17 + v18, v7);
    sub_100746F34();
    (*(v8 + 8))(v10, v7);
    sub_10074F374();
    v19 = OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_artworkView;
    v20 = *(v17 + OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_artworkView);
    sub_10074F324();
    sub_100743364();
    [v20 setContentMode:sub_10074F184()];
    sub_100747FB4();
    sub_1007433A4();
    if (!sub_10074F1E4())
    {
      sub_100016C60(0, &qword_100923500);
      sub_100753E34();
    }

    sub_100743224();

    [*(v17 + v19) setContentMode:v16];
    v21 = *(v17 + v19);
    sub_1007433C4();
    sub_10011B4B8(&qword_100925570, &type metadata accessor for ArtworkView);
    v22 = v21;
    sub_100744204();
  }
}

void sub_10011A2A0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v29 = v3;
  ObjectType = swift_getObjectType();
  v6 = sub_10074F314();
  __chkstk_darwin(v6 - 8);
  v28 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10000C518(&qword_100928550);
  v26 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v23 - v9;
  v11 = sub_100747814();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10074F284();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v23 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v25 = a2;

    sub_10074F294();
    v24 = sub_10074F254();
    (*(v16 + 8))(v18, v15);
    v19 = v29;
    v20 = [v29 traitCollection];
    sub_10024BBC0(v14);

    sub_1007477E4();
    (*(v12 + 8))(v14, v11);
    v21 = v24;
    v30 = v19;
    sub_100743464();
    (*(v26 + 8))(v10, v8);
    sub_10074F374();
    v22 = *&v19[OBJC_IVAR____TtC22SubscribePageExtension30MediumLockupCollectionViewCell_artworkView];
    sub_10074F324();
    sub_100743364();
    [v22 setContentMode:sub_10074F184()];
    sub_100747FB4();
    sub_1007433A4();
    if (!sub_10074F1E4())
    {
      sub_100016C60(0, &qword_100923500);
      sub_100753E34();
    }

    sub_100743224();
    [v22 setContentMode:v21];
    sub_1007433C4();
    sub_10011B4B8(&qword_100925570, &type metadata accessor for ArtworkView);
    sub_100744204();
  }
}

void sub_10011A69C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10074F314();
  __chkstk_darwin(v4 - 8);
  v5 = sub_10074F284();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v16 - v10;
  if (a1)
  {

    sub_10074F294();
    sub_10074F244();
    sub_10011B4B8(&qword_1009290A0, &type metadata accessor for Artwork.Crop);
    v12 = sub_100753014();
    v13 = *(v6 + 8);
    v13(v8, v5);
    if (v12)
    {
      v14 = 6;
    }

    else
    {
      v14 = sub_10074F254();
    }

    v13(v11, v5);
    sub_10074F374();
    v15 = *(v2 + OBJC_IVAR____TtC22SubscribePageExtension29LargeLockupCollectionViewCell_artworkView);
    sub_10074F324();
    sub_100743364();
    [v15 setContentMode:sub_10074F184()];
    sub_100747FB4();
    sub_1007433A4();
    if (!sub_10074F1E4())
    {
      sub_100016C60(0, &qword_100923500);
      sub_100753E34();
    }

    sub_100743224();
    [v15 setContentMode:v14];
    sub_1007433C4();
    sub_10011B4B8(&qword_100925570, &type metadata accessor for ArtworkView);
    sub_100744204();
  }
}

void sub_10011A99C(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v4 = sub_10074F314();
  __chkstk_darwin(v4 - 8);
  v5 = sub_10074F284();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {

    sub_10074F294();
    v9 = sub_10074F254();
    (*(v6 + 8))(v8, v5);
    v10 = sub_10011B4B8(&qword_1009290A8, type metadata accessor for BrickCollectionViewCell);
    (*(v10 + 24))(ObjectType, v10);
    sub_10074F374();
    v11 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension23BrickCollectionViewCell_artworkView);
    sub_10074F324();
    sub_100743364();
    [v11 setContentMode:sub_10074F184()];
    sub_100747FB4();
    sub_1007433A4();
    if (!sub_10074F1E4())
    {
      sub_100016C60(0, &qword_100923500);
      sub_100753E34();
    }

    sub_100743224();
    [v11 setContentMode:v9];
    sub_1007433C4();
    sub_10011B4B8(&qword_100925570, &type metadata accessor for ArtworkView);
    sub_100744204();
  }
}

void sub_10011AC50(uint64_t a1)
{
  v3 = sub_10074F314();
  __chkstk_darwin(v3 - 8);
  v4 = sub_10074F284();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {

    sub_10074F294();
    v8 = sub_10074F254();
    (*(v5 + 8))(v7, v4);
    sub_10074F374();
    v9 = *(v1 + qword_1009805D0);
    sub_10074F324();
    sub_100743364();
    [v9 setContentMode:sub_10074F184()];
    sub_100747FB4();
    sub_1007433A4();
    if (!sub_10074F1E4())
    {
      sub_100016C60(0, &qword_100923500);
      sub_100753E34();
    }

    sub_100743224();
    [v9 setContentMode:v8];
    sub_1007433C4();
    sub_10011B4B8(&qword_100925570, &type metadata accessor for ArtworkView);
    sub_100744204();
  }
}

char *sub_10011AEB8(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = OBJC_IVAR____TtC22SubscribePageExtension23QuoteCollectionViewCell_itemLayoutContext;
  v11 = sub_1007469A4();
  (*(*(v11 - 8) + 56))(&v4[v10], 1, 1, v11);
  v12 = &v4[OBJC_IVAR____TtC22SubscribePageExtension23QuoteCollectionViewCell_preferredArtworkSize];
  type metadata accessor for QuoteView();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  *v12 = 0;
  *(v12 + 1) = 0;
  v14 = [objc_allocWithZone(ObjCClassFromMetadata) init];
  *&v4[OBJC_IVAR____TtC22SubscribePageExtension23QuoteCollectionViewCell_quoteView] = v14;
  v19.receiver = v4;
  v19.super_class = ObjectType;
  v15 = objc_msgSendSuper2(&v19, "initWithFrame:", a1, a2, a3, a4);
  v16 = [v15 contentView];
  [v16 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

  v17 = [v15 contentView];
  [v17 addSubview:*&v15[OBJC_IVAR____TtC22SubscribePageExtension23QuoteCollectionViewCell_quoteView]];

  return v15;
}

uint64_t type metadata accessor for QuoteCollectionViewCell()
{
  result = qword_100929078;
  if (!qword_100929078)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10011B29C()
{
  sub_100016898();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_10011B37C()
{
  v1 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension23QuoteCollectionViewCell_quoteView);
  v2 = OBJC_IVAR____TtC22SubscribePageExtension9QuoteView_artworkView;
  v3 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension9QuoteView_artworkView);
  sub_100743204();

  v4 = *(v1 + v2);
  sub_1007433C4();
  sub_10011B4B8(&qword_100925570, &type metadata accessor for ArtworkView);
  v5 = v4;
  sub_100744274();
}

uint64_t sub_10011B460(uint64_t a1)
{
  result = sub_10011B4B8(&unk_100929090, type metadata accessor for QuoteCollectionViewCell);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_10011B4B8(unint64_t *a1, void (*a2)(uint64_t))
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

_BYTE *sub_10011B550(char a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v35 = a2;
  v36 = a3;
  isEscapingClosureAtFileLocation = sub_10074AB44();
  v7 = *(isEscapingClosureAtFileLocation - 8);
  __chkstk_darwin(isEscapingClosureAtFileLocation);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100750534();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10000C518(&unk_100928A40);
  __chkstk_darwin(v14 - 8);
  v16 = &v35 - v15;
  v4[OBJC_IVAR____TtC22SubscribePageExtension14CountBadgeView_size] = a1 & 1;
  if ((a1 & 1) == 0)
  {
    if (qword_100921540 != -1)
    {
      swift_once();
    }

    v17 = qword_100981CF8;
    goto LABEL_7;
  }

  if (qword_100921548 != -1)
  {
    goto LABEL_13;
  }

  while (1)
  {
    v17 = qword_100981D10;
LABEL_7:
    v18 = sub_10000D0FC(v10, v17);
    (*(v11 + 16))(v13, v18, v10);
    (*(v11 + 32))(v16, v13, v10);
    v19 = *(v11 + 56);
    v11 += 56;
    v19(v16, 0, 1, v10);
    v20 = *(v7 + 104);
    v7 += 104;
    v20(v9, enum case for DirectionalTextAlignment.none(_:), isEscapingClosureAtFileLocation);
    v21 = objc_allocWithZone(sub_100745C84());
    *&v4[OBJC_IVAR____TtC22SubscribePageExtension14CountBadgeView_countLabel] = sub_100745C74();
    v22 = type metadata accessor for CountBadgeView();
    v39.receiver = v4;
    v39.super_class = v22;
    v23 = objc_msgSendSuper2(&v39, "initWithFrame:", 0.0, 0.0, 0.0, 0.0, v35);
    v24 = objc_opt_self();
    v9 = swift_allocObject();
    *(v9 + 2) = v23;
    v9[24] = a1 & 1;
    v10 = swift_allocObject();
    *(v10 + 16) = sub_10011C108;
    *(v10 + 24) = v9;
    aBlock[4] = sub_10011C13C;
    v38 = v10;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10011B528;
    aBlock[3] = &unk_100868568;
    v16 = _Block_copy(aBlock);
    v13 = v38;
    v4 = v23;

    [v24 performWithoutAnimation:v16];
    _Block_release(v16);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      break;
    }

    __break(1u);
LABEL_13:
    swift_once();
  }

  v25 = objc_opt_self();
  v26 = [v25 redColor];
  [v4 setBackgroundColor:v26];

  v27 = OBJC_IVAR____TtC22SubscribePageExtension14CountBadgeView_countLabel;
  v28 = *&v4[OBJC_IVAR____TtC22SubscribePageExtension14CountBadgeView_countLabel];
  if (v36)
  {
    v29 = v28;
    v30 = sub_100753064();
  }

  else
  {
    v31 = v28;
    v30 = 0;
  }

  [v28 setText:v30];

  v32 = *&v4[v27];
  v33 = [v25 whiteColor];
  [v32 setTextColor:v33];

  [v4 addSubview:*&v4[v27]];
  [v4 setUserInteractionEnabled:0];

  return v4;
}

id sub_10011BB14(uint64_t a1, uint64_t a2)
{
  v4 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension14CountBadgeView_countLabel];
  v5 = [v4 text];
  if (a2)
  {
    if (v5)
    {

      v6 = sub_100753064();

LABEL_9:
      [v4 setText:v6];

      return [v2 setNeedsLayout];
    }

    v14 = sub_100753064();

    [v4 setText:v14];

    v15 = objc_opt_self();
    v16 = swift_allocObject();
    *(v16 + 16) = v2;
    v23 = sub_10011C1DC;
    v24 = v16;
    v19 = _NSConcreteStackBlock;
    v20 = 1107296256;
    v21 = sub_1000CF7B0;
    v22 = &unk_100868658;
    v9 = _Block_copy(&v19);
    v17 = v2;

    [v15 animateWithDuration:4 delay:v9 options:0 animations:0.2 completion:0.0];
  }

  else
  {
    if (!v5)
    {
      v6 = 0;
      goto LABEL_9;
    }

    v7 = objc_opt_self();
    v8 = swift_allocObject();
    *(v8 + 16) = v2;
    v23 = sub_10011C1B4;
    v24 = v8;
    v19 = _NSConcreteStackBlock;
    v20 = 1107296256;
    v21 = sub_1000CF7B0;
    v22 = &unk_1008685B8;
    v9 = _Block_copy(&v19);
    v10 = v2;

    v11 = swift_allocObject();
    *(v11 + 16) = v10;
    v23 = sub_10011C1BC;
    v24 = v11;
    v19 = _NSConcreteStackBlock;
    v20 = 1107296256;
    v21 = sub_100144DD8;
    v22 = &unk_100868608;
    v12 = _Block_copy(&v19);
    v13 = v10;

    [v7 animateWithDuration:4 delay:v9 options:v12 animations:0.2 completion:0.0];
    _Block_release(v12);
  }

  _Block_release(v9);
  return [v2 setNeedsLayout];
}

id sub_10011C000()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CountBadgeView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_10011C07C()
{
  result = qword_1009290E8;
  if (!qword_1009290E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009290E8);
  }

  return result;
}

uint64_t sub_10011C0D0()
{

  return _swift_deallocObject(v0, 25, 7);
}

id sub_10011C108()
{
  v1 = 9.0;
  if (*(v0 + 24))
  {
    v1 = 12.0;
  }

  return [*(v0 + 16) _setContinuousCornerRadius:v1];
}

uint64_t sub_10011C164(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10011C17C()
{

  return _swift_deallocObject(v0, 24, 7);
}

id sub_10011C1DC()
{
  v1 = *(v0 + 16);
  v3[0] = 0x3FF0000000000000;
  v3[1] = 0;
  v3[2] = 0;
  v3[3] = 0x3FF0000000000000;
  v3[4] = 0;
  v3[5] = 0;
  return [v1 setTransform:v3];
}

id sub_10011C21C()
{
  v1 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension14CountBadgeView_countLabel);
  result = [v1 text];
  if (result)
  {
    v3 = result;
    sub_100753094();

    v4 = sub_100753194();

    if (v4 >= 2)
    {
      return [v1 sizeThatFits:{0.0, 0.0}];
    }
  }

  return result;
}

uint64_t sub_10011C328(void *a1)
{
  if (*v1 != *a1)
  {
    return 0;
  }

  if ((sub_1007544C4() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for InfoDebugSetting();
  v2 = swift_dynamicCastClass();
  if (!v2)
  {
    return 0;
  }

  if (v2[7] != v1[7] || v2[8] != v1[8])
  {
    v4 = v2;
    v5 = sub_100754754();
    v2 = v4;
    if ((v5 & 1) == 0)
    {
      return 0;
    }
  }

  v6 = v2[10];
  v7 = v1[10];
  v8 = (v6 | v7) == 0;
  if (!v6 || !v7)
  {
    return v8;
  }

  if (v2[9] == v1[9] && v6 == v7)
  {
    return 1;
  }

  return sub_100754754();
}

void sub_10011C454()
{
  sub_1007544D4();
  sub_100753174();
  if (*(v0 + 80))
  {
    sub_100754854(1u);

    sub_100753174();
  }

  else
  {
    sub_100754854(0);
  }
}

uint64_t sub_10011C4E4()
{
}

uint64_t sub_10011C514()
{
  sub_100016994(v0 + 16);

  return swift_deallocClassInstance();
}

unint64_t sub_10011C5B4()
{
  result = qword_1009291C0;
  if (!qword_1009291C0)
  {
    sub_100749B24();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009291C0);
  }

  return result;
}

uint64_t sub_10011C60C()
{
  v0 = sub_100752624();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100742AB4();
  sub_100752764();
  sub_100752D34();
  v4 = sub_100749B04();
  v6 = v5;
  v7 = sub_100749B14() & 1;
  v11._countAndFlagsBits = v4;
  v11._object = v6;
  sub_100742A84(v11, v7);

  sub_10000C518(&qword_100930CA0);
  (*(v1 + 104))(v3, enum case for ActionOutcome.performed(_:), v0);
  v8 = sub_100752D84();

  return v8;
}

uint64_t sub_10011C77C(unint64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_44;
  }

  v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (!(a2 >> 62))
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5 != result)
    {
      goto LABEL_46;
    }

LABEL_5:
    if (!v5)
    {
      goto LABEL_29;
    }

    v7 = v3 & 0xFFFFFFFFFFFFFF8;
    v8 = (v3 & 0xFFFFFFFFFFFFFF8) + 32;
    if (v3 < 0)
    {
      v7 = v3;
    }

    if (v4)
    {
      v8 = v7;
    }

    v9 = a2 & 0xFFFFFFFFFFFFFF8;
    v10 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
    if (a2 < 0)
    {
      v9 = a2;
    }

    if (a2 >> 62)
    {
      v10 = v9;
    }

    if (v8 == v10)
    {
LABEL_29:
      LOBYTE(v4) = 1;
      return v4 & 1;
    }

    if (v5 < 0)
    {
      __break(1u);
      return result;
    }

    if (((a2 | v3) & 0xC000000000000001) != 0)
    {
      v11 = a2 & 0xC000000000000001;
      v12 = 4;
      while (1)
      {
        v4 = v12 - 4;
        v13 = v12 - 3;
        if (__OFADD__(v12 - 4, 1))
        {
          __break(1u);
LABEL_40:
          __break(1u);
          goto LABEL_41;
        }

        if ((v3 & 0xC000000000000001) != 0)
        {
          sub_100754574();
          if (!v11)
          {
            goto LABEL_24;
          }
        }

        else
        {
          if (v4 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_42;
          }

          if (!v11)
          {
LABEL_24:
            if (v4 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_43;
            }

            v14 = *(a2 + 8 * v12);

            goto LABEL_26;
          }
        }

        v14 = sub_100754574();
LABEL_26:
        LOBYTE(v4) = sub_10007A834(v14);

        if (v4)
        {
          ++v12;
          if (v13 != v5)
          {
            continue;
          }
        }

        return v4 & 1;
      }
    }

    v15 = (v3 + 32);
    v16 = (a2 + 32);
    v17 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v18 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v19 = v5 - 1;
    while (1)
    {
      if (!v17)
      {
        goto LABEL_40;
      }

      if (!v18)
      {
        break;
      }

      v20 = *v15++;
      a2 = v20;
      v21 = *v16++;
      v3 = v21;

      v4 = sub_10007A834(v22);

      v24 = v19-- != 0;
      if (v4)
      {
        --v18;
        --v17;
        if (v24)
        {
          continue;
        }
      }

      return v4 & 1;
    }

LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    v5 = sub_100754664();
  }

  result = sub_100754664();
  if (v5 == result)
  {
    goto LABEL_5;
  }

LABEL_46:
  LOBYTE(v4) = 0;
  return v4 & 1;
}

uint64_t sub_10011C9B8(uint64_t a1, uint64_t a2)
{
  v4 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_32;
  }

  v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  if (a2 >> 62)
  {
    result = sub_100754664();
    if (v5 == result)
    {
      goto LABEL_5;
    }

LABEL_34:
    v16 = 0;
    return v16 & 1;
  }

  result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5 != result)
  {
    goto LABEL_34;
  }

LABEL_5:
  if (!v5)
  {
    goto LABEL_28;
  }

  v7 = a1 & 0xFFFFFFFFFFFFFF8;
  v8 = (a1 & 0xFFFFFFFFFFFFFF8) + 32;
  if (a1 < 0)
  {
    v7 = a1;
  }

  if (v4)
  {
    v8 = v7;
  }

  v9 = a2 & 0xFFFFFFFFFFFFFF8;
  v10 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
  if (a2 < 0)
  {
    v9 = a2;
  }

  if (a2 >> 62)
  {
    v10 = v9;
  }

  if (v8 == v10)
  {
LABEL_28:
    v16 = 1;
    return v16 & 1;
  }

  if ((v5 & 0x8000000000000000) == 0)
  {
    v11 = a2 & 0xC000000000000001;
    v12 = 4;
    while (1)
    {
      v13 = v12 - 4;
      v14 = v12 - 3;
      if (__OFADD__(v12 - 4, 1))
      {
        __break(1u);
LABEL_30:
        __break(1u);
LABEL_31:
        __break(1u);
LABEL_32:
        v5 = sub_100754664();
        goto LABEL_3;
      }

      if ((a1 & 0xC000000000000001) != 0)
      {
        v4 = sub_100754574();
        if (v11)
        {
          goto LABEL_20;
        }
      }

      else
      {
        if (v13 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_30;
        }

        v4 = *(a1 + 8 * v12);

        if (v11)
        {
LABEL_20:
          v15 = sub_100754574();
          goto LABEL_25;
        }
      }

      if (v13 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_31;
      }

      v15 = *(a2 + 8 * v12);

LABEL_25:
      v16 = (*(*v4 + 96))(v15);

      if (v16)
      {
        ++v12;
        if (v14 != v5)
        {
          continue;
        }
      }

      return v16 & 1;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10011CB8C(uint64_t a1, uint64_t a2)
{
  v4 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_46;
  }

  v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (!(a2 >> 62))
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5 != result)
    {
      return 0;
    }

LABEL_5:
    if (!v5)
    {
      return 1;
    }

    v7 = a1 & 0xFFFFFFFFFFFFFF8;
    v8 = (a1 & 0xFFFFFFFFFFFFFF8) + 32;
    if (a1 < 0)
    {
      v7 = a1;
    }

    if (v4)
    {
      v8 = v7;
    }

    v9 = a2 & 0xFFFFFFFFFFFFFF8;
    v10 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
    if (a2 < 0)
    {
      v9 = a2;
    }

    if (a2 >> 62)
    {
      v10 = v9;
    }

    if (v8 == v10)
    {
      return 1;
    }

    if (v5 < 0)
    {
      __break(1u);
      return result;
    }

    if (((a2 | a1) & 0xC000000000000001) != 0)
    {
      v11 = a2 & 0xC000000000000001;
      for (i = 4; ; ++i)
      {
        v16 = i - 4;
        v17 = i - 3;
        if (__OFADD__(i - 4, 1))
        {
          __break(1u);
LABEL_42:
          __break(1u);
          goto LABEL_43;
        }

        if ((a1 & 0xC000000000000001) != 0)
        {
          v4 = sub_100754574();
          if (!v11)
          {
            goto LABEL_29;
          }
        }

        else
        {
          if (v16 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_44;
          }

          v4 = *(a1 + 8 * i);

          if (!v11)
          {
LABEL_29:
            if (v16 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_45;
            }

            v13 = *(a2 + 8 * i);

            goto LABEL_19;
          }
        }

        v13 = sub_100754574();
LABEL_19:
        v14 = *(v4 + 16);

        v4 = *(v13 + 16);

        result = v14 == v4;
        if (v14 != v4 || v17 == v5)
        {
          return result;
        }
      }
    }

    v18 = (a1 + 32);
    v19 = (a2 + 32);
    v20 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v21 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v22 = v5 - 1;
    while (1)
    {
      if (!v20)
      {
        goto LABEL_42;
      }

      if (!v21)
      {
        break;
      }

      v24 = *v18++;
      v23 = v24;
      v25 = *v19++;
      v26 = *(v23 + 16);
      v27 = *(v25 + 16);
      v29 = v22-- != 0;
      result = v26 == v27;
      if (v26 == v27)
      {
        --v21;
        --v20;
        if (v29)
        {
          continue;
        }
      }

      return result;
    }

LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    v5 = sub_100754664();
  }

  result = sub_100754664();
  if (v5 == result)
  {
    goto LABEL_5;
  }

  return 0;
}

uint64_t sub_10011CDF0(unint64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_44;
  }

  v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (!(a2 >> 62))
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5 != result)
    {
      goto LABEL_46;
    }

LABEL_5:
    if (!v5)
    {
      goto LABEL_29;
    }

    v7 = v3 & 0xFFFFFFFFFFFFFF8;
    v8 = (v3 & 0xFFFFFFFFFFFFFF8) + 32;
    if (v3 < 0)
    {
      v7 = v3;
    }

    if (v4)
    {
      v8 = v7;
    }

    v9 = a2 & 0xFFFFFFFFFFFFFF8;
    v10 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
    if (a2 < 0)
    {
      v9 = a2;
    }

    if (a2 >> 62)
    {
      v10 = v9;
    }

    if (v8 == v10)
    {
LABEL_29:
      v18 = 1;
      return v18 & 1;
    }

    if (v5 < 0)
    {
      __break(1u);
      return result;
    }

    v4 = sub_10000D198();
    if (((a2 | v3) & 0xC000000000000001) != 0)
    {
      v11 = a2 & 0xC000000000000001;
      v12 = 4;
      while (1)
      {
        v13 = v12 - 4;
        v14 = v12 - 3;
        if (__OFADD__(v12 - 4, 1))
        {
          __break(1u);
LABEL_40:
          __break(1u);
          goto LABEL_41;
        }

        if ((v3 & 0xC000000000000001) != 0)
        {
          v15 = sub_100754574();
          if (!v11)
          {
            goto LABEL_24;
          }
        }

        else
        {
          if (v13 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_42;
          }

          v15 = *(v3 + 8 * v12);
          if (!v11)
          {
LABEL_24:
            if (v13 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_43;
            }

            v16 = *(a2 + 8 * v12);
            goto LABEL_26;
          }
        }

        v16 = sub_100754574();
LABEL_26:
        v17 = v16;
        v18 = sub_100753FC4();

        if (v18)
        {
          ++v12;
          if (v14 != v5)
          {
            continue;
          }
        }

        return v18 & 1;
      }
    }

    v19 = (v3 + 32);
    v20 = (a2 + 32);
    v21 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v22 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v23 = v5 - 1;
    while (1)
    {
      if (!v21)
      {
        goto LABEL_40;
      }

      if (!v22)
      {
        break;
      }

      v25 = *v19++;
      v24 = v25;
      v26 = *v20++;
      a2 = v24;
      v3 = v26;
      v18 = sub_100753FC4();

      v28 = v23-- != 0;
      if (v18)
      {
        --v22;
        --v21;
        if (v28)
        {
          continue;
        }
      }

      return v18 & 1;
    }

LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    v5 = sub_100754664();
  }

  result = sub_100754664();
  if (v5 == result)
  {
    goto LABEL_5;
  }

LABEL_46:
  v18 = 0;
  return v18 & 1;
}

uint64_t sub_10011D030(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 32);
    v4 = (a2 + 32);
    do
    {
      v6 = *v3++;
      v5 = v6;
      v7 = *v4;
      if (v6 == 6)
      {
        if (v7 != 6)
        {
          return 0;
        }
      }

      else if (v5 == 5)
      {
        if (v7 != 5)
        {
          return 0;
        }
      }

      else if (v5 == 4)
      {
        if (v7 != 4)
        {
          return 0;
        }
      }

      else if ((v7 - 7) > 0xFFFFFFFC || v5 != v7)
      {
        return 0;
      }

      ++v4;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t sub_10011D0CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10074ED34();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v8);
  v11 = &v25 - v10;
  v12 = *(a1 + 16);
  if (v12 != *(a2 + 16))
  {
    v22 = 0;
    return v22 & 1;
  }

  if (!v12 || a1 == a2)
  {
    v22 = 1;
    return v22 & 1;
  }

  v13 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v14 = a1 + v13;
  v15 = a2 + v13;
  v17 = *(v5 + 16);
  v16 = v5 + 16;
  v18 = (v16 - 8);
  v25 = *(v16 + 56);
  v26 = v17;
  while (1)
  {
    v19 = v26;
    result = (v26)(v11, v14, v4, v9);
    if (!v12)
    {
      break;
    }

    v21 = v16;
    v19(v7, v15, v4);
    sub_10011D844(&qword_100929298, 255, &type metadata accessor for AdamId);
    v22 = sub_100753014();
    v23 = *v18;
    (*v18)(v7, v4);
    v23(v11, v4);
    if (v22)
    {
      v15 += v25;
      v14 += v25;
      v24 = v12-- == 1;
      v16 = v21;
      if (!v24)
      {
        continue;
      }
    }

    return v22 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_10011D32C(uint64_t a1, uint64_t a2, void (*a3)(void), unint64_t *a4, void (*a5)(uint64_t))
{
  v7 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_32;
  }

  v8 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  if (a2 >> 62)
  {
    v21 = a3;
    result = sub_100754664();
    a3 = v21;
    if (v8 == result)
    {
      goto LABEL_5;
    }

LABEL_34:
    v18 = 0;
    return v18 & 1;
  }

  result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v8 != result)
  {
    goto LABEL_34;
  }

LABEL_5:
  if (!v8)
  {
    goto LABEL_28;
  }

  v10 = a1 & 0xFFFFFFFFFFFFFF8;
  v11 = (a1 & 0xFFFFFFFFFFFFFF8) + 32;
  if (a1 < 0)
  {
    v10 = a1;
  }

  if (v7)
  {
    v11 = v10;
  }

  v12 = a2 & 0xFFFFFFFFFFFFFF8;
  v13 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
  if (a2 < 0)
  {
    v12 = a2;
  }

  if (a2 >> 62)
  {
    v13 = v12;
  }

  if (v11 == v13)
  {
LABEL_28:
    v18 = 1;
    return v18 & 1;
  }

  if ((v8 & 0x8000000000000000) == 0)
  {
    a3(0);
    v14 = a2 & 0xC000000000000001;
    v15 = 4;
    v7 = v8;
    while (1)
    {
      v16 = v15 - 4;
      v17 = v15 - 3;
      if (__OFADD__(v15 - 4, 1))
      {
        __break(1u);
LABEL_30:
        __break(1u);
LABEL_31:
        __break(1u);
LABEL_32:
        v19 = a3;
        v20 = sub_100754664();
        a3 = v19;
        v8 = v20;
        goto LABEL_3;
      }

      if ((a1 & 0xC000000000000001) != 0)
      {
        sub_100754574();
        if (v14)
        {
          goto LABEL_20;
        }
      }

      else
      {
        if (v16 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_30;
        }

        if (v14)
        {
LABEL_20:
          sub_100754574();
          goto LABEL_25;
        }
      }

      if (v16 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_31;
      }

LABEL_25:
      sub_10011D844(a4, 255, a5);
      v18 = sub_100753014();

      if (v18)
      {
        ++v15;
        if (v17 != v7)
        {
          continue;
        }
      }

      return v18 & 1;
    }
  }

  __break(1u);
  return result;
}

void sub_10011D53C(uint64_t a1)
{
  sub_100753174();
  sub_100753174();
  v3 = *(v1 + 48);
  if (v3 >> 62)
  {
    v7 = sub_100754664();
    sub_100754844(v7);
    v4 = sub_100754664();
    if (!v4)
    {
      return;
    }
  }

  else
  {
    sub_100754844(*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10));
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v4)
    {
      return;
    }
  }

  if (v4 < 1)
  {
    __break(1u);
  }

  else
  {
    for (i = 0; i != v4; ++i)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v6 = sub_100754574();
      }

      else
      {
        v6 = *(v3 + 8 * i + 32);
      }

      (*(*v6 + 104))(a1);
    }
  }
}

uint64_t sub_10011D64C()
{

  return swift_deallocClassInstance();
}

Swift::Int sub_10011D6B8()
{
  sub_100754834();
  sub_10011D53C(v1);
  return sub_100754884();
}

Swift::Int sub_10011D720()
{
  sub_100754834();
  sub_10011D53C(v1);
  return sub_100754884();
}

uint64_t sub_10011D7B4(void *a1, void *a2)
{
  v4 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v4 && (sub_100754754() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[4] == a2[4] && a1[5] == a2[5];
  if (!v5 && (sub_100754754() & 1) == 0)
  {
    return 0;
  }

  v6 = a1[6];
  v7 = a2[6];

  return sub_10011C9B8(v6, v7);
}

uint64_t sub_10011D844(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

void sub_10011D9C8(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  v5 = v4;
  v10 = sub_100754724();
  v11 = *(v10 - 8);
  v112 = v10;
  v113 = v11;
  __chkstk_darwin(v10);
  v13 = v102 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100743B04();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = v102 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for StarRatingControl();
  v114.receiver = v4;
  v114.super_class = v18;
  objc_msgSendSuper2(&v114, "drawRect:", a1, a2, a3, a4);
  v19 = UIGraphicsGetCurrentContext();
  v20 = [v4 tintColor];
  if (v20)
  {
    v21 = v20;
    v22 = [v20 CGColor];

    if (v19)
    {
      CGContextSetFillColorWithColor(v19, v22);
    }

    v104 = v13;
    v105 = v22;
    v106 = v19;
    [v5 bounds];
    CGRectGetMidY(v120);
    v24 = [v5 traitCollection];
    v109 = v5;
    if (qword_1009202D8 != -1)
    {
      swift_once();
    }

    v115.is_nil = qword_1009292A0;
    v103 = qword_1009292A0;
    v115.value._rawValue = 0;
    isa = sub_1007537C4(v115, v23).super.isa;
    v102[1] = sub_100016C60(0, &qword_1009448C0);
    v111 = UIFontTextStyleTitle2;
    v26 = sub_100753A64();
    v27 = enum case for SystemImage.starFill(_:);
    v28 = *(v15 + 104);
    v108 = v15 + 104;
    v28(v17, enum case for SystemImage.starFill(_:), v14);
    v29 = [v26 configurationWithTraitCollection:{isa, v28}];
    v30 = v14;
    v107 = v14;
    v31 = v29;
    v32 = sub_100743AE4();

    v110 = *(v15 + 8);
    v110(v17, v30);
    v33 = [v32 imageWithRenderingMode:2];

    [v33 size];
    v34 = [v109 traitCollection];
    v116.value._rawValue = 0;
    LOBYTE(v33) = v103;
    v116.is_nil = v103;
    v35 = sub_1007537C4(v116, v118).super.isa;
    v36 = sub_100753A64();
    v37 = v27;
    v38 = v107;
    v28(v17, v37, v107);
    v39 = [v36 configurationWithTraitCollection:v35];
    v40 = sub_100743AE4();

    v110(v17, v38);
    v41 = [v40 imageWithRenderingMode:2];

    v42 = [v109 traitCollection];
    v117.value._rawValue = 0;
    v117.is_nil = v33;
    v43 = sub_1007537C4(v117, v119).super.isa;
    v44 = sub_100753A64();
    v45 = v107;
    (v102[0])(v17, enum case for SystemImage.star(_:), v107);
    v46 = [v44 configurationWithTraitCollection:v43];
    v47 = sub_100743AE4();

    v110(v17, v45);
    v110 = [v47 imageWithRenderingMode:2];

    v111 = v41;
    v48 = v41;
    v49 = v109;
    [(NSString *)v48 size];
    v51 = v50;
    v52 = [v49 traitCollection];
    LOBYTE(v42) = sub_1007537F4();

    if (v42)
    {
      v121.origin.x = a1;
      v121.origin.y = a2;
      v121.size.width = a3;
      v121.size.height = a4;
      v53.n128_f64[0] = CGRectGetMaxX(v121);
    }

    else
    {
      v53.n128_f64[0] = v51 + 12.0;
      v54.n128_u64[0] = 0;
    }

    v55 = v104;
    v56 = enum case for FloatingPointRoundingRule.down(_:);
    v57 = v112;
    v58 = v113;
    v59 = *(v113 + 104);
    (v59)(v104, enum case for FloatingPointRoundingRule.down(_:), v112, v53, v54);
    sub_100753D84();
    v61 = v60;
    v63 = v62;
    v64 = *(v58 + 8);
    v113 = v58 + 8;
    v64(v55, v57);
    v65 = OBJC_IVAR____TtC22SubscribePageExtension17StarRatingControl_rating;
    if (*&v49[OBJC_IVAR____TtC22SubscribePageExtension17StarRatingControl_rating])
    {
      v66 = v111;
    }

    else
    {
      v66 = v110;
    }

    [(NSString *)v66 drawAtPoint:v61, v63];
    v67 = [v49 traitCollection];
    v68 = sub_1007537F4();

    if (v68)
    {
      v122.origin.x = a1;
      v122.origin.y = a2;
      v122.size.width = a3;
      v122.size.height = a4;
      CGRectGetMaxX(v122);
    }

    v69 = v112;
    v59(v55, v56, v112);
    sub_100753D84();
    v71 = v70;
    v73 = v72;
    v64(v55, v69);
    if (*&v49[v65] <= 1uLL)
    {
      v74 = v110;
    }

    else
    {
      v74 = v111;
    }

    [(NSString *)v74 drawAtPoint:v71, v73];
    v75 = [v49 traitCollection];
    v76 = sub_1007537F4();

    if (v76)
    {
      v123.origin.x = a1;
      v123.origin.y = a2;
      v123.size.width = a3;
      v123.size.height = a4;
      CGRectGetMaxX(v123);
    }

    v77 = v112;
    v59(v55, v56, v112);
    sub_100753D84();
    v79 = v78;
    v81 = v80;
    v64(v55, v77);
    if (*&v49[v65] <= 2uLL)
    {
      v82 = v110;
    }

    else
    {
      v82 = v111;
    }

    [(NSString *)v82 drawAtPoint:v79, v81];
    v83 = [v49 traitCollection];
    v84 = sub_1007537F4();

    if (v84)
    {
      v124.origin.x = a1;
      v124.origin.y = a2;
      v124.size.width = a3;
      v124.size.height = a4;
      CGRectGetMaxX(v124);
    }

    v85 = v112;
    v59(v55, v56, v112);
    sub_100753D84();
    v87 = v86;
    v89 = v88;
    v64(v55, v85);
    if (*&v49[v65] <= 3uLL)
    {
      v90 = v110;
    }

    else
    {
      v90 = v111;
    }

    [(NSString *)v90 drawAtPoint:v87, v89];
    v91 = [v49 traitCollection];
    v92 = sub_1007537F4();

    if (v92)
    {
      v125.origin.x = a1;
      v125.origin.y = a2;
      v125.size.width = a3;
      v125.size.height = a4;
      CGRectGetMaxX(v125);
    }

    v93 = v112;
    v59(v55, v56, v112);
    sub_100753D84();
    v95 = v94;
    v97 = v96;
    v64(v55, v93);
    v98 = *&v49[v65];
    v100 = v110;
    v99 = v111;
    if (v98 <= 4)
    {
      v101 = v110;
    }

    else
    {
      v101 = v111;
    }

    [(NSString *)v101 drawAtPoint:v95, v97];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_10011E440(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  [v4 locationInView:v5];
  sub_10011E5CC(v6);
  v7 = *&v5[OBJC_IVAR____TtC22SubscribePageExtension17StarRatingControl_rating];
  *&v5[OBJC_IVAR____TtC22SubscribePageExtension17StarRatingControl_rating] = v8;
  if (v7 != v8)
  {
    [v5 setNeedsDisplay];
  }

  return 1;
}

void sub_10011E5CC(double a1)
{
  v2 = v1;
  v4 = sub_100743B04();
  v5 = *(v4 - 8);
  *&v6 = __chkstk_darwin(v4).n128_u64[0];
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [v1 traitCollection];
  if (qword_1009202D8 != -1)
  {
    swift_once();
  }

  v26.is_nil = qword_1009292A0;
  v26.value._rawValue = 0;
  isa = sub_1007537C4(v26, v9).super.isa;
  sub_100016C60(0, &qword_1009448C0);
  v12 = sub_100753A64();
  (*(v5 + 104))(v8, enum case for SystemImage.starFill(_:), v4);
  v13 = [v12 configurationWithTraitCollection:isa];
  v14 = sub_100743AE4();

  (*(v5 + 8))(v8, v4);
  v15 = [v14 imageWithRenderingMode:2];

  [v15 size];
  v17 = v16;

  v18 = (v17 + 12.0) * 5.0;
  v19 = [v2 traitCollection];
  LOBYTE(v15) = sub_1007537F4();

  [v2 bounds];
  MidX = CGRectGetMidX(v27);
  v21 = a1 - (MidX - v18 * 0.5);
  v22 = v18 * 0.5 + MidX - a1;
  if ((v15 & 1) == 0)
  {
    v22 = v21;
  }

  v23 = v22 / (v18 / 5.0);
  if (v23 > 5.0)
  {
    v23 = 5.0;
  }

  if (v23 <= 1.0)
  {
    v23 = 1.0;
  }

  v24 = ceil(v23);
  if ((*&v24 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_14;
  }

  if (v24 <= -1.0)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v24 >= 1.84467441e19)
  {
LABEL_15:
    __break(1u);
  }
}

void sub_10011EB30(void *a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  if (a3)
  {
    sub_100753094();
    v6 = a1;
    v7 = sub_100753064();
  }

  else
  {
    v8 = a1;
    v7 = 0;
  }

  v9.receiver = a1;
  v9.super_class = type metadata accessor for StarRatingControl();
  objc_msgSendSuper2(&v9, *a4, v7);
}

void *sub_10011EC40()
{
  v1 = v0;
  v2 = 0;
  v3 = _swiftEmptyArrayStorage;
  v21 = _swiftEmptyArrayStorage;
  do
  {
    if (v2 >= 5)
    {
      v4 = &selRef_accessibilitySetStarRatingFive;
      if (v2 != 5)
      {
        v22._object = 0x800000010076C240;
        v22._countAndFlagsBits = 0xD00000000000001ALL;
        v24._countAndFlagsBits = 0;
        v24._object = 0xE000000000000000;
        sub_10074B194(v22, v2, v24);
LABEL_2:

        goto LABEL_3;
      }
    }

    else
    {
      v4 = off_1008686F0[v2];
    }

    v5 = *v4;
    v23._object = 0x800000010076C240;
    v23._countAndFlagsBits = 0xD00000000000001ALL;
    v25._countAndFlagsBits = 0;
    v25._object = 0xE000000000000000;
    sub_10074B194(v23, v2, v25);
    if (!v5)
    {
      goto LABEL_2;
    }

    v20 = type metadata accessor for StarRatingControl();
    v19[0] = v1;
    v6 = v1;
    v7 = sub_100753064();

    v8 = v20;
    if (v20)
    {
      v9 = sub_10000C888(v19, v20);
      v10 = *(v8 - 8);
      v11 = __chkstk_darwin(v9);
      v13 = &v19[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v10 + 16))(v13, v11);
      v14 = sub_100754734();
      (*(v10 + 8))(v13, v8);
      sub_10000C620(v19);
    }

    else
    {
      v14 = 0;
    }

    v15 = [objc_allocWithZone(UIAccessibilityCustomAction) initWithName:v7 target:v14 selector:v5];

    swift_unknownObjectRelease();
    v16 = v15;
    sub_100753284();
    if (*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_100753304();
    }

    sub_100753344();

    v3 = v21;
LABEL_3:
    ++v2;
  }

  while (v2 != 6);
  return v3;
}

uint64_t sub_10011EF74(uint64_t a1)
{
  v3 = sub_1007521E4();
  v37 = *(v3 - 8);
  v38 = v3;
  __chkstk_darwin(v3);
  v34 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100752224();
  v35 = *(v5 - 8);
  v36 = v5;
  __chkstk_darwin(v5);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100752244();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v13 = __chkstk_darwin(v12).n128_u64[0];
  v15 = &v33 - v14;
  v16 = OBJC_IVAR____TtC22SubscribePageExtension17StarRatingControl_rating;
  v17 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension17StarRatingControl_rating];
  *&v1[OBJC_IVAR____TtC22SubscribePageExtension17StarRatingControl_rating] = a1;
  if (v17 != a1)
  {
    [v1 setNeedsDisplay];
    a1 = *&v1[v16];
  }

  v18 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension17StarRatingControl_lastSentRating];
  *&v1[OBJC_IVAR____TtC22SubscribePageExtension17StarRatingControl_lastSentRating] = a1;
  if (v18 != a1)
  {
    [v1 sendActionsForControlEvents:4096];
  }

  v45._object = 0x800000010076C1D0;
  v45._countAndFlagsBits = 0xD000000000000017;
  v48._countAndFlagsBits = 0;
  v48._object = 0xE000000000000000;
  v19 = sub_1007458B4(v45, v48);
  v21 = v20;
  v46._countAndFlagsBits = 0xD00000000000001DLL;
  v46._object = 0x800000010076C1F0;
  v49._countAndFlagsBits = 0;
  v49._object = 0xE000000000000000;
  v22 = sub_1007458B4(v46, v49);
  v24 = v23;
  aBlock = v19;
  v40 = v21;

  v47._countAndFlagsBits = v22;
  v47._object = v24;
  sub_1007531B4(v47);

  v26 = aBlock;
  v25 = v40;
  sub_100016C60(0, &qword_100926D00);
  v27 = sub_100753774();
  sub_100752234();
  sub_1007522B4();
  v33 = *(v9 + 8);
  v33(v11, v8);
  v28 = swift_allocObject();
  *(v28 + 16) = v26;
  *(v28 + 24) = v25;
  v43 = sub_10011F6D8;
  v44 = v28;
  aBlock = _NSConcreteStackBlock;
  v40 = 1107296256;
  v41 = sub_1000CF7B0;
  v42 = &unk_1008686C8;
  v29 = _Block_copy(&aBlock);

  sub_100752204();
  aBlock = _swiftEmptyArrayStorage;
  sub_10002DCDC();
  sub_10000C518(&unk_10092F750);
  sub_1000A8054();
  v30 = v34;
  v31 = v38;
  sub_1007543A4();
  sub_100753734();
  _Block_release(v29);

  (*(v37 + 8))(v30, v31);
  (*(v35 + 8))(v7, v36);
  return (v33)(v15, v8);
}

void sub_10011F3DC()
{
  v0 = UIAccessibilityAnnouncementNotification;
  v1 = sub_100753064();
  UIAccessibilityPostNotification(v0, v1);
}

id sub_10011F644()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for StarRatingControl();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10011F6A0()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10011F6E0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_10011F6F8(char a1)
{
  v2 = sub_100743B04();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1009202D8 != -1)
  {
    swift_once();
  }

  v15.is_nil = qword_1009292A0;
  v15.value._rawValue = 0;
  v7.super.isa = sub_1007537C4(v15, v4).super.isa;
  sub_100016C60(0, &qword_1009448C0);
  v8 = sub_100753A64();
  v9 = &enum case for SystemImage.starFill(_:);
  if ((a1 & 1) == 0)
  {
    v9 = &enum case for SystemImage.star(_:);
  }

  (*(v3 + 104))(v6, *v9, v2);
  v10 = [v8 configurationWithTraitCollection:v7.super.isa];
  v11 = sub_100743AE4();

  (*(v3 + 8))(v6, v2);
  v12 = [v11 imageWithRenderingMode:2];

  return v12;
}

void sub_10011F8E8(void *a1)
{
  if (a1)
  {
    [a1 locationInView:v1];
    sub_10011E5CC(v2);
    v4 = OBJC_IVAR____TtC22SubscribePageExtension17StarRatingControl_rating;
    v5 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension17StarRatingControl_rating];
    *&v1[OBJC_IVAR____TtC22SubscribePageExtension17StarRatingControl_rating] = v3;
    if (v5 != v3)
    {
      [v1 setNeedsDisplay];
      v3 = *&v1[v4];
    }

    v6 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension17StarRatingControl_lastSentRating];
    *&v1[OBJC_IVAR____TtC22SubscribePageExtension17StarRatingControl_lastSentRating] = v3;
    if (v6 != v3)
    {

      [v1 sendActionsForControlEvents:4096];
    }
  }
}

uint64_t sub_10011F99C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v27[1] = a2;
  v3 = sub_100749154();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100754724();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for SmallBreakoutCollectionViewCell();
  swift_getObjectType();
  v11 = sub_100120D24();
  v31 = 0;
  v29 = 0u;
  v30 = 0u;
  v12 = [a1 traitCollection];
  v13 = sub_1007537D4();

  if (v13)
  {
    [a1 pageMarginInsets];
    if (JUScreenClassGetMain() == 1)
    {
      v14 = 160.0;
    }

    else
    {
      sub_100753994();
      sub_100753BA4();
      v19 = v18 + -10.0;
      v32[0] = 156.0;
      sub_1007502D4();
      sub_100750564();
      v21 = v20;
      (*(v8 + 8))(v10, v7);
      v14 = v19 - v21;
    }

    v33 = &type metadata for CGFloat;
    v34 = &protocol witness table for CGFloat;
    v32[0] = v14;
    sub_10000C8CC(&v29, &qword_100931390);
    *&v29 = 0x4014000000000000;
    *(&v30 + 1) = &type metadata for CGFloat;
    v31 = &protocol witness table for CGFloat;
  }

  else
  {
    [a1 pageContainerSize];
    v16 = v15;
    [a1 pageContainerSize];
    if (v17 >= v16)
    {
      PageTraitEnvironment.pageColumnWidth.getter();
    }

    else
    {
      [a1 pageMarginInsets];
      [a1 pageMarginInsets];
    }

    sub_1007486D4();
    v23 = v11 + v22 + v22;
    sub_100753994();
    sub_100753BA4();
    v33 = &type metadata for CGFloat;
    v34 = &protocol witness table for CGFloat;
    v32[0] = v24 + -10.0 - v23;
    sub_10000C8CC(&v29, &qword_100931390);
    v29 = 0u;
    v30 = 0u;
    v31 = 0;
  }

  sub_100120E28(&v29, v28);
  v27[12] = &protocol witness table for CGFloat;
  v27[11] = &type metadata for CGFloat;
  v27[8] = 0x4024000000000000;
  sub_10000C824(v32, v6);
  (*(v4 + 104))(v6, enum case for BreakoutDetailsLayout.DetailDimension.static(_:), v3);
  if (qword_1009202E8 != -1)
  {
    swift_once();
  }

  v25 = sub_10000C518(&qword_100929350);
  sub_10000D0FC(v25, qword_10097DBD0);
  v27[2] = a1;
  swift_unknownObjectRetain();
  sub_100743464();
  swift_unknownObjectRelease();
  sub_1007486E4();
  sub_10000C8CC(&v29, &qword_100931390);
  return sub_10000C620(v32);
}

uint64_t sub_10011FE8C()
{
  v0 = sub_10000C518(&qword_100928550);
  sub_100039C50(v0, qword_1009292F0);
  sub_10000D0FC(v0, qword_1009292F0);
  sub_10000C518(&unk_100923AE0);
  type metadata accessor for CGSize(0);
  return sub_100743484();
}

uint64_t sub_10011FF3C()
{
  v0 = sub_10000C518(&qword_100929350);
  sub_100039C50(v0, qword_10097DBD0);
  sub_10000D0FC(v0, qword_10097DBD0);
  sub_10000C518(&unk_100923AE0);
  sub_10000C518(&qword_100929358);
  return sub_100743484();
}

char *sub_10012000C(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = sub_10000C518(&qword_100932560);
  __chkstk_darwin(v11 - 8);
  v13 = &v38 - v12;
  v14 = type metadata accessor for BreakoutDetailsView.Config(0);
  __chkstk_darwin(v14);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_10000C518(&qword_100929360);
  __chkstk_darwin(v17 - 8);
  v19 = &v38 - v18;
  v20 = OBJC_IVAR____TtC22SubscribePageExtension31SmallBreakoutCollectionViewCell_itemLayoutContext;
  v21 = sub_1007469A4();
  (*(*(v21 - 8) + 56))(&v5[v20], 1, 1, v21);
  *&v5[OBJC_IVAR____TtC22SubscribePageExtension31SmallBreakoutCollectionViewCell_backgroundArtwork] = 0;
  v22 = OBJC_IVAR____TtC22SubscribePageExtension31SmallBreakoutCollectionViewCell_detailsView;
  if (qword_100921BB8 != -1)
  {
    swift_once();
  }

  v23 = sub_10000D0FC(v14, qword_100982C08);
  sub_100121090(v23, v16);
  sub_10000C518(&unk_100923AE0);
  sub_1007434A4();
  v24 = objc_allocWithZone(type metadata accessor for BreakoutDetailsView(0));
  *&v5[v22] = sub_10058E048(v19);
  *&v5[OBJC_IVAR____TtC22SubscribePageExtension31SmallBreakoutCollectionViewCell_pageTraits] = 0;
  sub_1007433C4();
  *&v5[OBJC_IVAR____TtC22SubscribePageExtension31SmallBreakoutCollectionViewCell_iconView] = sub_1007431D4();
  v39.receiver = v5;
  v39.super_class = ObjectType;
  v25 = objc_msgSendSuper2(&v39, "initWithFrame:", a1, a2, a3, a4);
  v26 = [v25 contentView];
  [v26 setClipsToBounds:1];

  v27 = [v25 contentView];
  [v27 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

  v28 = OBJC_IVAR____TtC22SubscribePageExtension31SmallBreakoutCollectionViewCell_iconView;
  v29 = qword_100920480;
  v30 = *&v25[OBJC_IVAR____TtC22SubscribePageExtension31SmallBreakoutCollectionViewCell_iconView];
  if (v29 != -1)
  {
    swift_once();
  }

  v31 = sub_10074F0C4();
  v32 = sub_10000D0FC(v31, qword_10097E140);
  v33 = *(v31 - 8);
  (*(v33 + 16))(v13, v32, v31);
  (*(v33 + 56))(v13, 0, 1, v31);
  sub_100743374();

  v34 = *&v25[v28];
  CGAffineTransformMakeRotation(&v38, -0.523598776);
  [v34 setTransform:&v38];
  v35 = [v25 contentView];
  [v35 addSubview:*&v25[v28]];

  v36 = [v25 contentView];
  [v36 addSubview:*&v25[OBJC_IVAR____TtC22SubscribePageExtension31SmallBreakoutCollectionViewCell_detailsView]];

  return v25;
}

id sub_1001205CC()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_100750354();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1007486F4();
  __chkstk_darwin(v7 - 8);
  v9 = v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100748714();
  v11 = *(v10 - 8);
  *&v12 = __chkstk_darwin(v10).n128_u64[0];
  v14 = v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21.receiver = v1;
  v21.super_class = ObjectType;
  result = objc_msgSendSuper2(&v21, "layoutSubviews", v12);
  v16 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension31SmallBreakoutCollectionViewCell_pageTraits];
  if (v16)
  {
    swift_unknownObjectRetain();
    sub_1007477B4();
    sub_10011F99C(v16, v9);
    v17 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension31SmallBreakoutCollectionViewCell_iconView];
    sub_100753C84();

    v18 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension31SmallBreakoutCollectionViewCell_detailsView];
    v20[3] = type metadata accessor for BreakoutDetailsView(0);
    v20[4] = &protocol witness table for UIView;
    v20[0] = v18;
    v19 = v18;
    sub_100748704();
    [v1 bounds];
    sub_1007486C4();
    swift_unknownObjectRelease();
    (*(v4 + 8))(v6, v3);
    return (*(v11 + 8))(v14, v10);
  }

  return result;
}

uint64_t sub_10012089C()
{
  ObjectType = swift_getObjectType();
  v11.receiver = v0;
  v11.super_class = ObjectType;
  objc_msgSendSuper2(&v11, "prepareForReuse");
  v2 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension31SmallBreakoutCollectionViewCell_detailsView];
  sub_10058CDC4();
  v10.receiver = v0;
  v10.super_class = ObjectType;
  objc_msgSendSuper2(&v10, "setBackgroundColor:", 0);
  v3 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension31SmallBreakoutCollectionViewCell_iconView];
  v9.receiver = v0;
  v9.super_class = ObjectType;
  v4 = v3;
  v5 = objc_msgSendSuper2(&v9, "backgroundColor");
  sub_100743224();

  v6 = (v2 + OBJC_IVAR____TtC22SubscribePageExtension19BreakoutDetailsView_callToActionButtonHandler);
  v7 = *(v2 + OBJC_IVAR____TtC22SubscribePageExtension19BreakoutDetailsView_callToActionButtonHandler);
  *v6 = 0;
  v6[1] = 0;
  return sub_1000164A8(v7);
}

uint64_t type metadata accessor for SmallBreakoutCollectionViewCell()
{
  result = qword_100929330;
  if (!qword_100929330)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100120AA8()
{
  sub_100016898();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

double sub_100120B64()
{
  if (!*(v0 + OBJC_IVAR____TtC22SubscribePageExtension31SmallBreakoutCollectionViewCell_pageTraits))
  {
    return 0.0;
  }

  swift_getObjectType();
  swift_getObjectType();
  swift_unknownObjectRetain();
  v1 = sub_100120D24();
  swift_unknownObjectRelease();
  return v1;
}

void sub_100120BF4()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC22SubscribePageExtension31SmallBreakoutCollectionViewCell_iconView;
  v3 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension31SmallBreakoutCollectionViewCell_iconView);
  sub_100743204();

  v4 = *(v1 + v2);
  sub_1007433C4();
  sub_100120DE0(&qword_100925570, &type metadata accessor for ArtworkView);
  v5 = v4;
  sub_100744274();
}

uint64_t sub_100120CCC(uint64_t a1)
{
  result = sub_100120DE0(&qword_100929348, type metadata accessor for SmallBreakoutCollectionViewCell);
  *(a1 + 8) = result;
  return result;
}

double sub_100120D24()
{
  if (JUScreenClassGetMain() == 1)
  {
    return 194.0;
  }

  if (qword_1009202E0 != -1)
  {
    swift_once();
  }

  v1 = sub_10000C518(&qword_100928550);
  sub_10000D0FC(v1, qword_1009292F0);
  sub_100743464();
  return v2;
}

uint64_t sub_100120DE0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100120E28(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C518(&qword_100931390);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_100120E98()
{
  v1 = v0;
  v2 = type metadata accessor for BreakoutDetailsView.Config(0);
  __chkstk_darwin(v2);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10000C518(&qword_100929360);
  __chkstk_darwin(v5 - 8);
  v7 = &v13 - v6;
  v8 = OBJC_IVAR____TtC22SubscribePageExtension31SmallBreakoutCollectionViewCell_itemLayoutContext;
  v9 = sub_1007469A4();
  (*(*(v9 - 8) + 56))(v1 + v8, 1, 1, v9);
  *(v1 + OBJC_IVAR____TtC22SubscribePageExtension31SmallBreakoutCollectionViewCell_backgroundArtwork) = 0;
  v10 = OBJC_IVAR____TtC22SubscribePageExtension31SmallBreakoutCollectionViewCell_detailsView;
  if (qword_100921BB8 != -1)
  {
    swift_once();
  }

  v11 = sub_10000D0FC(v2, qword_100982C08);
  sub_100121090(v11, v4);
  sub_10000C518(&unk_100923AE0);
  sub_1007434A4();
  v12 = objc_allocWithZone(type metadata accessor for BreakoutDetailsView(0));
  *(v1 + v10) = sub_10058E048(v7);
  *(v1 + OBJC_IVAR____TtC22SubscribePageExtension31SmallBreakoutCollectionViewCell_pageTraits) = 0;
  sub_100754644();
  __break(1u);
}

uint64_t sub_100121090(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BreakoutDetailsView.Config(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001210F4(uint64_t a1)
{
  if (a1 > 3)
  {
    if (a1 > 5)
    {
      if (a1 == 6)
      {
        return type metadata accessor for TodayCardArcadeLockupOverlayView();
      }

      if (a1 != 7)
      {
        goto LABEL_17;
      }

      return type metadata accessor for TodayCardChinSingleLockupView();
    }

    if (a1 == 4)
    {
      return type metadata accessor for TodayCardActionOverlayView();
    }

    else
    {
      return type metadata accessor for TodayCardThreeLineOverlayView();
    }
  }

  else
  {
    if (a1 <= 1)
    {
      if (a1)
      {
        if (a1 == 1)
        {
          return type metadata accessor for TodayCardMarketingLockupOverlayView();
        }

LABEL_17:
        result = sub_100754644();
        __break(1u);
        return result;
      }

      return type metadata accessor for TodayCardChinSingleLockupView();
    }

    if (a1 == 2)
    {
      return type metadata accessor for TodayCardChinLockupListView(0);
    }

    else
    {
      return type metadata accessor for TodayCardParagraphOverlayView();
    }
  }
}