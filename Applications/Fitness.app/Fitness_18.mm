id sub_10023D560()
{
  [*(v0 + OBJC_IVAR____TtC10FitnessApp27TrendDetailDailyAverageView_barLayer365) bounds];
  x = v25.origin.x;
  y = v25.origin.y;
  width = v25.size.width;
  height = v25.size.height;
  v5 = CGRectGetHeight(v25);
  sub_100239AF8();
  v7 = v6;
  v8 = *(v0 + OBJC_IVAR____TtC10FitnessApp27TrendDetailDailyAverageView_histogram90 + 112);
  v9 = v0 + OBJC_IVAR____TtC10FitnessApp27TrendDetailDailyAverageView_histogram365;
  if (v8 > *(v9 + 112))
  {
    v10 = v8;
  }

  else
  {
    v10 = *(v9 + 112);
  }

  v11 = [objc_allocWithZone(UIBezierPath) init];
  v12 = v7;
  v13 = *(v7 + 16);
  if (v13)
  {
    v14 = 0;
    v15 = v12 + 32;
    do
    {
      if (v14 <= 6)
      {
        v16 = *(&off_100841BF8 + v14 + 4) - 1;
        if (v16 < 7 && v16 < *(*v9 + 16))
        {
          v17 = 24 * v16;
          v18 = *v9 + 24 * v16;
          if ((*(v18 + 48) & 1) == 0)
          {
            v19 = *(v9 + 56);
            if (v16 < *(v19 + 16) && (*(v19 + v17 + 48) & 1) == 0)
            {
              v20 = *(v19 + v17 + 32);
              if (v20 > 0.0)
              {
                v21 = *(v15 + 8 * v14);
                v22 = *(v18 + 32) / v20 / v10;
                v26.origin.x = x;
                v26.origin.y = y;
                v26.size.width = width;
                v26.size.height = height;
                v23 = v12;
                [v11 moveToPoint:{v21, CGRectGetMaxY(v26) + -2.0}];
                v27.origin.x = x;
                v27.origin.y = y;
                v27.size.width = width;
                v27.size.height = height;
                [v11 addLineToPoint:{v21, CGRectGetMaxY(v27) - v5 * v22 + 2.0}];
                v12 = v23;
              }
            }
          }
        }
      }

      ++v14;
    }

    while (v13 != v14);
  }

  return v11;
}

id sub_10023D758()
{
  v1 = [objc_allocWithZone(UIBezierPath) init];
  v2 = *(v0 + OBJC_IVAR____TtC10FitnessApp27TrendDetailDailyAverageView_axisLayer);
  [v2 bounds];
  CGRectGetHeight(v7);
  if (qword_1008DAC88 != -1)
  {
    swift_once();
  }

  UIRoundToScale();
  v4 = v3;
  [v1 moveToPoint:{0.0, 0.0}];
  [v2 bounds];
  [v1 addLineToPoint:{CGRectGetWidth(v8), 0.0}];
  [v1 moveToPoint:{0.0, v4}];
  [v2 bounds];
  [v1 addLineToPoint:{CGRectGetMaxX(v9), v4}];
  [v2 bounds];
  [v1 moveToPoint:{0.0, CGRectGetMaxY(v10)}];
  [v2 bounds];
  MaxX = CGRectGetMaxX(v11);
  [v2 bounds];
  [v1 addLineToPoint:{MaxX, CGRectGetMaxY(v12)}];
  return v1;
}

id sub_10023D8E8()
{
  v19.receiver = v0;
  v19.super_class = type metadata accessor for TrendDetailDailyAverageView();
  objc_msgSendSuper2(&v19, "layoutSubviews");
  v1 = *&v0[OBJC_IVAR____TtC10FitnessApp27TrendDetailDailyAverageView_chartContainer];
  [v1 frame];
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = *&v0[OBJC_IVAR____TtC10FitnessApp27TrendDetailDailyAverageView_axisLayer];
  [v0 bounds];
  v11 = CGRectGetWidth(v20) - v3 + -9.0;
  v21.origin.x = v3;
  v21.origin.y = v5;
  v21.size.width = v7;
  v21.size.height = v9;
  [v10 setFrame:{v3, v5, v11, CGRectGetHeight(v21)}];
  v12 = *&v0[OBJC_IVAR____TtC10FitnessApp27TrendDetailDailyAverageView_gradientLayer90];
  [v1 bounds];
  [v12 setFrame:?];
  v13 = *&v0[OBJC_IVAR____TtC10FitnessApp27TrendDetailDailyAverageView_gradientLayer365];
  [v1 bounds];
  [v13 setFrame:?];
  v14 = *&v0[OBJC_IVAR____TtC10FitnessApp27TrendDetailDailyAverageView_barLayer90];
  [v12 bounds];
  [v14 setFrame:?];
  v15 = *&v0[OBJC_IVAR____TtC10FitnessApp27TrendDetailDailyAverageView_barLayer365];
  [v13 bounds];
  [v15 setFrame:?];
  v16 = *&v0[OBJC_IVAR____TtC10FitnessApp27TrendDetailDailyAverageView_chartMask];
  [v1 bounds];
  [v16 setFrame:?];
  v17 = objc_opt_self();
  [v17 begin];
  [v17 setDisableActions:1];
  sub_10023DADC(v0);
  return [v17 commit];
}

void sub_10023DADC(uint64_t a1)
{
  v2 = *(a1 + OBJC_IVAR____TtC10FitnessApp27TrendDetailDailyAverageView_barLayer90);
  v3 = sub_10023D2AC();
  v4 = [v3 CGPath];

  [v2 setPath:v4];
  v5 = *(a1 + OBJC_IVAR____TtC10FitnessApp27TrendDetailDailyAverageView_barLayer365);
  v6 = sub_10023D560();
  v7 = [v6 CGPath];

  [v5 setPath:v7];
  v8 = *(a1 + OBJC_IVAR____TtC10FitnessApp27TrendDetailDailyAverageView_axisLayer);
  v9 = sub_10023D758();
  v10 = [v9 CGPath];

  [v8 setPath:v10];
}

id sub_10023DC34(void *a1)
{
  v2 = v1;
  v3 = OBJC_IVAR____TtC10FitnessApp27TrendDetailDailyAverageView_titleLabel;
  sub_1000059F8(0, &qword_1008E2D40);
  v58 = v3;
  *(v1 + v3) = sub_100555C98();
  v4 = OBJC_IVAR____TtC10FitnessApp27TrendDetailDailyAverageView_chartContainer;
  sub_1000059F8(0, &qword_1008E7580);
  v56 = v4;
  *(v1 + v4) = sub_10065AF60();
  v55 = OBJC_IVAR____TtC10FitnessApp27TrendDetailDailyAverageView_container90;
  *(v1 + v55) = sub_10065AF60();
  v54 = OBJC_IVAR____TtC10FitnessApp27TrendDetailDailyAverageView_container365;
  *(v1 + v54) = sub_10065AF60();
  v53 = OBJC_IVAR____TtC10FitnessApp27TrendDetailDailyAverageView_textContainer;
  *(v1 + v53) = [objc_allocWithZone(UILayoutGuide) init];
  v52 = OBJC_IVAR____TtC10FitnessApp27TrendDetailDailyAverageView_axisLayer;
  *(v1 + v52) = [objc_allocWithZone(CAShapeLayer) init];
  v51 = OBJC_IVAR____TtC10FitnessApp27TrendDetailDailyAverageView_gradientLayer90;
  *(v1 + v51) = [objc_allocWithZone(CAGradientLayer) init];
  v50 = OBJC_IVAR____TtC10FitnessApp27TrendDetailDailyAverageView_barLayer90;
  *(v1 + v50) = [objc_allocWithZone(CAShapeLayer) init];
  v49 = OBJC_IVAR____TtC10FitnessApp27TrendDetailDailyAverageView_gradientLayer365;
  *(v1 + v49) = [objc_allocWithZone(CAGradientLayer) init];
  v48 = OBJC_IVAR____TtC10FitnessApp27TrendDetailDailyAverageView_barLayer365;
  *(v1 + v48) = [objc_allocWithZone(CAShapeLayer) init];
  v5 = OBJC_IVAR____TtC10FitnessApp27TrendDetailDailyAverageView_chartMask;
  type metadata accessor for TrendChartMaskingView();
  v47 = v5;
  *(v2 + v5) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v6 = OBJC_IVAR____TtC10FitnessApp27TrendDetailDailyAverageView_dayOfWeekLabels;
  v7 = [objc_opt_self() secondaryLabelColor];
  v8 = sub_10023EF7C(v7);

  *(v2 + v6) = v8;
  v9 = sub_100555C98();
  v10 = objc_opt_self();
  result = [v10 _preferredFontForTextStyle:UIFontTextStyleCaption2 variant:1024 maximumContentSizeCategory:UIContentSizeCategoryExtraExtraExtraLarge];
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  v12 = result;
  v13 = OBJC_IVAR____TtC10FitnessApp27TrendDetailDailyAverageView_minAxisLabel;
  [v9 setFont:result];

  v45 = v13;
  *(v2 + v13) = v9;
  v14 = sub_100555C98();
  result = [v10 _preferredFontForTextStyle:UIFontTextStyleCaption2 variant:1024 maximumContentSizeCategory:UIContentSizeCategoryExtraExtraExtraLarge];
  if (!result)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v15 = result;
  v16 = OBJC_IVAR____TtC10FitnessApp27TrendDetailDailyAverageView_midAxisLabel;
  [v14 setFont:result];

  v44 = v16;
  *(v2 + v16) = v14;
  v17 = sub_100555C98();
  result = [v10 _preferredFontForTextStyle:UIFontTextStyleCaption2 variant:1024 maximumContentSizeCategory:UIContentSizeCategoryExtraExtraExtraLarge];
  if (result)
  {
    v18 = result;
    type metadata accessor for TrendDetailDailyAverageView();
    v19 = OBJC_IVAR____TtC10FitnessApp27TrendDetailDailyAverageView_maxValueLabel;
    v43 = OBJC_IVAR____TtC10FitnessApp27TrendDetailDailyAverageView_maxValueLabel;
    [v17 setFont:v18];

    *(v2 + v19) = v17;
    v20 = OBJC_IVAR____TtC10FitnessApp27TrendDetailDailyAverageView_div;
    v42 = OBJC_IVAR____TtC10FitnessApp27TrendDetailDailyAverageView_div;
    *(v2 + v20) = sub_10065AEC8();
    v21 = OBJC_IVAR____TtC10FitnessApp27TrendDetailDailyAverageView_platter90;
    v46 = OBJC_IVAR____TtC10FitnessApp27TrendDetailDailyAverageView_platter90;
    type metadata accessor for TrendsScrubberPlatterView();
    *(v2 + v21) = sub_10065AF60();
    v22 = OBJC_IVAR____TtC10FitnessApp27TrendDetailDailyAverageView_platter365;
    v41 = OBJC_IVAR____TtC10FitnessApp27TrendDetailDailyAverageView_platter365;
    *(v2 + v22) = sub_10065AF60();
    v23 = OBJC_IVAR____TtC10FitnessApp27TrendDetailDailyAverageView_platterCenterLayoutGuide;
    v40 = OBJC_IVAR____TtC10FitnessApp27TrendDetailDailyAverageView_platterCenterLayoutGuide;
    *(v2 + v23) = [objc_allocWithZone(UILayoutGuide) init];
    v24 = (v2 + OBJC_IVAR____TtC10FitnessApp27TrendDetailDailyAverageView_title90);
    v25 = objc_opt_self();
    v26 = [v25 mainBundle];
    v27 = String._bridgeToObjectiveC()();
    v28 = [v26 localizedStringForKey:v27 value:0 table:0];

    v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v31 = v30;

    *v24 = v29;
    v24[1] = v31;
    v32 = (v2 + OBJC_IVAR____TtC10FitnessApp27TrendDetailDailyAverageView_title365);
    v33 = [v25 mainBundle];
    v34 = String._bridgeToObjectiveC()();
    v35 = [v33 localizedStringForKey:v34 value:0 table:0];

    v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v38 = v37;

    *v32 = v36;
    v32[1] = v38;
    v39 = OBJC_IVAR____TtC10FitnessApp27TrendDetailDailyAverageView_platterCenterXConstraint;
    *(v2 + OBJC_IVAR____TtC10FitnessApp27TrendDetailDailyAverageView_platterCenterXConstraint) = 0;

    swift_deallocPartialClassInstance();
    return 0;
  }

LABEL_7:
  __break(1u);
  return result;
}

id sub_10023E2AC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TrendDetailDailyAverageView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_10023E530(void *a1)
{
  p_ivars = &ResourceBundleClass.ivars;
  if ([a1 state] == 1 || objc_msgSend(a1, "state") == 2)
  {
    if ([a1 state] == 1)
    {
      v4 = *&v1[OBJC_IVAR____TtC10FitnessApp27TrendDetailDailyAverageView_chartMask];
      [*&v1[OBJC_IVAR____TtC10FitnessApp27TrendDetailDailyAverageView_chartContainer] setMaskView:v4];
      *&v4[OBJC_IVAR____TtC10FitnessApp21TrendChartMaskingView_unmaskedWidth] = 0x402A000000000000;
      [v4 setNeedsLayout];
      v5 = objc_opt_self();
      v6 = swift_allocObject();
      *(v6 + 16) = v1;
      v51 = sub_10023F478;
      v52 = v6;
      v47 = _NSConcreteStackBlock;
      v48 = 1107296256;
      v49 = sub_1000449A8;
      v50 = &unk_10084D758;
      v7 = _Block_copy(&v47);
      v8 = v1;

      [v5 animateWithDuration:v7 animations:0.1];
      _Block_release(v7);
    }

    [a1 locationInView:*&v1[OBJC_IVAR____TtC10FitnessApp27TrendDetailDailyAverageView_chartContainer]];
    v10 = v9;
    sub_100239AF8();
    v12 = *(v11 + 16);
    if (v12)
    {
      v13 = 0;
      v14 = 0;
      v15 = 0.0;
      v16 = 1.79769313e308;
      do
      {
        v17 = vabdd_f64(v10, *(v11 + 8 * v14 + 32));
        if (v17 < v16)
        {
          v13 = v14;
        }

        v18 = v14 + 1;
        if (v17 < v16)
        {
          v15 = *(v11 + 8 * v14 + 32);
        }

        v16 = v17;
        ++v14;
      }

      while (v12 != v18);

      v19 = v15 + -2.0 + 6.5;
    }

    else
    {

      v13 = 0;
      v19 = 4.5;
    }

    v20 = *&v1[OBJC_IVAR____TtC10FitnessApp27TrendDetailDailyAverageView_chartMask];
    v21 = OBJC_IVAR____TtC10FitnessApp21TrendChartMaskingView_unmaskedCenterX;
    *&v20[OBJC_IVAR____TtC10FitnessApp21TrendChartMaskingView_unmaskedCenterX] = v19;
    [v20 setNeedsLayout];
    v22 = *&v1[OBJC_IVAR____TtC10FitnessApp27TrendDetailDailyAverageView_platterCenterXConstraint];
    if (v22)
    {
      [v22 setConstant:*&v20[v21]];
    }

    v23 = sub_10023A548(v13);
    if (v23)
    {
      v24 = v23;
      v25 = sub_10023A80C(v13);
      if (v25)
      {
        v26 = v25;
        v27 = *&v1[OBJC_IVAR____TtC10FitnessApp27TrendDetailDailyAverageView_platter90];
        v28 = *(v27 + OBJC_IVAR____TtC10FitnessApp25TrendsScrubberPlatterView_topLabel);
        v29 = String._bridgeToObjectiveC()();
        [v28 setText:v29];

        [*(v27 + OBJC_IVAR____TtC10FitnessApp25TrendsScrubberPlatterView_bottomLabel) setAttributedText:v24];
        v30 = *&v1[OBJC_IVAR____TtC10FitnessApp27TrendDetailDailyAverageView_platter365];
        v31 = *(v30 + OBJC_IVAR____TtC10FitnessApp25TrendsScrubberPlatterView_topLabel);
        v32 = String._bridgeToObjectiveC()();
        [v31 setText:v32];

        p_ivars = (&ResourceBundleClass + 48);
        [*(v30 + OBJC_IVAR____TtC10FitnessApp25TrendsScrubberPlatterView_bottomLabel) setAttributedText:v26];
        v33 = objc_opt_self();
        v34 = swift_allocObject();
        *(v34 + 16) = v1;
        v51 = sub_10023F408;
        v52 = v34;
        v47 = _NSConcreteStackBlock;
        v48 = 1107296256;
        v49 = sub_1000449A8;
        v50 = &unk_10084D708;
        v35 = _Block_copy(&v47);
        v36 = v1;

        [v33 animateWithDuration:v35 animations:0.1];
        _Block_release(v35);

LABEL_24:
        if ([a1 p_ivars[431]] == 1)
        {
          [v1 layoutIfNeeded];
          return;
        }

        v37 = objc_opt_self();
        v44 = swift_allocObject();
        *(v44 + 16) = v1;
        v51 = sub_10023F3F8;
        v52 = v44;
        v47 = _NSConcreteStackBlock;
        v48 = 1107296256;
        v39 = &unk_10084D6B8;
        goto LABEL_27;
      }
    }

    v40 = objc_opt_self();
    v41 = swift_allocObject();
    *(v41 + 16) = v1;
    v51 = sub_10023F3F0;
    v52 = v41;
    v47 = _NSConcreteStackBlock;
    v48 = 1107296256;
    v49 = sub_1000449A8;
    v50 = &unk_10084D668;
    v42 = _Block_copy(&v47);
    v43 = v1;

    [v40 animateWithDuration:v42 animations:0.1];
    _Block_release(v42);
    goto LABEL_24;
  }

  if ([a1 state] == 3 || objc_msgSend(a1, "state") == 4)
  {
    [*&v1[OBJC_IVAR____TtC10FitnessApp27TrendDetailDailyAverageView_chartContainer] setMaskView:0];
    v37 = objc_opt_self();
    v38 = swift_allocObject();
    *(v38 + 16) = v1;
    v51 = sub_10023F378;
    v52 = v38;
    v47 = _NSConcreteStackBlock;
    v48 = 1107296256;
    v39 = &unk_10084D618;
LABEL_27:
    v49 = sub_1000449A8;
    v50 = v39;
    v45 = _Block_copy(&v47);
    v46 = v1;

    [v37 animateWithDuration:v45 animations:{0.1, v47, v48}];
    _Block_release(v45);
  }
}

uint64_t sub_10023ECEC(uint64_t result)
{
  if (result > 6)
  {
    return 0;
  }

  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v2 = *(&off_100841BF8 + result + 4);
    if ((v2 - 1) > 6)
    {
      return 0;
    }

    v12 = *(v1 + OBJC_IVAR____TtC10FitnessApp27TrendDetailDailyAverageView_histogram90 + 64);
    v13 = *(v1 + OBJC_IVAR____TtC10FitnessApp27TrendDetailDailyAverageView_histogram90 + 80);
    v14 = *(v1 + OBJC_IVAR____TtC10FitnessApp27TrendDetailDailyAverageView_histogram90 + 96);
    v15 = *(v1 + OBJC_IVAR____TtC10FitnessApp27TrendDetailDailyAverageView_histogram90 + 112);
    v8 = *(v1 + OBJC_IVAR____TtC10FitnessApp27TrendDetailDailyAverageView_histogram90);
    v9 = *(v1 + OBJC_IVAR____TtC10FitnessApp27TrendDetailDailyAverageView_histogram90 + 16);
    v10 = *(v1 + OBJC_IVAR____TtC10FitnessApp27TrendDetailDailyAverageView_histogram90 + 32);
    v11 = *(v1 + OBJC_IVAR____TtC10FitnessApp27TrendDetailDailyAverageView_histogram90 + 48);
    v3 = sub_10065D3A4(v2 - 1);
    if (v4)
    {
      return 0;
    }

    v5 = *&v3;
    v6 = sub_1003D2500(byte_1006DFE50[*(v1 + OBJC_IVAR____TtC10FitnessApp27TrendDetailDailyAverageView_type)]);
    v7 = [objc_opt_self() quantityWithUnit:v6 doubleValue:{v5, v8, v9, v10, v11, v12, v13, v14, v15}];

    return v7;
  }

  return result;
}

uint64_t sub_10023EE34(uint64_t result)
{
  if (result > 6)
  {
    return 0;
  }

  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v2 = *(&off_100841BF8 + result + 4);
    if ((v2 - 1) > 6)
    {
      return 0;
    }

    v12 = *(v1 + OBJC_IVAR____TtC10FitnessApp27TrendDetailDailyAverageView_histogram365 + 64);
    v13 = *(v1 + OBJC_IVAR____TtC10FitnessApp27TrendDetailDailyAverageView_histogram365 + 80);
    v14 = *(v1 + OBJC_IVAR____TtC10FitnessApp27TrendDetailDailyAverageView_histogram365 + 96);
    v15 = *(v1 + OBJC_IVAR____TtC10FitnessApp27TrendDetailDailyAverageView_histogram365 + 112);
    v8 = *(v1 + OBJC_IVAR____TtC10FitnessApp27TrendDetailDailyAverageView_histogram365);
    v9 = *(v1 + OBJC_IVAR____TtC10FitnessApp27TrendDetailDailyAverageView_histogram365 + 16);
    v10 = *(v1 + OBJC_IVAR____TtC10FitnessApp27TrendDetailDailyAverageView_histogram365 + 32);
    v11 = *(v1 + OBJC_IVAR____TtC10FitnessApp27TrendDetailDailyAverageView_histogram365 + 48);
    v3 = sub_10065D3A4(v2 - 1);
    if (v4)
    {
      return 0;
    }

    v5 = *&v3;
    v6 = sub_1003D2500(byte_1006DFE50[*(v1 + OBJC_IVAR____TtC10FitnessApp27TrendDetailDailyAverageView_type)]);
    v7 = [objc_opt_self() quantityWithUnit:v6 doubleValue:{v5, v8, v9, v10, v11, v12, v13, v14, v15}];

    return v7;
  }

  return result;
}

uint64_t sub_10023EF7C(uint64_t a1)
{
  v22 = a1;
  v21 = type metadata accessor for Date();
  v1 = *(v21 - 8);
  __chkstk_darwin(v21);
  v3 = &v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = _swiftEmptyArrayStorage;
  specialized ContiguousArray.reserveCapacity(_:)();
  v23 = sub_1000059F8(0, &qword_1008E2D40);
  v4 = objc_opt_self();
  v5 = 0;
  v6 = (v1 + 8);
  while (1)
  {
    v14 = sub_100555C98();
    v15 = [v4 _preferredFontForTextStyle:UIFontTextStyleCaption2 variant:1024 maximumContentSizeCategory:UIContentSizeCategoryExtraExtraExtraLarge];
    if (!v15)
    {
      break;
    }

    v16 = v15;
    [v14 setFont:v15];

    [v14 setTextAlignment:0];
    [v14 setTextColor:v22];
    v13 = 0;
    v17 = *(&off_100841BF8 + v5 + 32);
    v18 = v17 - 1;
    if ((v17 - 1) <= 6)
    {
      if (!*(sub_1004CA2A8(&off_100841C50) + 16))
      {
        goto LABEL_12;
      }

      sub_1004C5568(v18);
      if ((v19 & 1) == 0)
      {
        goto LABEL_12;
      }

      Date.init(timeIntervalSinceReferenceDate:)();
      if (qword_1008DA6E8 != -1)
      {
        swift_once();
      }

      v7 = qword_1008E26E8;
      isa = Date._bridgeToObjectiveC()().super.isa;
      v9 = [v7 stringFromDate:isa];

      v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v12 = v11;

      (*v6)(v3, v21);
      v24 = v10;
      v25 = v12;
      sub_10000FCBC();
      StringProtocol.localizedUppercase.getter();

      v13 = String._bridgeToObjectiveC()();
    }

    [v14 setText:{v13, v21}];

    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
    v5 += 8;
    if (v5 == 56)
    {
      return v26;
    }
  }

  __break(1u);
LABEL_12:

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_10023F30C(uint64_t result)
{
  if (result > 6)
  {
    return 0;
  }

  if ((result & 0x8000000000000000) == 0)
  {
    v1 = *(&off_100841BF8 + result + 4);
    if ((v1 - 1) <= 6)
    {
      return [objc_allocWithZone(NSNumber) initWithInteger:v1];
    }

    return 0;
  }

  __break(1u);
  return result;
}

id sub_10023F378()
{
  v1 = *(v0 + 16);
  [*(v1 + OBJC_IVAR____TtC10FitnessApp27TrendDetailDailyAverageView_platter90) setAlpha:0.0];
  [*(v1 + OBJC_IVAR____TtC10FitnessApp27TrendDetailDailyAverageView_platter365) setAlpha:0.0];
  v2 = *(v1 + OBJC_IVAR____TtC10FitnessApp27TrendDetailDailyAverageView_titleLabel);

  return [v2 setAlpha:1.0];
}

id sub_10023F410(double a1)
{
  v3 = *(v1 + 16);
  [*(v3 + OBJC_IVAR____TtC10FitnessApp27TrendDetailDailyAverageView_platter90) setAlpha:?];
  v4 = *(v3 + OBJC_IVAR____TtC10FitnessApp27TrendDetailDailyAverageView_platter365);

  return [v4 setAlpha:a1];
}

uint64_t sub_10023F4B4()
{
  v1 = type metadata accessor for UnitsSettingsListView();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v15 - v6;
  v8 = *(v0 + 32);
  v9 = *(v0 + 48);
  v10 = *(v0 + 40);
  v11 = v8;
  [v9 isWheelchairUser];
  UnitsSettingsListView.init(formattingManager:healthStore:isWheelchairUser:isAppleMoveTime:)();
  (*(v2 + 16))(v4, v7, v1);
  v12 = objc_allocWithZone(sub_100140278(&qword_1008E2EB8));
  v13 = UIHostingController.init(rootView:)();
  (*(v2 + 8))(v7, v1);
  return v13;
}

uint64_t sub_10023F628()
{
  [v0[6] removeObserver:v0];
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_10023F694()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];

  swift_getObjectType();
  AccountFitnessSettingsChanged.init()();
  sub_1002402BC();
  dispatch thunk of EventHubProtocol.publish<A>(_:)();
  (*(v2 + 8))(v1, v3);

  return _swift_task_switch(sub_10023F764, 0, 0);
}

uint64_t sub_10023F764()
{

  v1 = *(v0 + 8);

  return v1();
}

BOOL sub_10023F7E4()
{
  v1 = v0;
  v2 = *v0;
  v3 = sub_100140278(&unk_1008F73A0);
  __chkstk_darwin(v3 - 8);
  v5 = &v75 - v4;
  v6 = type metadata accessor for DateComponents();
  v7 = *(v6 - 8);
  *&v8 = __chkstk_darwin(v6).n128_u64[0];
  v10 = &v75 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = v0[4];
  v80 = 0;
  v12 = [v11 wheelchairUseWithError:{&v80, v8}];
  if (v12)
  {
    v13 = v12;
    v14 = v80;
    v15 = [v13 wheelchairUse];

    if (v15 == 2)
    {
      v16 = static os_log_type_t.default.getter();
      v17 = HKLogActivity;
      result = os_log_type_enabled(HKLogActivity, v16);
      if (result)
      {
        v19 = v17;
        v20 = swift_slowAlloc();
        v21 = swift_slowAlloc();
        v80 = v21;
        *v20 = 136315138;
        v22 = _typeName(_:qualified:)();
        v24 = sub_10000AFDC(v22, v23, &v80);

        *(v20 + 4) = v24;
        _os_log_impl(&_mh_execute_header, v19, v16, "%s - user is in wheelchair mode", v20, 0xCu);
        sub_100005A40(v21);

        return 0;
      }

      return result;
    }
  }

  else
  {
    v78 = v6;
    v79 = v7;
    v25 = v80;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    v26 = static os_log_type_t.error.getter();
    v27 = HKLogActivity;
    if (os_log_type_enabled(HKLogActivity, v26))
    {
      v76 = v27;
      v28 = swift_slowAlloc();
      v80 = swift_slowAlloc();
      *v28 = 136315394;
      v77 = v2;
      v29 = _typeName(_:qualified:)();
      v31 = sub_10000AFDC(v29, v30, &v80);

      *(v28 + 4) = v31;
      *(v28 + 12) = 2080;
      swift_getErrorValue();
      v32 = Error.localizedDescription.getter();
      v34 = sub_10000AFDC(v32, v33, &v80);

      *(v28 + 14) = v34;
      v35 = v76;
      _os_log_impl(&_mh_execute_header, v76, v26, "%s failed to load wheelchair status with error: %s", v28, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }

    v6 = v78;
    v7 = v79;
  }

  if ((v1[8] & 1) != 0 || *(v1 + 65) == 1)
  {
    v36 = static os_log_type_t.default.getter();
    v37 = HKLogActivity;
    swift_retain_n();
    if (os_log_type_enabled(v37, v36))
    {
      swift_retain_n();
      v38 = v37;
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v80 = v40;
      *v39 = 136315650;
      v41 = _typeName(_:qualified:)();
      v43 = sub_10000AFDC(v41, v42, &v80);

      *(v39 + 4) = v43;
      *(v39 + 12) = 1024;
      LODWORD(v43) = *(v1 + 64);

      *(v39 + 14) = v43;

      *(v39 + 18) = 1024;
      v44 = *(v1 + 65);

      *(v39 + 20) = v44;

      _os_log_impl(&_mh_execute_header, v38, v36, "%s - isAppleMoveTime %{BOOL}d didSwitchMoveModeToday %{BOOL}d", v39, 0x18u);
      sub_100005A40(v40);
    }

    else
    {
    }

    return 1;
  }

  else
  {
    v80 = 0;
    v45 = [v11 dateOfBirthComponentsWithError:&v80];
    v46 = v80;
    if (!v45)
    {
      v64 = v80;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      v65 = static os_log_type_t.error.getter();
      v66 = HKLogActivity;
      if (os_log_type_enabled(HKLogActivity, v65))
      {
        v67 = v66;
        v68 = swift_slowAlloc();
        v80 = swift_slowAlloc();
        *v68 = 136315394;
        v69 = _typeName(_:qualified:)();
        v71 = sub_10000AFDC(v69, v70, &v80);

        *(v68 + 4) = v71;
        *(v68 + 12) = 2080;
        swift_getErrorValue();
        v72 = Error.localizedDescription.getter();
        v74 = sub_10000AFDC(v72, v73, &v80);

        *(v68 + 14) = v74;
        _os_log_impl(&_mh_execute_header, v67, v65, "%s failed to load date of birth components with error: %s", v68, 0x16u);
        swift_arrayDestroy();
      }

      else
      {
      }

      return 0;
    }

    v79 = v7;
    v47 = v45;
    static DateComponents._unconditionallyBridgeFromObjectiveC(_:)();
    v48 = v46;

    DateComponents.date.getter();
    v49 = type metadata accessor for Date();
    v50 = *(v49 - 8);
    isa = 0;
    if ((*(v50 + 48))(v5, 1, v49) != 1)
    {
      isa = Date._bridgeToObjectiveC()().super.isa;
      (*(v50 + 8))(v5, v49);
    }

    v52 = FIAgeInYearsForDateOfBirth();

    v53 = kActivityMoveModeMoveTimeMaximumAge;
    v54 = kActivityMoveModeMoveTimeMaximumAge >= v52;
    v55 = static os_log_type_t.default.getter();
    v56 = HKLogActivity;
    if (os_log_type_enabled(HKLogActivity, v55))
    {
      v78 = v6;
      v57 = v53 >= v52;
      v58 = v56;
      v59 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      v80 = v60;
      *v59 = 136315650;
      v61 = _typeName(_:qualified:)();
      v63 = sub_10000AFDC(v61, v62, &v80);

      *(v59 + 4) = v63;
      *(v59 + 12) = 2048;
      *(v59 + 14) = v52;
      *(v59 + 22) = 1024;
      *(v59 + 24) = v57;
      _os_log_impl(&_mh_execute_header, v58, v55, "%s ageInYears %ld shouldShowMoveModeSettings %{BOOL}d", v59, 0x1Cu);
      sub_100005A40(v60);

      (*(v79 + 8))(v10, v78);
    }

    else
    {
      (*(v79 + 8))(v10, v6);
    }

    return v54;
  }
}

id sub_1002400B8()
{
  v1 = *(v0 + 56);
  v2 = objc_allocWithZone(CHASActivitySetupMetricsCollectionViewController);

  return [v2 initWithPresentationContext:6 pregnancyStateProvider:v1];
}

id sub_100240104()
{
  v0 = objc_allocWithZone(CHASActivitySetupViewController);

  return [v0 initWithPresentationContext:6];
}

void sub_100240144()
{
  if (sub_10023F7E4())
  {
    v1 = *(v0 + 32);
    v2 = *(v0 + 40);
    v3 = *(v0 + 64);
    v4 = objc_allocWithZone(type metadata accessor for MoveModeSettingsViewController());
    sub_10040FB40(v1, v2, v3);
  }
}

unint64_t sub_1002402BC()
{
  result = qword_1008E2E98;
  if (!qword_1008E2E98)
  {
    type metadata accessor for AccountFitnessSettingsChanged();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E2E98);
  }

  return result;
}

