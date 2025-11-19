uint64_t sub_1005138D0()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = aBlock - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000059F8(0, &qword_1008E3FD0);
  v9 = static OS_dispatch_queue.main.getter();
  v10 = swift_allocObject();
  *(v10 + 16) = v0;
  aBlock[4] = sub_100513B64;
  aBlock[5] = v10;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000449A8;
  aBlock[3] = &unk_10085E0F0;
  v11 = _Block_copy(aBlock);
  v12 = v0;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_1000261C4();
  sub_100140278(&unk_1008E7F50);
  sub_10002621C();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v11);

  (*(v2 + 8))(v4, v1);
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_100513D34()
{
  v1 = 1952541798;
  if (*v0 != 1)
  {
    v1 = 1853321060;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 28789;
  }
}

void sub_100513D74()
{
  v1 = *(v0 + OBJC_IVAR____TtC10FitnessApp23TrendArrowIndicatorView_arrowGradientLayer);
  sub_100140278(&qword_1008E7590);
  v2 = swift_allocObject();
  v3 = OBJC_IVAR____TtC10FitnessApp23TrendArrowIndicatorView_gradientColors;
  v4 = *(v0 + OBJC_IVAR____TtC10FitnessApp23TrendArrowIndicatorView_gradientColors);
  *(v2 + 16) = xmmword_1006D1F70;
  v5 = [*(v4 + OBJC_IVAR____TtC10FitnessApp14GradientColors_dark) CGColor];
  type metadata accessor for CGColor(0);
  v7 = v6;
  *(v2 + 56) = v6;
  *(v2 + 32) = v5;
  v8 = [*(*(v0 + v3) + OBJC_IVAR____TtC10FitnessApp14GradientColors_light) CGColor];
  *(v2 + 88) = v7;
  *(v2 + 64) = v8;
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v1 setColors:isa];
}

