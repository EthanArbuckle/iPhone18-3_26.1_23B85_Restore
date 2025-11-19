id sub_100CBF5D0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SyncedLyricsTimestampLabel();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_100CBF6A4()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsTimestampLabel_containerView;
  *(v1 + v2) = [objc_allocWithZone(UIView) init];
  v3 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsTimestampLabel_label;
  v4 = [objc_allocWithZone(UILabel) init];
  v5 = UIView.forAutolayout.getter();

  *(v1 + v3) = v5;
  v6 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsTimestampLabel_secondsFormatter;
  v7 = [objc_allocWithZone(NSDateComponentsFormatter) init];
  [v7 setZeroFormattingBehavior:0x10000];
  [v7 setAllowedUnits:192];
  *(v1 + v6) = v7;
  v8 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsTimestampLabel_minutesFormatter;
  *(v1 + v8) = [objc_allocWithZone(NSDateComponentsFormatter) init];
  v9 = v1 + OBJC_IVAR____TtC7LyricsX26SyncedLyricsTimestampLabel_line;
  *(v9 + 32) = 0;
  *v9 = 0u;
  *(v9 + 16) = 0u;
  *(v1 + OBJC_IVAR____TtC7LyricsX26SyncedLyricsTimestampLabel_isInFocusedState) = 1;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

unint64_t sub_100CBF7F0()
{
  result = qword_1011BD128;
  if (!qword_1011BD128)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1011BD128);
  }

  return result;
}

uint64_t sub_100CBF83C(uint64_t a1)
{
  v2 = sub_10010FC20(&qword_1011BBB10);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id SyncedLyricsViewController.Specs.lineChangeSpringTimingParameters.getter()
{
  v1 = v0[83];
  v2 = v0[84];
  v3 = v0[85];
  v4 = objc_allocWithZone(UISpringTimingParameters);

  return [v4 initWithMass:v1 stiffness:v2 damping:v3 initialVelocity:{0.0, 0.0}];
}

id static SyncedLyricsViewController.Specs.liftSpringTimingParameters()()
{
  v0 = objc_allocWithZone(UISpringTimingParameters);

  return [v0 initWithMass:1.0 stiffness:14.0 damping:7.0 initialVelocity:{0.0, 0.0}];
}

id static SyncedLyricsViewController.Specs.backgroundVocalsSpringTimingParameters(showing:)(char a1)
{
  if (a1)
  {
    v1 = objc_allocWithZone(UISpringTimingParameters);

    return [v1 initWithMass:1.0 stiffness:30.0 damping:9.0 initialVelocity:{0.0, 0.0}];
  }

  else
  {
    sub_100009F78(0, &qword_1011BD330);
    return UISpringTimingParameters.init(dampingRatio:response:)(1.0, 0.2);
  }
}

id static SyncedLyricsViewController.Specs.opacityAnimator()()
{
  v0 = objc_allocWithZone(UIViewPropertyAnimator);

  return [v0 initWithDuration:0 controlPoint1:0.12 controlPoint2:0.33 animations:{0.0, 0.2, 0.1}];
}

void static SyncedLyricsViewController.Specs.animateWithHighlightAnimationCurves(highlighted:fadeAnimations:transformAnimations:)(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = objc_allocWithZone(UISpringTimingParameters);
  if (a1)
  {
    v11 = 24.0;
  }

  else
  {
    v11 = 50.0;
  }

  v12 = 322.0;
  if ((a1 & 1) == 0)
  {
    v12 = 300.0;
  }

  v13 = 2.0;
  if (a1)
  {
    v13 = 1.0;
    v14 = 0.0;
  }

  else
  {
    v14 = 0.1;
  }

  if (a1)
  {
    v15 = 0.2;
  }

  else
  {
    v15 = 0.3;
  }

  v16 = [v10 initWithMass:v13 stiffness:v12 damping:v11 initialVelocity:{0.0, 0.0}];
  v17 = sub_100CC3404(a1);
  v18 = objc_opt_self();
  v33 = a2;
  v34 = a3;
  v29 = _NSConcreteStackBlock;
  v30 = 1107296256;
  v31 = sub_10002BC98;
  v32 = &unk_1010F76C8;
  v19 = _Block_copy(&v29);
  swift_unknownObjectRetain();

  [v18 _animateWithDuration:0 delay:v17 options:v19 factory:0 animations:v15 completion:v14];
  _Block_release(v19);
  swift_unknownObjectRelease();
  [v16 settlingDuration];
  v21 = v20;
  [v16 mass];
  v23 = v22;
  [v16 stiffness];
  v25 = v24;
  [v16 damping];
  v27 = v26;
  v33 = a4;
  v34 = a5;
  v29 = _NSConcreteStackBlock;
  v30 = 1107296256;
  v31 = sub_10002BC98;
  v32 = &unk_1010F76F0;
  v28 = _Block_copy(&v29);

  [v18 _animateUsingSpringWithDuration:0 delay:v28 options:0 mass:v21 stiffness:v14 damping:v23 initialVelocity:v25 animations:v27 completion:0.0];

  swift_unknownObjectRelease();
  _Block_release(v28);
}

BOOL static SyncedLyricsViewController.Specs.SelectedLinePosition.__derived_enum_equals(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if ((v2 & 0x80000000) == 0)
  {
    if ((*(a2 + 32) & 0x80000000) == 0)
    {
      return *a2 == *a1;
    }

    return 0;
  }

  v4 = *(a2 + 32);
  if ((v4 & 0x80000000) == 0)
  {
    return 0;
  }

  if (v2)
  {
    return (v4 & 1) != 0;
  }

  else
  {
    return (v4 & 1) == 0 && CGRectEqualToRect(*a1, *a2);
  }
}

BOOL sub_100CBFE08(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = *(a2 + 32);
  if ((v2 & 0x80000000) == 0)
  {
    return (v3 & 0x80000000) == 0 && *a1 == *a2;
  }

  if ((v3 & 0x80000000) == 0)
  {
    return 0;
  }

  if (v2)
  {
    return (v3 & 1) != 0;
  }

  else
  {
    return (v3 & 1) == 0 && CGRectEqualToRect(*a1, *a2);
  }
}

__n128 SyncedLyricsViewController.Specs.selectedLinePosition.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 48);
  result = *(v1 + 16);
  v4 = *(v1 + 32);
  *a1 = result;
  *(a1 + 16) = v4;
  *(a1 + 32) = v2;
  return result;
}

__n128 SyncedLyricsViewController.Specs.selectedLinePosition.setter(uint64_t a1)
{
  result = *a1;
  v3 = *(a1 + 16);
  *(v1 + 16) = *a1;
  *(v1 + 32) = v3;
  *(v1 + 48) = *(a1 + 32);
  return result;
}

uint64_t SyncedLyricsViewController.Specs.lineTextAlignment.setter(uint64_t result, char a2)
{
  *(v2 + 80) = result;
  *(v2 + 88) = a2 & 1;
  return result;
}

uint64_t SyncedLyricsViewController.Specs.songwritersTextAlignment.setter(uint64_t result, char a2)
{
  *(v2 + 96) = result;
  *(v2 + 104) = a2 & 1;
  return result;
}

__n128 SyncedLyricsViewController.Specs.backgroundVocalsDeselectedTransform.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 144);
  *a1 = *(v1 + 128);
  *(a1 + 16) = v2;
  result = *(v1 + 160);
  *(a1 + 32) = result;
  return result;
}

__n128 SyncedLyricsViewController.Specs.backgroundVocalsDeselectedTransform.setter(uint64_t a1)
{
  v2 = *(a1 + 16);
  *(v1 + 128) = *a1;
  *(v1 + 144) = v2;
  result = *(a1 + 32);
  *(v1 + 160) = result;
  return result;
}

uint64_t SyncedLyricsViewController.Specs.fontLeading.setter(uint64_t result, char a2)
{
  *(v2 + 208) = result;
  *(v2 + 216) = a2 & 1;
  return result;
}

void *SyncedLyricsViewController.Specs.translationTextColor.getter()
{
  v1 = *(v0 + 288);
  v2 = v1;
  return v1;
}

__n128 SyncedLyricsViewController.Specs.deselectedTransform.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 416);
  *a1 = *(v1 + 400);
  *(a1 + 16) = v2;
  result = *(v1 + 432);
  *(a1 + 32) = result;
  return result;
}

__n128 SyncedLyricsViewController.Specs.deselectedTransform.setter(uint64_t a1)
{
  v2 = *(a1 + 16);
  *(v1 + 400) = *a1;
  *(v1 + 416) = v2;
  result = *(a1 + 32);
  *(v1 + 432) = result;
  return result;
}

__n128 SyncedLyricsViewController.Specs.touchDownTransform.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 528);
  *a1 = *(v1 + 512);
  *(a1 + 16) = v2;
  result = *(v1 + 544);
  *(a1 + 32) = result;
  return result;
}

__n128 SyncedLyricsViewController.Specs.touchDownTransform.setter(uint64_t a1)
{
  v2 = *(a1 + 16);
  *(v1 + 512) = *a1;
  *(v1 + 528) = v2;
  result = *(a1 + 32);
  *(v1 + 544) = result;
  return result;
}

void *SyncedLyricsViewController.Specs.with(_:)@<X0>(void (*a1)(_BYTE *)@<X0>, void *a2@<X8>)
{
  memcpy(__dst, v2, sizeof(__dst));
  sub_1002AD8C8(v2, &v6);
  a1(__dst);
  return memcpy(a2, __dst, 0x2B0uLL);
}

void *SyncedLyricsViewController.Specs.default.unsafeMutableAddressor()
{
  if (qword_1011BB8D8 != -1)
  {
    swift_once();
  }

  return &static SyncedLyricsViewController.Specs.default;
}

void sub_100CC0D7C(uint64_t a1)
{
  *(a1 + 16) = 0x4034000000000000;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 112) = xmmword_100F0E090;
  *(a1 + 184) = 0x3FE0000000000000;
  v2 = objc_opt_self();
  v3 = [v2 systemFontOfSize:48.0 weight:UIFontWeightBold];

  *(a1 + 200) = v3;
  v4 = [v2 systemFontOfSize:32.0 weight:UIFontWeightBold];

  *(a1 + 224) = v4;
  sub_100009F78(0, &qword_1011BD920);
  v5 = static UIFont.preferredFont(forTextStyle:weight:)();

  *(a1 + 264) = v5;
  v6 = static UIFont.preferredFont(forTextStyle:weight:)();

  *(a1 + 272) = v6;
  v7 = static UIFont.preferredFont(forTextStyle:weight:)();

  *(a1 + 280) = v7;
  v8 = static UIFont.preferredFont(forTextStyle:weight:)();

  *(a1 + 312) = v8;
  v9 = static UIFont.preferredFont(forTextStyle:weight:)();

  *(a1 + 320) = v9;
  *(a1 + 208) = 0x404A000000000000;
  *(a1 + 216) = 0;
  v10 = [v2 preferredFontForTextStyle:UIFontTextStyleBody];

  *(a1 + 344) = v10;
}

void *SyncedLyricsViewController.Specs.iPad.unsafeMutableAddressor()
{
  if (qword_1011BB8E0 != -1)
  {
    swift_once();
  }

  return &static SyncedLyricsViewController.Specs.iPad;
}

void sub_100CC102C(uint64_t a1)
{
  *(a1 + 16) = 0x4042000000000000;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 112) = xmmword_100F0E090;
  *(a1 + 184) = 0x3FE0000000000000;
  v2 = objc_opt_self();
  v3 = [v2 systemFontOfSize:56.0 weight:UIFontWeightBold];

  *(a1 + 200) = v3;
  v4 = [v2 systemFontOfSize:34.0 weight:UIFontWeightBold];

  *(a1 + 224) = v4;
  v5 = [v2 systemFontOfSize:26.0 weight:UIFontWeightBold];

  *(a1 + 264) = v5;
  v6 = [v2 systemFontOfSize:33.0 weight:UIFontWeightBold];

  *(a1 + 272) = v6;
  sub_100009F78(0, &qword_1011BD920);
  v7 = static UIFont.preferredFont(forTextStyle:weight:)();

  *(a1 + 280) = v7;
  v8 = [v2 systemFontOfSize:33.0 weight:UIFontWeightBold];

  *(a1 + 312) = v8;
  v9 = static UIFont.preferredFont(forTextStyle:weight:)();

  *(a1 + 320) = v9;
  *(a1 + 656) = 0;
  *(a1 + 208) = 0x404C000000000000;
  *(a1 + 216) = 0;
  v10 = objc_opt_self();
  v11 = [v10 whiteColor];
  v12 = [v11 colorWithAlphaComponent:0.175];

  *(a1 + 496) = v12;
  v13 = [v10 whiteColor];

  *(a1 + 488) = v13;
  v14 = [v10 whiteColor];
  v15 = [v14 colorWithAlphaComponent:0.35];

  v16 = [v10 labelColor];
  v17 = [v16 colorWithAlphaComponent:0.55];

  v18 = objc_allocWithZone(UIColor);
  v19 = swift_allocObject();
  *(v19 + 16) = v17;
  *(v19 + 24) = v15;
  v25[4] = sub_100CC379C;
  v25[5] = v19;
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 1107296256;
  v25[2] = sub_10003640C;
  v25[3] = &unk_1010F7A60;
  v20 = _Block_copy(v25);
  v21 = v17;
  v22 = v15;

  v23 = [v18 initWithDynamicProvider:v20];

  _Block_release(v20);
  *(a1 + 360) = v23;
  v24 = [v2 systemFontOfSize:20.0];

  *(a1 + 344) = v24;
}

void *SyncedLyricsViewController.Specs.vision.unsafeMutableAddressor()
{
  if (qword_1011BB8E8 != -1)
  {
    swift_once();
  }

  return &static SyncedLyricsViewController.Specs.vision;
}

double sub_100CC14DC(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = [v2 systemFontOfSize:76.0 weight:UIFontWeightBold];

  *(a1 + 200) = v3;
  *(a1 + 112) = 0x4059000000000000;
  *(a1 + 624) = 0x4008000000000000;
  *(a1 + 400) = 0x3FF0000000000000;
  *(a1 + 408) = 0;
  *(a1 + 416) = 0;
  *(a1 + 424) = 0x3FF0000000000000;
  *(a1 + 432) = 0;
  *(a1 + 440) = 0;
  v4 = [v2 systemFontOfSize:48.0 weight:UIFontWeightBold];

  *(a1 + 224) = v4;
  v5 = [v2 systemFontOfSize:35.0 weight:UIFontWeightBold];

  *(a1 + 264) = v5;
  v6 = [v2 systemFontOfSize:44.0 weight:UIFontWeightBold];

  *(a1 + 272) = v6;
  v7 = [v2 systemFontOfSize:28.0 weight:UIFontWeightBold];

  *(a1 + 280) = v7;
  v8 = [v2 systemFontOfSize:44.0 weight:UIFontWeightBold];

  *(a1 + 312) = v8;
  v9 = [v2 systemFontOfSize:21.0 weight:UIFontWeightBold];

  *(a1 + 320) = v9;
  objc_storeStrong((a1 + 392), *(a1 + 368));
  v10 = [v2 preferredFontForTextStyle:UIFontTextStyleHeadline];

  *(a1 + 232) = v10;
  v11 = [v2 preferredFontForTextStyle:UIFontTextStyleHeadline];

  *(a1 + 240) = v11;
  *(a1 + 608) = xmmword_100F0E0A0;
  *(a1 + 656) = 16842752;
  *(a1 + 664) = 0x3FF0000000000000;
  result = 68.0;
  *(a1 + 672) = xmmword_100F0E0B0;
  return result;
}

void *SyncedLyricsViewController.Specs.tv.unsafeMutableAddressor()
{
  if (qword_1011BB8F0 != -1)
  {
    swift_once();
  }

  return &static SyncedLyricsViewController.Specs.tv;
}

void sub_100CC17FC(uint64_t a1)
{
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = -127;
  *(a1 + 192) = 1;
  v2 = objc_opt_self();
  v3 = [v2 systemFontOfSize:28.0 weight:UIFontWeightBold];

  *(a1 + 200) = v3;
  v4 = [v2 systemFontOfSize:24.0 weight:UIFontWeightBold];

  *(a1 + 224) = v4;
}

void *SyncedLyricsViewController.Specs.alternative.unsafeMutableAddressor()
{
  if (qword_1011BB8F8 != -1)
  {
    swift_once();
  }

  return &static SyncedLyricsViewController.Specs.alternative;
}

void sub_100CC1984(uint64_t a1)
{
  *a1 = 1;
  *(a1 + 8) = 0;
  __asm { FMOV            V0.2D, #3.0 }

  *(a1 + 112) = _Q0;
  *(a1 + 128) = 0x3FF0000000000000;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  *(a1 + 152) = 0x3FF0000000000000;
  sub_100009F78(0, &qword_1011BD920);
  *(a1 + 160) = 0;
  *(a1 + 168) = 0;
  v7 = static UIFont.preferredFont(forTextStyle:weight:)();

  *(a1 + 200) = v7;
  v8 = static UIFont.preferredFont(forTextStyle:weight:)();

  *(a1 + 224) = v8;
  v9 = static UIFont.preferredFont(forTextStyle:weight:)();

  *(a1 + 232) = v9;
  v10 = static UIFont.preferredFont(forTextStyle:weight:)();

  *(a1 + 240) = v10;
  v11 = static UIFont.preferredFont(forTextStyle:weight:)();

  *(a1 + 264) = v11;
  v12 = static UIFont.preferredFont(forTextStyle:weight:)();

  *(a1 + 272) = v12;
  *(a1 + 296) = 0;
  *(a1 + 304) = 0x4010000000000000;
  v13 = objc_opt_self();
  v14 = [v13 labelColor];

  *(a1 + 352) = v14;
  v15 = [v13 labelColor];

  *(a1 + 360) = v15;
  v16 = [v13 labelColor];

  *(a1 + 368) = v16;
  v17 = [v13 labelColor];

  *(a1 + 376) = v17;
  v18 = [v13 labelColor];

  *(a1 + 384) = v18;
  v19 = [v13 labelColor];

  *(a1 + 392) = v19;
  v20 = [v13 secondaryLabelColor];

  *(a1 + 288) = v20;
  *(a1 + 400) = 0x3FF0000000000000;
  *(a1 + 408) = 0;
  *(a1 + 416) = 0;
  *(a1 + 424) = 0x3FF0000000000000;
  *(a1 + 657) = 0;
  *(a1 + 432) = 0;
  *(a1 + 440) = 0;
}

void *SyncedLyricsViewController.Specs.static.unsafeMutableAddressor()
{
  if (qword_1011BB900 != -1)
  {
    swift_once();
  }

  return &static SyncedLyricsViewController.Specs.static;
}

uint64_t sub_100CC1C6C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = a3;
  if (*a1 != -1)
  {
    swift_once();
    v4 = a3;
  }

  return sub_1002AD8C8(a2, v4);
}

UISpringTimingParameters __swiftcall SyncedLyricsViewController.Specs.syllableBySyllableLineChangeSpringTimingParameters(gap:)(Swift::Double_optional gap)
{
  if (v1)
  {
    v3 = v2[83];
    v4 = v2[84];
    v5 = v2[85];
    v6 = objc_allocWithZone(UISpringTimingParameters);

    return [v6 initWithMass:v3 stiffness:v4 damping:v5 initialVelocity:{0.0, 0.0}];
  }

  else
  {
    v8 = 0.75;
    if (*&gap.is_nil <= 0.75)
    {
      v8 = *&gap.is_nil;
    }

    v9 = (v8 + -0.2) / 0.55;
    v10 = 0.0;
    if (*&gap.is_nil >= 0.2)
    {
      v10 = v9;
    }

    v11 = (1.0 - v10) * 0.12 + 0.78;
    v12 = v10 * 0.27 + 0.48;
    sub_100009F78(0, &qword_1011BD330);
    return UISpringTimingParameters.init(dampingRatio:response:)(v11, v12);
  }
}

id static SyncedLyricsViewController.Specs.tapSpringTimingParameters()()
{
  v0 = objc_allocWithZone(UISpringTimingParameters);

  return [v0 initWithMass:2.0 stiffness:260.0 damping:50.0 initialVelocity:{0.0, 0.0}];
}

id sub_100CC1F04()
{
  v2.receiver = v0;
  v2.super_class = _s5SpecsV27CustomCurveAnimationFactoryCMa();
  return objc_msgSendSuper2(&v2, "dealloc");
}

BOOL sub_100CC1F40(void *__src, const void *a2)
{
  memcpy(v4, __src, sizeof(v4));
  memcpy(__dst, a2, sizeof(__dst));
  return _s7LyricsX06SyncedA14ViewControllerC5SpecsV23__derived_struct_equalsySbAE_AEtFZ_0(v4, __dst);
}

id sub_100CC1F98(void *a1, void *a2, void *a3)
{
  v4 = [a1 accessibilityContrast];
  if (v4 == -1)
  {
    v6 = a3;
  }

  else
  {
    v5 = v4 == 1;
    v6 = a3;
    if (v5)
    {
      v6 = a2;
    }
  }

  return v6;
}