uint64_t sub_100240314(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_10024035C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1002403DC()
{
  sub_10005C91C();
  if (v0 <= 0x3F)
  {
    type metadata accessor for HistoryItemsCard();
    if (v1 <= 0x3F)
    {
      sub_10005C6EC();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_100240494@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v53 = sub_100140278(&qword_1008E2FE0);
  __chkstk_darwin(v53);
  v5 = &v43 - v4;
  v6 = type metadata accessor for HistoryItemsCardView();
  v47 = *(v6 - 8);
  v7 = *(v47 + 64);
  __chkstk_darwin(v6);
  v8 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_100140278(&qword_1008E2FA8);
  __chkstk_darwin(v50);
  v10 = &v43 - v9;
  v48 = sub_100140278(&qword_1008E2FE8);
  __chkstk_darwin(v48);
  KeyPath = &v43 - v11;
  v52 = sub_100140278(&qword_1008E2F80);
  __chkstk_darwin(v52);
  v51 = &v43 - v12;
  v13 = *(a1 + *(v6 + 20));
  v14 = *(v13 + OBJC_IVAR____TtC10FitnessApp16HistoryItemsCard_historyItems);
  if (*(v14 + 16))
  {
    v46 = a2;
    sub_100007C5C(v14 + 32, v75);
    if (*(v13 + OBJC_IVAR____TtC10FitnessApp16HistoryItemsCard_size))
    {
      *v10 = static HorizontalAlignment.leading.getter();
      *(v10 + 1) = 0;
      v10[16] = 0;
      v45 = *(sub_100140278(&qword_1008E2FF0) + 44);
      sub_100240E5C();
      v16 = sub_10049AB00(v15);

      *&v63[0] = v16;
      swift_getKeyPath();
      sub_100241B50(a1, &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
      v17 = (*(v47 + 80) + 16) & ~*(v47 + 80);
      v18 = swift_allocObject();
      sub_100241BB4(v8, v18 + v17);
      v19 = swift_allocObject();
      *(v19 + 16) = sub_100241C18;
      *(v19 + 24) = v18;
      v47 = sub_100140278(&qword_1008E2FF8);
      sub_100140278(&qword_1008E3000);
      sub_10014A6B0(&qword_1008E3008, &qword_1008E2FF8);
      sub_1001447C0();
      sub_10014A6B0(&qword_1008E3010, &qword_1008E3000);
      ForEach<>.init(_:id:content:)();
      sub_10001B104(v10, KeyPath, &qword_1008E2FA8);
      swift_storeEnumTagMultiPayload();
      sub_100140278(&qword_1008E2F90);
      sub_10024195C(&qword_1008E2F88, &qword_1008E2F90, &unk_1006E0028, sub_100241908);
      sub_10014A6B0(&qword_1008E2FA0, &qword_1008E2FA8);
      v20 = v51;
      _ConditionalContent<>.init(storage:)();
      v21 = v10;
      v22 = &qword_1008E2FA8;
    }

    else
    {
      sub_100007C5C(v75, v63 + 8);
      sub_10001B104(a1 + *(v6 + 24), &v65, &qword_1008DC808);
      *&v63[0] = v13;

      static Alignment.center.getter();
      _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
      *&v55 = v67;
      v72 = v60;
      v73 = v61;
      v68 = v56;
      v69 = v57;
      *&v54[41] = v65;
      *&v54[45] = v66;
      *&v54[37] = v64;
      v70 = v58;
      v71 = v59;
      v74 = v62;
      v67 = v55;
      sub_10001B104(v63, KeyPath, &qword_1008E2F90);
      swift_storeEnumTagMultiPayload();
      sub_100140278(&qword_1008E2F90);
      sub_10024195C(&qword_1008E2F88, &qword_1008E2F90, &unk_1006E0028, sub_100241908);
      sub_10014A6B0(&qword_1008E2FA0, &qword_1008E2FA8);
      v20 = v51;
      _ConditionalContent<>.init(storage:)();
      v21 = v63;
      v22 = &qword_1008E2F90;
    }

    sub_10000EA04(v21, v22);
    sub_10001B104(v20, v5, &qword_1008E2F80);
    swift_storeEnumTagMultiPayload();
    sub_100140278(&qword_1008E2FB8);
    sub_100241824();
    sub_10024195C(&qword_1008E2FB0, &qword_1008E2FB8, &unk_1006E0038, sub_1002419E0);
    _ConditionalContent<>.init(storage:)();
    sub_10000EA04(v20, &qword_1008E2F80);
    return sub_100005A40(v75);
  }

  else
  {
    LocalizedStringKey.init(stringLiteral:)();
    v23 = Text.init(_:tableName:bundle:comment:)();
    v50 = v25;
    v51 = v24;
    v27 = v26;
    KeyPath = swift_getKeyPath();
    v48 = static Font.footnote.getter();
    v47 = swift_getKeyPath();
    LODWORD(v46) = v27 & 1;
    LOBYTE(v63[0]) = v27 & 1;
    LODWORD(v45) = static HierarchicalShapeStyle.secondary.getter();
    v28 = *(v13 + OBJC_IVAR____TtC10FitnessApp16HistoryItemsCard_size);
    v29 = static Alignment.center.getter();
    if (v28)
    {
      v30 = 100.0;
    }

    else
    {
      v30 = 0.0;
    }

    if (v28)
    {
      v31 = 0.0;
    }

    else
    {
      v31 = INFINITY;
    }

    v32 = v30;
    v33 = -INFINITY;
    if (v28)
    {
      v33 = v30;
    }

    else
    {
      v32 = v31;
    }

    if (v33 > v32)
    {
      v43 = v29;
      static os_log_type_t.fault.getter();
      v34 = static Log.runtimeIssuesLog.getter();
      v44 = v23;
      v35 = v34;
      os_log(_:dso:log:_:_:)();

      v23 = v44;
    }

    _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
    *&v54[13] = v65;
    *&v54[17] = v66;
    *&v54[21] = v67;
    *&v54[25] = v68;
    *&v54[1] = v63[0];
    *&v54[5] = v63[1];
    *&v54[9] = v64;
    v36 = *&v54[20];
    *(v5 + 132) = *&v54[16];
    *(v5 + 148) = v36;
    *(v5 + 164) = *&v54[24];
    v37 = *&v54[4];
    *(v5 + 68) = *v54;
    *(v5 + 84) = v37;
    v38 = *&v54[12];
    *(v5 + 100) = *&v54[8];
    v39 = v51;
    *v5 = v23;
    *(v5 + 1) = v39;
    v5[16] = v46;
    v40 = KeyPath;
    *(v5 + 3) = v50;
    *(v5 + 4) = v40;
    v5[40] = 1;
    v41 = v48;
    *(v5 + 6) = v47;
    *(v5 + 7) = v41;
    *(v5 + 16) = v45;
    *(v5 + 45) = v54[28];
    *(v5 + 116) = v38;
    swift_storeEnumTagMultiPayload();
    sub_100140278(&qword_1008E2FB8);
    sub_100241824();
    sub_10024195C(&qword_1008E2FB0, &qword_1008E2FB8, &unk_1006E0038, sub_1002419E0);
    return _ConditionalContent<>.init(storage:)();
  }
}

void sub_100240E5C()
{
  v1 = type metadata accessor for DynamicTypeSize();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v11 - v6;
  sub_10005491C(&v11 - v6);
  (*(v2 + 104))(v4, enum case for DynamicTypeSize.xxxLarge(_:), v1);
  v8 = static DynamicTypeSize.< infix(_:_:)();
  v9 = *(v2 + 8);
  v9(v4, v1);
  v9(v7, v1);
  v10 = *(*(v0 + *(type metadata accessor for HistoryItemsCardView() + 20)) + OBJC_IVAR____TtC10FitnessApp16HistoryItemsCard_historyItems);
  if ((v8 & 1) != 0 || *(v10 + 16) <= 2uLL)
  {
  }

  else
  {
    sub_100311340(v10, v10 + 32, 0, 5uLL);
  }
}

uint64_t sub_100240FE0(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  sub_1000066AC(a1, v1);
  return (*(v2 + 48))(v1, v2);
}

uint64_t sub_100241038@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v48 = a2;
  v49 = a1;
  v52 = a4;
  v47 = type metadata accessor for DynamicTypeSize();
  v46 = *(v47 - 8);
  __chkstk_darwin(v47);
  v44 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v44 - v7;
  v9 = sub_100140278(&qword_1008E13B0);
  __chkstk_darwin(v9);
  v11 = &v44 - v10;
  v51 = sub_100140278(&qword_1008E13B8);
  v50 = *(v51 - 8);
  __chkstk_darwin(v51);
  v13 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v45 = &v44 - v15;
  v16 = sub_100140278(&qword_1008E3018);
  __chkstk_darwin(v16 - 8);
  v18 = &v44 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v44 - v20;
  v22 = type metadata accessor for HistoryItemsCardView();
  v23 = *(a3 + *(v22 + 20));
  sub_100007C5C(v48, &v55);
  sub_10001B104(a3 + *(v22 + 24), v56, &qword_1008DC808);
  v54 = v23;

  sub_100240E5C();
  v25 = *(v24 + 16);

  if (v25 - 1 == v49)
  {
    v26 = 1;
    v27 = v51;
  }

  else
  {
    Divider.init()();
    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    v28 = &v11[*(v9 + 36)];
    v29 = v57;
    *v28 = *&v56[40];
    *(v28 + 1) = v29;
    *(v28 + 2) = v58;
    sub_10005491C(v8);
    v30 = v46;
    v31 = v44;
    v32 = v47;
    (*(v46 + 104))(v44, enum case for DynamicTypeSize.xxxLarge(_:), v47);
    v33 = static DynamicTypeSize.< infix(_:_:)();
    v34 = *(v30 + 8);
    v34(v31, v32);
    v34(v8, v32);
    if (v33)
    {
      v35 = 0x4024000000000000;
    }

    else
    {
      v35 = 0x4020000000000000;
    }

    if (v33)
    {
      v36 = 0x404E000000000000;
    }

    else
    {
      v36 = 0;
    }

    v37 = static Edge.Set.all.getter();
    sub_100015E80(v11, v13, &qword_1008E13B0);
    v38 = v51;
    v39 = &v13[*(v51 + 36)];
    *v39 = v37;
    *(v39 + 1) = v35;
    *(v39 + 2) = v36;
    *(v39 + 3) = v35;
    *(v39 + 4) = 0;
    v39[40] = 0;
    v40 = v45;
    sub_100015E80(v13, v45, &qword_1008E13B8);
    sub_100015E80(v40, v21, &qword_1008E13B8);
    v26 = 0;
    v27 = v38;
  }

  (*(v50 + 56))(v21, v26, 1, v27);
  sub_100241CD0(&v54, v53);
  sub_10001B104(v21, v18, &qword_1008E3018);
  v41 = v52;
  sub_100241CD0(v53, v52);
  v42 = sub_100140278(&qword_1008E3020);
  sub_10001B104(v18, v41 + *(v42 + 48), &qword_1008E3018);
  sub_10000EA04(v21, &qword_1008E3018);
  sub_100241D2C(&v54);
  sub_10000EA04(v18, &qword_1008E3018);
  return sub_100241D2C(v53);
}

uint64_t sub_100241574()
{
  v1 = type metadata accessor for AccessibilityChildBehavior();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100140278(&qword_1008E2F58);
  __chkstk_darwin(v5);
  v7 = &v9 - v6;
  sub_100240494(v0, &v9 - v6);
  static AccessibilityChildBehavior.combine.getter();
  sub_1002416E8();
  View.accessibilityElement(children:)();
  (*(v2 + 8))(v4, v1);
  return sub_10000EA04(v7, &qword_1008E2F58);
}

unint64_t sub_1002416E8()
{
  result = qword_1008E2F60;
  if (!qword_1008E2F60)
  {
    sub_100141EEC(&qword_1008E2F58);
    sub_10024176C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E2F60);
  }

  return result;
}

unint64_t sub_10024176C()
{
  result = qword_1008E2F68;
  if (!qword_1008E2F68)
  {
    sub_100141EEC(&qword_1008E2F70);
    sub_100241824();
    sub_10024195C(&qword_1008E2FB0, &qword_1008E2FB8, &unk_1006E0038, sub_1002419E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E2F68);
  }

  return result;
}

unint64_t sub_100241824()
{
  result = qword_1008E2F78;
  if (!qword_1008E2F78)
  {
    sub_100141EEC(&qword_1008E2F80);
    sub_10024195C(&qword_1008E2F88, &qword_1008E2F90, &unk_1006E0028, sub_100241908);
    sub_10014A6B0(&qword_1008E2FA0, &qword_1008E2FA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E2F78);
  }

  return result;
}

unint64_t sub_100241908()
{
  result = qword_1008E2F98;
  if (!qword_1008E2F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E2F98);
  }

  return result;
}

uint64_t sub_10024195C(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_100141EEC(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1002419E0()
{
  result = qword_1008E2FC0;
  if (!qword_1008E2FC0)
  {
    sub_100141EEC(&qword_1008E2FC8);
    sub_100241A98();
    sub_10014A6B0(&qword_1008DD728, &qword_1008DD730);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E2FC0);
  }

  return result;
}

unint64_t sub_100241A98()
{
  result = qword_1008E2FD0;
  if (!qword_1008E2FD0)
  {
    sub_100141EEC(&qword_1008E2FD8);
    sub_10016DE84();
    sub_10014A6B0(&qword_1008DC4C8, &qword_1008DC4D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E2FD0);
  }

  return result;
}

uint64_t sub_100241B50(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HistoryItemsCardView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100241BB4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HistoryItemsCardView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100241C18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *(type metadata accessor for HistoryItemsCardView() - 8);
  v8 = v3 + ((*(v7 + 80) + 16) & ~*(v7 + 80));

  return sub_100241038(a1, a2, v8, a3);
}

uint64_t type metadata accessor for ActivitySummaryView()
{
  result = qword_1008E3080;
  if (!qword_1008E3080)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100241DF4()
{
  sub_10006DAB0(319, &qword_1008E3090, &qword_1008E3098);
  if (v0 <= 0x3F)
  {
    sub_1001F3724();
    if (v1 <= 0x3F)
    {
      sub_10006DAB0(319, &qword_1008E30A0, &qword_1008F24B0);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

double sub_100241EEC@<D0>(uint64_t a1@<X8>)
{
  v40 = a1;
  v2 = type metadata accessor for ActivityRingsSwiftUIView.Kind();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v39 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = (&v35 - v6);
  v8 = type metadata accessor for ActivityRingsRenderingMode();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v35 - v13;
  v15 = type metadata accessor for ActivityRingsSwiftUIView();
  v37 = *(v15 - 8);
  v38 = v15;
  __chkstk_darwin(v15);
  v36 = &v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *v1;
  HIDWORD(v35) = *(v1 + 8);
  v18 = type metadata accessor for ActivitySummaryView();
  v19 = *(v1 + *(v18 + 28));
  v20 = *(v1 + *(v18 + 32));
  (*(v9 + 104))(v14, enum case for ActivityRingsRenderingMode.fullColor(_:), v8);
  if (!v17)
  {
    LODWORD(v35) = v20;
    if (v19)
    {
      *v7 = 0;
      goto LABEL_6;
    }

    *v7 = 0;
    v7[1] = 0;
    v7[2] = 0;
LABEL_9:
    v25 = &enum case for ActivityRingsSwiftUIView.Kind.threeRings(_:);
    goto LABEL_10;
  }

  v21 = v17;
  LODWORD(v35) = [v21 _wheelchairUse] == 2;
  v22 = [v21 _isStandalonePhoneSummary];
  HKActivitySummary.moveCompletionPercentage.getter();
  v24 = v23;
  if ((v22 & 1) == 0)
  {
    [v21 _exerciseTimeCompletionPercentage];
    v27 = v26;
    [v21 _standHoursCompletionPercentage];
    v29 = v28;

    *v7 = v24;
    v7[1] = v27;
    v7[2] = v29;
    goto LABEL_9;
  }

  *v7 = v24;
LABEL_6:
  v25 = &enum case for ActivityRingsSwiftUIView.Kind.standalone(_:);
LABEL_10:
  (*(v3 + 104))(v7, *v25, v2);
  (*(v3 + 16))(v39, v7, v2);
  (*(v9 + 16))(v11, v14, v8);
  v30 = v36;
  ActivityRingsSwiftUIView.init(kind:isPlaceholder:isPaused:shouldShowSprites:isWheelchairUser:renderingMode:)();
  (*(v3 + 8))(v7, v2);
  (*(v9 + 8))(v14, v8);
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v31 = v40;
  (*(v37 + 32))(v40, v30, v38);
  v32 = (v31 + *(sub_100140278(&qword_1008E30E0) + 36));
  v33 = v42;
  *v32 = v41;
  v32[1] = v33;
  result = *&v43;
  v32[2] = v43;
  return result;
}

unint64_t sub_100242320()
{
  result = qword_1008E30E8;
  if (!qword_1008E30E8)
  {
    sub_100141EEC(&qword_1008E30E0);
    sub_1002423AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E30E8);
  }

  return result;
}

unint64_t sub_1002423AC()
{
  result = qword_1008E30F0[0];
  if (!qword_1008E30F0[0])
  {
    type metadata accessor for ActivityRingsSwiftUIView();
    result = swift_getWitnessTable();
    atomic_store(result, qword_1008E30F0);
  }

  return result;
}

uint64_t sub_100242404()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_100242440(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100242488(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_100242530()
{
  sub_100140278(&qword_1008E31A0);
  Binding.projectedValue.getter();
  return v1;
}

uint64_t sub_10024258C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v60 = a2;
  sub_100141EEC(&qword_1008E3178);
  v56 = *(a1 + 16);
  v4 = type metadata accessor for Section();
  v59 = *(v4 - 8);
  __chkstk_darwin(v4);
  v55 = &v41 - v5;
  sub_100141EEC(&qword_1008E3180);
  v50 = v4;
  v6 = type metadata accessor for ModifiedContent();
  v48 = v6;
  v58 = *(v6 - 8);
  __chkstk_darwin(v6);
  v54 = &v41 - v7;
  v49 = sub_100242D98();
  v44 = *(a1 + 24);
  v70 = v49;
  v71 = v44;
  v72 = &protocol witness table for EmptyView;
  WitnessTable = swift_getWitnessTable();
  v46 = WitnessTable;
  v9 = sub_100242FB4(&qword_1008E3198, &qword_1008E3180);
  v68 = WitnessTable;
  v69 = v9;
  v57 = &protocol conformance descriptor for <> ModifiedContent<A, B>;
  v47 = swift_getWitnessTable();
  *&v73 = v6;
  *(&v73 + 1) = v47;
  v51 = &opaque type descriptor for <<opaque return type of View.listRowSeparator(_:edges:)>>;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v52 = *(OpaqueTypeMetadata2 - 8);
  __chkstk_darwin(OpaqueTypeMetadata2);
  v42 = &v41 - v10;
  sub_100141EEC(&qword_1008DD578);
  v11 = type metadata accessor for ModifiedContent();
  v53 = *(v11 - 8);
  __chkstk_darwin(v11);
  v41 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v45 = &v41 - v14;
  __chkstk_darwin(v15);
  v17 = &v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v41 - v19;
  LOBYTE(v4) = *(v2 + 8);
  v21 = *v2;
  v22 = sub_100242530();
  v24 = v23;
  v26 = v25;
  static Edge.Set.horizontal.getter();
  v73 = 0u;
  v74 = 0u;
  v75 = 1;
  SafeAreaPaddingModifier.init(edges:insets:)();
  *v20 = v21;
  v20[8] = v4;
  *(v20 + 2) = v22;
  *(v20 + 3) = v24;
  *(v20 + 4) = v26;
  sub_100242ED0(v20, v17);
  v61 = v56;
  v62 = v44;
  v63 = v2;
  v27 = v55;
  Section<>.init(header:content:)();
  v66 = static Color.clear.getter();
  v28 = v54;
  v29 = v50;
  View.listRowBackground<A>(_:)();

  (*(v59 + 8))(v27, v29);
  static VerticalEdge.Set.all.getter();
  v30 = v42;
  v31 = v48;
  v32 = v47;
  View.listRowSeparator(_:edges:)();
  (*(v58 + 8))(v28, v31);
  v66 = v31;
  v67 = v32;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v34 = v41;
  v35 = OpaqueTypeMetadata2;
  sub_1002E24A4();
  (*(v52 + 8))(v30, v35);
  sub_100242F4C(v20);
  v36 = sub_100242FB4(&qword_1008DD570, &qword_1008DD578);
  v64 = OpaqueTypeConformance2;
  v65 = v36;
  v37 = swift_getWitnessTable();
  v38 = v45;
  sub_100073018(v34, v11, v37);
  v39 = *(v53 + 8);
  v39(v34, v11);
  sub_100073018(v38, v11, v37);
  return (v39)(v38, v11);
}

uint64_t sub_100242C20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 - 8);
  v6 = __chkstk_darwin(a1);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v11 = &v14 - v10;
  (*(v9 + 40))();
  sub_100073018(v8, a2, a3);
  v12 = *(v5 + 8);
  v12(v8, a2);
  sub_100073018(v11, a2, a3);
  return (v12)(v11, a2);
}

unint64_t sub_100242D98()
{
  result = qword_1008E3188;
  if (!qword_1008E3188)
  {
    sub_100141EEC(&qword_1008E3178);
    sub_100242E24();
    sub_100242E78();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E3188);
  }

  return result;
}

unint64_t sub_100242E24()
{
  result = qword_1008E3190;
  if (!qword_1008E3190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E3190);
  }

  return result;
}

unint64_t sub_100242E78()
{
  result = qword_1008DD5B8;
  if (!qword_1008DD5B8)
  {
    type metadata accessor for SafeAreaPaddingModifier();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008DD5B8);
  }

  return result;
}

uint64_t sub_100242ED0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100140278(&qword_1008E3178);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100242F4C(uint64_t a1)
{
  v2 = sub_100140278(&qword_1008E3178);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100242FB4(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_100141EEC(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100243034@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  v138 = a3;
  v139 = a2;
  v126 = a1;
  v137 = a4;
  v4 = sub_100140278(&qword_1008E31C0);
  v135 = *(v4 - 8);
  v136 = v4;
  __chkstk_darwin(v4);
  v125 = &v125 - v5;
  v6 = sub_100140278(&qword_1008E31C8);
  __chkstk_darwin(v6 - 8);
  v156 = &v125 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v147 = &v125 - v9;
  v10 = sub_100140278(&qword_1008E31D0);
  v149 = *(v10 - 8);
  v150 = v10;
  __chkstk_darwin(v10);
  v148 = &v125 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v155 = &v125 - v13;
  v14 = sub_100140278(&qword_1008DC448);
  __chkstk_darwin(v14 - 8);
  v16 = &v125 - v15;
  v17 = type metadata accessor for Font.TextStyle();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v125 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v168 = sub_1002446C0();
  v169 = v21;
  sub_10000FCBC();
  v22 = Text.init<A>(_:)();
  v24 = v23;
  v26 = v25;
  v154 = v27;
  (*(v18 + 104))(v20, enum case for Font.TextStyle.largeTitle(_:), v17);
  v28 = type metadata accessor for Font.Design();
  (*(*(v28 - 8) + 56))(v16, 1, 1, v28);
  static Font.system(_:design:weight:)();
  sub_10000EA04(v16, &qword_1008DC448);
  (*(v18 + 8))(v20, v17);
  Font.bold()();

  v29 = Text.font(_:)();
  v144 = v30;
  v145 = v29;
  v32 = v31;
  v146 = v33;

  sub_10004642C(v22, v24, v26 & 1);
  v34 = v126;

  KeyPath = swift_getKeyPath();
  v143 = static Edge.Set.top.getter();
  EdgeInsets.init(_all:)();
  v36 = v35;
  v38 = v37;
  v40 = v39;
  v42 = v41;
  v140 = v32 & 1;
  LOBYTE(v160) = v32 & 1;
  v191 = 0;
  v141 = static Edge.Set.bottom.getter();
  EdgeInsets.init(_all:)();
  v44 = v43;
  v46 = v45;
  v48 = v47;
  v50 = v49;
  LOBYTE(v168) = 0;
  v168 = sub_1002447C0();
  v169 = v51;
  v52 = Text.init<A>(_:)();
  v54 = v53;
  v56 = v55;
  static Font.callout.getter();
  v57 = Text.font(_:)();
  v152 = v58;
  v153 = v57;
  v134 = v59;
  v154 = v60;

  v61 = v56 & 1;
  v62 = v138;
  sub_10004642C(v52, v54, v61);

  v151 = swift_getKeyPath();
  v133 = static HierarchicalShapeStyle.secondary.getter();
  v157 = v34;
  v158 = v139;
  v159 = v62;
  sub_100140278(&qword_1008E31D8);
  sub_1002448CC();
  List<>.init(content:)();
  if (sub_100244524() & 1) != 0 && (sub_1002449A4())
  {
    v63 = [objc_opt_self() mainBundle];
    v64 = String._bridgeToObjectiveC()();
    v65 = String._bridgeToObjectiveC()();
    v66 = [v63 localizedStringForKey:v64 value:0 table:v65];

    v67 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v69 = v68;

    v168 = v67;
    v169 = v69;
    v70 = Text.init<A>(_:)();
    v72 = v71;
    LOBYTE(v69) = v73;
    LODWORD(v168) = static HierarchicalShapeStyle.secondary.getter();
    v74 = Text.foregroundStyle<A>(_:)();
    v76 = v75;
    v78 = v77;
    sub_10004642C(v70, v72, v69 & 1);

    static Font.callout.getter();
    v79 = Text.font(_:)();
    v81 = v80;
    LODWORD(v132) = v82;
    v84 = v83;

    sub_10004642C(v74, v76, v78 & 1);

    v85 = swift_getKeyPath();
    v86 = v132 & 1;
    v62 = v138;
    v131 = v81;
    v132 = v79;
    v129 = v86;
    sub_10006965C(v79, v81, v86);
    v130 = v84;

    v128 = v85;

    v127 = 1;
  }

  else
  {
    v131 = 0;
    v132 = 0;
    v129 = 0;
    v130 = 0;
    v128 = 0;
    v127 = 0;
  }

  v87 = v147;
  v88 = v136;
  v89 = sub_100244B40();
  if (v90)
  {
    v91 = v89;
    v92 = v90;
    v93 = swift_allocObject();
    v94 = v139;
    v93[2] = v34;
    v93[3] = v94;
    v93[4] = v62;
    __chkstk_darwin(v93);
    *(&v125 - 2) = v91;
    *(&v125 - 1) = v92;
    v95 = v34;

    v96 = v125;
    Button.init(action:label:)();

    LOBYTE(v92) = static Edge.Set.top.getter();
    EdgeInsets.init(_all:)();
    v97 = v96 + *(v88 + 36);
    *v97 = v92;
    *(v97 + 8) = v98;
    *(v97 + 16) = v99;
    *(v97 + 24) = v100;
    *(v97 + 32) = v101;
    *(v97 + 40) = 0;
    sub_100244D14(v96, v87);
    v102 = 0;
  }

  else
  {
    v102 = 1;
  }

  (*(v135 + 56))(v87, v102, 1, v88);
  v103 = v148;
  v104 = *(v149 + 16);
  v105 = v150;
  v104(v148, v155, v150);
  sub_10001B104(v87, v156, &qword_1008E31C8);
  *&v160 = v145;
  *(&v160 + 1) = v144;
  LOBYTE(v161) = v140;
  *(&v161 + 1) = *v194;
  DWORD1(v161) = *&v194[3];
  *(&v161 + 1) = v146;
  *&v162 = KeyPath;
  BYTE8(v162) = 1;
  *(&v162 + 9) = *v193;
  HIDWORD(v162) = *&v193[3];
  LOBYTE(v163) = v143;
  *(&v163 + 1) = *v192;
  DWORD1(v163) = *&v192[3];
  *(&v163 + 1) = v36;
  *&v164 = v38;
  *(&v164 + 1) = v40;
  *&v165 = v42;
  BYTE8(v165) = 0;
  *(&v165 + 9) = v196[0];
  HIDWORD(v165) = *(v196 + 3);
  LOBYTE(v166) = v141;
  DWORD1(v166) = *&v195[3];
  *(&v166 + 1) = *v195;
  *(&v166 + 1) = v44;
  *&v167[0] = v46;
  *(&v167[0] + 1) = v48;
  *&v167[1] = v50;
  BYTE8(v167[1]) = 0;
  v106 = v164;
  v107 = v161;
  v108 = v137;
  *v137 = v160;
  v108[1] = v107;
  v109 = v163;
  v108[2] = v162;
  v108[3] = v109;
  v110 = v165;
  v111 = v166;
  *(v108 + 121) = *(v167 + 9);
  v112 = v167[0];
  v108[6] = v111;
  v108[7] = v112;
  v108[4] = v106;
  v108[5] = v110;
  v113 = v152;
  *(v108 + 18) = v153;
  *(v108 + 19) = v113;
  LODWORD(v139) = v134 & 1;
  *(v108 + 160) = v134 & 1;
  v114 = v151;
  *(v108 + 21) = v154;
  *(v108 + 22) = v114;
  *(v108 + 184) = 1;
  *(v108 + 47) = v133;
  v115 = sub_100140278(&qword_1008E31F0);
  v104(v108 + v115[16], v103, v105);
  v116 = v108 + v115[20];
  *v116 = 0;
  v116[8] = 1;
  v117 = v108 + v115[24];
  v119 = v131;
  v118 = v132;
  *v117 = v132;
  *(v117 + 1) = v119;
  v121 = v129;
  v120 = v130;
  *(v117 + 2) = v129;
  *(v117 + 3) = v120;
  *(v117 + 4) = v128;
  v117[40] = v127;
  sub_10001B104(v156, v108 + v115[28], &qword_1008E31C8);
  sub_10001B104(&v160, &v168, &qword_1008E31F8);
  sub_10006965C(v153, v152, v139);

  sub_100244C2C(v118, v119, v121, v120);
  sub_100244C7C(v118, v119, v121, v120);
  sub_10000EA04(v147, &qword_1008E31C8);
  v122 = v150;
  v123 = *(v149 + 8);
  v123(v155, v150);
  sub_10000EA04(v156, &qword_1008E31C8);
  sub_100244C7C(v118, v119, v121, v120);
  v123(v148, v122);
  sub_10004642C(v153, v152, v139);

  v168 = v145;
  v169 = v144;
  v170 = v140;
  *v171 = *v194;
  *&v171[3] = *&v194[3];
  v172 = v146;
  v173 = KeyPath;
  v174 = 1;
  *v175 = *v193;
  *&v175[3] = *&v193[3];
  v176 = v143;
  *&v177[3] = *&v192[3];
  *v177 = *v192;
  v178 = v36;
  v179 = v38;
  v180 = v40;
  v181 = v42;
  v182 = 0;
  *&v183[3] = *(v196 + 3);
  *v183 = v196[0];
  v184 = v141;
  *&v185[3] = *&v195[3];
  *v185 = *v195;
  v186 = v44;
  v187 = v46;
  v188 = v48;
  v189 = v50;
  v190 = 0;
  return sub_10000EA04(&v168, &qword_1008E31F8);
}

uint64_t sub_100243C9C()
{
  sub_10032C6E0();
  sub_100140278(&qword_1008E3200);
  sub_10014A6B0(&qword_1008E3208, &qword_1008E3200);
  sub_100244950();
  sub_100244DE0();
  return ForEach<>.init(_:content:)();
}

uint64_t sub_100243D74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 48);
  v9 = *(a1 + 32);
  v10 = v2;
  v11 = *(a1 + 64);
  v3 = v11;
  v4 = *(a1 + 16);
  v8[0] = *a1;
  v5 = v8[0];
  v8[1] = v4;
  *(a2 + 32) = v9;
  *(a2 + 48) = v2;
  *(a2 + 64) = v3;
  *a2 = v5;
  *(a2 + 16) = v4;
  return sub_100244D84(v8, v7);
}

uint64_t sub_100243DC0@<X0>(uint64_t a1@<X8>)
{
  sub_10000FCBC();

  result = Text.init<A>(_:)();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_100243E2C()
{
  v1 = sub_100140278(&qword_1008E31A8);
  __chkstk_darwin(v1);
  v3 = &v9 - v2;
  v4 = *v0;
  v5 = *(v0 + 8);
  v6 = *(v0 + 16);
  *v3 = static HorizontalAlignment.center.getter();
  *(v3 + 1) = 0;
  v3[16] = 1;
  v7 = sub_100140278(&qword_1008E31B0);
  sub_100243034(v4, v5, v6, &v3[*(v7 + 44)]);
  static Edge.Set.all.getter();
  sub_10014A6B0(&qword_1008E31B8, &qword_1008E31A8);
  View.scenePadding(_:)();
  return sub_10000EA04(v3, &qword_1008E31A8);
}

__n128 sub_100243F60@<Q0>(uint64_t a1@<X8>)
{
  v2 = static HorizontalAlignment.leading.getter();
  sub_100243FF4(v5);
  *&v4[55] = v5[3];
  *&v4[39] = v5[2];
  *&v4[23] = v5[1];
  *&v4[7] = v5[0];
  *(a1 + 33) = *&v4[16];
  result = *&v4[32];
  *(a1 + 49) = *&v4[32];
  *(a1 + 65) = *&v4[48];
  *a1 = v2;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 80) = *&v4[63];
  *(a1 + 17) = *v4;
  return result;
}

uint64_t sub_100243FF4@<X0>(uint64_t a1@<X8>)
{
  sub_10000FCBC();

  v2 = Text.init<A>(_:)();
  v25 = v3;
  v26 = v2;
  v24 = v4;
  v27 = v5;

  v6 = Text.init<A>(_:)();
  v8 = v7;
  v10 = v9;
  static Font.footnote.getter();
  v11 = Text.font(_:)();
  v13 = v12;
  v15 = v14;

  sub_10004642C(v6, v8, v10 & 1);

  static HierarchicalShapeStyle.secondary.getter();
  v16 = Text.foregroundStyle<A>(_:)();
  v18 = v17;
  v20 = v19;
  v22 = v21;
  sub_10004642C(v11, v13, v15 & 1);

  *a1 = v26;
  *(a1 + 8) = v25;
  *(a1 + 16) = v24 & 1;
  *(a1 + 24) = v27;
  *(a1 + 32) = v16;
  *(a1 + 40) = v18;
  *(a1 + 48) = v20 & 1;
  *(a1 + 56) = v22;
  sub_10006965C(v26, v25, v24 & 1);

  sub_10006965C(v16, v18, v20 & 1);

  sub_10004642C(v16, v18, v20 & 1);

  sub_10004642C(v26, v25, v24 & 1);
}

__n128 sub_1002441E0@<Q0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Image.ResizingMode();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v12[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  Image.init(_internalSystemName:)();
  (*(v3 + 104))(v5, enum case for Image.ResizingMode.stretch(_:), v2);
  v6 = Image.resizable(capInsets:resizingMode:)();

  (*(v3 + 8))(v5, v2);
  v7 = [objc_opt_self() secondaryLabelColor];
  v8 = Color.init(_:)();
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  *a1 = v6;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 24) = v8;
  v9 = v17;
  *(a1 + 96) = v16;
  *(a1 + 112) = v9;
  *(a1 + 128) = v18;
  v10 = v13;
  *(a1 + 32) = *&v12[8];
  *(a1 + 48) = v10;
  result = v15;
  *(a1 + 64) = v14;
  *(a1 + 80) = result;
  return result;
}