char *sub_100513EA8(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = OBJC_IVAR____TtC10FitnessApp23TrendArrowIndicatorView_backgroundLayer;
  *&v4[v10] = [objc_allocWithZone(CALayer) init];
  v11 = OBJC_IVAR____TtC10FitnessApp23TrendArrowIndicatorView_arrowLayer;
  *&v4[v11] = [objc_allocWithZone(CAShapeLayer) init];
  v12 = OBJC_IVAR____TtC10FitnessApp23TrendArrowIndicatorView_arrowGradientLayer;
  *&v4[v12] = [objc_allocWithZone(CAGradientLayer) init];
  v13 = OBJC_IVAR____TtC10FitnessApp23TrendArrowIndicatorView_arrowContainer;
  v14 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v15 = objc_opt_self();
  v16 = [v15 clearColor];
  [v14 setBackgroundColor:v16];

  *&v5[v13] = v14;
  v17 = OBJC_IVAR____TtC10FitnessApp23TrendArrowIndicatorView_gradientColors;
  sub_1001C8DCC();
  isa = UIColor.init(_colorLiteralRed:green:blue:alpha:)(0.6, 1.0, 0.0, 1.0).super.isa;
  v19 = UIColor.init(_colorLiteralRed:green:blue:alpha:)(0.84706, 1.0, 0.0, 1.0).super.isa;
  v20 = type metadata accessor for GradientColors();
  v21 = objc_allocWithZone(v20);
  *&v21[OBJC_IVAR____TtC10FitnessApp14GradientColors_dark] = isa;
  *&v21[OBJC_IVAR____TtC10FitnessApp14GradientColors_light] = v19;
  v61.receiver = v21;
  v61.super_class = v20;
  v22 = objc_msgSendSuper2(&v61, "init");
  v23 = UIColor.init(_colorLiteralRed:green:blue:alpha:)(0.65068, 1.0, 0.0, 1.0).super.isa;
  v24 = type metadata accessor for MetricColors();
  v25 = objc_allocWithZone(v24);
  *&v25[OBJC_IVAR____TtC10FitnessApp12MetricColors_gradient] = v22;
  *&v25[OBJC_IVAR____TtC10FitnessApp12MetricColors_text] = v23;
  v60.receiver = v25;
  v60.super_class = v24;
  v26 = objc_msgSendSuper2(&v60, "init");
  v27 = *&v26[OBJC_IVAR____TtC10FitnessApp12MetricColors_gradient];

  *&v5[v17] = v27;
  v28 = OBJC_IVAR____TtC10FitnessApp23TrendArrowIndicatorView_circleColor;
  *&v5[v28] = UIColor.init(_colorLiteralRed:green:blue:alpha:)(0.14902, 0.14902, 0.14902, 1.0);
  *&v5[OBJC_IVAR____TtC10FitnessApp23TrendArrowIndicatorView_arrowLeadingX] = 0;
  *&v5[OBJC_IVAR____TtC10FitnessApp23TrendArrowIndicatorView_arrowTrailingX] = 0;
  *&v5[OBJC_IVAR____TtC10FitnessApp23TrendArrowIndicatorView_arrowTipY] = 0;
  *&v5[OBJC_IVAR____TtC10FitnessApp23TrendArrowIndicatorView_arrowTailY] = 0;
  *&v5[OBJC_IVAR____TtC10FitnessApp23TrendArrowIndicatorView_upArrowNormalizedCenterStart] = xmmword_1006F6B50;
  *&v5[OBJC_IVAR____TtC10FitnessApp23TrendArrowIndicatorView_downArrowNormalizedCenterStart] = xmmword_1006F6B60;
  __asm { FMOV            V0.2D, #0.5 }

  *&v5[OBJC_IVAR____TtC10FitnessApp23TrendArrowIndicatorView_normalizedArrowCenter] = _Q0;
  v5[OBJC_IVAR____TtC10FitnessApp23TrendArrowIndicatorView_animationState] = 1;
  v5[OBJC_IVAR____TtC10FitnessApp23TrendArrowIndicatorView_currentDirection] = 1;
  v5[OBJC_IVAR____TtC10FitnessApp23TrendArrowIndicatorView_oldDirection] = 3;
  v5[OBJC_IVAR____TtC10FitnessApp23TrendArrowIndicatorView_isInitialDirectionChangeAnimation] = 1;
  v34 = &v5[OBJC_IVAR____TtC10FitnessApp23TrendArrowIndicatorView_lastBounds];
  v35 = type metadata accessor for TrendArrowIndicatorView();
  *v34 = 0u;
  v34[1] = 0u;
  v59.receiver = v5;
  v59.super_class = v35;
  v36 = objc_msgSendSuper2(&v59, "initWithFrame:", a1, a2, a3, a4);
  [v36 setClipsToBounds:1];
  v37 = [v36 layer];
  v38 = OBJC_IVAR____TtC10FitnessApp23TrendArrowIndicatorView_backgroundLayer;
  [v37 addSublayer:*&v36[OBJC_IVAR____TtC10FitnessApp23TrendArrowIndicatorView_backgroundLayer]];

  v39 = *&v36[OBJC_IVAR____TtC10FitnessApp23TrendArrowIndicatorView_circleColor];
  v40 = *&v36[v38];
  v41 = [v39 CGColor];
  [v40 setBackgroundColor:v41];

  v42 = OBJC_IVAR____TtC10FitnessApp23TrendArrowIndicatorView_arrowContainer;
  [v36 addSubview:*&v36[OBJC_IVAR____TtC10FitnessApp23TrendArrowIndicatorView_arrowContainer]];
  sub_100513D74();
  v43 = [*&v36[v42] layer];
  v44 = OBJC_IVAR____TtC10FitnessApp23TrendArrowIndicatorView_arrowLayer;
  [v43 addSublayer:*&v36[OBJC_IVAR____TtC10FitnessApp23TrendArrowIndicatorView_arrowLayer]];

  v45 = [*&v36[v42] layer];
  v46 = OBJC_IVAR____TtC10FitnessApp23TrendArrowIndicatorView_arrowGradientLayer;
  [v45 addSublayer:*&v36[OBJC_IVAR____TtC10FitnessApp23TrendArrowIndicatorView_arrowGradientLayer]];

  v47 = *&v36[v46];
  v48 = kCAFilterSourceAtop;
  v49 = objc_allocWithZone(CAFilter);
  v50 = v47;
  v51 = [v49 initWithType:v48];
  [v50 setCompositingFilter:v51];

  v52 = *&v36[v44];
  v53 = [v15 blackColor];
  v54 = [v53 CGColor];

  [v52 setStrokeColor:v54];
  v55 = *&v36[v44];
  v56 = [v15 clearColor];
  v57 = [v56 CGColor];

  [v55 setFillColor:v57];
  [*&v36[v44] setLineCap:kCALineCapRound];
  [*&v36[v44] setLineJoin:kCALineJoinMiter];
  sub_100514844();

  return v36;
}

uint64_t sub_10051449C(void *a1)
{
  v2 = v1;
  v3 = OBJC_IVAR____TtC10FitnessApp23TrendArrowIndicatorView_backgroundLayer;
  v31 = OBJC_IVAR____TtC10FitnessApp23TrendArrowIndicatorView_backgroundLayer;
  *(v2 + v3) = [objc_allocWithZone(CALayer) init];
  v4 = OBJC_IVAR____TtC10FitnessApp23TrendArrowIndicatorView_arrowLayer;
  v30 = OBJC_IVAR____TtC10FitnessApp23TrendArrowIndicatorView_arrowLayer;
  *(v2 + v4) = [objc_allocWithZone(CAShapeLayer) init];
  v5 = OBJC_IVAR____TtC10FitnessApp23TrendArrowIndicatorView_arrowGradientLayer;
  *(v2 + v5) = [objc_allocWithZone(CAGradientLayer) init];
  v6 = OBJC_IVAR____TtC10FitnessApp23TrendArrowIndicatorView_arrowContainer;
  v7 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v8 = [objc_opt_self() clearColor];
  [v7 setBackgroundColor:v8];

  *(v2 + v6) = v7;
  v9 = OBJC_IVAR____TtC10FitnessApp23TrendArrowIndicatorView_gradientColors;
  sub_1001C8DCC();
  isa = UIColor.init(_colorLiteralRed:green:blue:alpha:)(0.6, 1.0, 0.0, 1.0).super.isa;
  v11 = UIColor.init(_colorLiteralRed:green:blue:alpha:)(0.84706, 1.0, 0.0, 1.0).super.isa;
  v12 = type metadata accessor for GradientColors();
  v13 = objc_allocWithZone(v12);
  *&v13[OBJC_IVAR____TtC10FitnessApp14GradientColors_dark] = isa;
  *&v13[OBJC_IVAR____TtC10FitnessApp14GradientColors_light] = v11;
  v33.receiver = v13;
  v33.super_class = v12;
  v14 = objc_msgSendSuper2(&v33, "init");
  v15 = UIColor.init(_colorLiteralRed:green:blue:alpha:)(0.65068, 1.0, 0.0, 1.0).super.isa;
  v16 = type metadata accessor for MetricColors();
  v17 = objc_allocWithZone(v16);
  *&v17[OBJC_IVAR____TtC10FitnessApp12MetricColors_gradient] = v14;
  *&v17[OBJC_IVAR____TtC10FitnessApp12MetricColors_text] = v15;
  v32.receiver = v17;
  v32.super_class = v16;
  v18 = objc_msgSendSuper2(&v32, "init");
  v19 = *&v18[OBJC_IVAR____TtC10FitnessApp12MetricColors_gradient];

  *(v2 + v9) = v19;
  v20 = OBJC_IVAR____TtC10FitnessApp23TrendArrowIndicatorView_circleColor;
  v21 = UIColor.init(_colorLiteralRed:green:blue:alpha:)(0.14902, 0.14902, 0.14902, 1.0).super.isa;

  *(v2 + v20) = v21;
  *(v2 + OBJC_IVAR____TtC10FitnessApp23TrendArrowIndicatorView_arrowLeadingX) = 0;
  *(v2 + OBJC_IVAR____TtC10FitnessApp23TrendArrowIndicatorView_arrowTrailingX) = 0;
  *(v2 + OBJC_IVAR____TtC10FitnessApp23TrendArrowIndicatorView_arrowTipY) = 0;
  *(v2 + OBJC_IVAR____TtC10FitnessApp23TrendArrowIndicatorView_arrowTailY) = 0;
  *(v2 + OBJC_IVAR____TtC10FitnessApp23TrendArrowIndicatorView_upArrowNormalizedCenterStart) = xmmword_1006F6B50;
  *(v2 + OBJC_IVAR____TtC10FitnessApp23TrendArrowIndicatorView_downArrowNormalizedCenterStart) = xmmword_1006F6B60;
  __asm { FMOV            V0.2D, #0.5 }

  *(v2 + OBJC_IVAR____TtC10FitnessApp23TrendArrowIndicatorView_normalizedArrowCenter) = _Q0;
  *(v2 + OBJC_IVAR____TtC10FitnessApp23TrendArrowIndicatorView_animationState) = 1;
  *(v2 + OBJC_IVAR____TtC10FitnessApp23TrendArrowIndicatorView_currentDirection) = 1;
  *(v2 + OBJC_IVAR____TtC10FitnessApp23TrendArrowIndicatorView_oldDirection) = 3;
  *(v2 + OBJC_IVAR____TtC10FitnessApp23TrendArrowIndicatorView_isInitialDirectionChangeAnimation) = 1;
  v27 = (v2 + OBJC_IVAR____TtC10FitnessApp23TrendArrowIndicatorView_lastBounds);
  *v27 = 0u;
  v27[1] = 0u;

  type metadata accessor for TrendArrowIndicatorView();
  swift_deallocPartialClassInstance();
  return 0;
}

uint64_t sub_100514844()
{
  [v0 bounds];
  Width = CGRectGetWidth(v14);
  v2 = OBJC_IVAR____TtC10FitnessApp23TrendArrowIndicatorView_arrowLeadingX;
  *&v0[OBJC_IVAR____TtC10FitnessApp23TrendArrowIndicatorView_arrowLeadingX] = Width * 0.24;
  [v0 bounds];
  MaxX = CGRectGetMaxX(v15);
  v4 = OBJC_IVAR____TtC10FitnessApp23TrendArrowIndicatorView_arrowTrailingX;
  *&v0[OBJC_IVAR____TtC10FitnessApp23TrendArrowIndicatorView_arrowTrailingX] = MaxX - *&v0[v2];
  [v0 bounds];
  v5 = CGRectGetHeight(v16) * 0.33;
  v6 = OBJC_IVAR____TtC10FitnessApp23TrendArrowIndicatorView_arrowTipY;
  *&v0[OBJC_IVAR____TtC10FitnessApp23TrendArrowIndicatorView_arrowTipY] = v5;
  [v0 bounds];
  Height = CGRectGetHeight(v17);
  v8 = OBJC_IVAR____TtC10FitnessApp23TrendArrowIndicatorView_arrowTailY;
  *&v0[OBJC_IVAR____TtC10FitnessApp23TrendArrowIndicatorView_arrowTailY] = v5 + Height * 0.24;
  if (qword_1008DAC88 != -1)
  {
    swift_once();
  }

  UIRoundToScale();
  *&v0[v2] = v9;
  UIRoundToScale();
  *&v0[v4] = v10;
  UIRoundToScale();
  *&v0[v6] = v11;
  result = UIRoundToScale();
  *&v0[v8] = v13;
  return result;
}

id sub_100514994()
{
  v1 = [objc_allocWithZone(UIBezierPath) init];
  v2 = OBJC_IVAR____TtC10FitnessApp23TrendArrowIndicatorView_arrowTailY;
  [v1 moveToPoint:{*&v0[OBJC_IVAR____TtC10FitnessApp23TrendArrowIndicatorView_arrowLeadingX], *&v0[OBJC_IVAR____TtC10FitnessApp23TrendArrowIndicatorView_arrowTailY]}];
  [v0 bounds];
  [v1 addLineToPoint:{CGRectGetMidX(v4), *&v0[OBJC_IVAR____TtC10FitnessApp23TrendArrowIndicatorView_arrowTipY]}];
  [v1 addLineToPoint:{*&v0[OBJC_IVAR____TtC10FitnessApp23TrendArrowIndicatorView_arrowTrailingX], *&v0[v2]}];
  return v1;
}

id sub_100514A48()
{
  v1 = [objc_allocWithZone(UIBezierPath) init];
  v2 = *&v0[OBJC_IVAR____TtC10FitnessApp23TrendArrowIndicatorView_arrowLeadingX];
  [v0 bounds];
  MaxY = CGRectGetMaxY(v8);
  v4 = OBJC_IVAR____TtC10FitnessApp23TrendArrowIndicatorView_arrowTailY;
  [v1 moveToPoint:{v2, MaxY - *&v0[OBJC_IVAR____TtC10FitnessApp23TrendArrowIndicatorView_arrowTailY]}];
  [v0 bounds];
  MidX = CGRectGetMidX(v9);
  [v0 bounds];
  [v1 addLineToPoint:{MidX, CGRectGetMaxY(v10) - *&v0[OBJC_IVAR____TtC10FitnessApp23TrendArrowIndicatorView_arrowTipY]}];
  v6 = *&v0[OBJC_IVAR____TtC10FitnessApp23TrendArrowIndicatorView_arrowTrailingX];
  [v0 bounds];
  [v1 addLineToPoint:{v6, CGRectGetMaxY(v11) - *&v0[v4]}];
  return v1;
}

void sub_100514B5C(void *a1, char a2)
{
  v5 = v2[OBJC_IVAR____TtC10FitnessApp23TrendArrowIndicatorView_currentDirection];
  v2[OBJC_IVAR____TtC10FitnessApp23TrendArrowIndicatorView_currentDirection] = a1;
  v2[OBJC_IVAR____TtC10FitnessApp23TrendArrowIndicatorView_oldDirection] = v5;
  v6 = OBJC_IVAR____TtC10FitnessApp23TrendArrowIndicatorView_isInitialDirectionChangeAnimation;
  if ((v2[OBJC_IVAR____TtC10FitnessApp23TrendArrowIndicatorView_isInitialDirectionChangeAnimation] & 1) != 0 || v5 == 1 || v5 != a1)
  {
    [v2 bounds];
    v78.origin.x = 0.0;
    v78.origin.y = 0.0;
    v78.size.width = 0.0;
    v78.size.height = 0.0;
    v7 = 0;
    if (!CGRectEqualToRect(v62, v78) && (a2 & 1) != 0)
    {
      sub_100515494(a1);
      v2[v6] = 0;
      v7 = 1;
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = *&v2[OBJC_IVAR____TtC10FitnessApp23TrendArrowIndicatorView_arrowContainer];
  [v8 setAlpha:1.0];
  [v2 bounds];
  Width = CGRectGetWidth(v63);
  [v2 bounds];
  Height = CGRectGetHeight(v64);
  v11 = [objc_allocWithZone(UIBezierPath) init];
  p_ivars = &ResourceBundleClass.ivars;
  if (a1)
  {
    if (a1 == 1)
    {
      v60 = v7;
      v13 = OBJC_IVAR____TtC10FitnessApp23TrendArrowIndicatorView_arrowLeadingX;
      v14 = *&v2[OBJC_IVAR____TtC10FitnessApp23TrendArrowIndicatorView_arrowLeadingX];
      [v2 bounds];
      [v11 moveToPoint:{v14, CGRectGetMidY(v65)}];
      [v2 bounds];
      MidX = CGRectGetMidX(v66);
      [v2 bounds];
      [v11 addLineToPoint:{MidX, CGRectGetMidY(v67)}];
      v16 = v8;
      v17 = OBJC_IVAR____TtC10FitnessApp23TrendArrowIndicatorView_arrowTrailingX;
      v18 = *&v2[OBJC_IVAR____TtC10FitnessApp23TrendArrowIndicatorView_arrowTrailingX];
      [v2 bounds];
      [v11 addLineToPoint:{v18, CGRectGetMidY(v68)}];
      v19 = [v11 CGPath];

      v20 = [objc_allocWithZone(UIBezierPath) init];
      v21 = *&v2[v13];
      v7 = v60;
      [v2 bounds];
      [v20 moveToPoint:{v21, CGRectGetMidY(v69)}];
      [v2 bounds];
      v22 = CGRectGetMidX(v70);
      [v2 bounds];
      [v20 addLineToPoint:{v22, CGRectGetMidY(v71)}];
      v23 = *&v2[v17];
      v8 = v16;
      [v2 bounds];
      p_ivars = (&ResourceBundleClass + 48);
      [v20 addLineToPoint:{v23, CGRectGetMidY(v72)}];
      v24 = 7.0;
      v25 = 0.0;
      v26 = 115.0;
    }

    else
    {
      [v2 bounds];
      v29 = CGRectGetMidX(v74);
      [v2 bounds];
      v30 = CGRectGetMaxY(v75) - *&v2[OBJC_IVAR____TtC10FitnessApp23TrendArrowIndicatorView_arrowTipY];
      [v11 moveToPoint:{v29, v30}];
      [v11 addLineToPoint:{v29, v30}];
      v19 = [v11 CGPath];

      v20 = sub_100514A48();
      v24 = 8.0;
      v25 = 0.0;
      v26 = 150.0;
    }
  }

  else
  {
    [v2 bounds];
    v27 = CGRectGetMidX(v73);
    v28 = *&v2[OBJC_IVAR____TtC10FitnessApp23TrendArrowIndicatorView_arrowTipY];
    [v11 moveToPoint:{v27, v28}];
    [v11 addLineToPoint:{v27, v28}];
    v19 = [v11 CGPath];

    v20 = sub_100514994();
    v24 = 7.0;
    v25 = 11.0;
    v26 = 115.0;
  }

  v31 = Width * 0.5;
  v32 = Height * 0.5;
  v33 = [v20 p_ivars[509]];

  [v2 bounds];
  CGRectGetWidth(v76);
  [v2 bounds];
  CGRectGetHeight(v77);
  if (v7)
  {
    v34 = String._bridgeToObjectiveC()();
    v61 = v8;
    v35 = [objc_opt_self() animationWithKeyPath:v34];

    v36 = v35;
    [v36 setBeginTime:CACurrentMediaTime() + 0.133];
    [v36 setDuration:0.33];
    v37 = objc_allocWithZone(CAMediaTimingFunction);
    LODWORD(v38) = 1039516303;
    LODWORD(v39) = 1043878380;
    LODWORD(v40) = 1044549468;
    LODWORD(v41) = 1.0;
    v42 = [v37 initWithControlPoints:v38 :v39 :v40 :v41];
    [v36 setTimingFunction:v42];

    [v36 setFromValue:v19];
    [v36 setToValue:v33];
    v43 = String._bridgeToObjectiveC()();
    v44 = v19;
    v45 = [objc_opt_self() animationWithKeyPath:v43];

    v46 = v45;
    [v46 setDuration:0.84];
    v47 = [objc_opt_self() functionWithName:kCAMediaTimingFunctionLinear];
    [v46 setTimingFunction:v47];

    [v46 setStiffness:1000.0];
    [v46 setDamping:v26];
    [v46 setMass:v24];
    [v46 setInitialVelocity:v25];
    v48 = v46;
    isa = CGPoint._bridgeToObjectiveC()().super.isa;
    [v48 setFromValue:isa];

    v50 = CGPoint._bridgeToObjectiveC()().super.isa;
    [v48 setToValue:v50];

    v19 = v44;
    v51 = [v61 layer];
    v52 = String._bridgeToObjectiveC()();
    [v51 addAnimation:v48 forKey:v52];

    v53 = *&v2[OBJC_IVAR____TtC10FitnessApp23TrendArrowIndicatorView_arrowLayer];
    v54 = String._bridgeToObjectiveC()();
    [v53 addAnimation:v36 forKey:v54];

    v55 = swift_allocObject();
    *(v55 + 16) = v2;
    *(v55 + 24) = v33;
    *(v55 + 32) = v31;
    *(v55 + 40) = v32;
    v56 = v2;
    v57 = v33;
    sub_1001B1314(sub_100515D80, v55);
  }

  else
  {
    v58 = objc_opt_self();
    [v58 begin];
    [v58 setDisableActions:1];
    [*&v2[OBJC_IVAR____TtC10FitnessApp23TrendArrowIndicatorView_arrowLayer] setPath:v33];
    v59 = [v8 layer];
    [v59 setPosition:{v31, v32}];

    [v58 commit];
  }

  v2[OBJC_IVAR____TtC10FitnessApp23TrendArrowIndicatorView_animationState] = 1;
}

void sub_1005153F4(uint64_t a1, uint64_t a2, double a3, double a4)
{
  [*(a1 + OBJC_IVAR____TtC10FitnessApp23TrendArrowIndicatorView_arrowLayer) setPath:a2];
  v7 = [*(a1 + OBJC_IVAR____TtC10FitnessApp23TrendArrowIndicatorView_arrowContainer) layer];
  [v7 setPosition:{a3, a4}];
}

id sub_100515494(id result)
{
  v2 = result;
  if ((v1[OBJC_IVAR____TtC10FitnessApp23TrendArrowIndicatorView_isInitialDirectionChangeAnimation] & 1) != 0 || (v3 = v1[OBJC_IVAR____TtC10FitnessApp23TrendArrowIndicatorView_oldDirection], v3 == 1) || (v3 != 3 ? (v4 = v1[OBJC_IVAR____TtC10FitnessApp23TrendArrowIndicatorView_currentDirection] == v3) : (v4 = 0), !v4))
  {
    v1[OBJC_IVAR____TtC10FitnessApp23TrendArrowIndicatorView_animationState] = 0;
    [*&v1[OBJC_IVAR____TtC10FitnessApp23TrendArrowIndicatorView_arrowContainer] setAlpha:0.0];
    v5 = objc_opt_self();
    [v5 begin];
    [v5 setDisableActions:1];
    sub_100515588(v2, v1);

    return [v5 commit];
  }

  return result;
}

void sub_100515588(char a1, char *a2)
{
  v4 = *&a2[OBJC_IVAR____TtC10FitnessApp23TrendArrowIndicatorView_arrowLayer];
  v5 = [objc_allocWithZone(UIBezierPath) init];
  if (a1)
  {
    if (a1 == 1)
    {
      v6 = *&a2[OBJC_IVAR____TtC10FitnessApp23TrendArrowIndicatorView_arrowLeadingX];
      [a2 bounds];
      [v5 moveToPoint:{v6, CGRectGetMidY(v18)}];
      [a2 bounds];
      MidX = CGRectGetMidX(v19);
      [a2 bounds];
      [v5 addLineToPoint:{MidX, CGRectGetMidY(v20)}];
      v8 = *&a2[OBJC_IVAR____TtC10FitnessApp23TrendArrowIndicatorView_arrowTrailingX];
      [a2 bounds];
      [v5 addLineToPoint:{v8, CGRectGetMidY(v21)}];
      v9 = 0.5;
    }

    else
    {
      [a2 bounds];
      v12 = CGRectGetMidX(v23);
      [a2 bounds];
      v13 = CGRectGetMaxY(v24) - *&a2[OBJC_IVAR____TtC10FitnessApp23TrendArrowIndicatorView_arrowTipY];
      [v5 moveToPoint:{v12, v13}];
      [v5 addLineToPoint:{v12, v13}];
      v9 = -0.3;
    }
  }

  else
  {
    [a2 bounds];
    v10 = CGRectGetMidX(v22);
    v11 = *&a2[OBJC_IVAR____TtC10FitnessApp23TrendArrowIndicatorView_arrowTipY];
    [v5 moveToPoint:{v10, v11}];
    [v5 addLineToPoint:{v10, v11}];
    v9 = 1.3;
  }

  v14 = [v5 CGPath];

  [v4 setPath:v14];
  v16 = [*&a2[OBJC_IVAR____TtC10FitnessApp23TrendArrowIndicatorView_arrowContainer] layer];
  [a2 bounds];
  v15 = CGRectGetWidth(v25) * 0.5;
  [a2 bounds];
  [v16 setPosition:{v15, CGRectGetHeight(v26) * v9}];
}

void sub_100515828()
{
  [v0 bounds];
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v21.receiver = v0;
  v21.super_class = type metadata accessor for TrendArrowIndicatorView();
  objc_msgSendSuper2(&v21, "layoutSubviews");
  v9 = &v0[OBJC_IVAR____TtC10FitnessApp23TrendArrowIndicatorView_lastBounds];
  v22.origin.x = v2;
  v22.origin.y = v4;
  v22.size.width = v6;
  v22.size.height = v8;
  if (!CGRectEqualToRect(v22, *&v0[OBJC_IVAR____TtC10FitnessApp23TrendArrowIndicatorView_lastBounds]))
  {
    *v9 = v2;
    v9[1] = v4;
    v9[2] = v6;
    v9[3] = v8;
    v10 = *&v0[OBJC_IVAR____TtC10FitnessApp23TrendArrowIndicatorView_arrowContainer];
    [v10 setFrame:{v2, v4, v6, v8}];
    [v10 bounds];
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v18 = v17;
    sub_100514844();
    v19 = objc_opt_self();
    [v19 begin];
    [v19 setDisableActions:1];
    sub_1005159C0(v0, v2, v4, v6, v8, v12, v14, v16, v18);
    [v19 commit];
    v20 = v0[OBJC_IVAR____TtC10FitnessApp23TrendArrowIndicatorView_currentDirection];
    if (v0[OBJC_IVAR____TtC10FitnessApp23TrendArrowIndicatorView_animationState])
    {
      sub_100514B5C(v20, 0);
    }

    else
    {
      sub_100515494(v20);
    }
  }
}

id sub_1005159C0(uint64_t a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8, double a9)
{
  v17 = *(a1 + OBJC_IVAR____TtC10FitnessApp23TrendArrowIndicatorView_arrowLayer);
  CGRectGetWidth(*&a2);
  if (qword_1008DAC88 != -1)
  {
    swift_once();
  }

  UIRoundToScale();
  [v17 setLineWidth:?];
  v18 = *(a1 + OBJC_IVAR____TtC10FitnessApp23TrendArrowIndicatorView_backgroundLayer);
  [v18 setFrame:{a2, a3, a4, a5}];
  v19 = *(a1 + OBJC_IVAR____TtC10FitnessApp23TrendArrowIndicatorView_arrowGradientLayer);
  [v19 setFrame:{a6, a7, a8, a9}];
  [v19 bounds];
  [v17 setFrame:?];
  [v18 bounds];
  [v18 setCornerRadius:CGRectGetWidth(v23) * 0.5];
  [v19 setEndPoint:{0.5, 0.275}];

  return [v19 setStartPoint:{0.5, 0.725}];
}

id sub_100515BCC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TrendArrowIndicatorView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_100515CD4()
{
  result = qword_1008F1480;
  if (!qword_1008F1480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F1480);
  }

  return result;
}

unint64_t sub_100515D2C()
{
  result = qword_1008F1488;
  if (!qword_1008F1488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F1488);
  }

  return result;
}

uint64_t type metadata accessor for WorkoutItemView()
{
  result = qword_1008F14E8;
  if (!qword_1008F14E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100515E00()
{
  sub_1000059F8(319, &qword_1008ED7C0);
  if (v0 <= 0x3F)
  {
    sub_1000059F8(319, &unk_1008DC348);
    if (v1 <= 0x3F)
    {
      type metadata accessor for SeymourCatalogItemDataProvider();
      if (v2 <= 0x3F)
      {
        type metadata accessor for AAUIAwardsDataProvider();
        if (v3 <= 0x3F)
        {
          type metadata accessor for WorkoutImageProvider();
          if (v4 <= 0x3F)
          {
            sub_1001E7730();
            if (v5 <= 0x3F)
            {
              sub_1001E76CC();
              if (v6 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_100515F40@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v59 = a1;
  v3 = type metadata accessor for WorkoutItemView();
  v56 = *(v3 - 8);
  __chkstk_darwin(v3);
  v57 = v4;
  v58 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = type metadata accessor for UUID();
  v5 = *(v49 - 8);
  __chkstk_darwin(v49);
  v7 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = type metadata accessor for AttributedString();
  v50 = *(v53 - 8);
  __chkstk_darwin(v53);
  v9 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v46 - v11;
  v13 = sub_100140278(&qword_1008F1540);
  __chkstk_darwin(v13);
  v15 = (&v46 - v14);
  v51 = sub_100140278(&qword_1008F1548);
  __chkstk_darwin(v51);
  v55 = &v46 - v16;
  v48 = *(v1 + 32);
  sub_100140278(&qword_1008E09C0);
  v17 = v12;
  State.wrappedValue.getter();
  v18 = *v1;
  v19 = *(v1 + 8);
  v20 = [*(v2 + 8) formattedGoalForWorkout:*v2 context:@"WorkoutsListDisplayContext"];
  v54 = v9;
  AttributedString.init(_:)();
  v21 = [v19 formattedDateForWorkout:v18 context:@"WorkoutsListDisplayContext"];
  v22 = [v21 string];

  v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v46 = v24;
  v47 = v23;

  v52 = v2;
  v25 = [v18 UUID];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  UUID.uuidString.getter();
  (*(v5 + 8))(v7, v49);
  v26 = AAUIAwardsDataProvider.achievements(forWorkoutIdentifier:)();

  if (v26 >> 62)
  {
    v27 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v27 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  *v15 = swift_getKeyPath();
  sub_100140278(&qword_1008EE6A0);
  swift_storeEnumTagMultiPayload();
  v28 = v15 + v13[15];
  *v28 = xmmword_1006DC5B0;
  *(v28 + 2) = 0;
  *(v28 + 3) = 0;
  *(v15 + v13[9]) = v48;
  v29 = v50;
  v30 = *(v50 + 16);
  v31 = v53;
  v30(v15 + v13[10], v17, v53);
  v32 = v54;
  v30(v15 + v13[11], v54, v31);
  v33 = (v15 + v13[12]);
  v34 = v46;
  *v33 = v47;
  v33[1] = v34;
  *(v15 + v13[13]) = v27;
  v35 = v52;
  sub_100516524(v52);
  v36 = *(v29 + 8);
  v36(v32, v31);
  v36(v17, v31);
  v37 = [v18 UUID];
  v38 = v55;
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  sub_100015E80(v15, v38, &qword_1008F1540);
  v39 = v58;
  sub_1005177A0(v35, v58);
  v40 = (*(v56 + 80) + 16) & ~*(v56 + 80);
  v41 = swift_allocObject();
  sub_100517804(v39, v41 + v40);
  v42 = sub_100140278(&qword_1008F1550);
  v43 = v59;
  v44 = (v59 + *(v42 + 36));
  type metadata accessor for _TaskModifier();
  static TaskPriority.userInitiated.getter();
  *v44 = &unk_1006F6DE0;
  v44[1] = v41;
  return sub_100015E80(v38, v43, &qword_1008F1548);
}

uint64_t sub_100516524(uint64_t a1)
{
  v2 = sub_100140278(&qword_1008E0AB0);
  __chkstk_darwin(v2);
  v4 = &v24[-v3];
  v5 = sub_100140278(&qword_1008F1558);
  __chkstk_darwin(v5);
  v7 = &v24[-v6];
  v8 = type metadata accessor for WorkoutItemView();
  v26 = *(a1 + *(v8 + 48));
  sub_100140278(&qword_1008E0038);
  State.wrappedValue.getter();
  v9 = v25;
  if (v25 || (v26 = *(a1 + *(v8 + 44)), State.wrappedValue.getter(), (v9 = v25) != 0))
  {
    v10 = v4 + *(v2 + 36);
    v11 = *(type metadata accessor for RoundedRectangle() + 20);
    v12 = enum case for RoundedCornerStyle.continuous(_:);
    v13 = type metadata accessor for RoundedCornerStyle();
    (*(*(v13 - 8) + 104))(&v10[v11], v12, v13);
    __asm { FMOV            V0.2D, #4.0 }

    *v10 = _Q0;
    *&v10[*(sub_100140278(&qword_1008DE1E0) + 36)] = 256;
    *v4 = v9;
    sub_100517C18(v4, v7);
    swift_storeEnumTagMultiPayload();
    sub_100140278(&qword_1008E0090);
    sub_1001E9D3C();
    sub_1001D1144();
    _ConditionalContent<>.init(storage:)();
    return sub_10000EA04(v4, &qword_1008E0AB0);
  }

  else
  {
    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    v20 = v26;
    v21 = BYTE8(v26);
    v22 = v27;
    v23 = v28;
    LOBYTE(v25) = 1;
    v24[16] = BYTE8(v26);
    v24[8] = v28;
    *v7 = 0;
    v7[8] = 1;
    *(v7 + 2) = v20;
    v7[24] = v21;
    *(v7 + 4) = v22;
    v7[40] = v23;
    *(v7 + 3) = v29;
    swift_storeEnumTagMultiPayload();
    sub_100140278(&qword_1008E0090);
    sub_1001E9D3C();
    sub_1001D1144();
    return _ConditionalContent<>.init(storage:)();
  }
}

uint64_t sub_100516844(uint64_t a1)
{
  v1[2] = a1;
  v2 = *(type metadata accessor for WorkoutItemView() - 8);
  v1[3] = v2;
  v1[4] = *(v2 + 64);
  v1[5] = swift_task_alloc();
  type metadata accessor for MainActor();
  v1[6] = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10051693C, v4, v3);
}

uint64_t sub_10051693C()
{
  v1 = v0[2];

  v2 = *(v1 + 16);
  v3 = *v1;
  if (sub_10069885C(v3))
  {
    v4 = v0[5];
    v5 = v0[3];
    sub_1005177A0(v0[2], v4);
    v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
    v7 = swift_allocObject();
    sub_100517804(v4, v7 + v6);
    sub_100171CD0(v3, sub_100517934, v7, v2);
  }

  sub_100516A44();

  v8 = v0[1];

  return v8();
}

uint64_t sub_100516A44()
{
  v1 = type metadata accessor for WorkoutItemView();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1 - 8);
  v4 = sub_100140278(&qword_1008E1760);
  __chkstk_darwin(v4 - 8);
  v6 = v14 - v5;
  v7 = type metadata accessor for TaskPriority();
  v14[0] = *(*(v7 - 8) + 56);
  (v14[0])(v6, 1, 1, v7);
  sub_1005177A0(v0, v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for MainActor();
  v8 = static MainActor.shared.getter();
  v9 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = v8;
  *(v10 + 24) = &protocol witness table for MainActor;
  sub_100517804(v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9);
  sub_10026E198(0, 0, v6, &unk_1006F6DF8, v10);

  (v14[0])(v6, 1, 1, v7);
  sub_1005177A0(v14[1], v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = static MainActor.shared.getter();
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  *(v12 + 24) = &protocol witness table for MainActor;
  sub_100517804(v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v12 + v9);
  sub_10026E198(0, 0, v6, &unk_1006F6E08, v12);
}

uint64_t sub_100516CA4(uint64_t a1, void **a2)
{
  if (a1)
  {
    __chkstk_darwin(a1);
    v4 = v3;
    static Animation.default.getter();
    withAnimation<A>(_:_:)();
  }

  else
  {
    static os_log_type_t.error.getter();
    v6 = HKLogActivity;
    sub_100140278(&unk_1008E4E50);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_1006D1F70;
    *(v7 + 56) = &type metadata for String;
    *(v7 + 64) = sub_10000A788();
    *(v7 + 32) = 0xD000000000000010;
    *(v7 + 40) = 0x800000010074C4C0;
    v8 = *a2;
    *(v7 + 96) = sub_1000059F8(0, &qword_1008ED7C0);
    *(v7 + 104) = sub_1001ED4D4();
    *(v7 + 72) = v8;
    v9 = v6;
    v10 = v8;
    os_log(_:dso:log:_:_:)();
  }
}

uint64_t sub_100516E58(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for AttributedString();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = v12 - v8;
  v10 = *(a2 + OBJC_IVAR___CHCatalogItemViewModel_title);
  AttributedString.init(_:)();
  type metadata accessor for WorkoutItemView();
  (*(v4 + 16))(v6, v9, v3);
  sub_100140278(&qword_1008E09C0);
  State.wrappedValue.setter();
  return (*(v4 + 8))(v9, v3);
}

uint64_t sub_100516FBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a4;
  type metadata accessor for MainActor();
  *(v4 + 48) = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100517054, v6, v5);
}

uint64_t sub_100517054()
{
  v1 = *(v0 + 40);

  dispatch thunk of WorkoutImageProvider.placeholderImage(for:width:)();
  v2 = Image.init(uiImage:)();
  *(v0 + 16) = *(v1 + *(type metadata accessor for WorkoutItemView() + 44));
  *(v0 + 32) = v2;
  sub_100140278(&qword_1008E0038);
  State.wrappedValue.setter();
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_10051712C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  type metadata accessor for WorkoutItemView();
  v4[3] = swift_task_alloc();
  type metadata accessor for MainActor();
  v4[4] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[5] = v6;
  v4[6] = v5;

  return _swift_task_switch(sub_1005171F0, v6, v5);
}

uint64_t sub_1005171F0()
{
  v1 = *(v0 + 16);
  v7 = (&async function pointer to dispatch thunk of WorkoutImageProvider.fetchImage(for:width:) + async function pointer to dispatch thunk of WorkoutImageProvider.fetchImage(for:width:));
  v2 = *v1;
  if (*(v1 + 32))
  {
    v3 = 48.0;
  }

  else
  {
    v3 = 34.0;
  }

  v4 = swift_task_alloc();
  *(v0 + 56) = v4;
  *v4 = v0;
  v4[1] = sub_1005172C4;
  v5.n128_f64[0] = v3;

  return v7(v2, v5);
}

uint64_t sub_1005172C4(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 64) = v1;

  if (v1)
  {
    v5 = v4[5];
    v6 = v4[6];
    v7 = sub_1005174C0;
  }

  else
  {
    v4[9] = a1;
    v5 = v4[5];
    v6 = v4[6];
    v7 = sub_1005173EC;
  }

  return _swift_task_switch(v7, v5, v6);
}

uint64_t sub_1005173EC()
{
  v1 = v0[9];
  v2 = v0[2];

  v3 = swift_task_alloc();
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  static Animation.default.getter();
  withAnimation<A>(_:_:)();

  v4 = v0[1];

  return v4();
}

uint64_t sub_1005174C0()
{
  v19 = v0;
  v1 = v0[3];
  v2 = v0[2];

  v3 = static os_log_type_t.error.getter();
  v4 = HKLogActivity;
  sub_1005177A0(v2, v1);
  v5 = os_log_type_enabled(v4, v3);
  v6 = v0[3];
  if (v5)
  {
    log = v4;
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    *v7 = 136315650;
    *(v7 + 4) = sub_10000AFDC(0x4974756F6B726F57, 0xEF776569566D6574, &v18);
    *(v7 + 12) = 2080;
    v9 = [*v6 description];
    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;

    sub_100517BA0(v6);
    v13 = sub_10000AFDC(v10, v12, &v18);

    *(v7 + 14) = v13;
    *(v7 + 22) = 2112;
    swift_errorRetain();
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 24) = v14;
    *v8 = v14;
    _os_log_impl(&_mh_execute_header, log, v3, "%s Error fetching workout image for workout: %s with error: %@", v7, 0x20u);
    sub_10000EA04(v8, &unk_1008DB8B0);

    swift_arrayDestroy();
  }

  else
  {

    sub_100517BA0(v6);
  }

  v15 = v0[1];

  return v15();
}

uint64_t sub_10051771C(uint64_t a1, void *a2)
{
  v2 = a2;
  Image.init(uiImage:)();
  type metadata accessor for WorkoutItemView();
  sub_100140278(&qword_1008E0038);
  return State.wrappedValue.setter();
}

uint64_t sub_1005177A0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WorkoutItemView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100517804(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WorkoutItemView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100517868()
{
  v2 = *(type metadata accessor for WorkoutItemView() - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_10002BBC0;

  return sub_100516844(v0 + v3);
}

uint64_t sub_100517934(uint64_t a1)
{
  v3 = *(type metadata accessor for WorkoutItemView() - 8);
  v4 = (v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80)));

  return sub_100516CA4(a1, v4);
}

uint64_t sub_1005179C0(uint64_t a1)
{
  v4 = *(type metadata accessor for WorkoutItemView() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10002BBC0;

  return sub_100516FBC(a1, v6, v7, v1 + v5);
}

uint64_t sub_100517AB0(uint64_t a1)
{
  v4 = *(type metadata accessor for WorkoutItemView() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10002BACC;

  return sub_10051712C(a1, v6, v7, v1 + v5);
}

uint64_t sub_100517BA0(uint64_t a1)
{
  v2 = type metadata accessor for WorkoutItemView();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100517C18(uint64_t a1, uint64_t a2)
{
  v4 = sub_100140278(&qword_1008E0AB0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_100517C88()
{
  result = qword_1008F1560;
  if (!qword_1008F1560)
  {
    sub_100141EEC(&qword_1008F1550);
    sub_10014A6B0(&qword_1008F1568, &qword_1008F1548);
    sub_100358B68();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F1560);
  }

  return result;
}

uint64_t sub_100517D50()
{
  v31 = type metadata accessor for SheetItem();
  v0 = *(v31 - 8);
  __chkstk_darwin(v31);
  v2 = v26 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = IntroSheet.title.getter();
  v5 = v4;
  v6 = IntroSheet.items.getter();
  v7 = *(v6 + 16);
  if (v7)
  {
    v26[1] = v5;
    v26[2] = v3;
    v35 = _swiftEmptyArrayStorage;
    sub_1001860DC(0, v7, 0);
    v8 = v35;
    v10 = *(v0 + 16);
    v9 = v0 + 16;
    v11 = *(v9 + 64);
    v26[0] = v6;
    v12 = v6 + ((v11 + 32) & ~v11);
    v28 = *(v9 + 56);
    v29 = v10;
    v27 = (v9 - 8);
    v30 = v9;
    do
    {
      v13 = v31;
      v29(v2, v12, v31);
      v14 = SheetItem.title.getter();
      v33 = v15;
      v34 = v14;
      v32 = SheetItem.body.getter();
      v17 = v16;
      v18 = SheetItem.imageName.getter();
      v20 = v19;
      (*v27)(v2, v13);
      v35 = v8;
      v22 = v8[2];
      v21 = v8[3];
      if (v22 >= v21 >> 1)
      {
        sub_1001860DC((v21 > 1), v22 + 1, 1);
        v8 = v35;
      }

      v8[2] = v22 + 1;
      v23 = &v8[6 * v22];
      v24 = v33;
      v23[4] = v34;
      v23[5] = v24;
      v23[6] = v32;
      v23[7] = v17;
      v23[8] = v18;
      v23[9] = v20;
      v12 += v28;
      --v7;
    }

    while (v7);
  }

  return 0;
}

uint64_t sub_100517F78()
{
  v31 = type metadata accessor for SheetItem();
  v0 = *(v31 - 8);
  __chkstk_darwin(v31);
  v2 = v26 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = WhatsNewSheet.title.getter();
  v5 = v4;
  v6 = WhatsNewSheet.items.getter();
  v7 = *(v6 + 16);
  if (v7)
  {
    v26[1] = v5;
    v26[2] = v3;
    v35 = _swiftEmptyArrayStorage;
    sub_1001860DC(0, v7, 0);
    v8 = v35;
    v10 = *(v0 + 16);
    v9 = v0 + 16;
    v11 = *(v9 + 64);
    v26[0] = v6;
    v12 = v6 + ((v11 + 32) & ~v11);
    v28 = *(v9 + 56);
    v29 = v10;
    v27 = (v9 - 8);
    v30 = v9;
    do
    {
      v13 = v31;
      v29(v2, v12, v31);
      v14 = SheetItem.title.getter();
      v33 = v15;
      v34 = v14;
      v32 = SheetItem.body.getter();
      v17 = v16;
      v18 = SheetItem.imageName.getter();
      v20 = v19;
      (*v27)(v2, v13);
      v35 = v8;
      v22 = v8[2];
      v21 = v8[3];
      if (v22 >= v21 >> 1)
      {
        sub_1001860DC((v21 > 1), v22 + 1, 1);
        v8 = v35;
      }

      v8[2] = v22 + 1;
      v23 = &v8[6 * v22];
      v24 = v33;
      v23[4] = v34;
      v23[5] = v24;
      v23[6] = v32;
      v23[7] = v17;
      v23[8] = v18;
      v23[9] = v20;
      v12 += v28;
      --v7;
    }

    while (v7);
  }

  return 1;
}

unint64_t sub_1005181C4()
{
  result = qword_1008F1570;
  if (!qword_1008F1570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F1570);
  }

  return result;
}

uint64_t type metadata accessor for FriendCompetitionView()
{
  result = qword_1008F15D0;
  if (!qword_1008F15D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10051828C()
{
  sub_10005C91C();
  if (v0 <= 0x3F)
  {
    sub_1000059F8(319, &qword_1008E53D0);
    if (v1 <= 0x3F)
    {
      sub_1000059F8(319, &unk_1008F15E0);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_10051836C()
{
  v0 = type metadata accessor for Font.Leading();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100140278(&qword_1008DC448);
  __chkstk_darwin(v4 - 8);
  v6 = &v15 - v5;
  v7 = type metadata accessor for Font.TextStyle();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 104))(v11, enum case for Font.TextStyle.caption(_:), v7, v9);
  v12 = type metadata accessor for Font.Design();
  (*(*(v12 - 8) + 56))(v6, 1, 1, v12);
  static Font.system(_:design:weight:)();
  sub_10000EA04(v6, &qword_1008DC448);
  (*(v8 + 8))(v11, v7);
  (*(v1 + 104))(v3, enum case for Font.Leading.tight(_:), v0);
  v13 = Font.leading(_:)();

  result = (*(v1 + 8))(v3, v0);
  qword_100925D50 = v13;
  return result;
}

uint64_t sub_1005185F8()
{
  v0 = type metadata accessor for Font.Leading();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100140278(&qword_1008DC448);
  __chkstk_darwin(v4 - 8);
  v6 = &v17 - v5;
  v7 = type metadata accessor for Font.TextStyle();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 104))(v11, enum case for Font.TextStyle.title3(_:), v7, v9);
  v12 = enum case for Font.Design.rounded(_:);
  v13 = type metadata accessor for Font.Design();
  v14 = *(v13 - 8);
  (*(v14 + 104))(v6, v12, v13);
  (*(v14 + 56))(v6, 0, 1, v13);
  static Font.Weight.medium.getter();
  static Font.system(_:design:weight:)();
  sub_10000EA04(v6, &qword_1008DC448);
  (*(v8 + 8))(v11, v7);
  (*(v1 + 104))(v3, enum case for Font.Leading.tight(_:), v0);
  v15 = Font.leading(_:)();

  result = (*(v1 + 8))(v3, v0);
  qword_100925D58 = v15;
  return result;
}

uint64_t sub_1005188C8()
{
  v0 = type metadata accessor for Font.Leading();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100140278(&qword_1008DC448);
  __chkstk_darwin(v4 - 8);
  v6 = &v17 - v5;
  v7 = type metadata accessor for Font.TextStyle();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 104))(v11, enum case for Font.TextStyle.caption(_:), v7, v9);
  v12 = enum case for Font.Design.rounded(_:);
  v13 = type metadata accessor for Font.Design();
  v14 = *(v13 - 8);
  (*(v14 + 104))(v6, v12, v13);
  (*(v14 + 56))(v6, 0, 1, v13);
  static Font.system(_:design:weight:)();
  sub_10000EA04(v6, &qword_1008DC448);
  (*(v8 + 8))(v11, v7);
  (*(v1 + 104))(v3, enum case for Font.Leading.tight(_:), v0);
  v15 = Font.leading(_:)();

  result = (*(v1 + 8))(v3, v0);
  qword_100925D60 = v15;
  return result;
}

uint64_t sub_100518B94@<X0>(uint64_t a1@<X8>)
{
  v34 = a1;
  v2 = type metadata accessor for DynamicTypeSize();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v29 - v7;
  v9 = sub_100140278(&qword_1008F1620);
  __chkstk_darwin(v9 - 8);
  v11 = &v29 - v10;
  v31 = static HorizontalAlignment.leading.getter();
  v12 = v1 + *(type metadata accessor for FriendCompetitionView() + 32);
  v13 = *v12;
  v14 = *(v12 + 8);
  v15 = *(v12 + 16);
  sub_10005491C(v8);
  v32 = v14;
  v33 = v13;
  LODWORD(v13) = sub_10001DEC8(v8, v13, v14, v15);
  v16 = *(v3 + 8);
  v16(v8, v2);
  v30 = v3;
  if (v13 > 1)
  {
    v18 = 0x4028000000000000;
  }

  else
  {
    sub_10005491C(v8);
    (*(v3 + 104))(v5, enum case for DynamicTypeSize.xxLarge(_:), v2);
    v17 = static DynamicTypeSize.< infix(_:_:)();
    v16(v5, v2);
    v16(v8, v2);
    v18 = 0x402E000000000000;
    if (v17)
    {
      v18 = 0x4034000000000000;
    }
  }

  *v11 = v31;
  *(v11 + 1) = v18;
  v11[16] = 0;
  v19 = sub_100140278(&qword_1008F1628);
  sub_100518EF0(v1, &v11[*(v19 + 44)]);
  sub_10005491C(v8);
  v20 = sub_10001DEC8(v8, v33, v32, v15);
  v16(v8, v2);
  if (v20 > 1)
  {
    v23 = 0;
    v22 = 0x4000000000000000;
  }

  else
  {
    sub_10005491C(v8);
    (*(v30 + 104))(v5, enum case for DynamicTypeSize.xxLarge(_:), v2);
    v21 = static DynamicTypeSize.< infix(_:_:)();
    v16(v5, v2);
    v16(v8, v2);
    if (v21)
    {
      v22 = 0xC000000000000000;
    }

    else
    {
      v22 = 0;
    }

    if (v21)
    {
      v23 = 0xC014000000000000;
    }

    else
    {
      v23 = 0;
    }
  }

  v24 = static Edge.Set.all.getter();
  v25 = v11;
  v26 = v34;
  sub_100015E80(v25, v34, &qword_1008F1620);
  result = sub_100140278(&qword_1008F1630);
  v28 = v26 + *(result + 36);
  *v28 = v24;
  *(v28 + 8) = v22;
  *(v28 + 16) = 0;
  *(v28 + 24) = 0;
  *(v28 + 32) = v23;
  *(v28 + 40) = 0;
  return result;
}

uint64_t sub_100518EF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v77 = a2;
  v78 = type metadata accessor for Date();
  v80 = *(v78 - 8);
  __chkstk_darwin(v78);
  v72 = &v59 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for AttributeContainer();
  __chkstk_darwin(v4 - 8);
  v6 = &v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for AttributedString();
  v73 = *(v7 - 8);
  v74 = v7;
  __chkstk_darwin(v7);
  v9 = &v59 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for CompetitionRowView();
  __chkstk_darwin(v10);
  v76 = &v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v75 = &v59 - v13;
  __chkstk_darwin(v14);
  v69 = (&v59 - v15);
  __chkstk_darwin(v16);
  v18 = (&v59 - v17);
  __chkstk_darwin(v19);
  v79 = &v59 - v20;
  v21 = type metadata accessor for FriendCompetitionView();
  v22 = *(a1 + v21[6]);
  v65 = sub_10051966C(v22);
  v23 = [v22 displayName];
  if (v23)
  {
    v24 = v23;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  AttributeContainer.init()();
  v71 = v6;
  AttributedString.init(_:attributes:)();
  if (qword_1008DAD00 != -1)
  {
    swift_once();
  }

  v67 = qword_100925D50;
  v81 = qword_100925D50;
  v70 = sub_10005F988();

  AttributedString.subscript.setter();

  v25 = *(a1 + v21[7]);
  sub_10051984C([v25 opponentTotalScore], v18 + v10[7]);
  v26 = v72;
  Date.init()();
  isa = Date._bridgeToObjectiveC()().super.isa;
  v28 = *(v80 + 8);
  v80 += 8;
  v68 = v28;
  v60 = v9;
  v28(v26, v78);
  v61 = v25;
  v29 = [v25 dailyScoreForParticipant:1 onDate:isa];

  sub_100519FC8(v29, v18 + v10[8]);
  v66 = objc_opt_self();
  v30 = [v66 as_colorForParticipant:1 competition:v25];
  v31 = Color.init(uiColor:)();
  v32 = a1 + v21[8];
  v33 = a1;
  v34 = *v32;
  v35 = *(v32 + 8);
  v36 = *(v32 + 16);
  *v18 = swift_getKeyPath();
  v64 = sub_100140278(&qword_1008EE6A0);
  swift_storeEnumTagMultiPayload();
  *(v18 + v10[5]) = v65;
  (*(v73 + 32))(v18 + v10[6], v60, v74);
  *(v18 + v10[9]) = v31;
  v37 = v18 + v10[10];
  v38 = v34;
  *v37 = v34;
  *(v37 + 1) = v35;
  v39 = v35;
  v63 = v35;
  LOBYTE(v35) = v36;
  v62 = v36;
  v37[16] = v36;
  sub_10051A798(v18, v79);
  v40 = *(v33 + v21[5]);
  sub_10001D510(v38, v39, v35);
  v41 = v38;
  sub_10001D510(v38, v39, v35);
  v74 = sub_10051966C(v40);
  v42 = [objc_opt_self() mainBundle];
  v43 = String._bridgeToObjectiveC()();
  v44 = [v42 localizedStringForKey:v43 value:0 table:0];

  static String._unconditionallyBridgeFromObjectiveC(_:)();

  AttributeContainer.init()();
  v45 = v69;
  AttributedString.init(_:attributes:)();
  v81 = v67;

  AttributedString.subscript.setter();

  v46 = v61;
  sub_10051984C([v61 myTotalScore], v45 + v10[7]);
  Date.init()();
  v47 = Date._bridgeToObjectiveC()().super.isa;
  v68(v26, v78);
  v48 = [v46 dailyScoreForParticipant:0 onDate:v47];

  sub_100519FC8(v48, v45 + v10[8]);
  v49 = [v66 as_colorForParticipant:0 competition:v46];
  v50 = Color.init(uiColor:)();
  *v45 = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v51 = v75;
  *(v45 + v10[5]) = v74;
  *(v45 + v10[9]) = v50;
  v52 = v45 + v10[10];
  v53 = v63;
  *v52 = v41;
  *(v52 + 1) = v53;
  v52[16] = v62;
  v54 = v79;
  sub_10051A7FC(v79, v51);
  v55 = v76;
  sub_10051A7FC(v45, v76);
  v56 = v77;
  sub_10051A7FC(v51, v77);
  v57 = sub_100140278(&qword_1008F1638);
  sub_10051A7FC(v55, v56 + *(v57 + 48));
  sub_10051A860(v45);
  sub_10051A860(v54);
  sub_10051A860(v55);
  return sub_10051A860(v51);
}

uint64_t sub_10051966C(void *a1)
{
  v3 = type metadata accessor for DynamicTypeSize();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v19 - v8;
  v10 = v1 + *(type metadata accessor for FriendCompetitionView() + 32);
  v11 = *v10;
  v12 = *(v10 + 8);
  v13 = *(v10 + 16);
  sub_10005491C(v9);
  v14 = sub_10001DEC8(v9, v11, v12, v13);
  v15 = *(v4 + 8);
  v15(v9, v3);
  if (v14 > 1)
  {
    v17 = 40.0;
  }

  else
  {
    sub_10005491C(v9);
    (*(v4 + 104))(v6, enum case for DynamicTypeSize.xxLarge(_:), v3);
    v16 = static DynamicTypeSize.< infix(_:_:)();
    v15(v6, v3);
    v15(v9, v3);
    if (v16)
    {
      v17 = 40.0;
    }

    else
    {
      v17 = 20.0;
    }
  }

  type metadata accessor for ActivitySharingAvatarProvider();
  sub_100549740(a1, v17);
  return Image.init(uiImage:)();
}

uint64_t sub_10051984C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100140278(&qword_1008EF8C8);
  __chkstk_darwin(v4 - 8);
  v6 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v49 - v8;
  v10 = sub_100140278(&qword_1008EB540);
  __chkstk_darwin(v10 - 8);
  v12 = &v49 - v11;
  v13 = sub_100140278(&qword_1008E1900);
  __chkstk_darwin(v13 - 8);
  v58 = &v49 - v14;
  v59 = sub_100140278(&qword_1008E1908);
  v57 = *(v59 - 8);
  __chkstk_darwin(v59);
  v56 = &v49 - v15;
  v16 = type metadata accessor for AttributeContainer();
  __chkstk_darwin(v16 - 8);
  v17 = type metadata accessor for AttributedString();
  v60 = *(v17 - 8);
  __chkstk_darwin(v17);
  v19 = &v49 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = objc_opt_self();
  v21 = [objc_allocWithZone(NSNumber) initWithUnsignedInteger:a1];
  v22 = [v20 stringWithNumber:v21 decimalPrecision:1];

  if (v22)
  {
    v50 = v6;
    v51 = v9;
    v55 = a2;
    v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v52 = v24;
    v53 = v23;

    v25 = objc_opt_self();
    v26 = [v25 mainBundle];
    v27 = String._bridgeToObjectiveC()();
    v54 = v17;
    v28 = [v26 localizedStringForKey:v27 value:0 table:0];

    v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v31 = v30;

    v32 = [v25 mainBundle];
    v33 = String._bridgeToObjectiveC()();
    v34 = [v32 localizedStringForKey:v33 value:0 table:0];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_100140278(&unk_1008E4E50);
    v35 = swift_allocObject();
    *(v35 + 16) = xmmword_1006D1F70;
    *(v35 + 56) = &type metadata for String;
    v36 = sub_10000A788();
    v37 = v52;
    *(v35 + 32) = v53;
    *(v35 + 40) = v37;
    *(v35 + 96) = &type metadata for String;
    *(v35 + 104) = v36;
    *(v35 + 64) = v36;
    *(v35 + 72) = v29;
    *(v35 + 80) = v31;

    String.init(format:_:)();
    v38 = v54;

    AttributeContainer.init()();
    AttributedString.init(_:attributes:)();
    v61[0] = v29;
    v61[1] = v31;
    v39 = type metadata accessor for Locale();
    (*(*(v39 - 8) + 56))(v12, 1, 1, v39);
    sub_10007BD90();
    sub_10000FCBC();
    v40 = v58;
    AttributedStringProtocol.range<A>(of:options:locale:)();
    sub_10000EA04(v12, &qword_1008EB540);

    if ((*(v57 + 48))(v40, 1, v59) == 1)
    {
      v41 = &qword_1008E1900;
      v42 = v40;
    }

    else
    {
      v44 = v56;
      sub_100015E80(v40, v56, &qword_1008E1908);
      v45 = v51;
      static Text.Scale.secondary.getter();
      v46 = type metadata accessor for Text.Scale();
      (*(*(v46 - 8) + 56))(v45, 0, 1, v46);
      sub_10014A6B0(&qword_1008E1920, &qword_1008E1908);
      v47 = AttributedString.subscript.modify();
      sub_10007C1D8(v45, v50);
      sub_10007C248();
      AttributedSubstring.subscript.setter();
      sub_10000EA04(v45, &qword_1008EF8C8);
      v47(v61, 0);
      v42 = v44;
      v41 = &qword_1008E1908;
    }

    sub_10000EA04(v42, v41);
    v48 = v55;
    if (qword_1008DAD08 != -1)
    {
      swift_once();
    }

    v61[0] = qword_100925D58;
    sub_10005F988();

    AttributedString.subscript.setter();
    return (*(v60 + 32))(v48, v19, v38);
  }

  else
  {

    return AttributedString.init()();
  }
}

uint64_t sub_100519FC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_100140278(&qword_1008EF8C8);
  __chkstk_darwin(v5 - 8);
  v56 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v50 - v8;
  v10 = sub_100140278(&qword_1008EB540);
  __chkstk_darwin(v10 - 8);
  v12 = &v50 - v11;
  v13 = sub_100140278(&qword_1008E1900);
  __chkstk_darwin(v13 - 8);
  v15 = &v50 - v14;
  v16 = sub_100140278(&qword_1008E1908);
  v57 = *(v16 - 8);
  v58 = v16;
  __chkstk_darwin(v16);
  v55 = &v50 - v17;
  v18 = type metadata accessor for AttributeContainer();
  __chkstk_darwin(v18 - 8);
  v19 = type metadata accessor for AttributedString();
  v59 = *(v19 - 8);
  __chkstk_darwin(v19);
  v21 = &v50 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([*(v2 + *(type metadata accessor for FriendCompetitionView() + 28)) stage] == 1 && (v22 = objc_opt_self(), v23 = objc_msgSend(objc_allocWithZone(NSNumber), "initWithUnsignedInteger:", a1), v24 = objc_msgSend(v22, "stringWithNumber:decimalPrecision:", v23, 1), v23, v24))
  {
    v50 = v9;
    v54 = a2;
    v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v52 = v26;
    v53 = v25;

    v27 = objc_opt_self();
    v28 = [v27 mainBundle];
    v29 = String._bridgeToObjectiveC()();
    v30 = [v28 localizedStringForKey:v29 value:0 table:0];

    v51 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v32 = v31;

    v33 = [v27 mainBundle];
    v34 = String._bridgeToObjectiveC()();
    v35 = [v33 localizedStringForKey:v34 value:0 table:0];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_100140278(&unk_1008E4E50);
    v36 = swift_allocObject();
    *(v36 + 16) = xmmword_1006D1F70;
    *(v36 + 56) = &type metadata for String;
    v37 = sub_10000A788();
    v38 = v52;
    *(v36 + 32) = v53;
    *(v36 + 40) = v38;
    *(v36 + 96) = &type metadata for String;
    *(v36 + 104) = v37;
    v39 = v51;
    *(v36 + 64) = v37;
    *(v36 + 72) = v39;
    *(v36 + 80) = v32;

    String.init(format:_:)();

    AttributeContainer.init()();
    AttributedString.init(_:attributes:)();
    v60[0] = v39;
    v60[1] = v32;
    v40 = type metadata accessor for Locale();
    (*(*(v40 - 8) + 56))(v12, 1, 1, v40);
    sub_10007BD90();
    sub_10000FCBC();
    AttributedStringProtocol.range<A>(of:options:locale:)();
    sub_10000EA04(v12, &qword_1008EB540);

    if ((*(v57 + 48))(v15, 1, v58) == 1)
    {
      v41 = &qword_1008E1900;
      v42 = v15;
    }

    else
    {
      v45 = v55;
      sub_100015E80(v15, v55, &qword_1008E1908);
      v46 = v50;
      static Text.Scale.secondary.getter();
      v47 = type metadata accessor for Text.Scale();
      (*(*(v47 - 8) + 56))(v46, 0, 1, v47);
      sub_10014A6B0(&qword_1008E1920, &qword_1008E1908);
      v48 = AttributedString.subscript.modify();
      sub_10007C1D8(v46, v56);
      sub_10007C248();
      AttributedSubstring.subscript.setter();
      sub_10000EA04(v46, &qword_1008EF8C8);
      v48(v60, 0);
      v42 = v45;
      v41 = &qword_1008E1908;
    }

    sub_10000EA04(v42, v41);
    v49 = v54;
    if (qword_1008DAD10 != -1)
    {
      swift_once();
    }

    v60[0] = qword_100925D60;
    sub_10005F988();

    AttributedString.subscript.setter();
    (*(v59 + 32))(v49, v21, v19);
    return (*(v59 + 56))(v49, 0, 1, v19);
  }

  else
  {
    v43 = *(v59 + 56);

    return v43(a2, 1, 1, v19);
  }
}

uint64_t sub_10051A798(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CompetitionRowView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10051A7FC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CompetitionRowView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10051A860(uint64_t a1)
{
  v2 = type metadata accessor for CompetitionRowView();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10051A8BC()
{
  result = qword_1008F1640;
  if (!qword_1008F1640)
  {
    sub_100141EEC(&qword_1008F1630);
    sub_10014A6B0(&qword_1008F1648, &qword_1008F1620);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F1640);
  }

  return result;
}

char *sub_10051A974(unint64_t a1)
{
  v2 = v1;
  if (a1 >> 62)
  {
    v4 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v4)
  {
LABEL_12:
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v2 setColors:isa];

    return v2;
  }

  v17 = _swiftEmptyArrayStorage;
  result = sub_100185B84(0, v4 & ~(v4 >> 63), 0);
  if ((v4 & 0x8000000000000000) == 0)
  {
    v6 = 0;
    v7 = v17;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v8 = *(a1 + 8 * v6 + 32);
      }

      v9 = v8;
      v10 = [v8 CGColor];
      type metadata accessor for CGColor(0);
      v16 = v11;

      *&v15 = v10;
      v17 = v7;
      v13 = v7[2];
      v12 = v7[3];
      if (v13 >= v12 >> 1)
      {
        sub_100185B84((v12 > 1), v13 + 1, 1);
        v7 = v17;
      }

      ++v6;
      v7[2] = v13 + 1;
      sub_1001AA76C(&v15, &v7[4 * v13 + 4]);
    }

    while (v4 != v6);
    goto LABEL_12;
  }

  __break(1u);
  return result;
}

Swift::Int sub_10051AB04()
{
  v1 = v0;
  started = type metadata accessor for QuickStartWorkoutViewConfiguration();
  v3 = *(started - 8);
  __chkstk_darwin(started);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  Hasher.init()();
  v6 = type metadata accessor for QuickStartWorkoutCard();
  v7 = (v0 + v6[5]);
  v8 = *v7;
  v9 = *(v7 + 16);
  sub_100035B30(*v7, *(v7 + 16));
  String.hash(into:)();

  if (!v9 || v9 == 2)
  {
    Hasher._combine(_:)(v8);
  }

  else if (v9 == 1)
  {
    String.hash(into:)();
  }

  Hasher._combine(_:)(*(v1 + v6[6]));
  Hasher._combine(_:)(*(v1 + v6[7]));
  v10 = *(v1 + v6[8]);
  Hasher._combine(_:)(*(v10 + 16));
  v11 = *(v10 + 16);
  if (v11)
  {
    v14 = *(v3 + 16);
    v13 = v3 + 16;
    v12 = v14;
    v15 = v10 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
    v16 = *(v13 + 56);
    do
    {
      v12(v5, v15, started);
      sub_10051AE80(&qword_1008F1650, &type metadata accessor for QuickStartWorkoutViewConfiguration);
      dispatch thunk of Hashable.hash(into:)();
      (*(v13 - 8))(v5, started);
      v15 += v16;
      --v11;
    }

    while (v11);
  }

  return Hasher.finalize()();
}

uint64_t sub_10051AD2C()
{
  type metadata accessor for QuickStartWorkoutCard();
  _print_unlocked<A, B>(_:_:)();
  v0._countAndFlagsBits = 58;
  v0._object = 0xE100000000000000;
  String.append(_:)(v0);
  _print_unlocked<A, B>(_:_:)();
  v1._countAndFlagsBits = 58;
  v1._object = 0xE100000000000000;
  String.append(_:)(v1);
  type metadata accessor for UUID();
  sub_10051AE80(&qword_1008EE840, &type metadata accessor for UUID);
  v2._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v2);

  return 0;
}

uint64_t sub_10051AE80(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_10051AEF0()
{
  type metadata accessor for UUID();
  if (v0 <= 0x3F)
  {
    sub_10051AF98();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_10051AF98()
{
  if (!qword_1008F16C0)
  {
    type metadata accessor for QuickStartWorkoutViewConfiguration();
    v0 = type metadata accessor for Array();
    if (!v1)
    {
      atomic_store(v0, &qword_1008F16C0);
    }
  }
}

uint64_t sub_10051AFF0(_OWORD *a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v8 = a1[1];
  *(v4 + 16) = *a1;
  *(v4 + 32) = v8;
  *(v4 + 43) = *(a1 + 27);
  v9 = *(a2 + 16);
  *(v4 + 64) = *a2;
  *(v4 + 80) = v9;
  v10 = *(a2 + 80);
  *(v4 + 128) = *(a2 + 64);
  *(v4 + 144) = v10;
  v11 = *(a2 + 48);
  v13 = *a2;
  v12 = *(a2 + 16);
  v14 = *(a2 + 32);
  *(v4 + 96) = v14;
  *(v4 + 112) = v11;
  *(v4 + 184) = 0;
  *(v4 + 192) = 6;
  *(v4 + 208) = 0;
  *(v4 + 216) = 0;
  *(v4 + 200) = 0;
  *(v4 + 160) = *(a2 + 96);
  *(v4 + 168) = a3;
  *(v4 + 176) = 0;
  v58 = *(a2 + 48);
  v57[1] = v12;
  v57[2] = v14;
  v57[0] = v13;
  v15 = *(a2 + 58);
  v16 = *(a2 + 56);
  sub_1001AB220(a1, &v55);
  sub_1001AB1C4(a2, &v55);
  v17 = a3;
  v18 = sub_10051C4C0(v57);
  v19 = sub_10051C6CC(v18, v15, v17);
  v21 = v20;

  if (v19 < v21 && v16 == 2)
  {
    sub_1001AB2D0(a2);
    v22 = sub_10007C29C();
    v24 = v23;
    sub_1001AB27C(a1);
    static os_log_type_t.error.getter();
    v25 = HKLogActivity;
    sub_100140278(&unk_1008E4E50);
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_1006D46C0;
    *(v26 + 56) = &type metadata for String;
    v27 = sub_10000A788();
    *(v26 + 64) = v27;
    *(v26 + 32) = v22;
    *(v26 + 40) = v24;
    v28 = v25;
    os_log(_:dso:log:_:_:)();

    v55 = 0;
    v56 = 0xE000000000000000;
    _StringGuts.grow(_:)(50);
    v29._countAndFlagsBits = 0xD000000000000019;
    v29._object = 0x8000000100761150;
    String.append(_:)(v29);
    Double.write<A>(to:)();
    v30._countAndFlagsBits = 0xD000000000000015;
    v30._object = 0x8000000100761170;
    String.append(_:)(v30);
    Double.write<A>(to:)();
    v54 = v17;
    v31 = v55;
    v32 = v56;
    static os_log_type_t.error.getter();
    v33 = HKLogActivity;
    v34 = swift_allocObject();
    *(v34 + 16) = xmmword_1006D46C0;
    *(v34 + 56) = &type metadata for String;
    *(v34 + 64) = v27;
    *(v34 + 32) = v31;
    *(v34 + 40) = v32;
    v35 = v33;
    os_log(_:dso:log:_:_:)();

    v55 = 0;
    v56 = 0xE000000000000000;
    _StringGuts.grow(_:)(19);

    v55 = 0xD000000000000011;
    v56 = 0x8000000100761190;
    v36._countAndFlagsBits = 1853321060;
    v36._object = 0xE400000000000000;
    String.append(_:)(v36);

    v37 = v55;
    v38 = v56;
    static os_log_type_t.error.getter();
    v39 = HKLogActivity;
    v40 = swift_allocObject();
    *(v40 + 16) = xmmword_1006D46C0;
    *(v40 + 56) = &type metadata for String;
    *(v40 + 64) = v27;
    *(v40 + 32) = v37;
    *(v40 + 40) = v38;
    v41 = v39;
    os_log(_:dso:log:_:_:)();

    static os_log_type_t.error.getter();
    v42 = HKLogActivity;
    os_log(_:dso:log:_:_:)();

    sub_1001AB3E0();
    swift_allocError();
    swift_willThrow();
  }

  else
  {
    sub_1001AB27C(a1);
    v43 = *&v57[0];
    if (*(*&v57[0] + 16) == 365)
    {
      sub_1001AB2D0(a2);
    }

    else
    {
      v55 = 0;
      v56 = 0xE000000000000000;
      _StringGuts.grow(_:)(58);
      v44._countAndFlagsBits = 0xD000000000000037;
      v44._object = 0x800000010074A1C0;
      String.append(_:)(v44);
      v45 = *(v43 + 16);
      sub_1001AB2D0(a2);
      v59 = v45;
      v46._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v46);

      v47._countAndFlagsBits = 46;
      v47._object = 0xE100000000000000;
      String.append(_:)(v47);
      v48 = v55;
      v49 = v56;
      static os_log_type_t.error.getter();
      v50 = HKLogActivity;
      sub_100140278(&unk_1008E4E50);
      v51 = swift_allocObject();
      *(v51 + 16) = xmmword_1006D46C0;
      *(v51 + 56) = &type metadata for String;
      *(v51 + 64) = sub_10000A788();
      *(v51 + 32) = v48;
      *(v51 + 40) = v49;
      v52 = v50;
      os_log(_:dso:log:_:_:)();
    }
  }

  return v4;
}

void sub_10051B58C(uint64_t a1@<X8>)
{
  v2 = v1;
  if (*(v1 + 192) == 6)
  {
    v61 = a1;
    v3 = *(v1 + 122);
    v4 = sub_10007C29C();
    v6 = v5;
    static os_log_type_t.default.getter();
    v7 = HKLogActivity;
    sub_100140278(&unk_1008E4E50);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_1006D46C0;
    *(v8 + 56) = &type metadata for String;
    v9 = sub_10000A788();
    *(v8 + 64) = v9;
    *(v8 + 32) = v4;
    *(v8 + 40) = v6;
    v10 = v7;
    os_log(_:dso:log:_:_:)();

    v11 = *(v2 + 80);
    v68[0] = *(v2 + 64);
    v68[1] = v11;
    v68[2] = *(v2 + 96);
    v69 = *(v2 + 112);
    v67 = sub_10051C4C0(v68);
    v12 = sub_10051BFB0(&v67);
    v62 = *(v2 + 168);
    v13 = sub_10051C6CC(v67, v3, v62);
    v15 = v14;
    v17 = v16;

    *&v64 = 0;
    *(&v64 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(103);
    v18._countAndFlagsBits = 0xD000000000000027;
    v18._object = 0x8000000100761210;
    String.append(_:)(v18);
    v19._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v19);

    v20._countAndFlagsBits = 0xD000000000000010;
    v20._object = 0x80000001007611B0;
    String.append(_:)(v20);
    Double.write<A>(to:)();
    v21._object = 0x80000001007611D0;
    v21._countAndFlagsBits = 0x1000000000000011;
    String.append(_:)(v21);
    Double.write<A>(to:)();
    v22._countAndFlagsBits = 0x1000000000000017;
    v22._object = 0x80000001007611F0;
    String.append(_:)(v22);
    Double.write<A>(to:)();
    static os_log_type_t.default.getter();
    v23 = HKLogActivity;
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_1006D46C0;
    *(v24 + 56) = &type metadata for String;
    *(v24 + 64) = v9;
    *(v24 + 32) = v64;
    v25 = v23;
    os_log(_:dso:log:_:_:)();

    if (v12 < 2)
    {
      v26 = 0;
    }

    else if (v12 < 8)
    {
      v26 = 1;
    }

    else if (v12 <= 0x5A)
    {
      v26 = 2;
    }

    else
    {
      v26 = 3;
    }

    v29 = sub_1005831C0(v62, v3, v15);
    *(v2 + 176) = v29;
    *(v2 + 184) = v12;
    *(v2 + 192) = v26;
    *(v2 + 200) = v13;
    *(v2 + 208) = v15;
    *(v2 + 216) = v17;
    *&v65 = 0;
    *(&v65 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(50);
    v30._countAndFlagsBits = 0xD000000000000019;
    v30._object = 0x8000000100761150;
    String.append(_:)(v30);
    Double.write<A>(to:)();
    v31._object = 0x8000000100761170;
    v31._countAndFlagsBits = 0xD000000000000015;
    String.append(_:)(v31);
    Double.write<A>(to:)();
    static os_log_type_t.default.getter();
    v32 = HKLogActivity;
    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_1006D46C0;
    v63 = v12;
    *(v33 + 56) = &type metadata for String;
    *(v33 + 64) = v9;
    *(v33 + 32) = v65;
    v34 = v32;
    os_log(_:dso:log:_:_:)();

    _StringGuts.grow(_:)(19);

    v35 = 1952541798;
    if (*(v2 + 120) != 1)
    {
      v35 = 1853321060;
    }

    if (*(v2 + 120))
    {
      v36 = v35;
    }

    else
    {
      v36 = 28789;
    }

    if (*(v2 + 120))
    {
      v37 = 0xE400000000000000;
    }

    else
    {
      v37 = 0xE200000000000000;
    }

    v38 = v37;
    String.append(_:)(*&v36);

    static os_log_type_t.default.getter();
    v39 = HKLogActivity;
    v40 = swift_allocObject();
    *(v40 + 16) = xmmword_1006D46C0;
    *(v40 + 56) = &type metadata for String;
    *(v40 + 64) = v9;
    *(v40 + 32) = 0xD000000000000011;
    *(v40 + 40) = 0x8000000100761190;
    v41 = v39;
    os_log(_:dso:log:_:_:)();

    *&v66 = 0;
    *(&v66 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(40);
    v42._countAndFlagsBits = 0xD000000000000018;
    v42._object = 0x8000000100761240;
    String.append(_:)(v42);
    Double.write<A>(to:)();
    v43._countAndFlagsBits = 0x20726F6620;
    v43._object = 0xE500000000000000;
    String.append(_:)(v43);
    v44._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v44);

    v45._countAndFlagsBits = 0x29732879616420;
    v45._object = 0xE700000000000000;
    String.append(_:)(v45);
    static os_log_type_t.default.getter();
    v46 = HKLogActivity;
    v47 = swift_allocObject();
    *(v47 + 16) = xmmword_1006D46C0;
    *(v47 + 56) = &type metadata for String;
    *(v47 + 64) = v9;
    *(v47 + 32) = v66;
    v48 = v46;
    os_log(_:dso:log:_:_:)();

    *&v66 = 0;
    *(&v66 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(35);
    v49._countAndFlagsBits = 0xD000000000000021;
    v49._object = 0x8000000100761260;
    String.append(_:)(v49);
    Double.write<A>(to:)();
    static os_log_type_t.default.getter();
    v50 = HKLogActivity;
    v51 = swift_allocObject();
    *(v51 + 16) = xmmword_1006D46C0;
    *(v51 + 56) = &type metadata for String;
    *(v51 + 64) = v9;
    *(v51 + 32) = v66;
    v52 = v50;
    os_log(_:dso:log:_:_:)();

    *&v66 = 0;
    *(&v66 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(25);
    v53._countAndFlagsBits = 0xD000000000000017;
    v53._object = 0x8000000100761290;
    String.append(_:)(v53);
    _print_unlocked<A, B>(_:_:)();
    static os_log_type_t.default.getter();
    v54 = HKLogActivity;
    v55 = swift_allocObject();
    *(v55 + 16) = xmmword_1006D46C0;
    *(v55 + 56) = &type metadata for String;
    *(v55 + 64) = v9;
    *(v55 + 32) = v66;
    v56 = v54;
    os_log(_:dso:log:_:_:)();

    *&v66 = 0;
    *(&v66 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(23);
    v57._object = 0x80000001007612B0;
    v57._countAndFlagsBits = 0xD000000000000015;
    String.append(_:)(v57);
    _print_unlocked<A, B>(_:_:)();
    static os_log_type_t.default.getter();
    v58 = HKLogActivity;
    v59 = swift_allocObject();
    *(v59 + 16) = xmmword_1006D46C0;
    *(v59 + 56) = &type metadata for String;
    *(v59 + 64) = v9;
    *(v59 + 32) = v66;
    v60 = v58;
    v28 = v26;
    os_log(_:dso:log:_:_:)();

    a1 = v61;
    v27 = v63;
  }

  else
  {
    v15 = *(v1 + 208);
    v17 = *(v1 + 216);
    v13 = *(v1 + 200);
    v27 = *(v1 + 184);
    v28 = *(v1 + 192);
    v29 = *(v1 + 176);
  }

  *a1 = v29;
  *(a1 + 8) = v27;
  *(a1 + 16) = v28;
  *(a1 + 24) = v13;
  *(a1 + 32) = v15;
  *(a1 + 40) = v17;
}

uint64_t sub_10051BFB0(char **a1)
{
  v2 = v1;
  v32 = *(v1 + 122);
  v3 = *(v1 + 128);
  v4 = *a1;
  v5 = sub_10051C59C(*a1, 0x5AuLL);
  v6 = sub_1001E7414(v5);

  for (i = 0; i != 365; ++i)
  {
    v8 = sub_10051C6CC(v4, v32, *(v2 + 168));
    if (v8 < v9)
    {
      break;
    }

    v10 = sub_10051C59C(v4, 0x16DuLL);
    sub_1001E7414(v10);

    v11 = sub_10051C59C(v4, 0x5AuLL);
    sub_1001E7414(v11);
    v13 = v12;

    v14 = *(v4 + 2);
    if (v14)
    {
      sub_10031125C(v4, (v4 + 32), 1, (2 * v14) | 1);
      v29 = v28;

      v4 = v29;
    }

    v15 = *(sub_10051C59C(v4, 0x5AuLL) + 2);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v4 = sub_10001C47C(0, *(v4 + 2) + 1, 1, v4);
    }

    v17 = *(v4 + 2);
    v16 = *(v4 + 3);
    if (v17 >= v16 >> 1)
    {
      v4 = sub_10001C47C((v16 > 1), v17 + 1, 1, v4);
    }

    *(v4 + 2) = v17 + 1;
    v18 = &v4[24 * v17];
    *(v18 + 4) = v3 * v6;
    *(v18 + 5) = v13 / v15;
    v18[48] = 0;
    *a1 = v4;
    _StringGuts.grow(_:)(93);
    v19._countAndFlagsBits = 0x73646E657274235BLL;
    v19._object = 0xEE0020796144205DLL;
    String.append(_:)(v19);
    v20._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v20);

    v21._object = 0x80000001007611B0;
    v21._countAndFlagsBits = 0xD000000000000010;
    String.append(_:)(v21);
    Double.write<A>(to:)();
    v22._object = 0x80000001007611D0;
    v22._countAndFlagsBits = 0x1000000000000011;
    String.append(_:)(v22);
    Double.write<A>(to:)();
    v23._countAndFlagsBits = 0x1000000000000017;
    v23._object = 0x80000001007611F0;
    String.append(_:)(v23);
    Double.write<A>(to:)();
    v24._countAndFlagsBits = 0x69655720A280E220;
    v24._object = 0xAD0000203A746867;
    String.append(_:)(v24);
    Double.write<A>(to:)();
    static os_log_type_t.debug.getter();
    v25 = HKLogActivity;
    sub_100140278(&unk_1008E4E50);
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_1006D46C0;
    *(v26 + 56) = &type metadata for String;
    *(v26 + 64) = sub_10000A788();
    *(v26 + 32) = 0;
    *(v26 + 40) = 0xE000000000000000;
    v27 = v25;
    os_log(_:dso:log:_:_:)();
  }

  return i;
}

uint64_t sub_10051C3BC(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    type metadata accessor for TrendListMetric();
    return a2;
  }

  return result;
}

uint64_t sub_10051C444()
{

  return swift_deallocClassInstance();
}

char *sub_10051C4C0(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 16);
  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

  v3 = sub_10001C47C(0, 1, 1, _swiftEmptyArrayStorage);
  v4 = *(v3 + 2);
  v5 = 24 * v4;
  v6 = (v1 + 48);
  do
  {
    v7 = *(v6 - 1);
    v8 = *v6;
    v9 = *(v3 + 3);
    v10 = v4 + 1;
    if (v4 >= v9 >> 1)
    {
      v14 = *(v6 - 1);
      v12 = sub_10001C47C((v9 > 1), v4 + 1, 1, v3);
      v7 = v14;
      v3 = v12;
    }

    *(v3 + 2) = v10;
    v11 = &v3[v5];
    *(v11 + 2) = v7;
    v11[48] = v8;
    v5 += 24;
    v6 += 24;
    v4 = v10;
    --v2;
  }

  while (v2);
  return v3;
}

char *sub_10051C59C(char *result, unint64_t a2)
{
  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v3 = result;
    v4 = *(result + 2);
    v5 = v4 - a2;
    if (v4 < a2)
    {
      v5 = 0;
    }

    if (v5 == v4)
    {
      return _swiftEmptyArrayStorage;
    }

    if (v5 < v4)
    {

      if (v4 >= a2)
      {
        v7 = a2;
      }

      else
      {
        v7 = v4;
      }

      v8 = v3 + 24 * v4 - 24 * v7 + 48;
      v6 = _swiftEmptyArrayStorage;
      do
      {
        if ((*v8 & 1) == 0)
        {
          v11 = *(v8 - 1);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v6 = sub_1001A1EA0(0, *(v6 + 2) + 1, 1, v6);
          }

          v10 = *(v6 + 2);
          v9 = *(v6 + 3);
          if (v10 >= v9 >> 1)
          {
            v6 = sub_1001A1EA0((v9 > 1), v10 + 1, 1, v6);
          }

          *(v6 + 2) = v10 + 1;
          *&v6[16 * v10 + 32] = v11;
        }

        v8 += 24;
        --v7;
      }

      while (v7);
      swift_unknownObjectRelease();
      return v6;
    }
  }

  __break(1u);
  return result;
}

double sub_10051C6CC(char *a1, char a2, void *a3)
{
  v6 = sub_10051C59C(a1, 0x16DuLL);
  v7 = sub_1001E7414(v6);

  v8 = sub_1005831C0(a3, a2, v7);
  v9 = sub_10058264C(a3, a2);
  v10 = objc_opt_self();
  v11 = [v10 quantityWithUnit:v9 doubleValue:v8];

  LOBYTE(v9) = byte_1006F70DA[a2];
  v12 = sub_1003D2500(v9);
  [v11 doubleValueForUnit:v12];
  v14 = v13;

  v15 = sub_10051C59C(a1, 0x5AuLL);
  v16 = sub_1001E7414(v15);

  v17 = sub_1005831C0(a3, a2, v16);
  v18 = sub_10058264C(a3, a2);
  v19 = [v10 quantityWithUnit:v18 doubleValue:v17];

  v20 = sub_1003D2500(v9);
  [v19 doubleValueForUnit:v20];

  return v14;
}

unint64_t sub_10051C878()
{
  result = qword_1008F17E8;
  if (!qword_1008F17E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F17E8);
  }

  return result;
}

unint64_t sub_10051C8D0()
{
  result = qword_1008F17F0;
  if (!qword_1008F17F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F17F0);
  }

  return result;
}

uint64_t sub_10051C928@<X0>(uint64_t *a1@<X8>)
{
  sub_100140278(&qword_1008DD148);
  type metadata accessor for AppDependencyManager();
  static AppDependencyManager.shared.getter();
  v2 = AppDependency.__allocating_init(key:manager:)();
  sub_100140278(&qword_1008DD150);
  static AppDependencyManager.shared.getter();
  result = AppDependency.__allocating_init(key:manager:)();
  *a1 = v2;
  a1[1] = result;
  return result;
}

uint64_t sub_10051C9EC(uint64_t a1)
{
  v4 = *(v1 + 8);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100202054;

  return (sub_10051DC60)(a1, v4);
}

uint64_t sub_10051CAA0(uint64_t a1)
{
  *(v2 + 16) = a1;
  v3 = *(v1 + 8);
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_10016200C;

  return sub_10051E564(v3);
}

unint64_t sub_10051CB50()
{
  result = qword_1008F17F8;
  if (!qword_1008F17F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F17F8);
  }

  return result;
}

unint64_t sub_10051CBAC()
{
  result = qword_1008F1800;
  if (!qword_1008F1800)
  {
    sub_100141EEC(&qword_1008F1808);
    sub_100268B74();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F1800);
  }

  return result;
}

uint64_t sub_10051CC30(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_1002680B0();
  *v5 = v2;
  v5[1] = sub_10002BACC;

  return EntityQuery.results()(a1, a2, v6);
}

BOOL sub_10051CCF4(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24);
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  if (*(a1 + 32))
  {
    v5 = 0x6D6F74737563;
  }

  else
  {
    v5 = 0x647261646E617473;
  }

  if (*(a1 + 32))
  {
    v6 = 0xE600000000000000;
  }

  else
  {
    v6 = 0xE800000000000000;
  }

  if (*(a2 + 32))
  {
    v7 = 0x6D6F74737563;
  }

  else
  {
    v7 = 0x647261646E617473;
  }

  if (*(a2 + 32))
  {
    v8 = 0xE600000000000000;
  }

  else
  {
    v8 = 0xE800000000000000;
  }

  if (v5 == v7 && v6 == v8)
  {
  }

  else
  {
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v10 & 1) == 0)
    {
      return 0;
    }
  }

  if (*(a1 + 40) == *(a2 + 40))
  {
    return *(a1 + 48) == *(a2 + 48);
  }

  return 0;
}