BOOL _s7LyricsX06SyncedA14ViewControllerC5SpecsV23__derived_struct_equalsySbAE_AEtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2 || *(a1 + 1) != *(a2 + 1))
  {
    return 0;
  }

  v2 = a1[48];
  v3 = a2[48];
  if (v2 < 0)
  {
    if ((v3 & 0x80000000) == 0)
    {
      return 0;
    }

    if (v2)
    {
      if ((v3 & 1) == 0)
      {
        return 0;
      }
    }

    else
    {
      if (v3)
      {
        return 0;
      }

      v6 = a1;
      v7 = a2;
      v8 = CGRectEqualToRect(*(a1 + 16), *(a2 + 16));
      a2 = v7;
      v9 = v8;
      a1 = v6;
      if (!v9)
      {
        return 0;
      }
    }
  }

  else if (v3 < 0 || *(a1 + 2) != *(a2 + 2))
  {
    return 0;
  }

  if (*(a1 + 7) != *(a2 + 7) || *(a1 + 8) != *(a2 + 8) || *(a1 + 9) != *(a2 + 9))
  {
    return 0;
  }

  v4 = a2[88];
  if (a1[88])
  {
    if (!a2[88])
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 10) != *(a2 + 10))
    {
      v4 = 1;
    }

    if (v4)
    {
      return 0;
    }
  }

  v10 = a2[104];
  if (a1[104])
  {
    if (!a2[104])
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 12) != *(a2 + 12))
    {
      v10 = 1;
    }

    if (v10)
    {
      return 0;
    }
  }

  if (*(a1 + 14) != *(a2 + 14))
  {
    return 0;
  }

  if (*(a1 + 15) != *(a2 + 15))
  {
    return 0;
  }

  v11 = a1;
  v12 = a2;
  if ((static CGAffineTransform.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  if (v11[22] != v12[22])
  {
    return 0;
  }

  if (v11[23] != v12[23])
  {
    return 0;
  }

  if (*(v11 + 24) != *(v12 + 24))
  {
    return 0;
  }

  sub_100009F78(0, &qword_1011BD600);
  if ((static NSObject.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v13 = *(v12 + 216);
  if (v11[27])
  {
    if (!*(v12 + 216))
    {
      return 0;
    }
  }

  else
  {
    if (v11[26] != v12[26])
    {
      v13 = 1;
    }

    if (v13)
    {
      return 0;
    }
  }

  if ((static NSObject.== infix(_:_:)() & 1) == 0 || (static NSObject.== infix(_:_:)() & 1) == 0 || (static NSObject.== infix(_:_:)() & 1) == 0 || v11[31] != v12[31] || v11[32] != v12[32] || (static NSObject.== infix(_:_:)() & 1) == 0 || (static NSObject.== infix(_:_:)() & 1) == 0 || (static NSObject.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v14 = *(v11 + 36);
  v15 = *(v12 + 36);
  if (!v14)
  {
    if (!v15)
    {
      return v11[37] == v12[37] && v11[38] == v12[38] && (static NSObject.== infix(_:_:)() & 1) != 0 && (static NSObject.== infix(_:_:)() & 1) != 0 && v11[41] == v12[41] && v11[42] == v12[42] && (static NSObject.== infix(_:_:)() & 1) != 0 && (static NSObject.== infix(_:_:)() & 1) != 0 && (static NSObject.== infix(_:_:)() & 1) != 0 && (static NSObject.== infix(_:_:)() & 1) != 0 && (static NSObject.== infix(_:_:)() & 1) != 0 && (static NSObject.== infix(_:_:)() & 1) != 0 && (static NSObject.== infix(_:_:)() & 1) != 0 && (static CGAffineTransform.== infix(_:_:)() & 1) != 0 && v11[56] == v12[56] && (static NSObject.== infix(_:_:)() & 1) != 0 && v11[58] == v12[58] && v11[59] == v12[59] && v11[60] == v12[60] && (static NSObject.== infix(_:_:)() & 1) != 0 && (static NSObject.== infix(_:_:)() & 1) != 0 && v11[63] == v12[63] && (static CGAffineTransform.== infix(_:_:)() & 1) != 0 && v11[70] == v12[70] && (static NSObject.== infix(_:_:)() & 1) != 0 && v11[72] == v12[72] && v11[73] == v12[73] && *(v11 + 74) == *(v12 + 74) && v11[75] == v12[75] && v11[76] == v12[76] && v11[77] == v12[77] && v11[78] == v12[78] && v11[79] == v12[79] && v11[80] == v12[80] && v11[81] == v12[81] && ((*(v11 + 656) ^ *(v12 + 656)) & 1) == 0 && ((*(v11 + 657) ^ *(v12 + 657)) & 1) == 0 && ((*(v11 + 658) ^ *(v12 + 658)) & 1) == 0 && ((*(v11 + 659) ^ *(v12 + 659)) & 1) == 0 && v11[83] == v12[83] && v11[84] == v12[84] && v11[85] == v12[85];
    }

    return 0;
  }

  if (!v15)
  {
    return 0;
  }

  sub_100009F78(0, &unk_1011BD3E0);
  v16 = v15;
  v17 = v14;
  v18 = static NSObject.== infix(_:_:)();

  if ((v18 & 1) == 0)
  {
    return 0;
  }

  return v11[37] == v12[37] && v11[38] == v12[38] && (static NSObject.== infix(_:_:)() & 1) != 0 && (static NSObject.== infix(_:_:)() & 1) != 0 && v11[41] == v12[41] && v11[42] == v12[42] && (static NSObject.== infix(_:_:)() & 1) != 0 && (static NSObject.== infix(_:_:)() & 1) != 0 && (static NSObject.== infix(_:_:)() & 1) != 0 && (static NSObject.== infix(_:_:)() & 1) != 0 && (static NSObject.== infix(_:_:)() & 1) != 0 && (static NSObject.== infix(_:_:)() & 1) != 0 && (static NSObject.== infix(_:_:)() & 1) != 0 && (static CGAffineTransform.== infix(_:_:)() & 1) != 0 && v11[56] == v12[56] && (static NSObject.== infix(_:_:)() & 1) != 0 && v11[58] == v12[58] && v11[59] == v12[59] && v11[60] == v12[60] && (static NSObject.== infix(_:_:)() & 1) != 0 && (static NSObject.== infix(_:_:)() & 1) != 0 && v11[63] == v12[63] && (static CGAffineTransform.== infix(_:_:)() & 1) != 0 && v11[70] == v12[70] && (static NSObject.== infix(_:_:)() & 1) != 0 && v11[72] == v12[72] && v11[73] == v12[73] && *(v11 + 74) == *(v12 + 74) && v11[75] == v12[75] && v11[76] == v12[76] && v11[77] == v12[77] && v11[78] == v12[78] && v11[79] == v12[79] && v11[80] == v12[80] && v11[81] == v12[81] && ((*(v11 + 656) ^ *(v12 + 656)) & 1) == 0 && ((*(v11 + 657) ^ *(v12 + 657)) & 1) == 0 && ((*(v11 + 658) ^ *(v12 + 658)) & 1) == 0 && ((*(v11 + 659) ^ *(v12 + 659)) & 1) == 0 && v11[83] == v12[83] && v11[84] == v12[84] && v11[85] == v12[85];
}

void *sub_100CC2658@<X0>(void (*a1)(_BYTE *)@<X0>, void *a2@<X8>)
{
  __src[0] = 0;
  *&__src[8] = 0x404E000000000000;
  *&__src[16] = 0x4028000000000000uLL;
  memset(&__src[32], 0, 17);
  *&__src[56] = xmmword_100F0E0C0;
  *&__src[72] = 0x4043800000000000;
  *&__src[80] = 0;
  __src[88] = 1;
  *&__src[96] = 0;
  __src[104] = 1;
  *&__src[112] = xmmword_100F0E0D0;
  CGAffineTransformMakeScale(&aBlock, 0.9, 0.9);
  *&__src[128] = aBlock;
  *&__src[176] = xmmword_100F0E0E0;
  *&__src[192] = 2;
  sub_100009F78(0, &qword_1011BD920);
  *&__src[200] = static UIFont.preferredFont(forTextStyle:weight:)();
  *&__src[208] = 0;
  __src[216] = 1;
  *&__src[224] = static UIFont.shortEmphasizedPreferredFont(forTextStyle:)();
  v2 = objc_opt_self();
  *&__src[232] = [v2 systemFontOfSize:22.0 weight:UIFontWeightBold];
  *&__src[240] = [v2 systemFontOfSize:22.0 weight:UIFontWeightSemibold];
  *&__src[248] = xmmword_100F0E0F0;
  *&__src[264] = static UIFont.preferredFont(forTextStyle:weight:)();
  *&__src[272] = static UIFont.preferredFont(forTextStyle:weight:)();
  *&__src[280] = [v2 systemFontOfSize:14.0 weight:UIFontWeightBold];
  *&__src[288] = 0;
  *&__src[296] = Int.seconds.getter(7);
  *&__src[304] = Int.seconds.getter(4);
  *&__src[312] = static UIFont.preferredFont(forTextStyle:weight:)();
  *&__src[320] = static UIFont.preferredFont(forTextStyle:weight:)();
  *&__src[328] = Int.seconds.getter(5);
  *&__src[336] = *&__src[328];
  *&__src[344] = [v2 preferredFontForTextStyle:UIFontTextStyleSubheadline];
  v3 = objc_opt_self();
  v4 = [v3 whiteColor];
  v5 = [v3 labelColor];
  v6 = objc_allocWithZone(UIColor);
  v7 = swift_allocObject();
  *(v7 + 16) = v5;
  *(v7 + 24) = v4;
  *&aBlock.tx = sub_100CC3834;
  *&aBlock.ty = v7;
  *&aBlock.a = _NSConcreteStackBlock;
  *&aBlock.b = 1107296256;
  *&aBlock.c = sub_10003640C;
  *&aBlock.d = &unk_1010F7AB0;
  v8 = _Block_copy(&aBlock);
  v9 = v5;
  v10 = v4;

  v11 = [v6 initWithDynamicProvider:v8];

  _Block_release(v8);
  *&__src[352] = v11;
  v12 = [v3 whiteColor];
  v13 = [v12 colorWithAlphaComponent:0.35];

  v14 = [v3 labelColor];
  v15 = [v14 colorWithAlphaComponent:0.85];

  v16 = objc_allocWithZone(UIColor);
  v17 = swift_allocObject();
  *(v17 + 16) = v15;
  *(v17 + 24) = v13;
  *&aBlock.tx = sub_100CC3834;
  *&aBlock.ty = v17;
  *&aBlock.a = _NSConcreteStackBlock;
  *&aBlock.b = 1107296256;
  *&aBlock.c = sub_10003640C;
  *&aBlock.d = &unk_1010F7B00;
  v18 = _Block_copy(&aBlock);
  v19 = v15;
  v20 = v13;

  v21 = [v16 initWithDynamicProvider:v18];

  _Block_release(v18);
  *&__src[360] = v21;
  v22 = [v3 whiteColor];
  v23 = [v22 colorWithAlphaComponent:0.175];

  v24 = [v3 labelColor];
  v25 = [v24 colorWithAlphaComponent:0.4];

  v26 = objc_allocWithZone(UIColor);
  v27 = swift_allocObject();
  *(v27 + 16) = v25;
  *(v27 + 24) = v23;
  *&aBlock.tx = sub_100CC3834;
  *&aBlock.ty = v27;
  *&aBlock.a = _NSConcreteStackBlock;
  *&aBlock.b = 1107296256;
  *&aBlock.c = sub_10003640C;
  *&aBlock.d = &unk_1010F7B50;
  v28 = _Block_copy(&aBlock);
  v29 = v25;
  v30 = v23;

  v31 = [v26 initWithDynamicProvider:v28];

  _Block_release(v28);
  *&__src[368] = v31;
  v32 = [v3 whiteColor];
  v33 = [v32 colorWithAlphaComponent:0.35];

  v34 = [v3 labelColor];
  v35 = [v34 colorWithAlphaComponent:0.85];

  v36 = objc_allocWithZone(UIColor);
  v37 = swift_allocObject();
  *(v37 + 16) = v35;
  *(v37 + 24) = v33;
  *&aBlock.tx = sub_100CC3834;
  *&aBlock.ty = v37;
  *&aBlock.a = _NSConcreteStackBlock;
  *&aBlock.b = 1107296256;
  *&aBlock.c = sub_10003640C;
  *&aBlock.d = &unk_1010F7BA0;
  v38 = _Block_copy(&aBlock);
  v39 = v35;
  v40 = v33;

  v41 = [v36 initWithDynamicProvider:v38];

  _Block_release(v38);
  *&__src[376] = v41;
  v42 = [v3 whiteColor];
  v43 = [v42 colorWithAlphaComponent:0.175];

  v44 = [v3 labelColor];
  v45 = [v44 colorWithAlphaComponent:0.65];

  v46 = objc_allocWithZone(UIColor);
  v47 = swift_allocObject();
  *(v47 + 16) = v45;
  *(v47 + 24) = v43;
  *&aBlock.tx = sub_100CC3834;
  *&aBlock.ty = v47;
  *&aBlock.a = _NSConcreteStackBlock;
  *&aBlock.b = 1107296256;
  *&aBlock.c = sub_10003640C;
  *&aBlock.d = &unk_1010F7BF0;
  v48 = _Block_copy(&aBlock);
  v49 = v45;
  v50 = v43;

  v51 = [v46 initWithDynamicProvider:v48];

  _Block_release(v48);
  *&__src[384] = v51;
  v52 = [v3 whiteColor];
  v53 = [v52 colorWithAlphaComponent:0.4];

  v54 = [v3 labelColor];
  v55 = [v54 colorWithAlphaComponent:0.4];

  v56 = objc_allocWithZone(UIColor);
  v57 = swift_allocObject();
  *(v57 + 16) = v55;
  *(v57 + 24) = v53;
  *&aBlock.tx = sub_100CC3834;
  *&aBlock.ty = v57;
  *&aBlock.a = _NSConcreteStackBlock;
  *&aBlock.b = 1107296256;
  *&aBlock.c = sub_10003640C;
  *&aBlock.d = &unk_1010F7C40;
  v58 = _Block_copy(&aBlock);
  v59 = v55;
  v60 = v53;

  v61 = [v56 initWithDynamicProvider:v58];

  _Block_release(v58);
  *&__src[392] = v61;
  CGAffineTransformMakeScale(&aBlock, 0.98, 0.98);
  *&__src[400] = aBlock;
  *&__src[448] = 0x3FB999999999999ALL;
  *&__src[456] = [v3 whiteColor];
  *&__src[464] = xmmword_100F0E100;
  *&__src[480] = 0x3FD999999999999ALL;
  v62 = [v3 whiteColor];
  v63 = [v3 tintColor];
  v64 = objc_allocWithZone(UIColor);
  v65 = swift_allocObject();
  *(v65 + 16) = v63;
  *(v65 + 24) = v62;
  *&aBlock.tx = sub_100CC3834;
  *&aBlock.ty = v65;
  *&aBlock.a = _NSConcreteStackBlock;
  *&aBlock.b = 1107296256;
  *&aBlock.c = sub_10003640C;
  *&aBlock.d = &unk_1010F7C90;
  v66 = _Block_copy(&aBlock);
  v67 = v63;
  v68 = v62;

  v69 = [v64 initWithDynamicProvider:v66];

  _Block_release(v66);
  *&__src[488] = v69;
  v70 = [v3 whiteColor];
  v71 = [v70 colorWithAlphaComponent:0.175];

  v72 = [v3 tintColor];
  v73 = [v72 colorWithAlphaComponent:0.175];

  v74 = objc_allocWithZone(UIColor);
  v75 = swift_allocObject();
  *(v75 + 16) = v73;
  *(v75 + 24) = v71;
  *&aBlock.tx = sub_100CC3834;
  *&aBlock.ty = v75;
  *&aBlock.a = _NSConcreteStackBlock;
  *&aBlock.b = 1107296256;
  *&aBlock.c = sub_10003640C;
  *&aBlock.d = &unk_1010F7CE0;
  v76 = _Block_copy(&aBlock);
  v77 = v73;
  v78 = v71;

  v79 = [v74 initWithDynamicProvider:v76];

  _Block_release(v76);
  *&__src[496] = v79;
  *&__src[504] = 0x403E000000000000;
  CGAffineTransformMakeScale(&aBlock, 0.95, 0.95);
  *&__src[512] = aBlock;
  *&__src[560] = 0x3FEB333333333333;
  *&__src[568] = [objc_allocWithZone(UIColor) initWithWhite:1.0 alpha:0.08];
  __asm { FMOV            V0.2D, #16.0 }

  *&__src[576] = _Q0;
  *&__src[592] = 3;
  *&__src[600] = 0x4044000000000000;
  *&__src[608] = xmmword_100F0E110;
  *&__src[624] = xmmword_100F0E120;
  *&__src[640] = xmmword_100F0E130;
  *&__src[656] = 257;
  v85 = Int.seconds.getter(1);
  v86 = Int.seconds.getter(100);
  v87 = Int.seconds.getter(18);
  *&__src[664] = v85;
  *&__src[672] = v86;
  *&__src[680] = v87;
  if (a1)
  {

    a1(__src);
    sub_100020438(a1);
    sub_100020438(a1);
  }

  return memcpy(a2, __src, 0x2B0uLL);
}

id sub_100CC3404(char a1)
{
  if (a1)
  {
    v1 = 1.0;
    v2 = 0.0;
    v3 = 0.55;
    v4 = 0;
  }

  else
  {
    v2 = 0.25;
    v4 = 0x3FB999999999999ALL;
    v1 = 0.1;
    v3 = 0.25;
  }

  v5 = _s5SpecsV27CustomCurveAnimationFactoryCMa();
  v6 = objc_allocWithZone(v5);
  v7 = &v6[OBJC_IVAR____TtCVC7LyricsX26SyncedLyricsViewController5SpecsP33_721F05E5229E32246B486C601D4C7EC827CustomCurveAnimationFactory_controlPoint1];
  *v7 = v2;
  *(v7 + 1) = v4;
  v8 = &v6[OBJC_IVAR____TtCVC7LyricsX26SyncedLyricsViewController5SpecsP33_721F05E5229E32246B486C601D4C7EC827CustomCurveAnimationFactory_controlPoint2];
  *v8 = v3;
  v8[1] = v1;
  v10.receiver = v6;
  v10.super_class = v5;
  return objc_msgSendSuper2(&v10, "init");
}

unint64_t sub_100CC34B0()
{
  result = qword_1011BD338;
  if (!qword_1011BD338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011BD338);
  }

  return result;
}

uint64_t sub_100CC350C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 688))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 200);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100CC3554(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 680) = 0;
    *(result + 248) = 0u;
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
    *(result + 664) = 0u;
    *(result + 648) = 0u;
    *(result + 632) = 0u;
    *(result + 616) = 0u;
    *(result + 600) = 0u;
    *(result + 584) = 0u;
    *(result + 568) = 0u;
    *(result + 552) = 0u;
    *(result + 536) = 0u;
    *(result + 520) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 688) = 1;
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
      *(result + 200) = (a2 - 1);
      return result;
    }

    *(result + 688) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t _s5SpecsV20SelectedLinePositionOwet(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7F && *(a1 + 33))
  {
    return (*a1 + 127);
  }

  v3 = (*(a1 + 32) & 0x7E | (*(a1 + 32) >> 7)) ^ 0x7F;
  if (v3 >= 0x7E)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t _s5SpecsV20SelectedLinePositionOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7E)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 127;
    *(result + 8) = 0;
    if (a3 >= 0x7F)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7F)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *result = 0u;
      *(result + 16) = 0u;
      *(result + 32) = 2 * (((-a2 >> 1) & 0x3F) - (a2 << 6));
    }
  }

  return result;
}

__n128 _s5SpecsV22SpringTimingParametersVwCP(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

id sub_100CC37A0(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = [a1 accessibilityContrast];
  if (v4 == 1)
  {
    v5 = v2;
  }

  else
  {
    v5 = v3;
  }

  if (v4 == -1)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  return v6;
}

uint64_t sub_100CC3838(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_10010FC20(&qword_1011BD510);
  __chkstk_darwin();
  v10 = v24 - v9;
  sub_1000089F8(a3, v24 - v9, &qword_1011BD510);
  v11 = type metadata accessor for TaskPriority();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_1000095E8(v10, &qword_1011BD510);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = dispatch thunk of Actor.unownedExecutor.getter();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = String.utf8CString.getter() + 32;
      v19 = swift_allocObject();
      *(v19 + 16) = a4;
      *(v19 + 24) = a5;

      if (v17 | v15)
      {
        v25[0] = 0;
        v25[1] = 0;
        v20 = v25;
        v25[2] = v15;
        v25[3] = v17;
      }

      else
      {
        v20 = 0;
      }

      v24[1] = 7;
      v24[2] = v20;
      v24[3] = v18;
      v22 = swift_task_create();

      sub_1000095E8(a3, &qword_1011BD510);

      return v22;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1000095E8(a3, &qword_1011BD510);
  v21 = swift_allocObject();
  *(v21 + 16) = a4;
  *(v21 + 24) = a5;
  if (v17 | v15)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v15;
    v25[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_100CC3B74(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Lyrics.TextLine(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

id SyncedLyricsSharingTransitionInfo.initialView.getter()
{
  v1 = *(v0 + *(type metadata accessor for SyncedLyricsSharingTransitionInfo(0) + 20));

  return v1;
}

void SyncedLyricsSharingTransitionInfo.initialView.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SyncedLyricsSharingTransitionInfo(0) + 20);

  *(v1 + v3) = a1;
}

uint64_t SyncedLyricsSharingTransitionInfo.alignment.setter(uint64_t a1)
{
  result = type metadata accessor for SyncedLyricsSharingTransitionInfo(0);
  *(v1 + *(result + 24)) = a1;
  return result;
}

uint64_t SyncedLyricsSharingTransitionInfo.frame.setter(double a1, double a2, double a3, double a4)
{
  result = type metadata accessor for SyncedLyricsSharingTransitionInfo(0);
  v10 = (v4 + *(result + 28));
  *v10 = a1;
  v10[1] = a2;
  v10[2] = a3;
  v10[3] = a4;
  return result;
}

uint64_t SyncedLyricsSharingTransitionInfo.isSelected.setter(char a1)
{
  result = type metadata accessor for SyncedLyricsSharingTransitionInfo(0);
  *(v1 + *(result + 32)) = a1;
  return result;
}

__n128 SyncedLyricsSharingTransitionInfo.transform.getter@<Q0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for SyncedLyricsSharingTransitionInfo(0) + 36);
  v4 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 16) = v4;
  result = *(v3 + 32);
  *(a1 + 32) = result;
  return result;
}

__n128 SyncedLyricsSharingTransitionInfo.transform.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for SyncedLyricsSharingTransitionInfo(0) + 36);
  v4 = *(a1 + 16);
  *v3 = *a1;
  *(v3 + 16) = v4;
  result = *(a1 + 32);
  *(v3 + 32) = result;
  return result;
}

uint64_t SyncedLyricsSharingTransitionInfo.transitionWillBeginHandler.getter()
{
  v1 = *(v0 + *(type metadata accessor for SyncedLyricsSharingTransitionInfo(0) + 40));

  return v1;
}

uint64_t SyncedLyricsSharingTransitionInfo.transitionWillBeginHandler.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for SyncedLyricsSharingTransitionInfo(0) + 40));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t SyncedLyricsSharingTransitionInfo.transitionCompletionHandler.getter()
{
  v1 = *(v0 + *(type metadata accessor for SyncedLyricsSharingTransitionInfo(0) + 44));

  return v1;
}

uint64_t SyncedLyricsSharingTransitionInfo.transitionCompletionHandler.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for SyncedLyricsSharingTransitionInfo(0) + 44));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t SyncedLyricsViewController.isPlayingSpatial.getter()
{
  v1 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_isPlayingSpatial;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t SyncedLyricsViewController.isPlayingSpatial.setter(char a1)
{
  v3 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_isPlayingSpatial;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  v5 = *(v1 + OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_manager);
  if (v5)
  {
    result = swift_beginAccess();
    *(v5 + 88) = a1 & 1;
  }

  return result;
}

void (*SyncedLyricsViewController.isPlayingSpatial.modify(uint64_t *a1))(void **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_isPlayingSpatial;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return sub_100CC43CC;
}

void sub_100CC43CC(void **a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = v3[3];
    v5 = *(v4 + OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_manager);
    if (v5)
    {
      v6 = *(v4 + v3[4]);
      swift_beginAccess();
      *(v5 + 88) = v6;
    }
  }

  free(v3);
}

uint64_t SyncedLyricsViewController.isFullScreen.getter()
{
  v1 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_isFullScreen;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t SyncedLyricsViewController.isFullScreen.setter(char a1)
{
  v3 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_isFullScreen;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

double SyncedLyricsViewController.bottomTapAreaHeight.getter()
{
  v1 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_bottomTapAreaHeight;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t SyncedLyricsViewController.bottomTapAreaHeight.setter(double a1)
{
  v3 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_bottomTapAreaHeight;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

double SyncedLyricsViewController.containerHeight.getter()
{
  v1 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_containerHeight;
  swift_beginAccess();
  return *(v0 + v1);
}

void SyncedLyricsViewController.containerHeight.setter(double a1)
{
  v3 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_containerHeight;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  if (v4 != a1)
  {
    sub_100CCCB90();
  }
}

void (*SyncedLyricsViewController.containerHeight.modify(uint64_t *a1))(uint64_t a1)
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
  v5 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_containerHeight;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = *(v1 + v5);
  return sub_100CC476C;
}

void sub_100CC476C(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 24);
  v4 = *(*a1 + 32);
  v3 = *(*a1 + 40);
  v5 = *(v4 + v3);
  *(v4 + v3) = v2;
  if (v2 != v5)
  {
    sub_100CCCB90();
  }

  free(v1);
}

void sub_100CC47C4(unsigned __int8 *a1)
{
  v2 = v1;
  if (![v1 isViewLoaded])
  {
    return;
  }

  v4 = &v1[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_specs];
  swift_beginAccess();
  memcpy(__dst, v4, 0x2B0uLL);
  sub_1002AD8C8(__dst, v34);
  v5 = _s7LyricsX06SyncedA14ViewControllerC5SpecsV23__derived_struct_equalsySbAE_AEtFZ_0(__dst, a1);
  sub_100C9C2C4(__dst);
  if (v5)
  {
    return;
  }

  sub_100CCCB90();
  v6 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_scrollView;
  swift_beginAccess();
  [*&v2[v6] setShowsVerticalScrollIndicator:v4[656]];
  v7 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_lineViews;
  swift_beginAccess();
  v8 = *&v2[v7];
  if (v8 >> 62)
  {
    v9 = _CocoaArrayWrapper.endIndex.getter();
    if (v9)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v9)
    {
LABEL_5:
      v25 = a1;
      v28 = v9 - 1;
      if (v9 < 1)
      {
        __break(1u);
        return;
      }

      v27 = v8 & 0xC000000000000001;

      v10 = 0;
      v26 = v4;
      if ((v8 & 0xC000000000000001) == 0)
      {
        goto LABEL_8;
      }

LABEL_7:
      for (i = specialized _ArrayBuffer._getElementSlowPath(_:)(); ; i = *(v8 + 8 * v10 + 32))
      {
        v12 = i;
        memcpy(v32, v4, sizeof(v32));
        v13 = OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_specs;
        memcpy(v33, &v12[OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_specs], sizeof(v33));
        memmove(&v12[OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_specs], v4, 0x2B0uLL);
        sub_1002AD8C8(v32, v31);
        sub_1002AD8C8(v32, v31);
        sub_100C9C2C4(v33);
        v15 = sub_100CB3680(v30);
        if (*v14)
        {
          v16 = v14;
          memcpy(v34, &v12[v13], sizeof(v34));
          v29 = v10;
          v17 = v8;
          v19 = *v16;
          v18 = v16[1];
          ObjectType = swift_getObjectType();
          v21 = v2;
          v22 = v18[2];
          sub_1002AD8C8(v34, v31);
          v23 = v19;
          v22(v34, ObjectType, v18);
          v2 = v21;
          v24 = *v16;
          *v16 = v19;
          v16[1] = v18;
          v8 = v17;
          v10 = v29;
        }

        v15(v30, 0);
        sub_100C9C2C4(v32);
        sub_100CCF9F0(v12);

        if (v28 == v10)
        {
          break;
        }

        ++v10;
        v4 = v26;
        if (v27)
        {
          goto LABEL_7;
        }

LABEL_8:
        ;
      }

      a1 = v25;
      v4 = v26;
    }
  }

  if (v4[657] != (a1[657] & 1))
  {
    if (v4[657])
    {
      sub_100CD3AEC(0);
    }

    else
    {
      sub_100CD4E68();
    }
  }
}

void *SyncedLyricsViewController.specs.getter@<X0>(void *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_specs;
  swift_beginAccess();
  memcpy(__dst, (v1 + v3), sizeof(__dst));
  sub_1002AD8C8(__dst, v5);
  return memcpy(a1, __dst, 0x2B0uLL);
}

uint64_t SyncedLyricsViewController.specs.setter(const void *a1)
{
  v3 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_specs;
  swift_beginAccess();
  memcpy(__dst, (v1 + v3), sizeof(__dst));
  memcpy(v7, (v1 + v3), sizeof(v7));
  memcpy((v1 + v3), a1, 0x2B0uLL);
  sub_1002AD8C8(__dst, v5);
  sub_1002AD8C8(a1, v5);
  sub_100C9C2C4(v7);
  sub_100CC47C4(__dst);
  sub_100C9C2C4(__dst);
  return sub_100C9C2C4(a1);
}

void (*SyncedLyricsViewController.specs.modify(uint64_t *a1))(unsigned __int8 **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x15A8uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 5528) = v1;
  v5 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_specs;
  *(v3 + 5536) = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_specs;
  swift_beginAccess();
  memcpy(v4, (v1 + v5), 0x2B0uLL);
  memcpy((v4 + 2064), (v1 + v5), 0x2B0uLL);
  sub_1002AD8C8(v4, v4 + 2752);
  return sub_100CC4CC4;
}

void sub_100CC4CC4(unsigned __int8 **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v3 = *(v2 + 692);
    v4 = *(v2 + 691);
    memcpy(v2 + 4128, v2 + 2064, 0x2B0uLL);
    memcpy(v2 + 688, (v4 + v3), 0x2B0uLL);
    memcpy(v2 + 3440, (v4 + v3), 0x2B0uLL);
    memcpy((v4 + v3), v2 + 2064, 0x2B0uLL);
    sub_1002AD8C8((v2 + 4128), (v2 + 4816));
    sub_1002AD8C8((v2 + 4128), (v2 + 4816));
    sub_1002AD8C8((v2 + 688), (v2 + 4816));
    sub_100C9C2C4((v2 + 3440));
    sub_100CC47C4(v2 + 688);
    sub_100C9C2C4((v2 + 688));
    sub_100C9C2C4((v2 + 4128));
    memcpy(v2 + 2752, v2 + 2064, 0x2B0uLL);
    v5 = (v2 + 2752);
  }

  else
  {
    v6 = *(v2 + 692);
    v7 = *(v2 + 691);
    memcpy(v2 + 3440, v2 + 2064, 0x2B0uLL);
    memcpy(v2 + 1376, (v7 + v6), 0x2B0uLL);
    memcpy(v2 + 2752, (v7 + v6), 0x2B0uLL);
    memcpy((v7 + v6), v2 + 2064, 0x2B0uLL);
    sub_1002AD8C8((v2 + 1376), (v2 + 4128));
    sub_1002AD8C8((v2 + 3440), (v2 + 4128));
    sub_100C9C2C4((v2 + 2752));
    sub_100CC47C4(v2 + 1376);
    sub_100C9C2C4((v2 + 1376));
    v5 = (v2 + 3440);
  }

  sub_100C9C2C4(v5);

  free(v2);
}

uint64_t SyncedLyricsViewController.delegate.setter(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_delegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*SyncedLyricsViewController.delegate.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_delegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_100CC4F94;
}

void sub_100CC4F94(uint64_t a1, char a2)
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
  }

  free(v3);
}

uint64_t SyncedLyricsViewController.mode.getter()
{
  v1 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_mode;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_100CC5060(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_lyrics;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;

  sub_100CC50D0(v5);
}

id sub_100CC50D0(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_lyrics;
  swift_beginAccess();
  v4 = *(v1 + v3);
  if (v4)
  {
    if (v4 == a1)
    {
      return sub_100CD16A0(0);
    }
  }

  else if (!a1)
  {
    return sub_100CD16A0(0);
  }

  v6 = *(v1 + OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_timestampLabel);
  *(v1 + OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_timestampLabel) = 0;
  if (v6)
  {
    [v6 removeFromSuperview];
  }

  v7 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_selectedLineViews;
  swift_beginAccess();
  *(v1 + v7) = _swiftEmptyArrayStorage;

  if (_swiftEmptyArrayStorage >> 62 && _CocoaArrayWrapper.endIndex.getter())
  {
    sub_100C7CD94(_swiftEmptyArrayStorage);
    v8 = v27;
  }

  else
  {
    v8 = &_swiftEmptySetSingleton;
  }

  v9 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_blurredLineViews;
  swift_beginAccess();
  *(v1 + v9) = v8;

  v10 = *(v1 + v3);
  if (v10)
  {
    v11 = v1 + OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_specs;
    swift_beginAccess();
    if (*v11)
    {
    }

    else
    {
      v13 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v14 = *(v11 + 648);
      v15 = *(v11 + 184);
      v16 = *(v11 + 192);
      v17 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_isPlayingSpatial;
      swift_beginAccess();
      v18 = *(v1 + v17);
      type metadata accessor for SyncedLyricsManager();
      v19 = swift_allocObject();
      *(v19 + 72) = 0;
      swift_unknownObjectWeakInit();
      *(v19 + 80) = _swiftEmptyArrayStorage;
      *(v19 + 96) = 0u;
      *(v19 + 112) = 0u;
      *(v19 + 128) = 0u;
      *(v19 + 144) = 0;
      *(v19 + 16) = v10;
      *(v19 + 24) = sub_100CE0E64;
      *(v19 + 32) = v13;
      *(v19 + 40) = v14;
      *(v19 + 48) = v15;
      *(v19 + 56) = v16;
      swift_beginAccess();
      *(v19 + 72) = &protocol witness table for SyncedLyricsViewController;
      swift_unknownObjectWeakAssign();
      *(v19 + 88) = v18;
      *(v1 + OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_manager) = v19;
      swift_retain_n();
    }

    v20 = v1;
    sub_100CD92D4();
    sub_100CD07AC(v10);
    v21 = v1;
    v22 = *(v1 + OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_manager);
    if (v22)
    {
      v23 = swift_allocObject();
      swift_unknownObjectWeakInit();
      swift_beginAccess();
      v24 = *(v22 + 96);
      *(v22 + 96) = sub_100CE1228;
      *(v22 + 104) = v23;

      swift_retain_n();
      sub_100020438(v24);
      sub_100CBC800();
      v21 = v20;
    }

    v25 = *(v21 + OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_displayLink);
    if (v25)
    {
      v26 = v25;
      [v26 setPaused:sub_100CD2A5C() & 1];
    }
  }

  else
  {
    v12 = *(v1 + OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_displayLink);
    if (v12)
    {
      [v12 setPaused:1];
    }

    *(v1 + OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_manager) = 0;
  }
}

double sub_100CC546C(double a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0.0;
  }

  v3 = Strong;
  v4 = sub_100CD38A4(*&a1, 0);

  [v4 settlingDuration];
  v6 = v5;

  return v6;
}

