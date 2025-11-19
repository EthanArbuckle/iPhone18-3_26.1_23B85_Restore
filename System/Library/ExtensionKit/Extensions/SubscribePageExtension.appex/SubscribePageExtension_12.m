void *sub_10015893C(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_100754664();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = _swiftEmptyArrayStorage;
  if (!v2)
  {
    return v3;
  }

  v17 = _swiftEmptyArrayStorage;
  result = sub_10001E208(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v17;
    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = 0;
      do
      {
        v6 = sub_100754574();
        v17 = v3;
        v8 = v3[2];
        v7 = v3[3];
        if (v8 >= v7 >> 1)
        {
          sub_10001E208((v7 > 1), v8 + 1, 1);
          v3 = v17;
        }

        ++v5;
        v15 = sub_100016C60(0, &qword_100922300);
        v16 = &protocol witness table for UIView;
        *&v14 = v6;
        v3[2] = v8 + 1;
        sub_100012160(&v14, &v3[5 * v8 + 4]);
      }

      while (v2 != v5);
    }

    else
    {
      v9 = (a1 + 32);
      do
      {
        v10 = *v9;
        v17 = v3;
        v12 = v3[2];
        v11 = v3[3];
        v13 = v10;
        if (v12 >= v11 >> 1)
        {
          sub_10001E208((v11 > 1), v12 + 1, 1);
          v3 = v17;
        }

        v15 = sub_100016C60(0, &qword_100922300);
        v16 = &protocol witness table for UIView;
        *&v14 = v13;
        v3[2] = v12 + 1;
        sub_100012160(&v14, &v3[5 * v12 + 4]);
        ++v9;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

void *sub_100158B1C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = _swiftEmptyArrayStorage;
  if (v1)
  {
    v10 = _swiftEmptyArrayStorage;
    sub_10001E594(0, v1, 0);
    v2 = _swiftEmptyArrayStorage;
    v4 = (a1 + 32);
    do
    {
      v5 = *v4;
      sub_10000C518(&qword_100929F30);
      sub_10000C518(&qword_1009233A0);
      swift_dynamicCast();
      v10 = v2;
      v7 = v2[2];
      v6 = v2[3];
      if (v7 >= v6 >> 1)
      {
        sub_10001E594((v6 > 1), v7 + 1, 1);
        v2 = v10;
      }

      v2[2] = v7 + 1;
      sub_100012160(&v9, &v2[5 * v7 + 4]);
      v4 += 2;
      --v1;
    }

    while (v1);
  }

  return v2;
}

char *sub_100158CB4(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  *&v2[OBJC_IVAR____TtC22SubscribePageExtension28RiverTodayCardBackgroundView_colors] = _swiftEmptyArrayStorage;
  v2[OBJC_IVAR____TtC22SubscribePageExtension28RiverTodayCardBackgroundView_isAnimating] = 0;
  v4 = OBJC_IVAR____TtC22SubscribePageExtension28RiverTodayCardBackgroundView_gradientBackingLayer;
  *&v2[v4] = [objc_allocWithZone(CALayer) init];
  v5 = OBJC_IVAR____TtC22SubscribePageExtension28RiverTodayCardBackgroundView_meshView;
  *&v2[v5] = [objc_allocWithZone(UIView) init];
  v6 = OBJC_IVAR____TtC22SubscribePageExtension28RiverTodayCardBackgroundView_meshTransforms;
  type metadata accessor for TodayCardMeshTransforms();
  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  *(v7 + 24) = 0;
  *&v2[v6] = v7;
  v8 = OBJC_IVAR____TtC22SubscribePageExtension28RiverTodayCardBackgroundView_riverViewStyling;
  v67 = sub_100746264();
  v69 = *(v67 - 8);
  (*(v69 + 16))(&v2[v8], a1, v67);
  v9 = sub_10015C4DC(0.0, 0.0, 1.0, 0.0);
  v10 = OBJC_IVAR____TtC22SubscribePageExtension28RiverTodayCardBackgroundView_leftMaskLayer;
  *&v2[OBJC_IVAR____TtC22SubscribePageExtension28RiverTodayCardBackgroundView_leftMaskLayer] = v9;
  v11 = v10;
  v64 = v10;
  v12 = sub_10015C4DC(1.0, 0.0, 0.0, 0.0);
  v70 = OBJC_IVAR____TtC22SubscribePageExtension28RiverTodayCardBackgroundView_rightMaskLayer;
  *&v2[OBJC_IVAR____TtC22SubscribePageExtension28RiverTodayCardBackgroundView_rightMaskLayer] = v12;
  v13 = sub_10015C4DC(0.0, 0.0, 0.0, 1.0);
  v14 = OBJC_IVAR____TtC22SubscribePageExtension28RiverTodayCardBackgroundView_topMaskLayer;
  *&v2[OBJC_IVAR____TtC22SubscribePageExtension28RiverTodayCardBackgroundView_topMaskLayer] = v13;
  v15 = sub_10015C4DC(0.0, 1.0, 0.0, 0.0);
  v65 = OBJC_IVAR____TtC22SubscribePageExtension28RiverTodayCardBackgroundView_bottomMaskLayer;
  *&v2[OBJC_IVAR____TtC22SubscribePageExtension28RiverTodayCardBackgroundView_bottomMaskLayer] = v15;
  v16 = *&v2[v14];
  v17 = *&v2[v11];
  v18 = objc_allocWithZone(CAGradientLayer);
  v19 = v16;
  v20 = v17;
  v21 = [v18 init];
  [v21 setType:kCAGradientLayerAxial];
  sub_10000C518(&unk_1009231A0);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_1007A7210;
  sub_100016C60(0, &qword_10092BE20);
  *(v22 + 32) = sub_100753F94(0.25);
  *(v22 + 40) = sub_100753F94(0.75);
  isa = sub_100753294().super.isa;

  [v21 setLocations:isa];

  [v21 setStartPoint:{0.0, 0.0}];
  [v21 setEndPoint:{1.0, 1.0}];
  [v19 setMask:v20];
  [v21 setMask:v19];

  *&v2[OBJC_IVAR____TtC22SubscribePageExtension28RiverTodayCardBackgroundView_topLeftGradientLayer] = v21;
  v24 = *&v2[v14];
  v25 = *&v2[v70];
  v26 = objc_allocWithZone(CAGradientLayer);
  v27 = v24;
  v28 = v25;
  v29 = [v26 init];
  [v29 setType:kCAGradientLayerAxial];
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_1007A7210;
  *(v30 + 32) = sub_100753F94(0.25);
  *(v30 + 40) = sub_100753F94(0.75);
  v31 = sub_100753294().super.isa;

  [v29 setLocations:v31];

  [v29 setStartPoint:{1.0, 0.0}];
  [v29 setEndPoint:{0.0, 1.0}];
  [v27 setMask:v28];
  [v29 setMask:v27];

  *&v2[OBJC_IVAR____TtC22SubscribePageExtension28RiverTodayCardBackgroundView_topRightGradientLayer] = v29;
  v32 = *&v2[v65];
  v33 = *&v2[v64];
  v34 = objc_allocWithZone(CAGradientLayer);
  v35 = v32;
  v36 = v33;
  v37 = [v34 init];
  [v37 setType:kCAGradientLayerAxial];
  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_1007A7210;
  *(v38 + 32) = sub_100753F94(0.25);
  *(v38 + 40) = sub_100753F94(0.75);
  v39 = sub_100753294().super.isa;

  [v37 setLocations:v39];

  [v37 setStartPoint:{0.0, 1.0}];
  [v37 setEndPoint:{1.0, 0.0}];
  [v35 setMask:v36];
  [v37 setMask:v35];

  *&v2[OBJC_IVAR____TtC22SubscribePageExtension28RiverTodayCardBackgroundView_bottomLeftGradientLayer] = v37;
  v40 = *&v2[v65];
  v41 = *&v2[v70];
  v42 = objc_allocWithZone(CAGradientLayer);
  v43 = v40;
  v44 = v41;
  v45 = [v42 init];
  [v45 setType:kCAGradientLayerAxial];
  v46 = swift_allocObject();
  *(v46 + 16) = xmmword_1007A7210;
  *(v46 + 32) = sub_100753F94(0.25);
  *(v46 + 40) = sub_100753F94(0.75);
  v47 = sub_100753294().super.isa;

  [v45 setLocations:v47];

  [v45 setStartPoint:{1.0, 1.0}];
  [v45 setEndPoint:{0.0, 0.0}];
  [v43 setMask:v44];
  [v45 setMask:v43];

  *&v2[OBJC_IVAR____TtC22SubscribePageExtension28RiverTodayCardBackgroundView_bottomRightGradientLayer] = v45;
  *&v2[OBJC_IVAR____TtC22SubscribePageExtension28RiverTodayCardBackgroundView_overlayLayer] = sub_10015C708();
  v72.receiver = v2;
  v72.super_class = ObjectType;
  v48 = objc_msgSendSuper2(&v72, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v49 = objc_opt_self();
  v50 = v48;
  v51 = [v49 whiteColor];
  [v50 setBackgroundColor:v51];

  v52 = OBJC_IVAR____TtC22SubscribePageExtension28RiverTodayCardBackgroundView_meshView;
  [v50 addSubview:*&v50[OBJC_IVAR____TtC22SubscribePageExtension28RiverTodayCardBackgroundView_meshView]];
  v53 = [*&v50[v52] layer];

  v54 = sub_1004B5954();

  [v53 setMeshTransform:v54];

  v55 = [*&v50[v52] layer];
  v56 = OBJC_IVAR____TtC22SubscribePageExtension28RiverTodayCardBackgroundView_gradientBackingLayer;
  [v55 addSublayer:*&v50[OBJC_IVAR____TtC22SubscribePageExtension28RiverTodayCardBackgroundView_gradientBackingLayer]];

  [*&v50[v56] addSublayer:*&v50[OBJC_IVAR____TtC22SubscribePageExtension28RiverTodayCardBackgroundView_topLeftGradientLayer]];
  [*&v50[v56] addSublayer:*&v50[OBJC_IVAR____TtC22SubscribePageExtension28RiverTodayCardBackgroundView_topRightGradientLayer]];
  [*&v50[v56] addSublayer:*&v50[OBJC_IVAR____TtC22SubscribePageExtension28RiverTodayCardBackgroundView_bottomLeftGradientLayer]];
  [*&v50[v56] addSublayer:*&v50[OBJC_IVAR____TtC22SubscribePageExtension28RiverTodayCardBackgroundView_bottomRightGradientLayer]];
  [*&v50[v56] addSublayer:*&v50[OBJC_IVAR____TtC22SubscribePageExtension28RiverTodayCardBackgroundView_overlayLayer]];
  v50[OBJC_IVAR____TtC22SubscribePageExtension28RiverTodayCardBackgroundView_isAnimating] = 1;
  v57 = objc_opt_self();
  v58 = [v57 defaultCenter];
  [v58 addObserver:v50 selector:"reduceMotionStatusDidChange:" name:UIAccessibilityReduceMotionStatusDidChangeNotification object:0];

  v59 = [v57 defaultCenter];
  [v59 addObserver:v50 selector:"willEnterForeground:" name:UIApplicationWillEnterForegroundNotification object:0];

  v60 = [v57 defaultCenter];
  [v60 addObserver:v50 selector:"didEnterBackground:" name:UIApplicationDidEnterBackgroundNotification object:0];

  sub_10000C518(&unk_1009249D0);
  v61 = swift_allocObject();
  *(v61 + 16) = xmmword_1007A5A00;
  *(v61 + 32) = sub_1007519E4();
  *(v61 + 40) = &protocol witness table for UITraitPreferredContentSizeCategory;
  v71[3] = ObjectType;
  v71[0] = v50;
  v62 = v50;
  sub_100753D34();

  swift_unknownObjectRelease();

  (*(v69 + 8))(a1, v67);
  sub_10000C620(v71);
  return v62;
}

void sub_1001596B4(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC22SubscribePageExtension28RiverTodayCardBackgroundView_colors;
  swift_beginAccess();

  LOBYTE(a1) = sub_10011CDF0(v4, a1);

  if (a1)
  {
    return;
  }

  v5 = *&v1[v3];
  if (v5 >> 62)
  {
    if (sub_100754664())
    {
      goto LABEL_4;
    }

LABEL_11:
    sub_1001597C8();
    return;
  }

  if (!*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_11;
  }

LABEL_4:
  if (v1[OBJC_IVAR____TtC22SubscribePageExtension28RiverTodayCardBackgroundView_isAnimating] == 1 && (v6 = [v1 window]) != 0 && (v6, (objc_msgSend(v1, "isHidden") & 1) == 0) && !UIAccessibilityIsReduceMotionEnabled())
  {
    sub_100159A90();
    sub_1001597C8();
    sub_10015A548();
    sub_10015AAC0();
    sub_10015AC04();
    sub_10015A740();
  }

  else
  {
    sub_100159A90();
  }
}

uint64_t sub_1001597C8()
{
  sub_10000C518(&unk_1009231A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1007AE0A0;
  v2 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension28RiverTodayCardBackgroundView_topLeftGradientLayer];
  *(inited + 32) = v2;
  v3 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension28RiverTodayCardBackgroundView_topRightGradientLayer];
  *(inited + 40) = v3;
  v4 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension28RiverTodayCardBackgroundView_bottomLeftGradientLayer];
  *(inited + 48) = v4;
  v5 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension28RiverTodayCardBackgroundView_bottomRightGradientLayer];
  *(inited + 56) = v5;
  v6 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension28RiverTodayCardBackgroundView_gradientBackingLayer];
  *(inited + 64) = v6;
  v7 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension28RiverTodayCardBackgroundView_meshView];
  v8 = v2;
  v9 = v3;
  v10 = v4;
  v11 = v5;
  v12 = v6;
  *(inited + 72) = [v7 layer];
  *(inited + 80) = [v0 layer];
  v13 = inited & 0xC000000000000001;
  if ((inited & 0xC000000000000001) != 0)
  {
    goto LABEL_24;
  }

  if (!*((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_23;
  }

  for (i = *(inited + 32); ; i = sub_100754574())
  {
    v15 = i;
    [i removeAllAnimations];

    if (v13)
    {
      v16 = sub_100754574();
    }

    else
    {
      if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
      {
        goto LABEL_23;
      }

      v16 = *(inited + 40);
    }

    v17 = v16;
    [v16 removeAllAnimations];

    if (v13)
    {
      v18 = sub_100754574();
    }

    else
    {
      if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) < 3uLL)
      {
        goto LABEL_23;
      }

      v18 = *(inited + 48);
    }

    v19 = v18;
    [v18 removeAllAnimations];

    if (v13)
    {
      v20 = sub_100754574();
    }

    else
    {
      if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) < 4uLL)
      {
        goto LABEL_23;
      }

      v20 = *(inited + 56);
    }

    v21 = v20;
    [v20 removeAllAnimations];

    if (v13)
    {
      v22 = sub_100754574();
    }

    else
    {
      if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) < 5uLL)
      {
        goto LABEL_23;
      }

      v22 = *(inited + 64);
    }

    v23 = v22;
    [v22 removeAllAnimations];

    if (v13)
    {
      v24 = sub_100754574();
    }

    else
    {
      if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) < 6uLL)
      {
        goto LABEL_23;
      }

      v24 = *(inited + 72);
    }

    v25 = v24;
    [v24 removeAllAnimations];

    if (v13)
    {
      break;
    }

    if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) >= 7uLL)
    {
      v26 = *(inited + 80);
      goto LABEL_22;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    ;
  }

  v26 = sub_100754574();
LABEL_22:
  v27 = v26;
  [v26 removeAllAnimations];

  swift_setDeallocating();
  return swift_arrayDestroy();
}

void sub_100159A90()
{
  v2 = OBJC_IVAR____TtC22SubscribePageExtension28RiverTodayCardBackgroundView_colors;
  swift_beginAccess();
  v3 = *(v0 + v2);
  if (!(v3 >> 62))
  {
    if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10) < 4)
    {
      return;
    }

LABEL_3:
    v4 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension28RiverTodayCardBackgroundView_topLeftGradientLayer);
    swift_beginAccess();
    v5 = *(v0 + v2);
    if ((v5 & 0xC000000000000001) != 0)
    {
      v42 = v4;
      v8 = sub_100754574();
    }

    else
    {
      if (!*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_22;
      }

      v6 = *(v5 + 32);
      v7 = v4;
      v8 = v6;
    }

    v9 = v8;
    swift_endAccess();
    sub_10000C518(&unk_1009231A0);
    inited = swift_initStackObject();
    v46 = xmmword_1007A7210;
    *(inited + 16) = xmmword_1007A7210;
    v1 = &stru_1008F2000;
    *(inited + 32) = [v9 CGColor];
    v11 = [v9 colorWithAlphaComponent:0.0];
    v12 = [v11 CGColor];

    *(inited + 40) = v12;
    sub_1001578EC(inited);
    swift_setDeallocating();
    swift_arrayDestroy();
    isa = sub_100753294().super.isa;

    [v4 setColors:isa];

    v14 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension28RiverTodayCardBackgroundView_topRightGradientLayer);
    swift_beginAccess();
    v15 = *(v0 + v2);
    if ((v15 & 0xC000000000000001) != 0)
    {
      v43 = v14;
      v18 = sub_100754574();
    }

    else
    {
      if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
      {
        __break(1u);
        goto LABEL_24;
      }

      v16 = *(v15 + 40);
      v17 = v14;
      v18 = v16;
    }

    v19 = v18;
    swift_endAccess();
    v20 = swift_initStackObject();
    *(v20 + 16) = xmmword_1007A7210;
    *(v20 + 32) = [v19 CGColor];
    v21 = [v19 colorWithAlphaComponent:0.0];
    v22 = [v21 CGColor];

    *(v20 + 40) = v22;
    sub_1001578EC(v20);
    swift_setDeallocating();
    swift_arrayDestroy();
    v23 = sub_100753294().super.isa;

    [v14 setColors:v23];

    v4 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension28RiverTodayCardBackgroundView_bottomLeftGradientLayer);
    swift_beginAccess();
    v24 = *(v0 + v2);
    if ((v24 & 0xC000000000000001) == 0)
    {
      if (*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10) < 3uLL)
      {
        __break(1u);
        goto LABEL_26;
      }

      v25 = *(v24 + 48);
      v26 = v4;
      v27 = v25;
      goto LABEL_12;
    }

LABEL_22:
    v44 = v4;
    v27 = sub_100754574();
LABEL_12:
    v28 = v27;
    swift_endAccess();
    v29 = swift_initStackObject();
    *(v29 + 16) = v46;
    *(v29 + 32) = [v28 v1[115].name];
    v30 = [v28 colorWithAlphaComponent:0.0];
    v31 = [v30 v1[115].name];

    *(v29 + 40) = v31;
    sub_1001578EC(v29);
    swift_setDeallocating();
    swift_arrayDestroy();
    v32 = sub_100753294().super.isa;

    [v4 setColors:v32];

    v14 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension28RiverTodayCardBackgroundView_bottomRightGradientLayer);
    swift_beginAccess();
    v33 = *(v0 + v2);
    if ((v33 & 0xC000000000000001) == 0)
    {
      if (*((v33 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 4uLL)
      {
        v34 = *(v33 + 56);
        v35 = v14;
        v36 = v34;
LABEL_15:
        v37 = v36;
        swift_endAccess();
        v38 = swift_initStackObject();
        *(v38 + 16) = v46;
        *(v38 + 32) = [v37 v1[115].name];
        v39 = [v37 colorWithAlphaComponent:0.0];
        v40 = [v39 v1[115].name];

        *(v38 + 40) = v40;
        sub_1001578EC(v38);
        swift_setDeallocating();
        swift_arrayDestroy();
        v41 = sub_100753294().super.isa;

        [v14 setColors:v41];

        return;
      }

LABEL_26:
      __break(1u);
      return;
    }

LABEL_24:
    v45 = v14;
    v36 = sub_100754574();
    goto LABEL_15;
  }

  if (sub_100754664() >= 4)
  {
    goto LABEL_3;
  }
}

void sub_10015A054()
{
  if (v0[OBJC_IVAR____TtC22SubscribePageExtension28RiverTodayCardBackgroundView_isAnimating] == 1 && (v1 = [v0 window]) != 0 && (v1, (objc_msgSend(v0, "isHidden") & 1) == 0) && !UIAccessibilityIsReduceMotionEnabled())
  {
    v5 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension28RiverTodayCardBackgroundView_gradientBackingLayer];
    v6 = sub_100753064();
    v7 = [v5 animationForKey:v6];

    if (v7)
    {
    }

    else
    {
      sub_100159A90();
      sub_1001597C8();
      sub_10015A548();
      sub_10015AAC0();
      sub_10015AC04();
    }

    sub_10015A740();
  }

  else
  {
    v2 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension28RiverTodayCardBackgroundView_gradientBackingLayer];
    v3 = sub_100753064();
    v4 = [v2 animationForKey:v3];

    if (v4)
    {

      sub_10015A944();
    }
  }
}

id sub_10015A1D0()
{
  v23.receiver = v0;
  v23.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v23, "layoutSubviews");
  v1 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension28RiverTodayCardBackgroundView_meshView];
  [v0 bounds];
  v2 = -CGRectGetMidY(v24);
  [v0 bounds];
  Width = CGRectGetWidth(v25);
  [v0 bounds];
  Height = CGRectGetHeight(v26);
  [v1 setFrame:{0.0, v2, Width, Height + Height}];
  v5 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension28RiverTodayCardBackgroundView_gradientBackingLayer];
  [v0 bounds];
  [v5 frame];
  [v5 setFrame:?];
  [v0 bounds];
  MidY = CGRectGetMidY(v27);
  [v5 frame];
  [v5 setFrame:{0.0, MidY}];
  [v0 bounds];
  v7 = CGRectGetWidth(v28);
  [v0 bounds];
  v8 = CGRectGetHeight(v29);
  v9 = hypot(v7, v8) * 1.2;
  [v0 bounds];
  v10 = CGRectGetWidth(v30);
  v11 = v10 + v10;
  if (v11 > v9)
  {
    v12 = v11;
  }

  else
  {
    v12 = v9;
  }

  [v0 bounds];
  v13 = CGRectGetHeight(v31);
  v14 = v13 + v13;
  if (v14 > v9)
  {
    v9 = v14;
  }

  [v0 bounds];
  v15 = (v12 - CGRectGetWidth(v32)) * -0.5;
  [v0 bounds];
  v16 = (v9 - CGRectGetHeight(v33)) * -0.5;
  [*&v0[OBJC_IVAR____TtC22SubscribePageExtension28RiverTodayCardBackgroundView_topRightGradientLayer] setFrame:{v15, v16, v12, v9}];
  v17 = OBJC_IVAR____TtC22SubscribePageExtension28RiverTodayCardBackgroundView_topLeftGradientLayer;
  [*&v0[OBJC_IVAR____TtC22SubscribePageExtension28RiverTodayCardBackgroundView_topLeftGradientLayer] setFrame:{v15, v16, v12, v9}];
  [*&v0[OBJC_IVAR____TtC22SubscribePageExtension28RiverTodayCardBackgroundView_bottomLeftGradientLayer] setFrame:{v15, v16, v12, v9}];
  [*&v0[OBJC_IVAR____TtC22SubscribePageExtension28RiverTodayCardBackgroundView_bottomRightGradientLayer] setFrame:{v15, v16, v12, v9}];
  [*&v0[OBJC_IVAR____TtC22SubscribePageExtension28RiverTodayCardBackgroundView_overlayLayer] setFrame:{v15, v16, v12, v9}];
  v18 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension28RiverTodayCardBackgroundView_topMaskLayer];
  [*&v0[v17] bounds];
  [v18 setFrame:?];
  v19 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension28RiverTodayCardBackgroundView_bottomMaskLayer];
  [*&v0[v17] bounds];
  [v19 setFrame:?];
  v20 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension28RiverTodayCardBackgroundView_leftMaskLayer];
  [*&v0[v17] bounds];
  [v20 setFrame:?];
  v21 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension28RiverTodayCardBackgroundView_rightMaskLayer];
  [*&v0[v17] bounds];
  return [v21 setFrame:?];
}

void sub_10015A548()
{
  v1 = v0;
  v2 = [objc_allocWithZone(CABasicAnimation) init];
  v3 = sub_100753064();
  [v2 setKeyPath:v3];

  v4 = sub_1004B5954();
  [v2 setFromValue:v4];

  v5 = sub_1004B59B4();
  [v2 setToValue:v5];

  v6 = v2;
  [v6 setDuration:3.5];
  [v6 setAutoreverses:1];
  LODWORD(v7) = 2139095039;
  [v6 setRepeatCount:v7];
  v8 = objc_allocWithZone(CAMediaTimingFunction);
  LODWORD(v9) = 1054280253;
  LODWORD(v10) = 1056293519;
  LODWORD(v11) = 1.0;
  v12 = [v8 initWithControlPoints:v9 :0.0 :v10 :v11];
  [v6 setTimingFunction:v12];

  v13 = [*(v1 + OBJC_IVAR____TtC22SubscribePageExtension28RiverTodayCardBackgroundView_meshView) layer];
  v14 = sub_100753064();
  [v13 addAnimation:v6 forKey:v14];
}

void sub_10015A740()
{
  v1 = [v0 layer];
  [v1 speed];
  v3 = v2;

  if (v3 != 1.0)
  {
    v4 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension28RiverTodayCardBackgroundView_gradientBackingLayer];
    v5 = sub_100753064();
    v6 = [v4 animationForKey:v5];

    if (v6)
    {

      v7 = [v0 layer];
      [v7 timeOffset];
      v9 = v8;

      v10 = [v0 layer];
      LODWORD(v11) = 1.0;
      [v10 setSpeed:v11];

      v12 = [v0 layer];
      [v12 setTimeOffset:0.0];

      v13 = [v0 layer];
      [v13 setBeginTime:0.0];

      v14 = [v0 layer];
      [v14 convertTime:0 fromLayer:CACurrentMediaTime()];
      v16 = v15;

      v17 = [v0 layer];
      [v17 setBeginTime:v16 - v9];
    }
  }
}

void sub_10015A944()
{
  v1 = [v0 layer];
  [v1 speed];
  v3 = v2;

  if (v3 != 0.0)
  {
    v4 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension28RiverTodayCardBackgroundView_gradientBackingLayer];
    v5 = sub_100753064();
    v6 = [v4 animationForKey:v5];

    if (v6)
    {

      v7 = [v0 layer];
      [v7 convertTime:0 fromLayer:CACurrentMediaTime()];
      v9 = v8;

      v10 = [v0 layer];
      [v10 setSpeed:0.0];

      v11 = [v0 layer];
      [v11 setTimeOffset:v9];
    }
  }
}

void sub_10015AAC0()
{
  v1 = [objc_allocWithZone(CABasicAnimation) init];
  v2 = sub_100753064();
  [v1 setKeyPath:v2];

  isa = sub_100753424().super.super.isa;
  [v1 setToValue:isa];

  v4 = v1;
  [v4 setDuration:20.0];
  LODWORD(v5) = 2139095039;
  [v4 setRepeatCount:v5];

  v6 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension28RiverTodayCardBackgroundView_gradientBackingLayer);
  v7 = sub_100753064();
  [v6 addAnimation:v4 forKey:v7];
}

void sub_10015AC04()
{
  v4 = OBJC_IVAR____TtC22SubscribePageExtension28RiverTodayCardBackgroundView_colors;
  swift_beginAccess();
  v101 = v0;
  v5 = *&v0[v4];
  if (v5 >> 62)
  {
    goto LABEL_155;
  }

  if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 4)
  {
LABEL_3:
    v6 = OBJC_IVAR____TtC22SubscribePageExtension28RiverTodayCardBackgroundView_riverViewStyling;
    v7 = v101;
    sub_100746234();
    v9 = v8;
    sub_100746254();
    v11 = v10;
    v12 = &v101[v6];
    sub_1007461F4();
    v14 = v13;
    v15 = *&v101[v4];
    if (!(v15 >> 62))
    {
      v7 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v12 = v7 >> 1;
      goto LABEL_5;
    }

    v97 = sub_100754664();
    if (v97 < -1)
    {
      __break(1u);
LABEL_159:
      if (v6 < 0)
      {
        v1 = v6;
      }

      else
      {
        v1 = v16;
      }

      v97 = sub_100754664();
      if (v97 < 0)
      {
        __break(1u);
        goto LABEL_181;
      }

      if (sub_100754664() >= v12)
      {
        goto LABEL_7;
      }

LABEL_164:
      __break(1u);
LABEL_165:
      v30 = sub_100754664();
      if (v30 >= v12)
      {
        goto LABEL_26;
      }

LABEL_166:
      __break(1u);
      goto LABEL_167;
    }

    while (1)
    {
      v7 = v97;
      v12 = v97 / 2;
LABEL_5:
      swift_beginAccess();
      v6 = *&v101[v4];
      v16 = v6 & 0xFFFFFFFFFFFFFF8;
      v2 = v6 >> 62;
      if (v6 >> 62)
      {
        goto LABEL_159;
      }

      if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) < v12)
      {
        goto LABEL_164;
      }

LABEL_7:
      if ((v6 & 0xC000000000000001) != 0 && v7 + 1 > 2)
      {
        sub_100016C60(0, &qword_100923500);

        v17 = 0;
        do
        {
          v18 = v17 + 1;
          sub_100754554(v17);
          v17 = v18;
        }

        while (v12 != v18);
        if (!v2)
        {
LABEL_12:
          v19 = 0;
          v20 = v6 & 0xFFFFFFFFFFFFFF8;
          v1 = v20 + 32;
          v21 = (2 * v12) | 1;
          goto LABEL_15;
        }
      }

      else
      {

        if (!v2)
        {
          goto LABEL_12;
        }
      }

      v20 = sub_100754674();
      v1 = v22;
      v19 = v23;
      v21 = v24;
LABEL_15:
      swift_endAccess();
      if ((v21 & 1) == 0)
      {
        goto LABEL_16;
      }

      v3 = sub_100754774();
      swift_unknownObjectRetain_n();
      v26 = swift_dynamicCastClass();
      if (!v26)
      {
        swift_unknownObjectRelease();
        v26 = _swiftEmptyArrayStorage;
      }

      v27 = v26[2];

      if (__OFSUB__(v21 >> 1, v19))
      {
        __break(1u);
LABEL_177:
        swift_unknownObjectRelease();
LABEL_16:
        sub_1006313C8(v20, v1, v19, v21);
        v7 = v25;
        goto LABEL_23;
      }

      if (v27 != (v21 >> 1) - v19)
      {
        goto LABEL_177;
      }

      v7 = swift_dynamicCastClass();
      swift_unknownObjectRelease();
      if (v7)
      {
        goto LABEL_24;
      }

      v7 = _swiftEmptyArrayStorage;
LABEL_23:
      swift_unknownObjectRelease();
