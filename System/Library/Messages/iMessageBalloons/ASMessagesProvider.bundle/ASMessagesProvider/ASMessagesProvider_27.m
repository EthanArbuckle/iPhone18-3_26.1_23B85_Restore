char *sub_3066F8(int64_t *a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider28TodayCardProtectionLayerView_gradientMaskView);
  v3 = a1[2];
  if (v3)
  {
    sub_143C5C(0, v3, 0);
    v5 = _swiftEmptyArrayStorage;
    v6 = (a1 + 4);
    v7 = _swiftEmptyArrayStorage[2];
    v8 = a1 + 5;
    v9 = v3;
    do
    {
      v10 = *v8;
      v17 = v5;
      v11 = v5[3];
      if (v7 >= v11 >> 1)
      {
        sub_143C5C((v11 > 1), v7 + 1, 1);
        v5 = v17;
      }

      v5[2] = v7 + 1;
      v5[v7 + 4] = v10;
      v8 += 2;
      ++v7;
      --v9;
    }

    while (v9);
    sub_4AC060(v5);
    sub_76A7C0();
    v12 = objc_opt_self();
    do
    {
      v13 = *v6;
      v6 += 2;
      v14 = [v12 blackColor];
      v15 = [v14 colorWithAlphaComponent:v13];

      sub_76A7A0();
      sub_76A7D0();
      sub_76A7E0();
      sub_76A7B0();
      --v3;
    }

    while (v3);
  }

  else
  {
    sub_4AC060(_swiftEmptyArrayStorage);
  }

  *(v2 + OBJC_IVAR____TtC18ASMessagesProvider12GradientView_colors) = _swiftEmptyArrayStorage;

  return sub_4AC204();
}

id sub_3068C8(uint64_t a1, uint64_t a2, uint64_t a3)
{

  sub_3069CC(a2, a3);
  v7 = OBJC_IVAR____TtC18ASMessagesProvider28TodayCardProtectionLayerView_blurUserInterfaceStyle;
  *&v3[OBJC_IVAR____TtC18ASMessagesProvider28TodayCardProtectionLayerView_blurUserInterfaceStyle] = a1;
  v8 = *&v3[OBJC_IVAR____TtC18ASMessagesProvider28TodayCardProtectionLayerView_effectsView];

  sub_BE70(0, &qword_945800);
  isa = sub_769450().super.isa;

  [v8 setBackgroundEffects:isa];

  [v8 setOverrideUserInterfaceStyle:*&v3[v7]];

  return [v3 setNeedsLayout];
}

void sub_3069CC(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR____TtC18ASMessagesProvider28TodayCardProtectionLayerView_style + 8);
  *(v2 + OBJC_IVAR____TtC18ASMessagesProvider28TodayCardProtectionLayerView_style) = a1;
  *v3 = a2;

  v4 = *(v2 + OBJC_IVAR____TtC18ASMessagesProvider28TodayCardProtectionLayerView_effectsView);

  sub_BE70(0, &qword_945800);
  isa = sub_769450().super.isa;

  [v4 setBackgroundEffects:isa];
}

id sub_306AC0()
{
  result = [objc_opt_self() colorEffectSaturate:1.5];
  qword_94F240 = result;
  return result;
}

void sub_306B40(double a1, uint64_t a2, SEL *a3, uint64_t a4, void *a5)
{
  sub_BE70(0, &qword_94E5C0);
  v9 = [objc_opt_self() *a3];
  v10 = [swift_getObjCClassFromMetadata() effectCompositingColor:v9 withMode:a4 alpha:a1];

  if (v10)
  {
    *a5 = v10;
  }

  else
  {
    __break(1u);
  }
}

id sub_306C24(double a1, uint64_t a2, void *a3)
{
  result = [objc_opt_self() _effectWithBlurRadius:a1 scale:0.125];
  if (result)
  {
    *a3 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_306CA4()
{
  sub_BD88(&unk_93F5C0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_78D690;
  if (qword_93C998 != -1)
  {
    swift_once();
  }

  v1 = qword_94F238;
  *(v0 + 32) = qword_94F238;
  v2 = qword_93C9A0;
  v3 = v1;
  if (v2 != -1)
  {
    swift_once();
  }

  v4 = qword_94F240;
  *(v0 + 40) = qword_94F240;
  v5 = qword_93C9A8;
  v6 = v4;
  if (v5 == -1)
  {
    v7 = v6;
  }

  else
  {
    swift_once();
    v7 = qword_94F240;
  }

  v8 = qword_94F248;
  *(v0 + 48) = qword_94F248;
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_78D690;
  v10 = qword_94F238;
  *(v9 + 32) = qword_94F238;
  *(v9 + 40) = v7;
  v11 = qword_93C9B0;
  v12 = v8;
  v13 = v10;
  v14 = v7;
  if (v11 != -1)
  {
    swift_once();
  }

  v15 = qword_94F250;
  *(v9 + 48) = qword_94F250;
  *&xmmword_99C930 = v0;
  *(&xmmword_99C930 + 1) = v9;

  return v15;
}

uint64_t sub_306E5C()
{
  sub_BD88(&unk_93F5C0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_78D690;
  if (qword_93C998 != -1)
  {
    swift_once();
  }

  v1 = qword_94F238;
  *(v0 + 32) = qword_94F238;
  v2 = qword_93C9A0;
  v3 = v1;
  if (v2 != -1)
  {
    swift_once();
  }

  v4 = qword_94F240;
  *(v0 + 40) = qword_94F240;
  v5 = qword_93C9B8;
  v6 = v4;
  if (v5 != -1)
  {
    swift_once();
  }

  v7 = qword_94F258;
  *(v0 + 48) = qword_94F258;
  v8 = qword_93C9D0;
  v9 = v7;
  if (v8 != -1)
  {
    swift_once();
  }

  qword_99C940 = v0;
  *algn_99C948 = *(&xmmword_99C930 + 1);
}

id sub_306FBC()
{
  sub_BD88(&unk_93F5C0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_77B6C0;
  if (qword_93C998 != -1)
  {
    swift_once();
  }

  v1 = qword_94F238;
  *(v0 + 32) = qword_94F238;
  v2 = qword_93C9A8;
  v3 = v1;
  if (v2 == -1)
  {
    v4 = v3;
  }

  else
  {
    swift_once();
    v4 = qword_94F238;
  }

  v5 = qword_94F248;
  *(v0 + 40) = qword_94F248;
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_77B6C0;
  *(v6 + 32) = v4;
  v7 = qword_93C9B0;
  v8 = v5;
  v9 = v4;
  if (v7 != -1)
  {
    swift_once();
  }

  v10 = qword_94F250;
  *(v6 + 40) = qword_94F250;
  qword_99C950 = v0;
  *algn_99C958 = v6;

  return v10;
}

char *sub_30712C(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v4 = OBJC_IVAR____TtC18ASMessagesProvider28TodayCardProtectionLayerView_effectsView;
  *&v1[v4] = [objc_allocWithZone(UIVisualEffectView) init];
  v5 = OBJC_IVAR____TtC18ASMessagesProvider28TodayCardProtectionLayerView_gradientMaskView;
  *&v1[v5] = [objc_allocWithZone(type metadata accessor for GradientView()) init];
  *&v1[OBJC_IVAR____TtC18ASMessagesProvider28TodayCardProtectionLayerView_gradientType] = kCAGradientLayerAxial;
  *&v1[OBJC_IVAR____TtC18ASMessagesProvider28TodayCardProtectionLayerView_gradientStartY] = 0;
  *&v1[OBJC_IVAR____TtC18ASMessagesProvider28TodayCardProtectionLayerView_gradientEndY] = 0x3FF0000000000000;
  *&v1[OBJC_IVAR____TtC18ASMessagesProvider28TodayCardProtectionLayerView_rotationAngle] = 0;
  *&v1[OBJC_IVAR____TtC18ASMessagesProvider28TodayCardProtectionLayerView_blurUserInterfaceStyle] = 0;
  v6 = &v1[OBJC_IVAR____TtC18ASMessagesProvider28TodayCardProtectionLayerView_style];
  v7 = qword_93C9D0;
  v8 = kCAGradientLayerAxial;
  if (v7 != -1)
  {
    swift_once();
  }

  v9 = *(&xmmword_99C930 + 1);
  *v6 = xmmword_99C930;
  v6[1] = v9;
  v1[OBJC_IVAR____TtC18ASMessagesProvider28TodayCardProtectionLayerView_includeTopGradientFade] = 1;
  v42.receiver = v1;
  v42.super_class = ObjectType;

  v10 = objc_msgSendSuper2(&v42, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v14 = v10;
  [v14 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  [v14 setClipsToBounds:0];
  v15 = [v14 layer];
  [v15 setAllowsGroupBlending:1];

  [v14 setUserInteractionEnabled:0];
  v16 = OBJC_IVAR____TtC18ASMessagesProvider28TodayCardProtectionLayerView_effectsView;
  [*&v14[OBJC_IVAR____TtC18ASMessagesProvider28TodayCardProtectionLayerView_effectsView] setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  [*&v14[v16] setClipsToBounds:0];
  v17 = [*&v14[v16] layer];
  [v17 setAllowsGroupBlending:0];

  [*&v14[v16] setUserInteractionEnabled:0];
  [v14 addSubview:*&v14[v16]];
  if (v14[OBJC_IVAR____TtC18ASMessagesProvider28TodayCardProtectionLayerView_includeTopGradientFade] == 1)
  {
    [v14 insertSubview:*&v14[OBJC_IVAR____TtC18ASMessagesProvider28TodayCardProtectionLayerView_gradientMaskView] aboveSubview:*&v14[v16]];
  }

  else
  {
    [*&v14[OBJC_IVAR____TtC18ASMessagesProvider28TodayCardProtectionLayerView_gradientMaskView] removeFromSuperview];
  }

  v18 = OBJC_IVAR____TtC18ASMessagesProvider28TodayCardProtectionLayerView_gradientMaskView;
  v19 = *&v14[OBJC_IVAR____TtC18ASMessagesProvider28TodayCardProtectionLayerView_gradientMaskView];
  v20 = *(a1 + 16);
  if (v20)
  {
    v21 = v19;
    sub_143C5C(0, v20, 0);
    v22 = _swiftEmptyArrayStorage;
    v23 = _swiftEmptyArrayStorage[2];
    v24 = (a1 + 40);
    v25 = v20;
    do
    {
      v26 = *v24;
      v41 = v22;
      v27 = v22[3];
      if (v23 >= v27 >> 1)
      {
        sub_143C5C((v27 > 1), v23 + 1, 1);
        v22 = v41;
      }

      v22[2] = v23 + 1;
      v22[v23 + 4] = v26;
      v24 += 2;
      ++v23;
      --v25;
    }

    while (v25);
  }

  else
  {
    v28 = v19;
    v22 = _swiftEmptyArrayStorage;
  }

  sub_4AC060(v22);

  v29 = *&v14[v18];
  if (v20)
  {
    v40 = *&v14[v18];
    v30 = v29;
    sub_76A7C0();
    v31 = objc_opt_self();
    v32 = 32;
    do
    {
      v33 = *(a1 + v32);
      v34 = [v31 blackColor];
      v35 = [v34 colorWithAlphaComponent:v33];

      sub_76A7A0();
      sub_76A7D0();
      sub_76A7E0();
      sub_76A7B0();
      v32 += 16;
      --v20;
    }

    while (v20);

    v29 = v40;
  }

  else
  {
    v36 = v29;
  }

  *&v29[OBJC_IVAR____TtC18ASMessagesProvider12GradientView_colors] = _swiftEmptyArrayStorage;

  sub_4AC204();

  v37 = [*&v14[v18] layer];
  objc_opt_self();
  [swift_dynamicCastObjCClassUnconditional() setMasksToBounds:0];

  v38 = [*&v14[v18] layer];
  objc_opt_self();
  [swift_dynamicCastObjCClassUnconditional() setCompositingFilter:kCAFilterDestOut];

  return v14;
}

void sub_3076A4()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider28TodayCardProtectionLayerView_gradientMaskView);
  v3 = [v2 layer];
  objc_opt_self();
  v4 = swift_dynamicCastObjCClassUnconditional();
  v5 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider28TodayCardProtectionLayerView_gradientType);
  [v4 setType:v5];

  v6 = sub_769240();
  v8 = v7;
  if (v6 == sub_769240() && v8 == v9)
  {

    v12 = &off_87EF50;
    v13 = 5;
  }

  else
  {
    v11 = sub_76A950();

    if (v11)
    {
      v12 = &off_87EF50;
    }

    else
    {
      v12 = &off_87EAC0;
    }

    v13 = v12[2];
    if (!v13)
    {

      sub_4AC060(_swiftEmptyArrayStorage);

      goto LABEL_18;
    }
  }

  v25 = v1;

  sub_143C5C(0, v13, 0);
  v14 = _swiftEmptyArrayStorage;
  v15 = _swiftEmptyArrayStorage[2];
  v16 = 5;
  v17 = v13;
  do
  {
    v18 = v12[v16];
    v26 = v14;
    v19 = v14[3];
    if (v15 >= v19 >> 1)
    {
      sub_143C5C((v19 > 1), v15 + 1, 1);
      v14 = v26;
    }

    v14[2] = v15 + 1;
    v14[v15 + 4] = v18;
    v16 += 2;
    ++v15;
    --v17;
  }

  while (v17);
  sub_4AC060(v14);
  sub_76A7C0();
  v20 = objc_opt_self();
  v21 = 4;
  do
  {
    v22 = *&v12[v21];
    v23 = [v20 blackColor];
    v24 = [v23 colorWithAlphaComponent:v22];

    sub_76A7A0();
    sub_76A7D0();
    sub_76A7E0();
    sub_76A7B0();
    v21 += 2;
    --v13;
  }

  while (v13);

LABEL_18:
  *&v2[OBJC_IVAR____TtC18ASMessagesProvider12GradientView_colors] = _swiftEmptyArrayStorage;

  sub_4AC204();

  sub_3079B8();
}

void sub_3079B8()
{
  v1 = v0;
  v2 = sub_769240();
  v4 = v3;
  if (v2 == sub_769240() && v4 == v5)
  {
  }

  else
  {
    v7 = sub_76A950();

    if ((v7 & 1) == 0)
    {
      v8 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider28TodayCardProtectionLayerView_rotationAngle];
      v9 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider28TodayCardProtectionLayerView_gradientStartY];
      v10 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider28TodayCardProtectionLayerView_gradientEndY];
      v11 = 0.5;
      if (v8 == 0.0)
      {
        v12 = 0.5;
      }

      else
      {
        v21 = (v9 + v10) * 0.5;
        CGAffineTransformMakeRotation(&v28, *&v0[OBJC_IVAR____TtC18ASMessagesProvider28TodayCardProtectionLayerView_rotationAngle]);
        v30.x = 0.0;
        v30.y = v9 - v21;
        v22 = CGPointApplyAffineTransform(v30, &v28);
        v11 = v22.x + 0.5;
        v9 = v21 + v22.y;
        CGAffineTransformMakeRotation(&v28, v8);
        v31.x = 0.0;
        v31.y = v10 - v21;
        v23 = CGPointApplyAffineTransform(v31, &v28);
        v12 = v23.x + 0.5;
        v10 = v21 + v23.y;
      }

      v24 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider28TodayCardProtectionLayerView_gradientMaskView];
      v25 = [v24 layer];
      objc_opt_self();
      [swift_dynamicCastObjCClassUnconditional() setStartPoint:{v11, v9}];

      v26 = [v24 layer];
      objc_opt_self();
      [swift_dynamicCastObjCClassUnconditional() setEndPoint:{v12, v10}];

      return;
    }
  }

  v13 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider28TodayCardProtectionLayerView_gradientMaskView];
  v14 = [v0 traitCollection];
  v15 = sub_7699F0();

  if (v15)
  {
    v16 = 0.7;
  }

  else
  {
    v16 = 0.3;
  }

  v17 = [v13 layer];
  objc_opt_self();
  [swift_dynamicCastObjCClassUnconditional() setStartPoint:{v16, 1.0}];

  v18 = [v1 traitCollection];
  v19 = sub_7699F0();

  if (v19)
  {
    v20 = 0.0;
  }

  else
  {
    v20 = 1.0;
  }

  v27 = [v13 layer];
  objc_opt_self();
  [swift_dynamicCastObjCClassUnconditional() setEndPoint:{v20, 0.0}];
}

id sub_307D50()
{
  v4.receiver = v0;
  v4.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v4, "layoutSubviews");
  v1 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider28TodayCardProtectionLayerView_effectsView];
  [v0 bounds];
  [v1 setFrame:?];
  v2 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider28TodayCardProtectionLayerView_gradientMaskView];
  result = [v2 superview];
  if (result)
  {

    [v0 bounds];
    return [v2 setFrame:?];
  }

  return result;
}

id sub_307E98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = sub_765B10();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = v20 - v12;

  sub_3069CC(a2, a3);
  sub_765B30();
  (*(v8 + 104))(v10, enum case for TodayCard.Style.white(_:), v7);
  sub_5FC0C();
  sub_769430();
  sub_769430();
  if (v20[2] == v20[0] && v20[3] == v20[1])
  {
    v14 = 1;
  }

  else if (sub_76A950())
  {
    v14 = 1;
  }

  else
  {
    v14 = 2;
  }

  v15 = *(v8 + 8);
  v15(v10, v7);
  v15(v13, v7);

  v16 = OBJC_IVAR____TtC18ASMessagesProvider28TodayCardProtectionLayerView_blurUserInterfaceStyle;
  *&v4[OBJC_IVAR____TtC18ASMessagesProvider28TodayCardProtectionLayerView_blurUserInterfaceStyle] = v14;
  v17 = *&v4[OBJC_IVAR____TtC18ASMessagesProvider28TodayCardProtectionLayerView_effectsView];

  sub_BE70(0, &qword_945800);
  isa = sub_769450().super.isa;

  [v17 setBackgroundEffects:isa];

  [v17 setOverrideUserInterfaceStyle:*&v4[v16]];
  return [v4 setNeedsLayout];
}

id sub_308200(uint64_t a1)
{
  sub_BE70(0, &qword_94E5C0);
  result = [swift_getObjCClassFromMetadata() effectCompositingColor:a1 withMode:0 alpha:0.4];
  if (result)
  {
    v3 = result;
    sub_BD88(&unk_93F5C0);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_78D690;
    if (qword_93C9C0 != -1)
    {
      swift_once();
    }

    v5 = qword_94F260;
    *(v4 + 32) = qword_94F260;
    *(v4 + 40) = v3;
    v6 = qword_93C9C8;
    v7 = v5;
    v8 = v3;
    if (v6 != -1)
    {
      swift_once();
    }

    v9 = qword_94F268;
    *(v4 + 48) = qword_94F268;
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_78D690;
    *(v10 + 32) = v7;
    *(v10 + 40) = v8;
    *(v10 + 48) = v9;
    v11 = v9;
    return v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_30837C()
{
  v1 = OBJC_IVAR____TtC18ASMessagesProvider28TodayCardProtectionLayerView_effectsView;
  *(v0 + v1) = [objc_allocWithZone(UIVisualEffectView) init];
  v2 = OBJC_IVAR____TtC18ASMessagesProvider28TodayCardProtectionLayerView_gradientMaskView;
  *(v0 + v2) = [objc_allocWithZone(type metadata accessor for GradientView()) init];
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider28TodayCardProtectionLayerView_gradientType) = kCAGradientLayerAxial;
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider28TodayCardProtectionLayerView_gradientStartY) = 0;
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider28TodayCardProtectionLayerView_gradientEndY) = 0x3FF0000000000000;
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider28TodayCardProtectionLayerView_rotationAngle) = 0;
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider28TodayCardProtectionLayerView_blurUserInterfaceStyle) = 0;
  v3 = OBJC_IVAR____TtC18ASMessagesProvider28TodayCardProtectionLayerView_style;
  v4 = qword_93C9D0;
  v5 = kCAGradientLayerAxial;
  if (v4 != -1)
  {
    swift_once();
  }

  *(v0 + v3) = xmmword_99C930;
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider28TodayCardProtectionLayerView_includeTopGradientFade) = 1;
  sub_76A840();
  __break(1u);
}

double sub_3084C4(int a1, int a2, int a3, int a4, int a5, id a6, double a7)
{
  v9 = [a6 traitCollection];
  if (sub_7699E0())
  {
    sub_769A00();
  }

  v10 = sub_2FCFA8(a6, a7);

  return v10;
}

uint64_t sub_3085F8(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_308640(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = *&v3[OBJC_IVAR____TtC18ASMessagesProvider34ProductTapToRateCollectionViewCell_separatorView];
  v8 = [v3 traitCollection];
  v9 = sub_7699E0();

  if (v9)
  {
    v10 = [v4 traitCollection];
    v11 = sub_769A00();

    v12 = v11 ^ 1;
  }

  else
  {
    v12 = 0;
  }

  [v7 setHidden:v12 & 1];
  sub_2FC8C8(a1, 0, a3);

  return [v4 setNeedsLayout];
}

char *sub_30873C(double a1, double a2, double a3, double a4)
{
  v9 = sub_768C60();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR____TtC18ASMessagesProvider31ProductReviewCollectionViewCell_itemLayoutContext;
  v14 = sub_75C840();
  (*(*(v14 - 8) + 56))(&v4[v13], 1, 1, v14);
  v15 = OBJC_IVAR____TtC18ASMessagesProvider31ProductReviewCollectionViewCell_reviewsView;
  type metadata accessor for ProductReviewView();
  *&v4[v15] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v16 = type metadata accessor for ProductReviewCollectionViewCell();
  v26.receiver = v4;
  v26.super_class = v16;
  v17 = objc_msgSendSuper2(&v26, "initWithFrame:", a1, a2, a3, a4);
  v18 = objc_allocWithZone(UIView);
  v19 = v17;
  v20 = [v18 initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v21 = [v20 layer];
  [v21 setCornerRadius:20.0];

  [v19 setBackgroundView:v20];
  v22 = [v19 contentView];

  [v22 addSubview:*&v19[OBJC_IVAR____TtC18ASMessagesProvider31ProductReviewCollectionViewCell_reviewsView]];
  memset(v25, 0, sizeof(v25));
  memset(v24, 0, sizeof(v24));
  sub_768BD0();
  sub_10A2C(v24, &unk_93FBD0);
  sub_10A2C(v25, &unk_93FBD0);
  sub_769E70();

  (*(v10 + 8))(v12, v9);
  return v19;
}

uint64_t sub_308AF0()
{
  v9.receiver = v0;
  v9.super_class = type metadata accessor for ProductReviewCollectionViewCell();
  objc_msgSendSuper2(&v9, "prepareForReuse");
  v1 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider31ProductReviewCollectionViewCell_reviewsView];
  v2 = (v1 + OBJC_IVAR____TtC18ASMessagesProvider17ProductReviewView_moreReviewTapHandler);
  v3 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider17ProductReviewView_moreReviewTapHandler);
  *v2 = 0;
  v2[1] = 0;
  sub_F704(v3);
  v4 = (v1 + OBJC_IVAR____TtC18ASMessagesProvider17ProductReviewView_moreResponseTapHandler);
  v5 = *v4;
  *v4 = 0;
  v4[1] = 0;
  sub_F704(v5);
  v6 = *v2;
  *v2 = 0;
  v2[1] = 0;
  sub_F704(v6);
  v7 = *v4;
  *v4 = 0;
  v4[1] = 0;
  return sub_F704(v7);
}

id sub_308BD4()
{
  v6.receiver = v0;
  v6.super_class = type metadata accessor for ProductReviewCollectionViewCell();
  objc_msgSendSuper2(&v6, "layoutSubviews");
  v1 = [v0 contentView];
  [v0 bounds];
  [v1 setFrame:?];

  v2 = [v0 backgroundView];
  if (v2)
  {
    v3 = v2;
    [v0 bounds];
    [v3 setFrame:?];
  }

  v4 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider31ProductReviewCollectionViewCell_reviewsView];
  [v0 bounds];
  return [v4 setFrame:?];
}

uint64_t sub_308D1C(char *a1, uint64_t a2, uint64_t a3, void *a4)
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
    memset(v11, 0, sizeof(v11));
    v7 = a1;
  }

  v8 = *(*&a1[OBJC_IVAR____TtC18ASMessagesProvider31ProductReviewCollectionViewCell_reviewsView] + *a4);
  if (v8)
  {

    v8(v9);
    sub_F704(v8);
  }

  return sub_10A2C(v11, &unk_93FBD0);
}

id sub_308EDC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ProductReviewCollectionViewCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for ProductReviewCollectionViewCell()
{
  result = qword_94F358;
  if (!qword_94F358)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_308FC4()
{
  v1 = [v0 contentView];

  return v1;
}

double sub_30904C()
{
  v0 = sub_BD88(&qword_943FD0);
  v39 = *(v0 - 8);
  v40 = v0;
  __chkstk_darwin(v0);
  v35 = &v30 - v1;
  v36 = sub_7656C0();
  v34 = *(v36 - 8);
  __chkstk_darwin(v36);
  v3 = &v30 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_75FA00();
  v37 = *(v4 - 8);
  v38 = v4;
  __chkstk_darwin(v4);
  v32 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_BD88(&qword_946810);
  v30 = *(v6 - 8);
  v31 = v6;
  __chkstk_darwin(v6);
  v33 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v30 - v9;
  v11 = sub_BD88(&unk_94F1F0);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v30 - v13;
  v15 = sub_BD88(&unk_959540);
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v30 - v17;
  sub_75C7E0();
  sub_768760();
  v19 = v18;
  v20 = v30;
  (*(v16 + 8))(v19, v15);
  swift_getKeyPath();
  sub_75C7B0();

  swift_getKeyPath();
  sub_768750();
  v21 = v31;

  v22 = v11;
  v23 = v32;
  (*(v12 + 8))(v14, v22);

  sub_75C800();
  sub_75C740();
  swift_getKeyPath();
  sub_75C7B0();
  v24 = v35;

  sub_765630();
  (*(v34 + 8))(v3, v36);
  sub_527DE4();
  (*(v20 + 16))(v33, v10, v21);
  sub_768FA0();
  sub_769060();
  if (qword_93CD48 != -1)
  {
    swift_once();
  }

  v25 = sub_75D510();
  sub_BE38(v25, qword_99D278);
  sub_75D530();
  sub_30967C(&qword_94F368, &type metadata accessor for FlowcaseItemLayout);
  sub_766ED0();
  if (qword_93CD50 != -1)
  {
    swift_once();
  }

  v26 = sub_767510();
  sub_BE38(v26, qword_99D290);
  sub_769DD0();
  v28 = v27;
  swift_unknownObjectRelease();
  (*(v39 + 8))(v24, v40);
  (*(v37 + 8))(v23, v38);
  (*(v20 + 8))(v10, v21);
  sub_BEB8(v41);
  return v28;
}

uint64_t sub_30967C(unint64_t *a1, void (*a2)(uint64_t))
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

double sub_3096C4()
{
  v0 = sub_7656C0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_75DA20();
  sub_765630();
  v4 = *(v1 + 8);
  v4(v3, v0);
  sub_75DA20();
  sub_765580();
  v6 = v5;
  v4(v3, v0);
  v7 = sub_75DA30();
  v8 = type metadata accessor for SnapshotPageTraitEnvironment();
  v9 = objc_allocWithZone(v8);
  v10 = &v9[OBJC_IVAR____TtC18ASMessagesProvider28SnapshotPageTraitEnvironment_pageContainerSize];
  *v10 = v6;
  *(v10 + 1) = 0x7FEFFFFFFFFFFFFFLL;
  *&v9[OBJC_IVAR____TtC18ASMessagesProvider28SnapshotPageTraitEnvironment_traitCollection] = v7;
  v17.receiver = v9;
  v17.super_class = v8;
  v11 = objc_msgSendSuper2(&v17, "init");
  if (qword_93CD48 != -1)
  {
    swift_once();
  }

  v12 = sub_75D510();
  sub_BE38(v12, qword_99D278);
  sub_75D530();
  sub_30967C(&qword_94F368, &type metadata accessor for FlowcaseItemLayout);
  sub_766ED0();
  if (qword_93CD50 != -1)
  {
    swift_once();
  }

  v13 = sub_767510();
  sub_BE38(v13, qword_99D290);
  sub_769DD0();
  v15 = v14;

  return v15;
}

unint64_t sub_30995C()
{
  result = qword_941658;
  if (!qword_941658)
  {
    type metadata accessor for EditorialStoryCardCollectionViewCell();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_941658);
  }

  return result;
}

double sub_3099B4()
{
  v0 = sub_766690();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v19 - v5;
  v7 = sub_7656C0();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_75DAB0();
  v11 = *(v20 - 8);
  __chkstk_darwin(v20);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_75C720();
  sub_75DA20();
  sub_765630();
  (*(v8 + 8))(v10, v7);
  sub_75DA40();
  if (JUScreenClassGetMain() == 1)
  {
    if (qword_93DFE8 != -1)
    {
      swift_once();
    }

    v14 = qword_960220;
  }

  else
  {
    if (qword_93DFE0 != -1)
    {
      swift_once();
    }

    v14 = qword_960208;
  }

  v15 = sub_BE38(v0, v14);
  (*(v1 + 16))(v3, v15, v0);
  (*(v1 + 32))(v6, v3, v0);
  sub_766660();
  v17 = v16;
  (*(v1 + 8))(v6, v0);
  swift_unknownObjectRelease();
  (*(v11 + 8))(v13, v20);
  return round(v17);
}

double sub_309CEC()
{
  v0 = sub_766690();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v16 - v5;
  v7 = sub_7656C0();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_75DA20();
  sub_765630();
  (*(v8 + 8))(v10, v7);
  sub_75DA40();
  if (JUScreenClassGetMain() == 1)
  {
    if (qword_93DFE8 != -1)
    {
      swift_once();
    }

    v11 = qword_960220;
  }

  else
  {
    if (qword_93DFE0 != -1)
    {
      swift_once();
    }

    v11 = qword_960208;
  }

  v12 = sub_BE38(v0, v11);
  (*(v1 + 16))(v3, v12, v0);
  (*(v1 + 32))(v6, v3, v0);
  sub_766660();
  v14 = v13;
  (*(v1 + 8))(v6, v0);
  swift_unknownObjectRelease();
  return round(v14);
}

