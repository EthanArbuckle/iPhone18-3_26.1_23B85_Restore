uint64_t sub_1001ECDF4(char *a1)
{
  v2 = sub_100140278(&unk_1008EE8E0);
  v3 = __chkstk_darwin(v2 - 8);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v21 - v6;
  v8 = type metadata accessor for AttributedString();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v12 = *&a1[OBJC_IVAR___CHCatalogItemViewModel_title];
    v13 = a1;
    v14 = v12;
    AttributedString.init(_:)();
    v22 = static Color.white.getter();
    sub_10005FAB0();
    AttributedString.subscript.setter();
    if (qword_1008DA610 != -1)
    {
      swift_once();
    }

    v15 = qword_1008E0AF8;
    v22 = qword_1008E0AF8;
    sub_1001ED5AC();
    v16 = v15;
    AttributedString.subscript.setter();
    (*(v9 + 16))(v7, v11, v8);
    (*(v9 + 56))(v7, 0, 1, v8);
    type metadata accessor for LoadHistoryItemView();
    sub_10001B104(v7, v5, &unk_1008EE8E0);
    sub_100140278(&qword_1008E0B00);
    State.wrappedValue.setter();

    sub_10000EA04(v7, &unk_1008EE8E0);
    return (*(v9 + 8))(v11, v8);
  }

  else
  {
    static os_log_type_t.error.getter();
    v18 = HKLogActivity;
    sub_100140278(&unk_1008E4E50);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_1006D46C0;
    *(v19 + 56) = &type metadata for String;
    *(v19 + 64) = sub_10000A788();
    *(v19 + 32) = 0xD000000000000023;
    *(v19 + 40) = 0x800000010074C5A0;
    v20 = v18;
    os_log(_:dso:log:_:_:)();
  }
}

uint64_t sub_1001ED180(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1001ED1E8()
{
  v1 = *(type metadata accessor for LoadHistoryItemView() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(type metadata accessor for FitnessPlusStackViewModel() - 8);
  v5 = v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80));

  return sub_1001EC944(v0 + v2, v5);
}

uint64_t sub_1001ED2B4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1001ED31C()
{
  result = qword_1008E0BE0;
  if (!qword_1008E0BE0)
  {
    sub_100141EEC(&qword_1008E0BD0);
    sub_10007FFB8(&qword_1008E0BE8, type metadata accessor for WorkloadListItemStack);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E0BE0);
  }

  return result;
}

uint64_t sub_1001ED460(char *a1)
{
  type metadata accessor for LoadHistoryItemView();
  v3 = *(v1 + 16);

  return sub_1001ECA7C(a1, v3);
}

unint64_t sub_1001ED4D4()
{
  result = qword_1008F4BE0;
  if (!qword_1008F4BE0)
  {
    sub_1000059F8(255, &qword_1008ED7C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F4BE0);
  }

  return result;
}

uint64_t sub_1001ED53C(char *a1)
{
  type metadata accessor for LoadHistoryItemView();

  return sub_1001ECDF4(a1);
}

unint64_t sub_1001ED5AC()
{
  result = qword_1008E0BF0;
  if (!qword_1008E0BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E0BF0);
  }

  return result;
}

unint64_t sub_1001ED600()
{
  result = qword_1008E0BF8;
  if (!qword_1008E0BF8)
  {
    sub_100141EEC(&qword_1008E0C00);
    sub_1001ED684();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E0BF8);
  }

  return result;
}

unint64_t sub_1001ED684()
{
  result = qword_1008E0C08;
  if (!qword_1008E0C08)
  {
    sub_100141EEC(&qword_1008E0BD8);
    sub_1001ED31C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E0C08);
  }

  return result;
}

void sub_1001ED708()
{
  v1 = *(v0 + OBJC_IVAR____TtC10FitnessApp30DayViewStandChartTableViewCell_labelPair);
  v2 = [objc_opt_self() mainBundle];
  v3 = String._bridgeToObjectiveC()();
  v4 = [v2 localizedStringForKey:v3 value:0 table:0];

  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  v8 = (v1 + OBJC_IVAR____TtC10FitnessApp29DayViewTitleAndValueLabelPair_titleText);
  *v8 = v5;
  v8[1] = v7;

  v9 = *(v1 + OBJC_IVAR____TtC10FitnessApp29DayViewTitleAndValueLabelPair_titleLabel);

  v10 = String._bridgeToObjectiveC()();

  [v9 setText:v10];
}

void sub_1001ED8BC()
{
  v1 = type metadata accessor for DateComponents();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v88 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Calendar.Component();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v88 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100140278(&unk_1008F73A0);
  __chkstk_darwin(v9 - 8);
  v11 = &v88 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v107 = &v88 - v13;
  v14 = type metadata accessor for Date();
  __chkstk_darwin(v14);
  v103 = &v88 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  __chkstk_darwin(v17);
  __chkstk_darwin(v18);
  v102 = &v88 - v19;
  __chkstk_darwin(v20);
  v26 = *(v0 + OBJC_IVAR____TtC10FitnessApp30DayViewStandChartTableViewCell_chartData);
  if (v26)
  {
    v105 = v6;
    v95 = &v88 - v22;
    v104 = v0;
    v111 = v11;
    v113 = v21;
    v98 = v23;
    v106 = v24;
    v94 = v5;
    v93 = v8;
    v97 = v1;
    v96 = v2;
    v92 = v4;
    v91 = v25;
    v112 = v26 >> 62;
    v27 = v26 & 0xFFFFFFFFFFFFFF8;
    if (v26 >> 62)
    {
LABEL_49:
      v28 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v28 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v29 = v26 & 0xC000000000000001;
    v110 = (v26 + 32);

    v30 = 0;
    v31 = 0;
    v32 = v102;
    while (v28 != v30)
    {
      if (v29)
      {
        v33 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v30 >= *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_47;
        }

        v33 = *(v26 + 8 * v30 + 32);
      }

      v34 = v33;
      if (__OFADD__(v30, 1))
      {
        __break(1u);
LABEL_47:
        __break(1u);
LABEL_48:
        __break(1u);
        goto LABEL_49;
      }

      v35 = [v33 state];

      v36 = v35 == 1;
      ++v30;
      v37 = __OFADD__(v31, v36);
      v31 += v36;
      if (v37)
      {
        goto LABEL_48;
      }
    }

    v38 = [objc_opt_self() mainBundle];
    v39 = String._bridgeToObjectiveC()();
    v40 = [v38 localizedStringForKey:v39 value:0 table:0];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v41 = *(v104 + OBJC_IVAR____TtC10FitnessApp30DayViewStandChartTableViewCell_idleHoursLabel);
    sub_100140278(&unk_1008E4E50);
    v42 = swift_allocObject();
    v90 = xmmword_1006D46C0;
    *(v42 + 16) = xmmword_1006D46C0;
    *(v42 + 56) = &type metadata for Int;
    *(v42 + 64) = &protocol witness table for Int;
    *(v42 + 32) = v31;
    v43 = static String.localizedStringWithFormat(_:_:)();
    v45 = v44;

    v114[0] = v43;
    v114[1] = v45;
    sub_10000FCBC();
    StringProtocol.localizedUppercase.getter();
    v46 = String._bridgeToObjectiveC()();

    [v41 setText:v46];

    if (!v28)
    {

LABEL_44:
      [*(v104 + OBJC_IVAR____TtC10FitnessApp30DayViewStandChartTableViewCell_chartView) reloadDataWithAnimated:0];
      return;
    }

    if (v112)
    {
      v47 = _CocoaArrayWrapper.endIndex.getter();
      v48 = v94;
      v49 = v93;
      if ((v47 & 0x8000000000000000) != 0)
      {
        __break(1u);
        goto LABEL_51;
      }
    }

    else
    {
      v47 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v48 = v94;
      v49 = v93;
    }

    if (v47)
    {
      v50 = sub_1001A99B8(v47);
      if (!v29)
      {
        if ((v50 & 0x8000000000000000) != 0)
        {
          __break(1u);
          goto LABEL_54;
        }

        if (v50 >= *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_56;
        }

        v51 = v110[v50];
LABEL_24:
        v52 = v51;

        v89 = v52;
        [v52 timeStamp];
        Date.init(timeIntervalSinceReferenceDate:)();
        v26 = v113;
        v27 = v105;
        if (qword_1008DA550 == -1)
        {
LABEL_25:
          v53 = type metadata accessor for Calendar();
          v54 = sub_10001AC90(v53, qword_100925018);
          Calendar.startOfDay(for:)();
          v55 = *(v27 + 104);
          v55(v49, enum case for Calendar.Component.day(_:), v48);
          v56 = v107;
          Calendar.date(byAdding:value:to:wrappingComponents:)();
          v110 = *(v27 + 8);
          (v110)(v49, v48);
          v108 = *(v98 + 48);
          v109 = v98 + 48;
          v57 = v108(v56, 1, v26);
          v100 = v27 + 104;
          v101 = v54;
          v99 = v55;
          v112 = v27 + 8;
          if (v57 == 1)
          {
            sub_1001F145C(v56);
            v58 = &unk_1008E0000;
          }

          else
          {
            v59 = v91;
            (*(v98 + 32))(v91, v56, v26);
            sub_100140278(&unk_1008E51B0);
            v60 = (*(v27 + 80) + 32) & ~*(v27 + 80);
            v61 = swift_allocObject();
            *(v61 + 16) = v90;
            v55((v61 + v60), enum case for Calendar.Component.hour(_:), v48);
            sub_10001C970(v61);
            swift_setDeallocating();
            (v110)(v61 + v60, v48);
            swift_deallocClassInstance();
            v62 = v92;
            Calendar.dateComponents(_:from:to:)();

            v63 = DateComponents.hour.getter();
            v65 = v64;
            (*(v96 + 8))(v62, v97);
            (*(v98 + 8))(v59, v113);
            v58 = &unk_1008E0000;
            if ((v65 & 1) == 0)
            {
              *(v104 + OBJC_IVAR____TtC10FitnessApp30DayViewStandChartTableViewCell_nBins) = v63;
            }
          }

          v66 = OBJC_IVAR____TtC10FitnessApp30DayViewStandChartTableViewCell_chartBuckets;
          v67 = v104;
          swift_beginAccess();
          *(v67 + v66) = _swiftEmptyArrayStorage;

          v68 = *(v67 + v58[391]);
          if ((v68 & 0x8000000000000000) == 0)
          {
            v69 = v99;
            if (v68)
            {
              v70 = 0;
              LODWORD(v107) = enum case for Calendar.Component.hour(_:);
              v105 = (v98 + 32);
              v96 = v98 + 16;
              v97 = (v98 + 8);
              do
              {
                v69(v49, v107, v48);
                v71 = v111;
                Calendar.date(byAdding:value:to:wrappingComponents:)();
                (v110)(v49, v48);
                v72 = v113;
                if (v108(v71, 1, v113) == 1)
                {
                  sub_1001F145C(v71);
                }

                else
                {
                  v73 = v49;
                  v74 = v48;
                  v75 = v106;
                  v76 = *v105;
                  (*v105)(v106, v71, v72);
                  v78 = sub_1001EE458();
                  if (*v77)
                  {
                    v79 = v77;
                    (*v96)(v103, v75, v72);
                    v80 = *v79;
                    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                    *v79 = v80;
                    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                    {
                      v80 = sub_10001AC68(0, v80[2] + 1, 1, v80);
                      *v79 = v80;
                    }

                    v83 = v80[2];
                    v82 = v80[3];
                    if (v83 >= v82 >> 1)
                    {
                      v80 = sub_10001AC68(v82 > 1, v83 + 1, 1, v80);
                      *v79 = v80;
                    }

                    v48 = v74;
                    v80[2] = v83 + 1;
                    v84 = v98;
                    v85 = v113;
                    v76(v80 + ((*(v84 + 80) + 32) & ~*(v84 + 80)) + *(v98 + 72) * v83, v103, v113);
                    (v78)(v114, 0);
                    (*(v84 + 8))(v106, v85);
                  }

                  else
                  {
                    (v78)(v114, 0);
                    (*v97)(v75, v72);
                  }

                  v49 = v73;
                  v32 = v102;
                  v69 = v99;
                }

                ++v70;
              }

              while (v68 != v70);
            }

            v86 = *(v98 + 8);
            v87 = v113;
            v86(v32, v113);
            v86(v95, v87);
            goto LABEL_44;
          }

          __break(1u);
LABEL_56:
          __break(1u);
          return;
        }

LABEL_54:
        swift_once();
        goto LABEL_25;
      }

LABEL_52:
      v51 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      goto LABEL_24;
    }

LABEL_51:
    __break(1u);
    goto LABEL_52;
  }
}