LABEL_24:
      v104 = v7;
      v28 = *&v101[v4];
      if (v28 >> 62)
      {
        goto LABEL_165;
      }

      v29 = v28 & 0xFFFFFFFFFFFFFF8;
      v30 = *(v29 + 16);
      if (v30 < v12)
      {
        goto LABEL_166;
      }

LABEL_26:
      swift_beginAccess();
      v7 = *&v101[v4];
      v29 = v7 & 0xFFFFFFFFFFFFFF8;
      v4 = v7 >> 62;
      if (!(v7 >> 62))
      {
        v31 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v31 >= v12)
        {
          if (v31 >= v30)
          {
LABEL_29:
            if ((v7 & 0xC000000000000001) == 0 || v12 == v30)
            {

              if (!v4)
              {
                goto LABEL_36;
              }
            }

            else
            {
              if (v12 >= v30)
              {
                __break(1u);
                goto LABEL_178;
              }

              sub_100016C60(0, &qword_100923500);

              v32 = v12;
              do
              {
                v33 = v32 + 1;
                sub_100754554(v32);
                v32 = v33;
              }

              while (v30 != v33);
              if (!v4)
              {
LABEL_36:
                v7 &= 0xFFFFFFFFFFFFFF8uLL;
                v1 = v7 + 32;
                v30 = (2 * v30) | 1;
                goto LABEL_39;
              }
            }

            v7 = sub_100754674();
            v1 = v34;
            v12 = v35;
            v30 = v36;
LABEL_39:
            swift_endAccess();
            if ((v30 & 1) == 0)
            {
LABEL_40:
              sub_1006313C8(v7, v1, v12, v30);
              v38 = v37;
              goto LABEL_47;
            }

            sub_100754774();
            swift_unknownObjectRetain_n();
            v39 = swift_dynamicCastClass();
            if (!v39)
            {
              swift_unknownObjectRelease();
              v39 = _swiftEmptyArrayStorage;
            }

            v40 = v39[2];

            if (__OFSUB__(v30 >> 1, v12))
            {
LABEL_178:
              __break(1u);
            }

            else if (v40 == (v30 >> 1) - v12)
            {
              v38 = swift_dynamicCastClass();
              swift_unknownObjectRelease();
              if (!v38)
              {
                v38 = _swiftEmptyArrayStorage;
LABEL_47:
                swift_unknownObjectRelease();
              }

              v103 = v38;
              sub_10015BAC8(2);
              sub_10015BAC8(2);
              v12 = *&v101[OBJC_IVAR____TtC22SubscribePageExtension28RiverTodayCardBackgroundView_topLeftGradientLayer];
              v30 = v104;
              v3 = (v104 & 0xFFFFFFFFFFFFFF8);
              if (!(v104 >> 62))
              {
                v2 = *((v104 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_50:
                v4 = v30 & 0xC000000000000001;
                v98 = v12;
                v102 = v3;
                if (!v2)
                {
LABEL_71:
                  v50 = (v11 + v14) / v9;
                  v51 = (v50 + v50) * 0.15;
                  v52 = _swiftEmptyArrayStorage[2];
                  if (v52)
                  {
                    sub_1007545C4();
                    v53 = 5;
                    v54 = v30;
                    do
                    {
                      v55 = _swiftEmptyArrayStorage[v53];
                      sub_1007545A4();
                      sub_1007545D4();
                      sub_1007545E4();
                      sub_1007545B4();
                      v53 += 2;
                      --v52;
                    }

                    while (v52);
                  }

                  else
                  {

                    v54 = v30;
                  }

                  v1 = 0xEE006E6F6974616DLL;
                  v56 = sub_10015CC8C(_swiftEmptyArrayStorage, v50 + v50 - v51, (v50 + v50) * 0.15, v50 * 0.5);

                  v57 = sub_100753064();
                  [v98 addAnimation:v56 forKey:v57];

                  v99 = *&v101[OBJC_IVAR____TtC22SubscribePageExtension28RiverTodayCardBackgroundView_topRightGradientLayer];
                  if (v2)
                  {
                    v58 = 0;
                    while (1)
                    {
                      if (v4)
                      {
                        v59 = sub_100754574();
                        v60 = v58 + 1;
                        if (__OFADD__(v58, 1))
                        {
                          goto LABEL_148;
                        }
                      }

                      else
                      {
                        if (v58 >= v3[2])
                        {
                          goto LABEL_149;
                        }

                        v59 = *(v54 + 8 * v58 + 32);
                        v60 = v58 + 1;
                        if (__OFADD__(v58, 1))
                        {
                          goto LABEL_148;
                        }
                      }

                      if (v58)
                      {
                        v1 = v59;
                        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                        {
                          sub_10001E44C(0, _swiftEmptyArrayStorage[2] + 1, 1);
                        }

                        v62 = _swiftEmptyArrayStorage[2];
                        v61 = _swiftEmptyArrayStorage[3];
                        v63 = v1;
                        if (v62 >= v61 >> 1)
                        {
                          sub_10001E44C((v61 > 1), v62 + 1, 1);
                          v63 = v1;
                        }

                        _swiftEmptyArrayStorage[2] = v62 + 1;
                        v64 = &_swiftEmptyArrayStorage[2 * v62];
                        v64[4] = v58;
                        v64[5] = v63;
                        v3 = v102;
                        if (v60 == v2)
                        {
                          break;
                        }

                        v58 = v60;
                      }

                      else
                      {

                        ++v58;
                        if (v60 == v2)
                        {
                          break;
                        }
                      }
                    }
                  }

                  v1 = _swiftEmptyArrayStorage[2];
                  if (v1)
                  {
                    sub_1007545C4();
                    v65 = 5;
                    v66 = v99;
                    do
                    {
                      v67 = _swiftEmptyArrayStorage[v65];
                      sub_1007545A4();
                      sub_1007545D4();
                      sub_1007545E4();
                      sub_1007545B4();
                      v65 += 2;
                      --v1;
                    }

                    while (v1);
                  }

                  else
                  {

                    v66 = v99;
                  }

                  v68 = sub_10015CC8C(_swiftEmptyArrayStorage, v50 + v50 - v51, (v50 + v50) * 0.15, v50 + v50 * 0.5);

                  v69 = sub_100753064();
                  [v66 addAnimation:v68 forKey:v69];

                  v70 = *&v101[OBJC_IVAR____TtC22SubscribePageExtension28RiverTodayCardBackgroundView_bottomLeftGradientLayer];
                  if (v103 >> 62)
                  {
                    v2 = sub_100754664();
                  }

                  else
                  {
                    v2 = *((v103 & 0xFFFFFFFFFFFFFF8) + 0x10);
                  }

                  v4 = v103 & 0xC000000000000001;
                  v100 = v70;
                  if (v2)
                  {
                    v1 = 0;
                    v3 = (v103 + 32);
                    do
                    {
                      v71 = v1;
                      if (v4)
                      {
                        v73 = sub_100754574();
                        v72 = v103 & 0xFFFFFFFFFFFFFF8;
                        v74 = v1 + 1;
                        if (__OFADD__(v1, 1))
                        {
                          goto LABEL_154;
                        }
                      }

                      else
                      {
                        v72 = v103 & 0xFFFFFFFFFFFFFF8;
                        if (v1 >= *((v103 & 0xFFFFFFFFFFFFFF8) + 0x10))
                        {
                          goto LABEL_150;
                        }

                        v73 = v3[v1];
                        v74 = v1 + 1;
                        if (__OFADD__(v1, 1))
                        {
                          goto LABEL_154;
                        }
                      }

                      if (v1)
                      {

                        if (v74 == v2)
                        {
                          break;
                        }

                        if (v4)
                        {
                          v75 = sub_100754574();
                        }

                        else
                        {
                          if (v74 >= *(v72 + 16))
                          {
                            goto LABEL_150;
                          }

                          v75 = v3[v74];
                        }

                        v73 = v75;
                        v1 = v74 | 1;
                      }

                      else
                      {
                        v1 = v74;
                        v74 = v71;
                      }

                      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                      {
                        sub_10001E44C(0, _swiftEmptyArrayStorage[2] + 1, 1);
                      }

                      v77 = _swiftEmptyArrayStorage[2];
                      v76 = _swiftEmptyArrayStorage[3];
                      if (v77 >= v76 >> 1)
                      {
                        sub_10001E44C((v76 > 1), v77 + 1, 1);
                      }

                      _swiftEmptyArrayStorage[2] = v77 + 1;
                      v78 = &_swiftEmptyArrayStorage[2 * v77];
                      v78[4] = v74;
                      v78[5] = v73;
                    }

                    while (v1 != v2);
                  }

                  v79 = _swiftEmptyArrayStorage[2];
                  if (v79)
                  {
                    sub_1007545C4();
                    v1 = 40;
                    do
                    {
                      v80 = *(_swiftEmptyArrayStorage + v1);
                      sub_1007545A4();
                      sub_1007545D4();
                      sub_1007545E4();
                      sub_1007545B4();
                      v1 += 16;
                      --v79;
                    }

                    while (v79);
                  }

                  v81 = sub_10015CC8C(_swiftEmptyArrayStorage, v50 + v50 - v51, (v50 + v50) * 0.15, 0.0);

                  v82 = sub_100753064();
                  [v100 addAnimation:v81 forKey:v82];

                  v83 = *&v101[OBJC_IVAR____TtC22SubscribePageExtension28RiverTodayCardBackgroundView_bottomRightGradientLayer];
                  v84 = v103 & 0xFFFFFFFFFFFFFF8;
                  if (v2)
                  {
                    v3 = _swiftEmptyArrayStorage;
                    v85 = 0;
                    while (1)
                    {
                      if (v4)
                      {
                        v86 = sub_100754574();
                        v87 = v85 + 1;
                        if (__OFADD__(v85, 1))
                        {
                          goto LABEL_151;
                        }
                      }

                      else
                      {
                        if (v85 >= *(v84 + 16))
                        {
                          goto LABEL_152;
                        }

                        v86 = *(v103 + 8 * v85 + 32);
                        v87 = v85 + 1;
                        if (__OFADD__(v85, 1))
                        {
                          goto LABEL_151;
                        }
                      }

                      if (v85)
                      {
                        v1 = v86;
                        v101 = v83;
                        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                        {
                          sub_10001E44C(0, _swiftEmptyArrayStorage[2] + 1, 1);
                        }

                        v89 = _swiftEmptyArrayStorage[2];
                        v88 = _swiftEmptyArrayStorage[3];
                        v90 = v1;
                        if (v89 >= v88 >> 1)
                        {
                          sub_10001E44C((v88 > 1), v89 + 1, 1);
                          v90 = v1;
                        }

                        _swiftEmptyArrayStorage[2] = v89 + 1;
                        v91 = &_swiftEmptyArrayStorage[2 * v89];
                        v91[4] = v85;
                        v91[5] = v90;
                        v84 = v103 & 0xFFFFFFFFFFFFFF8;
                        if (v87 == v2)
                        {
                          break;
                        }

                        v85 = v87;
                      }

                      else
                      {

                        ++v85;
                        if (v87 == v2)
                        {
                          break;
                        }
                      }
                    }
                  }

                  v92 = _swiftEmptyArrayStorage[2];
                  if (v92)
                  {
                    sub_1007545C4();
                    v93 = 5;
                    do
                    {
                      v94 = _swiftEmptyArrayStorage[v93];
                      sub_1007545A4();
                      sub_1007545D4();
                      sub_1007545E4();
                      sub_1007545B4();
                      v93 += 2;
                      --v92;
                    }

                    while (v92);
                  }

                  v95 = sub_10015CC8C(_swiftEmptyArrayStorage, v50 + v50 - v51, (v50 + v50) * 0.15, v50 + 0.0);

                  v96 = sub_100753064();
                  [v83 addAnimation:v95 forKey:v96];

                  return;
                }

                v41 = 0;
                v42 = v30 + 32;
                while (1)
                {
                  if (v4)
                  {
                    v43 = sub_100754574();
                  }

                  else
                  {
                    if (v41 >= v3[2])
                    {
                      goto LABEL_147;
                    }

                    v43 = *(v42 + 8 * v41);
                  }

                  v44 = v43;
                  v45 = v41 + 1;
                  if (__OFADD__(v41, 1))
                  {
                    goto LABEL_153;
                  }

                  if (v41)
                  {

                    if (v45 == v2)
                    {
                      goto LABEL_71;
                    }

                    if (v4)
                    {
                      v46 = sub_100754574();
                    }

                    else
                    {
                      if (v45 >= v3[2])
                      {
LABEL_147:
                        __break(1u);
LABEL_148:
                        __break(1u);
LABEL_149:
                        __break(1u);
LABEL_150:
                        __break(1u);
LABEL_151:
                        __break(1u);
LABEL_152:
                        __break(1u);
LABEL_153:
                        __break(1u);
LABEL_154:
                        __break(1u);
LABEL_155:
                        if (sub_100754664() < 4)
                        {
                          return;
                        }

                        goto LABEL_3;
                      }

                      v46 = *(v42 + 8 * v45);
                    }

                    v44 = v46;
                    v1 = v45 | 1;
                  }

                  else
                  {
                    v1 = v41 + 1;
                    v45 = v41;
                  }

                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    sub_10001E44C(0, _swiftEmptyArrayStorage[2] + 1, 1);
                  }

                  v48 = _swiftEmptyArrayStorage[2];
                  v47 = _swiftEmptyArrayStorage[3];
                  if (v48 >= v47 >> 1)
                  {
                    sub_10001E44C((v47 > 1), v48 + 1, 1);
                  }

                  _swiftEmptyArrayStorage[2] = v48 + 1;
                  v49 = &_swiftEmptyArrayStorage[2 * v48];
                  v49[4] = v45;
                  v49[5] = v44;
                  v41 = v1;
                  v3 = v102;
                  if (v1 == v2)
                  {
                    goto LABEL_71;
                  }
                }
              }

LABEL_174:
              v2 = sub_100754664();
              goto LABEL_50;
            }

            swift_unknownObjectRelease();
            goto LABEL_40;
          }

LABEL_172:
          __break(1u);
        }

        __break(1u);
        goto LABEL_174;
      }

LABEL_167:
      if ((v7 & 0x8000000000000000) != 0)
      {
        v1 = v7;
      }

      else
      {
        v1 = v29;
      }

      v97 = sub_100754664();
      if (v97 >= v12)
      {
        if (sub_100754664() >= v30)
        {
          goto LABEL_29;
        }

        goto LABEL_172;
      }

LABEL_181:
      __break(1u);
    }
  }
}