void sub_10051CE08(void *a1, char a2, uint64_t *a3)
{
  v101 = *a3;
  v5 = sub_100140278(&qword_1008DED28);
  v6 = __chkstk_darwin(v5 - 8);
  v100 = &v68 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v99 = &v68 - v8;
  v9 = sub_100140278(&qword_1008DEC70);
  v10 = __chkstk_darwin(v9 - 8);
  v98 = &v68 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v97 = &v68 - v12;
  v13 = type metadata accessor for LocalizedStringResource();
  __chkstk_darwin(v13 - 8);
  v96 = &v68 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = sub_100140278(&qword_1008DED40);
  v15 = *(v95 - 8);
  __chkstk_darwin(v95);
  v113 = &v68 - v16;
  v94 = sub_100140278(&qword_1008DEC88);
  v17 = *(v94 - 8);
  __chkstk_darwin(v94);
  v112 = &v68 - v18;
  v93 = sub_100140278(&qword_1008DEC58);
  v19 = *(v93 - 8);
  v20 = __chkstk_darwin(v93);
  v92 = &v68 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v20);
  v91 = &v68 - v23;
  __chkstk_darwin(v22);
  v111 = &v68 - v24;
  v90 = type metadata accessor for UUID();
  v25 = *(v90 - 8);
  __chkstk_darwin(v90);
  v89 = &v68 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = a1;
  v69 = [a1 fiui_activityType];
  if (!v69)
  {
    return;
  }

  AppDependency.wrappedValue.getter();
  v27 = v122;
  v28 = [v122 unitManager];

  if (!v28)
  {
    __break(1u);
    return;
  }

  v29 = [v28 userDistanceHKUnitForActivityType:v69];

  v88 = FIUIDistanceTypeForActivityType();
  v30 = [v29 _isMetricDistance];
  v31 = 1;
  if (!v30)
  {
    v31 = 2;
  }

  v87 = v31;
  if ((a2 & 1) == 0)
  {
    v32 = [v102 fiui_workoutSplitsForUserPreferredDistanceUnit:v29];
    if (v32)
    {
      goto LABEL_7;
    }

LABEL_27:

    return;
  }

  v32 = [v102 fiui_workoutCustomSplits];
  if (!v32)
  {
    goto LABEL_27;
  }