uint64_t sub_1002443F0@<X0>(uint64_t a1@<X8>)
{
  *a1 = static VerticalAlignment.center.getter();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  sub_100140278(&qword_1008E3218);
  sub_100140278(&qword_1008E3220);
  sub_100140278(&qword_1008E3228);
  sub_10014A6B0(&qword_1008E3230, &qword_1008E3220);
  sub_100244F08();
  return Label.init(title:icon:)();
}

uint64_t sub_100244524()
{
  result = sub_10032C6E0();
  v1 = *(result + 16);
  if (v1)
  {
    v2 = 0;
    v3 = result + 32;
    v4 = _swiftEmptyArrayStorage;
    do
    {
      v5 = *(result + 16);
      v6 = v3 + 72 * v2;
      v7 = v2;
      while (1)
      {
        if (v7 >= v5)
        {
          __break(1u);
          return result;
        }

        v8 = *(v6 + 16);
        v9 = *(v6 + 32);
        v10 = *(v6 + 64);
        v25 = *(v6 + 48);
        v11 = *v6;
        v26 = v10;
        v23 = v8;
        v24 = v9;
        v22 = v11;
        v2 = v7 + 1;
        if (BYTE1(v25))
        {
          break;
        }

        v6 += 72;
        ++v7;
        if (v1 == v2)
        {
          goto LABEL_15;
        }
      }

      v12 = result;
      sub_100244D84(&v22, v21);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v27 = v4;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_100185F08(0, v4[2] + 1, 1);
        v4 = v27;
      }

      v15 = v4[2];
      v14 = v4[3];
      result = v12;
      if (v15 >= v14 >> 1)
      {
        sub_100185F08((v14 > 1), v15 + 1, 1);
        result = v12;
        v4 = v27;
      }

      v4[2] = v15 + 1;
      v16 = &v4[9 * v15];
      *(v16 + 2) = v22;
      v17 = v23;
      v18 = v24;
      v19 = v25;
      v16[12] = v26;
      *(v16 + 4) = v18;
      *(v16 + 5) = v19;
      *(v16 + 3) = v17;
    }

    while (v1 - 1 != v7);
  }

  else
  {
    v4 = _swiftEmptyArrayStorage;
  }

LABEL_15:

  v20 = v4[2];

  return v20 != 0;
}

uint64_t sub_1002446C0()
{
  sub_100244524();
  v0 = [objc_opt_self() mainBundle];
  v1 = String._bridgeToObjectiveC()();
  v2 = String._bridgeToObjectiveC()();
  v3 = [v0 localizedStringForKey:v1 value:0 table:v2];

  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  return v4;
}

uint64_t sub_1002447C0()
{
  sub_100244524();
  v0 = [objc_opt_self() mainBundle];
  v1 = String._bridgeToObjectiveC()();
  v2 = String._bridgeToObjectiveC()();
  v3 = [v0 localizedStringForKey:v1 value:0 table:v2];

  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  return v4;
}

unint64_t sub_1002448CC()
{
  result = qword_1008E31E0;
  if (!qword_1008E31E0)
  {
    sub_100141EEC(&qword_1008E31D8);
    sub_100244950();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E31E0);
  }

  return result;
}

unint64_t sub_100244950()
{
  result = qword_1008E31E8;
  if (!qword_1008E31E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E31E8);
  }

  return result;
}

uint64_t sub_1002449A4()
{
  result = sub_10032C6E0();
  v1 = *(result + 16);
  if (v1)
  {
    v2 = 0;
    v3 = result + 32;
    v4 = _swiftEmptyArrayStorage;
    do
    {
      v5 = *(result + 16);
      v6 = v3 + 72 * v2;
      v7 = v2;
      while (1)
      {
        if (v7 >= v5)
        {
          __break(1u);
          return result;
        }

        v8 = *(v6 + 16);
        v9 = *(v6 + 32);
        v10 = *(v6 + 64);
        v25 = *(v6 + 48);
        v11 = *v6;
        v26 = v10;
        v23 = v8;
        v24 = v9;
        v22 = v11;
        v2 = v7 + 1;
        if ((BYTE1(v25) & 1) == 0)
        {
          break;
        }

        v6 += 72;
        ++v7;
        if (v1 == v2)
        {
          goto LABEL_15;
        }
      }

      v12 = result;
      sub_100244D84(&v22, v21);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v27 = v4;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_100185F08(0, v4[2] + 1, 1);
        v4 = v27;
      }

      v15 = v4[2];
      v14 = v4[3];
      result = v12;
      if (v15 >= v14 >> 1)
      {
        sub_100185F08((v14 > 1), v15 + 1, 1);
        result = v12;
        v4 = v27;
      }

      v4[2] = v15 + 1;
      v16 = &v4[9 * v15];
      *(v16 + 2) = v22;
      v17 = v23;
      v18 = v24;
      v19 = v25;
      v16[12] = v26;
      *(v16 + 4) = v18;
      *(v16 + 5) = v19;
      *(v16 + 3) = v17;
    }

    while (v1 - 1 != v7);
  }

  else
  {
    v4 = _swiftEmptyArrayStorage;
  }

LABEL_15:

  v20 = v4[2];

  return v20 != 0;
}

uint64_t sub_100244B40()
{
  v0 = String._bridgeToObjectiveC()();
  v1 = [objc_opt_self() bundleWithIdentifier:v0];

  if (v1)
  {
    v2 = [v1 privacyFlow];
    if (v2)
    {
      v3 = v2;
      v4 = [v2 localizedButtonTitle];
      if (v4)
      {
        v5 = v4;
        v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();

        return v6;
      }
    }
  }

  return 0;
}