unint64_t sub_309FA0()
{
  result = qword_94F370;
  if (!qword_94F370)
  {
    sub_761DB0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_94F370);
  }

  return result;
}

uint64_t sub_309FF8(uint64_t a1, uint64_t a2)
{
  v4 = sub_7687C0();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectUnownedLoadStrong();
  v9 = sub_32CF48(Strong);

  v17 = v9;
  sub_3C80C();
  v10 = v9;
  sub_BD88(&qword_94F378);
  if (swift_dynamicCast())
  {
    sub_10914(v15, v18);
    v11 = v19;
    v12 = v20;
    sub_B170(v18, v19);
    (*(v12 + 8))(a1, a2, v11, v12);
    sub_BD88(&qword_94DDC0);
    (*(v5 + 104))(v7, enum case for ActionOutcome.performed(_:), v4);
    v13 = sub_768F30();

    sub_BEB8(v18);
  }

  else
  {
    v16 = 0;
    memset(v15, 0, sizeof(v15));
    sub_30A218(v15);
    sub_BD88(&qword_94DDC0);
    sub_30A280();
    swift_allocError();
    v13 = sub_768F20();
  }

  return v13;
}

uint64_t sub_30A218(uint64_t a1)
{
  v2 = sub_BD88(&qword_94F380);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_30A280()
{
  result = qword_94F388;
  if (!qword_94F388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_94F388);
  }

  return result;
}

unint64_t sub_30A2E8()
{
  result = qword_94F390;
  if (!qword_94F390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_94F390);
  }

  return result;
}

uint64_t sub_30A33C()
{
  sub_BD88(&qword_9452E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_77DCF0;
  *(inited + 32) = 0x6E6F697469736F70;
  *(inited + 40) = 0xE800000000000000;
  *(inited + 48) = [objc_allocWithZone(NSNull) init];
  *(inited + 56) = 0x6E6564646968;
  *(inited + 64) = 0xE600000000000000;
  *(inited + 72) = [objc_allocWithZone(NSNull) init];
  *(inited + 80) = 0x49726564724F6E6FLL;
  *(inited + 88) = 0xE90000000000006ELL;
  *(inited + 96) = [objc_allocWithZone(NSNull) init];
  *(inited + 104) = 0x4F726564724F6E6FLL;
  *(inited + 112) = 0xEA00000000007475;
  *(inited + 120) = [objc_allocWithZone(NSNull) init];
  *(inited + 128) = 0x726579616C627573;
  *(inited + 136) = 0xE900000000000073;
  *(inited + 144) = [objc_allocWithZone(NSNull) init];
  *(inited + 152) = 0x73746E65746E6F63;
  *(inited + 160) = 0xE800000000000000;
  *(inited + 168) = [objc_allocWithZone(NSNull) init];
  *(inited + 176) = 0x73646E756F62;
  *(inited + 184) = 0xE600000000000000;
  *(inited + 192) = [objc_allocWithZone(NSNull) init];
  v1 = sub_10D54C(inited);
  swift_setDeallocating();
  sub_BD88(&qword_9452E8);
  result = swift_arrayDestroy();
  qword_94F398 = v1;
  return result;
}

NSNumber sub_30A53C()
{
  sub_BD88(&unk_93F5C0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_78D690;
  sub_206378();
  *(v0 + 32) = sub_76A190(0.0);
  v1 = objc_allocWithZone(NSNumber);
  LODWORD(v2) = 1057253870;
  *(v0 + 40) = [v1 initWithFloat:v2];
  result.super.super.isa = sub_76A190(1.0).super.super.isa;
  *(v0 + 48) = result;
  qword_94F3A8 = v0;
  return result;
}

void sub_30A5DC()
{
  sub_BD88(&unk_93F5C0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_78D690;
  v1 = objc_opt_self();
  v2 = [v1 blackColor];
  v3 = [v2 colorWithAlphaComponent:0.32];

  v4 = [v3 CGColor];
  *(v0 + 32) = v4;
  v5 = [v1 blackColor];
  v6 = [v5 colorWithAlphaComponent:0.16];

  v7 = [v6 CGColor];
  *(v0 + 40) = v7;
  v8 = [v1 blackColor];
  v9 = [v8 colorWithAlphaComponent:0.0];

  v10 = [v9 CGColor];
  *(v0 + 48) = v10;
  qword_94F3B0 = v0;
}

NSNumber sub_30A780()
{
  sub_BD88(&unk_93F5C0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_794070;
  sub_206378();
  *(v0 + 32) = sub_76A190(0.0);
  v1 = objc_allocWithZone(NSNumber);
  LODWORD(v2) = 1036831949;
  *(v0 + 40) = [v1 initWithFloat:v2];
  v3 = objc_allocWithZone(NSNumber);
  LODWORD(v4) = 1050141873;
  *(v0 + 48) = [v3 initWithFloat:v4];
  v5 = objc_allocWithZone(NSNumber);
  LODWORD(v6) = 0.5;
  *(v0 + 56) = [v5 initWithFloat:v6];
  result.super.super.isa = sub_76A190(1.0).super.super.isa;
  *(v0 + 64) = result;
  qword_94F3C0 = v0;
  return result;
}

void sub_30A860()
{
  sub_BD88(&unk_93F5C0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_794070;
  v1 = objc_opt_self();
  v2 = [v1 blackColor];
  v3 = [v2 colorWithAlphaComponent:0.0];

  v4 = [v3 CGColor];
  *(v0 + 32) = v4;
  v5 = [v1 blackColor];
  v6 = [v5 colorWithAlphaComponent:0.15];

  v7 = [v6 CGColor];
  *(v0 + 40) = v7;
  v8 = [v1 blackColor];
  v9 = [v8 colorWithAlphaComponent:0.85];

  v10 = [v9 CGColor];
  *(v0 + 48) = v10;
  v11 = [v1 blackColor];
  v12 = [v11 CGColor];

  *(v0 + 56) = v12;
  v13 = [v1 blackColor];
  v14 = [v13 CGColor];

  *(v0 + 64) = v14;
  qword_94F3C8 = v0;
}

char *sub_30AA58(double a1, double a2, double a3, double a4)
{
  v4[OBJC_IVAR____TtC18ASMessagesProvider28BreakoutBackgroundEffectView_wantsTopEffect] = 1;
  v4[OBJC_IVAR____TtC18ASMessagesProvider28BreakoutBackgroundEffectView_wantsBottomEffect] = 1;
  v9 = OBJC_IVAR____TtC18ASMessagesProvider28BreakoutBackgroundEffectView_topGradient;
  *&v4[v9] = [objc_allocWithZone(CAGradientLayer) init];
  v10 = OBJC_IVAR____TtC18ASMessagesProvider28BreakoutBackgroundEffectView_blurGradientMaskLayer;
  *&v4[v10] = [objc_allocWithZone(CAGradientLayer) init];
  v11 = [objc_opt_self() effectWithBlurRadius:50.0];
  v12 = OBJC_IVAR____TtC18ASMessagesProvider28BreakoutBackgroundEffectView_blurView;
  v13 = [objc_allocWithZone(UIVisualEffectView) initWithEffect:v11];

  *&v4[v12] = v13;
  v14 = OBJC_IVAR____TtC18ASMessagesProvider28BreakoutBackgroundEffectView_bottomGradient;
  *&v4[v14] = [objc_allocWithZone(CAGradientLayer) init];
  v15 = &v4[OBJC_IVAR____TtC18ASMessagesProvider28BreakoutBackgroundEffectView_bottomGradientHeight];
  *v15 = 0;
  v15[8] = 1;
  v62.receiver = v4;
  v62.super_class = type metadata accessor for BreakoutBackgroundEffectView();
  v16 = objc_msgSendSuper2(&v62, "initWithFrame:", a1, a2, a3, a4);
  v17 = [v16 layer];
  [v17 setAllowsGroupBlending:0];

  [v16 setUserInteractionEnabled:0];
  v18 = OBJC_IVAR____TtC18ASMessagesProvider28BreakoutBackgroundEffectView_blurGradientMaskLayer;
  [*&v16[OBJC_IVAR____TtC18ASMessagesProvider28BreakoutBackgroundEffectView_blurGradientMaskLayer] setAnchorPoint:{0.0, 0.0}];
  v19 = qword_93CA10;
  v20 = *&v16[v18];
  if (v19 != -1)
  {
    swift_once();
  }

  sub_206378();
  isa = sub_769450().super.isa;
  [v20 setLocations:isa];

  v22 = qword_93CA18;
  v23 = *&v16[v18];
  if (v22 != -1)
  {
    swift_once();
  }

  sub_140730(qword_94F3C8);
  v24 = sub_769450().super.isa;

  [v23 setColors:v24];

  v25 = qword_93C9E8;
  v26 = *&v16[v18];
  if (v25 != -1)
  {
    swift_once();
  }

  sub_BD88(&qword_9452F0);
  v27 = sub_7690E0().super.isa;
  [v26 setActions:v27];

  v61 = OBJC_IVAR____TtC18ASMessagesProvider28BreakoutBackgroundEffectView_blurView;
  v28 = [*&v16[OBJC_IVAR____TtC18ASMessagesProvider28BreakoutBackgroundEffectView_blurView] layer];
  [v28 setMask:*&v16[v18]];

  v29 = OBJC_IVAR____TtC18ASMessagesProvider28BreakoutBackgroundEffectView_bottomGradient;
  [*&v16[OBJC_IVAR____TtC18ASMessagesProvider28BreakoutBackgroundEffectView_bottomGradient] setAnchorPoint:{0.0, 0.0}];
  v30 = *&v16[v29];
  sub_BD88(&unk_93F5C0);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_77B6C0;
  v32 = v30;
  *(v31 + 32) = sub_76A190(0.0);
  *(v31 + 40) = sub_76A190(1.0);
  v33 = sub_769450().super.isa;

  [v32 setLocations:v33];

  v34 = *&v16[v29];
  sub_BD88(&qword_941C10);
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_77E280;
  v36 = objc_opt_self();
  v37 = v34;
  v38 = [v36 blackColor];
  v39 = [v38 colorWithAlphaComponent:0.5];

  v40 = [v39 CGColor];
  type metadata accessor for CGColor(0);
  v42 = v41;
  *(v35 + 56) = v41;
  *(v35 + 32) = v40;
  v43 = [v36 blackColor];
  v44 = [v43 colorWithAlphaComponent:0.25];

  v45 = [v44 CGColor];
  *(v35 + 88) = v42;
  *(v35 + 64) = v45;
  v46 = sub_769450().super.isa;

  [v37 setColors:v46];

  v47 = *&v16[v29];
  v48 = sub_7690E0().super.isa;
  [v47 setActions:v48];

  v49 = [*&v16[v61] layer];
  [v49 addSublayer:*&v16[v29]];

  [v16 addSubview:*&v16[v61]];
  v50 = OBJC_IVAR____TtC18ASMessagesProvider28BreakoutBackgroundEffectView_topGradient;
  [*&v16[OBJC_IVAR____TtC18ASMessagesProvider28BreakoutBackgroundEffectView_topGradient] setAnchorPoint:{0.0, 0.0}];
  v51 = qword_93C9F8;
  v52 = *&v16[v50];
  if (v51 != -1)
  {
    swift_once();
  }

  v53 = sub_769450().super.isa;
  [v52 setLocations:v53];

  v54 = qword_93CA00;
  v55 = *&v16[v50];
  if (v54 != -1)
  {
    swift_once();
  }

  sub_140730(qword_94F3B0);
  v56 = sub_769450().super.isa;

  [v55 setColors:v56];

  v57 = *&v16[v50];
  v58 = sub_7690E0().super.isa;
  [v57 setActions:v58];

  v59 = [v16 layer];
  [v59 addSublayer:*&v16[v50]];

  return v16;
}

id sub_30B280()
{
  v14.receiver = v0;
  v14.super_class = type metadata accessor for BreakoutBackgroundEffectView();
  objc_msgSendSuper2(&v14, "layoutSubviews");
  [v0 bounds];
  Height = CGRectGetHeight(v15);
  if (qword_93C9F0 != -1)
  {
    swift_once();
  }

  v2 = Height * *&qword_94F3A0;
  v3 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider28BreakoutBackgroundEffectView_topGradient];
  [v0 bounds];
  MinX = CGRectGetMinX(v16);
  [v0 bounds];
  MinY = CGRectGetMinY(v17);
  [v0 bounds];
  [v3 setFrame:{MinX, MinY, CGRectGetWidth(v18), v2}];
  if (v0[OBJC_IVAR____TtC18ASMessagesProvider28BreakoutBackgroundEffectView_bottomGradientHeight + 8])
  {
    if (qword_93CA08 != -1)
    {
      swift_once();
    }

    v6 = Height * *&qword_94F3B8;
  }

  else
  {
    v6 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider28BreakoutBackgroundEffectView_bottomGradientHeight];
  }

  [v0 bounds];
  v7 = CGRectGetMinX(v19);
  [v0 bounds];
  v8 = CGRectGetMaxY(v20) - v6;
  [v0 bounds];
  Width = CGRectGetWidth(v21);
  v10 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider28BreakoutBackgroundEffectView_blurView];
  [v10 setFrame:{v7, v8, Width, v6}];
  v11 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider28BreakoutBackgroundEffectView_blurGradientMaskLayer];
  [v10 bounds];
  [v11 setFrame:?];
  v12 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider28BreakoutBackgroundEffectView_bottomGradient];
  [v10 bounds];
  return [v12 setFrame:?];
}

id sub_30B4DC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BreakoutBackgroundEffectView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_30B5A0()
{
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider28BreakoutBackgroundEffectView_wantsTopEffect) = 1;
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider28BreakoutBackgroundEffectView_wantsBottomEffect) = 1;
  v1 = OBJC_IVAR____TtC18ASMessagesProvider28BreakoutBackgroundEffectView_topGradient;
  *(v0 + v1) = [objc_allocWithZone(CAGradientLayer) init];
  v2 = OBJC_IVAR____TtC18ASMessagesProvider28BreakoutBackgroundEffectView_blurGradientMaskLayer;
  *(v0 + v2) = [objc_allocWithZone(CAGradientLayer) init];
  v3 = [objc_opt_self() effectWithBlurRadius:50.0];
  v4 = OBJC_IVAR____TtC18ASMessagesProvider28BreakoutBackgroundEffectView_blurView;
  v5 = [objc_allocWithZone(UIVisualEffectView) initWithEffect:v3];

  *(v0 + v4) = v5;
  v6 = OBJC_IVAR____TtC18ASMessagesProvider28BreakoutBackgroundEffectView_bottomGradient;
  *(v0 + v6) = [objc_allocWithZone(CAGradientLayer) init];
  v7 = v0 + OBJC_IVAR____TtC18ASMessagesProvider28BreakoutBackgroundEffectView_bottomGradientHeight;
  *v7 = 0;
  *(v7 + 8) = 1;
  sub_76A840();
  __break(1u);
}

uint64_t sub_30B704@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v34 = a3;
  v35 = a4;
  v31[1] = a1;
  v32 = a2;
  v4 = sub_764930();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v31[0] = v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = v31 - v8;
  v10 = sub_7656A0();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v33 = v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = v31 - v14;
  v16 = sub_BD88(&qword_9438F8);
  v17 = v16 - 8;
  __chkstk_darwin(v16);
  v19 = v31 - v18;
  sub_1ED18(v32, v31 - v18, &qword_963790);
  v20 = *(v17 + 56);
  v21 = v10;
  v32 = v19;
  sub_1ED18(v34, &v19[v20], &qword_963790);
  swift_getKeyPath();
  sub_BD88(&unk_94F1F0);
  sub_768750();

  v22 = *(v11 + 104);
  v23 = &enum case for PageGrid.Direction.horizontal(_:);
  if (!v38)
  {
    v23 = &enum case for PageGrid.Direction.vertical(_:);
  }

  v24 = *v23;
  v34 = v15;
  v25 = v15;
  v26 = v31[0];
  v22(v25, v24, v10);
  swift_getKeyPath();
  sub_768750();

  (*(v5 + 104))(v26, enum case for Shelf.ContentType.appTrailerLockup(_:), v4);
  sub_15E76C();
  sub_769430();
  sub_769430();
  if (v38 == v36 && v39 == v37)
  {
    v27 = 32.0;
  }

  else if (sub_76A950())
  {
    v27 = 32.0;
  }

  else
  {
    v27 = 20.0;
  }

  v28 = *(v5 + 8);
  v28(v26, v4);
  v28(v9, v4);

  v29 = v34;
  (*(v11 + 16))(v33, v34, v21);
  sub_69C4AC(v27);
  sub_765670();
  (*(v11 + 8))(v29, v21);
  return sub_10A2C(v32, &qword_9438F8);
}

uint64_t sub_30BB88()
{
  sub_30BF3C();

  return sub_75B530();
}

uint64_t sub_30BC6C()
{
  sub_30BF3C();

  return sub_75B520();
}

uint64_t sub_30BD5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>, double a8@<D6>, double a9@<D7>)
{
  v22[5] = a5;
  v22[6] = a6;
  v22[4] = a4;
  *&v22[2] = a8;
  *&v22[3] = a9;
  v22[0] = a7;
  v22[1] = a1;
  v12 = sub_BD88(&qword_9438F8);
  v13 = v12 - 8;
  __chkstk_darwin(v12);
  v15 = v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = v22 - v17;
  v19 = *v9;
  sub_1ED18(a2, v22 - v17, &qword_963790);
  sub_1ED18(a3, &v18[*(v13 + 56)], &qword_963790);
  v22[7] = v19;
  sub_1ED18(v18, v15, &qword_9438F8);
  v20 = *(v13 + 56);
  sub_75B530();
  sub_10A2C(v18, &qword_9438F8);
  sub_10A2C(&v15[v20], &qword_963790);
  return sub_10A2C(v15, &qword_963790);
}

unint64_t sub_30BF3C()
{
  result = qword_94F430;
  if (!qword_94F430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_94F430);
  }

  return result;
}

uint64_t sub_30BF98()
{
  v1 = (v0 + OBJC_IVAR____TtC18ASMessagesProvider33NotesMetadataActivityItemProvider____lazy_storage___notesMetadata);
  v2 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider33NotesMetadataActivityItemProvider____lazy_storage___notesMetadata);
  v3 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider33NotesMetadataActivityItemProvider____lazy_storage___notesMetadata + 8);
  v4 = v2;
  if (v3 >> 60 == 15)
  {
    swift_unknownObjectWeakInit();
    v4 = sub_30C050();
    v6 = v5;
    swift_unknownObjectWeakDestroy();
    v7 = *v1;
    v8 = v1[1];
    *v1 = v4;
    v1[1] = v6;
    sub_30CBC8(v4, v6);
    sub_30CC1C(v7, v8);
  }

  sub_30CC84(v2, v3);
  return v4;
}

uint64_t sub_30C050()
{
  v0 = sub_BD88(&unk_93FD30);
  __chkstk_darwin(v0 - 8);
  v2 = &v34 - v1;
  v3 = sub_7570A0();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v8 = result;
    sub_BD88(&unk_94F470);
    inited = swift_initStackObject();
    v34 = xmmword_77B6D0;
    *(inited + 16) = xmmword_77B6D0;
    *(inited + 32) = 1701667182;
    *(inited + 40) = 0xE400000000000000;
    v10 = sub_7607B0();
    *(inited + 72) = &type metadata for String;
    *(inited + 48) = v10;
    *(inited + 56) = v11;
    v12 = sub_10E8CC(inited);
    swift_setDeallocating();
    sub_10A2C(inited + 32, &unk_9453B0);
    sub_760780();
    if ((*(v4 + 48))(v2, 1, v3) == 1)
    {
      sub_10A2C(v2, &unk_93FD30);
    }

    else
    {
      (*(v4 + 32))(v6, v2, v3);
      v38 = v3;
      v13 = sub_B1B4(&v37);
      (*(v4 + 16))(v13, v6, v3);
      sub_13310(&v37, v36);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v35 = v12;
      sub_459E5C(v36, 7107189, 0xE300000000000000, isUniquelyReferenced_nonNull_native);
      (*(v4 + 8))(v6, v3);
      v12 = v35;
    }

    v15 = sub_7607C0();
    if (v16)
    {
      v38 = &type metadata for String;
      *&v37 = v15;
      *(&v37 + 1) = v16;
      sub_13310(&v37, v36);
      v17 = swift_isUniquelyReferenced_nonNull_native();
      v35 = v12;
      sub_459E5C(v36, 0x796E61706D6F63, 0xE700000000000000, v17);
      v12 = v35;
    }

    v18 = sub_760790();
    if (v19)
    {
      v38 = &type metadata for String;
      *&v37 = v18;
      *(&v37 + 1) = v19;
      sub_13310(&v37, v36);
      v20 = swift_isUniquelyReferenced_nonNull_native();
      v35 = v12;
      sub_459E5C(v36, 0x79726F6765746163, 0xE800000000000000, v20);
      v12 = v35;
    }

    v21 = sub_7607A0();
    if ((v22 & 1) == 0)
    {
      v38 = &type metadata for Int64;
      *&v37 = v21;
      sub_13310(&v37, v36);
      v23 = swift_isUniquelyReferenced_nonNull_native();
      v35 = v12;
      sub_459E5C(v36, 0x7A69735F656C6966, 0xE900000000000065, v23);
      v12 = v35;
    }

    v24 = sub_7607D0();
    if (v25)
    {
      v38 = &type metadata for String;
      *&v37 = v24;
      *(&v37 + 1) = v25;
      sub_13310(&v37, v36);
      v26 = swift_isUniquelyReferenced_nonNull_native();
      v35 = v12;
      sub_459E5C(v36, 0x79745F616964656DLL, 0xEA00000000006570, v26);
    }

    v27 = objc_opt_self();
    isa = sub_7690E0().super.isa;

    *&v37 = 0;
    v29 = [v27 archivedDataWithRootObject:isa requiringSecureCoding:0 error:&v37];

    v30 = v37;
    if (v29)
    {
      v31 = sub_7570C0();

      return v31;
    }

    else
    {
      v32 = v30;
      sub_756F70();

      swift_willThrow();
      if (qword_93DEF0 != -1)
      {
        swift_once();
      }

      v33 = sub_768FF0();
      sub_BE38(v33, qword_9A0400);
      sub_BD88(&qword_93FD00);
      sub_7685F0();
      *(swift_allocObject() + 16) = v34;
      sub_768540();
      sub_768EA0();

      return 0;
    }
  }

  return result;
}

void sub_30C710(uint64_t *a1@<X8>)
{
  v3 = [v1 activityType];
  if (!v3)
  {
    goto LABEL_8;
  }

  v4 = v3;
  v5 = sub_769240();
  v7 = v6;
  if (v5 == sub_769240() && v7 == v8)
  {
  }

  else
  {
    v10 = sub_76A950();

    if ((v10 & 1) == 0)
    {

LABEL_8:
      a1[3] = &type metadata for String;
      *a1 = 0;
      a1[1] = 0xE000000000000000;
      return;
    }
  }

  v11 = sub_30BF98();
  v13 = v12;
  a1[3] = &type metadata for Data;

  *a1 = v11;
  a1[1] = v13;
}

void sub_30C80C(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  if (!a1)
  {
    goto LABEL_7;
  }

  v3 = sub_769240();
  v5 = v4;
  if (v3 == sub_769240() && v5 == v6)
  {
  }

  else
  {
    v8 = sub_76A950();

    if ((v8 & 1) == 0)
    {
LABEL_7:
      *a2 = 0u;
      *(a2 + 16) = 0u;
      return;
    }
  }

  v9 = sub_30BF98();
  *(a2 + 24) = &type metadata for Data;
  *a2 = v9;
  *(a2 + 8) = v10;
}

id sub_30CB20()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NotesMetadataActivityItemProvider();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_30CBC8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_30CC1C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_30CC30(a1, a2);
  }

  return a1;
}

uint64_t sub_30CC30(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_30CC84(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_30CBC8(a1, a2);
  }

  return a1;
}

unint64_t sub_30CC98(unint64_t result)
{
  if (result)
  {
    v1 = result;
    v2 = sub_769240();
    v4 = v3;
    if (v2 == sub_769240() && v4 == v5)
    {
      v9 = v1;
    }

    else
    {
      v7 = sub_76A950();
      v8 = v1;

      if ((v7 & 1) == 0)
      {

        return 0;
      }
    }

    return 0xD00000000000001ELL;
  }

  return result;
}

uint64_t sub_30CD80@<X0>(uint64_t a1@<X8>)
{
  v20 = a1;
  v1 = sub_76A920();
  v18 = *(v1 - 8);
  v19 = v1;
  __chkstk_darwin(v1);
  v3 = &v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_BD88(&qword_944E50);
  v17 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v17 - v5;
  v7 = sub_75D3C0();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_764C80();
  sub_30D23C(&qword_951430, &type metadata accessor for Action);
  sub_75C750();
  if (v21[0])
  {
    sub_75AE60();
    sub_30D23C(&unk_94F480, &type metadata accessor for SearchAdAction);
    sub_75C750();
    v11 = v21[0];
    if (v21[0])
    {
    }

    if (sub_764C70() && (, !v11))
    {
      (*(v8 + 104))(v10, enum case for ComponentSeparator.Position.bottom(_:), v7);
      if (qword_93C768 != -1)
      {
        swift_once();
      }

      v14 = sub_759B00();
      sub_BE38(v14, qword_99BBB0);
      sub_759AC0();
      swift_getKeyPath();
      sub_75C7B0();

      v21[5] = v21[0];
      sub_7592B0();
      swift_unknownObjectRelease();
      (*(v17 + 8))(v6, v4);
      sub_759AD0();
      sub_B170(v21, v21[3]);
      swift_getKeyPath();
      sub_75C7B0();

      sub_33964();
      sub_766700();
      swift_unknownObjectRelease();
      (*(v18 + 8))(v3, v19);
      sub_BEB8(v21);
      v12 = v20;
    }

    else
    {
      (*(v8 + 104))(v10, enum case for ComponentSeparator.Position.bottom(_:), v7);
      v12 = v20;
    }

    sub_75D3D0();

    v13 = 0;
  }

  else
  {
    v13 = 1;
    v12 = v20;
  }

  v15 = sub_75D400();
  return (*(*(v15 - 8) + 56))(v12, v13, 1, v15);
}

uint64_t sub_30D23C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_30D2A8()
{
  result = qword_94F490;
  if (!qword_94F490)
  {
    sub_75E360();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_94F490);
  }

  return result;
}

uint64_t sub_30D308()
{
  v0 = sub_7687C0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectUnownedLoadStrong();
  v5 = sub_32CF48(Strong);

  type metadata accessor for SearchChartsAndCategoriesDiffablePageViewController();
  if (swift_dynamicCastClass())
  {

    v9._countAndFlagsBits = sub_75E350();
    sub_7644F0(v9);

    sub_BD88(&qword_94DDC0);
    (*(v1 + 104))(v3, enum case for ActionOutcome.performed(_:), v0);
    v6 = sub_768F30();
  }

  else
  {
    sub_BD88(&qword_94DDC0);
    sub_30D4B8();
    swift_allocError();
    v6 = sub_768F20();
  }

  return v6;
}

unint64_t sub_30D4B8()
{
  result = qword_94F498;
  if (!qword_94F498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_94F498);
  }

  return result;
}

unint64_t sub_30D520()
{
  result = qword_94F4A0;
  if (!qword_94F4A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_94F4A0);
  }

  return result;
}

void sub_30D574(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v8 = sub_75FA00();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a1;
  sub_75F980();
  sub_30DDC4(&qword_94FA60, &type metadata accessor for ComponentLayoutOptions);
  v13 = sub_76A520();
  (*(v9 + 8))(v11, v8);
  type metadata accessor for ProductReviewView();
  swift_getObjectType();
  sub_40FDE0(v12, v13 & 1, v13 & 1, a6);
}

id sub_30D6D4(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v10 = sub_75FA00();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a1;
  sub_75F980();
  sub_30DDC4(&qword_94FA60, &type metadata accessor for ComponentLayoutOptions);
  v15 = sub_76A520();
  (*(v11 + 8))(v13, v10);
  if (v15)
  {
    v16 = 256;
  }

  else
  {
    v16 = 0;
  }

  sub_40F004(v14, v16 | v15 & 1, 0, a6, a3);
  return [v6 setNeedsLayout];
}

uint64_t sub_30D900(uint64_t a1, uint64_t a2)
{
  v29[1] = a2;
  v3 = sub_76A920();
  v30 = *(v3 - 8);
  v31 = v3;
  __chkstk_darwin(v3);
  v5 = v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_764930();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_BD88(&qword_945828);
  v11 = v10 - 8;
  __chkstk_darwin(v10);
  v13 = v29 - v12;
  v14 = sub_BD88(&qword_951BE0);
  __chkstk_darwin(v14 - 8);
  v16 = v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v17);
  v20 = v29 - v19;
  (*(v7 + 104))(v29 - v19, enum case for Shelf.ContentType.reviews(_:), v6, v18);
  (*(v7 + 56))(v20, 0, 1, v6);
  v21 = *(v11 + 56);
  sub_2C8FC(a1, v13);
  sub_2C8FC(v20, &v13[v21]);
  v22 = *(v7 + 48);
  if (v22(v13, 1, v6) != 1)
  {
    sub_2C8FC(v13, v16);
    if (v22(&v13[v21], 1, v6) != 1)
    {
      (*(v7 + 32))(v9, &v13[v21], v6);
      sub_30DDC4(&qword_944DC0, &type metadata accessor for Shelf.ContentType);
      v24 = sub_7691C0();
      v25 = *(v7 + 8);
      v25(v9, v6);
      sub_10A2C(v20, &qword_951BE0);
      v25(v16, v6);
      sub_10A2C(v13, &qword_951BE0);
      if (v24)
      {
        goto LABEL_9;
      }

      return 0;
    }

    sub_10A2C(v20, &qword_951BE0);
    (*(v7 + 8))(v16, v6);
LABEL_6:
    sub_10A2C(v13, &qword_945828);
    return 0;
  }

  sub_10A2C(v20, &qword_951BE0);
  if (v22(&v13[v21], 1, v6) != 1)
  {
    goto LABEL_6;
  }

  sub_10A2C(v13, &qword_951BE0);