LABEL_7:
  v33 = v32;
  sub_1000059F8(0, &qword_1008F1810);
  v34 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v34 >> 62)
  {
    goto LABEL_31;
  }

  for (i = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v36 = 0;
    v86 = v34 & 0xC000000000000001;
    v85 = v34 & 0xFFFFFFFFFFFFFF8;
    v81 = (v25 + 8);
    v37 = "rectangle.split.1x2";
    v80 = a2 & 1;
    v38 = 0xD000000000000013;
    if (a2)
    {
      v38 = 0xD000000000000018;
    }

    v79 = v38;
    if ((a2 & 1) == 0)
    {
      v37 = "entityIdentifierString";
    }

    v78 = v37 | 0x8000000000000000;
    v77 = (v19 + 16);
    v76 = (v19 + 8);
    v75 = (v17 + 16);
    v74 = (v17 + 56);
    v73 = (v15 + 16);
    v72 = (v15 + 56);
    v71 = (v15 + 8);
    v70 = (v17 + 8);
    v25 = _swiftEmptyArrayStorage;
    v84 = v29;
    v83 = v34;
    v82 = i;
    while (v86)
    {
      v39 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v40 = v36 + 1;
      if (__OFADD__(v36, 1))
      {
        goto LABEL_29;
      }

LABEL_17:
      v108 = v40;
      v41 = v39;
      v42 = [v102 UUID];
      v43 = v89;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v110 = UUID.uuidString.getter();
      v45 = v44;
      (*v81)(v43, v90);
      [v41 duration];
      v46 = [objc_opt_self() seconds];
      sub_1000059F8(0, &qword_1008DEE10);
      v47 = v111;
      Measurement.init(value:unit:)();
      [v41 distanceInMeters];
      v48 = [objc_opt_self() meters];
      sub_1000059F8(0, &qword_1008DEE38);
      v49 = v112;
      Measurement.init(value:unit:)();
      v115 = v41;
      [v41 distanceInMeters];
      [v41 duration];
      v50 = [objc_opt_self() metersPerSecond];
      sub_1000059F8(0, &qword_1008DEE28);
      Measurement.init(value:unit:)();
      sub_100140278(&qword_1008DEDD0);
      LocalizedStringResource.init(stringLiteral:)();
      v105 = EntityProperty<>.init(title:)();
      sub_100140278(&qword_1008DEDD8);
      LocalizedStringResource.init(stringLiteral:)();
      v104 = EntityProperty<>.init(title:)();
      sub_100140278(&qword_1008DEDE0);
      LocalizedStringResource.init(stringLiteral:)();
      v114 = EntityProperty<>.init(title:)();
      sub_100140278(&qword_1008DEE08);
      LocalizedStringResource.init(stringLiteral:)();
      v106 = EntityProperty<>.init(title:)();
      type metadata accessor for AppDependencyManager();
      v122 = 0u;
      v123 = 0u;
      v124 = 0;
      static AppDependencyManager.shared.getter();
      v107 = AppDependency.__allocating_init(key:manager:)();
      type metadata accessor for WorkoutSplitIdentifier();
      v51 = swift_allocObject();
      *(v51 + 16) = v110;
      *(v51 + 24) = v45;
      *(v51 + 32) = v80;
      *(v51 + 40) = v87;
      *(v51 + 48) = v36;
      v110 = v36;
      *&v122 = v36;
      EntityProperty.wrappedValue.setter();
      v52 = *v77;
      v109 = v25;
      v53 = v91;
      v54 = v93;
      v52(v91, v47, v93);
      v52(v92, v53, v54);
      EntityProperty.wrappedValue.setter();
      a2 = v76;
      v103 = *v76;
      v103(v53, v54);
      v55 = v97;
      v56 = v94;
      (*v75)(v97, v49, v94);
      (*v74)(v55, 0, 1, v56);
      sub_10001B104(v55, v98, &qword_1008DEC70);
      EntityProperty.wrappedValue.setter();
      sub_10000EA04(v55, &qword_1008DEC70);
      v19 = v99;
      v57 = v113;
      v58 = v95;
      (*v73)(v99, v113, v95);
      (*v72)(v19, 0, 1, v58);
      v15 = "j:\n";
      sub_10001B104(v19, v100, &qword_1008DED28);
      v59 = v106;
      EntityProperty.wrappedValue.setter();

      sub_10000EA04(v19, &qword_1008DED28);
      v60 = v58;
      v25 = v109;
      (*v71)(v57, v60);
      (*v70)(v112, v56);
      v103(v111, v54);
      *&v117 = v51;
      *(&v117 + 1) = v105;
      *&v118 = v104;
      *(&v118 + 1) = v114;
      *&v119 = v59;
      *(&v119 + 1) = v88;
      *&v120 = v107;
      *(&v120 + 1) = v79;
      v121 = v78;
      *&v122 = v51;
      *(&v122 + 1) = v105;
      *&v123 = v104;
      *(&v123 + 1) = v114;
      v124 = v59;
      v125 = v88;
      v126 = v107;
      v127 = v79;
      v128 = v78;
      sub_1002CC418(&v117, v116);
      sub_10040765C(&v122);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v25 = sub_1001A30C0(0, *(v25 + 2) + 1, 1, v25);
      }

      v29 = v84;
      v62 = *(v25 + 2);
      v61 = *(v25 + 3);
      v17 = v62 + 1;
      v34 = v83;
      v63 = v110;
      if (v62 >= v61 >> 1)
      {
        v25 = sub_1001A30C0((v61 > 1), v62 + 1, 1, v25);
      }

      *(v25 + 2) = v17;
      v64 = &v25[72 * v62];
      *(v64 + 2) = v117;
      v65 = v118;
      v66 = v119;
      v67 = v120;
      *(v64 + 12) = v121;
      *(v64 + 4) = v66;
      *(v64 + 5) = v67;
      *(v64 + 3) = v65;
      v36 = v63 + 1;
      if (v108 == v82)
      {
        goto LABEL_32;
      }
    }

    if (v36 >= *(v85 + 16))
    {
      goto LABEL_30;
    }

    v39 = *(v34 + 8 * v36 + 32);
    v40 = v36 + 1;
    if (!__OFADD__(v36, 1))
    {
      goto LABEL_17;
    }

LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    ;
  }

LABEL_32:
}

uint64_t sub_10051DC60(uint64_t a1, void *a2)
{
  v2[86] = a2;
  v2[85] = a1;
  v2[87] = *a2;
  return _swift_task_switch(sub_10051DCAC, 0, 0);
}

char *sub_10051DCAC()
{
  v1 = v0[85];
  if (v1 >> 62)
  {
    v2 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v2)
  {
    result = sub_100073020(0, v2 & ~(v2 >> 63), 0);
    if (v2 < 0)
    {
      __break(1u);
      return result;
    }

    if ((v1 & 0xC000000000000001) != 0)
    {
      v4 = 0;
      do
      {
        v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v7 = *(v5 + 16);
        v6 = *(v5 + 24);

        swift_unknownObjectRelease();
        v9 = _swiftEmptyArrayStorage[2];
        v8 = _swiftEmptyArrayStorage[3];
        if (v9 >= v8 >> 1)
        {
          sub_100073020((v8 > 1), v9 + 1, 1);
        }

        ++v4;
        _swiftEmptyArrayStorage[2] = v9 + 1;
        v10 = &_swiftEmptyArrayStorage[2 * v9];
        v10[4] = v7;
        v10[5] = v6;
      }

      while (v2 != v4);
    }

    else
    {
      v11 = v0[85] + 32;
      v12 = _swiftEmptyArrayStorage[2];
      v13 = 2 * v12;
      do
      {
        v15 = *(*v11 + 16);
        v14 = *(*v11 + 24);
        v16 = _swiftEmptyArrayStorage[3];
        v17 = v12 + 1;

        if (v12 >= v16 >> 1)
        {
          sub_100073020((v16 > 1), v17, 1);
        }

        _swiftEmptyArrayStorage[2] = v17;
        v18 = &_swiftEmptyArrayStorage[v13];
        v18[4] = v15;
        v18[5] = v14;
        v13 += 2;
        v11 += 8;
        ++v12;
        --v2;
      }

      while (v2);
    }
  }

  v0[88] = _swiftEmptyArrayStorage;
  sub_100140278(&qword_1008DD148);
  type metadata accessor for AppDependencyManager();
  static AppDependencyManager.shared.getter();
  v19 = AppDependency.__allocating_init(key:manager:)();
  v0[89] = v19;
  static AppDependencyManager.shared.getter();
  v0[90] = AppDependency.__allocating_init(key:manager:)();
  sub_100140278(&qword_1008DFB48);
  static AppDependencyManager.shared.getter();
  v20 = AppDependency.__allocating_init(key:manager:)();
  v0[91] = v20;
  v21 = swift_task_alloc();
  v0[92] = v21;
  *v21 = v0;
  v21[1] = sub_10051DF90;

  return sub_100207400(_swiftEmptyArrayStorage, v19, v20);
}

uint64_t sub_10051DF90(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 744) = a1;
  *(v3 + 752) = v1;

  if (v1)
  {
    v4 = sub_100466BC0;
  }

  else
  {

    v4 = sub_10051E0DC;
  }

  return _swift_task_switch(v4, 0, 0);
}

void sub_10051E0DC()
{
  v1 = *(v0 + 744);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = (v1 + 32);
    v4 = v2 - 1;
    v5 = _swiftEmptyArrayStorage;
    while (1)
    {
      v6 = *(v0 + 688);
      v7 = v3[3];
      v9 = *v3;
      v8 = v3[1];
      *(v0 + 48) = v3[2];
      *(v0 + 64) = v7;
      *(v0 + 16) = v9;
      *(v0 + 32) = v8;
      v10 = v3[7];
      v12 = v3[4];
      v11 = v3[5];
      *(v0 + 112) = v3[6];
      *(v0 + 128) = v10;
      *(v0 + 80) = v12;
      *(v0 + 96) = v11;
      v13 = v3[11];
      v15 = v3[8];
      v14 = v3[9];
      *(v0 + 176) = v3[10];
      *(v0 + 192) = v13;
      *(v0 + 144) = v15;
      *(v0 + 160) = v14;
      v16 = v3[15];
      v18 = v3[12];
      v17 = v3[13];
      *(v0 + 240) = v3[14];
      *(v0 + 256) = v16;
      *(v0 + 208) = v18;
      *(v0 + 224) = v17;
      v19 = *(v0 + 240);
      sub_1001C6FE0(v0 + 16, v0 + 272);
      sub_10051CE08(v19, 0, v6);
      v21 = *(v20 + 16);
      v22 = *(v5 + 2);
      v23 = v22 + v21;
      if (__OFADD__(v22, v21))
      {
LABEL_49:
        __break(1u);
LABEL_50:
        __break(1u);
LABEL_51:
        __break(1u);
LABEL_52:
        __break(1u);
LABEL_53:
        __break(1u);
LABEL_54:
        __break(1u);
LABEL_55:
        __break(1u);
LABEL_56:
        __break(1u);
        return;
      }

      v24 = v20;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (isUniquelyReferenced_nonNull_native && v23 <= *(v5 + 3) >> 1)
      {
        if (*(v24 + 16))
        {
          goto LABEL_7;
        }
      }

      else
      {
        if (v22 <= v23)
        {
          v29 = v22 + v21;
        }

        else
        {
          v29 = v22;
        }

        v5 = sub_1001A30C0(isUniquelyReferenced_nonNull_native, v29, 1, v5);
        if (*(v24 + 16))
        {
LABEL_7:
          if ((*(v5 + 3) >> 1) - *(v5 + 2) < v21)
          {
            goto LABEL_53;
          }

          swift_arrayInitWithCopy();

          if (v21)
          {
            v26 = *(v5 + 2);
            v27 = __OFADD__(v26, v21);
            v28 = v26 + v21;
            if (v27)
            {
              goto LABEL_55;
            }

            *(v5 + 2) = v28;
          }

          goto LABEL_16;
        }
      }

      if (v21)
      {
        goto LABEL_50;
      }

LABEL_16:
      sub_10051CE08(v19, 1, *(v0 + 688));
      v31 = *(v30 + 16);
      v32 = *(v5 + 2);
      v33 = v32 + v31;
      if (__OFADD__(v32, v31))
      {
        goto LABEL_51;
      }

      v34 = *(v5 + 3) >> 1;
      if (v34 < v33)
      {
        if (v32 <= v33)
        {
          v37 = v32 + v31;
        }

        else
        {
          v37 = *(v5 + 2);
        }

        v38 = v30;
        v5 = sub_1001A30C0(1, v37, 1, v5);
        v32 = *(v5 + 2);
        v34 = *(v5 + 3) >> 1;
        if (*(v38 + 16))
        {
LABEL_19:
          if ((v34 - v32) < v31)
          {
            goto LABEL_54;
          }

          swift_arrayInitWithCopy();

          if (v31)
          {
            v35 = *(v5 + 2);
            v27 = __OFADD__(v35, v31);
            v36 = v35 + v31;
            if (v27)
            {
              goto LABEL_56;
            }

            *(v5 + 2) = v36;
          }

          goto LABEL_28;
        }
      }

      else if (v31)
      {
        goto LABEL_19;
      }

      if (v31)
      {
        goto LABEL_52;
      }

LABEL_28:
      sub_1001C7018(v0 + 16);
      if (!v4)
      {

        v39 = *(v5 + 2);
        if (!v39)
        {
          goto LABEL_44;
        }

LABEL_31:
        v40 = 0;
        v41 = (v0 + 528);
        v60 = v39;
        v58 = v39 - 1;
        v42 = v5 + 32;
        v43 = _swiftEmptyArrayStorage;
        do
        {
          v59 = v43;
          v44 = &v42[72 * v40];
          v45 = v40;
          while (1)
          {
            if (v45 >= *(v5 + 2))
            {
              __break(1u);
              goto LABEL_49;
            }

            v46 = *(v0 + 680);
            *v41 = *v44;
            v47 = *(v44 + 1);
            v48 = *(v44 + 2);
            v49 = *(v44 + 3);
            *(v0 + 592) = *(v44 + 8);
            *(v0 + 560) = v48;
            *(v0 + 576) = v49;
            *(v0 + 544) = v47;
            v40 = v45 + 1;
            *(v0 + 672) = *(v0 + 528);
            v50 = swift_task_alloc();
            *(v50 + 16) = v0 + 672;
            sub_1002CC418(v0 + 528, v0 + 600);

            LOBYTE(v46) = sub_100324634(sub_10051E9E8, v50, v46);

            if (v46)
            {
              break;
            }

            sub_10040765C(v0 + 528);
            v44 += 72;
            ++v45;
            if (v60 == v40)
            {
              v43 = v59;
              goto LABEL_45;
            }
          }

          v43 = v59;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_100186480(0, v59[2] + 1, 1);
            v43 = v59;
          }

          v52 = v43[2];
          v51 = v43[3];
          if (v52 >= v51 >> 1)
          {
            sub_100186480((v51 > 1), v52 + 1, 1);
            v43 = v59;
          }

          v43[2] = v52 + 1;
          v53 = &v43[9 * v52];
          *(v53 + 2) = *v41;
          v54 = *(v0 + 544);
          v55 = *(v0 + 560);
          v56 = *(v0 + 576);
          v53[12] = *(v0 + 592);
          *(v53 + 4) = v55;
          *(v53 + 5) = v56;
          *(v53 + 3) = v54;
          v42 = v5 + 32;
        }

        while (v58 != v45);
        goto LABEL_45;
      }

      --v4;
      v3 += 16;
    }
  }

  v5 = _swiftEmptyArrayStorage;
  v39 = _swiftEmptyArrayStorage[2];
  if (v39)
  {
    goto LABEL_31;
  }

LABEL_44:
  v43 = _swiftEmptyArrayStorage;
LABEL_45:

  v57 = *(v0 + 8);

  v57(v43);
}

uint64_t sub_10051E564(void *a1)
{
  *(v1 + 528) = a1;
  *(v1 + 536) = *a1;
  return _swift_task_switch(sub_10051E5AC, 0, 0);
}

uint64_t sub_10051E5AC()
{
  sub_100140278(&qword_1008DD148);
  type metadata accessor for AppDependencyManager();
  static AppDependencyManager.shared.getter();
  v1 = AppDependency.__allocating_init(key:manager:)();
  v0[68] = v1;
  static AppDependencyManager.shared.getter();
  v0[69] = AppDependency.__allocating_init(key:manager:)();
  sub_100140278(&qword_1008DFB48);
  static AppDependencyManager.shared.getter();
  v2 = AppDependency.__allocating_init(key:manager:)();
  v0[70] = v2;
  v3 = swift_task_alloc();
  v0[71] = v3;
  *v3 = v0;
  v3[1] = sub_10051E724;

  return sub_100207EA8(v1, v2);
}

uint64_t sub_10051E724(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 576) = a1;
  *(v3 + 584) = v1;

  if (v1)
  {
    v4 = sub_1004675F4;
  }

  else
  {

    v4 = sub_10051E864;
  }

  return _swift_task_switch(v4, 0, 0);
}

void sub_10051E864()
{
  v1 = *(v0 + 576);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = 0;
    v4 = (v1 + 32);
    while (v3 < *(v1 + 16))
    {
      v5 = *(v0 + 528);
      v6 = v4[3];
      v8 = *v4;
      v7 = v4[1];
      *(v0 + 48) = v4[2];
      *(v0 + 64) = v6;
      *(v0 + 16) = v8;
      *(v0 + 32) = v7;
      v9 = v4[7];
      v11 = v4[4];
      v10 = v4[5];
      *(v0 + 112) = v4[6];
      *(v0 + 128) = v9;
      *(v0 + 80) = v11;
      *(v0 + 96) = v10;
      v12 = v4[11];
      v14 = v4[8];
      v13 = v4[9];
      *(v0 + 176) = v4[10];
      *(v0 + 192) = v12;
      *(v0 + 144) = v14;
      *(v0 + 160) = v13;
      v15 = v4[15];
      v17 = v4[12];
      v16 = v4[13];
      *(v0 + 240) = v4[14];
      *(v0 + 256) = v15;
      *(v0 + 208) = v17;
      *(v0 + 224) = v16;
      v18 = *(v0 + 240);
      sub_1001C6FE0(v0 + 16, v0 + 272);
      sub_10051CE08(v18, 1, v5);
      if (v19[2])
      {
        v24 = v19;

        sub_1001C7018(v0 + 16);
        v23 = v24;
        goto LABEL_10;
      }

      v20 = *(v0 + 528);

      sub_10051CE08(v18, 0, v20);
      v22 = v21;
      sub_1001C7018(v0 + 16);
      if (v22[2])
      {

        v23 = v22;
        goto LABEL_10;
      }

      ++v3;

      v4 += 16;
      if (v2 == v3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_7:

    v23 = _swiftEmptyArrayStorage;
LABEL_10:
    v25 = *(v0 + 8);

    v25(v23);
  }
}

char *sub_10051EA10(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC10FitnessApp44WorkoutDetailGuidedRunMediaMomentArtworkCell_imageView;
  v10 = [objc_allocWithZone(UIImageView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v11 = [v10 layer];
  [v11 setCornerRadius:6.0];

  [v10 setClipsToBounds:1];
  [v10 setTranslatesAutoresizingMaskIntoConstraints:0];

  *&v4[v9] = v10;
  v15.receiver = v4;
  v15.super_class = type metadata accessor for WorkoutDetailGuidedRunMediaMomentArtworkCell();
  v12 = objc_msgSendSuper2(&v15, "initWithFrame:", a1, a2, a3, a4);
  v13 = [v12 contentView];
  [v13 addSubview:*&v12[OBJC_IVAR____TtC10FitnessApp44WorkoutDetailGuidedRunMediaMomentArtworkCell_imageView]];

  sub_10051EB8C();
  return v12;
}

void sub_10051EB8C()
{
  v1 = v0;
  v2 = objc_opt_self();
  sub_100140278(&unk_1008E4E20);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1006D5300;
  v4 = *&v1[OBJC_IVAR____TtC10FitnessApp44WorkoutDetailGuidedRunMediaMomentArtworkCell_imageView];
  v5 = [v4 topAnchor];
  v6 = [v1 contentView];
  v7 = [v6 topAnchor];

  v8 = [v5 constraintEqualToAnchor:v7];
  *(v3 + 32) = v8;
  v9 = [v4 leadingAnchor];
  v10 = [v1 contentView];
  v11 = [v10 leadingAnchor];

  v12 = [v9 constraintEqualToAnchor:v11];
  *(v3 + 40) = v12;
  v13 = [v4 trailingAnchor];
  v14 = [v1 contentView];
  v15 = [v14 trailingAnchor];

  v16 = [v13 constraintEqualToAnchor:v15];
  *(v3 + 48) = v16;
  v17 = [v4 bottomAnchor];
  v18 = [v1 contentView];
  v19 = [v18 bottomAnchor];

  v20 = [v17 constraintEqualToAnchor:v19];
  *(v3 + 56) = v20;
  sub_10019EC5C();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v2 activateConstraints:isa];
}

id sub_10051EE68()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WorkoutDetailGuidedRunMediaMomentArtworkCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_10051EED0()
{
  v1 = OBJC_IVAR____TtC10FitnessApp44WorkoutDetailGuidedRunMediaMomentArtworkCell_imageView;
  v2 = [objc_allocWithZone(UIImageView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v3 = [v2 layer];
  [v3 setCornerRadius:6.0];

  [v2 setClipsToBounds:1];
  [v2 setTranslatesAutoresizingMaskIntoConstraints:0];

  *(v0 + v1) = v2;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t type metadata accessor for WorkoutChartableMetricsView()
{
  result = qword_1008F18A0;
  if (!qword_1008F18A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10051F040()
{
  sub_10017B148();
  if (v0 <= 0x3F)
  {
    type metadata accessor for WorkoutChartDataStore();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_10051F104(uint64_t a1)
{
  v2 = sub_100140278(&qword_1008F1950);
  __chkstk_darwin(v2 - 8);
  sub_10001B104(a1, &v5 - v3, &qword_1008F1950);
  return EnvironmentValues.editMode.setter();
}

uint64_t sub_10051F1AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a1;
  v37 = a2;
  v3 = type metadata accessor for NavigationBarItem.TitleDisplayMode();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for EditMode();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100140278(&qword_1008F18F0);
  v33 = v11;
  __chkstk_darwin(v11);
  v13 = &v33 - v12;
  v14 = sub_100140278(&qword_1008F18E0);
  v15 = *(v14 - 8);
  v35 = v14;
  v36 = v15;
  __chkstk_darwin(v14);
  v38 = &v33 - v16;
  v40 = a1;
  sub_100140278(&qword_1008F1920);
  sub_1005205CC();
  List<>.init(content:)();
  KeyPath = swift_getKeyPath();
  v18 = &v13[*(v11 + 36)];
  v19 = *(sub_100140278(&qword_1008F0BD0) + 28);
  (*(v8 + 104))(v10, enum case for EditMode.active(_:), v7);
  static Binding.constant(_:)();
  (*(v8 + 8))(v10, v7);
  v20 = sub_100140278(&qword_1008F0C08);
  (*(*(v20 - 8) + 56))(v18 + v19, 0, 1, v20);
  *v18 = KeyPath;
  LocalizedStringKey.init(stringLiteral:)();
  v21 = Text.init(_:tableName:bundle:comment:)();
  v23 = v22;
  LOBYTE(v10) = v24;
  v25 = v3;
  (*(v4 + 104))(v6, enum case for NavigationBarItem.TitleDisplayMode.inline(_:), v3);
  v26 = sub_1005204E0();
  v27 = v33;
  View.navigationBarTitle(_:displayMode:)();
  sub_10004642C(v21, v23, v10 & 1);

  (*(v4 + 8))(v6, v25);
  sub_10009B9F0(v13);
  v39 = v34;
  sub_100140278(&qword_1008F18E8);
  v41 = v27;
  v42 = v26;
  swift_getOpaqueTypeConformance2();
  v28 = sub_100141EEC(&qword_1008F1910);
  v29 = sub_10014A6B0(&qword_1008F1918, &qword_1008F1910);
  v41 = v28;
  v42 = v29;
  swift_getOpaqueTypeConformance2();
  v30 = v35;
  v31 = v38;
  View.toolbar<A>(content:)();
  return (*(v36 + 8))(v31, v30);
}

uint64_t sub_10051F6CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a1;
  v18 = a2;
  v3 = type metadata accessor for WorkoutChartableMetricsView();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3 - 8);
  v7 = *(a1 + *(v6 + 28));
  swift_beginAccess();
  v21 = *(v7 + 16);
  v16 = type metadata accessor for WorkoutChartableMetricsView;
  sub_1005209B8(a1, &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for WorkoutChartableMetricsView);
  v8 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v9 = swift_allocObject();
  sub_100520748(&v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8);

  sub_100140278(&qword_1008F1958);
  sub_100140278(&qword_1008F0C10);
  sub_10014A6B0(&qword_1008F1960, &qword_1008F1958);
  v19 = &type metadata for Text;
  v20 = &protocol witness table for Text;
  swift_getOpaqueTypeConformance2();
  sub_10052088C();
  v10 = v18;
  ForEach<>.init(_:content:)();
  sub_1005209B8(v17, &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v16);
  v11 = swift_allocObject();
  sub_100520748(&v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v8);
  v12 = swift_allocObject();
  *(v12 + 16) = sub_1005208E0;
  *(v12 + 24) = v11;
  result = sub_100140278(&qword_1008F1920);
  v14 = (v10 + *(result + 36));
  *v14 = sub_10052098C;
  v14[1] = v12;
  return result;
}

uint64_t sub_10051F97C@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100140278(&qword_1008DD250);
  __chkstk_darwin(v4 - 8);
  v6 = v36 - v5;
  v7 = *a1;
  v37 = sub_1005D6184();
  v38 = v8;
  sub_10000FCBC();
  v9 = Text.init<A>(_:)();
  v11 = v10;
  v13 = v12;
  type metadata accessor for WorkoutChartableMetricsView();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v14 = v37;
  if (*(v37 + 16) && (v15 = sub_1004C63C4(v7), (v16 & 1) != 0))
  {
    v17 = v15;
    v18 = *(v14 + 56);
    v19 = type metadata accessor for WorkoutChartViewModel(0);
    v20 = *(v19 - 8);
    v36[1] = a2;
    v21 = v20;
    sub_1005209B8(v18 + *(v20 + 72) * v17, v6, type metadata accessor for WorkoutChartViewModel);

    (*(v21 + 56))(v6, 0, 1, v19);
    sub_10016DAC0(v6);
    static Color.white.getter();
  }

  else
  {

    v22 = type metadata accessor for WorkoutChartViewModel(0);
    (*(*(v22 - 8) + 56))(v6, 1, 1, v22);
    sub_10016DAC0(v6);
    static Color.gray.getter();
  }

  v23 = Text.foregroundColor(_:)();
  v25 = v24;
  v27 = v26;

  sub_10004642C(v9, v11, v13 & 1);

  static Font.headline.getter();
  v28 = Text.font(_:)();
  v30 = v29;
  v32 = v31;
  v34 = v33;

  sub_10004642C(v23, v25, v27 & 1);

  v37 = v28;
  v38 = v30;
  v32 &= 1u;
  v39 = v32;
  v40 = v34;
  static VerticalEdge.Set.all.getter();
  View.listRowSeparator(_:edges:)();
  sub_10004642C(v28, v30, v32);
}

uint64_t sub_10051FCB0()
{
  type metadata accessor for WorkoutChartableMetricsView();
  swift_beginAccess();
  sub_100140278(&qword_1008F1958);
  sub_10014A6B0(&qword_1008F1970, &qword_1008F1958);
  MutableCollection.move(fromOffsets:toOffset:)();
  return swift_endAccess();
}

uint64_t sub_10051FD7C(uint64_t a1)
{
  v2 = type metadata accessor for ToolbarItemPlacement();
  __chkstk_darwin(v2 - 8);
  v3 = sub_100140278(&qword_1008F1910);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8[-v5];
  static ToolbarItemPlacement.confirmationAction.getter();
  v9 = a1;
  sub_100140278(&qword_1008F1940);
  sub_10014A6B0(&qword_1008F1948, &qword_1008F1940);
  ToolbarItem<>.init(placement:content:)();
  sub_10014A6B0(&qword_1008F1918, &qword_1008F1910);
  static ToolbarContentBuilder.buildBlock<A>(_:)();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_10051FF68(uint64_t a1)
{
  v2 = type metadata accessor for WorkoutChartableMetricsView();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2 - 8);
  v5 = type metadata accessor for ButtonRole();
  __chkstk_darwin(v5 - 8);
  static ButtonRole.confirm.getter();
  sub_1005209B8(a1, &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for WorkoutChartableMetricsView);
  v6 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = swift_allocObject();
  sub_100520748(&v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6);
  return Button<>.init(role:action:)();
}

uint64_t sub_1005200D0(uint64_t a1)
{
  v15 = type metadata accessor for EnvironmentValues();
  v2 = *(v15 - 8);
  __chkstk_darwin(v15);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100140278(&qword_1008EE800);
  __chkstk_darwin(v5);
  v7 = &v14 - v6;
  v8 = type metadata accessor for DismissAction();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10001B104(a1, v7, &qword_1008EE800);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v9 + 32))(v11, v7, v8);
  }

  else
  {
    static os_log_type_t.fault.getter();
    v12 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v2 + 8))(v4, v15);
  }

  DismissAction.callAsFunction()();
  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_10052034C()
{
  sub_100140278(&qword_1008F18D8);
  sub_100141EEC(&qword_1008F18E0);
  sub_100141EEC(&qword_1008F18E8);
  sub_100141EEC(&qword_1008F18F0);
  sub_1005204E0();
  swift_getOpaqueTypeConformance2();
  sub_100141EEC(&qword_1008F1910);
  sub_10014A6B0(&qword_1008F1918, &qword_1008F1910);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return NavigationView.init(content:)();
}

unint64_t sub_1005204E0()
{
  result = qword_1008F18F8;
  if (!qword_1008F18F8)
  {
    sub_100141EEC(&qword_1008F18F0);
    sub_10014A6B0(&qword_1008F1900, &qword_1008F1908);
    sub_10014A6B0(&qword_1008F0BC8, &qword_1008F0BD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F18F8);
  }

  return result;
}

unint64_t sub_1005205CC()
{
  result = qword_1008F1928;
  if (!qword_1008F1928)
  {
    sub_100141EEC(&qword_1008F1920);
    sub_100520684();
    sub_10014A6B0(&qword_1008F0BF8, &qword_1008F0C00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F1928);
  }

  return result;
}

unint64_t sub_100520684()
{
  result = qword_1008F1930;
  if (!qword_1008F1930)
  {
    sub_100141EEC(&qword_1008F1938);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F1930);
  }

  return result;
}

