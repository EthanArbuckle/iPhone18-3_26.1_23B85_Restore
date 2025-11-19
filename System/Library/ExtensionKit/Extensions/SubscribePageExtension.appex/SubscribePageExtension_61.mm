id sub_1006E0838(double a1, double a2, double a3, double a4, uint64_t a5, void *a6)
{
  sub_100524128(1);
  result = [a6 setFrame:{a1, a2, a3, a4}];
  if (a6)
  {

    return [a6 setAlpha:1.0];
  }

  return result;
}

id sub_1006E090C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BouncyFromRectAnimation();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1006E0964()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1006E09A4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1006E09BC()
{

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_1006E0A0C()
{

  return _swift_deallocObject(v0, 24, 7);
}

void sub_1006E0A44()
{
  v1 = [*(v0 + 16) tabBar];
  [v1 setHidden:0];
}

void sub_1006E0AB0()
{
  sub_1006E1B80();
  v1 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension14NotifyMeButton_backgroundBlurView];
  v2 = OBJC_IVAR____TtC22SubscribePageExtension14NotifyMeButton_style;
  [v1 setHidden:v0[OBJC_IVAR____TtC22SubscribePageExtension14NotifyMeButton_style] != 0];
  v3 = [v1 layer];
  v4 = v3;
  if (v0[v2])
  {
    v5 = 4.0;
  }

  else
  {
    v5 = 17.0;
  }

  [v3 setCornerRadius:v5];

  v6 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension14NotifyMeButton_backgroundTintView];
  v7 = [v6 layer];
  v8 = v7;
  if (v0[v2])
  {
    v9 = 4.0;
  }

  else
  {
    v9 = 17.0;
  }

  [v7 setCornerRadius:v9];

  v10 = v0[v2];
  v11 = [v0 traitCollection];
  v12 = sub_1006E0C7C(v11, v10);

  [v6 setBackgroundColor:v12];
  v13 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension14NotifyMeButton_titleLabel];
  LOBYTE(v12) = v0[v2];
  v14 = [v0 traitCollection];
  v15 = sub_1006E0D90(v14, v12);

  [v13 setTextColor:v15];
  LOBYTE(v13) = v0[v2];
  v16 = [v0 traitCollection];
  v17 = sub_1006E0D90(v16, v13);

  sub_1006E1F74(v17);
}

id sub_1006E0C7C(void *a1, char a2)
{
  if (!a2)
  {
    v2 = [objc_opt_self() systemBackgroundColor];
    goto LABEL_5;
  }

  if (a2 == 1)
  {
    sub_100016C60(0, &qword_100923500);
    v2 = sub_100753DD4();
LABEL_5:
    v3 = v2;
    v4 = [v2 colorWithAlphaComponent:0.4];
    goto LABEL_6;
  }

  v7 = [a1 userInterfaceStyle];
  v8 = objc_opt_self();
  if (v7 == 2)
  {
    v3 = [v8 whiteColor];
    v4 = [v3 colorWithAlphaComponent:0.13];
  }

  else
  {
    v3 = [v8 systemBlueColor];
    v4 = [v3 colorWithAlphaComponent:0.1];
  }

LABEL_6:
  v5 = v4;

  return v5;
}

id sub_1006E0D90(void *a1, char a2)
{
  if (a2)
  {
    if (a2 == 1)
    {
      v2 = objc_opt_self();
      v3 = &selRef_whiteColor;
      goto LABEL_8;
    }

    v4 = [a1 userInterfaceStyle];
    v2 = objc_opt_self();
    v3 = &selRef_systemBlueColor;
  }

  else
  {
    v4 = [a1 userInterfaceStyle];
    v2 = objc_opt_self();
    v3 = &selRef_blackColor;
  }

  if (v4 == 2)
  {
    v3 = &selRef_whiteColor;
  }

LABEL_8:
  v5 = [v2 *v3];

  return v5;
}

uint64_t sub_1006E0E4C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x54646E416E6F6369;
  v4 = 0xEC000000656C7469;
  v5 = 0x8000000100764F90;
  if (v2 != 1)
  {
    v3 = 0xD000000000000011;
    v4 = 0x8000000100764F90;
  }

  if (*a1)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0x796C6E4F6E6F6369;
  }

  if (v2)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0xE800000000000000;
  }

  v8 = 0x54646E416E6F6369;
  if (*a2 == 1)
  {
    v5 = 0xEC000000656C7469;
  }

  else
  {
    v8 = 0xD000000000000011;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x796C6E4F6E6F6369;
  }

  if (*a2)
  {
    v10 = v5;
  }

  else
  {
    v10 = 0xE800000000000000;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_100754754();
  }

  return v11 & 1;
}

Swift::Int sub_1006E0F58()
{
  sub_100754834();
  sub_100753174();

  return sub_100754884();
}

uint64_t sub_1006E1008()
{
  sub_100753174();
}

Swift::Int sub_1006E10A4()
{
  sub_100754834();
  sub_100753174();

  return sub_100754884();
}

uint64_t sub_1006E1150@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1006E2D10(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

void sub_1006E1180(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE800000000000000;
  v4 = 0xEC000000656C7469;
  v5 = 0x54646E416E6F6369;
  if (v2 != 1)
  {
    v5 = 0xD000000000000011;
    v4 = 0x8000000100764F90;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x796C6E4F6E6F6369;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

id sub_1006E11FC()
{
  result = [objc_opt_self() effectWithBlurRadius:30.0];
  qword_1009469B0 = result;
  return result;
}

uint64_t sub_1006E126C(uint64_t a1, uint64_t *a2, void *a3, uint64_t *a4)
{
  v7 = sub_100750304();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v16[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100921590 != -1)
  {
    swift_once();
  }

  v11 = sub_100750534();
  v12 = sub_10000D0FC(v11, qword_100981DE8);
  (*(*(v11 - 8) + 16))(v10, v12, v11);
  (*(v8 + 104))(v10, enum case for FontSource.useCase(_:), v7);
  *a2 = sub_100750B04();
  *a3 = &protocol witness table for StaticDimension;
  sub_10000D134(a4);
  v16[3] = v7;
  v16[4] = &protocol witness table for FontSource;
  v13 = sub_10000D134(v16);
  (*(v8 + 16))(v13, v10, v7);
  sub_100750B14();
  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_1006E1488(uint64_t a1, uint64_t *a2)
{
  v3 = sub_100750304();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v13[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100750B04();
  sub_100039C50(v7, a2);
  sub_10000D0FC(v7, a2);
  if (qword_100921468 != -1)
  {
    swift_once();
  }

  v8 = sub_100750534();
  v9 = sub_10000D0FC(v8, qword_100981A70);
  (*(*(v8 - 8) + 16))(v6, v9, v8);
  (*(v4 + 104))(v6, enum case for FontSource.useCase(_:), v3);
  v13[3] = v3;
  v13[4] = &protocol witness table for FontSource;
  v10 = sub_10000D134(v13);
  (*(v4 + 16))(v10, v6, v3);
  sub_100750B14();
  return (*(v4 + 8))(v6, v3);
}

char *sub_1006E1664()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_10074AB44();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000C518(&unk_100928A40);
  __chkstk_darwin(v7 - 8);
  v9 = &v37 - v8;
  v1[OBJC_IVAR____TtC22SubscribePageExtension14NotifyMeButton_style] = 0;
  v1[OBJC_IVAR____TtC22SubscribePageExtension14NotifyMeButton_isActive] = 0;
  *&v1[OBJC_IVAR____TtC22SubscribePageExtension14NotifyMeButton_bellMicaPlayer] = 0;
  if (qword_100921D50 != -1)
  {
    swift_once();
  }

  v10 = [objc_allocWithZone(UIVisualEffectView) initWithEffect:qword_1009469B0];
  *&v1[OBJC_IVAR____TtC22SubscribePageExtension14NotifyMeButton_backgroundBlurView] = v10;
  v11 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v1[OBJC_IVAR____TtC22SubscribePageExtension14NotifyMeButton_backgroundTintView] = v11;
  if (qword_100921590 != -1)
  {
    swift_once();
  }

  v12 = sub_100750534();
  v13 = sub_10000D0FC(v12, qword_100981DE8);
  v14 = *(v12 - 8);
  (*(v14 + 16))(v9, v13, v12);
  (*(v14 + 56))(v9, 0, 1, v12);
  (*(v4 + 104))(v6, enum case for DirectionalTextAlignment.leading(_:), v3);
  v15 = objc_allocWithZone(sub_100745C84());
  *&v1[OBJC_IVAR____TtC22SubscribePageExtension14NotifyMeButton_titleLabel] = sub_100745C74();
  v16 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v1[OBJC_IVAR____TtC22SubscribePageExtension14NotifyMeButton_bellView] = v16;
  v37.receiver = v1;
  v37.super_class = ObjectType;
  v17 = objc_msgSendSuper2(&v37, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v21 = v17;
  [v21 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v22 = OBJC_IVAR____TtC22SubscribePageExtension14NotifyMeButton_backgroundBlurView;
  [*&v21[OBJC_IVAR____TtC22SubscribePageExtension14NotifyMeButton_backgroundBlurView] setClipsToBounds:1];
  v23 = [*&v21[v22] layer];
  v24 = v23;
  v25 = OBJC_IVAR____TtC22SubscribePageExtension14NotifyMeButton_style;
  if (v21[OBJC_IVAR____TtC22SubscribePageExtension14NotifyMeButton_style])
  {
    v26 = 4.0;
  }

  else
  {
    v26 = 17.0;
  }

  [v23 setCornerRadius:v26];

  [*&v21[v22] setUserInteractionEnabled:0];
  [v21 addSubview:*&v21[v22]];
  v27 = OBJC_IVAR____TtC22SubscribePageExtension14NotifyMeButton_backgroundTintView;
  v28 = v21[v25];
  v29 = *&v21[OBJC_IVAR____TtC22SubscribePageExtension14NotifyMeButton_backgroundTintView];
  v30 = [v21 traitCollection];

  v31 = sub_1006E0C7C(v30, v28);
  [v29 setBackgroundColor:v31];

  v32 = [*&v21[v27] layer];
  v33 = v32;
  if (v21[v25])
  {
    v34 = 4.0;
  }

  else
  {
    v34 = 17.0;
  }

  [v32 setCornerRadius:v34];

  [*&v21[v27] setUserInteractionEnabled:0];
  [v21 addSubview:*&v21[v27]];
  sub_1006E1B80();
  [v21 addSubview:*&v21[OBJC_IVAR____TtC22SubscribePageExtension14NotifyMeButton_titleLabel]];
  sub_1006E1C84(0);
  v35 = OBJC_IVAR____TtC22SubscribePageExtension14NotifyMeButton_bellView;
  [*&v21[OBJC_IVAR____TtC22SubscribePageExtension14NotifyMeButton_bellView] setUserInteractionEnabled:0];
  [v21 addSubview:*&v21[v35]];
  sub_1006E0AB0();

  return v21;
}

void sub_1006E1B80()
{
  v1 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension14NotifyMeButton_titleLabel);
  if (*(v0 + OBJC_IVAR____TtC22SubscribePageExtension14NotifyMeButton_style))
  {
    [*(v0 + OBJC_IVAR____TtC22SubscribePageExtension14NotifyMeButton_titleLabel) setHidden:0];
    if (*(v0 + OBJC_IVAR____TtC22SubscribePageExtension14NotifyMeButton_isActive))
    {
      v2 = "APP_EVENTS_BUTTON_NOTIFY_ME";
    }

    else
    {
      v2 = "e";
    }

    if (*(v0 + OBJC_IVAR____TtC22SubscribePageExtension14NotifyMeButton_isActive))
    {
      v3._countAndFlagsBits = 0xD000000000000021;
    }

    else
    {
      v3._countAndFlagsBits = 0xD00000000000001BLL;
    }

    v3._object = (v2 | 0x8000000000000000);
    v7._countAndFlagsBits = 0;
    v7._object = 0xE000000000000000;
    sub_1007458B4(v3, v7);
    v5 = sub_100753064();

    [v1 setText:v5];
  }

  else
  {
    v4 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension14NotifyMeButton_titleLabel);

    [v4 setHidden:1];
  }
}

void sub_1006E1C84(char a1)
{
  v2 = (a1 & 1) != 0 && !UIAccessibilityIsReduceMotionEnabled();
  v3 = objc_allocWithZone(AppStoreMicaPlayer);
  v4 = sub_100753064();

  v5 = [v3 initWithFileName:v4 retinaScale:1.0];

  sub_1006E1E50(v5);
  if (v2)
  {
    v6 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension14NotifyMeButton_bellMicaPlayer);
    if (v6)
    {

      [v6 play];
    }
  }
}

void sub_1006E1E50(void *a1)
{
  v3 = OBJC_IVAR____TtC22SubscribePageExtension14NotifyMeButton_bellMicaPlayer;
  v4 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension14NotifyMeButton_bellMicaPlayer];
  if (v4)
  {
    [v4 removeFromSuperlayer];
    v5 = *&v1[v3];
  }

  else
  {
    v5 = 0;
  }

  *&v1[v3] = a1;
  v6 = a1;

  if (a1)
  {
    v7 = v1[OBJC_IVAR____TtC22SubscribePageExtension14NotifyMeButton_style];
    v8 = [v1 traitCollection];
    v9 = sub_1006E0D90(v8, v7);

    sub_1006E1F74(v9);
    v10 = [*&v1[OBJC_IVAR____TtC22SubscribePageExtension14NotifyMeButton_bellView] layer];
    [v6 addToLayer:v10 onTop:1 gravity:kCAGravityResizeAspect];
  }
}

void sub_1006E1F74(void *a1)
{
  v3 = sub_1007411B4();
  v4 = *(v3 - 8);
  *&v5 = __chkstk_darwin(v3).n128_u64[0];
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension14NotifyMeButton_bellMicaPlayer);
  if (v8)
  {
    v9 = [v8 rootLayer];
    if (v9)
    {
      v10 = v9;
      sub_100016C60(0, &qword_100946AB8);
      v11 = [v10 mp_allLayersWithKindOfClass:swift_getObjCClassFromMetadata()];

      if (v11)
      {
        v14[0] = v4;
        sub_100753DA4();
        sub_1007411A4();
        while (v17)
        {
          sub_10000C610(&v16, &v15);
          if (swift_dynamicCast())
          {
            v12 = v14[1];
            v13 = [a1 CGColor];
            [v12 setFillColor:v13];
          }

          sub_1007411A4();
        }

        (*(v14[0] + 8))(v7, v3);
      }
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_1006E2178()
{
  ObjectType = swift_getObjectType();
  v2 = sub_100754724();
  v3 = *(v2 - 8);
  *&v4 = __chkstk_darwin(v2).n128_u64[0];
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30.receiver = v0;
  v30.super_class = ObjectType;
  objc_msgSendSuper2(&v30, "layoutSubviews", v4);
  v7 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension14NotifyMeButton_backgroundBlurView];
  sub_1007477B4();
  [v7 setFrame:?];
  v8 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension14NotifyMeButton_backgroundTintView];
  sub_1007477B4();
  [v8 setFrame:?];
  if (v0[OBJC_IVAR____TtC22SubscribePageExtension14NotifyMeButton_style])
  {
    if (qword_100921D78 != -1)
    {
      swift_once();
    }

    v9 = sub_100750B04();
    sub_10000D0FC(v9, qword_100946A38);
    sub_1007502D4();
    sub_100750564();
    v10 = *(v3 + 8);
    v10(v6, v2);
    if (qword_100921D68 != -1)
    {
      swift_once();
    }

    sub_10000D0FC(v9, qword_100946A08);
    sub_1007502D4();
    sub_100750564();
    v12 = v11;
    v10(v6, v2);
    if (qword_100921D70 != -1)
    {
      swift_once();
    }

    sub_10000D0FC(v9, qword_100946A20);
    sub_1007502D4();
    sub_100750564();
    v14 = v13;
    v10(v6, v2);
    if (qword_100921D48 != -1)
    {
      swift_once();
    }

    sub_10000D0FC(v9, qword_100946998);
    sub_1007502D4();
    sub_100750564();
    v16 = v15;
    v10(v6, v2);
    sub_1007477B4();
    v17 = CGRectGetWidth(v31) - v12 - v14 - v16;
    sub_1007477B4();
    Height = CGRectGetHeight(v32);
    v19 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension14NotifyMeButton_titleLabel];
    [v19 measurementsWithFitting:v0 in:{v17, Height}];
    if (qword_100921D58 != -1)
    {
      swift_once();
    }

    sub_10000C888(qword_1009469B8, qword_1009469D0);
    sub_100750584();
    sub_1007477B4();
    CGRectGetMinX(v33);
    sub_1007477B4();
    CGRectGetMinY(v34);
    sub_1007477B4();
    sub_100753B24();
    [v19 setFrame:?];
    sub_1007477B4();
    CGRectGetMinX(v35);
    sub_1007477B4();
    CGRectGetMidY(v36);
    v20 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension14NotifyMeButton_bellView];
    sub_1007477B4();
    sub_100753B24();
  }

  else
  {
    sub_1007477B4();
    v25 = CGRectGetMidX(v37) + -17.0;
    sub_1007477B4();
    MidY = CGRectGetMidY(v38);
    v21 = v25;
    v22 = MidY + -17.0;
    v20 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension14NotifyMeButton_bellView];
    v23 = 34.0;
    v24 = 34.0;
  }

  [v20 setFrame:{v21, v22, v23, v24}];
  v27 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension14NotifyMeButton_bellMicaPlayer];
  if (v27)
  {
    v28 = v27;
    v29 = [v20 layer];
    [v28 moveAndResizeWithinParentLayer:v29 usingGravity:kCAGravityResizeAspect animate:0];
  }
}

void sub_1006E2744(double a1)
{
  swift_getObjectType();
  v3 = sub_100754724();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v1 + OBJC_IVAR____TtC22SubscribePageExtension14NotifyMeButton_style))
  {
    if (qword_100921D68 != -1)
    {
      swift_once();
    }

    v7 = sub_100750B04();
    sub_10000D0FC(v7, qword_100946A08);
    sub_1007502D4();
    sub_100750564();
    v9 = v8;
    v10 = *(v4 + 8);
    v10(v6, v3);
    if (qword_100921D70 != -1)
    {
      swift_once();
    }

    sub_10000D0FC(v7, qword_100946A20);
    sub_1007502D4();
    sub_100750564();
    v12 = v11;
    v10(v6, v3);
    if (qword_100921D48 != -1)
    {
      swift_once();
    }

    sub_10000D0FC(v7, qword_100946998);
    sub_1007502D4();
    sub_100750564();
    v14 = v13;
    v10(v6, v3);
    sub_1007477B4();
    [*(v1 + OBJC_IVAR____TtC22SubscribePageExtension14NotifyMeButton_titleLabel) measurementsWithFitting:v1 in:{a1 - v9 - v12 - v14, CGRectGetHeight(v16)}];
    if (qword_100921D58 != -1)
    {
      swift_once();
    }

    sub_10000C888(qword_1009469B8, qword_1009469D0);
    sub_100750584();
    if (qword_100921D60 != -1)
    {
      swift_once();
    }

    sub_10000C888(qword_1009469E0, qword_1009469F8);
    sub_100536120();
    sub_100750564();
    v10(v6, v3);
  }
}

unint64_t sub_1006E2CBC()
{
  result = qword_100946AB0;
  if (!qword_100946AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100946AB0);
  }

  return result;
}

uint64_t sub_1006E2D10(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_100862DF8;
  v6._object = a2;
  v4 = sub_1007546E4(v3, v6);

  if (v4 >= 3)
  {
    return 3;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_1006E2EDC(uint64_t a1)
{
  v54 = a1;
  v59 = sub_10000C518(&qword_1009385E8);
  v64 = *(v59 - 8);
  __chkstk_darwin(v59);
  v53 = v46 - v1;
  v2 = sub_10000C518(&qword_100923E88);
  __chkstk_darwin(v2 - 8);
  v65 = v46 - v3;
  v66 = sub_10074F654();
  v4 = *(v66 - 8);
  __chkstk_darwin(v66);
  v6 = (v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_10000C518(&qword_100923230);
  __chkstk_darwin(v7 - 8);
  v67 = v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = v46 - v10;
  __chkstk_darwin(v12);
  v14 = v46 - v13;
  __chkstk_darwin(v15);
  v17 = v46 - v16;
  sub_10000C518(&qword_100923E90);
  v18 = *(sub_10074F584() - 8);
  v58 = *(v18 + 72);
  v19 = (*(v18 + 80) + 32) & ~*(v18 + 80);
  v20 = swift_allocObject();
  v50 = v20;
  *(v20 + 16) = xmmword_1007A7250;
  v62 = v20 + v19;
  v73 = 0x3FF0000000000000;
  sub_10001CC10();
  sub_10074F614();
  v73 = 0x4020000000000000;
  v71 = 0x4030000000000000;
  sub_10074F5F4();
  v73 = 0x4030000000000000;
  v71 = 0x4034000000000000;
  sub_10074F5F4();
  __asm { FMOV            V0.2D, #16.0 }

  *v6 = _Q0;
  v57 = enum case for PageGrid.HorizontalMargins.absolute(_:);
  v26 = *(v4 + 104);
  v61 = v4 + 104;
  v63 = v26;
  v26(v6);
  left = UIEdgeInsetsZero.left;
  LOBYTE(v73) = 0;
  sub_10074F614();
  v73 = 0;
  sub_10074F614();
  v60 = v14;
  v46[0] = v11;
  sub_10074F544();
  v73 = 0x3FF0000000000000;
  sub_10074F614();
  v73 = 0x4024000000000000;
  v71 = 0x4034000000000000;
  sub_10074F5F4();
  v73 = 0x4030000000000000;
  v71 = 0x4034000000000000;
  sub_10074F5F4();
  __asm { FMOV            V0.2D, #20.0 }

  *v6 = _Q0;
  v56 = v6;
  v29 = v57;
  v30 = v66;
  v63(v6, v57, v66);
  LOBYTE(v73) = 0;
  sub_10074F614();
  v73 = 0;
  sub_10074F614();
  v31 = v58;
  v55 = v17;
  top = UIEdgeInsetsZero.top;
  v48 = left;
  sub_10074F544();
  v52 = 2 * v31;
  v73 = 0x3FF8000000000000;
  v71 = 0x4000000000000000;
  sub_10074F5F4();
  v73 = 0x4034000000000000;
  sub_10074F614();
  v73 = 0x4030000000000000;
  v71 = 0x4034000000000000;
  sub_10074F5F4();
  v47 = vdupq_n_s64(0x4041000000000000uLL);
  v32 = v56;
  *v56 = v47;
  v33 = v63;
  v63(v32, v29, v30);
  LOBYTE(v73) = 0;
  sub_10074F614();
  v73 = 0;
  sub_10074F614();
  v34 = v52;
  sub_10074F544();
  v46[1] = v34 + v31;
  v75 = 0x4000000000000000;
  v73 = 0;
  v74 = 1;
  v71 = 0x3FF0000000000000;
  v72 = 0;
  v52 = sub_100450474();
  v35 = v53;
  sub_10074A9A4();
  v36 = v59;
  sub_10074A9B4();
  v37 = *(v64 + 8);
  v64 += 8;
  v51 = v37;
  v37(v35, v36);
  v71 = v73;
  sub_10074F614();
  v73 = 0x4034000000000000;
  sub_10074F614();
  v73 = 0x4030000000000000;
  v71 = 0x4034000000000000;
  sub_10074F5F4();
  v38 = v56;
  *v56 = v47;
  v39 = v57;
  v33(v38, v57, v66);
  sub_1007535A4();
  LOBYTE(v73) = 0;
  sub_10074F614();
  v73 = 0;
  sub_10074F614();
  sub_10074F544();
  v75 = 0x4000000000000000;
  v40 = 4 * v58;
  v73 = 0;
  v74 = 1;
  v71 = 0x3FF0000000000000;
  v72 = 0;
  v41 = v53;
  sub_10074A9A4();
  v42 = v59;
  sub_10074A9B4();
  v51(v41, v42);
  v71 = v73;
  sub_10074F614();
  v73 = 0x4038000000000000;
  sub_10074F614();
  v73 = 0x4030000000000000;
  v71 = 0x4034000000000000;
  sub_10074F5F4();
  v47 = vdupq_n_s64(0x404A000000000000uLL);
  v43 = v56;
  *v56 = v47;
  v63(v43, v39, v66);
  LOBYTE(v73) = 0;
  sub_10074F614();
  v73 = 0;
  sub_10074F614();
  sub_10074F544();
  v73 = 0x4008000000000000;
  v58 += v40;
  v75 = 0x4000000000000000;
  v70 = 0x4000000000000000;
  v71 = 0x4008000000000000;
  v68 = 0x4000000000000000;
  v69 = 0x4000000000000000;
  sub_10074A9D4();
  v44 = v59;
  sub_10074A9B4();
  v51(v41, v44);
  v71 = v73;
  sub_10074F614();
  v73 = 0x4038000000000000;
  sub_10074F614();
  v73 = 0x4030000000000000;
  v71 = 0x4034000000000000;
  sub_10074F5F4();
  *v43 = v47;
  v63(v43, v57, v66);
  LOBYTE(v73) = 0;
  sub_10074F614();
  v73 = 0;
  sub_10074F614();
  sub_10074F544();
  return v50;
}

uint64_t sub_1006E3BD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  v9 = OBJC_IVAR____TtC22SubscribePageExtension24OnboardingViewController_navController;
  *&v4[v9] = [objc_allocWithZone(UINavigationController) init];
  *&v4[OBJC_IVAR____TtC22SubscribePageExtension24OnboardingViewController_presenter] = a1;
  v10 = &v4[OBJC_IVAR____TtC22SubscribePageExtension24OnboardingViewController_completionCallback];
  *v10 = a2;
  *(v10 + 1) = a3;
  v16.receiver = v4;
  v16.super_class = ObjectType;

  v11 = objc_msgSendSuper2(&v16, "initWithNibName:bundle:", 0, 0);
  if (*(a1 + 16) > 1u)
  {
    if (*(a1 + 16) != 2)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v12 = 0;
    if (*(a1 + 16))
    {
      goto LABEL_6;
    }
  }

  v12 = 2;
LABEL_6:
  v13 = v11;
  [v13 setModalPresentationStyle:v12];
  if (*(a1 + 16) <= 1u)
  {
    if (*(a1 + 16))
    {
      v14 = 0;
LABEL_11:
      [*&v13[OBJC_IVAR____TtC22SubscribePageExtension24OnboardingViewController_navController] setModalPresentationStyle:v14];
      [v13 setModalInPresentation:1];

      return v13;
    }

LABEL_10:
    v14 = 2;
    goto LABEL_11;
  }

  if (*(a1 + 16) == 2)
  {
    goto LABEL_10;
  }

LABEL_12:
  result = sub_100754644();
  __break(1u);
  return result;
}

id sub_1006E3E34()
{
  v17.receiver = v0;
  v17.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v17, "viewDidLoad");
  result = [v0 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_8;
  }

  v2 = result;
  v3 = [objc_opt_self() systemBlueColor];
  [v2 setTintColor:v3];

  v4 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension24OnboardingViewController_navController];
  [v4 setNavigationBarHidden:1 animated:0];
  [v0 addChildViewController:v4];
  result = [v4 view];
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v5 = result;
  result = [v0 view];
  if (!result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v6 = result;
  [result bounds];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  [v5 setFrame:{v8, v10, v12, v14}];
  result = [v0 view];
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v15 = result;
  result = [v4 view];
  if (result)
  {
    v16 = result;
    [v15 addSubview:result];

    [v4 didMoveToParentViewController:v0];
    return sub_1006E4028();
  }

LABEL_11:
  __break(1u);
  return result;
}

uint64_t sub_1006E4028()
{
  v1 = v0;
  v2 = sub_100752404();
  __chkstk_darwin(v2 - 8);
  v3 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension24OnboardingViewController_presenter];
  swift_beginAccess();
  v4 = *(v3 + 32);
  if (*(v4 + 16))
  {
    sub_10000C824(v4 + 32, v19);
    v5 = sub_1006E4858(v19);
    if (v5)
    {
      v6 = v5;
      if (qword_100921EF8 != -1)
      {
        swift_once();
      }

      v7 = sub_100752E44();
      sub_10000D0FC(v7, qword_100983360);
      sub_10000C518(&qword_100923930);
      sub_100752454();
      *(swift_allocObject() + 16) = xmmword_1007A5A00;
      sub_1007523F4();
      v21._countAndFlagsBits = 0x69746E6573657250;
      v21._object = 0xEB0000000020676ELL;
      sub_1007523E4(v21);
      v18 = sub_100016C60(0, &qword_10092B0C0);
      v17[0] = v6;
      v8 = v6;
      sub_1007523C4();
      sub_10000C8CC(v17, &unk_100923520);
      v22._countAndFlagsBits = 0x65747320726F6620;
      v22._object = 0xEA00000000002070;
      sub_1007523E4(v22);
      v9 = v20;
      v10 = sub_10000C888(v19, v20);
      v18 = v9;
      v11 = sub_10000D134(v17);
      (*(*(v9 - 8) + 16))(v11, v10, v9);
      sub_1007523C4();
      sub_10000C8CC(v17, &unk_100923520);
      v23._countAndFlagsBits = 0;
      v23._object = 0xE000000000000000;
      sub_1007523E4(v23);
      sub_100752414();
      sub_100752CE4();

      [v8 preferredContentSize];
      [v1 setPreferredContentSize:?];
      [*&v1[OBJC_IVAR____TtC22SubscribePageExtension24OnboardingViewController_navController] showViewController:v8 sender:v1];
    }

    else
    {
      v16 = sub_10000E458(v19, 0xD00000000000002ALL, 0x800000010078BCE0);
      sub_1006E4028(v16);
    }

    return sub_10000C620(v19);
  }

  else
  {
    if (qword_100921EF8 != -1)
    {
      swift_once();
    }

    v12 = sub_100752E44();
    sub_10000D0FC(v12, qword_100983360);
    sub_10000C518(&qword_100923930);
    sub_100752454();
    *(swift_allocObject() + 16) = xmmword_1007A5A00;
    sub_1007523A4();
    sub_100752CE4();

    (*&v0[OBJC_IVAR____TtC22SubscribePageExtension24OnboardingViewController_completionCallback])(v0);
    if (qword_100921D80 != -1)
    {
      swift_once();
    }

    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v14 = qword_100982EE8;
      ObjectType = swift_getObjectType();
      (*(v14 + 8))(ObjectType, v14);
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_1006E458C(char a1)
{
  v2 = v1;
  v12.receiver = v2;
  v12.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v12, "viewWillAppear:", a1 & 1);
  v4 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension24OnboardingViewController_presenter];
  swift_beginAccess();
  v5 = *(v4 + 32);
  if (*(v5 + 16))
  {
    sub_10000C824(v5 + 32, v10);
    return sub_10000C8CC(v10, &qword_100946B28);
  }

  else
  {
    v11 = 0;
    memset(v10, 0, sizeof(v10));
    sub_10000C8CC(v10, &qword_100946B28);
    if (qword_100921EF8 != -1)
    {
      swift_once();
    }

    v7 = sub_100752E44();
    sub_10000D0FC(v7, qword_100983360);
    sub_10000C518(&qword_100923930);
    sub_100752454();
    *(swift_allocObject() + 16) = xmmword_1007A5A00;
    sub_1007523A4();
    sub_100752D04();

    (*&v2[OBJC_IVAR____TtC22SubscribePageExtension24OnboardingViewController_completionCallback])(v2);
    if (qword_100921D80 != -1)
    {
      swift_once();
    }

    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v8 = qword_100982EE8;
      ObjectType = swift_getObjectType();
      (*(v8 + 8))(ObjectType, v8);
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_1006E4858(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1007498E4();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v37 - v9;
  __chkstk_darwin(v11);
  v13 = &v37 - v12;
  __chkstk_darwin(v14);
  v16 = &v37 - v15;
  sub_10000C824(a1, v41);
  sub_10000C518(&qword_100922F60);
  if (swift_dynamicCast())
  {
    v17 = *(v5 + 16);
    v17(v13, v16, v4);
    if (*(*&v2[OBJC_IVAR____TtC22SubscribePageExtension24OnboardingViewController_presenter] + 16) == 2)
    {
      v18 = sub_1006E4E28();
      v19 = *(v5 + 8);
      v19(v13, v4);
      v19(v16, v4);
      goto LABEL_8;
    }

    v37 = v7;
    v38 = v2;
    v20 = *(v5 + 8);
    v20(v13, v4);
    (*(v5 + 32))(v10, v16, v4);
    v21 = v37;
    v17(v37, v10, v4);
    v22 = sub_1007448E4();
    v23 = swift_allocObject();
    swift_unknownObjectWeakInit();
    objc_allocWithZone(type metadata accessor for OnboardingWelcomeViewController());

    v18 = sub_10007FC70(v21, v22 & 1, sub_1006E5C68, v23);

    v20(v10, v4);
    v2 = v38;
LABEL_7:

    goto LABEL_8;
  }

  type metadata accessor for AdPrivacyOnboardingStep();
  if (swift_dynamicCast())
  {
    v18 = sub_1006E51D8();
    goto LABEL_7;
  }

  if (swift_dynamicCast())
  {
    sub_10000F6D0(aBlock);
    v30 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v31 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v32 = objc_allocWithZone(type metadata accessor for OnboardingLocationPrivacyViewController());
    v18 = sub_1002ABA6C(sub_1006E5C30, v30, sub_1006E5C60, v31);
  }

  else
  {
    type metadata accessor for JourneyDrivenOnboardingStep();
    if (!swift_dynamicCast())
    {
      goto LABEL_20;
    }

    v33 = v39;
    v18 = *&v39[OBJC_IVAR____TtC22SubscribePageExtension27JourneyDrivenOnboardingStep_engagementViewController];
    if (!v18)
    {

      sub_10000C620(v41);
      return v18;
    }

    v34 = [v18 startEngagement];
    v35 = swift_allocObject();
    swift_unknownObjectWeakInit();
    aBlock[4] = sub_1006E5C10;
    aBlock[5] = v35;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000E7BD4;
    aBlock[3] = &unk_100881B08;
    v36 = _Block_copy(aBlock);

    [v34 addFinishBlock:v36];
    _Block_release(v36);
  }

LABEL_8:
  sub_10000C620(v41);
  v24 = [v18 view];
  if (v24)
  {
    v25 = v24;
    v26 = [v2 view];
    if (v26)
    {
      v27 = v26;
      v28 = [v26 tintColor];

      [v25 setTintColor:v28];
      return v18;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
LABEL_20:
  result = sub_100754644();
  __break(1u);
  return result;
}

id sub_1006E4E28()
{
  v1 = v0;
  v2 = sub_100741574();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = objc_opt_self();
  sub_100749894();
  isa = sub_100753294().super.isa;

  v8 = [v6 linkWithBundleIdentifiers:isa];

  if (v8)
  {
    v9 = v8;
    [v9 setModalPresentationStyle:{objc_msgSend(v1, "modalPresentationStyle")}];

    v10 = v9;
    sub_100741544();
    sub_1007414A4();
    (*(v3 + 8))(v5, v2);
    v11 = sub_100753064();

    [v10 setDisplayLanguage:v11];
  }

  v12 = sub_10056003C(0xD000000000000017, 0x800000010078BDD0, 0);
  v24._countAndFlagsBits = 0xD00000000000001FLL;
  v24._object = 0x800000010078BDF0;
  v27._countAndFlagsBits = 0;
  v27._object = 0xE000000000000000;
  sub_1007458B4(v24, v27);
  v25._countAndFlagsBits = 0xD000000000000025;
  v25._object = 0x800000010078BE10;
  v28._countAndFlagsBits = 0;
  v28._object = 0xE000000000000000;
  sub_1007458B4(v25, v28);
  v22[1] = v1;
  v26._object = 0x800000010078BE40;
  v26._countAndFlagsBits = 0xD000000000000013;
  v29._countAndFlagsBits = 0;
  v29._object = 0xE000000000000000;
  sub_1007458B4(v26, v29);
  v13 = objc_allocWithZone(AMSUIOnboardingViewController);
  v14 = v8;
  v15 = sub_100753064();

  v16 = sub_100753064();

  v17 = sub_100753064();

  v18 = [v13 initWithHeaderImage:v12 titleText:v15 descriptionText:v16 primaryButtonText:v17 privacyLinkController:v14];

  v19 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_1006E5CB8;
  aBlock[5] = v19;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1001A67C4;
  aBlock[3] = &unk_100881B30;
  v20 = _Block_copy(aBlock);

  [v18 setPrimaryButtonCallback:v20];

  _Block_release(v20);
  return v18;
}

id sub_1006E51D8()
{
  v0 = sub_100741574();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v13[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_1004DE650();
  sub_100741564();
  v5 = sub_1007414A4();
  v7 = v6;
  (*(v1 + 8))(v3, v0);
  v8 = sub_100744A84();
  v15[0] = v5;
  v15[1] = v7;
  v14 = v15;
  v9 = sub_100073B4C(sub_1004A89BC, v13, v8);

  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v11 = objc_allocWithZone(type metadata accessor for OnboardingAdPrivacyViewController());
  return sub_1003759DC(v4, (v9 & 1) == 0, sub_1006E5C98, v10);
}

void sub_1006E5388(uint64_t a1, char a2)
{
  if (a2)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
      goto LABEL_7;
    }

    v3 = Strong;

    sub_10000E95C();
  }

  else
  {
    swift_beginAccess();
    v4 = swift_unknownObjectWeakLoadStrong();
    if (!v4)
    {
      goto LABEL_7;
    }

    v5 = v4;

    sub_10000E964();
  }

LABEL_7:
  swift_beginAccess();
  v6 = swift_unknownObjectWeakLoadStrong();
  if (v6)
  {
    v7 = v6;
    sub_1006E4028();
  }
}

void sub_1006E5470(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;

    a3();
  }

  swift_beginAccess();
  v6 = swift_unknownObjectWeakLoadStrong();
  if (v6)
  {
    v7 = v6;
    sub_1006E4028();
  }
}

void sub_1006E551C()
{
  v0 = sub_10000C518(&unk_100923970);
  __chkstk_darwin(v0 - 8);
  v2 = &v16[-v1];
  v3 = sub_100741264();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v16[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;

    sub_10000EA48();
  }

  sub_100741254();
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    sub_10000C8CC(v2, &unk_100923970);
  }

  else
  {
    (*(v4 + 32))(v6, v2, v3);
    v9 = [objc_opt_self() defaultWorkspace];
    if (!v9)
    {
      __break(1u);
      return;
    }

    v11 = v9;
    sub_100741204(v10);
    v13 = v12;
    [v11 openSensitiveURL:v12 withOptions:0];

    (*(v4 + 8))(v6, v3);
  }

  swift_beginAccess();
  v14 = swift_unknownObjectWeakLoadStrong();
  if (v14)
  {
    v15 = v14;
    sub_1006E4028();
  }
}

uint64_t sub_1006E5788(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1007521E4();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100752224();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = aBlock - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100016C60(0, &qword_100926D00);
  v12 = sub_100753774();
  aBlock[4] = sub_1006E5CA0;
  aBlock[5] = a3;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000CF7B0;
  aBlock[3] = &unk_100881B58;
  v13 = _Block_copy(aBlock);

  sub_100752204();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10002DCDC();
  sub_10000C518(&unk_10092F750);
  sub_1000A8054();
  sub_1007543A4();
  sub_100753784();
  _Block_release(v13);

  (*(v5 + 8))(v7, v4);
  return (*(v9 + 8))(v11, v8);
}

void sub_1006E5A08()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = *(Strong + OBJC_IVAR____TtC22SubscribePageExtension24OnboardingViewController_presenter);
    v2 = Strong;

    swift_beginAccess();
    v3 = *(v1 + 32);
    if (*(v3 + 16))
    {
      sub_10000C824(v3 + 32, v7);
      sub_10000C518(&qword_100922F60);
      type metadata accessor for JourneyDrivenOnboardingStep();
      if (swift_dynamicCast())
      {
        sub_10000F40C(v6, v1);
      }
    }
  }

  swift_beginAccess();
  v4 = swift_unknownObjectWeakLoadStrong();
  if (v4)
  {
    v5 = v4;
    sub_1006E4028();
  }
}

uint64_t sub_1006E5BD8()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1006E5C18(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1006E5CBC()
{
  sub_10000D198();
  result = sub_100753DF4();
  qword_100946B30 = result;
  return result;
}

char *sub_1006E5CF0(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v84 = sub_100743B04();
  v83 = *(v84 - 8);
  __chkstk_darwin(v84);
  v82 = &v80 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10074D8A4();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v85 = &v80 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v86 = &v80 - v15;
  __chkstk_darwin(v16);
  v18 = &v80 - v17;
  __chkstk_darwin(v19);
  v21 = &v80 - v20;
  v22 = OBJC_IVAR____TtC22SubscribePageExtension28MetadataRibbonStarRatingView_metrics;
  sub_10074D894();
  v23 = &v5[OBJC_IVAR____TtC22SubscribePageExtension28MetadataRibbonStarRatingView_id];
  *v23 = 0u;
  *(v23 + 1) = 0u;
  *(v23 + 4) = 0;
  v24 = OBJC_IVAR____TtC22SubscribePageExtension28MetadataRibbonStarRatingView_itemType;
  v25 = sub_100749D24();
  (*(*(v25 - 8) + 56))(&v5[v24], 1, 1, v25);
  v26 = &v5[OBJC_IVAR____TtC22SubscribePageExtension28MetadataRibbonStarRatingView_labelMaxWidth];
  *v26 = 0;
  v26[8] = 1;
  v27 = &v5[OBJC_IVAR____TtC22SubscribePageExtension28MetadataRibbonStarRatingView_truncationLegibilityThreshold];
  *v27 = 0;
  v27[8] = 1;
  v5[OBJC_IVAR____TtC22SubscribePageExtension28MetadataRibbonStarRatingView_allowsTruncation] = 2;
  swift_beginAccess();
  v88 = *(v12 + 16);
  v88(v21, &v5[v22], v11);
  v28 = sub_10074D864();
  v87 = v12;
  v29 = *(v12 + 8);
  v89 = v11;
  v91 = v12 + 8;
  v90 = v29;
  v29(v21, v11);
  v30 = type metadata accessor for RatingView();
  v31 = objc_allocWithZone(v30);
  *&v31[OBJC_IVAR____TtC22SubscribePageExtension10RatingView_rating] = 0;
  *&v31[OBJC_IVAR____TtC22SubscribePageExtension10RatingView_emptyStarColor] = 0;
  v32 = &v31[OBJC_IVAR____TtC22SubscribePageExtension10RatingView_starPadding];
  *v32 = 0;
  v32[8] = 1;
  *&v31[OBJC_IVAR____TtC22SubscribePageExtension10RatingView_maxNumberOfStars] = v28;
  if (qword_100921700 != -1)
  {
    swift_once();
  }

  v33 = qword_10093B668;
  *&v31[OBJC_IVAR____TtC22SubscribePageExtension10RatingView_starColor] = qword_10093B668;
  v31[OBJC_IVAR____TtC22SubscribePageExtension10RatingView_starSize] = 3;
  *v32 = 0;
  v32[8] = 1;
  v31[OBJC_IVAR____TtC22SubscribePageExtension10RatingView_useCase] = 0;
  v34 = type metadata accessor for StarRow();
  v35 = objc_allocWithZone(v34);
  v36 = v33;
  *&v31[OBJC_IVAR____TtC22SubscribePageExtension10RatingView_filledStarRowView] = sub_1004FC838(v28, 1, 3, 0, 1, 0, 0);
  v31[OBJC_IVAR____TtC22SubscribePageExtension10RatingView_fillEmptyStars] = 0;
  v37 = objc_allocWithZone(v34);
  *&v31[OBJC_IVAR____TtC22SubscribePageExtension10RatingView_emptyStarRowView] = sub_1004FC838(v28, 0, 3, 0, 1, 0, 0);
  v96.receiver = v31;
  v96.super_class = v30;
  v38 = objc_msgSendSuper2(&v96, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  sub_1004FA474();
  v39 = OBJC_IVAR____TtC22SubscribePageExtension10RatingView_filledStarRowView;
  v40 = *&v38[OBJC_IVAR____TtC22SubscribePageExtension10RatingView_filledStarRowView];
  v41 = *&v40[OBJC_IVAR____TtC22SubscribePageExtensionP33_2C6014D15F02DB8C76D5CE42FDC095AC7StarRow_currentRating];
  *&v40[OBJC_IVAR____TtC22SubscribePageExtensionP33_2C6014D15F02DB8C76D5CE42FDC095AC7StarRow_currentRating] = *&v38[OBJC_IVAR____TtC22SubscribePageExtension10RatingView_rating];
  v42 = v40;
  sub_1004FAF60(v41);

  if (*&v38[OBJC_IVAR____TtC22SubscribePageExtension10RatingView_emptyStarRowView])
  {
    [v38 addSubview:?];
  }

  [v38 addSubview:*&v38[v39]];

  *&v5[OBJC_IVAR____TtC22SubscribePageExtension28MetadataRibbonStarRatingView_starRatingView] = v38;
  sub_100745C84();
  v43 = sub_100745C64();
  *&v5[OBJC_IVAR____TtC22SubscribePageExtension28MetadataRibbonStarRatingView_ratingCountLabel] = v43;
  v44 = &v5[v22];
  v45 = v89;
  v88(v18, v44, v89);
  v46 = v43;
  v47 = sub_10074D874();
  v90(v18, v45);
  [v46 setLineBreakMode:v47];

  v48 = type metadata accessor for MetadataRibbonStarRatingView();
  v95.receiver = v5;
  v95.super_class = v48;
  v49 = objc_msgSendSuper2(&v95, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v53 = v49;
  [v53 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v54 = OBJC_IVAR____TtC22SubscribePageExtension28MetadataRibbonStarRatingView_ratingCountLabel;
  v55 = qword_100921D90;
  v56 = *&v53[OBJC_IVAR____TtC22SubscribePageExtension28MetadataRibbonStarRatingView_ratingCountLabel];
  if (v55 != -1)
  {
    swift_once();
  }

  [v56 setTextColor:qword_100946B30];

  v57 = *&v53[v54];
  sub_1007509A4();
  if (qword_100920210 != -1)
  {
    swift_once();
  }

  v58 = sub_10074A584();
  v59 = sub_10000D0FC(v58, qword_10097D9F0);
  v93 = v58;
  v94 = sub_1006BE290(&qword_100934700, &type metadata accessor for MetadataRibbonTextStyle);
  v60 = sub_10000D134(v92);
  (*(*(v58 - 8) + 16))(v60, v59, v58);
  sub_100745BC4();

  v61 = *&v53[v54];
  v62 = OBJC_IVAR____TtC22SubscribePageExtension28MetadataRibbonStarRatingView_metrics;
  v81 = OBJC_IVAR____TtC22SubscribePageExtension28MetadataRibbonStarRatingView_metrics;
  swift_beginAccess();
  v63 = v89;
  v88(v18, &v53[v62], v89);
  v64 = v61;
  v65 = sub_10074D884();
  v90(v18, v63);
  [v64 setNumberOfLines:v65];

  [v53 addSubview:*&v53[OBJC_IVAR____TtC22SubscribePageExtension28MetadataRibbonStarRatingView_starRatingView]];
  [v53 addSubview:*&v53[v54]];
  v66 = v85;
  sub_10074D894();
  v67 = [v53 traitCollection];
  v68 = sub_10074F3F4();
  v93 = v68;
  v94 = sub_1006BE290(&qword_10092AC70, &type metadata accessor for Feature);
  v69 = sub_10000D134(v92);
  (*(*(v68 - 8) + 104))(v69, enum case for Feature.search_tags(_:), v68);
  LOBYTE(v68) = sub_10074FC74();
  sub_10000C620(v92);
  if (v68)
  {
    v70 = 1;
  }

  else
  {
    v70 = 2;
  }

  v71 = [objc_opt_self() configurationWithPointSize:4 weight:v70 scale:10.0];
  v72 = v83;
  v73 = v82;
  v74 = v84;
  (*(v83 + 104))(v82, enum case for SystemImage.star(_:), v84);
  v75 = [v71 configurationWithTraitCollection:v67];
  v76 = sub_100743AE4();

  (*(v72 + 8))(v73, v74);
  [v76 contentInsets];
  [v76 contentInsets];
  [v76 size];
  [v76 contentInsets];
  [v76 contentInsets];
  [v76 size];

  v77 = v86;
  sub_10074D854();
  v90(v66, v63);
  v78 = v81;
  swift_beginAccess();
  (*(v87 + 40))(&v53[v78], v77, v63);
  swift_endAccess();

  return v53;
}

uint64_t sub_1006E68BC()
{
  v1 = sub_100750354();
  v20 = *(v1 - 8);
  v21 = v1;
  __chkstk_darwin(v1);
  v19 = &v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_10074D8A4();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_10074D8B4();
  v7 = *(v18 - 8);
  __chkstk_darwin(v18);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for MetadataRibbonStarRatingView();
  v28.receiver = v0;
  v28.super_class = v10;
  objc_msgSendSuper2(&v28, "layoutSubviews");
  v11 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension28MetadataRibbonStarRatingView_starRatingView];
  v26 = type metadata accessor for RatingView();
  v27 = &protocol witness table for UIView;
  v25 = v11;
  v12 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension28MetadataRibbonStarRatingView_ratingCountLabel];
  v23 = sub_100745C84();
  v24 = &protocol witness table for UILabel;
  v22 = v12;
  v13 = OBJC_IVAR____TtC22SubscribePageExtension28MetadataRibbonStarRatingView_metrics;
  swift_beginAccess();
  (*(v4 + 16))(v6, &v0[v13], v3);
  v14 = v11;
  v15 = v12;
  sub_10074D824();
  sub_1007477B4();
  v16 = v19;
  sub_10074D844();
  (*(v20 + 8))(v16, v21);
  return (*(v7 + 8))(v9, v18);
}

double sub_1006E6BB8(uint64_t a1)
{
  v18[0] = a1;
  v2 = sub_10074D8A4();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10074D8B4();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension28MetadataRibbonStarRatingView_starRatingView);
  v18[12] = type metadata accessor for RatingView();
  v18[13] = &protocol witness table for UIView;
  v18[9] = v10;
  v11 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension28MetadataRibbonStarRatingView_ratingCountLabel);
  v18[7] = sub_100745C84();
  v18[8] = &protocol witness table for UILabel;
  v18[4] = v11;
  v12 = OBJC_IVAR____TtC22SubscribePageExtension28MetadataRibbonStarRatingView_metrics;
  swift_beginAccess();
  (*(v3 + 16))(v5, v1 + v12, v2);
  v13 = v10;
  v14 = v11;
  sub_10074D824();
  sub_10074D834();
  v16 = v15;
  (*(v7 + 8))(v9, v6);
  return v16;
}

id sub_1006E6E98()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MetadataRibbonStarRatingView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for MetadataRibbonStarRatingView()
{
  result = qword_100946B78;
  if (!qword_100946B78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1006E6FE4()
{
  sub_10074D8A4();
  if (v0 <= 0x3F)
  {
    sub_1000D9E5C();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_1006E70EC@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC22SubscribePageExtension28MetadataRibbonStarRatingView_itemType;
  swift_beginAccess();
  return sub_100016B4C(v1 + v3, a1, &qword_100924B30);
}

uint64_t sub_1006E7154(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC22SubscribePageExtension28MetadataRibbonStarRatingView_itemType;
  swift_beginAccess();
  sub_10006644C(a1, v1 + v3, &qword_100924B30);
  return swift_endAccess();
}

uint64_t sub_1006E7230(uint64_t a1, char a2)
{
  v5 = v2 + OBJC_IVAR____TtC22SubscribePageExtension28MetadataRibbonStarRatingView_labelMaxWidth;
  result = swift_beginAccess();
  *v5 = a1;
  *(v5 + 8) = a2 & 1;
  return result;
}

uint64_t sub_1006E72FC(uint64_t a1, char a2)
{
  v5 = v2 + OBJC_IVAR____TtC22SubscribePageExtension28MetadataRibbonStarRatingView_truncationLegibilityThreshold;
  result = swift_beginAccess();
  *v5 = a1;
  *(v5 + 8) = a2 & 1;
  return result;
}

uint64_t sub_1006E73C0()
{
  v1 = OBJC_IVAR____TtC22SubscribePageExtension28MetadataRibbonStarRatingView_allowsTruncation;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1006E7404(char a1)
{
  v3 = OBJC_IVAR____TtC22SubscribePageExtension28MetadataRibbonStarRatingView_allowsTruncation;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1006E74B4@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC22SubscribePageExtension28MetadataRibbonStarRatingView_id;
  swift_beginAccess();
  return sub_100016B4C(v1 + v3, a1, &unk_1009276E0);
}

uint64_t sub_1006E751C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC22SubscribePageExtension28MetadataRibbonStarRatingView_id;
  swift_beginAccess();
  sub_10006644C(a1, v1 + v3, &unk_1009276E0);
  return swift_endAccess();
}

uint64_t sub_1006E75EC()
{
  v1 = v0;
  sub_100747844();
  v3 = v2;
  sub_100747914();
  v5 = v4;
  sub_1004FA340(v3);
  v6 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension28MetadataRibbonStarRatingView_ratingCountLabel];
  if (v5)
  {
    v7 = sub_100753064();
  }

  else
  {
    v7 = 0;
  }

  [v6 setText:v7];

  [v1 setNeedsLayout];
}

double sub_1006E76AC(uint64_t a1, void *a2)
{
  v51 = a1;
  v58 = sub_10074D8B4();
  v57 = *(v58 - 8);
  __chkstk_darwin(v58);
  v55 = &v43 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = sub_100750BD4();
  v50 = *(v52 - 8);
  __chkstk_darwin(v52);
  v49 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_100750E94();
  v46 = *(v54 - 8);
  __chkstk_darwin(v54);
  v6 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v43 - v8;
  __chkstk_darwin(v10);
  v53 = &v43 - v11;
  v12 = sub_100743B04();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_10074D8A4();
  v47 = *(v48 - 8);
  __chkstk_darwin(v48);
  v45 = &v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v43 - v18;
  sub_10074D894();
  sub_10074D864();
  v56 = a2;
  v20 = [a2 traitCollection];
  v21 = sub_10074F3F4();
  v64 = v21;
  v65 = sub_1006BE290(&qword_10092AC70, &type metadata accessor for Feature);
  v22 = sub_10000D134(v63);
  (*(*(v21 - 8) + 104))(v22, enum case for Feature.search_tags(_:), v21);
  LOBYTE(v21) = sub_10074FC74();
  sub_10000C620(v63);
  if (v21)
  {
    v23 = 1;
  }

  else
  {
    v23 = 2;
  }

  v24 = [objc_opt_self() configurationWithPointSize:4 weight:v23 scale:10.0];
  (*(v13 + 104))(v15, enum case for SystemImage.star(_:), v12);
  v25 = [v24 configurationWithTraitCollection:v20];
  v26 = sub_100743AE4();

  (*(v13 + 8))(v15, v12);
  [v26 contentInsets];
  [v26 contentInsets];
  [v26 size];
  [v26 contentInsets];
  [v26 contentInsets];
  [v26 size];

  v27 = sub_100750F34();
  swift_allocObject();
  v44 = sub_100750F14();
  sub_100750E84();
  sub_1007509A4();
  if (qword_100920210 != -1)
  {
    swift_once();
  }

  v28 = sub_10074A584();
  v29 = sub_10000D0FC(v28, qword_10097D9F0);
  v64 = v28;
  v65 = sub_1006BE290(&qword_100934700, &type metadata accessor for MetadataRibbonTextStyle);
  v30 = sub_10000D134(v63);
  (*(*(v28 - 8) + 16))(v30, v29, v28);
  sub_100750DE4();
  v31 = v46;
  v32 = *(v46 + 8);
  v33 = v6;
  v34 = v54;
  v32(v33, v54);
  v43 = v32;
  sub_10000C620(v63);
  sub_10074D884();
  v35 = v53;
  sub_100750E74();
  v32(v9, v34);
  sub_100747914();
  (*(v31 + 16))(v9, v35, v34);
  sub_100750BB4();
  v36 = v49;
  sub_100750BF4();
  sub_100750BA4();
  (*(v50 + 8))(v36, v52);
  v61 = v27;
  v62 = &protocol witness table for LayoutViewPlaceholder;
  v60 = v44;
  sub_10000C824(v63, v59);
  v37 = v47;
  v38 = v48;
  (*(v47 + 16))(v45, v19, v48);

  v39 = v55;
  sub_10074D824();
  sub_10074D834();
  v41 = v40;

  (*(v57 + 8))(v39, v58);
  sub_10000C620(v63);
  v43(v35, v34);
  (*(v37 + 8))(v19, v38);
  return v41;
}

double sub_1006E7FB4()
{
  v0 = sub_10000C518(&qword_10092FA68);
  v39 = *(v0 - 8);
  v40 = v0;
  __chkstk_darwin(v0);
  v35 = &v30 - v1;
  v36 = sub_10074F704();
  v34 = *(v36 - 8);
  __chkstk_darwin(v36);
  v3 = &v30 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100749A94();
  v37 = *(v4 - 8);
  v38 = v4;
  __chkstk_darwin(v4);
  v32 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10000C518(&qword_100925340);
  v30 = *(v6 - 8);
  v31 = v6;
  __chkstk_darwin(v6);
  v33 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v30 - v9;
  v11 = sub_10000C518(&unk_10092E450);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v30 - v13;
  v15 = sub_10000C518(&unk_100930810);
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v30 - v17;
  sub_100746944();
  sub_1007525C4();
  v19 = v18;
  v20 = v30;
  (*(v16 + 8))(v19, v15);
  swift_getKeyPath();
  sub_100746914();

  swift_getKeyPath();
  sub_1007525B4();
  v21 = v31;

  v22 = v11;
  v23 = v32;
  (*(v12 + 8))(v14, v22);

  sub_100746964();
  sub_1007468A4();
  swift_getKeyPath();
  sub_100746914();
  v24 = v35;

  sub_10074F674();
  (*(v34 + 8))(v3, v36);
  sub_10007DC04();
  (*(v20 + 16))(v33, v10, v21);
  sub_100752DF4();
  sub_100752EB4();
  if (qword_100920960 != -1)
  {
    swift_once();
  }

  v25 = sub_100747674();
  sub_10000D0FC(v25, qword_10097FA38);
  sub_100747694();
  sub_1006E85E4(&qword_100933258, &type metadata accessor for FlowcaseItemLayout);
  sub_100750D34();
  if (qword_100920968 != -1)
  {
    swift_once();
  }

  v26 = sub_100751374();
  sub_10000D0FC(v26, qword_10097FA50);
  sub_100753BD4();
  v28 = v27;
  swift_unknownObjectRelease();
  (*(v39 + 8))(v24, v40);
  (*(v37 + 8))(v23, v38);
  (*(v20 + 8))(v10, v21);
  sub_10000C620(v41);
  return v28;
}

uint64_t sub_1006E85E4(unint64_t *a1, void (*a2)(uint64_t))
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

double sub_1006E862C()
{
  v0 = sub_10074F704();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100747B84();
  sub_10074F674();
  v4 = *(v1 + 8);
  v4(v3, v0);
  sub_100747B84();
  sub_10074F5C4();
  v6 = v5;
  v4(v3, v0);
  v7 = sub_100747B94();
  v8 = type metadata accessor for SnapshotPageTraitEnvironment();
  v9 = objc_allocWithZone(v8);
  v10 = &v9[OBJC_IVAR____TtC22SubscribePageExtension28SnapshotPageTraitEnvironment_pageContainerSize];
  *v10 = v6;
  *(v10 + 1) = 0x7FEFFFFFFFFFFFFFLL;
  *&v9[OBJC_IVAR____TtC22SubscribePageExtension28SnapshotPageTraitEnvironment_traitCollection] = v7;
  v17.receiver = v9;
  v17.super_class = v8;
  v11 = objc_msgSendSuper2(&v17, "init");
  if (qword_100920960 != -1)
  {
    swift_once();
  }

  v12 = sub_100747674();
  sub_10000D0FC(v12, qword_10097FA38);
  sub_100747694();
  sub_1006E85E4(&qword_100933258, &type metadata accessor for FlowcaseItemLayout);
  sub_100750D34();
  if (qword_100920968 != -1)
  {
    swift_once();
  }

  v13 = sub_100751374();
  sub_10000D0FC(v13, qword_10097FA50);
  sub_100753BD4();
  v15 = v14;

  return v15;
}

void sub_1006E88C4(unsigned __int8 a1)
{
  sub_10074FC24();
  sub_10074F674();
  if (a1 != 6)
  {
    if (a1 == 5)
    {

      sub_10074F5A4();
    }

    else if (a1 == 4)
    {
      v2 = sub_10074F6C4();
      if (v3)
      {
        if (v2 == 0x6972477961646F74 && v3 == 0xE900000000000064)
        {

LABEL_15:
          sub_10074F634();
          return;
        }

        v4 = sub_100754754();

        if (v4)
        {
          goto LABEL_15;
        }
      }

      sub_10074F674();
    }

    else
    {

      sub_1006E8BC4(a1);
    }
  }
}

double sub_1006E8A04(unsigned __int8 a1, id a2)
{
  if (a1 != 4)
  {
    sub_10074F694();
    sub_10074F694();
  }

  [a2 layoutDirection];
  sub_1007539B4();
  sub_1006E88C4(a1);
  sub_10074F694();
  sub_10074F694();
  [a2 layoutDirection];
  sub_1007539B4();
  v5 = v4;
  sub_10074F5C4();
  sub_1007537E4();
  sub_100750C24();
  sub_100750C34();
  return v5;
}

double sub_1006E8BC4(unsigned __int8 a1)
{
  sub_10074FC24();
  sub_10074F674();
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      sub_10074F594();
      v6 = v5 + -1.0;
      sub_10074F5A4();
      v8 = v7;
      sub_10074F634();
      v10 = v6 + -1.0;
      if (v6 + -1.0 < 0.0)
      {
        v10 = 0.0;
      }

      v11 = v8 * v6 + v9 * v10;
      sub_10074F5C4();
      v13 = v12;
      sub_10074F664();
      v16 = v13 - (v14 + v15);
      sub_10074F634();
      v2 = v16 - v17 - v11;
    }

    else
    {
      sub_10074F5C4();
      v19 = v18;
      sub_10074F664();
      v22 = v19 - (v20 + v21);
      sub_10074F5A4();
      v24 = v22 - v23;
      sub_10074F634();
      v2 = v24 - v25;
    }
  }

  else if (a1)
  {
    v3 = v2;
    sub_10074F634();
    v2 = (v3 - v4) * 0.5;
  }

  return floor(v2);
}

uint64_t sub_1006E8CAC(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v5 = v4;
  v55 = a4;
  v53 = a2;
  ObjectType = swift_getObjectType();
  v7 = sub_10074FB54();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10074A2E4();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10074FAE4();
  v15 = sub_10074A2A4();
  result = (*(v12 + 8))(v14, v11);
  if ((v15 & 1) == 0)
  {
    result = sub_10074FBA4();
    if (result)
    {
      v17 = result;
      type metadata accessor for TodayCardOverlayReusePool();
      sub_100752754();
      v52 = v58[0];
      if (v58[0])
      {
        v50 = a3;
        v51 = &v5[OBJC_IVAR____TtC22SubscribePageExtension22TodayCardInfoLayerView_overlayKind];
        v18 = v5[OBJC_IVAR____TtC22SubscribePageExtension22TodayCardInfoLayerView_overlayKind + 8];
        sub_1007463A4();
        if ((v18 & 1) != 0 || (v19 = sub_100746394(), v19 != sub_100746394()))
        {
          v47 = v7;
          v49 = v8;
          v45 = v17;
          v20 = sub_1007463A4();
          v21 = sub_1006CE170(v20);
          v23 = v22;
          v44 = &v5[OBJC_IVAR____TtC22SubscribePageExtension22TodayCardInfoLayerView_overlay];
          v24 = *&v5[OBJC_IVAR____TtC22SubscribePageExtension22TodayCardInfoLayerView_overlayContainer];
          v43[1] = *&v5[OBJC_IVAR____TtC22SubscribePageExtension22TodayCardInfoLayerView_overlay];
          swift_unknownObjectRetain();
          sub_10045F99C();
          v25 = swift_getObjectType();
          v26 = *(v23 + 16);
          swift_unknownObjectRetain();
          v48 = v21;
          v46 = v23;
          v27 = v26(v25, v23);
          v28 = OBJC_IVAR____TtC22SubscribePageExtension29InfoLayerOverlayContainerView_overlayView;
          v29 = *&v24[OBJC_IVAR____TtC22SubscribePageExtension29InfoLayerOverlayContainerView_overlayView];
          *&v24[OBJC_IVAR____TtC22SubscribePageExtension29InfoLayerOverlayContainerView_overlayView] = v27;
          v30 = v27;

          [v30 setAnchorPoint:{0.0, 1.0}];
          v31 = *&v24[v28];
          if (v31)
          {
            v58[0] = 0x3FF0000000000000;
            v58[1] = 0;
            v58[2] = 0;
            v59 = 0x3FF0000000000000;
            v60 = 0;
            v61 = 0;
            [v31 setTransform:v58];
          }

          [v24 addSubview:v30];
          [v30 setOverrideUserInterfaceStyle:{objc_msgSend(v5, "overrideUserInterfaceStyle")}];
          v57.receiver = v5;
          v57.super_class = ObjectType;
          objc_msgSendSuper2(&v57, "_continuousCornerRadius");
          [v30 _setContinuousCornerRadius:?];
          v32 = [v30 layer];
          if (v5[OBJC_IVAR____TtC22SubscribePageExtension22TodayCardInfoLayerView_sizeCategory] == 6)
          {
            v33 = [v5 traitCollection];
            v34 = sub_100753804();

            if (v34)
            {
              v35 = 12;
            }

            else
            {
              v35 = 15;
            }
          }

          else
          {
            v35 = 12;
          }

          v17 = v45;
          [v32 setMaskedCorners:v35];
          v36 = v48;
          swift_unknownObjectRelease();

          [v5 setNeedsLayout];
          swift_unknownObjectRelease();
          v37 = sub_1007463A4();
          v38 = v51;
          *v51 = v37;
          *(v38 + 8) = 0;
          v39 = v44;
          v40 = v46;
          *v44 = v36;
          v39[1] = v40;
          swift_unknownObjectRelease();
          v8 = v49;
          v7 = v47;
        }

        swift_weakAssign();
        if (*&v5[OBJC_IVAR____TtC22SubscribePageExtension22TodayCardInfoLayerView_overlay])
        {
          v41 = *&v5[OBJC_IVAR____TtC22SubscribePageExtension22TodayCardInfoLayerView_overlay + 8];
          ObjectType = swift_getObjectType();
          v59 = sub_1007463B4();
          v60 = sub_1006EB5AC(&qword_100930000, &type metadata accessor for TodayCardOverlay);
          v58[0] = v17;
          swift_unknownObjectRetain();

          sub_10074FB74();
          sub_1007442C4();
          sub_100752764();
          v42 = v55;
          sub_100752D34();
          (*(v41 + 112))(v58, v42, v53, v10, v50, v56, ObjectType, v41);
          swift_unknownObjectRelease();

          (*(v8 + 8))(v10, v7);
          sub_10000C620(v58);
        }

        [v5 setNeedsLayout];
      }
    }
  }

  return result;
}

uint64_t sub_1006E9258(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v5 = v4;
  v58 = a4;
  v57 = a3;
  v56 = a2;
  v6 = sub_10074FB54();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10074A2E4();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10074FAE4();
  v14 = sub_10074A2A4();
  result = (*(v11 + 8))(v13, v10);
  if ((v14 & 1) == 0)
  {
    result = sub_10074FBA4();
    if (result)
    {
      v16 = result;
      type metadata accessor for TodayCardOverlayReusePool();
      sub_100752754();
      v17 = v60[0];
      if (v60[0])
      {
        v52 = &v5[qword_10097ED50];
        v18 = v5[qword_10097ED50 + 8];
        sub_1007463A4();
        v55 = v17;
        if ((v18 & 1) != 0 || (v19 = sub_100746394(), v19 != sub_100746394()))
        {
          v51 = v7;
          v48 = v16;
          v20 = sub_1007463A4();
          v21 = sub_1006CE170(v20);
          v49 = v22;
          v50 = v21;
          v53 = &v5[qword_10097ED58];
          v54 = *&v5[qword_10097ED58];
          if (v54)
          {
            v23 = v53[1];
            ObjectType = swift_getObjectType();
            v47 = v6;
            v25 = *(v23 + 16);
            swift_unknownObjectRetain();
            v26 = v25(ObjectType, v23);
            [v26 removeFromSuperview];

            v27 = swift_getObjectType();
            v28 = v25(v27, v23);
            [v28 _setContinuousCornerRadius:0.0];

            v29 = v25(v27, v23);
            v6 = v47;
            v30 = v29;
            v31 = [v29 layer];

            [v31 setMaskedCorners:15];
          }

          v32 = v50;
          v33 = swift_getObjectType();
          v34 = v49;
          v35 = *(v49 + 16);
          swift_unknownObjectRetain();
          v36 = v35(v33, v34);
          v37 = v36;
          v38 = 20.0;
          if (v5[OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell_isExpanded])
          {
            v38 = 0.0;
          }

          [v36 _setContinuousCornerRadius:v38];
          v39 = [v37 layer];
          [v39 setMaskedCorners:12];

          v40 = [v5 contentView];
          [v40 addSubview:v37];
          swift_unknownObjectRelease();

          swift_unknownObjectRelease();
          v41 = v48;
          v42 = sub_1007463A4();
          v44 = v52;
          v43 = v53;
          *v52 = v42;
          *(v44 + 8) = 0;
          *v43 = v32;
          v43[1] = v34;
          v16 = v41;
          swift_unknownObjectRelease();
          v7 = v51;
        }

        swift_weakAssign();
        if (*&v5[qword_10097ED58])
        {
          v45 = *&v5[qword_10097ED58 + 8];
          v54 = swift_getObjectType();
          v60[3] = sub_1007463B4();
          v60[4] = sub_1006EB5AC(&qword_100930000, &type metadata accessor for TodayCardOverlay);
          v60[0] = v16;
          swift_unknownObjectRetain();

          sub_10074FB74();
          sub_1007442C4();
          sub_100752764();
          v46 = v58;
          sub_100752D34();
          (*(v45 + 112))(v60, v46, v56, v9, v57, v59, v54, v45);
          swift_unknownObjectRelease();

          (*(v7 + 8))(v9, v6);
          sub_10000C620(v60);
        }

        sub_1006EA3B8();
        [v5 setNeedsLayout];
      }
    }
  }

  return result;
}

uint64_t sub_1006E97DC(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v5 = v4;
  v56 = a4;
  v55 = a3;
  v54 = a2;
  v6 = sub_10074FB54();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10074A2E4();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10074FAE4();
  v14 = sub_10074A2A4();
  result = (*(v11 + 8))(v13, v10);
  if ((v14 & 1) == 0)
  {
    result = sub_10074FBA4();
    if (result)
    {
      v16 = result;
      type metadata accessor for TodayCardOverlayReusePool();
      sub_100752754();
      v17 = v58[0];
      if (v58[0])
      {
        v50 = &v5[OBJC_IVAR____TtC22SubscribePageExtension38MultiAppFallbackCardCollectionViewCell_overlayKind];
        v18 = v5[OBJC_IVAR____TtC22SubscribePageExtension38MultiAppFallbackCardCollectionViewCell_overlayKind + 8];
        sub_1007463A4();
        v53 = v17;
        if ((v18 & 1) != 0 || (v19 = sub_100746394(), v19 != sub_100746394()))
        {
          v47 = v6;
          v49 = v7;
          v20 = sub_1007463A4();
          v21 = sub_1006CE170(v20);
          v51 = v22;
          v52 = v21;
          v23 = &v5[OBJC_IVAR____TtC22SubscribePageExtension38MultiAppFallbackCardCollectionViewCell_overlay];
          v24 = *&v5[OBJC_IVAR____TtC22SubscribePageExtension38MultiAppFallbackCardCollectionViewCell_overlay];
          if (v24)
          {
            v25 = v23[1];
            ObjectType = swift_getObjectType();
            v27 = *(v25 + 16);
            swift_unknownObjectRetain();
            v28 = v27(ObjectType, v25);
            [v28 removeFromSuperview];
          }

          v46 = v24;
          v48 = v23;
          v29 = swift_getObjectType();
          v30 = v51;
          v31 = *(v51 + 16);
          swift_unknownObjectRetain();
          v32 = v31(v29, v30);
          v33 = *&v5[OBJC_IVAR____TtC22SubscribePageExtension38MultiAppFallbackCardCollectionViewCell_infoLayerOverlayContainer];
          v34 = OBJC_IVAR____TtC22SubscribePageExtension29InfoLayerOverlayContainerView_overlayView;
          v35 = *&v33[OBJC_IVAR____TtC22SubscribePageExtension29InfoLayerOverlayContainerView_overlayView];
          *&v33[OBJC_IVAR____TtC22SubscribePageExtension29InfoLayerOverlayContainerView_overlayView] = v32;
          v36 = v32;

          [v36 setAnchorPoint:{0.0, 1.0}];
          v37 = *&v33[v34];
          if (v37)
          {
            v58[0] = 0x3FF0000000000000;
            v58[1] = 0;
            v58[2] = 0;
            v59 = 0x3FF0000000000000;
            v60 = 0;
            v61 = 0;
            [v37 setTransform:v58];
          }

          [v33 addSubview:v36];
          [v36 setOverrideUserInterfaceStyle:{objc_msgSend(v5, "overrideUserInterfaceStyle")}];
          [v5 _continuousCornerRadius];
          [v36 _setContinuousCornerRadius:?];
          v38 = [v36 layer];
          [v38 setMaskedCorners:12];
          v39 = v52;
          swift_unknownObjectRelease();

          swift_unknownObjectRelease();
          v40 = sub_1007463A4();
          v42 = v50;
          v41 = v51;
          *v50 = v40;
          *(v42 + 8) = 0;
          v43 = v48;
          *v48 = v39;
          v43[1] = v41;
          swift_unknownObjectRelease();
          v7 = v49;
          v6 = v47;
        }

        swift_weakAssign();
        if (*&v5[OBJC_IVAR____TtC22SubscribePageExtension38MultiAppFallbackCardCollectionViewCell_overlay])
        {
          v44 = *&v5[OBJC_IVAR____TtC22SubscribePageExtension38MultiAppFallbackCardCollectionViewCell_overlay + 8];
          v52 = swift_getObjectType();
          v59 = sub_1007463B4();
          v60 = sub_1006EB5AC(&qword_100930000, &type metadata accessor for TodayCardOverlay);
          v58[0] = v16;
          swift_unknownObjectRetain();

          sub_10074FB74();
          sub_1007442C4();
          sub_100752764();
          v45 = v56;
          sub_100752D34();
          (*(v44 + 112))(v58, v45, v54, v9, v55, v57, v52, v44);
          swift_unknownObjectRelease();

          (*(v7 + 8))(v9, v6);
          sub_10000C620(v58);
        }

        sub_1005F48BC();
        [v5 setNeedsLayout];
      }
    }
  }

  return result;
}

id sub_1006E9D40(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v57 = a4;
  v58 = sub_10074FB54();
  v9 = *(v58 - 8);
  __chkstk_darwin(v58);
  v11 = &v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10000C518(&unk_100926C40);
  __chkstk_darwin(v12 - 8);
  v14 = &v54 - v13;
  v15 = sub_10074F704();
  v16 = *(v15 - 8);
  v17 = *(v16 + 16);
  v55 = a3;
  v17(v14, a3, v15);
  (*(v16 + 56))(v14, 0, 1, v15);
  v18 = a1;
  v19 = OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell_pageGrid;
  swift_beginAccess();
  sub_100037710(v14, &v5[v19]);
  swift_endAccess();
  v56 = a2;
  sub_1005F3E54(a2);
  v20 = [v5 backgroundView];
  if (v20)
  {
    v21 = v20;
    v22 = sub_10074FA74();
    if (!v22)
    {
      sub_10000D198();
      v22 = sub_100753E64();
    }

    v23 = v22;
    [v21 setBackgroundColor:v22];
  }

  v24 = *&v5[qword_10097ED40];
  sub_10074FB94();
  if (v25)
  {
    v26 = sub_100753064();
  }

  else
  {
    v26 = 0;
  }

  [v24 setText:v26];

  sub_10074FB74();
  v27 = sub_10074FB14();
  v28 = v18;
  v29 = *(v9 + 8);
  v29(v11, v58);
  [v24 setTextColor:v27];

  v30 = UIAccessibilityTraitButton;
  [v24 setAccessibilityTraits:UIAccessibilityTraitButton];
  v31 = *&v5[qword_10097ED48];
  v32 = v28;
  sub_10074FB84();
  if (v33)
  {
    v34 = sub_100753064();
  }

  else
  {
    v34 = 0;
  }

  [v31 setText:v34];

  sub_10074FB74();
  v35 = sub_10074FB04();
  v29(v11, v58);
  v36 = v32;
  [v31 setTextColor:v35];

  [v31 setAccessibilityTraits:v30];
  v37 = [v5 backgroundView];
  v38 = v56;
  v39 = v55;
  if (v37)
  {
    v40 = v37;
    v41 = sub_10074FA74();
    if (!v41)
    {
      sub_10000D198();
      v41 = sub_100753E64();
    }

    v42 = v41;
    [v40 setBackgroundColor:v41];
  }

  v43 = [v5 contentView];
  v44 = [v5 traitCollection];
  if (v38 != 4)
  {
    sub_10074F694();
    sub_10074F694();
  }

  [v44 layoutDirection];
  sub_1007539B4();
  v46 = v45;
  v48 = v47;
  v50 = v49;
  v52 = v51;

  [v43 setLayoutMargins:{v46, v48, v50, v52}];
  sub_1006E9258(v36, v39, v38, v57);
  return [v5 setNeedsLayout];
}

uint64_t sub_1006EA23C(uint64_t a1)
{
  sub_10000C824(a1, v7);
  sub_10000C518(&unk_100923100);
  sub_10074FBB4();
  result = swift_dynamicCast();
  if (result)
  {
    v3 = sub_10074FBA4();
    if (v3)
    {
      v4 = v3;
      v5 = *(v1 + qword_10097ED58);
      if (v5)
      {
        v7[3] = sub_1007463B4();
        v7[4] = sub_1006EB5AC(&qword_100930000, &type metadata accessor for TodayCardOverlay);
        v7[0] = v4;
        v6[3] = swift_getObjectType();
        v6[0] = v5;
        swift_unknownObjectRetain_n();

        sub_1007430A4();
        swift_unknownObjectRelease();

        sub_10000C620(v6);
        return sub_10000C8CC(v7, &unk_1009297F0);
      }
    }
  }

  return result;
}

void sub_1006EA3B8()
{
  sub_1005F48BC();
  v1 = [v0 contentView];
  v2 = [*&v0[qword_10097ED40] text];
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

  v33 = v4;
  v34 = v6;
  v7 = [*&v0[qword_10097ED48] text];
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

  v35 = v9;
  v36 = v11;
  if (*&v0[qword_10097ED58])
  {
    v12 = *&v0[qword_10097ED58 + 8];
    ObjectType = swift_getObjectType();
    v14 = *(v12 + 16);
    swift_unknownObjectRetain();
    v15 = v14(ObjectType, v12);
    swift_unknownObjectRelease();
    v16 = [v15 accessibilityLabel];

    if (v16)
    {
      v17 = sub_100753094();
      v19 = v18;
    }

    else
    {
      v17 = 0;
      v19 = 0;
    }

    v37 = v17;
    v38 = v19;
  }

  else
  {
    v37 = 0;
    v38 = 0;
  }

  v20 = 0;
  v21 = _swiftEmptyArrayStorage;
LABEL_14:
  if (v20 <= 3)
  {
    v22 = 3;
  }

  else
  {
    v22 = v20;
  }

  v23 = v22 + 1;
  v24 = 16 * v20 + 40;
  while (1)
  {
    if (v20 == 3)
    {
      sub_10000C518(&qword_10092FE70);
      swift_arrayDestroy();
      sub_10000C518(&unk_100928A70);
      sub_10010ABC4();
      sub_100752FF4();

      v31 = sub_100753064();

      [v1 setAccessibilityLabel:v31];

      return;
    }

    if (v23 == ++v20)
    {
      break;
    }

    v25 = v24 + 16;
    v26 = *&v32[v24];
    v24 += 16;
    if (v26)
    {
      v27 = *&v32[v25 - 24];

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v21 = sub_1002554F8(0, *(v21 + 2) + 1, 1, v21);
      }

      v29 = *(v21 + 2);
      v28 = *(v21 + 3);
      if (v29 >= v28 >> 1)
      {
        v21 = sub_1002554F8((v28 > 1), v29 + 1, 1, v21);
      }

      *(v21 + 2) = v29 + 1;
      v30 = &v21[16 * v29];
      *(v30 + 4) = v27;
      *(v30 + 5) = v26;
      goto LABEL_14;
    }
  }

  __break(1u);
}

char *sub_1006EA6CC(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = sub_100752AC4();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = qword_100946B88;
  type metadata accessor for CondensedAdLockupWithIconBackgroundView();
  *&v4[v14] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v22.receiver = v4;
  v22.super_class = ObjectType;
  v15 = objc_msgSendSuper2(&v22, "initWithFrame:", a1, a2, a3, a4);
  v16 = [v15 contentView];
  [v16 setClipsToBounds:1];

  v17 = qword_100946B88;
  [*&v15[qword_100946B88] setClipsToBounds:1];
  v18 = [v15 contentView];

  [v18 addSubview:*&v15[v17]];
  memset(v21, 0, sizeof(v21));
  memset(v20, 0, sizeof(v20));
  sub_100752A74();
  sub_10000C8CC(v20, &unk_100923520);
  sub_10000C8CC(v21, &unk_100923520);
  sub_100753C74();

  (*(v11 + 8))(v13, v10);
  return v15;
}

id sub_1006EA92C()
{
  v1 = *&v0[qword_100946B88];
  [v0 bounds];

  return [v1 setFrame:?];
}

void sub_1006EA980(void *a1)
{
  v2.receiver = a1;
  v2.super_class = swift_getObjectType();
  v1 = v2.receiver;
  objc_msgSendSuper2(&v2, "prepareForReuse");
  sub_100743344();
}

uint64_t sub_1006EAA18()
{
  sub_10074DB64();
  sub_1006EB5AC(&qword_100939718, &type metadata accessor for CondensedAdLockupWithIconBackground);
  result = sub_1007468B4();
  if (v1)
  {
    sub_10074DB54();
  }

  return result;
}

uint64_t sub_1006EAAB4(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4)
{
  sub_1006E9D40(a1, a2, a3, a4);
  sub_10074FB64();
  sub_10074BEC4();
  if (swift_dynamicCastClass())
  {
    v9 = sub_10074BEB4();
    sub_10009C1C4(v9, a3, a4);

    sub_1006E9D40(a1, a2, a3, a4);
    [v4 setNeedsLayout];
  }
}

uint64_t sub_1006EAB98(uint64_t a1)
{
  v3 = sub_10000C518(&unk_100926C40);
  __chkstk_darwin(v3 - 8);
  v5 = &v12 - v4;
  v6 = sub_10074F704();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1006EA23C(a1);
  v10 = OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell_pageGrid;
  swift_beginAccess();
  sub_100037990(v1 + v10, v5);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    return sub_10000C8CC(v5, &unk_100926C40);
  }

  (*(v7 + 32))(v9, v5, v6);
  sub_10009D2C8(a1, v9);
  return (*(v7 + 8))(v9, v6);
}

void sub_1006EAD78(uint64_t a1)
{
  if (*(v1 + qword_10097ED58))
  {
    v3 = *(v1 + qword_10097ED58 + 8);
    ObjectType = swift_getObjectType();
    v5 = *(v3 + 128);
    swift_unknownObjectRetain();
    v5(a1, ObjectType, v3);
    swift_unknownObjectRelease();
  }

  v6 = *(v1 + qword_100946B88);
  sub_100743344();
  sub_1007433C4();
  sub_1006EB5AC(&qword_100925570, &type metadata accessor for ArtworkView);
  sub_100744274();
  v7 = OBJC_IVAR____TtC22SubscribePageExtension39CondensedAdLockupWithIconBackgroundView_lockupView;
  v8 = *(*(v6 + OBJC_IVAR____TtC22SubscribePageExtension39CondensedAdLockupWithIconBackgroundView_lockupView) + OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_artworkView);
  sub_100743344();

  v9 = *(*(v6 + v7) + OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_artworkView);
  sub_100744274();
}

void (*sub_1006EAF0C(uint64_t a1))()
{
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v3 = swift_allocObject();
  swift_weakInit();
  sub_10000C824(a1, v6);
  v4 = swift_allocObject();
  *(v4 + 16) = v2;
  *(v4 + 24) = v3;
  sub_100012160(v6, v4 + 32);
  return sub_1006EB5A0;
}

void sub_1006EAFD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_10000C518(&unk_100925380);
  __chkstk_darwin(v4 - 8);
  v6 = &v14[-v5 - 8];
  v7 = sub_100752914();
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
      sub_10000C824(a3, v14);
      sub_10000C518(&qword_1009242A0);
      sub_10074FBB4();
      if (swift_dynamicCast())
      {
        sub_10074FB64();

        sub_1007451E4();
        if ((*(v8 + 48))(v6, 1, v7) == 1)
        {

          sub_10000C8CC(v6, &unk_100925380);
        }

        else
        {
          (*(v8 + 32))(v10, v6, v7);
          [v12 bounds];
          sub_100749544();

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

Class sub_1006EB268(uint64_t a1)
{
  sub_10000C518(&unk_1009259C0);
  v2 = swift_allocObject();
  v3 = *(a1 + qword_100946B88);
  *(v2 + 16) = xmmword_1007A5A00;
  v4 = *(v3 + OBJC_IVAR____TtC22SubscribePageExtension39CondensedAdLockupWithIconBackgroundView_lockupView);
  *(v2 + 56) = type metadata accessor for TodayCardLockupView();
  *(v2 + 32) = v4;
  v5 = v4;
  v6.super.isa = sub_100753294().super.isa;

  return v6.super.isa;
}

void sub_1006EB31C(void *a1, uint64_t a2, Class isa)
{
  ObjectType = swift_getObjectType();
  if (isa)
  {
    sub_1007532A4();
    v6 = a1;
    isa = sub_100753294().super.isa;
  }

  else
  {
    v7 = a1;
  }

  v8.receiver = a1;
  v8.super_class = ObjectType;
  objc_msgSendSuper2(&v8, "setAccessibilityElements:", isa);
}

uint64_t type metadata accessor for CondensedAdLockupWithIconBackgroundViewTodayCardCollectionViewCell()
{
  result = qword_100946BB8;
  if (!qword_100946BB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1006EB4E8()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1006EB520()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1006EB558()
{

  sub_10000C620(v0 + 32);

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_1006EB5AC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1006EB5F8()
{
  v0 = sub_100752E24();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100752E44();
  sub_100039C50(v4, qword_100982F20);
  sub_10000D0FC(v4, qword_100982F20);
  if (qword_100921EC8 != -1)
  {
    swift_once();
  }

  v5 = sub_10000D0FC(v0, qword_1009832D0);
  (*(v1 + 16))(v3, v5, v0);
  return sub_100752E34();
}

uint64_t sub_1006EB754(void *a1, void *a2)
{
  v4 = sub_1007521E4();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_100752224();
  v8 = *(v18 - 8);
  __chkstk_darwin(v18);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100016C60(0, &qword_100926D00);
  v11 = sub_100753774();
  v12 = swift_allocObject();
  *(v12 + 16) = a2;
  *(v12 + 24) = a1;
  aBlock[4] = sub_1006EC87C;
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000CF7B0;
  aBlock[3] = &unk_100881CE8;
  v13 = _Block_copy(aBlock);
  v14 = a2;
  v15 = a1;

  sub_100752204();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10002DCDC();
  sub_10000C518(&unk_10092F750);
  sub_1000A8054();
  sub_1007543A4();
  sub_100753784();
  _Block_release(v13);

  (*(v5 + 8))(v7, v4);
  return (*(v8 + 8))(v10, v18);
}

uint64_t sub_1006EB9F0(uint64_t a1, void *a2, uint64_t a3)
{
  v24 = a2;
  v25 = a3;
  v4 = sub_1007521E4();
  v28 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100752224();
  v26 = *(v7 - 8);
  v27 = v7;
  __chkstk_darwin(v7);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100746514();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100016C60(0, &qword_100926D00);
  v23 = sub_100753774();
  (*(v11 + 16))(v13, a1, v10);
  v14 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v15 = (v12 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = swift_allocObject();
  (*(v11 + 32))(v16 + v14, v13, v10);
  v18 = v24;
  v17 = v25;
  *(v16 + v15) = v24;
  *(v16 + ((v15 + 15) & 0xFFFFFFFFFFFFFFF8)) = v17;
  aBlock[4] = sub_1006EC724;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000CF7B0;
  aBlock[3] = &unk_100881C98;
  v19 = _Block_copy(aBlock);
  v20 = v18;

  sub_100752204();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10002DCDC();
  sub_10000C518(&unk_10092F750);
  sub_1000A8054();
  sub_1007543A4();
  v21 = v23;
  sub_100753784();
  _Block_release(v19);

  (*(v28 + 8))(v6, v4);
  return (*(v26 + 8))(v9, v27);
}

uint64_t sub_1006EBD70(uint64_t a1, void *a2, uint64_t a3)
{
  v32 = a3;
  v33 = a1;
  v4 = sub_10000C518(&qword_100947008);
  v5 = v4 - 8;
  __chkstk_darwin(v4);
  v34 = &v32 - v6;
  v7 = sub_100743184();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v32 - v12;
  __chkstk_darwin(v14);
  v16 = &v32 - v15;
  sub_1007464F4();
  v17 = sub_100743154();
  v18 = objc_allocWithZone(IAMValueEvent);
  v19 = sub_100753064();
  v35 = v17 & 1;
  v20 = [v18 initWithName:v19 value:{sub_100754794(), v32, v33}];
  swift_unknownObjectRelease();

  [a2 receiveEvent:v20];
  LOBYTE(v19) = sub_100743174();
  v21 = objc_allocWithZone(IAMValueEvent);
  v22 = sub_100753064();
  v35 = v19 & 1;
  v23 = [v21 initWithName:v22 value:sub_100754794()];
  swift_unknownObjectRelease();

  v24 = v34;
  [a2 receiveEvent:v23];

  sub_100746504();
  sub_1007464F4();
  v25 = (v24 + *(v5 + 56));
  v26 = *(v8 + 32);
  v26(v24, v13, v7);
  v26(v25, v10, v7);
  v27 = *(v8 + 88);
  if (v27(v24, v7) == enum case for ArcadeState.purchasing(_:) && v27(v25, v7) == enum case for ArcadeState.subscribed(_:))
  {
    (*(v8 + 96))(v25, v7);

    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      sub_1000FCF94();
      v28 = *(v8 + 8);
      v28(v16, v7);
    }

    else
    {
      v28 = *(v8 + 8);
      v28(v16, v7);
    }

    v30 = *(sub_10000C518(&qword_10092E390) + 48);
    v31 = sub_10074AAE4();
    (*(*(v31 - 8) + 8))(v25 + v30, v31);
    return (v28)(v24, v7);
  }

  else
  {
    (*(v8 + 8))(v16, v7);
    return sub_1006EC7D4(v24);
  }
}

uint64_t sub_1006EC1D8()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1006EC254(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v7 = sub_1007527A4();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v4 + 16) = [objc_allocWithZone(IAMMessageCoordinator) init];
  v11 = type metadata accessor for InAppMessagesMetricsDelegate();
  v12 = objc_allocWithZone(v11);
  sub_100752764();

  sub_100752D34();
  (*(v8 + 32))(v12 + OBJC_IVAR____TtC22SubscribePageExtension28InAppMessagesMetricsDelegate_metricsPipeline, v10, v7);
  v34.receiver = v12;
  v34.super_class = v11;
  v13 = objc_msgSendSuper2(&v34, "init");

  *(v4 + 32) = v13;
  sub_10074B294();
  sub_100752D34();
  v14 = v33;
  *(v4 + 40) = v33;
  sub_100016C60(0, &qword_100939F50);
  v15 = v14;
  sub_100752D34();
  v16 = v33;
  v17 = type metadata accessor for InAppMessagesContextProvider();
  v18 = objc_allocWithZone(v17);
  v18[OBJC_IVAR____TtC22SubscribePageExtension28InAppMessagesContextProvider_isInFamily] = 2;
  v18[OBJC_IVAR____TtC22SubscribePageExtension28InAppMessagesContextProvider_isFamilyOrganizer] = 2;
  v18[OBJC_IVAR____TtC22SubscribePageExtension28InAppMessagesContextProvider_canCreateFamily] = 2;
  *&v18[OBJC_IVAR____TtC22SubscribePageExtension28InAppMessagesContextProvider_arcadeSubscriptionManager] = v15;
  *&v18[OBJC_IVAR____TtC22SubscribePageExtension28InAppMessagesContextProvider_accountStore] = v16;
  *&v18[OBJC_IVAR____TtC22SubscribePageExtension28InAppMessagesContextProvider_rootViewController] = a2;
  v32.receiver = v18;
  v32.super_class = v17;
  v19 = a2;
  *(v4 + 24) = objc_msgSendSuper2(&v32, "init");
  [*(v4 + 16) setMetricsDelegate:*(v4 + 32)];
  *(v4 + 48) = a3;
  v20 = *(v4 + 16);
  v21 = swift_allocObject();
  *(v21 + 16) = v20;
  v22 = *(a3 + 16);
  *(a3 + 16) = sub_1006EC5F0;
  *(a3 + 24) = v21;

  v23 = v20;
  sub_100046F70(v22);
  v24 = *(v4 + 40);
  v25 = swift_allocObject();
  swift_weakInit();
  v26 = *(v4 + 16);
  v27 = swift_allocObject();
  *(v27 + 16) = v26;
  *(v27 + 24) = v25;
  v28 = v26;
  v29 = v24;

  sub_10074B204();

  return v4;
}

uint64_t sub_1006EC5B8()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1006EC5F8()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1006EC630()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1006EC678()
{
  v1 = sub_100746514();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, ((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t sub_1006EC724()
{
  v1 = *(sub_100746514() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(v0 + v3);
  v5 = *(v0 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_1006EBD70(v0 + v2, v4, v5);
}

uint64_t sub_1006EC7BC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1006EC7D4(uint64_t a1)
{
  v2 = sub_10000C518(&qword_100947008);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1006EC83C()
{

  return _swift_deallocObject(v0, 32, 7);
}

NSString sub_1006EC894()
{
  result = sub_100753064();
  static UIActivityType.gift = result;
  return result;
}

uint64_t *UIActivityType.gift.unsafeMutableAddressor()
{
  if (qword_100921DA0 != -1)
  {
    swift_once();
  }

  return &static UIActivityType.gift;
}

id static UIActivityType.gift.getter()
{
  if (qword_100921DA0 != -1)
  {
    swift_once();
  }

  v1 = static UIActivityType.gift;

  return v1;
}

id sub_1006EC978(void *a1)
{
  [a1 frame];

  return [a1 setFrame:?];
}

uint64_t sub_1006EC9D0(void *a1, uint64_t a2, char a3)
{
  v4 = v3;
  *(&v30 + 1) = sub_100016C60(0, &qword_100922300);
  *&v31 = &protocol witness table for UIView;
  *&v29 = a1;
  v8 = (a3 & 1) == 0;
  if (a3)
  {
    v9 = 0;
  }

  else
  {
    v9 = &type metadata for CGFloat;
  }

  if (v8)
  {
    v10 = &protocol witness table for CGFloat;
  }

  else
  {
    v10 = 0;
  }

  if (!v8)
  {
    a2 = 0;
  }

  sub_100012160(&v29, v35);
  v36 = a2;
  v37 = 0;
  v38 = 0;
  v39 = v9;
  v40 = v10;
  v11 = OBJC_IVAR____TtC22SubscribePageExtension18OnboardingTrayView_itemViewLayoutItems;
  swift_beginAccess();
  v12 = *&v4[v11];
  v13 = a1;

  v14 = sub_1006ECDD4(v13, v12);

  if (v14)
  {
    v15 = swift_beginAccess();
    __chkstk_darwin(v15);
    result = sub_10065E898(&v4[v11], sub_1006ED334);
    v17 = *(*&v4[v11] + 16);
    if (v17 < result)
    {
      __break(1u);
      return result;
    }

    sub_10015D8D8(result, v17);
    swift_endAccess();
    v18 = &selRef_bringSubviewToFront_;
  }

  else
  {
    v18 = &selRef_addSubview_;
  }

  [v4 *v18];
  *&v29 = v13;
  sub_1003BC948(v35, &v29 + 8);
  swift_beginAccess();
  v19 = *&v4[v11];
  v20 = v13;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v4[v11] = v19;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v19 = sub_10025598C(0, v19[2] + 1, 1, v19);
    *&v4[v11] = v19;
  }

  v23 = v19[2];
  v22 = v19[3];
  if (v23 >= v22 >> 1)
  {
    v19 = sub_10025598C((v22 > 1), v23 + 1, 1, v19);
  }

  v19[2] = v23 + 1;
  v24 = &v19[11 * v23];
  v25 = v30;
  *(v24 + 2) = v29;
  *(v24 + 3) = v25;
  v26 = v31;
  v27 = v32;
  v28 = v33;
  v24[14] = v34;
  *(v24 + 5) = v27;
  *(v24 + 6) = v28;
  *(v24 + 4) = v26;
  *&v4[v11] = v19;
  swift_endAccess();
  [v4 setNeedsLayout];
  return sub_1003BC980(v35);
}

void *sub_1006ECCC4(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = _swiftEmptyArrayStorage;
  if (v1)
  {
    v15 = _swiftEmptyArrayStorage;
    sub_10001E7FC(0, v1, 0);
    v2 = _swiftEmptyArrayStorage;
    v4 = a1 + 32;
    do
    {
      sub_10065EA94(v4, &v12);
      sub_1003BC948(&v13, v14);
      sub_10065EB04(&v12);
      v15 = v2;
      v6 = v2[2];
      v5 = v2[3];
      if (v6 >= v5 >> 1)
      {
        sub_10001E7FC((v5 > 1), v6 + 1, 1);
        v2 = v15;
      }

      v2[2] = v6 + 1;
      v7 = &v2[10 * v6];
      v7[2] = v14[0];
      v8 = v14[1];
      v9 = v14[2];
      v10 = v14[4];
      v7[5] = v14[3];
      v7[6] = v10;
      v7[3] = v8;
      v7[4] = v9;
      v4 += 88;
      --v1;
    }

    while (v1);
  }

  return v2;
}

BOOL sub_1006ECDD4(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 32;
  v3 = *(a2 + 16) + 1;
  do
  {
    if (!--v3)
    {
      break;
    }

    v4 = v2 + 88;
    sub_100016C60(0, &qword_1009327F0);
    v5 = sub_100753FC4();
    v2 = v4;
  }

  while ((v5 & 1) == 0);
  return v3 != 0;
}

uint64_t sub_1006ECE64()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_100750354();
  v4 = *(v3 - 8);
  *&v5 = __chkstk_darwin(v3).n128_u64[0];
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  v18.receiver = v1;
  v18.super_class = ObjectType;
  objc_msgSendSuper2(&v18, "layoutSubviews", v5);
  sub_1000DDBB4(v1 + OBJC_IVAR____TtC22SubscribePageExtension18OnboardingTrayView_layoutMetrics, v16);
  swift_beginAccess();

  v9 = sub_1006ECCC4(v8);

  v17 = v9;
  sub_1007477B4();
  sub_1003BC46C(v1, v10, v11, v12, v13);
  (*(v4 + 8))(v7, v3);
  return sub_1006ED388(v16);
}

double sub_1006ED010(uint64_t a1, double a2)
{
  v5 = sub_1007488F4();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  sub_1000DDBB4(v2 + OBJC_IVAR____TtC22SubscribePageExtension18OnboardingTrayView_layoutMetrics, v15);
  swift_beginAccess();

  v10 = sub_1006ECCC4(v9);

  v16 = v10;
  if (v10[2])
  {
    sub_1003BBCD4(a1, v8);
    sub_100748834();
    v12 = v11;
    (*(v6 + 8))(v8, v5);
    if (v12 > a2)
    {
      a2 = v12;
    }
  }

  else
  {
    a2 = JUMeasurementsZero[0];
  }

  sub_1006ED388(v15);
  return a2;
}

uint64_t sub_1006ED3EC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v58 = a2;
  v50 = sub_10074F704();
  v48 = *(v50 - 8);
  __chkstk_darwin(v50);
  v47 = &v47 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_10000C518(&qword_100923580);
  __chkstk_darwin(v54);
  v57 = &v47 - v4;
  v5 = sub_10000C518(&unk_10093D6E0);
  __chkstk_darwin(v5 - 8);
  v7 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v47 - v9;
  __chkstk_darwin(v11);
  v13 = &v47 - v12;
  v14 = sub_10000C518(&unk_100933370);
  __chkstk_darwin(v14 - 8);
  v51 = &v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v52 = &v47 - v17;
  v18 = sub_10000C518(&unk_10092E450);
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v47 - v20;
  v56 = sub_10074E984();
  v53 = *(v56 - 8);
  __chkstk_darwin(v56);
  v23 = &v47 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100747C04();
  swift_getKeyPath();
  v55 = v23;
  sub_1007525B4();

  v24 = *(v19 + 8);
  v24(v21, v18);
  v49 = a1;
  sub_100747BB4();
  sub_10000C8CC(v7, &unk_10093D6E0);
  sub_100028CD0(v10, v13);
  if ((*(v19 + 48))(v13, 1, v18) == 1)
  {
    sub_10000C8CC(v13, &unk_10093D6E0);
    v25 = 1;
    v26 = v52;
  }

  else
  {
    swift_getKeyPath();
    v26 = v52;
    sub_1007525B4();

    v24(v13, v18);
    v25 = 0;
  }

  v27 = v53;
  v28 = v56;
  (*(v53 + 56))(v26, v25, 1, v56);
  v29 = v55;
  v30 = *(v54 + 48);
  v31 = v57;
  (*(v27 + 16))(v57, v55, v28);
  sub_100028D40(v26, v31 + v30);
  if ((*(v27 + 48))(v31 + v30, 1, v28) == 1)
  {
    v32 = v47;
    sub_100747B84();
    sub_10074F5B4();
    v34 = v33;
    (*(v48 + 8))(v32, v50);
    v35 = v58;
    v58[3] = &type metadata for CGFloat;
    v35[4] = &protocol witness table for CGFloat;
    *v35 = v34;
    sub_10000C8CC(v26, &unk_100933370);
    v36 = *(v27 + 8);
    v36(v29, v28);
    sub_10000C8CC(v31 + v30, &unk_100933370);
    return (v36)(v31, v28);
  }

  else
  {
    v38 = v51;
    sub_100028D40(v31 + v30, v51);
    v39 = (*(v27 + 88))(v38, v28);
    if (v39 == enum case for Shelf.ContentType.appShowcase(_:) || v39 == enum case for Shelf.ContentType.arcadeShowcase(_:))
    {
      sub_10000C8CC(v31 + v30, &unk_100933370);
      v42 = *(v27 + 8);
      v42(v31, v28);
      if (qword_100921718 != -1)
      {
        swift_once();
      }

      v43 = sub_100750B04();
      v44 = sub_10000D0FC(v43, qword_1009820C8);
      v45 = v58;
      v58[3] = v43;
      v45[4] = &protocol witness table for StaticDimension;
      v46 = sub_10000D134(v45);
      (*(*(v43 - 8) + 16))(v46, v44, v43);
      sub_10000C8CC(v26, &unk_100933370);
      return (v42)(v29, v28);
    }

    else
    {
      v40 = *(v27 + 8);
      v40(v51, v28);
      v41 = v58;
      v58[3] = &type metadata for Double;
      v41[4] = &protocol witness table for Double;
      *v41 = 0;
      sub_10000C8CC(v26, &unk_100933370);
      v40(v29, v28);
      return sub_10000C8CC(v31, &qword_100923580);
    }
  }
}

uint64_t sub_1006EDB14@<X0>(void *a1@<X8>)
{
  v47 = a1;
  v43 = sub_10000C518(&qword_100923580);
  __chkstk_darwin(v43);
  v46 = &v40 - v1;
  v2 = sub_10000C518(&unk_10093D6E0);
  __chkstk_darwin(v2 - 8);
  v4 = &v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v40 - v6;
  __chkstk_darwin(v8);
  v10 = &v40 - v9;
  v11 = sub_10000C518(&unk_100933370);
  __chkstk_darwin(v11 - 8);
  v42 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v40 = &v40 - v14;
  v15 = sub_10000C518(&unk_10092E450);
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v40 - v17;
  v45 = sub_10074E984();
  v41 = *(v45 - 8);
  __chkstk_darwin(v45);
  v20 = &v40 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100747C04();
  swift_getKeyPath();
  v44 = v20;
  sub_1007525B4();

  v21 = *(v16 + 8);
  v21(v18, v15);
  sub_100747BB4();
  sub_10000C8CC(v7, &unk_10093D6E0);
  sub_100028CD0(v4, v10);
  if ((*(v16 + 48))(v10, 1, v15) == 1)
  {
    sub_10000C8CC(v10, &unk_10093D6E0);
    v22 = 1;
    v23 = v40;
  }

  else
  {
    swift_getKeyPath();
    v24 = v40;
    sub_1007525B4();

    v21(v10, v15);
    v22 = 0;
    v23 = v24;
  }

  v25 = v41;
  v26 = v45;
  (*(v41 + 56))(v23, v22, 1, v45);
  v27 = v44;
  v28 = *(v43 + 48);
  v29 = v46;
  (*(v25 + 16))(v46, v44, v26);
  sub_100028D40(v23, v29 + v28);
  v30 = *(v25 + 88);
  v31 = v30(v29, v26);
  v32 = enum case for Shelf.ContentType.horizontalRule(_:);
  v33 = v42;
  if (v31 == enum case for Shelf.ContentType.horizontalRule(_:))
  {
    goto LABEL_10;
  }

  if ((*(v25 + 48))(v29 + v28, 1, v26) != 1)
  {
    sub_100028D40(v29 + v28, v33);
    if (v30(v33, v26) == v32)
    {
      sub_10000C8CC(v29 + v28, &unk_100933370);
      (*(v25 + 8))(v29, v26);
LABEL_11:
      v34 = v47;
      v47[3] = &type metadata for Double;
      v34[4] = &protocol witness table for Double;
      *v34 = 0;
      sub_10000C8CC(v23, &unk_100933370);
      return (*(v25 + 8))(v27, v26);
    }

    (*(v25 + 8))(v33, v26);
  }

  if (v30(v29, v26) == enum case for Shelf.ContentType.appShowcase(_:))
  {
LABEL_10:
    sub_10000C8CC(v29 + v28, &unk_100933370);
    goto LABEL_11;
  }

  if (qword_100921718 != -1)
  {
    swift_once();
  }

  v36 = sub_100750B04();
  v37 = sub_10000D0FC(v36, qword_1009820C8);
  v38 = v47;
  v47[3] = v36;
  v38[4] = &protocol witness table for StaticDimension;
  v39 = sub_10000D134(v38);
  (*(*(v36 - 8) + 16))(v39, v37, v36);
  sub_10000C8CC(v23, &unk_100933370);
  (*(v25 + 8))(v27, v26);
  return sub_10000C8CC(v29, &qword_100923580);
}

uint64_t sub_1006EE17C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100752354();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100752344();
  v10 = v9;
  (*(v5 + 16))(v7, a1, v4);
  v11 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v12 = swift_allocObject();
  (*(v5 + 32))(v12 + v11, v7, v4);
  v13 = [objc_opt_self() standardUserDefaults];
  LOBYTE(v4) = sub_1006FEC68();

  if (v4)
  {
    sub_1006F06E4();
    v14 = *(v2 + 24);
    if (v14)
    {
      sub_100016C60(0, &qword_100923500);
      v15 = v14;
      isa = sub_100753F24(1.0, 0.58431, 0.0, 0.5).super.isa;
      sub_1006F0190(v8, v10, isa, sub_1006F0E4C, v12, 3.0);
    }
  }
}

void sub_1006EE6D0()
{
  v1 = *&v0[OBJC_IVAR____TtC22SubscribePageExtensionP33_E5954FF992A6C09524C80223408D11068CardView_tintView];
  [v1 _setCornerRadius:20.0];
  [v1 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v0 addSubview:v1];
  v2 = objc_opt_self();
  sub_10000C518(&unk_1009231A0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1007A57A0;
  v4 = [v1 topAnchor];
  v5 = [v0 topAnchor];
  v6 = [v4 constraintEqualToAnchor:v5];

  *(v3 + 32) = v6;
  v7 = [v1 leftAnchor];
  v8 = [v0 leftAnchor];
  v9 = [v7 constraintEqualToAnchor:v8];

  *(v3 + 40) = v9;
  v10 = [v1 bottomAnchor];
  v11 = [v0 bottomAnchor];
  v12 = [v10 constraintEqualToAnchor:v11];

  *(v3 + 48) = v12;
  v13 = [v1 rightAnchor];
  v14 = [v0 rightAnchor];
  v15 = [v13 constraintEqualToAnchor:v14];

  *(v3 + 56) = v15;
  sub_100016C60(0, &qword_100922E80);
  isa = sub_100753294().super.isa;

  [v2 activateConstraints:isa];

  [v0 _setCornerRadius:20.0];
  [v0 setLayoutMargins:{8.0, 16.0, 8.0, 16.0}];
  [v0 setClipsToBounds:1];
  v17 = [objc_opt_self() whiteColor];
  [v0 setBackgroundColor:v17];

  v18 = [objc_allocWithZone(UITapGestureRecognizer) initWithTarget:v0 action:"didTapFrom:"];
  [v0 addGestureRecognizer:v18];
}

id sub_1006EEB20(void *a1)
{
  ObjectType = swift_getObjectType();
  v4 = OBJC_IVAR____TtC22SubscribePageExtensionP33_E5954FF992A6C09524C80223408D11068CardView_tintView;
  *&v1[v4] = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v1[OBJC_IVAR____TtC22SubscribePageExtensionP33_E5954FF992A6C09524C80223408D11068CardView_viewConstraints] = _swiftEmptyArrayStorage;
  *&v1[OBJC_IVAR____TtC22SubscribePageExtensionP33_E5954FF992A6C09524C80223408D11068CardView_view] = 0;
  v5 = &v1[OBJC_IVAR____TtC22SubscribePageExtensionP33_E5954FF992A6C09524C80223408D11068CardView_tapAction];
  *v5 = 0;
  *(v5 + 1) = 0;
  v10.receiver = v1;
  v10.super_class = ObjectType;
  v6 = objc_msgSendSuper2(&v10, "initWithCoder:", a1);
  v7 = v6;
  if (v6)
  {
    v8 = v6;
    sub_1006EE6D0();
  }

  return v7;
}

void sub_1006EEC20(uint64_t a1)
{
  v3 = objc_opt_self();
  v4 = OBJC_IVAR____TtC22SubscribePageExtensionP33_E5954FF992A6C09524C80223408D11068CardView_viewConstraints;
  sub_100016C60(0, &qword_100922E80);

  isa = sub_100753294().super.isa;

  [v3 deactivateConstraints:isa];

  *(v1 + v4) = a1;

  v6 = sub_100753294().super.isa;

  [v3 activateConstraints:v6];
}

id sub_1006EED20()
{
  v1 = *&v0[OBJC_IVAR____TtC22SubscribePageExtensionP33_E5954FF992A6C09524C80223408D11068CardView_view];
  if (v1)
  {
    v2 = v1;
    [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v0 addSubview:v2];
    v3 = [v2 bottomAnchor];
    v4 = [v0 layoutMarginsGuide];
    v5 = [v4 bottomAnchor];

    v6 = [v3 constraintEqualToAnchor:v5];
    LODWORD(v7) = 1140457472;
    [v6 setPriority:v7];
    sub_10000C518(&unk_1009231A0);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_1007A57A0;
    v9 = [v2 topAnchor];
    v10 = [v0 layoutMarginsGuide];
    v11 = [v10 topAnchor];

    v12 = [v9 constraintEqualToAnchor:v11];
    *(v8 + 32) = v12;
    v13 = [v2 leftAnchor];
    v14 = [v0 layoutMarginsGuide];
    v15 = [v14 leftAnchor];

    v16 = [v13 constraintEqualToAnchor:v15];
    *(v8 + 40) = v16;
    *(v8 + 48) = v6;
    v17 = v6;
    v18 = [v2 rightAnchor];
    v19 = [v0 layoutMarginsGuide];
    v20 = [v19 rightAnchor];

    v21 = [v18 constraintEqualToAnchor:v20];
    *(v8 + 56) = v21;
    sub_1006EEC20(v8);
  }

  else
  {
    sub_1006EEC20(_swiftEmptyArrayStorage);
  }

  return [v0 invalidateIntrinsicContentSize];
}

void sub_1006EF160()
{
  v39.receiver = v0;
  v39.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v39, "viewDidLoad");
  v1 = [objc_allocWithZone(UIStackView) init];
  v2 = OBJC_IVAR____TtC22SubscribePageExtensionP33_E5954FF992A6C09524C80223408D110623CardStackViewController_cardStackView;
  v3 = *&v0[OBJC_IVAR____TtC22SubscribePageExtensionP33_E5954FF992A6C09524C80223408D110623CardStackViewController_cardStackView];
  *&v0[OBJC_IVAR____TtC22SubscribePageExtensionP33_E5954FF992A6C09524C80223408D110623CardStackViewController_cardStackView] = v1;
  v4 = v1;

  if (!v4)
  {
    __break(1u);
    goto LABEL_18;
  }

  [v4 setAxis:1];

  v5 = *&v0[v2];
  if (!v5)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  [v5 setAlignment:0];
  v6 = *&v0[v2];
  if (!v6)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  [v6 setDistribution:3];
  v7 = *&v0[v2];
  if (!v7)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  [v7 setSpacing:16.0];
  v8 = *&v0[v2];
  if (!v8)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  [v8 setTranslatesAutoresizingMaskIntoConstraints:0];
  v9 = [v0 view];
  if (!v9)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (!*&v0[v2])
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v10 = v9;
  [v9 addSubview:?];

  v11 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v12 = *&v0[v2];
  if (!v12)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  [v12 addArrangedSubview:v11];
  sub_10000C518(&unk_1009231A0);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1007AC000;
  v14 = *&v0[v2];
  if (!v14)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v15 = [v14 topAnchor];
  v16 = [v0 view];
  if (!v16)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v17 = v16;
  v18 = [v16 layoutMarginsGuide];

  v19 = [v18 topAnchor];
  v20 = [v15 constraintEqualToAnchor:v19];

  *(v13 + 32) = v20;
  v21 = *&v0[v2];
  if (!v21)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v22 = [v21 leftAnchor];
  v23 = [v0 view];
  if (!v23)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v24 = v23;
  v25 = [v23 layoutMarginsGuide];

  v26 = [v25 leftAnchor];
  v27 = [v22 constraintEqualToAnchor:v26];

  *(v13 + 40) = v27;
  v28 = *&v0[v2];
  if (!v28)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v29 = [v28 rightAnchor];
  v30 = [v0 view];
  if (!v30)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v31 = v30;
  v32 = objc_opt_self();
  v33 = [v31 layoutMarginsGuide];

  v34 = [v33 rightAnchor];
  v35 = [v29 constraintEqualToAnchor:v34];

  *(v13 + 48) = v35;
  sub_100016C60(0, &qword_100922E80);
  isa = sub_100753294().super.isa;

  [v32 activateConstraints:isa];

  v37 = [v0 view];
  if (v37)
  {
    v38 = v37;
    [v37 layoutIfNeeded];

    return;
  }

LABEL_31:
  __break(1u);
}

uint64_t sub_1006EF640()
{
  if (qword_100920BC8 != -1)
  {
    swift_once();
  }

  if (swift_unknownObjectWeakLoadStrong() && (v1 = off_100936E78, ObjectType = swift_getObjectType(), v3 = v1[1](ObjectType, v1), swift_unknownObjectRelease(), v3))
  {
    v4 = [v3 supportedInterfaceOrientations];

    return v4;
  }

  else
  {
    v6 = [v0 traitCollection];
    v7 = [v6 userInterfaceIdiom];

    if (v7 == 1)
    {
      return 30;
    }

    else
    {
      return 2;
    }
  }
}

void sub_1006EF740(void *a1)
{
  [objc_opt_self() cancelPreviousPerformRequestsWithTarget:v1 selector:"popWithCard:" object:a1];
  v3 = objc_opt_self();
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  v15 = sub_10026F6D0;
  v16 = v4;
  v11 = _NSConcreteStackBlock;
  v12 = 1107296256;
  v13 = sub_1000CF7B0;
  v14 = &unk_100881D70;
  v5 = _Block_copy(&v11);
  v6 = a1;

  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  *(v7 + 24) = v1;
  v15 = sub_1006F090C;
  v16 = v7;
  v11 = _NSConcreteStackBlock;
  v12 = 1107296256;
  v13 = sub_100144DD8;
  v14 = &unk_100881DC0;
  v8 = _Block_copy(&v11);
  v9 = v6;
  v10 = v1;

  [v3 animateWithDuration:v5 animations:v8 completion:0.3];
  _Block_release(v8);
  _Block_release(v5);
}

void *sub_1006EF904(int a1, id a2, uint64_t a3)
{
  [a2 removeFromSuperview];
  result = *(a3 + OBJC_IVAR____TtC22SubscribePageExtensionP33_E5954FF992A6C09524C80223408D110623CardStackViewController_cardStackView);
  if (!result)
  {
    goto LABEL_15;
  }

  v5 = [result arrangedSubviews];
  sub_100016C60(0, &qword_100922300);
  v6 = sub_1007532A4();

  if (v6 >> 62)
  {
    v7 = sub_100754664();
  }

  else
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (__OFSUB__(v7, 1))
  {
    __break(1u);
LABEL_15:
    __break(1u);
    return result;
  }

  if (v7 == 1)
  {
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v8 = result[2];
      if (v8)
      {
        v9 = v8;
        [v9 setHidden:1];
      }

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

void sub_1006EFA9C()
{
  v30 = OBJC_IVAR____TtC22SubscribePageExtensionP33_E5954FF992A6C09524C80223408D110623CardStackViewController_cardStackView;
  v2 = *&v1[OBJC_IVAR____TtC22SubscribePageExtensionP33_E5954FF992A6C09524C80223408D110623CardStackViewController_cardStackView];
  if (!v2)
  {
    goto LABEL_32;
  }

  v3 = [v2 arrangedSubviews];
  sub_100016C60(0, &qword_100922300);
  v4 = sub_1007532A4();

  if (v4 >> 62)
  {
LABEL_25:
    v5 = sub_100754664();
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (__OFSUB__(v5, 1))
  {
    __break(1u);
    goto LABEL_27;
  }

  v0 = OBJC_IVAR____TtC22SubscribePageExtensionP33_E5954FF992A6C09524C80223408D110623CardStackViewController_maximumNumberOfCards;
  if (*&v1[OBJC_IVAR____TtC22SubscribePageExtensionP33_E5954FF992A6C09524C80223408D110623CardStackViewController_maximumNumberOfCards] < v5 - 1)
  {
    v6 = *&v1[v30];
    if (!v6)
    {
LABEL_33:
      __break(1u);
      return;
    }

    v7 = [v6 arrangedSubviews];
    v8 = sub_1007532A4();

    if (!(v8 >> 62))
    {
      v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_9;
    }

LABEL_27:
    v9 = sub_100754664();
LABEL_9:

    v10 = v9 - 1;
    if (__OFSUB__(v9, 1))
    {
      __break(1u);
    }

    else
    {
      v11 = *&v1[v0];
      v12 = __OFSUB__(v10, v11);
      v13 = v10 - v11;
      if (!v12)
      {
        if (v13 >= 1)
        {
          v29 = v11 - v9 + 2;
          v14 = 5;
          while (1)
          {
            v15 = *&v1[v30];
            if (!v15)
            {
              goto LABEL_31;
            }

            v16 = v14 - 4;
            v17 = [v15 arrangedSubviews];
            v18 = sub_1007532A4();

            if ((v18 & 0xC000000000000001) != 0)
            {
              v19 = sub_100754574();
            }

            else
            {
              if (v16 >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                __break(1u);
LABEL_24:
                __break(1u);
                goto LABEL_25;
              }

              v19 = *(v18 + 8 * v14);
            }

            v20 = v19;
            v0 = v29 + v14;

            [objc_opt_self() cancelPreviousPerformRequestsWithTarget:v1 selector:"popWithCard:" object:v20];
            v21 = objc_opt_self();
            v22 = swift_allocObject();
            *(v22 + 16) = v20;
            v35 = sub_1006F111C;
            v36 = v22;
            aBlock = _NSConcreteStackBlock;
            v32 = 1107296256;
            v33 = sub_1000CF7B0;
            v34 = &unk_100881ED8;
            v23 = _Block_copy(&aBlock);
            v24 = v20;

            v25 = swift_allocObject();
            *(v25 + 16) = v24;
            *(v25 + 24) = v1;
            v35 = sub_1006F113C;
            v36 = v25;
            aBlock = _NSConcreteStackBlock;
            v32 = 1107296256;
            v33 = sub_100144DD8;
            v34 = &unk_100881F28;
            v26 = _Block_copy(&aBlock);
            v27 = v24;
            v28 = v1;

            [v21 animateWithDuration:v23 animations:v26 completion:0.3];
            _Block_release(v26);
            _Block_release(v23);

            if (v29 + v14 == 5)
            {
              return;
            }

            ++v14;
            if (__OFADD__(v16, 1))
            {
              goto LABEL_24;
            }
          }
        }

LABEL_30:
        __break(1u);
LABEL_31:
        __break(1u);
LABEL_32:
        __break(1u);
        goto LABEL_33;
      }
    }

    __break(1u);
    goto LABEL_30;
  }
}

char *sub_1006EFE60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for CardView();
  v8 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  [*&v8[OBJC_IVAR____TtC22SubscribePageExtensionP33_E5954FF992A6C09524C80223408D11068CardView_tintView] setBackgroundColor:a3];
  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v11 = swift_allocObject();
  *(v11 + 2) = v10;
  *(v11 + 3) = v9;
  *(v11 + 4) = a4;
  *(v11 + 5) = a5;
  v12 = &v8[OBJC_IVAR____TtC22SubscribePageExtensionP33_E5954FF992A6C09524C80223408D11068CardView_tapAction];
  v13 = *&v8[OBJC_IVAR____TtC22SubscribePageExtensionP33_E5954FF992A6C09524C80223408D11068CardView_tapAction];
  *v12 = sub_1006F0FF0;
  v12[1] = v11;

  sub_10001B5AC(a4);
  sub_1000164A8(v13);

  v14 = [objc_allocWithZone(UILabel) init];
  v15 = objc_opt_self();
  sub_100016C60(0, &qword_1009239F8);
  v16 = sub_100753814();
  v17 = [v15 preferredFontForTextStyle:UIFontTextStyleBody compatibleWithTraitCollection:v16];

  [v14 setFont:v17];
  [v14 setNumberOfLines:5];
  [v14 setLineBreakMode:0];
  v18 = sub_100753064();
  [v14 setText:v18];

  v19 = OBJC_IVAR____TtC22SubscribePageExtensionP33_E5954FF992A6C09524C80223408D11068CardView_view;
  v20 = *&v8[OBJC_IVAR____TtC22SubscribePageExtensionP33_E5954FF992A6C09524C80223408D11068CardView_view];
  v21 = v14;
  if (v20)
  {
    [v20 removeFromSuperview];
    v20 = *&v8[v19];
  }

  *&v8[v19] = v14;
  v22 = v14;

  sub_1006EED20();
  return v8;
}

void sub_1006F00EC(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    swift_beginAccess();
    v6 = swift_unknownObjectWeakLoadStrong();
    if (v6)
    {
      v7 = v6;
      sub_1006EF740(v5);
    }

    if (a3)
    {
      a3();
    }
  }
}

void sub_1006F0190(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6)
{
  v8 = OBJC_IVAR____TtC22SubscribePageExtensionP33_E5954FF992A6C09524C80223408D110623CardStackViewController_cardStackView;
  v9 = *&v6[OBJC_IVAR____TtC22SubscribePageExtensionP33_E5954FF992A6C09524C80223408D110623CardStackViewController_cardStackView];
  if (!v9)
  {
    goto LABEL_14;
  }

  v15 = [v9 arrangedSubviews];
  sub_100016C60(0, &qword_100922300);
  v16 = sub_1007532A4();

  if (v16 >> 62)
  {
    v17 = sub_100754664();
  }

  else
  {
    v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (__OFSUB__(v17, 1))
  {
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v17 == 1)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v19 = *(Strong + 16);
      if (v19)
      {
        v20 = v19;
        [v20 setHidden:0];
      }

      swift_unknownObjectRelease();
    }
  }

  v21 = sub_1006EFE60(a1, a2, a3, a4, a5);
  [v21 setHidden:1];
  v22 = *&v6[v8];
  if (v22)
  {
    [v22 addArrangedSubview:v21];
    sub_1006EFA9C();
    v23 = objc_opt_self();
    v24 = swift_allocObject();
    *(v24 + 16) = v21;
    v35 = sub_1006F0EAC;
    v36 = v24;
    v31 = _NSConcreteStackBlock;
    v32 = 1107296256;
    v33 = sub_1000CF7B0;
    v34 = &unk_100881E38;
    v25 = _Block_copy(&v31);
    v26 = v21;

    v27 = swift_allocObject();
    *(v27 + 16) = a6;
    *(v27 + 24) = v6;
    *(v27 + 32) = v26;
    v35 = sub_1006F0F00;
    v36 = v27;
    v31 = _NSConcreteStackBlock;
    v32 = 1107296256;
    v33 = sub_100144DD8;
    v34 = &unk_100881E88;
    v28 = _Block_copy(&v31);
    v29 = v26;
    v30 = v6;

    [v23 animateWithDuration:v25 animations:v28 completion:0.3];
    _Block_release(v28);
    _Block_release(v25);

    return;
  }

LABEL_15:
  __break(1u);
}

id sub_1006F0478(uint64_t a1, uint64_t a2, void *a3)
{
  ObjectType = swift_getObjectType();
  *&v3[OBJC_IVAR____TtC22SubscribePageExtensionP33_E5954FF992A6C09524C80223408D110623CardStackViewController_cardStackView] = 0;
  *&v3[OBJC_IVAR____TtC22SubscribePageExtensionP33_E5954FF992A6C09524C80223408D110623CardStackViewController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v3[OBJC_IVAR____TtC22SubscribePageExtensionP33_E5954FF992A6C09524C80223408D110623CardStackViewController_maximumNumberOfCards] = 3;
  if (a2)
  {
    v7 = sub_100753064();
  }

  else
  {
    v7 = 0;
  }

  v10.receiver = v3;
  v10.super_class = ObjectType;
  v8 = objc_msgSendSuper2(&v10, "initWithNibName:bundle:", v7, a3);

  return v8;
}

id sub_1006F05A8(void *a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC22SubscribePageExtensionP33_E5954FF992A6C09524C80223408D110623CardStackViewController_cardStackView] = 0;
  *&v1[OBJC_IVAR____TtC22SubscribePageExtensionP33_E5954FF992A6C09524C80223408D110623CardStackViewController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR____TtC22SubscribePageExtensionP33_E5954FF992A6C09524C80223408D110623CardStackViewController_maximumNumberOfCards] = 3;
  v6.receiver = v1;
  v6.super_class = ObjectType;
  v4 = objc_msgSendSuper2(&v6, "initWithCoder:", a1);

  if (v4)
  {
  }

  return v4;
}

void sub_1006F06E4()
{
  if (!*(v0 + 16))
  {
    v1 = [objc_opt_self() mainScreen];
    [v1 bounds];
    v3 = v2;
    v5 = v4;
    v7 = v6;
    v9 = v8;

    v10 = [objc_allocWithZone(type metadata accessor for StatusBarOverlayWindow()) initWithFrame:{v3, v5, v7, v9}];
    v11 = *(v0 + 16);
    *(v0 + 16) = v10;

    type metadata accessor for CardStackViewController();
    v12 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    v13 = *(v0 + 24);
    *(v0 + 24) = v12;

    v14 = *(v0 + 16);
    if (v14)
    {
      [v14 setRootViewController:*(v0 + 24)];
      v15 = *(v0 + 16);
      if (v15)
      {
        v16 = *(v0 + 24);
        if (v16)
        {
          v17 = v15;
          v18 = v16;
          [v18 loadViewIfNeeded];
          v19 = *&v18[OBJC_IVAR____TtC22SubscribePageExtensionP33_E5954FF992A6C09524C80223408D110623CardStackViewController_cardStackView];
          if (!v19)
          {
            __break(1u);
            return;
          }

          v20 = v19;
        }

        else
        {
          v17 = v15;
          v19 = 0;
        }

        v21 = *&v17[OBJC_IVAR____TtC22SubscribePageExtensionP33_E5954FF992A6C09524C80223408D110622StatusBarOverlayWindow_interactionView];
        *&v17[OBJC_IVAR____TtC22SubscribePageExtensionP33_E5954FF992A6C09524C80223408D110622StatusBarOverlayWindow_interactionView] = v19;
      }
    }

    v22 = *(v0 + 24);
    if (v22)
    {
      *(v22 + OBJC_IVAR____TtC22SubscribePageExtensionP33_E5954FF992A6C09524C80223408D110623CardStackViewController_delegate + 8) = &off_100881D30;

      swift_unknownObjectWeakAssign();
    }
  }
}

uint64_t sub_1006F08BC()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1006F08F4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_1006F0914(uint64_t a1)
{
  v2 = sub_100752354();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  if (qword_100920BC8 != -1)
  {
    swift_once();
  }

  if (swift_unknownObjectWeakLoadStrong() && (v5 = off_100936E78, ObjectType = swift_getObjectType(), v7 = v5[1](ObjectType, v5), swift_unknownObjectRelease(), v7))
  {
    sub_100752334();
    sub_100752344();
    v8 = sub_100753064();

    v9 = sub_100753064();

    v10 = [objc_opt_self() alertControllerWithTitle:v8 message:v9 preferredStyle:1];

    (*(v3 + 16))(aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v2);
    v11 = (*(v3 + 80) + 16) & ~*(v3 + 80);
    v12 = swift_allocObject();
    (*(v3 + 32))(v12 + v11, aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v2);
    v13 = sub_100753064();
    aBlock[4] = sub_1006F1084;
    aBlock[5] = v12;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10073EFC4;
    aBlock[3] = &unk_100881FF0;
    v14 = _Block_copy(aBlock);

    v15 = objc_opt_self();
    v16 = [v15 actionWithTitle:v13 style:0 handler:v14];
    _Block_release(v14);

    [v10 addAction:v16];
    v17 = sub_100753064();
    v18 = [v15 actionWithTitle:v17 style:0 handler:0];

    [v10 addAction:v18];
    [v7 presentViewController:v10 animated:1 completion:0];
  }

  else
  {
    if (qword_100921ED0 != -1)
    {
      swift_once();
    }

    v19 = sub_100752E44();
    sub_10000D0FC(v19, qword_1009832E8);
    sub_10000C518(&qword_100923930);
    sub_100752454();
    *(swift_allocObject() + 16) = xmmword_1007A5A00;
    sub_1007523A4();
    sub_100752CF4();
  }
}

void sub_1006F0DB8()
{
  v0 = [objc_opt_self() generalPasteboard];
  sub_100752324();
  v1 = sub_100753064();

  [v0 setString:v1];
}

void sub_1006F0E4C()
{
  v1 = *(sub_100752354() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  sub_1006F0914(v2);
}

uint64_t sub_1006F0EC0()
{

  return _swift_deallocObject(v0, 40, 7);
}

id sub_1006F0F00()
{
  if (*(v0 + 16) >= 0.0)
  {
    return [*(v0 + 24) performSelector:"popWithCard:" withObject:*(v0 + 32) afterDelay:?];
  }

  return result;
}

uint64_t sub_1006F0F28()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1006F0F68()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1006F0FA0()
{

  if (*(v0 + 32))
  {
  }

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1006F0FFC()
{
  v1 = sub_100752354();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

void sub_1006F1084()
{
  sub_100752354();

  sub_1006F0DB8();
}

uint64_t sub_1006F1140()
{
  v1 = sub_10000C518(&unk_100925370);
  __chkstk_darwin(v1 - 8);
  v2 = sub_10000C518(&qword_1009471C0);
  v3 = *(v2 - 8);
  *&v4 = __chkstk_darwin(v2).n128_u64[0];
  v6 = &v10 - v5;
  if ([*(*(v0 + OBJC_IVAR____TtC22SubscribePageExtension38ProductEditorsChoiceCollectionViewCell_editorsChoiceView) + qword_100924680) isHidden])
  {
    sub_10000C518(&qword_10092A068);
    sub_10074DCB4();
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_1007A6580;
    sub_10074DCA4();
    sub_10074DC94();
    v10 = v7;
    sub_1006F22A4(&qword_10092A070, &type metadata accessor for SelectableShelfComponentViewReaction);
    sub_10000C518(&qword_10092A078);
    sub_100169778();
    return sub_1007543A4();
  }

  else
  {
    sub_1007468F4();
    sub_100752994();
    sub_1006F2240();
    sub_100752954();
    sub_10000C518(&qword_10092A068);
    sub_10074DCB4();
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_1007A5620;
    sub_10074DCA4();
    sub_10074DC94();
    sub_10074DC84();
    v10 = v9;
    sub_1006F22A4(&qword_10092A070, &type metadata accessor for SelectableShelfComponentViewReaction);
    sub_10000C518(&qword_10092A078);
    sub_100169778();
    sub_1007543A4();
    return (*(v3 + 8))(v6, v2);
  }
}

void sub_1006F1538(void *a1)
{
  v2 = type metadata accessor for EditorsChoiceView();
  swift_getObjectType();
  sub_1006BE5B8(3, 0, 0, a1, 0, 1, v2);
}

uint64_t sub_1006F15A8@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC22SubscribePageExtension38ProductEditorsChoiceCollectionViewCell_itemLayoutContext;
  swift_beginAccess();
  return sub_100020514(v1 + v3, a1);
}

uint64_t sub_1006F1604(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC22SubscribePageExtension38ProductEditorsChoiceCollectionViewCell_itemLayoutContext;
  swift_beginAccess();
  sub_1000204A4(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_1006F16F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_1006F22A4(&qword_1009412F0, type metadata accessor for ProductEditorsChoiceCollectionViewCell);

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, v5, a5, v10);
}

uint64_t sub_1006F1790(uint64_t a1)
{
  result = sub_1006F22A4(&qword_1009471A8, type metadata accessor for ProductEditorsChoiceCollectionViewCell);
  *(a1 + 8) = result;
  return result;
}

double sub_1006F1830(uint64_t a1)
{
  v38 = sub_10074F704();
  v37 = *(v38 - 8);
  __chkstk_darwin(v38);
  v35 = v32 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_100750E94();
  v3 = *(v33 - 8);
  __chkstk_darwin(v33);
  v5 = v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = v32 - v7;
  __chkstk_darwin(v9);
  v36 = sub_100750BD4();
  v34 = *(v36 - 8);
  __chkstk_darwin(v36);
  v40 = v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10000C518(&qword_1009471B0);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v32 - v13;
  sub_100744464();
  sub_1006F22A4(&qword_100939068, &type metadata accessor for EditorsChoice);
  sub_1007468B4();
  if (!v43[0])
  {
    return 0.0;
  }

  v15 = v43[0];
  sub_1006F2240();
  v32[2] = a1;
  sub_1007468E4();
  sub_100752E84();
  if (v43[0])
  {
    v32[0] = 0;
  }

  else
  {
    v17 = sub_100744444();
    v18 = 6;
    if ((v17 & 1) == 0)
    {
      v18 = 0;
    }

    v32[0] = v18;
  }

  v32[1] = v15;
  (*(v12 + 8))(v14, v11);
  sub_100750F34();
  swift_allocObject();
  v39 = sub_100750EF4();
  sub_100744454();
  sub_100750E84();
  if (qword_1009210D0 != -1)
  {
    swift_once();
  }

  v19 = sub_100750534();
  sub_10000D0FC(v19, qword_100980FA8);
  sub_100750E54();
  v20 = *(v3 + 8);
  v21 = v5;
  v22 = v33;
  v20(v21, v33);
  sub_100750E74();
  v20(v8, v22);
  sub_100750BB4();
  v23 = v40;
  sub_100750BF4();
  type metadata accessor for ProductEditorsChoiceView();
  v42[5] = v39;
  sub_100750434();
  v24 = v36;
  v41[3] = v36;
  v41[4] = &protocol witness table for LabelPlaceholder;
  v25 = sub_10000D134(v41);
  v26 = v34;
  (*(v34 + 16))(v25, v23, v24);
  v27 = sub_100744434();
  sub_1000695CC((v27 & 1) == 0, v43);
  sub_10000C620(v42);
  sub_10000C620(v41);
  sub_10000C888(v43, v43[3]);
  swift_getKeyPath();
  v28 = v35;
  sub_100746914();

  sub_10074F674();
  (*(v37 + 8))(v28, v38);
  swift_getKeyPath();
  sub_100746914();

  v29 = v42[0];
  sub_100751254();
  v16 = v30;

  (*(v26 + 8))(v40, v24);
  sub_10000C620(v43);
  return v16;
}

uint64_t sub_1006F1E78()
{
  v0 = sub_1007457B4();
  v29 = *(v0 - 8);
  __chkstk_darwin(v0);
  v2 = &v22[-((v1 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v3);
  v5 = &v22[-v4];
  v6 = sub_10000C518(&unk_10092E450);
  v27 = *(v6 - 8);
  v28 = v6;
  __chkstk_darwin(v6);
  v8 = &v22[-v7];
  v9 = sub_10000C518(&qword_1009471B0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v22[-v11];
  sub_100744464();
  sub_1006F22A4(&qword_100939068, &type metadata accessor for EditorsChoice);
  result = sub_1007468B4();
  v14 = v31;
  if (v31)
  {
    v24 = v2;
    v25 = v0;
    v26 = *(v26 + OBJC_IVAR____TtC22SubscribePageExtension38ProductEditorsChoiceCollectionViewCell_editorsChoiceView);
    sub_1006F2240();
    sub_1007468E4();
    sub_100752E84();
    if (v30)
    {
      v15 = 1;
    }

    else
    {
      v15 = sub_100744444() ^ 1;
    }

    v23 = v15;
    (*(v10 + 8))(v12, v9);
    swift_getKeyPath();
    sub_100746914();

    swift_getKeyPath();
    v16 = v28;
    sub_1007525B4();

    (*(v27 + 8))(v8, v16);
    v17 = v29;
    v18 = v24;
    v19 = v25;
    (*(v29 + 104))(v24, enum case for ShelfBackground.editorsChoice(_:), v25);
    v20 = sub_1007457A4();
    v21 = *(v17 + 8);
    v21(v18, v19);
    v21(v5, v19);
    sub_1000CD7E8(v14, v23 & 1, v20 & 1);
  }

  return result;
}

unint64_t sub_1006F2240()
{
  result = qword_1009471B8;
  if (!qword_1009471B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009471B8);
  }

  return result;
}

uint64_t sub_1006F22A4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1006F2300()
{
  result = qword_1009471C8;
  if (!qword_1009471C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009471C8);
  }

  return result;
}

unint64_t sub_1006F2358()
{
  result = qword_1009471D0;
  if (!qword_1009471D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009471D0);
  }

  return result;
}

double sub_1006F23AC(double a1, double a2)
{
  v5 = sub_100751104();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v12[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_1001CDEE8(v14);
  sub_10000C824(v14, v12);
  v13[3] = sub_1007511A4();
  v13[4] = &protocol witness table for Margins;
  sub_10000D134(v13);
  sub_100751194();
  sub_1007510E4();
  sub_100751114();
  sub_10000C620(v14);
  v9 = sub_1006F37D8(v8, v2, a1, a2);
  (*(v6 + 8))(v8, v5);
  return v9;
}

id sub_1006F2524(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = sub_10000C518(&unk_100925520);
  __chkstk_darwin(v5 - 8);
  v7 = &v35 - v6;
  v8 = sub_10000C518(&unk_100925990);
  __chkstk_darwin(v8 - 8);
  v10 = &v35 - v9;
  v11 = sub_10000C518(&unk_1009259A0);
  __chkstk_darwin(v11 - 8);
  v13 = &v35 - v12;
  v14 = sub_10000C518(&unk_100925530);
  __chkstk_darwin(v14 - 8);
  v16 = &v35 - v15;
  v17 = sub_10000C518(&unk_100925540);
  __chkstk_darwin(v17 - 8);
  v19 = &v35 - v18;
  v20 = sub_10074A4C4();
  if (v20)
  {
    v21 = v20;
    v22 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension28CarouselItemModuleLockupView_smallLockupView];
    [v22 setHidden:0];
    v23 = sub_10000C518(&unk_10092EEA0);
    (*(*(v23 - 8) + 56))(v19, 1, 1, v23);
    v24 = sub_100742E24();
    (*(*(v24 - 8) + 56))(v16, 1, 1, v24);
    v25 = sub_100745E94();
    (*(*(v25 - 8) + 56))(v13, 1, 1, v25);
    v26 = sub_10000C518(&unk_100925560);
    (*(*(v26 - 8) + 56))(v10, 1, 1, v26);
    v27 = sub_10074F8B4();
    (*(*(v27 - 8) + 56))(v7, 1, 1, v27);
    sub_100656038(v21, v22, v19, a2, 0, 0, v16, v13, v7, v10);
    sub_10000C8CC(v7, &unk_100925520);
    v22[OBJC_IVAR____TtC22SubscribePageExtension15SmallLockupView_enforceMaximumOfTwoLinesOverall] = 0;
    sub_1001CE71C();
    [v22 setNeedsLayout];
    sub_10000C8CC(v10, &unk_100925990);
    sub_10000C8CC(v13, &unk_1009259A0);
    sub_10000C8CC(v16, &unk_100925530);
    sub_10000C8CC(v19, &unk_100925540);
    v28 = *&v22[OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_headingLabel];
    if (v28)
    {
      [v28 setHidden:1];
    }

    v29 = OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_offerLabel;
    v30 = *&v22[OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_offerLabel];
    sub_100016C60(0, &qword_100923500);
    v31 = v30;
    v32 = sub_100753DF4();
    [v31 setTextColor:v32];

    [*&v22[v29] _setTextColorFollowsTintColor:0];
    v33 = [*&v22[v29] layer];
    [v33 setCompositingFilter:kCAFilterPlusL];

    [v3 setNeedsLayout];
  }

  else
  {
    [*&v2[OBJC_IVAR____TtC22SubscribePageExtension28CarouselItemModuleLockupView_smallLockupView] setHidden:1];

    return [v2 setNeedsLayout];
  }
}

void sub_1006F2A70()
{
  v1 = sub_10074F314();
  __chkstk_darwin(v1 - 8);
  v2 = sub_10074F284();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_10074A4C4())
  {
    v6 = sub_10074EF64();

    if (v6)
    {
      sub_10074F294();
      sub_10074F254();
      (*(v3 + 8))(v5, v2);
      if (qword_100920548 != -1)
      {
        swift_once();
      }

      v7 = sub_100747064();
      sub_10000D0FC(v7, qword_10097E3A8);
      sub_100746F34();
      sub_10074F374();
      v8 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension28CarouselItemModuleLockupView_smallLockupView);
      v9 = OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_artworkView;
      v10 = *(v8 + OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_artworkView);
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

      v11 = *(v8 + v9);
      sub_1007433C4();
      sub_1003752E8(&qword_100925570, &type metadata accessor for ArtworkView);
      v12 = v11;
      sub_100744204();
    }
  }
}

char *sub_1006F2D40(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = sub_10000C518(&unk_100928A40);
  __chkstk_darwin(v11 - 8);
  v13 = &v49 - v12;
  v14 = sub_100747064();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = OBJC_IVAR____TtC22SubscribePageExtension28CarouselItemModuleLockupView_materialBackground;
  *&v5[v18] = [objc_allocWithZone(UIVisualEffectView) init];
  v19 = OBJC_IVAR____TtC22SubscribePageExtension28CarouselItemModuleLockupView_smallLockupView;
  type metadata accessor for SmallLockupView();
  *&v5[v19] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v20 = &v5[OBJC_IVAR____TtC22SubscribePageExtension28CarouselItemModuleLockupView_selectionHandler];
  *v20 = 0;
  *(v20 + 1) = 0;
  v50.receiver = v5;
  v50.super_class = ObjectType;
  v21 = objc_msgSendSuper2(&v50, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v25 = v21;
  [v25 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  [v25 setOverrideUserInterfaceStyle:2];
  [v25 setMaximumContentSizeCategory:UIContentSizeCategoryAccessibilityMedium];
  v26 = OBJC_IVAR____TtC22SubscribePageExtension28CarouselItemModuleLockupView_smallLockupView;
  v27 = qword_100920550;
  v28 = *&v25[OBJC_IVAR____TtC22SubscribePageExtension28CarouselItemModuleLockupView_smallLockupView];
  if (v27 != -1)
  {
    swift_once();
  }

  v29 = sub_10000D0FC(v14, qword_10097E3C0);
  (*(v15 + 16))(v17, v29, v14);
  v30 = OBJC_IVAR____TtC22SubscribePageExtension15SmallLockupView_metrics;
  swift_beginAccess();
  (*(v15 + 24))(&v28[v30], v17, v14);
  swift_endAccess();
  [v28 setNeedsLayout];

  (*(v15 + 8))(v17, v14);
  v31 = qword_1009215D0;
  v32 = *(*&v25[v26] + OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_titleLabel);
  if (v31 != -1)
  {
    swift_once();
  }

  v33 = sub_100750534();
  v34 = sub_10000D0FC(v33, qword_100981EA8);
  v35 = *(v33 - 8);
  v36 = *(v35 + 16);
  v36(v13, v34, v33);
  v37 = *(v35 + 56);
  v37(v13, 0, 1, v33);
  sub_100745BA4();

  v38 = qword_1009215D8;
  v39 = *(*&v25[v26] + OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_subtitleLabel);
  if (v38 != -1)
  {
    swift_once();
  }

  v40 = sub_10000D0FC(v33, qword_100981EC0);
  v36(v13, v40, v33);
  v37(v13, 0, 1, v33);
  sub_100745BA4();

  v41 = [*(*&v25[v26] + OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_subtitleLabel) layer];
  [v41 setCompositingFilter:kCAFilterPlusL];

  [*(*&v25[v26] + OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_titleLabel) setAccessibilityIgnoresInvertColors:1];
  [*(*&v25[v26] + OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_subtitleLabel) setAccessibilityIgnoresInvertColors:1];
  v42 = [*&v25[v26] layer];
  [v42 setAllowsGroupBlending:0];

  v43 = OBJC_IVAR____TtC22SubscribePageExtension28CarouselItemModuleLockupView_materialBackground;
  v44 = *&v25[OBJC_IVAR____TtC22SubscribePageExtension28CarouselItemModuleLockupView_materialBackground];
  sub_1006F3BE8(v44, 20.0);

  [v25 addSubview:*&v25[v43]];
  v45 = [*&v25[v43] contentView];
  [v45 addSubview:*&v25[v26]];

  v46 = [*&v25[v43] contentView];
  v47 = [v46 layer];

  [v47 setAllowsGroupBlending:0];
  return v25;
}

uint64_t sub_1006F335C()
{
  ObjectType = swift_getObjectType();
  v2 = sub_100751104();
  v3 = *(v2 - 8);
  *&v4 = __chkstk_darwin(v2).n128_u64[0];
  v6 = &v13[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v16.receiver = v0;
  v16.super_class = ObjectType;
  objc_msgSendSuper2(&v16, "layoutSubviews", v4);
  v7 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension28CarouselItemModuleLockupView_materialBackground];
  sub_1007477B4();
  [v7 setFrame:?];
  v8 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension28CarouselItemModuleLockupView_smallLockupView];
  v15[3] = type metadata accessor for SmallLockupView();
  v15[4] = sub_1003752E8(&qword_1009343B8, type metadata accessor for SmallLockupView);
  v15[0] = v8;
  sub_10000C824(v15, v13);
  v14[3] = sub_1007511A4();
  v14[4] = &protocol witness table for Margins;
  sub_10000D134(v14);
  v9 = v8;
  sub_100751194();
  sub_1007510E4();
  sub_100751114();
  sub_10000C620(v15);
  sub_1007477B4();
  v10 = [v0 traitCollection];
  sub_100751244();

  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_1006F36C4(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR____TtC22SubscribePageExtension28CarouselItemModuleLockupView_selectionHandler);
  v4 = *(v2 + OBJC_IVAR____TtC22SubscribePageExtension28CarouselItemModuleLockupView_selectionHandler);
  *v3 = a1;
  v3[1] = a2;
  return sub_1000164A8(v4);
}

void sub_1006F36EC()
{
  v1 = *(*(v0 + OBJC_IVAR____TtC22SubscribePageExtension28CarouselItemModuleLockupView_smallLockupView) + OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_artworkView);
  sub_1007433C4();
  sub_1003752E8(&qword_100925570, &type metadata accessor for ArtworkView);
  v2 = v1;
  sub_100744274();
}

double sub_1006F37D8(uint64_t a1, void *a2, double a3, double a4)
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
  v21 = sub_100751104();
  v47[3] = v21;
  v47[4] = &protocol witness table for Center;
  v22 = sub_10000D134(v47);
  (*(*(v21 - 8) + 16))(v22, a1, v21);
  v23 = sub_10016D1E8(a3, a4);
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

void sub_1006F3BE8(void *a1, double a2)
{
  sub_10000C518(&unk_1009231A0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1007A5CF0;
  *(v4 + 32) = [objc_opt_self() effectWithStyle:17];
  sub_100016C60(0, &qword_10092BE10);
  isa = sub_100753294().super.isa;

  [a1 setBackgroundEffects:isa];

  [a1 _setContinuousCornerRadius:a2];
  v6 = [a1 layer];
  [v6 setCornerRadius:a2];

  v7 = [a1 layer];
  [v7 setCornerCurve:kCACornerCurveContinuous];

  v8 = [a1 layer];
  v9 = [objc_opt_self() mainScreen];
  [v9 scale];
  v11 = v10;

  [v8 setBorderWidth:1.0 / v11];
  v12 = [a1 layer];
  v13 = [objc_opt_self() whiteColor];
  v14 = [v13 colorWithAlphaComponent:0.15];

  v15 = [v14 CGColor];
  [v12 setBorderColor:v15];
}

void sub_1006F3E58()
{
  v1 = OBJC_IVAR____TtC22SubscribePageExtension28CarouselItemModuleLockupView_materialBackground;
  *(v0 + v1) = [objc_allocWithZone(UIVisualEffectView) init];
  v2 = OBJC_IVAR____TtC22SubscribePageExtension28CarouselItemModuleLockupView_smallLockupView;
  type metadata accessor for SmallLockupView();
  *(v0 + v2) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v3 = (v0 + OBJC_IVAR____TtC22SubscribePageExtension28CarouselItemModuleLockupView_selectionHandler);
  *v3 = 0;
  v3[1] = 0;
  sub_100754644();
  __break(1u);
}

void sub_1006F3F18()
{
  v0 = objc_opt_self();
  v1 = UIFontTextStyleCaption2;
  v2 = [v0 _preferredFontForTextStyle:v1 weight:UIFontWeightBold];

  if (!v2)
  {
    __break(1u);
    goto LABEL_6;
  }

  v3 = UIFontTextStyleFootnote;
  v4 = [v0 _preferredFontForTextStyle:v3 weight:UIFontWeightBold];

  if (!v4)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v5 = v1;
  v6 = [v0 _preferredFontForTextStyle:v5 weight:UIFontWeightBold];

  if (v6)
  {
    qword_100982F40 = v2;
    *algn_100982F48 = v4;
    qword_100982F50 = v6;
    return;
  }

LABEL_7:
  __break(1u);
}

void sub_1006F4030()
{
  v0 = objc_opt_self();
  v1 = UIFontTextStyleTitle3;
  v2 = [v0 _preferredFontForTextStyle:v1 weight:UIFontWeightRegular];

  if (!v2)
  {
    __break(1u);
    goto LABEL_6;
  }

  v3 = UIFontTextStyleBody;
  v4 = [v0 _preferredFontForTextStyle:v3 weight:UIFontWeightRegular];

  if (!v4)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v5 = v1;
  v6 = [v0 _preferredFontForTextStyle:v5 weight:UIFontWeightRegular];

  if (v6)
  {
    qword_100982F58 = v2;
    unk_100982F60 = v4;
    qword_100982F68 = v6;
    return;
  }

LABEL_7:
  __break(1u);
}

void sub_1006F4148()
{
  v0 = objc_opt_self();
  v1 = UIFontTextStyleTitle3;
  v2 = [v0 _preferredFontForTextStyle:v1 weight:UIFontWeightBold];

  if (!v2)
  {
    __break(1u);
    goto LABEL_6;
  }

  v3 = v1;
  v4 = [v0 _preferredFontForTextStyle:v3 weight:UIFontWeightBold];

  if (!v4)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v5 = v3;
  v6 = [v0 _preferredFontForTextStyle:v5 weight:UIFontWeightBold];

  if (v6)
  {
    qword_100982F70 = v2;
    *algn_100982F78 = v4;
    qword_100982F80 = v6;
    return;
  }

LABEL_7:
  __break(1u);
}

void sub_1006F4254()
{
  v0 = objc_opt_self();
  v1 = UIFontTextStyleFootnote;
  v2 = [v0 preferredFontForTextStyle:v1];

  v3 = UIFontTextStyleSubheadline;
  v4 = [v0 preferredFontForTextStyle:v3];

  v5 = UIFontTextStyleBody;
  v6 = [v0 preferredFontForTextStyle:v5];

  qword_100982F88 = v2;
  unk_100982F90 = v4;
  qword_100982F98 = v6;
}

uint64_t SubscriptionLockupPresenter.iapAdamId.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC22SubscribePageExtension27SubscriptionLockupPresenter_iapAdamId;
  v4 = sub_10074ED34();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SubscriptionLockupPresenter.isIapVisible.getter()
{
  v1 = OBJC_IVAR____TtC22SubscribePageExtension27SubscriptionLockupPresenter_isIapVisible;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1006F4408(char a1)
{
  v3 = a1 & 1;
  v4 = OBJC_IVAR____TtC22SubscribePageExtension27SubscriptionLockupPresenter_isIapVisible;
  result = swift_beginAccess();
  v6 = *(v1 + v4);
  *(v1 + v4) = a1;
  if (v6 != v3)
  {
    v7 = v1 + OBJC_IVAR____TtC22SubscribePageExtension27SubscriptionLockupPresenter_view;
    swift_beginAccess();
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v8 = *(v7 + 8);
      ObjectType = swift_getObjectType();
      (*(v8 + 32))(a1 & 1, 1, ObjectType, v8);
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t SubscriptionLockupPresenter.view.setter(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC22SubscribePageExtension27SubscriptionLockupPresenter_view;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v5 = *(v4 + 8);
    ObjectType = swift_getObjectType();
    v7 = OBJC_IVAR____TtC22SubscribePageExtension27SubscriptionLockupPresenter_isIapVisible;
    swift_beginAccess();
    (*(v5 + 32))(*(v2 + v7), 1, ObjectType, v5);
    swift_unknownObjectRelease();
  }

  return swift_unknownObjectRelease();
}

void (*SubscriptionLockupPresenter.view.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC22SubscribePageExtension27SubscriptionLockupPresenter_view;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_1006F4694;
}

void sub_1006F4694(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + *(*a1 + 48) + 8) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v4 = v3[5];
      v5 = *(v4 + v3[6] + 8);
      ObjectType = swift_getObjectType();
      v7 = OBJC_IVAR____TtC22SubscribePageExtension27SubscriptionLockupPresenter_isIapVisible;
      swift_beginAccess();
      (*(v5 + 32))(*(v4 + v7), 1, ObjectType, v5);
      swift_unknownObjectRelease();
    }
  }

  free(v3);
}

uint64_t SubscriptionLockupPresenter.__allocating_init(subscriptionFamilyId:iapAdamId:view:iapDataSource:appStateController:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16 = swift_allocObject();
  SubscriptionLockupPresenter.init(subscriptionFamilyId:iapAdamId:view:iapDataSource:appStateController:)(a1, a2, a3, a4, a5, a6, a7, a8);
  return v16;
}

char *SubscriptionLockupPresenter.init(subscriptionFamilyId:iapAdamId:view:iapDataSource:appStateController:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  v59 = a8;
  v60 = a5;
  v62 = a7;
  v63 = a4;
  v65 = a6;
  v61 = a1;
  v53 = *v8;
  v12 = sub_10074ED34();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v51 = v14;
  v52 = &v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100741C44();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v49 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v49 - v20;
  v22 = &v8[OBJC_IVAR____TtC22SubscribePageExtension27SubscriptionLockupPresenter_view];
  *(v22 + 1) = 0;
  swift_unknownObjectWeakInit();
  v56 = v13;
  v23 = *(v13 + 16);
  v64 = v12;
  v50 = v23;
  v23(&v9[OBJC_IVAR____TtC22SubscribePageExtension27SubscriptionLockupPresenter_iapAdamId], a3, v12);
  swift_beginAccess();
  *(v22 + 1) = v60;
  swift_unknownObjectWeakAssign();
  swift_getObjectType();
  v24 = sub_1007424E4();
  v25 = &v9[OBJC_IVAR____TtC22SubscribePageExtension27SubscriptionLockupPresenter_iapStateMachine];
  *v25 = v24;
  v25[1] = v26;

  sub_100741F24();
  v54 = a2;

  v27 = *(v16 + 16);
  v55 = v21;
  v27(v18, v21, v15);
  v58 = v15;
  v59 = v16;
  v28 = (*(v16 + 88))(v18, v15);
  v30 = v28 == enum case for InAppPurchaseState.buyable(_:) || v28 == enum case for InAppPurchaseState.indeterminateProgress(_:) || v28 == enum case for InAppPurchaseState.unknown(_:);
  v31 = v30;
  if (!v30)
  {
    (*(v59 + 8))(v18, v58);
  }

  v49 = OBJC_IVAR____TtC22SubscribePageExtension27SubscriptionLockupPresenter_isIapVisible;
  v9[OBJC_IVAR____TtC22SubscribePageExtension27SubscriptionLockupPresenter_isIapVisible] = v31;
  if (*&v9[OBJC_IVAR____TtC22SubscribePageExtension27SubscriptionLockupPresenter_iapStateMachine])
  {
    swift_getObjectType();
    swift_allocObject();
    swift_weakInit();

    sub_1007423A4();
  }

  v32 = swift_allocObject();
  swift_weakInit();
  v33 = v52;
  v57 = a3;
  v34 = a3;
  v35 = v64;
  v50(v52, v34, v64);
  v36 = v56;
  v37 = (*(v56 + 80) + 16) & ~*(v56 + 80);
  v38 = (v51 + v37 + 7) & 0xFFFFFFFFFFFFFFF8;
  v39 = (v38 + 23) & 0xFFFFFFFFFFFFFFF8;
  v40 = swift_allocObject();
  (*(v36 + 32))(v40 + v37, v33, v35);
  v41 = (v40 + v38);
  v42 = v54;
  *v41 = v61;
  v41[1] = v42;
  *(v40 + v39) = v32;
  *(v40 + ((v39 + 15) & 0xFFFFFFFFFFFFFFF8)) = v53;

  sub_100741F04();

  if (v63)
  {
    ObjectType = swift_getObjectType();
    v44 = v49;
    swift_beginAccess();
    v45 = v9[v44];
    v46 = v60;
    v47 = *(v60 + 32);
    swift_unknownObjectRetain();
    v47(v45, 0, ObjectType, v46);
    swift_unknownObjectRelease();

    swift_unknownObjectRelease_n();
  }

  else
  {
    swift_unknownObjectRelease();
  }

  (*(v36 + 8))(v57, v64);
  (*(v59 + 8))(v55, v58);
  return v9;
}

uint64_t sub_1006F4DBC()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1006F4DF4()
{
  v0 = sub_100742284();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();
  sub_1007423D4();
  if ((*(v1 + 88))(v3, v0) != enum case for LegacyAppState.purchased(_:))
  {
    return (*(v1 + 8))(v3, v0);
  }

  (*(v1 + 96))(v3, v0);
  v4 = sub_100743FB4();
  (*(*(v4 - 8) + 8))(v3, v4);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1006F4408(0);
  }

  return result;
}

uint64_t sub_1006F4F90()
{
  v0 = sub_100741C44();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v12 - v5;
  sub_100741F24();
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    (*(v1 + 16))(v3, v6, v0);
    v7 = (*(v1 + 88))(v3, v0);
    v9 = v7 == enum case for InAppPurchaseState.buyable(_:) || v7 == enum case for InAppPurchaseState.indeterminateProgress(_:) || v7 == enum case for InAppPurchaseState.unknown(_:);
    v10 = v9;
    if (!v9)
    {
      (*(v1 + 8))(v3, v0);
    }

    sub_1006F4408(v10);
  }

  return (*(v1 + 8))(v6, v0);
}

uint64_t sub_1006F5174()
{
  v1 = sub_10074ED34();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, ((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t sub_1006F5234()
{
  sub_10074ED34();

  return sub_1006F4F90();
}

uint64_t SubscriptionLockupPresenter.deinit()
{
  v1 = v0;
  if (*(v0 + OBJC_IVAR____TtC22SubscribePageExtension27SubscriptionLockupPresenter_iapStateMachine))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    sub_1007423C4();
    swift_unknownObjectRelease();
  }

  sub_100741894();
  if (sub_100741874())
  {
    sub_100741F14();
  }

  v2 = OBJC_IVAR____TtC22SubscribePageExtension27SubscriptionLockupPresenter_iapAdamId;
  v3 = sub_10074ED34();
  (*(*(v3 - 8) + 8))(v1 + v2, v3);
  sub_10000C4F0(v1 + OBJC_IVAR____TtC22SubscribePageExtension27SubscriptionLockupPresenter_view);
  swift_unknownObjectRelease();
  return v1;
}

uint64_t SubscriptionLockupPresenter.__deallocating_deinit()
{
  SubscriptionLockupPresenter.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1006F5444@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC22SubscribePageExtension27SubscriptionLockupPresenter_isIapVisible;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t type metadata accessor for SubscriptionLockupPresenter()
{
  result = qword_100947248;
  if (!qword_100947248)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1006F5518()
{
  result = sub_10074ED34();
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

void sub_1006F5634()
{
  v41.receiver = v0;
  v41.super_class = type metadata accessor for AlertActionHeaderViewController();
  objc_msgSendSuper2(&v41, "viewDidLoad");
  v1 = sub_100753064();
  v2 = [objc_opt_self() systemImageNamed:v1];

  if (v2)
  {
    v3 = [objc_allocWithZone(UIImageView) initWithImage:v2];
    v4 = [v0 view];
    if (v4)
    {
      v5 = v4;
      v6 = v3;
      [v5 addSubview:v6];

      v7 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension31AlertActionHeaderViewController_imageView];
      *&v0[OBJC_IVAR____TtC22SubscribePageExtension31AlertActionHeaderViewController_imageView] = v6;
      v8 = v6;

      sub_10000C518(&unk_1009231A0);
      v9 = swift_allocObject();
      *(v9 + 16) = xmmword_1007A7210;
      v10 = objc_opt_self();
      *(v9 + 32) = [v10 secondaryLabelColor];
      *(v9 + 40) = [v10 clearColor];
      sub_100016C60(0, &qword_100923500);
      isa = sub_100753294().super.isa;

      v12 = [objc_opt_self() configurationWithPaletteColors:isa];

      [v8 setTranslatesAutoresizingMaskIntoConstraints:0];
      [v8 setPreferredSymbolConfiguration:v12];
      [v8 setContentMode:1];

      v13 = swift_allocObject();
      *(v13 + 16) = xmmword_1007B91A0;
      v14 = [v0 view];
      if (v14)
      {
        v15 = v14;
        v16 = [v14 heightAnchor];

        v17 = [v16 constraintEqualToConstant:80.0];
        *(v13 + 32) = v17;
        v18 = [v8 topAnchor];

        v19 = [v0 view];
        if (v19)
        {
          v20 = v19;
          v40 = v12;
          v21 = [v19 topAnchor];

          v22 = [v18 constraintEqualToAnchor:v21 constant:20.0];
          *(v13 + 40) = v22;
          v23 = [v8 bottomAnchor];

          v24 = [v0 view];
          if (v24)
          {
            v25 = v24;
            v26 = [v24 bottomAnchor];

            v27 = [v23 constraintEqualToAnchor:v26];
            *(v13 + 48) = v27;
            v28 = [v8 leadingAnchor];

            v29 = [v0 view];
            if (v29)
            {
              v30 = v29;
              v31 = [v29 leadingAnchor];

              v32 = [v28 constraintEqualToAnchor:v31];
              *(v13 + 56) = v32;
              v33 = [v8 trailingAnchor];

              v34 = [v0 view];
              if (v34)
              {
                v35 = v34;
                v36 = objc_opt_self();
                v37 = [v35 trailingAnchor];

                v38 = [v33 constraintEqualToAnchor:v37];
                *(v13 + 64) = v38;
                sub_100016C60(0, &qword_100922E80);
                v39 = sub_100753294().super.isa;

                [v36 activateConstraints:v39];

                return;
              }

LABEL_15:
              __break(1u);
              return;
            }

LABEL_14:
            __break(1u);
            goto LABEL_15;
          }

LABEL_13:
          __break(1u);
          goto LABEL_14;
        }

LABEL_12:
        __break(1u);
        goto LABEL_13;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_12;
  }
}

id sub_1006F5C00()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AlertActionHeaderViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

char *sub_1006F5CA8(uint64_t a1, char a2, uint64_t a3)
{
  v68 = a3;
  v66 = a1;
  v5 = sub_10000C518(&unk_100940810);
  __chkstk_darwin(v5 - 8);
  v67 = &v66 - v6;
  v7 = sub_10000C518(&qword_10092C1F0);
  __chkstk_darwin(v7 - 8);
  v9 = &v66 - v8;
  v69 = sub_100742A34();
  v10 = *(v69 - 8);
  __chkstk_darwin(v69);
  v12 = &v66 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10000C518(&unk_100925750);
  __chkstk_darwin(v13 - 8);
  v15 = &v66 - v14;
  v16 = type metadata accessor for FlowDestination();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = (&v66 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = v3;
  sub_1002D7CA4(v15);
  if ((*(v17 + 48))(v15, 1, v16) != 1)
  {
    sub_100068B98(v15, v19);
    if (a2)
    {
      v25 = v3;
      v26 = v69;
      (*(v10 + 16))(v12, v3, v69);
      v27 = objc_allocWithZone(type metadata accessor for TabPlaceholderViewController());
      v24 = sub_1003007A0(v12);
    }

    else
    {
      v28 = sub_100743FE4();
      (*(*(v28 - 8) + 56))(v9, 1, 1, v28);
      v72 = 0;
      v70 = 0u;
      v71 = 0u;
      v29 = sub_100470520(v19, v66, 0, 0, v9, &v70, v68, 1);
      sub_10000C8CC(&v70, &unk_100925760);
      sub_10000C8CC(v9, &qword_10092C1F0);
      if (!v29)
      {
        if (qword_100921EE0 != -1)
        {
          swift_once();
        }

        v63 = sub_100752E44();
        sub_10000D0FC(v63, qword_100983318);
        sub_10000C518(&qword_100923930);
        sub_100752454();
        *(swift_allocObject() + 16) = xmmword_1007A6580;
        sub_1007523A4();
        v64 = v69;
        *(&v71 + 1) = v69;
        v65 = sub_10000D134(&v70);
        (*(v10 + 16))(v65, v20, v64);
        sub_100752424();
        sub_10000C8CC(&v70, &unk_100923520);
        sub_100752D04();

        sub_1000AC948(v19);
        return 0;
      }

      v24 = v29;
      v25 = v20;
      v26 = v69;
    }

    v30 = sub_1002D7360();
    if (v30)
    {
      v31 = v30;
      v32 = [v30 title];
      [v24 setTitle:v32];

      [v24 setTabBarItem:v31];
    }

    type metadata accessor for StoreCollectionViewController();
    v33 = swift_dynamicCastClass();
    if (v33)
    {
      v34 = v33;
      *(v33 + OBJC_IVAR____TtC22SubscribePageExtension29StoreCollectionViewController_prefersLargeTitle) = 1;
      v35 = (*((swift_isaMask & *v33) + 0x198))();
      v36 = v24;
      v37 = [v34 navigationItem];
      v38 = v37;
      if (v35)
      {
        v39 = 3;
      }

      else
      {
        v39 = 2;
      }

      [v37 setLargeTitleDisplayMode:{v39, v66}];

      v40 = sub_100742A04();
      v41 = (v34 + OBJC_IVAR____TtC22SubscribePageExtension29StoreCollectionViewController_automationSemanticPageId);
      *v41 = v40;
      v41[1] = v42;

      ObjectType = swift_getObjectType();
      v44 = v67;
      (*(v10 + 16))(v67, v25, v26);
      (*(v10 + 56))(v44, 0, 1, v26);
      v45 = (*(ObjectType + 480))(v68, v44);
      sub_10000C8CC(v44, &unk_100940810);
      v46 = *(v34 + OBJC_IVAR____TtC22SubscribePageExtension29StoreCollectionViewController_navigationAccessories);
      *(v34 + OBJC_IVAR____TtC22SubscribePageExtension29StoreCollectionViewController_navigationAccessories) = v45;

      v47 = [v34 traitCollection];
      v48 = sub_10050D110(v46, v47, v45);

      if ((v48 & 1) == 0)
      {
        (*((swift_isaMask & *v34) + 0x1F0))(v49);
      }
    }

    else
    {
      type metadata accessor for SearchViewController();
      v50 = swift_dynamicCastClass();
      if (!v50)
      {
LABEL_25:

        sub_1000AC948(v19);
        return v24;
      }

      v51 = v50;
      v52 = OBJC_IVAR____TtC22SubscribePageExtension20SearchViewController_prefersLargeTitle;
      *(v50 + OBJC_IVAR____TtC22SubscribePageExtension20SearchViewController_prefersLargeTitle) = 1;
      v53 = v24;
      v54 = [v51 navigationItem];
      v55 = v54;
      if (v51[v52])
      {
        v56 = 3;
      }

      else
      {
        v56 = 2;
      }

      [v54 setLargeTitleDisplayMode:{v56, v66}];

      v57 = v67;
      (*(v10 + 16))(v67, v25, v26);
      (*(v10 + 56))(v57, 0, 1, v26);
      v58 = sub_100578040(v68, v57);
      sub_10000C8CC(v57, &unk_100940810);
      v59 = *&v51[OBJC_IVAR____TtC22SubscribePageExtension20SearchViewController_navigationAccessories];
      *&v51[OBJC_IVAR____TtC22SubscribePageExtension20SearchViewController_navigationAccessories] = v58;

      v60 = [v51 traitCollection];
      v61 = sub_10050D110(v59, v60, v58);

      if ((v61 & 1) == 0)
      {
        sub_1005742B0();
      }
    }

    goto LABEL_25;
  }

  sub_10000C8CC(v15, &unk_100925750);
  if (qword_100921EE0 != -1)
  {
    swift_once();
  }

  v21 = sub_100752E44();
  sub_10000D0FC(v21, qword_100983318);
  sub_10000C518(&qword_100923930);
  sub_100752454();
  *(swift_allocObject() + 16) = xmmword_1007A6580;
  sub_1007523A4();
  v22 = v69;
  *(&v71 + 1) = v69;
  v23 = sub_10000D134(&v70);
  (*(v10 + 16))(v23, v3, v22);
  sub_100752424();
  sub_10000C8CC(&v70, &unk_100923520);
  sub_100752D04();

  return 0;
}

uint64_t sub_1006F66C8(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100752404();
  result = [v1 viewControllers];
  if (!result)
  {
    return result;
  }

  v6 = result;
  sub_100032B70();
  v7 = sub_1007532A4();

  if (v7 >> 62)
  {
    if (sub_100754664() > a1)
    {
      goto LABEL_4;
    }

LABEL_19:

    if (qword_100921EE0 != -1)
    {
      swift_once();
    }

    v12 = sub_100752E44();
    sub_10000D0FC(v12, qword_100983318);
    sub_10000C518(&qword_100923930);
    sub_100752454();
    *(swift_allocObject() + 16) = xmmword_1007A5A00;
    sub_1007523F4();
    v15._object = 0x800000010078C680;
    v15._countAndFlagsBits = 0xD00000000000001ALL;
    sub_1007523E4(v15);
    v13[3] = &type metadata for Int;
    v13[0] = a1;
    sub_1007523C4();
    sub_10000C8CC(v13, &unk_100923520);
    v16._countAndFlagsBits = 0;
    v16._object = 0xE000000000000000;
    sub_1007523E4(v16);
    sub_100752414();
    sub_100752CE4();
  }

  if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a1)
  {
    goto LABEL_19;
  }

LABEL_4:
  v8 = [v1 delegate];
  if (v8)
  {
    v9 = v8;
    result = [v8 respondsToSelector:"tabBarController:didSelectViewController:"];
    if ((result & 1) == 0)
    {

      goto LABEL_15;
    }

    if ((v7 & 0xC000000000000001) == 0)
    {
      if (a1 < 0)
      {
        __break(1u);
      }

      else if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10) > a1)
      {
        v10 = *(v7 + 8 * a1 + 32);
LABEL_10:
        v11 = v10;

        [v9 tabBarController:v2 didSelectViewController:v11];

LABEL_15:

        return swift_unknownObjectRelease();
      }

      __break(1u);
      return result;
    }

    v10 = sub_100754574();
    goto LABEL_10;
  }
}

id sub_1006F6A3C(uint64_t a1, uint64_t a2, void *a3)
{
  ObjectType = swift_getObjectType();
  *&v3[OBJC_IVAR____TtC22SubscribePageExtension21StoreTabBarController_objectGraph] = 0;
  *&v3[OBJC_IVAR____TtC22SubscribePageExtension21StoreTabBarController_tabChangeDelegate] = 0;
  if (a2)
  {
    v7 = sub_100753064();
  }

  else
  {
    v7 = 0;
  }

  v11.receiver = v3;
  v11.super_class = ObjectType;
  v8 = objc_msgSendSuper2(&v11, "initWithNibName:bundle:", v7, a3);

  v9 = v8;
  [v9 _uip_setTabBarHidden:1];

  return v9;
}

uint64_t sub_1006F6CE8(unsigned int *a1)
{
  v3 = sub_10000C518(&unk_100923960);
  __chkstk_darwin(v3 - 8);
  v5 = &v28 - v4;
  v6 = sub_100752614();
  __chkstk_darwin(v6 - 8);
  v7 = sub_100744574();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v28 - v12;
  v14 = sub_10000C518(&qword_10092FD68);
  __chkstk_darwin(v14 - 8);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v17);
  v20 = &v28 - v19;
  (*(v8 + 104))(&v28 - v19, *a1, v7, v18);
  (*(v8 + 56))(v20, 0, 1, v7);
  v21 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension21StoreTabBarController_objectGraph);
  if (v21)
  {
    sub_10052AA9C(v20, v16);
    if ((*(v8 + 48))(v16, 1, v7) == 1)
    {
      sub_10000C8CC(v20, &qword_10092FD68);
      v22 = v16;
      v23 = &qword_10092FD68;
    }

    else
    {
      (*(v8 + 32))(v13, v16, v7);
      (*(v8 + 16))(v10, v13, v7);

      sub_1007525F4();
      sub_100745824();
      swift_allocObject();
      v24 = sub_1007457E4();
      v25 = sub_10000C518(&unk_100923210);
      sub_1007526C4();
      v26 = *(v25 - 8);
      if ((*(v26 + 48))(v5, 1, v25) != 1)
      {
        sub_1003C0E00(v24, 1, v21, v5);

        (*(v8 + 8))(v13, v7);
        sub_10000C8CC(v20, &qword_10092FD68);
        return (*(v26 + 8))(v5, v25);
      }

      (*(v8 + 8))(v13, v7);
      sub_10000C8CC(v20, &qword_10092FD68);
      v23 = &unk_100923960;
      v22 = v5;
    }
  }

  else
  {
    v23 = &qword_10092FD68;
    v22 = v20;
  }

  return sub_10000C8CC(v22, v23);
}

void sub_1006F7270()
{
  v1 = sub_10000C518(&unk_100923960);
  __chkstk_darwin(v1 - 8);
  v3 = &v45 - v2;
  v4 = sub_100744574();
  v64 = *(v4 - 8);
  v65 = v4;
  __chkstk_darwin(v4);
  v6 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000C518(&unk_10092E4C0);
  __chkstk_darwin(v7 - 8);
  v63 = &v45 - v8;
  v9 = sub_1007440E4();
  v60 = *(v9 - 8);
  v61 = v9;
  __chkstk_darwin(v9);
  v62 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = sub_100742CF4();
  v56 = *(v58 - 8);
  __chkstk_darwin(v58);
  v59 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_1007493D4();
  v12 = *(v54 - 8);
  __chkstk_darwin(v54);
  v57 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10074A304();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v55 = &v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_100752614();
  __chkstk_darwin(v17 - 8);
  v53 = &v45 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_10000C518(&qword_10092C1F0);
  __chkstk_darwin(v19 - 8);
  v21 = &v45 - v20;
  v22 = sub_10000C518(&unk_100923970);
  __chkstk_darwin(v22 - 8);
  v24 = &v45 - v23;
  v25 = sub_10074F4D4();
  __chkstk_darwin(v25);
  v28 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension21StoreTabBarController_objectGraph);
  if (v28)
  {
    v71 = 0;
    v69 = 0u;
    v70 = 0u;
    (*(v27 + 104))(&v45 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0), enum case for FlowPage.search(_:));
    v29 = sub_100741264();
    v52 = v3;
    v51 = v6;
    v30 = v29;
    v31 = *(v29 - 8);
    v46 = *(v31 + 56);
    v47 = v31 + 56;
    v46(v24, 1, 1, v29);
    v32 = sub_100743FE4();
    v66 = v28;
    v49 = v32;
    v33 = *(v32 - 8);
    v48 = *(v33 + 56);
    v50 = v33 + 56;
    v48(v21, 1, 1, v32);
    v67 = 0u;
    v68 = 0u;

    sub_1007525F4();
    (*(v15 + 104))(v55, enum case for FlowPresentationContext.infer(_:), v14);
    (*(v12 + 104))(v57, enum case for FlowAnimationBehavior.infer(_:), v54);
    (*(v56 + 104))(v59, enum case for FlowOrigin.inapp(_:), v58);
    sub_100752B44();
    sub_100742CD4();
    swift_allocObject();
    v34 = sub_100742C84();
    v35 = v30;
    v36 = v52;
    v46(v24, 1, 1, v35);
    (*(v60 + 104))(v62, enum case for SearchOrigin.keyboardShortcut(_:), v61);
    v37 = sub_1007440D4();
    (*(*(v37 - 8) + 56))(v63, 1, 1, v37);
    sub_1007525F4();
    v38 = v66;
    v48(v21, 1, 1, v49);
    v39 = sub_1007440C4();
    swift_allocObject();
    v40 = sub_100744084();
    *(&v70 + 1) = v39;
    *&v69 = v40;
    sub_100742C24();
    sub_10000C8CC(&v69, &unk_100923520);
    (*(v64 + 104))(v51, enum case for NavigationTab.search(_:), v65);
    sub_10000C518(&unk_1009231A0);
    v41 = swift_allocObject();
    *(v41 + 16) = xmmword_1007A5CF0;
    *(v41 + 32) = v34;

    sub_1007525F4();
    sub_100745824();
    swift_allocObject();
    v42 = sub_1007457E4();
    v43 = sub_10000C518(&unk_100923210);
    sub_1007526C4();
    v44 = *(v43 - 8);
    if ((*(v44 + 48))(v36, 1, v43) == 1)
    {

      sub_10000C8CC(v36, &unk_100923960);
    }

    else
    {
      sub_1003C0E00(v42, 1, v38, v36);

      (*(v44 + 8))(v36, v43);
    }
  }
}

void sub_1006F7C70()
{
  v1 = v0;
  v2 = sub_10000C518(&unk_100923960);
  __chkstk_darwin(v2 - 8);
  v49 = &v40 - v3;
  v4 = sub_100742CF4();
  v45 = *(v4 - 8);
  v46 = v4;
  __chkstk_darwin(v4);
  v47 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_1007493D4();
  v6 = *(v44 - 8);
  __chkstk_darwin(v44);
  v8 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10074A304();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v48 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v40 - v13;
  v15 = sub_100752614();
  __chkstk_darwin(v15 - 8);
  v16 = sub_10000C518(&qword_10092C1F0);
  __chkstk_darwin(v16 - 8);
  v18 = &v40 - v17;
  v19 = sub_10000C518(&unk_100923970);
  __chkstk_darwin(v19 - 8);
  v21 = &v40 - v20;
  v22 = sub_10074F4D4();
  __chkstk_darwin(v22);
  v25 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension21StoreTabBarController_objectGraph);
  if (v25)
  {
    v54 = 0;
    v52 = 0u;
    v53 = 0u;
    (*(v24 + 104))(&v40 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0), enum case for FlowPage.account(_:));
    v26 = sub_100741264();
    (*(*(v26 - 8) + 56))(v21, 1, 1, v26);
    v27 = sub_100743FE4();
    (*(*(v27 - 8) + 56))(v18, 1, 1, v27);
    v50 = 0u;
    v51 = 0u;

    sub_1007525F4();
    v28 = *(v10 + 104);
    v42 = v10 + 104;
    v43 = v9;
    v41 = v28;
    v28(v14, enum case for FlowPresentationContext.infer(_:), v9);
    (*(v6 + 104))(v8, enum case for FlowAnimationBehavior.infer(_:), v44);
    (*(v45 + 104))(v47, enum case for FlowOrigin.inapp(_:), v46);
    sub_100752B44();
    sub_100742CD4();
    swift_allocObject();
    v29 = sub_100742C84();
    v30 = ASKDeviceTypeGetCurrent();
    v31 = sub_100753094();
    v33 = v32;
    if (v31 == sub_100753094() && v33 == v34)
    {

      v35 = &enum case for FlowPresentationContext.presentModalFormSheet(_:);
    }

    else
    {
      v36 = sub_100754754();

      v35 = &enum case for FlowPresentationContext.presentModal(_:);
      if (v36)
      {
        v35 = &enum case for FlowPresentationContext.presentModalFormSheet(_:);
      }
    }

    v37 = v49;
    v41(v48, *v35, v43);
    sub_100742C64();
    v38 = sub_10000C518(&unk_100923210);
    sub_1007526C4();
    v39 = *(v38 - 8);
    if ((*(v39 + 48))(v37, 1, v38) == 1)
    {

      sub_10000C8CC(v37, &unk_100923960);
    }

    else
    {
      sub_1003C1424(v29, 1, v25, v37);

      (*(v39 + 8))(v37, v38);
    }
  }
}

void sub_1006F847C(void (*a1)(void, __n128), uint64_t (*a2)(uint64_t))
{
  v5 = sub_10000C518(&unk_100923960);
  v6 = __chkstk_darwin(v5 - 8);
  v8 = &v14 - v7;
  v9 = *(v2 + OBJC_IVAR____TtC22SubscribePageExtension21StoreTabBarController_objectGraph);
  if (v9)
  {
    a1(0, v6);
    swift_allocObject();

    v11 = a2(v10);
    v12 = sub_10000C518(&unk_100923210);
    sub_1007526C4();
    v13 = *(v12 - 8);
    if ((*(v13 + 48))(v8, 1, v12) == 1)
    {

      sub_10000C8CC(v8, &unk_100923960);
    }

    else
    {
      sub_1003C0E00(v11, 1, v9, v8);

      (*(v13 + 8))(v8, v12);
    }
  }
}

void sub_1006F8754()
{
  v0 = sub_10000C518(&unk_100923960);
  __chkstk_darwin(v0 - 8);
  v52 = &v42 - v1;
  v50 = sub_100742CF4();
  v48 = *(v50 - 8);
  __chkstk_darwin(v50);
  v51 = &v42 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1007493D4();
  v45 = *(v3 - 8);
  v46 = v3;
  __chkstk_darwin(v3);
  v49 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10074A304();
  v43 = *(v5 - 8);
  v44 = v5;
  __chkstk_darwin(v5);
  v47 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100752614();
  __chkstk_darwin(v7 - 8);
  v8 = sub_10000C518(&qword_10092C1F0);
  __chkstk_darwin(v8 - 8);
  v10 = &v42 - v9;
  v11 = sub_10000C518(&unk_100923970);
  __chkstk_darwin(v11 - 8);
  v13 = &v42 - v12;
  v14 = sub_10074F4D4();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = ASKBuildTypeGetCurrent();
  v19 = sub_100753094();
  v21 = v20;
  if (v19 == sub_100753094() && v21 == v22)
  {
    goto LABEL_3;
  }

  v23 = sub_100754754();

  if (v23)
  {
    goto LABEL_5;
  }

  v31 = sub_100753094();
  v33 = v32;
  if (v31 == sub_100753094() && v33 == v34)
  {
LABEL_3:

    goto LABEL_6;
  }

  v35 = sub_100754754();

  if (v35)
  {
LABEL_5:

LABEL_6:
    v24 = *(v53 + OBJC_IVAR____TtC22SubscribePageExtension21StoreTabBarController_objectGraph);
    if (v24)
    {
      v58 = 0;
      v56 = 0u;
      v57 = 0u;
      (*(v15 + 104))(v17, enum case for FlowPage.debugSettings(_:), v14);
      v25 = sub_100741264();
      (*(*(v25 - 8) + 56))(v13, 1, 1, v25);
      v26 = sub_100743FE4();
      (*(*(v26 - 8) + 56))(v10, 1, 1, v26);
      v54 = 0u;
      v55 = 0u;

      sub_1007525F4();
      (*(v43 + 104))(v47, enum case for FlowPresentationContext.presentModalFormSheet(_:), v44);
      (*(v45 + 104))(v49, enum case for FlowAnimationBehavior.infer(_:), v46);
      (*(v48 + 104))(v51, enum case for FlowOrigin.inapp(_:), v50);
      sub_100752B44();
      sub_100742CD4();
      swift_allocObject();
      v27 = sub_100742C84();
      v28 = sub_10000C518(&unk_100923210);
      v29 = v52;
      sub_1007526C4();
      v30 = *(v28 - 8);
      if ((*(v30 + 48))(v29, 1, v28) == 1)
      {

        sub_10000C8CC(v29, &unk_100923960);
      }

      else
      {
        sub_1003C1424(v27, 1, v24, v29);

        (*(v30 + 8))(v29, v28);
      }
    }

    return;
  }

  v36 = sub_100753094();
  v38 = v37;
  if (v36 == sub_100753094() && v38 == v39)
  {
  }

  else
  {
    v40 = sub_100754754();

    if ((v40 & 1) == 0)
    {
      return;
    }
  }

  sub_100752854();
  sub_100752844();
  if (qword_100921F28 != -1)
  {
    swift_once();
  }

  v41 = sub_10000C518(&unk_100947360);
  sub_10000D0FC(v41, qword_100983450);
  sub_100752534();

  if (v56 != 2 && (v56 & 1) != 0)
  {
    goto LABEL_6;
  }
}

uint64_t MetadataRibbonBorderedLabelWithDescriptionViewLayout.Metrics.standard.unsafeMutableAddressor()
{
  if (qword_100921DC8 != -1)
  {
    swift_once();
  }

  v0 = sub_10074E774();

  return sub_10000D0FC(v0, static MetadataRibbonBorderedLabelWithDescriptionViewLayout.Metrics.standard);
}

char *sub_1006F90D8(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = sub_10074E774();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v61 = &v55 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtC22SubscribePageExtension46MetadataRibbonBorderedLabelWithDescriptionView_metrics;
  if (qword_100921DC8 != -1)
  {
    swift_once();
  }

  v15 = sub_10000D0FC(v11, static MetadataRibbonBorderedLabelWithDescriptionViewLayout.Metrics.standard);
  v60 = *(v12 + 16);
  v60(&v4[v14], v15, v11);
  v16 = OBJC_IVAR____TtC22SubscribePageExtension46MetadataRibbonBorderedLabelWithDescriptionView_borderLabelViewPlacement;
  v17 = enum case for MetadataRibbonSecondaryViewPlacement.leading(_:);
  v18 = sub_10074DC54();
  (*(*(v18 - 8) + 104))(&v5[v16], v17, v18);
  v19 = &v5[OBJC_IVAR____TtC22SubscribePageExtension46MetadataRibbonBorderedLabelWithDescriptionView_id];
  *v19 = 0u;
  *(v19 + 1) = 0u;
  *(v19 + 4) = 0;
  v20 = OBJC_IVAR____TtC22SubscribePageExtension46MetadataRibbonBorderedLabelWithDescriptionView_itemType;
  v21 = sub_100749D24();
  (*(*(v21 - 8) + 56))(&v5[v20], 1, 1, v21);
  v22 = &v5[OBJC_IVAR____TtC22SubscribePageExtension46MetadataRibbonBorderedLabelWithDescriptionView_labelMaxWidth];
  *v22 = 0;
  v22[8] = 1;
  v23 = &v5[OBJC_IVAR____TtC22SubscribePageExtension46MetadataRibbonBorderedLabelWithDescriptionView_truncationLegibilityThreshold];
  *v23 = 0;
  v23[8] = 1;
  v5[OBJC_IVAR____TtC22SubscribePageExtension46MetadataRibbonBorderedLabelWithDescriptionView_allowsTruncation] = 2;
  sub_100745C84();
  *&v5[OBJC_IVAR____TtC22SubscribePageExtension46MetadataRibbonBorderedLabelWithDescriptionView_descriptionLabel] = sub_100745C64();
  *&v5[OBJC_IVAR____TtC22SubscribePageExtension46MetadataRibbonBorderedLabelWithDescriptionView_borderedLabel] = sub_100745C64();
  v65.receiver = v5;
  v65.super_class = ObjectType;
  v24 = objc_msgSendSuper2(&v65, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v28 = v24;
  [v28 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v29 = OBJC_IVAR____TtC22SubscribePageExtension46MetadataRibbonBorderedLabelWithDescriptionView_descriptionLabel;
  v30 = *&v28[OBJC_IVAR____TtC22SubscribePageExtension46MetadataRibbonBorderedLabelWithDescriptionView_descriptionLabel];
  sub_10000D198();
  v31 = v30;
  v32 = sub_100753DF4();
  [v31 setTextColor:v32];

  v33 = OBJC_IVAR____TtC22SubscribePageExtension46MetadataRibbonBorderedLabelWithDescriptionView_borderedLabel;
  v34 = *&v28[OBJC_IVAR____TtC22SubscribePageExtension46MetadataRibbonBorderedLabelWithDescriptionView_borderedLabel];
  v35 = sub_100753DF4();
  [v34 setTextColor:v35];

  v36 = *&v28[v29];
  v57 = OBJC_IVAR____TtC22SubscribePageExtension46MetadataRibbonBorderedLabelWithDescriptionView_metrics;
  v37 = v61;
  v59 = v12 + 16;
  v60(v61, &v28[OBJC_IVAR____TtC22SubscribePageExtension46MetadataRibbonBorderedLabelWithDescriptionView_metrics], v11);
  v38 = v36;
  v39 = sub_10074E764();
  v40 = *(v12 + 8);
  v55 = v12 + 8;
  v56 = v40;
  v40(v37, v11);
  [v38 setNumberOfLines:v39];

  v58 = v29;
  v41 = *&v28[v29];
  sub_1007509A4();
  if (qword_100920210 != -1)
  {
    swift_once();
  }

  v42 = sub_10074A584();
  v43 = sub_10000D0FC(v42, qword_10097D9F0);
  v63 = v42;
  v44 = sub_1002371F8();
  v64 = v44;
  v45 = sub_10000D134(v62);
  v46 = *(*(v42 - 8) + 16);
  v46(v45, v43, v42);
  sub_100745BC4();

  v47 = *&v28[v33];
  v48 = v61;
  v60(v61, &v28[v57], v11);
  v49 = v47;
  v50 = sub_10074E754();
  v56(v48, v11);
  [v49 setNumberOfLines:v50];

  v51 = *&v28[v33];
  sub_1007509A4();
  if (qword_100920228 != -1)
  {
    swift_once();
  }

  v52 = sub_10000D0FC(v42, qword_10097DA38);
  v63 = v42;
  v64 = v44;
  v53 = sub_10000D134(v62);
  v46(v53, v52, v42);
  sub_100745BC4();

  [*&v28[v33] setMaximumContentSizeCategory:UIContentSizeCategoryLarge];
  [v28 addSubview:*&v28[v33]];
  [v28 addSubview:*&v28[v58]];

  return v28;
}

uint64_t sub_1006F96E4()
{
  ObjectType = swift_getObjectType();
  v2 = sub_100750354();
  v20 = *(v2 - 8);
  v21 = v2;
  __chkstk_darwin(v2);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10074E774();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_10074E784();
  v9 = *(v19 - 8);
  *&v10 = __chkstk_darwin(v19).n128_u64[0];
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28.receiver = v0;
  v28.super_class = ObjectType;
  objc_msgSendSuper2(&v28, "layoutSubviews", v10);
  v13 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension46MetadataRibbonBorderedLabelWithDescriptionView_borderedLabel];
  v26 = sub_100745C84();
  v27 = &protocol witness table for UILabel;
  v24 = &protocol witness table for UILabel;
  v25 = v13;
  v14 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension46MetadataRibbonBorderedLabelWithDescriptionView_descriptionLabel];
  v23 = v26;
  v22 = v14;
  (*(v6 + 16))(v8, &v0[OBJC_IVAR____TtC22SubscribePageExtension46MetadataRibbonBorderedLabelWithDescriptionView_metrics], v5);
  v15 = v13;
  v16 = v14;
  sub_10074E714();
  sub_1007477B4();
  sub_10074E734();
  (*(v20 + 8))(v4, v21);
  return (*(v9 + 8))(v12, v19);
}

double sub_1006F99B4()
{
  v1 = sub_10074E774();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10074E784();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension46MetadataRibbonBorderedLabelWithDescriptionView_borderedLabel);
  v17 = sub_100745C84();
  v18 = &protocol witness table for UILabel;
  v16[4] = &protocol witness table for UILabel;
  v16[5] = v9;
  v10 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension46MetadataRibbonBorderedLabelWithDescriptionView_descriptionLabel);
  v16[3] = v17;
  v16[0] = v10;
  (*(v2 + 16))(v4, v0 + OBJC_IVAR____TtC22SubscribePageExtension46MetadataRibbonBorderedLabelWithDescriptionView_metrics, v1);
  v11 = v9;
  v12 = v10;
  sub_10074E714();
  sub_10074E724();
  v14 = v13;
  (*(v6 + 8))(v8, v5);
  return v14;
}

id sub_1006F9C50(uint64_t a1, uint64_t a2, uint64_t a3, NSString a4, uint64_t a5)
{
  v9 = sub_10074DC54();
  v10 = *(v9 - 8);
  *&v11 = __chkstk_darwin(v9).n128_u64[0];
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *&v5[OBJC_IVAR____TtC22SubscribePageExtension46MetadataRibbonBorderedLabelWithDescriptionView_descriptionLabel];
  if (a4)
  {
    a4 = sub_100753064();
  }

  [v14 setText:{a4, v11}];

  (*(v10 + 16))(v13, a5, v9);
  v15 = OBJC_IVAR____TtC22SubscribePageExtension46MetadataRibbonBorderedLabelWithDescriptionView_borderLabelViewPlacement;
  swift_beginAccess();
  (*(v10 + 24))(&v5[v15], v13, v9);
  swift_endAccess();
  [v5 setNeedsLayout];
  (*(v10 + 8))(v13, v9);
  v16 = *&v5[OBJC_IVAR____TtC22SubscribePageExtension46MetadataRibbonBorderedLabelWithDescriptionView_borderedLabel];
  if (a2)
  {
    v17 = sub_100753104();
  }

  else
  {
    v17 = 0;
  }

  [v16 setAttributedText:v17];

  return [v5 setNeedsLayout];
}

uint64_t sub_1006F9F94()
{
  v0 = sub_10074DC54();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100747854();
  v6 = v5;
  v7 = sub_100747914();
  v9 = v8;
  sub_1007478C4();
  sub_1006F9C50(v4, v6, v7, v9, v3);

  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_1006FA0B8@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC22SubscribePageExtension46MetadataRibbonBorderedLabelWithDescriptionView_itemType;
  swift_beginAccess();
  return sub_100016B4C(v1 + v3, a1, &qword_100924B30);
}

uint64_t sub_1006FA120(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC22SubscribePageExtension46MetadataRibbonBorderedLabelWithDescriptionView_itemType;
  swift_beginAccess();
  sub_10006644C(a1, v1 + v3, &qword_100924B30);
  return swift_endAccess();
}

uint64_t sub_1006FA1FC(uint64_t a1, char a2)
{
  v5 = v2 + OBJC_IVAR____TtC22SubscribePageExtension46MetadataRibbonBorderedLabelWithDescriptionView_labelMaxWidth;
  result = swift_beginAccess();
  *v5 = a1;
  *(v5 + 8) = a2 & 1;
  return result;
}

uint64_t sub_1006FA2C8(uint64_t a1, char a2)
{
  v5 = v2 + OBJC_IVAR____TtC22SubscribePageExtension46MetadataRibbonBorderedLabelWithDescriptionView_truncationLegibilityThreshold;
  result = swift_beginAccess();
  *v5 = a1;
  *(v5 + 8) = a2 & 1;
  return result;
}

uint64_t sub_1006FA388()
{
  v1 = OBJC_IVAR____TtC22SubscribePageExtension46MetadataRibbonBorderedLabelWithDescriptionView_allowsTruncation;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1006FA3CC(char a1)
{
  v3 = OBJC_IVAR____TtC22SubscribePageExtension46MetadataRibbonBorderedLabelWithDescriptionView_allowsTruncation;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1006FA47C@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC22SubscribePageExtension46MetadataRibbonBorderedLabelWithDescriptionView_id;
  swift_beginAccess();
  return sub_100016B4C(v1 + v3, a1, &unk_1009276E0);
}

uint64_t sub_1006FA4E4(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC22SubscribePageExtension46MetadataRibbonBorderedLabelWithDescriptionView_id;
  swift_beginAccess();
  sub_10006644C(a1, v1 + v3, &unk_1009276E0);
  return swift_endAccess();
}

uint64_t sub_1006FA5B4()
{
  v0 = sub_10000C518(&unk_100923180);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8[-1] - v2;
  v4 = sub_10074E774();
  sub_100039C50(v4, static MetadataRibbonBorderedLabelWithDescriptionViewLayout.Metrics.standard);
  sub_10000D0FC(v4, static MetadataRibbonBorderedLabelWithDescriptionViewLayout.Metrics.standard);
  sub_10000C518(&unk_100923AE0);
  sub_100743564();
  v8[3] = v0;
  v8[4] = sub_10001B5C0();
  v5 = sub_10000D134(v8);
  (*(v1 + 16))(v5, v3, v0);
  sub_10074E744();
  return (*(v1 + 8))(v3, v0);
}

uint64_t static MetadataRibbonBorderedLabelWithDescriptionViewLayout.Metrics.standard.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_100921DC8 != -1)
  {
    swift_once();
  }

  v2 = sub_10074E774();
  v3 = sub_10000D0FC(v2, static MetadataRibbonBorderedLabelWithDescriptionViewLayout.Metrics.standard);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t type metadata accessor for MetadataRibbonBorderedLabelWithDescriptionView()
{
  result = qword_1009473B8;
  if (!qword_1009473B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1006FA82C()
{
  sub_10074E774();
  if (v0 <= 0x3F)
  {
    sub_10074DC54();
    if (v1 <= 0x3F)
    {
      sub_1000D9E5C();
      if (v2 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

double sub_1006FA95C(uint64_t a1, uint64_t a2)
{
  v62 = a2;
  v55 = a1;
  v64 = sub_10074E784();
  v63 = *(v64 - 8);
  __chkstk_darwin(v64);
  v61 = &v49 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = sub_100750BD4();
  v57 = *(v59 - 8);
  __chkstk_darwin(v59);
  v56 = &v49 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100750E94();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v49 - v9;
  __chkstk_darwin(v11);
  v13 = &v49 - v12;
  __chkstk_darwin(v14);
  v67 = &v49 - v15;
  v16 = sub_10074E774();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v53 = &v49 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v49 - v20;
  if (qword_100921DC8 != -1)
  {
    swift_once();
  }

  v65 = v7;
  v22 = sub_10000D0FC(v16, static MetadataRibbonBorderedLabelWithDescriptionViewLayout.Metrics.standard);
  v58 = v17;
  v23 = *(v17 + 16);
  v60 = v16;
  v52 = v17 + 16;
  v51 = v23;
  v23(v21, v22, v16);
  sub_100750E84();
  sub_1007509A4();
  v66 = v21;
  if (qword_100920228 != -1)
  {
    swift_once();
  }

  v24 = sub_10074A584();
  v25 = sub_10000D0FC(v24, qword_10097DA38);
  v72 = v24;
  v26 = sub_1002371F8();
  v73 = v26;
  v27 = sub_10000D134(&v71);
  v28 = *(*(v24 - 8) + 16);
  v28(v27, v25, v24);
  sub_100750DE4();
  v54 = v5;
  v29 = *(v5 + 8);
  v29(v10, v4);
  sub_10000C620(&v71);
  sub_10074E754();
  sub_100750E74();
  v29(v13, v4);
  sub_100750E84();
  sub_1007509A4();
  if (qword_100920210 != -1)
  {
    swift_once();
  }

  v30 = sub_10000D0FC(v24, qword_10097D9F0);
  v72 = v24;
  v73 = v26;
  v31 = sub_10000D134(&v71);
  v28(v31, v30, v24);
  sub_100750DE4();
  v29(v10, v4);
  sub_10000C620(&v71);
  sub_10074E764();
  v32 = v65;
  sub_100750E74();
  v29(v13, v4);
  sub_100747854();
  v50 = v29;
  if (v33)
  {
    v34 = sub_100753104();
  }

  else
  {
    v34 = 0;
  }

  sub_100747914();
  v35 = *(v54 + 16);
  v35(v13, v32, v4);
  sub_100750BB4();
  v36 = v56;
  sub_100750BF4();
  v37 = v36;
  sub_100750BA4();
  v38 = v4;
  v39 = *(v57 + 8);
  v40 = v59;
  v39(v37, v59);
  v35(v13, v67, v38);
  v41 = v34;
  sub_100750BB4();
  sub_100750C14();
  sub_100750BA4();
  v39(v37, v40);
  sub_10000C824(v70, v69);
  sub_10000C824(&v71, v68);
  v42 = v66;
  v43 = v60;
  v51(v53, v66, v60);
  v44 = v61;
  sub_10074E714();
  sub_10074E724();
  v46 = v45;

  (*(v63 + 8))(v44, v64);
  sub_10000C620(v70);
  sub_10000C620(&v71);
  v47 = v50;
  v50(v65, v38);
  v47(v67, v38);
  (*(v58 + 8))(v42, v43);
  return v46;
}

void sub_1006FB15C()
{
  v1 = OBJC_IVAR____TtC22SubscribePageExtension46MetadataRibbonBorderedLabelWithDescriptionView_metrics;
  if (qword_100921DC8 != -1)
  {
    swift_once();
  }

  v2 = sub_10074E774();
  v3 = sub_10000D0FC(v2, static MetadataRibbonBorderedLabelWithDescriptionViewLayout.Metrics.standard);
  (*(*(v2 - 8) + 16))(v0 + v1, v3, v2);
  v4 = OBJC_IVAR____TtC22SubscribePageExtension46MetadataRibbonBorderedLabelWithDescriptionView_borderLabelViewPlacement;
  v5 = enum case for MetadataRibbonSecondaryViewPlacement.leading(_:);
  v6 = sub_10074DC54();
  (*(*(v6 - 8) + 104))(v0 + v4, v5, v6);
  v7 = v0 + OBJC_IVAR____TtC22SubscribePageExtension46MetadataRibbonBorderedLabelWithDescriptionView_id;
  *v7 = 0u;
  *(v7 + 16) = 0u;
  *(v7 + 32) = 0;
  v8 = OBJC_IVAR____TtC22SubscribePageExtension46MetadataRibbonBorderedLabelWithDescriptionView_itemType;
  v9 = sub_100749D24();
  (*(*(v9 - 8) + 56))(v0 + v8, 1, 1, v9);
  v10 = v0 + OBJC_IVAR____TtC22SubscribePageExtension46MetadataRibbonBorderedLabelWithDescriptionView_labelMaxWidth;
  *v10 = 0;
  *(v10 + 8) = 1;
  v11 = v0 + OBJC_IVAR____TtC22SubscribePageExtension46MetadataRibbonBorderedLabelWithDescriptionView_truncationLegibilityThreshold;
  *v11 = 0;
  *(v11 + 8) = 1;
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension46MetadataRibbonBorderedLabelWithDescriptionView_allowsTruncation) = 2;
  sub_100754644();
  __break(1u);
}

id sub_1006FB344(double a1, double a2, double a3, double a4)
{
  v8 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v8 initWithFrame:{a1, a2, a3, a4}];
}

void sub_1006FB3AC(uint64_t a1, uint64_t a2)
{
  v4 = (*(a2 + 32))();
  v10.value.super.isa = 0;
  v10.is_nil = 0;
  sub_100743384(v10, v5);

  v6 = *(a2 + 40);
  v7 = v6(a1, a2);
  [v7 setAttributedText:0];

  v8 = v6(a1, a2);
  [v8 setText:0];
}

void sub_1006FB498(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_10074F314();
  v9 = __chkstk_darwin(v8 - 8);
  v24 = 0;
  if (!a1)
  {
LABEL_4:
    v13 = (*(a4 + 32))(a3, a4, v9);
    v14 = v13;
    v22 = v13;
    v26.value.super.isa = 0;
    v26.is_nil = 0;
    sub_100743384(v26, v14);

    return;
  }

  v10 = sub_1006FC870(&v24, v4, a3, a4);
  sub_1006FC950();
  v12 = v11;

  if (v12)
  {

    a1 = v24;
    goto LABEL_4;
  }

  v15 = *(a4 + 32);
  v16 = v15(a3, a4);
  [v16 contentMode];

  sub_10074F374();
  v17 = v15(a3, a4);
  sub_10074F324();
  sub_100743364();
  [v17 setContentMode:sub_10074F184()];
  sub_100747FB4();
  sub_1007433A4();
  if (!sub_10074F1E4())
  {
    sub_100016C60(0, &qword_100923500);
    sub_100753E34();
  }

  sub_100743224();

  v18 = v15(a3, a4);
  sub_1007433C4();
  sub_100744244();

  v19 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v20 = swift_allocObject();
  v20[2] = a3;
  v20[3] = a4;
  v20[4] = v19;

  sub_1007441F4();

  sub_10000C8CC(v23, &unk_1009276E0);
  v21 = v24;
}

uint64_t sub_1006FB810@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v6 = sub_10000C518(&unk_10092E450);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v22[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  __chkstk_darwin(v10);
  v12 = &v22[-v11 - 8];
  sub_100747C04();
  swift_getKeyPath();
  sub_1007525B4();

  v13 = *(v7 + 8);
  v13(v12, v6);
  if (v23)
  {
    sub_10000C518(&qword_1009242A0);
    sub_1007440C4();
    if (swift_dynamicCast())
    {
      sub_100747C04();
      swift_getKeyPath();
      sub_1007525B4();

      v13(v9, v6);
      if (v22[0] == 1)
      {

        v14 = sub_10074ECC4();

        if (v14)
        {
          v15 = (*(a2 + 56))(a1, a2);
          sub_1006FC950();
          v17 = v16;

          if ((v17 & 1) == 0)
          {
            sub_10074F184();
            sub_10074A254();

            v18 = 0;
            goto LABEL_10;
          }
        }
      }
    }
  }

  else
  {
    sub_10000C8CC(v22, &unk_1009297F0);
  }

  v18 = 1;
LABEL_10:
  v19 = sub_10074A274();
  return (*(*(v19 - 8) + 56))(a3, v18, 1, v19);
}

double sub_1006FBB0C@<D0>(uint64_t a1@<X8>)
{
  sub_10074EB84();
  sub_1006FDCB8(&qword_100942738, &type metadata accessor for Shelf);
  v2 = sub_100752464();
  if (*(v2 + 16))
  {
    sub_10000C824(v2 + 32, a1);
  }

  else
  {

    *(a1 + 32) = 0;
    result = 0.0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  return result;
}

uint64_t sub_1006FBBC8()
{
  v15 = v0;
  sub_1006FDCB8(&qword_100942738, &type metadata accessor for Shelf);
  v1 = sub_100752464();
  if (*(v1 + 16))
  {
    sub_10000C824(v1 + 32, v14);

    sub_10000C888(v14, v14[3]);
    DynamicType = swift_getDynamicType();
    v3 = sub_100752464();
    v4 = *(v3 + 16);
    v5 = v4 != 0;
    v6 = v4 - v5;
    if (v4 >= v5)
    {
      v7 = v4 - v5;
    }

    else
    {
      v7 = 0;
    }

    v8 = v7 + 1;
    result = v3 + 40 * v5 + 32;
    while (1)
    {
      v10 = v6 == 0;
      if (!v6)
      {
LABEL_9:

        sub_10000C620(v14);
        return v10;
      }

      if (!--v8)
      {
        break;
      }

      v11 = result + 40;
      --v6;
      sub_10000C824(result, v13);
      sub_10000C888(v13, v13[3]);
      v12 = swift_getDynamicType();
      sub_10000C620(v13);
      result = v11;
      if (v12 != DynamicType)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  else
  {

    return 1;
  }

  return result;
}

uint64_t sub_1006FBD68@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1006FBBC8();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1006FBD98(uint64_t a1, void *a2)
{
  v72 = a2;
  v3 = sub_10000C518(&qword_1009273F8);
  __chkstk_darwin(v3 - 8);
  v74 = &v59 - v4;
  v5 = sub_10000C518(&unk_10092E4B0);
  __chkstk_darwin(v5 - 8);
  v75 = &v59 - v6;
  v76 = sub_10000C518(&qword_100930570);
  v73 = *(v76 - 8);
  __chkstk_darwin(v76);
  v71 = &v59 - v7;
  v8 = sub_1007410D4();
  __chkstk_darwin(v8 - 8);
  v9 = sub_1007440D4();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10000C518(&unk_10092E4C0);
  __chkstk_darwin(v13 - 8);
  v15 = &v59 - v14;
  v16 = sub_10000C518(&qword_100923030);
  __chkstk_darwin(v16 - 8);
  v18 = &v59 - v17;
  v19 = sub_100741084();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v70 = &v59 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = &v59 - v23;
  __chkstk_darwin(v25);
  v69 = &v59 - v26;
  v27 = sub_100744074();
  if (!v28)
  {
    return 0;
  }

  v29 = HIBYTE(v28) & 0xF;
  if ((v28 & 0x2000000000000000) == 0)
  {
    v29 = v27 & 0xFFFFFFFFFFFFLL;
  }

  if (!v29)
  {

    return 0;
  }

  v67 = v27;
  v68 = v28;
  sub_100744094();
  if ((*(v10 + 48))(v15, 1, v9) != 1)
  {
    if (qword_1009209E0 != -1)
    {
      swift_once();
    }

    v59 = qword_10097FC60;
    if (qword_1009209E8 != -1)
    {
      swift_once();
    }

    v63 = qword_10097FC68;
    (*(v10 + 16))(v12, v15, v9);
    v31 = (*(v10 + 88))(v12, v9);
    v66 = a1;
    v65 = v20;
    v64 = v10;
    v61 = v9;
    if (v31 == enum case for SearchEntity.developers(_:))
    {
      v62 = "Search.ResultsTitle.InStories";
      v32 = 0xD000000000000020;
    }

    else
    {
      if (v31 != enum case for SearchEntity.stories(_:))
      {
        if (v31 == enum case for SearchEntity.arcade(_:))
        {
          v62 = "Search.ResultsTitle.InWatch";
          v33 = 0xD00000000000001CLL;
        }

        else
        {
          if (v31 != enum case for SearchEntity.watch(_:))
          {
            result = sub_100754644();
            __break(1u);
            return result;
          }

          v62 = "must be handled.";
          v33 = 0xD00000000000001BLL;
        }

        v60 = v33;
        goto LABEL_23;
      }

      v62 = "Search.ResultsTitle.InArcade";
      v32 = 0xD00000000000001DLL;
    }

    v60 = v32;
LABEL_23:
    sub_10000C518(&unk_10092E4D0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1007A5A00;
    *(inited + 32) = 0x745F686372616573;
    *(inited + 40) = 0xEB000000006D7265;
    v35 = v68;
    *(inited + 48) = v67;
    *(inited + 56) = v35;

    v36 = sub_10038664C(inited);
    swift_setDeallocating();
    sub_10000C8CC(inited + 32, &qword_10093CA20);
    v79._object = (v62 | 0x8000000000000000);
    v79._countAndFlagsBits = v60;
    v37._rawValue = v36;
    sub_1007458A4(v79, v37);

    sub_1007410C4();
    sub_100741094();
    v38 = v72;
    v78[0] = v72;
    sub_1000168F0();
    v39 = v38;
    sub_1007410A4();
    v40 = v63;
    v78[0] = v63;
    sub_1002205EC();
    v41 = v40;
    sub_1007410A4();
    v78[0] = v67;
    v78[1] = v35;
    v42 = sub_100741574();
    v43 = v74;
    (*(*(v42 - 8) + 56))(v74, 1, 1, v42);
    sub_1006FDCB8(&unk_10092E4F0, &type metadata accessor for AttributedString);
    sub_1000D5C0C();
    v44 = v75;
    sub_100741184();
    sub_10000C8CC(v43, &qword_1009273F8);
    if ((*(v73 + 48))(v44, 1, v76) == 1)
    {
      v45 = &unk_10092E4B0;
      v46 = v44;
    }

    else
    {
      v47 = v71;
      sub_100220688(v44, v71);
      v48 = v59;
      v49 = v59;
      sub_1002206F8();
      v50 = sub_1007410B4();
      v77 = v48;
      sub_100741114();
      v50(v78, 0);
      v45 = &qword_100930570;
      v46 = v47;
    }

    sub_10000C8CC(v46, v45);
    v51 = v61;
    v52 = v65;
    v53 = *(v65 + 32);
    v53(v18, v24, v19);
    (*(v52 + 56))(v18, 0, 1, v19);
    (*(v64 + 8))(v15, v51);
    if ((*(v52 + 48))(v18, 1, v19) != 1)
    {

      v57 = v69;
      v53(v69, v18, v19);
      sub_100016C60(0, &qword_10092E500);
      (*(v52 + 16))(v70, v57, v19);
      v58 = sub_100753854();
      (*(v52 + 8))(v57, v19);
      return v58;
    }

    goto LABEL_27;
  }

  sub_10000C8CC(v15, &unk_10092E4C0);
  (*(v20 + 56))(v18, 1, 1, v19);
LABEL_27:
  sub_10000C8CC(v18, &qword_100923030);
  v54 = sub_10074ECB4();
  if (!v55)
  {
    return v67;
  }

  v56 = v54;

  return v56;
}

id sub_1006FC870(void **a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *a1;
  if (*a1)
  {
    v5 = *a1;
  }

  else
  {
    v9 = (*(a4 + 32))(a3, a4);
    v10 = sub_1007432C4();

    if (!v10)
    {
      v10 = (*(a4 + 56))(a3, a4);
    }

    swift_beginAccess();
    v11 = *a1;
    *a1 = v10;
    v5 = v10;

    v4 = 0;
  }

  v12 = v4;
  return v5;
}

uint64_t sub_1006FC950()
{
  v0 = sub_100754724();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10074F1D4();
  result = 0;
  if (v4)
  {
    sub_10074F214();
    (*(v1 + 104))(v3, enum case for FloatingPointRoundingRule.up(_:), v0);
    sub_100753B84();
    v7 = v6;
    (*(v1 + 8))(v3, v0);
    return v7;
  }

  return result;
}

uint64_t sub_1006FCA9C(objc_class *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v11 = (*(a7 + 32))(a6, a7);
    v13.value.super.isa = a1;
    v13.is_nil = 0;
    sub_1007432F4(v13, v12);

    (*(a7 + 80))(a6, a7);
    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_1006FCB60(uint64_t a1@<X3>, uint64_t a2@<X4>, uint64_t *a3@<X8>)
{
  v4 = (*(a2 + 56))(a1, a2);
  swift_getKeyPath();
  sub_100746914();

  v5 = [v4 configurationWithTraitCollection:v7];

  v6 = sub_100743AC4();
  *a3 = v6;
}

uint64_t sub_1006FCC6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v35 = sub_100750E94();
  v7 = *(v35 - 8);
  __chkstk_darwin(v35);
  v9 = v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100750954();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1007440C4();
  sub_1006FDCB8(&unk_10092E480, &type metadata accessor for SearchAction);
  result = sub_1007468B4();
  v15 = v37[0];
  if (v37[0])
  {
    v33 = v11;
    v34 = v10;
    v32 = *(a3 + 40);
    v16 = v32(a2, a3);
    sub_1007505E4();

    v17 = [v4 traitCollection];
    sub_100750944();
    sub_100750E04();
    v36 = v15;
    v31[1] = v4;
    sub_10000C888(v37, v37[3]);
    v18 = a2;
    v19 = v36;
    sub_1007509B4();
    sub_100750924();
    sub_10000C620(v37);
    sub_100750E44();
    sub_1007508D4();
    sub_100750E24();
    sub_1007508B4();
    sub_100750E34();
    sub_1007508C4();
    sub_100750E14();
    sub_1007508A4();

    (*(v7 + 8))(v9, v35);
    v20 = sub_100750914();
    v21 = sub_1006FBD98(v19, v20);
    v23 = v22;
    v25 = v24;
    LODWORD(v16) = ~v24;

    if (v16)
    {
      v26 = v32(v18, a3);
      v27 = v26;
      if (v25)
      {
        [v26 setAttributedText:v21];
      }

      else
      {
        v29 = sub_100753064();
        [v27 setText:v29];

        v27 = v29;
      }

      v30 = v34;

      sub_100220570(v21, v23, v25);
      (*(v33 + 8))(v13, v30);
      (*(a3 + 80))(v18, a3);
    }

    else
    {
      v28 = v32(v18, a3);
      [v28 setText:0];

      (*(v33 + 8))(v13, v34);
      (*(a3 + 80))(v18, a3);
    }
  }

  return result;
}

uint64_t sub_1006FD084(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  v54 = a4;
  v47 = a3;
  v46 = a2;
  v50 = sub_10074F704();
  v49 = *(v50 - 8);
  __chkstk_darwin(v50);
  v48 = &v43[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_100750BD4();
  v62 = *(v10 - 8);
  __chkstk_darwin(v10);
  v53 = &v43[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v12);
  v61 = &v43[-v13];
  v14 = sub_100750954();
  v58 = *(v14 - 8);
  __chkstk_darwin(v14);
  v16 = &v43[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v60 = sub_100750E94();
  v59 = *(v60 - 8);
  __chkstk_darwin(v60);
  v18 = &v43[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v19);
  v21 = &v43[-v20];
  sub_1007440C4();
  sub_1006FDCB8(&unk_10092E480, &type metadata accessor for SearchAction);
  result = sub_1007468B4();
  v23 = v68;
  if (v68)
  {
    v45 = v18;
    v51 = v14;
    v57 = v10;
    swift_getKeyPath();
    sub_100746914();

    v24 = v68;
    (*(a6 + 64))(v68, a5, a6);

    swift_getKeyPath();
    v52 = a1;
    sub_100746914();

    v25 = v65;
    sub_100750944();
    sub_100750E04();
    sub_10000C888(&v68, v69);
    sub_1007509B4();
    sub_100750924();
    sub_10000C620(&v68);
    sub_100750E44();
    sub_1007508D4();
    sub_100750E24();
    sub_1007508B4();
    sub_100750E34();
    sub_1007508C4();
    sub_100750E14();
    sub_1007508A4();

    v26 = sub_100750914();
    v27 = a5;
    v56 = sub_1006FBD98(v23, v26);
    v55 = v28;
    v30 = v29;
    v31 = ~v29;

    if (v31)
    {
      (*(v59 + 16))(v45, v21, v60);
      v44 = v30;
      if (v30)
      {
        sub_1002204D0(v56, v55, 1);
        sub_100750BB4();
        v32 = v53;
        sub_100750C14();
      }

      else
      {
        sub_1002204D0(v56, v55, 0);
        sub_100750BB4();
        v32 = v53;
        sub_100750BF4();
      }

      v33 = v57;
      (*(v62 + 32))(v61, v32, v57);

      v34 = sub_10074ECC4();

      if (v34 && (*&v65 = v34, sub_1006FCB60(v27, a6, &v68), , (v35 = v68) != 0))
      {
        [v68 size];
        v37 = v36;
        v39 = v38;

        *(&v66 + 1) = &type metadata for FixedSizedPlaceholder;
        v67 = sub_100016AF8();
        *&v65 = v37;
        *(&v65 + 1) = v39;
      }

      else
      {
        v67 = 0;
        v65 = 0u;
        v66 = 0u;
      }

      v64[3] = v33;
      v64[4] = &protocol witness table for LabelPlaceholder;
      v40 = sub_10000D134(v64);
      (*(v62 + 16))(v40, v61, v33);
      swift_getKeyPath();
      sub_100746914();

      (*(a6 + 48))(&v68, &v65, v64, v63, v27, a6);
      swift_unknownObjectRelease();
      sub_10000C620(v64);
      sub_10000C8CC(&v65, &unk_100924A60);
      sub_10000C888(&v68, v69);
      if (v54)
      {
        swift_getKeyPath();
        v41 = v48;
        sub_100746914();

        sub_10074F674();
        (*(v49 + 8))(v41, v50);
      }

      swift_getKeyPath();
      sub_100746914();

      v42 = v65;
      sub_100751254();

      sub_100220570(v56, v55, v44);

      (*(v62 + 8))(v61, v57);
      (*(v58 + 8))(v16, v51);
      (*(v59 + 8))(v21, v60);
      return sub_10000C620(&v68);
    }

    else
    {

      (*(v58 + 8))(v16, v51);
      return (*(v59 + 8))(v21, v60);
    }
  }

  return result;
}

void sub_1006FD99C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = (*(a3 + 32))(a2, a3);
  sub_1007433C4();
  sub_1006FDCB8(&qword_100925570, &type metadata accessor for ArtworkView);
  sub_100744274();
}

uint64_t sub_1006FDA50()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1006FDA88()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1006FDACC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1007440C4();
  sub_1006FDCB8(&unk_10092E480, &type metadata accessor for SearchAction);
  result = sub_1007468B4();
  if (v14)
  {

    v7 = sub_10074ECC4();

    if (!v7)
    {
    }

    v8 = (*(a4 + 56))(a3, a4);
    sub_1006FC950();
    v10 = v9;

    if (v10)
    {
    }

    v11 = sub_10074F364();
    sub_10000C518(&unk_1009231A0);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_1007A5CF0;
    *(v12 + 32) = v11;

    v13._rawValue = v12;
    sub_100744224(v13);
  }

  return result;
}

uint64_t sub_1006FDCB8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1006FDD04@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1006FBBC8();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1006FDD40()
{
  v1 = sub_100753064();
  v2 = [v0 objectForKey:v1];

  if (v2)
  {
    sub_100754314();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7[0] = v5;
  v7[1] = v6;
  if (*(&v6 + 1))
  {
    sub_10014D2B8();
    if (swift_dynamicCast())
    {
      return v4;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_10000C8CC(v7, &unk_100923520);
    return 0;
  }
}

uint64_t sub_1006FDE38@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100753064();
  v4 = [v1 objectForKey:v3];

  if (v4)
  {
    sub_100754314();
    swift_unknownObjectRelease();
  }

  else
  {
    v9 = 0u;
    v10 = 0u;
  }

  v11[0] = v9;
  v11[1] = v10;
  if (*(&v10 + 1))
  {
    v5 = sub_100741454();
    v6 = swift_dynamicCast();
    return (*(*(v5 - 8) + 56))(a1, v6 ^ 1u, 1, v5);
  }

  else
  {
    sub_10000C8CC(v11, &unk_100923520);
    v8 = sub_100741454();
    return (*(*(v8 - 8) + 56))(a1, 1, 1, v8);
  }
}

uint64_t sub_1006FDF94()
{
  v1 = sub_100753064();
  v2 = [v0 objectForKey:v1];

  if (v2)
  {
    sub_100754314();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7[0] = v5;
  v7[1] = v6;
  if (*(&v6 + 1))
  {
    sub_10014D2B8();
    if (swift_dynamicCast())
    {
      return v4;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_10000C8CC(v7, &unk_100923520);
    return 0;
  }
}

uint64_t sub_1006FE08C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100753064();
  v4 = [v1 objectForKey:v3];

  if (v4)
  {
    sub_100754314();
    swift_unknownObjectRelease();
  }

  else
  {
    v9 = 0u;
    v10 = 0u;
  }

  v11[0] = v9;
  v11[1] = v10;
  if (*(&v10 + 1))
  {
    v5 = sub_100741454();
    v6 = swift_dynamicCast();
    return (*(*(v5 - 8) + 56))(a1, v6 ^ 1u, 1, v5);
  }

  else
  {
    sub_10000C8CC(v11, &unk_100923520);
    v8 = sub_100741454();
    return (*(*(v8 - 8) + 56))(a1, 1, 1, v8);
  }
}

uint64_t sub_1006FE1E8()
{
  v1 = sub_100753064();
  v2 = [v0 objectForKey:v1];

  if (v2)
  {
    sub_100754314();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7[0] = v5;
  v7[1] = v6;
  if (*(&v6 + 1))
  {
    sub_10014D2B8();
    if (swift_dynamicCast())
    {
      return v4;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_10000C8CC(v7, &unk_100923520);
    return 0;
  }
}

uint64_t sub_1006FE2E0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100753064();
  v4 = [v1 objectForKey:v3];

  if (v4)
  {
    sub_100754314();
    swift_unknownObjectRelease();
  }

  else
  {
    v9 = 0u;
    v10 = 0u;
  }

  v11[0] = v9;
  v11[1] = v10;
  if (*(&v10 + 1))
  {
    v5 = sub_100741454();
    v6 = swift_dynamicCast();
    return (*(*(v5 - 8) + 56))(a1, v6 ^ 1u, 1, v5);
  }

  else
  {
    sub_10000C8CC(v11, &unk_100923520);
    v8 = sub_100741454();
    return (*(*(v8 - 8) + 56))(a1, 1, 1, v8);
  }
}

uint64_t sub_1006FE43C()
{
  v1 = sub_100753064();
  v2 = [v0 objectForKey:v1];

  if (v2)
  {
    sub_100754314();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7[0] = v5;
  v7[1] = v6;
  if (*(&v6 + 1))
  {
    sub_10014D2B8();
    if (swift_dynamicCast())
    {
      return v4;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_10000C8CC(v7, &unk_100923520);
    return 0;
  }
}

uint64_t sub_1006FE534@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100753064();
  v4 = [v1 objectForKey:v3];

  if (v4)
  {
    sub_100754314();
    swift_unknownObjectRelease();
  }

  else
  {
    v9 = 0u;
    v10 = 0u;
  }

  v11[0] = v9;
  v11[1] = v10;
  if (*(&v10 + 1))
  {
    v5 = sub_100741454();
    v6 = swift_dynamicCast();
    return (*(*(v5 - 8) + 56))(a1, v6 ^ 1u, 1, v5);
  }

  else
  {
    sub_10000C8CC(v11, &unk_100923520);
    v8 = sub_100741454();
    return (*(*(v8 - 8) + 56))(a1, 1, 1, v8);
  }
}

id sub_1006FE690()
{
  v1 = ASKBuildTypeGetCurrent();
  sub_10000C518(&qword_1009473C8);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1007A5620;
  v3 = ASKBuildTypeDebug;
  v4 = ASKBuildTypeConvergence;
  *(v2 + 32) = ASKBuildTypeDebug;
  *(v2 + 40) = v4;
  v5 = ASKBuildTypeInternal;
  *(v2 + 48) = ASKBuildTypeInternal;
  type metadata accessor for BuildType(0);
  v6 = v3;
  v7 = v4;
  v8 = v5;
  isa = sub_100753294().super.isa;

  IsAnyOf = ASKBuildTypeIsAnyOf();

  if (IsAnyOf)
  {
    v11 = sub_100753064();
    v12 = [v0 objectForKey:v11];

    if (v12)
    {
      sub_100754314();
      swift_unknownObjectRelease();
    }

    else
    {
      v16 = 0u;
      v17 = 0u;
    }

    v18[0] = v16;
    v18[1] = v17;
    if (*(&v17 + 1))
    {
      sub_10014D2B8();
      if (swift_dynamicCast())
      {
        v13 = [v15 BOOLValue];

        return v13;
      }
    }

    else
    {
      sub_10000C8CC(v18, &unk_100923520);
    }
  }

  return 0;
}

uint64_t sub_1006FE868(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10000C518(&qword_10093D4E0);
  __chkstk_darwin(v4 - 8);
  v6 = &v12 - v5;
  sub_1005CB5C4(a1, &v12 - v5);
  v7 = sub_1007429B4();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_10000C8CC(v6, &qword_10093D4E0);
    v9 = sub_100753064();
    [v2 removeObjectForKey:v9];
  }

  else
  {
    sub_1007429A4();
    (*(v8 + 8))(v6, v7);
    v10 = sub_100753064();

    v9 = sub_100753064();
    [v2 setObject:v10 forKey:v9];
  }

  return sub_10000C8CC(a1, &qword_10093D4E0);
}

uint64_t sub_1006FEA40()
{
  v1 = sub_100753064();
  v2 = [v0 objectForKey:v1];

  if (v2)
  {
    sub_100754314();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7[0] = v5;
  v7[1] = v6;
  if (*(&v6 + 1))
  {
    if (swift_dynamicCast())
    {
      return v4;
    }
  }

  else
  {
    sub_10000C8CC(v7, &unk_100923520);
  }

  return 1;
}

uint64_t sub_1006FEB30@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100753064();
  v4 = [v1 objectForKey:v3];

  if (v4)
  {
    sub_100754314();
    swift_unknownObjectRelease();
  }

  else
  {
    v7 = 0u;
    v8 = 0u;
  }

  v9[0] = v7;
  v9[1] = v8;
  if (*(&v8 + 1))
  {
    if (swift_dynamicCast())
    {
      return sub_100742994();
    }
  }

  else
  {
    sub_10000C8CC(v9, &unk_100923520);
  }

  v6 = sub_1007429B4();
  return (*(*(v6 - 8) + 56))(a1, 1, 1, v6);
}

id sub_1006FEC68()
{
  v1 = sub_100753064();
  v2 = [v0 objectForKey:v1];

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
    sub_10014D2B8();
    if (swift_dynamicCast())
    {
      v3 = [v5 BOOLValue];

      return v3;
    }
  }

  else
  {
    sub_10000C8CC(v8, &unk_100923520);
  }

  return 0;
}

void sub_1006FED78(char a1)
{
  v2 = v1;
  v4 = sub_100743B04();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10000C518(&qword_100932470);
  __chkstk_darwin(v8 - 8);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v24 - v12;
  sub_100754214();
  v14 = sub_1007541F4();
  v15 = &enum case for SystemImage.speakerSlashFill(_:);
  if ((*(*(v14 - 8) + 48))(v13, 1, v14))
  {
    sub_10003BB1C(v13, v10);
    sub_100754224();
    sub_10003BB8C(v13);
  }

  else
  {
    if (a1)
    {
      v16 = &enum case for SystemImage.speakerSlashFill(_:);
    }

    else
    {
      v16 = &enum case for SystemImage.speakerWave3Fill(_:);
    }

    (*(v5 + 104))(v7, *v16, v4);
    sub_100743AE4();
    (*(v5 + 8))(v7, v4);
    sub_100754194();
    sub_100754224();
  }

  if (a1)
  {
    v17 = 0xD00000000000002BLL;
  }

  else
  {
    v17 = 0xD000000000000029;
  }

  if (a1)
  {
    v18._countAndFlagsBits = 0xD00000000000002CLL;
  }

  else
  {
    v18._countAndFlagsBits = 0xD00000000000002ALL;
  }

  if (a1)
  {
    v19 = "upCollectionElementsObserver";
  }

  else
  {
    v15 = &enum case for SystemImage.speakerWave3Fill(_:);
    v19 = "sizeChangeObserver";
  }

  v20 = "on.Unmute.LargeContentTitle";
  if ((a1 & 1) == 0)
  {
    v20 = "on.Mute.LargeContentTitle";
  }

  v18._object = (v20 | 0x8000000000000000);
  v26._countAndFlagsBits = 0;
  v26._object = 0xE000000000000000;
  sub_1007458B4(v18, v26);
  v21 = sub_100753064();

  [v2 setAccessibilityLabel:v21];

  (*(v5 + 104))(v7, *v15, v4);
  v22 = sub_100743AE4();
  (*(v5 + 8))(v7, v4);
  [v2 setLargeContentImage:v22];

  v25._object = (v19 | 0x8000000000000000);
  v25._countAndFlagsBits = v17;
  v27._countAndFlagsBits = 0;
  v27._object = 0xE000000000000000;
  sub_1007458B4(v25, v27);
  v23 = sub_100753064();

  [v2 setLargeContentTitle:v23];
}

id sub_1006FF0CC(double a1)
{
  ObjectType = swift_getObjectType();
  v4 = sub_10000C518(&qword_100932470);
  __chkstk_darwin(v4 - 8);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v17 - v8;
  v17.receiver = v1;
  v17.super_class = ObjectType;
  v10 = objc_msgSendSuper2(&v17, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  sub_100754174();
  v11 = sub_1007541F4();
  v12 = *(v11 - 8);
  (*(v12 + 56))(v9, 0, 1, v11);
  sub_100754224();
  sub_100754214();
  if ((*(v12 + 48))(v6, 1, v11))
  {
    sub_10003BB1C(v6, v9);
    sub_100754224();

    sub_10003BB8C(v6);
  }

  else
  {
    v13 = [objc_opt_self() configurationWithPointSize:4 weight:2 scale:a1];
    sub_100754024();
    sub_100754224();
  }

  v14 = v10;
  [v14 setShowsLargeContentViewer:1];
  [v14 setScalesLargeContentImage:1];

  v15 = [objc_allocWithZone(UILargeContentViewerInteraction) init];
  [v14 addInteraction:v15];

  return v14;
}

id sub_1006FF3D8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AdsSettings();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1006FF430(uint64_t a1)
{
  v3 = sub_100741C54();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v7);
  v10 = &v24 - v9;
  v11 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension37InAppPurchaseLockupCollectionViewCell_lockupView);
  v12 = *(v4 + 16);
  v26 = a1;
  v12(&v24 - v9, a1, v3, v8);
  v13 = OBJC_IVAR____TtC22SubscribePageExtension23InAppPurchaseLockupView_theme;
  swift_beginAccess();
  (*(v4 + 24))(v11 + v13, v10, v3);
  swift_endAccess();
  sub_1005AB684();
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
    v17 = OBJC_IVAR____TtC22SubscribePageExtension37InAppPurchaseLockupCollectionViewCell_spotlightView;
    if (!*&v25[OBJC_IVAR____TtC22SubscribePageExtension37InAppPurchaseLockupCollectionViewCell_spotlightView])
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
        if (qword_100921DD0 != -1)
        {
          swift_once();
        }

        [v21 setBackgroundColor:qword_100982FF8];
        v22 = [v16 contentView];
        [v22 insertSubview:v21 atIndex:0];
      }

      [v16 setNeedsLayout];
    }
  }

  [v16 setNeedsLayout];
  return (v14)(v26, v3);
}

uint64_t sub_1006FF748(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v94 = a4;
  v110 = a2;
  v106 = a1;
  v7 = sub_10000C518(&unk_1009259B0);
  __chkstk_darwin(v7 - 8);
  v108 = &v80 - v8;
  v107 = sub_10074D734();
  v104 = *(v107 - 8);
  __chkstk_darwin(v107);
  v105 = &v80 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10000C518(&unk_100925540);
  __chkstk_darwin(v10 - 8);
  v109 = &v80 - v11;
  v12 = sub_10000C518(&qword_100934110);
  __chkstk_darwin(v12 - 8);
  v100 = &v80 - v13;
  v99 = sub_10074C3E4();
  v95 = *(v99 - 8);
  __chkstk_darwin(v99);
  v98 = &v80 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = sub_100745E94();
  v88 = *(v113 - 8);
  __chkstk_darwin(v113);
  v87 = &v80 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v86 = &v80 - v17;
  __chkstk_darwin(v18);
  v112 = &v80 - v19;
  v20 = sub_10000C518(&unk_100925560);
  v102 = *(v20 - 8);
  v103 = v20;
  __chkstk_darwin(v20);
  v101 = &v80 - v21;
  v22 = sub_100741C54();
  __chkstk_darwin(v22 - 8);
  v92 = &v80 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = sub_10074EAB4();
  v90 = *(v91 - 8);
  __chkstk_darwin(v91);
  v89 = &v80 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = sub_100754724();
  v82 = *(v83 - 8);
  __chkstk_darwin(v83);
  v81 = &v80 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_10000C518(&qword_100933250);
  __chkstk_darwin(v26 - 8);
  v28 = &v80 - v27;
  v29 = sub_100749A94();
  v30 = *(v29 - 8);
  __chkstk_darwin(v29);
  v32 = &v80 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_100751374();
  v34 = *(v33 - 8);
  __chkstk_darwin(v33);
  v36 = &v80 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = a5;
  sub_100700E98(a5, v36);
  sub_100749A44();
  sub_100701B74(&unk_100929800, &type metadata accessor for ComponentLayoutOptions);
  v85 = a3;
  LOBYTE(a3) = sub_100754324();
  v37 = *(v30 + 8);
  v37(v32, v29);
  v97 = v33;
  v96 = v34;
  v111 = v36;
  if (a3)
  {
    (*(v34 + 56))(v28, 1, 1, v33);
    v38 = OBJC_IVAR____TtC22SubscribePageExtension37InAppPurchaseLockupCollectionViewCell_separator;
    v39 = v93;
    swift_beginAccess();
    sub_1002A39F8(v28, &v39[v38]);
    swift_endAccess();
    sub_100700AA4();
    sub_10000C8CC(v28, &qword_100933250);
    sub_100749A54();
    LOBYTE(v38) = sub_100754324();
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
      sub_100751304();
      sub_10000C888(v114, v114[3]);
      v45 = v81;
      sub_100536120();
      sub_100750564();
      (*(v82 + 8))(v45, v83);
      [v41 layoutMargins];
      [v41 setLayoutMargins:?];

      sub_10000C620(v114);
    }
  }

  else
  {
    (*(v34 + 16))(v28, v36, v33);
    (*(v34 + 56))(v28, 0, 1, v33);
    v43 = OBJC_IVAR____TtC22SubscribePageExtension37InAppPurchaseLockupCollectionViewCell_separator;
    v42 = v93;
    swift_beginAccess();
    sub_1002A39F8(v28, &v42[v43]);
    swift_endAccess();
    sub_100700AA4();
    sub_10000C8CC(v28, &qword_100933250);
    v44 = [v42 contentView];
    [v44 layoutMargins];
    [v44 setLayoutMargins:?];
  }

  v46 = v101;
  v47 = v112;
  v48 = v89;
  sub_10074EA84();
  sub_100701B74(&unk_100925360, &type metadata accessor for Shelf.PresentationHints);
  v49 = v91;
  v50 = sub_100754324();
  (*(v90 + 8))(v48, v49);
  v42[OBJC_IVAR____TtC22SubscribePageExtension37InAppPurchaseLockupCollectionViewCell_isPartOfSpotlightShelf] = v50 & 1;
  v51 = v92;
  sub_100741D34();
  sub_1006FF430(v51);
  v52 = *&v42[OBJC_IVAR____TtC22SubscribePageExtension37InAppPurchaseLockupCollectionViewCell_lockupView];
  v53 = *&v52[OBJC_IVAR____TtC22SubscribePageExtension23InAppPurchaseLockupView_titleLabel];
  sub_10074EF34();
  if (v54)
  {
    v55 = sub_100753064();
  }

  else
  {
    v55 = 0;
  }

  [v53 setText:v55];

  v56 = *&v52[OBJC_IVAR____TtC22SubscribePageExtension23InAppPurchaseLockupView_descriptionLabel];
  sub_100741D24();
  if (v57)
  {
    v58 = sub_100753064();
  }

  else
  {
    v58 = 0;
  }

  v59 = v113;
  [v56 setText:v58];

  if (sub_10074EF04())
  {
    v60 = v86;
    sub_100749EC4();

    v61 = v88;
    (*(v88 + 32))(v47, v60, v59);
    v62 = v87;
    (*(v61 + 104))(v87, enum case for OfferEnvironment.widthConstrainedLockup(_:), v59);
    v63 = sub_100745E84();
    v64 = *(v61 + 8);
    v64(v62, v59);
    if (v63)
    {
      v65 = v95;
      v66 = v99;
      (*(v95 + 104))(v98, enum case for OfferButtonSubtitlePosition.below(_:), v99);
      (*(v65 + 56))(v100, 1, 1, v66);
      sub_100701B74(&qword_1009332C0, &type metadata accessor for OfferButtonSubtitlePosition);
      sub_10074A9C4();
      v67 = v52[OBJC_IVAR____TtC22SubscribePageExtension23InAppPurchaseLockupView_isHeightConstrained];
      v52[OBJC_IVAR____TtC22SubscribePageExtension23InAppPurchaseLockupView_isHeightConstrained] = 1;
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
  sub_100701B74(&qword_1009332C0, &type metadata accessor for OfferButtonSubtitlePosition);
  sub_10074A9C4();
  v71 = v52[OBJC_IVAR____TtC22SubscribePageExtension23InAppPurchaseLockupView_isHeightConstrained];
  v52[OBJC_IVAR____TtC22SubscribePageExtension23InAppPurchaseLockupView_isHeightConstrained] = 0;
  v68 = v111;
  if (v71 == 1)
  {
    [v52 setNeedsLayout];
  }

LABEL_20:
  v72 = *&v52[OBJC_IVAR____TtC22SubscribePageExtension23InAppPurchaseLockupView_offerButton];
  v73 = sub_10074EF04();
  v74 = sub_10074EDF4();
  v75 = v104;
  v76 = v107;
  (*(v104 + 104))(v105, enum case for OfferButtonPresenterViewAlignment.left(_:), v107);
  (*(v75 + 56))(v108, 1, 1, v76);
  sub_100701B74(&unk_100925550, &type metadata accessor for OfferButtonPresenterViewAlignment);
  v77 = v109;
  sub_10074A9C4();
  v78 = sub_10000C518(&unk_10092EEA0);
  (*(*(v78 - 8) + 56))(v77, 0, 1, v78);
  sub_10015DE40(v73, v74, 0, v77, v46, v110, 0, 0);

  sub_10000C8CC(v77, &unk_100925540);
  [v42 setNeedsLayout];
  (*(v102 + 8))(v46, v103);
  return (*(v96 + 8))(v68, v97);
}

UIColor sub_100700694()
{
  sub_100016C60(0, &qword_100923500);
  v0 = [objc_opt_self() systemBlueColor];
  v1 = [v0 colorWithAlphaComponent:0.1];

  v2.super.isa = [objc_allocWithZone(UIColor) initWithRed:0.168627451 green:0.188235294 blue:0.231372549 alpha:1.0];
  v3.super.isa = v1;
  result.super.isa = sub_100753EC4(v3, v2).super.isa;
  qword_100982FF8 = result.super.isa;
  return result;
}

char *sub_100700764(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = OBJC_IVAR____TtC22SubscribePageExtension37InAppPurchaseLockupCollectionViewCell_itemLayoutContext;
  v12 = sub_1007469A4();
  (*(*(v12 - 8) + 56))(&v5[v11], 1, 1, v12);
  *&v5[OBJC_IVAR____TtC22SubscribePageExtension37InAppPurchaseLockupCollectionViewCell_spotlightView] = 0;
  *&v5[OBJC_IVAR____TtC22SubscribePageExtension37InAppPurchaseLockupCollectionViewCell_separatorView] = 0;
  v13 = OBJC_IVAR____TtC22SubscribePageExtension37InAppPurchaseLockupCollectionViewCell_separator;
  v14 = sub_100751374();
  v15 = (*(*(v14 - 8) + 56))(&v5[v13], 1, 1, v14);
  v5[OBJC_IVAR____TtC22SubscribePageExtension37InAppPurchaseLockupCollectionViewCell_isPartOfSpotlightShelf] = 0;
  LOBYTE(ObjectType) = (*(ObjectType + 128))(v15);
  v16 = objc_allocWithZone(type metadata accessor for InAppPurchaseLockupView());
  *&v5[OBJC_IVAR____TtC22SubscribePageExtension37InAppPurchaseLockupCollectionViewCell_lockupView] = sub_1005ABB2C(ObjectType & 1);
  v21.receiver = v5;
  v21.super_class = type metadata accessor for InAppPurchaseLockupCollectionViewCell();
  v17 = objc_msgSendSuper2(&v21, "initWithFrame:", a1, a2, a3, a4);
  v18 = [v17 contentView];
  [v18 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

  v19 = [v17 contentView];
  [v19 addSubview:*&v17[OBJC_IVAR____TtC22SubscribePageExtension37InAppPurchaseLockupCollectionViewCell_lockupView]];

  return v17;
}

id sub_100700AA4()
{
  v1 = sub_10000C518(&qword_100933250);
  __chkstk_darwin(v1 - 8);
  v3 = &v29 - v2;
  v4 = sub_100751374();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v29 - v9;
  v11 = OBJC_IVAR____TtC22SubscribePageExtension37InAppPurchaseLockupCollectionViewCell_separator;
  swift_beginAccess();
  sub_100229A24(&v0[v11], v3);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_10000C8CC(v3, &qword_100933250);
    v12 = OBJC_IVAR____TtC22SubscribePageExtension37InAppPurchaseLockupCollectionViewCell_separatorView;
    v13 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension37InAppPurchaseLockupCollectionViewCell_separatorView];
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
    v15 = OBJC_IVAR____TtC22SubscribePageExtension37InAppPurchaseLockupCollectionViewCell_separatorView;
    v16 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension37InAppPurchaseLockupCollectionViewCell_separatorView];
    if (v16)
    {
      (*(v5 + 16))(v7, v10, v4);
      v17 = OBJC_IVAR____TtC22SubscribePageExtension13SeparatorView_separator;
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
      v23 = OBJC_IVAR____TtC22SubscribePageExtension13SeparatorView_separator;
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

uint64_t sub_100700E98@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100754724();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v22[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10000C518(&qword_100928550);
  v9 = *(v8 - 8);
  *&v10 = __chkstk_darwin(v8).n128_u64[0];
  v12 = &v22[-1] - v11;
  v13 = [a1 traitCollection];
  v14 = sub_100753804();

  if (v14)
  {
    if (qword_100921CF0 != -1)
    {
      swift_once();
    }

    v15 = sub_100751374();
    v16 = sub_10000D0FC(v15, qword_100982E40);
    v17 = *(*(v15 - 8) + 16);

    return v17(a2, v16, v15);
  }

  else
  {
    if (qword_100921958 != -1)
    {
      swift_once();
    }

    v19 = sub_100741FA4();
    sub_10000D0FC(v19, qword_100982728);
    sub_100741F94();
    v22[0] = a1;
    sub_100743464();
    (*(v9 + 8))(v12, v8);
    sub_100741F54();
    sub_10000C888(v22, v22[3]);
    sub_100536120();
    sub_100750564();
    (*(v5 + 8))(v7, v4);
    sub_10000C620(v22);
    if (qword_100921CF0 != -1)
    {
      swift_once();
    }

    v20 = sub_100751374();
    sub_10000D0FC(v20, qword_100982E40);
    return sub_100751314();
  }
}

id sub_100701208()
{
  v1 = v0;
  v2 = sub_100741C54();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v66 = &v61 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v65 = &v61 - v6;
  __chkstk_darwin(v7);
  v64 = &v61 - v8;
  v9 = sub_100751374();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v61 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for InAppPurchaseLockupCollectionViewCell();
  v73.receiver = v0;
  v73.super_class = v13;
  objc_msgSendSuper2(&v73, "layoutSubviews");
  v14 = [v0 contentView];
  sub_100016C60(0, &qword_100922300);
  sub_1007477B4();
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;

  v72.origin.x = v16;
  v72.origin.y = v18;
  v72.size.width = v20;
  v72.size.height = v22;
  v67 = v1;
  v23 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension37InAppPurchaseLockupCollectionViewCell_separatorView];
  if (v23)
  {
    v24 = OBJC_IVAR____TtC22SubscribePageExtension13SeparatorView_separator;
    swift_beginAccess();
    v62 = v3;
    v25 = *(v10 + 16);
    v25(v12, &v23[v24], v9);
    v26 = v9;
    v27 = v23;
    sub_100751324();
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
    sub_100753B44();

    v36(v12, v26);
    v2 = v63;
  }

  v37 = *&v67[OBJC_IVAR____TtC22SubscribePageExtension37InAppPurchaseLockupCollectionViewCell_lockupView];
  v38 = OBJC_IVAR____TtC22SubscribePageExtension23InAppPurchaseLockupView_theme;
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

  v48 = *&v67[OBJC_IVAR____TtC22SubscribePageExtension37InAppPurchaseLockupCollectionViewCell_spotlightView];
  v49 = v65;
  if (v48)
  {
    v50 = v37;
    v51 = v3;
    v52 = v48;
    sub_100753B24();
    [v52 setFrame:?];

    v3 = v51;
    v37 = v50;
  }

  (v39)(v49, &v37[v38], v2, v43);
  v53 = v66;
  (*(v3 + 104))(v66, v42, v2);
  sub_100701B74(&unk_10093FBF0, &type metadata accessor for InAppPurchaseTheme);
  sub_100753274();
  sub_100753274();
  if (v70 != v68 || v71 != v69)
  {
    sub_100754754();
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
  sub_100753B24();
  return [v37 setFrame:?];
}

id sub_100701938()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for InAppPurchaseLockupCollectionViewCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for InAppPurchaseLockupCollectionViewCell()
{
  result = qword_100947458;
  if (!qword_100947458)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100701A54()
{
  sub_1002296F8(319, &qword_100928E60, &type metadata accessor for ItemLayoutContext);
  if (v0 <= 0x3F)
  {
    sub_1002296F8(319, &qword_10092F000, &type metadata accessor for Separator);
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_100701B74(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100701C20(uint64_t a1)
{
  sub_1002B2728(a1);
  result = sub_1002B2718();
  if (result)
  {
    *(v1 + qword_100983028) = 1;
  }

  return result;
}

uint64_t sub_100701C50()
{
  sub_10000C518(&qword_100922CE0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1007A6580;
  *(v0 + 32) = sub_1002B1A28();
  *(v0 + 40) = v1;
  v2 = sub_1007024F8();
  v3 = sub_100703330(&qword_100933EB0, type metadata accessor for UberedCollectionElementsObserver);
  *(v0 + 48) = v2;
  *(v0 + 56) = v3;
  sub_10074D7C4();
  swift_allocObject();
  return sub_10074D7B4();
}

uint64_t sub_100701D0C(uint64_t a1)
{
  v2 = sub_10000C518(&qword_100947500);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v7 - v4;
  sub_1002B1F88(a1);
  (*(v3 + 16))(v5, a1, v2);
  if ((*(v3 + 88))(v5, v2) != enum case for DiffablePagePresenter.UpdatePhase.completed<A>(_:))
  {
    return (*(v3 + 8))(v5, v2);
  }

  (*(v3 + 96))(v5, v2);
  sub_10070259C();
}

void sub_100701E60()
{
  v1 = sub_10000C518(&unk_10093D6E0);
  __chkstk_darwin(v1 - 8);
  v3 = &v36 - v2;
  v4 = sub_10074E984();
  v37 = *(v4 - 8);
  v38 = v4;
  __chkstk_darwin(v4);
  v6 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v36 - v8;
  __chkstk_darwin(v10);
  v12 = &v36 - v11;
  v13 = sub_10000C518(&qword_1009262D0);
  v14 = *(v13 - 8);
  *&v15 = __chkstk_darwin(v13).n128_u64[0];
  v17 = &v36 - v16;
  v18 = [v0 view];
  if (!v18)
  {
    goto LABEL_18;
  }

  v19 = v18;
  type metadata accessor for InsetCollectionViewControllerContentView();
  v20 = swift_dynamicCastClass();
  if (!v20)
  {

LABEL_18:
    __break(1u);
    return;
  }

  v21 = *(v20 + OBJC_IVAR____TtC22SubscribePageExtensionP33_D5EB93F8F29FA420E99B1898AD0B2EE640InsetCollectionViewControllerContentView_insetLayoutMarginsFromTopSafeAreaInset);

  if ((v21 & 1) == 0)
  {
    v22 = qword_100930688;
    swift_beginAccess();
    v23 = *&v0[v22];
    if (v23)
    {
      v24 = v23;
      sub_1007518F4();
      v25 = sub_100751744();
      (*(v14 + 8))(v17, v13);
      if (v25 < 1)
      {
      }

      else
      {
        sub_10074CD54();
        v26 = sub_10000C518(&unk_10092E450);
        v27 = *(v26 - 8);
        if ((*(v27 + 48))(v3, 1, v26) == 1)
        {

          sub_10000C8CC(v3, &unk_10093D6E0);
        }

        else
        {
          swift_getKeyPath();
          sub_1007525B4();

          (*(v27 + 8))(v3, v26);
          v29 = v37;
          v28 = v38;
          (*(v37 + 32))(v12, v9, v38);
          (*(v29 + 16))(v6, v12, v28);
          v30 = (*(v29 + 88))(v6, v28);
          if (v30 == enum case for Shelf.ContentType.largeHeroBreakout(_:) || v30 == enum case for Shelf.ContentType.upsellBreakout(_:) || v30 == enum case for Shelf.ContentType.heroCarousel(_:) || v30 == enum case for Shelf.ContentType.uber(_:) || v30 == enum case for Shelf.ContentType.mediaPageHeader(_:))
          {
            sub_10000C518(&unk_1009405F0);
            v32 = sub_1007417F4();
            v33 = *(v32 - 8);
            v34 = (*(v33 + 80) + 32) & ~*(v33 + 80);
            v35 = swift_allocObject();
            *(v35 + 16) = xmmword_1007A5A00;
            sub_100741764();
            sub_1001A962C(v35);
            swift_setDeallocating();
            (*(v33 + 8))(v35 + v34, v32);
            swift_deallocClassInstance();

            (*(v29 + 8))(v12, v28);
          }

          else
          {

            v31 = *(v29 + 8);
            v31(v12, v28);
            v31(v6, v28);
          }
        }
      }
    }
  }
}

uint64_t sub_1007023D4()
{
  *(sub_1007024F8() + 24) = 1;
}

uint64_t sub_100702404()
{
  *(sub_1007024F8() + 24) = 0;
}

uint64_t sub_100702430()
{
  v1 = qword_100947468;
  if (*(v0 + qword_100947468))
  {
    v2 = *(v0 + qword_100947468);
  }

  else
  {
    v3 = type metadata accessor for BaseGenericDiffablePageViewController();
    v2 = sub_1003ED40C(v3, &off_100882258);
    *(v0 + v1) = v2;
  }

  return v2;
}

uint64_t sub_1007024F8()
{
  v1 = qword_100947478;
  if (*(v0 + qword_100947478))
  {
    v2 = *(v0 + qword_100947478);
  }

  else
  {
    sub_100702430();
    type metadata accessor for UberedCollectionElementsObserver();
    v2 = swift_allocObject();
    swift_weakInit();
    *(v2 + 24) = 0;
    swift_weakAssign();

    *(v0 + v1) = v2;
  }

  return v2;
}

void sub_10070259C()
{
  v1 = v0;
  v2 = sub_1007410D4();
  __chkstk_darwin(v2 - 8);
  v3 = sub_10000C518(&qword_100923030);
  __chkstk_darwin(v3 - 8);
  v5 = &v19 - v4;
  v6 = sub_100743654();
  type metadata accessor for BaseGenericDiffablePageViewController();
  sub_1003EDBAC(v6);
  sub_100743664();
  if (v7)
  {
    if ((sub_100743654() & 0x80) != 0)
    {
      if ((sub_100743654() & 0x80) != 0)
      {
        v10 = 0.0;
      }

      else
      {
        v10 = 1.0;
      }

      v19 = [v1 navigationItem];
      sub_10000C518(&unk_100929CA0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1007A5A00;
      *(inited + 32) = NSForegroundColorAttributeName;
      v12 = objc_opt_self();
      v13 = NSForegroundColorAttributeName;
      v14 = [v12 labelColor];
      v15 = [v14 colorWithAlphaComponent:v10];

      *(inited + 64) = sub_10000D198();
      *(inited + 40) = v15;
      sub_100413A18(inited);
      swift_setDeallocating();
      sub_10000C8CC(inited + 32, &unk_100923510);
      sub_1007410F4();
      sub_100741094();
      v16 = sub_100741084();
      (*(*(v16 - 8) + 56))(v5, 0, 1, v16);
      v17 = v19;
      sub_1007536C4();
    }

    else
    {
      v8 = [v1 navigationItem];
      v9 = sub_100753064();

      [v8 setTitle:v9];
    }

    if (sub_100743654() & 2) != 0 && (sub_10062AA10())
    {
      v18 = [v1 navigationItem];
      sub_10009AFC4();
    }
  }
}

uint64_t sub_1007028F0(uint64_t a1)
{
  v2 = sub_100741264();
  v29 = *(v2 - 8);
  __chkstk_darwin(v2);
  v28 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10000C518(&unk_100932480);
  __chkstk_darwin(v4);
  v6 = &v28 - v5;
  v7 = type metadata accessor for FlowDestination();
  __chkstk_darwin(v7);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10000C518(&unk_100923970);
  __chkstk_darwin(v10 - 8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v28 - v14;
  __chkstk_darwin(v16);
  v18 = &v28 - v17;
  sub_100068C18(a1, v9);
  if (swift_getEnumCaseMultiPayload() != 8)
  {
    sub_1000AC948(v9);
LABEL_9:
    v23 = 0;
    return v23 & 1;
  }

  v19 = sub_10000C518(&unk_100932490);
  sub_1000498A8(&v9[*(v19 + 48)], v18);
  sub_1007492E4();
  v20 = *(v4 + 48);
  sub_1000497C4(v15, v6);
  sub_1000497C4(v18, &v6[v20]);
  v21 = v29;
  v22 = *(v29 + 48);
  if (v22(v6, 1, v2) != 1)
  {
    sub_1000497C4(v6, v12);
    if (v22(&v6[v20], 1, v2) != 1)
    {
      v25 = v28;
      (*(v21 + 32))(v28, &v6[v20], v2);
      sub_100703330(&qword_100926240, &type metadata accessor for URL);
      v26 = v21;
      v23 = sub_100753014();
      v27 = *(v26 + 8);
      v27(v25, v2);
      sub_10000C8CC(v15, &unk_100923970);
      sub_10000C8CC(v18, &unk_100923970);
      v27(v12, v2);
      sub_10000C8CC(v6, &unk_100923970);
      return v23 & 1;
    }

    sub_10000C8CC(v15, &unk_100923970);
    sub_10000C8CC(v18, &unk_100923970);
    (*(v21 + 8))(v12, v2);
    goto LABEL_8;
  }

  sub_10000C8CC(v15, &unk_100923970);
  sub_10000C8CC(v18, &unk_100923970);
  if (v22(&v6[v20], 1, v2) != 1)
  {
LABEL_8:
    sub_10000C8CC(v6, &unk_100932480);
    goto LABEL_9;
  }

  sub_10000C8CC(v6, &unk_100923970);
  v23 = 1;
  return v23 & 1;
}

uint64_t sub_100702D8C()
{
  v1 = type metadata accessor for BaseGenericDiffablePageViewController();
  v3.receiver = v0;
  v3.super_class = v1;
  objc_msgSendSuper2(&v3, "viewDidLoad");
  return sub_1003ED4E4(v1, &off_100882258);
}

void sub_100702E04(void *a1)
{
  v1 = a1;
  sub_100702D8C();
}

void sub_100702E6C(void *a1, uint64_t a2, char a3)
{
  v4 = a1;
  sub_100702FBC(a3, &selRef_viewWillAppear_, sub_1003ED574);
}

id sub_100702EDC(char a1)
{
  v4.receiver = v1;
  v4.super_class = type metadata accessor for BaseGenericDiffablePageViewController();
  return objc_msgSendSuper2(&v4, "viewDidAppear:", a1 & 1);
}

void sub_100702F48(void *a1, uint64_t a2, char a3)
{
  v4 = a1;
  sub_100702EDC(a3);
}

uint64_t sub_100702FBC(char a1, SEL *a2, uint64_t (*a3)(objc_class *, _UNKNOWN **))
{
  v7 = type metadata accessor for BaseGenericDiffablePageViewController();
  v9.receiver = v3;
  v9.super_class = v7;
  objc_msgSendSuper2(&v9, *a2, a1 & 1);
  return a3(v7, &off_100882258);
}

void sub_100703054(void *a1, uint64_t a2, char a3)
{
  v4 = a1;
  sub_100702FBC(a3, &selRef_viewWillDisappear_, sub_1003ED808);
}

void sub_1007030C4(void *a1, double a2, double a3)
{
  v7 = type metadata accessor for BaseGenericDiffablePageViewController();
  v8.receiver = v3;
  v8.super_class = v7;
  objc_msgSendSuper2(&v8, "viewWillTransitionToSize:withTransitionCoordinator:", a1, a2, a3);
  if ([v3 isViewLoaded])
  {
    sub_1003EDAA0(a1, v7, &off_100882258);
  }
}

void sub_10070317C(void *a1, double a2, double a3, uint64_t a4, void *a5)
{
  swift_unknownObjectRetain();
  v9 = a1;
  sub_1007030C4(a5, a2, a3);
  swift_unknownObjectRelease();
}

uint64_t sub_1007031FC()
{
}

id sub_10070323C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BaseGenericDiffablePageViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100703298()
{
}

uint64_t sub_100703330(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1007033BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_10000C518(&qword_100939100);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v20[-1] - v6;
  v8 = sub_10000C518(&unk_100923960);
  __chkstk_darwin(v8 - 8);
  v10 = &v20[-1] - v9;
  v11 = sub_100752624();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v15 = &v20[-1] - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 104))(v15, enum case for ActionOutcome.performed(_:), v11, v13);
  sub_100752DB4();
  (*(v12 + 8))(v15, v11);
  v16 = sub_10000C518(&unk_100923210);
  sub_1007526C4();
  v17 = *(v16 - 8);
  if ((*(v17 + 48))(v10, 1, v16) == 1)
  {
    return sub_10000C8CC(v10, &unk_100923960);
  }

  v20[3] = sub_10074ECD4();
  v20[4] = sub_100703F64(&qword_10093D890, &type metadata accessor for Action);
  v20[0] = a3;
  (*(v5 + 104))(v7, enum case for ActionDispatcher.MetricsBehavior.notProcessed<A>(_:), v4);

  sub_1007527E4();

  (*(v5 + 8))(v7, v4);
  sub_10000C620(v20);
  return (*(v17 + 8))(v10, v16);
}

uint64_t sub_1007036E4()
{
  v0 = sub_100752624();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v4, enum case for ActionOutcome.performed(_:), v0, v2);
  sub_100752DB4();
  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_1007037D0()
{
  sub_100703E3C();
  swift_allocError();
  *v0 = 1;
  sub_100752DA4();
}

uint64_t sub_100703838(uint64_t a1, uint64_t a2)
{
  v43 = a2;
  v2 = sub_10000C518(&qword_100947510);
  __chkstk_darwin(v2 - 8);
  v42 = &v35 - v3;
  v4 = sub_10000C518(&qword_100947518);
  __chkstk_darwin(v4 - 8);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v44 = &v35 - v8;
  v9 = sub_10000C518(&qword_100929630);
  __chkstk_darwin(v9 - 8);
  v11 = &v35 - v10;
  v12 = sub_10074ED34();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v35 - v17;
  sub_10000C518(&qword_100930CA0);
  v19 = sub_100752DE4();
  v20 = sub_100743D24();
  if (!v21)
  {
    goto LABEL_4;
  }

  v41 = v20;
  sub_100743D14();
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {

    sub_10000C8CC(v11, &qword_100929630);
LABEL_4:
    sub_100703E3C();
    swift_allocError();
    *v22 = 0;
    sub_100752DA4();

    return v19;
  }

  v39 = v13;
  v40 = v12;
  (*(v13 + 32))(v18, v11, v12);
  v23 = sub_100743CE4();
  if (v23)
  {
    v24 = v23;
    v25 = swift_allocObject();
    v25[2] = v19;
    v25[3] = v43;
    v25[4] = v24;

    v37 = sub_100703F58;
  }

  else
  {
    v37 = sub_100703E90;
    v25 = v19;
  }

  v26 = v44;
  v27 = sub_10074C0C4();
  v35 = *(*(v27 - 8) + 56);
  v35(v26, 1, 1, v27);
  swift_retain_n();
  v38 = v25;

  sub_100743CF4();
  v36 = v18;
  if (v46)
  {
    sub_10000C610(&v45, v47);
    (*(v39 + 16))(v15, v18, v40);
    sub_10000C5B4(v47, &v45);

    sub_10074C0B4();
    sub_10000C620(v47);
    sub_10000C8CC(v26, &qword_100947518);
    v35(v6, 0, 1, v27);
    sub_100703EA0(v6, v26);
  }

  else
  {
    sub_10000C8CC(&v45, &unk_100923520);
  }

  sub_1007491E4();
  sub_100752764();
  sub_100752D34();
  v28 = *&v47[0];
  sub_10074B294();
  sub_100752D34();
  v29 = *&v47[0];
  sub_100743D04();

  v30 = v42;
  sub_10074B254();
  v31 = sub_10074B264();
  (*(*(v31 - 8) + 56))(v30, 0, 1, v31);
  v32 = v36;
  v33 = v44;
  sub_10074B244();

  sub_10000C8CC(v30, &qword_100947510);
  sub_10000C8CC(v33, &qword_100947518);
  (*(v39 + 8))(v32, v40);
  return v19;
}

unint64_t sub_100703E3C()
{
  result = qword_100947520;
  if (!qword_100947520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100947520);
  }

  return result;
}

uint64_t sub_100703EA0(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C518(&qword_100947518);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100703F10()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100703F64(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_100703FCC()
{
  result = qword_100947528;
  if (!qword_100947528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100947528);
  }

  return result;
}

void *sub_100704050(void (*a1)(void))
{
  v3 = [v1 subviews];
  sub_100016C60(0, &qword_100922300);
  v4 = sub_1007532A4();

  if (v4 >> 62)
  {
LABEL_19:
    v5 = sub_100754664();
    if (!v5)
    {
      goto LABEL_20;
    }
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v5)
    {
      goto LABEL_20;
    }
  }

  v6 = 0;
  do
  {
    v7 = v6;
    while (1)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v8 = sub_100754574();
      }

      else
      {
        if (v7 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_18;
        }

        v8 = *(v4 + 8 * v7 + 32);
      }

      v9 = v8;
      v6 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        __break(1u);
LABEL_18:
        __break(1u);
        goto LABEL_19;
      }

      a1(0);
      if (swift_dynamicCastClass())
      {
        break;
      }

      ++v7;
      if (v6 == v5)
      {
        goto LABEL_20;
      }
    }

    sub_100753284();
    if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_100753304();
    }

    sub_100753344();
  }

  while (v6 != v5);
LABEL_20:

  return _swiftEmptyArrayStorage;
}

uint64_t sub_100704210()
{
  if (qword_100921708 != -1)
  {
    swift_once();
  }

  v0 = sub_100750B04();
  v1 = sub_10000D0FC(v0, qword_100982098);
  qword_100983048 = v0;
  unk_100983050 = &protocol witness table for StaticDimension;
  v2 = sub_10000D134(qword_100983030);
  v3 = *(*(v0 - 8) + 16);

  return v3(v2, v1, v0);
}

char *sub_1007042CC(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC22SubscribePageExtension29BundleSearchResultContentView_lockupView;
  *&v4[v9] = [objc_allocWithZone(type metadata accessor for SmallSearchLockupView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v10 = OBJC_IVAR____TtC22SubscribePageExtension29BundleSearchResultContentView_bundleView;
  *&v4[v10] = [objc_allocWithZone(type metadata accessor for BundleView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v17.receiver = v4;
  v17.super_class = type metadata accessor for BundleSearchResultContentView();
  v11 = objc_msgSendSuper2(&v17, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v15 = v11;
  [v15 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  [v15 addSubview:*&v15[OBJC_IVAR____TtC22SubscribePageExtension29BundleSearchResultContentView_lockupView]];
  [v15 addSubview:*&v15[OBJC_IVAR____TtC22SubscribePageExtension29BundleSearchResultContentView_bundleView]];

  return v15;
}

id sub_100704504()
{
  v15.receiver = v0;
  v15.super_class = type metadata accessor for BundleSearchResultContentView();
  objc_msgSendSuper2(&v15, "layoutSubviews");
  v1 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension29BundleSearchResultContentView_lockupView];
  sub_1007477B4();
  v2 = sub_10017CB48();
  v4 = v3;
  sub_1007477B4();
  MinX = CGRectGetMinX(v16);
  sub_1007477B4();
  MinY = CGRectGetMinY(v17);
  [v1 setFrame:{MinX, MinY, v2, v4}];
  v7 = 0.0;
  if ((MetadataRibbonView.hasContent.getter() & 1) == 0 && (sub_100076CBC() & 1) == 0)
  {
    if (qword_100921DD8 != -1)
    {
      swift_once();
    }

    sub_10000C888(qword_100983030, qword_100983048);
    v8 = [v0 traitCollection];
    sub_100750574();
    v7 = v9;
  }

  sub_1007477B4();
  Height = CGRectGetHeight(v18);
  v19.origin.x = MinX;
  v19.origin.y = MinY;
  v19.size.width = v2;
  v19.size.height = v4;
  v11 = Height - (v7 + CGRectGetHeight(v19));
  sub_1007477B4();
  v12 = CGRectGetMinX(v20);
  v21.origin.x = MinX;
  v21.origin.y = MinY;
  v21.size.width = v2;
  v21.size.height = v4;
  v13 = v7 + CGRectGetMaxY(v21);
  sub_1007477B4();
  return [*&v0[OBJC_IVAR____TtC22SubscribePageExtension29BundleSearchResultContentView_bundleView] setFrame:{v12, v13, CGRectGetWidth(v22), v11}];
}

uint64_t sub_100704770(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_10000C518(&unk_100923200);
  __chkstk_darwin(v6 - 8);
  v8 = v14 - v7;
  sub_1007474C4();
  sub_10070641C(&qword_1009235A0, 255, &type metadata accessor for BundleSearchResult);
  result = sub_1007468B4();
  if (v14[1])
  {
    v10 = sub_1007474B4();
    v11 = sub_1007469A4();
    v12 = *(v11 - 8);
    (*(v12 + 16))(v8, a1, v11);
    (*(v12 + 56))(v8, 0, 1, v11);
    sub_100028DB0(v10, v8, a2);

    sub_10000C8CC(v8, &unk_100923200);
    sub_1007474B4();
    v13 = sub_10074EFA4();

    if (!v13)
    {
      v13 = _swiftEmptyArrayStorage;
    }

    sub_10070E31C(v13);

    [v3 setNeedsLayout];
  }

  return result;
}

id sub_100704994()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BundleSearchResultContentView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_100704A38()
{
  sub_10017D15C();
  v1 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension29BundleSearchResultContentView_bundleView);
  sub_10070DF08();
  sub_10070E138();
  v2 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension10BundleView_backgroundArtworkView);
  v3 = v2;
  v4 = v2;
  v6.value.super.isa = 0;
  v6.is_nil = 0;
  sub_100743384(v6, v3);
}

uint64_t sub_100704B20(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = sub_10070641C(&qword_100947570, a2, type metadata accessor for BundleSearchResultContentView);
  result = sub_10070641C(&qword_100947578, v3, type metadata accessor for BundleSearchResultContentView);
  *(a1 + 16) = result;
  return result;
}

void sub_100704BA4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_10074F314();
  __chkstk_darwin(v6 - 8);
  sub_10000C824(a1, v17);
  sub_10000C518(&unk_100923100);
  sub_1007474C4();
  if (swift_dynamicCast())
  {
    sub_1007474B4();
    v7 = sub_10074EF24();

    if (v7)
    {
      v8 = OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_artworkView;
      v16 = *(v2 + OBJC_IVAR____TtC22SubscribePageExtension29BundleSearchResultContentView_lockupView);
      v9 = qword_100920548;
      v10 = *(v16 + OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_artworkView);
      if (v9 != -1)
      {
        swift_once();
      }

      v11 = sub_100747064();
      sub_10000D0FC(v11, qword_10097E3A8);
      sub_100746F34();
      [v10 contentMode];
      sub_10074F374();
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
      v12 = *(v16 + v8);
      sub_1007433C4();
      sub_10070641C(&qword_100925570, 255, &type metadata accessor for ArtworkView);
      v13 = v12;
      sub_100744204();
    }

    sub_1007474B4();
    v14 = sub_10074EFA4();

    if (v14)
    {
      sub_10070D420(v14, a2);
    }

    v15 = *(*(v3 + OBJC_IVAR____TtC22SubscribePageExtension29BundleSearchResultContentView_lockupView) + OBJC_IVAR____TtC22SubscribePageExtension21SmallSearchLockupView_metadataRibbonView);
    sub_100265EBC(a1, a2);
  }
}

uint64_t sub_100704EC8(uint64_t a1)
{
  v2 = sub_10074F314();
  v116 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v88[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_10074A8C4();
  v115 = *(v5 - 8);
  __chkstk_darwin(v5);
  v114 = &v88[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_10074AE04();
  v118 = *(v7 - 8);
  v119 = v7;
  __chkstk_darwin(v7);
  v108 = &v88[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_10074CD14();
  v111 = *(v9 - 8);
  v112 = v9;
  __chkstk_darwin(v9);
  v110 = &v88[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = sub_1007479B4();
  v122 = *(v11 - 8);
  v123 = v11;
  __chkstk_darwin(v11);
  v13 = &v88[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v14);
  v121 = &v88[-v15];
  v128 = sub_10074A8A4();
  v120 = *(v128 - 8);
  __chkstk_darwin(v128);
  v113 = &v88[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v17);
  v127 = &v88[-v18];
  v19 = sub_10000C518(&unk_1009393C0);
  __chkstk_darwin(v19 - 8);
  v107 = &v88[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v21);
  v125 = &v88[-v22];
  v23 = sub_100747C14();
  __chkstk_darwin(v23 - 8);
  v24 = sub_10074F704();
  v25 = *(v24 - 8);
  __chkstk_darwin(v24);
  v126 = &v88[-((v26 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1007474C4();
  sub_10070641C(&qword_1009235A0, 255, &type metadata accessor for BundleSearchResult);
  result = sub_1007468B4();
  v124 = v165[0];
  if (v165[0])
  {
    v101 = v5;
    sub_100746884();
    if (qword_100920C20 != -1)
    {
      swift_once();
    }

    sub_10074F6A4();
    sub_1007474B4();
    v28 = sub_10074EF34();
    v94 = v29;
    v95 = v28;

    sub_1007474B4();
    v30 = sub_10074EFB4();
    v96 = v31;
    v97 = v30;

    sub_1007474B4();
    v117 = sub_100745DF4();

    (*(v118 + 56))(v125, 1, 1, v119);
    sub_1007474B4();
    sub_100745E34();

    swift_getKeyPath();
    sub_100746914();

    v32 = v165[5];
    sub_10074F674();
    if (qword_100920410 != -1)
    {
      swift_once();
    }

    v33 = v128;
    v34 = sub_10000D0FC(v128, qword_10097E010);
    v98 = *(v120 + 16);
    v99 = v120 + 16;
    v98(v127, v34, v33);
    v35 = sub_100753804();
    v105 = v2;
    v106 = a1;
    v103 = v24;
    v104 = v4;
    v102 = v25;
    if (v35)
    {
      if (qword_100921988 != -1)
      {
        swift_once();
      }

      v36 = qword_10093FF40;
    }

    else
    {
      if (qword_100921990 != -1)
      {
        swift_once();
      }

      v36 = qword_10093FF58;
    }

    v37 = v123;
    v38 = sub_10000D0FC(v123, v36);
    v39 = v122;
    (*(v122 + 16))(v13, v38, v37);
    (*(v39 + 32))(v121, v13, v37);
    v40 = [v32 preferredContentSizeCategory];
    sub_100753924();

    sub_100747964();
    sub_100747994();
    sub_10074A894();
    sub_10074A884();
    v93 = sub_100750F34();
    swift_allocObject();
    v100 = sub_100750F14();
    v41 = objc_opt_self();
    v91 = v41;
    v42 = [v41 preferredFontForTextStyle:UIFontTextStyleBody];
    v43 = sub_10074F3F4();
    v165[3] = v43;
    v44 = sub_10070641C(&qword_10092AC70, 255, &type metadata accessor for Feature);
    v165[4] = v44;
    v90 = v44;
    v45 = sub_10000D134(v165);
    v46 = enum case for Feature.measurement_with_labelplaceholder(_:);
    v92 = *(*(v43 - 8) + 104);
    v89 = enum case for Feature.measurement_with_labelplaceholder(_:);
    v92(v45, enum case for Feature.measurement_with_labelplaceholder(_:), v43);
    sub_10074FC74();
    v109 = v32;
    sub_10000C620(v165);
    v47 = v110;
    sub_10074CD04();
    sub_10074CCE4();
    v48 = v112;
    v111 = *(v111 + 8);
    (v111)(v47, v112);
    v49 = [v41 preferredFontForTextStyle:UIFontTextStyleFootnote];
    v164[3] = v43;
    v164[4] = v44;
    v50 = sub_10000D134(v164);
    v51 = v46;
    v52 = v92;
    v92(v50, v51, v43);
    sub_10074FC74();
    sub_10000C620(v164);
    sub_10074CD04();
    sub_10074CCE4();
    v53 = v111;
    (v111)(v47, v48);
    v54 = [v91 preferredFontForTextStyle:UIFontTextStyleFootnote];
    v163[3] = v43;
    v163[4] = v90;
    v55 = sub_10000D134(v163);
    v52(v55, v89, v43);
    sub_10074FC74();
    sub_10000C620(v163);
    sub_10074CD04();
    sub_10074CCE4();
    v53(v47, v48);
    v56 = v117;
    LODWORD(v112) = sub_10001BB7C(0, v117) & (v56 != 0);
    if (v112 == 1)
    {
      v57 = v93;
      v58 = objc_allocWithZone(sub_100751034());
      v59 = v109;
      v60 = sub_100751024();
      v61 = v107;
      sub_100180F6C(v125, v107);
      v63 = v118;
      v62 = v119;
      v64 = *(v118 + 48);
      if (v64(v61, 1, v119) == 1)
      {
        v65 = v108;
        _s22SubscribePageExtension18MetadataRibbonViewC7metrics11AppStoreKit0deF6LayoutV7MetricsVvpfi_0();
        if (v64(v61, 1, v62) != 1)
        {
          sub_10000C8CC(v61, &unk_1009393C0);
        }
      }

      else
      {
        v65 = v108;
        (*(v63 + 32))(v108, v61, v62);
      }

      v67 = v60;
      sub_100018CE4(v56, v65, v67);

      (*(v63 + 8))(v65, v62);
      swift_allocObject();
      v66 = sub_100750F04();
    }

    else
    {
      v57 = v93;
      swift_allocObject();
      v66 = sub_100750F14();
    }

    v68 = v66;

    sub_10001BB7C(0, 0);
    swift_allocObject();
    v69 = sub_100750F14();
    v70 = v127;
    v98(v113, v127, v128);
    v162 = &protocol witness table for LayoutViewPlaceholder;
    v161 = v57;
    v160 = v100;
    v159 = 0;
    *&v157[40] = 0u;
    v158 = 0u;
    sub_10000C824(v165, v157);
    sub_10000C824(v164, &v156);
    v155 = 0;
    v153 = 0u;
    v154 = 0u;
    v152 = 0;
    v150 = 0u;
    v151 = 0u;

    v71 = sub_100750F24();
    v149 = &protocol witness table for LayoutViewPlaceholder;
    v148 = v57;
    v147 = v71;
    v146 = 0;
    v144 = 0u;
    v145 = 0u;
    v143 = 0;
    v141 = 0u;
    v142 = 0u;
    v140 = 0;
    v138 = 0u;
    v139 = 0u;
    v137 = 0;
    v136 = 0u;
    *&v135[40] = 0u;
    sub_10000C824(v163, v135);
    v133 = v57;
    v134 = &protocol witness table for LayoutViewPlaceholder;
    v131 = &protocol witness table for LayoutViewPlaceholder;
    v132 = v68;
    v130 = v57;
    v129 = v69;
    v72 = v114;
    sub_10074A8B4();
    sub_100751034();
    sub_10000C518(&unk_1009231A0);
    v73 = swift_allocObject();
    *(v73 + 16) = xmmword_1007A5CF0;
    v74 = v109;
    *(v73 + 32) = v109;
    v75 = v74;
    v76 = sub_100751044();
    sub_10070641C(&unk_10092AC80, 255, &type metadata accessor for SmallSearchLockupLayout);
    v77 = v101;
    sub_100750404();

    (*(v115 + 8))(v72, v77);
    sub_10000C620(v163);
    sub_10000C620(v164);
    sub_10000C620(v165);
    (*(v122 + 8))(v121, v123);
    (*(v120 + 8))(v70, v128);
    sub_10000C8CC(v125, &unk_1009393C0);
    v78 = v116;
    v80 = v104;
    v79 = v105;
    (*(v116 + 104))(v104, enum case for Artwork.Style.roundedRect(_:), v105);
    v81 = v126;
    sub_10074F674();
    sub_1007474B4();
    v82 = sub_10074EFA4();

    if (!v82)
    {
      v82 = _swiftEmptyArrayStorage;
    }

    type metadata accessor for BundleView();
    v83 = sub_10007DC04();
    swift_getObjectType();
    sub_1007100EC(v80, v82, v83);
    swift_unknownObjectRelease();

    (*(v78 + 8))(v80, v79);
    sub_1007474B4();
    v84 = sub_100745E14();
    v85 = sub_100745DF4();
    v86 = sub_10001BB7C(v84, v85);

    if (v86)
    {
      (*(v102 + 8))(v81, v103);
    }

    else
    {
      if (qword_100921DD8 != -1)
      {
        swift_once();
      }

      sub_10000C888(qword_100983030, qword_100983048);
      swift_getKeyPath();
      sub_100746914();

      v87 = v165[0];
      sub_100750574();

      return (*(v102 + 8))(v126, v103);
    }
  }

  return result;
}

void sub_100706014()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension29BundleSearchResultContentView_lockupView];
  v3 = OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_artworkView;
  v4 = *(v2 + OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_artworkView);
  v40.value.super.isa = 0;
  v40.is_nil = 0;
  sub_100743384(v40, v5);

  v6 = *(v2 + v3);
  sub_1007433C4();
  sub_10070641C(&qword_100925570, 255, &type metadata accessor for ArtworkView);
  v7 = v6;
  sub_100744274();

  v8 = *(v2 + OBJC_IVAR____TtC22SubscribePageExtension21SmallSearchLockupView_metadataRibbonView);
  v9 = *&v8[OBJC_IVAR____TtC22SubscribePageExtension18MetadataRibbonView_metadataRibbonItemViews];
  v10 = *(v9 + 16);
  if (v10)
  {
    v36 = v1;
    type metadata accessor for MetadataRibbonIconWithLabelView(0);
    v35 = v8;

    v11 = 32;
    do
    {
      v12 = *(v9 + v11);
      if (swift_dynamicCastClass())
      {
        v13 = v12;
        v41.value.super.isa = 0;
        v41.is_nil = 0;
        sub_100743384(v41, v14);
        sub_100744274();
      }

      v11 += 16;
      --v10;
    }

    while (v10);

    v1 = v36;
  }

  v37 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension29BundleSearchResultContentView_bundleView];
  v15 = sub_100704050(type metadata accessor for BundleChildView);
  v16 = v15;
  if (v15 >> 62)
  {
    v17 = sub_100754664();
    if (!v17)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v17 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v17)
    {
      goto LABEL_16;
    }
  }

  if (v17 < 1)
  {
    __break(1u);
    goto LABEL_29;
  }

  v18 = 0;
  do
  {
    if ((v16 & 0xC000000000000001) != 0)
    {
      v19 = sub_100754574();
    }

    else
    {
      v19 = *(v16 + 8 * v18 + 32);
    }

    v20 = v19;
    ++v18;
    v21 = OBJC_IVAR____TtC22SubscribePageExtension15BundleChildView_icon;
    v22 = *&v19[OBJC_IVAR____TtC22SubscribePageExtension15BundleChildView_icon];
    v42.value.super.isa = 0;
    v42.is_nil = 0;
    sub_100743384(v42, v23);

    v24 = *&v20[v21];
    sub_100744274();
  }

  while (v17 != v18);
LABEL_16:

  v25 = sub_100704050(type metadata accessor for BorderedScreenshotView);
  v26 = v25;
  if (v25 >> 62)
  {
    v27 = sub_100754664();
    if (v27)
    {
LABEL_18:
      if (v27 >= 1)
      {
        v28 = 0;
        do
        {
          if ((v26 & 0xC000000000000001) != 0)
          {
            v29 = sub_100754574();
          }

          else
          {
            v29 = *(v26 + 8 * v28 + 32);
          }

          v30 = v29;
          ++v28;
          v31 = OBJC_IVAR____TtC22SubscribePageExtension22BorderedScreenshotView_artworkView;
          v32 = *&v29[OBJC_IVAR____TtC22SubscribePageExtension22BorderedScreenshotView_artworkView];
          v43.value.super.isa = 0;
          v43.is_nil = 0;
          sub_100743384(v43, v33);

          v34 = *&v30[v31];
          sub_100744274();
        }

        while (v27 != v28);
        goto LABEL_25;
      }

LABEL_29:
      __break(1u);
      return;
    }
  }

  else
  {
    v27 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v27)
    {
      goto LABEL_18;
    }
  }

LABEL_25:

  v38 = *&v37[OBJC_IVAR____TtC22SubscribePageExtension10BundleView_backgroundArtworkView];
  sub_100744274();
}

uint64_t sub_10070641C(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_100706464()
{
  sub_1007474C4();
  sub_10070641C(&qword_1009235A0, 255, &type metadata accessor for BundleSearchResult);
  result = sub_1007468B4();
  if (v6)
  {
    sub_1007474B4();

    v1 = sub_100745DF4();
    if (v1)
    {
      v2 = v1;
      swift_getKeyPath();
      sub_100746914();

      v3 = sub_100266258(v2, v5);

      sub_10049FCD8(v3);
      v4._rawValue = _swiftEmptyArrayStorage;
      sub_100744224(v4);
    }
  }

  return result;
}

uint64_t sub_1007065A0@<X0>(uint64_t a1@<X8>)
{
  v22 = a1;
  v1 = sub_100750304();
  v20 = *(v1 - 8);
  v21 = v1;
  __chkstk_darwin(v1);
  v3 = &v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100754724();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10000C518(&unk_1009249B0);
  __chkstk_darwin(v8 - 8);
  __chkstk_darwin(v9);
  if (qword_100921710 != -1)
  {
    swift_once();
  }

  v10 = sub_100750B04();
  sub_10000D0FC(v10, qword_1009820B0);
  sub_1007502D4();
  sub_100750564();
  v12 = v11;
  v13 = *(v5 + 8);
  v13(v7, v4);
  v26 = v12;
  if (qword_100921708 != -1)
  {
    swift_once();
  }

  sub_10000D0FC(v10, qword_100982098);
  sub_1007502D4();
  sub_100750564();
  v15 = v14;
  v13(v7, v4);
  v23 = v15;
  sub_10000C518(&unk_100923AE0);
  sub_100743484();
  if (qword_100921150 != -1)
  {
    swift_once();
  }

  v16 = sub_100750534();
  v17 = sub_10000D0FC(v16, qword_100981128);
  (*(*(v16 - 8) + 16))(v3, v17, v16);
  (*(v20 + 104))(v3, enum case for FontSource.useCase(_:), v21);
  sub_1007434E4();
  v27 = &type metadata for CGFloat;
  v28 = &protocol witness table for CGFloat;
  v25 = &protocol witness table for CGFloat;
  v26 = 0x403E000000000000;
  v24 = &type metadata for CGFloat;
  v23 = 0x4064000000000000;
  return sub_10074AF64();
}

char *sub_100706980(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = sub_100752AC4();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtC22SubscribePageExtension36ProductDescriptionCollectionViewCell_itemLayoutContext;
  v15 = sub_1007469A4();
  (*(*(v15 - 8) + 56))(&v4[v14], 1, 1, v15);
  *&v4[OBJC_IVAR____TtC22SubscribePageExtension36ProductDescriptionCollectionViewCell_impressionsCalculator] = 0;
  v16 = &v4[OBJC_IVAR____TtC22SubscribePageExtension36ProductDescriptionCollectionViewCell_impressionsUpdateBlock];
  sub_100016C60(0, &qword_100923500);
  *v16 = 0;
  *(v16 + 1) = 0;
  v17 = sub_100753E04();
  v18 = objc_allocWithZone(type metadata accessor for ExpandableTextView());
  *&v5[OBJC_IVAR____TtC22SubscribePageExtension36ProductDescriptionCollectionViewCell_bodyTextView] = sub_10025F574(v17, 0.0, 0.0, 0.0, 0.0);
  *&v5[OBJC_IVAR____TtC22SubscribePageExtension36ProductDescriptionCollectionViewCell_developerLinkView] = [objc_allocWithZone(type metadata accessor for DeveloperLinkView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v5[OBJC_IVAR____TtC22SubscribePageExtension36ProductDescriptionCollectionViewCell_tagRibbonView] = [objc_allocWithZone(type metadata accessor for TagFacetRibbonView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v19 = type metadata accessor for ProductDescriptionCollectionViewCell();
  v43.receiver = v5;
  v43.super_class = v19;
  v20 = objc_msgSendSuper2(&v43, "initWithFrame:", a1, a2, a3, a4);
  v21 = [v20 contentView];
  v22 = sub_100753E04();
  [v21 setBackgroundColor:v22];

  v23 = v20;
  v24 = [v23 contentView];
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  [v24 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];

  [v23 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v28 = OBJC_IVAR____TtC22SubscribePageExtension36ProductDescriptionCollectionViewCell_bodyTextView;
  v29 = *&v23[OBJC_IVAR____TtC22SubscribePageExtension36ProductDescriptionCollectionViewCell_bodyTextView];
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v30 = v29;
  sub_100752A74();
  sub_10000C8CC(&v39, &unk_100923520);
  sub_10000C8CC(&v41, &unk_100923520);
  sub_100753C74();

  v31 = *(v11 + 8);
  v31(v13, v10);
  v32 = OBJC_IVAR____TtC22SubscribePageExtension36ProductDescriptionCollectionViewCell_developerLinkView;
  v33 = *&v23[OBJC_IVAR____TtC22SubscribePageExtension36ProductDescriptionCollectionViewCell_developerLinkView];
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v34 = v33;
  sub_100752A74();
  sub_10000C8CC(&v39, &unk_100923520);
  sub_10000C8CC(&v41, &unk_100923520);
  sub_100753C74();

  v31(v13, v10);
  v35 = [v23 contentView];
  [v35 addSubview:*&v23[v28]];

  v36 = [v23 contentView];
  [v36 addSubview:*&v23[OBJC_IVAR____TtC22SubscribePageExtension36ProductDescriptionCollectionViewCell_tagRibbonView]];

  v37 = [v23 contentView];
  [v37 addSubview:*&v23[v32]];

  return v23;
}

uint64_t sub_100706F1C()
{
  v1 = v0;
  v26 = sub_100750354();
  v2 = *(v26 - 8);
  __chkstk_darwin(v26);
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10074AF74();
  __chkstk_darwin(v5 - 8);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_10074AF94();
  v8 = *(v25 - 8);
  __chkstk_darwin(v25);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ProductDescriptionCollectionViewCell();
  v38.receiver = v0;
  v38.super_class = v11;
  objc_msgSendSuper2(&v38, "layoutSubviews");
  v12 = [v0 contentView];
  sub_100016C60(0, &qword_100922300);
  sub_1007477B4();

  v13 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension36ProductDescriptionCollectionViewCell_tagRibbonView];
  type metadata accessor for RibbonBarItemCollectionViewCell();

  v14 = sub_1007532D4();

  v15 = 0;
  if (v14)
  {
    v16 = v13;
    v15 = v13;
  }

  sub_1007065A0(v7);
  v17 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension36ProductDescriptionCollectionViewCell_bodyTextView];
  v36 = type metadata accessor for ExpandableTextView();
  v37 = &protocol witness table for UIView;
  v35 = v17;
  v18 = 0;
  if (v15)
  {
    v18 = type metadata accessor for TagFacetRibbonView();
    v19 = &protocol witness table for UIView;
  }

  else
  {
    v19 = 0;
    v31 = 0;
    v32 = 0;
  }

  v30 = v15;
  v33 = v18;
  v34 = v19;
  v20 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension36ProductDescriptionCollectionViewCell_developerLinkView];
  v28 = type metadata accessor for DeveloperLinkView();
  v29 = &protocol witness table for UIView;
  v27 = v20;
  v21 = v17;
  v22 = v15;
  v23 = v20;
  sub_10074AF84();
  sub_10074AF54();

  (*(v2 + 8))(v4, v26);
  return (*(v8 + 8))(v10, v25);
}

double sub_1007072A8(void *a1, void *a2, uint64_t a3, double a4, double a5)
{
  v10 = sub_10000C518(&unk_100928A40);
  __chkstk_darwin(v10 - 8);
  v12 = &v42 - v11;
  if (a2)
  {
    v13 = a5 >= a4 ? a4 : a5;
    if (v13 != 0.0)
    {
      left = UIEdgeInsetsZero.left;
      bottom = UIEdgeInsetsZero.bottom;
      right = UIEdgeInsetsZero.right;
      v17 = a2;
      v18 = [a1 traitCollection];
      v19 = type metadata accessor for ExpandableTextView.MeasurementsCacheKey();
      v20 = objc_allocWithZone(v19);
      v21 = &v20[OBJC_IVAR____TtCC22SubscribePageExtension18ExpandableTextViewP33_177A8550F09467BBA030D3A485389D2420MeasurementsCacheKey_layoutMargins];
      *v21 = UIEdgeInsetsZero.top;
      v21[1] = left;
      v21[2] = bottom;
      v21[3] = right;
      *&v20[OBJC_IVAR____TtCC22SubscribePageExtension18ExpandableTextViewP33_177A8550F09467BBA030D3A485389D2420MeasurementsCacheKey_numberOfLines] = a3;
      v22 = &v20[OBJC_IVAR____TtCC22SubscribePageExtension18ExpandableTextViewP33_177A8550F09467BBA030D3A485389D2420MeasurementsCacheKey_fittingSize];
      *v22 = a4;
      v22[1] = a5;
      *&v20[OBJC_IVAR____TtCC22SubscribePageExtension18ExpandableTextViewP33_177A8550F09467BBA030D3A485389D2420MeasurementsCacheKey_traitCollection] = v18;
      *&v20[OBJC_IVAR____TtCC22SubscribePageExtension18ExpandableTextViewP33_177A8550F09467BBA030D3A485389D2420MeasurementsCacheKey_attributedText] = v17;
      v43.receiver = v20;
      v43.super_class = v19;
      v23 = objc_msgSendSuper2(&v43, "init");
      if (qword_1009206A8 != -1)
      {
        swift_once();
      }

      v24 = qword_10092F470;
      v25 = [qword_10092F470 objectForKey:v23];
      if (v25)
      {
        v26 = v25;

        a4 = *&v26[OBJC_IVAR____TtCC22SubscribePageExtension18ExpandableTextViewP33_177A8550F09467BBA030D3A485389D2410CacheValue_measurements];
      }

      else
      {
        v27 = qword_1009206A0;
        v26 = v17;
        if (v27 != -1)
        {
          swift_once();
        }

        v28 = sub_100750534();
        v29 = sub_10000D0FC(v28, qword_10092F458);
        v30 = *(v28 - 8);
        (*(v30 + 16))(v12, v29, v28);
        (*(v30 + 56))(v12, 0, 1, v28);
        sub_100750964();
        sub_100750984();
        sub_100750974();
        v32 = v31;
        v34 = v33;
        v36 = v35;

        sub_10000C8CC(v12, &unk_100928A40);
        v37 = type metadata accessor for ExpandableTextView.CacheValue();
        v38 = objc_allocWithZone(v37);
        v39 = &v38[OBJC_IVAR____TtCC22SubscribePageExtension18ExpandableTextViewP33_177A8550F09467BBA030D3A485389D2410CacheValue_measurements];
        *v39 = a4;
        v39[1] = UIEdgeInsetsZero.top + bottom + v32;
        *(v39 + 2) = v34;
        *(v39 + 3) = v36;
        v42.receiver = v38;
        v42.super_class = v37;
        v40 = objc_msgSendSuper2(&v42, "init");
        [v24 setObject:v40 forKey:v23];
      }
    }
  }

  return a4;
}

void sub_100707650(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v9 = sub_100748EF4();
  __chkstk_darwin(v9 - 8);
  v10 = sub_100748F04();
  v11 = *(v10 - 8);
  *&v12 = __chkstk_darwin(v10).n128_u64[0];
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = [a5 traitCollection];
  sub_100744704();
  if ((sub_1007532D4() & 1) == 0)
  {

    return;
  }

  v30 = a3;
  v16 = sub_100753824();
  v31 = _swiftEmptyArrayStorage;
  if (!(a2 >> 62))
  {
    v17 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v29 = v16;
    if (v17)
    {
      goto LABEL_4;
    }

LABEL_18:
    v20 = _swiftEmptyArrayStorage;
LABEL_19:
    sub_10015813C(v20);

    sub_100748EE4();
    sub_100748EB4();
    sub_100751034();
    sub_10000C518(&unk_1009231A0);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_1007A5CF0;
    v23 = v29;
    *(v22 + 32) = v29;
    v24 = v23;
    v25 = sub_100751044();
    sub_100748EC4();

    (*(v11 + 8))(v14, v10);
    return;
  }

  v21 = v16;
  v17 = sub_100754664();
  v29 = v21;
  if (!v17)
  {
    goto LABEL_18;
  }

LABEL_4:
  if (v17 >= 1)
  {
    v26 = a4;
    v27 = v11;
    v28 = v10;
    if ((a2 & 0xC000000000000001) != 0)
    {
      v18 = 0;
      do
      {
        sub_100754574();
        sub_100750F34();
        swift_allocObject();
        swift_unknownObjectRetain();
        sub_100750EF4();

        sub_100753284();
        if (*((v31 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v31 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_100753304();
        }

        ++v18;
        sub_100753344();

        swift_unknownObjectRelease();
      }

      while (v17 != v18);
    }

    else
    {
      v19 = a2 + 32;
      sub_100750F34();
      do
      {
        swift_allocObject();
        swift_retain_n();
        sub_100750EF4();

        sub_100753284();
        if (*((v31 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v31 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_100753304();
        }

        sub_100753344();

        v19 += 8;
        --v17;
      }

      while (v17);
    }

    v20 = v31;
    v11 = v27;
    v10 = v28;
    goto LABEL_19;
  }

  __break(1u);
}

uint64_t sub_100707ABC()
{
  v1 = OBJC_IVAR____TtC22SubscribePageExtension36ProductDescriptionCollectionViewCell_impressionsCalculator;
  swift_beginAccess();
  if (*(v0 + v1))
  {

    sub_100749574();
  }

  *(v0 + v1) = 0;

  v2 = (v0 + OBJC_IVAR____TtC22SubscribePageExtension36ProductDescriptionCollectionViewCell_impressionsUpdateBlock);
  swift_beginAccess();
  v3 = *v2;
  *v2 = 0;
  v2[1] = 0;
  sub_1000164A8(v3);
  type metadata accessor for TagFacetRibbonView();
  sub_100708750(&unk_1009475C0, type metadata accessor for TagFacetRibbonView);
  return sub_10074D3B4();
}

id sub_100707BC4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ProductDescriptionCollectionViewCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for ProductDescriptionCollectionViewCell()
{
  result = qword_1009475A8;
  if (!qword_1009475A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100707CF0()
{
  sub_100016898();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_100707DFC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC22SubscribePageExtension36ProductDescriptionCollectionViewCell_impressionsCalculator;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_100707EB4()
{
  v1 = (v0 + OBJC_IVAR____TtC22SubscribePageExtension36ProductDescriptionCollectionViewCell_impressionsUpdateBlock);
  swift_beginAccess();
  v2 = *v1;
  sub_10001B5AC(*v1);
  return v2;
}

uint64_t sub_100707F10(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC22SubscribePageExtension36ProductDescriptionCollectionViewCell_impressionsUpdateBlock);
  swift_beginAccess();
  v6 = *v5;
  *v5 = a1;
  v5[1] = a2;
  return sub_1000164A8(v6);
}

uint64_t sub_100707FD0()
{
  type metadata accessor for TagFacetRibbonView();
  sub_100708750(&unk_1009475C0, type metadata accessor for TagFacetRibbonView);
  return sub_10074D3C4();
}

uint64_t sub_100708060(double a1, double a2, uint64_t a3, void *a4)
{
  v6 = sub_10074AF74();
  __chkstk_darwin(v6 - 8);
  v40 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10074AF94();
  v42 = *(v8 - 8);
  v43 = v8;
  __chkstk_darwin(v8);
  v41 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100747AA4();
  v10 = sub_10074F914();

  v44 = a4;
  v11 = [a4 traitCollection];
  v12 = [objc_allocWithZone(NSMutableAttributedString) initWithAttributedString:v10];
  v45 = [v10 length];
  v13 = swift_allocObject();
  *(v13 + 16) = 0;
  *(v13 + 24) = v11;
  *(v13 + 32) = v12;
  *(v13 + 40) = 1;
  v14 = swift_allocObject();
  *(v14 + 16) = sub_100047814;
  *(v14 + 24) = v13;
  v55 = sub_1000B18A8;
  v56 = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100047044;
  v54 = &unk_100882410;
  v15 = _Block_copy(aBlock);
  v16 = v11;
  v17 = v12;

  [v10 enumerateAttributesInRange:0 options:v45 usingBlock:{0x100000, v15}];

  _Block_release(v15);
  LOBYTE(v10) = swift_isEscapingClosureAtFileLocation();

  if (v10)
  {
    __break(1u);
  }

  else
  {
    v19 = v17;
    v20 = sub_100747A94();
    v21 = sub_100747A84();
    v22 = sub_100747A74();
    if (sub_100747A64())
    {
      v45 = sub_10074ECB4();
      v24 = v23;
    }

    else
    {
      v45 = 0;
      v24 = 0;
    }

    type metadata accessor for ProductDescriptionCollectionViewCell();
    v25 = swift_allocObject();
    *(v25 + 16) = v19;
    *(v25 + 24) = 4;
    v26 = sub_100750F34();
    swift_allocObject();
    v27 = v19;
    v28 = sub_100750EF4();
    v54 = v26;
    v55 = &protocol witness table for LayoutViewPlaceholder;
    aBlock[0] = v28;
    v29 = swift_allocObject();
    v29[2] = v20;
    v29[3] = v21;
    v29[4] = v22;
    v29[5] = v44;
    swift_allocObject();

    swift_unknownObjectRetain();
    v30 = sub_100750EF4();
    v52[3] = v26;
    v52[4] = &protocol witness table for LayoutViewPlaceholder;
    v52[0] = v30;
    v31 = type metadata accessor for DeveloperLinkView();
    v32 = swift_allocObject();
    v33 = v45;
    v32[2] = v31;
    v32[3] = v33;
    v32[4] = v24;
    swift_allocObject();
    v34 = sub_100750EF4();
    v51[3] = v26;
    v51[4] = &protocol witness table for LayoutViewPlaceholder;
    v51[0] = v34;
    sub_100744704();
    LOBYTE(v31) = sub_1007532D4();

    if (v31)
    {
      sub_10000C824(v52, v49);
    }

    else
    {
      v50 = 0;
      memset(v49, 0, sizeof(v49));
    }

    sub_1007065A0(v40);
    sub_10000C824(aBlock, &v48);
    sub_10000C824(v52, &v47);
    sub_10000C824(v51, &v46);
    v35 = v41;
    sub_10074AF84();
    sub_100708750(&qword_100930650, &type metadata accessor for ProductDescriptionLayout);
    v36 = v43;
    sub_100750404();
    v38 = v37;

    (*(v42 + 8))(v35, v36);
    sub_10000C8CC(v49, &unk_100928A00);
    sub_10000C620(v51);
    sub_10000C620(v52);
    sub_10000C620(aBlock);
    return v38 > a2;
  }

  return result;
}

uint64_t sub_100708628()
{

  return _swift_deallocObject(v0, 41, 7);
}

uint64_t sub_100708680(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100708698()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1007086D0()
{

  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100708710()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100708750(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10070879C(char a1)
{
  v2 = sub_10000C518(&qword_100923E88);
  __chkstk_darwin(v2 - 8);
  v58 = &v45 - v3;
  v56 = sub_10074F654();
  v4 = *(v56 - 8);
  __chkstk_darwin(v56);
  v6 = (&v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_10000C518(&qword_100923230);
  __chkstk_darwin(v7 - 8);
  v52 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v49.i64[0] = &v45 - v10;
  __chkstk_darwin(v11);
  v13 = &v45 - v12;
  __chkstk_darwin(v14);
  v61 = &v45 - v15;
  __chkstk_darwin(v16);
  v18 = &v45 - v17;
  __chkstk_darwin(v19);
  sub_10000C518(&qword_100923E90);
  v20 = *(sub_10074F584() - 8);
  v57 = *(v20 + 72);
  v21 = (*(v20 + 80) + 32) & ~*(v20 + 80);
  v22 = swift_allocObject();
  v50 = v22;
  *(v22 + 16) = xmmword_1007A7250;
  v54 = v22 + v21;
  if (a1)
  {
    v23 = 1.5;
  }

  else
  {
    v23 = 2.0;
  }

  v63 = *&v23;
  sub_10001CC10();
  sub_10074F614();
  v62 = 0x4030000000000000;
  v63 = 0x4020000000000000;
  sub_10074F5F4();
  v63 = 0x4034000000000000;
  sub_10074F614();
  __asm { FMOV            V0.2D, #16.0 }

  *v6 = _Q0;
  v60 = enum case for PageGrid.HorizontalMargins.absolute(_:);
  v29 = *(v4 + 104);
  v59 = v4 + 104;
  v55 = v29;
  v30 = v56;
  (v29)(v6);
  left = UIEdgeInsetsZero.left;
  LOBYTE(v63) = 0;
  sub_10074F614();
  v63 = 0;
  v45 = v13;
  sub_10074F614();
  v53 = v18;
  sub_10074F544();
  v63 = *&v23;
  sub_10074F614();
  v62 = 0x4034000000000000;
  v63 = 0x4024000000000000;
  sub_10074F5F4();
  v63 = 0x4034000000000000;
  sub_10074F614();
  __asm { FMOV            V0.2D, #20.0 }

  *v6 = _Q0;
  v33 = v60;
  v34 = v55;
  v55(v6, v60, v30);
  LOBYTE(v63) = 0;
  sub_10074F614();
  v63 = 0;
  sub_10074F614();
  v35 = v57;
  top = UIEdgeInsetsZero.top;
  v48 = left;
  sub_10074F544();
  v46 = 2 * v35;
  v63 = 0x4008000000000000;
  sub_10074F614();
  v63 = 0x4034000000000000;
  sub_10074F614();
  v63 = 0x4034000000000000;
  sub_10074F614();
  v49 = vdupq_n_s64(0x4041000000000000uLL);
  v51 = v6;
  *v6 = v49;
  v36 = v56;
  v34(v6, v33, v56);
  LOBYTE(v63) = 0;
  sub_10074F614();
  v63 = 0;
  sub_10074F614();
  v37 = v46;
  v38 = v51;
  sub_10074F544();
  v39 = v57;
  v46 = v37 + v57;
  v63 = 0x4010000000000000;
  sub_10074F614();
  v63 = 0x4034000000000000;
  sub_10074F614();
  v63 = 0x4034000000000000;
  sub_10074F614();
  *v38 = v49;
  v40 = v36;
  v41 = v55;
  v55(v38, v60, v40);
  sub_1007535A4();
  LOBYTE(v63) = 0;
  sub_10074F614();
  v63 = 0;
  sub_10074F614();
  v42 = v51;
  sub_10074F544();
  v46 = 4 * v39;
  v63 = 0x4014000000000000;
  sub_10074F614();
  v63 = 0x4038000000000000;
  sub_10074F614();
  v63 = 0x4034000000000000;
  sub_10074F614();
  v49 = vdupq_n_s64(0x404A000000000000uLL);
  *v42 = v49;
  v43 = v56;
  v41(v42, v60, v56);
  LOBYTE(v63) = 0;
  sub_10074F614();
  v63 = 0;
  sub_10074F614();
  sub_10074F544();
  v63 = 0x4018000000000000;
  sub_10074F614();
  v63 = 0x4038000000000000;
  sub_10074F614();
  v63 = 0x4034000000000000;
  sub_10074F614();
  *v42 = v49;
  v55(v42, v60, v43);
  LOBYTE(v63) = 0;
  sub_10074F614();
  v63 = 0;
  sub_10074F614();
  sub_10074F544();
  return v50;
}

uint64_t sub_1007091D8()
{
  v0 = sub_100743B04();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v4, enum case for SystemImage.chevronForward(_:), v0, v2);
  v5 = sub_100743AE4();
  result = (*(v1 + 8))(v4, v0);
  qword_1009475D0 = v5;
  return result;
}

uint64_t sub_1007092D0()
{
  v2._object = 0x800000010078CC00;
  v2._countAndFlagsBits = 0xD000000000000016;
  v3._countAndFlagsBits = 0;
  v3._object = 0xE000000000000000;
  result = sub_1007458B4(v2, v3);
  qword_1009475D8 = result;
  unk_1009475E0 = v1;
  return result;
}

uint64_t sub_100709314()
{
  v0 = sub_10000C518(&qword_10092AC90);
  sub_100039C50(v0, qword_1009475E8);
  sub_10000D0FC(v0, qword_1009475E8);
  sub_10000C518(&unk_100923AE0);
  type metadata accessor for NSTextAlignment(0);
  return sub_100743564();
}

void sub_1007093B0(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 traitCollection];
  if (sub_1007537D4() & 1) != 0 || (sub_100753804())
  {
    v4 = sub_1007537F4();

    v5 = 2;
    if ((v4 & 1) == 0)
    {
      v5 = 0;
    }
  }

  else
  {
    v6 = sub_1007537F4();

    v5 = 2;
    if (v6)
    {
      v5 = 0;
    }
  }

  *a2 = v5;
}

uint64_t sub_10070943C()
{
  v0 = sub_100750B04();
  __chkstk_darwin(v0 - 8);
  v17[2] = v17 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_100750304();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10000C518(&unk_1009249B0);
  __chkstk_darwin(v6 - 8);
  v7 = sub_10074AF24();
  sub_100039C50(v7, qword_100983088);
  v17[1] = sub_10000D0FC(v7, qword_100983088);
  if (qword_100921150 != -1)
  {
    swift_once();
  }

  v8 = sub_100750534();
  v9 = sub_10000D0FC(v8, qword_100981128);
  v10 = *(*(v8 - 8) + 16);
  v10(v5, v9, v8);
  v11 = enum case for FontSource.useCase(_:);
  v12 = *(v3 + 104);
  v12(v5, enum case for FontSource.useCase(_:), v2);
  sub_1007434E4();
  if (qword_100921158 != -1)
  {
    swift_once();
  }

  v13 = sub_10000D0FC(v8, qword_100981140);
  v10(v5, v13, v8);
  v12(v5, v11, v2);
  v19 = v2;
  v20 = &protocol witness table for FontSource;
  v14 = sub_10000D134(v18);
  (*(v3 + 16))(v14, v5, v2);
  sub_100750B14();
  (*(v3 + 8))(v5, v2);
  v19 = &type metadata for Double;
  v20 = &protocol witness table for Double;
  v18[0] = 0x4030000000000000;
  if (qword_100921DE0 != -1)
  {
    swift_once();
  }

  v15 = qword_1009475D0;
  [v15 size];

  return sub_10074AF14();
}

char *sub_1007097E0(double a1, double a2, double a3, double a4)
{
  v9 = sub_10074AB44();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v56 = &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10000C518(&unk_100928A40);
  __chkstk_darwin(v12 - 8);
  v14 = &v52 - v13;
  v15 = &v4[OBJC_IVAR____TtC22SubscribePageExtension17DeveloperLinkView_tapHandler];
  *v15 = 0;
  *(v15 + 1) = 0;
  v16 = [objc_allocWithZone(UIImageView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v57 = v4;
  *&v4[OBJC_IVAR____TtC22SubscribePageExtension17DeveloperLinkView_disclosureImageView] = v16;
  if (qword_100921150 != -1)
  {
    swift_once();
  }

  v17 = sub_100750534();
  v18 = sub_10000D0FC(v17, qword_100981128);
  v19 = *(v17 - 8);
  v55 = *(v19 + 16);
  v55(v14, v18, v17);
  v20 = *(v19 + 56);
  v20(v14, 0, 1, v17);
  v21 = enum case for DirectionalTextAlignment.none(_:);
  v54 = *(v10 + 104);
  v54(v56, enum case for DirectionalTextAlignment.none(_:), v9);
  v22 = sub_100745C84();
  v53 = v9;
  v23 = v22;
  v24 = objc_allocWithZone(v22);
  *&v57[OBJC_IVAR____TtC22SubscribePageExtension17DeveloperLinkView_primaryLabel] = sub_100745C74();
  if (qword_100921158 != -1)
  {
    swift_once();
  }

  v25 = sub_10000D0FC(v17, qword_100981140);
  v55(v14, v25, v17);
  v20(v14, 0, 1, v17);
  v54(v56, v21, v53);
  v26 = objc_allocWithZone(v23);
  v27 = sub_100745C74();
  v28 = v57;
  *&v57[OBJC_IVAR____TtC22SubscribePageExtension17DeveloperLinkView_secondaryLabel] = v27;
  v29 = type metadata accessor for DeveloperLinkView();
  v60.receiver = v28;
  v60.super_class = v29;
  v30 = objc_msgSendSuper2(&v60, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v34 = v30;
  [v34 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v35 = OBJC_IVAR____TtC22SubscribePageExtension17DeveloperLinkView_disclosureImageView;
  v36 = *&v34[OBJC_IVAR____TtC22SubscribePageExtension17DeveloperLinkView_disclosureImageView];
  sub_100016C60(0, &qword_100923500);
  v37 = v36;
  v38 = sub_100753DF4();
  [v37 setTintColor:v38];

  v39 = qword_100921DE0;
  v40 = *&v34[v35];
  if (v39 != -1)
  {
    swift_once();
  }

  [v40 setImage:qword_1009475D0];

  if (qword_100921DF0 != -1)
  {
    swift_once();
  }

  v41 = sub_10000C518(&qword_10092AC90);
  sub_10000D0FC(v41, qword_1009475E8);
  v58 = v34;
  v42 = v34;
  sub_100743464();

  v43 = v59;
  v44 = OBJC_IVAR____TtC22SubscribePageExtension17DeveloperLinkView_primaryLabel;
  [*&v42[OBJC_IVAR____TtC22SubscribePageExtension17DeveloperLinkView_primaryLabel] setTextAlignment:v59];
  [*&v42[v44] _setTextColorFollowsTintColor:1];
  v45 = OBJC_IVAR____TtC22SubscribePageExtension17DeveloperLinkView_secondaryLabel;
  [*&v42[OBJC_IVAR____TtC22SubscribePageExtension17DeveloperLinkView_secondaryLabel] setTextAlignment:v43];
  v46 = *&v42[v45];
  v61._object = 0x800000010078CC00;
  v61._countAndFlagsBits = 0xD000000000000016;
  v62._countAndFlagsBits = 0;
  v62._object = 0xE000000000000000;
  sub_1007458B4(v61, v62);
  v47 = sub_100753064();

  [v46 setText:v47];

  v48 = *&v42[v45];
  v49 = sub_100753DF4();
  [v48 setTextColor:v49];

  v50 = [objc_allocWithZone(UITapGestureRecognizer) initWithTarget:v42 action:"didTapLink:"];
  [v42 addGestureRecognizer:v50];
  [v42 addSubview:*&v34[v35]];
  [v42 addSubview:*&v42[v44]];
  [v42 addSubview:*&v42[v45]];

  return v42;
}

uint64_t sub_100709ED8()
{
  v1 = v0;
  v2 = sub_100750354();
  v28 = *(v2 - 8);
  v29 = v2;
  __chkstk_darwin(v2);
  v27 = v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10074AF24();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_10074AF44();
  v8 = *(v26 - 8);
  __chkstk_darwin(v26);
  v10 = v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DeveloperLinkView();
  v39.receiver = v0;
  v39.super_class = v11;
  v25[1] = v11;
  objc_msgSendSuper2(&v39, "layoutSubviews");
  v12 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension17DeveloperLinkView_disclosureImageView];
  v13 = [v0 traitCollection];
  v14 = sub_1007537E4();

  if (v14)
  {
    v15 = 1;
  }

  else
  {
    v16 = [v1 traitCollection];
    v15 = sub_100753804();
  }

  [v12 setHidden:v15 & 1];
  if (qword_100921DF8 != -1)
  {
    swift_once();
  }

  v17 = sub_10000D0FC(v4, qword_100983088);
  (*(v5 + 16))(v7, v17, v4);
  v18 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension17DeveloperLinkView_primaryLabel];
  v37 = sub_100745C84();
  v38 = &protocol witness table for UILabel;
  v35 = &protocol witness table for UILabel;
  v36 = v18;
  v19 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension17DeveloperLinkView_secondaryLabel];
  v34 = v37;
  v33 = v19;
  v31 = sub_100016C60(0, &qword_10092BFC0);
  v32 = &protocol witness table for UIView;
  v30 = v12;
  v20 = v18;
  v21 = v19;
  v22 = v12;
  sub_10074AF34();
  sub_1007477B4();
  v23 = v27;
  sub_10074AF04();
  (*(v28 + 8))(v23, v29);
  return (*(v8 + 8))(v10, v26);
}

double sub_10070A2B0()
{
  v1 = sub_10074AF24();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10074AF44();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100921DF8 != -1)
  {
    swift_once();
  }

  v9 = sub_10000D0FC(v1, qword_100983088);
  (*(v2 + 16))(v4, v9, v1);
  v10 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension17DeveloperLinkView_primaryLabel);
  v20 = sub_100745C84();
  v21 = &protocol witness table for UILabel;
  v19[10] = &protocol witness table for UILabel;
  v19[11] = v10;
  v11 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension17DeveloperLinkView_secondaryLabel);
  v19[9] = v20;
  v19[6] = v11;
  v12 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension17DeveloperLinkView_disclosureImageView);
  v19[4] = sub_100016C60(0, &qword_10092BFC0);
  v19[5] = &protocol witness table for UIView;
  v19[1] = v12;
  v13 = v10;
  v14 = v11;
  v15 = v12;
  sub_10074AF34();
  sub_10074AEF4();
  v17 = v16;
  (*(v6 + 8))(v8, v5);
  return v17;
}

double sub_10070A5B8(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v44 = a4;
  v43 = a3;
  v47 = sub_10074CD14();
  v46 = *(v47 - 8);
  __chkstk_darwin(v47);
  v45 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v39 - v7;
  v9 = sub_10074AF24();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v52 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_10074AF44();
  v49 = *(v50 - 8);
  *&v12 = __chkstk_darwin(v50).n128_u64[0];
  v48 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = [a1 traitCollection];
  v15 = sub_1007537E4();

  v16 = 2;
  if ((v15 & 1) == 0)
  {
    v16 = 0;
  }

  v42 = v16;
  sub_100016C60(0, &qword_100923AB0);
  if (qword_100921150 != -1)
  {
    swift_once();
  }

  v17 = sub_100750534();
  sub_10000D0FC(v17, qword_100981128);
  v18 = [a1 traitCollection];
  v19 = sub_100753C14();

  if (qword_100921158 != -1)
  {
    swift_once();
  }

  sub_10000D0FC(v17, qword_100981140);
  v51 = a1;
  v20 = [a1 traitCollection];
  v41 = sub_100753C14();

  if (qword_100921DF8 != -1)
  {
    swift_once();
  }

  v21 = sub_10000D0FC(v9, qword_100983088);
  (*(v10 + 16))(v52, v21, v9);
  v22 = sub_10074F3F4();
  v57[3] = v22;
  v40 = sub_1001FC0C4();
  v57[4] = v40;
  v23 = sub_10000D134(v57);
  v24 = enum case for Feature.measurement_with_labelplaceholder(_:);
  v25 = *(*(v22 - 8) + 104);
  v25(v23, enum case for Feature.measurement_with_labelplaceholder(_:), v22);

  v26 = v19;
  sub_10074FC74();
  sub_10000C620(v57);
  v44 = v26;
  sub_10074CD04();
  sub_10074CCE4();
  v27 = *(v46 + 8);
  v28 = v8;
  v29 = v47;
  v27(v28, v47);
  if (qword_100921DE8 != -1)
  {
    swift_once();
  }

  v56[3] = v22;
  v56[4] = v40;
  v30 = sub_10000D134(v56);
  v25(v30, v24, v22);

  v31 = v41;
  sub_10074FC74();
  sub_10000C620(v56);
  v32 = v45;
  sub_10074CD04();
  sub_10074CCE4();
  v27(v32, v29);
  if (qword_100921DE0 != -1)
  {
    swift_once();
  }

  [qword_1009475D0 size];
  v33 = sub_100750F34();
  swift_allocObject();
  v34 = sub_100750F14();
  v54 = v33;
  v55 = &protocol witness table for LayoutViewPlaceholder;
  v53 = v34;
  v35 = v48;
  sub_10074AF34();
  sub_10074AEF4();
  v37 = v36;

  (*(v49 + 8))(v35, v50);
  return v37;
}

id sub_10070ACFC(void *a1)
{
  v9.receiver = v1;
  v9.super_class = type metadata accessor for DeveloperLinkView();
  objc_msgSendSuper2(&v9, "traitCollectionDidChange:", a1);
  v3 = [v1 traitCollection];
  v4 = [v3 layoutDirection];

  if (!a1 || (result = [a1 layoutDirection], v4 != result))
  {
    if (qword_100921DF0 != -1)
    {
      swift_once();
    }

    v6 = sub_10000C518(&qword_10092AC90);
    sub_10000D0FC(v6, qword_1009475E8);
    v7 = v1;
    sub_100743464();

    [*&v7[OBJC_IVAR____TtC22SubscribePageExtension17DeveloperLinkView_primaryLabel] setTextAlignment:{v8, v1}];
    return [*&v7[OBJC_IVAR____TtC22SubscribePageExtension17DeveloperLinkView_secondaryLabel] setTextAlignment:v8];
  }

  return result;
}

id sub_10070AED8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DeveloperLinkView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10070AFA0()
{
  sub_10000C518(&unk_10093E480);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1007A7250;
  *(inited + 32) = UIActivityTypeAirDrop;
  *(inited + 40) = UIActivityTypeCopyToPasteboard;
  *(inited + 48) = UIActivityTypeMessage;
  *(inited + 56) = UIActivityTypePostToFacebook;
  *(inited + 64) = UIActivityTypePostToTwitter;
  *(inited + 72) = UIActivityTypePostToWeibo;
  v1 = UIActivityTypeAirDrop;
  v2 = UIActivityTypeCopyToPasteboard;
  v3 = UIActivityTypeMessage;
  v4 = UIActivityTypePostToFacebook;
  v5 = UIActivityTypePostToTwitter;
  v6 = UIActivityTypePostToWeibo;
  v7 = sub_1001A92FC(inited);
  swift_setDeallocating();
  type metadata accessor for ActivityType(0);
  result = swift_arrayDestroy();
  qword_100947648 = v7;
  return result;
}

double sub_10070B0B0@<D0>(void *a1@<X1>, _OWORD *a2@<X8>)
{
  if (a1 && (v4 = *(v2 + OBJC_IVAR____TtC22SubscribePageExtension27ArtworkActivityItemProvider_excludedActivityTypes), v5 = a1, LOBYTE(v4) = sub_1002A5630(v5, v4), v5, (v4 & 1) != 0) || (, sub_10000C518(&qword_1009476A8), sub_10074E034(), , !v7))
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  else
  {
    v9 = sub_100016C60(0, &qword_10092B280);
    *&v8 = v7;
    sub_10000C610(&v8, a2);
  }

  return result;
}

id sub_10070B1A0@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  *a2 = v2;
  return v2;
}

void sub_10070B37C(void *a1@<X8>)
{
  v3 = sub_100752244();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v8 = __chkstk_darwin(v7).n128_u64[0];
  v10 = &v22 - v9;
  v11 = [v1 activityType];
  if (!v11)
  {
    goto LABEL_4;
  }

  v12 = v11;
  if (sub_1002A5630(v11, *&v1[OBJC_IVAR____TtC22SubscribePageExtension27ArtworkActivityItemProvider_excludedActivityTypes]))
  {

LABEL_4:
    v13 = [objc_allocWithZone(UIImage) init];
    a1[3] = sub_100016C60(0, &qword_10092B280);
    *a1 = v13;
    return;
  }

  v14 = dispatch_semaphore_create(0);
  v22 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension27ArtworkActivityItemProvider_artworkLoader];
  v25 = 0;
  memset(v24, 0, sizeof(v24));
  v15 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v16 = swift_allocObject();
  v23 = a1;
  *(v16 + 16) = v14;
  *(v16 + 24) = v15;
  v17 = v14;

  sub_1007441F4();

  sub_100416858(v24);

  sub_100752234();
  sub_1007522B4();
  v18 = *(v4 + 8);
  v18(v6, v3);
  sub_100753904();
  v18(v10, v3);
  v19 = v23;

  sub_10000C518(&qword_1009476A8);
  sub_10074E034();

  v20 = *&v24[0];
  v19[3] = sub_100016C60(0, &qword_10092B280);
  if (v20)
  {

    *v19 = v20;
  }

  else
  {
    v21 = [objc_allocWithZone(UIImage) init];

    *v19 = v21;
  }
}

Swift::Int sub_10070B6A8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v41 = a5;
  v6 = sub_10074F314();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v37 - v11;
  v13 = sub_1007504F4();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return sub_100753914();
  }

  v18 = Strong;
  if (!a1)
  {

    return sub_100753914();
  }

  v39 = OBJC_IVAR____TtC22SubscribePageExtension27ArtworkActivityItemProvider_artworkConfig;
  v38 = a1;

  sub_100747FB4();
  v20 = v19;
  v22 = v21;

  v40 = [objc_allocWithZone(sub_1007433C4()) initWithFrame:{0.0, 0.0, v20, v22}];
  [v40 setOpaque:0];
  sub_100750504();
  v23 = sub_1007504E4();
  (*(v14 + 8))(v16, v13);
  if (v23)
  {
    if (v18[OBJC_IVAR____TtC22SubscribePageExtension27ArtworkActivityItemProvider_enablePrerenderedIconArtwork])
    {
      v24 = &enum case for Artwork.Style.roundedRectPrerendered(_:);
    }

    else
    {
      v24 = &enum case for Artwork.Style.roundedRect(_:);
    }

    (*(v7 + 104))(v12, *v24, v6);
  }

  else
  {
    (*(v7 + 104))(v9, enum case for Artwork.Style.unadorned(_:), v6);
  }

  v26 = v40;
  sub_100743364();
  v27 = v38;
  sub_100743344();
  sub_100016C60(0, &qword_1009476B0);
  v28 = [swift_getObjCClassFromMetadata() defaultFormat];
  sub_100747FC4();
  [v28 setScale:?];
  [v28 setOpaque:0];
  [v27 size];
  v31 = [objc_allocWithZone(UIGraphicsImageRenderer) initWithSize:v28 format:{v29, v30}];
  v32 = swift_allocObject();
  *(v32 + 16) = v26;
  v33 = swift_allocObject();
  *(v33 + 16) = sub_10070BDB8;
  *(v33 + 24) = v32;
  aBlock[4] = sub_10070BE18;
  aBlock[5] = v33;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10002684C;
  aBlock[3] = &unk_100882550;
  v34 = _Block_copy(aBlock);
  v35 = v26;

  v36 = [v31 imageWithActions:v34];
  _Block_release(v34);
  LOBYTE(v34) = swift_isEscapingClosureAtFileLocation();

  if (v34)
  {
    __break(1u);
  }

  else
  {
    __chkstk_darwin(result);
    *(&v37 - 2) = v36;

    sub_10074E054();

    sub_100753914();
  }

  return result;
}

id sub_10070BC2C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ArtworkActivityItemProvider();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10070BD00()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10070BD38()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10070BD80()
{

  return _swift_deallocObject(v0, 24, 7);
}

id sub_10070BDB8()
{
  v1 = *(v0 + 16);
  [v1 bounds];

  return [v1 drawViewHierarchyInRect:1 afterScreenUpdates:?];
}

uint64_t sub_10070BE20(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_10070BE38(id *a1)
{
  v4 = *(v1 + 16);

  *a1 = v4;

  return v4;
}

uint64_t sub_10070BE8C@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC22SubscribePageExtension29PlaceholderCollectionViewCell_itemLayoutContext;
  swift_beginAccess();
  return sub_100020514(v1 + v3, a1);
}

uint64_t sub_10070BEE8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC22SubscribePageExtension29PlaceholderCollectionViewCell_itemLayoutContext;
  swift_beginAccess();
  sub_1000204A4(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_10070BFB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_10070CD88(&qword_1009411A0, type metadata accessor for PlaceholderCollectionViewCell);

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, v5, a5, v10);
}

uint64_t sub_10070C04C(uint64_t a1)
{
  v3 = sub_10074EAB4();
  v83 = *(v3 - 8);
  v84 = v3;
  __chkstk_darwin(v3);
  v81 = &v75 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v82 = &v75 - v6;
  v7 = sub_100747C14();
  v79 = *(v7 - 8);
  v80 = v7;
  __chkstk_darwin(v7);
  v78 = &v75 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10000C518(&unk_100933370);
  __chkstk_darwin(v9 - 8);
  v11 = &v75 - v10;
  v12 = sub_10000C518(&unk_10092E450);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v75 - v14;
  v16 = sub_10074E984();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v77 = &v75 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v75 - v20;
  __chkstk_darwin(v22);
  v85 = &v75 - v23;
  sub_100743794();
  sub_10070CD88(&qword_1009476B8, &type metadata accessor for Placeholder);
  sub_1007468B4();
  result = v86;
  if (!v86)
  {
    return result;
  }

  v76 = v1;

  swift_getKeyPath();
  v75 = a1;
  sub_100746914();

  swift_getKeyPath();
  sub_1007525B4();

  (*(v13 + 8))(v15, v12);
  if ((*(v17 + 48))(v11, 1, v16) == 1)
  {
    return sub_10040DA74(v11);
  }

  v25 = v85;
  (*(v17 + 32))(v85, v11, v16);
  v26 = *(v17 + 16);
  v26(v21, v25, v16);
  v27 = (*(v17 + 88))(v21, v16);
  if (v27 == enum case for Shelf.ContentType.smallLockup(_:) || v27 == enum case for Shelf.ContentType.mediumLockup(_:) || v27 == enum case for Shelf.ContentType.largeLockup(_:))
  {
    v33 = *&v76[OBJC_IVAR____TtC22SubscribePageExtension29PlaceholderCollectionViewCell_placeholderView];
    type metadata accessor for LockupPlaceholderView();
    v34 = swift_dynamicCastClass();
    if (v34)
    {
      v35 = v34;
      v36 = v33;
    }

    else
    {
      v35 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    }

    v40 = v77;
    v26(v77, v25, v16);
    v41 = OBJC_IVAR____TtC22SubscribePageExtension21LockupPlaceholderView_contentType;
    swift_beginAccess();
    (*(v17 + 24))(&v35[v41], v40, v16);
    swift_endAccess();
    v28 = v35;
    [v28 setNeedsLayout];
    (*(v17 + 8))(v40, v16);
    v42 = v78;
    sub_100746884();
    v43 = v82;
    sub_100747BD4();
    (*(v79 + 8))(v42, v80);
    v44 = v81;
    sub_10074EA64();
    sub_10070CD88(&unk_100925360, &type metadata accessor for Shelf.PresentationHints);
    v45 = v84;
    v46 = sub_100754324();
    v47 = *(v83 + 8);
    v47(v44, v45);
    v47(v43, v45);
    v28[OBJC_IVAR____TtC22SubscribePageExtension21LockupPlaceholderView_wantsHeadingTextPlaceholder] = v46 & 1;
    [v28 setNeedsLayout];

    v32 = v76;
    goto LABEL_17;
  }

  if (v27 != enum case for Shelf.ContentType.videoCard(_:))
  {
    if (v27 == enum case for Shelf.ContentType.brick(_:))
    {
      v32 = v76;
      v37 = *&v76[OBJC_IVAR____TtC22SubscribePageExtension29PlaceholderCollectionViewCell_placeholderView];
      type metadata accessor for BrickPlaceholderView();
      v38 = swift_dynamicCastClass();
      if (v38)
      {
        v28 = v38;
        v39 = v37;
      }

      else
      {
        v28 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
      }

      v58 = v78;
      sub_100746884();
      v59 = v82;
      sub_100747BD4();
      (*(v79 + 8))(v58, v80);
      v60 = v81;
      sub_10074EA74();
      sub_10070CD88(&unk_100925360, &type metadata accessor for Shelf.PresentationHints);
      v61 = v84;
      v62 = sub_100754324();
      v63 = *(v83 + 8);
      v63(v60, v61);
      v63(v59, v61);
      v28[OBJC_IVAR____TtC22SubscribePageExtension20BrickPlaceholderView_wantsSupplementaryTextPlaceholder] = v62 & 1;
      [v28 setNeedsLayout];
      goto LABEL_17;
    }

    if (v27 == enum case for Shelf.ContentType.categoryBrick(_:))
    {
      goto LABEL_24;
    }

    if (v27 == enum case for Shelf.ContentType.miniTodayCard(_:))
    {
      type metadata accessor for TodayCardPlaceholderView();
    }

    else
    {
      if (v27 == enum case for Shelf.ContentType.appTrailerLockup(_:) || v27 == enum case for Shelf.ContentType.screenshotsLockup(_:))
      {
        type metadata accessor for MixedMediaLockupPlaceholderView();
        v64 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
        v65 = v77;
        v26(v77, v25, v16);
        v66 = OBJC_IVAR____TtC22SubscribePageExtension31MixedMediaLockupPlaceholderView_contentType;
        swift_beginAccess();
        (*(v17 + 24))(&v64[v66], v65, v16);
        swift_endAccess();
        v28 = v64;
        [v28 setNeedsLayout];
        (*(v17 + 8))(v65, v16);
        v67 = v78;
        sub_100746884();
        v68 = v82;
        sub_100747BD4();
        (*(v79 + 8))(v67, v80);
        v69 = v81;
        sub_10074EA74();
        sub_10070CD88(&unk_100925360, &type metadata accessor for Shelf.PresentationHints);
        v70 = v84;
        LOBYTE(v66) = sub_100754324();
        v71 = *(v83 + 8);
        v71(v69, v70);
        v71(v68, v70);
        v28[OBJC_IVAR____TtC22SubscribePageExtension31MixedMediaLockupPlaceholderView_wantsSupplementaryTextPlaceholder] = v66 & 1;
        [v28 setNeedsLayout];

        goto LABEL_9;
      }

      if (v27 != enum case for Shelf.ContentType.smallStoryCard(_:))
      {
        v32 = v76;
        if (v27 == enum case for Shelf.ContentType.posterLockup(_:))
        {
          v28 = [objc_allocWithZone(UIView) init];
          v72 = [objc_opt_self() secondarySystemBackgroundColor];
          [v28 setBackgroundColor:v72];

          v73 = [v28 layer];
          [v73 setCornerRadius:20.0];

          v74 = [v28 layer];
          [v74 setCornerCurve:kCACornerCurveContinuous];

          goto LABEL_17;
        }

        if (v27 == enum case for Shelf.ContentType.appPromotion(_:))
        {
          type metadata accessor for AppEventPlaceholderView();
          goto LABEL_35;
        }

        if (v27 != enum case for Shelf.ContentType.tagBrick(_:))
        {
          (*(v17 + 8))(v21, v16);
          v28 = 0;
          v32 = v76;
          goto LABEL_18;
        }

LABEL_24:
        v32 = v76;
        v55 = *&v76[OBJC_IVAR____TtC22SubscribePageExtension29PlaceholderCollectionViewCell_placeholderView];
        type metadata accessor for CategoryBrickPlaceholderView();
        v56 = swift_dynamicCastClass();
        if (v56)
        {
          v28 = v56;
          v57 = v55;
          goto LABEL_17;
        }

LABEL_35:
        v28 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
        goto LABEL_17;
      }

      type metadata accessor for TodayBrickPlaceholderView();
    }

    v28 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    goto LABEL_9;
  }

  v28 = [objc_allocWithZone(UIView) init];
  v29 = [objc_opt_self() secondarySystemBackgroundColor];
  [v28 setBackgroundColor:v29];

  v30 = [v28 layer];
  [v30 setCornerRadius:20.0];

  v31 = [v28 layer];
  [v31 setCornerCurve:kCACornerCurveContinuous];

LABEL_9:
  v32 = v76;
LABEL_17:
  [v28 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];
LABEL_18:
  v48 = OBJC_IVAR____TtC22SubscribePageExtension29PlaceholderCollectionViewCell_placeholderView;
  [*&v32[OBJC_IVAR____TtC22SubscribePageExtension29PlaceholderCollectionViewCell_placeholderView] removeFromSuperview];
  if (v28)
  {
    v49 = v28;
    v50 = [v32 contentView];
    [v50 addSubview:v49];

    v51 = *&v32[v48];
    *&v32[v48] = v49;
    v52 = v49;

    [v32 setNeedsLayout];
  }

  else
  {
    v53 = [objc_allocWithZone(UIView) init];
    v54 = *&v32[v48];
    *&v32[v48] = v53;
  }

  return (*(v17 + 8))(v85, v16);
}

uint64_t sub_10070CD88(unint64_t *a1, void (*a2)(uint64_t))
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

void *sub_10070CDD0(unint64_t a1)
{
  if (a1 >> 62)
  {
LABEL_15:
    sub_100754664();
    sub_1007545C4();
    v2 = sub_100754664();
    if (v2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    sub_1007545C4();
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
LABEL_3:
      v3 = 0;
      do
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          sub_100754574();
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
          if (v3 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
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

        sub_100745E64();
        if (!swift_dynamicCastClass())
        {
          goto LABEL_13;
        }

        sub_1007545A4();
        sub_1007545D4();
        sub_1007545E4();
        sub_1007545B4();
        ++v3;
      }

      while (v4 != v2);
    }
  }

  return _swiftEmptyArrayStorage;
}

void *sub_10070CF40(uint64_t a1)
{
  v6 = _swiftEmptyArrayStorage;
  v2 = *(a1 + 16);
  sub_1007545C4();
  if (!v2)
  {
    return v6;
  }

  for (i = a1 + 32; ; i += 40)
  {
    sub_10000C824(i, v5);
    sub_10000C518(&qword_1009242A0);
    sub_100745CF4();
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    sub_1007545A4();
    sub_1007545D4();
    sub_1007545E4();
    sub_1007545B4();
    if (!--v2)
    {
      return v6;
    }
  }

  return 0;
}

uint64_t sub_10070D04C()
{
  v0 = sub_100750304();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100750B04();
  sub_100039C50(v4, qword_1009476C0);
  sub_10000D0FC(v4, qword_1009476C0);
  if (qword_100921450 != -1)
  {
    swift_once();
  }

  v5 = sub_100750534();
  v6 = sub_10000D0FC(v5, qword_100981A28);
  (*(*(v5 - 8) + 16))(v3, v6, v5);
  (*(v1 + 104))(v3, enum case for FontSource.useCase(_:), v0);
  v10[3] = v0;
  v10[4] = &protocol witness table for FontSource;
  v7 = sub_10000D134(v10);
  (*(v1 + 16))(v7, v3, v0);
  sub_100750B14();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_10070D220()
{
  v0 = sub_100750304();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v11[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100750B04();
  sub_100039C50(v4, qword_1009476D8);
  sub_10000D0FC(v4, qword_1009476D8);
  *v3 = UIFontTextStyleCaption2;
  *(v3 + 2) = 0;
  v5 = enum case for FontUseCase.preferredFont(_:);
  v6 = sub_100750534();
  (*(*(v6 - 8) + 104))(v3, v5, v6);
  (*(v1 + 104))(v3, enum case for FontSource.useCase(_:), v0);
  v11[3] = v0;
  v11[4] = &protocol witness table for FontSource;
  v7 = sub_10000D134(v11);
  (*(v1 + 16))(v7, v3, v0);
  v8 = UIFontTextStyleCaption2;
  sub_100750B14();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_10070D3DC()
{
  v2._object = 0x800000010078CDC0;
  v2._countAndFlagsBits = 0xD000000000000014;
  v3._countAndFlagsBits = 0;
  v3._object = 0xE000000000000000;
  result = sub_1007458B4(v2, v3);
  qword_1009476F0 = result;
  *algn_1009476F8 = v1;
  return result;
}

unint64_t sub_10070D420(unint64_t a1, uint64_t a2)
{
  v3 = v2;
  v68 = a2;
  v5 = sub_10074F314();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v56 = v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = v48 - v9;
  __chkstk_darwin(v11);
  v70 = v48 - v12;
  result = sub_1007106E0(a1);
  if (result >> 62)
  {
    goto LABEL_71;
  }

  v14 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v66 = result;
  v64 = v14;
  v57 = a1;
  if (v14)
  {
    if ((result & 0xC000000000000001) != 0)
    {
      sub_100754574();
    }

    else
    {
      if (!*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        return result;
      }
    }

    v15 = sub_10074F3F4();
    v72 = v15;
    v73 = sub_1007112FC(&qword_10092AC70, &type metadata accessor for Feature);
    v16 = sub_10000D134(v71);
    (*(*(v15 - 8) + 104))(v16, enum case for Feature.voyager_bundles_2025A(_:), v15);
    LOBYTE(v15) = sub_10074FC74();
    sub_10000C620(v71);
    if (v15)
    {
      v17 = v10;
      v18 = v5;
      sub_10074F374();
      v19 = OBJC_IVAR____TtC22SubscribePageExtension10BundleView_backgroundArtworkView;
      v20 = *&v3[OBJC_IVAR____TtC22SubscribePageExtension10BundleView_backgroundArtworkView];
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

      [*&v3[v19] setContentMode:2];
      v21 = *&v3[v19];
      sub_1007433C4();
      sub_1007112FC(&qword_100925570, &type metadata accessor for ArtworkView);
      v22 = v21;
      sub_100744204();

      a1 = v57;
      v5 = v18;
      v10 = v17;
    }

    else
    {
    }
  }

  v23 = sub_100704020();
  if (a1 >> 62)
  {
    result = sub_100754664();
    if (result)
    {
      goto LABEL_14;
    }
  }

  else
  {
    result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
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
          result = sub_100754574();
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
            v14 = sub_100754664();
            result = v47;
            goto LABEL_3;
          }
        }

        if (v61)
        {
          result = sub_100754664();
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
          v29 = sub_100754574();
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
        if (sub_10074EF24())
        {
          v31 = v70;
          sub_10074F324();
          v32 = v56;
          (*v50)(v56, v51, v5);
          sub_10074F2D4();
          v33 = *v67;
          (*v67)(v32, v5);
          v33(v31, v5);
          v34 = [v3 traitCollection];
          v35 = sub_10074F3F4();
          v72 = v35;
          v73 = sub_1007112FC(&qword_10092AC70, &type metadata accessor for Feature);
          v36 = sub_10000D134(v71);
          (*(*(v35 - 8) + 104))(v36, v49, v35);
          LOBYTE(v35) = sub_10074FC74();
          sub_10000C620(v71);
          v65 = v33;
          if (v35)
          {
            sub_1007537D4();
          }

          v10 = v53;
          sub_10074F2C4();
          v37 = OBJC_IVAR____TtC22SubscribePageExtension15BundleChildView_icon;
          [*&v30[OBJC_IVAR____TtC22SubscribePageExtension15BundleChildView_icon] contentMode];
          sub_10074F374();
          v38 = *&v30[v37];
          sub_10074F324();
          sub_100743364();
          [v38 setContentMode:sub_10074F184()];
          sub_100747FB4();
          sub_1007433A4();
          if (!sub_10074F1E4())
          {
            sub_100016C60(0, &qword_100923500);
            sub_100753E34();
          }

          sub_100743224();

          sub_1007433C4();
          sub_1007112FC(&qword_100925570, &type metadata accessor for ArtworkView);
          sub_100744204();

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

  result = sub_100704038();
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
      result = sub_100754574();
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
      v44 = sub_100754574();
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
    v45 = OBJC_IVAR____TtC22SubscribePageExtension22BorderedScreenshotView_artworkView;
    [*&v44[OBJC_IVAR____TtC22SubscribePageExtension22BorderedScreenshotView_artworkView] contentMode];
    v10 = sub_10074F374();
    v46 = *&v3[v45];
    v6 = v70;
    sub_10074F324();
    sub_100743364();
    [v46 setContentMode:sub_10074F184()];
    sub_100747FB4();
    sub_1007433A4();
    if (!sub_10074F1E4())
    {
      sub_100016C60(0, &qword_100923500);
      sub_100753E34();
    }

    sub_100743224();

    v41 = *&v3[v45];
    sub_1007433C4();
    sub_1007112FC(&qword_100925570, &type metadata accessor for ArtworkView);
    v42 = v41;
    sub_100744204();

    ++v40;
    if (a1 == v64)
    {
      goto LABEL_64;
    }
  }

  result = sub_100754664();
  if (v43 != result)
  {
    goto LABEL_52;
  }

LABEL_63:

LABEL_64:
}

void sub_10070DF08()
{
  v1 = [*(v0 + OBJC_IVAR____TtC22SubscribePageExtension10BundleView_itemStack) subviews];
  sub_100016C60(0, &qword_100922300);
  v2 = sub_1007532A4();

  if (!(v2 >> 62))
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_15:

    goto LABEL_17;
  }

  v3 = sub_100754664();
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
        v7 = sub_100754574();
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
        v5 = *(v9 + OBJC_IVAR____TtC22SubscribePageExtension15BundleChildView_icon);
        v13.value.super.isa = 0;
        v13.is_nil = 0;
        sub_100743384(v13, v6);

        swift_beginAccess();
        sub_10000C518(&qword_100947750);
        sub_1007512D4();
        swift_endAccess();
      }

      else
      {
        type metadata accessor for IconSilhouetteView();
        v10 = swift_dynamicCastClass();
        if (v10)
        {
          v11 = v10;
          [*(v10 + OBJC_IVAR____TtC22SubscribePageExtension18IconSilhouetteView_titleLabel) setText:0];
          [v11 removeFromSuperview];
        }
      }
    }

LABEL_17:

    return;
  }

  __break(1u);
}

void sub_10070E138()
{
  v1 = [*(v0 + OBJC_IVAR____TtC22SubscribePageExtension10BundleView_screenshotStack) subviews];
  sub_100016C60(0, &qword_100922300);
  v2 = sub_1007532A4();

  if (!(v2 >> 62))
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_13:

    goto LABEL_15;
  }

  v3 = sub_100754664();
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
        v5 = sub_100754574();
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
        v8 = *(v7 + OBJC_IVAR____TtC22SubscribePageExtension22BorderedScreenshotView_artworkView);
        v11.value.super.isa = 0;
        v11.is_nil = 0;
        sub_100743384(v11, v9);

        swift_beginAccess();
        sub_10000C518(&qword_100942490);
        sub_1007512D4();
        swift_endAccess();
      }
    }

LABEL_15:

    return;
  }

  __break(1u);
}

void sub_10070E31C(unint64_t a1)
{
  v2 = v1;
  v4 = sub_1007504F4();
  v84 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v75 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10070DF08();
  sub_10070E138();
  v7 = sub_10074F3F4();
  v92 = v7;
  v8 = sub_1007112FC(&qword_10092AC70, &type metadata accessor for Feature);
  v93 = v8;
  v9 = sub_10000D134(v91);
  v10 = enum case for Feature.voyager_bundles_2025A(_:);
  v11 = *(v7 - 8);
  v12 = *(v11 + 104);
  v13 = v11 + 104;
  v12(v9, enum case for Feature.voyager_bundles_2025A(_:), v7);
  v14 = sub_10074FC74();
  sub_10000C620(v91);
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

  v17 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (1)
  {
    v81 = v17;
    v82 = v16;
    v79 = v16 - 1;
    v18 = v16 >= v17 ? v17 : v16 - 1;
    v19 = [v2 traitCollection];
    LODWORD(v86) = sub_1007111DC(a1);

    if ((v18 & 0x8000000000000000) == 0)
    {
      break;
    }

    __break(1u);
LABEL_62:
    a1 = v15;
    v74 = v16;
    v17 = sub_100754664();
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
    if ((a1 & 0xC000000000000001) == 0 && v18 > *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_68;
    }

    v22 = 0;
    v23 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension10BundleView_itemStack];
    do
    {
      if (v21)
      {
        sub_100754574();
      }

      else
      {
      }

      swift_beginAccess();
      sub_10000C518(&qword_100947750);
      sub_1007512B4();
      swift_endAccess();
      v25 = v89;
      v26 = *&v89[OBJC_IVAR____TtC22SubscribePageExtension15BundleChildView_titleLabel];
      sub_10074EF34();
      if (v27)
      {
        v24 = sub_100753064();
      }

      else
      {
        v24 = 0;
      }

      ++v22;
      [v26 setText:{v24, v75}];

      v25[OBJC_IVAR____TtC22SubscribePageExtension15BundleChildView_titleStyle] = v86;
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
    v34 = sub_10000D134(v91);
    v75(v34, v76, v33);
    v35 = sub_10074FC74();
    sub_10000C620(v91);
    if (v35)
    {
      v36 = sub_1007537D4();

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

    *&v31[OBJC_IVAR____TtC22SubscribePageExtension18IconSilhouetteView_preferredIconWidth] = v37;
    v38 = *&v31[OBJC_IVAR____TtC22SubscribePageExtension18IconSilhouetteView_titleLabel];
    v94._object = 0x800000010078CDE0;
    v94._countAndFlagsBits = 0xD000000000000027;
    v95._countAndFlagsBits = 0;
    v95._object = 0xE000000000000000;
    sub_10074B194(v94, v30, v95);
    v39 = sub_100753064();

    [v38 setText:v39];

    [*&v2[OBJC_IVAR____TtC22SubscribePageExtension10BundleView_itemStack] addSubview:v31];
    v20 = v87;
  }

  v40 = sub_1007106E0(v20);
  v41 = v40;
  v42 = v40 >> 62;
  if (v40 >> 62)
  {
    v43 = sub_100754664();
    v44 = &OBJC_IVAR____TtC22SubscribePageExtension37InAppPurchaseLockupCollectionViewCell_itemLayoutContext;
    if (!v43)
    {
      goto LABEL_34;
    }
  }

  else
  {
    v43 = *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v44 = &OBJC_IVAR____TtC22SubscribePageExtension37InAppPurchaseLockupCollectionViewCell_itemLayoutContext;
    if (!v43)
    {
      goto LABEL_34;
    }
  }

  if ((v41 & 0xC000000000000001) != 0)
  {
    goto LABEL_66;
  }

  if (!*((v41 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
    goto LABEL_70;
  }

  while (1)
  {
    sub_10074F2A4();
    sub_100750504();

    v45 = v44[28];
    swift_beginAccess();
    (*(v84 + 40))(&v2[v45], v29, v28);
    swift_endAccess();
LABEL_34:
    v44 = v44[28];
    swift_beginAccess();
    v46 = v84;
    (*(v84 + 16))(v29, v44 + v2, v28);
    v47 = sub_100750444();
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
      if (sub_100754664() < 0)
      {
        goto LABEL_69;
      }

      v51 = sub_100754664();
    }

    else
    {
      v51 = *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v51 >= v50)
    {
      break;
    }

    __break(1u);
LABEL_66:
    sub_100754574();
  }

  if ((v41 & 0xC000000000000001) != 0 && v50)
  {
    sub_10074F3D4();

    v52 = 0;
    do
    {
      v53 = v52 + 1;
      sub_100754554(v52);
      v52 = v53;
    }

    while (v50 != v53);
  }

  else
  {
  }

  if (v42)
  {
    v82 = sub_100754674();
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
    v86 = *&v88[OBJC_IVAR____TtC22SubscribePageExtension10BundleView_screenshotStack];
    v87 = OBJC_IVAR____TtC22SubscribePageExtension10BundleView_screenshotReusePool;
    v62 = v83;
    v63 = (v84 + 40);
    v64 = v55 + 8 * v54;
    do
    {
      v64 += 8;
      swift_beginAccess();

      sub_10000C518(&qword_100942490);
      sub_1007512B4();
      swift_endAccess();
      v65 = v90;
      sub_10074F2A4();
      sub_100750504();
      v66 = &v65[OBJC_IVAR____TtC22SubscribePageExtension22BorderedScreenshotView_displayConfiguration];
      swift_beginAccess();
      v67 = type metadata accessor for ScreenshotDisplayConfiguration();
      (*v63)(&v66[*(v67 + 40)], v62, v28);
      swift_endAccess();
      v68 = OBJC_IVAR____TtC22SubscribePageExtension22BorderedScreenshotView_artworkView;
      v69 = *&v65[OBJC_IVAR____TtC22SubscribePageExtension22BorderedScreenshotView_artworkView];
      sub_100746E74();

      v70 = *&v65[v68];
      v28 = v85;
      v71 = *(v66 + 6);
      v72 = v70;
      v73 = v71;
      sub_100746E64();

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

id sub_10070EC5C@<X0>(uint64_t (*a1)(void)@<X0>, void *a2@<X8>)
{
  result = [objc_allocWithZone(a1(0)) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *a2 = result;
  return result;
}

char *sub_10070ECB0(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v52 = sub_10000C518(&qword_100942450);
  __chkstk_darwin(v52);
  v51[1] = v51 - v10;
  v51[0] = sub_10000C518(&qword_100947740);
  __chkstk_darwin(v51[0]);
  v11 = sub_10074AB44();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10000C518(&unk_100928A40);
  __chkstk_darwin(v15 - 8);
  v17 = v51 - v16;
  v18 = OBJC_IVAR____TtC22SubscribePageExtension10BundleView_iconStyle;
  v19 = enum case for Artwork.Style.roundedRect(_:);
  v20 = sub_10074F314();
  (*(*(v20 - 8) + 104))(&v5[v18], v19, v20);
  v21 = OBJC_IVAR____TtC22SubscribePageExtension10BundleView_titleLabel;
  if (qword_100921450 != -1)
  {
    swift_once();
  }

  v22 = sub_100750534();
  v23 = sub_10000D0FC(v22, qword_100981A28);
  v24 = *(v22 - 8);
  (*(v24 + 16))(v17, v23, v22);
  (*(v24 + 56))(v17, 0, 1, v22);
  (*(v12 + 104))(v14, enum case for DirectionalTextAlignment.none(_:), v11);
  v25 = objc_allocWithZone(sub_100745C84());
  *&v5[v21] = sub_100745C74();
  v26 = OBJC_IVAR____TtC22SubscribePageExtension10BundleView_itemStack;
  v27 = [objc_allocWithZone(sub_10000C518(&qword_100947758)) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v27[qword_10093A0F0] = 0;
  *&v27[qword_10093A0F8] = 1;
  *&v27[qword_10093A100] = 0x4028000000000000;
  v27[qword_10093A108] = 1;
  *&v5[v26] = v27;
  v28 = OBJC_IVAR____TtC22SubscribePageExtension10BundleView_screenshotStack;
  v29 = [objc_allocWithZone(sub_10000C518(&unk_100947760)) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v29[qword_10093A0F0] = 0;
  *&v29[qword_10093A0F8] = 1;
  *&v29[qword_10093A100] = 0x4028000000000000;
  v29[qword_10093A108] = 1;
  *&v5[v28] = v29;
  type metadata accessor for BundleChildView();
  sub_100750624();
  sub_10002DDC8(&qword_100947748, &qword_100947740);
  sub_1007512E4();
  type metadata accessor for BorderedScreenshotView();
  sub_100750624();
  sub_10002DDC8(&qword_100942458, &qword_100942450);
  sub_1007512E4();
  v30 = OBJC_IVAR____TtC22SubscribePageExtension10BundleView_gradientBlurView;
  *&v5[v30] = [objc_allocWithZone(type metadata accessor for AppBundleGradientBackgroundView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v31 = OBJC_IVAR____TtC22SubscribePageExtension10BundleView_backgroundArtworkView;
  sub_1007433C4();
  *&v5[v31] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  sub_100750504();
  v32 = type metadata accessor for BundleView();
  v56.receiver = v5;
  v56.super_class = v32;
  v33 = objc_msgSendSuper2(&v56, "initWithFrame:", a1, a2, a3, a4);
  sub_100016C60(0, &qword_100923500);
  v34 = v33;
  v35 = sub_100753E74();
  [v34 setBackgroundColor:v35];

  [v34 _setCornerRadius:4.0];
  [v34 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];
  v36 = sub_10074F3F4();
  v54 = v36;
  v37 = sub_1007112FC(&qword_10092AC70, &type metadata accessor for Feature);
  v55 = v37;
  v38 = sub_10000D134(v53);
  v39 = enum case for Feature.voyager_bundles_2025A(_:);
  v40 = *(*(v36 - 8) + 104);
  v40(v38, enum case for Feature.voyager_bundles_2025A(_:), v36);
  v41 = sub_10074FC74();
  sub_10000C620(v53);
  if (v41)
  {
    v42 = OBJC_IVAR____TtC22SubscribePageExtension10BundleView_backgroundArtworkView;
    [*&v34[OBJC_IVAR____TtC22SubscribePageExtension10BundleView_backgroundArtworkView] setAccessibilityIgnoresInvertColors:1];
    [*&v34[v42] setContentMode:2];
    [v34 addSubview:*&v34[v42]];
    [v34 addSubview:*&v34[OBJC_IVAR____TtC22SubscribePageExtension10BundleView_gradientBlurView]];
  }

  v43 = OBJC_IVAR____TtC22SubscribePageExtension10BundleView_titleLabel;
  v44 = qword_100921E18;
  v45 = *&v34[OBJC_IVAR____TtC22SubscribePageExtension10BundleView_titleLabel];
  if (v44 != -1)
  {
    swift_once();
  }

  v46 = sub_100753064();
  [v45 setText:v46];

  [*&v34[v43] setTextAlignment:1];
  [v34 addSubview:*&v34[v43]];
  v47 = OBJC_IVAR____TtC22SubscribePageExtension10BundleView_screenshotStack;
  [*&v34[OBJC_IVAR____TtC22SubscribePageExtension10BundleView_screenshotStack] setClipsToBounds:1];
  v54 = v36;
  v55 = v37;
  v48 = sub_10000D134(v53);
  v40(v48, v39, v36);
  v49 = sub_10074FC74();
  sub_10000C620(v53);
  if (v49)
  {
    [v34 addSubview:*&v34[v47]];
  }

  [v34 addSubview:*&v34[OBJC_IVAR____TtC22SubscribePageExtension10BundleView_itemStack]];
  [v34 setClipsToBounds:1];

  return v34;
}

id sub_10070F51C()
{
  v1 = v0;
  v46 = sub_1007504F4();
  v2 = *(v46 - 8);
  __chkstk_darwin(v46);
  v4 = &v46 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_100754724();
  v5 = *(v48 - 8);
  __chkstk_darwin(v48);
  v7 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for BundleView();
  v49.receiver = v0;
  v49.super_class = v8;
  objc_msgSendSuper2(&v49, "layoutSubviews");
  v9 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension10BundleView_gradientBlurView];
  [v1 frame];
  [v9 setFrame:{0.0, 0.0}];

  v10 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension10BundleView_backgroundArtworkView];
  [v1 frame];
  sub_100743324();

  sub_1007477B4();
  v11 = CGRectGetWidth(v50) + -16.0;
  v12 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension10BundleView_titleLabel];
  sub_1007477B4();
  [v12 sizeThatFits:{v11, CGRectGetHeight(v51)}];
  v14 = v13;
  v15 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension10BundleView_itemStack];
  sub_1007477B4();
  v47 = v15;
  [v15 sizeThatFits:{v16, v17}];
  v19 = v18;
  v21 = v20;
  v22 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension10BundleView_screenshotStack];
  v23 = [v22 superview];
  if (v23)
  {

    sub_1007477B4();
    v24 = CGRectGetHeight(v52) - v14 - v21 + -40.0;
    if (qword_100921E10 != -1)
    {
      swift_once();
    }

    v25 = sub_100750B04();
    sub_10000D0FC(v25, qword_1009476D8);
    v26 = [v1 traitCollection];
    sub_1007502D4();
    sub_100750AD4();
    v28 = v27;

    (*(v5 + 8))(v7, v48);
    v29 = v24 - v28;
    v30 = OBJC_IVAR____TtC22SubscribePageExtension10BundleView_screenshotAspectRatio;
    swift_beginAccess();
    v31 = &v1[v30];
    v32 = v46;
    (*(v2 + 16))(v4, v31, v46);
    sub_1007504B4();
    v34 = v33;
    (*(v2 + 8))(v4, v32);
    v35 = v34 * -0.5;
    sub_1007477B4();
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

  sub_1007477B4();
  [v12 setFrame:{CGRectGetMidX(v55) + v11 * -0.5, v37, v11, v14}];
  sub_1007477B4();
  MidX = CGRectGetMidX(v56);
  [v12 lastBaselineMaxY];
  v40 = v39;
  if (qword_100921E08 != -1)
  {
    swift_once();
  }

  v41 = sub_100750B04();
  sub_10000D0FC(v41, qword_1009476C0);
  v42 = [v1 traitCollection];
  sub_1007502D4();
  sub_100750AD4();
  v44 = v43;

  (*(v5 + 8))(v7, v48);
  return [v47 setFrame:{MidX + v19 * -0.5, v40 + v44, v19, v21}];
}

id sub_10070FC98()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BundleView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for BundleView()
{
  result = qword_100947728;
  if (!qword_100947728)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10070FEB8()
{
  sub_10074F314();
  if (v0 <= 0x3F)
  {
    sub_100710050(319, &qword_100947738, &qword_100947740, &unk_1007D7B68, &qword_100947748);
    if (v1 <= 0x3F)
    {
      sub_100710050(319, &qword_100942448, &qword_100942450, &unk_1007D7B70, &qword_100942458);
      if (v2 <= 0x3F)
      {
        sub_1007504F4();
        if (v3 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void sub_100710050(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t a4, unint64_t *a5)
{
  if (!*a2)
  {
    sub_10000C724(a3);
    sub_10002DDC8(a5, a3);
    v8 = sub_1007512F4();
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

double sub_1007100EC(uint64_t a1, unint64_t a2, void *a3)
{
  v46 = a1;
  v5 = sub_100754724();
  v47 = *(v5 - 8);
  v48 = v5;
  __chkstk_darwin(v5);
  v7 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100750534();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100921E18 != -1)
  {
    swift_once();
  }

  if (qword_100921450 != -1)
  {
    swift_once();
  }

  v12 = sub_10000D0FC(v8, qword_100981A28);
  (*(v9 + 16))(v11, v12, v8);
  v13 = [a3 traitCollection];
  sub_100753804();

  v14 = sub_10074F3F4();
  v49[3] = v14;
  v49[4] = sub_1007112FC(&qword_10092AC70, &type metadata accessor for Feature);
  v15 = sub_10000D134(v49);
  (*(*(v14 - 8) + 104))(v15, enum case for Feature.measurement_with_labelplaceholder(_:), v14);
  sub_10074FC74();
  sub_10000C620(v49);
  sub_10074CCB4();
  v17 = v16;
  v19 = v18;
  (*(v9 + 8))(v11, v8);
  sub_10074EFD4();
  v20 = 0.0;
  if (sub_1007532D4())
  {
    v21 = sub_1007106E0(a2);
    sub_10074F3D4();
    v22 = sub_1007532D4();
    v24 = v47;
    v23 = v48;
    if (v22)
    {
      sub_100711038(v21);
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
  v28 = sub_1007111DC(a2);

  if (qword_100921E08 != -1)
  {
    swift_once();
  }

  v29 = sub_100750B04();
  sub_10000D0FC(v29, qword_1009476C0);
  v30 = [a3 traitCollection];
  sub_1007502D4();
  sub_100750AD4();
  v32 = v31;

  v33 = *(v24 + 8);
  v33(v7, v23);
  v34 = [a3 traitCollection];
  sub_1006D11D4(v46, v28);
  v36 = v35;

  if (qword_100921E10 != -1)
  {
    swift_once();
  }

  sub_10000D0FC(v29, qword_1009476D8);
  v37 = [a3 traitCollection];
  sub_1007502D4();
  sub_100750AD4();
  v39 = v38;

  v33(v7, v23);
  sub_100016C60(0, &qword_100923AB0);
  if (qword_100921458 != -1)
  {
    swift_once();
  }

  v40 = v20 + v17 - v19 + v32 + v32 + v36 + v39;
  sub_10000D0FC(v8, qword_100981A40);
  v41 = [a3 traitCollection];
  v42 = sub_100753C14();

  [v42 descender];
  v44 = v43;

  return v40 + v44;
}

uint64_t sub_1007106E0(unint64_t a1)
{
  v1 = _swiftEmptyArrayStorage;
  v42 = sub_10070CDD0(a1);
  if (!v42)
  {
    return v1;
  }

  v2 = sub_10074F3F4();
  v44[3] = v2;
  v44[4] = sub_1007112FC(&qword_10092AC70, &type metadata accessor for Feature);
  v3 = sub_10000D134(v44);
  (*(*(v2 - 8) + 104))(v3, enum case for Feature.voyager_bundles_2025A(_:), v2);
  LOBYTE(v2) = sub_10074FC74();
  sub_10000C620(v44);
  if ((v2 & 1) == 0)
  {

    return v1;
  }

  if (v42 >> 62)
  {
    v4 = sub_100754664();
  }

  else
  {
    v4 = *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v41 = v42 & 0xC000000000000001;
  if (v4)
  {
    if (v41)
    {
      v5 = sub_100754574();
    }

    else
    {
      if (!*((v42 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_27;
      }

      v5 = *(v42 + 32);
    }

    v6 = sub_100745DD4();

    if (v6 >> 62)
    {
      if (sub_100754664())
      {
LABEL_11:
        if ((v6 & 0xC000000000000001) == 0)
        {
          if (!*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
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
        sub_100754574();
LABEL_14:

        v7 = sub_100743854();

        if (v7 >> 62)
        {
          result = sub_100754664();
          if (result)
          {
            goto LABEL_16;
          }
        }

        else
        {
          result = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (result)
          {
LABEL_16:
            if ((v7 & 0xC000000000000001) != 0)
            {
              goto LABEL_144;
            }

            if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
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

    else if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
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
        sub_100754574();
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

      v15 = sub_100745DD4();
      v16 = v15;
      if (v15 >> 62)
      {
        break;
      }

      if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
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

    if (!sub_100754664())
    {
      goto LABEL_34;
    }

LABEL_41:
    if ((v16 & 0xC000000000000001) != 0)
    {
      sub_100754574();
    }

    else
    {
      if (!*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_126;
      }
    }

    v17 = sub_100743854();

    v18 = v17;
    if (!(v17 >> 62))
    {
      v19 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v13 = v42 & 0xFFFFFFFFFFFFFF8;
      if (v19)
      {
        goto LABEL_54;
      }

      goto LABEL_46;
    }

    v20 = sub_100754664();
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
      if (*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {

        goto LABEL_57;
      }

      __break(1u);
LABEL_144:
      sub_100754574();
LABEL_19:

      v9 = sub_10074F114();

      if (v9)
      {
        v10 = 5;
        goto LABEL_31;
      }

      goto LABEL_30;
    }

    sub_100754574();
LABEL_57:

    sub_100753284();
    if (*((v44[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v44[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_100753304();
    }

    sub_100753344();
    v12 = v44[0];
    v13 = v42 & 0xFFFFFFFFFFFFFF8;
  }

  while (v11 != v4);
LABEL_63:
  v44[0] = v12;
  if (v12 >> 62)
  {
LABEL_127:
    v21 = sub_100754664();
  }

  else
  {
    v21 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
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
          sub_100754574();
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

        v26 = sub_100745DD4();
        v27 = v26;
        if (!(v26 >> 62))
        {
          if (*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_77;
          }

LABEL_70:

          goto LABEL_71;
        }

        if (!sub_100754664())
        {
          goto LABEL_70;
        }

LABEL_77:
        if ((v27 & 0xC000000000000001) != 0)
        {
          sub_100754574();
        }

        else
        {
          if (!*((v27 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_123;
          }
        }

        v12 = sub_100743854();

        sub_10000C518(&qword_100939AC0);
        sub_10002DDC8(&qword_100939AC8, &qword_100939AC0);
        sub_1007534D4();

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

      sub_100753284();
      if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_100753304();
      }

      sub_100753344();
      v22 = v40;
      if (v23 != v4)
      {
        continue;
      }

      break;
    }

LABEL_93:
    sub_10049FCF0(_swiftEmptyArrayStorage);
    v12 = v44[0];
    if (v44[0] >> 62)
    {
      v28 = sub_100754664();
    }

    else
    {
      v28 = *((v44[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
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

    v6 = sub_100754664();
    result = sub_100754664();
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

    if (sub_100754664() >= v4)
    {
      goto LABEL_102;
    }

    __break(1u);
    goto LABEL_140;
  }

  if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v39)
  {
    v4 = v39;
  }

  else
  {
    v4 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

LABEL_102:
  if ((v12 & 0xC000000000000001) != 0 && v4)
  {
    sub_10074F3D4();

    v30 = 0;
    do
    {
      v31 = v30 + 1;
      sub_100754554(v30);
      v30 = v31;
    }

    while (v4 != v31);
  }

  else
  {
  }

  if (v1)
  {
    v6 = sub_100754674();
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
    sub_1006313B0(v6, v1, v5, v4);
    v1 = v35;
    goto LABEL_119;
  }

LABEL_113:
  sub_100754774();
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

uint64_t sub_100711038(unint64_t a1)
{
  v2 = sub_1007504F4();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 62)
  {
    result = sub_100754664();
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }
  }

  if ((a1 & 0xC000000000000001) != 0)
  {
    sub_100754574();
    goto LABEL_6;
  }

  if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {

LABEL_6:
    sub_10074F114();
    sub_10074F2A4();
    sub_100750504();
    sub_100750474();

    return (*(v3 + 8))(v5, v2);
  }

  __break(1u);
  return result;
}

uint64_t sub_1007111DC(unint64_t a1)
{
  v2 = sub_10074F3F4();
  v8[3] = v2;
  v8[4] = sub_1007112FC(&qword_10092AC70, &type metadata accessor for Feature);
  v3 = sub_10000D134(v8);
  (*(*(v2 - 8) + 104))(v3, enum case for Feature.voyager_bundles_2025A(_:), v2);
  LOBYTE(v2) = sub_10074FC74();
  sub_10000C620(v8);
  if ((v2 & 1) == 0)
  {
    return 0;
  }

  if (a1 >> 62)
  {
    v4 = sub_100754664();
  }

  else
  {
    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = sub_1007537D4();
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

uint64_t sub_1007112FC(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_100711344()
{
  v1 = v0;
  v27 = sub_10000C518(&qword_100942450);
  __chkstk_darwin(v27);
  v26 = &v24 - v2;
  v25 = sub_10000C518(&qword_100947740);
  __chkstk_darwin(v25);
  v3 = sub_10074AB44();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000C518(&unk_100928A40);
  __chkstk_darwin(v7 - 8);
  v9 = &v24 - v8;
  v10 = OBJC_IVAR____TtC22SubscribePageExtension10BundleView_iconStyle;
  v11 = enum case for Artwork.Style.roundedRect(_:);
  v12 = sub_10074F314();
  (*(*(v12 - 8) + 104))(v1 + v10, v11, v12);
  v13 = OBJC_IVAR____TtC22SubscribePageExtension10BundleView_titleLabel;
  if (qword_100921450 != -1)
  {
    swift_once();
  }

  v14 = sub_100750534();
  v15 = sub_10000D0FC(v14, qword_100981A28);
  v16 = *(v14 - 8);
  (*(v16 + 16))(v9, v15, v14);
  (*(v16 + 56))(v9, 0, 1, v14);
  (*(v4 + 104))(v6, enum case for DirectionalTextAlignment.none(_:), v3);
  v17 = objc_allocWithZone(sub_100745C84());
  *(v1 + v13) = sub_100745C74();
  v18 = OBJC_IVAR____TtC22SubscribePageExtension10BundleView_itemStack;
  v19 = [objc_allocWithZone(sub_10000C518(&qword_100947758)) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v19[qword_10093A0F0] = 0;
  *&v19[qword_10093A0F8] = 1;
  *&v19[qword_10093A100] = 0x4028000000000000;
  v19[qword_10093A108] = 1;
  *(v1 + v18) = v19;
  v20 = OBJC_IVAR____TtC22SubscribePageExtension10BundleView_screenshotStack;
  v21 = [objc_allocWithZone(sub_10000C518(&unk_100947760)) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v21[qword_10093A0F0] = 0;
  *&v21[qword_10093A0F8] = 1;
  *&v21[qword_10093A100] = 0x4028000000000000;
  v21[qword_10093A108] = 1;
  *(v1 + v20) = v21;
  type metadata accessor for BundleChildView();
  sub_100750624();
  sub_10002DDC8(&qword_100947748, &qword_100947740);
  sub_1007512E4();
  type metadata accessor for BorderedScreenshotView();
  sub_100750624();
  sub_10002DDC8(&qword_100942458, &qword_100942450);
  sub_1007512E4();
  v22 = OBJC_IVAR____TtC22SubscribePageExtension10BundleView_gradientBlurView;
  *(v1 + v22) = [objc_allocWithZone(type metadata accessor for AppBundleGradientBackgroundView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v23 = OBJC_IVAR____TtC22SubscribePageExtension10BundleView_backgroundArtworkView;
  sub_1007433C4();
  *(v1 + v23) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  sub_100750504();
  sub_100754644();
  __break(1u);
}

uint64_t sub_1007118A0(uint64_t a1, void (*a2)(uint64_t))
{
  v4 = *(a1 + 48);
  v17 = *(a1 + 32);
  v18 = v4;
  v19 = *(a1 + 64);
  v20 = *(a1 + 80);
  v5 = *(a1 + 16);
  v15 = *a1;
  v16 = v5;
  v6 = sub_100752294();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = (v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100016C60(0, &qword_100926D00);
  *v9 = sub_100753774();
  (*(v7 + 104))(v9, enum case for DispatchPredicate.onQueue(_:), v6);
  v10 = sub_1007522C4();
  result = (*(v7 + 8))(v9, v6);
  if (v10)
  {
    v23 = xmmword_100931330;
    v24 = xmmword_100931340;
    v25 = xmmword_100931350;
    v26 = qword_100931360;
    v21 = xmmword_100931310;
    v22 = xmmword_100931320;
    v27[3] = xmmword_100931340;
    v27[4] = xmmword_100931350;
    v27[1] = xmmword_100931320;
    v27[2] = xmmword_100931330;
    v28 = qword_100931360;
    v27[0] = xmmword_100931310;
    sub_100016B4C(&v21, v13, &unk_1009308C0);
    xmmword_100931330 = v17;
    xmmword_100931340 = v18;
    xmmword_100931350 = v19;
    qword_100931360 = v20;
    xmmword_100931310 = v15;
    xmmword_100931320 = v16;
    sub_10000C8CC(v27, &unk_1009308C0);
    v12 = sub_1001664D8(a1, v13);
    a2(v12);
    v13[2] = xmmword_100931330;
    v13[3] = xmmword_100931340;
    v13[4] = xmmword_100931350;
    v14 = qword_100931360;
    v13[0] = xmmword_100931310;
    v13[1] = xmmword_100931320;
    xmmword_100931310 = v21;
    xmmword_100931320 = v22;
    xmmword_100931330 = v23;
    xmmword_100931340 = v24;
    xmmword_100931350 = v25;
    qword_100931360 = v26;
    return sub_10000C8CC(v13, &unk_1009308C0);
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_100711B18()
{
  v1 = type metadata accessor for DividerView.Style(0);
  *&v2 = __chkstk_darwin(v1).n128_u64[0];
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension31RoundedButtonCollectionViewCell_dividerView];
  if (v5)
  {
    v6 = qword_100920D78;
    v7 = v5;
    if (v6 != -1)
    {
      swift_once();
    }

    v8 = sub_10000D0FC(v1, qword_100980640);
    sub_1001154F8(v8, v4);
    v9 = &v7[OBJC_IVAR____TtC22SubscribePageExtension11DividerView_style];
    swift_beginAccess();
    sub_10011555C(v4, v9);
    swift_endAccess();
    v10 = &v7[OBJC_IVAR____TtC22SubscribePageExtension11DividerView_separatorInset];
    v11 = *(v9 + 1);
    *v10 = *v9;
    *(v10 + 1) = v11;
    [v7 setNeedsLayout];
    [v7 setNeedsLayout];
    sub_1002FE2B0(v4);
    v12 = [v0 contentView];
    [v12 addSubview:v7];
  }

  return [v0 setNeedsLayout];
}

id sub_100711CAC()
{
  if (v0[OBJC_IVAR____TtC22SubscribePageExtension31RoundedButtonCollectionViewCell_hasDivider] == 1)
  {
    v1 = [objc_allocWithZone(type metadata accessor for DividerView(0)) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
    v2 = OBJC_IVAR____TtC22SubscribePageExtension31RoundedButtonCollectionViewCell_dividerView;
    v3 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension31RoundedButtonCollectionViewCell_dividerView];
    if (v3)
    {
      [v3 removeFromSuperview];
      v4 = *&v0[v2];
    }

    else
    {
      v4 = 0;
    }

    *&v0[v2] = v1;
    v8 = v1;

    sub_100711B18();
  }

  else
  {
    v5 = OBJC_IVAR____TtC22SubscribePageExtension31RoundedButtonCollectionViewCell_dividerView;
    v6 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension31RoundedButtonCollectionViewCell_dividerView];
    if (v6)
    {
      [v6 removeFromSuperview];
      v7 = *&v0[v5];
    }

    else
    {
      v7 = 0;
    }

    *&v0[v5] = 0;

    sub_100711B18();
  }

  return [v0 setNeedsLayout];
}

UIFontTextStyle sub_100711DD8()
{
  v0 = sub_100750304();
  sub_100039C50(v0, qword_1009830E8);
  *sub_10000D0FC(v0, qword_1009830E8) = UIFontTextStyleBody;
  (*(*(v0 - 8) + 104))();

  return UIFontTextStyleBody;
}

uint64_t sub_100711E98(uint64_t a1, uint64_t *a2)
{
  v3 = sub_100750304();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v14[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100750B04();
  sub_100039C50(v7, a2);
  sub_10000D0FC(v7, a2);
  *v6 = UIFontTextStyleBody;
  *(v6 + 2) = 0;
  v8 = enum case for FontUseCase.preferredFont(_:);
  v9 = sub_100750534();
  (*(*(v9 - 8) + 104))(v6, v8, v9);
  (*(v4 + 104))(v6, enum case for FontSource.useCase(_:), v3);
  v14[3] = v3;
  v14[4] = &protocol witness table for FontSource;
  v10 = sub_10000D134(v14);
  (*(v4 + 16))(v10, v6, v3);
  v11 = UIFontTextStyleBody;
  sub_100750B14();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_100712080()
{
  v0 = sub_100750B04();
  sub_100039C50(v0, qword_100947800);
  sub_10000D0FC(v0, qword_100947800);
  if (qword_100921E38 != -1)
  {
    swift_once();
  }

  v1 = sub_100750304();
  v2 = sub_10000D0FC(v1, qword_1009830E8);
  v5[3] = v1;
  v5[4] = &protocol witness table for FontSource;
  v3 = sub_10000D134(v5);
  (*(*(v1 - 8) + 16))(v3, v2, v1);
  return sub_100750B14();
}

uint64_t sub_100712190(uint64_t a1, uint64_t *a2)
{
  v3 = sub_100750304();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000C518(&unk_1009249B0);
  sub_100039C50(v7, a2);
  sub_10000D0FC(v7, a2);
  if (qword_100921E38 != -1)
  {
    swift_once();
  }

  v8 = sub_10000D0FC(v3, qword_1009830E8);
  (*(v4 + 16))(v6, v8, v3);
  return sub_1007434F4();
}

char *sub_1007122E8(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = sub_100750534();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtC22SubscribePageExtension31RoundedButtonCollectionViewCell_itemLayoutContext;
  v15 = sub_1007469A4();
  (*(*(v15 - 8) + 56))(&v5[v14], 1, 1, v15);
  v16 = OBJC_IVAR____TtC22SubscribePageExtension31RoundedButtonCollectionViewCell_button;
  sub_1007466C4();
  if (qword_100921400 != -1)
  {
    swift_once();
  }

  v17 = sub_10000D0FC(v10, qword_100981938);
  (*(v11 + 16))(v13, v17, v10);
  *&v5[v16] = sub_1007466B4();
  *&v5[OBJC_IVAR____TtC22SubscribePageExtension31RoundedButtonCollectionViewCell_dividerView] = 0;
  v18 = OBJC_IVAR____TtC22SubscribePageExtension31RoundedButtonCollectionViewCell_action;
  v19 = sub_10000C518(&unk_100933080);
  (*(*(v19 - 8) + 56))(&v5[v18], 1, 1, v19);
  v5[OBJC_IVAR____TtC22SubscribePageExtension31RoundedButtonCollectionViewCell_hasDivider] = 0;
  v20 = type metadata accessor for RoundedButtonCollectionViewCell();
  v27.receiver = v5;
  v27.super_class = v20;
  v21 = objc_msgSendSuper2(&v27, "initWithFrame:", a1, a2, a3, a4);
  v22 = [v21 contentView];
  [v22 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

  v23 = OBJC_IVAR____TtC22SubscribePageExtension31RoundedButtonCollectionViewCell_button;
  v24 = *&v21[OBJC_IVAR____TtC22SubscribePageExtension31RoundedButtonCollectionViewCell_button];
  [v24 addTarget:v21 action:"didTapButton:" forControlEvents:64];

  [*&v21[v23] _setWantsAccessibilityUnderline:0];
  v25 = [v21 contentView];

  [v25 addSubview:*&v21[v23]];
  return v21;
}

id sub_100712640()
{
  v1 = v0;
  v2 = sub_100754724();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v54 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DividerView.Style(0);
  __chkstk_darwin(v6);
  v8 = &v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for RoundedButtonCollectionViewCell();
  v55.receiver = v0;
  v55.super_class = v9;
  objc_msgSendSuper2(&v55, "layoutSubviews");
  v10 = [v0 contentView];
  sub_100016C60(0, &qword_100922300);
  sub_1007477B4();
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;

  v19 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension31RoundedButtonCollectionViewCell_dividerView];
  if (v19)
  {
    v20 = OBJC_IVAR____TtC22SubscribePageExtension11DividerView_style;
    swift_beginAccess();
    sub_1001154F8(v19 + v20, v8);
    v21 = qword_100920D68;
    v22 = v19;
    if (v21 != -1)
    {
      swift_once();
    }

    v23 = floor(*&qword_100980620);
    sub_1007502D4();
    v24 = sub_100750B04();
    sub_100750564();
    v26 = v25;
    v27 = *(v3 + 8);
    v27(v5, v2);
    v28 = v23 + v26;
    sub_1002FE2B0(v8);
    if (qword_100921E40 != -1)
    {
      swift_once();
    }

    sub_10000D0FC(v24, qword_1009477B8);
    sub_1007502D4();
    sub_100750564();
    v30 = v29;
    v27(v5, v2);
    [v22 setFrame:{0.0, v30, v16, v28}];
    v56.origin.x = 0.0;
    v56.origin.y = v30;
    v56.size.width = v16;
    v56.size.height = v28;
    MaxY = CGRectGetMaxY(v56);
    if (qword_100921E48 != -1)
    {
      swift_once();
    }

    v32 = sub_10000C518(&unk_1009249B0);
    sub_10000D0FC(v32, qword_1009477D0);
    sub_1007502D4();
    sub_100743514();
    v34 = v33;

    v27(v5, v2);
    v35 = MaxY + v34;
  }

  else
  {
    if (qword_100921E58 != -1)
    {
      swift_once();
    }

    v36 = sub_100750B04();
    sub_10000D0FC(v36, qword_100947800);
    sub_1007502D4();
    sub_100750564();
    v35 = v37;
    v27 = *(v3 + 8);
    v27(v5, v2);
  }

  v38 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension31RoundedButtonCollectionViewCell_button];
  v39 = [v38 imageForState:0];
  if (v39)
  {

    if (UIAccessibilityIsBoldTextEnabled())
    {
      if (qword_100921E28 != -1)
      {
        swift_once();
      }

      v40 = qword_100947788;
    }

    else
    {
      if (qword_100921E20 != -1)
      {
        swift_once();
      }

      v40 = qword_100947770;
    }

    v42 = sub_100750B04();
    sub_10000D0FC(v42, v40);
    sub_1007502D4();
    sub_100750564();
    v44 = v43;
    v27(v5, v2);
    v41 = ceil(v44 * 0.5);
  }

  else
  {
    v41 = 0.0;
  }

  v45 = [v1 traitCollection];
  v46 = sub_1007537F4();

  if (v46)
  {
    v47 = -v41;
  }

  else
  {
    v47 = v41;
  }

  [v38 setContentEdgeInsets:{0.0, v41 + 32.0, 0.0, v41 + v41 + 32.0}];
  [v38 setImageEdgeInsets:{0.0, -v47, 0.0, v47}];
  [v38 setTitleEdgeInsets:{0.0, v47, 0.0, -v47}];
  [v38 sizeThatFits:{v16, v18}];
  v49 = v48;
  if (qword_100921E30 != -1)
  {
    swift_once();
  }

  v50 = sub_100750B04();
  sub_10000D0FC(v50, qword_1009477A0);
  sub_1007502D4();
  sub_100750564();
  v52 = v51;
  v27(v5, v2);
  v57.origin.x = v12;
  v57.origin.y = v14;
  v57.size.width = v16;
  v57.size.height = v18;
  [v38 setFrame:{CGRectGetMidX(v57) - v49 * 0.5, v35, v49, v52}];
  return [v38 _setCornerRadius:v52 * 0.5];
}

uint64_t sub_100712D7C(void *a1)
{
  v3 = sub_10000C518(&qword_100933090);
  __chkstk_darwin(v3 - 8);
  v5 = &v23[-v4];
  v6 = sub_10000C518(&unk_100933080);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v23[-v8];
  v10 = OBJC_IVAR____TtC22SubscribePageExtension31RoundedButtonCollectionViewCell_action;
  swift_beginAccess();
  sub_100016B4C(v1 + v10, v5, &qword_100933090);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    return sub_10000C8CC(v5, &qword_100933090);
  }

  (*(v7 + 32))(v9, v5, v6);
  v12 = [a1 bounds];
  v23[8] = 1;
  v25 = 1;
  v28 = 15;
  v24[0] = a1;
  v24[1] = v13;
  v24[2] = v14;
  v24[3] = v15;
  v24[4] = v16;
  __asm { FMOV            V0.2D, #10.0 }

  v26 = _Q0;
  v27 = _Q0;
  __chkstk_darwin(v12);
  *&v23[-16] = v9;
  v22 = a1;
  sub_1007118A0(v24, sub_100713994);
  sub_100166534(v24);
  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_100712FDC()
{
  v0 = sub_10000C518(&unk_100923960);
  __chkstk_darwin(v0 - 8);
  v2 = v7 - v1;
  sub_10000C518(&unk_100933080);
  v3 = sub_1007455B4();
  v4 = sub_10000C518(&unk_100923210);
  sub_1007526C4();
  v5 = *(v4 - 8);
  if ((*(v5 + 48))(v2, 1, v4) == 1)
  {

    return sub_10000C8CC(v2, &unk_100923960);
  }

  else
  {
    sub_1007455C4();
    sub_1003C0E00(v7[1], 1, v3, v2);

    return (*(v5 + 8))(v2, v4);
  }
}

id sub_1007131F4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RoundedButtonCollectionViewCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for RoundedButtonCollectionViewCell()
{
  result = qword_100947860;
  if (!qword_100947860)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100713300()
{
  sub_100016898();
  if (v0 <= 0x3F)
  {
    sub_1001E5A54();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

double sub_1007133EC()
{
  v0 = sub_10000C518(&unk_1009249B0);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v33 - v2;
  v4 = sub_100754724();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_100744714())
  {
    v34 = v1;
    if (qword_100921E40 != -1)
    {
      swift_once();
    }

    v8 = sub_100750B04();
    sub_10000D0FC(v8, qword_1009477B8);
    swift_getObjectType();
    sub_1007502D4();
    sub_100750564();
    v10 = v9;
    v11 = *(v5 + 8);
    v11(v7, v4);
    type metadata accessor for DividerView(0);
    if (qword_100920D78 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for DividerView.Style(0);
    sub_10000D0FC(v12, qword_100980640);
    v13 = v10 + sub_1004CB0AC();
    if (qword_100921E48 != -1)
    {
      swift_once();
    }

    sub_10000D0FC(v0, qword_1009477D0);
    sub_1007502D4();
    sub_100743514();
    v15 = v14;
    v11(v7, v4);
    v16 = v13 + v15;
    if (qword_100921E30 != -1)
    {
      swift_once();
    }

    sub_10000D0FC(v8, qword_1009477A0);
    sub_1007502D4();
    sub_100750564();
    v18 = v17;
    v11(v7, v4);
    v19 = v16 + v18;
    if (qword_100921E50 != -1)
    {
      swift_once();
    }

    v20 = sub_10000D0FC(v0, qword_1009477E8);
    v21 = v34;
    (*(v34 + 16))(v3, v20, v0);
    sub_1007502D4();
    sub_100743514();
    v23 = v22;
    v11(v7, v4);
    (*(v21 + 8))(v3, v0);
  }

  else
  {
    if (qword_100921E58 != -1)
    {
      swift_once();
    }

    v24 = sub_100750B04();
    sub_10000D0FC(v24, qword_100947800);
    sub_1007502D4();
    sub_100750564();
    v26 = v25;
    v27 = *(v5 + 8);
    v27(v7, v4);
    if (qword_100921E30 != -1)
    {
      swift_once();
    }

    sub_10000D0FC(v24, qword_1009477A0);
    sub_1007502D4();
    sub_100750564();
    v29 = v28;
    v27(v7, v4);
    v19 = v26 + v29;
    if (qword_100921E60 != -1)
    {
      swift_once();
    }

    v30 = sub_10000D0FC(v0, qword_100947818);
    (*(v1 + 16))(v3, v30, v0);
    sub_1007502D4();
    sub_100743514();
    v23 = v31;
    v27(v7, v4);
    (*(v1 + 8))(v3, v0);
  }

  return v19 + v23;
}

void sub_1007139B0()
{
  v1 = v0;
  v2 = sub_100750534();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC22SubscribePageExtension31RoundedButtonCollectionViewCell_itemLayoutContext;
  v7 = sub_1007469A4();
  (*(*(v7 - 8) + 56))(v1 + v6, 1, 1, v7);
  v8 = OBJC_IVAR____TtC22SubscribePageExtension31RoundedButtonCollectionViewCell_button;
  sub_1007466C4();
  if (qword_100921400 != -1)
  {
    swift_once();
  }

  v9 = sub_10000D0FC(v2, qword_100981938);
  (*(v3 + 16))(v5, v9, v2);
  *(v1 + v8) = sub_1007466B4();
  *(v1 + OBJC_IVAR____TtC22SubscribePageExtension31RoundedButtonCollectionViewCell_dividerView) = 0;
  v10 = OBJC_IVAR____TtC22SubscribePageExtension31RoundedButtonCollectionViewCell_action;
  v11 = sub_10000C518(&unk_100933080);
  (*(*(v11 - 8) + 56))(v1 + v10, 1, 1, v11);
  *(v1 + OBJC_IVAR____TtC22SubscribePageExtension31RoundedButtonCollectionViewCell_hasDivider) = 0;
  sub_100754644();
  __break(1u);
}

void sub_100713BC8()
{
  sub_10000C518(&unk_1009231A0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1007AC000;
  v1 = objc_opt_self();
  *(v0 + 32) = [v1 blackColor];
  v2 = [v1 blackColor];
  v3 = [v2 colorWithAlphaComponent:0.4];

  *(v0 + 40) = v3;
  v4 = [v1 blackColor];
  v5 = [v4 colorWithAlphaComponent:0.0];

  *(v0 + 48) = v5;
  qword_100947870 = v0;
}

UIColor sub_100713CCC()
{
  sub_10000C518(&unk_1009231A0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1007AC000;
  sub_10000D198();
  *(v0 + 32) = sub_100753F24(0.43137, 0.43137, 0.43137, 0.6);
  *(v0 + 40) = sub_100753F24(0.35294, 0.35294, 0.35294, 0.5);
  result.super.isa = sub_100753F24(0.27146, 0.2665, 0.26659, 0.2).super.isa;
  *(v0 + 48) = result;
  qword_100947878 = v0;
  return result;
}

char *sub_100713DB4()
{
  v2 = OBJC_IVAR____TtC22SubscribePageExtension23MultiCornerGradientView_colors;
  v3 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension23MultiCornerGradientView_colors);
  if (v3 >> 62)
  {
    v4 = sub_100754664();
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v4)
  {

    sub_10001E46C(0, v4 & ~(v4 >> 63), 0);
    if (v4 < 0)
    {
      __break(1u);
      goto LABEL_41;
    }

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

      v7 = v6;
      [v6 _luminance];
      v9 = v8;

      v11 = _swiftEmptyArrayStorage[2];
      v10 = _swiftEmptyArrayStorage[3];
      if (v11 >= v10 >> 1)
      {
        sub_10001E46C((v10 > 1), v11 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v11 + 1;
      _swiftEmptyArrayStorage[v11 + 4] = v9;
    }
  }

  v12 = _swiftEmptyArrayStorage[2];
  if (!v12)
  {

LABEL_26:
    if (qword_100921E70 != -1)
    {
      swift_once();
    }

    v22 = &qword_100947878;
    v23 = 0x3FE3333333333333;
LABEL_29:
    v24 = *&v23;
    goto LABEL_30;
  }

  if (v12 <= 3)
  {
    v13 = 0;
    v1 = 0.0;
LABEL_20:
    v16 = v12 - v13;
    v17 = &_swiftEmptyArrayStorage[v13 + 4];
    do
    {
      v18 = *v17++;
      v1 = v1 + v18;
      --v16;
    }

    while (v16);
    goto LABEL_22;
  }

  v13 = v12 & 0x7FFFFFFFFFFFFFFCLL;
  v14 = &_swiftEmptyArrayStorage[6];
  v1 = 0.0;
  v15 = v12 & 0x7FFFFFFFFFFFFFFCLL;
  do
  {
    v1 = v1 + *(v14 - 2) + *(v14 - 1) + *v14 + v14[1];
    v14 += 4;
    v15 -= 4;
  }

  while (v15);
  if (v12 != v13)
  {
    goto LABEL_20;
  }

LABEL_22:

  if (v1 <= 0.0)
  {
    goto LABEL_26;
  }

  v19 = *(v0 + v2);
  if (!(v19 >> 62))
  {
    v20 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_25;
  }

LABEL_41:
  v20 = sub_100754664();
LABEL_25:
  v21 = v1 / v20;
  if (v21 == 0.0)
  {
    goto LABEL_26;
  }

  if (v21 < COERCE_DOUBLE(1) || v21 >= 0.83)
  {
    if (qword_100921E68 != -1)
    {
      swift_once();
    }

    v22 = &qword_100947870;
    v23 = 0x3FE6666666666666;
    goto LABEL_29;
  }

  v24 = 0.2;
  if (qword_100921E68 != -1)
  {
    swift_once();
  }

  v22 = &qword_100947870;
LABEL_30:
  v25 = *v22;

  v26 = [objc_allocWithZone(type metadata accessor for GradientView()) init];
  *&v26[OBJC_IVAR____TtC22SubscribePageExtension12GradientView_colors] = v25;

  sub_100037ED0();
  sub_100037D2C(&off_1008617A0);
  v27 = v26;
  v28 = [v27 layer];
  objc_opt_self();
  [swift_dynamicCastObjCClassUnconditional() setStartPoint:{0.0, 1.0}];

  v29 = [v27 layer];
  objc_opt_self();
  [swift_dynamicCastObjCClassUnconditional() setEndPoint:{1.0, 0.0}];

  v30 = [v27 layer];
  [v30 setMask:0];

  v31 = [v27 layer];

  [v31 setCompositingFilter:kCAFilterPlusD];
  [v27 setAlpha:v24];

  return v27;
}

id sub_1007143C0()
{
  sub_100049D24();
  v1 = OBJC_IVAR____TtC22SubscribePageExtension28MultiAppFallbackGradientView_overlayGradientView;
  [*&v0[OBJC_IVAR____TtC22SubscribePageExtension28MultiAppFallbackGradientView_overlayGradientView] removeFromSuperview];
  v2 = sub_100713DB4();
  v3 = *&v0[v1];
  *&v0[v1] = v2;
  v4 = v2;

  [v0 addSubview:v4];
  [v0 setNeedsLayout];

  return [v0 setNeedsDisplay];
}

unint64_t sub_1007144B4()
{
  result = qword_100935490;
  if (!qword_100935490)
  {
    sub_100743724();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100935490);
  }

  return result;
}

uint64_t sub_10071450C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {
    sub_100016C60(0, &qword_1009478B8);
    v4 = sub_1007532A4();
  }

  v6 = a3;
  v5(v4, a3);
}

uint64_t sub_1007145B0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100752624();
  v99 = *(v4 - 8);
  v100 = v4;
  __chkstk_darwin(v4);
  v98 = &v84 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100752614();
  __chkstk_darwin(v6 - 8);
  v89 = &v84 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100748314();
  v94 = *(v8 - 8);
  v95 = v8;
  __chkstk_darwin(v8);
  v88 = &v84 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v93 = &v84 - v11;
  v111 = sub_100742284();
  v107 = *(v111 - 8);
  __chkstk_darwin(v111);
  v92 = &v84 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v108 = &v84 - v14;
  __chkstk_darwin(v15);
  v104 = &v84 - v16;
  __chkstk_darwin(v17);
  v19 = &v84 - v18;
  __chkstk_darwin(v20);
  v22 = &v84 - v21;
  v23 = sub_10074ED34();
  v24 = *(v23 - 8);
  __chkstk_darwin(v23);
  v91 = &v84 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v28 = &v84 - v27;
  v87 = sub_10000C518(&qword_100930CA0);
  v109 = sub_100752DE4();
  sub_10000C518(&unk_100925780);
  sub_100752764();
  v105 = a2;
  sub_100752D34();
  v29 = v113;
  ObjectType = swift_getObjectType();
  sub_100743704();
  v96 = ObjectType;
  v97 = v29;
  v31 = sub_1007424E4();
  v33 = v32;
  v106 = *(v24 + 8);
  v101 = v23;
  v102 = v28;
  v103 = v24 + 8;
  v106(v28, v23);
  swift_getObjectType();
  sub_1007436E4();
  sub_1007423E4();
  v34 = v107;
  v35 = *(v107 + 16);
  v110 = v22;
  v36 = v111;
  v35(v19, v22, v111);
  v37 = v19;
  v38 = v19;
  v39 = v36;
  v40 = (*(v34 + 88))(v38, v36);
  if (v40 == enum case for LegacyAppState.waiting(_:))
  {
    v41 = v108;
    v85 = v37;
    v42 = v37;
    v43 = v39;
    v35(v108, v42, v39);
    (*(v34 + 96))(v41, v39);
    sub_100717008(a1, 1, v31, v33);
    v44 = v109;
    sub_100752D54();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    v45 = *(v34 + 8);
    v45(v110, v43);
    v46 = sub_100745D74();
    (*(*(v46 - 8) + 8))(v41, v46);
    v45(v85, v43);
    return v44;
  }

  v84 = v33;
  v48 = v106;
  v90 = a1;
  v86 = v31;
  if (v40 == enum case for LegacyAppState.purchased(_:))
  {
    v49 = v104;
    v50 = v111;
    v35(v104, v37, v111);
    v51 = v37;
    v52 = v50;
    v53 = v34;
    (*(v34 + 96))(v49, v52);
    v54 = sub_100743FB4();
    v55 = *(v54 - 8);
    if ((*(v55 + 88))(v49, v54) != enum case for PurchaseType.preorder(_:))
    {
      (*(v55 + 8))(v49, v54);
LABEL_6:
      v56 = v102;
      sub_100743704();
      sub_1007424B4();
      v48(v56, v101);
      v58 = v98;
      v57 = v99;
      v59 = v100;
      (*(v99 + 104))(v98, enum case for ActionOutcome.performed(_:), v100);
      v47 = v109;
      sub_100752DB4();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      (*(v57 + 8))(v58, v59);
      v60 = *(v53 + 8);
      v61 = v111;
      v60(v110, v111);
      v60(v51, v61);
      return v47;
    }

LABEL_19:
    v70 = *(v53 + 8);
    v71 = v111;
    v70(v51, v111);
    sub_1007156A4(v90, v86, v84, v105);
    v47 = v109;
    sub_100752D54();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    v70(v110, v71);
    return v47;
  }

  v53 = v34;
  v51 = v37;
  if (v40 == enum case for LegacyAppState.updatable(_:) || v40 == enum case for LegacyAppState.downloadable(_:))
  {
    goto LABEL_19;
  }

  if (v40 == enum case for LegacyAppState.paused(_:))
  {
    v62 = v108;
    v63 = v111;
    v35(v108, v37, v111);
    (*(v34 + 96))(v62, v63);
    sub_100715278(v90);
LABEL_13:
    v47 = v109;
    sub_100752D54();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    v64 = *(v34 + 8);
    v64(v110, v63);
    v65 = sub_1007421F4();
    (*(*(v65 - 8) + 8))(v62, v65);
    v64(v37, v63);
    return v47;
  }

  if (v40 == enum case for LegacyAppState.downloading(_:))
  {
    v62 = v108;
    v63 = v111;
    v35(v108, v37, v111);
    (*(v34 + 96))(v62, v63);
    sub_100719084(v90);
    goto LABEL_13;
  }

  if (v40 != enum case for LegacyAppState.openable(_:))
  {
    if (v40 != enum case for LegacyAppState.buyable(_:) && v40 != enum case for LegacyAppState.unknown(_:))
    {
      goto LABEL_6;
    }

    goto LABEL_19;
  }

  v66 = v92;
  v67 = v111;
  v35(v92, v37, v111);
  (*(v34 + 96))(v66, v67);

  (*(v94 + 32))(v93, v66, v95);
  v68 = v90;
  if (sub_1007436F4())
  {
    sub_1007156A4(v68, v86, v84, v105);
    v69 = v110;
  }

  else
  {
    v73 = v91;
    sub_100743704();
    v74 = sub_10074ECE4();
    v75 = v101;
    v48(v73, v101);
    if (v74)
    {
      v108 = v74;
      sub_100748964();
      sub_100752754();
      if (v112)
      {
        v76 = v102;
        sub_100743704();
        sub_100748954();

        v48(v76, v75);
      }

      v69 = v110;
      v67 = v111;
      sub_100743704();
      (*(v94 + 16))(v88, v93, v95);
      sub_1007525F4();
      sub_100742174();
      swift_allocObject();
      v82 = sub_100742154();
      sub_10052ADAC(v82, 1, v105);
    }

    else
    {
      v77 = v102;
      sub_100743704();
      v78 = sub_10074ECF4();
      v80 = v79;
      v48(v77, v75);
      sub_1007189B8();
      swift_allocError();
      *v81 = v78;
      *(v81 + 8) = v80;
      *(v81 + 16) = 0;
      sub_100752D74();
      v69 = v110;
      v67 = v111;
    }
  }

  v47 = v109;
  sub_100752D54();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  (*(v94 + 8))(v93, v95);
  v83 = *(v53 + 8);
  v83(v69, v67);
  v83(v37, v67);
  return v47;
}

uint64_t sub_100715278(uint64_t a1)
{
  v2 = sub_10074ED34();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = aBlock - v7;
  sub_100743704();
  v9 = sub_10074ECE4();
  v10 = *(v3 + 8);
  v10(v8, v2);
  if (v9)
  {
    sub_10000C518(&qword_100930CA0);
    v11 = sub_100752DE4();
    sub_10000C518(&unk_1009231A0);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_1007A5CF0;
    *(v12 + 32) = v9;
    sub_100016C60(0, &qword_10092BE20);
    v13 = v9;
    isa = sub_100753294().super.isa;

    v15 = [objc_opt_self() queryForStoreItemIDs:isa];

    v16 = swift_allocObject();
    v16[2] = v13;
    v16[3] = v11;
    v16[4] = a1;
    aBlock[4] = sub_1007194B4;
    aBlock[5] = v16;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10071450C;
    aBlock[3] = &unk_100882620;
    v17 = _Block_copy(aBlock);
    v18 = v13;

    [v15 executeQueryWithResultHandler:v17];
    _Block_release(v17);

    return v11;
  }

  else
  {
    if (qword_100921EE0 != -1)
    {
      swift_once();
    }

    v20 = sub_100752E44();
    sub_10000D0FC(v20, qword_100983318);
    sub_10000C518(&qword_100923930);
    sub_100752454();
    *(swift_allocObject() + 16) = xmmword_1007A5A00;
    sub_1007523A4();
    sub_100752D04();

    sub_10000C518(&qword_100930CA0);
    sub_100743704();
    v21 = sub_10074ECF4();
    v23 = v22;
    v10(v5, v2);
    sub_1007189B8();
    swift_allocError();
    *v24 = v21;
    *(v24 + 8) = v23;
    *(v24 + 16) = 0;
    return sub_100752D74();
  }
}

id sub_1007156A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v41 = a3;
  v7 = sub_100742284();
  v36 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10074ED34();
  v35 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10000C518(&qword_1009478C0);
  __chkstk_darwin(v13 - 8);
  v15 = &v34 - v14;
  v40 = sub_100744F04();
  v16 = *(v40 - 8);
  __chkstk_darwin(v40);
  v39 = &v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for AdHeaderProvider();
  v38 = a4;
  sub_100752754();
  if (v42[0])
  {

    sub_10000C518(&qword_1009478C8);
    sub_10074E034();
  }

  swift_unknownObjectRetain();

  sub_100744EF4();
  v18 = v40;
  if ((*(v16 + 48))(v15, 1, v40) == 1)
  {
    sub_10000C8CC(v15, &qword_1009478C0);
    sub_10000C518(&qword_100930CA0);
    sub_1007189B8();
    swift_allocError();
    *v19 = 0;
    *(v19 + 8) = 0;
    *(v19 + 16) = 7;
    v20 = sub_100752D74();

    return v20;
  }

  (*(v16 + 32))(v39, v15, v18);
  sub_10000C518(&qword_100930CA0);
  v34 = sub_100752DE4();
  sub_100748964();
  sub_100752754();
  if (v42[0])
  {
    sub_100743704();
    swift_getObjectType();
    sub_1007423D4();
    sub_100748934();

    (*(v36 + 8))(v9, v7);
    (*(v35 + 8))(v12, v10);
  }

  result = [objc_opt_self() defaultWorkspace];
  if (result)
  {
    v22 = result;
    v23 = sub_100753064();
    v24 = [v22 applicationIsInstalled:v23];

    if (v24)
    {
      v36 = v16;
      sub_100743714();
      if (v25 && (v26 = objc_allocWithZone(LSApplicationRecord), v27 = sub_100718A0C(), v27))
      {

        sub_100715D7C(a1, a2, v41, v38);
        v20 = v34;
        sub_100752D54();

        (*(v36 + 8))(v39, v40);
      }

      else
      {
        sub_10074F4A4();
        sub_100752764();
        v28 = v38;
        sub_100752D34();
        v29 = v41;
        sub_10074F494();
        sub_1007194E4(v37, v42);
        v30 = swift_allocObject();
        v20 = v34;
        v30[2] = v34;
        v30[3] = a1;
        sub_100719608(v42, (v30 + 4));
        v30[6] = v28;
        v30[7] = a2;
        v30[8] = v29;
        v31 = sub_100016C60(0, &qword_100926D00);
        swift_unknownObjectRetain();

        v32 = sub_100753774();
        v42[3] = v31;
        v42[4] = &protocol witness table for OS_dispatch_queue;
        v42[0] = v32;
        sub_100752D64();

        (*(v36 + 8))(v39, v40);
        sub_10000C620(v42);
      }
    }

    else
    {
      sub_100718AD8(a1, v38);
      v33 = v16;
      v20 = v34;
      sub_100752D54();

      (*(v33 + 8))(v39, v40);
    }

    return v20;
  }

  __break(1u);
  return result;
}

uint64_t sub_100715D7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v45 = a3;
  v46 = a4;
  v44 = a2;
  v4 = sub_100742284();
  v43 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100745D74();
  v49 = *(v7 - 8);
  __chkstk_darwin(v7);
  v50 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10074ED34();
  v47 = *(v9 - 8);
  v48 = v9;
  v10 = *(v47 + 64);
  __chkstk_darwin(v9);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v39 - v13;
  sub_100743714();
  if (!v15)
  {
    goto LABEL_4;
  }

  v42 = v7;
  v16 = objc_allocWithZone(LSApplicationRecord);

  v17 = sub_100718A0C();
  if (!v17)
  {

LABEL_4:
    sub_10000C518(&qword_100930CA0);
    v18 = sub_100743714();
    v20 = v19;
    sub_1007189B8();
    swift_allocError();
    *v21 = v18;
    *(v21 + 8) = v20;
    *(v21 + 16) = 3;
    return sub_100752D74();
  }

  v23 = objc_allocWithZone(ASDSystemAppRequest);
  v24 = sub_100753064();

  v25 = [v23 initWithBundleID:v24];

  sub_100743704();
  v26 = sub_10074ECE4();
  v40 = *(v47 + 8);
  v41 = v47 + 8;
  v40(v14, v48);
  [v25 setStoreItemID:v26];

  v39 = v25;
  [v25 setUserInitiated:1];
  swift_getObjectType();
  sub_1007423D4();
  v27 = v43;
  v28 = (*(v43 + 88))(v6, v4);
  if (v28 == enum case for LegacyAppState.downloadable(_:))
  {
    (*(v27 + 8))(v6, v4);
    (*(v49 + 104))(v50, enum case for InstallationType.redownload(_:), v42);
  }

  else
  {
    v29 = *(v49 + 104);
    if (v28 == enum case for LegacyAppState.buyable(_:) || v28 == enum case for LegacyAppState.unknown(_:))
    {
      v29(v50, enum case for InstallationType.purchase(_:), v42);
    }

    else
    {
      v29(v50, enum case for InstallationType.unknown(_:), v42);
      (*(v27 + 8))(v6, v4);
    }
  }

  v30 = sub_1007423B4();
  v31 = v46;
  if (!v30)
  {
    sub_10000C518(&unk_100925780);
    sub_100752764();
    sub_100752D34();
  }

  swift_getObjectType();
  sub_100743704();
  sub_1007424C4();
  v32 = v48;
  v40(v14, v48);
  sub_100743704();
  sub_10000C518(&qword_100930CA0);
  v33 = sub_100752DE4();
  v34 = v47;
  (*(v47 + 16))(v11, v14, v32);
  v35 = (*(v34 + 80) + 32) & ~*(v34 + 80);
  v36 = swift_allocObject();
  *(v36 + 16) = v31;
  *(v36 + 24) = v33;
  (*(v34 + 32))(v36 + v35, v11, v32);
  aBlock[4] = sub_10071986C;
  aBlock[5] = v36;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1003E9548;
  aBlock[3] = &unk_100882738;
  v37 = _Block_copy(aBlock);

  v38 = v39;
  [v39 startWithErrorHandler:v37];
  _Block_release(v37);
  swift_unknownObjectRelease();

  v40(v14, v32);
  (*(v49 + 8))(v50, v42);
  return v33;
}

void sub_1007163E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v50 = a6;
  v51 = a7;
  v52 = a5;
  v54 = a2;
  v8 = sub_10074ED34();
  v53 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100752624();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100744F14();
  v16 = *(v15 - 8);
  v17 = __chkstk_darwin(v15);
  v19 = &v47 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 16))(v19, a1, v15, v17);
  v20 = (*(v16 + 88))(v19, v15);
  if (v20 == enum case for PurchaseResult.askToBuy(_:))
  {
    (*(v16 + 96))(v19, v15);
    v21 = [objc_opt_self() defaultCenter];
    v22 = sub_10074D764();
    sub_10000C518(&qword_100927760);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1007A5A00;
    v55 = sub_10074D774();
    v56 = v24;
    sub_1007544E4();
    *(inited + 96) = v8;
    sub_10000D134((inited + 72));
    sub_10074ED14();
    sub_100414D14(inited);
    swift_setDeallocating();
    sub_10000C8CC(inited + 32, &qword_100927768);
    isa = sub_100752F34().super.isa;

    [v21 postNotificationName:v22 object:0 userInfo:isa];

    (*(v12 + 104))(v14, enum case for ActionOutcome.performed(_:), v11);
    sub_100752DB4();
    (*(v12 + 8))(v14, v11);
    return;
  }

  v49 = v10;
  v48 = v8;
  if (v20 != enum case for PurchaseResult.completed(_:))
  {
    if (v20 == enum case for PurchaseResult.canceled(_:))
    {
      v36 = v49;
      sub_100743704();
      v37 = sub_10074ECF4();
      v39 = v38;
      (*(v53 + 8))(v36, v48);
      sub_1007189B8();
      swift_allocError();
      *v40 = v37;
      *(v40 + 8) = v39;
      v41 = 1;
    }

    else
    {
      if (v20 != enum case for PurchaseResult.unknown(_:))
      {
        (*(v16 + 8))(v19, v15);
        return;
      }

      v42 = v49;
      sub_100743704();
      v43 = sub_10074ECF4();
      v45 = v44;
      (*(v53 + 8))(v42, v48);
      sub_1007189B8();
      swift_allocError();
      *v40 = v43;
      *(v40 + 8) = v45;
      v41 = 2;
    }

    *(v40 + 16) = v41;
    sub_100752DA4();

    return;
  }

  (*(v16 + 96))(v19, v15);
  v26 = v19[2];
  (*(v12 + 104))(v14, enum case for ActionOutcome.performed(_:), v11);
  sub_100752DB4();
  (*(v12 + 8))(v14, v11);
  v27 = sub_1007436B4();
  if (v27)
  {
    sub_10052AB60(v27, 1, v52);
  }

  v28 = v49;
  if (v26)
  {
    type metadata accessor for InAppMessagesManager();
    sub_100752764();
    sub_100752D34();
    v29 = *(v55 + 16);
    v30 = objc_allocWithZone(IAMCountableEvent);
    v31 = sub_100753064();
    v32 = [v30 initWithName:v31];

    [v29 receiveEvent:v32];
    sub_1000FCE1C();
  }

  sub_100749474();
  v33 = sub_100749464();
  v34 = sub_100749454();

  if (v34)
  {
    swift_getObjectType();
    v35 = sub_1007423B4();
    if (v35)
    {
      v55 = v35;
    }

    else
    {
      sub_10000C518(&unk_100925780);
      sub_100752764();
      sub_100752D34();
    }

    v46 = v48;
    swift_getObjectType();
    sub_100743704();
    sub_100742504();
    swift_unknownObjectRelease();
    (*(v53 + 8))(v28, v46);
  }
}

uint64_t sub_100716AFC()
{
  if (qword_100921EE0 != -1)
  {
    swift_once();
  }

  v0 = sub_100752E44();
  sub_10000D0FC(v0, qword_100983318);
  sub_10000C518(&qword_100923930);
  sub_100752454();
  *(swift_allocObject() + 16) = xmmword_1007A6580;
  sub_1007523A4();
  swift_getErrorValue();
  v4[3] = v3;
  v1 = sub_10000D134(v4);
  (*(*(v3 - 8) + 16))(v1);
  sub_100752444();
  sub_10000C8CC(v4, &unk_100923520);
  sub_100752D04();
}

uint64_t sub_100716CC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_10074ED34();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v10 = v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000C518(&unk_100925780);
  sub_100752764();
  sub_100752D34();
  v11 = v17[2];
  v12 = v17[3];
  if (a1)
  {
    swift_errorRetain();
    sub_100752DA4();
    swift_getObjectType();
    sub_100742514();
    swift_unknownObjectRelease();
  }

  else
  {
    v17[1] = swift_getObjectType();
    (*(v8 + 16))(v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a4, v7);
    v14 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v15 = (v9 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
    v16 = swift_allocObject();
    *(v16 + 16) = v11;
    *(v16 + 24) = v12;
    (*(v8 + 32))(v16 + v14, v10, v7);
    *(v16 + v15) = a3;
    swift_unknownObjectRetain();

    sub_1007424F4();

    return swift_unknownObjectRelease();
  }
}

uint64_t sub_100716EE0()
{
  v0 = sub_100752624();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();
  sub_100742514();
  (*(v1 + 104))(v3, enum case for ActionOutcome.performed(_:), v0);
  sub_100752DB4();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_100717008(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v64 = a4;
  v59 = a2;
  v65 = sub_100750294();
  v61 = *(v65 - 8);
  v6 = *(v61 + 64);
  __chkstk_darwin(v65);
  v63 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v51 - v8;
  v10 = sub_10074ED34();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v51 - v15;
  v62 = a1;
  sub_100743704();
  v17 = sub_10074ECE4();
  v18 = *(v11 + 8);
  v18(v16, v10);
  if (v17)
  {
    sub_10000C518(&qword_100930CA0);
    v19 = sub_100752DE4();
    v57 = a3;
    v58 = v19;
    swift_getObjectType();
    v20 = sub_100742394() & v59;
    sub_100752A04();
    sub_1007529F4();
    sub_100750284();
    sub_1007538D4();
    v21 = sub_1007529F4();
    v59 = v20 & 1;
    if (v20)
    {
      v22 = "ActionDispatcher[ASDAppQuery.BetaApps]:cancelAction";
    }

    else
    {
      v22 = "ActionDispatcher[ASDAppQuery]:cancelAction";
    }

    if (v20)
    {
      v23 = 51;
    }

    else
    {
      v23 = 42;
    }

    v54 = v23;
    v55 = v22;
    if (v20)
    {
      v24 = &selRef_queryForBetaAppsWithStoreItemIDs_;
    }

    else
    {
      v24 = &selRef_queryForStoreItemIDs_;
    }

    v56 = v9;
    sub_100750274();

    sub_10000C518(&unk_1009231A0);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_1007A5CF0;
    *(v25 + 32) = v17;
    sub_100016C60(0, &qword_10092BE20);
    v52 = v17;
    isa = sub_100753294().super.isa;

    v53 = [objc_opt_self() *v24];

    v27 = v61;
    v28 = v9;
    v29 = v65;
    (*(v61 + 16))(v63, v28, v65);
    sub_1007194E4(v60, v67);
    v30 = (*(v27 + 80) + 33) & ~*(v27 + 80);
    v31 = v30 + v6;
    v32 = (v30 + v6) & 0xFFFFFFFFFFFFFFF8;
    v33 = (v32 + 31) & 0xFFFFFFFFFFFFFFF8;
    v34 = (v33 + 15) & 0xFFFFFFFFFFFFFFF8;
    v35 = (v34 + 23) & 0xFFFFFFFFFFFFFFF8;
    v36 = swift_allocObject();
    v37 = v54;
    *(v36 + 16) = v55;
    *(v36 + 24) = v37;
    *(v36 + 32) = 2;
    (*(v27 + 32))(v36 + v30, v63, v29);
    *(v36 + v31) = v59;
    sub_100719608(v67, v36 + v32 + 8);
    *(v36 + v33) = v62;
    v38 = (v36 + v34);
    v39 = v58;
    v40 = v64;
    *v38 = v57;
    v38[1] = v40;
    *(v36 + v35) = v39;
    v41 = v52;
    *(v36 + ((v35 + 15) & 0xFFFFFFFFFFFFFFF8)) = v52;
    aBlock[4] = sub_100719640;
    aBlock[5] = v36;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10071450C;
    aBlock[3] = &unk_1008826C0;
    v42 = _Block_copy(aBlock);
    v43 = v41;

    swift_unknownObjectRetain();

    v44 = v53;
    [v53 executeQueryWithResultHandler:v42];
    _Block_release(v42);

    (*(v27 + 8))(v56, v65);
    return v39;
  }

  else
  {
    if (qword_100921EE0 != -1)
    {
      swift_once();
    }

    v46 = sub_100752E44();
    sub_10000D0FC(v46, qword_100983318);
    sub_10000C518(&qword_100923930);
    sub_100752454();
    *(swift_allocObject() + 16) = xmmword_1007A5A00;
    sub_1007523A4();
    sub_100752D04();

    sub_10000C518(&qword_100930CA0);
    sub_100743704();
    v47 = sub_10074ECF4();
    v49 = v48;
    v18(v13, v10);
    sub_1007189B8();
    swift_allocError();
    *v50 = v47;
    *(v50 + 8) = v49;
    *(v50 + 16) = 0;
    return sub_100752D74();
  }
}

uint64_t sub_100717684(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13)
{
  v44 = a8;
  v45 = a13;
  v42 = a10;
  v43 = a11;
  v49 = a9;
  v50 = a12;
  v15 = sub_100752624();
  v41 = *(v15 - 8);
  __chkstk_darwin(v15);
  v17 = &v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_10074ED34();
  v47 = *(v18 - 8);
  v48 = v18;
  __chkstk_darwin(v18);
  v46 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1007538C4();
  sub_100752A04();
  v20 = sub_1007529F4();
  sub_100750274();

  if (a1)
  {
    if (a1 >> 62)
    {
      if (sub_100754664())
      {
        goto LABEL_4;
      }
    }

    else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_4:
      if ((a1 & 0xC000000000000001) != 0)
      {
        v21 = sub_100754574();
        goto LABEL_7;
      }

      if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v21 = *(a1 + 32);
LABEL_7:
        v22 = v21;
        v23 = [v21 progress];
        if (v23)
        {
          v24 = v23;
          [v23 cancel];
          v25 = v41;
          (*(v41 + 104))(v17, enum case for ActionOutcome.performed(_:), v15);
          sub_100752DB4();

          return (*(v25 + 8))(v17, v15);
        }

        if (qword_100921EE0 != -1)
        {
          swift_once();
        }

        v27 = sub_100752E44();
        sub_10000D0FC(v27, qword_100983318);
        sub_10000C518(&qword_100923930);
        sub_100752454();
        *(swift_allocObject() + 16) = xmmword_1007A5620;
        sub_1007523A4();
        v52 = sub_100016C60(0, &qword_10092BE20);
        v51[0] = v45;
        v28 = v45;
        sub_1007523B4();
        sub_10000C8CC(v51, &unk_100923520);
        sub_1007523A4();
        sub_100752D04();

        v29 = v46;
        sub_100743704();
        v30 = sub_10074ECF4();
        v32 = v31;
        (*(v47 + 8))(v29, v48);
        sub_1007189B8();
        swift_allocError();
        *v33 = v30;
        *(v33 + 8) = v32;
        *(v33 + 16) = 4;
        sub_100752DA4();
      }

      __break(1u);
      goto LABEL_22;
    }
  }

  if ((a7 & 1) == 0)
  {
    if (qword_100921EE0 == -1)
    {
LABEL_18:
      v34 = sub_100752E44();
      sub_10000D0FC(v34, qword_100983318);
      sub_10000C518(&qword_100923930);
      sub_100752454();
      *(swift_allocObject() + 16) = xmmword_1007A5620;
      sub_1007523A4();
      v52 = sub_100016C60(0, &qword_10092BE20);
      v51[0] = v45;
      v35 = v45;
      sub_1007523B4();
      sub_10000C8CC(v51, &unk_100923520);
      sub_1007523A4();
      sub_100752D04();

      v36 = v46;
      sub_100743704();
      v37 = sub_10074ECF4();
      v39 = v38;
      (*(v47 + 8))(v36, v48);
      sub_1007189B8();
      swift_allocError();
      *v40 = v37;
      *(v40 + 8) = v39;
      *(v40 + 16) = 4;
      sub_100752DA4();
    }

LABEL_22:
    swift_once();
    goto LABEL_18;
  }

  sub_100717008(v49, 0, v42, v43);
  sub_100752D54();
}

uint64_t sub_100717D68(unint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100752624();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_10074ED34();
  v13 = *(v35 - 8);
  __chkstk_darwin(v35);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    goto LABEL_12;
  }

  if (!(a1 >> 62))
  {
    if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_4;
    }

LABEL_12:
    v33 = a5;
    v34 = a4;
    if (qword_100921EE0 != -1)
    {
      swift_once();
    }

    v26 = sub_100752E44();
    sub_10000D0FC(v26, qword_100983318);
    sub_10000C518(&qword_100923930);
    sub_100752454();
    *(swift_allocObject() + 16) = xmmword_1007A5620;
    sub_1007523A4();
    v37 = sub_100016C60(0, &qword_10092BE20);
    v36[0] = a3;
    v27 = a3;
    sub_1007523B4();
    sub_10000C8CC(v36, &unk_100923520);
    sub_1007523A4();
    sub_100752D04();

    sub_100743704();
    v28 = sub_10074ECF4();
    v30 = v29;
    (*(v13 + 8))(v15, v35);
    sub_1007189B8();
    swift_allocError();
    *v31 = v28;
    *(v31 + 8) = v30;
    *(v31 + 16) = 5;
    sub_100752DA4();
  }

  if (!sub_100754664())
  {
    goto LABEL_12;
  }

LABEL_4:
  if ((a1 & 0xC000000000000001) != 0)
  {
    v16 = sub_100754574();
LABEL_7:
    a1 = v16;
    v17 = [v16 progress];
    if (v17)
    {
      v18 = v17;
      [v17 pause];
      (*(v10 + 104))(v12, enum case for ActionOutcome.performed(_:), v9);
      sub_100752DB4();

      return (*(v10 + 8))(v12, v9);
    }

    v33 = a5;
    v34 = a4;
    if (qword_100921EE0 == -1)
    {
      goto LABEL_10;
    }

    goto LABEL_18;
  }

  if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v16 = *(a1 + 32);
    goto LABEL_7;
  }

  __break(1u);
LABEL_18:
  swift_once();
LABEL_10:
  v20 = sub_100752E44();
  v32 = sub_10000D0FC(v20, qword_100983318);
  sub_10000C518(&qword_100923930);
  sub_100752454();
  *(swift_allocObject() + 16) = xmmword_1007A5620;
  sub_1007523A4();
  v37 = sub_100016C60(0, &qword_10092BE20);
  v36[0] = a3;
  v21 = a3;
  sub_1007523B4();
  sub_10000C8CC(v36, &unk_100923520);
  sub_1007523A4();
  sub_100752D04();

  sub_100743704();
  v22 = sub_10074ECF4();
  v24 = v23;
  (*(v13 + 8))(v15, v35);
  sub_1007189B8();
  swift_allocError();
  *v25 = v22;
  *(v25 + 8) = v24;
  *(v25 + 16) = 5;
  sub_100752DA4();
}

uint64_t sub_10071838C(unint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100752624();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_10074ED34();
  v13 = *(v35 - 8);
  __chkstk_darwin(v35);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    goto LABEL_12;
  }

  if (!(a1 >> 62))
  {
    if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_4;
    }

LABEL_12:
    v33 = a5;
    v34 = a4;
    if (qword_100921EE0 != -1)
    {
      swift_once();
    }

    v26 = sub_100752E44();
    sub_10000D0FC(v26, qword_100983318);
    sub_10000C518(&qword_100923930);
    sub_100752454();
    *(swift_allocObject() + 16) = xmmword_1007A5620;
    sub_1007523A4();
    v37 = sub_100016C60(0, &qword_10092BE20);
    v36[0] = a3;
    v27 = a3;
    sub_1007523B4();
    sub_10000C8CC(v36, &unk_100923520);
    sub_1007523A4();
    sub_100752D04();

    sub_100743704();
    v28 = sub_10074ECF4();
    v30 = v29;
    (*(v13 + 8))(v15, v35);
    sub_1007189B8();
    swift_allocError();
    *v31 = v28;
    *(v31 + 8) = v30;
    *(v31 + 16) = 6;
    sub_100752DA4();
  }

  if (!sub_100754664())
  {
    goto LABEL_12;
  }

LABEL_4:
  if ((a1 & 0xC000000000000001) != 0)
  {
    v16 = sub_100754574();
LABEL_7:
    a1 = v16;
    v17 = [v16 progress];
    if (v17)
    {
      v18 = v17;
      [v17 resume];
      (*(v10 + 104))(v12, enum case for ActionOutcome.performed(_:), v9);
      sub_100752DB4();

      return (*(v10 + 8))(v12, v9);
    }

    v33 = a5;
    v34 = a4;
    if (qword_100921EE0 == -1)
    {
      goto LABEL_10;
    }

    goto LABEL_18;
  }

  if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v16 = *(a1 + 32);
    goto LABEL_7;
  }

  __break(1u);
LABEL_18:
  swift_once();
LABEL_10:
  v20 = sub_100752E44();
  v32 = sub_10000D0FC(v20, qword_100983318);
  sub_10000C518(&qword_100923930);
  sub_100752454();
  *(swift_allocObject() + 16) = xmmword_1007A5620;
  sub_1007523A4();
  v37 = sub_100016C60(0, &qword_10092BE20);
  v36[0] = a3;
  v21 = a3;
  sub_1007523B4();
  sub_10000C8CC(v36, &unk_100923520);
  sub_1007523A4();
  sub_100752D04();

  sub_100743704();
  v22 = sub_10074ECF4();
  v24 = v23;
  (*(v13 + 8))(v15, v35);
  sub_1007189B8();
  swift_allocError();
  *v25 = v22;
  *(v25 + 8) = v24;
  *(v25 + 16) = 6;
  sub_100752DA4();
}

unint64_t sub_1007189B8()
{
  result = qword_1009478B0;
  if (!qword_1009478B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009478B0);
  }

  return result;
}

id sub_100718A0C()
{
  v1 = sub_100753064();

  v6 = 0;
  v2 = [v0 initWithBundleIdentifierOfSystemPlaceholder:v1 error:&v6];

  if (v2)
  {
    v3 = v6;
  }

  else
  {
    v4 = v6;
    sub_100741134();

    swift_willThrow();
  }

  return v2;
}

uint64_t sub_100718AD8(uint64_t a1, uint64_t a2)
{
  v28 = a2;
  v2 = sub_100745B04();
  v25 = *(v2 - 8);
  v26 = v2;
  __chkstk_darwin(v2);
  v27 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10074ED34();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10000C518(&qword_100929630);
  __chkstk_darwin(v8 - 8);
  v10 = &v24 - v9;
  v11 = sub_100752614();
  __chkstk_darwin(v11 - 8);
  v31 = _swiftEmptyArrayStorage;
  sub_1007525F4();
  sub_100743704();
  (*(v5 + 56))(v10, 0, 1, v4);
  sub_100742344();
  swift_allocObject();
  v12 = sub_100742334();

  sub_100753284();
  if (*((v31 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v31 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_100753304();
  }

  v24 = v12;
  sub_100753344();
  v29 = 0;
  v30 = 0xE000000000000000;
  sub_100754534(35);

  v29 = 0xD000000000000021;
  v30 = 0x800000010078D160;
  sub_100743704();
  v13 = sub_10074ECF4();
  v15 = v14;
  (*(v5 + 8))(v7, v4);
  v32._countAndFlagsBits = v13;
  v32._object = v15;
  sub_1007531B4(v32);

  sub_1007525F4();
  sub_100746734();
  swift_allocObject();
  if (sub_100746724())
  {

    sub_100753284();
    if (*((v31 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v31 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_100753304();
    }

    sub_100753344();
  }

  sub_1007525F4();
  sub_100744CB4();
  swift_allocObject();
  v16 = sub_100744C94();
  v33._countAndFlagsBits = 0xD000000000000023;
  v33._object = 0x800000010078D190;
  v36._countAndFlagsBits = 0;
  v36._object = 0xE000000000000000;
  v17 = sub_1007458B4(v33, v36);
  v19 = v18;
  v34._object = 0x800000010078D1C0;
  v34._countAndFlagsBits = 0xD00000000000001ALL;
  v37._countAndFlagsBits = 0;
  v37._object = 0xE000000000000000;
  sub_1007458B4(v34, v37);
  v35._countAndFlagsBits = 0xD00000000000001CLL;
  v35._object = 0x800000010078D1E0;
  v38._countAndFlagsBits = 0;
  v38._object = 0xE000000000000000;
  sub_1007458B4(v35, v38);
  sub_10000C518(&qword_1009478D0);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_1007A5A00;
  *(v20 + 32) = v17;
  *(v20 + 40) = v19;
  *(v20 + 48) = v16;
  *(v20 + 56) = 0u;

  sub_1007525F4();
  (*(v25 + 104))(v27, enum case for AlertActionStyle.normal(_:), v26);
  sub_100743144();
  swift_allocObject();
  v21 = sub_100743114();
  v22 = sub_10052AE0C(v21, 1, v28);

  return v22;
}

uint64_t sub_100719084(uint64_t a1)
{
  v2 = sub_10074ED34();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = aBlock - v7;
  sub_100743704();
  v9 = sub_10074ECE4();
  v10 = *(v3 + 8);
  v10(v8, v2);
  if (v9)
  {
    sub_10000C518(&qword_100930CA0);
    v11 = sub_100752DE4();
    sub_10000C518(&unk_1009231A0);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_1007A5CF0;
    *(v12 + 32) = v9;
    sub_100016C60(0, &qword_10092BE20);
    v13 = v9;
    isa = sub_100753294().super.isa;

    v15 = [objc_opt_self() queryForStoreItemIDs:isa];

    v16 = swift_allocObject();
    v16[2] = v13;
    v16[3] = v11;
    v16[4] = a1;
    aBlock[4] = sub_1007194D8;
    aBlock[5] = v16;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10071450C;
    aBlock[3] = &unk_100882670;
    v17 = _Block_copy(aBlock);
    v18 = v13;

    [v15 executeQueryWithResultHandler:v17];
    _Block_release(v17);

    return v11;
  }

  else
  {
    if (qword_100921EE0 != -1)
    {
      swift_once();
    }

    v20 = sub_100752E44();
    sub_10000D0FC(v20, qword_100983318);
    sub_10000C518(&qword_100923930);
    sub_100752454();
    *(swift_allocObject() + 16) = xmmword_1007A5A00;
    sub_1007523A4();
    sub_100752D04();

    sub_10000C518(&qword_100930CA0);
    sub_100743704();
    v21 = sub_10074ECF4();
    v23 = v22;
    v10(v5, v2);
    sub_1007189B8();
    swift_allocError();
    *v24 = v21;
    *(v24 + 8) = v23;
    *(v24 + 16) = 0;
    return sub_100752D74();
  }
}

uint64_t sub_1007194C0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10071951C()
{
  v1 = sub_100750294();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 33) & ~v3;
  v5 = (((((((((v4 + *(v2 + 64)) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  swift_unknownObjectWeakDestroy();

  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_100719640(unint64_t a1, uint64_t a2)
{
  v5 = *(sub_100750294() - 8);
  v6 = (*(v5 + 80) + 33) & ~*(v5 + 80);
  v7 = v6 + *(v5 + 64);
  v8 = ((v7 & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 15) & 0xFFFFFFFFFFFFFFF8;
  return sub_100717684(a1, a2, *(v2 + 16), *(v2 + 24), *(v2 + 32), v2 + v6, *(v2 + v7), v2 + (v7 & 0xFFFFFFFFFFFFFFF8) + 8, *(v2 + v8), *(v2 + v9), *(v2 + v9 + 8), *(v2 + ((v9 + 23) & 0xFFFFFFFFFFFFFFF8)), *(v2 + ((((v9 + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_100719734()
{

  swift_unknownObjectWeakDestroy();

  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_1007197A0()
{
  v1 = sub_10074ED34();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10071986C(uint64_t a1)
{
  v3 = *(sub_10074ED34() - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  return sub_100716CC8(a1, v4, v5, v6);
}

uint64_t sub_1007198E0()
{
  v1 = sub_10074ED34();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_1007199B8()
{
  sub_10074ED34();

  return sub_100716EE0();
}

uint64_t sub_100719A48(uint64_t a1)
{
  if ((*(a1 + 16) & 7) == 7)
  {
    return (*a1 + 7);
  }

  else
  {
    return *(a1 + 16) & 7;
  }
}

uint64_t sub_100719A64(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF9 && *(a1 + 17))
  {
    return (*a1 + 249);
  }

  v3 = *(a1 + 16);
  if (v3 <= 7)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_100719AAC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF8)
  {
    *(result + 16) = 0;
    *result = a2 - 249;
    *(result + 8) = 0;
    if (a3 >= 0xF9)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF9)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_100719AF0(uint64_t result, unsigned int a2)
{
  if (a2 >= 7)
  {
    *result = a2 - 7;
    *(result + 8) = 0;
    LOBYTE(a2) = 7;
  }

  *(result + 16) = a2;
  return result;
}

void sub_100719B34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_10074B184();
  (*(a3 + 8))(a2, a3);
  sub_100752764();
  sub_100752D34();

  sub_10074B114();
}

void sub_100719BD8(char a1, uint64_t a2, uint64_t a3)
{
  *((*(a3 + 16))(a2, a3) + OBJC_IVAR____TtC22SubscribePageExtension35TodayCardCollectionElementsObserver_isMotionEnabled) = a1;

  sub_100719D94(a2, a3);
}

uint64_t sub_100719C50(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v4();
  Strong = swift_unknownObjectWeakLoadStrong();

  if (Strong)
  {
    v7 = [Strong layer];
    CATransform3DMakeScale(&v8, 1.0, 1.0, 1.0);
    [v7 setTransform:&v8];

    (v4)(a1, a2);
    swift_unknownObjectWeakAssign();
  }

  return result;
}

uint64_t sub_100719D4C(uint64_t a1, uint64_t a2)
{
  v2 = *((*(a2 + 16))() + OBJC_IVAR____TtC22SubscribePageExtension35TodayCardCollectionElementsObserver_isMotionEnabled);

  return v2;
}

void sub_100719D94(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  (*(a2 + 8))();
  sub_10074B184();
  sub_1007526E4();

  v5 = v23;
  v21 = a1;
  v22 = v3;
  v20 = *(v3 + 16);
  LODWORD(v3) = *(v20(a1, v3) + OBJC_IVAR____TtC22SubscribePageExtension35TodayCardCollectionElementsObserver_isMotionEnabled);

  if (v3 == 1)
  {
    sub_10074B104();
  }

  else
  {
    v6 = [v2 view];
    if (v6)
    {
      v7 = v6;
      if (sub_10074B174())
      {
        sub_10074B0D4();
      }
    }
  }

  v8 = [v2 collectionView];
  if (!v8)
  {
    goto LABEL_21;
  }

  v19 = v8;
  v9 = [v8 visibleCells];
  sub_10003E054();
  v10 = sub_1007532A4();

  if (!(v10 >> 62))
  {
    v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v11)
    {
      goto LABEL_10;
    }

LABEL_20:

    v5 = v23;
LABEL_21:

    return;
  }

  v11 = sub_100754664();
  if (!v11)
  {
    goto LABEL_20;
  }

LABEL_10:
  if (v11 >= 1)
  {
    for (i = 0; i != v11; ++i)
    {
      if ((v10 & 0xC000000000000001) != 0)
      {
        v13 = sub_100754574();
      }

      else
      {
        v13 = *(v10 + 8 * i + 32);
      }

      v14 = v13;
      swift_getObjectType();
      v15 = swift_conformsToProtocol2();
      if (v15)
      {
        if (v14)
        {
          v16 = v15;
          ObjectType = swift_getObjectType();
          v18 = *(v20(v21, v22) + OBJC_IVAR____TtC22SubscribePageExtension35TodayCardCollectionElementsObserver_isMotionEnabled);

          (*(v16 + 192))(v18, ObjectType, v16);
        }
      }
    }

    goto LABEL_20;
  }

  __break(1u);
}

void sub_10071A010(void *a1, CGFloat a2)
{
  v3 = [a1 layer];
  CATransform3DMakeScale(&v4, a2, a2, 1.0);
  [v3 setTransform:&v4];
}

uint64_t sub_10071A1A4()
{
  v1 = sub_100750354();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100745F54();
  __chkstk_darwin(v5 - 8);
  v6 = type metadata accessor for IconGridView();
  v10.receiver = v0;
  v10.super_class = v6;
  objc_msgSendSuper2(&v10, "layoutSubviews");
  sub_1007477B4();
  sub_10071A3DC();
  sub_100745F44();
  swift_beginAccess();

  sub_100157E3C(v7);

  sub_100745F74();
  swift_allocObject();
  sub_100745F64();
  sub_1007477B4();
  sub_100745F24();

  return (*(v2 + 8))(v4, v1);
}

void sub_10071A3DC()
{
  v1 = v0;
  v2 = sub_100745F54();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100745F74();
  sub_100745F44();
  v6 = sub_100745F34();
  (*(v3 + 8))(v5, v2);
  v7 = OBJC_IVAR____TtC22SubscribePageExtension12IconGridView_artworkViews;
  swift_beginAccess();
  v8 = *&v0[v7];
  if (v8 >> 62)
  {
    if (sub_100754664() == v6)
    {
      return;
    }
  }

  else if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) == v6)
  {
    return;
  }

  v9 = *&v0[v7];
  if (v9 >> 62)
  {
    v10 = sub_100754664();
    if (!v10)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v10)
    {
      goto LABEL_12;
    }
  }

  if (v10 < 1)
  {
LABEL_31:
    __break(1u);
    return;
  }

  v11 = 0;
  do
  {
    if ((v9 & 0xC000000000000001) != 0)
    {
      v12 = sub_100754574();
    }

    else
    {
      v12 = *(v9 + 8 * v11 + 32);
    }

    v13 = v12;
    ++v11;
    v23 = v12;
    swift_beginAccess();
    sub_10000C518(&qword_10092A198);
    sub_1007512D4();
    swift_endAccess();
  }

  while (v10 != v11);

LABEL_12:
  *&v0[v7] = _swiftEmptyArrayStorage;

  if (v6 < 0)
  {
    __break(1u);
    goto LABEL_31;
  }

  for (; v6; --v6)
  {
    swift_beginAccess();
    sub_10000C518(&qword_10092A198);
    sub_1007512B4();
    swift_endAccess();
    v14 = v23;
    swift_beginAccess();
    v15 = v14;
    sub_100753284();
    if (*((*(v1 + v7) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + v7) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_100753304();
    }

    sub_100753344();
    swift_endAccess();
    v16 = [v15 superview];
    if (!v16 || (v17 = v16, sub_100009D34(), v18 = v1, v19 = sub_100753FC4(), v17, v18, (v19 & 1) == 0))
    {
      [v1 addSubview:v15];
    }
  }

  v20 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension12IconGridView_impressionableArtworks);
  if (v20)
  {
    v21 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension12IconGridView_artworkLoader);
    if (v21)
    {

      sub_10071A850(v20, v21);
    }
  }
}

uint64_t sub_10071A81C@<X0>(uint64_t *a1@<X8>)
{
  sub_1007433C4();
  result = sub_1007431D4();
  *a1 = result;
  return result;
}

uint64_t sub_10071A850(unint64_t a1, uint64_t a2)
{
  v4 = sub_10074F314();
  __chkstk_darwin(v4 - 8);
  v5 = OBJC_IVAR____TtC22SubscribePageExtension12IconGridView_artworkViews;
  swift_beginAccess();
  v6 = *(v2 + v5);
  if (v6 >> 62)
  {
    goto LABEL_41;
  }

  result = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (result)
  {
    while (1)
    {
      v22 = a1 >> 62;
      result = a1 >> 62 ? sub_100754664() : *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v5 = *(v2 + v5);
      v8 = v5 >> 62;
      if (!result)
      {
        break;
      }

      if (v8)
      {
        v9 = sub_100754664();
      }

      else
      {
        v9 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (!v9)
      {
      }

      v10 = 0;
      v11 = a1 & 0xFFFFFFFFFFFFFF8;
      v21 = a1 & 0xC000000000000001;
      while (1)
      {
        if ((v5 & 0xC000000000000001) != 0)
        {
          v12 = sub_100754574();
        }

        else
        {
          if (v10 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_37;
          }

          v12 = *(v5 + 8 * v10 + 32);
        }

        v13 = v12;
        a1 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          break;
        }

        if (v22)
        {
          v14 = sub_100754664();
        }

        else
        {
          v14 = *(v11 + 16);
        }

        if (!v14)
        {
          goto LABEL_38;
        }

        v15 = v10 % v14;
        if (v21)
        {
          sub_100754574();
        }

        else
        {
          if ((v15 & 0x8000000000000000) != 0)
          {
            goto LABEL_39;
          }

          if (v15 >= *(v11 + 16))
          {
            goto LABEL_40;
          }
        }

        sub_100749504();

        sub_10074F364();
        sub_10074F324();
        sub_100743364();
        sub_1007433C4();
        sub_10004D658();
        v2 = a2;
        sub_100744204();

        ++v10;
        if (a1 == v9)
        {
        }
      }

      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      result = sub_100754664();
      if (!result)
      {
        return result;
      }
    }

    if (v8)
    {
      result = sub_100754664();
      v16 = result;
      if (!result)
      {
        return result;
      }
    }

    else
    {
      v16 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v16)
      {
        return result;
      }
    }

    if (v16 >= 1)
    {

      v17 = 0;
      do
      {
        if ((v5 & 0xC000000000000001) != 0)
        {
          v18 = sub_100754574();
        }

        else
        {
          v18 = *(v5 + 8 * v17 + 32);
        }

        v20 = v18;
        ++v17;
        v24.value.super.isa = 0;
        v24.is_nil = 1;
        sub_1007432F4(v24, v19);
      }

      while (v16 != v17);
    }

    __break(1u);
  }

  return result;
}

id sub_10071ABC4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for IconGridView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for IconGridView()
{
  result = qword_100947918;
  if (!qword_100947918)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10071ACF8()
{
  sub_1003113E8();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

id sub_10071AFD0()
{
  v1 = sub_10000C518(&qword_100934110);
  __chkstk_darwin(v1 - 8);
  v37 = v36 - v2;
  v3 = sub_10074C3E4();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36[0] = sub_10000C518(&unk_100925560);
  v7 = *(v36[0] - 8);
  __chkstk_darwin(v36[0]);
  v9 = v36 - v8;
  v10 = sub_1007479B4();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = v36 - v15;
  v17 = type metadata accessor for PlaceholderHelper.PlacholderOfferButton();
  v39.receiver = v0;
  v39.super_class = v17;
  v36[1] = v17;
  objc_msgSendSuper2(&v39, "layoutSubviews");
  v38 = v0;
  v18 = [v0 traitCollection];
  if (sub_100753804())
  {
    if (qword_100921988 != -1)
    {
      swift_once();
    }

    v19 = qword_10093FF40;
  }

  else
  {
    if (qword_100921990 != -1)
    {
      swift_once();
    }

    v19 = qword_10093FF58;
  }

  v20 = sub_10000D0FC(v10, v19);
  (*(v11 + 16))(v13, v20, v10);

  (*(v11 + 32))(v16, v13, v10);
  (*(v4 + 104))(v6, enum case for OfferButtonSubtitlePosition.below(_:), v3);
  (*(v4 + 56))(v37, 1, 1, v3);
  sub_1001F750C();
  sub_10074A9C4();
  v21 = v38;
  sub_100747984();
  v23 = v22;
  v25 = v24;
  (*(v7 + 8))(v9, v36[0]);
  (*(v11 + 8))(v16, v10);
  v26 = *&v21[OBJC_IVAR____TtCV22SubscribePageExtension17PlaceholderHelperP33_4A9A4D8787D6A1CEAEBA94C8789E237C21PlacholderOfferButton_button];
  [v26 frame];
  [v26 setFrame:?];
  v27 = [v26 layer];
  v28 = v27;
  if (v23 >= v25)
  {
    v29 = v25;
  }

  else
  {
    v29 = v23;
  }

  [v27 setCornerRadius:{v29 * 0.5, v36[0]}];

  sub_1007477B4();
  x = v40.origin.x;
  y = v40.origin.y;
  width = v40.size.width;
  height = v40.size.height;
  MidX = CGRectGetMidX(v40);
  v41.origin.x = x;
  v41.origin.y = y;
  v41.size.width = width;
  v41.size.height = height;
  return [v26 setCenter:{MidX, CGRectGetMidY(v41)}];
}

id sub_10071B4D4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PlaceholderHelper.PlacholderOfferButton();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_10071B540(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = [objc_allocWithZone(UILabel) init];
  v5 = sub_100753064();
  [v4 setText:v5];

  [v4 setNumberOfLines:1];
  [v4 setLineBreakMode:1];
  [v4 setAdjustsFontForContentSizeCategory:1];
  v6 = [objc_opt_self() preferredFontForTextStyle:a3];
  [v4 setFont:v6];

  v7 = [objc_opt_self() secondarySystemBackgroundColor];
  [v4 setTextColor:v7];

  return v4;
}

id sub_10071B670(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_10074AB44();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10000C518(&unk_100928A40);
  __chkstk_darwin(v8 - 8);
  v10 = &v20 - v9;
  v11 = sub_100750534();
  v12 = *(v11 - 8);
  (*(v12 + 16))(v10, a3, v11);
  (*(v12 + 56))(v10, 0, 1, v11);
  (*(v5 + 104))(v7, enum case for DirectionalTextAlignment.none(_:), v4);
  v13 = objc_allocWithZone(sub_100745C84());
  v14 = sub_100745C74();
  v15 = sub_100753064();
  [v14 setText:v15];

  sub_100745C34();
  v16 = objc_opt_self();
  v17 = v14;
  v18 = [v16 secondarySystemBackgroundColor];
  [v17 setTextColor:v18];

  return v17;
}

double sub_10071B8D8()
{
  v1 = sub_10000C518(&qword_100934110);
  __chkstk_darwin(v1 - 8);
  v26 = &v24 - v2;
  v3 = sub_10074C3E4();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_10000C518(&unk_100925560);
  v7 = *(v25 - 8);
  __chkstk_darwin(v25);
  v9 = &v24 - v8;
  v10 = sub_1007479B4();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v15 = __chkstk_darwin(v14).n128_u64[0];
  v17 = &v24 - v16;
  v27 = v0;
  v18 = [v0 traitCollection];
  if (sub_100753804())
  {
    if (qword_100921988 != -1)
    {
      swift_once();
    }

    v19 = qword_10093FF40;
  }

  else
  {
    if (qword_100921990 != -1)
    {
      swift_once();
    }

    v19 = qword_10093FF58;
  }

  v20 = sub_10000D0FC(v10, v19);
  (*(v11 + 16))(v13, v20, v10);

  (*(v11 + 32))(v17, v13, v10);
  (*(v4 + 104))(v6, enum case for OfferButtonSubtitlePosition.below(_:), v3);
  (*(v4 + 56))(v26, 1, 1, v3);
  sub_1001F750C();
  sub_10074A9C4();
  sub_100747984();
  v22 = v21;
  (*(v7 + 8))(v9, v25);
  (*(v11 + 8))(v17, v10);
  return v22;
}

void sub_10071BD28()
{
  v1 = v0;
  v2 = sub_100750FA4();
  __chkstk_darwin(v2 - 8);
  v23.receiver = v0;
  v23.super_class = type metadata accessor for PurchasesLoadingViewController();
  objc_msgSendSuper2(&v23, "viewDidLoad");
  v3 = [v0 view];
  if (v3)
  {
    v4 = v3;
    sub_100016C60(0, &qword_100923500);
    v5 = sub_100753E04();
    [v4 setBackgroundColor:v5];

    sub_10071D038(&unk_1009479C0, v6, type metadata accessor for PurchasesLoadingViewController);
    swift_unknownObjectRetain();
    sub_100747AD4();
    sub_100744314();
    sub_100750F94();
    v7 = objc_allocWithZone(sub_100750FC4());
    v8 = sub_100750FB4();
    v9 = OBJC_IVAR____TtC22SubscribePageExtension30PurchasesLoadingViewController_overlayViewController;
    v10 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension30PurchasesLoadingViewController_overlayViewController];
    sub_10074B974();

    v11 = *&v1[v9];
    *&v1[v9] = v8;
    v12 = v8;

    v13 = [v1 view];
    if (v13)
    {
      v14 = v13;
      [v13 bounds];
      v16 = v15;
      v18 = v17;
      v20 = v19;
      v22 = v21;

      v24 = v16;
      v25 = v18;
      v26 = v20;
      v27 = v22;
      v28 = 0;
      sub_10074B964();

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_10071C000()
{
  v43.receiver = v0;
  v43.super_class = type metadata accessor for PurchasesLoadingViewController();
  objc_msgSendSuper2(&v43, "viewDidLayoutSubviews");
  v1 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension30PurchasesLoadingViewController_overlayViewController];
  if (v1)
  {
    v2 = v1;
    v3 = [v2 view];
    if (v3)
    {
      v4 = v3;
      v5 = [v0 view];
      if (v5)
      {
        v6 = v5;
        [v5 bounds];
        v8 = v7;
        v10 = v9;
        v12 = v11;
        v14 = v13;

        [v4 setFrame:{v8, v10, v12, v14}];
        goto LABEL_5;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

LABEL_5:
  v15 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension30PurchasesLoadingViewController_familyPurchases];
  if (!v15)
  {
    goto LABEL_9;
  }

  v16 = v15;
  v17 = [v16 view];
  if (!v17)
  {
    goto LABEL_16;
  }

  v18 = v17;
  v19 = [v0 view];
  if (!v19)
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v20 = v19;
  [v19 bounds];
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;

  [v18 setFrame:{v22, v24, v26, v28}];
LABEL_9:
  v29 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension30PurchasesLoadingViewController_loggedInUserPurchases];
  if (!v29)
  {
    return;
  }

  v30 = v29;
  v31 = [v30 view];
  if (!v31)
  {
    goto LABEL_18;
  }

  v32 = v31;
  v33 = [v0 view];
  if (!v33)
  {
LABEL_19:
    __break(1u);
    return;
  }

  v34 = v33;
  [v33 bounds];
  v36 = v35;
  v38 = v37;
  v40 = v39;
  v42 = v41;

  [v32 setFrame:{v36, v38, v40, v42}];
}

id sub_10071C274()
{
  v1 = v0;
  v2 = sub_100752314();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC22SubscribePageExtension30PurchasesLoadingViewController_overlayViewController;
  v7 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension30PurchasesLoadingViewController_overlayViewController];
  sub_10074B974();

  v8 = *&v0[v6];
  *&v0[v6] = 0;

  result = [v0 view];
  if (!result)
  {
    __break(1u);
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v10 = result;
  [result bounds];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;

  v46 = v12;
  v47 = v14;
  v48 = v16;
  v49 = v18;
  v50 = 0;
  result = sub_10074B964();
  v19 = OBJC_IVAR____TtC22SubscribePageExtension30PurchasesLoadingViewController_loggedInUserPurchases;
  if (*&v1[OBJC_IVAR____TtC22SubscribePageExtension30PurchasesLoadingViewController_loggedInUserPurchases])
  {
    return result;
  }

  sub_10000C518(&qword_100938D88);
  v20 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension30PurchasesLoadingViewController_objectGraph];
  sub_100752764();
  sub_100752D34();
  type metadata accessor for ASDPurchaseHistoryContext(0);
  v44[0] = 1;
  sub_1007522F4();
  sub_100752724();
  v21 = *(v3 + 8);
  v21(v5, v2);
  LOBYTE(v44[0]) = 1;
  sub_1007522F4();
  v22 = sub_100752724();

  v21(v5, v2);
  v43[0] = v22;
  v43[1] = sub_1000C0D3C(v22);
  v43[2] = v23;
  sub_100016C60(0, &qword_100939F50);

  sub_100752D34();
  sub_10000C824(v45, v44);
  sub_10000C518(&qword_100938E40);
  v24 = sub_100748DA4();
  v25 = *(v24 - 8);
  v26 = *(v25 + 72);
  v27 = (*(v25 + 80) + 32) & ~*(v25 + 80);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_1007A6580;
  v29 = v28 + v27;
  v30 = *(v25 + 104);
  v30(v29, enum case for PurchasesContentMode.all(_:), v24);
  v30(v29 + v26, enum case for PurchasesContentMode.notOnDevice(_:), v24);
  sub_10074B704();
  swift_allocObject();
  swift_unknownObjectRetain();
  v31 = sub_10074B654();
  v32 = sub_10071D038(&qword_100938E48, 255, &type metadata accessor for PurchasesContentPresenter);

  v33 = sub_1006B94B0(v20, v31, v32, _swiftEmptyArrayStorage, 0xD000000000000014, 0x800000010078D3E0);
  v34 = objc_allocWithZone(type metadata accessor for PurchasesViewController());
  sub_1002BDCF8(v31, v33);
  v35 = *&v1[v19];
  *&v1[v19] = v36;
  v37 = v36;

  v38 = v37;
  [v38 willMoveToParentViewController:v1];
  [v1 addChildViewController:v38];
  result = [v1 view];
  if (!result)
  {
    goto LABEL_8;
  }

  v39 = result;
  result = [v38 view];
  if (!result)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  v40 = result;
  [v39 addSubview:result];

  [v38 didMoveToParentViewController:v1];
  v41 = [v38 title];

  [v1 setTitle:v41];
  v42 = [v38 collectionView];
  [v1 setContentScrollView:v42 forEdge:15];
  swift_unknownObjectRelease();

  return sub_10000C620(v45);
}

id sub_10071C838()
{
  v1 = v0;
  v2 = sub_100752CD4();
  __chkstk_darwin(v2);
  v3 = OBJC_IVAR____TtC22SubscribePageExtension30PurchasesLoadingViewController_overlayViewController;
  v4 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension30PurchasesLoadingViewController_overlayViewController];
  sub_10074B974();

  v5 = *&v0[v3];
  *&v0[v3] = 0;

  result = [v0 view];
  if (!result)
  {
    __break(1u);
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v7 = result;
  [result bounds];

  result = sub_10074B964();
  v8 = OBJC_IVAR____TtC22SubscribePageExtension30PurchasesLoadingViewController_familyPurchases;
  if (*&v0[OBJC_IVAR____TtC22SubscribePageExtension30PurchasesLoadingViewController_familyPurchases])
  {
    return result;
  }

  v9 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension30PurchasesLoadingViewController_objectGraph];
  sub_100752764();

  sub_100752D34();
  sub_10074AC84();
  swift_allocObject();
  v10 = sub_10074ABF4();
  v11 = sub_10071D038(&qword_1009479B8, 255, &type metadata accessor for FamilyPurchasesPresenter);

  v12 = sub_1006B94B0(v9, v10, v11, _swiftEmptyArrayStorage, 0xD000000000000013, 0x800000010078D3C0);
  v13 = objc_allocWithZone(type metadata accessor for FamilyPurchasesViewController());
  v14 = sub_10036F0D4(v10, v12);
  v15 = *&v1[v8];
  *&v1[v8] = v14;
  v16 = v14;

  v17 = v16;
  [v17 willMoveToParentViewController:v1];
  [v1 addChildViewController:v17];
  result = [v1 view];
  if (!result)
  {
    goto LABEL_8;
  }

  v18 = result;
  result = [v17 view];
  if (!result)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  v19 = result;
  [v18 addSubview:result];

  [v17 didMoveToParentViewController:v1];
  v20 = [v17 title];

  [v1 setTitle:v20];
  v21 = [v17 collectionView];
  [v1 setContentScrollView:v21 forEdge:15];
}

void sub_10071CBC0()
{
  v1 = v0;
  v2 = sub_100750FA4();
  __chkstk_darwin(v2 - 8);
  sub_100750F94();
  v3 = objc_allocWithZone(sub_100750FC4());
  v4 = sub_100750FB4();
  v5 = OBJC_IVAR____TtC22SubscribePageExtension30PurchasesLoadingViewController_overlayViewController;
  v6 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension30PurchasesLoadingViewController_overlayViewController];
  sub_10074B974();

  v7 = *&v1[v5];
  *&v1[v5] = v4;
  v8 = v4;

  v9 = [v1 view];
  if (v9)
  {
    v10 = v9;
    [v9 bounds];

    sub_10074B964();
  }

  else
  {
    __break(1u);
  }
}

id sub_10071CD18()
{
  v1 = OBJC_IVAR____TtC22SubscribePageExtension30PurchasesLoadingViewController_overlayViewController;
  v2 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension30PurchasesLoadingViewController_overlayViewController];
  sub_10074B974();

  v3 = *&v0[v1];
  *&v0[v1] = 0;

  result = [v0 view];
  if (result)
  {
    v5 = result;
    [result bounds];

    return sub_10074B964();
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_10071CE10()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PurchasesLoadingViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_10071CF4C(uint64_t a1, uint64_t a2)
{
  *&v2[OBJC_IVAR____TtC22SubscribePageExtension30PurchasesLoadingViewController_loggedInUserPurchases] = 0;
  *&v2[OBJC_IVAR____TtC22SubscribePageExtension30PurchasesLoadingViewController_familyPurchases] = 0;
  *&v2[OBJC_IVAR____TtC22SubscribePageExtension30PurchasesLoadingViewController_overlayViewController] = 0;
  *&v2[OBJC_IVAR____TtC22SubscribePageExtension30PurchasesLoadingViewController_objectGraph] = a2;
  sub_1007442C4();
  sub_100752764();

  sub_100752D34();
  *&v2[OBJC_IVAR____TtC22SubscribePageExtension30PurchasesLoadingViewController_artworkLoader] = v6;
  *&v2[OBJC_IVAR____TtC22SubscribePageExtension30PurchasesLoadingViewController_presenter] = a1;
  v5.receiver = v2;
  v5.super_class = type metadata accessor for PurchasesLoadingViewController();

  return objc_msgSendSuper2(&v5, "initWithNibName:bundle:", 0, 0);
}

uint64_t sub_10071D038(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

id sub_10071D0A8(uint64_t a1)
{
  sub_1007442C4();
  sub_100752764();
  sub_100752D34();
  *&v1[OBJC_IVAR____TtC22SubscribePageExtension21GalleryViewController_artworkLoader] = v12;
  *&v1[OBJC_IVAR____TtC22SubscribePageExtension21GalleryViewController_artwork] = a1;
  v3 = [objc_allocWithZone(UICollectionViewFlowLayout) init];
  [v3 setSectionInset:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];
  [v3 setMinimumInteritemSpacing:0.0];
  [v3 setMinimumLineSpacing:0.0];
  [v3 setScrollDirection:1];
  v11.receiver = v1;
  v11.super_class = type metadata accessor for GalleryViewController();
  v4 = objc_msgSendSuper2(&v11, "initWithCollectionViewLayout:", v3);
  v5 = [v4 collectionView];
  if (v5)
  {
    v6 = v5;
    [v5 setContentInsetAdjustmentBehavior:2];
  }

  v7 = v4;
  v8 = [v7 navigationItem];
  v9 = [objc_allocWithZone(UIBarButtonItem) initWithBarButtonSystemItem:24 target:v7 action:"dismissFrom:"];

  [v8 setRightBarButtonItem:v9];

  return v7;
}

id sub_10071D2D8()
{
  v1 = [v0 navigationController];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 barHideOnTapGestureRecognizer];

    [v3 removeTarget:v0 action:0];
  }

  v5.receiver = v0;
  v5.super_class = type metadata accessor for GalleryViewController();
  return objc_msgSendSuper2(&v5, "dealloc");
}

void sub_10071D490(void *a1, uint64_t a2, uint64_t a3, const char **a4)
{
  v8.receiver = a1;
  v8.super_class = type metadata accessor for GalleryViewController();
  v6 = *a4;
  v7 = v8.receiver;
  objc_msgSendSuper2(&v8, v6, a3);
  sub_100744254();
}

void sub_10071D518(void *a1, uint64_t a2, const char **a3)
{
  v6.receiver = a1;
  v6.super_class = type metadata accessor for GalleryViewController();
  v4 = *a3;
  v5 = v6.receiver;
  objc_msgSendSuper2(&v6, v4);
  sub_100744254();
}

void sub_10071D588()
{
  v24.receiver = v0;
  v24.super_class = type metadata accessor for GalleryViewController();
  objc_msgSendSuper2(&v24, "viewDidLoad");
  v1 = [v0 navigationController];
  if (v1)
  {
    v2 = v1;
    [v1 setHidesBarsOnTap:1];
  }

  v3 = [v0 navigationController];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 barHideOnTapGestureRecognizer];

    [v5 addTarget:v0 action:"tapStateChangedOn:"];
  }

  v6 = [objc_allocWithZone(UISwipeGestureRecognizer) initWithTarget:v0 action:"swipeStateChangedOn:"];
  [v6 setDirection:8];
  v7 = [v0 view];
  if (v7)
  {
    v8 = v7;
    [v7 addGestureRecognizer:v6];

    v9 = [v0 collectionView];
    if (v9)
    {
      if (qword_100921E78 != -1)
      {
        v23 = v9;
        swift_once();
        v9 = v23;
      }

      v10 = v9;
      [v9 setBackgroundColor:qword_1009479D0];
    }

    v11 = [v0 collectionView];
    if (v11)
    {
      v12 = v11;
      [v11 setAllowsSelection:0];
    }

    v13 = [v0 collectionView];
    if (v13)
    {
      v14 = v13;
      [v13 setAlwaysBounceHorizontal:1];
    }

    v15 = [v0 collectionView];
    if (v15)
    {
      v16 = v15;
      [v15 setShowsHorizontalScrollIndicator:0];
    }

    v17 = [v0 collectionView];
    if (v17)
    {
      v18 = v17;
      [v17 setPagingEnabled:1];
    }

    v19 = [v0 collectionView];
    if (v19)
    {
      v20 = v19;
      type metadata accessor for ArtworkCollectionViewCell();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      sub_1007539D4();
      v22 = sub_100753064();

      [v20 registerClass:ObjCClassFromMetadata forCellWithReuseIdentifier:v22];
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_10071D8BC(uint64_t a1)
{
  v8.receiver = v1;
  v8.super_class = type metadata accessor for GalleryViewController();
  objc_msgSendSuper2(&v8, "traitCollectionDidChange:", a1);
  v3 = [v1 collectionView];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 collectionViewLayout];

    [v5 invalidateLayout];
  }

  v6 = [v1 collectionView];
  if (v6)
  {
    v7 = v6;
    [v6 setNeedsLayout];
  }
}

id sub_10071DA58(void *a1)
{
  result = [a1 state];
  if (result == 3)
  {
    v3 = objc_opt_self();
    v4 = swift_allocObject();
    *(v4 + 16) = v1;
    v7[4] = sub_10071E7B4;
    v7[5] = v4;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 1107296256;
    v7[2] = sub_1000CF7B0;
    v7[3] = &unk_100882918;
    v5 = _Block_copy(v7);
    v6 = v1;

    [v3 animateWithDuration:v5 animations:UINavigationControllerHideShowBarDuration];
    _Block_release(v5);
    return [v6 setNeedsStatusBarAppearanceUpdate];
  }

  return result;
}

void sub_10071DB7C(void *a1)
{
  v2 = [a1 navigationController];
  if (!v2)
  {
    __break(1u);
    return;
  }

  v3 = v2;
  v4 = [v2 isNavigationBarHidden];

  v5 = [a1 collectionView];
  if (v4)
  {
    if (!v5)
    {
      return;
    }

    if (qword_100921E80 != -1)
    {
      v8 = v5;
      swift_once();
      v5 = v8;
    }

    v6 = &qword_1009479D8;
  }

  else
  {
    if (!v5)
    {
      return;
    }

    if (qword_100921E78 != -1)
    {
      v9 = v5;
      swift_once();
      v5 = v9;
    }

    v6 = &qword_1009479D0;
  }

  v7 = v5;
  [v5 setBackgroundColor:*v6];
}

void sub_10071DD2C()
{
  v1 = [v0 navigationController];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 isNavigationBarHidden];

    if ((v3 & 1) == 0)
    {
      v4 = objc_opt_self();
      v5 = swift_allocObject();
      *(v5 + 16) = v0;
      v10[4] = sub_10071E794;
      v10[5] = v5;
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 1107296256;
      v10[2] = sub_1000CF7B0;
      v10[3] = &unk_1008828C8;
      v6 = _Block_copy(v10);
      v7 = v0;

      [v4 animateWithDuration:v6 animations:UINavigationControllerHideShowBarDuration];
      _Block_release(v6);
      v8 = [v7 navigationController];
      if (v8)
      {
        v9 = v8;
        [v8 setNavigationBarHidden:1 animated:1];
      }

      [v7 setNeedsStatusBarAppearanceUpdate];
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_10071DEB4(void *a1)
{
  v1 = [a1 collectionView];
  if (v1)
  {
    v2 = v1;
    if (qword_100921E80 != -1)
    {
      swift_once();
      v1 = v2;
    }

    [v1 setBackgroundColor:qword_1009479D8];
  }
}

unint64_t sub_10071E018(void *a1)
{
  v2 = v1;
  v4 = sub_10074F314();
  __chkstk_darwin(v4 - 8);
  type metadata accessor for ArtworkCollectionViewCell();
  sub_1007539D4();
  v5 = sub_100753064();

  isa = sub_100741704().super.isa;
  v7 = [a1 dequeueReusableCellWithReuseIdentifier:v5 forIndexPath:isa];

  v8 = swift_dynamicCastClassUnconditional();
  v9 = OBJC_IVAR____TtC22SubscribePageExtension25ArtworkCollectionViewCell_artworkView;
  [*&v8[OBJC_IVAR____TtC22SubscribePageExtension25ArtworkCollectionViewCell_artworkView] setContentMode:1];
  v10 = *(v2 + OBJC_IVAR____TtC22SubscribePageExtension21GalleryViewController_artwork);
  result = sub_100741774();
  if ((v10 & 0xC000000000000001) != 0)
  {
    sub_100754574();
    goto LABEL_5;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (result >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_10:
    __break(1u);
    return result;
  }

LABEL_5:
  v12 = v7;
  [v8 frame];
  CGRectGetWidth(v24);
  [v8 frame];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;

  v25.origin.x = v14;
  v25.origin.y = v16;
  v25.size.width = v18;
  v25.size.height = v20;
  CGRectGetHeight(v25);
  sub_10074F2A4();
  sub_10074F2A4();
  sub_10074F2A4();
  [*&v8[v9] contentMode];
  sub_10074F374();
  v21 = *&v8[v9];
  sub_10074F324();
  sub_100743364();
  [v21 setContentMode:sub_10074F184()];
  sub_100747FB4();
  sub_1007433A4();
  if (!sub_10074F1E4())
  {
    sub_10000D198();
    sub_100753E34();
  }

  sub_100743224();

  v22 = *&v8[v9];
  sub_1007433C4();
  sub_10004D658();
  v23 = v22;
  sub_100744204();

  return v8;
}

uint64_t sub_10071E75C()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10071E79C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10071E7C8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v42 = sub_100747144();
  v44 = *(v42 - 8);
  __chkstk_darwin(v42);
  v40 = v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10000C518(&qword_100928A88);
  __chkstk_darwin(v5 - 8);
  v7 = (v37 - v6);
  v8 = sub_10000C518(&unk_100940600);
  __chkstk_darwin(v8 - 8);
  v10 = (v37 - v9);
  v11 = type metadata accessor for TitleHeaderView.TextConfiguration(0);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = (v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v15);
  v17 = v37 - v16;
  sub_100744AC4();
  sub_100752764();
  sub_100752D34();
  v18 = sub_100744A44();

  if (qword_100920AC0 != -1)
  {
    swift_once();
  }

  v19 = sub_10000D0FC(v11, qword_10097FEF8);
  v41 = v17;
  sub_10015027C(v19, v17);
  v43 = v14;
  sub_1003B07B8(a1, v14);
  sub_1003B0C30(v10);
  v20 = *(v12 + 56);
  v45 = v10;
  v20(v10, 0, 1, v11);
  if (v18)
  {
    v21 = 2;
  }

  else
  {
    v21 = 1;
  }

  v39 = v21;
  if (sub_1007537D4())
  {
    v22 = &enum case for TitleHeaderLayout.AccessoryVerticalAlignment.firstLineCenter(_:);
  }

  else
  {
    *v7 = 0;
    v7[1] = 0;
    v22 = &enum case for TitleHeaderLayout.AccessoryVerticalAlignment.corner(_:);
  }

  v23 = *v22;
  v24 = sub_100747134();
  v25 = *(v24 - 8);
  v26 = *(v25 + 104);
  v37[1] = v25 + 104;
  v38 = v26;
  v26(v7, v23, v24);
  (*(v25 + 56))(v7, 0, 1, v24);
  v27 = sub_1007537D4();
  v28 = &enum case for TitleHeaderLayout.ChildrenHorizontalAlignment.leading(_:);
  if ((v27 & 1) == 0)
  {
    v28 = &enum case for TitleHeaderLayout.ChildrenHorizontalAlignment.centered(_:);
  }

  v29 = v44;
  v30 = v40;
  v31 = v42;
  (*(v44 + 104))(v40, *v28, v42);
  sub_10000D198();
  v32 = sub_100753DB4();
  v33 = type metadata accessor for TitleHeaderView.Style(0);
  v46 = v7;
  v34 = v33[8];
  sub_1003ED344(v41, a2, type metadata accessor for TitleHeaderView.TextConfiguration);
  sub_1003ED344(v43, a2 + v33[5], type metadata accessor for TitleHeaderView.TextConfiguration);
  sub_100150344(v45, a2 + v33[6]);
  *(a2 + v33[7]) = 0;
  *(a2 + v34) = 0;
  *(a2 + v33[9]) = v39;
  *(a2 + v33[14]) = 0x4030000000000000;
  *(a2 + v33[12]) = 0;
  *(a2 + v33[13]) = v32;
  v35 = v46;
  (*(v29 + 32))(a2 + v33[11], v30, v31);
  if ((*(v25 + 48))(v35, 1, v24) != 1)
  {
    return (*(v25 + 32))(a2 + v33[10], v35, v24);
  }

  sub_10000C8CC(v35, &qword_100928A88);
  return v38(a2 + v33[10], enum case for TitleHeaderLayout.AccessoryVerticalAlignment.firstBaseline(_:), v24);
}

uint64_t sub_10071ED04@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v49 = a2;
  v48 = sub_100747144();
  v3 = *(v48 - 8);
  __chkstk_darwin(v48);
  v47 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10000C518(&qword_100928A88);
  __chkstk_darwin(v5 - 8);
  v7 = &v44 - v6;
  v8 = sub_10000C518(&unk_100940600);
  __chkstk_darwin(v8 - 8);
  v10 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v44 - v12;
  v14 = type metadata accessor for TitleHeaderView.TextConfiguration(0);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v44 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v44 - v19;
  __chkstk_darwin(v21);
  v23 = &v44 - v22;
  Main = JUScreenClassGetMain();
  if (a1)
  {
    if (Main == 1)
    {
      if (qword_100920B58 != -1)
      {
        swift_once();
      }

      v25 = qword_1009800C0;
    }

    else
    {
      if (qword_100920B50 != -1)
      {
        swift_once();
      }

      v25 = qword_1009800A8;
    }

    v27 = sub_10000D0FC(v14, v25);
    sub_10015027C(v27, v23);
    if (qword_100920B60 != -1)
    {
      swift_once();
    }

    v28 = sub_10000D0FC(v14, qword_1009800D8);
    sub_10015027C(v28, v13);
    v29 = 0;
  }

  else
  {
    if (Main == 1)
    {
      if (qword_100920B48 != -1)
      {
        swift_once();
      }

      v26 = qword_100980090;
    }

    else
    {
      if (qword_100920B40 != -1)
      {
        swift_once();
      }

      v26 = qword_100980078;
    }

    v30 = sub_10000D0FC(v14, v26);
    sub_10015027C(v30, v23);
    v29 = 1;
  }

  (*(v15 + 56))(v13, v29, 1, v14);
  if (qword_100920AC0 != -1)
  {
    swift_once();
  }

  v31 = sub_10000D0FC(v14, qword_10097FEF8);
  v32 = v20;
  sub_10015027C(v31, v20);
  sub_10015027C(v23, v17);
  sub_1007207BC(v13, v10);
  v33 = sub_100747134();
  v34 = *(v33 - 8);
  v45 = v10;
  v46 = v7;
  v35 = v34;
  (*(v34 + 56))(v7, 1, 1, v33);
  v36 = v47;
  v37 = v48;
  (*(v3 + 104))(v47, enum case for TitleHeaderLayout.ChildrenHorizontalAlignment.leading(_:), v48);
  sub_10000D198();
  v44 = sub_100753DB4();
  sub_10000C8CC(v13, &unk_100940600);
  sub_1003B6E50(v23);
  v38 = type metadata accessor for TitleHeaderView.Style(0);
  v39 = v38[8];
  v40 = v32;
  v41 = v49;
  sub_1003ED344(v40, v49, type metadata accessor for TitleHeaderView.TextConfiguration);
  sub_1003ED344(v17, v41 + v38[5], type metadata accessor for TitleHeaderView.TextConfiguration);
  sub_100150344(v45, v41 + v38[6]);
  *(v41 + v38[7]) = 0;
  *(v41 + v39) = 0;
  *(v41 + v38[9]) = 1;
  *(v41 + v38[14]) = 0x4030000000000000;
  *(v41 + v38[12]) = 0;
  *(v41 + v38[13]) = v44;
  v42 = v46;
  (*(v3 + 32))(v41 + v38[11], v36, v37);
  if ((*(v35 + 48))(v42, 1, v33) != 1)
  {
    return (*(v35 + 32))(v41 + v38[10], v42, v33);
  }

  sub_10000C8CC(v42, &qword_100928A88);
  return (*(v35 + 104))(v41 + v38[10], enum case for TitleHeaderLayout.AccessoryVerticalAlignment.firstBaseline(_:), v33);
}

uint64_t sub_10071F33C()
{
  v0 = type metadata accessor for TitleHeaderView.Style(0);
  __chkstk_darwin(v0);
  v2 = &v28 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_100747144();
  v3 = *(v35 - 8);
  __chkstk_darwin(v35);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10000C518(&qword_100928A88);
  __chkstk_darwin(v6 - 8);
  v8 = &v28 - v7;
  v9 = sub_10000C518(&unk_100940600);
  __chkstk_darwin(v9 - 8);
  v11 = &v28 - v10;
  v12 = type metadata accessor for TitleHeaderView.TextConfiguration(0);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v34 = &v28 - v17;
  sub_100039C50(v0, qword_100983130);
  v32 = sub_10000D0FC(v0, qword_100983130);
  if (qword_100920AC0 != -1)
  {
    swift_once();
  }

  v18 = sub_10000D0FC(v12, qword_10097FEF8);
  sub_10015027C(v18, v34);
  if (qword_100920AD0 != -1)
  {
    swift_once();
  }

  v19 = sub_10000D0FC(v12, qword_10097FF28);
  sub_10015027C(v19, v15);
  (*(v13 + 56))(v11, 1, 1, v12);
  v20 = enum case for TitleHeaderLayout.AccessoryVerticalAlignment.lastLineCenter(_:);
  v21 = sub_100747134();
  v22 = *(v21 - 8);
  v30 = v15;
  v31 = v11;
  v23 = v22;
  v29 = *(v22 + 104);
  v29(v8, v20, v21);
  (*(v23 + 56))(v8, 0, 1, v21);
  (*(v3 + 104))(v5, enum case for TitleHeaderLayout.ChildrenHorizontalAlignment.leading(_:), v35);
  sub_10000D198();
  v24 = sub_100753DB4();
  v33 = v8;
  v25 = v0[8];
  sub_1003ED344(v34, v2, type metadata accessor for TitleHeaderView.TextConfiguration);
  sub_1003ED344(v30, &v2[v0[5]], type metadata accessor for TitleHeaderView.TextConfiguration);
  sub_100150344(v31, &v2[v0[6]]);
  v2[v0[7]] = 0;
  v2[v25] = 0;
  v2[v0[9]] = 0;
  *&v2[v0[14]] = 0x4030000000000000;
  *&v2[v0[12]] = 0;
  *&v2[v0[13]] = v24;
  v26 = v33;
  (*(v3 + 32))(&v2[v0[11]], v5, v35);
  if ((*(v23 + 48))(v26, 1, v21) == 1)
  {
    sub_10000C8CC(v26, &qword_100928A88);
    v29(&v2[v0[10]], enum case for TitleHeaderLayout.AccessoryVerticalAlignment.lastBaseline(_:), v21);
  }

  else
  {
    (*(v23 + 32))(&v2[v0[10]], v26, v21);
  }

  return sub_1003ED344(v2, v32, type metadata accessor for TitleHeaderView.Style);
}

uint64_t sub_10071F894()
{
  v0 = type metadata accessor for TitleHeaderView.Style(0);
  __chkstk_darwin(v0);
  v2 = &v27 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_100747144();
  v3 = *(v32 - 8);
  __chkstk_darwin(v32);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10000C518(&qword_100928A88);
  __chkstk_darwin(v6 - 8);
  v8 = &v27 - v7;
  v9 = sub_10000C518(&unk_100940600);
  __chkstk_darwin(v9 - 8);
  v11 = &v27 - v10;
  v12 = type metadata accessor for TitleHeaderView.TextConfiguration(0);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v31 = &v27 - v17;
  sub_100039C50(v0, qword_100983160);
  v29 = sub_10000D0FC(v0, qword_100983160);
  if (qword_100920AC0 != -1)
  {
    swift_once();
  }

  v18 = sub_10000D0FC(v12, qword_10097FEF8);
  sub_10015027C(v18, v31);
  if (qword_100920B68 != -1)
  {
    swift_once();
  }

  v19 = sub_10000D0FC(v12, qword_1009800F0);
  sub_10015027C(v19, v15);
  (*(v13 + 56))(v11, 1, 1, v12);
  v20 = sub_100747134();
  v21 = *(v20 - 8);
  v28 = v11;
  v22 = v21;
  (*(v21 + 56))(v8, 1, 1, v20);
  (*(v3 + 104))(v5, enum case for TitleHeaderLayout.ChildrenHorizontalAlignment.leading(_:), v32);
  sub_10000D198();
  v23 = sub_100753DB4();
  v30 = v8;
  v24 = v0[8];
  sub_1003ED344(v31, v2, type metadata accessor for TitleHeaderView.TextConfiguration);
  sub_1003ED344(v15, &v2[v0[5]], type metadata accessor for TitleHeaderView.TextConfiguration);
  sub_100150344(v28, &v2[v0[6]]);
  v2[v0[7]] = 1;
  v2[v24] = 0;
  v2[v0[9]] = 0;
  *&v2[v0[14]] = 0x4030000000000000;
  *&v2[v0[12]] = 0;
  *&v2[v0[13]] = v23;
  v25 = v30;
  (*(v3 + 32))(&v2[v0[11]], v5, v32);
  if ((*(v22 + 48))(v25, 1, v20) == 1)
  {
    sub_10000C8CC(v25, &qword_100928A88);
    (*(v22 + 104))(&v2[v0[10]], enum case for TitleHeaderLayout.AccessoryVerticalAlignment.lastBaseline(_:), v20);
  }

  else
  {
    (*(v22 + 32))(&v2[v0[10]], v25, v20);
  }

  return sub_1003ED344(v2, v29, type metadata accessor for TitleHeaderView.Style);
}

uint64_t sub_10071FD94()
{
  v0 = type metadata accessor for TitleHeaderView.Style(0);
  __chkstk_darwin(v0);
  v2 = &v27 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_100747144();
  v3 = *(v32 - 8);
  __chkstk_darwin(v32);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10000C518(&qword_100928A88);
  __chkstk_darwin(v6 - 8);
  v8 = &v27 - v7;
  v9 = sub_10000C518(&unk_100940600);
  __chkstk_darwin(v9 - 8);
  v11 = &v27 - v10;
  v12 = type metadata accessor for TitleHeaderView.TextConfiguration(0);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v31 = &v27 - v17;
  sub_100039C50(v0, qword_100983178);
  v29 = sub_10000D0FC(v0, qword_100983178);
  if (qword_100920AC0 != -1)
  {
    swift_once();
  }

  v18 = sub_10000D0FC(v12, qword_10097FEF8);
  sub_10015027C(v18, v31);
  if (qword_100920B70 != -1)
  {
    swift_once();
  }

  v19 = sub_10000D0FC(v12, qword_100980108);
  sub_10015027C(v19, v15);
  (*(v13 + 56))(v11, 1, 1, v12);
  v20 = sub_100747134();
  v21 = *(v20 - 8);
  v28 = v11;
  v22 = v21;
  (*(v21 + 56))(v8, 1, 1, v20);
  (*(v3 + 104))(v5, enum case for TitleHeaderLayout.ChildrenHorizontalAlignment.centered(_:), v32);
  sub_10000D198();
  v23 = sub_100753DB4();
  v30 = v8;
  v24 = v0[8];
  sub_1003ED344(v31, v2, type metadata accessor for TitleHeaderView.TextConfiguration);
  sub_1003ED344(v15, &v2[v0[5]], type metadata accessor for TitleHeaderView.TextConfiguration);
  sub_100150344(v28, &v2[v0[6]]);
  v2[v0[7]] = 0;
  v2[v24] = 0;
  v2[v0[9]] = 0;
  *&v2[v0[14]] = 0x4030000000000000;
  *&v2[v0[12]] = 0;
  *&v2[v0[13]] = v23;
  v25 = v30;
  (*(v3 + 32))(&v2[v0[11]], v5, v32);
  if ((*(v22 + 48))(v25, 1, v20) == 1)
  {
    sub_10000C8CC(v25, &qword_100928A88);
    (*(v22 + 104))(&v2[v0[10]], enum case for TitleHeaderLayout.AccessoryVerticalAlignment.lastBaseline(_:), v20);
  }

  else
  {
    (*(v22 + 32))(&v2[v0[10]], v25, v20);
  }

  return sub_1003ED344(v2, v29, type metadata accessor for TitleHeaderView.Style);
}

uint64_t sub_1007202BC(uint64_t a1, uint64_t *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v34[1] = a5;
  v38 = a4;
  v7 = type metadata accessor for TitleHeaderView.Style(0);
  __chkstk_darwin(v7);
  v9 = v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_100747144();
  v10 = *(v36 - 8);
  __chkstk_darwin(v36);
  v40 = v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10000C518(&qword_100928A88);
  __chkstk_darwin(v12 - 8);
  v14 = v34 - v13;
  v15 = sub_10000C518(&unk_100940600);
  __chkstk_darwin(v15 - 8);
  v17 = v34 - v16;
  v18 = type metadata accessor for TitleHeaderView.TextConfiguration(0);
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = v34 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v39 = v34 - v23;
  sub_100039C50(v7, a2);
  v37 = sub_10000D0FC(v7, a2);
  if (qword_100920AC0 != -1)
  {
    swift_once();
  }

  v24 = sub_10000D0FC(v18, qword_10097FEF8);
  sub_10015027C(v24, v39);
  if (*a3 != -1)
  {
    swift_once();
  }

  v25 = sub_10000D0FC(v18, v38);
  sub_10015027C(v25, v21);
  v26 = *(v19 + 56);
  v35 = v17;
  v26(v17, 1, 1, v18);
  v27 = sub_100747134();
  v28 = *(v27 - 8);
  (*(v28 + 56))(v14, 1, 1, v27);
  v29 = v36;
  (*(v10 + 104))(v40, enum case for TitleHeaderLayout.ChildrenHorizontalAlignment.leading(_:), v36);
  sub_10000D198();
  v30 = sub_100753DB4();
  v38 = v14;
  v31 = v7[8];
  sub_1003ED344(v39, v9, type metadata accessor for TitleHeaderView.TextConfiguration);
  sub_1003ED344(v21, &v9[v7[5]], type metadata accessor for TitleHeaderView.TextConfiguration);
  sub_100150344(v35, &v9[v7[6]]);
  v9[v7[7]] = 0;
  v9[v31] = 0;
  v9[v7[9]] = 0;
  *&v9[v7[14]] = 0x4030000000000000;
  *&v9[v7[12]] = 0;
  *&v9[v7[13]] = v30;
  v32 = v38;
  (*(v10 + 32))(&v9[v7[11]], v40, v29);
  if ((*(v28 + 48))(v32, 1, v27) == 1)
  {
    sub_10000C8CC(v32, &qword_100928A88);
    (*(v28 + 104))(&v9[v7[10]], enum case for TitleHeaderLayout.AccessoryVerticalAlignment.lastBaseline(_:), v27);
  }

  else
  {
    (*(v28 + 32))(&v9[v7[10]], v32, v27);
  }

  return sub_1003ED344(v9, v37, type metadata accessor for TitleHeaderView.Style);
}

uint64_t sub_1007207BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C518(&unk_100940600);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id sub_10072082C()
{
  v1 = v0;
  v2 = sub_10000C518(&qword_100925B80);
  __chkstk_darwin(v2 - 8);
  v4 = &v19 - v3;
  v5 = sub_10000C518(&qword_100926DC0);
  __chkstk_darwin(v5 - 8);
  v7 = &v19 - v6;
  v8 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension18StoryCardMediaView_revealingImageView);
  v9 = sub_10074F164();
  (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
  v10 = OBJC_IVAR____TtC22SubscribePageExtension18RevealingImageView_currentArtworkTemplate;
  swift_beginAccess();
  sub_10006644C(v7, &v8[v10], &qword_100926DC0);
  swift_endAccess();
  v11 = sub_100741494();
  (*(*(v11 - 8) + 56))(v4, 1, 1, v11);
  v12 = OBJC_IVAR____TtC22SubscribePageExtension18RevealingImageView_currentArtworkHandlerKey;
  swift_beginAccess();
  sub_10006644C(v4, &v8[v12], &qword_100925B80);
  swift_endAccess();
  [*&v8[OBJC_IVAR____TtC22SubscribePageExtension18RevealingImageView_imageView] setImage:0];
  v13 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension18StoryCardMediaView_revealingVideoView);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v15 = Strong;
    *(Strong + qword_100982C50) = 7;
    sub_100665360();
  }

  v16 = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakAssign();
  sub_10020ED5C(v16);

  v17 = OBJC_IVAR____TtC22SubscribePageExtension18StoryCardMediaView_isExpanded;
  *(v1 + OBJC_IVAR____TtC22SubscribePageExtension18StoryCardMediaView_isExpanded) = 0;
  v8[OBJC_IVAR____TtC22SubscribePageExtension18RevealingImageView_isExpanded] = 0;
  [v8 setNeedsLayout];
  *(v13 + OBJC_IVAR____TtC22SubscribePageExtension18RevealingVideoView_isExpanded) = *(v1 + v17);
  result = sub_10020E198();
  *(v1 + OBJC_IVAR____TtC22SubscribePageExtension18StoryCardMediaView_hasMedia) = 0;
  return result;
}

id sub_100720AF4(char *a1, char a2, uint64_t a3, unsigned int a4)
{
  v5 = v4;
  v10 = sub_10000C518(&qword_100926DC0);
  *&v11 = __chkstk_darwin(v10 - 8).n128_u64[0];
  v13 = &v35 - v12;
  if ((a2 & 1) == 0)
  {
    v36 = a4;
    [a1 frame];
    [v5 setFrame:?];
    v14 = *&v5[OBJC_IVAR____TtC22SubscribePageExtension18StoryCardMediaView_revealingImageView];
    v21 = *&a1[OBJC_IVAR____TtC22SubscribePageExtension18StoryCardMediaView_revealingImageView];
    [v21 frame];
    [v14 setFrame:?];
    [v14 setHidden:{objc_msgSend(v21, "isHidden")}];
    v22 = OBJC_IVAR____TtC22SubscribePageExtension18RevealingImageView_currentArtworkTemplate;
    swift_beginAccess();
    sub_100016B4C(&v21[v22], v13, &qword_100926DC0);
    v23 = OBJC_IVAR____TtC22SubscribePageExtension18RevealingImageView_currentArtworkTemplate;
    swift_beginAccess();
    sub_10006644C(v13, v14 + v23, &qword_100926DC0);
    swift_endAccess();
    v24 = [*&v21[OBJC_IVAR____TtC22SubscribePageExtension18RevealingImageView_imageView] image];
    if (v24)
    {
      v25 = &v21[OBJC_IVAR____TtC22SubscribePageExtension18RevealingImageView_artworkSize];
      if ((v21[OBJC_IVAR____TtC22SubscribePageExtension18RevealingImageView_artworkSize + 16] & 1) != 0 || (v26 = *&v21[OBJC_IVAR____TtC22SubscribePageExtension18RevealingImageView_artworkLayoutWithMetrics]) == 0)
      {
      }

      else
      {
        v28 = *v25;
        v27 = v25[1];
        v29 = v24;

        v30 = v29;
        sub_100527FD0(v29, v28, v27, 0, v26, a3, v36);
      }
    }

    v15 = *&v5[OBJC_IVAR____TtC22SubscribePageExtension18StoryCardMediaView_revealingVideoView];
    v20 = *&a1[OBJC_IVAR____TtC22SubscribePageExtension18StoryCardMediaView_revealingVideoView];
    [v20 frame];
    [v15 setFrame:?];
    [v15 setHidden:{objc_msgSend(v20, "isHidden")}];
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {

      swift_unknownObjectWeakAssign();
    }

    goto LABEL_11;
  }

  v14 = *&v5[OBJC_IVAR____TtC22SubscribePageExtension18StoryCardMediaView_revealingImageView];
  v15 = *&v5[OBJC_IVAR____TtC22SubscribePageExtension18StoryCardMediaView_revealingVideoView];
  v16 = *&a1[OBJC_IVAR____TtC22SubscribePageExtension18StoryCardMediaView_revealingVideoView];
  v17 = swift_unknownObjectWeakLoadStrong();
  if (v17)
  {
    v18 = v17;
    v19 = v16;

    v20 = v19;
    sub_10020F130(v19, a3);

LABEL_11:
  }

  v32 = OBJC_IVAR____TtC22SubscribePageExtension18StoryCardMediaView_isExpanded;
  v33 = a1[OBJC_IVAR____TtC22SubscribePageExtension18StoryCardMediaView_isExpanded];
  v5[OBJC_IVAR____TtC22SubscribePageExtension18StoryCardMediaView_isExpanded] = v33;
  *(v14 + OBJC_IVAR____TtC22SubscribePageExtension18RevealingImageView_isExpanded) = v33;
  [v14 setNeedsLayout];
  *(v15 + OBJC_IVAR____TtC22SubscribePageExtension18RevealingVideoView_isExpanded) = v5[v32];
  sub_10020E198();
  result = [v5 setHidden:{objc_msgSend(a1, "isHidden")}];
  v5[OBJC_IVAR____TtC22SubscribePageExtension18StoryCardMediaView_hasMedia] = a1[OBJC_IVAR____TtC22SubscribePageExtension18StoryCardMediaView_hasMedia];
  return result;
}

void sub_100720E8C(uint64_t a1, int a2)
{
  v17[1] = a2;
  v3 = sub_10000C518(&qword_100925B80);
  __chkstk_darwin(v3 - 8);
  v5 = v17 - v4;
  v6 = sub_100741494();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = v17 - v11;
  v18 = v2;
  v13 = *(v2 + OBJC_IVAR____TtC22SubscribePageExtension18StoryCardMediaView_revealingImageView);
  v14 = OBJC_IVAR____TtC22SubscribePageExtension18RevealingImageView_currentArtworkHandlerKey;
  swift_beginAccess();
  sub_100016B4C(v13 + v14, v5, &qword_100925B80);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_10000C8CC(v5, &qword_100925B80);
  }

  else
  {
    (*(v7 + 32))(v12, v5, v6);
    (*(v7 + 16))(v9, v12, v6);
    sub_1007220E0(&qword_100929600, &type metadata accessor for UUID);
    sub_1007544E4();
    sub_100744264();
    sub_100016994(v19);
    (*(v7 + 8))(v12, v6);
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v16 = Strong;
    type metadata accessor for TodayCardVideoView();
    sub_1007220E0(&qword_1009295F0, type metadata accessor for TodayCardVideoView);
    sub_100744274();
  }
}

void sub_10072118C(uint64_t a1, double a2)
{
  v5 = sub_100743584();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v9, a1, v5, v7);
  v10 = (*(v6 + 88))(v9, v5);
  if (v10 == enum case for CornerStyle.continuous(_:))
  {
    [v2 _setContinuousCornerRadius:a2];
    [*&v2[OBJC_IVAR____TtC22SubscribePageExtension18StoryCardMediaView_revealingImageView] _setContinuousCornerRadius:a2];
    [*&v2[OBJC_IVAR____TtC22SubscribePageExtension18StoryCardMediaView_revealingVideoView] _setContinuousCornerRadius:a2];
  }

  else
  {
    v11 = v10;
    v12 = enum case for CornerStyle.arc(_:);
    [v2 _setCornerRadius:a2];
    [*&v2[OBJC_IVAR____TtC22SubscribePageExtension18StoryCardMediaView_revealingImageView] _setCornerRadius:a2];
    [*&v2[OBJC_IVAR____TtC22SubscribePageExtension18StoryCardMediaView_revealingVideoView] _setCornerRadius:a2];
    if (v11 != v12)
    {
      (*(v6 + 8))(v9, v5);
    }
  }

  sub_100721364();
}

void sub_100721364()
{
  v1 = [v0 layer];
  [v1 setMaskedCorners:sub_1007535E4()];

  v2 = [*&v0[OBJC_IVAR____TtC22SubscribePageExtension18StoryCardMediaView_revealingImageView] layer];
  [v2 setMaskedCorners:sub_1007535E4()];

  v3 = [*&v0[OBJC_IVAR____TtC22SubscribePageExtension18StoryCardMediaView_revealingVideoView] layer];
  [v3 setMaskedCorners:sub_1007535E4()];
}

char *sub_100721460(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v4[OBJC_IVAR____TtC22SubscribePageExtension18StoryCardMediaView_isExpanded] = 0;
  v10 = OBJC_IVAR____TtC22SubscribePageExtension18StoryCardMediaView_pageGrid;
  v11 = sub_10074F704();
  (*(*(v11 - 8) + 56))(&v4[v10], 1, 1, v11);
  v4[OBJC_IVAR____TtC22SubscribePageExtension18StoryCardMediaView_sizeCategory] = 7;
  v4[OBJC_IVAR____TtC22SubscribePageExtension18StoryCardMediaView_originalSizeCategory] = 7;
  v4[OBJC_IVAR____TtC22SubscribePageExtension18StoryCardMediaView_isTransitioning] = 0;
  v4[OBJC_IVAR____TtC22SubscribePageExtension18StoryCardMediaView_hasMedia] = 0;
  v12 = OBJC_IVAR____TtC22SubscribePageExtension18StoryCardMediaView_revealingImageView;
  type metadata accessor for RevealingImageView();
  *&v4[v12] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v13 = OBJC_IVAR____TtC22SubscribePageExtension18StoryCardMediaView_revealingVideoView;
  type metadata accessor for RevealingVideoView();
  *&v4[v13] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v18.receiver = v4;
  v18.super_class = ObjectType;
  v14 = objc_msgSendSuper2(&v18, "initWithFrame:", a1, a2, a3, a4);
  v15 = *&v14[OBJC_IVAR____TtC22SubscribePageExtension18StoryCardMediaView_revealingImageView];
  v16 = v14;
  [v16 addSubview:v15];
  [v16 addSubview:*&v16[OBJC_IVAR____TtC22SubscribePageExtension18StoryCardMediaView_revealingVideoView]];

  return v16;
}

void sub_100721640()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC22SubscribePageExtension18StoryCardMediaView_sizeCategory;
  v3 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension18StoryCardMediaView_sizeCategory);
  *(*(v0 + OBJC_IVAR____TtC22SubscribePageExtension18StoryCardMediaView_revealingImageView) + OBJC_IVAR____TtC22SubscribePageExtension18RevealingImageView_sizeCategory) = v3;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    (*((swift_isaMask & *Strong) + 0x128))(v3);
  }

  v6 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension18StoryCardMediaView_revealingVideoView);
  v7 = *(v1 + v2);
  *(v6 + OBJC_IVAR____TtC22SubscribePageExtension18RevealingVideoView_sizeCategory) = v7;
  v8 = swift_unknownObjectWeakLoadStrong();
  if (v8)
  {
    v9 = v8;
    (*((swift_isaMask & *v8) + 0x118))(v7);
  }
}

void sub_1007217A8()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension18StoryCardMediaView_revealingVideoView);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    sub_1007220E0(&qword_1009295B8, type metadata accessor for TodayCardVideoView);
    v4 = [v9 superview];
    if (v4)
    {
      v5 = v4;
      sub_100009D34();
      v6 = v2;
      v7 = sub_100753FC4();

      if ((v7 & 1) == 0)
      {
        return;
      }

      v8 = swift_unknownObjectWeakLoadStrong();
      if (!v8)
      {
        return;
      }

      *(v8 + qword_100982C50) = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension18StoryCardMediaView_originalSizeCategory);
      v9 = v8;
      sub_100665360();
    }
  }
}

void (*sub_10072199C(uint64_t *a1))(id *a1, char a2)
{
  v2 = OBJC_IVAR____TtC22SubscribePageExtension18RevealingVideoView_videoView;
  a1[1] = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension18StoryCardMediaView_revealingVideoView);
  a1[2] = v2;
  *a1 = swift_unknownObjectWeakLoadStrong();
  return sub_10020F098;
}

uint64_t type metadata accessor for StoryCardMediaView()
{
  result = qword_100947A48;
  if (!qword_100947A48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100721AC0()
{
  sub_10020F754();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_100721B9C(void *a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakAssign();
  sub_10020ED5C(Strong);
}

uint64_t (*sub_100721C1C(uint64_t **a1))()
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
  v2[4] = sub_10072199C(v2);
  return sub_1000181A8;
}

uint64_t sub_100721C8C()
{
  ObjectType = swift_getObjectType();
  v1 = sub_1007220E0(&qword_100947A68, type metadata accessor for StoryCardMediaView);

  return VideoViewProviding.someVideoView.getter(ObjectType, v1);
}

uint64_t sub_100721D00(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v5 = sub_1007220E0(&qword_100947A68, type metadata accessor for StoryCardMediaView);

  return VideoViewProviding.someVideoView.setter(a1, a2, ObjectType, v5);
}

uint64_t (*sub_100721D8C(uint64_t *a1))()
{
  swift_getObjectType();
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  sub_1007220E0(&qword_100947A68, type metadata accessor for StoryCardMediaView);
  *(v3 + 32) = sub_100747DB4();
  return sub_10001BB78;
}

uint64_t sub_100721E48(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension18StoryCardMediaView_revealingVideoView);
  v3 = [a1 superview];
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  sub_100009D34();
  v5 = v2;
  v6 = sub_100753FC4();

  return v6 & 1;
}

void sub_100721FA8()
{
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension18StoryCardMediaView_isExpanded) = 0;
  v1 = OBJC_IVAR____TtC22SubscribePageExtension18StoryCardMediaView_pageGrid;
  v2 = sub_10074F704();
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension18StoryCardMediaView_sizeCategory) = 7;
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension18StoryCardMediaView_originalSizeCategory) = 7;
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension18StoryCardMediaView_isTransitioning) = 0;
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension18StoryCardMediaView_hasMedia) = 0;
  v3 = OBJC_IVAR____TtC22SubscribePageExtension18StoryCardMediaView_revealingImageView;
  type metadata accessor for RevealingImageView();
  *(v0 + v3) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v4 = OBJC_IVAR____TtC22SubscribePageExtension18StoryCardMediaView_revealingVideoView;
  type metadata accessor for RevealingVideoView();
  *(v0 + v4) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  sub_100754644();
  __break(1u);
}

uint64_t sub_1007220E0(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_100722248(void *a1)
{
  v2 = v1;
  sub_100524128(0);
  v4 = [a1 viewControllerForKey:UITransitionContextToViewControllerKey];
  v5 = &stru_1008F2000;
  if (v4)
  {
    v6 = v4;
    [a1 finalFrameForViewController:v4];
  }

  else
  {
    v6 = [a1 containerView];
    [v6 bounds];
  }

  v11 = v7;
  v12 = v8;
  v13 = v9;
  v14 = v10;

  v114.origin.x = v11;
  v114.origin.y = v12;
  v114.size.width = v13;
  v114.size.height = v14;
  MidX = CGRectGetMidX(v114);
  v115.origin.x = v11;
  v115.origin.y = v12;
  v115.size.width = v13;
  v115.size.height = v14;
  MidY = CGRectGetMidY(v115);
  v116.origin.x = v11;
  v116.origin.y = v12;
  v116.size.width = v13;
  v116.size.height = v14;
  v104 = CGRectGetMidX(v116);
  v117.origin.x = v11;
  v117.origin.y = v12;
  v117.size.width = v13;
  v117.size.height = v14;
  v102 = CGRectGetMidY(v117);
  v15 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension29AppPromotionPageOpenAnimation_fromCollectionViewController];
  v16 = 0.0;
  if (v15)
  {
    v17 = [*&v2[OBJC_IVAR____TtC22SubscribePageExtension29AppPromotionPageOpenAnimation_fromCollectionViewController] view];
    v18 = 0.0;
    if (v17)
    {
      v19 = v17;
      [v17 bounds];
      v21 = v20;
      v23 = v22;
      v25 = v24;
      v27 = v26;
      v28 = [a1 containerView];
      [v19 convertRect:v28 toCoordinateSpace:{v21, v23, v25, v27}];
      v16 = v29;
      v18 = v30;

      MidY = MidY - v18;
      MidX = MidX - v16;
    }
  }

  else
  {
    v18 = 0.0;
  }

  v31 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension29AppPromotionPageOpenAnimation_fromCardView];
  v32 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension29AppPromotionPageOpenAnimation_fromCenter];
  v33 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension29AppPromotionPageOpenAnimation_fromCenter + 8];
  v34 = v2[OBJC_IVAR____TtC22SubscribePageExtension29AppPromotionPageOpenAnimation_fromCenter + 16];
  if (v31 && (v2[OBJC_IVAR____TtC22SubscribePageExtension29AppPromotionPageOpenAnimation_fromCenter + 16] & 1) == 0)
  {
    if (v15)
    {
      v35 = v31;
      v36 = v15;
      v37 = [v36 view];
      if (!v37)
      {
        __break(1u);
        return;
      }

      v38 = v37;
      [v37 addSubview:v35];

      v5 = &stru_1008F2000;
    }

    else
    {
      v39 = v31;
      v38 = [a1 containerView];
      [v38 addSubview:v39];
    }

    [v31 setCenter:{v32, v33}];
  }

  v40 = [a1 viewForKey:{UITransitionContextToViewKey, *&v102}];
  v41 = v40;
  if (!v15)
  {
    v44 = 0.25;
    if (!v40)
    {
      goto LABEL_26;
    }

    goto LABEL_22;
  }

  v42 = [v15 traitCollection];
  v43 = [v42 horizontalSizeClass];

  if (v43 == 1)
  {
    v44 = 0.0;
  }

  else
  {
    v44 = 0.25;
  }

  if (v41)
  {
LABEL_22:
    v45 = v41;
    v46 = [a1 v5[75].attr];
    [v46 addSubview:v45];

    if ((v31 == 0) | v34 & 1)
    {
      v118.origin.x = v11;
      v118.origin.y = v12;
      v118.size.width = v13;
      v118.size.height = v14;
      v47 = v44 * CGRectGetWidth(v118);
      v119.origin.x = v11;
      v119.origin.y = v12;
      v119.size.width = v13;
      v119.size.height = v14;
      v48 = CGRectGetHeight(v119) * 0.25;
      v120.origin.x = v11;
      v120.origin.y = v12;
      v120.size.width = v13;
      v120.size.height = v14;
      v121 = CGRectInset(v120, v47, v48);
      width = v121.size.width;
      height = v121.size.height;
      v121.origin.x = v11;
      v121.origin.y = v12;
      v121.size.width = v13;
      v121.size.height = v14;
      v51 = CGRectGetMidX(v121);
      v122.origin.x = v11;
      v122.origin.y = v12;
      v122.size.width = v13;
      v122.size.height = v14;
      v52 = CGRectGetMidY(v122);
      v53 = 0.0;
      v54 = 0.0;
    }

    else
    {
      [v31 bounds];
      width = v55;
      height = v56;
      v51 = v16 + v32;
      v52 = v18 + v33;
    }

    [v45 setBounds:{v53, v54, width, height}];
    [v45 setCenter:{v51, v52}];
    [v45 setNeedsLayout];
    [v45 layoutIfNeeded];
    [v45 setAlpha:0.0];
  }

LABEL_26:
  v57 = _swiftEmptyArrayStorage;
  v113 = _swiftEmptyArrayStorage;
  v58 = &stru_1008F2000;
  if (!UIAccessibilityIsReduceMotionEnabled())
  {
    v59 = [objc_allocWithZone(UISpringTimingParameters) initWithMass:1.0 stiffness:180.0 damping:22.0 initialVelocity:{0.0, 0.0}];
    v60 = [objc_allocWithZone(UIViewPropertyAnimator) initWithDuration:v59 timingParameters:0.0];

    v61 = swift_allocObject();
    *(v61 + 16) = v2;
    *(v61 + 24) = v31;
    *(v61 + 32) = 0;
    *(v61 + 40) = 0;
    *(v61 + 48) = v13;
    *(v61 + 56) = v14;
    *(v61 + 64) = MidX;
    *(v61 + 72) = MidY;
    *(v61 + 80) = v41;
    *(v61 + 88) = v104;
    *(v61 + 96) = v103;
    v111 = sub_1007232A8;
    v112 = v61;
    aBlock = _NSConcreteStackBlock;
    v108 = 1107296256;
    v109 = sub_1000CF7B0;
    v110 = &unk_100882968;
    v62 = _Block_copy(&aBlock);
    v63 = v31;
    v64 = v41;
    v65 = v2;

    [v60 addAnimations:v62];
    _Block_release(v62);
    v66 = swift_allocObject();
    *(v66 + 16) = a1;
    *(v66 + 24) = v65;
    v111 = sub_1007232E0;
    v112 = v66;
    aBlock = _NSConcreteStackBlock;
    v108 = 1107296256;
    v58 = &stru_1008F2000;
    v109 = sub_1001A5B50;
    v110 = &unk_1008829B8;
    v67 = _Block_copy(&aBlock);
    v68 = v65;
    swift_unknownObjectRetain();

    [v60 addCompletion:v67];
    _Block_release(v67);
    v69 = v60;
    sub_100753284();
    if (*((v113 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v113 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_100753304();
    }

    sub_100753344();

    v57 = v113;
  }

  if (v31)
  {
    v70 = v31;
    if (!UIAccessibilityIsReduceMotionEnabled())
    {
      v71 = swift_allocObject();
      *(v71 + 16) = v70;
      v72 = objc_allocWithZone(UIViewPropertyAnimator);
      v111 = sub_1002CD3E0;
      v112 = v71;
      aBlock = _NSConcreteStackBlock;
      v108 = 1107296256;
      v109 = sub_1000CF7B0;
      v110 = &unk_100882AF8;
      v73 = _Block_copy(&aBlock);
      v74 = v70;

      v75 = [v72 initWithDuration:v73 controlPoint1:0.28 controlPoint2:0.17 animations:{0.0, 0.67, 1.0}];
      _Block_release(v73);
      v76 = swift_allocObject();
      *(v76 + 16) = v74;
      v111 = sub_1002CD3F4;
      v112 = v76;
      aBlock = _NSConcreteStackBlock;
      v108 = 1107296256;
      v109 = sub_1001A5B50;
      v110 = &unk_100882B48;
      v77 = _Block_copy(&aBlock);
      v78 = v74;

      [v75 v58[194].name];
      _Block_release(v77);

      v79 = v75;
      sub_100753284();
      if (*((v113 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v113 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_100753304();
      }

      sub_100753344();

      v57 = v113;
      if (!v41)
      {
        goto LABEL_44;
      }

      goto LABEL_38;
    }
  }

  if (v41)
  {
LABEL_38:
    v80 = v41;
    if (UIAccessibilityIsReduceMotionEnabled())
    {
    }

    else
    {
      v81 = swift_allocObject();
      *(v81 + 16) = v80;
      v82 = objc_allocWithZone(UIViewPropertyAnimator);
      v111 = sub_1002CD324;
      v112 = v81;
      aBlock = _NSConcreteStackBlock;
      v108 = 1107296256;
      v109 = sub_1000CF7B0;
      v110 = &unk_100882AA8;
      v83 = _Block_copy(&aBlock);
      v84 = v80;

      v85 = [v82 initWithDuration:v83 controlPoint1:0.13 controlPoint2:0.33 animations:{0.0, 0.83, 0.83}];
      _Block_release(v83);

      if (v85)
      {
        v86 = v85;
        sub_100753284();
        if (*((v113 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v113 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_100753304();
        }

        sub_100753344();

        v57 = v113;
      }
    }
  }

LABEL_44:
  if (UIAccessibilityIsReduceMotionEnabled())
  {
    [v41 setBounds:{0.0, 0.0, v13, v14}];
    [v41 setCenter:{v104, v103}];
    v87 = swift_allocObject();
    *(v87 + 16) = v2;
    *(v87 + 24) = v41;
    v88 = objc_allocWithZone(UIViewPropertyAnimator);
    v111 = sub_100723324;
    v112 = v87;
    aBlock = _NSConcreteStackBlock;
    v108 = 1107296256;
    v109 = sub_1000CF7B0;
    v110 = &unk_100882A08;
    v89 = _Block_copy(&aBlock);
    v90 = v41;
    v91 = v2;

    v92 = [v88 initWithDuration:0 curve:v89 animations:0.3];
    _Block_release(v89);
    v93 = swift_allocObject();
    *(v93 + 16) = a1;
    *(v93 + 24) = v91;
    v111 = sub_1007233A0;
    v112 = v93;
    aBlock = _NSConcreteStackBlock;
    v108 = 1107296256;
    v109 = sub_1001A5B50;
    v110 = &unk_100882A58;
    v94 = _Block_copy(&aBlock);
    v95 = v91;
    swift_unknownObjectRetain();

    [v92 v58[194].name];
    _Block_release(v94);
    v96 = v92;
    sub_100753284();
    if (*((v113 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v113 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_100753304();
    }

    sub_100753344();

    v57 = v113;
  }

  if (v57 >> 62)
  {
    goto LABEL_60;
  }

  for (i = *((v57 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_100754664())
  {
    v98 = 0;
    while (1)
    {
      if ((v57 & 0xC000000000000001) != 0)
      {
        v99 = sub_100754574();
      }

      else
      {
        if (v98 >= *((v57 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_59;
        }

        v99 = *(v57 + 8 * v98 + 32);
      }

      v100 = v99;
      v101 = v98 + 1;
      if (__OFADD__(v98, 1))
      {
        break;
      }

      [v99 startAnimation];

      ++v98;
      if (v101 == i)
      {
        goto LABEL_61;
      }
    }

    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    ;
  }

LABEL_61:
}

id sub_100722F88(double a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8, uint64_t a9, void *a10, void *a11)
{
  sub_100524128(1);
  [a10 setBounds:{a1, a2, a3, a4}];
  [a10 setCenter:{a5, a6}];
  [a11 setBounds:{a1, a2, a3, a4}];

  return [a11 setCenter:{a7, a8}];
}

id sub_100723074(uint64_t a1, void *a2)
{
  v4 = OBJC_IVAR____TtC22SubscribePageExtension27AnimatedTransitionWithTasks_tasks;
  result = swift_beginAccess();
  v6 = *(a1 + v4);
  v7 = *(v6 + 16);
  if (v7)
  {

    v8 = (v6 + 48);
    v9 = (v6 + 48);
    do
    {
      v10 = *v9;
      v9 += 24;
      if (v10 == 1)
      {
        v11 = *(v8 - 2);

        v11(1, 1);
      }

      v8 = v9;
      --v7;
    }

    while (v7);
  }

  if (a2)
  {
    return [a2 setAlpha:1.0];
  }

  return result;
}

void sub_10072317C()
{
  v1 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension29AppPromotionPageOpenAnimation_fromCollectionViewController);
}

id sub_1007231BC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AppPromotionPageOpenAnimation();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100723260()
{

  return _swift_deallocObject(v0, 104, 7);
}

uint64_t sub_1007232C4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1007232E4()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10072332C()
{

  return _swift_deallocObject(v0, 24, 7);
}

void sub_1007233A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_10000C518(&unk_100923960);
  __chkstk_darwin(v4 - 8);
  v6 = &v12 - v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    sub_100742554();
    v9 = sub_100742934();

    if (v9)
    {
      v10 = sub_10000C518(&unk_100923210);
      sub_1007526C4();
      v11 = *(v10 - 8);
      if ((*(v11 + 48))(v6, 1, v10) == 1)
      {

        sub_100052F00(v6);
      }

      else
      {
        sub_1003C0E00(v9, 1, a3, v6);

        (*(v11 + 8))(v6, v10);
      }
    }

    else
    {
    }
  }
}

double sub_100723554(uint64_t a1, void *a2, uint64_t a3, double a4, uint64_t a5, int *a6)
{
  v105 = a3;
  v106 = a6;
  v9 = sub_100754724();
  v101 = *(v9 - 8);
  v102 = v9;
  __chkstk_darwin(v9);
  v100 = &v75[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = sub_10074A8C4();
  v98 = *(v11 - 8);
  v99 = v11;
  __chkstk_darwin(v11);
  v96 = &v75[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v111 = sub_10074CD14();
  v94 = *(v111 - 8);
  __chkstk_darwin(v111);
  v93 = &v75[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = sub_1007479B4();
  v108 = *(v14 - 8);
  __chkstk_darwin(v14);
  v16 = &v75[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v17);
  v19 = &v75[-v18];
  v20 = sub_10074A8A4();
  v109 = *(v20 - 8);
  __chkstk_darwin(v20);
  v95 = &v75[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v22);
  v24 = &v75[-v23];
  sub_100753BA4();
  v26 = v25;
  v103 = a1;
  v27 = sub_100742564();
  v28 = sub_10074EF34();
  v83 = v29;
  v84 = v28;
  v30 = sub_10074EFB4();
  v85 = v31;
  v86 = v30;
  if (sub_10074EED4())
  {
    v32 = sub_100748644();

    if (v32)
    {
      v33 = sub_10074F764();
      v91 = v34;
      v92 = v33;
    }

    else
    {
      v91 = 0;
      v92 = 0;
    }
  }

  else
  {
    v91 = 0;
    v92 = 0;
  }

  sub_100745E34();
  v35 = [a2 traitCollection];
  if (qword_100920410 != -1)
  {
    swift_once();
  }

  v36 = sub_10000D0FC(v20, qword_10097E010);
  v88 = *(v109 + 16);
  v89 = v109 + 16;
  v88(v24, v36, v20);
  v37 = sub_100753804();
  v104 = a2;
  v97 = v27;
  v110 = v20;
  if (v37)
  {
    if (qword_100921988 != -1)
    {
      swift_once();
    }

    v38 = qword_10093FF40;
  }

  else
  {
    if (qword_100921990 != -1)
    {
      swift_once();
    }

    v38 = qword_10093FF58;
  }

  v39 = v14;
  v40 = sub_10000D0FC(v14, v38);
  v41 = v108;
  (*(v108 + 16))(v16, v40, v14);
  (*(v41 + 32))(v19, v16, v14);
  v82 = v35;
  v42 = [v35 preferredContentSizeCategory];
  sub_100753924();

  sub_100747964();
  sub_100747994();
  sub_10074A894();
  sub_10074A884();
  v43 = sub_100750F34();
  swift_allocObject();
  v81 = sub_100750F14();
  v44 = objc_opt_self();
  v78 = v44;
  v45 = [v44 preferredFontForTextStyle:UIFontTextStyleBody];
  v46 = sub_10074F3F4();
  v80 = v24;
  v47 = v46;
  v148[3] = v46;
  v107 = sub_100724178(&qword_10092AC70, &type metadata accessor for Feature);
  v148[4] = v107;
  v48 = sub_10000D134(v148);
  v49 = enum case for Feature.measurement_with_labelplaceholder(_:);
  v50 = *(v47 - 8);
  v79 = *(v50 + 104);
  v90 = v39;
  v51 = v50 + 104;
  v76 = enum case for Feature.measurement_with_labelplaceholder(_:);
  v79(v48, enum case for Feature.measurement_with_labelplaceholder(_:), v47);
  v77 = v51;
  sub_10074FC74();
  v87 = v19;
  sub_10000C620(v148);
  v52 = v93;
  sub_10074CD04();
  sub_10074CCE4();
  v53 = *(v94 + 8);
  v53(v52, v111);
  v54 = [v44 preferredFontForTextStyle:UIFontTextStyleFootnote];
  v147[3] = v47;
  v147[4] = v107;
  v55 = sub_10000D134(v147);
  v56 = v49;
  v57 = v79;
  v79(v55, v56, v47);
  sub_10074FC74();
  sub_10000C620(v147);
  sub_10074CD04();
  sub_10074CCE4();
  v53(v52, v111);
  v58 = [v78 preferredFontForTextStyle:UIFontTextStyleFootnote];
  v146[3] = v47;
  v146[4] = v107;
  v59 = sub_10000D134(v146);
  v57(v59, v76, v47);
  sub_10074FC74();
  sub_10000C620(v146);
  sub_10074CD04();
  sub_10074CCE4();
  v53(v52, v111);
  sub_10001BB7C(0, 0);
  swift_allocObject();
  v60 = sub_100750F14();

  sub_10001BB7C(0, 0);
  swift_allocObject();
  v61 = sub_100750F14();
  v62 = v80;
  v88(v95, v80, v110);
  v145 = &protocol witness table for LayoutViewPlaceholder;
  v144 = v43;
  v143 = v81;
  v142 = 0;
  *&v140[40] = 0u;
  v141 = 0u;
  sub_10000C824(v148, v140);
  sub_10000C824(v147, &v139);
  v138 = 0;
  v136 = 0u;
  v137 = 0u;
  v135 = 0;
  v133 = 0u;
  v134 = 0u;

  v63 = sub_100750F24();
  v132 = &protocol witness table for LayoutViewPlaceholder;
  v131 = v43;
  v130 = v63;
  v129 = 0;
  v127 = 0u;
  v128 = 0u;
  v126 = 0;
  v124 = 0u;
  v125 = 0u;
  v123 = 0;
  v121 = 0u;
  v122 = 0u;
  v120 = 0;
  v119 = 0u;
  *&v118[40] = 0u;
  sub_10000C824(v146, v118);
  v116 = v43;
  v117 = &protocol witness table for LayoutViewPlaceholder;
  v114 = &protocol witness table for LayoutViewPlaceholder;
  v115 = v60;
  v113 = v43;
  v112 = v61;
  v64 = v96;
  sub_10074A8B4();
  sub_100751034();
  sub_10000C518(&unk_1009231A0);
  v65 = swift_allocObject();
  *(v65 + 16) = xmmword_1007A5CF0;
  v66 = v82;
  *(v65 + 32) = v82;
  v67 = v66;
  v68 = sub_100751044();
  sub_100724178(&unk_10092AC80, &type metadata accessor for SmallSearchLockupLayout);
  v69 = v99;
  sub_100750404();

  (*(v98 + 8))(v64, v69);
  sub_10000C620(v146);
  sub_10000C620(v147);
  sub_10000C620(v148);
  (*(v108 + 8))(v87, v90);
  (*(v109 + 8))(v62, v110);
  if (qword_1009202F0 != -1)
  {
    swift_once();
  }

  sub_10000C888(qword_10097DC10, qword_10097DC28);
  v70 = v100;
  sub_100536120();
  v71 = v104;
  sub_100750564();
  (*(v101 + 8))(v70, v102);
  v72 = type metadata accessor for AppEventView();
  v73 = sub_100742554();
  sub_100194FE8(v26, v73, v71, v105, v72, v106);

  return a4;
}

uint64_t sub_100724178(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1007241C0(uint64_t a1)
{
  v2 = sub_10000C518(&qword_100923E88);
  __chkstk_darwin(v2 - 8);
  v4 = &v45 - v3;
  v58 = sub_10074F654();
  v62 = *(v58 - 8);
  __chkstk_darwin(v58);
  v6 = (&v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_10000C518(&qword_100923230);
  __chkstk_darwin(v7 - 8);
  v9 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v45 - v11;
  __chkstk_darwin(v13);
  v15 = &v45 - v14;
  __chkstk_darwin(v16);
  v61 = &v45 - v17;
  sub_10000C518(&qword_100923E90);
  v18 = *(sub_10074F584() - 8);
  v59 = *(v18 + 72);
  v19 = (*(v18 + 80) + 32) & ~*(v18 + 80);
  v20 = swift_allocObject();
  v51 = v20;
  *(v20 + 16) = xmmword_1007A7250;
  v21 = v20 + v19;
  v22 = a1;
  v63 = a1;
  sub_10001CC10();
  sub_10074F614();
  v63 = 15.0;
  sub_10074F614();
  v63 = 0.0;
  sub_10074F614();
  __asm { FMOV            V0.2D, #16.0 }

  *v6 = _Q0;
  v56 = enum case for PageGrid.HorizontalMargins.absolute(_:);
  v28 = *(v62 + 104);
  v62 += 104;
  v57 = v28;
  v29 = v58;
  (v28)(v6);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  LOBYTE(v63) = 0;
  sub_10074F614();
  v63 = 0.0;
  sub_10074F614();
  v60 = v15;
  v54 = v12;
  sub_10074F544();
  v63 = a1;
  sub_10074F614();
  v63 = 15.0;
  sub_10074F614();
  v63 = 0.0;
  sub_10074F614();
  __asm { FMOV            V0.2D, #20.0 }

  *v6 = _Q0;
  v33 = v56;
  v57(v6, v56, v29);
  LOBYTE(v63) = 0;
  v52 = v4;
  sub_10074F614();
  v63 = 0.0;
  v55 = v9;
  sub_10074F614();
  v34 = v59;
  v53 = v21;
  top = UIEdgeInsetsZero.top;
  v49 = left;
  v50 = bottom;
  sub_10074F544();
  v46 = 2 * v34;
  v63 = v22;
  sub_10074F614();
  v63 = 20.0;
  sub_10074F614();
  v63 = 0.0;
  sub_10074F614();
  v47 = vdupq_n_s64(0x4041000000000000uLL);
  v35 = v6;
  *v6 = v47;
  v36 = v33;
  v37 = v33;
  v38 = v57;
  v39 = v58;
  v57(v6, v37, v58);
  LOBYTE(v63) = 0;
  sub_10074F614();
  v63 = 0.0;
  sub_10074F614();
  v40 = v46;
  v41 = v35;
  sub_10074F544();
  v42 = v59;
  v46 = v40 + v59;
  v63 = v22;
  sub_10074F614();
  v63 = 20.0;
  sub_10074F614();
  v63 = 0.0;
  sub_10074F614();
  *v41 = v47;
  v38(v41, v36, v39);
  sub_1007535A4();
  LOBYTE(v63) = 0;
  sub_10074F614();
  v63 = 0.0;
  sub_10074F614();
  sub_10074F544();
  v46 = 4 * v42;
  v63 = v22;
  sub_10074F614();
  v63 = 24.0;
  sub_10074F614();
  v63 = 0.0;
  sub_10074F614();
  v47 = vdupq_n_s64(0x404A000000000000uLL);
  *v41 = v47;
  v43 = v58;
  v38(v41, v56, v58);
  LOBYTE(v63) = 0;
  sub_10074F614();
  v63 = 0.0;
  sub_10074F614();
  sub_10074F544();
  v63 = v22;
  sub_10074F614();
  v63 = 24.0;
  sub_10074F614();
  v63 = 0.0;
  sub_10074F614();
  *v41 = v47;
  v57(v41, v56, v43);
  LOBYTE(v63) = 0;
  sub_10074F614();
  v63 = 0.0;
  sub_10074F614();
  sub_10074F544();
  return v51;
}

void sub_100724BD4(uint64_t a1, uint64_t (*a2)(void), void *a3)
{
  v5 = objc_opt_self();
  sub_10000D198();
  v6 = a2();
  v7 = [v5 _effectWithTintColor:v6];

  *a3 = v7;
}

void sub_100724C68(void *a1, uint64_t a2, const char **a3)
{
  v6.receiver = a1;
  v6.super_class = type metadata accessor for PaletteBackgroundView();
  v4 = *a3;
  v5 = v6.receiver;
  objc_msgSendSuper2(&v6, v4);
  sub_100724CBC();
}

id sub_100724CBC()
{
  v1 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension21PaletteBackgroundView_blurEffectOverride];
  if (!v1)
  {
    v2 = [v0 traitCollection];
    v3 = [v2 userInterfaceStyle];

    if (v3 == 2)
    {
      if (qword_100921EB8 != -1)
      {
        swift_once();
      }

      v4 = &qword_1009831E8;
    }

    else
    {
      if (qword_100921EB0 != -1)
      {
        swift_once();
      }

      v4 = &qword_1009831E0;
    }

    v1 = *v4;
  }

  return [v0 setEffect:v1];
}

id sub_100724E94()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PaletteBackgroundView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100724EFC(void *a1)
{
  if (*v1 != *a1 || (sub_1007544C4() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for BoolUserDefaultsDebugSetting();
  result = swift_dynamicCastClass();
  if (!result)
  {
    return result;
  }

  v3 = *(result + 56) == v1[7] && *(result + 64) == v1[8];
  if (v3 || (v4 = result, v5 = sub_100754754(), result = v4, (v5)) && (*(result + 80) == v1[10] && *(result + 88) == v1[11] || (sub_100754754()))
  {
    return 1;
  }

  else
  {
    return 0;
  }
}

void sub_100724FF8()
{
  sub_1007544D4();
  sub_100753174();
  sub_100754854(0);
  sub_100753174();
  sub_100754854(0);
}

uint64_t sub_100725058()
{
}

uint64_t sub_100725088()
{
  sub_100016994(v0 + 16);

  return swift_deallocClassInstance();
}

id sub_100725114(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = (*(a3 + 16))(a3, a1, a2);

  return v3;
}

void *sub_100725158()
{
  v1 = v0;
  v2 = sub_1007417F4();
  v3 = *(v2 - 8);
  *&v4 = __chkstk_darwin(v2).n128_u64[0];
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [v1 collectionView];
  if (v7)
  {
    v8 = v7;
    [v7 bounds];
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;
  }

  else
  {
    v10 = 0.0;
    v12 = 0.0;
    v14 = 0.0;
    v16 = 0.0;
  }

  v17 = [v1 layoutAttributesForElementsInRect:{v10, v12, v14, v16}];
  if (v17)
  {
    v18 = v17;
    sub_1000E5AA4();
    v19 = sub_1007532A4();

    if (v19 >> 62)
    {
LABEL_26:
      v20 = sub_100754664();
      if (v20)
      {
LABEL_7:
        v32 = v2;
        v2 = 0;
        v31 = (v3 + 8);
        v3 = _swiftEmptyArrayStorage;
        do
        {
          v21 = v2;
          while (1)
          {
            if ((v19 & 0xC000000000000001) != 0)
            {
              v22 = sub_100754574();
            }

            else
            {
              if (v21 >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_25;
              }

              v22 = *(v19 + 8 * v21 + 32);
            }

            v23 = v22;
            v2 = v21 + 1;
            if (__OFADD__(v21, 1))
            {
              __break(1u);
LABEL_25:
              __break(1u);
              goto LABEL_26;
            }

            if (![v22 representedElementCategory])
            {
              break;
            }

            ++v21;
            if (v2 == v20)
            {
              goto LABEL_28;
            }
          }

          v24 = [v23 indexPath];
          sub_100741744();

          v30 = sub_100741784();
          (*v31)(v6, v32);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v3 = sub_100255ADC(0, *(v3 + 2) + 1, 1, v3);
          }

          v26 = *(v3 + 2);
          v25 = *(v3 + 3);
          if (v26 >= v25 >> 1)
          {
            v3 = sub_100255ADC((v25 > 1), v26 + 1, 1, v3);
          }

          *(v3 + 2) = v26 + 1;
          *&v3[8 * v26 + 32] = v30;
        }

        while (v2 != v20);
        goto LABEL_28;
      }
    }

    else
    {
      v20 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v20)
      {
        goto LABEL_7;
      }
    }

    v3 = _swiftEmptyArrayStorage;
LABEL_28:

    v27 = sub_10029C450(v3);

    return v27;
  }

  return &_swiftEmptySetSingleton;
}

char *sub_100725470(void *a1)
{
  v24 = a1;
  v2 = sub_1007417F4();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension33BaseCollectionCompositionalLayout_indexPathsRequiringRubberbanding];

  v7 = [v24 indexPath];
  sub_100741744();

  LOBYTE(v7) = sub_1002A5200(v5, v6);

  (*(v3 + 8))(v5, v2);
  if (v7)
  {
    v8 = [v1 collectionView];
    if (v8)
    {
      v9 = v8;
      type metadata accessor for BaseCollectionViewLayoutAttributes();
      v10 = swift_dynamicCastClass();
      if (v10)
      {
        v11 = v10;
        v12 = v24;
        v13 = v9;
        [v13 contentOffset];
        v15 = v14;
        v16 = -v14;
        if (v14 > 0.0)
        {
          v16 = 0.0;
        }

        *&v11[OBJC_IVAR____TtC22SubscribePageExtension34BaseCollectionViewLayoutAttributes_rubberbandingDistance] = v16;
        v17 = v12;
        [v11 frame];
        [v11 setFrame:?];
        [v11 frame];
        [v11 setFrame:?];
        v11[OBJC_IVAR____TtC22SubscribePageExtension34BaseCollectionViewLayoutAttributes_isRubberbanding] = v15 < 0.0;
        if (v15 <= 0.0)
        {

          *&v11[OBJC_IVAR____TtC22SubscribePageExtension34BaseCollectionViewLayoutAttributes_parallaxY] = 0;
        }

        else
        {
          [v13 contentOffset];
          v19 = v18;

          v20 = v19 * 0.28;
          if (v19 * 0.28 < 0.0)
          {
            v20 = 0.0;
          }

          *&v11[OBJC_IVAR____TtC22SubscribePageExtension34BaseCollectionViewLayoutAttributes_parallaxY] = v20;
        }

        return v11;
      }
    }
  }

  v21 = v24;

  return v21;
}

_OWORD *sub_100725710@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for BaseCollectionViewLayoutAttributes();
  v9.receiver = v2;
  v9.super_class = v5;
  objc_msgSendSuper2(&v9, "copyWithZone:", a1);
  sub_100754314();
  swift_unknownObjectRelease();
  sub_10000C5B4(v10, v8);
  if (!swift_dynamicCast())
  {
    return sub_10000C610(v10, a2);
  }

  *(v7 + OBJC_IVAR____TtC22SubscribePageExtension34BaseCollectionViewLayoutAttributes_parallaxY) = *&v2[OBJC_IVAR____TtC22SubscribePageExtension34BaseCollectionViewLayoutAttributes_parallaxY];
  *(v7 + OBJC_IVAR____TtC22SubscribePageExtension34BaseCollectionViewLayoutAttributes_rubberbandingDistance) = *&v2[OBJC_IVAR____TtC22SubscribePageExtension34BaseCollectionViewLayoutAttributes_rubberbandingDistance];
  *(v7 + OBJC_IVAR____TtC22SubscribePageExtension34BaseCollectionViewLayoutAttributes_isRubberbanding) = v2[OBJC_IVAR____TtC22SubscribePageExtension34BaseCollectionViewLayoutAttributes_isRubberbanding];
  *(a2 + 24) = v5;
  *a2 = v7;
  return sub_10000C620(v10);
}

BOOL sub_100725864(uint64_t a1)
{
  sub_100032C04(a1, v18);
  v3 = v19;
  if (v19)
  {
    v4 = sub_10000C888(v18, v19);
    v5 = *(v3 - 8);
    v6 = __chkstk_darwin(v4);
    v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v5 + 16))(v8, v6);
    v9 = sub_100754734();
    (*(v5 + 8))(v8, v3);
    sub_10000C620(v18);
  }

  else
  {
    v9 = 0;
  }

  v10 = type metadata accessor for BaseCollectionViewLayoutAttributes();
  v17.receiver = v1;
  v17.super_class = v10;
  v11 = objc_msgSendSuper2(&v17, "isEqual:", v9);
  swift_unknownObjectRelease();
  if (!v11)
  {
    return 0;
  }

  sub_100032C04(a1, v18);
  if (!v19)
  {
    sub_1000277BC(v18);
    return 0;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  if (*&v1[OBJC_IVAR____TtC22SubscribePageExtension34BaseCollectionViewLayoutAttributes_parallaxY] != *&v16[OBJC_IVAR____TtC22SubscribePageExtension34BaseCollectionViewLayoutAttributes_parallaxY] || v1[OBJC_IVAR____TtC22SubscribePageExtension34BaseCollectionViewLayoutAttributes_isRubberbanding] != v16[OBJC_IVAR____TtC22SubscribePageExtension34BaseCollectionViewLayoutAttributes_isRubberbanding])
  {

    return 0;
  }

  v13 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension34BaseCollectionViewLayoutAttributes_rubberbandingDistance];
  v14 = *&v16[OBJC_IVAR____TtC22SubscribePageExtension34BaseCollectionViewLayoutAttributes_rubberbandingDistance];

  return v13 == v14;
}

id sub_100725BA4(uint64_t a1, uint64_t a2, void *a3)
{
  *&v3[OBJC_IVAR____TtC22SubscribePageExtension33BaseCollectionCompositionalLayout_indexPathsRequiringRubberbanding] = _swiftEmptySetSingleton;
  v5 = &v3[OBJC_IVAR____TtC22SubscribePageExtension33BaseCollectionCompositionalLayout_pendingPrepareObserver];
  *v5 = 0;
  *(v5 + 1) = 0;
  aBlock[4] = a1;
  aBlock[5] = a2;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1002B6430;
  aBlock[3] = &unk_100882B98;
  v6 = _Block_copy(aBlock);

  v39.receiver = v3;
  v39.super_class = type metadata accessor for BaseCollectionCompositionalLayout();
  v7 = objc_msgSendSuper2(&v39, "initWithSectionProvider:configuration:", v6, a3);
  _Block_release(v6);
  type metadata accessor for GradientSectionBackgroundView();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v9 = v7;
  sub_1007539C4();
  v10 = sub_100753064();

  [v9 registerClass:ObjCClassFromMetadata forDecorationViewOfKind:v10];

  type metadata accessor for MaterialGradientSectionBackgroundView();
  v11 = swift_getObjCClassFromMetadata();
  sub_1007539C4();
  v12 = sub_100753064();

  [v9 registerClass:v11 forDecorationViewOfKind:v12];

  type metadata accessor for ArtworkSectionBackgroundView();
  v13 = swift_getObjCClassFromMetadata();
  sub_1007539C4();
  v14 = sub_100753064();

  [v9 registerClass:v13 forDecorationViewOfKind:v14];

  type metadata accessor for InteractiveSectionBackgroundView();
  v15 = swift_getObjCClassFromMetadata();
  sub_1007539C4();
  v16 = sub_100753064();

  [v9 registerClass:v15 forDecorationViewOfKind:v16];

  type metadata accessor for EditorsChoiceBackgroundView();
  v17 = swift_getObjCClassFromMetadata();
  sub_1007539C4();
  v18 = sub_100753064();

  [v9 registerClass:v17 forDecorationViewOfKind:v18];

  v19 = ASKBuildTypeGetCurrent();
  v20 = sub_100753094();
  v22 = v21;
  if (v20 == sub_100753094() && v22 == v23)
  {
    goto LABEL_3;
  }

  v24 = sub_100754754();

  if (v24)
  {
    goto LABEL_5;
  }

  v28 = sub_100753094();
  v30 = v29;
  if (v28 == sub_100753094() && v30 == v31)
  {
LABEL_3:

    goto LABEL_6;
  }

  v32 = sub_100754754();

  if (v32)
  {
LABEL_5:

    goto LABEL_6;
  }

  v33 = sub_100753094();
  v35 = v34;
  if (v33 == sub_100753094() && v35 == v36)
  {
  }

  else
  {
    v37 = sub_100754754();

    if ((v37 & 1) == 0)
    {

      goto LABEL_8;
    }
  }

  sub_100752854();
  sub_100752844();
  if (qword_100921F28 != -1)
  {
    swift_once();
  }

  v38 = sub_10000C518(&unk_100947360);
  sub_10000D0FC(v38, qword_100983450);
  sub_100752534();

  if (LOBYTE(aBlock[0]) == 2 || (aBlock[0] & 1) == 0)
  {

    goto LABEL_7;
  }

LABEL_6:
  type metadata accessor for TodayDebugSectionBackgroundView();
  v25 = swift_getObjCClassFromMetadata();
  sub_1007539C4();
  v26 = sub_100753064();

  [v9 registerClass:v25 forDecorationViewOfKind:v26];

LABEL_7:

LABEL_8:

  return v9;
}

void *sub_10072617C(double a1, double a2, double a3, double a4)
{
  v18.receiver = v4;
  v18.super_class = type metadata accessor for BaseCollectionCompositionalLayout();
  result = objc_msgSendSuper2(&v18, "layoutAttributesForElementsInRect:", a1, a2, a3, a4);
  if (result)
  {
    v10 = result;
    sub_1000E5AA4();
    v11 = sub_1007532A4();

    if (v11 >> 62)
    {
      goto LABEL_15;
    }

    for (i = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_100754664())
    {
      v17 = _swiftEmptyArrayStorage;
      v13 = v4;
      v4 = &v17;
      result = sub_1007545C4();
      if (i < 0)
      {
        __break(1u);
        return result;
      }

      v14 = 0;
      while (1)
      {
        if ((v11 & 0xC000000000000001) != 0)
        {
          v15 = sub_100754574();
          goto LABEL_7;
        }

        if ((v14 & 0x8000000000000000) != 0)
        {
          break;
        }

        if (v14 >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }

        v15 = *(v11 + 8 * v14 + 32);
LABEL_7:
        v16 = v15;
        ++v14;
        sub_100725470(v15);

        sub_1007545A4();
        sub_1007545D4();
        sub_1007545E4();
        v4 = &v17;
        sub_1007545B4();
        if (i == v14)
        {

          return v17;
        }
      }

      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      ;
    }

    return _swiftEmptyArrayStorage;
  }

  return result;
}

char *sub_100726554(void *a1, uint64_t a2, void *a3, uint64_t a4, SEL *a5)
{
  v8 = sub_1007417F4();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100741744();
  v12 = a3;
  v13 = a1;
  isa = sub_100741704().super.isa;
  v15 = type metadata accessor for BaseCollectionCompositionalLayout();
  v19.receiver = v13;
  v19.super_class = v15;
  v16 = objc_msgSendSuper2(&v19, *a5, v12, isa);

  if (v16)
  {
    v17 = sub_100725470(v16);

    v13 = v16;
  }

  else
  {
    v17 = 0;
  }

  (*(v9 + 8))(v11, v8);

  return v17;
}

uint64_t sub_10072676C(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = [v4 collectionView];
  if (!v10)
  {
    v30.receiver = v4;
    v30.super_class = type metadata accessor for BaseCollectionCompositionalLayout();
    return objc_msgSendSuper2(&v30, "shouldInvalidateLayoutForBoundsChange:", a1, a2, a3, a4);
  }

  v11 = v10;
  v12 = OBJC_IVAR____TtC22SubscribePageExtension33BaseCollectionCompositionalLayout_indexPathsRequiringRubberbanding;
  *&v4[OBJC_IVAR____TtC22SubscribePageExtension33BaseCollectionCompositionalLayout_indexPathsRequiringRubberbanding] = _swiftEmptySetSingleton;

  if ([v11 delegate])
  {
    ObjectType = swift_getObjectType();
    v14 = swift_conformsToProtocol2();
    if (v14)
    {
      v15 = (*(v14 + 8))(v11, ObjectType, v14);
      v16 = v11;
      v17 = sub_100727850(v15, v16);
      swift_unknownObjectRelease();

      *&v4[v12] = v17;
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  v19 = [v4 collectionView];
  if (v19)
  {
    v20 = v19;
    [v19 bounds];
    v22 = v21;
    v24 = v23;
    v26 = v25;

    if (v24 != a3)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v22 = 0.0;
    v26 = 0.0;
    if (a3 != 0.0)
    {
      goto LABEL_18;
    }
  }

  if (v26 == a4 && (!*(*&v5[v12] + 16) || v22 == a2))
  {
    v29.receiver = v5;
    v29.super_class = type metadata accessor for BaseCollectionCompositionalLayout();
    v28 = objc_msgSendSuper2(&v29, "shouldInvalidateLayoutForBoundsChange:", a1, a2, a3, a4);

    return v28;
  }

LABEL_18:

  return 1;
}

id sub_100726A04(double a1, double a2, double a3, double a4)
{
  v9 = [v4 collectionView];
  if (v9)
  {
    v10 = v9;
    [v9 bounds];
    v12 = v11;
    v14 = v13;
  }

  else
  {
    v12 = 0.0;
    v14 = 0.0;
  }

  if (v12 == a3 && v14 == a4)
  {
    v16 = OBJC_IVAR____TtC22SubscribePageExtension33BaseCollectionCompositionalLayout_indexPathsRequiringRubberbanding;
    if (*(*(v4 + OBJC_IVAR____TtC22SubscribePageExtension33BaseCollectionCompositionalLayout_indexPathsRequiringRubberbanding) + 16))
    {
      v17 = [objc_allocWithZone(UICollectionViewLayoutInvalidationContext) init];
      v18 = *(v4 + v16);
      v19 = *(v18 + 16);
      if (!v19 || (v4 = sub_1006311A8(*(v18 + 16), 0), v20 = *(sub_1007417F4() - 8), sub_100727328(&v27, v4 + ((*(v20 + 80) + 32) & ~*(v20 + 80)), v19, v18), v22 = v21, , sub_1001A8F34(), v22 == v19))
      {
        sub_1007417F4();
        isa = sub_100753294().super.isa;

        [v17 invalidateItemsAtIndexPaths:isa];

        return v17;
      }

      __break(1u);
    }
  }

  v23 = type metadata accessor for BaseCollectionCompositionalLayout();
  v28.receiver = v4;
  v28.super_class = v23;
  v24 = objc_msgSendSuper2(&v28, "invalidationContextForBoundsChange:", a1, a2, a3, a4);

  return v24;
}

id sub_100726D94(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_100726E40(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = sub_1007417F4();
  v8 = *(v35 - 8);
  __chkstk_darwin(v35);
  v34 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return _swiftEmptySetSingleton;
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  sub_10000C518(&qword_10092B530);
  result = sub_100754524();
  v10 = result;
  if (a2 < 1)
  {
    v12 = 0;
  }

  else
  {
    v12 = *a1;
  }

  v13 = 0;
  v14 = result + 56;
  v30 = (v8 + 32);
  v31 = v8 + 16;
  v29 = a4;
  while (v12)
  {
    v15 = __clz(__rbit64(v12));
    v32 = (v12 - 1) & v12;
LABEL_16:
    v18 = *(a4 + 48);
    v33 = *(v8 + 72);
    (*(v8 + 16))(v34, v18 + v33 * (v15 | (v13 << 6)), v35);
    sub_100727BF8();
    result = sub_100752FA4();
    v19 = -1 << *(v10 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v14 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v14 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v14 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v14 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    result = (*v30)(*(v10 + 48) + v22 * v33, v34, v35);
    ++*(v10 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v29;
    v12 = v32;
    if (!a3)
    {
LABEL_28:

      return v10;
    }
  }

  v16 = v13;
  while (1)
  {
    v13 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v13 >= a2)
    {
      goto LABEL_28;
    }

    v17 = a1[v13];
    ++v16;
    if (v17)
    {
      v15 = __clz(__rbit64(v17));
      v32 = (v17 - 1) & v17;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

unint64_t *sub_100727138(unint64_t *result, uint64_t a2, uint64_t a3, void *a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v8 = a4;
    sub_1007275CC(v7, a2, a3, v8);
    v10 = v9;

    return v10;
  }

  return result;
}

void *sub_1007271D0(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void sub_100727328(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v40 = sub_1007417F4();
  v42 = *(v40 - 8);
  __chkstk_darwin(v40);
  v41 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v9);
  v39 = &v33 - v11;
  v12 = a4 + 56;
  v13 = -1 << *(a4 + 32);
  if (-v13 < 64)
  {
    v14 = ~(-1 << -v13);
  }

  else
  {
    v14 = -1;
  }

  v15 = v14 & *(a4 + 56);
  if (!a2)
  {
LABEL_19:
    v31 = 0;
LABEL_25:
    *a1 = a4;
    *(a1 + 8) = v12;
    *(a1 + 16) = ~v13;
    *(a1 + 24) = v31;
    *(a1 + 32) = v15;
    return;
  }

  if (!a3)
  {
    v31 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v33 = -1 << *(a4 + 32);
    v34 = a1;
    v16 = 0;
    v17 = (63 - v13) >> 6;
    v35 = v42 + 32;
    v36 = v42 + 16;
    a1 = 1;
    v37 = a4 + 56;
    v38 = a3;
    v18 = v39;
    while (v15)
    {
      v44 = a2;
LABEL_15:
      v21 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      v43 = v16;
      v22 = a4;
      v23 = *(a4 + 48);
      v24 = v41;
      v25 = v42;
      v26 = *(v42 + 72);
      v27 = v40;
      (*(v42 + 16))(v41, v23 + v26 * (v21 | (v16 << 6)), v40, v10);
      v28 = *(v25 + 32);
      v28(v18, v24, v27);
      v29 = v44;
      v28(v44, v18, v27);
      if (a1 == v38)
      {
        v13 = v33;
        a1 = v34;
        a4 = v22;
        v31 = v43;
        v12 = v37;
        goto LABEL_25;
      }

      a2 = &v29[v26];
      v30 = __OFADD__(a1++, 1);
      a4 = v22;
      v16 = v43;
      v12 = v37;
      if (v30)
      {
        __break(1u);
        goto LABEL_19;
      }
    }

    v19 = v16;
    while (1)
    {
      v20 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v20 >= v17)
      {
        break;
      }

      v15 = *(v12 + 8 * v20);
      ++v19;
      if (v15)
      {
        v44 = a2;
        v16 = v20;
        goto LABEL_15;
      }
    }

    v15 = 0;
    if (v17 <= v16 + 1)
    {
      v32 = v16 + 1;
    }

    else
    {
      v32 = v17;
    }

    v31 = v32 - 1;
    v13 = v33;
    a1 = v34;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
}

void sub_1007275CC(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v29 = a2;
  v30 = a1;
  v6 = sub_1007417F4();
  v8 = __chkstk_darwin(v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = 0;
  v11 = 0;
  v12 = a3 + 56;
  v13 = 1 << *(a3 + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & *(a3 + 56);
  v16 = (v13 + 63) >> 6;
  v36 = v7;
  v34 = (v7 + 8);
  v35 = v7 + 16;
  while (v15)
  {
    v17 = __clz(__rbit64(v15));
    v15 &= v15 - 1;
LABEL_12:
    v20 = v17 | (v11 << 6);
    v21 = *(a3 + 48);
    v22 = *(v36 + 72);
    v33 = v20;
    (*(v36 + 16))(v10, v21 + v22 * v20, v6, v8);
    v23 = [a4 numberOfSections];
    if (sub_100741784() >= v23)
    {
      (*v34)(v10, v6);
    }

    else
    {
      v32 = [a4 numberOfItemsInSection:sub_100741784()];
      v24 = a4;
      v25 = a3;
      v26 = sub_100741774();
      (*v34)(v10, v6);
      v27 = v26 < v32;
      a3 = v25;
      a4 = v24;
      if (v27)
      {
        *(v30 + ((v33 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v33;
        if (__OFADD__(v31++, 1))
        {
          __break(1u);
LABEL_18:

          sub_100726E40(v30, v29, v31, a3);
          return;
        }
      }
    }
  }

  v18 = v11;
  while (1)
  {
    v11 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v11 >= v16)
    {
      goto LABEL_18;
    }

    v19 = *(v12 + 8 * v11);
    ++v18;
    if (v19)
    {
      v17 = __clz(__rbit64(v19));
      v15 = (v19 - 1) & v19;
      goto LABEL_12;
    }
  }

  __break(1u);
}

uint64_t sub_100727850(uint64_t a1, void *a2)
{
  v3 = v2;
  v38 = sub_1007417F4();
  v6 = *(v38 - 8);
  __chkstk_darwin(v38);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = a1;
  LOBYTE(v7) = *(a1 + 32);
  LODWORD(a1) = v7 & 0x3F;
  v9 = ((1 << v7) + 63) >> 6;
  v10 = 8 * v9;
  v11 = a2;
  if (a1 > 0xD)
  {
    goto LABEL_21;
  }

  while (1)
  {
    v37 = v11;
    v30 = v9;
    v31 = v3;
    v29 = &v29;
    __chkstk_darwin(v11);
    v32 = &v29 - ((v10 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v32, v10);
    v10 = 0;
    v12 = v38;
    v3 = v39 + 56;
    v13 = 1 << *(v39 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v39 + 56);
    v9 = (v13 + 63) >> 6;
    v35 = v6 + 16;
    v36 = v6;
    v33 = 0;
    v34 = (v6 + 8);
    while (v15)
    {
      v16 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_13:
      v6 = v16 | (v10 << 6);
      (*(v36 + 16))(v8, *(v39 + 48) + *(v36 + 72) * v6, v12);
      v19 = v37;
      v20 = [v37 numberOfSections];
      if (sub_100741784() >= v20)
      {
        v11 = (*v34)(v8, v12);
      }

      else
      {
        v21 = [v19 numberOfItemsInSection:sub_100741784()];
        v22 = sub_100741774();
        v11 = (*v34)(v8, v38);
        v12 = v38;
        if (v22 < v21)
        {
          *&v32[(v6 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v6;
          if (__OFADD__(v33++, 1))
          {
            __break(1u);
LABEL_18:
            v24 = sub_100726E40(v32, v30, v33, v39);

            return v24;
          }
        }
      }
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v9)
      {
        goto LABEL_18;
      }

      v18 = *(v3 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v15 = (v18 - 1) & v18;
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_21:
    v26 = v11;

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }

    v11 = v26;
  }

  v27 = swift_slowAlloc();
  v28 = v26;
  v24 = sub_100727138(v27, v9, v39, v28);

  return v24;
}

unint64_t sub_100727BF8()
{
  result = qword_100947C40;
  if (!qword_100947C40)
  {
    sub_1007417F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100947C40);
  }

  return result;
}

uint64_t sub_100727C50()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

id sub_100727C88()
{
  v1 = (*(*(v0 + 16) + 16))();

  return v1;
}

uint64_t sub_100727CC8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100727CE0(void *a1)
{
  if (*v1 == *a1)
  {
    v2 = v1;
    if (sub_1007544C4())
    {
      type metadata accessor for NavigationActionDebugSetting();
      result = swift_dynamicCastClass();
      if (!result)
      {
        return result;
      }

      v4 = result;
      v5 = *(result + 56) == v1[7] && *(result + 64) == v1[8];
      if (v5 || (sub_100754754() & 1) != 0)
      {
        v6 = *(v4 + 72);
        if (v6)
        {

          v8 = v6(v7);
          v10 = v9;
          v11 = v1[9];
          if (!v11)
          {
            if (!v9)
            {
              goto LABEL_23;
            }

LABEL_19:

            return 0;
          }

          v12 = v8;
          v13 = v11();
          v15 = v14;
          if (v10)
          {
            if (v14)
            {
              if (v12 == v13 && v10 == v14)
              {
              }

              else
              {
                v19 = sub_100754754();

                if ((v19 & 1) == 0)
                {
LABEL_28:

                  return 0;
                }
              }

LABEL_23:
              v20 = *(v4 + 88);
              v21 = v2[11];
              if (!v20)
              {
                v25 = v21;

                if (!v21)
                {
                  return 1;
                }

                return 0;
              }

              if (v21)
              {
                type metadata accessor for DebugSettingsProvider();
                v22 = v21;
                v23 = v20;
                v24 = sub_100753FC4();

                return v24 & 1;
              }

              goto LABEL_28;
            }

            goto LABEL_19;
          }
        }

        else
        {
          v16 = v1[9];

          if (!v16)
          {
            goto LABEL_23;
          }

          v16(v17);
          v15 = v18;
        }

        if (!v15)
        {
          goto LABEL_23;
        }

        goto LABEL_19;
      }
    }
  }

  return 0;
}

void sub_100727F1C()
{
  sub_1007544D4();
  v1 = sub_100753174();
  v2 = *(v0 + 72);
  if (v2 && (v2(v1), v3))
  {
    sub_100754854(1u);
    sub_100753174();
  }

  else
  {
    sub_100754854(0);
  }

  v4 = *(v0 + 88);
  if (v4)
  {
    sub_100754854(1u);
    v5 = v4;
    sub_100753FD4();
  }

  else
  {
    sub_100754854(0);
  }
}

uint64_t sub_100728028()
{

  sub_1000164A8(*(v0 + 72));
}

uint64_t sub_100728068()
{
  sub_100016994(v0 + 16);

  sub_1000164A8(*(v0 + 72));

  return swift_deallocClassInstance();
}

uint64_t sub_100728104()
{
  v0 = sub_100750304();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100921228 != -1)
  {
    swift_once();
  }

  v4 = sub_100750534();
  v5 = sub_10000D0FC(v4, qword_1009813B0);
  v6 = *(v4 - 8);
  v7 = *(v6 + 16);
  v16[1] = v6 + 16;
  v17 = v7;
  v7(v3, v5, v4);
  v8 = enum case for FontSource.useCase(_:);
  v16[0] = v1[13];
  (v16[0])(v3, enum case for FontSource.useCase(_:), v0);
  v9 = sub_100750B04();
  v25 = v9;
  v26 = &protocol witness table for StaticDimension;
  sub_10000D134(&v24);
  v22 = v0;
  v23 = &protocol witness table for FontSource;
  v10 = sub_10000D134(&v21);
  v11 = v1[2];
  v11(v10, v3, v0);
  sub_100750B14();
  v12 = v1[1];
  v12(v3, v0);
  if (qword_100921238 != -1)
  {
    swift_once();
  }

  v13 = sub_10000D0FC(v4, qword_1009813E0);
  v17(v3, v13, v4);
  (v16[0])(v3, v8, v0);
  v22 = v9;
  v23 = &protocol witness table for StaticDimension;
  sub_10000D134(&v21);
  v19 = v0;
  v20 = &protocol witness table for FontSource;
  v14 = sub_10000D134(&v18);
  v11(v14, v3, v0);
  sub_100750B14();
  v12(v3, v0);
  v19 = sub_1007507D4();
  v20 = &protocol witness table for ZeroDimension;
  sub_10000D134(&v18);
  sub_1007507C4();
  qword_100983290 = &type metadata for Double;
  unk_100983298 = &protocol witness table for Double;
  qword_100983278 = 0x4028000000000000;
  xmmword_1009831F0 = vdupq_n_s64(0x4064000000000000uLL);
  sub_100012160(&v24, &unk_100983200);
  sub_100012160(&v21, &unk_100983228);
  result = sub_100012160(&v18, &unk_100983250);
  byte_1009832A0 = 1;
  return result;
}

char *sub_100728450(double a1, double a2, double a3, double a4)
{
  v9 = sub_10000C518(&qword_100932560);
  __chkstk_darwin(v9 - 8);
  v66 = &v58 - v10;
  v11 = sub_100743584();
  v64 = *(v11 - 8);
  v65 = v11;
  __chkstk_darwin(v11);
  v63 = &v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10074AB44();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v58 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_10000C518(&unk_100928A40);
  __chkstk_darwin(v17 - 8);
  v19 = &v58 - v18;
  v20 = OBJC_IVAR____TtC22SubscribePageExtension39LargeGameCenterPlayerCollectionViewCell_itemLayoutContext;
  v21 = sub_1007469A4();
  (*(*(v21 - 8) + 56))(&v4[v20], 1, 1, v21);
  v22 = OBJC_IVAR____TtC22SubscribePageExtension39LargeGameCenterPlayerCollectionViewCell_preferredArtworkSize;
  if (qword_100921EC0 != -1)
  {
    swift_once();
  }

  *&v4[v22] = xmmword_1009831F0;
  v62 = OBJC_IVAR____TtC22SubscribePageExtension39LargeGameCenterPlayerCollectionViewCell_alias;
  v67 = v4;
  if (qword_100921228 != -1)
  {
    swift_once();
  }

  v23 = sub_100750534();
  v24 = sub_10000D0FC(v23, qword_1009813B0);
  v25 = *(v23 - 8);
  v61 = *(v25 + 16);
  v61(v19, v24, v23);
  v60 = *(v25 + 56);
  v60(v19, 0, 1, v23);
  v26 = enum case for DirectionalTextAlignment.none(_:);
  v27 = *(v14 + 104);
  v27(v16, enum case for DirectionalTextAlignment.none(_:), v13);
  v28 = sub_100745C84();
  v59 = v13;
  v29 = v28;
  v30 = objc_allocWithZone(v28);
  *&v67[v62] = sub_100745C74();
  v62 = OBJC_IVAR____TtC22SubscribePageExtension39LargeGameCenterPlayerCollectionViewCell_displayName;
  if (qword_100921238 != -1)
  {
    swift_once();
  }

  v31 = sub_10000D0FC(v23, qword_1009813E0);
  v61(v19, v31, v23);
  v60(v19, 0, 1, v23);
  v27(v16, v26, v59);
  v32 = objc_allocWithZone(v29);
  v33 = sub_100745C74();
  v34 = v67;
  *&v67[v62] = v33;
  *&v34[OBJC_IVAR____TtC22SubscribePageExtension39LargeGameCenterPlayerCollectionViewCell_artworkView] = [objc_allocWithZone(sub_1007433C4()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v35 = type metadata accessor for LargeGameCenterPlayerCollectionViewCell();
  v68.receiver = v34;
  v68.super_class = v35;
  v36 = objc_msgSendSuper2(&v68, "initWithFrame:", a1, a2, a3, a4);
  v37 = OBJC_IVAR____TtC22SubscribePageExtension39LargeGameCenterPlayerCollectionViewCell_artworkView;
  v38 = *&v36[OBJC_IVAR____TtC22SubscribePageExtension39LargeGameCenterPlayerCollectionViewCell_artworkView];
  sub_10000D198();
  v39 = v36;
  v40 = v38;
  sub_100753E34();
  sub_100743224();

  v41 = *&v36[v37];
  v42 = v63;
  sub_100746E84();
  sub_1007433B4();

  (*(v64 + 8))(v42, v65);
  v43 = qword_100920510;
  v44 = *&v36[v37];
  if (v43 != -1)
  {
    swift_once();
  }

  v45 = sub_10074F0C4();
  v46 = sub_10000D0FC(v45, qword_10097E2F0);
  v47 = *(v45 - 8);
  v48 = v66;
  (*(v47 + 16))(v66, v46, v45);
  (*(v47 + 56))(v48, 0, 1, v45);
  sub_100743374();

  v49 = [v39 contentView];
  [v49 addSubview:*&v36[v37]];

  v50 = OBJC_IVAR____TtC22SubscribePageExtension39LargeGameCenterPlayerCollectionViewCell_alias;
  v51 = *&v39[OBJC_IVAR____TtC22SubscribePageExtension39LargeGameCenterPlayerCollectionViewCell_alias];
  sub_100753F54();

  [*&v39[v50] setNumberOfLines:1];
  v52 = [v39 contentView];
  [v52 addSubview:*&v39[v50]];

  v53 = OBJC_IVAR____TtC22SubscribePageExtension39LargeGameCenterPlayerCollectionViewCell_displayName;
  v54 = *&v39[OBJC_IVAR____TtC22SubscribePageExtension39LargeGameCenterPlayerCollectionViewCell_displayName];
  v55 = sub_100753DF4();
  [v54 setTextColor:v55];

  [*&v39[v53] setNumberOfLines:1];
  v56 = [v39 contentView];

  [v56 addSubview:*&v39[v53]];
  return v39;
}

uint64_t sub_100728BF8()
{
  v1 = v0;
  v2 = sub_100750354();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for LargeGameCenterPlayerCollectionViewCell();
  v24.receiver = v0;
  v24.super_class = v6;
  objc_msgSendSuper2(&v24, "layoutSubviews");
  if (qword_100921EC0 != -1)
  {
    swift_once();
  }

  sub_100253A14(&xmmword_1009831F0, v18);
  v7 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension39LargeGameCenterPlayerCollectionViewCell_artworkView];
  v18[26] = sub_1007433C4();
  v18[27] = &protocol witness table for UIView;
  v18[23] = v7;
  v8 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension39LargeGameCenterPlayerCollectionViewCell_alias];
  v19 = sub_100745C84();
  v20 = &protocol witness table for UILabel;
  v18[28] = v8;
  v9 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension39LargeGameCenterPlayerCollectionViewCell_displayName];
  v22 = v19;
  v23 = &protocol witness table for UILabel;
  v21 = v9;
  v10 = v7;
  v11 = v8;
  v12 = v9;
  [v1 bounds];
  LargeGameCenterPlayerLayout.placeChildren(relativeTo:in:)(v1, v5, v13, v14, v15, v16);
  (*(v3 + 8))(v5, v2);
  return sub_100729128(v18);
}

id sub_100728E08()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LargeGameCenterPlayerCollectionViewCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for LargeGameCenterPlayerCollectionViewCell()
{
  result = qword_100947DB8;
  if (!qword_100947DB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100728F00()
{
  sub_100016898();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_100728FD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  sub_10013ABB0(a1, a2, a3, WitnessTable);
}

void sub_10072903C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  sub_10013AE68(a1, a2, a3, WitnessTable);
}

unint64_t sub_1007290A8(uint64_t a1)
{
  result = sub_1007290D0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1007290D0()
{
  result = qword_100947DC8;
  if (!qword_100947DC8)
  {
    type metadata accessor for LargeGameCenterPlayerCollectionViewCell();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100947DC8);
  }

  return result;
}

void sub_10072917C()
{
  v1 = sub_10074AB44();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v26 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10000C518(&unk_100928A40);
  __chkstk_darwin(v4 - 8);
  v6 = &v22 - v5;
  v7 = OBJC_IVAR____TtC22SubscribePageExtension39LargeGameCenterPlayerCollectionViewCell_itemLayoutContext;
  v8 = sub_1007469A4();
  v9 = *(*(v8 - 8) + 56);
  v27 = v0;
  v9(v0 + v7, 1, 1, v8);
  v10 = OBJC_IVAR____TtC22SubscribePageExtension39LargeGameCenterPlayerCollectionViewCell_preferredArtworkSize;
  if (qword_100921EC0 != -1)
  {
    swift_once();
  }

  *(v27 + v10) = xmmword_1009831F0;
  v23 = OBJC_IVAR____TtC22SubscribePageExtension39LargeGameCenterPlayerCollectionViewCell_alias;
  if (qword_100921228 != -1)
  {
    swift_once();
  }

  v11 = sub_100750534();
  v12 = sub_10000D0FC(v11, qword_1009813B0);
  v13 = *(v11 - 8);
  v22 = *(v13 + 16);
  v22(v6, v12, v11);
  v14 = *(v13 + 56);
  v14(v6, 0, 1, v11);
  v15 = enum case for DirectionalTextAlignment.none(_:);
  v16 = v2 + 104;
  v17 = *(v2 + 104);
  v24 = v16;
  v25 = v1;
  v17(v26, enum case for DirectionalTextAlignment.none(_:), v1);
  v18 = sub_100745C84();
  v19 = objc_allocWithZone(v18);
  *(v27 + v23) = sub_100745C74();
  v23 = OBJC_IVAR____TtC22SubscribePageExtension39LargeGameCenterPlayerCollectionViewCell_displayName;
  if (qword_100921238 != -1)
  {
    swift_once();
  }

  v20 = sub_10000D0FC(v11, qword_1009813E0);
  v22(v6, v20, v11);
  v14(v6, 0, 1, v11);
  v17(v26, v15, v25);
  v21 = objc_allocWithZone(v18);
  *(v27 + v23) = sub_100745C74();
  sub_100754644();
  __break(1u);
}

uint64_t sub_100729558(uint64_t a1, uint64_t a2)
{
  v29 = a1;
  v27 = sub_10000C518(&qword_100947FA8);
  __chkstk_darwin(v27);
  v28 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v24 - v6;
  v8 = sub_100749A94();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v12);
  v15 = &v24 - v14;
  v16 = *(v9 + 16);
  v26 = v2;
  v16(v11, v2, v8, v13);
  v24 = sub_10072E0D8(&unk_100929800, &type metadata accessor for ComponentLayoutOptions);
  sub_100754334();
  v17 = v27;
  sub_10072E0D8(&qword_100947FB0, &type metadata accessor for ComponentLayoutOptions);
  v25 = a2;
  v18 = sub_100753014();
  v19 = *(v17 + 48);
  *v7 = (v18 & 1) == 0;
  if (v18)
  {
    (*(v9 + 32))(&v7[v19], v15, v8);
  }

  else
  {
    (*(v9 + 8))(v15, v8);
    v20 = v25;
    (v16)(&v7[v19], v25, v8);
    (v16)(v11, v20, v8);
    sub_100754374();
  }

  v21 = v28;
  sub_100066578(v7, v28, &qword_100947FA8);
  v22 = *v21;
  (*(v9 + 32))(v29, &v21[*(v17 + 48)], v8);
  return v22;
}

uint64_t sub_10072985C(uint64_t a1, uint64_t a2)
{
  v29 = a1;
  v27 = sub_10000C518(&qword_100947F90);
  __chkstk_darwin(v27);
  v28 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v24 - v6;
  v8 = sub_100744864();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v12);
  v15 = &v24 - v14;
  v16 = *(v9 + 16);
  v26 = v2;
  v16(v11, v2, v8, v13);
  v24 = sub_10072E0D8(&qword_1009295E8, &type metadata accessor for VideoControls);
  sub_100754334();
  v17 = v27;
  sub_10072E0D8(&unk_10093CC80, &type metadata accessor for VideoControls);
  v25 = a2;
  v18 = sub_100753014();
  v19 = *(v17 + 48);
  *v7 = (v18 & 1) == 0;
  if (v18)
  {
    (*(v9 + 32))(&v7[v19], v15, v8);
  }

  else
  {
    (*(v9 + 8))(v15, v8);
    v20 = v25;
    (v16)(&v7[v19], v25, v8);
    (v16)(v11, v20, v8);
    sub_100754374();
  }

  v21 = v28;
  sub_100066578(v7, v28, &qword_100947F90);
  v22 = *v21;
  (*(v9 + 32))(v29, &v21[*(v17 + 48)], v8);
  return v22;
}

void sub_100729B60(void *a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakAssign();
  v2 = swift_unknownObjectWeakLoadStrong();
  if (v2)
  {
    v3 = v2;
    if (Strong)
    {
      type metadata accessor for ProductLockupCollectionViewCell();
      v4 = Strong;
      v5 = sub_100753FC4();

      if (v5)
      {
        goto LABEL_9;
      }
    }

    else
    {
    }

LABEL_8:
    sub_10072C4EC();
    v4 = Strong;
LABEL_9:

    goto LABEL_10;
  }

  if (Strong)
  {
    goto LABEL_8;
  }

LABEL_10:
}

void sub_100729C30(uint64_t a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = *(Strong + qword_10097EE38);

    if (a1)
    {
      sub_10072E0D8(&qword_100947F98, type metadata accessor for ChevronView);
    }

    sub_100749AC4();
  }

  v5 = swift_unknownObjectWeakLoadStrong();
  if (v5)
  {
    v6 = v5;
    v7 = *(v5 + qword_10097EE38);

    v8 = swift_unknownObjectWeakLoadStrong();
    if (v8)
    {
      sub_10072E0D8(&qword_100947F98, type metadata accessor for ChevronView);
    }

    sub_100749AD4();
  }
}

uint64_t sub_100729D98()
{
  if (*(v0 + 64))
  {
    v1 = *(v0 + 64);
  }

  else
  {
    v2 = swift_allocObject();
    swift_weakInit();
    type metadata accessor for ProductScrollObserver();
    v1 = swift_allocObject();
    *(v1 + 16) = 0;
    *(v1 + 24) = 1;
    *(v1 + 48) = 0;
    *(v1 + 56) = 0;
    *(v1 + 32) = sub_10072E0D0;
    *(v1 + 40) = v2;
    *(v0 + 64) = v1;
  }

  return v1;
}

uint64_t sub_100729E4C(uint64_t a1, char a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_10072C074(a1, a2 & 1);
  }

  return result;
}

uint64_t sub_100729ED0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_10072A35C(a4, a1, a2);
  }

  return result;
}

uint64_t sub_100729F5C()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    Strong = swift_weakLoadStrong();

    if (Strong)
    {
      memset(v2, 0, sizeof(v2));
      sub_10074C8F4();

      return sub_10000C8CC(v2, &unk_100923520);
    }
  }

  return result;
}

void sub_100729FF0(uint64_t a1@<X0>, int a2@<W1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v30 = a3;
  v31 = a2;
  v6 = sub_100744864();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v29 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v28 - v10;
  __chkstk_darwin(v12);
  v14 = &v28 - v13;
  __chkstk_darwin(v15);
  v17 = &v28 - v16;
  v18 = sub_10000C518(&qword_1009295E0);
  v19 = __chkstk_darwin(v18 - 8);
  v21 = &v28 - v20;
  v22 = *(v7 + 16);
  v22(a4, a1, v6, v19);
  sub_100744834();
  (v22)(v11, a4, v6);
  sub_10072E0D8(&qword_1009295E8, &type metadata accessor for VideoControls);
  sub_100754334();
  if (sub_100754354())
  {
    v23 = *(v7 + 8);
    v23(v14, v6);
    v23(v17, v6);
    v24 = 1;
  }

  else
  {
    sub_100754364();
    v23 = *(v7 + 8);
    v23(v17, v6);
    (*(v7 + 32))(v21, v14, v6);
    v24 = 0;
  }

  (*(v7 + 56))(v21, v24, 1, v6);
  sub_10000C8CC(v21, &qword_1009295E0);
  if (v31)
  {
    v25 = [v30 traitCollection];
    v26 = [v25 horizontalSizeClass];

    if (v26 == 2)
    {
      v27 = v29;
      sub_100744854();
      sub_10072985C(v11, v27);
      v23(v27, v6);
      v23(v11, v6);
    }
  }
}

uint64_t sub_10072A35C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v81 = a3;
  v87 = a1;
  v3 = sub_10000C518(&qword_100940840);
  __chkstk_darwin(v3 - 8);
  v80 = &v74 - v4;
  v85 = sub_1007421F4();
  v88 = *(v85 - 8);
  __chkstk_darwin(v85);
  v76 = &v74 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v86 = &v74 - v7;
  v8 = sub_10000C518(&unk_100928740);
  __chkstk_darwin(v8 - 8);
  v10 = &v74 - v9;
  v11 = sub_100742284();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v75 = &v74 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v79 = &v74 - v15;
  __chkstk_darwin(v16);
  v82 = &v74 - v17;
  __chkstk_darwin(v18);
  v20 = &v74 - v19;
  v90 = sub_10000C518(&qword_100947FA0);
  v83 = *(v90 - 8);
  __chkstk_darwin(v90);
  v22 = &v74 - v21;
  sub_100744AC4();
  sub_100752764();
  sub_100752D34();
  v78 = sub_1007449E4();

  sub_100752D34();
  v74 = sub_100744A24();

  sub_10000C518(&qword_100944750);
  sub_1007526E4();
  sub_10000C888(v93, v93[3]);
  v77 = sub_100744E84();
  sub_10000C620(v93);
  v23 = sub_1001B58AC();
  v91 = v22;
  v89 = v23;
  sub_100746924();
  swift_getObjectType();
  v24 = v20;
  sub_1007423D4();
  sub_1007423F4();
  v25 = sub_100741454();
  v26 = *(v25 - 8);
  if ((*(v26 + 48))(v10, 1, v25) == 1)
  {
    sub_10000C8CC(v10, &unk_100928740);
    v27 = 0.0;
  }

  else
  {
    sub_100741414();
    v27 = v28;
    (*(v26 + 8))(v10, v25);
  }

  swift_getKeyPath();
  sub_100752974();

  v29 = v93[0];
  v30 = *(v12 + 16);
  v31 = v82;
  v30(v82, v20, v11);
  v32 = (*(v12 + 88))(v31, v11);
  v34 = v84;
  v33 = v85;
  if (v32 != enum case for LegacyAppState.downloading(_:))
  {
    if (v32 != enum case for LegacyAppState.installing(_:))
    {
      goto LABEL_12;
    }

    v39 = v75;
    v30(v75, v31, v11);
    (*(v12 + 96))(v39, v11);
    v40 = v76;
    (*(v88 + 32))(v76, v39, v33);
    v41 = v90;
    if ((v29 & 1) != 0 && (sub_1007421D4() & 1) == 0)
    {
      v94._object = 0x800000010078DB20;
      v94._countAndFlagsBits = 0xD000000000000024;
      v95._countAndFlagsBits = 0;
      v95._object = 0xE000000000000000;
      v54 = sub_1007458B4(v94, v95);
      v55 = v33;
      v43 = v54;
      v44 = v56;
      (*(v88 + 8))(v40, v55);
      goto LABEL_21;
    }

    (*(v88 + 8))(v40, v33);
LABEL_19:
    v42 = *(v12 + 8);
    v42(v24, v11);
    v43 = 0;
    v44 = 0;
    goto LABEL_22;
  }

  v35 = v78;
  v36 = v79;
  v30(v79, v31, v11);
  (*(v12 + 96))(v36, v11);
  (*(v88 + 32))(v86, v36, v33);
  if ((v77 & (v35 < -v27)) != 0)
  {
    *&v37 = COERCE_DOUBLE(sub_100742244());
    if ((v38 & 1) == 0)
    {
      v45 = *&v37;
      v46 = sub_1007421D4();
      v41 = v90;
      if ((v46 & 1) == 0 || (v47 = sub_1007421E4()) == 0 || (v48 = v47, v49 = [v47 completedUnitCount], v48, v50 = v49 <= 0, v33 = v85, !v50))
      {
        if ((v74 < v45) | v29 & 1)
        {
          v51 = sub_100742254();
          v52 = v33;
          v43 = v51;
          v44 = v53;
          (*(v88 + 8))(v86, v52);
LABEL_21:
          v42 = *(v12 + 8);
          v42(v24, v11);
          goto LABEL_22;
        }
      }

      (*(v88 + 8))(v86, v33);
      goto LABEL_19;
    }
  }

  (*(v88 + 8))(v86, v33);
LABEL_12:
  v42 = *(v12 + 8);
  v42(v24, v11);
  v43 = 0;
  v44 = 0;
  v41 = v90;
LABEL_22:
  v42(v31, v11);
  swift_getKeyPath();
  sub_100752974();

  if ((v44 != 0) == LOBYTE(v93[0]) || (Strong = swift_unknownObjectWeakLoadStrong()) == 0)
  {
    v60 = 0;
  }

  else
  {
    v58 = Strong;
    v59 = [Strong traitCollection];

    v60 = sub_100753804();
  }

  __chkstk_darwin(Strong);
  *(&v74 - 32) = v61;
  *(&v74 - 3) = v43;
  *(&v74 - 2) = v44;
  v62 = v91;
  sub_100752954();

  if (v60)
  {
    v63 = sub_1007533D4();
    v64 = v80;
    (*(*(v63 - 8) + 56))(v80, 1, 1, v63);
    sub_1007533B4();

    v65 = sub_1007533A4();
    v66 = swift_allocObject();
    v66[2] = v65;
    v66[3] = &protocol witness table for MainActor;
    v66[4] = v34;
    sub_1000A0F18(0, 0, v64, &unk_1007D8718, v66);
  }

  else
  {
    v67 = swift_unknownObjectWeakLoadStrong();
    if (v67)
    {
      v68 = v67;
      swift_getKeyPath();
      sub_100752974();

      v69 = v93[0];
      v70 = v93[1];
      swift_getKeyPath();
      sub_100752974();

      v71 = v92;
      v72 = sub_10007DC04();
      swift_getObjectType();
      sub_1002748A8(v69, v70, v71, v72, v68);
      swift_unknownObjectRelease();
    }
  }

  return (*(v83 + 8))(v62, v41);
}

uint64_t sub_10072ADE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a4;
  sub_1007533B4();
  v4[4] = sub_1007533A4();
  v6 = sub_100753384();

  return _swift_task_switch(sub_10072AE80, v6, v5);
}

uint64_t sub_10072AE80()
{

  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_10074C854();
  }

  **(v0 + 16) = Strong == 0;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10072AF0C(uint64_t a1, uint64_t a2)
{
  v104 = a2;
  v2 = sub_10000C518(&qword_100934110);
  __chkstk_darwin(v2 - 8);
  v103 = &v83 - v3;
  v4 = sub_10074C3E4();
  v98 = *(v4 - 8);
  __chkstk_darwin(v4);
  v100 = &v83 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10000C518(&unk_100925560);
  v101 = *(v6 - 8);
  v102 = v6;
  __chkstk_darwin(v6);
  v99 = &v83 - v7;
  v8 = sub_10000C518(&unk_1009259B0);
  __chkstk_darwin(v8 - 8);
  v96 = &v83 - v9;
  v95 = sub_10074D734();
  v93 = *(v95 - 8);
  __chkstk_darwin(v95);
  v94 = &v83 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10000C518(&unk_100925540);
  __chkstk_darwin(v11 - 8);
  v97 = &v83 - v12;
  v13 = sub_10000C518(&qword_100923590);
  __chkstk_darwin(v13 - 8);
  v15 = &v83 - v14;
  v16 = sub_10000C518(&unk_100925520);
  __chkstk_darwin(v16 - 8);
  v18 = &v83 - v17;
  v19 = sub_10000C518(&unk_1009259A0);
  __chkstk_darwin(v19 - 8);
  v21 = &v83 - v20;
  v22 = sub_10000C518(&unk_100925530);
  __chkstk_darwin(v22 - 8);
  v108 = &v83 - v23;
  v24 = sub_10000C518(&unk_1009281D0);
  __chkstk_darwin(v24 - 8);
  v26 = &v83 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v29 = &v83 - v28;
  v30 = sub_1007504F4();
  v106 = *(v30 - 8);
  v107 = v30;
  __chkstk_darwin(v30);
  v105 = &v83 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1007461A4();
  sub_10072E0D8(&unk_10092BBC8, &type metadata accessor for ProductTopLockup);
  result = sub_1007468B4();
  v33 = *&v109[0];
  if (*&v109[0])
  {
    v92 = v21;
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v35 = Strong;
      v90 = v15;
      v36 = swift_allocObject();
      swift_weakInit();
      v37 = swift_unknownObjectWeakLoadStrong();
      if (v37)
      {
        v83 = v18;
        v89 = v4;
        v38 = v33;
        v39 = v37;
        v40 = *(v37 + qword_10097FBD0);

        v84 = sub_100746164();
        v42 = v41;
        sub_1001B4CE0();
        v43 = v105;
        sub_100750504();
        v91 = sub_10074C934();
        v86 = v38;
        v44 = v40;
        v85 = sub_100746064();
        v88 = v35;
        v45 = sub_10074C8E4();
        v46 = OBJC_IVAR____TtC22SubscribePageExtension16ProductTitleView_iconTitleView;
        sub_1004F8C48(v84, v42);
        v48 = v106;
        v47 = v107;
        (*(v106 + 16))(v29, v43, v107);
        (*(v48 + 56))(v29, 0, 1, v47);
        v49 = *&v44[v46];
        sub_100115488(v29, v26);
        v50 = OBJC_IVAR____TtCC22SubscribePageExtension16ProductTitleViewP33_7358649AA0F63191E5632A80D277647513IconTitleView_iconAspectRatio;
        swift_beginAccess();
        sub_10072DF18(v26, v49 + v50);
        swift_endAccess();
        [v49 setNeedsLayout];
        sub_10000C8CC(v26, &unk_1009281D0);
        sub_10000C8CC(v29, &unk_1009281D0);
        v51 = &v44[OBJC_IVAR____TtC22SubscribePageExtension16ProductTitleView_iconTapHandler];
        v52 = *&v44[OBJC_IVAR____TtC22SubscribePageExtension16ProductTitleView_iconTapHandler];
        *v51 = sub_10072DF10;
        v51[1] = v36;
        swift_retain_n();
        sub_1000164A8(v52);
        v53 = *&v44[OBJC_IVAR____TtC22SubscribePageExtension16ProductTitleView_iconTapGestureRecognizer];

        [v53 setEnabled:1];

        v54 = OBJC_IVAR____TtC22SubscribePageExtension16ProductTitleView_offerButton;
        LODWORD(v84) = [*&v44[OBJC_IVAR____TtC22SubscribePageExtension16ProductTitleView_offerButton] isHidden];
        *&v44[OBJC_IVAR____TtC22SubscribePageExtension16ProductTitleView_offerButtonMode] = v45;
        if (sub_100749F94())
        {
          v55 = *&v44[v54];
          v56 = 1;
          v57 = v108;
        }

        else
        {
          v58 = sub_10074AFA4();
          v59 = sub_10074AFA4();
          v55 = *&v44[v54];
          v57 = v108;
          if (v58 == v59)
          {
            v56 = 1;
          }

          else
          {
            v56 = v44[OBJC_IVAR____TtC22SubscribePageExtension16ProductTitleView_collisionVisibility + 1];
          }
        }

        v60 = v91;
        [v55 setHidden:v56];
        v61 = sub_100749F84();
        v87 = v36;
        if (v61)
        {
          v62 = enum case for OfferStyle.disabled(_:);
          v63 = sub_100742E24();
          v64 = *(v63 - 8);
          (*(v64 + 104))(v57, v62, v63);
          (*(v64 + 56))(v57, 0, 1, v63);
          if (v60)
          {
            v65 = v83;
LABEL_16:
            v67 = sub_100745E94();
            v68 = v92;
            (*(*(v67 - 8) + 56))(v92, 1, 1, v67);
            v69 = sub_10074F8B4();
            (*(*(v69 - 8) + 56))(v65, 1, 1, v69);
            v70 = sub_1007455E4();
            v71 = v90;
            (*(*(v70 - 8) + 56))(v90, 1, 1, v70);
            memset(v109, 0, 32);
            v72 = v65;
            v73 = sub_100749EA4();
            sub_10000C8CC(v109, &unk_100923520);
            sub_10000C8CC(v71, &qword_100923590);
            sub_10000C8CC(v72, &unk_100925520);
            sub_10000C8CC(v68, &unk_1009259A0);
LABEL_19:
            v75 = v93;
            v76 = v95;
            (*(v93 + 104))(v94, enum case for OfferButtonPresenterViewAlignment.right(_:), v95);
            v77 = 1;
            (*(v75 + 56))(v96, 1, 1, v76);
            sub_10072E0D8(&unk_100925550, &type metadata accessor for OfferButtonPresenterViewAlignment);
            v78 = v97;
            sub_10074A9C4();
            v79 = sub_10000C518(&unk_10092EEA0);
            (*(*(v79 - 8) + 56))(v78, 0, 1, v79);
            v80 = v98;
            v81 = v89;
            (*(v98 + 104))(v100, enum case for OfferButtonSubtitlePosition.left(_:), v89);
            (*(v80 + 56))(v103, 1, 1, v81);
            sub_10072E0D8(&qword_1009332C0, &type metadata accessor for OfferButtonSubtitlePosition);
            v82 = v99;
            sub_10074A9C4();
            sub_10015DE40(v73, v85, 0, v78, v82, v104, 0, 0);
            (*(v101 + 8))(v82, v102);
            sub_10000C8CC(v78, &unk_100925540);
            if ((v84 & 1) == 0)
            {
              v77 = v44[OBJC_IVAR____TtC22SubscribePageExtension16ProductTitleView_collisionVisibility + 1];
            }

            [*&v44[v54] setHidden:v77];

            sub_10000C8CC(v108, &unk_100925530);
            (*(v106 + 8))(v105, v107);
          }
        }

        else
        {
          v65 = v83;
          if (v60)
          {
            sub_100749F04();
            v66 = sub_100742E24();
            (*(*(v66 - 8) + 56))(v57, 0, 1, v66);
            goto LABEL_16;
          }

          v74 = sub_100742E24();
          (*(*(v74 - 8) + 56))(v57, 1, 1, v74);
        }

        v73 = 0;
        goto LABEL_19;
      }
    }
  }

  return result;
}

void sub_10072BCEC()
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    Strong = swift_unknownObjectWeakLoadStrong();

    if (Strong)
    {
      v1 = [Strong collectionView];

      if (v1)
      {
        [v1 _scrollToTopIfPossible:1];
      }
    }
  }
}

void sub_10072BD8C(void *a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = [Strong collectionView];

    if (v4)
    {
      sub_100016C60(0, &qword_100935A20);
      v5 = a1;
      v6 = sub_100753FC4();

      if (v6)
      {
        sub_100729D98();
        sub_10059657C(v5);

        [v5 safeAreaInsets];
        v8 = v7;
        v9 = swift_unknownObjectWeakLoadStrong();
        if (v9)
        {
          v10 = *&v9[OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_backgroundContentContainerMaskView];
          if (v10 && v8 > 0.0)
          {
            v32 = v9;
            v11 = v10;
            [v5 bounds];
            v12 = CGRectGetHeight(v34) * -0.5;
            [*&v32[OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_wordmarkView] frame];
            v13 = CGRectGetMinY(v35) + v12;
            [v5 contentOffset];
            v15 = v14 / v13;
            if (v14 / v13 < 0.0)
            {
              v16 = 0.0;
            }

            else
            {
              v16 = v14 / v13;
            }

            v17 = 1.0 - v16;
            [v5 contentOffset];
            v19 = v18 / v8;
            if (v19 < 0.0)
            {
              v20 = 0.0;
            }

            else
            {
              v20 = v19;
            }

            v21 = 1.0 - v20;
            sub_10000C518(&unk_1009231A0);
            v22 = swift_allocObject();
            *(v22 + 16) = xmmword_1007AC000;
            v23 = objc_opt_self();
            *(v22 + 32) = [v23 blackColor];
            v24 = [v23 blackColor];
            v25 = v24;
            if (v15 >= 1.0)
            {
              v26 = 0.0;
            }

            else
            {
              v26 = v17;
            }

            v27 = [v24 colorWithAlphaComponent:v26];

            *(v22 + 40) = v27;
            v28 = [v23 blackColor];
            v29 = v28;
            if (v19 >= 1.0)
            {
              v30 = 0.0;
            }

            else
            {
              v30 = v21;
            }

            v31 = [v28 colorWithAlphaComponent:v30];

            *(v22 + 48) = v31;
            *&v11[OBJC_IVAR____TtC22SubscribePageExtension12GradientView_colors] = v22;

            sub_100037ED0();

            v9 = v11;
          }
        }
      }
    }
  }
}

uint64_t sub_10072C074(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = sub_10000C518(&qword_100929630);
  __chkstk_darwin(v6 - 8);
  v8 = &v29 - v7;
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    HIDWORD(v29) = sub_10074C874();
    v32 = sub_10074AFA4();
    v31 = sub_10074AFA4();
    if (a2)
    {
      v30 = sub_1005966E0();
    }

    else
    {
      v30 = 0;
    }

    v12 = qword_10097FBD0;
    v13 = sub_100749F94();
    v14 = sub_10074AFA4();
    if (v14 == sub_10074AFA4())
    {
      v15 = [v11 navigationItem];
      v16 = [v15 rightBarButtonItems];

      if (v16)
      {
        sub_100016C60(0, &qword_100925250);
        v17 = sub_1007532A4();
      }

      else
      {
        v17 = 0;
      }

      *&v11[qword_10097FBD8] = v17;
    }

    v18 = a2 ^ 1;
    v19 = *&v11[qword_10097FBD8];
    if (v19)
    {
      if ((v13 & 1) == 0)
      {
        if (!a1)
        {
          v22 = swift_allocObject();
          *(v22 + 16) = v11;
          *(v22 + 24) = v19;

          v28 = v11;
          v19 = sub_10072DF08;
LABEL_21:
          v23 = *&v11[v12];
          v24 = v30;
          sub_1004F83C0(a1, v30, v18 & 1, v19, v22);

          v25 = swift_unknownObjectWeakLoadStrong();
          if (v25)
          {
            v26 = v25;
            sub_10074C954();
            if (swift_weakLoadStrong())
            {
              sub_10074C8C4();
            }

            sub_100274188(v32 == v31, v24, v18 & 1, (v29 & 0x100000000) == 0, v8);

            sub_1000164A8(v19);

            return sub_10000C8CC(v8, &qword_100929630);
          }

          else
          {
            v27 = v32 != v31;
            sub_1000164A8(v19);

            *(v3 + 48) = v27;
          }

          return result;
        }

        if (a1 == 1)
        {
          v20 = [v11 navigationItem];
          sub_100016C60(0, &qword_100925250);
          isa = sub_100753294().super.isa;
          [v20 setRightBarButtonItems:isa animated:0];
        }
      }

      v19 = 0;
    }

    v22 = 0;
    goto LABEL_21;
  }
}

void sub_10072C454(void *a1)
{
  v1 = [a1 navigationItem];
  sub_100016C60(0, &qword_100925250);
  isa = sub_100753294().super.isa;
  [v1 setRightBarButtonItems:isa animated:0];
}

void sub_10072C4EC()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v0 = swift_unknownObjectWeakLoadStrong();
  if (v0)
  {
    v1 = v0;
    v2 = [v0 collectionView];

    if (v2)
    {
      v3 = *&Strong[OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_offerButton];
      v4 = *&Strong[OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_downloadProgressLabel];
      if (v4)
      {
        v5 = v3;
        v6 = v4;
        if (([v6 isHidden] & 1) == 0)
        {
          goto LABEL_12;
        }
      }

      else
      {
        v7 = v3;
      }

      v6 = *&Strong[OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_offerSubtitleLabel];
LABEL_12:
      v8 = v3;
      v9 = v6;
      if ([v8 isHidden])
      {
        v10 = [v9 isHidden];

        if ((v10 & 1) == 0)
        {

          v11 = v9;
          goto LABEL_20;
        }
      }

      else
      {
      }

      v11 = v9;
      if ([v11 isHidden] || (v55.receiver = v8, v55.super_class = type metadata accessor for OfferButton(), objc_msgSendSuper2(&v55, "frame"), MaxY = CGRectGetMaxY(v57), objc_msgSend(v11, "frame"), MaxY >= CGRectGetMaxY(v58)))
      {

        v11 = v8;
      }

      else
      {
      }

LABEL_20:
      v13 = v11;
      [v13 frame];
      v15 = v14;
      v17 = v16;
      v19 = v18;
      v21 = v20;
      v22 = [v13 superview];

      [v2 convertRect:v22 fromView:{v15, v17, v19, v21}];
      v24 = v23;
      v26 = v25;
      v28 = v27;
      v30 = v29;

      v59.origin.x = v24;
      v59.origin.y = v26;
      v59.size.width = v28;
      v59.size.height = v30;
      MinY = CGRectGetMinY(v59);
      v32 = swift_unknownObjectWeakLoadStrong();
      if (!v32)
      {
        goto LABEL_24;
      }

      v33 = v32;
      v34 = [v32 view];
      if (v34)
      {
        v35 = v34;
        type metadata accessor for InsetCollectionViewControllerContentView();
        v36 = swift_dynamicCastClass();
        if (v36)
        {
          v37 = v36;

          v38 = *(v37 + OBJC_IVAR____TtC22SubscribePageExtensionP33_D5EB93F8F29FA420E99B1898AD0B2EE640InsetCollectionViewControllerContentView_insetLayoutMarginsFromTopSafeAreaInset);
          if (v38)
          {
LABEL_28:
            v52 = sub_100729D98();
            *(v52 + 16) = MinY;
            *(v52 + 24) = 0;
            v53 = *(v52 + 32);
            if (v53)
            {
              v53(*(v52 + 48), 0, *(v52 + 56));
            }

            return;
          }

LABEL_24:
          v39 = swift_unknownObjectWeakLoadStrong();
          v40 = 0.0;
          if (v39)
          {
            v41 = v39;
            v42 = [v39 navigationController];

            if (v42)
            {
              v43 = [v42 navigationBar];

              [v43 frame];
              v45 = v44;
              v47 = v46;
              v49 = v48;
              v51 = v50;

              v60.origin.x = v45;
              v60.origin.y = v47;
              v60.size.width = v49;
              v60.size.height = v51;
              v40 = CGRectGetMaxY(v60);
            }
          }

          MinY = MinY - v40;
          goto LABEL_28;
        }
      }

      __break(1u);
      return;
    }
  }
}

uint64_t sub_10072C8B8()
{
  swift_weakDestroy();
  swift_unknownObjectWeakDestroy();
  swift_unknownObjectWeakDestroy();

  swift_unknownObjectWeakDestroy();

  return swift_deallocClassInstance();
}

void sub_10072C954(void *a1)
{
  [a1 adjustedContentInset];
  v4 = v3;
  [a1 contentOffset];
  *(v1 + OBJC_IVAR____TtC22SubscribePageExtension11ChevronView_shouldAnimate) = v4 + v5 <= 0.1;

  sub_10061EAB0();
}

uint64_t sub_10072C9D4()
{
  swift_weakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  *(v0 + 48) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + 64) = 0;
  *(v0 + 72) = 0;
  swift_weakAssign();
  swift_unknownObjectWeakAssign();
  sub_10074C444();
  swift_allocObject();
  *(v0 + 40) = sub_10074C434();
  return v0;
}

void sub_10072CA88(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_100742284();
  v116 = *(v8 - 8);
  __chkstk_darwin(v8);
  v109 = &ObjectType - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v111 = &ObjectType - v11;
  v12 = sub_10000C518(&qword_100929630);
  __chkstk_darwin(v12 - 8);
  v115 = &ObjectType - v13;
  v14 = sub_1007469A4();
  v110 = *(v14 - 8);
  v15 = *(v110 + 64);
  __chkstk_darwin(v14);
  v16 = sub_10074ED34();
  v113 = *(v16 - 8);
  v114 = v16;
  __chkstk_darwin(v16);
  v18 = &ObjectType - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ProductLockupCollectionViewCell();
  v19 = swift_dynamicCastClass();
  if (v19)
  {
    v20 = v19;
    v108 = v8;
    v112 = a3;
    sub_1007461A4();
    v117 = a2;
    sub_10072E0D8(&unk_10092BBC8, &type metadata accessor for ProductTopLockup);
    v21 = a1;
    sub_1007468B4();
    v22 = v121;
    if (!v121)
    {

      return;
    }

    if (!swift_weakLoadStrong())
    {

LABEL_54:

      return;
    }

    v105 = v21;
    v104 = v20;
    sub_100729B60(v20);
    sub_10000C518(&unk_100925780);
    v103 = v14;
    sub_1007526E4();
    swift_getObjectType();
    v107 = v22;
    sub_100746174();
    v23 = sub_1007424E4();
    v25 = v24;
    swift_unknownObjectRelease();
    (*(v113 + 8))(v18, v114);
    v26 = v117;
    sub_10072A35C(v117, v23, v25);
    ObjectType = swift_getObjectType();
    sub_1007423C4();
    v27 = swift_allocObject();
    swift_weakInit();
    v28 = v110;
    v29 = v103;
    (*(v110 + 16))(&ObjectType - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v26, v103);
    v30 = (*(v28 + 80) + 24) & ~*(v28 + 80);
    v31 = swift_allocObject();
    *(v31 + 16) = v27;
    (*(v28 + 32))(v31 + v30, &ObjectType - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v29);
    *(v31 + ((v15 + v30 + 7) & 0xFFFFFFFFFFFFFFF8)) = v112;
    v32 = v104;

    v110 = v23;
    sub_1007423A4();

    if ((*(v4 + 48) & 1) == 0)
    {
LABEL_28:
      v55 = *&v32[OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_disclosureArrow];
      Strong = swift_unknownObjectWeakLoadStrong();
      swift_unknownObjectWeakAssign();
      v57 = v55;
      sub_100729C30(Strong);

      v58 = swift_allocObject();
      swift_weakInit();
      v59 = &v32[OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_developerTapHandler];
      v60 = *&v32[OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_developerTapHandler];
      *v59 = sub_10072D8D4;
      v59[1] = v58;

      sub_1000164A8(v60);

      sub_10072AF0C(v117, v112);
      v61 = swift_unknownObjectWeakLoadStrong();
      if (v61)
      {
        v62 = v61;
        v63 = *(v61 + qword_10097FBD0);

        v64 = *(*&v63[OBJC_IVAR____TtC22SubscribePageExtension16ProductTitleView_iconTitleView] + OBJC_IVAR____TtCC22SubscribePageExtension16ProductTitleViewP33_7358649AA0F63191E5632A80D277647513IconTitleView_iconView);
      }

      else
      {
        v64 = 0;
      }

      sub_10074C414();

      v65 = *&v32[OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_iconView];
      sub_10074C414();

      sub_10074C424();
      v66 = OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_uberView;
      v67 = *&v32[OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_uberView];
      if (!v67)
      {
        goto LABEL_52;
      }

      v68 = swift_unknownObjectWeakLoadStrong();
      v69 = v67;
      if (v68)
      {
        v70 = [v68 navigationItem];
      }

      else
      {
        v70 = 0;
      }

      v71 = OBJC_IVAR____TtC22SubscribePageExtension14UberHeaderView_navigationItem;
      v72 = *&v69[OBJC_IVAR____TtC22SubscribePageExtension14UberHeaderView_navigationItem];
      if (v72)
      {
        v73 = v72;
        v74 = sub_100753064();
        [v73 removeObserver:v69 forKeyPath:v74 context:&unk_100942900];

        v75 = *&v69[v71];
      }

      else
      {
        v75 = 0;
      }

      *&v69[v71] = v70;
      v76 = v70;

      v77 = *&v69[v71];
      if (v77)
      {
        v78 = v77;
        v79 = sub_100753064();
        [v78 addObserver:v69 forKeyPath:v79 options:0 context:&unk_100942900];

        v80 = *&v69[v71];
        if (v80)
        {
          v80 = [v80 title];
          if (v80)
          {
            v81 = v80;
            v82 = sub_100753094();
            v84 = v83;

            v85 = v84;
            v80 = v82;
          }

          else
          {
            v85 = 0;
          }

          goto LABEL_44;
        }
      }

      else
      {
        v80 = 0;
      }

      v85 = 0;
LABEL_44:
      sub_100640708(v80, v85);

      v86 = *&v32[v66];
      if (v86)
      {
        v87 = swift_unknownObjectWeakLoadStrong();
        if (v87)
        {
          v88 = v87;
          v89 = *(v87 + qword_10097FBE0);
          v90 = v86;
        }

        else
        {
          v91 = v86;
          v89 = 0;
        }

        swift_unknownObjectWeakAssign();
        sub_100641D04();

        v92 = *&v32[v66];
        if (v92)
        {
          v93 = *(*(*(v92 + OBJC_IVAR____TtC22SubscribePageExtension14UberHeaderView_contentView) + OBJC_IVAR____TtC22SubscribePageExtension9MediaView_contentContainer) + OBJC_IVAR____TtC22SubscribePageExtensionP33_3BFA609B93F5C4376389C1E6266A901920UberContentContainer_contents);
          if (v93)
          {
            type metadata accessor for VideoView();
            v94 = swift_dynamicCastClass();
            if (v94)
            {
              v95 = v94;
              v96 = swift_allocObject();
              v97 = v105;
              *(v96 + 16) = v105;
              v98 = (v95 + qword_100982258);
              v99 = *(v95 + qword_100982258);
              *v98 = sub_10072D914;
              v98[1] = v96;
              v100 = v97;
              v101 = v93;

              sub_1000164A8(v99);
              sub_10051F2AC();

              swift_unknownObjectRelease();

              goto LABEL_54;
            }
          }

          swift_unknownObjectRelease();

LABEL_53:

          goto LABEL_54;
        }
      }

LABEL_52:

      swift_unknownObjectRelease();
      goto LABEL_53;
    }

    *(v4 + 48) = 0;
    v33 = sub_10074C874();
    v34 = v115;
    sub_100746174();
    v35 = v113;
    v36 = v34;
    v37 = v114;
    (*(v113 + 56))(v36, 0, 1, v114);
    if (swift_weakLoadStrong())
    {
      sub_10074C8C4();
    }

    v38 = (*(v35 + 48))(v115, 1, v37);
    v39 = v108;
    if (v38 == 1 || !*&v32[OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_appStateMachine])
    {
      (*(v116 + 104))(v111, enum case for LegacyAppState.unknown(_:), v108);
    }

    else
    {
      swift_getObjectType();
      swift_unknownObjectRetain();
      sub_1007423D4();
      swift_unknownObjectRelease();
    }

    v40 = OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_offerButton;
    [*(*&v32[OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_offerButton] + OBJC_IVAR____TtC22SubscribePageExtension11OfferButton_imageView) setContentMode:1];
    if (v33)
    {
      v41 = 0;
    }

    else
    {
      v41 = *&v32[v40];
      v42 = v41;
    }

    v43 = *&v32[OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_downloadProgressLabel];
    v44 = v109;
    if (v43 && v32[OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_isDownloadProgressVisible] == 1)
    {
      goto LABEL_24;
    }

    (*(v116 + 16))(v109, v111, v39);
    v45 = OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_offerSubtitleLabel;
    v46 = [*&v32[OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_offerSubtitleLabel] text];
    if (v46)
    {
      v47 = v46;
      sub_100753094();
      v49 = v48;
    }

    else
    {
      v49 = 0;
    }

    v50 = sub_100742274();
    (*(v116 + 8))(v44, v39);
    if (v50)
    {
      if (v49)
      {

        v43 = *&v32[v45];
LABEL_24:
        v51 = v43;
LABEL_27:
        v118 = *&v32[OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_iconView];
        v119 = v41;
        v120 = v43;
        v52 = v118;
        [v52 setAlpha:1.0];
        [v52 setHidden:0];

        v53 = v41;
        [v53 setAlpha:1.0];
        [v53 setHidden:0];

        v54 = v43;
        sub_10000C518(&qword_100941700);
        swift_arrayDestroy();
        [v54 setAlpha:1.0];
        [v54 setHidden:0];

        [v32 setNeedsLayout];
        (*(v116 + 8))(v111, v108);
        sub_10000C8CC(v115, &qword_100929630);
        goto LABEL_28;
      }
    }

    else
    {
    }

    v43 = 0;
    goto LABEL_27;
  }
}

uint64_t sub_10072D714()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10072D74C()
{
  v1 = sub_1007469A4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_10072D824(uint64_t a1, uint64_t a2)
{
  v5 = *(sub_1007469A4() - 8);
  v6 = *(v2 + 16);
  v7 = v2 + ((*(v5 + 80) + 24) & ~*(v5 + 80));

  return sub_100729ED0(a1, a2, v6, v7);
}

uint64_t sub_10072D8DC()
{

  return _swift_deallocObject(v0, 24, 7);
}

void sub_10072D91C(uint64_t a1, uint64_t a2)
{
  v3 = sub_10000C518(&unk_100925370);
  __chkstk_darwin(v3 - 8);
  v35 = &v32 - v4;
  v34 = sub_10000C518(&qword_100947FA0);
  v5 = *(v34 - 8);
  __chkstk_darwin(v34);
  v33 = &v32 - v6;
  v7 = sub_10074E984();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v48 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v47 = &v32 - v11;
  v46 = sub_10000C518(&unk_10092E450);
  v12 = *(v46 - 8);
  __chkstk_darwin(v46);
  v45 = &v32 - v13;
  v14 = sub_1007469A4();
  v16 = __chkstk_darwin(v14);
  v18 = &v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(a2 + 16);
  if (v19)
  {
    v21 = *(v15 + 16);
    v20 = v15 + 16;
    v22 = a2 + ((*(v20 + 64) + 32) & ~*(v20 + 64));
    v41 = *(v20 + 56);
    v42 = v21;
    v40 = (v12 + 8);
    v39 = enum case for Shelf.ContentType.productTopLockup(_:);
    v37 = (v8 + 8);
    v38 = (v8 + 104);
    v43 = v20;
    v36 = (v20 - 8);
    v32 = (v5 + 8);
    v44 = v14;
    v21(v18, v22, v14, v16);
    while (1)
    {
      swift_getKeyPath();
      v28 = v45;
      sub_100746914();

      swift_getKeyPath();
      v29 = v46;
      sub_1007525B4();

      (*v40)(v28, v29);
      (*v38)(v48, v39, v7);
      sub_10072E0D8(&qword_100926DD0, &type metadata accessor for Shelf.ContentType);
      sub_100753274();
      sub_100753274();
      if (v51 == v49 && v52 == v50)
      {
        break;
      }

      v30 = sub_100754754();
      v31 = *v37;
      (*v37)(v48, v7);
      v31(v47, v7);

      if (v30)
      {
        goto LABEL_4;
      }

LABEL_5:
      v26 = v44;
      (*v36)(v18, v44);
      v22 += v41;
      if (!--v19)
      {
        return;
      }

      v42(v18, v22, v26, v27);
    }

    v23 = *v37;
    (*v37)(v48, v7);
    v23(v47, v7);

LABEL_4:
    sub_1007468F4();
    v24 = v33;
    sub_100752994();
    sub_1001B58AC();
    v25 = v34;
    sub_100752954();
    (*v32)(v24, v25);
    goto LABEL_5;
  }
}

uint64_t sub_10072DEC8()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10072DF18(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C518(&unk_1009281D0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_10072DF88(uint64_t a1)
{
  v3 = *(v1 + 16);
  v5 = *(v1 + 24);
  v4 = *(v1 + 32);
  *a1 = v3;

  *(a1 + 8) = v5;
  *(a1 + 16) = v4;
  return result;
}

uint64_t sub_10072DFDC()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10072E01C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1000A27FC;

  return sub_10072ADE8(a1, v4, v5, v6);
}

uint64_t sub_10072E0D8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10072E138()
{
  v0 = sub_100752E24();
  sub_100039C50(v0, qword_1009832D0);
  sub_10000D0FC(v0, qword_1009832D0);
  return sub_100752E14();
}

uint64_t sub_10072E280(uint64_t a1, uint64_t *a2)
{
  v3 = sub_100752E24();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100752E44();
  sub_100039C50(v7, a2);
  sub_10000D0FC(v7, a2);
  if (qword_100921EC8 != -1)
  {
    swift_once();
  }

  v8 = sub_10000D0FC(v3, qword_1009832D0);
  (*(v4 + 16))(v6, v8, v3);
  return sub_100752E34();
}

uint64_t sub_10072E3D0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_10000C518(&unk_100925370);
  __chkstk_darwin(v6 - 8);
  v46 = &v42 - v7;
  v8 = sub_10000C518(&qword_100933260);
  v47 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v42 - v9;
  v11 = sub_10000C518(&qword_100933090);
  __chkstk_darwin(v11 - 8);
  v48 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v42 - v14;
  v16 = sub_10000C518(&qword_10092ADB0);
  __chkstk_darwin(v16 - 8);
  v18 = &v42 - v17;
  v19 = sub_100742BB4();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = &v42 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10038B0BC(&qword_100934548, &type metadata accessor for Annotation);
  sub_1007468B4();
  if ((*(v20 + 48))(v18, 1, v19) == 1)
  {
    return sub_10000C8CC(v18, &qword_10092ADB0);
  }

  v43 = v8;
  v44 = a1;
  v45 = a2;
  (*(v20 + 32))(v22, v18, v19);
  *&v3[OBJC_IVAR____TtC22SubscribePageExtension28AnnotationCollectionViewCell_detailItems] = sub_100742B84();

  v24 = sub_100742B94();
  v25 = &v3[OBJC_IVAR____TtC22SubscribePageExtension28AnnotationCollectionViewCell_titleText];
  *v25 = v24;
  v25[1] = v26;

  v27 = *&v3[OBJC_IVAR____TtC22SubscribePageExtension28AnnotationCollectionViewCell_titleLabel];

  v28 = sub_100753064();

  [v27 setText:v28];

  [v3 setNeedsLayout];
  v29 = sub_100742BA4();
  v30 = &v3[OBJC_IVAR____TtC22SubscribePageExtension28AnnotationCollectionViewCell_explicitSummary];
  *v30 = v29;
  v30[1] = v31;

  sub_10027A9AC();
  v32 = sub_100742B64();
  if (v32)
  {
    v49 = v32;
    sub_10074ECD4();
    sub_100752764();
    sub_10038B0BC(&qword_100928558, &type metadata accessor for Action);
    sub_100752684();

    v33 = 0;
  }

  else
  {
    v33 = 1;
  }

  v34 = sub_10000C518(&unk_100933080);
  v35 = 1;
  (*(*(v34 - 8) + 56))(v15, v33, 1, v34);
  v36 = OBJC_IVAR____TtC22SubscribePageExtension28AnnotationCollectionViewCell_linkAction;
  swift_beginAccess();
  sub_10027C710(v15, &v3[v36]);
  swift_endAccess();
  sub_10027AB34();
  sub_10000C8CC(v15, &qword_100933090);
  sub_1007468F4();
  sub_100752994();
  sub_100349280();
  v37 = v43;
  sub_100752964();
  (*(v47 + 8))(v10, v37);
  if ((v49 & 1) == 0)
  {
    v35 = sub_100742B74();
  }

  sub_10027C5AC();
  v3[OBJC_IVAR____TtC22SubscribePageExtension28AnnotationCollectionViewCell_isExpanded] = v35 & 1;
  sub_10027A700();
  v38 = sub_100742B64();
  v39 = v48;
  if (v38)
  {
    v49 = v38;
    sub_10074ECD4();
    sub_100752764();
    sub_10038B0BC(&qword_100928558, &type metadata accessor for Action);
    sub_100752684();

    v40 = 0;
  }

  else
  {
    v40 = 1;
  }

  v41 = sub_10000C518(&unk_100933080);
  (*(*(v41 - 8) + 56))(v39, v40, 1, v41);
  swift_beginAccess();
  sub_10027C710(v39, &v3[v36]);
  swift_endAccess();
  sub_10027AB34();
  sub_10000C8CC(v39, &qword_100933090);
  return (*(v20 + 8))(v22, v19);
}

uint64_t sub_10072EAB0@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC22SubscribePageExtension28AnnotationCollectionViewCell_itemLayoutContext;
  swift_beginAccess();
  return sub_100020514(v1 + v3, a1);
}

uint64_t sub_10072EB0C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC22SubscribePageExtension28AnnotationCollectionViewCell_itemLayoutContext;
  swift_beginAccess();
  sub_1000204A4(a1, v1 + v3);
  return swift_endAccess();
}

char *sub_10072EBDC(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC22SubscribePageExtension24ProductReviewActionsCell_productReviewActionsView;
  type metadata accessor for ProductReviewActionsView();
  *&v4[v9] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v10 = OBJC_IVAR____TtC22SubscribePageExtension24ProductReviewActionsCell_separatorView;
  type metadata accessor for SeparatorView();
  *&v4[v10] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v20.receiver = v4;
  v20.super_class = type metadata accessor for ProductReviewActionsCell();
  v11 = objc_msgSendSuper2(&v20, "initWithFrame:", a1, a2, a3, a4);
  v12 = [v11 contentView];
  [v12 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

  v13 = OBJC_IVAR____TtC22SubscribePageExtension24ProductReviewActionsCell_separatorView;
  v14 = *&v11[OBJC_IVAR____TtC22SubscribePageExtension24ProductReviewActionsCell_separatorView];
  sub_100016C60(0, &qword_100923500);
  v15 = v14;
  v16 = sub_100753DB4();
  [v15 setBackgroundColor:v16];

  [*&v11[v13] setHidden:1];
  v17 = [v11 contentView];
  [v17 addSubview:*&v11[v13]];

  v18 = [v11 contentView];
  [v18 addSubview:*&v11[OBJC_IVAR____TtC22SubscribePageExtension24ProductReviewActionsCell_productReviewActionsView]];

  return v11;
}

id sub_10072EE90()
{
  v1 = v0;
  v13.receiver = v0;
  v13.super_class = type metadata accessor for ProductReviewActionsCell();
  objc_msgSendSuper2(&v13, "layoutSubviews");
  v2 = [v0 contentView];
  sub_100016C60(0, &qword_100922300);
  sub_1007477B4();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  [*&v1[OBJC_IVAR____TtC22SubscribePageExtension24ProductReviewActionsCell_productReviewActionsView] setFrame:{v4, v6, v8, v10}];
  v14.origin.x = v4;
  v14.origin.y = v6;
  v14.size.width = v8;
  v14.size.height = v10;
  CGRectGetMinX(v14);
  v15.origin.x = v4;
  v15.origin.y = v6;
  v15.size.width = v8;
  v15.size.height = v10;
  CGRectGetMinY(v15);
  v16.origin.x = v4;
  v16.origin.y = v6;
  v16.size.width = v8;
  v16.size.height = v10;
  CGRectGetWidth(v16);
  if (qword_100920D68 != -1)
  {
    swift_once();
  }

  v11 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension24ProductReviewActionsCell_separatorView];
  sub_100753B24();
  return [v11 setFrame:?];
}

id sub_10072F088()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ProductReviewActionsCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10072F12C@<X0>(uint64_t a1@<X8>)
{
  v52 = sub_1007417F4();
  v2 = *(v52 - 8);
  __chkstk_darwin(v52);
  v4 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_10074E984();
  v5 = *(v51 - 8);
  __chkstk_darwin(v51);
  v41 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v40 = &v33 - v8;
  __chkstk_darwin(v9);
  v11 = &v33 - v10;
  __chkstk_darwin(v12);
  v50 = &v33 - v13;
  v14 = sub_100748BA4();
  v42 = sub_100731F88(&unk_100935940, &type metadata accessor for GenericPagePresenter);
  v43 = v14;
  result = sub_1007450A4();
  if (result < 0)
  {
LABEL_26:
    __break(1u);
  }

  else
  {
    if (result)
    {
      v47 = v11;
      v36 = a1;
      v16 = 0;
      v46 = enum case for Shelf.ContentType.privacyType(_:);
      v45 = (v5 + 104);
      v48 = (v5 + 8);
      v39 = (v5 + 32);
      v38 = (v5 + 88);
      v37 = enum case for Shelf.ContentType.personalizationFeedbackContainer(_:);
      v34 = enum case for Shelf.ContentType.informationRibbon(_:);
      v35 = v2;
      v17 = (v2 + 8);
      v49 = result;
      v44 = v4;
      while (1)
      {
        if (sub_100747484())
        {
          sub_100747494();
          v18 = v47;
          (*v45)(v47, v46, v51);
          sub_100731F88(&qword_100926DD0, &type metadata accessor for Shelf.ContentType);
          sub_100753274();
          sub_100753274();
          if (v53 == v55 && v54 == v56)
          {
            v19 = 1;
          }

          else
          {
            v19 = sub_100754754();
          }

          v20 = *v48;
          v21 = v18;
          v22 = v51;
          (*v48)(v21, v51);
          v20(v50, v22);

          v23 = v44;
          if ((v19 & 1) != 0 && v16 < sub_1007450A4() && (sub_100745054() & 1) == 0)
          {
            v33 = sub_100745094();
            v24 = v40;
            sub_100745084();
            v25 = v41;
            v26 = v24;
            v27 = v51;
            (*v39)(v41, v26, v51);
            v28 = (*v38)(v25, v27);
            v29 = 1;
            if (v28 == v37 || v28 == v34)
            {
              break;
            }

            result = (v20)(v41, v51);
            if (v33 < 0)
            {
              __break(1u);
              goto LABEL_26;
            }

            v29 = v33;
            if (v33)
            {
              break;
            }
          }
        }

LABEL_4:
        if (++v16 == v49)
        {
          v32 = 1;
          a1 = v36;
          v2 = v35;
          return (*(v2 + 56))(a1, v32, 1, v52);
        }
      }

      v30 = 0;
      while (1)
      {
        sub_100741764();
        sub_1007474A4();
        sub_10000C518(&qword_1009242A0);
        sub_100743804();
        if (swift_dynamicCast())
        {
          v31 = sub_1007437B4();

          if (v31)
          {
            break;
          }
        }

        (*v17)(v23, v52);
        if (v29 == ++v30)
        {
          goto LABEL_4;
        }
      }

      v2 = v35;
      a1 = v36;
      (*(v35 + 32))(v36, v23, v52);
      v32 = 0;
    }

    else
    {
      v32 = 1;
    }

    return (*(v2 + 56))(a1, v32, 1, v52);
  }

  return result;
}

uint64_t sub_10072F714(uint64_t a1, uint64_t a2, void (*a3)(void, __n128), unint64_t *a4, void (*a5)(uint64_t), uint64_t a6)
{
  v25[0] = a2;
  v25[1] = a6;
  v10 = sub_10000C518(&unk_100933370);
  __chkstk_darwin(v10 - 8);
  v12 = v25 - v11;
  v13 = sub_10074E984();
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  v17 = v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  a3(0, v15);
  sub_100731F88(a4, a5);
  v18 = a1;
  sub_100745084();
  v19 = sub_10034E47C();
  v21 = v20;
  (*(v14 + 8))(v17, v13);
  if (v19)
  {
    if (v18 < 1)
    {
      v22 = 1;
    }

    else
    {
      sub_100745084();
      v22 = 0;
    }

    (*(v14 + 56))(v12, v22, 1, v13);
    v23 = (*(v21 + 96))(v12, v25[0], v19, v21);
    sub_10000C8CC(v12, &unk_100933370);
  }

  else
  {
    v23 = 0;
  }

  return v23 & 1;
}

uint64_t sub_10072F940(uint64_t a1, void *a2, void (*a3)(void, __n128), unint64_t *a4, void (*a5)(uint64_t))
{
  v68 = a2;
  v9 = sub_10000C518(&qword_10093A8D0);
  __chkstk_darwin(v9);
  v70 = &v61 - v10;
  v11 = sub_1007457B4();
  v69 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = &v61 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  __chkstk_darwin(v15);
  __chkstk_darwin(v16);
  v72 = &v61 - v17;
  v21 = __chkstk_darwin(v18);
  v71 = &v61 - v22;
  if (a1 >= 1)
  {
    v65 = v20;
    v66 = v19;
    a3(0, v21);
    sub_100731F88(a4, a5);
    if (sub_1007450A4() >= 1)
    {
      v23 = v71;
      sub_100745074();
      v24 = v72;
      sub_100745074();
      v25 = v23;
      v26 = *(v9 + 48);
      v28 = v69;
      v27 = v70;
      v29 = v69[2];
      v29(v70, v25, v11);
      v67 = v26;
      v29((v27 + v26), v24, v11);
      v30 = v28[11];
      v31 = v30(v27, v11);
      if (v31 == enum case for ShelfBackground.color(_:))
      {
        v32 = v31;
        v33 = v66;
        v29(v66, v27, v11);
        v62 = v28[12];
        v62(v33, v11);
        v63 = *v33;
        v61 = sub_10000C518(&unk_100930940);
        v64 = *(v61 + 48);
        if (v30(v27 + v67, v11) == v32)
        {
          v34 = v65;
          v29(v65, &v70[v67], v11);
          v62(v34, v11);
          v35 = *v34;
          v62 = *(v61 + 48);
          v36 = v68;
          v37 = [v68 traitCollection];
          v38 = v63;
          v39 = [v63 resolvedColorWithTraitCollection:v37];

          v40 = [v36 traitCollection];
          v41 = [v35 resolvedColorWithTraitCollection:v40];

          sub_10000D198();
          LOBYTE(v40) = sub_100753FC4();

          v42 = v67;
          if ((v40 & 1) == 0)
          {
            v57 = v69[1];
            v57(v72, v11);
            v57(v71, v11);
            v58 = sub_100748E34();
            v59 = *(*(v58 - 8) + 8);
            v59(v62 + v34, v58);
            v59(v66 + v64, v58);
            v60 = v70;
            v57(&v70[v42], v11);
            v57(v60, v11);
            return 2;
          }

          v43 = sub_100748E34();
          v44 = *(*(v43 - 8) + 8);
          v44(v62 + v34, v43);
          v44(v66 + v64, v43);
        }

        else
        {
          v45 = sub_100748E34();
          (*(*(v45 - 8) + 8))(v33 + v64, v45);
        }

        v28 = v69;
        v27 = v70;
      }

      v46 = enum case for ShelfBackground.none(_:);
      v47 = v28[13];
      v47(v13, enum case for ShelfBackground.none(_:), v11);
      v48 = sub_100731F88(&qword_100940610, &type metadata accessor for ShelfBackground);
      v49 = sub_100753014();
      v50 = v28[1];
      v50(v13, v11);
      if ((v49 & 1) == 0)
      {
        v47(v13, v46, v11);
        v51 = sub_1007457A4();
        v50(v13, v11);
        if (v51)
        {
          v50(v72, v11);
          v50(v71, v11);
LABEL_14:
          v50((v27 + v67), v11);
          v50(v27, v11);
          return 2;
        }
      }

      v69 = v48;
      v47(v13, v46, v11);
      v52 = v71;
      v53 = sub_1007457A4();
      v50(v13, v11);
      if (v53)
      {
        v47(v13, v46, v11);
        v54 = v72;
        v55 = sub_100753014();
        v50(v13, v11);
        v50(v54, v11);
        v50(v52, v11);
        if ((v55 & 1) == 0)
        {
          goto LABEL_14;
        }
      }

      else
      {
        v50(v72, v11);
        v50(v52, v11);
      }

      sub_10000C8CC(v27, &qword_10093A8D0);
    }
  }

  return 0;
}

uint64_t sub_1007301AC@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void (*a3)(void, __n128)@<X2>, unint64_t *a4@<X3>, void (*a5)(uint64_t)@<X4>, uint64_t a6@<X5>, void (*a7)(void, __n128)@<X6>, uint64_t a8@<X8>)
{
  v226 = a7;
  v222 = a6;
  v223 = a2;
  v228 = a8;
  v216 = type metadata accessor for TitleHeaderView.Style(0);
  __chkstk_darwin(v216);
  v206 = &v183 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v199 = &v183 - v15;
  v16 = sub_100747144();
  v214 = *(v16 - 8);
  v215 = v16;
  __chkstk_darwin(v16);
  v221 = &v183 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v211 = &v183 - v19;
  v20 = sub_10000C518(&qword_100928A88);
  __chkstk_darwin(v20 - 8);
  v220 = &v183 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v219 = &v183 - v23;
  __chkstk_darwin(v24);
  v210 = &v183 - v25;
  __chkstk_darwin(v26);
  v209 = &v183 - v27;
  v28 = sub_10000C518(&unk_100940600);
  __chkstk_darwin(v28 - 8);
  v205 = &v183 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v204 = &v183 - v31;
  __chkstk_darwin(v32);
  v198 = &v183 - v33;
  __chkstk_darwin(v34);
  v197 = &v183 - v35;
  v36 = type metadata accessor for TitleHeaderView.TextConfiguration(0);
  v212 = *(v36 - 8);
  __chkstk_darwin(v36);
  v203 = &v183 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v38);
  v202 = &v183 - v39;
  __chkstk_darwin(v40);
  v201 = &v183 - v41;
  __chkstk_darwin(v42);
  v218 = (&v183 - v43);
  __chkstk_darwin(v44);
  v196 = &v183 - v45;
  __chkstk_darwin(v46);
  v195 = &v183 - v47;
  __chkstk_darwin(v48);
  v194 = &v183 - v49;
  __chkstk_darwin(v50);
  v208 = (&v183 - v51);
  v52 = sub_10000C518(&unk_100928A90);
  __chkstk_darwin(v52 - 8);
  v185 = &v183 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v54);
  v187 = &v183 - v55;
  __chkstk_darwin(v56);
  v190 = &v183 - v57;
  __chkstk_darwin(v58);
  v193 = &v183 - v59;
  __chkstk_darwin(v60);
  v192 = &v183 - v61;
  __chkstk_darwin(v62);
  v186 = &v183 - v63;
  __chkstk_darwin(v64);
  v189 = &v183 - v65;
  __chkstk_darwin(v66);
  v188 = &v183 - v67;
  __chkstk_darwin(v68);
  v191 = &v183 - v69;
  __chkstk_darwin(v70);
  v217 = &v183 - v71;
  __chkstk_darwin(v72);
  v207 = &v183 - v73;
  v74 = sub_1007457B4();
  v75 = *(v74 - 8);
  __chkstk_darwin(v74);
  v77 = &v183 - ((v76 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = __chkstk_darwin(v78);
  v81 = &v183 - v80;
  v224 = v8;
  a3(0, v79);
  v225 = a4;
  v227 = a5;
  v82 = a5;
  v83 = v222;
  sub_100731F88(a4, v82);
  v84 = sub_100745064();
  v85 = 0;
  if (v84)
  {
    v85 = sub_100745154();
  }

  v229 = v85;
  v213 = v36;
  sub_100745174();
  v87 = v86;
  if (v86)
  {
  }

  v200 = v87;
  sub_100745184();
  v89 = v88;
  if (v88)
  {
  }

  sub_100745074();
  (*(v75 + 104))(v77, enum case for ShelfBackground.interactive(_:), v74);
  v90 = sub_1007457A4();
  v91 = *(v75 + 8);
  v91(v77, v74);
  v91(v81, v74);
  v92 = v223;
  v94 = v225;
  v93 = v226;
  v95 = v227;
  v96 = v83;
  v97 = sub_10072F940(a1, v223, v226, v225, v227);
  v98 = sub_10072F714(a1, v92, v93, v94, v95, v96);
  if (v90)
  {
    sub_10071ED04(v89 != 0, v228);
  }

  v100 = v89;
  v184 = v89;
  if (v97)
  {
    if (v229)
    {

      v101 = sub_10074EB44();

      v102 = v201;
      v103 = v217;
      if (v101)
      {
        sub_1007439D4();

        v104 = 0;
      }

      else
      {
        v104 = 1;
      }
    }

    else
    {
      v104 = 1;
      v102 = v201;
      v103 = v217;
    }

    v109 = sub_1007439C4();
    v110 = *(v109 - 8);
    (*(v110 + 56))(v103, v104, 1, v109);
    v111 = sub_100747134();
    v226 = *(v111 - 1);
    (*(v226 + 7))(v219, 1, 1, v111);
    v227 = v111;
    if (v100)
    {
      v112 = (v110 + 48);
      if (v97 == 1)
      {
        v113 = v192;
        sub_100016B4C(v103, v192, &unk_100928A90);
        if ((*v112)(v113, 1, v109) == 1)
        {
          sub_10000C8CC(v113, &unk_100928A90);
          v114 = 0;
        }

        else
        {
          v114 = sub_100743964();
          (*(v110 + 8))(v113, v109);
        }

        v122 = v213;
        v123 = v204;
        sub_1003AFADC(v114, v218);

        if (qword_100920B30 != -1)
        {
          swift_once();
        }

        v124 = qword_100980048;
      }

      else
      {
        v117 = v193;
        sub_100016B4C(v103, v193, &unk_100928A90);
        if ((*v112)(v117, 1, v109) == 1)
        {
          sub_10000C8CC(v117, &unk_100928A90);
          v118 = 0;
        }

        else
        {
          v118 = sub_100743964();
          (*(v110 + 8))(v117, v109);
        }

        v122 = v213;
        v123 = v204;
        sub_1003AFADC(v118, v218);

        if (qword_100920B20 != -1)
        {
          swift_once();
        }

        v124 = qword_100980018;
      }

      v125 = sub_10000D0FC(v122, v124);
      sub_100731F20(v125, v102, type metadata accessor for TitleHeaderView.TextConfiguration);
      if (qword_100920AE0 != -1)
      {
        swift_once();
      }

      v126 = 0;
      v127 = qword_10097FF58;
      v128 = v123;
    }

    else
    {
      if (v97 == 1)
      {
        v115 = v190;
        sub_100016B4C(v103, v190, &unk_100928A90);
        if ((*(v110 + 48))(v115, 1, v109) == 1)
        {
          sub_10000C8CC(v115, &unk_100928A90);
          v116 = 0;
        }

        else
        {
          v116 = sub_100743964();
          (*(v110 + 8))(v115, v109);
        }

        v122 = v213;
        v123 = v204;
        sub_1003AFADC(v116, v218);

        if (qword_100920B28 != -1)
        {
          swift_once();
        }

        v126 = 1;
        v127 = qword_100980030;
      }

      else
      {
        v119 = (v110 + 48);
        if (v200)
        {
          v120 = v187;
          sub_100016B4C(v103, v187, &unk_100928A90);
          if ((*v119)(v120, 1, v109) == 1)
          {
            sub_10000C8CC(v120, &unk_100928A90);
            v121 = 0;
          }

          else
          {
            v121 = sub_100743964();
            (*(v110 + 8))(v120, v109);
          }

          v122 = v213;
          v123 = v204;
          sub_1003AFAE4(v121, v218);

          if (qword_100920B18 != -1)
          {
            swift_once();
          }

          v126 = 1;
          v127 = qword_100980000;
        }

        else
        {
          v144 = v185;
          sub_100016B4C(v103, v185, &unk_100928A90);
          if ((*v119)(v144, 1, v109) == 1)
          {
            sub_10000C8CC(v144, &unk_100928A90);
            v145 = 0;
          }

          else
          {
            v145 = sub_100743964();
            (*(v110 + 8))(v144, v109);
          }

          v122 = v213;
          v123 = v204;
          sub_1003AFADC(v145, v218);

          if (qword_100920B10 != -1)
          {
            swift_once();
          }

          v126 = 1;
          v127 = qword_10097FFE8;
        }
      }

      v128 = v102;
    }

    LODWORD(v225) = v100 != 0;
    v166 = sub_10000D0FC(v122, v127);
    sub_100731F20(v166, v128, type metadata accessor for TitleHeaderView.TextConfiguration);
    (*(v212 + 56))(v123, v126, 1, v122);
    v167 = v218;
    v168 = v202;
    sub_100731F20(v218, v202, type metadata accessor for TitleHeaderView.TextConfiguration);
    v169 = v203;
    sub_100731F20(v102, v203, type metadata accessor for TitleHeaderView.TextConfiguration);
    v170 = v102;
    v171 = v205;
    sub_100016B4C(v123, v205, &unk_100940600);
    v172 = v219;
    sub_100016B4C(v219, v220, &qword_100928A88);
    v174 = v214;
    v173 = v215;
    (*(v214 + 104))(v221, enum case for TitleHeaderLayout.ChildrenHorizontalAlignment.leading(_:), v215);
    sub_10000D198();
    v175 = sub_100753DB4();

    sub_10000C8CC(v172, &qword_100928A88);
    sub_10000C8CC(v123, &unk_100940600);
    sub_1003B6E50(v170);
    sub_1003B6E50(v167);
    sub_10000C8CC(v217, &unk_100928A90);
    v176 = v216;
    v177 = *(v216 + 32);
    v178 = v168;
    v161 = v206;
    sub_1003ED344(v178, v206, type metadata accessor for TitleHeaderView.TextConfiguration);
    sub_1003ED344(v169, v161 + v176[5], type metadata accessor for TitleHeaderView.TextConfiguration);
    sub_100150344(v171, v161 + v176[6]);
    *(v161 + v176[7]) = 0;
    *(v161 + v177) = 0;
    *(v161 + v176[9]) = v225;
    *(v161 + v176[14]) = 0x4030000000000000;
    *(v161 + v176[12]) = 0;
    *(v161 + v176[13]) = v175;
    v179 = v220;
    (*(v174 + 32))(v161 + v176[11], v221, v173);
    v181 = v226;
    v180 = v227;
    if ((*(v226 + 6))(v179, 1, v227) == 1)
    {
      sub_10000C8CC(v179, &qword_100928A88);
      if (v184)
      {
        v182 = &enum case for TitleHeaderLayout.AccessoryVerticalAlignment.firstBaseline(_:);
      }

      else
      {
        v182 = &enum case for TitleHeaderLayout.AccessoryVerticalAlignment.lastBaseline(_:);
      }

      (*(v181 + 13))(v161 + v176[10], *v182, v180);
    }

    else
    {
      (*(v181 + 4))(v161 + v176[10], v179, v180);
    }

    return sub_1003ED344(v161, v228, type metadata accessor for TitleHeaderView.Style);
  }

  LODWORD(v227) = v98;
  if (v229)
  {

    v105 = sub_10074EB44();

    v106 = v194;
    v107 = v207;
    if (v105)
    {
      sub_1007439D4();

      v108 = 0;
    }

    else
    {
      v108 = 1;
    }
  }

  else
  {
    v108 = 1;
    v106 = v194;
    v107 = v207;
  }

  v129 = sub_1007439C4();
  v130 = *(v129 - 8);
  (*(v130 + 56))(v107, v108, 1, v129);
  v131 = sub_100747134();
  v225 = *(v131 - 1);
  v226 = v131;
  (v225[7])(v209, 1, 1);
  v132 = (v130 + 48);
  if (v200)
  {
    if (v100)
    {
      v133 = v191;
      sub_100016B4C(v107, v191, &unk_100928A90);
      if ((*v132)(v133, 1, v129) == 1)
      {
        sub_10000C8CC(v133, &unk_100928A90);
        v134 = 0;
      }

      else
      {
        v134 = sub_100743964();
        (*(v130 + 8))(v133, v129);
      }

      v139 = v213;
      v140 = v197;
      sub_1003AFADC(v134, v208);

      if (qword_100920B08 != -1)
      {
        swift_once();
      }

      v141 = qword_10097FFD0;
LABEL_68:
      v146 = sub_10000D0FC(v139, v141);
      sub_100731F20(v146, v106, type metadata accessor for TitleHeaderView.TextConfiguration);
      if (qword_100920AE0 != -1)
      {
        swift_once();
      }

      v147 = 0;
      v148 = qword_10097FF58;
      v149 = v140;
      goto LABEL_84;
    }

    v137 = v188;
    sub_100016B4C(v107, v188, &unk_100928A90);
    if ((*v132)(v137, 1, v129) == 1)
    {
      sub_10000C8CC(v137, &unk_100928A90);
      v138 = 0;
    }

    else
    {
      v138 = sub_100743964();
      (*(v130 + 8))(v137, v129);
    }

    v139 = v213;
    v140 = v197;
    sub_1003AFADC(v138, v208);

    if (qword_100920AF0 != -1)
    {
      swift_once();
    }

    v147 = 1;
    v148 = qword_10097FF88;
  }

  else
  {
    if (v100)
    {
      v135 = v189;
      sub_100016B4C(v107, v189, &unk_100928A90);
      if ((*v132)(v135, 1, v129) == 1)
      {
        sub_10000C8CC(v135, &unk_100928A90);
        v136 = 0;
      }

      else
      {
        v136 = sub_100743964();
        (*(v130 + 8))(v135, v129);
      }

      v139 = v213;
      v140 = v197;
      sub_1003AFADC(v136, v208);

      if (qword_100920B00 != -1)
      {
        swift_once();
      }

      v141 = qword_10097FFB8;
      goto LABEL_68;
    }

    v142 = v186;
    sub_100016B4C(v107, v186, &unk_100928A90);
    if ((*v132)(v142, 1, v129) == 1)
    {
      sub_10000C8CC(v142, &unk_100928A90);
      v143 = 0;
    }

    else
    {
      v143 = sub_100743964();
      (*(v130 + 8))(v142, v129);
    }

    v139 = v213;
    v140 = v197;
    sub_1003AFADC(v143, v208);

    if (qword_100920AE8 != -1)
    {
      swift_once();
    }

    v147 = 1;
    v148 = qword_10097FF70;
  }

  v149 = v106;
LABEL_84:
  LODWORD(v224) = v100 != 0;
  v150 = sub_10000D0FC(v139, v148);
  sub_100731F20(v150, v149, type metadata accessor for TitleHeaderView.TextConfiguration);
  (*(v212 + 56))(v140, v147, 1, v139);
  v151 = v208;
  v152 = v195;
  sub_100731F20(v208, v195, type metadata accessor for TitleHeaderView.TextConfiguration);
  v153 = v196;
  sub_100731F20(v106, v196, type metadata accessor for TitleHeaderView.TextConfiguration);
  v154 = v198;
  sub_100016B4C(v140, v198, &unk_100940600);
  v155 = v209;
  sub_100016B4C(v209, v210, &qword_100928A88);
  v156 = v214;
  v157 = v215;
  (*(v214 + 104))(v211, enum case for TitleHeaderLayout.ChildrenHorizontalAlignment.leading(_:), v215);
  sub_10000D198();
  v223 = sub_100753DB4();

  sub_10000C8CC(v155, &qword_100928A88);
  sub_10000C8CC(v140, &unk_100940600);
  sub_1003B6E50(v106);
  sub_1003B6E50(v151);
  sub_10000C8CC(v207, &unk_100928A90);
  v158 = v216;
  v159 = *(v216 + 32);
  v160 = v152;
  v161 = v199;
  sub_1003ED344(v160, v199, type metadata accessor for TitleHeaderView.TextConfiguration);
  sub_1003ED344(v153, v161 + v158[5], type metadata accessor for TitleHeaderView.TextConfiguration);
  sub_100150344(v154, v161 + v158[6]);
  *(v161 + v158[7]) = v227 & 1;
  *(v161 + v159) = 0;
  *(v161 + v158[9]) = v224;
  *(v161 + v158[14]) = 0x4030000000000000;
  *(v161 + v158[12]) = 0;
  *(v161 + v158[13]) = v223;
  v162 = v210;
  (*(v156 + 32))(v161 + v158[11], v211, v157);
  v164 = v225;
  v163 = v226;
  if ((v225[6])(v162, 1, v226) == 1)
  {
    sub_10000C8CC(v162, &qword_100928A88);
    if (v184)
    {
      v165 = &enum case for TitleHeaderLayout.AccessoryVerticalAlignment.firstBaseline(_:);
    }

    else
    {
      v165 = &enum case for TitleHeaderLayout.AccessoryVerticalAlignment.lastBaseline(_:);
    }

    (v164[13])(v161 + v158[10], *v165, v163);
  }

  else
  {
    (v164[4])(v161 + v158[10], v162, v163);
  }

  return sub_1003ED344(v161, v228, type metadata accessor for TitleHeaderView.Style);
}

uint64_t sub_100731B8C()
{

  swift_unknownObjectRelease();
  swift_unknownObjectWeakDestroy();

  return v0;
}

uint64_t sub_100731BE4@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v19 = a3;
  v5 = sub_10074E984();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v18 - v10;
  sub_100747494();
  (*(v6 + 104))(v8, enum case for Shelf.ContentType.privacyCategory(_:), v5);
  sub_100731F88(&qword_100926DD0, &type metadata accessor for Shelf.ContentType);
  sub_100753274();
  sub_100753274();
  if (v22 == v20 && v23 == v21)
  {
    v12 = *(v6 + 8);
    v12(v8, v5);
    v12(v11, v5);
  }

  else
  {
    v18 = a2;
    v13 = sub_100754754();
    v14 = *(v6 + 8);
    v14(v8, v5);
    v14(v11, v5);

    if ((v13 & 1) == 0)
    {
      return sub_1007301AC(a1, v18, &type metadata accessor for GenericPagePresenter, &unk_100935940, &type metadata accessor for GenericPagePresenter, &protocol conformance descriptor for BaseShelfPresenter, &type metadata accessor for GenericPagePresenter, v19);
    }
  }

  if (qword_100921E98 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for TitleHeaderView.Style(0);
  v16 = sub_10000D0FC(v15, qword_100983160);
  return sub_100731F20(v16, v19, type metadata accessor for TitleHeaderView.Style);
}

uint64_t type metadata accessor for PrivacyDetailDataSource()
{
  result = qword_100948018;
  if (!qword_100948018)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100731F20(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100731F88(unint64_t *a1, void (*a2)(uint64_t))
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

double sub_100731FE8(uint64_t a1, double (*a2)(double, double), double a3, double a4)
{
  v9 = sub_100751144();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v40[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v13);
  v15 = &v40[-v14];
  __chkstk_darwin(v16);
  v18 = &v40[-v17];
  __chkstk_darwin(v19);
  v21 = &v40[-v20];
  v22 = a2(a3, a4);
  v23 = [v4 traitCollection];
  v24 = [v23 horizontalSizeClass];

  if (v24 == 2)
  {
    v25 = 635.0;
  }

  else
  {
    v25 = a3;
  }

  if (v25 <= v22)
  {
    sub_10000C824(a1, v42);
    *(v21 + 3) = &type metadata for CGFloat;
    *(v21 + 4) = &protocol witness table for CGFloat;
    *v21 = v25;
    v34 = *(v10 + 104);
    v34(v21, enum case for Resize.Rule.replaced(_:), v9);
    v35 = enum case for Resize.Rule.unchanged(_:);
    v34(v18, enum case for Resize.Rule.unchanged(_:), v9);
    v34(v15, v35, v9);
    v34(v12, v35, v9);
    v44 = sub_100751154();
    v45 = &protocol witness table for Resize;
    sub_10000D134(v43);
    sub_100751164();
  }

  else
  {
    sub_100750C24();
    v27 = v26;
    v29 = v28;
    sub_10000C824(a1, v42);
    sub_100750C24();
    v31 = v30;
    v33 = v32;
    v44 = sub_100751224();
    v45 = &protocol witness table for Constrain;
    sub_10000D134(v43);
    v41 = v31 & 1;
    v40[0] = v33 & 1;
    sub_100751234();
    v42[0] = v27 & 1;
    v41 = v29 & 1;
    sub_100750C44();
  }

  sub_10000C888(v43, v44);
  v36 = [v4 traitCollection];
  sub_100751254();
  v38 = v37;

  sub_10000C620(v43);
  return v38;
}

char *sub_1007323A4(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v9 = sub_10074A3F4();
  __chkstk_darwin(v9 - 8);
  v10 = sub_10074A454();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10074A374();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = OBJC_IVAR____TtC22SubscribePageExtension35CarouselItemCollectionModuleOverlay_headerView;
  type metadata accessor for CarouselItemModuleHeaderView();
  *&v4[v18] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v19 = OBJC_IVAR____TtC22SubscribePageExtension35CarouselItemCollectionModuleOverlay_platterView;
  type metadata accessor for CarouselItemModulePlatterView();
  *&v4[v19] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v20 = OBJC_IVAR____TtC22SubscribePageExtension35CarouselItemCollectionModuleOverlay_tapGestureRecognizer;
  *&v4[v20] = [objc_allocWithZone(UITapGestureRecognizer) init];
  (*(v15 + 104))(v17, enum case for HeroCarouselItemOverlay.DisplayOptions.TextAlignment.center(_:), v14);
  (*(v11 + 104))(v13, enum case for HeroCarouselItemOverlay.DisplayOptions.Placement.leading(_:), v10);
  sub_10074A3E4();
  sub_10074A384();
  v21 = &v4[OBJC_IVAR____TtC22SubscribePageExtension35CarouselItemCollectionModuleOverlay_selectionHandler];
  *v21 = 0;
  *(v21 + 1) = 0;
  v33.receiver = v4;
  v33.super_class = ObjectType;
  v22 = objc_msgSendSuper2(&v33, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v26 = v22;
  [v26 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  [v26 setMaximumContentSizeCategory:UIContentSizeCategoryAccessibilityMedium];
  v27 = [v26 layer];
  [v27 setAllowsGroupOpacity:0];

  v28 = OBJC_IVAR____TtC22SubscribePageExtension35CarouselItemCollectionModuleOverlay_tapGestureRecognizer;
  [*&v26[OBJC_IVAR____TtC22SubscribePageExtension35CarouselItemCollectionModuleOverlay_tapGestureRecognizer] setEnabled:0];
  [*&v26[v28] addTarget:v26 action:"handleSelection:"];
  v29 = *&v26[v28];
  [v29 setDelegate:v26];

  [v26 addGestureRecognizer:*&v26[v28]];
  [v26 addSubview:*&v26[OBJC_IVAR____TtC22SubscribePageExtension35CarouselItemCollectionModuleOverlay_headerView]];
  [v26 addSubview:*&v26[OBJC_IVAR____TtC22SubscribePageExtension35CarouselItemCollectionModuleOverlay_platterView]];

  return v26;
}

uint64_t sub_1007327DC@<X0>(uint64_t *a1@<X8>)
{
  v22 = a1;
  v2 = sub_1007507B4();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v21 - v7;
  v9 = sub_1007506E4();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1007506B4();
  *(swift_allocObject() + 16) = v1;
  v13 = v1;
  sub_100750794();
  v14 = *&v13[OBJC_IVAR____TtC22SubscribePageExtension35CarouselItemCollectionModuleOverlay_headerView];
  v25 = type metadata accessor for CarouselItemModuleHeaderView();
  v26 = sub_100733638(&qword_100948380, type metadata accessor for CarouselItemModuleHeaderView);
  v24[0] = v14;
  v15 = v14;
  sub_1007507A4();
  v16 = *(v3 + 8);
  v16(v5, v2);
  sub_10000C620(v24);
  v17 = *&v13[OBJC_IVAR____TtC22SubscribePageExtension35CarouselItemCollectionModuleOverlay_platterView];
  v23[3] = type metadata accessor for CarouselItemModulePlatterView();
  v23[4] = sub_100733638(&qword_100948388, type metadata accessor for CarouselItemModulePlatterView);
  v23[0] = v17;
  v25 = v2;
  v26 = &protocol witness table for VerticalStack;
  sub_10000D134(v24);
  v18 = v17;
  sub_1007507A4();
  v16(v8, v2);
  sub_10000C620(v23);
  v19 = v22;
  v22[3] = v9;
  v19[4] = &protocol witness table for DisjointStack;
  sub_10000D134(v19);
  sub_1007506D4();
  (*(v10 + 8))(v12, v9);
  return sub_10000C620(v24);
}

uint64_t sub_100732C14()
{
  v0 = sub_1007506A4();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = (&v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v3[3] = sub_1007507D4();
  v3[4] = &protocol witness table for ZeroDimension;
  sub_10000D134(v3);
  sub_1007507C4();
  (*(v1 + 104))(v3, enum case for DisjointStack.EdgePosition.anchored(_:), v0);
  return sub_100750654();
}

uint64_t sub_100732D08(uint64_t a1, uint64_t a2)
{
  v3 = sub_10074A454();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10074A464();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR____TtC22SubscribePageExtension35CarouselItemCollectionModuleOverlay_displayOptions;
  swift_beginAccess();
  (*(v8 + 16))(v10, a2 + v11, v7);
  sub_10074A414();
  (*(v8 + 8))(v10, v7);
  sub_10074A434();
  (*(v4 + 8))(v6, v3);
  return sub_100750744();
}

uint64_t type metadata accessor for CarouselItemCollectionModuleOverlay()
{
  result = qword_100948368;
  if (!qword_100948368)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1007330F8()
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

uint64_t sub_1007331A4(uint64_t a1, uint64_t a2)
{
  v4 = (v2 + OBJC_IVAR____TtC22SubscribePageExtension35CarouselItemCollectionModuleOverlay_selectionHandler);
  v5 = *(v2 + OBJC_IVAR____TtC22SubscribePageExtension35CarouselItemCollectionModuleOverlay_selectionHandler);
  *v4 = a1;
  v4[1] = a2;
  sub_10001B5AC(a1);
  sub_10001B5AC(a1);
  sub_1000164A8(v5);
  v6 = *(v2 + OBJC_IVAR____TtC22SubscribePageExtension35CarouselItemCollectionModuleOverlay_tapGestureRecognizer);
  if (a1)
  {
    sub_1000164A8(a1);
  }

  [v6 setEnabled:a1 != 0];

  return sub_1000164A8(a1);
}

uint64_t sub_100733258(uint64_t a1, uint64_t a2)
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

id sub_1007332D8()
{
  v1 = v0;
  v2 = sub_10074A464();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10074A474();
  v6 = OBJC_IVAR____TtC22SubscribePageExtension35CarouselItemCollectionModuleOverlay_displayOptions;
  swift_beginAccess();
  (*(v3 + 40))(&v1[v6], v5, v2);
  swift_endAccess();
  sub_10016CAF4();
  sub_10074A474();
  v7 = sub_10074A4D4();
  v9 = v8;
  v10 = sub_10074A494();
  sub_10062876C(v5, v7, v9, v10, v11);

  (*(v3 + 8))(v5, v2);
  return [v1 setNeedsLayout];
}

uint64_t sub_100733480()
{
  v1 = *(*(v0 + OBJC_IVAR____TtC22SubscribePageExtension35CarouselItemCollectionModuleOverlay_platterView) + OBJC_IVAR____TtC22SubscribePageExtension29CarouselItemModulePlatterView_lockupCollectionView);
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
      sub_100733638(&qword_100925570, &type metadata accessor for ArtworkView);
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

uint64_t sub_1007335F8()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100733638(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_100733680()
{
  v1 = sub_10074A3F4();
  __chkstk_darwin(v1 - 8);
  v2 = sub_10074A454();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10074A374();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtC22SubscribePageExtension35CarouselItemCollectionModuleOverlay_headerView;
  type metadata accessor for CarouselItemModuleHeaderView();
  *(v0 + v10) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v11 = OBJC_IVAR____TtC22SubscribePageExtension35CarouselItemCollectionModuleOverlay_platterView;
  type metadata accessor for CarouselItemModulePlatterView();
  *(v0 + v11) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v12 = OBJC_IVAR____TtC22SubscribePageExtension35CarouselItemCollectionModuleOverlay_tapGestureRecognizer;
  *(v0 + v12) = [objc_allocWithZone(UITapGestureRecognizer) init];
  (*(v7 + 104))(v9, enum case for HeroCarouselItemOverlay.DisplayOptions.TextAlignment.center(_:), v6);
  (*(v3 + 104))(v5, enum case for HeroCarouselItemOverlay.DisplayOptions.Placement.leading(_:), v2);
  sub_10074A3E4();
  sub_10074A384();
  v13 = (v0 + OBJC_IVAR____TtC22SubscribePageExtension35CarouselItemCollectionModuleOverlay_selectionHandler);
  *v13 = 0;
  v13[1] = 0;
  sub_100754644();
  __break(1u);
}

void sub_100733914()
{
  if (([v0 isViewLoaded] & 1) == 0)
  {
    v5._countAndFlagsBits = 0x535F474E494D4F43;
    v5._object = 0xEB000000004E4F4FLL;
    v6._countAndFlagsBits = 0;
    v6._object = 0xE000000000000000;
    sub_1007458B4(v5, v6);
    v1 = objc_allocWithZone(_UIContentUnavailableView);
    v2 = sub_100753064();

    v3 = [v1 initWithFrame:v2 title:0 style:{0.0, 0.0, 0.0, 0.0}];

    [v0 setView:v3];
  }
}

id sub_100733BE4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ComingSoonViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_100733C50()
{
  result = qword_1009483B8;
  if (!qword_1009483B8)
  {
    sub_100745F14();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009483B8);
  }

  return result;
}

uint64_t sub_100733CB0(uint64_t a1, uint64_t a2)
{
  v3 = sub_100742284();
  v31 = *(v3 - 8);
  v32 = v3;
  __chkstk_darwin(v3);
  v25 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v28 = &v24 - v6;
  v27 = sub_10000C518(&unk_100923210);
  v30 = *(v27 - 8);
  __chkstk_darwin(v27);
  v33 = &v24 - v7;
  v26 = sub_10074ED34();
  v8 = *(v26 - 8);
  __chkstk_darwin(v26);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000C518(&qword_100930CA0);
  v29 = sub_100752DE4();
  sub_10000C518(&unk_100925780);
  sub_100752764();
  sub_100752D34();
  swift_getObjectType();
  sub_100745F04();
  sub_1007424E4();
  swift_unknownObjectRelease();
  v11 = v10;
  v12 = v27;
  v13 = v28;
  (*(v8 + 8))(v11, v26);
  sub_100752D34();
  v14 = sub_100745ED4();
  swift_getObjectType();
  sub_100745EF4();
  sub_1007423E4();
  if ((sub_100742274() & 1) == 0 && (sub_100742204() & 1) == 0)
  {
    v18 = v31;
    v17 = v32;
    v21 = v25;
    (*(v31 + 16))(v25, v13, v32);
    if ((*(v18 + 88))(v21, v17) == enum case for LegacyAppState.openable(_:))
    {
      (*(v18 + 96))(v21, v17);

      v22 = sub_100748314();
      (*(*(v22 - 8) + 8))(v21, v22);
      v23 = sub_100745EC4();
      if (v23)
      {
        v16 = v23;
        goto LABEL_7;
      }
    }

    else
    {
      (*(v18 + 8))(v21, v17);
    }

    v16 = v14;
    goto LABEL_7;
  }

  v15 = sub_100745EB4();
  if (v15)
  {
    v16 = v15;
  }

  else
  {

    v16 = v14;
  }

  v18 = v31;
  v17 = v32;
LABEL_7:
  sub_10052AB60(v16, 1, a2);

  v19 = v29;
  sub_100752D54();

  swift_unknownObjectRelease();

  (*(v18 + 8))(v13, v17);
  (*(v30 + 8))(v33, v12);
  return v19;
}

void sub_10073415C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = v2;
    v6 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v7 = swift_allocObject();
    *(v7 + 2) = a1;
    *(v7 + 3) = a2;
    *(v7 + 4) = v6;
    v8 = swift_allocObject();
    swift_unknownObjectWeakInit();
    updated = type metadata accessor for SingleUseGKDaemonProxyDataUpdateDelegate();
    v10 = objc_allocWithZone(updated);
    *&v10[OBJC_IVAR____TtC22SubscribePageExtensionP33_77955017F366B854A4892EB35CDC853540SingleUseGKDaemonProxyDataUpdateDelegate_updateType] = 4;
    v11 = &v10[OBJC_IVAR____TtC22SubscribePageExtensionP33_77955017F366B854A4892EB35CDC853540SingleUseGKDaemonProxyDataUpdateDelegate_updateBlock];
    *v11 = sub_100734E90;
    v11[1] = v7;
    v12 = &v10[OBJC_IVAR____TtC22SubscribePageExtensionP33_77955017F366B854A4892EB35CDC853540SingleUseGKDaemonProxyDataUpdateDelegate_cleanupBlock];
    *v12 = sub_100734E9C;
    v12[1] = v8;
    v26.receiver = v10;
    v26.super_class = updated;

    v13 = objc_msgSendSuper2(&v26, "init");
    v14 = objc_opt_self();
    v15 = [v14 daemonProxy];
    [v15 addDataUpdateDelegate:v13];

    v16 = *(v2 + OBJC_IVAR____TtC22SubscribePageExtension34SmallContactCardCollectionViewCell_recommendationsDataUpdateDelegate);
    *(v2 + OBJC_IVAR____TtC22SubscribePageExtension34SmallContactCardCollectionViewCell_recommendationsDataUpdateDelegate) = v13;
    v17 = v13;

    if (sub_100744A04())
    {
      v18 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v19 = objc_allocWithZone(updated);
      *&v19[OBJC_IVAR____TtC22SubscribePageExtensionP33_77955017F366B854A4892EB35CDC853540SingleUseGKDaemonProxyDataUpdateDelegate_updateType] = 21;
      v20 = &v19[OBJC_IVAR____TtC22SubscribePageExtensionP33_77955017F366B854A4892EB35CDC853540SingleUseGKDaemonProxyDataUpdateDelegate_updateBlock];
      *v20 = sub_1007348C8;
      v20[1] = 0;
      v21 = &v19[OBJC_IVAR____TtC22SubscribePageExtensionP33_77955017F366B854A4892EB35CDC853540SingleUseGKDaemonProxyDataUpdateDelegate_cleanupBlock];
      *v21 = sub_100734EC0;
      v21[1] = v18;
      v25.receiver = v19;
      v25.super_class = updated;
      v22 = objc_msgSendSuper2(&v25, "init");
      v23 = [v14 daemonProxy];
      v24 = v22;
      [v23 addDataUpdateDelegate:v24];

      v17 = *(v3 + OBJC_IVAR____TtC22SubscribePageExtension34SmallContactCardCollectionViewCell_requestSentDataUpdateDelegate);
      *(v3 + OBJC_IVAR____TtC22SubscribePageExtension34SmallContactCardCollectionViewCell_requestSentDataUpdateDelegate) = v24;
    }
  }
}

char *sub_1007343DC(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = OBJC_IVAR____TtC22SubscribePageExtension34SmallContactCardCollectionViewCell_itemLayoutContext;
  v12 = sub_1007469A4();
  (*(*(v12 - 8) + 56))(&v5[v11], 1, 1, v12);
  *&v5[OBJC_IVAR____TtC22SubscribePageExtension34SmallContactCardCollectionViewCell_recommendationsDataUpdateDelegate] = 0;
  *&v5[OBJC_IVAR____TtC22SubscribePageExtension34SmallContactCardCollectionViewCell_requestSentDataUpdateDelegate] = 0;
  v13 = [objc_allocWithZone(sub_10074FEA4()) initWithFrame:{a1, a2, a3, a4}];
  *&v5[OBJC_IVAR____TtC22SubscribePageExtension34SmallContactCardCollectionViewCell_smallPlayerCard] = v13;
  v14 = v13;
  v15 = sub_10074FE14();

  v16 = [objc_opt_self() systemGrayColor];
  [v15 setTintColor:v16];

  v20.receiver = v5;
  v20.super_class = ObjectType;
  v17 = objc_msgSendSuper2(&v20, "initWithFrame:", a1, a2, a3, a4);
  v18 = [v17 contentView];
  [v18 addSubview:*&v17[OBJC_IVAR____TtC22SubscribePageExtension34SmallContactCardCollectionViewCell_smallPlayerCard]];

  return v17;
}

void sub_100734750(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v14 = sub_100753094();
  v15 = v6;
  sub_1007544E4();
  if (!*(a1 + 16) || (v7 = sub_100412148(v16), (v8 & 1) == 0))
  {
    sub_100016994(v16);
    return;
  }

  sub_10000C5B4(*(a1 + 56) + 32 * v7, v17);
  sub_100016994(v16);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return;
  }

  if (v14 == a2 && v15 == a3)
  {
  }

  else
  {
    v9 = sub_100754754();

    if ((v9 & 1) == 0)
    {
      return;
    }
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    v12 = *(Strong + OBJC_IVAR____TtC22SubscribePageExtension34SmallContactCardCollectionViewCell_smallPlayerCard);

    v13 = sub_10074FE44();
    if (v13)
    {
      v13();
      sub_1000164A8(v13);
    }
  }
}

uint64_t sub_1007348C8(uint64_t a1)
{
  sub_100753094();
  sub_1007544E4();
  if (!*(a1 + 16))
  {
    return sub_100016994(v5);
  }

  v2 = sub_100412148(v5);
  if ((v3 & 1) == 0)
  {
    return sub_100016994(v5);
  }

  sub_10000C5B4(*(a1 + 56) + 32 * v2, v6);
  sub_100016994(v5);
  result = swift_dynamicCast();
  if (result)
  {
    sub_100734EE4();
    sub_100753604();
  }

  return result;
}

void sub_1007349AC(uint64_t a1, uint64_t *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = *a2;
    v5 = *&Strong[*a2];
    *&Strong[v4] = 0;
  }
}

uint64_t type metadata accessor for SmallContactCardCollectionViewCell()
{
  result = qword_100948400;
  if (!qword_100948400)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100734ACC()
{
  sub_100016898();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

id sub_100734C6C()
{
  v1 = [objc_opt_self() daemonProxy];
  [v1 removeDataUpdateDelegate:v0];

  v3.receiver = v0;
  v3.super_class = type metadata accessor for SingleUseGKDaemonProxyDataUpdateDelegate();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_100734E18()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100734E50()
{

  return _swift_deallocObject(v0, 40, 7);
}

unint64_t sub_100734EE4()
{
  result = qword_100948458;
  if (!qword_100948458)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100948458);
  }

  return result;
}

id sub_100734F30(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = sub_10000C518(&qword_1009484C0);
  __chkstk_darwin(v10);
  *&v4[OBJC_IVAR____TtC22SubscribePageExtension27TodayCardChinLockupListView_lockupIconViews] = _swiftEmptyArrayStorage;
  *&v4[OBJC_IVAR____TtC22SubscribePageExtension27TodayCardChinLockupListView_lockupIconViewCount] = 0;
  type metadata accessor for TodayCardChinLockupListIconView(0);
  sub_100750624();
  sub_100737FE8();
  sub_1007512E4();
  swift_weakInit();
  v11 = &v4[OBJC_IVAR____TtC22SubscribePageExtension27TodayCardChinLockupListView_impressionsUpdateBlock];
  *v11 = 0;
  v11[1] = 0;
  v12 = OBJC_IVAR____TtC22SubscribePageExtension27TodayCardChinLockupListView_todayCardStyle;
  v13 = enum case for TodayCard.Style.light(_:);
  v14 = sub_10074FB54();
  (*(*(v14 - 8) + 104))(&v4[v12], v13, v14);
  v15 = &v4[OBJC_IVAR____TtC22SubscribePageExtension27TodayCardChinLockupListView_clickActionHandler];
  *v15 = 0;
  v15[1] = 0;
  v4[OBJC_IVAR____TtC22SubscribePageExtension27TodayCardChinLockupListView_isExpanded] = 0;
  v4[OBJC_IVAR____TtC22SubscribePageExtension27TodayCardChinLockupListView_sizeCategory] = 7;
  v4[OBJC_IVAR____TtC22SubscribePageExtension27TodayCardChinLockupListView_wantsCardConsistentMargins] = 0;
  v20.receiver = v4;
  v20.super_class = ObjectType;
  v16 = objc_msgSendSuper2(&v20, "initWithFrame:", a1, a2, a3, a4);
  [v16 setMaximumContentSizeCategory:UIContentSizeCategoryAccessibilityExtraExtraLarge];
  [v16 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];
  sub_10000C518(&unk_1009249D0);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1007A5A00;
  *(v17 + 32) = sub_1007519E4();
  *(v17 + 40) = &protocol witness table for UITraitPreferredContentSizeCategory;
  v19[3] = ObjectType;
  v19[0] = v16;
  sub_100753D34();
  swift_unknownObjectRelease();

  sub_10000C620(v19);
  return v16;
}

void sub_100735218()
{
  v1 = v0;
  v2 = sub_10074FB54();
  v3 = *(v2 - 8);
  *&v4 = __chkstk_darwin(v2).n128_u64[0];
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v0[OBJC_IVAR____TtC22SubscribePageExtension27TodayCardChinLockupListView_isExpanded] & 1) != 0 || v0[OBJC_IVAR____TtC22SubscribePageExtension27TodayCardChinLockupListView_sizeCategory] != 6 || (v7 = [v0 traitCollection], v8 = sub_100753804(), v7, (v8))
  {
    v9 = OBJC_IVAR____TtC22SubscribePageExtension27TodayCardChinLockupListView_todayCardStyle;
    swift_beginAccess();
    (*(v3 + 16))(v6, &v1[v9], v2);
    v10 = sub_10056AD50(v6);
    (*(v3 + 8))(v6, v2);
  }

  else
  {
    v10 = [objc_opt_self() clearColor];
  }

  [v1 setBackgroundColor:v10];
}

int64_t sub_1007353B8(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5, uint64_t a6)
{
  v8 = v6;
  v93 = a6;
  v85 = a2;
  v12 = a5;
  v13 = sub_10000C518(&qword_100933090);
  __chkstk_darwin(v13 - 8);
  v96 = v81 - v14;
  v15 = sub_10074F314();
  __chkstk_darwin(v15 - 8);
  v92 = v81 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = sub_10074F284();
  v17 = *(v91 - 8);
  __chkstk_darwin(v91);
  v90 = v81 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_10074FB54();
  v20 = *(v19 - 8);
  v21 = __chkstk_darwin(v19);
  v23 = v81 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = *(v8 + OBJC_IVAR____TtC22SubscribePageExtension27TodayCardChinLockupListView_sizeCategory);
  *(v8 + OBJC_IVAR____TtC22SubscribePageExtension27TodayCardChinLockupListView_sizeCategory) = a5;
  if (v12 == 7)
  {
    if (v24 == 7)
    {
      goto LABEL_6;
    }

LABEL_5:
    [v8 setNeedsLayout];
    goto LABEL_6;
  }

  if (v24 == 7)
  {
    goto LABEL_5;
  }

  switch(v12)
  {
    case 6:
      if (v24 != 6)
      {
        goto LABEL_5;
      }

      break;
    case 5:
      if (v24 != 5)
      {
        goto LABEL_5;
      }

      break;
    case 4:
      if (v24 != 4)
      {
        goto LABEL_5;
      }

      break;
    default:
      if ((v24 - 7) > 0xFFFFFFFC || v24 != v12)
      {
        goto LABEL_5;
      }

      break;
  }

LABEL_6:
  (*(v20 + 16))(v23, a4, v19, v21);
  v25 = OBJC_IVAR____TtC22SubscribePageExtension27TodayCardChinLockupListView_todayCardStyle;
  swift_beginAccess();
  (*(v20 + 24))(v8 + v25, v23, v19);
  swift_endAccess();
  sub_100735218();
  (*(v20 + 8))(v23, v19);
  v26 = a1;
  v27 = sub_10074BE94();
  v28 = v27;
  v29 = v27 & 0xFFFFFFFFFFFFFF8;
  v30 = v27 >> 62;
  if (v27 >> 62)
  {
    while (1)
    {
      if (v28 < 0)
      {
        v26 = v28;
      }

      else
      {
        v26 = v29;
      }

      v79 = sub_100754664();
      if (sub_100754664() < 0)
      {
        __break(1u);
LABEL_114:
        __break(1u);
LABEL_115:
        __break(1u);
LABEL_116:
        __break(1u);
LABEL_117:
        __break(1u);
        goto LABEL_118;
      }

      if (v79 >= 6)
      {
        v80 = 6;
      }

      else
      {
        v80 = v79;
      }

      if (v79 >= 0)
      {
        v7 = v80;
      }

      else
      {
        v7 = 6;
      }

      result = sub_100754664();
      if (result < v7)
      {
        goto LABEL_130;
      }

LABEL_11:
      if ((v28 & 0xC000000000000001) != 0 && v7)
      {
        v26 = sub_10074EFD4();

        sub_100754554(0);
        if (v7 != 1)
        {
          sub_100754554(1);
          if (v7 != 2)
          {
            sub_100754554(2);
            if (v7 != 3)
            {
              sub_100754554(3);
              if (v7 != 4)
              {
                sub_100754554(4);
                if (v7 != 5)
                {
                  sub_100754554(5);
                }
              }
            }
          }
        }
      }

      else
      {
      }

      v95 = v17;

      if (v30)
      {
        v17 = sub_100754674();
        v97 = v32;
        v30 = v33;
        v26 = v34;

        v7 = v26 >> 1;
      }

      else
      {
        v17 = v28 & 0xFFFFFFFFFFFFFF8;
        v97 = (v28 & 0xFFFFFFFFFFFFFF8) + 32;
      }

      if (__OFSUB__(v7, v30))
      {
        goto LABEL_114;
      }

      sub_10073623C(v7 - v30, v93);
      *(v8 + OBJC_IVAR____TtC22SubscribePageExtension27TodayCardChinLockupListView_lockupIconViewCount) = v7 - v30;
      v26 = [v8 traitCollection];
      [v8 bounds];
      Width = CGRectGetWidth(v100);
      if ((sub_100753804() & 1) == 0)
      {
        v41 = ASKDeviceTypeGetCurrent();
        v42 = sub_100753094();
        v44 = v43;
        if (v42 != sub_100753094() || v44 != v45)
        {
          sub_100754754();
        }

        if (sub_100753804())
        {
          v46 = v30;
          v47 = [v26 preferredContentSizeCategory];
          v30 = UIContentSizeCategoryAccessibilityExtraLarge;
          v48 = UIContentSizeCategoryAccessibilityMedium;
          v49 = UIContentSizeCategoryAccessibilityExtraLarge;
          if (sub_100753964())
          {
            v30 = v46;
            if (sub_100753954())
            {
              v50 = sub_100753964();

              if (v50)
              {
                goto LABEL_62;
              }
            }

            else
            {
            }

            if (qword_100920850 == -1)
            {
LABEL_61:
              floor(sub_100230B00(v26, &xmmword_10097F3D0, 1));
LABEL_62:
              v82 = sub_10041424C(&off_100861678);

              goto LABEL_71;
            }

LABEL_122:
            swift_once();
            goto LABEL_61;
          }

LABEL_118:
          __break(1u);
        }

        else if (qword_100920850 == -1)
        {
          goto LABEL_62;
        }

        swift_once();
        goto LABEL_62;
      }

      v98 = v30;
      v30 = &stru_1008F2000;
      v36 = [v26 preferredContentSizeCategory];
      v37 = UIContentSizeCategoryAccessibilityMedium;
      v38 = UIContentSizeCategoryAccessibilityExtraLarge;
      if ((sub_100753964() & 1) == 0)
      {
        goto LABEL_115;
      }

      if (sub_100753954())
      {
        v39 = sub_100753964();

        v40 = 20.0;
        if (v39)
        {
          if (Width <= 405.0)
          {
            v40 = 10.0;
          }

          else
          {
            v40 = 16.0;
          }
        }
      }

      else
      {

        v40 = 20.0;
      }

      v51 = [v26 preferredContentSizeCategory];
      v52 = v37;
      v53 = v38;
      if ((sub_100753964() & 1) == 0)
      {
        goto LABEL_116;
      }

      if (sub_100753954())
      {
        v54 = sub_100753964();

        if (v54)
        {
          v55 = 1;
          if ((sub_100753804() & 1) == 0)
          {
            goto LABEL_51;
          }

          goto LABEL_55;
        }
      }

      else
      {
      }

      v55 = 2;
      if ((sub_100753804() & 1) == 0)
      {
LABEL_51:
        if (qword_100920850 != -1)
        {
          swift_once();
        }

        goto LABEL_67;
      }

LABEL_55:
      v56 = [v26 preferredContentSizeCategory];
      v57 = v52;
      v58 = v53;
      if ((sub_100753964() & 1) == 0)
      {
        __break(1u);
        goto LABEL_122;
      }

      if (sub_100753954())
      {
        v59 = sub_100753964();

        if (v59)
        {
          goto LABEL_67;
        }
      }

      else
      {
      }

      if (qword_100920850 != -1)
      {
        swift_once();
      }

      floor((sub_100230B00(v26, &xmmword_10097F3D0, 1) - v40 * (v55 - 1)) / v55);
LABEL_67:
      v60 = [v26 preferredContentSizeCategory];
      v30 = UIContentSizeCategoryAccessibilityExtraExtraExtraLarge;
      v61 = UIContentSizeCategoryAccessibilityExtraExtraLarge;
      v62 = UIContentSizeCategoryAccessibilityExtraExtraExtraLarge;
      if ((sub_100753964() & 1) == 0)
      {
        goto LABEL_117;
      }

      if (sub_100753954())
      {
        sub_100753964();
      }

      v82 = sub_10041424C(_swiftEmptyArrayStorage);

      v30 = v98;
LABEL_71:
      v28 = OBJC_IVAR____TtC22SubscribePageExtension27TodayCardChinLockupListView_lockupIconViews;
      swift_beginAccess();
      v84 = v8;
      v63 = *(v8 + v28);

      v83 = v17;
      swift_unknownObjectRetain();
      if (v30 == v7)
      {
LABEL_72:

        swift_unknownObjectRelease();
        v64 = v84;
        sub_100735218();
        [v64 setNeedsLayout];
        return swift_unknownObjectRelease();
      }

      v65 = 0;
      v8 = (v63 & 0xFFFFFFFFFFFFFF8);
      if (v63 < 0)
      {
        v66 = v63;
      }

      else
      {
        v66 = v63 & 0xFFFFFFFFFFFFFF8;
      }

      v81[1] = v66;
      v86 = v7;
      v87 = (v95 + 8);
      v29 = v63 >> 62;
      v94 = v63 & 0xC000000000000001;
      v95 = v63 >> 62;
      v88 = v63 & 0xFFFFFFFFFFFFFF8;
      v89 = v63;
      while (v30 < v7)
      {
        v17 = *(v97 + 8 * v30);
        if (v95)
        {
          if (v65 == sub_100754664())
          {
            goto LABEL_72;
          }
        }

        else if (v65 == v8[2])
        {
          goto LABEL_72;
        }

        if (v94)
        {

          v67 = sub_100754574();
        }

        else
        {
          v29 = v8[2];
          if (v65 >= v29)
          {
            goto LABEL_108;
          }

          v28 = *(v63 + 8 * v65 + 32);

          v67 = v28;
        }

        v68 = v67;
        if (__OFADD__(v65, 1))
        {
          goto LABEL_107;
        }

        v69 = sub_10074EF24();
        if (v69)
        {
          v28 = v69;
          v98 = v30;
          v70 = sub_10074EDC4();
          v71 = v90;
          sub_10074F294();
          sub_10074F254();
          (*v87)(v71, v91);
          sub_10074F374();
          v72 = *&v68[OBJC_IVAR____TtC22SubscribePageExtension31TodayCardChinLockupListIconView_artworkView];
          sub_10074F324();
          sub_100743364();
          [v72 setContentMode:sub_10074F184()];
          sub_100747FB4();
          sub_1007433A4();
          if (!sub_10074F1E4())
          {
            sub_10000D198();
            sub_100753E34();
          }

          sub_100743224();
          sub_1007433C4();
          sub_100738B98(&qword_100925570, &type metadata accessor for ArtworkView);
          sub_100744204();
          if (v70)
          {
            v99 = v70;
            sub_10074ECD4();
            sub_100752764();
            sub_100738B98(&qword_100928558, &type metadata accessor for Action);

            v73 = v96;
            sub_100752684();

            v74 = 0;
            v7 = v86;
            v30 = v98;
          }

          else
          {

            v74 = 1;
            v7 = v86;
            v30 = v98;
            v73 = v96;
          }

          v75 = sub_10000C518(&unk_100933080);
          (*(*(v75 - 8) + 56))(v73, v74, 1, v75);
          v76 = OBJC_IVAR____TtC22SubscribePageExtension31TodayCardChinLockupListIconView_clickAction;
          swift_beginAccess();
          sub_100195594(v73, &v68[v76]);
          swift_endAccess();
          v77 = v68;
          sub_10074EF34();
          v8 = v88;
          if (v78)
          {
            v68 = sub_100753064();
          }

          else
          {
            v68 = 0;
          }

          [v77 setAccessibilityLabel:v68];

          v63 = v89;
        }

        else
        {
        }

        ++v30;

        ++v65;
        if (v7 == v30)
        {
          goto LABEL_72;
        }
      }

      __break(1u);
LABEL_107:
      __break(1u);
LABEL_108:
      __break(1u);
    }
  }

  result = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (result >= 6)
  {
    v7 = 6;
  }

  else
  {
    v7 = result;
  }

  if (result >= v7)
  {
    goto LABEL_11;
  }

LABEL_130:
  __break(1u);
  return result;
}

void sub_10073623C(unint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = OBJC_IVAR____TtC22SubscribePageExtension27TodayCardChinLockupListView_lockupIconViews;
  swift_beginAccess();
  v7 = *&v3[v6];
  if (v7 >> 62)
  {
    if (sub_100754664() == a1)
    {
      return;
    }
  }

  else if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10) == a1)
  {
    return;
  }

  v8 = *&v3[v6];
  if (v8 >> 62)
  {
    goto LABEL_33;
  }

  v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_7:
  v10 = *&v3[v6];
  v11 = v10 >> 62;
  if (v9 >= a1)
  {
    if (!v11)
    {
      v15 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v16 = v15 - a1;
      if (!__OFSUB__(v15, a1))
      {
        goto LABEL_18;
      }

LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
      goto LABEL_41;
    }
  }

  else
  {
    if (v11)
    {
      v23 = sub_100754664();
      v13 = a1 - v23;
      if (!__OFSUB__(a1, v23))
      {
LABEL_10:
        if ((v13 & 0x8000000000000000) == 0)
        {
          for (; v13; --v13)
          {
            swift_beginAccess();
            sub_10000C518(&qword_1009485C0);
            sub_1007512B4();
            swift_endAccess();
            [v3 addSubview:v25];
            swift_beginAccess();
            v14 = v25;
            sub_100753284();
            if (*((*&v3[v6] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v3[v6] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_100753304();
            }

            sub_100753344();
            swift_endAccess();
          }

          return;
        }

        goto LABEL_40;
      }
    }

    else
    {
      v12 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v13 = a1 - v12;
      if (!__OFSUB__(a1, v12))
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  v24 = sub_100754664();
  v16 = v24 - a1;
  if (__OFSUB__(v24, a1))
  {
    goto LABEL_39;
  }

LABEL_18:
  if ((v16 & 0x8000000000000000) != 0)
  {
LABEL_41:
    __break(1u);
    return;
  }

  for (; v16; --v16)
  {
    swift_beginAccess();
    a1 = *&v3[v6];
    if (a1 >> 62)
    {
      if (!sub_100754664())
      {
LABEL_31:
        __break(1u);
LABEL_32:
        __break(1u);
LABEL_33:
        v9 = sub_100754664();
        goto LABEL_7;
      }
    }

    else if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_31;
    }

    isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
    *&v3[v6] = a1;
    if (a1 >> 62 || (isUniquelyReferenced_nonNull_bridgeObject & 1) == 0)
    {
      a1 = sub_10025F2C0(a1);
    }

    v18 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v18)
    {
      goto LABEL_32;
    }

    v19 = v18 - 1;
    v20 = *((a1 & 0xFFFFFFFFFFFFFF8) + 8 * v19 + 0x20);
    *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10) = v19;
    *&v3[v6] = a1;
    swift_endAccess();
    if (a2)
    {
      v21 = *&v20[OBJC_IVAR____TtC22SubscribePageExtension31TodayCardChinLockupListIconView_artworkView];
      sub_1007433C4();
      sub_100738B98(&qword_100925570, &type metadata accessor for ArtworkView);
      v22 = v21;
      sub_100744274();
    }

    [v20 removeFromSuperview];
    v25 = v20;
    swift_beginAccess();
    sub_10000C518(&qword_1009485C0);
    sub_1007512D4();
    swift_endAccess();
  }
}

id sub_100736604@<X0>(void *a1@<X8>)
{
  type metadata accessor for TodayCardChinLockupListIconView(0);
  result = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *a1 = result;
  return result;
}

uint64_t sub_100736644()
{
  v2 = v0;
  ObjectType = swift_getObjectType();
  v4 = sub_100750354();
  v63 = *(v4 - 8);
  *&v5 = __chkstk_darwin(v4).n128_u64[0];
  v7 = &v59.i8[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v69[0].receiver = v2;
  v69[0].super_class = ObjectType;
  [(objc_super *)v69 layoutSubviews];
  v8 = [v2 traitCollection];
  [v2 bounds];
  Width = CGRectGetWidth(v72);
  v62 = OBJC_IVAR____TtC22SubscribePageExtension27TodayCardChinLockupListView_sizeCategory;
  v10 = v2[OBJC_IVAR____TtC22SubscribePageExtension27TodayCardChinLockupListView_sizeCategory];
  v61 = OBJC_IVAR____TtC22SubscribePageExtension27TodayCardChinLockupListView_isExpanded;
  v11 = v2[OBJC_IVAR____TtC22SubscribePageExtension27TodayCardChinLockupListView_isExpanded];
  v12 = sub_100753804();
  v64 = v4;
  if (v12)
  {
    v11 = &stru_1008F2000;
    v13 = [v8 preferredContentSizeCategory];
    LOBYTE(v10) = UIContentSizeCategoryAccessibilityExtraLarge;
    v14 = UIContentSizeCategoryAccessibilityMedium;
    v15 = UIContentSizeCategoryAccessibilityExtraLarge;
    if (sub_100753964())
    {
      if (sub_100753954())
      {
        v16 = sub_100753964();

        v17 = 20.0;
        v18 = 10.0;
        if (Width > 405.0)
        {
          v18 = 16.0;
        }

        if (v16)
        {
          v1 = v18;
        }

        else
        {
          v1 = 20.0;
        }
      }

      else
      {

        v1 = 20.0;
      }

      v31 = [v8 preferredContentSizeCategory];
      v32 = v14;
      v33 = v15;
      if (sub_100753964())
      {
        if (sub_100753954())
        {
          v34 = sub_100753964();

          if (v34)
          {
            v10 = 1;
            if ((sub_100753804() & 1) == 0)
            {
              goto LABEL_29;
            }

LABEL_33:
            v35 = [v8 preferredContentSizeCategory];
            v36 = v32;
            v37 = v33;
            if (sub_100753964())
            {
              if (sub_100753954())
              {
                v38 = sub_100753964();

                if (v38)
                {
                  if (Width <= 405.0)
                  {
                    v24 = 68.0;
                  }

                  else
                  {
                    v24 = 120.0;
                  }

LABEL_54:
                  v25 = v24;
LABEL_55:
                  v47 = [v8 v11[55].attr];
                  v48 = UIContentSizeCategoryAccessibilityExtraExtraLarge;
                  v49 = UIContentSizeCategoryAccessibilityExtraExtraExtraLarge;
                  if (sub_100753964())
                  {
                    if (sub_100753954())
                    {
                      v50 = sub_100753964();

                      if (v50)
                      {
                        v44 = 1;
LABEL_61:
                        v43 = sub_10041424C(_swiftEmptyArrayStorage);

                        v46 = v1;
                        v45 = v1;
                        v59 = xmmword_1007D89C0;
                        v60 = xmmword_1007D89C0;
                        goto LABEL_62;
                      }
                    }

                    else
                    {
                    }

                    v44 = 0;
                    goto LABEL_61;
                  }

                  goto LABEL_67;
                }
              }

              else
              {
              }

              if (qword_100920850 != -1)
              {
                swift_once();
              }

              v24 = floor((sub_100230B00(v8, &xmmword_10097F3D0, 1) - v1 * (v10 - 1)) / v10);
              goto LABEL_54;
            }

            __break(1u);
            goto LABEL_72;
          }
        }

        else
        {
        }

        v10 = 2;
        if ((sub_100753804() & 1) == 0)
        {
LABEL_29:
          if (qword_100920850 == -1)
          {
LABEL_30:
            v25 = *(&xmmword_10097F3D0 + 1);
            v24 = *&xmmword_10097F3D0;
            goto LABEL_55;
          }

LABEL_70:
          swift_once();
          goto LABEL_30;
        }

        goto LABEL_33;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
LABEL_67:
    __break(1u);
    goto LABEL_68;
  }

  v19 = ASKDeviceTypeGetCurrent();
  v20 = sub_100753094();
  v22 = v21;
  if (v20 == sub_100753094() && v22 == v23)
  {

    v1 = 16.0;
    if ((sub_100753804() & 1) == 0)
    {
      goto LABEL_12;
    }

LABEL_18:
    v27 = [v8 preferredContentSizeCategory];
    v28 = UIContentSizeCategoryAccessibilityMedium;
    v29 = UIContentSizeCategoryAccessibilityExtraLarge;
    if ((sub_100753964() & 1) == 0)
    {
      __break(1u);
      goto LABEL_70;
    }

    if (sub_100753954())
    {
      v30 = sub_100753964();

      if (v30)
      {
        if (Width <= 405.0)
        {
          v24 = 68.0;
        }

        else
        {
          v24 = 120.0;
        }

        goto LABEL_42;
      }
    }

    else
    {
    }

    if (qword_100920850 == -1)
    {
LABEL_41:
      v24 = floor(sub_100230B00(v8, &xmmword_10097F3D0, 1));
LABEL_42:
      v25 = v24;
      goto LABEL_43;
    }

LABEL_72:
    swift_once();
    goto LABEL_41;
  }

  v26 = sub_100754754();

  if (v26)
  {
    v1 = 16.0;
  }

  else
  {
    v1 = 10.0;
  }

  if (sub_100753804())
  {
    goto LABEL_18;
  }

LABEL_12:
  if (qword_100920850 != -1)
  {
LABEL_68:
    swift_once();
  }

  v25 = *(&xmmword_10097F3D0 + 1);
  v24 = *&xmmword_10097F3D0;
LABEL_43:
  if (v10 == 6)
  {
    v39 = v11;
  }

  else
  {
    v39 = 1;
  }

  if (v39)
  {
    v40 = -1;
  }

  else
  {
    v40 = 0;
  }

  v41 = vdupq_n_s64(v40);
  v42 = vbslq_s8(v41, xmmword_1007D89B0, *&UIEdgeInsetsZero.top);
  v59 = vbslq_s8(v41, xmmword_1007D89B0, *&UIEdgeInsetsZero.bottom);
  v60 = v42;
  v43 = sub_10041424C(&off_100862EA0);

  v44 = 0;
  v45 = 22.0;
  v46 = 8.0;
  v10 = 1;
LABEL_62:
  swift_beginAccess();

  v52 = sub_100158C6C(v51);

  v53 = v2[v62];
  v54 = v2[v61];
  *&v65.receiver = v24;
  *&v65.super_class = v25;
  *&v66.receiver = v1;
  *&v66.super_class = v46;
  *&v67.receiver = v45;
  v67.super_class = v10;
  LOBYTE(v68[0]) = v44;
  *(v68 + 1) = v71[0];
  DWORD1(v68[0]) = *(v71 + 3);
  *(&v68[1] + 8) = v59;
  *(v68 + 8) = v60;
  *(&v68[2] + 1) = v43;
  *&v68[3] = v52;
  BYTE8(v68[3]) = v53;
  BYTE9(v68[3]) = v54;
  v69[5] = v68[1];
  v70[0] = v68[2];
  v69[1] = v65;
  v69[2] = v66;
  v69[3] = v67;
  v69[4] = v68[0];
  *(v70 + 10) = *(&v68[2] + 10);
  [v2 bounds];
  sub_10069242C(v2);
  sub_100738CA4(&v65);
  (*(v63 + 8))(v7, v64);
  v55 = &v2[OBJC_IVAR____TtC22SubscribePageExtension27TodayCardChinLockupListView_impressionsUpdateBlock];
  result = swift_beginAccess();
  v57 = *v55;
  if (*v55)
  {

    v57(v58);
    return sub_1000164A8(v57);
  }

  return result;
}

double sub_100736ECC()
{
  v2 = v0;
  v3 = [v0 traitCollection];
  [v2 bounds];
  Width = CGRectGetWidth(v71);
  v5 = OBJC_IVAR____TtC22SubscribePageExtension27TodayCardChinLockupListView_sizeCategory;
  v6 = v2[OBJC_IVAR____TtC22SubscribePageExtension27TodayCardChinLockupListView_sizeCategory];
  v7 = OBJC_IVAR____TtC22SubscribePageExtension27TodayCardChinLockupListView_isExpanded;
  v8 = v2[OBJC_IVAR____TtC22SubscribePageExtension27TodayCardChinLockupListView_isExpanded];
  if (sub_100753804())
  {
    v6 = &stru_1008F2000;
    v9 = [v3 preferredContentSizeCategory];
    v10 = UIContentSizeCategoryAccessibilityMedium;
    v11 = UIContentSizeCategoryAccessibilityExtraLarge;
    if (sub_100753964())
    {
      if (sub_100753954())
      {
        v12 = sub_100753964();

        v13 = 20.0;
        v14 = 10.0;
        if (Width > 405.0)
        {
          v14 = 16.0;
        }

        if (v12)
        {
          v1 = v14;
        }

        else
        {
          v1 = 20.0;
        }
      }

      else
      {

        v1 = 20.0;
      }

      v28 = [v3 preferredContentSizeCategory];
      v29 = v10;
      v30 = v11;
      if (sub_100753964())
      {
        if (sub_100753954())
        {
          v31 = sub_100753964();

          if (v31)
          {
            v8 = 1;
            if ((sub_100753804() & 1) == 0)
            {
              goto LABEL_31;
            }

LABEL_35:
            v32 = [v3 preferredContentSizeCategory];
            v33 = v29;
            v34 = v30;
            if (sub_100753964())
            {
              if (sub_100753954())
              {
                v35 = sub_100753964();

                if (v35)
                {
                  if (Width <= 405.0)
                  {
                    v22 = 68.0;
                  }

                  else
                  {
                    v22 = 120.0;
                  }

LABEL_56:
                  v23 = v22;
LABEL_57:
                  v43 = [v3 v6[55].attr];
                  v44 = UIContentSizeCategoryAccessibilityExtraExtraLarge;
                  v45 = UIContentSizeCategoryAccessibilityExtraExtraExtraLarge;
                  if (sub_100753964())
                  {
                    if (sub_100753954())
                    {
                      v46 = sub_100753964();

                      if (v46)
                      {
                        v40 = 1;
LABEL_63:
                        v39 = sub_10041424C(_swiftEmptyArrayStorage);

                        v42 = v1;
                        v41 = v1;
                        v62 = xmmword_1007D89C0;
                        v63 = xmmword_1007D89C0;
                        goto LABEL_64;
                      }
                    }

                    else
                    {
                    }

                    v40 = 0;
                    goto LABEL_63;
                  }

                  goto LABEL_73;
                }
              }

              else
              {
              }

              if (qword_100920850 != -1)
              {
                swift_once();
              }

              v22 = floor((sub_100230B00(v3, &xmmword_10097F3D0, 1) - v1 * (v8 - 1)) / v8);
              goto LABEL_56;
            }

            __break(1u);
            goto LABEL_78;
          }
        }

        else
        {
        }

        v8 = 2;
        if ((sub_100753804() & 1) == 0)
        {
LABEL_31:
          if (qword_100920850 == -1)
          {
LABEL_32:
            v23 = *(&xmmword_10097F3D0 + 1);
            v22 = *&xmmword_10097F3D0;
            goto LABEL_57;
          }

LABEL_76:
          swift_once();
          goto LABEL_32;
        }

        goto LABEL_35;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
LABEL_73:
    __break(1u);
    goto LABEL_74;
  }

  v15 = ASKDeviceTypeGetCurrent();
  v16 = sub_100753094();
  v18 = v17;
  if (v16 == sub_100753094() && v18 == v19)
  {

    v1 = 16.0;
    if ((sub_100753804() & 1) == 0)
    {
      goto LABEL_17;
    }

LABEL_20:
    v24 = [v3 preferredContentSizeCategory];
    v25 = UIContentSizeCategoryAccessibilityMedium;
    v26 = UIContentSizeCategoryAccessibilityExtraLarge;
    if ((sub_100753964() & 1) == 0)
    {
      __break(1u);
      goto LABEL_76;
    }

    if (sub_100753954())
    {
      v27 = sub_100753964();

      if (v27)
      {
        if (Width <= 405.0)
        {
          v22 = 68.0;
        }

        else
        {
          v22 = 120.0;
        }

        goto LABEL_44;
      }
    }

    else
    {
    }

    if (qword_100920850 == -1)
    {
LABEL_43:
      v22 = floor(sub_100230B00(v3, &xmmword_10097F3D0, 1));
LABEL_44:
      v23 = v22;
      goto LABEL_45;
    }

LABEL_78:
    swift_once();
    goto LABEL_43;
  }

  v21 = sub_100754754();

  if (v21)
  {
    v1 = 16.0;
  }

  else
  {
    v1 = 10.0;
  }

  if (sub_100753804())
  {
    goto LABEL_20;
  }

LABEL_17:
  if (qword_100920850 != -1)
  {
LABEL_74:
    swift_once();
  }

  v23 = *(&xmmword_10097F3D0 + 1);
  v22 = *&xmmword_10097F3D0;
LABEL_45:
  if (v6 == 6)
  {
    v36 = v8;
  }

  else
  {
    v36 = 1;
  }

  if (v36)
  {
    v37 = -1;
  }

  else
  {
    v37 = 0;
  }

  v38 = vdupq_n_s64(v37);
  v62 = vbslq_s8(v38, xmmword_1007D89B0, *&UIEdgeInsetsZero.bottom);
  v63 = vbslq_s8(v38, xmmword_1007D89B0, *&UIEdgeInsetsZero.top);
  v39 = sub_10041424C(&off_100862F38);

  v40 = 0;
  v41 = 22.0;
  v42 = 8.0;
  v8 = 1;
LABEL_64:
  swift_beginAccess();

  v48 = sub_100158C6C(v47);

  v49 = v2[v5];
  v50 = v2[v7];
  *&v64 = v22;
  *(&v64 + 1) = v23;
  *&v65 = v1;
  *(&v65 + 1) = v42;
  *&v66 = v41;
  *(&v66 + 1) = v8;
  v67[0] = v40;
  *&v67[1] = v70[0];
  *&v67[4] = *(v70 + 3);
  *&v67[24] = v62;
  *&v67[8] = v63;
  *&v67[40] = v39;
  *&v67[48] = v48;
  v67[56] = v49;
  v67[57] = v50;
  v68[4] = *&v67[16];
  v69[0] = *&v67[32];
  v68[0] = v64;
  v68[1] = v65;
  v68[2] = v66;
  v68[3] = *v67;
  *(v69 + 10) = *&v67[42];
  v51 = [v2 traitCollection];
  if (qword_100920850 != -1)
  {
    swift_once();
  }

  sub_100230B00(v51, &xmmword_10097F3D0, 1);
  sub_100753804();
  sub_1007535D4();
  sub_100753804();
  sub_1007535D4();

  v52 = [v2 traitCollection];
  sub_100751034();
  sub_10000C518(&unk_1009231A0);
  v53 = swift_allocObject();
  *(v53 + 16) = xmmword_1007A5CF0;
  *(v53 + 32) = v52;
  v54 = v52;
  v55 = sub_100751044();
  sub_10069287C(v55, v68);
  v57 = v56;
  sub_100738CA4(&v64);

  if (v2[v7] & 1) != 0 || v2[v5] != 6 || (v58 = [v2 traitCollection], v59 = sub_100753804(), v58, (v59))
  {
    v60 = [v2 traitCollection];
    sub_100230B00(v60, &xmmword_10097F3D0, 1);
    sub_100753804();
    sub_1007535D4();
    sub_100753804();
    sub_1007535D4();
  }

  return v57;
}

uint64_t sub_100737838()
{
  v1 = OBJC_IVAR____TtC22SubscribePageExtension27TodayCardChinLockupListView_lockupIconViews;
  result = swift_beginAccess();
  v3 = *(v0 + v1);
  if (v3 >> 62)
  {
    result = sub_100754664();
    v4 = result;
    if (!result)
    {
      return result;
    }
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v4)
    {
      return result;
    }
  }

  if (v4 < 1)
  {
    __break(1u);
  }

  else
  {

    v5 = 0;
    do
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v6 = sub_100754574();
      }

      else
      {
        v6 = *(v3 + 8 * v5 + 32);
      }

      v7 = v6;
      ++v5;
      v8 = *&v6[OBJC_IVAR____TtC22SubscribePageExtension31TodayCardChinLockupListIconView_artworkView];
      sub_1007433C4();
      sub_100738B98(&qword_100925570, &type metadata accessor for ArtworkView);
      v9 = v8;
      sub_100744274();
    }

    while (v4 != v5);
  }

  return result;
}

void sub_1007379A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_10000C518(&unk_100925380);
  __chkstk_darwin(v4 - 8);
  v6 = v22 - v5;
  v7 = sub_100752914();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v12 = Strong;
  swift_beginAccess();
  v13 = swift_weakLoadStrong();
  if (!v13)
  {

    return;
  }

  v14 = v13;
  sub_10000C824(a3, v27);
  sub_10000C518(&qword_1009242A0);
  sub_10074FBB4();
  if ((swift_dynamicCast() & 1) == 0 || (v15 = sub_10074FBA4(), , !v15))
  {

LABEL_18:

    return;
  }

  sub_10074BEA4();
  if (!swift_dynamicCastClass())
  {

    goto LABEL_18;
  }

  v16 = sub_10074BE94();
  v17 = v16;
  if (v16 >> 62)
  {
    v21 = v16;
    v18 = sub_100754664();
    v17 = v21;
    if (v18)
    {
      goto LABEL_8;
    }

LABEL_24:

    goto LABEL_18;
  }

  v18 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v18)
  {
    goto LABEL_24;
  }

LABEL_8:
  v22[1] = v15;
  v25 = v14;
  if (v18 >= 1)
  {
    v19 = 0;
    v26 = v17 & 0xC000000000000001;
    v23 = (v8 + 8);
    v24 = (v8 + 32);
    do
    {
      v20 = v18;
      if (v26)
      {
        sub_100754574();
      }

      else
      {
      }

      sub_10074EE94();
      if ((*(v8 + 48))(v6, 1, v7) == 1)
      {

        sub_10000C8CC(v6, &unk_100925380);
      }

      else
      {
        (*v24)(v10, v6, v7);
        [v12 frame];
        sub_100749544();

        (*v23)(v10, v7);
      }

      ++v19;
      v18 = v20;
    }

    while (v20 != v19);
    goto LABEL_24;
  }

  __break(1u);
}

void sub_100737E68()
{
  sub_100737F78();
  if (v0 <= 0x3F)
  {
    sub_10074FB54();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_100737F78()
{
  if (!qword_1009484B8)
  {
    sub_10000C724(&qword_1009484C0);
    sub_100737FE8();
    v0 = sub_1007512F4();
    if (!v1)
    {
      atomic_store(v0, &qword_1009484B8);
    }
  }
}

unint64_t sub_100737FE8()
{
  result = qword_1009484C8;
  if (!qword_1009484C8)
  {
    sub_10000C724(&qword_1009484C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009484C8);
  }

  return result;
}

uint64_t sub_100738074(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR____TtC22SubscribePageExtension27TodayCardChinLockupListView_clickActionHandler);
  v4 = *(v2 + OBJC_IVAR____TtC22SubscribePageExtension27TodayCardChinLockupListView_clickActionHandler);
  *v3 = a1;
  v3[1] = a2;
  return sub_1000164A8(v4);
}

uint64_t sub_1007380E0()
{
  swift_beginAccess();
  swift_weakAssign();
}

void (*sub_100738140(uint64_t *a1))(void **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC22SubscribePageExtension27TodayCardChinLockupListView_impressionsCalculator;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_weakLoadStrong();
  return sub_100091CAC;
}

uint64_t sub_1007381D8()
{
  v1 = (v0 + OBJC_IVAR____TtC22SubscribePageExtension27TodayCardChinLockupListView_impressionsUpdateBlock);
  swift_beginAccess();
  v2 = *v1;
  sub_10001B5AC(*v1);
  return v2;
}

uint64_t sub_100738234(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC22SubscribePageExtension27TodayCardChinLockupListView_impressionsUpdateBlock);
  swift_beginAccess();
  v6 = *v5;
  *v5 = a1;
  v5[1] = a2;
  return sub_1000164A8(v6);
}

void (*sub_1007382F4(uint64_t a1))()
{
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v3 = swift_allocObject();
  swift_weakInit();
  sub_10000C824(a1, v6);
  v4 = swift_allocObject();
  *(v4 + 16) = v2;
  *(v4 + 24) = v3;
  sub_100012160(v6, v4 + 32);
  return sub_100738C98;
}

char *sub_1007383BC(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = OBJC_IVAR____TtC22SubscribePageExtension31TodayCardChinLockupListIconView_artworkView;
  sub_1007433C4();
  *&v4[v11] = sub_1007431D4();
  v12 = OBJC_IVAR____TtC22SubscribePageExtension31TodayCardChinLockupListIconView_clickAction;
  v13 = sub_10000C518(&unk_100933080);
  (*(*(v13 - 8) + 56))(&v5[v12], 1, 1, v13);
  v21.receiver = v5;
  v21.super_class = ObjectType;
  v14 = objc_msgSendSuper2(&v21, "initWithFrame:", a1, a2, a3, a4);
  v15 = OBJC_IVAR____TtC22SubscribePageExtension31TodayCardChinLockupListIconView_artworkView;
  v16 = *&v14[OBJC_IVAR____TtC22SubscribePageExtension31TodayCardChinLockupListIconView_artworkView];
  v17 = v14;
  [v17 addSubview:v16];
  v18 = *&v14[v15];
  sub_1007432B4();

  [*&v14[v15] setUserInteractionEnabled:0];
  v19 = [objc_allocWithZone(UITapGestureRecognizer) initWithTarget:v17 action:"handleTap"];
  [v19 setDelaysTouchesBegan:1];
  [v17 addGestureRecognizer:v19];

  return v17;
}

uint64_t sub_1007386CC()
{
  v1 = sub_10000C518(&unk_100923960);
  __chkstk_darwin(v1 - 8);
  v3 = &v18 - v2;
  v4 = sub_10000C518(&qword_100933090);
  __chkstk_darwin(v4 - 8);
  v6 = &v18 - v5;
  v7 = sub_10000C518(&unk_100933080);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v18 - v9;
  v11 = OBJC_IVAR____TtC22SubscribePageExtension31TodayCardChinLockupListIconView_clickAction;
  swift_beginAccess();
  sub_1001E899C(v0 + v11, v6);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    v12 = &qword_100933090;
    v13 = v6;
    return sub_10000C8CC(v13, v12);
  }

  (*(v8 + 32))(v10, v6, v7);
  sub_1007455B4();
  v14 = sub_10000C518(&unk_100923210);
  sub_1007526C4();

  v15 = *(v14 - 8);
  if ((*(v15 + 48))(v3, 1, v14) == 1)
  {
    (*(v8 + 8))(v10, v7);
    v12 = &unk_100923960;
    v13 = v3;
    return sub_10000C8CC(v13, v12);
  }

  sub_1007455C4();
  v17 = sub_1007455B4();
  sub_1003C0E00(v18, 1, v17, v3);

  (*(v8 + 8))(v10, v7);

  return (*(v15 + 8))(v3, v14);
}

void sub_100738AB0()
{
  sub_1001E5A54();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_100738B98(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100738BE0()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100738C18()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100738C50()
{

  sub_10000C620(v0 + 32);

  return _swift_deallocObject(v0, 72, 7);
}

void sub_100738CF8()
{
  v1 = sub_10000C518(&qword_1009484C0);
  __chkstk_darwin(v1);
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension27TodayCardChinLockupListView_lockupIconViews) = _swiftEmptyArrayStorage;
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension27TodayCardChinLockupListView_lockupIconViewCount) = 0;
  type metadata accessor for TodayCardChinLockupListIconView(0);
  sub_100750624();
  sub_100737FE8();
  sub_1007512E4();
  swift_weakInit();
  v2 = (v0 + OBJC_IVAR____TtC22SubscribePageExtension27TodayCardChinLockupListView_impressionsUpdateBlock);
  *v2 = 0;
  v2[1] = 0;
  v3 = OBJC_IVAR____TtC22SubscribePageExtension27TodayCardChinLockupListView_todayCardStyle;
  v4 = enum case for TodayCard.Style.light(_:);
  v5 = sub_10074FB54();
  (*(*(v5 - 8) + 104))(v0 + v3, v4, v5);
  v6 = (v0 + OBJC_IVAR____TtC22SubscribePageExtension27TodayCardChinLockupListView_clickActionHandler);
  *v6 = 0;
  v6[1] = 0;
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension27TodayCardChinLockupListView_isExpanded) = 0;
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension27TodayCardChinLockupListView_sizeCategory) = 7;
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension27TodayCardChinLockupListView_wantsCardConsistentMargins) = 0;
  sub_100754644();
  __break(1u);
}

void sub_100738EB4()
{
  sub_100016898();
  if (v0 <= 0x3F)
  {
    swift_initClassMetadata2();
  }
}

void sub_100738FA8(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = sub_10000C518(&unk_100928A40);
  __chkstk_darwin(v6 - 8);
  v8 = v94 - v7;
  v9 = sub_100754724();
  v10 = *(v9 - 1);
  *&v11 = __chkstk_darwin(v9).n128_u64[0];
  v13 = v94 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v2[qword_100983438] != 1)
  {
    return;
  }

  v14 = [v2 traitCollection];
  v15 = sub_1007537F4();

  v16 = 20.0;
  v17 = 0.0;
  v18 = 0.0;
  v19 = 20.0;
  if (a2)
  {
    v17 = *&v3[qword_100983440];
    v16 = *&v3[qword_100983440 + 8];
    v18 = *&v3[qword_100983440 + 16];
    v19 = *&v3[qword_100983440 + 24];
  }

  if (v15)
  {
    v20 = v19;
  }

  else
  {
    v20 = v16;
  }

  v108 = v20;
  v22 = *a1;
  v21 = *(a1 + 8);
  v24 = *(a1 + 16);
  v23 = *(a1 + 24);
  v114.origin.x = *a1;
  v114.origin.y = v21;
  v114.size.width = v24;
  v114.size.height = v23;
  Width = CGRectGetWidth(v114);
  v106 = v23;
  v107 = Width - v16 - v19;
  v104 = v21;
  v105 = v22;
  v115.origin.x = v22;
  v115.origin.y = v21;
  v103 = v24;
  v115.size.width = v24;
  v115.size.height = v23;
  v26 = v17;
  v27 = CGRectGetHeight(v115) - v17 - v18;
  v28 = v15;
  v29 = *&v3[qword_1009485D8];
  v30 = [v29 text];
  v101 = v28;
  if (v30)
  {

    v31 = v107;
    [v29 sizeThatFits:{v107, v27}];
    v17 = v32;
    v102 = v33;
    if (v28)
    {
      v116.origin.x = v19;
      v34 = v26;
      v116.origin.y = v26;
      v116.size.width = v31;
      v116.size.height = v27;
      MinX = CGRectGetMaxX(v116) - v17;
      v35 = v17;
      v36 = v17 + 30.0;
      v37 = 0.0;
    }

    else
    {
      v117.origin.x = v16;
      v34 = v26;
      v117.origin.y = v26;
      v117.size.width = v31;
      v117.size.height = v27;
      MinX = CGRectGetMinX(v117);
      v35 = v17;
      v37 = v17 + 30.0;
      v36 = v17 + 30.0;
    }

    v39 = v108 + v37;
    v38 = v31 - v36;
  }

  else
  {
    v102 = 0.0;
    MinX = 0.0;
    v35 = 0.0;
    v34 = v17;
    v38 = v107;
    v39 = v108;
  }

  if (qword_100921F10 != -1)
  {
    swift_once();
  }

  v40 = sub_100750B04();
  sub_10000D0FC(v40, qword_1009833F0);
  sub_1007502D4();
  v99 = v40;
  sub_100750564();
  v42 = v41;
  v44 = *(v10 + 8);
  v43 = v10 + 8;
  v97 = v44;
  v44(v13, v9);
  v107 = *&v3[qword_1009485E0];
  v45 = [*&v107 attributedText];
  v100 = v35;
  if (v45)
  {
    v46 = v45;
    v94[0] = v29;
    v94[1] = v43;
    v95 = v9;
    v96 = a1;
    v47 = [v3 traitCollection];
    v9 = [objc_allocWithZone(NSMutableAttributedString) initWithAttributedString:v46];
    v98 = COERCE_DOUBLE([v46 length]);
    v48 = swift_allocObject();
    *(v48 + 16) = 0;
    *(v48 + 24) = v47;
    *(v48 + 32) = v9;
    *(v48 + 40) = 1;
    a1 = swift_allocObject();
    *(a1 + 16) = sub_100047814;
    *(a1 + 24) = v48;
    v112 = sub_1000B18A8;
    v113 = a1;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100047044;
    v111 = &unk_100882F98;
    v49 = _Block_copy(aBlock);
    v29 = v113;
    v50 = v47;
    v108 = COERCE_DOUBLE(v9);

    [v46 enumerateAttributesInRange:0 options:*&v98 usingBlock:{0x100000, v49}];

    _Block_release(v49);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
LABEL_34:
      swift_once();
      goto LABEL_28;
    }

    a1 = v96;
    v9 = v95;
    v29 = v94[0];
  }

  else
  {
    v108 = 0.0;
  }

  v98 = v42;
  if (qword_1009213F0 != -1)
  {
    swift_once();
  }

  v52 = sub_100750534();
  v53 = sub_10000D0FC(v52, qword_100981908);
  v54 = *(v52 - 8);
  (*(v54 + 16))(v8, v53, v52);
  (*(v54 + 56))(v8, 0, 1, v52);
  v55 = sub_10074F3F4();
  v111 = v55;
  v112 = sub_1001FC0C4();
  v56 = sub_10000D134(aBlock);
  (*(*(v55 - 8) + 104))(v56, enum case for Feature.measurement_with_labelplaceholder(_:), v55);
  sub_10074FC74();
  sub_10000C620(aBlock);
  sub_10074CCA4();
  v17 = v57;
  v35 = v58;
  sub_10000C8CC(v8, &unk_100928A40);
  v59 = v39;
  v60 = v34;
  v61 = v38;
  v62 = v27;
  if (v101)
  {
    MaxX = CGRectGetMaxX(*&v59);
    v64 = v34;
    v34 = MaxX - v17;
  }

  else
  {
    v65 = CGRectGetMinX(*&v59);
    v64 = v34;
    v34 = v65;
  }

  v8 = *&v107;
  isEscapingClosureAtFileLocation = v99;
  v66 = v39;
  v67 = v38;
  v68 = v27;
  MinY = CGRectGetMinY(*(&v64 - 1));
  if (qword_100921F08 != -1)
  {
    swift_once();
  }

  sub_10000D0FC(isEscapingClosureAtFileLocation, qword_1009833D8);
  sub_100750584();
  v27 = MinY + v70;
  v50 = &selRef_initWithTitle_style_target_action_;
  [v8 setFrame:{v34, v27, v17, v35}];
  v71 = 0.0;
  v118.origin.y = 0.0;
  v118.origin.x = MinX;
  v39 = v100;
  v118.size.width = v100;
  v38 = v102;
  v118.size.height = v102;
  if (CGRectIsEmpty(v118))
  {
    goto LABEL_29;
  }

  if (qword_100921F18 != -1)
  {
    goto LABEL_34;
  }

LABEL_28:
  sub_10000D0FC(isEscapingClosureAtFileLocation, qword_100983408);
  sub_1007502D4();
  sub_100750564();
  v73 = v72;
  v97(v13, v9);
  v119.origin.x = v34;
  v119.origin.y = v27;
  v119.size.width = v17;
  v119.size.height = v35;
  v74 = CGRectGetMinY(v119);
  [v8 firstBaselineFromTop];
  v76 = v74 + v75;
  [v29 firstBaselineFromTop];
  v71 = v73 + v76 - v77;
LABEL_29:
  v78 = MinX;
  [v29 v50[72]];
  v120.origin.x = v78;
  v120.origin.y = v71;
  v120.size.width = v39;
  v120.size.height = v38;
  MaxY = CGRectGetMaxY(v120);
  [v29 lastBaselineFromBottom];
  v81 = MaxY - v80;
  v121.origin.x = v34;
  v121.origin.y = v27;
  v121.size.width = v17;
  v121.size.height = v35;
  v82 = CGRectGetMaxY(v121);
  [v8 lastBaselineFromBottom];
  v84 = v82 - v83;
  if (v81 > v84)
  {
    v84 = v81;
  }

  v85 = v98 + v84;
  v87 = v104;
  v86 = v105;
  v122.origin.x = v105;
  v122.origin.y = v104;
  v88 = v103;
  v122.size.width = v103;
  v89 = v106;
  v122.size.height = v106;
  v90 = CGRectGetMinX(v122);
  v123.origin.x = v86;
  v123.origin.y = v87;
  v123.size.width = v88;
  v123.size.height = v89;
  v91 = CGRectGetMaxY(v123) - v85;
  v124.origin.x = v86;
  v124.origin.y = v87;
  v124.size.width = v88;
  v124.size.height = v89;
  v125.size.width = CGRectGetWidth(v124);
  v125.origin.x = v90;
  v125.origin.y = v91;
  v125.size.height = v85;
  v126 = CGRectIntegral(v125);
  v92 = *&v3[qword_1009485D0];
  [v92 v50[72]];
  [v92 frame];
  Height = CGRectGetHeight(v127);

  *(a1 + 24) = v89 - Height;
}

uint64_t sub_100739A00(uint64_t a1, uint64_t *a2)
{
  v3 = sub_100750304();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v13[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100750B04();
  sub_100039C50(v7, a2);
  sub_10000D0FC(v7, a2);
  if (qword_1009213F0 != -1)
  {
    swift_once();
  }

  v8 = sub_100750534();
  v9 = sub_10000D0FC(v8, qword_100981908);
  (*(*(v8 - 8) + 16))(v6, v9, v8);
  (*(v4 + 104))(v6, enum case for FontSource.useCase(_:), v3);
  v13[3] = v3;
  v13[4] = &protocol witness table for FontSource;
  v10 = sub_10000D134(v13);
  (*(v4 + 16))(v10, v6, v3);
  sub_100750B14();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_100739BDC()
{
  sub_100016C60(0, &qword_100923500);
  result = sub_100753DF4();
  qword_100983420 = result;
  return result;
}

void *sub_100739C20(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v55 = swift_isaMask & *v4;
  v10 = sub_10074AB44();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v56 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10000C518(&unk_100928A40);
  __chkstk_darwin(v13 - 8);
  v15 = &v51 - v14;
  v16 = qword_1009485C8;
  sub_100746ED4();
  *&v5[v16] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v17 = qword_100983428;
  v18 = sub_1007469A4();
  (*(*(v18 - 8) + 56))(&v5[v17], 1, 1, v18);
  v5[qword_100983430] = 0;
  v5[qword_100983438] = 0;
  v19 = &v5[qword_100983440];
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  *v19 = UIEdgeInsetsZero.top;
  v19[1] = left;
  v19[2] = bottom;
  v19[3] = right;
  v5[qword_100983448] = 0;
  v23 = [objc_allocWithZone(UIView) init];
  *&v5[qword_1009485D0] = v23;
  if (qword_1009213F8 != -1)
  {
    swift_once();
  }

  v24 = sub_100750534();
  v25 = sub_10000D0FC(v24, qword_100981920);
  v26 = *(v24 - 8);
  v54 = *(v26 + 16);
  v54(v15, v25, v24);
  v53 = *(v26 + 56);
  v53(v15, 0, 1, v24);
  v27 = enum case for DirectionalTextAlignment.none(_:);
  v52 = *(v11 + 104);
  v52(v56, enum case for DirectionalTextAlignment.none(_:), v10);
  v28 = sub_100745C84();
  v51 = v10;
  v29 = v28;
  v30 = objc_allocWithZone(v28);
  *&v5[qword_1009485D8] = sub_100745C74();
  if (qword_1009213F0 != -1)
  {
    swift_once();
  }

  v31 = sub_10000D0FC(v24, qword_100981908);
  v54(v15, v31, v24);
  v53(v15, 0, 1, v24);
  v52(v56, v27, v51);
  v32 = objc_allocWithZone(v29);
  *&v5[qword_1009485E0] = sub_100745C74();
  v33 = type metadata accessor for FramedMediaCollectionViewCell();
  v57.receiver = v5;
  v57.super_class = v33;
  v34 = objc_msgSendSuper2(&v57, "initWithFrame:", a1, a2, a3, a4);
  v35 = [v34 contentView];
  [v35 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];

  v36 = [v34 contentView];
  v37 = qword_1009485C8;
  [v36 addSubview:*(v34 + qword_1009485C8)];

  v38 = qword_1009485D0;
  v39 = *(v34 + qword_1009485D0);
  sub_100016C60(0, &qword_100923500);
  v40 = v39;
  v41 = sub_100753E34();
  [v40 setBackgroundColor:v41];

  [*(v34 + v38) setHidden:1];
  [*(v34 + v37) addSubview:*(v34 + v38)];
  v42 = qword_1009485D8;
  v43 = *(v34 + qword_1009485D8);
  v44 = sub_100753DD4();
  [v43 setTextColor:v44];

  [*(v34 + v38) addSubview:*(v34 + v42)];
  v45 = qword_1009485E0;
  v46 = qword_100921F20;
  v47 = *(v34 + qword_1009485E0);
  if (v46 != -1)
  {
    swift_once();
  }

  [v47 setTextColor:qword_100983420];

  [*(v34 + v45) setTextAlignment:4];
  [*(v34 + v38) addSubview:*(v34 + v45)];
  v48 = *((swift_isaMask & *v34) + 0x130);
  v49 = *(v34 + v37);
  v48();

  return v34;
}

uint64_t sub_10073A318()
{
  v1 = v0;
  v16.receiver = v0;
  v16.super_class = type metadata accessor for FramedMediaCollectionViewCell();
  objc_msgSendSuper2(&v16, "layoutSubviews");
  v2 = *(v0 + qword_1009485C8);
  v3 = [v0 contentView];
  sub_100016C60(0, &qword_100922300);
  sub_1007477B4();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  [v2 setFrame:{v5, v7, v9, v11}];
  [v2 frame];
  v15[0] = 0;
  v15[1] = 0;
  v15[2] = v12;
  v15[3] = v13;
  sub_100738FA8(v15, *(v1 + qword_100983448));
  return (*((swift_isaMask & *v1) + 0x128))(v15);
}

void sub_10073A484(void *a1)
{
  v1 = a1;
  sub_10073A318();
}

id sub_10073A4CC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FramedMediaCollectionViewCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_10073A5C0()
{
  v1 = qword_1009485C8;
  sub_100746ED4();
  *(v0 + v1) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v2 = qword_100983428;
  v3 = sub_1007469A4();
  (*(*(v3 - 8) + 56))(v0 + v2, 1, 1, v3);
  *(v0 + qword_100983430) = 0;
  *(v0 + qword_100983438) = 0;
  v4 = (v0 + qword_100983440);
  v5 = *&UIEdgeInsetsZero.bottom;
  *v4 = *&UIEdgeInsetsZero.top;
  v4[1] = v5;
  *(v0 + qword_100983448) = 0;
  sub_100754644();
  __break(1u);
}

uint64_t sub_10073A6D0()
{

  return _swift_deallocObject(v0, 41, 7);
}

uint64_t sub_10073A728(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

double sub_10073A78C()
{
  v0 = sub_10074F704();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100742954();
  sub_10073A954(&qword_100927F90, &type metadata accessor for AppPromotion);
  sub_1007468B4();
  v4 = v13;
  if (!v13)
  {
    return 0.0;
  }

  swift_getKeyPath();
  sub_100746914();

  sub_10074F674();
  v6 = v5;
  (*(v1 + 8))(v3, v0);
  v7 = sub_10007DC04();
  ObjectType = swift_getObjectType();
  swift_unknownObjectRetain();
  sub_1005867E4(v6, v4, v7, ObjectType);
  v10 = v9;
  swift_unknownObjectRelease_n();

  return v10;
}

uint64_t sub_10073A954(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10073A9A4()
{
  v0 = sub_10000C518(&unk_100947360);
  sub_100039C50(v0, qword_100983450);
  sub_10000D0FC(v0, qword_100983450);
  return sub_100752664();
}

char *sub_10073AA1C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = OBJC_IVAR____TtC22SubscribePageExtension23DebugMenuViewController_cellRegistrations;
  type metadata accessor for DebugSettingCellRegistrations();
  swift_allocObject();
  *&v4[v11] = sub_100080178();
  *&v4[OBJC_IVAR____TtC22SubscribePageExtension23DebugMenuViewController_diffableDataSource] = 0;
  v12 = OBJC_IVAR____TtC22SubscribePageExtension23DebugMenuViewController_userDefaults;
  *&v5[v12] = [objc_opt_self() standardUserDefaults];
  v13 = OBJC_IVAR____TtC22SubscribePageExtension23DebugMenuViewController_notificationCenter;
  *&v5[v13] = [objc_opt_self() defaultCenter];
  *&v5[OBJC_IVAR____TtC22SubscribePageExtension23DebugMenuViewController_debugSections] = _swiftEmptyArrayStorage;
  *&v5[OBJC_IVAR____TtC22SubscribePageExtension23DebugMenuViewController_objectGraph] = a1;
  v14 = objc_allocWithZone(UICollectionViewFlowLayout);

  v15 = [v14 init];
  v28.receiver = v5;
  v28.super_class = ObjectType;
  v16 = objc_msgSendSuper2(&v28, "initWithCollectionViewLayout:", v15);

  if (a3)
  {
    v17 = v16;
    sub_10073E4F8(a2, a3);

    v18 = a4;
  }

  else
  {
    sub_10000C518(&unk_1009231A0);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_1007A5CF0;
    v19 = objc_allocWithZone(type metadata accessor for DebugMenuSettings());
    swift_unknownObjectWeakInit();
    swift_unknownObjectWeakAssign();
    v27.receiver = v19;
    v27.super_class = type metadata accessor for DebugSettingsProvider();
    v20 = v16;
    *(v18 + 32) = objc_msgSendSuper2(&v27, "init");
  }

  v21 = sub_10073E150(v18, a1);

  *&v16[OBJC_IVAR____TtC22SubscribePageExtension23DebugMenuViewController_debugSections] = v21;

  v22 = v16;
  if (a3)
  {
  }

  v23 = sub_100753064();

  [v16 setTitle:v23];

  v24 = [v16 navigationItem];
  v25 = [objc_allocWithZone(UIBarButtonItem) initWithBarButtonSystemItem:24 target:v16 action:"dismissFrom:"];

  [v24 setRightBarButtonItem:v25];

  return v16;
}

id sub_10073AD4C()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_100751504();
  *&v4 = __chkstk_darwin(v3).n128_u64[0];
  v17.receiver = v1;
  v17.super_class = ObjectType;
  objc_msgSendSuper2(&v17, "viewDidLoad", v4);
  v5 = sub_10073AFE8();
  v6 = OBJC_IVAR____TtC22SubscribePageExtension23DebugMenuViewController_diffableDataSource;
  v7 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension23DebugMenuViewController_diffableDataSource];
  *&v1[OBJC_IVAR____TtC22SubscribePageExtension23DebugMenuViewController_diffableDataSource] = v5;

  result = [v1 collectionView];
  if (result)
  {
    v9 = result;
    v10 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v11 = objc_allocWithZone(UICollectionViewCompositionalLayout);
    aBlock[4] = sub_10073EE4C;
    aBlock[5] = v10;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1002B6430;
    aBlock[3] = &unk_100883128;
    v12 = _Block_copy(aBlock);

    v13 = [v11 initWithSectionProvider:v12];
    _Block_release(v12);

    [v9 setCollectionViewLayout:v13];

    result = [v1 collectionView];
    if (result)
    {
      v14 = result;
      [result setDataSource:*&v1[v6]];

      [*&v1[OBJC_IVAR____TtC22SubscribePageExtension23DebugMenuViewController_notificationCenter] addObserver:v1 selector:"userDefaultsDidChange:" name:NSUserDefaultsDidChangeNotification object:*&v1[OBJC_IVAR____TtC22SubscribePageExtension23DebugMenuViewController_userDefaults]];
      sub_10073B2A0();
      v15 = UIContentSizeCategoryLarge;
      sub_1007536D4();
      sub_1007514D4();
      return sub_1007536E4();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_10073AFE8()
{
  v1 = sub_10000C518(&qword_100936328);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v15 - v6;
  sub_100753094();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_100016C60(0, &qword_100925390);
  sub_100753684();
  result = [v0 collectionView];
  if (result)
  {
    v9 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v10 = swift_allocObject();
    *(v10 + 16) = sub_10073EE5C;
    *(v10 + 24) = v9;
    v11 = objc_allocWithZone(sub_10000C518(&qword_1009486F8));
    v12 = sub_100751884();
    (*(v2 + 16))(v4, v7, v1);
    v13 = (*(v2 + 80) + 16) & ~*(v2 + 80);
    v14 = swift_allocObject();
    (*(v2 + 32))(v14 + v13, v4, v1);
    sub_100751894();
    (*(v2 + 8))(v7, v1);
    return v12;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10073B2A0()
{
  v1 = v0;
  v2 = sub_10000C518(&qword_1009486D0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v30 - v4;
  v42 = sub_10000C518(&qword_1009486D8);
  v31 = *(v42 - 8);
  __chkstk_darwin(v42);
  v7 = &v30 - v6;
  type metadata accessor for DebugSection();
  v8 = type metadata accessor for DebugSetting();
  sub_10073EF5C(&qword_1009486E8, type metadata accessor for DebugSection);
  v9 = sub_10073EF5C(&qword_1009486F0, type metadata accessor for DebugSetting);
  v43 = v7;
  v40 = v9;
  v41 = v8;
  result = sub_100751784();
  v11 = OBJC_IVAR____TtC22SubscribePageExtension23DebugMenuViewController_debugSections;
  v12 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension23DebugMenuViewController_debugSections);
  if (v12 >> 62)
  {
    goto LABEL_45;
  }

  v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v36 = v1;
  if (v13)
  {
    if (v13 < 1)
    {
      __break(1u);
LABEL_49:
      __break(1u);
      goto LABEL_50;
    }

    v44 = v11;
    v45 = v3;

    v14 = 0;
    v46 = xmmword_1007A5CF0;
    do
    {
      if ((v12 & 0xC000000000000001) != 0)
      {
        v15 = sub_100754574();
      }

      else
      {
        v15 = *(v12 + 8 * v14 + 32);
      }

      ++v14;
      sub_10000C518(&unk_1009231A0);
      v16 = swift_allocObject();
      *(v16 + 16) = v46;
      *(v16 + 32) = v15;

      v17._rawValue = v16;
      sub_100751724(v17);
    }

    while (v13 != v14);

    v1 = v36;
    v11 = v44;
    v3 = v45;
  }

  v39 = OBJC_IVAR____TtC22SubscribePageExtension23DebugMenuViewController_diffableDataSource;
  v18 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension23DebugMenuViewController_diffableDataSource);
  if (!v18)
  {
LABEL_50:
    __break(1u);
    return result;
  }

  v19 = v18;
  sub_1007518C4();

  v12 = *(v1 + v11);
  if (v12 >> 62)
  {
    v11 = sub_100754664();
    if (v11)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v11 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v11)
    {
LABEL_14:
      v32 = v12 + 32;
      v33 = v12 & 0xFFFFFFFFFFFFFF8;
      v37 = (v3 + 8);
      v38 = v12 & 0xC000000000000001;

      v3 = 0;
      v46 = xmmword_1007A5CF0;
      v34 = v11;
      v35 = v12;
      while (1)
      {
        if (v38)
        {
          v20 = sub_100754574();
          v21 = __OFADD__(v3++, 1);
          if (v21)
          {
            goto LABEL_42;
          }
        }

        else
        {
          if (v3 >= *(v33 + 16))
          {
            goto LABEL_44;
          }

          v20 = *(v32 + 8 * v3);

          v21 = __OFADD__(v3++, 1);
          if (v21)
          {
LABEL_42:
            __break(1u);
LABEL_43:
            __break(1u);
LABEL_44:
            __break(1u);
LABEL_45:
            result = sub_100754664();
            v13 = result;
            goto LABEL_3;
          }
        }

        result = sub_100751944();
        v22 = *(v20 + 48);
        if (v22 >> 62)
        {
          result = sub_100754664();
          v23 = result;
          if (!result)
          {
            goto LABEL_36;
          }
        }

        else
        {
          v23 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (!v23)
          {
            goto LABEL_36;
          }
        }

        if (v23 < 1)
        {
          goto LABEL_43;
        }

        v44 = v20;
        v45 = v3;

        for (i = 0; i != v23; ++i)
        {
          if ((v22 & 0xC000000000000001) != 0)
          {
            v25 = sub_100754574();
          }

          else
          {
            v25 = *(v22 + 8 * i + 32);
          }

          sub_10000C518(&unk_1009231A0);
          v26 = swift_allocObject();
          *(v26 + 16) = v46;
          *(v26 + 32) = v25;
          v47 = 0;

          sub_100751914();

          type metadata accessor for MenuDebugSetting();
          v27 = swift_dynamicCastClass();
          if (v27)
          {
            if (*(v27 + 72) >> 62)
            {

              sub_100754654();
            }

            else
            {
              swift_bridgeObjectRetain_n();

              sub_100754764();
            }

            v47 = v25;
            sub_100751914();
          }

          else
          {
          }
        }

        v12 = v35;
        v1 = v36;
        v11 = v34;
        v20 = v44;
        v3 = v45;
LABEL_36:
        v28 = *(v1 + v39);
        if (!v28)
        {
          goto LABEL_49;
        }

        v47 = v20;
        v29 = v28;
        sub_1007518D4();

        (*v37)(v5, v2);

        if (v3 == v11)
        {

          return (*(v31 + 8))(v43, v42);
        }
      }
    }
  }

  return (*(v31 + 8))(v43, v42);
}

id sub_10073B910()
{
  ObjectType = swift_getObjectType();
  [*&v0[OBJC_IVAR____TtC22SubscribePageExtension23DebugMenuViewController_notificationCenter] removeObserver:v0];
  v3.receiver = v0;
  v3.super_class = ObjectType;
  return objc_msgSendSuper2(&v3, "dealloc");
}

void sub_10073BADC(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v42 = a2;
  v43 = a3;
  v41 = a1;
  v3 = sub_10000C518(&qword_1009486D8);
  v39 = *(v3 - 8);
  v40 = v3;
  __chkstk_darwin(v3);
  v5 = &v39 - v4;
  v6 = sub_100751994();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100751974();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1007519D4();
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v14);
  v18 = &v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 104))(v13, enum case for UICollectionLayoutListConfiguration.Appearance.insetGrouped(_:), v10, v16);
  sub_1007519A4();
  (*(v7 + 104))(v9, enum case for UICollectionLayoutListConfiguration.HeaderMode.supplementary(_:), v6);
  sub_1007519C4();
  sub_100016C60(0, &unk_10093FE00);
  v19 = sub_100753A54();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    (*(v15 + 8))(v18, v14);
    return;
  }

  v21 = v15;
  v22 = *(Strong + OBJC_IVAR____TtC22SubscribePageExtension23DebugMenuViewController_diffableDataSource);
  v23 = Strong;
  v24 = v22;

  if (!v22)
  {
    goto LABEL_16;
  }

  sub_1007518F4();

  v25 = v40;
  v26 = sub_100751774();
  (*(v39 + 8))(v5, v25);
  v27 = v14;
  if ((v26 & 0xC000000000000001) != 0)
  {
    v28 = sub_100754574();
    goto LABEL_7;
  }

  if ((v41 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_15;
  }

  if (*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10) <= v41)
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    return;
  }

  v28 = *(v26 + 8 * v41 + 32);

LABEL_7:

  v29 = *(v28 + 40);
  v30 = *(v28 + 32) & 0xFFFFFFFFFFFFLL;
  if ((v29 & 0x2000000000000000) != 0)
  {
    v30 = HIBYTE(v29) & 0xF;
  }

  if (v30)
  {
    v31 = objc_opt_self();
    v32 = [v31 fractionalWidthDimension:1.0];
    v33 = [v31 estimatedDimension:44.0];
    v34 = [objc_opt_self() sizeWithWidthDimension:v32 heightDimension:v33];

    v35 = [objc_opt_self() boundarySupplementaryItemWithLayoutSize:v34 elementKind:UICollectionElementKindSectionHeader alignment:1];
    sub_10000C518(&unk_1009231A0);
    v36 = swift_allocObject();
    *(v36 + 16) = xmmword_1007A5CF0;
    *(v36 + 32) = v35;
    sub_100016C60(0, &qword_10092E460);
    v37 = v35;
    isa = sub_100753294().super.isa;

    [v19 setBoundarySupplementaryItems:isa];

    (*(v21 + 8))(v18, v27);
  }

  else
  {
    (*(v21 + 8))(v18, v14);
  }
}

unint64_t sub_10073C044(uint64_t a1)
{
  v2 = sub_1007516E4();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10000C518(&qword_1009486D8);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v16 - v8;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v11 = result;
    v16[1] = a1;
    v12 = *(result + OBJC_IVAR____TtC22SubscribePageExtension23DebugMenuViewController_diffableDataSource);
    if (v12)
    {
      v13 = v12;
      sub_1007518F4();

      v14 = sub_100751774();
      (*(v7 + 8))(v9, v6);
      result = sub_100741804();
      if ((v14 & 0xC000000000000001) != 0)
      {
        sub_100754574();
        goto LABEL_7;
      }

      if ((result & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (result < *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {

LABEL_7:

        sub_100751644();

        sub_1007516C4();
        v17[3] = v2;
        v17[4] = &protocol witness table for UIListContentConfiguration;
        v15 = sub_10000D134(v17);
        (*(v3 + 16))(v15, v5, v2);
        sub_1007538E4();

        return (*(v3 + 8))(v5, v2);
      }

      __break(1u);
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_10073C2E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;

    v8 = sub_10008036C(a1, a3, a2);

    if (v8)
    {
      return v8;
    }
  }

  sub_100754534(55);
  v10._object = 0x800000010078E210;
  v10._countAndFlagsBits = 0xD000000000000035;
  sub_1007531B4(v10);
  sub_1007417F4();
  sub_10073EF5C(&qword_100948700, &type metadata accessor for IndexPath);
  v11._countAndFlagsBits = sub_100754714();
  sub_1007531B4(v11);

  result = sub_100754644();
  __break(1u);
  return result;
}

void sub_10073C460()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = [Strong collectionView];

    if (v2)
    {
      [v2 reloadData];
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_10073C544(void *a1, uint64_t a2)
{
  v145 = sub_10000C518(&qword_1009486D0);
  v142 = *(v145 - 8);
  __chkstk_darwin(v145);
  v144 = &v135 - v5;
  v148 = sub_10000C518(&qword_1009486D8);
  v146 = *(v148 - 8);
  __chkstk_darwin(v148);
  v143 = &v135 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v156 = &v135 - v8;
  __chkstk_darwin(v9);
  v160 = &v135 - v10;
  v154 = sub_100742CF4();
  v152 = *(v154 - 8);
  __chkstk_darwin(v154);
  v155 = &v135 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v151 = sub_1007493D4();
  v150 = *(v151 - 8);
  __chkstk_darwin(v151);
  v153 = &v135 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10074A304();
  v149 = *(v13 - 8);
  __chkstk_darwin(v13);
  v158 = &v135 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100752614();
  __chkstk_darwin(v15 - 8);
  v157 = &v135 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_10000C518(&qword_10092C1F0);
  __chkstk_darwin(v17 - 8);
  v19 = &v135 - v18;
  v20 = sub_10000C518(&unk_100923970);
  __chkstk_darwin(v20 - 8);
  v22 = &v135 - v21;
  v23 = sub_10074F4D4();
  v24 = *(v23 - 8);
  __chkstk_darwin(v23);
  v26 = &v135 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_10000C518(&unk_100923960);
  __chkstk_darwin(v27 - 8);
  v29 = &v135 - v28;
  v162 = v2;
  v147 = OBJC_IVAR____TtC22SubscribePageExtension23DebugMenuViewController_diffableDataSource;
  v30 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension23DebugMenuViewController_diffableDataSource];
  if (!v30)
  {
    __break(1u);
    goto LABEL_63;
  }

  v31 = v30;
  v161 = a2;
  sub_1007518A4();

  v32 = v167;
  if (!v167)
  {
    return;
  }

  v159 = a1;
  type metadata accessor for NavigationActionDebugSetting();
  v33 = swift_dynamicCastClass();
  if (v33)
  {
    v34 = v33;
    v35 = *(v33 + 72);
    if (v35)
    {
      v36 = v35();
      v156 = v37;
    }

    else
    {
      v36 = 0;
      v156 = 0;
    }

    v142 = v36;
    v45 = *(v34 + 88);
    if (v45)
    {
      v137 = v19;
      v138 = v24;
      v140 = v13;
      v145 = v32;
      v46 = *(v34 + 64);
      v136 = *(v34 + 56);
      sub_10000C518(&unk_1009231A0);
      v47 = swift_allocObject();
      *(v47 + 16) = xmmword_1007A5CF0;
      *(v47 + 32) = v45;
      v48 = *&v162[OBJC_IVAR____TtC22SubscribePageExtension23DebugMenuViewController_objectGraph];
      v49 = sub_10000C518(&unk_100923210);
      v144 = v45;
      v143 = v46;

      v139 = v48;
      sub_1007526C4();
      v50 = *(v49 - 8);
      v51 = *(v50 + 48);
      v141 = v49;
      if (v51(v29, 1, v49) == 1)
      {

        v52 = sub_10000C8CC(v29, &unk_100923960);
      }

      else
      {
        v169 = 0;
        v167 = 0u;
        v168 = 0u;
        (*(v138 + 104))(v26, enum case for FlowPage.debugSettings(_:), v23);
        v54 = sub_100741264();
        (*(*(v54 - 8) + 56))(v22, 1, 1, v54);
        v55 = sub_100743FE4();
        (*(*(v55 - 8) + 56))(v137, 1, 1, v55);
        v163 = v136;
        v164 = v143;
        v165 = v47;
        v166 = &type metadata for DebugMenuPage;
        sub_1007525F4();
        (*(v149 + 104))(v158, enum case for FlowPresentationContext.push(_:), v140);
        (*(v150 + 104))(v153, enum case for FlowAnimationBehavior.infer(_:), v151);
        (*(v152 + 104))(v155, enum case for FlowOrigin.inapp(_:), v154);
        v56 = v50;
        v57 = sub_100752B44();
        v59 = v58;
        sub_100742CD4();
        swift_allocObject();
        v132[1] = v57;
        v133 = v59;
        v132[0] = 0;
        v60 = sub_100742C84();
        sub_1003C1424(v60, 1, v139, v29);

        v52 = (*(v56 + 8))(v29, v141);
      }

      v32 = v145;
      v53 = v162;
    }

    else
    {
      v53 = v162;
      v52 = (*(v34 + 96))(*&v162[OBJC_IVAR____TtC22SubscribePageExtension23DebugMenuViewController_objectGraph]);
    }

    v61 = v160;
    v62 = v156;
    if (!v156)
    {
      goto LABEL_35;
    }

    v63 = *(v34 + 72);
    if (!v63)
    {
      goto LABEL_34;
    }

    v64 = v63(v52);
    if (!v65)
    {
      goto LABEL_34;
    }

    if (v64 == v142 && v65 == v62 || (sub_100754754() & 1) != 0)
    {
      goto LABEL_33;
    }

    v86 = v147;
    v87 = *&v53[v147];
    if (v87)
    {
      v88 = v87;
      sub_1007518F4();

      sub_10000C518(&unk_1009231A0);
      v89 = swift_allocObject();
      *(v89 + 16) = xmmword_1007A5CF0;
      *(v89 + 32) = v32;

      v90._rawValue = v89;
      v91 = v148;
      sub_100751754(v90);

      v92 = *&v53[v86];
      if (v92)
      {
        v93 = v92;

        sub_1007518C4();

        (*(v146 + 8))(v61, v91);
        goto LABEL_35;
      }

      goto LABEL_64;
    }

LABEL_63:
    __break(1u);
LABEL_64:
    __break(1u);
    goto LABEL_65;
  }

  type metadata accessor for ActionDebugSetting();
  v38 = swift_dynamicCastClass();
  if (v38)
  {
    v39 = v38;
    v40 = *(v38 + 88);
    v41 = v162;
    if (v40)
    {
      v42 = v40();
      v44 = v43;
    }

    else
    {
      v42 = 0;
      v44 = 0;
    }

    v72 = v156;
    v73 = (*(v39 + 104))(*&v41[OBJC_IVAR____TtC22SubscribePageExtension23DebugMenuViewController_objectGraph]);
    if (!v44)
    {
      goto LABEL_35;
    }

    v74 = *(v39 + 88);
    if (!v74)
    {
      goto LABEL_34;
    }

    v75 = v74(v73);
    if (!v76)
    {
      goto LABEL_34;
    }

    if (v75 == v42 && v76 == v44 || (sub_100754754() & 1) != 0)
    {
LABEL_33:

LABEL_34:

      goto LABEL_35;
    }

    v100 = v147;
    v101 = *&v41[v147];
    if (v101)
    {
      v102 = v101;
      sub_1007518F4();

      sub_10000C518(&unk_1009231A0);
      v103 = swift_allocObject();
      *(v103 + 16) = xmmword_1007A5CF0;
      *(v103 + 32) = v32;

      v104._rawValue = v103;
      v105 = v148;
      sub_100751754(v104);

      v106 = *&v41[v100];
      if (v106)
      {
        v107 = v106;

        sub_1007518C4();

        (*(v146 + 8))(v72, v105);
        goto LABEL_35;
      }

      goto LABEL_66;
    }

LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

  type metadata accessor for StringPreferencesDebugSetting();
  v66 = swift_dynamicCastClass();
  v67 = v162;
  if (!v66)
  {
    type metadata accessor for StringUserDefaultsDebugSetting();
    v78 = swift_dynamicCastClass();
    if (v78)
    {
      v80 = *(v78 + 56);
      v79 = *(v78 + 64);
      __chkstk_darwin(v78);
      v133 = v67;
      v134 = v81;
      v82 = v81;
      v83 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v84 = swift_allocObject();
      *(v84 + 16) = v83;
      *(v84 + 24) = v82;
      LOBYTE(v82) = v82[88];
      swift_retain_n();

      v85 = sub_10073E93C(v80, v79, sub_10073ED70, v132, sub_10073ED78, v84, v82);

      [v67 presentViewController:v85 animated:1 completion:0];

      goto LABEL_35;
    }

    type metadata accessor for PromptActionDebugSetting();
    v94 = swift_dynamicCastClass();
    if (v94)
    {
      v95 = v94;
      v96 = v94[8];
      v160 = v94[7];
      v97 = v94[9];
      v98 = v94[10];
      if (v97)
      {
        v94 = swift_allocObject();
        v99 = v94;
        v94[2] = v97;
        v94[3] = v98;
      }

      else
      {
        v99 = 0;
      }

      v158 = &v135;
      __chkstk_darwin(v94);
      v133 = v122;
      v134 = v99;
      v123 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v124 = v67;
      v125 = swift_allocObject();
      *(v125 + 16) = v123;
      *(v125 + 24) = v95;
      swift_retain_n();
      sub_10001B5AC(v97);

      v126 = sub_10073E93C(v160, v96, sub_10073ECC4, v132, sub_10073ED38, v125, 0);

      [v124 presentViewController:v126 animated:1 completion:0];

      goto LABEL_35;
    }

    type metadata accessor for MenuDebugSetting();
    v108 = swift_dynamicCastClass();
    if (v108)
    {
      v109 = v147;
      v110 = *&v67[v147];
      if (!v110)
      {
LABEL_67:
        __break(1u);
LABEL_68:
        __break(1u);
LABEL_69:
        __break(1u);
        return;
      }

      v111 = v108;
      v112 = v110;
      v113 = v143;
      sub_1007518F4();

      v163 = v111;
      v114 = v148;
      sub_100751764();
      (*(v146 + 8))(v113, v114);
      v115 = v167;
      v116 = v145;
      v117 = v144;
      if (!v167)
      {
        goto LABEL_35;
      }

      v118 = *&v67[v109];
      if (!v118)
      {
        goto LABEL_68;
      }

      v119 = v118;
      sub_1007518E4();

      *&v167 = v32;
      LOBYTE(v119) = sub_100751904();
      sub_10000C518(&unk_1009231A0);
      v120 = swift_allocObject();
      *(v120 + 16) = xmmword_1007A5CF0;
      *(v120 + 32) = v32;

      v121._rawValue = v120;
      if (v119)
      {
        sub_100751934(v121);
      }

      else
      {
        sub_100751924(v121);
      }

      v130 = *&v67[v109];
      if (!v130)
      {
        goto LABEL_69;
      }

      *&v167 = v115;
      v131 = v130;
      sub_1007518D4();

      (*(v142 + 8))(v117, v116);
    }

    else
    {
      type metadata accessor for MenuItemDebugSetting();
      v127 = swift_dynamicCastClass();
      if (!v127)
      {
        goto LABEL_35;
      }

      v128 = *(v127 + 80);

      v128(v129);

      [v159 reloadData];
    }

    goto LABEL_35;
  }

  v68 = *(v66 + 56);
  v69 = *(v66 + 64);
  v70 = v66;
  swift_retain_n();

  v71 = sub_10073E93C(v68, v69, sub_10073ED80, v70, sub_10073ED88, v70, 1);

  [v67 presentViewController:v71 animated:1 completion:0];

LABEL_35:
  isa = sub_100741704().super.isa;
  [v159 deselectItemAtIndexPath:isa animated:1];
}

uint64_t sub_10073D70C()
{
  swift_getObjectType();
  sub_100752534();
  return v1;
}

uint64_t sub_10073D784(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v6 = sub_10000C518(&qword_100938718);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v15[-1] - v8;
  if (!a2)
  {
    goto LABEL_6;
  }

  v10 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v10 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v10)
  {
    swift_getObjectType();
    (*(v7 + 16))(v9, a3 + OBJC_IVAR____TtC22SubscribePageExtension29StringPreferencesDebugSetting_key, v6);
    v15[0] = a1;
    v15[1] = a2;

    return sub_100752544();
  }

  else
  {
LABEL_6:
    swift_getObjectType();
    v12 = OBJC_IVAR____TtC22SubscribePageExtension29StringPreferencesDebugSetting_key;
    v15[3] = v6;
    v15[4] = sub_10002DDC8(&qword_100938730, &qword_100938718);
    v13 = sub_10000D134(v15);
    (*(v7 + 16))(v13, a3 + v12, v6);
    sub_100752504();
    return sub_10000C620(v15);
  }
}

uint64_t sub_10073D984(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtC22SubscribePageExtension23DebugMenuViewController_userDefaults);
  v2 = sub_100753064();
  v3 = [v1 valueForKey:v2];

  if (v3)
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

    else
    {
      return 0;
    }
  }

  else
  {
    sub_10000C8CC(v8, &unk_100923520);
    return 0;
  }
}

void sub_10073DA70(uint64_t a1, NSString a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = *(Strong + OBJC_IVAR____TtC22SubscribePageExtension23DebugMenuViewController_userDefaults);

    if (a2)
    {
      a2 = sub_100753064();
    }

    v6 = sub_100753064();
    [v5 setObject:a2 forKey:v6];

    swift_unknownObjectRelease();
  }
}

uint64_t sub_10073DB40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v8 = *(a4 + 88);
    v9 = result;

    v8(v10, a1, a2);
  }

  return result;
}

void sub_10073DDD8(void *a1, uint64_t a2, NSString a3)
{
  if (!a3)
  {
LABEL_7:
    v4 = a3;
    [a1 setText:?];

    return;
  }

  v3 = a1;
  if ((a2 != 0x746C7561666544 || a3 != 0xE700000000000000) && (sub_100754754() & 1) == 0)
  {
    a3 = sub_100753064();
    a1 = v3;
    goto LABEL_7;
  }
}

void sub_10073DEA0(int a1, id a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t), uint64_t a6, char a7)
{
  v11 = [a2 textFields];
  if (!v11)
  {
    return;
  }

  v12 = v11;
  sub_100016C60(0, &qword_1009486E0);
  v13 = sub_1007532A4();

  if (!(v13 >> 62))
  {
    if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_4;
    }

LABEL_12:

    return;
  }

  if (!sub_100754664())
  {
    goto LABEL_12;
  }

LABEL_4:
  if ((v13 & 0xC000000000000001) != 0)
  {
    v14 = sub_100754574();
  }

  else
  {
    if (!*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v14 = *(v13 + 32);
  }

  v15 = v14;

  v16 = [v15 text];

  if (v16)
  {
    v17 = sub_100753094();
    v19 = v18;

    if (a4 && (v17 == a3 && v19 == a4 || (sub_100754754() & 1) != 0))
    {
      goto LABEL_12;
    }

    a5(v17, v19);

    if (a7)
    {
      v20 = [objc_opt_self() sharedCoordinator];
      [v20 notify];
    }
  }
}

void *sub_10073E150(unint64_t isUniquelyReferenced_nonNull_bridgeObject, uint64_t a2)
{
  if (isUniquelyReferenced_nonNull_bridgeObject >> 62)
  {
    goto LABEL_47;
  }

  v3 = *((isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (v3)
  {
    v4 = 0;
    v32 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
    v33 = isUniquelyReferenced_nonNull_bridgeObject & 0xC000000000000001;
    v5 = _swiftEmptyArrayStorage;
    v29 = v3;
    v31 = isUniquelyReferenced_nonNull_bridgeObject + 32;
    v30 = a2;
    while (1)
    {
      if (v33)
      {
        isUniquelyReferenced_nonNull_bridgeObject = sub_100754574();
      }

      else
      {
        if (v4 >= *(v32 + 16))
        {
          goto LABEL_42;
        }

        isUniquelyReferenced_nonNull_bridgeObject = *(v31 + 8 * v4);
      }

      v6 = isUniquelyReferenced_nonNull_bridgeObject;
      v7 = __OFADD__(v4++, 1);
      if (v7)
      {
        break;
      }

      v8 = (*((swift_isaMask & *isUniquelyReferenced_nonNull_bridgeObject) + 0x78))(a2);
      v9 = v8;
      v10 = v8 >> 62;
      if (v8 >> 62)
      {
        v11 = sub_100754664();
      }

      else
      {
        v11 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v12 = v5 >> 62;
      if (v5 >> 62)
      {
        isUniquelyReferenced_nonNull_bridgeObject = sub_100754664();
        v13 = isUniquelyReferenced_nonNull_bridgeObject + v11;
        if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v11))
        {
LABEL_40:
          __break(1u);
          break;
        }
      }

      else
      {
        isUniquelyReferenced_nonNull_bridgeObject = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v13 = isUniquelyReferenced_nonNull_bridgeObject + v11;
        if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v11))
        {
          goto LABEL_40;
        }
      }

      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      v35 = v6;
      if (!isUniquelyReferenced_nonNull_bridgeObject)
      {
        if (!v12)
        {
          goto LABEL_21;
        }

LABEL_20:
        sub_100754664();
        goto LABEL_21;
      }

      if (v12)
      {
        goto LABEL_20;
      }

      v14 = v5 & 0xFFFFFFFFFFFFFF8;
      if (v13 <= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v15 = v11;
        goto LABEL_22;
      }

LABEL_21:
      v15 = v11;
      isUniquelyReferenced_nonNull_bridgeObject = sub_100754584();
      v5 = isUniquelyReferenced_nonNull_bridgeObject;
      v14 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
LABEL_22:
      v16 = *(v14 + 16);
      v17 = *(v14 + 24);
      if (v10)
      {
        v19 = v14;
        isUniquelyReferenced_nonNull_bridgeObject = sub_100754664();
        v14 = v19;
        v18 = isUniquelyReferenced_nonNull_bridgeObject;
        if (isUniquelyReferenced_nonNull_bridgeObject)
        {
LABEL_26:
          if (((v17 >> 1) - v16) < v15)
          {
            goto LABEL_44;
          }

          v20 = v14 + 8 * v16 + 32;
          v34 = v14;
          if (v10)
          {
            if (v18 < 1)
            {
              goto LABEL_46;
            }

            sub_10002DDC8(&qword_1009486C8, &qword_1009486C0);
            for (i = 0; i != v18; ++i)
            {
              sub_10000C518(&qword_1009486C0);
              v22 = sub_1004A280C(v36, i, v9);
              v24 = *v23;

              (v22)(v36, 0);
              *(v20 + 8 * i) = v24;
            }

            v3 = v29;
            a2 = v30;
          }

          else
          {
            type metadata accessor for DebugSection();
            swift_arrayInitWithCopy();
          }

          if (v15 > 0)
          {
            v25 = *(v34 + 16);
            v7 = __OFADD__(v25, v15);
            v26 = v25 + v15;
            if (v7)
            {
              goto LABEL_45;
            }

            *(v34 + 16) = v26;
          }

          goto LABEL_5;
        }
      }

      else
      {
        v18 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v18)
        {
          goto LABEL_26;
        }
      }

      if (v15 > 0)
      {
        goto LABEL_43;
      }

LABEL_5:
      if (v4 == v3)
      {
        return v5;
      }
    }

    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    v27 = isUniquelyReferenced_nonNull_bridgeObject;
    v3 = sub_100754664();
    isUniquelyReferenced_nonNull_bridgeObject = v27;
  }

  return _swiftEmptyArrayStorage;
}

uint64_t sub_10073E4F8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

void sub_10073E53C()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC22SubscribePageExtension23DebugMenuViewController_cellRegistrations;
  type metadata accessor for DebugSettingCellRegistrations();
  swift_allocObject();
  *(v0 + v2) = sub_100080178();
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension23DebugMenuViewController_diffableDataSource) = 0;
  v3 = OBJC_IVAR____TtC22SubscribePageExtension23DebugMenuViewController_userDefaults;
  *(v1 + v3) = [objc_opt_self() standardUserDefaults];
  v4 = OBJC_IVAR____TtC22SubscribePageExtension23DebugMenuViewController_notificationCenter;
  *(v1 + v4) = [objc_opt_self() defaultCenter];
  *(v1 + OBJC_IVAR____TtC22SubscribePageExtension23DebugMenuViewController_debugSections) = _swiftEmptyArrayStorage;
  sub_100754644();
  __break(1u);
}

uint64_t sub_10073E644()
{
  v0 = sub_1007521E4();
  v11 = *(v0 - 8);
  __chkstk_darwin(v0);
  v2 = &v10 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100752224();
  v3 = *(v10 - 8);
  __chkstk_darwin(v10);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100016C60(0, &qword_100926D00);
  v6 = sub_100753774();
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_10073EE44;
  aBlock[5] = v7;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000CF7B0;
  aBlock[3] = &unk_100883100;
  v8 = _Block_copy(aBlock);

  sub_100752204();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10073EF5C(&qword_1009236B0, &type metadata accessor for DispatchWorkItemFlags);
  sub_10000C518(&unk_10092F750);
  sub_10002DDC8(&qword_1009236C0, &unk_10092F750);
  sub_1007543A4();
  sub_100753784();
  _Block_release(v8);

  (*(v11 + 8))(v2, v0);
  return (*(v3 + 8))(v5, v10);
}

id sub_10073E93C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  v8 = a3();
  v10 = v9;
  v11 = sub_100753064();
  v12 = [objc_opt_self() alertControllerWithTitle:v11 message:0 preferredStyle:1];

  v13 = swift_allocObject();
  *(v13 + 16) = v8;
  *(v13 + 24) = v10;
  v30 = sub_10073EDC8;
  v31 = v13;
  aBlock = _NSConcreteStackBlock;
  v27 = 1107296256;
  v28 = sub_10073EFC4;
  v29 = &unk_100883088;
  v14 = _Block_copy(&aBlock);

  [v12 addTextFieldWithConfigurationHandler:v14];
  _Block_release(v14);
  v15 = sub_100753064();
  v16 = objc_opt_self();
  v17 = [v16 actionWithTitle:v15 style:1 handler:0];

  [v12 addAction:v17];
  v18 = swift_allocObject();
  *(v18 + 16) = v12;
  *(v18 + 24) = v8;
  *(v18 + 32) = v10;
  *(v18 + 40) = a5;
  *(v18 + 48) = a6;
  *(v18 + 56) = a7;
  v19 = v12;

  v20 = sub_100753064();
  v30 = sub_10073EE30;
  v31 = v18;
  aBlock = _NSConcreteStackBlock;
  v27 = 1107296256;
  v28 = sub_10073EFC4;
  v29 = &unk_1008830D8;
  v21 = _Block_copy(&aBlock);

  v22 = [v16 actionWithTitle:v20 style:2 handler:v21];
  _Block_release(v21);

  [v19 addAction:v22];
  return v19;
}

void sub_10073EC08()
{
  v1 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension23DebugMenuViewController_diffableDataSource);
  if (v1)
  {
    v2 = v1;
    sub_1007518A4();

    if (v3)
    {
      type metadata accessor for InfoDebugSetting();
      if (swift_dynamicCastClass() || (type metadata accessor for BoolUserDefaultsDebugSetting(), swift_dynamicCastClass()))
      {
      }

      else
      {
        type metadata accessor for BoolPreferencesDebugSetting();
        swift_dynamicCastClass();
      }
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_10073ECFC()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10073ED40@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 16))();
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_10073ED90()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10073EDD0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10073EDE8()
{

  return _swift_deallocObject(v0, 57, 7);
}

uint64_t sub_10073EE64()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10073EEC8()
{
  v1 = sub_10000C518(&qword_100936328);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10073EF5C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10073EFC8(uint64_t a1)
{
  v59 = a1;
  v58 = sub_10000C518(&qword_1009385E8);
  v66.i64[0] = *(v58 - 8);
  __chkstk_darwin(v58);
  v53 = v47 - v1;
  v2 = sub_10000C518(&qword_100923E88);
  __chkstk_darwin(v2 - 8);
  v68 = v47 - v3;
  v64 = sub_10074F654();
  v69 = *(v64 - 8);
  __chkstk_darwin(v64);
  v5 = (v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_10000C518(&qword_100923230);
  __chkstk_darwin(v6 - 8);
  v8 = v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = v47 - v10;
  __chkstk_darwin(v12);
  v57 = v47 - v13;
  __chkstk_darwin(v14);
  v16 = v47 - v15;
  sub_10000C518(&qword_100923E90);
  v17 = *(sub_10074F584() - 8);
  v67 = *(v17 + 72);
  v18 = (*(v17 + 80) + 32) & ~*(v17 + 80);
  v19 = swift_allocObject();
  v54 = v19;
  *(v19 + 16) = xmmword_1007A7250;
  v20 = v19 + v18;
  v72 = 0x3FF0000000000000;
  sub_10001CC10();
  sub_10074F614();
  v72 = 0x4020000000000000;
  v70 = 0x4030000000000000;
  sub_10074F5F4();
  v72 = 0x4038000000000000;
  sub_10074F614();
  __asm { FMOV            V0.2D, #16.0 }

  *v5 = _Q0;
  v62 = enum case for PageGrid.HorizontalMargins.absolute(_:);
  v65 = *(v69 + 104);
  v69 += 104;
  v26 = v64;
  v65(v5);
  left = UIEdgeInsetsZero.left;
  LOBYTE(v72) = 0;
  sub_10074F614();
  v72 = 0;
  v61 = v8;
  sub_10074F614();
  sub_10074F544();
  v72 = 0x3FF0000000000000;
  sub_10074F614();
  v72 = 0x4024000000000000;
  v70 = 0x4034000000000000;
  sub_10074F5F4();
  v72 = 0x4038000000000000;
  sub_10074F614();
  __asm { FMOV            V0.2D, #20.0 }

  v56 = v5;
  *v5 = _Q0;
  v29 = v62;
  v30 = v65;
  (v65)(v5, v62, v26);
  LOBYTE(v72) = 0;
  sub_10074F614();
  v72 = 0;
  sub_10074F614();
  v31 = v67;
  v63 = v20;
  v60 = v16;
  top = UIEdgeInsetsZero.top;
  v52 = left;
  v32 = v56;
  sub_10074F544();
  v50 = 2 * v31;
  v72 = 0x3FF0000000000000;
  sub_10074F614();
  v72 = 0x4034000000000000;
  sub_10074F614();
  v72 = 0x4038000000000000;
  v55 = v11;
  sub_10074F614();
  v48 = vdupq_n_s64(0x4041000000000000uLL);
  *v32 = v48;
  v33 = v64;
  v30(v32, v29, v64);
  LOBYTE(v72) = 0;
  sub_10074F614();
  v72 = 0;
  sub_10074F614();
  v34 = v50;
  sub_10074F544();
  v74 = 0x4000000000000000;
  v47[1] = v34 + v67;
  v72 = 0;
  v73 = 1;
  v70 = 0x3FF0000000000000;
  v71 = 0;
  v50 = sub_100450474();
  v35 = v53;
  sub_10074A9A4();
  v36 = v58;
  sub_10074A9B4();
  v37 = *(v66.i64[0] + 8);
  v66.i64[0] += 8;
  v49 = v37;
  v37(v35, v36);
  v70 = v72;
  sub_10074F614();
  v72 = 0x4034000000000000;
  sub_10074F614();
  v72 = 0x4038000000000000;
  sub_10074F614();
  v38 = v56;
  *v56 = v48;
  v39 = v62;
  (v65)(v38, v62, v33);
  sub_1007535A4();
  LOBYTE(v72) = 0;
  sub_10074F614();
  v72 = 0;
  sub_10074F614();
  sub_10074F544();
  v74 = 0x4000000000000000;
  v48.i64[0] = 4 * v67;
  v72 = 0;
  v73 = 1;
  v70 = 0x3FF0000000000000;
  v71 = 0;
  sub_10074A9A4();
  v40 = v58;
  sub_10074A9B4();
  v49(v35, v40);
  v70 = v72;
  sub_10074F614();
  v72 = 0x4038000000000000;
  sub_10074F614();
  v72 = 0x4038000000000000;
  sub_10074F614();
  v66 = vdupq_n_s64(0x404A000000000000uLL);
  *v38 = v66;
  v41 = v38;
  v42 = v38;
  v43 = v64;
  v44 = v65;
  (v65)(v41, v39, v64);
  LOBYTE(v72) = 0;
  sub_10074F614();
  v72 = 0;
  sub_10074F614();
  v45 = v48.i64[0];
  sub_10074F544();
  v67 += v45;
  v72 = 0x4000000000000000;
  sub_10074F614();
  v72 = 0x4038000000000000;
  sub_10074F614();
  v72 = 0x4038000000000000;
  sub_10074F614();
  *v42 = v66;
  (v44)(v42, v62, v43);
  LOBYTE(v72) = 0;
  sub_10074F614();
  v72 = 0;
  sub_10074F614();
  sub_10074F544();
  return v54;
}

unint64_t sub_10073FBE4()
{
  result = qword_100948708;
  if (!qword_100948708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100948708);
  }

  return result;
}

uint64_t sub_10073FC3C@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v47 = a2;
  v5 = sub_10000C518(&qword_100948710);
  __chkstk_darwin(v5 - 8);
  v48 = &v39[-v6];
  v7 = sub_10000C518(&unk_1009400E0);
  __chkstk_darwin(v7 - 8);
  v9 = &v39[-v8];
  v10 = sub_10074F704();
  v45 = *(v10 - 8);
  v46 = v10;
  __chkstk_darwin(v10);
  v12 = &v39[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = sub_10000C518(&unk_100925330);
  __chkstk_darwin(v13 - 8);
  v15 = &v39[-v14];
  v16 = sub_100744E64();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v39[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v20);
  v22 = &v39[-v21];
  sub_10000C518(&qword_100923570);
  v44 = a1;
  sub_1007468C4();
  if (!v50)
  {
    sub_10000C8CC(v49, &qword_100923578);
    (*(v17 + 56))(v15, 1, 1, v16);
    goto LABEL_9;
  }

  v43 = v9;
  sub_10000C888(v49, v50);
  sub_10074A4F4();
  sub_10000C620(v49);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
LABEL_9:
    sub_10000C8CC(v15, &unk_100925330);
    v31 = sub_100751604();
    return (*(*(v31 - 8) + 56))(a3, 1, 1, v31);
  }

  v42 = a3;
  (*(v17 + 32))(v22, v15, v16);
  v23 = *(v17 + 16);
  v23(v19, v22, v16);
  v24 = *(v17 + 88);
  v25 = v24(v19, v16);
  if (v25 == enum case for ItemBackground.ad(_:) || (v26 = v25, v25 == enum case for ItemBackground.insetAd(_:)) || v25 == enum case for ItemBackground.clearAdWithSeparator(_:))
  {
    v40 = enum case for ItemBackground.insetAd(_:);
    v41 = v24;
    swift_getKeyPath();
    sub_100746914();

    v32 = v48;
    v23(v48, v22, v16);
    if (v47 == 2)
    {
      v33 = v43;
      sub_10014D9E0(v12, v22, v43);
      (*(v45 + 8))(v12, v46);
      v34 = *(v17 + 8);
      v34(v22, v16);
      v34(v32, v16);
    }

    else
    {
      v35 = v41(v32, v16);
      v33 = v43;
      if (v35 == v40)
      {
        sub_10014DD74();
        (*(v45 + 8))(v12, v46);
        (*(v17 + 8))(v22, v16);
        v36 = sub_100751604();
        (*(*(v36 - 8) + 56))(v33, 0, 1, v36);
      }

      else
      {
        (*(v45 + 8))(v12, v46);
        v37 = *(v17 + 8);
        v37(v22, v16);
        v38 = sub_100751604();
        (*(*(v38 - 8) + 56))(v33, 1, 1, v38);
        v37(v32, v16);
      }
    }

    return sub_1007402B0(v33, v42);
  }

  else
  {
    v27 = enum case for ItemBackground.condensedSearch(_:);
    v28 = *(v17 + 8);
    v28(v22, v16);
    v29 = sub_100751604();
    result = (*(*(v29 - 8) + 56))(v42, 1, 1, v29);
    if (v26 != v27)
    {
      return (v28)(v19, v16);
    }
  }

  return result;
}

uint64_t sub_1007402B0(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C518(&unk_1009400E0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

id sub_100740320()
{
  v1 = [objc_opt_self() defaultCenter];
  [v1 removeObserver:v0];

  v3.receiver = v0;
  v3.super_class = type metadata accessor for PlayerViewController();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_1007404BC()
{
  v8.receiver = v0;
  v8.super_class = type metadata accessor for PlayerViewController();
  objc_msgSendSuper2(&v8, "viewDidLoad");
  v1 = [objc_opt_self() defaultCenter];
  v2 = sub_100753064();
  v3 = [v0 player];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 currentItem];

    if (v5)
    {
      v7 = v5;
      sub_100740C14();
      v5 = sub_100754734();
    }
  }

  else
  {
    v5 = 0;
  }

  [v1 addObserver:v0 selector:"playerItemDidPlayToEndWithNotification:" name:v2 object:v5];

  return swift_unknownObjectRelease();
}

id sub_100740A64(uint64_t a1)
{
  v2 = sub_100741264();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, a1, v2, v4);
  v7 = objc_allocWithZone(AVPlayer);
  sub_100741204(v8);
  v10 = v9;
  v11 = [v7 initWithURL:v9];

  v12 = [objc_allocWithZone(type metadata accessor for PlayerViewController()) initWithNibName:0 bundle:0];
  [v12 setPlayer:v11];

  (*(v3 + 8))(v6, v2);
  *(v12 + OBJC_IVAR____TtC22SubscribePageExtension20PlayerViewController_autoplay) = 1;

  [v12 setAllowsPictureInPicturePlayback:0];
  [v12 setUpdatesNowPlayingInfoCenter:0];
  [v12 setAllowsVideoFrameAnalysis:0];

  return v12;
}

unint64_t sub_100740C14()
{
  result = qword_100948758;
  if (!qword_100948758)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100948758);
  }

  return result;
}

CGPoint CGPointApplyAffineTransform(CGPoint point, CGAffineTransform *t)
{
  v4 = _CGPointApplyAffineTransform(point, t);
  y = v4.y;
  x = v4.x;
  result.y = y;
  result.x = x;
  return result;
}

__double2 __sincos_stret(double a1)
{
  v3 = ___sincos_stret(a1);
  cosval = v3.__cosval;
  sinval = v3.__sinval;
  result.__cosval = cosval;
  result.__sinval = sinval;
  return result;
}