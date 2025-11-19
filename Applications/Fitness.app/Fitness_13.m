void sub_1001B6418(unsigned __int8 a1)
{
  v2 = v1;
  swift_getObjectType();
  sub_100140278(&unk_1008E4E20);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1006D9830;
  v4 = *&v1[OBJC_IVAR____TtC10FitnessApp17TodayActivityTile_insetContentView];
  v5 = [v4 topAnchor];
  v6 = [v1 contentView];
  v7 = [v6 topAnchor];

  v8 = [v5 constraintEqualToAnchor:v7 constant:sub_1004313D0()];
  *(v3 + 32) = v8;
  v9 = [v4 leadingAnchor];
  v10 = [v1 contentView];
  v11 = [v10 leadingAnchor];

  sub_1004313D0();
  v13 = [v9 constraintEqualToAnchor:v11 constant:v12];

  *(v3 + 40) = v13;
  v14 = [v4 trailingAnchor];
  v15 = [v1 contentView];
  v16 = [v15 trailingAnchor];

  sub_1004313D0();
  v18 = [v14 constraintEqualToAnchor:v16 constant:-v17];

  *(v3 + 48) = v18;
  v19 = [v4 bottomAnchor];
  v20 = [v1 contentView];
  v21 = [v20 bottomAnchor];

  sub_1004313D0();
  v23 = [v19 constraintEqualToAnchor:v21 constant:-v22];

  *(v3 + 56) = v23;
  v24 = *&v2[OBJC_IVAR____TtC10FitnessApp17TodayActivityTile_labelStackView];
  v25 = [v24 topAnchor];
  v26 = [v4 topAnchor];
  v27 = [v25 constraintGreaterThanOrEqualToAnchor:v26 constant:*&qword_1008DF628];

  *(v3 + 64) = v27;
  v28 = [v24 leadingAnchor];
  v29 = [v4 leadingAnchor];
  v30 = [v28 constraintEqualToAnchor:v29 constant:*&qword_1008DF630];

  *(v3 + 72) = v30;
  v31 = [v24 centerYAnchor];
  v32 = *&v2[OBJC_IVAR____TtC10FitnessApp17TodayActivityTile_ringsView];
  v33 = [v32 centerYAnchor];
  v34 = [v31 constraintEqualToAnchor:v33];

  *(v3 + 80) = v34;
  v35 = [v24 bottomAnchor];
  v36 = [v4 bottomAnchor];
  v37 = [v35 constraintLessThanOrEqualToAnchor:v36 constant:-16.0];

  *(v3 + 88) = v37;
  v38 = [v32 topAnchor];
  v39 = [v4 topAnchor];
  v40 = [v38 constraintGreaterThanOrEqualToAnchor:v39 constant:*&qword_1008DF628];

  *(v3 + 96) = v40;
  v41 = [v32 leadingAnchor];
  v42 = [v24 trailingAnchor];
  v43 = [v41 constraintEqualToAnchor:v42 constant:*&qword_1008DF630];

  *(v3 + 104) = v43;
  v44 = [v32 widthAnchor];
  v45 = [v44 constraintEqualToConstant:138.0];

  *(v3 + 112) = v45;
  v46 = [v32 heightAnchor];
  v47 = [v46 constraintEqualToConstant:138.0];

  *(v3 + 120) = v47;
  v48 = [v32 trailingAnchor];
  v49 = [v4 trailingAnchor];
  v50 = [v48 constraintEqualToAnchor:v49 constant:-*&qword_1008DF630];

  *(v3 + 128) = v50;
  v51 = [v32 bottomAnchor];
  v52 = [v4 bottomAnchor];
  v53 = [v51 constraintLessThanOrEqualToAnchor:v52 constant:-16.0];

  *(v3 + 136) = v53;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v54 = sub_1001B4630();
    }

    else
    {
      v54 = sub_1001B4CA4();
    }
  }

  else if (a1)
  {
    v54 = _swiftEmptyArrayStorage;
  }

  else
  {
    v54 = sub_1001B43BC();
  }

  sub_10019EF10(v54);
  *&v2[OBJC_IVAR____TtC10FitnessApp17TodayActivityTile_activeConstraints] = v3;

  v55 = objc_opt_self();
  sub_1000059F8(0, &qword_1008DC980);

  isa = Array._bridgeToObjectiveC()().super.isa;

  [v55 activateConstraints:isa];
}

