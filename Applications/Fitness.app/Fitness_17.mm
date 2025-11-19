void sub_100220EB8(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t *a4@<X4>, char a5@<W5>, uint64_t a6@<X8>)
{
  if (a3 == 1)
  {
    sub_1004BEE80(a1, a2, a4, a5 & 1, a6);
  }

  else if (a3 == 3 && a1 == 4 && !a2)
  {
    sub_1004BF854(a4, a5 & 1, a6);
  }

  else
  {
    *(a6 + 32) = 0;
    *a6 = 0u;
    *(a6 + 16) = 0u;
  }
}

uint64_t sub_100220F48@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a1 = v3;
  return result;
}

uint64_t sub_100220FC8(unint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_100221040(v2);
  v4 = v3;
  return static Published.subscript.setter();
}

unint64_t sub_100221040(unint64_t result)
{
  if (result >= 4)
  {
  }

  return result;
}

uint64_t sub_100221070(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

id sub_1002210DC(void *a1)
{
  v2 = v1;
  v43 = type metadata accessor for AttributedString();
  v47 = *(v43 - 8);
  __chkstk_darwin(v43);
  v42 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v41 - v6;
  if (qword_1008DA658 != -1)
  {
    swift_once();
  }

  v45 = qword_100925290;
  v8 = UILabel.withFont(_:)();
  v9 = objc_opt_self();
  v44 = v9;
  v10 = [v9 secondaryLabelColor];
  v11 = UILabel.withTextColor(_:)();

  v12 = String._bridgeToObjectiveC()();
  [v11 setText:v12];

  v13 = UILabel.withFont(_:)();
  v14 = [v9 secondaryLabelColor];
  v15 = UILabel.withTextColor(_:)();

  v46 = v2;
  v50 = objc_opt_self();
  v16 = [v50 mainBundle];
  v17 = String._bridgeToObjectiveC()();
  v18 = [v16 localizedStringForKey:v17 value:0 table:0];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v19 = a1;

  AttributedString.init(stringLiteral:)();
  v20 = sub_1002226E0();
  v21 = v47;
  v41 = *(v47 + 16);
  v48 = v47 + 16;
  v49 = v20;
  v22 = v42;
  v23 = v43;
  v41(v42, v7, v43);
  v24 = NSAttributedString.init(_:)();
  [v15 setAttributedText:v24];

  v47 = *(v21 + 8);
  (v47)(v7, v23);
  v25 = UILabel.withFont(_:)();
  v26 = [v44 secondaryLabelColor];
  v27 = UILabel.withTextColor(_:)();

  v28 = [v50 mainBundle];
  v29 = String._bridgeToObjectiveC()();
  v30 = [v28 localizedStringForKey:v29 value:0 table:0];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  AttributedString.init(stringLiteral:)();
  v31 = v41;
  v41(v22, v7, v23);
  v32 = NSAttributedString.init(_:)();
  [v27 setAttributedText:v32];

  (v47)(v7, v23);
  v33 = [v44 secondaryLabelColor];
  v34 = UILabel.withTextColor(_:)();

  v35 = UILabel.withFont(_:)();
  v36 = [v50 mainBundle];
  v37 = String._bridgeToObjectiveC()();
  v38 = [v36 localizedStringForKey:v37 value:0 table:0];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  AttributedString.init(stringLiteral:)();
  v31(v22, v7, v23);
  v39 = NSAttributedString.init(_:)();
  [v35 setAttributedText:v39];

  (v47)(v7, v23);
  [*(v46 + OBJC_IVAR___CHWorkoutDetailFourColumnTableViewCell_separatorView) setHidden:1];
  return sub_1002251BC();
}

void sub_100221750(int a1, uint64_t a2, id a3)
{
  v4 = v3;
  v6 = [a3 fitnessUIFormattingManager];
  sub_100221E24(0);
  v7 = *(v3 + OBJC_IVAR___CHWorkoutDetailFourColumnTableViewCell_columnOneLabel);
  v8 = [objc_opt_self() mainBundle];
  v9 = String._bridgeToObjectiveC()();
  v10 = [v8 localizedStringForKey:v9 value:0 table:0];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = String._bridgeToObjectiveC()();
  [v7 setText:v11];

  DownhillRunsStats.duration.getter();
  if (round(v12) < 3600.0)
  {
    v13 = 3;
  }

  else
  {
    v13 = 2;
  }

  v14 = [v6 stringWithDuration:v13 durationFormat:?];
  if (v14)
  {
    v15 = v14;
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v16 = *(v4 + OBJC_IVAR___CHWorkoutDetailFourColumnTableViewCell_columnTwoLabel);
    v17 = String._bridgeToObjectiveC()();
  }

  else
  {
    v17 = 0;
    v16 = *(v4 + OBJC_IVAR___CHWorkoutDetailFourColumnTableViewCell_columnTwoLabel);
  }

  [v16 setText:v17];

  v18 = DownhillRunsStats.distance.getter();
  v19 = sub_100222314(v18, a2, v6);

  [*(v4 + OBJC_IVAR___CHWorkoutDetailFourColumnTableViewCell_columnThreeLabel) setAttributedText:v19];
  v20 = DownhillRunsStats.elevationDescended.getter();
  v21 = sub_1002224FC(v20, v6);

  [*(v4 + OBJC_IVAR___CHWorkoutDetailFourColumnTableViewCell_columnFourLabel) setAttributedText:v21];
  v22 = *(v4 + OBJC_IVAR___CHWorkoutDetailFourColumnTableViewCell_separatorView);
  v23 = [objc_opt_self() grayColor];
  [v22 setBackgroundColor:v23];
}

void sub_100221AB8(void *a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v6 = v5;
  if (a1)
  {
    v11 = a1;
    v12 = [a5 fitnessUIFormattingManager];
    sub_100221E24(a4 & 1);
    v13 = objc_opt_self();
    v14 = [objc_allocWithZone(NSNumber) initWithInteger:a2];
    v15 = [v13 localizedStringFromNumber:v14 numberStyle:0];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = *(v6 + OBJC_IVAR___CHWorkoutDetailFourColumnTableViewCell_columnOneLabel);
    v17 = String._bridgeToObjectiveC()();
    [v16 setText:v17];

    dispatch thunk of DownhillRun.workoutTime.getter();
    if (round(v18) < 3600.0)
    {
      v19 = 3;
    }

    else
    {
      v19 = 2;
    }

    v20 = [v12 stringWithDuration:v19 durationFormat:?];
    if (v20)
    {
      v21 = v20;
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      v22 = *(v6 + OBJC_IVAR___CHWorkoutDetailFourColumnTableViewCell_columnTwoLabel);
      v23 = String._bridgeToObjectiveC()();
    }

    else
    {
      v23 = 0;
      v22 = *(v6 + OBJC_IVAR___CHWorkoutDetailFourColumnTableViewCell_columnTwoLabel);
    }

    [v22 setText:v23];

    v24 = dispatch thunk of DownhillRun.distance.getter();
    v25 = sub_100222314(v24, a3, v12);

    [*(v6 + OBJC_IVAR___CHWorkoutDetailFourColumnTableViewCell_columnThreeLabel) setAttributedText:v25];
    v26 = DownhillRun.elevationDescended.getter();
    v27 = sub_1002224FC(v26, v12);

    [*(v6 + OBJC_IVAR___CHWorkoutDetailFourColumnTableViewCell_columnFourLabel) setAttributedText:v27];
  }

  else
  {

    sub_1002210DC(a5);
  }
}

id sub_100221E24(char a1)
{
  v2 = v1;
  if (qword_1008DA660 != -1)
  {
    swift_once();
  }

  v4 = UILabel.withFont(_:)();
  v5 = [objc_opt_self() secondaryLabelColor];
  v6 = UILabel.withTextColor(_:)();

  v7 = String._bridgeToObjectiveC()();
  [v6 setText:v7];

  if (qword_1008DA668 != -1)
  {
    swift_once();
  }

  v8 = UILabel.withFont(_:)();
  v9 = objc_opt_self();
  result = [v9 elapsedTimeColors];
  if (!result)
  {
    __break(1u);
    goto LABEL_18;
  }

  v11 = result;
  v12 = [result nonGradientTextColor];

  [v8 setTextColor:v12];
  v13 = String._bridgeToObjectiveC()();
  [v8 setText:v13];

  v14 = UILabel.withFont(_:)();
  result = [v9 distanceColors];
  if (!result)
  {
LABEL_18:
    __break(1u);
    return result;
  }

  v15 = result;
  v16 = [result nonGradientTextColor];

  [v14 setTextColor:v16];
  v17 = String._bridgeToObjectiveC()();
  [v14 setText:v17];

  v18 = UILabel.withFont(_:)();
  v19 = [v9 elevationColors];
  v20 = [v19 nonGradientTextColor];

  [v18 setTextColor:v20];
  v21 = String._bridgeToObjectiveC()();
  [v18 setText:v21];

  result = [*(v2 + OBJC_IVAR___CHWorkoutDetailFourColumnTableViewCell_separatorView) setHidden:a1 & 1];
  if (a1)
  {
    v22 = *(v2 + OBJC_IVAR___CHWorkoutDetailFourColumnTableViewCell_separatorViewBottomAnchorStandard);
    if (v22)
    {
      [v22 setActive:0];
    }

    v23 = *(v2 + OBJC_IVAR___CHWorkoutDetailFourColumnTableViewCell_separatorViewBottomAnchorLastRow);
    if (v23)
    {
      [v23 setActive:1];
    }

    result = *(v2 + OBJC_IVAR___CHWorkoutDetailFourColumnTableViewCell_heightAnchorHeaderFooterRow);
    if (result)
    {

      return [result setActive:1];
    }
  }

  return result;
}

id sub_1002222BC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WorkoutDetailFourColumnDownhillRunTableViewCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_100222314(id result, uint64_t a2, void *a3)
{
  if (result)
  {
    v4 = result;
    v5 = FIUIDistanceTypeForActivityType();
    v19 = 1;
    v6 = [objc_opt_self() meterUnit];
    [v4 doubleValueForUnit:v6];
    v8 = v7;

    v9 = [a3 localizedNaturalScaleStringWithDistanceInMeters:v5 distanceType:0 unitStyle:&v19 usedUnit:v8];
    if (v9)
    {
      v10 = v9;
      v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v13 = v12;

      result = [a3 localizedShortUnitStringForDistanceUnit:v19];
      if (result)
      {
        v14 = result;
        static String._unconditionallyBridgeFromObjectiveC(_:)();

        sub_10000FCBC();
        v15 = StringProtocol.localizedUppercase.getter();
        v17 = v16;

        if (qword_1008DA668 != -1)
        {
          swift_once();
        }

        v18 = sub_1004C154C(v11, v13, v15, v17, qword_1009252A0);

        return v18;
      }

      else
      {
        __break(1u);
      }
    }

    else
    {

      return 0;
    }
  }

  return result;
}

id sub_1002224FC(id result, void *a2)
{
  if (!result)
  {
    return result;
  }

  v3 = result;
  v4 = objc_opt_self();
  v5 = v3;
  v6 = [v4 meterUnit];
  [v5 doubleValueForUnit:v6];
  v8 = v7;

  v9 = [a2 localizedStringWithDistanceInMeters:5 distanceType:0 unitStyle:v8];
  if (!v9)
  {

    return 0;
  }

  v10 = v9;
  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;

  result = [a2 unitManager];
  if (!result)
  {
    __break(1u);
    goto LABEL_11;
  }

  v14 = result;
  v15 = [result userDistanceElevationUnit];

  result = [a2 localizedShortUnitStringForDistanceUnit:v15];
  if (!result)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  v16 = result;
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  sub_10000FCBC();
  v17 = StringProtocol.localizedUppercase.getter();
  v19 = v18;

  if (qword_1008DA668 != -1)
  {
    swift_once();
  }

  v20 = sub_1004C154C(v11, v13, v17, v19, qword_1009252A0);

  return v20;
}

unint64_t sub_1002226E0()
{
  result = qword_1008DD230;
  if (!qword_1008DD230)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1008DD230);
  }

  return result;
}

id sub_1002228CC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ActivitySharingNavigationController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id *sub_100222AA4()
{
  sub_1000A7304((v0 + 4));

  v1 = OBJC_IVAR____TtC10FitnessApp22WorkoutDetailDataStore__inWorkoutData;
  v2 = sub_100140278(&qword_1008DD4B0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC10FitnessApp22WorkoutDetailDataStore__inWorkoutProperties;
  v4 = sub_100140278(&qword_1008DD4A8);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  return v0;
}

uint64_t sub_100222B8C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();
}

void (*sub_100222C04(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = static Published.subscript.modify();
  return sub_100222CA8;
}

void sub_100222CA8(void *a1)
{
  v1 = *a1;
  (*(*a1 + 48))(*a1, 0);

  free(v1);
}

uint64_t sub_100222D10()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t sub_100222D84(uint64_t a1)
{
  v2 = v1;
  v98 = a1;
  v82 = type metadata accessor for WorkoutChartDataElement(0);
  v81 = *(v82 - 8);
  __chkstk_darwin(v82);
  v80 = &v75 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = type metadata accessor for DateInterval();
  v4 = *(v97 - 8);
  v5 = __chkstk_darwin(v97);
  v7 = &v75 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v83 = &v75 - v8;
  v9 = sub_100140278(&unk_1008F73A0);
  v10 = __chkstk_darwin(v9 - 8);
  v92 = (&v75 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = __chkstk_darwin(v10);
  v94 = &v75 - v13;
  __chkstk_darwin(v12);
  v96 = &v75 - v14;
  v15 = type metadata accessor for Date();
  v16 = *(v15 - 8);
  v17 = __chkstk_darwin(v15);
  v79 = &v75 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v17);
  v89 = &v75 - v20;
  v21 = __chkstk_darwin(v19);
  v95 = &v75 - v22;
  v23 = __chkstk_darwin(v21);
  v91 = &v75 - v24;
  v25 = __chkstk_darwin(v23);
  v27 = &v75 - v26;
  v28 = __chkstk_darwin(v25);
  v30 = &v75 - v29;
  v31 = *(v1 + 24);
  v99 = v28;
  v77 = &v75 - v29;
  v90 = v27;
  v93 = v2;
  if (v31)
  {
    v32 = sub_100655C20();
    v33 = v16;
    v34 = v15;
    v35 = [v31 startDate];
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v36 = v33[4];
    v37 = v96;
    v36(v96, v27, v34);
    v76 = v33;
    v88 = v33[7];
    (v88)(v37, 0, 1, v34);
    v38 = v37;
    v39 = v36;
    v36(v30, v38, v34);
    v40 = [v31 endDate];
    if (v40)
    {
      v41 = v92;
      v42 = v40;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v43 = 0;
      v44 = v94;
    }

    else
    {
      v44 = v94;
      v41 = v92;
      v43 = 1;
    }

    v47 = v99;
    (v88)(v41, v43, 1, v99);
    sub_1002239C4(v41, v44);
    v16 = v76;
    v48 = *(v76 + 48);
    if (v48(v44, 1, v47) != 1)
    {
      v39(v91, v44, v47);
      goto LABEL_12;
    }
  }

  else
  {
    v32 = sub_1003AB20C();
    v45 = v96;
    v92 = v16[7];
    v92(v96, 1, 1, v15);
    v46 = [*(v2 + 16) startDate];
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v47 = v99;
    v48 = v16[6];
    if (v48(v45, 1, v99) != 1)
    {
      sub_1001F145C(v96);
    }

    v44 = v94;
    v92(v94, 1, 1, v47);
  }

  v49 = v47;
  v50 = [*(v93 + 16) endDate];
  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  v47 = v49;
  if (v48(v44, 1, v49) != 1)
  {
    sub_1001F145C(v44);
  }

LABEL_12:
  v51 = v95;
  v52 = v77;
  v93 = v16[2];
  v94 = (v16 + 2);
  (v93)(v95, v77, v47);
  if (static Date.< infix(_:_:)())
  {
    v53 = v32[2];
    v96 = OBJC_IVAR____TtC10FitnessApp22WorkoutChartProperties_bucketDuration;
    v78 = OBJC_IVAR____TtC10FitnessApp22WorkoutChartProperties_workoutDuration;
    v86 = (v16 + 4);
    v88 = _swiftEmptyArrayStorage;
    v92 = (v16 + 1);
    v76 = (v16 + 1) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v54 = v83;
    v55 = v90;
    v87 = v4 + 16;
    v85 = v32;
    while (2)
    {
      (v93)(v55, v51, v99);
      result = DateInterval.init(start:duration:)();
      v61 = 0;
      v62 = v97;
      do
      {
        if (v53 == v61)
        {
          v56 = v92;
          goto LABEL_15;
        }

        if (v61 >= v32[2])
        {
          __break(1u);
          return result;
        }

        (*(v4 + 16))(v7, v32 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v61++, v62);
        v63 = DateInterval.intersects(_:)();
        result = (*(v4 + 8))(v7, v62);
      }

      while ((v63 & 1) == 0);
      swift_getKeyPath();
      swift_getKeyPath();
      v64 = v79;
      static Published.subscript.getter();

      Date.timeIntervalSince(_:)();
      v65 = v89;
      Date.addingTimeInterval(_:)();
      v66 = v99;
      v84 = *v92;
      v84(v64, v99);
      v67 = v80;
      (v93)(v80, v65, v66);
      v68 = v82;
      *(v67 + *(v82 + 20)) = 0;
      *(v67 + *(v68 + 24)) = 0;
      *(v67 + *(v68 + 28)) = 0;
      v69 = v88;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v69 = sub_1001A1EB4(0, v69[2] + 1, 1, v69);
      }

      v71 = v69[2];
      v70 = v69[3];
      v56 = v92;
      if (v71 >= v70 >> 1)
      {
        v73 = sub_1001A1EB4(v70 > 1, v71 + 1, 1, v69);
        v56 = v92;
        v69 = v73;
      }

      v84(v89, v99);
      v69[2] = v71 + 1;
      v72 = (*(v81 + 80) + 32) & ~*(v81 + 80);
      v88 = v69;
      sub_100223960(v67, v69 + v72 + *(v81 + 72) * v71);
      v54 = v83;
LABEL_15:
      v55 = v90;
      v51 = v95;
      Date.addingTimeInterval(_:)();
      v57 = *v56;
      v58 = v99;
      (*v56)(v51, v99);
      (*v86)(v51, v55, v58);
      (*(v4 + 8))(v54, v97);
      v59 = static Date.< infix(_:_:)();
      v32 = v85;
      if (v59)
      {
        continue;
      }

      break;
    }

    v47 = v99;
    v52 = v77;
    v74 = v88;
    v57(v51, v99);
  }

  else
  {

    v57 = v16[1];
    v74 = _swiftEmptyArrayStorage;
    v57(v51, v47);
  }

  v57(v91, v47);
  v57(v52, v47);
  return v74;
}