uint64_t sub_100520748(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WorkoutChartableMetricsView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1005207AC()
{
  v1 = *(type metadata accessor for WorkoutChartableMetricsView() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_1005200D0(v2);
}

uint64_t sub_10052080C@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for WorkoutChartableMetricsView();

  return sub_10051F97C(a1, a2);
}

unint64_t sub_10052088C()
{
  result = qword_1008F1968;
  if (!qword_1008F1968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F1968);
  }

  return result;
}

uint64_t sub_1005208E0()
{
  type metadata accessor for WorkoutChartableMetricsView();

  return sub_10051FCB0();
}

uint64_t sub_1005209B8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100520A30(uint64_t a1, int a2)
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

uint64_t sub_100520A50(uint64_t result, int a2, int a3)
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

uint64_t sub_100520A94(char *a1)
{
  v7 = a1;

  sub_1005216F4(&v7);
  v2 = v7;
  v3 = sub_10019F760(a1)[2];

  v4 = (v3 - 1) / 2;
  if (v3)
  {
    v4 = v3 >> 1;
  }

  v5 = *(v2 + 2);
  if (v5)
  {
    if (v4 < v5)
    {
    }

    goto LABEL_10;
  }

  if (v4 >= v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (v4 + 1 < v5)
  {
  }

LABEL_11:
  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_100520B8C()
{
  v1 = *(v0 + 32);
  v2 = v1 * 100.0;
  v3 = (1.0 - v1) * 100.0;
  sub_100140278(&unk_1008E4E50);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1006D6950;
  v5 = *(v0 + 8);
  *(v4 + 56) = &type metadata for Double;
  *(v4 + 64) = &protocol witness table for Double;
  *(v4 + 32) = v5;
  v6 = *(v0 + 24);
  *(v4 + 96) = &type metadata for Double;
  *(v4 + 104) = &protocol witness table for Double;
  *(v4 + 72) = v6;
  *(v4 + 136) = &type metadata for Double;
  *(v4 + 144) = &protocol witness table for Double;
  *(v4 + 112) = v2;
  *(v4 + 176) = &type metadata for Double;
  *(v4 + 184) = &protocol witness table for Double;
  *(v4 + 152) = v3;

  return String.init(format:_:)();
}

unint64_t sub_100520C60(unint64_t result)
{
  v1 = *(result + 16);
  if (!v1)
  {
    goto LABEL_26;
  }

  v2 = (v1 - 1) & 0x7FFFFFFFFFFFFFFFLL;
  if (!v2)
  {
    return result;
  }

  v3 = 0;
  v4 = result + 32;
  v5 = (result + 40);
  v6 = 2;
  v7 = 0.0;
  while (1)
  {
    if (v3 == v1)
    {
LABEL_24:
      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      return result;
    }

    v8 = v3 + 1;
    if (v3 + 1 != v1)
    {
      break;
    }

    v7 = v7 + 0.0;
    if (v1 == v2)
    {
      return result;
    }

LABEL_5:
    ++v6;
    ++v5;
    ++v3;
    if (v8 == v2)
    {
      goto LABEL_25;
    }
  }

  v9 = *(v4 + 8 * v3);
  v10 = 0.0;
  v11 = v5;
  v12 = v6;
  while (1)
  {
    if (vabdd_f64(*v11, v9) < 2.22044605e-16)
    {
      v10 = v10 + 0.0;
      if (v1 == v12)
      {
        goto LABEL_20;
      }

      goto LABEL_16;
    }

    if (*v11 - v9 <= 0.0)
    {
      break;
    }

    v10 = v10 + 1.0;
    if (v1 == v12)
    {
      goto LABEL_20;
    }

LABEL_16:
    result = v12 - 1;
    if (v12 - 1 >= v3)
    {
      result = v12 + 1;
      ++v11;
      if (v12++ < v1)
      {
        continue;
      }
    }

    __break(1u);
    goto LABEL_24;
  }

  v10 = v10 + -1.0;
  if (v1 != v12)
  {
    goto LABEL_16;
  }

LABEL_20:
  v7 = v7 + v10;
  if (v8 != v2)
  {
    goto LABEL_5;
  }

  return result;
}

uint64_t sub_100520D78(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = (a1 + 32);
    v3 = &_swiftEmptyDictionarySingleton;
    while (1)
    {
      v4 = *v2;
      v5 = v3[2];
      if (v5)
      {
        v6 = sub_1004C5DA8(*v2);
        if (v7)
        {
          v5 = *(v3[7] + 8 * v6);
        }

        else
        {
          v5 = 0;
        }
      }

      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        goto LABEL_41;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v10 = sub_1004C5DA8(v4);
      v12 = v3[2];
      v13 = (v11 & 1) == 0;
      v14 = __OFADD__(v12, v13);
      v15 = v12 + v13;
      if (v14)
      {
        goto LABEL_42;
      }

      v16 = v11;
      if (v3[3] < v15)
      {
        break;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_15;
      }

      v21 = v10;
      sub_100493AD8();
      v10 = v21;
      v18 = v3;
      if (v16)
      {
LABEL_3:
        *(v18[7] + 8 * v10) = v8;

        goto LABEL_4;
      }

LABEL_16:
      v18[(v10 >> 6) + 8] |= 1 << v10;
      *(v18[6] + 8 * v10) = v4;
      *(v18[7] + 8 * v10) = v8;

      v19 = v18[2];
      v14 = __OFADD__(v19, 1);
      v20 = v19 + 1;
      if (v14)
      {
        goto LABEL_43;
      }

      v18[2] = v20;
LABEL_4:
      ++v2;
      v3 = v18;
      if (!--v1)
      {
        goto LABEL_21;
      }
    }

    sub_10048AD64(v15, isUniquelyReferenced_nonNull_native);
    v10 = sub_1004C5DA8(v4);
    if ((v16 & 1) != (v17 & 1))
    {
      goto LABEL_44;
    }

LABEL_15:
    v18 = v3;
    if (v16)
    {
      goto LABEL_3;
    }

    goto LABEL_16;
  }

  v18 = &_swiftEmptyDictionarySingleton;
LABEL_21:
  v22 = 1 << *(v18 + 32);
  v23 = -1;
  if (v22 < 64)
  {
    v23 = ~(-1 << v22);
  }

  v24 = v23 & v18[8];
  v25 = (v22 + 63) >> 6;

  v26 = 0;
  v27 = _swiftEmptyArrayStorage;
  while (v24)
  {
    v28 = v24;
LABEL_30:
    v24 = (v28 - 1) & v28;
    if (v18[2])
    {
      v30 = *(v18[6] + ((v26 << 9) | (8 * __clz(__rbit64(v28)))));
      v31 = sub_1004C5DA8(v30);
      if (v32)
      {
        v33 = v18[7];
        if (*(v33 + 8 * v31) >= 2)
        {
          v34 = sub_1004C5DA8(v30);
          if (v35)
          {
            v36 = *(v33 + 8 * v34);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v27 = sub_1001A298C(0, *(v27 + 2) + 1, 1, v27);
            }

            v37 = *(v27 + 2);
            v38 = *(v27 + 3);
            v39 = v37 + 1;
            if (v37 >= v38 >> 1)
            {
              v40 = v27;
              v41 = *(v27 + 2);
              v42 = sub_1001A298C((v38 > 1), v37 + 1, 1, v40);
              v37 = v41;
              v27 = v42;
            }

            *(v27 + 2) = v39;
            *&v27[8 * v37 + 32] = v36;
          }
        }
      }
    }
  }

  while (1)
  {
    v29 = v26 + 1;
    if (__OFADD__(v26, 1))
    {
      break;
    }

    if (v29 >= v25)
    {

      return v27;
    }

    v28 = v18[v29 + 8];
    ++v26;
    if (v28)
    {
      v26 = v29;
      goto LABEL_30;
    }
  }

  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

double sub_100521080(int64x2_t *a1, uint64_t a2)
{
  v2 = a1[1].u64[0];
  if (!v2)
  {
    v4 = 0.0;
    return ((a2 + -1.0) * a2 * (a2 + a2 + 5.0) - v4) / 18.0;
  }

  if (v2 <= 3)
  {
    v3 = 0;
    v4 = 0.0;
LABEL_8:
    v17 = v2 - v3;
    v18 = &a1[2].i64[v3];
    do
    {
      v19 = *v18++;
      v4 = v4 + (v19 + -1.0) * v19 * (v19 + v19 + 5.0);
      --v17;
    }

    while (v17);
    return ((a2 + -1.0) * a2 * (a2 + a2 + 5.0) - v4) / 18.0;
  }

  v3 = v2 & 0x7FFFFFFFFFFFFFFCLL;
  v5 = a1 + 3;
  v4 = 0.0;
  __asm
  {
    FMOV            V1.2D, #-1.0
    FMOV            V2.2D, #5.0
  }

  v12 = v2 & 0x7FFFFFFFFFFFFFFCLL;
  do
  {
    v13 = vcvtq_f64_s64(v5[-1]);
    v14 = vcvtq_f64_s64(*v5);
    v15 = vmulq_f64(vmulq_f64(vaddq_f64(v13, _Q1), v13), vaddq_f64(vaddq_f64(v13, v13), _Q2));
    v16 = vmulq_f64(vmulq_f64(vaddq_f64(v14, _Q1), v14), vaddq_f64(vaddq_f64(v14, v14), _Q2));
    v4 = v4 + v15.f64[0] + v15.f64[1] + v16.f64[0] + v16.f64[1];
    v5 += 2;
    v12 -= 4;
  }

  while (v12);
  if (v2 != v3)
  {
    goto LABEL_8;
  }

  return ((a2 + -1.0) * a2 * (a2 + a2 + 5.0) - v4) / 18.0;
}

double sub_100521188(int64x2_t *a1, uint64_t a2)
{
  v2 = a1[1].u64[0];
  if (!v2)
  {
    v5 = 0.0;
    goto LABEL_11;
  }

  if (v2 > 3)
  {
    v3 = v2 & 0x7FFFFFFFFFFFFFFCLL;
    v6 = a1 + 3;
    v4 = 0.0;
    __asm { FMOV            V1.2D, #-1.0 }

    v12 = v2 & 0x7FFFFFFFFFFFFFFCLL;
    do
    {
      v13 = vcvtq_f64_s64(v6[-1]);
      v14 = vcvtq_f64_s64(*v6);
      v15 = vmulq_f64(vaddq_f64(v13, _Q1), v13);
      v16 = vmulq_f64(vaddq_f64(v14, _Q1), v14);
      v4 = v4 + v15.f64[0] + v15.f64[1] + v16.f64[0] + v16.f64[1];
      v6 += 2;
      v12 -= 4;
    }

    while (v12);
    if (v2 == v3)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v3 = 0;
    v4 = 0.0;
  }

  v17 = v2 - v3;
  v18 = &a1[2].i64[v3];
  do
  {
    v19 = *v18++;
    v4 = v4 + (v19 + -1.0) * v19;
    --v17;
  }

  while (v17);
LABEL_10:
  v5 = v4 * 0.5;
LABEL_11:
  v20 = (a2 + -1.0) * a2 * 0.5;
  result = sqrt(v20) * sqrt(v20 - v5);
  if (fabs(result) < 2.22044605e-16)
  {
    return 1.0;
  }

  return result;
}

uint64_t sub_100521280()
{
  v1 = *v0 * 86400.0;
  sub_100140278(&unk_1008E4E50);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1006D46C0;
  *(v2 + 56) = &type metadata for Double;
  *(v2 + 64) = &protocol witness table for Double;
  *(v2 + 32) = v1;

  return String.init(format:_:)();
}

double sub_100521318(uint64_t a1, double a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    sub_100185AF4(0, v2, 0);
    v5 = _swiftEmptyArrayStorage[2];
    v6 = (a1 + 40);
    do
    {
      v7 = *(v6 - 1);
      v8 = *v6;
      v9 = _swiftEmptyArrayStorage[3];
      if (v5 >= v9 >> 1)
      {
        sub_100185AF4((v9 > 1), v5 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v5 + 1;
      *&_swiftEmptyArrayStorage[v5 + 4] = v8 - v7 * a2;
      v6 += 2;
      ++v5;
      --v2;
    }

    while (v2);
  }

  sub_100520A94(_swiftEmptyArrayStorage);
  v11 = v10;

  return v11;
}

uint64_t sub_100521410(uint64_t result)
{
  v1 = *(result + 16);
  if (!v1)
  {
    goto LABEL_35;
  }

  v32 = v1 - 1;
  v30 = (v1 - 1) & 0x7FFFFFFFFFFFFFFFLL;
  if (!v30)
  {
    v3 = _swiftEmptyArrayStorage;
LABEL_28:
    sub_100520A94(v3);
  }

  v2 = 0;
  v29 = result + 32;
  v3 = _swiftEmptyArrayStorage;
  v4 = (result + 56);
  v28 = *(result + 16);
  while (v2 != v1)
  {
    v5 = v3;
    v6 = (v29 + 16 * v2);
    v7 = *v6;
    v8 = v6[1];

    v9 = _swiftEmptyArrayStorage;
    v31 = v2 + 1;
    if (v2 + 1 != v1)
    {
      v10 = v4;
      v11 = v32;
      v12 = _swiftEmptyArrayStorage;
      while (1)
      {
        v13 = *(v10 - 1);
        v14 = *v10;
        sub_100140278(&qword_1008DE480);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_1006D46C0;
        *(inited + 32) = (v14 - v8) / (v13 - v7);
        v16 = *(v12 + 2);

        result = swift_isUniquelyReferenced_nonNull_native();
        if (!result || (v17 = *(v12 + 3) >> 1, v9 = v12, v17 <= v16))
        {
          result = sub_10001C378(result, v16 + 1, 1, v12);
          v9 = result;
          v17 = *(result + 24) >> 1;
        }

        v18 = *(v9 + 2);
        if (v17 <= v18)
        {
          break;
        }

        *&v9[8 * v18 + 32] = *(inited + 32);

        ++*(v9 + 2);
        v10 += 2;
        v12 = v9;
        if (!--v11)
        {
          goto LABEL_14;
        }
      }

      __break(1u);
      break;
    }

LABEL_14:
    v19 = *(v9 + 2);
    v20 = *(v5 + 2);
    v21 = v20 + v19;
    if (__OFADD__(v20, v19))
    {
      goto LABEL_31;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result && (v22 = *(v5 + 3) >> 1, v3 = v5, v22 >= v21))
    {
      if (*(v9 + 2))
      {
        goto LABEL_23;
      }
    }

    else
    {
      if (v20 <= v21)
      {
        v23 = v20 + v19;
      }

      else
      {
        v23 = v20;
      }

      result = sub_10001C378(result, v23, 1, v5);
      v3 = result;
      v22 = *(result + 24) >> 1;
      if (*(v9 + 2))
      {
LABEL_23:
        v24 = *(v3 + 2);
        v2 = v31;
        if (v22 - v24 < v19)
        {
          goto LABEL_33;
        }

        memcpy(&v3[8 * v24 + 32], v9 + 32, 8 * v19);

        if (v19)
        {
          v25 = *(v3 + 2);
          v26 = __OFADD__(v25, v19);
          v27 = v25 + v19;
          if (v26)
          {
            goto LABEL_34;
          }

          *(v3 + 2) = v27;
        }

        goto LABEL_5;
      }
    }

    v2 = v31;
    if (v19)
    {
      goto LABEL_32;
    }

LABEL_5:

    --v32;
    v4 += 2;
    v1 = v28;
    if (v2 == v30)
    {
      goto LABEL_28;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
  return result;
}

Swift::Int sub_1005216F4(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1001AA500(v2);
  }

  v3 = *(v2 + 2);
  v18[0] = (v2 + 32);
  v18[1] = v3;
  result = _minimumMergeRunLength(_:)(v3);
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = -1;
      v9 = 1;
      v10 = v2 + 32;
      do
      {
        v11 = *&v2[8 * v9 + 32];
        v12 = v8;
        v13 = v10;
        do
        {
          v14 = *v13;
          if (v11 >= *v13)
          {
            break;
          }

          *v13 = v11;
          v13[1] = v14;
          --v13;
        }

        while (!__CFADD__(v12++, 1));
        ++v9;
        v10 += 8;
        --v8;
      }

      while (v9 != v3);
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      v7 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      v7[2] = v6;
    }

    else
    {
      v7 = _swiftEmptyArrayStorage;
    }

    v16[0] = v7 + 4;
    v16[1] = v6;
    sub_100521828(v16, v17, v18, v5);
    v7[2] = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_100521828(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v84 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = _swiftEmptyArrayStorage;
LABEL_88:
    v5 = *v84;
    if (!*v84)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_1001A99A4(v8);
      v8 = result;
    }

    v76 = v8 + 2;
    v77 = v8[2];
    if (v77 >= 2)
    {
      while (*a3)
      {
        v78 = &v8[2 * v77];
        v79 = *v78;
        v80 = &v76[2 * v77];
        v81 = v80[1];
        sub_100521D84((*a3 + 8 * *v78), (*a3 + 8 * *v80), (*a3 + 8 * v81), v5);
        if (v4)
        {
        }

        if (v81 < v79)
        {
          goto LABEL_114;
        }

        if (v77 - 2 >= *v76)
        {
          goto LABEL_115;
        }

        *v78 = v79;
        v78[1] = v81;
        v82 = *v76 - v77;
        if (*v76 < v77)
        {
          goto LABEL_116;
        }

        v77 = *v76 - 1;
        result = memmove(v80, v80 + 2, 16 * v82);
        *v76 = v77;
        if (v77 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v7 = 0;
  v8 = _swiftEmptyArrayStorage;
  v83 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 8 * v7);
      v11 = *(*a3 + 8 * v9);
      v12 = v9 + 2;
      v13 = v10;
      while (v6 != v12)
      {
        v14 = *(*a3 + 8 * v12);
        v15 = v14 >= v13;
        ++v12;
        v13 = v14;
        if ((((v10 < v11) ^ v15) & 1) == 0)
        {
          v7 = v12 - 1;
          if (v10 >= v11)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v10 >= v11)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_119;
      }

      if (v9 < v7)
      {
        v16 = 8 * v7 - 8;
        v17 = 8 * v9;
        v18 = v7;
        v19 = v9;
        do
        {
          if (v19 != --v18)
          {
            v21 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v20 = *(v21 + v17);
            *(v21 + v17) = *(v21 + v16);
            *(v21 + v16) = v20;
          }

          ++v19;
          v16 -= 8;
          v17 += 8;
        }

        while (v19 < v18);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v6 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1001A1D54(0, v8[2] + 1, 1, v8);
      v8 = result;
    }

    v5 = v8[2];
    v30 = v8[3];
    v31 = v5 + 1;
    if (v5 >= v30 >> 1)
    {
      result = sub_1001A1D54((v30 > 1), v5 + 1, 1, v8);
      v8 = result;
    }

    v8[2] = v31;
    v32 = v8 + 4;
    v33 = &v8[2 * v5 + 4];
    *v33 = v9;
    v33[1] = v7;
    v85 = *v84;
    if (!*v84)
    {
      goto LABEL_127;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v31 - 1;
        if (v31 >= 4)
        {
          break;
        }

        if (v31 == 3)
        {
          v34 = v8[4];
          v35 = v8[5];
          v44 = __OFSUB__(v35, v34);
          v36 = v35 - v34;
          v37 = v44;
LABEL_57:
          if (v37)
          {
            goto LABEL_104;
          }

          v50 = &v8[2 * v31];
          v52 = *v50;
          v51 = v50[1];
          v53 = __OFSUB__(v51, v52);
          v54 = v51 - v52;
          v55 = v53;
          if (v53)
          {
            goto LABEL_106;
          }

          v56 = &v32[2 * v5];
          v58 = *v56;
          v57 = v56[1];
          v44 = __OFSUB__(v57, v58);
          v59 = v57 - v58;
          if (v44)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v54, v59))
          {
            goto LABEL_111;
          }

          if (v54 + v59 >= v36)
          {
            if (v36 < v59)
            {
              v5 = v31 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v31 < 2)
        {
          goto LABEL_112;
        }

        v60 = &v8[2 * v31];
        v62 = *v60;
        v61 = v60[1];
        v44 = __OFSUB__(v61, v62);
        v54 = v61 - v62;
        v55 = v44;
LABEL_72:
        if (v55)
        {
          goto LABEL_108;
        }

        v63 = &v32[2 * v5];
        v65 = *v63;
        v64 = v63[1];
        v44 = __OFSUB__(v64, v65);
        v66 = v64 - v65;
        if (v44)
        {
          goto LABEL_110;
        }

        if (v66 < v54)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v5 - 1 >= v31)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
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
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
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

        if (!*a3)
        {
          goto LABEL_124;
        }

        v71 = &v32[2 * v5 - 2];
        v72 = *v71;
        v73 = &v32[2 * v5];
        v74 = v73[1];
        sub_100521D84((*a3 + 8 * *v71), (*a3 + 8 * *v73), (*a3 + 8 * v74), v85);
        if (v4)
        {
        }

        if (v74 < v72)
        {
          goto LABEL_99;
        }

        if (v5 > v8[2])
        {
          goto LABEL_100;
        }

        *v71 = v72;
        v71[1] = v74;
        v75 = v8[2];
        if (v5 >= v75)
        {
          goto LABEL_101;
        }

        v31 = v75 - 1;
        result = memmove(&v32[2 * v5], v73 + 2, 16 * (v75 - 1 - v5));
        v8[2] = v75 - 1;
        if (v75 <= 2)
        {
          goto LABEL_3;
        }
      }

      v38 = &v32[2 * v31];
      v39 = *(v38 - 8);
      v40 = *(v38 - 7);
      v44 = __OFSUB__(v40, v39);
      v41 = v40 - v39;
      if (v44)
      {
        goto LABEL_102;
      }

      v43 = *(v38 - 6);
      v42 = *(v38 - 5);
      v44 = __OFSUB__(v42, v43);
      v36 = v42 - v43;
      v37 = v44;
      if (v44)
      {
        goto LABEL_103;
      }

      v45 = &v8[2 * v31];
      v47 = *v45;
      v46 = v45[1];
      v44 = __OFSUB__(v46, v47);
      v48 = v46 - v47;
      if (v44)
      {
        goto LABEL_105;
      }

      v44 = __OFADD__(v36, v48);
      v49 = v36 + v48;
      if (v44)
      {
        goto LABEL_107;
      }

      if (v49 >= v41)
      {
        v67 = &v32[2 * v5];
        v69 = *v67;
        v68 = v67[1];
        v44 = __OFSUB__(v68, v69);
        v70 = v68 - v69;
        if (v44)
        {
          goto LABEL_113;
        }

        if (v36 < v70)
        {
          v5 = v31 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v83;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v22 = *a3;
  v23 = *a3 + 8 * v7 - 8;
  v24 = v9 - v7;
LABEL_30:
  v25 = *(v22 + 8 * v7);
  v26 = v24;
  v27 = v23;
  while (1)
  {
    v28 = *v27;
    if (v25 >= *v27)
    {
LABEL_29:
      ++v7;
      v23 += 8;
      --v24;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v22)
    {
      break;
    }

    *v27 = v25;
    v27[1] = v28;
    --v27;
    if (__CFADD__(v26++, 1))
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
  return result;
}

uint64_t sub_100521D84(double *__dst, double *__src, double *a3, double *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 3;
  v11 = a3 - __src;
  v12 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 3;
  if (v10 < v12 >> 3)
  {
    if (a4 != __dst || &__dst[v10] <= a4)
    {
      memmove(a4, __dst, 8 * v10);
    }

    v14 = &v4[v10];
    if (v8 < 8)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v15 = *v6;
      if (*v6 < *v4)
      {
        break;
      }

      v15 = *v4;
      v16 = v7 == v4++;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      ++v7;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v16 = v7 == v6++;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[v13] <= a4)
  {
    memmove(a4, __src, 8 * v13);
  }

  v14 = &v4[v13];
  if (v11 >= 8 && v6 > v7)
  {
LABEL_24:
    v17 = v6 - 1;
    --v5;
    v18 = v14;
    do
    {
      v19 = v5 + 1;
      v20 = *(v18 - 8);
      v18 -= 8;
      v21 = v20;
      if (v20 < *v17)
      {
        if (v19 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (--v6, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      if (v19 != v14)
      {
        *v5 = v21;
      }

      --v5;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_35:
  v22 = v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0);
  if (v6 != v4 || v6 >= (v4 + (v22 & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v6, v4, 8 * (v22 >> 3));
  }

  return 1;
}

uint64_t sub_100521F78@<X0>(unint64_t a1@<X0>, double *a2@<X8>)
{
  sub_100520C60(a1);
  v5 = v4;
  v6 = sub_100520D78(a1);
  v7 = *(a1 + 16);
  v8 = sub_100521188(v6, v7);
  v9 = sub_100521080(v6, v7);

  if (v9 <= 0.0)
  {
    v13 = 1.0;
    v12 = v5 <= 0.0;
    if (v5 != 0.0)
    {
LABEL_6:
      if (v12)
      {
        v14 = 1.0;
      }

      else
      {
        v14 = -1.0;
      }

      v11 = v5 + v14;
      goto LABEL_10;
    }

    v11 = 0.0;
  }

  else
  {
    v11 = 0.0;
    v12 = v5 <= 0.0;
    v13 = sqrt(v9);
    if (v5 != 0.0)
    {
      goto LABEL_6;
    }
  }

LABEL_10:
  v15 = v11 / v13;
  v16 = fabs(v15);
  if (v16 <= 2.58)
  {
    if (v16 <= 2.33)
    {
      if (v16 <= 1.96)
      {
        if (v16 <= 1.645)
        {
          v12 = v16 <= 1.28;
          v17 = 0.8;
          if (v12)
          {
            v17 = 0.0;
          }
        }

        else
        {
          v17 = 0.9;
        }
      }

      else
      {
        v17 = 0.95;
      }
    }

    else
    {
      v17 = 0.98;
    }
  }

  else
  {
    v17 = 0.99;
  }

  *a2 = v5;
  a2[1] = v5 / v8;
  a2[2] = v9;
  a2[3] = v15;
  a2[4] = v17;
  return result;
}

unint64_t sub_1005220F0()
{
  result = qword_1008F1988;
  if (!qword_1008F1988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F1988);
  }

  return result;
}

void sub_1005222E4()
{
  v1 = v0;
  v2 = objc_opt_self();
  sub_100140278(&unk_1008E4E20);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1006D5300;
  v4 = *&v1[OBJC_IVAR____TtC10FitnessApp32TrophyCaseAwardDetailWorkoutCell_workoutContentView];
  v5 = [v4 topAnchor];
  v6 = [v1 topAnchor];
  v7 = [v5 constraintEqualToAnchor:v6];

  *(v3 + 32) = v7;
  v8 = [v4 trailingAnchor];
  v9 = [v1 trailingAnchor];
  v10 = [v8 constraintEqualToAnchor:v9];

  *(v3 + 40) = v10;
  v11 = [v4 leadingAnchor];
  v12 = [v1 leadingAnchor];
  v13 = [v11 constraintEqualToAnchor:v12];

  *(v3 + 48) = v13;
  v14 = [v4 bottomAnchor];
  v15 = [v1 bottomAnchor];
  v16 = [v14 constraintEqualToAnchor:v15];

  *(v3 + 56) = v16;
  sub_10019EC5C();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v2 activateConstraints:isa];
}

id sub_10052252C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TrophyCaseAwardDetailWorkoutCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_100522634(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *&v3[OBJC_IVAR___CHWorkoutDetailMapAndWeatherTableViewCell_mapAndWeatherViewModel] = 0;
  *&v3[OBJC_IVAR___CHWorkoutDetailMapAndWeatherTableViewCell_snapshotGenerator] = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  if (a3)
  {
    v6 = String._bridgeToObjectiveC()();
  }

  else
  {
    v6 = 0;
  }

  v16.receiver = v3;
  v16.super_class = type metadata accessor for WorkoutDetailMapAndWeatherTableViewCell();
  v7 = objc_msgSendSuper2(&v16, "initWithStyle:reuseIdentifier:", a1, v6);

  v8 = objc_opt_self();
  sub_100140278(&unk_1008E4E20);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1006D4E70;
  v10 = v7;
  v11 = [v10 contentView];
  v12 = [v11 heightAnchor];

  v13 = [v12 constraintGreaterThanOrEqualToConstant:132.0];
  *(v9 + 32) = v13;
  sub_1000059F8(0, &qword_1008DC980);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v8 activateConstraints:isa];

  return v10;
}

void sub_1005228EC(void *a1, uint64_t a2, void *a3)
{
  v5 = [a1 formattedDescriptionForWorkout:a2 context:@"DayViewDisplayContext"];
  if (v5)
  {
    v6 = v5;
    v7 = [v5 string];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v8 = [a1 shareTextForWorkout:a2];
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;

  v12 = sub_1000B882C();
  type metadata accessor for ActivityType(0);
  v13 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v14 = type metadata accessor for WorkoutRouteViewController();
  v15 = objc_allocWithZone(v14);
  v16 = OBJC_IVAR___CHWorkoutRouteViewController_mapView;
  *&v15[v16] = [objc_allocWithZone(MKMapView) init];
  v17 = OBJC_IVAR___CHWorkoutRouteViewController_toggleMapTypeButton;
  v18 = objc_opt_self();
  *&v15[v17] = [v18 buttonWithType:0];
  v19 = OBJC_IVAR___CHWorkoutRouteViewController_divider;
  *&v15[v19] = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v20 = OBJC_IVAR___CHWorkoutRouteViewController_reportProblemButton;
  *&v15[v20] = [v18 buttonWithType:0];
  v21 = OBJC_IVAR___CHWorkoutRouteViewController_geoMapFeatureAccess;
  *&v15[v21] = [objc_allocWithZone(GEOMapFeatureAccess) init];
  *&v15[OBJC_IVAR___CHWorkoutRouteViewController_excludedActivityTypes] = v13;
  *&v15[OBJC_IVAR___CHWorkoutRouteViewController_locationReadings] = a3;
  v22 = &v15[OBJC_IVAR___CHWorkoutRouteViewController_shareText];
  *v22 = v9;
  v22[1] = v11;
  v15[OBJC_IVAR___CHWorkoutRouteViewController_sharingEnabled] = 1;
  v23 = [a3 workout];
  *&v15[OBJC_IVAR___CHWorkoutRouteViewController_workout] = v23;
  v35.receiver = v15;
  v35.super_class = v14;
  v24 = objc_msgSendSuper2(&v35, "initWithNibName:bundle:", 0, 0);
  v25 = String._bridgeToObjectiveC()();

  [v24 setTitle:v25];

  v26 = [objc_allocWithZone(UINavigationController) initWithRootViewController:v24];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v28 = Strong, v29 = swift_unknownObjectWeakLoadStrong(), v28, v29))
  {
    v30 = swift_allocObject();
    swift_beginAccess();
    v31 = swift_unknownObjectWeakLoadStrong();
    swift_unknownObjectWeakInit();

    aBlock[4] = sub_100524D60;
    aBlock[5] = v30;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000449A8;
    aBlock[3] = &unk_10085EC58;
    v32 = _Block_copy(aBlock);

    [v29 presentViewController:v26 completion:v32];

    swift_unknownObjectRelease();
    _Block_release(v32);
  }

  else
  {
  }
}

void sub_100522D38()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = swift_unknownObjectWeakLoadStrong();

    if (v2)
    {
      [v2 didPresentRouteView];
      swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_100522DB8(void *a1)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v15 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for DispatchQoS();
  v5 = *(v14 - 8);
  __chkstk_darwin(v14);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000059F8(0, &qword_1008E3FD0);
  v8 = static OS_dispatch_queue.main.getter();
  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = a1;
  aBlock[4] = sub_100524D10;
  aBlock[5] = v10;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000449A8;
  aBlock[3] = &unk_10085EC30;
  v11 = _Block_copy(aBlock);
  v12 = a1;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100524D18(&qword_1008E33B0, &type metadata accessor for DispatchWorkItemFlags);
  sub_100140278(&unk_1008E7F50);
  sub_10014A6B0(&qword_1008E33C0, &unk_1008E7F50);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v11);

  (*(v15 + 8))(v4, v2);
  return (*(v5 + 8))(v7, v14);
}

void sub_1005230D4(uint64_t a1, void *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = *(Strong + OBJC_IVAR___CHWorkoutDetailMapAndWeatherTableViewCell_mapAndWeatherViewModel);
    v5 = Strong;

    if (v4)
    {

      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.setter();
    }
  }

  if (a2)
  {
    swift_beginAccess();
    v6 = swift_unknownObjectWeakLoadStrong();
    if (v6)
    {
      v7 = *(v6 + OBJC_IVAR___CHWorkoutDetailMapAndWeatherTableViewCell_mapAndWeatherViewModel);
      v8 = v6;

      v9 = a2;

      if (v7)
      {

        v9 = v9;
        Image.init(uiImage:)();
        swift_getKeyPath();
        swift_getKeyPath();

        static Published.subscript.setter();
      }
    }
  }

  else
  {
    swift_beginAccess();
    v10 = swift_unknownObjectWeakLoadStrong();
    if (v10)
    {
      v11 = *(v10 + OBJC_IVAR___CHWorkoutDetailMapAndWeatherTableViewCell_mapAndWeatherViewModel);
      v12 = v10;

      if (v11)
      {

        swift_getKeyPath();
        swift_getKeyPath();
        static Published.subscript.setter();
      }
    }
  }
}

id sub_1005233A4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WorkoutDetailMapAndWeatherTableViewCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100523468(id a1, id a2)
{
  if (!a2)
  {
    goto LABEL_9;
  }

  v3 = [a2 metadata];
  if (!v3)
  {
    goto LABEL_9;
  }

  v4 = v3;
  v5 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!*(v5 + 16))
  {

    goto LABEL_8;
  }

  v8 = sub_100066F20(v6, v7);
  v10 = v9;

  if ((v10 & 1) == 0)
  {
LABEL_8:

    goto LABEL_9;
  }

  sub_10000B1B4(*(v5 + 56) + 32 * v8, v27);

  if (swift_dynamicCast())
  {
    goto LABEL_13;
  }

LABEL_9:
  v11 = [a1 metadata];
  if (v11)
  {
    v12 = v11;
    v13 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    if (!*(v13 + 16))
    {
LABEL_15:

      goto LABEL_16;
    }

    v16 = sub_100066F20(v14, v15);
    v18 = v17;

    if ((v18 & 1) == 0)
    {
LABEL_16:

      goto LABEL_17;
    }

    sub_10000B1B4(*(v13 + 56) + 32 * v16, v27);

    if (swift_dynamicCast())
    {
LABEL_13:
      if (v25 != static String._unconditionallyBridgeFromObjectiveC(_:)() || v26 != v19)
      {
        v22 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v22)
        {
          goto LABEL_16;
        }

        if (v25 != static String._unconditionallyBridgeFromObjectiveC(_:)() || v26 != v23)
        {
          v24 = _stringCompareWithSmolCheck(_:_:expecting:)();

          v20 = v24 ^ 1;
          return v20 & 1;
        }
      }

      goto LABEL_15;
    }
  }

LABEL_17:
  v20 = 0;
  return v20 & 1;
}

id sub_100523720(void *a1, void *a2, void *a3, void *a4)
{
  v199 = a4;
  v7 = sub_100140278(&qword_1008F1A08);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v200 = &v189 - v9;
  v10 = sub_100140278(&qword_1008EABB8);
  __chkstk_darwin(v10 - 8);
  v197 = &v189 - v11;
  v198 = type metadata accessor for WeatherCondition();
  v196 = *(v198 - 8);
  __chkstk_darwin(v198);
  v194 = &v189 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100140278(&qword_1008F1A10);
  *&v14 = __chkstk_darwin(v13 - 8).n128_u64[0];
  v195 = &v189 - v15;
  v16 = [a3 waterTemperatureForWorkout:a1 workoutActivity:{a2, v14}];
  p_ivars = &ResourceBundleClass.ivars;
  v203 = a2;
  v204 = a3;
  v201 = v8;
  v202 = v7;
  if (v16)
  {
    v18 = v16;
    result = _HKWeatherTemperatureUnit();
    if (!result)
    {
      __break(1u);
      goto LABEL_70;
    }

    v20 = result;
    v21 = objc_opt_self();
    [v18 doubleValueForUnit:v20];
    v23 = v22;

    v24 = [objc_allocWithZone(NSNumber) initWithDouble:v23];
    v25 = [v21 stringWithNumber:v24 decimalPrecision:1];

    if (v25)
    {
      v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v193 = v27;

      v28 = objc_opt_self();
      v29 = a1;
      v30 = [v28 mainBundle];
      v31 = String._bridgeToObjectiveC()();
      v32 = [v30 localizedStringForKey:v31 value:0 table:0];

      static String._unconditionallyBridgeFromObjectiveC(_:)();
      a1 = v29;

      sub_100140278(&unk_1008E4E50);
      v33 = swift_allocObject();
      *(v33 + 16) = xmmword_1006D46C0;
      *(v33 + 56) = &type metadata for String;
      *(v33 + 64) = sub_10000A788();
      v34 = v193;
      *(v33 + 32) = v26;
      *(v33 + 40) = v34;
      v35 = String.init(format:_:)();
      v192 = v36;
      v193 = v35;

      [v29 fiui_swimmingLocationType];
      v37 = [v28 mainBundle];
      v38 = String._bridgeToObjectiveC()();
      v39 = [v37 localizedStringForKey:v38 value:0 table:0];

      v40 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v42 = v41;

      *&v220 = v40;
      *(&v220 + 1) = v42;
      sub_10000FCBC();
      v43 = StringProtocol.localizedUppercase.getter();
      v45 = v44;

      a2 = v203;
      p_ivars = &ResourceBundleClass.ivars;
      *&v220 = 0xD00000000000001CLL;
      *(&v220 + 1) = 0x80000001007616D0;
      *&v221 = v43;
      *(&v221 + 1) = v45;
      v222 = 0u;
      v223 = 0u;
      *&v224 = v193;
      *(&v224 + 1) = v192;
      v46 = 1;
      v225 = 1;
      a3 = v204;
    }

    else
    {

      v223 = 0u;
      v224 = 0u;
      v221 = 0u;
      v222 = 0u;
      v220 = 0u;
      v46 = 254;
      v225 = -2;
      p_ivars = (&ResourceBundleClass + 48);
    }
  }

  else
  {
    v223 = 0u;
    v224 = 0u;
    v221 = 0u;
    v222 = 0u;
    v220 = 0u;
    v46 = 254;
    v225 = -2;
  }

  v47 = [a3 weatherTemperatureForWorkout:a1 workoutActivity:a2];
  if (!v47)
  {
LABEL_13:
    v67 = _swiftEmptyArrayStorage;
    goto LABEL_18;
  }

  v48 = v47;
  result = _HKWeatherTemperatureUnit();
  if (!result)
  {
LABEL_70:
    __break(1u);
    return result;
  }

  v49 = result;
  v50 = objc_opt_self();
  [v48 doubleValueForUnit:v49];
  v52 = v51;

  v53 = [objc_allocWithZone(NSNumber) p_ivars[342]];
  v54 = [v50 stringWithNumber:v53 decimalPrecision:1];

  if (!v54)
  {

    goto LABEL_13;
  }

  v55 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v57 = v56;

  v58 = type metadata accessor for FitnessUILocalizationFeature();
  v59 = v195;
  (*(*(v58 - 8) + 56))(v195, 1, 1, v58);
  String.fitnessUILocalizedString(feature:)();
  sub_10000EA04(v59, &qword_1008F1A10);
  sub_100140278(&unk_1008E4E50);
  v60 = swift_allocObject();
  *(v60 + 16) = xmmword_1006D46C0;
  *(v60 + 56) = &type metadata for String;
  *(v60 + 64) = sub_10000A788();
  *(v60 + 32) = v55;
  *(v60 + 40) = v57;
  v61 = v203;
  v195 = String.init(format:_:)();
  v193 = v62;

  v192 = sub_100387DBC(a1, v61);
  v190 = v63;
  v64 = v197;
  sub_1003876C4(a1, v61, v197);
  v65 = v196;
  v66 = v198;
  if ((*(v196 + 48))(v64, 1, v198) == 1)
  {
    sub_10000EA04(v64, &qword_1008EABB8);
    v197 = 0;
    v189 = 0;
  }

  else
  {
    v68 = v194;
    (*(v65 + 32))(v194, v64, v66);
    v197 = WeatherCondition.accessibilityDescription.getter();
    v189 = v69;
    (*(v65 + 8))(v68, v66);
  }

  v70 = [objc_opt_self() mainBundle];
  v191 = a1;
  v71 = String._bridgeToObjectiveC()();
  v72 = [v70 localizedStringForKey:v71 value:0 table:0];

  v73 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v75 = v74;

  *&v207 = v73;
  *(&v207 + 1) = v75;
  sub_10000FCBC();
  v76 = StringProtocol.localizedUppercase.getter();
  v78 = v77;

  v67 = sub_1001A3750(0, 1, 1, _swiftEmptyArrayStorage);
  v80 = *(v67 + 2);
  v79 = *(v67 + 3);
  if (v80 >= v79 >> 1)
  {
    v67 = sub_1001A3750((v79 > 1), v80 + 1, 1, v67);
  }

  *(v67 + 2) = v80 + 1;
  v81 = &v67[88 * v80];
  *(v81 + 4) = 0xD000000000000012;
  *(v81 + 5) = 0x8000000100761650;
  *(v81 + 6) = v76;
  *(v81 + 7) = v78;
  a1 = v191;
  v82 = v190;
  *(v81 + 8) = v192;
  *(v81 + 9) = v82;
  v83 = v189;
  *(v81 + 10) = v197;
  *(v81 + 11) = v83;
  v84 = v193;
  *(v81 + 12) = v195;
  *(v81 + 13) = v84;
  v81[112] = 1;
  v46 = v225;
  a2 = v203;
  a3 = v204;
LABEL_18:
  v217 = v222;
  v218 = v223;
  v219 = v224;
  v215 = v220;
  v216 = v221;
  if (v46 <= 0xFD)
  {
    v210 = v223;
    v211 = v224;
    v212 = v225;
    v207 = v220;
    v208 = v221;
    v209 = v222;
    sub_10025EBFC(&v207, v206);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v67 = sub_1001A3750(0, *(v67 + 2) + 1, 1, v67);
    }

    v86 = *(v67 + 2);
    v85 = *(v67 + 3);
    if (v86 >= v85 >> 1)
    {
      v67 = sub_1001A3750((v85 > 1), v86 + 1, 1, v67);
    }

    *(v67 + 2) = v86 + 1;
    v87 = &v67[88 * v86];
    *(v87 + 2) = v215;
    v88 = v216;
    v89 = v217;
    v90 = v219;
    *(v87 + 5) = v218;
    *(v87 + 6) = v90;
    *(v87 + 3) = v88;
    *(v87 + 4) = v89;
    v87[112] = v46;
  }

  v91 = [a3 weatherHumidityForWorkout:a1 workoutActivity:{a2, v189}];
  v92 = v205;
  if (v91)
  {
    v93 = v91;
    v94 = objc_opt_self();
    v95 = [objc_opt_self() percentUnit];
    [v93 doubleValueForUnit:v95];
    v97 = v96;

    v98 = [objc_allocWithZone(NSNumber) initWithDouble:v97 / 100.0];
    v99 = [v94 percentStringWithNumber:v98];

    if (v99)
    {
      v100 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v198 = v101;

      v102 = [objc_opt_self() mainBundle];
      v103 = String._bridgeToObjectiveC()();
      v104 = [v102 localizedStringForKey:v103 value:0 table:0];

      v105 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v107 = v106;

      *&v207 = v105;
      *(&v207 + 1) = v107;
      sub_10000FCBC();
      v108 = StringProtocol.localizedUppercase.getter();
      v110 = v109;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v67 = sub_1001A3750(0, *(v67 + 2) + 1, 1, v67);
      }

      v112 = *(v67 + 2);
      v111 = *(v67 + 3);
      a2 = v203;
      if (v112 >= v111 >> 1)
      {
        v67 = sub_1001A3750((v111 > 1), v112 + 1, 1, v67);
      }

      *(v67 + 2) = v112 + 1;
      v113 = &v67[88 * v112];
      *(v113 + 2) = xmmword_1006F7640;
      *(v113 + 6) = v108;
      *(v113 + 7) = v110;
      *(v113 + 4) = 0u;
      *(v113 + 5) = 0u;
      v114 = v198;
      *(v113 + 12) = v100;
      *(v113 + 13) = v114;
      v113[112] = 1;
      a3 = v204;
      v92 = v205;
    }

    else
    {
    }
  }

  v115 = [a3 airQualityIndexForWorkout:a1 workoutActivity:a2];
  if (v115)
  {
    v116 = v115;
    v117 = [objc_opt_self() stringWithNumber:v115 decimalPrecision:1];
    if (v117)
    {
      v118 = v117;
      v119 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v198 = v120;

      v121 = [objc_opt_self() mainBundle];
      v122 = String._bridgeToObjectiveC()();
      v123 = [v121 localizedStringForKey:v122 value:0 table:0];

      v124 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v126 = v125;

      *&v207 = v124;
      *(&v207 + 1) = v126;
      sub_10000FCBC();
      v127 = StringProtocol.localizedUppercase.getter();
      v129 = v128;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v67 = sub_1001A3750(0, *(v67 + 2) + 1, 1, v67);
      }

      v131 = *(v67 + 2);
      v130 = *(v67 + 3);
      a2 = v203;
      if (v131 >= v130 >> 1)
      {
        v67 = sub_1001A3750((v130 > 1), v131 + 1, 1, v67);
      }

      *(v67 + 2) = v131 + 1;
      v132 = &v67[88 * v131];
      *(v132 + 2) = xmmword_1006F7650;
      *(v132 + 6) = v127;
      *(v132 + 7) = v129;
      *(v132 + 4) = 0u;
      *(v132 + 5) = 0u;
      v133 = v198;
      *(v132 + 12) = v119;
      *(v132 + 13) = v133;
      v132[112] = 1;
      a3 = v204;
      v92 = v205;
    }

    else
    {
    }
  }

  v134 = [a3 locationForWorkout:a1 workoutActivity:a2];
  if (v134)
  {
    v135 = v134;
    if (sub_100523468(a1, a2))
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v67 = sub_1001A3750(0, *(v67 + 2) + 1, 1, v67);
      }

      v137 = *(v67 + 2);
      v136 = *(v67 + 3);
      if (v137 >= v136 >> 1)
      {
        v67 = sub_1001A3750((v136 > 1), v137 + 1, 1, v67);
      }

      *(v67 + 2) = v137 + 1;
      v138 = &v67[88 * v137];
      *(v138 + 4) = v135;
      v138[112] = 0x80;
    }

    else
    {
    }
  }

  v139 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v140 = swift_allocObject();
  v140[2] = a3;
  v140[3] = a1;
  v141 = v199;
  v140[4] = v199;
  v140[5] = v139;
  type metadata accessor for WorkoutDetailMapView.ViewModel();
  swift_allocObject();
  v142 = a3;
  v143 = a1;
  v144 = v141;
  v145 = sub_1004BDEC8(1, 0, sub_100524CA4, v140);
  type metadata accessor for WorkoutDetailMapAndWeatherView.ViewModel();
  v146 = swift_allocObject();
  *(v146 + 16) = v145;
  *(v146 + 24) = v67;
  sub_100524D18(&qword_1008F1A18, type metadata accessor for WorkoutDetailMapAndWeatherView.ViewModel);

  v147 = ObservedObject.init(wrappedValue:)();
  v149 = v148;
  *&v92[OBJC_IVAR___CHWorkoutDetailMapAndWeatherTableViewCell_mapAndWeatherViewModel] = v146;

  v150 = [v143 metadata];
  if (!v150)
  {
    goto LABEL_58;
  }

  v151 = v150;
  v152 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v153 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (*(v152 + 16))
  {
    v203 = v144;
    v204 = v147;
    v155 = v149;
    v156 = sub_100066F20(v153, v154);
    v158 = v157;

    if (v158)
    {
      sub_10000B1B4(*(v152 + 56) + 32 * v156, &v207);

      sub_1000059F8(0, &qword_1008E1750);
      if (swift_dynamicCast())
      {
        v159 = v206[0];
        v160 = [v206[0] BOOLValue];
        v92 = v205;
        v149 = v155;
        if (v160)
        {
          v161 = type metadata accessor for WorkoutExtendedModePathRenderer();
          v162 = type metadata accessor for WorkoutRouteMapGenerator();
          v163 = objc_allocWithZone(v162);
          v163[OBJC_IVAR___CHWorkoutRouteMapGenerator_isForDive] = 0;
          *&v163[OBJC_IVAR___CHWorkoutRouteMapGenerator_pinWidth] = 0x402E000000000000;
          *&v163[OBJC_IVAR___CHWorkoutRouteMapGenerator_locationReadings] = 0;
          *&v163[OBJC_IVAR___CHWorkoutRouteMapGenerator_mapSnapshotter] = 0;
          v164 = &v163[OBJC_IVAR___CHWorkoutRouteMapGenerator_mapSize];
          *v164 = 0;
          *(v164 + 1) = 0;
          v164[16] = 1;
          *&v163[OBJC_IVAR___CHWorkoutRouteMapGenerator_pathRendererClass] = v161;
          v213.receiver = v163;
          v213.super_class = v162;
          v165 = objc_msgSendSuper2(&v213, "init");

          v166 = v165;
          v144 = v203;
          v147 = v204;
          goto LABEL_59;
        }

        goto LABEL_57;
      }
    }

    else
    {
    }

    v92 = v205;
    v149 = v155;
LABEL_57:
    v144 = v203;
    v147 = v204;
    goto LABEL_58;
  }

  v92 = v205;