LABEL_9:
  if (qword_93DCE0 != -1)
  {
    swift_once();
  }

  v26 = sub_766CA0();
  sub_BE38(v26, qword_99FDE8);
  sub_766470();
  sub_766700();
  v28 = v27;
  (*(v30 + 8))(v5, v31);
  return v28;
}

uint64_t sub_30DDC4(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_30DF48(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  v5 = v4;
  v10 = sub_76A920();
  v11 = *(v10 - 8);
  v112 = v10;
  v113 = v11;
  __chkstk_darwin(v10);
  v13 = v102 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_759950();
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
    if (qword_93CA20 != -1)
    {
      swift_once();
    }

    v115.is_nil = qword_94F4F0;
    v103 = qword_94F4F0;
    v115.value._rawValue = 0;
    isa = sub_7699C0(v115, v23).super.isa;
    v102[1] = sub_BE70(0, &qword_95A810);
    v111 = UIFontTextStyleTitle2;
    v26 = sub_769C60();
    v27 = enum case for SystemImage.starFill(_:);
    v28 = *(v15 + 104);
    v108 = v15 + 104;
    v28(v17, enum case for SystemImage.starFill(_:), v14);
    v29 = [v26 configurationWithTraitCollection:{isa, v28}];
    v30 = v14;
    v107 = v14;
    v31 = v29;
    v32 = sub_759930();

    v110 = *(v15 + 8);
    v110(v17, v30);
    v33 = [v32 imageWithRenderingMode:2];

    [v33 size];
    v34 = [v109 traitCollection];
    v116.value._rawValue = 0;
    LOBYTE(v33) = v103;
    v116.is_nil = v103;
    v35 = sub_7699C0(v116, v118).super.isa;
    v36 = sub_769C60();
    v37 = v27;
    v38 = v107;
    v28(v17, v37, v107);
    v39 = [v36 configurationWithTraitCollection:v35];
    v40 = sub_759930();

    v110(v17, v38);
    v41 = [v40 imageWithRenderingMode:2];

    v42 = [v109 traitCollection];
    v117.value._rawValue = 0;
    v117.is_nil = v33;
    v43 = sub_7699C0(v117, v119).super.isa;
    v44 = sub_769C60();
    v45 = v107;
    (v102[0])(v17, enum case for SystemImage.star(_:), v107);
    v46 = [v44 configurationWithTraitCollection:v43];
    v47 = sub_759930();

    v110(v17, v45);
    v110 = [v47 imageWithRenderingMode:2];

    v111 = v41;
    v48 = v41;
    v49 = v109;
    [(NSString *)v48 size];
    v51 = v50;
    v52 = [v49 traitCollection];
    LOBYTE(v42) = sub_7699F0();

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
    sub_769F80();
    v61 = v60;
    v63 = v62;
    v64 = *(v58 + 8);
    v113 = v58 + 8;
    v64(v55, v57);
    v65 = OBJC_IVAR____TtC18ASMessagesProvider17StarRatingControl_rating;
    if (*&v49[OBJC_IVAR____TtC18ASMessagesProvider17StarRatingControl_rating])
    {
      v66 = v111;
    }

    else
    {
      v66 = v110;
    }

    [(NSString *)v66 drawAtPoint:v61, v63];
    v67 = [v49 traitCollection];
    v68 = sub_7699F0();

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
    sub_769F80();
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
    v76 = sub_7699F0();

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
    sub_769F80();
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
    v84 = sub_7699F0();

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
    sub_769F80();
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
    v92 = sub_7699F0();

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
    sub_769F80();
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

uint64_t sub_30E9C0(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  [v4 locationInView:v5];
  sub_30EB4C(v6);
  v7 = *&v5[OBJC_IVAR____TtC18ASMessagesProvider17StarRatingControl_rating];
  *&v5[OBJC_IVAR____TtC18ASMessagesProvider17StarRatingControl_rating] = v8;
  if (v7 != v8)
  {
    [v5 setNeedsDisplay];
  }

  return 1;
}

void sub_30EB4C(double a1)
{
  v2 = v1;
  v4 = sub_759950();
  v5 = *(v4 - 8);
  *&v6 = __chkstk_darwin(v4).n128_u64[0];
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [v1 traitCollection];
  if (qword_93CA20 != -1)
  {
    swift_once();
  }

  v26.is_nil = qword_94F4F0;
  v26.value._rawValue = 0;
  isa = sub_7699C0(v26, v9).super.isa;
  sub_BE70(0, &qword_95A810);
  v12 = sub_769C60();
  (*(v5 + 104))(v8, enum case for SystemImage.starFill(_:), v4);
  v13 = [v12 configurationWithTraitCollection:isa];
  v14 = sub_759930();

  (*(v5 + 8))(v8, v4);
  v15 = [v14 imageWithRenderingMode:2];

  [v15 size];
  v17 = v16;

  v18 = (v17 + 12.0) * 5.0;
  v19 = [v2 traitCollection];
  LOBYTE(v15) = sub_7699F0();

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

void sub_30F0B0(void *a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  if (a3)
  {
    sub_769240();
    v6 = a1;
    v7 = sub_769210();
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

double *sub_30F1C0()
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
        v22._object = 0x80000000007DACC0;
        v22._countAndFlagsBits = 0xD00000000000001ALL;
        v24._countAndFlagsBits = 0;
        v24._object = 0xE000000000000000;
        sub_761130(v22, v2, v24);
LABEL_2:

        goto LABEL_3;
      }
    }

    else
    {
      v4 = off_88D588[v2];
    }

    v5 = *v4;
    v23._object = 0x80000000007DACC0;
    v23._countAndFlagsBits = 0xD00000000000001ALL;
    v25._countAndFlagsBits = 0;
    v25._object = 0xE000000000000000;
    sub_761130(v23, v2, v25);
    if (!v5)
    {
      goto LABEL_2;
    }

    v20 = type metadata accessor for StarRatingControl();
    v19[0] = v1;
    v6 = v1;
    v7 = sub_769210();

    v8 = v20;
    if (v20)
    {
      v9 = sub_B170(v19, v20);
      v10 = *(v8 - 8);
      v11 = __chkstk_darwin(v9);
      v13 = &v19[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v10 + 16))(v13, v11);
      v14 = sub_76A930();
      (*(v10 + 8))(v13, v8);
      sub_BEB8(v19);
    }

    else
    {
      v14 = 0;
    }

    v15 = [objc_allocWithZone(UIAccessibilityCustomAction) initWithName:v7 target:v14 selector:v5];

    swift_unknownObjectRelease();
    v16 = v15;
    sub_769440();
    if (*(&dword_10 + (v21 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v21 & 0xFFFFFFFFFFFFFF8)) >> 1)
    {
      sub_7694C0();
    }

    sub_769500();

    v3 = v21;
LABEL_3:
    ++v2;
  }

  while (v2 != 6);
  return v3;
}

uint64_t sub_30F4F4(uint64_t a1)
{
  v3 = sub_768380();
  v37 = *(v3 - 8);
  v38 = v3;
  __chkstk_darwin(v3);
  v34 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_7683C0();
  v35 = *(v5 - 8);
  v36 = v5;
  __chkstk_darwin(v5);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_7683E0();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v13 = __chkstk_darwin(v12).n128_u64[0];
  v15 = &v33 - v14;
  v16 = OBJC_IVAR____TtC18ASMessagesProvider17StarRatingControl_rating;
  v17 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider17StarRatingControl_rating];
  *&v1[OBJC_IVAR____TtC18ASMessagesProvider17StarRatingControl_rating] = a1;
  if (v17 != a1)
  {
    [v1 setNeedsDisplay];
    a1 = *&v1[v16];
  }

  v18 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider17StarRatingControl_lastSentRating];
  *&v1[OBJC_IVAR____TtC18ASMessagesProvider17StarRatingControl_lastSentRating] = a1;
  if (v18 != a1)
  {
    [v1 sendActionsForControlEvents:4096];
  }

  v45._object = 0x80000000007DAC50;
  v45._countAndFlagsBits = 0xD000000000000017;
  v48._countAndFlagsBits = 0;
  v48._object = 0xE000000000000000;
  v19 = sub_75B750(v45, v48);
  v21 = v20;
  v46._countAndFlagsBits = 0xD00000000000001DLL;
  v46._object = 0x80000000007DAC70;
  v49._countAndFlagsBits = 0;
  v49._object = 0xE000000000000000;
  v22 = sub_75B750(v46, v49);
  v24 = v23;
  aBlock = v19;
  v40 = v21;

  v47._countAndFlagsBits = v22;
  v47._object = v24;
  sub_769370(v47);

  v26 = aBlock;
  v25 = v40;
  sub_BE70(0, &qword_940340);
  v27 = sub_769970();
  sub_7683D0();
  sub_768450();
  v33 = *(v9 + 8);
  v33(v11, v8);
  v28 = swift_allocObject();
  *(v28 + 16) = v26;
  *(v28 + 24) = v25;
  v43 = sub_30FC58;
  v44 = v28;
  aBlock = _NSConcreteStackBlock;
  v40 = 1107296256;
  v41 = sub_23F0CC;
  v42 = &unk_88D560;
  v29 = _Block_copy(&aBlock);

  sub_7683A0();
  aBlock = _swiftEmptyArrayStorage;
  sub_4C81C();
  sub_BD88(&qword_940350);
  sub_4C874();
  v30 = v34;
  v31 = v38;
  sub_76A5A0();
  sub_769930();
  _Block_release(v29);

  (*(v37 + 8))(v30, v31);
  (*(v35 + 8))(v7, v36);
  return (v33)(v15, v8);
}

void sub_30F95C()
{
  v0 = UIAccessibilityAnnouncementNotification;
  v1 = sub_769210();
  UIAccessibilityPostNotification(v0, v1);
}

id sub_30FBC4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for StarRatingControl();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_30FC20()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_30FC60(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_30FC78(char a1)
{
  v2 = sub_759950();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_93CA20 != -1)
  {
    swift_once();
  }

  v15.is_nil = qword_94F4F0;
  v15.value._rawValue = 0;
  v7.super.isa = sub_7699C0(v15, v4).super.isa;
  sub_BE70(0, &qword_95A810);
  v8 = sub_769C60();
  v9 = &enum case for SystemImage.starFill(_:);
  if ((a1 & 1) == 0)
  {
    v9 = &enum case for SystemImage.star(_:);
  }

  (*(v3 + 104))(v6, *v9, v2);
  v10 = [v8 configurationWithTraitCollection:v7.super.isa];
  v11 = sub_759930();

  (*(v3 + 8))(v6, v2);
  v12 = [v11 imageWithRenderingMode:2];

  return v12;
}

void sub_30FE68(void *a1)
{
  if (a1)
  {
    [a1 locationInView:v1];
    sub_30EB4C(v2);
    v4 = OBJC_IVAR____TtC18ASMessagesProvider17StarRatingControl_rating;
    v5 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider17StarRatingControl_rating];
    *&v1[OBJC_IVAR____TtC18ASMessagesProvider17StarRatingControl_rating] = v3;
    if (v5 != v3)
    {
      [v1 setNeedsDisplay];
      v3 = *&v1[v4];
    }

    v6 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider17StarRatingControl_lastSentRating];
    *&v1[OBJC_IVAR____TtC18ASMessagesProvider17StarRatingControl_lastSentRating] = v3;
    if (v6 != v3)
    {

      [v1 sendActionsForControlEvents:4096];
    }
  }
}

id sub_30FF1C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_BD88(&unk_9435D0);
  __chkstk_darwin(v4 - 8);
  v6 = v29 - v5;
  v7 = sub_769ED0();
  v32 = *(v7 - 8);
  v33 = v7;
  __chkstk_darwin(v7);
  v9 = v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_7656A0();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v15 = __chkstk_darwin(v14).n128_u64[0];
  v17 = v29 - v16;
  v18 = [a1 presentingViewController];
  if (!v18)
  {
    v18 = a1;
  }

  result = [v18 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_9;
  }

  v20 = result;
  v30 = v13;
  v31 = a2;
  [result bounds];
  v22 = v21;
  v24 = v23;

  (*(v11 + 104))(v17, enum case for PageGrid.Direction.vertical(_:), v10);
  result = [v18 view];
  if (!result)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  v25 = result;
  v29[0] = v22;
  v29[1] = v24;
  v26 = enum case for UIView.LayoutRegion.AdaptivityAxis.vertical(_:);
  v27 = sub_769EB0();
  v28 = *(v27 - 8);
  (*(v28 + 104))(v6, v26, v27);
  (*(v28 + 56))(v6, 0, 1, v27);
  sub_769EC0();
  sub_8DD2C(v6);
  sub_769E90();

  (*(v32 + 8))(v9, v33);
  (*(v11 + 16))(v30, v17, v10);
  if (qword_93C248 != -1)
  {
    swift_once();
  }

  sub_765670();

  return (*(v11 + 8))(v17, v10);
}

void sub_3104E4()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider27ArticleHeaderViewController_cell);
  v3 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider27ArticleHeaderViewController_cell + 8);
  ObjectType = swift_getObjectType();
  v5 = OBJC_IVAR____TtC18ASMessagesProvider27ArticleHeaderViewController_isCardModeEnabled;
  (*(v3 + 96))((*(v0 + OBJC_IVAR____TtC18ASMessagesProvider27ArticleHeaderViewController_isCardModeEnabled) & 1) == 0, ObjectType, v3);
  if ((*(v3 + 136))(ObjectType, v3) != 6 && *(v0 + OBJC_IVAR____TtC18ASMessagesProvider27ArticleHeaderViewController_alternateCell))
  {
    v6 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider27ArticleHeaderViewController_alternateCell + 8);
    v7 = swift_getObjectType();
    (*(v6 + 96))((*(v0 + v5) & 1) == 0, v7, v6);
  }

  swift_getObjectType();
  v8 = swift_conformsToProtocol2();
  if (v8)
  {
    v9 = v2 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (!v9)
  {
    v10 = v8;
    v11 = swift_getObjectType();
    v12 = *(v10 + 32);
    v13 = v2;
    if (v12(v11, v10))
    {
      v15 = v14;
      v16 = swift_getObjectType();
      (*(v15 + 32))((*(v0 + v5) & 1) == 0, v16, v15);
      swift_unknownObjectRelease();
    }
  }

  v17 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider27ArticleHeaderViewController_alternateCell);
  if (v17)
  {
    v18 = swift_getObjectType();
    v19 = swift_conformsToProtocol2();
    if (v19)
    {
      v20 = *(v19 + 32);
      v21 = v19;
      v25 = v17;
      if (v20(v18, v21))
      {
        v23 = v22;
        v24 = swift_getObjectType();
        (*(v23 + 32))((*(v1 + v5) & 1) == 0, v24, v23);
        swift_unknownObjectRelease();
      }
    }
  }
}

void sub_31075C(double a1, double a2, double a3, double a4)
{
  v5 = (v4 + OBJC_IVAR____TtC18ASMessagesProvider27ArticleHeaderViewController_verticalSafeAreaInsets);
  v6 = *(v4 + OBJC_IVAR____TtC18ASMessagesProvider27ArticleHeaderViewController_verticalSafeAreaInsets);
  v7 = *(v4 + OBJC_IVAR____TtC18ASMessagesProvider27ArticleHeaderViewController_verticalSafeAreaInsets + 8);
  v8 = *(v4 + OBJC_IVAR____TtC18ASMessagesProvider27ArticleHeaderViewController_verticalSafeAreaInsets + 16);
  v9 = *(v4 + OBJC_IVAR____TtC18ASMessagesProvider27ArticleHeaderViewController_verticalSafeAreaInsets + 24);
  if (v6 != a1 || v7 != a2 || v8 != a3 || v9 != a4)
  {
    v13 = *(v4 + OBJC_IVAR____TtC18ASMessagesProvider27ArticleHeaderViewController_cell + 8);
    ObjectType = swift_getObjectType();
    *v20 = v6;
    *&v20[1] = v7;
    *&v20[2] = v8;
    *&v20[3] = v9;
    v21 = 0;
    (*(v13 + 224))(v20, ObjectType, v13);
    if (*(v4 + OBJC_IVAR____TtC18ASMessagesProvider27ArticleHeaderViewController_alternateCell))
    {
      v15 = *(v4 + OBJC_IVAR____TtC18ASMessagesProvider27ArticleHeaderViewController_alternateCell + 8);
      v16 = swift_getObjectType();
      v17 = v5[1];
      v18[0] = *v5;
      v18[1] = v17;
      v19 = 0;
      (*(v15 + 224))(v18, v16, v15);
    }
  }
}

void sub_310948()
{
  v8.receiver = v0;
  v8.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v8, "viewDidLoad");
  v1 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider27ArticleHeaderViewController_cell];
  v2 = [v0 view];
  if (!v2)
  {
    __break(1u);
    goto LABEL_7;
  }

  v3 = v2;
  [v2 addSubview:v1];

  v4 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider27ArticleHeaderViewController_alternateCell];
  if (!v4)
  {
    return;
  }

  v5 = v4;
  v6 = [v0 view];
  if (!v6)
  {
LABEL_7:
    __break(1u);
    return;
  }

  v7 = v6;
  [v6 addSubview:v5];
}

void sub_310AD0(void *a1, uint64_t a2, uint64_t a3, const char **a4, void *a5, char a6)
{
  v12.receiver = a1;
  v12.super_class = swift_getObjectType();
  v10 = *a4;
  v11 = v12.receiver;
  objc_msgSendSuper2(&v12, v10, a3);
  v11[*a5] = a6;
}

void sub_310B48()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_BD88(&unk_9435D0);
  __chkstk_darwin(v3 - 8);
  v5 = &v51 - v4;
  v6 = sub_769ED0();
  v7 = *(v6 - 8);
  *&v8 = __chkstk_darwin(v6).n128_u64[0];
  v10 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51.receiver = v1;
  v51.super_class = ObjectType;
  objc_msgSendSuper2(&v51, "viewDidLayoutSubviews", v8);
  v11 = [v1 view];
  if (!v11)
  {
    __break(1u);
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v12 = v11;
  v13 = enum case for UIView.LayoutRegion.AdaptivityAxis.vertical(_:);
  v14 = sub_769EB0();
  v15 = *(v14 - 8);
  (*(v15 + 104))(v5, v13, v14);
  (*(v15 + 56))(v5, 0, 1, v14);
  sub_769EC0();
  sub_8DD2C(v5);
  sub_769E90();
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;

  (*(v7 + 8))(v10, v6);
  v24 = &v1[OBJC_IVAR____TtC18ASMessagesProvider27ArticleHeaderViewController_verticalSafeAreaInsets];
  v25 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider27ArticleHeaderViewController_verticalSafeAreaInsets];
  v26 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider27ArticleHeaderViewController_verticalSafeAreaInsets + 8];
  v27 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider27ArticleHeaderViewController_verticalSafeAreaInsets + 16];
  v28 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider27ArticleHeaderViewController_verticalSafeAreaInsets + 24];
  *v24 = v17;
  *(v24 + 1) = v19;
  *(v24 + 2) = v21;
  *(v24 + 3) = v23;
  sub_31075C(v25, v26, v27, v28);
  v29 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider27ArticleHeaderViewController_alternateCell];
  if (v29)
  {
    v30 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider27ArticleHeaderViewController_alternateCell + 8];
    v31 = v29;
    sub_310ED0(v31, v30);
    v33 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider27ArticleHeaderViewController_cell];
    v32 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider27ArticleHeaderViewController_cell + 8];
    v34 = [v1 view];
    if (v34)
    {
      v35 = v34;
      [v34 bounds];
      v37 = v36;

      v38 = sub_311270(v37, v33, v32);
      [v33 setFrame:{0.0, 0.0, v38, v39}];

      return;
    }

    goto LABEL_8;
  }

  v40 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider27ArticleHeaderViewController_cell];
  v41 = [v1 view];
  if (v41)
  {
    v42 = v41;
    [v41 bounds];
    v44 = v43;
    v46 = v45;
    v48 = v47;
    v50 = v49;

    [v40 setFrame:{v44, v46, v48, v50}];
    return;
  }

LABEL_9:
  __break(1u);
}

void sub_310ED0(void *a1, uint64_t a2)
{
  v3 = v2;
  type metadata accessor for ListTodayCardCollectionViewCell();
  if (swift_dynamicCastClass())
  {
    v6 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider27ArticleHeaderViewController_cell + 8];
    ObjectType = swift_getObjectType();
    if ((*(v6 + 160))(ObjectType, v6) == 4)
    {
      if (v2[OBJC_IVAR____TtC18ASMessagesProvider27ArticleHeaderViewController_isDisappearing])
      {
        return;
      }

      if (v2[OBJC_IVAR____TtC18ASMessagesProvider27ArticleHeaderViewController_isAppearing] == 1)
      {
        v8 = objc_opt_self();
        v9 = swift_allocObject();
        v9[2] = a1;
        v9[3] = a2;
        v9[4] = v3;
        v10 = swift_allocObject();
        *(v10 + 16) = sub_31169C;
        *(v10 + 24) = v9;
        aBlock[4] = sub_2EC28;
        aBlock[5] = v10;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1EB578;
        aBlock[3] = &unk_88D600;
        v11 = _Block_copy(aBlock);
        v12 = a1;
        v13 = v3;

        [v8 performWithoutAnimation:v11];
        _Block_release(v11);
        isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

        if ((isEscapingClosureAtFileLocation & 1) == 0)
        {
          return;
        }

        __break(1u);
        goto LABEL_19;
      }

      goto LABEL_14;
    }
  }

  type metadata accessor for RiverTodayCardCollectionViewCell();
  v15 = swift_dynamicCastClass();
  if (!v15)
  {
    v27 = [v2 view];
    if (v27)
    {
LABEL_15:
      v28 = v27;
      [v27 bounds];
      v30 = v29;
      v32 = v31;
      v34 = v33;
      v36 = v35;

      [a1 setFrame:{v30, v32, v34, v36}];
      return;
    }

    __break(1u);
LABEL_14:
    v27 = [v2 view];
    if (!v27)
    {
LABEL_20:
      __break(1u);
      return;
    }

    goto LABEL_15;
  }

  v16 = v15;
  *(v15 + OBJC_IVAR____TtC18ASMessagesProvider32RiverTodayCardCollectionViewCell_isDisappearing) = *(v3 + OBJC_IVAR____TtC18ASMessagesProvider27ArticleHeaderViewController_isDisappearing);
  v37 = a1;
  v17 = [v3 view];
  if (!v17)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v18 = v17;
  [v17 bounds];
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;

  [v16 setFrame:{v20, v22, v24, v26}];
}

double sub_311270(double a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = sub_7656C0();
  v8 = *(v7 - 8);
  *&v9 = __chkstk_darwin(v7).n128_u64[0];
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v3[OBJC_IVAR____TtC18ASMessagesProvider27ArticleHeaderViewController_isCardModeEnabled])
  {
    return a1;
  }

  v12 = [v3 traitCollection];
  v13 = sub_7699B0();
  type metadata accessor for ListTodayCardCollectionViewCell();
  if (!swift_dynamicCastClass())
  {

    goto LABEL_6;
  }

  ObjectType = swift_getObjectType();
  v15 = (*(a3 + 160))(ObjectType, a3);

  if (v15 != 6)
  {
LABEL_6:
    v16 = 1;
    goto LABEL_7;
  }

  v16 = 6;
LABEL_7:
  if (v13)
  {
    v17 = v16;
  }

  else
  {
    v17 = 5;
  }

  sub_30FF1C(v4, v11);
  v18 = swift_getObjectType();
  v19 = *&v4[OBJC_IVAR____TtC18ASMessagesProvider27ArticleHeaderViewController_todayCard];
  v20 = [v4 traitCollection];
  v21 = [v4 view];
  (*(a3 + 80))(v19, v17, 1, v11, v20, v21, v18, a3);

  (*(v8 + 8))(v11, v7);
  return a1;
}

id sub_3114E8(void *a1, int a2, id a3)
{
  result = [a3 view];
  if (result)
  {
    v5 = result;
    [result bounds];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;

    return [a1 setFrame:{v7, v9, v11, v13}];
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_31165C()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_3116B8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_3116E4()
{
  result = qword_94F5C8;
  if (!qword_94F5C8)
  {
    sub_762C30();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_94F5C8);
  }

  return result;
}

uint64_t sub_311744(uint64_t a1, uint64_t a2)
{
  v33 = a2;
  v31 = sub_758B40();
  v2 = *(v31 - 8);
  __chkstk_darwin(v31);
  v32 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_75F340();
  v4 = *(v30 - 8);
  __chkstk_darwin(v30);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_760280();
  v7 = *(v29 - 8);
  __chkstk_darwin(v29);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_7687B0();
  __chkstk_darwin(v10 - 8);
  v11 = sub_BD88(&unk_944FF0);
  __chkstk_darwin(v11 - 8);
  v13 = &v28 - v12;
  v14 = sub_BD88(&unk_93FD30);
  __chkstk_darwin(v14 - 8);
  v16 = &v28 - v15;
  v17 = sub_765490();
  __chkstk_darwin(v17);
  v40 = 0;
  v38 = 0u;
  v39 = 0u;
  (*(v19 + 104))(&v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0), enum case for FlowPage.gameCenterPlayerProfile(_:));
  v20 = sub_7570A0();
  (*(*(v20 - 8) + 56))(v16, 1, 1, v20);
  v21 = sub_759E30();
  (*(*(v21 - 8) + 56))(v13, 1, 1, v21);
  v22 = sub_762C20();
  if (v23)
  {
    v24 = &type metadata for String;
  }

  else
  {
    v22 = 0;
    v24 = 0;
    v36 = 0;
  }

  v34 = v22;
  v35 = v23;
  v37 = v24;
  sub_768790();
  (*(v7 + 104))(v9, enum case for FlowPresentationContext.infer(_:), v29);
  (*(v4 + 104))(v6, enum case for FlowAnimationBehavior.infer(_:), v30);
  (*(v2 + 104))(v32, enum case for FlowOrigin.inapp(_:), v31);
  sub_768CE0();
  sub_758B20();
  swift_allocObject();
  v25 = sub_758AD0();
  v26 = sub_72D7A8(v25, 1, v33);

  return v26;
}

char *sub_311C24(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v5 = OBJC_IVAR____TtC18ASMessagesProvider43ArcadeDownloadPackSuggestionsViewController_pageView;
  type metadata accessor for ArcadeDownloadPackSuggestionsPageView();
  *&v2[v5] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v6 = OBJC_IVAR____TtC18ASMessagesProvider43ArcadeDownloadPackSuggestionsViewController_primaryDoneButton;
  v7 = objc_opt_self();
  *&v2[v6] = [v7 boldButton];
  v8 = OBJC_IVAR____TtC18ASMessagesProvider43ArcadeDownloadPackSuggestionsViewController_secondaryDoneButton;
  *&v2[v8] = [objc_opt_self() linkButton];
  v9 = OBJC_IVAR____TtC18ASMessagesProvider43ArcadeDownloadPackSuggestionsViewController_primaryGetAllButton;
  *&v2[v9] = [v7 boldButton];
  v2[OBJC_IVAR____TtC18ASMessagesProvider43ArcadeDownloadPackSuggestionsViewController_getAllButtonWasTapped] = 0;
  v2[OBJC_IVAR____TtC18ASMessagesProvider43ArcadeDownloadPackSuggestionsViewController_purchasesAvailabilityStatus] = 3;
  *&v2[OBJC_IVAR____TtC18ASMessagesProvider43ArcadeDownloadPackSuggestionsViewController_presenter] = a1;
  v10 = *&v2[v5];
  swift_retain_n();
  v11 = v10;

  v12 = sub_312F58(a1, v11, a2, v2, &off_898DA8);
  sub_313118(&qword_94F640, v13, type metadata accessor for ArcadeDownloadPackSuggestionsViewController);
  v14 = v12;

  sub_764200();

  [*&v14[OBJC_IVAR____TtC18ASMessagesProvider43ArcadeDownloadPackSuggestionsViewController_primaryDoneButton] addTarget:v14 action:"didTapDoneButton" forControlEvents:64];
  [*&v14[OBJC_IVAR____TtC18ASMessagesProvider43ArcadeDownloadPackSuggestionsViewController_secondaryDoneButton] addTarget:v14 action:"didTapDoneButton" forControlEvents:64];
  [*&v14[OBJC_IVAR____TtC18ASMessagesProvider43ArcadeDownloadPackSuggestionsViewController_primaryGetAllButton] addTarget:v14 action:"didTapGetAllButtonWithSender:" forControlEvents:64];
  v15 = *(*&v14[OBJC_IVAR____TtC18ASMessagesProvider43ArcadeDownloadPackSuggestionsViewController_pageView] + OBJC_IVAR____TtC18ASMessagesProvider37ArcadeDownloadPackSuggestionsPageView_gamesView);
  v20[3] = ObjectType;
  v20[4] = &off_88D648;
  v16 = v15;

  v20[0] = v14;
  v17 = qword_9A0B40;
  swift_beginAccess();
  sub_313058(v20, v16 + v17);
  swift_endAccess();

  return v14;
}