void sub_1001B6B84(void *a1, int a2, char a3, unsigned __int8 a4, char a5)
{
  v6 = v5;
  v10 = *(v6 + OBJC_IVAR____TtC10FitnessApp17TodayActivityTile_ringsView);
  if (a5 == 2)
  {
    [*(v6 + OBJC_IVAR____TtC10FitnessApp17TodayActivityTile_ringsView) hk_configureWithActivitySummary:a1 animated:1];
  }

  else
  {
    [*(v6 + OBJC_IVAR____TtC10FitnessApp17TodayActivityTile_ringsView) hk_configureWithActivitySummary:a1 isStandaloneFallback:a5 & 1 animated:1 completion:0];
  }

  v11 = *(v6 + OBJC_IVAR____TtC10FitnessApp17TodayActivityTile_formattingManager);
  if (v11)
  {
    v12 = v11;
    if (a1)
    {
      v13 = [a1 _isStandalonePhoneSummary];
      if (a3)
      {
        v14 = 2;
      }

      else
      {
        v14 = 0;
      }

      if (a3)
      {
        v15 = 3;
      }

      else
      {
        v15 = 1;
      }

      if (v13)
      {
        v16 = v15;
      }

      else
      {
        v16 = v14;
      }

      sub_1001B7D04(v16);
      a4 = [a1 paused];
    }

    else
    {
      if (a3)
      {
        v20 = 2;
      }

      else
      {
        v20 = 0;
      }

      sub_1001B7D04(v20);
    }

    v21 = [v10 ringGroup];
    [v21 setIsPaused:a4 & 1];

    v81 = v12;
    v83 = a4;
    if (!a1)
    {
      goto LABEL_28;
    }

    v22 = a1;
    if ([v22 activityMoveMode] == 2)
    {
      if (a4)
      {
        v23 = 0;
        v85 = 0;
      }

      else
      {
        v85 = [v22 appleMoveTime];
        v23 = [v22 appleMoveTimeGoal];
      }

      v24 = *(v6 + OBJC_IVAR____TtC10FitnessApp17TodayActivityTile_moveLabelPair);
      v25 = OBJC_IVAR____TtC10FitnessApp29DayViewTitleAndValueLabelPair_valueLabel;
      v26 = [*(v24 + OBJC_IVAR____TtC10FitnessApp29DayViewTitleAndValueLabelPair_valueLabel) font];
      if (!v26)
      {
        goto LABEL_59;
      }

      v27 = v26;
      v28 = sub_10021E1A0(v85, v23, v26);

      v29 = OBJC_IVAR____TtC10FitnessApp29DayViewTitleAndValueLabelPair_valueAttributedText;
      v30 = *(v24 + OBJC_IVAR____TtC10FitnessApp29DayViewTitleAndValueLabelPair_valueAttributedText);
      *(v24 + OBJC_IVAR____TtC10FitnessApp29DayViewTitleAndValueLabelPair_valueAttributedText) = v28;
      v31 = v28;

      [*(v24 + v25) setText:0];
      [*(v24 + v25) setAttributedText:*(v24 + v29)];

      a4 = v83;
      goto LABEL_35;
    }

    if ((a4 & 1) == 0)
    {
      v85 = [v22 activeEnergyBurned];
      v23 = [v22 activeEnergyBurnedGoal];
    }

    else
    {
LABEL_28:
      v23 = 0;
      v85 = 0;
    }

    v32 = *(v6 + OBJC_IVAR____TtC10FitnessApp17TodayActivityTile_moveLabelPair);
    v33 = OBJC_IVAR____TtC10FitnessApp29DayViewTitleAndValueLabelPair_valueLabel;
    v34 = [*(v32 + OBJC_IVAR____TtC10FitnessApp29DayViewTitleAndValueLabelPair_valueLabel) font];
    if (!v34)
    {
      goto LABEL_56;
    }

    v35 = v34;
    v36 = sub_10021E444(v85, v23, v12, v34);

    v37 = OBJC_IVAR____TtC10FitnessApp29DayViewTitleAndValueLabelPair_valueAttributedText;
    v38 = *(v32 + OBJC_IVAR____TtC10FitnessApp29DayViewTitleAndValueLabelPair_valueAttributedText);
    *(v32 + OBJC_IVAR____TtC10FitnessApp29DayViewTitleAndValueLabelPair_valueAttributedText) = v36;
    v31 = v36;

    [*(v32 + v33) setText:0];
    [*(v32 + v33) setAttributedText:*(v32 + v37)];
LABEL_35:

    v39 = (a1 == 0) | a4;
    if ((a1 == 0) | a4 & 1)
    {
      v40 = 0;
      v86 = 0;
    }

    else
    {
      v86 = [a1 appleExerciseTime];
      v40 = [a1 appleExerciseTimeGoal];
    }

    v41 = *(v6 + OBJC_IVAR____TtC10FitnessApp17TodayActivityTile_exerciseLabelPair);
    v42 = OBJC_IVAR____TtC10FitnessApp29DayViewTitleAndValueLabelPair_valueLabel;
    v43 = [*(v41 + OBJC_IVAR____TtC10FitnessApp29DayViewTitleAndValueLabelPair_valueLabel) font];
    if (v43)
    {
      v44 = v43;
      v80 = v40;
      v45 = sub_10021E1A0(v86, v40, v43);

      v46 = OBJC_IVAR____TtC10FitnessApp29DayViewTitleAndValueLabelPair_valueAttributedText;
      v47 = *(v41 + OBJC_IVAR____TtC10FitnessApp29DayViewTitleAndValueLabelPair_valueAttributedText);
      *(v41 + OBJC_IVAR____TtC10FitnessApp29DayViewTitleAndValueLabelPair_valueAttributedText) = v45;
      v48 = v45;

      [*(v41 + v42) setText:0];
      [*(v41 + v42) setAttributedText:*(v41 + v46)];

      v49 = 0;
      v50 = 0;
      if ((v39 & 1) == 0)
      {
        v50 = [a1 appleStandHours];
        v49 = [a1 appleStandHoursGoal];
      }

      v51 = *(v6 + OBJC_IVAR____TtC10FitnessApp17TodayActivityTile_standLabelPair);
      v52 = OBJC_IVAR____TtC10FitnessApp29DayViewTitleAndValueLabelPair_valueLabel;
      v53 = [*(v51 + OBJC_IVAR____TtC10FitnessApp29DayViewTitleAndValueLabelPair_valueLabel) font];
      if (v53)
      {
        v54 = v53;
        v55 = sub_10021E708(v50, v49, v53);

        v56 = OBJC_IVAR____TtC10FitnessApp29DayViewTitleAndValueLabelPair_valueAttributedText;
        v57 = *(v51 + OBJC_IVAR____TtC10FitnessApp29DayViewTitleAndValueLabelPair_valueAttributedText);
        *(v51 + OBJC_IVAR____TtC10FitnessApp29DayViewTitleAndValueLabelPair_valueAttributedText) = v55;
        v58 = v55;

        [*(v51 + v52) setText:0];
        [*(v51 + v52) setAttributedText:*(v51 + v56)];

        sub_1001B7380(a1, v83 & 1);
        if (!a1)
        {

          goto LABEL_51;
        }

        v59 = a1;
        v60 = v59;
        v61 = &selRef__pushCount;
        if ((a2 & 1) == 0)
        {
          v61 = &selRef_stepCount;
        }

        v62 = [v59 *v61];
        v63 = *(v6 + OBJC_IVAR____TtC10FitnessApp17TodayActivityTile_stepsLabelPair);
        v64 = [*&v63[OBJC_IVAR____TtC10FitnessApp29DayViewTitleAndValueLabelPair_valueLabel] font];
        if (v64)
        {
          v65 = v64;
          v84 = v62;
          v66 = sub_10021E9A4(v62);
          v68 = v67;

          sub_10022F3B0(v66, v68);
          v69 = [v60 _isStandalonePhoneSummary];
          v70 = 1.0;
          if ((v69 & a2) != 0)
          {
            v70 = 0.0;
          }

          [v63 setAlpha:v70];
          v71 = *(v6 + OBJC_IVAR____TtC10FitnessApp17TodayActivityTile_distanceLabelPair);
          v72 = [v60 distanceWalkingRunning];
          v73 = OBJC_IVAR____TtC10FitnessApp29DayViewTitleAndValueLabelPair_valueLabel;
          v74 = [*(v71 + OBJC_IVAR____TtC10FitnessApp29DayViewTitleAndValueLabelPair_valueLabel) font];
          if (v74)
          {
            v75 = v74;
            v76 = sub_10021EA9C(v72, v81, v74);

            v77 = OBJC_IVAR____TtC10FitnessApp29DayViewTitleAndValueLabelPair_valueAttributedText;
            v78 = *(v71 + OBJC_IVAR____TtC10FitnessApp29DayViewTitleAndValueLabelPair_valueAttributedText);
            *(v71 + OBJC_IVAR____TtC10FitnessApp29DayViewTitleAndValueLabelPair_valueAttributedText) = v76;
            v79 = v76;

            [*(v71 + v73) setText:0];
            [*(v71 + v73) setAttributedText:*(v71 + v77)];

LABEL_51:

            return;
          }

          goto LABEL_58;
        }

LABEL_57:
        __break(1u);
LABEL_58:
        __break(1u);
LABEL_59:
        __break(1u);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  static os_log_type_t.error.getter();
  v17 = HKLogActivity;
  sub_100140278(&unk_1008E4E50);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1006D46C0;
  *(v18 + 56) = &type metadata for String;
  *(v18 + 64) = sub_10000A788();
  *(v18 + 32) = 0xD000000000000059;
  *(v18 + 40) = 0x800000010074AE30;
  v19 = v17;
  os_log(_:dso:log:_:_:)();
}

void sub_1001B7380(void *a1, char a2)
{
  v3 = v2;
  if (a1)
  {
    if ([a1 paused])
    {
      goto LABEL_3;
    }

LABEL_13:
    v22 = *(v2 + OBJC_IVAR____TtC10FitnessApp17TodayActivityTile_moveLabelPair);
    sub_1000059F8(0, &qword_1008E7FC0);
    isa = UIColor.init(_colorLiteralRed:green:blue:alpha:)(1.0, 0.0, 0.28631, 1.0).super.isa;
    v24 = UIColor.init(_colorLiteralRed:green:blue:alpha:)(1.0, 0.19608, 0.52941, 1.0).super.isa;
    v25 = type metadata accessor for GradientColors();
    v26 = objc_allocWithZone(v25);
    *&v26[OBJC_IVAR____TtC10FitnessApp14GradientColors_dark] = isa;
    *&v26[OBJC_IVAR____TtC10FitnessApp14GradientColors_light] = v24;
    v63.receiver = v26;
    v63.super_class = v25;
    v27 = objc_msgSendSuper2(&v63, "init");
    v28 = UIColor.init(_colorLiteralRed:green:blue:alpha:)(0.98039, 0.066667, 0.3098, 1.0).super.isa;
    v29 = type metadata accessor for MetricColors();
    v30 = objc_allocWithZone(v29);
    *&v30[OBJC_IVAR____TtC10FitnessApp12MetricColors_gradient] = v27;
    *&v30[OBJC_IVAR____TtC10FitnessApp12MetricColors_text] = v28;
    v62.receiver = v30;
    v62.super_class = v29;
    v31 = objc_msgSendSuper2(&v62, "init");
    v32 = *&v31[OBJC_IVAR____TtC10FitnessApp12MetricColors_text];

    v33 = *(v22 + OBJC_IVAR____TtC10FitnessApp29DayViewTitleAndValueLabelPair_valueLabelTextColor);
    *(v22 + OBJC_IVAR____TtC10FitnessApp29DayViewTitleAndValueLabelPair_valueLabelTextColor) = v32;
    v34 = v32;

    [*(v22 + OBJC_IVAR____TtC10FitnessApp29DayViewTitleAndValueLabelPair_valueLabel) setTextColor:v34];
    v35 = *(v2 + OBJC_IVAR____TtC10FitnessApp17TodayActivityTile_exerciseLabelPair);
    v36 = UIColor.init(_colorLiteralRed:green:blue:alpha:)(0.6, 1.0, 0.0, 1.0).super.isa;
    v37 = UIColor.init(_colorLiteralRed:green:blue:alpha:)(0.84706, 1.0, 0.0, 1.0).super.isa;
    v38 = objc_allocWithZone(v25);
    *&v38[OBJC_IVAR____TtC10FitnessApp14GradientColors_dark] = v36;
    *&v38[OBJC_IVAR____TtC10FitnessApp14GradientColors_light] = v37;
    v61.receiver = v38;
    v61.super_class = v25;
    v39 = objc_msgSendSuper2(&v61, "init");
    v40 = UIColor.init(_colorLiteralRed:green:blue:alpha:)(0.65068, 1.0, 0.0, 1.0).super.isa;
    v41 = objc_allocWithZone(v29);
    *&v41[OBJC_IVAR____TtC10FitnessApp12MetricColors_gradient] = v39;
    *&v41[OBJC_IVAR____TtC10FitnessApp12MetricColors_text] = v40;
    v60.receiver = v41;
    v60.super_class = v29;
    v42 = objc_msgSendSuper2(&v60, "init");
    v43 = *&v42[OBJC_IVAR____TtC10FitnessApp12MetricColors_text];

    v44 = *(v35 + OBJC_IVAR____TtC10FitnessApp29DayViewTitleAndValueLabelPair_valueLabelTextColor);
    *(v35 + OBJC_IVAR____TtC10FitnessApp29DayViewTitleAndValueLabelPair_valueLabelTextColor) = v43;
    v45 = v43;

    [*(v35 + OBJC_IVAR____TtC10FitnessApp29DayViewTitleAndValueLabelPair_valueLabel) setTextColor:v45];
    v46 = *(v2 + OBJC_IVAR____TtC10FitnessApp17TodayActivityTile_standLabelPair);
    v47 = UIColor.init(_colorLiteralRed:green:blue:alpha:)(0.0, 0.84706, 1.0, 1.0).super.isa;
    v48 = UIColor.init(_colorLiteralRed:green:blue:alpha:)(0.0, 1.0, 0.62727, 1.0).super.isa;
    v49 = objc_allocWithZone(v25);
    *&v49[OBJC_IVAR____TtC10FitnessApp14GradientColors_dark] = v47;
    *&v49[OBJC_IVAR____TtC10FitnessApp14GradientColors_light] = v48;
    v59.receiver = v49;
    v59.super_class = v25;
    v50 = objc_msgSendSuper2(&v59, "init");
    v51 = UIColor.init(_colorLiteralRed:green:blue:alpha:)(0.0, 1.0, 0.96471, 1.0).super.isa;
    v52 = objc_allocWithZone(v29);
    *&v52[OBJC_IVAR____TtC10FitnessApp12MetricColors_gradient] = v50;
    *&v52[OBJC_IVAR____TtC10FitnessApp12MetricColors_text] = v51;
    v58.receiver = v52;
    v58.super_class = v29;
    v53 = objc_msgSendSuper2(&v58, "init");
    v54 = *&v53[OBJC_IVAR____TtC10FitnessApp12MetricColors_text];

    v55 = *(v46 + OBJC_IVAR____TtC10FitnessApp29DayViewTitleAndValueLabelPair_valueLabelTextColor);
    *(v46 + OBJC_IVAR____TtC10FitnessApp29DayViewTitleAndValueLabelPair_valueLabelTextColor) = v54;
    v56 = v54;

    [*(v46 + OBJC_IVAR____TtC10FitnessApp29DayViewTitleAndValueLabelPair_valueLabel) setTextColor:v56];
    return;
  }

  if ((a2 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_3:
  v4 = *(v2 + OBJC_IVAR____TtC10FitnessApp17TodayActivityTile_moveLabelPair);
  v5 = objc_opt_self();
  v6 = [v5 grayColors];
  if (!v6)
  {
    __break(1u);
    goto LABEL_15;
  }

  v7 = v6;
  v8 = [v6 nonGradientTextColor];

  if (!v8)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v9 = *(v4 + OBJC_IVAR____TtC10FitnessApp29DayViewTitleAndValueLabelPair_valueLabelTextColor);
  *(v4 + OBJC_IVAR____TtC10FitnessApp29DayViewTitleAndValueLabelPair_valueLabelTextColor) = v8;
  v10 = v8;

  [*(v4 + OBJC_IVAR____TtC10FitnessApp29DayViewTitleAndValueLabelPair_valueLabel) setTextColor:v10];
  v11 = *(v3 + OBJC_IVAR____TtC10FitnessApp17TodayActivityTile_exerciseLabelPair);
  v12 = [v5 grayColors];
  if (!v12)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v13 = v12;
  v14 = [v12 nonGradientTextColor];

  if (!v14)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v15 = *(v11 + OBJC_IVAR____TtC10FitnessApp29DayViewTitleAndValueLabelPair_valueLabelTextColor);
  *(v11 + OBJC_IVAR____TtC10FitnessApp29DayViewTitleAndValueLabelPair_valueLabelTextColor) = v14;
  v16 = v14;

  [*(v11 + OBJC_IVAR____TtC10FitnessApp29DayViewTitleAndValueLabelPair_valueLabel) setTextColor:v16];
  v17 = *(v3 + OBJC_IVAR____TtC10FitnessApp17TodayActivityTile_standLabelPair);
  v18 = [v5 grayColors];
  if (!v18)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v19 = v18;
  v20 = [v18 nonGradientTextColor];

  if (!v20)
  {
LABEL_19:
    __break(1u);
    return;
  }

  v21 = *(v17 + OBJC_IVAR____TtC10FitnessApp29DayViewTitleAndValueLabelPair_valueLabelTextColor);
  *(v17 + OBJC_IVAR____TtC10FitnessApp29DayViewTitleAndValueLabelPair_valueLabelTextColor) = v20;
  v57 = v20;

  [*(v17 + OBJC_IVAR____TtC10FitnessApp29DayViewTitleAndValueLabelPair_valueLabel) setTextColor:v57];
}

void sub_1001B79A0(char a1)
{
  v2 = &selRef_wheelchairSpriteSheet;
  if ((a1 & 1) == 0)
  {
    v2 = &selRef_defaultSpriteSheet;
  }

  v28 = v2;
  if (a1)
  {
    v3 = 0.0;
  }

  else
  {
    v3 = 1.0;
  }

  v4 = *(v1 + OBJC_IVAR____TtC10FitnessApp17TodayActivityTile_standLabelPair);
  v5 = objc_opt_self();
  v6 = [v5 mainBundle];
  v7 = String._bridgeToObjectiveC()();

  v8 = [v6 localizedStringForKey:v7 value:0 table:0];

  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;

  v12 = (v4 + OBJC_IVAR____TtC10FitnessApp29DayViewTitleAndValueLabelPair_titleText);
  *v12 = v9;
  v12[1] = v11;

  v13 = *(v4 + OBJC_IVAR____TtC10FitnessApp29DayViewTitleAndValueLabelPair_titleLabel);

  v14 = String._bridgeToObjectiveC()();

  [v13 setText:v14];

  v15 = *(v1 + OBJC_IVAR____TtC10FitnessApp17TodayActivityTile_stepsLabelPair);
  v16 = [v5 mainBundle];
  v17 = String._bridgeToObjectiveC()();

  v18 = [v16 localizedStringForKey:v17 value:0 table:0];

  v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v21 = v20;

  v22 = (v15 + OBJC_IVAR____TtC10FitnessApp29DayViewTitleAndValueLabelPair_titleText);
  *v22 = v19;
  v22[1] = v21;

  v23 = *(v15 + OBJC_IVAR____TtC10FitnessApp29DayViewTitleAndValueLabelPair_titleLabel);

  v24 = String._bridgeToObjectiveC()();

  [v23 setText:v24];

  [*(v1 + OBJC_IVAR____TtC10FitnessApp17TodayActivityTile_distanceLabelPair) setAlpha:v3];
  v25 = [objc_opt_self() *v28];
  v26 = *(v1 + OBJC_IVAR____TtC10FitnessApp17TodayActivityTile_ringsView);
  v27 = [v26 ringGroup];
  [v27 setSpriteSheet:v25];

  v29 = [v26 ringGroup];
  [v29 playSpriteAnimation];
}

id sub_1001B7D04(unsigned __int8 a1)
{
  result = swift_getObjectType();
  v4 = OBJC_IVAR____TtC10FitnessApp17TodayActivityTile_currentDisplayStyle;
  if (v1[OBJC_IVAR____TtC10FitnessApp17TodayActivityTile_currentDisplayStyle] <= 1u)
  {
    if (!v1[OBJC_IVAR____TtC10FitnessApp17TodayActivityTile_currentDisplayStyle])
    {
      if (a1 <= 1u)
      {
        if (!a1)
        {
          return result;
        }

        goto LABEL_19;
      }

      if (a1 != 2)
      {
        sub_1001B808C(v1);
        goto LABEL_19;
      }

LABEL_28:
      sub_1001B808C(v1);
      goto LABEL_25;
    }

    if (a1 > 1u)
    {
      if (a1 != 2)
      {
        goto LABEL_28;
      }

      sub_1001B808C(v1);
    }

    else if (a1)
    {
      return result;
    }

LABEL_23:
    v5 = *&v1[OBJC_IVAR____TtC10FitnessApp17TodayActivityTile_labelStackView];
    [v5 removeArrangedSubview:*&v1[OBJC_IVAR____TtC10FitnessApp17TodayActivityTile_stepsLabelPair]];
    [v5 removeArrangedSubview:*&v1[OBJC_IVAR____TtC10FitnessApp17TodayActivityTile_distanceLabelPair]];
    [v5 addArrangedSubview:*&v1[OBJC_IVAR____TtC10FitnessApp17TodayActivityTile_exerciseLabelPair]];
    v6 = OBJC_IVAR____TtC10FitnessApp17TodayActivityTile_standLabelPair;
    goto LABEL_24;
  }

  if (v1[OBJC_IVAR____TtC10FitnessApp17TodayActivityTile_currentDisplayStyle] != 2)
  {
    if (a1 > 1u)
    {
      if (a1 != 2)
      {
        return result;
      }

      goto LABEL_23;
    }

    if (!a1)
    {
      sub_1001B7F6C(v1);
      goto LABEL_23;
    }

LABEL_27:
    sub_1001B7F6C(v1);
    goto LABEL_25;
  }

  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      return result;
    }

    goto LABEL_19;
  }

  if (!a1)
  {
    goto LABEL_27;
  }

  sub_1001B7F6C(v1);
LABEL_19:
  [*&v1[OBJC_IVAR____TtC10FitnessApp17TodayActivityTile_exerciseLabelPair] removeFromSuperview];
  [*&v1[OBJC_IVAR____TtC10FitnessApp17TodayActivityTile_standLabelPair] removeFromSuperview];
  v5 = *&v1[OBJC_IVAR____TtC10FitnessApp17TodayActivityTile_labelStackView];
  [v5 addArrangedSubview:*&v1[OBJC_IVAR____TtC10FitnessApp17TodayActivityTile_stepsLabelPair]];
  v6 = OBJC_IVAR____TtC10FitnessApp17TodayActivityTile_distanceLabelPair;
LABEL_24:
  [v5 addArrangedSubview:*&v1[v6]];
LABEL_25:
  v7 = objc_opt_self();
  sub_1000059F8(0, &qword_1008DC980);

  isa = Array._bridgeToObjectiveC()().super.isa;

  [v7 deactivateConstraints:isa];

  sub_1001B6418(a1);
  result = [v1 invalidateIntrinsicContentSize];
  v1[v4] = a1;
  return result;
}

void sub_1001B7F6C(uint64_t a1)
{
  [*(a1 + OBJC_IVAR____TtC10FitnessApp17TodayActivityTile_firstPairSeparatorView) setHidden:1];
  [*(a1 + OBJC_IVAR____TtC10FitnessApp17TodayActivityTile_secondPairSeparatorView) setHidden:1];
  [*(a1 + OBJC_IVAR____TtC10FitnessApp17TodayActivityTile_bottomSeparatorView) setHidden:1];
  v2 = *(a1 + OBJC_IVAR____TtC10FitnessApp17TodayActivityTile_thirdPairSeparatorView);
  v3 = [objc_opt_self() blackColor];
  [v2 setBackgroundColor:v3];

  v4 = *(a1 + OBJC_IVAR____TtC10FitnessApp17TodayActivityTile_insetContentView);
  v5 = sub_1004313A0();
  [v4 setBackgroundColor:v5];

  qword_1008DF628 = 0x4034000000000000;
  qword_1008DF630 = 0x4030000000000000;
  qword_1008DF638 = 0x4022000000000000;
}

void sub_1001B808C(uint64_t a1)
{
  [*(a1 + OBJC_IVAR____TtC10FitnessApp17TodayActivityTile_firstPairSeparatorView) setHidden:0];
  [*(a1 + OBJC_IVAR____TtC10FitnessApp17TodayActivityTile_secondPairSeparatorView) setHidden:0];
  [*(a1 + OBJC_IVAR____TtC10FitnessApp17TodayActivityTile_bottomSeparatorView) setHidden:0];
  v2 = *(a1 + OBJC_IVAR____TtC10FitnessApp17TodayActivityTile_thirdPairSeparatorView);
  sub_1000059F8(0, &qword_1008E7FC0);
  isa = UIColor.init(_colorLiteralRed:green:blue:alpha:)(0.28627, 0.28627, 0.28627, 1.0).super.isa;
  [v2 setBackgroundColor:isa];

  v4 = *(a1 + OBJC_IVAR____TtC10FitnessApp17TodayActivityTile_insetContentView);
  v5 = [objc_opt_self() clearColor];
  [v4 setBackgroundColor:v5];

  qword_1008DF628 = 0;
  qword_1008DF630 = 0x4010000000000000;
  qword_1008DF638 = 0;
}

id sub_1001B81C8()
{
  v1 = v0;

  v2 = *(v0 + OBJC_IVAR____TtC10FitnessApp17TodayActivityTile_moveLabelPair);
  v3 = OBJC_IVAR____TtC10FitnessApp29DayViewTitleAndValueLabelPair_valueAttributedText;
  v4 = *(v2 + OBJC_IVAR____TtC10FitnessApp29DayViewTitleAndValueLabelPair_valueAttributedText);
  *(v2 + OBJC_IVAR____TtC10FitnessApp29DayViewTitleAndValueLabelPair_valueAttributedText) = 0;

  v5 = OBJC_IVAR____TtC10FitnessApp29DayViewTitleAndValueLabelPair_valueLabel;
  [*(v2 + OBJC_IVAR____TtC10FitnessApp29DayViewTitleAndValueLabelPair_valueLabel) setText:0];
  [*(v2 + v5) setAttributedText:*(v2 + v3)];
  v6 = *(v1 + OBJC_IVAR____TtC10FitnessApp17TodayActivityTile_exerciseLabelPair);
  v7 = OBJC_IVAR____TtC10FitnessApp29DayViewTitleAndValueLabelPair_valueAttributedText;
  v8 = *(v6 + OBJC_IVAR____TtC10FitnessApp29DayViewTitleAndValueLabelPair_valueAttributedText);
  *(v6 + OBJC_IVAR____TtC10FitnessApp29DayViewTitleAndValueLabelPair_valueAttributedText) = 0;

  v9 = OBJC_IVAR____TtC10FitnessApp29DayViewTitleAndValueLabelPair_valueLabel;
  [*(v6 + OBJC_IVAR____TtC10FitnessApp29DayViewTitleAndValueLabelPair_valueLabel) setText:0];
  [*(v6 + v9) setAttributedText:*(v6 + v7)];
  v10 = *(v1 + OBJC_IVAR____TtC10FitnessApp17TodayActivityTile_standLabelPair);
  v11 = OBJC_IVAR____TtC10FitnessApp29DayViewTitleAndValueLabelPair_valueAttributedText;
  v12 = *(v10 + OBJC_IVAR____TtC10FitnessApp29DayViewTitleAndValueLabelPair_valueAttributedText);
  *(v10 + OBJC_IVAR____TtC10FitnessApp29DayViewTitleAndValueLabelPair_valueAttributedText) = 0;

  v13 = OBJC_IVAR____TtC10FitnessApp29DayViewTitleAndValueLabelPair_valueLabel;
  [*(v10 + OBJC_IVAR____TtC10FitnessApp29DayViewTitleAndValueLabelPair_valueLabel) setText:0];
  [*(v10 + v13) setAttributedText:*(v10 + v11)];
  sub_10022F3B0(0, 0);
  v14 = *(v1 + OBJC_IVAR____TtC10FitnessApp17TodayActivityTile_distanceLabelPair);
  v15 = OBJC_IVAR____TtC10FitnessApp29DayViewTitleAndValueLabelPair_valueAttributedText;
  v16 = *(v14 + OBJC_IVAR____TtC10FitnessApp29DayViewTitleAndValueLabelPair_valueAttributedText);
  *(v14 + OBJC_IVAR____TtC10FitnessApp29DayViewTitleAndValueLabelPair_valueAttributedText) = 0;

  v17 = OBJC_IVAR____TtC10FitnessApp29DayViewTitleAndValueLabelPair_valueLabel;
  [*(v14 + OBJC_IVAR____TtC10FitnessApp29DayViewTitleAndValueLabelPair_valueLabel) setText:0];
  v18 = *(v14 + v17);
  v19 = *(v14 + v15);

  return [v18 setAttributedText:v19];
}

id sub_1001B8378()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TodayActivityTile();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t getEnumTagSinglePayload for TrendsPairedWatchesAltimeterSupport(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for TrendsPairedWatchesAltimeterSupport(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1001B8630()
{
  result = qword_1008DF6E0;
  if (!qword_1008DF6E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008DF6E0);
  }

  return result;
}

unint64_t sub_1001B8684()
{
  result = [objc_opt_self() sharedBehavior];
  if (result)
  {
    v1 = result;
    v2 = [result fitnessMode];

    if ((v2 - 1) >= 3)
    {
      v3 = static os_log_type_t.fault.getter();
      v4 = HKLogActivity;
      result = os_log_type_enabled(HKLogActivity, v3);
      if (result)
      {
        v5 = v4;
        v6 = swift_slowAlloc();
        v7 = swift_slowAlloc();
        v8 = v7;
        *v6 = 136315138;
        *(v6 + 4) = sub_10000AFDC(0x53746E6572727563, 0xEE007972616D6D75, &v8);
        _os_log_impl(&_mh_execute_header, v5, v3, "%s found unexpected fitness mode; falling back to paired summary", v6, 0xCu);
        sub_100005A40(v7);

        return 0;
      }
    }

    else
    {
      return 0x100u >> (8 * (v2 - 1));
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1001B87E8()
{
  v0 = [objc_opt_self() preferredFontDescriptorWithTextStyle:UIFontTextStyleTitle3];
  sub_100140278(&qword_1008DF6E8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1006D46C0;
  *(inited + 32) = UIFontDescriptorTraitsAttribute;
  sub_100140278(&qword_1008DF6F0);
  v2 = swift_initStackObject();
  *(v2 + 16) = xmmword_1006D46C0;
  *(v2 + 32) = UIFontWeightTrait;
  *(v2 + 40) = UIFontWeightMedium;
  v3 = v0;
  v4 = UIFontDescriptorTraitsAttribute;
  v5 = UIFontWeightTrait;
  v6 = sub_1004C9E88(v2);
  swift_setDeallocating();
  sub_10000EA04(v2 + 32, &qword_1008DF6F8);
  *(inited + 64) = sub_100140278(&qword_1008DF700);
  *(inited + 40) = v6;
  sub_1004C9864(inited);
  swift_setDeallocating();
  sub_10000EA04(inited + 32, &qword_1008DF708);
  type metadata accessor for AttributeName(0);
  sub_1001B9B3C();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v8 = [v3 fontDescriptorByAddingAttributes:isa];

  v9 = [v8 fontDescriptorWithDesign:UIFontDescriptorSystemDesignRounded];
  if (v9)
  {
    v10 = v9;

    v8 = v10;
  }

  v11 = [objc_opt_self() fontWithDescriptor:v8 size:0.0];

  return v11;
}

void sub_1001B8A34()
{
  v1 = v0;
  *(v0 + OBJC_IVAR____TtC10FitnessApp17TodayActivityTile_formattingManager) = 0;
  v2 = OBJC_IVAR____TtC10FitnessApp17TodayActivityTile_insetContentView;
  v3 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  *(v1 + v2) = v3;
  v4 = type metadata accessor for DayViewTitleAndValueLabelPair();
  v5 = [objc_allocWithZone(v4) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v6 = objc_opt_self();
  v7 = [v6 mainBundle];
  v8 = String._bridgeToObjectiveC()();
  v9 = [v7 localizedStringForKey:v8 value:0 table:0];

  v10 = v9;
  if (!v9)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = String._bridgeToObjectiveC()();
  }

  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;

  v14 = &v5[OBJC_IVAR____TtC10FitnessApp29DayViewTitleAndValueLabelPair_titleText];
  *v14 = v11;
  v14[1] = v13;

  v15 = OBJC_IVAR____TtC10FitnessApp29DayViewTitleAndValueLabelPair_titleLabel;
  v16 = *&v5[OBJC_IVAR____TtC10FitnessApp29DayViewTitleAndValueLabelPair_titleLabel];

  [v16 setText:v10];

  if (qword_1008DA5A8 != -1)
  {
    swift_once();
  }

  v17 = qword_1008DF620;
  [*&v5[v15] setFont:qword_1008DF620];
  v18 = sub_1001B87E8();
  [*&v5[OBJC_IVAR____TtC10FitnessApp29DayViewTitleAndValueLabelPair_valueLabel] setFont:v18];

  v19 = sub_1001B87E8();
  v20 = FIUICurrentLanguageRequiresTallScript();
  v21 = 20.0;
  if (v20)
  {
    v21 = 23.0;
  }

  [v19 _scaledValueForValue:v21];
  v23 = v22;

  v24 = OBJC_IVAR____TtC10FitnessApp29DayViewTitleAndValueLabelPair_valueBaseline;
  *&v5[OBJC_IVAR____TtC10FitnessApp29DayViewTitleAndValueLabelPair_valueBaseline] = v23;
  v25 = *&v5[OBJC_IVAR____TtC10FitnessApp29DayViewTitleAndValueLabelPair_titleBaselineConstraint];
  if (v25)
  {
    [v25 setConstant:*&v5[OBJC_IVAR____TtC10FitnessApp29DayViewTitleAndValueLabelPair_titleBaseline]];
  }

  v26 = *&v5[OBJC_IVAR____TtC10FitnessApp29DayViewTitleAndValueLabelPair_valueBaselineConstraint];
  if (v26)
  {
    [v26 setConstant:*&v5[v24]];
  }

  v27 = OBJC_IVAR____TtC10FitnessApp17TodayActivityTile_moveLabelPair;
  [v5 setNeedsLayout];
  [v5 invalidateIntrinsicContentSize];
  *&v5[OBJC_IVAR____TtC10FitnessApp29DayViewTitleAndValueLabelPair_intrinsicContentSizeBottomPadding] = 0x4028000000000000;
  v28 = v5;
  [v28 setNeedsLayout];
  [v28 invalidateIntrinsicContentSize];
  [v28 setTranslatesAutoresizingMaskIntoConstraints:0];

  *(v1 + v27) = v28;
  v29 = [objc_allocWithZone(v4) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v30 = [v6 mainBundle];
  v31 = String._bridgeToObjectiveC()();
  v32 = [v30 localizedStringForKey:v31 value:0 table:0];

  v33 = v32;
  if (!v32)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v33 = String._bridgeToObjectiveC()();
  }

  v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v36 = v35;

  v37 = &v29[OBJC_IVAR____TtC10FitnessApp29DayViewTitleAndValueLabelPair_titleText];
  *v37 = v34;
  v37[1] = v36;

  v38 = OBJC_IVAR____TtC10FitnessApp29DayViewTitleAndValueLabelPair_titleLabel;
  v39 = *&v29[OBJC_IVAR____TtC10FitnessApp29DayViewTitleAndValueLabelPair_titleLabel];

  [v39 setText:v33];

  [*&v29[v38] setFont:v17];
  v40 = sub_1001B87E8();
  [*&v29[OBJC_IVAR____TtC10FitnessApp29DayViewTitleAndValueLabelPair_valueLabel] setFont:v40];

  v41 = sub_1001B87E8();
  v42 = FIUICurrentLanguageRequiresTallScript();
  v43 = 20.0;
  if (v42)
  {
    v43 = 23.0;
  }

  [v41 _scaledValueForValue:v43];
  v45 = v44;

  v46 = OBJC_IVAR____TtC10FitnessApp29DayViewTitleAndValueLabelPair_valueBaseline;
  *&v29[OBJC_IVAR____TtC10FitnessApp29DayViewTitleAndValueLabelPair_valueBaseline] = v45;
  v47 = *&v29[OBJC_IVAR____TtC10FitnessApp29DayViewTitleAndValueLabelPair_titleBaselineConstraint];
  if (v47)
  {
    [v47 setConstant:*&v29[OBJC_IVAR____TtC10FitnessApp29DayViewTitleAndValueLabelPair_titleBaseline]];
  }

  v48 = *&v29[OBJC_IVAR____TtC10FitnessApp29DayViewTitleAndValueLabelPair_valueBaselineConstraint];
  if (v48)
  {
    [v48 setConstant:*&v29[v46]];
  }

  v49 = OBJC_IVAR____TtC10FitnessApp17TodayActivityTile_exerciseLabelPair;
  [v29 setNeedsLayout];
  [v29 invalidateIntrinsicContentSize];
  *&v29[OBJC_IVAR____TtC10FitnessApp29DayViewTitleAndValueLabelPair_intrinsicContentSizeBottomPadding] = 0x4028000000000000;
  v50 = v29;
  [v50 setNeedsLayout];
  [v50 invalidateIntrinsicContentSize];
  [v50 setTranslatesAutoresizingMaskIntoConstraints:0];

  *(v1 + v49) = v50;
  v51 = [objc_allocWithZone(v4) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v52 = [v6 mainBundle];
  v53 = String._bridgeToObjectiveC()();
  v54 = [v52 localizedStringForKey:v53 value:0 table:0];

  v55 = v54;
  if (!v54)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v55 = String._bridgeToObjectiveC()();
  }

  v56 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v58 = v57;

  v59 = &v51[OBJC_IVAR____TtC10FitnessApp29DayViewTitleAndValueLabelPair_titleText];
  *v59 = v56;
  v59[1] = v58;

  v60 = OBJC_IVAR____TtC10FitnessApp29DayViewTitleAndValueLabelPair_titleLabel;
  v61 = *&v51[OBJC_IVAR____TtC10FitnessApp29DayViewTitleAndValueLabelPair_titleLabel];

  [v61 setText:v55];

  [*&v51[v60] setFont:v17];
  v62 = sub_1001B87E8();
  [*&v51[OBJC_IVAR____TtC10FitnessApp29DayViewTitleAndValueLabelPair_valueLabel] setFont:v62];

  v63 = sub_1001B87E8();
  v64 = FIUICurrentLanguageRequiresTallScript();
  v65 = 20.0;
  if (v64)
  {
    v65 = 23.0;
  }

  [v63 _scaledValueForValue:v65];
  v67 = v66;

  v68 = OBJC_IVAR____TtC10FitnessApp29DayViewTitleAndValueLabelPair_valueBaseline;
  *&v51[OBJC_IVAR____TtC10FitnessApp29DayViewTitleAndValueLabelPair_valueBaseline] = v67;
  v69 = *&v51[OBJC_IVAR____TtC10FitnessApp29DayViewTitleAndValueLabelPair_titleBaselineConstraint];
  if (v69)
  {
    [v69 setConstant:*&v51[OBJC_IVAR____TtC10FitnessApp29DayViewTitleAndValueLabelPair_titleBaseline]];
  }

  v70 = *&v51[OBJC_IVAR____TtC10FitnessApp29DayViewTitleAndValueLabelPair_valueBaselineConstraint];
  if (v70)
  {
    [v70 setConstant:*&v51[v68]];
  }

  v71 = OBJC_IVAR____TtC10FitnessApp17TodayActivityTile_standLabelPair;
  [v51 setNeedsLayout];
  [v51 invalidateIntrinsicContentSize];
  *&v51[OBJC_IVAR____TtC10FitnessApp29DayViewTitleAndValueLabelPair_intrinsicContentSizeBottomPadding] = 0x4028000000000000;
  v72 = v51;
  [v72 setNeedsLayout];
  [v72 invalidateIntrinsicContentSize];
  [v72 setTranslatesAutoresizingMaskIntoConstraints:0];

  *(v1 + v71) = v72;
  v73 = [objc_allocWithZone(v4) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v74 = [v6 mainBundle];
  v75 = String._bridgeToObjectiveC()();
  v76 = [v74 localizedStringForKey:v75 value:0 table:0];

  v77 = v76;
  if (!v76)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v77 = String._bridgeToObjectiveC()();
  }

  v78 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v80 = v79;

  v81 = &v73[OBJC_IVAR____TtC10FitnessApp29DayViewTitleAndValueLabelPair_titleText];
  *v81 = v78;
  v81[1] = v80;

  v82 = OBJC_IVAR____TtC10FitnessApp29DayViewTitleAndValueLabelPair_titleLabel;
  v83 = *&v73[OBJC_IVAR____TtC10FitnessApp29DayViewTitleAndValueLabelPair_titleLabel];

  [v83 setText:v77];

  [*&v73[v82] setFont:v17];
  v84 = sub_1001B87E8();
  v85 = OBJC_IVAR____TtC10FitnessApp29DayViewTitleAndValueLabelPair_valueLabel;
  [*&v73[OBJC_IVAR____TtC10FitnessApp29DayViewTitleAndValueLabelPair_valueLabel] setFont:v84];

  v86 = objc_opt_self();
  v87 = [v86 systemGrayColor];
  v88 = *&v73[OBJC_IVAR____TtC10FitnessApp29DayViewTitleAndValueLabelPair_valueLabelTextColor];
  *&v73[OBJC_IVAR____TtC10FitnessApp29DayViewTitleAndValueLabelPair_valueLabelTextColor] = v87;
  v89 = v87;

  [*&v73[v85] setTextColor:v89];
  v90 = sub_1001B87E8();
  v91 = FIUICurrentLanguageRequiresTallScript();
  v92 = 20.0;
  if (v91)
  {
    v92 = 23.0;
  }

  [v90 _scaledValueForValue:v92];
  v94 = v93;

  v95 = OBJC_IVAR____TtC10FitnessApp29DayViewTitleAndValueLabelPair_valueBaseline;
  *&v73[OBJC_IVAR____TtC10FitnessApp29DayViewTitleAndValueLabelPair_valueBaseline] = v94;
  v96 = *&v73[OBJC_IVAR____TtC10FitnessApp29DayViewTitleAndValueLabelPair_titleBaselineConstraint];
  if (v96)
  {
    [v96 setConstant:*&v73[OBJC_IVAR____TtC10FitnessApp29DayViewTitleAndValueLabelPair_titleBaseline]];
  }

  v97 = *&v73[OBJC_IVAR____TtC10FitnessApp29DayViewTitleAndValueLabelPair_valueBaselineConstraint];
  if (v97)
  {
    [v97 setConstant:*&v73[v95]];
  }

  v98 = OBJC_IVAR____TtC10FitnessApp17TodayActivityTile_stepsLabelPair;
  [v73 setNeedsLayout];
  [v73 invalidateIntrinsicContentSize];
  *&v73[OBJC_IVAR____TtC10FitnessApp29DayViewTitleAndValueLabelPair_intrinsicContentSizeBottomPadding] = 0x4028000000000000;
  v99 = v73;
  [v99 setNeedsLayout];
  [v99 invalidateIntrinsicContentSize];
  [v99 setTranslatesAutoresizingMaskIntoConstraints:0];

  *(v1 + v98) = v99;
  v100 = [objc_allocWithZone(v4) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v101 = [v6 mainBundle];
  v102 = String._bridgeToObjectiveC()();
  v103 = [v101 localizedStringForKey:v102 value:0 table:0];

  v104 = v103;
  if (!v103)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v104 = String._bridgeToObjectiveC()();
  }

  v105 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v107 = v106;

  v108 = &v100[OBJC_IVAR____TtC10FitnessApp29DayViewTitleAndValueLabelPair_titleText];
  *v108 = v105;
  v108[1] = v107;

  v109 = OBJC_IVAR____TtC10FitnessApp29DayViewTitleAndValueLabelPair_titleLabel;
  v110 = *&v100[OBJC_IVAR____TtC10FitnessApp29DayViewTitleAndValueLabelPair_titleLabel];

  [v110 setText:v104];

  [*&v100[v109] setFont:v17];
  v111 = sub_1001B87E8();
  v112 = OBJC_IVAR____TtC10FitnessApp29DayViewTitleAndValueLabelPair_valueLabel;
  [*&v100[OBJC_IVAR____TtC10FitnessApp29DayViewTitleAndValueLabelPair_valueLabel] setFont:v111];

  v113 = [v86 systemGrayColor];
  v114 = *&v100[OBJC_IVAR____TtC10FitnessApp29DayViewTitleAndValueLabelPair_valueLabelTextColor];
  *&v100[OBJC_IVAR____TtC10FitnessApp29DayViewTitleAndValueLabelPair_valueLabelTextColor] = v113;
  v115 = v113;

  [*&v100[v112] setTextColor:v115];
  v116 = sub_1001B87E8();
  v117 = FIUICurrentLanguageRequiresTallScript();
  v118 = 20.0;
  if (v117)
  {
    v118 = 23.0;
  }

  [v116 _scaledValueForValue:v118];
  v120 = v119;

  v121 = OBJC_IVAR____TtC10FitnessApp29DayViewTitleAndValueLabelPair_valueBaseline;
  *&v100[OBJC_IVAR____TtC10FitnessApp29DayViewTitleAndValueLabelPair_valueBaseline] = v120;
  v122 = *&v100[OBJC_IVAR____TtC10FitnessApp29DayViewTitleAndValueLabelPair_titleBaselineConstraint];
  if (v122)
  {
    [v122 setConstant:*&v100[OBJC_IVAR____TtC10FitnessApp29DayViewTitleAndValueLabelPair_titleBaseline]];
  }

  v123 = *&v100[OBJC_IVAR____TtC10FitnessApp29DayViewTitleAndValueLabelPair_valueBaselineConstraint];
  if (v123)
  {
    [v123 setConstant:*&v100[v121]];
  }

  v124 = OBJC_IVAR____TtC10FitnessApp17TodayActivityTile_distanceLabelPair;
  [v100 setNeedsLayout];
  [v100 invalidateIntrinsicContentSize];
  *&v100[OBJC_IVAR____TtC10FitnessApp29DayViewTitleAndValueLabelPair_intrinsicContentSizeBottomPadding] = 0x4028000000000000;
  v125 = v100;
  [v125 setNeedsLayout];
  [v125 invalidateIntrinsicContentSize];
  [v125 setTranslatesAutoresizingMaskIntoConstraints:0];

  *(v1 + v124) = v125;
  v126 = OBJC_IVAR____TtC10FitnessApp17TodayActivityTile_labelStackView;
  v127 = [objc_allocWithZone(UIStackView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  [v127 setAxis:1];
  [v127 setDistribution:3];
  [v127 setTranslatesAutoresizingMaskIntoConstraints:0];
  *(v1 + v126) = v127;
  v128 = OBJC_IVAR____TtC10FitnessApp17TodayActivityTile_ringsView;
  v129 = [objc_opt_self() activityRingGroupForRingType:3];
  v130 = [v129 forCompanion];

  v131 = [objc_allocWithZone(ARUIRingsView) initWithRingGroup:v130];
  v132 = ARUIRingsView.withRingGroupDiameter(_:)();

  v133 = ARUIRingsView.withRingGroupThickness(_:)();
  v134 = ARUIRingsView.withRingGroupInterspacing(_:)();

  v135 = v134;
  v136 = [v86 clearColor];
  [v135 setBackgroundColor:v136];

  v137 = ARUIRingsView.nilRings(animated:)();
  [v137 setTranslatesAutoresizingMaskIntoConstraints:0];
  *(v1 + v128) = v137;
  v138 = OBJC_IVAR____TtC10FitnessApp17TodayActivityTile_firstPairSeparatorView;
  v139 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  sub_1000059F8(0, &qword_1008E7FC0);
  isa = UIColor.init(_colorLiteralRed:green:blue:alpha:)(0.28627, 0.28627, 0.28627, 1.0).super.isa;
  [v139 setBackgroundColor:isa];

  [v139 setHidden:1];
  [v139 setTranslatesAutoresizingMaskIntoConstraints:0];
  *(v1 + v138) = v139;
  v141 = OBJC_IVAR____TtC10FitnessApp17TodayActivityTile_secondPairSeparatorView;
  v142 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v143 = UIColor.init(_colorLiteralRed:green:blue:alpha:)(0.28627, 0.28627, 0.28627, 1.0).super.isa;
  [v142 setBackgroundColor:v143];

  [v142 setHidden:1];
  [v142 setTranslatesAutoresizingMaskIntoConstraints:0];
  *(v1 + v141) = v142;
  v144 = OBJC_IVAR____TtC10FitnessApp17TodayActivityTile_thirdPairSeparatorView;
  v145 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v146 = [v86 blackColor];
  [v145 setBackgroundColor:v146];

  [v145 setTranslatesAutoresizingMaskIntoConstraints:0];
  *(v1 + v144) = v145;
  v147 = OBJC_IVAR____TtC10FitnessApp17TodayActivityTile_bottomSeparatorView;
  v148 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v149 = UIColor.init(_colorLiteralRed:green:blue:alpha:)(0.28627, 0.28627, 0.28627, 1.0).super.isa;
  [v148 setBackgroundColor:v149];

  [v148 setHidden:1];
  [v148 setTranslatesAutoresizingMaskIntoConstraints:0];
  *(v1 + v147) = v148;
  *(v1 + OBJC_IVAR____TtC10FitnessApp17TodayActivityTile_currentDisplayStyle) = 0;
  *(v1 + OBJC_IVAR____TtC10FitnessApp17TodayActivityTile_activeConstraints) = _swiftEmptyArrayStorage;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

unint64_t sub_1001B9B3C()
{
  result = qword_1008DBA98;
  if (!qword_1008DBA98)
  {
    type metadata accessor for AttributeName(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008DBA98);
  }

  return result;
}

uint64_t sub_1001B9BB4@<X0>(Swift::String string@<0:X0, 8:X1>, BOOL *a2@<X8>)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&off_100841FF0, v3);

  *a2 = v5 != 0;
  return result;
}

uint64_t sub_1001B9C0C(uint64_t a1)
{
  v2 = sub_1001B9E10();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001B9C48(uint64_t a1)
{
  v2 = sub_1001B9E10();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t EditorialItemsList.encode(to:)(void *a1, uint64_t a2)
{
  v4 = sub_100140278(&qword_1008DF710);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v9 - v6;
  sub_1000066AC(a1, a1[3]);
  sub_1001B9E10();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v9[1] = a2;
  sub_100140278(&qword_1008DF720);
  sub_1001BFE8C(&qword_1008DF728, sub_1001B9E64);
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_1001B9E10()
{
  result = qword_1008DF718;
  if (!qword_1008DF718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008DF718);
  }

  return result;
}

unint64_t sub_1001B9E64()
{
  result = qword_1008DF730;
  if (!qword_1008DF730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008DF730);
  }

  return result;
}

void *sub_1001B9ED0@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = sub_1001BC840(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1001B9F78(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x6E6F6974616C6572;
  }

  else
  {
    v3 = 25705;
  }

  if (v2)
  {
    v4 = 0xE200000000000000;
  }

  else
  {
    v4 = 0xED00007370696873;
  }

  if (*a2)
  {
    v5 = 0x6E6F6974616C6572;
  }

  else
  {
    v5 = 25705;
  }

  if (*a2)
  {
    v6 = 0xED00007370696873;
  }

  else
  {
    v6 = 0xE200000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int sub_1001BA020()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1001BA0A4()
{
  String.hash(into:)();
}

Swift::Int sub_1001BA114()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

void sub_1001BA1A0(uint64_t *a1@<X8>)
{
  v2 = 25705;
  if (*v1)
  {
    v2 = 0x6E6F6974616C6572;
  }

  v3 = 0xE200000000000000;
  if (*v1)
  {
    v3 = 0xED00007370696873;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1001BA1E0()
{
  if (*v0)
  {
    return 0x6E6F6974616C6572;
  }

  else
  {
    return 25705;
  }
}

uint64_t sub_1001BA228(uint64_t a1)
{
  v2 = sub_1001BCA14();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001BA264(uint64_t a1)
{
  v2 = sub_1001BCA14();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t EditorialItem.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[0] = a4;
  v6 = sub_100140278(&qword_1008DF738);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v11 - v8;
  sub_1000066AC(a1, a1[3]);
  sub_1001BCA14();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v13 = 0;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  if (!v4)
  {
    v11[1] = v11[0];
    v12 = 1;
    sub_1001BCA68();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t EditorialItem.init(from:)(void *a1)
{
  result = sub_1001BCABC(a1);
  if (v1)
  {
    return v3;
  }

  return result;
}

uint64_t sub_1001BA458@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1001BCABC(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
  }

  return result;
}

uint64_t sub_1001BA594@<X0>(Swift::String string@<0:X0, 8:X1>, BOOL *a2@<X8>)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&off_1008420B0, v3);

  *a2 = v5 != 0;
  return result;
}

uint64_t sub_1001BA5EC(uint64_t a1)
{
  v2 = sub_1001BCC94();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001BA628(uint64_t a1)
{
  v2 = sub_1001BCC94();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t Relationship.encode(to:)(void *a1, uint64_t a2)
{
  v4 = sub_100140278(&qword_1008DF750);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v9 - v6;
  sub_1000066AC(a1, a1[3]);
  sub_1001BCC94();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v9[1] = a2;
  sub_1001BCCE8();
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  return (*(v5 + 8))(v7, v4);
}

void *sub_1001BA7C4@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = sub_1001BCD3C(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1001BA81C@<X0>(Swift::String string@<0:X0, 8:X1>, BOOL *a2@<X8>)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&off_100842120, v3);

  *a2 = v5 != 0;
  return result;
}

uint64_t sub_1001BA874(uint64_t a1)
{
  v2 = sub_1001BCEAC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001BA8B0(uint64_t a1)
{
  v2 = sub_1001BCEAC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t CardContent.encode(to:)(void *a1, uint64_t a2)
{
  v4 = sub_100140278(&qword_1008DF768);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v9 - v6;
  sub_1000066AC(a1, a1[3]);
  sub_1001BCEAC();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v9[1] = a2;
  sub_100140278(&qword_1008DF138);
  sub_1001BCF00(&qword_1008DF778, sub_1001BCF78);
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  return (*(v5 + 8))(v7, v4);
}

void *sub_1001BAA90@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = sub_1001BCFCC(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t CardItem.storeIdentifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_1001BAB38(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x7475626972747461;
  }

  else
  {
    v3 = 25705;
  }

  if (v2)
  {
    v4 = 0xE200000000000000;
  }

  else
  {
    v4 = 0xEA00000000007365;
  }

  if (*a2)
  {
    v5 = 0x7475626972747461;
  }

  else
  {
    v5 = 25705;
  }

  if (*a2)
  {
    v6 = 0xEA00000000007365;
  }

  else
  {
    v6 = 0xE200000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int sub_1001BABD8()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1001BAC54()
{
  String.hash(into:)();
}

Swift::Int sub_1001BACBC()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1001BAD40@<X0>(Swift::OpaquePointer cases@<0:X3>, Swift::String *a2@<X0>, char *a3@<X8>)
{
  v4 = _findStringSwitchCase(cases:string:)(cases, *a2);

  if (v4 == 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  if (!v4)
  {
    v6 = 0;
  }

  *a3 = v6;
  return result;
}

void sub_1001BAD9C(uint64_t *a1@<X8>)
{
  v2 = 25705;
  if (*v1)
  {
    v2 = 0x7475626972747461;
  }

  v3 = 0xE200000000000000;
  if (*v1)
  {
    v3 = 0xEA00000000007365;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1001BADD4()
{
  if (*v0)
  {
    return 0x7475626972747461;
  }

  else
  {
    return 25705;
  }
}

uint64_t sub_1001BAE14@<X0>(Swift::String string@<0:X0, 8:X1>, Swift::OpaquePointer cases@<0:X4>, char *a3@<X8>)
{
  object = string._object;
  v4._countAndFlagsBits = string._countAndFlagsBits;
  v4._object = object;
  v6 = _findStringSwitchCase(cases:string:)(cases, v4);

  if (v6 == 1)
  {
    v8 = 1;
  }

  else
  {
    v8 = 2;
  }

  if (!v6)
  {
    v8 = 0;
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1001BAE74(uint64_t a1)
{
  v2 = sub_1001BD180();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001BAEB0(uint64_t a1)
{
  v2 = sub_1001BD180();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t CardItem.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_100140278(&qword_1008DF790);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v23 - v7;
  sub_1000066AC(a1, a1[3]);
  sub_1001BD180();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v24) = 0;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  if (!v2)
  {
    v10 = v3[10];
    v11 = v3[8];
    v43 = v3[9];
    v44 = v10;
    v12 = v3[10];
    v13 = v3[12];
    v45 = v3[11];
    v46 = v13;
    v14 = v3[6];
    v15 = v3[4];
    v39 = v3[5];
    v40 = v14;
    v16 = v3[6];
    v17 = v3[8];
    v41 = v3[7];
    v42 = v17;
    v18 = v3[2];
    v36[0] = v3[1];
    v36[1] = v18;
    v19 = v3[4];
    v21 = v3[1];
    v20 = v3[2];
    v37 = v3[3];
    v38 = v19;
    v32 = v43;
    v33 = v12;
    v22 = v3[12];
    v34 = v45;
    v35 = v22;
    v28 = v39;
    v29 = v16;
    v30 = v41;
    v31 = v11;
    v24 = v21;
    v25 = v20;
    v26 = v37;
    v27 = v15;
    v47 = 1;
    sub_10001B104(v36, v23, &qword_1008DF788);
    sub_1001BD1D4();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v23[8] = v32;
    v23[9] = v33;
    v23[10] = v34;
    v23[11] = v35;
    v23[4] = v28;
    v23[5] = v29;
    v23[6] = v30;
    v23[7] = v31;
    v23[0] = v24;
    v23[1] = v25;
    v23[2] = v26;
    v23[3] = v27;
    sub_10000EA04(v23, &qword_1008DF788);
  }

  return (*(v6 + 8))(v8, v5);
}

__n128 CardItem.init(from:)@<Q0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1001BD228(a1, v10);
  if (!v2)
  {
    v5 = v10[11];
    *(a2 + 160) = v10[10];
    *(a2 + 176) = v5;
    *(a2 + 192) = v10[12];
    v6 = v10[7];
    *(a2 + 96) = v10[6];
    *(a2 + 112) = v6;
    v7 = v10[9];
    *(a2 + 128) = v10[8];
    *(a2 + 144) = v7;
    v8 = v10[3];
    *(a2 + 32) = v10[2];
    *(a2 + 48) = v8;
    v9 = v10[5];
    *(a2 + 64) = v10[4];
    *(a2 + 80) = v9;
    result = v10[1];
    *a2 = v10[0];
    *(a2 + 16) = result;
  }

  return result;
}

uint64_t Attributes.displayName.getter()
{
  v1 = *(v0 + 176);

  return v1;
}

uint64_t sub_1001BB238(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xD000000000000012;
  v4 = 0x8000000100746EB0;
  v5 = 0xE400000000000000;
  if (v2 == 1)
  {
    v5 = 0x8000000100746EB0;
  }

  else
  {
    v3 = 1701667182;
  }

  if (*a1)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0x614E747369747261;
  }

  if (v2)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xEA0000000000656DLL;
  }

  v8 = 0xD000000000000012;
  if (*a2 != 1)
  {
    v8 = 1701667182;
    v4 = 0xE400000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x614E747369747261;
  }

  if (*a2)
  {
    v10 = v4;
  }

  else
  {
    v10 = 0xEA0000000000656DLL;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

Swift::Int sub_1001BB324()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1001BB3C8()
{
  String.hash(into:)();
}

Swift::Int sub_1001BB458()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_1001BB4F8@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1001BD628(*a1);
  *a2 = result;
  return result;
}

void sub_1001BB528(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEA0000000000656DLL;
  v4 = 0x8000000100746EB0;
  v5 = 0xD000000000000012;
  if (v2 != 1)
  {
    v5 = 1701667182;
    v4 = 0xE400000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x614E747369747261;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_1001BB588()
{
  v1 = 0xD000000000000012;
  if (*v0 != 1)
  {
    v1 = 1701667182;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x614E747369747261;
  }
}

unint64_t sub_1001BB5E4@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_1001BD628(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1001BB60C(uint64_t a1)
{
  v2 = sub_1001BD580();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001BB648(uint64_t a1)
{
  v2 = sub_1001BD580();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t Attributes.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_100140278(&qword_1008DF7B0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v20[-v7];
  sub_1000066AC(a1, a1[3]);
  sub_1001BD580();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v23) = 0;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  if (!v2)
  {
    v9 = v3[8];
    v10 = v3[6];
    v38 = v3[7];
    v39 = v9;
    v11 = v3[8];
    v12 = v3[10];
    v40 = v3[9];
    v41 = v12;
    v13 = v3[4];
    v14 = v3[2];
    v34 = v3[3];
    v35 = v13;
    v15 = v3[4];
    v16 = v3[6];
    v36 = v3[5];
    v37 = v16;
    v17 = v3[2];
    v33[0] = v3[1];
    v33[1] = v17;
    v29 = v38;
    v30 = v11;
    v18 = v3[10];
    v31 = v40;
    v32 = v18;
    v25 = v34;
    v26 = v15;
    v27 = v36;
    v28 = v10;
    v23 = v33[0];
    v24 = v14;
    v22 = 1;
    sub_10001B104(v33, v21, &qword_1008DF7A8);
    sub_1001BD5D4();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v21[6] = v29;
    v21[7] = v30;
    v21[8] = v31;
    v21[9] = v32;
    v21[2] = v25;
    v21[3] = v26;
    v21[4] = v27;
    v21[5] = v28;
    v21[0] = v23;
    v21[1] = v24;
    sub_10000EA04(v21, &qword_1008DF7A8);
    v20[15] = 2;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

double Attributes.init(from:)@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1001BD674(a1, v11);
  if (!v2)
  {
    v5 = v19;
    a2[8] = v18;
    a2[9] = v5;
    v6 = v21;
    a2[10] = v20;
    a2[11] = v6;
    v7 = v15;
    a2[4] = v14;
    a2[5] = v7;
    v8 = v17;
    a2[6] = v16;
    a2[7] = v8;
    v9 = v11[1];
    *a2 = v11[0];
    a2[1] = v9;
    result = *&v12;
    v10 = v13;
    a2[2] = v12;
    a2[3] = v10;
  }

  return result;
}

Swift::Int sub_1001BB9E0()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_1001BBA50()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1001BBAA8@<X0>(Swift::OpaquePointer cases@<0:X3>, Swift::String *a2@<X0>, BOOL *a3@<X8>)
{
  v4 = _findStringSwitchCase(cases:string:)(cases, *a2);

  *a3 = v4 != 0;
  return result;
}

uint64_t sub_1001BBB1C@<X0>(Swift::String string@<0:X0, 8:X1>, BOOL *a2@<X8>)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&off_100842248, v3);

  *a2 = v5 != 0;
  return result;
}

uint64_t sub_1001BBB74(uint64_t a1)
{
  v2 = sub_1001BD9D4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001BBBB0(uint64_t a1)
{
  v2 = sub_1001BD9D4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t AppPlatform.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = sub_100140278(&qword_1008DF7D0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v14 - v6;
  sub_1000066AC(a1, a1[3]);
  sub_1001BD9D4();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v8 = v2[7];
  v21 = v2[6];
  v22 = v8;
  v9 = v2[9];
  v23 = v2[8];
  v24 = v9;
  v10 = v2[3];
  v17 = v2[2];
  v18 = v10;
  v11 = v2[5];
  v19 = v2[4];
  v20 = v11;
  v12 = v2[1];
  v15 = *v2;
  v16 = v12;
  sub_1001BDA28(v2, v14);
  sub_1001BDA60();
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  v14[6] = v21;
  v14[7] = v22;
  v14[8] = v23;
  v14[9] = v24;
  v14[2] = v17;
  v14[3] = v18;
  v14[4] = v19;
  v14[5] = v20;
  v14[0] = v15;
  v14[1] = v16;
  sub_10000EA04(v14, &qword_1008DF7C8);
  return (*(v5 + 8))(v7, v4);
}

double AppPlatform.init(from:)@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1001BDAB4(a1, v10);
  if (!v2)
  {
    v5 = v10[7];
    a2[6] = v10[6];
    a2[7] = v5;
    v6 = v10[9];
    a2[8] = v10[8];
    a2[9] = v6;
    v7 = v10[3];
    a2[2] = v10[2];
    a2[3] = v7;
    v8 = v10[5];
    a2[4] = v10[4];
    a2[5] = v8;
    result = *v10;
    v9 = v10[1];
    *a2 = v10[0];
    a2[1] = v9;
  }

  return result;
}

uint64_t AppStoreAppRecommendation.author.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_1001BBEC4()
{
  v1 = 0x6449656C646E7562;
  if (*v0 != 1)
  {
    v1 = 0x6B726F77747261;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x656C746974627573;
  }
}

uint64_t sub_1001BBF20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1001BDD64(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1001BBF48(uint64_t a1)
{
  v2 = sub_1001BDCBC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001BBF84(uint64_t a1)
{
  v2 = sub_1001BDCBC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t AppAttributes.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_100140278(&qword_1008DF7F0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v19 - v7;
  sub_1000066AC(a1, a1[3]);
  sub_1001BDCBC();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v20) = 0;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  if (!v2)
  {
    LOBYTE(v20) = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v9 = v3[7];
    v10 = v3[5];
    v31 = v3[6];
    v32 = v9;
    v11 = v3[7];
    v12 = v3[9];
    v33 = v3[8];
    v34 = v12;
    v13 = v3[3];
    v28[0] = v3[2];
    v28[1] = v13;
    v14 = v3[5];
    v16 = v3[2];
    v15 = v3[3];
    v29 = v3[4];
    v30 = v14;
    v24 = v31;
    v25 = v11;
    v17 = v3[9];
    v26 = v33;
    v27 = v17;
    v20 = v16;
    v21 = v15;
    v22 = v29;
    v23 = v10;
    v35 = 2;
    sub_10001B104(v28, v19, &qword_1008DF7E8);
    sub_1001BDD10();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v19[4] = v24;
    v19[5] = v25;
    v19[6] = v26;
    v19[7] = v27;
    v19[0] = v20;
    v19[1] = v21;
    v19[2] = v22;
    v19[3] = v23;
    sub_10000EA04(v19, &qword_1008DF7E8);
  }

  return (*(v6 + 8))(v8, v5);
}

double AppAttributes.init(from:)@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1001BDE7C(a1, v10);
  if (!v2)
  {
    v5 = v10[7];
    a2[6] = v10[6];
    a2[7] = v5;
    v6 = v10[9];
    a2[8] = v10[8];
    a2[9] = v6;
    v7 = v10[3];
    a2[2] = v10[2];
    a2[3] = v7;
    v8 = v10[5];
    a2[4] = v10[4];
    a2[5] = v8;
    result = *v10;
    v9 = v10[1];
    *a2 = v10[0];
    a2[1] = v9;
  }

  return result;
}

unint64_t sub_1001BC2BC@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1001BE220(*a1);
  *a2 = result;
  return result;
}

void sub_1001BC2EC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0x6874646977;
  v5 = 0xEA00000000003472;
  if (v2 == 6)
  {
    v5 = 0xEA00000000003372;
  }

  v6 = 0xEA00000000003172;
  if (v2 != 4)
  {
    v6 = 0xEA00000000003272;
  }

  if (*v1 <= 5u)
  {
    v5 = v6;
  }

  v7 = 0xE300000000000000;
  v8 = 7107189;
  if (v2 != 2)
  {
    v8 = 0x726F6C6F436762;
    v7 = 0xE700000000000000;
  }

  if (*v1)
  {
    v4 = 0x746867696568;
    v3 = 0xE600000000000000;
  }

  if (*v1 > 1u)
  {
    v4 = v8;
    v3 = v7;
  }

  if (*v1 <= 3u)
  {
    v9 = v4;
  }

  else
  {
    v9 = 0x6F6C6F4374786574;
  }

  if (*v1 > 3u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t sub_1001BC3E8()
{
  v1 = 0x6874646977;
  v2 = 7107189;
  if (*v0 != 2)
  {
    v2 = 0x726F6C6F436762;
  }

  if (*v0)
  {
    v1 = 0x746867696568;
  }

  if (*v0 > 1u)
  {
    v1 = v2;
  }

  if (*v0 <= 3u)
  {
    return v1;
  }

  else
  {
    return 0x6F6C6F4374786574;
  }
}

unint64_t sub_1001BC4E0@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_1001BE220(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1001BC514(uint64_t a1)
{
  v2 = sub_1001BE1CC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001BC550(uint64_t a1)
{
  v2 = sub_1001BE1CC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t AppArtwork.encode(to:)(void *a1)
{
  v3 = sub_100140278(&qword_1008DF808);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8[-v5];
  sub_1000066AC(a1, a1[3]);
  sub_1001BE1CC();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v8[15] = 0;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  if (v1)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v8[14] = 1;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  v8[13] = 2;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  v8[12] = 3;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  v8[11] = 4;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  v8[10] = 5;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  v8[9] = 6;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  v8[8] = 7;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  return (*(v4 + 8))(v6, v3);
}

double AppArtwork.init(from:)@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  result = sub_1001BE26C(a1, v9);
  if (!v2)
  {
    v5 = v13;
    a2[4] = v12;
    a2[5] = v5;
    v6 = v15;
    a2[6] = v14;
    a2[7] = v6;
    v7 = v9[1];
    *a2 = v9[0];
    a2[1] = v7;
    result = *&v10;
    v8 = v11;
    a2[2] = v10;
    a2[3] = v8;
  }

  return result;
}

void *sub_1001BC840(void *a1)
{
  v3 = sub_100140278(&qword_1008DF970);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v9 - v5;
  v7 = sub_1000066AC(a1, a1[3]);
  sub_1001B9E10();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    sub_100005A40(a1);
  }

  else
  {
    sub_100140278(&qword_1008DF720);
    sub_1001BFE8C(&qword_1008DF978, sub_1001BFF04);
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    (*(v4 + 8))(v6, v3);
    v7 = v9[1];
    sub_100005A40(a1);
  }

  return v7;
}

uint64_t sub_1001BC9F4(uint64_t result)
{
  if (result != 2)
  {
    return sub_1001BCA04(result);
  }

  return result;
}

uint64_t sub_1001BCA04(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

unint64_t sub_1001BCA14()
{
  result = qword_1008DF740;
  if (!qword_1008DF740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008DF740);
  }

  return result;
}

unint64_t sub_1001BCA68()
{
  result = qword_1008DF748;
  if (!qword_1008DF748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008DF748);
  }

  return result;
}

uint64_t sub_1001BCABC(void *a1)
{
  v2 = sub_100140278(&qword_1008DF960);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v8[-v4];
  sub_1000066AC(a1, a1[3]);
  sub_1001BCA14();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  v8[31] = 0;
  v7 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v8[15] = 1;
  sub_1001BFE38();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  (*(v3 + 8))(v5, v2);
  sub_100005A40(a1);
  return v7;
}

unint64_t sub_1001BCC94()
{
  result = qword_1008DF758;
  if (!qword_1008DF758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008DF758);
  }

  return result;
}

unint64_t sub_1001BCCE8()
{
  result = qword_1008DF760;
  if (!qword_1008DF760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008DF760);
  }

  return result;
}

void *sub_1001BCD3C(void *a1)
{
  v3 = sub_100140278(&qword_1008DF950);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v9 - v5;
  v7 = sub_1000066AC(a1, a1[3]);
  sub_1001BCC94();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    sub_100005A40(a1);
  }

  else
  {
    sub_1001BFDE4();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    (*(v4 + 8))(v6, v3);
    v7 = v9[1];
    sub_100005A40(a1);
  }

  return v7;
}

unint64_t sub_1001BCEAC()
{
  result = qword_1008DF770;
  if (!qword_1008DF770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008DF770);
  }

  return result;
}

uint64_t sub_1001BCF00(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_100141EEC(&qword_1008DF138);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1001BCF78()
{
  result = qword_1008DF780;
  if (!qword_1008DF780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008DF780);
  }

  return result;
}

void *sub_1001BCFCC(void *a1)
{
  v3 = sub_100140278(&qword_1008DF938);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v9 - v5;
  v7 = sub_1000066AC(a1, a1[3]);
  sub_1001BCEAC();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    sub_100005A40(a1);
  }

  else
  {
    sub_100140278(&qword_1008DF138);
    sub_1001BCF00(&qword_1008DF940, sub_1001BFD90);
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    (*(v4 + 8))(v6, v3);
    v7 = v9[1];
    sub_100005A40(a1);
  }

  return v7;
}

unint64_t sub_1001BD180()
{
  result = qword_1008DF798;
  if (!qword_1008DF798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008DF798);
  }

  return result;
}

unint64_t sub_1001BD1D4()
{
  result = qword_1008DF7A0;
  if (!qword_1008DF7A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008DF7A0);
  }

  return result;
}

uint64_t sub_1001BD228@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v73 = a2;
  v4 = sub_100140278(&qword_1008DF928);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v21 - v6;
  sub_1000066AC(a1, a1[3]);
  sub_1001BD180();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100005A40(a1);
  }

  v8 = v5;
  v9 = v73;
  LOBYTE(v35[0]) = 0;
  v10 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v12 = v11;
  v21 = v10;
  v48 = 1;
  sub_1001BFCD4();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  (*(v8 + 8))(v7, v4);
  v69 = v57;
  v70 = v58;
  v71 = v59;
  v72 = v60;
  v65 = v53;
  v66 = v54;
  v67 = v55;
  v68 = v56;
  v61 = v49;
  v62 = v50;
  v63 = v51;
  v64 = v52;
  v31 = v57;
  v32 = v58;
  v33 = v59;
  v34 = v60;
  v27 = v53;
  v28 = v54;
  v29 = v55;
  v30 = v56;
  v23 = v49;
  v24 = v50;
  v13 = v21;
  *&v22 = v21;
  *(&v22 + 1) = v12;
  v25 = v51;
  v26 = v52;
  sub_1001BFD28(&v22, v35);
  sub_100005A40(a1);
  v35[0] = v13;
  v35[1] = v12;
  v44 = v69;
  v45 = v70;
  v46 = v71;
  v47 = v72;
  v40 = v65;
  v41 = v66;
  v42 = v67;
  v43 = v68;
  v36 = v61;
  v37 = v62;
  v38 = v63;
  v39 = v64;
  result = sub_1001BFD60(v35);
  v15 = v33;
  v9[10] = v32;
  v9[11] = v15;
  v9[12] = v34;
  v16 = v29;
  v9[6] = v28;
  v9[7] = v16;
  v17 = v31;
  v9[8] = v30;
  v9[9] = v17;
  v18 = v25;
  v9[2] = v24;
  v9[3] = v18;
  v19 = v27;
  v9[4] = v26;
  v9[5] = v19;
  v20 = v23;
  *v9 = v22;
  v9[1] = v20;
  return result;
}

unint64_t sub_1001BD580()
{
  result = qword_1008DF7B8;
  if (!qword_1008DF7B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008DF7B8);
  }

  return result;
}

unint64_t sub_1001BD5D4()
{
  result = qword_1008DF7C0;
  if (!qword_1008DF7C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008DF7C0);
  }

  return result;
}

unint64_t sub_1001BD628(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1008421A8, v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1001BD674@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v29 = sub_100140278(&qword_1008DF918);
  v5 = *(v29 - 8);
  __chkstk_darwin(v29);
  v7 = &v26 - v6;
  sub_1000066AC(a1, a1[3]);
  sub_1001BD580();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100005A40(a1);
  }

  v8 = v5;
  v28 = a2;
  LOBYTE(v42[0]) = 0;
  v9 = v29;
  v10 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v12 = v11;
  v27 = v10;
  v76 = 1;
  sub_1001BFC18();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v71 = v61;
  v72 = v62;
  v73 = v63;
  v74 = v64;
  v67 = v57;
  v68 = v58;
  v69 = v59;
  v70 = v60;
  v65 = v55;
  v66 = v56;
  v75 = 2;
  v13 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v14 = v7;
  v16 = v15;
  (*(v8 + 8))(v14, v9);
  v17 = v27;
  *&v30 = v27;
  *(&v30 + 1) = v12;
  v37 = v71;
  v38 = v72;
  v39 = v73;
  v40 = v74;
  v33 = v67;
  v34 = v68;
  v35 = v69;
  v36 = v70;
  v31 = v65;
  v32 = v66;
  *&v41 = v13;
  *(&v41 + 1) = v16;
  sub_1001BFC6C(&v30, v42);
  sub_100005A40(a1);
  v42[0] = v17;
  v42[1] = v12;
  v49 = v71;
  v50 = v72;
  v51 = v73;
  v52 = v74;
  v45 = v67;
  v46 = v68;
  v47 = v69;
  v48 = v70;
  v43 = v65;
  v44 = v66;
  v53 = v13;
  v54 = v16;
  result = sub_1001BFCA4(v42);
  v19 = v39;
  v20 = v28;
  v28[8] = v38;
  v20[9] = v19;
  v21 = v41;
  v20[10] = v40;
  v20[11] = v21;
  v22 = v35;
  v20[4] = v34;
  v20[5] = v22;
  v23 = v37;
  v20[6] = v36;
  v20[7] = v23;
  v24 = v31;
  *v20 = v30;
  v20[1] = v24;
  v25 = v33;
  v20[2] = v32;
  v20[3] = v25;
  return result;
}

unint64_t sub_1001BD9D4()
{
  result = qword_1008DF7D8;
  if (!qword_1008DF7D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008DF7D8);
  }

  return result;
}

unint64_t sub_1001BDA60()
{
  result = qword_1008DF7E0;
  if (!qword_1008DF7E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008DF7E0);
  }

  return result;
}

uint64_t sub_1001BDAB4@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v35 = a2;
  v4 = sub_100140278(&qword_1008DF908);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v15 - v6;
  sub_1000066AC(a1, a1[3]);
  sub_1001BD9D4();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100005A40(a1);
  }

  v8 = v35;
  sub_1001BFBC4();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  (*(v5 + 8))(v7, v4);
  v21 = v31;
  v22 = v32;
  v23 = v33;
  v24 = v34;
  v17 = v27;
  v18 = v28;
  v19 = v29;
  v20 = v30;
  v15 = v25;
  v16 = v26;
  result = sub_100005A40(a1);
  v10 = v22;
  v8[6] = v21;
  v8[7] = v10;
  v11 = v24;
  v8[8] = v23;
  v8[9] = v11;
  v12 = v18;
  v8[2] = v17;
  v8[3] = v12;
  v13 = v20;
  v8[4] = v19;
  v8[5] = v13;
  v14 = v16;
  *v8 = v15;
  v8[1] = v14;
  return result;
}

unint64_t sub_1001BDCBC()
{
  result = qword_1008DF7F8;
  if (!qword_1008DF7F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008DF7F8);
  }

  return result;
}

unint64_t sub_1001BDD10()
{
  result = qword_1008DF800;
  if (!qword_1008DF800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008DF800);
  }

  return result;
}

uint64_t sub_1001BDD64(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656C746974627573 && a2 == 0xE800000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6449656C646E7562 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6B726F77747261 && a2 == 0xE700000000000000)
  {

    return 2;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1001BDE7C@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v63 = a2;
  v4 = sub_100140278(&qword_1008DF8F8);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v24 - v6;
  sub_1000066AC(a1, a1[3]);
  sub_1001BDCBC();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100005A40(a1);
  }

  v8 = v5;
  v9 = v63;
  LOBYTE(v37[0]) = 0;
  v10 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v12 = v11;
  v25 = v10;
  LOBYTE(v37[0]) = 1;
  v13 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v26 = v14;
  v24 = v13;
  v46 = 2;
  sub_1001BFB08();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  (*(v8 + 8))(v7, v4);
  v59 = v51;
  v60 = v52;
  v61 = v53;
  v62 = v54;
  v55 = v47;
  v56 = v48;
  v57 = v49;
  v58 = v50;
  v36 = v54;
  v35 = v53;
  v34 = v52;
  v33 = v51;
  v32 = v50;
  v31 = v49;
  v15 = v24;
  v16 = v25;
  *&v27 = v25;
  *(&v27 + 1) = v12;
  v17 = v26;
  *&v28 = v24;
  *(&v28 + 1) = v26;
  v30 = v48;
  v29 = v47;
  sub_1001BFB5C(&v27, v37);
  sub_100005A40(a1);
  v37[0] = v16;
  v37[1] = v12;
  v37[2] = v15;
  v37[3] = v17;
  v42 = v59;
  v43 = v60;
  v44 = v61;
  v45 = v62;
  v38 = v55;
  v39 = v56;
  v40 = v57;
  v41 = v58;
  result = sub_1001BFB94(v37);
  v19 = v34;
  v9[6] = v33;
  v9[7] = v19;
  v20 = v36;
  v9[8] = v35;
  v9[9] = v20;
  v21 = v30;
  v9[2] = v29;
  v9[3] = v21;
  v22 = v32;
  v9[4] = v31;
  v9[5] = v22;
  v23 = v28;
  *v9 = v27;
  v9[1] = v23;
  return result;
}

unint64_t sub_1001BE1CC()
{
  result = qword_1008DF810;
  if (!qword_1008DF810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008DF810);
  }

  return result;
}

unint64_t sub_1001BE220(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100842280, v2);

  if (v3 >= 8)
  {
    return 8;
  }

  else
  {
    return v3;
  }
}

double sub_1001BE26C@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v43 = sub_100140278(&qword_1008DF8F0);
  v5 = *(v43 - 8);
  __chkstk_darwin(v43);
  v7 = &v30 - v6;
  sub_1000066AC(a1, a1[3]);
  sub_1001BE1CC();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    sub_100005A40(a1);
  }

  else
  {
    v8 = v5;
    LOBYTE(v52) = 0;
    v9 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v69 = v10 & 1;
    LOBYTE(v52) = 1;
    v11 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v68 = v12 & 1;
    LOBYTE(v52) = 2;
    v40 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v42 = v13;
    LOBYTE(v52) = 3;
    v14 = v43;
    v15 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v41 = v16;
    v36 = v15;
    LOBYTE(v52) = 4;
    v38 = 0;
    v35 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v37 = v17;
    LOBYTE(v52) = 5;
    v34 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v39 = v18;
    LOBYTE(v52) = 6;
    v32 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v38 = v19;
    v70 = 7;
    v31 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v33 = 0;
    v21 = v20;
    (*(v8 + 8))(v7, v14);
    *&v44 = v9;
    LODWORD(v43) = v69;
    BYTE8(v44) = v69;
    *&v45 = v11;
    HIDWORD(v30) = v68;
    BYTE8(v45) = v68;
    v22 = v41;
    v23 = v42;
    *&v46 = v40;
    *(&v46 + 1) = v42;
    *&v47 = v36;
    *(&v47 + 1) = v41;
    *&v48 = v35;
    *(&v48 + 1) = v37;
    *&v49 = v34;
    *(&v49 + 1) = v39;
    v24 = v31;
    *&v50 = v32;
    *(&v50 + 1) = v38;
    *&v51 = v31;
    *(&v51 + 1) = v21;
    sub_1001BFAA0(&v44, &v52);
    sub_100005A40(a1);
    v52 = v9;
    v53 = v43;
    v54 = v11;
    v55 = BYTE4(v30);
    v56 = v40;
    v57 = v23;
    v58 = v36;
    v59 = v22;
    v60 = v35;
    v61 = v37;
    v62 = v34;
    v63 = v39;
    v64 = v32;
    v65 = v38;
    v66 = v24;
    v67 = v21;
    sub_1001BFAD8(&v52);
    v25 = v49;
    a2[4] = v48;
    a2[5] = v25;
    v26 = v51;
    a2[6] = v50;
    a2[7] = v26;
    v27 = v45;
    *a2 = v44;
    a2[1] = v27;
    result = *&v46;
    v29 = v47;
    a2[2] = v46;
    a2[3] = v29;
  }

  return result;
}

uint64_t sub_1001BE75C(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1001BE780(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  v3 = v2 <= 0;
  if (v2 < 0)
  {
    v2 = -1;
  }

  if (v3)
  {
    return 0;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1001BE7A4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1001BE800(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_1001BE864(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFFD && *(a1 + 8))
  {
    return (*a1 + 2147483646);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v5 = -1;
  }

  else
  {
    v5 = v4;
  }

  v6 = v5 - 1;
  if (v4 < 1)
  {
    v7 = -1;
  }

  else
  {
    v7 = v6;
  }

  return (v7 + 1);
}

uint64_t sub_1001BE8CC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = a2 - 2147483646;
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_1001BE928(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1001BE984(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_1001BE9E4(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1001BEA08(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  v3 = v2 <= 0;
  if (v2 < 0)
  {
    v2 = -1;
  }

  if (v3)
  {
    return 0;
  }

  else
  {
    return v2;
  }
}

__n128 sub_1001BEA2C(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  v5 = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v7;
  *(a1 + 80) = v5;
  *(a1 + 96) = v6;
  result = *(a2 + 144);
  v9 = *(a2 + 160);
  v10 = *(a2 + 192);
  *(a1 + 176) = *(a2 + 176);
  *(a1 + 192) = v10;
  *(a1 + 144) = result;
  *(a1 + 160) = v9;
  return result;
}

uint64_t sub_1001BEA68(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 208))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1001BEAC4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 200) = 0;
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
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 208) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 208) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

__n128 sub_1001BEB5C(uint64_t a1, __int128 *a2)
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
  result = a2[8];
  v9 = a2[9];
  v10 = a2[11];
  *(a1 + 160) = a2[10];
  *(a1 + 176) = v10;
  *(a1 + 128) = result;
  *(a1 + 144) = v9;
  return result;
}

uint64_t sub_1001BEB90(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 192))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1001BEBEC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 184) = 0;
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
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 192) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 192) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

__n128 sub_1001BEC80(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  result = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v8;
  *(a1 + 96) = result;
  *(a1 + 112) = v7;
  return result;
}

uint64_t sub_1001BECAC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFFD && *(a1 + 160))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v5 = -1;
  }

  else
  {
    v5 = v4;
  }

  v6 = v5 - 1;
  if (v4 < 1)
  {
    v7 = -1;
  }

  else
  {
    v7 = v6;
  }

  return (v7 + 1);
}