void sub_100CC5544(uint64_t a1)
{
  v2 = v1;
  sub_10010FC20(&qword_1011BD938);
  __chkstk_darwin();
  v5 = &v52 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v7 = &v52 - v6;
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = &v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v13 = &v52 - v12;
  v14 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_timingProvider;
  swift_beginAccess();
  sub_1000089F8(v2 + v14, &v55, &qword_1011BD4B8);
  v15 = off_1011BD000;
  if (v56)
  {
    sub_100059A8C(&v55, v58);
    sub_100008FE4(v58, &v55);
    sub_10010FC20(&qword_1011BD950);
    type metadata accessor for SyncedLyricsViewController.StaticTimingProvider();
    if (swift_dynamicCast())
    {

      goto LABEL_26;
    }

    v18 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_mode;
    swift_beginAccess();
    if (*(v2 + v18) == 2)
    {
LABEL_26:
      __chkstk_darwin();
      *(&v52 - 2) = v58;
      sub_100CDC7A0(sub_100CE0FF0);
      v45 = *(v2 + OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_manager);
      if (v45)
      {
        v46 = swift_allocObject();
        swift_unknownObjectWeakInit();
        swift_beginAccess();
        v47 = *(v45 + 96);
        *(v45 + 96) = sub_100CE1228;
        *(v45 + 104) = v46;

        swift_retain_n();
        sub_100020438(v47);
        sub_100CBC800();
      }

LABEL_28:
      sub_10000959C(v58);
      goto LABEL_29;
    }

    sub_1000089F8(a1, &v55, &qword_1011BD4B8);
    v19 = v56;
    if (v56)
    {
      v20 = v57;
      sub_10000954C(&v55, v56);
      v21 = (*(v20 + 8))(v19, v20);
      v22 = v21();

      sub_10000959C(&v55);
      v23 = v59;
      v24 = v60;
      sub_10000954C(v58, v59);
      v25 = (*(v24 + 8))(v23, v24);
      v26 = v25();

      if (vabdd_f64(v22, v26) <= 0.5)
      {
        if (qword_1011BB908 != -1)
        {
          swift_once();
        }

        v27 = type metadata accessor for Logger();
        sub_1000060E4(v27, qword_1011BD450);
        v28 = Logger.logObject.getter();
        v29 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v28, v29))
        {
          v53 = "ince last tap, ignoring.";
          v30 = swift_slowAlloc();
          v31 = swift_slowAlloc();
          v52 = v28;
          v32 = v31;
          *&v55 = v31;
          *v30 = 136315138;
          *(v30 + 4) = sub_1000109A8(0xD00000000000005FLL, v53 | 0x8000000000000000, &v55);
          v33 = v29;
          v34 = v52;
          _os_log_impl(&_mh_execute_header, v52, v33, "%s", v30, 0xCu);
          sub_10000959C(v32);
        }

        else
        {
        }

        v35 = 0;
LABEL_16:
        v36 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_lastTapDate;
        swift_beginAccess();
        sub_1000089F8(v2 + v36, v7, &qword_1011BD938);
        if ((*(v9 + 48))(v7, 1, v8) == 1)
        {
          sub_1000095E8(v7, &qword_1011BD938);
        }

        else
        {
          LODWORD(v53) = v35;
          (*(v9 + 32))(v13, v7, v8);
          Date.init()();
          Date.timeIntervalSince(_:)();
          v38 = v37;
          v39 = *(v9 + 8);
          v39(v11, v8);
          if (v38 < 1.0)
          {
            if (qword_1011BB908 != -1)
            {
              swift_once();
            }

            v40 = type metadata accessor for Logger();
            sub_1000060E4(v40, qword_1011BD450);
            v41 = Logger.logObject.getter();
            v42 = static os_log_type_t.default.getter();
            if (os_log_type_enabled(v41, v42))
            {
              v43 = swift_slowAlloc();
              v44 = swift_slowAlloc();
              v54[0] = v44;
              *v43 = 136315138;
              *(v43 + 4) = sub_1000109A8(0xD000000000000058, 0x8000000100E6BC30, v54);
              _os_log_impl(&_mh_execute_header, v41, v42, "%s", v43, 0xCu);
              sub_10000959C(v44);
            }

            v39(v13, v8);
            v15 = off_1011BD000;
            goto LABEL_32;
          }

          v39(v13, v8);
          v35 = v53;
        }

        (*(v9 + 56))(v5, 1, 1, v8);
        swift_beginAccess();
        sub_10006B010(v5, v2 + v36, &qword_1011BD938);
        swift_endAccess();
        v15 = off_1011BD000;
        if (v35)
        {
          goto LABEL_26;
        }

LABEL_32:
        v50 = *(v2 + OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_displayLink);
        if (v50)
        {
          v51 = v50;
          [v51 setPaused:sub_100CD2A5C() & 1];
        }

        goto LABEL_28;
      }
    }

    else
    {
      sub_1000095E8(&v55, &qword_1011BD4B8);
    }

    v35 = 1;
    goto LABEL_16;
  }

  sub_1000095E8(&v55, &qword_1011BD4B8);
  v16 = *(v2 + OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_manager);
  if (v16)
  {
    swift_beginAccess();
    v17 = *(v16 + 96);
    *(v16 + 96) = 0;
    *(v16 + 104) = 0;

    sub_100020438(v17);
    sub_100CBC800();
  }

LABEL_29:
  v48 = *(v15[167] + v2);
  if (v48)
  {
    v49 = v48;
    [v49 setPaused:sub_100CD2A5C() & 1];
  }
}

uint64_t sub_100CC5DDC(void *a1)
{
  _StringGuts.grow(_:)(56);
  v2._object = 0x8000000100E6BCF0;
  v2._countAndFlagsBits = 0xD000000000000036;
  String.append(_:)(v2);
  v3 = a1[3];
  v4 = a1[4];
  sub_10000954C(a1, v3);
  v5 = (*(v4 + 8))(v3, v4);
  v5();

  Double.write<A>(to:)();
  return 0;
}

double sub_100CC5EB8()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v1 = 0.0;
  if (Strong)
  {
    v2 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_timingProvider;
    v3 = Strong;
    swift_beginAccess();
    sub_1000089F8(v3 + v2, v14, &qword_1011BD4B8);

    v4 = v15;
    if (v15)
    {
      v5 = v16;
      sub_10000954C(v14, v15);
      v6 = *(v4 - 8);
      v7 = __chkstk_darwin();
      v9 = v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
      (*(v6 + 16))(v9, v7);
      sub_1000095E8(v14, &qword_1011BD4B8);
      v10 = (*(v5 + 8))(v4, v5);
      v11 = (*(v6 + 8))(v9, v4);
      v1 = v10(v11);
    }

    else
    {
      sub_1000095E8(v14, &qword_1011BD4B8);
    }
  }

  return v1;
}

uint64_t SyncedLyricsViewController.timingProvider.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_timingProvider;
  swift_beginAccess();
  return sub_1000089F8(v1 + v3, a1, &qword_1011BD4B8);
}

uint64_t SyncedLyricsViewController.timingProvider.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_timingProvider;
  swift_beginAccess();
  sub_1000089F8(v1 + v3, v5, &qword_1011BD4B8);
  swift_beginAccess();
  sub_1002190E0(a1, v1 + v3, &qword_1011BD4B8);
  swift_endAccess();
  sub_100CC5544(v5);
  sub_1000095E8(a1, &qword_1011BD4B8);
  return sub_1000095E8(v5, &qword_1011BD4B8);
}

void (*SyncedLyricsViewController.timingProvider.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0xB8uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_timingProvider;
  *(v3 + 168) = v1;
  *(v3 + 176) = v5;
  swift_beginAccess();
  sub_1000089F8(v1 + v5, v4, &qword_1011BD4B8);
  return sub_100CC6274;
}

void sub_100CC6274(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 168);
  v4 = *(*a1 + 176);
  if (a2)
  {
    sub_1000089F8(*a1, v2 + 40, &qword_1011BD4B8);
    sub_1000089F8(v3 + v4, v2 + 80, &qword_1011BD4B8);
    swift_beginAccess();
    sub_1002190E0(v2 + 40, v3 + v4, &qword_1011BD4B8);
    swift_endAccess();
    sub_100CC5544(v2 + 80);
    sub_1000095E8(v2 + 80, &qword_1011BD4B8);
  }

  else
  {
    sub_1000089F8(v3 + v4, v2 + 40, &qword_1011BD4B8);
    swift_beginAccess();
    sub_1002190E0(v2, v3 + v4, &qword_1011BD4B8);
    swift_endAccess();
    sub_100CC5544(v2 + 40);
  }

  sub_1000095E8(v2 + 40, &qword_1011BD4B8);
  sub_1000095E8(v2, &qword_1011BD4B8);

  free(v2);
}

id SyncedLyricsViewController.bottomViewMetadata.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_bottomViewMetadata;
  swift_beginAccess();
  v4 = *(v3 + 32);
  v5 = *(v3 + 16);
  v6 = *v3;
  *a1 = *v3;
  *(a1 + 16) = v5;
  *(a1 + 32) = v4;

  return v6;
}

void SyncedLyricsViewController.bottomViewMetadata.setter(uint64_t a1)
{
  v3 = v1 + OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_bottomViewMetadata;
  swift_beginAccess();
  v4 = *v3;
  v5 = *(a1 + 16);
  *v3 = *a1;
  *(v3 + 16) = v5;
  *(v3 + 32) = *(a1 + 32);
  sub_1000089F8(a1, &v11, &qword_1011BD4C8);
  if (v4)
  {
    [v4 removeFromSuperview];
  }

  v6 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_lineViews;
  swift_beginAccess();
  v7 = *(v1 + v6);
  if (!(v7 >> 62))
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v8)
    {
      goto LABEL_5;
    }

LABEL_12:

    sub_1000095E8(a1, &qword_1011BD4C8);

    return;
  }

  v8 = _CocoaArrayWrapper.endIndex.getter();
  if (!v8)
  {
    goto LABEL_12;
  }

LABEL_5:
  v9 = v8 - 1;
  if (__OFSUB__(v8, 1))
  {
    __break(1u);
    goto LABEL_14;
  }

  if ((v7 & 0xC000000000000001) != 0)
  {
LABEL_14:

    v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();

    goto LABEL_10;
  }

  if ((v9 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v9 < *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v10 = *(v7 + 8 * v9 + 32);
LABEL_10:
    sub_100CCF9F0(v10);

    sub_1000095E8(a1, &qword_1011BD4C8);
    return;
  }

  __break(1u);
}

void (*SyncedLyricsViewController.bottomViewMetadata.modify(uint64_t *a1))(char **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0xC0uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 184) = v1;
  v5 = (v1 + OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_bottomViewMetadata);
  swift_beginAccess();
  v6 = *(v5 + 4);
  v7 = *v5;
  v8 = v5[1];
  *(v4 + 80) = *v5;
  *(v4 + 96) = v8;
  *(v4 + 112) = v6;
  v9 = v7;
  return sub_100CC6684;
}

void sub_100CC6684(char **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 6);
  if (a2)
  {
    *v2 = *(v2 + 5);
    *(v2 + 1) = v3;
    *(v2 + 4) = *(v2 + 14);
    sub_1000089F8(v2, (v2 + 120), &qword_1011BD4C8);
    SyncedLyricsViewController.bottomViewMetadata.setter(v2);
  }

  else
  {
    *(v2 + 40) = *(v2 + 5);
    *(v2 + 56) = v3;
    *(v2 + 9) = *(v2 + 14);
    SyncedLyricsViewController.bottomViewMetadata.setter((v2 + 40));
  }

  free(v2);
}

uint64_t SyncedLyricsViewController.shareHandler.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_shareHandler);
  swift_beginAccess();
  v2 = *v1;
  sub_100030444(*v1);
  return v2;
}

uint64_t SyncedLyricsViewController.shareHandler.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_shareHandler);
  swift_beginAccess();
  v6 = *v5;
  *v5 = a1;
  v5[1] = a2;
  return sub_100020438(v6);
}

id SyncedLyricsViewController.contentView.getter()
{
  v1 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_contentView;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void SyncedLyricsViewController.contentView.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_contentView;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id SyncedLyricsViewController.scrollView.getter()
{
  v1 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_scrollView;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void SyncedLyricsViewController.scrollView.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_scrollView;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void (*SyncedLyricsViewController.currentTranslation.modify(uint64_t *a1))(void *a1, char a2)
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
  *(v3 + 24) = v1;
  v5 = *(*(sub_10010FC20(&qword_1011BD4F0) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  v7 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_currentTranslation;
  *(v4 + 32) = v6;
  *(v4 + 40) = v7;
  swift_beginAccess();
  return sub_100CC6B6C;
}

uint64_t sub_100CC6BE0(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4, uint64_t (*a5)(void))
{
  sub_10010FC20(a2);
  __chkstk_darwin();
  v11 = &v17 - v10;
  v12 = *a4;
  swift_beginAccess();
  sub_1002190E0(a1, v5 + v12, a2);
  swift_endAccess();
  if ((*(v5 + OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_isSettingLyrics) & 1) == 0)
  {
    sub_1000089F8(v5 + v12, v11, a2);
    v13 = a5(0);
    if ((*(*(v13 - 8) + 48))(v11, 1, v13) == 1)
    {
      v14 = 150.0;
    }

    else
    {
      v14 = 130.0;
    }

    sub_100009F78(0, &qword_1011BD500);
    sub_1000095E8(v11, a2);
    isa = UIViewPropertyAnimator.init(springTimingParameters:)([objc_allocWithZone(UISpringTimingParameters) initWithMass:1.0 stiffness:v14 damping:30.0 initialVelocity:{0.0, 0.0}]).super.isa;
    sub_100CD16A0(isa);
  }

  return sub_1000095E8(a1, a2);
}

void (*SyncedLyricsViewController.currentTransliteration.modify(uint64_t *a1))(void *a1, char a2)
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
  *(v3 + 24) = v1;
  v5 = *(*(sub_10010FC20(&qword_1011BBA58) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  v7 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_currentTransliteration;
  *(v4 + 32) = v6;
  *(v4 + 40) = v7;
  swift_beginAccess();
  return sub_100CC6E84;
}

void sub_100CC6EAC(void *a1, char a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(void))
{
  v8 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v9 = v8[3];
    if ((*(v9 + OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_isSettingLyrics) & 1) == 0)
    {
      v10 = v8[4];
      sub_1000089F8(v9 + v8[5], v10, a3);
      v11 = a5(0);
      if ((*(*(v11 - 8) + 48))(v10, 1, v11) == 1)
      {
        v12 = 150.0;
      }

      else
      {
        v12 = 130.0;
      }

      sub_100009F78(0, &qword_1011BD500);
      sub_1000095E8(v10, a3);
      isa = UIViewPropertyAnimator.init(springTimingParameters:)([objc_allocWithZone(UISpringTimingParameters) initWithMass:1.0 stiffness:v12 damping:30.0 initialVelocity:{0.0, 0.0}]).super.isa;
      sub_100CD16A0(isa);
    }
  }

  free(v8[4]);

  free(v8);
}

Swift::Void __swiftcall SyncedLyricsViewController.viewDidLoad()()
{
  v1 = v0;
  swift_getObjectType();
  sub_10010FC20(&qword_1011BD510);
  __chkstk_darwin();
  v3 = &v62 - v2;
  v4 = type metadata accessor for SyncedLyricsViewController(0);
  v66.receiver = v0;
  v66.super_class = v4;
  objc_msgSendSuper2(&v66, "viewDidLoad");
  v5 = [v0 view];
  if (!v5)
  {
    __break(1u);
    goto LABEL_10;
  }

  v6 = v5;
  [v5 setPreservesSuperviewLayoutMargins:1];

  [v1 setViewRespectsSystemMinimumLayoutMargins:0];
  v7 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_contentView;
  swift_beginAccess();
  v8 = *&v1[v7];
  v9 = [v1 view];
  if (!v9)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v10 = v9;
  v64 = v3;
  [v9 bounds];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;

  [v8 setFrame:{v12, v14, v16, v18}];
  [*&v1[v7] setAutoresizingMask:18];
  v19 = [v1 view];
  if (!v19)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v20 = v19;
  [v19 addSubview:*&v1[v7]];

  v21 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_scrollView;
  swift_beginAccess();
  v65 = v21;
  v22 = *&v1[v21];
  v23 = [v1 view];
  if (!v23)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v24 = v23;
  [v23 bounds];
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;

  [v22 setFrame:{v26, v28, v30, v32}];
  v33 = v65;
  [*&v1[v65] setClipsToBounds:0];
  [*&v1[v33] setIndicatorStyle:2];
  [*&v1[v33] setShowsHorizontalScrollIndicator:0];
  [*&v1[v33] setAutoresizingMask:18];
  [*&v1[v33] setDelegate:v1];
  [*&v1[v33] setMultipleTouchEnabled:0];
  v34 = *&v1[v33];
  v35 = &v1[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_specs];
  swift_beginAccess();
  [v34 setShowsVerticalScrollIndicator:v35[656]];
  [*&v1[v33] _setHiddenPocketEdges:15];
  [*&v1[v7] addSubview:*&v1[v33]];
  sub_10010FC20(&qword_1011BD518);
  v36 = swift_allocObject();
  v62 = xmmword_100EBC6B0;
  *(v36 + 16) = xmmword_100EBC6B0;
  *(v36 + 32) = type metadata accessor for UITraitPreferredContentSizeCategory();
  *(v36 + 40) = &protocol witness table for UITraitPreferredContentSizeCategory;
  UIViewController.registerForTraitChanges<A>(_:handler:)();
  swift_unknownObjectRelease();

  v37 = objc_opt_self();
  v38 = [v37 defaultCenter];
  v39 = NSNotificationCenter.notifications(named:object:)();

  v40 = [v37 defaultCenter];
  v63 = NSNotificationCenter.notifications(named:object:)();

  v41 = swift_allocObject();
  *(v41 + 16) = v62;
  *(v41 + 32) = type metadata accessor for UITraitAccessibilityContrast();
  *(v41 + 40) = &protocol witness table for UITraitAccessibilityContrast;
  UIViewController.registerForTraitChanges<A>(_:handler:)();
  swift_unknownObjectRelease();

  v42 = type metadata accessor for TaskPriority();
  v43 = *(*(v42 - 8) + 56);
  v44 = v64;
  v43(v64, 1, 1, v42);
  v45 = swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for MainActor();

  v46 = static MainActor.shared.getter();
  v47 = swift_allocObject();
  v47[2] = v46;
  v47[3] = &protocol witness table for MainActor;
  *&v62 = v39;
  v47[4] = v39;
  v47[5] = v45;

  sub_100CC3838(0, 0, v44, &unk_100F10418, v47);

  v43(v44, 1, 1, v42);
  v48 = v63;
  v49 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v50 = static MainActor.shared.getter();
  v51 = swift_allocObject();
  v51[2] = v50;
  v51[3] = &protocol witness table for MainActor;
  v51[4] = v48;
  v51[5] = v49;

  sub_100CC3838(0, 0, v44, &unk_100F10428, v51);

  v52 = [v1 traitCollection];
  v53 = [v52 userInterfaceIdiom];

  v54 = [objc_allocWithZone(UITapGestureRecognizer) init];
  v55 = v54;
  if (v53 == 2)
  {
    sub_10010FC20(&qword_1011BD520);
    v56 = swift_allocObject();
    *(v56 + 16) = xmmword_100EBC6C0;
    *(v56 + 32) = Int._bridgeToObjectiveC()();
    sub_100009F78(0, &qword_1011BD528);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v55 setAllowedPressTypes:isa];

    [v55 setDelegate:v1];
    [v55 addTarget:v1 action:"menuHandler:"];
    v58 = *&v1[v65];
    [v58 addGestureRecognizer:v55];

    v59 = *&v1[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_menuRecognizer];
    *&v1[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_menuRecognizer] = v55;

    return;
  }

  [v54 setDelegate:v1];
  [v55 addTarget:v1 action:"tapHandler:"];
  v60 = [v1 view];
  if (v60)
  {
    v61 = v60;
    [v60 addGestureRecognizer:v55];

    return;
  }

LABEL_13:
  __break(1u);
}

uint64_t sub_100CC7838(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[14] = a4;
  v5[15] = a5;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v5[16] = v6;
  v5[17] = *(v6 - 8);
  v5[18] = swift_task_alloc();
  v7 = type metadata accessor for DispatchQoS();
  v5[19] = v7;
  v5[20] = *(v7 - 8);
  v5[21] = swift_task_alloc();
  type metadata accessor for NSNotificationCenter.Notifications.Iterator();
  v5[22] = swift_task_alloc();
  v8 = sub_10010FC20(&qword_1011BD958);
  v5[23] = v8;
  v5[24] = *(v8 - 8);
  v5[25] = swift_task_alloc();
  v9 = sub_10010FC20(&qword_1011BD960);
  v5[26] = v9;
  v5[27] = *(v9 - 8);
  v5[28] = swift_task_alloc();
  v5[29] = type metadata accessor for MainActor();
  v5[30] = static MainActor.shared.getter();
  v11 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[31] = v11;
  v5[32] = v10;

  return _swift_task_switch(sub_100CC7A88, v11, v10);
}

uint64_t sub_100CC7A88()
{
  v1 = v0[24];
  v2 = v0[25];
  v3 = v0[23];
  v0[11] = v0[14];
  type metadata accessor for NSNotificationCenter.Notifications();
  v0[33] = sub_100009F78(0, &qword_1011BD968);
  sub_1000298C0(&qword_1011BD970, &type metadata accessor for NSNotificationCenter.Notifications);

  AsyncCompactMapSequence.init(_:transform:)();
  AsyncCompactMapSequence.base.getter();
  dispatch thunk of AsyncSequence.makeAsyncIterator()();
  AsyncCompactMapSequence.transform.getter();
  (*(v1 + 8))(v2, v3);
  AsyncCompactMapSequence.Iterator.init(_:transform:)();
  swift_beginAccess();
  v4 = static MainActor.shared.getter();
  v0[34] = v4;
  v5 = swift_task_alloc();
  v0[35] = v5;
  *v5 = v0;
  v5[1] = sub_100CC7CA8;

  return sub_100CC8340(v4, &protocol witness table for MainActor);
}

uint64_t sub_100CC7CA8(uint64_t a1)
{
  v3 = *v2;
  *(*v2 + 288) = a1;

  if (!v1)
  {

    v5 = *(v3 + 248);
    v6 = *(v3 + 256);

    return _swift_task_switch(sub_100CC7DC0, v5, v6);
  }

  return result;
}

void sub_100CC7DC0()
{
  v1 = v0[36];
  if (v1)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
      goto LABEL_11;
    }

    v3 = Strong;
    v4 = [Strong view];

    if (!v4)
    {
      __break(1u);
      return;
    }

    v5 = [v4 window];

    v6 = [v5 windowScene];
    if (v6)
    {
      v7 = v1;
      v8 = static NSObject.== infix(_:_:)();

      if (v8)
      {
        if (qword_1011BB880 != -1)
        {
          swift_once();
        }

        v9 = type metadata accessor for Logger();
        sub_1000060E4(v9, static Logger.lyrics);
        v10 = Logger.logObject.getter();
        v11 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v10, v11))
        {
          v12 = swift_slowAlloc();
          *v12 = 0;
        }

        v13 = v0[21];
        v14 = v0[18];
        v23 = v0[20];
        v24 = v0[19];
        v15 = v0[16];
        v22 = v0[17];
        v16 = v0[15];

        sub_100009F78(0, &qword_1011BD580);
        v21 = static OS_dispatch_queue.main.getter();
        v0[6] = sub_100CE0F58;
        v0[7] = v16;
        v0[2] = _NSConcreteStackBlock;
        v0[3] = 1107296256;
        v0[4] = sub_10002BC98;
        v0[5] = &unk_1010F89A0;
        v17 = _Block_copy(v0 + 2);

        static DispatchQoS.unspecified.getter();
        v0[13] = _swiftEmptyArrayStorage;
        sub_1000298C0(&qword_1011BD588, &type metadata accessor for DispatchWorkItemFlags);
        sub_10010FC20(&qword_1011BD590);
        sub_100029908(&qword_1011BD598, &qword_1011BD590);
        dispatch thunk of SetAlgebra.init<A>(_:)();
        OS_dispatch_queue.async(group:qos:flags:execute:)();
        _Block_release(v17);

        (*(v22 + 8))(v14, v15);
        (*(v23 + 8))(v13, v24);
      }

      else
      {
      }
    }

    else
    {
LABEL_11:
    }

    v19 = static MainActor.shared.getter();
    v0[34] = v19;
    v20 = swift_task_alloc();
    v0[35] = v20;
    *v20 = v0;
    v20[1] = sub_100CC7CA8;

    sub_100CC8340(v19, &protocol witness table for MainActor);
  }

  else
  {
    (*(v0[27] + 8))(v0[28], v0[26]);

    v18 = v0[1];

    v18();
  }
}

uint64_t sub_100CC8250(uint64_t a1, uint64_t a2)
{
  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return _swift_task_switch(sub_100CC8270, 0, 0);
}

uint64_t sub_100CC8270()
{
  Notification.object.getter();
  v1 = v0[6];
  if (v0[5])
  {
    sub_100009F78(0, &qword_1011BD968);
    if ((swift_dynamicCast() & 1) == 0)
    {
      *v0[6] = 0;
    }
  }

  else
  {
    sub_1000095E8((v0 + 2), &qword_1011BD990);
    *v1 = 0;
  }

  v2 = v0[1];

  return v2();
}

uint64_t sub_100CC8340(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v3[7] = a1;
  sub_10010FC20(&qword_1011BD980);
  v3[10] = swift_task_alloc();
  v5 = type metadata accessor for Notification();
  v3[11] = v5;
  v3[12] = *(v5 - 8);
  v3[13] = swift_task_alloc();
  if (a1)
  {
    swift_getObjectType();
    v6 = dispatch thunk of Actor.unownedExecutor.getter();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v3[14] = v6;
  v3[15] = v8;

  return _swift_task_switch(sub_100CC8478, v6, v8);
}

uint64_t sub_100CC8478()
{
  v0[16] = sub_10010FC20(&qword_1011BD960);
  v0[17] = AsyncCompactMapSequence.Iterator.baseIterator.modify();
  type metadata accessor for NSNotificationCenter.Notifications.Iterator();
  sub_1000298C0(&qword_1011BD988, &type metadata accessor for NSNotificationCenter.Notifications.Iterator);
  v1 = swift_task_alloc();
  v0[18] = v1;
  *v1 = v0;
  v1[1] = sub_100CC8598;
  v2 = v0[10];
  v3 = v0[7];
  v4 = v0[8];

  return __sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(v2, v3, v4);
}

uint64_t sub_100CC8598()
{
  v2 = *v1;

  if (v0)
  {
    v3 = *(v2 + 112);
    v4 = *(v2 + 120);
    v5 = sub_100CC8890;
  }

  else
  {
    (*(v2 + 136))();
    v3 = *(v2 + 112);
    v4 = *(v2 + 120);
    v5 = sub_100CC86C0;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_100CC86C0()
{
  v1 = v0[11];
  v2 = v0[12];
  v3 = v0[10];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_1000095E8(v3, &qword_1011BD980);

    v4 = v0[1];

    return v4(0);
  }

  else
  {
    (*(v2 + 32))(v0[13], v3, v1);
    v6 = AsyncCompactMapSequence.Iterator.transform.getter();
    v0[19] = v7;
    v10 = (v6 + *v6);
    v8 = swift_task_alloc();
    v0[20] = v8;
    *v8 = v0;
    v8[1] = sub_100CC891C;
    v9 = v0[13];

    return (v10)(v0 + 6, v9);
  }
}

uint64_t sub_100CC8890()
{
  (*(v0 + 136))();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100CC891C()
{
  v1 = *v0;
  v2 = *(*v0 + 104);
  v3 = *(*v0 + 96);
  v4 = *(*v0 + 88);

  (*(v3 + 8))(v2, v4);
  v5 = *(v1 + 120);
  v6 = *(v1 + 112);

  return _swift_task_switch(sub_100CC8ABC, v6, v5);
}

uint64_t sub_100CC8ABC()
{
  v1 = v0[6];
  if (v1)
  {

    v2 = v0[1];

    return v2(v1);
  }

  else
  {
    v0[16] = sub_10010FC20(&qword_1011BD960);
    v0[17] = AsyncCompactMapSequence.Iterator.baseIterator.modify();
    type metadata accessor for NSNotificationCenter.Notifications.Iterator();
    sub_1000298C0(&qword_1011BD988, &type metadata accessor for NSNotificationCenter.Notifications.Iterator);
    v4 = swift_task_alloc();
    v0[18] = v4;
    *v4 = v0;
    v4[1] = sub_100CC8598;
    v5 = v0[10];
    v6 = v0[7];
    v7 = v0[8];

    return __sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(v5, v6, v7);
  }
}

void sub_100CC8C38()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    Strong[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_isBackgrounded] = 1;
  }

  swift_beginAccess();
  v1 = swift_unknownObjectWeakLoadStrong();
  if (v1)
  {
    v2 = *(v1 + OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_displayLink);
    v3 = v1;
    v4 = v2;

    if (v2)
    {
      [v4 setPaused:1];
    }
  }
}

uint64_t sub_100CC8CF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[14] = a4;
  v5[15] = a5;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v5[16] = v6;
  v5[17] = *(v6 - 8);
  v5[18] = swift_task_alloc();
  v7 = type metadata accessor for DispatchQoS();
  v5[19] = v7;
  v5[20] = *(v7 - 8);
  v5[21] = swift_task_alloc();
  type metadata accessor for NSNotificationCenter.Notifications.Iterator();
  v5[22] = swift_task_alloc();
  v8 = sub_10010FC20(&qword_1011BD958);
  v5[23] = v8;
  v5[24] = *(v8 - 8);
  v5[25] = swift_task_alloc();
  v9 = sub_10010FC20(&qword_1011BD960);
  v5[26] = v9;
  v5[27] = *(v9 - 8);
  v5[28] = swift_task_alloc();
  v5[29] = type metadata accessor for MainActor();
  v5[30] = static MainActor.shared.getter();
  v11 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[31] = v11;
  v5[32] = v10;

  return _swift_task_switch(sub_100CC8F44, v11, v10);
}