void sub_311EE4()
{
  v0 = sub_7653A0();
  v7[3] = v0;
  v7[4] = sub_313118(&qword_947D00, 255, &type metadata accessor for Feature.iOS);
  v1 = sub_B1B4(v7);
  (*(*(v0 - 8) + 104))(v1, enum case for Feature.iOS.arcade_choose_your_favorites_brick_Future(_:), v0);
  LOBYTE(v0) = sub_765C30();
  sub_BEB8(v7);
  if (v0)
  {
    v2 = [objc_opt_self() defaultCenter];
    v3 = sub_763B40();
    sub_BD88(&unk_9498B0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_77B6D0;
    v7[0] = sub_763B50();
    v7[1] = v5;
    sub_76A6E0();
    *(inited + 96) = &type metadata for String;
    *(inited + 72) = 0xD000000000000017;
    *(inited + 80) = 0x80000000007DB040;
    sub_10E1F8(inited);
    swift_setDeallocating();
    sub_10A2C(inited + 32, &qword_940758);
    isa = sub_7690E0().super.isa;

    [v2 postNotificationName:v3 object:0 userInfo:isa];
  }
}

id sub_31219C(void *a1)
{
  v25 = a1;
  v2 = sub_768380();
  v28 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_7683C0();
  v6 = *(v5 - 8);
  v26 = v5;
  v27 = v6;
  __chkstk_darwin(v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_7683E0();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v25 - v14;
  v1[OBJC_IVAR____TtC18ASMessagesProvider43ArcadeDownloadPackSuggestionsViewController_getAllButtonWasTapped] = 1;
  sub_7641E0();
  sub_75A920();
  sub_768880();
  sub_75A8B0();
  v17 = v16;

  if (v17 <= 0.0)
  {
    return [v1 dismissViewControllerAnimated:1 completion:{0, v25}];
  }

  v18 = sub_7641B0();
  if (v18 == 2 || (v18 & 1) != 0)
  {
    return [v1 dismissViewControllerAnimated:1 completion:{0, v25}];
  }

  [v25 showsBusyIndicator];
  sub_12EA98();
  v25 = sub_769970();
  sub_7683D0();
  sub_768450();
  v20 = *(v10 + 8);
  v20(v12, v9);
  v21 = swift_allocObject();
  *(v21 + 16) = v1;
  aBlock[4] = sub_C5E80;
  aBlock[5] = v21;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23F0CC;
  aBlock[3] = &unk_88D680;
  v22 = _Block_copy(aBlock);
  v23 = v1;

  sub_7683A0();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_313118(&qword_9406E0, 255, &type metadata accessor for DispatchWorkItemFlags);
  sub_BD88(&qword_940350);
  sub_4C874();
  sub_76A5A0();
  v24 = v25;
  sub_769930();
  _Block_release(v22);

  (*(v28 + 8))(v4, v2);
  (*(v27 + 8))(v8, v26);
  return (v20)(v15, v9);
}

void sub_312650(uint64_t a1)
{
  v2 = v1;
  sub_5B2B7C(a1, *(v1 + OBJC_IVAR____TtC18ASMessagesProvider32ArcadeDownloadPackViewController_objectGraph));
  v4 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider43ArcadeDownloadPackSuggestionsViewController_primaryGetAllButton);
  v5 = sub_763630();
  if (v5)
  {
    sub_764C60();
    v7 = v6;

    if (v7)
    {
      v5 = sub_769210();
    }

    else
    {
      v5 = 0;
    }
  }

  [v4 setTitle:v5 forState:0];

  v8 = *(v2 + OBJC_IVAR____TtC18ASMessagesProvider43ArcadeDownloadPackSuggestionsViewController_primaryDoneButton);
  v9 = sub_769210();
  [v8 setAccessibilityIdentifier:v9];

  v10 = *(v2 + OBJC_IVAR____TtC18ASMessagesProvider43ArcadeDownloadPackSuggestionsViewController_secondaryDoneButton);
  v11 = sub_769210();
  [v10 setAccessibilityIdentifier:v11];

  v12 = sub_769210();
  [v4 setAccessibilityIdentifier:v12];

  sub_763670();
  if (!v13)
  {
    sub_763640();
    v14 = sub_764C60();
    v16 = v15;

    sub_312830(a1, v14, v16);
  }

  sub_6B1A0();
}

void sub_312830(uint64_t a1, uint64_t a2, NSString a3)
{
  v5 = sub_BD88(&qword_94F650);
  __chkstk_darwin(v5);
  v7 = &v20 - v6;
  v8 = sub_764660();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *&v3[OBJC_IVAR____TtC18ASMessagesProvider43ArcadeDownloadPackSuggestionsViewController_primaryDoneButton];
  v21 = v3;
  if (a3)
  {
    v12 = sub_769210();
  }

  else
  {
    v12 = 0;
  }

  [v20 setTitle:v12 forState:{0, v20}];

  v13 = *&v21[OBJC_IVAR____TtC18ASMessagesProvider43ArcadeDownloadPackSuggestionsViewController_secondaryDoneButton];
  if (a3)
  {
    a3 = sub_769210();
  }

  [v13 setTitle:a3 forState:0];

  sub_763660();
  v14 = sub_763630();
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
    sub_10A2C(v7, &qword_94F650);
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
    [v18 addButton:*&v17[OBJC_IVAR____TtC18ASMessagesProvider43ArcadeDownloadPackSuggestionsViewController_primaryGetAllButton]];

    v20 = v13;
  }

LABEL_14:
  v19 = [v21 buttonTray];
  [v19 addButton:v20];
}

uint64_t sub_312B20(unsigned __int8 a1)
{
  v2 = v1;
  result = sub_7641F0();
  if (!result)
  {
    return result;
  }

  v5 = result;
  v6 = sub_763670();
  if (!v7)
  {
    goto LABEL_21;
  }

  v8 = v7;
  v9 = v1[OBJC_IVAR____TtC18ASMessagesProvider43ArcadeDownloadPackSuggestionsViewController_purchasesAvailabilityStatus];
  if (v9 != 3 && v9 == a1)
  {
  }

  else
  {
    v11 = v6;
    v1[OBJC_IVAR____TtC18ASMessagesProvider43ArcadeDownloadPackSuggestionsViewController_purchasesAvailabilityStatus] = a1;
    v12 = [v1 buttonTray];
    [v12 removeAllButtons];

    if (a1)
    {
      if (a1 == 1)
      {
        if ((v2[OBJC_IVAR____TtC18ASMessagesProvider43ArcadeDownloadPackSuggestionsViewController_getAllButtonWasTapped] & 1) == 0)
        {
          sub_312830(v5, v11, v8);
        }
      }

      else if (v2[OBJC_IVAR____TtC18ASMessagesProvider43ArcadeDownloadPackSuggestionsViewController_getAllButtonWasTapped] == 1)
      {

        v16 = [v2 buttonTray];
        [v16 addButton:*&v2[OBJC_IVAR____TtC18ASMessagesProvider43ArcadeDownloadPackSuggestionsViewController_primaryGetAllButton]];

        v17 = [v2 buttonTray];
        [v17 addButton:*&v2[OBJC_IVAR____TtC18ASMessagesProvider43ArcadeDownloadPackSuggestionsViewController_secondaryDoneButton]];
      }

      else
      {
        v18 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider43ArcadeDownloadPackSuggestionsViewController_primaryDoneButton];
        v19 = sub_769210();

        [v18 setTitle:v19 forState:0];

        v20 = [v2 buttonTray];
        [v20 addButton:v18];
      }

LABEL_21:
    }

    sub_763640();
    v13 = sub_764C60();
    v15 = v14;

    sub_312830(v5, v13, v15);
  }
}

void sub_312DA8()
{

  v1 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider43ArcadeDownloadPackSuggestionsViewController_primaryGetAllButton);
}

id sub_312F58(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, uint64_t a5)
{
  *&a4[OBJC_IVAR____TtC18ASMessagesProvider32ArcadeDownloadPackViewController_overlayViewController] = 0;
  *&a4[OBJC_IVAR____TtC18ASMessagesProvider32ArcadeDownloadPackViewController_presenter] = a1;
  *&a4[OBJC_IVAR____TtC18ASMessagesProvider32ArcadeDownloadPackViewController_objectGraph] = a3;
  v7 = &a4[OBJC_IVAR____TtC18ASMessagesProvider32ArcadeDownloadPackViewController_pageView];
  *v7 = a2;
  *(v7 + 1) = a5;
  v8 = &a4[OBJC_IVAR____TtC18ASMessagesProvider32ArcadeDownloadPackViewController_lifecycleObserver];
  *(v8 + 3) = sub_75A190();
  *(v8 + 4) = &protocol witness table for BasePresenter;
  *v8 = a1;
  swift_retain_n();

  v9 = sub_769210();
  v12.receiver = a4;
  v12.super_class = type metadata accessor for ArcadeDownloadPackViewController();
  v10 = objc_msgSendSuper2(&v12, "initWithTitle:detailText:icon:contentLayout:", v9, 0, 0, 2);

  return v10;
}

uint64_t sub_313058(uint64_t a1, uint64_t a2)
{
  v4 = sub_BD88(&qword_94F648);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_3130C8()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_313100(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_313118(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_313168()
{
  v0 = sub_7664A0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_766CA0();
  sub_161DC(v4, qword_94F658);
  sub_BE38(v4, qword_94F658);
  if (qword_93DA70 != -1)
  {
    swift_once();
  }

  v5 = sub_7666D0();
  v6 = sub_BE38(v5, qword_99F748);
  (*(*(v5 - 8) + 16))(v3, v6, v5);
  (*(v1 + 104))(v3, enum case for FontSource.useCase(_:), v0);
  v10[3] = v0;
  v10[4] = &protocol witness table for FontSource;
  v7 = sub_B1B4(v10);
  (*(v1 + 16))(v7, v3, v0);
  sub_766CB0();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_31333C()
{
  v0 = sub_7664A0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v11[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_766CA0();
  sub_161DC(v4, qword_94F670);
  sub_BE38(v4, qword_94F670);
  *v3 = UIFontTextStyleCaption2;
  *(v3 + 2) = 0;
  v5 = enum case for FontUseCase.preferredFont(_:);
  v6 = sub_7666D0();
  (*(*(v6 - 8) + 104))(v3, v5, v6);
  (*(v1 + 104))(v3, enum case for FontSource.useCase(_:), v0);
  v11[3] = v0;
  v11[4] = &protocol witness table for FontSource;
  v7 = sub_B1B4(v11);
  (*(v1 + 16))(v7, v3, v0);
  v8 = UIFontTextStyleCaption2;
  sub_766CB0();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_3134F8()
{
  v2._object = 0x80000000007DB110;
  v2._countAndFlagsBits = 0xD000000000000014;
  v3._countAndFlagsBits = 0;
  v3._object = 0xE000000000000000;
  result = sub_75B750(v2, v3);
  qword_94F688 = result;
  unk_94F690 = v1;
  return result;
}

unint64_t sub_31353C(unint64_t a1, uint64_t a2)
{
  v3 = v2;
  v68 = a2;
  v5 = sub_7652D0();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v56 = v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = v48 - v9;
  __chkstk_darwin(v11);
  v70 = v48 - v12;
  result = sub_316A78(a1);
  if (result >> 62)
  {
    goto LABEL_71;
  }

  v14 = *(&dword_10 + (result & 0xFFFFFFFFFFFFFF8));
LABEL_3:
  v66 = result;
  v64 = v14;
  v57 = a1;
  if (v14)
  {
    if ((result & 0xC000000000000001) != 0)
    {
      sub_76A770();
    }

    else
    {
      if (!*(&dword_10 + (result & 0xFFFFFFFFFFFFFF8)))
      {
        __break(1u);
        return result;
      }
    }

    v15 = sub_7653B0();
    v72 = v15;
    v73 = sub_317694(&qword_93F9B0, &type metadata accessor for Feature);
    v16 = sub_B1B4(v71);
    (*(*(v15 - 8) + 104))(v16, enum case for Feature.voyager_bundles_2025A(_:), v15);
    LOBYTE(v15) = sub_765C30();
    sub_BEB8(v71);
    if (v15)
    {
      v17 = v10;
      v18 = v5;
      sub_765330();
      v19 = OBJC_IVAR____TtC18ASMessagesProvider10BundleView_backgroundArtworkView;
      v20 = *&v3[OBJC_IVAR____TtC18ASMessagesProvider10BundleView_backgroundArtworkView];
      sub_7652E0();
      sub_7591B0();
      [v20 setContentMode:sub_765140()];
      sub_75DEF0();
      sub_7591F0();
      if (!sub_7651A0())
      {
        sub_BE70(0, &qword_93E540);
        sub_76A030();
      }

      sub_759070();

      [*&v3[v19] setContentMode:2];
      v21 = *&v3[v19];
      sub_759210();
      sub_317694(&qword_945810, &type metadata accessor for ArtworkView);
      v22 = v21;
      sub_75A050();

      a1 = v57;
      v5 = v18;
      v10 = v17;
    }

    else
    {
    }
  }

  v23 = sub_6F4F74();
  if (a1 >> 62)
  {
    result = sub_76A860();
    if (result)
    {
      goto LABEL_14;
    }
  }

  else
  {
    result = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
    if (result)
    {
LABEL_14:
      v62 = a1 & 0xFFFFFFFFFFFFFF8;
      v63 = a1 & 0xC000000000000001;
      v24 = v23 & 0xFFFFFFFFFFFFFF8;
      if (v23 < 0)
      {
        v25 = v23;
      }

      else
      {
        v25 = v23 & 0xFFFFFFFFFFFFFF8;
      }

      v48[1] = v25;
      v60 = v23 & 0xC000000000000001;
      v51 = enum case for Artwork.Style.roundedRect(_:);
      v50 = (v6 + 104);
      v67 = (v6 + 8);
      v49 = enum case for Feature.voyager_bundles_2025A(_:);
      v26 = 4;
      v61 = v23 >> 62;
      v55 = v3;
      v58 = v23 & 0xFFFFFFFFFFFFFF8;
      v59 = result;
      v54 = v5;
      v53 = v10;
      v52 = v23;
      do
      {
        v27 = v26 - 4;
        if (v63)
        {
          result = sub_76A770();
          v6 = result;
          v28 = v26 - 3;
          if (__OFADD__(v27, 1))
          {
            goto LABEL_65;
          }
        }

        else
        {
          if (v27 >= *(v62 + 16))
          {
            goto LABEL_66;
          }

          v6 = *(a1 + 8 * v26);

          v28 = v26 - 3;
          if (__OFADD__(v27, 1))
          {
LABEL_65:
            __break(1u);
LABEL_66:
            __break(1u);
LABEL_67:
            __break(1u);
LABEL_68:
            __break(1u);
LABEL_69:
            __break(1u);
LABEL_70:
            __break(1u);
LABEL_71:
            v47 = result;
            v14 = sub_76A860();
            result = v47;
            goto LABEL_3;
          }
        }

        if (v61)
        {
          result = sub_76A860();
          if (v27 == result)
          {
LABEL_40:

            break;
          }
        }

        else
        {
          result = *(v24 + 16);
          if (v27 == result)
          {
            goto LABEL_40;
          }
        }

        v69 = v28;
        if (v60)
        {
          v29 = sub_76A770();
        }

        else
        {
          if (v27 >= *(v24 + 16))
          {
            goto LABEL_69;
          }

          v29 = *(v23 + 8 * v26);
        }

        v30 = v29;
        if (sub_764EE0())
        {
          v31 = v70;
          sub_7652E0();
          v32 = v56;
          (*v50)(v56, v51, v5);
          sub_765290();
          v33 = *v67;
          (*v67)(v32, v5);
          v33(v31, v5);
          v34 = [v3 traitCollection];
          v35 = sub_7653B0();
          v72 = v35;
          v73 = sub_317694(&qword_93F9B0, &type metadata accessor for Feature);
          v36 = sub_B1B4(v71);
          (*(*(v35 - 8) + 104))(v36, v49, v35);
          LOBYTE(v35) = sub_765C30();
          sub_BEB8(v71);
          v65 = v33;
          if (v35)
          {
            sub_7699D0();
          }

          v10 = v53;
          sub_765280();
          v37 = OBJC_IVAR____TtC18ASMessagesProvider15BundleChildView_icon;
          [*&v30[OBJC_IVAR____TtC18ASMessagesProvider15BundleChildView_icon] contentMode];
          sub_765330();
          v38 = *&v30[v37];
          sub_7652E0();
          sub_7591B0();
          [v38 setContentMode:sub_765140()];
          sub_75DEF0();
          sub_7591F0();
          if (!sub_7651A0())
          {
            sub_BE70(0, &qword_93E540);
            sub_76A030();
          }

          sub_759070();

          sub_759210();
          sub_317694(&qword_945810, &type metadata accessor for ArtworkView);
          sub_75A050();

          v5 = v54;
          (v65)(v10, v54);
          v3 = v55;
          a1 = v57;
          v23 = v52;
        }

        else
        {
        }

        ++v26;
        v24 = v58;
      }

      while (v69 != v59);
    }
  }

  result = sub_6F4F8C();
  v69 = result;
  if (!v64)
  {
    goto LABEL_64;
  }

  v67 = (v66 & 0xC000000000000001);
  v65 = v66 & 0xFFFFFFFFFFFFFF8;
  v5 = v69 & 0xFFFFFFFFFFFFFF8;
  if (v69 < 0)
  {
    v39 = v69;
  }

  else
  {
    v39 = v69 & 0xFFFFFFFFFFFFFF8;
  }

  v61 = v39;
  v62 = v69 & 0xC000000000000001;
  v40 = 4;
  v63 = v69 >> 62;
  while (1)
  {
    v43 = v40 - 4;
    if (v67)
    {
      result = sub_76A770();
      a1 = v40 - 3;
      if (__OFADD__(v43, 1))
      {
        goto LABEL_67;
      }
    }

    else
    {
      if (v43 >= *(v65 + 16))
      {
        goto LABEL_68;
      }

      a1 = v40 - 3;
      if (__OFADD__(v43, 1))
      {
        goto LABEL_67;
      }
    }

    if (v63)
    {
      break;
    }

    result = *(v5 + 16);
    if (v43 == result)
    {
      goto LABEL_63;
    }

LABEL_52:
    if (v62)
    {
      v44 = sub_76A770();
    }

    else
    {
      if (v43 >= *(v5 + 16))
      {
        goto LABEL_70;
      }

      v44 = *(v69 + 8 * v40);
    }

    v3 = v44;
    v45 = OBJC_IVAR____TtC18ASMessagesProvider22BorderedScreenshotView_artworkView;
    [*&v44[OBJC_IVAR____TtC18ASMessagesProvider22BorderedScreenshotView_artworkView] contentMode];
    v10 = sub_765330();
    v46 = *&v3[v45];
    v6 = v70;
    sub_7652E0();
    sub_7591B0();
    [v46 setContentMode:sub_765140()];
    sub_75DEF0();
    sub_7591F0();
    if (!sub_7651A0())
    {
      sub_BE70(0, &qword_93E540);
      sub_76A030();
    }

    sub_759070();

    v41 = *&v3[v45];
    sub_759210();
    sub_317694(&qword_945810, &type metadata accessor for ArtworkView);
    v42 = v41;
    sub_75A050();

    ++v40;
    if (a1 == v64)
    {
      goto LABEL_64;
    }
  }

  result = sub_76A860();
  if (v43 != result)
  {
    goto LABEL_52;
  }

LABEL_63:

LABEL_64:
}

void sub_314024()
{
  v1 = [*(v0 + OBJC_IVAR____TtC18ASMessagesProvider10BundleView_itemStack) subviews];
  sub_BE70(0, &qword_93E550);
  v2 = sub_769460();

  if (!(v2 >> 62))
  {
    v3 = *(&dword_10 + (v2 & 0xFFFFFFFFFFFFFF8));
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_15:

    goto LABEL_17;
  }

  v3 = sub_76A860();
  if (!v3)
  {
    goto LABEL_15;
  }

LABEL_3:
  if (v3 >= 1)
  {
    for (i = 0; i != v3; ++i)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v7 = sub_76A770();
      }

      else
      {
        v7 = *(v2 + 8 * i + 32);
      }

      v8 = v7;
      type metadata accessor for BundleChildView();
      v9 = swift_dynamicCastClass();
      if (v9)
      {
        v5 = *(v9 + OBJC_IVAR____TtC18ASMessagesProvider15BundleChildView_icon);
        v13.value.super.isa = 0;
        v13.is_nil = 0;
        sub_7591D0(v13, v6);

        swift_beginAccess();
        sub_BD88(&qword_94F700);
        sub_767470();
        swift_endAccess();
      }

      else
      {
        type metadata accessor for IconSilhouetteView();
        v10 = swift_dynamicCastClass();
        if (v10)
        {
          v11 = v10;
          [*(v10 + OBJC_IVAR____TtC18ASMessagesProvider18IconSilhouetteView_titleLabel) setText:0];
          [v11 removeFromSuperview];
        }
      }
    }

LABEL_17:

    return;
  }

  __break(1u);
}

void sub_314254()
{
  v1 = [*(v0 + OBJC_IVAR____TtC18ASMessagesProvider10BundleView_screenshotStack) subviews];
  sub_BE70(0, &qword_93E550);
  v2 = sub_769460();

  if (!(v2 >> 62))
  {
    v3 = *(&dword_10 + (v2 & 0xFFFFFFFFFFFFFF8));
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_13:

    goto LABEL_15;
  }

  v3 = sub_76A860();
  if (!v3)
  {
    goto LABEL_13;
  }

LABEL_3:
  if (v3 >= 1)
  {
    for (i = 0; i != v3; ++i)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v5 = sub_76A770();
      }

      else
      {
        v5 = *(v2 + 8 * i + 32);
      }

      v6 = v5;
      type metadata accessor for BorderedScreenshotView();
      v7 = swift_dynamicCastClass();
      if (v7)
      {
        v8 = *(v7 + OBJC_IVAR____TtC18ASMessagesProvider22BorderedScreenshotView_artworkView);
        v11.value.super.isa = 0;
        v11.is_nil = 0;
        sub_7591D0(v11, v9);

        swift_beginAccess();
        sub_BD88(&qword_94F708);
        sub_767470();
        swift_endAccess();
      }
    }

LABEL_15:

    return;
  }

  __break(1u);
}

void sub_314438(unint64_t a1)
{
  v2 = v1;
  v4 = sub_766690();
  v84 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v75 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_314024();
  sub_314254();
  v7 = sub_7653B0();
  v92 = v7;
  v8 = sub_317694(&qword_93F9B0, &type metadata accessor for Feature);
  v93 = v8;
  v9 = sub_B1B4(v91);
  v10 = enum case for Feature.voyager_bundles_2025A(_:);
  v11 = *(v7 - 8);
  v12 = *(v11 + 104);
  v13 = v11 + 104;
  v12(v9, enum case for Feature.voyager_bundles_2025A(_:), v7);
  v14 = sub_765C30();
  sub_BEB8(v91);
  v15 = a1;
  v16 = 6;
  if ((v14 & 1) == 0)
  {
    v16 = 4;
  }

  v80 = v13;
  if ((a1 & 0x8000000000000000) != 0 || (a1 & 0x4000000000000000) != 0)
  {
    goto LABEL_62;
  }

  v17 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
  while (1)
  {
    v81 = v17;
    v82 = v16;
    v79 = v16 - 1;
    v18 = v16 >= v17 ? v17 : v16 - 1;
    v19 = [v2 traitCollection];
    LODWORD(v86) = sub_317574(a1);

    if ((v18 & 0x8000000000000000) == 0)
    {
      break;
    }

    __break(1u);
LABEL_62:
    a1 = v15;
    v74 = v16;
    v17 = sub_76A860();
    v16 = v74;
  }

  v75 = v12;
  v76 = v10;
  v77 = v8;
  v78 = v7;
  v83 = v6;
  v85 = v4;
  v87 = a1;
  v88 = v2;
  v20 = a1;
  if (v18)
  {
    v21 = a1 & 0xC000000000000001;
    if ((a1 & 0xC000000000000001) == 0 && v18 > *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)))
    {
      __break(1u);
      goto LABEL_68;
    }

    v22 = 0;
    v23 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider10BundleView_itemStack];
    do
    {
      if (v21)
      {
        sub_76A770();
      }

      else
      {
      }

      swift_beginAccess();
      sub_BD88(&qword_94F700);
      sub_767450();
      swift_endAccess();
      v25 = v89;
      v26 = *&v89[OBJC_IVAR____TtC18ASMessagesProvider15BundleChildView_titleLabel];
      sub_764EF0();
      if (v27)
      {
        v24 = sub_769210();
      }

      else
      {
        v24 = 0;
      }

      ++v22;
      [v26 setText:{v24, v75}];

      v25[OBJC_IVAR____TtC18ASMessagesProvider15BundleChildView_titleStyle] = v86;
      [v25 setNeedsLayout];
      [v23 addSubview:v25];

      v20 = v87;
      v2 = v88;
    }

    while (v18 != v22);
  }

  v28 = v85;
  v29 = v83;
  if (v82 < v81)
  {
    v30 = v81 - v79;
    v31 = [objc_allocWithZone(type metadata accessor for IconSilhouetteView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
    v32 = [v2 traitCollection];
    v33 = v78;
    v92 = v78;
    v93 = v77;
    v34 = sub_B1B4(v91);
    v75(v34, v76, v33);
    v35 = sub_765C30();
    sub_BEB8(v91);
    if (v35)
    {
      v36 = sub_7699D0();

      v37 = 62.0;
      if (v36)
      {
        v37 = 32.0;
      }
    }

    else
    {

      v37 = 62.0;
    }

    *&v31[OBJC_IVAR____TtC18ASMessagesProvider18IconSilhouetteView_preferredIconWidth] = v37;
    v38 = *&v31[OBJC_IVAR____TtC18ASMessagesProvider18IconSilhouetteView_titleLabel];
    v94._object = 0x80000000007DB130;
    v94._countAndFlagsBits = 0xD000000000000027;
    v95._countAndFlagsBits = 0;
    v95._object = 0xE000000000000000;
    sub_761130(v94, v30, v95);
    v39 = sub_769210();

    [v38 setText:v39];

    [*&v2[OBJC_IVAR____TtC18ASMessagesProvider10BundleView_itemStack] addSubview:v31];
    v20 = v87;
  }

  v40 = sub_316A78(v20);
  v41 = v40;
  v42 = v40 >> 62;
  if (v40 >> 62)
  {
    v43 = sub_76A860();
    v44 = &unk_99C000;
    if (!v43)
    {
      goto LABEL_34;
    }
  }

  else
  {
    v43 = *(&dword_10 + (v40 & 0xFFFFFFFFFFFFFF8));
    v44 = &unk_99C000;
    if (!v43)
    {
      goto LABEL_34;
    }
  }

  if ((v41 & 0xC000000000000001) != 0)
  {
    goto LABEL_66;
  }

  if (!*(&dword_10 + (v41 & 0xFFFFFFFFFFFFFF8)))
  {
LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
    goto LABEL_70;
  }

  while (1)
  {
    sub_765260();
    sub_7666A0();

    v45 = *(v44 + 310);
    swift_beginAccess();
    (*(v84 + 40))(&v2[v45], v29, v28);
    swift_endAccess();
LABEL_34:
    v44 = *(v44 + 310);
    swift_beginAccess();
    v46 = v84;
    (*(v84 + 16))(v29, &v44[v2], v28);
    v47 = sub_7665E0();
    (*(v46 + 8))(v29, v28);
    v48 = 3;
    if (v47)
    {
      v48 = 5;
    }

    v49 = v43 >= v48 ? v48 : v43;
    v50 = v43 >= 0 ? v49 : v48;
    if (v42)
    {
      if (sub_76A860() < 0)
      {
        goto LABEL_69;
      }

      v51 = sub_76A860();
    }

    else
    {
      v51 = *(&dword_10 + (v41 & 0xFFFFFFFFFFFFFF8));
    }

    if (v51 >= v50)
    {
      break;
    }

    __break(1u);
LABEL_66:
    sub_76A770();
  }

  if ((v41 & 0xC000000000000001) != 0 && v50)
  {
    sub_765390();

    v52 = 0;
    do
    {
      v53 = v52 + 1;
      sub_76A750(v52);
      v52 = v53;
    }

    while (v50 != v53);
  }

  else
  {
  }

  if (v42)
  {
    v82 = sub_76A870();
    v55 = v56;
    v54 = v57;
    v59 = v58;

    v50 = v59 >> 1;
  }

  else
  {
    v54 = 0;
    v82 = v41 & 0xFFFFFFFFFFFFFF8;
    v55 = (v41 & 0xFFFFFFFFFFFFFF8) + 32;
  }

  v60 = v50 - v54;
  v61 = v88;
  if (v50 == v54)
  {
    goto LABEL_60;
  }

  if (v50 > v54)
  {
    v61 = v88;
    v86 = *&v88[OBJC_IVAR____TtC18ASMessagesProvider10BundleView_screenshotStack];
    v87 = OBJC_IVAR____TtC18ASMessagesProvider10BundleView_screenshotReusePool;
    v62 = v83;
    v63 = (v84 + 40);
    v64 = v55 + 8 * v54;
    do
    {
      v64 += 8;
      swift_beginAccess();

      sub_BD88(&qword_94F708);
      sub_767450();
      swift_endAccess();
      v65 = v90;
      sub_765260();
      sub_7666A0();
      v66 = &v65[OBJC_IVAR____TtC18ASMessagesProvider22BorderedScreenshotView_displayConfiguration];
      swift_beginAccess();
      v67 = type metadata accessor for ScreenshotDisplayConfiguration();
      (*v63)(&v66[*(v67 + 40)], v62, v28);
      swift_endAccess();
      v68 = OBJC_IVAR____TtC18ASMessagesProvider22BorderedScreenshotView_artworkView;
      v69 = *&v65[OBJC_IVAR____TtC18ASMessagesProvider22BorderedScreenshotView_artworkView];
      sub_75CD10();

      v70 = *&v65[v68];
      v28 = v85;
      v71 = *(v66 + 6);
      v72 = v70;
      v73 = v71;
      sub_75CD00();

      [v65 setNeedsLayout];
      [v86 addSubview:v65];

      --v60;
    }

    while (v60);
LABEL_60:
    swift_unknownObjectRelease();
    [v61 setNeedsLayout];
    return;
  }

LABEL_70:
  __break(1u);
}

id sub_314D78@<X0>(uint64_t (*a1)(void)@<X0>, void *a2@<X8>)
{
  result = [objc_allocWithZone(a1(0)) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *a2 = result;
  return result;
}

char *sub_314DCC(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v52 = sub_BD88(&qword_94F6F0);
  __chkstk_darwin(v52);
  v51[1] = v51 - v10;
  v51[0] = sub_BD88(&qword_94F6D8);
  __chkstk_darwin(v51[0]);
  v11 = sub_760AD0();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_BD88(&unk_93E530);
  __chkstk_darwin(v15 - 8);
  v17 = v51 - v16;
  v18 = OBJC_IVAR____TtC18ASMessagesProvider10BundleView_iconStyle;
  v19 = enum case for Artwork.Style.roundedRect(_:);
  v20 = sub_7652D0();
  (*(*(v20 - 8) + 104))(&v5[v18], v19, v20);
  v21 = OBJC_IVAR____TtC18ASMessagesProvider10BundleView_titleLabel;
  if (qword_93DA70 != -1)
  {
    swift_once();
  }

  v22 = sub_7666D0();
  v23 = sub_BE38(v22, qword_99F748);
  v24 = *(v22 - 8);
  (*(v24 + 16))(v17, v23, v22);
  (*(v24 + 56))(v17, 0, 1, v22);
  (*(v12 + 104))(v14, enum case for DirectionalTextAlignment.none(_:), v11);
  v25 = objc_allocWithZone(sub_75BB20());
  *&v5[v21] = sub_75BB10();
  v26 = OBJC_IVAR____TtC18ASMessagesProvider10BundleView_itemStack;
  v27 = [objc_allocWithZone(sub_BD88(&qword_94F710)) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v27[qword_9583D8] = 0;
  *&v27[qword_9583E0] = 1;
  *&v27[qword_9583E8] = 0x4028000000000000;
  v27[qword_9583F0] = 1;
  *&v5[v26] = v27;
  v28 = OBJC_IVAR____TtC18ASMessagesProvider10BundleView_screenshotStack;
  v29 = [objc_allocWithZone(sub_BD88(&qword_94F718)) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v29[qword_9583D8] = 0;
  *&v29[qword_9583E0] = 1;
  *&v29[qword_9583E8] = 0x4028000000000000;
  v29[qword_9583F0] = 1;
  *&v5[v28] = v29;
  type metadata accessor for BundleChildView();
  sub_7667C0();
  sub_16194(&qword_94F6E0, &qword_94F6D8);
  sub_767480();
  type metadata accessor for BorderedScreenshotView();
  sub_7667C0();
  sub_16194(&qword_94F6F8, &qword_94F6F0);
  sub_767480();
  v30 = OBJC_IVAR____TtC18ASMessagesProvider10BundleView_gradientBlurView;
  *&v5[v30] = [objc_allocWithZone(type metadata accessor for AppBundleGradientBackgroundView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v31 = OBJC_IVAR____TtC18ASMessagesProvider10BundleView_backgroundArtworkView;
  sub_759210();
  *&v5[v31] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  sub_7666A0();
  v32 = type metadata accessor for BundleView();
  v56.receiver = v5;
  v56.super_class = v32;
  v33 = objc_msgSendSuper2(&v56, "initWithFrame:", a1, a2, a3, a4);
  sub_BE70(0, &qword_93E540);
  v34 = v33;
  v35 = sub_76A070();
  [v34 setBackgroundColor:v35];

  [v34 _setCornerRadius:4.0];
  [v34 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];
  v36 = sub_7653B0();
  v54 = v36;
  v37 = sub_317694(&qword_93F9B0, &type metadata accessor for Feature);
  v55 = v37;
  v38 = sub_B1B4(v53);
  v39 = enum case for Feature.voyager_bundles_2025A(_:);
  v40 = *(*(v36 - 8) + 104);
  v40(v38, enum case for Feature.voyager_bundles_2025A(_:), v36);
  v41 = sub_765C30();
  sub_BEB8(v53);
  if (v41)
  {
    v42 = OBJC_IVAR____TtC18ASMessagesProvider10BundleView_backgroundArtworkView;
    [*&v34[OBJC_IVAR____TtC18ASMessagesProvider10BundleView_backgroundArtworkView] setAccessibilityIgnoresInvertColors:1];
    [*&v34[v42] setContentMode:2];
    [v34 addSubview:*&v34[v42]];
    [v34 addSubview:*&v34[OBJC_IVAR____TtC18ASMessagesProvider10BundleView_gradientBlurView]];
  }

  v43 = OBJC_IVAR____TtC18ASMessagesProvider10BundleView_titleLabel;
  v44 = qword_93CA38;
  v45 = *&v34[OBJC_IVAR____TtC18ASMessagesProvider10BundleView_titleLabel];
  if (v44 != -1)
  {
    swift_once();
  }

  v46 = sub_769210();
  [v45 setText:v46];

  [*&v34[v43] setTextAlignment:1];
  [v34 addSubview:*&v34[v43]];
  v47 = OBJC_IVAR____TtC18ASMessagesProvider10BundleView_screenshotStack;
  [*&v34[OBJC_IVAR____TtC18ASMessagesProvider10BundleView_screenshotStack] setClipsToBounds:1];
  v54 = v36;
  v55 = v37;
  v48 = sub_B1B4(v53);
  v40(v48, v39, v36);
  v49 = sub_765C30();
  sub_BEB8(v53);
  if (v49)
  {
    [v34 addSubview:*&v34[v47]];
  }

  [v34 addSubview:*&v34[OBJC_IVAR____TtC18ASMessagesProvider10BundleView_itemStack]];
  [v34 setClipsToBounds:1];

  return v34;
}

id sub_315638()
{
  v1 = v0;
  v46 = sub_766690();
  v2 = *(v46 - 8);
  __chkstk_darwin(v46);
  v4 = &v46 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_76A920();
  v5 = *(v48 - 8);
  __chkstk_darwin(v48);
  v7 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for BundleView();
  v49.receiver = v0;
  v49.super_class = v8;
  objc_msgSendSuper2(&v49, "layoutSubviews");
  v9 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider10BundleView_gradientBlurView];
  [v1 frame];
  [v9 setFrame:{0.0, 0.0}];

  v10 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider10BundleView_backgroundArtworkView];
  [v1 frame];
  sub_759170();

  sub_75D650();
  v11 = CGRectGetWidth(v50) + -16.0;
  v12 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider10BundleView_titleLabel];
  sub_75D650();
  [v12 sizeThatFits:{v11, CGRectGetHeight(v51)}];
  v14 = v13;
  v15 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider10BundleView_itemStack];
  sub_75D650();
  v47 = v15;
  [v15 sizeThatFits:{v16, v17}];
  v19 = v18;
  v21 = v20;
  v22 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider10BundleView_screenshotStack];
  v23 = [v22 superview];
  if (v23)
  {

    sub_75D650();
    v24 = CGRectGetHeight(v52) - v14 - v21 + -40.0;
    if (qword_93CA30 != -1)
    {
      swift_once();
    }

    v25 = sub_766CA0();
    sub_BE38(v25, qword_94F670);
    v26 = [v1 traitCollection];
    sub_766470();
    sub_766C70();
    v28 = v27;

    (*(v5 + 8))(v7, v48);
    v29 = v24 - v28;
    v30 = OBJC_IVAR____TtC18ASMessagesProvider10BundleView_screenshotAspectRatio;
    swift_beginAccess();
    v31 = &v1[v30];
    v32 = v46;
    (*(v2 + 16))(v4, v31, v46);
    sub_766650();
    v34 = v33;
    (*(v2 + 8))(v4, v32);
    v35 = v34 * -0.5;
    sub_75D650();
    v36 = v34 + CGRectGetWidth(v53);
    [v22 setFrame:{v35, 20.0, v36, v29}];
    v54.origin.y = 20.0;
    v54.origin.x = v35;
    v54.size.width = v36;
    v54.size.height = v29;
    v37 = CGRectGetMaxY(v54) + 20.0;
  }

  else
  {
    v37 = 20.0;
  }

  sub_75D650();
  [v12 setFrame:{CGRectGetMidX(v55) + v11 * -0.5, v37, v11, v14}];
  sub_75D650();
  MidX = CGRectGetMidX(v56);
  [v12 lastBaselineMaxY];
  v40 = v39;
  if (qword_93CA28 != -1)
  {
    swift_once();
  }

  v41 = sub_766CA0();
  sub_BE38(v41, qword_94F658);
  v42 = [v1 traitCollection];
  sub_766470();
  sub_766C70();
  v44 = v43;

  (*(v5 + 8))(v7, v48);
  return [v47 setFrame:{MidX + v19 * -0.5, v40 + v44, v19, v21}];
}

void *sub_315DB4(unint64_t a1)
{
  if (a1 >> 62)
  {
LABEL_15:
    sub_76A860();
    sub_76A7C0();
    v2 = sub_76A860();
    if (v2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    sub_76A7C0();
    v2 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
    if (v2)
    {
LABEL_3:
      v3 = 0;
      do
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          sub_76A770();
          v4 = v3 + 1;
          if (__OFADD__(v3, 1))
          {
LABEL_12:
            __break(1u);
LABEL_13:

            return 0;
          }
        }

        else
        {
          if (v3 >= *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)))
          {
            __break(1u);
            goto LABEL_15;
          }

          v4 = v3 + 1;
          if (__OFADD__(v3, 1))
          {
            goto LABEL_12;
          }
        }

        sub_75BD00();
        if (!swift_dynamicCastClass())
        {
          goto LABEL_13;
        }

        sub_76A7A0();
        sub_76A7D0();
        sub_76A7E0();
        sub_76A7B0();
        ++v3;
      }

      while (v4 != v2);
    }
  }

  return _swiftEmptyArrayStorage;
}