uint64_t sub_1001BED14(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *(result + 152) = 0;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 2147483646;
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 160) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 160) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_1001BED9C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 160))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1001BEDF8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 152) = 0;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 160) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 160) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

__n128 sub_1001BEE84(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = result;
  *(a1 + 80) = v6;
  return result;
}

uint64_t sub_1001BEEA8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 128))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 40);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1001BEF04(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 128) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 128) = 0;
    }

    if (a2)
    {
      *(result + 40) = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ActivityStatisticsUnit(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ActivityStatisticsUnit(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1001BF15C()
{
  result = qword_1008DF818;
  if (!qword_1008DF818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008DF818);
  }

  return result;
}

unint64_t sub_1001BF1B4()
{
  result = qword_1008DF820;
  if (!qword_1008DF820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008DF820);
  }

  return result;
}

unint64_t sub_1001BF20C()
{
  result = qword_1008DF828;
  if (!qword_1008DF828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008DF828);
  }

  return result;
}

unint64_t sub_1001BF264()
{
  result = qword_1008DF830;
  if (!qword_1008DF830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008DF830);
  }

  return result;
}

unint64_t sub_1001BF2BC()
{
  result = qword_1008DF838;
  if (!qword_1008DF838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008DF838);
  }

  return result;
}

unint64_t sub_1001BF314()
{
  result = qword_1008DF840;
  if (!qword_1008DF840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008DF840);
  }

  return result;
}