uint64_t sub_100CC8F44()
{
  v1 = v0[24];
  v2 = v0[25];
  v3 = v0[23];
  v0[11] = v0[14];
  type metadata accessor for NSNotificationCenter.Notifications();
  v0[33] = sub_100009F78(0, &qword_1011BD968);
  sub_1000298C0(&qword_1011BD970, &type metadata accessor for NSNotificationCenter.Notifications);

  AsyncCompactMapSequence.init(_:transform:)();
  AsyncCompactMapSequence.base.getter();
  dispatch thunk of AsyncSequence.makeAsyncIterator()();
  AsyncCompactMapSequence.transform.getter();
  (*(v1 + 8))(v2, v3);
  AsyncCompactMapSequence.Iterator.init(_:transform:)();
  swift_beginAccess();
  v4 = static MainActor.shared.getter();
  v0[34] = v4;
  v5 = swift_task_alloc();
  v0[35] = v5;
  *v5 = v0;
  v5[1] = sub_100CC9164;

  return sub_100CC8340(v4, &protocol witness table for MainActor);
}

uint64_t sub_100CC9164(uint64_t a1)
{
  v3 = *v2;
  *(*v2 + 288) = a1;

  if (!v1)
  {

    v5 = *(v3 + 248);
    v6 = *(v3 + 256);

    return _swift_task_switch(sub_100CC927C, v5, v6);
  }

  return result;
}

void sub_100CC927C()
{
  v1 = v0[36];
  if (v1)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
      goto LABEL_7;
    }

    v3 = Strong;
    v4 = [Strong view];

    if (!v4)
    {
      __break(1u);
      return;
    }

    v5 = [v4 window];

    v6 = [v5 windowScene];
    if (v6)
    {
      v7 = v1;
      v8 = static NSObject.== infix(_:_:)();

      if (v8)
      {
        v9 = v0[21];
        v10 = v0[18];
        v19 = v0[20];
        v20 = v0[19];
        v11 = v0[16];
        v18 = v0[17];
        v12 = v0[15];
        sub_100009F78(0, &qword_1011BD580);
        v17 = static OS_dispatch_queue.main.getter();
        v0[6] = sub_100CE0E7C;
        v0[7] = v12;
        v0[2] = _NSConcreteStackBlock;
        v0[3] = 1107296256;
        v0[4] = sub_10002BC98;
        v0[5] = &unk_1010F8928;
        v13 = _Block_copy(v0 + 2);

        static DispatchQoS.unspecified.getter();
        v0[13] = _swiftEmptyArrayStorage;
        sub_1000298C0(&qword_1011BD588, &type metadata accessor for DispatchWorkItemFlags);
        sub_10010FC20(&qword_1011BD590);
        sub_100029908(&qword_1011BD598, &qword_1011BD590);
        dispatch thunk of SetAlgebra.init<A>(_:)();
        OS_dispatch_queue.async(group:qos:flags:execute:)();
        _Block_release(v13);

        (*(v18 + 8))(v10, v11);
        (*(v19 + 8))(v9, v20);
      }

      else
      {
      }
    }

    else
    {
LABEL_7:
    }

    v15 = static MainActor.shared.getter();
    v0[34] = v15;
    v16 = swift_task_alloc();
    v0[35] = v16;
    *v16 = v0;
    v16[1] = sub_100CC9164;

    sub_100CC8340(v15, &protocol witness table for MainActor);
  }

  else
  {
    (*(v0[27] + 8))(v0[28], v0[26]);

    v14 = v0[1];

    v14();
  }
}

uint64_t sub_100CC9658(uint64_t a1, uint64_t a2)
{
  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return _swift_task_switch(sub_100CE122C, 0, 0);
}

void sub_100CC9678()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = *(Strong + OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_manager);
    v2 = Strong;

    if (v1)
    {
      v3 = swift_allocObject();
      swift_beginAccess();
      v4 = swift_unknownObjectWeakLoadStrong();
      swift_unknownObjectWeakInit();

      swift_beginAccess();
      v5 = *(v1 + 96);
      *(v1 + 96) = sub_100CE0E84;
      *(v1 + 104) = v3;
      swift_retain_n();
      sub_100020438(v5);
      sub_100CBC800();
    }
  }

  swift_beginAccess();
  v6 = swift_unknownObjectWeakLoadStrong();
  if (v6)
  {
    v6[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_isBackgrounded] = 0;
  }

  if (qword_1011BB880 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_1000060E4(v7, static Logger.lyrics);

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v24[0] = v11;
    *v10 = 136315138;
    swift_beginAccess();
    v12 = swift_unknownObjectWeakLoadStrong();
    if (v12)
    {
      v13 = v12;
      sub_100CD2A5C();
    }

    sub_10010FC20(&qword_1011BD978);
    v14 = String.init<A>(describing:)();
    v16 = sub_1000109A8(v14, v15, v24);

    *(v10 + 4) = v16;
    sub_10000959C(v11);
  }

  swift_beginAccess();
  v17 = swift_unknownObjectWeakLoadStrong();
  if (v17)
  {
    v18 = *(v17 + OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_displayLink);
    v19 = v17;
    v20 = v18;

    if (v18)
    {
      swift_beginAccess();
      v21 = swift_unknownObjectWeakLoadStrong();
      if (v21)
      {
        v22 = v21;
        v23 = sub_100CD2A5C();
      }

      else
      {
        v23 = 1;
      }

      [v20 setPaused:v23 & 1];
    }
  }
}

void sub_100CC9A18(void *a1)
{
  v3 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_isFullScreen;
  swift_beginAccess();
  if (v1[v3] == 1)
  {
    v4 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_mode;
    swift_beginAccess();
    if (!v1[v4])
    {
      v5 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_bottomTapAreaHeight;
      swift_beginAccess();
      if (*&v1[v5] > 0.0)
      {
        v6 = [v1 view];
        [a1 locationInView:v6];
        v8 = v7;

        v9 = [v1 view];
        if (v9)
        {
          v10 = v9;
          [v9 frame];
          v12 = v11;
          v14 = v13;
          v16 = v15;
          v18 = v17;

          v22.origin.x = v12;
          v22.origin.y = v14;
          v22.size.width = v16;
          v22.size.height = v18;
          if (CGRectGetHeight(v22) - *&v1[v5] < v8)
          {
            v19 = &v1[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_delegate];
            swift_beginAccess();
            if (swift_unknownObjectWeakLoadStrong())
            {
              v20 = *(v19 + 1);
              ObjectType = swift_getObjectType();
              (*(v20 + 40))(v1, ObjectType, v20);
              swift_unknownObjectRelease();
            }
          }
        }

        else
        {
          __break(1u);
        }
      }
    }
  }
}

uint64_t sub_100CC9C44(double a1, double a2, double a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_line;
  swift_beginAccess();
  sub_100008FE4(a6 + v10, v12);
  sub_100CD5274(v12, 0, 0, 1, 0, a1, a2, a3);
  return sub_10000959C(v12);
}

uint64_t sub_100CC9D4C(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v97 = *(v4 - 8);
  v98 = v4;
  __chkstk_darwin();
  v95 = v82 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = type metadata accessor for DispatchQoS();
  v94 = *(v96 - 8);
  __chkstk_darwin();
  v93 = v82 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = type metadata accessor for DispatchTime();
  v92 = *(v102 - 8);
  __chkstk_darwin();
  v90 = v82 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v91 = v82 - v8;
  sub_10010FC20(&qword_1011BD938);
  __chkstk_darwin();
  v89 = v82 - v9;
  sub_10010FC20(&qword_1011BD610);
  *&v10 = __chkstk_darwin().n128_u64[0];
  v12 = v82 - v11;
  [*(v2 + OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_tapFeedbackGenerator) selectionChanged];
  v13 = *(v2 + OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_displayLink);
  if (v13)
  {
    [v13 setPaused:1];
  }

  *(v2 + OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_needsTapHandling) = 1;
  v14 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_allowAnimateToNextLineAfterScrollTimer;
  [*(v2 + OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_allowAnimateToNextLineAfterScrollTimer) invalidate];
  v15 = *(v2 + v14);
  *(v2 + v14) = 0;

  *(v2 + OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_allowAnimateToNextLineAfterScroll) = 1;
  v16 = OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_line;
  swift_beginAccess();
  sub_100008FE4(a1 + v16, v105);
  sub_10010FC20(&qword_1011BBB08);
  v17 = type metadata accessor for Lyrics.TextLine(0);
  v18 = swift_dynamicCast();
  v19 = *(*(v17 - 8) + 56);
  if ((v18 & 1) == 0)
  {
LABEL_37:
    (v19)(v12, 1, 1, v17);
    sub_1000095E8(v12, &qword_1011BD610);
    goto LABEL_38;
  }

  (v19)(v12, 0, 1, v17);
  sub_1000095E8(v12, &qword_1011BD610);
  v12 = *(a1 + OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_contentView);
  if (v12)
  {
    _s19SBS_TextContentViewCMa();
    result = swift_dynamicCastClass();
    if (result)
    {
      v21 = *(result + OBJC_IVAR___MusicSBS_TextContentView_textView);
      if (!v21)
      {
LABEL_49:
        __break(1u);
        return result;
      }

      v17 = *(v21 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_textContainer);
      if (v17)
      {
        v22 = *(v17 + 56);
        v23 = *(v22 + 16);
        if (v23)
        {
          v24 = *(v17 + 48);
          v101 = sub_100009F78(0, &qword_1011BD580);
          v25 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_specs;
          v82[1] = v24;

          v82[0] = v12;
          v82[2] = v17;

          v100 = v25;
          swift_beginAccess();
          v19 = *(v22 + 16);
          if (v19)
          {
            v26 = 0;
            v99 = v22 + 32;
            v84 = a1;
            v85 = v2;
            v83 = v16;
            v86 = v23;
            v87 = v22;
            while (1)
            {
              v17 = *(v99 + 8 * v26);
              v103 = v26 + 1;
              memcpy(v105, &v100[v2], 0x2B0uLL);
              *(v17 + 120) = 1;

              sub_1002AD8C8(v105, v104);
              v12 = static OS_dispatch_queue.main.getter();
              v27 = swift_allocObject();
              swift_weakInit();

              OS_dispatch_queue.asyncAfter(_:block:)(sub_100C9E340, v27);

              if ((*(v17 + 57) & 1) == 0)
              {
                v37 = *(v17 + 112);
                if (v37 && (v38 = *(v37 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView4Line8LineView_gradientView)) != 0)
                {
                  v39 = v105[25];
                  v40 = v38;
                  [v39 lineHeight];
                  v42 = vabdd_f64(v41 * *&v105[32] + *&v105[58] + *&v105[58], CGRectGetHeight(*(v17 + 80))) * 0.5;
                  if (*(v17 + 58))
                  {
                    v43 = v42 + CGRectGetWidth(*(v17 + 80));
                    v44 = -v42;
                  }

                  else
                  {
                    v44 = -v42;
                    v43 = -v42;
                  }

                  v45 = *(v17 + 80);
                  v46 = *(v17 + 88);
                  v47 = *(v17 + 96);
                  v48 = *(v17 + 104);
                  v12 = v40;
                  v108.origin.x = v45;
                  v108.origin.y = v46;
                  v108.size.width = v47;
                  v108.size.height = v48;
                  [v12 setFrame:{v43, v44, v42, v42 + v42 + CGRectGetHeight(v108)}];
                  sub_100C9C2C4(v105);
                }

                else
                {
                  sub_100C9C2C4(v105);
                }

                goto LABEL_34;
              }

              result = swift_beginAccess();
              v12 = *(v17 + 16);
              if (!(v12 >> 62))
              {
                v28 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
                if (v28)
                {
                  break;
                }

                goto LABEL_32;
              }

              result = _CocoaArrayWrapper.endIndex.getter();
              v28 = result;
              if (result)
              {
                break;
              }

LABEL_32:
              sub_100C9C2C4(v105);

LABEL_33:
              v23 = v86;
              v22 = v87;
LABEL_34:
              v26 = v103;
              if (v103 == v23)
              {

                goto LABEL_38;
              }

              v19 = *(v22 + 16);
              if (v103 >= v19)
              {
                goto LABEL_36;
              }
            }

            if (v28 >= 1)
            {
              v88 = v17;

              v29 = 0;
              while (1)
              {
                if ((v12 & 0xC000000000000001) != 0)
                {
                  v30 = *(specialized _ArrayBuffer._getElementSlowPath(_:)() + 208);
                  if (v30)
                  {
                    goto LABEL_21;
                  }
                }

                else
                {
                  v31 = *(v12 + 8 * v29 + 32);

                  v30 = *(v31 + 208);
                  if (v30)
                  {
LABEL_21:
                    v32 = *&v30[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView4Word17WordContainerView_crossfadeAnimationParameters];
                    if (v32)
                    {
                      v17 = *&v30[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView4Word17WordContainerView_crossfadeAnimationParameters + 8];
                      v33 = *&v30[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView4Word17WordContainerView_overlayView];
                      v34 = v30;
                      sub_100C9E348(v32, v17);
                      v35 = v33;
                      v36 = v32;
                      [v35 setBackgroundColor:v36];
                    }
                  }
                }

                ++v29;

                if (v28 == v29)
                {

                  sub_100C9C2C4(v105);

                  a1 = v84;
                  v2 = v85;
                  v16 = v83;
                  goto LABEL_33;
                }
              }
            }

            __break(1u);
            goto LABEL_49;
          }

LABEL_36:
          __break(1u);
          goto LABEL_37;
        }
      }
    }
  }

LABEL_38:
  v49 = [objc_allocWithZone(MSVLyricsLine) init];
  sub_100008FE4(a1 + v16, v105);
  v50 = v105[3];
  v51 = v105[4];
  sub_10000954C(v105, v105[3]);
  v52 = (*(*(v51 + 8) + 8))(v50);
  v53 = *(v2 + OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_manager);
  v54 = 0.0;
  if (v53)
  {
    swift_beginAccess();
    if (*(v53 + 88) == 1)
    {

      v54 = Lyrics.spatialOffset.getter();
    }
  }

  sub_10000959C(v105);
  [v49 setStartTime:v52 + v54];
  sub_100008FE4(a1 + v16, v105);
  v55 = v105[3];
  v56 = v105[4];
  sub_10000954C(v105, v105[3]);
  (*(*(v56 + 8) + 16))(v55);
  [v49 setEndTime:?];
  sub_10000959C(v105);
  v57 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_timingProvider;
  swift_beginAccess();
  sub_1000089F8(v2 + v57, v104, &qword_1011BD4B8);
  [v49 startTime];
  v59 = v58;
  sub_1000089F8(v104, v105, &qword_1011BD4B8);
  v60 = v105[3];
  if (v105[3])
  {
    v61 = v105[4];
    sub_10000954C(v105, v105[3]);
    v62 = (*(v61 + 16))(v60, v61);
    sub_10000959C(v105);
  }

  else
  {
    sub_1000095E8(v105, &qword_1011BD4B8);
    v62 = 1;
  }

  v63 = type metadata accessor for SyncedLyricsViewController.StaticTimingProvider();
  v64 = swift_allocObject();
  *(v64 + 24) = v59;
  *(v64 + 16) = v62 & 1;
  v105[4] = &off_1010F8000;
  v105[3] = v63;
  v105[0] = v64;
  sub_1000089F8(v2 + v57, v106, &qword_1011BD4B8);
  swift_beginAccess();

  sub_1002190E0(v105, v2 + v57, &qword_1011BD4B8);
  swift_endAccess();
  sub_100CC5544(v106);
  sub_1000095E8(v106, &qword_1011BD4B8);
  sub_1000095E8(v105, &qword_1011BD4B8);
  v65 = v89;
  Date.init()();
  v66 = type metadata accessor for Date();
  (*(*(v66 - 8) + 56))(v65, 0, 1, v66);
  v67 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_lastTapDate;
  swift_beginAccess();
  sub_10006B010(v65, v2 + v67, &qword_1011BD938);
  swift_endAccess();
  v68 = v2 + OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_delegate;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v69 = *(v68 + 1);
    ObjectType = swift_getObjectType();
    (*(v69 + 8))(v2, v49, ObjectType, v69);
    swift_unknownObjectRelease();
  }

  sub_100009F78(0, &qword_1011BD580);
  v101 = static OS_dispatch_queue.main.getter();
  v71 = v90;
  static DispatchTime.now()();
  v72 = v91;
  + infix(_:_:)();
  v103 = *(v92 + 8);
  (v103)(v71, v102);
  sub_1000089F8(v104, v106, &qword_1011BD4B8);
  v73 = swift_allocObject();
  *(v73 + 16) = v2;
  *(v73 + 24) = v64;
  v74 = v106[1];
  *(v73 + 32) = v106[0];
  *(v73 + 48) = v74;
  *(v73 + 64) = v107;
  v105[4] = sub_100CE0E58;
  v105[5] = v73;
  v105[0] = _NSConcreteStackBlock;
  v105[1] = 1107296256;
  v105[2] = sub_10002BC98;
  v105[3] = &unk_1010F8770;
  v75 = _Block_copy(v105);
  v100 = v49;
  v76 = v75;

  v77 = v2;

  v78 = v93;
  static DispatchQoS.unspecified.getter();
  v105[0] = _swiftEmptyArrayStorage;
  sub_1000298C0(&qword_1011BD588, &type metadata accessor for DispatchWorkItemFlags);
  sub_10010FC20(&qword_1011BD590);
  sub_100029908(&qword_1011BD598, &qword_1011BD590);
  v79 = v95;
  v80 = v98;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v81 = v101;
  OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
  _Block_release(v76);

  (*(v97 + 8))(v79, v80);
  (*(v94 + 8))(v78, v96);
  (v103)(v72, v102);
  return sub_1000095E8(v104, &qword_1011BD4B8);
}

uint64_t sub_100CCABBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_timingProvider;
  swift_beginAccess();
  sub_1000089F8(a1 + v6, v14, &qword_1011BD4B8);
  if (v14[3])
  {
    sub_10010FC20(&qword_1011BD950);
    type metadata accessor for SyncedLyricsViewController.StaticTimingProvider();
    result = swift_dynamicCast();
    if ((result & 1) == 0)
    {
      return result;
    }

    if (v13[0] != a2)
    {
    }

    if (qword_1011BB908 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_1000060E4(v8, qword_1011BD450);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v14[0] = v12;
      *v11 = 136315138;
      *(v11 + 4) = sub_1000109A8(0xD00000000000004DLL, 0x8000000100E6BBB0, v14);
      _os_log_impl(&_mh_execute_header, v9, v10, "%s", v11, 0xCu);
      sub_10000959C(v12);
    }

    sub_1000089F8(a3, v14, &qword_1011BD4B8);
    sub_1000089F8(a1 + v6, v13, &qword_1011BD4B8);
    swift_beginAccess();
    sub_1002190E0(v14, a1 + v6, &qword_1011BD4B8);
    swift_endAccess();
    sub_100CC5544(v13);

    sub_1000095E8(v13, &qword_1011BD4B8);
  }

  return sub_1000095E8(v14, &qword_1011BD4B8);
}

Swift::Void __swiftcall SyncedLyricsViewController.viewDidAppear(_:)(Swift::Bool a1)
{
  v2 = v1;
  v37.receiver = v2;
  v37.super_class = type metadata accessor for SyncedLyricsViewController(0);
  objc_msgSendSuper2(&v37, "viewDidAppear:", a1);
  v4 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_displayLink;
  if (!*&v2[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_displayLink])
  {
    v5 = [v2 view];
    if (!v5)
    {
      __break(1u);
      return;
    }

    v6 = v5;
    v7 = [v5 window];

    if (v7)
    {
      v8 = [v7 screen];

      v7 = [v8 displayLinkWithTarget:v2 selector:"displayLinkFired:"];
    }

    v9 = *&v2[v4];
    *&v2[v4] = v7;
    v10 = v7;

    if (v7)
    {
      [v10 setPreferredFramesPerSecond:30];
    }

    v11 = *&v2[v4];
    if (v11)
    {
      v12 = objc_opt_self();
      v13 = v11;
      v14 = [v12 mainRunLoop];
      [v13 addToRunLoop:v14 forMode:NSRunLoopCommonModes];
    }

    if (qword_1011BB880 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_1000060E4(v15, static Logger.lyrics);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v16, v17, "[SyncedLyricsViewController] Creating new display link", v18, 2u);
    }
  }

  v19 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_isBackgrounded;
  if (v2[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_isBackgrounded] == 1)
  {
    v20 = *&v2[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_manager];
    if (v20)
    {
      v21 = swift_allocObject();
      swift_unknownObjectWeakInit();
      swift_beginAccess();
      v22 = *(v20 + 96);
      *(v20 + 96) = sub_100CE1228;
      *(v20 + 104) = v21;

      swift_retain_n();
      sub_100020438(v22);
      sub_100CBC800();
    }

    v2[v19] = 0;
  }

  v23 = *&v2[v4];
  if (v23)
  {
    v24 = v23;
    [v24 setPaused:sub_100CD2A5C() & 1];
  }

  if (qword_1011BB880 != -1)
  {
    swift_once();
  }

  v25 = type metadata accessor for Logger();
  sub_1000060E4(v25, static Logger.lyrics);
  v26 = v2;
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v36 = v30;
    *v29 = 136315138;
    v31 = sub_100CD2A5C();
    v32 = (v31 & 1) == 0;
    if (v31)
    {
      v33 = 1702195828;
    }

    else
    {
      v33 = 0x65736C6166;
    }

    if (v32)
    {
      v34 = 0xE500000000000000;
    }

    else
    {
      v34 = 0xE400000000000000;
    }

    v35 = sub_1000109A8(v33, v34, &v36);

    *(v29 + 4) = v35;
    _os_log_impl(&_mh_execute_header, v27, v28, "[SyncedLyricsViewController] viewDidAppear (displayLinkShouldPause: %s", v29, 0xCu);
    sub_10000959C(v30);
  }
}

Swift::Void __swiftcall SyncedLyricsViewController.viewDidDisappear(_:)(Swift::Bool a1)
{
  v11.receiver = v1;
  v11.super_class = type metadata accessor for SyncedLyricsViewController(0);
  objc_msgSendSuper2(&v11, "viewDidDisappear:", a1);
  v3 = [v1 view];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 window];

    if (!v5)
    {
      v6 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_displayLink;
      [*&v1[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_displayLink] invalidate];
      v7 = *&v1[v6];
      *&v1[v6] = 0;

      v1[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_isBackgrounded] = 1;
      if (qword_1011BB880 != -1)
      {
        swift_once();
      }

      v8 = type metadata accessor for Logger();
      sub_1000060E4(v8, static Logger.lyrics);
      v5 = Logger.logObject.getter();
      v9 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v5, v9))
      {
        v10 = swift_slowAlloc();
        *v10 = 0;
        _os_log_impl(&_mh_execute_header, v5, v9, "[SyncedLyricsViewController] viewDidDisappear, nil window, invalidating display link", v10, 2u);
      }
    }
  }

  else
  {
    __break(1u);
  }
}

Swift::Void __swiftcall SyncedLyricsViewController.viewDidLayoutSubviews()()
{
  v1 = v0;
  v35.receiver = v0;
  v35.super_class = type metadata accessor for SyncedLyricsViewController(0);
  objc_msgSendSuper2(&v35, "viewDidLayoutSubviews");
  v2 = [v0 view];
  if (!v2)
  {
    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    return;
  }

  v3 = v2;
  _s3__C6CGRectVMa_2(0);
  [v3 bounds];

  v4 = &v1[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_previousBounds];
  if ((static ApproximatelyEquatable.!=~ infix(_:_:)() & 1) == 0)
  {
    return;
  }

  v5 = [v1 view];
  if (!v5)
  {
    goto LABEL_14;
  }

  v6 = v5;
  [v5 bounds];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  v36.origin.x = v8;
  v36.origin.y = v10;
  v36.size.width = v12;
  v36.size.height = v14;
  CGRectGetWidth(v36);
  CGRectGetWidth(*v4);
  if (static ApproximatelyEquatable.!=~ infix(_:_:)())
  {
    sub_100CCD170();
  }

  v15 = [v1 view];
  if (!v15)
  {
    goto LABEL_15;
  }

  v16 = v15;
  [v15 bounds];
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;

  v37.origin.x = v18;
  v37.origin.y = v20;
  v37.size.width = v22;
  v37.size.height = v24;
  CGRectGetHeight(v37);
  CGRectGetHeight(*v4);
  if (static ApproximatelyEquatable.!=~ infix(_:_:)())
  {
    sub_100CD3AEC(0);
    swift_beginAccess();
    sub_100CDC5D0();
    if (static ApproximatelyEquatable<>.==~ infix(_:_:)())
    {
      sub_100CCCB90();
    }
  }

  v25 = [v1 view];
  if (!v25)
  {
    goto LABEL_16;
  }

  v26 = v25;
  [v25 bounds];
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;

  *v4 = v28;
  *(v4 + 1) = v30;
  *(v4 + 2) = v32;
  *(v4 + 3) = v34;
}