uint64_t sub_100244C2C(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_10006965C(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_100244C7C(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_10004642C(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_100244D14(uint64_t a1, uint64_t a2)
{
  v4 = sub_100140278(&qword_1008E31C0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_100244DE0()
{
  result = qword_1008E3210;
  if (!qword_1008E3210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E3210);
  }

  return result;
}

uint64_t sub_100244E34(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
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

uint64_t sub_100244E7C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_100244F08()
{
  result = qword_1008E3238;
  if (!qword_1008E3238)
  {
    sub_100141EEC(&qword_1008E3228);
    sub_100244F94();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E3238);
  }

  return result;
}

unint64_t sub_100244F94()
{
  result = qword_1008E3240;
  if (!qword_1008E3240)
  {
    sub_100141EEC(&qword_1008E3248);
    sub_10024504C();
    sub_10014A6B0(&qword_1008E0740, &qword_1008E0748);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E3240);
  }

  return result;
}

unint64_t sub_10024504C()
{
  result = qword_1008E3250;
  if (!qword_1008E3250)
  {
    sub_100141EEC(&qword_1008E3258);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E3250);
  }

  return result;
}

uint64_t sub_1002450DC()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

char *sub_100245150(void *a1, void *a2, void *a3)
{
  v7 = sub_100140278(&unk_1008E32F0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = aBlock - v9;
  v11 = OBJC_IVAR___CHWorkoutDetailDownhillRunDataSource__metrics;
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100140278(&qword_1008E32E0);
  Published.init(initialValue:)();
  (*(v8 + 32))(&v3[v11], v10, v7);
  *&v3[OBJC_IVAR___CHWorkoutDetailDownhillRunDataSource_columns] = _swiftEmptyArrayStorage;
  *&v3[OBJC_IVAR___CHWorkoutDetailDownhillRunDataSource_columnSizes] = &_swiftEmptyDictionarySingleton;
  v3[OBJC_IVAR___CHWorkoutDetailDownhillRunDataSource_hasAggregateRow] = 1;
  *&v3[OBJC_IVAR___CHWorkoutDetailDownhillRunDataSource_dataCalculator] = a2;
  v12 = a2;
  v13 = [a3 fitnessUIFormattingManager];
  *&v3[OBJC_IVAR___CHWorkoutDetailDownhillRunDataSource_formattingManager] = v13;
  *&v3[OBJC_IVAR___CHWorkoutDetailDownhillRunDataSource_workout] = a1;
  *&v3[OBJC_IVAR___CHWorkoutDetailDownhillRunDataSource_defaultColumns] = &off_100843638;
  v14 = type metadata accessor for WorkoutDetailDownhillRunDataSource();
  v24.receiver = v3;
  v24.super_class = v14;
  v15 = a1;
  v16 = objc_msgSendSuper2(&v24, "init");
  v17 = *&v16[OBJC_IVAR___CHWorkoutDetailDownhillRunDataSource_dataCalculator];
  v18 = *&v16[OBJC_IVAR___CHWorkoutDetailDownhillRunDataSource_workout];
  v19 = swift_allocObject();
  *(v19 + 16) = v16;
  aBlock[4] = sub_1002475E4;
  aBlock[5] = v19;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100245AB8;
  aBlock[3] = &unk_10084DB38;
  v20 = _Block_copy(aBlock);
  v21 = v16;

  [v17 downhillRunsForWorkout:v18 completion:v20];
  _Block_release(v20);

  return v21;
}

void sub_100245458(unint64_t a1, uint64_t a2, void *a3)
{
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v14 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    sub_100140278(&qword_1008E7590);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_1006D46C0;
    swift_getErrorValue();
    v16 = v39;
    v17 = v40;
    *(v15 + 56) = v40;
    v18 = sub_100005994((v15 + 32));
    (*(*(v17 - 8) + 16))(v18, v16, v17);
    swift_errorRetain();
    print(_:separator:terminator:)();

    return;
  }

  if (a1)
  {
    v37 = v12;
    v38 = a3;
    if (a1 >> 62)
    {
      v19 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v19 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v35 = v11;
    v36 = v7;
    if (v19)
    {
      aBlock[0] = _swiftEmptyArrayStorage;

      specialized ContiguousArray.reserveCapacity(_:)();
      if (v19 < 0)
      {
LABEL_21:
        __break(1u);
        return;
      }

      v20 = 0;
      do
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          v21 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v21 = *(a1 + 8 * v20 + 32);
        }

        v22 = v21;
        ++v20;
        type metadata accessor for WorkoutDurationMetrics();
        swift_allocObject();
        sub_1003D1800(v22);
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      while (v19 != v20);
      v23 = aBlock[0];
    }

    else
    {

      v23 = _swiftEmptyArrayStorage;
    }

    swift_getKeyPath();
    swift_getKeyPath();
    aBlock[0] = v23;
    v24 = v38;
    static Published.subscript.setter();
    v25 = objc_allocWithZone(type metadata accessor for DownhillRunsStatsBridge());
    v26 = sub_1002DCC50(a1);
    v27 = *&v26[OBJC_IVAR___CHWorkoutDownhillRunsStats_downhillRunsStats];
    swift_retain_n();

    type metadata accessor for WorkoutDurationMetrics();
    swift_allocObject();
    v38 = v27;
    v28 = sub_1003D1958();
    swift_getKeyPath();
    swift_getKeyPath();
    v29 = static Published.subscript.modify();
    if (*v30 >> 62 && _CocoaArrayWrapper.endIndex.getter() < 0)
    {
      __break(1u);
      goto LABEL_21;
    }

    sub_1003E2EF8(0, 0, v28);
    v29(aBlock, 0);

    sub_1000059F8(0, &qword_1008E3FD0);
    v31 = static OS_dispatch_queue.main.getter();
    v32 = swift_allocObject();
    *(v32 + 16) = v24;
    aBlock[4] = sub_1002475EC;
    aBlock[5] = v32;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000449A8;
    aBlock[3] = &unk_10084DB88;
    v33 = _Block_copy(aBlock);
    v34 = v24;

    static DispatchQoS.unspecified.getter();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_1002475F4(&qword_1008E33B0, &type metadata accessor for DispatchWorkItemFlags);
    sub_100140278(&unk_1008E7F50);
    sub_10002621C();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v33);

    (*(v36 + 8))(v9, v6);
    (*(v35 + 8))(v14, v37);
  }
}

uint64_t sub_100245A2C()
{
  sub_100245D5C();
  type metadata accessor for WorkoutDetailDownhillRunDataSource();
  sub_1002475F4(&qword_1008E32E8, type metadata accessor for WorkoutDetailDownhillRunDataSource);
  ObservableObject<>.objectWillChange.getter();
  ObservableObjectPublisher.send()();
}

uint64_t sub_100245AB8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {
    type metadata accessor for DownhillRunBridge();
    v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v6 = a3;
  v5(v4, a3);
}

unint64_t sub_100245B4C(unint64_t result)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  v2 = *(v1 + OBJC_IVAR___CHWorkoutDetailDownhillRunDataSource_columns);
  if (*(v2 + 16) <= result)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  v3 = *(v2 + result + 32);
  v4 = OBJC_IVAR___CHWorkoutDetailDownhillRunDataSource_columnSizes;
  result = swift_beginAccess();
  if (*(*(v1 + v4) + 16))
  {

    sub_1004C5C04(v3);
    if (v5)
    {
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_100245C14(uint64_t result)
{
  v2 = result;
  if (*(v1 + OBJC_IVAR___CHWorkoutDetailDownhillRunDataSource_hasAggregateRow) == 1)
  {
    if (!result)
    {
      v3 = [objc_opt_self() mainBundle];
      v4 = String._bridgeToObjectiveC()();
      v5 = [v3 localizedStringForKey:v4 value:0 table:0];

      v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
LABEL_6:

      return v6;
    }

LABEL_5:
    v7 = objc_opt_self();
    v8 = [objc_allocWithZone(NSNumber) initWithInteger:v2];
    v5 = [v7 localizedStringFromNumber:v8 numberStyle:0];

    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    goto LABEL_6;
  }

  v2 = result + 1;
  if (!__OFADD__(result, 1))
  {
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

uint64_t sub_100245D5C()
{
  v1 = v0;
  v106 = type metadata accessor for AttributedString();
  v2 = *(v106 - 8);
  __chkstk_darwin(v106);
  v105 = &v94 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v109 = &v94 - v5;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v94 = v119;
  if (v119 >> 62)
  {
    goto LABEL_88;
  }

  v6 = *((v119 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v99 = OBJC_IVAR___CHWorkoutDetailDownhillRunDataSource_defaultColumns;
  v107 = OBJC_IVAR___CHWorkoutDetailDownhillRunDataSource_formattingManager;
  v7 = OBJC_IVAR___CHWorkoutDetailDownhillRunDataSource_columnSizes;
  if (v6)
  {
    v8 = 0;
    v104 = OBJC_IVAR___CHWorkoutDetailDownhillRunDataSource_workout;
    v112 = OBJC_IVAR___CHWorkoutDetailDownhillRunDataSource_hasAggregateRow;
    v98 = v94 & 0xC000000000000001;
    v97 = v94 & 0xFFFFFFFFFFFFFF8;
    v96 = v94 + 32;
    v108 = 0x8000000100746F70;
    v103 = (v2 + 2);
    v102 = (v2 + 1);
    v100 = "v52@0:8@16q24@32B40@44";
    v111 = NSFontAttributeName;
    v110 = xmmword_1006D46C0;
    v95 = v6;
    while (1)
    {
      if (v98)
      {
        v2 = v8;
        v113 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v8 >= *(v97 + 16))
        {
          goto LABEL_85;
        }

        v2 = v8;
        v113 = *(v96 + 8 * v8);
      }

      v101 = v2 + 1;
      if (__OFADD__(v2, 1))
      {
        goto LABEL_84;
      }

      v114 = v2;
      v9 = *(v1 + v99);
      v116 = *(v9 + 16);
      if (v116)
      {
        break;
      }

LABEL_5:

      v8 = v101;
      if (v101 == v95)
      {
        goto LABEL_46;
      }
    }

    v115 = (v9 + 32);
    swift_beginAccess();
    v10 = 0;
    while (1)
    {
      if (v10 >= *(v9 + 16))
      {
        __break(1u);
LABEL_81:
        __break(1u);
LABEL_82:
        __break(1u);
LABEL_83:
        __break(1u);
LABEL_84:
        __break(1u);
LABEL_85:
        __break(1u);
LABEL_86:
        __break(1u);
LABEL_87:
        __break(1u);
LABEL_88:
        v6 = _CocoaArrayWrapper.endIndex.getter();
        goto LABEL_3;
      }

      v11 = v10[v115];
      if (v10[v115])
      {
        v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v12 & 1) == 0)
        {
          v16 = v109;
          sub_10020A5C0(v113, *(v1 + v104), 0, *(v1 + v107), v11, v109);
          sub_1000059F8(0, &qword_1008DD230);
          v17 = v106;
          (*v103)(v105, v16, v106);
          v18 = NSAttributedString.init(_:)();
          (*v102)(v16, v17);
          goto LABEL_29;
        }
      }

      else
      {
      }

      if (*(v1 + v112) != 1 || v114)
      {
        if (*(v1 + v112))
        {
          v19 = v114;
        }

        else
        {
          v19 = v101;
        }

        v20 = objc_opt_self();
        v21 = [objc_allocWithZone(NSNumber) initWithInteger:v19];
        v15 = [v20 localizedStringFromNumber:v21 numberStyle:0];

        static String._unconditionallyBridgeFromObjectiveC(_:)();
      }

      else
      {
        v13 = [objc_opt_self() mainBundle];
        v14 = String._bridgeToObjectiveC()();
        v15 = [v13 localizedStringForKey:v14 value:0 table:0];

        static String._unconditionallyBridgeFromObjectiveC(_:)();
      }

      sub_100140278(&unk_1008E7FB0);
      inited = swift_initStackObject();
      *(inited + 16) = v110;
      v23 = v111;
      *(inited + 32) = v111;
      v24 = qword_1008DA660;
      v25 = v23;
      if (v24 != -1)
      {
        swift_once();
      }

      v26 = qword_100925298;
      *(inited + 64) = sub_1000059F8(0, &qword_1008F73C0);
      *(inited + 40) = v26;
      v27 = v26;
      sub_1004C9200(inited);
      swift_setDeallocating();
      sub_100198304(inited + 32);
      v28 = objc_allocWithZone(NSMutableAttributedString);
      v29 = String._bridgeToObjectiveC()();

      type metadata accessor for Key(0);
      sub_1002475F4(&qword_1008E7FD0, type metadata accessor for Key);
      isa = Dictionary._bridgeToObjectiveC()().super.isa;

      v18 = [v28 initWithString:v29 attributes:isa];

LABEL_29:
      v31 = v18;
      [v31 boundingRectWithSize:1 options:0 context:{1.79769313e308, 1.79769313e308}];
      v33 = v32;
      v35 = v34;
      v37 = v36;
      v39 = v38;

      v120.origin.x = v33;
      v120.origin.y = v35;
      v120.size.width = v37;
      v120.size.height = v39;
      v40 = ceil(CGRectGetWidth(v120));
      v2 = *(v1 + v7);
      if (v2[2])
      {

        v41 = sub_1004C5C04(v11);
        if (v42)
        {
          v43 = *(v2[7] + 8 * v41);

          if (v43 >= v40)
          {
            goto LABEL_14;
          }

          goto LABEL_35;
        }
      }

      if (v40 <= 0.0)
      {
        goto LABEL_14;
      }

LABEL_35:
      swift_beginAccess();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v118 = *(v1 + v7);
      v2 = v118;
      *(v1 + v7) = 0x8000000000000000;
      v46 = sub_1004C5C04(v11);
      v47 = v2[2];
      v48 = (v45 & 1) == 0;
      v49 = v47 + v48;
      if (__OFADD__(v47, v48))
      {
        goto LABEL_81;
      }

      v50 = v45;
      if (v2[3] >= v49)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v2 = &v118;
          sub_100493170();
        }
      }

      else
      {
        sub_10048964C(v49, isUniquelyReferenced_nonNull_native);
        v2 = v118;
        v51 = sub_1004C5C04(v11);
        if ((v50 & 1) != (v52 & 1))
        {
LABEL_89:
          result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
          __break(1u);
          return result;
        }

        v46 = v51;
      }

      v53 = v118;
      if (v50)
      {
        *(v118[7] + 8 * v46) = v40;
      }

      else
      {
        v118[(v46 >> 6) + 8] |= 1 << v46;
        *(v53[6] + v46) = v11;
        *(v53[7] + 8 * v46) = v40;
        v54 = v53[2];
        v55 = __OFADD__(v54, 1);
        v56 = v54 + 1;
        if (v55)
        {
          goto LABEL_82;
        }

        v53[2] = v56;
      }

      *(v1 + v7) = v53;
      swift_endAccess();
LABEL_14:
      ++v10;

      if (v116 == v10)
      {
        goto LABEL_5;
      }
    }
  }

LABEL_46:

  v57 = *(v1 + v99);
  v58 = *(v57 + 16);
  if (v58)
  {
    v59 = (v57 + 32);
    swift_beginAccess();
    v60 = _swiftEmptyArrayStorage;
    do
    {
      v64 = *v59++;
      v63 = v64;
      if (*(*(v1 + v7) + 16))
      {

        sub_1004C5C04(v63);
        v66 = v65;

        if (v66)
        {
          v67 = swift_isUniquelyReferenced_nonNull_native();
          v118 = v60;
          if ((v67 & 1) == 0)
          {
            sub_100185F28(0, v60[2] + 1, 1);
            v60 = v118;
          }

          v62 = v60[2];
          v61 = v60[3];
          if (v62 >= v61 >> 1)
          {
            sub_100185F28((v61 > 1), v62 + 1, 1);
            v60 = v118;
          }

          v60[2] = v62 + 1;
          *(v60 + v62 + 32) = v63;
        }
      }

      --v58;
    }

    while (v58);
  }

  else
  {
    v60 = _swiftEmptyArrayStorage;
  }

  v2 = OBJC_IVAR___CHWorkoutDetailDownhillRunDataSource_columns;
  *(v1 + OBJC_IVAR___CHWorkoutDetailDownhillRunDataSource_columns) = v60;

  v69 = *(v2 + v1);
  v70 = *(v69 + 16);
  if (v70)
  {
    v71 = sub_1000059F8(0, &qword_1008DD230);
    v72 = *(v1 + v107);

    swift_beginAccess();
    v73 = 0;
    v115 = v72;
    while (1)
    {
      if (v73 >= *(v69 + 16))
      {
        goto LABEL_83;
      }

      v74 = *(v69 + v73 + 32);
      sub_100209CE0(v72, *(v69 + v73 + 32));
      v116 = NSAttributedString.init(_:)();
      [v116 boundingRectWithSize:1 options:0 context:{1.79769313e308, 1.79769313e308}];
      v75 = ceil(CGRectGetWidth(v121));
      v2 = *(v1 + v7);
      if (v2[2])
      {

        v76 = sub_1004C5C04(v74);
        if (v77)
        {
          v78 = *(v2[7] + 8 * v76);

          if (v78 < v75)
          {
            goto LABEL_69;
          }

          goto LABEL_61;
        }
      }

      if (v75 > 0.0)
      {
LABEL_69:
        v79 = v69;
        v80 = v71;
        v81 = v70;
        swift_beginAccess();
        v82 = swift_isUniquelyReferenced_nonNull_native();
        v117 = *(v1 + v7);
        v2 = v117;
        *(v1 + v7) = 0x8000000000000000;
        v83 = sub_1004C5C04(v74);
        v85 = v2[2];
        v86 = (v84 & 1) == 0;
        v55 = __OFADD__(v85, v86);
        v87 = v85 + v86;
        if (v55)
        {
          goto LABEL_86;
        }

        v88 = v84;
        if (v2[3] >= v87)
        {
          if ((v82 & 1) == 0)
          {
            v2 = &v117;
            v93 = v83;
            sub_100493170();
            v83 = v93;
          }
        }

        else
        {
          sub_10048964C(v87, v82);
          v2 = v117;
          v83 = sub_1004C5C04(v74);
          if ((v88 & 1) != (v89 & 1))
          {
            goto LABEL_89;
          }
        }

        v90 = v117;
        if (v88)
        {
          *(v117[7] + 8 * v83) = v75;
        }

        else
        {
          v117[(v83 >> 6) + 8] |= 1 << v83;
          *(v90[6] + v83) = v74;
          *(v90[7] + 8 * v83) = v75;
          v91 = v90[2];
          v55 = __OFADD__(v91, 1);
          v92 = v91 + 1;
          if (v55)
          {
            goto LABEL_87;
          }

          v90[2] = v92;
        }

        *(v1 + v7) = v90;
        swift_endAccess();
        v70 = v81;
        v71 = v80;
        v69 = v79;
        v72 = v115;
      }

LABEL_61:
      ++v73;

      if (v70 == v73)
      {
      }
    }
  }

  return result;
}

id sub_100246B20()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WorkoutDetailDownhillRunDataSource();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for WorkoutDetailDownhillRunDataSource()
{
  result = qword_1008E32C8;
  if (!qword_1008E32C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100246C84()
{
  sub_100246D44();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_100246D44()
{
  if (!qword_1008E32D8)
  {
    sub_100141EEC(&qword_1008E32E0);
    v0 = type metadata accessor for Published();
    if (!v1)
    {
      atomic_store(v0, &qword_1008E32D8);
    }
  }
}

uint64_t sub_100246DBC()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v2 >> 62)
  {
    v0 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v0 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return v0;
}

void sub_100246E6C(unint64_t a1)
{
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v2 = *(v1 + OBJC_IVAR___CHWorkoutDetailDownhillRunDataSource_columns);
    if (*(v2 + 16) > a1)
    {
      sub_100209CE0(*(v1 + OBJC_IVAR___CHWorkoutDetailDownhillRunDataSource_formattingManager), *(v2 + a1 + 32));
      return;
    }
  }

  __break(1u);
}

uint64_t sub_100246EC0@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for WorkoutDetailDownhillRunDataSource();
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t sub_100246F00(uint64_t a1)
{
  result = sub_1002475F4(&qword_1008E32E8, type metadata accessor for WorkoutDetailDownhillRunDataSource);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_100246F58@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a1 = v3;
  return result;
}

uint64_t sub_100246FD8(uint64_t a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  v3 = v2;
  return static Published.subscript.setter();
}

uint64_t sub_100247050(unint64_t a1, unint64_t a2)
{
  v5 = type metadata accessor for AttributedString();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v62 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v62 - v10;
  v12 = type metadata accessor for DynamicTypeSize();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v68 = &v62 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100140278(&qword_1008DDBE0);
  v17 = __chkstk_darwin(v15);
  v19 = &v62 - v18;
  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_17;
  }

  v20 = *(v2 + OBJC_IVAR___CHWorkoutDetailDownhillRunDataSource_columns);
  if (*(v20 + 16) <= a2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v64 = v19;
  v65 = v13;
  v66 = v12;
  v67 = v16;
  LOBYTE(a2) = *(v20 + a2 + 32);
  if (sub_10020ECB8(a2, v17) == 0x72656B72616DLL && v21 == 0xE600000000000000)
  {

    goto LABEL_14;
  }

  v23 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v23)
  {
LABEL_14:
    v69 = sub_100245C14(a1);
    v70 = v41;
    sub_10000FCBC();
    v42 = Text.init<A>(_:)();
    v44 = v43;
    v46 = v45;
    static Font.body.getter();
    v47 = Text.font(_:)();
    v49 = v48;
    v51 = v50;

    sub_10004642C(v42, v44, v46 & 1);

    sub_10020A2B4(a2);
    v52 = Text.foregroundColor(_:)();
    v54 = v53;
    v56 = v55;
    v58 = v57;

    sub_10004642C(v47, v49, v51 & 1);

    v69 = v52;
    v70 = v54;
    LOBYTE(v47) = v56 & 1;
    v71 = v56 & 1;
    v72 = v58;
    v60 = v65;
    v59 = v66;
    v61 = v68;
    (*(v65 + 104))(v68, enum case for DynamicTypeSize.large(_:), v66);
    View.dynamicTypeSize(_:)();
    (*(v60 + 8))(v61, v59);
    sub_10004642C(v52, v54, v47);

    v69 = &type metadata for Text;
    v70 = &protocol witness table for Text;
    swift_getOpaqueTypeConformance2();
    return AnyView.init<A>(_:)();
  }

  v19 = v11;
  v13 = v6;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if ((v69 & 0xC000000000000001) != 0)
  {
LABEL_18:
    v25 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_12;
  }

  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((v69 & 0xFFFFFFFFFFFFFF8) + 0x10) > a1)
  {
    v25 = *(v69 + 8 * a1 + 32);

LABEL_12:
    v67 = v25;

    v26 = *(v2 + OBJC_IVAR___CHWorkoutDetailDownhillRunDataSource_workout);
    v27 = *(v2 + OBJC_IVAR___CHWorkoutDetailDownhillRunDataSource_formattingManager);
    v63 = v19;
    sub_10020A5C0(v25, v26, 0, v27, a2, v19);
    (*(v13 + 16))(v8, v19, v5);
    v28 = Text.init(_:)();
    v30 = v29;
    v32 = v31;
    v68 = v5;
    sub_10020A2B4(a2);
    v33 = Text.foregroundColor(_:)();
    v35 = v34;
    v37 = v36;
    v39 = v38;

    sub_10004642C(v28, v30, v32 & 1);

    v69 = v33;
    v70 = v35;
    v71 = v37 & 1;
    v72 = v39;
    v40 = AnyView.init<A>(_:)();

    (*(v13 + 8))(v63, v68);
    return v40;
  }

  __break(1u);
  return result;
}

uint64_t sub_1002475F4(unint64_t *a1, void (*a2)(uint64_t))
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

NSString sub_100247644()
{
  result = String._bridgeToObjectiveC()();
  qword_100925358 = result;
  return result;
}

NSString sub_10024767C()
{
  result = String._bridgeToObjectiveC()();
  qword_100925360 = result;
  return result;
}

void sub_1002477D4(void *a1, uint64_t a2, uint64_t *a3, void *a4, void *a5)
{
  v10 = *a3;
  v11 = [*(v5 + *a3) isEqualToDate:a1];
  v12 = *(v5 + v10);
  *(v5 + v10) = a1;
  v13 = a1;

  if ((v11 & 1) == 0)
  {
    v14 = [objc_opt_self() defaultCenter];
    v15 = v14;
    if (*a4 != -1)
    {
      swift_once();
      v14 = v15;
    }

    [v14 postNotificationName:*a5 object:a2];
  }
}

void sub_100247900(void *a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(id, uint64_t))
{
  v8 = a3;
  swift_unknownObjectRetain();
  v9 = a1;
  a5(v8, a4);

  swift_unknownObjectRelease();
}

char *sub_100247A98()
{
  v1 = v0;
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v24 - v7;
  v9 = OBJC_IVAR____TtC10FitnessApp17ActivityDateCache_calendar;
  if (qword_1008DA550 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Calendar();
  v11 = sub_10001AC90(v10, qword_100925018);
  (*(*(v10 - 8) + 16))(&v0[v9], v11, v10);
  v12 = objc_allocWithZone(HKDateCache);
  isa = Calendar._bridgeToObjectiveC()().super.isa;
  v14 = [v12 initWithCalendar:isa];

  *&v0[OBJC_IVAR____TtC10FitnessApp17ActivityDateCache_dateCache] = v14;
  v15 = [objc_allocWithZone(NSDate) init];
  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  Calendar.startOfDay(for:)();
  v16 = *(v3 + 8);
  v16(v5, v2);
  v17 = Date._bridgeToObjectiveC()().super.isa;
  v16(v8, v2);
  *&v1[OBJC_IVAR____TtC10FitnessApp17ActivityDateCache_currentDeviceDate] = v17;
  *&v1[OBJC_IVAR____TtC10FitnessApp17ActivityDateCache_currentSelectedDate] = v17;
  v18 = type metadata accessor for ActivityDateCache();
  v24.receiver = v1;
  v24.super_class = v18;
  v19 = v17;
  v20 = objc_msgSendSuper2(&v24, "init");
  v21 = *&v20[OBJC_IVAR____TtC10FitnessApp17ActivityDateCache_dateCache];
  v22 = v20;
  [v21 ch_addObserver:v22];

  return v22;
}

id sub_100247D40()
{
  [*&v0[OBJC_IVAR____TtC10FitnessApp17ActivityDateCache_dateCache] removeObserver:v0];
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ActivityDateCache();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for ActivityDateCache()
{
  result = qword_1008E3398;
  if (!qword_1008E3398)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100248064()
{
  result = type metadata accessor for Calendar();
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

uint64_t sub_100248104()
{
  v0 = type metadata accessor for DispatchWorkItemFlags();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = aBlock - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for DispatchQoS();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000078CC();
  v8 = static OS_dispatch_queue.main.getter();
  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_1002484E4;
  aBlock[5] = v9;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000449A8;
  aBlock[3] = &unk_10084DBD8;
  v10 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_1000261C4();
  sub_100140278(&unk_1008E7F50);
  sub_10002621C();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v10);

  (*(v1 + 8))(v3, v0);
  return (*(v5 + 8))(v7, v4);
}

void sub_10024838C()
{
  v0 = type metadata accessor for Date();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = Calendar.isDateInToday(_:)();
    (*(v1 + 8))(v3, v0);
    if ((v6 & 1) == 0)
    {
      v7 = [objc_allocWithZone(NSDate) init];
      v8 = v5;
      sub_100247764(v7, v8);
    }
  }
}

char *sub_100248500(uint64_t a1, void *a2)
{
  type metadata accessor for ActivitySharingFriendListCompetitionView();
  v3 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v4 = *&v3[OBJC_IVAR____TtC10FitnessApp40ActivitySharingFriendListCompetitionView_friend];
  *&v3[OBJC_IVAR____TtC10FitnessApp40ActivitySharingFriendListCompetitionView_friend] = a2;
  v5 = a2;

  v6 = *&v3[OBJC_IVAR____TtC10FitnessApp40ActivitySharingFriendListCompetitionView_competitionScoreView];
  v7 = [v5 currentCompetition];
  [v6 setFriend:v5 competition:v7];

  v8 = *&v3[OBJC_IVAR____TtC10FitnessApp40ActivitySharingFriendListCompetitionView_competitionStageLabel];
  v9 = [v5 as_competitionStageString];
  [v8 setText:v9];

  return v3;
}

uint64_t sub_100248628(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100248718();

  return static UIViewRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_10024868C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100248718();

  return static UIViewRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_1002486F0()
{
  sub_100248718();
  UIViewRepresentable.body.getter();
  __break(1u);
}

unint64_t sub_100248718()
{
  result = qword_1008E33D0;
  if (!qword_1008E33D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E33D0);
  }

  return result;
}

uint64_t type metadata accessor for MetricDetailChartView()
{
  result = qword_1008E3448;
  if (!qword_1008E3448)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1002487E0()
{
  type metadata accessor for MetricDetailViewModel();
  if (v0 <= 0x3F)
  {
    type metadata accessor for MetricFormattingHelper();
    if (v1 <= 0x3F)
    {
      sub_10024892C(319, &qword_1008E3458, &unk_1008EAF50, &unk_1006D4790, &type metadata accessor for Binding);
      if (v2 <= 0x3F)
      {
        sub_10024892C(319, &qword_1008E3460, &unk_1008F73A0, &unk_1006DB450, &type metadata accessor for State);
        if (v3 <= 0x3F)
        {
          sub_100248990();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_10024892C(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_100141EEC(a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_100248990()
{
  if (!qword_1008E3468)
  {
    v0 = type metadata accessor for GestureState();
    if (!v1)
    {
      atomic_store(v0, &qword_1008E3468);
    }
  }
}

uint64_t sub_1002489FC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100140278(&qword_1008E3710);
  v5 = v4 - 8;
  __chkstk_darwin(v4);
  v7 = &v16 - v6;
  sub_100251874();
  sub_10001B104(*a1, v7, &qword_1008E36A0);
  v8 = type metadata accessor for AxisGridLine();
  v9 = *(v5 + 56);
  v10 = *(v8 - 8);
  (*(v10 + 16))(&v7[v9], a1[1], v8);
  v11 = type metadata accessor for AxisTick();
  v12 = *(v5 + 72);
  v13 = a1[2];
  v14 = *(v11 - 8);
  (*(v14 + 16))(&v7[v12], v13, v11);
  sub_100015E80(v7, a2, &qword_1008E36A0);
  (*(v10 + 32))(a2 + *(v5 + 56), &v7[v9], v8);
  return (*(v14 + 32))(a2 + *(v5 + 72), &v7[v12], v11);
}

uint64_t sub_100248BC0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100140278(&qword_1008E3760);
  v5 = v4 - 8;
  __chkstk_darwin(v4);
  v7 = &v16 - v6;
  sub_100251EE4();
  sub_10001B104(*a1, v7, &qword_1008E3768);
  v8 = type metadata accessor for AxisGridLine();
  v9 = *(v5 + 56);
  v10 = *(v8 - 8);
  (*(v10 + 16))(&v7[v9], a1[1], v8);
  v11 = type metadata accessor for AxisTick();
  v12 = *(v5 + 72);
  v13 = a1[2];
  v14 = *(v11 - 8);
  (*(v14 + 16))(&v7[v12], v13, v11);
  sub_100015E80(v7, a2, &qword_1008E3768);
  (*(v10 + 32))(a2 + *(v5 + 56), &v7[v9], v8);
  return (*(v14 + 32))(a2 + *(v5 + 72), &v7[v12], v11);
}

uint64_t sub_100248D84@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100140278(&qword_1008E3788);
  v5 = v4 - 8;
  __chkstk_darwin(v4);
  v7 = &v18 - v6;
  v8 = sub_100140278(&qword_1008E3790);
  sub_10014A6B0(&qword_1008E3798, &qword_1008E3790);
  v9 = *(v8 - 8);
  (*(v9 + 16))(v7, *a1, v8);
  v10 = type metadata accessor for AxisGridLine();
  v11 = *(v5 + 56);
  v19 = v11;
  v12 = *(v10 - 8);
  (*(v12 + 16))(&v7[v11], a1[1], v10);
  v13 = type metadata accessor for AxisTick();
  v14 = *(v5 + 72);
  v15 = a1[2];
  v16 = *(v13 - 8);
  (*(v16 + 16))(&v7[v14], v15, v13);
  (*(v9 + 32))(a2, v7, v8);
  (*(v12 + 32))(a2 + *(v5 + 56), &v7[v19], v10);
  return (*(v16 + 32))(a2 + *(v5 + 72), &v7[v14], v13);
}

void sub_100248FC4(void *a1@<X0>, unsigned __int8 a2@<W2>, void *a3@<X8>)
{
  [*(a1 + *(type metadata accessor for MetricChartData() + 24)) doubleValueForUnit:*a1];
  sub_1004D41D4(a2, v5);
  *a3 = v6;
}

uint64_t sub_100249038()
{
  v0 = sub_100140278(&qword_1008DC448);
  __chkstk_darwin(v0 - 8);
  v2 = &v13 - v1;
  v3 = type metadata accessor for Font.TextStyle();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 104))(v7, enum case for Font.TextStyle.title(_:), v3, v5);
  v8 = enum case for Font.Design.rounded(_:);
  v9 = type metadata accessor for Font.Design();
  v10 = *(v9 - 8);
  (*(v10 + 104))(v2, v8, v9);
  (*(v10 + 56))(v2, 0, 1, v9);
  static Font.Weight.semibold.getter();
  v11 = static Font.system(_:design:weight:)();
  sub_10000EA04(v2, &qword_1008DC448);
  result = (*(v4 + 8))(v7, v3);
  qword_100925378 = v11;
  return result;
}

uint64_t sub_100249238@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v67 = a2;
  v3 = sub_100140278(&qword_1008DC0E0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v60 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v60 - v8;
  v66 = sub_100140278(&qword_1008E34C0);
  __chkstk_darwin(v66);
  v11 = &v60 - v10;
  v12 = sub_100140278(&qword_1008E34C8);
  __chkstk_darwin(v12);
  v68 = &v60 - v13;
  v69 = sub_100140278(&qword_1008E34D0);
  v14 = *(v69 - 8);
  __chkstk_darwin(v69);
  v16 = &v60 - v15;
  v17 = a1 + *(type metadata accessor for MetricDetailChartView() + 24);
  if (*(v17 + *(type metadata accessor for MetricDetailViewModel() + 40)) == 1)
  {
    sub_100249BC8(v16);
    (*(v14 + 16))(v68, v16, v69);
    swift_storeEnumTagMultiPayload();
    v65 = sub_100141EEC(&qword_1008E34E8);
    v64 = sub_100141EEC(&qword_1008E2900);
    v63 = sub_100141EEC(&qword_1008E34F0);
    v62 = sub_100141EEC(&qword_1008E34F8);
    v61 = sub_100141EEC(&qword_1008E3500);
    v60 = sub_100141EEC(&qword_1008E3508);
    v18 = sub_100141EEC(&qword_1008E3510);
    v19 = sub_100141EEC(&qword_1008E1D00);
    v20 = sub_100141EEC(&qword_1008E3518);
    v21 = sub_100141EEC(&unk_1008F73A0);
    v22 = sub_100141EEC(&qword_1008E3520);
    v23 = type metadata accessor for Date();
    v24 = sub_10014A6B0(&qword_1008E3528, &qword_1008E3520);
    v70 = v22;
    v71 = v23;
    v72 = v24;
    v73 = &protocol witness table for Date;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v26 = sub_100250B00();
    v70 = v20;
    v71 = v21;
    v72 = OpaqueTypeConformance2;
    v73 = v26;
    v27 = swift_getOpaqueTypeConformance2();
    v28 = sub_1002335B8();
    v70 = v18;
    v71 = v19;
    v72 = v27;
    v73 = v28;
    v29 = swift_getOpaqueTypeConformance2();
    v30 = sub_10014A6B0(&qword_1008E3538, &qword_1008E3508);
    v70 = v61;
    v71 = v60;
    v72 = v29;
    v73 = v30;
    v31 = swift_getOpaqueTypeConformance2();
    v32 = sub_100250BB4();
    v70 = v63;
    v71 = v62;
    v72 = v31;
    v73 = v32;
    v33 = swift_getOpaqueTypeConformance2();
    v34 = sub_10023353C();
    v70 = v65;
    v71 = v64;
    v72 = v33;
    v73 = v34;
    swift_getOpaqueTypeConformance2();
    sub_10014A6B0(&qword_1008E3558, &qword_1008E34C0);
    v35 = v69;
    _ConditionalContent<>.init(storage:)();
    return (*(v14 + 8))(v16, v35);
  }

  else
  {
    *v11 = static VerticalAlignment.center.getter();
    *(v11 + 1) = 0;
    v11[16] = 1;
    v37 = &v11[*(sub_100140278(&qword_1008E34D8) + 44)];
    ProgressView<>.init<>()();
    v38 = v11;
    v39 = *(v4 + 16);
    v39(v6, v9, v3);
    *v37 = 0;
    v37[8] = 1;
    v40 = sub_100140278(&qword_1008E34E0);
    v39(&v37[*(v40 + 48)], v6, v3);
    v41 = &v37[*(v40 + 64)];
    *v41 = 0;
    v41[8] = 1;
    v42 = *(v4 + 8);
    v42(v9, v3);
    v42(v6, v3);
    sub_10001B104(v38, v68, &qword_1008E34C0);
    swift_storeEnumTagMultiPayload();
    v65 = sub_100141EEC(&qword_1008E34E8);
    v64 = sub_100141EEC(&qword_1008E2900);
    v63 = sub_100141EEC(&qword_1008E34F0);
    v62 = sub_100141EEC(&qword_1008E34F8);
    v61 = sub_100141EEC(&qword_1008E3500);
    v60 = sub_100141EEC(&qword_1008E3508);
    v43 = sub_100141EEC(&qword_1008E3510);
    v44 = sub_100141EEC(&qword_1008E1D00);
    v45 = sub_100141EEC(&qword_1008E3518);
    v46 = sub_100141EEC(&unk_1008F73A0);
    v47 = sub_100141EEC(&qword_1008E3520);
    v48 = type metadata accessor for Date();
    v49 = sub_10014A6B0(&qword_1008E3528, &qword_1008E3520);
    v70 = v47;
    v71 = v48;
    v72 = v49;
    v73 = &protocol witness table for Date;
    v50 = swift_getOpaqueTypeConformance2();
    v51 = sub_100250B00();
    v70 = v45;
    v71 = v46;
    v72 = v50;
    v73 = v51;
    v52 = swift_getOpaqueTypeConformance2();
    v53 = sub_1002335B8();
    v70 = v43;
    v71 = v44;
    v72 = v52;
    v73 = v53;
    v54 = swift_getOpaqueTypeConformance2();
    v55 = sub_10014A6B0(&qword_1008E3538, &qword_1008E3508);
    v70 = v61;
    v71 = v60;
    v72 = v54;
    v73 = v55;
    v56 = swift_getOpaqueTypeConformance2();
    v57 = sub_100250BB4();
    v70 = v63;
    v71 = v62;
    v72 = v56;
    v73 = v57;
    v58 = swift_getOpaqueTypeConformance2();
    v59 = sub_10023353C();
    v70 = v65;
    v71 = v64;
    v72 = v58;
    v73 = v59;
    swift_getOpaqueTypeConformance2();
    sub_10014A6B0(&qword_1008E3558, &qword_1008E34C0);
    _ConditionalContent<>.init(storage:)();
    return sub_10000EA04(v38, &qword_1008E34C0);
  }
}

uint64_t sub_100249BC8@<X0>(uint64_t a1@<X8>)
{
  v89 = a1;
  v2 = sub_100140278(&qword_1008E1C78);
  __chkstk_darwin(v2 - 8);
  v4 = v83 - v3;
  v109 = sub_100140278(&unk_1008F73A0);
  __chkstk_darwin(v109);
  v104 = (v83 - v5);
  v6 = sub_100140278(&qword_1008E3560);
  __chkstk_darwin(v6 - 8);
  v97 = v83 - v7;
  v99 = sub_100140278(&qword_1008E3520);
  v98 = *(v99 - 8);
  __chkstk_darwin(v99);
  v96 = v83 - v8;
  v102 = sub_100140278(&qword_1008E3518);
  v100 = *(v102 - 8);
  __chkstk_darwin(v102);
  v116 = v83 - v9;
  v106 = sub_100140278(&qword_1008E3510);
  v103 = *(v106 - 8);
  __chkstk_darwin(v106);
  v101 = v83 - v10;
  v110 = sub_100140278(&qword_1008E3500);
  v107 = *(v110 - 8);
  __chkstk_darwin(v110);
  v105 = v83 - v11;
  v112 = sub_100140278(&qword_1008E34F0);
  v12 = *(v112 - 8);
  __chkstk_darwin(v112);
  v108 = v83 - v13;
  v14 = sub_100140278(&qword_1008E34E8);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v113 = v83 - v16;
  v17 = type metadata accessor for MetricDetailChartView();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = v19;
  v21 = v83 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for Calendar.Component();
  v25 = __chkstk_darwin(v22);
  v27 = v83 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = v17;
  v28 = v1 + *(v17 + 24);
  v29 = *(v28 + 32);
  v30 = *(v28 + 40);
  v114 = v4;
  v88 = v14;
  v87 = v15;
  v86 = v31;
  v85 = v24;
  v111 = v12;
  if (v30 == 1)
  {
    v32 = *(v24 + 104);
    if (v29)
    {
      v33 = &enum case for Calendar.Component.day(_:);
    }

    else
    {
      v33 = &enum case for Calendar.Component.hour(_:);
    }

    v34 = *v33;
  }

  else
  {
    v34 = enum case for Calendar.Component.month(_:);
    v32 = *(v24 + 104);
  }

  v35 = v27;
  v32(v27, v34, v23, v25);
  v36 = sub_1000625DC(v29, v30);
  v37 = _swiftEmptyArrayStorage;
  if (v36)
  {
    v37 = v36;
  }

  v115 = v37;
  v94 = type metadata accessor for MetricDetailChartView;
  v38 = v1;
  v90 = v21;
  sub_100251E7C(v1, v21, type metadata accessor for MetricDetailChartView);
  v39 = *(v18 + 80);
  v93 = v20;
  v91 = (v39 + 16) & ~v39;
  v40 = swift_allocObject();
  v92 = type metadata accessor for MetricDetailChartView;
  v41 = sub_100251E08(v21, v40 + ((v39 + 16) & ~v39), type metadata accessor for MetricDetailChartView);
  v83[1] = v83;
  __chkstk_darwin(v41);
  v83[-4] = v38;
  v83[-3] = v35;
  v84 = v35;
  v83[-2] = sub_100250C94;
  v83[-1] = v40;
  v83[0] = v40;
  sub_100140278(&qword_1008E3568);
  sub_100250D10();
  v42 = v96;
  Chart.init(content:)();
  sub_100140278(&qword_1008E33E8);
  v43 = v97;
  State.projectedValue.getter();
  v44 = type metadata accessor for Date();
  v45 = sub_10014A6B0(&qword_1008E3528, &qword_1008E3520);
  v46 = v99;
  View.chartXSelection<A>(value:)();
  sub_10000EA04(v43, &qword_1008E3560);
  (*(v98 + 8))(v42, v46);
  v95 = v38;
  v47 = v104;
  State.wrappedValue.getter();
  v48 = v90;
  sub_100251E7C(v38, v90, v94);
  v49 = v91;
  v50 = swift_allocObject();
  sub_100251E08(v48, v50 + v49, v92);
  v121 = v46;
  v122 = v44;
  v123 = v45;
  v124 = &protocol witness table for Date;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v52 = sub_100250B00();
  v53 = v101;
  v54 = v102;
  v55 = v109;
  v56 = v116;
  View.onChange<A>(of:initial:_:)();

  sub_10000EA04(v47, &unk_1008F73A0);
  (*(v100 + 8))(v56, v54);
  v120 = v115;
  v57 = type metadata accessor for ScaleType();
  v58 = *(v57 - 8);
  v59 = *(v58 + 56);
  v60 = v114;
  v116 = v57;
  v104 = v59;
  v100 = v58 + 56;
  (v59)(v114, 1, 1);
  v61 = sub_100140278(&qword_1008E1D00);
  v121 = v54;
  v122 = v55;
  v123 = OpaqueTypeConformance2;
  v124 = v52;
  v62 = swift_getOpaqueTypeConformance2();
  v63 = sub_1002335B8();
  v64 = v105;
  v65 = v106;
  View.chartXScale<A>(domain:type:)();
  sub_10000EA04(v60, &qword_1008E1C78);
  (*(v103 + 8))(v53, v65);

  v115 = v83;
  __chkstk_darwin(v66);
  v67 = v95;
  v83[-2] = v95;
  v68 = sub_100140278(&qword_1008E3508);
  v121 = v65;
  v122 = v61;
  v123 = v62;
  v124 = v63;
  v69 = swift_getOpaqueTypeConformance2();
  v70 = sub_10014A6B0(&qword_1008E3538, &qword_1008E3508);
  v71 = v108;
  v72 = v110;
  View.chartXAxis<A>(content:)();
  v73 = (*(v107 + 8))(v64, v72);
  __chkstk_darwin(v73);
  v83[-2] = v67;
  v74 = sub_100140278(&qword_1008E34F8);
  v121 = v72;
  v122 = v68;
  v123 = v69;
  v124 = v70;
  v75 = swift_getOpaqueTypeConformance2();
  v76 = sub_100250BB4();
  v78 = v112;
  v77 = v113;
  View.chartYAxis<A>(content:)();
  result = (*(v111 + 8))(v71, v78);
  v80 = *(v67 + *(v117 + 44));
  if (v80 < 0.0)
  {
    __break(1u);
  }

  else
  {
    v118 = 0;
    v119 = v80;
    v81 = v114;
    v104(v114, 1, 1, v116);
    sub_100140278(&qword_1008E2900);
    v121 = v78;
    v122 = v74;
    v123 = v75;
    v124 = v76;
    swift_getOpaqueTypeConformance2();
    sub_10023353C();
    v82 = v88;
    View.chartYScale<A>(domain:type:)();

    sub_10000EA04(v81, &qword_1008E1C78);
    (*(v87 + 8))(v77, v82);
    return (*(v85 + 8))(v84, v86);
  }

  return result;
}

uint64_t sub_10024A964(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MetricChartData();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100140278(&qword_1008E3748);
  __chkstk_darwin(v8);
  v10 = &v24 - v9;
  v11 = sub_100140278(&unk_1008EAF50);
  __chkstk_darwin(v11 - 8);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v24 - v15;
  __chkstk_darwin(v17);
  v19 = &v24 - v18;
  if (*(a2 + 1) != 1)
  {
    v22 = 0;
    return v22 & 1;
  }

  sub_100251E7C(a1, &v24 - v18, type metadata accessor for MetricChartData);
  (*(v5 + 56))(v19, 0, 1, v4);
  type metadata accessor for MetricDetailChartView();
  sub_100140278(&qword_1008DC470);
  Binding.wrappedValue.getter();
  v20 = *(v8 + 48);
  sub_10001B104(v19, v10, &unk_1008EAF50);
  sub_10001B104(v16, &v10[v20], &unk_1008EAF50);
  v21 = *(v5 + 48);
  if (v21(v10, 1, v4) == 1)
  {
    sub_10000EA04(v16, &unk_1008EAF50);
    sub_10000EA04(v19, &unk_1008EAF50);
    if (v21(&v10[v20], 1, v4) == 1)
    {
      sub_10000EA04(v10, &unk_1008EAF50);
      v22 = 1;
      return v22 & 1;
    }

LABEL_8:
    sub_10000EA04(v10, &qword_1008E3748);
    v22 = 0;
    return v22 & 1;
  }

  sub_10001B104(v10, v13, &unk_1008EAF50);
  if (v21(&v10[v20], 1, v4) == 1)
  {
    sub_10000EA04(v16, &unk_1008EAF50);
    sub_10000EA04(v19, &unk_1008EAF50);
    sub_100251C48(v13);
    goto LABEL_8;
  }

  sub_100251E08(&v10[v20], v7, type metadata accessor for MetricChartData);
  sub_1001AC3CC();
  if (static NSObject.== infix(_:_:)() & 1) != 0 && (static Date.== infix(_:_:)())
  {
    v22 = static NSObject.== infix(_:_:)();
  }

  else
  {
    v22 = 0;
  }

  sub_10000EA04(v16, &unk_1008EAF50);
  sub_10000EA04(v19, &unk_1008EAF50);
  sub_100251C48(v7);
  sub_100251C48(v13);
  sub_10000EA04(v10, &unk_1008EAF50);
  return v22 & 1;
}

uint64_t sub_10024ADA0@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X8>)
{
  v134 = a3;
  v135 = a4;
  v145 = a5;
  v144 = sub_100140278(&qword_1008E3718);
  __chkstk_darwin(v144);
  v143 = v100 - v7;
  v120 = type metadata accessor for AnnotationOverflowResolution.Boundary();
  v119 = *(v120 - 8);
  __chkstk_darwin(v120);
  v118 = v100 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for AnnotationOverflowResolution.Strategy();
  __chkstk_darwin(v9 - 8);
  v117 = v100 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v116 = v100 - v12;
  v126 = type metadata accessor for AnnotationOverflowResolution();
  v125 = *(v126 - 8);
  __chkstk_darwin(v126);
  v123 = v100 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v124 = type metadata accessor for AnnotationPosition();
  v122 = *(v124 - 8);
  __chkstk_darwin(v124);
  v121 = v100 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100140278(&qword_1008E1DE8);
  __chkstk_darwin(v15 - 8);
  v100[1] = v100 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v100[0] = v100 - v18;
  v19 = sub_100140278(&unk_1008E51A0);
  __chkstk_darwin(v19 - 8);
  v101 = v100 - v20;
  v21 = sub_100140278(&qword_1008E1DF0);
  __chkstk_darwin(v21 - 8);
  v127 = v100 - v22;
  v106 = type metadata accessor for RuleMark();
  v104 = *(v106 - 8);
  __chkstk_darwin(v106);
  v102 = v100 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = sub_100140278(&qword_1008E3618);
  v105 = *(v108 - 8);
  __chkstk_darwin(v108);
  v103 = v100 - v24;
  v112 = sub_100140278(&qword_1008E3610);
  v110 = *(v112 - 8);
  __chkstk_darwin(v112);
  v107 = v100 - v25;
  v115 = sub_100140278(&qword_1008E3600);
  v114 = *(v115 - 8);
  __chkstk_darwin(v115);
  v113 = v100 - v26;
  v27 = sub_100140278(&qword_1008E3720);
  v141 = *(v27 - 8);
  v142 = v27;
  __chkstk_darwin(v27);
  v111 = v100 - v28;
  v29 = sub_100140278(&unk_1008EAF50);
  __chkstk_darwin(v29 - 8);
  v132 = v100 - v30;
  v130 = type metadata accessor for MetricChartData();
  v131 = *(v130 - 8);
  __chkstk_darwin(v130);
  v133 = (v100 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0));
  v32 = sub_100140278(&qword_1008E35F8);
  __chkstk_darwin(v32 - 8);
  v140 = v100 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v34);
  v139 = v100 - v35;
  v36 = type metadata accessor for Calendar.Component();
  v37 = *(v36 - 8);
  v38 = *(v37 + 64);
  __chkstk_darwin(v36);
  v39 = v100 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = type metadata accessor for MetricDetailChartView();
  v129 = v40;
  v41 = *(v40 - 8);
  v42 = *(v41 + 64);
  __chkstk_darwin(v40);
  v43 = v100 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_100140278(&qword_1008E3580);
  v137 = *(v44 - 8);
  v138 = v44;
  __chkstk_darwin(v44);
  v136 = v100 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v46);
  v146 = v100 - v47;
  v147 = *&a1[*(v40 + 24) + 16];
  KeyPath = swift_getKeyPath();
  sub_100251E7C(a1, v43, type metadata accessor for MetricDetailChartView);
  v48 = *(v37 + 16);
  v109 = a2;
  v49 = a2;
  v50 = v36;
  v48(v39, v49, v36);
  v51 = (*(v41 + 80) + 16) & ~*(v41 + 80);
  v52 = (v42 + *(v37 + 80) + v51) & ~*(v37 + 80);
  v53 = (v38 + v52 + 7) & 0xFFFFFFFFFFFFFFF8;
  v54 = swift_allocObject();
  sub_100251E08(v43, v54 + v51, type metadata accessor for MetricDetailChartView);
  (*(v37 + 32))(v54 + v52, v39, v50);
  v55 = (v54 + v53);
  v56 = v135;
  *v55 = v134;
  v55[1] = v56;

  sub_100140278(&qword_1008E29B8);
  sub_100140278(&qword_1008E3590);
  sub_10014A6B0(&qword_1008E29C0, &qword_1008E29B8);
  sub_100251DB8(&qword_1008DEF18, &type metadata accessor for Date);
  sub_100250E28();
  v57 = v130;
  v58 = v129;
  ForEach<>.init(_:id:content:)();
  sub_100140278(&qword_1008DC470);
  v59 = v132;
  Binding.wrappedValue.getter();
  if ((*(v131 + 48))(v59, 1, v57) == 1)
  {
    sub_10000EA04(v59, &unk_1008EAF50);
    v60 = v139;
    (*(v141 + 56))(v139, 1, 1, v142);
  }

  else
  {
    v61 = v133;
    sub_100251E08(v59, v133, type metadata accessor for MetricChartData);
    v62 = *a1;
    if (v62 <= 0x11 && ((1 << v62) & 0x21D00) != 0)
    {
      LocalizedStringKey.init(stringLiteral:)();
      v63 = type metadata accessor for Calendar();
      v64 = v101;
      (*(*(v63 - 8) + 56))(v101, 1, 1, v63);
      static PlottableValue.value<>(_:_:unit:calendar:)();

      sub_10000EA04(v64, &unk_1008E51A0);
      type metadata accessor for Date();
      v65 = v102;
      RuleMark.init<A>(x:yStart:yEnd:)();
    }

    else
    {
      v96 = *&a1[*(v58 + 44)];
      LocalizedStringKey.init(stringLiteral:)();
      v97 = type metadata accessor for Calendar();
      v98 = v101;
      (*(*(v97 - 8) + 56))(v101, 1, 1, v97);
      static PlottableValue.value<>(_:_:unit:calendar:)();

      sub_10000EA04(v98, &unk_1008E51A0);
      LocalizedStringKey.init(stringLiteral:)();
      [*(v61 + *(v57 + 24)) doubleValueForUnit:*v61];
      v147 = v99;
      static PlottableValue.value(_:_:)();

      LocalizedStringKey.init(stringLiteral:)();
      v147 = v96;
      static PlottableValue.value(_:_:)();

      type metadata accessor for Date();
      v65 = v102;
      RuleMark.init<A, B>(x:yStart:yEnd:)();
    }

    v66 = v108;
    v67 = v106;
    v68 = v105;
    v69 = v104;
    v70 = v103;
    ChartContent.zIndex(_:)();
    (*(v69 + 8))(v65, v67);
    v147 = v67;
    v148 = &protocol witness table for RuleMark;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v72 = v107;
    ChartContent.offset(x:yStart:yEnd:)();
    (*(v68 + 8))(v70, v66);
    sub_10005C1A0(v62);
    v151 = Color.init(uiColor:)();
    v147 = v66;
    v148 = OpaqueTypeConformance2;
    v73 = swift_getOpaqueTypeConformance2();
    v74 = v113;
    v75 = v112;
    ChartContent.foregroundStyle<A>(_:)();

    (*(v110 + 8))(v72, v75);
    v76 = v121;
    static AnnotationPosition.top.getter();
    v77 = v118;
    static AnnotationOverflowResolution.Boundary.chart.getter();
    static AnnotationOverflowResolution.Strategy.fit(to:)();
    (*(v119 + 8))(v77, v120);
    static AnnotationOverflowResolution.Strategy.disabled.getter();
    v78 = v123;
    v79 = AnnotationOverflowResolution.init(x:y:)();
    v135 = v100;
    __chkstk_darwin(v79);
    v80 = v133;
    static Alignment.center.getter();
    sub_100140278(&qword_1008E3608);
    v147 = v75;
    v148 = &type metadata for Color;
    v149 = v73;
    v150 = &protocol witness table for Color;
    swift_getOpaqueTypeConformance2();
    sub_100251330();
    v81 = v115;
    v82 = v111;
    ChartContent.annotation<A>(position:alignment:spacing:overflowResolution:content:)();
    (*(v125 + 8))(v78, v126);
    (*(v122 + 8))(v76, v124);
    (*(v114 + 8))(v74, v81);
    v84 = v141;
    v83 = v142;
    v60 = v139;
    (*(v141 + 32))(v139, v82, v142);
    (*(v84 + 56))(v60, 0, 1, v83);
    sub_100251C48(v80);
  }

  v85 = v144;
  v86 = v145;
  v88 = v136;
  v87 = v137;
  v89 = *(v137 + 16);
  v90 = v138;
  v89(v136, v146, v138);
  v91 = v140;
  sub_10008A7DC(v60, v140);
  sub_100250DA4();
  v92 = v143;
  v89(v143, v88, v90);
  sub_100251180();
  v93 = *(v85 + 48);
  sub_10008A7DC(v91, &v92[v93]);
  (*(v87 + 32))(v86, v92, v90);
  sub_100015E80(&v92[v93], v86 + *(v85 + 48), &qword_1008E35F8);
  sub_10008A84C(v60);
  v94 = *(v87 + 8);
  v94(v146, v90);
  sub_10008A84C(v91);
  return (v94)(v88, v90);
}

uint64_t sub_10024C180@<X0>(void *a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(void *)@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v132 = a5;
  v133 = a4;
  v130 = a3;
  v135 = a2;
  v138 = a6;
  v112 = type metadata accessor for BarMark();
  v108 = *(v112 - 8);
  __chkstk_darwin(v112);
  v107 = &v98 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v136 = sub_100140278(&qword_1008E35E8);
  v114 = *(v136 - 8);
  __chkstk_darwin(v136);
  v109 = &v98 - v8;
  v113 = sub_100140278(&qword_1008E3728);
  v111 = *(v113 - 8);
  __chkstk_darwin(v113);
  v110 = &v98 - v9;
  v10 = type metadata accessor for AttributedString();
  __chkstk_darwin(v10 - 8);
  v134 = &v98 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100140278(&unk_1008EAF50);
  __chkstk_darwin(v12 - 8);
  v106 = &v98 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v124 = &v98 - v15;
  v16 = sub_100140278(&qword_1008E3730);
  __chkstk_darwin(v16 - 8);
  v120 = &v98 - v17;
  v18 = sub_100140278(&qword_1008E1DE8);
  __chkstk_darwin(v18 - 8);
  v131 = &v98 - v19;
  v20 = sub_100140278(&unk_1008E51A0);
  __chkstk_darwin(v20 - 8);
  v128 = &v98 - v21;
  v22 = sub_100140278(&qword_1008E1DF0);
  __chkstk_darwin(v22 - 8);
  v129 = &v98 - v23;
  v121 = type metadata accessor for LineMark();
  v119 = *(v121 - 8);
  __chkstk_darwin(v121);
  v118 = &v98 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v126 = sub_100140278(&qword_1008E35B0);
  v123 = *(v126 - 8);
  __chkstk_darwin(v126);
  v122 = &v98 - v25;
  v26 = sub_100140278(&qword_1008E35A8);
  v127 = *(v26 - 8);
  __chkstk_darwin(v26);
  v28 = &v98 - v27;
  v29 = sub_100140278(&qword_1008E3738);
  v125 = *(v29 - 8);
  __chkstk_darwin(v29);
  v31 = &v98 - v30;
  v32 = sub_100140278(&qword_1008E35A0);
  v137 = *(v32 - 8);
  __chkstk_darwin(v32);
  v34 = &v98 - v33;
  v35 = type metadata accessor for MetricChartData();
  v36 = *(a1 + *(v35 + 24));
  v37 = *a1;
  [v36 doubleValueForUnit:*a1];
  if (v38 == 0.0)
  {
    v39 = v138;
    v40 = *(v137 + 56);

    return v40(v39, 1, 1, v32);
  }

  else
  {
    v103 = v37;
    v116 = v35;
    v99 = v31;
    v100 = v29;
    v101 = v28;
    v102 = v26;
    v117 = v36;
    v115 = a1;
    v104 = v34;
    v105 = v32;
    v42 = *v135;
    if (v42 <= 0x11 && ((1 << v42) & 0x21D00) != 0)
    {
      LocalizedStringKey.init(stringLiteral:)();
      LODWORD(v136) = v42;
      v43 = type metadata accessor for Calendar();
      v44 = v128;
      (*(*(v43 - 8) + 56))(v128, 1, 1, v43);
      static PlottableValue.value<>(_:_:unit:calendar:)();

      sub_10000EA04(v44, &unk_1008E51A0);
      v141 = sub_100081E1C(v136);
      v142 = v45;
      [v117 doubleValueForUnit:v103];
      v47 = v46;
      v128 = type metadata accessor for MetricDetailChartView();
      v130 = *(v128 + 7);
      sub_1004D41D4(v136, v47);
      v139 = v48;
      sub_10000FCBC();
      static PlottableValue.value<A>(_:_:)();

      v141 = sub_100081E1C(v136);
      v142 = v49;
      v139 = 0x65756C6176;
      v140 = 0xE500000000000000;
      static PlottableValue.value<A>(_:_:)();

      type metadata accessor for Date();
      v50 = v118;
      v51 = LineMark.init<A, B, C>(x:y:series:)();
      __chkstk_darwin(v51);
      v52 = v133;
      v53 = v115;
      v131 = sub_100140278(&qword_1008E35C0);
      v129 = sub_1002510C8();
      v54 = v122;
      v55 = v121;
      ChartContent.symbol<A>(symbol:)();
      (*(v119 + 8))(v50, v55);
      v56 = v52(v53);
      sub_10005C1A0(v136);
      Color.init(uiColor:)();
      v57 = Color.gradient.getter();

      sub_100140278(&qword_1008DC470);
      v58 = v124;
      Binding.wrappedValue.getter();
      v59 = (*(*(v116 - 8) + 48))(v58, 1) == 1;
      sub_10000EA04(v58, &unk_1008EAF50);
      v60 = 0.4;
      if ((v59 | v56))
      {
        v60 = 1.0;
      }

      v139 = v57;
      *&v140 = v60;
      v61 = sub_100140278(&qword_1008E35B8);
      v141 = v55;
      v142 = v131;
      v143 = &protocol witness table for LineMark;
      v144 = v129;
      OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
      v63 = sub_10014A6B0(&qword_1008E35E0, &qword_1008E35B8);
      v64 = v101;
      v65 = v126;
      ChartContent.foregroundStyle<A>(_:)();

      (*(v123 + 8))(v54, v65);
      if (qword_1008DA700 != -1)
      {
        swift_once();
      }

      sub_10005C9EC(v117, v136, qword_100925378, 0, 0, 0, 0, v134);
      v66 = Text.init(_:)();
      v68 = v67;
      v70 = v69;
      v141 = v65;
      v142 = v61;
      v143 = OpaqueTypeConformance2;
      v144 = v63;
      swift_getOpaqueTypeConformance2();
      v71 = v99;
      v72 = v102;
      ChartContent.accessibilityValue(_:)();
      sub_10004642C(v66, v68, v70 & 1);

      (*(v127 + 8))(v64, v72);
      v73 = v104;
      (*(v125 + 32))(v104, v71, v100);
    }

    else
    {
      LocalizedStringKey.init(stringLiteral:)();
      v75 = type metadata accessor for Calendar();
      v76 = v128;
      (*(*(v75 - 8) + 56))(v128, 1, 1, v75);
      v77 = v115;
      static PlottableValue.value<>(_:_:unit:calendar:)();

      sub_10000EA04(v76, &unk_1008E51A0);
      v141 = sub_100081E1C(v42);
      v142 = v78;
      [v117 doubleValueForUnit:v103];
      v80 = v79;
      v130 = *(type metadata accessor for MetricDetailChartView() + 28);
      sub_1004D41D4(v42, v80);
      v139 = v81;
      sub_10000FCBC();
      static PlottableValue.value<A>(_:_:)();

      type metadata accessor for Date();
      v82 = v107;
      BarMark.init<A, B>(x:y:width:height:stacking:)();
      LOBYTE(v77) = v133(v77);
      sub_10005C1A0(v42);
      Color.init(uiColor:)();
      v83 = Color.gradient.getter();

      sub_100140278(&qword_1008DC470);
      v84 = v106;
      Binding.wrappedValue.getter();
      v85 = (*(*(v116 - 8) + 48))(v84, 1) == 1;
      sub_10000EA04(v84, &unk_1008EAF50);
      v86 = 0.4;
      if ((v85 | v77))
      {
        v86 = 1.0;
      }

      v141 = v83;
      *&v142 = v86;
      v87 = sub_100140278(&qword_1008E35B8);
      v88 = sub_10014A6B0(&qword_1008E35E0, &qword_1008E35B8);
      v89 = v109;
      v90 = v112;
      ChartContent.foregroundStyle<A>(_:)();

      (*(v108 + 8))(v82, v90);
      if (qword_1008DA700 != -1)
      {
        swift_once();
      }

      sub_10005C9EC(v117, v42, qword_100925378, 0, 0, 0, 0, v134);
      v91 = Text.init(_:)();
      v93 = v92;
      v95 = v94;
      v141 = v90;
      v142 = v87;
      v143 = &protocol witness table for BarMark;
      v144 = v88;
      swift_getOpaqueTypeConformance2();
      v96 = v110;
      v97 = v136;
      ChartContent.accessibilityValue(_:)();
      sub_10004642C(v91, v93, v95 & 1);

      (*(v114 + 8))(v89, v97);
      v73 = v104;
      (*(v111 + 32))(v104, v96, v113);
    }

    sub_100140278(&qword_1008E3740);
    swift_storeEnumTagMultiPayload();
    v74 = v138;
    sub_100015E80(v73, v138, &qword_1008E35A0);
    return (*(v137 + 56))(v74, 0, 1, v105);
  }
}

double sub_10024D404@<D0>(char *a1@<X0>, uint64_t (*a2)(uint64_t, __n128)@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v8 = sub_100140278(&unk_1008EAF50);
  v9 = __chkstk_darwin(v8 - 8);
  v11 = &v18[-v10 - 2];
  LOBYTE(a2) = a2(a3, v9);
  sub_10005C1A0(*a1);
  Color.init(uiColor:)();
  v12 = Color.gradient.getter();

  type metadata accessor for MetricDetailChartView();
  sub_100140278(&qword_1008DC470);
  Binding.wrappedValue.getter();
  v13 = type metadata accessor for MetricChartData();
  LOBYTE(a3) = (*(*(v13 - 8) + 48))(v11, 1, v13) == 1;
  sub_10000EA04(v11, &unk_1008EAF50);
  if ((a3 | a2))
  {
    v14 = 1.0;
  }

  else
  {
    v14 = 0.4;
  }

  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  *&v18[2] = v19;
  *&v18[18] = v20;
  *&v18[34] = v21;
  *a4 = v12;
  *(a4 + 8) = v14;
  *(a4 + 12) = 256;
  v15 = *&v18[16];
  *(a4 + 14) = *v18;
  *(a4 + 30) = v15;
  result = *&v18[32];
  *(a4 + 46) = *&v18[32];
  *(a4 + 62) = *&v18[48];
  return result;
}

uint64_t sub_10024D5E4@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v57 = a3;
  v54 = type metadata accessor for RoundedRectangle();
  __chkstk_darwin(v54);
  v51 = (&v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v56 = sub_100140278(&qword_1008E2B10);
  __chkstk_darwin(v56);
  v7 = &v49 - v6;
  v52 = sub_100140278(&qword_1008DC4A0);
  __chkstk_darwin(v52);
  v9 = &v49 - v8;
  v53 = sub_100140278(&qword_1008E3630);
  __chkstk_darwin(v53);
  v55 = &v49 - v10;
  v11 = *a1;
  v12 = &a1[*(type metadata accessor for MetricDetailChartView() + 24)];
  v13 = type metadata accessor for MetricDetailHeaderView();
  sub_10024DACC(&v9[v13[5]]);
  v14 = type metadata accessor for MetricChartData();
  v15 = *(a2 + *(v14 + 24));
  if (qword_1008DA700 != -1)
  {
    swift_once();
  }

  sub_10005C9EC(v15, v11, qword_100925378, 0, 0, 0, 0, &v9[v13[7]]);
  v16 = *(v12 + 4);
  v17 = v12[40];
  v18 = sub_1004A97E8(a2 + *(v14 + 20), v16, v17);
  v20 = v19;
  *&v59 = v16;
  BYTE8(v59) = v17;
  static Binding.constant(_:)();
  v50 = v61;
  v21 = v62;
  v22 = v63;
  v58 = 0;
  static Binding.constant(_:)();
  v49 = v59;
  v23 = v60;
  v24 = v11;
  v25 = v13[11];
  v26 = type metadata accessor for Date();
  (*(*(v26 - 8) + 56))(&v9[v25], 1, 1, v26);
  *v9 = v24;
  *&v9[v13[6]] = 0x3FE0000000000000;
  v27 = &v9[v13[8]];
  *v27 = v18;
  v27[1] = v20;
  v28 = &v9[v13[9]];
  v29 = v49;
  *v28 = v50;
  *(v28 + 2) = v21;
  v28[24] = v22;
  v30 = &v9[v13[10]];
  *v30 = v29;
  *(v30 + 2) = v23;
  v31 = static Edge.Set.all.getter();
  v32 = &v9[*(v52 + 36)];
  *v32 = v31;
  *(v32 + 8) = xmmword_1006E0770;
  *(v32 + 24) = xmmword_1006E0770;
  v32[40] = 0;
  if (static Solarium.isEnabled.getter())
  {
    v33 = 10.0;
  }

  else
  {
    v33 = 5.0;
  }

  v34 = *(v54 + 20);
  v35 = enum case for RoundedCornerStyle.continuous(_:);
  v36 = type metadata accessor for RoundedCornerStyle();
  v37 = v51;
  (*(*(v36 - 8) + 104))(v51 + v34, v35, v36);
  *v37 = v33;
  v37[1] = v33;
  sub_10005C1A0(v24);
  v38 = Color.init(uiColor:)();
  sub_100251E08(v37, v7, &type metadata accessor for RoundedRectangle);
  v39 = v56;
  *&v7[*(v56 + 52)] = v38;
  *&v7[*(v39 + 56)] = 256;
  v40 = static Alignment.center.getter();
  v42 = v41;
  v43 = v55;
  v44 = &v55[*(v53 + 36)];
  sub_100015E80(v7, v44, &qword_1008E2B10);
  v45 = (v44 + *(sub_100140278(&qword_1008E3650) + 36));
  *v45 = v40;
  v45[1] = v42;
  sub_100015E80(v9, v43, &qword_1008DC4A0);
  v46 = static Color.black.getter();
  v47 = v57;
  sub_100015E80(v43, v57, &qword_1008E3630);
  result = sub_100140278(&qword_1008E3608);
  *(v47 + *(result + 36)) = v46;
  return result;
}

uint64_t sub_10024DACC@<X0>(uint64_t a1@<X8>)
{
  v14[1] = a1;
  v2 = type metadata accessor for Font.Leading();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Font.TextStyle();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for AttributeContainer();
  __chkstk_darwin(v10 - 8);
  type metadata accessor for MetricDetailChartView();
  v15 = sub_1004D4544(*v1);
  v16 = v11;
  sub_10000FCBC();
  StringProtocol.localizedUppercase.getter();

  AttributeContainer.init()();
  AttributedString.init(_:attributes:)();
  (*(v7 + 104))(v9, enum case for Font.TextStyle.caption2(_:), v6);
  static Font.Weight.semibold.getter();
  static Font.system(_:weight:)();
  (*(v7 + 8))(v9, v6);
  (*(v3 + 104))(v5, enum case for Font.Leading.tight(_:), v2);
  v12 = Font.leading(_:)();

  (*(v3 + 8))(v5, v2);
  v15 = v12;
  sub_10005F988();
  return AttributedString.subscript.setter();
}

uint64_t sub_10024DD88()
{
  v0 = sub_100140278(&unk_1008F73A0);
  __chkstk_darwin(v0 - 8);
  v2 = &v4 - v1;
  type metadata accessor for MetricDetailChartView();
  sub_100140278(&qword_1008E33E8);
  State.wrappedValue.getter();
  sub_10024DE58(v2);
  return sub_10000EA04(v2, &unk_1008F73A0);
}

uint64_t sub_10024DE58(uint64_t a1)
{
  v3 = sub_100140278(&unk_1008EAF50);
  __chkstk_darwin(v3 - 8);
  v5 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v34 - v7;
  __chkstk_darwin(v9);
  v11 = (&v34 - v10);
  __chkstk_darwin(v12);
  v14 = &v34 - v13;
  v15 = sub_100140278(&unk_1008F73A0);
  __chkstk_darwin(v15 - 8);
  v17 = &v34 - v16;
  v18 = type metadata accessor for Date();
  __chkstk_darwin(v18);
  v20 = &v34 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = a1;
  v23 = v22;
  v25 = v24;
  sub_10001B104(v21, v17, &unk_1008F73A0);
  if ((*(v23 + 48))(v17, 1, v25) == 1)
  {
    sub_10000EA04(v17, &unk_1008F73A0);
    v26 = type metadata accessor for MetricChartData();
    (*(*(v26 - 8) + 56))(v8, 1, 1, v26);
    type metadata accessor for MetricDetailChartView();
    sub_10001B104(v8, v5, &unk_1008EAF50);
    sub_100140278(&qword_1008DC470);
    Binding.wrappedValue.setter();
    return sub_10000EA04(v8, &unk_1008EAF50);
  }

  v35 = v23;
  (*(v23 + 32))(v20, v17, v25);
  v28 = type metadata accessor for MetricDetailChartView();
  __chkstk_darwin(v28);
  *(&v34 - 2) = v1;
  *(&v34 - 1) = v20;
  v36 = v20;
  sub_100415330(sub_100251C28, v29, v14);
  sub_10001B104(v14, v11, &unk_1008EAF50);
  v30 = type metadata accessor for MetricChartData();
  v31 = *(v30 - 8);
  if ((*(v31 + 48))(v11, 1, v30) == 1)
  {
    sub_10000EA04(v11, &unk_1008EAF50);
  }

  else
  {
    [*(v11 + *(v30 + 24)) doubleValueForUnit:*v11];
    v33 = v32;
    sub_100251C48(v11);
    if (v33 != 0.0)
    {
      sub_10001B104(v14, v8, &unk_1008EAF50);
      goto LABEL_7;
    }
  }

  (*(v31 + 56))(v8, 1, 1, v30);
LABEL_7:
  sub_10001B104(v8, v5, &unk_1008EAF50);
  sub_100140278(&qword_1008DC470);
  Binding.wrappedValue.setter();
  sub_10000EA04(v8, &unk_1008EAF50);
  sub_10000EA04(v14, &unk_1008EAF50);
  return (*(v35 + 8))(v36, v25);
}

uint64_t sub_10024E344(uint64_t a1)
{
  v2 = type metadata accessor for AxisMarkPosition();
  __chkstk_darwin(v2 - 8);
  v3 = type metadata accessor for AxisMarkPreset();
  __chkstk_darwin(v3 - 8);
  v4 = type metadata accessor for MetricDetailChartView();
  v5 = v4 - 8;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v4);
  v8 = type metadata accessor for AxisMarkValues();
  __chkstk_darwin(v8 - 8);
  sub_100060F38(*(a1 + *(v5 + 32) + 32), *(a1 + *(v5 + 32) + 40));
  sub_100251E7C(a1, &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for MetricDetailChartView);
  v9 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v10 = swift_allocObject();
  sub_100251E08(&v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9, type metadata accessor for MetricDetailChartView);
  static AxisMarkPreset.automatic.getter();
  static AxisMarkPosition.automatic.getter();
  sub_100140278(&qword_1008E3688);
  sub_1002517D4();
  return AxisMarks.init(preset:position:values:content:)();
}

uint64_t sub_10024E5A8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v48[2] = a1;
  v58 = a2;
  v2 = type metadata accessor for AxisTick.Length();
  __chkstk_darwin(v2 - 8);
  v52 = v48 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = type metadata accessor for AxisTick();
  v56 = *(v57 - 8);
  __chkstk_darwin(v57);
  v55 = v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v51 = v48 - v6;
  v54 = type metadata accessor for AxisGridLine();
  v53 = *(v54 - 8);
  __chkstk_darwin(v54);
  v50 = v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v60 = v48 - v9;
  v10 = type metadata accessor for AxisValueLabelOrientation();
  __chkstk_darwin(v10 - 8);
  v11 = type metadata accessor for AxisValueLabelCollisionResolution();
  __chkstk_darwin(v11 - 8);
  v12 = sub_100140278(&qword_1008E36B0);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = v48 - v14;
  v16 = sub_100140278(&unk_1008F73A0);
  __chkstk_darwin(v16 - 8);
  v18 = v48 - v17;
  v19 = type metadata accessor for Date();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = v48 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_100140278(&qword_1008E36A0);
  __chkstk_darwin(v23 - 8);
  v49 = v48 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v59 = v48 - v26;
  AxisValue.as<A>(_:)();
  if ((*(v20 + 48))(v18, 1, v19) == 1)
  {
    sub_10000EA04(v18, &unk_1008F73A0);
    (*(v13 + 56))(v59, 1, 1, v12);
  }

  else
  {
    v27 = (*(v20 + 32))(v22, v18, v19);
    v48[1] = v48;
    __chkstk_darwin(v27);
    static AxisValueLabelCollisionResolution.automatic.getter();
    static AxisValueLabelOrientation.automatic.getter();
    v46 = sub_100140278(&qword_1008E36B8);
    v47 = sub_100251930();
    v44 = sub_100251924;
    v45 = &v42;
    v43 = 1;
    v42 = 0;
    AxisValueLabel.init(centered:anchor:multiLabelAlignment:collisionResolution:offsetsMarks:orientation:horizontalSpacing:verticalSpacing:content:)();
    v28 = v59;
    (*(v13 + 32))(v59, v15, v12);
    (*(v13 + 56))(v28, 0, 1, v12);
    (*(v20 + 8))(v22, v19);
  }

  StrokeStyle.init(lineWidth:lineCap:lineJoin:miterLimit:dash:dashPhase:)();
  v71 = v62;
  v72 = v63;
  v73 = v64;
  v29 = v60;
  AxisGridLine.init(centered:stroke:)();
  StrokeStyle.init(lineWidth:lineCap:lineJoin:miterLimit:dash:dashPhase:)();
  v68 = v65;
  v69 = v66;
  v70 = v67;
  static AxisTick.Length.automatic.getter();
  v30 = v51;
  AxisTick.init(centered:length:stroke:)();
  v31 = v59;
  v32 = v49;
  sub_10001B104(v59, v49, &qword_1008E36A0);
  v61[0] = v32;
  v33 = v53;
  v34 = v50;
  v35 = v54;
  (*(v53 + 16))(v50, v29, v54);
  v61[1] = v34;
  v36 = v56;
  v37 = v55;
  v38 = v57;
  (*(v56 + 16))(v55, v30, v57);
  v61[2] = v37;
  sub_1002489FC(v61, v58);
  v39 = *(v36 + 8);
  v39(v30, v38);
  v40 = *(v33 + 8);
  v40(v60, v35);
  sub_10000EA04(v31, &qword_1008E36A0);
  v39(v37, v38);
  v40(v34, v35);
  return sub_10000EA04(v32, &qword_1008E36A0);
}

__n128 sub_10024EDE8@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __n128 *a3@<X8>)
{
  v67 = a3;
  v5 = type metadata accessor for LocalizedStringKey.StringInterpolation();
  __chkstk_darwin(v5 - 8);
  v6 = type metadata accessor for Calendar.Component();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Calendar();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1 + *(type metadata accessor for MetricDetailChartView() + 24);
  if (*(v14 + 40) != 1)
  {
    if (qword_1008DA708 != -1)
    {
      swift_once();
    }

    v20 = qword_1008E33D8;
    isa = Date._bridgeToObjectiveC()().super.isa;
    v22 = [v20 stringFromDate:isa];

    v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v25 = v24;

    *&v72 = v23;
    *(&v72 + 1) = v25;
    sub_10000FCBC();
    v26 = Text.init<A>(_:)();
    v16 = v26;
    v17 = v27;
    *&v68 = v26;
    *(&v68 + 1) = v27;
    v18 = v28 & 1;
    v69.n128_u64[0] = v28 & 1;
    v69.n128_u64[1] = v29;
    LOBYTE(v70) = 0;
    goto LABEL_14;
  }

  v15 = *(v14 + 32);
  if (v15)
  {
    if (v15 == 1)
    {
      sub_10024F628(a2, &v72);
      v17 = *(&v72 + 1);
      v16 = v72;
      v18 = v73.n128_u8[0];
      v68 = v72;
      v69.n128_u64[0] = v73.n128_u8[0];
      v69.n128_u64[1] = v73.n128_u64[1];
      v70 = 0;
      sub_10006965C(v72, *(&v72 + 1), v73.n128_i8[0]);

      sub_100140278(&qword_1008E36F0);
      sub_100251A88(&qword_1008E36E8, &qword_1008E36F0);
      _ConditionalContent<>.init(storage:)();
      if (HIBYTE(v74))
      {
        v19 = 256;
      }

      else
      {
        v19 = 0;
      }

      v68 = v72;
      v69 = v73;
      v70 = v19 | v74;
      v71 = 1;
      goto LABEL_15;
    }

    static Calendar.current.getter();
    (*(v7 + 104))(v9, enum case for Calendar.Component.day(_:), v6);
    v30 = Calendar.component(_:from:)();
    (*(v7 + 8))(v9, v6);
    (*(v11 + 8))(v13, v10);
    LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v31._countAndFlagsBits = 0;
    v31._object = 0xE000000000000000;
    LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v31);
    *&v72 = v30;
    LocalizedStringKey.StringInterpolation.appendInterpolation<A>(_:specifier:)();
    v32._countAndFlagsBits = 0;
    v32._object = 0xE000000000000000;
    LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v32);
    LocalizedStringKey.init(stringInterpolation:)();
    v26 = Text.init(_:tableName:bundle:comment:)();
    v16 = v26;
    v17 = v27;
    *&v68 = v26;
    *(&v68 + 1) = v27;
    v18 = v33 & 1;
    v69.n128_u64[0] = v33 & 1;
    v69.n128_u64[1] = v34;
    LOBYTE(v70) = 1;