unint64_t sub_1001BF36C()
{
  result = qword_1008DF848;
  if (!qword_1008DF848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008DF848);
  }

  return result;
}

unint64_t sub_1001BF3C4()
{
  result = qword_1008DF850;
  if (!qword_1008DF850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008DF850);
  }

  return result;
}

unint64_t sub_1001BF41C()
{
  result = qword_1008DF858;
  if (!qword_1008DF858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008DF858);
  }

  return result;
}

unint64_t sub_1001BF474()
{
  result = qword_1008DF860;
  if (!qword_1008DF860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008DF860);
  }

  return result;
}

unint64_t sub_1001BF4CC()
{
  result = qword_1008DF868;
  if (!qword_1008DF868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008DF868);
  }

  return result;
}

unint64_t sub_1001BF524()
{
  result = qword_1008DF870;
  if (!qword_1008DF870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008DF870);
  }

  return result;
}

unint64_t sub_1001BF57C()
{
  result = qword_1008DF878;
  if (!qword_1008DF878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008DF878);
  }

  return result;
}

unint64_t sub_1001BF5D4()
{
  result = qword_1008DF880;
  if (!qword_1008DF880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008DF880);
  }

  return result;
}

unint64_t sub_1001BF62C()
{
  result = qword_1008DF888;
  if (!qword_1008DF888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008DF888);
  }

  return result;
}

unint64_t sub_1001BF684()
{
  result = qword_1008DF890;
  if (!qword_1008DF890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008DF890);
  }

  return result;
}

unint64_t sub_1001BF6DC()
{
  result = qword_1008DF898;
  if (!qword_1008DF898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008DF898);
  }

  return result;
}

unint64_t sub_1001BF734()
{
  result = qword_1008DF8A0;
  if (!qword_1008DF8A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008DF8A0);
  }

  return result;
}

unint64_t sub_1001BF78C()
{
  result = qword_1008DF8A8;
  if (!qword_1008DF8A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008DF8A8);
  }

  return result;
}

unint64_t sub_1001BF7E4()
{
  result = qword_1008DF8B0;
  if (!qword_1008DF8B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008DF8B0);
  }

  return result;
}

unint64_t sub_1001BF83C()
{
  result = qword_1008DF8B8;
  if (!qword_1008DF8B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008DF8B8);
  }

  return result;
}

unint64_t sub_1001BF894()
{
  result = qword_1008DF8C0;
  if (!qword_1008DF8C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008DF8C0);
  }

  return result;
}

unint64_t sub_1001BF8EC()
{
  result = qword_1008DF8C8;
  if (!qword_1008DF8C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008DF8C8);
  }

  return result;
}

unint64_t sub_1001BF944()
{
  result = qword_1008DF8D0;
  if (!qword_1008DF8D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008DF8D0);
  }

  return result;
}

unint64_t sub_1001BF99C()
{
  result = qword_1008DF8D8;
  if (!qword_1008DF8D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008DF8D8);
  }

  return result;
}

unint64_t sub_1001BF9F4()
{
  result = qword_1008DF8E0;
  if (!qword_1008DF8E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008DF8E0);
  }

  return result;
}

unint64_t sub_1001BFA4C()
{
  result = qword_1008DF8E8;
  if (!qword_1008DF8E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008DF8E8);
  }

  return result;
}

unint64_t sub_1001BFB08()
{
  result = qword_1008DF900;
  if (!qword_1008DF900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008DF900);
  }

  return result;
}

unint64_t sub_1001BFBC4()
{
  result = qword_1008DF910;
  if (!qword_1008DF910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008DF910);
  }

  return result;
}

unint64_t sub_1001BFC18()
{
  result = qword_1008DF920;
  if (!qword_1008DF920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008DF920);
  }

  return result;
}

unint64_t sub_1001BFCD4()
{
  result = qword_1008DF930;
  if (!qword_1008DF930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008DF930);
  }

  return result;
}

unint64_t sub_1001BFD90()
{
  result = qword_1008DF948;
  if (!qword_1008DF948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008DF948);
  }

  return result;
}

unint64_t sub_1001BFDE4()
{
  result = qword_1008DF958;
  if (!qword_1008DF958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008DF958);
  }

  return result;
}

unint64_t sub_1001BFE38()
{
  result = qword_1008DF968;
  if (!qword_1008DF968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008DF968);
  }

  return result;
}

uint64_t sub_1001BFE8C(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_100141EEC(&qword_1008DF720);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1001BFF04()
{
  result = qword_1008DF980;
  if (!qword_1008DF980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008DF980);
  }

  return result;
}

id sub_1001C00B8()
{
  v4.receiver = v0;
  v4.super_class = type metadata accessor for TrendsSplashVideoView();
  objc_msgSendSuper2(&v4, "didMoveToWindow");
  v1 = [v0 window];
  if (v1)
  {

    result = *&v0[OBJC_IVAR____TtC10FitnessApp21TrendsSplashVideoView_player];
    if (!result)
    {
      return result;
    }

    v3 = &selRef_play;
  }

  else
  {
    result = *&v0[OBJC_IVAR____TtC10FitnessApp21TrendsSplashVideoView_player];
    if (!result)
    {
      return result;
    }

    v3 = &selRef_pause;
  }

  return [result *v3];
}

uint64_t sub_1001C0274(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v4[3] = type metadata accessor for MainActor();
  v4[4] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[5] = v6;
  v4[6] = v5;

  return _swift_task_switch(sub_1001C0310, v6, v5);
}

uint64_t sub_1001C0310()
{
  v1 = [*(v0 + 16) currentItem];
  if (v1)
  {
    v2 = v1;
    *(v0 + 56) = [v1 asset];

    sub_100140278(&qword_1008DFA18);
    v3 = static AVPartialAsyncProperty<A>.duration.getter();
    *(v0 + 64) = v3;
    v4 = static MainActor.shared.getter();
    *(v0 + 72) = v4;
    v5 = swift_task_alloc();
    *(v0 + 80) = v5;
    *v5 = v0;
    v5[1] = sub_1001C047C;

    return AVAsynchronousKeyValueLoading.load<A>(_:isolation:)(v0 + 144, v3, v4, &protocol witness table for MainActor);
  }

  else
  {

    v6 = *(v0 + 8);

    return v6();
  }
}

uint64_t sub_1001C047C()
{
  v2 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v3 = v2[5];
    v4 = v2[6];
    v5 = sub_1001C0688;
  }

  else
  {
    v6 = v2[7];

    v3 = v2[5];
    v4 = v2[6];
    v5 = sub_1001C05B0;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_1001C05B0()
{
  v1 = v0[2];

  v2 = v0[18];
  v3 = v0[19];
  v4 = v0[20];
  v5 = [v1 currentItem];
  if (v5)
  {
    epoch = kCMTimeZero.epoch;
    v0[12] = kCMTimeZero.value;
    v0[13] = *&kCMTimeZero.timescale;
    v0[14] = epoch;
    v0[15] = v2;
    v0[16] = v3;
    v0[17] = v4;
    v7 = v5;
    [v5 setLoopTimeRange:?];
  }

  v8 = v0[1];

  return v8();
}

uint64_t sub_1001C0688()
{
  v1 = *(v0 + 56);

  v2 = *(v0 + 8);

  return v2();
}

void sub_1001C0758()
{
  v1 = OBJC_IVAR____TtC10FitnessApp21TrendsSplashVideoView_player;
  v2 = *(v0 + OBJC_IVAR____TtC10FitnessApp21TrendsSplashVideoView_player);
  if (v2)
  {
    [v2 replaceCurrentItemWithPlayerItem:0];
  }

  v3 = OBJC_IVAR____TtC10FitnessApp21TrendsSplashVideoView_playerLayer;
  v4 = *(v0 + OBJC_IVAR____TtC10FitnessApp21TrendsSplashVideoView_playerLayer);
  if (v4)
  {
    [v4 setPlayer:0];
    v5 = *(v0 + v3);
    if (v5)
    {
      [v5 removeFromSuperlayer];
    }
  }

  v6 = *(v0 + v1);
  *(v0 + v1) = 0;

  v7 = *(v0 + v3);
  *(v0 + v3) = 0;
}

id sub_1001C083C(void *a1)
{
  *&v1[OBJC_IVAR____TtC10FitnessApp26TrendsSplashViewController_listViewController] = 0;
  *&v1[OBJC_IVAR____TtC10FitnessApp26TrendsSplashViewController_videoView] = 0;
  *&v1[OBJC_IVAR____TtC10FitnessApp26TrendsSplashViewController_observers] = _swiftEmptyArrayStorage;
  *&v1[OBJC_IVAR____TtC10FitnessApp26TrendsSplashViewController_availabilityManager] = a1;
  v3 = objc_opt_self();
  v4 = a1;
  v5 = [v3 mainBundle];
  v19._object = 0x800000010074B070;
  v6._countAndFlagsBits = 0xD000000000000022;
  v6._object = 0x800000010074B040;
  v19._countAndFlagsBits = 0xD000000000000039;
  v7._countAndFlagsBits = 0;
  v7._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v6, 0, v5, v7, v19);

  sub_100140278(&unk_1008E4E50);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1006D1F70;
  *(v8 + 56) = &type metadata for Int;
  *(v8 + 64) = &protocol witness table for Int;
  *(v8 + 32) = 90;
  *(v8 + 96) = &type metadata for Int;
  *(v8 + 104) = &protocol witness table for Int;
  *(v8 + 72) = 365;
  static String.localizedStringWithFormat(_:_:)();

  v9 = [v3 mainBundle];
  v10 = String._bridgeToObjectiveC()();
  v11 = [v9 localizedStringForKey:v10 value:0 table:0];

  if (!v11)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = String._bridgeToObjectiveC()();
  }

  v12 = String._bridgeToObjectiveC()();

  v18.receiver = v1;
  v18.super_class = type metadata accessor for TrendsSplashViewController();
  v13 = objc_msgSendSuper2(&v18, "initWithTitle:detailText:icon:contentLayout:", v11, v12, 0, 1);

  v14 = v13;
  v15 = [v14 contentView];
  v16 = [objc_opt_self() systemBackgroundColor];
  [v15 setBackgroundColor:v16];

  return v14;
}

void sub_1001C0B80()
{
  v1 = v0;
  v35.receiver = v0;
  v35.super_class = type metadata accessor for TrendsSplashViewController();
  objc_msgSendSuper2(&v35, "viewDidLoad");
  v2 = objc_opt_self();
  v3 = [v2 mainBundle];
  v4 = String._bridgeToObjectiveC()();
  v5 = [v3 localizedStringForKey:v4 value:0 table:0];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = [v2 mainBundle];
  v36._object = 0x800000010074B070;
  v7._countAndFlagsBits = 0xD000000000000022;
  v7._object = 0x800000010074B040;
  v36._countAndFlagsBits = 0xD000000000000039;
  v8._countAndFlagsBits = 0;
  v8._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v7, 0, v6, v8, v36);

  sub_100140278(&unk_1008E4E50);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1006D1F70;
  *(v9 + 56) = &type metadata for Int;
  *(v9 + 64) = &protocol witness table for Int;
  *(v9 + 32) = 90;
  *(v9 + 96) = &type metadata for Int;
  *(v9 + 104) = &protocol witness table for Int;
  *(v9 + 72) = 365;
  v10 = static String.localizedStringWithFormat(_:_:)();
  v12 = v11;

  v13._countAndFlagsBits = 10;
  v13._object = 0xE100000000000000;
  String.append(_:)(v13);
  v14._countAndFlagsBits = v10;
  v14._object = v12;
  String.append(_:)(v14);
  v15 = [v1 headerView];
  v16 = String._bridgeToObjectiveC()();
  [v15 setDetailText:v16];

  v17 = [objc_opt_self() boldButton];
  v18 = objc_opt_self();
  v19 = v17;
  v20 = [v18 quaternarySystemFillColor];
  [v19 setTintColor:v20];

  v21 = [v2 mainBundle];
  v22 = String._bridgeToObjectiveC()();
  v23 = [v21 localizedStringForKey:v22 value:0 table:0];

  if (!v23)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v23 = String._bridgeToObjectiveC()();
  }

  [v19 setTitle:v23 forState:0];
  v24 = [v1 buttonTray];
  [v24 addButton:v19];

  [v19 addTarget:v1 action:"buttonTappedWithSender:" forControlEvents:64];
  v25 = [v1 navigationItem];
  [v25 setBackBarButtonItem:0];

  v26 = [v1 navigationController];
  if (v26)
  {
    v27 = v26;
    [v26 setNavigationBarHidden:1 animated:0];
  }

  sub_1001C17E8();
  v28 = [v1 view];
  if (!v28)
  {
    goto LABEL_17;
  }

  v29 = v28;

  v30 = [v29 subviews];

  sub_1000059F8(0, &qword_1008E7580);
  v31 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v31 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_8;
    }

LABEL_13:

    goto LABEL_14;
  }

  if (!*((v31 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_13;
  }

LABEL_8:
  if ((v31 & 0xC000000000000001) != 0)
  {
    v32 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_11;
  }

  if (*((v31 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v32 = *(v31 + 32);
LABEL_11:
    v33 = v32;

    v34 = [v18 systemBackgroundColor];
    [v33 setBackgroundColor:v34];

LABEL_14:
    sub_1001C1314();

    return;
  }

  __break(1u);
LABEL_17:
  __break(1u);
}

void sub_1001C112C(char a1)
{
  v9.receiver = v1;
  v9.super_class = type metadata accessor for TrendsSplashViewController();
  objc_msgSendSuper2(&v9, "viewWillAppear:", a1 & 1);
  sub_1001C17E8();
  v3 = *&v1[OBJC_IVAR____TtC10FitnessApp26TrendsSplashViewController_videoView];
  if (v3)
  {
    v4 = v3;
    v5 = [v4 window];
    if (v5)
    {

      v6 = *&v4[OBJC_IVAR____TtC10FitnessApp21TrendsSplashVideoView_player];
      if (v6)
      {
        v7 = &selRef_play;
LABEL_7:
        v8 = v6;
        [v8 *v7];
      }
    }

    else
    {
      v6 = *&v4[OBJC_IVAR____TtC10FitnessApp21TrendsSplashVideoView_player];
      if (v6)
      {
        v7 = &selRef_pause;
        goto LABEL_7;
      }
    }
  }
}

uint64_t sub_1001C1314()
{
  v1 = objc_opt_self();
  v2 = [v1 defaultCenter];
  v3 = objc_opt_self();
  v4 = [v3 mainQueue];
  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v19 = sub_1001C1D38;
  v20 = v5;
  v15 = _NSConcreteStackBlock;
  v16 = 1107296256;
  v17 = sub_100026F8C;
  v18 = &unk_10084A8D8;
  v6 = _Block_copy(&v15);

  v7 = [v2 addObserverForName:UIApplicationWillEnterForegroundNotification object:0 queue:v4 usingBlock:v6];
  _Block_release(v6);

  v8 = [v1 defaultCenter];
  v9 = [v3 mainQueue];
  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v19 = sub_1001C1D40;
  v20 = v10;
  v15 = _NSConcreteStackBlock;
  v16 = 1107296256;
  v17 = sub_100026F8C;
  v18 = &unk_10084A900;
  v11 = _Block_copy(&v15);

  v12 = [v8 addObserverForName:UIApplicationDidEnterBackgroundNotification object:0 queue:v9 usingBlock:v11];
  _Block_release(v11);

  sub_100140278(&qword_1008E7590);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1006D1F70;
  *(v13 + 56) = swift_getObjectType();
  *(v13 + 32) = v7;
  *(v13 + 88) = swift_getObjectType();
  *(v13 + 64) = v12;
  *(v0 + OBJC_IVAR____TtC10FitnessApp26TrendsSplashViewController_observers) = v13;
}

void sub_1001C15EC()
{
  static os_log_type_t.info.getter();
  v0 = HKLogActivity;
  os_log(_:dso:log:_:_:)();

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    sub_1001C17E8();
  }

  swift_beginAccess();
  v3 = swift_unknownObjectWeakLoadStrong();
  if (v3)
  {
    v4 = *(v3 + OBJC_IVAR____TtC10FitnessApp26TrendsSplashViewController_videoView);
    v5 = v3;
    v6 = v4;

    if (v4)
    {
      v7 = *&v6[OBJC_IVAR____TtC10FitnessApp21TrendsSplashVideoView_player];
      v8 = v7;

      if (v7)
      {
        [v8 play];
      }
    }
  }
}

void sub_1001C1704()
{
  static os_log_type_t.info.getter();
  v0 = HKLogActivity;
  os_log(_:dso:log:_:_:)();

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = OBJC_IVAR____TtC10FitnessApp26TrendsSplashViewController_videoView;
    [*(Strong + OBJC_IVAR____TtC10FitnessApp26TrendsSplashViewController_videoView) teardownPlayer];
    v4 = *&v2[v3];
    if (v4)
    {
      [v4 removeFromSuperview];
      v5 = *&v2[v3];
    }

    else
    {
      v5 = 0;
    }

    *&v2[v3] = 0;
  }
}

void sub_1001C17E8()
{
  v1 = OBJC_IVAR____TtC10FitnessApp26TrendsSplashViewController_videoView;
  if (!*&v0[OBJC_IVAR____TtC10FitnessApp26TrendsSplashViewController_videoView])
  {
    v2 = v0;
    v3 = [v0 view];
    if (v3)
    {
      v4 = v3;
      [v3 bounds];

      v5 = objc_allocWithZone(type metadata accessor for TrendsSplashVideoView());
      v6 = sub_1000698DC();
      if (v6)
      {
        v32 = v6;
        v7 = v6;
        [v7 setTranslatesAutoresizingMaskIntoConstraints:0];
        v8 = [v2 contentView];
        [v8 addSubview:v7];

        v9 = [v7 leadingAnchor];
        v10 = [v2 contentView];
        v11 = [v10 leadingAnchor];

        v12 = [v9 constraintEqualToAnchor:v11];
        v13 = [v7 trailingAnchor];
        v14 = [v2 contentView];
        v15 = [v14 trailingAnchor];

        v16 = [v13 constraintEqualToAnchor:v15];
        v17 = [v7 centerYAnchor];
        v18 = [v2 contentView];
        v19 = [v18 centerYAnchor];

        v20 = [v17 constraintEqualToAnchor:v19];
        v21 = [v7 heightAnchor];
        v22 = [v7 widthAnchor];

        v23 = [v21 constraintEqualToAnchor:v22 multiplier:0.741319444];
        v24 = objc_opt_self();
        sub_100140278(&unk_1008E4E20);
        v25 = swift_allocObject();
        *(v25 + 16) = xmmword_1006D5300;
        *(v25 + 32) = v12;
        *(v25 + 40) = v16;
        *(v25 + 48) = v20;
        *(v25 + 56) = v23;
        sub_1000059F8(0, &qword_1008DC980);
        v26 = v12;
        v27 = v16;
        v28 = v20;
        v29 = v23;
        isa = Array._bridgeToObjectiveC()().super.isa;

        [v24 activateConstraints:isa];

        v31 = *&v2[v1];
        *&v2[v1] = v32;
      }
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_1001C1B98()
{
  v1 = OBJC_IVAR____TtC10FitnessApp26TrendsSplashViewController_videoView;
  [*(v0 + OBJC_IVAR____TtC10FitnessApp26TrendsSplashViewController_videoView) teardownPlayer];
  v2 = *(v0 + v1);
  if (v2)
  {
    [v2 removeFromSuperview];
    v2 = *(v0 + v1);
  }

  *(v0 + v1) = 0;
}

id sub_1001C1C70(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, "dealloc");
}

id sub_1001C1D48()
{
  v1 = [objc_opt_self() standardUserDefaults];
  v2 = String._bridgeToObjectiveC()();
  [v1 setBool:1 forKey:v2];

  v3 = [objc_opt_self() defaultCenter];
  if (qword_1008DAD60 != -1)
  {
    swift_once();
  }

  [v3 postNotificationName:qword_100925E00 object:v0];

  return [v0 dismissViewControllerAnimated:1 completion:0];
}

uint64_t sub_1001C1E68(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10002BACC;

  return sub_1001C0274(a1, v4, v5, v6);
}

id sub_1001C2018()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ActivitySharingHeaderSwiftUITableViewCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_1001C20A4()
{
  result = qword_1008DFA48;
  if (!qword_1008DFA48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008DFA48);
  }

  return result;
}

unint64_t sub_1001C2124()
{
  result = qword_1008DFA50;
  if (!qword_1008DFA50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008DFA50);
  }

  return result;
}

unint64_t sub_1001C217C()
{
  result = qword_1008DFA58;
  if (!qword_1008DFA58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008DFA58);
  }

  return result;
}

unint64_t sub_1001C21D4()
{
  result = qword_1008DFA60;
  if (!qword_1008DFA60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008DFA60);
  }

  return result;
}

unint64_t sub_1001C222C()
{
  result = qword_1008DFA68;
  if (!qword_1008DFA68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008DFA68);
  }

  return result;
}