LABEL_58:
  v167 = type metadata accessor for WorkoutGradientPathRenderer();
  v168 = type metadata accessor for WorkoutRouteMapGenerator();
  v169 = objc_allocWithZone(v168);
  v169[OBJC_IVAR___CHWorkoutRouteMapGenerator_isForDive] = 0;
  *&v169[OBJC_IVAR___CHWorkoutRouteMapGenerator_pinWidth] = 0x402E000000000000;
  *&v169[OBJC_IVAR___CHWorkoutRouteMapGenerator_locationReadings] = 0;
  *&v169[OBJC_IVAR___CHWorkoutRouteMapGenerator_mapSnapshotter] = 0;
  v170 = &v169[OBJC_IVAR___CHWorkoutRouteMapGenerator_mapSize];
  *v170 = 0;
  *(v170 + 1) = 0;
  v170[16] = 1;
  *&v169[OBJC_IVAR___CHWorkoutRouteMapGenerator_pathRendererClass] = v167;
  v214.receiver = v169;
  v214.super_class = v168;
  v166 = objc_msgSendSuper2(&v214, "init");
LABEL_59:
  v171 = *&v92[OBJC_IVAR___CHWorkoutDetailMapAndWeatherTableViewCell_snapshotGenerator];
  *&v92[OBJC_IVAR___CHWorkoutDetailMapAndWeatherTableViewCell_snapshotGenerator] = v166;

  v172 = [v143 workoutActivityType];
  v173 = OBJC_IVAR___CHWorkoutDetailMapAndWeatherTableViewCell_snapshotGenerator;
  if (v172 == 84)
  {
    v174 = *&v92[OBJC_IVAR___CHWorkoutDetailMapAndWeatherTableViewCell_snapshotGenerator];
    if (v174)
    {
      *(v174 + OBJC_IVAR___CHWorkoutRouteMapGenerator_isForDive) = 1;
      v173 = OBJC_IVAR___CHWorkoutDetailMapAndWeatherTableViewCell_snapshotGenerator;
    }
  }

  v175 = *&v92[v173];
  if (v175)
  {
    v176 = *(v175 + OBJC_IVAR___CHWorkoutRouteMapGenerator_locationReadings);
    *(v175 + OBJC_IVAR___CHWorkoutRouteMapGenerator_locationReadings) = v144;
    v177 = v144;

    v178 = *&v92[v173];
    if (v178)
    {
      v179 = qword_1008DAC80;
      v180 = v178;
      if (v179 != -1)
      {
        swift_once();
      }

      v181 = *&qword_100925B70;
      v182 = *&qword_100925B78;
      v183 = [objc_opt_self() system];
      v184 = [v183 preferredContentSizeCategory];

      v185 = [objc_opt_self() traitCollectionWithPreferredContentSizeCategory:v184];
      v186 = v92;
      sub_1005D9998(v185, v180, v186, v181, v182, 3.0, 16.0, 16.0, 16.0, 16.0);
    }
  }

  __chkstk_darwin(v172);
  *(&v189 - 2) = v147;
  *(&v189 - 1) = v149;
  sub_100524CBC();
  v187 = v200;
  UIHostingConfiguration<>.init(content:)();
  static Edge.Set.all.getter();
  v188 = v202;
  *(&v208 + 1) = v202;
  *&v209 = sub_10014A6B0(&qword_1008F1A28, &qword_1008F1A08);
  sub_100005994(&v207);
  UIHostingConfiguration.margins(_:_:)();
  (*(v201 + 8))(v187, v188);
  UITableViewCell.contentConfiguration.setter();
  sub_10000EA04(&v220, qword_1008F1A30);
}

uint64_t sub_100524CB0@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *(v1 + 16);
  a1[1] = v2;
}

unint64_t sub_100524CBC()
{
  result = qword_1008F1A20;
  if (!qword_1008F1A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F1A20);
  }

  return result;
}