void sub_1001EE4BC(void *a1, void *a2)
{
  v5 = *(v2 + OBJC_IVAR____TtC10FitnessApp30DayViewStandChartTableViewCell_labelPair);
  v6 = OBJC_IVAR____TtC10FitnessApp29DayViewTitleAndValueLabelPair_valueLabel;
  v7 = [*(v5 + OBJC_IVAR____TtC10FitnessApp29DayViewTitleAndValueLabelPair_valueLabel) font];
  if (v7)
  {
    v8 = v7;
    v9 = sub_10021E708(a1, a2, v7);

    if (v9)
    {
      v10 = OBJC_IVAR____TtC10FitnessApp29DayViewTitleAndValueLabelPair_valueAttributedText;
      v11 = *(v5 + OBJC_IVAR____TtC10FitnessApp29DayViewTitleAndValueLabelPair_valueAttributedText);
      *(v5 + OBJC_IVAR____TtC10FitnessApp29DayViewTitleAndValueLabelPair_valueAttributedText) = v9;
      v15 = v9;

      [*(v5 + v6) setText:0];
      [*(v5 + v6) setAttributedText:*(v5 + v10)];

      v12 = *(v2 + OBJC_IVAR____TtC10FitnessApp30DayViewStandChartTableViewCell_editGoalButton);
      v13 = [v12 isHidden];
      v14 = 1;
      if ((v13 & 1) == 0 && a2)
      {
        v14 = *(v2 + OBJC_IVAR____TtC10FitnessApp30DayViewStandChartTableViewCell_isToday) ^ 1;
      }

      [v12 setHidden:v14 & 1];
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_1001EE628(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v3[OBJC_IVAR____TtC10FitnessApp30DayViewStandChartTableViewCell_isWheelchair] = 0;
  v5 = [objc_allocWithZone(type metadata accessor for DayViewTitleAndValueLabelPair()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
  v115 = objc_opt_self();
  v6 = [v115 labelColor];
  v7 = *&v5[OBJC_IVAR____TtC10FitnessApp29DayViewTitleAndValueLabelPair_titleLabelTextColor];
  *&v5[OBJC_IVAR____TtC10FitnessApp29DayViewTitleAndValueLabelPair_titleLabelTextColor] = v6;
  v8 = v6;

  v113 = OBJC_IVAR____TtC10FitnessApp29DayViewTitleAndValueLabelPair_titleLabel;
  [*&v5[OBJC_IVAR____TtC10FitnessApp29DayViewTitleAndValueLabelPair_titleLabel] setTextColor:v8];

  sub_1000059F8(0, &qword_1008E7FC0);
  isa = UIColor.init(_colorLiteralRed:green:blue:alpha:)(0.0, 0.84706, 1.0, 1.0).super.isa;
  v10 = UIColor.init(_colorLiteralRed:green:blue:alpha:)(0.0, 1.0, 0.62727, 1.0).super.isa;
  v11 = type metadata accessor for GradientColors();
  v12 = objc_allocWithZone(v11);
  *&v12[OBJC_IVAR____TtC10FitnessApp14GradientColors_dark] = isa;
  *&v12[OBJC_IVAR____TtC10FitnessApp14GradientColors_light] = v10;
  v123.receiver = v12;
  v123.super_class = v11;
  v13 = objc_msgSendSuper2(&v123, "init");
  v14 = UIColor.init(_colorLiteralRed:green:blue:alpha:)(0.0, 1.0, 0.96471, 1.0).super.isa;
  v15 = type metadata accessor for MetricColors();
  v16 = objc_allocWithZone(v15);
  *&v16[OBJC_IVAR____TtC10FitnessApp12MetricColors_gradient] = v13;
  *&v16[OBJC_IVAR____TtC10FitnessApp12MetricColors_text] = v14;
  v122.receiver = v16;
  v122.super_class = v15;
  v17 = objc_msgSendSuper2(&v122, "init");
  v18 = *&v17[OBJC_IVAR____TtC10FitnessApp12MetricColors_text];

  v19 = *&v5[OBJC_IVAR____TtC10FitnessApp29DayViewTitleAndValueLabelPair_valueLabelTextColor];
  *&v5[OBJC_IVAR____TtC10FitnessApp29DayViewTitleAndValueLabelPair_valueLabelTextColor] = v18;
  v20 = v18;

  [*&v5[OBJC_IVAR____TtC10FitnessApp29DayViewTitleAndValueLabelPair_valueLabel] setTextColor:v20];
  v108 = objc_opt_self();
  v21 = [v108 mainBundle];
  v22 = String._bridgeToObjectiveC()();
  v23 = [v21 localizedStringForKey:v22 value:0 table:0];

  v24 = v23;
  if (!v23)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v24 = String._bridgeToObjectiveC()();
  }

  v25 = OBJC_IVAR____TtC10FitnessApp30DayViewStandChartTableViewCell_labelPair;
  v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v28 = v27;

  v29 = &v5[OBJC_IVAR____TtC10FitnessApp29DayViewTitleAndValueLabelPair_titleText];
  *v29 = v26;
  v29[1] = v28;

  v30 = *(v113 + v5);

  [v30 setText:v24];

  *&v4[v25] = v5;
  v31 = OBJC_IVAR____TtC10FitnessApp30DayViewStandChartTableViewCell_idleHoursLabel;
  v32 = [objc_allocWithZone(UILabel) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  [v32 setTranslatesAutoresizingMaskIntoConstraints:0];
  v33 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleCaption1];
  v34 = UILabel.withFont(_:)();

  v35 = UIColor.init(_colorLiteralRed:green:blue:alpha:)(0.0, 0.84706, 1.0, 1.0).super.isa;
  v36 = UIColor.init(_colorLiteralRed:green:blue:alpha:)(0.0, 1.0, 0.62727, 1.0).super.isa;
  v37 = objc_allocWithZone(v11);
  *&v37[OBJC_IVAR____TtC10FitnessApp14GradientColors_dark] = v35;
  *&v37[OBJC_IVAR____TtC10FitnessApp14GradientColors_light] = v36;
  v121.receiver = v37;
  v121.super_class = v11;
  v38 = objc_msgSendSuper2(&v121, "init");
  v39 = UIColor.init(_colorLiteralRed:green:blue:alpha:)(0.0, 1.0, 0.96471, 1.0).super.isa;
  v40 = objc_allocWithZone(v15);
  *&v40[OBJC_IVAR____TtC10FitnessApp12MetricColors_gradient] = v38;
  *&v40[OBJC_IVAR____TtC10FitnessApp12MetricColors_text] = v39;
  v120.receiver = v40;
  v120.super_class = v15;
  v112 = v15;
  v41 = objc_msgSendSuper2(&v120, "init");
  v42 = *&v41[OBJC_IVAR____TtC10FitnessApp12MetricColors_text];

  v43 = UILabel.withTextColor(_:)();
  v44 = v43;
  LODWORD(v45) = 1148846080;
  [v44 setContentCompressionResistancePriority:1 forAxis:v45];
  LODWORD(v46) = 1148846080;
  [v44 setContentHuggingPriority:1 forAxis:v46];

  v47 = [v108 mainBundle];
  v48 = String._bridgeToObjectiveC()();
  v49 = [v47 localizedStringForKey:v48 value:0 table:0];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v50 = String._bridgeToObjectiveC()();
  [v44 setText:v50];

  *&v4[v31] = v44;
  v51 = OBJC_IVAR____TtC10FitnessApp30DayViewStandChartTableViewCell_editGoalButton;
  v52 = [objc_allocWithZone(UIButton) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  [v52 setTranslatesAutoresizingMaskIntoConstraints:0];
  *&v4[v51] = v52;
  v53 = OBJC_IVAR____TtC10FitnessApp30DayViewStandChartTableViewCell_chartView;
  type metadata accessor for ActivityStandChartView();
  *&v4[v53] = sub_10065AF60();
  *&v4[OBJC_IVAR____TtC10FitnessApp30DayViewStandChartTableViewCell_nBins] = 24;
  *&v4[OBJC_IVAR____TtC10FitnessApp30DayViewStandChartTableViewCell_chartData] = 0;
  v54 = &v4[OBJC_IVAR____TtC10FitnessApp30DayViewStandChartTableViewCell_onEditGoal];
  *v54 = 0;
  v54[1] = 0;
  v4[OBJC_IVAR____TtC10FitnessApp30DayViewStandChartTableViewCell_isToday] = 0;
  *&v4[OBJC_IVAR____TtC10FitnessApp30DayViewStandChartTableViewCell_chartBuckets] = 0;
  if (a3)
  {

    v55 = String._bridgeToObjectiveC()();
  }

  else
  {
    v55 = 0;
  }

  v119.receiver = v4;
  v119.super_class = type metadata accessor for DayViewStandChartTableViewCell();
  v56 = objc_msgSendSuper2(&v119, "initWithStyle:reuseIdentifier:", a1, v55);

  v57 = v56;
  v58 = [v115 systemBackgroundColor];
  [v57 setBackgroundColor:v58];

  v59 = [v57 contentView];
  [v59 addSubview:*&v57[OBJC_IVAR____TtC10FitnessApp30DayViewStandChartTableViewCell_labelPair]];

  v60 = v57;
  v61 = [v60 contentView];
  v62 = OBJC_IVAR____TtC10FitnessApp30DayViewStandChartTableViewCell_chartView;
  [v61 addSubview:*&v60[OBJC_IVAR____TtC10FitnessApp30DayViewStandChartTableViewCell_chartView]];

  v63 = *&v60[v62];
  *&v63[OBJC_IVAR____TtC10FitnessApp22ActivityStandChartView_dataProvider + 8] = &off_10084BB70;
  swift_unknownObjectWeakAssign();
  v64 = v63;
  [v64 reloadDataWithAnimated:0];

  v65 = [v60 contentView];
  [v65 addSubview:*&v60[OBJC_IVAR____TtC10FitnessApp30DayViewStandChartTableViewCell_idleHoursLabel]];

  v66 = [v60 contentView];
  v67 = OBJC_IVAR____TtC10FitnessApp30DayViewStandChartTableViewCell_editGoalButton;
  [v66 addSubview:*&v60[OBJC_IVAR____TtC10FitnessApp30DayViewStandChartTableViewCell_editGoalButton]];

  sub_1000059F8(0, &qword_1008E0C88);
  v68 = [v108 mainBundle];
  v69 = String._bridgeToObjectiveC()();
  v70 = [v68 localizedStringForKey:v69 value:0 table:0];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v71 = String._bridgeToObjectiveC()();
  v72 = objc_opt_self();
  v73 = [v72 smm_systemImageNamed:v71];

  swift_allocObject();
  swift_unknownObjectWeakInit();
  v74 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  v75 = objc_opt_self();
  v76 = swift_allocObject();
  *(v76 + 16) = v60;
  aBlock[4] = sub_1001F14E4;
  aBlock[5] = v76;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10037E5C4;
  aBlock[3] = &unk_10084BBD8;
  v77 = _Block_copy(aBlock);

  v78 = [v75 elementWithUncachedProvider:{v77, 0}];
  _Block_release(v77);
  sub_1000059F8(0, &qword_1008EB650);
  sub_100140278(&unk_1008E4E20);
  preferredElementSize = swift_allocObject();
  *(preferredElementSize + 16) = xmmword_1006D68D0;
  *(preferredElementSize + 32) = v74;
  *(preferredElementSize + 40) = v78;
  v111 = v74;
  v109 = v78;
  v80._countAndFlagsBits = 0;
  v80._object = 0xE000000000000000;
  v124.value.super.isa = 0;
  v124.is_nil = 0;
  v81.super.super.isa = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v80, 0, v124, 0, 0xFFFFFFFFFFFFFFFFLL, preferredElementSize, 0).super.super.isa;
  v82 = [objc_opt_self() configurationWithPointSize:5 weight:30.0];
  v83 = *&v60[v67];
  v84 = v82;
  v85 = String._bridgeToObjectiveC()();
  v86 = [v72 smm_systemImageNamed:v85 withConfiguration:v84];

  [v83 setImage:v86 forState:0];
  v87 = *&v60[v67];
  v88 = [v115 secondarySystemGroupedBackgroundColor];
  [v87 setBackgroundColor:v88];

  v89 = [*&v60[v67] layer];
  [v89 setMasksToBounds:1];

  [*&v60[v67] setMenu:v81.super.super.isa];
  v90 = *&v60[v67];
  v91 = UIColor.init(_colorLiteralRed:green:blue:alpha:)(0.0, 0.84706, 1.0, 1.0).super.isa;
  v92 = UIColor.init(_colorLiteralRed:green:blue:alpha:)(0.0, 1.0, 0.62727, 1.0).super.isa;
  v93 = objc_allocWithZone(v11);
  *&v93[OBJC_IVAR____TtC10FitnessApp14GradientColors_dark] = v91;
  *&v93[OBJC_IVAR____TtC10FitnessApp14GradientColors_light] = v92;
  v117.receiver = v93;
  v117.super_class = v11;
  v94 = objc_msgSendSuper2(&v117, "init");
  v95 = UIColor.init(_colorLiteralRed:green:blue:alpha:)(0.0, 1.0, 0.96471, 1.0).super.isa;
  v96 = objc_allocWithZone(v112);
  *&v96[OBJC_IVAR____TtC10FitnessApp12MetricColors_gradient] = v94;
  *&v96[OBJC_IVAR____TtC10FitnessApp12MetricColors_text] = v95;
  v116.receiver = v96;
  v116.super_class = v112;
  v97 = objc_msgSendSuper2(&v116, "init");
  v98 = *&v97[OBJC_IVAR____TtC10FitnessApp12MetricColors_text];

  [v90 setTintColor:v98];
  [*&v60[v67] setShowsMenuAsPrimaryAction:1];
  v99 = *&v60[v67];
  v100 = objc_opt_self();
  v101 = v99;
  v102 = [v100 sharedBehavior];
  if (v102)
  {
    v103 = v102;
    v104 = [v102 features];

    if (v104)
    {

      v105 = [v104 scheduledGoals];

      [v101 setHidden:v105 ^ 1];
      v106 = *&v60[v67];
      UIEdgeInsets.init(uniform:)();
      [v106 setContentEdgeInsets:?];

      sub_1001F03EC();
      v107 = [objc_opt_self() defaultCenter];
      [v107 addObserver:v60 selector:"updateFonts" name:UIContentSizeCategoryDidChangeNotification object:0];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1001EF4D8(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = sub_100140278(&qword_1008E1760);
  __chkstk_darwin(v6 - 8);
  v8 = &v14 - v7;
  v9 = type metadata accessor for TaskPriority();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  type metadata accessor for MainActor();
  v10 = a3;

  v11 = static MainActor.shared.getter();
  v12 = swift_allocObject();
  v12[2] = v11;
  v12[3] = &protocol witness table for MainActor;
  v12[4] = v10;
  v12[5] = a1;
  v12[6] = a2;
  sub_10026E198(0, 0, v8, &unk_1006DC8D0, v12);
}

uint64_t sub_1001EF61C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[5] = a5;
  v6[6] = a6;
  v6[4] = a4;
  v7 = sub_100140278(&qword_1008E0C90);
  v6[7] = v7;
  v6[8] = *(v7 - 8);
  v6[9] = swift_task_alloc();
  v8 = sub_100140278(&qword_1008E0C98);
  v6[10] = v8;
  v6[11] = *(v8 - 8);
  v6[12] = swift_task_alloc();
  v9 = sub_100140278(&qword_1008E0CA0);
  v6[13] = v9;
  v6[14] = *(v9 - 8);
  v6[15] = swift_task_alloc();
  type metadata accessor for MainActor();
  v6[16] = static MainActor.shared.getter();
  v11 = dispatch thunk of Actor.unownedExecutor.getter();
  v6[17] = v11;
  v6[18] = v10;

  return _swift_task_switch(sub_1001EF7F0, v11, v10);
}

uint64_t sub_1001EF7F0()
{
  v25 = [objc_allocWithZone(HKHealthStore) init];
  v0[19] = v25;
  swift_getKeyPath();
  SortDescriptor.init<A>(_:order:)();
  sub_1000059F8(0, &unk_1008E4E30);
  v1 = [swift_getObjCClassFromMetadata() activityGoalScheduleType];
  if (v1)
  {
    v3 = v1;
    v4 = v0[14];
    v24 = v0[15];
    v6 = v0[12];
    v5 = v0[13];
    v7 = v0[10];
    v8 = v0[11];
    sub_1000059F8(0, &qword_1008E04D0);
    static HKSamplePredicate.sample(type:predicate:)();

    sub_100140278(&qword_1008E0CA8);
    v9 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_1006D46C0;
    (*(v8 + 16))(v10 + v9, v6, v7);
    sub_100140278(&qword_1008E0CB0);
    v11 = (*(v4 + 80) + 32) & ~*(v4 + 80);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_1006D46C0;
    (*(v4 + 16))(v12 + v11, v24, v5);
    HKSampleQueryDescriptor.init(predicates:sortDescriptors:limit:)();
    v13 = objc_opt_self();
    v0[20] = v13;
    v14 = [v13 mainBundle];
    v15 = String._bridgeToObjectiveC()();
    v16 = [v14 localizedStringForKey:v15 value:0 table:0];

    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v18;
    v0[2] = v17;
    v0[3] = v18;

    v0[21] = v19;
    v20 = String._bridgeToObjectiveC()();
    v21 = objc_opt_self();
    v0[22] = v21;
    v0[23] = [v21 smm_systemImageNamed:v20];

    v22 = swift_task_alloc();
    v0[24] = v22;
    *v22 = v0;
    v22[1] = sub_1001EFB20;
    v2 = v0[7];
    v1 = v25;
  }

  else
  {
    __break(1u);
  }

  return HKSampleQueryDescriptor.result(for:)(v1, v2);
}

uint64_t sub_1001EFB20(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 200) = a1;
  *(v4 + 208) = v1;

  v5 = *(v3 + 144);
  v6 = *(v3 + 136);
  if (v1)
  {
    v7 = sub_1001F0034;
  }

  else
  {
    v7 = sub_1001EFC64;
  }

  return _swift_task_switch(v7, v6, v5);
}

uint64_t sub_1001EFC64()
{
  v1 = v0[25];

  if (v1 >> 62)
  {
    goto LABEL_15;
  }

  for (i = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v3 = 0;
    v4 = v1 & 0xC000000000000001;
    v5 = v1 & 0xFFFFFFFFFFFFFF8;
    v6 = v0[25] + 32;
    while (1)
    {
      if (v4)
      {
        v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v3 >= *(v5 + 16))
        {
          goto LABEL_14;
        }

        v7 = *(v6 + 8 * v3);
      }

      v1 = v7;
      v8 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        break;
      }

      objc_opt_self();
      v9 = swift_dynamicCastObjCClass();
      if (v9 && [v9 goalType] == 3)
      {
        v10 = v0[22];
        v11 = v0[23];
        v12 = v0[20];

        v13 = [v12 mainBundle];
        v14 = String._bridgeToObjectiveC()();
        v15 = [v13 localizedStringForKey:v14 value:0 table:0];

        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v16 = String._bridgeToObjectiveC()();
        v17 = [v10 smm_systemImageNamed:v16];

        goto LABEL_17;
      }

      ++v3;
      if (v8 == i)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    ;
  }

LABEL_16:

  v17 = v0[23];
LABEL_17:
  v29 = v0[19];
  v19 = v0[14];
  v18 = v0[15];
  v33 = v0[12];
  v34 = v0[13];
  v20 = v0[11];
  v32 = v0[10];
  v21 = v0[8];
  v30 = v0[7];
  v31 = v0[9];
  v28 = v0[5];
  sub_1000059F8(0, &qword_1008E0C88);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v22 = v17;
  v23 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  sub_100140278(&unk_1008E4E20);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_1006D4E70;
  *(v24 + 32) = v23;
  v25 = v23;
  v28(v24);

  (*(v21 + 8))(v31, v30);
  (*(v20 + 8))(v33, v32);
  (*(v19 + 8))(v18, v34);

  v26 = v0[1];

  return v26();
}

uint64_t sub_1001F0034()
{

  v1 = v0[23];
  v12 = v0[19];
  v2 = v0[14];
  v17 = v0[13];
  v18 = v0[15];
  v3 = v0[11];
  v15 = v0[10];
  v16 = v0[12];
  v4 = v0[8];
  v13 = v0[7];
  v14 = v0[9];
  v11 = v0[5];
  sub_1000059F8(0, &qword_1008E0C88);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v5 = v1;
  v6 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  sub_100140278(&unk_1008E4E20);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1006D4E70;
  *(v7 + 32) = v6;
  v8 = v6;
  v11(v7);

  (*(v4 + 8))(v14, v13);
  (*(v3 + 8))(v16, v15);
  (*(v2 + 8))(v18, v17);

  v9 = v0[1];

  return v9();
}

void sub_1001F0250(uint64_t a1, uint64_t a2, char a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = *(Strong + OBJC_IVAR____TtC10FitnessApp30DayViewStandChartTableViewCell_onEditGoal);
    v6 = Strong;
    sub_10000B210(v5);

    if (v5)
    {
      v5(a3 & 1);
      sub_1000245E0(v5);
    }
  }
}

void sub_1001F03EC()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC10FitnessApp30DayViewStandChartTableViewCell_labelPair];
  v3 = [v2 leadingAnchor];
  v4 = [v0 contentView];
  v5 = [v4 leadingAnchor];

  v63 = [v3 constraintEqualToAnchor:v5 constant:16.0];
  v6 = [v2 trailingAnchor];
  v7 = [v1 contentView];
  v8 = [v7 trailingAnchor];

  v61 = [v6 constraintEqualToAnchor:v8 constant:-16.0];
  v9 = [v2 topAnchor];
  v10 = [v1 contentView];
  v11 = [v10 topAnchor];

  v59 = [v9 constraintEqualToAnchor:v11];
  v12 = *&v1[OBJC_IVAR____TtC10FitnessApp30DayViewStandChartTableViewCell_chartView];
  v13 = [v12 leadingAnchor];
  v14 = [v1 contentView];
  v15 = [v14 leadingAnchor];

  v57 = [v13 constraintEqualToAnchor:v15 constant:16.0];
  v16 = [v12 trailingAnchor];
  v17 = [v1 contentView];
  v18 = [v17 trailingAnchor];

  v55 = [v16 constraintEqualToAnchor:v18 constant:-16.0];
  v19 = [v12 topAnchor];
  v20 = [v2 bottomAnchor];
  v54 = [v19 constraintEqualToAnchor:v20];

  v21 = *&v1[OBJC_IVAR____TtC10FitnessApp30DayViewStandChartTableViewCell_idleHoursLabel];
  v22 = [v21 leadingAnchor];
  v23 = [v1 contentView];
  v24 = [v23 leadingAnchor];

  v53 = [v22 constraintEqualToAnchor:v24 constant:16.0];
  v25 = [v21 trailingAnchor];
  v26 = [v1 contentView];
  v27 = [v26 trailingAnchor];

  v52 = [v25 constraintEqualToAnchor:v27 constant:-16.0];
  v28 = [v21 topAnchor];
  v29 = [v12 bottomAnchor];
  v51 = [v28 constraintEqualToAnchor:v29 constant:0.0];

  v30 = [v21 bottomAnchor];
  v31 = [v1 contentView];
  v32 = [v31 bottomAnchor];

  v68 = [v30 constraintEqualToAnchor:v32 constant:-27.0];
  v33 = *&v1[OBJC_IVAR____TtC10FitnessApp30DayViewStandChartTableViewCell_editGoalButton];
  v34 = [v33 centerYAnchor];
  v35 = [*&v2[OBJC_IVAR____TtC10FitnessApp29DayViewTitleAndValueLabelPair_valueLabel] centerYAnchor];
  v67 = [v34 constraintEqualToAnchor:v35];

  v36 = [v33 trailingAnchor];
  v37 = [v1 contentView];
  v38 = [v37 trailingAnchor];

  v66 = [v36 constraintEqualToAnchor:v38 constant:-16.0];
  v39 = [v33 heightAnchor];
  v40 = [v33 widthAnchor];
  v65 = [v39 constraintEqualToAnchor:v40];

  v50 = objc_opt_self();
  sub_100140278(&unk_1008E4E20);
  v41 = swift_allocObject();
  *(v41 + 16) = xmmword_1006DBF20;
  *(v41 + 32) = v63;
  *(v41 + 40) = v61;
  *(v41 + 48) = v59;
  *(v41 + 56) = v57;
  *(v41 + 64) = v55;
  *(v41 + 72) = v54;
  *(v41 + 80) = v53;
  *(v41 + 88) = v52;
  *(v41 + 96) = v51;
  *(v41 + 104) = v68;
  *(v41 + 112) = v67;
  *(v41 + 120) = v66;
  *(v41 + 128) = v65;
  sub_1000059F8(0, &qword_1008DC980);
  v64 = v63;
  v62 = v61;
  v60 = v59;
  v58 = v57;
  v56 = v55;
  v42 = v54;
  v43 = v53;
  v44 = v52;
  v45 = v51;
  v46 = v68;
  v47 = v67;
  v48 = v66;
  v49 = v65;
  v69.super.isa = Array._bridgeToObjectiveC()().super.isa;

  [v50 activateConstraints:v69.super.isa];
}

uint64_t sub_1001F0B98(void *a1)
{
  v2 = v1;
  *(v1 + OBJC_IVAR____TtC10FitnessApp30DayViewStandChartTableViewCell_isWheelchair) = 0;
  v3 = [objc_allocWithZone(type metadata accessor for DayViewTitleAndValueLabelPair()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  v4 = [objc_opt_self() labelColor];
  v5 = *&v3[OBJC_IVAR____TtC10FitnessApp29DayViewTitleAndValueLabelPair_titleLabelTextColor];
  *&v3[OBJC_IVAR____TtC10FitnessApp29DayViewTitleAndValueLabelPair_titleLabelTextColor] = v4;
  v6 = v4;

  v55 = OBJC_IVAR____TtC10FitnessApp29DayViewTitleAndValueLabelPair_titleLabel;
  [*&v3[OBJC_IVAR____TtC10FitnessApp29DayViewTitleAndValueLabelPair_titleLabel] setTextColor:v6];

  sub_1000059F8(0, &qword_1008E7FC0);
  isa = UIColor.init(_colorLiteralRed:green:blue:alpha:)(0.0, 0.84706, 1.0, 1.0).super.isa;
  v8 = UIColor.init(_colorLiteralRed:green:blue:alpha:)(0.0, 1.0, 0.62727, 1.0).super.isa;
  v9 = type metadata accessor for GradientColors();
  v10 = objc_allocWithZone(v9);
  *&v10[OBJC_IVAR____TtC10FitnessApp14GradientColors_dark] = isa;
  *&v10[OBJC_IVAR____TtC10FitnessApp14GradientColors_light] = v8;
  v61.receiver = v10;
  v61.super_class = v9;
  v11 = objc_msgSendSuper2(&v61, "init");
  v12 = UIColor.init(_colorLiteralRed:green:blue:alpha:)(0.0, 1.0, 0.96471, 1.0).super.isa;
  v13 = type metadata accessor for MetricColors();
  v14 = objc_allocWithZone(v13);
  *&v14[OBJC_IVAR____TtC10FitnessApp12MetricColors_gradient] = v11;
  *&v14[OBJC_IVAR____TtC10FitnessApp12MetricColors_text] = v12;
  v60.receiver = v14;
  v60.super_class = v13;
  v15 = objc_msgSendSuper2(&v60, "init");
  v16 = *&v15[OBJC_IVAR____TtC10FitnessApp12MetricColors_text];

  v17 = *&v3[OBJC_IVAR____TtC10FitnessApp29DayViewTitleAndValueLabelPair_valueLabelTextColor];
  *&v3[OBJC_IVAR____TtC10FitnessApp29DayViewTitleAndValueLabelPair_valueLabelTextColor] = v16;
  v18 = v16;

  [*&v3[OBJC_IVAR____TtC10FitnessApp29DayViewTitleAndValueLabelPair_valueLabel] setTextColor:v18];
  v56 = objc_opt_self();
  v19 = [v56 mainBundle];
  v20 = String._bridgeToObjectiveC()();
  v21 = [v19 localizedStringForKey:v20 value:0 table:0];

  v22 = v21;
  if (!v21)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v22 = String._bridgeToObjectiveC()();
  }

  v23 = OBJC_IVAR____TtC10FitnessApp30DayViewStandChartTableViewCell_labelPair;
  v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v26 = v25;

  v27 = &v3[OBJC_IVAR____TtC10FitnessApp29DayViewTitleAndValueLabelPair_titleText];
  *v27 = v24;
  v27[1] = v26;

  v28 = *&v3[v55];

  [v28 setText:v22];

  *(v2 + v23) = v3;
  v29 = OBJC_IVAR____TtC10FitnessApp30DayViewStandChartTableViewCell_idleHoursLabel;
  v30 = [objc_allocWithZone(UILabel) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  [v30 setTranslatesAutoresizingMaskIntoConstraints:0];
  v31 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleCaption1];
  v32 = UILabel.withFont(_:)();

  v33 = UIColor.init(_colorLiteralRed:green:blue:alpha:)(0.0, 0.84706, 1.0, 1.0).super.isa;
  v34 = UIColor.init(_colorLiteralRed:green:blue:alpha:)(0.0, 1.0, 0.62727, 1.0).super.isa;
  v35 = objc_allocWithZone(v9);
  *&v35[OBJC_IVAR____TtC10FitnessApp14GradientColors_dark] = v33;
  *&v35[OBJC_IVAR____TtC10FitnessApp14GradientColors_light] = v34;
  v59.receiver = v35;
  v59.super_class = v9;
  v36 = objc_msgSendSuper2(&v59, "init");
  v37 = UIColor.init(_colorLiteralRed:green:blue:alpha:)(0.0, 1.0, 0.96471, 1.0).super.isa;
  v38 = objc_allocWithZone(v13);
  *&v38[OBJC_IVAR____TtC10FitnessApp12MetricColors_gradient] = v36;
  *&v38[OBJC_IVAR____TtC10FitnessApp12MetricColors_text] = v37;
  v58.receiver = v38;
  v58.super_class = v13;
  v39 = objc_msgSendSuper2(&v58, "init");
  v40 = *&v39[OBJC_IVAR____TtC10FitnessApp12MetricColors_text];

  v41 = UILabel.withTextColor(_:)();
  v42 = v41;
  LODWORD(v43) = 1148846080;
  [v42 setContentCompressionResistancePriority:1 forAxis:v43];
  LODWORD(v44) = 1148846080;
  [v42 setContentHuggingPriority:1 forAxis:v44];

  v45 = [v56 mainBundle];
  v46 = String._bridgeToObjectiveC()();
  v47 = [v45 localizedStringForKey:v46 value:0 table:0];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v48 = String._bridgeToObjectiveC()();
  [v42 setText:v48];

  *(v2 + v29) = v42;
  v49 = OBJC_IVAR____TtC10FitnessApp30DayViewStandChartTableViewCell_editGoalButton;
  v50 = [objc_allocWithZone(UIButton) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  [v50 setTranslatesAutoresizingMaskIntoConstraints:0];
  *(v2 + v49) = v50;
  v51 = OBJC_IVAR____TtC10FitnessApp30DayViewStandChartTableViewCell_chartView;
  type metadata accessor for ActivityStandChartView();
  v52 = sub_10065AF60();

  *(v2 + v51) = v52;
  *(v2 + OBJC_IVAR____TtC10FitnessApp30DayViewStandChartTableViewCell_nBins) = 24;
  *(v2 + OBJC_IVAR____TtC10FitnessApp30DayViewStandChartTableViewCell_chartData) = 0;
  v53 = (v2 + OBJC_IVAR____TtC10FitnessApp30DayViewStandChartTableViewCell_onEditGoal);
  *v53 = 0;
  v53[1] = 0;
  *(v2 + OBJC_IVAR____TtC10FitnessApp30DayViewStandChartTableViewCell_isToday) = 0;
  *(v2 + OBJC_IVAR____TtC10FitnessApp30DayViewStandChartTableViewCell_chartBuckets) = 0;

  sub_1000245E0(*v53);

  type metadata accessor for DayViewStandChartTableViewCell();
  swift_deallocPartialClassInstance();
  return 0;
}

id sub_1001F1364()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DayViewStandChartTableViewCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1001F145C(uint64_t a1)
{
  v2 = sub_100140278(&unk_1008F73A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1001F14EC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10002BACC;

  return sub_1001EF61C(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1001F15E0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10002BBC0;

  return sub_1001F1670();
}

uint64_t sub_1001F1670()
{
  *(v1 + 408) = v0;

  return _swift_task_switch(sub_1001F1700, 0, 0);
}

uint64_t sub_1001F1700()
{
  v54 = v0;
  v1 = *(*(v0 + 408) + 16);
  *(v0 + 400) = 0;
  v2 = [v1 allAuthKitAccountsWithError:v0 + 400];
  v3 = *(v0 + 400);
  if (!v2)
  {
    v17 = v3;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    v18 = static os_log_type_t.error.getter();
    v19 = HKLogActivity;
    if (os_log_type_enabled(HKLogActivity, v18))
    {
      v20 = v19;
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      *v21 = 138412290;
      swift_errorRetain();
      v23 = _swift_stdlib_bridgeErrorToNSError();
      *(v21 + 4) = v23;
      *v22 = v23;
      _os_log_impl(&_mh_execute_header, v20, v18, "Error while fetching account devices %@", v21, 0xCu);
      sub_1001F3454(v22);
    }

    else
    {
    }

LABEL_41:
    v51 = *(v0 + 8);

    return v51();
  }

  v4 = v2;
  sub_1000059F8(0, &qword_1008E0D98);
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v3;

  v7 = _swiftEmptyArrayStorage;
  v53 = _swiftEmptyArrayStorage;
  if (v5 >> 62)
  {
LABEL_23:
    v8 = _CocoaArrayWrapper.endIndex.getter();
    *(v0 + 416) = v7;
    if (v8)
    {
LABEL_4:
      v9 = 0;
      do
      {
        v10 = v9;
        while (1)
        {
          if ((v5 & 0xC000000000000001) != 0)
          {
            v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v10 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_22;
            }

            v11 = *(v5 + 8 * v10 + 32);
          }

          v12 = v11;
          v9 = v10 + 1;
          if (__OFADD__(v10, 1))
          {
            __break(1u);
LABEL_22:
            __break(1u);
            goto LABEL_23;
          }

          v13 = [v11 aa_altDSID];
          if (v13)
          {
            break;
          }

          ++v10;
          if (v9 == v8)
          {
            goto LABEL_24;
          }
        }

        v14 = v13;
        v15 = [objc_allocWithZone(AKDeviceListRequestContext) init];
        [v15 setAltDSID:v14];

        isa = Array._bridgeToObjectiveC()().super.isa;
        [v15 setOperatingSystems:isa];

        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v53 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v53 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v7 = v53;
        *(v0 + 416) = v53;
      }

      while (v9 != v8);
    }
  }

  else
  {
    v8 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    *(v0 + 416) = _swiftEmptyArrayStorage;
    if (v8)
    {
      goto LABEL_4;
    }
  }

LABEL_24:

  if (v7 >> 62)
  {
    goto LABEL_45;
  }

  for (i = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {
    *(v0 + 424) = i;
    if (i)
    {
      break;
    }

    v27 = _swiftEmptyArrayStorage[2];
    if (!v27)
    {
LABEL_36:
      v47 = *(*(v0 + 408) + 32);
      *(swift_task_alloc() + 16) = _swiftEmptyArrayStorage;
      os_unfair_lock_lock((v47 + 24));
      sub_1001F3524((v47 + 16));
      os_unfair_lock_unlock((v47 + 24));

      goto LABEL_41;
    }

    v28 = 0;
    v29 = &_swiftEmptyArrayStorage[4];
    v30 = &HKLogActivity;
    v52 = _swiftEmptyArrayStorage[2];
    while (v28 < _swiftEmptyArrayStorage[2])
    {
      v31 = v29[1];
      *(v0 + 16) = *v29;
      *(v0 + 32) = v31;
      v32 = v29[2];
      v33 = v29[3];
      v34 = v29[5];
      *(v0 + 80) = v29[4];
      *(v0 + 96) = v34;
      *(v0 + 48) = v32;
      *(v0 + 64) = v33;
      sub_1001F34BC(v0 + 16, v0 + 112);
      v35 = static os_log_type_t.default.getter();
      v36 = *v30;
      if (os_log_type_enabled(*v30, v35))
      {
        v37 = v36;
        v38 = v30;
        v39 = swift_slowAlloc();
        v40 = swift_slowAlloc();
        v53 = v40;
        *v39 = 136315138;
        v41 = *(v0 + 64);
        *(v0 + 240) = *(v0 + 48);
        *(v0 + 256) = v41;
        v42 = *(v0 + 96);
        *(v0 + 272) = *(v0 + 80);
        *(v0 + 288) = v42;
        v43 = *(v0 + 32);
        *(v0 + 208) = *(v0 + 16);
        *(v0 + 224) = v43;
        sub_1001F34BC(v0 + 16, v0 + 304);
        v44 = String.init<A>(describing:)();
        v46 = sub_10000AFDC(v44, v45, &v53);

        *(v39 + 4) = v46;
        _os_log_impl(&_mh_execute_header, v37, v35, "Loaded account device %s", v39, 0xCu);
        sub_100005A40(v40);

        v30 = v38;
        v27 = v52;
      }

      sub_1001F34F4(v0 + 16);
      ++v28;
      v29 += 6;
      if (v27 == v28)
      {
        goto LABEL_36;
      }
    }

    __break(1u);
LABEL_45:
    ;
  }

  if (i < 1)
  {
    __break(1u);
  }

  *(v0 + 432) = 0;
  *(v0 + 440) = _swiftEmptyArrayStorage;
  v25 = *(v0 + 416);
  if ((v25 & 0xC000000000000001) != 0)
  {
    v26 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    v26 = *(v25 + 32);
  }

  v48 = v26;
  *(v0 + 448) = v26;
  v49 = swift_task_alloc();
  *(v0 + 456) = v49;
  *v49 = v0;
  v49[1] = sub_1001F1D98;

  return sub_1001F27C4(v48);
}

uint64_t sub_1001F1D98(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 464) = a1;
  *(v3 + 472) = v1;

  if (v1)
  {
    v4 = sub_1001F233C;
  }

  else
  {
    v4 = sub_1001F1ED8;
  }

  return _swift_task_switch(v4, 0, 0);
}

void sub_1001F1ED8()
{
  v42 = v0;
  v1 = *(v0 + 464);
  v2 = *(v1 + 16);
  v3 = *(*(v0 + 440) + 16);
  v4 = v3 + v2;
  if (__OFADD__(v3, v2))
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v0 + 440);
  if (isUniquelyReferenced_nonNull_native && (v7 = *(v6 + 3) >> 1, v7 >= v4))
  {
    if (*(v1 + 16))
    {
LABEL_5:
      if (v7 - *(v6 + 2) < v2)
      {
LABEL_35:
        __break(1u);
LABEL_36:
        __break(1u);
      }

      swift_arrayInitWithCopy();

      if (v2)
      {
        v8 = *(v6 + 2);
        v9 = __OFADD__(v8, v2);
        v10 = v8 + v2;
        if (v9)
        {
          goto LABEL_36;
        }

        *(v6 + 2) = v10;
      }

      goto LABEL_14;
    }
  }

  else
  {
    if (v3 <= v4)
    {
      v11 = v3 + v2;
    }

    else
    {
      v11 = v3;
    }

    v6 = sub_1001A2030(isUniquelyReferenced_nonNull_native, v11, 1, *(v0 + 440));
    v7 = *(v6 + 3) >> 1;
    if (*(v1 + 16))
    {
      goto LABEL_5;
    }
  }

  if (v2)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

LABEL_14:

  v12 = *(v0 + 432) + 1;
  if (v12 == *(v0 + 424))
  {
    v38 = *(v0 + 472);

    v13 = *(v6 + 2);
    if (v13)
    {
      v14 = 0;
      v15 = v6 + 32;
      v16 = &HKLogActivity;
      v39 = v6;
      while (v14 < *(v6 + 2))
      {
        v17 = v15[1];
        *(v0 + 16) = *v15;
        *(v0 + 32) = v17;
        v18 = v15[2];
        v19 = v15[3];
        v20 = v15[5];
        *(v0 + 80) = v15[4];
        *(v0 + 96) = v20;
        *(v0 + 48) = v18;
        *(v0 + 64) = v19;
        sub_1001F34BC(v0 + 16, v0 + 112);
        v21 = static os_log_type_t.default.getter();
        v22 = *v16;
        if (os_log_type_enabled(*v16, v21))
        {
          log = v22;
          v23 = swift_slowAlloc();
          v24 = swift_slowAlloc();
          v41 = v24;
          *v23 = 136315138;
          v25 = *(v0 + 64);
          *(v0 + 240) = *(v0 + 48);
          *(v0 + 256) = v25;
          v26 = *(v0 + 96);
          *(v0 + 272) = *(v0 + 80);
          *(v0 + 288) = v26;
          v27 = *(v0 + 32);
          *(v0 + 208) = *(v0 + 16);
          *(v0 + 224) = v27;
          sub_1001F34BC(v0 + 16, v0 + 304);
          v28 = String.init<A>(describing:)();
          v30 = v16;
          v31 = sub_10000AFDC(v28, v29, &v41);

          *(v23 + 4) = v31;
          v16 = v30;
          _os_log_impl(&_mh_execute_header, log, v21, "Loaded account device %s", v23, 0xCu);
          sub_100005A40(v24);

          v6 = v39;
        }

        sub_1001F34F4(v0 + 16);
        ++v14;
        v15 += 6;
        if (v13 == v14)
        {
          goto LABEL_23;
        }
      }

      __break(1u);
      goto LABEL_33;
    }

LABEL_23:
    v34 = *(*(v0 + 408) + 32);
    *(swift_task_alloc() + 16) = v6;
    os_unfair_lock_lock((v34 + 24));
    sub_1001F3524((v34 + 16));
    os_unfair_lock_unlock((v34 + 24));
    if (!v38)
    {

      v37 = *(v0 + 8);

      v37();
    }
  }

  else
  {
    *(v0 + 432) = v12;
    *(v0 + 440) = v6;
    v32 = *(v0 + 416);
    if ((v32 & 0xC000000000000001) != 0)
    {
      v33 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v33 = *(v32 + 8 * v12 + 32);
    }

    v35 = v33;
    *(v0 + 448) = v33;
    v36 = swift_task_alloc();
    *(v0 + 456) = v36;
    *v36 = v0;
    v36[1] = sub_1001F1D98;

    sub_1001F27C4(v35);
  }
}

uint64_t sub_1001F233C()
{
  v39 = v0;
  v1 = static os_log_type_t.error.getter();
  v2 = HKLogActivity;
  v3 = os_log_type_enabled(HKLogActivity, v1);
  v4 = *(v0 + 448);
  if (v3)
  {
    v5 = v2;
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412546;
    *(v6 + 4) = v4;
    *v7 = v4;
    *(v6 + 12) = 2112;
    v8 = v4;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 14) = v9;
    v7[1] = v9;
    _os_log_impl(&_mh_execute_header, v5, v1, "Error while fetching account device: %@ %@", v6, 0x16u);
    sub_100140278(&unk_1008DB8B0);
    swift_arrayDestroy();
  }

  else
  {
  }

  v10 = *(v0 + 432) + 1;
  if (v10 == *(v0 + 424))
  {
    v11 = *(v0 + 440);

    v12 = *(v11 + 16);
    if (v12)
    {
      v13 = 0;
      v14 = (v11 + 32);
      v37 = v11;
      do
      {
        if (v13 >= *(v11 + 16))
        {
          __break(1u);
        }

        v15 = v14[1];
        *(v0 + 16) = *v14;
        *(v0 + 32) = v15;
        v16 = v14[2];
        v17 = v14[3];
        v18 = v14[5];
        *(v0 + 80) = v14[4];
        *(v0 + 96) = v18;
        *(v0 + 48) = v16;
        *(v0 + 64) = v17;
        sub_1001F34BC(v0 + 16, v0 + 112);
        v19 = static os_log_type_t.default.getter();
        v20 = HKLogActivity;
        if (os_log_type_enabled(HKLogActivity, v19))
        {
          v21 = v20;
          v22 = swift_slowAlloc();
          v23 = swift_slowAlloc();
          v38 = v23;
          *v22 = 136315138;
          v24 = *(v0 + 64);
          *(v0 + 240) = *(v0 + 48);
          *(v0 + 256) = v24;
          v25 = *(v0 + 96);
          *(v0 + 272) = *(v0 + 80);
          *(v0 + 288) = v25;
          v26 = *(v0 + 32);
          *(v0 + 208) = *(v0 + 16);
          *(v0 + 224) = v26;
          sub_1001F34BC(v0 + 16, v0 + 304);
          v27 = String.init<A>(describing:)();
          v29 = sub_10000AFDC(v27, v28, &v38);

          *(v22 + 4) = v29;
          _os_log_impl(&_mh_execute_header, v21, v19, "Loaded account device %s", v22, 0xCu);
          sub_100005A40(v23);
          v11 = v37;
        }

        sub_1001F34F4(v0 + 16);
        ++v13;
        v14 += 6;
      }

      while (v12 != v13);
    }

    v32 = *(*(v0 + 408) + 32);
    *(swift_task_alloc() + 16) = v11;
    os_unfair_lock_lock((v32 + 24));
    sub_1001F3524((v32 + 16));
    os_unfair_lock_unlock((v32 + 24));

    v36 = *(v0 + 8);

    return v36();
  }

  else
  {
    *(v0 + 432) = v10;
    v30 = *(v0 + 416);
    if ((v30 & 0xC000000000000001) != 0)
    {
      v31 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v31 = *(v30 + 8 * v10 + 32);
    }

    v33 = v31;
    *(v0 + 448) = v31;
    v34 = swift_task_alloc();
    *(v0 + 456) = v34;
    *v34 = v0;
    v34[1] = sub_1001F1D98;

    return sub_1001F27C4(v33);
  }
}

uint64_t sub_1001F27C4(uint64_t a1)
{
  *(v2 + 248) = a1;
  *(v2 + 256) = v1;
  return _swift_task_switch(sub_1001F27E4, 0, 0);
}

uint64_t sub_1001F27E4()
{
  v1 = *(v0[32] + 24);
  v0[33] = v1;
  if (v1)
  {
    v2 = v0[31];
    v0[2] = v0;
    v0[7] = v0 + 30;
    v0[3] = sub_1001F29A8;
    v3 = swift_continuation_init();
    v0[29] = sub_100140278(&qword_1008E0D88);
    v0[22] = _NSConcreteStackBlock;
    v0[23] = 1107296256;
    v0[24] = sub_1001F2D4C;
    v0[25] = &unk_10084BCE0;
    v0[26] = v3;
    [v1 deviceListWithContext:v2 completion:v0 + 22];

    return _swift_continuation_await(v0 + 2);
  }

  else
  {
    static os_log_type_t.default.getter();
    v4 = HKLogActivity;
    os_log(_:dso:log:_:_:)();

    v5 = v0[1];

    return v5(_swiftEmptyArrayStorage);
  }
}

uint64_t sub_1001F29A8()
{
  v1 = *(*v0 + 48);
  *(*v0 + 272) = v1;
  if (v1)
  {
    v2 = sub_1001F2CDC;
  }

  else
  {
    v2 = sub_1001F2AB8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1001F2AB8()
{
  v1 = *(v0 + 240);
  if (v1 && (v2 = [*(v0 + 240) deviceList]) != 0)
  {
    v3 = v2;
    v20 = v1;
    sub_1000059F8(0, &qword_1008E0D90);
    v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v4 >> 62)
    {
      goto LABEL_21;
    }

    for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
    {
      v6 = 0;
      v7 = _swiftEmptyArrayStorage;
      while ((v4 & 0xC000000000000001) != 0)
      {
        v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v9 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          goto LABEL_19;
        }

LABEL_9:
        sub_1001F3288(v8, (v0 + 80));
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v7 = sub_1001A2030(0, *(v7 + 2) + 1, 1, v7);
        }

        v11 = *(v7 + 2);
        v10 = *(v7 + 3);
        if (v11 >= v10 >> 1)
        {
          v7 = sub_1001A2030((v10 > 1), v11 + 1, 1, v7);
        }

        *(v7 + 2) = v11 + 1;
        v12 = &v7[96 * v11];
        v13 = *(v0 + 96);
        *(v12 + 2) = *(v0 + 80);
        *(v12 + 3) = v13;
        v14 = *(v0 + 112);
        v15 = *(v0 + 128);
        v16 = *(v0 + 160);
        *(v12 + 6) = *(v0 + 144);
        *(v12 + 7) = v16;
        *(v12 + 4) = v14;
        *(v12 + 5) = v15;
        ++v6;
        if (v9 == i)
        {
          goto LABEL_23;
        }
      }

      if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_20;
      }

      v8 = *(v4 + 8 * v6 + 32);
      v9 = v6 + 1;
      if (!__OFADD__(v6, 1))
      {
        goto LABEL_9;
      }

LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      ;
    }

    v7 = _swiftEmptyArrayStorage;
LABEL_23:
    v17 = *(v0 + 264);

    v1 = v20;
  }

  else
  {
    v17 = *(v0 + 264);
    v7 = _swiftEmptyArrayStorage;
  }

  v18 = *(v0 + 8);

  return v18(v7);
}