Swift::Void __swiftcall SyncedLyricsViewController.viewLayoutMarginsDidChange()()
{
  v22.receiver = v0;
  v22.super_class = type metadata accessor for SyncedLyricsViewController(0);
  objc_msgSendSuper2(&v22, "viewLayoutMarginsDidChange");
  v1 = &v0[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_lastSeenLayoutMargins];
  v2 = *&v0[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_lastSeenLayoutMargins + 8];
  v3 = [v0 view];
  if (!v3)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v4 = v3;
  [v3 layoutMargins];
  v6 = v5;

  if (v2 != v6)
  {
LABEL_5:
    sub_100CCD170();
LABEL_6:
    v12 = [v0 view];
    if (v12)
    {
      v13 = v12;
      [v12 layoutMargins];
      v15 = v14;
      v17 = v16;
      v19 = v18;
      v21 = v20;

      *v1 = v15;
      *(v1 + 1) = v17;
      *(v1 + 2) = v19;
      *(v1 + 3) = v21;
      return;
    }

    goto LABEL_9;
  }

  v7 = v1[3];
  v8 = [v0 view];
  if (v8)
  {
    v9 = v8;
    [v8 layoutMargins];
    v11 = v10;

    if (v7 == v11)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_10:
  __break(1u);
}

uint64_t SyncedLyricsViewController.set(lyrics:translation:transliteration:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_10010FC20(&qword_1011BBA58);
  __chkstk_darwin();
  v8 = &v15 - v7;
  sub_10010FC20(&qword_1011BD4F0);
  __chkstk_darwin();
  v10 = &v15 - v9;
  v11 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_isSettingLyrics;
  *(v3 + OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_isSettingLyrics) = 1;
  sub_1000089F8(a2, &v15 - v9, &qword_1011BD4F0);
  SyncedLyricsViewController.currentTranslation.setter(v10);
  sub_1000089F8(a3, v8, &qword_1011BBA58);
  SyncedLyricsViewController.currentTransliteration.setter(v8);
  v12 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_lyrics;
  swift_beginAccess();
  v13 = *(v3 + v12);
  *(v3 + v12) = a1;

  sub_100CC50D0(v13);

  *(v3 + v11) = 0;
  return result;
}

Swift::Bool __swiftcall SyncedLyricsViewController.handleSelectGesture()()
{
  v1 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_mode;
  swift_beginAccess();
  if (*(v0 + v1) != 1)
  {
    return 0;
  }

  v2 = *(v0 + OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_timestampLabel);
  if (!v2)
  {
    return 0;
  }

  v3 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsTimestampLabel_line;
  swift_beginAccess();
  sub_1000089F8(v2 + v3, &v13, &qword_1011BBB10);
  if (!v14)
  {
    sub_1000095E8(&v13, &qword_1011BBB10);
    return 0;
  }

  sub_100059A8C(&v13, v15);
  v4 = v16;
  v5 = v17;
  sub_10000954C(v15, v16);
  v6 = *(v5 + 16);
  v7 = v2;
  v8 = v6(v4, v5);
  v9 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_lineViews;
  result = swift_beginAccess();
  v11 = *(v0 + v9);
  if ((v11 & 0xC000000000000001) != 0)
  {

    v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();

    goto LABEL_8;
  }

  if ((v8 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v8 < *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v12 = *(v11 + 8 * v8 + 32);
LABEL_8:
    sub_100CC9D4C(v12);

    sub_10000959C(v15);
    return 1;
  }

  __break(1u);
  return result;
}

void sub_100CCBCA8(uint64_t a1, char a2)
{
  v3 = *(a1 + OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_contentView);
  if (v3)
  {
    _s19SBS_TextContentViewCMa();
    if (swift_dynamicCastClass())
    {
      v5 = *(v2 + OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_manager);
      if (v5)
      {
        swift_beginAccess();
        v6 = *(v5 + 96);
        if (v6)
        {
          v7 = v3;

          v8 = sub_100030444(v6);
          v9 = v6(v8);
          swift_beginAccess();
          if (*(v5 + 88) == 1)
          {
            v10 = Lyrics.spatialOffset.getter();
            sub_100020438(v6);
          }

          else
          {

            sub_100020438(v6);
            v10 = 0.0;
          }

          sub_100CA7B90(a2 & 1, v9 - v10);
        }
      }
    }
  }
}

Swift::Void __swiftcall SyncedLyricsViewController.presentSharing()()
{
  v3 = v0;
  v4 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_selectedLineViews;
  swift_beginAccess();
  v5 = *&v3[v4];
  if (!(v5 >> 62))
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6)
    {
      goto LABEL_3;
    }

LABEL_19:
    v18 = *&v3[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_manager];
    if (!v18)
    {
      return;
    }

    swift_beginAccess();
    v19 = *(v18 + 96);
    if (!v19)
    {
      return;
    }

    v20 = sub_100030444(v19);
    v21 = v19(v20);
    swift_beginAccess();
    if (*(v18 + 88) == 1)
    {
      v22 = Lyrics.spatialOffset.getter();
      sub_100020438(v19);
    }

    else
    {

      sub_100020438(v19);
      v22 = 0.0;
    }

    v23 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_lyrics;
    swift_beginAccess();
    if (*&v3[v23])
    {

      Lyrics.line(before:useOriginalLines:)(0, &v47, v21 - v22);

      if (*(&v48 + 1))
      {
        sub_100059A8C(&v47, v50);
        v24 = v51;
        v25 = v52;
        sub_10000954C(v50, v51);
        v26 = (*(v25 + 16))(v24, v25);
        v27 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_lineViews;
        swift_beginAccess();
        v28 = *&v3[v27];
        if ((v28 & 0xC000000000000001) != 0)
        {
          goto LABEL_58;
        }

        if ((v26 & 0x8000000000000000) != 0)
        {
          __break(1u);
        }

        else if (v26 < *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v29 = *(v28 + 8 * v26 + 32);
          goto LABEL_30;
        }

        __break(1u);
        return;
      }
    }

    else
    {
      v49 = 0;
      v47 = 0u;
      v48 = 0u;
    }

    sub_1000095E8(&v47, &qword_1011BBB10);
    return;
  }

  v6 = _CocoaArrayWrapper.endIndex.getter();
  if (!v6)
  {
    goto LABEL_19;
  }

LABEL_3:
  v7 = v6 - 1;
  if (__OFSUB__(v6, 1))
  {
    __break(1u);
    goto LABEL_34;
  }

  if ((v5 & 0xC000000000000001) != 0)
  {
LABEL_34:

    v30 = specialized _ArrayBuffer._getElementSlowPath(_:)();

    v8 = v30;
    goto LABEL_8;
  }

  if (v7 < 0)
  {
    __break(1u);
    goto LABEL_36;
  }

  if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v8 = *(v5 + 8 * v7 + 32);
LABEL_8:
  v7 = v8;
  while (1)
  {
    v2 = OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_line;
    swift_beginAccess();
    sub_100008FE4(v7 + v2, v50);

    sub_10010FC20(&qword_1011BBB08);
    if (!swift_dynamicCast())
    {
      goto LABEL_39;
    }

    sub_100008FE4(v7 + v2, v50);
    v9 = v51;
    v1 = v52;
    sub_10000954C(v50, v51);
    v10 = (*(v1 + 16))(v9, v1);
    v5 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    sub_10000959C(v50);
    v1 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_lineViews;
    swift_beginAccess();
    v11 = *&v3[v1];
    if (v11 >> 62)
    {
      goto LABEL_38;
    }

    if (v5 < *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_13;
    }

LABEL_39:
    sub_100008FE4(v7 + v2, v50);
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_48;
    }

    sub_100008FE4(v7 + v2, v50);
    v31 = v51;
    v32 = v52;
    sub_10000954C(v50, v51);
    v33 = (*(v32 + 16))(v31, v32);
    sub_10000959C(v50);
    if (v33 < 1)
    {
      goto LABEL_48;
    }

    sub_100008FE4(v7 + v2, v50);
    v34 = v51;
    v35 = v52;
    sub_10000954C(v50, v51);
    v36 = (*(v35 + 16))(v34, v35);
    v37 = v36 - 1;
    if (__OFSUB__(v36, 1))
    {
      goto LABEL_54;
    }

    sub_10000959C(v50);
    v38 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_lineViews;
    swift_beginAccess();
    v39 = *&v3[v38];
    if ((v39 & 0xC000000000000001) != 0)
    {
      goto LABEL_55;
    }

    if ((v37 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v37 < *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v17 = v39 + 8 * v37;
LABEL_46:
      v40 = *(v17 + 32);
      goto LABEL_47;
    }

    __break(1u);
LABEL_58:

    v46 = specialized _ArrayBuffer._getElementSlowPath(_:)();

    v29 = v46;
LABEL_30:
    v7 = v29;
    sub_10000959C(v50);
  }

LABEL_37:
  __break(1u);
LABEL_38:
  if (v5 >= _CocoaArrayWrapper.endIndex.getter())
  {
    goto LABEL_39;
  }

LABEL_13:
  sub_100008FE4(v7 + v2, v50);
  v12 = v51;
  v13 = v52;
  sub_10000954C(v50, v51);
  v14 = (*(v13 + 16))(v12, v13);
  v15 = v14 + 1;
  if (__OFADD__(v14, 1))
  {
    __break(1u);
  }

  else
  {
    sub_10000959C(v50);
    v16 = *&v3[v1];
    if ((v16 & 0xC000000000000001) == 0)
    {
      if ((v15 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (v15 < *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v17 = v16 + 8 * v15;
        goto LABEL_46;
      }

      __break(1u);
LABEL_54:
      __break(1u);
LABEL_55:

      v40 = specialized _ArrayBuffer._getElementSlowPath(_:)();

LABEL_47:

      v7 = v40;
      goto LABEL_48;
    }
  }

  v45 = specialized _ArrayBuffer._getElementSlowPath(_:)();

  v7 = v45;
LABEL_48:
  v41 = v7;
  [v41 setHighlighted:1];
  sub_100009F78(0, &qword_1011BD580);
  v42 = static OS_dispatch_queue.main.getter();
  v43 = swift_allocObject();
  *(v43 + 16) = v3;
  *(v43 + 24) = v41;
  v44 = v3;
  OS_dispatch_queue.asyncAfter(_:block:)(sub_100CDC624, v43);
}

id sub_100CCC5A0(char *a1)
{
  v3 = type metadata accessor for SyncedLyricsSharingTransitionInfo(0);
  __chkstk_darwin();
  v5 = &v55 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&qword_1011BD610);
  __chkstk_darwin();
  v7 = &v55 - v6;
  v8 = type metadata accessor for Lyrics.TextLine(0);
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = &v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v13 = &v55 - v12;
  v14 = OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_line;
  swift_beginAccess();
  sub_100008FE4(&a1[v14], v58);
  sub_10010FC20(&qword_1011BBB08);
  v15 = swift_dynamicCast();
  v16 = *(v9 + 56);
  if ((v15 & 1) == 0)
  {
    v16(v7, 1, 1, v8);
    return sub_1000095E8(v7, &qword_1011BD610);
  }

  v16(v7, 0, 1, v8);
  sub_100CE0BF0(v7, v13, type metadata accessor for Lyrics.TextLine);
  v17 = *&a1[OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_contentView];
  if (!v17)
  {
    return sub_100CE066C(v13, type metadata accessor for Lyrics.TextLine);
  }

  [v17 copy];
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_100009F78(0, &qword_1011BC570);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return sub_100CE066C(v13, type metadata accessor for Lyrics.TextLine);
  }

  v57 = v61;
  [a1 cancelTrackingWithEvent:0];
  v18 = sub_100CE0C58(v13, v11, type metadata accessor for Lyrics.TextLine);
  v19 = *&v13[*(v8 + 60)];
  v20 = v1;
  v21 = v19(v18);
  v22 = v20;
  result = [v20 view];
  if (result)
  {
    v24 = result;
    if (v21)
    {
      v25 = 2;
    }

    else
    {
      v25 = 0;
    }

    v26 = UIView.untransformedFrame.getter();
    v28 = v27;
    v30 = v29;
    v32 = v31;
    v33 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_scrollView;
    swift_beginAccess();
    [v24 convertRect:*&v22[v33] fromCoordinateSpace:{v26, v28, v30, v32}];
    v35 = v34;
    v37 = v36;
    v39 = v38;
    v41 = v40;

    LOBYTE(v33) = [a1 isSelected];
    [a1 transform];
    v42 = v59;
    v43 = v60;
    v56 = v58[0];
    v55 = v58[1];
    v44 = swift_allocObject();
    *(v44 + 16) = a1;
    v45 = swift_allocObject();
    *(v45 + 16) = a1;
    sub_100CE0BF0(v11, v5, type metadata accessor for Lyrics.TextLine);
    *&v5[v3[5]] = v57;
    *&v5[v3[6]] = v25;
    v46 = &v5[v3[7]];
    *v46 = v35;
    *(v46 + 1) = v37;
    *(v46 + 2) = v39;
    *(v46 + 3) = v41;
    v5[v3[8]] = v33;
    v47 = &v5[v3[9]];
    v48 = v55;
    *v47 = v56;
    *(v47 + 1) = v48;
    *(v47 + 4) = v42;
    *(v47 + 5) = v43;
    v49 = &v5[v3[10]];
    *v49 = sub_10028309C;
    v49[1] = v44;
    v50 = &v5[v3[11]];
    *v50 = sub_100CE0CD8;
    v50[1] = v45;
    v51 = &v22[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_shareHandler];
    swift_beginAccess();
    v52 = *v51;
    if (*v51)
    {
      v53 = a1;
      sub_100030444(v52);
      v52(v5);
      sub_100020438(v52);
    }

    else
    {
      v54 = a1;
    }

    sub_100CE066C(v5, type metadata accessor for SyncedLyricsSharingTransitionInfo);
    return sub_100CE066C(v13, type metadata accessor for Lyrics.TextLine);
  }

  __break(1u);
  return result;
}

Swift::Void __swiftcall SyncedLyricsViewController.displayLinkResumeIfNeeded()()
{
  v1 = *(v0 + OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_displayLink);
  if (v1)
  {
    v2 = v1;
    [v2 setPaused:sub_100CD2A5C() & 1];
  }
}

void sub_100CCCB90()
{
  v1 = v0;
  sub_100CD92D4();
  v2 = &v0[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_specs];
  swift_beginAccess();
  if (*v2)
  {
    v3 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_scrollView;
    swift_beginAccess();
    v4 = *(v2 + 7);
    v5 = *&v1[v3];
    [v5 contentInset];
    [v5 setContentInset:v4];
LABEL_23:

    goto LABEL_24;
  }

  if ((v2[48] & 0x80000000) == 0)
  {
    v6 = *(v2 + 2);
    v7 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_scrollView;
    swift_beginAccess();
    [*&v1[v7] contentOffset];
    v9 = v8;
    v11 = v10;
    v12 = [v1 view];
    if (v12)
    {
      v13 = v12;
      [v12 frame];
      v15 = v14;

      v16 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_containerHeight;
      swift_beginAccess();
      v17 = *&v1[v16];
      if (v17 > 0.0)
      {
LABEL_8:
        v22 = v9;
        v23 = v11;
        v24 = v15;
        v25 = v6 * (CGRectGetHeight(*(&v17 - 3)) / 100.0);
        [*(v2 + 25) ascender];
        v27 = v25 - v26;
        goto LABEL_21;
      }

      v18 = [v1 view];
      if (v18)
      {
        v19 = v18;
        [v18 frame];
        v21 = v20;

        v17 = v21;
        goto LABEL_8;
      }

LABEL_36:
      __break(1u);
      return;
    }

LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v28 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_lineViews;
  swift_beginAccess();
  v29 = *&v1[v28];
  if (v29 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
LABEL_11:
      if ((v29 & 0xC000000000000001) != 0)
      {

        v30 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (!*((v29 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_33;
        }

        v30 = *(v29 + 32);
      }

      v31 = OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_line;
      swift_beginAccess();
      sub_100008FE4(v30 + v31, v63);

      sub_100059A8C(v63, v64);
      v32 = v65;
      v33 = v66;
      sub_10000954C(v64, v65);
      v34 = (*(v33 + 16))(v32, v33);
      v35 = *&v1[v28];
      if ((v35 & 0xC000000000000001) != 0)
      {

        v62 = specialized _ArrayBuffer._getElementSlowPath(_:)();

        v36 = v62;
        goto LABEL_18;
      }

      if ((v34 & 0x8000000000000000) == 0)
      {
        if (v34 < *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v36 = *(v35 + 8 * v34 + 32);
LABEL_18:
          v37 = v36;
          v38 = UIView.untransformedFrame.getter();
          v40 = v39;
          v42 = v41;
          v44 = v43;

          sub_100CD3250(v38, v40, v42, v44);
          v46 = v45;

          v27 = fabs(v46);
          sub_10000959C(v64);
          goto LABEL_21;
        }

LABEL_34:
        __break(1u);
        goto LABEL_35;
      }

LABEL_33:
      __break(1u);
      goto LABEL_34;
    }
  }

  else if (*((v29 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_11;
  }

  [*(v2 + 25) _bodyLeading];
  v27 = v47;
LABEL_21:
  v48 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_scrollView;
  swift_beginAccess();
  v49 = *&v1[v48];
  [v49 contentInset];
  [v49 setContentInset:v27];

  [*&v1[v48] contentOffset];
  if (v50 <= 0.0)
  {
    v5 = *&v1[v48];
    [v5 contentOffset];
    [v5 setContentOffset:?];
    goto LABEL_23;
  }

LABEL_24:
  *&v63[0] = 0;
  *(&v63[0] + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(49);
  v69 = v63[0];
  v51._object = 0x8000000100E6BD30;
  v51._countAndFlagsBits = 0xD00000000000002FLL;
  String.append(_:)(v51);
  v52 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_scrollView;
  swift_beginAccess();
  [*&v1[v52] contentOffset];
  v67 = v53;
  v68 = v54;
  _s3__C7CGPointVMa_2(0);
  _print_unlocked<A, B>(_:_:)();
  v55 = v69;
  if (qword_1011BB908 != -1)
  {
    swift_once();
  }

  v56 = type metadata accessor for Logger();
  sub_1000060E4(v56, qword_1011BD450);

  v57 = Logger.logObject.getter();
  v58 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v57, v58))
  {
    v59 = swift_slowAlloc();
    v60 = swift_slowAlloc();
    *&v69 = v60;
    *v59 = 136315138;
    v61 = sub_1000109A8(v55, *(&v55 + 1), &v69);

    *(v59 + 4) = v61;
    _os_log_impl(&_mh_execute_header, v57, v58, "%s", v59, 0xCu);
    sub_10000959C(v60);
  }

  else
  {
  }
}

void sub_100CCD170()
{
  v1 = swift_allocObject();
  *(v1 + 16) = isEscapingClosureAtFileLocation;
  if (*(isEscapingClosureAtFileLocation + OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_isAnimating))
  {
    v2 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_currentAnimators;
    swift_beginAccess();
    v3 = *(isEscapingClosureAtFileLocation + v2);
    if (!(v3 >> 62))
    {
      v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v4)
      {
        goto LABEL_4;
      }

LABEL_13:
      v15 = isEscapingClosureAtFileLocation;

      return;
    }
  }

  else
  {
    v11 = objc_opt_self();
    v3 = swift_allocObject();
    *(v3 + 16) = isEscapingClosureAtFileLocation;
    v12 = swift_allocObject();
    *(v12 + 16) = sub_100CE0E74;
    *(v12 + 24) = v3;
    v21 = sub_1001D3174;
    v22 = v12;
    aBlock = _NSConcreteStackBlock;
    v18 = 1107296256;
    v19 = sub_100029B9C;
    v20 = &unk_1010F8838;
    v13 = _Block_copy(&aBlock);
    v14 = isEscapingClosureAtFileLocation;

    [v11 performWithoutAnimation:v13];
    _Block_release(v13);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return;
    }

    __break(1u);
  }

  v4 = _CocoaArrayWrapper.endIndex.getter();
  if (!v4)
  {
    goto LABEL_13;
  }

LABEL_4:
  v5 = v4 - 1;
  if (__OFSUB__(v4, 1))
  {
    __break(1u);
    goto LABEL_16;
  }

  if ((v3 & 0xC000000000000001) != 0)
  {
LABEL_16:
    v16 = isEscapingClosureAtFileLocation;

    v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();

    goto LABEL_9;
  }

  if ((v5 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v5 < *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v6 = *(v3 + 8 * v5 + 32);
    v7 = isEscapingClosureAtFileLocation;
    v8 = v6;
LABEL_9:
    v9 = swift_allocObject();
    *(v9 + 16) = sub_100CE0E6C;
    *(v9 + 24) = v1;
    v21 = sub_100029B6C;
    v22 = v9;
    aBlock = _NSConcreteStackBlock;
    v18 = 1107296256;
    v19 = sub_100338AB8;
    v20 = &unk_1010F8888;
    v10 = _Block_copy(&aBlock);

    [v8 addCompletion:v10];

    _Block_release(v10);

    return;
  }

  __break(1u);
}

uint64_t sub_100CCD49C(void *a1)
{
  v2 = objc_opt_self();
  v3 = swift_allocObject();
  *(v3 + 16) = a1;
  v4 = swift_allocObject();
  *(v4 + 16) = sub_100CE1294;
  *(v4 + 24) = v3;
  v8[4] = sub_1001D3174;
  v8[5] = v4;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 1107296256;
  v8[2] = sub_100029B9C;
  v8[3] = &unk_1010F8900;
  v5 = _Block_copy(v8);
  v6 = a1;

  [v2 performWithoutAnimation:v5];
  _Block_release(v5);
  LOBYTE(v2) = swift_isEscapingClosureAtFileLocation();

  if (v2)
  {
    __break(1u);
  }

  return result;
}

void sub_100CCD600(unint64_t a1)
{
  v8 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_selectedLineViews;
  swift_beginAccess();
  v9 = *(a1 + v8);
  if (v9 >> 62)
  {
    v10 = _CocoaArrayWrapper.endIndex.getter();
    if (v10)
    {
      goto LABEL_3;
    }

LABEL_8:
    v3 = 0.0;
    v4 = 0.0;
    v5 = 0.0;
    v6 = 0.0;
    goto LABEL_9;
  }

  v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v10)
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((v9 & 0xC000000000000001) != 0)
  {

    v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

    v11 = *(v9 + 4);
  }

  v9 = v11;
  v3 = UIView.untransformedFrame.getter();
  v4 = v12;
  v5 = v13;
  v6 = v14;

LABEL_9:
  v2 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_lineViews;
  swift_beginAccess();
  v15 = *(a1 + v2);
  if (v15 >> 62)
  {
    v16 = _CocoaArrayWrapper.endIndex.getter();
    if (!v16)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v16)
    {
      goto LABEL_18;
    }
  }

  if (v16 < 1)
  {
    __break(1u);
    goto LABEL_40;
  }

  for (i = 0; i != v16; ++i)
  {
    if ((v15 & 0xC000000000000001) != 0)
    {
      v17 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v17 = *(v15 + 8 * i + 32);
    }

    v18 = v17;
    sub_100CCF9F0(v17);
  }

LABEL_18:
  if (!v10)
  {
    return;
  }

  v9 = *(a1 + v8);
  if (!(v9 >> 62))
  {
    if (!*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return;
    }

LABEL_21:
    if ((v9 & 0xC000000000000001) != 0)
    {

      v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (!*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_45;
      }

      v10 = *(v9 + 4);
    }

    [v10 frame];
    v51.origin.x = v3;
    v51.origin.y = v4;
    v51.size.width = v5;
    v51.size.height = v6;
    if (CGRectEqualToRect(v50, v51))
    {
LABEL_34:

      return;
    }

    i = OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_line;
    swift_beginAccess();
    sub_100008FE4(v10 + i, &v46);
    v19 = v48;
    v20 = v49;
    sub_10000954C(&v46, v48);
    v21 = (*(v20 + 16))(v19, v20);
    v22 = *(a1 + v2);
    if ((v22 & 0xC000000000000001) == 0)
    {
      if ((v21 & 0x8000000000000000) != 0)
      {
        __break(1u);
        goto LABEL_47;
      }

      if (v21 >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        return;
      }

      v23 = *(v22 + 8 * v21 + 32);
LABEL_29:
      v24 = v23;
      v25 = UIView.untransformedFrame.getter();
      v27 = v26;
      v29 = v28;
      v31 = v30;

      sub_100CD3250(v25, v27, v29, v31);
      v33 = v32;

      sub_10000959C(&v46);
      v34 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_scrollView;
      swift_beginAccess();
      [*(a1 + v34) setContentOffset:{0.0, v33}];
      v46 = 0;
      v47 = 0xE000000000000000;
      _StringGuts.grow(_:)(55);
      v44 = v46;
      v45 = v47;
      v35._object = 0x8000000100E6BC00;
      v35._countAndFlagsBits = 0xD00000000000002ELL;
      String.append(_:)(v35);
      v46 = 0;
      v47 = *&v33;
      _s3__C7CGPointVMa_2(0);
      _print_unlocked<A, B>(_:_:)();
      v36._countAndFlagsBits = 0x20726F6620;
      v36._object = 0xE500000000000000;
      String.append(_:)(v36);
      sub_100008FE4(v10 + i, &v46);
      sub_10010FC20(&qword_1011BBB08);
      _print_unlocked<A, B>(_:_:)();
      sub_10000959C(&v46);
      v19 = v44;
      a1 = v45;
      if (qword_1011BB908 == -1)
      {
LABEL_30:
        v37 = type metadata accessor for Logger();
        sub_1000060E4(v37, qword_1011BD450);

        v38 = Logger.logObject.getter();
        v39 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v38, v39))
        {
          v40 = swift_slowAlloc();
          v41 = swift_slowAlloc();
          v46 = v41;
          *v40 = 136315138;
          v42 = sub_1000109A8(v19, a1, &v46);

          *(v40 + 4) = v42;
          _os_log_impl(&_mh_execute_header, v38, v39, "%s", v40, 0xCu);
          sub_10000959C(v41);
        }

        else
        {
        }

        goto LABEL_34;
      }

LABEL_47:
      swift_once();
      goto LABEL_30;
    }

LABEL_45:

    v43 = specialized _ArrayBuffer._getElementSlowPath(_:)();

    v23 = v43;
    goto LABEL_29;
  }

LABEL_41:
  if (_CocoaArrayWrapper.endIndex.getter())
  {
    goto LABEL_21;
  }
}