uint64_t sub_1001C2280()
{
  sub_100140278(&qword_1008DD148);
  type metadata accessor for AppDependencyManager();
  static AppDependencyManager.shared.getter();
  v0 = AppDependency.__allocating_init(key:manager:)();
  sub_100140278(&qword_1008DD150);
  static AppDependencyManager.shared.getter();
  v1 = AppDependency.__allocating_init(key:manager:)();
  sub_100140278(&qword_1008DFB48);
  static AppDependencyManager.shared.getter();
  result = AppDependency.__allocating_init(key:manager:)();
  qword_100925178 = v0;
  unk_100925180 = v1;
  qword_100925188 = result;
  return result;
}

uint64_t sub_1001C238C()
{
  v0 = sub_100140278(&qword_1008DD138);
  __chkstk_darwin(v0 - 8);
  v2 = &v7 - v1;
  v3 = type metadata accessor for LocalizedStringResource();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = type metadata accessor for TypeDisplayRepresentation();
  sub_100163368(v5, qword_100925190);
  sub_10001AC90(v5, qword_100925190);
  LocalizedStringResource.init(stringLiteral:)();
  (*(v4 + 56))(v2, 1, 1, v3);
  return TypeDisplayRepresentation.init(name:numericFormat:)();
}

uint64_t sub_1001C24FC()
{
  v0 = sub_100140278(&qword_1008DFB70);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v9 - v2;
  v4 = sub_100140278(&qword_1008DFB78);
  __chkstk_darwin(v4);
  v5 = sub_100140278(&qword_1008DFB68);
  sub_100163368(v5, qword_1009251A8);
  sub_10001AC90(v5, qword_1009251A8);
  sub_1001C2D24();
  EntityURLRepresentation.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v6._object = 0x8000000100749FF0;
  v6._countAndFlagsBits = 0xD00000000000001ELL;
  EntityURLRepresentation.StringInterpolation.appendLiteral(_:)(v6);
  (*(v1 + 104))(v3, enum case for EntityURLRepresentation.StringInterpolation.Token.id<A>(_:), v0);
  EntityURLRepresentation.StringInterpolation.appendInterpolation(_:)();
  (*(v1 + 8))(v3, v0);
  v7._countAndFlagsBits = 0;
  v7._object = 0xE000000000000000;
  EntityURLRepresentation.StringInterpolation.appendLiteral(_:)(v7);
  return EntityURLRepresentation.init(stringInterpolation:)();
}

id sub_1001C26F8()
{
  v1 = v0;
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = objc_opt_self();
  v7 = *(v1 + 224);
  v8 = [v7 startDate];
  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  isa = Date._bridgeToObjectiveC()().super.isa;
  (*(v3 + 8))(v5, v2);
  v10 = [objc_opt_self() fu_bodyShortFont];
  v11 = [v6 formattedListStringForDate:isa font:v10];

  v12 = [v11 string];
  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;

  AppDependency.wrappedValue.getter();
  v16 = v36;
  v36 = 0;
  v17 = [v16 localizedGoalDescriptionForWorkout:v7 withValue:&v36 appendActivityType:0];

  v18 = v36;
  if (v17)
  {
    v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v21 = v20;
    v22 = v18;
  }

  else
  {
    v23 = v36;
    v19 = 0;
    v21 = 0;
  }

  AppDependency.wrappedValue.getter();
  v24 = v36;
  v25 = [v7 displayDetail:v36];

  if (v25)
  {
    v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v28 = v27;
  }

  else
  {
    if (v21)
    {
      v29 = v19;
    }

    else
    {
      v29 = 0;
    }

    v30 = 0xE000000000000000;
    if (v21)
    {
      v30 = v21;
    }

    v36 = v29;
    v37 = v30;
    v26 = String.init<A>(_:)();
    v28 = v31;
  }

  v36 = v13;
  v37 = v15;
  v32._countAndFlagsBits = 548913696;
  v32._object = 0xA400000000000000;
  String.append(_:)(v32);
  v33._countAndFlagsBits = v26;
  v33._object = v28;
  String.append(_:)(v33);

  return v36;
}

uint64_t sub_1001C29F0()
{
  v1 = sub_100140278(&qword_1008DDB78);
  __chkstk_darwin(v1 - 8);
  v2 = sub_100140278(&qword_1008DD138);
  __chkstk_darwin(v2 - 8);
  v4 = &v15 - v3;
  v5 = type metadata accessor for LocalizedStringResource();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = type metadata accessor for String.LocalizationValue.StringInterpolation();
  v8 = __chkstk_darwin(v7 - 8);
  __chkstk_darwin(v8);
  String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v9._countAndFlagsBits = 0;
  v9._object = 0xE000000000000000;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v9);
  String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v0[1]);
  v10._countAndFlagsBits = 0;
  v10._object = 0xE000000000000000;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v10);
  LocalizedStringResource.init(stringInterpolation:)();
  String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v11._countAndFlagsBits = 0;
  v11._object = 0xE000000000000000;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v11);
  v12._countAndFlagsBits = sub_1001C26F8();
  String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v12);

  v13._countAndFlagsBits = 0;
  v13._object = 0xE000000000000000;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v13);
  LocalizedStringResource.init(stringInterpolation:)();
  (*(v6 + 56))(v4, 0, 1, v5);

  DisplayRepresentation.Image.init(systemName:tintColor:symbolConfiguration:)();
  return DisplayRepresentation.init(title:subtitle:image:)();
}

uint64_t sub_1001C2C94@<X0>(void *a1@<X8>)
{
  if (qword_1008DA5B0 != -1)
  {
    v4 = a1;
    swift_once();
    a1 = v4;
  }

  v1 = unk_100925180;
  v2 = qword_100925188;
  *a1 = qword_100925178;
  a1[1] = v1;
  a1[2] = v2;
}

unint64_t sub_1001C2D24()
{
  result = qword_1008DFA70;
  if (!qword_1008DFA70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008DFA70);
  }

  return result;
}

unint64_t sub_1001C2D7C()
{
  result = qword_1008DFA78;
  if (!qword_1008DFA78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008DFA78);
  }

  return result;
}

uint64_t sub_1001C2DD0@<X0>(uint64_t a1@<X8>)
{
  if (qword_1008DA5C0 != -1)
  {
    swift_once();
  }

  v2 = sub_100140278(&qword_1008DFB68);
  v3 = sub_10001AC90(v2, qword_1009251A8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

unint64_t sub_1001C2E88()
{
  result = qword_1008DFA80;
  if (!qword_1008DFA80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008DFA80);
  }

  return result;
}

unint64_t sub_1001C2EDC()
{
  result = qword_1008DFA88;
  if (!qword_1008DFA88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008DFA88);
  }

  return result;
}

unint64_t sub_1001C2F30()
{
  result = qword_1008DFA90;
  if (!qword_1008DFA90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008DFA90);
  }

  return result;
}

unint64_t sub_1001C2F88()
{
  result = qword_1008DFA98;
  if (!qword_1008DFA98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008DFA98);
  }

  return result;
}

uint64_t sub_1001C2FDC@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t sub_1001C2FE8()
{
  sub_1001C7160();
  v1 = URLRepresentableEntity.urlRepresentationParameter.getter();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1001C3054@<X0>(uint64_t a1@<X8>)
{
  if (qword_1008DA5B8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for TypeDisplayRepresentation();
  v3 = sub_10001AC90(v2, qword_100925190);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1001C3140(uint64_t a1)
{
  v2 = sub_1001C2D24();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_1001C3190()
{
  result = qword_1008DFAB0;
  if (!qword_1008DFAB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008DFAB0);
  }

  return result;
}

uint64_t sub_1001C31E8(uint64_t a1)
{
  v2 = sub_1001C2F88();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

__n128 sub_1001C3234(uint64_t a1, __int128 *a2)
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

uint64_t sub_1001C3278(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 256))
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

uint64_t sub_1001C32C0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 256) = 1;
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

    *(result + 256) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1001C338C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = [objc_allocWithZone(NSUnitConverterLinear) initWithCoefficient:0.0166666667];
  v5 = objc_allocWithZone(NSUnitFrequency);
  v6 = String._bridgeToObjectiveC()();
  v7 = [v5 initWithSymbol:v6 converter:v4];

  *a3 = v7;
}

uint64_t sub_1001C3428(uint64_t a1, _OWORD *a2)
{
  *(v2 + 272) = a1;
  v3 = a2[13];
  *(v2 + 208) = a2[12];
  *(v2 + 224) = v3;
  v4 = a2[15];
  *(v2 + 240) = a2[14];
  *(v2 + 256) = v4;
  v5 = a2[9];
  *(v2 + 144) = a2[8];
  *(v2 + 160) = v5;
  v6 = a2[11];
  *(v2 + 176) = a2[10];
  *(v2 + 192) = v6;
  v7 = a2[5];
  *(v2 + 80) = a2[4];
  *(v2 + 96) = v7;
  v8 = a2[7];
  *(v2 + 112) = a2[6];
  *(v2 + 128) = v8;
  v9 = a2[1];
  *(v2 + 16) = *a2;
  *(v2 + 32) = v9;
  v10 = a2[3];
  *(v2 + 48) = a2[2];
  *(v2 + 64) = v10;
  return _swift_task_switch(sub_1001C3488, 0, 0);
}

uint64_t sub_1001C3488()
{
  v1 = v0[30];
  v2 = [v1 fiui_activityType];
  if (!v2)
  {
    __break(1u);
    return withCheckedContinuation<A>(isolation:function:_:)(v2, v3, v4, v5, v6, v7, v8, v9);
  }

  v10 = v2;
  v11 = [v2 isDownhillSnowSport];

  if (v11)
  {
    v12 = swift_task_alloc();
    v0[35] = v12;
    *(v12 + 16) = v0 + 2;
    v13 = swift_task_alloc();
    v0[36] = v13;
    v9 = sub_100140278(&qword_1008DED28);
    *v13 = v0;
    v13[1] = sub_1001C37E4;
    v2 = v0[34];
    v7 = sub_1001C70CC;
    v5 = 0x4574756F6B726F57;
    v6 = 0xED0000797469746ELL;
    v3 = 0;
    v4 = 0;
    v8 = v12;

    return withCheckedContinuation<A>(isolation:function:_:)(v2, v3, v4, v5, v6, v7, v8, v9);
  }

  sub_1000059F8(0, &qword_1008DEE18);
  isa = HKQuantityType.init(_:)(HKQuantityTypeIdentifierCyclingSpeed).super.super.super.isa;
  v15 = [v1 statisticsForType:isa];

  if (!v15)
  {
    goto LABEL_10;
  }

  v16 = [v15 maximumQuantity];
  if (!v16)
  {

LABEL_10:
    v23 = v0[34];
    v24 = sub_100140278(&qword_1008DED40);
    (*(*(v24 - 8) + 56))(v23, 1, 1, v24);
    goto LABEL_11;
  }

  v17 = v16;
  v18 = v0[34];
  v19 = String._bridgeToObjectiveC()();
  v20 = [objc_opt_self() unitFromString:v19];

  [v17 doubleValueForUnit:v20];
  v21 = [objc_opt_self() metersPerSecond];
  sub_1000059F8(0, &qword_1008DEE28);
  Measurement.init(value:unit:)();

  v22 = sub_100140278(&qword_1008DED40);
  (*(*(v22 - 8) + 56))(v18, 0, 1, v22);
LABEL_11:
  v25 = v0[1];

  return v25();
}

uint64_t sub_1001C37E4()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

void sub_1001C38F8(uint64_t a1)
{
  v2 = sub_100140278(&qword_1008DFB58);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v9 - v4;
  AppDependency.wrappedValue.getter();
  v6 = v9[1];
  (*(v3 + 16))(v5, a1, v2);
  v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v8 = swift_allocObject();
  (*(v3 + 32))(v8 + v7, v5, v2);
  HKWorkout.makeDownhillRuns(healthStore:completion:)();
}

uint64_t sub_1001C3A60(uint64_t a1)
{
  v2 = sub_100140278(&qword_1008DED40);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v15 - v4;
  v6 = sub_100140278(&qword_1008DED28);
  __chkstk_darwin(v6 - 8);
  v8 = &v15 - v7;
  if (a1)
  {
    type metadata accessor for DownhillRunsStats();
    swift_allocObject();

    DownhillRunsStats.init(downhillRuns:)();
    v9 = DownhillRunsStats.maximumSpeed.getter();
    if (v9)
    {
      v10 = v9;
      v11 = String._bridgeToObjectiveC()();
      v12 = [objc_opt_self() unitFromString:v11];

      [v10 doubleValueForUnit:v12];
      v13 = [objc_opt_self() metersPerSecond];
      sub_1000059F8(0, &qword_1008DEE28);
      Measurement.init(value:unit:)();
      (*(v3 + 16))(v8, v5, v2);
      (*(v3 + 56))(v8, 0, 1, v2);
      sub_100140278(&qword_1008DFB58);
      CheckedContinuation.resume(returning:)();

      return (*(v3 + 8))(v5, v2);
    }

    else
    {
      (*(v3 + 56))(v8, 1, 1, v2);
      sub_100140278(&qword_1008DFB58);
      CheckedContinuation.resume(returning:)();
    }
  }

  else
  {
    (*(v3 + 56))(v8, 1, 1, v2);
    sub_100140278(&qword_1008DFB58);
    return CheckedContinuation.resume(returning:)();
  }
}

uint64_t sub_1001C3D8C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 224);
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return _swift_task_switch(sub_1001C3DB0, 0, 0);
}

uint64_t sub_1001C3DB0()
{
  v2 = v0[2];
  v1 = v0[3];
  sub_100140278(&qword_1008DD148);
  type metadata accessor for AppDependencyManager();
  static AppDependencyManager.shared.getter();
  AppDependency.__allocating_init(key:manager:)();
  sub_100140278(&qword_1008DD150);
  static AppDependencyManager.shared.getter();
  v3 = AppDependency.__allocating_init(key:manager:)();
  sub_10051CE08(v1, 1, v3);
  v5 = v4;

  *v2 = v5;
  v6 = v0[1];

  return v6();
}

uint64_t sub_1001C3EDC(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 224);
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return _swift_task_switch(sub_1001C3F00, 0, 0);
}

uint64_t sub_1001C3F00()
{
  v2 = v0[2];
  v1 = v0[3];
  sub_100140278(&qword_1008DD148);
  type metadata accessor for AppDependencyManager();
  static AppDependencyManager.shared.getter();
  AppDependency.__allocating_init(key:manager:)();
  sub_100140278(&qword_1008DD150);
  static AppDependencyManager.shared.getter();
  v3 = AppDependency.__allocating_init(key:manager:)();
  sub_10051CE08(v1, 0, v3);
  v5 = v4;

  *v2 = v5;
  v6 = v0[1];

  return v6();
}

uint64_t sub_1001C402C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 224);
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return _swift_task_switch(sub_1001C4050, 0, 0);
}

uint64_t sub_1001C4050()
{
  v2 = v0[2];
  v1 = v0[3];
  sub_10040DA78();
  v3 = sub_10040DBB0(v1);

  *v2 = v3;
  v4 = v0[1];

  return v4();
}

uint64_t sub_1001C4104(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 224);
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return _swift_task_switch(sub_1001C4128, 0, 0);
}

uint64_t sub_1001C4128()
{
  sub_100140278(&qword_1008DD148);
  type metadata accessor for AppDependencyManager();
  static AppDependencyManager.shared.getter();
  v0[4] = AppDependency.__allocating_init(key:manager:)();
  sub_100140278(&qword_1008DD150);
  static AppDependencyManager.shared.getter();
  v0[5] = AppDependency.__allocating_init(key:manager:)();
  sub_100140278(&qword_1008DFB48);
  static AppDependencyManager.shared.getter();
  v1 = AppDependency.__allocating_init(key:manager:)();
  v0[6] = v1;
  v2 = swift_task_alloc();
  v0[7] = v2;
  *v2 = v0;
  v2[1] = sub_1001C42AC;
  v3 = v0[3];

  return sub_100465D68(v3, v1);
}

uint64_t sub_1001C42AC(uint64_t a1)
{
  *(*v1 + 64) = a1;

  return _swift_task_switch(sub_1001C440C, 0, 0);
}

uint64_t sub_1001C4430(uint64_t a1, _OWORD *a2)
{
  *(v2 + 280) = a1;
  v3 = a2[13];
  *(v2 + 208) = a2[12];
  *(v2 + 224) = v3;
  v4 = a2[15];
  *(v2 + 240) = a2[14];
  *(v2 + 256) = v4;
  v5 = a2[9];
  *(v2 + 144) = a2[8];
  *(v2 + 160) = v5;
  v6 = a2[11];
  *(v2 + 176) = a2[10];
  *(v2 + 192) = v6;
  v7 = a2[5];
  *(v2 + 80) = a2[4];
  *(v2 + 96) = v7;
  v8 = a2[7];
  *(v2 + 112) = a2[6];
  *(v2 + 128) = v8;
  v9 = a2[1];
  *(v2 + 16) = *a2;
  *(v2 + 32) = v9;
  v10 = a2[3];
  *(v2 + 48) = a2[2];
  *(v2 + 64) = v10;
  return _swift_task_switch(sub_1001C4490, 0, 0);
}

uint64_t sub_1001C4490()
{
  v1 = swift_task_alloc();
  *(v0 + 288) = v1;
  *(v1 + 16) = v0 + 16;
  v2 = swift_task_alloc();
  *(v0 + 296) = v2;
  *v2 = v0;
  v2[1] = sub_1001C4588;

  return withCheckedContinuation<A>(isolation:function:_:)(v0 + 272, 0, 0, 0x4574756F6B726F57, 0xED0000797469746ELL, sub_1001C7048, v1, &type metadata for Int);
}

uint64_t sub_1001C4588()
{

  return _swift_task_switch(sub_1001C46A0, 0, 0);
}

void sub_1001C46C0(uint64_t a1)
{
  v2 = sub_100140278(&qword_1008DFB50);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v9 - v4;
  type metadata accessor for EffortUtilities();
  AppDependency.wrappedValue.getter();
  v6 = v9[1];
  (*(v3 + 16))(v5, a1, v2);
  v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v8 = swift_allocObject();
  (*(v3 + 32))(v8 + v7, v5, v2);
  static EffortUtilities.fetchExertion(forWorkout:healthStore:completion:)();
}