uint64_t sub_1001F2CDC()
{
  v1 = *(v0 + 264);
  swift_willThrow();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1001F2D4C(uint64_t a1, void *a2, void *a3)
{
  v5 = *sub_1000066AC((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_100140278(&qword_1008EB640);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return _swift_continuation_throwingResumeWithError(v5, v6);
  }

  else
  {
    **(*(v5 + 64) + 40) = a2;
    v9 = a2;

    return _swift_continuation_throwingResume(v5);
  }
}

uint64_t sub_1001F2E1C()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1001F2E88()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10002BACC;

  return sub_1001F1670();
}

__n128 sub_1001F30E0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t sub_1001F30FC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 96))
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

uint64_t sub_1001F3158(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 96) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 96) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_1001F31D4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10002BACC;

  return sub_1001F2E88();
}

void sub_1001F3288(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = [a1 name];
  if (v4)
  {
    v5 = v4;
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v34 = v7;
    v35 = v6;
  }

  else
  {
    v34 = 0;
    v35 = 0;
  }

  v8 = [a1 buildNumber];
  if (v8)
  {
    v9 = v8;
    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v32 = v11;
    v33 = v10;
  }

  else
  {
    v32 = 0;
    v33 = 0;
  }

  v12 = [a1 serialNumber];
  if (v12)
  {
    v13 = v12;
    v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;
  }

  else
  {
    v31 = 0;
    v15 = 0;
  }

  v16 = [a1 operatingSystemName];
  if (v16)
  {
    v17 = v16;
    v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v20 = v19;
  }

  else
  {
    v18 = 0;
    v20 = 0;
  }

  v21 = [a1 operatingSystemVersion];
  if (v21)
  {
    v22 = v21;
    v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v25 = v24;
  }

  else
  {
    v23 = 0;
    v25 = 0;
  }

  v26 = [a1 model];
  if (v26)
  {
    v27 = v26;
    v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v30 = v29;
  }

  else
  {

    v28 = 0;
    v30 = 0;
  }

  *a2 = v35;
  a2[1] = v34;
  a2[2] = v31;
  a2[3] = v15;
  a2[4] = v33;
  a2[5] = v32;
  a2[6] = v18;
  a2[7] = v20;
  a2[8] = v23;
  a2[9] = v25;
  a2[10] = v28;
  a2[11] = v30;
}

uint64_t sub_1001F3454(uint64_t a1)
{
  v2 = sub_100140278(&unk_1008DB8B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1001F3524(void *a1)
{
  v3 = *(v1 + 16);

  *a1 = v3;
}

uint64_t type metadata accessor for MetricDetailHeaderView()
{
  result = qword_1008E0DF8;
  if (!qword_1008E0DF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1001F35E0()
{
  type metadata accessor for AttributedString();
  if (v0 <= 0x3F)
  {
    sub_1001F36D8(319, &qword_1008E0E08);
    if (v1 <= 0x3F)
    {
      sub_1001F36D8(319, &qword_1008E0E10);
      if (v2 <= 0x3F)
      {
        sub_1001F3724();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1001F36D8(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = type metadata accessor for Binding();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void sub_1001F3724()
{
  if (!qword_1008E0E18)
  {
    type metadata accessor for Date();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1008E0E18);
    }
  }
}

uint64_t sub_1001F3798()
{
  v0 = type metadata accessor for Font.Leading();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100140278(&qword_1008DC448);
  __chkstk_darwin(v4 - 8);
  v6 = &v16 - v5;
  v7 = type metadata accessor for Font.TextStyle();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 104))(v10, enum case for Font.TextStyle.subheadline(_:), v7);
  v11 = enum case for Font.Design.default(_:);
  v12 = type metadata accessor for Font.Design();
  v13 = *(v12 - 8);
  (*(v13 + 104))(v6, v11, v12);
  (*(v13 + 56))(v6, 0, 1, v12);
  static Font.Weight.semibold.getter();
  static Font.system(_:design:weight:)();
  sub_10000EA04(v6, &qword_1008DC448);
  (*(v8 + 8))(v10, v7);
  (*(v1 + 104))(v3, enum case for Font.Leading.tight(_:), v0);
  v14 = Font.leading(_:)();

  result = (*(v1 + 8))(v3, v0);
  qword_100925210 = v14;
  return result;
}

uint64_t sub_1001F3A68@<X0>(char *a1@<X0>, _OWORD *a2@<X8>)
{
  v117 = a2;
  v3 = sub_100140278(&unk_1008F73A0);
  __chkstk_darwin(v3 - 8);
  v106 = &v105 - v4;
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  v108 = v5;
  v109 = v6;
  __chkstk_darwin(v5);
  v107 = &v105 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for AttributedString();
  v116 = v8;
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v105 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for MetricDetailHeaderView();
  v13 = *(v12 + 20);
  v110 = a1;
  *&v111 = v12;
  v14 = *(v9 + 16);
  v115 = v9 + 16;
  *v120 = v14;
  v14(v11, &a1[v13], v8);
  v15 = Text.init(_:)();
  v17 = v16;
  LOBYTE(v9) = v18;
  v19 = Text.tracking(_:)();
  v21 = v20;
  LOBYTE(a1) = v22;
  sub_10004642C(v15, v17, v9 & 1);

  LODWORD(v177) = static HierarchicalShapeStyle.secondary.getter();
  v23 = Text.foregroundStyle<A>(_:)();
  v122 = v24;
  LOBYTE(v9) = v25;
  v27 = v26;
  v28 = v21;
  v29 = v110;
  sub_10004642C(v19, v28, a1 & 1);

  v30 = static Edge.Set.all.getter();
  EdgeInsets.init(_all:)();
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v38 = v37;
  v39 = v9 & 1;
  v40 = v111;
  v121 = v39;
  LOBYTE(v177) = v39;
  LOBYTE(v168) = 0;
  (*v120)(v11, &v29[*(v111 + 28)], v116);
  v41 = Text.init(_:)();
  v114 = v42;
  v115 = v41;
  LOBYTE(a1) = v43;
  v116 = v44;
  v113 = static Edge.Set.all.getter();
  v120[0] = a1 & 1;
  LOBYTE(v177) = a1 & 1;
  LOBYTE(v168) = 0;
  v45 = &v29[v40[9]];
  v46 = *v45;
  v47 = *(v45 + 2);
  LOBYTE(v45) = v45[24];
  v177 = v46;
  *&v178 = v47;
  BYTE8(v178) = v45;
  sub_100140278(&qword_1008E0E68);
  Binding.wrappedValue.getter();
  v119 = v23;
  v118 = v30;
  if ((BYTE8(v168) & 1) == 0)
  {
    v48 = v106;
    sub_10001B104(&v29[v40[11]], v106, &unk_1008F73A0);
    v49 = v108;
    if ((*(v109 + 48))(v48, 1, v108) != 1)
    {
      v75 = v109;
      v76 = v107;
      (*(v109 + 32))(v107, v48, v49);
      v77 = &v29[v40[10]];
      v78 = *v77;
      v79 = *(v77 + 2);
      v177 = v78;
      *&v178 = v79;
      sub_100140278(&qword_1008E0EA0);
      Binding.projectedValue.getter();
      v111 = v168;
      v106 = v169;
      v80 = sub_1004ABD04(v76);
      sub_10005C1A0(*v29);
      v81 = Color.init(uiColor:)();
      v82 = [objc_allocWithZone(NSNumberFormatter) init];
      [v82 setNumberStyle:0];
      LOBYTE(v76) = static Edge.Set.all.getter();
      EdgeInsets.init(_all:)();
      LOBYTE(v156[0]) = 0;
      v177 = v111;
      *&v178 = v106;
      *(&v178 + 1) = v80;
      *&v179 = v81;
      *(&v179 + 1) = v82;
      LOBYTE(v180) = v76;
      *(&v180 + 1) = v83;
      *v181 = v84;
      *&v181[8] = v85;
      *&v181[16] = v86;
      *&v181[24] = 0;
      sub_100140278(&qword_1008E0E70);
      sub_100140278(&qword_1008E0E78);
      sub_1001F45FC();
      sub_1001F46DC();
      _ConditionalContent<>.init(storage:)();
      (*(v75 + 8))(v107, v49);
      v179 = v170;
      v180 = v171;
      *v181 = v172[0];
      *&v181[10] = *(v172 + 10);
      v177 = v168;
      v178 = v169;
      goto LABEL_8;
    }

    sub_10000EA04(v48, &unk_1008F73A0);
  }

  v50 = v27;
  v51 = &v29[v40[8]];
  v52 = *(v51 + 1);
  *&v177 = *v51;
  *(&v177 + 1) = v52;
  sub_10000FCBC();

  v53 = Text.init<A>(_:)();
  v55 = v54;
  v57 = v56;
  if (qword_1008DA618 != -1)
  {
    swift_once();
  }

  v58 = Text.font(_:)();
  v60 = v59;
  v62 = v61;
  v64 = v63;
  sub_10004642C(v53, v55, v57 & 1);

  v65 = static Edge.Set.all.getter();
  EdgeInsets.init(_all:)();
  v67 = v66;
  v69 = v68;
  v71 = v70;
  v73 = v72;
  LOBYTE(v177) = v62 & 1;
  LOBYTE(v168) = 0;
  v74 = static HierarchicalShapeStyle.secondary.getter();
  LOBYTE(v123[0]) = 1;
  *&v168 = v58;
  *(&v168 + 1) = v60;
  LOBYTE(v169) = v62 & 1;
  *(&v169 + 1) = v64;
  LOBYTE(v170) = v65;
  *(&v170 + 1) = v67;
  *&v171 = v69;
  *(&v171 + 1) = v71;
  *&v172[0] = v73;
  BYTE8(v172[0]) = 0;
  HIDWORD(v172[0]) = v74;
  *&v172[1] = *&v156[0];
  BYTE8(v172[1]) = BYTE8(v156[0]);
  BYTE9(v172[1]) = 1;
  sub_100140278(&qword_1008E0E70);
  sub_100140278(&qword_1008E0E78);
  sub_1001F45FC();
  sub_1001F46DC();
  _ConditionalContent<>.init(storage:)();
  v27 = v50;
  v23 = v119;
  LOBYTE(v30) = v118;
LABEL_8:
  v112 = v27;
  v170 = v179;
  v171 = v180;
  v172[0] = *v181;
  *(v172 + 10) = *&v181[10];
  v168 = v177;
  v169 = v178;
  *&v147 = v23;
  *(&v147 + 1) = v122;
  LOBYTE(v148) = v121;
  DWORD1(v148) = *&v176[3];
  *(&v148 + 1) = *v176;
  *(&v148 + 1) = v27;
  LOBYTE(v149) = v30;
  DWORD1(v149) = *&v175[3];
  *(&v149 + 1) = *v175;
  *(&v149 + 1) = v32;
  *&v150[0] = v34;
  *(&v150[0] + 1) = v36;
  *&v150[1] = v38;
  BYTE8(v150[1]) = 0;
  *(v137 + 9) = *(v150 + 9);
  v136 = v149;
  v137[0] = v150[0];
  v134 = v147;
  v135 = v148;
  v87 = v114;
  v88 = v115;
  *&v151 = v115;
  *(&v151 + 1) = v114;
  LOBYTE(v152) = v120[0];
  DWORD1(v152) = *(v174 + 3);
  *(&v152 + 1) = v174[0];
  v89 = v116;
  *(&v152 + 1) = v116;
  v90 = v113;
  LOBYTE(v153) = v113;
  HIDWORD(v153) = *&v173[3];
  *(&v153 + 1) = *v173;
  *&v155[0] = 0;
  v154 = 0;
  v111 = xmmword_1006DCA20;
  *(v155 + 8) = xmmword_1006DCA20;
  BYTE8(v155[1]) = 0;
  *(v141 + 9) = *(v155 + 9);
  v140 = v153;
  v141[0] = v155[0];
  v138 = v151;
  v139 = v152;
  v156[0] = v177;
  v156[1] = v178;
  *(v157 + 10) = *&v181[10];
  v157[0] = *v181;
  v156[2] = v179;
  v156[3] = v180;
  v142 = v177;
  v143 = v178;
  *(v146 + 10) = *&v181[10];
  v145 = v180;
  v146[0] = *v181;
  v144 = v179;
  v91 = v147;
  v92 = v148;
  v93 = v150[0];
  v94 = v117;
  v117[2] = v149;
  v94[3] = v93;
  *v94 = v91;
  v94[1] = v92;
  v95 = v137[1];
  v96 = v138;
  v97 = v140;
  v94[6] = v139;
  v94[7] = v97;
  v94[4] = v95;
  v94[5] = v96;
  v98 = v141[0];
  v99 = v141[1];
  v100 = v143;
  v94[10] = v142;
  v94[11] = v100;
  v94[8] = v98;
  v94[9] = v99;
  v101 = v144;
  v102 = v145;
  v103 = v146[0];
  *(v94 + 234) = *(v146 + 10);
  v94[13] = v102;
  v94[14] = v103;
  v94[12] = v101;
  sub_10001B104(&v147, v123, &qword_1008DC4C0);
  sub_10001B104(&v151, v123, &qword_1008DC4C0);
  sub_10001B104(v156, v123, &qword_1008E0E98);
  sub_10000EA04(&v168, &qword_1008E0E98);
  v158[0] = v88;
  v158[1] = v87;
  v159 = v120[0];
  *v160 = v174[0];
  *&v160[3] = *(v174 + 3);
  v161 = v89;
  v162 = v90;
  *v163 = *v173;
  *&v163[3] = *&v173[3];
  v165 = 0;
  v164 = 0;
  v166 = v111;
  v167 = 0;
  sub_10000EA04(v158, &qword_1008DC4C0);
  v123[0] = v119;
  v123[1] = v122;
  v124 = v121;
  *v125 = *v176;
  *&v125[3] = *&v176[3];
  v126 = v112;
  v127 = v118;
  *v128 = *v175;
  *&v128[3] = *&v175[3];
  v129 = v32;
  v130 = v34;
  v131 = v36;
  v132 = v38;
  v133 = 0;
  return sub_10000EA04(v123, &qword_1008DC4C0);
}

void *sub_1001F4430@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = static HorizontalAlignment.leading.getter();
  v24 = 0;
  sub_1001F3A68(v2, &v8);
  v37 = v20;
  v38 = v21;
  v39[0] = v22[0];
  *(v39 + 10) = *(v22 + 10);
  v33 = v16;
  v34 = v17;
  v35 = v18;
  v36 = v19;
  v29 = v12;
  v30 = v13;
  v31 = v14;
  v32 = v15;
  v25 = v8;
  v26 = v9;
  v27 = v10;
  v28 = v11;
  v40[12] = v20;
  v40[13] = v21;
  v41[0] = v22[0];
  *(v41 + 10) = *(v22 + 10);
  v40[8] = v16;
  v40[9] = v17;
  v40[10] = v18;
  v40[11] = v19;
  v40[4] = v12;
  v40[5] = v13;
  v40[6] = v14;
  v40[7] = v15;
  v40[0] = v8;
  v40[1] = v9;
  v40[2] = v10;
  v40[3] = v11;
  sub_10001B104(&v25, &v7, &qword_1008E0E60);
  sub_10000EA04(v40, &qword_1008E0E60);
  *&__src[199] = v37;
  *&__src[215] = v38;
  *&__src[231] = v39[0];
  *&__src[241] = *(v39 + 10);
  *&__src[135] = v33;
  *&__src[151] = v34;
  *&__src[167] = v35;
  *&__src[183] = v36;
  *&__src[71] = v29;
  *&__src[87] = v30;
  *&__src[103] = v31;
  *&__src[119] = v32;
  *&__src[7] = v25;
  *&__src[23] = v26;
  *&__src[39] = v27;
  *&__src[55] = v28;
  v5 = v24;
  *a1 = v4;
  *(a1 + 8) = 0;
  *(a1 + 16) = v5;
  return memcpy((a1 + 17), __src, 0x101uLL);
}

unint64_t sub_1001F45FC()
{
  result = qword_1008E0E80;
  if (!qword_1008E0E80)
  {
    sub_100141EEC(&qword_1008E0E70);
    sub_1001F4688();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E0E80);
  }

  return result;
}

unint64_t sub_1001F4688()
{
  result = qword_1008E0E88;
  if (!qword_1008E0E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E0E88);
  }

  return result;
}

unint64_t sub_1001F46DC()
{
  result = qword_1008E0E90;
  if (!qword_1008E0E90)
  {
    sub_100141EEC(&qword_1008E0E78);
    sub_1001F4794();
    sub_10014A6B0(&qword_1008DD728, &qword_1008DD730);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E0E90);
  }

  return result;
}

unint64_t sub_1001F4794()
{
  result = qword_1008DC4B8;
  if (!qword_1008DC4B8)
  {
    sub_100141EEC(&qword_1008DC4C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008DC4B8);
  }

  return result;
}

uint64_t sub_1001F4818(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 416) = a2;
  *(v4 + 424) = v3;
  *(v4 + 472) = a3;
  *(v4 + 408) = a1;
  return _swift_task_switch(sub_1001F4840, 0, 0);
}

uint64_t sub_1001F4840()
{
  v1 = v0 + 400;
  v2 = *(v0 + 472);
  if (v2 > 0xA)
  {
    if (*(v0 + 472) <= 0x10u)
    {
      if (v2 == 11)
      {
        v3 = v0 + 144;
        v22 = *(v0 + 416);
        v23 = *(*(v0 + 424) + OBJC_IVAR____TtC10FitnessApp19MetricsDataProvider_workoutDataCalculator);
        v24 = *(v0 + 408);
        *(v0 + 144) = v0;
        *(v0 + 184) = v1;
        *(v0 + 152) = sub_1001F4F44;
        v25 = swift_continuation_init();
        *(v0 + 392) = sub_100140278(&qword_1008E0EB8);
        *(v0 + 336) = _NSConcreteStackBlock;
        *(v0 + 344) = 1107296256;
        *(v0 + 352) = sub_1001F54E4;
        *(v0 + 360) = &unk_10084BD58;
        *(v0 + 368) = v25;
        [v23 verticalOscillationSamplesForWorkout:v24 workoutActivity:v22 completion:v0 + 336];
        goto LABEL_18;
      }

      if (v2 == 12)
      {
        v3 = v0 + 80;
        v4 = *(v0 + 416);
        v5 = *(*(v0 + 424) + OBJC_IVAR____TtC10FitnessApp19MetricsDataProvider_workoutDataCalculator);
        v6 = *(v0 + 408);
        *(v0 + 80) = v0;
        *(v0 + 120) = v1;
        *(v0 + 88) = sub_1001F5054;
        v7 = swift_continuation_init();
        *(v0 + 392) = sub_100140278(&qword_1008E0EB8);
        *(v0 + 336) = _NSConcreteStackBlock;
        *(v0 + 344) = 1107296256;
        *(v0 + 352) = sub_1001F54E4;
        *(v0 + 360) = &unk_10084BD30;
        *(v0 + 368) = v7;
        [v5 strideLengthSamplesForWorkout:v6 workoutActivity:v4 completion:v0 + 336];
LABEL_18:

        return _swift_continuation_await(v3);
      }

      goto LABEL_14;
    }

    if (v2 != 18)
    {
      if (v2 != 17)
      {
        goto LABEL_14;
      }

LABEL_12:
      v3 = v0 + 272;
      v12 = *(v0 + 416);
      v13 = *(*(v0 + 424) + OBJC_IVAR____TtC10FitnessApp19MetricsDataProvider_workoutDataCalculator);
      v14 = *(v0 + 408);
      *(v0 + 272) = v0;
      *(v0 + 312) = v1;
      *(v0 + 280) = sub_1001F4D24;
      v15 = swift_continuation_init();
      *(v0 + 392) = sub_100140278(&qword_1008E0EB8);
      *(v0 + 336) = _NSConcreteStackBlock;
      *(v0 + 344) = 1107296256;
      *(v0 + 352) = sub_1001F54E4;
      *(v0 + 360) = &unk_10084BDA8;
      *(v0 + 368) = v15;
      [v13 powerSamplesForWorkout:v14 workoutActivity:v12 completion:v0 + 336];
      goto LABEL_18;
    }

    goto LABEL_13;
  }

  switch(v2)
  {
    case 8u:
      goto LABEL_12;
    case 9u:
LABEL_13:
      v3 = v0 + 208;
      v16 = *(v0 + 416);
      v17 = *(*(v0 + 424) + OBJC_IVAR____TtC10FitnessApp19MetricsDataProvider_workoutDataCalculator);
      v18 = *(v0 + 408);
      *(v0 + 208) = v0;
      *(v0 + 248) = v1;
      *(v0 + 216) = sub_1001F4E34;
      v19 = swift_continuation_init();
      *(v0 + 392) = sub_100140278(&qword_1008E0EB8);
      *(v0 + 336) = _NSConcreteStackBlock;
      *(v0 + 344) = 1107296256;
      *(v0 + 352) = sub_1001F54E4;
      *(v0 + 360) = &unk_10084BD80;
      *(v0 + 368) = v19;
      [v17 cadenceSamplesForWorkout:v18 workoutActivity:v16 completion:v0 + 336];
      goto LABEL_18;
    case 0xAu:
      v3 = v0 + 16;
      v8 = *(v0 + 416);
      v9 = *(*(v0 + 424) + OBJC_IVAR____TtC10FitnessApp19MetricsDataProvider_workoutDataCalculator);
      v10 = *(v0 + 408);
      *(v0 + 16) = v0;
      *(v0 + 56) = v1;
      *(v0 + 24) = sub_1001F5164;
      v11 = swift_continuation_init();
      *(v0 + 392) = sub_100140278(&qword_1008E0EB8);
      *(v0 + 336) = _NSConcreteStackBlock;
      *(v0 + 344) = 1107296256;
      *(v0 + 352) = sub_1001F54E4;
      *(v0 + 360) = &unk_10084BD08;
      *(v0 + 368) = v11;
      [v9 groundContactTimeSamplesForWorkout:v10 workoutActivity:v8 completion:v0 + 336];
      goto LABEL_18;
  }

LABEL_14:
  v20 = *(v0 + 8);

  return v20(0);
}