void sub_100CCDBA8(char *a1, char a2, double *a3)
{
  v4 = v3;
  v87 = a3;
  sub_10010FC20(&qword_1011BD610);
  __chkstk_darwin();
  v83 = &v82 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v86 = &v82 - v8;
  v9 = type metadata accessor for Lyrics.TextLine(0);
  v85 = *(v9 - 8);
  __chkstk_darwin();
  v84 = &v82 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v12 = &v82 - v11;
  v13 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_scrollView;
  swift_beginAccess();
  [*&v4[v13] frame];
  Width = CGRectGetWidth(v95);
  v15 = [v4 view];
  if (!v15)
  {
    goto LABEL_58;
  }

  v16 = v15;
  v17 = &stru_101148000;
  [v15 layoutMargins];

  UIEdgeInsets.horizontal.getter();
  v19 = Width - v18;
  v20 = OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_line;
  swift_beginAccess();
  sub_100008FE4(&a1[v20], v92);
  v21 = sub_10010FC20(&qword_1011BBB08);
  v88 = v9;
  if (swift_dynamicCast())
  {
    v22 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_lyrics;
    swift_beginAccess();
    v23 = *&v4[v22];
    v24 = &selRef_trackNumber;
    if (v23 && !*(v23 + OBJC_IVAR____TtC7LyricsX6Lyrics_vocalistsType))
    {
      v27 = 1.0;
    }

    else
    {
      v25 = v21;
      v26 = &v4[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_specs];
      swift_beginAccess();
      v27 = v26[79];
      v21 = v25;
    }

    sub_100CE066C(v12, type metadata accessor for Lyrics.TextLine);
    v17 = &stru_101148000;
  }

  else
  {
    v27 = 1.0;
    v24 = &selRef_trackNumber;
    if ((swift_dynamicCast() & 1) == 0 && swift_dynamicCast())
    {
    }
  }

  sub_10000959C(v92);
  if (a2 == 2)
  {
    [a1 sizeThatFits:{v19 * v27, INFINITY}];
  }

  else
  {
    v28 = *&a1[OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_contentView];
    if (v28)
    {
      v29 = v21;
      v30 = *&a1[OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_contentView + 8];
      ObjectType = swift_getObjectType();
      v92[0] = v28;
      v32 = *(v30 + 96);
      v33 = v30;
      v21 = v29;
      v32(a2 & 1, ObjectType, v33, v19 * v27, INFINITY);
    }
  }

  sub_100008FE4(&a1[v20], v92);
  if (swift_dynamicCast())
  {
    v34 = &v4[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_specs];
    swift_beginAccess();
    if ((*v34 & 1) == 0)
    {
      v82 = v21;
      v35 = *&v4[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_instrumentalBreakVisibleView];
      if (v35)
      {
        v36 = OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_line;
        swift_beginAccess();
        sub_100008FE4(v35 + v36, v89);
        v38 = v90;
        v37 = v91;
        sub_10000954C(v89, v90);
        (*(v37 + 16))(v38, v37);
        sub_10000959C(v89);
      }

      sub_100008FE4(&a1[v20], v89);
      v39 = v90;
      v40 = v91;
      sub_10000954C(v89, v90);
      (*(v40 + 16))(v39, v40);
      sub_10000959C(v89);
      if (v35)
      {
        v24 = &selRef_trackNumber;
        v17 = &stru_101148000;
      }

      else
      {
        v24 = &selRef_trackNumber;
        v17 = &stru_101148000;
      }

      v21 = v82;
    }
  }

  sub_10000959C(v92);
  sub_100008FE4(&a1[v20], v92);
  v41 = v93;
  v42 = v94;
  sub_10000954C(v92, v93);
  v43 = (*(v42 + 16))(v41, v42);
  sub_10000959C(v92);
  if (!v43)
  {
    swift_beginAccess();
    goto LABEL_50;
  }

  if (v87[4])
  {
    sub_100008FE4(&a1[v20], v92);
    v44 = v93;
    v45 = v94;
    sub_10000954C(v92, v93);
    v46 = (*(v45 + 16))(v44, v45);
    v47 = v46 - 1;
    if (__OFSUB__(v46, 1))
    {
      __break(1u);
    }

    else
    {
      sub_10000959C(v92);
      v48 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_lineViews;
      swift_beginAccess();
      v49 = *&v4[v48];
      if ((v49 & 0xC000000000000001) == 0)
      {
        if ((v47 & 0x8000000000000000) != 0)
        {
          __break(1u);
        }

        else if (v47 < *((v49 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v50 = *(v49 + 8 * v47 + 32);
          goto LABEL_31;
        }

        __break(1u);
LABEL_58:
        __break(1u);
        goto LABEL_59;
      }
    }

    v81 = specialized _ArrayBuffer._getElementSlowPath(_:)();

    v50 = v81;
LABEL_31:
    v51 = v50;
    [v51 frame];
    Height = CGRectGetHeight(v96);
    v53 = UIView.untransformedFrame.getter();
    v55 = v54;
    v57 = v56;
    v59 = v58;

    v97.origin.x = v53;
    v97.origin.y = v55;
    v97.size.width = v57;
    v97.size.height = v59;
    CGRectGetMaxY(v97);

    v60 = v88;
    v61 = v86;
    if (Height > 0.0)
    {
      swift_beginAccess();
    }

    goto LABEL_38;
  }

  v63 = v87[2];
  v62 = v87[3];
  v65 = *v87;
  v64 = v87[1];
  v98.origin.x = *v87;
  v98.origin.y = v64;
  v98.size.width = v63;
  v98.size.height = v62;
  v66 = CGRectGetHeight(v98);
  v99.origin.x = v65;
  v99.origin.y = v64;
  v99.size.width = v63;
  v99.size.height = v62;
  CGRectGetMaxY(v99);
  if (v66 > 0.0)
  {
    swift_beginAccess();
  }

  v60 = v88;
  v61 = v86;
LABEL_38:
  v67 = &v4[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_specs];
  swift_beginAccess();
  if (*v67 != 1)
  {
    goto LABEL_50;
  }

  sub_100008FE4(&a1[v20], v92);
  v68 = swift_dynamicCast();
  v69 = *(v85 + 56);
  if ((v68 & 1) == 0)
  {
    v69(v61, 1, 1, v60);
    sub_1000095E8(v61, &qword_1011BD610);
    goto LABEL_48;
  }

  v69(v61, 0, 1, v60);
  v70 = v61;
  v71 = v84;
  sub_100CE0BF0(v70, v84, type metadata accessor for Lyrics.TextLine);
  if (*(v71 + *(v60 + 48)) != 1)
  {
    v77 = v71;
LABEL_47:
    sub_100CE066C(v77, type metadata accessor for Lyrics.TextLine);
    goto LABEL_48;
  }

  v72 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_lyrics;
  swift_beginAccess();
  v73 = *&v4[v72];
  if (!v73)
  {
    v77 = v84;
    goto LABEL_47;
  }

  v82 = v21;
  v87 = &v82;
  v74 = *(v73 + 48);
  __chkstk_darwin();
  v75 = v84;
  *(&v82 - 2) = v84;

  v76 = v83;
  sub_100C66C74(sub_100C77464, v74, v83);

  sub_100CE066C(v75, type metadata accessor for Lyrics.TextLine);
  if ((*(v85 + 48))(v76, 1, v88) == 1)
  {
    sub_1000095E8(v76, &qword_1011BD610);
    v17 = &stru_101148000;
    v24 = &selRef_trackNumber;
  }

  else
  {
    v80 = *(v76 + 16);
    sub_100CE066C(v76, type metadata accessor for Lyrics.TextLine);
    v17 = &stru_101148000;
    v24 = &selRef_trackNumber;
    if (v80 > 0)
    {
      goto LABEL_50;
    }
  }

LABEL_48:
  sub_100008FE4(&a1[v20], v92);
  if (swift_dynamicCast())
  {
  }

LABEL_50:
  v78 = [v4 v24[31]];
  if (v78)
  {
    v79 = v78;
    [v78 v17[132].attr];

    return;
  }

LABEL_59:
  __break(1u);
}

id sub_100CCE674()
{
  type metadata accessor for Locale();
  __chkstk_darwin();
  v73 = &v71 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = type metadata accessor for String.LocalizationValue();
  v74 = *(v2 - 8);
  v75 = v2;
  __chkstk_darwin();
  v79 = &v71 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v80 = &v71 - v4;
  v5 = type metadata accessor for Lyrics.Translation(0);
  v77 = *(v5 - 8);
  v78 = v5;
  __chkstk_darwin();
  v72 = &v71 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&qword_1011BD4F0);
  __chkstk_darwin();
  v71 = &v71 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v76 = &v71 - v8;
  v9 = type metadata accessor for Lyrics.Transliteration(0);
  v10 = *(v9 - 8);
  __chkstk_darwin();
  v12 = &v71 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&qword_1011BBA58);
  __chkstk_darwin();
  v14 = &v71 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v16 = &v71 - v15;
  v17 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_currentTransliteration;
  swift_beginAccess();
  v18 = v0 + v17;
  v19 = v0;
  sub_1000089F8(v18, v16, &qword_1011BBA58);
  v20 = *(v10 + 48);
  if (v20(v16, 1, v9))
  {
    sub_1000095E8(v16, &qword_1011BBA58);
  }

  else
  {
    sub_100CE0C58(v16, v12, type metadata accessor for Lyrics.Transliteration);
    sub_1000095E8(v16, &qword_1011BBA58);
    v21 = v12[*(v9 + 24)];
    sub_100CE066C(v12, type metadata accessor for Lyrics.Transliteration);
    if (v21)
    {
      v22 = 1;
      goto LABEL_11;
    }
  }

  v23 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_lyrics;
  swift_beginAccess();
  v24 = *(v0 + v23);
  if (v24)
  {
    v25 = OBJC_IVAR____TtC7LyricsX6Lyrics_currentTransliteration;
    swift_beginAccess();
    sub_1000089F8(v24 + v25, v14, &qword_1011BBA58);
    if (v20(v14, 1, v9))
    {
      sub_1000095E8(v14, &qword_1011BBA58);
      v22 = 0;
    }

    else
    {
      sub_100CE0C58(v14, v12, type metadata accessor for Lyrics.Transliteration);
      sub_1000095E8(v14, &qword_1011BBA58);
      v22 = v12[*(v9 + 24)];
      sub_100CE066C(v12, type metadata accessor for Lyrics.Transliteration);
    }

    v19 = v0;
  }

  else
  {
    v22 = 0;
  }

LABEL_11:
  v27 = v77;
  v26 = v78;
  v28 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_currentTranslation;
  swift_beginAccess();
  v29 = v76;
  sub_1000089F8(v19 + v28, v76, &qword_1011BD4F0);
  v30 = *(v27 + 48);
  v31 = v30(v29, 1, v26);
  v32 = v79;
  if (v31)
  {
    sub_1000095E8(v29, &qword_1011BD4F0);
    goto LABEL_15;
  }

  v33 = v72;
  sub_100CE0C58(v29, v72, type metadata accessor for Lyrics.Translation);
  sub_1000095E8(v29, &qword_1011BD4F0);
  v34 = *(v33 + *(v26 + 28));
  sub_100CE066C(v33, type metadata accessor for Lyrics.Translation);
  if (v34 != 1)
  {
LABEL_15:
    v36 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_lyrics;
    swift_beginAccess();
    v37 = *(v19 + v36);
    v35 = v80;
    if (v37)
    {
      v38 = OBJC_IVAR____TtC7LyricsX6Lyrics_currentTranslation;
      swift_beginAccess();
      v39 = v37 + v38;
      v40 = v71;
      sub_1000089F8(v39, v71, &qword_1011BD4F0);
      if (!v30(v40, 1, v26))
      {
        v41 = v72;
        sub_100CE0C58(v40, v72, type metadata accessor for Lyrics.Translation);
        sub_1000095E8(v40, &qword_1011BD4F0);
        v42 = *(v41 + *(v26 + 28));
        sub_100CE066C(v41, type metadata accessor for Lyrics.Translation);
        if (v22 & 1) != 0 || (v42)
        {
          goto LABEL_22;
        }

        return 0;
      }

      sub_1000095E8(v40, &qword_1011BD4F0);
    }

    if (v22)
    {
      goto LABEL_22;
    }

    return 0;
  }

  v35 = v80;
LABEL_22:
  String.LocalizationValue.init(stringLiteral:)();
  v44 = v74;
  v43 = v75;
  (*(v74 + 16))(v32, v35, v75);
  if (qword_1011BB850 != -1)
  {
    swift_once();
  }

  v45 = qword_10121C0E0;
  static Locale.current.getter();
  v46 = String.init(localized:table:bundle:locale:comment:)();
  v48 = v47;
  (*(v44 + 8))(v35, v43);
  sub_10010FC20(&unk_1011BD910);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100EBDC20;
  *(inited + 32) = NSForegroundColorAttributeName;
  v50 = v19 + OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_specs;
  swift_beginAccess();
  v51 = *(v50 + 368);
  v52 = sub_100009F78(0, &unk_1011BD3E0);
  *(inited + 40) = v51;
  *(inited + 64) = v52;
  *(inited + 72) = NSFontAttributeName;
  v53 = *(v50 + 344);
  *(inited + 104) = sub_100009F78(0, &qword_1011BD920);
  *(inited + 80) = v53;
  v54 = NSForegroundColorAttributeName;
  v55 = v51;
  v56 = NSFontAttributeName;
  v57 = v53;
  sub_100C76B50(inited);
  swift_setDeallocating();
  sub_10010FC20(&qword_1011BC080);
  swift_arrayDestroy();
  v58 = [objc_allocWithZone(NSTextAttachment) init];
  v59 = String._bridgeToObjectiveC()();
  v60 = [objc_opt_self() systemImageNamed:v59];

  if (v60)
  {
    v61 = [v60 imageWithTintColor:*(v50 + 368)];
  }

  else
  {
    v61 = 0;
  }

  [v58 setImage:v61];

  _s3__C3KeyVMa_2(0);
  sub_1000298C0(&qword_1011BD930, _s3__C3KeyVMa_2);
  v63 = v58;
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  v62 = [objc_opt_self() attributedStringWithAttachment:v63 attributes:isa];

  v81 = 32;
  v82 = 0xE100000000000000;
  v65._countAndFlagsBits = v46;
  v65._object = v48;
  String.append(_:)(v65);

  v66 = objc_allocWithZone(NSAttributedString);
  v67 = String._bridgeToObjectiveC()();

  v68 = Dictionary._bridgeToObjectiveC()().super.isa;

  v69 = [v66 initWithString:v67 attributes:v68];

  [v62 appendAttributedString:v69];
  return v62;
}

char *sub_100CCF174(void *a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    v6 = a1;
    goto LABEL_10;
  }

  v7 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_lineViews;
  swift_beginAccess();
  v8 = *&v3[v7];
  if (v8 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }
  }

  v10 = result - 1;
  if (__OFSUB__(result, 1))
  {
    __break(1u);
  }

  else if ((v8 & 0xC000000000000001) == 0)
  {
    if ((v10 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v10 < *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v6 = *(v8 + 8 * v10 + 32);
      goto LABEL_10;
    }

    __break(1u);
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();

LABEL_10:
  v11 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_scrollView;
  swift_beginAccess();
  v12 = *&v3[v11];
  v13 = a1;
  [v12 frame];
  Width = CGRectGetWidth(v99);
  result = [v3 view];
  if (!result)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v15 = result;
  [result layoutMargins];

  UIEdgeInsets.horizontal.getter();
  v17 = Width - v16;
  v18 = v6;
  v19 = UIView.untransformedFrame.getter();
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v26 = sub_100CCE674();
  v27 = &selRef_objectAtIndexedSubscript_;
  if (!v26)
  {
    v32 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_automaticallyCreatedDisclaimerLabel;
    v33 = *&v3[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_automaticallyCreatedDisclaimerLabel];
    if (v33)
    {
      [v33 removeFromSuperview];
      v34 = *&v3[v32];
    }

    else
    {
      v34 = 0;
    }

    v39 = off_1011BD000;
    *&v3[v32] = 0;

    v51 = 0;
    goto LABEL_26;
  }

  v28 = v26;
  v29 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_automaticallyCreatedDisclaimerLabel;
  v30 = *&v3[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_automaticallyCreatedDisclaimerLabel];
  if (v30)
  {
    v95 = *&v3[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_automaticallyCreatedDisclaimerLabel];
    v31 = v30;
  }

  else
  {
    v35 = [objc_allocWithZone(UILabel) init];
    v95 = v35;
    [v35 setNumberOfLines:0];
    v36 = *&v3[v29];
    *&v3[v29] = v35;
    v31 = v35;

    v27 = &selRef_objectAtIndexedSubscript_;
    v30 = 0;
  }

  v37 = v30;
  [v31 setAttributedText:v28];
  [v31 v27[446]];
  result = [v3 view];
  if (!result)
  {
LABEL_42:
    __break(1u);
    return result;
  }

  v38 = result;
  [result layoutMargins];

  v100.origin.x = v19;
  v100.origin.y = v21;
  v100.size.width = v23;
  v100.size.height = v25;
  CGRectGetMaxY(v100);
  v39 = off_1011BD000;
  swift_beginAccess();
  v40 = *&v3[v11];
  v96 = 0u;
  v97 = 0u;
  v98 = 1;
  v41 = v40;
  CGRect.applyingLayoutDirection(in:bounds:)();
  v43 = v42;
  v45 = v44;
  v47 = v46;
  v49 = v48;

  v50 = objc_opt_self();
  if ([v50 _isInAnimationBlockWithAnimationsEnabled] && (*(a2 + 32) & 1) == 0)
  {
    v52 = swift_allocObject();
    *(v52 + 16) = v43;
    *(v52 + 24) = v45;
    *(v52 + 32) = v47;
    *(v52 + 40) = v49;
    v53 = *(a2 + 16);
    *(v52 + 48) = *a2;
    *(v52 + 64) = v53;
    *(v52 + 80) = v3;
    *(v52 + 88) = &v95;
    v54 = swift_allocObject();
    *(v54 + 16) = sub_100CE0CC0;
    *(v54 + 24) = v52;
    aBlock[4] = sub_100029B6C;
    aBlock[5] = v54;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100029B9C;
    aBlock[3] = &unk_1010F8478;
    v55 = _Block_copy(aBlock);
    v56 = v3;

    [v50 performWithoutAnimation:v55];
    _Block_release(v55);
    LOBYTE(v55) = swift_isEscapingClosureAtFileLocation();

    if ((v55 & 1) == 0)
    {
      v51 = sub_100CE0CC0;
      v31 = v95;
      v39 = off_1011BD000;
      goto LABEL_23;
    }

    goto LABEL_40;
  }

  v51 = 0;
LABEL_23:
  [v31 setAlpha:1.0];
  [v95 setFrame:{v43, v45, v47, v49}];
  [*&v3[v11] addSubview:v95];
  v57 = v95;
  [v57 frame];
  v19 = v58;
  v21 = v59;
  v23 = v60;
  v25 = v61;

LABEL_26:
  v62 = &v3[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_bottomViewMetadata];
  swift_beginAccess();
  if (*v62)
  {
    v93 = v62[3];
    v63 = v62[1];
    v64 = *v62;
    [v64 sizeThatFits:{v17, INFINITY}];
    v66 = v65;
    v68 = v67;
    v69 = *&v3[v11];
    v70 = v64;
    [v69 frame];
    v71 = (CGRectGetWidth(v101) - v66) * 0.5;
    v102.origin.x = v19;
    v102.origin.y = v21;
    v102.size.width = v23;
    v102.size.height = v25;
    [v70 setFrame:{v71, v63 + CGRectGetMaxY(v102), v66, v68}];

    [*&v3[v11] addSubview:v70];
    [v70 frame];
    v19 = v72;
    v21 = v73;
    v23 = v74;
    v76 = v75;

    v25 = v93 + v76;
  }

  v77 = *&v3[v11];
  [v77 frame];
  v78 = CGRectGetWidth(v103);
  v104.origin.x = v19;
  v104.origin.y = v21;
  v104.size.width = v23;
  v104.size.height = v25;
  [v77 setContentSize:{v78, CGRectGetMaxY(v104)}];

  v79 = v39[146] + v3;
  swift_beginAccess();
  if (*v79)
  {

    v80 = *&v3[v11];
  }

  else
  {
    [*&v3[v11] frame];
    Height = CGRectGetHeight(v105);
    [*&v3[v11] contentInset];
    v83 = v82;
    v84 = UIView.untransformedFrame.getter();
    v86 = v85;
    v88 = v87;
    v90 = v89;

    v106.origin.x = v84;
    v106.origin.y = v86;
    v106.size.width = v88;
    v106.size.height = v90;
    v91 = Height - (v83 + CGRectGetHeight(v106));
    v92 = *&v3[v11];
    v80 = v92;
    if (v91 <= 0.0)
    {
      [v92 contentInset];
    }
  }

  [v80 contentInset];
  [v80 setContentInset:?];

  return sub_100020438(v51);
}

id sub_100CCF938(uint64_t a1, id *a2, double a3, double a4, double a5, double a6, CGFloat a7, CGFloat a8, CGFloat a9, CGFloat a10)
{
  v18.origin.y = a8;
  v18.origin.x = a7;
  v18.size.width = a9;
  v18.size.height = a10;
  MaxY = CGRectGetMaxY(v18);
  v16 = a1 + OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_specs;
  swift_beginAccess();
  [*a2 setFrame:{a3, MaxY + *(v16 + 112), a5, a6}];
  return [*a2 setAlpha:0.0];
}

char *sub_100CCF9F0(char *a1)
{
  v2 = v1;
  memset(v34, 0, sizeof(v34));
  v4 = 1;
  v35 = 1;
  sub_100CCDBA8(a1, 2, v34);
  UIView.untransformedFrame.setter(v5, v6, v7, v8);
  v9 = *(v1 + OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_timestampLabel);
  if (v9)
  {
    v10 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsTimestampLabel_line;
    swift_beginAccess();
    sub_1000089F8(v9 + v10, v31, &qword_1011BBB10);
    v11 = v32;
    if (v32)
    {
      v12 = v33;
      sub_10000954C(v31, v32);
      v13 = *(v11 - 8);
      v14 = __chkstk_darwin();
      v16 = &v30[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
      (*(v13 + 16))(v16, v14);
      sub_1000095E8(v31, &qword_1011BBB10);
      v17 = (*(v12 + 16))(v11, v12);
      (*(v13 + 8))(v16, v11);
      v4 = 0;
      goto LABEL_6;
    }

    sub_1000095E8(v31, &qword_1011BBB10);
  }

  v17 = 0;
LABEL_6:
  v18 = OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_line;
  swift_beginAccess();
  sub_100008FE4(&a1[v18], v31);
  v19 = v32;
  v20 = v33;
  sub_10000954C(v31, v32);
  v21 = (*(v20 + 16))(v19, v20);
  if (v4)
  {
    sub_10000959C(v31);
  }

  else
  {
    v22 = v21;
    sub_10000959C(v31);
    if (v17 == v22)
    {
      sub_100CCFCE4();
    }
  }

  sub_100008FE4(&a1[v18], v31);
  v23 = v32;
  v24 = v33;
  sub_10000954C(v31, v32);
  v25 = (*(v24 + 16))(v23, v24);
  v26 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_lyrics;
  swift_beginAccess();
  v27 = *(v2 + v26);
  if (v27)
  {
    v28 = *(*(v27 + 40) + 16) - 1;
  }

  else
  {
    v28 = -1;
  }

  result = sub_10000959C(v31);
  if (v25 == v28)
  {
    return sub_100CCF174(a1, v34);
  }

  return result;
}

void sub_100CCFCE4()
{
  v1 = *&v0[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_timestampLabel];
  if (v1)
  {
    v2 = v0;
    v3 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsTimestampLabel_line;
    swift_beginAccess();
    sub_1000089F8(v1 + v3, &v36, &qword_1011BBB10);
    if (v37)
    {
      sub_100059A8C(&v36, v38);
      v4 = v39;
      v5 = v40;
      sub_10000954C(v38, v39);
      v6 = *(v5 + 16);
      v7 = v1;
      v8 = v6(v4, v5);
      v9 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_lineViews;
      swift_beginAccess();
      v10 = *&v2[v9];
      if ((v10 & 0xC000000000000001) == 0)
      {
        if ((v8 & 0x8000000000000000) != 0)
        {
          __break(1u);
        }

        else if (v8 < *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v11 = *(v10 + 8 * v8 + 32);
          goto LABEL_7;
        }

        __break(1u);
LABEL_16:
        __break(1u);
        return;
      }

      v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();

LABEL_7:
      v12 = v7;
      [v12 systemLayoutSizeFittingSize:{INFINITY, INFINITY}];
      v14 = v13;
      v16 = v15;
      v17 = *&v11[OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_alignment];
      v18 = v11;
      v19 = UIView.untransformedFrame.getter();
      v21 = v20;
      v23 = v22;
      v25 = v24;

      if (v17 == 2)
      {
        v41.origin.x = v19;
        v41.origin.y = v21;
        v41.size.width = v23;
        v41.size.height = v25;
        v19 = CGRectGetMaxX(v41) - v14;
      }

      v26 = v18;
      UIView.untransformedFrame.getter();
      v28 = v27;

      v29 = [v2 view];
      if (v29)
      {
        v30 = v29;
        v31 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_scrollView;
        swift_beginAccess();
        [v30 convertPoint:*&v2[v31] fromCoordinateSpace:{v19, v28 - v16}];
        v33 = v32;
        v35 = v34;

        [v12 setFrame:{v33, v35, v14, v16}];
        sub_10000959C(v38);
        return;
      }

      goto LABEL_16;
    }

    sub_1000095E8(&v36, &qword_1011BBB10);
  }
}

uint64_t sub_100CCFF98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Lyrics.Transliteration(0);
  v50 = *(v4 - 8);
  v51 = v4;
  __chkstk_darwin();
  v44 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&qword_1011BBA58);
  __chkstk_darwin();
  v52 = &v42 - v6;
  v48 = type metadata accessor for Lyrics.Translation(0);
  v45 = *(v48 - 8);
  __chkstk_darwin();
  v43 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&qword_1011BD4F0);
  __chkstk_darwin();
  v47 = &v42 - v8;
  v9 = type metadata accessor for Lyrics.TextLine(0);
  v10 = *(v9 - 8);
  __chkstk_darwin();
  v12 = (&v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10010FC20(&qword_1011BD900);
  __chkstk_darwin();
  v46 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v15 = &v42 - v14;
  sub_10010FC20(&qword_1011BD610);
  __chkstk_darwin();
  v49 = (&v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin();
  v18 = &v42 - v17;
  __chkstk_darwin();
  v20 = &v42 - v19;
  sub_100008FE4(a1, v57);
  v21 = *(v10 + 56);
  v53 = v20;
  v21(v20, 1, 1, v9);
  v22 = type metadata accessor for Lyrics.Translation.Line(0);
  v23 = *(*(v22 - 8) + 56);
  v54 = v15;
  v23(v15, 1, 1, v22);
  sub_100008FE4(v57, v56);
  sub_10010FC20(&qword_1011BBB08);
  if (swift_dynamicCast())
  {
    v42 = a2;
    v21(v18, 0, 1, v9);
    sub_100CE0BF0(v18, v12, type metadata accessor for Lyrics.TextLine);
    v24 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_currentTranslation;
    v25 = v55;
    swift_beginAccess();
    v26 = v25 + v24;
    v27 = v47;
    sub_1000089F8(v26, v47, &qword_1011BD4F0);
    v28 = v21;
    if ((*(v45 + 48))(v27, 1, v48))
    {
      v29 = v54;
      sub_1000095E8(v54, &qword_1011BD900);
      sub_1000095E8(v27, &qword_1011BD4F0);
      v30 = v46;
      v23(v46, 1, 1, v22);
    }

    else
    {
      v32 = v43;
      sub_100CE0C58(v27, v43, type metadata accessor for Lyrics.Translation);
      sub_1000095E8(v27, &qword_1011BD4F0);
      v30 = v46;
      sub_100C650B4(v12, v46);
      sub_100CE066C(v32, type metadata accessor for Lyrics.Translation);
      v29 = v54;
      sub_1000095E8(v54, &qword_1011BD900);
    }

    sub_10003D17C(v30, v29, &qword_1011BD900);
    v33 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_currentTransliteration;
    v34 = v55;
    swift_beginAccess();
    v35 = v34 + v33;
    v36 = v52;
    sub_1000089F8(v35, v52, &qword_1011BBA58);
    v37 = (*(v50 + 48))(v36, 1, v51);
    a2 = v42;
    if (v37)
    {
      sub_100CE066C(v12, type metadata accessor for Lyrics.TextLine);
      v31 = v53;
      sub_1000095E8(v53, &qword_1011BD610);
      sub_1000095E8(v36, &qword_1011BBA58);
      v38 = v49;
      v28(v49, 1, 1, v9);
    }

    else
    {
      v39 = v44;
      sub_100CE0C58(v36, v44, type metadata accessor for Lyrics.Transliteration);
      sub_1000095E8(v36, &qword_1011BBA58);
      v38 = v49;
      sub_100C65354(v12, v49);
      sub_100CE066C(v39, type metadata accessor for Lyrics.Transliteration);
      sub_100CE066C(v12, type metadata accessor for Lyrics.TextLine);
      v31 = v53;
      sub_1000095E8(v53, &qword_1011BD610);
    }

    sub_10003D17C(v38, v31, &qword_1011BD610);
  }

  else
  {
    v21(v18, 1, 1, v9);
    sub_1000095E8(v18, &qword_1011BD610);
    v31 = v53;
    v29 = v54;
  }

  sub_100059A8C(v57, a2);
  v40 = type metadata accessor for SyncedLyricsViewController.LineData(0);
  sub_10003D17C(v31, a2 + *(v40 + 20), &qword_1011BD610);
  return sub_10003D17C(v29, a2 + *(v40 + 24), &qword_1011BD900);
}

void sub_100CD07AC(uint64_t a1)
{
  sub_10010FC20(&qword_1011BD900);
  __chkstk_darwin();
  v111 = &v101 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v103 = &v101 - v4;
  __chkstk_darwin();
  v6 = &v101 - v5;
  sub_10010FC20(&qword_1011BD610);
  __chkstk_darwin();
  v112 = &v101 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v102 = &v101 - v8;
  __chkstk_darwin();
  v109 = &v101 - v9;
  v110 = type metadata accessor for SyncedLyricsViewController.LineData(0);
  __chkstk_darwin();
  v11 = (&v101 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_lineViews;
  v114 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_lineViews;
  swift_beginAccess();
  v116 = v1;
  v13 = *&v1[v12];
  if (v13 >> 62)
  {
LABEL_64:
    v14 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v15 = *(a1 + 40);
  v16 = *(v15 + 16);
  v104 = v6;
  v105 = v11;
  if (v16 >= v14)
  {
    goto LABEL_8;
  }

  v17 = *&v116[v114];
  if (!(v17 >> 62))
  {
    v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v18 >= v16)
    {
      goto LABEL_6;
    }

LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
    return;
  }

  v18 = _CocoaArrayWrapper.endIndex.getter();
  if (v18 < v16)
  {
    goto LABEL_66;
  }

LABEL_6:
  if (v16 != v18)
  {
    if (v16 < v18)
    {
      v11 = &selRef_objectAtIndexedSubscript_;
      v99 = v16;
      while (1)
      {
        v6 = *&v116[v114];
        if ((v6 & 0xC000000000000001) != 0)
        {

          v100 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if ((v99 & 0x8000000000000000) != 0)
          {
            goto LABEL_62;
          }

          if (v99 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
LABEL_63:
            __break(1u);
            goto LABEL_64;
          }

          v100 = *(v6 + 8 * v99 + 32);
        }

        ++v99;
        [v100 removeFromSuperview];

        if (v18 == v99)
        {
          goto LABEL_7;
        }
      }
    }

    goto LABEL_67;
  }

LABEL_7:
  swift_beginAccess();
  sub_100CDCA1C(v16, v18, sub_100CDC91C);
  swift_endAccess();
  v11 = v105;
LABEL_8:
  v19 = *&v116[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_instrumentalBreakVisibleView];
  *&v116[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_instrumentalBreakVisibleView] = 0;

  v20 = *(v15 + 16);
  v6 = v114;
  if (v20)
  {
    v21 = &v116[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_specs];
    v22 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_scrollView;
    v23 = v15 + 32;
    v108 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_lyrics;
    swift_beginAccess();
    v113 = v21;
    swift_beginAccess();
    v101 = v22;
    swift_beginAccess();
    do
    {
      v115 = v20;
      sub_100008FE4(v23, &v123);
      v25 = v116;
      sub_100CCFF98(&v123, v11);
      v26 = v125;
      v27 = v126;
      sub_10000954C(&v123, v125);
      v28 = (*(v27 + 16))(v26, v27);
      v29 = *&v25[v6];
      if (v29 >> 62)
      {
        if (v28 >= _CocoaArrayWrapper.endIndex.getter())
        {
LABEL_30:
          sub_100008FE4(v11, v122);
          v64 = v110;
          sub_1000089F8(v11 + *(v110 + 20), v112, &qword_1011BD610);
          sub_1000089F8(v11 + *(v64 + 24), v111, &qword_1011BD900);
          v65 = *&v116[v108];
          v66 = v113;
          if (v65)
          {
            if (*(v65 + OBJC_IVAR____TtC7LyricsX6Lyrics_vocalistsType) || *(v113 + 88) == 1)
            {
              v67 = v11[3];
              v68 = v11[4];
              sub_10000954C(v11, v67);
              v6 = v114;
              v69 = (*(v68 + 3))(v67, v68);
            }

            else
            {
              v69 = v113[10];
            }
          }

          else
          {
            v69 = 4;
          }

          memcpy(v127, v66, 0x2B0uLL);
          v70 = objc_allocWithZone(type metadata accessor for SyncedLyricsLineView());
          sub_1002AD8C8(v127, v121);
          v71 = sub_100CBBAE0(v122, v112, v111, v69, v127);
          sub_100C9C2C4(v127);
          v72 = [v116 traitCollection];
          v73 = [v72 userInterfaceIdiom];

          if (v73 != 2)
          {
            sub_100009F78(0, &qword_1011BD908);
            v74 = swift_allocObject();
            swift_unknownObjectWeakInit();
            v75 = swift_allocObject();
            swift_unknownObjectWeakInit();
            v76 = swift_allocObject();
            *(v76 + 16) = v74;
            *(v76 + 24) = v75;
            v6 = v114;
            v77 = v71;
            v78 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
            [v77 addAction:v78 forControlEvents:64];
          }

          v79 = v116;
          v80 = *&v116[v101];
          v34 = v71;
          [v80 addSubview:v34];
          swift_beginAccess();
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((*&v79[v6] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v79[v6] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          swift_endAccess();
          if (*v113 == 1)
          {
            [v34 setUserInteractionEnabled:0];
          }

          else
          {
            v24 = [objc_allocWithZone(UILongPressGestureRecognizer) init];
            [v24 setCancelsTouchesInView:0];
            [v24 addTarget:v116 action:"shareGestureHandler:"];
            [v34 addGestureRecognizer:v24];
          }

          goto LABEL_11;
        }
      }

      else if (v28 >= *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_30;
      }

      v30 = v125;
      v31 = v126;
      sub_10000954C(&v123, v125);
      v32 = (*(v31 + 16))(v30, v31);
      v33 = *&v116[v6];
      if ((v33 & 0xC000000000000001) != 0)
      {

        v34 = specialized _ArrayBuffer._getElementSlowPath(_:)();

        a1 = v104;
      }

      else
      {
        a1 = v104;
        if ((v32 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_61:
          __break(1u);
LABEL_62:
          __break(1u);
          goto LABEL_63;
        }

        if (v32 >= *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_61;
        }

        v34 = *(v33 + 8 * v32 + 32);
      }

      sub_100008FE4(v11, v121);
      v35 = v110;
      sub_1000089F8(v11 + *(v110 + 20), v109, &qword_1011BD610);
      sub_1000089F8(v11 + *(v35 + 24), a1, &qword_1011BD900);
      v36 = *&v116[v108];
      v107 = v23;
      if (v36)
      {
        if (*(v36 + OBJC_IVAR____TtC7LyricsX6Lyrics_vocalistsType) || (v113[11] & 1) != 0)
        {
          v37 = v11;
          v38 = v11[3];
          v39 = v11[4];
          sub_10000954C(v37, v38);
          v40 = *(v39 + 3);
          v41 = v34;
          v42 = v40(v38, v39);
        }

        else
        {
          v42 = v113[10];
          v44 = v34;
        }
      }

      else
      {
        v43 = v34;
        v42 = 4;
      }

      sub_100008FE4(v121, v122);
      v45 = OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_line;
      swift_beginAccess();
      sub_10000959C(&v34[v45]);
      sub_100059A8C(v122, &v34[v45]);
      swift_endAccess();
      v46 = v109;
      v47 = v102;
      sub_1000089F8(v109, v102, &qword_1011BD610);
      v48 = OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_transliteratedLine;
      swift_beginAccess();
      sub_10006B010(v47, &v34[v48], &qword_1011BD610);
      swift_endAccess();
      v49 = v103;
      sub_1000089F8(a1, v103, &qword_1011BD900);
      v50 = OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_translatedLine;
      swift_beginAccess();
      sub_10006B010(v49, &v34[v50], &qword_1011BD900);
      swift_endAccess();
      *&v34[OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_alignment] = v42;
      sub_100CB5338();
      sub_1000095E8(a1, &qword_1011BD900);
      sub_1000095E8(v46, &qword_1011BD610);
      sub_10000959C(v121);
      v51 = *&v34[OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_contentView];
      if (v51)
      {
        v52 = *&v34[OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_contentView + 8];
        ObjectType = swift_getObjectType();
        v121[0] = v51;
        (*(v52 + 80))(ObjectType, v52);
      }

      v54 = OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_isScrolling;
      v34[OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_isScrolling] = 1;
      v56 = sub_100CB3680(v121);
      v57 = *v55;
      if (*v55)
      {
        v58 = v55;
        v106 = v34[v54];
        v59 = *(v55 + 8);
        v60 = swift_getObjectType();
        *&v122[0] = v57;
        v61 = *(v59 + 40);
        v62 = v57;
        v61(v106, v60, v59);
        v63 = *v58;
        *v58 = *&v122[0];
        *(v58 + 8) = v59;
      }

      v56(v121, 0);
      v11 = v105;
      v6 = v114;
      v23 = v107;
      sub_100CB43DC(0, 0);
LABEL_11:
      sub_100CCF9F0(v34);

      sub_100CE066C(v11, type metadata accessor for SyncedLyricsViewController.LineData);
      sub_10000959C(&v123);
      v23 += 40;
      v20 = v115 - 1;
    }

    while (v115 != 1);
  }

  v81 = v116;
  sub_100CD3AEC(0);
  sub_100CCCB90();
  v82 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_specs;
  swift_beginAccess();
  if (v81[v82] == 1)
  {
    v83 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_scrollView;
    v84 = v116;
    swift_beginAccess();
    v85 = *&v84[v83];
    [v85 contentInset];
    [v85 contentOffset];
    [v85 setContentOffset:?];
  }

  v123 = 0;
  v124 = 0xE000000000000000;
  _StringGuts.grow(_:)(44);
  v117 = v123;
  v118 = v124;
  v86._object = 0x8000000100E6B970;
  v86._countAndFlagsBits = 0xD00000000000002ALL;
  String.append(_:)(v86);
  v87 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_scrollView;
  v88 = v116;
  swift_beginAccess();
  [*&v88[v87] contentOffset];
  v119 = v89;
  v120 = v90;
  _s3__C7CGPointVMa_2(0);
  _print_unlocked<A, B>(_:_:)();
  v92 = v117;
  v91 = v118;
  if (qword_1011BB908 != -1)
  {
    swift_once();
  }

  v93 = type metadata accessor for Logger();
  sub_1000060E4(v93, qword_1011BD450);

  v94 = Logger.logObject.getter();
  v95 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v94, v95))
  {
    v96 = swift_slowAlloc();
    v97 = swift_slowAlloc();
    v117 = v97;
    *v96 = 136315138;
    v98 = sub_1000109A8(v92, v91, &v117);

    *(v96 + 4) = v98;
    _os_log_impl(&_mh_execute_header, v94, v95, "%s", v96, 0xCu);
    sub_10000959C(v97);
  }

  else
  {
  }
}

void sub_100CD161C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    swift_beginAccess();
    v2 = swift_unknownObjectWeakLoadStrong();
    if (v2)
    {
      v3 = v2;
      sub_100CC9D4C(v2);

      v1 = v3;
    }
  }
}

id sub_100CD16A0(void *a1)
{
  v125 = a1;
  sub_10010FC20(&qword_1011BD900);
  __chkstk_darwin();
  v124 = &v105 - v2;
  sub_10010FC20(&qword_1011BD610);
  __chkstk_darwin();
  v123 = &v105 - v3;
  v122 = type metadata accessor for SyncedLyricsViewController.LineData(0);
  __chkstk_darwin();
  v5 = (&v105 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_lyrics;
  result = swift_beginAccess();
  v8 = *(v1 + v6);
  if (!v8)
  {
    return result;
  }

  sub_100CD92D4();
  v9 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_scrollView;
  swift_beginAccess();
  [*(v1 + v9) contentOffset];
  v11 = v10;
  v111 = v9;
  [*(v1 + v9) contentOffset];
  v127 = v12;
  v14 = v13;
  result = [v1 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_81;
  }

  v15 = result;
  [result frame];
  v17 = v16;

  v18 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_containerHeight;
  swift_beginAccess();
  v19 = *(v1 + v18);
  if (v19 > 0.0)
  {
    goto LABEL_6;
  }

  result = [v1 view];
  if (!result)
  {
LABEL_81:
    __break(1u);
    return result;
  }

  v20 = result;
  [result frame];
  v19 = v21;

LABEL_6:
  v22 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_selectedLineViews;
  swift_beginAccess();
  v23 = *(v1 + v22);
  v24 = v23 & 0xFFFFFFFFFFFFFF8;
  if (v23 >> 62)
  {
    goto LABEL_72;
  }

  v126 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_8:

  v25 = 0;
  do
  {
    v26 = v25;
    if (v126 == v25)
    {
      break;
    }

    if ((v23 & 0xC000000000000001) != 0)
    {
      v27 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v25 >= *(v24 + 16))
      {
        goto LABEL_70;
      }

      v27 = *(v23 + 8 * v25 + 32);
    }

    v28 = v27;
    if (__OFADD__(v26, 1))
    {
      goto LABEL_69;
    }

    [v27 frame];
    v145.x = v29;
    v145.y = v30;
    v147.origin.x = v127;
    v147.origin.y = v14;
    v147.size.width = v17;
    v147.size.height = v19;
    v31 = CGRectContainsPoint(v147, v145);

    v25 = v26 + 1;
  }

  while (!v31);

  [*(v1 + v111) contentOffset];
  v113 = v32;
  v33 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_lineViews;
  swift_beginAccess();
  v23 = *(v1 + v33);
  if (v23 >> 62)
  {
    v24 = _CocoaArrayWrapper.endIndex.getter();
    if (v24)
    {
      goto LABEL_19;
    }
  }

  else
  {
    v24 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v24)
    {
LABEL_19:
      v34 = v1 + OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_specs;
      v118 = OBJC_IVAR____TtC7LyricsX6Lyrics_vocalistsType;
      v121 = v23 & 0xC000000000000001;

      v116 = v34;
      swift_beginAccess();
      v107 = 0;
      v132 = 0;
      v35 = 0;
      v114 = v23 & 0xFFFFFFFFFFFFFF8;
      v36 = 0uLL;
      v37 = 1;
      v112 = v14;
      v109 = _swiftEmptyArrayStorage;
      v110 = _swiftEmptyArrayStorage;
      v38 = 0uLL;
      v115 = v26;
      v119 = v24;
      v120 = v23;
      v117 = v8;
      while (1)
      {
        while (1)
        {
          while (1)
          {
            v143[0] = v36;
            v143[1] = v38;
            v144 = v37 & 1;
            if (v121)
            {
              v39 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              if (v35 >= *(v114 + 16))
              {
                goto LABEL_71;
              }

              v39 = *(v23 + 8 * v35 + 32);
            }

            v40 = v39;
            if (__OFADD__(v35, 1))
            {
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
              __break(1u);
LABEL_72:
              v126 = _CocoaArrayWrapper.endIndex.getter();
              goto LABEL_8;
            }

            v128 = v35;
            v131 = (v35 + 1);
            v23 = v1;
            v41 = v8;
            v8 = *(v8 + 40);
            v24 = OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_line;
            swift_beginAccess();
            sub_100008FE4(&v40[v24], &v137);
            v42 = v139;
            v43 = v140;
            v1 = sub_10000954C(&v137, v139);
            v44 = v43[2](v42, v43);
            if ((v44 & 0x8000000000000000) != 0)
            {
              goto LABEL_67;
            }

            if (v44 >= *(v8 + 16))
            {
              goto LABEL_68;
            }

            sub_100008FE4(v8 + 40 * v44 + 32, v142);
            sub_100CCFF98(v142, v5);
            sub_10000959C(v142);
            sub_10000959C(&v137);
            if (*(v41 + v118) || v116[88] == 1)
            {
              v45 = v5[3];
              v46 = v5[4];
              sub_10000954C(v5, v45);
              v47 = (*(v46 + 24))(v45, v46);
            }

            else
            {
              v47 = *(v116 + 10);
            }

            v48 = *(v122 + 20);
            v49 = *(v122 + 24);
            sub_100008FE4(v5, &v137);
            swift_beginAccess();
            sub_10000959C(&v40[v24]);
            sub_100059A8C(&v137, &v40[v24]);
            swift_endAccess();
            v50 = v5 + v48;
            v51 = v123;
            sub_1000089F8(v50, v123, &qword_1011BD610);
            v52 = OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_transliteratedLine;
            swift_beginAccess();
            sub_10006B010(v51, &v40[v52], &qword_1011BD610);
            swift_endAccess();
            v53 = v124;
            sub_1000089F8(v5 + v49, v124, &qword_1011BD900);
            v54 = OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_translatedLine;
            swift_beginAccess();
            sub_10006B010(v53, &v40[v54], &qword_1011BD900);
            swift_endAccess();
            *&v40[OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_alignment] = v47;
            sub_100CB5338();
            v55 = v40;
            [v55 frame];
            v57 = v56;
            v59 = v58;
            v61 = v60;
            v63 = v62;
            v1 = v23;
            sub_100CCDBA8(v55, 2, v143);
            v135 = v66;
            v136 = v67;
            v133 = v64;
            v134 = v65;
            if (v132)
            {
              v132 = 1;
              v23 = v120;
              v8 = v117;
            }

            else
            {
              v148.origin.x = v127;
              v148.origin.y = v14;
              v148.size.width = v17;
              v148.size.height = v19;
              v146.x = v57;
              v146.y = v59;
              v68 = CGRectContainsPoint(v148, v146);
              v23 = v120;
              v8 = v117;
              if (v68 && (v126 == v115 || [v55 isSelected]))
              {
                *&v149.origin.x = v133;
                *&v149.origin.y = v134;
                *&v149.size.width = v135;
                *&v149.size.height = v136;
                MinY = CGRectGetMinY(v149);
                v150.origin.x = v57;
                v150.origin.y = v59;
                v150.size.width = v61;
                v150.size.height = v63;
                *&v64 = CGRectGetMinY(v150);
                *&v66 = v135;
                *&v67 = v136;
                v11 = MinY - (*&v64 - v113);
                *&v64 = v133;
                *&v65 = v134;
                v132 = 1;
                v112 = v11;
              }

              else
              {
                v132 = 0;
                *&v66 = v135;
                *&v67 = v136;
                *&v64 = v133;
                *&v65 = v134;
              }
            }

            *(&v64 + 1) = v65;
            v130 = v64;
            *&v70 = v66;
            *(&v70 + 1) = v67;
            v129 = v70;
            v71 = swift_allocObject();
            *(v71 + 2) = v55;
            v72 = v134;
            *(v71 + 3) = v133;
            *(v71 + 4) = v72;
            v73 = v136;
            *(v71 + 5) = v135;
            *(v71 + 6) = v73;
            *(v71 + 7) = v1;
            v71[8] = v57;
            v71[9] = v59;
            v71[10] = v61;
            v71[11] = v63;
            if (v125)
            {
              break;
            }

            v74 = v1;
            sub_100CD2508(v55, v74, *&v133, *&v134, *&v135, *&v136, v57, v59, v61, v63);

            sub_100CE066C(v5, type metadata accessor for SyncedLyricsViewController.LineData);
            v37 = 0;
            v35 = (v128 + 1);
            v24 = v119;
            v38 = v129;
            v36 = v130;
            if (v131 == v119)
            {
              goto LABEL_62;
            }
          }

          v75 = v55;
          v106 = v1;
          v128 = v125;
          v151.origin.x = v57;
          v151.origin.y = v59;
          v151.size.width = v61;
          v151.size.height = v63;
          v153.origin.x = v127;
          v153.origin.y = v14;
          v153.size.width = v17;
          v153.size.height = v19;
          if (!CGRectIntersectsRect(v151, v153))
          {
            *&v152.origin.x = v133;
            *&v152.origin.y = v134;
            *&v152.size.width = v135;
            *&v152.size.height = v136;
            v154.origin.x = v127;
            v154.origin.y = v112;
            v154.size.width = v17;
            v154.size.height = v19;
            if (!CGRectIntersectsRect(v152, v154))
            {
              [v75 setHidden:1];

              v82 = swift_allocObject();
              v82[2] = v75;
              v82[3] = sub_100CE0F84;
              v82[4] = v71;
              *&v136 = v75;

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v109 = sub_100064418(0, v109[2] + 1, 1, v109);
              }

              v84 = v109[2];
              v83 = v109[3];
              if (v84 >= v83 >> 1)
              {
                v109 = sub_100064418((v83 > 1), v84 + 1, 1, v109);
              }

              v85 = v109;
              v109[2] = v84 + 1;
              v86 = &v85[2 * v84];
              v86[4] = sub_100CE0FB4;
              v86[5] = v82;
              sub_100CE066C(v5, type metadata accessor for SyncedLyricsViewController.LineData);
              goto LABEL_54;
            }
          }

          v76 = swift_allocObject();
          *(v76 + 16) = sub_100CE0F84;
          *(v76 + 24) = v71;

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v108 = v75;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v110 = sub_100064418(0, v110[2] + 1, 1, v110);
          }

          v79 = v110[2];
          v78 = v110[3];
          if (v79 >= v78 >> 1)
          {
            v110 = sub_100064418((v78 > 1), v79 + 1, 1, v110);
          }

          v80 = v110;
          v110[2] = v79 + 1;
          v81 = &v80[2 * v79];
          v81[4] = sub_100029B6C;
          v81[5] = v76;
          if (v132)
          {
            break;
          }

          sub_100CE066C(v5, type metadata accessor for SyncedLyricsViewController.LineData);

LABEL_54:
          v37 = 0;
          v24 = v119;
          v35 = v131;
          v38 = v129;
          v36 = v130;
          if (v131 == v119)
          {

            if ((v107 & 1) == 0)
            {
              goto LABEL_63;
            }

            goto LABEL_65;
          }
        }

        v87 = v108;
        if (v107)
        {
          sub_100CE066C(v5, type metadata accessor for SyncedLyricsViewController.LineData);

LABEL_59:
          v37 = 0;
          v107 = 1;
          v132 = 1;
          v24 = v119;
          v35 = v131;
          v38 = v129;
          v36 = v130;
          if (v131 == v119)
          {

LABEL_65:
            v91 = v106;
            v92 = *(v106 + OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_lineUpdateAnimator);
            *(v106 + OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_lineUpdateAnimator) = v125;
            v93 = v128;

            v94 = swift_allocObject();
            *(v94 + 16) = v110;
            *(v94 + 24) = v91;
            *(v94 + 32) = v11;
            v140 = sub_100CE0FA0;
            v141 = v94;
            *&v137 = _NSConcreteStackBlock;
            *(&v137 + 1) = 1107296256;
            v138 = sub_10002BC98;
            v139 = &unk_1010F8A68;
            v95 = _Block_copy(&v137);
            v96 = v91;

            [v93 addAnimations:v95];
            _Block_release(v95);
            v97 = swift_allocObject();
            *(v97 + 16) = v109;
            *(v97 + 24) = v96;
            v140 = sub_100CE0FAC;
            v141 = v97;
            *&v137 = _NSConcreteStackBlock;
            *(&v137 + 1) = 1107296256;
            v138 = sub_100338AB8;
            v139 = &unk_1010F8AB8;
            v98 = _Block_copy(&v137);
            v99 = v96;

            [v93 addCompletion:v98];
            _Block_release(v98);
            [v93 startAnimation];
          }
        }

        else
        {

          v88 = vabdd_f64(v63, *&v136);
          sub_100CE066C(v5, type metadata accessor for SyncedLyricsViewController.LineData);
          if (v88 > 1.0)
          {
            goto LABEL_59;
          }

          v107 = 0;
          v37 = 0;
          v132 = 1;
          v24 = v119;
          v35 = v131;
          v38 = v129;
          v36 = v130;
          if (v131 == v119)
          {
LABEL_62:

LABEL_63:
            v89 = v109;
            v90 = v110;
            goto LABEL_75;
          }
        }
      }
    }
  }

  v90 = _swiftEmptyArrayStorage;
  v89 = _swiftEmptyArrayStorage;