LABEL_14:
    sub_10006965C(v26, v27, v18);

    _ConditionalContent<>.init(storage:)();
    v68 = v72;
    v69 = v73;
    v70 = v74;
    v71 = 0;
LABEL_15:
    sub_100140278(&qword_1008E36D0);
    sub_100140278(&qword_1008E36E0);
    sub_100251A88(&qword_1008E36C8, &qword_1008E36D0);
    sub_1002519DC();
    _ConditionalContent<>.init(storage:)();
    sub_10004642C(v16, v17, v18);

    goto LABEL_16;
  }

  if (AxisValue.index.getter() == 4)
  {
    LOBYTE(v70) = 0;
    v68 = 0u;
    v69 = 0u;
  }

  else
  {
    if (qword_1008DA710 != -1)
    {
      swift_once();
    }

    v39 = qword_1008E33E0;
    v40 = Date._bridgeToObjectiveC()().super.isa;
    v41 = [v39 stringFromDate:v40];

    v42 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v44 = v43;

    *&v72 = v42;
    *(&v72 + 1) = v44;
    sub_10000FCBC();
    *&v68 = Text.init<A>(_:)();
    *(&v68 + 1) = v46;
    v69.n128_u64[0] = v45 & 1;
    v69.n128_u64[1] = v47;
    LOBYTE(v70) = 1;
  }

  _ConditionalContent<>.init(storage:)();
  v48 = v74;
  v68 = v72;
  v69 = v73;
  LOBYTE(v70) = v74;
  v62 = v74;
  HIBYTE(v70) = 1;
  v49 = v72;
  v65 = *(&v72 + 1);
  v66 = v72;
  v50 = v73;
  v63 = v73.n128_i64[1];
  v64 = v73.n128_u64[0];
  sub_100251AF8(v72, *(&v72 + 1), v73.n128_i8[0], v73.n128_i64[1], v74);
  sub_100251AF8(v49, *(&v49 + 1), v50.n128_i8[0], v50.n128_i64[1], v48);
  sub_100140278(&qword_1008E36F0);
  sub_100251A88(&qword_1008E36E8, &qword_1008E36F0);
  _ConditionalContent<>.init(storage:)();
  v51 = v72;
  v52 = v73;
  v53 = v74;
  v61 = HIBYTE(v74);
  if (HIBYTE(v74))
  {
    v54 = 256;
  }

  else
  {
    v54 = 0;
  }

  v68 = v72;
  v69 = v73;
  v70 = v54 | v74;
  v71 = 1;
  sub_100251B3C(v72, *(&v72 + 1), v73.n128_i8[0], v73.n128_i64[1], v74, SHIBYTE(v74));
  sub_100140278(&qword_1008E36D0);
  sub_100140278(&qword_1008E36E0);
  sub_100251A88(&qword_1008E36C8, &qword_1008E36D0);
  sub_1002519DC();
  _ConditionalContent<>.init(storage:)();
  v56 = v65;
  v55 = v66;
  v57 = v63;
  v58 = v64;
  v59 = v62;
  sub_100251B90(v66, v65, v64, v63, v62);
  sub_100251BD4(v51, *(&v51 + 1), v52.n128_i8[0], v52.n128_i64[1], v53, v61);
  sub_100251B90(v55, v56, v58, v57, v59);
LABEL_16:
  result = v73;
  v36 = v74;
  v37 = v75;
  v38 = v67;
  *v67 = v72;
  v38[1] = result;
  v38[2].n128_u16[0] = v36;
  v38[2].n128_u8[2] = v37;
  return result;
}

uint64_t sub_10024F628@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v37 = a1;
  v38 = a2;
  v2 = type metadata accessor for Date.FormatStyle.Symbol.Weekday();
  v35 = *(v2 - 8);
  v36 = v2;
  __chkstk_darwin(v2);
  v34 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for FormatStyleCapitalizationContext();
  __chkstk_darwin(v4 - 8);
  v5 = type metadata accessor for TimeZone();
  __chkstk_darwin(v5 - 8);
  v6 = type metadata accessor for Calendar();
  __chkstk_darwin(v6 - 8);
  v7 = type metadata accessor for Locale();
  __chkstk_darwin(v7 - 8);
  v8 = sub_100140278(&qword_1008E36F8);
  __chkstk_darwin(v8 - 8);
  v10 = &v33 - v9;
  v11 = sub_100140278(&qword_1008E3700);
  __chkstk_darwin(v11 - 8);
  v13 = &v33 - v12;
  v14 = type metadata accessor for Date.FormatStyle();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v33 - v19;
  v21 = type metadata accessor for Date.FormatStyle.DateStyle();
  (*(*(v21 - 8) + 56))(v13, 1, 1, v21);
  v22 = type metadata accessor for Date.FormatStyle.TimeStyle();
  (*(*(v22 - 8) + 56))(v10, 1, 1, v22);
  static Locale.autoupdatingCurrent.getter();
  static Calendar.autoupdatingCurrent.getter();
  static TimeZone.autoupdatingCurrent.getter();
  static FormatStyleCapitalizationContext.unknown.getter();
  Date.FormatStyle.init(date:time:locale:calendar:timeZone:capitalizationContext:)();
  v23 = v34;
  static Date.FormatStyle.Symbol.Weekday.abbreviated.getter();
  Date.FormatStyle.weekday(_:)();
  (*(v35 + 8))(v23, v36);
  sub_100251DB8(&qword_1008E29B0, &type metadata accessor for Date.FormatStyle);
  Date.formatted<A>(_:)();
  v24 = *(v15 + 8);
  v24(v17, v14);
  v39 = v41;
  v40 = v42;
  sub_10000FCBC();
  v25 = Text.init<A>(_:)();
  v27 = v26;
  LOBYTE(v17) = v28;
  v30 = v29;
  result = (v24)(v20, v14);
  v32 = v38;
  *v38 = v25;
  v32[1] = v27;
  *(v32 + 16) = v17 & 1;
  v32[3] = v30;
  return result;
}

uint64_t sub_10024FAD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v3 = type metadata accessor for MetricDetailChartView();
  v21 = *(v3 - 8);
  v4 = *(v21 + 64);
  __chkstk_darwin(v3);
  v5 = sub_100140278(&qword_1008E3550);
  v23 = *(v5 - 8);
  v24 = v5;
  __chkstk_darwin(v5);
  v22 = &v20 - v6;
  v7 = type metadata accessor for AxisMarkPosition();
  __chkstk_darwin(v7 - 8);
  v8 = type metadata accessor for AxisMarkPreset();
  __chkstk_darwin(v8 - 8);
  v9 = type metadata accessor for AxisMarkValues();
  __chkstk_darwin(v9 - 8);
  v10 = sub_100140278(&qword_1008E2938);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v20 - v12;
  if ((*(a1 + *(v3 + 40)) & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    sub_100140278(&qword_1008DE480);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_1006D64F0;
    *(v14 + 32) = 0;
    v15 = *(a1 + *(v3 + 44));
    *(v14 + 40) = v15 * 0.5;
    *(v14 + 48) = v15;
    sub_100251E7C(a1, &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for MetricDetailChartView);
    v16 = (*(v21 + 80) + 16) & ~*(v21 + 80);
    v17 = swift_allocObject();
    sub_100251E08(&v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v16, type metadata accessor for MetricDetailChartView);
    static AxisMarkPreset.automatic.getter();
    static AxisMarkPosition.automatic.getter();
    sub_100140278(&qword_1008E3658);
    sub_1002515E4();
    v18 = v22;
    AxisMarks.init<A>(preset:position:values:content:)();
    (*(v23 + 32))(v25, v18, v24);
  }

  else
  {
    static AxisMarkValues.automatic(desiredCount:roundLowerBound:roundUpperBound:)();
    static AxisMarkPreset.automatic.getter();
    static AxisMarkPosition.automatic.getter();
    type metadata accessor for AxisGridLine();
    AxisMarks.init(preset:position:values:content:)();
    (*(v11 + 32))(v25, v13, v10);
  }

  sub_100140278(&qword_1008E3678);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_10024FFB0@<X0>(char *a1@<X1>, uint64_t a2@<X8>)
{
  v39 = a1;
  v45 = a2;
  v38 = sub_100140278(&qword_1008E3680);
  __chkstk_darwin(v38);
  v41 = &v34 - v2;
  v3 = sub_100140278(&qword_1008E3670);
  v4 = *(v3 - 8);
  v43 = v3;
  v44 = v4;
  __chkstk_darwin(v3);
  v42 = &v34 - v5;
  v6 = type metadata accessor for AxisGridLine();
  v40 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v34 - v10;
  v12 = type metadata accessor for AxisValueLabelOrientation();
  __chkstk_darwin(v12 - 8);
  v13 = type metadata accessor for AxisValueLabelCollisionResolution();
  __chkstk_darwin(v13 - 8);
  v14 = sub_100140278(&qword_1008E1D50);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v34 - v19;
  AxisValue.as<A>(_:)();
  if (BYTE8(v46))
  {
    v21 = 1;
  }

  else
  {
    v22 = *&v46;
    type metadata accessor for MetricDetailChartView();
    *&v46 = sub_1004D47D0(*v39, v22);
    *(&v46 + 1) = v23;
    static AxisValueLabelCollisionResolution.automatic.getter();
    static AxisValueLabelOrientation.automatic.getter();
    sub_10000FCBC();
    v37 = v20;
    AxisValueLabel.init<A>(_:centered:anchor:multiLabelAlignment:collisionResolution:offsetsMarks:orientation:horizontalSpacing:verticalSpacing:)();
    v46 = 0u;
    v47 = 0u;
    v48 = 0;
    AxisGridLine.init(centered:stroke:)();
    v39 = *(v15 + 16);
    v35 = v17;
    (v39)(v17, v20, v14);
    v24 = v40;
    v25 = v8;
    v36 = v11;
    v26 = *(v40 + 16);
    v34 = v25;
    v26(v25, v11, v6);
    sub_10014A6B0(&qword_1008E1D58, &qword_1008E1D50);
    v27 = v41;
    (v39)(v41, v17, v14);
    v28 = v38;
    v29 = *(v38 + 48);
    v26(&v27[v29], v25, v6);
    v30 = v42;
    (*(v15 + 32))(v42, v27, v14);
    (*(v24 + 32))(v30 + *(v28 + 48), &v27[v29], v6);
    v31 = *(v24 + 8);
    v31(v36, v6);
    v32 = *(v15 + 8);
    v32(v37, v14);
    v31(v34, v6);
    v32(v35, v14);
    sub_100015E80(v30, v45, &qword_1008E3670);
    v21 = 0;
  }

  return (*(v44 + 56))(v45, v21, 1, v43);
}

uint64_t sub_100250534(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for DateComponents();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = v16 - v8;
  v10 = a2 + *(type metadata accessor for MetricDetailChartView() + 24);
  v11 = *(v10 + 32);
  v12 = *(v10 + 40);
  sub_1004A9C98(v11, v12, v9);
  type metadata accessor for MetricChartData();
  sub_1004A9C98(v11, v12, v6);
  v13 = static DateComponents.== infix(_:_:)();
  v14 = *(v4 + 8);
  v14(v6, v3);
  v14(v9, v3);
  return v13 & 1;
}

void sub_1002506AC()
{
  v0 = [objc_allocWithZone(NSDateFormatter) init];
  v1 = String._bridgeToObjectiveC()();
  [v0 setDateFormat:v1];

  qword_1008E33D8 = v0;
}

id sub_10025071C()
{
  result = sub_10025073C();
  qword_1008E33E0 = result;
  return result;
}

id sub_10025073C()
{
  v0 = type metadata accessor for Locale.Language();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Locale();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100140278(&qword_1008E3708);
  __chkstk_darwin(v8 - 8);
  v10 = &v19 - v9;
  v11 = [objc_allocWithZone(NSDateFormatter) init];
  static Locale.current.getter();
  Locale.language.getter();
  (*(v5 + 8))(v7, v4);
  Locale.Language.languageCode.getter();
  (*(v1 + 8))(v3, v0);
  v12 = type metadata accessor for Locale.LanguageCode();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v10, 1, v12) == 1)
  {
    sub_10000EA04(v10, &qword_1008E3708);
  }

  else
  {
    v14 = Locale.LanguageCode.identifier.getter();
    v16 = v15;
    (*(v13 + 8))(v10, v12);
    v21 = v14;
    v22 = v16;
    v19 = 26746;
    v20 = 0xE200000000000000;
    sub_10000FCBC();
    if (StringProtocol.contains<A>(_:)())
    {
    }

    else
    {
      v21 = v14;
      v22 = v16;
      v19 = 24938;
      v20 = 0xE200000000000000;
      StringProtocol.contains<A>(_:)();
    }
  }

  v17 = String._bridgeToObjectiveC()();
  [v11 setLocalizedDateFormatFromTemplate:v17];

  return v11;
}

uint64_t sub_100250A74@<X0>(uint64_t a1@<X8>)
{
  sub_100249238(v1, a1);
  Hasher.init(_seed:)();
  sub_100411FD0(v8);
  Hasher._finalize()();
  v3 = Int.entityIdentifierString.getter();
  v5 = v4;
  result = sub_100140278(&qword_1008E34B8);
  v7 = (a1 + *(result + 52));
  *v7 = v3;
  v7[1] = v5;
  return result;
}

unint64_t sub_100250B00()
{
  result = qword_1008E3530;
  if (!qword_1008E3530)
  {
    sub_100141EEC(&unk_1008F73A0);
    sub_100251DB8(&qword_1008E1D78, &type metadata accessor for Date);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E3530);
  }

  return result;
}

unint64_t sub_100250BB4()
{
  result = qword_1008E3540;
  if (!qword_1008E3540)
  {
    sub_100141EEC(&qword_1008E34F8);
    sub_10014A6B0(&qword_1008E2930, &qword_1008E2938);
    sub_10014A6B0(&qword_1008E3548, &qword_1008E3550);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E3540);
  }

  return result;
}