uint64_t sub_1001F4D24()
{
  v1 = *(*v0 + 304);
  *(*v0 + 432) = v1;
  if (v1)
  {
    v2 = sub_1001F53F4;
  }

  else
  {
    v2 = sub_1001F5CE4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1001F4E34()
{
  v1 = *(*v0 + 240);
  *(*v0 + 440) = v1;
  if (v1)
  {
    v2 = sub_1001F546C;
  }

  else
  {
    v2 = sub_1001F5CE4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1001F4F44()
{
  v1 = *(*v0 + 176);
  *(*v0 + 448) = v1;
  if (v1)
  {
    v2 = sub_1001F528C;
  }

  else
  {
    v2 = sub_1001F5CE4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1001F5054()
{
  v1 = *(*v0 + 112);
  *(*v0 + 456) = v1;
  if (v1)
  {
    v2 = sub_1001F5304;
  }

  else
  {
    v2 = sub_1001F5CE4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1001F5164()
{
  v1 = *(*v0 + 48);
  *(*v0 + 464) = v1;
  if (v1)
  {
    v2 = sub_1001F537C;
  }

  else
  {
    v2 = sub_1001F5274;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1001F528C()
{
  swift_willThrow();

  v1 = *(v0 + 8);

  return v1(0);
}

uint64_t sub_1001F5304()
{
  swift_willThrow();

  v1 = *(v0 + 8);

  return v1(0);
}

uint64_t sub_1001F537C()
{
  swift_willThrow();

  v1 = *(v0 + 8);

  return v1(0);
}

uint64_t sub_1001F53F4()
{
  swift_willThrow();

  v1 = *(v0 + 8);

  return v1(0);
}

uint64_t sub_1001F546C()
{
  swift_willThrow();

  v1 = *(v0 + 8);

  return v1(0);
}

uint64_t sub_1001F54E4(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *sub_1000066AC((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_100140278(&qword_1008EB640);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return _swift_continuation_throwingResumeWithError(v5, v6);
  }

  else
  {
    v9 = 0;
    if (a2)
    {
      sub_1001F5C78();
      v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    }

    **(*(v5 + 64) + 40) = v9;

    return _swift_continuation_throwingResume(v5);
  }
}

uint64_t sub_1001F55C8(uint64_t a1, uint64_t a2, char a3)
{
  *(v3 + 16) = swift_getObjectType();
  *(v3 + 80) = a3;
  type metadata accessor for Date();
  *(v3 + 24) = swift_task_alloc();
  *(v3 + 32) = swift_task_alloc();
  v7 = type metadata accessor for DateInterval();
  *(v3 + 40) = v7;
  *(v3 + 48) = *(v7 - 8);
  *(v3 + 56) = swift_task_alloc();
  v8 = swift_task_alloc();
  *(v3 + 64) = v8;
  *v8 = v3;
  v8[1] = sub_1001F5720;

  return sub_1001F4818(a1, a2, a3);
}

uint64_t sub_1001F5720(uint64_t a1)
{
  *(*v1 + 72) = a1;

  return _swift_task_switch(sub_1001F5820, 0, 0);
}

void sub_1001F5820(__n128 a1)
{
  v48 = v1;
  if (*(v1 + 72))
  {
    v2 = *(v1 + 72);
  }

  else
  {
    v2 = _swiftEmptyArrayStorage;
  }

  if (v2 >> 62)
  {
    v3 = _CocoaArrayWrapper.endIndex.getter();
    if (v3)
    {
      goto LABEL_6;
    }

LABEL_24:

    v37 = 0.0;
    v7 = 0.0;
    goto LABEL_25;
  }

  v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v3)
  {
    goto LABEL_24;
  }

LABEL_6:
  if (v3 < 1)
  {
    __break(1u);
    return;
  }

  v4 = 0;
  v45 = *(v44 + 80);
  v46 = v2 & 0xC000000000000001;
  v43 = (*(v44 + 48) + 8);
  v5 = 0.0;
  a1.n128_u64[0] = 136315394;
  v41 = a1;
  v6 = &selRef_initWithFitnessAppContext_activitySharingClient_;
  v7 = 0.0;
  do
  {
    if (v46)
    {
      v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v8 = *(v2 + 8 * v4 + 32);
    }

    v9 = v8;
    v10 = [v8 quantityType];
    v11 = [v10 aggregationStyle];

    v12 = 1.0;
    if (v11 || (v13 = *(v44 + 56), v14 = *(v44 + 40), v15 = v2, v16 = v9, v17 = v3, v18 = [v16 startDate], static Date._unconditionallyBridgeFromObjectiveC(_:)(), v18, v19 = objc_msgSend(v16, "endDate"), v16, static Date._unconditionallyBridgeFromObjectiveC(_:)(), v19, v3 = v17, DateInterval.init(start:end:)(), DateInterval.duration.getter(), v12 = v20, v21 = v14, v6 = &selRef_initWithFitnessAppContext_activitySharingClient_, (*v43)(v13, v21), v12 > 0.0))
    {
      v22 = [v9 v6[509]];
      [v22 _value];
      v24 = v23;

      if (v45 == 9)
      {
        v25 = [v9 v6[509]];
        [v25 _value];
        v27 = v26;

        v24 = v27 * 60.0;
      }

      else
      {
      }

      v7 = v7 + v12;
      v5 = v5 + v24;
    }

    else
    {
      v28 = static os_log_type_t.error.getter();
      v29 = HKLogWorkouts;
      if (os_log_type_enabled(HKLogWorkouts, v28))
      {
        log = v29;
        v30 = swift_slowAlloc();
        v31 = swift_slowAlloc();
        v32 = swift_slowAlloc();
        v47 = v32;
        *v30 = v41.n128_u32[0];
        v33 = _typeName(_:qualified:)();
        v35 = sub_10000AFDC(v33, v34, &v47);
        v3 = v17;

        *(v30 + 4) = v35;
        *(v30 + 12) = 2112;
        *(v30 + 14) = v16;
        *v31 = v16;
        v36 = v16;
        _os_log_impl(&_mh_execute_header, log, v28, "%s Cumulative sample missing duration, rejecting data: %@", v30, 0x16u);
        sub_1001F3454(v31);
        v2 = v15;

        sub_100005A40(v32);
      }

      else
      {
      }

      v6 = &selRef_initWithFitnessAppContext_activitySharingClient_;
    }

    ++v4;
  }

  while (v3 != v4);

  v37 = v5;
LABEL_25:
  if (v7 > 0.0)
  {
    v38 = v37;
  }

  else
  {
    v38 = 0.0;
  }

  if (v7 > 0.0)
  {
    v39 = v7;
  }

  else
  {
    v39 = 0.0;
  }

  v40 = *(v44 + 8);

  v40(*&v38, *&v39, v7 <= 0.0);
}

unint64_t sub_1001F5C78()
{
  result = qword_1008EE6F0;
  if (!qword_1008EE6F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1008EE6F0);
  }

  return result;
}

void *sub_1001F5CE8(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v6 = a1 + a3;
  if (__OFADD__(a1, a3))
  {
    __break(1u);
  }

  else
  {
    v4 = a2;
    v3 = a1;
    v5 = a2 >> 62;
    if (!(a2 >> 62))
    {
      v7 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v7 < v6)
      {
        v6 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v6 < v3)
      {
        goto LABEL_38;
      }

      if (v7 >= v3)
      {
        goto LABEL_7;
      }

LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }
  }

  v19 = _CocoaArrayWrapper.endIndex.getter();
  if (v19 < v6)
  {
    v6 = v19;
  }

  if (v6 < v3)
  {
    goto LABEL_38;
  }

  if (_CocoaArrayWrapper.endIndex.getter() < v3)
  {
    goto LABEL_37;
  }

LABEL_7:
  if (v3 < 0)
  {
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  if (v5)
  {
    v8 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v8 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v8 < v6)
  {
    goto LABEL_40;
  }

  if (v6 < 0)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  if ((v4 & 0xC000000000000001) == 0 || v6 == v3)
  {

    if (!v5)
    {
      goto LABEL_19;
    }

LABEL_22:

    v4 = _CocoaArrayWrapper.subscript.getter();
    v3 = v12;
    v6 = v13;
    if (v13)
    {
      goto LABEL_24;
    }

LABEL_23:
    sub_10031143C(v4, v11, v3, v6);
    v15 = v14;
LABEL_30:
    swift_unknownObjectRelease();
    return v15;
  }

  if (v6 <= v3)
  {
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  sub_1000059F8(0, &unk_1008EE710);

  v9 = v3;
  do
  {
    v10 = v9 + 1;
    _ArrayBuffer._typeCheckSlowPath(_:)(v9);
    v9 = v10;
  }

  while (v6 != v10);
  if (v5)
  {
    goto LABEL_22;
  }

LABEL_19:
  v4 &= 0xFFFFFFFFFFFFFF8uLL;
  v11 = v4 + 32;
  v6 = (2 * v6) | 1;
  if ((v6 & 1) == 0)
  {
    goto LABEL_23;
  }

LABEL_24:
  v5 = v11;
  type metadata accessor for __ContiguousArrayStorageBase();
  swift_unknownObjectRetain_n();
  v16 = swift_dynamicCastClass();
  if (!v16)
  {
    swift_unknownObjectRelease();
    v16 = _swiftEmptyArrayStorage;
  }

  v17 = v16[2];

  if (__OFSUB__(v6 >> 1, v3))
  {
    goto LABEL_43;
  }

  if (v17 != (v6 >> 1) - v3)
  {
LABEL_44:
    swift_unknownObjectRelease();
    v11 = v5;
    goto LABEL_23;
  }

  v15 = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  if (!v15)
  {
    v15 = _swiftEmptyArrayStorage;
    goto LABEL_30;
  }

  return v15;
}

void *sub_1001F5F30(int64_t a1, int64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v10 = 0;
  v11 = a1;
  while (1)
  {
    v12 = v11 <= a2;
    if (a3 > 0)
    {
      v12 = v11 >= a2;
    }

    if (v12)
    {
      break;
    }

    v13 = __OFADD__(v11, a3);
    v11 += a3;
    if (v13)
    {
      v11 = (v11 >> 63) ^ 0x8000000000000000;
    }

    v13 = __OFADD__(v10++, 1);
    if (v13)
    {
      __break(1u);
      break;
    }
  }

  v14 = a1;
  sub_100185E04(0, v10, 0);
  if (v10)
  {
    v15 = v14;
    while (1)
    {
      v16 = v15 <= a2;
      if (a3 > 0)
      {
        v16 = v15 >= a2;
      }

      if (v16)
      {
        break;
      }

      if (__OFADD__(v15, a3))
      {
        v14 = ((v15 + a3) >> 63) ^ 0x8000000000000000;
      }

      else
      {
        v14 = v15 + a3;
      }

      v17 = sub_1001F5CE8(v15, a4, a5);
      if (v5)
      {
        goto LABEL_37;
      }

      v19 = _swiftEmptyArrayStorage[2];
      v18 = _swiftEmptyArrayStorage[3];
      if (v19 >= v18 >> 1)
      {
        v27 = v17;
        sub_100185E04((v18 > 1), v19 + 1, 1);
        v17 = v27;
      }

      _swiftEmptyArrayStorage[2] = v19 + 1;
      _swiftEmptyArrayStorage[v19 + 4] = v17;
      v15 = v14;
      if (!--v10)
      {
        goto LABEL_22;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_22:
    v20 = v14 <= a2;
    if (a3 > 0)
    {
      v20 = v14 >= a2;
    }

    if (v20)
    {
LABEL_25:

      return _swiftEmptyArrayStorage;
    }

    while (1)
    {
      v22 = __OFADD__(v14, a3) ? ((v14 + a3) >> 63) ^ 0x8000000000000000 : v14 + a3;
      v23 = sub_1001F5CE8(v14, a4, a5);
      if (v5)
      {
        break;
      }

      v25 = _swiftEmptyArrayStorage[2];
      v24 = _swiftEmptyArrayStorage[3];
      if (v25 >= v24 >> 1)
      {
        v28 = v23;
        sub_100185E04((v24 > 1), v25 + 1, 1);
        v23 = v28;
      }

      _swiftEmptyArrayStorage[2] = v25 + 1;
      _swiftEmptyArrayStorage[v25 + 4] = v23;
      v26 = v22 <= a2;
      if (a3 > 0)
      {
        v26 = v22 >= a2;
      }

      v14 = v22;
      if (v26)
      {
        goto LABEL_25;
      }
    }
  }

LABEL_37:

  __break(1u);
  return result;
}

uint64_t sub_1001F6250@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100140278(&unk_1008E51A0);
  __chkstk_darwin(v3 - 8);
  v5 = &v15[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v8 = &v15[-v7];
  v9 = OBJC_IVAR____TtC10FitnessApp20ActivityDataProvider____lazy_storage___currentCalendar;
  swift_beginAccess();
  sub_10001B104(v1 + v9, v8, &unk_1008E51A0);
  v10 = type metadata accessor for Calendar();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v8, 1, v10) != 1)
  {
    return (*(v11 + 32))(a1, v8, v10);
  }

  sub_10000EA04(v8, &unk_1008E51A0);
  if (qword_1008DA550 != -1)
  {
    swift_once();
  }

  v12 = sub_10001AC90(v10, qword_100925018);
  v13 = *(v11 + 16);
  v13(v5, v12, v10);
  (*(v11 + 56))(v5, 0, 1, v10);
  swift_beginAccess();
  sub_1001FBE18(v5, v1 + v9);
  swift_endAccess();
  return v13(a1, v12, v10);
}

char *sub_1001F6498(void *a1, void *a2, void *a3, void *a4)
{
  v5 = v4;
  v10 = type metadata accessor for DispatchQoS.QoSClass();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtC10FitnessApp20ActivityDataProvider_activitySummaryListener;
  *&v5[v14] = [objc_allocWithZone(type metadata accessor for ActivitySummaryChangeListener()) init];
  v5[OBJC_IVAR____TtC10FitnessApp20ActivityDataProvider_isWheelchairUser] = 0;
  v5[OBJC_IVAR____TtC10FitnessApp20ActivityDataProvider_isOriginalWheelchairObserver] = 1;
  v15 = OBJC_IVAR____TtC10FitnessApp20ActivityDataProvider____lazy_storage___currentCalendar;
  v16 = type metadata accessor for Calendar();
  (*(*(v16 - 8) + 56))(&v5[v15], 1, 1, v16);
  *&v5[OBJC_IVAR____TtC10FitnessApp20ActivityDataProvider_minValueThresholdForActiveMinutes] = 0x3F1A36E2EB1C432DLL;
  sub_1000059F8(0, &qword_1008E3FD0);
  (*(v11 + 104))(v13, enum case for DispatchQoS.QoSClass.userInitiated(_:), v10);
  v17 = static OS_dispatch_queue.global(qos:)();
  (*(v11 + 8))(v13, v10);
  *&v5[OBJC_IVAR____TtC10FitnessApp20ActivityDataProvider_internalQueue] = v17;
  *&v5[OBJC_IVAR____TtC10FitnessApp20ActivityDataProvider_healthStore] = a1;
  Executor = type metadata accessor for ActivityQueryExecutor();
  v19 = objc_allocWithZone(Executor);
  *&v19[OBJC_IVAR____TtC10FitnessApp21ActivityQueryExecutor_chartQueryRetryInterval] = 0x3FC3333333333333;
  *&v19[OBJC_IVAR____TtC10FitnessApp21ActivityQueryExecutor_chartQuery] = 0;
  *&v19[OBJC_IVAR____TtC10FitnessApp21ActivityQueryExecutor_basalEnergyCalculationRetryInterval] = 0x3FC3333333333333;
  *&v19[OBJC_IVAR____TtC10FitnessApp21ActivityQueryExecutor_basalEnergyQuery] = 0;
  v20 = OBJC_IVAR____TtC10FitnessApp21ActivityQueryExecutor_watchSourcePredicate;
  v21 = objc_opt_self();
  v22 = a1;
  *&v19[v20] = [v21 _predicateForObjectsFromAppleWatches];
  *&v19[OBJC_IVAR____TtC10FitnessApp21ActivityQueryExecutor_healthStore] = v22;
  v36.receiver = v19;
  v36.super_class = Executor;
  *&v5[OBJC_IVAR____TtC10FitnessApp20ActivityDataProvider_queryExecutor] = objc_msgSendSuper2(&v36, "init");
  *&v5[OBJC_IVAR____TtC10FitnessApp20ActivityDataProvider_dataCache] = [objc_allocWithZone(type metadata accessor for ActivityChartDataCache()) init];
  v23 = objc_opt_self();
  [v23 setHealthStore:v22];
  v24 = [v23 sharedInstance];
  *&v5[OBJC_IVAR____TtC10FitnessApp20ActivityDataProvider_summaryCache] = v24;
  [v24 loadDataIfNeeded];
  *&v5[OBJC_IVAR____TtC10FitnessApp20ActivityDataProvider_workoutDataProvider] = a3;
  *&v5[OBJC_IVAR____TtC10FitnessApp20ActivityDataProvider_achievementsDataProvider] = a4;
  *&v5[OBJC_IVAR____TtC10FitnessApp20ActivityDataProvider_wheelchairCache] = a2;
  v25 = type metadata accessor for ActivityDataProvider();
  v35.receiver = v5;
  v35.super_class = v25;
  v26 = a3;
  v27 = a4;
  v28 = a2;
  v29 = objc_msgSendSuper2(&v35, "init");
  v30 = OBJC_IVAR____TtC10FitnessApp20ActivityDataProvider_wheelchairCache;
  v31 = *&v29[OBJC_IVAR____TtC10FitnessApp20ActivityDataProvider_wheelchairCache];
  v32 = v29;
  v33 = [v31 isWheelchairUser];
  v32[OBJC_IVAR____TtC10FitnessApp20ActivityDataProvider_isWheelchairUser] = v33;
  [*&v29[v30] addObserver:v32];
  [*(*&v32[OBJC_IVAR____TtC10FitnessApp20ActivityDataProvider_activitySummaryListener] + OBJC_IVAR____TtC10FitnessApp29ActivitySummaryChangeListener_observers) addObject:v32];

  return v32;
}

char *sub_1001F6900(_BYTE *a1)
{
  v3 = OBJC_IVAR____TtC10FitnessApp20ActivityDataProvider_activitySummaryListener;
  *&v1[v3] = [objc_allocWithZone(type metadata accessor for ActivitySummaryChangeListener()) init];
  v1[OBJC_IVAR____TtC10FitnessApp20ActivityDataProvider_isWheelchairUser] = 0;
  v1[OBJC_IVAR____TtC10FitnessApp20ActivityDataProvider_isOriginalWheelchairObserver] = 1;
  v4 = OBJC_IVAR____TtC10FitnessApp20ActivityDataProvider____lazy_storage___currentCalendar;
  v5 = type metadata accessor for Calendar();
  (*(*(v5 - 8) + 56))(&v1[v4], 1, 1, v5);
  *&v1[OBJC_IVAR____TtC10FitnessApp20ActivityDataProvider_minValueThresholdForActiveMinutes] = 0x3F1A36E2EB1C432DLL;
  v6 = *&a1[OBJC_IVAR____TtC10FitnessApp20ActivityDataProvider_internalQueue];
  *&v1[OBJC_IVAR____TtC10FitnessApp20ActivityDataProvider_internalQueue] = v6;
  v7 = *&a1[OBJC_IVAR____TtC10FitnessApp20ActivityDataProvider_healthStore];
  *&v1[OBJC_IVAR____TtC10FitnessApp20ActivityDataProvider_healthStore] = v7;
  Executor = type metadata accessor for ActivityQueryExecutor();
  v9 = objc_allocWithZone(Executor);
  *&v9[OBJC_IVAR____TtC10FitnessApp21ActivityQueryExecutor_chartQueryRetryInterval] = 0x3FC3333333333333;
  *&v9[OBJC_IVAR____TtC10FitnessApp21ActivityQueryExecutor_chartQuery] = 0;
  *&v9[OBJC_IVAR____TtC10FitnessApp21ActivityQueryExecutor_basalEnergyCalculationRetryInterval] = 0x3FC3333333333333;
  *&v9[OBJC_IVAR____TtC10FitnessApp21ActivityQueryExecutor_basalEnergyQuery] = 0;
  v10 = OBJC_IVAR____TtC10FitnessApp21ActivityQueryExecutor_watchSourcePredicate;
  v11 = objc_opt_self();
  v12 = v7;
  v13 = v6;
  *&v9[v10] = [v11 _predicateForObjectsFromAppleWatches];
  *&v9[OBJC_IVAR____TtC10FitnessApp21ActivityQueryExecutor_healthStore] = v12;
  v29.receiver = v9;
  v29.super_class = Executor;
  *&v1[OBJC_IVAR____TtC10FitnessApp20ActivityDataProvider_queryExecutor] = objc_msgSendSuper2(&v29, "init");
  v14 = *&a1[OBJC_IVAR____TtC10FitnessApp20ActivityDataProvider_dataCache];
  *&v1[OBJC_IVAR____TtC10FitnessApp20ActivityDataProvider_dataCache] = v14;
  v15 = *&a1[OBJC_IVAR____TtC10FitnessApp20ActivityDataProvider_summaryCache];
  *&v1[OBJC_IVAR____TtC10FitnessApp20ActivityDataProvider_summaryCache] = v15;
  v16 = *&a1[OBJC_IVAR____TtC10FitnessApp20ActivityDataProvider_workoutDataProvider];
  *&v1[OBJC_IVAR____TtC10FitnessApp20ActivityDataProvider_workoutDataProvider] = v16;
  v17 = *&a1[OBJC_IVAR____TtC10FitnessApp20ActivityDataProvider_achievementsDataProvider];
  *&v1[OBJC_IVAR____TtC10FitnessApp20ActivityDataProvider_achievementsDataProvider] = v17;
  v18 = *&a1[OBJC_IVAR____TtC10FitnessApp20ActivityDataProvider_wheelchairCache];
  *&v1[OBJC_IVAR____TtC10FitnessApp20ActivityDataProvider_wheelchairCache] = v18;
  v28.receiver = v1;
  v28.super_class = type metadata accessor for ActivityDataProvider();
  v19 = v14;
  v20 = v15;
  v21 = v16;
  v22 = v17;
  v23 = v18;
  v24 = objc_msgSendSuper2(&v28, "init");
  v25 = *&v24[OBJC_IVAR____TtC10FitnessApp20ActivityDataProvider_wheelchairCache];
  v26 = v24;
  [v25 addObserver:{v26, v28.receiver, v28.super_class}];
  LOBYTE(v25) = a1[OBJC_IVAR____TtC10FitnessApp20ActivityDataProvider_isWheelchairUser];

  v26[OBJC_IVAR____TtC10FitnessApp20ActivityDataProvider_isWheelchairUser] = v25;
  v26[OBJC_IVAR____TtC10FitnessApp20ActivityDataProvider_isOriginalWheelchairObserver] = 0;

  return v26;
}

id sub_1001F6B90()
{
  [*&v0[OBJC_IVAR____TtC10FitnessApp20ActivityDataProvider_wheelchairCache] removeObserver:v0];
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ActivityDataProvider();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for ActivityDataProvider()
{
  result = qword_1008E0F50;
  if (!qword_1008E0F50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1001F6DC4(uint64_t a1)
{
  v33 = a1;
  v34 = type metadata accessor for DateInterval();
  v32 = *(v34 - 8);
  __chkstk_darwin(v34);
  v31 = &v28 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = type metadata accessor for Calendar.Component();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = type metadata accessor for Calendar();
  v6 = *(v35 - 8);
  __chkstk_darwin(v35);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100140278(&unk_1008F73A0);
  __chkstk_darwin(v9 - 8);
  v11 = &v28 - v10;
  v12 = type metadata accessor for Date();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v29 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v28 = &v28 - v16;
  __chkstk_darwin(v17);
  v30 = &v28 - v18;
  __chkstk_darwin(v19);
  v21 = &v28 - v20;
  Date.init()();
  sub_1001F6250(v8);
  (*(v3 + 104))(v5, enum case for Calendar.Component.day(_:), v2);
  Calendar.date(byAdding:value:to:wrappingComponents:)();
  (*(v3 + 8))(v5, v2);
  (*(v6 + 8))(v8, v35);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    (*(v13 + 8))(v21, v12);
    sub_10000EA04(v11, &unk_1008F73A0);
    v22 = 0;
  }

  else
  {
    v23 = v30;
    (*(v13 + 32))(v30, v11, v12);
    v24 = *(v13 + 16);
    v24(v28, v23, v12);
    v24(v29, v21, v12);
    v25 = v31;
    DateInterval.init(start:end:)();
    v22 = DateInterval.contains(_:)();
    (*(v32 + 8))(v25, v34);
    v26 = *(v13 + 8);
    v26(v23, v12);
    v26(v21, v12);
  }

  return v22 & 1;
}

void *sub_1001F725C()
{
  v1 = v0;
  v2 = type metadata accessor for DateComponents();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v20 - v7;
  v9.super.isa = Date._bridgeToObjectiveC()().super.isa;
  if (qword_1008DA550 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Calendar();
  sub_10001AC90(v10, qword_100925018);
  isa = Calendar._bridgeToObjectiveC()().super.isa;
  v12 = _HKActivityCacheDateComponentsFromDate();

  if (v12)
  {
    static DateComponents._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v3 + 32))(v8, v5, v2);
    v13 = [*(v1 + OBJC_IVAR____TtC10FitnessApp20ActivityDataProvider_workoutDataProvider) workoutsByDay];
    sub_100140278(&unk_1008E4010);
    sub_10002BA84(&qword_1008DF090, &type metadata accessor for DateComponents);
    v14 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    if (*(v14 + 16))
    {
      v15 = sub_1004C59D4(v8);
      if (v16)
      {
        v17 = *(*(v14 + 56) + 8 * v15);
        v18 = *(v3 + 8);

        v18(v8, v2);

        return v17;
      }
    }

    (*(v3 + 8))(v8, v2);
  }

  return _swiftEmptyArrayStorage;
}

uint64_t sub_1001F74E0(void *a1, uint64_t a2, uint64_t (*a3)(void, uint64_t, __n128), uint64_t a4, unint64_t a5, uint64_t a6, unint64_t a7, unint64_t a8)
{
  v67 = a7;
  v68 = a8;
  v69 = a6;
  v66 = a5;
  v74 = a3;
  v65 = type metadata accessor for DispatchWorkItemFlags();
  v72 = *(v65 - 8);
  __chkstk_darwin(v65);
  v12 = &v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DispatchQoS();
  v70 = *(v13 - 8);
  v71 = v13;
  __chkstk_darwin(v13);
  v15 = &v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for Date();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v19 = &v53 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v20);
  v23 = &v53 - v22;
  if (a1)
  {
    v73 = a4;
    v24 = a1;
    v25 = [v24 activeEnergyResults];
    if (v25)
    {
      v26 = v25;
      v62 = v12;
      v64 = a2;
      sub_1000059F8(0, &unk_1008EE710);
      v27 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v28 = [v24 appleMoveTimeResults];
      if (v28)
      {
        v63 = v27;
        v29 = v28;
        v30 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        v31 = [v24 appleExerciseTimeResults];
        if (v31)
        {
          v32 = v31;
          v33 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

          v34 = [v24 appleStandHourResults];
          if (v34)
          {
            v35 = v34;
            v61 = v33;
            sub_1000059F8(0, &qword_1008E0F68);
            v60 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

            v36 = [v24 workoutResults];
            if (v36)
            {
              v37 = v36;
              sub_1000059F8(0, &qword_1008E0F70);
              v58 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

              v59 = *(v66 + OBJC_IVAR____TtC10FitnessApp20ActivityDataProvider_internalQueue);
              v38 = swift_allocObject();
              v57 = v30;
              v39 = v38;
              swift_unknownObjectWeakInit();
              v40 = *(v17 + 16);
              v40(v23, v67, v16);
              v40(v19, v68, v16);
              v41 = *(v17 + 80);
              v54 = (v41 + 48) & ~v41;
              v68 = (v18 + 7 + v54) & 0xFFFFFFFFFFFFFFF8;
              v66 = (v68 + 15) & 0xFFFFFFFFFFFFFFF8;
              v55 = (v66 + 15) & 0xFFFFFFFFFFFFFFF8;
              v42 = (v41 + v55 + 8) & ~v41;
              v67 = (v18 + 7 + v42) & 0xFFFFFFFFFFFFFFF8;
              v56 = (v67 + 23) & 0xFFFFFFFFFFFFFFF8;
              v43 = swift_allocObject();
              v44 = v69;
              *(v43 + 2) = v39;
              *(v43 + 3) = v44;
              v45 = v63;
              *(v43 + 4) = v57;
              *(v43 + 5) = v45;
              v46 = *(v17 + 32);
              v46(&v43[v54], v23, v16);
              *&v43[v68] = v61;
              *&v43[v66] = v60;
              *&v43[v55] = v58;
              v46(&v43[v42], v19, v16);
              v47 = &v43[v67];
              v48 = v73;
              *v47 = v74;
              *(v47 + 1) = v48;
              *&v43[v56] = v64;
              aBlock[4] = sub_1001FBA0C;
              aBlock[5] = v43;
              aBlock[0] = _NSConcreteStackBlock;
              aBlock[1] = 1107296256;
              aBlock[2] = sub_1000449A8;
              aBlock[3] = &unk_10084BEF8;
              v49 = _Block_copy(aBlock);

              swift_errorRetain();
              static DispatchQoS.unspecified.getter();
              v75 = _swiftEmptyArrayStorage;
              sub_10002BA84(&qword_1008E33B0, &type metadata accessor for DispatchWorkItemFlags);
              sub_100140278(&unk_1008E7F50);
              sub_10002621C();
              v50 = v62;
              v51 = v65;
              dispatch thunk of SetAlgebra.init<A>(_:)();
              OS_dispatch_queue.async(group:qos:flags:execute:)();

              _Block_release(v49);
              (*(v72 + 8))(v50, v51);
              (*(v70 + 8))(v15, v71);
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

      else
      {
      }

      a2 = v64;
    }

    else
    {
    }
  }

  return v74(0, a2, v21);
}

uint64_t sub_1001F7BE0(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5, void *a6, uint64_t a7, void *a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v82 = a8;
  v81 = a7;
  v80 = a6;
  v16 = type metadata accessor for DispatchWorkItemFlags();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = v71 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for DispatchQoS();
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v89 = v71 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for Date();
  v84 = *(v23 - 8);
  v85 = v23;
  __chkstk_darwin(v23);
  v83 = v71 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for DateComponents();
  v87 = *(v25 - 8);
  v88 = v25;
  __chkstk_darwin(v25);
  v86 = v71 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v90 = result;
    v75 = v21;
    v28 = objc_opt_self();
    if (a2 != 2)
    {
      a3 = a4;
    }

    v29 = &selRef_minuteUnit;
    if (a2 != 2)
    {
      v29 = &selRef_kilocalorieUnit;
    }

    v30 = [v28 *v29];
    v31 = sub_1001F9370(a3, v30, a5);
    v91 = v30;
    sub_1001F9BEC(v31, v30, 0xF);
    v33 = v32;

    v79 = v16;
    v78 = v17;
    v77 = v20;
    v76 = v19;
    v71[1] = a9;
    v71[0] = v33;
    if (a3 >> 62)
    {
LABEL_24:
      v34 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v34 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v35 = 0;
    v36 = 0;
    v74 = a12;
    v73 = a11;
    v72 = a10;
    while (v34 != v35)
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        v39 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v35 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_22;
        }

        v39 = *(a3 + 8 * v35 + 32);
      }

      v40 = v39;
      if (__OFADD__(v35, 1))
      {
        __break(1u);
LABEL_22:
        __break(1u);
LABEL_23:
        __break(1u);
        goto LABEL_24;
      }

      v41 = [v39 quantityValue];
      if (v41)
      {
        v42 = v41;
        [v41 doubleValueForUnit:v91];
        v44 = v43;

        v37 = v44 > 0.0001;
      }

      else
      {

        v37 = 0;
      }

      ++v35;
      v38 = __OFADD__(v36, v37);
      v36 += v37;
      if (v38)
      {
        goto LABEL_23;
      }
    }

    v45 = type metadata accessor for ActivityChartData();
    v46 = objc_allocWithZone(v45);
    *&v46[OBJC_IVAR____TtC10FitnessApp17ActivityChartData_moveData] = v71[0];
    *&v46[OBJC_IVAR____TtC10FitnessApp17ActivityChartData_exerciseData] = v80;
    *&v46[OBJC_IVAR____TtC10FitnessApp17ActivityChartData_standData] = v81;
    *&v46[OBJC_IVAR____TtC10FitnessApp17ActivityChartData_workoutData] = v82;
    *&v46[OBJC_IVAR____TtC10FitnessApp17ActivityChartData_numberOfActiveMinutes] = v36;
    v93.receiver = v46;
    v93.super_class = v45;

    v82 = objc_msgSendSuper2(&v93, "init");
    v81 = OBJC_IVAR____TtC10FitnessApp20ActivityDataProvider_dataCache;
    v80 = *(v90 + OBJC_IVAR____TtC10FitnessApp20ActivityDataProvider_dataCache);
    v47 = v83;
    Calendar.startOfDay(for:)();
    sub_100140278(&unk_1008E51B0);
    v48 = type metadata accessor for Calendar.Component();
    v49 = *(v48 - 8);
    v50 = *(v49 + 72);
    v51 = (*(v49 + 80) + 32) & ~*(v49 + 80);
    v52 = swift_allocObject();
    *(v52 + 16) = xmmword_1006D64F0;
    v53 = v52 + v51;
    v54 = *(v49 + 104);
    v54(v53, enum case for Calendar.Component.year(_:), v48);
    v54(v53 + v50, enum case for Calendar.Component.month(_:), v48);
    v54(v53 + 2 * v50, enum case for Calendar.Component.day(_:), v48);
    sub_10001C970(v52);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v55 = v86;
    Calendar.dateComponents(_:from:)();

    (*(v84 + 8))(v47, v85);

    v56 = v90;
    v57 = *(v90 + v81);
    v58 = v55;
    isa = DateComponents._bridgeToObjectiveC()().super.isa;
    v60 = v82;
    [*&v57[OBJC_IVAR____TtC10FitnessApp22ActivityChartDataCache_cache] setObject:v82 forKey:isa];

    sub_1000059F8(0, &qword_1008E3FD0);
    v61 = static OS_dispatch_queue.main.getter();
    v62 = swift_allocObject();
    v63 = v73;
    v62[2] = v72;
    v62[3] = v63;
    v62[4] = v60;
    v62[5] = v74;
    v62[6] = v56;
    v64 = v56;
    aBlock[4] = sub_1001FBAE8;
    aBlock[5] = v62;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000449A8;
    aBlock[3] = &unk_10084BF48;
    v65 = _Block_copy(aBlock);

    v66 = v60;
    swift_errorRetain();
    v67 = v64;

    v68 = v89;
    static DispatchQoS.unspecified.getter();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_10002BA84(&qword_1008E33B0, &type metadata accessor for DispatchWorkItemFlags);
    sub_100140278(&unk_1008E7F50);
    sub_10002621C();
    v69 = v76;
    v70 = v79;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v65);

    (*(v78 + 8))(v69, v70);
    (*(v75 + 8))(v68, v77);
    return (*(v87 + 8))(v58, v88);
  }

  return result;
}

uint64_t sub_1001F8508(void (*a1)(uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  a1(a3, a4);
  type metadata accessor for WidgetCenter();
  static WidgetCenter.shared.getter();
  dispatch thunk of WidgetCenter.reloadAllTimelines()();
}

uint64_t sub_1001F8568(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v63 = a3;
  v64 = a1;
  v65 = a2;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v53 = *(v4 - 8);
  v54 = v4;
  __chkstk_darwin(v4);
  v51 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = type metadata accessor for DispatchQoS();
  v50 = *(v52 - 8);
  __chkstk_darwin(v52);
  v49 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Date();
  v61 = *(v7 - 8);
  v62 = v7;
  __chkstk_darwin(v7);
  v9 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = type metadata accessor for DateComponents();
  v66 = *(v60 - 8);
  __chkstk_darwin(v60);
  v55 = v10;
  v56 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v49 - v12;
  v59 = OBJC_IVAR____TtC10FitnessApp20ActivityDataProvider_dataCache;
  v14 = *(v3 + OBJC_IVAR____TtC10FitnessApp20ActivityDataProvider_dataCache);
  v57 = OBJC_IVAR____TtC10FitnessApp22ActivityChartDataCache_calendar;
  v58 = v14;
  Calendar.startOfDay(for:)();
  sub_100140278(&unk_1008E51B0);
  v15 = type metadata accessor for Calendar.Component();
  v16 = *(v15 - 8);
  v17 = *(v16 + 72);
  v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1006D64F0;
  v20 = v19 + v18;
  v21 = *(v16 + 104);
  v21(v20, enum case for Calendar.Component.year(_:), v15);
  v21(v20 + v17, enum case for Calendar.Component.month(_:), v15);
  v21(v20 + 2 * v17, enum case for Calendar.Component.day(_:), v15);
  sub_10001C970(v19);
  swift_setDeallocating();
  v22 = v13;
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v23 = v66;
  Calendar.dateComponents(_:from:)();
  v24 = v60;

  (*(v61 + 8))(v9, v62);

  v25 = *&v67[v59];
  isa = DateComponents._bridgeToObjectiveC()().super.isa;
  v27 = [*&v25[OBJC_IVAR____TtC10FitnessApp22ActivityChartDataCache_basalEnergyCache] objectForKey:isa];

  if (!v27 || (LODWORD(v62) = sub_1001F6DC4(v64), sub_1000059F8(0, &qword_1008E3FD0), v28 = static OS_dispatch_queue.main.getter(), v29 = swift_allocObject(), v30 = v63, v29[2] = v65, v29[3] = v30, v29[4] = v27, aBlock[4] = sub_1001FBD54, aBlock[5] = v29, aBlock[0] = _NSConcreteStackBlock, aBlock[1] = 1107296256, aBlock[2] = sub_1000449A8, aBlock[3] = &unk_10084BFC0, v31 = _Block_copy(aBlock), , v32 = v27, , v33 = v49, static DispatchQoS.unspecified.getter(), aBlock[0] = _swiftEmptyArrayStorage, sub_10002BA84(&qword_1008E33B0, &type metadata accessor for DispatchWorkItemFlags), sub_100140278(&unk_1008E7F50), sub_10002621C(), v34 = v51, v35 = v22, v36 = v54, dispatch thunk of SetAlgebra.init<A>(_:)(), OS_dispatch_queue.async(group:qos:flags:execute:)(), _Block_release(v31), v32, v28, v23 = v66, v37 = v36, v22 = v35, (*(v53 + 8))(v34, v37), (*(v50 + 8))(v33, v52), (v62 & 1) != 0))
  {
    v38 = v67;
    v39 = *&v67[OBJC_IVAR____TtC10FitnessApp20ActivityDataProvider_queryExecutor];
    v40 = v56;
    (*(v23 + 16))(v56, v22, v24);
    v41 = (*(v23 + 80) + 24) & ~*(v23 + 80);
    v42 = (v55 + v41 + 7) & 0xFFFFFFFFFFFFFFF8;
    v43 = swift_allocObject();
    *(v43 + 16) = v38;
    (*(v23 + 32))(v43 + v41, v40, v24);
    v44 = (v43 + v42);
    v45 = v63;
    *v44 = v65;
    v44[1] = v45;

    v46 = v39;
    v47 = v38;
    sub_1003A9764(v64, 0, sub_1001FBCB0, v43);
  }

  return (*(v23 + 8))(v22, v24);
}

uint64_t sub_1001F8CC8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v28 = a5;
  v26 = a4;
  v29 = type metadata accessor for DispatchWorkItemFlags();
  v32 = *(v29 - 8);
  __chkstk_darwin(v29);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  v30 = *(v9 - 8);
  v31 = v9;
  __chkstk_darwin(v9);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DateComponents();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  sub_1000059F8(0, &qword_1008E3FD0);
  v27 = static OS_dispatch_queue.main.getter();
  v15 = swift_allocObject();
  swift_unknownObjectWeakInit();
  (*(v13 + 16))(&v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), a3, v12);
  v16 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = v15;
  *(v17 + 24) = a1;
  (*(v13 + 32))(v17 + v16, &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v12);
  v18 = (v17 + ((v14 + v16 + 7) & 0xFFFFFFFFFFFFFFF8));
  v19 = v28;
  *v18 = v26;
  v18[1] = v19;
  aBlock[4] = sub_1001FBD84;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000449A8;
  aBlock[3] = &unk_10084C010;
  v20 = _Block_copy(aBlock);
  v21 = a1;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10002BA84(&qword_1008E33B0, &type metadata accessor for DispatchWorkItemFlags);
  sub_100140278(&unk_1008E7F50);
  sub_10002621C();
  v22 = v29;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v23 = v27;
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v20);

  (*(v32 + 8))(v8, v22);
  return (*(v30 + 8))(v11, v31);
}

uint64_t sub_1001F90AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = *(Strong + OBJC_IVAR____TtC10FitnessApp20ActivityDataProvider_dataCache);

    isa = DateComponents._bridgeToObjectiveC()().super.isa;
    [*&v8[OBJC_IVAR____TtC10FitnessApp22ActivityChartDataCache_basalEnergyCache] setObject:a2 forKey:isa];
  }

  return a4(a2);
}

void sub_1001F91A0()
{
  sub_1001F9264();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1001F9264()
{
  if (!qword_1008E0F60)
  {
    type metadata accessor for Calendar();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1008E0F60);
    }
  }
}

uint64_t sub_1001F9328()
{
  type metadata accessor for WidgetCenter();
  static WidgetCenter.shared.getter();
  dispatch thunk of WidgetCenter.reloadAllTimelines()();
}

uint64_t sub_1001F9370(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v73 = a2;
  v5 = type metadata accessor for Calendar.Component();
  v90 = *(v5 - 8);
  v91 = v5;
  __chkstk_darwin(v5);
  v79 = &v69 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100140278(&unk_1008F73A0);
  __chkstk_darwin(v7 - 8);
  v9 = &v69 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v69 - v11;
  v13 = type metadata accessor for DateComponents();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v69 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for Date();
  v71 = *(v17 - 8);
  __chkstk_darwin(v17);
  v72 = &v69 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v89 = &v69 - v20;
  __chkstk_darwin(v21);
  v23 = &v69 - v22;
  __chkstk_darwin(v24);
  v70 = &v69 - v25;
  v93 = _swiftEmptyArrayStorage;
  if (a1 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    if (!result)
    {
      goto LABEL_22;
    }
  }

  else
  {
    result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
LABEL_22:

      sub_10019F064(v68);
      return v93;
    }
  }

  v77 = v9;
  v69 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v27 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_27;
    }

    v27 = *(a1 + 32);
  }

  v28 = v27;
  v83 = v16;
  v92 = v14;
  v88 = a3;
  v29 = [v27 startDate];

  static Date._unconditionallyBridgeFromObjectiveC(_:)();
  v30 = *(v71 + 32);
  v31 = v70;
  v76 = v71 + 32;
  v80 = v30;
  (v30)(v70, v23, v17);
  if (qword_1008DA550 != -1)
  {
    swift_once();
  }

  v32 = type metadata accessor for Calendar();
  v33 = sub_10001AC90(v32, qword_100925018);
  sub_100140278(&unk_1008E51B0);
  v34 = v90;
  v35 = (*(v90 + 80) + 32) & ~*(v90 + 80);
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_1006D46C0;
  v37 = *(v34 + 104);
  v78 = enum case for Calendar.Component.minute(_:);
  v38 = v91;
  v85 = v37;
  v86 = v34 + 104;
  (v37)(v36 + v35);
  sub_10001C970(v36);
  swift_setDeallocating();
  v39 = *(v34 + 8);
  v90 = v34 + 8;
  v84 = v39;
  v39((v36 + v35), v38);
  swift_deallocClassInstance();
  v40 = v83;
  v87 = v33;
  Calendar.dateComponents(_:from:to:)();

  v41 = DateComponents.minute.getter();
  LOBYTE(v36) = v42;
  result = (*(v92 + 8))(v40, v13);
  if (v36)
  {
    (*(v71 + 8))(v31, v17);
    goto LABEL_22;
  }

  if ((v41 & 0x8000000000000000) == 0)
  {
    v83 = v17;
    v43 = v78;
    v44 = v79;
    if (v41)
    {
      v45 = 0;
      v81 = v41;
      v82 = (v71 + 48);
      v74 = (v71 + 8);
      v75 = v12;
      v46 = v84;
      do
      {
        v49 = v91;
        v50 = v85;
        v85(v44, v43, v91);
        v92 = v45;
        Calendar.date(byAdding:value:to:wrappingComponents:)();
        v46(v44, v49);
        v51 = *v82;
        v52 = v44;
        v53 = v83;
        if ((*v82)(v12, 1, v83) == 1)
        {
          sub_10000EA04(v12, &unk_1008F73A0);
          v44 = v52;
          v47 = v81;
          v48 = v92;
        }

        else
        {
          v54 = v53;
          v55 = v52;
          v56 = v43;
          v57 = v54;
          v80(v89, v12);
          v58 = v91;
          v50(v55, v56, v91);
          v59 = v77;
          Calendar.date(byAdding:value:to:wrappingComponents:)();
          v46(v55, v58);
          if (v51(v59, 1, v57) == 1)
          {
            (*v74)(v89, v57);
            sub_10000EA04(v59, &unk_1008F73A0);
            v12 = v75;
            v44 = v79;
            v43 = v78;
            v47 = v81;
            v48 = v92;
          }

          else
          {
            v60 = v72;
            (v80)(v72, v59, v57);
            v61 = [objc_opt_self() quantityWithUnit:v73 doubleValue:0.0];
            v62 = objc_allocWithZone(_HKActivityStatisticsQuantityInfo);
            isa = Date._bridgeToObjectiveC()().super.isa;
            v64 = Date._bridgeToObjectiveC()().super.isa;
            v65 = [v62 initWithStartDate:isa endDate:v64];

            [v65 setQuantityValue:v61];
            v66 = v65;
            specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
            v48 = v92;
            v47 = v81;
            if (*((v93 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v93 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

            v67 = *v74;
            (*v74)(v60, v57);
            v67(v89, v57);
            v12 = v75;
            v44 = v79;
            v43 = v78;
          }
        }

        v45 = v48 + 1;
      }

      while (v47 != v45);
    }

    (*(v71 + 8))(v70, v83);
    goto LABEL_22;
  }

LABEL_27:
  __break(1u);
  return result;
}

void sub_1001F9BEC(unint64_t a1, uint64_t a2, Class a3)
{
  v43 = a2;
  v53 = type metadata accessor for Date();
  v5 = *(v53 - 8);
  __chkstk_darwin(v53);
  v42 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v52 = &v40 - v8;
  v54 = _swiftEmptyArrayStorage;
  if (a1 >> 62)
  {
    goto LABEL_35;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); a3; i = _CocoaArrayWrapper.endIndex.getter())
  {

    v10 = sub_1001F5F30(0, i, a3, a1, a3);
    v45 = *(v10 + 2);
    if (!v45)
    {
LABEL_30:

      return;
    }

    a1 = 0;
    v44 = (v10 + 32);
    v51 = (v5 + 8);
    v5 = _swiftEmptyArrayStorage;
    p_ivars = &ResourceBundleClass.ivars;
    v41 = v10;
    while (a1 < *(v10 + 2))
    {
      v12 = v44[a1];
      if (v12 >> 62)
      {
        a3 = v10;
        v13 = _CocoaArrayWrapper.endIndex.getter();
        v10 = a3;
        if (!v13)
        {
          goto LABEL_8;
        }
      }

      else
      {
        v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v13)
        {
          goto LABEL_8;
        }
      }

      v50 = v12 & 0xC000000000000001;
      v47 = a1;
      if ((v12 & 0xC000000000000001) != 0)
      {

        v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v48 = v12 & 0xFFFFFFFFFFFFFF8;
      }

      else
      {
        v48 = v12 & 0xFFFFFFFFFFFFFF8;
        if (!*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_34;
        }

        v14 = *(v12 + 32);

        v15 = v14;
      }

      v16 = [v15 startDate];
      v17 = v52;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v46 = v15;
      v18 = [v15 endDate];
      v19 = v42;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v20 = objc_allocWithZone(_HKActivityStatisticsQuantityInfo);
      isa = Date._bridgeToObjectiveC()().super.isa;
      v22 = Date._bridgeToObjectiveC()().super.isa;
      v23 = [v20 initWithStartDate:isa endDate:v22];

      a1 = v51;
      v24 = *v51;
      v25 = v53;
      (*v51)(v19, v53);
      v49 = v24;
      v24(v17, v25);
      v26 = objc_opt_self();
      v27 = v23;
      a3 = [v26 quantityWithUnit:v43 doubleValue:0.0];
      [v27 setQuantityValue:a3];

      v28 = v27;
      v5 = 0;
      do
      {
        if (v50)
        {
          v31 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v5 >= *(v48 + 16))
          {
            goto LABEL_32;
          }

          v31 = *(v12 + 8 * v5 + 32);
        }

        a1 = v31;
        v32 = (v5 + 1);
        if (__OFADD__(v5, 1))
        {
          __break(1u);
LABEL_32:
          __break(1u);
          goto LABEL_33;
        }

        v33 = [v31 endDate];
        v34 = v52;
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        a3 = Date._bridgeToObjectiveC()().super.isa;
        v49(v34, v53);
        [v28 setEndDate:a3];

        v35 = [a1 p_ivars[459]];
        if (v35)
        {
          a3 = v35;
          v36 = v13;
          v37 = v12;
          v38 = p_ivars;
          v39 = [v28 p_ivars[459]];
          if (v39)
          {
            v29 = v39;
            v30 = [v39 _quantityByAddingQuantity:a3];
          }

          else
          {
            v30 = 0;
          }

          [v28 setQuantityValue:v30];

          p_ivars = v38;
          v12 = v37;
          v13 = v36;
        }

        ++v5;
      }

      while (v32 != v13);

      a3 = &v54;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      a1 = v47;
      if (*((v54 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v54 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      v5 = v54;
      v10 = v41;
LABEL_8:
      if (++a1 == v45)
      {
        goto LABEL_30;
      }
    }

LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    ;
  }

  __break(1u);
}

void sub_1001FA14C(uint64_t a1, unint64_t a2, char *a3, uint64_t a4)
{
  v180 = a2;
  v7 = sub_100140278(&unk_1008E3FB0);
  __chkstk_darwin(v7 - 8);
  v189 = &v173 - v8;
  v9 = sub_100140278(&unk_1008E51A0);
  __chkstk_darwin(v9 - 8);
  v188 = &v173 - v10;
  v11 = type metadata accessor for DateComponents();
  v199 = *(v11 - 8);
  v200 = v11;
  __chkstk_darwin(v11);
  v194 = &v173 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v193 = &v173 - v14;
  __chkstk_darwin(v15);
  v198 = &v173 - v16;
  __chkstk_darwin(v17);
  v207 = &v173 - v18;
  v181 = v19;
  __chkstk_darwin(v20);
  v203 = &v173 - v21;
  v202 = type metadata accessor for Calendar.Component();
  v22 = *(v202 - 1);
  __chkstk_darwin(v202);
  v24 = &v173 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_100140278(&unk_1008F73A0);
  __chkstk_darwin(v25 - 8);
  v195 = &v173 - v26;
  v27 = type metadata accessor for Calendar();
  v28 = *(v27 - 8);
  __chkstk_darwin(v27);
  v30 = &v173 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v205 = type metadata accessor for Date();
  v208 = *(v205 - 8);
  __chkstk_darwin(v205);
  v192 = &v173 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v179 = &v173 - v33;
  __chkstk_darwin(v34);
  v178 = &v173 - v35;
  __chkstk_darwin(v36);
  v196 = &v173 - v37;
  __chkstk_darwin(v38);
  v204 = &v173 - v39;
  v191 = v40;
  __chkstk_darwin(v41);
  v43 = &v173 - v42;
  v201 = a4;

  sub_1001F6250(v30);
  v197 = a1;
  Calendar.startOfDay(for:)();
  v183 = v28;
  v44 = v28[1];
  v44(v30, v27);
  v190 = a3;
  sub_1001F6250(v30);
  v45 = *(v22 + 104);
  v46 = v24;
  LODWORD(v185) = enum case for Calendar.Component.day(_:);
  v47 = v202;
  v186 = v22 + 104;
  v184 = v45;
  (v45)(v24);
  v48 = v195;
  v206 = v43;
  Calendar.date(byAdding:value:to:wrappingComponents:)();
  v187 = v22;
  v49 = v208;
  v50 = v47;
  v51 = v27;
  (*(v22 + 8))(v46, v50);
  v52 = v205;
  v44(v30, v27);
  if ((*(v49 + 48))(v48, 1, v52) == 1)
  {
    sub_10000EA04(v48, &unk_1008F73A0);
    (*(v49 + 8))(v206, v52);
  }

  else
  {
    v53 = *(v49 + 32);
    v195 = (v49 + 32);
    v182 = v53;
    v53(v204, v48, v52);
    v54 = v183[7];
    v55 = v188;
    v54(v188, 1, 1, v27);
    v56 = type metadata accessor for TimeZone();
    v57 = *(*(v56 - 8) + 56);
    v58 = v189;
    v57(v189, 1, 1, v56);
    DateComponents.init(calendar:timeZone:era:year:month:day:hour:minute:second:nanosecond:weekday:weekdayOrdinal:quarter:weekOfMonth:weekOfYear:yearForWeekOfYear:)();
    DateComponents.second.setter();
    v54(v55, 1, 1, v51);
    v57(v58, 1, 1, v56);
    DateComponents.init(calendar:timeZone:era:year:month:day:hour:minute:second:nanosecond:weekday:weekdayOrdinal:quarter:weekOfMonth:weekOfYear:yearForWeekOfYear:)();
    DateComponents.minute.setter();
    v188 = OBJC_IVAR____TtC10FitnessApp20ActivityDataProvider_dataCache;
    v59 = v190;
    v60 = *&v190[OBJC_IVAR____TtC10FitnessApp20ActivityDataProvider_dataCache];
    v189 = OBJC_IVAR____TtC10FitnessApp22ActivityChartDataCache_calendar;
    v183 = v60;
    v61 = v196;
    Calendar.startOfDay(for:)();
    sub_100140278(&unk_1008E51B0);
    v62 = *(v187 + 72);
    v63 = (*(v187 + 80) + 32) & ~*(v187 + 80);
    v64 = swift_allocObject();
    *(v64 + 16) = xmmword_1006D64F0;
    v65 = v64 + v63;
    v66 = v202;
    v67 = v184;
    (v184)(v65, enum case for Calendar.Component.year(_:), v202);
    (v67)(v65 + v62, enum case for Calendar.Component.month(_:), v66);
    (v67)(v65 + 2 * v62, v185, v66);
    v68 = v59;
    sub_10001C970(v64);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v69 = v208;
    Calendar.dateComponents(_:from:)();
    v70 = v205;

    v189 = *(v69 + 8);
    (v189)(v61, v70);

    v71 = *&v188[v59];
    isa = DateComponents._bridgeToObjectiveC()().super.isa;
    v73 = [*&v71[OBJC_IVAR____TtC10FitnessApp22ActivityChartDataCache_cache] objectForKey:isa];

    v74 = v200;
    v75 = v201;
    v76 = v206;
    v77 = v207;
    if (!v73)
    {
      goto LABEL_7;
    }

    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v79 = Strong;
      v80 = v73;
      sub_100510874(v80);

      v73 = v79;
    }

    if ((sub_1001F6DC4(v197) & 1) == 0)
    {
      v100 = v199[1];
      v100(v198, v74);
      v100(v77, v74);
      v100(v203, v74);
      v101 = v189;
      (v189)(v204, v70);
      v101(v76, v70);
    }

    else
    {
LABEL_7:
      v186 = v69 + 8;
      v202 = *(v59 + OBJC_IVAR____TtC10FitnessApp20ActivityDataProvider_queryExecutor);
      v81 = *(v69 + 16);
      v82 = v178;
      v81(v178, v76, v70);
      v83 = v179;
      v190 = v81;
      v81(v179, v197, v70);
      v84 = v70;
      v208 = v69 + 16;
      v85 = *(v69 + 80);
      v185 = ~v85;
      v86 = (v85 + 48) & ~v85;
      v184 = &v191[v85];
      v87 = &v191[v85 + v86] & ~v85;
      v188 = (v85 | 7);
      v88 = swift_allocObject();
      v197 = v88;
      *(v88 + 2) = sub_1001FB62C;
      *(v88 + 3) = v75;
      v89 = v180;
      *(v88 + 4) = v68;
      *(v88 + 5) = v89;
      v90 = v82;
      v91 = v182;
      v182(&v88[v86], v90, v84);
      v92 = &v88[v87];
      v93 = v202;
      v91(v92, v83, v84);
      v94 = OBJC_IVAR____TtC10FitnessApp21ActivityQueryExecutor_chartQuery;
      v95 = *&v93[OBJC_IVAR____TtC10FitnessApp21ActivityQueryExecutor_chartQuery];
      v187 = OBJC_IVAR____TtC10FitnessApp21ActivityQueryExecutor_chartQuery;
      if (v95)
      {
        v96 = *&v93[OBJC_IVAR____TtC10FitnessApp21ActivityQueryExecutor_healthStore];
        v97 = v93;

        v98 = v68;
        [v96 stopQuery:v95];
        v99 = *&v93[v94];
        *&v93[v94] = 0;
      }

      else
      {
        v102 = v93;

        v103 = v68;
      }

      v104 = v203;
      v105 = v196;
      v106 = v205;
      v107 = v190;
      (v190)(v196, v206, v205);
      v107(v192, v204, v106);
      v108 = v199;
      v109 = (v199 + 2);
      v110 = v199[2];
      v111 = v104;
      v112 = v200;
      v110(v193, v111, v200);
      v179 = v109;
      v178 = v110;
      v110(v194, v207, v112);
      v113 = (v85 + 24) & v185;
      v114 = &v184[v113] & v185;
      v115 = *(v108 + 80);
      v116 = &v191[v115 + v114] & ~v115;
      v117 = ((v181 + v115 + v116) & ~v115);
      v118 = (v117 + v181 + 7) & 0xFFFFFFFFFFFFFFF8;
      v176 = v115;
      v119 = swift_allocObject();
      *(v119 + 16) = v202;
      v177 = v113;
      v120 = v105;
      v121 = v182;
      v182((v119 + v113), v120, v106);
      v180 = v114;
      v121(v119 + v114, v192, v106);
      v122 = v199 + 4;
      v123 = v199[4];
      v181 = v116;
      v123(v119 + v116, v193, v112);
      v183 = v117;
      v175 = v122;
      v174 = v123;
      v123(v117 + v119, v194, v112);
      v185 = v118;
      *(v119 + v118) = 0;
      v184 = ((v118 + 15) & 0xFFFFFFFFFFFFFFF8);
      v124 = &v184[v119];
      v125 = v197;
      *v124 = sub_1001FB634;
      v124[1] = v125;
      v126 = objc_allocWithZone(_HKActivityStatisticsQuery);
      v127 = v202;
      v191 = v202;

      v128 = Date._bridgeToObjectiveC()().super.isa;
      v129 = Date._bridgeToObjectiveC()().super.isa;
      v130 = DateComponents._bridgeToObjectiveC()().super.isa;
      v131 = DateComponents._bridgeToObjectiveC()().super.isa;
      v213 = sub_1001FB6E8;
      v214 = v119;
      aBlock = _NSConcreteStackBlock;
      v210 = 1107296256;
      v211 = sub_100018C74;
      v212 = &unk_10084BE30;
      v132 = _Block_copy(&aBlock);
      v133 = [v126 initWithStartDate:v128 endDate:v129 moveIntervalComponents:v130 exerciseIntervalComponents:v131 initialQueryResultsHandler:v132];
      _Block_release(v132);

      v134 = v187;
      v135 = *(v127 + v187);
      *(v127 + v187) = v133;

      if (v133)
      {
        v136 = v133;
        v137 = String._bridgeToObjectiveC()();
        [v136 setDebugIdentifier:v137];
      }

      v138 = v200;
      v140 = v203;
      v139 = v204;
      v142 = v205;
      v141 = v206;
      if (*(v127 + v134))
      {
        v143 = v196;
        v144 = v190;
        v173 = *(v127 + v134);
        (v190)(v196, v206, v205);
        v145 = v192;
        v144(v192, v139, v142);
        v146 = v193;
        v147 = v178;
        (v178)(v193, v140, v138);
        v148 = v194;
        v147(v194, v207, v138);
        v149 = v184;
        v150 = swift_allocObject();
        v151 = v191;
        *(v150 + 16) = v191;
        v152 = v182;
        v182((v150 + v177), v143, v142);
        v153 = v145;
        v141 = v206;
        v152(v150 + v180, v153, v142);
        v154 = v174;
        v174(v150 + v181, v146, v138);
        v155 = v148;
        v156 = v197;
        v154(v183 + v150, v155, v138);
        *(v150 + v185) = 0;
        v157 = &v149[v150];
        *v157 = sub_1001FB634;
        v157[1] = v156;
        v213 = sub_1001FBE94;
        v214 = v150;
        aBlock = _NSConcreteStackBlock;
        v210 = 1107296256;
        v211 = sub_100018C74;
        v212 = &unk_10084BE80;
        v158 = _Block_copy(&aBlock);
        v159 = v151;

        v160 = v173;
        v139 = v204;

        [v160 setQueryUpdateHandler:v158];
        _Block_release(v158);

        v140 = v203;
        v161 = *(v202 + v187);
        if (v161)
        {
          v162 = v161;
          static os_log_type_t.default.getter();
          v163 = HKLogActivity;
          sub_100140278(&unk_1008E4E50);
          v164 = v141;
          v165 = v140;
          v166 = swift_allocObject();
          *(v166 + 16) = xmmword_1006D46C0;
          v167 = v163;
          v168 = Date._bridgeToObjectiveC()().super.isa;
          *(v166 + 56) = sub_1000059F8(0, &qword_1008E04E0);
          *(v166 + 64) = sub_1001DF1F0();
          *(v166 + 32) = v168;
          os_log(_:dso:log:_:_:)();

          [*&v159[OBJC_IVAR____TtC10FitnessApp21ActivityQueryExecutor_healthStore] executeQuery:v162];

          v169 = v199[1];
          v169(v198, v138);
          v169(v207, v138);
          v169(v165, v138);
          v170 = v189;
          (v189)(v204, v142);
          v170(v164, v142);

          return;
        }
      }

      v171 = v199[1];
      v171(v198, v138);
      v171(v207, v138);
      v171(v140, v138);
      v172 = v189;
      (v189)(v139, v142);
      v172(v141, v142);
    }
  }
}

uint64_t sub_1001FB634(void *a1, uint64_t a2)
{
  v5 = *(type metadata accessor for Date() - 8);
  v6 = *(v5 + 80);
  v7 = (v6 + 48) & ~v6;
  v8 = v2[2];
  v9 = v2[3];
  v10 = v2[4];
  v11 = v2[5];
  v12 = v2 + ((*(v5 + 64) + v6 + v7) & ~v6);

  return sub_1001F74E0(a1, a2, v8, v9, v10, v11, v2 + v7, v12);
}

uint64_t sub_1001FB6EC()
{
  v1 = type metadata accessor for Date();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v16 = (v3 + 24) & ~v3;
  v4 = *(v2 + 64);
  v5 = (v4 + v3 + v16) & ~v3;
  v6 = type metadata accessor for DateComponents();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v5 + v4 + v8) & ~v8;
  v10 = *(v7 + 64);
  v17 = v3 | v8;
  v11 = (v10 + v8 + v9) & ~v8;
  v12 = (((v10 + v11 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;

  v13 = *(v2 + 8);
  v13(v0 + v16, v1);
  v13(v0 + v5, v1);
  v14 = *(v7 + 8);
  v14(v0 + v9, v6);
  v14(v0 + v11, v6);

  return _swift_deallocObject(v0, v12 + 16, v17 | 7);
}

uint64_t sub_1001FB8B4(uint64_t a1, void *a2, uint64_t a3)
{
  v7 = *(type metadata accessor for Date() - 8);
  v8 = *(v7 + 80);
  v9 = (v8 + 24) & ~v8;
  v10 = *(v7 + 64);
  v11 = (v10 + v8 + v9) & ~v8;
  v12 = *(type metadata accessor for DateComponents() - 8);
  v13 = *(v12 + 80);
  v14 = (v11 + v10 + v13) & ~v13;
  v15 = *(v12 + 64);
  v16 = (v15 + v13 + v14) & ~v13;
  return sub_1003A8430(a1, a2, a3, *(v3 + 16), v3 + v9, v3 + v11, v3 + v14, v3 + v16, *(v3 + ((v15 + v16 + 7) & 0xFFFFFFFFFFFFFFF8)), *(v3 + ((((v15 + v16 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)), *(v3 + ((((v15 + v16 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8));
}

uint64_t sub_1001FBA0C()
{
  v1 = *(type metadata accessor for Date() - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 48) & ~v2;
  v4 = *(v1 + 64) + 7;
  v5 = (v4 + v3) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v2 + v7 + 8) & ~v2;
  return sub_1001F7BE0(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), v0 + v3, *(v0 + v5), *(v0 + v6), *(v0 + v7), v0 + v8, *(v0 + ((v4 + v8) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((v4 + v8) & 0xFFFFFFFFFFFFFFF8) + 8), *(v0 + ((((v4 + v8) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_1001FBAF8(char a1)
{
  v2 = a1 & 1;
  *(v1 + OBJC_IVAR____TtC10FitnessApp20ActivityDataProvider_isWheelchairUser) = a1;
  v3 = [objc_opt_self() defaultCenter];
  if (qword_1008DA5A0 != -1)
  {
    swift_once();
  }

  v4 = qword_100925168;
  sub_100140278(&unk_1008F2360);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1006D46C0;
  v6 = v4;
  AnyHashable.init<A>(_:)();
  *(inited + 96) = &type metadata for Bool;
  *(inited + 72) = v2;
  sub_1004CA070(inited);
  swift_setDeallocating();
  sub_10000EA04(inited + 32, &qword_1008F4FA0);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v3 postNotificationName:v6 object:0 userInfo:isa];

  type metadata accessor for WidgetCenter();
  static WidgetCenter.shared.getter();
  dispatch thunk of WidgetCenter.reloadAllTimelines()();
}

uint64_t sub_1001FBCB0(void *a1)
{
  v3 = *(type metadata accessor for DateComponents() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v1 + 16);
  v6 = (v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));
  v7 = *v6;
  v8 = v6[1];

  return sub_1001F8CC8(a1, v5, v1 + v4, v7, v8);
}

uint64_t sub_1001FBD84()
{
  v1 = *(type metadata accessor for DateComponents() - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1001F90AC(v3, v4, v0 + v2, v5);
}

uint64_t sub_1001FBE18(uint64_t a1, uint64_t a2)
{
  v4 = sub_100140278(&unk_1008E51A0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001FBEA8()
{
  result = [*(*(v0 + qword_1008E0F80 + 168) + OBJC_IVAR____TtC10FitnessApp37ActivitySharingFriendListDataProvider_friendListSectionManager) totalNumberOfPendingRequests];
  if (result < 0)
  {
    __break(1u);
  }

  else if (result && (v2 = objc_opt_self(), isa = Int._bridgeToObjectiveC()().super.super.isa, v4 = [v2 stringWithNumber:isa decimalPrecision:1], isa, v4))
  {
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();

    return v5;
  }

  else
  {
    return 0;
  }

  return result;
}

id sub_1001FBF74()
{
  v0 = sub_100140278(&qword_1008E0FD8);
  __chkstk_darwin(v0 - 8);
  v2 = &v12 - v1;
  v3 = type metadata accessor for UIBarButtonItem.Badge();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1001FBEA8();
  if (v7)
  {
    static UIBarButtonItem.Badge.string(_:)();
    v8 = [objc_opt_self() systemBackgroundColor];
    UIBarButtonItem.Badge.foregroundColor.setter();
    result = [objc_opt_self() keyColors];
    if (result)
    {
      v10 = result;

      v11 = [v10 nonGradientTextColor];

      UIBarButtonItem.Badge.backgroundColor.setter();
      (*(v4 + 16))(v2, v6, v3);
      (*(v4 + 56))(v2, 0, 1, v3);
      UIBarButtonItem.badge.setter();
      return (*(v4 + 8))(v6, v3);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    (*(v4 + 56))(v2, 1, 1, v3);
    return UIBarButtonItem.badge.setter();
  }

  return result;
}

void sub_1001FC1A8(char a1)
{
  v2 = v1;
  v21.receiver = v2;
  v21.super_class = type metadata accessor for ActivitySharingTabViewHostingController();
  objc_msgSendSuper2(&v21, "viewIsAppearing:", a1 & 1);
  v4 = [v2 navigationController];
  if (v4)
  {
    v5 = v4;
    v6 = [v4 navigationBar];

    [v6 setPrefersLargeTitles:1];
  }

  v7 = [v2 navigationItem];
  v8 = [objc_opt_self() mainBundle];
  v9 = String._bridgeToObjectiveC()();
  v10 = [v8 localizedStringForKey:v9 value:0 table:0];

  if (!v10)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = String._bridgeToObjectiveC()();
  }

  [v7 setTitle:v10];
  v11 = String._bridgeToObjectiveC()();
  v12 = [objc_opt_self() systemImageNamed:v11];

  v13 = [objc_allocWithZone(UIBarButtonItem) initWithImage:v12 style:0 target:v2 action:"didTapRightBarButtonItem:"];
  sub_1001FBF74();
  type metadata accessor for ActivitySharingFriendListDataProvider();
  sub_1001FC978();

  ObservableObject<>.objectWillChange.getter();

  v14 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v15 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v16 = swift_allocObject();
  *(v16 + 16) = v15;
  *(v16 + 24) = v14;
  v17 = swift_allocObject();
  *(v17 + 16) = sub_1001FC9D0;
  *(v17 + 24) = v16;
  type metadata accessor for ObservableObjectPublisher();
  v18 = v13;
  v19 = Publisher<>.sink(receiveValue:)();

  *&v2[qword_1008E0F78] = v19;

  v20 = [v2 navigationItem];
  [v20 setRightBarButtonItem:v18];
}

void sub_1001FC52C()
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
      sub_1001FBF74();
    }
  }
}

void sub_1001FC5B0(void *a1, uint64_t a2, char a3)
{
  v4 = a1;
  sub_1001FC1A8(a3);
}

void sub_1001FC604(uint64_t a1)
{
  *(a1 + qword_1008E0F78) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_1001FC66C()
{

  v1 = *(v0 + qword_1008E0F80 + 176);
  v8[10] = *(v0 + qword_1008E0F80 + 160);
  v8[11] = v1;
  v8[12] = *(v0 + qword_1008E0F80 + 192);
  v9 = *(v0 + qword_1008E0F80 + 208);
  v2 = *(v0 + qword_1008E0F80 + 112);
  v8[6] = *(v0 + qword_1008E0F80 + 96);
  v8[7] = v2;
  v3 = *(v0 + qword_1008E0F80 + 144);
  v8[8] = *(v0 + qword_1008E0F80 + 128);
  v8[9] = v3;
  v4 = *(v0 + qword_1008E0F80 + 48);
  v8[2] = *(v0 + qword_1008E0F80 + 32);
  v8[3] = v4;
  v5 = *(v0 + qword_1008E0F80 + 80);
  v8[4] = *(v0 + qword_1008E0F80 + 64);
  v8[5] = v5;
  v6 = *(v0 + qword_1008E0F80 + 16);
  v8[0] = *(v0 + qword_1008E0F80);
  v8[1] = v6;
  return sub_100026328(v8);
}

id sub_1001FC6EC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ActivitySharingTabViewHostingController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1001FC724(uint64_t a1)
{

  v2 = *(a1 + qword_1008E0F80 + 176);
  v9[10] = *(a1 + qword_1008E0F80 + 160);
  v9[11] = v2;
  v9[12] = *(a1 + qword_1008E0F80 + 192);
  v10 = *(a1 + qword_1008E0F80 + 208);
  v3 = *(a1 + qword_1008E0F80 + 112);
  v9[6] = *(a1 + qword_1008E0F80 + 96);
  v9[7] = v3;
  v4 = *(a1 + qword_1008E0F80 + 144);
  v9[8] = *(a1 + qword_1008E0F80 + 128);
  v9[9] = v4;
  v5 = *(a1 + qword_1008E0F80 + 48);
  v9[2] = *(a1 + qword_1008E0F80 + 32);
  v9[3] = v5;
  v6 = *(a1 + qword_1008E0F80 + 80);
  v9[4] = *(a1 + qword_1008E0F80 + 64);
  v9[5] = v6;
  v7 = *(a1 + qword_1008E0F80 + 16);
  v9[0] = *(a1 + qword_1008E0F80);
  v9[1] = v7;
  return sub_100026328(v9);
}

uint64_t sub_1001FC7B0(__int128 *a1)
{
  v1 = a1[11];
  v45 = a1[10];
  v46 = v1;
  v47 = a1[12];
  v48 = *(a1 + 26);
  v2 = a1[7];
  v41 = a1[6];
  v42 = v2;
  v3 = a1[9];
  v43 = a1[8];
  v44 = v3;
  v4 = a1[3];
  v37 = a1[2];
  v38 = v4;
  v5 = a1[5];
  v39 = a1[4];
  v40 = v5;
  v6 = a1[1];
  v35 = *a1;
  v36 = v6;
  v7 = objc_allocWithZone(type metadata accessor for ActivitySharingTabViewHostingController());
  *&v7[qword_1008E0F78] = 0;
  v8 = &v7[qword_1008E0F80];
  v9 = v36;
  *v8 = v35;
  *(v8 + 1) = v9;
  v10 = v40;
  v12 = v37;
  v11 = v38;
  *(v8 + 4) = v39;
  *(v8 + 5) = v10;
  *(v8 + 2) = v12;
  *(v8 + 3) = v11;
  v13 = v44;
  v15 = v41;
  v14 = v42;
  *(v8 + 8) = v43;
  *(v8 + 9) = v13;
  *(v8 + 6) = v15;
  *(v8 + 7) = v14;
  v17 = v46;
  v16 = v47;
  v18 = v45;
  *(v8 + 26) = v48;
  *(v8 + 11) = v17;
  *(v8 + 12) = v16;
  *(v8 + 10) = v18;
  v31 = v45;
  v32 = v46;
  v33 = v47;
  v34 = v48;
  v27 = v41;
  v28 = v42;
  v29 = v43;
  v30 = v44;
  v23 = v37;
  v24 = v38;
  v25 = v39;
  v26 = v40;
  v21 = v35;
  v22 = v36;
  sub_1000262F0(&v35, v20);
  return UIHostingController.init(rootView:)();
}

void sub_1001FC914(void *a1)
{
  v1 = a1;

  sub_100315C2C();
}

unint64_t sub_1001FC978()
{
  result = qword_1008DC038;
  if (!qword_1008DC038)
  {
    type metadata accessor for ActivitySharingFriendListDataProvider();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008DC038);
  }

  return result;
}

void sub_1001FCB50(uint64_t a1, void *a2)
{
  v3 = v2;
  v5 = type metadata accessor for SummaryStringBuilder();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v32 - v10;
  swift_unknownObjectRetain();
  SummaryStringBuilder.init(unitPreferencesProvider:)();
  [a2 workoutActivityType];
  (*(v6 + 16))(v9, v11, v5);
  v12 = objc_allocWithZone(type metadata accessor for SummaryBurnBarView());
  v13 = SummaryBurnBarView.init(workoutActivityType:stringBuilder:)();
  (*(v6 + 8))(v11, v5);
  v14 = v13;
  [v14 setTranslatesAutoresizingMaskIntoConstraints:0];
  v15 = [v3 contentView];
  [v15 addSubview:v14];

  v16 = objc_opt_self();
  sub_100140278(&unk_1008E4E20);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1006D68C0;
  v18 = [v14 topAnchor];
  v19 = [v3 contentView];
  v20 = [v19 topAnchor];

  v21 = [v18 constraintEqualToAnchor:v20 constant:16.0];
  *(v17 + 32) = v21;
  v22 = [v14 centerXAnchor];
  v23 = [v3 contentView];
  v24 = [v23 centerXAnchor];

  v25 = [v22 constraintEqualToAnchor:v24];
  *(v17 + 40) = v25;
  v26 = [v14 bottomAnchor];

  v27 = [v3 contentView];
  v28 = [v27 bottomAnchor];

  v29 = [v26 constraintEqualToAnchor:v28 constant:-16.0];
  *(v17 + 48) = v29;
  sub_10019EC5C();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v16 activateConstraints:isa];

  v31 = *&v3[OBJC_IVAR___CHWorkoutDetailBurnBarTableViewCell_burnBarView];
  *&v3[OBJC_IVAR___CHWorkoutDetailBurnBarTableViewCell_burnBarView] = v14;
}

uint64_t sub_1001FCF1C(uint64_t a1, void *a2, uint64_t a3)
{
  v7 = sub_100140278(&qword_1008E1010);
  __chkstk_darwin(v7 - 8);
  v9 = &v21 - v8;
  v10 = type metadata accessor for SummaryBurnBarMetricViewModel();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR___CHWorkoutDetailBurnBarTableViewCell_burnBarView;
  if (!*&v3[OBJC_IVAR___CHWorkoutDetailBurnBarTableViewCell_burnBarView])
  {
    sub_1001FCB50(a1, a2);
    [v3 setNeedsLayout];
    [v3 layoutIfNeeded];
  }

  v15 = OBJC_IVAR___CHScoreSummaryWrapper_scoreSummary;
  v16 = type metadata accessor for ScoreSummary();
  v17 = *(v16 - 8);
  (*(v17 + 16))(v9, a3 + v15, v16);
  (*(v17 + 56))(v9, 0, 1, v16);
  SummaryBurnBarMetricViewModel.init(scoreSummary:showBurnBar:titleText:subtitleText:)();
  v18 = *&v3[v14];
  if (v18)
  {
    v19 = v18;
    dispatch thunk of SummaryBurnBarView.updateViewModel(_:)();
  }

  return (*(v11 + 8))(v13, v10);
}

id sub_1001FD24C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WorkoutDetailBurnBarTableViewCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_1001FD34C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LocationProviderBridge();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_1001FD390@<X0>(void *a1@<X8>)
{
  v2 = *(*v1 + OBJC_IVAR___CHLocationProvider_bridgedValue);
  *a1 = v2;
  return v2;
}

uint64_t sub_1001FD3BC()
{
  result = sub_1000059F8(319, &qword_1008DD230);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for CatalogTipSectionItem();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

Swift::Int sub_1001FD474()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  NSObject.hash(into:)();
  NSObject.hash(into:)();
  GalleryDestination.rawValue.getter();
  String.hash(into:)();

  ShelfDisplayStyle.rawValue.getter();
  String.hash(into:)();

  sub_10045DF10();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1001FD554()
{
  String.hash(into:)();
  NSObject.hash(into:)();
  NSObject.hash(into:)();
  GalleryDestination.rawValue.getter();
  String.hash(into:)();

  ShelfDisplayStyle.rawValue.getter();
  String.hash(into:)();

  sub_10045DF10();

  return String.hash(into:)();
}

Swift::Int sub_1001FD624()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  NSObject.hash(into:)();
  NSObject.hash(into:)();
  GalleryDestination.rawValue.getter();
  String.hash(into:)();

  ShelfDisplayStyle.rawValue.getter();
  String.hash(into:)();

  sub_10045DF10();
  String.hash(into:)();
  return Hasher._finalize()();
}

unint64_t sub_1001FD708()
{
  result = qword_1008E10F8;
  if (!qword_1008E10F8)
  {
    type metadata accessor for CatalogTipSection();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E10F8);
  }

  return result;
}

uint64_t sub_1001FD760(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  sub_1000059F8(0, &qword_1008DB898);
  if ((static NSObject.== infix(_:_:)() & 1) == 0 || (static NSObject.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v5 = GalleryDestination.rawValue.getter();
  v7 = v6;
  if (v5 == GalleryDestination.rawValue.getter() && v7 == v8)
  {
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v9 & 1) == 0)
    {
      return 0;
    }
  }

  v10 = ShelfDisplayStyle.rawValue.getter();
  v12 = v11;
  if (v10 == ShelfDisplayStyle.rawValue.getter() && v12 == v13)
  {

    goto LABEL_16;
  }

  v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v14 & 1) == 0)
  {
    return 0;
  }

LABEL_16:
  v15 = type metadata accessor for CatalogTipSection();
  if ((sub_10045E3E4(a1 + *(v15 + 36), a2 + *(v15 + 36)) & 1) == 0)
  {
    return 0;
  }

  v16 = *(v15 + 40);
  v17 = *(a1 + v16);
  v18 = *(a1 + v16 + 8);
  v19 = (a2 + v16);
  if (v17 == *v19 && v18 == v19[1])
  {
    return 1;
  }

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t sub_1001FDB4C(uint64_t a1, void (*a2)(void *))
{
  if (a1)
  {
    v3 = EffortSampleCollection.effortSample.getter();
    if (v3)
    {
      v4 = v3;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    }

    v5 = EffortSampleCollection.estimatedEffortSample.getter();
    if (v5)
    {
      v6 = v5;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    }
  }

  a2(_swiftEmptyArrayStorage);
}

void sub_1001FDDAC(uint64_t a1, uint64_t a2)
{
  sub_1000059F8(0, &qword_1008EE6F0);
  isa = Array._bridgeToObjectiveC()().super.isa;
  (*(a2 + 16))(a2, isa);
}

uint64_t sub_1001FDF60()
{
  type metadata accessor for EffortUtilities();
  result = static EffortUtilities.didUpdateDemoOverrideEffortValues.getter();
  qword_100925230 = result;
  return result;
}

id sub_1001FE1D4(unint64_t a1)
{
  v2 = v1;
  v13 = _swiftEmptyArrayStorage;
  v4 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_19:
    v5 = _CocoaArrayWrapper.endIndex.getter();
    if (!v5)
    {
      goto LABEL_20;
    }
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
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
      if ((a1 & 0xC000000000000001) != 0)
      {
        v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v7 >= *(v4 + 16))
        {
          goto LABEL_18;
        }

        v8 = *(a1 + 8 * v7 + 32);
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

      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        break;
      }

      ++v7;
      if (v6 == v5)
      {
        goto LABEL_20;
      }
    }

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  }

  while (v6 != v5);
LABEL_20:

  type metadata accessor for EffortUtilities();
  v10 = static EffortUtilities.effortSampleCollection(for:)();

  *&v2[OBJC_IVAR___CHEffortSampleCollection_collection] = v10;
  v12.receiver = v2;
  v12.super_class = type metadata accessor for CHEffortSampleCollection();
  return objc_msgSendSuper2(&v12, "init");
}

id sub_1001FE4C4(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

void sub_1001FE540(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  type metadata accessor for EffortUtilities();
  static EffortUtilities.save(quantity:workout:workoutActivity:healthStore:)();
  if (a6)
  {
    if (a2 && (v8 = EffortSampleCollection.estimatedEffortSample.getter(), (a2 = v8) != 0))
    {
      v9 = [v8 quantity];
    }

    else
    {
      v9 = 0;
    }

    v10 = v9;
    static EffortUtilities.sendUpdatedEffortAnalyticsEvent(workout:workoutActivity:perceivedEffortQuantity:estimatedEffortQuantity:)();
  }
}

id sub_1001FE738()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FitnessAppActivityTypeMigrationKeys();
  return objc_msgSendSuper2(&v2, "dealloc");
}

NSString sub_1001FE794()
{
  result = String._bridgeToObjectiveC()();
  qword_100925238 = result;
  return result;
}

uint64_t sub_1001FE828()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1001FE880();
  }

  return result;
}

uint64_t sub_1001FE880()
{
  v1 = *v0;
  v2 = swift_allocObject();
  swift_weakInit();
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;

  sub_100036890(sub_1001FF228, v3);
}

void sub_1001FE94C(char a1)
{
  v2 = static os_log_type_t.default.getter();
  v3 = HKLogActivity;
  if (os_log_type_enabled(HKLogActivity, v2))
  {
    v4 = v3;
    v5 = swift_slowAlloc();
    *v5 = 67109120;
    *(v5 + 4) = a1 & 1;
    _os_log_impl(&_mh_execute_header, v4, v2, "Fetched subscription status: %{BOOL}d", v5, 8u);
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    *(Strong + 80) = a1 & 1;
  }

  v7 = [objc_opt_self() standardUserDefaults];
  isa = Bool._bridgeToObjectiveC()().super.super.isa;
  v9 = String._bridgeToObjectiveC()();
  [v7 setValue:isa forKey:v9];

  swift_beginAccess();
  v10 = swift_weakLoadStrong();
  if (v10)
  {
    v11 = v10;
    v12 = [objc_opt_self() defaultCenter];
    if (qword_1008DA630 != -1)
    {
      swift_once();
    }

    [v12 postNotificationName:qword_100925238 object:v11];
  }
}

uint64_t sub_1001FEB50(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = type metadata accessor for Date();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  Date.init()();
  v7 = ServiceSubscription.isSubscribed(date:)();
  (*(v4 + 8))(v6, v3);
  return a2(v7 & 1);
}

uint64_t sub_1001FEC50(uint64_t a1, uint64_t (*a2)(void), uint64_t a3, uint64_t a4)
{
  v6 = static os_log_type_t.default.getter();
  v7 = HKLogActivity;
  if (os_log_type_enabled(HKLogActivity, v6))
  {
    v8 = v7;
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    swift_errorRetain();
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v11;
    *v10 = v11;
    _os_log_impl(&_mh_execute_header, v8, v6, "Fetching subscription status failed with error: %@", v9, 0xCu);
    sub_10000EA04(v10, &unk_1008DB8B0);
  }

  swift_getErrorValue();
  v12 = Error.domain.getter();
  v14 = v13;
  sub_1001FF1D4();
  if (v12 == Error.domain.getter() && v14 == v15)
  {
  }

  else
  {
    v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v17 & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  swift_getErrorValue();
  v18 = Error.code.getter();
  if (v18 != Error.code.getter())
  {
LABEL_12:
    v19 = *(a4 + 80);
    return a2(v19 & 1);
  }

  v19 = 0;
  return a2(v19 & 1);
}

uint64_t sub_1001FEE78()
{
  swift_unknownObjectRelease();
  sub_100005A40(v0 + 32);

  return swift_deallocClassInstance();
}

uint64_t getEnumTagSinglePayload for FitnessPlusSubscriptionProvider.State(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_20;
  }

  v2 = a2 + 2;
  if (a2 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 <= 1)
  {
    if (!v4)
    {
      goto LABEL_20;
    }

    v5 = a1[1];
    if (!a1[1])
    {
      goto LABEL_20;
    }

    return (*a1 | (v5 << 8)) - 2;
  }

  if (v4 == 2)
  {
    v5 = *(a1 + 1);
    if (*(a1 + 1))
    {
      return (*a1 | (v5 << 8)) - 2;
    }
  }

  else
  {
    v5 = *(a1 + 1);
    if (v5)
    {
      return (*a1 | (v5 << 8)) - 2;
    }
  }

LABEL_20:
  v7 = *a1;
  v8 = v7 >= 2;
  v9 = (v7 + 2147483646) & 0x7FFFFFFF;
  if (!v8)
  {
    v9 = -1;
  }

  if (v9 + 1 >= 2)
  {
    return v9;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for FitnessPlusSubscriptionProvider.State(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 2;
  if (a3 + 2 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xFE)
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 1) = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 1) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v5)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_1001FF048(unsigned __int8 *a1)
{
  v1 = *a1;
  v2 = v1 >= 2;
  v3 = (v1 + 2147483646) & 0x7FFFFFFF;
  if (v2)
  {
    return (v3 + 1);
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_1001FF064(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 1;
  }

  return result;
}

uint64_t sub_1001FF08C()
{

  sub_100140278(&qword_1008E4F20);
  Dependencies.resolve<A>(failureHandler:)();

  *(v0 + 16) = v2[0];

  sub_100140278(&qword_1008E1278);
  Dependencies.resolve<A>(failureHandler:)();

  sub_100006260(v2, v0 + 32);
  type metadata accessor for SubscriptionToken();
  swift_allocObject();
  swift_unknownObjectRetain();
  *(v0 + 72) = SubscriptionToken.init(eventHub:)();
  *(v0 + 80) = 2;
  return v0;
}

unint64_t sub_1001FF1D4()
{
  result = qword_1008E1280;
  if (!qword_1008E1280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E1280);
  }

  return result;
}

uint64_t sub_1001FF23C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = static VerticalAlignment.center.getter();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v4 = sub_100140278(&qword_1008E12B0);
  return sub_1001FF294(a1, a2 + *(v4 + 44));
}

uint64_t sub_1001FF294@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v42 = a2;
  v3 = type metadata accessor for BorderedProminentButtonStyle();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100140278(&qword_1008E12B8);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v39 - v9;
  v11 = sub_100140278(&qword_1008E12C0);
  v12 = *(v11 - 8);
  v40 = v11;
  v41 = v12;
  __chkstk_darwin(v11);
  v14 = &v39 - v13;
  *(swift_allocObject() + 16) = a1;
  v15 = a1;
  sub_100140278(&qword_1008E12C8);
  sub_1001FFDF8();
  Button.init(action:label:)();
  BorderedProminentButtonStyle.init()();
  v16 = sub_10014A6B0(&qword_1008E12D8, &qword_1008E12B8);
  v17 = sub_100066038(&qword_1008DC548, &type metadata accessor for BorderedProminentButtonStyle);
  View.buttonStyle<A>(_:)();
  (*(v4 + 8))(v6, v3);
  (*(v8 + 8))(v10, v7);
  Solarium.init()();
  sub_100140278(&qword_1008E12E0);
  v43 = v7;
  v44 = v3;
  v45 = v16;
  v46 = v17;
  swift_getOpaqueTypeConformance2();
  sub_1001FFEB4();
  v18 = v42;
  v19 = v40;
  View.staticIf<A, B>(_:then:)();
  (*(v41 + 8))(v14, v19);
  v20 = (v18 + *(sub_100140278(&qword_1008E12F0) + 36));
  v21 = *(sub_100140278(&qword_1008DC578) + 28);
  v22 = enum case for ControlSize.large(_:);
  v23 = type metadata accessor for ControlSize();
  (*(*(v23 - 8) + 104))(v20 + v21, v22, v23);
  *v20 = swift_getKeyPath();
  v24 = sub_100046170();
  v25 = Color.init(uiColor:)();
  KeyPath = swift_getKeyPath();
  v43 = v25;
  v27 = AnyShapeStyle.init<A>(_:)();
  v28 = (v18 + *(sub_100140278(&qword_1008E12F8) + 36));
  *v28 = KeyPath;
  v28[1] = v27;
  LOBYTE(v27) = static Edge.Set.all.getter();
  EdgeInsets.init(_all:)();
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v36 = v35;
  result = sub_100140278(&qword_1008E1300);
  v38 = v18 + *(result + 36);
  *v38 = v27;
  *(v38 + 8) = v30;
  *(v38 + 16) = v32;
  *(v38 + 24) = v34;
  *(v38 + 32) = v36;
  *(v38 + 40) = 0;
  return result;
}

void sub_1001FF794(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Font.Leading();
  v38 = *(v2 - 8);
  __chkstk_darwin(v2);
  v37 = v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = type metadata accessor for Font.TextStyle();
  v4 = *(v36 - 8);
  __chkstk_darwin(v36);
  v6 = v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  LocalizedStringKey.init(stringLiteral:)();
  v7 = Text.init(_:tableName:bundle:comment:)();
  v9 = v8;
  v11 = v10;
  v12 = [objc_opt_self() keyColors];
  if (v12)
  {
    v13 = v12;
    v34 = v2;
    v35 = a1;
    v14 = [v12 nonGradientTextColor];

    if (v14)
    {
      *&v48[0] = Color.init(uiColor:)();
      v15 = Text.foregroundStyle<A>(_:)();
      v32[1] = v16;
      v33 = v15;
      v18 = v17;
      v20 = v19;
      sub_10004642C(v7, v9, v11 & 1);

      v21 = v36;
      (*(v4 + 104))(v6, enum case for Font.TextStyle.body(_:), v36);
      static Font.Weight.semibold.getter();
      static Font.system(_:weight:)();
      (*(v4 + 8))(v6, v21);
      v23 = v37;
      v22 = v38;
      v24 = v34;
      (*(v38 + 104))(v37, enum case for Font.Leading.tight(_:), v34);
      Font.leading(_:)();

      (*(v22 + 8))(v23, v24);
      v25 = v33;
      v26 = Text.font(_:)();
      v28 = v27;
      LOBYTE(v22) = v29;
      v31 = v30;

      sub_10004642C(v25, v18, v20 & 1);

      static Alignment.center.getter();
      _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
      v49 = v22 & 1;
      *&v39 = v26;
      *(&v39 + 1) = v28;
      LOBYTE(v40) = v22 & 1;
      *(&v40 + 1) = v31;
      static FitnessAccessibilityIdentifier.SummaryView.seeAllCategoriesButton.getter();
      sub_100140278(&qword_1008DC530);
      sub_100065FB4();
      View.accessibilityIdentifier(_:)();

      v48[6] = v45;
      v48[7] = v46;
      v48[8] = v47;
      v48[2] = v41;
      v48[3] = v42;
      v48[4] = v43;
      v48[5] = v44;
      v48[0] = v39;
      v48[1] = v40;
      sub_10020002C(v48);
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1001FFBC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = (a2 + *(sub_100140278(&qword_1008E12E0) + 36));
  sub_100140278(&qword_1008DC568);
  static ButtonBorderShape.capsule.getter();
  *v4 = swift_getKeyPath();
  v5 = sub_100140278(&qword_1008E12C0);
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, a1, v5);
}

id sub_1001FFD78()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ActivityDashboardEntryLinksButtonCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_1001FFDF8()
{
  result = qword_1008E12D0;
  if (!qword_1008E12D0)
  {
    sub_100141EEC(&qword_1008E12C8);
    sub_100065FB4();
    sub_100066038(&qword_1008DCEF8, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E12D0);
  }

  return result;
}

unint64_t sub_1001FFEB4()
{
  result = qword_1008E12E8;
  if (!qword_1008E12E8)
  {
    sub_100141EEC(&qword_1008E12E0);
    sub_100141EEC(&qword_1008E12B8);
    type metadata accessor for BorderedProminentButtonStyle();
    sub_10014A6B0(&qword_1008E12D8, &qword_1008E12B8);
    sub_100066038(&qword_1008DC548, &type metadata accessor for BorderedProminentButtonStyle);
    swift_getOpaqueTypeConformance2();
    sub_10014A6B0(&qword_1008DC560, &qword_1008DC568);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E12E8);
  }

  return result;
}

uint64_t sub_10020002C(uint64_t a1)
{
  v2 = sub_100140278(&qword_1008DC530);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_10020027C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ScoreSummaryWrapper();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for ScoreSummaryWrapper()
{
  result = qword_1008E1330;
  if (!qword_1008E1330)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100200374()
{
  result = type metadata accessor for ScoreSummary();
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

id sub_100200404()
{
  result = [objc_allocWithZone(ARUIRenderer) init];
  static ARUIRendererCacheWrapper.sharedRenderer = result;
  return result;
}

uint64_t *ARUIRendererCacheWrapper.sharedRenderer.unsafeMutableAddressor()
{
  if (qword_1008DA638 != -1)
  {
    swift_once();
  }

  return &static ARUIRendererCacheWrapper.sharedRenderer;
}

id sub_10020048C()
{
  if (qword_1008DA638 != -1)
  {
    swift_once();
  }

  v1 = static ARUIRendererCacheWrapper.sharedRenderer;

  return v1;
}

id sub_1002004E8()
{
  if (qword_1008DA638 != -1)
  {
    swift_once();
  }

  v1 = static ARUIRendererCacheWrapper.sharedRenderer;

  return v1;
}

id ARUIRendererCacheWrapper.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ARUIRendererCacheWrapper.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ARUIRendererCacheWrapper();
  return objc_msgSendSuper2(&v2, "init");
}

id ARUIRendererCacheWrapper.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ARUIRendererCacheWrapper();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100200654@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = (a2 + *(sub_100140278(&qword_1008E13D8) + 36));
  sub_100140278(&qword_1008DC568);
  static ButtonBorderShape.capsule.getter();
  *v4 = swift_getKeyPath();
  v5 = sub_100140278(&qword_1008E13A0);
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, a1, v5);
}

id sub_100200800()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ActivityDashboardEditButtonCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_10020085C()
{
  result = qword_1008E13E0;
  if (!qword_1008E13E0)
  {
    sub_100141EEC(&qword_1008E13D8);
    sub_100141EEC(&qword_1008E1398);
    type metadata accessor for BorderedProminentButtonStyle();
    sub_10014A6B0(&qword_1008E13D0, &qword_1008E1398);
    sub_100066038(&qword_1008DC548, &type metadata accessor for BorderedProminentButtonStyle);
    swift_getOpaqueTypeConformance2();
    sub_10014A6B0(&qword_1008DC560, &qword_1008DC568);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E13E0);
  }

  return result;
}

uint64_t sub_1002009D4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100140278(&qword_1008E13B8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_100200A6C()
{
  type metadata accessor for Date();
  if (v0 <= 0x3F)
  {
    sub_100200AF0();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_100200AF0()
{
  if (!qword_1008E1470)
  {
    type metadata accessor for ActivitySharingFriendListItem();
    v0 = type metadata accessor for Array();
    if (!v1)
    {
      atomic_store(v0, &qword_1008E1470);
    }
  }
}

int *sub_100200B48()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ActivitySharingFriendListItem();
  v19 = *(v5 - 8);
  __chkstk_darwin(v5 - 8);
  v7 = (&v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  Hasher.init()();
  Date.timeIntervalSince1970.getter();
  if (v8 == 0.0)
  {
    v8 = 0.0;
  }

  Hasher._combine(_:)(*&v8);
  result = type metadata accessor for ActivitySharingFriendListDateItemGroup();
  v10 = *(v0 + result[5]);
  v11 = *(v10 + 16);
  if (v11)
  {
    v12 = 0;
    v13 = v10 + ((*(v19 + 80) + 32) & ~*(v19 + 80));
    v14 = (v2 + 16);
    v15 = (v2 + 8);
    while (v12 < *(v10 + 16))
    {
      sub_100176FF4(v13 + *(v19 + 72) * v12, v7);
      v17 = *v7;
      if ([*v7 isMe])
      {
        if (qword_1008DA770 != -1)
        {
          swift_once();
        }

        v16 = sub_10001AC90(v1, qword_1008E4990);
        (*v14)(v4, v16, v1);
      }

      else
      {
        result = [v17 UUID];
        if (!result)
        {
          goto LABEL_15;
        }

        v18 = result;
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();
      }

      ++v12;
      sub_1001447C0();
      dispatch thunk of Hashable.hash(into:)();
      (*v15)(v4, v1);
      result = sub_100200E38(v7);
      if (v11 == v12)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
  }

  else
  {
LABEL_13:
    v27 = v22;
    v28 = v23;
    v29 = v24;
    v25 = v20;
    v26 = v21;
    return Hasher.finalize()();
  }

  return result;
}

int *sub_100200E10@<X0>(int **a1@<X8>)
{
  result = sub_100200B48();
  *a1 = result;
  return result;
}

uint64_t sub_100200E38(uint64_t a1)
{
  v2 = type metadata accessor for ActivitySharingFriendListItem();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100200E98()
{
  result = qword_1008E14A0;
  if (!qword_1008E14A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E14A0);
  }

  return result;
}

unint64_t sub_100200EF0()
{
  result = qword_1008E14A8;
  if (!qword_1008E14A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E14A8);
  }

  return result;
}

unint64_t sub_100200F48()
{
  result = qword_1008E14B0;
  if (!qword_1008E14B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E14B0);
  }

  return result;
}

uint64_t sub_100200F9C@<X0>(uint64_t *a1@<X8>)
{
  sub_100140278(&qword_1008DD148);
  type metadata accessor for AppDependencyManager();
  static AppDependencyManager.shared.getter();
  v2 = AppDependency.__allocating_init(key:manager:)();
  sub_100140278(&qword_1008DD198);
  static AppDependencyManager.shared.getter();
  result = AppDependency.__allocating_init(key:manager:)();
  *a1 = v2;
  a1[1] = result;
  return result;
}

uint64_t sub_100201060(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100202054;

  return sub_10020168C(a1);
}

uint64_t sub_100201108(uint64_t a1)
{
  *(v2 + 16) = a1;
  v3 = *v1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_100202050;

  return sub_1002017BC(v3);
}

uint64_t sub_1002011B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_100201274;

  return EntityQuery.displayRepresentations(for:requestedComponents:)(a1, a2, a3, a4);
}

uint64_t sub_100201274(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

unint64_t sub_100201378()
{
  result = qword_1008E14B8;
  if (!qword_1008E14B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E14B8);
  }

  return result;
}

unint64_t sub_1002013D0()
{
  result = qword_1008E14C0;
  if (!qword_1008E14C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E14C0);
  }

  return result;
}

unint64_t sub_100201428()
{
  result = qword_1008E14C8;
  if (!qword_1008E14C8)
  {
    sub_100141EEC(&qword_1008E14D0);
    sub_1002013D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E14C8);
  }

  return result;
}

uint64_t sub_1002014AC(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_100201564();
  *v5 = v2;
  v5[1] = sub_10002BACC;

  return EntityQuery.results()(a1, a2, v6);
}

unint64_t sub_100201564()
{
  result = qword_1008E14D8;
  if (!qword_1008E14D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E14D8);
  }

  return result;
}

uint64_t sub_1002015B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 16) = a1;
  v7 = *v3;
  v8 = swift_task_alloc();
  *(v4 + 24) = v8;
  *v8 = v4;
  v8[1] = sub_10016200C;

  return sub_100201BE8(a2, a3, v7);
}

void sub_1002016AC()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = (v1 + 32);
    v4 = _swiftEmptyArrayStorage;
    while (1)
    {
      v6 = *v3++;
      v5 = v6;
      if (v6 < 0)
      {
        break;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v4 = sub_1001A2164(0, *(v4 + 2) + 1, 1, v4);
      }

      v8 = *(v4 + 2);
      v7 = *(v4 + 3);
      if (v8 >= v7 >> 1)
      {
        v4 = sub_1001A2164((v7 > 1), v8 + 1, 1, v4);
      }

      *(v4 + 2) = v8 + 1;
      *&v4[8 * v8 + 32] = v5;
      if (!--v2)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {
    v4 = _swiftEmptyArrayStorage;
LABEL_11:
    v9 = *(v0 + 8);

    v9(v4);
  }
}

uint64_t sub_1002017BC(void *a1)
{
  *(v1 + 24) = a1;
  *(v1 + 32) = *a1;

  return _swift_task_switch(sub_100201874, 0, 0);
}

uint64_t sub_100201874()
{
  AppDependency.wrappedValue.getter();
  v1 = *(v0 + 16);
  *(v0 + 16) = 0;
  v2 = [v1 activityMoveModeWithError:v0 + 16];

  v3 = *(v0 + 16);
  if (v2)
  {
    type metadata accessor for AppDependencyManager();
    v4 = v3;
    static AppDependencyManager.shared.getter();
    AppDependency.__allocating_init(key:manager:)();
    sub_100140278(&qword_1008DD198);
    static AppDependencyManager.shared.getter();
    v5 = AppDependency.__allocating_init(key:manager:)();
    v6 = sub_10032FB50(v5);

    v7 = *(v6 + 16);
    if (v7)
    {
      v24 = v0;
      v8 = 0;
      v9 = _swiftEmptyArrayStorage;
      v10 = v2;
      do
      {
        if (v8 >= *(v6 + 16))
        {
          __break(1u);
        }

        v11 = v6 + 32 + 16 * v8;
        if (*(v11 + 9) - 2 >= 5)
        {
          v12 = *v11;
          v13 = [objc_allocWithZone(FIUIWorkoutActivityType) initWithActivityTypeIdentifier:*v11 isIndoor:0];
          if ([objc_opt_self() fiui_activitySupportsMetricType:1 activityType:v13 activityMoveMode:{objc_msgSend(v2, "activityMoveMode")}])
          {
            v14 = *(v9 + 2);
            v15 = v14;
            v16 = 32;
            while (v15)
            {
              v17 = *&v9[v16];
              v16 += 8;
              --v15;
              if (v17 == v12)
              {
                goto LABEL_4;
              }
            }

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v9 = sub_1001A2164(0, v14 + 1, 1, v9);
            }

            v19 = *(v9 + 2);
            v18 = *(v9 + 3);
            if (v19 >= v18 >> 1)
            {
              v9 = sub_1001A2164((v18 > 1), v19 + 1, 1, v9);
            }

            *(v9 + 2) = v19 + 1;
            *&v9[8 * v19 + 32] = v12;
            v2 = v10;
          }

          else
          {
LABEL_4:
          }
        }

        ++v8;
      }

      while (v8 != v7);

      v0 = v24;
    }

    else
    {

      v9 = _swiftEmptyArrayStorage;
    }

    v23 = *(v0 + 8);

    return v23(v9);
  }

  else
  {
    v20 = v3;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    v21 = *(v0 + 8);

    return v21();
  }
}