uint64_t sub_10015BAC8(uint64_t a1)
{
  v5 = v1;
  v7 = *v5;
  v8 = *v5 >> 62;
  if (!v8)
  {
    result = *((*v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result <= a1)
    {
      return result;
    }

LABEL_3:
    if (a1 < 0)
    {
      __break(1u);
    }

    else
    {
      if (v8)
      {
        if (v7 < 0)
        {
          v2 = v7;
        }

        else
        {
          v2 = v7 & 0xFFFFFFFFFFFFFF8;
        }

        v3 = sub_100754664();
        if (sub_100754664() < 0)
        {
          goto LABEL_54;
        }

        if (v3 >= a1)
        {
          v13 = a1;
        }

        else
        {
          v13 = v3;
        }

        if (v3 < 0)
        {
          v13 = a1;
        }

        v12 = a1 == 0;
        if (a1)
        {
          v3 = v13;
        }

        else
        {
          v3 = 0;
        }

        v10 = sub_100754664();
      }

      else
      {
        v10 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v10 >= a1)
        {
          v11 = a1;
        }

        else
        {
          v11 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v12 = a1 == 0;
        if (a1)
        {
          v3 = v11;
        }

        else
        {
          v3 = 0;
        }
      }

      if (v10 >= v3)
      {
        if ((v7 & 0xC000000000000001) != 0 && v3)
        {
          sub_100016C60(0, &qword_100923500);

          v14 = 0;
          do
          {
            v15 = v14 + 1;
            sub_100754554(v14);
            v14 = v15;
          }

          while (v3 != v15);
          if (!v8)
          {
LABEL_30:
            v7 &= 0xFFFFFFFFFFFFFF8uLL;
            v2 = v7 + 32;
            v3 = (2 * v3) | 1;
            v8 = 0;
            if (v12)
            {
              goto LABEL_38;
            }

            result = *(v7 + 16);
            if (result < 0)
            {
              goto LABEL_37;
            }

            goto LABEL_36;
          }
        }

        else
        {

          if (!v8)
          {
            goto LABEL_30;
          }
        }

        v7 = sub_100754674();
        v2 = v16;
        v8 = v17;
        v3 = v18;
        if (v12)
        {
          goto LABEL_38;
        }

        result = sub_100754664();
        if (result < 0)
        {
LABEL_37:
          sub_10015DAF0(0, a1, sub_1004A2A70, &qword_100923500);
LABEL_38:
          v4 = *v5;
          if ((v3 & 1) == 0)
          {
            swift_unknownObjectRetain();
LABEL_40:
            sub_1006313C8(v7, v2, v8, v3);
            v20 = v19;
            goto LABEL_47;
          }

          sub_100754774();
          swift_unknownObjectRetain_n();
          v21 = swift_dynamicCastClass();
          if (!v21)
          {
            swift_unknownObjectRelease();
            v21 = _swiftEmptyArrayStorage;
          }

          v22 = v21[2];

          if (!__OFSUB__(v3 >> 1, v8))
          {
            if (v22 == (v3 >> 1) - v8)
            {
              v20 = swift_dynamicCastClass();
              swift_unknownObjectRelease();
              if (v20)
              {
LABEL_48:
                sub_1004A0080(v20);
                result = swift_unknownObjectRelease();
                *v5 = v4;
                return result;
              }

              v20 = _swiftEmptyArrayStorage;
LABEL_47:
              swift_unknownObjectRelease();
              goto LABEL_48;
            }

            goto LABEL_56;
          }

LABEL_55:
          __break(1u);
LABEL_56:
          swift_unknownObjectRelease();
          goto LABEL_40;
        }

LABEL_36:
        if (result < a1)
        {
          __break(1u);
          return result;
        }

        goto LABEL_37;
      }
    }

    __break(1u);
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  result = sub_100754664();
  if (result > a1)
  {
    goto LABEL_3;
  }

  return result;
}

uint64_t sub_10015BE24(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  v6 = sub_100740EA4();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100740E84();
  v10 = a1;
  a4();

  return (*(v7 + 8))(v9, v6);
}

uint64_t type metadata accessor for RiverTodayCardBackgroundView()
{
  result = qword_100929F10;
  if (!qword_100929F10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10015C118()
{
  result = sub_100746264();
  if (v1 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t sub_10015C1EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v3 = a3;
  v6 = a2;
  v10 = *v4;
  v4 = (*v4 & 0xFFFFFFFFFFFFFF8);
  v7 = v4 + 4;
  v5 = &v4[a1 + 4];
  sub_1007433C4();
  result = swift_arrayDestroy();
  v12 = __OFSUB__(v3, v9);
  v9 = v3 - v9;
  if (v12)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v9)
  {
    goto LABEL_17;
  }

  v8 = v10 >> 62;
  if (!(v10 >> 62))
  {
    result = v4[2];
    v13 = result - v6;
    if (!__OFSUB__(result, v6))
    {
      goto LABEL_6;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_21:
  result = sub_100754664();
  v13 = result - v6;
  if (__OFSUB__(result, v6))
  {
    goto LABEL_23;
  }

LABEL_6:
  v14 = (v5 + 8 * v3);
  v15 = &v7[v6];
  if (v14 != v15 || v14 >= &v15[8 * v13])
  {
    memmove(v14, v15, 8 * v13);
  }

  if (v8)
  {
    result = sub_100754664();
  }

  else
  {
    result = v4[2];
  }

  if (__OFADD__(result, v9))
  {
    goto LABEL_24;
  }

  v4[2] = result + v9;
LABEL_17:
  if (v3 > 0)
  {
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_10015C2EC(uint64_t a1, uint64_t a2)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v2 = a2;
    v4 = a1;
    v5 = *v3;
    v6 = *v3 >> 62;
    if (!v6)
    {
      result = *((*v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  result = sub_100754664();
  if (result < v2)
  {
    goto LABEL_15;
  }

LABEL_4:
  if (__OFSUB__(v2, v4))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v4 - v2;
  if (__OFSUB__(0, v2 - v4))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (v6)
  {
    v9 = sub_100754664();
  }

  else
  {
    v9 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v10 = __OFADD__(v9, v8);
  result = v9 + v8;
  if (v10)
  {
    goto LABEL_18;
  }

  sub_1004A2A70(result, 1);

  return sub_10015C1EC(v4, v2, 0);
}

unint64_t sub_10015C3C4(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_13;
  }

  v7 = *v3;
  v8 = v7 + 32 + 40 * result;
  sub_10000C518(&qword_100922F60);
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (!v10)
  {
    goto LABEL_10;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_14;
  }

  result = v8 + 40 * a3;
  v13 = (v7 + 32 + 40 * a2);
  if (result != v13 || result >= v13 + 40 * v12)
  {
    result = memmove(result, v13, 40 * v12);
  }

  v14 = *(v7 + 16);
  v9 = __OFADD__(v14, v10);
  v15 = v14 + v10;
  if (v9)
  {
    goto LABEL_15;
  }

  *(v7 + 16) = v15;
LABEL_10:
  if (a3 > 0)
  {
LABEL_16:
    __break(1u);
  }

  return result;
}

id sub_10015C4DC(double a1, double a2, double a3, double a4)
{
  v8 = [objc_allocWithZone(CAGradientLayer) init];
  sub_10000C518(&unk_1009231A0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1007A7210;
  sub_100016C60(0, &qword_10092BE20);
  *(v9 + 32) = sub_100753F94(0.25);
  *(v9 + 40) = sub_100753F94(0.75);
  isa = sub_100753294().super.isa;

  [v8 setLocations:isa];

  [v8 setStartPoint:{a1, a2}];
  [v8 setEndPoint:{a3, a4}];
  sub_10000C518(&unk_1009259C0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1007A6580;
  v12 = objc_opt_self();
  v13 = [v12 whiteColor];
  v14 = [v13 CGColor];

  type metadata accessor for CGColor(0);
  v16 = v15;
  *(v11 + 56) = v15;
  *(v11 + 32) = v14;
  v17 = [v12 clearColor];
  v18 = [v17 CGColor];

  *(v11 + 88) = v16;
  *(v11 + 64) = v18;
  v19 = sub_100753294().super.isa;

  [v8 setColors:v19];

  return v8;
}

char *sub_10015C708()
{
  v0 = [objc_allocWithZone(CAGradientLayer) init];
  sub_10000C518(&unk_1009231A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1007AC000;
  v2 = objc_opt_self();
  *(inited + 32) = [v2 blackColor];
  v3 = [v2 blackColor];
  v4 = [v3 colorWithAlphaComponent:0.4];

  *(inited + 40) = v4;
  v5 = [v2 blackColor];
  v6 = [v5 colorWithAlphaComponent:0.0];

  *(inited + 48) = v6;
  v35 = _swiftEmptyArrayStorage;
  result = sub_10001E288(0, 3, 0);
  v8 = _swiftEmptyArrayStorage;
  v9 = inited & 0xC000000000000001;
  if ((inited & 0xC000000000000001) != 0)
  {
    v10 = sub_100754574();
  }

  else
  {
    if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) < 3uLL)
    {
      __break(1u);
      return result;
    }

    v10 = *(inited + 32);
  }

  v11 = v10;
  v12 = [v10 CGColor];
  type metadata accessor for CGColor(0);
  v14 = v13;
  v34 = v13;

  *&v33 = v12;
  v16 = _swiftEmptyArrayStorage[2];
  v15 = _swiftEmptyArrayStorage[3];
  if (v16 >= v15 >> 1)
  {
    sub_10001E288((v15 > 1), v16 + 1, 1);
    v8 = v35;
  }

  v8[2] = v16 + 1;
  sub_10000C610(&v33, &v8[4 * v16 + 4]);
  if (v9)
  {
    v17 = sub_100754574();
  }

  else
  {
    v17 = *(inited + 40);
  }

  v18 = v17;
  v19 = [v17 CGColor];
  v34 = v14;

  *&v33 = v19;
  v35 = v8;
  v21 = v8[2];
  v20 = v8[3];
  if (v21 >= v20 >> 1)
  {
    sub_10001E288((v20 > 1), v21 + 1, 1);
    v8 = v35;
  }

  v8[2] = v21 + 1;
  sub_10000C610(&v33, &v8[4 * v21 + 4]);
  if (v9)
  {
    v22 = sub_100754574();
  }

  else
  {
    v22 = *(inited + 48);
  }

  v23 = v22;
  v24 = [v22 CGColor];
  v34 = v14;

  *&v33 = v24;
  v35 = v8;
  v26 = v8[2];
  v25 = v8[3];
  if (v26 >= v25 >> 1)
  {
    sub_10001E288((v25 > 1), v26 + 1, 1);
    v8 = v35;
  }

  v8[2] = v26 + 1;
  sub_10000C610(&v33, &v8[4 * v26 + 4]);
  swift_setDeallocating();
  swift_arrayDestroy();
  isa = sub_100753294().super.isa;

  [v0 setColors:isa];

  v28 = swift_allocObject();
  *(v28 + 16) = v32;
  sub_100016C60(0, &qword_10092BE20);
  *(v28 + 32) = sub_100753FA4(0);
  *(v28 + 40) = sub_100753F94(0.4);
  *(v28 + 48) = sub_100753F94(1.0);
  v29 = sub_100753294().super.isa;

  [v0 setLocations:v29];

  [v0 setStartPoint:{0.0, 1.0}];
  [v0 setEndPoint:{1.0, 0.0}];
  v30 = v0;
  LODWORD(v31) = 1045220557;
  [v30 setOpacity:v31];
  [v30 setCompositingFilter:kCAFilterPlusD];

  return v30;
}

uint64_t sub_10015CB84(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4)
{
  v10 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v4 = a3;
  v7 = a2;
  v11 = *v5;
  v5 = (*v5 & 0xFFFFFFFFFFFFFF8);
  v8 = v5 + 4;
  v6 = &v5[a1 + 4];
  sub_100016C60(0, a4);
  result = swift_arrayDestroy();
  v13 = __OFSUB__(v4, v10);
  v10 = v4 - v10;
  if (v13)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v10)
  {
    goto LABEL_17;
  }

  v9 = v11 >> 62;
  if (!(v11 >> 62))
  {
    result = v5[2];
    v14 = result - v7;
    if (!__OFSUB__(result, v7))
    {
      goto LABEL_6;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_21:
  result = sub_100754664();
  v14 = result - v7;
  if (__OFSUB__(result, v7))
  {
    goto LABEL_23;
  }

LABEL_6:
  v15 = (v6 + 8 * v4);
  v16 = &v8[v7];
  if (v15 != v16 || v15 >= &v16[8 * v14])
  {
    memmove(v15, v16, 8 * v14);
  }

  if (v9)
  {
    result = sub_100754664();
  }

  else
  {
    result = v5[2];
  }

  if (__OFADD__(result, v10))
  {
    goto LABEL_24;
  }

  v5[2] = result + v10;
LABEL_17:
  if (v4 > 0)
  {
LABEL_25:
    __break(1u);
  }

  return result;
}

id sub_10015CC8C(unint64_t a1, double a2, double a3, double a4)
{
  v7 = a1;
  v64 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_69;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_100754664())
  {
    v9 = &v71;
    v68 = v7;
    if (i)
    {
      v67 = (v7 & 0xC000000000000001);
      if ((v7 & 0xC000000000000001) != 0)
      {
        v10 = sub_100754574();
      }

      else
      {
        if (!*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_73:
          __break(1u);
          goto LABEL_74;
        }

        v10 = *(v7 + 32);
      }

      v72[0] = v10;
      v70 = _swiftEmptyArrayStorage;
      if (!v10)
      {
        v63 = _swiftEmptyArrayStorage;
LABEL_12:
        sub_10015D56C(v9 + 32);
        v13 = 0;
        v70 = _swiftEmptyArrayStorage;
        v66 = v7 & 0xFFFFFFFFFFFFFF8;
        v65 = i;
        while (1)
        {
          if (v67)
          {
            v14 = sub_100754574();
          }

          else
          {
            if (v13 >= *(v66 + 16))
            {
              goto LABEL_66;
            }

            v14 = *(v7 + 8 * v13 + 32);
          }

          v15 = v14;
          v16 = (v13 + 1);
          if (__OFADD__(v13, 1))
          {
            break;
          }

          sub_10000C518(&qword_1009232F8);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_1007A6580;
          sub_10000C518(&unk_1009231A0);
          v18 = swift_allocObject();
          *(v18 + 16) = xmmword_1007A7210;
          *(v18 + 32) = [v15 CGColor];
          v19 = [v15 colorWithAlphaComponent:0.0];
          v20 = [v19 CGColor];

          *(v18 + 40) = v20;
          *(inited + 32) = v18;
          v21 = swift_allocObject();
          *(v21 + 16) = xmmword_1007A7210;
          *(v21 + 32) = [v15 CGColor];
          v22 = [v15 colorWithAlphaComponent:0.0];
          v23 = [v22 CGColor];

          v7 = v68;
          *(v21 + 40) = v23;
          *(inited + 40) = v21;

          sub_10049FF7C(inited);
          ++v13;
          if (v16 == v65)
          {
            i = _swiftEmptyArrayStorage;
            v12 = v63;
            goto LABEL_20;
          }
        }

        __break(1u);
LABEL_66:
        __break(1u);
        goto LABEL_67;
      }

      v11 = v10;
      sub_100753284();
      if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) < *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
LABEL_9:
        sub_100753344();
        v63 = v70;
        goto LABEL_12;
      }

LABEL_74:
      sub_100753304();
      goto LABEL_9;
    }

    v72[0] = 0;
    sub_10015D56C(v72);
    v12 = _swiftEmptyArrayStorage;
    i = _swiftEmptyArrayStorage;
LABEL_20:
    if (v12 >> 62)
    {
      v62 = v12;
      v9 = sub_100754664();
      v12 = v62;
    }

    else
    {
      v9 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v9)
    {
      v24 = v12;
      v70 = _swiftEmptyArrayStorage;
      sub_10001E40C(0, v9 & ~(v9 >> 63), 0);
      if (v9 < 0)
      {
        goto LABEL_73;
      }

      v67 = _swiftEmptyArrayStorage;
      v25 = 0;
      v26 = v24;
      v27 = v24 & 0xC000000000000001;
      v28 = v24;
      do
      {
        if (v27)
        {
          v29 = sub_100754574();
        }

        else
        {
          v29 = *(v26 + 8 * v25 + 32);
        }

        v30 = v29;
        sub_10000C518(&unk_1009231A0);
        v31 = swift_allocObject();
        *(v31 + 16) = xmmword_1007A7210;
        *(v31 + 32) = [v30 CGColor];
        v32 = [v30 colorWithAlphaComponent:0.0];
        v33 = [v32 CGColor];

        *(v31 + 40) = v33;
        v35 = _swiftEmptyArrayStorage[2];
        v34 = _swiftEmptyArrayStorage[3];
        if (v35 >= v34 >> 1)
        {
          sub_10001E40C((v34 > 1), v35 + 1, 1);
        }

        ++v25;
        _swiftEmptyArrayStorage[2] = v35 + 1;
        _swiftEmptyArrayStorage[v35 + 4] = v31;
        v26 = v28;
      }

      while (v9 != v25);

      v7 = v68;
    }

    else
    {
    }

    sub_10049FF7C(_swiftEmptyArrayStorage);
    v36 = v64 ? sub_100754664() : *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    a3 = a2 + a3;
    v37 = _swiftEmptyArrayStorage[2];
    if (!v37)
    {
      break;
    }

    v69 = v36;
    v38 = sub_100255604(0, 1, 1, _swiftEmptyArrayStorage);
    for (j = 0; j != v37; ++j)
    {
      if (j)
      {
        v40 = a3 * (j >> 1) + a2;
      }

      else
      {
        v40 = a3 * (j >> 1);
      }

      v42 = *(v38 + 2);
      v41 = *(v38 + 3);
      v7 = v42 + 1;
      if (v42 >= v41 >> 1)
      {
        v38 = sub_100255604((v41 > 1), v42 + 1, 1, v38);
      }

      *(v38 + 2) = v7;
      *&v38[8 * v42 + 32] = v40;
    }

LABEL_47:
    v70 = _swiftEmptyArrayStorage;
    sub_10001E3EC(0, v7, 0);
    v43 = *(v38 + 2);
    if (v43)
    {
      a2 = *(v38 + 4);
      v45 = _swiftEmptyArrayStorage[2];
      v44 = _swiftEmptyArrayStorage[3];
      if (v45 >= v44 >> 1)
      {
        sub_10001E3EC((v44 > 1), v45 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v45 + 1;
      *&_swiftEmptyArrayStorage[v45 + 4] = a2;
      v46 = v7 - 1;
      if (v7 == 1)
      {
LABEL_51:

        v47 = v69;
        goto LABEL_52;
      }

      v51 = 0;
      v52 = v43 - 1;
      while (v52 != v51)
      {
        if ((v51 + 1) >= *(v38 + 2))
        {
          goto LABEL_68;
        }

        a2 = *&v38[8 * v51 + 40];
        v70 = _swiftEmptyArrayStorage;
        v53 = _swiftEmptyArrayStorage[3];
        v7 = v45 + v51 + 2;
        if (v51 + 1 + v45 >= v53 >> 1)
        {
          sub_10001E3EC((v53 > 1), v45 + v51 + 2, 1);
        }

        _swiftEmptyArrayStorage[2] = v7;
        *&_swiftEmptyArrayStorage[v45 + 5 + v51++] = a2 + a4;
        if (v46 == v51)
        {
          goto LABEL_51;
        }
      }
    }

LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
LABEL_69:
    ;
  }

  v7 = _swiftEmptyArrayStorage[2];
  if (v7)
  {
    v69 = v36;
    v38 = _swiftEmptyArrayStorage;
    goto LABEL_47;
  }

  v61 = v36;

  v47 = v61;
LABEL_52:
  v48 = a3 * v47 + a4;
  v49 = _swiftEmptyArrayStorage[2];
  if (v49)
  {
    sub_1007545C4();
    v50 = 4;
    do
    {
      [objc_allocWithZone(NSNumber) initWithDouble:*&_swiftEmptyArrayStorage[v50] / v48];
      sub_1007545A4();
      sub_1007545D4();
      sub_1007545E4();
      sub_1007545B4();
      ++v50;
      --v49;
    }

    while (v49);
  }

  v54 = sub_100753064();
  v55 = [objc_opt_self() animationWithKeyPath:v54];

  sub_100157AB8(_swiftEmptyArrayStorage);

  isa = sub_100753294().super.isa;

  [v55 setValues:isa];

  sub_100016C60(0, &qword_10092BE20);
  v57 = sub_100753294().super.isa;

  [v55 setKeyTimes:v57];

  v58 = v55;
  [v58 setDuration:v48];
  LODWORD(v59) = 2139095039;
  [v58 setRepeatCount:v59];
  [v58 setCalculationMode:kCAAnimationLinear];
  [v58 setRemovedOnCompletion:0];

  return v58;
}

uint64_t sub_10015D56C(uint64_t a1)
{
  v2 = sub_10000C518(&unk_100935100);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

char *sub_10015D5D4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_21;
  }

  v8 = a4;
  v4 = a3;
  v7 = a2;
  v12 = *v5;
  v5 = (*v5 & 0xFFFFFFFFFFFFFF8);
  v9 = v5 + 4;
  v6 = &v5[a1 + 4];
  sub_100016C60(0, &qword_100925250);
  result = swift_arrayDestroy();
  v14 = __OFSUB__(v4, v11);
  v11 = v4 - v11;
  if (v14)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v11)
  {
    v10 = v12 >> 62;
    if (!(v12 >> 62))
    {
      result = v5[2];
      v15 = &result[-v7];
      if (!__OFSUB__(result, v7))
      {
        goto LABEL_6;
      }

      goto LABEL_24;
    }

LABEL_22:
    result = sub_100754664();
    v15 = &result[-v7];
    if (!__OFSUB__(result, v7))
    {
LABEL_6:
      v16 = &v6[v4];
      v17 = &v9[v7];
      if (v16 != v17 || v16 >= &v17[8 * v15])
      {
        memmove(v16, v17, 8 * v15);
      }

      if (v10)
      {
        result = sub_100754664();
      }

      else
      {
        result = v5[2];
      }

      if (!__OFADD__(result, v11))
      {
        v5[2] = &result[v11];
        goto LABEL_17;
      }

LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      return result;
    }

LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_17:
  if (v4 > 0)
  {
    *v6 = v8;
    result = v8;
    if (v4 != 1)
    {
      goto LABEL_26;
    }
  }

  return result;
}

char *sub_10015D700(uint64_t a1, uint64_t a2, void *a3)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = a3;
    v5 = a2;
    v6 = a1;
    v7 = *v4;
    v8 = *v4 >> 62;
    if (!v8)
    {
      result = *((*v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  result = sub_100754664();
  if (result < v5)
  {
    goto LABEL_15;
  }

LABEL_4:
  v10 = v5 - v6;
  if (__OFSUB__(v5, v6))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v11 = 1 - v10;
  if (__OFSUB__(1, v10))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (v8)
  {
    v12 = sub_100754664();
  }

  else
  {
    v12 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v13 = __OFADD__(v12, v11);
  result = (v12 + v11);
  if (v13)
  {
    goto LABEL_18;
  }

  sub_1004A2A70(result, 1);

  return sub_10015D5D4(v6, v5, 1, v3);
}

unint64_t sub_10015D7EC(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_13;
  }

  v7 = *v3;
  v8 = v7 + 32 + 88 * result;
  sub_10000C518(&qword_100929F28);
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (!v10)
  {
    goto LABEL_10;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_14;
  }

  result = v8 + 88 * a3;
  v13 = (v7 + 32 + 88 * a2);
  if (result != v13 || result >= v13 + 88 * v12)
  {
    result = memmove(result, v13, 88 * v12);
  }

  v14 = *(v7 + 16);
  v9 = __OFADD__(v14, v10);
  v15 = v14 + v10;
  if (v9)
  {
    goto LABEL_15;
  }

  *(v7 + 16) = v15;
LABEL_10:
  if (a3 > 0)
  {
LABEL_16:
    __break(1u);
  }

  return result;
}

uint64_t sub_10015D904(uint64_t result, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(uint64_t, uint64_t, void))
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  v6 = *v4;
  v7 = *(*v4 + 16);
  if (v7 < a2)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v8 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v9 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v10 = v7 + v9;
  if (__OFADD__(v7, v9))
  {
LABEL_14:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v4 = v6;
  if (!isUniquelyReferenced_nonNull_native || v10 > *(v6 + 24) >> 1)
  {
    v6 = a3();
    *v4 = v6;
  }

  result = a4(v8, a2, 0);
  *v4 = v6;
  return result;
}

void sub_10015D9DC()
{
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension28RiverTodayCardBackgroundView_colors) = _swiftEmptyArrayStorage;
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension28RiverTodayCardBackgroundView_isAnimating) = 0;
  v1 = OBJC_IVAR____TtC22SubscribePageExtension28RiverTodayCardBackgroundView_gradientBackingLayer;
  *(v0 + v1) = [objc_allocWithZone(CALayer) init];
  v2 = OBJC_IVAR____TtC22SubscribePageExtension28RiverTodayCardBackgroundView_meshView;
  *(v0 + v2) = [objc_allocWithZone(UIView) init];
  v3 = OBJC_IVAR____TtC22SubscribePageExtension28RiverTodayCardBackgroundView_meshTransforms;
  type metadata accessor for TodayCardMeshTransforms();
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  *(v4 + 24) = 0;
  *(v0 + v3) = v4;
  sub_100754644();
  __break(1u);
}

uint64_t sub_10015DAF0(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t), unint64_t *a4)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v5 = a4;
    v8 = a3;
    v6 = a2;
    v7 = a1;
    v9 = *v4;
    v10 = *v4 >> 62;
    if (!v10)
    {
      result = *((*v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_13:
      __break(1u);
      goto LABEL_14;
    }
  }

  result = sub_100754664();
  if (result < v6)
  {
    goto LABEL_13;
  }

LABEL_4:
  if (__OFSUB__(v6, v7))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v12 = v7 - v6;
  if (__OFSUB__(0, v6 - v7))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v10)
  {
    v13 = sub_100754664();
  }

  else
  {
    v13 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v14 = __OFADD__(v13, v12);
  result = v13 + v12;
  if (!v14)
  {
    v8(result, 1);
    return sub_10015CB84(v7, v6, 0, v5);
  }

LABEL_16:
  __break(1u);
  return result;
}

unint64_t sub_10015DBE4(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v5 = a3 - v4;
  if (__OFSUB__(a3, v4))
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v5)
  {
    goto LABEL_13;
  }

  v6 = *v3;
  v7 = *(v6 + 16);
  v8 = __OFSUB__(v7, a2);
  v9 = v7 - a2;
  if (v8)
  {
    goto LABEL_17;
  }

  result = v6 + 32 + 16 * result + 16 * a3;
  v10 = (v6 + 32 + 16 * a2);
  if (result != v10 || result >= v10 + 16 * v9)
  {
    v12 = a3;
    result = memmove(result, v10, 16 * v9);
    a3 = v12;
  }

  v13 = *(v6 + 16);
  v8 = __OFADD__(v13, v5);
  v14 = v13 + v5;
  if (v8)
  {
    goto LABEL_18;
  }

  *(v6 + 16) = v14;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

uint64_t sub_10015DC8C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_10015DCF0()
{
  result = qword_100929F40;
  if (!qword_100929F40)
  {
    sub_10074BCB4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100929F40);
  }

  return result;
}

uint64_t sub_10015DD48()
{
  v0 = sub_100752624();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10074BCA4();
  sub_10000C518(&qword_100930CA0);
  (*(v1 + 104))(v3, enum case for ActionOutcome.performed(_:), v0);
  return sub_100752D84();
}

id sub_10015DE40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, int a8)
{
  v9 = v8;
  v91 = a8;
  v92 = a7;
  v97 = a5;
  v98 = a4;
  v89 = a3;
  v88 = sub_10000C518(&qword_100929F58);
  __chkstk_darwin(v88);
  v90 = v78 - v13;
  v14 = sub_10074F8C4();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v100 = v78 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = sub_100743184();
  v94 = *(v95 - 1);
  __chkstk_darwin(v95);
  v18 = v78 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_10000C518(&unk_100925560);
  v101 = *(v19 - 8);
  v102 = v19;
  v20 = *(v101 + 64);
  __chkstk_darwin(v19);
  v99 = v78 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v96 = v78 - v22;
  v23 = sub_10000C518(&unk_100925540);
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  __chkstk_darwin(v23 - 8);
  *&v29 = __chkstk_darwin(v26).n128_u64[0];
  if (a1 && a2)
  {
    v81 = v28;
    v85 = v78 - v27;
    v84 = a2;
    v83 = v15;
    v87 = v14;
    *&v9[OBJC_IVAR____TtC22SubscribePageExtension11OfferButton_displayProperties] = a1;
    swift_retain_n();

    v110 = 0;
    v108 = 0u;
    v109 = 0u;
    v30 = OBJC_IVAR____TtC22SubscribePageExtension11OfferButton_presenter;
    swift_beginAccess();
    v80 = v30;
    sub_100166588(&v108, &v9[v30]);
    swift_endAccess();
    swift_weakAssign();
    sub_10074B294();
    v78[3] = sub_100752764();
    sub_100752D34();
    v31 = v108;
    sub_10074B234();
    v32 = sub_100749EB4();
    v93 = a1;
    v86 = v31;
    if (v32)
    {
      v33 = swift_allocObject();
      v82 = v9;
      v79 = v33;
      swift_unknownObjectWeakInit();
      v34 = swift_allocObject();
      v78[1] = v34;
      swift_weakInit();
      v78[2] = a6;
      sub_100016B4C(v98, v85, &unk_100925540);
      v35 = v101;
      v36 = v102;
      v37 = v96;
      (*(v101 + 16))(v96, v97, v102);
      v38 = (*(v24 + 80) + 56) & ~*(v24 + 80);
      v39 = (v25 + *(v35 + 80) + v38) & ~*(v35 + 80);
      v40 = swift_allocObject();
      v41 = v79;
      *(v40 + 2) = v34;
      *(v40 + 3) = v41;
      v42 = v84;
      *(v40 + 4) = v93;
      *(v40 + 5) = v42;
      *(v40 + 6) = v89;
      sub_100166898(v85, &v40[v38]);
      (*(v35 + 32))(&v40[v39], v37, v36);
      v43 = &v40[v39 + v20];
      *v43 = v92 & 1;
      v43[1] = v91 & 1;

      sub_10074B204();
      v9 = v82;
      a1 = v93;

      v31 = v86;
    }

    sub_10074B274();
    v44 = v31;
    v45 = sub_100743154();
    (*(v94 + 8))(v18, v95);
    v46 = v100;
    sub_100749F24();
    if (!sub_10015F21C(v46, a1, v45 & 1))
    {

      return (*(v83 + 8))(v46, v87);
    }

    v47 = v101 + 16;
    v48 = *(v101 + 16);
    v48(v99, v97, v102);
    sub_100016B4C(v98, v81, &unk_100925540);
    v49 = *(v88 + 48);
    v50 = v83;
    v51 = v90;
    v52 = v46;
    v53 = v87;
    (*(v83 + 16))(v90, v52, v87);
    *(v51 + v49) = v45 & 1;
    v54 = (*(v50 + 88))(v51, v53);
    if (v54 == enum case for OfferType.app(_:))
    {
LABEL_7:
      (*(v50 + 8))(v51, v53);
      sub_10000C518(&unk_100925780);
      sub_100752D34();
      v97 = v104;
      v98 = v103;
      sub_10000C518(&qword_100929F60);
      sub_100752D34();
      v106 = sub_100743FF4();
      v107 = &protocol witness table for Restrictions;
      sub_100752D34();
      v48(v96, v99, v102);
      v55 = v81;
      sub_100016B4C(v81, v85, &unk_100925540);
      sub_100744AC4();
      sub_100752D34();
      sub_100744984();

      v56 = sub_100742634();
      swift_allocObject();

      v57 = sub_100742624();
      sub_10000C8CC(v55, &unk_100925540);
      (*(v101 + 8))(v99, v102);
      *(&v109 + 1) = v56;
      v110 = &protocol witness table for AppOfferButtonPresenter;
      *&v108 = v57;
LABEL_20:
      v68 = objc_opt_self();
      v69 = [v68 areAnimationsEnabled];
      [v68 setAnimationsEnabled:0];
      v70 = OBJC_IVAR____TtC22SubscribePageExtension11OfferButton_isConfigurationLayoutEnabled;
      v9[OBJC_IVAR____TtC22SubscribePageExtension11OfferButton_isConfigurationLayoutEnabled] = 0;
      [v9 setHidden:0];
      sub_1001665F8(&qword_100929F68, type metadata accessor for OfferButton);
      sub_10007271C(&v108, *(&v109 + 1));
      swift_unknownObjectRetain();
      sub_100748CC4();
      [v68 setAnimationsEnabled:v69];

      (*(v50 + 8))(v100, v87);
      v9[v70] = 1;
      sub_10000C824(&v108, v105);
      v71 = v80;
      swift_beginAccess();
      sub_100166588(v105, &v9[v71]);
      swift_endAccess();
      return sub_10000C620(&v108);
    }

    v94 = v47;
    v95 = v48;
    if (v54 == enum case for OfferType.inAppPurchase(_:))
    {
      v82 = v9;
      sub_10000C8CC(v81, &unk_100925540);
      v59 = v102;
      (*(v101 + 8))(v99, v102);
      if (sub_100749EE4())
      {
        sub_10000C518(&unk_100925780);
        sub_100752D34();
        sub_100743FF4();
        sub_100752D34();
        v95(v96, v97, v59);
        sub_100016B4C(v98, v85, &unk_100925540);
        v60 = sub_100741894();
        swift_allocObject();

        v61 = sub_100741864();
        v62 = &protocol witness table for StreamlinedInAppPurchaseOfferButtonPresenter;
      }

      else
      {
        sub_10000C518(&unk_100925780);
        sub_100752D34();
        sub_100743FF4();
        sub_100752D34();
        v95(v96, v97, v59);
        sub_100016B4C(v98, v85, &unk_100925540);
        v60 = sub_1007420B4();
        swift_allocObject();

        v61 = sub_100742094();
        v62 = &protocol witness table for InAppPurchaseOfferButtonPresenter;
      }

      *(&v109 + 1) = v60;
      v110 = v62;
      *&v108 = v61;
      v50 = v83;
      (*(v83 + 8))(v90, v87);
      v9 = v82;
      goto LABEL_20;
    }

    v63 = v101;
    v64 = v102;
    v65 = v99;
    if (v54 == enum case for OfferType.arcade(_:))
    {
      sub_10000C8CC(v81, &unk_100925540);
      (*(v63 + 8))(v65, v64);
      v95(v96, v97, v64);
      sub_100016B4C(v98, v85, &unk_100925540);
      v66 = sub_10074DF04();
      swift_allocObject();

      v67 = sub_10074DEF4();
      *(&v109 + 1) = v66;
      v110 = &protocol witness table for ArcadeSubscriptionOfferButtonPresenter;
      *&v108 = v67;
    }

    else
    {
      if (v54 != enum case for OfferType.arcadeApp(_:))
      {
        sub_10000C518(&unk_100925780);
        sub_100752D34();
        v97 = v104;
        v98 = v103;
        sub_10000C518(&qword_100929F60);
        sub_100752D34();
        v106 = sub_100743FF4();
        v107 = &protocol witness table for Restrictions;
        sub_100752D34();
        v72 = v102;
        v95(v96, v65, v102);
        v73 = v81;
        sub_100016B4C(v81, v85, &unk_100925540);
        sub_100744AC4();
        sub_100752D34();
        sub_100744984();

        v74 = sub_100742634();
        swift_allocObject();

        v75 = sub_100742624();
        sub_10000C8CC(v73, &unk_100925540);
        (*(v101 + 8))(v99, v72);
        *(&v109 + 1) = v74;
        v110 = &protocol witness table for AppOfferButtonPresenter;
        *&v108 = v75;
        sub_10000C8CC(v90, &qword_100929F58);
        v50 = v83;
        goto LABEL_20;
      }

      v50 = v83;
      v48 = v95;
      if (v45)
      {
        goto LABEL_7;
      }

      sub_10000C8CC(v81, &unk_100925540);
      (*(v101 + 8))(v99, v102);
      sub_100745F14();
      if (swift_dynamicCastClass())
      {
        sub_100745EA4();
      }

      v95(v96, v97, v102);
      sub_100016B4C(v98, v85, &unk_100925540);
      v76 = sub_10074DF04();
      swift_allocObject();

      v77 = sub_10074DEF4();
      *(&v109 + 1) = v76;
      v110 = &protocol witness table for ArcadeSubscriptionOfferButtonPresenter;

      *&v108 = v77;
    }

    v50 = v83;
    (*(v83 + 8))(v51, v87);
    goto LABEL_20;
  }

  return [v9 setHidden:{1, v29}];
}

void (*sub_10015F0C0(uint64_t *a1))(uint64_t a1, char a2)
{
  a1[2] = v1;
  v3 = [v1 accessibilityLabel];
  if (v3)
  {
    v4 = v3;
    v5 = sub_100753094();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  *a1 = v5;
  a1[1] = v7;
  return sub_10015F148;
}

void sub_10015F148(uint64_t a1, char a2)
{
  v3 = *(a1 + 8);
  if (a2)
  {
    if (v3)
    {

      v4 = sub_100753064();
    }

    else
    {
      v4 = 0;
    }

    [*(a1 + 16) setAccessibilityLabel:v4];
  }

  else if (v3)
  {
    v4 = sub_100753064();

    [*(a1 + 16) setAccessibilityLabel:v4];
  }

  else
  {
    v4 = 0;
    [*(a1 + 16) setAccessibilityLabel:0];
  }
}

BOOL sub_10015F21C(uint64_t a1, uint64_t a2, char a3)
{
  v6 = sub_10000C518(&qword_100929F58);
  __chkstk_darwin(v6);
  v8 = &v18 - v7;
  v9 = OBJC_IVAR____TtC22SubscribePageExtension11OfferButton_presenter;
  swift_beginAccess();
  sub_100016B4C(v3 + v9, &v19, &qword_100929E68);
  if (!v20)
  {
    sub_10000C8CC(&v19, &qword_100929E68);
    return 1;
  }

  sub_100012160(&v19, v21);
  v10 = *(v6 + 48);
  v11 = sub_10074F8C4();
  v12 = *(v11 - 8);
  (*(v12 + 16))(v8, a1, v11);
  v8[v10] = a3 & 1;
  v13 = (*(v12 + 88))(v8, v11);
  if (v13 == enum case for OfferType.app(_:))
  {
    goto LABEL_3;
  }

  if (v13 == enum case for OfferType.inAppPurchase(_:))
  {
    if (sub_100749EE4())
    {
      v16 = sub_100741894();
    }

    else
    {
      v16 = sub_1007420B4();
    }

    v14 = v16;
    (*(v12 + 8))(v8, v11);
    goto LABEL_12;
  }

  if (v13 == enum case for OfferType.arcade(_:))
  {
    goto LABEL_9;
  }

  if (v13 != enum case for OfferType.arcadeApp(_:))
  {
    v14 = sub_100742634();
    sub_10000C8CC(v8, &qword_100929F58);
    goto LABEL_12;
  }

  if (a3)
  {
LABEL_3:
    (*(v12 + 8))(v8, v11);
    v14 = sub_100742634();
  }

  else
  {
LABEL_9:
    (*(v12 + 8))(v8, v11);
    v14 = sub_10074DF04();
  }

LABEL_12:
  sub_10000C888(v21, v21[3]);
  DynamicType = swift_getDynamicType();
  sub_10000C620(v21);
  return DynamicType != v14;
}

uint64_t sub_10015F4E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned __int8 a9, unsigned __int8 a10)
{
  v77 = a8;
  v78 = a7;
  v71 = a6;
  v73 = a5;
  v83 = a4;
  v10 = sub_10000C518(&qword_100929F58);
  __chkstk_darwin(v10);
  v76 = v65 - v11;
  v12 = sub_10000C518(&unk_100925540);
  __chkstk_darwin(v12 - 8);
  v75 = v65 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v80 = v65 - v15;
  v79 = sub_10000C518(&unk_100925560);
  v81 = *(v79 - 8);
  __chkstk_darwin(v79);
  v74 = v65 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = v65 - v18;
  v20 = sub_10074F8C4();
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v84 = v65 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_100743184();
  v24 = *(v23 - 8);
  __chkstk_darwin(v23);
  v26 = v65 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v82 = result;
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
    }

    v29 = Strong;
    v72 = v20;
    sub_1007464F4();
    v30 = sub_100743154();
    (*(v24 + 8))(v26, v23);
    v31 = v84;
    v32 = v83;
    sub_100749F24();
    if (!sub_10015F21C(v31, v32, v30 & 1))
    {

      return (*(v21 + 8))(v31, v72);
    }

    v68 = v29;
    v69 = a10;
    v67 = a9;
    v33 = v81 + 16;
    v34 = *(v81 + 16);
    v66 = v19;
    v35 = v79;
    v34(v19, v77, v79);
    sub_100016B4C(v78, v80, &unk_100925540);
    v36 = *(v10 + 48);
    v37 = v76;
    v38 = v31;
    v39 = v72;
    (*(v21 + 16))(v76, v38, v72);
    *(v37 + v36) = v30 & 1;
    v70 = v21;
    v40 = (*(v21 + 88))(v37, v39);
    if (v40 != enum case for OfferType.app(_:))
    {
      v65[0] = v34;
      v65[1] = v33;
      if (v40 == enum case for OfferType.inAppPurchase(_:))
      {
        sub_10000C8CC(v80, &unk_100925540);
        (*(v81 + 8))(v19, v35);
        if (sub_100749EE4())
        {
          sub_10000C518(&unk_100925780);
          sub_100752764();
          sub_100752D34();
          sub_100743FF4();
          sub_100752D34();
          (v65[0])(v74, v77, v35);
          sub_100016B4C(v78, v75, &unk_100925540);
          v46 = sub_100741894();
          swift_allocObject();

          v47 = sub_100741864();
          v48 = &protocol witness table for StreamlinedInAppPurchaseOfferButtonPresenter;
        }

        else
        {
          sub_10000C518(&unk_100925780);
          sub_100752764();
          sub_100752D34();
          sub_100743FF4();
          sub_100752D34();
          (v65[0])(v74, v77, v35);
          sub_100016B4C(v78, v75, &unk_100925540);
          v46 = sub_1007420B4();
          swift_allocObject();

          v47 = sub_100742094();
          v48 = &protocol witness table for InAppPurchaseOfferButtonPresenter;
        }

        v91 = v46;
        v92 = v48;
        v90 = v47;
        v45 = v70;
        (*(v70 + 8))(v76, v72);
        goto LABEL_16;
      }

      v49 = v81;
      v50 = v80;
      if (v40 == enum case for OfferType.arcade(_:))
      {
        sub_10000C8CC(v80, &unk_100925540);
        (*(v49 + 8))(v19, v35);
        (v65[0])(v74, v77, v35);
        sub_100016B4C(v78, v75, &unk_100925540);
        v51 = sub_10074DF04();
        swift_allocObject();

        v52 = sub_10074DEF4();
        v91 = v51;
        v92 = &protocol witness table for ArcadeSubscriptionOfferButtonPresenter;
        v90 = v52;
        v45 = v70;
        (*(v70 + 8))(v37, v72);
        goto LABEL_16;
      }

      if (v40 != enum case for OfferType.arcadeApp(_:))
      {
        sub_10000C518(&unk_100925780);
        sub_100752764();
        sub_100752D34();
        v78 = v85;
        v77 = v86;
        sub_10000C518(&qword_100929F60);
        sub_100752D34();
        v88 = sub_100743FF4();
        v89 = &protocol witness table for Restrictions;
        sub_100752D34();
        (v65[0])(v74, v19, v35);
        sub_100016B4C(v50, v75, &unk_100925540);
        sub_100744AC4();
        sub_100752D34();
        sub_100744984();

        v61 = sub_100742634();
        swift_allocObject();

        v62 = sub_100742624();
        sub_10000C8CC(v50, &unk_100925540);
        (*(v81 + 8))(v19, v79);
        v91 = v61;
        v92 = &protocol witness table for AppOfferButtonPresenter;
        v90 = v62;
        sub_10000C8CC(v37, &qword_100929F58);
        goto LABEL_6;
      }

      v39 = v72;
      v34 = v65[0];
      if ((v30 & 1) == 0)
      {
        sub_10000C8CC(v80, &unk_100925540);
        (*(v81 + 8))(v66, v35);
        if (v73)
        {
          sub_100745F14();
          v58 = swift_dynamicCastClass();
          v59 = v72;
          v60 = v65[0];
          if (v58)
          {
            sub_100745EA4();
            v35 = v79;
          }

          v60(v74, v77, v35);
        }

        else
        {
          v59 = v72;
          (v65[0])(v74, v77, v35);
        }

        sub_100016B4C(v78, v75, &unk_100925540);
        v63 = sub_10074DF04();
        swift_allocObject();

        v64 = sub_10074DEF4();
        v91 = v63;
        v92 = &protocol witness table for ArcadeSubscriptionOfferButtonPresenter;

        v90 = v64;
        v45 = v70;
        (*(v70 + 8))(v76, v59);
        goto LABEL_16;
      }
    }

    (*(v70 + 8))(v37, v39);
    sub_10000C518(&unk_100925780);
    sub_100752764();
    sub_100752D34();
    v78 = v86;
    sub_10000C518(&qword_100929F60);
    sub_100752D34();
    v88 = sub_100743FF4();
    v89 = &protocol witness table for Restrictions;
    sub_100752D34();
    v41 = v66;
    v34(v74, v66, v35);
    v42 = v80;
    sub_100016B4C(v80, v75, &unk_100925540);
    sub_100744AC4();
    sub_100752D34();
    sub_100744984();

    v43 = sub_100742634();
    swift_allocObject();

    v44 = sub_100742624();
    sub_10000C8CC(v42, &unk_100925540);
    (*(v81 + 8))(v41, v79);
    v91 = v43;
    v92 = &protocol witness table for AppOfferButtonPresenter;
    v90 = v44;
LABEL_6:
    v45 = v70;
LABEL_16:
    v53 = objc_opt_self();
    v54 = [v53 areAnimationsEnabled];
    [v53 setAnimationsEnabled:0];
    v55 = OBJC_IVAR____TtC22SubscribePageExtension11OfferButton_isConfigurationLayoutEnabled;
    v56 = v68;
    *(v68 + OBJC_IVAR____TtC22SubscribePageExtension11OfferButton_isConfigurationLayoutEnabled) = 0;
    [v56 setHidden:0];
    sub_1001665F8(&qword_100929F68, type metadata accessor for OfferButton);
    sub_10007271C(&v90, v91);
    swift_unknownObjectRetain();
    sub_100748CC4();
    [v53 setAnimationsEnabled:v54];

    (*(v45 + 8))(v84, v72);
    *(v56 + v55) = 1;
    sub_10000C824(&v90, v87);
    v57 = OBJC_IVAR____TtC22SubscribePageExtension11OfferButton_presenter;
    swift_beginAccess();
    sub_100166588(v87, v56 + v57);
    swift_endAccess();

    return sub_10000C620(&v90);
  }

  return result;
}

uint64_t sub_100160590(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v77 = a5;
  v82 = a3;
  v83 = a4;
  v80 = a1;
  v81 = a2;
  v78 = sub_10074CDE4();
  v75 = *(v78 - 8);
  __chkstk_darwin(v78);
  v76 = &v63 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10074A104();
  __chkstk_darwin(v10 - 8);
  v74 = &v63 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10000C518(&unk_100925990);
  __chkstk_darwin(v12 - 8);
  v73 = &v63 - v13;
  v14 = sub_100745E94();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v63 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v63 - v19;
  v21 = sub_1007479B4();
  v22 = *(v21 - 8);
  __chkstk_darwin(v21);
  v64 = &v63 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v63 = &v63 - v25;
  __chkstk_darwin(v26);
  v65 = &v63 - v27;
  __chkstk_darwin(v28);
  v68 = &v63 - v29;
  __chkstk_darwin(v30);
  v87 = &v63 - v31;
  __chkstk_darwin(v32);
  v69 = &v63 - v33;
  v34 = sub_1007470D4();
  v71 = *(v34 - 8);
  v72 = v34;
  __chkstk_darwin(v34);
  v70 = &v63 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v37 = __chkstk_darwin(v36).n128_u64[0];
  v66 = &v63 - v38;
  [v7 setSelected:{0, v37}];
  v79 = a6;
  sub_10074CDB4();
  v86 = [v7 traitCollection];
  v84 = v7;
  v67 = v7[OBJC_IVAR____TtC22SubscribePageExtension11OfferButton_includeTopPadding];
  v39 = *(v15 + 104);
  v39(v17, enum case for OfferEnvironment.arcadeProductPage(_:), v14);
  LOBYTE(a6) = sub_100745E84();
  v40 = *(v15 + 8);
  v40(v17, v14);
  v85 = v40;
  if (a6)
  {
    if (qword_1009219B8 != -1)
    {
      swift_once();
    }

    v41 = qword_1009827C8;
LABEL_13:
    v43 = sub_10000D0FC(v21, v41);
    v44 = v68;
    (*(v22 + 16))(v68, v43, v21);
LABEL_14:
    v45 = v87;
    goto LABEL_15;
  }

  v39(v17, enum case for OfferEnvironment.arcadeLaunchRepairCompactSheet(_:), v14);
  v42 = sub_100745E84();
  v40(v17, v14);
  if (v42)
  {
    if (qword_1009219B0 != -1)
    {
      swift_once();
    }

    v41 = qword_1009827B0;
    goto LABEL_13;
  }

  if (sub_100745E74())
  {
    if (qword_1009219A8 != -1)
    {
      swift_once();
    }

    v41 = qword_100982798;
    goto LABEL_13;
  }

  v39(v17, enum case for OfferEnvironment.navigationBar(_:), v14);
  v52 = sub_100745E84();
  v85(v17, v14);
  if (v52)
  {
    if (qword_1009219C0 != -1)
    {
      swift_once();
    }

    v53 = sub_10000D0FC(v21, qword_10093FFA0);
    v44 = v68;
    (*(v22 + 16))(v68, v53, v21);
    goto LABEL_14;
  }

  v54 = sub_100753194();
  if ((sub_100753804() & 1) == 0)
  {
    if (v54 < 7)
    {
      goto LABEL_24;
    }

LABEL_29:
    if (sub_100753804())
    {
      v56 = v68;
      if (qword_100921988 != -1)
      {
        swift_once();
      }

      v57 = qword_10093FF40;
    }

    else
    {
      v56 = v68;
      if (qword_100921990 != -1)
      {
        swift_once();
      }

      v57 = qword_10093FF58;
    }

    v60 = sub_10000D0FC(v21, v57);
    v61 = v63;
    (*(v22 + 16))(v63, v60, v21);
    v62 = v65;
    (*(v22 + 32))(v65, v61, v21);
    v44 = v56;
    sub_10074F4B4();
    (*(v22 + 8))(v62, v21);
    goto LABEL_14;
  }

  if (v54 > 8)
  {
    goto LABEL_29;
  }

LABEL_24:
  if (sub_100753804())
  {
    v45 = v87;
    if (qword_100921988 != -1)
    {
      swift_once();
    }

    v55 = qword_10093FF40;
  }

  else
  {
    v45 = v87;
    if (qword_100921990 != -1)
    {
      swift_once();
    }

    v55 = qword_10093FF58;
  }

  v58 = sub_10000D0FC(v21, v55);
  v59 = v64;
  (*(v22 + 16))(v64, v58, v21);
  v44 = v68;
  (*(v22 + 32))(v68, v59, v21);
LABEL_15:
  v46 = *(v22 + 32);
  v46(v45, v44, v21);
  if (v67 != 2)
  {
    sub_1007479A4();
    v45 = v87;
  }

  v85(v20, v14);
  v46(v69, v45, v21);
  sub_100016B4C(v77, v73, &unk_100925990);
  (*(v75 + 16))(v76, v79, v78);

  sub_10074A0E4();
  v47 = v66;
  sub_1007470C4();
  v49 = v70;
  v48 = v71;
  v50 = v72;
  (*(v71 + 16))(v70, v47, v72);
  sub_100162DE0(v49, v84, &type metadata accessor for TextConfiguration, &protocol witness table for TextConfiguration, &unk_100869748, sub_100166A60, &unk_100869760);
  return (*(v48 + 8))(v47, v50);
}

uint64_t sub_100160FDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v69 = a5;
  v74 = a3;
  v75 = a4;
  v72 = a1;
  v73 = a2;
  v70 = sub_10074CDE4();
  v67 = *(v70 - 8);
  __chkstk_darwin(v70);
  v68 = &v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10074A104();
  __chkstk_darwin(v10 - 8);
  v66 = &v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10000C518(&unk_100925990);
  __chkstk_darwin(v12 - 8);
  v65 = &v55 - v13;
  v14 = sub_100745E94();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v55 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v55 - v19;
  v21 = sub_1007479B4();
  v22 = *(v21 - 8);
  __chkstk_darwin(v21);
  v55 = &v55 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v59 = &v55 - v25;
  __chkstk_darwin(v26);
  v60 = &v55 - v27;
  __chkstk_darwin(v28);
  v61 = &v55 - v29;
  v30 = sub_1007470D4();
  v63 = *(v30 - 8);
  v64 = v30;
  __chkstk_darwin(v30);
  v62 = &v55 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v33 = __chkstk_darwin(v32).n128_u64[0];
  v56 = &v55 - v34;
  [v7 setSelected:{0, v33}];
  v71 = a6;
  sub_10074CDB4();
  v58 = [v7 traitCollection];
  v76 = v7;
  v57 = v7[OBJC_IVAR____TtC22SubscribePageExtension11OfferButton_includeTopPadding];
  v35 = *(v15 + 104);
  v35(v17, enum case for OfferEnvironment.arcadeProductPage(_:), v14);
  LOBYTE(a6) = sub_100745E84();
  v36 = *(v15 + 8);
  v36(v17, v14);
  v77 = v36;
  if (a6)
  {
    if (qword_1009219B8 != -1)
    {
      swift_once();
    }

    v37 = qword_1009827C8;
LABEL_13:
    v39 = sub_10000D0FC(v21, v37);
    v40 = v59;
    (*(v22 + 16))(v59, v39, v21);
    v41 = v60;
    v42 = v58;
    goto LABEL_14;
  }

  v35(v17, enum case for OfferEnvironment.arcadeLaunchRepairCompactSheet(_:), v14);
  v38 = sub_100745E84();
  v36(v17, v14);
  if (v38)
  {
    if (qword_1009219B0 != -1)
    {
      swift_once();
    }

    v37 = qword_1009827B0;
    goto LABEL_13;
  }

  if (sub_100745E74())
  {
    if (qword_1009219A8 != -1)
    {
      swift_once();
    }

    v37 = qword_100982798;
    goto LABEL_13;
  }

  v35(v17, enum case for OfferEnvironment.navigationBar(_:), v14);
  v49 = sub_100745E84();
  v77(v17, v14);
  if (v49)
  {
    v40 = v59;
    v41 = v60;
    v42 = v58;
    if (qword_1009219C0 != -1)
    {
      swift_once();
    }

    v50 = sub_10000D0FC(v21, qword_10093FFA0);
    (*(v22 + 16))(v40, v50, v21);
  }

  else
  {
    v42 = v58;
    v51 = sub_100753804();
    v40 = v59;
    v41 = v60;
    if (v51)
    {
      if (qword_100921988 != -1)
      {
        swift_once();
      }

      v52 = qword_10093FF40;
    }

    else
    {
      if (qword_100921990 != -1)
      {
        swift_once();
      }

      v52 = qword_10093FF58;
    }

    v53 = sub_10000D0FC(v21, v52);
    v54 = v55;
    (*(v22 + 16))(v55, v53, v21);
    (*(v22 + 32))(v40, v54, v21);
  }

LABEL_14:
  v43 = *(v22 + 32);
  v43(v41, v40, v21);
  if (v57 != 2)
  {
    sub_1007479A4();
  }

  v77(v20, v14);
  v43(v61, v41, v21);
  sub_100016B4C(v69, v65, &unk_100925990);
  (*(v67 + 16))(v68, v71, v70);

  sub_10074A0E4();
  v44 = v56;
  sub_1007470B4();
  v46 = v62;
  v45 = v63;
  v47 = v64;
  (*(v63 + 16))(v62, v44, v64);
  sub_100162DE0(v46, v76, &type metadata accessor for TextConfiguration, &protocol witness table for TextConfiguration, &unk_100869748, sub_100166A60, &unk_100869760);
  return (*(v45 + 8))(v44, v47);
}

uint64_t sub_100161868(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = sub_10000C518(&unk_100923960);
  __chkstk_darwin(v5 - 8);
  v36 = v33 - v6;
  v7 = sub_100752294();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = (v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = sub_10074ED34();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = swift_weakLoadStrong();
  v37 = result;
  if (!result)
  {
    return result;
  }

  v35 = v8;
  sub_100745F14();
  if (!swift_dynamicCastClass())
  {

    goto LABEL_10;
  }

  v33[0] = v12;
  sub_10000C518(&unk_100925780);
  sub_1007526E4();
  v33[1] = v58;
  sub_100016B4C(a2, &v58, &unk_100923520);
  v34 = v7;
  if (*(&v59 + 1))
  {
    sub_10000C518(&qword_1009232E0);
    if (swift_dynamicCast())
    {
      goto LABEL_9;
    }
  }

  else
  {
    sub_10000C8CC(&v58, &unk_100923520);
  }

  swift_getObjectType();
  sub_100745F04();
  sub_1007424E4();
  (*(v33[0] + 8))(v14, v11);
LABEL_9:
  sub_100745EE4();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v7 = v34;
LABEL_10:

  [v3 bounds];
  LOBYTE(v58) = 1;
  *&v40 = v3;
  *(&v40 + 1) = v16;
  *&v41 = v17;
  *(&v41 + 1) = v18;
  *&v42 = v19;
  BYTE8(v42) = 1;
  __asm { FMOV            V0.2D, #10.0 }

  v43 = _Q0;
  v44 = _Q0;
  v45 = 15;
  sub_1000A7FA0();
  v25 = v3;
  *v10 = sub_100753774();
  v26 = v35;
  (*(v35 + 104))(v10, enum case for DispatchPredicate.onQueue(_:), v7);
  v27 = sub_1007522C4();
  result = (*(v26 + 8))(v10, v7);
  if (v27)
  {
    v48 = xmmword_100931330;
    v49 = xmmword_100931340;
    v50 = xmmword_100931350;
    v46 = xmmword_100931310;
    v47 = xmmword_100931320;
    v54 = v42;
    v55 = v43;
    v56 = v44;
    v52 = v40;
    v53 = v41;
    v58 = xmmword_100931310;
    v59 = xmmword_100931320;
    v61 = xmmword_100931340;
    v62 = xmmword_100931350;
    v51 = qword_100931360;
    v57 = v45;
    v63 = qword_100931360;
    v60 = xmmword_100931330;
    sub_100016B4C(&v46, v38, &unk_1009308C0);
    xmmword_100931330 = v54;
    xmmword_100931340 = v55;
    xmmword_100931350 = v56;
    qword_100931360 = v57;
    xmmword_100931310 = v52;
    xmmword_100931320 = v53;
    sub_10000C8CC(&v58, &unk_1009308C0);
    v28 = sub_10000C518(&unk_100923210);
    sub_1001664D8(&v40, v38);
    v29 = v36;
    v30 = v37;
    sub_1007526C4();
    v31 = *(v28 - 8);
    if ((*(v31 + 48))(v29, 1, v28) == 1)
    {

      sub_10000C8CC(v29, &unk_100923960);
    }

    else
    {

      sub_1003C0E00(v32, 1, v30, v29);

      (*(v31 + 8))(v29, v28);
    }

    v38[2] = xmmword_100931330;
    v38[3] = xmmword_100931340;
    v38[4] = xmmword_100931350;
    v39 = qword_100931360;
    v38[0] = xmmword_100931310;
    v38[1] = xmmword_100931320;
    xmmword_100931310 = v46;
    xmmword_100931320 = v47;
    xmmword_100931330 = v48;
    xmmword_100931340 = v49;
    xmmword_100931350 = v50;
    qword_100931360 = v51;
    sub_10000C8CC(v38, &unk_1009308C0);

    return sub_100166534(&v40);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100161E50(uint64_t a1, uint64_t a2)
{
  v4 = sub_100752AC4();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = v13 - v9;
  v14 = 0u;
  v15 = 0u;
  memset(v13, 0, sizeof(v13));
  sub_100752A24();
  sub_10000C8CC(v13, &unk_100923520);
  sub_10000C8CC(&v14, &unk_100923520);
  *(&v15 + 1) = &type metadata for String;
  *&v14 = a1;
  *(&v14 + 1) = a2;

  sub_100752AA4();
  v11 = *(v5 + 8);
  v11(v7, v4);
  sub_10000C8CC(&v14, &unk_100923520);
  sub_100753C74();
  return (v11)(v10, v4);
}

id sub_100162018(char a1)
{
  v2 = a1 & 1;
  ObjectType = swift_getObjectType();
  v6.receiver = v1;
  v6.super_class = ObjectType;
  if (objc_msgSendSuper2(&v6, "isEnabled") != v2)
  {
    sub_1001560A4(v2);
  }

  v5.receiver = v1;
  v5.super_class = ObjectType;
  return objc_msgSendSuper2(&v5, "setEnabled:", v2);
}

uint64_t sub_100162090(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14 = sub_10000C518(&unk_100925990);
  __chkstk_darwin(v14 - 8);
  v16 = &v20 - v15;
  v17 = sub_10000C518(&unk_100925560);
  v18 = *(v17 - 8);
  (*(v18 + 16))(v16, a5, v17);
  (*(v18 + 56))(v16, 0, 1, v17);
  sub_100160590(a1, a2, a3, a4, v16, a8);
  return sub_10000C8CC(v16, &unk_100925990);
}

void sub_1001621E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_10000C518(&unk_100925990);
  __chkstk_darwin(v9 - 8);
  v11 = &v14 - v10;
  v12 = sub_10000C518(&unk_100925560);
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  sub_100160590(a1, a2, 0, 0, v11, a5);
  sub_10000C8CC(v11, &unk_100925990);
  v13 = sub_100753064();
  [v5 accessibilityShowText:v13];
}

uint64_t sub_100162320(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = sub_10000C518(&unk_100925990);
  __chkstk_darwin(v12 - 8);
  v14 = &v18 - v13;
  v15 = sub_10000C518(&unk_100925560);
  v16 = *(v15 - 8);
  (*(v16 + 16))(v14, a5, v15);
  (*(v16 + 56))(v14, 0, 1, v15);
  sub_100160FDC(a1, a2, a3, a4, v14, a6);
  return sub_10000C8CC(v14, &unk_100925990);
}

uint64_t sub_100162478(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10000C518(&unk_100925990);
  __chkstk_darwin(v6 - 8);
  v8 = &v11 - v7;
  v9 = sub_10000C518(&unk_100925560);
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  sub_100160FDC(a1, a2, 0, 0, v8, a3);
  return sub_10000C8CC(v8, &unk_100925990);
}

uint64_t sub_1001625F0()
{
  v1 = [v0 accessibilityLabel];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_100753094();

  return v3;
}

void sub_100162658(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = sub_100753064();
  }

  else
  {
    v3 = 0;
  }

  [v2 setAccessibilityLabel:v3];
}

void (*sub_1001626C4(uint64_t **a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = sub_10015F0C0(v2);
  return sub_100018728;
}

uint64_t sub_1001627C8(uint64_t a1, char *a2)
{
  ObjectType = swift_getObjectType();
  v5 = sub_10074D814();
  v43 = v5;
  v44 = &protocol witness table for IndeterminateProgressConfiguration;
  v42[0] = a1;
  v6 = OBJC_IVAR____TtC22SubscribePageExtension11OfferButton__configuration;
  swift_beginAccess();
  sub_10000C824(&a2[v6], v40);
  sub_10000C888(v40, v41);
  DynamicType = swift_getDynamicType();
  sub_10000C888(v42, v5);
  v8 = swift_getDynamicType();
  sub_10000C888(v42, v43);
  v9 = [a2 traitCollection];
  LOBYTE(a1) = sub_10074AE84();

  if (a1)
  {
    goto LABEL_28;
  }

  swift_beginAccess();
  sub_100166254(&a2[v6], v42);
  swift_endAccess();
  v39.receiver = a2;
  v39.super_class = ObjectType;
  objc_msgSendSuper2(&v39, "frame");
  if (CGRectIsEmpty(v45))
  {
    sub_10000C824(&a2[v6], aBlock);
    sub_10000C888(aBlock, v34);
    v10 = sub_10074AE24();
    sub_10000C620(aBlock);
    if (v10)
    {
      if (DynamicType != v8)
      {
        sub_100153DC0();
      }

      goto LABEL_28;
    }
  }

  sub_10000C824(&a2[v6], aBlock);
  sub_10000C888(aBlock, v34);
  if (sub_10074AE44())
  {
    v11 = a2[OBJC_IVAR____TtC22SubscribePageExtension11OfferButton_isConfigurationLayoutEnabled];
    sub_10000C620(aBlock);
    if ((v11 & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  else
  {
    sub_10000C620(aBlock);
  }

  sub_10000C824(&a2[v6], aBlock);
  sub_10000C888(aBlock, v34);
  v12 = sub_10074AE34();
  sub_10000C620(aBlock);
  if (v12)
  {
LABEL_11:
    v13 = objc_opt_self();
    [v13 begin];
    v32 = 1;
    [v13 setDisableActions:1];
    goto LABEL_13;
  }

  v32 = 0;
LABEL_13:
  sub_10000C888(v40, v41);
  sub_1001665F8(&qword_100929E60, type metadata accessor for OfferButton);
  sub_10074AEA4();
  if (DynamicType != v8)
  {
    sub_100153DC0();
  }

  sub_10000C888(v42, v43);
  sub_10074AE64();
  if (a2[OBJC_IVAR____TtC22SubscribePageExtension11OfferButton_isConfigurationLayoutEnabled] != 1)
  {
    [a2 setNeedsLayout];
    v38.receiver = a2;
    v38.super_class = ObjectType;
    objc_msgSendSuper2(&v38, "invalidateIntrinsicContentSize");
    v27 = &a2[OBJC_IVAR____TtC22SubscribePageExtension11OfferButton_cachedIntrinsicContentSize];
    *v27 = 0;
    *(v27 + 1) = 0;
    v27[16] = 1;
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v29 = Strong;
      [Strong setNeedsLayout];
    }

    if (!v32)
    {
      goto LABEL_28;
    }

LABEL_27:
    [objc_opt_self() commit];
    goto LABEL_28;
  }

  sub_10000C888(v40, v41);
  sub_10074AE54();
  v15 = v14;
  v17 = v16;
  sub_10000C888(v42, v43);
  sub_10074AE54();
  v20 = v17 == v19 && v15 == v18;
  v21 = swift_unknownObjectWeakLoadStrong();
  if (!v21)
  {
    v21 = [a2 superview];
  }

  v22 = swift_allocObject();
  *(v22 + 16) = a2;
  *(v22 + 24) = v20;
  *(v22 + 32) = v21;
  v23 = objc_opt_self();
  v24 = a2;
  v25 = v21;
  if ([v23 areAnimationsEnabled])
  {
    v35 = sub_100166A60;
    v36 = v22;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000CF7B0;
    v34 = &unk_1008696C0;
    v26 = _Block_copy(aBlock);

    [v23 animateWithDuration:v26 animations:0.3];

    _Block_release(v26);
    if (!v32)
    {
      goto LABEL_28;
    }

    goto LABEL_27;
  }

  [v24 setNeedsLayout];
  if (v20)
  {
    [v24 layoutIfNeeded];
  }

  else
  {
    v37.receiver = v24;
    v37.super_class = ObjectType;
    objc_msgSendSuper2(&v37, "invalidateIntrinsicContentSize");
    v31 = &v24[OBJC_IVAR____TtC22SubscribePageExtension11OfferButton_cachedIntrinsicContentSize];
    *v31 = 0;
    *(v31 + 1) = 0;
    v31[16] = 1;
    [v25 setNeedsLayout];
    [v25 layoutIfNeeded];
  }

  if (v32)
  {
    goto LABEL_27;
  }

LABEL_28:
  sub_10000C620(v40);
  return sub_10000C620(v42);
}

uint64_t sub_100162DE0(uint64_t a1, char *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  ObjectType = swift_getObjectType();
  v13 = a3(0);
  v54 = v13;
  v55 = a4;
  v14 = sub_10000D134(v53);
  (*(*(v13 - 8) + 32))(v14, a1, v13);
  v15 = OBJC_IVAR____TtC22SubscribePageExtension11OfferButton__configuration;
  swift_beginAccess();
  sub_10000C824(&a2[v15], v51);
  sub_10000C888(v51, v52);
  DynamicType = swift_getDynamicType();
  sub_10000C888(v53, v54);
  v17 = swift_getDynamicType();
  sub_10000C888(v53, v54);
  v18 = [a2 traitCollection];
  LOBYTE(a4) = sub_10074AE84();

  if (a4)
  {
    goto LABEL_28;
  }

  swift_beginAccess();
  sub_100166254(&a2[v15], v53);
  swift_endAccess();
  v50.receiver = a2;
  v50.super_class = ObjectType;
  objc_msgSendSuper2(&v50, "frame");
  if (CGRectIsEmpty(v56))
  {
    sub_10000C824(&a2[v15], aBlock);
    sub_10000C888(aBlock, v45);
    v19 = sub_10074AE24();
    sub_10000C620(aBlock);
    if (v19)
    {
      if (DynamicType != v17)
      {
        sub_100153DC0();
      }

      goto LABEL_28;
    }
  }

  v41 = a7;
  sub_10000C824(&a2[v15], aBlock);
  sub_10000C888(aBlock, v45);
  if (sub_10074AE44())
  {
    v20 = a2[OBJC_IVAR____TtC22SubscribePageExtension11OfferButton_isConfigurationLayoutEnabled];
    sub_10000C620(aBlock);
    if ((v20 & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  else
  {
    sub_10000C620(aBlock);
  }

  sub_10000C824(&a2[v15], aBlock);
  sub_10000C888(aBlock, v45);
  v21 = sub_10074AE34();
  sub_10000C620(aBlock);
  if (v21)
  {
LABEL_11:
    v22 = objc_opt_self();
    [v22 begin];
    v42 = 1;
    [v22 setDisableActions:1];
    goto LABEL_13;
  }

  v42 = 0;
LABEL_13:
  sub_10000C888(v51, v52);
  sub_1001665F8(&qword_100929E60, type metadata accessor for OfferButton);
  sub_10074AEA4();
  if (DynamicType != v17)
  {
    sub_100153DC0();
  }

  sub_10000C888(v53, v54);
  sub_10074AE64();
  if (a2[OBJC_IVAR____TtC22SubscribePageExtension11OfferButton_isConfigurationLayoutEnabled] != 1)
  {
    [a2 setNeedsLayout];
    v49.receiver = a2;
    v49.super_class = ObjectType;
    objc_msgSendSuper2(&v49, "invalidateIntrinsicContentSize");
    v36 = &a2[OBJC_IVAR____TtC22SubscribePageExtension11OfferButton_cachedIntrinsicContentSize];
    *v36 = 0;
    *(v36 + 1) = 0;
    v36[16] = 1;
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v38 = Strong;
      [Strong setNeedsLayout];
    }

    if (!v42)
    {
      goto LABEL_28;
    }

LABEL_27:
    [objc_opt_self() commit];
    goto LABEL_28;
  }

  sub_10000C888(v51, v52);
  sub_10074AE54();
  v24 = v23;
  v26 = v25;
  sub_10000C888(v53, v54);
  sub_10074AE54();
  v29 = v26 == v28 && v24 == v27;
  v30 = swift_unknownObjectWeakLoadStrong();
  if (!v30)
  {
    v30 = [a2 superview];
  }

  v31 = swift_allocObject();
  *(v31 + 16) = a2;
  *(v31 + 24) = v29;
  *(v31 + 32) = v30;
  v32 = objc_opt_self();
  v33 = a2;
  v34 = v30;
  if ([v32 areAnimationsEnabled])
  {
    v46 = a6;
    v47 = v31;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000CF7B0;
    v45 = v41;
    v35 = _Block_copy(aBlock);

    [v32 animateWithDuration:v35 animations:0.3];

    _Block_release(v35);
    if (!v42)
    {
      goto LABEL_28;
    }

    goto LABEL_27;
  }

  [v33 setNeedsLayout];
  if (v29)
  {
    [v33 layoutIfNeeded];
  }

  else
  {
    v48.receiver = v33;
    v48.super_class = ObjectType;
    objc_msgSendSuper2(&v48, "invalidateIntrinsicContentSize");
    v40 = &v33[OBJC_IVAR____TtC22SubscribePageExtension11OfferButton_cachedIntrinsicContentSize];
    *v40 = 0;
    *(v40 + 1) = 0;
    v40[16] = 1;
    [v34 setNeedsLayout];
    [v34 layoutIfNeeded];
  }

  if (v42)
  {
    goto LABEL_27;
  }

LABEL_28:
  sub_10000C620(v51);
  return sub_10000C620(v53);
}

id sub_100163478(uint64_t a1, uint64_t a2, int a3)
{
  v4 = v3;
  v57 = a3;
  v66 = a1;
  v67 = sub_10074CDE4();
  v65 = *(v67 - 8);
  __chkstk_darwin(v67);
  v68 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000C518(&unk_10092EEA0);
  v62 = *(v7 - 8);
  v63 = v7;
  __chkstk_darwin(v7);
  v64 = &v53 - v8;
  v9 = sub_100745E94();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v53 - v14;
  v16 = sub_1007479B4();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v55 = &v53 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v54 = &v53 - v20;
  __chkstk_darwin(v21);
  v56 = &v53 - v22;
  __chkstk_darwin(v23);
  v59 = &v53 - v24;
  __chkstk_darwin(v25);
  v60 = &v53 - v26;
  __chkstk_darwin(v27);
  v61 = &v53 - v28;
  v69 = a2;
  sub_10074CDB4();
  v70 = v4;
  v58 = [v4 traitCollection];
  v29 = *(v10 + 104);
  v29(v12, enum case for OfferEnvironment.arcadeProductPage(_:), v9);
  LOBYTE(a2) = sub_100745E84();
  v30 = *(v10 + 8);
  v30(v12, v9);
  if (a2)
  {
    if (qword_1009219B8 != -1)
    {
      swift_once();
    }

    v31 = sub_10000D0FC(v16, qword_1009827C8);
    v32 = v59;
    (*(v17 + 16))(v59, v31, v16);

    goto LABEL_14;
  }

  v29(v12, enum case for OfferEnvironment.arcadeLaunchRepairCompactSheet(_:), v9);
  v33 = sub_100745E84();
  v53 = v30;
  v30(v12, v9);
  if (v33)
  {
    if (qword_1009219B0 != -1)
    {
      swift_once();
    }

    v34 = qword_1009827B0;
LABEL_13:
    v35 = sub_10000D0FC(v16, v34);
    v32 = v59;
    (*(v17 + 16))(v59, v35, v16);

    v30 = v53;
    goto LABEL_14;
  }

  if (sub_100745E74())
  {
    if (qword_1009219A8 != -1)
    {
      swift_once();
    }

    v34 = qword_100982798;
    goto LABEL_13;
  }

  v29(v12, enum case for OfferEnvironment.navigationBar(_:), v9);
  v41 = sub_100745E84();
  v30 = v53;
  v53(v12, v9);
  if (v41)
  {
    v42 = v58;
    v32 = v59;
    if (qword_1009219C0 != -1)
    {
      swift_once();
    }

    v43 = sub_10000D0FC(v16, qword_10093FFA0);
    (*(v17 + 16))(v32, v43, v16);
  }

  else
  {
    v44 = v58;
    v45 = sub_100753804();
    v32 = v59;
    if (v57)
    {
      if (v45)
      {
        if (qword_100921988 != -1)
        {
          swift_once();
        }

        v46 = qword_10093FF40;
      }

      else
      {
        if (qword_100921990 != -1)
        {
          swift_once();
        }

        v46 = qword_10093FF58;
      }

      v48 = sub_10000D0FC(v16, v46);
      v49 = v54;
      (*(v17 + 16))(v54, v48, v16);
      v50 = v56;
      (*(v17 + 32))(v56, v49, v16);
      sub_10074F4B4();

      (*(v17 + 8))(v50, v16);
    }

    else
    {
      if (v45)
      {
        if (qword_100921988 != -1)
        {
          swift_once();
        }

        v47 = qword_10093FF40;
      }

      else
      {
        if (qword_100921990 != -1)
        {
          swift_once();
        }

        v47 = qword_10093FF58;
      }

      v51 = sub_10000D0FC(v16, v47);
      v52 = v55;
      (*(v17 + 16))(v55, v51, v16);

      (*(v17 + 32))(v32, v52, v16);
    }
  }

LABEL_14:
  v36 = *(v17 + 32);
  v37 = v60;
  v36(v60, v32, v16);
  v30(v15, v9);
  v36(v61, v37, v16);
  (*(v62 + 16))(v64, v66, v63);
  (*(v65 + 16))(v68, v69, v67);
  sub_10074D814();
  swift_allocObject();
  sub_10074D804();

  v39 = v70;
  sub_1001627C8(v38, v70);

  return [v39 accessibilityShowLoading];
}

void sub_100163D1C(uint64_t a1, uint64_t a2, int a3, double a4)
{
  v85 = a3;
  v109 = a2;
  v94 = sub_10074CDE4();
  v107 = *(v94 - 8);
  __chkstk_darwin(v94);
  v8 = &v81 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10000C518(&unk_10092EEA0);
  v105 = *(v9 - 8);
  __chkstk_darwin(v9);
  v106 = &v81 - v10;
  v11 = sub_100745E94();
  v103 = *(v11 - 8);
  v104 = v11;
  __chkstk_darwin(v11);
  v92 = &v81 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v81 - v14;
  v101 = sub_1007479B4();
  v99 = *(v101 - 8);
  __chkstk_darwin(v101);
  v83 = &v81 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v82 = &v81 - v18;
  __chkstk_darwin(v19);
  v84 = &v81 - v20;
  __chkstk_darwin(v21);
  v93 = &v81 - v22;
  __chkstk_darwin(v23);
  v95 = &v81 - v24;
  __chkstk_darwin(v25);
  v96 = &v81 - v26;
  v102 = sub_100749684();
  v100 = *(v102 - 8);
  __chkstk_darwin(v102);
  v97 = &v81 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v98 = &v81 - v29;
  v30 = sub_10074ED34();
  v31 = *(v30 - 8);
  __chkstk_darwin(v30);
  v33 = &v81 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_10000C518(&qword_100929F50);
  __chkstk_darwin(v34 - 8);
  v36 = &v81 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v37);
  v108 = &v81 - v38;
  v110 = v4;
  v39 = *&v4[OBJC_IVAR____TtC22SubscribePageExtension11OfferButton_displayProperties];
  if (v39)
  {
    v87 = v9;
    v88 = v8;
    v89 = a1;
    Strong = swift_weakLoadStrong();
    v91 = v15;
    v90 = v39;
    if (Strong)
    {
      sub_10000C518(&unk_100925780);

      sub_1007526C4();

      if (v111)
      {
        swift_getObjectType();
        sub_100749F14();
        sub_1007424E4();
        swift_unknownObjectRelease();
        (*(v31 + 8))(v33, v30);
        swift_getObjectType();
        v41 = v108;
        sub_1007423D4();
        swift_unknownObjectRelease();
        v42 = sub_100742284();
        (*(*(v42 - 8) + 56))(v41, 0, 1, v42);
        goto LABEL_7;
      }
    }

    else
    {
    }

    v42 = sub_100742284();
    v41 = v108;
    (*(*(v42 - 8) + 56))(v108, 1, 1, v42);
LABEL_7:
    v43 = v103;
    sub_100016B4C(v41, v36, &qword_100929F50);
    sub_100742284();
    v44 = *(v42 - 8);
    v45 = (*(v44 + 48))(v36, 1, v42);
    v46 = v92;
    if (v45 == 1)
    {
      sub_10000C8CC(v36, &qword_100929F50);
    }

    else
    {
      if ((*(v44 + 88))(v36, v42) == enum case for LegacyAppState.installing(_:))
      {
        (*(v44 + 96))(v36, v42);
        v47 = sub_1007421F4();
        (*(*(v47 - 8) + 8))(v36, v47);
        v48 = 1;
        goto LABEL_13;
      }

      (*(v44 + 8))(v36, v42);
    }

    v48 = 0;
LABEL_13:
    v86 = v48;
    v49 = v110;
    sub_10015396C(v48);
    sub_10074CDB4();
    v103 = [v49 traitCollection];
    v50 = v43[13];
    v51 = v104;
    v50(v46, enum case for OfferEnvironment.arcadeProductPage(_:), v104);
    v52 = sub_100745E84();
    v53 = v43[1];
    v53(v46, v51);
    if (v52)
    {
      if (qword_1009219B8 != -1)
      {
        swift_once();
      }

      v54 = qword_1009827C8;
      v55 = v101;
    }

    else
    {
      v50(v46, enum case for OfferEnvironment.arcadeLaunchRepairCompactSheet(_:), v51);
      v56 = sub_100745E84();
      v53(v46, v51);
      if (v56)
      {
        v55 = v101;
        if (qword_1009219B0 != -1)
        {
          swift_once();
        }

        v54 = qword_1009827B0;
      }

      else
      {
        v57 = sub_100745E74();
        v55 = v101;
        if ((v57 & 1) == 0)
        {
          v50(v46, enum case for OfferEnvironment.navigationBar(_:), v51);
          v69 = sub_100745E84();
          v53(v46, v51);
          if (v69)
          {
            v61 = v107;
            v59 = v99;
            if (qword_1009219C0 != -1)
            {
              swift_once();
            }

            v70 = sub_10000D0FC(v55, qword_10093FFA0);
            v60 = v93;
            (*(v59 + 16))(v93, v70, v55);
          }

          else
          {
            v71 = sub_100753804();
            v61 = v107;
            v59 = v99;
            if (v85)
            {
              if (v71)
              {
                v72 = v93;
                if (qword_100921988 != -1)
                {
                  swift_once();
                }

                v73 = qword_10093FF40;
              }

              else
              {
                v72 = v93;
                if (qword_100921990 != -1)
                {
                  swift_once();
                }

                v73 = qword_10093FF58;
              }

              v76 = sub_10000D0FC(v55, v73);
              v77 = v82;
              (*(v59 + 16))(v82, v76, v55);
              v78 = v84;
              (*(v59 + 32))(v84, v77, v55);
              v60 = v72;
              sub_10074F4B4();

              (*(v59 + 8))(v78, v55);
            }

            else
            {
              if (v71)
              {
                v74 = v93;
                if (qword_100921988 != -1)
                {
                  swift_once();
                }

                v75 = qword_10093FF40;
              }

              else
              {
                v74 = v93;
                if (qword_100921990 != -1)
                {
                  swift_once();
                }

                v75 = qword_10093FF58;
              }

              v79 = sub_10000D0FC(v55, v75);
              v80 = v83;
              (*(v59 + 16))(v83, v79, v55);

              (*(v59 + 32))(v74, v80, v55);
              v60 = v74;
            }
          }

          goto LABEL_26;
        }

        if (qword_1009219A8 != -1)
        {
          swift_once();
        }

        v54 = qword_100982798;
      }
    }

    v58 = sub_10000D0FC(v55, v54);
    v59 = v99;
    v60 = v93;
    (*(v99 + 16))(v93, v58, v55);

    v61 = v107;
LABEL_26:
    v62 = *(v59 + 32);
    v63 = v95;
    v62(v95, v60, v55);
    v53(v91, v51);
    v62(v96, v63, v55);
    (*(v105 + 16))(v106, v89, v87);
    (*(v61 + 16))(v88, v109, v94);
    v64 = v98;
    sub_100749674();
    v65 = v100;
    v66 = v97;
    v67 = v102;
    (*(v100 + 16))(v97, v64, v102);
    v68 = v110;
    sub_100162DE0(v66, v110, &type metadata accessor for ProgressConfiguration, &protocol witness table for ProgressConfiguration, &unk_1008696F8, sub_100166A60, &unk_100869710);
    (*(v65 + 8))(v64, v67);
    [v68 setSelected:0];
    [v68 accessibilityShowProgress:a4];

    sub_10000C8CC(v108, &qword_100929F50);
  }
}

void sub_100164B60(uint64_t a1, uint64_t a2, int a3)
{
  v147 = a3;
  v182 = a1;
  v5 = sub_10074A744();
  v172 = *(v5 - 8);
  v173 = v5;
  __chkstk_darwin(v5);
  v170 = &v143 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v171 = &v143 - v8;
  v9 = sub_10074CDE4();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v143 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10074A104();
  __chkstk_darwin(v13 - 8);
  v169 = &v143 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v168 = sub_100742E24();
  v167 = *(v168 - 8);
  __chkstk_darwin(v168);
  v165 = &v143 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v164 = &v143 - v17;
  v18 = sub_10000C518(&unk_10092EEA0);
  v179 = *(v18 - 8);
  v180 = v18;
  __chkstk_darwin(v18);
  v181 = &v143 - v19;
  v185 = sub_100745E94();
  v175 = *(v185 - 8);
  __chkstk_darwin(v185);
  v177 = &v143 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v184 = &v143 - v22;
  __chkstk_darwin(v23);
  v176 = &v143 - v24;
  v178 = sub_1007479B4();
  v183 = *(v178 - 8);
  __chkstk_darwin(v178);
  v145 = &v143 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v144 = &v143 - v27;
  __chkstk_darwin(v28);
  v146 = &v143 - v29;
  __chkstk_darwin(v30);
  v162 = &v143 - v31;
  __chkstk_darwin(v32);
  v163 = &v143 - v33;
  __chkstk_darwin(v34);
  v166 = &v143 - v35;
  __chkstk_darwin(v36);
  v148 = &v143 - v37;
  __chkstk_darwin(v38);
  v155 = &v143 - v39;
  __chkstk_darwin(v40);
  v154 = &v143 - v41;
  __chkstk_darwin(v42);
  v156 = &v143 - v43;
  __chkstk_darwin(v44);
  v157 = &v143 - v45;
  v161 = sub_100748404();
  v160 = *(v161 - 8);
  __chkstk_darwin(v161);
  v158 = &v143 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v47);
  v159 = &v143 - v48;
  v49 = sub_10074ED34();
  v50 = *(v49 - 8);
  __chkstk_darwin(v49);
  v52 = &v143 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = sub_10000C518(&qword_100929F50);
  __chkstk_darwin(v53 - 8);
  v55 = &v143 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v56);
  v186 = &v143 - v57;
  v58 = *&v3[OBJC_IVAR____TtC22SubscribePageExtension11OfferButton_displayProperties];
  if (v58)
  {
    v151 = v12;
    v152 = v10;
    v153 = v9;
    v174 = a2;
    v59 = v3;
    if (swift_weakLoadStrong())
    {
      sub_10000C518(&unk_100925780);

      sub_1007526E4();

      swift_getObjectType();
      sub_100749F14();
      sub_1007424E4();
      swift_unknownObjectRelease();
      (*(v50 + 8))(v52, v49);
      swift_getObjectType();
      v60 = v186;
      sub_1007423D4();
      swift_unknownObjectRelease();
      v61 = sub_100742284();
      (*(*(v61 - 8) + 56))(v60, 0, 1, v61);
    }

    else
    {
      v61 = sub_100742284();
      v60 = v186;
      (*(*(v61 - 8) + 56))(v186, 1, 1, v61);
    }

    sub_100016B4C(v60, v55, &qword_100929F50);
    sub_100742284();
    v62 = *(v61 - 8);
    if ((*(v62 + 48))(v55, 1, v61) == 1)
    {
      sub_10000C8CC(v55, &qword_100929F50);
      v63 = 0;
    }

    else
    {
      v63 = sub_100742264();
      (*(v62 + 8))(v55, v61);
    }

    v64 = v59;
    v65 = v184;
    v150 = v58;
    v66 = objc_opt_self();
    [v66 begin];
    v149 = v66;
    [v66 setDisableActions:1];
    v67 = v174;
    v68 = (v175 + 104);
    v69 = (v175 + 8);
    v70 = v176;
    v175 += 8;
    if (v63)
    {
      sub_10074CDB4();
      v184 = [v64 traitCollection];
      v71 = *v68;
      v72 = v185;
      (*v68)(v65, enum case for OfferEnvironment.arcadeProductPage(_:), v185);
      v73 = sub_100745E84();
      v74 = *v69;
      v74(v65, v72);
      v143 = v64;
      if (v73)
      {
        v75 = v67;
        if (qword_1009219D0 != -1)
        {
          swift_once();
        }

        v76 = v178;
        v77 = sub_10000D0FC(v178, qword_1009827E0);
        v78 = v183;
        v79 = v155;
        (*(v183 + 16))(v155, v77, v76);

        v80 = v78;
        v81 = v185;
      }

      else
      {
        v71(v65, enum case for OfferEnvironment.navigationBar(_:), v72);
        v95 = sub_100745E84();
        v74(v65, v72);
        v81 = v72;
        if (v95 & 1) != 0 && (v96 = sub_10074F3F4(), v187[3] = v96, v187[4] = sub_1001665F8(&qword_10092AC70, &type metadata accessor for Feature), v97 = sub_10000D134(v187), (*(*(v96 - 8) + 104))(v97, enum case for Feature.glass_offer_button_2025A(_:), v96), LOBYTE(v96) = sub_10074FC74(), sub_10000C620(v187), (v96))
        {
          v75 = v67;
          if (qword_1009219C8 != -1)
          {
            swift_once();
          }

          v76 = v178;
          v98 = sub_10000D0FC(v178, qword_10093FFB8);
          v99 = v183;
          v79 = v155;
          (*(v183 + 16))(v155, v98, v76);

          v80 = v99;
        }

        else
        {
          if (sub_100753804())
          {
            v76 = v178;
            v75 = v67;
            if (qword_1009219A0 != -1)
            {
              swift_once();
            }

            v102 = qword_10093FF88;
          }

          else
          {
            v76 = v178;
            v75 = v67;
            if (qword_100921998 != -1)
            {
              swift_once();
            }

            v102 = qword_10093FF70;
          }

          v105 = sub_10000D0FC(v76, v102);
          v106 = v183;
          v107 = v148;
          (*(v183 + 16))(v148, v105, v76);

          v80 = v106;
          v79 = v155;
          (*(v106 + 32))(v155, v107, v76);
        }
      }

      v108 = *(v80 + 32);
      v109 = v154;
      v108(v154, v79, v76);
      v110 = v156;
      v108(v156, v109, v76);
      v74(v70, v81);
      v108(v157, v110, v76);
      (*(v179 + 16))(v181, v182, v180);
      v111 = v164;
      v112 = v75;
      sub_10074CDC4();
      v113 = v167;
      v114 = v165;
      v115 = v168;
      (*(v167 + 104))(v165, enum case for OfferStyle.disabled(_:), v168);
      sub_100742E14();
      v116 = *(v113 + 8);
      v116(v114, v115);
      v116(v111, v115);
      (*(v152 + 16))(v151, v112, v153);
      sub_10074A0E4();
      v117 = v159;
      sub_1007483F4();
      v118 = v160;
      v119 = v158;
      v120 = v161;
      (*(v160 + 16))(v158, v117, v161);
      v64 = v143;
      sub_100162DE0(v119, v143, &type metadata accessor for PausedConfiguration, &protocol witness table for PausedConfiguration, &unk_100869608, sub_1001664B0, &unk_100869620);
      (*(v118 + 8))(v117, v120);
      v121 = &selRef_accessibilityShowPaused;
    }

    else
    {
      sub_10074CDB4();
      v82 = [v64 traitCollection];
      v83 = *v68;
      v84 = v185;
      (*v68)(v65, enum case for OfferEnvironment.arcadeProductPage(_:), v185);
      v85 = sub_100745E84();
      v86 = *v69;
      (*v69)(v65, v84);
      if (v85)
      {
        if (qword_1009219B8 != -1)
        {
          swift_once();
        }

        v87 = v178;
        v88 = sub_10000D0FC(v178, qword_1009827C8);
        v89 = v183;
        v90 = v162;
        (*(v183 + 16))(v162, v88, v87);

        v91 = v153;
        v92 = v185;
        v93 = v86;
        v94 = v174;
      }

      else
      {
        v83(v65, enum case for OfferEnvironment.arcadeLaunchRepairCompactSheet(_:), v84);
        v100 = sub_100745E84();
        (v86)(v65, v84);
        v93 = v86;
        if (v100)
        {
          v90 = v162;
          if (qword_1009219B0 != -1)
          {
            swift_once();
          }

          v87 = v178;
          v101 = sub_10000D0FC(v178, qword_1009827B0);
          v89 = v183;
          (*(v183 + 16))(v90, v101, v87);

          v91 = v153;
          v92 = v185;
          v94 = v174;
        }

        else
        {
          v103 = v82;
          if (sub_100745E74())
          {
            v90 = v162;
            v94 = v174;
            if (qword_1009219A8 != -1)
            {
              swift_once();
            }

            v87 = v178;
            v104 = sub_10000D0FC(v178, qword_100982798);
            v89 = v183;
            (*(v183 + 16))(v90, v104, v87);

            v91 = v153;
            v92 = v185;
          }

          else
          {
            v176 = v93;
            v123 = v184;
            v122 = v185;
            v83(v184, enum case for OfferEnvironment.navigationBar(_:), v185);
            v124 = sub_100745E84();
            v125 = v123;
            v93 = v176;
            v126 = v122;
            (v176)(v125, v122);
            v94 = v174;
            if (v124)
            {
              v92 = v126;
              v91 = v153;
              v87 = v178;
              if (qword_1009219C0 != -1)
              {
                swift_once();
              }

              v127 = sub_10000D0FC(v87, qword_10093FFA0);
              v89 = v183;
              v90 = v162;
              (*(v183 + 16))(v162, v127, v87);
            }

            else
            {
              v128 = sub_100753804();
              v91 = v153;
              v87 = v178;
              if (v147)
              {
                if (v128)
                {
                  v129 = v183;
                  v92 = v126;
                  if (qword_100921988 != -1)
                  {
                    swift_once();
                  }

                  v130 = qword_10093FF40;
                }

                else
                {
                  v129 = v183;
                  v92 = v126;
                  if (qword_100921990 != -1)
                  {
                    swift_once();
                  }

                  v130 = qword_10093FF58;
                }

                v132 = sub_10000D0FC(v87, v130);
                v133 = v144;
                (*(v129 + 16))(v144, v132, v87);
                v134 = v146;
                (*(v129 + 32))(v146, v133, v87);
                v90 = v162;
                sub_10074F4B4();
                v89 = v183;

                (*(v89 + 8))(v134, v87);
              }

              else
              {
                if (v128)
                {
                  v89 = v183;
                  v92 = v126;
                  if (qword_100921988 != -1)
                  {
                    swift_once();
                  }

                  v131 = qword_10093FF40;
                }

                else
                {
                  v89 = v183;
                  v92 = v126;
                  if (qword_100921990 != -1)
                  {
                    swift_once();
                  }

                  v131 = qword_10093FF58;
                }

                v135 = sub_10000D0FC(v87, v131);
                v136 = v145;
                (*(v89 + 16))(v145, v135, v87);

                v90 = v162;
                (*(v89 + 32))(v162, v136, v87);
              }

              v93 = v176;
            }
          }
        }
      }

      v137 = *(v89 + 32);
      v138 = v163;
      v137(v163, v90, v87);
      (v93)(v177, v92);
      v137(v166, v138, v87);
      (*(v179 + 16))(v181, v182, v180);
      (*(v152 + 16))(v151, v94, v91);
      v139 = v171;
      sub_10074A734();
      v141 = v172;
      v140 = v173;
      v142 = v170;
      (*(v172 + 16))(v170, v139, v173);
      sub_100162DE0(v142, v64, &type metadata accessor for RedownloadConfiguration, &protocol witness table for RedownloadConfiguration, &unk_100869658, sub_100166A60, &unk_100869670);
      (*(v141 + 8))(v139, v140);
      v121 = &selRef_accessibilityShowRedownload;
    }

    [v64 *v121];
    [v149 commit];

    sub_10000C8CC(v186, &qword_100929F50);
  }
}

uint64_t *sub_100166254(uint64_t *result, uint64_t *a2)
{
  if (result != a2)
  {
    v2 = result[3];
    v3 = a2[3];
    if (v2 == v3)
    {
      v10 = *(v2 - 8);
      if ((*(v10 + 82) & 2) != 0)
      {
        v12 = *a2;
        v13 = result;

        *v13 = v12;
      }

      else
      {
        v11 = *(v10 + 24);

        return v11();
      }
    }

    else
    {
      result[3] = v3;
      result[4] = a2[4];
      v4 = *(v2 - 8);
      v5 = *(v3 - 8);
      v6 = v5;
      v7 = *(v5 + 80);
      if ((*(v4 + 82) & 2) != 0)
      {
        if ((v7 & 0x20000) != 0)
        {
          *result = *a2;
        }

        else
        {
          (*(v5 + 16))();
        }
      }

      else
      {
        v9 = result;
        (*(v4 + 32))(v14);
        if ((v7 & 0x20000) != 0)
        {
          *v9 = *a2;
        }

        else
        {
          (*(v6 + 16))(v9, a2, v3);
        }

        return (*(v4 + 8))(v14, v2);
      }
    }
  }

  return result;
}

uint64_t sub_100166470()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1001664C0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100166588(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C518(&qword_100929E68);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001665F8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100166640()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100166678()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1001666B0()
{
  v1 = *(sub_10000C518(&unk_100925540) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 56) & ~v2;
  v4 = *(v1 + 64);
  v5 = sub_10000C518(&unk_100925560);
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = *(v6 + 64);

  v9 = sub_10000C518(&unk_10092EEA0);
  v10 = *(v9 - 8);
  if (!(*(v10 + 48))(v0 + v3, 1, v9))
  {
    (*(v10 + 8))(v0 + v3, v9);
  }

  v11 = (v3 + v4 + v7) & ~v7;
  v12 = v8 + v11;
  (*(v6 + 8))(v0 + v11, v5);

  return _swift_deallocObject(v0, v12 + 2, v2 | v7 | 7);
}

uint64_t sub_100166898(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C518(&unk_100925540);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100166908(uint64_t a1)
{
  v3 = *(sub_10000C518(&unk_100925540) - 8);
  v4 = (*(v3 + 80) + 56) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(sub_10000C518(&unk_100925560) - 8);
  v7 = v1 + ((v4 + v5 + *(v6 + 80)) & ~*(v6 + 80));
  return sub_10015F4E0(a1, v1[2], v1[3], v1[4], v1[5], v1[6], v1 + v4, v7, *(v7 + *(v6 + 64)), *(v7 + *(v6 + 64) + 1));
}

char *sub_100166A64(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v5 = OBJC_IVAR____TtC22SubscribePageExtension43ArcadeDownloadPackSuggestionsViewController_pageView;
  type metadata accessor for ArcadeDownloadPackSuggestionsPageView();
  *&v2[v5] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v6 = OBJC_IVAR____TtC22SubscribePageExtension43ArcadeDownloadPackSuggestionsViewController_primaryDoneButton;
  v7 = objc_opt_self();
  *&v2[v6] = [v7 boldButton];
  v8 = OBJC_IVAR____TtC22SubscribePageExtension43ArcadeDownloadPackSuggestionsViewController_secondaryDoneButton;
  *&v2[v8] = [objc_opt_self() linkButton];
  v9 = OBJC_IVAR____TtC22SubscribePageExtension43ArcadeDownloadPackSuggestionsViewController_primaryGetAllButton;
  *&v2[v9] = [v7 boldButton];
  v2[OBJC_IVAR____TtC22SubscribePageExtension43ArcadeDownloadPackSuggestionsViewController_getAllButtonWasTapped] = 0;
  v2[OBJC_IVAR____TtC22SubscribePageExtension43ArcadeDownloadPackSuggestionsViewController_purchasesAvailabilityStatus] = 3;
  *&v2[OBJC_IVAR____TtC22SubscribePageExtension43ArcadeDownloadPackSuggestionsViewController_presenter] = a1;
  v10 = *&v2[v5];
  swift_retain_n();
  v11 = v10;

  v12 = sub_100167D98(a1, v11, a2, v2, &off_100872E10);
  sub_100167F58(&qword_100929FE8, v13, type metadata accessor for ArcadeDownloadPackSuggestionsViewController);
  v14 = v12;

  sub_10074E1E4();

  [*&v14[OBJC_IVAR____TtC22SubscribePageExtension43ArcadeDownloadPackSuggestionsViewController_primaryDoneButton] addTarget:v14 action:"didTapDoneButton" forControlEvents:64];
  [*&v14[OBJC_IVAR____TtC22SubscribePageExtension43ArcadeDownloadPackSuggestionsViewController_secondaryDoneButton] addTarget:v14 action:"didTapDoneButton" forControlEvents:64];
  [*&v14[OBJC_IVAR____TtC22SubscribePageExtension43ArcadeDownloadPackSuggestionsViewController_primaryGetAllButton] addTarget:v14 action:"didTapGetAllButtonWithSender:" forControlEvents:64];
  v15 = *(*&v14[OBJC_IVAR____TtC22SubscribePageExtension43ArcadeDownloadPackSuggestionsViewController_pageView] + OBJC_IVAR____TtC22SubscribePageExtension37ArcadeDownloadPackSuggestionsPageView_gamesView);
  v20[3] = ObjectType;
  v20[4] = &off_100869800;
  v16 = v15;

  v20[0] = v14;
  v17 = qword_100982CA0;
  swift_beginAccess();
  sub_100167E98(v20, v16 + v17);
  swift_endAccess();

  return v14;
}

void sub_100166D24()
{
  v0 = sub_10074F3E4();
  v7[3] = v0;
  v7[4] = sub_100167F58(&qword_100926D40, 255, &type metadata accessor for Feature.iOS);
  v1 = sub_10000D134(v7);
  (*(*(v0 - 8) + 104))(v1, enum case for Feature.iOS.arcade_choose_your_favorites_brick_Future(_:), v0);
  LOBYTE(v0) = sub_10074FC74();
  sub_10000C620(v7);
  if (v0)
  {
    v2 = [objc_opt_self() defaultCenter];
    v3 = sub_10074DB24();
    sub_10000C518(&qword_100927760);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1007A5A00;
    v7[0] = sub_10074DB34();
    v7[1] = v5;
    sub_1007544E4();
    *(inited + 96) = &type metadata for String;
    *(inited + 72) = 0xD000000000000017;
    *(inited + 80) = 0x800000010076D9D0;
    sub_100414D14(inited);
    swift_setDeallocating();
    sub_10000C8CC(inited + 32, &qword_100927768);
    isa = sub_100752F34().super.isa;

    [v2 postNotificationName:v3 object:0 userInfo:isa];
  }
}

id sub_100166FDC(void *a1)
{
  v25 = a1;
  v2 = sub_1007521E4();
  v28 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100752224();
  v6 = *(v5 - 8);
  v26 = v5;
  v27 = v6;
  __chkstk_darwin(v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100752244();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v25 - v14;
  v1[OBJC_IVAR____TtC22SubscribePageExtension43ArcadeDownloadPackSuggestionsViewController_getAllButtonWasTapped] = 1;
  sub_10074E1C4();
  sub_100744AC4();
  sub_1007526E4();
  sub_100744A64();
  v17 = v16;

  if (v17 <= 0.0)
  {
    return [v1 dismissViewControllerAnimated:1 completion:{0, v25}];
  }

  v18 = sub_10074E194();
  if (v18 == 2 || (v18 & 1) != 0)
  {
    return [v1 dismissViewControllerAnimated:1 completion:{0, v25}];
  }

  [v25 showsBusyIndicator];
  sub_1000A7FA0();
  v25 = sub_100753774();
  sub_100752234();
  sub_1007522B4();
  v20 = *(v10 + 8);
  v20(v12, v9);
  v21 = swift_allocObject();
  *(v21 + 16) = v1;
  aBlock[4] = sub_100086E24;
  aBlock[5] = v21;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000CF7B0;
  aBlock[3] = &unk_100869838;
  v22 = _Block_copy(aBlock);
  v23 = v1;

  sub_100752204();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100167F58(&qword_1009236B0, 255, &type metadata accessor for DispatchWorkItemFlags);
  sub_10000C518(&unk_10092F750);
  sub_1000A8054();
  sub_1007543A4();
  v24 = v25;
  sub_100753734();
  _Block_release(v22);

  (*(v28 + 8))(v4, v2);
  (*(v27 + 8))(v8, v26);
  return (v20)(v15, v9);
}

void sub_100167490(uint64_t a1)
{
  v2 = v1;
  sub_100378C70(a1, *(v1 + OBJC_IVAR____TtC22SubscribePageExtension32ArcadeDownloadPackViewController_objectGraph));
  v4 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension43ArcadeDownloadPackSuggestionsViewController_primaryGetAllButton);
  v5 = sub_10074D614();
  if (v5)
  {
    sub_10074ECB4();
    v7 = v6;

    if (v7)
    {
      v5 = sub_100753064();
    }

    else
    {
      v5 = 0;
    }
  }

  [v4 setTitle:v5 forState:0];

  v8 = *(v2 + OBJC_IVAR____TtC22SubscribePageExtension43ArcadeDownloadPackSuggestionsViewController_primaryDoneButton);
  v9 = sub_100753064();
  [v8 setAccessibilityIdentifier:v9];

  v10 = *(v2 + OBJC_IVAR____TtC22SubscribePageExtension43ArcadeDownloadPackSuggestionsViewController_secondaryDoneButton);
  v11 = sub_100753064();
  [v10 setAccessibilityIdentifier:v11];

  v12 = sub_100753064();
  [v4 setAccessibilityIdentifier:v12];

  sub_10074D654();
  if (!v13)
  {
    sub_10074D624();
    v14 = sub_10074ECB4();
    v16 = v15;

    sub_100167670(a1, v14, v16);
  }

  sub_10019B200();
}

void sub_100167670(uint64_t a1, uint64_t a2, NSString a3)
{
  v5 = sub_10000C518(&qword_100929FE0);
  __chkstk_darwin(v5);
  v7 = &v20 - v6;
  v8 = sub_10074E6B4();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *&v3[OBJC_IVAR____TtC22SubscribePageExtension43ArcadeDownloadPackSuggestionsViewController_primaryDoneButton];
  v21 = v3;
  if (a3)
  {
    v12 = sub_100753064();
  }

  else
  {
    v12 = 0;
  }

  [v20 setTitle:v12 forState:{0, v20}];

  v13 = *&v21[OBJC_IVAR____TtC22SubscribePageExtension43ArcadeDownloadPackSuggestionsViewController_secondaryDoneButton];
  if (a3)
  {
    a3 = sub_100753064();
  }

  [v13 setTitle:a3 forState:0];

  sub_10074D644();
  v14 = sub_10074D614();
  if (v14)
  {
  }

  v15 = *(v5 + 48);
  (*(v9 + 32))(v7, v11, v8);
  v7[v15] = v14 != 0;
  v16 = (*(v9 + 88))(v7, v8);
  if (v16 == enum case for ArcadeDownloadPackSuggestionsPagePrimaryActionKind.done(_:))
  {
    goto LABEL_9;
  }

  if (v16 != enum case for ArcadeDownloadPackSuggestionsPagePrimaryActionKind.getAll(_:))
  {
    sub_10000C8CC(v7, &qword_100929FE0);
    goto LABEL_14;
  }

  if (!v14)
  {
LABEL_9:
    (*(v9 + 8))(v7, v8);
  }

  else
  {
    (*(v9 + 8))(v7, v8);
    v17 = v21;
    v18 = [v21 buttonTray];
    [v18 addButton:*&v17[OBJC_IVAR____TtC22SubscribePageExtension43ArcadeDownloadPackSuggestionsViewController_primaryGetAllButton]];

    v20 = v13;
  }

LABEL_14:
  v19 = [v21 buttonTray];
  [v19 addButton:v20];
}

uint64_t sub_100167960(unsigned __int8 a1)
{
  v2 = v1;
  result = sub_10074E1D4();
  if (!result)
  {
    return result;
  }

  v5 = result;
  v6 = sub_10074D654();
  if (!v7)
  {
    goto LABEL_21;
  }

  v8 = v7;
  v9 = v1[OBJC_IVAR____TtC22SubscribePageExtension43ArcadeDownloadPackSuggestionsViewController_purchasesAvailabilityStatus];
  if (v9 != 3 && v9 == a1)
  {
  }

  else
  {
    v11 = v6;
    v1[OBJC_IVAR____TtC22SubscribePageExtension43ArcadeDownloadPackSuggestionsViewController_purchasesAvailabilityStatus] = a1;
    v12 = [v1 buttonTray];
    [v12 removeAllButtons];

    if (a1)
    {
      if (a1 == 1)
      {
        if ((v2[OBJC_IVAR____TtC22SubscribePageExtension43ArcadeDownloadPackSuggestionsViewController_getAllButtonWasTapped] & 1) == 0)
        {
          sub_100167670(v5, v11, v8);
        }
      }

      else if (v2[OBJC_IVAR____TtC22SubscribePageExtension43ArcadeDownloadPackSuggestionsViewController_getAllButtonWasTapped] == 1)
      {

        v16 = [v2 buttonTray];
        [v16 addButton:*&v2[OBJC_IVAR____TtC22SubscribePageExtension43ArcadeDownloadPackSuggestionsViewController_primaryGetAllButton]];

        v17 = [v2 buttonTray];
        [v17 addButton:*&v2[OBJC_IVAR____TtC22SubscribePageExtension43ArcadeDownloadPackSuggestionsViewController_secondaryDoneButton]];
      }

      else
      {
        v18 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension43ArcadeDownloadPackSuggestionsViewController_primaryDoneButton];
        v19 = sub_100753064();

        [v18 setTitle:v19 forState:0];

        v20 = [v2 buttonTray];
        [v20 addButton:v18];
      }

LABEL_21:
    }

    sub_10074D624();
    v13 = sub_10074ECB4();
    v15 = v14;

    sub_100167670(v5, v13, v15);
  }
}

void sub_100167BE8()
{

  v1 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension43ArcadeDownloadPackSuggestionsViewController_primaryGetAllButton);
}

id sub_100167D98(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, uint64_t a5)
{
  *&a4[OBJC_IVAR____TtC22SubscribePageExtension32ArcadeDownloadPackViewController_overlayViewController] = 0;
  *&a4[OBJC_IVAR____TtC22SubscribePageExtension32ArcadeDownloadPackViewController_presenter] = a1;
  *&a4[OBJC_IVAR____TtC22SubscribePageExtension32ArcadeDownloadPackViewController_objectGraph] = a3;
  v7 = &a4[OBJC_IVAR____TtC22SubscribePageExtension32ArcadeDownloadPackViewController_pageView];
  *v7 = a2;
  *(v7 + 1) = a5;
  v8 = &a4[OBJC_IVAR____TtC22SubscribePageExtension32ArcadeDownloadPackViewController_lifecycleObserver];
  *(v8 + 3) = sub_100744344();
  *(v8 + 4) = &protocol witness table for BasePresenter;
  *v8 = a1;
  swift_retain_n();

  v9 = sub_100753064();
  v12.receiver = a4;
  v12.super_class = type metadata accessor for ArcadeDownloadPackViewController();
  v10 = objc_msgSendSuper2(&v12, "initWithTitle:detailText:icon:contentLayout:", v9, 0, 0, 2);

  return v10;
}

uint64_t sub_100167E98(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C518(&qword_100929FF0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100167F08()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100167F40(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100167F58(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_100167FF4()
{
  v1 = sub_10074F704();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v36 = &v28[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_10000C518(&unk_100933240);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v28[-v6];
  sub_10074F984();
  sub_1001684BC(&qword_10092A000, &type metadata accessor for Paragraph);
  result = sub_1007468B4();
  if (aBlock[0])
  {
    sub_100168504();
    sub_1007468E4();
    sub_100752E84();
    v34 = v4;
    v35 = v0;
    v32 = v7;
    v33 = v5;
    v30 = v2;
    v31 = v1;
    if (LOBYTE(aBlock[0]) == 2)
    {
      v29 = sub_10074F8D4();
    }

    else
    {
      v29 = LOBYTE(aBlock[0]);
    }

    v9 = sub_10074F914();
    swift_getKeyPath();
    sub_100746914();

    v10 = aBlock[6];
    v11 = [objc_allocWithZone(NSMutableAttributedString) initWithAttributedString:v9];
    v12 = [v9 length];
    v13 = swift_allocObject();
    *(v13 + 16) = 0;
    *(v13 + 24) = v10;
    *(v13 + 32) = v11;
    *(v13 + 40) = 1;
    v14 = swift_allocObject();
    *(v14 + 16) = sub_100047814;
    *(v14 + 24) = v13;
    aBlock[4] = sub_1000B18A8;
    aBlock[5] = v14;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100047044;
    aBlock[3] = &unk_1008698D8;
    v15 = _Block_copy(aBlock);
    v16 = v10;
    v17 = v11;

    [v9 enumerateAttributesInRange:0 options:v12 usingBlock:{0x100000, v15}];

    _Block_release(v15);
    LOBYTE(v15) = swift_isEscapingClosureAtFileLocation();

    if (v15)
    {
      __break(1u);
    }

    else
    {
      left = UIEdgeInsetsZero.left;
      bottom = UIEdgeInsetsZero.bottom;
      right = UIEdgeInsetsZero.right;
      swift_getKeyPath();
      v21 = v17;
      v22 = v36;
      sub_100746914();

      sub_10074F674();
      v24 = v23;
      v26 = v25;
      (*(v30 + 8))(v22, v31);
      v27 = sub_10007DC04();
      swift_getObjectType();
      sub_1002D8C5C(v17, v29 & 1, v27, UIEdgeInsetsZero.top, left, bottom, right, v24, v26);

      swift_unknownObjectRelease();

      return (*(v33 + 8))(v32, v34);
    }
  }

  return result;
}

uint64_t sub_1001684BC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_100168504()
{
  result = qword_10092A008;
  if (!qword_10092A008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10092A008);
  }

  return result;
}

uint64_t sub_10016855C()
{

  return _swift_deallocObject(v0, 41, 7);
}

uint64_t sub_1001685B4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_1001685D0(uint64_t a1, char a2)
{
  *(v2 + qword_10093EDA8) = a2 & 1;
  sub_10057C5A0();
  sub_100750B34();
  v46 = v2;
  v3 = *(v2 + qword_10093ED80);
  sub_10074F454();
  v5 = v4;
  v6 = objc_allocWithZone(NSNumber);
  LODWORD(v7) = v5;
  v47.value.super.super.isa = [v6 initWithFloat:v7];
  isa = v47.value.super.super.isa;
  v47.is_nil = 1;
  sub_10074B984(v47, v9);
  v11 = v10;

  if (!v11)
  {
    sub_10074F454();
    sub_100753464();
  }

  sub_10000C518(&unk_100929CA0);
  inited = swift_initStackObject();
  *(inited + 32) = NSKernAttributeName;
  *(inited + 16) = xmmword_1007A5A00;
  *(inited + 64) = &type metadata for CGFloat;
  *(inited + 40) = 0xC010000000000000;
  v13 = NSKernAttributeName;
  sub_100413A18(inited);
  swift_setDeallocating();
  sub_100168AA4(inited + 32);
  v14 = objc_allocWithZone(NSAttributedString);
  v15 = sub_100753064();

  type metadata accessor for Key(0);
  sub_100168B0C();
  v16 = sub_100752F34().super.isa;

  v17 = [v14 initWithString:v15 attributes:v16];

  [v3 setAttributedText:v17];
  sub_10074F454();
  sub_1004FA340(v18);
  v19 = *(v46 + qword_10093ED98);
  v20 = sub_10074F434();
  v48._object = 0x800000010076D9F0;
  v48._countAndFlagsBits = 0xD000000000000013;
  v49._countAndFlagsBits = 0;
  v49._object = 0xE000000000000000;
  sub_10074B194(v48, v20, v49);
  v21 = sub_100753064();

  [v19 setText:v21];

  result = sub_10074F444();
  if (!result)
  {
    goto LABEL_30;
  }

  v23 = result;
  v24 = result & 0xFFFFFFFFFFFFFF8;
  if (result >> 62)
  {
    goto LABEL_26;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10) != 5)
  {
    goto LABEL_29;
  }

  v45 = 5;
  while (2)
  {
    v25 = 4;
    v26 = qword_10093EDA0;
    while (1)
    {
      v29 = v25 - 4;
      if ((v23 & 0xC000000000000001) != 0)
      {
        v30 = sub_100754574();
      }

      else
      {
        if (v29 >= *(v24 + 16))
        {
          goto LABEL_24;
        }

        v30 = *(v23 + 8 * v25);
      }

      v31 = v30;
      v32 = v25 - 3;
      if (__OFADD__(v29, 1))
      {
        break;
      }

      v33 = *(v46 + v26);
      [v30 floatValue];
      v35 = v34;
      v36 = sub_10074F434();
      v37 = OBJC_IVAR____TtC22SubscribePageExtension27ProductRatingsHistogramView_barViews;
      v38 = *(v33 + OBJC_IVAR____TtC22SubscribePageExtension27ProductRatingsHistogramView_barViews);
      if (v38 >> 62)
      {
        if (v29 >= sub_100754664())
        {
          goto LABEL_10;
        }
      }

      else if (v29 >= *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_10;
      }

      v39 = *(v33 + v37);
      if ((v39 & 0xC000000000000001) != 0)
      {
        v27 = sub_100754574();
      }

      else
      {
        if (v29 >= *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_25;
        }

        v27 = *(v39 + 8 * v25);
      }

      v28 = v27;
      *&v27[OBJC_IVAR____TtC22SubscribePageExtensionP33_BBFDA52132B851A7C9B4832301F19D0934ProductRatingsHistogramProgressBar_progress] = v35 / v36;
      [v27 setNeedsLayout];

LABEL_10:
      ++v25;
      if (v32 == v45)
      {
        goto LABEL_28;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    if (sub_100754664() == 5)
    {
      v45 = sub_100754664();
      if (!v45)
      {
LABEL_28:

        return sub_100750B34();
      }

      continue;
    }

    break;
  }

LABEL_29:

LABEL_30:
  v40 = *(*(v46 + qword_10093EDA0) + OBJC_IVAR____TtC22SubscribePageExtension27ProductRatingsHistogramView_barViews);
  if (v40 >> 62)
  {
    result = sub_100754664();
    v41 = result;
    if (!result)
    {
      return sub_100750B34();
    }

LABEL_32:
    if (v41 >= 1)
    {
      v42 = 0;
      do
      {
        if ((v40 & 0xC000000000000001) != 0)
        {
          v43 = sub_100754574();
        }

        else
        {
          v43 = *(v40 + 8 * v42 + 32);
        }

        v44 = v43;
        ++v42;
        *&v43[OBJC_IVAR____TtC22SubscribePageExtensionP33_BBFDA52132B851A7C9B4832301F19D0934ProductRatingsHistogramProgressBar_progress] = 0;
        [v43 setNeedsLayout];
      }

      while (v41 != v42);
      return sub_100750B34();
    }

    __break(1u);
  }

  else
  {
    v41 = *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v41)
    {
      goto LABEL_32;
    }

    return sub_100750B34();
  }

  return result;
}

uint64_t sub_100168AA4(uint64_t a1)
{
  v2 = sub_10000C518(&unk_100923510);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100168B0C()
{
  result = qword_1009276F0;
  if (!qword_1009276F0)
  {
    type metadata accessor for Key(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009276F0);
  }

  return result;
}

id sub_100168BC0()
{
  v15.receiver = v0;
  v15.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v15, "layoutSubviews");
  v1 = [v0 textLabel];
  if (v1)
  {
    v2 = v1;
    [v1 frame];
    v4 = v3;
    v6 = v5;
    v8 = v7;
    v10 = v9;

    v16.origin.x = v4;
    v16.origin.y = v6;
    v16.size.width = v8;
    v16.size.height = v10;
    MaxX = CGRectGetMaxX(v16);
  }

  else
  {
    MaxX = 0.0;
  }

  [v0 bounds];
  v12 = MaxX + 10.0;
  v13 = CGRectGetMaxX(v17) - MaxX + -20.0;
  [v0 bounds];
  return [*&v0[OBJC_IVAR____TtC22SubscribePageExtension15DebugSliderCell_slider] setFrame:{v12, 0.0, v13, CGRectGetHeight(v18)}];
}

uint64_t sub_100168D88()
{
  v1 = sub_10000C518(&unk_100925370);
  __chkstk_darwin(v1 - 8);
  v2 = sub_10000C518(&qword_10092A060);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v8 - v4;
  sub_1007468F4();
  sub_100752994();
  if ([*(*(*(v0 + OBJC_IVAR____TtC22SubscribePageExtension31ReviewSummaryCollectionViewCell_reviewSummaryView) + OBJC_IVAR____TtC22SubscribePageExtension17ReviewSummaryView_bodyLabel) + OBJC_IVAR____TtC22SubscribePageExtension18ExpandableTextView_moreButton) isHidden])
  {
    sub_10000C518(&qword_10092A068);
    sub_10074DCB4();
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_1007A6580;
    sub_10074DCA4();
    sub_10074DC94();
  }

  else
  {
    sub_1001696DC();
    sub_100752954();
    sub_10000C518(&qword_10092A068);
    sub_10074DCB4();
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_1007A5620;
    sub_10074DCA4();
    sub_10074DC94();
    sub_10074DC84();
  }

  v8 = v6;
  sub_100169730(&qword_10092A070, &type metadata accessor for SelectableShelfComponentViewReaction);
  sub_10000C518(&qword_10092A078);
  sub_100169778();
  sub_1007543A4();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_100169124@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC22SubscribePageExtension31ReviewSummaryCollectionViewCell_itemLayoutContext;
  swift_beginAccess();
  return sub_100020514(v1 + v3, a1);
}

uint64_t sub_100169180(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC22SubscribePageExtension31ReviewSummaryCollectionViewCell_itemLayoutContext;
  swift_beginAccess();
  sub_1000204A4(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_100169270(uint64_t a1)
{
  result = sub_100169730(&qword_10092A040, type metadata accessor for ReviewSummaryCollectionViewCell);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1001692C8()
{
  v0 = sub_10074EAB4();
  v22 = *(v0 - 8);
  __chkstk_darwin(v0);
  v2 = &v21 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v5 = &v21 - v4;
  v21 = sub_100747C14();
  v6 = *(v21 - 8);
  __chkstk_darwin(v21);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10000C518(&qword_100925340);
  __chkstk_darwin(v9 - 8);
  v10 = sub_10000C518(&qword_10092A048);
  v23 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v21 - v11;
  sub_100744694();
  sub_100169730(&qword_10092A050, &type metadata accessor for ReviewSummary);
  result = sub_1007468B4();
  v14 = v26;
  if (v26)
  {
    sub_100746964();
    sub_100752EB4();
    sub_100746884();
    sub_100747BD4();
    (*(v6 + 8))(v8, v21);
    sub_10074EA54();
    sub_100169730(&unk_100925360, &type metadata accessor for Shelf.PresentationHints);
    v15 = sub_100754324();
    v16 = *(v22 + 8);
    v16(v2, v0);
    v16(v5, v0);
    v17 = v24;
    swift_getKeyPath();
    sub_1001696DC();
    sub_100752E94();

    if (v15)
    {
      v18 = 0;
      v19 = 1;
    }

    else
    {
      v18 = v25;
      v20 = [v17 traitCollection];
      v19 = sub_1007537D4();
    }

    sub_100690144(v14, v18, v19 & 1, v15 & 1);

    return (*(v23 + 8))(v12, v10);
  }

  return result;
}

unint64_t sub_1001696DC()
{
  result = qword_10092A058;
  if (!qword_10092A058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10092A058);
  }

  return result;
}

uint64_t sub_100169730(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_100169778()
{
  result = qword_10092A080;
  if (!qword_10092A080)
  {
    sub_10000C724(&qword_10092A078);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10092A080);
  }

  return result;
}

uint64_t _s5StateVwet(unsigned __int8 *a1, unsigned int a2)
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
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

unint64_t sub_100169890()
{
  result = qword_10092A088;
  if (!qword_10092A088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10092A088);
  }

  return result;
}

unint64_t sub_1001698E8()
{
  result = qword_10092A090;
  if (!qword_10092A090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10092A090);
  }

  return result;
}

uint64_t sub_10016993C(uint64_t a1, uint64_t a2)
{
  v3 = sub_1007521E4();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100752224();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = swift_allocObject();
  *(v11 + 16) = a2;
  aBlock[4] = sub_100169DA8;
  aBlock[5] = v11;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000CF7B0;
  aBlock[3] = &unk_1008699B8;
  v12 = _Block_copy(aBlock);

  sub_100752204();
  v14[1] = _swiftEmptyArrayStorage;
  sub_10002DCDC();
  sub_10000C518(&unk_10092F750);
  sub_1000A8054();
  sub_1007543A4();
  sub_100753784();
  _Block_release(v12);
  (*(v4 + 8))(v6, v3);
  (*(v8 + 8))(v10, v7);
}

uint64_t sub_100169BAC(uint64_t a1)
{
  v2 = sub_10074E984();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = 1 << *(a1 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a1 + 56);
  v9 = (v6 + 63) >> 6;
  v17[0] = v3 + 8;
  v17[1] = v3 + 16;

  v11 = 0;
  while (v8)
  {
LABEL_9:
    v13 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    (*(v3 + 16))(v5, *(a1 + 48) + *(v3 + 72) * (v13 | (v11 << 6)), v2);
    v14 = sub_10034E47C();
    v16 = v15;
    result = (*(v3 + 8))(v5, v2);
    if (v14)
    {
      result = (*(v16 + 8))(v14, v16);
    }
  }

  while (1)
  {
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v12 >= v9)
    {
    }

    v8 = *(a1 + 56 + 8 * v12);
    ++v11;
    if (v8)
    {
      v11 = v12;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100169D70()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100169DB0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_100169DC8(double a1)
{
  v2 = OBJC_IVAR____TtC22SubscribePageExtension28MediaOverlayGradientBlurView_colorGradientEndY;
  *&v1[OBJC_IVAR____TtC22SubscribePageExtension28MediaOverlayGradientBlurView_colorGradientEndY] = a1;
  v3 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension28MediaOverlayGradientBlurView_colorGradientView];
  v4 = [v3 layer];
  objc_opt_self();
  [swift_dynamicCastObjCClassUnconditional() endPoint];
  v6 = v5;

  v7 = *&v1[v2];
  v8 = [v3 layer];
  objc_opt_self();
  [swift_dynamicCastObjCClassUnconditional() setEndPoint:{v6, v7}];

  v9 = [*&v1[OBJC_IVAR____TtC22SubscribePageExtension28MediaOverlayGradientBlurView_secondaryColorGradientView] layer];
  objc_opt_self();
  [swift_dynamicCastObjCClassUnconditional() setEndPoint:{v6, v7}];

  return [v1 setNeedsDisplay];
}

void *sub_100169F2C(char a1)
{
  v1 = off_100869A70[a1];
  v2 = v1[2];
  if (v2)
  {
    sub_1007545C4();
    v3 = objc_opt_self();
    v4 = 4;
    do
    {
      v5 = *&v1[v4];
      v6 = [v3 blackColor];
      v7 = [v6 colorWithAlphaComponent:v5];

      sub_1007545A4();
      sub_1007545D4();
      sub_1007545E4();
      sub_1007545B4();
      ++v4;
      --v2;
    }

    while (v2);
  }

  return _swiftEmptyArrayStorage;
}

void *sub_10016A05C(void *a1, char a2)
{
  v2 = off_100869A88[a2];
  v3 = v2[2];
  if (v3)
  {
    sub_1007545C4();
    v5 = 4;
    do
    {
      v6 = [a1 colorWithAlphaComponent:*&v2[v5]];
      sub_1007545A4();
      sub_1007545D4();
      sub_1007545E4();
      sub_1007545B4();
      ++v5;
      --v3;
    }

    while (v3);
  }

  return _swiftEmptyArrayStorage;
}

void *sub_10016A150(void *a1, unsigned __int8 a2)
{
  v2 = a2;
  v3 = &unk_100861570;
  if (a2 != 1)
  {
    v3 = &_swiftEmptyArrayStorage[2];
  }

  v4 = *v3;
  if (*v3)
  {
    sub_1007545C4();
    if (v2 == 1)
    {
      v6 = &unk_100861580;
    }

    else
    {
      v6 = &_swiftEmptyArrayStorage[4];
    }

    do
    {
      v7 = *v6++;
      v8 = [a1 colorWithAlphaComponent:v7];
      sub_1007545A4();
      sub_1007545D4();
      sub_1007545E4();
      sub_1007545B4();
      --v4;
    }

    while (v4);
  }

  return _swiftEmptyArrayStorage;
}

void sub_10016A260()
{
  v1 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension28MediaOverlayGradientBlurView_secondaryColor);
  if (v1)
  {
    v2 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension28MediaOverlayGradientBlurView_secondaryColorGradientView);
    v3 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension28MediaOverlayGradientBlurView_style);
    v5 = v1;
    *&v2[OBJC_IVAR____TtC22SubscribePageExtension12GradientView_colors] = sub_10016A150(v5, v3);

    sub_100037ED0();
    [v2 setHidden:0];
  }

  else
  {
    v4 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension28MediaOverlayGradientBlurView_secondaryColorGradientView);

    [v4 setHidden:1];
  }
}

void *sub_10016A368()
{
  v1 = [v0 traitCollection];
  v2 = [v1 userInterfaceStyle];

  v3 = v0[OBJC_IVAR____TtC22SubscribePageExtension28MediaOverlayGradientBlurView_style];
  if (!v0[OBJC_IVAR____TtC22SubscribePageExtension28MediaOverlayGradientBlurView_style])
  {
    v4 = objc_opt_self();
    if (v2 == 2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  if (v3 == 1)
  {
    v4 = objc_opt_self();
    if (v2 == 2)
    {
LABEL_4:
      v5 = [v4 blackColor];
LABEL_9:
      v6 = v5;
      goto LABEL_10;
    }

LABEL_8:
    v5 = [v4 whiteColor];
    goto LABEL_9;
  }

  v6 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension28MediaOverlayGradientBlurView_todayCardStyleColor];
LABEL_10:
  v7 = v6;
  v8 = sub_10016A05C(v7, v3);

  return v8;
}

id sub_10016A480()
{
  v32.receiver = v0;
  v32.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v32, "layoutSubviews");
  sub_1007477B4();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  sub_1007535A4();
  v11 = sub_10010FD98(v2, v4, v6, v8, v9, v10);
  v13 = v12;
  v15 = v14;
  v17 = v16;
  [*&v0[OBJC_IVAR____TtC22SubscribePageExtension28MediaOverlayGradientBlurView_colorGradientView] setFrame:?];
  [*&v0[OBJC_IVAR____TtC22SubscribePageExtension28MediaOverlayGradientBlurView_secondaryColorGradientView] setFrame:{v11, v13, v15, v17}];
  sub_1007477B4();
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  sub_1007535A4();
  v28 = sub_10010FD98(v19, v21, v23, v25, v26, v27);
  v29 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension28MediaOverlayGradientBlurView_blurView];
  [v29 setFrame:v28];
  v30 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension28MediaOverlayGradientBlurView_blurGradientMaskView];
  [v29 bounds];
  return [v30 setFrame:?];
}

id sub_10016A650(uint64_t a1, uint64_t a2, double a3)
{
  v28 = a2;
  v6 = sub_100743584();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v25[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = __chkstk_darwin(v10);
  v13 = &v25[-v12];
  v14 = *(v7 + 16);
  v27 = a1;
  v14(&v25[-v12], a1, v6, v11);
  v15 = (*(v7 + 88))(v13, v6);
  v26 = enum case for CornerStyle.continuous(_:);
  if (v15 == enum case for CornerStyle.continuous(_:))
  {
    v16 = *(v3 + OBJC_IVAR____TtC22SubscribePageExtension28MediaOverlayGradientBlurView_colorGradientView);
    [v16 _setContinuousCornerRadius:a3];
    v17 = *(v3 + OBJC_IVAR____TtC22SubscribePageExtension28MediaOverlayGradientBlurView_secondaryColorGradientView);
    [v17 _setContinuousCornerRadius:a3];
  }

  else
  {
    v18 = v15;
    v19 = enum case for CornerStyle.arc(_:);
    v16 = *(v3 + OBJC_IVAR____TtC22SubscribePageExtension28MediaOverlayGradientBlurView_colorGradientView);
    [v16 _setCornerRadius:a3];
    v17 = *(v3 + OBJC_IVAR____TtC22SubscribePageExtension28MediaOverlayGradientBlurView_secondaryColorGradientView);
    [v17 _setCornerRadius:a3];
    if (v18 != v19)
    {
      (*(v7 + 8))(v13, v6);
    }
  }

  v20 = [v16 layer];
  [v20 setMaskedCorners:sub_1007535E4()];

  v21 = [v17 layer];
  [v21 setMaskedCorners:sub_1007535E4()];

  v22 = *(v3 + OBJC_IVAR____TtC22SubscribePageExtension28MediaOverlayGradientBlurView_blurView);
  (*(v7 + 104))(v9, v26, v6);
  v23 = sub_100743574();
  (*(v7 + 8))(v9, v6);
  return [v22 _setCornerRadius:v23 & 1 continuous:sub_1007535E4() maskedCorners:a3];
}

unint64_t sub_10016AAC0()
{
  result = qword_10092A130;
  if (!qword_10092A130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10092A130);
  }

  return result;
}

char *sub_10016AB14(char a1)
{
  ObjectType = swift_getObjectType();
  v4 = OBJC_IVAR____TtC22SubscribePageExtension28MediaOverlayGradientBlurView_todayCardStyleColor;
  *&v1[v4] = [objc_opt_self() clearColor];
  *&v1[OBJC_IVAR____TtC22SubscribePageExtension28MediaOverlayGradientBlurView_colorGradientStartY] = 0;
  *&v1[OBJC_IVAR____TtC22SubscribePageExtension28MediaOverlayGradientBlurView_blurGradientStartY] = 0;
  *&v1[OBJC_IVAR____TtC22SubscribePageExtension28MediaOverlayGradientBlurView_blurGradientEndY] = 0x3FF0000000000000;
  *&v1[OBJC_IVAR____TtC22SubscribePageExtension28MediaOverlayGradientBlurView_blurHorizontalInset] = 0;
  *&v1[OBJC_IVAR____TtC22SubscribePageExtension28MediaOverlayGradientBlurView_colorHorizontalInset] = 0;
  *&v1[OBJC_IVAR____TtC22SubscribePageExtension28MediaOverlayGradientBlurView_blurUserInterfaceStyle] = 0;
  *&v1[OBJC_IVAR____TtC22SubscribePageExtension28MediaOverlayGradientBlurView_secondaryColor] = 0;
  v5 = objc_opt_self();
  if (!a1)
  {
LABEL_5:
    v5 = [v5 effectWithBlurRadius:30.0];
    if (!v5)
    {
      __break(1u);
      goto LABEL_7;
    }

    goto LABEL_8;
  }

  if (a1 != 1)
  {
LABEL_7:
    v5 = [v5 effectWithStyle:6];
    goto LABEL_8;
  }

  v5 = [v5 effectWithBlurRadius:20.0];
  if (!v5)
  {
    __break(1u);
    goto LABEL_5;
  }

LABEL_8:
  v6 = v5;
  v7 = [objc_allocWithZone(UIVisualEffectView) initWithEffect:v5];

  *&v1[OBJC_IVAR____TtC22SubscribePageExtension28MediaOverlayGradientBlurView_blurView] = v7;
  v8 = type metadata accessor for GradientView();
  v9 = [objc_allocWithZone(v8) init];
  *&v1[OBJC_IVAR____TtC22SubscribePageExtension28MediaOverlayGradientBlurView_blurGradientMaskView] = v9;
  v10 = [objc_allocWithZone(v8) init];
  *&v1[OBJC_IVAR____TtC22SubscribePageExtension28MediaOverlayGradientBlurView_colorGradientView] = v10;
  v11 = [objc_allocWithZone(v8) init];
  *&v1[OBJC_IVAR____TtC22SubscribePageExtension28MediaOverlayGradientBlurView_secondaryColorGradientView] = v11;
  v1[OBJC_IVAR____TtC22SubscribePageExtension28MediaOverlayGradientBlurView_style] = a1;
  *&v1[OBJC_IVAR____TtC22SubscribePageExtension28MediaOverlayGradientBlurView_colorGradientEndY] = 0x3FF0000000000000;
  v53.receiver = v1;
  v53.super_class = ObjectType;
  v12 = objc_msgSendSuper2(&v53, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v16 = v12;
  [v16 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  [v16 setClipsToBounds:0];
  v17 = OBJC_IVAR____TtC22SubscribePageExtension28MediaOverlayGradientBlurView_blurView;
  [v16 addSubview:*&v16[OBJC_IVAR____TtC22SubscribePageExtension28MediaOverlayGradientBlurView_blurView]];
  v18 = [v16 layer];
  [v18 setAllowsGroupBlending:0];

  v19 = OBJC_IVAR____TtC22SubscribePageExtension28MediaOverlayGradientBlurView_blurGradientMaskView;
  v20 = *&v16[OBJC_IVAR____TtC22SubscribePageExtension28MediaOverlayGradientBlurView_blurGradientMaskView];
  *&v20[OBJC_IVAR____TtC22SubscribePageExtension12GradientView_colors] = sub_100169F2C(a1);

  sub_100037ED0();

  v21 = *&v16[OBJC_IVAR____TtC22SubscribePageExtension28MediaOverlayGradientBlurView_blurGradientStartY];
  v22 = *&v16[v19];
  v23 = [v22 layer];
  objc_opt_self();
  [swift_dynamicCastObjCClassUnconditional() setStartPoint:{0.5, v21}];

  v24 = *&v16[OBJC_IVAR____TtC22SubscribePageExtension28MediaOverlayGradientBlurView_blurGradientEndY];
  v25 = *&v16[v19];
  v26 = [v25 layer];
  objc_opt_self();
  [swift_dynamicCastObjCClassUnconditional() setEndPoint:{0.5, v24}];

  v27 = a1;
  v28 = off_100869AA0[a1];
  v29 = *&v16[v19];
  sub_100037D2C(v28);

  v30 = [*&v16[v17] layer];
  v31 = [*&v16[v19] layer];
  objc_opt_self();
  [v30 setMask:swift_dynamicCastObjCClassUnconditional()];

  v32 = OBJC_IVAR____TtC22SubscribePageExtension28MediaOverlayGradientBlurView_colorGradientView;
  v33 = *&v16[OBJC_IVAR____TtC22SubscribePageExtension28MediaOverlayGradientBlurView_colorGradientView];
  *(v33 + OBJC_IVAR____TtC22SubscribePageExtension12GradientView_colors) = sub_10016A368();

  sub_100037ED0();
  v34 = OBJC_IVAR____TtC22SubscribePageExtension28MediaOverlayGradientBlurView_colorGradientStartY;
  v35 = *&v16[OBJC_IVAR____TtC22SubscribePageExtension28MediaOverlayGradientBlurView_colorGradientStartY];
  v36 = *&v16[v32];
  v37 = [v36 layer];
  objc_opt_self();
  [swift_dynamicCastObjCClassUnconditional() setStartPoint:{0.5, v35}];

  v38 = OBJC_IVAR____TtC22SubscribePageExtension28MediaOverlayGradientBlurView_colorGradientEndY;
  v39 = *&v16[OBJC_IVAR____TtC22SubscribePageExtension28MediaOverlayGradientBlurView_colorGradientEndY];
  v40 = *&v16[v32];
  v41 = [v40 layer];
  objc_opt_self();
  [swift_dynamicCastObjCClassUnconditional() setEndPoint:{0.5, v39}];

  v42 = off_100869AB8[v27];
  v43 = *&v16[v32];
  sub_100037D2C(v42);

  [v16 addSubview:*&v16[v32]];
  sub_10016A260();
  v44 = OBJC_IVAR____TtC22SubscribePageExtension28MediaOverlayGradientBlurView_secondaryColorGradientView;
  v45 = *&v16[v34];
  v46 = *&v16[OBJC_IVAR____TtC22SubscribePageExtension28MediaOverlayGradientBlurView_secondaryColorGradientView];
  v47 = [v46 layer];
  objc_opt_self();
  [swift_dynamicCastObjCClassUnconditional() setStartPoint:{0.5, v45}];

  v48 = *&v16[v38];
  v49 = *&v16[v44];
  v50 = [v49 layer];
  objc_opt_self();
  [swift_dynamicCastObjCClassUnconditional() setEndPoint:{0.5, v48}];

  v51 = *&v16[v44];
  sub_100037D2C(v42);

  [v16 addSubview:*&v16[v44]];
  return v16;
}

void sub_10016B1B4()
{
  v1 = OBJC_IVAR____TtC22SubscribePageExtension28MediaOverlayGradientBlurView_todayCardStyleColor;
  *(v0 + v1) = [objc_opt_self() clearColor];
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension28MediaOverlayGradientBlurView_colorGradientStartY) = 0;
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension28MediaOverlayGradientBlurView_blurGradientStartY) = 0;
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension28MediaOverlayGradientBlurView_blurGradientEndY) = 0x3FF0000000000000;
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension28MediaOverlayGradientBlurView_blurHorizontalInset) = 0;
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension28MediaOverlayGradientBlurView_colorHorizontalInset) = 0;
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension28MediaOverlayGradientBlurView_blurUserInterfaceStyle) = 0;
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension28MediaOverlayGradientBlurView_secondaryColor) = 0;
  sub_100754644();
  __break(1u);
}

unint64_t sub_10016B29C()
{
  result = qword_10092A138;
  if (!qword_10092A138)
  {
    type metadata accessor for HeroCarouselCollectionViewCell();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10092A138);
  }

  return result;
}

double sub_10016B30C()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = sub_100753064();
  v2 = [v0 valueForKey:v1];

  if (v2)
  {
    sub_100754314();
    swift_unknownObjectRelease();
  }

  else
  {
    v6 = 0u;
    v7 = 0u;
  }

  v8[0] = v6;
  v8[1] = v7;
  if (*(&v7 + 1))
  {
    if (swift_dynamicCast())
    {
      return v5;
    }
  }

  else
  {
    sub_1000277BC(v8);
  }

  Main = JUScreenClassGetMain();
  result = 560.0;
  if (Main == 1)
  {
    return 526.0;
  }

  return result;
}