uint64_t sub_100250C94(uint64_t a1)
{
  v3 = *(type metadata accessor for MetricDetailChartView() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_10024A964(a1, v4);
}

unint64_t sub_100250D10()
{
  result = qword_1008E3570;
  if (!qword_1008E3570)
  {
    sub_100141EEC(&qword_1008E3568);
    sub_100250DA4();
    sub_100251180();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E3570);
  }

  return result;
}

unint64_t sub_100250DA4()
{
  result = qword_1008E3578;
  if (!qword_1008E3578)
  {
    sub_100141EEC(&qword_1008E3580);
    sub_100250E28();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E3578);
  }

  return result;
}

unint64_t sub_100250E28()
{
  result = qword_1008E3588;
  if (!qword_1008E3588)
  {
    sub_100141EEC(&qword_1008E3590);
    sub_100250EAC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E3588);
  }

  return result;
}

unint64_t sub_100250EAC()
{
  result = qword_1008E3598;
  if (!qword_1008E3598)
  {
    sub_100141EEC(&qword_1008E35A0);
    sub_100141EEC(&qword_1008E35A8);
    sub_100141EEC(&qword_1008E35B0);
    sub_100141EEC(&qword_1008E35B8);
    type metadata accessor for LineMark();
    sub_100141EEC(&qword_1008E35C0);
    sub_1002510C8();
    swift_getOpaqueTypeConformance2();
    sub_10014A6B0(&qword_1008E35E0, &qword_1008E35B8);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_100141EEC(&qword_1008E35E8);
    type metadata accessor for BarMark();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E3598);
  }

  return result;
}

unint64_t sub_1002510C8()
{
  result = qword_1008E35C8;
  if (!qword_1008E35C8)
  {
    sub_100141EEC(&qword_1008E35C0);
    sub_10014A6B0(&qword_1008E35D0, &qword_1008E35D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E35C8);
  }

  return result;
}

unint64_t sub_100251180()
{
  result = qword_1008E35F0;
  if (!qword_1008E35F0)
  {
    sub_100141EEC(&qword_1008E35F8);
    sub_100141EEC(&qword_1008E3600);
    sub_100141EEC(&qword_1008E3608);
    sub_100141EEC(&qword_1008E3610);
    sub_100141EEC(&qword_1008E3618);
    type metadata accessor for RuleMark();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_100251330();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E35F0);
  }

  return result;
}

unint64_t sub_100251330()
{
  result = qword_1008E3620;
  if (!qword_1008E3620)
  {
    sub_100141EEC(&qword_1008E3608);
    sub_1002513E8();
    sub_10014A6B0(&qword_1008E0740, &qword_1008E0748);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E3620);
  }

  return result;
}

unint64_t sub_1002513E8()
{
  result = qword_1008E3628;
  if (!qword_1008E3628)
  {
    sub_100141EEC(&qword_1008E3630);
    sub_1002514A0();
    sub_10014A6B0(&qword_1008E3648, &qword_1008E3650);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E3628);
  }

  return result;
}

unint64_t sub_1002514A0()
{
  result = qword_1008E3638;
  if (!qword_1008E3638)
  {
    sub_100141EEC(&qword_1008DC4A0);
    sub_100251DB8(&qword_1008E3640, type metadata accessor for MetricDetailHeaderView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E3638);
  }

  return result;
}

uint64_t sub_10025155C()
{
  type metadata accessor for MetricDetailChartView();

  return sub_10024DD88();
}

unint64_t sub_1002515E4()
{
  result = qword_1008E3660;
  if (!qword_1008E3660)
  {
    sub_100141EEC(&qword_1008E3658);
    sub_100251668();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E3660);
  }

  return result;
}

unint64_t sub_100251668()
{
  result = qword_1008E3668;
  if (!qword_1008E3668)
  {
    sub_100141EEC(&qword_1008E3670);
    sub_10014A6B0(&qword_1008E1D58, &qword_1008E1D50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E3668);
  }

  return result;
}

uint64_t sub_100251740(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for MetricDetailChartView() - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

unint64_t sub_1002517D4()
{
  result = qword_1008E3690;
  if (!qword_1008E3690)
  {
    sub_100141EEC(&qword_1008E3688);
    sub_100251874();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E3690);
  }

  return result;
}

unint64_t sub_100251874()
{
  result = qword_1008E3698;
  if (!qword_1008E3698)
  {
    sub_100141EEC(&qword_1008E36A0);
    sub_10014A6B0(&qword_1008E36A8, &qword_1008E36B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E3698);
  }

  return result;
}

unint64_t sub_100251930()
{
  result = qword_1008E36C0;
  if (!qword_1008E36C0)
  {
    sub_100141EEC(&qword_1008E36B8);
    sub_100251A88(&qword_1008E36C8, &qword_1008E36D0);
    sub_1002519DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E36C0);
  }

  return result;
}

unint64_t sub_1002519DC()
{
  result = qword_1008E36D8;
  if (!qword_1008E36D8)
  {
    sub_100141EEC(&qword_1008E36E0);
    sub_100251A88(&qword_1008E36E8, &qword_1008E36F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E36D8);
  }

  return result;
}