uint64_t sub_100201BE8(uint64_t a1, uint64_t a2, void *a3)
{
  v3[10] = a1;
  v3[11] = a2;
  v5 = swift_task_alloc();
  v3[12] = v5;
  *v5 = v3;
  v5[1] = sub_100201C94;

  return sub_1002017BC(a3);
}

uint64_t sub_100201C94(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 104) = a1;

  if (v1)
  {
    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return _swift_task_switch(sub_100201DC8, 0, 0);
  }
}

void sub_100201DC8()
{
  v1 = 0;
  v2 = v0[13];
  v29 = *(v2 + 16);
  v28 = _swiftEmptyArrayStorage;
  while (v29 != v1)
  {
    if (v1 >= *(v2 + 16))
    {
      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      __break(1u);
      return;
    }

    v3 = *(v2 + 32 + 8 * v1);
    v4 = FILocalizedNameForIndoorAgnosticActivityType();
    if (!v4)
    {
      goto LABEL_22;
    }

    v5 = v4;
    v7 = v0[10];
    v6 = v0[11];
    ++v1;
    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;

    v0[2] = v8;
    v0[3] = v10;
    v0[4] = v7;
    v0[5] = v6;
    sub_10000FCBC();
    LOBYTE(v5) = StringProtocol.localizedCaseInsensitiveContains<A>(_:)();

    if (v5)
    {
      v11 = v28;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_100185E44(0, v28[2] + 1, 1);
        v11 = v28;
      }

      v13 = v11[2];
      v12 = v11[3];
      if (v13 >= v12 >> 1)
      {
        sub_100185E44((v12 > 1), v13 + 1, 1);
        v11 = v28;
      }

      v11[2] = v13 + 1;
      v28 = v11;
      v11[v13 + 4] = v3;
    }
  }

  v14 = 0;
  v15 = v28;
  v16 = v28[2];
  while (v16 != v14)
  {
    if (v14 >= v15[2])
    {
      goto LABEL_21;
    }

    v17 = v15[v14 + 4];
    v18 = FILocalizedNameForIndoorAgnosticActivityType();
    if (!v18)
    {
      goto LABEL_23;
    }

    v19 = v18;
    v21 = v0[10];
    v20 = v0[11];
    ++v14;
    v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v24 = v23;

    v0[6] = v22;
    v0[7] = v24;
    v0[8] = v21;
    v0[9] = v20;
    sub_10000FCBC();
    v25 = StringProtocol.localizedCaseInsensitiveCompare<A>(_:)();

    v15 = v28;
    if (!v25)
    {

      sub_100140278(&qword_1008DE630);
      v26 = swift_allocObject();
      *(v26 + 16) = xmmword_1006D46C0;
      *(v26 + 32) = v17;
      break;
    }
  }

  v27 = v0[1];

  v27();
}