uint64_t sub_100524D18(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_100524D7C()
{
  sub_10005C91C();
  if (v0 <= 0x3F)
  {
    sub_10005C818();
    if (v1 <= 0x3F)
    {
      swift_checkMetadataState();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_100524E24(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v6 = *(*(type metadata accessor for DynamicTypeSize() - 8) + 64);
  v7 = *(*(a3 + 16) - 8);
  if (v6 <= 8)
  {
    v6 = 8;
  }

  v8 = *(v7 + 84);
  v9 = *(v7 + 80);
  v10 = *(v7 + 64);
  if (v8 <= 0x7FFFFFFF)
  {
    v11 = 0x7FFFFFFF;
  }

  else
  {
    v11 = *(v7 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 <= v11)
  {
    goto LABEL_30;
  }

  v12 = (((v6 & 0xFFFFFFFFFFFFFFF8) + v9 + 49) & ~v9) + v10;
  v13 = 8 * v12;
  if (v12 <= 3)
  {
    v16 = ((a2 - v11 + ~(-1 << v13)) >> v13) + 1;
    if (HIWORD(v16))
    {
      v14 = *(a1 + v12);
      if (!v14)
      {
        goto LABEL_30;
      }

      goto LABEL_17;
    }

    if (v16 > 0xFF)
    {
      v14 = *(a1 + v12);
      if (!*(a1 + v12))
      {
        goto LABEL_30;
      }

      goto LABEL_17;
    }

    if (v16 < 2)
    {
LABEL_30:
      v20 = (a1 + v6 + 8) & 0xFFFFFFFFFFFFFFF8;
      if ((v8 & 0x80000000) != 0)
      {
        v22 = *(*(*(a3 + 16) - 8) + 48);

        return v22((v20 + v9 + 41) & ~v9);
      }

      else
      {
        v21 = *(v20 + 24);
        if (v21 >= 0xFFFFFFFF)
        {
          LODWORD(v21) = -1;
        }

        return (v21 + 1);
      }
    }
  }

  v14 = *(a1 + v12);
  if (!*(a1 + v12))
  {
    goto LABEL_30;
  }

LABEL_17:
  v17 = (v14 - 1) << v13;
  if (v12 > 3)
  {
    v17 = 0;
  }

  if (v12)
  {
    if (v12 <= 3)
    {
      v18 = v12;
    }

    else
    {
      v18 = 4;
    }

    if (v18 > 2)
    {
      if (v18 == 3)
      {
        v19 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v19 = *a1;
      }
    }

    else if (v18 == 1)
    {
      v19 = *a1;
    }

    else
    {
      v19 = *a1;
    }
  }

  else
  {
    v19 = 0;
  }

  return v11 + (v19 | v17) + 1;
}

void sub_100525030(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = *(*(type metadata accessor for DynamicTypeSize() - 8) + 64);
  v9 = *(*(a4 + 16) - 8);
  if (v8 <= 8)
  {
    v8 = 8;
  }

  v10 = *(*(a4 + 16) - 8);
  v11 = *(v9 + 84);
  v12 = *(v9 + 80);
  v13 = *(v9 + 64);
  if (v11 <= 0x7FFFFFFF)
  {
    v14 = 0x7FFFFFFF;
  }

  else
  {
    v14 = *(v9 + 84);
  }

  v15 = (((v8 & 0xFFFFFFFFFFFFFFF8) + v12 + 49) & ~v12) + v13;
  if (a3 <= v14)
  {
    v16 = 0;
  }

  else if (v15 <= 3)
  {
    v19 = ((a3 - v14 + ~(-1 << (8 * v15))) >> (8 * v15)) + 1;
    if (HIWORD(v19))
    {
      v16 = 4;
    }

    else
    {
      if (v19 < 0x100)
      {
        v20 = 1;
      }

      else
      {
        v20 = 2;
      }

      if (v19 >= 2)
      {
        v16 = v20;
      }

      else
      {
        v16 = 0;
      }
    }
  }

  else
  {
    v16 = 1;
  }

  if (v14 < a2)
  {
    v17 = ~v14 + a2;
    if (v15 < 4)
    {
      v18 = (v17 >> (8 * v15)) + 1;
      if (v15)
      {
        v21 = v17 & ~(-1 << (8 * v15));
        bzero(a1, v15);
        if (v15 != 3)
        {
          if (v15 == 2)
          {
            *a1 = v21;
            if (v16 > 1)
            {
LABEL_48:
              if (v16 == 2)
              {
                *&a1[v15] = v18;
              }

              else
              {
                *&a1[v15] = v18;
              }

              return;
            }
          }

          else
          {
            *a1 = v17;
            if (v16 > 1)
            {
              goto LABEL_48;
            }
          }

          goto LABEL_45;
        }

        *a1 = v21;
        a1[2] = BYTE2(v21);
      }

      if (v16 > 1)
      {
        goto LABEL_48;
      }
    }

    else
    {
      bzero(a1, v15);
      *a1 = v17;
      v18 = 1;
      if (v16 > 1)
      {
        goto LABEL_48;
      }
    }

LABEL_45:
    if (v16)
    {
      a1[v15] = v18;
    }

    return;
  }

  if (v16 > 1)
  {
    if (v16 != 2)
    {
      *&a1[v15] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_33;
    }

    *&a1[v15] = 0;
  }

  else if (v16)
  {
    a1[v15] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_33;
  }

  if (!a2)
  {
    return;
  }

LABEL_33:
  v22 = &a1[v8 + 8] & 0xFFFFFFFFFFFFFFF8;
  if ((v11 & 0x80000000) != 0)
  {
    v23 = *(v10 + 56);

    v23((v22 + v12 + 41) & ~v12, a2);
  }

  else if ((a2 & 0x80000000) != 0)
  {
    *(v22 + 8) = 0u;
    *(v22 + 24) = 0u;
    *v22 = a2 & 0x7FFFFFFF;
  }

  else
  {
    *(v22 + 24) = (a2 - 1);
  }
}

uint64_t sub_100525330(uint64_t TupleTypeMetadata, unint64_t a2, uint64_t a3)
{
  v5 = TupleTypeMetadata;
  if (a2 == 1)
  {
    v6 = *(a3 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    __chkstk_darwin(TupleTypeMetadata);
    v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (a2)
    {
      v9 = 0;
      v10 = a3 & 0xFFFFFFFFFFFFFFFELL;
      if (a2 < 4)
      {
        goto LABEL_9;
      }

      if (&v8[-v10] < 0x20)
      {
        goto LABEL_9;
      }

      v9 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      v11 = (v10 + 16);
      v12 = v8 + 16;
      v13 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v14 = *v11;
        *(v12 - 1) = *(v11 - 1);
        *v12 = v14;
        v11 += 2;
        v12 += 2;
        v13 -= 4;
      }

      while (v13);
      if (v9 != a2)
      {
LABEL_9:
        v15 = a2 - v9;
        v16 = 8 * v9;
        v17 = &v8[8 * v9];
        v18 = (v10 + v16);
        do
        {
          v19 = *v18++;
          *v17 = v19;
          v17 += 8;
          --v15;
        }

        while (v15);
      }
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v6 = TupleTypeMetadata;
  }

  __chkstk_darwin(TupleTypeMetadata);
  v21 = &v30 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v22 = (a3 & 0xFFFFFFFFFFFFFFFELL);
    v23 = (v6 + 32);
    v24 = a2;
    do
    {
      if (a2 == 1)
      {
        v25 = 0;
      }

      else
      {
        v25 = *v23;
      }

      v27 = *v22++;
      v26 = v27;
      v28 = *v5++;
      (*(*(v26 - 8) + 16))(&v21[v25], v28);
      v23 += 4;
      --v24;
    }

    while (v24);
  }

  return TupleView.init(_:)();
}

uint64_t sub_100525500@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1;
  v45 = *(a1 + 16);
  v46 = a2;
  type metadata accessor for ModifiedContent();
  v44 = *(v3 + 24);
  v58 = v44;
  v59 = &protocol witness table for _PaddingLayout;
  v43 = &protocol conformance descriptor for <> ModifiedContent<A, B>;
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for AccessibilityAttachmentModifier();
  type metadata accessor for ModifiedContent();
  sub_100141EEC(&qword_1008F1AB8);
  swift_getTupleTypeMetadata3();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for VStack();
  sub_100141EEC(&qword_1008DC840);
  v4 = type metadata accessor for ModifiedContent();
  WitnessTable = swift_getWitnessTable();
  v57 = sub_10014A6B0(&qword_1008DC838, &qword_1008DC840);
  v42 = v4;
  v41 = swift_getWitnessTable();
  v52 = v4;
  v53 = &type metadata for Never;
  v54 = v41;
  v55 = &protocol witness table for Never;
  v5 = type metadata accessor for NavigationLink();
  v40 = *(v5 - 8);
  __chkstk_darwin(v5);
  v36 = &OpaqueTypeMetadata2 - v6;
  v7 = swift_getWitnessTable();
  v35 = v7;
  v34 = sub_10052675C();
  v52 = v5;
  v53 = &type metadata for OpaqueButtonStyle;
  v54 = v7;
  v55 = v34;
  v37 = &opaque type descriptor for <<opaque return type of View.buttonStyle<A>(_:)>>;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v38 = *(OpaqueTypeMetadata2 - 8);
  __chkstk_darwin(OpaqueTypeMetadata2);
  v9 = &OpaqueTypeMetadata2 - v8;
  sub_100141EEC(&qword_1008E4500);
  v10 = type metadata accessor for ModifiedContent();
  v39 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &OpaqueTypeMetadata2 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &OpaqueTypeMetadata2 - v14;
  v16 = v2;
  v17 = (v2 + *(v3 + 36));
  v18 = v17[3];
  v19 = v17[4];
  sub_1000066AC(v17, v18);
  v20 = (*(v19 + 16))(v18, v19);
  v22 = v21;
  LOBYTE(v19) = v23;
  LOBYTE(v3) = sub_1000490C8(v20, v21, v23);
  sub_10001D4F8(v20, v22, v19);
  LOBYTE(v52) = v3;
  v47 = v45;
  v48 = v44;
  v49 = v16;
  sub_10018297C();
  v24 = v36;
  NavigationLink<>.init<A>(value:label:)();
  v25 = v35;
  v26 = v34;
  View.buttonStyle<A>(_:)();
  (*(v40 + 8))(v24, v5);
  static Color.white.getter();
  v52 = v5;
  v53 = &type metadata for OpaqueButtonStyle;
  v54 = v25;
  v55 = v26;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v28 = OpaqueTypeMetadata2;
  View.accentColor(_:)();

  (*(v38 + 8))(v9, v28);
  v29 = sub_10014A6B0(&qword_1008E44F8, &qword_1008E4500);
  v50 = OpaqueTypeConformance2;
  v51 = v29;
  v30 = swift_getWitnessTable();
  sub_100073018(v12, v10, v30);
  v31 = *(v39 + 8);
  v31(v12, v10);
  sub_100073018(v15, v10, v30);
  return (v31)(v15, v10);
}

uint64_t sub_100525B40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v21 = a3;
  v22 = a1;
  v24 = a4;
  v32 = a3;
  v33 = &protocol witness table for _PaddingLayout;
  v23 = &protocol conformance descriptor for <> ModifiedContent<A, B>;
  v30 = type metadata accessor for ModifiedContent();
  WitnessTable = swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for AccessibilityAttachmentModifier();
  type metadata accessor for ModifiedContent();
  sub_100141EEC(&qword_1008F1AB8);
  swift_getTupleTypeMetadata3();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  v5 = type metadata accessor for VStack();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v21 - v7;
  sub_100141EEC(&qword_1008DC840);
  v9 = type metadata accessor for ModifiedContent();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v21 - v14;
  v25 = a2;
  v26 = v21;
  v27 = v22;
  static HorizontalAlignment.center.getter();
  VStack.init(alignment:spacing:content:)();
  v16 = swift_getWitnessTable();
  sub_1005267C8();
  View.contentShape<A>(_:eoFill:)();
  (*(v6 + 8))(v8, v5);
  v17 = sub_10014A6B0(&qword_1008DC838, &qword_1008DC840);
  v28 = v16;
  v29 = v17;
  v18 = swift_getWitnessTable();
  sub_100073018(v12, v9, v18);
  v19 = *(v10 + 8);
  v19(v12, v9);
  sub_100073018(v15, v9, v18);
  return (v19)(v15, v9);
}

uint64_t sub_100525EEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v73 = a3;
  v5 = type metadata accessor for AccessibilityChildBehavior();
  v69 = *(v5 - 8);
  v70 = v5;
  __chkstk_darwin(v5);
  v65 = &v63 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ModifiedContent();
  v67 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v63 - v8;
  v93[5] = a2;
  v93[6] = &protocol witness table for _PaddingLayout;
  v72 = &protocol conformance descriptor for <> ModifiedContent<A, B>;
  WitnessTable = swift_getWitnessTable();
  *&v102[0] = v7;
  *(&v102[0] + 1) = WitnessTable;
  v68 = &opaque type descriptor for <<opaque return type of View.accessibilityElement(children:)>>;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v71 = *(OpaqueTypeMetadata2 - 8);
  __chkstk_darwin(OpaqueTypeMetadata2);
  v74 = &v63 - v10;
  type metadata accessor for AccessibilityAttachmentModifier();
  v76 = type metadata accessor for ModifiedContent();
  v78 = *(v76 - 8);
  __chkstk_darwin(v76);
  v75 = &v63 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v77 = &v63 - v13;
  v14 = type metadata accessor for CardFamilyEntryLinkView();
  static Edge.Set.bottom.getter();
  sub_1005265F0(v14);
  View.padding(_:_:)();
  v15 = v65;
  static AccessibilityChildBehavior.ignore.getter();
  v16 = WitnessTable;
  View.accessibilityElement(children:)();
  (*(v69 + 8))(v15, v70);
  (*(v67 + 8))(v9, v7);
  v17 = (a1 + *(v14 + 36));
  v18 = v17[3];
  v19 = v17[4];
  sub_1000066AC(v17, v18);
  v20 = (*(v19 + 16))(v18, v19);
  v22 = v21;
  LOBYTE(v19) = v23;
  v24 = sub_1000490C8(v20, v21, v23);
  sub_10001D4F8(v20, v22, v19);
  *&v102[0] = sub_1000492D8(v24);
  *(&v102[0] + 1) = v25;
  *&v94 = v7;
  *(&v94 + 1) = v16;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_10000FCBC();
  v27 = v74;
  v28 = v75;
  v29 = OpaqueTypeMetadata2;
  View.accessibilityLabel<A>(_:)();

  (*(v71 + 8))(v27, v29);
  v30 = sub_100313908();
  v93[3] = OpaqueTypeConformance2;
  v93[4] = v30;
  v31 = v76;
  v72 = swift_getWitnessTable();
  sub_100073018(v28, v31, v72);
  v74 = *(v78 + 8);
  (v74)(v28, v31);
  v32 = v17[3];
  v33 = v17[4];
  sub_1000066AC(v17, v32);
  v34 = (*(v33 + 16))(v32, v33);
  v36 = v35;
  LOBYTE(v32) = v37;
  LOBYTE(v33) = sub_1000490C8(v34, v35, v37);
  sub_10001D4F8(v34, v36, v32);
  *&v102[0] = sub_100183B30(v33);
  *(&v102[0] + 1) = v38;
  v39 = Text.init<A>(_:)();
  v41 = v40;
  LOBYTE(v22) = v42;
  v44 = v43;
  KeyPath = swift_getKeyPath();
  LOBYTE(v33) = static Edge.Set.horizontal.getter();
  EdgeInsets.init(_all:)();
  v47 = v46;
  v49 = v48;
  v51 = v50;
  v53 = v52;
  LOBYTE(v28) = v22 & 1;
  LOBYTE(v102[0]) = v22 & 1;
  LOBYTE(v94) = 0;
  v54 = static Font.footnote.getter();
  v55 = swift_getKeyPath();
  v56 = static HierarchicalShapeStyle.secondary.getter();
  *&v94 = v39;
  *(&v94 + 1) = v41;
  LOBYTE(v95) = v28;
  *(&v95 + 1) = v44;
  *&v96 = KeyPath;
  BYTE8(v96) = 1;
  LOBYTE(v97) = v33;
  *(&v97 + 1) = v47;
  *&v98 = v49;
  *(&v98 + 1) = v51;
  *&v99 = v53;
  BYTE8(v99) = 0;
  *(&v99 + 9) = 256;
  *&v100 = v55;
  *(&v100 + 1) = v54;
  v101 = v56;
  v57 = v77;
  v58 = v75;
  v59 = v76;
  (*(v78 + 16))(v75, v77, v76);
  v89 = v98;
  v90 = v99;
  v91 = v100;
  v92 = v101;
  v85 = v94;
  v86 = v95;
  v87 = v96;
  v88 = v97;
  v93[0] = v58;
  v93[1] = &v85;
  v83 = 0;
  v84 = 0;
  v93[2] = &v83;
  sub_10052681C(&v94, v102);
  v82[0] = v59;
  v82[1] = sub_100140278(&qword_1008F1AB8);
  v82[2] = &type metadata for Spacer;
  v79 = v72;
  v80 = sub_10052688C();
  v81 = &protocol witness table for Spacer;
  sub_100525330(v93, 3uLL, v82);
  sub_100526A88(&v94);
  v60 = v57;
  v61 = v74;
  (v74)(v60, v59);
  v102[4] = v89;
  v102[5] = v90;
  v102[6] = v91;
  v103 = v92;
  v102[0] = v85;
  v102[1] = v86;
  v102[2] = v87;
  v102[3] = v88;
  sub_100526A88(v102);
  return v61(v58, v59);
}

double sub_1005265F0(uint64_t a1)
{
  v3 = type metadata accessor for DynamicTypeSize();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v13 - v8;
  sub_10005491C(&v13 - v8);
  (*(v4 + 104))(v6, enum case for DynamicTypeSize.xxxLarge(_:), v3);
  v10 = static DynamicTypeSize.< infix(_:_:)();
  v11 = *(v4 + 8);
  v11(v6, v3);
  v11(v9, v3);
  result = 15.0;
  if ((v10 & 1) == 0)
  {
    result = 94.0;
    if (!*(v1 + *(a1 + 40)))
    {
      return 30.0;
    }
  }

  return result;
}

unint64_t sub_10052675C()
{
  result = qword_1008F1AC0;
  if (!qword_1008F1AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F1AC0);
  }

  return result;
}

unint64_t sub_1005267C8()
{
  result = qword_1008F1AC8;
  if (!qword_1008F1AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F1AC8);
  }

  return result;
}

uint64_t sub_10052681C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100140278(&qword_1008F1AB8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_10052688C()
{
  result = qword_1008F1AD0;
  if (!qword_1008F1AD0)
  {
    sub_100141EEC(&qword_1008F1AB8);
    sub_100526944();
    sub_10014A6B0(&qword_1008DD728, &qword_1008DD730);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F1AD0);
  }

  return result;
}

unint64_t sub_100526944()
{
  result = qword_1008F1AD8;
  if (!qword_1008F1AD8)
  {
    sub_100141EEC(&qword_1008F1AE0);
    sub_1005269FC();
    sub_10014A6B0(&qword_1008DC4C8, &qword_1008DC4D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F1AD8);
  }

  return result;
}

unint64_t sub_1005269FC()
{
  result = qword_1008F1AE8;
  if (!qword_1008F1AE8)
  {
    sub_100141EEC(&qword_1008F1AF0);
    sub_100182D84();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F1AE8);
  }

  return result;
}

uint64_t sub_100526A88(uint64_t a1)
{
  v2 = sub_100140278(&qword_1008F1AB8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100526AF0@<X0>(void *a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v46 = a2;
  v48 = a3;
  v47 = type metadata accessor for NavigationSource();
  v45 = *(v47 - 8);
  __chkstk_darwin(v47);
  v44 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for NavigationAnnotation();
  v42 = *(v5 - 8);
  v43 = v5;
  __chkstk_darwin(v5);
  v41 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for NavigationPriority();
  v39 = *(v7 - 8);
  v40 = v7;
  __chkstk_darwin(v7);
  v38 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for NavigationRoutingBehavior();
  v36 = *(v9 - 8);
  v37 = v9;
  __chkstk_darwin(v9);
  v35 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for NavigationIntent();
  v33 = *(v11 - 8);
  v34 = v11;
  __chkstk_darwin(v11);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = type metadata accessor for NavigationResource();
  v14 = *(v32 - 8);
  __chkstk_darwin(v32);
  v31 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v31 - v17;
  sub_1000066AC(a1, a1[3]);
  v19 = ShelfLockupDescriptor.titleTags.getter();
  isa = MediaTagStringBuilding.attributedString(for:)(v19).super.isa;

  v21 = [(objc_class *)isa string];

  v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v24 = v23;

  v25 = ShelfLockupDescriptor.identifier.getter();
  v27 = v26;
  v28 = ShelfLockupDescriptor.galleryDisplayStyle.getter();
  *v18 = v25;
  *(v18 + 1) = v27;
  v18[16] = v28;
  *(v18 + 3) = v22;
  *(v18 + 4) = v24;
  v29 = v32;
  (*(v14 + 104))(v18, enum case for NavigationResource.trainerTipsEditorialGallery(_:), v32);
  (*(v14 + 16))(v31, v18, v29);
  *v13 = 1;
  (*(v33 + 104))(v13, enum case for NavigationIntent.push(_:), v34);
  (*(v36 + 104))(v35, enum case for NavigationRoutingBehavior.takeover(_:), v37);
  (*(v39 + 104))(v38, enum case for NavigationPriority.takeover(_:), v40);
  (*(v42 + 16))(v41, v46, v43);
  (*(v45 + 104))(v44, enum case for NavigationSource.default(_:), v47);
  NavigationRequest.init(resource:intent:source:routingBehavior:priority:annotation:)();
  return (*(v14 + 8))(v18, v29);
}

uint64_t sub_10052701C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_100527064(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_100527144()
{
  result = qword_1008F1B10;
  if (!qword_1008F1B10)
  {
    sub_100141EEC(&qword_1008F1B08);
    sub_1005271D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F1B10);
  }

  return result;
}

unint64_t sub_1005271D0()
{
  result = qword_1008F1B18;
  if (!qword_1008F1B18)
  {
    sub_100141EEC(&qword_1008F1B00);
    sub_10052725C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F1B18);
  }

  return result;
}

unint64_t sub_10052725C()
{
  result = qword_1008F1B20;
  if (!qword_1008F1B20)
  {
    sub_100141EEC(&qword_1008F1AF8);
    sub_1005272E8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F1B20);
  }

  return result;
}

unint64_t sub_1005272E8()
{
  result = qword_1008DC0D8;
  if (!qword_1008DC0D8)
  {
    sub_100141EEC(&qword_1008DC0E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008DC0D8);
  }

  return result;
}

uint64_t type metadata accessor for ActivitySharingAvatarView()
{
  result = qword_1008F1B80;
  if (!qword_1008F1B80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1005273C0()
{
  type metadata accessor for ActivitySharingHighlightViewModel();
  if (v0 <= 0x3F)
  {
    sub_100527444();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_100527444()
{
  if (!qword_1008F1B90)
  {
    sub_100141EEC(&qword_1008E9B30);
    v0 = type metadata accessor for State();
    if (!v1)
    {
      atomic_store(v0, &qword_1008F1B90);
    }
  }
}

__n128 sub_1005274C4@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v10 = *(a1 + *(type metadata accessor for ActivitySharingAvatarView() + 20));
  sub_100140278(&qword_1008F1BD0);
  State.wrappedValue.getter();
  if (v5)
  {
    v3 = v5;
    Image.init(uiImage:)();

    sub_100140278(&qword_1008E0090);
    sub_1001D1144();
    _ConditionalContent<>.init(storage:)();

    v12 = v7;
    v13 = v8;
    v14 = v9;
    v10 = v5;
    v11 = v6;
  }

  else
  {
    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    sub_100140278(&qword_1008E0090);
    sub_1001D1144();
    _ConditionalContent<>.init(storage:)();
  }

  *(a2 + 32) = v12;
  *(a2 + 48) = v13;
  *(a2 + 64) = v14;
  result = v11;
  *a2 = v10;
  *(a2 + 16) = v11;
  return result;
}

uint64_t sub_100527694(uint64_t a1)
{
  v1[6] = a1;
  v2 = *(type metadata accessor for ActivitySharingHighlightViewModel() - 8);
  v1[7] = v2;
  v1[8] = *(v2 + 64);
  v1[9] = swift_task_alloc();
  sub_100140278(&qword_1008E1760);
  v1[10] = swift_task_alloc();
  v1[11] = type metadata accessor for MainActor();
  v1[12] = static MainActor.shared.getter();

  return _swift_task_switch(sub_1005277A8, 0, 0);
}

uint64_t sub_1005277A8()
{
  v1 = v0[9];
  v2 = v0[10];
  v3 = v0[7];
  v4 = v0[6];
  v5 = type metadata accessor for TaskPriority();
  (*(*(v5 - 8) + 56))(v2, 1, 1, v5);
  sub_100527E38(v4, v1, type metadata accessor for ActivitySharingHighlightViewModel);
  v6 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  *(v7 + 24) = 0;
  sub_100527EA0(v1, v7 + v6, type metadata accessor for ActivitySharingHighlightViewModel);
  v8 = sub_10026EAC0(0, 0, v2, &unk_1006F79F0, v7);
  v0[13] = v8;
  v9 = swift_task_alloc();
  v0[14] = v9;
  v10 = sub_100527FF8();
  *v9 = v0;
  v9[1] = sub_100527938;

  return Task<>.value.getter(v0 + 4, v8, v10);
}

uint64_t sub_100527938()
{

  return _swift_task_switch(sub_100527A50, 0, 0);
}

uint64_t sub_100527A50()
{
  *(v0 + 120) = *(v0 + 32);
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100527AD0, v2, v1);
}

uint64_t sub_100527AD0()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 48);

  *(v0 + 16) = *(v2 + *(type metadata accessor for ActivitySharingAvatarView() + 20));
  *(v0 + 40) = v1;
  sub_100140278(&qword_1008F1BD0);
  State.wrappedValue.setter();

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_100527B9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(a1 - 8);
  sub_1005274C4(v2, v16);
  sub_100527E38(v2, &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ActivitySharingAvatarView);
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  sub_100527EA0(&v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6, type metadata accessor for ActivitySharingAvatarView);
  v8 = (a2 + *(sub_100140278(&qword_1008F1BC0) + 36));
  type metadata accessor for _TaskModifier();
  static TaskPriority.userInitiated.getter();
  *v8 = &unk_1006F79D0;
  v8[1] = v7;
  v9 = v16[3];
  *(a2 + 32) = v16[2];
  *(a2 + 48) = v9;
  *(a2 + 64) = v17;
  v10 = v16[1];
  *a2 = v16[0];
  *(a2 + 16) = v10;
  v11 = *(type metadata accessor for ActivitySharingHighlight() + 20);
  v12 = *(sub_100140278(&qword_1008F1BC8) + 52);
  v13 = type metadata accessor for UUID();
  return (*(*(v13 - 8) + 16))(a2 + v12, v2 + v11, v13);
}