void *sub_315F24(uint64_t a1)
{
  v6 = _swiftEmptyArrayStorage;
  v2 = *(a1 + 16);
  sub_76A7C0();
  if (!v2)
  {
    return v6;
  }

  for (i = a1 + 32; ; i += 40)
  {
    sub_134D8(i, v5);
    sub_BD88(&unk_944DA0);
    sub_75BB90();
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    sub_76A7A0();
    sub_76A7D0();
    sub_76A7E0();
    sub_76A7B0();
    if (!--v2)
    {
      return v6;
    }
  }

  return 0;
}

id sub_316030()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BundleView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for BundleView()
{
  result = qword_94F6C0;
  if (!qword_94F6C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_316250()
{
  sub_7652D0();
  if (v0 <= 0x3F)
  {
    sub_3163E8(319, &qword_94F6D0, &qword_94F6D8, &unk_7946A0, &qword_94F6E0);
    if (v1 <= 0x3F)
    {
      sub_3163E8(319, &qword_94F6E8, &qword_94F6F0, &unk_7946A8, &qword_94F6F8);
      if (v2 <= 0x3F)
      {
        sub_766690();
        if (v3 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void sub_3163E8(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t a4, unint64_t *a5)
{
  if (!*a2)
  {
    sub_133D8(a3);
    sub_16194(a5, a3);
    v8 = sub_767490();
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

double sub_316484(uint64_t a1, unint64_t a2, void *a3)
{
  v46 = a1;
  v5 = sub_76A920();
  v47 = *(v5 - 8);
  v48 = v5;
  __chkstk_darwin(v5);
  v7 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_7666D0();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_93CA38 != -1)
  {
    swift_once();
  }

  if (qword_93DA70 != -1)
  {
    swift_once();
  }

  v12 = sub_BE38(v8, qword_99F748);
  (*(v9 + 16))(v11, v12, v8);
  v13 = [a3 traitCollection];
  sub_769A00();

  v14 = sub_7653B0();
  v49[3] = v14;
  v49[4] = sub_317694(&qword_93F9B0, &type metadata accessor for Feature);
  v15 = sub_B1B4(v49);
  (*(*(v14 - 8) + 104))(v15, enum case for Feature.measurement_with_labelplaceholder(_:), v14);
  sub_765C30();
  sub_BEB8(v49);
  sub_762CB0();
  v17 = v16;
  v19 = v18;
  (*(v9 + 8))(v11, v8);
  sub_764F90();
  v20 = 0.0;
  if (sub_769490())
  {
    v21 = sub_316A78(a2);
    sub_765390();
    v22 = sub_769490();
    v24 = v47;
    v23 = v48;
    if (v22)
    {
      sub_3173D0(v21);
      v26 = v25;

      v20 = v26 + 40.0;
    }

    else
    {
    }
  }

  else
  {
    v24 = v47;
    v23 = v48;
  }

  v27 = [a3 traitCollection];
  v28 = sub_317574(a2);

  if (qword_93CA28 != -1)
  {
    swift_once();
  }

  v29 = sub_766CA0();
  sub_BE38(v29, qword_94F658);
  v30 = [a3 traitCollection];
  sub_766470();
  sub_766C70();
  v32 = v31;

  v33 = *(v24 + 8);
  v33(v7, v23);
  v34 = [a3 traitCollection];
  sub_66629C(v46, v28);
  v36 = v35;

  if (qword_93CA30 != -1)
  {
    swift_once();
  }

  sub_BE38(v29, qword_94F670);
  v37 = [a3 traitCollection];
  sub_766470();
  sub_766C70();
  v39 = v38;

  v33(v7, v23);
  sub_BE70(0, &qword_93F900);
  if (qword_93DA78 != -1)
  {
    swift_once();
  }

  v40 = v20 + v17 - v19 + v32 + v32 + v36 + v39;
  sub_BE38(v8, qword_99F760);
  v41 = [a3 traitCollection];
  v42 = sub_769E10();

  [v42 descender];
  v44 = v43;

  return v40 + v44;
}

uint64_t sub_316A78(unint64_t a1)
{
  v1 = _swiftEmptyArrayStorage;
  v42 = sub_315DB4(a1);
  if (!v42)
  {
    return v1;
  }

  v2 = sub_7653B0();
  v44[3] = v2;
  v44[4] = sub_317694(&qword_93F9B0, &type metadata accessor for Feature);
  v3 = sub_B1B4(v44);
  (*(*(v2 - 8) + 104))(v3, enum case for Feature.voyager_bundles_2025A(_:), v2);
  LOBYTE(v2) = sub_765C30();
  sub_BEB8(v44);
  if ((v2 & 1) == 0)
  {

    return v1;
  }

  if (v42 >> 62)
  {
    v4 = sub_76A860();
  }

  else
  {
    v4 = *(&dword_10 + (v42 & 0xFFFFFFFFFFFFFF8));
  }

  v41 = v42 & 0xC000000000000001;
  if (v4)
  {
    if (v41)
    {
      v5 = sub_76A770();
    }

    else
    {
      if (!*(&dword_10 + (v42 & 0xFFFFFFFFFFFFFF8)))
      {
        __break(1u);
        goto LABEL_27;
      }

      v5 = *(v42 + 32);
    }

    v6 = sub_75BC70();

    if (v6 >> 62)
    {
      if (sub_76A860())
      {
LABEL_11:
        if ((v6 & 0xC000000000000001) == 0)
        {
          if (!*(&dword_10 + (v6 & 0xFFFFFFFFFFFFFF8)))
          {
LABEL_140:
            __break(1u);
LABEL_141:
            __break(1u);
            goto LABEL_142;
          }

          goto LABEL_14;
        }

LABEL_27:
        sub_76A770();
LABEL_14:

        v7 = sub_7596A0();

        if (v7 >> 62)
        {
          result = sub_76A860();
          if (result)
          {
            goto LABEL_16;
          }
        }

        else
        {
          result = *(&dword_10 + (v7 & 0xFFFFFFFFFFFFFF8));
          if (result)
          {
LABEL_16:
            if ((v7 & 0xC000000000000001) != 0)
            {
              goto LABEL_144;
            }

            if (*(&dword_10 + (v7 & 0xFFFFFFFFFFFFFF8)))
            {

              goto LABEL_19;
            }

            __break(1u);
LABEL_146:
            __break(1u);
            return result;
          }
        }
      }
    }

    else if (*(&dword_10 + (v6 & 0xFFFFFFFFFFFFFF8)))
    {
      goto LABEL_11;
    }
  }

LABEL_30:
  v10 = 3;
LABEL_31:
  v39 = v10;
  v44[0] = _swiftEmptyArrayStorage;
  if (!v4)
  {
    v12 = _swiftEmptyArrayStorage;
    goto LABEL_63;
  }

  v11 = 0;
  v12 = _swiftEmptyArrayStorage;
  v13 = v42 & 0xFFFFFFFFFFFFFF8;
  do
  {
    v14 = v11;
    while (1)
    {
      if (v41)
      {
        sub_76A770();
        v11 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          goto LABEL_124;
        }
      }

      else
      {
        if (v14 >= *(v13 + 16))
        {
          goto LABEL_125;
        }

        v11 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
          goto LABEL_127;
        }
      }

      v15 = sub_75BC70();
      v16 = v15;
      if (v15 >> 62)
      {
        break;
      }

      if (*(&dword_10 + (v15 & 0xFFFFFFFFFFFFFF8)))
      {
        goto LABEL_41;
      }

LABEL_34:

LABEL_35:
      ++v14;
      if (v11 == v4)
      {
        goto LABEL_63;
      }
    }

    if (!sub_76A860())
    {
      goto LABEL_34;
    }

LABEL_41:
    if ((v16 & 0xC000000000000001) != 0)
    {
      sub_76A770();
    }

    else
    {
      if (!*(&dword_10 + (v16 & 0xFFFFFFFFFFFFFF8)))
      {
        goto LABEL_126;
      }
    }

    v17 = sub_7596A0();

    v18 = v17;
    if (!(v17 >> 62))
    {
      v19 = *(&dword_10 + (v17 & 0xFFFFFFFFFFFFFF8));
      v13 = v42 & 0xFFFFFFFFFFFFFF8;
      if (v19)
      {
        goto LABEL_54;
      }

      goto LABEL_46;
    }

    v20 = sub_76A860();
    v18 = v17;
    v13 = v42 & 0xFFFFFFFFFFFFFF8;
    if (!v20)
    {
LABEL_46:

      goto LABEL_35;
    }

LABEL_54:
    if ((v18 & 0xC000000000000001) == 0)
    {
      if (*(&dword_10 + (v18 & 0xFFFFFFFFFFFFFF8)))
      {

        goto LABEL_57;
      }

      __break(1u);
LABEL_144:
      sub_76A770();
LABEL_19:

      v9 = sub_7650D0();

      if (v9)
      {
        v10 = 5;
        goto LABEL_31;
      }

      goto LABEL_30;
    }

    sub_76A770();
LABEL_57:

    sub_769440();
    if (*(&dword_10 + (v44[0] & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v44[0] & 0xFFFFFFFFFFFFFF8)) >> 1)
    {
      sub_7694C0();
    }

    sub_769500();
    v12 = v44[0];
    v13 = v42 & 0xFFFFFFFFFFFFFF8;
  }

  while (v11 != v4);
LABEL_63:
  v44[0] = v12;
  if (v12 >> 62)
  {
LABEL_127:
    v21 = sub_76A860();
  }

  else
  {
    v21 = *(&dword_10 + (v12 & 0xFFFFFFFFFFFFFF8));
  }

  if (v21 >= v39)
  {
    goto LABEL_98;
  }

  v22 = 0;
  while (2)
  {
    if (!v4)
    {
      goto LABEL_93;
    }

    v23 = 0;
    v40 = v22;
    while (2)
    {
      v24 = v23;
      v25 = v42 & 0xFFFFFFFFFFFFFF8;
      while (2)
      {
        if (v41)
        {
          sub_76A770();
          v23 = v24 + 1;
          if (__OFADD__(v24, 1))
          {
            goto LABEL_121;
          }
        }

        else
        {
          if (v24 >= *(v25 + 16))
          {
            goto LABEL_122;
          }

          v23 = v24 + 1;
          if (__OFADD__(v24, 1))
          {
LABEL_121:
            __break(1u);
LABEL_122:
            __break(1u);
LABEL_123:
            __break(1u);
            goto LABEL_124;
          }
        }

        v26 = sub_75BC70();
        v27 = v26;
        if (!(v26 >> 62))
        {
          if (*(&dword_10 + (v26 & 0xFFFFFFFFFFFFFF8)))
          {
            goto LABEL_77;
          }

LABEL_70:

          goto LABEL_71;
        }

        if (!sub_76A860())
        {
          goto LABEL_70;
        }

LABEL_77:
        if ((v27 & 0xC000000000000001) != 0)
        {
          sub_76A770();
        }

        else
        {
          if (!*(&dword_10 + (v27 & 0xFFFFFFFFFFFFFF8)))
          {
            goto LABEL_123;
          }
        }

        v12 = sub_7596A0();

        sub_BD88(&qword_945360);
        sub_16194(&qword_945368, &qword_945360);
        sub_7696D0();

        v25 = v42 & 0xFFFFFFFFFFFFFF8;
        if (!v43)
        {
LABEL_71:
          ++v24;
          if (v23 == v4)
          {
            v22 = v40;
            goto LABEL_93;
          }

          continue;
        }

        break;
      }

      sub_769440();
      if (*(&dword_10 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        sub_7694C0();
      }

      sub_769500();
      v22 = v40;
      if (v23 != v4)
      {
        continue;
      }

      break;
    }

LABEL_93:
    sub_10A1E8(_swiftEmptyArrayStorage);
    v12 = v44[0];
    if (v44[0] >> 62)
    {
      v28 = sub_76A860();
    }

    else
    {
      v28 = *(&dword_10 + (v44[0] & 0xFFFFFFFFFFFFFF8));
    }

    v29 = (v28 >= v39) | v22;
    v22 = 1;
    if ((v29 & 1) == 0)
    {
      continue;
    }

    break;
  }

LABEL_98:

  v1 = (v12 >> 62);
  if (v12 >> 62)
  {
    if ((v12 & 0x8000000000000000) != 0)
    {
      v5 = v12;
    }

    else
    {
      v5 = v12 & 0xFFFFFFFFFFFFFF8;
    }

    v6 = sub_76A860();
    result = sub_76A860();
    if (result < 0)
    {
      goto LABEL_146;
    }

    if (v6 >= v39)
    {
      v38 = v39;
    }

    else
    {
      v38 = v6;
    }

    if (v6 >= 0)
    {
      v4 = v38;
    }

    else
    {
      v4 = v39;
    }

    if (sub_76A860() >= v4)
    {
      goto LABEL_102;
    }

    __break(1u);
    goto LABEL_140;
  }

  if (*(&dword_10 + (v12 & 0xFFFFFFFFFFFFFF8)) >= v39)
  {
    v4 = v39;
  }

  else
  {
    v4 = *(&dword_10 + (v12 & 0xFFFFFFFFFFFFFF8));
  }

LABEL_102:
  if ((v12 & 0xC000000000000001) != 0 && v4)
  {
    sub_765390();

    v30 = 0;
    do
    {
      v31 = v30 + 1;
      sub_76A750(v30);
      v30 = v31;
    }

    while (v4 != v31);
  }

  else
  {
  }

  if (v1)
  {
    v6 = sub_76A870();
    v1 = v32;
    v5 = v33;
    v4 = v34;

    if (v4)
    {
      goto LABEL_113;
    }

    goto LABEL_112;
  }

  v5 = 0;
  v6 = v12 & 0xFFFFFFFFFFFFFF8;
  v1 = ((v12 & 0xFFFFFFFFFFFFFF8) + 32);
  v4 = (2 * v4) | 1;
  if ((v4 & 1) == 0)
  {
LABEL_112:
    sub_4A5FC4(v6, v1, v5, v4);
    v1 = v35;
    goto LABEL_119;
  }

LABEL_113:
  sub_76A970();
  swift_unknownObjectRetain_n();
  v36 = swift_dynamicCastClass();
  if (!v36)
  {
    swift_unknownObjectRelease();
    v36 = _swiftEmptyArrayStorage;
  }

  v37 = v36[2];

  if (__OFSUB__(v4 >> 1, v5))
  {
    goto LABEL_141;
  }

  if (v37 != (v4 >> 1) - v5)
  {
LABEL_142:
    swift_unknownObjectRelease_n();
    goto LABEL_112;
  }

  v1 = swift_dynamicCastClass();
  swift_unknownObjectRelease_n();
  if (!v1)
  {
    v1 = _swiftEmptyArrayStorage;
LABEL_119:
    swift_unknownObjectRelease();
  }

  return v1;
}

uint64_t sub_3173D0(unint64_t a1)
{
  v2 = sub_766690();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 62)
  {
    result = sub_76A860();
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
    if (!result)
    {
      return result;
    }
  }

  if ((a1 & 0xC000000000000001) != 0)
  {
    sub_76A770();
    goto LABEL_6;
  }

  if (*(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)))
  {

LABEL_6:
    sub_7650D0();
    sub_765260();
    sub_7666A0();
    sub_766610();

    return (*(v3 + 8))(v5, v2);
  }

  __break(1u);
  return result;
}

uint64_t sub_317574(unint64_t a1)
{
  v2 = sub_7653B0();
  v8[3] = v2;
  v8[4] = sub_317694(&qword_93F9B0, &type metadata accessor for Feature);
  v3 = sub_B1B4(v8);
  (*(*(v2 - 8) + 104))(v3, enum case for Feature.voyager_bundles_2025A(_:), v2);
  LOBYTE(v2) = sub_765C30();
  sub_BEB8(v8);
  if ((v2 & 1) == 0)
  {
    return 0;
  }

  if (a1 >> 62)
  {
    v4 = sub_76A860();
  }

  else
  {
    v4 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
  }

  v5 = sub_7699D0();
  if (v5)
  {
    v6 = 2;
  }

  else
  {
    v6 = 0;
  }

  if (v4 <= 3)
  {
    return v5 & 1;
  }

  else
  {
    return v6;
  }
}

uint64_t sub_317694(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_3176DC()
{
  v1 = v0;
  v27 = sub_BD88(&qword_94F6F0);
  __chkstk_darwin(v27);
  v26 = &v24 - v2;
  v25 = sub_BD88(&qword_94F6D8);
  __chkstk_darwin(v25);
  v3 = sub_760AD0();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_BD88(&unk_93E530);
  __chkstk_darwin(v7 - 8);
  v9 = &v24 - v8;
  v10 = OBJC_IVAR____TtC18ASMessagesProvider10BundleView_iconStyle;
  v11 = enum case for Artwork.Style.roundedRect(_:);
  v12 = sub_7652D0();
  (*(*(v12 - 8) + 104))(v1 + v10, v11, v12);
  v13 = OBJC_IVAR____TtC18ASMessagesProvider10BundleView_titleLabel;
  if (qword_93DA70 != -1)
  {
    swift_once();
  }

  v14 = sub_7666D0();
  v15 = sub_BE38(v14, qword_99F748);
  v16 = *(v14 - 8);
  (*(v16 + 16))(v9, v15, v14);
  (*(v16 + 56))(v9, 0, 1, v14);
  (*(v4 + 104))(v6, enum case for DirectionalTextAlignment.none(_:), v3);
  v17 = objc_allocWithZone(sub_75BB20());
  *(v1 + v13) = sub_75BB10();
  v18 = OBJC_IVAR____TtC18ASMessagesProvider10BundleView_itemStack;
  v19 = [objc_allocWithZone(sub_BD88(&qword_94F710)) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v19[qword_9583D8] = 0;
  *&v19[qword_9583E0] = 1;
  *&v19[qword_9583E8] = 0x4028000000000000;
  v19[qword_9583F0] = 1;
  *(v1 + v18) = v19;
  v20 = OBJC_IVAR____TtC18ASMessagesProvider10BundleView_screenshotStack;
  v21 = [objc_allocWithZone(sub_BD88(&qword_94F718)) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v21[qword_9583D8] = 0;
  *&v21[qword_9583E0] = 1;
  *&v21[qword_9583E8] = 0x4028000000000000;
  v21[qword_9583F0] = 1;
  *(v1 + v20) = v21;
  type metadata accessor for BundleChildView();
  sub_7667C0();
  sub_16194(&qword_94F6E0, &qword_94F6D8);
  sub_767480();
  type metadata accessor for BorderedScreenshotView();
  sub_7667C0();
  sub_16194(&qword_94F6F8, &qword_94F6F0);
  sub_767480();
  v22 = OBJC_IVAR____TtC18ASMessagesProvider10BundleView_gradientBlurView;
  *(v1 + v22) = [objc_allocWithZone(type metadata accessor for AppBundleGradientBackgroundView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v23 = OBJC_IVAR____TtC18ASMessagesProvider10BundleView_backgroundArtworkView;
  sub_759210();
  *(v1 + v23) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  sub_7666A0();
  sub_76A840();
  __break(1u);
}

double sub_317C38(uint64_t a1, CGFloat a2, CGFloat a3, double a4, double a5, double a6, double a7, uint64_t a8, int a9)
{
  v17 = sub_BD88(&qword_94F720);
  __chkstk_darwin(v17 - 8);
  v19 = &v56 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = &v56 - v21;
  v23 = sub_7600F0();
  v24 = *(v23 - 8);
  __chkstk_darwin(v23);
  v26 = &v56 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v29 = &v56 - v28;
  v58 = a1;
  sub_763AF0();
  v59 = a9;
  if (a9)
  {
    v57 = sub_7600D0();
    sub_763AB0();
  }

  else
  {
    v57 = sub_7600E0();
    sub_763AC0();
  }

  sub_317FD0(v22, v19);
  v30 = sub_763AA0();
  v31 = *(v30 - 8);
  if ((*(v31 + 48))(v19, 1, v30) == 1)
  {
    sub_318040(v19);
  }

  else
  {
    sub_31835C();
    a6 = v32;
    a7 = v33;
    (*(v31 + 8))(v19, v30);
  }

  sub_318688(a6, a7, a4, a5);
  v35 = v34;
  v37 = v36;
  sub_318040(v22);
  v60 = a2;
  v61 = a4;
  v38 = a2;
  v39 = a3;
  v40 = a4;
  v41 = a5;
  v42 = sub_318814(v57, 0.0, 0.0, v35, v37, v38, a3, v40, a5);
  v44 = v43;
  v46 = v45;
  v48 = v47;
  sub_763AF0();
  if (v59)
  {
    sub_7600B0();
  }

  else
  {
    sub_7600C0();
  }

  v51 = v49;
  v52 = v50;
  v53 = *(v24 + 8);
  v53(v26, v23);
  v54 = sub_3180A8(v52, v51, v60, v39, v61, v41, v42, v44, v46, v48);
  v53(v29, v23);
  return v54;
}

uint64_t sub_317FD0(uint64_t a1, uint64_t a2)
{
  v4 = sub_BD88(&qword_94F720);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_318040(uint64_t a1)
{
  v2 = sub_BD88(&qword_94F720);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double sub_3180A8(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8, CGFloat a9, CGFloat a10)
{
  v52.size.width = a9;
  v52.size.height = a10;
  v52.origin.x = a7;
  v52.origin.y = a8;
  v50 = a2;
  v53 = CGRectOffset(v52, a1, a2);
  x = v53.origin.x;
  width = v53.size.width;
  height = v53.size.height;
  if (a1 > 0.0)
  {
    rect = v53.origin.y;
    v48 = v53.size.width;
    MinX = CGRectGetMinX(v53);
    v54.origin.x = a3;
    v54.origin.y = a4;
    v54.size.width = a5;
    v54.size.height = a6;
    if (CGRectGetMinX(v54) < MinX)
    {
      v55.origin.x = x;
      v55.origin.y = rect;
      v55.size.width = v48;
      v55.size.height = height;
      v47 = CGRectGetMinX(v55);
      v56.origin.x = a3;
      v56.origin.y = a4;
      v56.size.width = a5;
      v56.size.height = a6;
      x = x - (v47 - CGRectGetMinX(v56));
    }

    width = v48;
    v53.origin.y = rect;
  }

  if (a1 < 0.0)
  {
    v27 = x;
    y = v53.origin.y;
    v29 = width;
    v30 = height;
    MaxX = CGRectGetMaxX(v53);
    v57.origin.x = a3;
    v57.origin.y = a4;
    v57.size.width = a5;
    v57.size.height = a6;
    if (MaxX < CGRectGetMaxX(v57))
    {
      v58.origin.x = a3;
      v58.origin.y = a4;
      v58.size.width = a5;
      v58.size.height = a6;
      v32 = CGRectGetMaxX(v58);
      v59.origin.x = x;
      v59.origin.y = y;
      v59.size.width = width;
      v59.size.height = height;
      x = x + v32 - CGRectGetMaxX(v59);
    }

    v53.origin.y = y;
  }

  if (v50 > 0.0)
  {
    v33 = x;
    v34 = v53.origin.y;
    v35 = width;
    v36 = height;
    MinY = CGRectGetMinY(v53);
    v60.origin.x = a3;
    v60.origin.y = a4;
    v60.size.width = a5;
    v60.size.height = a6;
    if (CGRectGetMinY(v60) >= MinY)
    {
      v53.origin.y = v34;
    }

    else
    {
      v61.origin.x = x;
      v61.origin.y = v34;
      v61.size.width = width;
      v61.size.height = height;
      v38 = CGRectGetMinY(v61);
      v62.origin.x = a3;
      v62.origin.y = a4;
      v62.size.width = a5;
      v62.size.height = a6;
      v53.origin.y = v34 - (v38 - CGRectGetMinY(v62));
    }
  }

  if (v50 < 0.0)
  {
    v39 = x;
    v40 = v53.origin.y;
    v41 = width;
    v42 = height;
    v43 = width;
    v44 = a4;
    MaxY = CGRectGetMaxY(v53);
    v63.origin.x = a3;
    v63.origin.y = v44;
    v63.size.width = a5;
    v63.size.height = a6;
    if (MaxY < CGRectGetMaxY(v63))
    {
      v64.origin.x = a3;
      v64.origin.y = v44;
      v64.size.width = a5;
      v64.size.height = a6;
      CGRectGetMaxY(v64);
      v65.origin.x = x;
      v65.origin.y = v40;
      v65.size.width = v43;
      v65.size.height = height;
      CGRectGetMaxY(v65);
    }
  }

  return x;
}

uint64_t sub_31835C()
{
  v1 = v0;
  v2 = sub_766690();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_763AA0();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v10, v1, v6, v8);
  v11 = (*(v7 + 88))(v10, v6);
  if (v11 == enum case for TodayCardArtworkSizedLayoutMetrics.LayoutSize.absolute(_:))
  {
    return (*(v7 + 96))(v10, v6);
  }

  if (v11 == enum case for TodayCardArtworkSizedLayoutMetrics.LayoutSize.fractionalHeight(_:))
  {
    (*(v7 + 96))(v10, v6);
    sub_7666A0();
    sub_766650();
    return (*(v3 + 8))(v5, v2);
  }

  if (v11 == enum case for TodayCardArtworkSizedLayoutMetrics.LayoutSize.fractionalWidth(_:))
  {
    (*(v7 + 96))(v10, v6);
    sub_7666A0();
    sub_766660();
    return (*(v3 + 8))(v5, v2);
  }

  if (v11 == enum case for TodayCardArtworkSizedLayoutMetrics.LayoutSize.fractionalSize(_:))
  {
    return (*(v7 + 96))(v10, v6);
  }

  result = sub_76A840();
  __break(1u);
  return result;
}

void sub_318688(double a1, double a2, double a3, double a4)
{
  v8 = sub_766690();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v21 - v13;
  if (a3 > a1 || a4 > a2)
  {
    sub_7666A0();
    sub_7666A0();
    sub_766640();
    v17 = v16;
    sub_766640();
    v18 = (v9 + 8);
    if (v17 >= v19)
    {
      sub_766660();
    }

    else
    {
      sub_766650();
    }

    v20 = *v18;
    (*v18)(v11, v8);
    v20(v14, v8);
  }
}

double sub_318814(unint64_t a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8, CGFloat a9)
{
  if (a1 - 1 <= 1)
  {
    sub_769D70();
    a4 = v17;
    a5 = v18;
  }

  if (a1 > 0xC)
  {
    goto LABEL_8;
  }

  if (((1 << a1) & 0xA80) != 0)
  {
    v26.origin.x = a6;
    v26.origin.y = a7;
    v26.size.width = a8;
    v26.size.height = a9;
    MinX = CGRectGetMinX(v26);
    goto LABEL_10;
  }

  if (((1 << a1) & 0x1500) != 0)
  {
    v24.origin.x = a6;
    v24.origin.y = a7;
    v24.size.width = a8;
    v24.size.height = a9;
    MaxX = CGRectGetMaxX(v24);
    v25.origin.x = a2;
    v25.origin.y = a3;
    v25.size.width = a4;
    v25.size.height = a5;
    Width = CGRectGetWidth(v25);
  }

  else
  {
LABEL_8:
    v27.origin.x = a6;
    v27.origin.y = a7;
    v27.size.width = a8;
    v27.size.height = a9;
    MaxX = CGRectGetMidX(v27);
    v28.origin.x = a2;
    v28.origin.y = a3;
    v28.size.width = a4;
    v28.size.height = a5;
    Width = CGRectGetMidX(v28);
  }

  MinX = MaxX - Width;
  if (a1 > 0xC)
  {
    goto LABEL_14;
  }

LABEL_10:
  if (((1 << a1) & 0x620) != 0)
  {
    v31.origin.x = a6;
    v31.origin.y = a7;
    v31.size.width = a8;
    v31.size.height = a9;
    CGRectGetMinY(v31);
    return MinX;
  }

  if (((1 << a1) & 0x1840) == 0)
  {
LABEL_14:
    v32.origin.x = a6;
    v32.origin.y = a7;
    v32.size.width = a8;
    v32.size.height = a9;
    CGRectGetMidY(v32);
    v33.origin.x = MinX;
    v33.origin.y = a3;
    v33.size.width = a4;
    v33.size.height = a5;
    CGRectGetMidY(v33);
    return MinX;
  }

  v29.origin.x = a6;
  v29.origin.y = a7;
  v29.size.width = a8;
  v29.size.height = a9;
  CGRectGetMaxY(v29);
  v30.origin.x = MinX;
  v30.origin.y = a3;
  v30.size.width = a4;
  v30.size.height = a5;
  CGRectGetHeight(v30);
  return MinX;
}

char *sub_318A14(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC18ASMessagesProvider28ScreenshotCollectionViewCell_itemLayoutContext;
  v10 = sub_75C840();
  (*(*(v10 - 8) + 56))(&v4[v9], 1, 1, v10);
  v11 = &v4[OBJC_IVAR____TtC18ASMessagesProvider28ScreenshotCollectionViewCell_artworkDisplaySize];
  *v11 = 0;
  *(v11 + 1) = 0;
  v11[16] = 1;
  *&v4[OBJC_IVAR____TtC18ASMessagesProvider28ScreenshotCollectionViewCell_borderedScreenshotView] = [objc_allocWithZone(type metadata accessor for BorderedScreenshotView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v21.receiver = v4;
  v21.super_class = type metadata accessor for ScreenshotCollectionViewCell();
  v12 = objc_msgSendSuper2(&v21, "initWithFrame:", a1, a2, a3, a4);
  v13 = OBJC_IVAR____TtC18ASMessagesProvider28ScreenshotCollectionViewCell_borderedScreenshotView;
  v14 = *&v12[OBJC_IVAR____TtC18ASMessagesProvider28ScreenshotCollectionViewCell_borderedScreenshotView];
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v18 = v12;
  [v14 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v19 = [v18 contentView];
  [v19 addSubview:*&v12[v13]];

  return v18;
}

id sub_318C90()
{
  v1 = v0;
  v7.receiver = v0;
  v7.super_class = type metadata accessor for ScreenshotCollectionViewCell();
  objc_msgSendSuper2(&v7, "prepareForReuse");
  v2 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider28ScreenshotCollectionViewCell_borderedScreenshotView];
  v3 = *(v2 + OBJC_IVAR____TtC18ASMessagesProvider22BorderedScreenshotView_artworkView);
  v8.value.super.isa = 0;
  v8.is_nil = 0;
  sub_7591D0(v8, v4);

  *(v2 + OBJC_IVAR____TtC18ASMessagesProvider22BorderedScreenshotView_platform) = 0;

  sub_4FD578();
  v5 = &v1[OBJC_IVAR____TtC18ASMessagesProvider28ScreenshotCollectionViewCell_artworkDisplaySize];
  *v5 = 0;
  *(v5 + 1) = 0;
  v5[16] = 1;
  return [v1 setNeedsLayout];
}

id sub_318DA0()
{
  v1 = v0;
  v2 = sub_766690();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ScreenshotCollectionViewCell();
  v37.receiver = v1;
  v37.super_class = v6;
  objc_msgSendSuper2(&v37, "layoutSubviews");
  if (v1[OBJC_IVAR____TtC18ASMessagesProvider28ScreenshotCollectionViewCell_artworkDisplaySize + 16])
  {
    v7 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider28ScreenshotCollectionViewCell_borderedScreenshotView];
    v8 = [v1 contentView];
    [v8 bounds];
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;

    return [v7 setFrame:{v10, v12, v14, v16}];
  }

  else
  {
    sub_7666A0();
    v18 = [v1 contentView];
    [v18 bounds];
    v20 = v19;
    v22 = v21;
    v24 = v23;

    sub_766660();
    v25 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider28ScreenshotCollectionViewCell_borderedScreenshotView];
    [v25 setFrame:{v20, v22, v24, v26}];
    v27 = [v1 contentView];
    [v27 bounds];
    v29 = v28;
    v31 = v30;
    v33 = v32;
    v35 = v34;

    v38.origin.x = v29;
    v38.origin.y = v31;
    v38.size.width = v33;
    v38.size.height = v35;
    MidX = CGRectGetMidX(v38);
    v39.origin.x = v29;
    v39.origin.y = v31;
    v39.size.width = v33;
    v39.size.height = v35;
    [v25 setCenter:{MidX, CGRectGetMidY(v39)}];
    return (*(v3 + 8))(v5, v2);
  }
}

id sub_31905C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ScreenshotCollectionViewCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for ScreenshotCollectionViewCell()
{
  result = qword_94F750;
  if (!qword_94F750)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_319134()
{
  sub_1EA64();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

CGFloat sub_3191FC()
{
  v1 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider28ScreenshotCollectionViewCell_borderedScreenshotView) + OBJC_IVAR____TtC18ASMessagesProvider22BorderedScreenshotView_displayConfiguration;
  swift_beginAccess();
  v2 = *(v1 + 64);
  v3 = *(v1 + 80);
  type metadata accessor for BorderedScreenshotView();
  sub_75D650();
  v4 = CGRectGetWidth(v6) - (v2 + v3);
  sub_75D650();
  CGRectGetHeight(v7);
  return v4;
}

void sub_31929C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  sub_1D6CAC(a1, a2, a3, WitnessTable);
}

void sub_319308(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  sub_1D6BD8(a1, a2, a3, WitnessTable);
}

unint64_t sub_319374(uint64_t a1)
{
  result = sub_31939C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_31939C()
{
  result = qword_94F760;
  if (!qword_94F760)
  {
    type metadata accessor for ScreenshotCollectionViewCell();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_94F760);
  }

  return result;
}

uint64_t sub_3193F4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v25[0] = a2;
  v4 = sub_7656C0();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_75E490();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = (v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_75E4B0();
  sub_319924();
  result = sub_75C750();
  if (v25[1])
  {
    sub_75E4A0();
    v13 = (*(v9 + 88))(v11, v8);
    if (v13 == enum case for ProductReviewAction.ReviewAction.tapToRate(_:))
    {
      (*(v9 + 96))(v11, v8);
      v14 = *v11;
      type metadata accessor for ProductTapToRateView();
      v15 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
      sub_2861E8(v15);
      v16 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider44GenericProductReviewActionCollectionViewCell_productTapToRateView];
      if (v16)
      {
        swift_getKeyPath();
        v17 = v16;
        sub_75C7B0();

        sub_765550();
        v19 = v18;
        (*(v5 + 8))(v7, v4);
        sub_2FC8C8(v14, v19 == 1.0, v25[0]);
      }
    }

    else
    {
      if (v13 != enum case for ProductReviewAction.ReviewAction.writeAReview(_:))
      {
        (*(v9 + 8))(v11, v8);
        goto LABEL_10;
      }

      (*(v9 + 96))(v11, v8);
      type metadata accessor for ProductReviewActionsView();
      v20 = objc_allocWithZone(swift_getObjCClassFromMetadata());
      sub_2861F4([v20 init]);
      v21 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider44GenericProductReviewActionCollectionViewCell_productReviewActionsView];
      if (v21)
      {
        v22 = v21;
        v23 = sub_75E4D0();
        v24 = sub_75E4C0();
        sub_527DE4();
        sub_41E7FC(v23, v24);

        swift_unknownObjectRelease();
      }
    }

LABEL_10:
    [v3 setNeedsLayout];
  }

  return result;
}

uint64_t sub_319778@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC18ASMessagesProvider44GenericProductReviewActionCollectionViewCell_itemLayoutContext;
  swift_beginAccess();
  return sub_1799C(v1 + v3, a1);
}

uint64_t sub_3197D4(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18ASMessagesProvider44GenericProductReviewActionCollectionViewCell_itemLayoutContext;
  swift_beginAccess();
  sub_1792C(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_3198A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, a4, a5, WitnessTable);
}

unint64_t sub_319924()
{
  result = qword_94F768;
  if (!qword_94F768)
  {
    sub_75E4B0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_94F768);
  }

  return result;
}

double sub_319980(double a1, double a2)
{
  if (a2 >= a1)
  {
    JUScreenClassGetPortraitWidth();
    if (v4 < a1)
    {
      JUScreenClassGetPortraitWidth();
    }
  }

  else
  {
    JUScreenClassGetLandscapeWidth();
    if (v3 < a1)
    {
      JUScreenClassGetLandscapeWidth();
    }
  }

  return 2.0;
}

uint64_t sub_319A00()
{
  v0 = sub_BD88(&qword_940A60);
  __chkstk_darwin(v0 - 8);
  v40 = &v34 - v1;
  v42 = sub_765610();
  v49 = *(v42 - 8);
  __chkstk_darwin(v42);
  v3 = (&v34 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = sub_BD88(&qword_940A68);
  __chkstk_darwin(v4 - 8);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v34 - v8;
  __chkstk_darwin(v10);
  v12 = &v34 - v11;
  __chkstk_darwin(v13);
  v15 = &v34 - v14;
  sub_BD88(&qword_940A70);
  v16 = *(sub_765540() - 8);
  v48 = *(v16 + 72);
  v17 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v18 = swift_allocObject();
  v39 = v18;
  *(v18 + 16) = xmmword_780120;
  v46 = v18 + v17;
  v50 = 0x3FF0000000000000;
  v51 = 0x3FF8000000000000;
  sub_62634();
  sub_7655B0();
  v50 = 0x4030000000000000;
  v51 = 0x4020000000000000;
  sub_7655B0();
  v50 = 0x4034000000000000;
  v51 = 0x4030000000000000;
  sub_7655B0();
  __asm { FMOV            V0.2D, #16.0 }

  *v3 = _Q0;
  v45 = enum case for PageGrid.HorizontalMargins.absolute(_:);
  v24 = *(v49 + 104);
  v49 += 104;
  v47 = v24;
  v25 = v42;
  v24(v3);
  left = UIEdgeInsetsZero.left;
  LOBYTE(v51) = 0;
  sub_7655D0();
  v51 = 0;
  v44 = v6;
  sub_7655D0();
  v41 = v15;
  v43 = v12;
  sub_765500();
  v50 = 0x3FF0000000000000;
  v51 = 0x3FF8000000000000;
  sub_7655B0();
  v50 = 0x4034000000000000;
  v51 = 0x4024000000000000;
  sub_7655B0();
  v50 = 0x4034000000000000;
  v51 = 0x4030000000000000;
  sub_7655B0();
  __asm { FMOV            V0.2D, #20.0 }

  *v3 = _Q0;
  v47(v3, v45, v25);
  LOBYTE(v51) = 0;
  sub_7655D0();
  v51 = 0;
  sub_7655D0();
  v28 = v48;
  top = UIEdgeInsetsZero.top;
  v38 = left;
  sub_765500();
  v51 = 0x4008000000000000;
  sub_7655D0();
  v51 = 0x4034000000000000;
  sub_7655D0();
  v50 = 0x4034000000000000;
  v51 = 0x4030000000000000;
  sub_7655B0();
  v36 = vdupq_n_s64(0x4041000000000000uLL);
  *v3 = v36;
  v29 = v42;
  v30 = v47;
  v47(v3, v45, v42);
  LOBYTE(v51) = 0;
  sub_7655D0();
  v51 = 0;
  sub_7655D0();
  sub_765500();
  v35 = 2 * v28 + v48;
  v51 = 0x4010000000000000;
  sub_7655D0();
  v51 = 0x4034000000000000;
  sub_7655D0();
  v50 = 0x4034000000000000;
  v51 = 0x4030000000000000;
  sub_7655B0();
  *v3 = v36;
  v30(v3, v45, v29);
  sub_7697A0();
  LOBYTE(v51) = 0;
  sub_7655D0();
  v51 = 0;
  sub_7655D0();
  v34 = v9;
  sub_765500();
  v35 = 4 * v48;
  v51 = 0x4014000000000000;
  sub_7655D0();
  v51 = 0x4038000000000000;
  sub_7655D0();
  v50 = 0x4034000000000000;
  v51 = 0x4030000000000000;
  sub_7655B0();
  v36 = vdupq_n_s64(0x404A000000000000uLL);
  *v3 = v36;
  v31 = v45;
  v32 = v42;
  v47(v3, v45, v42);
  LOBYTE(v51) = 0;
  sub_7655D0();
  v51 = 0;
  sub_7655D0();
  sub_765500();
  v51 = 0x4018000000000000;
  sub_7655D0();
  v51 = 0x4038000000000000;
  sub_7655D0();
  v50 = 0x4034000000000000;
  v51 = 0x4030000000000000;
  sub_7655B0();
  *v3 = v36;
  v47(v3, v31, v32);
  LOBYTE(v51) = 0;
  sub_7655D0();
  v51 = 0;
  sub_7655D0();
  result = sub_765500();
  qword_94F770 = v39;
  return result;
}

id sub_31A434(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  *&v4[OBJC_IVAR____TtC18ASMessagesProvider18TagFacetRibbonView_tagFacetViews] = _swiftEmptyArrayStorage;
  sub_75EE50();
  *&v4[OBJC_IVAR____TtC18ASMessagesProvider18TagFacetRibbonView_ribbonBarItemModels] = 0;
  *&v4[OBJC_IVAR____TtC18ASMessagesProvider18TagFacetRibbonView_impressionsCalculator] = 0;
  v10 = &v4[OBJC_IVAR____TtC18ASMessagesProvider18TagFacetRibbonView_impressionsUpdateBlock];
  *v10 = 0;
  *(v10 + 1) = 0;
  *&v4[OBJC_IVAR____TtC18ASMessagesProvider18TagFacetRibbonView_maxRowsStandard] = 2;
  *&v4[OBJC_IVAR____TtC18ASMessagesProvider18TagFacetRibbonView_maxRowsAX] = 5;
  v18.receiver = v4;
  v18.super_class = ObjectType;
  v11 = objc_msgSendSuper2(&v18, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v15 = v11;
  [v15 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  if (qword_93CA48 != -1)
  {
    swift_once();
  }

  [v15 setMaximumContentSizeCategory:qword_94F778];
  sub_BD88(&qword_9477F0);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_77B6D0;
  *(v16 + 32) = sub_7676F0();
  *(v16 + 40) = &protocol witness table for UITraitLegibilityWeight;
  sub_769F40();

  swift_unknownObjectRelease();

  return v15;
}

id sub_31A6F4(id result)
{
  v2 = result;
  v3 = OBJC_IVAR____TtC18ASMessagesProvider18TagFacetRibbonView_tagFacetViews;
  v4 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider18TagFacetRibbonView_tagFacetViews];
  if (v4 >> 62)
  {
    result = sub_76A860();
    v5 = result;
    if (!result)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v5 = *(&dword_10 + (v4 & 0xFFFFFFFFFFFFFF8));
    if (!v5)
    {
      goto LABEL_10;
    }
  }

  if (v5 < 1)
  {
    __break(1u);
    goto LABEL_27;
  }

  for (i = 0; i != v5; ++i)
  {
    if ((v4 & 0xC000000000000001) != 0)
    {
      v7 = sub_76A770();
    }

    else
    {
      v7 = *(v4 + 8 * i + 32);
    }

    v8 = v7;
    [v7 removeFromSuperview];
  }

LABEL_10:
  *&v1[v3] = v2;

  v9 = *&v1[v3];
  if (v9 >> 62)
  {
    result = sub_76A860();
    v10 = result;
    if (result)
    {
LABEL_12:
      if (v10 >= 1)
      {

        for (j = 0; j != v10; ++j)
        {
          if ((v9 & 0xC000000000000001) != 0)
          {
            v12 = sub_76A770();
          }

          else
          {
            v12 = *(v9 + 8 * j + 32);
          }

          v13 = v12;
          [v1 addSubview:v12];
        }

        goto LABEL_19;
      }

LABEL_27:
      __break(1u);
      return result;
    }
  }

  else
  {
    v10 = *(&dword_10 + (v9 & 0xFFFFFFFFFFFFFF8));
    if (v10)
    {
      goto LABEL_12;
    }
  }

LABEL_19:

  return [v1 setNeedsLayout];
}

uint64_t sub_31A8A4()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v20 = sub_7664F0();
  v18 = *(v20 - 8);
  __chkstk_darwin(v20);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_75EE60();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_75EE70();
  v19 = *(v21 - 8);
  *&v9 = __chkstk_darwin(v21).n128_u64[0];
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22.receiver = v1;
  v22.super_class = ObjectType;
  objc_msgSendSuper2(&v22, "layoutSubviews", v9);

  sub_14119C(v12);

  (*(v6 + 16))(v8, &v1[OBJC_IVAR____TtC18ASMessagesProvider18TagFacetRibbonView_metrics], v5);
  sub_75EE20();
  sub_75D650();
  sub_75EE40();
  (*(v18 + 8))(v4, v20);
  v13 = &v1[OBJC_IVAR____TtC18ASMessagesProvider18TagFacetRibbonView_impressionsUpdateBlock];
  swift_beginAccess();
  v14 = *v13;
  if (*v13)
  {
    swift_endAccess();

    v14(v15);
    sub_F704(v14);
    return (*(v19 + 8))(v11, v21);
  }

  else
  {
    (*(v19 + 8))(v11, v21);
    return swift_endAccess();
  }
}

double sub_31AC00(uint64_t a1)
{
  v14[1] = a1;
  v2 = sub_75EE60();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_75EE70();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);

  sub_14119C(v10);

  (*(v3 + 16))(v5, v1 + OBJC_IVAR____TtC18ASMessagesProvider18TagFacetRibbonView_metrics, v2);
  sub_75EE20();
  sub_75EE30();
  v12 = v11;
  (*(v7 + 8))(v9, v6);
  return v12;
}

id sub_31AEAC(double *a1, double *a2, double *a3)
{
  v4 = a1;
  *(v3 + OBJC_IVAR____TtC18ASMessagesProvider18TagFacetRibbonView_maxRowsStandard) = a2;
  *(v3 + OBJC_IVAR____TtC18ASMessagesProvider18TagFacetRibbonView_maxRowsAX) = a3;
  *(v3 + OBJC_IVAR____TtC18ASMessagesProvider18TagFacetRibbonView_ribbonBarItemModels) = a1;

  v24 = _swiftEmptyArrayStorage;
  if (v4 >> 62)
  {
    goto LABEL_21;
  }

  v5 = *(&dword_10 + (v4 & 0xFFFFFFFFFFFFFF8));
LABEL_3:

  if (v5)
  {
    v19 = v3;
    v20 = v4;
    v6 = 0;
    v21 = v4 & 0xFFFFFFFFFFFFFF8;
    v22 = v4 & 0xC000000000000001;
    while (1)
    {
      if (v22)
      {
        v7 = sub_76A770();
        v8 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          goto LABEL_19;
        }
      }

      else
      {
        if (v6 >= *(v21 + 16))
        {
          goto LABEL_20;
        }

        v7 = *&v4[v6 + 4];

        v8 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
LABEL_19:
          __break(1u);
LABEL_20:
          __break(1u);
LABEL_21:
          v5 = sub_76A860();
          goto LABEL_3;
        }
      }

      v9 = [objc_allocWithZone(type metadata accessor for RibbonBarItemCollectionViewCell()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
      sub_75A110();
      sub_768900();
      sub_768ED0();
      v10 = sub_75A4D0();
      if (v10)
      {
        v11 = v10;
        v12 = v5;
        v13 = swift_allocObject();
        swift_weakInit();
        v14 = swift_allocObject();
        *(v14 + 16) = v13;
        *(v14 + 24) = v11;
        v15 = &v9[OBJC_IVAR____TtC18ASMessagesProvider31RibbonBarItemCollectionViewCell_tapAction];
        v16 = *&v9[OBJC_IVAR____TtC18ASMessagesProvider31RibbonBarItemCollectionViewCell_tapAction];
        *v15 = sub_31BB70;
        v15[1] = v14;

        sub_F704(v16);
        v5 = v12;
        v4 = v20;
      }

      sub_1707C8(v7, v23);

      sub_769440();
      if (*(&dword_10 + (v24 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v24 & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        sub_7694C0();
      }

      v3 = &v24;
      sub_769500();
      ++v6;
      if (v8 == v5)
      {
        v17 = v24;
        v3 = v19;
        goto LABEL_18;
      }
    }
  }

  v17 = _swiftEmptyArrayStorage;
LABEL_18:
  sub_31A6F4(v17);
  return [v3 setNeedsLayout];
}

void sub_31B1D4()
{
  v0 = sub_BD88(&unk_93FF30);
  __chkstk_darwin(v0 - 8);
  v2 = &v35 - v1;
  v3 = sub_768AB0();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    swift_beginAccess();
    v9 = swift_weakLoadStrong();
    if (v9)
    {
      v10 = v9;
      v47 = *&v8[OBJC_IVAR____TtC18ASMessagesProvider18TagFacetRibbonView_ribbonBarItemModels];
      if (v47)
      {
        v11 = *&v8[OBJC_IVAR____TtC18ASMessagesProvider18TagFacetRibbonView_tagFacetViews];
        v37 = v8;
        if (v11 >> 62)
        {
          goto LABEL_39;
        }

        for (i = *(&dword_10 + (v11 & 0xFFFFFFFFFFFFFF8)); ; i = sub_76A860())
        {

          if (!i)
          {
            break;
          }

          v45 = v11 & 0xFFFFFFFFFFFFFF8;
          v46 = v11 & 0xC000000000000001;
          v13 = v47 & 0xFFFFFFFFFFFFFF8;
          if (v47 >= 0)
          {
            v14 = v47 & 0xFFFFFFFFFFFFFF8;
          }

          else
          {
            v14 = v47;
          }

          v35 = v14;
          v39 = (v4 + 32);
          v40 = (v4 + 48);
          v38 = (v4 + 8);
          v15 = 4;
          v43 = v47 & 0xC000000000000001;
          v44 = v47 >> 62;
          v41 = v47 & 0xFFFFFFFFFFFFFF8;
          v42 = i;
          v36 = v2;
          while (1)
          {
            v4 = v15 - 4;
            if (v46)
            {
              v16 = sub_76A770();
            }

            else
            {
              if (v4 >= *(v45 + 16))
              {
                goto LABEL_37;
              }

              v16 = *(v11 + 8 * v15);
            }

            v17 = v16;
            v18 = v15 - 3;
            if (__OFADD__(v4, 1))
            {
              break;
            }

            if (v44)
            {
              if (v4 == sub_76A860())
              {
LABEL_33:

                goto LABEL_34;
              }
            }

            else if (v4 == *(v13 + 16))
            {
              goto LABEL_33;
            }

            if (v43)
            {
              sub_76A770();
            }

            else
            {
              if (v4 >= *(v13 + 16))
              {
                goto LABEL_38;
              }
            }

            sub_75A4F0();
            if ((*v40)(v2, 1, v3) == 1)
            {

              sub_1F7B64(v2);
            }

            else
            {
              (*v39)(v6, v2, v3);
              v19 = v17;
              if ([v19 isHidden])
              {
              }

              else
              {
                [v19 frame];
                v21 = v20;
                v23 = v22;
                v25 = v24;
                v27 = v26;

                v28 = v11;
                v29 = v10;
                v30 = v3;
                v31 = v6;
                v32 = v37;
                v33 = [v37 superview];
                v34 = v32;
                v6 = v31;
                v3 = v30;
                v10 = v29;
                v11 = v28;
                v2 = v36;
                [v34 convertRect:v33 toView:{v21, v23, v25, v27}];

                sub_75F4B0();
              }

              (*v38)(v6, v3);
            }

            ++v15;
            v13 = v41;
            if (v18 == v42)
            {
              goto LABEL_34;
            }
          }

          __break(1u);
LABEL_37:
          __break(1u);
LABEL_38:
          __break(1u);
LABEL_39:
          ;
        }

LABEL_34:
      }

      else
      {
      }
    }

    else
    {
    }
  }
}

uint64_t type metadata accessor for TagFacetRibbonView()
{
  result = qword_94F7C0;
  if (!qword_94F7C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_31B774()
{
  result = sub_75EE60();
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

uint64_t sub_31B880(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18ASMessagesProvider18TagFacetRibbonView_impressionsCalculator;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_31B938()
{
  v1 = (v0 + OBJC_IVAR____TtC18ASMessagesProvider18TagFacetRibbonView_impressionsUpdateBlock);
  swift_beginAccess();
  v2 = *v1;
  sub_F714(*v1);
  return v2;
}

uint64_t sub_31B994(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC18ASMessagesProvider18TagFacetRibbonView_impressionsUpdateBlock);
  swift_beginAccess();
  v6 = *v5;
  *v5 = a1;
  v5[1] = a2;
  return sub_F704(v6);
}

void (*sub_31BA54())()
{
  v0 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v1 = swift_allocObject();
  swift_weakInit();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  *(v2 + 24) = v1;
  return sub_31BB64;
}

uint64_t sub_31BAF4()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_31BB2C()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_31BB78(void *a1)
{
  sub_B170(a1, a1[3]);
  v2 = sub_767660();
  if (qword_93CA48 != -1)
  {
    swift_once();
  }

  v3 = qword_94F778;
  if (sub_769B40())
  {
    v3;
  }

  sub_10974(a1, a1[3]);
  return sub_767670();
}

id sub_31BCC0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ScreenshotGalleryCollectionViewCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for ScreenshotGalleryCollectionViewCell()
{
  result = qword_94F7F8;
  if (!qword_94F7F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_31BD84(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18ASMessagesProvider24MultiAppFallbackIconView_configuration;
  if (*&v1[OBJC_IVAR____TtC18ASMessagesProvider24MultiAppFallbackIconView_configuration])
  {
    swift_unknownObjectWeakAssign();

    sub_31BE4C();
  }

  *&v1[v3] = a1;

  if (a1)
  {
    sub_31C180();
    swift_unknownObjectWeakAssign();
    sub_31BE4C();
    [v1 setNeedsLayout];
  }

  return result;
}

void sub_31BE4C()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    swift_beginAccess();
    v3 = *(v0 + 40);
    v4 = 1 << *(v3 + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(v3 + 64);
    v7 = OBJC_IVAR____TtC18ASMessagesProvider24MultiAppFallbackIconView_iconViews;

    swift_beginAccess();
    v8 = 0;
    v9 = (v4 + 63) >> 6;
    while (v6)
    {
LABEL_10:
      v11 = (v8 << 9) | (8 * __clz(__rbit64(v6)));
      v12 = *(*(v3 + 48) + v11);
      v13 = *(*(v3 + 56) + v11);
      v14 = *&v2[v7];
      if (v14 >> 62)
      {
        v15 = sub_76A860();
      }

      else
      {
        v15 = *(&dword_10 + (v14 & 0xFFFFFFFFFFFFFF8));
      }

      v6 &= v6 - 1;
      if ((v12 & 0x8000000000000000) == 0 && v12 < v15)
      {
        swift_beginAccess();
        v16 = *&v2[v7];
        if ((v16 & 0xC000000000000001) != 0)
        {
          v22 = v13;
          v19 = sub_76A770();
        }

        else
        {
          if (v12 >= *(&dword_10 + (v16 & 0xFFFFFFFFFFFFFF8)))
          {
            goto LABEL_23;
          }

          v17 = *(v16 + 8 * v12 + 32);
          v18 = v13;
          v19 = v17;
        }

        v20 = v19;
        swift_endAccess();
        v21 = v13;
        sub_759190();
        [v2 setNeedsDisplay];
      }
    }

    while (1)
    {
      v10 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if (v10 >= v9)
      {

        return;
      }

      v6 = *(v3 + 64 + 8 * v10);
      ++v8;
      if (v6)
      {
        v8 = v10;
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
  }
}

void sub_31C03C(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = OBJC_IVAR____TtC18ASMessagesProvider24MultiAppFallbackIconView_iconViews;
  swift_beginAccess();
  v7 = *&v3[v6];
  if (v7 >> 62)
  {
    v8 = sub_76A860();
    if (a2 < 0)
    {
      return;
    }
  }

  else
  {
    v8 = *(&dword_10 + (v7 & 0xFFFFFFFFFFFFFF8));
    if (a2 < 0)
    {
      return;
    }
  }

  if (v8 > a2)
  {
    swift_beginAccess();
    v9 = *&v3[v6];
    if ((v9 & 0xC000000000000001) != 0)
    {
      v10 = sub_76A770();
    }

    else
    {
      if (*(&dword_10 + (v9 & 0xFFFFFFFFFFFFFF8)) <= a2)
      {
        __break(1u);
        return;
      }

      v10 = *(v9 + 8 * a2 + 32);
    }

    v11 = v10;
    swift_endAccess();
    v12 = a1;
    sub_759190();
    [v3 setNeedsDisplay];
  }
}

uint64_t sub_31C140()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocClassInstance();
}

uint64_t sub_31C180()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v39 = sub_765080();
  v2 = *(v39 - 8);
  __chkstk_darwin(v39);
  v38 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = OBJC_IVAR____TtC18ASMessagesProvider24MultiAppFallbackIconView_iconViews;
  result = swift_beginAccess();
  v6 = *&v1[v4];
  if (v6 >> 62)
  {
    result = sub_76A860();
    v7 = result;
    v8 = _TtC18ASMessagesProvider22MultipleScrollObserver;
    if (!result)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v7 = *(&dword_10 + (v6 & 0xFFFFFFFFFFFFFF8));
    v8 = _TtC18ASMessagesProvider22MultipleScrollObserver;
    if (!v7)
    {
      goto LABEL_10;
    }
  }

  if (v7 < 1)
  {
    __break(1u);
    goto LABEL_30;
  }

  v35 = v2;
  v36 = v4;

  v9 = 0;
  do
  {
    if ((v6 & 0xC000000000000001) != 0)
    {
      v10 = sub_76A770();
    }

    else
    {
      v10 = *(v6 + 8 * v9 + 32);
    }

    v11 = v10;
    ++v9;
    v40 = v10;
    swift_beginAccess();
    sub_BD88(&qword_94F910);
    sub_767470();
    swift_endAccess();
  }

  while (v7 != v9);

  v2 = v35;
  v4 = v36;
  v8 = _TtC18ASMessagesProvider22MultipleScrollObserver;
LABEL_10:
  *&v1[v4] = _swiftEmptyArrayStorage;

  v12 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider24MultiAppFallbackIconView_configuration];
  if (!v12)
  {
    return result;
  }

  v13 = *(v12 + 24);
  if (v13 < 0)
  {
LABEL_30:
    __break(1u);
    return result;
  }

  if (v13)
  {
    vtable = v8[51].vtable;
    v35 = v2 + 2;
    v36 = vtable;
    v34 = (v2 + 1);

    do
    {
      while (1)
      {
        __chkstk_darwin(v15);
        v16 = ObjectType;
        *(&v33 - 2) = v12;
        *(&v33 - 1) = v16;
        swift_beginAccess();
        sub_BD88(&qword_94F910);
        sub_767450();
        swift_endAccess();
        v17 = v40;
        if (*(v12 + 24) == 3)
        {
          v18 = qword_99B610;
          if (qword_93C590 != -1)
          {
            swift_once();
            v18 = qword_99B610;
          }
        }

        else
        {
          v18 = qword_99B5F8;
          if (qword_93C588 != -1)
          {
            swift_once();
            v18 = qword_99B5F8;
          }
        }

        v19 = v39;
        v20 = sub_BE38(v39, v18);
        (*v35)(v38, v20, v19);
        v21 = v17;
        v22 = [v21 layer];
        sub_765070();
        [v22 setShadowOffset:?];

        v23 = [v21 layer];
        v24 = sub_765060();
        v25 = [v24 CGColor];

        [v23 setShadowColor:v25];
        v26 = [v21 layer];
        sub_765040();
        [v26 setShadowRadius:?];

        v27 = [v21 layer];
        LODWORD(v28) = 1.0;
        [v27 setShadowOpacity:v28];

        [v21 setClipsToBounds:0];
        swift_beginAccess();
        v29 = v21;
        sub_769440();
        if (*(&dword_10 + (*&v1[v4] & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (*&v1[v4] & 0xFFFFFFFFFFFFFF8)) >> 1)
        {
          sub_7694C0();
        }

        sub_769500();
        swift_endAccess();
        v30 = [v29 superview];

        if (v30)
        {
          sub_BE70(0, &qword_93E550);
          v31 = v1;
          v32 = sub_76A1C0();

          if (v32)
          {
            break;
          }
        }

        [v1 addSubview:v29];

        v15 = (*v34)(v38, v39);
        if (!--v13)
        {
        }
      }

      (*v34)(v38, v39);

      --v13;
    }

    while (v13);
  }

  return result;
}

void sub_31C9C0(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 32);
  sub_759210();
  if (v3 == 1)
  {
    v4 = sub_759000();
  }

  else
  {
    v4 = sub_759020();
  }

  v5 = v4;
  sub_BE70(0, &qword_93E540);
  sub_76A030();
  sub_759070();
  v6 = v5;
  sub_759080();
  sub_75CD00();
  sub_759090();
  sub_75CD10();

  *a2 = v6;
}

void sub_31CA70()
{
  v1 = v0;
  v18.receiver = v0;
  v18.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v18, "layoutSubviews");
  v2 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider24MultiAppFallbackIconView_configuration];
  if (v2 && *(v2 + 24) >= 1)
  {
    v3 = OBJC_IVAR____TtC18ASMessagesProvider24MultiAppFallbackIconView_iconViews;
    swift_beginAccess();
    v4 = *&v1[v3];
    v5 = v4 >> 62 ? sub_76A860() : *(&dword_10 + (v4 & 0xFFFFFFFFFFFFFF8));
    if (v5 == *(v2 + 24))
    {
      v6 = *&v1[v3];
      if (v6 >> 62)
      {
        sub_BE70(0, &qword_93E550);

        v7 = sub_76A850();
      }

      else
      {
        swift_bridgeObjectRetain_n();

        sub_76A960();
        sub_BE70(0, &qword_93E550);
        v7 = v6;
      }

      if (v1[OBJC_IVAR____TtC18ASMessagesProvider24MultiAppFallbackIconView_sizeCategory] == 7)
      {
        v8 = 5;
      }

      else
      {
        v8 = v1[OBJC_IVAR____TtC18ASMessagesProvider24MultiAppFallbackIconView_sizeCategory];
      }

      sub_75D650();
      v10 = v9;
      v12 = v11;
      v14 = v13;
      v16 = v15;
      v17 = [v1 traitCollection];
      sub_69B5D8(v10, v12, v14, v16, v17, v7, v8);
    }
  }
}

uint64_t sub_31CCA4(uint64_t result, double a2, double a3)
{
  v4 = *(v3 + OBJC_IVAR____TtC18ASMessagesProvider24MultiAppFallbackIconView_configuration);
  if (v4 && *(v4 + 24) >= 1)
  {
    v5 = result;
    v8 = OBJC_IVAR____TtC18ASMessagesProvider24MultiAppFallbackIconView_iconViews;
    swift_beginAccess();
    v9 = *(v3 + v8);
    result = v9 >> 62 ? sub_76A860() : *(&dword_10 + (v9 & 0xFFFFFFFFFFFFFF8));
    if (result == *(v4 + 24))
    {
      v10 = *(v3 + v8);
      if (v10 >> 62)
      {
        sub_BE70(0, &qword_93E550);

        v11 = sub_76A850();
      }

      else
      {
        swift_bridgeObjectRetain_n();

        sub_76A960();
        sub_BE70(0, &qword_93E550);
        v11 = v10;
      }

      if (*(v3 + OBJC_IVAR____TtC18ASMessagesProvider24MultiAppFallbackIconView_sizeCategory) == 7)
      {
        v12 = 5;
      }

      else
      {
        v12 = *(v3 + OBJC_IVAR____TtC18ASMessagesProvider24MultiAppFallbackIconView_sizeCategory);
      }

      sub_69B708(a2, a3, v5, v11, v12);
    }
  }

  return result;
}

uint64_t type metadata accessor for MultiAppFallbackIconView()
{
  result = qword_94F840;
  if (!qword_94F840)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_31CFCC()
{
  sub_31D080();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_31D080()
{
  if (!qword_94F850)
  {
    sub_133D8(&qword_9464F8);
    sub_31D0F0();
    v0 = sub_767490();
    if (!v1)
    {
      atomic_store(v0, &qword_94F850);
    }
  }
}

unint64_t sub_31D0F0()
{
  result = qword_946500;
  if (!qword_946500)
  {
    sub_133D8(&qword_9464F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_946500);
  }

  return result;
}

uint64_t sub_31D1A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v33 = a3;
  v5 = sub_75D3C0();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = enum case for ComponentSeparator.Position.top(_:);
  v11 = *(v6 + 104);
  (v11)(v9, enum case for ComponentSeparator.Position.top(_:), v5, v7);
  v12 = sub_75D3B0();
  v14 = v13;
  v32 = v6;
  v29 = *(v6 + 8);
  v29(v9, v5);
  v34._countAndFlagsBits = v12;
  v34._object = v14;
  v30 = a1;
  v31 = a2;
  LOBYTE(v12) = sub_7692E0(v34);

  if (v12 & 1) != 0 || (v10 = enum case for ComponentSeparator.Position.bottom(_:), v11(v9, enum case for ComponentSeparator.Position.bottom(_:), v5), v15 = sub_75D3B0(), v17 = v16, v29(v9, v5), v35._countAndFlagsBits = v15, v35._object = v17, LOBYTE(v15) = sub_7692E0(v35), , (v15) || (v10 = enum case for ComponentSeparator.Position.leading(_:), v11(v9, enum case for ComponentSeparator.Position.leading(_:), v5), v18 = sub_75D3B0(), v20 = v19, v29(v9, v5), v36._countAndFlagsBits = v18, v36._object = v20, LOBYTE(v18) = sub_7692E0(v36), , (v18) || (v10 = enum case for ComponentSeparator.Position.trailing(_:), v11(v9, enum case for ComponentSeparator.Position.trailing(_:), v5), v21 = sub_75D3B0(), v23 = v22, v29(v9, v5), v37._countAndFlagsBits = v21, v37._object = v23, v24 = sub_7692E0(v37), , v24))
  {
    v25 = v33;
    v11(v33, v10, v5);
    v26 = 0;
  }

  else
  {
    v26 = 1;
    v25 = v33;
  }

  return (*(v32 + 56))(v25, v26, 1, v5);
}

char *sub_31D470(double a1, double a2, double a3, double a4)
{
  v9 = sub_75D3C0();
  v10 = __chkstk_darwin(v9);
  (*(v12 + 104))(&v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), enum case for ComponentSeparator.Position.bottom(_:), v10);
  sub_75D3D0();
  v13 = OBJC_IVAR____TtC18ASMessagesProvider26SeparatorSupplementaryView_lineView;
  *&v4[v13] = [objc_allocWithZone(UIView) init];
  v14 = OBJC_IVAR____TtC18ASMessagesProvider26SeparatorSupplementaryView_lineColor;
  *&v4[v14] = [objc_opt_self() separatorColor];
  v15 = type metadata accessor for SeparatorSupplementaryView();
  v19.receiver = v4;
  v19.super_class = v15;
  v16 = objc_msgSendSuper2(&v19, "initWithFrame:", a1, a2, a3, a4);
  [v16 setUserInteractionEnabled:0];
  [v16 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];
  [v16 setEdgesInsettingLayoutMarginsFromSafeArea:0];
  v17 = OBJC_IVAR____TtC18ASMessagesProvider26SeparatorSupplementaryView_lineView;
  [*&v16[OBJC_IVAR____TtC18ASMessagesProvider26SeparatorSupplementaryView_lineView] setBackgroundColor:*&v16[OBJC_IVAR____TtC18ASMessagesProvider26SeparatorSupplementaryView_lineColor]];
  [v16 addSubview:*&v16[v17]];

  return v16;
}

void sub_31D6C4()
{
  v1 = v0;
  v2 = sub_75D400();
  v3 = *(v2 - 8);
  *&v4 = __chkstk_darwin(v2).n128_u64[0];
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  [v1 setNeedsLayout];
  v7 = OBJC_IVAR____TtC18ASMessagesProvider26SeparatorSupplementaryView_separator;
  swift_beginAccess();
  (*(v3 + 16))(v6, &v1[v7], v2);
  v8 = sub_75D380();
  (*(v3 + 8))(v6, v2);
  if (!v8)
  {
    v8 = [objc_opt_self() separatorColor];
  }

  v9 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider26SeparatorSupplementaryView_lineColor];
  *&v1[OBJC_IVAR____TtC18ASMessagesProvider26SeparatorSupplementaryView_lineColor] = v8;
  v10 = v8;

  [*&v1[OBJC_IVAR____TtC18ASMessagesProvider26SeparatorSupplementaryView_lineView] setBackgroundColor:v10];
}

double sub_31D844(double a1)
{
  v25 = sub_75D3C0();
  v27 = *(v25 - 8);
  __chkstk_darwin(v25);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_75D400();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v23 - v10;
  v12 = OBJC_IVAR____TtC18ASMessagesProvider26SeparatorSupplementaryView_separator;
  swift_beginAccess();
  v13 = *(v6 + 16);
  v26 = v1;
  v13(v11, v1 + v12, v5);
  sub_75D3E0();
  v14 = *(v6 + 8);
  v15 = v11;
  v16 = v27;
  v17 = v25;
  v14(v15, v5);
  v18 = (*(v16 + 88))(v4, v17);
  if (v18 == enum case for ComponentSeparator.Position.top(_:) || v18 == enum case for ComponentSeparator.Position.bottom(_:))
  {
    v13(v8, v26 + v12, v5);
    sub_75D3A0();
    v14(v8, v5);
  }

  else
  {
    v24 = v14;
    if (v18 == enum case for ComponentSeparator.Position.leading(_:) || v18 == enum case for ComponentSeparator.Position.trailing(_:))
    {
      v13(v8, v26 + v12, v5);
      sub_75D3A0();
      a1 = v21;
      v24(v8, v5);
    }

    else
    {
      (*(v16 + 8))(v4, v17);
      return 0.0;
    }
  }

  return a1;
}

id sub_31DD18()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SeparatorSupplementaryView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for SeparatorSupplementaryView()
{
  result = qword_94F950;
  if (!qword_94F950)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_31DE30()
{
  result = sub_75D400();
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

void sub_31DED0()
{
  v1 = sub_75D3C0();
  v2 = __chkstk_darwin(v1);
  (*(v4 + 104))(&v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), enum case for ComponentSeparator.Position.bottom(_:), v2);
  sub_75D3D0();
  v5 = OBJC_IVAR____TtC18ASMessagesProvider26SeparatorSupplementaryView_lineView;
  *(v0 + v5) = [objc_allocWithZone(UIView) init];
  v6 = OBJC_IVAR____TtC18ASMessagesProvider26SeparatorSupplementaryView_lineColor;
  *(v0 + v6) = [objc_opt_self() separatorColor];
  sub_76A840();
  __break(1u);
}

id sub_31E040(char a1, char a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = OBJC_IVAR____TtC18ASMessagesProvider33OnboardingAdPrivacyViewController_adPrivacyHeaderIconView;
  *&v5[v11] = [objc_allocWithZone(type metadata accessor for OnboardingAdPrivacyHeaderIconView()) init];
  v5[OBJC_IVAR____TtC18ASMessagesProvider33OnboardingAdPrivacyViewController_buttonsStyle] = a1 & 1;
  v12 = &v5[OBJC_IVAR____TtC18ASMessagesProvider33OnboardingAdPrivacyViewController_buttonsCallback];
  *v12 = a3;
  v12[1] = a4;

  v19._object = 0x80000000007DB5C0;
  v19._countAndFlagsBits = 0xD000000000000025;
  v20._countAndFlagsBits = 0;
  v20._object = 0xE000000000000000;
  sub_75B750(v19, v20);
  sub_75E8F0();
  v13 = sub_769210();

  v14 = sub_769210();

  v18.receiver = v5;
  v18.super_class = ObjectType;
  v15 = objc_msgSendSuper2(&v18, "initWithTitle:detailText:icon:contentLayout:", v13, v14, 0, 2);

  v16 = v15;
  [v16 setModalInPresentation:1];
  [v16 setDisableButtonsUntilAllContentWasVisable:a2 & 1];

  return v16;
}

void sub_31E1D8()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v53 = sub_768C60();
  v50 = *(v53 - 8);
  __chkstk_darwin(v53);
  v52 = &v46 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_BD88(&unk_954ED0);
  __chkstk_darwin(v4 - 8);
  v6 = &v46 - v5;
  v7 = sub_76A3F0();
  v8 = *(v7 - 8);
  *&v9 = __chkstk_darwin(v7).n128_u64[0];
  v11 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58.receiver = v1;
  v58.super_class = ObjectType;
  objc_msgSendSuper2(&v58, "viewDidLoad", v9);
  v12 = [v1 headerView];
  LODWORD(v13) = 1036831949;
  [v12 setTitleHyphenationFactor:v13];

  v14 = [v1 headerView];
  v15 = [v14 customIconContainerView];

  if (v15)
  {
    [v15 addSubview:*&v1[OBJC_IVAR____TtC18ASMessagesProvider33OnboardingAdPrivacyViewController_adPrivacyHeaderIconView]];
  }

  v16 = [objc_opt_self() accessoryButton];
  v59._countAndFlagsBits = 0xD00000000000002ALL;
  v59._object = 0x80000000007DB690;
  v62._countAndFlagsBits = 0;
  v62._object = 0xE000000000000000;
  sub_75B750(v59, v62);
  v17 = sub_769210();

  [v16 setTitle:v17 forState:0];

  [v16 addTarget:v1 action:"didTapLearnMore" forControlEvents:64];
  v18 = v16;
  v19 = sub_769210();
  [v18 setAccessibilityIdentifier:v19];

  v20 = [v1 headerView];
  v51 = v18;
  [v20 addAccessoryButton:v18];

  v21 = v1[OBJC_IVAR____TtC18ASMessagesProvider33OnboardingAdPrivacyViewController_buttonsStyle];
  v22 = objc_opt_self();
  v23 = [v22 boldButton];
  v24 = v23;
  if (v21)
  {
    v25 = objc_opt_self();
    v26 = v24;
    v27 = [v25 linkButton];
  }

  else
  {
    v48 = v23;
    v47 = [v22 boldButton];
    sub_76A370();
    v28 = objc_opt_self();
    v29 = [v28 systemBlueColor];
    sub_76A320();
    v30 = [v28 systemGray5Color];
    v31 = sub_76A230();
    sub_767760();
    v31(&v56, 0);
    v32 = *(v8 + 16);
    v32(v6, v11, v7);
    v49 = v1;
    v33 = v24;
    v34 = *(v8 + 56);
    v34(v6, 0, 1, v7);
    v35 = v48;
    sub_76A420();

    v32(v6, v11, v7);
    v34(v6, 0, 1, v7);
    v24 = v33;
    v1 = v49;
    v36 = v47;
    sub_76A420();
    v27 = v36;

    (*(v8 + 8))(v11, v7);
  }

  v37 = v24;
  v60._countAndFlagsBits = 0xD000000000000027;
  v60._object = 0x80000000007DB6F0;
  v63._countAndFlagsBits = 0;
  v63._object = 0xE000000000000000;
  sub_75B750(v60, v63);
  v38 = sub_769210();

  [v37 setTitle:v38 forState:0];

  [v37 addTarget:v1 action:"didTapTurnOn" forControlEvents:64];
  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v39 = v52;
  sub_768BB0();
  sub_BDD0(&v54);
  sub_BDD0(&v56);
  sub_769E70();

  v40 = *(v50 + 8);
  v41 = v53;
  v40(v39, v53);
  v42 = [v1 buttonTray];
  [v42 addButton:v37];

  v43 = v27;
  v61._countAndFlagsBits = 0xD000000000000028;
  v61._object = 0x80000000007DB720;
  v64._countAndFlagsBits = 0;
  v64._object = 0xE000000000000000;
  sub_75B750(v61, v64);
  v44 = sub_769210();

  [v43 setTitle:v44 forState:0];

  [v43 addTarget:v1 action:"didTapTurnOff" forControlEvents:64];
  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  sub_768BB0();
  sub_BDD0(&v54);
  sub_BDD0(&v56);
  sub_769E70();

  v40(v39, v41);
  v45 = [v1 buttonTray];
  [v45 addButton:v43];
}

uint64_t sub_31E9C0()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_768380();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_7683C0();
  v8 = *(v7 - 8);
  *&v9 = __chkstk_darwin(v7).n128_u64[0];
  v11 = aBlock - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17.receiver = v1;
  v17.super_class = ObjectType;
  objc_msgSendSuper2(&v17, "viewDidLayoutSubviews", v9);
  sub_31EC70();
  sub_12EA98();
  v12 = sub_769970();
  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_31F394;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23F0CC;
  aBlock[3] = &unk_88D7F0;
  v14 = _Block_copy(aBlock);

  sub_7683A0();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_4C81C();
  sub_BD88(&qword_940350);
  sub_4C874();
  sub_76A5A0();
  sub_769980();
  _Block_release(v14);

  (*(v4 + 8))(v6, v3);
  return (*(v8 + 8))(v11, v7);
}

void sub_31EC70()
{
  v1 = v0;
  v2 = sub_76A920();
  v3 = *(v2 - 8);
  *&v4 = __chkstk_darwin(v2).n128_u64[0];
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [v1 headerView];
  v8 = [v7 customIconContainerView];

  if (v8)
  {
    v9 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider33OnboardingAdPrivacyViewController_adPrivacyHeaderIconView];
    [v8 bounds];
    v10 = OBJC_IVAR____TtC18ASMessagesProvider33OnboardingAdPrivacyHeaderIconView_label;
    [*&v9[OBJC_IVAR____TtC18ASMessagesProvider33OnboardingAdPrivacyHeaderIconView_label] sizeToFit];
    [*&v9[v10] frame];
    (*(v3 + 104))(v6, enum case for FloatingPointRoundingRule.up(_:), v2);
    sub_769D80();
    v12 = v11;
    v14 = v13;
    (*(v3 + 8))(v6, v2);
    [v8 bounds];
    v15 = CGRectGetMidX(v17) - v12 * 0.5;
    [v8 bounds];
    [v9 setFrame:{v15, CGRectGetMidY(v18) - v14 * 0.5, v12, v14}];
  }
}

void sub_31EE74()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  MidX = 0.0;
  if (Strong && (v2 = Strong, v3 = [Strong headerView], v2, v4 = objc_msgSend(v3, "customIconContainerView"), v3, v4))
  {
    [v4 bounds];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;

    v28.origin.x = v6;
    v28.origin.y = v8;
    v28.size.width = v10;
    v28.size.height = v12;
    MidX = CGRectGetMidX(v28);
    v13 = 0;
  }

  else
  {
    v13 = 1;
  }

  swift_beginAccess();
  v14 = swift_unknownObjectWeakLoadStrong();
  if (!v14)
  {
    if (v13)
    {
      return;
    }

    goto LABEL_12;
  }

  v15 = v14;
  v16 = *(v14 + OBJC_IVAR____TtC18ASMessagesProvider33OnboardingAdPrivacyViewController_adPrivacyHeaderIconView);

  [v16 frame];
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;

  v29.origin.x = v18;
  v29.origin.y = v20;
  v29.size.width = v22;
  v29.size.height = v24;
  if (MidX == CGRectGetMidX(v29))
  {
    v25 = v13;
  }

  else
  {
    v25 = 1;
  }

  if (v25 == 1)
  {
LABEL_12:
    swift_beginAccess();
    v26 = swift_unknownObjectWeakLoadStrong();
    if (v26)
    {
      v27 = v26;
      sub_31EC70();
    }
  }
}

void sub_31F0D8()
{
  v1 = sub_769210();
  v2 = [objc_opt_self() presenterForPrivacySplashWithIdentifier:v1];

  if (v2)
  {
    [v2 setPresentingViewController:v0];
  }

  [v2 present];
}

uint64_t sub_31F35C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_31F39C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

char *sub_31F3B4()
{
  ObjectType = swift_getObjectType();
  v2 = OBJC_IVAR____TtC18ASMessagesProvider33OnboardingAdPrivacyHeaderIconView_label;
  *&v0[v2] = [objc_allocWithZone(UILabel) init];
  v3 = OBJC_IVAR____TtC18ASMessagesProvider33OnboardingAdPrivacyHeaderIconView_backgroundView;
  *&v0[v3] = [objc_allocWithZone(UIView) init];
  v22.receiver = v0;
  v22.super_class = ObjectType;
  v4 = objc_msgSendSuper2(&v22, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
  v5 = OBJC_IVAR____TtC18ASMessagesProvider33OnboardingAdPrivacyHeaderIconView_backgroundView;
  v6 = *&v4[OBJC_IVAR____TtC18ASMessagesProvider33OnboardingAdPrivacyHeaderIconView_backgroundView];
  v7 = objc_opt_self();
  v8 = v6;
  v9 = [v7 systemBlueColor];
  [v8 setBackgroundColor:v9];

  v10 = [*&v4[v5] layer];
  [v10 setCornerRadius:20.0];

  v11 = [*&v4[v5] layer];
  [v11 setCornerCurve:kCACornerCurveCircular];

  [v4 addSubview:*&v4[v5]];
  v12 = OBJC_IVAR____TtC18ASMessagesProvider33OnboardingAdPrivacyHeaderIconView_label;
  v13 = *&v4[OBJC_IVAR____TtC18ASMessagesProvider33OnboardingAdPrivacyHeaderIconView_label];
  v14 = [v7 whiteColor];
  [v13 setTextColor:v14];

  v15 = *&v4[v12];
  v16 = objc_opt_self();
  v17 = v15;
  v18 = [v16 systemFontOfSize:32.0];
  [v17 setFont:v18];

  v19 = *&v4[v12];
  v23._object = 0x80000000007DB810;
  v23._countAndFlagsBits = 0xD00000000000001FLL;
  v24._countAndFlagsBits = 0;
  v24._object = 0xE000000000000000;
  sub_75B750(v23, v24);
  v20 = sub_769210();

  [v19 setText:v20];

  [v4 addSubview:*&v4[v12]];
  return v4;
}

id sub_31F734()
{
  v5.receiver = v0;
  v5.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v5, "layoutSubviews");
  v1 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider33OnboardingAdPrivacyHeaderIconView_backgroundView];
  [v0 bounds];
  [v1 setFrame:?];
  v2 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider33OnboardingAdPrivacyHeaderIconView_label];
  [v2 sizeToFit];
  [v2 frame];
  Width = CGRectGetWidth(v6);
  [v2 frame];
  return [v2 setFrame:{20.0, 5.0, Width, CGRectGetHeight(v7)}];
}

char *sub_31FBF0()
{
  ObjectType = swift_getObjectType();
  v2 = [objc_opt_self() effectWithBlurRadius:26.0];
  v3 = [objc_allocWithZone(UIVisualEffectView) initWithEffect:v2];

  v4 = OBJC_IVAR____TtC18ASMessagesProvider31AppBundleGradientBackgroundView_blurView;
  *&v0[OBJC_IVAR____TtC18ASMessagesProvider31AppBundleGradientBackgroundView_blurView] = v3;
  v5 = [objc_allocWithZone(CAFilter) initWithType:kCAFilterColorSaturate];
  isa = sub_769670().super.super.isa;
  [v5 setValue:isa forKey:kCAFilterInputAmount];

  v7 = [*&v0[v4] contentView];
  v8 = [v7 layer];

  sub_BD88(&qword_941C10);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_77B6D0;
  *(v9 + 56) = sub_320110();
  *(v9 + 32) = v5;
  v10 = v5;
  v11 = sub_769450().super.isa;

  [v8 setFilters:v11];

  *&v0[OBJC_IVAR____TtC18ASMessagesProvider31AppBundleGradientBackgroundView_gradientView] = [objc_allocWithZone(type metadata accessor for GradientView()) init];
  v29.receiver = v0;
  v29.super_class = ObjectType;
  v12 = objc_msgSendSuper2(&v29, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v16 = v12;
  [v16 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  [v16 setClipsToBounds:0];
  v17 = OBJC_IVAR____TtC18ASMessagesProvider31AppBundleGradientBackgroundView_gradientView;
  [v16 addSubview:*&v16[OBJC_IVAR____TtC18ASMessagesProvider31AppBundleGradientBackgroundView_gradientView]];
  [v16 addSubview:*&v16[OBJC_IVAR____TtC18ASMessagesProvider31AppBundleGradientBackgroundView_blurView]];
  v18 = [v16 layer];
  [v18 setAllowsGroupBlending:0];

  v19 = *&v16[v17];
  *&v28.a = _swiftEmptyArrayStorage;
  v20 = v19;
  sub_76A7C0();
  [objc_allocWithZone(UIColor) initWithWhite:1.0 alpha:1.0];
  sub_76A7A0();
  sub_76A7D0();
  sub_76A7E0();
  sub_76A7B0();
  [objc_allocWithZone(UIColor) initWithWhite:1.0 alpha:0.2];
  sub_76A7A0();
  sub_76A7D0();
  sub_76A7E0();
  sub_76A7B0();
  [objc_allocWithZone(UIColor) initWithWhite:1.0 alpha:0.0];
  sub_76A7A0();
  sub_76A7D0();
  sub_76A7E0();
  sub_76A7B0();
  *&v20[OBJC_IVAR____TtC18ASMessagesProvider12GradientView_colors] = _swiftEmptyArrayStorage;

  sub_4AC204();

  v21 = *&v16[v17];
  v22 = [v21 layer];
  objc_opt_self();
  [swift_dynamicCastObjCClassUnconditional() setStartPoint:{0.5, 1.0}];

  v23 = *&v16[v17];
  v24 = [v23 layer];
  objc_opt_self();
  [swift_dynamicCastObjCClassUnconditional() setEndPoint:{0.5, 0.0}];

  v25 = *&v16[v17];
  sub_4AC060(&off_87EFC0);

  v26 = *&v16[v17];
  CGAffineTransformMakeRotation(&v28, -0.20943951);
  [v26 setTransform:&v28];

  return v16;
}

unint64_t sub_320110()
{
  result = qword_945278;
  if (!qword_945278)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_945278);
  }

  return result;
}

uint64_t sub_32015C(uint64_t a1)
{
  v3 = sub_757AA0();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v7);
  v10 = &v24 - v9;
  v11 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider37InAppPurchaseLockupCollectionViewCell_lockupView);
  v12 = *(v4 + 16);
  v26 = a1;
  v12(&v24 - v9, a1, v3, v8);
  v13 = OBJC_IVAR____TtC18ASMessagesProvider23InAppPurchaseLockupView_theme;
  swift_beginAccess();
  (*(v4 + 24))(v11 + v13, v10, v3);
  swift_endAccess();
  sub_1EF700();
  v14 = *(v4 + 8);
  v14(v10, v3);
  (v12)(v6, v11 + v13, v3);
  LODWORD(v11) = (*(v4 + 88))(v6, v3);
  LODWORD(v12) = enum case for InAppPurchaseTheme.spotlight(_:);
  v14(v6, v3);
  v15 = v11 == v12;
  v16 = v25;
  if (v15)
  {
    v17 = OBJC_IVAR____TtC18ASMessagesProvider37InAppPurchaseLockupCollectionViewCell_spotlightView;
    if (!*&v25[OBJC_IVAR____TtC18ASMessagesProvider37InAppPurchaseLockupCollectionViewCell_spotlightView])
    {
      v18 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
      v19 = *&v16[v17];
      if (v19)
      {
        [v19 removeFromSuperview];
        v20 = *&v16[v17];
      }

      else
      {
        v20 = 0;
      }

      *&v16[v17] = v18;
      v21 = v18;

      if (v21)
      {
        [v21 _setCornerRadius:4.0];
        if (qword_93CA50 != -1)
        {
          swift_once();
        }

        [v21 setBackgroundColor:qword_99CA08];
        v22 = [v16 contentView];
        [v22 insertSubview:v21 atIndex:0];
      }

      [v16 setNeedsLayout];
    }
  }

  [v16 setNeedsLayout];
  return (v14)(v26, v3);
}

uint64_t sub_320474(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v94 = a4;
  v110 = a2;
  v106 = a1;
  v7 = sub_BD88(&unk_944E00);
  __chkstk_darwin(v7 - 8);
  v108 = &v80 - v8;
  v107 = sub_763750();
  v104 = *(v107 - 8);
  __chkstk_darwin(v107);
  v105 = &v80 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_BD88(&unk_948730);
  __chkstk_darwin(v10 - 8);
  v109 = &v80 - v11;
  v12 = sub_BD88(&unk_944DF0);
  __chkstk_darwin(v12 - 8);
  v100 = &v80 - v13;
  v99 = sub_7623A0();
  v95 = *(v99 - 8);
  __chkstk_darwin(v99);
  v98 = &v80 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = sub_75BD30();
  v88 = *(v113 - 8);
  __chkstk_darwin(v113);
  v87 = &v80 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v86 = &v80 - v17;
  __chkstk_darwin(v18);
  v112 = &v80 - v19;
  v20 = sub_BD88(&unk_9457F0);
  v102 = *(v20 - 8);
  v103 = v20;
  __chkstk_darwin(v20);
  v101 = &v80 - v21;
  v22 = sub_757AA0();
  __chkstk_darwin(v22 - 8);
  v92 = &v80 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = sub_764A60();
  v90 = *(v91 - 8);
  __chkstk_darwin(v91);
  v89 = &v80 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = sub_76A920();
  v82 = *(v83 - 8);
  __chkstk_darwin(v83);
  v81 = &v80 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_BD88(&qword_94C3F0);
  __chkstk_darwin(v26 - 8);
  v28 = &v80 - v27;
  v29 = sub_75FA00();
  v30 = *(v29 - 8);
  __chkstk_darwin(v29);
  v32 = &v80 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_767510();
  v34 = *(v33 - 8);
  __chkstk_darwin(v33);
  v36 = &v80 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = a5;
  sub_321BC4(a5, v36);
  sub_75F9B0();
  sub_3228A0(&qword_94FA60, &type metadata accessor for ComponentLayoutOptions);
  v85 = a3;
  LOBYTE(a3) = sub_76A520();
  v37 = *(v30 + 8);
  v37(v32, v29);
  v97 = v33;
  v96 = v34;
  v111 = v36;
  if (a3)
  {
    (*(v34 + 56))(v28, 1, 1, v33);
    v38 = OBJC_IVAR____TtC18ASMessagesProvider37InAppPurchaseLockupCollectionViewCell_separator;
    v39 = v93;
    swift_beginAccess();
    sub_84734(v28, &v39[v38]);
    swift_endAccess();
    sub_3217D0();
    sub_10A2C(v28, &qword_94C3F0);
    sub_75F9C0();
    LOBYTE(v38) = sub_76A520();
    v37(v32, v29);
    v40 = [v39 contentView];
    v41 = v40;
    v42 = v39;
    if (v38)
    {
      [v40 layoutMargins];
      [v41 setLayoutMargins:?];
    }

    else
    {
      sub_7674A0();
      sub_B170(v114, v114[3]);
      v45 = v81;
      sub_33964();
      sub_766700();
      (*(v82 + 8))(v45, v83);
      [v41 layoutMargins];
      [v41 setLayoutMargins:?];

      sub_BEB8(v114);
    }
  }

  else
  {
    (*(v34 + 16))(v28, v36, v33);
    (*(v34 + 56))(v28, 0, 1, v33);
    v43 = OBJC_IVAR____TtC18ASMessagesProvider37InAppPurchaseLockupCollectionViewCell_separator;
    v42 = v93;
    swift_beginAccess();
    sub_84734(v28, &v42[v43]);
    swift_endAccess();
    sub_3217D0();
    sub_10A2C(v28, &qword_94C3F0);
    v44 = [v42 contentView];
    [v44 layoutMargins];
    [v44 setLayoutMargins:?];
  }

  v46 = v101;
  v47 = v112;
  v48 = v89;
  sub_764A30();
  sub_3228A0(&qword_9467F0, &type metadata accessor for Shelf.PresentationHints);
  v49 = v91;
  v50 = sub_76A520();
  (*(v90 + 8))(v48, v49);
  v42[OBJC_IVAR____TtC18ASMessagesProvider37InAppPurchaseLockupCollectionViewCell_isPartOfSpotlightShelf] = v50 & 1;
  v51 = v92;
  sub_757B80();
  sub_32015C(v51);
  v52 = *&v42[OBJC_IVAR____TtC18ASMessagesProvider37InAppPurchaseLockupCollectionViewCell_lockupView];
  v53 = *&v52[OBJC_IVAR____TtC18ASMessagesProvider23InAppPurchaseLockupView_titleLabel];
  sub_764EF0();
  if (v54)
  {
    v55 = sub_769210();
  }

  else
  {
    v55 = 0;
  }

  [v53 setText:v55];

  v56 = *&v52[OBJC_IVAR____TtC18ASMessagesProvider23InAppPurchaseLockupView_descriptionLabel];
  sub_757B70();
  if (v57)
  {
    v58 = sub_769210();
  }

  else
  {
    v58 = 0;
  }

  v59 = v113;
  [v56 setText:v58];

  if (sub_764EC0())
  {
    v60 = v86;
    sub_75FE30();

    v61 = v88;
    (*(v88 + 32))(v47, v60, v59);
    v62 = v87;
    (*(v61 + 104))(v87, enum case for OfferEnvironment.widthConstrainedLockup(_:), v59);
    v63 = sub_75BD20();
    v64 = *(v61 + 8);
    v64(v62, v59);
    if (v63)
    {
      v65 = v95;
      v66 = v99;
      (*(v95 + 104))(v98, enum case for OfferButtonSubtitlePosition.below(_:), v99);
      (*(v65 + 56))(v100, 1, 1, v66);
      sub_3228A0(&qword_944E20, &type metadata accessor for OfferButtonSubtitlePosition);
      sub_760940();
      v67 = v52[OBJC_IVAR____TtC18ASMessagesProvider23InAppPurchaseLockupView_isHeightConstrained];
      v52[OBJC_IVAR____TtC18ASMessagesProvider23InAppPurchaseLockupView_isHeightConstrained] = 1;
      if ((v67 & 1) == 0)
      {
        [v52 setNeedsLayout];
      }

      v64(v112, v113);
      v68 = v111;
      goto LABEL_20;
    }

    v64(v47, v59);
  }

  v69 = v95;
  v70 = v99;
  (*(v95 + 104))(v98, enum case for OfferButtonSubtitlePosition.right(_:), v99);
  (*(v69 + 56))(v100, 1, 1, v70);
  sub_3228A0(&qword_944E20, &type metadata accessor for OfferButtonSubtitlePosition);
  sub_760940();
  v71 = v52[OBJC_IVAR____TtC18ASMessagesProvider23InAppPurchaseLockupView_isHeightConstrained];
  v52[OBJC_IVAR____TtC18ASMessagesProvider23InAppPurchaseLockupView_isHeightConstrained] = 0;
  v68 = v111;
  if (v71 == 1)
  {
    [v52 setNeedsLayout];
  }

LABEL_20:
  v72 = *&v52[OBJC_IVAR____TtC18ASMessagesProvider23InAppPurchaseLockupView_offerButton];
  v73 = sub_764EC0();
  v74 = sub_764DB0();
  v75 = v104;
  v76 = v107;
  (*(v104 + 104))(v105, enum case for OfferButtonPresenterViewAlignment.left(_:), v107);
  (*(v75 + 56))(v108, 1, 1, v76);
  sub_3228A0(&unk_944E10, &type metadata accessor for OfferButtonPresenterViewAlignment);
  v77 = v109;
  sub_760940();
  v78 = sub_BD88(&unk_948740);
  (*(*(v78 - 8) + 56))(v77, 0, 1, v78);
  sub_1DFEBC(v73, v74, 0, v77, v46, v110, 0, 0);

  sub_10A2C(v77, &unk_948730);
  [v42 setNeedsLayout];
  (*(v102 + 8))(v46, v103);
  return (*(v96 + 8))(v68, v97);
}

UIColor sub_3213C0()
{
  sub_BE70(0, &qword_93E540);
  v0 = [objc_opt_self() systemBlueColor];
  v1 = [v0 colorWithAlphaComponent:0.1];

  v2.super.isa = [objc_allocWithZone(UIColor) initWithRed:0.168627451 green:0.188235294 blue:0.231372549 alpha:1.0];
  v3.super.isa = v1;
  result.super.isa = sub_76A0C0(v3, v2).super.isa;
  qword_99CA08 = result.super.isa;
  return result;
}

char *sub_321490(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = OBJC_IVAR____TtC18ASMessagesProvider37InAppPurchaseLockupCollectionViewCell_itemLayoutContext;
  v12 = sub_75C840();
  (*(*(v12 - 8) + 56))(&v5[v11], 1, 1, v12);
  *&v5[OBJC_IVAR____TtC18ASMessagesProvider37InAppPurchaseLockupCollectionViewCell_spotlightView] = 0;
  *&v5[OBJC_IVAR____TtC18ASMessagesProvider37InAppPurchaseLockupCollectionViewCell_separatorView] = 0;
  v13 = OBJC_IVAR____TtC18ASMessagesProvider37InAppPurchaseLockupCollectionViewCell_separator;
  v14 = sub_767510();
  v15 = (*(*(v14 - 8) + 56))(&v5[v13], 1, 1, v14);
  v5[OBJC_IVAR____TtC18ASMessagesProvider37InAppPurchaseLockupCollectionViewCell_isPartOfSpotlightShelf] = 0;
  LOBYTE(ObjectType) = (*(ObjectType + 128))(v15);
  v16 = objc_allocWithZone(type metadata accessor for InAppPurchaseLockupView());
  *&v5[OBJC_IVAR____TtC18ASMessagesProvider37InAppPurchaseLockupCollectionViewCell_lockupView] = sub_1EFBA8(ObjectType & 1);
  v21.receiver = v5;
  v21.super_class = type metadata accessor for InAppPurchaseLockupCollectionViewCell();
  v17 = objc_msgSendSuper2(&v21, "initWithFrame:", a1, a2, a3, a4);
  v18 = [v17 contentView];
  [v18 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

  v19 = [v17 contentView];
  [v19 addSubview:*&v17[OBJC_IVAR____TtC18ASMessagesProvider37InAppPurchaseLockupCollectionViewCell_lockupView]];

  return v17;
}

id sub_3217D0()
{
  v1 = sub_BD88(&qword_94C3F0);
  __chkstk_darwin(v1 - 8);
  v3 = &v29 - v2;
  v4 = sub_767510();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v29 - v9;
  v11 = OBJC_IVAR____TtC18ASMessagesProvider37InAppPurchaseLockupCollectionViewCell_separator;
  swift_beginAccess();
  sub_847A4(&v0[v11], v3);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_10A2C(v3, &qword_94C3F0);
    v12 = OBJC_IVAR____TtC18ASMessagesProvider37InAppPurchaseLockupCollectionViewCell_separatorView;
    v13 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider37InAppPurchaseLockupCollectionViewCell_separatorView];
    if (v13)
    {
      [v13 removeFromSuperview];
      v14 = *&v0[v12];
    }

    else
    {
      v14 = 0;
    }

    *&v0[v12] = 0;

    return [v0 setNeedsLayout];
  }

  else
  {
    (*(v5 + 32))(v10, v3, v4);
    v15 = OBJC_IVAR____TtC18ASMessagesProvider37InAppPurchaseLockupCollectionViewCell_separatorView;
    v16 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider37InAppPurchaseLockupCollectionViewCell_separatorView];
    if (v16)
    {
      (*(v5 + 16))(v7, v10, v4);
      v17 = OBJC_IVAR____TtC18ASMessagesProvider13SeparatorView_separator;
      swift_beginAccess();
      v18 = *(v5 + 24);
      v19 = v16;
      v18(&v16[v17], v7, v4);
      swift_endAccess();
      [v19 setNeedsLayout];

      v20 = *(v5 + 8);
      v20(v7, v4);
      return (v20)(v10, v4);
    }

    else
    {
      (*(v5 + 16))(v7, v10, v4);
      v22 = [objc_allocWithZone(type metadata accessor for SeparatorView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
      v23 = OBJC_IVAR____TtC18ASMessagesProvider13SeparatorView_separator;
      swift_beginAccess();
      v30 = *(v5 + 40);
      v24 = v22;
      v30(&v22[v23], v7, v4);
      swift_endAccess();

      v25 = *&v0[v15];
      if (v25)
      {
        [v25 removeFromSuperview];
        v26 = *&v0[v15];
      }

      else
      {
        v26 = 0;
      }

      *&v0[v15] = v24;
      v27 = v24;

      v28 = [v0 contentView];
      [v28 addSubview:v27];

      [v0 setNeedsLayout];
      return (*(v5 + 8))(v10, v4);
    }
  }
}

uint64_t sub_321BC4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_76A920();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v22[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_BD88(&qword_944E50);
  v9 = *(v8 - 8);
  *&v10 = __chkstk_darwin(v8).n128_u64[0];
  v12 = &v22[-1] - v11;
  v13 = [a1 traitCollection];
  v14 = sub_769A00();

  if (v14)
  {
    if (qword_93DF70 != -1)
    {
      swift_once();
    }

    v15 = sub_767510();
    v16 = sub_BE38(v15, qword_9A0518);
    v17 = *(*(v15 - 8) + 16);

    return v17(a2, v16, v15);
  }

  else
  {
    if (qword_93C618 != -1)
    {
      swift_once();
    }

    v19 = sub_757DF0();
    sub_BE38(v19, qword_99B7E0);
    sub_757DE0();
    v22[0] = a1;
    sub_7592B0();
    (*(v9 + 8))(v12, v8);
    sub_757DA0();
    sub_B170(v22, v22[3]);
    sub_33964();
    sub_766700();
    (*(v5 + 8))(v7, v4);
    sub_BEB8(v22);
    if (qword_93DF70 != -1)
    {
      swift_once();
    }

    v20 = sub_767510();
    sub_BE38(v20, qword_9A0518);
    return sub_7674B0();
  }
}

id sub_321F34()
{
  v1 = v0;
  v2 = sub_757AA0();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v66 = &v61 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v65 = &v61 - v6;
  __chkstk_darwin(v7);
  v64 = &v61 - v8;
  v9 = sub_767510();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v61 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for InAppPurchaseLockupCollectionViewCell();
  v73.receiver = v0;
  v73.super_class = v13;
  objc_msgSendSuper2(&v73, "layoutSubviews");
  v14 = [v0 contentView];
  sub_BE70(0, &qword_93E550);
  sub_75D650();
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;

  v72.origin.x = v16;
  v72.origin.y = v18;
  v72.size.width = v20;
  v72.size.height = v22;
  v67 = v1;
  v23 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider37InAppPurchaseLockupCollectionViewCell_separatorView];
  if (v23)
  {
    v24 = OBJC_IVAR____TtC18ASMessagesProvider13SeparatorView_separator;
    swift_beginAccess();
    v62 = v3;
    v25 = *(v10 + 16);
    v25(v12, &v23[v24], v9);
    v26 = v9;
    v27 = v23;
    sub_7674C0();
    v29 = v28;
    v31 = v30;
    v33 = v32;
    v35 = v34;
    v63 = v2;
    v36 = *(v10 + 8);
    v36(v12, v26);
    [v27 setFrame:{v29, v31, v33, v35}];
    v25(v12, &v23[v24], v26);
    v3 = v62;
    sub_769D40();

    v36(v12, v26);
    v2 = v63;
  }

  v37 = *&v67[OBJC_IVAR____TtC18ASMessagesProvider37InAppPurchaseLockupCollectionViewCell_lockupView];
  v38 = OBJC_IVAR____TtC18ASMessagesProvider23InAppPurchaseLockupView_theme;
  swift_beginAccess();
  v39 = *(v3 + 16);
  v40 = v64;
  v39(v64, &v37[v38], v2);
  v41 = (*(v3 + 88))(v40, v2);
  v42 = enum case for InAppPurchaseTheme.spotlight(_:);
  v64 = *(v3 + 8);
  (v64)(v40, v2);
  if (v41 == v42)
  {
    x = v72.origin.x;
    y = v72.origin.y;
    width = v72.size.width;
    height = v72.size.height;
    CGRectGetMinX(v72);
    v74.origin.x = x;
    v74.origin.y = y;
    v74.size.width = width;
    v74.size.height = height;
    CGRectGetMinY(v74);
    v75.origin.x = x;
    v75.origin.y = y;
    v75.size.width = width;
    v75.size.height = height;
    CGRectGetWidth(v75);
    v76.origin.x = x;
    v76.origin.y = y;
    v76.size.width = width;
    v76.size.height = height;
    v43.n128_f64[0] = CGRectGetHeight(v76);
  }

  v48 = *&v67[OBJC_IVAR____TtC18ASMessagesProvider37InAppPurchaseLockupCollectionViewCell_spotlightView];
  v49 = v65;
  if (v48)
  {
    v50 = v37;
    v51 = v3;
    v52 = v48;
    sub_769D20();
    [v52 setFrame:?];

    v3 = v51;
    v37 = v50;
  }

  (v39)(v49, &v37[v38], v2, v43);
  v53 = v66;
  (*(v3 + 104))(v66, v42, v2);
  sub_3228A0(&unk_949E10, &type metadata accessor for InAppPurchaseTheme);
  sub_769430();
  sub_769430();
  if (v70 != v68 || v71 != v69)
  {
    sub_76A950();
  }

  v54 = v53;
  v55 = v64;
  (v64)(v54, v2);
  v55(v49, v2);

  v56 = v72.origin.x;
  v57 = v72.origin.y;
  v58 = v72.size.width;
  v59 = v72.size.height;
  CGRectGetMinX(v72);
  v77.origin.x = v56;
  v77.origin.y = v57;
  v77.size.width = v58;
  v77.size.height = v59;
  CGRectGetMinY(v77);
  v78.origin.x = v56;
  v78.origin.y = v57;
  v78.size.width = v58;
  v78.size.height = v59;
  CGRectGetWidth(v78);
  v79.origin.x = v56;
  v79.origin.y = v57;
  v79.size.width = v58;
  v79.size.height = v59;
  CGRectGetHeight(v79);
  sub_769D20();
  return [v37 setFrame:?];
}

id sub_322664()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for InAppPurchaseLockupCollectionViewCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for InAppPurchaseLockupCollectionViewCell()
{
  result = qword_94FA48;
  if (!qword_94FA48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_322780()
{
  sub_839FC(319, &qword_940840, &type metadata accessor for ItemLayoutContext);
  if (v0 <= 0x3F)
  {
    sub_839FC(319, &qword_94C3E0, &type metadata accessor for Separator);
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_3228A0(unint64_t *a1, void (*a2)(uint64_t))
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

char *sub_3228E8(double a1, double a2, double a3, double a4)
{
  v9 = sub_768C60();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v4[OBJC_IVAR____TtC18ASMessagesProvider66MediumAdLockupWithScreenshotsBackgroundTodayCardCollectionViewCell____lazy_storage___mediumAdLockupWithScreenshotsBackgroundView] = 0;
  v4[OBJC_IVAR____TtC18ASMessagesProvider66MediumAdLockupWithScreenshotsBackgroundTodayCardCollectionViewCell_isAnimationEnabled] = 1;
  v13 = type metadata accessor for MediumAdLockupWithScreenshotsBackgroundTodayCardCollectionViewCell();
  v21.receiver = v4;
  v21.super_class = v13;
  v14 = objc_msgSendSuper2(&v21, "initWithFrame:", a1, a2, a3, a4);
  v15 = [v14 contentView];
  [v15 setClipsToBounds:1];

  v16 = sub_322B48();
  [v16 setClipsToBounds:1];

  v17 = [v14 contentView];
  [v17 addSubview:*&v14[OBJC_IVAR____TtC18ASMessagesProvider66MediumAdLockupWithScreenshotsBackgroundTodayCardCollectionViewCell____lazy_storage___mediumAdLockupWithScreenshotsBackgroundView]];

  memset(v20, 0, sizeof(v20));
  memset(v19, 0, sizeof(v19));
  sub_768C10();
  sub_10A2C(v19, &unk_93FBD0);
  sub_10A2C(v20, &unk_93FBD0);
  sub_769E70();

  (*(v10 + 8))(v12, v9);
  return v14;
}

id sub_322B48()
{
  v1 = OBJC_IVAR____TtC18ASMessagesProvider66MediumAdLockupWithScreenshotsBackgroundTodayCardCollectionViewCell____lazy_storage___mediumAdLockupWithScreenshotsBackgroundView;
  v2 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider66MediumAdLockupWithScreenshotsBackgroundTodayCardCollectionViewCell____lazy_storage___mediumAdLockupWithScreenshotsBackgroundView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider66MediumAdLockupWithScreenshotsBackgroundTodayCardCollectionViewCell____lazy_storage___mediumAdLockupWithScreenshotsBackgroundView);
  }

  else
  {
    ObjectType = swift_getObjectType();
    v5 = v0;
    v6 = (*(ObjectType + 712))();
    v7 = *(v0 + v1);
    *(v5 + v1) = v6;
    v3 = v6;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

id sub_322BC8()
{
  type metadata accessor for MediumAdLockupWithScreenshotsBackgroundView();
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

double sub_322C88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  type metadata accessor for MediumAdLockupWithScreenshotsBackgroundView();
  sub_18136C(a4, a5);
  return v7;
}

uint64_t sub_322D2C(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v9 = sub_BD88(&unk_955AA0);
  __chkstk_darwin(v9 - 8);
  v11 = &v22 - v10;
  sub_765B20();
  sub_7641A0();
  if (swift_dynamicCastClass())
  {
    v12 = sub_322B48();
    v13 = sub_764190();
    sub_17EDF0(v13, a4);

    v14 = sub_7656C0();
    v15 = *(v14 - 8);
    (*(v15 + 16))(v11, a3, v14);
    (*(v15 + 56))(v11, 0, 1, v14);
    v16 = OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_pageGrid;
    swift_beginAccess();
    sub_A8F3C(v11, v5 + v16);
    swift_endAccess();
    sub_28026C(a2);
    v17 = [v5 backgroundView];
    if (v17)
    {
      v18 = v17;
      v19 = sub_765A30();
      if (!v19)
      {
        sub_396E8();
        v19 = sub_76A060();
      }

      v20 = v19;
      [v18 setBackgroundColor:v19];
    }

    [v5 setNeedsLayout];
  }

  else
  {
  }
}

void sub_322FC0(uint64_t a1, uint64_t a2)
{
  sub_134D8(a1, v5);
  sub_BD88(&unk_93F520);
  sub_765B70();
  if (swift_dynamicCast())
  {
    sub_765B20();

    sub_7641A0();
    if (swift_dynamicCastClass())
    {
      v3 = sub_322B48();
      v4 = sub_764190();
      sub_3238B4(v4, a2, v3);
    }

    else
    {
    }
  }
}

void sub_3230B4()
{
  v0 = sub_322B48();
  v1 = OBJC_IVAR____TtC18ASMessagesProvider43MediumAdLockupWithScreenshotsBackgroundView_lockupView;
  v2 = *(*&v0[OBJC_IVAR____TtC18ASMessagesProvider43MediumAdLockupWithScreenshotsBackgroundView_lockupView] + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_artworkView);
  sub_759190();

  v3 = *(*&v0[v1] + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_artworkView);
  sub_759210();
  sub_14FA38();
  v4 = v3;
  sub_75A0C0();
}

void (*sub_3232E8(uint64_t a1))()
{
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v3 = swift_allocObject();
  swift_weakInit();
  sub_134D8(a1, v6);
  v4 = swift_allocObject();
  *(v4 + 16) = v2;
  *(v4 + 24) = v3;
  sub_10914(v6, v4 + 32);
  return sub_3238A8;
}

void sub_3233B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_BD88(&unk_93FF30);
  __chkstk_darwin(v4 - 8);
  v6 = &v14[-v5 - 8];
  v7 = sub_768AB0();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v14[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      sub_134D8(a3, v14);
      sub_BD88(&unk_944DA0);
      sub_765B70();
      if (swift_dynamicCast())
      {
        sub_765B20();

        sub_75B070();
        if ((*(v8 + 48))(v6, 1, v7) == 1)
        {

          sub_10A2C(v6, &unk_93FF30);
        }

        else
        {
          (*(v8 + 32))(v10, v6, v7);
          [v12 bounds];
          sub_75F4B0();

          (*(v8 + 8))(v10, v7);
        }
      }

      else
      {
      }
    }

    else
    {
    }
  }
}

id sub_323654()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MediumAdLockupWithScreenshotsBackgroundTodayCardCollectionViewCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for MediumAdLockupWithScreenshotsBackgroundTodayCardCollectionViewCell()
{
  result = qword_94FAA0;
  if (!qword_94FAA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_32373C(uint64_t a1, uint64_t a2)
{
  v4 = sub_322B48();
  sub_BDAF0(a1, a2);
}