double sub_10016B440(double a1, double a2)
{
  v5 = [v2 traitCollection];
  v6 = [v5 horizontalSizeClass];

  if (v6 == 2)
  {
    v7 = [v2 traitCollection];
    v8 = type metadata accessor for SnapshotPageTraitEnvironment();
    v9 = objc_allocWithZone(v8);
    v10 = &v9[OBJC_IVAR____TtC22SubscribePageExtension28SnapshotPageTraitEnvironment_pageContainerSize];
    *v10 = a1;
    v10[1] = a2;
    *&v9[OBJC_IVAR____TtC22SubscribePageExtension28SnapshotPageTraitEnvironment_traitCollection] = v7;
    v27.receiver = v9;
    v27.super_class = v8;
    v11 = objc_msgSendSuper2(&v27, "init");
    v12 = [v11 traitCollection];
    v13 = sub_1007537B4();

    if (v13)
    {
      [v11 pageContainerSize];
      sub_1001D7694(v14, v15);
      v17 = v16 + v16;
      PageTraitEnvironment.pageColumnMargin.getter();
      v19 = v18;

      return v17 + v19;
    }

    else
    {
      [v11 pageMarginInsets];
      v21 = v20;
      v23 = v22;
      [v11 pageContainerSize];
      v25 = v24;

      return v25 - v21 - v23;
    }
  }

  return a1;
}