uint64_t sub_100223788()
{
  sub_100222AA4();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for WorkoutDetailDataStore()
{
  result = qword_1008E1E98;
  if (!qword_1008E1E98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100223834()
{
  sub_100144538(319, &qword_1008DD248, &qword_1008DD250);
  if (v0 <= 0x3F)
  {
    sub_100144538(319, &qword_1008DD258, &unk_1008DD260);
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_100223960(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WorkoutChartDataElement(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002239C4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100140278(&unk_1008F73A0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100223A54()
{
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_100223AEC;

  return AppCoordinator.onAppActive()();
}

uint64_t sub_100223AEC()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100223BE0(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for Logger();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();

  return _swift_task_switch(sub_100223CA0, 0, 0);
}

uint64_t sub_100223CA0()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  static Log.default.getter();
  v4._countAndFlagsBits = 0xD00000000000002BLL;
  v4._object = 0x800000010074E480;
  v5._object = 0x800000010074E4B0;
  v5._countAndFlagsBits = 0xD000000000000016;
  Logger.trace(file:function:)(v4, v5);
  (*(v2 + 8))(v1, v3);
  v0[7] = objc_opt_self();
  v0[8] = type metadata accessor for MainActor();
  v0[9] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100223DB0, v7, v6);
}

uint64_t sub_100223DB0()
{
  v1 = *(v0 + 56);

  *(v0 + 80) = [v1 mainSystem];

  return _swift_task_switch(sub_100223E38, 0, 0);
}

uint64_t sub_100223E38()
{
  *(v0 + 88) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100223EC4, v2, v1);
}

uint64_t sub_100223EC4()
{
  v1 = *(v0 + 80);

  [v1 setNeedsRebuild];

  return _swift_task_switch(sub_100223F40, 0, 0);
}

uint64_t sub_100223F40()
{
  v1 = swift_task_alloc();
  *(v0 + 96) = v1;
  *v1 = v0;
  v1[1] = sub_100223FE0;
  v2 = *(v0 + 16);

  return AppCoordinator.activate(with:)(v2);
}

uint64_t sub_100223FE0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1002240F0(uint64_t a1)
{
  swift_allocObject();
  swift_weakInit();
  v2 = *(a1 + 16);

  os_unfair_lock_lock((v2 + 32));
  sub_10022438C((v2 + 16));
  os_unfair_lock_unlock((v2 + 32));
}

uint64_t sub_100224190()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {

    AppCoordinator.configureMenuBarBuilder(_:)();
  }

  return result;
}

uint64_t sub_10022420C()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1002243A8(uint64_t a1)
{
  v2 = sub_100140278(&qword_1008E2080);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_100224410()
{
  if (_UISolariumEnabled())
  {
    v1 = [v0 contentView];
    v2 = [v1 heightAnchor];

    v3 = [v2 constraintGreaterThanOrEqualToConstant:42.0];
    v4 = &OBJC_IVAR___CHWorkoutDetailFourColumnTableViewCell_heightAnchorHeaderFooterRow;
  }

  else
  {
    v5 = [*&v0[OBJC_IVAR___CHWorkoutDetailFourColumnTableViewCell_separatorView] bottomAnchor];
    v6 = [v0 contentView];
    v7 = [v6 bottomAnchor];

    v8 = [v5 constraintEqualToAnchor:v7 constant:-8.0];
    v9 = *&v0[OBJC_IVAR___CHWorkoutDetailFourColumnTableViewCell_separatorViewBottomAnchorLastRow];
    *&v0[OBJC_IVAR___CHWorkoutDetailFourColumnTableViewCell_separatorViewBottomAnchorLastRow] = v8;

    v10 = [*&v0[OBJC_IVAR___CHWorkoutDetailFourColumnTableViewCell_columnOneLabel] topAnchor];
    v11 = [v0 contentView];
    v2 = [v11 topAnchor];

    v3 = [v10 constraintEqualToAnchor:v2 constant:8.0];
    v4 = &OBJC_IVAR___CHWorkoutDetailFourColumnTableViewCell_topAnchorHeaderRow;
  }

  v12 = *&v0[*v4];
  *&v0[*v4] = v3;

  v13 = *&v0[OBJC_IVAR___CHWorkoutDetailFourColumnTableViewCell_separatorView];
  v14 = [v13 bottomAnchor];
  v15 = [v0 contentView];
  v16 = [v15 bottomAnchor];

  v17 = [v14 constraintEqualToAnchor:v16];
  v18 = *&v0[OBJC_IVAR___CHWorkoutDetailFourColumnTableViewCell_separatorViewBottomAnchorStandard];
  v121 = OBJC_IVAR___CHWorkoutDetailFourColumnTableViewCell_separatorViewBottomAnchorStandard;
  *&v0[OBJC_IVAR___CHWorkoutDetailFourColumnTableViewCell_separatorViewBottomAnchorStandard] = v17;

  v19 = [v13 topAnchor];
  v20 = *&v0[OBJC_IVAR___CHWorkoutDetailFourColumnTableViewCell_columnTwoLabel];
  v21 = [v20 bottomAnchor];
  v22 = [v19 constraintEqualToAnchor:v21 constant:4.0];

  v23 = *&v0[OBJC_IVAR___CHWorkoutDetailFourColumnTableViewCell_separatorViewTopAnchorStandard];
  v120 = OBJC_IVAR___CHWorkoutDetailFourColumnTableViewCell_separatorViewTopAnchorStandard;
  *&v0[OBJC_IVAR___CHWorkoutDetailFourColumnTableViewCell_separatorViewTopAnchorStandard] = v22;

  v24 = [v13 topAnchor];
  v25 = [v20 bottomAnchor];
  v26 = [v24 constraintEqualToAnchor:v25];

  v27 = *&v0[OBJC_IVAR___CHWorkoutDetailFourColumnTableViewCell_separatorViewTopAnchorHeader];
  *&v0[OBJC_IVAR___CHWorkoutDetailFourColumnTableViewCell_separatorViewTopAnchorHeader] = v26;

  v28 = *&v0[OBJC_IVAR___CHWorkoutDetailFourColumnTableViewCell_columnOneLabel];
  v29 = [v28 topAnchor];
  v30 = [v0 contentView];
  v31 = [v30 topAnchor];

  v32 = [v29 constraintEqualToAnchor:v31 constant:4.0];
  v33 = *&v0[OBJC_IVAR___CHWorkoutDetailFourColumnTableViewCell_topAnchorStandardRow];
  v119 = OBJC_IVAR___CHWorkoutDetailFourColumnTableViewCell_topAnchorStandardRow;
  *&v0[OBJC_IVAR___CHWorkoutDetailFourColumnTableViewCell_topAnchorStandardRow] = v32;

  v34 = [v28 widthAnchor];
  v35 = [v34 constraintEqualToConstant:22.0];

  v118 = OBJC_IVAR___CHWorkoutDetailFourColumnTableViewCell_columnOneWidthAnchorStandard;
  v36 = *&v0[OBJC_IVAR___CHWorkoutDetailFourColumnTableViewCell_columnOneWidthAnchorStandard];
  *&v0[OBJC_IVAR___CHWorkoutDetailFourColumnTableViewCell_columnOneWidthAnchorStandard] = v35;

  v37 = [v20 widthAnchor];
  v38 = [v28 widthAnchor];
  v39 = [v37 constraintEqualToAnchor:v38];

  v40 = *&v0[OBJC_IVAR___CHWorkoutDetailFourColumnTableViewCell_columnTwoWidthAnchorCustom];
  *&v0[OBJC_IVAR___CHWorkoutDetailFourColumnTableViewCell_columnTwoWidthAnchorCustom] = v39;

  v41 = *&v0[OBJC_IVAR___CHWorkoutDetailFourColumnTableViewCell_columnThreeLabel];
  v42 = [v41 widthAnchor];
  v43 = [v20 widthAnchor];
  v44 = [v42 constraintEqualToAnchor:v43];

  v45 = *&v0[OBJC_IVAR___CHWorkoutDetailFourColumnTableViewCell_columnThreeWidthAnchorStandard];
  v117 = OBJC_IVAR___CHWorkoutDetailFourColumnTableViewCell_columnThreeWidthAnchorStandard;
  *&v0[OBJC_IVAR___CHWorkoutDetailFourColumnTableViewCell_columnThreeWidthAnchorStandard] = v44;

  v46 = [v41 widthAnchor];
  v47 = [v20 widthAnchor];
  v48 = [v46 constraintEqualToAnchor:v47 constant:-40.0];

  v49 = *&v0[OBJC_IVAR___CHWorkoutDetailFourColumnTableViewCell_columnThreeWidthAnchorSwimSet];
  *&v0[OBJC_IVAR___CHWorkoutDetailFourColumnTableViewCell_columnThreeWidthAnchorSwimSet] = v48;

  v50 = *&v0[OBJC_IVAR___CHWorkoutDetailFourColumnTableViewCell_columnFourLabel];
  v51 = [v50 widthAnchor];
  v52 = [v41 widthAnchor];
  v53 = [v51 constraintEqualToAnchor:v52];

  v54 = *&v0[OBJC_IVAR___CHWorkoutDetailFourColumnTableViewCell_columnFourWidthAnchorStandard];
  v116 = OBJC_IVAR___CHWorkoutDetailFourColumnTableViewCell_columnFourWidthAnchorStandard;
  *&v0[OBJC_IVAR___CHWorkoutDetailFourColumnTableViewCell_columnFourWidthAnchorStandard] = v53;

  v55 = [v50 widthAnchor];
  v56 = [v41 widthAnchor];
  v57 = [v55 constraintEqualToAnchor:v56 constant:20.0];

  v58 = *&v0[OBJC_IVAR___CHWorkoutDetailFourColumnTableViewCell_columnFourWidthAnchorSwimSet];
  *&v0[OBJC_IVAR___CHWorkoutDetailFourColumnTableViewCell_columnFourWidthAnchorSwimSet] = v57;

  v115 = objc_opt_self();
  sub_100140278(&unk_1008E4E20);
  v59 = swift_allocObject();
  *(v59 + 16) = xmmword_1006D9830;
  v60 = [v28 leadingAnchor];
  v61 = [v0 contentView];
  v62 = [v61 leadingAnchor];

  v63 = [v60 constraintEqualToAnchor:v62 constant:16.0];
  *(v59 + 32) = v63;
  v64 = [v28 lastBaselineAnchor];
  v65 = [v20 lastBaselineAnchor];
  v66 = [v64 constraintEqualToAnchor:v65];

  *(v59 + 40) = v66;
  v67 = [v28 heightAnchor];
  v68 = [v20 heightAnchor];
  v69 = [v67 constraintGreaterThanOrEqualToAnchor:v68];

  *(v59 + 48) = v69;
  v70 = [v28 heightAnchor];
  v71 = [v41 heightAnchor];
  v72 = [v70 constraintGreaterThanOrEqualToAnchor:v71];

  *(v59 + 56) = v72;
  v73 = [v28 heightAnchor];
  v74 = [v50 heightAnchor];
  v75 = [v73 constraintGreaterThanOrEqualToAnchor:v74];

  *(v59 + 64) = v75;
  v76 = [v20 leadingAnchor];
  v77 = [v28 trailingAnchor];
  v78 = [v76 constraintEqualToAnchor:v77 constant:8.0];

  *(v59 + 72) = v78;
  v79 = [v20 lastBaselineAnchor];
  v80 = [v41 lastBaselineAnchor];
  v81 = [v79 constraintEqualToAnchor:v80];

  *(v59 + 80) = v81;
  v82 = [v41 leadingAnchor];
  v83 = [v20 trailingAnchor];
  v84 = [v82 constraintEqualToAnchor:v83 constant:8.0];

  *(v59 + 88) = v84;
  v85 = [v41 lastBaselineAnchor];
  v86 = [v50 lastBaselineAnchor];
  v87 = [v85 constraintEqualToAnchor:v86];

  *(v59 + 96) = v87;
  v88 = [v50 leadingAnchor];
  v89 = [v41 trailingAnchor];
  v90 = [v88 constraintEqualToAnchor:v89 constant:8.0];

  *(v59 + 104) = v90;
  v91 = [v50 trailingAnchor];
  v92 = [v0 contentView];
  v93 = [v92 trailingAnchor];

  v94 = [v91 constraintEqualToAnchor:v93 constant:-16.0];
  *(v59 + 112) = v94;
  v95 = [v13 leadingAnchor];
  v96 = [v0 contentView];
  v97 = [v96 leadingAnchor];

  v98 = [v95 constraintEqualToAnchor:v97 constant:16.0];
  *(v59 + 120) = v98;
  v99 = [v13 trailingAnchor];
  v100 = [v0 contentView];
  v101 = [v100 trailingAnchor];

  v102 = [v99 constraintEqualToAnchor:v101 constant:-16.0];
  *(v59 + 128) = v102;
  v103 = [v13 heightAnchor];
  v104 = [objc_opt_self() mainScreen];
  [v104 scale];
  v106 = v105;

  v107 = [v103 constraintEqualToConstant:1.0 / v106];
  *(v59 + 136) = v107;
  sub_10019EC5C();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v115 activateConstraints:isa];

  v109 = *&v0[v118];
  if (v109)
  {
    [v109 setActive:1];
  }

  v110 = *&v0[v117];
  if (v110)
  {
    [v110 setActive:1];
  }

  v111 = *&v0[v116];
  if (v111)
  {
    [v111 setActive:1];
  }

  v112 = *&v0[v120];
  if (v112)
  {
    [v112 setActive:1];
  }

  v113 = *&v0[v121];
  if (v113)
  {
    [v113 setActive:1];
  }

  result = *&v0[v119];
  if (result)
  {

    return [result setActive:1];
  }

  return result;
}

id sub_1002251BC()
{
  v1 = *(v0 + OBJC_IVAR___CHWorkoutDetailFourColumnTableViewCell_topAnchorStandardRow);
  if (v1)
  {
    [v1 setActive:0];
  }

  v2 = *(v0 + OBJC_IVAR___CHWorkoutDetailFourColumnTableViewCell_topAnchorHeaderRow);
  if (v2)
  {
    [v2 setActive:1];
  }

  v3 = *(v0 + OBJC_IVAR___CHWorkoutDetailFourColumnTableViewCell_heightAnchorHeaderFooterRow);
  if (v3)
  {
    [v3 setActive:1];
  }

  v4 = *(v0 + OBJC_IVAR___CHWorkoutDetailFourColumnTableViewCell_columnOneLabel);
  [v4 setNumberOfLines:2];
  [v4 setLineBreakMode:4];
  v5 = *(v0 + OBJC_IVAR___CHWorkoutDetailFourColumnTableViewCell_columnTwoLabel);
  [v5 setNumberOfLines:2];
  [v5 setLineBreakMode:4];
  v6 = *(v0 + OBJC_IVAR___CHWorkoutDetailFourColumnTableViewCell_columnThreeLabel);
  [v6 setNumberOfLines:2];
  [v6 setLineBreakMode:4];
  v7 = *(v0 + OBJC_IVAR___CHWorkoutDetailFourColumnTableViewCell_columnFourLabel);
  [v7 setNumberOfLines:2];
  [v7 setLineBreakMode:4];
  v8 = *(v0 + OBJC_IVAR___CHWorkoutDetailFourColumnTableViewCell_separatorViewTopAnchorStandard);
  if (v8)
  {
    [v8 setActive:0];
  }

  result = *(v0 + OBJC_IVAR___CHWorkoutDetailFourColumnTableViewCell_separatorViewTopAnchorHeader);
  if (result)
  {

    return [result setActive:1];
  }

  return result;
}

id sub_100225350()
{
  v1 = *(v0 + OBJC_IVAR___CHWorkoutDetailFourColumnTableViewCell_columnThreeWidthAnchorStandard);
  if (v1)
  {
    [v1 setActive:0];
  }

  v2 = *(v0 + OBJC_IVAR___CHWorkoutDetailFourColumnTableViewCell_columnThreeWidthAnchorSwimSet);
  if (v2)
  {
    [v2 setActive:1];
  }

  v3 = *(v0 + OBJC_IVAR___CHWorkoutDetailFourColumnTableViewCell_columnFourWidthAnchorStandard);
  if (v3)
  {
    [v3 setActive:0];
  }

  result = *(v0 + OBJC_IVAR___CHWorkoutDetailFourColumnTableViewCell_columnFourWidthAnchorSwimSet);
  if (result)
  {

    return [result setActive:1];
  }

  return result;
}

id sub_1002253F8()
{
  [*(v0 + OBJC_IVAR___CHWorkoutDetailFourColumnTableViewCell_columnOneLabel) setNumberOfLines:1];
  [*(v0 + OBJC_IVAR___CHWorkoutDetailFourColumnTableViewCell_columnTwoLabel) setNumberOfLines:1];
  [*(v0 + OBJC_IVAR___CHWorkoutDetailFourColumnTableViewCell_columnThreeLabel) setNumberOfLines:1];
  [*(v0 + OBJC_IVAR___CHWorkoutDetailFourColumnTableViewCell_columnFourLabel) setNumberOfLines:1];
  v1 = *(v0 + OBJC_IVAR___CHWorkoutDetailFourColumnTableViewCell_columnOneWidthAnchorStandard);
  if (v1)
  {
    [v1 setActive:1];
  }

  v2 = *(v0 + OBJC_IVAR___CHWorkoutDetailFourColumnTableViewCell_columnThreeWidthAnchorStandard);
  if (v2)
  {
    [v2 setActive:1];
  }

  v3 = *(v0 + OBJC_IVAR___CHWorkoutDetailFourColumnTableViewCell_columnFourWidthAnchorStandard);
  if (v3)
  {
    [v3 setActive:1];
  }

  v4 = *(v0 + OBJC_IVAR___CHWorkoutDetailFourColumnTableViewCell_separatorViewTopAnchorStandard);
  if (v4)
  {
    [v4 setActive:1];
  }

  v5 = *(v0 + OBJC_IVAR___CHWorkoutDetailFourColumnTableViewCell_separatorViewBottomAnchorStandard);
  if (v5)
  {
    [v5 setActive:1];
  }

  v6 = *(v0 + OBJC_IVAR___CHWorkoutDetailFourColumnTableViewCell_topAnchorStandardRow);
  if (v6)
  {
    [v6 setActive:1];
  }

  v7 = *(v0 + OBJC_IVAR___CHWorkoutDetailFourColumnTableViewCell_heightAnchorHeaderFooterRow);
  if (v7)
  {
    [v7 setActive:0];
  }

  v8 = *(v0 + OBJC_IVAR___CHWorkoutDetailFourColumnTableViewCell_separatorViewBottomAnchorLastRow);
  if (v8)
  {
    [v8 setActive:0];
  }

  v9 = *(v0 + OBJC_IVAR___CHWorkoutDetailFourColumnTableViewCell_separatorViewTopAnchorHeader);
  if (v9)
  {
    [v9 setActive:0];
  }

  v10 = *(v0 + OBJC_IVAR___CHWorkoutDetailFourColumnTableViewCell_topAnchorHeaderRow);
  if (v10)
  {
    [v10 setActive:0];
  }

  v11 = *(v0 + OBJC_IVAR___CHWorkoutDetailFourColumnTableViewCell_columnTwoWidthAnchorCustom);
  if (v11)
  {
    [v11 setActive:0];
  }

  v12 = *(v0 + OBJC_IVAR___CHWorkoutDetailFourColumnTableViewCell_columnThreeWidthAnchorSwimSet);
  if (v12)
  {
    [v12 setActive:0];
  }

  result = *(v0 + OBJC_IVAR___CHWorkoutDetailFourColumnTableViewCell_columnFourWidthAnchorSwimSet);
  if (result)
  {

    return [result setActive:0];
  }

  return result;
}

char *sub_1002256D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = OBJC_IVAR___CHWorkoutDetailFourColumnTableViewCell_columnOneLabel;
  v7 = [objc_allocWithZone(UILabel) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  [v7 setTranslatesAutoresizingMaskIntoConstraints:0];
  *&v3[v6] = v7;
  v8 = OBJC_IVAR___CHWorkoutDetailFourColumnTableViewCell_columnTwoLabel;
  v9 = [objc_allocWithZone(UILabel) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  [v9 setTranslatesAutoresizingMaskIntoConstraints:0];
  *&v3[v8] = v9;
  v10 = OBJC_IVAR___CHWorkoutDetailFourColumnTableViewCell_columnThreeLabel;
  v11 = [objc_allocWithZone(UILabel) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  [v11 setTranslatesAutoresizingMaskIntoConstraints:0];
  *&v3[v10] = v11;
  v12 = OBJC_IVAR___CHWorkoutDetailFourColumnTableViewCell_columnFourLabel;
  v13 = [objc_allocWithZone(UILabel) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  [v13 setTranslatesAutoresizingMaskIntoConstraints:0];
  *&v3[v12] = v13;
  v14 = OBJC_IVAR___CHWorkoutDetailFourColumnTableViewCell_separatorView;
  v15 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  [v15 setTranslatesAutoresizingMaskIntoConstraints:0];
  *&v3[v14] = v15;
  *&v3[OBJC_IVAR___CHWorkoutDetailFourColumnTableViewCell_separatorViewBottomAnchorStandard] = 0;
  *&v3[OBJC_IVAR___CHWorkoutDetailFourColumnTableViewCell_separatorViewBottomAnchorLastRow] = 0;
  *&v3[OBJC_IVAR___CHWorkoutDetailFourColumnTableViewCell_separatorViewTopAnchorStandard] = 0;
  *&v3[OBJC_IVAR___CHWorkoutDetailFourColumnTableViewCell_separatorViewTopAnchorHeader] = 0;
  *&v3[OBJC_IVAR___CHWorkoutDetailFourColumnTableViewCell_topAnchorStandardRow] = 0;
  *&v3[OBJC_IVAR___CHWorkoutDetailFourColumnTableViewCell_topAnchorHeaderRow] = 0;
  *&v3[OBJC_IVAR___CHWorkoutDetailFourColumnTableViewCell_heightAnchorHeaderFooterRow] = 0;
  *&v3[OBJC_IVAR___CHWorkoutDetailFourColumnTableViewCell_columnOneWidthAnchorStandard] = 0;
  *&v3[OBJC_IVAR___CHWorkoutDetailFourColumnTableViewCell_columnTwoWidthAnchorCustom] = 0;
  *&v3[OBJC_IVAR___CHWorkoutDetailFourColumnTableViewCell_columnThreeWidthAnchorStandard] = 0;
  *&v3[OBJC_IVAR___CHWorkoutDetailFourColumnTableViewCell_columnThreeWidthAnchorSwimSet] = 0;
  *&v3[OBJC_IVAR___CHWorkoutDetailFourColumnTableViewCell_columnFourWidthAnchorStandard] = 0;
  *&v3[OBJC_IVAR___CHWorkoutDetailFourColumnTableViewCell_columnFourWidthAnchorSwimSet] = 0;
  if (a3)
  {
    v16 = String._bridgeToObjectiveC()();
  }

  else
  {
    v16 = 0;
  }

  v30.receiver = v3;
  v30.super_class = type metadata accessor for WorkoutDetailFourColumnTableViewCell();
  v17 = objc_msgSendSuper2(&v30, "initWithStyle:reuseIdentifier:", a1, v16);

  v18 = v17;
  v19 = [v18 contentView];
  [v19 addSubview:*&v18[OBJC_IVAR___CHWorkoutDetailFourColumnTableViewCell_columnOneLabel]];

  v20 = [v18 contentView];
  [v20 addSubview:*&v18[OBJC_IVAR___CHWorkoutDetailFourColumnTableViewCell_columnTwoLabel]];

  v21 = [v18 contentView];
  [v21 addSubview:*&v18[OBJC_IVAR___CHWorkoutDetailFourColumnTableViewCell_columnThreeLabel]];

  v22 = [v18 contentView];
  [v22 addSubview:*&v18[OBJC_IVAR___CHWorkoutDetailFourColumnTableViewCell_columnFourLabel]];

  v23 = OBJC_IVAR___CHWorkoutDetailFourColumnTableViewCell_separatorView;
  v24 = *&v18[OBJC_IVAR___CHWorkoutDetailFourColumnTableViewCell_separatorView];
  v25 = objc_opt_self();
  v26 = v24;
  v27 = [v25 separatorColor];
  [v26 setBackgroundColor:v27];

  [*&v18[v23] setTranslatesAutoresizingMaskIntoConstraints:0];
  v28 = [v18 contentView];

  [v28 addSubview:*&v18[v23]];
  sub_100224410();

  return v18;
}

id sub_100225B80()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WorkoutDetailFourColumnTableViewCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_100225D24()
{
  v1 = OBJC_IVAR___CHWorkoutDetailFourColumnTableViewCell_columnOneLabel;
  v2 = [objc_allocWithZone(UILabel) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
  *(v0 + v1) = v2;
  v3 = OBJC_IVAR___CHWorkoutDetailFourColumnTableViewCell_columnTwoLabel;
  v4 = [objc_allocWithZone(UILabel) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
  *(v0 + v3) = v4;
  v5 = OBJC_IVAR___CHWorkoutDetailFourColumnTableViewCell_columnThreeLabel;
  v6 = [objc_allocWithZone(UILabel) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
  *(v0 + v5) = v6;
  v7 = OBJC_IVAR___CHWorkoutDetailFourColumnTableViewCell_columnFourLabel;
  v8 = [objc_allocWithZone(UILabel) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  [v8 setTranslatesAutoresizingMaskIntoConstraints:0];
  *(v0 + v7) = v8;
  v9 = OBJC_IVAR___CHWorkoutDetailFourColumnTableViewCell_separatorView;
  v10 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  [v10 setTranslatesAutoresizingMaskIntoConstraints:0];
  *(v0 + v9) = v10;
  *(v0 + OBJC_IVAR___CHWorkoutDetailFourColumnTableViewCell_separatorViewBottomAnchorStandard) = 0;
  *(v0 + OBJC_IVAR___CHWorkoutDetailFourColumnTableViewCell_separatorViewBottomAnchorLastRow) = 0;
  *(v0 + OBJC_IVAR___CHWorkoutDetailFourColumnTableViewCell_separatorViewTopAnchorStandard) = 0;
  *(v0 + OBJC_IVAR___CHWorkoutDetailFourColumnTableViewCell_separatorViewTopAnchorHeader) = 0;
  *(v0 + OBJC_IVAR___CHWorkoutDetailFourColumnTableViewCell_topAnchorStandardRow) = 0;
  *(v0 + OBJC_IVAR___CHWorkoutDetailFourColumnTableViewCell_topAnchorHeaderRow) = 0;
  *(v0 + OBJC_IVAR___CHWorkoutDetailFourColumnTableViewCell_heightAnchorHeaderFooterRow) = 0;
  *(v0 + OBJC_IVAR___CHWorkoutDetailFourColumnTableViewCell_columnOneWidthAnchorStandard) = 0;
  *(v0 + OBJC_IVAR___CHWorkoutDetailFourColumnTableViewCell_columnTwoWidthAnchorCustom) = 0;
  *(v0 + OBJC_IVAR___CHWorkoutDetailFourColumnTableViewCell_columnThreeWidthAnchorStandard) = 0;
  *(v0 + OBJC_IVAR___CHWorkoutDetailFourColumnTableViewCell_columnThreeWidthAnchorSwimSet) = 0;
  *(v0 + OBJC_IVAR___CHWorkoutDetailFourColumnTableViewCell_columnFourWidthAnchorStandard) = 0;
  *(v0 + OBJC_IVAR___CHWorkoutDetailFourColumnTableViewCell_columnFourWidthAnchorSwimSet) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

id sub_100226050()
{
  v1 = v0;
  if (qword_1008DA658 != -1)
  {
    swift_once();
  }

  v2 = UILabel.withFont(_:)();
  v3 = objc_opt_self();
  v4 = [v3 secondaryLabelColor];
  v5 = UILabel.withTextColor(_:)();

  v6 = String._bridgeToObjectiveC()();
  [v5 setText:v6];

  v7 = UILabel.withFont(_:)();
  v8 = [v3 secondaryLabelColor];
  v9 = UILabel.withTextColor(_:)();

  v10 = objc_opt_self();
  v11 = [v10 mainBundle];
  v12 = String._bridgeToObjectiveC()();
  v13 = [v11 localizedStringForKey:v12 value:0 table:0];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = String._bridgeToObjectiveC()();
  [v9 setText:v14];

  v15 = UILabel.withFont(_:)();
  v16 = [v3 secondaryLabelColor];
  v17 = UILabel.withTextColor(_:)();

  v18 = [v10 mainBundle];
  v19 = String._bridgeToObjectiveC()();
  v20 = [v18 localizedStringForKey:v19 value:0 table:0];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v21 = String._bridgeToObjectiveC()();
  [v17 setText:v21];

  v22 = UILabel.withFont(_:)();
  v23 = [v3 secondaryLabelColor];
  v24 = UILabel.withTextColor(_:)();

  v25 = [v10 mainBundle];
  v26 = String._bridgeToObjectiveC()();
  v27 = [v25 localizedStringForKey:v26 value:0 table:0];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v28 = String._bridgeToObjectiveC()();
  [v24 setText:v28];

  [*(v1 + OBJC_IVAR___CHWorkoutDetailFourColumnTableViewCell_separatorView) setHidden:1];

  return sub_1002251BC();
}

void sub_1002264C8(void *a1, uint64_t a2, char a3, uint64_t a4)
{
  sub_100225350();
  if (a1)
  {
    v9 = a1;
    sub_100226974(a3 & 1);
    v10 = objc_opt_self();
    v11 = [objc_allocWithZone(NSNumber) initWithInteger:a2];
    v12 = [v10 localizedStringFromNumber:v11 numberStyle:0];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = *(v4 + OBJC_IVAR___CHWorkoutDetailFourColumnTableViewCell_columnOneLabel);
    v14 = String._bridgeToObjectiveC()();
    [v13 setText:v14];

    v15 = *(v4 + OBJC_IVAR___CHWorkoutDetailFourColumnTableViewCell_columnTwoLabel);
    v16 = [v9 formattedDominantStrokeStyle];
    if (v16)
    {
      v17 = v16;
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      v18 = String._bridgeToObjectiveC()();
    }

    else
    {
      v18 = 0;
    }

    [v15 setText:v18];

    v19 = *(v4 + OBJC_IVAR___CHWorkoutDetailFourColumnTableViewCell_columnThreeLabel);
    v20 = [v9 formattedDistanceValueWithFormattingManager:a4];
    if (v20)
    {
      v21 = v20;
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      v22 = String._bridgeToObjectiveC()();
    }

    else
    {
      v22 = 0;
    }

    [v19 setText:v22];

    v23 = [v9 formattedPaceUsingFormatType:100 formattingManager:a4];
    if (v23)
    {
      v24 = v23;
      v38 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v26 = v25;
    }

    else
    {
      v38 = 0;
      v26 = 0xE000000000000000;
    }

    v27 = [v9 formattedStrokeCountUsingFormatType:100 formattingManager:a4];
    if (v27)
    {
      v28 = v27;
      v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v31 = v30;
    }

    else
    {
      v29 = 0;
      v31 = 0xE000000000000000;
    }

    v32 = [objc_opt_self() mainBundle];
    v33 = String._bridgeToObjectiveC()();
    v34 = [v32 localizedStringForKey:v33 value:0 table:0];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_100140278(&unk_1008E4E50);
    v35 = swift_allocObject();
    *(v35 + 16) = xmmword_1006D1F70;
    *(v35 + 56) = &type metadata for String;
    v36 = sub_10000A788();
    *(v35 + 32) = v38;
    *(v35 + 40) = v26;
    *(v35 + 96) = &type metadata for String;
    *(v35 + 104) = v36;
    *(v35 + 64) = v36;
    *(v35 + 72) = v29;
    *(v35 + 80) = v31;
    String.init(format:_:)();

    v37 = *(v4 + OBJC_IVAR___CHWorkoutDetailFourColumnTableViewCell_columnFourLabel);
    v39 = String._bridgeToObjectiveC()();
    [v37 setText:v39];
  }

  else
  {

    sub_100226050();
  }
}

id sub_100226974(char a1)
{
  v2 = v1;
  if (qword_1008DA660 != -1)
  {
    swift_once();
  }

  v4 = UILabel.withFont(_:)();
  v5 = objc_opt_self();
  v6 = [v5 secondaryLabelColor];
  v7 = UILabel.withTextColor(_:)();

  v8 = String._bridgeToObjectiveC()();
  [v7 setText:v8];

  if (qword_1008DA668 != -1)
  {
    swift_once();
  }

  v9 = UILabel.withFont(_:)();
  v10 = [v5 whiteColor];
  v11 = UILabel.withTextColor(_:)();

  v12 = String._bridgeToObjectiveC()();
  [v11 setText:v12];

  v13 = UILabel.withFont(_:)();
  v14 = objc_opt_self();
  result = [v14 distanceColors];
  if (!result)
  {
    __break(1u);
    goto LABEL_18;
  }

  v16 = result;
  v17 = [result nonGradientTextColor];

  [v13 setTextColor:v17];
  v18 = String._bridgeToObjectiveC()();
  [v13 setText:v18];

  v19 = UILabel.withFont(_:)();
  result = [v14 paceColors];
  if (!result)
  {
LABEL_18:
    __break(1u);
    return result;
  }

  v20 = result;
  v21 = [result nonGradientTextColor];

  [v19 setTextColor:v21];
  v22 = String._bridgeToObjectiveC()();
  [v19 setText:v22];

  result = [*(v2 + OBJC_IVAR___CHWorkoutDetailFourColumnTableViewCell_separatorView) setHidden:a1 & 1];
  if (a1)
  {
    v23 = *(v2 + OBJC_IVAR___CHWorkoutDetailFourColumnTableViewCell_separatorViewBottomAnchorStandard);
    if (v23)
    {
      [v23 setActive:0];
    }

    v24 = *(v2 + OBJC_IVAR___CHWorkoutDetailFourColumnTableViewCell_separatorViewBottomAnchorLastRow);
    if (v24)
    {
      [v24 setActive:1];
    }

    result = *(v2 + OBJC_IVAR___CHWorkoutDetailFourColumnTableViewCell_heightAnchorHeaderFooterRow);
    if (result)
    {

      return [result setActive:1];
    }
  }

  return result;
}

id sub_100226DF4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WorkoutDetailFourColumnSwimmingSetTableViewCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for AdvancedChangeGoalView()
{
  result = qword_1008E21E8;
  if (!qword_1008E21E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100226EC0()
{
  sub_100226F7C();
  if (v0 <= 0x3F)
  {
    sub_100226FD4();
    if (v1 <= 0x3F)
    {
      sub_10022703C();
      if (v2 <= 0x3F)
      {
        type metadata accessor for HKActivityGoalType(319);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_100226F7C()
{
  if (!qword_1008E21F8)
  {
    type metadata accessor for Calendar();
    v0 = type metadata accessor for Environment();
    if (!v1)
    {
      atomic_store(v0, &qword_1008E21F8);
    }
  }
}

void sub_100226FD4()
{
  if (!qword_1008E2200)
  {
    sub_1000059F8(255, &qword_1008F24B0);
    v0 = type metadata accessor for Environment();
    if (!v1)
    {
      atomic_store(v0, &qword_1008E2200);
    }
  }
}

void sub_10022703C()
{
  if (!qword_1008E2208)
  {
    type metadata accessor for GoalDaysModel();
    sub_10022890C(&unk_1008E2210, type metadata accessor for GoalDaysModel);
    v0 = type metadata accessor for ObservedObject();
    if (!v1)
    {
      atomic_store(v0, &qword_1008E2208);
    }
  }
}

uint64_t sub_1002270EC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for EnvironmentValues();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100140278(&qword_1008E2280);
  __chkstk_darwin(v8);
  v10 = &v14 - v9;
  sub_10001B104(v2, &v14 - v9, &qword_1008E2280);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = type metadata accessor for Calendar();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    static os_log_type_t.fault.getter();
    v13 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_1002272EC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_100140278(&qword_1008E2250);
  __chkstk_darwin(v4 - 8);
  v6 = &v35 - v5;
  v7 = sub_100140278(&qword_1008E2258);
  __chkstk_darwin(v7);
  v9 = &v35 - v8;
  *v6 = static HorizontalAlignment.center.getter();
  *(v6 + 1) = 0x4014000000000000;
  v6[16] = 0;
  v10 = sub_100140278(&qword_1008E2260);
  sub_10022756C(v2, &v6[*(v10 + 44)]);
  sub_100140278(&qword_1008E0700);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1006D1F70;
  v12 = static Edge.Set.leading.getter();
  *(inited + 32) = v12;
  v13 = static Edge.Set.trailing.getter();
  *(inited + 33) = v13;
  v14 = Edge.Set.init(rawValue:)();
  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v12)
  {
    v14 = Edge.Set.init(rawValue:)();
  }

  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v13)
  {
    v14 = Edge.Set.init(rawValue:)();
  }

  EdgeInsets.init(_all:)();
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  sub_100015E80(v6, v9, &qword_1008E2250);
  v23 = &v9[*(v7 + 36)];
  *v23 = v14;
  *(v23 + 1) = v16;
  *(v23 + 2) = v18;
  *(v23 + 3) = v20;
  *(v23 + 4) = v22;
  v23[40] = 0;
  v24 = static Edge.Set.bottom.getter();
  EdgeInsets.init(_all:)();
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  sub_100015E80(v9, a1, &qword_1008E2258);
  result = sub_100140278(&qword_1008E2268);
  v34 = a1 + *(result + 36);
  *v34 = v24;
  *(v34 + 8) = v26;
  *(v34 + 16) = v28;
  *(v34 + 24) = v30;
  *(v34 + 32) = v32;
  *(v34 + 40) = 0;
  return result;
}

uint64_t sub_10022756C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v76 = a2;
  v3 = type metadata accessor for AdvancedChangeGoalView();
  v74 = *(v3 - 8);
  __chkstk_darwin(v3);
  v75 = v4;
  KeyPath = &v68 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = sub_100140278(&qword_1008E2270);
  v78 = *(v79 - 8);
  __chkstk_darwin(v79);
  v77 = &v68 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v83 = &v68 - v7;
  v8 = type metadata accessor for EnvironmentValues();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v68 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100140278(&qword_1008E2278);
  __chkstk_darwin(v12);
  v82 = &v68 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v68 - v15;
  sub_100349310(*(a1 + *(v3 + 32)));
  v81 = v17;
  v18 = type metadata accessor for ActivityDailyGoalChartView();
  v19 = v18[5];
  v84 = v16;
  sub_1002270EC(&v16[v19]);
  v20 = a1 + *(v3 + 20);
  v21 = *v20;
  if (*(v20 + 8) == 1)
  {
    v22 = v21;
  }

  else
  {

    static os_log_type_t.fault.getter();
    v23 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000A73A4(v21, 0);
    (*(v9 + 8))(v11, v8);
    v22 = v90;
  }

  v24 = v3;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  sub_100227F6C(v90);
  v26 = v25;

  v27 = v84;
  *v84 = v81;
  *(v27 + v18[6]) = v22;
  *(v27 + v18[7]) = v26;
  v28 = static Edge.Set.all.getter();
  v29 = v27 + *(v12 + 36);
  *v29 = v28;
  *(v29 + 8) = xmmword_1006DEFB0;
  *(v29 + 24) = xmmword_1006DEFC0;
  v29[40] = 0;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v90 >> 62)
  {
    v30 = _CocoaArrayWrapper.endIndex.getter();

    if (v30 < 0)
    {
      __break(1u);
      return result;
    }
  }

  else
  {
    v30 = *((v90 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v90 = 0;
  v91 = v30;
  swift_getKeyPath();
  v31 = KeyPath;
  sub_1002287C4(a1, KeyPath);
  v32 = (*(v74 + 80) + 16) & ~*(v74 + 80);
  v33 = swift_allocObject();
  sub_100228828(v31, v33 + v32);
  sub_100140278(&qword_1008DE078);
  type metadata accessor for ScheduleDayRowView();
  sub_100182FB4();
  sub_10022890C(&qword_1008E2288, type metadata accessor for ScheduleDayRowView);
  ForEach<>.init(_:id:content:)();
  if (*(a1 + *(v24 + 36)) == 1)
  {
    sub_1000059F8(0, &qword_1008DC998);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v35 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
    v36 = String._bridgeToObjectiveC()();
    v37 = String._bridgeToObjectiveC()();
    v38 = [v35 localizedStringForKey:v36 value:0 table:v37];

    v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v41 = v40;

    v90 = v39;
    v91 = v41;
    sub_10000FCBC();
    v75 = Text.init<A>(_:)();
    v74 = v42;
    LOBYTE(v35) = v43;
    v73 = v44;
    LOBYTE(v41) = static Edge.Set.all.getter();
    LOBYTE(v90) = v35 & 1;
    LOBYTE(v85) = 1;
    v81 = v35 & 1;
    v45 = 1;
    v46 = static HierarchicalShapeStyle.secondary.getter();
    v72 = static Font.footnote.getter();
    KeyPath = swift_getKeyPath();
    v70 = v41;
    v47 = v46 << 32;
    v71 = 256;
  }

  else
  {
    v75 = 0;
    v74 = 0;
    v73 = 0;
    KeyPath = 0;
    v72 = 0;
    v71 = 0;
    v45 = 0;
    v47 = 0;
    v70 = 0;
    v81 = 0;
  }

  v48 = v82;
  sub_10001B104(v84, v82, &qword_1008E2278);
  v49 = v78;
  v50 = *(v78 + 16);
  v51 = v77;
  v52 = v79;
  v50(v77, v83, v79);
  v53 = v47 | v45;
  v69 = v53;
  v54 = v48;
  v55 = v76;
  sub_10001B104(v54, v76, &qword_1008E2278);
  v56 = sub_100140278(&qword_1008E2290);
  v50((v55 + *(v56 + 48)), v51, v52);
  v57 = v55 + *(v56 + 64);
  v58 = v75;
  *&v85 = v75;
  v59 = v74;
  *(&v85 + 1) = v74;
  *&v86 = v81;
  v60 = v73;
  *(&v86 + 1) = v73;
  v61 = v70;
  *v87 = v70;
  memset(&v87[8], 0, 32);
  *&v87[40] = v53;
  *&v88 = KeyPath;
  v62 = v72;
  *(&v88 + 1) = v72;
  LOWORD(v53) = v71;
  v89 = v71;
  *(v57 + 96) = v71;
  v63 = v86;
  *v57 = v85;
  *(v57 + 16) = v63;
  v64 = *&v87[16];
  *(v57 + 32) = *v87;
  *(v57 + 48) = v64;
  v65 = v88;
  *(v57 + 64) = *&v87[32];
  *(v57 + 80) = v65;
  sub_10001B104(&v85, &v90, &qword_1008E2298);
  v66 = *(v49 + 8);
  v66(v83, v52);
  sub_10000EA04(v84, &qword_1008E2278);
  v90 = v58;
  v91 = v59;
  v92 = v81;
  v93 = v60;
  v95 = 0u;
  v96 = 0u;
  v94 = v61;
  v97 = v69;
  v98 = KeyPath;
  v99 = v62;
  v100 = v53;
  sub_10000EA04(&v90, &qword_1008E2298);
  v66(v51, v52);
  return sub_10000EA04(v82, &qword_1008E2278);
}

void sub_100227F6C(unint64_t a1)
{
  v55 = sub_100140278(&qword_1008E2280);
  __chkstk_darwin(v55);
  v3 = &v46 - v2;
  v4 = type metadata accessor for Calendar();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = type metadata accessor for EnvironmentValues();
  v8 = *(v57 - 8);
  __chkstk_darwin(v57);
  v56 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 62)
  {
LABEL_36:
    v10 = _CocoaArrayWrapper.endIndex.getter();
    if (v10)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v10 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v10)
    {
LABEL_3:
      v50 = v4;
      v11 = type metadata accessor for AdvancedChangeGoalView();
      v12 = a1;
      v13 = 0;
      v14 = v58 + *(v11 + 20);
      v53 = *v14;
      v54 = a1 & 0xC000000000000001;
      v15 = (v8 + 1);
      v46 = a1 & 0xFFFFFFFFFFFFFF8;
      v47 = v5 + 4;
      a1 = (v5 + 1);
      v52 = *(v14 + 8);
      v8 = &selRef_unitFormatString;
      v51 = v12;
      v59 = v3;
      v48 = v10;
      v49 = v7;
      v16 = _swiftEmptyArrayStorage;
      while (1)
      {
        if (v54)
        {
          v17 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          v18 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            goto LABEL_31;
          }
        }

        else
        {
          if (v13 >= *(v46 + 16))
          {
            goto LABEL_35;
          }

          v17 = *(v12 + 8 * v13 + 32);
          v18 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
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
            goto LABEL_36;
          }
        }

        v60 = v18;
        v5 = *&v17[OBJC_IVAR____TtC10FitnessApp7GoalDay_goal];
        v61 = v17;
        v19 = *&v17[OBJC_IVAR____TtC10FitnessApp7GoalDay_goalType];
        if (v52)
        {
          v20 = v53;
          v62 = v53;
          v21 = v5;
          sub_1000A72F0(v20, 1);
        }

        else
        {
          v22 = v5;
          v23 = v16;
          v24 = v8;
          v25 = a1;
          v26 = v15;
          v27 = v53;
          sub_1000A72F0(v53, 0);
          static os_log_type_t.fault.getter();
          v28 = static Log.runtimeIssuesLog.getter();
          os_log(_:dso:log:_:_:)();

          v29 = v56;
          EnvironmentValues.init()();
          swift_getAtKeyPath();
          v30 = v27;
          v15 = v26;
          a1 = v25;
          v8 = v24;
          v16 = v23;
          v3 = v59;
          sub_1000A73A4(v30, 0);
          (*v15)(v29, v57);
        }

        v31 = v62;
        v32 = [v62 v8[2]];

        if (!v32)
        {
          __break(1u);
          return;
        }

        v33 = [v32 v8[2]];

        v34 = &selRef_minuteUnit;
        if ((v19 - 1) < 2)
        {
          goto LABEL_17;
        }

        if (v19)
        {
          break;
        }

        v34 = &selRef_userActiveEnergyBurnedUnit;
        v35 = v33;
LABEL_19:
        v7 = [v35 *v34];

        [v5 doubleValueForUnit:v7];
        v37 = v36;
        v4 = *&v36;

        if ((v4 & 0x7FFFFFFFFFFFFFFFLL) > 0x7FEFFFFFFFFFFFFFLL)
        {
          goto LABEL_32;
        }

        if (v37 <= -9.22337204e18)
        {
          goto LABEL_33;
        }

        if (v37 >= 9.22337204e18)
        {
          goto LABEL_34;
        }

        sub_10001B104(v58, v3, &qword_1008E2280);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v39 = v49;
          v38 = v50;
          (*v47)(v49, v3, v50);
        }

        else
        {
          static os_log_type_t.fault.getter();
          v40 = static Log.runtimeIssuesLog.getter();
          os_log(_:dso:log:_:_:)();

          v41 = v56;
          EnvironmentValues.init()();
          v39 = v49;
          swift_getAtKeyPath();

          (*v15)(v41, v57);
          v38 = v50;
        }

        v5 = sub_1003D8648(v61[OBJC_IVAR____TtC10FitnessApp7GoalDay_day]);
        v43 = v42;
        (*a1)(v39, v38);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v16 = sub_1001A24FC(0, *(v16 + 2) + 1, 1, v16);
        }

        v4 = *(v16 + 2);
        v44 = *(v16 + 3);
        v7 = (v4 + 1);
        if (v4 >= v44 >> 1)
        {
          v16 = sub_1001A24FC((v44 > 1), v4 + 1, 1, v16);
        }

        *(v16 + 2) = v7;
        v45 = &v16[40 * v4];
        *(v45 + 4) = v5;
        *(v45 + 5) = v43;
        *(v45 + 6) = v37;
        *(v45 + 7) = v37;
        v45[64] = 0;
        ++v13;
        v3 = v59;
        v12 = v51;
        if (v60 == v48)
        {
          return;
        }
      }

      v34 = &selRef_countUnit;
LABEL_17:
      v35 = objc_opt_self();
      goto LABEL_19;
    }
  }
}

uint64_t sub_1002285B0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for EnvironmentValues();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  sub_1002270EC(a3);
  v11 = type metadata accessor for AdvancedChangeGoalView();
  v12 = a2 + *(v11 + 20);
  v13 = *v12;
  if (*(v12 + 8) == 1)
  {
    v14 = v13;
  }

  else
  {

    static os_log_type_t.fault.getter();
    v15 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000A73A4(v13, 0);
    (*(v7 + 8))(v9, v6);
    v14 = v22[1];
  }

  v16 = *(a2 + *(v11 + 24) + 8);
  v17 = type metadata accessor for ScheduleDayRowView();
  *(a3 + v17[5]) = v14;
  *(a3 + v17[6]) = v10;
  v18 = (a3 + v17[7]);
  type metadata accessor for GoalDaysModel();
  sub_10022890C(&unk_1008E2210, type metadata accessor for GoalDaysModel);
  v19 = v16;
  result = ObservedObject.init(wrappedValue:)();
  *v18 = result;
  v18[1] = v21;
  return result;
}

uint64_t sub_1002287C4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AdvancedChangeGoalView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100228828(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AdvancedChangeGoalView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10022888C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for AdvancedChangeGoalView() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_1002285B0(a1, v6, a2);
}

uint64_t sub_10022890C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100228984(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
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

unint64_t sub_100228A08()
{
  result = qword_1008E22B0;
  if (!qword_1008E22B0)
  {
    sub_100141EEC(&qword_1008E2250);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E22B0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CelebrationContext(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 65281 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65281 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65281;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65281;
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

_WORD *storeEnumTagSinglePayload for CelebrationContext(_WORD *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65281 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65281 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 16) + 1;
    *result = a2 - 255;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        result[1] = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
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

    result[1] = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_100228C04()
{
  sub_100228D78();
  result = HorizontalAlignment.init(_:)();
  qword_100925320 = result;
  return result;
}

uint64_t sub_100228C5C()
{
  sub_100228C8C();
  result = VerticalAlignment.init(_:)();
  qword_100925328 = result;
  return result;
}

unint64_t sub_100228C8C()
{
  result = qword_1008E22B8;
  if (!qword_1008E22B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E22B8);
  }

  return result;
}

uint64_t sub_100228CE0()
{
  if (qword_1008DA6C8 != -1)
  {
    result = swift_once();
  }

  v0 = qword_100925320;
  if (qword_1008DA6D0 != -1)
  {
    result = swift_once();
  }

  *&xmmword_100925330 = v0;
  *(&xmmword_100925330 + 1) = qword_100925328;
  return result;
}

unint64_t sub_100228D78()
{
  result = qword_1008E22C0;
  if (!qword_1008E22C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E22C0);
  }

  return result;
}

uint64_t sub_100228E0C()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_100229604();
  }

  return result;
}

uint64_t sub_100228E64()
{
  v1 = *(v0 + 56);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = objc_opt_self();
    v4 = v1 + 32;

    do
    {
      sub_10000B1B4(v4, v7);
      v5 = [v3 defaultCenter];
      sub_1000066AC(v7, v7[3]);
      [v5 removeObserver:_bridgeAnythingToObjectiveC<A>(_:)()];

      swift_unknownObjectRelease();
      sub_100005A40(v7);
      v4 += 32;
      --v2;
    }

    while (v2);
  }

  sub_1000245E0(*(v0 + 40));

  return v0;
}

uint64_t sub_100228F7C()
{
  sub_100228E64();

  return swift_deallocClassInstance();
}

uint64_t sub_100228FD4()
{
  v1 = *v0;
  result = sub_10013AA50();
  if ((result & 1) == 0)
  {
    v3 = objc_opt_self();
    v4 = [v3 defaultCenter];
    v5 = objc_opt_self();
    v6 = [v5 mainQueue];
    v7 = swift_allocObject();
    swift_weakInit();
    v28 = sub_10022A1EC;
    v29 = v7;
    v25 = 1107296256;
    aBlock = _NSConcreteStackBlock;
    v26 = sub_100026F8C;
    v27 = &unk_10084D1B0;
    v8 = _Block_copy(&aBlock);

    v9 = [v4 addObserverForName:UIApplicationSignificantTimeChangeNotification object:0 queue:v6 usingBlock:v8];
    _Block_release(v8);

    v10 = [v3 defaultCenter];
    v11 = kFIUIFitnessUnitPreferencesDidChangeNotification;
    v12 = [v5 mainQueue];
    v13 = swift_allocObject();
    swift_weakInit();
    v28 = sub_10022A214;
    v29 = v13;
    aBlock = _NSConcreteStackBlock;
    v25 = 1107296256;
    v26 = sub_100026F8C;
    v27 = &unk_10084D1D8;
    v14 = _Block_copy(&aBlock);

    v15 = [v10 addObserverForName:v11 object:0 queue:v12 usingBlock:v14];
    _Block_release(v14);

    v16 = [v3 defaultCenter];
    v17 = kFIMindfulnessSessionDataProviderDidUpdateNotification;
    v18 = [v5 mainQueue];
    v19 = swift_allocObject();
    swift_weakInit();
    v20 = swift_allocObject();
    *(v20 + 16) = v19;
    *(v20 + 24) = v1;
    v28 = sub_10022A23C;
    v29 = v20;
    aBlock = _NSConcreteStackBlock;
    v25 = 1107296256;
    v26 = sub_100026F8C;
    v27 = &unk_10084D228;
    v21 = _Block_copy(&aBlock);

    v22 = [v16 addObserverForName:v17 object:0 queue:v18 usingBlock:v21];
    _Block_release(v21);

    sub_100140278(&qword_1008E7590);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_1006D64F0;
    *(v23 + 56) = swift_getObjectType();
    *(v23 + 32) = v9;
    *(v23 + 88) = swift_getObjectType();
    *(v23 + 64) = v15;
    *(v23 + 120) = swift_getObjectType();
    *(v23 + 96) = v22;
    v0[7] = v23;
  }

  return result;
}

uint64_t sub_100229404()
{
  static os_log_type_t.default.getter();
  v0 = HKLogActivity;
  os_log(_:dso:log:_:_:)();

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_100229604();
  }

  return result;
}

uint64_t sub_1002294BC()
{
  v0 = static os_log_type_t.default.getter();
  v1 = HKLogActivity;
  if (os_log_type_enabled(HKLogActivity, v0))
  {
    v2 = v1;
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v9[0] = v4;
    *v3 = 136315138;
    v5 = _typeName(_:qualified:)();
    v7 = sub_10000AFDC(v5, v6, v9);

    *(v3 + 4) = v7;
    _os_log_impl(&_mh_execute_header, v2, v0, "%s did receive FIMindfulnessSessionDataProviderDidUpdate notification", v3, 0xCu);
    sub_100005A40(v4);
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_100229604();
  }

  return result;
}

uint64_t sub_100229604()
{
  v34 = *v0;
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v29[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = type metadata accessor for DispatchQoS();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v29[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v33 = v0;
  v9 = *(v0[2] + OBJC_IVAR___CHHistoryDataProvider_lock);
  v38 = v0[2];
  v35 = sub_1001DF08C;
  v36 = &v37;
  os_unfair_lock_lock(v9 + 4);
  sub_1001DF0A8(aBlock);
  os_unfair_lock_unlock(v9 + 4);
  v10 = aBlock[0];
  v11 = static os_log_type_t.default.getter();
  v12 = HKLogActivity;
  if (os_log_type_enabled(HKLogActivity, v11))
  {
    swift_bridgeObjectRetain_n();
    v31 = v12;
    v13 = swift_slowAlloc();
    v32 = v8;
    v14 = v13;
    v15 = swift_slowAlloc();
    v30 = v11;
    v16 = v15;
    aBlock[0] = v15;
    *v14 = 136315394;
    v17 = _typeName(_:qualified:)();
    v19 = sub_10000AFDC(v17, v18, aBlock);

    *(v14 + 4) = v19;
    *(v14 + 12) = 2048;
    v20 = *(v10 + 16);

    *(v14 + 14) = v20;

    v21 = v31;
    _os_log_impl(&_mh_execute_header, v31, v30, "%s historyItems count: %ld", v14, 0x16u);
    sub_100005A40(v16);

    v8 = v32;
  }

  v22 = sub_100229F40(v10);
  sub_1000078CC();
  v23 = static OS_dispatch_queue.main.getter();
  v24 = swift_allocObject();
  swift_weakInit();
  v25 = swift_allocObject();
  v25[2] = v24;
  v25[3] = v10;
  v26 = v34;
  v25[4] = v22;
  v25[5] = v26;
  aBlock[4] = sub_10022A1C0;
  aBlock[5] = v25;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000449A8;
  aBlock[3] = &unk_10084D188;
  v27 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_1000261C4();
  sub_100140278(&unk_1008E7F50);
  sub_10002621C();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v27);

  (*(v2 + 8))(v4, v1);
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_100229A6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    *(Strong + 32) = a2;
  }

  swift_beginAccess();
  v6 = swift_weakLoadStrong();
  if (v6)
  {
    *(v6 + 24) = a3;
  }

  v7 = static os_log_type_t.default.getter();
  v8 = HKLogActivity;
  if (os_log_type_enabled(HKLogActivity, v7))
  {
    v9 = v8;
    v10 = swift_slowAlloc();
    v19[0] = swift_slowAlloc();
    *v10 = 136315394;
    v11 = _typeName(_:qualified:)();
    v13 = sub_10000AFDC(v11, v12, v19);

    *(v10 + 4) = v13;
    *(v10 + 12) = 2080;
    v14 = sub_100071958(a2);
    v16 = sub_10000AFDC(v14, v15, v19);

    *(v10 + 14) = v16;
    _os_log_impl(&_mh_execute_header, v9, v7, "%s did update keyHistoryItems: %s", v10, 0x16u);
    swift_arrayDestroy();
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v18 = *(result + 40);
    sub_10000B210(v18);

    if (v18)
    {
      v18(result);
      return sub_1000245E0(v18);
    }
  }

  return result;
}

uint64_t sub_100229CA4(void *a1)
{
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = a1[3];
  v7 = a1[4];
  sub_1000066AC(a1, v6);
  (*(v7 + 24))(v6, v7);
  LOBYTE(a1) = static Date.< infix(_:_:)();
  (*(v3 + 8))(v5, v2);
  return a1 & 1;
}

void *sub_100229DC4(char *a1)
{
  v1[4] = _swiftEmptyArrayStorage;
  v1[5] = 0;
  v1[6] = 0;
  v1[7] = _swiftEmptyArrayStorage;
  v1[2] = a1;
  v1[3] = _swiftEmptyArrayStorage;
  v3 = swift_allocObject();
  swift_weakInit();
  v4 = swift_allocObject();
  *(v4 + 16) = sub_100229F38;
  *(v4 + 24) = v3;
  v5 = OBJC_IVAR___CHHistoryDataProvider_onChangeHandlers;
  swift_beginAccess();
  v6 = *&a1[v5];
  v7 = a1;
  swift_retain_n();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&a1[v5] = v6;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = sub_1001A1E7C(0, v6[2] + 1, 1, v6);
    *&a1[v5] = v6;
  }

  v10 = v6[2];
  v9 = v6[3];
  if (v10 >= v9 >> 1)
  {
    v6 = sub_1001A1E7C((v9 > 1), v10 + 1, 1, v6);
  }

  v6[2] = v10 + 1;
  v11 = &v6[2 * v10];
  v11[4] = sub_100077508;
  v11[5] = v4;
  *&a1[v5] = v6;
  swift_endAccess();

  sub_100228FD4();
  return v1;
}

uint64_t sub_100229F40(uint64_t a1)
{
  v2 = type metadata accessor for Calendar();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v20[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v20[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v10);
  v12 = &v20[-v11];
  if (*(a1 + 16) < 2uLL)
  {
  }

  else
  {
    static Calendar.current.getter();
    Date.init()();
    Calendar.startOfDay(for:)();
    v13 = *(v7 + 8);
    v13(v9, v6);
    v14 = (*(v3 + 8))(v5, v2);
    __chkstk_darwin(v14);
    *&v20[-16] = v12;

    v15 = sub_1005AAE28(sub_10022A1CC, &v20[-32], a1);
    v16 = *(v15 + 16);
    if (v16 >= 0x65)
    {
      sub_100311340(v15, v15 + 32, 0, 0xC9uLL);
      v18 = v17;

      v16 = *(v18 + 16);
      v15 = v18;
    }

    if (!v16)
    {

      sub_100311340(a1, a1 + 32, 0, 3uLL);
    }

    a1 = v15;
    v13(v12, v6);
  }

  return a1;
}

unint64_t sub_10022A24C@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10022E554(*a1);
  *a2 = result;
  return result;
}

id sub_10022A278()
{
  v0 = [objc_allocWithZone(NSNumberFormatter) init];
  [v0 setMinimumIntegerDigits:2];
  result = [v0 setMaximumFractionDigits:0];
  qword_1008E2400 = v0;
  return result;
}

uint64_t sub_10022A2DC()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

void sub_10022A350()
{
  v1 = *&v0[OBJC_IVAR___WorkoutDetailSwimmingActivityDataSource_dataCalculator];
  v2 = *&v0[OBJC_IVAR___WorkoutDetailSwimmingActivityDataSource_workout];
  v3 = *&v0[OBJC_IVAR___WorkoutDetailSwimmingActivityDataSource_workoutActivity];
  v4 = swift_allocObject();
  *(v4 + 16) = v0;
  v7[4] = sub_10022EF58;
  v7[5] = v4;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 1107296256;
  v7[2] = sub_10022A5A4;
  v7[3] = &unk_10084D358;
  v5 = _Block_copy(v7);
  v6 = v0;

  [v1 swimmingSetsForWorkout:v2 workoutActivity:v3 completion:v5];
  _Block_release(v5);
}

uint64_t sub_10022A464(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    sub_100140278(&qword_1008E7590);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_1006D46C0;
    swift_getErrorValue();
    *(v3 + 56) = v8;
    v4 = sub_100005994((v3 + 32));
    (*(*(v8 - 8) + 16))(v4);
    swift_errorRetain();
    print(_:separator:terminator:)();
  }

  else
  {
    if (a1)
    {
      swift_getKeyPath();
      swift_getKeyPath();

      v7 = a3;
      static Published.subscript.setter();
    }

    return sub_10022CB7C();
  }
}

uint64_t sub_10022A5A4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {
    sub_1000059F8(0, &qword_1008E2560);
    v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v6 = a3;
  v5(v4, a3);
}

unint64_t sub_10022A648(unint64_t result)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  v2 = *(v1 + OBJC_IVAR___CHWorkoutDetailSwimmingSetDataSource_columns);
  if (*(v2 + 16) <= result)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  if (*(v2 + result + 32) >= 3u)
  {
    v3 = [objc_opt_self() mainBundle];
    v4 = String._bridgeToObjectiveC()();
    v5 = [v3 localizedStringForKey:v4 value:0 table:0];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  return AttributedString.init(stringLiteral:)();
}

unint64_t sub_10022A75C(unint64_t result)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  v2 = *(v1 + OBJC_IVAR___CHWorkoutDetailSwimmingSetDataSource_columns);
  if (*(v2 + 16) <= result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v3 = *(v2 + result + 32);
  v4 = OBJC_IVAR___CHWorkoutDetailSwimmingSetDataSource_columnSizes;
  result = swift_beginAccess();
  if (*(*(v1 + v4) + 16))
  {
    return sub_1004CD4B0(v3);
  }

  return result;
}

uint64_t sub_10022A808@<X0>(uint64_t a1@<X1>, char *a2@<X8>)
{
  v4 = type metadata accessor for DynamicTypeSize();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100140278(&qword_1008DDBE0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v50 - v13;
  result = objc_opt_self();
  v16 = __OFADD__(a1, 1);
  v17 = a1 + 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    v18 = result;
    v19 = [objc_allocWithZone(NSNumber) initWithInteger:v17];
    v20 = [v18 localizedStringFromNumber:v19 numberStyle:0];

    v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v56 = v14;
    v23 = v22;

    v58 = v21;
    v59 = v23;
    sub_10000FCBC();
    v24 = Text.init<A>(_:)();
    v26 = v25;
    LOBYTE(v23) = v27;
    v52 = v7;
    static Font.body.getter();
    v57 = a2;
    v28 = Text.font(_:)();
    v54 = v11;
    v55 = v8;
    v29 = v28;
    v53 = v9;
    v31 = v30;
    v51 = v4;
    v33 = v32;

    sub_10004642C(v24, v26, v23 & 1);

    static Color.gray.getter();
    v34 = Text.foregroundColor(_:)();
    v36 = v35;
    LOBYTE(v24) = v37;
    v39 = v38;

    sub_10004642C(v29, v31, v33 & 1);

    v58 = v34;
    v59 = v36;
    v60 = v24 & 1;
    v61 = v39;
    v41 = v51;
    v40 = v52;
    (*(v5 + 104))(v52, enum case for DynamicTypeSize.large(_:), v51);
    v42 = v56;
    View.dynamicTypeSize(_:)();
    (*(v5 + 8))(v40, v41);
    sub_10004642C(v34, v36, v24 & 1);

    v44 = v53;
    v43 = v54;
    v45 = *(v53 + 16);
    v46 = v55;
    v45(v54, v42, v55);
    v47 = v57;
    v45(v57, v43, v46);
    v48 = &v47[*(sub_100140278(&qword_1008E2538) + 48)];
    *v48 = 0;
    v48[8] = 1;
    v49 = *(v44 + 8);
    v49(v42, v46);
    return (v49)(v43, v46);
  }

  return result;
}

uint64_t sub_10022ABF4@<X0>(uint64_t a1@<X0>, void *a2@<X1>, char *a3@<X8>)
{
  v38 = a1;
  v45 = a3;
  v43 = type metadata accessor for DynamicTypeSize();
  v41 = *(v43 - 8);
  __chkstk_darwin(v43);
  v40 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_100140278(&qword_1008DDBE0);
  v5 = *(v44 - 8);
  __chkstk_darwin(v44);
  v42 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v39 = &v38 - v8;
  v46 = sub_10022C918(a2);
  v47 = v9;
  sub_10000FCBC();
  v10 = Text.init<A>(_:)();
  v12 = v11;
  v14 = v13;
  static Font.body.getter();
  v15 = Text.font(_:)();
  v17 = v16;
  v19 = v18;

  sub_10004642C(v10, v12, v14 & 1);

  v20 = Text.foregroundColor(_:)();
  v22 = v21;
  LOBYTE(v10) = v23;
  v25 = v24;
  sub_10004642C(v15, v17, v19 & 1);

  v46 = v20;
  v47 = v22;
  v26 = v10 & 1;
  v48 = v10 & 1;
  v49 = v25;
  v28 = v40;
  v27 = v41;
  v29 = v43;
  (*(v41 + 104))(v40, enum case for DynamicTypeSize.large(_:), v43);
  v30 = v39;
  View.dynamicTypeSize(_:)();
  (*(v27 + 8))(v28, v29);
  sub_10004642C(v20, v22, v26);

  v31 = *(v5 + 16);
  v32 = v42;
  v33 = v44;
  v31(v42, v30, v44);
  v34 = v45;
  v31(v45, v32, v33);
  v35 = &v34[*(sub_100140278(&qword_1008E2538) + 48)];
  *v35 = 0;
  v35[8] = 1;
  v36 = *(v5 + 8);
  v36(v30, v33);
  return (v36)(v32, v33);
}

id sub_10022AF6C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v148 = a2;
  v137 = a3;
  v4 = sub_100140278(&qword_1008E2540);
  __chkstk_darwin(v4 - 8);
  v138 = &v131 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v135 = &v131 - v7;
  v8 = type metadata accessor for DynamicTypeSize();
  v9 = *(v8 - 8);
  v153 = v8;
  v154 = v9;
  __chkstk_darwin(v8);
  v149 = &v131 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v136 = sub_100140278(&qword_1008E2548);
  v134 = *(v136 - 8);
  __chkstk_darwin(v136);
  v133 = &v131 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v132 = &v131 - v13;
  __chkstk_darwin(v14);
  v140 = &v131 - v15;
  __chkstk_darwin(v16);
  v150 = &v131 - v17;
  __chkstk_darwin(v18);
  v152 = &v131 - v19;
  *&v21 = __chkstk_darwin(v20).n128_u64[0];
  v151 = &v131 - v22;
  v131 = a1;
  result = [a1 formattedDominantStrokeStyle];
  if (result)
  {
    v24 = result;
    v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v27 = v26;

    v155 = v25;
    v156 = v27;
    v147 = sub_10000FCBC();
    v28 = Text.init<A>(_:)();
    v30 = v29;
    LOBYTE(v27) = v31;
    static Font.body.getter();
    v32 = Text.font(_:)();
    v34 = v33;
    v36 = v35;

    sub_10004642C(v28, v30, v27 & 1);

    static Color.white.getter();
    v37 = Text.foregroundColor(_:)();
    v39 = v38;
    LOBYTE(v30) = v40;
    v42 = v41;

    sub_10004642C(v32, v34, v36 & 1);

    KeyPath = swift_getKeyPath();
    v155 = v37;
    v156 = v39;
    v157 = v30 & 1;
    v158 = v42;
    v159 = KeyPath;
    v160 = 1;
    v161 = 0;
    v145 = enum case for DynamicTypeSize.large(_:);
    v44 = v154;
    v45 = *(v154 + 104);
    v146 = v154 + 104;
    v144 = v45;
    v46 = v149;
    v47 = v153;
    v45(v149);
    v143 = sub_100140278(&qword_1008DCB38);
    v142 = sub_10015EE70();
    View.dynamicTypeSize(_:)();
    v48 = *(v44 + 8);
    v154 = v44 + 8;
    v141 = v48;
    v48(v46, v47);
    sub_10004642C(v37, v39, v30 & 1);

    v139 = objc_opt_self();
    v49 = [v139 mainBundle];
    v50 = String._bridgeToObjectiveC()();
    v51 = [v49 localizedStringForKey:v50 value:0 table:0];

    v52 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v54 = v53;

    v155 = v52;
    v156 = v54;
    v55 = Text.init<A>(_:)();
    v57 = v56;
    LOBYTE(v51) = v58;
    static Font.body.getter();
    v59 = Text.font(_:)();
    v61 = v60;
    LOBYTE(v44) = v62;

    sub_10004642C(v55, v57, v51 & 1);

    v63 = Text.foregroundColor(_:)();
    v65 = v64;
    LOBYTE(v55) = v66;
    v68 = v67;
    sub_10004642C(v59, v61, v44 & 1);

    v69 = swift_getKeyPath();
    v155 = v63;
    v156 = v65;
    v157 = v55 & 1;
    v158 = v68;
    v159 = v69;
    v160 = 1;
    v161 = 0;
    v70 = v153;
    v144(v46, v145, v153);
    View.dynamicTypeSize(_:)();
    v141(v46, v70);
    sub_10004642C(v63, v65, v55 & 1);

    v71 = [v139 mainBundle];
    v72 = String._bridgeToObjectiveC()();
    v73 = [v71 localizedStringForKey:v72 value:0 table:0];

    v74 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v76 = v75;

    v155 = v74;
    v156 = v76;
    v77 = Text.init<A>(_:)();
    v79 = v78;
    LOBYTE(v73) = v80;
    static Font.body.getter();
    v81 = Text.font(_:)();
    v83 = v82;
    LOBYTE(v61) = v84;

    sub_10004642C(v77, v79, v73 & 1);

    v85 = Text.foregroundColor(_:)();
    v87 = v86;
    LOBYTE(v79) = v88;
    v90 = v89;
    sub_10004642C(v81, v83, v61 & 1);

    v91 = swift_getKeyPath();
    v155 = v85;
    v156 = v87;
    v157 = v79 & 1;
    v158 = v90;
    v159 = v91;
    v160 = 1;
    v161 = 0;
    v92 = v149;
    v93 = v153;
    v144(v149, v145, v153);
    View.dynamicTypeSize(_:)();
    v141(v92, v93);
    sub_10004642C(v85, v87, v79 & 1);

    if ([v131 swolfScore] < 1)
    {
      v121 = v136;
      v120 = v135;
      v119 = v134;
      v118 = v140;
      v122 = 1;
    }

    else
    {
      v94 = [v139 mainBundle];
      v95 = String._bridgeToObjectiveC()();
      v96 = [v94 localizedStringForKey:v95 value:0 table:0];

      v97 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v99 = v98;

      v155 = v97;
      v156 = v99;
      v100 = Text.init<A>(_:)();
      v102 = v101;
      LOBYTE(v96) = v103;
      static Font.body.getter();
      v104 = Text.font(_:)();
      v106 = v105;
      v108 = v107;

      sub_10004642C(v100, v102, v96 & 1);

      v109 = Text.foregroundColor(_:)();
      v111 = v110;
      LOBYTE(v102) = v112;
      v114 = v113;
      sub_10004642C(v104, v106, v108 & 1);

      v115 = swift_getKeyPath();
      v155 = v109;
      v156 = v111;
      v157 = v102 & 1;
      v158 = v114;
      v159 = v115;
      v160 = 1;
      v161 = 0;
      v116 = v149;
      v117 = v153;
      v144(v149, v145, v153);
      v118 = v140;
      View.dynamicTypeSize(_:)();
      v141(v116, v117);
      sub_10004642C(v109, v111, v102 & 1);

      v119 = v134;
      v120 = v135;
      v121 = v136;
      (*(v134 + 32))(v135, v118, v136);
      v122 = 0;
    }

    (*(v119 + 56))(v120, v122, 1, v121);
    v123 = *(v119 + 16);
    v123(v118, v151, v121);
    v124 = v132;
    v123(v132, v152, v121);
    v125 = v118;
    v126 = v133;
    v123(v133, v150, v121);
    v127 = v138;
    sub_100088CCC(v120, v138);
    v128 = v137;
    v123(v137, v125, v121);
    v129 = sub_100140278(&qword_1008E2550);
    v123(&v128[v129[12]], v124, v121);
    v123(&v128[v129[16]], v126, v121);
    sub_100088CCC(v127, &v128[v129[20]]);
    sub_10000EA04(v120, &qword_1008E2540);
    v130 = *(v119 + 8);
    v130(v150, v121);
    v130(v152, v121);
    v130(v151, v121);
    sub_10000EA04(v127, &qword_1008E2540);
    v130(v126, v121);
    v130(v124, v121);
    return (v130)(v140, v121);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_10022BC94(void *a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v137 = a3;
  v5 = sub_100140278(&qword_1008E2540);
  __chkstk_darwin(v5 - 8);
  v138 = &v131 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v135 = &v131 - v8;
  v9 = type metadata accessor for DynamicTypeSize();
  v10 = *(v9 - 8);
  v153 = v9;
  v154 = v10;
  __chkstk_darwin(v9);
  v152 = &v131 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v136 = sub_100140278(&qword_1008E2548);
  v134 = *(v136 - 8);
  __chkstk_darwin(v136);
  v133 = &v131 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v132 = &v131 - v14;
  __chkstk_darwin(v15);
  v139 = &v131 - v16;
  __chkstk_darwin(v17);
  v147 = &v131 - v18;
  __chkstk_darwin(v19);
  v148 = &v131 - v20;
  *&v22 = __chkstk_darwin(v21).n128_u64[0];
  v149 = &v131 - v23;
  v151 = a2;
  v140 = *(a2 + OBJC_IVAR___WorkoutDetailSwimmingActivityDataSource_formattingManager);
  v24 = [v140 fitnessUIFormattingManager];
  v150 = a1;
  v25 = [a1 formattedDistanceValueWithFormattingManager:v24];

  if (!v25)
  {
    __break(1u);
    goto LABEL_9;
  }

  v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v28 = v27;

  v155 = v26;
  v156 = v28;
  v146 = sub_10000FCBC();
  v29 = Text.init<A>(_:)();
  v31 = v30;
  LOBYTE(v28) = v32;
  static Font.body.getter();
  v33 = Text.font(_:)();
  v35 = v34;
  v37 = v36;

  sub_10004642C(v29, v31, v28 & 1);

  v38 = Text.foregroundColor(_:)();
  v40 = v39;
  LOBYTE(v31) = v41;
  v43 = v42;
  sub_10004642C(v33, v35, v37 & 1);

  KeyPath = swift_getKeyPath();
  v155 = v38;
  v156 = v40;
  v157 = v31 & 1;
  v158 = v43;
  v159 = KeyPath;
  v160 = 1;
  v161 = 0;
  v45 = v154;
  v46 = *(v154 + 104);
  v47 = v152;
  v145 = enum case for DynamicTypeSize.large(_:);
  v48 = v153;
  v144 = v46;
  v131 = v154 + 104;
  v46(v152);
  v49 = sub_100140278(&qword_1008DCB38);
  v50 = sub_10015EE70();
  v143 = v49;
  v142 = v50;
  View.dynamicTypeSize(_:)();
  v51 = *(v45 + 8);
  v154 = v45 + 8;
  v141 = v51;
  v51(v47, v48);
  sub_10004642C(v38, v40, v31 & 1);

  v52 = [v140 fitnessUIFormattingManager];
  v53 = [v150 formattedActiveDurationWithFormattingManager:v52];

  if (!v53)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v54 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v56 = v55;

  v155 = v54;
  v156 = v56;
  v57 = Text.init<A>(_:)();
  v59 = v58;
  LOBYTE(v56) = v60;
  static Font.body.getter();
  v61 = Text.font(_:)();
  v63 = v62;
  v65 = v64;

  sub_10004642C(v57, v59, v56 & 1);

  v66 = Text.foregroundColor(_:)();
  v68 = v67;
  LOBYTE(v59) = v69;
  v71 = v70;
  sub_10004642C(v61, v63, v65 & 1);

  v72 = swift_getKeyPath();
  v155 = v66;
  v156 = v68;
  v157 = v59 & 1;
  v158 = v71;
  v159 = v72;
  v160 = 1;
  v161 = 0;
  v74 = v152;
  v73 = v153;
  v144(v152, v145, v153);
  View.dynamicTypeSize(_:)();
  v141(v74, v73);
  sub_10004642C(v66, v68, v59 & 1);

  v75 = [v140 fitnessUIFormattingManager];
  v76 = [v150 formattedRestDurationWithFormattingManager:v75];

  if (!v76)
  {
LABEL_10:
    __break(1u);
    return;
  }

  v77 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v79 = v78;

  v155 = v77;
  v156 = v79;
  v80 = Text.init<A>(_:)();
  v82 = v81;
  LOBYTE(v79) = v83;
  static Font.body.getter();
  v84 = Text.font(_:)();
  v86 = v85;
  v88 = v87;

  sub_10004642C(v80, v82, v79 & 1);

  v89 = Text.foregroundColor(_:)();
  v91 = v90;
  LOBYTE(v82) = v92;
  v94 = v93;
  sub_10004642C(v84, v86, v88 & 1);

  v95 = swift_getKeyPath();
  v155 = v89;
  v156 = v91;
  v157 = v82 & 1;
  v158 = v94;
  v159 = v95;
  v96 = 1;
  v160 = 1;
  v161 = 0;
  v98 = v152;
  v97 = v153;
  v144(v152, v145, v153);
  View.dynamicTypeSize(_:)();
  v141(v98, v97);
  sub_10004642C(v89, v91, v82 & 1);

  if ([v150 swolfScore] < 1)
  {
    v122 = v136;
    v121 = v135;
    v120 = v134;
    v119 = v139;
  }

  else
  {
    v155 = sub_10022E564(v150);
    v156 = v99;
    v100 = Text.init<A>(_:)();
    v102 = v101;
    v104 = v103;
    static Font.body.getter();
    v105 = Text.font(_:)();
    v107 = v106;
    v109 = v108;

    sub_10004642C(v100, v102, v104 & 1);

    v110 = Text.foregroundColor(_:)();
    v112 = v111;
    LOBYTE(v102) = v113;
    v115 = v114;
    sub_10004642C(v105, v107, v109 & 1);

    v116 = swift_getKeyPath();
    v155 = v110;
    v156 = v112;
    v157 = v102 & 1;
    v158 = v115;
    v159 = v116;
    v160 = 1;
    v161 = 0;
    v118 = v152;
    v117 = v153;
    v144(v152, v145, v153);
    v119 = v139;
    View.dynamicTypeSize(_:)();
    v141(v118, v117);
    sub_10004642C(v110, v112, v102 & 1);

    v120 = v134;
    v121 = v135;
    v122 = v136;
    (*(v134 + 32))(v135, v119, v136);
    v96 = 0;
  }

  (*(v120 + 56))(v121, v96, 1, v122);
  v123 = *(v120 + 16);
  v123(v119, v149, v122);
  v124 = v119;
  v125 = v132;
  v123(v132, v148, v122);
  v126 = v133;
  v123(v133, v147, v122);
  v127 = v138;
  sub_100088CCC(v121, v138);
  v128 = v137;
  v123(v137, v124, v122);
  v129 = sub_100140278(&qword_1008E2550);
  v123(&v128[v129[12]], v125, v122);
  v123(&v128[v129[16]], v126, v122);
  sub_100088CCC(v127, &v128[v129[20]]);
  sub_10000EA04(v121, &qword_1008E2540);
  v130 = *(v120 + 8);
  v130(v147, v122);
  v130(v148, v122);
  v130(v149, v122);
  sub_10000EA04(v127, &qword_1008E2540);
  v130(v126, v122);
  v130(v125, v122);
  v130(v139, v122);
}

uint64_t sub_10022C918(void *a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v3 = *(v1 + OBJC_IVAR___WorkoutDetailSwimmingActivityDataSource_formattingManager);
  v4 = [v3 fitnessUIFormattingManager];
  v5 = [a1 formattedPaceUsingFormatType:v21 formattingManager:v4];

  if (v5)
  {
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0xE000000000000000;
  }

  v9 = [v3 fitnessUIFormattingManager];
  v10 = [a1 formattedStrokeCountUsingFormatType:v21 formattingManager:v9];

  if (v10)
  {
    v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v12;
  }

  else
  {
    v11 = 0;
    v13 = 0xE000000000000000;
  }

  v14 = [objc_opt_self() mainBundle];
  v15 = String._bridgeToObjectiveC()();
  v16 = [v14 localizedStringForKey:v15 value:0 table:0];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_100140278(&unk_1008E4E50);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1006D1F70;
  *(v17 + 56) = &type metadata for String;
  v18 = sub_10000A788();
  *(v17 + 32) = v6;
  *(v17 + 40) = v8;
  *(v17 + 96) = &type metadata for String;
  *(v17 + 104) = v18;
  *(v17 + 64) = v18;
  *(v17 + 72) = v11;
  *(v17 + 80) = v13;
  v19 = String.init(format:_:)();

  return v19;
}

uint64_t sub_10022CB7C()
{
  v1 = v0;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v2 = v106;
  if (v106 >> 62)
  {
    goto LABEL_60;
  }

  for (i = *((v106 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v4 = 0;
    v104 = OBJC_IVAR___CHWorkoutDetailSwimmingSetDataSource_columnSizes;
    v94 = OBJC_IVAR___CHWorkoutDetailSwimmingSetDataSource_columns;
    v95 = v2 & 0xFFFFFFFFFFFFFF8;
    v93 = v2 + 32;
    v96 = v2 & 0xC000000000000001;
    v99 = v1;
    v91 = i;
    v92 = v2;
LABEL_5:
    while (v96)
    {
      v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v6 = __OFADD__(v4++, 1);
      if (v6)
      {
        goto LABEL_53;
      }

LABEL_8:
      v7 = *(v1 + v94);
      v101 = *(v7 + 16);
      if (v101)
      {
        v97 = v4;
        v102 = v5;

        swift_beginAccess();
        v8 = 0;
        v100 = v7;
        while (1)
        {
          if (v8 >= *(v7 + 16))
          {
            goto LABEL_54;
          }

          v103 = *(v7 + v8 + 32);
          if (v103 > 1)
          {
            if (*(v7 + v8 + 32) == 2)
            {
              sub_100140278(&unk_1008E4E50);
              v13 = swift_allocObject();
              *(v13 + 16) = xmmword_1006D64F0;
              v14 = *(v1 + OBJC_IVAR___WorkoutDetailSwimmingActivityDataSource_formattingManager);
              v15 = [v14 fitnessUIFormattingManager];
              v16 = [v102 formattedDistanceValueWithFormattingManager:v15];

              if (!v16)
              {
                goto LABEL_64;
              }

              v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v19 = v18;

              *(v13 + 56) = &type metadata for String;
              v20 = sub_10000A788();
              *(v13 + 64) = v20;
              *(v13 + 32) = v17;
              *(v13 + 40) = v19;
              v21 = [v14 fitnessUIFormattingManager];
              v22 = [v102 formattedActiveDurationWithFormattingManager:v21];

              if (!v22)
              {
                __break(1u);
LABEL_63:
                __break(1u);
LABEL_64:
                __break(1u);
LABEL_65:
                __break(1u);
LABEL_66:
                result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
                __break(1u);
                return result;
              }

              v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v25 = v24;

              *(v13 + 96) = &type metadata for String;
              *(v13 + 104) = v20;
              *(v13 + 72) = v23;
              *(v13 + 80) = v25;
              v26 = [v14 fitnessUIFormattingManager];
              v27 = [v102 formattedRestDurationWithFormattingManager:v26];

              if (!v27)
              {
                goto LABEL_63;
              }

              v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v30 = v29;

              *(v13 + 136) = &type metadata for String;
              *(v13 + 144) = v20;
              *(v13 + 112) = v28;
              *(v13 + 120) = v30;
              String.init(format:_:)();
              v1 = v99;
              v7 = v100;
            }

            else
            {
              sub_10022C918(v102);
            }
          }

          else
          {
            if (!*(v7 + v8 + 32))
            {
              v9 = objc_opt_self();
              v10 = [objc_allocWithZone(NSNumber) initWithInteger:v97];
              v11 = [v9 localizedStringFromNumber:v10 numberStyle:0];

              static String._unconditionallyBridgeFromObjectiveC(_:)();
              if (qword_1008DA660 != -1)
              {
                swift_once();
              }

              v12 = &qword_100925298;
              goto LABEL_33;
            }

            sub_100140278(&unk_1008E4E50);
            v31 = swift_allocObject();
            *(v31 + 16) = xmmword_1006D6950;
            v32 = [v102 formattedDominantStrokeStyle];
            if (!v32)
            {
              goto LABEL_65;
            }

            v33 = v32;
            v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v36 = v35;

            *(v31 + 56) = &type metadata for String;
            v37 = sub_10000A788();
            *(v31 + 64) = v37;
            *(v31 + 32) = v34;
            *(v31 + 40) = v36;
            v38 = objc_opt_self();
            v39 = [v38 mainBundle];
            v40 = String._bridgeToObjectiveC()();
            v41 = [v39 localizedStringForKey:v40 value:0 table:0];

            v42 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v44 = v43;

            *(v31 + 96) = &type metadata for String;
            *(v31 + 104) = v37;
            *(v31 + 72) = v42;
            *(v31 + 80) = v44;
            v45 = [v38 mainBundle];
            v46 = String._bridgeToObjectiveC()();
            v47 = [v45 localizedStringForKey:v46 value:0 table:0];

            v48 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v50 = v49;

            *(v31 + 136) = &type metadata for String;
            *(v31 + 144) = v37;
            v98 = v37;
            *(v31 + 112) = v48;
            *(v31 + 120) = v50;
            if ([v102 swolfScore] < 1)
            {
              v54 = 0;
              v56 = 0xE000000000000000;
            }

            else
            {
              v51 = [v38 mainBundle];
              v52 = String._bridgeToObjectiveC()();
              v53 = [v51 localizedStringForKey:v52 value:0 table:0];

              v54 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v56 = v55;
            }

            v1 = v99;
            *(v31 + 176) = &type metadata for String;
            *(v31 + 184) = v98;
            *(v31 + 152) = v54;
            *(v31 + 160) = v56;
            String.init(format:_:)();
            v7 = v100;
          }

          if (qword_1008DA668 != -1)
          {
            swift_once();
          }

          v12 = &qword_1009252A0;
LABEL_33:
          v57 = *v12;
          v58 = String._bridgeToObjectiveC()();

          v108[0] = NSFontAttributeName;
          v108[4] = sub_1000059F8(0, &qword_1008F73C0);
          v108[1] = v57;
          sub_100140278(&qword_1008E2568);
          v2 = static _DictionaryStorage.allocate(capacity:)();
          sub_10022EF60(v108, &v106);
          v59 = v106;
          v60 = v57;
          v61 = NSFontAttributeName;
          v62 = sub_1004C53E8(v59);
          if (v63)
          {
            goto LABEL_55;
          }

          *(v2 + 8 * (v62 >> 6) + 64) |= 1 << v62;
          *(*(v2 + 48) + 8 * v62) = v59;
          sub_1001AA76C(&v107, (*(v2 + 56) + 32 * v62));
          v64 = *(v2 + 16);
          v6 = __OFADD__(v64, 1);
          v65 = v64 + 1;
          if (v6)
          {
            goto LABEL_56;
          }

          *(v2 + 16) = v65;
          sub_100198304(v108);
          type metadata accessor for Key(0);
          sub_10022EFD0(&qword_1008E7FD0, type metadata accessor for Key);
          isa = Dictionary._bridgeToObjectiveC()().super.isa;

          [v58 boundingRectWithSize:1 options:isa attributes:0 context:{1.79769313e308, 1.79769313e308}];
          v68 = v67;
          v70 = v69;
          v72 = v71;
          v74 = v73;

          v109.origin.x = v68;
          v109.origin.y = v70;
          v109.size.width = v72;
          v109.size.height = v74;
          v75 = ceil(CGRectGetWidth(v109));
          v2 = *(v1 + v104);
          if (*(v2 + 16) && (v76 = sub_1004CD4B0(v103), (v77 & 1) != 0))
          {
            if (*(*(v2 + 56) + 8 * v76) < v75)
            {
              goto LABEL_40;
            }
          }

          else if (v75 > 0.0)
          {
LABEL_40:
            swift_beginAccess();
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v105 = *(v1 + v104);
            v2 = v105;
            *(v1 + v104) = 0x8000000000000000;
            v80 = sub_1004CD4B0(v103);
            v81 = *(v2 + 16);
            v82 = (v79 & 1) == 0;
            v83 = v81 + v82;
            if (__OFADD__(v81, v82))
            {
              goto LABEL_57;
            }

            v84 = v79;
            if (*(v2 + 24) >= v83)
            {
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                v2 = &v105;
                sub_10049315C();
              }
            }

            else
            {
              sub_1004893C8(v83, isUniquelyReferenced_nonNull_native);
              v2 = v105;
              v85 = sub_1004CD4B0(v103);
              if ((v84 & 1) != (v86 & 1))
              {
                goto LABEL_66;
              }

              v80 = v85;
            }

            v87 = v105;
            if (v84)
            {
              *(v105[7] + 8 * v80) = v75;
            }

            else
            {
              v105[(v80 >> 6) + 8] |= 1 << v80;
              *(v87[6] + v80) = v103;
              *(v87[7] + 8 * v80) = v75;
              v88 = v87[2];
              v6 = __OFADD__(v88, 1);
              v89 = v88 + 1;
              if (v6)
              {
                goto LABEL_58;
              }

              v87[2] = v89;
            }

            *(v1 + v104) = v87;
            swift_endAccess();
          }

          ++v8;

          if (v101 == v8)
          {

            i = v91;
            v2 = v92;
            v4 = v97;
            if (v97 == v91)
            {
            }

            goto LABEL_5;
          }
        }
      }

      if (v4 == i)
      {
      }
    }

    if (v4 >= *(v95 + 16))
    {
      goto LABEL_59;
    }

    v5 = *(v93 + 8 * v4);
    v6 = __OFADD__(v4++, 1);
    if (!v6)
    {
      goto LABEL_8;
    }

LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    ;
  }
}

void sub_10022D604(void *a1, void *a2, void *a3, void *a4)
{
  v50 = a3;
  v51 = a4;
  v52 = a1;
  v53 = a2;
  v49 = sub_100140278(&qword_1008DBEE8);
  v5 = *(v49 - 8);
  __chkstk_darwin(v49);
  v7 = &v49 - v6;
  v8 = type metadata accessor for Color.RGBColorSpace();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100140278(&qword_1008E2558);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v49 - v14;
  v16 = OBJC_IVAR___CHWorkoutDetailSwimmingSetDataSource__swimmingSets;
  v55 = _swiftEmptyArrayStorage;
  sub_100140278(&qword_1008E2490);
  Published.init(initialValue:)();
  (*(v13 + 32))(&v4[v16], v15, v12);
  *&v4[OBJC_IVAR___CHWorkoutDetailSwimmingSetDataSource_columns] = &off_100842618;
  *&v4[OBJC_IVAR___CHWorkoutDetailSwimmingSetDataSource_columnSizes] = &_swiftEmptyDictionarySingleton;
  v17 = objc_opt_self();
  v18 = [v17 distanceColors];
  if (!v18)
  {
    __break(1u);
    goto LABEL_11;
  }

  v19 = v18;
  v20 = [v18 nonGradientTextColor];

  if (!v20)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v21 = OBJC_IVAR___CHWorkoutDetailSwimmingSetDataSource_distanceColor;
  *&v4[v21] = Color.init(_:)();
  v22 = [v17 paceColors];
  if (!v22)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v23 = v22;
  v24 = [v22 nonGradientTextColor];

  if (!v24)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v25 = OBJC_IVAR___CHWorkoutDetailSwimmingSetDataSource_paceColor;
  *&v4[v25] = Color.init(_:)();
  v26 = OBJC_IVAR___CHWorkoutDetailSwimmingSetDataSource_restColor;
  (*(v9 + 104))(v11, enum case for Color.RGBColorSpace.sRGB(_:), v8);
  *&v4[v26] = Color.init(_:red:green:blue:opacity:)();
  v27 = [v17 elapsedTimeColors];
  if (!v27)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v28 = v27;
  v29 = [v27 nonGradientTextColor];

  if (!v29)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v30 = OBJC_IVAR___CHWorkoutDetailSwimmingSetDataSource_timeColor;
  *&v4[v30] = Color.init(_:)();
  v31 = [v17 paceColors];
  if (!v31)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v32 = v31;
  v33 = [v31 nonGradientTextColor];

  if (v33)
  {
    v34 = OBJC_IVAR___CHWorkoutDetailSwimmingSetDataSource_swolfColor;
    *&v4[v34] = Color.init(_:)();
    v35 = &v4[OBJC_IVAR___CHWorkoutDetailSwimmingSetDataSource_cellPadding];
    *v35 = xmmword_1006DB530;
    *(v35 + 1) = xmmword_1006DB530;
    *&v4[OBJC_IVAR___WorkoutDetailSwimmingActivityDataSource_supportedPaceDistances] = &off_100842640;
    v36 = OBJC_IVAR___WorkoutDetailSwimmingActivityDataSource__paceDistance;
    v55 = 100;
    Published.init(initialValue:)();
    (*(v5 + 32))(&v4[v36], v7, v49);
    v38 = v50;
    v37 = v51;
    *&v4[OBJC_IVAR___WorkoutDetailSwimmingActivityDataSource_dataCalculator] = v50;
    *&v4[OBJC_IVAR___WorkoutDetailSwimmingActivityDataSource_formattingManager] = v37;
    v39 = v52;
    v40 = v53;
    *&v4[OBJC_IVAR___WorkoutDetailSwimmingActivityDataSource_workout] = v52;
    *&v4[OBJC_IVAR___WorkoutDetailSwimmingActivityDataSource_workoutActivity] = v40;
    v41 = type metadata accessor for WorkoutDetailSwimmingActivityDataSource();
    v54.receiver = v4;
    v54.super_class = v41;
    v42 = v38;
    v43 = v37;
    v44 = v39;
    v45 = v40;
    v46 = objc_msgSendSuper2(&v54, "init");
    v47 = *((swift_isaMask & *v46) + 0xC0);
    v48 = v46;
    v47();

    return;
  }

LABEL_17:
  __break(1u);
}

uint64_t sub_10022DB5C()
{
  v1 = OBJC_IVAR___CHWorkoutDetailSwimmingSetDataSource__swimmingSets;
  v2 = sub_100140278(&qword_1008E2558);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
}

void sub_10022DD68()
{
  sub_10022DE28();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_10022DE28()
{
  if (!qword_1008E2488)
  {
    sub_100141EEC(&qword_1008E2490);
    v0 = type metadata accessor for Published();
    if (!v1)
    {
      atomic_store(v0, &qword_1008E2488);
    }
  }
}

uint64_t sub_10022DEA0()
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

uint64_t sub_10022DF5C@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for WorkoutDetailSwimmingSetDataSource(0);
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t sub_10022DF9C()
{
  v0 = type metadata accessor for Date();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v21 - v5;
  __chkstk_darwin(v7);
  v9 = &v21 - v8;
  Date.init()();
  Date.addingTimeInterval(_:)();
  v10 = *(v1 + 8);
  v25 = v0;
  v23 = v10;
  v10(v6, v0);
  Date.addingTimeInterval(_:)();
  v24 = v1 + 8;
  v22 = (v1 + 32);
  v11 = 8;
  do
  {
    sub_10022ECDC();
    swift_getKeyPath();
    swift_getKeyPath();
    v12 = static Published.subscript.modify();
    v14 = v13;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((*v14 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v14 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v12(v26, 0);

    Date.addingTimeInterval(_:)();
    v15 = v25;
    v16 = v23;
    v23(v9, v25);
    v17 = *v22;
    (*v22)(v9, v6, v15);
    Date.addingTimeInterval(_:)();
    v16(v3, v15);
    v17(v3, v6, v15);
    --v11;
  }

  while (v11);
  v18 = v25;
  v19 = v23;
  v23(v3, v25);
  return v19(v9, v18);
}

id sub_10022E298(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, "dealloc");
}

unint64_t sub_10022E34C()
{
  result = qword_1008E24D0;
  if (!qword_1008E24D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E24D0);
  }

  return result;
}

uint64_t sub_10022E3A0(uint64_t a1)
{
  result = sub_10022EFD0(&qword_1008E24D8, type metadata accessor for WorkoutDetailSwimmingSetDataSource);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_10022E3F8@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a1 = v3;
  return result;
}

uint64_t sub_10022E478(uint64_t a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  v3 = v2;
  return static Published.subscript.setter();
}

uint64_t sub_10022E4F0@<X0>(uint64_t a1@<X8>)
{
  result = EnvironmentValues.lineLimit.getter();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

unint64_t sub_10022E554(unint64_t result)
{
  if (result >= 4)
  {
    return 4;
  }

  return result;
}

uint64_t sub_10022E564(void *a1)
{
  if ([a1 swolfScore] < 1)
  {
    return 0;
  }

  if (qword_1008DA6E0 != -1)
  {
    swift_once();
  }

  v2 = qword_1008E2400;
  v3 = [objc_allocWithZone(NSNumber) initWithInteger:{objc_msgSend(a1, "swolfScore")}];
  v4 = [v2 stringFromNumber:v3];

  if (!v4)
  {
    return 0;
  }

  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v5;
}

uint64_t sub_10022E658(unint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for DynamicTypeSize();
  v34 = *(v5 - 8);
  v35 = v5;
  __chkstk_darwin(v5);
  v7 = v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100140278(&qword_1008E24E0);
  __chkstk_darwin(v8);
  v10 = v32 - v9;
  v33 = sub_100140278(&qword_1008E24E8);
  __chkstk_darwin(v33);
  v32[1] = v32 - v11;
  v12 = sub_100140278(&qword_1008E24F0);
  __chkstk_darwin(v12);
  v14 = v32 - v13;
  swift_getKeyPath();
  swift_getKeyPath();
  v36 = v2;
  static Published.subscript.getter();

  if ((v37 & 0xC000000000000001) == 0)
  {
    if ((a1 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*((v37 & 0xFFFFFFFFFFFFFF8) + 0x10) > a1)
    {
      v15 = *(v37 + 8 * a1 + 32);
      goto LABEL_5;
    }

    __break(1u);
    goto LABEL_19;
  }

  v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_5:
  v16 = v15;

  if (a2 > 1)
  {
    if (a2 == 2)
    {
      *v10 = static HorizontalAlignment.leading.getter();
      *(v10 + 1) = 0;
      v10[16] = 1;
      v18 = sub_100140278(&qword_1008E2518);
      sub_10022BC94(v16, v36, &v10[*(v18 + 44)]);
      v19 = static Edge.Set.all.getter();
      v20 = &v10[*(v8 + 36)];
      *v20 = v19;
      *(v20 + 8) = xmmword_1006DB530;
      *(v20 + 24) = xmmword_1006DB530;
      v20[40] = 0;
      sub_10022EC24();
LABEL_15:
      v30 = AnyView.init<A>(_:)();

      return v30;
    }

    if (a2 == 3)
    {
      *v14 = static HorizontalAlignment.center.getter();
      *(v14 + 1) = 0;
      v14[16] = 1;
      v27 = sub_100140278(&qword_1008E24F8);
      sub_10022ABF4(v36, v16, &v14[*(v27 + 44)]);
      goto LABEL_14;
    }
  }

  else
  {
    if (!a2)
    {
      *v14 = static HorizontalAlignment.center.getter();
      *(v14 + 1) = 0;
      v14[16] = 1;
      v17 = sub_100140278(&qword_1008E24F8);
      sub_10022A808(a1, &v14[*(v17 + 44)]);
LABEL_14:
      v28 = static Edge.Set.all.getter();
      v29 = &v14[*(v12 + 36)];
      *v29 = v28;
      *(v29 + 8) = xmmword_1006DB530;
      *(v29 + 24) = xmmword_1006DB530;
      v29[40] = 0;
      sub_10022EB6C();
      goto LABEL_15;
    }

    if (a2 == 1)
    {
      *v10 = static HorizontalAlignment.leading.getter();
      *(v10 + 1) = 0;
      v10[16] = 1;
      v21 = sub_100140278(&qword_1008E2518);
      sub_10022AF6C(v16, v36, &v10[*(v21 + 44)]);
      v22 = static Edge.Set.all.getter();
      v23 = &v10[*(v8 + 36)];
      *v23 = v22;
      *(v23 + 8) = xmmword_1006DB530;
      *(v23 + 24) = xmmword_1006DB530;
      v23[40] = 0;
      v25 = v34;
      v24 = v35;
      (*(v34 + 104))(v7, enum case for DynamicTypeSize.large(_:), v35);
      v26 = sub_10022EC24();
      View.dynamicTypeSize(_:)();
      (*(v25 + 8))(v7, v24);
      sub_10000EA04(v10, &qword_1008E24E0);
      v37 = v8;
      v38 = v26;
      swift_getOpaqueTypeConformance2();
      goto LABEL_15;
    }
  }

LABEL_19:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

unint64_t sub_10022EB6C()
{
  result = qword_1008E2500;
  if (!qword_1008E2500)
  {
    sub_100141EEC(&qword_1008E24F0);
    sub_10014A6B0(&qword_1008E2508, &qword_1008E2510);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E2500);
  }

  return result;
}

unint64_t sub_10022EC24()
{
  result = qword_1008E2520;
  if (!qword_1008E2520)
  {
    sub_100141EEC(&qword_1008E24E0);
    sub_10014A6B0(&qword_1008E2528, &qword_1008E2530);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E2520);
  }

  return result;
}

unint64_t sub_10022ECDC()
{
  v0 = type metadata accessor for Date();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = [objc_allocWithZone(CHWorkoutSwimmingSet) init];
  isa = Date._bridgeToObjectiveC()().super.isa;
  [v4 setStartDate:isa];

  sub_100315684(0x20000000000001);
  Date.addingTimeInterval(_:)();
  v6 = Date._bridgeToObjectiveC()().super.isa;
  (*(v1 + 8))(v3, v0);
  [v4 setMovementEndDate:v6];

  v7 = Date._bridgeToObjectiveC()().super.isa;
  [v4 setEndDate:v7];

  [v4 setDominantStrokeStyle:sub_100315684(5) + 1];
  [v4 setStrokeCount:sub_100315684(21) + 10];
  v8 = [objc_opt_self() yardUnit];
  result = sub_1001A99B8(3uLL);
  if (result > 2)
  {
    __break(1u);
  }

  else
  {
    v10 = [objc_opt_self() quantityWithUnit:v8 doubleValue:*(&off_1008425E0 + result + 4)];

    [v4 setDistance:v10];
    [v4 setSwolfScore:sub_100315684(26) + 25];
    return v4;
  }

  return result;
}

uint64_t sub_10022EF60(uint64_t a1, uint64_t a2)
{
  v4 = sub_100140278(&unk_1008EE730);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10022EFD0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t SleepingSampleBaselineRelativeChartPoint.init(date:value:color:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for Date();
  (*(*(v8 - 8) + 32))(a4, a1, v8);
  v9 = type metadata accessor for SleepingSampleBaselineRelativeChartPoint();
  v10 = *(v9 + 20);
  v11 = type metadata accessor for BaselineRelativeValue();
  result = (*(*(v11 - 8) + 32))(a4 + v10, a2, v11);
  *(a4 + *(v9 + 24)) = a3;
  return result;
}

uint64_t type metadata accessor for SleepingSampleBaselineRelativeChartPoint()
{
  result = qword_1008E25C8;
  if (!qword_1008E25C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t SleepingSampleBaselineRelativeChartPoint.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for Date();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t static SleepingSampleBaselineRelativeChartPoint.__derived_struct_equals(_:_:)()
{
  if ((static Date.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for SleepingSampleBaselineRelativeChartPoint();
  if ((static BaselineRelativeValue.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  return static Color.== infix(_:_:)();
}

uint64_t sub_10022F224()
{
  if ((static Date.== infix(_:_:)() & 1) == 0 || (static BaselineRelativeValue.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  return static Color.== infix(_:_:)();
}

unint64_t sub_10022F2A4()
{
  result = qword_1008DEF18;
  if (!qword_1008DEF18)
  {
    type metadata accessor for Date();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008DEF18);
  }

  return result;
}

uint64_t sub_10022F324()
{
  result = type metadata accessor for Date();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for BaselineRelativeValue();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_10022F3B0(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR____TtC10FitnessApp29DayViewTitleAndValueLabelPair_valueLabelText);
  *v3 = a1;
  v3[1] = a2;

  v4 = *(v2 + OBJC_IVAR____TtC10FitnessApp29DayViewTitleAndValueLabelPair_valueLabel);
  [v4 setAttributedText:0];
  if (v3[1])
  {

    v5 = String._bridgeToObjectiveC()();
  }

  else
  {
    v5 = 0;
  }

  [v4 setText:v5];
}

char *sub_10022F474(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = OBJC_IVAR____TtC10FitnessApp29DayViewTitleAndValueLabelPair_titleLabelTextColor;
  v11 = objc_opt_self();
  *&v5[v10] = [v11 labelColor];
  v12 = OBJC_IVAR____TtC10FitnessApp29DayViewTitleAndValueLabelPair_valueLabelTextColor;
  *&v5[v12] = [v11 labelColor];
  v13 = &v5[OBJC_IVAR____TtC10FitnessApp29DayViewTitleAndValueLabelPair_titleText];
  *v13 = 0;
  *(v13 + 1) = 0;
  *&v5[OBJC_IVAR____TtC10FitnessApp29DayViewTitleAndValueLabelPair_valueAttributedText] = 0;
  v14 = &v5[OBJC_IVAR____TtC10FitnessApp29DayViewTitleAndValueLabelPair_valueLabelText];
  *v14 = 0;
  *(v14 + 1) = 0;
  v15 = OBJC_IVAR____TtC10FitnessApp29DayViewTitleAndValueLabelPair_titleLabel;
  v16 = [objc_allocWithZone(UILabel) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  [v16 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v16 setAdjustsFontForContentSizeCategory:1];
  v17 = objc_opt_self();
  v18 = [v17 preferredFontForTextStyle:UIFontTextStyleBody];
  v19 = UILabel.withFont(_:)();

  *&v5[v15] = v19;
  v20 = [objc_allocWithZone(UILabel) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  [v20 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v20 setAdjustsFontForContentSizeCategory:1];
  result = [v17 systemFontOfSize:UIFontSystemFontDesignRounded weight:30.0 design:UIFontWeightMedium];
  if (result)
  {
    v22 = result;
    v23 = OBJC_IVAR____TtC10FitnessApp29DayViewTitleAndValueLabelPair_valueLabel;
    v24 = UILabel.withFont(_:)();

    *&v5[v23] = v24;
    v25 = OBJC_IVAR____TtC10FitnessApp29DayViewTitleAndValueLabelPair_titleBaseline;
    v26 = [v17 preferredFontForTextStyle:UIFontTextStyleBody];
    [v26 _scaledValueForValue:15.0];
    v28 = v27;

    *&v5[v25] = v28;
    *&v5[OBJC_IVAR____TtC10FitnessApp29DayViewTitleAndValueLabelPair_titleBaselineConstraint] = 0;
    if (FIUICurrentLanguageRequiresTallScript())
    {
      v29 = 32.0;
    }

    else
    {
      v30 = [objc_opt_self() sharedApplication];
      v31 = [v30 preferredContentSizeCategory];

      LOBYTE(v30) = UIContentSizeCategory.isAccessibilityCategory.getter();
      v29 = 32.0;
      if ((v30 & 1) == 0)
      {
        v29 = 29.0;
      }
    }

    *&v5[OBJC_IVAR____TtC10FitnessApp29DayViewTitleAndValueLabelPair_valueBaseline] = v29;
    *&v5[OBJC_IVAR____TtC10FitnessApp29DayViewTitleAndValueLabelPair_valueBaselineConstraint] = 0;
    *&v5[OBJC_IVAR____TtC10FitnessApp29DayViewTitleAndValueLabelPair_intrinsicContentSizeBottomPadding] = 0x4030000000000000;
    v38.receiver = v5;
    v38.super_class = type metadata accessor for DayViewTitleAndValueLabelPair();
    v32 = objc_msgSendSuper2(&v38, "initWithFrame:", a1, a2, a3, a4);
    v33 = OBJC_IVAR____TtC10FitnessApp29DayViewTitleAndValueLabelPair_titleLabel;
    v34 = *&v32[OBJC_IVAR____TtC10FitnessApp29DayViewTitleAndValueLabelPair_titleLabel];
    v35 = v32;
    [v35 addSubview:v34];
    v36 = OBJC_IVAR____TtC10FitnessApp29DayViewTitleAndValueLabelPair_valueLabel;
    [v35 addSubview:*&v35[OBJC_IVAR____TtC10FitnessApp29DayViewTitleAndValueLabelPair_valueLabel]];
    [*&v32[v33] setTextColor:*&v35[OBJC_IVAR____TtC10FitnessApp29DayViewTitleAndValueLabelPair_titleLabelTextColor]];
    [*&v35[v36] setTextColor:*&v35[OBJC_IVAR____TtC10FitnessApp29DayViewTitleAndValueLabelPair_valueLabelTextColor]];
    sub_10022F8A8();
    v37 = [objc_opt_self() defaultCenter];
    [v37 addObserver:v35 selector:"updateFonts" name:UIContentSizeCategoryDidChangeNotification object:0];

    return v35;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_10022F8A8()
{
  v1 = *&v0[OBJC_IVAR____TtC10FitnessApp29DayViewTitleAndValueLabelPair_titleLabel];
  v2 = [v1 leadingAnchor];
  v3 = [v0 leadingAnchor];
  v32 = [v2 constraintEqualToAnchor:v3];

  v4 = [v1 trailingAnchor];
  v5 = [v0 trailingAnchor];
  v31 = [v4 constraintEqualToAnchor:v5];

  v6 = [v1 firstBaselineAnchor];
  v7 = [v0 topAnchor];
  v8 = [v6 constraintEqualToAnchor:v7 constant:*&v0[OBJC_IVAR____TtC10FitnessApp29DayViewTitleAndValueLabelPair_titleBaseline]];

  v9 = *&v0[OBJC_IVAR____TtC10FitnessApp29DayViewTitleAndValueLabelPair_titleBaselineConstraint];
  *&v0[OBJC_IVAR____TtC10FitnessApp29DayViewTitleAndValueLabelPair_titleBaselineConstraint] = v8;
  v10 = v8;

  v11 = *&v0[OBJC_IVAR____TtC10FitnessApp29DayViewTitleAndValueLabelPair_valueLabel];
  v12 = [v11 leadingAnchor];
  v13 = [v0 leadingAnchor];
  v14 = [v12 constraintEqualToAnchor:v13];

  v15 = [v11 trailingAnchor];
  v16 = [v0 trailingAnchor];
  v17 = [v15 constraintEqualToAnchor:v16];

  v18 = [v11 firstBaselineAnchor];
  v19 = [v1 firstBaselineAnchor];
  v20 = [v18 constraintEqualToAnchor:v19 constant:*&v0[OBJC_IVAR____TtC10FitnessApp29DayViewTitleAndValueLabelPair_valueBaseline]];

  v21 = *&v0[OBJC_IVAR____TtC10FitnessApp29DayViewTitleAndValueLabelPair_valueBaselineConstraint];
  *&v0[OBJC_IVAR____TtC10FitnessApp29DayViewTitleAndValueLabelPair_valueBaselineConstraint] = v20;
  v22 = v20;

  v23 = objc_opt_self();
  sub_100140278(&unk_1008E4E20);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_1006DF610;
  *(v24 + 32) = v32;
  *(v24 + 40) = v31;
  *(v24 + 48) = v10;
  *(v24 + 56) = v14;
  *(v24 + 64) = v17;
  *(v24 + 72) = v22;
  sub_10019EC5C();
  v25 = v10;
  v26 = v22;
  v27 = v32;
  v28 = v31;
  v29 = v14;
  v30 = v17;
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v23 activateConstraints:isa];
}

id sub_10022FC4C()
{
  v1 = *&v0[OBJC_IVAR____TtC10FitnessApp29DayViewTitleAndValueLabelPair_titleBaselineConstraint];
  if (v1)
  {
    [v1 setConstant:*&v0[OBJC_IVAR____TtC10FitnessApp29DayViewTitleAndValueLabelPair_titleBaseline]];
  }

  v2 = *&v0[OBJC_IVAR____TtC10FitnessApp29DayViewTitleAndValueLabelPair_valueBaselineConstraint];
  if (v2)
  {
    [v2 setConstant:*&v0[OBJC_IVAR____TtC10FitnessApp29DayViewTitleAndValueLabelPair_valueBaseline]];
  }

  [v0 setNeedsLayout];

  return [v0 invalidateIntrinsicContentSize];
}

void sub_10022FD6C()
{
  v0 = [objc_opt_self() mainScreen];
  [v0 bounds];
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;

  v9.origin.x = v2;
  v9.origin.y = v4;
  v9.size.width = v6;
  v9.size.height = v8;
  CGRectGetWidth(v9);
}

id sub_10022FE1C(void *a1)
{
  v2 = v1;
  v3 = OBJC_IVAR____TtC10FitnessApp29DayViewTitleAndValueLabelPair_titleLabelTextColor;
  v4 = objc_opt_self();
  v30 = v3;
  *(v2 + v3) = [v4 labelColor];
  v29 = OBJC_IVAR____TtC10FitnessApp29DayViewTitleAndValueLabelPair_valueLabelTextColor;
  *(v2 + v29) = [v4 labelColor];
  v5 = (v2 + OBJC_IVAR____TtC10FitnessApp29DayViewTitleAndValueLabelPair_titleText);
  *v5 = 0;
  v5[1] = 0;
  v26 = OBJC_IVAR____TtC10FitnessApp29DayViewTitleAndValueLabelPair_valueAttributedText;
  *(v2 + OBJC_IVAR____TtC10FitnessApp29DayViewTitleAndValueLabelPair_valueAttributedText) = 0;
  v6 = (v2 + OBJC_IVAR____TtC10FitnessApp29DayViewTitleAndValueLabelPair_valueLabelText);
  *v6 = 0;
  v6[1] = 0;
  v7 = OBJC_IVAR____TtC10FitnessApp29DayViewTitleAndValueLabelPair_titleLabel;
  v8 = [objc_allocWithZone(UILabel) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  [v8 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v8 setAdjustsFontForContentSizeCategory:1];
  v9 = objc_opt_self();
  v10 = [v9 preferredFontForTextStyle:UIFontTextStyleBody];
  v11 = UILabel.withFont(_:)();

  v27 = v7;
  *(v2 + v7) = v11;
  v12 = [objc_allocWithZone(UILabel) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  [v12 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v12 setAdjustsFontForContentSizeCategory:1];
  result = [v9 systemFontOfSize:UIFontSystemFontDesignRounded weight:30.0 design:UIFontWeightMedium];
  if (result)
  {
    v14 = result;
    v15 = OBJC_IVAR____TtC10FitnessApp29DayViewTitleAndValueLabelPair_valueLabel;
    v16 = UILabel.withFont(_:)();

    *(v2 + v15) = v16;
    v17 = OBJC_IVAR____TtC10FitnessApp29DayViewTitleAndValueLabelPair_titleBaseline;
    v18 = [v9 preferredFontForTextStyle:UIFontTextStyleBody];
    [v18 _scaledValueForValue:15.0];
    v20 = v19;

    *(v2 + v17) = v20;
    v21 = OBJC_IVAR____TtC10FitnessApp29DayViewTitleAndValueLabelPair_titleBaselineConstraint;
    *(v2 + OBJC_IVAR____TtC10FitnessApp29DayViewTitleAndValueLabelPair_titleBaselineConstraint) = 0;
    if (FIUICurrentLanguageRequiresTallScript())
    {

      v22 = 32.0;
    }

    else
    {
      v23 = [objc_opt_self() sharedApplication];
      v24 = [v23 preferredContentSizeCategory];

      LOBYTE(v23) = UIContentSizeCategory.isAccessibilityCategory.getter();
      v22 = 32.0;
      if ((v23 & 1) == 0)
      {
        v22 = 29.0;
      }
    }

    *(v2 + OBJC_IVAR____TtC10FitnessApp29DayViewTitleAndValueLabelPair_valueBaseline) = v22;
    v25 = OBJC_IVAR____TtC10FitnessApp29DayViewTitleAndValueLabelPair_valueBaselineConstraint;
    *(v2 + OBJC_IVAR____TtC10FitnessApp29DayViewTitleAndValueLabelPair_valueBaselineConstraint) = 0;
    *(v2 + OBJC_IVAR____TtC10FitnessApp29DayViewTitleAndValueLabelPair_intrinsicContentSizeBottomPadding) = 0x4030000000000000;

    type metadata accessor for DayViewTitleAndValueLabelPair();
    swift_deallocPartialClassInstance();
    return 0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1002301F0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DayViewTitleAndValueLabelPair();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1002303C0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t sub_1002304BC@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a1 = v3;
  return result;
}

uint64_t sub_10023053C(uint64_t a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  v3 = v2;
  return static Published.subscript.setter();
}

id sub_1002306D4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GoalDaysModel();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for GoalDaysModel()
{
  result = qword_1008E26C0;
  if (!qword_1008E26C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1002307D8()
{
  sub_100230874();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_100230874()
{
  if (!qword_1008E26D0)
  {
    sub_100141EEC(&qword_1008E26D8);
    v0 = type metadata accessor for Published();
    if (!v1)
    {
      atomic_store(v0, &qword_1008E26D0);
    }
  }
}

uint64_t sub_1002308D8@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for GoalDaysModel();
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

id sub_100230918()
{
  result = sub_100230938();
  qword_1008E26E8 = result;
  return result;
}

id sub_100230938()
{
  v0 = sub_100140278(&unk_1008E3FB0);
  __chkstk_darwin(v0 - 8);
  v2 = &v11 - v1;
  v3 = [objc_allocWithZone(NSDateFormatter) init];
  v4 = String._bridgeToObjectiveC()();
  [v3 setLocalizedDateFormatFromTemplate:v4];

  TimeZone.init(secondsFromGMT:)();
  v5 = type metadata accessor for TimeZone();
  v6 = *(v5 - 8);
  isa = 0;
  if ((*(v6 + 48))(v2, 1, v5) != 1)
  {
    isa = TimeZone._bridgeToObjectiveC()().super.isa;
    (*(v6 + 8))(v2, v5);
  }

  [v3 setTimeZone:isa];

  if (qword_1008DA548 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Calendar();
  sub_10001AC90(v8, qword_100925000);
  v9 = Calendar._bridgeToObjectiveC()().super.isa;
  [v3 setCalendar:v9];

  return v3;
}

Swift::Int sub_100230B10()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1 + 1);
  return Hasher._finalize()();
}

Swift::Int sub_100230B88()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1 + 1);
  return Hasher._finalize()();
}

uint64_t sub_100230BCC@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100230C18(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_100230C18(unint64_t a1)
{
  if (a1 >= 8)
  {
    return 7;
  }

  else
  {
    return (0x605040302010007uLL >> (8 * a1));
  }
}

unint64_t sub_100230C54()
{
  result = qword_1008E26F0;
  if (!qword_1008E26F0)
  {
    sub_100141EEC(&qword_1008E26F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E26F0);
  }

  return result;
}

unint64_t sub_100230CBC()
{
  result = qword_1008E2700;
  if (!qword_1008E2700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E2700);
  }

  return result;
}

__n128 sub_100230D10(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 57) = *(a2 + 57);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_100230D34(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 73))
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

uint64_t sub_100230D7C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 72) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 73) = 1;
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

    *(result + 73) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100230DFC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v33 = a1;
  v26 = sub_100140278(&qword_1008E2708);
  v28 = *(v26 - 8);
  __chkstk_darwin(v26);
  v4 = v24 - v3;
  v29 = sub_100140278(&qword_1008E2710);
  v30 = *(v29 - 8);
  __chkstk_darwin(v29);
  v25 = v24 - v5;
  v31 = sub_100140278(&qword_1008E2718);
  v32 = *(v31 - 8);
  __chkstk_darwin(v31);
  v27 = v24 - v6;
  v45 = *v2;
  v36 = v45;
  v7 = swift_allocObject();
  v8 = *(v2 + 48);
  v7[3] = *(v2 + 32);
  v7[4] = v8;
  *(v7 + 73) = *(v2 + 57);
  v9 = *(v2 + 16);
  v7[1] = *v2;
  v7[2] = v9;
  sub_10001B104(&v45, &v40, &qword_1008E2720);
  sub_10014C204(v2, &v40);
  v24[1] = sub_100140278(&qword_1008E2720);
  v24[0] = type metadata accessor for Date();
  sub_100140278(&qword_1008E2728);
  sub_10014A6B0(&qword_1008E2730, &qword_1008E2720);
  v10 = sub_100141EEC(&qword_1008E2738);
  v11 = sub_100141EEC(&qword_1008E2740);
  v40 = type metadata accessor for LineMark();
  *&v41 = &protocol witness table for LineMark;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v13 = sub_10014A6B0(&qword_1008E2748, &qword_1008E2740);
  v40 = v10;
  *&v41 = v11;
  *(&v41 + 1) = OpaqueTypeConformance2;
  *&v42 = v13;
  swift_getOpaqueTypeConformance2();
  sub_10023253C();
  ForEach<>.init(_:content:)();
  StrokeStyle.init(lineWidth:lineCap:lineJoin:miterLimit:dash:dashPhase:)();
  v14 = sub_100232594();
  v15 = v25;
  v16 = v26;
  ChartContent.lineStyle(_:)();
  sub_10021D934(v44);
  (*(v28 + 8))(v4, v16);
  sub_100232308(&v40);
  v36 = v40;
  v37 = v41;
  v38 = v42;
  v39 = v43;
  v17 = sub_100140278(&qword_1008E2760);
  v34 = v16;
  v35 = v14;
  v18 = swift_getOpaqueTypeConformance2();
  v19 = sub_10014A6B0(&qword_1008E2768, &qword_1008E2760);
  v20 = v27;
  v21 = v29;
  ChartContent.foregroundStyle<A>(_:)();

  (*(v30 + 8))(v15, v21);
  v40 = v21;
  *&v41 = v17;
  *(&v41 + 1) = v18;
  *&v42 = v19;
  swift_getOpaqueTypeConformance2();
  v22 = v31;
  ChartContent.interpolationMethod(_:)();
  return (*(v32 + 8))(v20, v22);
}

uint64_t sub_1002313C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v33 = a2;
  v34 = a3;
  v28 = a1;
  v3 = sub_100140278(&qword_1008E1DE8);
  __chkstk_darwin(v3 - 8);
  v30 = &v25 - v4;
  v5 = sub_100140278(&unk_1008E51A0);
  __chkstk_darwin(v5 - 8);
  v7 = &v25 - v6;
  v8 = type metadata accessor for Calendar.Component();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100140278(&qword_1008E1DF0);
  __chkstk_darwin(v12 - 8);
  v27 = type metadata accessor for LineMark();
  v29 = *(v27 - 8);
  __chkstk_darwin(v27);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100140278(&qword_1008E2738);
  v16 = *(v15 - 8);
  v31 = v15;
  v32 = v16;
  __chkstk_darwin(v15);
  v26 = &v25 - v17;
  LocalizedStringKey.init(stringLiteral:)();
  (*(v9 + 104))(v11, enum case for Calendar.Component.day(_:), v8);
  v18 = type metadata accessor for Calendar();
  (*(*(v18 - 8) + 56))(v7, 1, 1, v18);
  v19 = v28;
  static PlottableValue.value<>(_:_:unit:calendar:)();

  sub_10000EA04(v7, &unk_1008E51A0);
  (*(v9 + 8))(v11, v8);
  LocalizedStringKey.init(stringLiteral:)();
  v37 = *(v19 + *(type metadata accessor for SleepingSampleSingleMetricChartPoint() + 20));
  static PlottableValue.value(_:_:)();

  type metadata accessor for Date();
  LineMark.init<A, B>(x:y:)();
  v20 = v33;
  v22 = v26;
  v21 = v27;
  ChartContent.opacity(_:)();
  (*(v29 + 8))(v14, v21);
  v35 = v20;
  v36 = v19;
  sub_100140278(&qword_1008E2740);
  v37 = v21;
  v38 = &protocol witness table for LineMark;
  swift_getOpaqueTypeConformance2();
  sub_10014A6B0(&qword_1008E2748, &qword_1008E2740);
  v23 = v31;
  ChartContent.symbol<A>(symbol:)();
  return (*(v32 + 8))(v22, v23);
}

uint64_t sub_10023193C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  *a3 = static Alignment.center.getter();
  a3[1] = v6;
  v7 = sub_100140278(&qword_1008E2770);
  return sub_10023199C(a1, a2, a3 + *(v7 + 44));
}

uint64_t sub_10023199C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v62 = a3;
  v61 = sub_100140278(&qword_1008E2778);
  __chkstk_darwin(v61);
  v6 = &v57 - v5;
  v58 = sub_100140278(&qword_1008E2780);
  __chkstk_darwin(v58);
  v60 = &v57 - v7;
  v59 = sub_100140278(&qword_1008E2788);
  __chkstk_darwin(v59);
  v9 = (&v57 - v8);
  v10 = sub_100140278(&qword_1008E2790);
  __chkstk_darwin(v10);
  v12 = &v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v57 - v14;
  __chkstk_darwin(v16);
  v18 = &v57 - v17;
  if (sub_1003573D0(a2, *(a1 + 8)))
  {
    v19 = *(a2 + *(type metadata accessor for SleepingSampleSingleMetricChartPoint() + 24));
    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    *&v69[6] = v87;
    *&v69[22] = v88;
    *&v69[38] = v89;

    v20 = Color.opacity(_:)();
    v21 = *(a1 + 64);
    *&v70[0] = v19;
    WORD4(v70[0]) = 256;
    *(v70 + 10) = *v69;
    *(&v70[1] + 10) = *&v69[16];
    *(&v70[2] + 10) = *&v69[32];
    *(&v70[3] + 1) = *&v69[46];
    *&v71 = v20;
    *(&v71 + 1) = v21;
    v72 = 0uLL;
    v22 = static Color.black.getter();
    v23 = *(sub_100140278(&qword_1008E27A0) + 36);
    v24 = enum case for BlendMode.destinationOut(_:);
    v25 = type metadata accessor for BlendMode();
    (*(*(v25 - 8) + 104))(&v18[v23], v24, v25);
    *v18 = v22;
    *(v18 + 4) = 256;
    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    v26 = &v18[*(v10 + 36)];
    v27 = v85[1];
    *v26 = v85[0];
    *(v26 + 1) = v27;
    *(v26 + 2) = v85[2];
    v65 = v70[2];
    v66 = v70[3];
    v67 = v71;
    v68 = v72;
    v63 = v70[0];
    v64 = v70[1];
    sub_10001B104(v18, v15, &qword_1008E2790);
    v28 = v66;
    v75 = v65;
    v76 = v66;
    v29 = v67;
    v30 = v68;
    v77 = v67;
    v78 = v68;
    v31 = v63;
    v32 = v64;
    v73 = v63;
    v74 = v64;
    v9[2] = v65;
    v9[3] = v28;
    v9[4] = v29;
    v9[5] = v30;
    *v9 = v31;
    v9[1] = v32;
    v33 = sub_100140278(&qword_1008E27C8);
    sub_10001B104(v15, v9 + *(v33 + 48), &qword_1008E2790);
    sub_10001B104(v70, &v79, &qword_1008E27D0);
    sub_10001B104(&v73, &v79, &qword_1008E27D0);
    sub_10000EA04(v15, &qword_1008E2790);
    v81 = v65;
    v82 = v66;
    v83 = v67;
    v84 = v68;
    v79 = v63;
    v80 = v64;
    sub_10000EA04(&v79, &qword_1008E27D0);
    sub_10001B104(v9, v60, &qword_1008E2788);
    swift_storeEnumTagMultiPayload();
    sub_10014A6B0(&qword_1008E27B8, &qword_1008E2788);
    sub_10014A6B0(&qword_1008E27C0, &qword_1008E2778);
    v34 = v62;
    _ConditionalContent<>.init(storage:)();
    sub_10000EA04(v70, &qword_1008E27D0);
    sub_10000EA04(v9, &qword_1008E2788);
    sub_10000EA04(v18, &qword_1008E2790);
    v35 = sub_100140278(&qword_1008E2798);
    return (*(*(v35 - 8) + 56))(v34, 0, 1, v35);
  }

  else if (*(a1 + 16))
  {
    v37 = static Color.black.getter();
    v38 = *(sub_100140278(&qword_1008E27A0) + 36);
    v39 = enum case for BlendMode.destinationOut(_:);
    v40 = type metadata accessor for BlendMode();
    (*(*(v40 - 8) + 104))(&v12[v38], v39, v40);
    *v12 = v37;
    *(v12 + 4) = 256;
    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    v41 = &v12[*(v10 + 36)];
    v42 = *&v86[35];
    *v41 = *&v86[27];
    *(v41 + 1) = v42;
    *(v41 + 2) = *&v86[43];
    v43 = *(a2 + *(type metadata accessor for SleepingSampleSingleMetricChartPoint() + 24));
    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    *&v86[19] = v89;
    *&v86[11] = v88;
    *&v86[3] = v87;
    v44 = 0.6;
    if ((*(a1 + 72) & 1) == 0)
    {
      v44 = 1.0;
    }

    *&v70[0] = v43;
    WORD4(v70[0]) = 256;
    *(v70 + 10) = *v86;
    *(&v70[1] + 10) = *&v86[8];
    *(&v70[2] + 10) = *&v86[16];
    *(&v70[3] + 1) = *&v86[23];
    *&v71 = v44;
    sub_10001B104(v12, v18, &qword_1008E2790);
    v65 = v70[2];
    v66 = v70[3];
    *&v67 = v71;
    v63 = v70[0];
    v64 = v70[1];
    sub_10001B104(v18, v6, &qword_1008E2790);
    v45 = &v6[*(sub_100140278(&qword_1008E27A8) + 48)];
    v46 = v67;
    *&v77 = v67;
    v48 = v65;
    v47 = v66;
    v75 = v65;
    v76 = v66;
    v50 = v63;
    v49 = v64;
    v73 = v63;
    v74 = v64;
    *(v45 + 2) = v65;
    *(v45 + 3) = v47;
    *(v45 + 8) = v46;
    *v45 = v50;
    *(v45 + 1) = v49;
    *&v83 = v46;
    v81 = v48;
    v82 = v47;
    v79 = v50;
    v80 = v49;

    sub_10001B104(v70, v85, &qword_1008E27B0);
    sub_10001B104(&v73, v85, &qword_1008E27B0);
    sub_10000EA04(&v79, &qword_1008E27B0);
    sub_10000EA04(v18, &qword_1008E2790);
    sub_10001B104(v6, v60, &qword_1008E2778);
    swift_storeEnumTagMultiPayload();
    sub_10014A6B0(&qword_1008E27B8, &qword_1008E2788);
    sub_10014A6B0(&qword_1008E27C0, &qword_1008E2778);
    v51 = v62;
    _ConditionalContent<>.init(storage:)();
    sub_10000EA04(v70, &qword_1008E27B0);
    sub_10000EA04(v6, &qword_1008E2778);
    sub_10000EA04(v12, &qword_1008E2790);
    v52 = sub_100140278(&qword_1008E2798);
    return (*(*(v52 - 8) + 56))(v51, 0, 1, v52);
  }

  else
  {
    v53 = sub_100140278(&qword_1008E2798);
    v54 = *(*(v53 - 8) + 56);
    v55 = v53;
    v56 = v62;

    return v54(v56, 1, 1, v55);
  }
}

__n128 sub_100232308@<Q0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for SleepingSampleSingleMetricChartPoint();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v1;
  v8 = *(*v1 + 16);
  if (v8)
  {
    v13 = _swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    v9 = v7 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v10 = *(v4 + 72);
    do
    {
      sub_1002326E4(v9, v6);

      sub_100232748(v6);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v9 += v10;
      --v8;
    }

    while (v8);
  }

  static UnitPoint.leading.getter();
  static UnitPoint.trailing.getter();
  Gradient.init(colors:)();
  LinearGradient.init(gradient:startPoint:endPoint:)();
  *a1 = v13;
  result = v15;
  *(a1 + 8) = v14;
  *(a1 + 24) = result;
  *(a1 + 40) = 1053609165;
  return result;
}

unint64_t sub_10023253C()
{
  result = qword_1008E2750;
  if (!qword_1008E2750)
  {
    type metadata accessor for SleepingSampleSingleMetricChartPoint();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E2750);
  }

  return result;
}

unint64_t sub_100232594()
{
  result = qword_1008E2758;
  if (!qword_1008E2758)
  {
    sub_100141EEC(&qword_1008E2708);
    sub_100141EEC(&qword_1008E2738);
    sub_100141EEC(&qword_1008E2740);
    type metadata accessor for LineMark();
    swift_getOpaqueTypeConformance2();
    sub_10014A6B0(&qword_1008E2748, &qword_1008E2740);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E2758);
  }

  return result;
}

uint64_t sub_1002326E4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SleepingSampleSingleMetricChartPoint();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100232748(uint64_t a1)
{
  v2 = type metadata accessor for SleepingSampleSingleMetricChartPoint();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1002327D4()
{
  sub_100232980(319, &qword_1008DC720, &type metadata accessor for DynamicTypeSize, &type metadata accessor for Environment);
  if (v0 <= 0x3F)
  {
    sub_100232980(319, &qword_1008E2840, type metadata accessor for MetricChartData, &type metadata accessor for Array);
    if (v1 <= 0x3F)
    {
      type metadata accessor for MetricFormattingHelper();
      if (v2 <= 0x3F)
      {
        sub_10005C818();
        if (v3 <= 0x3F)
        {
          type metadata accessor for Date();
          if (v4 <= 0x3F)
          {
            type metadata accessor for Calendar.Component();
            if (v5 <= 0x3F)
            {
              type metadata accessor for Date.FormatStyle();
              if (v6 <= 0x3F)
              {
                sub_1002329E4();
                if (v7 <= 0x3F)
                {
                  type metadata accessor for AxisMarkValues();
                  if (v8 <= 0x3F)
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

void sub_100232980(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

unint64_t sub_1002329E4()
{
  result = qword_1008E2848;
  if (!qword_1008E2848)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1008E2848);
  }

  return result;
}

uint64_t sub_100232A4C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for DynamicTypeSize();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100140278(&qword_1008E1DE8);
  v11 = __chkstk_darwin(v10 - 8);
  v65 = (&v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v11);
  v64 = &v60 - v13;
  v14 = sub_100140278(&unk_1008E51A0);
  __chkstk_darwin(v14 - 8);
  v16 = &v60 - v15;
  v17 = sub_100140278(&qword_1008E1DF0);
  __chkstk_darwin(v17 - 8);
  v63 = &v60 - v18;
  v69 = type metadata accessor for RuleMark();
  v67 = *(v69 - 8);
  __chkstk_darwin(v69);
  v66 = &v60 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = sub_100140278(&qword_1008E28F0);
  v70 = *(v74 - 8);
  __chkstk_darwin(v74);
  v68 = &v60 - v20;
  v75 = sub_100140278(&qword_1008E28E8);
  v73 = *(v75 - 8);
  __chkstk_darwin(v75);
  v72 = &v60 - v21;
  v22 = sub_100140278(&qword_1008E29C8);
  v23 = *(v22 - 8);
  v77 = v22;
  v78 = v23;
  __chkstk_darwin(v22);
  v71 = &v60 - v24;
  [*(a1 + *(type metadata accessor for MetricChartData() + 24)) doubleValueForUnit:*a1];
  v26 = v25;
  v27 = type metadata accessor for MetricCardBarChartView();
  sub_1004D41D4(*(a2 + *(v27 + 20)), v26);
  if (v28 == 0.0)
  {
    v29 = v77;
    v30 = *(v78 + 56);

    return v30(a3, 1, 1, v29);
  }

  else
  {
    v32 = v28;
    LocalizedStringKey.init(stringLiteral:)();
    v61 = a3;
    v76 = v7;
    v62 = v6;
    v60 = v9;
    v33 = type metadata accessor for Calendar();
    (*(*(v33 - 8) + 56))(v16, 1, 1, v33);
    static PlottableValue.value<>(_:_:unit:calendar:)();

    sub_10000EA04(v16, &unk_1008E51A0);
    LocalizedStringKey.init(stringLiteral:)();
    v84[0] = 0.0;
    static PlottableValue.value(_:_:)();

    LocalizedStringKey.init(stringLiteral:)();
    v84[0] = v32;
    static PlottableValue.value(_:_:)();

    type metadata accessor for Date();
    v34 = v66;
    RuleMark.init<A, B>(x:yStart:yEnd:)();
    v35 = (a2 + *(v27 + 40));
    v36 = v35[3];
    v37 = v35[4];
    sub_1000066AC(v35, v36);
    v38 = (*(v37 + 16))(v36, v37);
    v40 = v39;
    v42 = v41;
    v43 = v60;
    sub_10005491C(v60);
    sub_10001DEC8(v43, v38, v40, v42);
    sub_10001D4F8(v38, v40, v42);
    v44 = *(v76 + 8);
    v76 += 8;
    v65 = v44;
    v44(v43, v62);
    StrokeStyle.init(lineWidth:lineCap:lineJoin:miterLimit:dash:dashPhase:)();
    v45 = v68;
    v46 = v69;
    ChartContent.lineStyle(_:)();
    sub_10021D934(v84);
    (*(v67 + 8))(v34, v46);
    v83 = Color.gradient.getter();
    v79 = v46;
    v80 = &protocol witness table for RuleMark;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v48 = v72;
    v49 = v74;
    ChartContent.foregroundStyle<A>(_:)();

    (*(v70 + 8))(v45, v49);
    v50 = v35[3];
    v51 = v35[4];
    sub_1000066AC(v35, v50);
    v52 = (*(v51 + 16))(v50, v51);
    v54 = v53;
    LOBYTE(v51) = v55;
    sub_10005491C(v43);
    sub_10001DEC8(v43, v52, v54, v51);
    sub_10001D4F8(v52, v54, v51);
    v65(v43, v62);
    v79 = v49;
    v80 = &type metadata for AnyGradient;
    v81 = OpaqueTypeConformance2;
    v82 = &protocol witness table for AnyGradient;
    swift_getOpaqueTypeConformance2();
    v56 = v71;
    v57 = v75;
    ChartContent.offset(x:y:)();
    (*(v73 + 8))(v48, v57);
    v58 = v77;
    v59 = v61;
    (*(v78 + 32))(v61, v56, v77);
    return (*(v78 + 56))(v59, 0, 1, v58);
  }
}

void sub_100233410(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  [*(a1 + *(type metadata accessor for MetricChartData() + 24)) doubleValueForUnit:*a1];
  v6 = v5;
  v7 = type metadata accessor for MetricCardBarChartView();
  sub_1004D41D4(*(a2 + *(v7 + 20)), v6);
  *a3 = v8;
}

unint64_t sub_100233498()
{
  result = qword_1008E28D0;
  if (!qword_1008E28D0)
  {
    sub_100141EEC(&qword_1008E28C8);
    sub_1000622E8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E28D0);
  }

  return result;
}

unint64_t sub_10023353C()
{
  result = qword_1008E2908;
  if (!qword_1008E2908)
  {
    sub_100141EEC(&qword_1008E2900);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E2908);
  }

  return result;
}

unint64_t sub_1002335B8()
{
  result = qword_1008E1D08;
  if (!qword_1008E1D08)
  {
    sub_100141EEC(&qword_1008E1D00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E1D08);
  }

  return result;
}

unint64_t sub_100233634()
{
  result = qword_1008E2968;
  if (!qword_1008E2968)
  {
    sub_100141EEC(&qword_1008E2960);
    sub_100069CA8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E2968);
  }

  return result;
}

unint64_t sub_1002336B8()
{
  result = qword_1008E2990;
  if (!qword_1008E2990)
  {
    sub_100141EEC(&qword_1008E2998);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E2990);
  }

  return result;
}

unint64_t sub_10023374C()
{
  result = qword_1008E29D0;
  if (!qword_1008E29D0)
  {
    sub_100141EEC(&qword_1008E2950);
    sub_100141EEC(&qword_1008E28B8);
    sub_100141EEC(&qword_1008E2910);
    sub_100141EEC(&qword_1008E28B0);
    sub_100141EEC(&qword_1008E1D00);
    sub_100141EEC(&qword_1008E28A8);
    sub_100141EEC(&qword_1008E2900);
    sub_100141EEC(&qword_1008E28A0);
    sub_10014A6B0(&qword_1008E28F8, &qword_1008E28A0);
    swift_getOpaqueTypeConformance2();
    sub_10023353C();
    swift_getOpaqueTypeConformance2();
    sub_1002335B8();
    swift_getOpaqueTypeConformance2();
    sub_10006468C();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E29D0);
  }

  return result;
}

uint64_t type metadata accessor for ScheduleDayRowView()
{
  result = qword_1008E2A30;
  if (!qword_1008E2A30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100233A08()
{
  type metadata accessor for Calendar();
  if (v0 <= 0x3F)
  {
    sub_1000059F8(319, &qword_1008F24B0);
    if (v1 <= 0x3F)
    {
      sub_10022703C();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

id sub_100233AD8@<X0>(uint64_t a1@<X8>)
{
  v121 = a1;
  v2 = type metadata accessor for ScheduleDayRowView();
  v3 = *(v2 - 1);
  OpaqueTypeConformance2 = v3[8];
  __chkstk_darwin(v2);
  v5 = &v109 - ((OpaqueTypeConformance2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for AttributedString();
  __chkstk_darwin(v6 - 8);
  v119 = &v109 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for AccessibilityChildBehavior();
  v133 = *(v8 - 8);
  v134 = v8;
  __chkstk_darwin(v8);
  v129 = &v109 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100140278(&qword_1008E2A70);
  __chkstk_darwin(v10 - 8);
  v12 = &v109 - v11;
  v122 = sub_100140278(&qword_1008E2A78);
  __chkstk_darwin(v122);
  v124 = &v109 - v13;
  v123 = sub_100140278(&qword_1008E2A80);
  __chkstk_darwin(v123);
  v125 = &v109 - v14;
  v127 = sub_100140278(&qword_1008E2A88);
  __chkstk_darwin(v127);
  v126 = &v109 - v15;
  v132 = sub_100140278(&qword_1008E2A90);
  v130 = *(v132 - 8);
  __chkstk_darwin(v132);
  v128 = &v109 - v16;
  v17 = sub_100140278(&qword_1008E2A98);
  v114 = *(v17 - 8);
  v115 = v17;
  __chkstk_darwin(v17);
  v131 = &v109 - v18;
  v118 = sub_100140278(&qword_1008E2AA0);
  __chkstk_darwin(v118);
  v116 = &v109 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v117 = &v109 - v21;
  v22 = v2[6];
  v23 = *(v1 + v2[7] + 8);
  v136 = v1;
  v24 = *(v1 + v22);
  swift_getKeyPath();
  swift_getKeyPath();
  v135 = v23;
  static Published.subscript.getter();

  v120 = v3;
  if ((v147 & 0xC000000000000001) != 0)
  {
    v25 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if ((v24 & 0x8000000000000000) != 0)
    {
      __break(1u);
      goto LABEL_34;
    }

    if (v24 >= *((v147 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_36;
    }

    v25 = *(v147 + 8 * v24 + 32);
  }

  v26 = v25;

  v3 = *&v26[OBJC_IVAR____TtC10FitnessApp7GoalDay_goal];

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v112 = OpaqueTypeConformance2;
  v113 = v24;
  if ((v147 & 0xC000000000000001) == 0)
  {
    if ((v24 & 0x8000000000000000) == 0)
    {
      if (v24 < *((v147 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v27 = *(v147 + 8 * v24 + 32);
        goto LABEL_9;
      }

LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

LABEL_34:
  v27 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_9:
  v28 = v27;

  v29 = *&v28[OBJC_IVAR____TtC10FitnessApp7GoalDay_goalType];

  result = [*(v136 + v2[5]) unitManager];
  if (!result)
  {
    goto LABEL_44;
  }

  v31 = result;
  v32 = [result unitManager];

  if ((v29 - 1) < 2)
  {
    OpaqueTypeConformance2 = &selRef_minuteUnit;
    goto LABEL_14;
  }

  if (v29)
  {
    OpaqueTypeConformance2 = &selRef_countUnit;
LABEL_14:
    v33 = objc_opt_self();
    goto LABEL_16;
  }

  OpaqueTypeConformance2 = &selRef_userActiveEnergyBurnedUnit;
  v33 = v32;
LABEL_16:
  v34 = [v33 *OpaqueTypeConformance2];

  [v3 doubleValueForUnit:v34];
  v36 = v35;

  v37 = floor(v36);
  if ((*&v37 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  if (v37 <= -9.22337204e18)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  if (v37 >= 9.22337204e18)
  {
LABEL_40:
    __break(1u);
LABEL_41:
    v84 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_31;
  }

  v110 = v5;
  v38 = v37;
  v39 = v136;
  v40 = sub_100234914();
  *v12 = static VerticalAlignment.center.getter();
  *(v12 + 1) = 0;
  v12[16] = 1;
  v41 = &v12[*(sub_100140278(&qword_1008E2AA8) + 44)];
  v109 = v38;
  sub_100234BDC(v39, v38, v40, v41);
  sub_100140278(&qword_1008E0700);
  inited = swift_initStackObject();
  v111 = xmmword_1006D1F70;
  *(inited + 16) = xmmword_1006D1F70;
  v43 = static Edge.Set.leading.getter();
  *(inited + 32) = v43;
  v44 = static Edge.Set.trailing.getter();
  *(inited + 33) = v44;
  v45 = Edge.Set.init(rawValue:)();
  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v43)
  {
    v45 = Edge.Set.init(rawValue:)();
  }

  Edge.Set.init(rawValue:)();
  v46 = Edge.Set.init(rawValue:)();
  v47 = v124;
  if (v46 != v44)
  {
    v45 = Edge.Set.init(rawValue:)();
  }

  EdgeInsets.init(_all:)();
  v49 = v48;
  v51 = v50;
  v53 = v52;
  v55 = v54;
  sub_100015E80(v12, v47, &qword_1008E2A70);
  v56 = v47 + *(v122 + 36);
  *v56 = v45;
  *(v56 + 8) = v49;
  *(v56 + 16) = v51;
  *(v56 + 24) = v53;
  *(v56 + 32) = v55;
  *(v56 + 40) = 0;
  v57 = swift_initStackObject();
  *(v57 + 16) = v111;
  v58 = static Edge.Set.top.getter();
  *(v57 + 32) = v58;
  v59 = static Edge.Set.bottom.getter();
  *(v57 + 33) = v59;
  v60 = Edge.Set.init(rawValue:)();
  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v58)
  {
    v60 = Edge.Set.init(rawValue:)();
  }

  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v59)
  {
    v60 = Edge.Set.init(rawValue:)();
  }

  EdgeInsets.init(_all:)();
  v62 = v61;
  v64 = v63;
  v66 = v65;
  v68 = v67;
  v69 = v47;
  v70 = v125;
  sub_100015E80(v69, v125, &qword_1008E2A78);
  v71 = v70 + *(v123 + 36);
  *v71 = v60;
  *(v71 + 8) = v62;
  *(v71 + 16) = v64;
  *(v71 + 24) = v66;
  *(v71 + 32) = v68;
  *(v71 + 40) = 0;
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v72 = v126;
  sub_100015E80(v70, v126, &qword_1008E2A80);
  v73 = v127;
  v74 = (v72 + *(v127 + 36));
  v75 = v152;
  v74[4] = v151;
  v74[5] = v75;
  v74[6] = v153;
  v76 = v148;
  *v74 = v147;
  v74[1] = v76;
  v77 = v150;
  v74[2] = v149;
  v74[3] = v77;
  Solarium.init()();
  v78 = sub_100140278(&qword_1008E2AB0);
  v79 = sub_100140278(&qword_1008E2AB8);
  v80 = sub_1002390E0();
  v81 = sub_1002392B0();
  v108 = sub_100239368();
  v82 = v128;
  View.staticIf<A, B, C>(_:then:else:)();
  sub_10000EA04(v72, &qword_1008E2A88);
  v83 = v129;
  static AccessibilityChildBehavior.ignore.getter();
  v139 = v73;
  v140 = &type metadata for Solarium;
  v141 = v78;
  v142 = v79;
  v143 = v80;
  v144 = &protocol witness table for Solarium;
  v145 = v81;
  v146 = v108;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v12 = v131;
  v5 = v132;
  View.accessibilityElement(children:)();
  (*(v133 + 8))(v83, v134);
  (*(v130 + 8))(v82, v5);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if ((v139 & 0xC000000000000001) != 0)
  {
    goto LABEL_41;
  }

  if ((v113 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v113 < *((v139 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v84 = *(v139 + 8 * v113 + 32);
LABEL_31:
    v85 = v84;

    v86 = v136;
    v87 = sub_1003D876C(v85);
    v89 = v88;

    v139 = v87;
    v140 = v89;
    v137 = v5;
    v138 = OpaqueTypeConformance2;
    swift_getOpaqueTypeConformance2();
    sub_10000FCBC();
    v90 = v115;
    v91 = v116;
    View.accessibilityLabel<A>(_:)();

    (*(v114 + 8))(v12, v90);
    sub_100140278(&unk_1008E4E50);
    v92 = swift_allocObject();
    *(v92 + 16) = xmmword_1006D46C0;
    *(v92 + 56) = &type metadata for Int;
    *(v92 + 64) = &protocol witness table for Int;
    *(v92 + 32) = v109;
    v93 = static String.localizedStringWithFormat(_:_:)();
    v95 = v94;

    v139 = sub_100237904();
    v140 = v96;
    v97 = StringProtocol.localizedUppercase.getter();
    v99 = v98;

    sub_100237B08(v93, v95, v97, v99, v119);

    v100 = Text.init(_:)();
    v102 = v101;
    LOBYTE(v93) = v103;
    v104 = v117;
    ModifiedContent<>.accessibilityValue(_:)();
    sub_10004642C(v100, v102, v93 & 1);

    sub_10000EA04(v91, &qword_1008E2AA0);
    v105 = v110;
    sub_100239420(v86, v110);
    v106 = (*(v120 + 80) + 16) & ~*(v120 + 80);
    v107 = swift_allocObject();
    sub_1002394F4(v105, v107 + v106, type metadata accessor for ScheduleDayRowView);
    ModifiedContent<>.accessibilityAdjustableAction(_:)();

    return sub_10000EA04(v104, &qword_1008E2AA0);
  }

  __break(1u);
LABEL_44:
  __break(1u);
  return result;
}

uint64_t sub_100234914()
{
  v2 = type metadata accessor for ScheduleDayRowView();
  v3 = *(v0 + v2[6]);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if ((v16 & 0xC000000000000001) == 0)
  {
    if ((v3 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v3 < *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v4 = *(v16 + 8 * v3 + 32);
      goto LABEL_5;
    }

    __break(1u);
LABEL_22:
    v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();

    v13 = *(v14 + *v1);
    swift_unknownObjectRelease();
    if (v13 <= 1)
    {
      if (v13)
      {
LABEL_17:
        if (v13 == 1)
        {

          return 1000;
        }

LABEL_29:

        return 90;
      }

      goto LABEL_24;
    }

LABEL_27:
    if (v13 == 3)
    {

      return 16;
    }

    goto LABEL_29;
  }

  v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_5:
  v5 = v4;

  v1 = &OBJC_IVAR____TtC10FitnessApp7GoalDay_goalType;
  v6 = *&v5[OBJC_IVAR____TtC10FitnessApp7GoalDay_goalType];

  result = [*(v0 + v2[5]) unitManager];
  if (!result)
  {
LABEL_32:
    __break(1u);
    return result;
  }

  v8 = result;
  v9 = [result unitManager];

  if ((v6 - 1) < 2)
  {
    v10 = &selRef_minuteUnit;
    goto LABEL_10;
  }

  if (v6)
  {
    v10 = &selRef_countUnit;
LABEL_10:
    v11 = objc_opt_self();
    goto LABEL_12;
  }

  v10 = &selRef_userActiveEnergyBurnedUnit;
  v11 = v9;
LABEL_12:
  v2 = [v11 *v10];

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if ((v16 & 0xC000000000000001) != 0)
  {
    goto LABEL_22;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_31;
  }

  if (v3 >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v12 = *(v16 + 8 * v3 + 32);

  v13 = *&v12[OBJC_IVAR____TtC10FitnessApp7GoalDay_goalType];

  if (v13 > 1)
  {
    goto LABEL_27;
  }

  if (v13)
  {
    goto LABEL_17;
  }

LABEL_24:
  IsCalorieUnit = FIUIHKUnitIsCalorieUnit();

  if (IsCalorieUnit)
  {
    return 9990;
  }

  else
  {
    return 39980;
  }
}

uint64_t sub_100234BDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v101 = a3;
  v100 = a2;
  v107 = a4;
  v5 = sub_100140278(&qword_1008E2B30);
  __chkstk_darwin(v5 - 8);
  v103 = &v87[-v6];
  v102 = sub_100140278(&qword_1008E2B38);
  __chkstk_darwin(v102);
  v8 = &v87[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v9);
  v11 = &v87[-v10];
  __chkstk_darwin(v12);
  v14 = &v87[-v13];
  v96 = sub_100140278(&qword_1008E2B40);
  __chkstk_darwin(v96);
  v95 = &v87[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v16);
  v92 = &v87[-v17];
  v18 = type metadata accessor for DynamicTypeSize();
  v110 = *(v18 - 8);
  __chkstk_darwin(v18);
  v109 = &v87[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v20);
  v108 = &v87[-v21];
  v94 = sub_100140278(&qword_1008E2B48);
  __chkstk_darwin(v94);
  v93 = &v87[-v22];
  v23 = sub_100140278(&qword_1008DC448);
  __chkstk_darwin(v23 - 8);
  v25 = &v87[-v24];
  v99 = sub_100140278(&qword_1008E2B50);
  v98 = *(v99 - 8);
  __chkstk_darwin(v99);
  v97 = &v87[-((v26 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v27);
  v111 = &v87[-v28];
  v29 = a1;
  v30 = *(a1 + *(type metadata accessor for ScheduleDayRowView() + 24));
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v106 = v8;
  v105 = v14;
  v104 = v11;
  if ((v112 & 0xC000000000000001) != 0)
  {
    v32 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_5:
    v33 = v32;

    v91 = v29;
    v34 = sub_1003D876C(v33);
    v36 = v35;

    *&v112 = v34;
    *(&v112 + 1) = v36;
    sub_10000FCBC();
    v37 = Text.init<A>(_:)();
    v39 = v38;
    v41 = v40;
    v42 = enum case for Font.Design.rounded(_:);
    v43 = type metadata accessor for Font.Design();
    v44 = *(v43 - 8);
    (*(v44 + 104))(v25, v42, v43);
    (*(v44 + 56))(v25, 0, 1, v43);
    v45 = Text.fontDesign(_:)();
    v47 = v46;
    v49 = v48;
    sub_10004642C(v37, v39, v41 & 1);

    sub_10000EA04(v25, &qword_1008DC448);
    static Font.body.getter();
    v50 = Text.font(_:)();
    v52 = v51;
    LOBYTE(v39) = v53;
    v55 = v54;

    sub_10004642C(v45, v47, v49 & 1);

    v90 = v50;
    *&v112 = v50;
    *(&v112 + 1) = v52;
    v89 = v52;
    v56 = v39 & 1;
    LOBYTE(v113) = v56;
    *(&v113 + 1) = v55;
    v57 = v110;
    v58 = *(v110 + 104);
    v59 = v108;
    v58(v108, enum case for DynamicTypeSize.xSmall(_:), v18);
    v60 = v109;
    v58(v109, enum case for DynamicTypeSize.xLarge(_:), v18);
    sub_100239A3C(&qword_1008DC898, &type metadata accessor for DynamicTypeSize);
    result = dispatch thunk of static Comparable.<= infix(_:_:)();
    if (result)
    {
      v61 = *(v57 + 32);
      v88 = v56;
      v62 = v92;
      v61(v92, v59, v18);
      v63 = v96;
      v61((v62 + *(v96 + 48)), v60, v18);
      v109 = v55;
      v64 = v95;
      sub_10023955C(v62, v95);
      v65 = *(v63 + 48);
      v66 = v93;
      v61(v93, v64, v18);
      v67 = *(v57 + 8);
      v67(&v64[v65], v18);
      sub_100015E80(v62, v64, &qword_1008E2B40);
      v61((v66 + *(v94 + 36)), &v64[*(v63 + 48)], v18);
      v67(v64, v18);
      sub_10014A6B0(&qword_1008E2B58, &qword_1008E2B48);
      v68 = v111;
      View.dynamicTypeSize<A>(_:)();
      sub_10000EA04(v66, &qword_1008E2B48);
      sub_10004642C(v90, v89, v88);

      v69 = static VerticalAlignment.center.getter();
      v70 = v103;
      *v103 = v69;
      *(v70 + 8) = 0;
      *(v70 + 16) = 1;
      v71 = sub_100140278(&qword_1008E2B60);
      sub_100235674(v91, v100, v101, v70 + *(v71 + 44));
      static Alignment.trailing.getter();
      _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
      v72 = v104;
      sub_100015E80(v70, v104, &qword_1008E2B30);
      v73 = (v72 + *(v102 + 36));
      v74 = v117;
      v73[4] = v116;
      v73[5] = v74;
      v73[6] = v118;
      v75 = v113;
      *v73 = v112;
      v73[1] = v75;
      v76 = v115;
      v73[2] = v114;
      v73[3] = v76;
      v77 = v105;
      sub_100015E80(v72, v105, &qword_1008E2B38);
      v78 = v98;
      v79 = *(v98 + 16);
      v80 = v97;
      v81 = v99;
      v79(v97, v68, v99);
      v82 = v106;
      sub_10001B104(v77, v106, &qword_1008E2B38);
      v83 = v107;
      v79(v107, v80, v81);
      v84 = sub_100140278(&qword_1008E2B68);
      v85 = &v83[*(v84 + 48)];
      *v85 = 0;
      v85[8] = 1;
      sub_10001B104(v82, &v83[*(v84 + 64)], &qword_1008E2B38);
      sub_10000EA04(v77, &qword_1008E2B38);
      v86 = *(v78 + 8);
      v86(v111, v81);
      sub_10000EA04(v82, &qword_1008E2B38);
      return (v86)(v80, v81);
    }

    goto LABEL_9;
  }

  if ((v30 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (v30 < *((v112 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v32 = *(v112 + 8 * v30 + 32);
    goto LABEL_5;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_100235674@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v123 = a3;
  v129 = a2;
  v115 = a4;
  v5 = sub_100140278(&qword_1008E2B70);
  __chkstk_darwin(v5 - 8);
  v116 = &v107 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v128 = (&v107 - v8);
  v9 = type metadata accessor for ScheduleDayRowView();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v12 = sub_100140278(&qword_1008E2B78);
  __chkstk_darwin(v12);
  v124 = (&v107 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v14);
  v16 = (&v107 - v15);
  v17 = sub_100140278(&qword_1008E2B80);
  __chkstk_darwin(v17);
  v110 = &v107 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v107 - v20;
  v126 = sub_100140278(&qword_1008E2B88);
  __chkstk_darwin(v126);
  v111 = &v107 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v117 = &v107 - v24;
  v25 = sub_100140278(&qword_1008E2B90);
  __chkstk_darwin(v25 - 8);
  v113 = &v107 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v114 = &v107 - v28;
  __chkstk_darwin(v29);
  v112 = &v107 - v30;
  __chkstk_darwin(v31);
  v127 = &v107 - v32;
  sub_100239420(a1, &v107 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v33 = *(v10 + 80);
  v34 = (v33 + 16) & ~v33;
  v121 = v11;
  v119 = v33;
  v35 = swift_allocObject();
  v120 = v34;
  v36 = v35 + v34;
  v37 = a1;
  v122 = &v107 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1002394F4(v122, v36, type metadata accessor for ScheduleDayRowView);
  v38 = v12[10];
  v130 = 0;
  v39 = sub_100140278(&qword_1008E2B98);
  State.init(wrappedValue:)();
  *(v16 + v38) = v131;
  v40 = v12[11];
  v130 = 1;
  State.init(wrappedValue:)();
  *(v16 + v40) = v131;
  *v16 = sub_1002395CC;
  v16[1] = v35;
  sub_100236618(v16 + v12[9]);
  v41 = sub_100236A10();
  v125 = v17;
  v107 = v9;
  v118 = v39;
  if (v41 == v129)
  {
    v42 = static Color.gray.getter();
  }

  else
  {
    v43 = *(a1 + *(v9 + 24));
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    if ((v131 & 0xC000000000000001) != 0)
    {
      v45 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if ((v43 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_20:
        __break(1u);
        goto LABEL_21;
      }

      if (v43 >= *((v131 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_21:
        __break(1u);
        goto LABEL_22;
      }

      v45 = *(v131 + 8 * v43 + 32);
    }

    v46 = v45;

    v47 = *&v46[OBJC_IVAR____TtC10FitnessApp7GoalDay_goalType];

    sub_100349310(v47);
    v42 = v48;
    v17 = v125;
  }

  KeyPath = swift_getKeyPath();
  *&v131 = v42;
  v50 = AnyShapeStyle.init<A>(_:)();
  sub_100015E80(v16, v21, &qword_1008E2B78);
  v51 = &v21[*(v17 + 36)];
  *v51 = KeyPath;
  v51[1] = v50;
  v52 = sub_100236A10();
  v53 = v129;
  v54 = v52 == v129;
  v55 = swift_getKeyPath();
  v56 = swift_allocObject();
  *(v56 + 16) = v54;
  v57 = v117;
  sub_100015E80(v21, v117, &qword_1008E2B80);
  v58 = (v57 + *(v126 + 36));
  *v58 = v55;
  v58[1] = sub_1000526D4;
  v58[2] = v56;
  sub_1000059F8(0, &qword_1008DC998);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v108 = objc_opt_self();
  v109 = ObjCClassFromMetadata;
  v60 = [v108 bundleForClass:ObjCClassFromMetadata];
  v61 = String._bridgeToObjectiveC()();
  v62 = String._bridgeToObjectiveC()();
  v63 = [v60 localizedStringForKey:v61 value:0 table:v62];

  v64 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v66 = v65;

  *&v131 = v64;
  *(&v131 + 1) = v66;
  sub_1002395D4();
  sub_10000FCBC();
  View.accessibilityLabel<A>(_:)();

  sub_10000EA04(v57, &qword_1008E2B88);
  v67 = static Alignment.center.getter();
  v68 = v128;
  *v128 = v67;
  *(v68 + 1) = v69;
  v70 = sub_100140278(&qword_1008E2BD8);
  sub_100236CD8(v53, v123, &v68[*(v70 + 44)]);
  v71 = v122;
  sub_100239420(v37, v122);
  v72 = v37;
  v73 = v120;
  v74 = swift_allocObject();
  sub_1002394F4(v71, v74 + v73, type metadata accessor for ScheduleDayRowView);
  v75 = v12[10];
  v130 = 0;
  State.init(wrappedValue:)();
  v76 = v124;
  *(v124 + v75) = v131;
  v77 = v12[11];
  v130 = 1;
  State.init(wrappedValue:)();
  *(v76 + v77) = v131;
  *v76 = sub_100239770;
  v76[1] = v74;
  sub_1002370D4(v76 + v12[9]);
  if (sub_100234914() == v53)
  {
    v78 = static Color.gray.getter();
    v79 = v125;
LABEL_16:
    v84 = swift_getKeyPath();
    *&v131 = v78;
    v85 = AnyShapeStyle.init<A>(_:)();
    v86 = v110;
    sub_100015E80(v76, v110, &qword_1008E2B78);
    v87 = (v86 + *(v79 + 36));
    *v87 = v84;
    v87[1] = v85;
    LOBYTE(v84) = sub_100234914() == v129;
    v88 = swift_getKeyPath();
    v89 = swift_allocObject();
    *(v89 + 16) = v84;
    v90 = v111;
    sub_100015E80(v86, v111, &qword_1008E2B80);
    v91 = (v90 + *(v126 + 36));
    *v91 = v88;
    v91[1] = sub_100239A84;
    v91[2] = v89;
    v92 = [v108 bundleForClass:v109];
    v93 = String._bridgeToObjectiveC()();
    v94 = String._bridgeToObjectiveC()();
    v95 = [v92 localizedStringForKey:v93 value:0 table:v94];

    v96 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v98 = v97;

    *&v131 = v96;
    *(&v131 + 1) = v98;
    v99 = v112;
    View.accessibilityLabel<A>(_:)();

    sub_10000EA04(v90, &qword_1008E2B88);
    v100 = v127;
    v101 = v114;
    sub_10001B104(v127, v114, &qword_1008E2B90);
    v102 = v128;
    v103 = v116;
    sub_10001B104(v128, v116, &qword_1008E2B70);
    v104 = v113;
    sub_10001B104(v99, v113, &qword_1008E2B90);
    v105 = v115;
    sub_10001B104(v101, v115, &qword_1008E2B90);
    v106 = sub_100140278(&qword_1008E2BE0);
    sub_10001B104(v103, v105 + *(v106 + 48), &qword_1008E2B70);
    sub_10001B104(v104, v105 + *(v106 + 64), &qword_1008E2B90);
    sub_10000EA04(v99, &qword_1008E2B90);
    sub_10000EA04(v102, &qword_1008E2B70);
    sub_10000EA04(v100, &qword_1008E2B90);
    sub_10000EA04(v104, &qword_1008E2B90);
    sub_10000EA04(v103, &qword_1008E2B70);
    return sub_10000EA04(v101, &qword_1008E2B90);
  }

  v80 = *(v72 + *(v107 + 24));
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if ((v131 & 0xC000000000000001) != 0)
  {
    v81 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    v79 = v125;
    goto LABEL_15;
  }

  v79 = v125;
  if ((v80 & 0x8000000000000000) != 0)
  {
    goto LABEL_20;
  }

  if (v80 < *((v131 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v81 = *(v131 + 8 * v80 + 32);
LABEL_15:

    v82 = *&v81[OBJC_IVAR____TtC10FitnessApp7GoalDay_goalType];

    sub_100349310(v82);
    v78 = v83;
    goto LABEL_16;
  }

LABEL_22:
  __break(1u);
  return result;
}

void sub_100236314(char a1)
{
  v3 = type metadata accessor for ScheduleDayRowView();
  v4 = *(v1 + *(v3 + 24));
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v5 = v23;
  if ((v23 & 0xC000000000000001) != 0)
  {
    v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if ((v4 & 0x8000000000000000) != 0)
    {
      __break(1u);
      goto LABEL_30;
    }

    if (v4 >= *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_32;
    }

    v6 = *(v23 + 8 * v4 + 32);
  }

  v7 = v6;

  v5 = *&v7[OBJC_IVAR____TtC10FitnessApp7GoalDay_goal];

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if ((v23 & 0xC000000000000001) == 0)
  {
    if ((v4 & 0x8000000000000000) == 0)
    {
      if (v4 < *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v8 = *(v23 + 8 * v4 + 32);
        goto LABEL_9;
      }

LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

LABEL_30:
  v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_9:
  v9 = v8;

  v10 = *&v9[OBJC_IVAR____TtC10FitnessApp7GoalDay_goalType];

  v11 = [*(v1 + *(v3 + 20)) unitManager];
  if (!v11)
  {
LABEL_38:
    __break(1u);
    return;
  }

  v12 = v11;
  v13 = [v11 unitManager];

  if ((v10 - 1) < 2)
  {
    v14 = &selRef_minuteUnit;
    goto LABEL_14;
  }

  if (v10)
  {
    v14 = &selRef_countUnit;
LABEL_14:
    v15 = objc_opt_self();
    goto LABEL_16;
  }

  v14 = &selRef_userActiveEnergyBurnedUnit;
  v15 = v13;
LABEL_16:
  v16 = [v15 *v14];

  [v5 doubleValueForUnit:v16];
  v18 = v17;

  v19 = floor(v18);
  if ((*&v19 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  if (v19 <= -9.22337204e18)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  if (v19 >= 9.22337204e18)
  {
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v20 = v19;
  v21 = sub_1002389D0();
  if ((a1 & 1) == 0)
  {
    goto LABEL_23;
  }

  v22 = (v20 + v21);
  if (__OFADD__(v20, v21))
  {
    __break(1u);
LABEL_23:
    v22 = (v20 - v21);
    if (!__OFSUB__(v20, v21))
    {
      goto LABEL_24;
    }

    goto LABEL_37;
  }

LABEL_24:
  if (v22 >= sub_100236A10() && sub_100234914() >= v22)
  {
    sub_100238C94(v22);
  }
}

uint64_t sub_100236618@<X0>(uint64_t a1@<X8>)
{
  v26 = a1;
  v1 = sub_100140278(&qword_1008E2B40);
  __chkstk_darwin(v1);
  v3 = v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = v24 - v5;
  v7 = type metadata accessor for DynamicTypeSize();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = v24 - v12;
  v25 = sub_100140278(&qword_1008E2B48);
  __chkstk_darwin(v25);
  v15 = v24 - v14;
  v16 = Image.init(systemName:)();
  v17 = static Font.title2.getter();
  KeyPath = swift_getKeyPath();
  v24[1] = v17;
  v24[2] = v16;
  v27 = v16;
  v28 = KeyPath;
  v24[0] = KeyPath;
  v29 = v17;
  v19 = v8[13];
  v19(v13, enum case for DynamicTypeSize.xSmall(_:), v7);
  v19(v10, enum case for DynamicTypeSize.xLarge(_:), v7);
  sub_100239A3C(&qword_1008DC898, &type metadata accessor for DynamicTypeSize);
  result = dispatch thunk of static Comparable.<= infix(_:_:)();
  if (result)
  {
    v21 = v8[4];
    v21(v6, v13, v7);
    v21(&v6[*(v1 + 48)], v10, v7);
    sub_10023955C(v6, v3);
    v22 = *(v1 + 48);
    v21(v15, v3, v7);
    v23 = v8[1];
    v23(&v3[v22], v7);
    sub_100015E80(v6, v3, &qword_1008E2B40);
    v21(&v15[*(v25 + 36)], &v3[*(v1 + 48)], v7);
    v23(v3, v7);
    sub_100140278(&qword_1008E2BE8);
    sub_1002397DC();
    sub_10014A6B0(&qword_1008E2B58, &qword_1008E2B48);
    View.dynamicTypeSize<A>(_:)();
    sub_10000EA04(v15, &qword_1008E2B48);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100236A10()
{
  v2 = type metadata accessor for ScheduleDayRowView();
  v3 = *(v0 + v2[6]);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if ((v16 & 0xC000000000000001) == 0)
  {
    if ((v3 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v3 < *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v4 = *(v16 + 8 * v3 + 32);
      goto LABEL_5;
    }

    __break(1u);
LABEL_22:
    v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();

    v13 = *(v14 + *v1);
    swift_unknownObjectRelease();
    if (v13 <= 1)
    {
      if (v13)
      {
LABEL_17:
        if (v13 == 1)
        {

          return 10;
        }

LABEL_29:

        return 5;
      }

      goto LABEL_24;
    }

LABEL_27:
    if (v13 == 3)
    {

      return 6;
    }

    goto LABEL_29;
  }

  v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_5:
  v5 = v4;

  v1 = &OBJC_IVAR____TtC10FitnessApp7GoalDay_goalType;
  v6 = *&v5[OBJC_IVAR____TtC10FitnessApp7GoalDay_goalType];

  result = [*(v0 + v2[5]) unitManager];
  if (!result)
  {
LABEL_32:
    __break(1u);
    return result;
  }

  v8 = result;
  v9 = [result unitManager];

  if ((v6 - 1) < 2)
  {
    v10 = &selRef_minuteUnit;
    goto LABEL_10;
  }

  if (v6)
  {
    v10 = &selRef_countUnit;
LABEL_10:
    v11 = objc_opt_self();
    goto LABEL_12;
  }

  v10 = &selRef_userActiveEnergyBurnedUnit;
  v11 = v9;
LABEL_12:
  v2 = [v11 *v10];

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if ((v16 & 0xC000000000000001) != 0)
  {
    goto LABEL_22;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_31;
  }

  if (v3 >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v12 = *(v16 + 8 * v3 + 32);

  v13 = *&v12[OBJC_IVAR____TtC10FitnessApp7GoalDay_goalType];

  if (v13 > 1)
  {
    goto LABEL_27;
  }

  if (v13)
  {
    goto LABEL_17;
  }

LABEL_24:
  IsCalorieUnit = FIUIHKUnitIsCalorieUnit();

  if (IsCalorieUnit)
  {
    return 10;
  }

  else
  {
    return 20;
  }
}

uint64_t sub_100236CD8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, char *a3@<X8>)
{
  v35 = a2;
  v36 = a3;
  v32 = a1;
  v33 = sub_100140278(&qword_1008E2BF8) - 8;
  __chkstk_darwin(v33);
  v34 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v27 - v5;
  v31 = type metadata accessor for AccessibilityChildBehavior();
  v7 = *(v31 - 8);
  __chkstk_darwin(v31);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_100140278(&qword_1008E2C00);
  __chkstk_darwin(v29);
  v11 = &v27 - v10;
  v30 = sub_100140278(&qword_1008E2C08);
  v12 = *(v30 - 8);
  __chkstk_darwin(v30);
  v28 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v27 - v15;
  *v11 = static VerticalAlignment.firstTextBaseline.getter();
  *(v11 + 1) = 0;
  v11[16] = 0;
  v17 = sub_100140278(&qword_1008E2C10);
  sub_1002381A8(v32, &v11[*(v17 + 44)]);
  static AccessibilityChildBehavior.combine.getter();
  sub_10014A6B0(&qword_1008E2C18, &qword_1008E2C00);
  v27 = v16;
  View.accessibilityElement(children:)();
  (*(v7 + 8))(v9, v31);
  sub_10000EA04(v11, &qword_1008E2C00);
  *v6 = static VerticalAlignment.firstTextBaseline.getter();
  *(v6 + 1) = 0;
  v6[16] = 0;
  sub_1002381A8(v35, &v6[*(v17 + 44)]);
  *&v6[*(v33 + 44)] = 0;
  v18 = *(v12 + 16);
  v19 = v28;
  v20 = v16;
  v21 = v30;
  v18(v28, v20, v30);
  v22 = v34;
  sub_10001B104(v6, v34, &qword_1008E2BF8);
  v23 = v36;
  v18(v36, v19, v21);
  v24 = sub_100140278(&qword_1008E2C20);
  sub_10001B104(v22, &v23[*(v24 + 48)], &qword_1008E2BF8);
  sub_10000EA04(v6, &qword_1008E2BF8);
  v25 = *(v12 + 8);
  v25(v27, v21);
  sub_10000EA04(v22, &qword_1008E2BF8);
  return (v25)(v19, v21);
}

uint64_t sub_1002370D4@<X0>(uint64_t a1@<X8>)
{
  v26 = a1;
  v1 = sub_100140278(&qword_1008E2B40);
  __chkstk_darwin(v1);
  v3 = v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = v24 - v5;
  v7 = type metadata accessor for DynamicTypeSize();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = v24 - v12;
  v25 = sub_100140278(&qword_1008E2B48);
  __chkstk_darwin(v25);
  v15 = v24 - v14;
  v16 = Image.init(systemName:)();
  v17 = static Font.title2.getter();
  KeyPath = swift_getKeyPath();
  v24[1] = v17;
  v24[2] = v16;
  v27 = v16;
  v28 = KeyPath;
  v24[0] = KeyPath;
  v29 = v17;
  v19 = v8[13];
  v19(v13, enum case for DynamicTypeSize.xSmall(_:), v7);
  v19(v10, enum case for DynamicTypeSize.xLarge(_:), v7);
  sub_100239A3C(&qword_1008DC898, &type metadata accessor for DynamicTypeSize);
  result = dispatch thunk of static Comparable.<= infix(_:_:)();
  if (result)
  {
    v21 = v8[4];
    v21(v6, v13, v7);
    v21(&v6[*(v1 + 48)], v10, v7);
    sub_10023955C(v6, v3);
    v22 = *(v1 + 48);
    v21(v15, v3, v7);
    v23 = v8[1];
    v23(&v3[v22], v7);
    sub_100015E80(v6, v3, &qword_1008E2B40);
    v21(&v15[*(v25 + 36)], &v3[*(v1 + 48)], v7);
    v23(v3, v7);
    sub_100140278(&qword_1008E2BE8);
    sub_1002397DC();
    sub_10014A6B0(&qword_1008E2B58, &qword_1008E2B48);
    View.dynamicTypeSize<A>(_:)();
    sub_10000EA04(v15, &qword_1008E2B48);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1002374CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = static Alignment.center.getter();
  v6 = v5;
  v7 = a2 + *(sub_100140278(&qword_1008E2AB0) + 36);
  v8 = enum case for RoundedCornerStyle.continuous(_:);
  v9 = type metadata accessor for RoundedCornerStyle();
  (*(*(v9 - 8) + 104))(v7, v8, v9);
  v10 = [objc_opt_self() secondarySystemGroupedBackgroundColor];
  v11 = Color.init(uiColor:)();
  v12 = sub_100140278(&qword_1008E2B20);
  *(v7 + *(v12 + 52)) = v11;
  *(v7 + *(v12 + 56)) = 256;
  LOBYTE(v11) = static Edge.Set.horizontal.getter();
  EdgeInsets.init(_all:)();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v21 = v7 + *(sub_100140278(&qword_1008E2B28) + 36);
  *v21 = v11;
  *(v21 + 8) = v14;
  *(v21 + 16) = v16;
  *(v21 + 24) = v18;
  *(v21 + 32) = v20;
  *(v21 + 40) = 0;
  v22 = (v7 + *(sub_100140278(&qword_1008E2AF0) + 36));
  *v22 = v4;
  v22[1] = v6;
  return sub_10001B104(a1, a2, &qword_1008E2A88);
}

uint64_t sub_100237658@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = static Alignment.center.getter();
  v6 = v5;
  v7 = a2 + *(sub_100140278(&qword_1008E2AB8) + 36);
  sub_1002376F8(v7);
  v8 = (v7 + *(sub_100140278(&qword_1008E2B08) + 36));
  *v8 = v4;
  v8[1] = v6;
  return sub_10001B104(a1, a2, &qword_1008E2A88);
}

uint64_t sub_1002376F8@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for RoundedRectangle();
  v3 = v2 - 8;
  __chkstk_darwin(v2);
  v5 = (&v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_100140278(&qword_1008E2B10);
  v7 = v6 - 8;
  __chkstk_darwin(v6);
  v9 = &v27 - v8;
  if (static Solarium.isEnabled.getter())
  {
    v10 = 16.0;
  }

  else
  {
    v10 = 14.0;
  }

  v11 = *(v3 + 28);
  v12 = enum case for RoundedCornerStyle.continuous(_:);
  v13 = type metadata accessor for RoundedCornerStyle();
  (*(*(v13 - 8) + 104))(v5 + v11, v12, v13);
  *v5 = v10;
  v5[1] = v10;
  v14 = [objc_opt_self() secondarySystemGroupedBackgroundColor];
  v15 = Color.init(uiColor:)();
  sub_1002394F4(v5, v9, &type metadata accessor for RoundedRectangle);
  *&v9[*(v7 + 60)] = v15;
  *&v9[*(v7 + 64)] = 256;
  v16 = static Edge.Set.horizontal.getter();
  EdgeInsets.init(_all:)();
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  sub_100015E80(v9, a1, &qword_1008E2B10);
  result = sub_100140278(&qword_1008E2B18);
  v26 = a1 + *(result + 36);
  *v26 = v16;
  *(v26 + 8) = v18;
  *(v26 + 16) = v20;
  *(v26 + 24) = v22;
  *(v26 + 32) = v24;
  *(v26 + 40) = 0;
  return result;
}

id sub_100237904()
{
  v1 = type metadata accessor for ScheduleDayRowView();
  v2 = *(v0 + *(v1 + 24));
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if ((v9 & 0xC000000000000001) != 0)
  {
    goto LABEL_9;
  }

  if ((v2 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_21;
  }

  if (v2 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v4 = *(v9 + 8 * v2 + 32);

  v5 = *&v4[OBJC_IVAR____TtC10FitnessApp7GoalDay_goalType];

  v6 = 0;
  if (v5 <= 1)
  {
    if (v5)
    {
      while (v5 == 1)
      {
        result = [*(v0 + *(v1 + 20)) localizedShortBriskMinutesUnitString];
        if (result)
        {
          goto LABEL_18;
        }

        __break(1u);
LABEL_9:
        v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();

        v5 = *(v7 + OBJC_IVAR____TtC10FitnessApp7GoalDay_goalType);
        swift_unknownObjectRelease();
        v6 = 0;
        if (v5 > 1)
        {
          goto LABEL_13;
        }

        if (!v5)
        {
          goto LABEL_11;
        }
      }

      return v6;
    }

LABEL_11:
    result = [*(v0 + *(v1 + 20)) localizedShortActiveEnergyUnitString];
    if (result)
    {
      goto LABEL_18;
    }

    __break(1u);
  }

LABEL_13:
  if (v5 != 2)
  {
    if (v5 != 3)
    {
      return v6;
    }

    result = [*(v0 + *(v1 + 20)) localizedShortActiveHoursUnitString];
    if (result)
    {
LABEL_18:
      v8 = result;
      v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();

      return v6;
    }

    __break(1u);
  }

  result = [*(v0 + *(v1 + 20)) localizedShortBriskMinutesUnitString];
  if (result)
  {
    goto LABEL_18;
  }

LABEL_22:
  __break(1u);
  return result;
}

uint64_t sub_100237B08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v32 = a1;
  v33 = a3;
  v34 = a5;
  v7 = sub_100140278(&qword_1008EB540);
  __chkstk_darwin(v7 - 8);
  v9 = &v31 - v8;
  v10 = sub_100140278(&qword_1008E1900);
  __chkstk_darwin(v10 - 8);
  v12 = &v31 - v11;
  v13 = sub_100140278(&qword_1008E1908);
  v35 = *(v13 - 8);
  __chkstk_darwin(v13);
  v31 = &v31 - v14;
  v15 = type metadata accessor for AttributeContainer();
  __chkstk_darwin(v15 - 8);
  sub_1000059F8(0, &qword_1008DC998);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v17 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v18 = String._bridgeToObjectiveC()();
  v19 = String._bridgeToObjectiveC()();
  v20 = [v17 localizedStringForKey:v18 value:0 table:v19];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_100140278(&unk_1008E4E50);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1006D1F70;
  *(v21 + 56) = &type metadata for String;
  v22 = sub_10000A788();
  *(v21 + 32) = v32;
  *(v21 + 40) = a2;
  *(v21 + 96) = &type metadata for String;
  *(v21 + 104) = v22;
  v23 = v33;
  *(v21 + 64) = v22;
  *(v21 + 72) = v23;
  *(v21 + 80) = a4;

  String.init(format:_:)();

  AttributeContainer.init()();
  AttributedString.init(_:attributes:)();
  v37[0] = static Font.title.getter();
  sub_10005F988();
  AttributedString.subscript.setter();
  v37[0] = v23;
  v37[1] = a4;
  v24 = type metadata accessor for Locale();
  (*(*(v24 - 8) + 56))(v9, 1, 1, v24);
  type metadata accessor for AttributedString();
  sub_100239A3C(&qword_1008E1918, &type metadata accessor for AttributedString);
  sub_10000FCBC();
  AttributedStringProtocol.range<A>(of:options:locale:)();
  sub_10000EA04(v9, &qword_1008EB540);
  if ((*(v35 + 48))(v12, 1, v13) == 1)
  {
    v25 = &qword_1008E1900;
    v26 = v12;
  }

  else
  {
    v27 = v31;
    sub_100015E80(v12, v31, &qword_1008E1908);
    static Font.title2.getter();
    v28 = Font.smallCaps()();

    sub_10014A6B0(&qword_1008E1920, &qword_1008E1908);
    v29 = AttributedString.subscript.modify();
    v36 = v28;
    AttributedSubstring.subscript.setter();
    v29(v37, 0);
    v26 = v27;
    v25 = &qword_1008E1908;
  }

  return sub_10000EA04(v26, v25);
}

void sub_10023803C(uint64_t a1)
{
  v2 = type metadata accessor for AccessibilityAdjustmentDirection();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, a1, v2, v4);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 == enum case for AccessibilityAdjustmentDirection.increment(_:) || v7 == enum case for AccessibilityAdjustmentDirection.decrement(_:))
  {
    sub_100236314(v7 == enum case for AccessibilityAdjustmentDirection.increment(_:));
  }

  else
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }
}

uint64_t sub_1002381A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v78 = a2;
  v76 = sub_100140278(&qword_1008E2B40);
  __chkstk_darwin(v76);
  v75 = &v67 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v71 = &v67 - v5;
  v6 = type metadata accessor for DynamicTypeSize();
  v82 = *(v6 - 8);
  __chkstk_darwin(v6);
  v81 = &v67 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v80 = &v67 - v9;
  v77 = sub_100140278(&qword_1008E2B48);
  __chkstk_darwin(v77);
  v72 = &v67 - v10;
  v11 = sub_100140278(&qword_1008DC448);
  __chkstk_darwin(v11 - 8);
  v79 = &v67 - v12;
  v13 = sub_100140278(&qword_1008E2B50);
  v73 = *(v13 - 8);
  v74 = v13;
  __chkstk_darwin(v13);
  v69 = &v67 - v14;
  v15 = type metadata accessor for AttributedString();
  v83 = *(v15 - 8);
  __chkstk_darwin(v15);
  v17 = &v67 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v67 - v19;
  sub_100140278(&unk_1008E4E50);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1006D46C0;
  *(v21 + 56) = &type metadata for Int;
  *(v21 + 64) = &protocol witness table for Int;
  *(v21 + 32) = a1;
  v22 = static String.localizedStringWithFormat(_:_:)();
  v24 = v23;

  v84 = sub_100237904();
  v85 = v25;
  sub_10000FCBC();
  v26 = StringProtocol.localizedUppercase.getter();
  v28 = v27;

  sub_100237B08(v22, v24, v26, v28, v20);

  v29 = *(v83 + 16);
  v68 = v20;
  v70 = v15;
  v29(v17, v20, v15);
  v30 = Text.init(_:)();
  v32 = v31;
  LOBYTE(v22) = v33;
  v34 = enum case for Font.Design.rounded(_:);
  v35 = type metadata accessor for Font.Design();
  v36 = *(v35 - 8);
  v37 = v79;
  (*(v36 + 104))(v79, v34, v35);
  (*(v36 + 56))(v37, 0, 1, v35);
  v38 = Text.fontDesign(_:)();
  v40 = v39;
  LOBYTE(v20) = v41;
  sub_10004642C(v30, v32, v22 & 1);

  v42 = v37;
  v43 = v80;
  sub_10000EA04(v42, &qword_1008DC448);
  static Font.Weight.bold.getter();
  v44 = Text.fontWeight(_:)();
  v46 = v45;
  v48 = v47;
  v50 = v49;
  sub_10004642C(v38, v40, v20 & 1);
  v51 = v81;

  v79 = v44;
  v84 = v44;
  v85 = v46;
  v67 = v46;
  LOBYTE(v86) = v48 & 1;
  v87 = v50;
  v52 = v82;
  v53 = *(v82 + 104);
  v53(v43, enum case for DynamicTypeSize.xSmall(_:), v6);
  v53(v51, enum case for DynamicTypeSize.xLarge(_:), v6);
  sub_100239A3C(&qword_1008DC898, &type metadata accessor for DynamicTypeSize);
  result = dispatch thunk of static Comparable.<= infix(_:_:)();
  if (result)
  {
    v55 = *(v52 + 32);
    v56 = v71;
    v55(v71, v43, v6);
    v57 = v76;
    v55((v56 + *(v76 + 48)), v51, v6);
    v58 = v75;
    sub_10023955C(v56, v75);
    v59 = *(v57 + 48);
    v81 = v50;
    v60 = v72;
    v55(v72, v58, v6);
    LODWORD(v80) = v48 & 1;
    v61 = *(v52 + 8);
    v61(v58 + v59, v6);
    sub_100015E80(v56, v58, &qword_1008E2B40);
    v62 = *(v57 + 48);
    v63 = v77;
    v55((v60 + *(v77 + 36)), (v58 + v62), v6);
    v61(v58, v6);
    v64 = sub_10014A6B0(&qword_1008E2B58, &qword_1008E2B48);
    v65 = v69;
    View.dynamicTypeSize<A>(_:)();
    sub_10000EA04(v60, &qword_1008E2B48);
    sub_10004642C(v79, v67, v80);

    v84 = &type metadata for Text;
    v85 = v63;
    v86 = &protocol witness table for Text;
    v87 = v64;
    swift_getOpaqueTypeConformance2();
    v66 = v74;
    View.monospacedDigit()();
    (*(v73 + 8))(v65, v66);
    return (*(v83 + 8))(v68, v70);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1002389D0()
{
  v2 = type metadata accessor for ScheduleDayRowView();
  v3 = *(v0 + v2[6]);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if ((v16 & 0xC000000000000001) == 0)
  {
    if ((v3 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v3 < *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v4 = *(v16 + 8 * v3 + 32);
      goto LABEL_5;
    }

    __break(1u);
    goto LABEL_22;
  }

  v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_5:
  v5 = v4;

  v1 = &OBJC_IVAR____TtC10FitnessApp7GoalDay_goalType;
  v6 = *&v5[OBJC_IVAR____TtC10FitnessApp7GoalDay_goalType];

  result = [*(v0 + v2[5]) unitManager];
  if (!result)
  {
    goto LABEL_33;
  }

  v8 = result;
  v9 = [result unitManager];

  if ((v6 - 1) < 2)
  {
    v10 = &selRef_minuteUnit;
    goto LABEL_10;
  }

  if (v6)
  {
    v10 = &selRef_countUnit;
LABEL_10:
    v11 = objc_opt_self();
    goto LABEL_12;
  }

  v10 = &selRef_userActiveEnergyBurnedUnit;
  v11 = v9;
LABEL_12:
  v2 = [v11 *v10];

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if ((v16 & 0xC000000000000001) == 0)
  {
    if ((v3 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v3 < *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v12 = *(v16 + 8 * v3 + 32);

      v13 = *&v12[OBJC_IVAR____TtC10FitnessApp7GoalDay_goalType];

      if (v13 <= 1)
      {
        if (v13)
        {
          goto LABEL_17;
        }

LABEL_24:
        IsCalorieUnit = FIUIHKUnitIsCalorieUnit();

        if (IsCalorieUnit)
        {
          return 10;
        }

        else
        {
          return 20;
        }
      }

      goto LABEL_27;
    }

    __break(1u);
LABEL_33:
    __break(1u);
    return result;
  }

LABEL_22:
  v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();

  v13 = *(v14 + *v1);
  swift_unknownObjectRelease();
  if (v13 <= 1)
  {
    if (v13)
    {
LABEL_17:
      if (v13 == 1)
      {

        return 10;
      }

      goto LABEL_28;
    }

    goto LABEL_24;
  }

LABEL_27:
  if (v13 != 2)
  {
LABEL_28:

    return 1;
  }

  return 5;
}

id sub_100238C94(id a1)
{
  v3 = type metadata accessor for ScheduleDayRowView();
  v4 = *(v1 + *(v3 + 24));
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v5 = v29;
  if ((v29 & 0xC000000000000001) == 0)
  {
    if ((v4 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v4 < *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v6 = v29[v4 + 4];
      goto LABEL_5;
    }

    __break(1u);
    goto LABEL_30;
  }

  v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_5:
  v7 = v6;

  v5 = &OBJC_IVAR____TtC10FitnessApp7GoalDay_goalType;
  v8 = *(v7 + OBJC_IVAR____TtC10FitnessApp7GoalDay_goalType);

  result = [*(v1 + *(v3 + 20)) unitManager];
  if (result)
  {
    v10 = result;
    v11 = [result unitManager];

    if ((v8 - 1) < 2)
    {
      v12 = &selRef_minuteUnit;
    }

    else
    {
      if (!v8)
      {
        v12 = &selRef_userActiveEnergyBurnedUnit;
        v13 = v11;
LABEL_12:
        v14 = [v13 *v12];

        a1 = [objc_opt_self() quantityWithUnit:v14 doubleValue:a1];
        swift_getKeyPath();
        swift_getKeyPath();
        static Published.subscript.getter();

        if ((v29 & 0xC000000000000001) == 0)
        {
          if ((v4 & 0x8000000000000000) != 0)
          {
            __break(1u);
            goto LABEL_32;
          }

          if (v4 >= *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_34;
          }

          v15 = v29[v4 + 4];
LABEL_16:
          v16 = v15;

          v7 = &OBJC_IVAR____TtC10FitnessApp7GoalDay_day;
          LOBYTE(v8) = v16[OBJC_IVAR____TtC10FitnessApp7GoalDay_day];

          swift_getKeyPath();
          swift_getKeyPath();
          a1 = a1;
          static Published.subscript.getter();

          if ((v29 & 0xC000000000000001) == 0)
          {
            if ((v4 & 0x8000000000000000) == 0)
            {
              if (v4 >= *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
LABEL_36:
                __break(1u);
LABEL_37:
                __break(1u);
                goto LABEL_38;
              }

              v17 = v29[v4 + 4];
              goto LABEL_20;
            }

LABEL_34:
            __break(1u);
LABEL_35:
            __break(1u);
            goto LABEL_36;
          }

LABEL_32:
          v17 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_20:
          v18 = v17;

          v19 = *&v18[*v5];

          v20 = type metadata accessor for GoalDay();
          v21 = objc_allocWithZone(v20);
          v21[*v7] = v8;
          *&v21[OBJC_IVAR____TtC10FitnessApp7GoalDay_goal] = a1;
          *&v21[*v5] = v19;
          v30.receiver = v21;
          v30.super_class = v20;
          v22 = objc_msgSendSuper2(&v30, "init");
          swift_getKeyPath();
          swift_getKeyPath();
          v23 = v22;
          v24 = static Published.subscript.modify();
          v26 = v25;
          v27 = *v25;
          result = swift_isUniquelyReferenced_nonNull_bridgeObject();
          *v26 = v27;
          if (!result || (v27 & 0x8000000000000000) != 0 || (v27 & 0x4000000000000000) != 0)
          {
            result = sub_10057FAF8(v27);
            v27 = result;
            *v26 = result;
          }

          if ((v4 & 0x8000000000000000) == 0)
          {
            if (v4 < *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              v28 = *((v27 & 0xFFFFFFFFFFFFFF8) + 8 * v4 + 0x20);
              *((v27 & 0xFFFFFFFFFFFFFF8) + 8 * v4 + 0x20) = v23;

              v24(&v29, 0);
            }

            goto LABEL_37;
          }

          goto LABEL_35;
        }

LABEL_30:
        v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        goto LABEL_16;
      }

      v12 = &selRef_countUnit;
    }

    v13 = objc_opt_self();
    goto LABEL_12;
  }

LABEL_38:
  __break(1u);
  return result;
}

unint64_t sub_1002390E0()
{
  result = qword_1008E2AC0;
  if (!qword_1008E2AC0)
  {
    sub_100141EEC(&qword_1008E2A88);
    sub_10023916C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E2AC0);
  }

  return result;
}

unint64_t sub_10023916C()
{
  result = qword_1008E2AC8;
  if (!qword_1008E2AC8)
  {
    sub_100141EEC(&qword_1008E2A80);
    sub_1002391F8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E2AC8);
  }

  return result;
}

unint64_t sub_1002391F8()
{
  result = qword_1008E2AD0;
  if (!qword_1008E2AD0)
  {
    sub_100141EEC(&qword_1008E2A78);
    sub_10014A6B0(&qword_1008E2AD8, &qword_1008E2A70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E2AD0);
  }

  return result;
}

unint64_t sub_1002392B0()
{
  result = qword_1008E2AE0;
  if (!qword_1008E2AE0)
  {
    sub_100141EEC(&qword_1008E2AB0);
    sub_1002390E0();
    sub_10014A6B0(&qword_1008E2AE8, &qword_1008E2AF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E2AE0);
  }

  return result;
}

unint64_t sub_100239368()
{
  result = qword_1008E2AF8;
  if (!qword_1008E2AF8)
  {
    sub_100141EEC(&qword_1008E2AB8);
    sub_1002390E0();
    sub_10014A6B0(&qword_1008E2B00, &qword_1008E2B08);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E2AF8);
  }

  return result;
}

uint64_t sub_100239420(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ScheduleDayRowView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_100239484(uint64_t a1)
{
  type metadata accessor for ScheduleDayRowView();

  sub_10023803C(a1);
}

uint64_t sub_1002394F4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10023955C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100140278(&qword_1008E2B40);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1002395D4()
{
  result = qword_1008E2BA0;
  if (!qword_1008E2BA0)
  {
    sub_100141EEC(&qword_1008E2B88);
    sub_10023968C();
    sub_10014A6B0(&qword_1008E2BC8, &qword_1008E2BD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E2BA0);
  }

  return result;
}

unint64_t sub_10023968C()
{
  result = qword_1008E2BA8;
  if (!qword_1008E2BA8)
  {
    sub_100141EEC(&qword_1008E2B80);
    sub_10014A6B0(&qword_1008E2BB0, &qword_1008E2B78);
    sub_10014A6B0(&qword_1008E2BB8, &qword_1008E2BC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E2BA8);
  }

  return result;
}

unint64_t sub_1002397DC()
{
  result = qword_1008E2BF0;
  if (!qword_1008E2BF0)
  {
    sub_100141EEC(&qword_1008E2BE8);
    sub_10014A6B0(&qword_1008DC4C8, &qword_1008DC4D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E2BF0);
  }

  return result;
}

unint64_t sub_100239894()
{
  result = qword_1008E2C28;
  if (!qword_1008E2C28)
  {
    sub_100141EEC(&qword_1008E2AA0);
    sub_100141EEC(&qword_1008E2A90);
    sub_100141EEC(&qword_1008E2A88);
    sub_100141EEC(&qword_1008E2AB0);
    sub_100141EEC(&qword_1008E2AB8);
    sub_1002390E0();
    sub_1002392B0();
    sub_100239368();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_100239A3C(&qword_1008DCEF8, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E2C28);
  }

  return result;
}

uint64_t sub_100239A3C(unint64_t *a1, void (*a2)(uint64_t))
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

double sub_100239AF8()
{
  [*(v0 + OBJC_IVAR____TtC10FitnessApp27TrendDetailDailyAverageView_chartContainer) frame];
  CGRectGetWidth(v21);
  if (qword_1008DAC88 != -1)
  {
    swift_once();
  }

  UIRoundToScale();
  v2 = v1;
  sub_100185EE8(0, 7, 0);
  v4 = _swiftEmptyArrayStorage[2];
  v3 = _swiftEmptyArrayStorage[3];
  v5 = v4 + 1;
  if (v4 >= v3 >> 1)
  {
    sub_100185EE8((v3 > 1), v4 + 1, 1);
  }

  _swiftEmptyArrayStorage[2] = v5;
  *&_swiftEmptyArrayStorage[v4 + 4] = v2 * 0.0 + 2.0;
  v6 = _swiftEmptyArrayStorage[3];
  v7 = v4 + 2;
  if (v5 >= v6 >> 1)
  {
    sub_100185EE8((v6 > 1), v7, 1);
  }

  _swiftEmptyArrayStorage[2] = v7;
  *&_swiftEmptyArrayStorage[v5 + 4] = v2 + 2.0;
  v9 = _swiftEmptyArrayStorage[2];
  v8 = _swiftEmptyArrayStorage[3];
  v10 = v9 + 1;
  if (v9 >= v8 >> 1)
  {
    sub_100185EE8((v8 > 1), v9 + 1, 1);
  }

  _swiftEmptyArrayStorage[2] = v10;
  *&_swiftEmptyArrayStorage[v9 + 4] = v2 + v2 + 2.0;
  v11 = _swiftEmptyArrayStorage[3];
  v12 = v9 + 2;
  if (v10 >= v11 >> 1)
  {
    sub_100185EE8((v11 > 1), v12, 1);
  }

  _swiftEmptyArrayStorage[2] = v12;
  *&_swiftEmptyArrayStorage[v10 + 4] = v2 * 3.0 + 2.0;
  v14 = _swiftEmptyArrayStorage[2];
  v13 = _swiftEmptyArrayStorage[3];
  v15 = v14 + 1;
  if (v14 >= v13 >> 1)
  {
    sub_100185EE8((v13 > 1), v14 + 1, 1);
  }

  _swiftEmptyArrayStorage[2] = v15;
  *&_swiftEmptyArrayStorage[v14 + 4] = v2 * 4.0 + 2.0;
  v16 = _swiftEmptyArrayStorage[3];
  v17 = v14 + 2;
  if (v15 >= v16 >> 1)
  {
    sub_100185EE8((v16 > 1), v17, 1);
  }

  _swiftEmptyArrayStorage[2] = v17;
  *&_swiftEmptyArrayStorage[v15 + 4] = v2 * 5.0 + 2.0;
  v19 = _swiftEmptyArrayStorage[2];
  v18 = _swiftEmptyArrayStorage[3];
  if (v19 >= v18 >> 1)
  {
    sub_100185EE8((v18 > 1), v19 + 1, 1);
  }

  result = v2 * 6.0 + 2.0;
  _swiftEmptyArrayStorage[2] = v19 + 1;
  *&_swiftEmptyArrayStorage[v19 + 4] = result;
  return result;
}

char *sub_100239DC8(char a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = v4;
  v6 = OBJC_IVAR____TtC10FitnessApp27TrendDetailDailyAverageView_titleLabel;
  sub_1000059F8(0, &qword_1008E2D40);
  *&v4[v6] = sub_100555C98();
  v7 = OBJC_IVAR____TtC10FitnessApp27TrendDetailDailyAverageView_chartContainer;
  sub_1000059F8(0, &qword_1008E7580);
  *&v4[v7] = sub_10065AF60();
  v8 = OBJC_IVAR____TtC10FitnessApp27TrendDetailDailyAverageView_container90;
  *&v4[v8] = sub_10065AF60();
  v9 = OBJC_IVAR____TtC10FitnessApp27TrendDetailDailyAverageView_container365;
  *&v4[v9] = sub_10065AF60();
  v10 = OBJC_IVAR____TtC10FitnessApp27TrendDetailDailyAverageView_textContainer;
  *&v4[v10] = [objc_allocWithZone(UILayoutGuide) init];
  v11 = OBJC_IVAR____TtC10FitnessApp27TrendDetailDailyAverageView_axisLayer;
  *&v5[v11] = [objc_allocWithZone(CAShapeLayer) init];
  v12 = OBJC_IVAR____TtC10FitnessApp27TrendDetailDailyAverageView_gradientLayer90;
  *&v5[v12] = [objc_allocWithZone(CAGradientLayer) init];
  v13 = OBJC_IVAR____TtC10FitnessApp27TrendDetailDailyAverageView_barLayer90;
  *&v5[v13] = [objc_allocWithZone(CAShapeLayer) init];
  v14 = OBJC_IVAR____TtC10FitnessApp27TrendDetailDailyAverageView_gradientLayer365;
  *&v5[v14] = [objc_allocWithZone(CAGradientLayer) init];
  v15 = OBJC_IVAR____TtC10FitnessApp27TrendDetailDailyAverageView_barLayer365;
  *&v5[v15] = [objc_allocWithZone(CAShapeLayer) init];
  v16 = OBJC_IVAR____TtC10FitnessApp27TrendDetailDailyAverageView_chartMask;
  type metadata accessor for TrendChartMaskingView();
  *&v5[v16] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v17 = OBJC_IVAR____TtC10FitnessApp27TrendDetailDailyAverageView_dayOfWeekLabels;
  v18 = [objc_opt_self() secondaryLabelColor];
  v19 = sub_10023EF7C(v18);

  v73 = v17;
  *&v5[v17] = v19;
  v20 = sub_100555C98();
  v21 = objc_opt_self();
  result = [v21 _preferredFontForTextStyle:UIFontTextStyleCaption2 variant:1024 maximumContentSizeCategory:UIContentSizeCategoryExtraExtraExtraLarge];
  if (!result)
  {
    __break(1u);
    goto LABEL_11;
  }

  v23 = result;
  v24 = OBJC_IVAR____TtC10FitnessApp27TrendDetailDailyAverageView_minAxisLabel;
  [v20 setFont:result];

  *&v5[v24] = v20;
  v25 = sub_100555C98();
  result = [v21 _preferredFontForTextStyle:UIFontTextStyleCaption2 variant:1024 maximumContentSizeCategory:UIContentSizeCategoryExtraExtraExtraLarge];
  if (!result)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v26 = result;
  v27 = OBJC_IVAR____TtC10FitnessApp27TrendDetailDailyAverageView_midAxisLabel;
  [v25 setFont:result];

  *&v5[v27] = v25;
  v28 = sub_100555C98();
  result = [v21 _preferredFontForTextStyle:UIFontTextStyleCaption2 variant:1024 maximumContentSizeCategory:UIContentSizeCategoryExtraExtraExtraLarge];
  if (!result)
  {
LABEL_12:
    __break(1u);
    return result;
  }

  v29 = result;
  v30 = OBJC_IVAR____TtC10FitnessApp27TrendDetailDailyAverageView_maxValueLabel;
  [v28 setFont:result];

  *&v5[v30] = v28;
  v31 = OBJC_IVAR____TtC10FitnessApp27TrendDetailDailyAverageView_div;
  *&v5[v31] = sub_10065AEC8();
  v32 = OBJC_IVAR____TtC10FitnessApp27TrendDetailDailyAverageView_platter90;
  type metadata accessor for TrendsScrubberPlatterView();
  *&v5[v32] = sub_10065AF60();
  v33 = OBJC_IVAR____TtC10FitnessApp27TrendDetailDailyAverageView_platter365;
  *&v5[v33] = sub_10065AF60();
  v34 = OBJC_IVAR____TtC10FitnessApp27TrendDetailDailyAverageView_platterCenterLayoutGuide;
  *&v5[v34] = [objc_allocWithZone(UILayoutGuide) init];
  v35 = &v5[OBJC_IVAR____TtC10FitnessApp27TrendDetailDailyAverageView_title90];
  v36 = objc_opt_self();
  v37 = [v36 mainBundle];
  v38 = String._bridgeToObjectiveC()();
  v39 = [v37 localizedStringForKey:v38 value:0 table:0];

  v40 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v42 = v41;

  *v35 = v40;
  v35[1] = v42;
  v43 = &v5[OBJC_IVAR____TtC10FitnessApp27TrendDetailDailyAverageView_title365];
  v44 = [v36 mainBundle];
  v45 = String._bridgeToObjectiveC()();
  v46 = [v44 localizedStringForKey:v45 value:0 table:0];

  v47 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v49 = v48;

  *v43 = v47;
  v43[1] = v49;
  *&v5[OBJC_IVAR____TtC10FitnessApp27TrendDetailDailyAverageView_platterCenterXConstraint] = 0;
  v5[OBJC_IVAR____TtC10FitnessApp27TrendDetailDailyAverageView_type] = a1;
  v50 = &v5[OBJC_IVAR____TtC10FitnessApp27TrendDetailDailyAverageView_histogram90];
  v51 = *(a2 + 112);
  v52 = *(a2 + 80);
  *(v50 + 4) = *(a2 + 64);
  *(v50 + 5) = v52;
  *(v50 + 6) = *(a2 + 96);
  *(v50 + 14) = *(a2 + 112);
  v53 = *(a2 + 16);
  *v50 = *a2;
  *(v50 + 1) = v53;
  v54 = *(a2 + 48);
  *(v50 + 2) = *(a2 + 32);
  *(v50 + 3) = v54;
  v55 = &v5[OBJC_IVAR____TtC10FitnessApp27TrendDetailDailyAverageView_histogram365];
  v56 = *(a3 + 112);
  v55[14] = v56;
  v57 = *(a3 + 96);
  *(v55 + 5) = *(a3 + 80);
  *(v55 + 6) = v57;
  v58 = *(a3 + 64);
  *(v55 + 3) = *(a3 + 48);
  *(v55 + 4) = v58;
  v59 = *(a3 + 32);
  *(v55 + 1) = *(a3 + 16);
  *(v55 + 2) = v59;
  *v55 = *a3;
  if (v51 <= v56)
  {
    v51 = v56;
  }

  *&v5[OBJC_IVAR____TtC10FitnessApp27TrendDetailDailyAverageView_histogramMaxY] = v51;
  *&v5[OBJC_IVAR____TtC10FitnessApp27TrendDetailDailyAverageView_formattingManager] = a4;
  if (*&v5[v73] >> 62)
  {
    v71 = a4;

    _bridgeCocoaArray<A>(_:)();
  }

  else
  {
    swift_bridgeObjectRetain_n();
    v60 = a4;
    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
  }

  v61 = objc_allocWithZone(UIStackView);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v63 = [v61 initWithArrangedSubviews:isa];

  *&v5[OBJC_IVAR____TtC10FitnessApp27TrendDetailDailyAverageView_dayOfWeekStack] = v63;
  v64 = [objc_allocWithZone(UILongPressGestureRecognizer) init];
  *&v5[OBJC_IVAR____TtC10FitnessApp27TrendDetailDailyAverageView_longPressRecognizer] = v64;
  v77.receiver = v5;
  v77.super_class = type metadata accessor for TrendDetailDailyAverageView();
  v65 = objc_msgSendSuper2(&v77, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v66 = OBJC_IVAR____TtC10FitnessApp27TrendDetailDailyAverageView_longPressRecognizer;
  v67 = *&v65[OBJC_IVAR____TtC10FitnessApp27TrendDetailDailyAverageView_longPressRecognizer];
  v68 = v65;
  [v67 addTarget:v68 action:"longPressWithSender:"];
  [*&v65[v66] setMinimumPressDuration:0.2];
  [v68 addGestureRecognizer:*&v65[v66]];
  [v68 addSubview:*&v68[OBJC_IVAR____TtC10FitnessApp27TrendDetailDailyAverageView_chartContainer]];
  [v68 addLayoutGuide:*&v68[OBJC_IVAR____TtC10FitnessApp27TrendDetailDailyAverageView_textContainer]];
  v69 = OBJC_IVAR____TtC10FitnessApp27TrendDetailDailyAverageView_dayOfWeekStack;
  v70 = *&v68[OBJC_IVAR____TtC10FitnessApp27TrendDetailDailyAverageView_dayOfWeekStack];
  [v70 setDistribution:1];
  [v70 setAxis:0];
  [v70 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v70 setSemanticContentAttribute:3];
  [v68 addSubview:*&v68[v69]];
  sub_10023AE08();
  sub_10023B3FC();
  sub_10023BC5C();

  return v68;
}

uint64_t sub_10023A548(uint64_t result)
{
  if (result > 6)
  {
    return 0;
  }

  if ((result & 0x8000000000000000) == 0)
  {
    v2 = *(&off_100841BF8 + result + 4);
    if ((v2 - 1) > 6)
    {
      return 0;
    }

    v3 = sub_10065D3A4(v2 - 1);
    if (v4)
    {
      return 0;
    }

    v5 = *&v3;
    v6 = *(v1 + OBJC_IVAR____TtC10FitnessApp27TrendDetailDailyAverageView_type);
    v7 = sub_1003D2500(byte_1006DFE50[v6]);
    v8 = [objc_opt_self() quantityWithUnit:v7 doubleValue:v5];

    if (((v6 - 3) & 0xFB) != 0)
    {
      v9 = sub_100602918(v8, v6);
      if ((v10 & 1) == 0)
      {
        v11 = [objc_allocWithZone(NSNumber) initWithDouble:*&v9];
        v12 = [objc_opt_self() stringWithNumber:v11 decimalPrecision:qword_1006DFE08[v6] roundingMode:4];

        if (v12)
        {
          v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v15 = v14;

          sub_10007ABFC(v6, 0, v5);
          if (v16)
          {
            sub_10000FCBC();
            v17 = StringProtocol.localizedUppercase.getter();
            v19 = v18;

            goto LABEL_14;
          }

LABEL_16:

          return 0;
        }
      }
    }

    else
    {
      v13 = sub_100603864(v8);
      v15 = v20;

      if (v15)
      {
        sub_10007ABFC(v6, 0, v5);
        if (v21)
        {

          v17 = 0;
          v19 = 0xE000000000000000;
LABEL_14:
          result = [objc_opt_self() _preferredFontForTextStyle:UIFontTextStyleTitle3 variant:1024 maximumContentSizeCategory:UIContentSizeCategoryExtraExtraExtraLarge];
          if (result)
          {
            v22 = result;
            v23 = sub_1004C154C(v13, v15, v17, v19, result);

            return v23;
          }

          goto LABEL_19;
        }

        goto LABEL_16;
      }
    }

    return 0;
  }

  __break(1u);
LABEL_19:
  __break(1u);
  return result;
}

uint64_t sub_10023A80C(uint64_t result)
{
  if (result > 6)
  {
    return 0;
  }

  if ((result & 0x8000000000000000) == 0)
  {
    v2 = *(&off_100841BF8 + result + 4);
    if ((v2 - 1) > 6)
    {
      return 0;
    }

    v3 = sub_10065D3A4(v2 - 1);
    if (v4)
    {
      return 0;
    }

    v5 = *&v3;
    v6 = *(v1 + OBJC_IVAR____TtC10FitnessApp27TrendDetailDailyAverageView_type);
    v7 = sub_1003D2500(byte_1006DFE50[v6]);
    v8 = [objc_opt_self() quantityWithUnit:v7 doubleValue:v5];

    if (((v6 - 3) & 0xFB) != 0)
    {
      v9 = sub_100602918(v8, v6);
      if ((v10 & 1) == 0)
      {
        v11 = [objc_allocWithZone(NSNumber) initWithDouble:*&v9];
        v12 = [objc_opt_self() stringWithNumber:v11 decimalPrecision:qword_1006DFE08[v6] roundingMode:4];

        if (v12)
        {
          v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v15 = v14;

          sub_10007ABFC(v6, 0, v5);
          if (v16)
          {
            sub_10000FCBC();
            v17 = StringProtocol.localizedUppercase.getter();
            v19 = v18;

            goto LABEL_14;
          }

LABEL_16:

          return 0;
        }
      }
    }

    else
    {
      v13 = sub_100603864(v8);
      v15 = v20;

      if (v15)
      {
        sub_10007ABFC(v6, 0, v5);
        if (v21)
        {

          v17 = 0;
          v19 = 0xE000000000000000;
LABEL_14:
          result = [objc_opt_self() _preferredFontForTextStyle:UIFontTextStyleTitle3 variant:1024 maximumContentSizeCategory:UIContentSizeCategoryExtraExtraExtraLarge];
          if (result)
          {
            v22 = result;
            v23 = sub_1004C154C(v13, v15, v17, v19, result);

            return v23;
          }

          goto LABEL_19;
        }

        goto LABEL_16;
      }
    }

    return 0;
  }

  __break(1u);
LABEL_19:
  __break(1u);
  return result;
}

void sub_10023AAD0()
{
  v1 = *(v0 + OBJC_IVAR____TtC10FitnessApp27TrendDetailDailyAverageView_maxValueLabel);
  v2 = UIFontTextStyleCaption2;
  v3 = objc_opt_self();
  v4 = &selRef_initWithLayer_;
  v5 = [v3 _preferredFontForTextStyle:UIFontTextStyleCaption2 variant:1024 maximumContentSizeCategory:UIContentSizeCategoryExtraExtraExtraLarge];
  if (!v5)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v6 = v5;
  [v1 setFont:v5];

  v7 = *(v0 + OBJC_IVAR____TtC10FitnessApp27TrendDetailDailyAverageView_midAxisLabel);
  v8 = [v3 _preferredFontForTextStyle:UIFontTextStyleCaption2 variant:1024 maximumContentSizeCategory:UIContentSizeCategoryExtraExtraExtraLarge];
  if (!v8)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v9 = v8;
  [v7 setFont:v8];

  v10 = *(v0 + OBJC_IVAR____TtC10FitnessApp27TrendDetailDailyAverageView_minAxisLabel);
  v11 = [v3 _preferredFontForTextStyle:UIFontTextStyleCaption2 variant:1024 maximumContentSizeCategory:UIContentSizeCategoryExtraExtraExtraLarge];
  if (!v11)
  {
LABEL_22:
    __break(1u);
    return;
  }

  v12 = v11;
  [v10 setFont:v11];

  v13 = *(v0 + OBJC_IVAR____TtC10FitnessApp27TrendDetailDailyAverageView_dayOfWeekLabels);
  if (v13 >> 62)
  {
LABEL_17:
    v14 = _CocoaArrayWrapper.endIndex.getter();
    if (v14)
    {
LABEL_6:
      v15 = 0;
      while (1)
      {
        if ((v13 & 0xC000000000000001) != 0)
        {
          v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v15 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_16;
          }

          v16 = *(v13 + 8 * v15 + 32);
        }

        v17 = v16;
        v18 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          __break(1u);
LABEL_16:
          __break(1u);
          goto LABEL_17;
        }

        v19 = v4;
        v20 = v4[19];
        v21 = v3;
        v22 = v3;
        v23 = v2;
        v24 = [v22 v20];
        if (!v24)
        {
          break;
        }

        v25 = v24;
        [v17 setFont:v24];

        ++v15;
        v2 = v23;
        v3 = v21;
        v4 = v19;
        if (v18 == v14)
        {
          return;
        }
      }

      __break(1u);
      goto LABEL_20;
    }
  }

  else
  {
    v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v14)
    {
      goto LABEL_6;
    }
  }
}

void sub_10023AE08()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC10FitnessApp27TrendDetailDailyAverageView_titleLabel];
  [v1 addSubview:v2];
  v3 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleCallout];
  [v2 setFont:v3];

  v4 = objc_opt_self();
  v5 = [v4 labelColor];
  [v2 setTextColor:v5];

  v6 = objc_opt_self();
  v7 = [v6 mainBundle];
  v8 = String._bridgeToObjectiveC()();
  v9 = [v7 localizedStringForKey:v8 value:0 table:0];

  if (!v9)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = String._bridgeToObjectiveC()();
  }

  [v2 setText:v9];
  v10 = *&v1[OBJC_IVAR____TtC10FitnessApp27TrendDetailDailyAverageView_maxValueLabel];
  [v1 addSubview:v10];
  v45 = v4;
  v11 = [v4 secondaryLabelColor];
  [v10 setTextColor:v11];

  v12 = *&v1[OBJC_IVAR____TtC10FitnessApp27TrendDetailDailyAverageView_formattingManager];
  v13 = v1[OBJC_IVAR____TtC10FitnessApp27TrendDetailDailyAverageView_type];
  v14 = sub_1003D2500(byte_1006DFE50[v13]);
  v15 = *&v1[OBJC_IVAR____TtC10FitnessApp27TrendDetailDailyAverageView_histogramMaxY];
  v42 = objc_opt_self();
  v16 = [v42 quantityWithUnit:v14 doubleValue:v15];

  if (((v13 - 3) & 0xFB) != 0)
  {
    v18 = [v6 mainBundle];
    v19 = String._bridgeToObjectiveC()();
    v20 = [v18 localizedStringForKey:v19 value:0 table:0];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_100603634(v16, v13);
    v22 = v21;
  }

  else
  {
    sub_100603864(v16);
    v22 = v23;
  }

  v17 = v13 - 3;

  if (v22)
  {
    v24 = String._bridgeToObjectiveC()();
  }

  else
  {
    v24 = 0;
  }

  [v10 setText:v24];

  v25 = *&v1[OBJC_IVAR____TtC10FitnessApp27TrendDetailDailyAverageView_midAxisLabel];
  [v1 addSubview:v25];
  v26 = [v45 secondaryLabelColor];
  [v25 setTextColor:v26];

  v27 = sub_1003D2500(byte_1006DFE50[v13]);
  v43 = [v42 quantityWithUnit:v27 doubleValue:v15 * 0.5];

  if ((v17 & 0xFB) != 0)
  {
    v28 = [*(v12 + OBJC_IVAR____TtC10FitnessApp23TrendsFormattingManager_fiuiFormatter) unitManager];
    if (!v28)
    {
      __break(1u);
      return;
    }

    v29 = v28;
    v30 = sub_10058264C(v28, v13);

    [v43 doubleValueForUnit:v30];
    v32 = v31;

    v33 = [objc_allocWithZone(NSNumber) initWithDouble:v32];
    v34 = [objc_opt_self() stringWithNumber:v33 decimalPrecision:qword_1006DFE08[v13] roundingMode:4];

    v35 = v45;
    goto LABEL_14;
  }

  sub_100602BB8(v43);
  v35 = v45;
  if (v36)
  {

    v34 = String._bridgeToObjectiveC()();

LABEL_14:
    [v25 setText:{v34, v43}];
  }

  v37 = *&v1[OBJC_IVAR____TtC10FitnessApp27TrendDetailDailyAverageView_minAxisLabel];
  [v1 addSubview:{v37, v43}];
  v38 = [v35 secondaryLabelColor];
  [v37 setTextColor:v38];

  if ((v17 & 0xFB) != 0)
  {
    v39 = objc_opt_self();
    v40 = [objc_allocWithZone(NSNumber) initWithInteger:0];
    v41 = [v39 stringWithNumber:v40 decimalPrecision:1];

    [v37 setText:v41];
  }
}

id sub_10023B3FC()
{
  v1 = v0;
  v2 = [v0 layer];
  v3 = *&v1[OBJC_IVAR____TtC10FitnessApp27TrendDetailDailyAverageView_axisLayer];
  [v2 addSublayer:v3];

  v60 = objc_opt_self();
  v4 = [v60 tertiaryLabelColor];
  v5 = [v4 CGColor];

  [v3 setStrokeColor:v5];
  sub_100140278(&unk_1008E4E20);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1006D68D0;
  sub_1000059F8(0, &qword_1008E1750);
  *(v6 + 32) = NSNumber.init(floatLiteral:)(1.0);
  *(v6 + 40) = NSNumber.init(floatLiteral:)(1.0);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v3 setLineDashPattern:isa];

  v8 = *&v1[OBJC_IVAR____TtC10FitnessApp27TrendDetailDailyAverageView_chartContainer];
  v9 = *&v1[OBJC_IVAR____TtC10FitnessApp27TrendDetailDailyAverageView_container365];
  [v8 addSubview:v9];
  v10 = *&v1[OBJC_IVAR____TtC10FitnessApp27TrendDetailDailyAverageView_container90];
  [v8 addSubview:v10];
  v11 = [v10 layer];
  v59 = *&v1[OBJC_IVAR____TtC10FitnessApp27TrendDetailDailyAverageView_barLayer90];
  [v11 addSublayer:?];

  v12 = [v10 layer];
  v13 = *&v1[OBJC_IVAR____TtC10FitnessApp27TrendDetailDailyAverageView_gradientLayer90];
  [v12 addSublayer:v13];

  v14 = kCAFilterSourceAtop;
  v15 = [objc_allocWithZone(CAFilter) initWithType:kCAFilterSourceAtop];
  [v13 setCompositingFilter:v15];

  v16 = [v9 layer];
  v58 = *&v1[OBJC_IVAR____TtC10FitnessApp27TrendDetailDailyAverageView_barLayer365];
  [v16 addSublayer:?];

  v17 = [v9 layer];
  v18 = *&v1[OBJC_IVAR____TtC10FitnessApp27TrendDetailDailyAverageView_gradientLayer365];
  [v17 addSublayer:v18];

  v19 = [objc_allocWithZone(CAFilter) initWithType:v14];
  [v18 setCompositingFilter:v19];

  sub_100140278(&qword_1008E7590);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_1006D1F70;
  LOBYTE(v17) = v1[OBJC_IVAR____TtC10FitnessApp27TrendDetailDailyAverageView_type];
  v57 = v17;
  v21 = sub_100582888(v17);
  v22 = *&v21[OBJC_IVAR____TtC10FitnessApp12MetricColors_gradient];

  v23 = *&v22[OBJC_IVAR____TtC10FitnessApp14GradientColors_light];
  v24 = [v23 CGColor];

  type metadata accessor for CGColor(0);
  v26 = v25;
  *(v20 + 56) = v25;
  *(v20 + 32) = v24;
  v27 = sub_100582888(v17);
  v28 = *&v27[OBJC_IVAR____TtC10FitnessApp12MetricColors_gradient];

  v29 = *&v28[OBJC_IVAR____TtC10FitnessApp14GradientColors_dark];
  v30 = [v29 CGColor];

  *(v20 + 88) = v26;
  *(v20 + 64) = v30;
  v31 = Array._bridgeToObjectiveC()().super.isa;

  [v13 setColors:v31];

  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_1006D1F70;
  v33 = [objc_allocWithZone(UIColor) initWithWhite:0.75 alpha:1.0];
  v34 = [v33 CGColor];

  *(v32 + 56) = v26;
  *(v32 + 32) = v34;
  v35 = [objc_allocWithZone(UIColor) initWithWhite:0.6 alpha:1.0];
  v36 = [v35 CGColor];

  *(v32 + 88) = v26;
  *(v32 + 64) = v36;
  v37 = Array._bridgeToObjectiveC()().super.isa;

  [v18 setColors:v37];

  v38 = [v60 blackColor];
  v39 = [v38 CGColor];

  [v59 setStrokeColor:v39];
  [v59 setLineWidth:4.0];
  [v59 setLineCap:kCALineCapRound];
  v40 = [v60 blackColor];
  v41 = [v40 CGColor];

  [v58 setStrokeColor:v41];
  [v58 setLineWidth:4.0];
  [v58 setLineCap:kCALineCapRound];
  [v1 addLayoutGuide:*&v1[OBJC_IVAR____TtC10FitnessApp27TrendDetailDailyAverageView_platterCenterLayoutGuide]];
  v42 = *&v1[OBJC_IVAR____TtC10FitnessApp27TrendDetailDailyAverageView_platter90];
  [v1 addSubview:v42];
  v43 = sub_100582888(v57);
  v44 = *&v43[OBJC_IVAR____TtC10FitnessApp12MetricColors_text];

  sub_10060AE7C(v44);
  [v42 setAlpha:0.0];
  v45 = *&v1[OBJC_IVAR____TtC10FitnessApp27TrendDetailDailyAverageView_platter365];
  [v1 addSubview:v45];
  sub_1000059F8(0, &qword_1008E7FC0);
  v46 = UIColor.init(_colorLiteralRed:green:blue:alpha:)(0.58824, 0.61961, 0.63137, 1.0).super.isa;
  v47 = UIColor.init(_colorLiteralRed:green:blue:alpha:)(0.75686, 0.77647, 0.78431, 1.0).super.isa;
  v48 = type metadata accessor for GradientColors();
  v49 = objc_allocWithZone(v48);
  *&v49[OBJC_IVAR____TtC10FitnessApp14GradientColors_dark] = v46;
  *&v49[OBJC_IVAR____TtC10FitnessApp14GradientColors_light] = v47;
  v62.receiver = v49;
  v62.super_class = v48;
  v50 = objc_msgSendSuper2(&v62, "init");
  v51 = UIColor.init(_colorLiteralRed:green:blue:alpha:)(0.58824, 0.61961, 0.63137, 1.0).super.isa;
  v52 = type metadata accessor for MetricColors();
  v53 = objc_allocWithZone(v52);
  *&v53[OBJC_IVAR____TtC10FitnessApp12MetricColors_gradient] = v50;
  *&v53[OBJC_IVAR____TtC10FitnessApp12MetricColors_text] = v51;
  v61.receiver = v53;
  v61.super_class = v52;
  v54 = objc_msgSendSuper2(&v61, "init");
  v55 = *&v54[OBJC_IVAR____TtC10FitnessApp12MetricColors_text];

  sub_10060AE7C(v55);
  [v45 setAlpha:0.0];
  return [v1 addSubview:*&v1[OBJC_IVAR____TtC10FitnessApp27TrendDetailDailyAverageView_div]];
}

void sub_10023BC5C()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC10FitnessApp27TrendDetailDailyAverageView_titleLabel];
  v3 = [v2 topAnchor];
  v4 = [v1 topAnchor];
  v146 = [v3 constraintEqualToAnchor:v4 constant:9.0];

  v202 = v2;
  v5 = [v2 leadingAnchor];
  v6 = [v1 leadingAnchor];
  v144 = [v5 constraintEqualToAnchor:v6 constant:16.0];

  v7 = [v2 trailingAnchor];
  v8 = [v1 trailingAnchor];
  v142 = [v7 constraintEqualToAnchor:v8 constant:-16.0];

  v9 = *&v1[OBJC_IVAR____TtC10FitnessApp27TrendDetailDailyAverageView_chartContainer];
  v10 = [v9 leftAnchor];
  v11 = [v1 leftAnchor];
  v140 = [v10 constraintEqualToAnchor:v11 constant:14.0];

  v12 = [v9 rightAnchor];
  v13 = [v1 rightAnchor];
  v199 = [v12 constraintEqualToAnchor:v13 constant:-60.0];

  v14 = [v9 heightAnchor];
  v197 = [v14 constraintEqualToConstant:66.0];

  v15 = *&v1[OBJC_IVAR____TtC10FitnessApp27TrendDetailDailyAverageView_container90];
  v16 = [v15 topAnchor];
  v17 = [v9 topAnchor];
  v138 = [v16 constraintEqualToAnchor:v17];

  v18 = [v15 leftAnchor];
  v19 = [v9 leftAnchor];
  v195 = [v18 constraintEqualToAnchor:v19];

  v20 = [v15 rightAnchor];
  v21 = [v9 rightAnchor];
  v193 = [v20 constraintEqualToAnchor:v21];

  v22 = [v15 bottomAnchor];
  v23 = [v9 bottomAnchor];
  v191 = [v22 constraintEqualToAnchor:v23];

  v24 = *&v1[OBJC_IVAR____TtC10FitnessApp27TrendDetailDailyAverageView_container365];
  v25 = [v24 topAnchor];
  v26 = [v9 topAnchor];
  v189 = [v25 constraintEqualToAnchor:v26];

  v27 = [v24 leftAnchor];
  v28 = [v9 leftAnchor];
  v187 = [v27 constraintEqualToAnchor:v28];

  v29 = [v24 rightAnchor];
  v30 = [v9 rightAnchor];
  v185 = [v29 constraintEqualToAnchor:v30];

  v31 = [v24 bottomAnchor];
  v32 = [v9 bottomAnchor];
  v183 = [v31 constraintEqualToAnchor:v32];

  v33 = *&v1[OBJC_IVAR____TtC10FitnessApp27TrendDetailDailyAverageView_textContainer];
  v34 = [v33 topAnchor];
  v35 = [v9 bottomAnchor];
  v181 = [v34 constraintEqualToAnchor:v35];

  v36 = [v33 leftAnchor];
  v37 = [v9 leftAnchor];
  v179 = [v36 constraintEqualToAnchor:v37];

  v38 = [v33 rightAnchor];
  v39 = [v9 rightAnchor];
  v177 = [v38 constraintEqualToAnchor:v39];

  v40 = [v33 bottomAnchor];
  v41 = [v1 bottomAnchor];
  v175 = [v40 constraintEqualToAnchor:v41 constant:-10.0];

  v42 = *&v1[OBJC_IVAR____TtC10FitnessApp27TrendDetailDailyAverageView_dayOfWeekStack];
  v43 = [v42 leftAnchor];
  v44 = [v33 leftAnchor];
  v173 = [v43 constraintEqualToAnchor:v44 constant:2.0];

  v45 = [v42 rightAnchor];
  v46 = [v33 rightAnchor];
  v171 = [v45 constraintEqualToAnchor:v46 constant:2.0];

  v47 = [v42 topAnchor];
  v48 = [v33 topAnchor];
  v169 = [v47 constraintEqualToAnchor:v48];

  v49 = [v42 bottomAnchor];
  v50 = [v33 bottomAnchor];
  v167 = [v49 constraintEqualToAnchor:v50];

  v51 = *&v1[OBJC_IVAR____TtC10FitnessApp27TrendDetailDailyAverageView_maxValueLabel];
  v52 = [v51 topAnchor];
  v53 = [v202 bottomAnchor];
  v165 = [v52 constraintEqualToAnchor:v53 constant:8.0];

  v54 = [v51 bottomAnchor];
  v55 = [v9 topAnchor];
  v136 = [v54 constraintEqualToAnchor:v55 constant:-3.0];

  v56 = [v51 rightAnchor];
  v57 = [v1 rightAnchor];
  v134 = [v56 constraintEqualToAnchor:v57 constant:-8.0];

  v58 = *&v1[OBJC_IVAR____TtC10FitnessApp27TrendDetailDailyAverageView_minAxisLabel];
  v59 = [v58 bottomAnchor];
  v60 = [v9 bottomAnchor];
  v163 = [v59 constraintEqualToAnchor:v60 constant:-3.0];

  v61 = [v58 rightAnchor];
  v62 = [v51 rightAnchor];
  v162 = [v61 constraintEqualToAnchor:v62];

  v63 = *&v1[OBJC_IVAR____TtC10FitnessApp27TrendDetailDailyAverageView_midAxisLabel];
  v64 = [v63 bottomAnchor];
  v65 = [v9 centerYAnchor];
  v161 = [v64 constraintEqualToAnchor:v65 constant:-3.0];

  v66 = [v63 rightAnchor];
  v67 = [v51 rightAnchor];
  v160 = [v66 constraintEqualToAnchor:v67];

  v68 = *&v1[OBJC_IVAR____TtC10FitnessApp27TrendDetailDailyAverageView_div];
  v69 = [v68 leadingAnchor];
  v70 = [v1 leadingAnchor];
  v159 = [v69 constraintEqualToAnchor:v70 constant:16.0];

  v71 = [v68 trailingAnchor];
  v72 = [v1 trailingAnchor];
  v158 = [v71 constraintEqualToAnchor:v72];

  v73 = [v68 heightAnchor];
  if (qword_1008DAC90 != -1)
  {
    swift_once();
  }

  v157 = [v73 constraintEqualToConstant:*&qword_100925B90];

  v74 = [v68 bottomAnchor];
  v75 = [v1 bottomAnchor];
  v156 = [v74 constraintEqualToAnchor:v75];

  v76 = *&v1[OBJC_IVAR____TtC10FitnessApp27TrendDetailDailyAverageView_platterCenterLayoutGuide];
  v77 = [v76 topAnchor];
  v78 = [v1 topAnchor];
  v155 = [v77 constraintEqualToAnchor:v78 constant:2.0];

  v79 = [v76 widthAnchor];
  v154 = [v79 constraintEqualToConstant:7.0];

  v80 = [v76 heightAnchor];
  v81 = *&v1[OBJC_IVAR____TtC10FitnessApp27TrendDetailDailyAverageView_platter365];
  v82 = [v81 heightAnchor];
  v153 = [v80 constraintEqualToAnchor:v82 constant:0.0];

  v83 = [v76 centerXAnchor];
  v84 = [v9 leftAnchor];
  v85 = [v83 constraintEqualToAnchor:v84 constant:0.0];

  LODWORD(v86) = 1144750080;
  [v85 setPriority:v86];
  v87 = *&v1[OBJC_IVAR____TtC10FitnessApp27TrendDetailDailyAverageView_platterCenterXConstraint];
  *&v1[OBJC_IVAR____TtC10FitnessApp27TrendDetailDailyAverageView_platterCenterXConstraint] = v85;
  v132 = v85;

  v88 = [v81 topAnchor];
  v89 = [v76 topAnchor];
  v152 = [v88 constraintEqualToAnchor:v89 constant:0.0];

  v90 = [v81 rightAnchor];
  v91 = [v76 leftAnchor];
  v151 = [v90 constraintEqualToAnchor:v91 constant:0.0];

  v92 = [v81 leftAnchor];
  v93 = [v1 leftAnchor];
  v150 = [v92 constraintGreaterThanOrEqualToAnchor:v93 constant:7.0];

  v94 = *&v1[OBJC_IVAR____TtC10FitnessApp27TrendDetailDailyAverageView_platter90];
  v95 = [v94 topAnchor];
  v96 = [v76 topAnchor];
  v131 = [v95 constraintEqualToAnchor:v96 constant:0.0];

  v97 = [v94 leftAnchor];
  v98 = [v76 rightAnchor];
  v149 = [v97 constraintEqualToAnchor:v98 constant:0.0];

  v99 = [v94 rightAnchor];
  v100 = [v1 rightAnchor];
  v148 = [v99 constraintLessThanOrEqualToAnchor:v100 constant:-7.0];

  sub_100140278(&qword_1008E2D48);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1006DFDB0;
  sub_100140278(&unk_1008E4E20);
  v102 = swift_allocObject();
  *(v102 + 16) = xmmword_1006D68C0;
  *(v102 + 32) = v146;
  *(v102 + 40) = v144;
  *(v102 + 48) = v142;
  *(inited + 32) = v102;
  v103 = swift_allocObject();
  *(v103 + 16) = xmmword_1006D68C0;
  *(v103 + 32) = v136;
  *(v103 + 40) = v134;
  *(v103 + 48) = v165;
  *(inited + 40) = v103;
  v104 = swift_allocObject();
  *(v104 + 16) = xmmword_1006D68C0;
  *(v104 + 32) = v140;
  *(v104 + 40) = v199;
  *(v104 + 48) = v197;
  *(inited + 48) = v104;
  v105 = swift_allocObject();
  *(v105 + 16) = xmmword_1006D5300;
  *(v105 + 32) = v138;
  *(v105 + 40) = v195;
  *(v105 + 48) = v193;
  *(v105 + 56) = v191;
  *(inited + 56) = v105;
  v106 = swift_allocObject();
  *(v106 + 16) = xmmword_1006D5300;
  *(v106 + 32) = v189;
  *(v106 + 40) = v187;
  *(v106 + 48) = v185;
  *(v106 + 56) = v183;
  *(inited + 64) = v106;
  v107 = swift_allocObject();
  *(v107 + 16) = xmmword_1006D5300;
  *(v107 + 32) = v181;
  *(v107 + 40) = v179;
  *(v107 + 48) = v177;
  *(v107 + 56) = v175;
  *(inited + 72) = v107;
  v108 = swift_allocObject();
  *(v108 + 16) = xmmword_1006D5300;
  *(v108 + 32) = v173;
  *(v108 + 40) = v171;
  *(v108 + 48) = v169;
  *(v108 + 56) = v167;
  *(inited + 80) = v108;
  v109 = swift_allocObject();
  *(v109 + 16) = xmmword_1006D68D0;
  *(v109 + 32) = v163;
  *(v109 + 40) = v162;
  *(inited + 88) = v109;
  v110 = swift_allocObject();
  *(v110 + 16) = xmmword_1006D68D0;
  *(v110 + 32) = v161;
  *(v110 + 40) = v160;
  *(inited + 96) = v110;
  v111 = swift_allocObject();
  *(v111 + 16) = xmmword_1006D5300;
  *(v111 + 32) = v159;
  *(v111 + 40) = v158;
  *(v111 + 48) = v157;
  *(v111 + 56) = v156;
  *(inited + 104) = v111;
  v112 = swift_allocObject();
  *(v112 + 16) = xmmword_1006D5300;
  *(v112 + 32) = v155;
  *(v112 + 40) = v154;
  *(v112 + 48) = v153;
  *(v112 + 56) = v132;
  *(inited + 112) = v112;
  v113 = swift_allocObject();
  *(v113 + 16) = xmmword_1006D68C0;
  *(v113 + 32) = v152;
  *(v113 + 40) = v150;
  *(v113 + 48) = v151;
  *(inited + 120) = v113;
  v114 = swift_allocObject();
  *(v114 + 16) = xmmword_1006D68C0;
  *(v114 + 32) = v131;
  *(v114 + 40) = v149;
  *(v114 + 48) = v148;
  *(inited + 128) = v114;
  v130 = objc_opt_self();
  v115 = v132;
  v147 = v146;
  v145 = v144;
  v143 = v142;
  v203 = v136;
  v201 = v134;
  v166 = v165;
  v141 = v140;
  v200 = v199;
  v198 = v197;
  v139 = v138;
  v196 = v195;
  v194 = v193;
  v192 = v191;
  v190 = v189;
  v137 = v187;
  v135 = v185;
  v133 = v183;
  v129 = v181;
  v128 = v179;
  v127 = v177;
  v126 = v175;
  v125 = v173;
  v124 = v171;
  v116 = v169;
  v117 = v167;
  v188 = v163;
  v186 = v162;
  v184 = v161;
  v182 = v160;
  v180 = v159;
  v176 = v158;
  v174 = v157;
  v172 = v156;
  v168 = v155;
  v164 = v154;
  v118 = v153;
  v170 = v152;
  v178 = v150;
  v119 = v151;
  v120 = v131;
  v121 = v149;
  v122 = v148;
  sub_1006672B8(inited);
  swift_setDeallocating();
  sub_100140278(&qword_1008EE6E0);
  swift_arrayDestroy();
  sub_1000059F8(0, &qword_1008DC980);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v130 activateConstraints:isa];
}

id sub_10023D2AC()
{
  [*(v0 + OBJC_IVAR____TtC10FitnessApp27TrendDetailDailyAverageView_barLayer90) bounds];
  x = v27.origin.x;
  y = v27.origin.y;
  width = v27.size.width;
  height = v27.size.height;
  v5 = CGRectGetHeight(v27);
  sub_100239AF8();
  v7 = *(v6 + 16);
  if (v7)
  {
    v8 = v6;
    sub_100185EE8(0, v7, 0);
    v9 = v8;
    v10 = _swiftEmptyArrayStorage[2];
    v11 = 32;
    do
    {
      v12 = *(v9 + v11);
      v13 = _swiftEmptyArrayStorage[3];
      if (v10 >= v13 >> 1)
      {
        sub_100185EE8((v13 > 1), v10 + 1, 1);
        v9 = v8;
      }

      _swiftEmptyArrayStorage[2] = v10 + 1;
      *&_swiftEmptyArrayStorage[v10 + 4] = v12 + 4.0 + 5.0;
      v11 += 8;
      ++v10;
      --v7;
    }

    while (v7);
  }

  v14 = (v0 + OBJC_IVAR____TtC10FitnessApp27TrendDetailDailyAverageView_histogram90);
  if (*(v0 + OBJC_IVAR____TtC10FitnessApp27TrendDetailDailyAverageView_histogram90 + 112) > *(v0 + OBJC_IVAR____TtC10FitnessApp27TrendDetailDailyAverageView_histogram365 + 112))
  {
    v15 = *(v0 + OBJC_IVAR____TtC10FitnessApp27TrendDetailDailyAverageView_histogram90 + 112);
  }

  else
  {
    v15 = *(v0 + OBJC_IVAR____TtC10FitnessApp27TrendDetailDailyAverageView_histogram365 + 112);
  }

  v16 = [objc_allocWithZone(UIBezierPath) init];
  v17 = _swiftEmptyArrayStorage[2];
  if (v17)
  {
    for (i = 0; i != v17; ++i)
    {
      if (i <= 6)
      {
        v19 = *(&off_100841BF8 + i + 4) - 1;
        if (v19 < 7 && v19 < *(*v14 + 16))
        {
          v20 = 24 * v19;
          v21 = *v14 + 24 * v19;
          if ((*(v21 + 48) & 1) == 0)
          {
            v22 = v14[7];
            if (v19 < *(v22 + 16) && (*(v22 + v20 + 48) & 1) == 0)
            {
              v23 = *(v22 + v20 + 32);
              if (v23 > 0.0)
              {
                v24 = *&_swiftEmptyArrayStorage[i + 4];
                v25 = *(v21 + 32) / v23 / v15;
                v28.origin.x = x;
                v28.origin.y = y;
                v28.size.width = width;
                v28.size.height = height;
                [v16 moveToPoint:{v24, CGRectGetMaxY(v28) + -2.0}];
                v29.origin.x = x;
                v29.origin.y = y;
                v29.size.width = width;
                v29.size.height = height;
                [v16 addLineToPoint:{v24, CGRectGetMaxY(v29) - v5 * v25 + 2.0}];
              }
            }
          }
        }
      }
    }
  }

  return v16;
}