uint64_t sub_100527D6C()
{
  v2 = *(type metadata accessor for ActivitySharingAvatarView() - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_10002BACC;

  return sub_100527694(v0 + v3);
}

uint64_t sub_100527E38(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100527EA0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100527F08(uint64_t a1)
{
  v4 = *(type metadata accessor for ActivitySharingHighlightViewModel() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10002BBC0;

  return sub_1002EA63C(a1, v6, v7, v1 + v5);
}

unint64_t sub_100527FF8()
{
  result = qword_1008DD8C0;
  if (!qword_1008DD8C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1008DD8C0);
  }

  return result;
}

unint64_t sub_100528044()
{
  result = qword_1008F1BD8;
  if (!qword_1008F1BD8)
  {
    sub_100141EEC(&qword_1008F1BC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F1BD8);
  }

  return result;
}

uint64_t sub_1005280D4()
{
  result = static Solarium.isEnabled.getter();
  v1 = 10.0;
  if (result)
  {
    v1 = 16.0;
  }

  qword_1008F1BE0 = *&v1;
  return result;
}

uint64_t sub_100528104@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v37 = a3;
  v38 = a4;
  v40 = a5;
  v41 = type metadata accessor for AccessibilityChildBehavior();
  v39 = *(v41 - 8);
  __chkstk_darwin(v41);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100140278(&qword_1008F1BE8);
  __chkstk_darwin(v9 - 8);
  v11 = &v37 - v10;
  v12 = sub_100140278(&qword_1008F1BF0);
  v13 = v12 - 8;
  __chkstk_darwin(v12);
  v15 = &v37 - v14;
  v16 = sub_100140278(&qword_1008F1BF8);
  v17 = v16 - 8;
  __chkstk_darwin(v16);
  v19 = &v37 - v18;
  v20 = sub_100140278(&qword_1008F1C00);
  __chkstk_darwin(v20);
  v22 = &v37 - v21;
  *v11 = static HorizontalAlignment.center.getter();
  *(v11 + 1) = 0;
  v11[16] = 0;
  v23 = sub_100140278(&qword_1008F1C08);
  sub_100528574(a1, a2, v37, v38, &v11[*(v23 + 44)]);
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  sub_100015E80(v11, v15, &qword_1008F1BE8);
  v24 = &v15[*(v13 + 44)];
  v25 = v47;
  *(v24 + 4) = v46;
  *(v24 + 5) = v25;
  *(v24 + 6) = v48;
  v26 = v43;
  *v24 = v42;
  *(v24 + 1) = v26;
  v27 = v45;
  *(v24 + 2) = v44;
  *(v24 + 3) = v27;
  v28 = [objc_opt_self() secondarySystemBackgroundColor];
  v29 = Color.init(uiColor:)();
  LOBYTE(v11) = static Edge.Set.all.getter();
  sub_100015E80(v15, v19, &qword_1008F1BF0);
  v30 = &v19[*(v17 + 44)];
  *v30 = v29;
  v30[8] = v11;
  if (qword_1008DAD18 != -1)
  {
    swift_once();
  }

  v31 = qword_1008F1BE0;
  v32 = &v22[*(v20 + 36)];
  v33 = *(type metadata accessor for RoundedRectangle() + 20);
  v34 = enum case for RoundedCornerStyle.continuous(_:);
  v35 = type metadata accessor for RoundedCornerStyle();
  (*(*(v35 - 8) + 104))(v32 + v33, v34, v35);
  *v32 = v31;
  v32[1] = v31;
  *(v32 + *(sub_100140278(&qword_1008DE1E0) + 36)) = 256;
  sub_100015E80(v19, v22, &qword_1008F1BF8);
  static AccessibilityChildBehavior.combine.getter();
  sub_1005295D0();
  View.accessibilityElement(children:)();
  (*(v39 + 8))(v8, v41);
  return sub_10000EA04(v22, &qword_1008F1C00);
}

uint64_t sub_100528574@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *&v88 = a4;
  v86 = a2;
  *&v87 = a3;
  v85 = a1;
  v92 = a5;
  *&v90 = sub_100140278(&qword_1008F1C30) - 8;
  __chkstk_darwin(v90);
  v91 = &v78 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v89 = &v78 - v7;
  v8 = type metadata accessor for Font.TextStyle();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v78 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100140278(&qword_1008DC448);
  __chkstk_darwin(v12 - 8);
  v14 = &v78 - v13;
  v15 = sub_100140278(&qword_1008F1C38);
  __chkstk_darwin(v15 - 8);
  v100 = &v78 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v101 = &v78 - v18;
  v19 = Image.init(systemName:)();
  v20 = type metadata accessor for Font.Design();
  (*(*(v20 - 8) + 56))(v14, 1, 1, v20);
  v21 = static Font.system(size:weight:design:)();
  sub_10000EA04(v14, &qword_1008DC448);
  KeyPath = swift_getKeyPath();
  LOBYTE(v14) = static Edge.Set.all.getter();
  LOBYTE(v125) = 0;
  v23 = static Color.secondary.getter();
  v24 = swift_getKeyPath();
  *&v125 = v19;
  *(&v125 + 1) = KeyPath;
  *&v126 = v21;
  BYTE8(v126) = v14;
  v127 = xmmword_1006D46A0;
  v128 = xmmword_1006E6740;
  LOBYTE(v129) = 0;
  *(&v129 + 1) = v24;
  v130 = v23;
  sub_100140278(&qword_1008F1C40);
  sub_1005297F8();
  View.accessibilityHidden(_:)();
  v109[2] = v127;
  v109[3] = v128;
  v109[4] = v129;
  v110 = v130;
  v109[0] = v125;
  v109[1] = v126;
  sub_10000EA04(v109, &qword_1008F1C40);
  LocalizedStringKey.init(stringLiteral:)();
  v25 = Text.init(_:tableName:bundle:comment:)();
  v27 = v26;
  LOBYTE(v21) = v28;
  (*(v9 + 104))(v11, enum case for Font.TextStyle.headline(_:), v8);
  static Font.Weight.semibold.getter();
  static Font.system(_:weight:)();
  (*(v9 + 8))(v11, v8);
  v96 = Text.font(_:)();
  v97 = v29;
  v98 = v30;
  LOBYTE(v8) = v31;

  sub_10004642C(v25, v27, v21 & 1);

  v99 = static Edge.Set.all.getter();
  v32 = v8 & 1;
  LOBYTE(v125) = v8 & 1;
  v79 = v8 & 1;
  LOBYTE(v116) = 0;
  v34 = v85;
  v33 = v86;
  *&v125 = sub_10052993C(v85);
  *(&v125 + 1) = v35;
  sub_10000FCBC();
  v36 = Text.init<A>(_:)();
  v38 = v37;
  LOBYTE(v21) = v39;
  static Color.secondary.getter();
  v40 = Text.foregroundColor(_:)();
  v82 = v41;
  v83 = v40;
  LOBYTE(v14) = v42;
  v84 = v43;

  sub_10004642C(v36, v38, v21 & 1);

  v80 = swift_getKeyPath();
  LOBYTE(v125) = v14 & 1;
  LOBYTE(v36) = v14 & 1;
  v78 = v14 & 1;
  LOBYTE(v116) = 1;
  v81 = static Font.subheadline.getter();
  v95 = swift_getKeyPath();
  v93 = swift_getKeyPath();
  v94 = static Edge.Set.all.getter();
  LOBYTE(v125) = 0;
  v44 = swift_allocObject();
  v44[2] = v34;
  v44[3] = v33;
  v45 = v88;
  v44[4] = v87;
  v44[5] = v45;

  sub_100140278(&qword_1008F1C60);
  v46 = sub_100141EEC(&qword_1008F1C68);
  v47 = sub_100141EEC(&qword_1008F1C70);
  v48 = sub_100529B14();
  v49 = sub_100529C2C();
  *&v125 = v46;
  *(&v125 + 1) = &type metadata for Solarium;
  *&v126 = v47;
  *(&v126 + 1) = v48;
  *&v127 = &protocol witness table for Solarium;
  *(&v127 + 1) = v49;
  swift_getOpaqueTypeConformance2();
  v50 = v89;
  Button.init(action:label:)();
  v51 = static Color.white.getter();
  *(v50 + *(sub_100140278(&qword_1008F1C98) + 36)) = v51;
  LOBYTE(v51) = static Edge.Set.bottom.getter();
  EdgeInsets.init(_all:)();
  v52 = v50 + *(v90 + 44);
  *v52 = v51;
  *(v52 + 8) = v53;
  *(v52 + 16) = v54;
  *(v52 + 24) = v55;
  *(v52 + 32) = v56;
  *(v52 + 40) = 0;
  v57 = v100;
  sub_10001B104(v101, v100, &qword_1008F1C38);
  v58 = v91;
  sub_10009C444(v50, v91);
  v59 = v57;
  v60 = v92;
  sub_10001B104(v59, v92, &qword_1008F1C38);
  v61 = sub_100140278(&qword_1008F1CA0);
  v62 = (v60 + v61[12]);
  *&v111 = v96;
  *(&v111 + 1) = v98;
  LOBYTE(v112) = v32;
  *(&v112 + 1) = *v108;
  DWORD1(v112) = *&v108[3];
  *(&v112 + 1) = v97;
  LOBYTE(v113) = v99;
  *(&v113 + 1) = *v107;
  HIDWORD(v113) = *&v107[3];
  v114 = 0;
  *&v115[0] = 0;
  v90 = xmmword_1006D46B0;
  *(v115 + 8) = xmmword_1006D46B0;
  BYTE8(v115[1]) = 0;
  v63 = v111;
  v64 = v112;
  v65 = v113;
  v66 = v115[0];
  *(v62 + 57) = *(v115 + 9);
  v62[2] = v65;
  v62[3] = v66;
  *v62 = v63;
  v62[1] = v64;
  v67 = v60 + v61[16];
  v68 = v82;
  v69 = v83;
  *&v116 = v83;
  *(&v116 + 1) = v82;
  LOBYTE(v117) = v36;
  DWORD1(v117) = *&v102[3];
  *(&v117 + 1) = *v102;
  v70 = v84;
  v72 = v80;
  v71 = v81;
  *(&v117 + 1) = v84;
  v118 = v80;
  LOBYTE(v119) = 1;
  *(&v119 + 1) = 256;
  BYTE7(v119) = v104;
  *(&v119 + 3) = v103;
  *(&v119 + 1) = v95;
  *&v120 = v81;
  *(&v120 + 1) = v93;
  LOBYTE(v121) = 1;
  DWORD1(v121) = *(v106 + 3);
  *(&v121 + 1) = v106[0];
  BYTE8(v121) = v94;
  HIDWORD(v121) = *&v105[3];
  *(&v121 + 9) = *v105;
  v88 = xmmword_1006F7A10;
  v87 = xmmword_1006F7A20;
  v122 = xmmword_1006F7A10;
  v123 = xmmword_1006F7A20;
  v124 = 0;
  *(v67 + 128) = 0;
  *(v67 + 96) = xmmword_1006F7A10;
  *(v67 + 112) = xmmword_1006F7A20;
  v73 = v116;
  v74 = v117;
  v75 = v121;
  *(v67 + 64) = v120;
  *(v67 + 80) = v75;
  v76 = v119;
  *(v67 + 32) = v118;
  *(v67 + 48) = v76;
  *v67 = v73;
  *(v67 + 16) = v74;
  sub_10009C444(v58, v60 + v61[20]);
  sub_10001B104(&v111, &v125, &qword_1008DC4C0);
  sub_10001B104(&v116, &v125, &qword_1008F1CA8);
  sub_10000EA04(v50, &qword_1008F1C30);
  sub_10000EA04(v101, &qword_1008F1C38);
  sub_10000EA04(v58, &qword_1008F1C30);
  *&v125 = v69;
  *(&v125 + 1) = v68;
  LOBYTE(v126) = v78;
  *(&v126 + 1) = *v102;
  DWORD1(v126) = *&v102[3];
  *(&v126 + 1) = v70;
  v127 = v72;
  LOBYTE(v128) = 1;
  *(&v128 + 1) = 256;
  *(&v128 + 3) = v103;
  BYTE7(v128) = v104;
  *(&v128 + 1) = v95;
  *&v129 = v71;
  *(&v129 + 1) = v93;
  LOBYTE(v130) = 1;
  HIDWORD(v130) = *(v106 + 3);
  *(&v130 + 1) = v106[0];
  v131 = v94;
  *&v132[3] = *&v105[3];
  *v132 = *v105;
  v133 = v88;
  v134 = v87;
  v135 = 0;
  sub_10000EA04(&v125, &qword_1008F1CA8);
  v136[0] = v96;
  v136[1] = v98;
  v137 = v79;
  *v138 = *v108;
  *&v138[3] = *&v108[3];
  v139 = v97;
  v140 = v99;
  *v141 = *v107;
  *&v141[3] = *&v107[3];
  v142 = 0;
  v143 = 0;
  v144 = v90;
  v145 = 0;
  sub_10000EA04(v136, &qword_1008DC4C0);
  return sub_10000EA04(v100, &qword_1008F1C38);
}

uint64_t sub_100528FF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {

    sub_100315C2C();
  }

  else
  {
    type metadata accessor for ActivitySharingNavigationCoordinator();
    sub_100529CE4(&qword_1008DC018, type metadata accessor for ActivitySharingNavigationCoordinator);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_100529094@<X0>(uint64_t a1@<X8>)
{
  v21[1] = a1;
  v1 = type metadata accessor for Font.TextStyle();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  LocalizedStringKey.init(stringLiteral:)();
  v5 = Text.init(_:tableName:bundle:comment:)();
  v7 = v6;
  v9 = v8;
  (*(v2 + 104))(v4, enum case for Font.TextStyle.body(_:), v1);
  static Font.Weight.bold.getter();
  static Font.system(_:weight:)();
  (*(v2 + 8))(v4, v1);
  v10 = Text.font(_:)();
  v12 = v11;
  LOBYTE(v2) = v13;
  v21[0] = v14;

  sub_10004642C(v5, v7, v9 & 1);

  LOBYTE(v5) = static Edge.Set.all.getter();
  LOBYTE(v2) = v2 & 1;
  LOBYTE(v25[0]) = v2;
  LOBYTE(v22) = 0;
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  *(v26 + 7) = *(&v26[3] + 8);
  *(&v26[1] + 7) = *(&v26[4] + 8);
  *(&v26[2] + 7) = *(&v26[5] + 8);
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  __asm { FMOV            V0.2D, #10.0 }

  *(v24 + 8) = _Q0;
  *(&v24[1] + 8) = _Q0;
  *(&v24[2] + 9) = v26[0];
  *&v22 = v10;
  *(&v22 + 1) = v12;
  LOBYTE(v23) = v2;
  *(&v23 + 1) = v21[0];
  LOBYTE(v24[0]) = v5;
  BYTE8(v24[2]) = 0;
  *(&v24[3] + 9) = v26[1];
  *(&v24[4] + 9) = v26[2];
  *(&v24[5] + 1) = *(&v26[2] + 15);
  Solarium.init()();
  sub_100140278(&qword_1008F1C68);
  sub_100140278(&qword_1008F1C70);
  sub_100529B14();
  sub_100529C2C();
  View.staticIf<A, B>(_:then:)();
  v25[12] = v24[10];
  v25[13] = v24[11];
  v25[14] = v24[12];
  v25[8] = v24[6];
  v25[9] = v24[7];
  v25[10] = v24[8];
  v25[11] = v24[9];
  v25[4] = v24[2];
  v25[5] = v24[3];
  v25[6] = v24[4];
  v25[7] = v24[5];
  v25[0] = v22;
  v25[1] = v23;
  v25[2] = v24[0];
  v25[3] = v24[1];
  return sub_10000EA04(v25, &qword_1008F1C68);
}

uint64_t sub_100529410@<X0>(__int128 *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = a1[13];
  v41 = a1[12];
  v42 = v3;
  v43 = a1[14];
  v4 = a1[9];
  v37 = a1[8];
  v38 = v4;
  v5 = a1[11];
  v39 = a1[10];
  v40 = v5;
  v6 = a1[5];
  v33 = a1[4];
  v34 = v6;
  v7 = a1[7];
  v35 = a1[6];
  v36 = v7;
  v8 = a1[1];
  v29 = *a1;
  v30 = v8;
  v9 = a1[3];
  v31 = a1[2];
  v32 = v9;
  v10 = a2 + *(sub_100140278(&qword_1008F1C70) + 36);
  v11 = enum case for RoundedCornerStyle.continuous(_:);
  v12 = type metadata accessor for RoundedCornerStyle();
  (*(*(v12 - 8) + 104))(v10, v11, v12);
  v13 = [objc_opt_self() tertiarySystemBackgroundColor];
  v14 = Color.init(uiColor:)();
  v15 = sub_100140278(&qword_1008E2B20);
  *&v10[*(v15 + 52)] = v14;
  *&v10[*(v15 + 56)] = 256;
  v16 = static Alignment.center.getter();
  v18 = v17;
  v19 = &v10[*(sub_100140278(&qword_1008EA748) + 36)];
  *v19 = v16;
  v19[1] = v18;
  v20 = v30;
  *a2 = v29;
  a2[1] = v20;
  v21 = v34;
  a2[4] = v33;
  a2[5] = v21;
  v22 = v32;
  a2[2] = v31;
  a2[3] = v22;
  v23 = v38;
  a2[8] = v37;
  a2[9] = v23;
  v24 = v36;
  a2[6] = v35;
  a2[7] = v24;
  v25 = v43;
  a2[13] = v42;
  a2[14] = v25;
  v26 = v41;
  a2[11] = v40;
  a2[12] = v26;
  a2[10] = v39;
  return sub_10001B104(&v29, &v28, &qword_1008F1C68);
}

unint64_t sub_1005295D0()
{
  result = qword_1008F1C10;
  if (!qword_1008F1C10)
  {
    sub_100141EEC(&qword_1008F1C00);
    sub_100529688();
    sub_10014A6B0(&qword_1008E0760, &qword_1008DE1E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F1C10);
  }

  return result;
}

unint64_t sub_100529688()
{
  result = qword_1008F1C18;
  if (!qword_1008F1C18)
  {
    sub_100141EEC(&qword_1008F1BF8);
    sub_100529740();
    sub_10014A6B0(&qword_1008E0750, &qword_1008E0758);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F1C18);
  }

  return result;
}

unint64_t sub_100529740()
{
  result = qword_1008F1C20;
  if (!qword_1008F1C20)
  {
    sub_100141EEC(&qword_1008F1BF0);
    sub_10014A6B0(&qword_1008F1C28, &qword_1008F1BE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F1C20);
  }

  return result;
}

unint64_t sub_1005297F8()
{
  result = qword_1008F1C48;
  if (!qword_1008F1C48)
  {
    sub_100141EEC(&qword_1008F1C40);
    sub_1005298B0();
    sub_10014A6B0(&qword_1008E44F8, &qword_1008E4500);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F1C48);
  }

  return result;
}

unint64_t sub_1005298B0()
{
  result = qword_1008F1C50;
  if (!qword_1008F1C50)
  {
    sub_100141EEC(&qword_1008F1C58);
    sub_1002397DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F1C50);
  }

  return result;
}

uint64_t sub_10052993C(uint64_t a1)
{
  if (a1)
  {
    swift_getKeyPath();
    swift_getKeyPath();

    static Published.subscript.getter();

    if (v6)
    {

      if (v7 >> 62)
      {
        _CocoaArrayWrapper.endIndex.getter();
      }
    }

    v1 = [objc_opt_self() mainBundle];
    v2 = String._bridgeToObjectiveC()();
    v3 = [v1 localizedStringForKey:v2 value:0 table:0];

    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    return v4;
  }

  else
  {
    type metadata accessor for ActivitySharingFriendListDataProvider();
    sub_100529CE4(&qword_1008DC038, type metadata accessor for ActivitySharingFriendListDataProvider);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

unint64_t sub_100529B14()
{
  result = qword_1008F1C78;
  if (!qword_1008F1C78)
  {
    sub_100141EEC(&qword_1008F1C68);
    sub_100529BA0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F1C78);
  }

  return result;
}

unint64_t sub_100529BA0()
{
  result = qword_1008F1C80;
  if (!qword_1008F1C80)
  {
    sub_100141EEC(&qword_1008F1C88);
    sub_1001F4794();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F1C80);
  }

  return result;
}

unint64_t sub_100529C2C()
{
  result = qword_1008F1C90;
  if (!qword_1008F1C90)
  {
    sub_100141EEC(&qword_1008F1C70);
    sub_100529B14();
    sub_10014A6B0(&qword_1008EA780, &qword_1008EA748);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F1C90);
  }

  return result;
}

uint64_t sub_100529CE4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100529D2C()
{
  v0 = sub_100140278(&qword_1008DD138);
  __chkstk_darwin(v0 - 8);
  v2 = &v7 - v1;
  v3 = type metadata accessor for LocalizedStringResource();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = type metadata accessor for TypeDisplayRepresentation();
  sub_100163368(v5, qword_100925D68);
  sub_10001AC90(v5, qword_100925D68);
  LocalizedStringResource.init(stringLiteral:)();
  (*(v4 + 56))(v2, 1, 1, v3);
  return TypeDisplayRepresentation.init(name:numericFormat:)();
}

uint64_t sub_100529E98()
{
  v0 = sub_100140278(&qword_1008DDB78);
  __chkstk_darwin(v0 - 8);
  v31 = v25 - v1;
  v2 = sub_100140278(&qword_1008DD138);
  __chkstk_darwin(v2 - 8);
  v30 = v25 - v3;
  v4 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Locale();
  __chkstk_darwin(v8 - 8);
  v9 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v9 - 8);
  v10 = type metadata accessor for LocalizedStringResource();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v28 = v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100140278(&qword_1008F1D68);
  v13 = *(sub_100140278(&qword_1008EF9B8) - 8);
  v29 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_1006D46C0;
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v14 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v15 = v5 + 104;
  v16 = *(v5 + 104);
  v26 = v4;
  v16(v7, enum case for LocalizedStringResource.BundleDescription.main(_:), v4);
  v25[2] = v15;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v16(v7, v14, v4);
  v17 = v30;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  (*(v11 + 56))(v17, 0, 1, v10);
  v18 = v31;
  DisplayRepresentation.Image.init(appBundleIdentifier:)();
  v19 = type metadata accessor for DisplayRepresentation.Image();
  (*(*(v19 - 8) + 56))(v18, 0, 1, v19);
  sub_100140278(&qword_1008E60A0);
  v25[1] = 2 * *(v11 + 72);
  *(swift_allocObject() + 16) = xmmword_1006D64F0;
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v20 = v26;
  v16(v7, v14, v26);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v16(v7, v14, v20);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v16(v7, v14, v20);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v21 = v29;
  v22 = v27;
  DisplayRepresentation.init(title:subtitle:image:synonyms:)();
  v23 = sub_1004CC520(v22);
  swift_setDeallocating();
  sub_10000EA04(v22 + v21, &qword_1008EF9B8);
  result = swift_deallocClassInstance();
  qword_100925D80 = v23;
  return result;
}

uint64_t sub_10052A4F4()
{
  v0 = sub_100140278(&qword_1008F1D70);
  sub_100163368(v0, qword_100925D88);
  sub_10001AC90(v0, qword_100925D88);
  sub_100140278(&qword_1008F1D78);
  v1 = *(sub_100140278(&qword_1008EF9C8) - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1006D46C0;
  sub_10052A7E8();
  EnumURLRepresentation.EnumSingleURLRepresentation.init(stringLiteral:)();
  sub_1004CC6EC(v3);
  swift_setDeallocating();
  sub_10000EA04(v3 + v2, &qword_1008EF9C8);
  swift_deallocClassInstance();
  return EnumURLRepresentation.init(_:)();
}

unint64_t sub_10052A684()
{
  result = qword_1008F1CC0;
  if (!qword_1008F1CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F1CC0);
  }

  return result;
}

Swift::Int sub_10052A6D8()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_10052A734()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_10052A77C@<X0>(Swift::String *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&off_100846038, *a1);

  *a2 = v3 != 0;
  return result;
}

unint64_t sub_10052A7E8()
{
  result = qword_1008F1CC8;
  if (!qword_1008F1CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F1CC8);
  }

  return result;
}

unint64_t sub_10052A840()
{
  result = qword_1008F1CD0;
  if (!qword_1008F1CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F1CD0);
  }

  return result;
}

uint64_t sub_10052A894@<X0>(uint64_t a1@<X8>)
{
  if (qword_1008DAD30 != -1)
  {
    swift_once();
  }

  v2 = sub_100140278(&qword_1008F1D70);
  v3 = sub_10001AC90(v2, qword_100925D88);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

unint64_t sub_10052A948()
{
  result = qword_1008F1CD8;
  if (!qword_1008F1CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F1CD8);
  }

  return result;
}

unint64_t sub_10052A9A0()
{
  result = qword_1008F1CE0;
  if (!qword_1008F1CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F1CE0);
  }

  return result;
}

unint64_t sub_10052A9F8()
{
  result = qword_1008F1CE8;
  if (!qword_1008F1CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F1CE8);
  }

  return result;
}

uint64_t sub_10052AA4C()
{
  sub_10052B790();
  v1 = URLRepresentableEnum.urlRepresentationParameter.getter();
  v2 = *(v0 + 8);

  return v2(v1);
}

unint64_t sub_10052AABC()
{
  result = qword_1008F1CF0;
  if (!qword_1008F1CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F1CF0);
  }

  return result;
}

unint64_t sub_10052AB10()
{
  result = qword_1008F1CF8;
  if (!qword_1008F1CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F1CF8);
  }

  return result;
}

unint64_t sub_10052AB68()
{
  result = qword_1008F1D00;
  if (!qword_1008F1D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F1D00);
  }

  return result;
}

uint64_t sub_10052AC20(uint64_t a1)
{
  v2 = sub_10052A7E8();

  return static AppEnum.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_10052AC70()
{
  result = qword_1008F1D08;
  if (!qword_1008F1D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F1D08);
  }

  return result;
}

unint64_t sub_10052ACC8()
{
  result = qword_1008F1D10;
  if (!qword_1008F1D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F1D10);
  }

  return result;
}

unint64_t sub_10052AD20()
{
  result = qword_1008F1D18;
  if (!qword_1008F1D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F1D18);
  }

  return result;
}

uint64_t sub_10052AD74()
{
  if (qword_1008DAD28 != -1)
  {
    swift_once();
  }
}

uint64_t sub_10052ADD0(uint64_t a1)
{
  v2 = sub_10052AB68();

  return CaseDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_10052AE20()
{
  result = qword_1008F1D20;
  if (!qword_1008F1D20)
  {
    sub_100141EEC(&qword_1008F1D28);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F1D20);
  }

  return result;
}

unint64_t sub_10052AE98()
{
  result = qword_1008F1D30;
  if (!qword_1008F1D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F1D30);
  }

  return result;
}

uint64_t sub_10052AEEC()
{
  v0 = type metadata accessor for LocalizedStringResource();
  sub_100163368(v0, qword_100925DA0);
  sub_10001AC90(v0, qword_100925DA0);
  return LocalizedStringResource.init(stringLiteral:)();
}

void (*sub_10052AF74(uint64_t *a1))(void *a1)
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
  *(v2 + 32) = IntentParameter.wrappedValue.modify();
  return sub_100162378;
}

uint64_t sub_10052AFE8(uint64_t a1, uint64_t a2)
{
  v4 = sub_10052B6E8();
  v5 = sub_10052B790();

  return static URLRepresentableIntent<>.urlRepresentation.getter(a1, v4, a2, v5);
}

uint64_t sub_10052B054()
{
  v0 = qword_1008F1CB0;

  return v0;
}

unint64_t sub_10052B094()
{
  result = qword_1008F1D38;
  if (!qword_1008F1D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F1D38);
  }

  return result;
}

unint64_t sub_10052B0EC()
{
  result = qword_1008F1D40;
  if (!qword_1008F1D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F1D40);
  }

  return result;
}

uint64_t sub_10052B1EC@<X0>(void *a1@<X2>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X4>, uint64_t a4@<X8>)
{
  if (*a1 == -1)
  {
    v6 = a2(0);
  }

  else
  {
    swift_once();
    v6 = a2(0);
  }

  v7 = v6;
  v8 = sub_10001AC90(v6, a3);
  v9 = *(*(v7 - 8) + 16);

  return v9(a4, v8, v7);
}

uint64_t sub_10052B294(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  v5 = sub_10052B6E8();
  v6 = sub_10052B73C();
  v7 = sub_10052B790();
  *v4 = v2;
  v4[1] = sub_1001628E8;

  return URLRepresentableIntent<>.perform()(a2, v5, v6, v7);
}

uint64_t sub_10052B360@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10052B3E4();
  *a1 = result;
  return result;
}

uint64_t sub_10052B388(uint64_t a1)
{
  v2 = sub_10036F96C();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

uint64_t sub_10052B3E4()
{
  v17 = type metadata accessor for InputConnectionBehavior();
  v0 = *(v17 - 8);
  __chkstk_darwin(v17);
  v2 = &v17 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_100140278(&qword_1008DD130);
  __chkstk_darwin(v3 - 8);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v17 - v7;
  v9 = sub_100140278(&qword_1008DD138);
  __chkstk_darwin(v9 - 8);
  v11 = &v17 - v10;
  v12 = type metadata accessor for LocalizedStringResource();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  sub_100140278(&qword_1008F1D48);
  LocalizedStringResource.init(stringLiteral:)();
  (*(v13 + 56))(v11, 1, 1, v12);
  v18 = 1;
  v14 = type metadata accessor for IntentDialog();
  v15 = *(*(v14 - 8) + 56);
  v15(v8, 1, 1, v14);
  v15(v5, 1, 1, v14);
  (*(v0 + 104))(v2, enum case for InputConnectionBehavior.default(_:), v17);
  sub_10052A7E8();
  return IntentParameter<>.init(title:description:default:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:supportedValues:)();
}

unint64_t sub_10052B6E8()
{
  result = qword_1008F1D50;
  if (!qword_1008F1D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F1D50);
  }

  return result;
}

unint64_t sub_10052B73C()
{
  result = qword_1008F1D58;
  if (!qword_1008F1D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F1D58);
  }

  return result;
}

unint64_t sub_10052B790()
{
  result = qword_1008F1D60;
  if (!qword_1008F1D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F1D60);
  }

  return result;
}

unint64_t sub_10052B800()
{
  result = qword_1008F1D98;
  if (!qword_1008F1D98)
  {
    sub_100141EEC(&qword_1008F1D88);
    sub_100054C1C(&qword_1008F1DA0, &qword_1008F1D90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F1D98);
  }

  return result;
}

unint64_t sub_10052B8A4()
{
  result = qword_1008F1DC0;
  if (!qword_1008F1DC0)
  {
    sub_100141EEC(&qword_1008F1DB0);
    sub_100054C1C(&qword_1008F1DC8, &qword_1008F1DB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F1DC0);
  }

  return result;
}

uint64_t sub_10052B990(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[17])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_10052B9E4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_10052BA38()
{
  result = qword_1008F1DD0;
  if (!qword_1008F1DD0)
  {
    sub_100141EEC(&qword_1008F1DD8);
    sub_10052B800();
    sub_100054C1C(&qword_1008F1DA0, &qword_1008F1D90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F1DD0);
  }

  return result;
}

unint64_t sub_10052BADC()
{
  result = qword_1008F1DE0;
  if (!qword_1008F1DE0)
  {
    sub_100141EEC(&qword_1008F1DE8);
    sub_10052B8A4();
    sub_100054C1C(&qword_1008F1DC8, &qword_1008F1DB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F1DE0);
  }

  return result;
}

id sub_10052BD50()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ActivityTypeKeyMigratorBridge();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for ActivityTypeKeyMigratorBridge()
{
  result = qword_1008F1E18;
  if (!qword_1008F1E18)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10052BE48()
{
  result = type metadata accessor for ActivityTypeKeyMigrator();
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

uint64_t sub_10052BEF8()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 48) = Strong;
  if (Strong)
  {

    return _swift_task_switch(sub_10052BFB4, Strong, 0);
  }

  else
  {
    v2 = *(v0 + 8);

    return v2();
  }
}

uint64_t sub_10052BFB4()
{
  v1 = v0[6];
  static os_log_type_t.default.getter();
  v2 = HKLogActivity;
  os_log(_:dso:log:_:_:)();

  if (*(v1 + 232) == 1)
  {
    static os_log_type_t.error.getter();
    v3 = HKLogActivity;
    os_log(_:dso:log:_:_:)();

    v4 = v0[1];

    return v4();
  }

  else
  {
    v6 = swift_task_alloc();
    v0[7] = v6;
    *v6 = v0;
    v6[1] = sub_10052C130;

    return sub_10052C244();
  }
}

uint64_t sub_10052C130()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_10052C264()
{
  sub_100140278(&qword_1008F1F70);
  swift_asyncLet_begin();
  swift_asyncLet_begin();

  return _swift_asyncLet_get(v0 + 16, v0 + 1336, sub_10052C33C, v0 + 1296);
}

uint64_t sub_10052C358()
{
  v1 = v0[167];
  v0[170] = v1;
  if (v1)
  {

    return _swift_asyncLet_get(v0 + 82, v0 + 168, sub_10052C47C, v0 + 162);
  }

  else
  {
    v2 = v0[169];
    static os_log_type_t.error.getter();
    v3 = HKLogActivity;
    os_log(_:dso:log:_:_:)();

    v4 = *(v2 + 216);
    v5 = *(v2 + 224);
    *(v2 + 216) = 0;
    *(v2 + 224) = 0;
    v6 = *(v2 + 232);
    *(v2 + 232) = 2;
    sub_10039EC30(v4, v5, v6);

    return _swift_asyncLet_finish(v0 + 82, v0 + 168, sub_10052C5F4, v0 + 162);
  }
}

uint64_t sub_10052C498()
{
  v1 = v0[168];
  v2 = v0[170];
  if (v1)
  {
    v3 = v0[169];

    static os_log_type_t.default.getter();
    v4 = HKLogActivity;
    os_log(_:dso:log:_:_:)();

    v7 = *(v3 + 232);
    v6 = (v3 + 232);
    v5 = v7;
    v8 = *(v6 - 2);
    v9 = *(v6 - 1);
    v10 = 1;
    *(v6 - 2) = v2;
    *(v6 - 1) = v1;
  }

  else
  {

    v11 = v0[169];
    static os_log_type_t.error.getter();
    v12 = HKLogActivity;
    v10 = 2;
    os_log(_:dso:log:_:_:)();

    v13 = *(v11 + 232);
    v6 = (v11 + 232);
    v5 = v13;
    v8 = *(v6 - 2);
    v9 = *(v6 - 1);
    *(v6 - 2) = 0;
    *(v6 - 1) = 0;
  }

  *v6 = v10;
  sub_10039EC30(v8, v9, v5);

  return _swift_asyncLet_finish(v0 + 82, v0 + 168, sub_10052C5F4, v0 + 162);
}

uint64_t sub_10052C660(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(sub_10052C680, 0, 0);
}

uint64_t sub_10052C680()
{
  v1 = *(v0 + 24);
  *(v0 + 32) = sub_1000066AC((v1 + 120), *(v1 + 144));

  return _swift_task_switch(sub_10052C6F4, v1, 0);
}

uint64_t sub_10052C6F4()
{
  v1 = v0[3];
  v2 = *(v1 + 200);
  v0[5] = v2;
  v3 = *(v1 + 208);

  v4 = swift_task_alloc();
  v0[6] = v4;
  *v4 = v0;
  v4[1] = sub_10052C7B0;

  return sub_100212E04(v2, v3);
}

uint64_t sub_10052C7B0(uint64_t a1)
{
  v4 = *v2;

  if (v1)
  {

    v5 = sub_10052E0AC;
  }

  else
  {

    *(v4 + 56) = a1;
    v5 = sub_10052C904;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10052C928(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(sub_10052C948, 0, 0);
}

uint64_t sub_10052C948()
{
  v1 = *sub_1000066AC((*(v0 + 24) + 160), *(*(v0 + 24) + 184));
  v2 = swift_task_alloc();
  *(v0 + 32) = v2;
  *v2 = v0;
  v2[1] = sub_10052C9EC;

  return sub_1005C2DCC(v1);
}

uint64_t sub_10052C9EC(uint64_t a1)
{
  v4 = *v2;

  if (v1)
  {

    v5 = sub_10052CB3C;
  }

  else
  {
    *(v4 + 40) = a1;
    v5 = sub_10052CB18;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10052CB5C()
{

  sub_100005A40(v0 + 120);
  sub_100005A40(v0 + 160);

  sub_10039EC30(*(v0 + 216), *(v0 + 224), *(v0 + 232));
  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}