uint64_t sub_1002020D4()
{
  sub_100140278(&qword_1008E1740);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1006DD380;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v1;
  *(inited + 48) = 11;
  *(inited + 56) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 64) = v2;
  *(inited + 72) = 13;
  *(inited + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 88) = v3;
  *(inited + 96) = 77;
  *(inited + 104) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 112) = v4;
  *(inited + 120) = 16;
  *(inited + 128) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 136) = v5;
  *(inited + 144) = 63;
  *(inited + 152) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 160) = v6;
  *(inited + 168) = 24;
  *(inited + 176) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 184) = v7;
  *(inited + 192) = 13;
  *(inited + 200) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 208) = v8;
  *(inited + 216) = 37;
  *(inited + 224) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 232) = v9;
  *(inited + 240) = 52;
  *(inited + 248) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 256) = v10;
  *(inited + 264) = 3000;
  *(inited + 272) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 280) = v11;
  *(inited + 288) = 35;
  *(inited + 296) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 304) = v12;
  *(inited + 312) = 37;
  *(inited + 320) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 328) = v13;
  *(inited + 336) = 44;
  *(inited + 344) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 352) = v14;
  *(inited + 360) = 46;
  *(inited + 368) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 376) = v15;
  *(inited + 384) = 52;
  *(inited + 392) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 400) = v16;
  *(inited + 408) = 57;
  *(inited + 416) = 0xD000000000000030;
  *(inited + 424) = 0x800000010074D6B0;
  *(inited + 432) = xmmword_1006DD390;
  *(inited + 448) = 0x800000010074D6F0;
  *(inited + 456) = 59;
  *(inited + 464) = 0xD000000000000042;
  *(inited + 472) = 0x800000010074D730;
  *(inited + 480) = xmmword_1006DD3A0;
  *(inited + 496) = 0x800000010074D780;
  *(inited + 504) = 65;
  *(inited + 512) = 0xD00000000000002FLL;
  *(inited + 520) = 0x800000010074D7C0;
  *(inited + 528) = xmmword_1006DD3B0;
  *(inited + 544) = 0x800000010074D7F0;
  *(inited + 552) = 72;
  v17 = sub_1004CA1AC(inited);
  swift_setDeallocating();
  sub_100140278(&qword_1008E1748);
  swift_arrayDestroy();
  v18 = [objc_opt_self() otherWorkoutActivityTypes];
  sub_1000059F8(0, &qword_1008E1750);
  v19 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v20 = v19;
  if (v19 >> 62)
  {
LABEL_30:
    v46 = v20;
    v21 = _CocoaArrayWrapper.endIndex.getter();
    v20 = v46;
    if (v21)
    {
      goto LABEL_3;
    }

LABEL_31:

    return v17;
  }

  v21 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v21)
  {
    goto LABEL_31;
  }