LABEL_75:
  v100 = *(v1 + v111);
  [v100 contentOffset];
  [v100 setContentOffset:?];

  *&v137 = v90;
  sub_100C6DE24(v89);
  v101 = *(v137 + 16);
  if (v101)
  {
    v102 = v137 + 40;
    do
    {
      v103 = *(v102 - 8);

      v103(v104);

      v102 += 16;
      --v101;
    }

    while (v101);
  }
}

void sub_100CD2508(void *a1, uint64_t a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, double a7, double a8, double a9, double a10)
{
  UIView.untransformedFrame.setter(a3, a4, a5, a6);
  v16 = *(a2 + OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_timestampLabel);
  if (v16)
  {
    v17 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsTimestampLabel_line;
    swift_beginAccess();
    sub_1000089F8(v16 + v17, v39, &qword_1011BBB10);
    v18 = v40;
    if (v40)
    {
      v19 = v41;
      sub_10000954C(v39, v40);
      v20 = *(v18 - 8);
      v21 = __chkstk_darwin();
      v23 = &v38[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
      (*(v20 + 16))(v23, v21);
      sub_1000095E8(v39, &qword_1011BBB10);
      v24 = (*(v19 + 16))(v18, v19);
      (*(v20 + 8))(v23, v18);
      v25 = 0;
      goto LABEL_6;
    }

    sub_1000095E8(v39, &qword_1011BBB10);
  }

  v24 = 0;
  v25 = 1;
LABEL_6:
  v26 = OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_line;
  swift_beginAccess();
  sub_100008FE4(a1 + v26, v39);
  v27 = v40;
  v28 = v41;
  sub_10000954C(v39, v40);
  v29 = (*(v28 + 16))(v27, v28);
  if (v25)
  {
    sub_10000959C(v39);
  }

  else
  {
    v30 = v29;
    sub_10000959C(v39);
    if (v24 == v30)
    {
      sub_100CCFCE4();
    }
  }

  v31 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_lineViews;
  swift_beginAccess();
  v32 = *(a2 + v31);
  if (v32 >> 62)
  {
    v33 = _CocoaArrayWrapper.endIndex.getter();
    if (!v33)
    {
      return;
    }
  }

  else
  {
    v33 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v33)
    {
      return;
    }
  }

  v34 = v33 - 1;
  if (__OFSUB__(v33, 1))
  {
    __break(1u);
  }

  else if ((v32 & 0xC000000000000001) == 0)
  {
    if ((v34 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v34 < *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v35 = *(v32 + 8 * v34 + 32);
      goto LABEL_17;
    }

    __break(1u);
    return;
  }

  v35 = specialized _ArrayBuffer._getElementSlowPath(_:)();

LABEL_17:
  type metadata accessor for SyncedLyricsLineView();
  v36 = a1;
  v37 = static NSObject.== infix(_:_:)();

  if (v37)
  {
    *v39 = a7;
    *&v39[1] = a8;
    *&v39[2] = a9;
    v40 = *&a10;
    LOBYTE(v41) = 0;
    sub_100CCF174(v36, v39);
  }
}

void sub_100CD2864(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = a1 + 40;
    do
    {
      v5 = *(v4 - 8);

      v5(v6);

      v4 += 16;
      --v3;
    }

    while (v3);
  }

  v7 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_scrollView;
  swift_beginAccess();
  v8 = *(a2 + v7);
  [v8 contentOffset];
  [v8 setContentOffset:?];
}

void sub_100CD2928(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a2 + 16);
  if (v4)
  {
    v5 = a2 + 40;
    do
    {
      v6 = *(v5 - 8);

      v6(v7);

      v5 += 16;
      --v4;
    }

    while (v4);
  }

  v8 = *(a3 + OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_lineUpdateAnimator);
  *(a3 + OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_lineUpdateAnimator) = 0;
}

Swift::Void __swiftcall SyncedLyricsViewController.enterTrackingMode()()
{
  v1 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_mode;
  swift_beginAccess();
  if (*(v0 + v1) != 2)
  {
    sub_100CD4E68();
    *(v0 + v1) = 2;
  }
}

Swift::Void __swiftcall SyncedLyricsViewController.leaveTrackingMode()()
{
  v1 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_mode;
  swift_beginAccess();
  if (*(v0 + v1) == 2)
  {
    sub_100CD3AEC(0);
    *(v0 + v1) = 0;
  }
}

uint64_t sub_100CD2A5C()
{
  v1 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_lyrics;
  swift_beginAccess();
  if (!*(v0 + v1) || (*(v0 + OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_isBackgrounded) & 1) != 0)
  {
    return 1;
  }

  v3 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_timingProvider;
  swift_beginAccess();
  sub_1000089F8(v0 + v3, &v8, &qword_1011BD4B8);
  if (v9)
  {
    sub_100059A8C(&v8, v10);
    v4 = v11;
    v5 = v12;
    sub_10000954C(v10, v11);
    if ((*(v5 + 16))(v4, v5))
    {
      v6 = 1;
    }

    else
    {
      v7 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_mode;
      swift_beginAccess();
      v6 = *(v0 + v7) == 2;
    }

    sub_10000959C(v10);
    return v6;
  }

  else
  {
    sub_1000095E8(&v8, &qword_1011BD4B8);
    return 1;
  }
}

void *sub_100CD2BA4()
{
  v1 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_scrollView;
  swift_beginAccess();
  [*&v0[v1] contentOffset];
  v3 = v2;
  v5 = v4;
  result = [v0 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_23;
  }

  v7 = result;
  [result frame];
  v9 = v8;

  v10 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_containerHeight;
  swift_beginAccess();
  v11 = *&v0[v10];
  if (v11 <= 0.0)
  {
    result = [v0 view];
    if (result)
    {
      v12 = result;
      [result frame];
      v11 = v13;

      goto LABEL_5;
    }

LABEL_23:
    __break(1u);
    return result;
  }

LABEL_5:
  v14 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_lineViews;
  swift_beginAccess();
  v15 = *&v0[v14];
  if (v15 >> 62)
  {
    goto LABEL_21;
  }

  for (i = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {

    if (!i)
    {
      break;
    }

    v17 = 0;
    while (1)
    {
      if ((v15 & 0xC000000000000001) != 0)
      {
        v18 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v17 >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_20;
        }

        v18 = *(v15 + 8 * v17 + 32);
      }

      v19 = v18;
      v20 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      [v18 frame];
      v22.origin.x = v3;
      v22.origin.y = v5;
      v22.size.width = v9;
      v22.size.height = v11;
      if (CGRectIntersectsRect(v21, v22))
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      else
      {
      }

      ++v17;
      if (v20 == i)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    ;
  }

LABEL_18:

  return _swiftEmptyArrayStorage;
}

uint64_t sub_100CD2DF4(void *a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v6 = v5;
  v11 = a1[3];
  v12 = a1[4];
  sub_10000954C(a1, v11);
  v35 = v11;
  v34 = *(v12 + 16);
  v13 = v34(v11, v12);
  v14 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_lineViews;
  swift_beginAccess();
  v15 = 0;
  v16 = v13 == 0;
  if (v13 <= 0)
  {
    goto LABEL_3;
  }

LABEL_2:
  for (i = v13 - 1; ; i = 0)
  {
    v19 = *(v6 + v14);
    if ((v19 & 0xC000000000000001) != 0)
    {

      v20 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v13 >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_41;
      }

      v20 = *(v19 + 8 * v13 + 32);
    }

    [v20 frame];
    v38.origin.x = a2;
    v38.origin.y = a3;
    v38.size.width = a4;
    v38.size.height = a5;
    if (!CGRectIntersectsRect(v36, v38))
    {
      break;
    }

    v21 = v20;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

    v13 = i;
    v16 = i == 0;
    if (i > 0)
    {
      goto LABEL_2;
    }

LABEL_3:
    v18 = !v16;
    if ((v18 | v15))
    {
      goto LABEL_18;
    }

    v15 = 1;
  }

LABEL_18:
  v22 = v34(v35, v12);
  v13 = v22 + 1;
  if (__OFADD__(v22, 1))
  {
    goto LABEL_43;
  }

  v23 = *(v6 + v14);
  if (v23 >> 62)
  {
    goto LABEL_44;
  }

  result = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v25 = result - 1;
  if (__OFSUB__(result, 1))
  {
    goto LABEL_46;
  }

  while (2)
  {
    v26 = 0;
    v27 = v13 == v25;
    if (v13 < v25)
    {
LABEL_22:
      v28 = v13 + 1;
      goto LABEL_28;
    }

    while (1)
    {
      v29 = !v27;
      if ((v29 | v26))
      {
        goto LABEL_39;
      }

      v26 = 1;
      v28 = v25;
LABEL_28:
      v30 = *(v6 + v14);
      if ((v30 & 0xC000000000000001) != 0)
      {

        v31 = specialized _ArrayBuffer._getElementSlowPath(_:)();

        goto LABEL_32;
      }

      if (v13 < 0)
      {
        break;
      }

      if (v13 >= *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_42;
      }

      v31 = *(v30 + 8 * v13 + 32);
LABEL_32:
      [v31 frame];
      v39.origin.x = a2;
      v39.origin.y = a3;
      v39.size.width = a4;
      v39.size.height = a5;
      if (!CGRectIntersectsRect(v37, v39))
      {

LABEL_39:
        swift_getKeyPath();
        sub_10010FC20(&qword_1011BD8F0);
        sub_100029908(&qword_1011BD8F8, &qword_1011BD8F0);
        v33 = Sequence.sorted<A>(by:comparator:)();

        return v33;
      }

      v32 = v31;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      v13 = v28;
      v27 = v28 == v25;
      if (v28 < v25)
      {
        goto LABEL_22;
      }
    }

LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    result = _CocoaArrayWrapper.endIndex.getter();
    v25 = result - 1;
    if (!__OFSUB__(result, 1))
    {
      continue;
    }

    break;
  }

LABEL_46:
  __break(1u);
  return result;
}