void sub_1001C4840(void *a1)
{
  if (!a1)
  {
    goto LABEL_6;
  }

  v2 = [objc_opt_self() appleEffortScoreUnit];
  [a1 doubleValueForUnit:v2];
  v4 = v3;
  v5 = v3;

  if ((*&v5 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
  {
    if (v4 > -9.22337204e18)
    {
      if (v4 >= 9.22337204e18)
      {
        __break(1u);
      }

LABEL_6:
      sub_100140278(&qword_1008DFB50);
      CheckedContinuation.resume(returning:)();
      return;
    }

    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1001C4930(void *a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [a1 isMultiSportWorkout];
  v7 = 77;
  if (!v6)
  {
    v7 = 0;
  }

  v8 = 0xE000000000000000;
  if (v6)
  {
    v8 = 0xE100000000000000;
  }

  v9 = [a1 UUID];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v10 = UUID.uuidString.getter();
  v12 = v11;
  (*(v3 + 8))(v5, v2);
  v13._countAndFlagsBits = v10;
  v13._object = v12;
  String.append(_:)(v13);

  return v15;
}

uint64_t sub_1001C4A78@<X0>(void *a1@<X0>, void *a2@<X1>, _OWORD *a3@<X8>)
{
  v234 = a2;
  v215 = a1;
  v208 = a3;
  v3 = sub_100140278(&qword_1008DED28);
  v4 = __chkstk_darwin(v3 - 8);
  v217 = &v189 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v235 = &v189 - v6;
  v7 = sub_100140278(&qword_1008DED00);
  v8 = __chkstk_darwin(v7 - 8);
  v193 = &v189 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v194 = &v189 - v10;
  v11 = sub_100140278(&qword_1008DECC0);
  v12 = __chkstk_darwin(v11 - 8);
  v190 = &v189 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v189 = &v189 - v14;
  v15 = sub_100140278(&qword_1008DEC98);
  v16 = __chkstk_darwin(v15 - 8);
  v191 = &v189 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v192 = &v189 - v18;
  v19 = sub_100140278(&qword_1008DEC70);
  v20 = __chkstk_darwin(v19 - 8);
  v227 = &v189 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v228 = &v189 - v22;
  v23 = sub_100140278(&qword_1008DFAB8);
  v24 = __chkstk_darwin(v23 - 8);
  v214 = &v189 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v213 = &v189 - v26;
  v27 = type metadata accessor for Date();
  v211 = *(v27 - 8);
  v212 = v27;
  v28 = __chkstk_darwin(v27);
  v210 = &v189 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v31 = &v189 - v30;
  v32 = type metadata accessor for LocalizedStringResource();
  __chkstk_darwin(v32 - 8);
  sub_100140278(&qword_1008DFAC0);
  LocalizedStringResource.init(stringLiteral:)();
  v232 = EntityProperty<>.init(title:)();
  LocalizedStringResource.init(stringLiteral:)();
  v231 = EntityProperty<>.init(title:)();
  sub_100140278(&qword_1008DEDE0);
  LocalizedStringResource.init(stringLiteral:)();
  v226 = EntityProperty<>.init(title:)();
  sub_100140278(&qword_1008DEDE8);
  LocalizedStringResource.init(stringLiteral:)();
  v222 = EntityProperty<>.init(title:)();
  LocalizedStringResource.init(stringLiteral:)();
  v216 = EntityProperty<>.init(title:)();
  LocalizedStringResource.init(stringLiteral:)();
  v225 = EntityProperty<>.init(title:)();
  sub_100140278(&qword_1008DEDF0);
  LocalizedStringResource.init(stringLiteral:)();
  v224 = EntityProperty<>.init(title:)();
  sub_100140278(&qword_1008DEDF8);
  LocalizedStringResource.init(stringLiteral:)();
  v220 = EntityProperty<>.init(title:)();
  LocalizedStringResource.init(stringLiteral:)();
  v219 = EntityProperty<>.init(title:)();
  sub_100140278(&qword_1008DEE00);
  LocalizedStringResource.init(stringLiteral:)();
  v223 = EntityProperty<>.init(title:)();
  sub_100140278(&qword_1008DEE08);
  LocalizedStringResource.init(stringLiteral:)();
  v233 = EntityProperty<>.init(title:)();
  LocalizedStringResource.init(stringLiteral:)();
  v221 = EntityProperty<>.init(title:)();
  LocalizedStringResource.init(stringLiteral:)();
  v218 = EntityProperty<>.init(title:)();
  LocalizedStringResource.init(stringLiteral:)();
  v33 = EntityProperty<>.init(title:)();
  sub_100140278(&qword_1008DFAC8);
  LocalizedStringResource.init(stringLiteral:)();
  sub_10014A6B0(&qword_1008DFAD0, &qword_1008DFAD8);
  v207 = EntityProperty<>.init(title:_get:)();
  sub_100140278(&qword_1008DFAE0);
  LocalizedStringResource.init(stringLiteral:)();
  sub_10014A6B0(&qword_1008DFAE8, &qword_1008DFAF0);
  v206 = EntityProperty<>.init(title:_get:)();
  LocalizedStringResource.init(stringLiteral:)();
  v205 = EntityProperty<>.init(title:_get:)();
  sub_100140278(&qword_1008DFAF8);
  LocalizedStringResource.init(stringLiteral:)();
  sub_10014A6B0(&qword_1008DFB00, &qword_1008DFB08);
  v204 = EntityProperty<>.init(title:_get:)();
  sub_100140278(&qword_1008DFB10);
  LocalizedStringResource.init(stringLiteral:)();
  sub_10014A6B0(&qword_1008DFB18, &qword_1008DFB20);
  v203 = EntityProperty<>.init(title:_get:)();
  sub_100140278(&qword_1008DFB28);
  LocalizedStringResource.init(stringLiteral:)();
  v230 = EntityProperty<>.init(title:)();
  LocalizedStringResource.init(stringLiteral:)();
  v229 = EntityProperty<>.init(title:)();
  sub_100140278(&qword_1008DFB30);
  LocalizedStringResource.init(stringLiteral:)();
  sub_10014A6B0(&qword_1008DFB38, &qword_1008DFB40);
  v202 = EntityProperty<>.init(title:_get:)();
  sub_100140278(&qword_1008DD148);
  type metadata accessor for AppDependencyManager();
  v253 = 0u;
  v254 = 0u;
  *&v255 = 0;
  static AppDependencyManager.shared.getter();
  v201 = AppDependency.__allocating_init(key:manager:)();
  sub_100140278(&qword_1008DD150);
  *&v255 = 0;
  v253 = 0u;
  v254 = 0u;
  static AppDependencyManager.shared.getter();
  v34 = AppDependency.__allocating_init(key:manager:)();
  sub_100140278(&qword_1008DFB48);
  *&v255 = 0;
  v253 = 0u;
  v254 = 0u;
  static AppDependencyManager.shared.getter();
  v35 = AppDependency.__allocating_init(key:manager:)();
  v36 = v215;
  *&v199 = sub_1001C4930(v215);
  *(&v199 + 1) = v37;
  v38 = v234;
  *&v253 = v234;
  v39 = v36;
  v40 = v38;
  AppDependency.wrappedValue.setter();
  v209 = v40;
  *&v253 = [v40 fitnessUIFormattingManager];
  v41 = v253;
  v200 = v34;
  AppDependency.wrappedValue.setter();

  v42 = [v39 fiui_activityType];
  if (!v42)
  {
    goto LABEL_97;
  }

  v43 = v42;
  [v42 effectiveTypeIdentifier];
  [v43 swimmingLocationType];
  [v43 isIndoor];
  v44 = FILocalizedNameForActivityType();
  if (!v44)
  {
    __break(1u);
LABEL_97:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  v45 = v44;
  v46 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v48 = v47;

  v49 = [v43 symbolName];
  v234 = v43;
  v197 = v35;
  v198 = v33;
  *&v196 = v46;
  *(&v196 + 1) = v48;
  if (v49)
  {
    v50 = v49;
    *&v195 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(&v195 + 1) = v51;
  }

  else
  {
    *&v195 = 0xD000000000000011;
    *(&v195 + 1) = 0x8000000100749FB0;
  }

  v52 = v212;
  v53 = v39;
  v54 = [v53 startDate];
  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  v56 = v210;
  v55 = v211;
  v57 = v211[2];
  v57(v210, v31, v52);
  EntityProperty.wrappedValue.setter();
  v58 = v55[1];
  v58(v31, v52);
  v59 = [v53 endDate];

  static Date._unconditionallyBridgeFromObjectiveC(_:)();
  v57(v56, v31, v52);
  EntityProperty.wrappedValue.setter();
  v58(v31, v52);
  [v53 fiui_duration];
  v215 = objc_opt_self();
  v60 = [v215 seconds];
  sub_1000059F8(0, &qword_1008DEE10);
  v61 = v213;
  Measurement.init(value:unit:)();
  v62 = sub_100140278(&qword_1008DEC58);
  v63 = *(*(v62 - 8) + 56);
  v63(v61, 0, 1, v62);
  v64 = v214;
  sub_10001B104(v61, v214, &qword_1008DFAB8);
  EntityProperty.wrappedValue.setter();
  sub_10000EA04(v61, &qword_1008DFAB8);
  [v53 elapsedTime];
  v65 = [v215 seconds];
  Measurement.init(value:unit:)();
  v63(v61, 0, 1, v62);
  v66 = v53;
  sub_10001B104(v61, v64, &qword_1008DFAB8);
  EntityProperty.wrappedValue.setter();
  sub_10000EA04(v61, &qword_1008DFAB8);
  v67 = [v53 fiui_totalDistance];
  if (v67)
  {
    v68 = v67;
    v69 = [objc_opt_self() meterUnit];
    [v68 doubleValueForUnit:v69];

    v70 = [objc_opt_self() meters];
    sub_1000059F8(0, &qword_1008DEE38);
    v71 = v228;
    Measurement.init(value:unit:)();
    v72 = sub_100140278(&qword_1008DEC88);
    (*(*(v72 - 8) + 56))(v71, 0, 1, v72);
    sub_10001B104(v71, v227, &qword_1008DEC70);
    EntityProperty.wrappedValue.setter();

    sub_10000EA04(v71, &qword_1008DEC70);
  }

  v73 = sub_1000059F8(0, &qword_1008DEE18);
  isa = HKQuantityType.init(_:)(HKQuantityTypeIdentifierActiveEnergyBurned).super.super.super.isa;
  v75 = &selRef_setNavigationBarHidden_animated_;
  v76 = [v66 statisticsForType:isa];

  v77 = v234;
  if (v76)
  {
    v78 = [v76 sumQuantity];
    if (!v78)
    {

      goto LABEL_17;
    }

    v79 = v78;
    v214 = objc_opt_self();
    v80 = [v214 largeCalorieUnit];
    [v79 doubleValueForUnit:v80];

    v213 = objc_opt_self();
    v81 = [v213 kilocalories];
    v82 = sub_1000059F8(0, &qword_1008DEE40);
    v83 = v73;
    v84 = v192;
    v212 = v82;
    Measurement.init(value:unit:)();
    v85 = sub_100140278(&qword_1008DECB0);
    v86 = *(v85 - 8);
    v87 = *(v86 + 56);
    v210 = (v86 + 56);
    v211 = v87;
    (v87)(v84, 0, 1, v85);
    sub_10001B104(v84, v191, &qword_1008DEC98);
    EntityProperty.wrappedValue.setter();
    sub_10000EA04(v84, &qword_1008DEC98);
    v88 = HKQuantityTypeIdentifierBasalEnergyBurned;
    v215 = v83;
    v75 = &selRef_setNavigationBarHidden_animated_;
    v89 = HKQuantityType.init(_:)(v88).super.super.super.isa;
    v90 = v66;
    v91 = [v66 statisticsForType:v89];

    if (v91)
    {
      v92 = [v91 sumQuantity];
      if (v92)
      {
        v93 = v92;
        v94 = [v214 largeCalorieUnit];
        [v93 doubleValueForUnit:v94];

        v95 = [v213 kilocalories];
        v96 = v192;
        Measurement.init(value:unit:)();
        (v211)(v96, 0, 1, v85);
        sub_10001B104(v96, v191, &qword_1008DEC98);
        EntityProperty.wrappedValue.setter();

        v75 = &selRef_setNavigationBarHidden_animated_;
        sub_10000EA04(v96, &qword_1008DEC98);
LABEL_16:
        v77 = v234;
        v66 = v90;
        goto LABEL_17;
      }
    }

    goto LABEL_16;
  }

LABEL_17:
  v97 = [v66 fiui_elevationGain];
  if (v97)
  {
    v98 = v97;
    v99 = [objc_opt_self() meterUnit];
    [v98 doubleValueForUnit:v99];

    v100 = [objc_opt_self() meters];
    sub_1000059F8(0, &qword_1008DEE38);
    v101 = v228;
    Measurement.init(value:unit:)();
    v102 = sub_100140278(&qword_1008DEC88);
    (*(*(v102 - 8) + 56))(v101, 0, 1, v102);
    sub_10001B104(v101, v227, &qword_1008DEC70);
    EntityProperty.wrappedValue.setter();

    v103 = v101;
    v75 = &selRef_setNavigationBarHidden_animated_;
    sub_10000EA04(v103, &qword_1008DEC70);
  }

  [v66 fiui_averagePower];
  if (v104 > 0.0)
  {
    v105 = [objc_opt_self() watts];
    sub_1000059F8(0, &qword_1008DEE30);
    v106 = v189;
    Measurement.init(value:unit:)();
    v107 = sub_100140278(&qword_1008DECD8);
    (*(*(v107 - 8) + 56))(v106, 0, 1, v107);
    sub_10001B104(v106, v190, &qword_1008DECC0);
    EntityProperty.wrappedValue.setter();
    sub_10000EA04(v106, &qword_1008DECC0);
  }

  v108 = HKQuantityType.init(_:)(HKQuantityTypeIdentifierStepCount).super.super.super.isa;
  v109 = [v66 v75[363]];

  if (v109)
  {
    v110 = [v109 sumQuantity];
    if (v110)
    {
      v111 = v110;
      v112 = [objc_opt_self() countUnit];
      [v111 doubleValueForUnit:v112];
      v114 = v113;
      v115 = v113;

      if ((*&v115 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        __break(1u);
      }

      else if (v114 > -9.22337204e18)
      {
        if (v114 >= 9.22337204e18)
        {
LABEL_91:
          __break(1u);
          goto LABEL_92;
        }

        *&v253 = v114;
        BYTE8(v253) = 0;
        EntityProperty.wrappedValue.setter();

        goto LABEL_27;
      }

      __break(1u);
LABEL_90:
      __break(1u);
      goto LABEL_91;
    }

LABEL_27:
  }

  v116 = HKQuantityType.init(_:)(HKQuantityTypeIdentifierFlightsClimbed).super.super.super.isa;
  v109 = [v66 v75[363]];

  if (!v109)
  {
    goto LABEL_35;
  }

  v117 = [v109 sumQuantity];
  if (v117)
  {
    v111 = v117;
    v118 = [objc_opt_self() countUnit];
    [v111 doubleValueForUnit:v118];
    v120 = v119;
    v121 = v119;

    if ((*&v121 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
    {
      if (v120 > -9.22337204e18)
      {
        if (v120 >= 9.22337204e18)
        {
          __break(1u);
LABEL_95:
          swift_once();
          goto LABEL_38;
        }

        *&v253 = v120;
        BYTE8(v253) = 0;
        EntityProperty.wrappedValue.setter();

        goto LABEL_34;
      }

LABEL_92:
      __break(1u);
LABEL_93:
      swift_once();
      goto LABEL_58;
    }

    goto LABEL_90;
  }

LABEL_34:

LABEL_35:
  [v66 fiui_averageCadence];
  if (v122 <= 0.0)
  {
    goto LABEL_43;
  }

  [v77 effectiveTypeIdentifier];
  if (!FIUIIsWorkoutTypePedestrianActivity())
  {
    if (qword_1008DA5D0 != -1)
    {
      swift_once();
    }

    v123 = &qword_1009251C8;
    goto LABEL_42;
  }

  if (qword_1008DA5D8 != -1)
  {
    goto LABEL_95;
  }

LABEL_38:
  v123 = &qword_1009251D0;
LABEL_42:
  v124 = *v123;
  sub_1000059F8(0, &qword_1008DEE20);
  v125 = v124;
  v126 = v194;
  Measurement.init(value:unit:)();
  v127 = sub_100140278(&qword_1008DED18);
  (*(*(v127 - 8) + 56))(v126, 0, 1, v127);
  sub_10001B104(v126, v193, &qword_1008DED00);
  EntityProperty.wrappedValue.setter();
  sub_10000EA04(v126, &qword_1008DED00);
LABEL_43:
  v128 = HKQuantityType.init(_:)(HKQuantityTypeIdentifierWalkingSpeed).super.super.super.isa;
  v129 = [v66 v75[363]];

  if (v129)
  {
    v130 = [v129 averageQuantity];
    if (v130)
    {
      v131 = v130;
      v132 = String._bridgeToObjectiveC()();
      v133 = [objc_opt_self() unitFromString:v132];

      [v131 doubleValueForUnit:v133];
      v134 = [objc_opt_self() metersPerSecond];
      sub_1000059F8(0, &qword_1008DEE28);
      v135 = v235;
      Measurement.init(value:unit:)();
      v136 = sub_100140278(&qword_1008DED40);
      (*(*(v136 - 8) + 56))(v135, 0, 1, v136);
      sub_10001B104(v135, v217, &qword_1008DED28);
      EntityProperty.wrappedValue.setter();

      v75 = &selRef_setNavigationBarHidden_animated_;
      sub_10000EA04(v135, &qword_1008DED28);
    }

    else
    {
    }
  }

  v137 = HKQuantityType.init(_:)(HKQuantityTypeIdentifierRunningSpeed).super.super.super.isa;
  v138 = [v66 v75[363]];

  if (v138)
  {
    v139 = [v138 averageQuantity];
    if (v139)
    {
      v140 = v139;
      v141 = String._bridgeToObjectiveC()();
      v142 = [objc_opt_self() unitFromString:v141];

      [v140 doubleValueForUnit:v142];
      v143 = [objc_opt_self() metersPerSecond];
      sub_1000059F8(0, &qword_1008DEE28);
      v144 = v235;
      Measurement.init(value:unit:)();
      v145 = sub_100140278(&qword_1008DED40);
      (*(*(v145 - 8) + 56))(v144, 0, 1, v145);
      sub_10001B104(v144, v217, &qword_1008DED28);
      EntityProperty.wrappedValue.setter();

      v75 = &selRef_setNavigationBarHidden_animated_;
      sub_10000EA04(v144, &qword_1008DED28);
    }

    else
    {
    }
  }

  v146 = HKQuantityType.init(_:)(HKQuantityTypeIdentifierCyclingSpeed).super.super.super.isa;
  v147 = [v66 v75[363]];

  if (v147)
  {
    v148 = [v147 averageQuantity];
    if (v148)
    {
      v149 = v148;
      v150 = String._bridgeToObjectiveC()();
      v151 = [objc_opt_self() unitFromString:v150];

      [v149 doubleValueForUnit:v151];
      v152 = [objc_opt_self() metersPerSecond];
      sub_1000059F8(0, &qword_1008DEE28);
      v153 = v235;
      Measurement.init(value:unit:)();
      v154 = sub_100140278(&qword_1008DED40);
      (*(*(v154 - 8) + 56))(v153, 0, 1, v154);
      sub_10001B104(v153, v217, &qword_1008DED28);
      EntityProperty.wrappedValue.setter();

      v75 = &selRef_setNavigationBarHidden_animated_;
      sub_10000EA04(v153, &qword_1008DED28);
    }

    else
    {
    }
  }

  v155 = HKQuantityType.init(_:)(HKQuantityTypeIdentifierHeartRate).super.super.super.isa;
  v111 = [v66 v75[363]];

  if (!v111)
  {
    goto LABEL_60;
  }

  v156 = [v111 averageQuantity];
  if (!v156)
  {

    goto LABEL_60;
  }

  v109 = v156;
  v157 = [objc_opt_self() _countPerMinuteUnit];
  [v109 doubleValueForUnit:v157];

  if (qword_1008DA5C8 != -1)
  {
    goto LABEL_93;
  }

LABEL_58:
  v158 = qword_1009251C0;
  sub_1000059F8(0, &qword_1008DEE20);
  v159 = v158;
  v160 = v194;
  Measurement.init(value:unit:)();
  v161 = sub_100140278(&qword_1008DED18);
  (*(*(v161 - 8) + 56))(v160, 0, 1, v161);
  sub_10001B104(v160, v193, &qword_1008DED00);
  EntityProperty.wrappedValue.setter();

  sub_10000EA04(v160, &qword_1008DED00);
LABEL_60:
  v162 = [v66 workoutEvents];
  v163 = v234;
  if (v162)
  {
    v164 = v162;
    sub_1000059F8(0, &qword_1008DC000);
    v165 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    *&v253 = _swiftEmptyArrayStorage;
    if (v165 >> 62)
    {
      goto LABEL_76;
    }

    for (i = *((v165 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
    {
      v217 = v66;
      v167 = 0;
      v66 = (v165 & 0xC000000000000001);
      v168 = v165 & 0xFFFFFFFFFFFFFF8;
      v235 = (v165 & 0xFFFFFFFFFFFFFF8);
      while (1)
      {
        if (v66)
        {
          v169 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v167 >= *(v168 + 16))
          {
            goto LABEL_75;
          }

          v169 = *(v165 + 8 * v167 + 32);
        }

        v170 = v169;
        v163 = (v167 + 1);
        if (__OFADD__(v167, 1))
        {
          break;
        }

        if ([v169 type] == 3)
        {
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
          v168 = v235;
        }

        else
        {
        }

        ++v167;
        if (v163 == i)
        {
          v171 = v253;
          v163 = v234;
          v66 = v217;
          goto LABEL_78;
        }
      }

      __break(1u);
LABEL_75:
      __break(1u);
LABEL_76:
      ;
    }

    v171 = _swiftEmptyArrayStorage;
LABEL_78:

    if ((v171 & 0x8000000000000000) != 0 || (v171 & 0x4000000000000000) != 0)
    {
      v172 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v172 = *(v171 + 16);
    }

    if (v172 > 0)
    {
      *&v253 = v172;
      BYTE8(v253) = 0;
      EntityProperty.wrappedValue.setter();
    }
  }

  v173 = [v66 fiui_lapLength];

  if (v173)
  {
    v174 = [objc_opt_self() meterUnit];
    [v173 doubleValueForUnit:v174];

    v175 = [objc_opt_self() meters];
    sub_1000059F8(0, &qword_1008DEE38);
    v176 = v228;
    Measurement.init(value:unit:)();
    v177 = sub_100140278(&qword_1008DEC88);
    (*(*(v177 - 8) + 56))(v176, 0, 1, v177);
    sub_10001B104(v176, v227, &qword_1008DEC70);
    v178 = v198;
    EntityProperty.wrappedValue.setter();

    sub_10000EA04(v176, &qword_1008DEC70);
  }

  else
  {

    v178 = v198;
  }

  v253 = v199;
  v237 = v199;
  v254 = v196;
  v238 = v196;
  v255 = v195;
  v239 = v195;
  v256 = v232;
  *&v240 = v232;
  *(&v240 + 1) = v231;
  v257 = v231;
  v258 = v226;
  *&v241 = v226;
  *(&v241 + 1) = v222;
  v259 = v222;
  v260 = v216;
  *&v242 = v216;
  *(&v242 + 1) = v225;
  v261 = v225;
  v262 = v224;
  *&v243 = v224;
  *(&v243 + 1) = v220;
  v263 = v220;
  v264 = v219;
  *&v244 = v219;
  *(&v244 + 1) = v223;
  v265 = v223;
  v266 = v233;
  *&v245 = v233;
  *(&v245 + 1) = v221;
  v267 = v221;
  v268 = v218;
  *&v246 = v218;
  *(&v246 + 1) = v178;
  v269 = v178;
  v270 = v207;
  *&v247 = v207;
  *(&v247 + 1) = v206;
  v271 = v206;
  v272 = v205;
  *&v248 = v205;
  *(&v248 + 1) = v204;
  v273 = v204;
  v274 = v203;
  *&v249 = v203;
  *(&v249 + 1) = v230;
  v275 = v230;
  v276 = v229;
  *&v250 = v229;
  *(&v250 + 1) = v202;
  v277 = v202;
  v278 = v66;
  *&v251 = v66;
  *(&v251 + 1) = v201;
  v279 = v201;
  v280 = v200;
  *&v252 = v200;
  *(&v252 + 1) = v197;
  v281 = v197;
  sub_1001C6FE0(&v237, &v236);
  result = sub_1001C7018(&v253);
  v180 = v250;
  v181 = v208;
  v208[12] = v249;
  v181[13] = v180;
  v182 = v252;
  v181[14] = v251;
  v181[15] = v182;
  v183 = v246;
  v181[8] = v245;
  v181[9] = v183;
  v184 = v248;
  v181[10] = v247;
  v181[11] = v184;
  v185 = v242;
  v181[4] = v241;
  v181[5] = v185;
  v186 = v244;
  v181[6] = v243;
  v181[7] = v186;
  v187 = v238;
  *v181 = v237;
  v181[1] = v187;
  v188 = v240;
  v181[2] = v239;
  v181[3] = v188;
  return result;
}

void sub_1001C7050(void *a1)
{
  sub_100140278(&qword_1008DFB50);

  sub_1001C4840(a1);
}

uint64_t sub_1001C70D4(uint64_t a1)
{
  sub_100140278(&qword_1008DFB58);

  return sub_1001C3A60(a1);
}

unint64_t sub_1001C7160()
{
  result = qword_1008DFB60;
  if (!qword_1008DFB60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008DFB60);
  }

  return result;
}

id sub_1001C724C(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

id sub_1001C72D4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WorkoutConfigurationOccurrenceStoreBridge();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_1001C7318@<X0>(void *a1@<X8>)
{
  v2 = *(*v1 + OBJC_IVAR___CHWorkoutConfigurationOccurrenceStore_bridgedValue);
  *a1 = v2;
  return v2;
}

uint64_t sub_1001C7364()
{
  v1 = type metadata accessor for SeymourAvailabilityManager.State(0);
  __chkstk_darwin(v1 - 8);
  v3 = v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for ContentAvailability();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = v16 - v9;
  v11 = OBJC_IVAR____TtC10FitnessApp26SeymourAvailabilityManager_state;
  swift_beginAccess();
  sub_1001B3F54(v0 + v11, v3);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_1001B3FB8(v3);
    return 0;
  }

  (*(v5 + 32))(v10, v3, v4);
  (*(v5 + 104))(v8, enum case for ContentAvailability.available(_:), v4);
  sub_1001C8784(&qword_1008F54E0);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (v16[3] == v16[1] && v16[4] == v16[2])
  {
    v13 = *(v5 + 8);
    v13(v8, v4);
    v13(v10, v4);
  }

  else
  {
    v14 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v15 = *(v5 + 8);
    v15(v8, v4);
    v15(v10, v4);

    if ((v14 & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

BOOL sub_1001C7654()
{
  v1 = type metadata accessor for SeymourAvailabilityManager.State(0);
  __chkstk_darwin(v1 - 8);
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for ContentAvailability();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v15 - v9;
  v11 = OBJC_IVAR____TtC10FitnessApp26SeymourAvailabilityManager_state;
  swift_beginAccess();
  sub_1001B3F54(v0 + v11, v3);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_1001B3FB8(v3);
    return 0;
  }

  (*(v5 + 32))(v10, v3, v4);
  (*(v5 + 104))(v8, enum case for ContentAvailability.available(_:), v4);
  sub_1001C8784(&qword_1008DFD20);
  v12 = dispatch thunk of static Equatable.== infix(_:_:)();
  v13 = *(v5 + 8);
  v13(v8, v4);
  v13(v10, v4);
  return (v12 & 1) == 0;
}

uint64_t sub_1001C7974()
{
  v0 = type metadata accessor for SeymourAvailabilityManager.State(0);
  __chkstk_darwin(v0 - 8);
  v2 = &v14[-((v1 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v3 = type metadata accessor for ContentAvailability();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v14[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v9 = &v14[-v8];
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v11 = result;
    ContentAvailabilityUpdated.availability.getter();
    v12 = OBJC_IVAR____TtC10FitnessApp26SeymourAvailabilityManager_state;
    swift_beginAccess();
    sub_1001B3F54(v11 + v12, v2);
    if ((*(v4 + 48))(v2, 1, v3) == 1)
    {
      sub_1001B3FB8(v2);
      sub_1001C8438(v9);

      return (*(v4 + 8))(v9, v3);
    }

    else
    {
      (*(v4 + 32))(v7, v2, v3);
      sub_1001C8784(&qword_1008DFD20);
      if ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
      {
        sub_1001C8438(v9);
      }

      v13 = *(v4 + 8);
      v13(v7, v3);
      return (v13)(v9, v3);
    }
  }

  return result;
}

uint64_t sub_1001C7BDC(uint64_t a1, uint64_t a2)
{
  v73 = a2;
  v3 = type metadata accessor for SeymourAvailabilityManager.State(0);
  __chkstk_darwin(v3 - 8);
  v72 = &v62[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = type metadata accessor for Logger();
  v76 = *(v5 - 8);
  v6 = __chkstk_darwin(v5);
  v8 = &v62[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v10 = &v62[-v9];
  v11 = type metadata accessor for ContentAvailability();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v74 = &v62[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = __chkstk_darwin(v13);
  v70 = &v62[-v16];
  v17 = __chkstk_darwin(v15);
  v75 = &v62[-v18];
  v19 = __chkstk_darwin(v17);
  v21 = &v62[-v20];
  __chkstk_darwin(v19);
  v23 = &v62[-v22];
  v24 = sub_100140278(&qword_1008DFD18);
  __chkstk_darwin(v24);
  v26 = &v62[-v25];
  sub_1001C8714(a1, &v62[-v25]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    static Log.default.getter();
    swift_errorRetain();
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v77[0] = v30;
      *v29 = 136315138;
      swift_getErrorValue();
      v31 = Error.logOutput.getter();
      v33 = sub_10000AFDC(v31, v32, v77);

      *(v29 + 4) = v33;
      _os_log_impl(&_mh_execute_header, v27, v28, "Failed to query content availability: %s", v29, 0xCu);
      sub_100005A40(v30);
    }

    else
    {
    }

    return (*(v76 + 8))(v8, v5);
  }

  else
  {
    v66 = v12[4];
    v66(v23, v26, v11);
    v34 = [objc_opt_self() isRunningInStoreDemoMode];
    static Log.default.getter();
    v35 = v12[2];
    v68 = v12 + 2;
    v69 = v23;
    v67 = v35;
    v35(v21, v23, v11);
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.default.getter();
    v38 = os_log_type_enabled(v36, v37);
    v71 = v12;
    if (v38)
    {
      v39 = swift_slowAlloc();
      v65 = v12 + 4;
      v40 = v39;
      v41 = swift_slowAlloc();
      v63 = v34;
      v42 = v41;
      v77[0] = v41;
      *v40 = 136315394;
      sub_1001C8784(&qword_1008DFD28);
      v43 = dispatch thunk of CustomStringConvertible.description.getter();
      v64 = v5;
      v45 = v44;
      v46 = v12[1];
      v46(v21, v11);
      v47 = sub_10000AFDC(v43, v45, v77);

      *(v40 + 4) = v47;
      *(v40 + 12) = 1024;
      LODWORD(v47) = v63;
      *(v40 + 14) = v63;
      _os_log_impl(&_mh_execute_header, v36, v37, "Received content availability: %s isDemoMode: %{BOOL}d", v40, 0x12u);
      sub_100005A40(v42);

      (*(v76 + 8))(v10, v64);
      v34 = v47;
    }

    else
    {

      v46 = v12[1];
      v46(v21, v11);
      (*(v76 + 8))(v10, v5);
    }

    v49 = v69;
    v50 = v75;
    if (v34 && (v51 = v70, v52 = v71[13], v52(v70, enum case for ContentAvailability.unavailableStoreFront(_:), v11), sub_1001C8784(&qword_1008DFD20), v53 = dispatch thunk of static Equatable.== infix(_:_:)(), v46(v51, v11), (v53 & 1) == 0))
    {
      v54 = v46;
      v52(v50, enum case for ContentAvailability.available(_:), v11);
    }

    else
    {
      v54 = v46;
      v67(v50, v49, v11);
    }

    v55 = v74;
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    v57 = v71;
    if (Strong)
    {
      v58 = Strong;
      v59 = OBJC_IVAR____TtC10FitnessApp26SeymourAvailabilityManager_state;
      swift_beginAccess();
      v60 = v58 + v59;
      v61 = v72;
      sub_1001B3F54(v60, v72);
      if ((v57[6])(v61, 1, v11) == 1)
      {
        sub_1001B3FB8(v61);
        sub_1001C8438(v50);
      }

      else
      {
        v66(v55, v61, v11);
        sub_1001C8784(&qword_1008DFD20);
        if ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
        {
          sub_1001C8438(v50);
        }

        v54(v55, v11);
      }
    }

    v54(v50, v11);
    return (v54)(v49, v11);
  }
}

void sub_1001C8438(uint64_t a1)
{
  v3 = type metadata accessor for SeymourAvailabilityManager.State(0);
  __chkstk_darwin(v3 - 8);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ContentAvailability();
  v7 = *(v6 - 8);
  (*(v7 + 16))(v5, a1, v6);
  (*(v7 + 56))(v5, 0, 1, v6);
  v8 = OBJC_IVAR____TtC10FitnessApp26SeymourAvailabilityManager_state;
  swift_beginAccess();
  sub_100007CC0(v5, v1 + v8);
  swift_endAccess();
  LOBYTE(v8) = sub_1001C7364();
  v9 = [objc_opt_self() standardUserDefaults];
  v10 = String._bridgeToObjectiveC()();
  [v9 setBool:v8 & 1 forKey:v10];

  v11 = [objc_opt_self() defaultCenter];
  if (qword_1008DA5E0 != -1)
  {
    swift_once();
  }

  [v11 postNotificationName:qword_1009251D8 object:v1];
}

id sub_1001C8638()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SeymourAvailabilityManager(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1001C8714(uint64_t a1, uint64_t a2)
{
  v4 = sub_100140278(&qword_1008DFD18);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001C8784(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ContentAvailability();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

char *sub_1001C87D0(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC10FitnessApp21TrendChartMaskingView_leftView;
  *&v4[v9] = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v10 = OBJC_IVAR____TtC10FitnessApp21TrendChartMaskingView_centerView;
  *&v4[v10] = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v11 = OBJC_IVAR____TtC10FitnessApp21TrendChartMaskingView_rightView;
  *&v4[v11] = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v4[OBJC_IVAR____TtC10FitnessApp21TrendChartMaskingView_unmaskedWidth] = 0;
  *&v4[OBJC_IVAR____TtC10FitnessApp21TrendChartMaskingView_unmaskedCenterX] = 0;
  v27.receiver = v4;
  v27.super_class = type metadata accessor for TrendChartMaskingView();
  v12 = objc_msgSendSuper2(&v27, "initWithFrame:", a1, a2, a3, a4);
  v13 = OBJC_IVAR____TtC10FitnessApp21TrendChartMaskingView_leftView;
  v14 = *&v12[OBJC_IVAR____TtC10FitnessApp21TrendChartMaskingView_leftView];
  sub_1001C8DCC();
  v15 = v12;
  v16 = v14;
  isa = UIColor.init(_colorLiteralRed:green:blue:alpha:)(0.0, 0.0, 0.0, 0.30137).super.isa;
  [v16 setBackgroundColor:isa];

  v18 = OBJC_IVAR____TtC10FitnessApp21TrendChartMaskingView_centerView;
  v19 = *&v15[OBJC_IVAR____TtC10FitnessApp21TrendChartMaskingView_centerView];
  v20 = objc_opt_self();
  v21 = v19;
  v22 = [v20 blackColor];
  [v21 setBackgroundColor:v22];

  v23 = OBJC_IVAR____TtC10FitnessApp21TrendChartMaskingView_rightView;
  v24 = *&v15[OBJC_IVAR____TtC10FitnessApp21TrendChartMaskingView_rightView];
  v25 = UIColor.init(_colorLiteralRed:green:blue:alpha:)(0.0, 0.0, 0.0, 0.30137).super.isa;
  [v24 setBackgroundColor:v25];

  [v15 addSubview:*&v12[v13]];
  [v15 addSubview:*&v15[v18]];
  [v15 addSubview:*&v15[v23]];

  return v15;
}

uint64_t sub_1001C8A58(void *a1)
{
  v3 = OBJC_IVAR____TtC10FitnessApp21TrendChartMaskingView_leftView;
  *(v1 + v3) = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v4 = OBJC_IVAR____TtC10FitnessApp21TrendChartMaskingView_centerView;
  *(v1 + v4) = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v5 = OBJC_IVAR____TtC10FitnessApp21TrendChartMaskingView_rightView;
  v6 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];

  *(v1 + v5) = v6;
  type metadata accessor for TrendChartMaskingView();
  swift_deallocPartialClassInstance();
  return 0;
}

id sub_1001C8B84()
{
  v11.receiver = v0;
  v11.super_class = type metadata accessor for TrendChartMaskingView();
  objc_msgSendSuper2(&v11, "layoutSubviews");
  v1 = OBJC_IVAR____TtC10FitnessApp21TrendChartMaskingView_unmaskedWidth;
  v2 = *&v0[OBJC_IVAR____TtC10FitnessApp21TrendChartMaskingView_unmaskedWidth];
  v3 = *&v0[OBJC_IVAR____TtC10FitnessApp21TrendChartMaskingView_unmaskedCenterX] + v2 * -0.5;
  v4 = v2 + v3;
  v5 = *&v0[OBJC_IVAR____TtC10FitnessApp21TrendChartMaskingView_leftView];
  [v0 frame];
  [v5 setFrame:{0.0, 0.0, v3, CGRectGetHeight(v12)}];
  v6 = *&v0[OBJC_IVAR____TtC10FitnessApp21TrendChartMaskingView_centerView];
  v7 = *&v0[v1];
  [v0 frame];
  [v6 setFrame:{v3, 0.0, v7, CGRectGetHeight(v13)}];
  v8 = *&v0[OBJC_IVAR____TtC10FitnessApp21TrendChartMaskingView_rightView];
  [v0 frame];
  v9 = CGRectGetWidth(v14) - v4;
  [v0 frame];
  return [v8 setFrame:{v4, 0.0, v9, CGRectGetHeight(v15)}];
}

id sub_1001C8D18()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TrendChartMaskingView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_1001C8DCC()
{
  result = qword_1008E7FC0;
  if (!qword_1008E7FC0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1008E7FC0);
  }

  return result;
}

void sub_1001C8EEC()
{
  v21.receiver = v0;
  v21.super_class = type metadata accessor for WorkoutDetailedHeartRateViewController();
  objc_msgSendSuper2(&v21, "viewDidLoad");
  v1 = [v0 view];
  if (!v1)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v2 = v1;
  v3 = objc_opt_self();
  v4 = [v3 systemBackgroundColor];
  [v2 setBackgroundColor:v4];

  v5 = [v0 navigationItem];
  v6 = [objc_allocWithZone(UIBarButtonItem) initWithBarButtonSystemItem:24 target:v0 action:"close"];
  [v5 setRightBarButtonItem:v6];

  v7 = [v0 navigationItem];
  v8 = [objc_opt_self() mainBundle];
  v9 = String._bridgeToObjectiveC()();
  v10 = [v8 localizedStringForKey:v9 value:0 table:0];

  if (!v10)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = String._bridgeToObjectiveC()();
  }

  [v7 setTitle:v10];
  v11 = *&v0[OBJC_IVAR___CHWorkoutDetailedHeartRateViewController_heartRateController];
  v12 = [v11 view];
  if (!v12)
  {
    goto LABEL_10;
  }

  v13 = v12;
  [v12 setTranslatesAutoresizingMaskIntoConstraints:0];

  v14 = [v11 view];
  if (!v14)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v15 = v14;
  v16 = [v3 clearColor];
  [v15 setBackgroundColor:v16];

  v17 = [v0 view];
  if (!v17)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v18 = v17;
  v19 = [v11 view];
  if (v19)
  {
    v20 = v19;
    [v18 addSubview:v19];

    [v0 addChildViewController:v11];
    [v11 didMoveToParentViewController:v0];
    sub_1001C9438();
    return;
  }

LABEL_13:
  __break(1u);
}

void sub_1001C923C(char a1)
{
  v12.receiver = v1;
  v12.super_class = type metadata accessor for WorkoutDetailedHeartRateViewController();
  objc_msgSendSuper2(&v12, "viewWillAppear:", a1 & 1);
  if ((_UISolariumEnabled() & 1) == 0)
  {
    v3 = [objc_allocWithZone(UINavigationBarAppearance) init];
    [v3 configureWithOpaqueBackground];
    v4 = objc_opt_self();
    v5 = [v4 systemBackgroundColor];
    [v3 setBackgroundColor:v5];

    v6 = [v4 systemBackgroundColor];
    [v3 setShadowColor:v6];

    v7 = [v1 navigationItem];
    [v7 setScrollEdgeAppearance:v3];

    v8 = [v1 tabBarController];
    if (v8)
    {
      v9 = v8;
      v10 = [v8 tabBar];

      v11 = [objc_allocWithZone(UITabBarAppearance) init];
      [v10 setScrollEdgeAppearance:v11];
    }
  }
}

void sub_1001C9438()
{
  sub_100140278(&unk_1008E4E20);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1006D5300;
  v2 = *&v0[OBJC_IVAR___CHWorkoutDetailedHeartRateViewController_heartRateController];
  v3 = [v2 view];
  if (!v3)
  {
    __break(1u);
    goto LABEL_13;
  }

  v4 = v3;
  v5 = [v3 topAnchor];

  v6 = [v0 view];
  if (!v6)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v7 = v6;
  v8 = [v6 safeAreaLayoutGuide];

  v9 = [v8 topAnchor];
  v10 = [v5 constraintEqualToAnchor:v9];

  *(v1 + 32) = v10;
  v11 = [v2 view];
  if (!v11)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v12 = v11;
  v13 = [v11 leadingAnchor];

  v14 = [v0 view];
  if (!v14)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = v14;
  v16 = [v14 safeAreaLayoutGuide];

  v17 = [v16 leadingAnchor];
  v18 = [v13 constraintEqualToAnchor:v17];

  *(v1 + 40) = v18;
  v19 = [v2 view];
  if (!v19)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v20 = v19;
  v21 = [v19 trailingAnchor];

  v22 = [v0 view];
  if (!v22)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v23 = v22;
  v24 = [v22 safeAreaLayoutGuide];

  v25 = [v24 trailingAnchor];
  v26 = [v21 constraintEqualToAnchor:v25];

  *(v1 + 48) = v26;
  v27 = [v2 view];
  if (!v27)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v28 = v27;
  v29 = [v27 bottomAnchor];

  v30 = [v0 view];
  if (!v30)
  {
LABEL_19:
    __break(1u);
    return;
  }

  v31 = v30;
  v32 = objc_opt_self();
  v33 = [v31 safeAreaLayoutGuide];

  v34 = [v33 bottomAnchor];
  v35 = [v29 constraintEqualToAnchor:v34];

  *(v1 + 56) = v35;
  sub_10019EC5C();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v32 activateConstraints:isa];
}

id sub_1001C9844()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WorkoutDetailedHeartRateViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_1001C991C(void *a1, void *a2, void *a3)
{
  v4 = v3;
  *&v4[OBJC_IVAR___CHWorkoutDetailedHeartRateViewController_workout] = a1;
  *&v4[OBJC_IVAR___CHWorkoutDetailedHeartRateViewController_workoutActivity] = a2;
  v8 = a2;
  v9 = a1;
  v10 = v8;
  v11 = v9;
  v12 = [a3 dataCalculator];
  type metadata accessor for WorkoutDetailHeartRateDataStore();
  swift_allocObject();
  v13 = a3;
  v14 = sub_100168BDC(v11, a2, v12, v13);

  *&v4[OBJC_IVAR___CHWorkoutDetailedHeartRateViewController_dataStore] = v14;
  sub_1001C9AA0();

  v15 = ObservedObject.init(wrappedValue:)();
  v16 = &v4[OBJC_IVAR___CHWorkoutDetailedHeartRateViewController_heartRateView];
  *v16 = v15;
  v16[1] = v17;
  v20 = v15;
  v21 = v17;
  objc_allocWithZone(sub_100140278(&qword_1008DFDD8));

  *&v4[OBJC_IVAR___CHWorkoutDetailedHeartRateViewController_heartRateController] = UIHostingController.init(rootView:)();
  v19.receiver = v4;
  v19.super_class = type metadata accessor for WorkoutDetailedHeartRateViewController();
  return objc_msgSendSuper2(&v19, "initWithNibName:bundle:", 0, 0);
}

unint64_t sub_1001C9AA0()
{
  result = qword_1008DFDD0;
  if (!qword_1008DFDD0)
  {
    type metadata accessor for WorkoutDetailHeartRateDataStore();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008DFDD0);
  }

  return result;
}

id sub_1001C9AF8()
{
  v1 = OBJC_IVAR____TtC10FitnessApp30AddToYourRingSectionHeaderView____lazy_storage___titleLabelHeightConstraint;
  v2 = *(v0 + OBJC_IVAR____TtC10FitnessApp30AddToYourRingSectionHeaderView____lazy_storage___titleLabelHeightConstraint);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC10FitnessApp30AddToYourRingSectionHeaderView____lazy_storage___titleLabelHeightConstraint);
  }

  else
  {
    v4 = [*(v0 + OBJC_IVAR____TtC10FitnessApp30AddToYourRingSectionHeaderView_titleLabel) heightAnchor];
    v5 = [v4 constraintEqualToConstant:0.0];

    v6 = *(v0 + v1);
    *(v0 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

char *sub_1001C9BA0(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC10FitnessApp30AddToYourRingSectionHeaderView_titleLabel;
  v10 = [objc_allocWithZone(UILabel) init];
  [v10 setTranslatesAutoresizingMaskIntoConstraints:0];
  *&v4[v9] = v10;
  *&v4[OBJC_IVAR____TtC10FitnessApp30AddToYourRingSectionHeaderView____lazy_storage___titleLabelHeightConstraint] = 0;
  v15.receiver = v4;
  v15.super_class = type metadata accessor for AddToYourRingSectionHeaderView();
  v11 = objc_msgSendSuper2(&v15, "initWithFrame:", a1, a2, a3, a4);
  v12 = *&v11[OBJC_IVAR____TtC10FitnessApp30AddToYourRingSectionHeaderView_titleLabel];
  v13 = v11;
  [v13 addSubview:v12];
  sub_1001C9D7C();

  return v13;
}

id sub_1001C9CA8(void *a1)
{
  v3 = OBJC_IVAR____TtC10FitnessApp30AddToYourRingSectionHeaderView_titleLabel;
  v4 = [objc_allocWithZone(UILabel) init];
  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
  *&v1[v3] = v4;
  *&v1[OBJC_IVAR____TtC10FitnessApp30AddToYourRingSectionHeaderView____lazy_storage___titleLabelHeightConstraint] = 0;
  v7.receiver = v1;
  v7.super_class = type metadata accessor for AddToYourRingSectionHeaderView();
  v5 = objc_msgSendSuper2(&v7, "initWithCoder:", a1);

  if (v5)
  {
  }

  return v5;
}

void sub_1001C9D7C()
{
  v1 = objc_opt_self();
  sub_100140278(&unk_1008E4E20);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1006D5300;
  *(v2 + 32) = sub_1001C9AF8();
  v3 = *&v0[OBJC_IVAR____TtC10FitnessApp30AddToYourRingSectionHeaderView_titleLabel];
  v4 = [v3 bottomAnchor];
  v5 = [v0 bottomAnchor];
  v6 = [v4 constraintEqualToAnchor:v5];

  *(v2 + 40) = v6;
  v7 = [v3 trailingAnchor];
  v8 = [v0 trailingAnchor];
  v9 = [v7 constraintEqualToAnchor:v8];

  *(v2 + 48) = v9;
  v10 = [v3 leadingAnchor];
  v11 = [v0 leadingAnchor];
  v12 = [v10 constraintEqualToAnchor:v11];

  *(v2 + 56) = v12;
  sub_10019EC5C();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v1 activateConstraints:isa];
}

id sub_1001C9F6C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AddToYourRingSectionHeaderView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_1001CA078(char *a1, void *a2)
{
  sub_100007C5C(&a1[OBJC_IVAR___CHFitnessAppContext_contentAvailabilityClient], v16);
  v4 = *&a1[OBJC_IVAR___CHFitnessAppContext_engagementAppBadgeProvider];
  v13 = *&a1[OBJC_IVAR___CHFitnessAppContext_eventHub];
  sub_100007C5C(&a1[OBJC_IVAR___CHFitnessAppContext_privacyPreferenceClient], v15);
  v5 = type metadata accessor for FitnessAppBadgeAggregator();
  v6 = objc_allocWithZone(v5);
  swift_unknownObjectWeakInit();
  *&v6[OBJC_IVAR___CHFitnessAppBadgeAggregator_appBadgeCount] = 0;
  *&v6[OBJC_IVAR___CHFitnessAppBadgeAggregator_fetchedActivitySharingCount] = 0;
  *&v6[OBJC_IVAR___CHFitnessAppBadgeAggregator_fetchedEngagementBadges] = &_swiftEmptySetSingleton;
  v6[OBJC_IVAR___CHFitnessAppBadgeAggregator_hasAmeliaBadge] = 0;
  v6[OBJC_IVAR___CHFitnessAppBadgeAggregator_isBrowsingSeymour] = 0;
  *&v6[OBJC_IVAR___CHFitnessAppBadgeAggregator_engagementAppBadgeProvider] = v4;
  *&v6[OBJC_IVAR___CHFitnessAppBadgeAggregator_activitySharingClient] = a2;
  sub_100007C5C(v16, &v6[OBJC_IVAR___CHFitnessAppBadgeAggregator_contentAvailabilityClient]);
  *&v6[OBJC_IVAR___CHFitnessAppBadgeAggregator_eventHub] = v13;
  sub_100007C5C(v15, &v6[OBJC_IVAR___CHFitnessAppBadgeAggregator_privacyPreferenceClient]);
  v14.receiver = v6;
  v14.super_class = v5;
  swift_retain_n();
  swift_unknownObjectRetain_n();
  v7 = a2;
  v8 = objc_msgSendSuper2(&v14, "init");
  v9 = objc_opt_self();
  v10 = v8;
  v11 = [v9 defaultCenter];
  if (qword_1008DA5E0 != -1)
  {
    swift_once();
  }

  [v11 addObserver:v10 selector:v13 name:v14.receiver object:v14.super_class];

  swift_unknownObjectRelease();
  sub_100005A40(v15);
  sub_100005A40(v16);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v10;
}

uint64_t sub_1001CA420()
{
  v1 = type metadata accessor for EngagementBadge();
  v2 = __chkstk_darwin(v1);
  v35 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __chkstk_darwin(v2);
  v41 = &v33 - v5;
  __chkstk_darwin(v4);
  v8 = &v33 - v7;
  v9 = *(v0 + OBJC_IVAR___CHFitnessAppBadgeAggregator_fetchedEngagementBadges);
  v10 = v9 + 56;
  v11 = 1 << *(v9 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(v9 + 56);
  v14 = (v11 + 63) >> 6;
  v40 = v6 + 16;
  v42 = v6;
  v43 = v6 + 32;
  v37 = (v6 + 8);
  v44 = v9;

  v16 = 0;
  v36 = _swiftEmptyArrayStorage;
  v38 = v14;
  v39 = v10;
LABEL_4:
  v17 = v16;
  if (!v13)
  {
    goto LABEL_6;
  }

  do
  {
    v16 = v17;
LABEL_9:
    v18 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
    v20 = v41;
    v19 = v42;
    v21 = *(v42 + 72);
    (*(v42 + 16))(v41, *(v44 + 48) + v21 * (v18 | (v16 << 6)), v1);
    v22 = *(v19 + 32);
    v22(v8, v20, v1);
    v23 = static EngagementConstants.appBadgingAllowedBadgeIdentifiers.getter();
    __chkstk_darwin(v23);
    *(&v33 - 2) = v8;
    LOBYTE(v20) = sub_100321EE0(sub_1001CEB38, (&v33 - 4), v23);

    if (v20)
    {
      v34 = v22;
      v22(v35, v8, v1);
      v24 = v36;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v45 = v24;
      v26 = v8;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_100185D1C(0, v24[2] + 1, 1);
        v24 = v45;
      }

      v27 = v21;
      v14 = v38;
      v10 = v39;
      v29 = v24[2];
      v28 = v24[3];
      v30 = (v29 + 1);
      v31 = v34;
      if (v29 >= v28 >> 1)
      {
        v36 = (v29 + 1);
        sub_100185D1C(v28 > 1, v29 + 1, 1);
        v31 = v34;
        v30 = v36;
        v24 = v45;
      }

      v24[2] = v30;
      v32 = *(v42 + 80);
      v36 = v24;
      result = v31(v24 + ((v32 + 32) & ~v32) + v29 * v27, v35, v1);
      v8 = v26;
      goto LABEL_4;
    }

    result = (*v37)(v8, v1);
    v17 = v16;
    v14 = v38;
    v10 = v39;
  }

  while (v13);
LABEL_6:
  while (1)
  {
    v16 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v16 >= v14)
    {

      return v36;
    }

    v13 = *(v10 + 8 * v16);
    ++v17;
    if (v13)
    {
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1001CA7A0()
{
  EngagementBadge.identifier.getter();
  String.lowercased()();

  String.lowercased()();
  sub_10000FCBC();
  v0 = StringProtocol.contains<A>(_:)();

  return v0 & 1;
}

void sub_1001CA854(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_allocObject();
  v12[2] = a3;
  v12[3] = a4;
  v12[4] = a1;
  v12[5] = a5;
  v12[6] = a6;
  v16[4] = sub_1000451AC;
  v16[5] = v12;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 1107296256;
  v16[2] = sub_100045844;
  v16[3] = &unk_10084AC70;
  v13 = _Block_copy(v16);
  v14 = a3;

  v15 = a1;

  [a2 getNotificationSettingsForTopicsWithCompletionHandler:v13];
  _Block_release(v13);
}

void sub_1001CA96C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_1001CA9D4()
{
  EngagementBadge.identifier.getter();
  sub_10000FCBC();
  v0 = StringProtocol.contains<A>(_:)();

  return v0 & 1;
}

void sub_1001CAA5C()
{
  v1 = *(v0 + OBJC_IVAR___CHFitnessAppBadgeAggregator_activitySharingClient);
  if (v1)
  {
    v2 = objc_allocWithZone(type metadata accessor for BackgroundTaskAssertion());
    v3 = v1;
    v4 = [v2 init];
    v5 = [objc_opt_self() sharedApplication];
    v6 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v18 = sub_1001CEB74;
    v19 = v6;
    v14 = _NSConcreteStackBlock;
    v15 = 1107296256;
    v16 = sub_1000449A8;
    v17 = &unk_10084B198;
    v7 = _Block_copy(&v14);

    v8 = [v5 beginBackgroundTaskWithExpirationHandler:v7];
    _Block_release(v7);

    v9 = &v4[OBJC_IVAR___CHBackgroundTaskAssertion_identifier];
    *v9 = v8;
    v9[8] = 0;
    v4[OBJC_IVAR___CHBackgroundTaskAssertion_state] = 1;
    v10 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v11 = swift_allocObject();
    *(v11 + 16) = v4;
    *(v11 + 24) = v10;
    v18 = sub_1001CEB20;
    v19 = v11;
    v14 = _NSConcreteStackBlock;
    v15 = 1107296256;
    v16 = sub_1001CB14C;
    v17 = &unk_10084B1E8;
    v12 = _Block_copy(&v14);
    v13 = v4;

    [v3 appBadgeCountWithCompletion:v12];
    _Block_release(v12);
  }
}

uint64_t sub_1001CACA8(int a1, uint64_t a2, void *a3, uint64_t a4)
{
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v20 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for DispatchQoS();
  v11 = *(v19 - 8);
  __chkstk_darwin(v19);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000059F8(0, &qword_1008E3FD0);
  v14 = static OS_dispatch_queue.main.getter();
  v15 = swift_allocObject();
  *(v15 + 16) = a3;
  *(v15 + 24) = a2;
  *(v15 + 32) = a4;
  *(v15 + 40) = a1;
  aBlock[4] = sub_1001CEB28;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000449A8;
  aBlock[3] = &unk_10084B238;
  v16 = _Block_copy(aBlock);
  v17 = a3;
  swift_errorRetain();

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100045C20(&qword_1008E33B0, &type metadata accessor for DispatchWorkItemFlags);
  sub_100140278(&unk_1008E7F50);
  sub_10014A6B0(&qword_1008E33C0, &unk_1008E7F50);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v16);

  (*(v20 + 8))(v10, v8);
  return (*(v11 + 8))(v13, v19);
}

void sub_1001CAFC0(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  if (a2)
  {
    static os_log_type_t.error.getter();
    v4 = HKLogActivity;
    sub_100140278(&unk_1008E4E50);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_1006D46C0;
    v6 = v4;
    sub_100140278(&qword_1008DFED8);
    v7 = Optional.description.getter();
    v9 = v8;
    *(v5 + 56) = &type metadata for String;
    *(v5 + 64) = sub_10000A788();
    *(v5 + 32) = v7;
    *(v5 + 40) = v9;
    os_log(_:dso:log:_:_:)();
  }

  else
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v12 = Strong;
      *(Strong + OBJC_IVAR___CHFitnessAppBadgeAggregator_fetchedActivitySharingCount) = a4;
      v13 = swift_unknownObjectWeakLoadStrong();
      if (v13)
      {
        [v13 aggregator:v12 didUpdateActivitySharingBadgeCount:a4];
        swift_unknownObjectRelease();
      }

      sub_10004548C(0, 0);
    }
  }

  sub_1002E03BC();
}

void sub_1001CB14C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

uint64_t sub_1001CB1C4()
{
  v1 = v0;
  v46 = sub_100140278(&qword_1008DFED0);
  v2 = *(v46 - 8);
  v3 = *(v2 + 64);
  v4 = __chkstk_darwin(v46);
  v5 = &v45 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v7 = &v45 - v6;
  v48 = sub_100140278(&unk_1008F2010);
  v8 = *(v48 - 8);
  v47 = *(v8 + 64);
  v9 = __chkstk_darwin(v48);
  v49 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v45 = &v45 - v12;
  __chkstk_darwin(v11);
  v50 = &v45 - v13;
  v14 = [objc_allocWithZone(type metadata accessor for BackgroundTaskAssertion()) init];
  v15 = [objc_opt_self() sharedApplication];
  v16 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_1001CEB74;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000449A8;
  aBlock[3] = &unk_10084B030;
  v17 = _Block_copy(aBlock);

  v18 = [v15 beginBackgroundTaskWithExpirationHandler:v17];
  _Block_release(v17);

  v19 = &v14[OBJC_IVAR___CHBackgroundTaskAssertion_identifier];
  *v19 = v18;
  v19[8] = 0;
  v14[OBJC_IVAR___CHBackgroundTaskAssertion_state] = 1;
  sub_1000066AC((*(v1 + OBJC_IVAR___CHFitnessAppBadgeAggregator_engagementAppBadgeProvider) + 16), *(*(v1 + OBJC_IVAR___CHFitnessAppBadgeAggregator_engagementAppBadgeProvider) + 40));
  dispatch thunk of EngagementClientProtocol.queryEngagementBadges()();
  v20 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v21 = swift_allocObject();
  *(v21 + 16) = v20;
  *(v21 + 24) = v14;
  v22 = swift_allocObject();
  *(v22 + 16) = sub_1001CE9E4;
  *(v22 + 24) = v21;
  v23 = v7;
  v24 = v7;
  v25 = v46;
  (*(v2 + 16))(v5, v23, v46);
  v26 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v27 = swift_allocObject();
  (*(v2 + 32))(v27 + v26, v5, v25);
  v28 = (v27 + ((v3 + v26 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v28 = sub_1001CEA00;
  v28[1] = v22;
  v29 = v14;
  v30 = v45;
  Promise.init(asyncOperation:)();
  (*(v2 + 8))(v24, v25);
  v31 = swift_allocObject();
  *(v31 + 16) = v29;
  v32 = swift_allocObject();
  *(v32 + 16) = sub_1001CEA30;
  *(v32 + 24) = v31;
  v33 = v48;
  v34 = v49;
  (*(v8 + 16))(v49, v30, v48);
  v35 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v36 = (v47 + v35 + 7) & 0xFFFFFFFFFFFFFFF8;
  v37 = swift_allocObject();
  (*(v8 + 32))(v37 + v35, v34, v33);
  v38 = (v37 + v36);
  *v38 = sub_100173EDC;
  v38[1] = v32;
  v39 = v29;
  v40 = v50;
  Promise.init(asyncOperation:)();
  v41 = *(v8 + 8);
  v41(v30, v33);
  v42 = Promise.operation.getter();
  v43 = swift_allocObject();
  *(v43 + 16) = 0;
  *(v43 + 24) = 0;
  v42(sub_100173F20, v43);

  return (v41)(v40, v33);
}

void sub_1001CB7BC(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_1001CDE24(v1);
  }

  sub_1002E03BC();
}

void sub_1001CB838()
{
  static os_log_type_t.error.getter();
  v0 = HKLogActivity;
  sub_100140278(&unk_1008E4E50);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1006D46C0;
  v2 = v0;
  sub_100140278(&qword_1008EB640);
  _print_unlocked<A, B>(_:_:)();
  *(v1 + 56) = &type metadata for String;
  *(v1 + 64) = sub_10000A788();
  *(v1 + 32) = 0;
  *(v1 + 40) = 0xE000000000000000;
  os_log(_:dso:log:_:_:)();

  sub_1002E03BC();
}

id sub_1001CB964()
{
  v141 = sub_100140278(&qword_1008DFEA0);
  v140 = *(v141 - 8);
  v0 = __chkstk_darwin(v141);
  v138 = &v128 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v137 = v1;
  __chkstk_darwin(v0);
  v139 = &v128 - v2;
  v136 = sub_100140278(&qword_1008DFD10);
  v135 = *(v136 - 8);
  v3 = __chkstk_darwin(v136);
  v133 = &v128 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v132 = v4;
  __chkstk_darwin(v3);
  v134 = &v128 - v5;
  v145 = sub_100140278(&unk_1008F2010);
  v154 = *(v145 - 8);
  v6 = *(v154 + 64);
  v7 = __chkstk_darwin(v145);
  v142 = &v128 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v7);
  v143 = &v128 - v9;
  v10 = __chkstk_darwin(v8);
  v144 = &v128 - v11;
  v12 = __chkstk_darwin(v10);
  v148 = &v128 - v13;
  v14 = __chkstk_darwin(v12);
  v147 = &v128 - v15;
  v16 = __chkstk_darwin(v14);
  v152 = &v128 - v17;
  __chkstk_darwin(v16);
  v151 = &v128 - v18;
  v146 = sub_100140278(&unk_1008F73A0);
  v19 = __chkstk_darwin(v146);
  v21 = &v128 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v156 = &v128 - v22;
  v23 = type metadata accessor for Logger();
  v24 = *(v23 - 8);
  v25 = __chkstk_darwin(v23);
  v27 = &v128 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v29 = &v128 - v28;
  static Log.default.getter();
  v30._countAndFlagsBits = 0xD00000000000002ALL;
  v30._object = 0x800000010074B8E0;
  v31._object = 0x800000010074B930;
  v31._countAndFlagsBits = 0xD000000000000012;
  Logger.trace(file:function:)(v30, v31);
  v149 = *(v24 + 8);
  v150 = v23;
  v149(v29, v23);
  v32 = [objc_allocWithZone(type metadata accessor for BackgroundTaskAssertion()) init];
  v33 = [objc_opt_self() sharedApplication];
  v34 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v162 = sub_1001CE774;
  v163 = v34;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  *&v161 = sub_1000449A8;
  *(&v161 + 1) = &unk_10084AD10;
  v35 = _Block_copy(&aBlock);

  v36 = [v33 beginBackgroundTaskWithExpirationHandler:v35];
  _Block_release(v35);

  v37 = &v32[OBJC_IVAR___CHBackgroundTaskAssertion_identifier];
  *v37 = v36;
  v37[8] = 0;
  v32[OBJC_IVAR___CHBackgroundTaskAssertion_state] = 1;
  v155 = swift_allocObject();
  *(v155 + 16) = v32;
  v38 = objc_opt_self();
  v153 = v32;
  v39 = [v38 standardUserDefaults];
  v40 = String._bridgeToObjectiveC()();
  v41 = [v39 BOOLForKey:v40];

  v42 = [v38 standardUserDefaults];
  v43 = String._bridgeToObjectiveC()();
  v44 = [v42 objectForKey:v43];

  if (v44)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v158 = 0u;
    v159 = 0u;
  }

  aBlock = v158;
  v161 = v159;
  v45 = v156;
  if (*(&v159 + 1))
  {
    v46 = type metadata accessor for Date();
    v47 = swift_dynamicCast();
    (*(*(v46 - 8) + 56))(v45, v47 ^ 1u, 1, v46);
  }

  else
  {
    sub_10000EA04(&aBlock, &qword_1008E51F0);
    v48 = type metadata accessor for Date();
    (*(*(v48 - 8) + 56))(v45, 1, 1, v48);
  }

  result = [objc_opt_self() sharedBehavior];
  if (result)
  {
    v50 = result;
    v51 = [result fitnessMode];

    if (((v51 == 2) & v41) == 1 && (v52 = type metadata accessor for Date(), (*(*(v52 - 8) + 48))(v45, 1, v52) == 1))
    {
      v53 = swift_allocObject();
      *(v53 + 16) = 2;
      v130 = swift_allocObject();
      *(v130 + 16) = 2;
      v131 = swift_allocObject();
      *(v131 + 16) = 2;
      sub_1000066AC((v157 + OBJC_IVAR___CHFitnessAppBadgeAggregator_contentAvailabilityClient), *(v157 + OBJC_IVAR___CHFitnessAppBadgeAggregator_contentAvailabilityClient + 24));
      v54 = v134;
      dispatch thunk of ContentAvailabilityClientProtocol.queryContentAvailability()();
      v55 = v135;
      v56 = v133;
      v57 = v136;
      (*(v135 + 16))(v133, v54, v136);
      v58 = (*(v55 + 80) + 16) & ~*(v55 + 80);
      v59 = (v132 + v58 + 7) & 0xFFFFFFFFFFFFFFF8;
      v60 = swift_allocObject();
      (*(v55 + 32))(v60 + v58, v56, v57);
      v61 = (v60 + v59);
      *v61 = sub_1001CE810;
      v61[1] = v53;
      v129 = v53;

      v62 = v152;
      Promise.init(asyncOperation:)();
      (*(v55 + 8))(v54, v57);
      v63 = swift_allocObject();
      *(v63 + 16) = sub_1001CD134;
      *(v63 + 24) = 0;
      v64 = v154;
      v65 = *(v154 + 16);
      v135 = v154 + 16;
      v133 = v65;
      v66 = v147;
      v67 = v62;
      v68 = v145;
      (v65)(v147, v62, v145);
      v69 = *(v64 + 80);
      v136 = v69;
      v70 = (v69 + 16) & ~v69;
      v150 = v70;
      v71 = (v6 + v70 + 7) & 0xFFFFFFFFFFFFFFF8;
      v72 = swift_allocObject();
      v146 = *(v64 + 32);
      v149 = (v64 + 32);
      v146(v72 + v70, v66, v68);
      v73 = (v72 + v71);
      *v73 = sub_100173A14;
      v73[1] = v63;
      Promise.init(asyncOperation:)();
      v74 = *(v64 + 8);
      v154 = v64 + 8;
      v134 = v74;
      (v74)(v67, v68);
      sub_1000066AC((v157 + OBJC_IVAR___CHFitnessAppBadgeAggregator_privacyPreferenceClient), *(v157 + OBJC_IVAR___CHFitnessAppBadgeAggregator_privacyPreferenceClient + 24));
      v75 = v139;
      dispatch thunk of PrivacyPreferenceClientProtocol.fetchNoticePrivacyPreference(ignoreCaches:)();
      v76 = v140;
      v77 = v138;
      v78 = v141;
      (*(v140 + 16))(v138, v75, v141);
      v79 = (*(v76 + 80) + 16) & ~*(v76 + 80);
      v80 = (v137 + v79 + 7) & 0xFFFFFFFFFFFFFFF8;
      v81 = swift_allocObject();
      (*(v76 + 32))(v81 + v79, v77, v78);
      v82 = (v81 + v80);
      v83 = v130;
      *v82 = sub_1001CE840;
      v82[1] = v83;

      Promise.init(asyncOperation:)();
      (*(v76 + 8))(v75, v78);
      v84 = swift_allocObject();
      *(v84 + 16) = sub_1001CD3B0;
      *(v84 + 24) = 0;
      v85 = v148;
      v86 = v133;
      (v133)(v148, v66, v68);
      v132 = v71;
      v87 = v136;
      v88 = swift_allocObject();
      v146(v88 + v150, v85, v68);
      v89 = (v88 + v71);
      *v89 = sub_100173EDC;
      v89[1] = v84;
      v90 = v152;
      Promise.init(asyncOperation:)();
      v91 = v154;
      (v134)(v66, v68);

      Promise.init(asyncOperation:)();
      sub_100140278(&qword_1008DFEA8);
      v92 = *(v91 + 64);
      v93 = swift_allocObject();
      *(v93 + 16) = xmmword_1006D64F0;
      v94 = v93 + ((v87 + 32) & ~v87);
      (v86)(v94, v151, v68);
      (v86)(v94 + v92, v90, v68);
      (v86)(v94 + 2 * v92, v66, v68);
      v95 = v86;
      *&aBlock = v93;
      sub_1000059F8(0, &qword_1008E3FD0);
      v96 = static OS_dispatch_queue.main.getter();
      static PromiseConstants.defaultMaxConcurrentOperations.getter();
      sub_100140278(&qword_1008DFEB0);
      sub_10014A6B0(&qword_1008DFEB8, &qword_1008DFEB0);
      v97 = v143;
      static Promise<>.parallel<A>(queue:maxConcurrent:_:)();

      v98 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v99 = swift_allocObject();
      v100 = v129;
      v99[2] = v130;
      v99[3] = v100;
      v99[4] = v131;
      v99[5] = v98;
      v101 = v155;
      v99[6] = sub_1001CE77C;
      v99[7] = v101;
      v102 = swift_allocObject();
      *(v102 + 16) = sub_1001CE878;
      *(v102 + 24) = v99;
      v103 = swift_allocObject();
      *(v103 + 16) = sub_1001CE888;
      *(v103 + 24) = v102;
      v104 = v142;
      (v95)(v142, v97, v68);
      v105 = v132;
      v106 = swift_allocObject();
      v146(v106 + v150, v104, v68);
      v107 = (v106 + v105);
      *v107 = sub_1001CE8A4;
      v107[1] = v103;

      v108 = v155;

      v109 = v144;
      Promise.init(asyncOperation:)();
      v110 = v134;
      (v134)(v97, v68);
      v111 = swift_allocObject();
      *(v111 + 16) = sub_1001CE77C;
      *(v111 + 24) = v108;
      v112 = swift_allocObject();
      *(v112 + 16) = sub_1001CE8D4;
      *(v112 + 24) = v111;
      (v133)(v97, v109, v68);
      v113 = swift_allocObject();
      v146(v113 + v150, v97, v68);
      v114 = (v113 + v105);
      v45 = v156;
      *v114 = sub_100173EDC;
      v114[1] = v112;

      v115 = v148;
      Promise.init(asyncOperation:)();
      v110(v109, v68);
      v116 = Promise.operation.getter();
      v117 = swift_allocObject();
      *(v117 + 16) = 0;
      *(v117 + 24) = 0;
      v116(sub_100173A1C, v117);

      v110(v115, v68);
      v110(v147, v68);
      v110(v152, v68);
      v110(v151, v68);
    }

    else
    {
      static Log.default.getter();
      sub_1001CE7A0(v45, v21);
      v118 = Logger.logObject.getter();
      v119 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v118, v119))
      {
        v120 = v51 == 2;
        v121 = swift_slowAlloc();
        v122 = swift_slowAlloc();
        *&aBlock = v122;
        *v121 = 67109634;
        *(v121 + 4) = v120;
        *(v121 + 8) = 1024;
        *(v121 + 10) = v41;
        *(v121 + 14) = 2080;
        v123 = Optional.description.getter();
        v125 = v124;
        sub_10000EA04(v21, &unk_1008F73A0);
        v126 = sub_10000AFDC(v123, v125, &aBlock);

        *(v121 + 16) = v126;
        _os_log_impl(&_mh_execute_header, v118, v119, "FitnessAppBadgeAggregator: not badging for Amelia\nisStandalonePhone: %{BOOL}d\nhasCompletedOnboardingInSydneyA: %{BOOL}d\nlastIntroSheetViewDate: %s", v121, 0x18u);
        sub_100005A40(v122);
      }

      else
      {

        sub_10000EA04(v21, &unk_1008F73A0);
      }

      v149(v27, v150);
      v127 = v155;

      sub_1001CE1E8(0, sub_1001CE77C, v127);
    }

    return sub_10000EA04(v45, &unk_1008F73A0);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1001CCDC8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v20[1] = a2;
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ContentAvailability();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 104))(v10, enum case for ContentAvailability.available(_:), v7);
  sub_100045C20(&qword_1008F54E0, &type metadata accessor for ContentAvailability);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (v24[1] == v22 && v24[2] == v23)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  (*(v8 + 8))(v10, v7);

  swift_beginAccess();
  *(a1 + 16) = v11 & 1;
  static Log.default.getter();

  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v24[0] = v15;
    *v14 = 136315138;
    swift_beginAccess();
    v21 = *(a1 + 16);
    sub_100140278(&qword_1008F6FD0);
    v16 = Optional.description.getter();
    v18 = sub_10000AFDC(v16, v17, v24);

    *(v14 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v12, v13, "FitnessAppBadgeAggregator: isContentAvailable %s", v14, 0xCu);
    sub_100005A40(v15);
  }

  (*(v4 + 8))(v6, v3);
  return static Promise<>.success.getter();
}

uint64_t sub_1001CD15C(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v17[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18[1] = NoticePrivacyPreference.state.getter();
  v19 = v7 & 1;
  v17[8] = 1;
  sub_1001CE93C();
  sub_1001CE990();
  v8 = static PortableEnum<>.== infix(_:_:)() & 1;
  swift_beginAccess();
  *(a2 + 16) = v8;
  static Log.default.getter();

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v18[0] = v12;
    *v11 = 136315138;
    swift_beginAccess();
    v17[7] = *(a2 + 16);
    sub_100140278(&qword_1008F6FD0);
    v13 = Optional.description.getter();
    v15 = sub_10000AFDC(v13, v14, v18);

    *(v11 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v9, v10, "FitnessAppBadgeAggregator: isPrivacyAcknowledged %s", v11, 0xCu);
    sub_100005A40(v12);
  }

  (*(v4 + 8))(v6, v3);
  return static Promise<>.success.getter();
}

uint64_t sub_1001CD3D8(int8x8_t a1, uint64_t a2, const char *a3)
{
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Log.default.getter();
  swift_errorRetain();
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v22 = a3;
    v13 = v12;
    v14 = swift_slowAlloc();
    v23 = v3;
    v15 = v14;
    v24 = v14;
    *v13 = vuzp1_s8(a1, v16).u32[0];
    swift_getErrorValue();
    v17 = Error.logOutput.getter();
    v19 = sub_10000AFDC(v17, v18, &v24);

    *(v13 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v10, v11, v22, v13, 0xCu);
    sub_100005A40(v15);
  }

  return (*(v7 + 8))(v9, v6);
}

void sub_1001CD5C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v7 = objc_opt_self();

  v8 = [v7 currentNotificationCenter];
  v9 = swift_allocObject();
  v9[2] = a3;
  v9[3] = sub_1001CE8F0;
  v9[4] = v6;
  v11[4] = sub_1001CE930;
  v11[5] = v9;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 1107296256;
  v11[2] = sub_1001CA96C;
  v11[3] = &unk_10084B008;
  v10 = _Block_copy(v11);

  [v8 getNotificationSettingsWithCompletionHandler:v10];
  _Block_release(v10);
}

uint64_t sub_1001CD70C(void *a1, uint64_t a2, void (*a3)(void, void), uint64_t a4)
{
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(a1) = [a1 authorizationStatus] == 2;
  swift_beginAccess();
  *(a2 + 16) = a1;
  static Log.default.getter();

  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v24 = a4;
    v15 = a3;
    v16 = v14;
    v17 = swift_slowAlloc();
    v26 = v17;
    *v16 = 136315138;
    swift_beginAccess();
    v25 = *(a2 + 16);
    sub_100140278(&qword_1008F6FD0);
    v18 = Optional.description.getter();
    v20 = sub_10000AFDC(v18, v19, &v26);

    *(v16 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v12, v13, "FitnessAppBadgeAggregator: isNotificationAuthorized %s", v16, 0xCu);
    sub_100005A40(v17);

    a3 = v15;
  }

  (*(v9 + 8))(v11, v8);
  sub_100140278(&qword_1008EB640);
  static Result<>.success.getter();
  v21 = v26;
  v22 = v27;
  a3(v26, v27);
  return sub_1000A7360(v21, v22);
}

void sub_1001CD98C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void), uint64_t a6)
{
  v25 = a5;
  v26 = a6;
  v9 = type metadata accessor for Logger();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [objc_opt_self() standardUserDefaults];
  v14 = String._bridgeToObjectiveC()();
  v15 = [v13 BOOLForKey:v14];

  static Log.default.getter();
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v24 = v9;
    *v18 = 67109120;
    *(v18 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v16, v17, "FitnessAppBadgeAggregator: forceRequiringPrivacyAcknowledgement %{BOOL}d", v18, 8u);
    v9 = v24;
  }

  (*(v10 + 8))(v12, v9);
  if (v15)
  {
    swift_beginAccess();
    *(a1 + 16) = 0;
  }

  swift_beginAccess();
  v19 = *(a2 + 16);
  if (v19 == 2 || (v19 & 1) == 0 || (swift_beginAccess(), v20 = *(a1 + 16), v20 == 2) || (v20 & 1) != 0)
  {
    v21 = 0;
  }

  else
  {
    swift_beginAccess();
    v21 = *(a3 + 16);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v23 = Strong;
    sub_1001CE1E8(v21 & 1, v25, v26);
  }
}

uint64_t sub_1001CDC38(uint64_t a1, void (*a2)(uint64_t))
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  a2(v6);
  static Log.default.getter();
  swift_errorRetain();
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v18[1] = v2;
    v12 = v11;
    v13 = swift_slowAlloc();
    v19 = v13;
    *v12 = 136446210;
    swift_getErrorValue();
    v14 = Error.logOutput.getter();
    v16 = sub_10000AFDC(v14, v15, &v19);

    *(v12 + 4) = v16;
    _os_log_impl(&_mh_execute_header, v9, v10, "FitnessAppBadgeAggregator: Unable to fetch amelia badge: %{public}s.", v12, 0xCu);
    sub_100005A40(v13);
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_1001CDE24(uint64_t a1)
{
  v2 = OBJC_IVAR___CHFitnessAppBadgeAggregator_fetchedEngagementBadges;
  *(v1 + OBJC_IVAR___CHFitnessAppBadgeAggregator_fetchedEngagementBadges) = a1;

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    [Strong aggregator:v1 didUpdateEngagmentBadgeCount:*(*(v1 + v2) + 16)];
    swift_unknownObjectRelease();
  }

  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_10004548C(sub_1001CE76C, v4);
}

void sub_1001CDEF0()
{
  v0 = type metadata accessor for BadgingCountsUpdated();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    if ((*(Strong + OBJC_IVAR___CHFitnessAppBadgeAggregator_isBrowsingSeymour) & 1) == 0)
    {
      static Log.default.getter();
      v10._countAndFlagsBits = 0xD00000000000002ALL;
      v10._object = 0x800000010074B8E0;
      v11._object = 0x800000010074B910;
      v11._countAndFlagsBits = 0xD000000000000013;
      Logger.trace(file:function:)(v10, v11);
      (*(v5 + 8))(v7, v4);
      v12 = *&v9[OBJC_IVAR___CHFitnessAppBadgeAggregator_fetchedEngagementBadges];
      v13 = *(v12 + 16);
      if (v13)
      {
        v17[1] = *&v9[OBJC_IVAR___CHFitnessAppBadgeAggregator_appBadgeCount];
        v18 = v1;
        v14 = sub_1001A3CF4(v13, 0);
        v15 = *(type metadata accessor for EngagementBadge() - 8);
        v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
        v17[0] = v14;
        v19 = sub_1001A9BD0(&v20, &v14[v16], v13, v12);

        sub_100022DEC();
        if (v19 != v13)
        {
          __break(1u);
          return;
        }

        v1 = v18;
      }

      BadgingCountsUpdated.init(appBadgeCount:seymourTabBadges:)();
      swift_getObjectType();
      dispatch thunk of EventHubProtocol.publish<A>(_:)();
      (*(v1 + 8))(v3, v0);
    }
  }
}

void sub_1001CE1E8(char a1, void (*a2)(void), uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Log.default.getter();
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 67109120;
    *(v14 + 4) = a1 & 1;
    _os_log_impl(&_mh_execute_header, v12, v13, "FitnessAppBadgeAggregator: updateAmeliaBadge, hasBadge: %{BOOL}d", v14, 8u);
  }

  (*(v9 + 8))(v11, v8);
  *(v4 + OBJC_IVAR___CHFitnessAppBadgeAggregator_hasAmeliaBadge) = a1 & 1;
  sub_10004548C(a2, a3);
}

void sub_1001CE36C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  swift_beginAccess();
  v7 = *(a1 + 16);
  v8 = __OFADD__(v7, a2);
  v9 = v7 + a2;
  if (v8)
  {
    __break(1u);
  }

  else
  {
    *(a1 + 16) = v9;
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      *&Strong[OBJC_IVAR___CHFitnessAppBadgeAggregator_appBadgeCount] = v9;
    }

    v11 = [objc_opt_self() sharedApplication];
    swift_beginAccess();
    [v11 setApplicationIconBadgeNumber:*(a1 + 16)];

    if (a4)
    {
      a4();
    }
  }
}