uint64_t sub_100251A88(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_100141EEC(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100251AF8(uint64_t result, uint64_t a2, char a3, uint64_t a4, char a5)
{
  if (a5)
  {
    sub_10006965C(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_100251B3C(uint64_t a1, uint64_t a2, char a3, uint64_t a4, char a5, char a6)
{
  if (a6)
  {
    v7 = a5 & 1;

    return sub_100251AF8(a1, a2, a3, a4, v7);
  }

  else
  {
    sub_10006965C(a1, a2, a3 & 1);
  }
}

uint64_t sub_100251B90(uint64_t result, uint64_t a2, char a3, uint64_t a4, char a5)
{
  if (a5)
  {
    sub_10004642C(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_100251BD4(uint64_t a1, uint64_t a2, char a3, uint64_t a4, char a5, char a6)
{
  if (a6)
  {
    v7 = a5 & 1;

    return sub_100251B90(a1, a2, a3, a4, v7);
  }

  else
  {
    sub_10004642C(a1, a2, a3 & 1);
  }
}

uint64_t sub_100251C48(uint64_t a1)
{
  v2 = type metadata accessor for MetricChartData();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100251CA4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for MetricDetailChartView() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for Calendar.Component() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = v2 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8);
  v11 = *v10;
  v12 = *(v10 + 8);

  return sub_10024C180(a1, (v2 + v6), v2 + v9, v11, v12, a2);
}

uint64_t sub_100251DB8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100251E08(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100251E7C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_100251EE4()
{
  result = qword_1008E3770;
  if (!qword_1008E3770)
  {
    sub_100141EEC(&qword_1008E3768);
    sub_10014A6B0(&qword_1008E3778, &qword_1008E3780);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E3770);
  }

  return result;
}

uint64_t type metadata accessor for CardTypeConfigurationRoomView()
{
  result = qword_1008E37F8;
  if (!qword_1008E37F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100252008()
{
  sub_10005C91C();
  if (v0 <= 0x3F)
  {
    sub_1002521D4(319, &qword_1008E3808, &type metadata accessor for Optional);
    if (v1 <= 0x3F)
    {
      sub_1002521D4(319, &unk_1008E3810, &type metadata accessor for Array);
      if (v2 <= 0x3F)
      {
        type metadata accessor for SummaryCoordinator();
        if (v3 <= 0x3F)
        {
          type metadata accessor for SummaryConfigurationProvider();
          if (v4 <= 0x3F)
          {
            type metadata accessor for DashboardCardCellViewCache();
            if (v5 <= 0x3F)
            {
              sub_100252240(319, &qword_1008DDF08, &type metadata for CGFloat, &type metadata accessor for Optional);
              if (v6 <= 0x3F)
              {
                sub_100182A34();
                if (v7 <= 0x3F)
                {
                  sub_100252240(319, &qword_1008DC320, &type metadata for Int, &type metadata accessor for State);
                  if (v8 <= 0x3F)
                  {
                    type metadata accessor for DynamicTypeSize();
                    if (v9 <= 0x3F)
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
    }
  }
}

void sub_1002521D4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = sub_100141EEC(&unk_1008EE6B0);
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_100252240(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1002522AC(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v235 = a2;
  v3 = type metadata accessor for BorderedProminentButtonStyle();
  v250 = *(v3 - 8);
  v251 = v3;
  __chkstk_darwin(v3);
  v249 = &v228 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for CardTypeConfigurationRoomView();
  v261 = *(v5 - 8);
  __chkstk_darwin(v5);
  v262 = v6;
  v263 = &v228 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100140278(&qword_1008E3880);
  v265 = *(v7 - 8);
  v266 = v7;
  __chkstk_darwin(v7);
  v264 = &v228 - v8;
  v236 = sub_100140278(&qword_1008E3888);
  __chkstk_darwin(v236);
  v10 = &v228 - v9;
  v242 = sub_100140278(&qword_1008E3890);
  v239 = *(v242 - 8);
  __chkstk_darwin(v242);
  v238 = &v228 - v11;
  v237 = sub_100140278(&qword_1008E3898);
  __chkstk_darwin(v237);
  v240 = &v228 - v12;
  v243 = sub_100140278(&qword_1008E38A0);
  __chkstk_darwin(v243);
  v244 = &v228 - v13;
  v14 = sub_100140278(&qword_1008E38A8);
  v246 = *(v14 - 8);
  v247 = v14;
  __chkstk_darwin(v14);
  v245 = &v228 - v15;
  v241 = sub_100140278(&qword_1008E38B0);
  __chkstk_darwin(v241);
  v248 = &v228 - v16;
  v232 = sub_100140278(&qword_1008E38B8);
  __chkstk_darwin(v232);
  v231 = &v228 - v17;
  v230 = sub_100140278(&qword_1008E38C0);
  __chkstk_darwin(v230);
  v19 = &v228 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v229 = &v228 - v21;
  __chkstk_darwin(v22);
  v295 = &v228 - v23;
  v24 = type metadata accessor for PageTabViewStyle.IndexDisplayMode();
  __chkstk_darwin(v24 - 8);
  v256 = &v228 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for PageTabViewStyle();
  v259 = *(v26 - 8);
  v260 = v26;
  __chkstk_darwin(v26);
  v258 = &v228 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v257 = sub_100140278(&qword_1008E38C8);
  v255 = *(v257 - 8);
  __chkstk_darwin(v257);
  v254 = &v228 - v28;
  v29 = sub_100140278(&qword_1008E38D0);
  v233 = *(v29 - 8);
  v234 = v29;
  __chkstk_darwin(v29);
  v294 = &v228 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v310 = &v228 - v32;
  v253 = sub_100140278(&qword_1008E38D8);
  __chkstk_darwin(v253);
  v293 = &v228 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v34);
  v309 = &v228 - v35;
  v36 = type metadata accessor for AccessibilityTraits();
  v286 = *(v36 - 8);
  v287 = v36;
  __chkstk_darwin(v36);
  v285 = &v228 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = type metadata accessor for Font.Leading();
  v289 = *(v38 - 8);
  v290 = v38;
  __chkstk_darwin(v38);
  v288 = &v228 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = type metadata accessor for Font.TextStyle();
  v283 = *(v40 - 8);
  v284 = v40;
  __chkstk_darwin(v40);
  v282 = &v228 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v317 = sub_100140278(&qword_1008E2B40);
  __chkstk_darwin(v317 - 8);
  v316 = &v228 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v43);
  v315 = &v228 - v44;
  v45 = type metadata accessor for DynamicTypeSize();
  v46 = *(v45 - 8);
  __chkstk_darwin(v45);
  v48 = &v228 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v49);
  v318 = &v228 - v50;
  v314 = sub_100140278(&qword_1008E2B48);
  __chkstk_darwin(v314 - 8);
  v313 = &v228 - v51;
  v52 = sub_100140278(&qword_1008E2B50);
  v274 = *(v52 - 8);
  v275 = v52;
  __chkstk_darwin(v52);
  v273 = &v228 - v53;
  v272 = sub_100140278(&qword_1008E38E0);
  __chkstk_darwin(v272);
  v277 = &v228 - v54;
  v276 = sub_100140278(&qword_1008E38E8);
  __chkstk_darwin(v276);
  v279 = &v228 - v55;
  v280 = sub_100140278(&qword_1008E38F0);
  __chkstk_darwin(v280);
  v281 = &v228 - v56;
  v57 = sub_100140278(&qword_1008E38F8);
  __chkstk_darwin(v57 - 8);
  v292 = &v228 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v59);
  v311 = &v228 - v60;
  v61 = *(v5 + 20);
  v312 = a1;
  v62 = *(a1 + v61);
  v301 = v10;
  v308 = v5;
  v278 = v62;
  if ((v62 - 5) >= 2u)
  {
    v66 = sub_1000492D8(v62);
    v68 = v69;
  }

  else
  {
    v63 = [objc_opt_self() mainBundle];
    v64 = String._bridgeToObjectiveC()();
    v65 = [v63 localizedStringForKey:v64 value:0 table:0];

    v66 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v68 = v67;
  }

  *&v324 = v66;
  *(&v324 + 1) = v68;
  v271 = sub_10000FCBC();
  v70 = Text.init<A>(_:)();
  v268 = v71;
  v269 = v70;
  *&v324 = v70;
  *(&v324 + 1) = v71;
  v267 = v72 & 1;
  LOBYTE(v325) = v72 & 1;
  v270 = v73;
  *(&v325 + 1) = v73;
  v74 = enum case for DynamicTypeSize.xSmall(_:);
  v75 = v46;
  v76 = v46 + 104;
  v77 = *(v46 + 104);
  v78 = v318;
  (v77)(v318, enum case for DynamicTypeSize.xSmall(_:), v45);
  v307 = enum case for DynamicTypeSize.xxxLarge(_:);
  v77(v48);
  v306 = sub_10005BD8C(&qword_1008DC898, &type metadata accessor for DynamicTypeSize);
  if ((dispatch thunk of static Comparable.<= infix(_:_:)() & 1) == 0)
  {
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v291 = v19;
  v303 = v74;
  v305 = v76;
  v79 = *(v75 + 32);
  v80 = v315;
  v79(v315, v78, v45);
  v81 = v317;
  v79((v80 + *(v317 + 48)), v48, v45);
  v82 = v316;
  sub_10001B104(v80, v316, &qword_1008E2B40);
  v304 = v77;
  v300 = *(v81 + 48);
  v302 = v48;
  v83 = v313;
  v79(v313, v82, v45);
  v84 = *(v75 + 8);
  v84(v82 + v300, v45);
  sub_100015E80(v80, v82, &qword_1008E2B40);
  v85 = v83 + *(v314 + 36);
  v86 = v82 + *(v81 + 48);
  v252 = v45;
  v299 = v75 + 32;
  v298 = v79;
  v79(v85, v86, v45);
  v300 = v75 + 8;
  v297 = v84;
  v84(v82, v45);
  v87 = sub_10014A6B0(&qword_1008E2B58, &qword_1008E2B48);
  v88 = v273;
  v296 = v87;
  View.dynamicTypeSize<A>(_:)();
  sub_10000EA04(v83, &qword_1008E2B48);
  sub_10004642C(v269, v268, v267);

  KeyPath = swift_getKeyPath();
  v90 = v277;
  (*(v274 + 32))(v277, v88, v275);
  v91 = &v90[*(v272 + 36)];
  *v91 = KeyPath;
  v91[8] = 1;
  v93 = v282;
  v92 = v283;
  v94 = v284;
  (*(v283 + 104))(v282, enum case for Font.TextStyle.title(_:), v284);
  static Font.Weight.bold.getter();
  static Font.system(_:weight:)();
  (*(v92 + 8))(v93, v94);
  LODWORD(v284) = enum case for Font.Leading.tight(_:);
  v96 = v288;
  v95 = v289;
  v283 = *(v289 + 104);
  v97 = v290;
  (v283)(v288);
  v98 = Font.leading(_:)();

  v289 = *(v95 + 8);
  (v289)(v96, v97);
  v99 = swift_getKeyPath();
  v100 = v90;
  v101 = v279;
  sub_100015E80(v100, v279, &qword_1008E38E0);
  v102 = (v101 + *(v276 + 36));
  *v102 = v99;
  v102[1] = v98;
  v103 = v312 + *(v308 + 48);
  if (*(v103 + 8))
  {
    v104 = 54.0;
  }

  else
  {
    v104 = *v103 * 0.09;
  }

  v105 = static Edge.Set.all.getter();
  v106 = v101;
  v107 = v281;
  sub_100015E80(v106, v281, &qword_1008E38E8);
  v108 = v107 + *(v280 + 36);
  *v108 = v105;
  *(v108 + 8) = v104;
  *(v108 + 16) = xmmword_1006E0A80;
  *(v108 + 32) = 0x404E000000000000;
  *(v108 + 40) = 0;
  v109 = v285;
  static AccessibilityTraits.isHeader.getter();
  sub_100256B08();
  View.accessibilityAddTraits(_:)();
  (*(v286 + 8))(v109, v287);
  sub_10000EA04(v107, &qword_1008E38F0);
  *&v324 = sub_100183B30(v278);
  *(&v324 + 1) = v110;
  v111 = Text.init<A>(_:)();
  v113 = v112;
  v115 = v114;
  v287 = v116;
  v117 = swift_getKeyPath();
  static Font.body.getter();
  (v283)(v96, v284, v97);
  v118 = Font.leading(_:)();

  v119 = v96;
  v120 = v252;
  (v289)(v119, v97);
  v121 = swift_getKeyPath();
  LOBYTE(v324) = v115 & 1;
  v122 = static HierarchicalShapeStyle.secondary.getter();
  *&v324 = v111;
  *(&v324 + 1) = v113;
  v123 = v318;
  LOBYTE(v325) = v115 & 1;
  *(&v325 + 1) = v287;
  *&v326 = v117;
  BYTE8(v326) = 1;
  *&v327 = v121;
  *(&v327 + 1) = v118;
  LODWORD(v328) = v122;
  v124 = v304;
  v304(v318, v303, v120);
  v125 = v302;
  v124(v302, v307, v120);
  if ((dispatch thunk of static Comparable.<= infix(_:_:)() & 1) == 0)
  {
    goto LABEL_22;
  }

  v126 = v315;
  v127 = v298;
  v298(v315, v123, v120);
  v128 = v317;
  v127(v126 + *(v317 + 48), v125, v120);
  v129 = v316;
  sub_10001B104(v126, v316, &qword_1008E2B40);
  v130 = *(v128 + 48);
  v131 = v313;
  v127(v313, v129, v120);
  v132 = v129 + v130;
  v133 = v297;
  v297(v132, v120);
  sub_100015E80(v126, v129, &qword_1008E2B40);
  v127(v131 + *(v314 + 36), (v129 + *(v128 + 48)), v120);
  v133(v129, v120);
  sub_100140278(&qword_1008E2FC8);
  sub_1002419E0();
  v134 = v309;
  View.dynamicTypeSize<A>(_:)();
  sub_10000EA04(v131, &qword_1008E2B48);
  v330[2] = v326;
  v330[3] = v327;
  v331 = v328;
  v330[0] = v324;
  v330[1] = v325;
  sub_10000EA04(v330, &qword_1008E2FC8);
  v135 = static Edge.Set.all.getter();
  v136 = v134 + *(v253 + 36);
  *v136 = v135;
  *(v136 + 8) = xmmword_1006D7430;
  *(v136 + 24) = xmmword_1006D7430;
  *(v136 + 40) = 0;
  v137 = v312;
  v320 = *(v312 + *(v308 + 56));
  sub_100140278(&qword_1008DC400);
  v138 = State.projectedValue.getter();
  __chkstk_darwin(v138);
  *(&v228 - 2) = v137;
  sub_100140278(&qword_1008E3918);
  sub_100256D90();
  v139 = v254;
  TabView.init(selection:content:)();
  static PageTabViewStyle.IndexDisplayMode.automatic.getter();
  v140 = v258;
  PageTabViewStyle.init(indexDisplayMode:)();
  sub_10014A6B0(&qword_1008E3948, &qword_1008E38C8);
  v141 = v257;
  v142 = v260;
  View.tabViewStyle<A>(_:)();
  (*(v259 + 8))(v140, v142);
  (*(v255 + 8))(v139, v141);
  v143 = v120;
  if (sub_100255A90())
  {
    v144 = [objc_opt_self() mainBundle];
    v145 = String._bridgeToObjectiveC()();
    v146 = [v144 localizedStringForKey:v145 value:0 table:0];

    v147 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v149 = v148;

    LOBYTE(v144) = static Edge.Set.all.getter();
    EdgeInsets.init(_all:)();
    v151 = v150;
    v153 = v152;
    v155 = v154;
    v157 = v156;
    v319[64] = 1;
    *&v320 = v147;
    *(&v320 + 1) = v149;
    LOBYTE(v321) = v144;
    *(&v321 + 1) = v150;
    *&v322 = v152;
    *(&v322 + 1) = v154;
    *&v323[0] = v156;
    BYTE8(v323[0]) = 0;
    v288 = 1;
    v289 = v321;
    v308 = v147;
    *&v324 = v147;
    v290 = v149;
    *(&v324 + 1) = v149;
    LOBYTE(v325) = v144;
    *(&v325 + 1) = v150;
    *&v326 = v152;
    *(&v326 + 1) = v154;
    *&v327 = v156;
    BYTE8(v327) = 0;
    sub_10001B104(&v320, v319, &qword_1008E3990);
    sub_10000EA04(&v324, &qword_1008E3990);
  }

  else
  {
    v308 = 0;
    v289 = 0;
    v290 = 0;
    v288 = 0;
    v151 = 0;
    v153 = 0;
    v155 = 0;
    v157 = 0;
  }

  v158 = v263;
  sub_100256ECC(v137, v263);
  v159 = (*(v261 + 80) + 16) & ~*(v261 + 80);
  v160 = swift_allocObject();
  v161 = sub_100257758(v158, v160 + v159, type metadata accessor for CardTypeConfigurationRoomView);
  __chkstk_darwin(v161);
  *(&v228 - 2) = v137;
  sub_100140278(&qword_1008E3950);
  sub_10014A6B0(&qword_1008E3958, &qword_1008E3950);
  v162 = v264;
  Button.init(action:label:)();
  static FitnessAccessibilityIdentifier.CardTypeConfigurationRoomView.addOrSwapButton.getter();
  sub_10014A6B0(&qword_1008E3960, &qword_1008E3880);
  v163 = v266;
  View.accessibilityIdentifier(_:)();

  (*(v265 + 8))(v162, v163);
  v164 = v318;
  v165 = v304;
  v304(v318, v303, v143);
  v166 = v302;
  v165(v302, v307, v143);
  if ((dispatch thunk of static Comparable.<= infix(_:_:)() & 1) == 0)
  {
    goto LABEL_23;
  }

  v167 = v315;
  v168 = v164;
  v169 = v298;
  v298(v315, v168, v143);
  v170 = v317;
  v169(v167 + *(v317 + 48), v166, v143);
  v171 = v143;
  v172 = v316;
  sub_10001B104(v167, v316, &qword_1008E2B40);
  v173 = *(v170 + 48);
  v174 = v313;
  v169(v313, v172, v171);
  v175 = v297;
  v297(v172 + v173, v171);
  sub_100015E80(v167, v172, &qword_1008E2B40);
  v169(v174 + *(v314 + 36), (v172 + *(v170 + 48)), v171);
  v175(v172, v171);
  sub_100256F98();
  v176 = v238;
  v177 = v301;
  View.dynamicTypeSize<A>(_:)();
  sub_10000EA04(v174, &qword_1008E2B48);
  sub_10000EA04(v177, &qword_1008E3888);
  if (sub_100255CB4())
  {
    v178 = [objc_opt_self() tertiaryLabelColor];
    v179 = Color.init(_:)();
  }

  else
  {
    v180 = sub_100046170();
    v179 = Color.init(uiColor:)();
  }

  v181 = v179;
  v182 = v248;
  v183 = v240;
  (*(v239 + 32))(v240, v176, v242);
  *(v183 + *(v237 + 36)) = v181;
  LOBYTE(v181) = sub_100255CB4();
  v184 = swift_getKeyPath();
  v185 = swift_allocObject();
  *(v185 + 16) = v181 & 1;
  v186 = v244;
  sub_100015E80(v183, v244, &qword_1008E3898);
  v187 = (v186 + *(v243 + 36));
  *v187 = v184;
  v187[1] = sub_1000526D4;
  v187[2] = v185;
  v188 = v249;
  BorderedProminentButtonStyle.init()();
  sub_100257080();
  sub_10005BD8C(&qword_1008DC548, &type metadata accessor for BorderedProminentButtonStyle);
  v189 = v245;
  v190 = v251;
  View.buttonStyle<A>(_:)();
  (*(v250 + 8))(v188, v190);
  sub_10000EA04(v186, &qword_1008E38A0);
  v191 = (v182 + *(v241 + 36));
  v192 = *(sub_100140278(&qword_1008DC578) + 28);
  v193 = enum case for ControlSize.large(_:);
  v194 = type metadata accessor for ControlSize();
  (*(*(v194 - 8) + 104))(v191 + v192, v193, v194);
  *v191 = swift_getKeyPath();
  (*(v246 + 32))(v182, v189, v247);
  if (sub_100255CB4())
  {
    v195 = sub_100046170();
LABEL_20:
    v199 = Color.init(uiColor:)();
    v200 = swift_getKeyPath();
    *&v324 = v199;
    v201 = AnyShapeStyle.init<A>(_:)();
    v202 = v231;
    sub_100015E80(v182, v231, &qword_1008E38B0);
    v203 = (v202 + *(v232 + 36));
    *v203 = v200;
    v203[1] = v201;
    LOBYTE(v201) = static Edge.Set.all.getter();
    v204 = v229;
    sub_100015E80(v202, v229, &qword_1008E38B8);
    v205 = v204 + *(v230 + 36);
    *v205 = v201;
    *(v205 + 8) = xmmword_1006E0A90;
    *(v205 + 24) = xmmword_1006E0A90;
    *(v205 + 40) = 0;
    v206 = v295;
    sub_100015E80(v204, v295, &qword_1008E38C0);
    v207 = v292;
    sub_10001B104(v311, v292, &qword_1008E38F8);
    v208 = v293;
    sub_10001B104(v309, v293, &qword_1008E38D8);
    v210 = v233;
    v209 = v234;
    v211 = *(v233 + 16);
    v212 = v294;
    v211(v294, v310, v234);
    sub_10001B104(v206, v291, &qword_1008E38C0);
    v213 = v207;
    v214 = v235;
    sub_10001B104(v213, v235, &qword_1008E38F8);
    v215 = sub_100140278(&qword_1008E3980);
    sub_10001B104(v208, v214 + v215[12], &qword_1008E38D8);
    v216 = v214 + v215[16];
    *v216 = 0;
    *(v216 + 8) = 0;
    v211((v214 + v215[20]), v212, v209);
    v217 = v214 + v215[24];
    *v217 = 0;
    *(v217 + 8) = 0;
    v218 = (v214 + v215[28]);
    *&v320 = 0;
    v219 = v288;
    v220 = v289;
    *(&v320 + 1) = v288;
    v221 = v308;
    *&v321 = v308;
    v222 = v290;
    *(&v321 + 1) = v290;
    *&v322 = v289;
    *(&v322 + 1) = v151;
    *&v323[0] = v153;
    *(&v323[0] + 1) = v155;
    *&v323[1] = v157;
    BYTE8(v323[1]) = 0;
    v223 = v323[0];
    v218[2] = v322;
    v218[3] = v223;
    *(v218 + 57) = *(v323 + 9);
    v224 = v321;
    *v218 = v320;
    v218[1] = v224;
    v225 = v214 + v215[32];
    v226 = v291;
    sub_10001B104(v291, v225, &qword_1008E38C0);
    sub_10001B104(&v320, &v324, &qword_1008E3988);
    sub_10000EA04(v295, &qword_1008E38C0);
    v227 = *(v210 + 8);
    v227(v310, v209);
    sub_10000EA04(v309, &qword_1008E38D8);
    sub_10000EA04(v311, &qword_1008E38F8);
    sub_10000EA04(v226, &qword_1008E38C0);
    *&v324 = 0;
    *(&v324 + 1) = v219;
    *&v325 = v221;
    *(&v325 + 1) = v222;
    *&v326 = v220;
    *(&v326 + 1) = v151;
    *&v327 = v153;
    *(&v327 + 1) = v155;
    v328 = v157;
    v329 = 0;
    sub_10000EA04(&v324, &qword_1008E3988);
    v227(v294, v209);
    sub_10000EA04(v293, &qword_1008E38D8);
    sub_10000EA04(v292, &qword_1008E38F8);
    return;
  }

  v196 = [objc_opt_self() keyColors];
  if (!v196)
  {
    goto LABEL_24;
  }

  v197 = v196;
  v198 = [v196 nonGradientTextColor];

  if (v198)
  {
    goto LABEL_20;
  }

LABEL_25:
  __break(1u);
}

uint64_t sub_1002543F4(uint64_t a1)
{
  v2 = type metadata accessor for CardTypeConfigurationRoomView();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2 - 8);
  v10[1] = sub_10049AB14(*(a1 + *(v5 + 36)));
  swift_getKeyPath();
  sub_100256ECC(a1, v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = swift_allocObject();
  sub_100257758(v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6, type metadata accessor for CardTypeConfigurationRoomView);
  v8 = swift_allocObject();
  *(v8 + 16) = sub_10025755C;
  *(v8 + 24) = v7;
  sub_100140278(&qword_1008E3A08);
  sub_100140278(&qword_1008E3930);
  sub_10014A6B0(&qword_1008E3A10, &qword_1008E3A08);
  sub_100256E14();
  return ForEach<>.init(_:id:content:)();
}

double sub_1002545F0@<D0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = static HorizontalAlignment.center.getter();
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  v8 = sub_100140278(&qword_1008E3A18);
  sub_100254698(a2, a3, a1, a4 + *(v8 + 44));
  LOBYTE(a3) = static Edge.Set.all.getter();
  v9 = a4 + *(sub_100140278(&qword_1008E3930) + 36);
  *v9 = a3;
  result = 32.0;
  *(v9 + 8) = xmmword_1006E0AA0;
  *(v9 + 24) = xmmword_1006E0AA0;
  *(v9 + 40) = 0;
  return result;
}

uint64_t sub_100254698@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v141 = a3;
  v124 = a1;
  v123 = a4;
  v116 = sub_100140278(&qword_1008E2B40);
  __chkstk_darwin(v116);
  v115 = &v110 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v114 = &v110 - v8;
  v118 = sub_100140278(&qword_1008E2B48);
  __chkstk_darwin(v118);
  v117 = &v110 - v9;
  v145 = type metadata accessor for Font.Leading();
  v143 = *(v145 - 8);
  __chkstk_darwin(v145);
  v142 = &v110 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v122 = sub_100140278(&qword_1008E3A20);
  v121 = *(v122 - 8);
  __chkstk_darwin(v122);
  v120 = &v110 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v119 = &v110 - v13;
  v148 = type metadata accessor for RoundedRectangle() - 8;
  __chkstk_darwin(v148);
  v138 = (&v110 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v140 = type metadata accessor for ContentShapeKinds();
  v139 = *(v140 - 8);
  __chkstk_darwin(v140);
  v137 = &v110 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v149 = type metadata accessor for DynamicTypeSize();
  v150 = *(v149 - 8);
  __chkstk_darwin(v149);
  v144 = &v110 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v147 = &v110 - v18;
  v19 = sub_100140278(&qword_1008DE1C8);
  v20 = v19 - 8;
  __chkstk_darwin(v19);
  v22 = (&v110 - v21);
  v23 = sub_100140278(&qword_1008DE1D0);
  __chkstk_darwin(v23);
  v25 = &v110 - v24;
  v134 = sub_100140278(&qword_1008DB048);
  v133 = *(v134 - 8);
  __chkstk_darwin(v134);
  v127 = &v110 - v26;
  v136 = sub_100140278(&qword_1008E3A28);
  v135 = *(v136 - 8);
  __chkstk_darwin(v136);
  v126 = &v110 - v27;
  v130 = sub_100140278(&qword_1008E3A30) - 8;
  __chkstk_darwin(v130);
  v128 = &v110 - v28;
  v131 = sub_100140278(&qword_1008E3A38) - 8;
  __chkstk_darwin(v131);
  v113 = &v110 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v129 = &v110 - v31;
  __chkstk_darwin(v32);
  v146 = &v110 - v33;
  v34 = type metadata accessor for DashboardCardView();
  sub_100007C5C(a1, v22 + v34[5]);
  v35 = type metadata accessor for CardTypeConfigurationRoomView();
  v36 = *(*(*(a2 + *(v35 + 32)) + OBJC_IVAR____TtC10FitnessApp18SummaryCoordinator_context) + OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_fitnessAppContext);
  AppCoordinator.composer.getter();

  v37 = v22 + v34[7];
  *(v37 + 4) = 0;
  *v37 = 0u;
  *(v37 + 1) = 0u;
  v38 = *(a2 + *(v35 + 40));
  v132 = a2;
  *v22 = swift_getKeyPath();
  sub_100140278(&qword_1008EE6A0);
  swift_storeEnumTagMultiPayload();
  *(v22 + v34[8]) = v38;
  *(v22 + v34[9]) = 1;
  *(v22 + v34[10]) = 0;
  *(v22 + *(v20 + 44)) = 0;

  v39 = 20.0;
  if (static Solarium.isEnabled.getter())
  {
    v40 = 16.0;
  }

  else
  {
    v40 = 20.0;
  }

  v41 = &v25[*(v23 + 36)];
  v42 = *(v148 + 28);
  v43 = enum case for RoundedCornerStyle.continuous(_:);
  v125 = enum case for RoundedCornerStyle.continuous(_:);
  v44 = type metadata accessor for RoundedCornerStyle();
  v45 = *(*(v44 - 8) + 104);
  v45(v41 + v42, v43, v44);
  *v41 = v40;
  v41[1] = v40;
  *(v41 + *(sub_100140278(&qword_1008DE1E0) + 36)) = 256;
  sub_100015E80(v22, v25, &qword_1008DE1C8);
  v46 = v124;
  v47 = v124[3];
  v48 = v124[4];
  sub_1000066AC(v124, v47);
  v49 = (*(v48 + 24))(v47, v48);
  v50 = v147;
  sub_1002557B8(v49 & 1, v147);
  sub_1002575E4();
  v51 = v127;
  View.dynamicTypeSize(_:)();
  v52 = *(v150 + 8);
  v112 = v150 + 8;
  v111 = v52;
  v52(v50, v149);
  sub_10000EA04(v25, &qword_1008DE1D0);
  v53 = v126;
  (*(v133 + 32))(v126, v51, v134);
  v54 = &v53[*(sub_100140278(&qword_1008DB050) + 36)];
  *v54 = v141;
  v54[8] = 1;
  v55 = v46[3];
  v56 = v46[4];
  sub_1000066AC(v46, v55);
  v57 = v128;
  (*(v56 + 8))(v55, v56);
  v58 = v57;
  (*(v135 + 32))(v57, v53, v136);
  v59 = v137;
  static ContentShapeKinds.accessibility.getter();
  if (static Solarium.isEnabled.getter())
  {
    v39 = 16.0;
  }

  v60 = v138;
  v45(v138 + *(v148 + 28), v125, v44);
  *v60 = v39;
  v60[1] = v39;
  v61 = v60;
  v62 = v129;
  v63 = &v129[*(v131 + 44)];
  sub_100257758(v61, v63, &type metadata accessor for RoundedRectangle);
  v64 = sub_100140278(&qword_1008E3A58);
  (*(v139 + 32))(v63 + *(v64 + 40), v59, v140);
  *(v63 + *(v64 + 36)) = 0;
  sub_100015E80(v58, v62, &qword_1008E3A30);
  sub_100015E80(v62, v146, &qword_1008E3A38);
  LocalizedStringKey.init(stringLiteral:)();
  v65 = Text.init(_:tableName:bundle:comment:)();
  v67 = v66;
  LOBYTE(v62) = v68;
  static Font.footnote.getter();
  v69 = v143;
  v70 = v142;
  v71 = v145;
  (*(v143 + 104))(v142, enum case for Font.Leading.tight(_:), v145);
  Font.leading(_:)();

  (*(v69 + 8))(v70, v71);
  v72 = Text.font(_:)();
  v74 = v73;
  LOBYTE(v70) = v75;

  sub_10004642C(v65, v67, v62 & 1);

  LODWORD(v155[0]) = static HierarchicalShapeStyle.secondary.getter();
  v76 = Text.foregroundStyle<A>(_:)();
  v78 = v77;
  v80 = v79;
  v82 = v81;
  v83 = v70 & 1;
  v84 = v149;
  sub_10004642C(v72, v74, v83);

  v85 = static Edge.Set.all.getter();
  v158 = v80 & 1;
  v157 = 0;
  v86 = sub_100255960();
  v87 = 0.0;
  if (v86)
  {
    v87 = 1.0;
  }

  *&v151 = v76;
  *(&v151 + 1) = v78;
  LOBYTE(v152) = v80 & 1;
  *(&v152 + 1) = v82;
  v88 = v144;
  v153[0] = v85;
  v89 = v147;
  *&v153[8] = xmmword_1006D7440;
  *&v153[24] = xmmword_1006D7430;
  v153[40] = 0;
  v154 = v87;
  v90 = v150;
  v91 = *(v150 + 104);
  v91(v147, enum case for DynamicTypeSize.xSmall(_:), v84);
  v91(v88, enum case for DynamicTypeSize.xxxLarge(_:), v84);
  sub_10005BD8C(&qword_1008DC898, &type metadata accessor for DynamicTypeSize);
  result = dispatch thunk of static Comparable.<= infix(_:_:)();
  if (result)
  {
    v93 = *(v90 + 32);
    v94 = v114;
    v93(v114, v89, v84);
    v95 = v116;
    v93((v94 + *(v116 + 48)), v88, v84);
    v96 = v115;
    sub_10001B104(v94, v115, &qword_1008E2B40);
    v97 = *(v95 + 48);
    v98 = v117;
    v93(v117, v96, v84);
    v99 = v111;
    v111(v96 + v97, v84);
    sub_100015E80(v94, v96, &qword_1008E2B40);
    v93((v98 + *(v118 + 36)), v96 + *(v95 + 48), v84);
    v99(v96, v84);
    sub_100140278(&qword_1008E3A60);
    sub_1002577C0();
    sub_10014A6B0(&qword_1008E2B58, &qword_1008E2B48);
    v100 = v119;
    View.dynamicTypeSize<A>(_:)();
    sub_10000EA04(v98, &qword_1008E2B48);
    v155[3] = *&v153[16];
    v155[4] = *&v153[32];
    v156 = v154;
    v155[0] = v151;
    v155[1] = v152;
    v155[2] = *v153;
    sub_10000EA04(v155, &qword_1008E3A60);
    v101 = v146;
    v102 = v113;
    sub_10001B104(v146, v113, &qword_1008E3A38);
    v103 = v121;
    v104 = *(v121 + 16);
    v105 = v120;
    v106 = v122;
    v104(v120, v100, v122);
    v107 = v123;
    sub_10001B104(v102, v123, &qword_1008E3A38);
    v108 = sub_100140278(&qword_1008E3A70);
    v104((v107 + *(v108 + 48)), v105, v106);
    v109 = *(v103 + 8);
    v109(v100, v106);
    sub_10000EA04(v101, &qword_1008E3A38);
    v109(v105, v106);
    return sub_10000EA04(v102, &qword_1008E3A38);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1002557B8@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for DynamicTypeSize();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v19 - v10;
  sub_10005491C(&v19 - v10);
  v12 = type metadata accessor for CardTypeConfigurationRoomView();
  v13 = 64;
  if ((a1 & 1) == 0)
  {
    v13 = 60;
  }

  (*(v6 + 16))(v8, v2 + *(v12 + v13), v5);
  sub_10005BD8C(&qword_1008DC898, &type metadata accessor for DynamicTypeSize);
  v14 = dispatch thunk of static Comparable.< infix(_:_:)();
  v15 = (v14 & 1) == 0;
  if (v14)
  {
    v16 = v11;
  }

  else
  {
    v16 = v8;
  }

  if (v15)
  {
    v17 = v11;
  }

  else
  {
    v17 = v8;
  }

  (*(v6 + 8))(v16, v5);
  return (*(v6 + 32))(a2, v17, v5);
}

uint64_t sub_100255960()
{
  sub_100255DEC(&v5);
  if (v6)
  {
    sub_100006260(&v5, v7);
    type metadata accessor for CardTypeConfigurationRoomView();
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v1 = v5;
    __chkstk_darwin(v0);
    v4[2] = v7;
    v2 = sub_100321E00(sub_100257904, v4, v1);

    sub_100005A40(v7);
  }

  else
  {
    sub_10000EA04(&v5, &qword_1008DCC60);
    v2 = 0;
  }

  return v2 & 1;
}

BOOL sub_100255A90()
{
  v0 = sub_100140278(&qword_1008DCFB0);
  __chkstk_darwin(v0 - 8);
  v2 = &v11[-v1 - 8];
  v3 = type metadata accessor for FriendsHighlightCard();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v11[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_100255DEC(v11);
  if (!v12)
  {
    sub_10000EA04(v11, &qword_1008DCC60);
    (*(v4 + 56))(v2, 1, 1, v3);
    goto LABEL_7;
  }

  sub_100140278(&unk_1008EE6B0);
  v7 = swift_dynamicCast();
  (*(v4 + 56))(v2, v7 ^ 1u, 1, v3);
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
LABEL_7:
    sub_10000EA04(v2, &qword_1008DCFB0);
    return 0;
  }

  sub_100257758(v2, v6, type metadata accessor for FriendsHighlightCard);
  if (v6[*(v3 + 44)])
  {
    v8 = v6[*(v3 + 48)];
    sub_100257500(v6);
    return (v8 & 1) == 0;
  }

  sub_100257500(v6);
  return 1;
}

BOOL sub_100255CB4()
{
  sub_100255DEC(&v6);
  if (!v7)
  {
    sub_10000EA04(&v6, &qword_1008DCC60);
    return sub_100255A90();
  }

  sub_100006260(&v6, v8);
  type metadata accessor for CardTypeConfigurationRoomView();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v1 = v6;
  __chkstk_darwin(v0);
  v5[2] = v8;
  v2 = sub_100321E00(sub_10025728C, v5, v1);

  sub_100005A40(v8);
  if ((v2 & 1) == 0)
  {
    return sub_100255A90();
  }

  return 1;
}

uint64_t sub_100255DEC@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for CardTypeConfigurationRoomView();
  sub_100140278(&qword_1008DC400);
  result = State.wrappedValue.getter();
  v5 = *(v1 + *(v3 + 28));
  if (v6 >= *(v5 + 16))
  {
    *(a1 + 32) = 0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  else
  {
    result = State.wrappedValue.getter();
    if ((v6 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v6 < *(v5 + 16))
    {
      return sub_100007C5C(v5 + 40 * v6 + 32, a1);
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_100255EDC(uint64_t a1)
{
  sub_100255DEC(&v18);
  if (v19)
  {
    sub_100006260(&v18, &v20);
    type metadata accessor for CardTypeConfigurationRoomView();
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v3 = v18;
    __chkstk_darwin(v2);
    v15[2] = &v20;
    v4 = sub_100321E00(sub_100257904, v15, v3);

    result = sub_100005A40(&v20);
    if (v4)
    {
      return result;
    }
  }

  else
  {
    sub_10000EA04(&v18, &qword_1008DCC60);
  }

  v6 = type metadata accessor for CardTypeConfigurationRoomView();
  sub_10001B104(a1 + v6[6], &v18, &qword_1008DCC60);
  if (!v19)
  {
    sub_10000EA04(&v18, &qword_1008DCC60);
    v11 = (a1 + v6[14]);
    v12 = *v11;
    v13 = v11[1];
    v20 = *v11;
    v21 = v13;
    sub_100140278(&qword_1008DC400);
    result = State.wrappedValue.getter();
    v14 = *(a1 + v6[7]);
    if (v18 >= *(v14 + 16))
    {
      return result;
    }

    v20 = v12;
    v21 = v13;
    result = State.wrappedValue.getter();
    if ((v18 & 0x8000000000000000) == 0)
    {
      if (v18 < *(v14 + 16))
      {
        sub_100007C5C(v14 + 40 * v18 + 32, &v20);
        sub_100007C5C(&v20, &v18);
        v17 = 0;
        memset(v16, 0, sizeof(v16));
        swift_beginAccess();
        sub_100636E50(0, &v18, v16);
        sub_10000EA04(v16, &qword_1008DCC60);
        sub_10000EA04(&v18, &qword_1008DCC60);
        sub_1003E01B8(&v20, 0, 1);
        (*(a1 + v6[13]))(1);
        return sub_100005A40(&v20);
      }

LABEL_19:
      __break(1u);
      return result;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  sub_100006260(&v18, &v20);
  v7 = (a1 + v6[14]);
  v8 = *v7;
  v9 = v7[1];
  *&v18 = *v7;
  *(&v18 + 1) = v9;
  sub_100140278(&qword_1008DC400);
  State.wrappedValue.getter();
  v10 = *(a1 + v6[7]);
  if (*&v16[0] < *(v10 + 16))
  {
    *&v18 = v8;
    *(&v18 + 1) = v9;
    result = State.wrappedValue.getter();
    if ((*&v16[0] & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*&v16[0] < *(v10 + 16))
    {
      sub_100007C5C(v10 + 40 * *&v16[0] + 32, &v18);
      sub_1003DC880(&v20, &v18);
      (*(a1 + v6[13]))(0);
      sub_100005A40(&v18);
      return sub_100005A40(&v20);
    }

    __break(1u);
    goto LABEL_18;
  }

  return sub_100005A40(&v20);
}

uint64_t sub_100256278@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = static VerticalAlignment.center.getter();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v4 = sub_100140278(&qword_1008E3998);
  return sub_1002562D0(a1, (a2 + *(v4 + 44)));
}

uint64_t sub_1002562D0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v56 = a2;
  v3 = sub_100140278(&qword_1008E39A0);
  v53 = *(v3 - 8);
  __chkstk_darwin(v3);
  v52 = &v49 - v4;
  v55 = sub_100140278(&qword_1008E39A8);
  __chkstk_darwin(v55);
  v6 = &v49 - v5;
  v7 = sub_100140278(&qword_1008E39B0);
  __chkstk_darwin(v7);
  v9 = &v49 - v8;
  v54 = sub_100140278(&qword_1008E39B8);
  v10 = *(v54 - 8);
  __chkstk_darwin(v54);
  v12 = &v49 - v11;
  v13 = sub_100140278(&qword_1008E39C0);
  __chkstk_darwin(v13 - 8);
  v15 = (&v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v16);
  v18 = &v49 - v17;
  if (sub_100255960())
  {
    goto LABEL_5;
  }

  v51 = v7;
  v50 = v18;
  v19 = type metadata accessor for CardTypeConfigurationRoomView();
  sub_10001B104(a1 + *(v19 + 24), v66, &qword_1008DCC60);
  if (!v67)
  {
    sub_10000EA04(v66, &qword_1008DCC60);
    v18 = v50;
    v7 = v51;
LABEL_5:
    LocalizedStringKey.init(stringLiteral:)();
    Label<>.init(_:systemImage:)();
    KeyPath = swift_getKeyPath();
    v37 = &v9[*(sub_100140278(&qword_1008E39C8) + 36)];
    *v37 = KeyPath;
    *(v37 + 1) = 2;
    v37[16] = 0;
    v38 = swift_getKeyPath();
    v39 = &v9[*(v7 + 36)];
    *v39 = v38;
    v39[1] = 0x3FE999999999999ALL;
    static Font.Weight.semibold.getter();
    v40 = sub_1002572AC();
    v41 = v54;
    v53 = v15;
    v52 = v3;
    v42 = v40;
    View.fontWeight(_:)();
    sub_10000EA04(v9, &qword_1008E39B0);
    (*(v10 + 16))(v6, v12, v41);
    swift_storeEnumTagMultiPayload();
    *&v64[0] = v7;
    *(&v64[0] + 1) = v42;
    swift_getOpaqueTypeConformance2();
    v43 = sub_100141EEC(&qword_1008E39F0);
    v44 = sub_100257448();
    *&v64[0] = v43;
    *(&v64[0] + 1) = v44;
    swift_getOpaqueTypeConformance2();
    v15 = v53;
    _ConditionalContent<>.init(storage:)();
    (*(v10 + 8))(v12, v41);
    goto LABEL_6;
  }

  sub_10000EA04(v66, &qword_1008DCC60);
  LocalizedStringKey.init(stringLiteral:)();
  v20 = Text.init(_:tableName:bundle:comment:)();
  v22 = v21;
  v24 = v23;
  v25 = v3;
  v27 = v26;
  v28 = swift_getKeyPath();
  v29 = swift_getKeyPath();
  v63 = v24 & 1;
  v62 = 0;
  *&v57 = v20;
  *(&v57 + 1) = v22;
  LOBYTE(v58) = v24 & 1;
  *(&v58 + 1) = v27;
  *&v59 = v28;
  *(&v59 + 1) = 2;
  LOBYTE(v60) = 0;
  *(&v60 + 1) = v29;
  v61 = 0x3FE999999999999ALL;
  static Font.Weight.semibold.getter();
  v30 = sub_100140278(&qword_1008E39F0);
  v31 = sub_100257448();
  v32 = v52;
  View.fontWeight(_:)();
  v64[2] = v59;
  v64[3] = v60;
  v65 = v61;
  v64[0] = v57;
  v64[1] = v58;
  sub_10000EA04(v64, &qword_1008E39F0);
  v33 = v53;
  v34 = v25;
  v53[2](v6, v32, v25);
  swift_storeEnumTagMultiPayload();
  v35 = sub_1002572AC();
  *&v57 = v51;
  *(&v57 + 1) = v35;
  swift_getOpaqueTypeConformance2();
  *&v57 = v30;
  *(&v57 + 1) = v31;
  swift_getOpaqueTypeConformance2();
  v18 = v50;
  _ConditionalContent<>.init(storage:)();
  (v33[1])(v32, v34);
LABEL_6:
  sub_10001B104(v18, v15, &qword_1008E39C0);
  v45 = v56;
  *v56 = 0;
  *(v45 + 8) = 0;
  v46 = sub_100140278(&qword_1008E3A00);
  sub_10001B104(v15, v45 + *(v46 + 48), &qword_1008E39C0);
  v47 = v45 + *(v46 + 64);
  *v47 = 0;
  v47[8] = 0;
  sub_10000EA04(v18, &qword_1008E39C0);
  return sub_10000EA04(v15, &qword_1008E39C0);
}

uint64_t sub_100256A7C@<X0>(uint64_t a1@<X8>)
{
  *a1 = static HorizontalAlignment.center.getter();
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v3 = sub_100140278(&qword_1008E3870);
  sub_1002522AC(v1, a1 + *(v3 + 44));
  v4 = static Edge.Set.top.getter();
  v5 = static SafeAreaRegions.all.getter();
  result = sub_100140278(&qword_1008E3878);
  v7 = a1 + *(result + 36);
  *v7 = v5;
  *(v7 + 8) = v4;
  return result;
}

unint64_t sub_100256B08()
{
  result = qword_1008E3900;
  if (!qword_1008E3900)
  {
    sub_100141EEC(&qword_1008E38F0);
    sub_100256B94();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E3900);
  }

  return result;
}

unint64_t sub_100256B94()
{
  result = qword_1008E3908;
  if (!qword_1008E3908)
  {
    sub_100141EEC(&qword_1008E38E8);
    sub_100256C4C();
    sub_10014A6B0(&qword_1008DC4C8, &qword_1008DC4D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E3908);
  }

  return result;
}

unint64_t sub_100256C4C()
{
  result = qword_1008E3910;
  if (!qword_1008E3910)
  {
    sub_100141EEC(&qword_1008E38E0);
    sub_100141EEC(&qword_1008E2B48);
    sub_10014A6B0(&qword_1008E2B58, &qword_1008E2B48);
    swift_getOpaqueTypeConformance2();
    sub_10014A6B0(&qword_1008DCB50, &qword_1008DCB58);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E3910);
  }

  return result;
}

unint64_t sub_100256D90()
{
  result = qword_1008E3920;
  if (!qword_1008E3920)
  {
    sub_100141EEC(&qword_1008E3918);
    sub_100256E14();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E3920);
  }

  return result;
}

unint64_t sub_100256E14()
{
  result = qword_1008E3928;
  if (!qword_1008E3928)
  {
    sub_100141EEC(&qword_1008E3930);
    sub_10014A6B0(&qword_1008E3938, &qword_1008E3940);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E3928);
  }

  return result;
}

uint64_t sub_100256ECC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CardTypeConfigurationRoomView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100256F30()
{
  v1 = *(type metadata accessor for CardTypeConfigurationRoomView() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_100255EDC(v2);
}

unint64_t sub_100256F98()
{
  result = qword_1008E3968;
  if (!qword_1008E3968)
  {
    sub_100141EEC(&qword_1008E3888);
    sub_10014A6B0(&qword_1008E3960, &qword_1008E3880);
    sub_10005BD8C(&qword_1008DCEF8, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E3968);
  }

  return result;
}

unint64_t sub_100257080()
{
  result = qword_1008E3970;
  if (!qword_1008E3970)
  {
    sub_100141EEC(&qword_1008E38A0);
    sub_100257138();
    sub_10014A6B0(&qword_1008E2BC8, &qword_1008E2BD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E3970);
  }

  return result;
}

unint64_t sub_100257138()
{
  result = qword_1008E3978;
  if (!qword_1008E3978)
  {
    sub_100141EEC(&qword_1008E3898);
    sub_100141EEC(&qword_1008E3888);
    sub_100141EEC(&qword_1008E2B48);
    sub_100256F98();
    sub_10014A6B0(&qword_1008E2B58, &qword_1008E2B48);
    swift_getOpaqueTypeConformance2();
    sub_10014A6B0(&qword_1008E0740, &qword_1008E0748);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E3978);
  }

  return result;
}

unint64_t sub_1002572AC()
{
  result = qword_1008E39D0;
  if (!qword_1008E39D0)
  {
    sub_100141EEC(&qword_1008E39B0);
    sub_100257364();
    sub_10014A6B0(&qword_1008E39E0, &qword_1008E39E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E39D0);
  }

  return result;
}

unint64_t sub_100257364()
{
  result = qword_1008E39D8;
  if (!qword_1008E39D8)
  {
    sub_100141EEC(&qword_1008E39C8);
    sub_10014A6B0(&qword_1008DE038, &qword_1008DE030);
    sub_10014A6B0(&qword_1008DCB40, &qword_1008DCB48);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E39D8);
  }

  return result;
}

unint64_t sub_100257448()
{
  result = qword_1008E39F8;
  if (!qword_1008E39F8)
  {
    sub_100141EEC(&qword_1008E39F0);
    sub_10015EE70();
    sub_10014A6B0(&qword_1008E39E0, &qword_1008E39E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E39F8);
  }

  return result;
}

uint64_t sub_100257500(uint64_t a1)
{
  v2 = type metadata accessor for FriendsHighlightCard();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double sub_10025755C@<D0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *(type metadata accessor for CardTypeConfigurationRoomView() - 8);
  v8 = v3 + ((*(v7 + 80) + 16) & ~*(v7 + 80));

  return sub_1002545F0(a1, a2, v8, a3);
}

unint64_t sub_1002575E4()
{
  result = qword_1008E3A40;
  if (!qword_1008E3A40)
  {
    sub_100141EEC(&qword_1008DE1D0);
    sub_10025769C();
    sub_10014A6B0(&qword_1008E0760, &qword_1008DE1E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E3A40);
  }

  return result;
}

unint64_t sub_10025769C()
{
  result = qword_1008E3A48;
  if (!qword_1008E3A48)
  {
    sub_100141EEC(&qword_1008DE1C8);
    sub_10005BD8C(&qword_1008E3A50, type metadata accessor for DashboardCardView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E3A48);
  }

  return result;
}

uint64_t sub_100257758(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1002577C0()
{
  result = qword_1008E3A68;
  if (!qword_1008E3A68)
  {
    sub_100141EEC(&qword_1008E3A60);
    sub_1001F4794();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E3A68);
  }

  return result;
}

unint64_t sub_10025784C()
{
  result = qword_1008E3A78;
  if (!qword_1008E3A78)
  {
    sub_100141EEC(&qword_1008E3878);
    sub_10014A6B0(&qword_1008E3A80, &qword_1008E3A88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E3A78);
  }

  return result;
}

char *sub_100257920(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC10FitnessApp22TrendDetailSummaryView_arrow;
  type metadata accessor for TrendArrowIndicatorView();
  *&v4[v9] = sub_10065AF60();
  v10 = OBJC_IVAR____TtC10FitnessApp22TrendDetailSummaryView_valueLabel;
  sub_1000059F8(0, &qword_1008E2D40);
  *&v4[v10] = sub_100555C98();
  v11 = OBJC_IVAR____TtC10FitnessApp22TrendDetailSummaryView_coachingLabel;
  *&v4[v11] = sub_100555C98();
  v12 = OBJC_IVAR____TtC10FitnessApp22TrendDetailSummaryView_divider;
  sub_1000059F8(0, &qword_1008E7580);
  *&v4[v12] = sub_10065AEC8();
  v4[OBJC_IVAR____TtC10FitnessApp22TrendDetailSummaryView_arrowDirection] = 1;
  v17.receiver = v4;
  v17.super_class = type metadata accessor for TrendDetailSummaryView();
  v13 = objc_msgSendSuper2(&v17, "initWithFrame:", a1, a2, a3, a4);
  v14 = *&v13[OBJC_IVAR____TtC10FitnessApp22TrendDetailSummaryView_arrow];
  v15 = v13;
  [v15 addSubview:v14];
  [v15 addSubview:*&v15[OBJC_IVAR____TtC10FitnessApp22TrendDetailSummaryView_valueLabel]];
  [v15 addSubview:*&v15[OBJC_IVAR____TtC10FitnessApp22TrendDetailSummaryView_coachingLabel]];
  [v15 addSubview:*&v15[OBJC_IVAR____TtC10FitnessApp22TrendDetailSummaryView_divider]];
  sub_100257ACC();
  sub_100257C10();

  return v15;
}

void sub_100257ACC()
{
  v1 = *(v0 + OBJC_IVAR____TtC10FitnessApp22TrendDetailSummaryView_valueLabel);
  v2 = objc_opt_self();
  v3 = [v2 labelColor];
  [v1 setTextColor:v3];

  v4 = *(v0 + OBJC_IVAR____TtC10FitnessApp22TrendDetailSummaryView_coachingLabel);
  v5 = [v2 secondaryLabelColor];
  [v4 setTextColor:v5];

  [v4 setNumberOfLines:0];
  v6 = sub_100604A98();
  [v1 setFont:v6];

  v7 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleCaption1];
  [v4 setFont:v7];
}

void sub_100257C10()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC10FitnessApp22TrendDetailSummaryView_valueLabel];
  v3 = [v2 leadingAnchor];
  v4 = *&v1[OBJC_IVAR____TtC10FitnessApp22TrendDetailSummaryView_arrow];
  v5 = [v4 trailingAnchor];
  v60 = [v3 constraintEqualToAnchor:v5 constant:8.0];

  v6 = [v2 trailingAnchor];
  v7 = [v1 trailingAnchor];
  v59 = [v6 constraintEqualToAnchor:v7 constant:-16.0];

  v8 = [v2 topAnchor];
  v9 = [v1 topAnchor];
  v58 = [v8 constraintEqualToAnchor:v9 constant:11.0];

  v10 = [v4 leadingAnchor];
  v11 = [v1 leadingAnchor];
  v56 = [v10 constraintEqualToAnchor:v11 constant:16.0];

  v12 = [v4 widthAnchor];
  v54 = [v12 constraintEqualToConstant:60.0];

  v13 = [v4 heightAnchor];
  v52 = [v13 constraintEqualToConstant:60.0];

  v14 = [v4 topAnchor];
  v15 = [v2 topAnchor];
  [v2 _capOffsetFromBoundsTop];
  v50 = [v14 constraintEqualToAnchor:v15 constant:-v16];

  v17 = [v4 bottomAnchor];
  v18 = [v1 bottomAnchor];
  v48 = [v17 constraintLessThanOrEqualToAnchor:v18 constant:-11.0];

  v19 = *&v1[OBJC_IVAR____TtC10FitnessApp22TrendDetailSummaryView_coachingLabel];
  v20 = [v19 leadingAnchor];
  v21 = [v2 leadingAnchor];
  v47 = [v20 constraintEqualToAnchor:v21];

  v22 = [v19 trailingAnchor];
  v23 = [v2 trailingAnchor];
  v69 = [v22 constraintEqualToAnchor:v23];

  v24 = [v19 topAnchor];
  v25 = [v2 bottomAnchor];
  v67 = [v24 constraintEqualToAnchor:v25];

  v26 = [v19 bottomAnchor];
  v27 = [v1 bottomAnchor];
  v66 = [v26 constraintLessThanOrEqualToAnchor:v27 constant:-11.0];

  v28 = *&v1[OBJC_IVAR____TtC10FitnessApp22TrendDetailSummaryView_divider];
  v29 = [v28 leadingAnchor];
  v30 = [v1 leadingAnchor];
  v65 = [v29 constraintEqualToAnchor:v30 constant:16.0];

  v31 = [v28 trailingAnchor];
  v32 = [v1 trailingAnchor];
  v64 = [v31 constraintEqualToAnchor:v32];

  v33 = [v28 heightAnchor];
  if (qword_1008DAC90 != -1)
  {
    swift_once();
  }

  v63 = [v33 constraintEqualToConstant:*&qword_100925B90];

  v34 = [v28 bottomAnchor];
  v35 = [v1 bottomAnchor];
  v62 = [v34 constraintEqualToAnchor:v35];

  v46 = objc_opt_self();
  sub_100140278(&unk_1008E4E20);
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_1006D9820;
  *(v36 + 32) = v56;
  *(v36 + 40) = v54;
  *(v36 + 48) = v52;
  *(v36 + 56) = v50;
  *(v36 + 64) = v48;
  *(v36 + 72) = v60;
  *(v36 + 80) = v59;
  *(v36 + 88) = v58;
  *(v36 + 96) = v47;
  *(v36 + 104) = v69;
  *(v36 + 112) = v67;
  *(v36 + 120) = v66;
  *(v36 + 128) = v65;
  *(v36 + 136) = v64;
  *(v36 + 144) = v63;
  *(v36 + 152) = v62;
  sub_1000059F8(0, &qword_1008DC980);
  v57 = v56;
  v55 = v54;
  v53 = v52;
  v51 = v50;
  v49 = v48;
  v37 = v60;
  v38 = v59;
  v39 = v58;
  v40 = v47;
  v61 = v69;
  v68 = v67;
  v41 = v66;
  v42 = v65;
  v43 = v64;
  v44 = v63;
  v45 = v62;
  v70.super.isa = Array._bridgeToObjectiveC()().super.isa;

  [v46 activateConstraints:v70.super.isa];
}

uint64_t sub_100258408(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC10FitnessApp22TrendDetailSummaryView_arrow;
  type metadata accessor for TrendArrowIndicatorView();
  *(v1 + v4) = sub_10065AF60();
  v5 = OBJC_IVAR____TtC10FitnessApp22TrendDetailSummaryView_valueLabel;
  sub_1000059F8(0, &qword_1008E2D40);
  *(v1 + v5) = sub_100555C98();
  v6 = OBJC_IVAR____TtC10FitnessApp22TrendDetailSummaryView_coachingLabel;
  *(v1 + v6) = sub_100555C98();
  v7 = OBJC_IVAR____TtC10FitnessApp22TrendDetailSummaryView_divider;
  sub_1000059F8(0, &qword_1008E7580);
  v8 = sub_10065AEC8();

  *(v2 + v7) = v8;
  *(v2 + OBJC_IVAR____TtC10FitnessApp22TrendDetailSummaryView_arrowDirection) = 1;

  type metadata accessor for TrendDetailSummaryView();
  swift_deallocPartialClassInstance();
  return 0;
}

id sub_100258548()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TrendDetailSummaryView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_10025860C()
{
  v1 = *(*v0 + OBJC_IVAR____TtC10FitnessApp22TrendDetailSummaryView_arrowDirection);
  if (v1 == 1)
  {
    sub_100514B5C(v1, 0);
  }

  else
  {
    sub_100515494(v1);
  }
}

char *sub_1002586AC(uint64_t a1, uint64_t a2)
{
  *&v2[OBJC_IVAR____TtC10FitnessApp29HistoryFilterUIViewController_historyTypes] = _swiftEmptyArrayStorage;
  v5 = &v2[OBJC_IVAR____TtC10FitnessApp29HistoryFilterUIViewController_selectedHistoryType];
  *v5 = 0;
  *(v5 + 4) = 512;
  *&v2[OBJC_IVAR____TtC10FitnessApp29HistoryFilterUIViewController_filterViewController] = 0;
  v6 = &v2[OBJC_IVAR____TtC10FitnessApp29HistoryFilterUIViewController_filterFrame];
  v7 = [objc_opt_self() mainScreen];
  [v7 bounds];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;

  v22.origin.x = v9;
  v22.origin.y = v11;
  v22.size.width = v13;
  v22.size.height = v15;
  Width = CGRectGetWidth(v22);
  *v6 = 0;
  *(v6 + 1) = 0;
  *(v6 + 2) = Width;
  *(v6 + 3) = 0x404F000000000000;
  v17 = &v2[OBJC_IVAR____TtC10FitnessApp29HistoryFilterUIViewController_action];
  *v17 = a1;
  *(v17 + 1) = a2;
  v21.receiver = v2;
  v21.super_class = type metadata accessor for HistoryFilterUIViewController();

  v18 = objc_msgSendSuper2(&v21, "initWithNibName:bundle:", 0, 0);
  result = [v18 view];
  if (result)
  {
    v20 = result;
    [result setFrame:{*&v18[OBJC_IVAR____TtC10FitnessApp29HistoryFilterUIViewController_filterFrame], *&v18[OBJC_IVAR____TtC10FitnessApp29HistoryFilterUIViewController_filterFrame + 8], *&v18[OBJC_IVAR____TtC10FitnessApp29HistoryFilterUIViewController_filterFrame + 16], *&v18[OBJC_IVAR____TtC10FitnessApp29HistoryFilterUIViewController_filterFrame + 24]}];

    sub_100258840();

    return v18;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_100258840()
{
  v1 = v0;
  v2 = [v0 view];
  if (v2)
  {
    v3 = v2;
    v4 = [v2 subviews];

    sub_100258CB8();
    v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v5 >> 62)
    {
      goto LABEL_14;
    }

    for (i = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
    {
      v7 = 0;
      while (1)
      {
        if ((v5 & 0xC000000000000001) != 0)
        {
          v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_13;
          }

          v8 = *(v5 + 8 * v7 + 32);
        }

        v9 = v8;
        v10 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          break;
        }

        [v8 removeFromSuperview];

        ++v7;
        if (v10 == i)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_13:
      __break(1u);
LABEL_14:
      ;
    }

LABEL_15:

    swift_allocObject();
    swift_unknownObjectWeakInit();

    State.init(wrappedValue:)();
    v11 = objc_allocWithZone(sub_100140278(&qword_1008E3B30));
    v12 = UIHostingController.init(rootView:)();
    v13 = *&v1[OBJC_IVAR____TtC10FitnessApp29HistoryFilterUIViewController_filterViewController];
    *&v1[OBJC_IVAR____TtC10FitnessApp29HistoryFilterUIViewController_filterViewController] = v12;
    v14 = v12;

    v15 = [v14 view];
    if (!v15)
    {
      goto LABEL_18;
    }

    v16 = v15;
    [v15 setFrame:{*&v1[OBJC_IVAR____TtC10FitnessApp29HistoryFilterUIViewController_filterFrame], *&v1[OBJC_IVAR____TtC10FitnessApp29HistoryFilterUIViewController_filterFrame + 8], *&v1[OBJC_IVAR____TtC10FitnessApp29HistoryFilterUIViewController_filterFrame + 16], *&v1[OBJC_IVAR____TtC10FitnessApp29HistoryFilterUIViewController_filterFrame + 24]}];
    v17 = [v1 view];
    if (v17)
    {
      v18 = v17;
      [v17 addSubview:v16];

      v14 = v18;
LABEL_18:

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_100258AD8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = *(Strong + OBJC_IVAR____TtC10FitnessApp29HistoryFilterUIViewController_action);
    v6 = Strong;

    v5(a1, a2);
  }

  swift_beginAccess();
  v7 = swift_unknownObjectWeakLoadStrong();
  if (v7)
  {
    v8 = &v7[OBJC_IVAR____TtC10FitnessApp29HistoryFilterUIViewController_selectedHistoryType];
    *v8 = a1;
    *(v8 + 4) = a2;
  }
}

id sub_100258C00()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HistoryFilterUIViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_100258CB8()
{
  result = qword_1008E7580;
  if (!qword_1008E7580)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1008E7580);
  }

  return result;
}

void sub_100258D0C()
{
  *(v0 + OBJC_IVAR____TtC10FitnessApp29HistoryFilterUIViewController_historyTypes) = _swiftEmptyArrayStorage;
  v1 = v0 + OBJC_IVAR____TtC10FitnessApp29HistoryFilterUIViewController_selectedHistoryType;
  *v1 = 0;
  *(v1 + 8) = 512;
  *(v0 + OBJC_IVAR____TtC10FitnessApp29HistoryFilterUIViewController_filterViewController) = 0;
  v2 = v0 + OBJC_IVAR____TtC10FitnessApp29HistoryFilterUIViewController_filterFrame;
  v3 = [objc_opt_self() mainScreen];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v13.origin.x = v5;
  v13.origin.y = v7;
  v13.size.width = v9;
  v13.size.height = v11;
  Width = CGRectGetWidth(v13);
  *v2 = 0;
  *(v2 + 8) = 0;
  *(v2 + 16) = Width;
  *(v2 + 24) = 0x404F000000000000;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_100258E20@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [objc_opt_self() sharedBehavior];
  if (v4)
  {
    v5 = v4;
    v6 = [v4 isStandalonePhoneFitnessMode];

    if (a1)
    {
      v7 = a1;
      v8 = dispatch thunk of WorkoutVoiceAvailabilityProvider.isFeatureSupported()();
      v9 = swift_allocObject();
      *(v9 + 16) = v7;
      v10 = static SafeAreaRegions.all.getter();
      result = static Edge.Set.all.getter();
      *a2 = v6;
      *(a2 + 1) = v8 & 1;
      *(a2 + 8) = sub_10025A578;
      *(a2 + 16) = v9;
      *(a2 + 24) = v10;
      *(a2 + 32) = result;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  type metadata accessor for WorkoutOnboardingCoordinatoriOS();
  sub_10025A520();
  result = EnvironmentObject.error()();
  __break(1u);
  return result;
}

unint64_t sub_100258F38(uint64_t a1, int a2)
{
  LODWORD(v105) = a2;
  v2 = sub_100140278(&qword_1008DC990);
  __chkstk_darwin(v2 - 8);
  v103 = &v102 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v104 = &v102 - v5;
  v6 = objc_opt_self();
  v7 = [v6 mainBundle];
  v8 = String._bridgeToObjectiveC()();
  v9 = String._bridgeToObjectiveC()();
  v10 = [v7 localizedStringForKey:v8 value:0 table:v9];

  if (!v10)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = String._bridgeToObjectiveC()();
  }

  v11 = [v6 mainBundle];
  v12 = String._bridgeToObjectiveC()();

  v13 = String._bridgeToObjectiveC()();
  v14 = [v11 localizedStringForKey:v12 value:0 table:v13];

  if (!v14)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = String._bridgeToObjectiveC()();
  }

  v15 = [objc_allocWithZone(v108) initWithTitle:v10 detailText:v14 icon:0];
  v107 = v15;
  v16 = [v6 mainBundle];
  v17 = String._bridgeToObjectiveC()();

  v18 = String._bridgeToObjectiveC()();
  v19 = [v16 localizedStringForKey:v17 value:0 table:v18];

  if (!v19)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = String._bridgeToObjectiveC()();
  }

  v106 = v6;
  v20 = [v6 mainBundle];
  v21 = String._bridgeToObjectiveC()();

  v108 = "figure.run.circle.fill";
  v22 = String._bridgeToObjectiveC()();
  v23 = [v20 localizedStringForKey:v21 value:0 table:v22];

  if (!v23)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v23 = String._bridgeToObjectiveC()();
  }

  v24 = String._bridgeToObjectiveC()();

  [v107 addBulletedListItemWithTitle:v19 description:v23 symbolName:v24];

  v25 = v106;
  if (v105)
  {
    v26 = [v106 mainBundle];
    v27 = String._bridgeToObjectiveC()();
    v28 = String._bridgeToObjectiveC()();
    v29 = [v26 localizedStringForKey:v27 value:0 table:v28];

    if (!v29)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v29 = String._bridgeToObjectiveC()();
    }

    v30 = [v25 mainBundle];
    v31 = String._bridgeToObjectiveC()();
    v32 = String._bridgeToObjectiveC()();
    v33 = [v30 localizedStringForKey:v31 value:0 table:v32];

    if (!v33)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v33 = String._bridgeToObjectiveC()();
    }

    v34 = String._bridgeToObjectiveC()();
    [v107 addBulletedListItemWithTitle:v29 description:v33 symbolName:v34];
  }

  v35 = [v25 mainBundle];
  v36 = String._bridgeToObjectiveC()();
  v37 = String._bridgeToObjectiveC()();
  v38 = [v35 localizedStringForKey:v36 value:0 table:v37];

  if (!v38)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v38 = String._bridgeToObjectiveC()();
  }

  v39 = [v25 mainBundle];
  v40 = String._bridgeToObjectiveC()();
  v41 = String._bridgeToObjectiveC()();
  v42 = [v39 localizedStringForKey:v40 value:0 table:v41];

  if (!v42)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v42 = String._bridgeToObjectiveC()();
  }

  v43 = String._bridgeToObjectiveC()();
  v44 = v107;
  [v107 addBulletedListItemWithTitle:v38 description:v42 symbolName:v43];

  v45 = [v44 contentView];
  v46 = [v45 subviews];

  sub_1000059F8(0, &qword_1008E7580);
  v47 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v47 >> 62)
  {
    v48 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v48 = *((v47 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v49 = &selRef_initWithFitnessAppContext_activitySharingClient_;
  if (v48)
  {
    v50 = __OFSUB__(v48, 1);
    result = v48 - 1;
    if (v50)
    {
      __break(1u);
    }

    else if ((v47 & 0xC000000000000001) == 0)
    {
      if ((result & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (result < *((v47 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v52 = *(v47 + 8 * result + 32);
LABEL_27:
        v53 = v52;

        [v53 removeFromSuperview];
        v54 = [v44 contentView];
        [v54 addSubview:v53];

        v55 = [objc_allocWithZone(UILabel) init];
        v56 = [v25 mainBundle];
        v57 = String._bridgeToObjectiveC()();
        v58 = String._bridgeToObjectiveC()();
        v59 = [v56 localizedStringForKey:v57 value:0 table:v58];

        if (!v59)
        {
          static String._unconditionallyBridgeFromObjectiveC(_:)();
          v59 = String._bridgeToObjectiveC()();
        }

        [v55 setText:v59];
        sub_1000059F8(0, &qword_1008F73C0);
        v109 = 0;
        v60 = static UIFont.preferredFont(forTextStyle:design:symbolicTraits:weight:compatibleWith:)();
        [v55 setFont:v60];

        v61 = [objc_opt_self() secondaryLabelColor];
        [v55 setTextColor:v61];

        [v55 setNumberOfLines:0];
        v62 = [v44 contentView];
        v63 = v55;
        [v62 addSubview:v63];

        [v63 setTranslatesAutoresizingMaskIntoConstraints:0];
        v105 = objc_opt_self();
        sub_100140278(&unk_1008E4E20);
        v64 = swift_allocObject();
        *(v64 + 16) = xmmword_1006D9800;
        v65 = [v53 topAnchor];
        v66 = [v44 contentView];
        v67 = [v66 topAnchor];

        v68 = [v65 constraintEqualToAnchor:v67];
        *(v64 + 32) = v68;
        v69 = [v53 leadingAnchor];
        v70 = [v44 contentView];
        v71 = [v70 leadingAnchor];

        v72 = [v69 constraintEqualToAnchor:v71];
        *(v64 + 40) = v72;
        v73 = [v53 trailingAnchor];
        v74 = [v44 contentView];
        v75 = [v74 trailingAnchor];

        v76 = [v73 constraintEqualToAnchor:v75];
        *(v64 + 48) = v76;
        v77 = [v63 topAnchor];

        v78 = [v53 bottomAnchor];
        v79 = [v77 constraintEqualToAnchor:v78 constant:20.0];

        *(v64 + 56) = v79;
        v80 = [v63 leadingAnchor];

        v81 = [v44 contentView];
        v82 = [v81 leadingAnchor];

        v83 = [v80 constraintEqualToAnchor:v82];
        *(v64 + 64) = v83;
        v84 = [v63 trailingAnchor];

        v85 = [v44 contentView];
        v86 = [v85 trailingAnchor];

        v87 = [v84 constraintEqualToAnchor:v86];
        *(v64 + 72) = v87;
        v88 = [v63 bottomAnchor];

        v89 = [v44 contentView];
        v90 = [v89 bottomAnchor];

        v91 = [v88 constraintEqualToAnchor:v90];
        *(v64 + 80) = v91;
        sub_1000059F8(0, &qword_1008DC980);
        isa = Array._bridgeToObjectiveC()().super.isa;

        [v105 activateConstraints:isa];

        v25 = v106;
        v49 = &selRef_initWithFitnessAppContext_activitySharingClient_;
        goto LABEL_31;
      }

      __break(1u);
      return result;
    }

    v52 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_27;
  }

LABEL_31:
  v93 = [objc_opt_self() boldButton];
  v94 = [v25 v49[290]];
  v95 = String._bridgeToObjectiveC()();
  v96 = String._bridgeToObjectiveC()();
  v97 = [v94 localizedStringForKey:v95 value:0 table:v96];

  if (!v97)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v97 = String._bridgeToObjectiveC()();
  }

  [v93 setTitle:v97 forState:0];
  v98 = v104;
  UIButton.configuration.getter();
  v99 = type metadata accessor for UIButton.Configuration();
  if ((*(*(v99 - 8) + 48))(v98, 1, v99))
  {
    sub_10015DEBC(v98, v103);
    UIButton.configuration.setter();

    sub_10015DF2C(v98);
  }

  else
  {
    v100 = [objc_opt_self() blackColor];
    UIButton.Configuration.baseForegroundColor.setter();
    UIButton.configuration.setter();
  }

  [v93 addTarget:v44 action:"handleContinueAction" forControlEvents:0x2000];
  v101 = [v44 buttonTray];

  [v101 addButton:v93];
  return v44;
}

unint64_t sub_100259FDC()
{
  v1 = *v0;
  v2 = v0[1];
  type metadata accessor for WorkoutOnboardingViewController();
  return sub_100258F38(v1, v2);
}

uint64_t sub_10025A01C(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = (a1 + OBJC_IVAR____TtC10FitnessAppP33_9E0A025B901D46F3218B1C9DD5770D5A31WorkoutOnboardingViewController_onContinue);
  *v3 = *(v1 + 8);
  v3[1] = v2;
}

uint64_t sub_10025A070(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10025A718();

  return static UIViewControllerRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_10025A0D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10025A718();

  return static UIViewControllerRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_10025A138()
{
  sub_10025A718();
  UIViewControllerRepresentable.body.getter();
  __break(1u);
}

id sub_10025A1C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = &v7[OBJC_IVAR____TtC10FitnessAppP33_9E0A025B901D46F3218B1C9DD5770D5A31WorkoutOnboardingViewController_onContinue];
  *v11 = ASFriendListDisplayMode.id.getter;
  *(v11 + 1) = 0;
  v12 = String._bridgeToObjectiveC()();

  if (!a4)
  {
    v13 = 0;
    if (a6)
    {
      goto LABEL_3;
    }

LABEL_5:
    v14 = 0;
    goto LABEL_6;
  }

  v13 = String._bridgeToObjectiveC()();

  if (!a6)
  {
    goto LABEL_5;
  }

LABEL_3:
  v14 = String._bridgeToObjectiveC()();

LABEL_6:
  v17.receiver = v7;
  v17.super_class = type metadata accessor for WorkoutOnboardingViewController();
  v15 = objc_msgSendSuper2(&v17, "initWithTitle:detailText:symbolName:contentLayout:", v12, v13, v14, a7);

  return v15;
}

id sub_10025A484()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WorkoutOnboardingViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_10025A520()
{
  result = qword_1008DB068;
  if (!qword_1008DB068)
  {
    type metadata accessor for WorkoutOnboardingCoordinatoriOS();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008DB068);
  }

  return result;
}

uint64_t sub_10025A59C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_10025A5E4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_10025A634()
{
  result = qword_1008E3B68;
  if (!qword_1008E3B68)
  {
    sub_100141EEC(&qword_1008E3B70);
    sub_10025A6C0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E3B68);
  }

  return result;
}

unint64_t sub_10025A6C0()
{
  result = qword_1008E3B78;
  if (!qword_1008E3B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E3B78);
  }

  return result;
}

unint64_t sub_10025A718()
{
  result = qword_1008E3B80;
  if (!qword_1008E3B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E3B80);
  }

  return result;
}

uint64_t sub_10025A76C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
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

uint64_t sub_10025A7B4(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

void sub_10025A840()
{
  type metadata accessor for FriendCard();
  if (v0 <= 0x3F)
  {
    sub_10005C6EC();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_10025A8E0@<X0>(uint64_t a1@<X8>)
{
  v34 = a1;
  v2 = sub_100140278(&qword_1008DC0E0);
  v32 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v32 - v3;
  v33 = sub_100140278(&qword_1008E3C18);
  __chkstk_darwin(v33);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v32 - v8;
  v10 = sub_100140278(&qword_1008E3C20);
  __chkstk_darwin(v10);
  v12 = &v32 - v11;
  v13 = sub_100140278(&qword_1008E3C28);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v32 - v15;
  v17 = *(v1 + *(type metadata accessor for FriendCard() + 40));
  if (v17)
  {
    v18 = v17;
    sub_10025ADAC(v18, v16);
    (*(v14 + 16))(v12, v16, v13);
    swift_storeEnumTagMultiPayload();
    v19 = sub_100141EEC(&qword_1008E3C30);
    v20 = sub_100141EEC(&qword_1008E3C38);
    v21 = sub_10025B720();
    *&v37 = v20;
    *(&v37 + 1) = v21;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    *&v37 = v19;
    *(&v37 + 1) = OpaqueTypeConformance2;
    swift_getOpaqueTypeConformance2();
    sub_10025BA1C();
    _ConditionalContent<>.init(storage:)();

    return (*(v14 + 8))(v16, v13);
  }

  else
  {
    ProgressView<>.init<>()();
    static Alignment.center.getter();
    _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
    (*(v32 + 32))(v6, v4, v2);
    v24 = &v6[*(v33 + 36)];
    v25 = v42;
    *(v24 + 4) = v41;
    *(v24 + 5) = v25;
    *(v24 + 6) = v43;
    v26 = v38;
    *v24 = v37;
    *(v24 + 1) = v26;
    v27 = v40;
    *(v24 + 2) = v39;
    *(v24 + 3) = v27;
    sub_100015E80(v6, v9, &qword_1008E3C18);
    sub_10001B104(v9, v12, &qword_1008E3C18);
    swift_storeEnumTagMultiPayload();
    v28 = sub_100141EEC(&qword_1008E3C30);
    v29 = sub_100141EEC(&qword_1008E3C38);
    v30 = sub_10025B720();
    v35 = v29;
    v36 = v30;
    v31 = swift_getOpaqueTypeConformance2();
    v35 = v28;
    v36 = v31;
    swift_getOpaqueTypeConformance2();
    sub_10025BA1C();
    _ConditionalContent<>.init(storage:)();
    return sub_10000EA04(v9, &qword_1008E3C18);
  }
}

uint64_t sub_10025ADAC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v37 = a2;
  v5 = type metadata accessor for FriendCardView();
  v36 = *(v5 - 8);
  v35 = *(v36 + 64);
  __chkstk_darwin(v5 - 8);
  v34 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = type metadata accessor for AccessibilityChildBehavior();
  v7 = *(v33 - 8);
  __chkstk_darwin(v33);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100140278(&qword_1008E3C50);
  v11 = v10 - 8;
  __chkstk_darwin(v10);
  v13 = &v31 - v12;
  v14 = sub_100140278(&qword_1008E3C38);
  __chkstk_darwin(v14);
  v16 = &v31 - v15;
  v32 = sub_100140278(&qword_1008E3C30);
  v17 = *(v32 - 8);
  __chkstk_darwin(v32);
  v19 = &v31 - v18;
  sub_10025B200(v3, a1, v13);
  v13[*(v11 + 44)] = 0;
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  sub_100015E80(v13, v16, &qword_1008E3C50);
  v20 = &v16[*(v14 + 36)];
  v21 = v45;
  *(v20 + 4) = v44;
  *(v20 + 5) = v21;
  *(v20 + 6) = v46;
  v22 = v41;
  *v20 = v40;
  *(v20 + 1) = v22;
  v23 = v43;
  *(v20 + 2) = v42;
  *(v20 + 3) = v23;
  static AccessibilityChildBehavior.combine.getter();
  v24 = sub_10025B720();
  View.accessibilityElement(children:)();
  (*(v7 + 8))(v9, v33);
  sub_10000EA04(v16, &qword_1008E3C38);
  v25 = v34;
  sub_10025BB9C(v3, v34, type metadata accessor for FriendCardView);
  v26 = (*(v36 + 80) + 24) & ~*(v36 + 80);
  v27 = swift_allocObject();
  *(v27 + 16) = a1;
  sub_10025BAD4(v25, v27 + v26);
  v28 = a1;
  v38 = v14;
  v39 = v24;
  swift_getOpaqueTypeConformance2();
  v29 = v32;
  View.onTapGesture(count:perform:)();

  return (*(v17 + 8))(v19, v29);
}

uint64_t sub_10025B200@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v41 = a2;
  v39[1] = a3;
  v4 = type metadata accessor for FriendCardRingsView();
  __chkstk_darwin(v4);
  v6 = (v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_100140278(&qword_1008E3C90);
  __chkstk_darwin(v7);
  v9 = v39 - v8;
  v40 = type metadata accessor for FriendCompetitionView();
  __chkstk_darwin(v40);
  v11 = (v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = type metadata accessor for FriendCard();
  v13 = *(a1 + v12[12]);
  if (!v13)
  {
    goto LABEL_6;
  }

  v14 = v13;
  if (![v14 stage] || (v15 = *(a1 + v12[9])) == 0)
  {

LABEL_6:
    v27 = *(a1 + v12[11]);
    v28 = *(a1 + v12[13]);
    v29 = a1 + v12[5];
    v30 = *v29;
    v31 = *(v29 + 8);
    v32 = *(v29 + 16);
    *v6 = swift_getKeyPath();
    sub_100140278(&qword_1008EE6A0);
    swift_storeEnumTagMultiPayload();
    v33 = v41;
    *(v6 + v4[5]) = v41;
    *(v6 + v4[6]) = v27;
    *(v6 + v4[7]) = v28;
    v34 = v6 + v4[8];
    *v34 = v30;
    *(v34 + 1) = v31;
    v34[16] = v32;
    sub_10025BB9C(v6, v9, type metadata accessor for FriendCardRingsView);
    swift_storeEnumTagMultiPayload();
    v35 = v27;
    v36 = v28;
    v37 = v33;
    sub_10001D510(v30, v31, v32);
    sub_10025B9D4(&qword_1008E3C78, type metadata accessor for FriendCompetitionView);
    sub_10025B9D4(&qword_1008E3C80, type metadata accessor for FriendCardRingsView);
    _ConditionalContent<>.init(storage:)();
    v25 = type metadata accessor for FriendCardRingsView;
    v26 = v6;
    return sub_10025BC04(v26, v25);
  }

  v16 = a1 + v12[5];
  v17 = *v16;
  v18 = *(v16 + 8);
  v19 = *(v16 + 16);
  *v11 = swift_getKeyPath();
  sub_100140278(&qword_1008EE6A0);
  swift_storeEnumTagMultiPayload();
  v21 = v40;
  v20 = v41;
  *(v11 + *(v40 + 20)) = v15;
  *(v11 + v21[6]) = v20;
  *(v11 + v21[7]) = v14;
  v22 = v11 + v21[8];
  *v22 = v17;
  *(v22 + 1) = v18;
  v22[16] = v19;
  sub_10025BB9C(v11, v9, type metadata accessor for FriendCompetitionView);
  swift_storeEnumTagMultiPayload();
  v23 = v15;
  sub_10001D510(v17, v18, v19);
  sub_10025B9D4(&qword_1008E3C78, type metadata accessor for FriendCompetitionView);
  sub_10025B9D4(&qword_1008E3C80, type metadata accessor for FriendCardRingsView);
  v24 = v41;
  _ConditionalContent<>.init(storage:)();
  v25 = type metadata accessor for FriendCompetitionView;
  v26 = v11;
  return sub_10025BC04(v26, v25);
}

uint64_t sub_10025B64C(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for FriendCardView();
  sub_10001B104(a2 + *(v4 + 20), v9, &qword_1008DC808);
  if (!v10)
  {
    return sub_10000EA04(v9, &qword_1008DC808);
  }

  v8[3] = &type metadata for FriendCardActionContext;
  v8[0] = a1;
  v5 = *sub_1000066AC(v9, v10);
  v6 = a1;
  sub_10049DBBC(a2, v8, v5);
  sub_10000EA04(v8, &qword_1008E51F0);
  return sub_100005A40(v9);
}

unint64_t sub_10025B720()
{
  result = qword_1008E3C40;
  if (!qword_1008E3C40)
  {
    sub_100141EEC(&qword_1008E3C38);
    sub_10025B7AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E3C40);
  }

  return result;
}

unint64_t sub_10025B7AC()
{
  result = qword_1008E3C48;
  if (!qword_1008E3C48)
  {
    sub_100141EEC(&qword_1008E3C50);
    sub_10025B864();
    sub_10014A6B0(&qword_1008DC838, &qword_1008DC840);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E3C48);
  }

  return result;
}

unint64_t sub_10025B864()
{
  result = qword_1008E3C58;
  if (!qword_1008E3C58)
  {
    sub_100141EEC(&qword_1008E3C60);
    sub_10025B8E8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E3C58);
  }

  return result;
}

unint64_t sub_10025B8E8()
{
  result = qword_1008E3C68;
  if (!qword_1008E3C68)
  {
    sub_100141EEC(&qword_1008E3C70);
    sub_10025B9D4(&qword_1008E3C78, type metadata accessor for FriendCompetitionView);
    sub_10025B9D4(&qword_1008E3C80, type metadata accessor for FriendCardRingsView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E3C68);
  }

  return result;
}

uint64_t sub_10025B9D4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_10025BA1C()
{
  result = qword_1008E3C88;
  if (!qword_1008E3C88)
  {
    sub_100141EEC(&qword_1008E3C18);
    sub_10014A6B0(&qword_1008DC0D8, &qword_1008DC0E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E3C88);
  }

  return result;
}

uint64_t sub_10025BAD4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FriendCardView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10025BB38()
{
  v1 = *(type metadata accessor for FriendCardView() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return sub_10025B64C(v2, v3);
}

uint64_t sub_10025BB9C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10025BC04(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_10025BC64()
{
  result = qword_1008E3C98;
  if (!qword_1008E3C98)
  {
    sub_100141EEC(&qword_1008E3CA0);
    sub_100141EEC(&qword_1008E3C30);
    sub_100141EEC(&qword_1008E3C38);
    sub_10025B720();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_10025BA1C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E3C98);
  }

  return result;
}

char *sub_10025BD90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  swift_getObjectType();
  v7 = OBJC_IVAR____TtC10FitnessApp25TrendingDownTableViewCell_insetContentView;
  v8 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  [v8 setTranslatesAutoresizingMaskIntoConstraints:0];
  *&v4[v7] = v8;
  v9 = OBJC_IVAR____TtC10FitnessApp25TrendingDownTableViewCell_view;
  type metadata accessor for TrendListMetricView();
  *&v4[v9] = sub_10065AF60();
  v10 = OBJC_IVAR____TtC10FitnessApp25TrendingDownTableViewCell_detailLabel;
  sub_1000059F8(0, &qword_1008E2D40);
  *&v4[v10] = sub_100555C98();
  v11 = OBJC_IVAR____TtC10FitnessApp25TrendingDownTableViewCell_button;
  v12 = [objc_opt_self() buttonWithType:0];
  [v12 setTranslatesAutoresizingMaskIntoConstraints:0];
  *&v4[v11] = v12;
  v13 = &v4[OBJC_IVAR____TtC10FitnessApp25TrendingDownTableViewCell_selectionFunction];
  *v13 = ASFriendListDisplayMode.id.getter;
  v13[1] = 0;
  v4[OBJC_IVAR____TtC10FitnessApp25TrendingDownTableViewCell_arrowDirection] = 1;
  v14 = OBJC_IVAR____TtC10FitnessApp25TrendingDownTableViewCell_metric;
  v15 = type metadata accessor for TrendListMetric();
  (*(*(v15 - 8) + 56))(&v4[v14], 1, 1, v15);
  if (a3)
  {
    v16 = String._bridgeToObjectiveC()();
  }

  else
  {
    v16 = 0;
  }

  v37.receiver = v4;
  v37.super_class = type metadata accessor for TrendingDownTableViewCell();
  v17 = objc_msgSendSuper2(&v37, "initWithStyle:reuseIdentifier:", a1, v16);

  v18 = OBJC_IVAR____TtC10FitnessApp25TrendingDownTableViewCell_insetContentView;
  v19 = *&v17[OBJC_IVAR____TtC10FitnessApp25TrendingDownTableViewCell_insetContentView];
  v20 = v17;
  v21 = v19;
  v22 = sub_1004313A0();
  [v21 setBackgroundColor:v22];

  v23 = [*&v17[v18] layer];
  [v23 setCornerRadius:sub_10013A8DC()];

  v24 = OBJC_IVAR____TtC10FitnessApp25TrendingDownTableViewCell_button;
  [*&v17[v18] addSubview:*&v20[OBJC_IVAR____TtC10FitnessApp25TrendingDownTableViewCell_button]];
  [*&v20[v24] addTarget:v20 action:"selectionButtonTappedWithSender:" forControlEvents:64];
  v25 = OBJC_IVAR____TtC10FitnessApp25TrendingDownTableViewCell_view;
  [*&v17[v18] addSubview:*&v20[OBJC_IVAR____TtC10FitnessApp25TrendingDownTableViewCell_view]];
  v26 = OBJC_IVAR____TtC10FitnessApp25TrendingDownTableViewCell_detailLabel;
  [*&v17[v18] addSubview:*&v20[OBJC_IVAR____TtC10FitnessApp25TrendingDownTableViewCell_detailLabel]];
  v27 = [v20 contentView];

  [v27 addSubview:*&v17[v18]];
  [*&v20[v25] setUserInteractionEnabled:0];
  [*&v20[v26] setUserInteractionEnabled:0];
  sub_10025C258();
  v28 = *&v20[v26];
  v29 = objc_opt_self();
  v30 = v28;
  v31 = [v29 _preferredFontForTextStyle:UIFontTextStyleCaption1 variant:256];
  [v30 setFont:v31];

  v32 = *&v20[v26];
  v33 = objc_opt_self();
  v34 = v32;
  v35 = [v33 secondaryLabelColor];
  [v34 setTextColor:v35];

  [*&v20[v26] setNumberOfLines:0];
  return v20;
}

void sub_10025C258()
{
  v1 = v0;
  swift_getObjectType();
  v2 = *&v0[OBJC_IVAR____TtC10FitnessApp25TrendingDownTableViewCell_insetContentView];
  v3 = [v2 topAnchor];
  v4 = [v0 contentView];
  v5 = [v4 topAnchor];

  v69 = [v3 constraintEqualToAnchor:v5 constant:sub_1004313D0()];
  v6 = [v2 leadingAnchor];
  v7 = [v0 contentView];
  v8 = [v7 leadingAnchor];

  sub_1004313D0();
  v67 = [v6 constraintEqualToAnchor:v8 constant:v9];

  v10 = [v2 trailingAnchor];
  v11 = [v0 contentView];
  v12 = [v11 trailingAnchor];

  sub_1004313D0();
  v65 = [v10 constraintEqualToAnchor:v12 constant:-v13];

  v14 = [v2 bottomAnchor];
  v15 = [v0 contentView];
  v16 = [v15 bottomAnchor];

  sub_1004313D0();
  v63 = [v14 constraintEqualToAnchor:v16 constant:-v17];

  v18 = *&v0[OBJC_IVAR____TtC10FitnessApp25TrendingDownTableViewCell_view];
  v19 = [v18 leadingAnchor];
  v20 = [v2 leadingAnchor];
  v61 = [v19 constraintEqualToAnchor:v20];

  v21 = [v18 trailingAnchor];
  v22 = [v2 trailingAnchor];
  v59 = [v21 constraintEqualToAnchor:v22];

  v23 = [v18 topAnchor];
  v24 = [v2 topAnchor];
  v57 = [v23 constraintEqualToAnchor:v24];

  v25 = *&v1[OBJC_IVAR____TtC10FitnessApp25TrendingDownTableViewCell_detailLabel];
  v26 = [v25 topAnchor];
  v27 = [v18 bottomAnchor];
  v56 = [v26 constraintEqualToAnchor:v27 constant:-14.0];

  v28 = [v25 leadingAnchor];
  v29 = [*&v18[OBJC_IVAR____TtC10FitnessApp19TrendListMetricView_titleLabel] leadingAnchor];
  v55 = [v28 constraintEqualToAnchor:v29];

  v30 = [v25 trailingAnchor];
  v31 = [v2 trailingAnchor];
  v76 = [v30 constraintEqualToAnchor:v31 constant:-16.0];

  v32 = [v25 bottomAnchor];
  v33 = [v2 bottomAnchor];
  v75 = [v32 constraintEqualToAnchor:v33 constant:-14.0];

  LODWORD(v34) = 1148846080;
  [v25 setContentHuggingPriority:1 forAxis:v34];
  LODWORD(v35) = 1148846080;
  [v25 setContentCompressionResistancePriority:1 forAxis:v35];
  v36 = *&v1[OBJC_IVAR____TtC10FitnessApp25TrendingDownTableViewCell_button];
  v37 = [v36 leadingAnchor];
  v38 = [v2 leadingAnchor];
  v74 = [v37 constraintEqualToAnchor:v38];

  v39 = [v36 trailingAnchor];
  v40 = [v2 trailingAnchor];
  v73 = [v39 constraintEqualToAnchor:v40];

  v41 = [v36 topAnchor];
  v42 = [v2 topAnchor];
  v72 = [v41 constraintEqualToAnchor:v42];

  v43 = [v36 bottomAnchor];
  v44 = [v2 bottomAnchor];
  v71 = [v43 constraintEqualToAnchor:v44];

  v54 = objc_opt_self();
  sub_100140278(&unk_1008E4E20);
  v45 = swift_allocObject();
  *(v45 + 16) = xmmword_1006E1300;
  *(v45 + 32) = v69;
  *(v45 + 40) = v67;
  *(v45 + 48) = v65;
  *(v45 + 56) = v63;
  *(v45 + 64) = v61;
  *(v45 + 72) = v59;
  *(v45 + 80) = v57;
  *(v45 + 88) = v56;
  *(v45 + 96) = v55;
  *(v45 + 104) = v76;
  *(v45 + 112) = v75;
  *(v45 + 120) = v74;
  *(v45 + 128) = v73;
  *(v45 + 136) = v72;
  *(v45 + 144) = v71;
  sub_1000059F8(0, &qword_1008DC980);
  v70 = v69;
  v68 = v67;
  v66 = v65;
  v64 = v63;
  v62 = v61;
  v60 = v59;
  v58 = v57;
  v46 = v56;
  v47 = v55;
  v48 = v76;
  v49 = v75;
  v50 = v74;
  v51 = v73;
  v52 = v72;
  v53 = v71;
  v77.super.isa = Array._bridgeToObjectiveC()().super.isa;

  [v54 activateConstraints:v77.super.isa];
}

uint64_t sub_10025CAD8(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC10FitnessApp25TrendingDownTableViewCell_insetContentView;
  v5 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
  *(v2 + v4) = v5;
  v6 = OBJC_IVAR____TtC10FitnessApp25TrendingDownTableViewCell_view;
  type metadata accessor for TrendListMetricView();
  *(v2 + v6) = sub_10065AF60();
  v7 = OBJC_IVAR____TtC10FitnessApp25TrendingDownTableViewCell_detailLabel;
  sub_1000059F8(0, &qword_1008E2D40);
  *(v2 + v7) = sub_100555C98();
  v8 = OBJC_IVAR____TtC10FitnessApp25TrendingDownTableViewCell_button;
  v9 = [objc_opt_self() buttonWithType:0];
  [v9 setTranslatesAutoresizingMaskIntoConstraints:0];

  *(v2 + v8) = v9;
  v10 = (v2 + OBJC_IVAR____TtC10FitnessApp25TrendingDownTableViewCell_selectionFunction);
  *v10 = ASFriendListDisplayMode.id.getter;
  v10[1] = 0;
  *(v2 + OBJC_IVAR____TtC10FitnessApp25TrendingDownTableViewCell_arrowDirection) = 1;
  v11 = OBJC_IVAR____TtC10FitnessApp25TrendingDownTableViewCell_metric;
  v12 = type metadata accessor for TrendListMetric();
  (*(*(v12 - 8) + 56))(v2 + v11, 1, 1, v12);

  sub_10025D068(v2 + v11);
  type metadata accessor for TrendingDownTableViewCell();
  swift_deallocPartialClassInstance();
  return 0;
}

id sub_10025CD18()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TrendingDownTableViewCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}