uint64_t sub_100CD31E0(uint64_t a1, uint64_t *a2)
{
  sub_100008FE4(a1, v6);
  v3 = *a2;
  v4 = OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_line;
  swift_beginAccess();
  sub_10000959C(v3 + v4);
  sub_100059A8C(v6, v3 + v4);
  return swift_endAccess();
}

double sub_100CD3250(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  v9 = v4 + OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_specs;
  swift_beginAccess();
  v10 = *(v9 + 48);
  if (v10 < 0)
  {
    v12 = *(v9 + 16);
    v13 = *(v9 + 24);
    v15 = *(v9 + 32);
    v14 = *(v9 + 40);
    if (v10)
    {
      v16 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_scrollView;
      swift_beginAccess();
      [*(v4 + v16) frame];
    }

    else
    {
      v17 = v12;
      v18 = v13;
      v19 = v15;
      v20 = v14;
    }

    CGRectGetHeight(*&v17);
    v23.origin.x = a1;
    v23.origin.y = a2;
    v23.size.width = a3;
    v23.size.height = a4;
    CGRectGetHeight(v23);
    v24.origin.x = a1;
    v24.origin.y = a2;
    v24.size.width = a3;
    v24.size.height = a4;
    CGRectGetMinY(v24);
    if ((v10 & 1) == 0)
    {
      v25.origin.x = v12;
      v25.origin.y = v13;
      v25.size.width = v15;
      v25.size.height = v14;
      CGRectGetMinY(v25);
    }
  }

  else
  {
    v22.origin.x = a1;
    v22.origin.y = a2;
    v22.size.width = a3;
    v22.size.height = a4;
    CGRectGetMinY(v22);
    v11 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_scrollView;
    swift_beginAccess();
    [*(v4 + v11) contentInset];
  }

  return 0.0;
}

void sub_100CD33DC(void *a1, void *a2, char a3, char a4)
{
  v5 = v4;
  v9 = a1[3];
  v10 = a1[4];
  sub_10000954C(a1, v9);
  v11 = (*(v10 + 16))(v9, v10);
  v12 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_lineViews;
  swift_beginAccess();
  v13 = *(v5 + v12);
  if ((v13 & 0xC000000000000001) != 0)
  {

    v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();

    v15 = off_1011BD000;
    if ((a3 & 1) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_5;
  }

  if ((v11 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_33;
  }

  if (v11 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_33:
    __break(1u);
LABEL_34:
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
LABEL_29:
    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    swift_endAccess();
    __chkstk_darwin();
    sub_100CDC7A0(sub_100CE0DD8);

    return;
  }

  v14 = *(v13 + 8 * v11 + 32);
  v15 = off_1011BD000;
  if ((a3 & 1) == 0)
  {
LABEL_17:
    sub_100CB43DC(1, a2);
    sub_100CCBCA8(v14, a2 != 0);
    v22 = *&v14[OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_contentView];
    if (v22)
    {
      _s23InstrumentalContentViewCMa();
      if (swift_dynamicCastClass())
      {
        v23 = *(v5 + OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_instrumentalBreakVisibleView);
        *(v5 + OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_instrumentalBreakVisibleView) = v14;
        v24 = v22;
        v25 = v14;

        if (a4)
        {
          v26 = *(v5 + OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_manager);
          v27 = 0.0;
          if (v26)
          {
            swift_beginAccess();
            v28 = *(v26 + 96);
            if (v28)
            {

              v29 = sub_100030444(v28);
              v30 = v28(v29);
              swift_beginAccess();
              if (*(v26 + 88) == 1)
              {
                v31 = Lyrics.spatialOffset.getter();
                sub_100020438(v28);
              }

              else
              {

                sub_100020438(v28);
                v31 = 0.0;
              }

              v27 = v30 - v31;
            }
          }

          sub_100CAA86C(v27);
        }
      }
    }

    sub_100CD4D24(v14, 1, 0.0);
    v32 = v15[174];
    swift_beginAccess();
    v9 = v14;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((*(v32 + v5) & 0xFFFFFFFFFFFFFF8) + 0x10) < *((*(v32 + v5) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      goto LABEL_29;
    }

    goto LABEL_34;
  }

LABEL_5:
  v33 = a4;
  v16 = v15[174];
  swift_beginAccess();
  v17 = *(v16 + v5);
  if (!(v17 >> 62))
  {
    v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v18)
    {
      goto LABEL_7;
    }

LABEL_16:
    *(v16 + v5) = _swiftEmptyArrayStorage;

    a4 = v33;
    goto LABEL_17;
  }

  v18 = _CocoaArrayWrapper.endIndex.getter();
  if (!v18)
  {
    goto LABEL_16;
  }

LABEL_7:
  type metadata accessor for SyncedLyricsLineView();
  if (v18 >= 1)
  {

    for (i = 0; i != v18; ++i)
    {
      if ((v17 & 0xC000000000000001) != 0)
      {
        v20 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v20 = *(v17 + 8 * i + 32);
      }

      v21 = v20;
      if ((static NSObject.== infix(_:_:)() & 1) == 0)
      {
        sub_100CB43DC(0, a2);
      }
    }

    v15 = off_1011BD000;
    goto LABEL_16;
  }

  __break(1u);
}

uint64_t sub_100CD3808()
{
  _StringGuts.grow(_:)(37);
  v0._object = 0x8000000100E6BA70;
  v0._countAndFlagsBits = 0xD000000000000023;
  String.append(_:)(v0);
  sub_10010FC20(&qword_1011BBB08);
  _print_unlocked<A, B>(_:_:)();
  return 0;
}

id sub_100CD38A4(uint64_t a1, char a2)
{
  v5 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_lyrics;
  swift_beginAccess();
  v6 = *(v2 + v5);
  if (v6 && *(v6 + 56) == 2)
  {
    v7 = (v2 + OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_specs);
    swift_beginAccess();
    if (a2)
    {
      return [objc_allocWithZone(UISpringTimingParameters) initWithMass:v7[83] stiffness:v7[84] damping:v7[85] initialVelocity:{0.0, 0.0}];
    }

    else
    {
      v10 = 0.75;
      if (*&a1 <= 0.75)
      {
        v10 = *&a1;
      }

      v11 = (v10 + -0.2) / 0.55;
      v12 = 0.0;
      if (*&a1 >= 0.2)
      {
        v12 = v11;
      }

      v13 = (1.0 - v12) * 0.12 + 0.78;
      v14 = v12 * 0.27 + 0.48;
      sub_100009F78(0, &qword_1011BD330);
      return UISpringTimingParameters.init(dampingRatio:response:)(v13, v14);
    }
  }

  else
  {
    v9 = (v2 + OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_specs);
    swift_beginAccess();
    return [objc_allocWithZone(UISpringTimingParameters) initWithMass:v9[83] stiffness:v9[84] damping:v9[85] initialVelocity:{0.0, 0.0}];
  }
}

uint64_t sub_100CD3A6C()
{
  v0 = type metadata accessor for Logger();
  sub_100006080(v0, qword_1011BD450);
  sub_1000060E4(v0, qword_1011BD450);
  return Logger.init(subsystem:category:)();
}

void sub_100CD3AEC(unint64_t a1)
{
  v2 = v1;
  v4 = [v1 traitCollection];
  v5 = [v4 accessibilityContrast];

  v140 = v2;
  if (v5 == 1)
  {
    v6 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_blurredLineViews;
    swift_beginAccess();
    v7 = *(v2 + v6);
    if ((v7 & 0xC000000000000001) != 0)
    {

      __CocoaSet.makeIterator()();
      type metadata accessor for SyncedLyricsLineView();
      sub_1000298C0(&unk_1011BD940, type metadata accessor for SyncedLyricsLineView);
      Set.Iterator.init(_cocoa:)();
      v7 = v152;
      v8 = v153;
      v9 = v154;
      v2 = v155;
      v10 = v156;
    }

    else
    {
      v54 = -1 << *(v7 + 32);
      v8 = v7 + 56;
      v9 = ~v54;
      v55 = -v54;
      if (v55 < 64)
      {
        v56 = ~(-1 << v55);
      }

      else
      {
        v56 = -1;
      }

      v10 = v56 & *(v7 + 56);

      v2 = 0;
    }

    v57 = (v9 + 64) >> 6;
    while (1)
    {
      if ((v7 & 0x8000000000000000) != 0)
      {
        v62 = __CocoaSet.Iterator.next()();
        if (!v62)
        {
          goto LABEL_75;
        }

        v151 = v62;
        type metadata accessor for SyncedLyricsLineView();
        swift_dynamicCast();
        v61 = v142;
        v11 = v2;
        v9 = v10;
        if (!v142)
        {
          goto LABEL_75;
        }
      }

      else
      {
        v59 = v2;
        v60 = v10;
        v11 = v2;
        if (!v10)
        {
          while (1)
          {
            v11 = v59 + 1;
            if (__OFADD__(v59, 1))
            {
              __break(1u);
LABEL_98:
              __break(1u);
LABEL_99:
              __break(1u);
LABEL_100:
              __break(1u);
              goto LABEL_101;
            }

            if (v11 >= v57)
            {
              break;
            }

            v60 = *(v8 + 8 * v11);
            ++v59;
            if (v60)
            {
              goto LABEL_69;
            }
          }

LABEL_75:
          sub_10005C9F8();
          return;
        }

LABEL_69:
        v9 = (v60 - 1) & v60;
        v61 = *(*(v7 + 48) + ((v11 << 9) | (8 * __clz(__rbit64(v60)))));
        if (!v61)
        {
          goto LABEL_75;
        }
      }

      v63 = &v140[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_specs];
      swift_beginAccess();
      if (v63[657] == 1)
      {
        v64 = [v140 traitCollection];
        [v64 accessibilityContrast];
      }

      sub_100CB4888(0, 0.0);
      swift_beginAccess();
      v58 = sub_100C81D0C(v61);
      swift_endAccess();

      v2 = v11;
      v10 = v9;
    }
  }

  v9 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_mode;
  swift_beginAccess();
  if (*(v2 + v9) == 1)
  {
    return;
  }

  if (a1)
  {
    v150 = a1;
    v7 = a1;
    goto LABEL_7;
  }

  v65 = *(v2 + OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_manager);
  if (!v65 || (swift_beginAccess(), v66 = *(v65 + 80), !*(v66 + 16)))
  {
    v82 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_lineViews;
    swift_beginAccess();
    v83 = *(v2 + v82);
    if (v83 >> 62)
    {
      goto LABEL_142;
    }

    if (*((v83 & 0xFFFFFFFFFFFFFF8) + 0x10) < 1)
    {
      return;
    }

    goto LABEL_87;
  }

  sub_100008FE4(v66 + 32, &v152);
  v67 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_scrollView;
  swift_beginAccess();
  [*(v2 + v67) contentOffset];
  v69 = v68;
  v71 = v70;
  v9 = &selRef_trackNumber;
  v72 = [v2 view];
  if (!v72)
  {
    goto LABEL_148;
  }

  v73 = v72;
  [v72 frame];
  v75 = v74;

  v76 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_containerHeight;
  swift_beginAccess();
  v77 = *(v2 + v76);
  if (v77 <= 0.0)
  {
    v78 = [v2 view];
    if (!v78)
    {
      goto LABEL_150;
    }

    v79 = v78;
    [v78 frame];
    v81 = v80;

    v77 = v81;
  }

  v7 = sub_100CD2DF4(&v152, v69, v71, v75, v77);
  sub_10000959C(&v152);
  v150 = v7;
  while (1)
  {
LABEL_7:
    v8 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_blurredLineViews;
    swift_beginAccess();
    v11 = *(v2 + v8);
    v149 = v11;
    if (!(v7 >> 62))
    {
      v12 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v12)
      {
        goto LABEL_9;
      }

      goto LABEL_102;
    }

LABEL_101:
    v12 = _CocoaArrayWrapper.endIndex.getter();
    if (v12)
    {
LABEL_9:
      if (v12 < 1)
      {
LABEL_138:
        __break(1u);
        goto LABEL_139;
      }

      v13 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_manager;
      v14 = v2 + OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_specs;

      v137 = v14;
      swift_beginAccess();
      v15 = 0;
      v134 = v13;
      v135 = v12;
      while (1)
      {
        if ((v7 & 0xC000000000000001) != 0)
        {
          v18 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v18 = *(v7 + 8 * v15 + 32);
        }

        v19 = v18;
        v20 = *(v2 + v13);
        if (v20)
        {
          swift_beginAccess();
          v9 = *(v20 + 80);
          if (*(v9 + 16))
          {
            sub_100008FE4(v9 + 32, &v152);
            v21 = *(v9 + 16);
            if (v21)
            {
              sub_100008FE4(v9 + 32 + 40 * v21 - 40, &v146);
              v2 = OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_line;
              swift_beginAccess();
              sub_100008FE4(v19 + v2, v143);
              sub_10010FC20(&qword_1011BBB08);
              if (swift_dynamicCast())
              {

                v22 = v147;
                v23 = v148;
                sub_10000954C(&v146, v147);
                v11 = (*(v23 + 16))(v22, v23);
                sub_100008FE4(v19 + v2, v143);
                v24 = v144;
                v25 = v145;
                sub_10000954C(v143, v144);
                v26 = (*(v25 + 16))(v24, v25);
                v9 = v26 - 1;
                if (__OFSUB__(v26, 1))
                {
                  goto LABEL_99;
                }

                sub_10000959C(v143);
                if (v11 == v9)
                {
                  v2 = v140;
                  if (*(v137 + 657) == 1)
                  {
                    v27 = [v140 traitCollection];
                    [v27 accessibilityContrast];
                  }

                  sub_100CB4888(1, 0.0);
                  swift_beginAccess();
                  v16 = sub_100C81D0C(v19);
                  swift_endAccess();

                  v13 = v134;
                  v12 = v135;
                  goto LABEL_12;
                }
              }

              sub_100008FE4(v19 + v2, v143);
              v28 = v144;
              v29 = v145;
              sub_10000954C(v143, v144);
              v30 = (*(v29 + 16))(v28, v29);
              v31 = v147;
              v32 = v148;
              sub_10000954C(&v146, v147);
              v33 = (*(v32 + 16))(v31, v32);
              sub_10000959C(v143);
              v34 = v19 + v2;
              if (v33 >= v30)
              {
                sub_100008FE4(v34, v143);
                v45 = v144;
                v46 = v145;
                sub_10000954C(v143, v144);
                v11 = (*(v46 + 16))(v45, v46);
                v47 = v155;
                v48 = v156;
                sub_10000954C(&v152, v155);
                v49 = (*(v48 + 16))(v47, v48);
                sub_10000959C(v143);
                if (v11 >= v49)
                {
                  v2 = v140;
                  v13 = v134;
                  v12 = v135;
                  if (*(v137 + 657))
                  {
                    v51 = [v140 traitCollection];
                    [v51 accessibilityContrast];
                  }

                  sub_100CB4888(1, 0.0);
                  goto LABEL_56;
                }

                v2 = v140;
                v13 = v134;
                v12 = v135;
                if (!*(v137 + 657))
                {
                  goto LABEL_12;
                }

                v50 = [v140 traitCollection];
                v11 = [v50 accessibilityContrast];

                if (v11 == 1)
                {
                  goto LABEL_12;
                }

                sub_100CB4888(1, 3.0);
              }

              else
              {
                sub_100008FE4(v34, v143);
                v35 = v144;
                v36 = v145;
                sub_10000954C(v143, v144);
                v11 = (*(v36 + 16))(v35, v36);
                v37 = v147;
                v38 = v148;
                sub_10000954C(&v146, v147);
                v39 = (*(v38 + 16))(v37, v38);
                v9 = v11 - v39;
                if (__OFSUB__(v11, v39))
                {
                  goto LABEL_100;
                }

                sub_10000959C(v143);
                v40 = v9 + 1.0;
                if (*(v137 + 657) == 1)
                {
                  v2 = v140;
                  v41 = [v140 traitCollection];
                  v11 = [v41 accessibilityContrast];

                  v13 = v134;
                  v12 = v135;
                  if (v11 != 1 || v40 <= 0.0)
                  {
                    goto LABEL_52;
                  }

LABEL_12:
                  sub_10000959C(&v146);
                  sub_10000959C(&v152);
                  goto LABEL_13;
                }

                v2 = v140;
                v13 = v134;
                v12 = v135;
                if (v40 > 0.0)
                {
                  goto LABEL_12;
                }

LABEL_52:
                if (v40 <= 4.0)
                {
                  v52 = v9 + 1.0;
                }

                else
                {
                  v52 = 4.0;
                }

                sub_100CB4888(1, v52);
                if (v40 == 0.0)
                {
LABEL_56:
                  swift_beginAccess();
                  v53 = sub_100C81D0C(v19);
                  swift_endAccess();

                  goto LABEL_12;
                }
              }

              swift_beginAccess();
              sub_100C7F89C(&v142, v19);
              v9 = v142;
              swift_endAccess();

              goto LABEL_12;
            }

            sub_10000959C(&v152);
          }
        }

        v9 = v15 + 3;
        if (__OFADD__(v15, 3))
        {
          goto LABEL_98;
        }

        if (*(v137 + 657) == 1)
        {
          v42 = [v2 traitCollection];
          v11 = [v42 accessibilityContrast];

          if (v11 != 1 || v9 <= 0)
          {
LABEL_41:
            v44 = v9;
            if (v9 > 4.0)
            {
              v44 = 4.0;
            }

            sub_100CB4888(1, v44);
            swift_beginAccess();
            sub_100C7F89C(&v146, v19);
            v9 = v146;
            swift_endAccess();
          }
        }

        else if (v9 <= 0)
        {
          goto LABEL_41;
        }

LABEL_13:
        ++v15;
        v17 = sub_100C81D0C(v19);

        if (v12 == v15)
        {

          v11 = v149;
          goto LABEL_103;
        }
      }
    }

LABEL_102:

LABEL_103:
    v136 = v8;
    if ((v11 & 0xC000000000000001) != 0)
    {
      __CocoaSet.makeIterator()();
      type metadata accessor for SyncedLyricsLineView();
      sub_1000298C0(&unk_1011BD940, type metadata accessor for SyncedLyricsLineView);
      Set.Iterator.init(_cocoa:)();
      v11 = v152;
      v101 = v153;
      v102 = v154;
      v103 = v155;
      v104 = v156;
    }

    else
    {
      v103 = 0;
      v105 = -1 << *(v11 + 32);
      v101 = v11 + 56;
      v102 = ~v105;
      v106 = -v105;
      v107 = v106 < 64 ? ~(-1 << v106) : -1;
      v104 = v107 & *(v11 + 56);
    }

    v108 = (v102 + 64) >> 6;
    while (v11 < 0)
    {
      v114 = __CocoaSet.Iterator.next()();
      if (!v114)
      {
        goto LABEL_122;
      }

      v143[0] = v114;
      type metadata accessor for SyncedLyricsLineView();
      swift_dynamicCast();
      v113 = v146;
      v2 = v103;
      v112 = v104;
      if (!v146)
      {
        goto LABEL_122;
      }

LABEL_120:
      v9 = v140;
      v115 = &v140[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_specs];
      swift_beginAccess();
      if (v115[657] == 1)
      {
        v116 = [v140 traitCollection];
        [v116 accessibilityContrast];
      }

      sub_100CB4888(0, 0.0);
      swift_beginAccess();
      v109 = sub_100C81D0C(v113);
      swift_endAccess();

      v103 = v2;
      v104 = v112;
    }

    v110 = v103;
    v111 = v104;
    v2 = v103;
    if (!v104)
    {
      while (1)
      {
        v2 = v110 + 1;
        if (__OFADD__(v110, 1))
        {
          break;
        }

        if (v2 >= v108)
        {
          goto LABEL_122;
        }

        v111 = *(v101 + 8 * v2);
        ++v110;
        if (v111)
        {
          goto LABEL_116;
        }
      }

      __break(1u);
      goto LABEL_138;
    }

LABEL_116:
    v112 = (v111 - 1) & v111;
    v113 = *(*(v11 + 48) + ((v2 << 9) | (8 * __clz(__rbit64(v111)))));
    if (v113)
    {
      goto LABEL_120;
    }

LABEL_122:
    sub_10005C9F8();
    v117 = *&v140[v136];
    if ((v117 & 0xC000000000000001) != 0)
    {

      v118 = __CocoaSet.count.getter();

      if (v118 < 1)
      {
        return;
      }
    }

    else if (*(v117 + 16) < 1)
    {
      return;
    }

    v119 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_lineViews;
    swift_beginAccess();
    v9 = *&v140[v119];
    if (!(v9 >> 62))
    {
      v82 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v82)
      {
        return;
      }

      goto LABEL_128;
    }

LABEL_139:
    v82 = _CocoaArrayWrapper.endIndex.getter();
    if (!v82)
    {
      return;
    }

LABEL_128:
    if (v82 >= 1)
    {
      v141 = (v9 & 0xC000000000000001);

      v120 = 0;
      v138 = v82;
      v139 = v9;
      do
      {
        if (v141)
        {
          v121 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v121 = *(v9 + 8 * v120 + 32);
        }

        v122 = v121;
        v123 = OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_isScrolling;
        v121[OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_isScrolling] = 0;
        v125 = sub_100CB3680(&v146);
        v126 = *v124;
        if (*v124)
        {
          v127 = v122[v123];
          v128 = *(v124 + 8);
          v129 = v124;
          ObjectType = swift_getObjectType();
          v131 = *(v128 + 40);
          v132 = v126;
          v131(v127, ObjectType, v128);
          v133 = *v129;
          *v129 = v126;
          *(v129 + 8) = v128;
          v82 = v138;
          v9 = v139;
        }

        v125(&v146, 0);
        ++v120;
      }

      while (v82 != v120);

      return;
    }

    __break(1u);
LABEL_142:
    if (_CocoaArrayWrapper.endIndex.getter() < 1)
    {
      break;
    }

LABEL_87:
    v84 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_scrollView;
    swift_beginAccess();
    [*(v2 + v84) contentOffset];
    v86 = v85;
    v88 = v87;
    v89 = [v2 view];
    if (!v89)
    {
      goto LABEL_149;
    }

    v90 = v89;
    [v89 frame];
    v92 = v91;

    v93 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_containerHeight;
    swift_beginAccess();
    v94 = *(v2 + v93);
    if (v94 <= 0.0)
    {
      v95 = [v2 view];
      if (!v95)
      {
        goto LABEL_151;
      }

      v96 = v95;
      [v95 frame];
      v94 = v97;
    }

    v98 = *(v2 + v82);
    if ((v98 & 0xC000000000000001) != 0)
    {

      v99 = specialized _ArrayBuffer._getElementSlowPath(_:)();

      goto LABEL_94;
    }

    if (!*((v98 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
LABEL_148:
      __break(1u);
LABEL_149:
      __break(1u);
LABEL_150:
      __break(1u);
LABEL_151:
      __break(1u);
      return;
    }

    v99 = *(v98 + 32);
LABEL_94:
    v9 = OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_line;
    swift_beginAccess();
    sub_100008FE4(v99 + v9, &v152);

    v7 = sub_100CD2DF4(&v152, v86, v88, v92, v94);
    sub_10000959C(&v152);
    v150 = v7;
    if (v7 >> 62)
    {
      if (_CocoaArrayWrapper.endIndex.getter() >= 1)
      {
LABEL_96:
        sub_100CD4C38();

        v7 = v150;
      }
    }

    else if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 1)
    {
      goto LABEL_96;
    }
  }
}

void sub_100CD4C38()
{
  v1 = *v0;
  v2 = *v0 >> 62;
  if (!v2)
  {
    if (*((*v0 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

    goto LABEL_10;
  }

  if (_CocoaArrayWrapper.endIndex.getter())
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
LABEL_3:
      if ((v1 & 0xC000000000000001) == 0)
      {
        if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_16:
          __break(1u);
          goto LABEL_17;
        }

        *(v1 + 32);
        if (!v2)
        {
          goto LABEL_6;
        }

        goto LABEL_12;
      }

LABEL_11:
      specialized _ArrayBuffer._getElementSlowPath(_:)();
      if (!v2)
      {
LABEL_6:
        v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
        goto LABEL_13;
      }

LABEL_12:
      v3 = _CocoaArrayWrapper.endIndex.getter();
LABEL_13:
      if (v3)
      {
        sub_100CDCA1C(0, 1, sub_100CDC91C);
        return;
      }

      goto LABEL_16;
    }

    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

LABEL_17:
  __break(1u);
}

void sub_100CD4D24(void *a1, char a2, double a3)
{
  v4 = v3;
  v8 = &v4[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_specs];
  swift_beginAccess();
  if (v8[657] == 1 && (v9 = [v4 traitCollection], v10 = objc_msgSend(v9, "accessibilityContrast"), v9, v10 != 1) || a3 <= 0.0)
  {
    v11 = 4.0;
    if (a3 <= 4.0)
    {
      v11 = a3;
    }

    sub_100CB4888(a2 & 1, v11);
    swift_beginAccess();
    if (a3 == 0.0)
    {
      v12 = sub_100C81D0C(a1);
    }

    else
    {
      sub_100C7F89C(&v13, a1);
      v12 = v13;
    }

    swift_endAccess();
  }
}

uint64_t sub_100CD4E68()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_blurredLineViews;
  swift_beginAccess();
  v3 = *(v1 + v2);
  if ((v3 & 0xC000000000000001) != 0)
  {

    __CocoaSet.makeIterator()();
    type metadata accessor for SyncedLyricsLineView();
    sub_1000298C0(&unk_1011BD940, type metadata accessor for SyncedLyricsLineView);
    Set.Iterator.init(_cocoa:)();
    v3 = v41[10];
    v4 = v41[11];
    v5 = v41[12];
    v6 = v41[13];
    v7 = v41[14];
  }

  else
  {
    v8 = -1 << *(v3 + 32);
    v4 = v3 + 56;
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

    v7 = v10 & *(v3 + 56);

    v6 = 0;
  }

  v11 = (v5 + 64) >> 6;
  while (v3 < 0)
  {
    v18 = __CocoaSet.Iterator.next()();
    if (!v18)
    {
      goto LABEL_20;
    }

    v41[4] = v18;
    type metadata accessor for SyncedLyricsLineView();
    swift_dynamicCast();
    v17 = v41[0];
    v15 = v6;
    v16 = v7;
    if (!v41[0])
    {
      goto LABEL_20;
    }

LABEL_18:
    v19 = (v1 + OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_specs);
    swift_beginAccess();
    if (v19[657] == 1)
    {
      v20 = [v1 traitCollection];
      [v20 accessibilityContrast];
    }

    sub_100CB4888(1, 0.0);
    swift_beginAccess();
    v12 = sub_100C81D0C(v17);
    swift_endAccess();

    v6 = v15;
    v7 = v16;
  }

  v13 = v6;
  v14 = v7;
  v15 = v6;
  if (!v7)
  {
    while (1)
    {
      v15 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v15 >= v11)
      {
        goto LABEL_20;
      }

      v14 = *(v4 + 8 * v15);
      ++v13;
      if (v14)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
    goto LABEL_33;
  }

LABEL_14:
  v16 = (v14 - 1) & v14;
  v17 = *(*(v3 + 48) + ((v15 << 9) | (8 * __clz(__rbit64(v14)))));
  if (v17)
  {
    goto LABEL_18;
  }

LABEL_20:
  sub_10005C9F8();
  v21 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_lineViews;
  result = swift_beginAccess();
  v1 = *(v1 + v21);
  if (!(v1 >> 62))
  {
    v23 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v23)
    {
      return result;
    }

    goto LABEL_22;
  }

LABEL_33:
  result = _CocoaArrayWrapper.endIndex.getter();
  v23 = result;
  if (!result)
  {
    return result;
  }

LABEL_22:
  if (v23 < 1)
  {
    __break(1u);
  }

  else
  {
    v40 = v1 & 0xC000000000000001;

    v24 = 0;
    v38 = v23;
    v39 = v1;
    do
    {
      if (v40)
      {
        v25 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v25 = *(v1 + 8 * v24 + 32);
      }

      v26 = v25;
      v27 = OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_isScrolling;
      v25[OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_isScrolling] = 1;
      v29 = sub_100CB3680(v41);
      v30 = *v28;
      if (*v28)
      {
        v31 = v26[v27];
        v32 = *(v28 + 8);
        v33 = v28;
        ObjectType = swift_getObjectType();
        v35 = *(v32 + 40);
        v36 = v30;
        v35(v31, ObjectType, v32);
        v37 = *v33;
        *v33 = v30;
        *(v33 + 8) = v32;
        v23 = v38;
        v1 = v39;
      }

      v29(v41, 0);
      ++v24;
    }

    while (v23 != v24);
  }

  return result;
}