LABEL_3:
  v22 = 0;
  v51 = v20 & 0xC000000000000001;
  v50 = v20;
  v48 = v20 & 0xFFFFFFFFFFFFFF8;
  v49 = v21;
  while (1)
  {
    if (v51)
    {
      v23 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v22 >= *(v48 + 16))
      {
        goto LABEL_29;
      }

      v23 = *(v20 + 8 * v22 + 32);
    }

    v24 = v23;
    v25 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
      goto LABEL_30;
    }

    v26 = [v23 integerValue];
    if ((v26 & 0x8000000000000000) != 0)
    {
      goto LABEL_26;
    }

    v27 = v26;
    v28 = _HKWorkoutActivityNameForActivityType();
    if (v28)
    {
      v29 = v28;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    sub_10000FCBC();
    v30 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
    v32 = v31;

    _StringGuts.grow(_:)(42);

    v33._countAndFlagsBits = v30;
    v33._object = v32;
    String.append(_:)(v33);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v35 = sub_100066F20(0xD000000000000028, 0x800000010074D840);
    v36 = v17[2];
    v37 = (v20 & 1) == 0;
    v38 = v36 + v37;
    if (__OFADD__(v36, v37))
    {
      goto LABEL_27;
    }

    v39 = v20;
    if (v17[3] < v38)
    {
      break;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      if (v20)
      {
        goto LABEL_4;
      }
    }

    else
    {
      sub_100492FF4();
      if (v39)
      {
LABEL_4:

        *(v17[7] + 8 * v35) = v27;

        goto LABEL_5;
      }
    }

LABEL_21:
    v17[(v35 >> 6) + 8] |= 1 << v35;
    v42 = (v17[6] + 16 * v35);
    *v42 = 0xD000000000000028;
    v42[1] = 0x800000010074D840;
    *(v17[7] + 8 * v35) = v27;

    v43 = v17[2];
    v44 = __OFADD__(v43, 1);
    v45 = v43 + 1;
    if (v44)
    {
      goto LABEL_28;
    }

    v17[2] = v45;
LABEL_5:
    ++v22;
    v20 = v50;
    if (v25 == v49)
    {
      goto LABEL_31;
    }
  }

  sub_100489128(v38, isUniquelyReferenced_nonNull_native);
  v40 = sub_100066F20(0xD000000000000028, 0x800000010074D840);
  if ((v39 & 1) == (v41 & 1))
  {
    v35 = v40;
    if (v39)
    {
      goto LABEL_4;
    }

    goto LABEL_21;
  }

  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

id sub_100202734(void *a1)
{
  v2 = v1;
  v4 = *(v1 + OBJC_IVAR____TtC10FitnessApp29CHINStartWorkoutIntentHandler_vocabulary);
  v5 = [a1 workoutName];
  if (v5 && (v6 = v5, v7 = [v5 vocabularyIdentifier], v6, v7))
  {
    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;

    if (!*(v4 + 16))
    {
LABEL_4:

      goto LABEL_8;
    }
  }

  else
  {
    v8 = 0;
    v10 = 0xE000000000000000;
    if (!*(v4 + 16))
    {
      goto LABEL_4;
    }
  }

  v11 = sub_100066F20(v8, v10);
  v13 = v12;

  if (v13)
  {
    v14 = *(*(v4 + 56) + 8 * v11);
    goto LABEL_9;
  }

LABEL_8:
  v14 = 3000;
LABEL_9:
  v15 = [a1 workoutLocationType];
  v16 = v15;
  v17 = 3;
  if (v15 != 1)
  {
    v17 = 1;
  }

  if (v15 == 2)
  {
    v18 = 2;
  }

  else
  {
    v18 = v17;
  }

  if (v14 == 46)
  {
    v19 = [a1 workoutLocationType];
    if (v19 == 2)
    {
      v20 = 1;
    }

    else
    {
      v20 = 2 * (v19 == 1);
    }
  }

  else
  {
    v20 = 0;
  }

  v21 = [objc_allocWithZone(_HKWheelchairUseCharacteristicCache) initWithHealthStore:*(v2 + OBJC_IVAR____TtC10FitnessApp29CHINStartWorkoutIntentHandler_healthStore)];
  if (v21)
  {
    v22 = v21;
    v23 = [v21 isWheelchairUser];
  }

  else
  {
    v23 = 0;
  }

  v24 = [objc_opt_self() possibleActivityTypesForIdentifier:v14 locationType:v18 swimmingLocationType:v20 wheelchairUser:v23];
  sub_1000059F8(0, &qword_1008E1768);
  v25 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v25 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    if (result)
    {
      goto LABEL_24;
    }

LABEL_29:

    v29 = objc_allocWithZone(FIUIWorkoutActivityType);

    return [v29 initWithActivityTypeIdentifier:v14 isIndoor:v16 == 2];
  }

  result = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_29;
  }

LABEL_24:
  if ((v25 & 0xC000000000000001) != 0)
  {
    v27 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_27;
  }

  if (*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v27 = *(v25 + 32);
LABEL_27:
    v28 = v27;

    return v28;
  }

  __break(1u);
  return result;
}

uint64_t sub_100202BF4(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for WorkoutGoal();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();

  return _swift_task_switch(sub_100202CB4, 0, 0);
}

uint64_t sub_100202CB4()
{
  v1 = *(v0 + 16);
  v2 = sub_100202734(v1);
  *(v0 + 56) = v2;
  v3 = [v1 workoutGoalUnitType];
  if (v3 <= 0xA)
  {
    v4 = 0x201u >> v3;
  }

  else
  {
    v4 = 1;
  }

  if (v3 <= 0xA)
  {
    v5 = 0x3Eu >> v3;
  }

  else
  {
    v5 = 0;
  }

  if (v3 <= 0xA)
  {
    v6 = 0x1C0u >> v3;
  }

  else
  {
    v6 = 0;
  }

  if (v3 <= 0xA)
  {
    v7 = 0x400u >> v3;
  }

  else
  {
    v7 = 0;
  }

  v8 = sub_100204074([*(v0 + 16) workoutGoalUnitType]);
  *(v0 + 64) = v8;
  v9 = INStartWorkoutIntent.goalValue.getter();
  if ((v4 & 1) != 0 || (v10 & 1) != 0 || !v8 || (v11 = v9, (v12 = [v8 _foundationUnit]) == 0))
  {
    (*(*(v0 + 40) + 104))(*(v0 + 48), enum case for WorkoutGoal.open(_:), *(v0 + 32));
    goto LABEL_21;
  }

  v13 = v12;
  if (v5)
  {
    objc_opt_self();
    v14 = swift_dynamicCastObjCClass();
    if (v14)
    {
      v16 = *(v0 + 40);
      v15 = *(v0 + 48);
      v17 = *(v0 + 32);
      *v15 = v11;
      v15[1] = v14;
      v18 = &enum case for WorkoutGoal.distance(_:);
LABEL_30:
      (*(v16 + 104))(v15, *v18, v17);
      goto LABEL_21;
    }
  }

  if (v6)
  {
    objc_opt_self();
    v22 = swift_dynamicCastObjCClass();
    if (v22)
    {
      v16 = *(v0 + 40);
      v15 = *(v0 + 48);
      v17 = *(v0 + 32);
      *v15 = v11;
      v15[1] = v22;
      v18 = &enum case for WorkoutGoal.time(_:);
      goto LABEL_30;
    }
  }

  if (v7)
  {
    objc_opt_self();
    v23 = swift_dynamicCastObjCClass();
    if (v23)
    {
      v16 = *(v0 + 40);
      v15 = *(v0 + 48);
      v17 = *(v0 + 32);
      *v15 = v11;
      v15[1] = v23;
      v18 = &enum case for WorkoutGoal.energy(_:);
      goto LABEL_30;
    }
  }

  v25 = *(v0 + 40);
  v24 = *(v0 + 48);
  v26 = *(v0 + 32);

  (*(v25 + 104))(v24, enum case for WorkoutGoal.open(_:), v26);
LABEL_21:
  v19 = swift_task_alloc();
  *(v0 + 72) = v19;
  *v19 = v0;
  v19[1] = sub_100202F38;
  v20 = *(v0 + 48);

  return sub_10058BB34(v2, v20);
}

uint64_t sub_100202F38(char a1)
{
  *(*v1 + 80) = a1;

  return _swift_task_switch(sub_100203038, 0, 0);
}

uint64_t sub_100203038()
{
  v1 = *(v0 + 80);
  v2 = objc_allocWithZone(INStartWorkoutIntentResponse);
  v3 = qword_1006DD538[v1];
  v5 = *(v0 + 56);
  v4 = *(v0 + 64);
  v7 = *(v0 + 40);
  v6 = *(v0 + 48);
  v8 = *(v0 + 32);
  v9 = [v2 initWithCode:v3 userActivity:0];

  (*(v7 + 8))(v6, v8);

  v10 = *(v0 + 8);

  return v10(v9);
}

uint64_t sub_100203290(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_100203354;

  return sub_100202BF4(v6);
}

uint64_t sub_100203354(void *a1)
{
  v3 = *(*v1 + 32);
  v4 = *(*v1 + 24);
  v5 = *(*v1 + 16);
  v8 = *v1;

  (v3)[2](v3, a1);
  _Block_release(v3);

  v6 = *(v8 + 8);

  return v6();
}

uint64_t sub_1002034B8()
{
}

uint64_t sub_100203708(int a1, void *aBlock)
{
  *(v2 + 16) = _Block_copy(aBlock);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_1002050B4;

  return sub_100204364();
}

uint64_t sub_100203978(int a1, void *aBlock)
{
  *(v2 + 16) = _Block_copy(aBlock);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_1002050B4;

  return sub_1002046E8();
}

uint64_t sub_100203BE8(int a1, void *aBlock)
{
  *(v2 + 16) = _Block_copy(aBlock);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_100203C94;

  return sub_100204A6C();
}

uint64_t sub_100203C94(void *a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  (v3)[2](v3, a1);
  _Block_release(v3);

  v4 = *(v6 + 8);

  return v4();
}

id sub_100203DD8(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_100203E34()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_10002BACC;

  return sub_100203BE8(v2, v3);
}

uint64_t sub_100203EE8()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10002BBC0;

  return sub_1005D7A50(v2, v3, v4);
}

uint64_t sub_100203FA8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10002BBC0;

  return sub_1005D7B38(a1, v4, v5, v6);
}

id sub_100204074(uint64_t a1)
{
  if ((a1 - 1) > 9)
  {
    return 0;
  }

  else
  {
    return [objc_opt_self() *(&off_10084C648)[a1 - 1]];
  }
}

void sub_1002040D0(void *a1, uint64_t a2, uint64_t a3)
{
  if (![a1 workoutGoalUnitType] && ((v5 = COERCE_DOUBLE(INStartWorkoutIntent.goalValue.getter()), (v6 & 1) != 0) || v5 <= 2.22044605e-16))
  {
    sub_1000059F8(0, &qword_1008E1770);
    v18 = [swift_getObjCClassFromMetadata() notRequired];
    (*(a3 + 16))(a3, v18);
  }

  else
  {
    v7 = sub_100202734(a1);
    [a1 workoutGoalUnitType];
    v8.super.super.isa = UInt._bridgeToObjectiveC()().super.super.isa;
    v9 = objc_opt_self();
    v10 = v7;
    v11 = [v9 fiui_supportedGoalTypesForActivityType:v10 activityMoveMode:FIActivityMoveModeUserDefault()];

    if (v11 && (sub_1000059F8(0, &qword_1008E1750), v12 = static Array._unconditionallyBridgeFromObjectiveC(_:)(), v11, isa = v8.super.super.isa, __chkstk_darwin(v13), v17[2] = &isa, v14 = sub_100324618(sub_10020504C, v17, v12), , (v14 & 1) != 0))
    {
      v15 = [objc_opt_self() successWithResolvedWorkoutGoalUnitType:{objc_msgSend(a1, "workoutGoalUnitType")}];
    }

    else
    {
      sub_1000059F8(0, &qword_1008E1770);
      v15 = [swift_getObjCClassFromMetadata() unsupported];
    }

    v16 = v15;
    (*(a3 + 16))(a3, v16);
  }
}