void PageTraitEnvironment.pageColumnMargin.getter()
{
  [v0 pageContainerSize];
  v2 = v1;
  v4 = v3;
  v5 = [v0 traitCollection];
  v6 = sub_1007537B4();

  if ((v6 & 1) == 0)
  {
    if (v4 < v2)
    {
LABEL_5:
      JUScreenClassGetLandscapeWidth();
      return;
    }

LABEL_9:
    JUScreenClassGetPortraitWidth();
    return;
  }

  if (v4 >= v2)
  {
    JUScreenClassGetPortraitWidth();
    if (v2 <= v8)
    {
      return;
    }

    goto LABEL_9;
  }

  if (v2 != 1133.0)
  {
    JUScreenClassGetLandscapeWidth();
    if (v2 > v7)
    {
      goto LABEL_5;
    }
  }
}

char *sub_10016B6CC(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v9 = sub_10074A3F4();
  __chkstk_darwin(v9 - 8);
  v45 = sub_10074A454();
  v10 = *(v45 - 8);
  __chkstk_darwin(v45);
  v12 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10074A374();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = OBJC_IVAR____TtC22SubscribePageExtension29CarouselItemModulePlatterView_lockupCollectionView;
  v17 = type metadata accessor for CarouselItemLockupCollectionView();
  v18 = objc_allocWithZone(v17);
  *&v18[OBJC_IVAR____TtC22SubscribePageExtension32CarouselItemLockupCollectionView_artworkViews] = _swiftEmptyArrayStorage;
  v19 = OBJC_IVAR____TtC22SubscribePageExtension32CarouselItemLockupCollectionView____lazy_storage___artworkViewPool;
  v20 = sub_10000C518(&qword_10092A198);
  (*(*(v20 - 8) + 56))(&v18[v19], 1, 1, v20);
  *&v18[OBJC_IVAR____TtC22SubscribePageExtension32CarouselItemLockupCollectionView_numberOfArtworks] = 0;
  *&v18[OBJC_IVAR____TtC22SubscribePageExtension32CarouselItemLockupCollectionView_minNumberOfArtworks] = 2;
  *&v18[OBJC_IVAR____TtC22SubscribePageExtension32CarouselItemLockupCollectionView_maxNumberOfArtworks] = 5;
  v49.receiver = v18;
  v49.super_class = v17;
  v21 = objc_msgSendSuper2(&v49, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  [v21 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v25 = v44;
  *&v4[v44] = v21;
  (*(v14 + 104))(v16, enum case for HeroCarouselItemOverlay.DisplayOptions.TextAlignment.center(_:), v13);
  (*(v10 + 104))(v12, enum case for HeroCarouselItemOverlay.DisplayOptions.Placement.leading(_:), v45);
  sub_10074A3E4();
  sub_10074A384();
  v26 = &v4[OBJC_IVAR____TtC22SubscribePageExtension29CarouselItemModulePlatterView_selectionHandler];
  *v26 = 0;
  *(v26 + 1) = 0;
  v27 = *&v4[v25];
  v28 = objc_allocWithZone(UIVisualEffect);
  v29 = v27;
  v30 = [v28 init];
  v31 = type metadata accessor for VisualEffectContainerView();
  v32 = objc_allocWithZone(v31);
  *&v32[OBJC_IVAR____TtC22SubscribePageExtension25VisualEffectContainerView_embeddedView] = v29;
  v48.receiver = v32;
  v48.super_class = v31;
  v33 = v29;
  v34 = objc_msgSendSuper2(&v48, "initWithEffect:", v30);
  [v34 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v35 = [v34 contentView];
  [v35 addSubview:v33];

  *&v4[OBJC_IVAR____TtC22SubscribePageExtension29CarouselItemModulePlatterView_materialbackground] = v34;
  v47.receiver = v4;
  v47.super_class = ObjectType;
  v36 = objc_msgSendSuper2(&v47, "initWithFrame:", a1, a2, a3, a4);
  [v36 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  [v36 setOverrideUserInterfaceStyle:2];
  [v36 setMaximumContentSizeCategory:UIContentSizeCategoryAccessibilityMedium];
  v37 = [*&v36[OBJC_IVAR____TtC22SubscribePageExtension29CarouselItemModulePlatterView_lockupCollectionView] layer];
  [v37 setAllowsGroupBlending:0];

  v38 = OBJC_IVAR____TtC22SubscribePageExtension29CarouselItemModulePlatterView_materialbackground;
  v39 = *&v36[OBJC_IVAR____TtC22SubscribePageExtension29CarouselItemModulePlatterView_materialbackground];
  sub_1006F3F14(20.0);

  v40 = [*&v36[v38] contentView];
  v41 = [v40 layer];

  [v41 setAllowsGroupBlending:0];
  [v36 addSubview:*&v36[v38]];

  return v36;
}

uint64_t sub_10016BC68()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_1007506E4();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v18[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v8 = __chkstk_darwin(v7).n128_u64[0];
  v10 = &v18[-1] - v9;
  v19.receiver = v1;
  v19.super_class = ObjectType;
  objc_msgSendSuper2(&v19, "layoutSubviews", v8);
  *(swift_allocObject() + 16) = v1;
  v11 = v1;
  sub_1007506B4();
  v12 = *&v11[OBJC_IVAR____TtC22SubscribePageExtension29CarouselItemModulePlatterView_materialbackground];
  v18[3] = type metadata accessor for VisualEffectContainerView();
  v18[4] = sub_10016D198(&qword_10092A190, type metadata accessor for VisualEffectContainerView);
  v18[0] = v12;
  v13 = v12;
  sub_1007506D4();
  v14 = *(v4 + 8);
  v14(v6, v3);
  sub_10000C620(v18);
  sub_1007477B4();
  v15 = [v11 traitCollection];
  sub_100751244();

  return (v14)(v10, v3);
}

uint64_t sub_10016BF04(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  v19 = sub_1007506A4();
  v3 = *(v19 - 8);
  __chkstk_darwin(v19);
  v5 = (&v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_10074A454();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10074A464();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtC22SubscribePageExtension29CarouselItemModulePlatterView_displayOptions;
  swift_beginAccess();
  (*(v11 + 16))(v13, a2 + v14, v10);
  sub_10074A414();
  (*(v11 + 8))(v13, v10);
  result = (*(v7 + 88))(v9, v6);
  if (result == enum case for HeroCarouselItemOverlay.DisplayOptions.Placement.leading(_:))
  {
    v5[3] = sub_1007507D4();
    v5[4] = &protocol witness table for ZeroDimension;
    sub_10000D134(v5);
    sub_1007507C4();
    (*(v3 + 104))(v5, enum case for DisjointStack.EdgePosition.anchored(_:), v19);
    return sub_100750664();
  }

  else
  {
    v16 = v3;
    v17 = v19;
    if (result != enum case for HeroCarouselItemOverlay.DisplayOptions.Placement.center(_:))
    {
      if (result == enum case for HeroCarouselItemOverlay.DisplayOptions.Placement.trailing(_:))
      {
        v5[3] = sub_1007507D4();
        v5[4] = &protocol witness table for ZeroDimension;
        sub_10000D134(v5);
        sub_1007507C4();
        (*(v16 + 104))(v5, enum case for DisjointStack.EdgePosition.anchored(_:), v17);
        return sub_100750674();
      }

      else
      {
        return (*(v7 + 8))(v9, v6);
      }
    }
  }

  return result;
}

double sub_10016C23C(double a1, double a2)
{
  v5 = sub_1007506E4();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v19[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v19[-1] - v10;
  *(swift_allocObject() + 16) = v2;
  v12 = v2;
  sub_1007506B4();
  v13 = *&v12[OBJC_IVAR____TtC22SubscribePageExtension29CarouselItemModulePlatterView_materialbackground];
  v19[3] = type metadata accessor for VisualEffectContainerView();
  v19[4] = sub_10016D198(&qword_10092A190, type metadata accessor for VisualEffectContainerView);
  v19[0] = v13;
  v14 = v13;
  sub_1007506D4();
  v15 = *(v6 + 8);
  v15(v8, v5);
  sub_10000C620(v19);
  v16 = sub_10016C6E8(v11, v12, a1, a2);
  v15(v11, v5);
  return v16;
}

uint64_t type metadata accessor for CarouselItemModulePlatterView()
{
  result = qword_10092A180;
  if (!qword_10092A180)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10016C57C()
{
  result = sub_10074A464();
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

uint64_t sub_10016C624(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR____TtC22SubscribePageExtension29CarouselItemModulePlatterView_selectionHandler);
  v4 = *(v2 + OBJC_IVAR____TtC22SubscribePageExtension29CarouselItemModulePlatterView_selectionHandler);
  *v3 = a1;
  v3[1] = a2;
  return sub_1000164A8(v4);
}

uint64_t sub_10016C648(uint64_t a1, uint64_t a2)
{
  v3 = sub_10074A484();
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = _swiftEmptyArrayStorage;
  }

  sub_100381AA8(v4, a2);
}

double sub_10016C6E8(uint64_t a1, void *a2, double a3, double a4)
{
  v8 = sub_100751144();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v41[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v12);
  v14 = &v41[-v13];
  __chkstk_darwin(v15);
  v17 = &v41[-v16];
  __chkstk_darwin(v18);
  v20 = &v41[-v19];
  v21 = sub_1007506E4();
  v47[3] = v21;
  v47[4] = &protocol witness table for DisjointStack;
  v22 = sub_10000D134(v47);
  (*(*(v21 - 8) + 16))(v22, a1, v21);
  v23 = sub_10016B440(a3, a4);
  v24 = [a2 traitCollection];
  v25 = [v24 horizontalSizeClass];

  if (v25 == 2)
  {
    v26 = 635.0;
  }

  else
  {
    v26 = a3;
  }

  if (v26 <= v23)
  {
    sub_10000C824(v47, v43);
    *(v20 + 3) = &type metadata for CGFloat;
    *(v20 + 4) = &protocol witness table for CGFloat;
    *v20 = v26;
    v35 = *(v9 + 104);
    v35(v20, enum case for Resize.Rule.replaced(_:), v8);
    v36 = enum case for Resize.Rule.unchanged(_:);
    v35(v17, enum case for Resize.Rule.unchanged(_:), v8);
    v35(v14, v36, v8);
    v35(v11, v36, v8);
    v45 = sub_100751154();
    v46 = &protocol witness table for Resize;
    sub_10000D134(v44);
    sub_100751164();
  }

  else
  {
    sub_100750C24();
    v28 = v27;
    v30 = v29;
    sub_10000C824(v47, v43);
    sub_100750C24();
    v32 = v31;
    v34 = v33;
    v45 = sub_100751224();
    v46 = &protocol witness table for Constrain;
    sub_10000D134(v44);
    v42 = v32 & 1;
    v41[0] = v34 & 1;
    sub_100751234();
    v43[0] = v28 & 1;
    v42 = v30 & 1;
    sub_100750C44();
  }

  sub_10000C888(v44, v45);
  v37 = [a2 traitCollection];
  sub_100751254();
  v39 = v38;

  sub_10000C620(v44);
  sub_10000C620(v47);
  return v39;
}

id sub_10016CAF4()
{
  v1 = v0;
  v2 = sub_10074A464();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension29CarouselItemModulePlatterView_lockupCollectionView];
  v7 = sub_10074A484();
  if (v7)
  {
    if (v7 >> 62)
    {
      v8 = sub_100754664();
    }

    else
    {
      v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v9 = OBJC_IVAR____TtC22SubscribePageExtension32CarouselItemLockupCollectionView_numberOfArtworks;
    v10 = *&v6[OBJC_IVAR____TtC22SubscribePageExtension32CarouselItemLockupCollectionView_numberOfArtworks];
    *&v6[OBJC_IVAR____TtC22SubscribePageExtension32CarouselItemLockupCollectionView_numberOfArtworks] = v8;
    if (v8 != v10)
    {
      if (v8 > 5)
      {
        *&v6[v9] = 5;
      }

      goto LABEL_8;
    }
  }

  else
  {
    v11 = *&v6[OBJC_IVAR____TtC22SubscribePageExtension32CarouselItemLockupCollectionView_numberOfArtworks];
    *&v6[OBJC_IVAR____TtC22SubscribePageExtension32CarouselItemLockupCollectionView_numberOfArtworks] = 0;
    if (v11)
    {
LABEL_8:
      sub_100382168();
      [v6 setNeedsLayout];
    }
  }

  sub_10074A474();
  v12 = OBJC_IVAR____TtC22SubscribePageExtension29CarouselItemModulePlatterView_displayOptions;
  swift_beginAccess();
  (*(v3 + 40))(&v1[v12], v5, v2);
  swift_endAccess();
  return [v1 setNeedsLayout];
}

void sub_10016CCBC()
{
  v1 = sub_10074A3F4();
  __chkstk_darwin(v1 - 8);
  v16 = sub_10074A454();
  v2 = *(v16 - 8);
  __chkstk_darwin(v16);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10074A374();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = OBJC_IVAR____TtC22SubscribePageExtension29CarouselItemModulePlatterView_lockupCollectionView;
  v9 = type metadata accessor for CarouselItemLockupCollectionView();
  v10 = objc_allocWithZone(v9);
  *&v10[OBJC_IVAR____TtC22SubscribePageExtension32CarouselItemLockupCollectionView_artworkViews] = _swiftEmptyArrayStorage;
  v11 = OBJC_IVAR____TtC22SubscribePageExtension32CarouselItemLockupCollectionView____lazy_storage___artworkViewPool;
  v12 = sub_10000C518(&qword_10092A198);
  (*(*(v12 - 8) + 56))(&v10[v11], 1, 1, v12);
  *&v10[OBJC_IVAR____TtC22SubscribePageExtension32CarouselItemLockupCollectionView_numberOfArtworks] = 0;
  *&v10[OBJC_IVAR____TtC22SubscribePageExtension32CarouselItemLockupCollectionView_minNumberOfArtworks] = 2;
  *&v10[OBJC_IVAR____TtC22SubscribePageExtension32CarouselItemLockupCollectionView_maxNumberOfArtworks] = 5;
  v17.receiver = v10;
  v17.super_class = v9;
  v13 = objc_msgSendSuper2(&v17, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  [v13 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];
  *(v0 + v15) = v13;
  (*(v6 + 104))(v8, enum case for HeroCarouselItemOverlay.DisplayOptions.TextAlignment.center(_:), v5);
  (*(v2 + 104))(v4, enum case for HeroCarouselItemOverlay.DisplayOptions.Placement.leading(_:), v16);
  sub_10074A3E4();
  sub_10074A384();
  v14 = (v0 + OBJC_IVAR____TtC22SubscribePageExtension29CarouselItemModulePlatterView_selectionHandler);
  *v14 = 0;
  v14[1] = 0;
  sub_100754644();
  __break(1u);
}

uint64_t sub_10016CFEC()
{
  v1 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension29CarouselItemModulePlatterView_lockupCollectionView);
  v2 = OBJC_IVAR____TtC22SubscribePageExtension32CarouselItemLockupCollectionView_artworkViews;
  swift_beginAccess();
  v3 = *(v1 + v2);
  if (v3 >> 62)
  {
    goto LABEL_15;
  }

  for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_100754664())
  {

    if (!i)
    {
      break;
    }

    for (j = 0; ; ++j)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v6 = sub_100754574();
      }

      else
      {
        if (j >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }

        v6 = *(v3 + 8 * j + 32);
      }

      v7 = v6;
      v8 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      sub_1007433C4();
      sub_10016D198(&qword_100925570, &type metadata accessor for ArtworkView);
      sub_100744274();

      if (v8 == i)
      {
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    ;
  }
}

uint64_t sub_10016D158()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10016D198(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_10016D1F0(char a1)
{
  v2 = v1;
  v4 = sub_100745394();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, v2, v4, v6);
  v9 = (*(v5 + 88))(v8, v4);
  if (v9 == enum case for BreakoutDetails.BackgroundStyle.material(_:) || v9 == enum case for BreakoutDetails.BackgroundStyle.dark(_:))
  {
    v11 = [objc_opt_self() whiteColor];
    v12 = v11;
    v13 = 0.7;
    if (a1)
    {
      v13 = 1.0;
    }

    v14 = [v11 colorWithAlphaComponent:v13];
  }

  else
  {
    v15 = v9;
    v16 = enum case for BreakoutDetails.BackgroundStyle.light(_:);
    v17 = [objc_opt_self() blackColor];
    v18 = v17;
    v19 = 0.7;
    if (a1)
    {
      v19 = 1.0;
    }

    v14 = [v17 colorWithAlphaComponent:v19];

    if (v15 != v16)
    {
      (*(v5 + 8))(v8, v4);
    }
  }

  return v14;
}

id sub_10016D3F0()
{
  v1 = v0;
  v2 = sub_100745394();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, v1, v2, v4);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 == enum case for BreakoutDetails.BackgroundStyle.material(_:) || v7 == enum case for BreakoutDetails.BackgroundStyle.dark(_:))
  {
    v9 = [objc_opt_self() whiteColor];
    v10 = [v9 colorWithAlphaComponent:0.75];

    return v10;
  }

  else
  {
    v12 = v7;
    v13 = enum case for BreakoutDetails.BackgroundStyle.light(_:);
    v14 = [objc_opt_self() blackColor];
    v15 = [v14 colorWithAlphaComponent:0.75];

    if (v12 != v13)
    {
      (*(v3 + 8))(v6, v2);
    }

    return v15;
  }
}

id sub_10016D5C8()
{
  v1 = v0;
  v2 = sub_100745394();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, v1, v2, v4);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 == enum case for BreakoutDetails.BackgroundStyle.material(_:))
  {
    v8 = [objc_opt_self() whiteColor];
    v9 = [v8 colorWithAlphaComponent:0.8];
LABEL_5:
    v10 = v9;

    return v10;
  }

  if (v7 == enum case for BreakoutDetails.BackgroundStyle.dark(_:))
  {
    v8 = [objc_opt_self() whiteColor];
    v9 = [v8 colorWithAlphaComponent:0.6];
    goto LABEL_5;
  }

  v12 = enum case for BreakoutDetails.BackgroundStyle.light(_:);
  v13 = v7;
  v14 = [objc_opt_self() blackColor];
  v15 = [v14 colorWithAlphaComponent:0.6];

  if (v13 != v12)
  {
    (*(v3 + 8))(v6, v2);
  }

  return v15;
}

double sub_10016D82C()
{
  v0 = sub_100741574();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100741544();
  v4 = sub_1007414E4();
  (*(v1 + 8))(v3, v0);
  *&xmmword_10097DD80 = 10329570;
  *(&xmmword_10097DD80 + 1) = 0xA300000000000000;
  *&xmmword_10097DD90 = 10395106;
  *(&xmmword_10097DD90 + 1) = 0xA300000000000000;
  *&xmmword_10097DDA0 = v4;
  *(&xmmword_10097DDA0 + 8) = xmmword_1007AE850;
  *(&xmmword_10097DDB0 + 8) = xmmword_1007AE860;
  result = 5.0;
  unk_10097DDC8 = xmmword_1007A78D0;
  return result;
}

double sub_10016D93C()
{
  v0 = sub_100741574();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100741544();
  v4 = sub_1007414E4();
  (*(v1 + 8))(v3, v0);
  *&xmmword_10097DDD8 = 10395106;
  *(&xmmword_10097DDD8 + 1) = 0xA300000000000000;
  *&xmmword_10097DDE8 = 10395106;
  *(&xmmword_10097DDE8 + 1) = 0xA300000000000000;
  *&xmmword_10097DDF8 = v4;
  *(&xmmword_10097DDF8 + 8) = xmmword_1007AE850;
  *(&xmmword_10097DE08 + 8) = xmmword_1007AE860;
  result = 5.0;
  unk_10097DE20 = xmmword_1007A78D0;
  return result;
}

double sub_10016DA48()
{
  v0 = sub_100741574();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100741544();
  v4 = sub_1007414E4();
  (*(v1 + 8))(v3, v0);
  *&xmmword_10097DE30 = 10387682;
  *(&xmmword_10097DE30 + 1) = 0xA300000000000000;
  *&xmmword_10097DE40 = 10256610;
  *(&xmmword_10097DE40 + 1) = 0xA300000000000000;
  *&xmmword_10097DE50 = v4;
  *(&xmmword_10097DE50 + 8) = xmmword_1007AE870;
  __asm { FMOV            V0.2D, #8.0 }

  *(&xmmword_10097DE60 + 8) = _Q0;
  result = 7.0;
  *&algn_10097DE70[8] = xmmword_1007AE880;
  return result;
}

double sub_10016DB54()
{
  v0 = sub_100741574();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100741544();
  v4 = sub_1007414E4();
  (*(v1 + 8))(v3, v0);
  *&xmmword_10097DE88 = 43970;
  *(&xmmword_10097DE88 + 1) = 0xA200000000000000;
  *&xmmword_10097DE98 = 48066;
  *(&xmmword_10097DE98 + 1) = 0xA200000000000000;
  *&xmmword_10097DEA8 = v4;
  *(&xmmword_10097DEA8 + 8) = xmmword_1007AE890;
  *(&xmmword_10097DEB8 + 8) = xmmword_1007AE8A0;
  result = 7.0;
  unk_10097DED0 = xmmword_1007AE880;
  return result;
}

double sub_10016DC60()
{
  v0 = sub_100741574();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100741544();
  v4 = sub_1007414E4();
  (*(v1 + 8))(v3, v0);
  *&xmmword_10097DEE0 = 9208035;
  *(&xmmword_10097DEE0 + 1) = 0xA300000000000000;
  *&xmmword_10097DEF0 = 9273571;
  *(&xmmword_10097DEF0 + 1) = 0xA300000000000000;
  *&xmmword_10097DF00 = v4;
  *(&xmmword_10097DF00 + 8) = xmmword_1007AE8B0;
  *(&xmmword_10097DF10 + 8) = xmmword_1007AE8C0;
  result = 9.0;
  unk_10097DF28 = xmmword_1007AE8D0;
  return result;
}

id sub_10016DD98(double a1, uint64_t a2, void *a3)
{
  result = [objc_opt_self() systemFontOfSize:a1 weight:UIFontWeightBold];
  *a3 = result;
  return result;
}

id sub_10016DDF8()
{
  result = [objc_allocWithZone(UIColor) initWithRed:0.78 green:0.78 blue:0.8 alpha:1.0];
  qword_10092A1B0 = result;
  return result;
}

uint64_t sub_10016DFC8(uint64_t a1, uint64_t *a2, void *a3, uint64_t a4)
{
  v7 = sub_100750534();
  sub_100039C50(v7, a2);
  v8 = sub_10000D0FC(v7, a2);
  if (*a3 != -1)
  {
    swift_once();
  }

  v9 = sub_10000D0FC(v7, a4);
  v10 = *(*(v7 - 8) + 16);

  return v10(v8, v9, v7);
}

uint64_t sub_10016E0B0(uint64_t a1, uint64_t *a2)
{
  v3 = sub_100750304();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v13[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100750B04();
  sub_100039C50(v7, a2);
  sub_10000D0FC(v7, a2);
  if (qword_1009203B8 != -1)
  {
    swift_once();
  }

  v8 = sub_100750534();
  v9 = sub_10000D0FC(v8, qword_10097DF38);
  (*(*(v8 - 8) + 16))(v6, v9, v8);
  (*(v4 + 104))(v6, enum case for FontSource.useCase(_:), v3);
  v13[3] = v3;
  v13[4] = &protocol witness table for FontSource;
  v10 = sub_10000D134(v13);
  (*(v4 + 16))(v10, v6, v3);
  sub_100750B14();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_10016E29C(uint64_t a1, uint64_t *a2)
{
  v3 = sub_100750304();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v13[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100750B04();
  sub_100039C50(v7, a2);
  sub_10000D0FC(v7, a2);
  if (qword_1009203C0 != -1)
  {
    swift_once();
  }

  v8 = sub_100750534();
  v9 = sub_10000D0FC(v8, qword_10097DF50);
  (*(*(v8 - 8) + 16))(v6, v9, v8);
  (*(v4 + 104))(v6, enum case for FontSource.useCase(_:), v3);
  v13[3] = v3;
  v13[4] = &protocol witness table for FontSource;
  v10 = sub_10000D134(v13);
  (*(v4 + 16))(v10, v6, v3);
  sub_100750B14();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_10016E488()
{
  v0 = sub_100750304();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = (&v9[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = sub_100750B04();
  sub_100039C50(v4, qword_10097DFC8);
  sub_10000D0FC(v4, qword_10097DFC8);
  *v3 = UIFontTextStyleBody;
  (*(v1 + 104))(v3, enum case for FontSource.textStyle(_:), v0);
  v9[3] = v0;
  v9[4] = &protocol witness table for FontSource;
  v5 = sub_10000D134(v9);
  (*(v1 + 16))(v5, v3, v0);
  v6 = UIFontTextStyleBody;
  sub_100750B14();
  return (*(v1 + 8))(v3, v0);
}

void sub_10016E5F4(uint64_t a1, id a2)
{
  v3 = v2;
  sub_1007481E4();

  sub_100748194();
  sub_100748184();
  v5 = sub_100748204();
  v6 = &selRef_initWithTitle_style_target_action_;
  v60 = v5;
  if (v5)
  {
    v7 = sub_1007481B4();
    v8 = v7;
    v9 = &v2[OBJC_IVAR____TtC22SubscribePageExtension9QuoteView_quoteGlyphs];
    if (v7 != *&v2[OBJC_IVAR____TtC22SubscribePageExtension9QuoteView_quoteGlyphs + 32])
    {
      v58 = a2;
      *(v9 + 4) = v7;
      v55 = *&v9[16 * (v7 == 1)];
      v56 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension9QuoteView_leadingQuote];

      sub_10000C518(&unk_100929CA0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1007A6580;
      *(inited + 32) = NSFontAttributeName;
      v11 = qword_1009203A0;
      v12 = NSFontAttributeName;
      if (v11 != -1)
      {
        swift_once();
      }

      v13 = qword_10092A1A0;
      v14 = sub_100016C60(0, &qword_100923AB0);
      *(inited + 40) = v13;
      *(inited + 64) = v14;
      *(inited + 72) = NSForegroundColorAttributeName;
      v15 = qword_1009203B0;
      v16 = v13;
      v17 = NSForegroundColorAttributeName;
      if (v15 != -1)
      {
        swift_once();
      }

      v18 = qword_10092A1B0;
      *(inited + 104) = sub_100016C60(0, &qword_100923500);
      *(inited + 80) = v18;
      v19 = v18;
      sub_100413A18(inited);
      swift_setDeallocating();
      sub_10000C518(&unk_100923510);
      swift_arrayDestroy();
      v20 = objc_allocWithZone(NSAttributedString);
      v21 = sub_100753064();

      type metadata accessor for Key(0);
      sub_100168B0C();
      isa = sub_100752F34().super.isa;

      v23 = [v20 initWithString:v21 attributes:isa];

      v6 = &selRef_initWithTitle_style_target_action_;
      [v56 setAttributedText:v23];

      v24 = *(v9 + 3);
      v62[2] = *(v9 + 2);
      v62[3] = v24;
      v62[4] = *(v9 + 4);
      v63 = *(v9 + 10);
      v25 = *(v9 + 1);
      v62[0] = *v9;
      v62[1] = v25;
      v26 = objc_allocWithZone(type metadata accessor for QuotesLabel());
      sub_100170CF0(v62, v61);
      v27 = [v26 initWithFrame:{0.0, 0.0, 0.0, 0.0}];
      v28 = sub_100170988(v62);

      sub_100170D28(v62);
      v29 = *&v3[OBJC_IVAR____TtC22SubscribePageExtension9QuoteView_trailingQuote];
      *&v3[OBJC_IVAR____TtC22SubscribePageExtension9QuoteView_trailingQuote] = v28;

      a2 = v58;
    }
  }

  else
  {
    v8 = -1;
  }

  v30 = *&v3[OBJC_IVAR____TtC22SubscribePageExtension9QuoteView_quoteLabel];
  v31 = sub_100016C60(0, &qword_100923AB0);
  if (qword_1009203B8 != -1)
  {
    swift_once();
  }

  v32 = sub_100750534();
  sub_10000D0FC(v32, qword_10097DF38);
  v33 = [v3 traitCollection];
  v34 = sub_100753C14();

  if (a2)
  {
    v57 = v30;
    v35 = *&v3[OBJC_IVAR____TtC22SubscribePageExtension9QuoteView_trailingQuote];
    v36 = *&v3[OBJC_IVAR____TtC22SubscribePageExtension9QuoteView_quoteGlyphs + 72];
    sub_10000C518(&unk_100929CA0);
    v37 = swift_initStackObject();
    *(v37 + 16) = xmmword_1007A6580;
    *(v37 + 32) = NSParagraphStyleAttributeName;
    v38 = qword_100920138;
    v39 = NSParagraphStyleAttributeName;
    v59 = v35;
    if (v38 != -1)
    {
      swift_once();
    }

    v40 = [qword_10097D250 paragraphStyleWithBaseWritingDirection:{v8, v55}];
    v41 = sub_100016C60(0, &qword_10092A248);
    *(v37 + 40) = v40;
    *(v37 + 64) = v41;
    *(v37 + 72) = NSFontAttributeName;
    *(v37 + 104) = v31;
    *(v37 + 80) = v34;
    v42 = NSFontAttributeName;
    v34 = v34;
    sub_100413A18(v37);
    swift_setDeallocating();
    sub_10000C518(&unk_100923510);
    swift_arrayDestroy();
    v43 = objc_allocWithZone(NSMutableAttributedString);
    v44 = sub_100753064();
    type metadata accessor for Key(0);
    sub_100168B0C();
    v45 = sub_100752F34().super.isa;

    a2 = [v43 initWithString:v44 attributes:v45];

    if (v35)
    {
      v46 = v59;
      sub_100413A18(_swiftEmptyArrayStorage);
      v47 = objc_allocWithZone(NSAttributedString);
      v48 = sub_100753064();
      v49 = sub_100752F34().super.isa;

      v50 = [v47 initWithString:v48 attributes:v49];

      [a2 appendAttributedString:v50];
      v51 = [objc_allocWithZone(NSTextAttachment) init];
      [v51 setImage:v46];
      [v46 size];
      [v51 setBounds:{0.0, -v36, v52, v53}];
      v54 = [objc_opt_self() attributedStringWithAttachment:v51];
      [a2 appendAttributedString:v54];

      v34 = v46;
    }

    else
    {
    }

    v5 = v60;
    v6 = &selRef_initWithTitle_style_target_action_;
    v30 = v57;
  }

  [v30 v6[47]];
}

void sub_10016ED68(uint64_t a1, uint64_t a2)
{
  v5 = sub_10074AB44();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10000C518(&unk_100928A40);
  *&v10 = __chkstk_darwin(v9 - 8).n128_u64[0];
  v12 = &v35 - v11;
  v13 = OBJC_IVAR____TtC22SubscribePageExtension9QuoteView_creditLabel;
  v14 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension9QuoteView_creditLabel];
  if (!v14 || (v15 = [v14 text]) == 0)
  {
    if (!a2)
    {
      return;
    }

    goto LABEL_11;
  }

  v36 = v6;
  v16 = a1;
  v17 = v15;
  v18 = sub_100753094();
  v20 = v19;

  if (!a2)
  {

    v6 = v36;
    v23 = *&v2[v13];
    if (v23)
    {
      goto LABEL_18;
    }

LABEL_12:
    v24 = v2;
    if (qword_1009203C0 != -1)
    {
      swift_once();
    }

    v25 = sub_100750534();
    v26 = sub_10000D0FC(v25, qword_10097DF50);
    v27 = *(v25 - 8);
    (*(v27 + 16))(v12, v26, v25);
    (*(v27 + 56))(v12, 0, 1, v25);
    (*(v6 + 104))(v8, enum case for DirectionalTextAlignment.none(_:), v5);
    v28 = objc_allocWithZone(sub_100745C84());
    v29 = sub_100745C74();
    v2 = v24;
    v30 = *&v24[v13];
    *&v24[v13] = v29;
    v31 = v29;

    v32 = [objc_opt_self() systemGrayColor];
    [v31 setTextColor:v32];

    if (!*&v24[v13])
    {
      __break(1u);
      return;
    }

    [v24 addSubview:?];
    v23 = *&v24[v13];
    if (!v23)
    {

LABEL_22:
      [v2 setNeedsLayout];
      return;
    }

LABEL_18:
    v33 = v23;
    if (a2)
    {
      v34 = sub_100753064();
    }

    else
    {
      v34 = 0;
    }

    [v33 setText:v34];

    goto LABEL_22;
  }

  if (v18 != v16 || v20 != a2)
  {
    v22 = sub_100754754();

    v6 = v36;
    if (v22)
    {
      goto LABEL_25;
    }

LABEL_11:
    v23 = *&v2[v13];
    if (v23)
    {
      goto LABEL_18;
    }

    goto LABEL_12;
  }

LABEL_25:
}

id sub_10016F158()
{
  v1 = v0;
  v2 = sub_100743584();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v0[OBJC_IVAR____TtC22SubscribePageExtension9QuoteView_artworkHasRoundedCorners] = v0[OBJC_IVAR____TtC22SubscribePageExtension9QuoteView_isFullWidthArtwork] ^ 1;
  v7 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension9QuoteView_artworkView];
  (*(v3 + 104))(v6, enum case for CornerStyle.continuous(_:), v2, v4);
  v8 = v7;
  sub_1007433B4();

  (*(v3 + 8))(v6, v2);
  return [v1 setNeedsLayout];
}

char *sub_10016F2A0(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = sub_10074AB44();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v77 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10000C518(&unk_100928A40);
  __chkstk_darwin(v14 - 8);
  v16 = v77 - v15;
  *&v5[OBJC_IVAR____TtC22SubscribePageExtension9QuoteView_trailingQuote] = 0;
  *&v5[OBJC_IVAR____TtC22SubscribePageExtension9QuoteView_creditLabel] = 0;
  v17 = OBJC_IVAR____TtC22SubscribePageExtension9QuoteView_artworkAspectRatio;
  v18 = sub_1007504F4();
  (*(*(v18 - 8) + 56))(&v5[v17], 1, 1, v18);
  v5[OBJC_IVAR____TtC22SubscribePageExtension9QuoteView_isFullWidthArtwork] = 0;
  v5[OBJC_IVAR____TtC22SubscribePageExtension9QuoteView_artworkHasRoundedCorners] = 0;
  v19 = [objc_allocWithZone(UILabel) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v5[OBJC_IVAR____TtC22SubscribePageExtension9QuoteView_leadingQuote] = v19;
  if (qword_1009203B8 != -1)
  {
    swift_once();
  }

  v20 = sub_100750534();
  v21 = sub_10000D0FC(v20, qword_10097DF38);
  v22 = *(v20 - 8);
  (*(v22 + 16))(v16, v21, v20);
  (*(v22 + 56))(v16, 0, 1, v20);
  (*(v11 + 104))(v13, enum case for DirectionalTextAlignment.none(_:), v10);
  v23 = objc_allocWithZone(sub_100745C84());
  *&v5[OBJC_IVAR____TtC22SubscribePageExtension9QuoteView_quoteLabel] = sub_100745C74();
  *&v5[OBJC_IVAR____TtC22SubscribePageExtension9QuoteView_artworkView] = [objc_allocWithZone(sub_1007433C4()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v86._object = 0x800000010076DF60;
  v86._countAndFlagsBits = 0xD000000000000010;
  v87._countAndFlagsBits = 0;
  v87._object = 0xE000000000000000;
  v24 = sub_1007458B4(v86, v87);
  v26 = sub_10017093C(v24, v25);
  if (v26 > 2)
  {
    if (v26 - 3 < 2)
    {
      if (qword_100920390 != -1)
      {
        swift_once();
      }

      v27 = &xmmword_10097DE88;
      goto LABEL_23;
    }

    if (v26 == 5)
    {
      if (qword_100920398 != -1)
      {
        swift_once();
      }

      v27 = &xmmword_10097DEE0;
      goto LABEL_23;
    }

    goto LABEL_17;
  }

  if (!v26)
  {
LABEL_17:
    if (qword_100920378 != -1)
    {
      swift_once();
    }

    v27 = &xmmword_10097DD80;
    goto LABEL_23;
  }

  if (v26 == 1)
  {
    if (qword_100920380 != -1)
    {
      swift_once();
    }

    v27 = &xmmword_10097DDD8;
  }

  else
  {
    if (qword_100920388 != -1)
    {
      swift_once();
    }

    v27 = &xmmword_10097DE30;
  }

LABEL_23:
  v28 = v27[4];
  *&v84[16] = v27[3];
  *&v84[32] = v28;
  v85 = *(v27 + 10);
  v29 = v27[2];
  v83 = v27[1];
  *v84 = v29;
  v82 = *v27;
  v30 = *&v84[40];
  v31 = v85;
  v78 = *&v84[8];
  v79 = *&v84[24];
  v33 = *(&v83 + 1);
  v32 = v29;
  v35 = *(&v82 + 1);
  v34 = v83;
  v36 = v82;
  sub_100170CF0(&v82, v81);
  v37 = &v5[OBJC_IVAR____TtC22SubscribePageExtension9QuoteView_quoteGlyphs];
  *v37 = v36;
  *(v37 + 1) = v35;
  *(v37 + 2) = v34;
  *(v37 + 3) = v33;
  *(v37 + 4) = v32;
  v38 = v78;
  *(v37 + 56) = v79;
  *(v37 + 40) = v38;
  *(v37 + 9) = v30;
  *(v37 + 10) = v31;
  v39 = type metadata accessor for QuoteView();
  v80.receiver = v5;
  v80.super_class = v39;
  v40 = objc_msgSendSuper2(&v80, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v44 = v40;
  [v44 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v45 = OBJC_IVAR____TtC22SubscribePageExtension9QuoteView_artworkView;
  v46 = *&v44[OBJC_IVAR____TtC22SubscribePageExtension9QuoteView_artworkView];
  sub_100743214();

  v47 = *&v44[v45];
  sub_100743244();
  sub_100746E74();

  v48 = *&v44[v45];
  sub_100743234();
  sub_100746E64();

  [*&v44[v45] setHidden:1];
  v49 = OBJC_IVAR____TtC22SubscribePageExtension9QuoteView_leadingQuote;
  [*&v44[OBJC_IVAR____TtC22SubscribePageExtension9QuoteView_leadingQuote] setClipsToBounds:0];
  v50 = *&v44[v49];
  v51 = &v44[OBJC_IVAR____TtC22SubscribePageExtension9QuoteView_quoteGlyphs];
  v77[1] = *&v44[16 * (*&v44[OBJC_IVAR____TtC22SubscribePageExtension9QuoteView_quoteGlyphs + 32] == 1) + OBJC_IVAR____TtC22SubscribePageExtension9QuoteView_quoteGlyphs];
  *&v78 = v49;

  sub_10000C518(&unk_100929CA0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1007A6580;
  *(inited + 32) = NSFontAttributeName;
  v53 = qword_1009203A0;
  *&v79 = v50;
  v54 = NSFontAttributeName;
  if (v53 != -1)
  {
    swift_once();
  }

  v55 = qword_10092A1A0;
  v56 = sub_100016C60(0, &qword_100923AB0);
  *(inited + 40) = v55;
  *(inited + 64) = v56;
  *(inited + 72) = NSForegroundColorAttributeName;
  v57 = qword_1009203B0;
  v58 = v55;
  v59 = NSForegroundColorAttributeName;
  if (v57 != -1)
  {
    swift_once();
  }

  v60 = qword_10092A1B0;
  *(inited + 104) = sub_100016C60(0, &qword_100923500);
  *(inited + 80) = v60;
  v61 = v60;
  sub_100413A18(inited);
  swift_setDeallocating();
  sub_10000C518(&unk_100923510);
  swift_arrayDestroy();
  v62 = objc_allocWithZone(NSAttributedString);
  v63 = sub_100753064();

  type metadata accessor for Key(0);
  sub_100168B0C();
  isa = sub_100752F34().super.isa;

  v65 = [v62 initWithString:v63 attributes:isa];

  v66 = v79;
  [v79 setAttributedText:v65];

  [v44 addSubview:*&v44[v78]];
  v67 = OBJC_IVAR____TtC22SubscribePageExtension9QuoteView_quoteLabel;
  [*&v44[OBJC_IVAR____TtC22SubscribePageExtension9QuoteView_quoteLabel] setTextAlignment:4];
  [v44 addSubview:*&v44[v67]];
  [v44 addSubview:*&v44[v45]];
  v68 = *(v51 + 1);
  v82 = *v51;
  v83 = v68;
  v69 = *(v51 + 2);
  v70 = *(v51 + 3);
  v71 = *(v51 + 4);
  v85 = *(v51 + 10);
  *&v84[16] = v70;
  *&v84[32] = v71;
  *v84 = v69;
  v72 = objc_allocWithZone(type metadata accessor for QuotesLabel());
  sub_100170CF0(&v82, v81);
  v73 = [v72 initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v74 = sub_100170988(&v82);

  sub_100170D28(&v82);
  v75 = *&v44[OBJC_IVAR____TtC22SubscribePageExtension9QuoteView_trailingQuote];
  *&v44[OBJC_IVAR____TtC22SubscribePageExtension9QuoteView_trailingQuote] = v74;

  return v44;
}

void sub_10016FCC4()
{
  v1 = v0;
  v2 = sub_1007504F4();
  v95 = *(v2 - 8);
  v96 = v2;
  __chkstk_darwin(v2);
  v93 = &v93 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10000C518(&unk_1009281D0);
  __chkstk_darwin(v4 - 8);
  v94 = &v93 - v5;
  v6 = sub_100754724();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v93 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for QuoteView();
  v100.receiver = v0;
  v100.super_class = v10;
  objc_msgSendSuper2(&v100, "layoutSubviews");
  v11 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension9QuoteView_leadingQuote];
  [v11 sizeToFit];
  sub_1007477B4();
  MinY = CGRectGetMinY(v101);
  if (qword_1009203C8 != -1)
  {
    swift_once();
  }

  v97 = sub_100750B04();
  sub_10000D0FC(v97, qword_10097DF68);
  v13 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension9QuoteView_quoteLabel];
  sub_1007502D4();
  v14 = [v13 traitCollection];
  sub_100750AD4();
  v16 = v15;

  [v13 firstBaselineFromTop];
  v18 = v17;
  v98 = *(v7 + 8);
  v99 = v6;
  v98(v9, v6);
  v19 = MinY + v16 - v18;
  [v11 frame];
  Width = CGRectGetWidth(v102);
  v21 = &v0[OBJC_IVAR____TtC22SubscribePageExtension9QuoteView_quoteGlyphs];
  v22 = Width + *&v0[OBJC_IVAR____TtC22SubscribePageExtension9QuoteView_quoteGlyphs + 56] + *&v0[OBJC_IVAR____TtC22SubscribePageExtension9QuoteView_quoteGlyphs + 40];
  sub_1007477B4();
  v24 = v23 - v22;
  [v13 sizeThatFits:{v23 - v22, 1.79769313e308}];
  v26 = v25;
  v28 = v27;
  v29 = *(v21 + 4);
  sub_1007477B4();
  if (v29 == 1)
  {
    [v13 setFrame:{CGRectGetMaxX(*&v30) - v26 - v22, v19, v26, v28}];
    sub_1007477B4();
    v34 = CGRectGetMaxX(v103) - *(v21 + 5);
    [v11 frame];
    v35 = v34 - CGRectGetWidth(v104);
  }

  else
  {
    [v13 setFrame:{v22 + CGRectGetMinX(*&v30), v19, v26, v28}];
    sub_1007477B4();
    v35 = v36 + *(v21 + 5);
  }

  [v13 frame];
  v38 = v37 + *(v21 + 6);
  [v11 frame];
  [v11 setFrame:{v35, v38}];
  [v13 frame];
  MaxY = CGRectGetMaxY(v105);
  if (qword_1009203D0 != -1)
  {
    swift_once();
  }

  sub_10000D0FC(v97, qword_10097DF80);
  sub_1007502D4();
  v40 = [v13 traitCollection];
  sub_100750AD4();
  v42 = v41;

  [v13 lastBaselineFromBottom];
  v44 = v43;
  v98(v9, v99);
  v45 = MaxY + v42 - v44;
  v46 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension9QuoteView_creditLabel];
  if (v46)
  {
    v47 = v46;
    [v47 sizeThatFits:{v24, 1.79769313e308}];
    v49 = v48;
    v51 = v50;
    v52 = *(v21 + 4);
    [v13 frame];
    if (v52 == 1)
    {
      MinX = CGRectGetMaxX(*&v53) - v49;
    }

    else
    {
      MinX = CGRectGetMinX(*&v53);
    }

    v58 = v97;
    v60 = v99;
    v59 = &selRef_initWithTitle_style_target_action_;
    v97 = v10;
    if (qword_1009203D8 != -1)
    {
      swift_once();
    }

    sub_10000D0FC(v58, qword_10097DF98);
    sub_1007502D4();
    v61 = [v47 traitCollection];
    sub_100750AD4();
    v63 = v62;

    [v47 firstBaselineFromTop];
    v65 = v64;
    v66 = v98;
    v98(v9, v60);
    [v47 setFrame:{MinX, v45 + v63 - v65, v49, v51}];

    [v47 frame];
    v68 = v67;
    v70 = v69;
    v72 = v71;
    v74 = v73;

    v106.origin.x = v68;
    v106.origin.y = v70;
    v106.size.width = v72;
    v106.size.height = v74;
    CGRectGetMaxY(v106);
    if (qword_1009203E0 != -1)
    {
      swift_once();
    }

    sub_10000D0FC(v58, qword_10097DFB0);
    sub_1007502D4();
    v75 = [v47 traitCollection];
    sub_100750AD4();

    [v47 lastBaselineFromBottom];
    v66(v9, v60);
  }

  else
  {
    v58 = v97;
    v59 = &selRef_initWithTitle_style_target_action_;
  }

  v76 = OBJC_IVAR____TtC22SubscribePageExtension9QuoteView_artworkView;
  if (([*&v1[OBJC_IVAR____TtC22SubscribePageExtension9QuoteView_artworkView] isHidden] & 1) == 0)
  {
    v77 = OBJC_IVAR____TtC22SubscribePageExtension9QuoteView_isFullWidthArtwork;
    if (v1[OBJC_IVAR____TtC22SubscribePageExtension9QuoteView_isFullWidthArtwork] == 1)
    {
      [v1 frame];
    }

    else
    {
      sub_1007477B4();
    }

    CGRectGetMinX(*&v78);
    if (qword_1009203E8 != -1)
    {
      swift_once();
    }

    sub_10000D0FC(v58, qword_10097DFC8);
    v82 = [v1 v59[129]];
    sub_1007502D4();
    sub_100750AD4();

    v98(v9, v99);
    if (v1[v77] == 1)
    {
      [v1 frame];
    }

    else
    {
      sub_1007477B4();
    }

    v88 = v95;
    v87 = v96;
    v89 = v94;
    CGRectGetWidth(*&v83);
    v90 = OBJC_IVAR____TtC22SubscribePageExtension9QuoteView_artworkAspectRatio;
    swift_beginAccess();
    sub_100115488(&v1[v90], v89);
    if ((*(v88 + 48))(v89, 1, v87))
    {
      sub_1000A5080(v89);
      sub_1007477B4();
      CGRectGetHeight(v107);
    }

    else
    {
      v91 = v93;
      (*(v88 + 16))(v93, v89, v87);
      sub_1000A5080(v89);
      sub_1007504C4();
      (*(v88 + 8))(v91, v87);
    }

    v92 = *&v1[v76];
    sub_100743324();
  }
}

id sub_100170610(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t type metadata accessor for QuoteView()
{
  result = qword_10092A230;
  if (!qword_10092A230)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100170750()
{
  sub_100170814();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_100170814()
{
  if (!qword_10092A240)
  {
    sub_1007504F4();
    v0 = sub_100754284();
    if (!v1)
    {
      atomic_store(v0, &qword_10092A240);
    }
  }
}

__n128 sub_10017086C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_100170890(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
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

uint64_t sub_1001708D8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10017093C(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_100861390;
  v6._object = a2;
  v4 = sub_1007546E4(v3, v6);

  if (v4 >= 6)
  {
    return 6;
  }

  else
  {
    return v4;
  }
}

UIImage *sub_100170988(uint64_t a1)
{
  v2 = [objc_allocWithZone(UILabel) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  sub_10000C518(&unk_100929CA0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1007A6580;
  *(inited + 32) = NSFontAttributeName;
  v4 = qword_1009203A8;
  v5 = NSFontAttributeName;
  if (v4 != -1)
  {
    swift_once();
  }

  v6 = qword_10092A1A8;
  v7 = sub_100016C60(0, &qword_100923AB0);
  *(inited + 40) = v6;
  *(inited + 64) = v7;
  *(inited + 72) = NSForegroundColorAttributeName;
  v8 = qword_1009203B0;
  v9 = v6;
  v10 = NSForegroundColorAttributeName;
  if (v8 != -1)
  {
    swift_once();
  }

  v11 = qword_10092A1B0;
  *(inited + 104) = sub_100016C60(0, &qword_100923500);
  *(inited + 80) = v11;
  v12 = v11;
  sub_100413A18(inited);
  swift_setDeallocating();
  sub_10000C518(&unk_100923510);
  swift_arrayDestroy();
  v13 = *(a1 + 32);
  v14 = objc_allocWithZone(NSAttributedString);
  v15 = sub_100753064();
  type metadata accessor for Key(0);
  sub_100168B0C();
  isa = sub_100752F34().super.isa;

  v17 = [v14 initWithString:v15 attributes:isa];

  [v2 setAttributedText:v17];
  v18 = v2;
  [v18 sizeToFit];
  [v18 frame];
  v19 = CGRectGetWidth(v32) + *(a1 + 64);
  if (v13 == 1)
  {
    v20 = 0.0;
  }

  else
  {
    v20 = *(a1 + 64);
  }

  [v18 frame];
  Height = CGRectGetHeight(v33);
  v22 = [objc_opt_self() mainScreen];
  [v22 scale];
  v24 = v23;

  v31.width = v19;
  v31.height = Height;
  UIGraphicsBeginImageContextWithOptions(v31, 0, v24);
  [v18 frame];
  v26 = v25;
  v28 = v27;

  [v18 drawTextInRect:{v20, 0.0, v26, v28}];
  v29 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v29;
}

uint64_t sub_100170D58(uint64_t a1, int a2, void *a3, uint64_t a4, double a5, double a6, double a7)
{
  v8 = v7;
  v15 = sub_100751344();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v71 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = sub_100751374();
  v73 = *(v74 - 8);
  *&v19 = __chkstk_darwin(v74).n128_u64[0];
  v72 = &v71 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = [v8 contentView];
  [a3 pageMarginInsets];
  v23 = v22;
  [a3 pageMarginInsets];
  [v21 setLayoutMargins:{a5, v23, a7}];

  v24 = *&v8[OBJC_IVAR____TtC22SubscribePageExtension24BannerCollectionViewCell_messageTextView];
  v75 = a1;
  sub_10074ED74();
  v25 = sub_100743E94();
  v26 = sub_100743EA4();
  v77 = a4;
  v27 = v24;
  v28 = sub_1001F3AE8(v26, sub_100171C34);

  sub_100151994(v25, v28);

  v76 = a2;
  if (a2)
  {
    (*(v16 + 104))(v18, enum case for Separator.Position.bottom(_:), v15);
    v81[3] = sub_1007507D4();
    v81[4] = &protocol witness table for ZeroDimension;
    sub_10000D134(v81);
    sub_1007507C4();
    v29 = v72;
    sub_100751354();
    v30 = [objc_allocWithZone(type metadata accessor for SeparatorView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
    v31 = OBJC_IVAR____TtC22SubscribePageExtension13SeparatorView_separator;
    swift_beginAccess();
    v32 = *(v73 + 40);
    v33 = v30;
    v32(&v30[v31], v29, v74);
    swift_endAccess();

    v34 = OBJC_IVAR____TtC22SubscribePageExtension24BannerCollectionViewCell_bottomSeparatorView;
    v35 = *&v8[OBJC_IVAR____TtC22SubscribePageExtension24BannerCollectionViewCell_bottomSeparatorView];
    if (v35)
    {
      [v35 removeFromSuperview];
      v36 = *&v8[v34];
    }

    else
    {
      v36 = 0;
    }

    *&v8[v34] = v33;
    v40 = v33;

    v41 = [v8 contentView];
    [v41 addSubview:v40];

    [*&v8[OBJC_IVAR____TtC22SubscribePageExtension24BannerCollectionViewCell_roundedBackgroundView] setHidden:1];
    sub_10000D198();
    v42 = sub_100753DD4();
    v43 = type metadata accessor for DynamicTypeLinkedTextView();
    v80.receiver = v27;
    v80.super_class = v43;
    v44 = objc_msgSendSuper2(&v80, "textColor");
    v79.receiver = v27;
    v79.super_class = v43;
    objc_msgSendSuper2(&v79, "setTextColor:", v42);
    v78.receiver = v27;
    v78.super_class = v43;
    v45 = objc_msgSendSuper2(&v78, "textColor");
    if (v45)
    {
      goto LABEL_8;
    }

LABEL_14:
    if (!v44)
    {
      goto LABEL_17;
    }

    goto LABEL_15;
  }

  v37 = OBJC_IVAR____TtC22SubscribePageExtension24BannerCollectionViewCell_bottomSeparatorView;
  v38 = *&v8[OBJC_IVAR____TtC22SubscribePageExtension24BannerCollectionViewCell_bottomSeparatorView];
  if (v38)
  {
    [v38 removeFromSuperview];
    v39 = *&v8[v37];
  }

  else
  {
    v39 = 0;
  }

  *&v8[v37] = 0;

  [*&v8[OBJC_IVAR____TtC22SubscribePageExtension24BannerCollectionViewCell_roundedBackgroundView] setHidden:0];
  sub_10000D198();
  v42 = sub_100753DF4();
  v49 = type metadata accessor for DynamicTypeLinkedTextView();
  v84.receiver = v27;
  v84.super_class = v49;
  v44 = objc_msgSendSuper2(&v84, "textColor");
  v83.receiver = v27;
  v83.super_class = v49;
  objc_msgSendSuper2(&v83, "setTextColor:", v42);
  v82.receiver = v27;
  v82.super_class = v49;
  v45 = objc_msgSendSuper2(&v82, "textColor");
  if (!v45)
  {
    goto LABEL_14;
  }

LABEL_8:
  v46 = v45;
  if (!v44)
  {

    goto LABEL_15;
  }

  v47 = v44;
  v48 = sub_100753FC4();

  if ((v48 & 1) == 0)
  {
LABEL_15:
    sub_100150D10();
    goto LABEL_16;
  }

  v44 = v47;
LABEL_16:

  v42 = v44;
LABEL_17:

  sub_10000D198();
  v50 = sub_100753EF4();
  [v27 setTintColor:v50];

  v51 = sub_10074ED64();
  sub_1000EB9D8(v51);

  v52 = sub_10074ED84();
  sub_1000E9D5C(v52);
  v53 = sub_10074ED94();
  v54 = *&v8[OBJC_IVAR____TtC22SubscribePageExtension24BannerCollectionViewCell_leadingArtworkSymbolConfiguration];
  *&v8[OBJC_IVAR____TtC22SubscribePageExtension24BannerCollectionViewCell_leadingArtworkSymbolConfiguration] = v53;
  v55 = v53;

  sub_1000E9FEC();
  v56 = *(sub_10074ED54() + 16);

  v57 = OBJC_IVAR____TtC22SubscribePageExtension24BannerCollectionViewCell_buttonRow;
  v58 = *&v8[OBJC_IVAR____TtC22SubscribePageExtension24BannerCollectionViewCell_buttonRow];
  if (v56)
  {
    v59 = v77;
    if (v58)
    {
      v60 = *&v8[OBJC_IVAR____TtC22SubscribePageExtension24BannerCollectionViewCell_buttonRow];
    }

    else
    {
      type metadata accessor for BannerButtonRow();
      v60 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    }

    v62 = v58;
    v63 = sub_10074ED54();
    sub_10024FC4C(v63, v59);

    v64 = *&v8[v57];
    if (v64)
    {
      type metadata accessor for BannerButtonRow();
      v65 = v60;
      v58 = v64;
      v66 = sub_100753FC4();

      if ((v66 & 1) == 0)
      {
        [v58 removeFromSuperview];
      }
    }

    else
    {
      v67 = v60;
      v58 = 0;
    }

    v68 = *&v8[v57];
    *&v8[v57] = v60;
    v69 = v60;

    sub_1000E9DE4(v64);
  }

  else
  {
    if (v58)
    {
      [v58 removeFromSuperview];
      v61 = *&v8[v57];
    }

    else
    {
      v61 = 0;
    }

    *&v8[v57] = 0;

    sub_1000E9DE4(v58);
  }

  v8[OBJC_IVAR____TtC22SubscribePageExtension24BannerCollectionViewCell_shouldUseArcadeMetrics] = v76 & 1;
  [v8 setNeedsLayout];
  sub_1007442C4();
  sub_100752764();
  sub_100752D34();
  sub_10017154C();
  [v8 setNeedsLayout];
}