id sub_1001CE498()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FitnessAppBadgeAggregator();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_1001CE58C(void *a1)
{
  v1 = a1;
  sub_1001CAA5C();
  sub_1001CB1C4();
  sub_1001CB964();
}

uint64_t sub_1001CE5FC(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  v6 = swift_allocObject();
  v6[2] = a2;
  v6[3] = a3;
  v6[4] = v5;

  return Promise.init(asyncOperation:)();
}

uint64_t sub_1001CE6A0(void (*a1)(uint64_t *), uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t *), uint64_t a4, uint64_t *a5)
{
  v8 = *a5;
  a3(&v9, &v8);
  v6 = v9;
  v10 = 0;
  a1(&v9);

  return sub_1000A7360(v6, 0);
}

uint64_t sub_1001CE7A0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100140278(&unk_1008F73A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001CE8F0(uint64_t a1, char a2)
{
  v3 = *(v2 + 16);
  v5 = a1;
  v6 = a2 & 1;
  return v3(&v5);
}

unint64_t sub_1001CE93C()
{
  result = qword_1008DFEC0;
  if (!qword_1008DFEC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008DFEC0);
  }

  return result;
}

unint64_t sub_1001CE990()
{
  result = qword_1008DFEC8;
  if (!qword_1008DFEC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008DFEC8);
  }

  return result;
}