uint64_t sub_100204364()
{
  v1 = type metadata accessor for DataLinkCommand();
  v0[2] = v1;
  v0[3] = *(v1 - 8);
  v0[4] = swift_task_alloc();

  return _swift_task_switch(sub_100204420, 0, 0);
}

uint64_t sub_100204420()
{
  (*(v0[3] + 104))(v0[4], enum case for DataLinkCommand.pause(_:), v0[2]);
  v1 = swift_task_alloc();
  v0[5] = v1;
  *v1 = v0;
  v1[1] = sub_1002044EC;
  v2 = v0[4];

  return sub_10058C578(v2);
}

uint64_t sub_1002044EC(char a1)
{
  v2 = *(*v1 + 32);
  v3 = *(*v1 + 24);
  v4 = *(*v1 + 16);
  *(*v1 + 48) = a1;

  (*(v3 + 8))(v2, v4);

  return _swift_task_switch(sub_10020464C, 0, 0);
}

uint64_t sub_10020464C()
{
  v1 = [objc_allocWithZone(INPauseWorkoutIntentResponse) initWithCode:qword_1006DD5B0[*(v0 + 48)] userActivity:0];

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1002046E8()
{
  v1 = type metadata accessor for DataLinkCommand();
  v0[2] = v1;
  v0[3] = *(v1 - 8);
  v0[4] = swift_task_alloc();

  return _swift_task_switch(sub_1002047A4, 0, 0);
}

uint64_t sub_1002047A4()
{
  (*(v0[3] + 104))(v0[4], enum case for DataLinkCommand.resume(_:), v0[2]);
  v1 = swift_task_alloc();
  v0[5] = v1;
  *v1 = v0;
  v1[1] = sub_100204870;
  v2 = v0[4];

  return sub_10058C578(v2);
}

uint64_t sub_100204870(char a1)
{
  v2 = *(*v1 + 32);
  v3 = *(*v1 + 24);
  v4 = *(*v1 + 16);
  *(*v1 + 48) = a1;

  (*(v3 + 8))(v2, v4);

  return _swift_task_switch(sub_1002049D0, 0, 0);
}

uint64_t sub_1002049D0()
{
  v1 = [objc_allocWithZone(INResumeWorkoutIntentResponse) initWithCode:qword_1006DD5B0[*(v0 + 48)] userActivity:0];

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_100204A6C()
{
  v1 = type metadata accessor for DataLinkCommand();
  v0[2] = v1;
  v0[3] = *(v1 - 8);
  v0[4] = swift_task_alloc();

  return _swift_task_switch(sub_100204B28, 0, 0);
}

uint64_t sub_100204B28()
{
  (*(v0[3] + 104))(v0[4], enum case for DataLinkCommand.end(_:), v0[2]);
  v1 = swift_task_alloc();
  v0[5] = v1;
  *v1 = v0;
  v1[1] = sub_100204BF4;
  v2 = v0[4];

  return sub_10058C578(v2);
}

uint64_t sub_100204BF4(char a1)
{
  v2 = *(*v1 + 32);
  v3 = *(*v1 + 24);
  v4 = *(*v1 + 16);
  *(*v1 + 48) = a1;

  (*(v3 + 8))(v2, v4);

  return _swift_task_switch(sub_100204D54, 0, 0);
}

uint64_t sub_100204D54()
{
  v1 = [objc_allocWithZone(INEndWorkoutIntentResponse) initWithCode:qword_1006DD5B0[*(v0 + 48)] userActivity:0];

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_100204DF0()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_10002BBC0;

  return sub_100203978(v2, v3);
}

uint64_t sub_100204EA4()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_10002BBC0;

  return sub_100203708(v2, v3);
}

uint64_t sub_100204F58()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10002BBC0;

  return sub_100203290(v2, v3, v4);
}

uint64_t sub_10020500C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

unint64_t sub_1002050BC()
{
  result = qword_1008E1780;
  if (!qword_1008E1780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E1780);
  }

  return result;
}

unint64_t sub_100205114()
{
  result = qword_1008E1788;
  if (!qword_1008E1788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E1788);
  }

  return result;
}

unint64_t sub_10020516C()
{
  result = qword_1008E1790;
  if (!qword_1008E1790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E1790);
  }

  return result;
}

uint64_t sub_1002051C0()
{
  sub_100140278(&qword_1008DD148);
  type metadata accessor for AppDependencyManager();
  static AppDependencyManager.shared.getter();
  v0 = AppDependency.__allocating_init(key:manager:)();
  sub_100140278(&qword_1008DD198);
  static AppDependencyManager.shared.getter();
  result = AppDependency.__allocating_init(key:manager:)();
  qword_100925250 = v0;
  *algn_100925258 = result;
  return result;
}

uint64_t sub_100205280()
{
  v0 = sub_100140278(&qword_1008DD138);
  __chkstk_darwin(v0 - 8);
  v2 = &v7 - v1;
  v3 = type metadata accessor for LocalizedStringResource();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = type metadata accessor for TypeDisplayRepresentation();
  sub_100163368(v5, qword_100925260);
  sub_10001AC90(v5, qword_100925260);
  LocalizedStringResource.init(stringLiteral:)();
  (*(v4 + 56))(v2, 1, 1, v3);
  return TypeDisplayRepresentation.init(name:numericFormat:)();
}

uint64_t sub_1002053F0()
{
  v0 = sub_100140278(&qword_1008E17D8);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v9 - v2;
  v4 = sub_100140278(&qword_1008E17E0);
  __chkstk_darwin(v4);
  v5 = sub_100140278(&qword_1008E17D0);
  sub_100163368(v5, qword_100925278);
  sub_10001AC90(v5, qword_100925278);
  sub_100163218();
  EntityURLRepresentation.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v6._countAndFlagsBits = 0x617373656E746966;
  v6._object = 0xED00002F2F3A7070;
  EntityURLRepresentation.StringInterpolation.appendLiteral(_:)(v6);
  (*(v1 + 104))(v3, enum case for EntityURLRepresentation.StringInterpolation.Token.id<A>(_:), v0);
  EntityURLRepresentation.StringInterpolation.appendInterpolation(_:)();
  (*(v1 + 8))(v3, v0);
  v7._countAndFlagsBits = 0;
  v7._object = 0xE000000000000000;
  EntityURLRepresentation.StringInterpolation.appendLiteral(_:)(v7);
  return EntityURLRepresentation.init(stringInterpolation:)();
}

uint64_t sub_1002055F4(uint64_t a1, __int16 a2)
{
  if (HIBYTE(a2) <= 3u)
  {
    if (HIBYTE(a2) == 2)
    {
      return 0x79726F74736968;
    }

    if (HIBYTE(a2) == 3)
    {
      return 0xD000000000000010;
    }
  }

  else
  {
    switch(HIBYTE(a2))
    {
      case 4u:
        return 0x2F79726F74736968;
      case 5u:
        return 0xD000000000000013;
      case 6u:
        return 0x2F79726F74736968;
    }
  }

  v3 = 0x726F6F646E69;
  if ((a2 & 1) == 0)
  {
    v3 = 0x726F6F6474756FLL;
  }

  v4 = 0xE600000000000000;
  if ((a2 & 1) == 0)
  {
    v4 = 0xE700000000000000;
  }

  if (a2 == 2)
  {
    v5 = 0x726F6F6474756FLL;
  }

  else
  {
    v5 = v3;
  }

  if (a2 == 2)
  {
    v6 = 0xE700000000000000;
  }

  else
  {
    v6 = v4;
  }

  _StringGuts.grow(_:)(22);

  v7._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v7);

  v8._countAndFlagsBits = 47;
  v8._object = 0xE100000000000000;
  String.append(_:)(v8);
  v9._countAndFlagsBits = v5;
  v9._object = v6;
  String.append(_:)(v9);

  return 0xD000000000000011;
}

uint64_t sub_1002057C0@<X0>(void *a1@<X8>)
{
  if (qword_1008DA640 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  v1 = *algn_100925258;
  *a1 = qword_100925250;
  a1[1] = v1;
}

unint64_t sub_100205844()
{
  result = qword_1008E1798;
  if (!qword_1008E1798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E1798);
  }

  return result;
}

uint64_t sub_100205898@<X0>(uint64_t a1@<X8>)
{
  if (qword_1008DA650 != -1)
  {
    swift_once();
  }

  v2 = sub_100140278(&qword_1008E17D0);
  v3 = sub_10001AC90(v2, qword_100925278);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

unint64_t sub_100205950()
{
  result = qword_1008E17A0;
  if (!qword_1008E17A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E17A0);
  }

  return result;
}

unint64_t sub_1002059A4()
{
  result = qword_1008E17A8;
  if (!qword_1008E17A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E17A8);
  }

  return result;
}

unint64_t sub_1002059FC()
{
  result = qword_1008E17B0;
  if (!qword_1008E17B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E17B0);
  }

  return result;
}

uint64_t sub_100205A50@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1002055F4(*v1, *(v1 + 8));
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_100205A80()
{
  sub_100163314();
  v1 = URLRepresentableEntity.urlRepresentationParameter.getter();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_100205AEC@<X0>(uint64_t a1@<X8>)
{
  if (qword_1008DA648 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for TypeDisplayRepresentation();
  v3 = sub_10001AC90(v2, qword_100925260);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

unint64_t sub_100205B98()
{
  result = qword_1008E17B8;
  if (!qword_1008E17B8)
  {
    sub_100141EEC(&qword_1008E17C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E17B8);
  }

  return result;
}

uint64_t sub_100205BFC(uint64_t a1)
{
  v2 = sub_100163218();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_100205C4C()
{
  result = qword_1008E17C8;
  if (!qword_1008E17C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E17C8);
  }

  return result;
}

uint64_t sub_100205CA0()
{
  v1 = sub_1004477A4(*v0, *(v0 + 8));

  return DisplayRepresentation.init(stringLiteral:)(v1);
}

uint64_t sub_100205CE0(uint64_t a1)
{
  v2 = sub_1002059FC();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

uint64_t initializeBufferWithCopyOfBuffer for HistoryItemFilterValue(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for HistoryFilterEntity(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFA && *(a1 + 10))
  {
    return (*a1 + 250);
  }

  v3 = *(a1 + 9);
  if (v3 >= 2)
  {
    v4 = ((v3 + 2147483646) & 0x7FFFFFFF) - 5;
  }

  else
  {
    v4 = -6;
  }

  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for HistoryFilterEntity(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF9)
  {
    *(result + 8) = 0;
    *result = a2 - 250;
    if (a3 >= 0xFA)
    {
      *(result + 10) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFA)
    {
      *(result + 10) = 0;
    }

    if (a2)
    {
      *(result + 9) = a2 + 6;
    }
  }

  return result;
}

uint64_t sub_100205DFC(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
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

uint64_t sub_100205E58(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_100205ED8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v24 = a2;
  v9 = sub_100140278(&qword_1008E17E8);
  __chkstk_darwin(v9);
  v11 = &v23 - v10;
  v12 = sub_100140278(&qword_1008E17F0);
  __chkstk_darwin(v12);
  v14 = &v23 - v13;
  if (a1)
  {
    swift_getKeyPath();
    swift_getKeyPath();

    static Published.subscript.getter();

    v15 = v26;
    if (v26)
    {

      *v14 = static HorizontalAlignment.center.getter();
      *(v14 + 1) = 0x4010000000000000;
      v14[16] = 0;
      sub_100140278(&qword_1008E1810);
      v23 = a5;
      v25 = v15;
      v16 = swift_allocObject();
      v17 = v24;
      v16[2] = a1;
      v16[3] = v17;
      v16[4] = a3;
      v16[5] = a4;

      sub_100140278(&qword_1008E1818);
      sub_100140278(&qword_1008E1820);
      sub_10014A6B0(&qword_1008E1828, &qword_1008E1818);
      v18 = sub_100141EEC(&qword_1008E1830);
      v19 = sub_100206914();
      v26 = v18;
      v27 = v19;
      swift_getOpaqueTypeConformance2();
      sub_100206A50();
      ForEach<>.init(_:content:)();
      v20 = static Edge.Set.all.getter();
      v21 = &v14[*(v12 + 36)];
      *v21 = v20;
      *(v21 + 8) = xmmword_1006DD8B0;
      *(v21 + 24) = xmmword_1006DD8C0;
      v21[40] = 0;
      sub_100088180(v14, v11);
      swift_storeEnumTagMultiPayload();
      sub_100206850();
      _ConditionalContent<>.init(storage:)();
      return sub_10000EA04(v14, &qword_1008E17F0);
    }

    else
    {
      swift_storeEnumTagMultiPayload();
      sub_100206850();
      return _ConditionalContent<>.init(storage:)();
    }
  }

  else
  {
    type metadata accessor for ActivitySharingFriendListDataProvider();
    sub_100206B14(&qword_1008DC038, type metadata accessor for ActivitySharingFriendListDataProvider);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_1002062B4@<X0>(ValueMetadata **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v47 = a4;
  v48 = a5;
  v45 = a2;
  v46 = a3;
  v51 = a6;
  v7 = type metadata accessor for AccessibilityActionKind();
  v49 = *(v7 - 8);
  v50 = v7;
  __chkstk_darwin(v7);
  v44 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = type metadata accessor for AccessibilityTraits();
  v43 = *(v41 - 8);
  __chkstk_darwin(v41);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = type metadata accessor for AccessibilityChildBehavior();
  v11 = *(v38 - 8);
  __chkstk_darwin(v38);
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_100140278(&qword_1008E1850);
  v14 = *(v39 - 8);
  __chkstk_darwin(v39);
  v16 = &v36 - v15;
  v42 = sub_100140278(&qword_1008E1830);
  __chkstk_darwin(v42);
  v37 = &v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v40 = &v36 - v19;
  v52 = *a1;
  v20 = v52;
  static AccessibilityChildBehavior.combine.getter();
  v21 = sub_1002069FC();
  View.accessibilityElement(children:)();
  (*(v11 + 8))(v13, v38);

  static AccessibilityTraits.isButton.getter();
  v52 = &type metadata for ActivitySharingFriendListCompetitionViewRepresentable;
  v53 = v21;
  swift_getOpaqueTypeConformance2();
  v22 = v39;
  View.accessibilityAddTraits(_:)();
  (*(v43 + 8))(v10, v41);
  (*(v14 + 8))(v16, v22);
  v23 = swift_allocObject();
  v24 = v45;
  v25 = v46;
  v23[2] = v45;
  v23[3] = v25;
  v26 = v47;
  v27 = v48;
  v23[4] = v47;
  v23[5] = v27;
  v23[6] = v20;

  v28 = v20;
  v29 = v24;

  v30 = v44;
  static AccessibilityActionKind.default.getter();
  v31 = v40;
  v32 = v37;
  ModifiedContent<>.accessibilityAction(_:_:)();

  (*(v49 + 8))(v30, v50);
  sub_10000EA04(v32, &qword_1008E1830);
  v33 = swift_allocObject();
  v33[2] = v29;
  v33[3] = v25;
  v33[4] = v26;
  v33[5] = v27;
  v33[6] = v28;
  sub_100206914();
  v34 = v28;

  View.onTapGesture(count:perform:)();

  return sub_10000EA04(v31, &qword_1008E1830);
}

uint64_t sub_100206798(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (a3)
  {

    sub_100315688(a5, 1);
  }

  else
  {
    type metadata accessor for ActivitySharingNavigationCoordinator();
    sub_100206B14(&qword_1008DC018, type metadata accessor for ActivitySharingNavigationCoordinator);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

unint64_t sub_100206850()
{
  result = qword_1008E17F8;
  if (!qword_1008E17F8)
  {
    sub_100141EEC(&qword_1008E17F0);
    sub_10014A6B0(&qword_1008E1800, &qword_1008E1808);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E17F8);
  }

  return result;
}

unint64_t sub_100206914()
{
  result = qword_1008E1838;
  if (!qword_1008E1838)
  {
    sub_100141EEC(&qword_1008E1830);
    sub_1002069FC();
    swift_getOpaqueTypeConformance2();
    sub_100206B14(&qword_1008DCEF8, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E1838);
  }

  return result;
}

unint64_t sub_1002069FC()
{
  result = qword_1008E1840;
  if (!qword_1008E1840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E1840);
  }

  return result;
}

unint64_t sub_100206A50()
{
  result = qword_1008E1848;
  if (!qword_1008E1848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E1848);
  }

  return result;
}

uint64_t sub_100206AA4()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100206B14(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_100206B5C()
{
  result = qword_1008E1858;
  if (!qword_1008E1858)
  {
    sub_100141EEC(&qword_1008E1860);
    sub_100206850();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E1858);
  }

  return result;
}

unint64_t sub_100206BF0()
{
  result = qword_1008E1868;
  if (!qword_1008E1868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E1868);
  }

  return result;
}

unint64_t sub_100206C48()
{
  result = qword_1008E1870;
  if (!qword_1008E1870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E1870);
  }

  return result;
}

void sub_100206C9C(id *a1)
{
  v1 = [*a1 endDate];
  static Date._unconditionallyBridgeFromObjectiveC(_:)();
}

uint64_t sub_100206CFC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1002070CC();
  *a1 = result;
  a1[1] = v3;
  a1[2] = v4;
  return result;
}

uint64_t sub_100206D28(uint64_t a1)
{
  v4 = *v1;
  v5 = v1[2];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100202054;

  return sub_100207400(a1, v4, v5);
}

uint64_t sub_100206DE8(uint64_t a1)
{
  *(v2 + 16) = a1;
  v3 = *v1;
  v4 = v1[2];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  *v5 = v2;
  v5[1] = sub_10016200C;

  return (sub_100207EA8)(v3, v4);
}

unint64_t sub_100206EA4()
{
  result = qword_1008E1878;
  if (!qword_1008E1878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E1878);
  }

  return result;
}

unint64_t sub_100206EFC()
{
  result = qword_1008E1880;
  if (!qword_1008E1880)
  {
    sub_100141EEC(&qword_1008E1888);
    sub_1001C2F30();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E1880);
  }

  return result;
}

uint64_t sub_100206F80(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_1001C222C();
  *v5 = v2;
  v5[1] = sub_10002BACC;

  return EntityQuery.results()(a1, a2, v6);
}

uint64_t sub_100207034(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_10020707C(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_1002070CC()
{
  sub_100140278(&qword_1008DD148);
  type metadata accessor for AppDependencyManager();
  static AppDependencyManager.shared.getter();
  v0 = AppDependency.__allocating_init(key:manager:)();
  sub_100140278(&qword_1008DD150);
  static AppDependencyManager.shared.getter();
  AppDependency.__allocating_init(key:manager:)();
  sub_100140278(&qword_1008DFB48);
  static AppDependencyManager.shared.getter();
  AppDependency.__allocating_init(key:manager:)();
  return v0;
}

unint64_t sub_1002071D4(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  if ((a3 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(a3) & 0xF;
  }

  else
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  v4 = 7;
  if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
  {
    v4 = 11;
  }

  v5 = v4 | (v3 << 16);
  result = String.index(_:offsetBy:limitedBy:)();
  if (v6)
  {
    result = v5;
  }

  if (4 * v3 < result >> 14)
  {
    goto LABEL_14;
  }

  return String.subscript.getter();
}

char *sub_100207284(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

  result = sub_100185D60(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v4 = 0;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v5 = *(a1 + 8 * v4 + 32);
      }

      v6 = v5;
      AppDependency.wrappedValue.getter();
      sub_1001C4A78(v6, v22, v23);
      v8 = _swiftEmptyArrayStorage[2];
      v7 = _swiftEmptyArrayStorage[3];
      if (v8 >= v7 >> 1)
      {
        sub_100185D60((v7 > 1), v8 + 1, 1);
      }

      ++v4;
      _swiftEmptyArrayStorage[2] = v8 + 1;
      v9 = &_swiftEmptyArrayStorage[32 * v8];
      v10 = v23[0];
      v11 = v23[1];
      v12 = v23[3];
      v9[4] = v23[2];
      v9[5] = v12;
      v9[2] = v10;
      v9[3] = v11;
      v13 = v23[4];
      v14 = v23[5];
      v15 = v23[7];
      v9[8] = v23[6];
      v9[9] = v15;
      v9[6] = v13;
      v9[7] = v14;
      v16 = v23[8];
      v17 = v23[9];
      v18 = v23[11];
      v9[12] = v23[10];
      v9[13] = v18;
      v9[10] = v16;
      v9[11] = v17;
      v19 = v23[12];
      v20 = v23[13];
      v21 = v23[15];
      v9[16] = v23[14];
      v9[17] = v21;
      v9[14] = v19;
      v9[15] = v20;
    }

    while (v2 != v4);
    return _swiftEmptyArrayStorage;
  }

  __break(1u);
  return result;
}

uint64_t sub_100207400(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  v4 = sub_100140278(&qword_1008E0C90);
  v3[6] = v4;
  v3[7] = *(v4 - 8);
  v3[8] = swift_task_alloc();
  v5 = sub_100140278(&qword_1008E0C98);
  v3[9] = v5;
  v3[10] = *(v5 - 8);
  v3[11] = swift_task_alloc();
  sub_100140278(&unk_1008DB8A0);
  v3[12] = swift_task_alloc();
  v6 = type metadata accessor for UUID();
  v3[13] = v6;
  v3[14] = *(v6 - 8);
  v3[15] = swift_task_alloc();

  return _swift_task_switch(sub_1002075CC, 0, 0);
}

uint64_t sub_1002075CC()
{
  v1 = v0[3];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[14];
    v4 = (v3 + 48);
    v37 = v3;
    v5 = (v3 + 32);
    v6 = (v1 + 40);
    v7 = _swiftEmptyArrayStorage;
    do
    {
      v9 = *(v6 - 1);
      v8 = *v6;
      if ((*v6 & 0x2000000000000000) != 0)
      {
        v10 = HIBYTE(*v6) & 0xF;
      }

      else
      {
        v10 = v9 & 0xFFFFFFFFFFFFLL;
      }

      if (v10)
      {
        if (String.subscript.getter() == 77 && v11 == 0xE100000000000000)
        {

LABEL_16:

          sub_1002071D4(1uLL, v9, v8);

          static String._fromSubstring(_:)();
          v0 = v36;

          UUID.init(uuidString:)();

          goto LABEL_17;
        }

        v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v13)
        {
          goto LABEL_16;
        }
      }

      UUID.init(uuidString:)();
LABEL_17:
      v15 = v0[12];
      v14 = v0[13];

      if ((*v4)(v15, 1, v14) == 1)
      {
        sub_10020864C(v0[12]);
      }

      else
      {
        v16 = *v5;
        (*v5)(v0[15], v0[12], v0[13]);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v7 = sub_1001A1D2C(0, *(v7 + 2) + 1, 1, v7);
        }

        v18 = *(v7 + 2);
        v17 = *(v7 + 3);
        if (v18 >= v17 >> 1)
        {
          v7 = sub_1001A1D2C(v17 > 1, v18 + 1, 1, v7);
        }

        v19 = v0[15];
        v20 = v0[13];
        *(v7 + 2) = v18 + 1;
        v16(&v7[((*(v37 + 80) + 32) & ~*(v37 + 80)) + *(v37 + 72) * v18], v19, v20);
      }

      v6 += 2;
      --v2;
    }

    while (v2);
  }

  v21 = v0[10];
  v22 = v0[11];
  v23 = v0[9];
  v24 = objc_opt_self();

  sub_1001AA77C(v25);

  sub_1001447C0();
  isa = Set._bridgeToObjectiveC()().super.isa;

  v27 = [v24 predicateForObjectsWithUUIDs:isa];
  v0[16] = v27;

  sub_1000059F8(0, &unk_1008E4E30);
  v28 = [swift_getObjCClassFromMetadata() workoutType];
  sub_1000059F8(0, &qword_1008E04D0);
  v29 = v27;
  static HKSamplePredicate.sample(type:predicate:)();

  sub_100140278(&qword_1008E0CA8);
  v30 = (*(v21 + 80) + 32) & ~*(v21 + 80);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_1006D46C0;
  (*(v21 + 16))(v31 + v30, v22, v23);

  HKSampleQueryDescriptor.init(predicates:sortDescriptors:limit:)();
  AppDependency.wrappedValue.getter();
  v32 = v0[2];
  v0[17] = v32;
  v33 = swift_task_alloc();
  v0[18] = v33;
  *v33 = v0;
  v33[1] = sub_100207A60;
  v34 = v0[6];

  return HKSampleQueryDescriptor.result(for:)(v32, v34);
}

uint64_t sub_100207A60(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 136);
  *(v3 + 152) = a1;
  *(v3 + 160) = v1;

  if (v1)
  {
    v5 = sub_100207DCC;
  }

  else
  {
    v5 = sub_100207B90;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100207B90()
{
  v1 = v0[19];
  v2 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v1 >> 62)
  {
LABEL_19:
    v3 = _CocoaArrayWrapper.endIndex.getter();
    v4 = v0[19];
    if (!v3)
    {
      goto LABEL_20;
    }
  }

  else
  {
    v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v4 = v0[19];
    if (!v3)
    {
      goto LABEL_20;
    }
  }

  v5 = 0;
  v6 = v1 & 0xC000000000000001;
  v7 = v4 + 32;
  v1 = _swiftEmptyArrayStorage;
  do
  {
    v8 = v5;
    while (1)
    {
      if (v6)
      {
        v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v8 >= *(v2 + 16))
        {
          goto LABEL_18;
        }

        v9 = *(v7 + 8 * v8);
      }

      v10 = v9;
      v5 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
LABEL_18:
        __break(1u);
        goto LABEL_19;
      }

      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        break;
      }

      ++v8;
      if (v5 == v3)
      {
        goto LABEL_20;
      }
    }

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v1 = _swiftEmptyArrayStorage;
  }

  while (v5 != v3);
LABEL_20:
  v11 = v0[16];
  v12 = v0[11];
  v14 = v0[9];
  v13 = v0[10];
  v15 = v0[7];
  v16 = v0[8];
  v17 = v0[6];

  v18 = sub_100207284(_swiftEmptyArrayStorage);

  (*(v15 + 8))(v16, v17);
  (*(v13 + 8))(v12, v14);

  v19 = v0[1];

  return v19(v18);
}

uint64_t sub_100207DCC()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 72);
  v3 = *(v0 + 80);
  v5 = *(v0 + 56);
  v4 = *(v0 + 64);
  v6 = *(v0 + 48);

  (*(v5 + 8))(v4, v6);
  (*(v3 + 8))(v1, v2);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_100207EA8(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  v3 = sub_100140278(&qword_1008E0C90);
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  v4 = sub_100140278(&qword_1008E0C98);
  v2[8] = v4;
  v2[9] = *(v4 - 8);
  v2[10] = swift_task_alloc();

  return _swift_task_switch(sub_100207FDC, 0, 0);
}

uint64_t sub_100207FDC()
{
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[8];
  sub_1000059F8(0, &unk_1008E4E30);
  v4 = [swift_getObjCClassFromMetadata() workoutType];
  sub_1000059F8(0, &qword_1008E04D0);
  static HKSamplePredicate.sample(type:predicate:)();

  sub_100140278(&qword_1008E0CA8);
  v5 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1006D46C0;
  (*(v2 + 16))(v6 + v5, v1, v3);
  sub_100140278(&qword_1008E0CB0);
  sub_100140278(&qword_1008E0CA0);
  *(swift_allocObject() + 16) = xmmword_1006D46C0;
  swift_getKeyPath();
  SortDescriptor.init<A>(_:order:)();
  HKSampleQueryDescriptor.init(predicates:sortDescriptors:limit:)();
  AppDependency.wrappedValue.getter();
  v7 = v0[2];
  v0[11] = v7;
  v8 = swift_task_alloc();
  v0[12] = v8;
  *v8 = v0;
  v8[1] = sub_100208244;
  v9 = v0[5];

  return HKSampleQueryDescriptor.result(for:)(v7, v9);
}

uint64_t sub_100208244(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 88);
  *(v3 + 104) = a1;
  *(v3 + 112) = v1;

  if (v1)
  {
    v5 = sub_100208594;
  }

  else
  {
    v5 = sub_100208374;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100208374()
{
  v1 = v0[13];
  v2 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v1 >> 62)
  {
LABEL_19:
    v3 = _CocoaArrayWrapper.endIndex.getter();
    v4 = v0[13];
    if (!v3)
    {
      goto LABEL_20;
    }
  }

  else
  {
    v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v4 = v0[13];
    if (!v3)
    {
      goto LABEL_20;
    }
  }

  v5 = 0;
  v6 = v1 & 0xC000000000000001;
  v7 = v4 + 32;
  v1 = _swiftEmptyArrayStorage;
  do
  {
    v8 = v5;
    while (1)
    {
      if (v6)
      {
        v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v8 >= *(v2 + 16))
        {
          goto LABEL_18;
        }

        v9 = *(v7 + 8 * v8);
      }

      v10 = v9;
      v5 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
LABEL_18:
        __break(1u);
        goto LABEL_19;
      }

      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        break;
      }

      ++v8;
      if (v5 == v3)
      {
        goto LABEL_20;
      }
    }

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v1 = _swiftEmptyArrayStorage;
  }

  while (v5 != v3);
LABEL_20:
  v12 = v0[9];
  v11 = v0[10];
  v14 = v0[7];
  v13 = v0[8];
  v15 = v0[5];
  v16 = v0[6];

  v17 = sub_100207284(_swiftEmptyArrayStorage);

  (*(v16 + 8))(v14, v15);
  (*(v12 + 8))(v11, v13);

  v18 = v0[1];

  return v18(v17);
}