uint64_t sub_1001CEA4C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, unint64_t, uint64_t, uint64_t))
{
  v8 = *(sub_100140278(a3) - 8);
  v9 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v10 = (v5 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];

  return a5(a1, a2, v5 + v9, v11, v12);
}

id sub_1001CEF30()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WorkoutSummaryDataSourceBridge();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1001CEFF0()
{
  v1 = [*(v0 + OBJC_IVAR___CHWorkoutSummaryDataSourceBridge_observers) allObjects];
  sub_100140278(&qword_1008DFF18);
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v2 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v4 = 0;
    while ((v2 & 0xC000000000000001) != 0)
    {
      v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v6 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        goto LABEL_11;
      }

LABEL_7:
      [v5 dataSourceDidUpdateOutroState:v0];
      swift_unknownObjectRelease();
      ++v4;
      if (v6 == i)
      {
        goto LABEL_14;
      }
    }

    if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_12;
    }

    v5 = *(v2 + 8 * v4 + 32);
    swift_unknownObjectRetain();
    v6 = v4 + 1;
    if (!__OFADD__(v4, 1))
    {
      goto LABEL_7;
    }

LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }

LABEL_14:
}

uint64_t sub_1001CF160@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v61 = a2;
  v3 = type metadata accessor for SmallAwardsCardView();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v59 = sub_100140278(&qword_1008E0078);
  v57 = *(v59 - 8);
  __chkstk_darwin(v59);
  v7 = &v56 - v6;
  v58 = sub_100140278(&qword_1008E0080);
  __chkstk_darwin(v58);
  v9 = &v56 - v8;
  v10 = sub_100140278(&qword_1008E0088);
  v11 = __chkstk_darwin(v10 - 8);
  v60 = &v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v62 = a1;
  v63 = &v56 - v13;
  v80 = *(a1 + *(v3 + 60));
  sub_100140278(&qword_1008E0038);
  State.wrappedValue.getter();
  v14 = *v79;
  if (*v79)
  {
    v15 = static Edge.Set.all.getter();
    v56 = v7;
    v16 = v15;
    v17 = *(v3 + 64);
    v18 = v62;
    v19 = (v62 + v17);
    v20 = *v19;
    v21 = *(v19 + 1);
    LOBYTE(v80) = v20;
    *(&v80 + 1) = v21;

    sub_100140278(&qword_1008DDBB8);
    State.wrappedValue.getter();
    v22 = 0.0;
    if (v79[0])
    {
      v22 = 1.0;
    }

    LOBYTE(v77[0]) = 0;
    *v79 = v14;
    v79[8] = v16;
    *&v79[16] = xmmword_1006DB530;
    *&v79[32] = xmmword_1006DB540;
    v79[48] = 0;
    *&v79[56] = v22;
    sub_10007753C(v18, &v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
    v23 = (*(v4 + 80) + 16) & ~*(v4 + 80);
    v24 = swift_allocObject();
    sub_1000775A0(&v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v24 + v23);
    v25 = sub_100140278(&qword_1008E0098);
    v26 = sub_1001D134C(&qword_1008E00A0, &qword_1008E0098, &unk_1006DB670, sub_10015ECA8);
    v27 = v56;
    View.onTapGesture(count:perform:)();

    v80 = *v79;
    *v81 = *&v79[16];
    *&v81[2] = *&v79[32];
    *&v81[4] = *&v79[48];
    sub_10000EA04(&v80, &qword_1008E0098);
    v28 = v57;
    v29 = v27;
    v30 = v27;
    v31 = v59;
    (*(v57 + 16))(v9, v29, v59);
    swift_storeEnumTagMultiPayload();
    sub_100140278(&qword_1008E0090);
    *v79 = v25;
    *&v79[8] = v26;
    swift_getOpaqueTypeConformance2();
    sub_1001D1144();
    _ConditionalContent<>.init(storage:)();

    (*(v28 + 8))(v30, v31);
  }

  else
  {
    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    v32 = v88;
    v33 = v89;
    v34 = v90;
    v35 = v91;
    v79[0] = 1;
    LOBYTE(v77[0]) = v89;
    LOBYTE(v66) = v91;
    *v9 = 0;
    v9[8] = 1;
    *(v9 + 2) = v32;
    v9[24] = v33;
    *(v9 + 4) = v34;
    v9[40] = v35;
    *(v9 + 3) = v92;
    swift_storeEnumTagMultiPayload();
    sub_100140278(&qword_1008E0090);
    v36 = sub_100141EEC(&qword_1008E0098);
    v37 = sub_1001D134C(&qword_1008E00A0, &qword_1008E0098, &unk_1006DB670, sub_10015ECA8);
    *&v80 = v36;
    *(&v80 + 1) = v37;
    swift_getOpaqueTypeConformance2();
    sub_1001D1144();
    _ConditionalContent<>.init(storage:)();
  }

  v59 = static HorizontalAlignment.leading.getter();
  v65 = 0;
  sub_1001CFD14(v62, &v80);
  v74 = *&v81[14];
  v75 = *&v81[16];
  v76[0] = *&v81[18];
  *(v76 + 9) = *(&v81[19] + 1);
  v70 = *&v81[6];
  v71 = *&v81[8];
  v72 = *&v81[10];
  v73 = *&v81[12];
  v66 = v80;
  v67 = *v81;
  v68 = *&v81[2];
  v69 = *&v81[4];
  v77[8] = *&v81[14];
  v77[9] = *&v81[16];
  v78[0] = *&v81[18];
  *(v78 + 9) = *(&v81[19] + 1);
  v77[4] = *&v81[6];
  v77[5] = *&v81[8];
  v77[6] = *&v81[10];
  v77[7] = *&v81[12];
  v77[0] = v80;
  v77[1] = *v81;
  v77[2] = *&v81[2];
  v77[3] = *&v81[4];
  sub_10001B104(&v66, v79, &qword_1008E00B0);
  sub_10000EA04(v77, &qword_1008E00B0);
  *(&v64[8] + 7) = v74;
  *(&v64[9] + 7) = v75;
  *(&v64[10] + 7) = v76[0];
  v64[11] = *(v76 + 9);
  *(&v64[4] + 7) = v70;
  *(&v64[5] + 7) = v71;
  *(&v64[6] + 7) = v72;
  *(&v64[7] + 7) = v73;
  *(v64 + 7) = v66;
  *(&v64[1] + 7) = v67;
  *(&v64[2] + 7) = v68;
  *(&v64[3] + 7) = v69;
  v38 = v65;
  v39 = static Edge.Set.top.getter();
  EdgeInsets.init(_all:)();
  v41 = v40;
  v43 = v42;
  v45 = v44;
  v47 = v46;
  v48 = v63;
  v49 = v60;
  sub_10001B104(v63, v60, &qword_1008E0088);
  v50 = v61;
  sub_10001B104(v49, v61, &qword_1008E0088);
  v51 = sub_100140278(&qword_1008E00B8);
  v52 = *(v51 + 48);
  *&v79[145] = v64[8];
  *&v79[161] = v64[9];
  *&v79[177] = v64[10];
  *&v79[193] = v64[11];
  *&v79[81] = v64[4];
  *&v79[97] = v64[5];
  *&v79[113] = v64[6];
  *&v79[129] = v64[7];
  *&v79[33] = v64[1];
  *&v79[49] = v64[2];
  *&v79[65] = v64[3];
  v53 = v59;
  *v79 = v59;
  *&v79[8] = 0;
  v79[16] = v38;
  *&v79[17] = v64[0];
  v79[216] = v39;
  *&v79[224] = v41;
  *&v79[232] = v43;
  *&v79[240] = v45;
  *&v79[248] = v47;
  v79[256] = 0;
  memcpy((v50 + v52), v79, 0x101uLL);
  v54 = v50 + *(v51 + 64);
  *v54 = 0;
  *(v54 + 8) = 0;
  sub_10001B104(v79, &v80, &qword_1008E00C0);
  sub_10000EA04(v48, &qword_1008E0088);
  *(&v81[16] + 1) = v64[8];
  *(&v81[18] + 1) = v64[9];
  *(&v81[20] + 1) = v64[10];
  *(&v81[22] + 1) = v64[11];
  *(&v81[8] + 1) = v64[4];
  *(&v81[10] + 1) = v64[5];
  *(&v81[12] + 1) = v64[6];
  *(&v81[14] + 1) = v64[7];
  *(v81 + 1) = v64[0];
  *(&v81[2] + 1) = v64[1];
  *(&v81[4] + 1) = v64[2];
  v80 = v53;
  LOBYTE(v81[0]) = v38;
  *(&v81[6] + 1) = v64[3];
  v82 = v39;
  v83 = v41;
  v84 = v43;
  v85 = v45;
  v86 = v47;
  v87 = 0;
  sub_10000EA04(&v80, &qword_1008E00C0);
  return sub_10000EA04(v49, &qword_1008E0088);
}

uint64_t sub_1001CFA30()
{
  v1 = v0;
  v2 = type metadata accessor for SmallAwardsCardView();
  v3 = *(v2 - 1);
  v4 = *(v3 + 64);
  v5 = &v28[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = v0 + *(__chkstk_darwin(v2) + 56);
  v7 = *(v6 + 16);
  v8 = *(v6 + 24);
  v32 = *v6;
  v33.i8[0] = v7;
  v33.i64[1] = v8;
  sub_100140278(&qword_1008E0030);
  result = State.wrappedValue.getter();
  if ((v28[16] & 1) == 0)
  {
    v10 = *(v0 + v2[7]);
    if (v10)
    {
      v11 = v10;
      sub_1001D0A3C();
      v13 = v12;
      v15 = v14;
      sub_10007753C(v0, &v28[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)]);
      v16 = (*(v3 + 80) + 16) & ~*(v3 + 80);
      v17 = swift_allocObject();
      sub_1000775A0(&v28[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)], v17 + v16);
      sub_10007753C(v1, &v28[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)]);
      v18 = swift_allocObject();
      sub_1000775A0(v5, v18 + v16);
      *&v32 = v13;
      *(&v32 + 1) = v15;
      v33 = vdupq_n_s64(0x4051800000000000uLL);
      *&v34 = v11;
      *(&v34 + 1) = sub_1001D11CC;
      *&v35 = v17;
      *(&v35 + 1) = sub_1001D11D4;
      v36 = v18;
      sub_10001B104(v1 + v2[11], v30, &qword_1008DC808);
      if (v31)
      {
        v19 = sub_1000066AC(v30, v31);
        v20 = (v1 + v2[5]);
        v29[3] = &type metadata for AwardViewActionContext;
        v21 = swift_allocObject();
        v29[0] = v21;
        v22 = v35;
        *(v21 + 48) = v34;
        *(v21 + 64) = v22;
        *(v21 + 80) = v36;
        v23 = v33;
        *(v21 + 16) = v32;
        *(v21 + 32) = v23;
        v24 = *v19;
        v25 = v20[3];
        v26 = v20[4];
        v27 = sub_1000066AC(v20, v25);
        sub_1001D1294(&v32, v28);
        sub_100607BA4(v27, v29, v24, v25, v26);
        sub_1001D1240(&v32);
        sub_10000EA04(v29, &qword_1008E51F0);
        return sub_100005A40(v30);
      }

      else
      {
        sub_1001D1240(&v32);
        return sub_10000EA04(v30, &qword_1008DC808);
      }
    }
  }

  return result;
}