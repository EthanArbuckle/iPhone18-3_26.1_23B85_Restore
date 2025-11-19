uint64_t sub_1002992B4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v68 = a2;
  v3 = type metadata accessor for WorkloadListItemStack();
  v55 = *(v3 - 1);
  __chkstk_darwin(v3);
  v56 = v4;
  v57 = &v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = sub_100140278(&qword_1008E5B08);
  __chkstk_darwin(v60);
  v66 = (&v53 - v5);
  v65 = type metadata accessor for EffortGoalAndDate(0);
  __chkstk_darwin(v65);
  v7 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DynamicTypeSize();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v53 - v13;
  v15 = sub_100140278(&qword_1008E5B10);
  __chkstk_darwin(v15 - 8);
  v67 = &v53 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v64 = &v53 - v18;
  v19 = type metadata accessor for AttributedString();
  v20 = *(v19 - 8);
  v21 = __chkstk_darwin(v19);
  v23 = a1 + v3[5];
  v54 = *(v20 + 16);
  v54(&v53 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0), v23, v19, v21);
  v24 = Text.init(_:)();
  v61 = v25;
  v62 = v24;
  v59 = v26;
  v63 = v27;
  v58 = a1;
  sub_10005491C(v14);
  (*(v9 + 104))(v11, enum case for DynamicTypeSize.xLarge(_:), v8);
  sub_10005BDD4(&qword_1008DC898, &type metadata accessor for DynamicTypeSize);
  v28 = dispatch thunk of static Comparable.< infix(_:_:)();
  v29 = *(v9 + 8);
  v29(v11, v8);
  v29(v14, v8);
  if (v28)
  {
    v30 = v57;
    sub_100299F3C(v58, v57, type metadata accessor for WorkloadListItemStack);
    v31 = (*(v55 + 80) + 16) & ~*(v55 + 80);
    v32 = swift_allocObject();
    sub_100299FA4(v30, v32 + v31);
    v33 = v66;
    *v66 = sub_10029A008;
    v33[1] = v32;
    swift_storeEnumTagMultiPayload();
    sub_100140278(&qword_1008E5B18);
    sub_10005BDD4(&qword_1008E5B20, type metadata accessor for EffortGoalAndDate);
    sub_10014A6B0(&qword_1008E5B28, &qword_1008E5B18);
    v34 = v64;
    _ConditionalContent<>.init(storage:)();
  }

  else
  {
    v35 = v3[10];
    v36 = type metadata accessor for WorkoutEffort();
    v37 = v58;
    (*(*(v36 - 8) + 16))(v7, v58 + v35, v36);
    v38 = v65;
    (v54)(&v7[*(v65 + 20)], v37 + v3[7], v19);
    v39 = (v37 + v3[8]);
    v40 = *v39;
    v41 = v39[1];
    LOBYTE(v39) = *(v37 + v3[9]);
    v42 = &v7[v38[6]];
    *v42 = v40;
    *(v42 + 1) = v41;
    v43 = &v7[v38[7]];
    *v43 = 0;
    v43[8] = 1;
    v7[v38[8]] = v39;
    v44 = v38[9];
    *&v7[v44] = swift_getKeyPath();
    sub_100140278(&qword_1008EE6A0);
    swift_storeEnumTagMultiPayload();
    sub_100299F3C(v7, v66, type metadata accessor for EffortGoalAndDate);
    swift_storeEnumTagMultiPayload();

    sub_100140278(&qword_1008E5B18);
    sub_10005BDD4(&qword_1008E5B20, type metadata accessor for EffortGoalAndDate);
    sub_10014A6B0(&qword_1008E5B28, &qword_1008E5B18);
    v34 = v64;
    _ConditionalContent<>.init(storage:)();
    sub_100299EDC(v7, type metadata accessor for EffortGoalAndDate);
  }

  v45 = v67;
  sub_10001B104(v34, v67, &qword_1008E5B10);
  v46 = v68;
  v48 = v61;
  v47 = v62;
  *v68 = v62;
  v46[1] = v48;
  v49 = v59 & 1;
  *(v46 + 16) = v59 & 1;
  v46[3] = v63;
  v50 = sub_100140278(&qword_1008E5B30);
  sub_10001B104(v45, v46 + *(v50 + 48), &qword_1008E5B10);
  v51 = v46 + *(v50 + 64);
  *v51 = 0;
  v51[8] = 0;
  sub_10006965C(v47, v48, v49);

  sub_10000EA04(v34, &qword_1008E5B10);
  sub_10000EA04(v45, &qword_1008E5B10);
  sub_10004642C(v47, v48, v49);
}

uint64_t sub_100299A68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v43 = a1;
  v46 = a3;
  v4 = sub_100140278(&qword_1008E5B38);
  __chkstk_darwin(v4 - 8);
  v6 = &v43 - v5;
  v7 = sub_100140278(&qword_1008E5B40);
  v8 = v7 - 8;
  __chkstk_darwin(v7);
  v44 = &v43 - v9;
  v10 = sub_100140278(&qword_1008E5B48);
  v11 = v10 - 8;
  __chkstk_darwin(v10);
  v45 = &v43 - v12;
  *v6 = static VerticalAlignment.lastTextBaseline.getter();
  *(v6 + 1) = 0;
  v6[16] = 1;
  v13 = &v6[*(sub_100140278(&qword_1008E5B50) + 44)];
  v14 = type metadata accessor for WorkloadListItemStack();
  v15 = v14[10];
  v16 = type metadata accessor for WorkoutEffort();
  (*(*(v16 - 8) + 16))(v13, a2 + v15, v16);
  v17 = v14[7];
  v18 = type metadata accessor for EffortGoalAndDate(0);
  v19 = v18[5];
  v20 = type metadata accessor for AttributedString();
  (*(*(v20 - 8) + 16))(&v13[v19], a2 + v17, v20);
  v21 = (a2 + v14[8]);
  v23 = *v21;
  v22 = v21[1];

  GeometryProxy.size.getter();
  v24 = *(a2 + v14[9]);
  v25 = &v13[v18[6]];
  *v25 = v23;
  *(v25 + 1) = v22;
  v26 = &v13[v18[7]];
  *v26 = v27;
  v26[8] = 0;
  v13[v18[8]] = v24;
  v28 = v18[9];
  *&v13[v28] = swift_getKeyPath();
  sub_100140278(&qword_1008EE6A0);
  swift_storeEnumTagMultiPayload();
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v29 = v44;
  sub_100015E80(v6, v44, &qword_1008E5B38);
  v30 = (v29 + *(v8 + 44));
  v31 = v52;
  v30[4] = v51;
  v30[5] = v31;
  v30[6] = v53;
  v32 = v48;
  *v30 = v47;
  v30[1] = v32;
  v33 = v50;
  v30[2] = v49;
  v30[3] = v33;
  KeyPath = swift_getKeyPath();
  v35 = v29;
  v36 = v45;
  sub_100015E80(v35, v45, &qword_1008E5B40);
  v37 = v36 + *(v11 + 44);
  *v37 = KeyPath;
  *(v37 + 8) = 1;
  *(v37 + 16) = 0;
  v38 = swift_getKeyPath();
  v39 = v36;
  v40 = v46;
  sub_100015E80(v39, v46, &qword_1008E5B48);
  result = sub_100140278(&qword_1008E5B58);
  v42 = (v40 + *(result + 36));
  *v42 = v38;
  v42[1] = 0x3FE8000000000000;
  return result;
}

unint64_t sub_100299E24()
{
  result = qword_1008E5AA0;
  if (!qword_1008E5AA0)
  {
    sub_100141EEC(&qword_1008E5A80);
    sub_10014A6B0(&qword_1008E5AA8, &qword_1008E5AB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E5AA0);
  }

  return result;
}

uint64_t sub_100299EDC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100299F3C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100299FA4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WorkloadListItemStack();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10029A008@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for WorkloadListItemStack() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_100299A68(a1, v6, a2);
}

unint64_t sub_10029A088()
{
  result = qword_1008E5BB8;
  if (!qword_1008E5BB8)
  {
    sub_100141EEC(&qword_1008E5BA8);
    sub_10005BDD4(&qword_1008E5BC0, type metadata accessor for WorkoutItemEffortLabelView);
    sub_10014A6B0(&qword_1008DC4C8, &qword_1008DC4D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E5BB8);
  }

  return result;
}

unint64_t sub_10029A170()
{
  result = qword_1008E5BD8;
  if (!qword_1008E5BD8)
  {
    sub_100141EEC(&qword_1008E5A68);
    sub_10029A228();
    sub_10014A6B0(&qword_1008DC838, &qword_1008DC840);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E5BD8);
  }

  return result;
}

unint64_t sub_10029A228()
{
  result = qword_1008E5BE0;
  if (!qword_1008E5BE0)
  {
    sub_100141EEC(&qword_1008E5A40);
    sub_10029A30C(&qword_1008E5BE8, &qword_1008E5A38, &unk_1006E3F48, sub_10029A390);
    sub_10014A6B0(&qword_1008E0750, &qword_1008E0758);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E5BE0);
  }

  return result;
}

uint64_t sub_10029A30C(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
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

unint64_t sub_10029A390()
{
  result = qword_1008E5BF0;
  if (!qword_1008E5BF0)
  {
    sub_100141EEC(&qword_1008E5A30);
    sub_10029A30C(&qword_1008E5BF8, &qword_1008E5A28, &unk_1006E3F38, sub_10029A474);
    sub_10014A6B0(&qword_1008E5C20, &qword_1008E5A60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E5BF0);
  }

  return result;
}

unint64_t sub_10029A474()
{
  result = qword_1008E5C00;
  if (!qword_1008E5C00)
  {
    sub_100141EEC(&qword_1008E5C08);
    sub_10029A4F8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E5C00);
  }

  return result;
}

unint64_t sub_10029A4F8()
{
  result = qword_1008E5C10;
  if (!qword_1008E5C10)
  {
    sub_100141EEC(&qword_1008E5C18);
    sub_10029A30C(&qword_1008E5A98, &qword_1008E5A88, &unk_1006E3F98, sub_100299E24);
    sub_10014A6B0(&qword_1008E5AB8, &qword_1008E5A70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E5C10);
  }

  return result;
}

char *sub_10029A5DC(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC10FitnessApp26TrendDetailRingClosureView_titleLabel;
  sub_1000059F8(0, &qword_1008E2D40);
  *&v4[v9] = sub_100555C98();
  v10 = OBJC_IVAR____TtC10FitnessApp26TrendDetailRingClosureView_valueLabel90;
  *&v4[v10] = sub_100555C98();
  v11 = OBJC_IVAR____TtC10FitnessApp26TrendDetailRingClosureView_valueLabel365;
  *&v4[v11] = sub_100555C98();
  v16.receiver = v4;
  v16.super_class = type metadata accessor for TrendDetailRingClosureView();
  v12 = objc_msgSendSuper2(&v16, "initWithFrame:", a1, a2, a3, a4);
  v13 = *&v12[OBJC_IVAR____TtC10FitnessApp26TrendDetailRingClosureView_titleLabel];
  v14 = v12;
  [v14 addSubview:v13];
  [v14 addSubview:*&v14[OBJC_IVAR____TtC10FitnessApp26TrendDetailRingClosureView_valueLabel90]];
  [v14 addSubview:*&v14[OBJC_IVAR____TtC10FitnessApp26TrendDetailRingClosureView_valueLabel365]];
  sub_10029A724();
  sub_10029A9C8();

  return v14;
}

void sub_10029A724()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC10FitnessApp26TrendDetailRingClosureView_titleLabel);
  v3 = objc_opt_self();
  v4 = [v3 labelColor];
  [v2 setTextColor:v4];

  v5 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleBody];
  [v2 setFont:v5];

  v6 = *(v0 + OBJC_IVAR____TtC10FitnessApp26TrendDetailRingClosureView_valueLabel90);
  v7 = sub_100604A98();
  [v6 setFont:v7];

  sub_1000059F8(0, &qword_1008E7FC0);
  isa = UIColor.init(_colorLiteralRed:green:blue:alpha:)(1.0, 0.0, 0.28631, 1.0).super.isa;
  v9 = UIColor.init(_colorLiteralRed:green:blue:alpha:)(1.0, 0.19608, 0.52941, 1.0).super.isa;
  v10 = type metadata accessor for GradientColors();
  v11 = objc_allocWithZone(v10);
  *&v11[OBJC_IVAR____TtC10FitnessApp14GradientColors_dark] = isa;
  *&v11[OBJC_IVAR____TtC10FitnessApp14GradientColors_light] = v9;
  v22.receiver = v11;
  v22.super_class = v10;
  v12 = objc_msgSendSuper2(&v22, "init");
  v13 = UIColor.init(_colorLiteralRed:green:blue:alpha:)(0.98039, 0.066667, 0.3098, 1.0).super.isa;
  v14 = type metadata accessor for MetricColors();
  v15 = objc_allocWithZone(v14);
  *&v15[OBJC_IVAR____TtC10FitnessApp12MetricColors_gradient] = v12;
  *&v15[OBJC_IVAR____TtC10FitnessApp12MetricColors_text] = v13;
  v21.receiver = v15;
  v21.super_class = v14;
  v16 = objc_msgSendSuper2(&v21, "init");
  v17 = *&v16[OBJC_IVAR____TtC10FitnessApp12MetricColors_text];

  [v6 setTextColor:v17];
  v18 = *(v1 + OBJC_IVAR____TtC10FitnessApp26TrendDetailRingClosureView_valueLabel365);
  v19 = sub_100604A98();
  [v18 setFont:v19];

  v20 = [v3 secondaryLabelColor];
  [v18 setTextColor:v20];
}

void sub_10029A9C8()
{
  v1 = *&v0[OBJC_IVAR____TtC10FitnessApp26TrendDetailRingClosureView_titleLabel];
  v2 = [v1 topAnchor];
  v3 = [v0 topAnchor];
  v43 = [v2 constraintEqualToAnchor:v3 constant:11.0];

  v4 = [v1 leadingAnchor];
  v5 = [v0 leadingAnchor];
  v41 = [v4 constraintEqualToAnchor:v5 constant:16.0];

  v6 = [v1 trailingAnchor];
  v7 = [v0 trailingAnchor];
  v40 = [v6 constraintEqualToAnchor:v7 constant:-16.0];

  v8 = *&v0[OBJC_IVAR____TtC10FitnessApp26TrendDetailRingClosureView_valueLabel365];
  v9 = [v8 topAnchor];
  v10 = [v1 bottomAnchor];
  v39 = [v9 constraintEqualToAnchor:v10];

  v11 = [v8 leadingAnchor];
  v12 = [v1 leadingAnchor];
  v38 = [v11 constraintEqualToAnchor:v12];

  v13 = [v8 trailingAnchor];
  v14 = [v1 trailingAnchor];
  v37 = [v13 constraintEqualToAnchor:v14];

  v15 = *&v0[OBJC_IVAR____TtC10FitnessApp26TrendDetailRingClosureView_valueLabel90];
  v16 = [v15 topAnchor];
  v17 = [v8 bottomAnchor];
  v36 = [v16 constraintEqualToAnchor:v17];

  v18 = [v15 leadingAnchor];
  v19 = [v1 leadingAnchor];
  v35 = [v18 constraintEqualToAnchor:v19];

  v20 = [v15 trailingAnchor];
  v21 = [v1 trailingAnchor];
  v45 = [v20 constraintEqualToAnchor:v21];

  v22 = [v15 bottomAnchor];
  v23 = [v0 bottomAnchor];
  v24 = [v22 constraintEqualToAnchor:v23 constant:5.0];

  v34 = objc_opt_self();
  sub_100140278(&unk_1008E4E20);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_1006E41A0;
  *(v25 + 32) = v43;
  *(v25 + 40) = v41;
  *(v25 + 48) = v40;
  *(v25 + 56) = v39;
  *(v25 + 64) = v38;
  *(v25 + 72) = v37;
  *(v25 + 80) = v36;
  *(v25 + 88) = v35;
  *(v25 + 96) = v45;
  *(v25 + 104) = v24;
  sub_1000059F8(0, &qword_1008DC980);
  v44 = v43;
  v42 = v41;
  v26 = v40;
  v27 = v39;
  v28 = v38;
  v29 = v37;
  v30 = v36;
  v31 = v35;
  v32 = v45;
  v33 = v24;
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v34 activateConstraints:isa];
}

uint64_t sub_10029AEF4(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC10FitnessApp26TrendDetailRingClosureView_titleLabel;
  sub_1000059F8(0, &qword_1008E2D40);
  *(v1 + v4) = sub_100555C98();
  v5 = OBJC_IVAR____TtC10FitnessApp26TrendDetailRingClosureView_valueLabel90;
  *(v1 + v5) = sub_100555C98();
  v6 = OBJC_IVAR____TtC10FitnessApp26TrendDetailRingClosureView_valueLabel365;
  v7 = sub_100555C98();

  *(v2 + v6) = v7;
  type metadata accessor for TrendDetailRingClosureView();
  swift_deallocPartialClassInstance();
  return 0;
}

id sub_10029AFDC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TrendDetailRingClosureView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10029B104@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v168 = a3;
  v5 = a1;
  v6 = type metadata accessor for Calendar.Component();
  v170 = *(v6 - 8);
  __chkstk_darwin(v6);
  v156 = &v151 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v186 = type metadata accessor for Calendar();
  v171 = *(v186 - 8);
  __chkstk_darwin(v186);
  v176 = &v151 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v181 = &v151 - v10;
  v11 = sub_100140278(&unk_1008F73A0);
  __chkstk_darwin(v11 - 8);
  v153 = &v151 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v151 - v14;
  __chkstk_darwin(v16);
  v160 = &v151 - v17;
  __chkstk_darwin(v18);
  v180 = &v151 - v19;
  v185 = type metadata accessor for Date();
  v173 = *(v185 - 8);
  __chkstk_darwin(v185);
  v152 = &v151 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v165 = &v151 - v22;
  __chkstk_darwin(v23);
  v154 = &v151 - v24;
  __chkstk_darwin(v25);
  v172 = &v151 - v26;
  __chkstk_darwin(v27);
  v169 = &v151 - v28;
  v29 = sub_100140278(&unk_1008EAF50);
  __chkstk_darwin(v29 - 8);
  v31 = &v151 - v30;
  v32 = type metadata accessor for MetricChartData();
  v182 = *(v32 - 8);
  v183 = v32;
  __chkstk_darwin(v32);
  v192 = &v151 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v34);
  v179 = &v151 - v35;
  v36 = type metadata accessor for DateComponents();
  v196 = *(v36 - 8);
  __chkstk_darwin(v36);
  v157 = &v151 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v38);
  v159 = &v151 - v39;
  __chkstk_darwin(v40);
  v198 = &v151 - v41;
  v191 = sub_100140278(&qword_1008E5C68);
  __chkstk_darwin(v191);
  v199 = &v151 - v42;
  v43 = sub_100140278(&qword_1008E5C70);
  __chkstk_darwin(v43 - 8);
  v45 = &v151 - v44;
  v46 = type metadata accessor for DateInterval();
  v194 = *(v46 - 8);
  v195 = v46;
  __chkstk_darwin(v46);
  v166 = &v151 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_100140278(&qword_1008DE590);
  __chkstk_darwin(v48 - 8);
  v158 = &v151 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v50);
  v52 = &v151 - v51;
  *&v54 = __chkstk_darwin(v53).n128_u64[0];
  v184 = &v151 - v55;
  v177 = (v5 > 3);
  v56 = 3;
  if (((1 << a1) & 0x28000000) == 0)
  {
    v56 = 1;
  }

  if (((1 << a1) & 0x12000) != 0)
  {
    v56 = 2;
  }

  if (((1 << a1) & 0x1102208040) != 0)
  {
    v56 = 5;
  }

  if (v5 <= 0x24)
  {
    v57 = v56;
  }

  else
  {
    v57 = 1;
  }

  [a2 userDistanceUnitForDistanceType:{v57, v54}];
  IsMetric = FIUIDistanceUnitIsMetric();
  v161 = v6;
  v155 = v15;
  v167 = a1;
  if (IsMetric)
  {
    v178 = sub_10029C5F0(a1);
    v59 = sub_10029CAB0(a1);
  }

  else
  {
    v178 = sub_10029C814(a1);
    v59 = sub_10029CAD0(a1);
  }

  v61 = v60;
  v193 = v59;
  v62 = v196;
  v63 = *(v196 + 56);
  v63(v184, 1, 1, v36);
  v64 = v177;
  sub_100062880(v177, 1, v45);
  v66 = v194;
  v65 = v195;
  if ((*(v194 + 48))(v45, 1, v195) == 1)
  {

    sub_10000EA04(v45, &qword_1008E5C70);
    v197 = _swiftEmptyArrayStorage;
    v67 = v172;
    v68 = v167;
    v69 = v170;
    goto LABEL_39;
  }

  v70 = *(v66 + 32);
  v71 = v166;
  v70(v166, v45, v65);
  v72 = 1;
  v73 = sub_100027808(v71, v64, 1);
  v74 = v73;
  if (*(v73 + 2) >= 6uLL)
  {
    (*(v62 + 16))(v52, &v73[4 * *(v62 + 72) + ((*(v62 + 80) + 32) & ~*(v62 + 80))], v36);
    v72 = 0;
  }

  v75 = v184;
  sub_10000EA04(v184, &qword_1008DE590);
  v63(v52, v72, 1, v36);
  result = sub_10003BE9C(v52, v75);
  v77 = v74;
  v190 = *(v74 + 2);
  if (!v190)
  {
    v197 = _swiftEmptyArrayStorage;
    v81 = v194;
    v83 = v195;
LABEL_36:

    v62 = v196;
LABEL_38:
    (*(v81 + 8))(v166, v83);
    v67 = v172;
    v69 = v170;
    v68 = v167;
LABEL_39:
    v110 = 0x2224471F80uLL >> v68;
    v111 = v68;
    Date.init()();
    static Calendar.current.getter();
    if (v111 > 3)
    {
      v112 = v158;
      sub_100038088(v184, v158);
      v113 = (*(v62 + 48))(v112, 1, v36);
      v114 = v168;
      if (v113 == 1)
      {
        sub_10000EA04(v112, &qword_1008DE590);
        v115 = v185;
        v116 = v173;
      }

      else
      {
        v132 = v157;
        (*(v62 + 32))(v157, v112, v36);
        v133 = v153;
        Calendar.date(from:)();
        v116 = v173;
        v134 = v62;
        v115 = v185;
        if ((*(v173 + 48))(v133, 1, v185) == 1)
        {
          (*(v134 + 8))(v132, v36);
          sub_10000EA04(v133, &unk_1008F73A0);
        }

        else
        {
          v198 = *(v116 + 32);
          v199 = v110;
          v110 = v152;
          (v198)(v152, v133, v115);
          Date.addingTimeInterval(_:)();
          v140 = *(v116 + 8);
          v141 = v110;
          LOBYTE(v110) = v199;
          v140(v141, v115);
          (*(v134 + 8))(v157, v36);
          v140(v67, v115);
          (v198)(v67, v165, v115);
        }
      }

      goto LABEL_52;
    }

    v199 = v110;
    sub_100140278(&unk_1008E51B0);
    v117 = v69;
    v118 = *(v69 + 72);
    v119 = (*(v69 + 80) + 32) & ~*(v69 + 80);
    v120 = swift_allocObject();
    *(v120 + 16) = xmmword_1006D6950;
    v121 = v120 + v119;
    v122 = *(v117 + 104);
    v123 = v161;
    (v122)(v121, enum case for Calendar.Component.era(_:), v161);
    (v122)(v121 + v118, enum case for Calendar.Component.year(_:), v123);
    (v122)(v121 + 2 * v118, enum case for Calendar.Component.month(_:), v123);
    v198 = v122;
    (v122)(v121 + 3 * v118, enum case for Calendar.Component.day(_:), v123);
    sub_10001C970(v120);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v124 = v165;
    Date.init()();
    v125 = v159;
    Calendar.dateComponents(_:from:)();

    v126 = v36;
    v127 = v173;
    v128 = v124;
    v129 = v62;
    v115 = v185;
    v196 = *(v173 + 8);
    (v196)(v128, v185);
    v130 = v160;
    Calendar.date(from:)();
    (*(v129 + 8))(v125, v126);
    v131 = *(v127 + 48);
    if (v131(v130, 1, v115) == 1)
    {
      sub_10000EA04(v130, &unk_1008F73A0);
      v114 = v168;
      v116 = v127;
    }

    else
    {
      v135 = v130;
      v136 = v154;
      v195 = *(v127 + 32);
      v195(v154, v135, v115);
      v137 = v156;
      (v198)(v156, enum case for Calendar.Component.hour(_:), v123);
      v138 = v155;
      Calendar.date(byAdding:value:to:wrappingComponents:)();
      (*(v170 + 8))(v137, v123);
      v139 = v196;
      (v196)(v136, v115);
      if (v131(v138, 1, v115) != 1)
      {
        v67 = v172;
        v139(v172, v115);
        v195(v67, v138, v115);
        v114 = v168;
        v116 = v173;
        goto LABEL_51;
      }

      sub_10000EA04(v138, &unk_1008F73A0);
      v114 = v168;
      v116 = v173;
    }

    v67 = v172;
LABEL_51:
    LOBYTE(v110) = v199;
LABEL_52:
    if (v110)
    {
      v142 = _stringCompareWithSmolCheck(_:_:expecting:)();
      swift_bridgeObjectRelease_n();
      if (v142)
      {
        v143 = v61;
      }

      else
      {
        v143 = 0.0;
      }
    }

    else
    {

      v144 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v143 = v61;
      if ((v144 & 1) == 0)
      {
        v61 = 0.0;
      }
    }

    v145 = type metadata accessor for MetricDetailViewModel();
    v146 = v177;
    sub_100062880(v177, 1, v114 + v145[9]);
    (*(v116 + 16))(v114 + v145[11], v67, v115);
    v147 = objc_opt_self();
    v148 = v178;
    *v114 = [v147 quantityWithUnit:v178 doubleValue:v143];
    v149 = [v147 quantityWithUnit:v148 doubleValue:v61];

    (*(v171 + 8))(v176, v186);
    (*(v116 + 8))(v67, v115);
    result = sub_10000EA04(v184, &qword_1008DE590);
    v150 = v197;
    *(v114 + 8) = v149;
    *(v114 + 16) = v150;
    *(v114 + 24) = _swiftEmptyArrayStorage;
    *(v114 + 32) = v146;
    *(v114 + 40) = 1;
    *(v114 + v145[10]) = 1;
    return result;
  }

  v78 = 0;
  v188 = (v62 + 32);
  v189 = v62 + 16;
  v175 = (v171 + 8);
  v174 = (v173 + 48);
  v164 = (v173 + 32);
  v163 = (v173 + 16);
  v162 = (v173 + 8);
  v79 = v183;
  v187 = (v182 + 56);
  v80 = (v182 + 48);
  v81 = v194;
  v82 = (v193 + 40);
  v197 = _swiftEmptyArrayStorage;
  v83 = v195;
  while (v78 < *(v77 + 2))
  {
    v84 = v77;
    result = (*(v196 + 16))(v198, &v77[((*(v196 + 80) + 32) & ~*(v196 + 80)) + *(v196 + 72) * v78], v36);
    v85 = *(v193 + 2);
    if (v78 == v85)
    {

      v62 = v196;
      (*(v196 + 8))(v198, v36);
      goto LABEL_38;
    }

    if (v78 >= v85)
    {
      goto LABEL_60;
    }

    v86 = *(v82 - 1);
    v87 = *v82;
    v88 = v36;
    v89 = v199 + *(v191 + 48);
    v90 = v88;
    (*v188)();
    *v89 = v86;
    *(v89 + 8) = v87;
    if ((v87 & 1) == 0)
    {
      v91 = v181;
      static Calendar.current.getter();
      v92 = v180;
      Calendar.date(from:)();
      v93 = v91;
      v94 = v92;
      (*v175)(v93, v186);
      v95 = v92;
      v96 = v185;
      if ((*v174)(v95, 1, v185) != 1)
      {
        v97 = v86;
        v98 = v31;
        v99 = v169;
        (*v164)(v169, v94, v96);
        (*v163)(&v98[*(v183 + 20)], v99, v96);
        v100 = objc_opt_self();
        v101 = v178;
        v102 = [v100 quantityWithUnit:v178 doubleValue:v97];
        v103 = v99;
        v31 = v98;
        v79 = v183;
        (*v162)(v103, v96);
        *v31 = v101;
        *&v31[*(v79 + 24)] = v102;
        (*v187)(v31, 0, 1, v79);
        v104 = v101;
        goto LABEL_29;
      }

      sub_10000EA04(v94, &unk_1008F73A0);
    }

    (*v187)(v31, 1, 1, v79);
LABEL_29:
    sub_10000EA04(v199, &qword_1008E5C68);
    v36 = v90;
    if ((*v80)(v31, 1, v79) == 1)
    {
      result = sub_10000EA04(v31, &unk_1008EAF50);
      v81 = v194;
      v83 = v195;
    }

    else
    {
      v105 = v179;
      sub_10029CAF0(v31, v179);
      sub_10029CAF0(v105, v192);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v81 = v194;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v197 = sub_1001A1F18(0, v197[2] + 1, 1, v197);
      }

      v108 = v197[2];
      v107 = v197[3];
      if (v108 >= v107 >> 1)
      {
        v197 = sub_1001A1F18(v107 > 1, v108 + 1, 1, v197);
      }

      v109 = v197;
      v197[2] = v108 + 1;
      result = sub_10029CAF0(v192, v109 + ((*(v182 + 80) + 32) & ~*(v182 + 80)) + *(v182 + 72) * v108);
      v83 = v195;
    }

    ++v78;
    v82 += 2;
    v77 = v84;
    if (v190 == v78)
    {
      goto LABEL_36;
    }
  }

  __break(1u);
LABEL_60:
  __break(1u);
  return result;
}

id sub_10029C5F0(char a1)
{
  switch(a1)
  {
    case 1:
    case 3:
    case 4:
    case 13:
    case 19:
    case 23:
    case 27:
    case 30:
    case 34:
      v1 = [objc_opt_self() meterUnitWithMetricPrefix:9];
      goto LABEL_11;
    case 5:
    case 14:
    case 20:
    case 24:
    case 28:
    case 31:
    case 35:
    case 38:
      v1 = [objc_opt_self() minuteUnit];
      goto LABEL_11;
    case 6:
    case 12:
    case 15:
    case 21:
    case 25:
    case 32:
    case 36:
      v1 = [objc_opt_self() meterUnit];
      goto LABEL_11;
    case 7:
    case 16:
    case 22:
    case 26:
    case 29:
    case 33:
    case 37:
      v2 = objc_opt_self();
      v3 = [v2 minuteUnit];
      v4 = [v2 meterUnitWithMetricPrefix:9];
      v5 = [v3 unitDividedByUnit:v4];

      return v5;
    case 8:
    case 17:
      v1 = [objc_opt_self() wattUnit];
      goto LABEL_11;
    case 9:
    case 18:
      v1 = [objc_opt_self() _countPerMinuteUnit];
      goto LABEL_11;
    case 10:
      v1 = [objc_opt_self() secondUnitWithMetricPrefix:4];
      goto LABEL_11;
    case 11:
      v1 = [objc_opt_self() meterUnitWithMetricPrefix:5];
      goto LABEL_11;
    default:
      v1 = [objc_opt_self() countUnit];
LABEL_11:

      return v1;
  }
}

id sub_10029C814(char a1)
{
  switch(a1)
  {
    case 1:
    case 3:
    case 4:
    case 13:
    case 19:
    case 23:
    case 30:
    case 34:
      v1 = [objc_opt_self() mileUnit];
      goto LABEL_15;
    case 5:
    case 14:
    case 20:
    case 24:
    case 28:
    case 31:
    case 35:
    case 38:
      v1 = [objc_opt_self() minuteUnit];
      goto LABEL_15;
    case 6:
    case 15:
    case 21:
    case 25:
    case 32:
    case 36:
      v1 = [objc_opt_self() footUnit];
      goto LABEL_15;
    case 7:
    case 16:
    case 22:
    case 26:
    case 33:
    case 37:
      v2 = objc_opt_self();
      v3 = [v2 minuteUnit];
      v4 = [v2 mileUnit];
      v5 = [v3 unitDividedByUnit:v4];
      goto LABEL_5;
    case 8:
    case 17:
      v1 = [objc_opt_self() wattUnit];
      goto LABEL_15;
    case 9:
    case 18:
      v1 = [objc_opt_self() _countPerMinuteUnit];
      goto LABEL_15;
    case 10:
      v1 = [objc_opt_self() secondUnitWithMetricPrefix:4];
      goto LABEL_15;
    case 11:
      v1 = [objc_opt_self() meterUnitWithMetricPrefix:5];
      goto LABEL_15;
    case 12:
      v1 = [objc_opt_self() meterUnit];
      goto LABEL_15;
    case 27:
      v1 = [objc_opt_self() yardUnit];
      goto LABEL_15;
    case 29:
      v8 = objc_opt_self();
      v3 = [v8 minuteUnit];
      v4 = [v8 yardUnit];
      v5 = [v3 unitDividedByUnit:v4];
LABEL_5:
      v6 = v5;

      result = v6;
      break;
    default:
      v1 = [objc_opt_self() countUnit];
LABEL_15:

      result = v1;
      break;
  }

  return result;
}

uint64_t sub_10029CAF0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MetricChartData();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void *sub_10029CB54(uint64_t a1)
{
  v2 = type metadata accessor for Duration.UnitsFormatStyle.Unit();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    sub_100140278(&qword_1008E5C90);
    v9 = static _SetStorage.allocate(capacity:)();
    v10 = 0;
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v35 = v12;
    v36 = v9 + 56;
    v13 = *(v11 + 64);
    v32 = v8;
    v33 = a1 + ((v13 + 32) & ~v13);
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    v31 = (v11 + 16);
    while (1)
    {
      v34 = v10;
      v35(v37, v33 + v14 * v10, v2);
      sub_1000216FC(&qword_1008E5C98, &type metadata accessor for Duration.UnitsFormatStyle.Unit);
      v16 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v17 = ~(-1 << *(v9 + 32));
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *(v36 + 8 * v19);
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) != 0)
      {
        while (1)
        {
          v22 = v11;
          v35(v6, *(v9 + 48) + v18 * v14, v2);
          sub_1000216FC(&qword_1008E5CA0, &type metadata accessor for Duration.UnitsFormatStyle.Unit);
          v23 = dispatch thunk of static Equatable.== infix(_:_:)();
          v24 = *v15;
          (*v15)(v6, v2);
          if (v23)
          {
            break;
          }

          v18 = (v18 + 1) & v17;
          v19 = v18 >> 6;
          v20 = *(v36 + 8 * (v18 >> 6));
          v21 = 1 << v18;
          v11 = v22;
          if (((1 << v18) & v20) == 0)
          {
            goto LABEL_8;
          }
        }

        v24(v37, v2);
        v11 = v22;
      }

      else
      {
LABEL_8:
        v25 = v37;
        *(v36 + 8 * v19) = v21 | v20;
        result = (*v31)(*(v9 + 48) + v18 * v14, v25, v2);
        v27 = *(v9 + 16);
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          __break(1u);
          return result;
        }

        *(v9 + 16) = v29;
      }

      v10 = v34 + 1;
      if (v34 + 1 == v32)
      {
        return v9;
      }
    }
  }

  return &_swiftEmptySetSingleton;
}

Swift::Int sub_10029CE98(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100140278(&qword_1008E5CC0);
    v3 = static _SetStorage.allocate(capacity:)();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (1)
    {
      v10 = *(v6 + v4);
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v10);
      result = Hasher._finalize()();
      v12 = ~(-1 << *(v3 + 32));
      v13 = result & v12;
      v14 = (result & v12) >> 6;
      v15 = *(v5 + 8 * v14);
      v16 = 1 << (result & v12);
      v17 = *(v3 + 48);
      if ((v16 & v15) != 0)
      {
        while (*(v17 + v13) != v10)
        {
          v13 = (v13 + 1) & v12;
          v14 = v13 >> 6;
          v15 = *(v5 + 8 * (v13 >> 6));
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            goto LABEL_3;
          }
        }
      }

      else
      {
LABEL_3:
        *(v5 + 8 * v14) = v16 | v15;
        *(v17 + v13) = v10;
        v7 = *(v3 + 16);
        v8 = __OFADD__(v7, 1);
        v9 = v7 + 1;
        if (v8)
        {
          __break(1u);
          return result;
        }

        *(v3 + 16) = v9;
      }

      if (++v4 == v1)
      {
        return v3;
      }
    }
  }

  return &_swiftEmptySetSingleton;
}

void sub_10029CFF8(unint64_t a1, uint64_t *a2, uint64_t a3, unint64_t *a4)
{
  v5 = a1 >> 62;
  if (a1 >> 62)
  {
    v9 = a2;
    v10 = _CocoaArrayWrapper.endIndex.getter();
    a2 = v9;
    if (v10)
    {
LABEL_3:
      sub_100140278(a2);
      v6 = static _SetStorage.allocate(capacity:)();
      v7 = a1 & 0xFFFFFFFFFFFFFF8;
      if (!v5)
      {
        goto LABEL_4;
      }

LABEL_8:
      v8 = _CocoaArrayWrapper.endIndex.getter();
      if (!v8)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v6 = &_swiftEmptySetSingleton;
  v7 = a1 & 0xFFFFFFFFFFFFFF8;
  if (v5)
  {
    goto LABEL_8;
  }

LABEL_4:
  v8 = *(v7 + 16);
  if (!v8)
  {
    return;
  }

LABEL_9:
  v11 = (v6 + 7);
  v43 = v8;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v12 = 0;
    while (1)
    {
      v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v14 = __OFADD__(v12++, 1);
      if (v14)
      {
        break;
      }

      v15 = v13;
      v16 = NSObject._rawHashValue(seed:)(v6[5]);
      v17 = -1 << *(v6 + 32);
      v18 = v16 & ~v17;
      v19 = v18 >> 6;
      v20 = *&v11[8 * (v18 >> 6)];
      v21 = 1 << v18;
      if (((1 << v18) & v20) != 0)
      {
        v22 = ~v17;
        sub_1000059F8(0, a4);
        while (1)
        {
          v23 = *(v6[6] + 8 * v18);
          v24 = static NSObject.== infix(_:_:)();

          if (v24)
          {
            break;
          }

          v18 = (v18 + 1) & v22;
          v19 = v18 >> 6;
          v20 = *&v11[8 * (v18 >> 6)];
          v21 = 1 << v18;
          if (((1 << v18) & v20) == 0)
          {
            v8 = v43;
            goto LABEL_18;
          }
        }

        swift_unknownObjectRelease();
        v8 = v43;
        if (v12 == v43)
        {
          return;
        }
      }

      else
      {
LABEL_18:
        *&v11[8 * v19] = v21 | v20;
        *(v6[6] + 8 * v18) = v15;
        v25 = v6[2];
        v14 = __OFADD__(v25, 1);
        v26 = v25 + 1;
        if (v14)
        {
          goto LABEL_32;
        }

        v6[2] = v26;
        if (v12 == v8)
        {
          return;
        }
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
  }

  else
  {
    v27 = 0;
    v41 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v27 != v41)
    {
      v28 = v6[5];
      v29 = *(a1 + 32 + 8 * v27);
      v30 = NSObject._rawHashValue(seed:)(v28);
      v31 = -1 << *(v6 + 32);
      v32 = v30 & ~v31;
      v33 = v32 >> 6;
      v34 = *&v11[8 * (v32 >> 6)];
      v35 = 1 << v32;
      if (((1 << v32) & v34) != 0)
      {
        v36 = ~v31;
        sub_1000059F8(0, a4);
        while (1)
        {
          v37 = *(v6[6] + 8 * v32);
          v38 = static NSObject.== infix(_:_:)();

          if (v38)
          {
            break;
          }

          v32 = (v32 + 1) & v36;
          v33 = v32 >> 6;
          v34 = *&v11[8 * (v32 >> 6)];
          v35 = 1 << v32;
          if (((1 << v32) & v34) == 0)
          {
            goto LABEL_29;
          }
        }
      }

      else
      {
LABEL_29:
        *&v11[8 * v33] = v35 | v34;
        *(v6[6] + 8 * v32) = v29;
        v39 = v6[2];
        v14 = __OFADD__(v39, 1);
        v40 = v39 + 1;
        if (v14)
        {
          goto LABEL_34;
        }

        v6[2] = v40;
      }

      if (++v27 == v43)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
}

Swift::Int sub_10029D2E4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100140278(&qword_1008DF068);
    v3 = static _SetStorage.allocate(capacity:)();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      Hasher.init(_seed:)();

      String.hash(into:)();
      result = Hasher._finalize()();
      v11 = ~(-1 << *(v3 + 32));
      for (i = result & v11; ; i = (i + 1) & v11)
      {
        v13 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v13) == 0)
        {
          break;
        }

        v14 = (*(v3 + 48) + 16 * i);
        if (*v14 != v9 || v14[1] != v8)
        {
          result = _stringCompareWithSmolCheck(_:_:expecting:)();
          if ((result & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_4;
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v13;
      v16 = (*(v3 + 48) + 16 * i);
      *v16 = v9;
      v16[1] = v8;
      v17 = *(v3 + 16);
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (!v18)
      {
        *(v3 + 16) = v19;
LABEL_4:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return &_swiftEmptySetSingleton;
  }

  return result;
}

void *sub_10029D44C(uint64_t a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    sub_100140278(&qword_1008DF148);
    v9 = static _SetStorage.allocate(capacity:)();
    v10 = 0;
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v35 = v12;
    v36 = v9 + 56;
    v13 = *(v11 + 64);
    v32 = v8;
    v33 = a1 + ((v13 + 32) & ~v13);
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    v31 = (v11 + 16);
    while (1)
    {
      v34 = v10;
      v35(v37, v33 + v14 * v10, v2);
      sub_1000216FC(&qword_1008E4E10, &type metadata accessor for UUID);
      v16 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v17 = ~(-1 << *(v9 + 32));
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *(v36 + 8 * v19);
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) != 0)
      {
        while (1)
        {
          v22 = v11;
          v35(v5, *(v9 + 48) + v18 * v14, v2);
          sub_1000216FC(&qword_1008EAFA0, &type metadata accessor for UUID);
          v23 = dispatch thunk of static Equatable.== infix(_:_:)();
          v24 = *v15;
          (*v15)(v5, v2);
          if (v23)
          {
            break;
          }

          v18 = (v18 + 1) & v17;
          v19 = v18 >> 6;
          v20 = *(v36 + 8 * (v18 >> 6));
          v21 = 1 << v18;
          v11 = v22;
          if (((1 << v18) & v20) == 0)
          {
            goto LABEL_8;
          }
        }

        v24(v37, v2);
        v11 = v22;
      }

      else
      {
LABEL_8:
        v25 = v37;
        *(v36 + 8 * v19) = v21 | v20;
        result = (*v31)(*(v9 + 48) + v18 * v14, v25, v2);
        v27 = *(v9 + 16);
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          __break(1u);
          return result;
        }

        *(v9 + 16) = v29;
      }

      v10 = v34 + 1;
      if (v34 + 1 == v32)
      {
        return v9;
      }
    }
  }

  return &_swiftEmptySetSingleton;
}

unint64_t sub_10029D76C(unint64_t result)
{
  v1 = result;
  v2 = result >> 62;
  if (result >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    if (result)
    {
LABEL_3:
      sub_100140278(&qword_1008E5CA8);
      result = static _SetStorage.allocate(capacity:)();
      v3 = result;
      v4 = v1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      result = _CocoaArrayWrapper.endIndex.getter();
      v5 = result;
      if (!result)
      {
        return v3;
      }

      goto LABEL_9;
    }
  }

  else if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = &_swiftEmptySetSingleton;
  v4 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return v3;
  }

LABEL_9:
  v6 = 0;
  v7 = v3 + 56;
  v20 = v1 & 0xC000000000000001;
  v18 = v1 + 32;
  v19 = v1 & 0xFFFFFFFFFFFFFF8;
  while (v20)
  {
    result = specialized _ArrayBuffer._getElementSlowPath(_:)();
    v8 = result;
    v9 = __OFADD__(v6++, 1);
    if (v9)
    {
      goto LABEL_25;
    }

LABEL_18:
    type metadata accessor for AnyCancellable();
    sub_1000216FC(&qword_1008E5CB0, &type metadata accessor for AnyCancellable);
    result = dispatch thunk of Hashable._rawHashValue(seed:)();
    v10 = -1 << v3[32];
    v11 = result & ~v10;
    v12 = v11 >> 6;
    v13 = *&v7[8 * (v11 >> 6)];
    v14 = 1 << v11;
    if (((1 << v11) & v13) != 0)
    {
      v15 = ~v10;
      sub_1000216FC(&qword_1008E5CB8, &type metadata accessor for AnyCancellable);
      while (1)
      {
        result = dispatch thunk of static Equatable.== infix(_:_:)();
        if (result)
        {
          break;
        }

        v11 = (v11 + 1) & v15;
        v12 = v11 >> 6;
        v13 = *&v7[8 * (v11 >> 6)];
        v14 = 1 << v11;
        if (((1 << v11) & v13) == 0)
        {
          goto LABEL_22;
        }
      }
    }

    else
    {
LABEL_22:
      *&v7[8 * v12] = v14 | v13;
      *(*(v3 + 6) + 8 * v11) = v8;
      v16 = *(v3 + 2);
      v9 = __OFADD__(v16, 1);
      v17 = v16 + 1;
      if (v9)
      {
        goto LABEL_26;
      }

      *(v3 + 2) = v17;
    }

    if (v6 == v5)
    {
      return v3;
    }
  }

  if (v6 >= *(v19 + 16))
  {
    goto LABEL_27;
  }

  v8 = *(v18 + 8 * v6);

  v9 = __OFADD__(v6++, 1);
  if (!v9)
  {
    goto LABEL_18;
  }

LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

void sub_10029DA24()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_10029DB90();
  }

  swift_beginAccess();
  v2 = swift_unknownObjectWeakLoadStrong();
  if (v2)
  {
    v3 = v2;
    v4 = [v2 tableView];

    if (v4)
    {
      [v4 reloadData];
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_10029DB90()
{
  swift_getObjectType();
  v1 = static os_log_type_t.default.getter();
  v2 = HKLogActivity;
  if (os_log_type_enabled(HKLogActivity, v1))
  {
    v3 = v2;
    v4 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v4 = 136315394;
    v5 = _typeName(_:qualified:)();
    v7 = sub_10000AFDC(v5, v6, &v12);

    *(v4 + 4) = v7;
    *(v4 + 12) = 2080;
    *(v4 + 14) = sub_10000AFDC(0xD000000000000012, 0x8000000100749A00, &v12);
    _os_log_impl(&_mh_execute_header, v3, v1, "%s::%s", v4, 0x16u);
    swift_arrayDestroy();
  }

  v8 = sub_10029DD34();
  v9 = *(v0 + OBJC_IVAR____TtC10FitnessApp25StackDetailViewController_dataSource);
  if (v9)
  {
    v11 = v8;
    v10 = v9;
    [v10 applySnapshot:v11 animatingDifferences:1];

    v8 = v11;
  }
}

uint64_t sub_10029DD34()
{
  v39[1] = swift_getObjectType();
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = [objc_allocWithZone(NSDiffableDataSourceSnapshot) init];
  v5 = v0 + OBJC_IVAR____TtC10FitnessApp25StackDetailViewController_stackViewModel;
  v6 = *(v5 + *(type metadata accessor for FitnessPlusStackViewModel() + 20));
  v7 = *(v6 + 16);
  v41 = v6 + 32;
  v42 = v6;
  v43 = 0x80000001007499C0;
  v8 = (v2 + 8);

  v10 = 0;
  v11 = _swiftEmptyArrayStorage;
  while (1)
  {
    v12 = 0uLL;
    v13 = v7;
    v14 = 0uLL;
    v15 = 0uLL;
    if (v10 != v7)
    {
      if (v10 >= *(v42 + 16))
      {
        __break(1u);
        return result;
      }

      v13 = v10 + 1;
      *&v48 = v10;
      sub_100007C5C(v41 + 40 * v10, &v48 + 8);
      v12 = v48;
      v14 = v49;
      v15 = v50;
    }

    v51[0] = v12;
    v51[1] = v14;
    v51[2] = v15;
    if (!v15)
    {
      break;
    }

    v44 = v12;
    sub_1001AB740((v51 + 8), &v48);
    v46 = 0;
    v47 = 0xE000000000000000;
    _StringGuts.grow(_:)(23);

    v46 = 0xD000000000000012;
    v47 = v43;
    v45 = v44;
    v16._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v16);

    v17._countAndFlagsBits = 45;
    v17._object = 0xE100000000000000;
    String.append(_:)(v17);
    v19 = *(&v49 + 1);
    v18 = v50;
    sub_1000066AC(&v48, *(&v49 + 1));
    (*(v18 + 48))(v19, v18);
    sub_100045CB0(&qword_1008EE840, &type metadata accessor for UUID);
    v20._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v20);

    (*v8)(v4, v1);
    v21 = v46;
    v22 = v47;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v11 = sub_100042744(0, *(v11 + 2) + 1, 1, v11);
    }

    v24 = *(v11 + 2);
    v23 = *(v11 + 3);
    if (v24 >= v23 >> 1)
    {
      v11 = sub_100042744((v23 > 1), v24 + 1, 1, v11);
    }

    *(v11 + 2) = v24 + 1;
    v25 = &v11[16 * v24];
    *(v25 + 4) = v21;
    *(v25 + 5) = v22;
    result = sub_100005A40(&v48);
    v10 = v13;
  }

  sub_100140278(&qword_1008E7590);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_1006D46C0;
  *(v26 + 56) = &type metadata for String;
  *(v26 + 32) = 0xD000000000000011;
  *(v26 + 40) = 0x8000000100752950;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v28 = v40;
  [v40 appendSectionsWithIdentifiers:isa];

  *&v51[0] = &off_100841BB8;
  sub_10019EE1C(v11);
  sub_10019F3D0(*&v51[0]);

  v29 = Array._bridgeToObjectiveC()().super.isa;

  [v28 appendItemsWithIdentifiers:v29];

  v30 = static os_log_type_t.default.getter();
  v31 = HKLogActivity;
  if (os_log_type_enabled(HKLogActivity, v30))
  {
    v32 = v31;
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    *&v51[0] = swift_slowAlloc();
    *v33 = 136315650;
    v35 = _typeName(_:qualified:)();
    v37 = sub_10000AFDC(v35, v36, v51);

    *(v33 + 4) = v37;
    *(v33 + 12) = 2080;
    *(v33 + 14) = sub_10000AFDC(0x70616E53656B616DLL, 0xEE002928746F6873, v51);
    *(v33 + 22) = 2112;
    *(v33 + 24) = v28;
    *v34 = v28;
    v38 = v28;
    _os_log_impl(&_mh_execute_header, v32, v30, "%s::%s snapshot %@", v33, 0x20u);
    sub_1001F3454(v34);

    swift_arrayDestroy();
  }

  return v28;
}

char *sub_10029E2D0(void *a1)
{
  v2 = sub_100140278(&qword_1008E0BC0);
  __chkstk_darwin(v2 - 8);
  v4 = v40 - v3 + 16;
  v5 = type metadata accessor for FitnessPlusStackViewModel();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  __chkstk_darwin(v7);
  v11 = v40 - v10 + 16;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v13 = Strong;
  if (IndexPath.row.getter())
  {
    if (IndexPath.row.getter() == 1)
    {
      v14 = OBJC_IVAR____TtC10FitnessApp25StackDetailViewController_stackViewModel;
      sub_1001AB4EC(&v13[OBJC_IVAR____TtC10FitnessApp25StackDetailViewController_stackViewModel], v9);
      sub_10029FA14(v9, v40);
      sub_1001AB550(v9);
      v15 = String._bridgeToObjectiveC()();
      isa = IndexPath._bridgeToObjectiveC()().super.isa;
      v17 = [a1 dequeueReusableCellWithIdentifier:v15 forIndexPath:isa];

      type metadata accessor for StackDetailSideBySideItemsCell();
      if (swift_dynamicCastClass())
      {
        sub_1001AB4EC(&v13[v14], v9);
        v18 = *&v13[OBJC_IVAR____TtC10FitnessApp25StackDetailViewController_stackFormattingManager];
        v17 = v17;
        sub_1002DE03C(v9, v18, v40);

        sub_1001AB550(v9);
      }
    }

    else
    {
      v17 = sub_10029EA9C();
    }

    goto LABEL_12;
  }

  v19 = String._bridgeToObjectiveC()();
  v20 = IndexPath._bridgeToObjectiveC()().super.isa;
  v17 = [a1 dequeueReusableCellWithIdentifier:v19 forIndexPath:v20];

  type metadata accessor for StackDetailHeaderCell();
  v21 = swift_dynamicCastClass();
  if (!v21)
  {
LABEL_12:

    return v17;
  }

  v22 = v21;
  sub_1001AB4EC(&v13[OBJC_IVAR____TtC10FitnessApp25StackDetailViewController_stackViewModel], v11);
  v23 = *&v13[OBJC_IVAR____TtC10FitnessApp25StackDetailViewController_fitnessAppContext];
  v24 = swift_allocObject();
  *(v24 + 16) = a1;
  sub_1001AB4EC(v11, v4);
  (*(v6 + 56))(v4, 0, 1, v5);
  v25 = OBJC_IVAR____TtC10FitnessApp21StackDetailHeaderCell_stackViewModel;
  swift_beginAccess();
  v17 = v17;
  v26 = a1;
  sub_10029FD5C(v4, v22 + v25);
  swift_endAccess();
  v27 = *(v22 + OBJC_IVAR____TtC10FitnessApp21StackDetailHeaderCell_fitnessAppContext);
  *(v22 + OBJC_IVAR____TtC10FitnessApp21StackDetailHeaderCell_fitnessAppContext) = v23;
  v28 = v23;

  v29 = *(v22 + OBJC_IVAR____TtC10FitnessApp21StackDetailHeaderCell_titleLabel);
  v30 = sub_100409AF0();
  [v29 setAttributedText:v30];

  v31 = *(v22 + OBJC_IVAR____TtC10FitnessApp21StackDetailHeaderCell_subtitleLabel);
  v32 = sub_100409D88();
  [v31 setAttributedText:v32];

  v33 = String._bridgeToObjectiveC()();
  v34 = [objc_opt_self() smm_systemImageNamed:v33];

  if (v34)
  {
    [*(v22 + OBJC_IVAR____TtC10FitnessApp21StackDetailHeaderCell_iconImageView) setImage:v34];
  }

  v35 = *&v28[OBJC_IVAR___CHFitnessAppContext_seymourCatalogItemDataProvider];
  v36 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v37 = v28;

  sub_100425B80(v11, v35, v36, v37, sub_10029FD54, v24);

  sub_1001AB550(v11);

  return v17;
}

uint64_t sub_10029E7D8(void *a1)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000059F8(0, &qword_1008E3FD0);
  v10 = static OS_dispatch_queue.main.getter();
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  aBlock[4] = sub_10029FDCC;
  aBlock[5] = v11;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000449A8;
  aBlock[3] = &unk_100850208;
  v12 = _Block_copy(aBlock);
  v13 = a1;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100045CB0(&qword_1008E33B0, &type metadata accessor for DispatchWorkItemFlags);
  sub_100140278(&unk_1008E7F50);
  sub_10002621C();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v12);

  (*(v3 + 8))(v5, v2);
  return (*(v7 + 8))(v9, v6);
}

char *sub_10029EA9C()
{
  v1 = v0;
  v2 = &v0[OBJC_IVAR____TtC10FitnessApp25StackDetailViewController_stackViewModel];
  v3 = *&v2[*(type metadata accessor for FitnessPlusStackViewModel() + 20)];

  result = IndexPath.row.getter();
  v5 = result - 2;
  if (__OFSUB__(result, 2))
  {
    __break(1u);
    goto LABEL_16;
  }

  if ((v5 & 0x8000000000000000) != 0)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v5 >= *(v3 + 16))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  sub_100007C5C(v3 + 40 * v5 + 32, v33);

  sub_100007C5C(v33, v32);
  sub_100140278(&unk_1008E4E60);
  sub_1000059F8(0, &qword_1008ED7C0);
  if (swift_dynamicCast())
  {

    result = [v0 tableView];
    if (result)
    {
      v6 = result;
      v7 = String._bridgeToObjectiveC()();
      isa = IndexPath._bridgeToObjectiveC()().super.isa;
      v9 = [v6 dequeueReusableCellWithIdentifier:v7 forIndexPath:isa];

      sub_100007C5C(v33, v32);
      if ((swift_dynamicCast() & 1) == 0)
      {
LABEL_14:
        [v9 setSelectionStyle:0];
        sub_100005A40(v33);
        return v9;
      }

      type metadata accessor for WorkoutsListTableViewCell();
      v10 = swift_dynamicCastClass();
      if (v10)
      {
        v11 = *&v1[OBJC_IVAR____TtC10FitnessApp25StackDetailViewController_fitnessAppContext];
        v12 = *&v1[OBJC_IVAR____TtC10FitnessApp25StackDetailViewController_workoutFormattingManager];
        v13 = *(v10 + OBJC_IVAR___CHWorkoutsListTableViewCell_workoutContentView);
        v14 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v15 = swift_allocObject();
        v15[3] = 0;
        v15[4] = 0;
        v15[2] = v14;
        v16 = *&v13[OBJC_IVAR____TtC10FitnessApp23WorkoutsListContentView_workout];
        *&v13[OBJC_IVAR____TtC10FitnessApp23WorkoutsListContentView_workout] = v31;
        v17 = v31;
        v9 = v9;

        *&v13[OBJC_IVAR____TtC10FitnessApp23WorkoutsListContentView_achievementCount] = 0;
        v18 = *&v13[OBJC_IVAR____TtC10FitnessApp23WorkoutsListContentView_formattingManager];
        *&v13[OBJC_IVAR____TtC10FitnessApp23WorkoutsListContentView_formattingManager] = v12;
        v19 = v12;

        v13[OBJC_IVAR____TtC10FitnessApp23WorkoutsListContentView_diveDisplayStyle] = 1;
        v20 = *&v13[OBJC_IVAR____TtC10FitnessApp23WorkoutsListContentView_workoutCellImageLabelView];
        v21 = *(v20 + OBJC_IVAR___CHWorkoutCellImageLabelView_workout);
        *(v20 + OBJC_IVAR___CHWorkoutCellImageLabelView_workout) = v31;

        v22 = *(v20 + OBJC_IVAR___CHWorkoutCellImageLabelView_fitnessAppContext);
        *(v20 + OBJC_IVAR___CHWorkoutCellImageLabelView_fitnessAppContext) = v11;
        v23 = v11;

        v24 = *(v20 + OBJC_IVAR___CHWorkoutCellImageLabelView_formattingManager);
        *(v20 + OBJC_IVAR___CHWorkoutCellImageLabelView_formattingManager) = v12;

        *(v20 + OBJC_IVAR___CHWorkoutCellImageLabelView_achievementCount) = 0;
        *(v20 + OBJC_IVAR___CHWorkoutCellImageLabelView_diveDisplayStyle) = 1;
        sub_100697158(sub_100175B38, v15);
        sub_100698004();
        [v13 configureWithCurrentWorkout];

        goto LABEL_14;
      }

LABEL_13:

      goto LABEL_14;
    }

    goto LABEL_18;
  }

  result = [v0 tableView];
  if (result)
  {
    v25 = result;
    v26 = String._bridgeToObjectiveC()();
    v27 = IndexPath._bridgeToObjectiveC()().super.isa;
    v9 = [v25 dequeueReusableCellWithIdentifier:v26 forIndexPath:v27];

    sub_100007C5C(v33, v32);
    type metadata accessor for MindfulnessSessionViewModel();
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_14;
    }

    type metadata accessor for MindfulnessSessionListTableViewCell();
    if (swift_dynamicCastClass())
    {
      v28 = *&v1[OBJC_IVAR____TtC10FitnessApp25StackDetailViewController_fitnessAppContext];
      v29 = *&v1[OBJC_IVAR____TtC10FitnessApp25StackDetailViewController_mindfulnessSessionFormattingManager];
      v30 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v9 = v9;

      sub_1004D643C(v31, v28, v29, sub_100192CCC, v30);

      goto LABEL_14;
    }

    goto LABEL_13;
  }

LABEL_19:
  __break(1u);
  return result;
}

uint64_t sub_10029EF88()
{
  v1 = v0 + OBJC_IVAR____TtC10FitnessApp25StackDetailViewController_stackViewModel;
  v2 = *(v1 + *(type metadata accessor for FitnessPlusStackViewModel() + 20));

  v3 = IndexPath.row.getter();
  v4 = v3 - 2;
  if (__OFSUB__(v3, 2))
  {
    __break(1u);
    goto LABEL_14;
  }

  if ((v4 & 0x8000000000000000) != 0)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v4 >= *(v2 + 16))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  sub_100007C5C(v2 + 40 * v4 + 32, v14);

  sub_100007C5C(v14, v13);
  sub_100140278(&unk_1008E4E60);
  type metadata accessor for MindfulnessSessionViewModel();
  if (swift_dynamicCast())
  {

    sub_100007C5C(v14, v13);
    if (swift_dynamicCast())
    {
      v5 = *(v0 + OBJC_IVAR____TtC10FitnessApp25StackDetailViewController_fitnessAppContext);
      v6 = *(v0 + OBJC_IVAR____TtC10FitnessApp25StackDetailViewController_mindfulnessSessionFormattingManager);
      objc_allocWithZone(type metadata accessor for MindfulnessSessionDetailViewController());
      sub_100349480(v12, v5, v6);
    }

    else
    {
      v7 = [objc_allocWithZone(UIViewController) initWithNibName:0 bundle:0];
    }

    v9 = v7;
    sub_100005A40(v14);
    return v9;
  }

  sub_100007C5C(v14, v13);
  sub_1000059F8(0, &qword_1008ED7C0);
  if (swift_dynamicCast())
  {
    LOBYTE(v11) = 1;
    v8 = [objc_allocWithZone(CHWorkoutDetailViewController) initWithWorkout:v12 workoutActivity:0 healthStore:*(v0 + OBJC_IVAR____TtC10FitnessApp25StackDetailViewController_healthStore) model:*(v0 + OBJC_IVAR____TtC10FitnessApp25StackDetailViewController_model) fitnessAppContext:*(v0 + OBJC_IVAR____TtC10FitnessApp25StackDetailViewController_fitnessAppContext) workoutFormattingManager:*(v0 + OBJC_IVAR____TtC10FitnessApp25StackDetailViewController_workoutFormattingManager) workoutDataProvider:*(*(v0 + OBJC_IVAR____TtC10FitnessApp25StackDetailViewController_historyDataProvider) + OBJC_IVAR___CHHistoryDataProvider_workoutDataProvider) badgeImageFactory:*(v0 + OBJC_IVAR____TtC10FitnessApp25StackDetailViewController_badgeImageFactory) friendListManager:*(v0 + OBJC_IVAR____TtC10FitnessApp25StackDetailViewController_friendListManager) achievementLocalizationProvider:*(v0 + OBJC_IVAR____TtC10FitnessApp25StackDetailViewController_achievementLocalizationProvider) pauseRingsCoordinator:*(v0 + OBJC_IVAR____TtC10FitnessApp25StackDetailViewController_pauseRingsCoordinator) achievementResourceProvider:*(v0 + OBJC_IVAR____TtC10FitnessApp25StackDetailViewController_achievementResourceProvider) formattingManager:*(v0 + OBJC_IVAR____TtC10FitnessApp25StackDetailViewController_fiuiFormattingManager) awardsDataProvider:*(v0 + OBJC_IVAR____TtC10FitnessApp25StackDetailViewController_awardsDataProvider) shouldExposeDeepLinkToTrainingLoadFromEffort:v11];
    if (v8)
    {
      v9 = v8;
      sub_100005A40(v14);

      return v9;
    }
  }

LABEL_16:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

void sub_10029F4F4(void *a1)
{
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  [a1 deselectRowAtIndexPath:isa animated:1];

  if (IndexPath.row.getter())
  {
    if (IndexPath.row.getter() != 1)
    {
      v4 = [v1 navigationController];
      if (v4)
      {
        v5 = v4;
        v6 = sub_10029EF88();
        [v5 pushViewController:v6 animated:1];
      }
    }
  }
}

id sub_10029F79C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for StackDetailViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for StackDetailViewController()
{
  result = qword_1008E5D78;
  if (!qword_1008E5D78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10029F954()
{
  result = type metadata accessor for FitnessPlusStackViewModel();
  if (v1 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t sub_10029FA14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_100140278(&qword_1008DF0B8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1006D46C0;
  v8 = *(a1 + *(type metadata accessor for FitnessPlusStackViewModel() + 20));
  v9 = *(v8 + 16);
  if (v9)
  {
    v2 = v8 + 32;
    v10 = 0.0;
    do
    {
      sub_100007C5C(v2, v37);
      v3 = v38;
      v4 = v39;
      sub_1000066AC(v37, v38);
      v10 = v10 + (*(v4 + 40))(v3, v4);
      sub_100005A40(v37);
      v2 += 40;
      --v9;
    }

    while (v9);
  }

  else
  {
    v10 = 0.0;
  }

  *(inited + 32) = v10;
  *(inited + 40) = 0;
  if (sub_100373DBC() > 0.0)
  {
    v11 = sub_100373DBC();
    v2 = 1;
    inited = sub_1001A2A90(1, 2, 1, inited);
    *(inited + 16) = 2;
    *(inited + 48) = v11;
    *(inited + 56) = 1;
  }

  sub_100373F30();
  if (v12 > 0.0)
  {
    sub_100373F30();
    v2 = *(inited + 16);
    v14 = *(inited + 24);
    if (v2 >= v14 >> 1)
    {
      v33 = v13;
      v34 = sub_1001A2A90((v14 > 1), v2 + 1, 1, inited);
      v13 = v33;
      inited = v34;
    }

    *(inited + 16) = v2 + 1;
    v15 = inited + 16 * v2;
    *(v15 + 32) = v13;
    *(v15 + 40) = 2;
  }

  sub_10037410C();
  if (v16 <= 0.0)
  {
    v20 = *(inited + 16);
    v22 = v20 == 1;
    if (v20 > 1)
    {
      goto LABEL_16;
    }

LABEL_20:
    if (v22)
    {
      v23 = *(inited + 32);
      v24 = *(inited + 40);

      v27 = 0;
      v28 = 0;
      v29 = 0;
      goto LABEL_26;
    }

    if (!v20)
    {
      __break(1u);
    }

LABEL_25:
    v23 = *(inited + 32);
    v24 = *(inited + 40);
    v2 = *(inited + 48);
    v30 = *(inited + 56);
    v31 = *(inited + 72);
    v3 = *(inited + 64);
    v4 = *(inited + 80);
    v32 = *(inited + 88);

    v27 = v30 & 3;
    v28 = v31 & 3;
    v29 = v32 & 3 | 0xC0;
    goto LABEL_26;
  }

  sub_10037410C();
  v19 = *(inited + 16);
  v18 = *(inited + 24);
  v20 = v19 + 1;
  if (v19 >= v18 >> 1)
  {
    v35 = v17;
    v36 = sub_1001A2A90((v18 > 1), v19 + 1, 1, inited);
    v17 = v35;
    inited = v36;
  }

  *(inited + 16) = v20;
  v21 = inited + 16 * v19;
  *(v21 + 32) = v17;
  *(v21 + 40) = 3;
  v22 = v20 == 1;
  if (v20 <= 1)
  {
    goto LABEL_20;
  }

LABEL_16:
  if (v20 == 2)
  {
    v24 = *(inited + 40);
    v23 = *(inited + 32);
    v2 = *(inited + 48);
    v3 = *(inited + 56);

    v28 = 0;
    v27 = v3 & 3;
    v29 = 64;
    goto LABEL_26;
  }

  if (v20 != 3)
  {
    goto LABEL_25;
  }

  v23 = *(inited + 32);
  v24 = *(inited + 40);
  v4 = *(inited + 56);
  v2 = *(inited + 48);
  v3 = *(inited + 64);
  v25 = *(inited + 72);

  v27 = v4 & 3;
  v28 = v25 & 3;
  v29 = 0x80;
LABEL_26:
  *a2 = v23;
  *(a2 + 8) = v24 & 3;
  *(a2 + 16) = v2;
  *(a2 + 24) = v27;
  *(a2 + 32) = v3;
  *(a2 + 40) = v28;
  *(a2 + 48) = v4;
  *(a2 + 56) = v29;
  return result;
}

uint64_t sub_10029FD5C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100140278(&qword_1008E0BC0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

id sub_10029FDCC()
{
  v1 = *(v0 + 16);
  [v1 beginUpdates];

  return [v1 endUpdates];
}

unint64_t sub_10029FE1C()
{
  result = qword_1008E5D88;
  if (!qword_1008E5D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E5D88);
  }

  return result;
}

unint64_t sub_10029FE74()
{
  result = qword_1008E5D90;
  if (!qword_1008E5D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E5D90);
  }

  return result;
}

uint64_t sub_10029FF18()
{
  v0 = type metadata accessor for LocalizedStringResource();
  sub_100163368(v0, qword_100925498);
  sub_10001AC90(v0, qword_100925498);
  return LocalizedStringResource.init(stringLiteral:)();
}

uint64_t sub_10029FF7C@<X0>(uint64_t a1@<X8>)
{
  v14[1] = a1;
  v1 = sub_100140278(&qword_1008E6250);
  __chkstk_darwin(v1 - 8);
  v2 = sub_100140278(&qword_1008E6258);
  __chkstk_darwin(v2);
  v3 = sub_100140278(&qword_1008E6240);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = v14 - v8;
  sub_1002C1CC4();
  ParameterSummaryString.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v10._object = 0x8000000100753180;
  v10._countAndFlagsBits = 0xD000000000000018;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v10);
  swift_getKeyPath();
  sub_100140278(&qword_1008E6260);
  ParameterSummaryString.StringInterpolation.appendInterpolation<A, B>(_:)();

  v11._countAndFlagsBits = 0;
  v11._object = 0xE000000000000000;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v11);
  ParameterSummaryString.init(stringInterpolation:)();
  IntentParameterSummary.init(_:table:)();
  sub_10014A6B0(&qword_1008E6248, &qword_1008E6240);
  static ParameterSummaryBuilder.buildExpression<A>(_:)();
  v12 = *(v4 + 8);
  v12(v6, v3);
  static ParameterSummaryBuilder.buildBlock<A>(_:)();
  return (v12)(v9, v3);
}

uint64_t sub_1002A025C@<X0>(uint64_t a1@<X8>)
{
  v11[1] = a1;
  v1 = sub_100140278(&qword_1008E6250);
  __chkstk_darwin(v1 - 8);
  v2 = sub_100140278(&qword_1008E6240);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = v11 - v7;
  sub_1002C1CC4();
  ParameterSummaryString.init(stringLiteral:)();
  IntentParameterSummary.init(_:table:_:)();
  sub_10014A6B0(&qword_1008E6248, &qword_1008E6240);
  static ParameterSummaryBuilder.buildExpression<A>(_:)();
  v9 = *(v3 + 8);
  v9(v5, v2);
  static ParameterSummaryBuilder.buildBlock<A>(_:)();
  return (v9)(v8, v2);
}

uint64_t sub_1002A04B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[10] = a4;
  v5[11] = a5;
  v5[8] = a2;
  v5[9] = a3;
  v5[7] = a1;
  v5[12] = type metadata accessor for ActivitySummaryView();
  v5[13] = swift_task_alloc();
  sub_100140278(&unk_1008F73A0);
  v5[14] = swift_task_alloc();
  v5[15] = swift_task_alloc();
  v6 = type metadata accessor for Date();
  v5[16] = v6;
  v5[17] = *(v6 - 8);
  v5[18] = swift_task_alloc();

  return _swift_task_switch(sub_1002A0620, 0, 0);
}

uint64_t sub_1002A0620()
{
  v1 = v0[16];
  v2 = v0[17];
  v3 = v0[15];
  IntentParameter.wrappedValue.getter();
  v4 = *(v2 + 48);
  if (v4(v3, 1, v1) == 1)
  {
    v5 = v0[15];
    v6 = v0[16];
    Date.init()();
    if (v4(v5, 1, v6) != 1)
    {
      sub_10000EA04(v0[15], &unk_1008F73A0);
    }
  }

  else
  {
    (*(v0[17] + 32))(v0[18], v0[15], v0[16]);
  }

  v7 = swift_task_alloc();
  v0[19] = v7;
  *v7 = v0;
  v7[1] = sub_1002A0794;
  v8 = v0[18];
  v9 = v0[9];

  return sub_1002BD0D0(v8, v9);
}

uint64_t sub_1002A0794(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 144);
  v5 = *(*v2 + 136);
  v6 = *(*v2 + 128);
  *(v3 + 160) = a1;
  *(v3 + 168) = v1;

  (*(v5 + 8))(v4, v6);
  if (v1)
  {
    v7 = sub_1002A0C28;
  }

  else
  {
    v7 = sub_1002A093C;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_1002A093C()
{
  AppDependency.wrappedValue.getter();
  *(v0 + 24) = 0;
  v1 = *(v0 + 16);
  v2 = [v1 wheelchairUseWithError:v0 + 24];

  v3 = *(v0 + 24);
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v5 = v3;
    _convertNSErrorToError(_:)();

    swift_willThrow();

    v4 = 0;
  }

  v6 = *(v0 + 160);
  AppDependency.wrappedValue.getter();
  v7 = *(v0 + 32);
  v8 = [v7 isPausedForActivitySummary:v6];

  AppDependency.wrappedValue.getter();
  v9 = *(v0 + 40);
  v10 = [v9 resumeDate];

  if (v10)
  {
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v11 = 0;
  }

  else
  {
    v11 = 1;
  }

  (*(*(v0 + 136) + 56))(*(v0 + 112), v11, 1, *(v0 + 128));
  v12 = [objc_opt_self() sharedBehavior];
  if (!v12)
  {
    __break(1u);
  }

  v13 = v12;
  v23 = v2;
  v14 = [v12 isStandalonePhoneFitnessMode];

  if (v4)
  {
    v15 = [v4 wheelchairUse] == 2;
  }

  else
  {
    v15 = 0;
  }

  v16 = *(v0 + 160);
  v17 = *(v0 + 112);
  v19 = *(v0 + 96);
  v18 = *(v0 + 104);
  AppDependency.wrappedValue.getter();
  v20 = *(v0 + 48);
  *v18 = v16;
  *(v18 + 8) = v8;
  sub_1002239C4(v17, v18 + v19[6]);
  *(v18 + v19[7]) = v14;
  *(v18 + v19[8]) = v15;
  *(v18 + v19[9]) = v20;
  sub_1002C1AE8(&qword_1008E6238, type metadata accessor for ActivitySummaryView);
  static IntentResult.result<A>(view:)();

  sub_1002C1D18(v18);

  v21 = *(v0 + 8);

  return v21();
}

uint64_t sub_1002A0C28()
{
  sub_1002C1830();
  swift_allocError();
  *v1 = 6;
  swift_willThrow();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1002A0D64()
{
  HasValueComparisonOperator = type metadata accessor for HasValueComparisonOperator();
  v1 = *(HasValueComparisonOperator - 8);
  __chkstk_darwin(HasValueComparisonOperator);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  (*(v1 + 104))(v3, enum case for HasValueComparisonOperator.hasAnyValue(_:), HasValueComparisonOperator);
  sub_100140278(&qword_1008E6240);
  sub_10014A6B0(&qword_1008E6248, &qword_1008E6240);
  sub_10014A6B0(&qword_1008E6210, &qword_1008E5FD0);
  return ParameterSummaryWhenCondition.init<A>(_:_:_:otherwise:)();
}

uint64_t sub_1002A0F24(uint64_t a1)
{
  v4 = *v1;
  v5 = v1[1];
  v7 = v1[2];
  v6 = v1[3];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10002BBC0;

  return sub_1002A04B8(a1, v4, v5, v7, v6);
}

uint64_t sub_1002A0FE4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1002BD95C();
  *a1 = result;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  return result;
}

uint64_t sub_1002A1010(uint64_t a1)
{
  v2 = sub_1002C1CC4();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

unint64_t sub_1002A1050()
{
  result = qword_1008E5D98;
  if (!qword_1008E5D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E5D98);
  }

  return result;
}

unint64_t sub_1002A10A8()
{
  result = qword_1008E5DA0;
  if (!qword_1008E5DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E5DA0);
  }

  return result;
}

uint64_t sub_1002A1134()
{
  v0 = type metadata accessor for LocalizedStringResource();
  sub_100163368(v0, qword_1009254B0);
  sub_10001AC90(v0, qword_1009254B0);
  return LocalizedStringResource.init(stringLiteral:)();
}

uint64_t sub_1002A1198@<X0>(uint64_t a1@<X8>)
{
  v14[1] = a1;
  v1 = sub_100140278(&qword_1008E6218);
  __chkstk_darwin(v1 - 8);
  v2 = sub_100140278(&qword_1008E6220);
  __chkstk_darwin(v2);
  v3 = sub_100140278(&qword_1008E6200);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = v14 - v8;
  sub_1002C1C70();
  ParameterSummaryString.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v10._object = 0x80000001007530F0;
  v10._countAndFlagsBits = 0xD000000000000018;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v10);
  swift_getKeyPath();
  sub_100140278(&qword_1008E6228);
  ParameterSummaryString.StringInterpolation.appendInterpolation<A, B>(_:)();

  v11._countAndFlagsBits = 0;
  v11._object = 0xE000000000000000;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v11);
  ParameterSummaryString.init(stringInterpolation:)();
  IntentParameterSummary.init(_:table:)();
  sub_10014A6B0(&qword_1008E6208, &qword_1008E6200);
  static ParameterSummaryBuilder.buildExpression<A>(_:)();
  v12 = *(v4 + 8);
  v12(v6, v3);
  static ParameterSummaryBuilder.buildBlock<A>(_:)();
  return (v12)(v9, v3);
}

uint64_t sub_1002A1478@<X0>(uint64_t a1@<X8>)
{
  v11[1] = a1;
  v1 = sub_100140278(&qword_1008E6218);
  __chkstk_darwin(v1 - 8);
  v2 = sub_100140278(&qword_1008E6200);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = v11 - v7;
  sub_1002C1C70();
  ParameterSummaryString.init(stringLiteral:)();
  IntentParameterSummary.init(_:table:_:)();
  sub_10014A6B0(&qword_1008E6208, &qword_1008E6200);
  static ParameterSummaryBuilder.buildExpression<A>(_:)();
  v9 = *(v3 + 8);
  v9(v5, v2);
  static ParameterSummaryBuilder.buildBlock<A>(_:)();
  return (v9)(v8, v2);
}

uint64_t sub_1002A16D4(uint64_t a1, uint64_t a2)
{
  v2[4] = a1;
  v2[5] = a2;
  sub_100140278(&unk_1008EB5B0);
  v2[6] = swift_task_alloc();
  v3 = type metadata accessor for URL();
  v2[7] = v3;
  v2[8] = *(v3 - 8);
  v2[9] = swift_task_alloc();
  sub_100140278(&unk_1008F73A0);
  v2[10] = swift_task_alloc();
  v4 = type metadata accessor for Date();
  v2[11] = v4;
  v2[12] = *(v4 - 8);
  v2[13] = swift_task_alloc();

  return _swift_task_switch(sub_1002A1860, 0, 0);
}

uint64_t sub_1002A1860()
{
  if (qword_1008DAE28 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 88);
  v2 = *(v0 + 96);
  v3 = *(v0 + 80);
  v4 = qword_100925EC8;
  IntentParameter.wrappedValue.getter();
  v5 = *(v2 + 48);
  if (v5(v3, 1, v1) == 1)
  {
    v6 = *(v0 + 80);
    v7 = *(v0 + 88);
    Date.init()();
    if (v5(v6, 1, v7) != 1)
    {
      sub_10000EA04(*(v0 + 80), &unk_1008F73A0);
    }
  }

  else
  {
    (*(*(v0 + 96) + 32))(*(v0 + 104), *(v0 + 80), *(v0 + 88));
  }

  v9 = *(v0 + 96);
  v8 = *(v0 + 104);
  v10 = *(v0 + 88);
  v11 = *(v0 + 56);
  v12 = *(v0 + 64);
  v13 = *(v0 + 48);
  isa = Date._bridgeToObjectiveC()().super.isa;
  (*(v9 + 8))(v8, v10);
  v15 = [v4 stringFromDate:isa];

  v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v18 = v17;

  _StringGuts.grow(_:)(16);

  v19._countAndFlagsBits = v16;
  v19._object = v18;
  String.append(_:)(v19);

  URL.init(string:)();

  if ((*(v12 + 48))(v13, 1, v11) == 1)
  {
    sub_10000EA04(*(v0 + 48), &unk_1008EB5B0);
  }

  else
  {
    (*(*(v0 + 64) + 32))(*(v0 + 72), *(v0 + 48), *(v0 + 56));
    if (qword_1008DACC0 != -1)
    {
      swift_once();
    }

    v21 = *(v0 + 64);
    v20 = *(v0 + 72);
    v22 = *(v0 + 56);
    v23 = type metadata accessor for NavigatorContext();
    v24 = objc_allocWithZone(v23);
    v24[OBJC_IVAR___CHNavigatorContext_hasActiveWorkout] = 0;
    *(v0 + 16) = v24;
    *(v0 + 24) = v23;
    v25 = objc_msgSendSuper2((v0 + 16), "init", 0xD000000000000016, 0x80000001007530B0);
    sub_1004DA120(v20, v25);

    (*(v21 + 8))(v20, v22);
  }

  static IntentResult.result<>()();

  v26 = *(v0 + 8);

  return v26();
}

uint64_t sub_1002A1BE8()
{
  HasValueComparisonOperator = type metadata accessor for HasValueComparisonOperator();
  v1 = *(HasValueComparisonOperator - 8);
  __chkstk_darwin(HasValueComparisonOperator);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  (*(v1 + 104))(v3, enum case for HasValueComparisonOperator.hasAnyValue(_:), HasValueComparisonOperator);
  sub_100140278(&qword_1008E6200);
  sub_10014A6B0(&qword_1008E6208, &qword_1008E6200);
  sub_10014A6B0(&qword_1008E6210, &qword_1008E5FD0);
  return ParameterSummaryWhenCondition.init<A>(_:_:_:otherwise:)();
}

uint64_t sub_1002A1DA8(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10002BBC0;

  return sub_1002A16D4(a1, v4);
}

uint64_t sub_1002A1E48@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1002BDE28();
  *a1 = result;
  return result;
}

uint64_t sub_1002A1E70(uint64_t a1)
{
  v2 = sub_1002C1C70();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

uint64_t sub_1002A1EF8@<X0>(uint64_t a1@<X8>)
{
  v34 = a1;
  v1 = sub_100140278(&qword_1008E6190);
  v2 = *(v1 - 8);
  v32 = v1;
  v33 = v2;
  __chkstk_darwin(v1);
  v30 = v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v31 = v25 - v5;
  v6 = sub_100140278(&qword_1008E6198);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v28 = v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = v25 - v10;
  __chkstk_darwin(v12);
  v29 = v25 - v13;
  v38 = 1;
  v35 = sub_100140278(&qword_1008E61A0);
  v25[3] = sub_1002C1A94();
  v14 = sub_1002A3208();
  v25[2] = sub_10014A6B0(&qword_1008E61A8, &qword_1008E61A0);
  ParameterSummaryCaseCondition.init(_:_:)();
  v25[1] = sub_10014A6B0(&qword_1008E61B0, &qword_1008E6198);
  static ParameterSummaryCaseBuilder.buildExpression<A>(_:)();
  v36 = *(v7 + 8);
  v26 = v11;
  v36(v11, v6);
  v27 = v7 + 8;
  v37 = 4;
  v15 = v28;
  v25[0] = v14;
  ParameterSummaryCaseCondition.init(_:_:)();
  static ParameterSummaryCaseBuilder.buildExpression<A>(_:)();
  v36(v15, v6);
  v16 = v30;
  ParameterSummaryDefaultCaseCondition.init(_:)();
  sub_10014A6B0(&qword_1008E61B8, &qword_1008E6190);
  v17 = v31;
  v18 = v16;
  v19 = v32;
  static ParameterSummaryCaseBuilder.buildExpression<A>(_:)();
  v20 = *(v33 + 8);
  v20(v18, v19);
  v21 = v29;
  v22 = v26;
  static ParameterSummaryCaseBuilder.buildBlock<A, B, C>(_:_:_:)();
  v20(v17, v19);
  v23 = v36;
  v36(v22, v6);
  return v23(v21, v6);
}

uint64_t sub_1002A2424@<X0>(uint64_t *a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v18 = a1;
  v19 = a2;
  v20 = a3;
  v3 = sub_100140278(&qword_1008E61C0);
  __chkstk_darwin(v3 - 8);
  v4 = sub_100140278(&qword_1008E61C8);
  __chkstk_darwin(v4);
  v5 = sub_100140278(&qword_1008E61A0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v17 - v10;
  sub_1002C1A94();
  ParameterSummaryString.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v12._object = 0x8000000100753030;
  v12._countAndFlagsBits = 0xD000000000000011;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v12);
  swift_getKeyPath();
  sub_100140278(&qword_1008E61D0);
  ParameterSummaryString.StringInterpolation.appendInterpolation<A, B>(_:)();

  v13._countAndFlagsBits = 32;
  v13._object = 0xE100000000000000;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v13);
  swift_getKeyPath();
  sub_100140278(v18);
  ParameterSummaryString.StringInterpolation.appendInterpolation<A, B>(_:)();

  v14._countAndFlagsBits = 0;
  v14._object = 0xE000000000000000;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v14);
  ParameterSummaryString.init(stringInterpolation:)();
  IntentParameterSummary.init(_:table:)();
  sub_10014A6B0(&qword_1008E61A8, &qword_1008E61A0);
  static ParameterSummaryBuilder.buildExpression<A>(_:)();
  v15 = *(v6 + 8);
  v15(v8, v5);
  static ParameterSummaryBuilder.buildBlock<A>(_:)();
  return (v15)(v11, v5);
}

uint64_t sub_1002A2774@<X0>(uint64_t a1@<X8>)
{
  v14[1] = a1;
  v1 = sub_100140278(&qword_1008E61C0);
  __chkstk_darwin(v1 - 8);
  v2 = sub_100140278(&qword_1008E61C8);
  __chkstk_darwin(v2);
  v3 = sub_100140278(&qword_1008E61A0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = v14 - v8;
  sub_1002C1A94();
  ParameterSummaryString.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v10._object = 0x8000000100753030;
  v10._countAndFlagsBits = 0xD000000000000011;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v10);
  swift_getKeyPath();
  sub_100140278(&qword_1008E61D0);
  ParameterSummaryString.StringInterpolation.appendInterpolation<A, B>(_:)();

  v11._countAndFlagsBits = 0;
  v11._object = 0xE000000000000000;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v11);
  ParameterSummaryString.init(stringInterpolation:)();
  IntentParameterSummary.init(_:table:)();
  sub_10014A6B0(&qword_1008E61A8, &qword_1008E61A0);
  static ParameterSummaryBuilder.buildExpression<A>(_:)();
  v12 = *(v4 + 8);
  v12(v6, v3);
  static ParameterSummaryBuilder.buildBlock<A>(_:)();
  return (v12)(v9, v3);
}

uint64_t sub_1002A2A54()
{
  v0 = sub_100140278(&qword_1008DD138);
  __chkstk_darwin(v0 - 8);
  v2 = &v7 - v1;
  v3 = type metadata accessor for LocalizedStringResource();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = type metadata accessor for TypeDisplayRepresentation();
  sub_100163368(v5, qword_1009254E0);
  sub_10001AC90(v5, qword_1009254E0);
  LocalizedStringResource.init(stringLiteral:)();
  (*(v4 + 56))(v2, 1, 1, v3);
  return TypeDisplayRepresentation.init(name:numericFormat:)();
}

unint64_t sub_1002A2C5C()
{
  result = qword_1008E5DA8;
  if (!qword_1008E5DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E5DA8);
  }

  return result;
}

Swift::Int sub_1002A2CB0()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1002A2DA4()
{
  String.hash(into:)();
}

Swift::Int sub_1002A2E84()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_1002A2F74@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1002BE71C(*a1);
  *a2 = result;
  return result;
}

void sub_1002A2FA4(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE800000000000000;
  v4 = 0x796144664F646E65;
  v5 = 0xE90000000000006BLL;
  v6 = 0x656557664F646E65;
  v7 = 0x6E6F4D664F646E65;
  v8 = 0xEC00000065746144;
  if (v2 == 3)
  {
    v8 = 0xEA00000000006874;
  }

  else
  {
    v7 = 0x6369666963657073;
  }

  if (v2 != 2)
  {
    v6 = v7;
    v5 = v8;
  }

  if (*v1)
  {
    v4 = 0x61446D6F74737563;
    v3 = 0xEA00000000007379;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

unint64_t sub_1002A3058()
{
  result = qword_1008E5DB0;
  if (!qword_1008E5DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E5DB0);
  }

  return result;
}

unint64_t sub_1002A30B0()
{
  result = qword_1008E5DB8;
  if (!qword_1008E5DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E5DB8);
  }

  return result;
}

unint64_t sub_1002A3108()
{
  result = qword_1008E5DC0;
  if (!qword_1008E5DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E5DC0);
  }

  return result;
}

unint64_t sub_1002A3160()
{
  result = qword_1008E5DC8;
  if (!qword_1008E5DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E5DC8);
  }

  return result;
}

unint64_t sub_1002A31B4()
{
  result = qword_1008E5DD0;
  if (!qword_1008E5DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E5DD0);
  }

  return result;
}

unint64_t sub_1002A3208()
{
  result = qword_1008E5DD8;
  if (!qword_1008E5DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E5DD8);
  }

  return result;
}

unint64_t sub_1002A3260()
{
  result = qword_1008E5DE0;
  if (!qword_1008E5DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E5DE0);
  }

  return result;
}

unint64_t sub_1002A3318()
{
  result = qword_1008E5DE8;
  if (!qword_1008E5DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E5DE8);
  }

  return result;
}

uint64_t sub_1002A336C(uint64_t a1)
{
  v2 = sub_1002A3318();

  return static AppEnum.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_1002A33BC()
{
  result = qword_1008E5DF0;
  if (!qword_1008E5DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E5DF0);
  }

  return result;
}

unint64_t sub_1002A3414()
{
  result = qword_1008E5DF8;
  if (!qword_1008E5DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E5DF8);
  }

  return result;
}

unint64_t sub_1002A346C()
{
  result = qword_1008E5E00;
  if (!qword_1008E5E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E5E00);
  }

  return result;
}

uint64_t sub_1002A34C4(uint64_t a1)
{
  v2 = sub_1002A3260();

  return CaseDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_1002A3568()
{
  result = qword_1008E5E18;
  if (!qword_1008E5E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E5E18);
  }

  return result;
}

unint64_t sub_1002A35C0()
{
  result = qword_1008E5E20;
  if (!qword_1008E5E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E5E20);
  }

  return result;
}

uint64_t sub_1002A3664(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  v3 = type metadata accessor for IntentDialog();
  v2[6] = v3;
  v2[7] = *(v3 - 8);
  v2[8] = swift_task_alloc();
  v4 = type metadata accessor for Date.FormatStyle.TimeStyle();
  v2[9] = v4;
  v2[10] = *(v4 - 8);
  v2[11] = swift_task_alloc();
  v5 = type metadata accessor for Date.FormatStyle.DateStyle();
  v2[12] = v5;
  v2[13] = *(v5 - 8);
  v2[14] = swift_task_alloc();
  type metadata accessor for String.LocalizationValue.StringInterpolation();
  v2[15] = swift_task_alloc();
  v6 = type metadata accessor for TimeZone();
  v2[16] = v6;
  v2[17] = *(v6 - 8);
  v2[18] = swift_task_alloc();
  v7 = type metadata accessor for PauseRingsPeriod();
  v2[19] = v7;
  v2[20] = *(v7 - 8);
  v2[21] = swift_task_alloc();
  sub_100140278(&qword_1008DD130);
  v2[22] = swift_task_alloc();
  v8 = type metadata accessor for Calendar();
  v2[23] = v8;
  v2[24] = *(v8 - 8);
  v2[25] = swift_task_alloc();
  v9 = type metadata accessor for Calendar.Component();
  v2[26] = v9;
  v2[27] = *(v9 - 8);
  v2[28] = swift_task_alloc();
  v10 = type metadata accessor for Date();
  v2[29] = v10;
  v2[30] = *(v10 - 8);
  v2[31] = swift_task_alloc();
  v2[32] = swift_task_alloc();
  v2[33] = swift_task_alloc();
  v2[34] = swift_task_alloc();
  v2[35] = swift_task_alloc();
  sub_100140278(&unk_1008F73A0);
  v2[36] = swift_task_alloc();
  v2[37] = swift_task_alloc();
  v2[38] = swift_task_alloc();
  v2[39] = type metadata accessor for MainActor();
  v2[40] = static MainActor.shared.getter();
  v12 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[41] = v12;
  v2[42] = v11;

  return _swift_task_switch(sub_1002A3AC4, v12, v11);
}

uint64_t sub_1002A3AC4()
{
  IntentParameter.wrappedValue.getter();
  v1 = *(v0 + 25);
  if (v1 <= 1)
  {
    if (!*(v0 + 25))
    {
      v3 = *(v0 + 160);
      v2 = *(v0 + 168);
      v4 = *(v0 + 152);
      v5 = &enum case for PauseRingsPeriod.endOfDay(_:);
      goto LABEL_8;
    }

    IntentParameter.wrappedValue.getter();
    if ((*(v0 + 24) & 1) != 0 || (*(v0 + 16) - 91) < 0xFFFFFFFFFFFFFFA6)
    {
      v22 = [objc_opt_self() sharedBehavior];
      if (v22)
      {
        v43 = v22;
        v44 = *(v0 + 56);

        [v43 isStandalonePhoneFitnessMode];

        IntentParameter.projectedValue.getter();
        v45 = (v44 + 56);
        v46 = *(v0 + 176);
        v47 = *(v0 + 48);
        IntentDialog.init(stringLiteral:)();
        (*v45)(v46, 0, 1, v47);
        type metadata accessor for AppIntentError();
        sub_1002C1AE8(&qword_1008E6018, &type metadata accessor for AppIntentError);
        swift_allocError();
        IntentParameter.needsValueError(_:)();

        sub_10000EA04(v46, &qword_1008DD130);
        swift_willThrow();
        goto LABEL_27;
      }

      __break(1u);
      return withCheckedContinuation<A>(isolation:function:_:)(v22, v23, v18, v21, v24, v20, v25, v19);
    }

    v35 = *(v0 + 304);
    v36 = *(v0 + 280);
    v37 = *(v0 + 240);
    v38 = *(v0 + 216);
    v39 = *(v0 + 224);
    v41 = *(v0 + 200);
    v40 = *(v0 + 208);
    v42 = *(v0 + 192);
    v88 = *(v0 + 184);
    v90 = *(v0 + 232);
    Date.init()();
    (*(v38 + 104))(v39, enum case for Calendar.Component.day(_:), v40);
    static Calendar.current.getter();
    Date.byAdding(component:value:calendar:)();
    (*(v42 + 8))(v41, v88);
    (*(v38 + 8))(v39, v40);
    (*(v37 + 8))(v36, v90);
    (*(v37 + 56))(v35, 0, 1, v90);
  }

  else
  {
    if (v1 == 2)
    {
      v3 = *(v0 + 160);
      v2 = *(v0 + 168);
      v4 = *(v0 + 152);
      v5 = &enum case for PauseRingsPeriod.endOfWeek(_:);
      goto LABEL_8;
    }

    if (v1 == 3)
    {
      v3 = *(v0 + 160);
      v2 = *(v0 + 168);
      v4 = *(v0 + 152);
      v5 = &enum case for PauseRingsPeriod.endOfMonth(_:);
LABEL_8:
      (*(v3 + 104))(v2, *v5, v4);
      PauseRingsPeriod.date()();
      (*(v3 + 8))(v2, v4);
      goto LABEL_9;
    }

    v26 = *(v0 + 280);
    v87 = *(v0 + 296);
    v89 = *(v0 + 240);
    v83 = *(v0 + 232);
    v28 = *(v0 + 216);
    v27 = *(v0 + 224);
    v29 = *(v0 + 200);
    v30 = *(v0 + 208);
    v32 = *(v0 + 184);
    v31 = *(v0 + 192);
    v77 = v32;
    Date.init()();
    v81 = enum case for Calendar.Component.day(_:);
    v79 = *(v28 + 104);
    v79(v27);
    static Calendar.current.getter();
    Date.byAdding(component:value:calendar:)();
    v76 = *(v31 + 8);
    v76(v29, v32);
    v75 = *(v28 + 8);
    v75(v27, v30);
    v33 = *(v89 + 8);
    v33(v26, v83);
    Date.init()();
    (v79)(v27, v81, v30);
    static Calendar.current.getter();
    Date.byAdding(component:value:calendar:)();
    v76(v29, v77);
    v75(v27, v30);
    v33(v26, v83);
    IntentParameter.wrappedValue.getter();
    v74 = v33;
    if ((*(v89 + 48))(v87, 1, v83) == 1)
    {
      v34 = *(v0 + 296);

      sub_10000EA04(v34, &unk_1008F73A0);
LABEL_23:
      v86 = *(v0 + 272);
      v84 = *(v0 + 264);
      v85 = *(v0 + 232);
      v51 = *(v0 + 176);
      v52 = *(v0 + 112);
      v53 = *(v0 + 104);
      v55 = *(v0 + 80);
      v54 = *(v0 + 88);
      v78 = *(v0 + 72);
      v80 = *(v0 + 96);
      v56 = *(v0 + 56);
      v82 = *(v0 + 48);
      IntentParameter.projectedValue.getter();
      String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v57._object = 0x8000000100752F50;
      v57._countAndFlagsBits = 0xD000000000000022;
      String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v57);
      static Date.FormatStyle.DateStyle.long.getter();
      static Date.FormatStyle.TimeStyle.omitted.getter();
      v58 = Date.formatted(date:time:)();
      v60 = v59;
      (*(v55 + 8))(v54, v78);
      (*(v53 + 8))(v52, v80);
      v61._countAndFlagsBits = v58;
      v61._object = v60;
      String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v61);

      v62._countAndFlagsBits = 46;
      v62._object = 0xE100000000000000;
      String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v62);
      IntentDialog.init(stringInterpolation:)();
      (*(v56 + 56))(v51, 0, 1, v82);
      type metadata accessor for AppIntentError();
      sub_1002C1AE8(&qword_1008E6018, &type metadata accessor for AppIntentError);
      swift_allocError();
      IntentParameter.needsValueError(_:)();

      sub_10000EA04(v51, &qword_1008DD130);
      swift_willThrow();
      v74(v84, v85);
      v74(v86, v85);
      goto LABEL_27;
    }

    v48 = *(*(v0 + 240) + 32);
    v48(*(v0 + 256), *(v0 + 296), *(v0 + 232));
    sub_1002C1AE8(&qword_1008E4080, &type metadata accessor for Date);
    if ((dispatch thunk of static Comparable.< infix(_:_:)() & 1) != 0 || (dispatch thunk of static Comparable.< infix(_:_:)() & 1) != 0 && (v64 = *(v0 + 136), v63 = *(v0 + 144), v65 = *(v0 + 128), static TimeZone.autoupdatingCurrent.getter(), v66 = Date.isSameDay(as:timeZone:)(), (*(v64 + 8))(v63, v65), v33 = v74, (v66 & 1) == 0))
    {
      v49 = *(v0 + 256);
      v50 = *(v0 + 232);

      v33(v49, v50);
      goto LABEL_23;
    }

    v67 = *(v0 + 304);
    v68 = *(v0 + 272);
    v69 = *(v0 + 256);
    v70 = *(v0 + 232);
    v71 = *(v0 + 240);
    v33(*(v0 + 264), v70);
    v33(v68, v70);
    v48(v67, v69, v70);
    (*(v71 + 56))(v67, 0, 1, v70);
  }

LABEL_9:
  v6 = *(v0 + 288);
  v7 = *(v0 + 232);
  v8 = *(v0 + 240);
  sub_10001B104(*(v0 + 304), v6, &unk_1008F73A0);
  v9 = (*(v8 + 48))(v6, 1, v7);
  v10 = *(v0 + 288);
  if (v9 != 1)
  {
    v13 = *(v0 + 248);
    v14 = *(v0 + 40);
    (*(*(v0 + 240) + 32))(v13, *(v0 + 288), *(v0 + 232));
    v15 = static MainActor.shared.getter();
    *(v0 + 344) = v15;
    v16 = swift_task_alloc();
    *(v0 + 352) = v16;
    *(v16 + 16) = v14;
    *(v16 + 24) = v13;
    v17 = swift_task_alloc();
    *(v0 + 360) = v17;
    *v17 = v0;
    v17[1] = sub_1002A45F4;
    v18 = &protocol witness table for MainActor;
    v19 = &type metadata for Bool;
    v20 = sub_1002C1B30;
    v21 = 0x286D726F66726570;
    v22 = (v0 + 26);
    v23 = v15;
    v24 = 0xE900000000000029;
    v25 = v16;

    return withCheckedContinuation<A>(isolation:function:_:)(v22, v23, v18, v21, v24, v20, v25, v19);
  }

  v11 = *(v0 + 304);

  sub_10000EA04(v10, &unk_1008F73A0);
  sub_1002C1830();
  swift_allocError();
  *v12 = 2;
  swift_willThrow();
  sub_10000EA04(v11, &unk_1008F73A0);
LABEL_27:

  v72 = *(v0 + 8);

  return v72();
}

uint64_t sub_1002A45F4()
{
  v1 = *v0;

  v2 = *(v1 + 336);
  v3 = *(v1 + 328);

  return _swift_task_switch(sub_1002A4754, v3, v2);
}

id sub_1002A4754()
{
  if (*(v0 + 26) == 1)
  {
    result = [objc_opt_self() sharedBehavior];
    if (!result)
    {
      __break(1u);
      return result;
    }

    v2 = result;
    v3 = *(v0 + 248);
    v32 = *(v0 + 240);
    v33 = *(v0 + 304);
    v34 = *(v0 + 232);
    v4 = *(v0 + 112);
    v5 = *(v0 + 104);
    v6 = *(v0 + 80);
    v7 = *(v0 + 88);
    v28 = *(v0 + 72);
    v29 = *(v0 + 96);
    v8 = *(v0 + 56);
    v31 = *(v0 + 48);
    v30 = *(v0 + 64);

    v9 = [v2 isStandalonePhoneFitnessMode];

    v10 = v9 == 0;
    if (v9)
    {
      v11 = "Activity rings paused until ";
    }

    else
    {
      v11 = "ween tomorrow and ";
    }

    if (v10)
    {
      v12 = 0xD00000000000001CLL;
    }

    else
    {
      v12 = 0xD000000000000017;
    }

    String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v13._object = (v11 | 0x8000000000000000);
    v13._countAndFlagsBits = v12;
    String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v13);
    static Date.FormatStyle.DateStyle.complete.getter();
    v14 = v7;
    static Date.FormatStyle.TimeStyle.omitted.getter();
    v15 = v4;
    v16 = v14;
    v17 = Date.formatted(date:time:)();
    v19 = v18;
    (*(v6 + 8))(v16, v28);
    (*(v5 + 8))(v15, v29);
    v20._countAndFlagsBits = v17;
    v20._object = v19;
    String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v20);

    v21._countAndFlagsBits = 46;
    v21._object = 0xE100000000000000;
    String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v21);
    IntentDialog.init(stringInterpolation:)();
    static IntentResult.result<>(dialog:)();
    (*(v8 + 8))(v30, v31);
    sub_10000EA04(v33, &unk_1008F73A0);
    (*(v32 + 8))(v3, v34);

    v22 = *(v0 + 8);
  }

  else
  {
    v23 = *(v0 + 304);
    v24 = *(v0 + 240);
    v25 = *(v0 + 248);
    v26 = *(v0 + 232);

    sub_1002C1830();
    swift_allocError();
    *v27 = 3;
    swift_willThrow();
    sub_10000EA04(v23, &unk_1008F73A0);
    (*(v24 + 8))(v25, v26);

    v22 = *(v0 + 8);
  }

  return v22();
}

void sub_1002A4BA8(uint64_t a1)
{
  v2 = sub_100140278(&qword_1008E6118);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = aBlock - v4;
  AppDependency.wrappedValue.getter();
  v6 = aBlock[0];
  isa = Date._bridgeToObjectiveC()().super.isa;
  (*(v3 + 16))(v5, a1, v2);
  v8 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v9 = swift_allocObject();
  (*(v3 + 32))(v9 + v8, v5, v2);
  aBlock[4] = sub_1002C1DB8;
  aBlock[5] = v9;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1004DCFFC;
  aBlock[3] = &unk_100850928;
  v10 = _Block_copy(aBlock);

  [v6 pauseRingsUntilDate:isa completionHandler:v10];
  _Block_release(v10);
}

uint64_t sub_1002A4DC4(uint64_t a1, uint64_t a2)
{
  KeyPath = swift_getKeyPath();
  v4 = sub_100140278(&qword_1008E6180);
  v5 = sub_10014A6B0(&qword_1008E6188, &qword_1008E6180);

  return ParameterSummarySwitchCondition.init(_:_:)(KeyPath, sub_1002A1EF8, 0, v4, a2, v5);
}

uint64_t sub_1002A4E8C(uint64_t a1)
{
  v4 = *(v1 + 16);
  *(v2 + 16) = *v1;
  *(v2 + 32) = v4;
  *(v2 + 48) = *(v1 + 32);
  v5 = swift_task_alloc();
  *(v2 + 56) = v5;
  *v5 = v2;
  v5[1] = sub_1002A4F38;

  return sub_1002A3664(a1);
}

uint64_t sub_1002A4F38()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

double sub_1002A502C@<D0>(uint64_t a1@<X8>)
{
  sub_1002BE768(v4);
  result = *v4;
  v3 = v4[1];
  *a1 = v4[0];
  *(a1 + 16) = v3;
  *(a1 + 32) = v5;
  return result;
}

uint64_t sub_1002A5070(uint64_t a1)
{
  v2 = sub_1002C1A94();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

unint64_t sub_1002A50B0()
{
  result = qword_1008E5E28;
  if (!qword_1008E5E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E5E28);
  }

  return result;
}

unint64_t sub_1002A5108()
{
  result = qword_1008E5E30;
  if (!qword_1008E5E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E5E30);
  }

  return result;
}

unint64_t sub_1002A51BC()
{
  result = qword_1008E5E38;
  if (!qword_1008E5E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E5E38);
  }

  return result;
}

uint64_t sub_1002A5238(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  v3 = type metadata accessor for IntentDialog();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  v2[8] = type metadata accessor for MainActor();
  v2[9] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[10] = v5;
  v2[11] = v4;

  return _swift_task_switch(sub_1002A5330, v5, v4);
}

uint64_t sub_1002A5330()
{
  AppDependency.wrappedValue.getter();
  v1 = v0[2];
  v2 = [v1 isPaused];

  if (v2)
  {
    v3 = static MainActor.shared.getter();
    v0[12] = v3;
    v4 = swift_task_alloc();
    v0[13] = v4;
    *v4 = v0;
    v4[1] = sub_1002A5554;
    v5 = v0[4];
    v6 = &protocol witness table for MainActor;
    v7 = &type metadata for Bool;
    v8 = sub_1002C1A8C;
    v9 = 0x286D726F66726570;
    v10 = v0 + 14;
    v11 = v3;
    v12 = 0xE900000000000029;

    return withCheckedContinuation<A>(isolation:function:_:)(v10, v11, v6, v9, v12, v8, v5, v7);
  }

  v10 = [objc_opt_self() sharedBehavior];
  if (!v10)
  {
    __break(1u);
    return withCheckedContinuation<A>(isolation:function:_:)(v10, v11, v6, v9, v12, v8, v5, v7);
  }

  v13 = v10;
  v15 = v0[6];
  v14 = v0[7];
  v16 = v0[5];

  [v13 isStandalonePhoneFitnessMode];

  IntentDialog.init(stringLiteral:)();
  static IntentResult.result<>(dialog:)();
  (*(v15 + 8))(v14, v16);

  v17 = v0[1];

  return v17();
}

uint64_t sub_1002A5554()
{
  v1 = *v0;

  v2 = *(v1 + 88);
  v3 = *(v1 + 80);

  return _swift_task_switch(sub_1002A5698, v3, v2);
}

id sub_1002A5698()
{
  if (*(v0 + 112) == 1)
  {
    result = [objc_opt_self() sharedBehavior];
    if (!result)
    {
      __break(1u);
      return result;
    }

    v2 = result;
    v4 = *(v0 + 48);
    v3 = *(v0 + 56);
    v5 = *(v0 + 40);

    [v2 isStandalonePhoneFitnessMode];

    IntentDialog.init(stringLiteral:)();
    static IntentResult.result<>(dialog:)();
    (*(v4 + 8))(v3, v5);

    v6 = *(v0 + 8);
  }

  else
  {

    sub_1002C1830();
    swift_allocError();
    *v7 = 4;
    swift_willThrow();

    v6 = *(v0 + 8);
  }

  return v6();
}

void sub_1002A5830(uint64_t a1)
{
  v2 = sub_100140278(&qword_1008E6118);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = aBlock - v4;
  AppDependency.wrappedValue.getter();
  v6 = aBlock[0];
  (*(v3 + 16))(v5, a1, v2);
  v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v8 = swift_allocObject();
  (*(v3 + 32))(v8 + v7, v5, v2);
  aBlock[4] = sub_1002C1DB8;
  aBlock[5] = v8;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1004DCFFC;
  aBlock[3] = &unk_1008508D8;
  v9 = _Block_copy(aBlock);

  [v6 unpauseRingsWithCompletionHandler:v9];
  _Block_release(v9);
}

uint64_t sub_1002A5A28(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10002BACC;

  return sub_1002A5238(a1, v4);
}

uint64_t sub_1002A5AC8@<X0>(uint64_t *a1@<X8>)
{
  sub_100140278(&qword_1008E5FB8);
  type metadata accessor for AppDependencyManager();
  static AppDependencyManager.shared.getter();
  result = AppDependency.__allocating_init(key:manager:)();
  *a1 = result;
  return result;
}

uint64_t sub_1002A5B40(uint64_t a1)
{
  v2 = sub_1002A51BC();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

unint64_t sub_1002A5B80()
{
  result = qword_1008E5E40;
  if (!qword_1008E5E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E5E40);
  }

  return result;
}

unint64_t sub_1002A5BD4()
{
  result = qword_1008E5E48;
  if (!qword_1008E5E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E5E48);
  }

  return result;
}

unint64_t sub_1002A5C28()
{
  result = qword_1008E5E50;
  if (!qword_1008E5E50)
  {
    sub_100141EEC(&qword_1008E5E58);
    sub_1002A5BD4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E5E50);
  }

  return result;
}

uint64_t sub_1002A5CAC()
{
  v0 = type metadata accessor for LocalizedStringResource();
  sub_100163368(v0, qword_100925510);
  sub_10001AC90(v0, qword_100925510);
  return LocalizedStringResource.init(stringLiteral:)();
}

uint64_t sub_1002A5D10@<X0>(uint64_t a1@<X8>)
{
  v47 = a1;
  v54 = sub_100140278(&qword_1008E6130);
  v46 = *(v54 - 8);
  __chkstk_darwin(v54);
  v44 = &v40 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v45 = &v40 - v3;
  v4 = sub_100140278(&qword_1008E6138);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v43 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v53 = &v40 - v8;
  __chkstk_darwin(v9);
  v52 = &v40 - v10;
  __chkstk_darwin(v11);
  v50 = &v40 - v12;
  __chkstk_darwin(v13);
  v51 = &v40 - v14;
  __chkstk_darwin(v15);
  v17 = &v40 - v16;
  __chkstk_darwin(v18);
  v42 = &v40 - v19;
  v65 = 1;
  v20 = sub_100140278(&qword_1008E6140);
  v56 = sub_1002A82B4();
  v48 = sub_1002A5BD4();
  v57 = sub_10014A6B0(&qword_1008E6148, &qword_1008E6140);
  ParameterSummaryCaseCondition.init(_:_:)();
  v58 = sub_10014A6B0(&qword_1008E6150, &qword_1008E6138);
  static ParameterSummaryCaseBuilder.buildExpression<A>(_:)();
  v59 = *(v5 + 8);
  v41 = v17;
  v59(v17, v4);
  v64 = 2;
  v21 = v51;
  v55 = v20;
  ParameterSummaryCaseCondition.init(_:_:)();
  static ParameterSummaryCaseBuilder.buildExpression<A>(_:)();
  v22 = v59;
  v59(v21, v4);
  v63 = 3;
  v23 = v50;
  ParameterSummaryCaseCondition.init(_:_:)();
  static ParameterSummaryCaseBuilder.buildExpression<A>(_:)();
  v22(v23, v4);
  v62 = 4;
  v24 = v52;
  ParameterSummaryCaseCondition.init(_:_:)();
  static ParameterSummaryCaseBuilder.buildExpression<A>(_:)();
  v49 = v5 + 8;
  v59(v24, v4);
  v61 = 5;
  v25 = v53;
  ParameterSummaryCaseCondition.init(_:_:)();
  static ParameterSummaryCaseBuilder.buildExpression<A>(_:)();
  v26 = v59;
  v59(v25, v4);
  v60 = 6;
  v27 = v43;
  ParameterSummaryCaseCondition.init(_:_:)();
  static ParameterSummaryCaseBuilder.buildExpression<A>(_:)();
  v26(v27, v4);
  v28 = v44;
  ParameterSummaryDefaultCaseCondition.init(_:)();
  sub_10014A6B0(&qword_1008E6158, &qword_1008E6130);
  v29 = v45;
  v30 = v54;
  static ParameterSummaryCaseBuilder.buildExpression<A>(_:)();
  v31 = *(v46 + 8);
  v31(v28, v30);
  v32 = v41;
  v33 = v42;
  v34 = v50;
  v35 = v51;
  v36 = v52;
  v37 = v53;
  static ParameterSummaryCaseBuilder.buildBlock<A, B, C, D, E, F, G>(_:_:_:_:_:_:_:)();
  v31(v29, v54);
  v38 = v59;
  v59(v37, v4);
  v38(v36, v4);
  v38(v34, v4);
  v38(v35, v4);
  v38(v32, v4);
  return (v38)(v33, v4);
}

uint64_t sub_1002A6540@<X0>(uint64_t a1@<X8>)
{
  v14[1] = a1;
  v1 = sub_100140278(&qword_1008E6160);
  __chkstk_darwin(v1 - 8);
  v2 = sub_100140278(&qword_1008E6168);
  __chkstk_darwin(v2);
  v3 = sub_100140278(&qword_1008E6140);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = v14 - v8;
  sub_1002A82B4();
  ParameterSummaryString.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v10._countAndFlagsBits = 544499027;
  v10._object = 0xE400000000000000;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v10);
  swift_getKeyPath();
  sub_100140278(&qword_1008E6170);
  ParameterSummaryString.StringInterpolation.appendInterpolation<A, B>(_:)();

  v11._countAndFlagsBits = 0;
  v11._object = 0xE000000000000000;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v11);
  ParameterSummaryString.init(stringInterpolation:)();
  IntentParameterSummary.init(_:table:_:)();
  sub_10014A6B0(&qword_1008E6148, &qword_1008E6140);
  static ParameterSummaryBuilder.buildExpression<A>(_:)();
  v12 = *(v4 + 8);
  v12(v6, v3);
  static ParameterSummaryBuilder.buildBlock<A>(_:)();
  return (v12)(v9, v3);
}

uint64_t sub_1002A6854@<X0>(uint64_t a1@<X8>)
{
  v14[1] = a1;
  v1 = sub_100140278(&qword_1008E6160);
  __chkstk_darwin(v1 - 8);
  v2 = sub_100140278(&qword_1008E6168);
  __chkstk_darwin(v2);
  v3 = sub_100140278(&qword_1008E6140);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = v14 - v8;
  sub_1002A82B4();
  ParameterSummaryString.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v10._countAndFlagsBits = 544499027;
  v10._object = 0xE400000000000000;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v10);
  swift_getKeyPath();
  sub_100140278(&qword_1008E6170);
  ParameterSummaryString.StringInterpolation.appendInterpolation<A, B>(_:)();

  v11._countAndFlagsBits = 0;
  v11._object = 0xE000000000000000;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v11);
  ParameterSummaryString.init(stringInterpolation:)();
  IntentParameterSummary.init(_:table:_:)();
  sub_10014A6B0(&qword_1008E6148, &qword_1008E6140);
  static ParameterSummaryBuilder.buildExpression<A>(_:)();
  v12 = *(v4 + 8);
  v12(v6, v3);
  static ParameterSummaryBuilder.buildBlock<A>(_:)();
  return (v12)(v9, v3);
}

uint64_t sub_1002A6B68@<X0>(uint64_t a1@<X8>)
{
  v14[1] = a1;
  v1 = sub_100140278(&qword_1008E6160);
  __chkstk_darwin(v1 - 8);
  v2 = sub_100140278(&qword_1008E6168);
  __chkstk_darwin(v2);
  v3 = sub_100140278(&qword_1008E6140);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = v14 - v8;
  sub_1002A82B4();
  ParameterSummaryString.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v10._countAndFlagsBits = 544499027;
  v10._object = 0xE400000000000000;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v10);
  swift_getKeyPath();
  sub_100140278(&qword_1008E6170);
  ParameterSummaryString.StringInterpolation.appendInterpolation<A, B>(_:)();

  v11._countAndFlagsBits = 0;
  v11._object = 0xE000000000000000;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v11);
  ParameterSummaryString.init(stringInterpolation:)();
  IntentParameterSummary.init(_:table:_:)();
  sub_10014A6B0(&qword_1008E6148, &qword_1008E6140);
  static ParameterSummaryBuilder.buildExpression<A>(_:)();
  v12 = *(v4 + 8);
  v12(v6, v3);
  static ParameterSummaryBuilder.buildBlock<A>(_:)();
  return (v12)(v9, v3);
}

uint64_t sub_1002A6EA0@<X0>(uint64_t a1@<X8>)
{
  v14[1] = a1;
  v1 = sub_100140278(&qword_1008E6160);
  __chkstk_darwin(v1 - 8);
  v2 = sub_100140278(&qword_1008E6168);
  __chkstk_darwin(v2);
  v3 = sub_100140278(&qword_1008E6140);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = v14 - v8;
  sub_1002A82B4();
  ParameterSummaryString.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v10._countAndFlagsBits = 544499027;
  v10._object = 0xE400000000000000;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v10);
  swift_getKeyPath();
  sub_100140278(&qword_1008E6170);
  ParameterSummaryString.StringInterpolation.appendInterpolation<A, B>(_:)();

  v11._countAndFlagsBits = 0;
  v11._object = 0xE000000000000000;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v11);
  ParameterSummaryString.init(stringInterpolation:)();
  IntentParameterSummary.init(_:table:_:)();
  sub_10014A6B0(&qword_1008E6148, &qword_1008E6140);
  static ParameterSummaryBuilder.buildExpression<A>(_:)();
  v12 = *(v4 + 8);
  v12(v6, v3);
  static ParameterSummaryBuilder.buildBlock<A>(_:)();
  return (v12)(v9, v3);
}

uint64_t sub_1002A71D8@<X0>(uint64_t a1@<X8>)
{
  v14[1] = a1;
  v1 = sub_100140278(&qword_1008E6160);
  __chkstk_darwin(v1 - 8);
  v2 = sub_100140278(&qword_1008E6168);
  __chkstk_darwin(v2);
  v3 = sub_100140278(&qword_1008E6140);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = v14 - v8;
  sub_1002A82B4();
  ParameterSummaryString.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v10._countAndFlagsBits = 544499027;
  v10._object = 0xE400000000000000;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v10);
  swift_getKeyPath();
  sub_100140278(&qword_1008E6170);
  ParameterSummaryString.StringInterpolation.appendInterpolation<A, B>(_:)();

  v11._countAndFlagsBits = 0;
  v11._object = 0xE000000000000000;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v11);
  ParameterSummaryString.init(stringInterpolation:)();
  IntentParameterSummary.init(_:table:_:)();
  sub_10014A6B0(&qword_1008E6148, &qword_1008E6140);
  static ParameterSummaryBuilder.buildExpression<A>(_:)();
  v12 = *(v4 + 8);
  v12(v6, v3);
  static ParameterSummaryBuilder.buildBlock<A>(_:)();
  return (v12)(v9, v3);
}

uint64_t sub_1002A7510@<X0>(uint64_t a1@<X8>)
{
  v14[1] = a1;
  v1 = sub_100140278(&qword_1008E6160);
  __chkstk_darwin(v1 - 8);
  v2 = sub_100140278(&qword_1008E6168);
  __chkstk_darwin(v2);
  v3 = sub_100140278(&qword_1008E6140);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = v14 - v8;
  sub_1002A82B4();
  ParameterSummaryString.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v10._countAndFlagsBits = 544499027;
  v10._object = 0xE400000000000000;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v10);
  swift_getKeyPath();
  sub_100140278(&qword_1008E6170);
  ParameterSummaryString.StringInterpolation.appendInterpolation<A, B>(_:)();

  v11._countAndFlagsBits = 0;
  v11._object = 0xE000000000000000;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v11);
  ParameterSummaryString.init(stringInterpolation:)();
  IntentParameterSummary.init(_:table:_:)();
  sub_10014A6B0(&qword_1008E6148, &qword_1008E6140);
  static ParameterSummaryBuilder.buildExpression<A>(_:)();
  v12 = *(v4 + 8);
  v12(v6, v3);
  static ParameterSummaryBuilder.buildBlock<A>(_:)();
  return (v12)(v9, v3);
}

uint64_t sub_1002A7824(uint64_t a1, void (*a2)(void))
{
  swift_getKeyPath();
  a2();
  v3 = static IntentParameterSummary.ParameterKeyPathsBuilder.buildExpression<A>(_:)();

  sub_100140278(&unk_1008E4E20);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1006D4E70;
  *(v4 + 32) = v3;

  v5 = static IntentParameterSummary.ParameterKeyPathsBuilder.buildBlock(_:)();

  return v5;
}

uint64_t sub_1002A7904@<X0>(uint64_t a1@<X8>)
{
  v14[1] = a1;
  v1 = sub_100140278(&qword_1008E6160);
  __chkstk_darwin(v1 - 8);
  v2 = sub_100140278(&qword_1008E6168);
  __chkstk_darwin(v2);
  v3 = sub_100140278(&qword_1008E6140);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = v14 - v8;
  sub_1002A82B4();
  ParameterSummaryString.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v10._countAndFlagsBits = 544499027;
  v10._object = 0xE400000000000000;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v10);
  swift_getKeyPath();
  sub_100140278(&qword_1008E6170);
  ParameterSummaryString.StringInterpolation.appendInterpolation<A, B>(_:)();

  v11._countAndFlagsBits = 0;
  v11._object = 0xE000000000000000;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v11);
  ParameterSummaryString.init(stringInterpolation:)();
  IntentParameterSummary.init(_:table:)();
  sub_10014A6B0(&qword_1008E6148, &qword_1008E6140);
  static ParameterSummaryBuilder.buildExpression<A>(_:)();
  v12 = *(v4 + 8);
  v12(v6, v3);
  static ParameterSummaryBuilder.buildBlock<A>(_:)();
  return (v12)(v9, v3);
}

uint64_t sub_1002A7BD8(uint64_t a1, uint64_t a2)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;

  return _swift_task_switch(sub_1002A7C68, 0, 0);
}

void sub_1002A7C68()
{
  AppDependency.wrappedValue.getter();
  v1 = *(v0 + 16);
  *(v0 + 16) = 0;
  v2 = [v1 activityMoveModeWithError:v0 + 16];

  v3 = *(v0 + 16);
  if (!v2)
  {
    v6 = v3;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    goto LABEL_5;
  }

  v4 = v3;
  if ([v2 activityMoveMode] == 2)
  {

    v5 = &off_100844C48;
LABEL_35:
    v34 = *(v0 + 8);

    v34(v5);
    return;
  }

  v8 = [objc_opt_self() sharedBehavior];
  if (!v8)
  {
    __break(1u);
LABEL_48:
    __break(1u);
    return;
  }

  v9 = v8;
  v10 = [v8 isStandalonePhoneFitnessMode];

  if (v10)
  {
    v5 = _swiftEmptyArrayStorage;
  }

  else
  {
    v5 = &off_100844C70;
  }

  AppDependency.wrappedValue.getter();
  v11 = *(v0 + 16);
  v12 = [v11 unitManager];

  if (!v12)
  {
    goto LABEL_48;
  }

  v13 = [v12 userActiveEnergyBurnedUnit];

  IsCalorieUnit = FIUIHKUnitIsCalorieUnit();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (IsCalorieUnit)
  {
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      if (v10)
      {
        v35 = _swiftEmptyArrayStorage;
      }

      else
      {
        v35 = &off_100844C70;
      }

      v5 = sub_1001A2AA4(0, v35[2] + 1, 1, v5);
    }

    v17 = *(v5 + 2);
    v16 = *(v5 + 3);
    v18 = v17 + 1;
    v19 = 1;
    if (v17 >= v16 >> 1)
    {
      v5 = sub_1001A2AA4((v16 > 1), v17 + 1, 1, v5);
    }
  }

  else
  {
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      if (v10)
      {
        v36 = _swiftEmptyArrayStorage;
      }

      else
      {
        v36 = &off_100844C70;
      }

      v5 = sub_1001A2AA4(0, v36[2] + 1, 1, v5);
    }

    v17 = *(v5 + 2);
    v20 = *(v5 + 3);
    v18 = v17 + 1;
    if (v17 >= v20 >> 1)
    {
      v5 = sub_1001A2AA4((v20 > 1), v17 + 1, 1, v5);
    }

    v19 = 2;
  }

  *(v5 + 2) = v18;
  v5[v17 + 32] = v19;
  if (v10)
  {

    goto LABEL_35;
  }

  v21 = *(v5 + 3);
  if (v18 >= v21 >> 1)
  {
    v5 = sub_1001A2AA4((v21 > 1), v18 + 1, 1, v5);
  }

  *(v5 + 2) = v18 + 1;
  v5[v18 + 32] = 4;
  AppDependency.wrappedValue.getter();
  v22 = *(v0 + 16);
  *(v0 + 16) = 0;
  v23 = [v22 wheelchairUseWithError:v0 + 16];

  v24 = *(v0 + 16);
  if (v23)
  {
    v25 = v24;
    v26 = [v23 wheelchairUse];
    v28 = *(v5 + 2);
    v27 = *(v5 + 3);
    v29 = v27 >> 1;
    v30 = v28 + 1;
    if (v26 == 2)
    {
      if (v29 <= v28)
      {
        v5 = sub_1001A2AA4((v27 > 1), v28 + 1, 1, v5);
      }

      *(v5 + 2) = v30;
      v31 = &v5[v28];
      v32 = 6;
    }

    else
    {
      if (v29 <= v28)
      {
        v5 = sub_1001A2AA4((v27 > 1), v28 + 1, 1, v5);
      }

      *(v5 + 2) = v30;
      v31 = &v5[v28];
      v32 = 5;
    }

    v31[32] = v32;
    goto LABEL_35;
  }

  v33 = v24;

  _convertNSErrorToError(_:)();

  swift_willThrow();
LABEL_5:
  v7 = *(v0 + 8);

  v7();
}

uint64_t sub_1002A8214(uint64_t a1)
{
  *(v2 + 16) = a1;
  v3 = *v1;
  v4 = v1[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  *v5 = v2;
  v5[1] = sub_10016200C;

  return sub_1002A7BD8(v3, v4);
}

unint64_t sub_1002A82B4()
{
  result = qword_1008E5E60;
  if (!qword_1008E5E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E5E60);
  }

  return result;
}

unint64_t sub_1002A830C()
{
  result = qword_1008E5E68;
  if (!qword_1008E5E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E5E68);
  }

  return result;
}

unint64_t sub_1002A8364()
{
  result = qword_1008E5E70;
  if (!qword_1008E5E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E5E70);
  }

  return result;
}

uint64_t sub_1002A8408(uint64_t a1)
{
  v2[46] = a1;
  v2[47] = v1;
  type metadata accessor for LocalizedStringResource();
  v2[48] = swift_task_alloc();
  sub_100140278(&qword_1008DD130);
  v2[49] = swift_task_alloc();
  v3 = sub_100140278(&qword_1008DEC58);
  v2[50] = v3;
  v2[51] = *(v3 - 8);
  v2[52] = swift_task_alloc();
  sub_100140278(&qword_1008DFAB8);
  v2[53] = swift_task_alloc();
  v2[54] = swift_task_alloc();
  v2[55] = swift_task_alloc();
  v2[56] = swift_task_alloc();
  type metadata accessor for String.LocalizationValue.StringInterpolation();
  v2[57] = swift_task_alloc();
  sub_100140278(&qword_1008DEC98);
  v2[58] = swift_task_alloc();
  v2[59] = swift_task_alloc();
  v4 = sub_100140278(&qword_1008DECB0);
  v2[60] = v4;
  v2[61] = *(v4 - 8);
  v2[62] = swift_task_alloc();
  v2[63] = swift_task_alloc();
  v5 = type metadata accessor for IntentDialog();
  v2[64] = v5;
  v2[65] = *(v5 - 8);
  v2[66] = swift_task_alloc();
  type metadata accessor for MainActor();
  v2[67] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[68] = v7;
  v2[69] = v6;

  return _swift_task_switch(sub_1002A870C, v7, v6);
}

uint64_t sub_1002A870C()
{
  IntentParameter.wrappedValue.getter();
  v1 = *(v0 + 672);
  if (v1 <= 2)
  {
    if (*(v0 + 672))
    {
      if (v1 == 1)
      {
        v4 = [objc_opt_self() kilocalories];
        *(v0 + 560) = v4;
        v5 = swift_task_alloc();
        *(v0 + 568) = v5;
        *v5 = v0;
        v5[1] = sub_1002A8CB4;
        v6 = v0 + 288;
      }

      else
      {
        v4 = [objc_opt_self() kilojoules];
        *(v0 + 584) = v4;
        v16 = swift_task_alloc();
        *(v0 + 592) = v16;
        *v16 = v0;
        v16[1] = sub_1002A9184;
        v6 = v0 + 248;
      }

      return sub_1002AAE48(v6, v4);
    }

    else
    {
      v8 = *(v0 + 520);
      v9 = *(v0 + 512);
      v10 = *(v0 + 392);
      v11 = *(v0 + 376);

      *(v0 + 16) = *v11;
      v12 = *(v11 + 16);
      v13 = *(v11 + 32);
      v14 = *(v11 + 48);
      *(v0 + 80) = *(v11 + 64);
      *(v0 + 48) = v13;
      *(v0 + 64) = v14;
      *(v0 + 32) = v12;
      LocalizedStringResource.init(stringLiteral:)();
      IntentDialog.init(_:)();
      (*(v8 + 56))(v10, 0, 1, v9);
      type metadata accessor for AppIntentError();
      sub_1002C1AE8(&qword_1008E6018, &type metadata accessor for AppIntentError);
      swift_allocError();
      sub_1002C192C();
      ForegroundContinuableIntent.needsToContinueInForegroundError(_:requestConfirmation:continuation:)();
      sub_10000EA04(v10, &qword_1008DD130);
      swift_willThrow();

      v15 = *(v0 + 8);

      return v15();
    }
  }

  else if (*(v0 + 672) > 4u)
  {
    if (v1 == 5)
    {
      v7 = swift_task_alloc();
      *(v0 + 640) = v7;
      *v7 = v0;
      v7[1] = sub_1002A9F18;

      return sub_1002ADF2C(v0 + 128);
    }

    else
    {
      v18 = swift_task_alloc();
      *(v0 + 656) = v18;
      *v18 = v0;
      v18[1] = sub_1002AA378;

      return sub_1002AEDB8(v0 + 88);
    }
  }

  else if (v1 == 3)
  {
    v2 = swift_task_alloc();
    *(v0 + 608) = v2;
    *v2 = v0;
    v2[1] = sub_1002A9658;

    return sub_1002AC208(v0 + 208);
  }

  else
  {
    v17 = swift_task_alloc();
    *(v0 + 624) = v17;
    *v17 = v0;
    v17[1] = sub_1002A9AB8;

    return sub_1002AD094(v0 + 168);
  }
}

uint64_t sub_1002A8CB4()
{
  v2 = *v1;
  *(*v1 + 576) = v0;

  if (v0)
  {
    v3 = *(v2 + 552);
    v4 = *(v2 + 544);
    v5 = sub_1002AA7D8;
  }

  else
  {

    v3 = *(v2 + 552);
    v4 = *(v2 + 544);
    v5 = sub_1002A8DD8;
  }

  return _swift_task_switch(v5, v4, v3);
}

id sub_1002A8DD8()
{
  v1 = v0[60];
  v2 = v0[61];
  v3 = v0[59];
  v5 = v0[36];
  v4 = v0[37];
  v7 = v0[38];
  v6 = v0[39];
  v8 = v0[40];

  v27 = v4;

  EntityProperty.wrappedValue.getter();
  v29 = v6;
  v30 = v8;
  v28 = v7;
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v9 = v0[59];

    v10 = 0x8000000100752DF0;
    sub_10000EA04(v9, &qword_1008DEC98);
    v11 = 0xD000000000000014;
  }

  else
  {
    (*(v0[61] + 32))(v0[63], v0[59], v0[60]);
    v12 = [objc_allocWithZone(NSEnergyFormatter) init];
    [v12 setForFoodEnergyUse:1];
    result = [v12 numberFormatter];
    if (!result)
    {
      __break(1u);
      return result;
    }

    v14 = result;
    v15 = v0[63];
    v16 = v0[60];
    v17 = v0[61];

    [v14 setFormattingContext:1];

    Measurement.value.getter();
    v18 = [v12 stringFromValue:1794 unit:?];
    v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v19;

    (*(v17 + 8))(v15, v16);
  }

  v20 = v0[66];
  v21 = v0[65];
  v26 = v0[64];
  String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v22._object = 0x8000000100752E70;
  v22._countAndFlagsBits = 0xD000000000000011;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v22);
  v23._countAndFlagsBits = v11;
  v23._object = v10;
  String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v23);

  v24._countAndFlagsBits = 46;
  v24._object = 0xE100000000000000;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v24);
  IntentDialog.init(stringInterpolation:)();
  v0[41] = v5;
  v0[42] = v27;
  v0[43] = v28;
  v0[44] = v29;
  v0[45] = v30;
  sub_1002C1980();
  static IntentResult.result<A>(value:dialog:)();

  (*(v21 + 8))(v20, v26);

  v25 = v0[1];

  return v25();
}

uint64_t sub_1002A9184()
{
  v2 = *v1;
  *(*v1 + 600) = v0;

  if (v0)
  {
    v3 = *(v2 + 552);
    v4 = *(v2 + 544);
    v5 = sub_1002AA8F0;
  }

  else
  {

    v3 = *(v2 + 552);
    v4 = *(v2 + 544);
    v5 = sub_1002A92A8;
  }

  return _swift_task_switch(v5, v4, v3);
}

id sub_1002A92A8()
{
  v1 = v0[31];
  v2 = v0[60];
  v3 = v0[61];
  v4 = v0[58];
  v5 = v0[32];
  v6 = v0[33];
  v8 = v0[34];
  v7 = v0[35];

  v27 = v5;

  EntityProperty.wrappedValue.getter();
  v28 = v8;
  v29 = v7;
  if ((*(v3 + 48))(v4, 1, v2) == 1)
  {
    v9 = v0[58];

    v10 = 0x8000000100752DF0;
    sub_10000EA04(v9, &qword_1008DEC98);
    v11 = 0xD000000000000014;
  }

  else
  {
    (*(v0[61] + 32))(v0[62], v0[58], v0[60]);
    v12 = [objc_allocWithZone(NSEnergyFormatter) init];
    [v12 setForFoodEnergyUse:0];
    result = [v12 numberFormatter];
    if (!result)
    {
      __break(1u);
      return result;
    }

    v14 = result;
    v16 = v0[61];
    v15 = v0[62];
    v17 = v0[60];

    [v14 setFormattingContext:1];

    Measurement.value.getter();
    v18 = [v12 stringFromValue:14 unit:?];
    v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v19;

    (*(v16 + 8))(v15, v17);
  }

  v20 = v0[66];
  v21 = v0[65];
  v26 = v0[64];
  String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v22._object = 0x8000000100752E70;
  v22._countAndFlagsBits = 0xD000000000000011;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v22);
  v23._countAndFlagsBits = v11;
  v23._object = v10;
  String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v23);

  v24._countAndFlagsBits = 46;
  v24._object = 0xE100000000000000;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v24);
  IntentDialog.init(stringInterpolation:)();
  v0[41] = v1;
  v0[42] = v27;
  v0[43] = v6;
  v0[44] = v28;
  v0[45] = v29;
  sub_1002C1980();
  static IntentResult.result<A>(value:dialog:)();

  (*(v21 + 8))(v20, v26);

  v25 = v0[1];

  return v25();
}

uint64_t sub_1002A9658()
{
  v2 = *v1;
  *(*v1 + 616) = v0;

  v3 = *(v2 + 552);
  v4 = *(v2 + 544);
  if (v0)
  {
    v5 = sub_1002AAA08;
  }

  else
  {
    v5 = sub_1002A9794;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_1002A9794()
{
  v1 = v0[56];
  v3 = v0[50];
  v2 = v0[51];

  v5 = v0[26];
  v4 = v0[27];
  v6 = v0[28];
  v7 = v0[29];
  v8 = v0[30];

  v25 = v7;

  v26 = v8;

  EntityProperty.wrappedValue.getter();
  v9 = (*(v2 + 48))(v1, 1, v3);
  v10 = v0[56];
  if (v9)
  {
    sub_10000EA04(v0[56], &qword_1008DFAB8);
    v11 = 0x8000000100752DF0;
    v12 = 0xD000000000000014;
  }

  else
  {
    v13 = v0[51];
    v14 = v0[52];
    v15 = v0[50];
    (*(v13 + 16))(v14, v0[56], v15);
    sub_10000EA04(v10, &qword_1008DFAB8);
    v12 = Measurement<>.formatted()();
    v11 = v16;
    (*(v13 + 8))(v14, v15);
  }

  v17 = v0[66];
  v18 = v0[65];
  v24 = v0[64];
  String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v19._object = 0x8000000100752E70;
  v19._countAndFlagsBits = 0xD000000000000011;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v19);
  v20._countAndFlagsBits = v12;
  v20._object = v11;
  String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v20);

  v21._countAndFlagsBits = 46;
  v21._object = 0xE100000000000000;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v21);
  IntentDialog.init(stringInterpolation:)();
  v0[41] = v5;
  v0[42] = v4;
  v0[43] = v6;
  v0[44] = v25;
  v0[45] = v26;
  sub_1002C1980();
  static IntentResult.result<A>(value:dialog:)();

  (*(v18 + 8))(v17, v24);

  v22 = v0[1];

  return v22();
}

uint64_t sub_1002A9AB8()
{
  v2 = *v1;
  *(*v1 + 632) = v0;

  v3 = *(v2 + 552);
  v4 = *(v2 + 544);
  if (v0)
  {
    v5 = sub_1002AAB18;
  }

  else
  {
    v5 = sub_1002A9BF4;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_1002A9BF4()
{
  v1 = v0[55];
  v3 = v0[50];
  v2 = v0[51];

  v5 = v0[21];
  v4 = v0[22];
  v7 = v0[23];
  v6 = v0[24];
  v8 = v0[25];

  v25 = v6;

  v26 = v8;

  EntityProperty.wrappedValue.getter();
  v9 = (*(v2 + 48))(v1, 1, v3);
  v10 = v0[55];
  if (v9)
  {
    sub_10000EA04(v0[55], &qword_1008DFAB8);
    v11 = 0x8000000100752DF0;
    v12 = 0xD000000000000014;
  }

  else
  {
    v13 = v0[51];
    v14 = v0[52];
    v15 = v0[50];
    (*(v13 + 16))(v14, v0[55], v15);
    sub_10000EA04(v10, &qword_1008DFAB8);
    v12 = Measurement<>.formatted()();
    v11 = v16;
    (*(v13 + 8))(v14, v15);
  }

  v17 = v0[66];
  v18 = v0[65];
  v24 = v0[64];
  String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v19._countAndFlagsBits = 0xD000000000000015;
  v19._object = 0x8000000100752E50;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v19);
  v20._countAndFlagsBits = v12;
  v20._object = v11;
  String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v20);

  v21._countAndFlagsBits = 46;
  v21._object = 0xE100000000000000;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v21);
  IntentDialog.init(stringInterpolation:)();
  v0[41] = v5;
  v0[42] = v4;
  v0[43] = v7;
  v0[44] = v25;
  v0[45] = v26;
  sub_1002C1980();
  static IntentResult.result<A>(value:dialog:)();

  (*(v18 + 8))(v17, v24);

  v22 = v0[1];

  return v22();
}

uint64_t sub_1002A9F18()
{
  v2 = *v1;
  *(*v1 + 648) = v0;

  v3 = *(v2 + 552);
  v4 = *(v2 + 544);
  if (v0)
  {
    v5 = sub_1002AAC28;
  }

  else
  {
    v5 = sub_1002AA054;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_1002AA054()
{
  v1 = v0[54];
  v3 = v0[50];
  v2 = v0[51];

  v5 = v0[16];
  v4 = v0[17];
  v7 = v0[18];
  v6 = v0[19];
  v8 = v0[20];

  v25 = v7;

  v26 = v8;

  EntityProperty.wrappedValue.getter();
  v9 = (*(v2 + 48))(v1, 1, v3);
  v10 = v0[54];
  if (v9)
  {
    sub_10000EA04(v0[54], &qword_1008DFAB8);
    v11 = 0x8000000100752DF0;
    v12 = 0xD000000000000014;
  }

  else
  {
    v13 = v0[51];
    v14 = v0[52];
    v15 = v0[50];
    (*(v13 + 16))(v14, v0[54], v15);
    sub_10000EA04(v10, &qword_1008DFAB8);
    v12 = Measurement<>.formatted()();
    v11 = v16;
    (*(v13 + 8))(v14, v15);
  }

  v17 = v0[66];
  v18 = v0[65];
  v24 = v0[64];
  String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v19._object = 0x8000000100752E30;
  v19._countAndFlagsBits = 0xD000000000000012;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v19);
  v20._countAndFlagsBits = v12;
  v20._object = v11;
  String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v20);

  v21._countAndFlagsBits = 46;
  v21._object = 0xE100000000000000;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v21);
  IntentDialog.init(stringInterpolation:)();
  v0[41] = v5;
  v0[42] = v4;
  v0[43] = v25;
  v0[44] = v6;
  v0[45] = v26;
  sub_1002C1980();
  static IntentResult.result<A>(value:dialog:)();

  (*(v18 + 8))(v17, v24);

  v22 = v0[1];

  return v22();
}

uint64_t sub_1002AA378()
{
  v2 = *v1;
  *(*v1 + 664) = v0;

  v3 = *(v2 + 552);
  v4 = *(v2 + 544);
  if (v0)
  {
    v5 = sub_1002AAD38;
  }

  else
  {
    v5 = sub_1002AA4B4;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_1002AA4B4()
{
  v1 = v0[53];
  v3 = v0[50];
  v2 = v0[51];

  v5 = v0[11];
  v4 = v0[12];
  v7 = v0[13];
  v6 = v0[14];
  v8 = v0[15];

  v25 = v7;

  v26 = v6;

  EntityProperty.wrappedValue.getter();
  v9 = (*(v2 + 48))(v1, 1, v3);
  v10 = v0[53];
  if (v9)
  {
    sub_10000EA04(v0[53], &qword_1008DFAB8);
    v11 = 0x8000000100752DF0;
    v12 = 0xD000000000000014;
  }

  else
  {
    v13 = v0[51];
    v14 = v0[52];
    v15 = v0[50];
    (*(v13 + 16))(v14, v0[53], v15);
    sub_10000EA04(v10, &qword_1008DFAB8);
    v12 = Measurement<>.formatted()();
    v11 = v16;
    (*(v13 + 8))(v14, v15);
  }

  v17 = v0[66];
  v18 = v0[65];
  v24 = v0[64];
  String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v19._object = 0x8000000100752E10;
  v19._countAndFlagsBits = 0xD000000000000011;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v19);
  v20._countAndFlagsBits = v12;
  v20._object = v11;
  String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v20);

  v21._countAndFlagsBits = 46;
  v21._object = 0xE100000000000000;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v21);
  IntentDialog.init(stringInterpolation:)();
  v0[41] = v5;
  v0[42] = v4;
  v0[43] = v25;
  v0[44] = v26;
  v0[45] = v8;
  sub_1002C1980();
  static IntentResult.result<A>(value:dialog:)();

  (*(v18 + 8))(v17, v24);

  v22 = v0[1];

  return v22();
}

uint64_t sub_1002AA7D8()
{
  v1 = *(v0 + 560);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1002AA8F0()
{
  v1 = *(v0 + 584);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1002AAA08()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1002AAB18()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1002AAC28()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1002AAD38()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1002AAE48(uint64_t a1, uint64_t a2)
{
  v3[13] = a2;
  v3[14] = v2;
  v3[12] = a1;
  type metadata accessor for LocalizedStringResource();
  v3[15] = swift_task_alloc();
  sub_100140278(&qword_1008DFAB8);
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();
  v3[18] = swift_task_alloc();
  v3[19] = swift_task_alloc();
  v3[20] = swift_task_alloc();
  v3[21] = swift_task_alloc();
  sub_100140278(&qword_1008DEC98);
  v3[22] = swift_task_alloc();
  v3[23] = swift_task_alloc();
  v3[24] = swift_task_alloc();
  v4 = type metadata accessor for Date();
  v3[25] = v4;
  v3[26] = *(v4 - 8);
  v3[27] = swift_task_alloc();
  v3[28] = swift_task_alloc();

  return _swift_task_switch(sub_1002AB008, 0, 0);
}

uint64_t sub_1002AB008()
{
  *(v0 + 232) = sub_1000059F8(0, &qword_1008DEE40);
  v1 = [objc_opt_self() kilojoules];
  v2 = static NSObject.== infix(_:_:)();

  IntentParameter.wrappedValue.getter();
  if (v2)
  {
    v3 = *(v0 + 80);
    v4 = *(v0 + 88);
    v5 = swift_task_alloc();
    *(v0 + 240) = v5;
    *v5 = v0;
    v5[1] = sub_1002AB198;
    v6 = v3;
    v7 = v4;
    v8 = 20;
  }

  else
  {
    v9 = *(v0 + 64);
    v10 = *(v0 + 72);
    v11 = swift_task_alloc();
    *(v0 + 248) = v11;
    *v11 = v0;
    v11[1] = sub_1002AB5F0;
    v6 = v9;
    v7 = v10;
    v8 = 10;
  }

  return sub_1002AFF14(v6, v7, v8, 0);
}

uint64_t sub_1002AB198(double a1)
{
  v3 = *v2;
  *(v3 + 16) = v2;
  *(v3 + 24) = a1;
  *(v3 + 32) = v1;
  v4 = *v2;

  if (v1)
  {

    v5 = *(v4 + 8);

    return v5();
  }

  else
  {

    return _swift_task_switch(sub_1002AB380, 0, 0);
  }
}

uint64_t sub_1002AB380()
{
  v1 = [objc_opt_self() jouleUnitWithMetricPrefix:9];
  v2 = v0[3];
  v0[32] = v2;
  v3 = v1;
  v4 = [objc_opt_self() quantityWithUnit:v3 doubleValue:v2];
  *(v0 + 33) = v4;

  sub_1000059F8(0, &qword_1008DEE18);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v6 = v4;
  v7 = [ObjCClassFromMetadata calorieGoal];
  if (v7)
  {
    v15 = v7;
    v17 = *(v0 + 27);
    v16 = *(v0 + 28);
    v18 = *(v0 + 25);
    v19 = *(v0 + 26);
    v27 = *(v0 + 14);
    Date.init()();
    Date.init()();
    isa = Date._bridgeToObjectiveC()().super.isa;
    v21 = Date._bridgeToObjectiveC()().super.isa;
    v22 = [objc_opt_self() quantitySampleWithType:v15 quantity:v6 startDate:isa endDate:v21];
    *(v0 + 34) = v22;

    v23 = *(v19 + 8);
    v23(v17, v18);
    v23(v16, v18);
    v24 = swift_task_alloc();
    *(v0 + 35) = v24;
    *(v24 + 16) = v27;
    *(v24 + 24) = v22;
    v25 = swift_task_alloc();
    *(v0 + 36) = v25;
    *v25 = v0;
    v25[1] = sub_1002ABA44;
    v14 = &type metadata for Bool;
    v12 = sub_1002C19D4;
    v7 = v0 + 73;
    v11 = 0x8000000100752E90;
    v8 = 0;
    v9 = 0;
    v10 = 0xD000000000000010;
    v13 = v24;
  }

  else
  {
    __break(1u);
  }

  return withCheckedContinuation<A>(isolation:function:_:)(v7, v8, v9, v10, v11, v12, v13, v14);
}

uint64_t sub_1002AB5F0(double a1)
{
  v3 = *v2;
  *(v3 + 40) = v2;
  *(v3 + 48) = a1;
  *(v3 + 56) = v1;
  v4 = *v2;

  if (v1)
  {

    v5 = *(v4 + 8);

    return v5();
  }

  else
  {

    return _swift_task_switch(sub_1002AB7D8, 0, 0);
  }
}

uint64_t sub_1002AB7D8()
{
  v1 = [objc_opt_self() kilocalorieUnit];
  v2 = v0[6];
  v0[32] = v2;
  v3 = v1;
  v4 = [objc_opt_self() quantityWithUnit:v3 doubleValue:v2];
  *(v0 + 33) = v4;

  sub_1000059F8(0, &qword_1008DEE18);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v6 = v4;
  v7 = [ObjCClassFromMetadata calorieGoal];
  if (v7)
  {
    v15 = v7;
    v17 = *(v0 + 27);
    v16 = *(v0 + 28);
    v18 = *(v0 + 25);
    v19 = *(v0 + 26);
    v27 = *(v0 + 14);
    Date.init()();
    Date.init()();
    isa = Date._bridgeToObjectiveC()().super.isa;
    v21 = Date._bridgeToObjectiveC()().super.isa;
    v22 = [objc_opt_self() quantitySampleWithType:v15 quantity:v6 startDate:isa endDate:v21];
    *(v0 + 34) = v22;

    v23 = *(v19 + 8);
    v23(v17, v18);
    v23(v16, v18);
    v24 = swift_task_alloc();
    *(v0 + 35) = v24;
    *(v24 + 16) = v27;
    *(v24 + 24) = v22;
    v25 = swift_task_alloc();
    *(v0 + 36) = v25;
    *v25 = v0;
    v25[1] = sub_1002ABA44;
    v14 = &type metadata for Bool;
    v12 = sub_1002C19D4;
    v7 = v0 + 73;
    v11 = 0x8000000100752E90;
    v8 = 0;
    v9 = 0;
    v10 = 0xD000000000000010;
    v13 = v24;
  }

  else
  {
    __break(1u);
  }

  return withCheckedContinuation<A>(isolation:function:_:)(v7, v8, v9, v10, v11, v12, v13, v14);
}

uint64_t sub_1002ABA44()
{

  return _swift_task_switch(sub_1002ABB5C, 0, 0);
}

uint64_t sub_1002ABB5C()
{
  v1 = *(v0 + 264);
  v2 = *(v0 + 272);
  if (*(v0 + 73) == 1)
  {
    v24 = *(v0 + 272);
    v3 = *(v0 + 192);
    v26 = *(v0 + 184);
    v4 = *(v0 + 168);
    v27 = *(v0 + 176);
    v6 = *(v0 + 152);
    v5 = *(v0 + 160);
    v21 = v5;
    v7 = *(v0 + 136);
    v8 = *(v0 + 144);
    v22 = *(v0 + 128);
    v23 = *(v0 + 264);
    v25 = *(v0 + 96);
    v9 = *(v0 + 104);
    v28 = v3;
    Measurement.init(value:unit:)();
    v10 = sub_100140278(&qword_1008DECB0);
    (*(*(v10 - 8) + 56))(v3, 0, 1, v10);
    v11 = sub_100140278(&qword_1008DEC58);
    v12 = *(*(v11 - 8) + 56);
    v12(v4, 1, 1, v11);
    v12(v5, 1, 1, v11);
    v12(v6, 1, 1, v11);
    v12(v8, 1, 1, v11);
    sub_100140278(&qword_1008DEDE8);
    LocalizedStringResource.init(stringLiteral:)();
    v13 = EntityProperty<>.init(title:)();
    sub_100140278(&qword_1008DFAC0);

    LocalizedStringResource.init(stringLiteral:)();
    v20 = EntityProperty<>.init(title:)();

    LocalizedStringResource.init(stringLiteral:)();
    v19 = EntityProperty<>.init(title:)();

    LocalizedStringResource.init(stringLiteral:)();
    v17 = EntityProperty<>.init(title:)();

    LocalizedStringResource.init(stringLiteral:)();
    v18 = EntityProperty<>.init(title:)();
    sub_10001B104(v28, v26, &qword_1008DEC98);
    sub_10001B104(v26, v27, &qword_1008DEC98);

    EntityProperty.wrappedValue.setter();
    sub_10000EA04(v26, &qword_1008DEC98);
    sub_10001B104(v4, v7, &qword_1008DFAB8);
    sub_10001B104(v7, v22, &qword_1008DFAB8);
    EntityProperty.wrappedValue.setter();
    sub_10000EA04(v7, &qword_1008DFAB8);
    sub_10001B104(v21, v7, &qword_1008DFAB8);
    sub_10001B104(v7, v22, &qword_1008DFAB8);
    EntityProperty.wrappedValue.setter();
    sub_10000EA04(v7, &qword_1008DFAB8);
    sub_10001B104(v6, v7, &qword_1008DFAB8);
    sub_10001B104(v7, v22, &qword_1008DFAB8);
    EntityProperty.wrappedValue.setter();
    sub_10000EA04(v7, &qword_1008DFAB8);
    sub_10001B104(v8, v7, &qword_1008DFAB8);
    sub_10001B104(v7, v22, &qword_1008DFAB8);
    EntityProperty.wrappedValue.setter();

    sub_10000EA04(v7, &qword_1008DFAB8);
    sub_10000EA04(v8, &qword_1008DFAB8);
    sub_10000EA04(v6, &qword_1008DFAB8);
    sub_10000EA04(v21, &qword_1008DFAB8);
    sub_10000EA04(v4, &qword_1008DFAB8);
    sub_10000EA04(v28, &qword_1008DEC98);

    *v25 = v13;
    v25[1] = v20;
    v25[2] = v19;
    v25[3] = v17;
    v25[4] = v18;
  }

  else
  {
    sub_1002C1830();
    swift_allocError();
    *v15 = 5;
    swift_willThrow();
  }

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_1002AC208(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  type metadata accessor for LocalizedStringResource();
  v2[6] = swift_task_alloc();
  sub_100140278(&qword_1008DFAB8);
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();
  sub_100140278(&qword_1008DEC98);
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();
  v3 = type metadata accessor for Date();
  v2[16] = v3;
  v2[17] = *(v3 - 8);
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();

  return _swift_task_switch(sub_1002AC3C4, 0, 0);
}

uint64_t sub_1002AC3C4()
{
  IntentParameter.wrappedValue.getter();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = swift_task_alloc();
  *(v0 + 160) = v3;
  *v3 = v0;
  v3[1] = sub_1002AC484;

  return sub_1002AFF14(v1, v2, 10, 1);
}

uint64_t sub_1002AC484(double a1)
{
  v3 = *v2;
  *(v3 + 168) = a1;

  if (v1)
  {

    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return _swift_task_switch(sub_1002AC668, 0, 0);
  }
}

uint64_t sub_1002AC668()
{
  sub_1000059F8(0, &qword_1008DEE18);
  v1 = [swift_getObjCClassFromMetadata() moveMinuteGoal];
  if (v1)
  {
    v9 = v1;
    v10 = v0[21];
    v12 = *(v0 + 18);
    v11 = *(v0 + 19);
    v13 = *(v0 + 16);
    v14 = *(v0 + 17);
    v24 = *(v0 + 5);
    v15 = [objc_opt_self() minuteUnit];
    v16 = [objc_opt_self() quantityWithUnit:v15 doubleValue:v10];

    Date.init()();
    Date.init()();
    isa = Date._bridgeToObjectiveC()().super.isa;
    v18 = Date._bridgeToObjectiveC()().super.isa;
    v19 = [objc_opt_self() quantitySampleWithType:v9 quantity:v16 startDate:isa endDate:v18];
    *(v0 + 22) = v19;

    v20 = *(v14 + 8);
    v20(v12, v13);
    v20(v11, v13);
    v21 = swift_task_alloc();
    *(v0 + 23) = v21;
    *(v21 + 16) = v24;
    *(v21 + 24) = v19;
    v22 = swift_task_alloc();
    *(v0 + 24) = v22;
    *v22 = v0;
    v22[1] = sub_1002AC8C0;
    v8 = &type metadata for Bool;
    v6 = sub_1002C1DBC;
    v1 = v0 + 25;
    v5 = 0x8000000100752E90;
    v2 = 0;
    v3 = 0;
    v4 = 0xD000000000000010;
    v7 = v21;
  }

  else
  {
    __break(1u);
  }

  return withCheckedContinuation<A>(isolation:function:_:)(v1, v2, v3, v4, v5, v6, v7, v8);
}

uint64_t sub_1002AC8C0()
{

  return _swift_task_switch(sub_1002AC9D8, 0, 0);
}

uint64_t sub_1002AC9D8()
{
  v1 = *(v0 + 176);
  if (*(v0 + 25) == 1)
  {
    v20 = *(v0 + 176);
    v2 = *(v0 + 120);
    v23 = *(v0 + 112);
    v3 = *(v0 + 96);
    v24 = *(v0 + 104);
    v25 = v2;
    v4 = *(v0 + 80);
    v5 = *(v0 + 88);
    v6 = *(v0 + 64);
    v7 = *(v0 + 72);
    v19 = *(v0 + 56);
    v21 = *(v0 + 32);
    v8 = sub_100140278(&qword_1008DECB0);
    (*(*(v8 - 8) + 56))(v2, 1, 1, v8);
    v9 = [objc_opt_self() minutes];
    sub_1000059F8(0, &qword_1008DEE10);
    Measurement.init(value:unit:)();
    v10 = sub_100140278(&qword_1008DEC58);
    v11 = *(*(v10 - 8) + 56);
    v11(v3, 0, 1, v10);
    v11(v5, 1, 1, v10);
    v11(v4, 1, 1, v10);
    v11(v7, 1, 1, v10);
    sub_100140278(&qword_1008DEDE8);
    LocalizedStringResource.init(stringLiteral:)();
    v12 = EntityProperty<>.init(title:)();
    sub_100140278(&qword_1008DFAC0);

    LocalizedStringResource.init(stringLiteral:)();
    v18 = EntityProperty<>.init(title:)();

    LocalizedStringResource.init(stringLiteral:)();
    v16 = EntityProperty<>.init(title:)();

    LocalizedStringResource.init(stringLiteral:)();
    v22 = EntityProperty<>.init(title:)();

    LocalizedStringResource.init(stringLiteral:)();
    v17 = EntityProperty<>.init(title:)();
    sub_10001B104(v25, v23, &qword_1008DEC98);
    sub_10001B104(v23, v24, &qword_1008DEC98);

    EntityProperty.wrappedValue.setter();
    sub_10000EA04(v23, &qword_1008DEC98);
    sub_10001B104(v3, v6, &qword_1008DFAB8);
    sub_10001B104(v6, v19, &qword_1008DFAB8);
    EntityProperty.wrappedValue.setter();
    sub_10000EA04(v6, &qword_1008DFAB8);
    sub_10001B104(v5, v6, &qword_1008DFAB8);
    sub_10001B104(v6, v19, &qword_1008DFAB8);
    EntityProperty.wrappedValue.setter();
    sub_10000EA04(v6, &qword_1008DFAB8);
    sub_10001B104(v4, v6, &qword_1008DFAB8);
    sub_10001B104(v6, v19, &qword_1008DFAB8);
    EntityProperty.wrappedValue.setter();
    sub_10000EA04(v6, &qword_1008DFAB8);
    sub_10001B104(v7, v6, &qword_1008DFAB8);
    sub_10001B104(v6, v19, &qword_1008DFAB8);
    EntityProperty.wrappedValue.setter();

    sub_10000EA04(v6, &qword_1008DFAB8);
    sub_10000EA04(v7, &qword_1008DFAB8);
    sub_10000EA04(v4, &qword_1008DFAB8);
    sub_10000EA04(v5, &qword_1008DFAB8);
    sub_10000EA04(v3, &qword_1008DFAB8);
    sub_10000EA04(v25, &qword_1008DEC98);

    *v21 = v12;
    v21[1] = v18;
    v21[2] = v16;
    v21[3] = v22;
    v21[4] = v17;
  }

  else
  {
    sub_1002C1830();
    swift_allocError();
    *v14 = 5;
    swift_willThrow();
  }

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_1002AD094(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  type metadata accessor for LocalizedStringResource();
  v2[6] = swift_task_alloc();
  sub_100140278(&qword_1008DFAB8);
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();
  sub_100140278(&qword_1008DEC98);
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();
  v3 = type metadata accessor for Date();
  v2[16] = v3;
  v2[17] = *(v3 - 8);
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();

  return _swift_task_switch(sub_1002AD250, 0, 0);
}

uint64_t sub_1002AD250()
{
  IntentParameter.wrappedValue.getter();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = swift_task_alloc();
  *(v0 + 160) = v3;
  *v3 = v0;
  v3[1] = sub_1002AD310;

  return sub_1002AFF14(v1, v2, 5, 2);
}

uint64_t sub_1002AD310(double a1)
{
  v3 = *v2;
  *(v3 + 168) = a1;

  if (v1)
  {

    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return _swift_task_switch(sub_1002AD4F4, 0, 0);
  }
}

uint64_t sub_1002AD4F4()
{
  sub_1000059F8(0, &qword_1008DEE18);
  v1 = [swift_getObjCClassFromMetadata() exerciseGoal];
  if (v1)
  {
    v9 = v1;
    v10 = v0[21];
    v12 = *(v0 + 18);
    v11 = *(v0 + 19);
    v13 = *(v0 + 16);
    v14 = *(v0 + 17);
    v24 = *(v0 + 5);
    v15 = [objc_opt_self() minuteUnit];
    v16 = [objc_opt_self() quantityWithUnit:v15 doubleValue:v10];

    Date.init()();
    Date.init()();
    isa = Date._bridgeToObjectiveC()().super.isa;
    v18 = Date._bridgeToObjectiveC()().super.isa;
    v19 = [objc_opt_self() quantitySampleWithType:v9 quantity:v16 startDate:isa endDate:v18];
    *(v0 + 22) = v19;

    v20 = *(v14 + 8);
    v20(v12, v13);
    v20(v11, v13);
    v21 = swift_task_alloc();
    *(v0 + 23) = v21;
    *(v21 + 16) = v24;
    *(v21 + 24) = v19;
    v22 = swift_task_alloc();
    *(v0 + 24) = v22;
    *v22 = v0;
    v22[1] = sub_1002AD74C;
    v8 = &type metadata for Bool;
    v6 = sub_1002C1DBC;
    v1 = v0 + 25;
    v5 = 0x8000000100752E90;
    v2 = 0;
    v3 = 0;
    v4 = 0xD000000000000010;
    v7 = v21;
  }

  else
  {
    __break(1u);
  }

  return withCheckedContinuation<A>(isolation:function:_:)(v1, v2, v3, v4, v5, v6, v7, v8);
}

uint64_t sub_1002AD74C()
{

  return _swift_task_switch(sub_1002AD864, 0, 0);
}

uint64_t sub_1002AD864()
{
  v1 = *(v0 + 176);
  if (*(v0 + 25) == 1)
  {
    v17 = *(v0 + 176);
    v2 = *(v0 + 120);
    v24 = v2;
    v22 = *(v0 + 112);
    v3 = *(v0 + 96);
    v23 = *(v0 + 104);
    v25 = *(v0 + 88);
    v4 = *(v0 + 64);
    v5 = *(v0 + 72);
    v21 = *(v0 + 80);
    v6 = *(v0 + 56);
    v18 = *(v0 + 32);
    v7 = sub_100140278(&qword_1008DECB0);
    (*(*(v7 - 8) + 56))(v2, 1, 1, v7);
    v8 = sub_100140278(&qword_1008DEC58);
    v9 = *(*(v8 - 8) + 56);
    v9(v3, 1, 1, v8);
    v10 = [objc_opt_self() minutes];
    sub_1000059F8(0, &qword_1008DEE10);
    Measurement.init(value:unit:)();
    v9(v25, 0, 1, v8);
    v9(v21, 1, 1, v8);
    v9(v5, 1, 1, v8);
    sub_100140278(&qword_1008DEDE8);
    LocalizedStringResource.init(stringLiteral:)();
    v11 = EntityProperty<>.init(title:)();
    sub_100140278(&qword_1008DFAC0);

    LocalizedStringResource.init(stringLiteral:)();
    v16 = EntityProperty<>.init(title:)();

    LocalizedStringResource.init(stringLiteral:)();
    v19 = EntityProperty<>.init(title:)();

    LocalizedStringResource.init(stringLiteral:)();
    v20 = EntityProperty<>.init(title:)();

    LocalizedStringResource.init(stringLiteral:)();
    v15 = EntityProperty<>.init(title:)();
    sub_10001B104(v24, v22, &qword_1008DEC98);
    sub_10001B104(v22, v23, &qword_1008DEC98);

    EntityProperty.wrappedValue.setter();
    sub_10000EA04(v22, &qword_1008DEC98);
    sub_10001B104(v3, v4, &qword_1008DFAB8);
    sub_10001B104(v4, v6, &qword_1008DFAB8);
    EntityProperty.wrappedValue.setter();
    sub_10000EA04(v4, &qword_1008DFAB8);
    sub_10001B104(v25, v4, &qword_1008DFAB8);
    sub_10001B104(v4, v6, &qword_1008DFAB8);
    EntityProperty.wrappedValue.setter();
    sub_10000EA04(v4, &qword_1008DFAB8);
    sub_10001B104(v21, v4, &qword_1008DFAB8);
    sub_10001B104(v4, v6, &qword_1008DFAB8);
    EntityProperty.wrappedValue.setter();
    sub_10000EA04(v4, &qword_1008DFAB8);
    sub_10001B104(v5, v4, &qword_1008DFAB8);
    sub_10001B104(v4, v6, &qword_1008DFAB8);
    EntityProperty.wrappedValue.setter();

    sub_10000EA04(v4, &qword_1008DFAB8);
    sub_10000EA04(v5, &qword_1008DFAB8);
    sub_10000EA04(v21, &qword_1008DFAB8);
    sub_10000EA04(v25, &qword_1008DFAB8);
    sub_10000EA04(v3, &qword_1008DFAB8);
    sub_10000EA04(v24, &qword_1008DEC98);

    *v18 = v11;
    v18[1] = v16;
    v18[2] = v19;
    v18[3] = v20;
    v18[4] = v15;
  }

  else
  {
    sub_1002C1830();
    swift_allocError();
    *v13 = 5;
    swift_willThrow();
  }

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_1002ADF2C(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  type metadata accessor for LocalizedStringResource();
  v2[6] = swift_task_alloc();
  sub_100140278(&qword_1008DFAB8);
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();
  sub_100140278(&qword_1008DEC98);
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();
  v3 = type metadata accessor for Date();
  v2[16] = v3;
  v2[17] = *(v3 - 8);
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();

  return _swift_task_switch(sub_1002AE0E8, 0, 0);
}

uint64_t sub_1002AE0E8()
{
  IntentParameter.wrappedValue.getter();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = swift_task_alloc();
  *(v0 + 160) = v3;
  *v3 = v0;
  v3[1] = sub_1002AE1A8;

  return sub_1002AFF14(v1, v2, 1, 3);
}

uint64_t sub_1002AE1A8(double a1)
{
  v3 = *v2;
  *(v3 + 168) = a1;

  if (v1)
  {

    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return _swift_task_switch(sub_1002AE38C, 0, 0);
  }
}

uint64_t sub_1002AE38C()
{
  sub_1000059F8(0, &qword_1008DEE18);
  v1 = [swift_getObjCClassFromMetadata() standGoal];
  if (v1)
  {
    v9 = v1;
    v10 = v0[21];
    v12 = *(v0 + 18);
    v11 = *(v0 + 19);
    v13 = *(v0 + 16);
    v14 = *(v0 + 17);
    v24 = *(v0 + 5);
    v15 = [objc_opt_self() countUnit];
    v16 = [objc_opt_self() quantityWithUnit:v15 doubleValue:v10];

    Date.init()();
    Date.init()();
    isa = Date._bridgeToObjectiveC()().super.isa;
    v18 = Date._bridgeToObjectiveC()().super.isa;
    v19 = [objc_opt_self() quantitySampleWithType:v9 quantity:v16 startDate:isa endDate:v18];
    *(v0 + 22) = v19;

    v20 = *(v14 + 8);
    v20(v12, v13);
    v20(v11, v13);
    v21 = swift_task_alloc();
    *(v0 + 23) = v21;
    *(v21 + 16) = v24;
    *(v21 + 24) = v19;
    v22 = swift_task_alloc();
    *(v0 + 24) = v22;
    *v22 = v0;
    v22[1] = sub_1002AE5E4;
    v8 = &type metadata for Bool;
    v6 = sub_1002C1DBC;
    v1 = v0 + 25;
    v5 = 0x8000000100752E90;
    v2 = 0;
    v3 = 0;
    v4 = 0xD000000000000010;
    v7 = v21;
  }

  else
  {
    __break(1u);
  }

  return withCheckedContinuation<A>(isolation:function:_:)(v1, v2, v3, v4, v5, v6, v7, v8);
}

uint64_t sub_1002AE5E4()
{

  return _swift_task_switch(sub_1002AE6FC, 0, 0);
}

uint64_t sub_1002AE6FC()
{
  v1 = *(v0 + 176);
  if (*(v0 + 25) == 1)
  {
    v19 = *(v0 + 176);
    v2 = *(v0 + 120);
    v25 = v2;
    v3 = *(v0 + 96);
    v24 = *(v0 + 104);
    v4 = *(v0 + 88);
    v22 = *(v0 + 112);
    v23 = v4;
    v26 = *(v0 + 80);
    v5 = *(v0 + 64);
    v6 = *(v0 + 72);
    v7 = *(v0 + 56);
    v20 = *(v0 + 32);
    v8 = sub_100140278(&qword_1008DECB0);
    (*(*(v8 - 8) + 56))(v2, 1, 1, v8);
    v9 = sub_100140278(&qword_1008DEC58);
    v10 = *(*(v9 - 8) + 56);
    v10(v3, 1, 1, v9);
    v10(v4, 1, 1, v9);
    v11 = [objc_opt_self() hours];
    sub_1000059F8(0, &qword_1008DEE10);
    Measurement.init(value:unit:)();
    v10(v26, 0, 1, v9);
    v10(v6, 1, 1, v9);
    sub_100140278(&qword_1008DEDE8);
    LocalizedStringResource.init(stringLiteral:)();
    v12 = EntityProperty<>.init(title:)();
    sub_100140278(&qword_1008DFAC0);

    LocalizedStringResource.init(stringLiteral:)();
    v18 = EntityProperty<>.init(title:)();

    LocalizedStringResource.init(stringLiteral:)();
    v21 = EntityProperty<>.init(title:)();

    LocalizedStringResource.init(stringLiteral:)();
    v17 = EntityProperty<>.init(title:)();

    LocalizedStringResource.init(stringLiteral:)();
    v16 = EntityProperty<>.init(title:)();
    sub_10001B104(v25, v22, &qword_1008DEC98);
    sub_10001B104(v22, v24, &qword_1008DEC98);

    EntityProperty.wrappedValue.setter();
    sub_10000EA04(v22, &qword_1008DEC98);
    sub_10001B104(v3, v5, &qword_1008DFAB8);
    sub_10001B104(v5, v7, &qword_1008DFAB8);
    EntityProperty.wrappedValue.setter();
    sub_10000EA04(v5, &qword_1008DFAB8);
    sub_10001B104(v23, v5, &qword_1008DFAB8);
    sub_10001B104(v5, v7, &qword_1008DFAB8);
    EntityProperty.wrappedValue.setter();
    sub_10000EA04(v5, &qword_1008DFAB8);
    sub_10001B104(v26, v5, &qword_1008DFAB8);
    sub_10001B104(v5, v7, &qword_1008DFAB8);
    EntityProperty.wrappedValue.setter();
    sub_10000EA04(v5, &qword_1008DFAB8);
    sub_10001B104(v6, v5, &qword_1008DFAB8);
    sub_10001B104(v5, v7, &qword_1008DFAB8);
    EntityProperty.wrappedValue.setter();

    sub_10000EA04(v5, &qword_1008DFAB8);
    sub_10000EA04(v6, &qword_1008DFAB8);
    sub_10000EA04(v26, &qword_1008DFAB8);
    sub_10000EA04(v23, &qword_1008DFAB8);
    sub_10000EA04(v3, &qword_1008DFAB8);
    sub_10000EA04(v25, &qword_1008DEC98);

    *v20 = v12;
    v20[1] = v18;
    v20[2] = v21;
    v20[3] = v17;
    v20[4] = v16;
  }

  else
  {
    sub_1002C1830();
    swift_allocError();
    *v14 = 5;
    swift_willThrow();
  }

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_1002AEDB8(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  type metadata accessor for LocalizedStringResource();
  v2[6] = swift_task_alloc();
  sub_100140278(&qword_1008DFAB8);
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();
  sub_100140278(&qword_1008DEC98);
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();
  v3 = type metadata accessor for Date();
  v2[16] = v3;
  v2[17] = *(v3 - 8);
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();

  return _swift_task_switch(sub_1002AEF74, 0, 0);
}

uint64_t sub_1002AEF74()
{
  IntentParameter.wrappedValue.getter();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = swift_task_alloc();
  *(v0 + 160) = v3;
  *v3 = v0;
  v3[1] = sub_1002AF034;

  return sub_1002AFF14(v1, v2, 1, 3);
}

uint64_t sub_1002AF034(double a1)
{
  v3 = *v2;
  *(v3 + 168) = a1;

  if (v1)
  {

    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return _swift_task_switch(sub_1002AF218, 0, 0);
  }
}

uint64_t sub_1002AF218()
{
  sub_1000059F8(0, &qword_1008DEE18);
  v1 = [swift_getObjCClassFromMetadata() standGoal];
  if (v1)
  {
    v9 = v1;
    v10 = v0[21];
    v12 = *(v0 + 18);
    v11 = *(v0 + 19);
    v13 = *(v0 + 16);
    v14 = *(v0 + 17);
    v24 = *(v0 + 5);
    v15 = [objc_opt_self() countUnit];
    v16 = [objc_opt_self() quantityWithUnit:v15 doubleValue:v10];

    Date.init()();
    Date.init()();
    isa = Date._bridgeToObjectiveC()().super.isa;
    v18 = Date._bridgeToObjectiveC()().super.isa;
    v19 = [objc_opt_self() quantitySampleWithType:v9 quantity:v16 startDate:isa endDate:v18];
    *(v0 + 22) = v19;

    v20 = *(v14 + 8);
    v20(v12, v13);
    v20(v11, v13);
    v21 = swift_task_alloc();
    *(v0 + 23) = v21;
    *(v21 + 16) = v24;
    *(v21 + 24) = v19;
    v22 = swift_task_alloc();
    *(v0 + 24) = v22;
    *v22 = v0;
    v22[1] = sub_1002AF470;
    v8 = &type metadata for Bool;
    v6 = sub_1002C1DBC;
    v1 = v0 + 25;
    v5 = 0x8000000100752E90;
    v2 = 0;
    v3 = 0;
    v4 = 0xD000000000000010;
    v7 = v21;
  }

  else
  {
    __break(1u);
  }

  return withCheckedContinuation<A>(isolation:function:_:)(v1, v2, v3, v4, v5, v6, v7, v8);
}

uint64_t sub_1002AF470()
{

  return _swift_task_switch(sub_1002AF588, 0, 0);
}

uint64_t sub_1002AF588()
{
  v1 = *(v0 + 176);
  if (*(v0 + 25) == 1)
  {
    v18 = *(v0 + 176);
    v2 = *(v0 + 120);
    v24 = v2;
    v3 = *(v0 + 96);
    v23 = *(v0 + 104);
    v4 = *(v0 + 80);
    v5 = *(v0 + 88);
    v22 = *(v0 + 112);
    v6 = *(v0 + 64);
    v25 = *(v0 + 72);
    v7 = *(v0 + 56);
    v19 = *(v0 + 32);
    v8 = sub_100140278(&qword_1008DECB0);
    (*(*(v8 - 8) + 56))(v2, 1, 1, v8);
    v9 = sub_100140278(&qword_1008DEC58);
    v10 = *(*(v9 - 8) + 56);
    v10(v3, 1, 1, v9);
    v10(v5, 1, 1, v9);
    v10(v4, 1, 1, v9);
    v11 = [objc_opt_self() hours];
    sub_1000059F8(0, &qword_1008DEE10);
    Measurement.init(value:unit:)();
    v10(v25, 0, 1, v9);
    sub_100140278(&qword_1008DEDE8);
    LocalizedStringResource.init(stringLiteral:)();
    v12 = EntityProperty<>.init(title:)();
    sub_100140278(&qword_1008DFAC0);

    LocalizedStringResource.init(stringLiteral:)();
    v17 = EntityProperty<>.init(title:)();

    LocalizedStringResource.init(stringLiteral:)();
    v20 = EntityProperty<>.init(title:)();

    LocalizedStringResource.init(stringLiteral:)();
    v21 = EntityProperty<>.init(title:)();

    LocalizedStringResource.init(stringLiteral:)();
    v16 = EntityProperty<>.init(title:)();
    sub_10001B104(v24, v22, &qword_1008DEC98);
    sub_10001B104(v22, v23, &qword_1008DEC98);

    EntityProperty.wrappedValue.setter();
    sub_10000EA04(v22, &qword_1008DEC98);
    sub_10001B104(v3, v6, &qword_1008DFAB8);
    sub_10001B104(v6, v7, &qword_1008DFAB8);
    EntityProperty.wrappedValue.setter();
    sub_10000EA04(v6, &qword_1008DFAB8);
    sub_10001B104(v5, v6, &qword_1008DFAB8);
    sub_10001B104(v6, v7, &qword_1008DFAB8);
    EntityProperty.wrappedValue.setter();
    sub_10000EA04(v6, &qword_1008DFAB8);
    sub_10001B104(v4, v6, &qword_1008DFAB8);
    sub_10001B104(v6, v7, &qword_1008DFAB8);
    EntityProperty.wrappedValue.setter();
    sub_10000EA04(v6, &qword_1008DFAB8);
    sub_10001B104(v25, v6, &qword_1008DFAB8);
    sub_10001B104(v6, v7, &qword_1008DFAB8);
    EntityProperty.wrappedValue.setter();

    sub_10000EA04(v6, &qword_1008DFAB8);
    sub_10000EA04(v25, &qword_1008DFAB8);
    sub_10000EA04(v4, &qword_1008DFAB8);
    sub_10000EA04(v5, &qword_1008DFAB8);
    sub_10000EA04(v3, &qword_1008DFAB8);
    sub_10000EA04(v24, &qword_1008DEC98);

    *v19 = v12;
    v19[1] = v17;
    v19[2] = v20;
    v19[3] = v21;
    v19[4] = v16;
  }

  else
  {
    sub_1002C1830();
    swift_allocError();
    *v14 = 5;
    swift_willThrow();
  }

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_1002AFC44()
{
  sub_100140278(&unk_1008EB5B0);
  v0[4] = swift_task_alloc();
  v1 = type metadata accessor for URL();
  v0[5] = v1;
  v0[6] = *(v1 - 8);
  v0[7] = swift_task_alloc();
  type metadata accessor for MainActor();
  v0[8] = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1002AFD6C, v3, v2);
}

uint64_t sub_1002AFD6C()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  v3 = *(v0 + 32);

  URL.init(string:)();
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_10000EA04(*(v0 + 32), &unk_1008EB5B0);
  }

  else
  {
    (*(*(v0 + 48) + 32))(*(v0 + 56), *(v0 + 32), *(v0 + 40));
    if (qword_1008DACC0 != -1)
    {
      swift_once();
    }

    v5 = *(v0 + 48);
    v4 = *(v0 + 56);
    v6 = *(v0 + 40);
    v7 = type metadata accessor for NavigatorContext();
    v8 = objc_allocWithZone(v7);
    v8[OBJC_IVAR___CHNavigatorContext_hasActiveWorkout] = 0;
    *(v0 + 16) = v8;
    *(v0 + 24) = v7;
    v9 = objc_msgSendSuper2((v0 + 16), "init");
    sub_1004DA120(v4, v9);

    (*(v5 + 8))(v4, v6);
  }

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_1002AFF14(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 104) = a4;
  *(v5 + 112) = v4;
  *(v5 + 144) = a2;
  *(v5 + 88) = a1;
  *(v5 + 96) = a3;
  type metadata accessor for LocalizedStringResource();
  *(v5 + 120) = swift_task_alloc();
  sub_100140278(&qword_1008DD130);
  *(v5 + 128) = swift_task_alloc();
  v7 = swift_task_alloc();
  *(v5 + 136) = v7;
  *v7 = v5;
  v7[1] = sub_1002B0018;

  return sub_1002B03BC(a4);
}

uint64_t sub_1002B0018(char a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {

    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    *(v4 + 145) = a1 & 1;

    return _swift_task_switch(sub_1002B0178, 0, 0);
  }
}

uint64_t sub_1002B0178()
{
  if (*(v0 + 144) & 1) != 0 || (*(v0 + 145))
  {
    v5 = *(v0 + 128);
    v7 = *(v0 + 104);
    v6 = *(v0 + 112);
    *(v0 + 16) = *v6;
    v9 = *(v6 + 32);
    v8 = *(v6 + 48);
    v10 = *(v6 + 16);
    *(v0 + 80) = *(v6 + 64);
    *(v0 + 48) = v9;
    *(v0 + 64) = v8;
    *(v0 + 32) = v10;
    LocalizedStringResource.init(stringLiteral:)();
    IntentDialog.init(_:)();
    v11 = type metadata accessor for IntentDialog();
    (*(*(v11 - 8) + 56))(v5, 0, 1, v11);
    *(swift_allocObject() + 16) = v7;
    type metadata accessor for AppIntentError();
    sub_1002C1AE8(&qword_1008E6018, &type metadata accessor for AppIntentError);
    swift_allocError();
    sub_1002C192C();
    ForegroundContinuableIntent.needsToContinueInForegroundError(_:requestConfirmation:continuation:)();

    sub_10000EA04(v5, &qword_1008DD130);
    swift_willThrow();

    v3 = *(v0 + 8);
  }

  else
  {
    v1 = *(v0 + 88);
    v2 = v1 - fmod(v1, *(v0 + 96));

    v3 = *(v0 + 8);
    v4.n128_f64[0] = v2;
  }

  return v3(v4);
}

uint64_t sub_1002B03BC(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = sub_100140278(&qword_1008E0C90);
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  v4 = sub_100140278(&qword_1008E0C98);
  v2[8] = v4;
  v2[9] = *(v4 - 8);
  v2[10] = swift_task_alloc();

  return _swift_task_switch(sub_1002B04F0, 0, 0);
}

uint64_t sub_1002B04F0()
{
  v1 = [objc_opt_self() activityGoalScheduleType];
  if (v1)
  {
    v3 = v1;
    v5 = v0[9];
    v4 = v0[10];
    v6 = v0[8];
    sub_1000059F8(0, &qword_1008E04D0);
    static HKSamplePredicate.sample(type:predicate:)();

    sub_100140278(&qword_1008E0CA8);
    v7 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_1006D46C0;
    (*(v5 + 16))(v8 + v7, v4, v6);
    sub_100140278(&qword_1008E0CB0);
    sub_100140278(&qword_1008E0CA0);
    *(swift_allocObject() + 16) = xmmword_1006D46C0;
    swift_getKeyPath();
    SortDescriptor.init<A>(_:order:)();
    HKSampleQueryDescriptor.init(predicates:sortDescriptors:limit:)();
    AppDependency.wrappedValue.getter();
    v9 = v0[2];
    v0[11] = v9;
    v10 = swift_task_alloc();
    v0[12] = v10;
    *v10 = v0;
    v10[1] = sub_1002B0754;
    v2 = v0[5];
    v1 = v9;
  }

  else
  {
    __break(1u);
  }

  return HKSampleQueryDescriptor.result(for:)(v1, v2);
}

uint64_t sub_1002B0754(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 88);
  *(*v2 + 104) = v1;

  if (v1)
  {
    v6 = sub_1002B0A34;
  }

  else
  {
    *(v4 + 112) = a1;
    v6 = sub_1002B089C;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_1002B089C()
{
  v1 = sub_100627E74(v0[14]);

  if (v1)
  {
    if (v1 >> 62)
    {
LABEL_20:
      v2 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v3 = 0;
    do
    {
      v4 = v2 != v3;
      if (v2 == v3)
      {
        break;
      }

      if ((v1 & 0xC000000000000001) != 0)
      {
        v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_19;
        }

        v5 = *(v1 + 8 * v3 + 32);
      }

      v6 = v5;
      if (__OFADD__(v3, 1))
      {
        __break(1u);
LABEL_19:
        __break(1u);
        goto LABEL_20;
      }

      v7 = v0[3];
      v8 = [v5 goalType];

      ++v3;
    }

    while (v8 != v7);
  }

  else
  {
    v4 = 0;
  }

  v10 = v0[9];
  v9 = v0[10];
  v11 = v0[8];
  (*(v0[6] + 8))(v0[7], v0[5]);
  (*(v10 + 8))(v9, v11);

  v12 = v0[1];

  return v12(v4);
}

uint64_t sub_1002B0A34()
{
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[8];
  (*(v0[6] + 8))(v0[7], v0[5]);
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4(0);
}

void sub_1002B0AE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_100140278(&qword_1008E6118);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = aBlock - v7;
  AppDependency.wrappedValue.getter();
  v9 = aBlock[0];
  (*(v6 + 16))(v8, a1, v5);
  v10 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v11 = swift_allocObject();
  (*(v6 + 32))(v11 + v10, v8, v5);
  aBlock[4] = sub_1002C19DC;
  aBlock[5] = v11;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1004DCFFC;
  aBlock[3] = &unk_100850860;
  v12 = _Block_copy(aBlock);

  [v9 saveObject:a3 withCompletion:v12];
  _Block_release(v12);
}

uint64_t sub_1002B0CB8(uint64_t a1)
{
  v1[4] = a1;
  sub_100140278(&unk_1008EB5B0);
  v1[5] = swift_task_alloc();
  v2 = type metadata accessor for URL();
  v1[6] = v2;
  v1[7] = *(v2 - 8);
  v1[8] = swift_task_alloc();
  type metadata accessor for MainActor();
  v1[9] = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1002B0DE4, v4, v3);
}

uint64_t sub_1002B0DE4()
{

  v1 = *(v0 + 48);
  v2 = *(v0 + 56);
  v3 = *(v0 + 40);
  URL.init(string:)();

  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_10000EA04(*(v0 + 40), &unk_1008EB5B0);
  }

  else
  {
    (*(*(v0 + 56) + 32))(*(v0 + 64), *(v0 + 40), *(v0 + 48));
    if (qword_1008DACC0 != -1)
    {
      swift_once();
    }

    v5 = *(v0 + 56);
    v4 = *(v0 + 64);
    v6 = *(v0 + 48);
    v7 = type metadata accessor for NavigatorContext();
    v8 = objc_allocWithZone(v7);
    v8[OBJC_IVAR___CHNavigatorContext_hasActiveWorkout] = 0;
    *(v0 + 16) = v8;
    *(v0 + 24) = v7;
    v9 = objc_msgSendSuper2((v0 + 16), "init");
    sub_1004DA120(v4, v9);

    (*(v5 + 8))(v4, v6);
  }

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_1002B1020(uint64_t a1, uint64_t a2)
{
  KeyPath = swift_getKeyPath();
  v4 = sub_100140278(&qword_1008E6120);
  v5 = sub_10014A6B0(&qword_1008E6128, &qword_1008E6120);

  return ParameterSummarySwitchCondition.init(_:_:)(KeyPath, sub_1002A5D10, 0, v4, a2, v5);
}

uint64_t sub_1002B10E8(uint64_t a1)
{
  v4 = *(v1 + 48);
  *(v2 + 48) = *(v1 + 32);
  *(v2 + 64) = v4;
  *(v2 + 80) = *(v1 + 64);
  v5 = *(v1 + 16);
  *(v2 + 16) = *v1;
  *(v2 + 32) = v5;
  v6 = swift_task_alloc();
  *(v2 + 88) = v6;
  *v6 = v2;
  v6[1] = sub_1002B119C;

  return sub_1002A8408(a1);
}

uint64_t sub_1002B119C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

__n128 sub_1002B1290@<Q0>(uint64_t a1@<X8>)
{
  sub_1002BF050(v4);
  v2 = v4[3];
  *(a1 + 32) = v4[2];
  *(a1 + 48) = v2;
  *(a1 + 64) = v5;
  result = v4[1];
  *a1 = v4[0];
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1002B12E0(uint64_t a1)
{
  v2 = sub_1002A82B4();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

uint64_t sub_1002B131C()
{
  v0 = type metadata accessor for LocalizedStringResource();
  sub_100163368(v0, qword_100925528);
  sub_10001AC90(v0, qword_100925528);
  return LocalizedStringResource.init(stringLiteral:)();
}

uint64_t sub_1002B1380@<X0>(uint64_t a1@<X8>)
{
  v47 = a1;
  v54 = sub_100140278(&qword_1008E60C0);
  v46 = *(v54 - 8);
  __chkstk_darwin(v54);
  v44 = &v40 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v45 = &v40 - v3;
  v4 = sub_100140278(&qword_1008E60C8);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v43 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v53 = &v40 - v8;
  __chkstk_darwin(v9);
  v52 = &v40 - v10;
  __chkstk_darwin(v11);
  v50 = &v40 - v12;
  __chkstk_darwin(v13);
  v51 = &v40 - v14;
  __chkstk_darwin(v15);
  v17 = &v40 - v16;
  __chkstk_darwin(v18);
  v42 = &v40 - v19;
  v65 = 1;
  v20 = sub_100140278(&qword_1008E60D0);
  v56 = sub_1002B4154();
  v48 = sub_1002A5BD4();
  v57 = sub_10014A6B0(&qword_1008E60D8, &qword_1008E60D0);
  ParameterSummaryCaseCondition.init(_:_:)();
  v58 = sub_10014A6B0(&qword_1008E60E0, &qword_1008E60C8);
  static ParameterSummaryCaseBuilder.buildExpression<A>(_:)();
  v59 = *(v5 + 8);
  v41 = v17;
  v59(v17, v4);
  v64 = 2;
  v21 = v51;
  v55 = v20;
  ParameterSummaryCaseCondition.init(_:_:)();
  static ParameterSummaryCaseBuilder.buildExpression<A>(_:)();
  v22 = v59;
  v59(v21, v4);
  v63 = 3;
  v23 = v50;
  ParameterSummaryCaseCondition.init(_:_:)();
  static ParameterSummaryCaseBuilder.buildExpression<A>(_:)();
  v22(v23, v4);
  v62 = 4;
  v24 = v52;
  ParameterSummaryCaseCondition.init(_:_:)();
  static ParameterSummaryCaseBuilder.buildExpression<A>(_:)();
  v49 = v5 + 8;
  v59(v24, v4);
  v61 = 5;
  v25 = v53;
  ParameterSummaryCaseCondition.init(_:_:)();
  static ParameterSummaryCaseBuilder.buildExpression<A>(_:)();
  v26 = v59;
  v59(v25, v4);
  v60 = 6;
  v27 = v43;
  ParameterSummaryCaseCondition.init(_:_:)();
  static ParameterSummaryCaseBuilder.buildExpression<A>(_:)();
  v26(v27, v4);
  v28 = v44;
  ParameterSummaryDefaultCaseCondition.init(_:)();
  sub_10014A6B0(&qword_1008E60E8, &qword_1008E60C0);
  v29 = v45;
  v30 = v54;
  static ParameterSummaryCaseBuilder.buildExpression<A>(_:)();
  v31 = *(v46 + 8);
  v31(v28, v30);
  v32 = v41;
  v33 = v42;
  v34 = v50;
  v35 = v51;
  v36 = v52;
  v37 = v53;
  static ParameterSummaryCaseBuilder.buildBlock<A, B, C, D, E, F, G>(_:_:_:_:_:_:_:)();
  v31(v29, v54);
  v38 = v59;
  v59(v37, v4);
  v38(v36, v4);
  v38(v34, v4);
  v38(v35, v4);
  v38(v32, v4);
  return (v38)(v33, v4);
}

uint64_t sub_1002B1BB0@<X0>(uint64_t a1@<X8>)
{
  v14[1] = a1;
  v1 = sub_100140278(&qword_1008E60F0);
  __chkstk_darwin(v1 - 8);
  v2 = sub_100140278(&qword_1008E60F8);
  __chkstk_darwin(v2);
  v3 = sub_100140278(&qword_1008E60D0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = v14 - v8;
  sub_1002B4154();
  ParameterSummaryString.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v10._countAndFlagsBits = 544499027;
  v10._object = 0xE400000000000000;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v10);
  swift_getKeyPath();
  sub_100140278(&qword_1008E6100);
  ParameterSummaryString.StringInterpolation.appendInterpolation<A, B>(_:)();

  v11._countAndFlagsBits = 0;
  v11._object = 0xE000000000000000;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v11);
  ParameterSummaryString.init(stringInterpolation:)();
  IntentParameterSummary.init(_:table:_:)();
  sub_10014A6B0(&qword_1008E60D8, &qword_1008E60D0);
  static ParameterSummaryBuilder.buildExpression<A>(_:)();
  v12 = *(v4 + 8);
  v12(v6, v3);
  static ParameterSummaryBuilder.buildBlock<A>(_:)();
  return (v12)(v9, v3);
}

uint64_t sub_1002B1EA8@<X0>(uint64_t a1@<X8>)
{
  v14[1] = a1;
  v1 = sub_100140278(&qword_1008E60F0);
  __chkstk_darwin(v1 - 8);
  v2 = sub_100140278(&qword_1008E60F8);
  __chkstk_darwin(v2);
  v3 = sub_100140278(&qword_1008E60D0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = v14 - v8;
  sub_1002B4154();
  ParameterSummaryString.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v10._countAndFlagsBits = 544499027;
  v10._object = 0xE400000000000000;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v10);
  swift_getKeyPath();
  sub_100140278(&qword_1008E6100);
  ParameterSummaryString.StringInterpolation.appendInterpolation<A, B>(_:)();

  v11._countAndFlagsBits = 0;
  v11._object = 0xE000000000000000;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v11);
  ParameterSummaryString.init(stringInterpolation:)();
  IntentParameterSummary.init(_:table:_:)();
  sub_10014A6B0(&qword_1008E60D8, &qword_1008E60D0);
  static ParameterSummaryBuilder.buildExpression<A>(_:)();
  v12 = *(v4 + 8);
  v12(v6, v3);
  static ParameterSummaryBuilder.buildBlock<A>(_:)();
  return (v12)(v9, v3);
}

uint64_t sub_1002B21A0@<X0>(uint64_t a1@<X8>)
{
  v14[1] = a1;
  v1 = sub_100140278(&qword_1008E60F0);
  __chkstk_darwin(v1 - 8);
  v2 = sub_100140278(&qword_1008E60F8);
  __chkstk_darwin(v2);
  v3 = sub_100140278(&qword_1008E60D0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = v14 - v8;
  sub_1002B4154();
  ParameterSummaryString.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v10._countAndFlagsBits = 544499027;
  v10._object = 0xE400000000000000;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v10);
  swift_getKeyPath();
  sub_100140278(&qword_1008E6100);
  ParameterSummaryString.StringInterpolation.appendInterpolation<A, B>(_:)();

  v11._countAndFlagsBits = 0;
  v11._object = 0xE000000000000000;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v11);
  ParameterSummaryString.init(stringInterpolation:)();
  IntentParameterSummary.init(_:table:_:)();
  sub_10014A6B0(&qword_1008E60D8, &qword_1008E60D0);
  static ParameterSummaryBuilder.buildExpression<A>(_:)();
  v12 = *(v4 + 8);
  v12(v6, v3);
  static ParameterSummaryBuilder.buildBlock<A>(_:)();
  return (v12)(v9, v3);
}

uint64_t sub_1002B2498@<X0>(uint64_t a1@<X8>)
{
  v14[1] = a1;
  v1 = sub_100140278(&qword_1008E60F0);
  __chkstk_darwin(v1 - 8);
  v2 = sub_100140278(&qword_1008E60F8);
  __chkstk_darwin(v2);
  v3 = sub_100140278(&qword_1008E60D0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = v14 - v8;
  sub_1002B4154();
  ParameterSummaryString.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v10._countAndFlagsBits = 544499027;
  v10._object = 0xE400000000000000;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v10);
  swift_getKeyPath();
  sub_100140278(&qword_1008E6100);
  ParameterSummaryString.StringInterpolation.appendInterpolation<A, B>(_:)();

  v11._countAndFlagsBits = 0;
  v11._object = 0xE000000000000000;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v11);
  ParameterSummaryString.init(stringInterpolation:)();
  IntentParameterSummary.init(_:table:_:)();
  sub_10014A6B0(&qword_1008E60D8, &qword_1008E60D0);
  static ParameterSummaryBuilder.buildExpression<A>(_:)();
  v12 = *(v4 + 8);
  v12(v6, v3);
  static ParameterSummaryBuilder.buildBlock<A>(_:)();
  return (v12)(v9, v3);
}

uint64_t sub_1002B2790@<X0>(uint64_t a1@<X8>)
{
  v14[1] = a1;
  v1 = sub_100140278(&qword_1008E60F0);
  __chkstk_darwin(v1 - 8);
  v2 = sub_100140278(&qword_1008E60F8);
  __chkstk_darwin(v2);
  v3 = sub_100140278(&qword_1008E60D0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = v14 - v8;
  sub_1002B4154();
  ParameterSummaryString.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v10._countAndFlagsBits = 544499027;
  v10._object = 0xE400000000000000;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v10);
  swift_getKeyPath();
  sub_100140278(&qword_1008E6100);
  ParameterSummaryString.StringInterpolation.appendInterpolation<A, B>(_:)();

  v11._countAndFlagsBits = 0;
  v11._object = 0xE000000000000000;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v11);
  ParameterSummaryString.init(stringInterpolation:)();
  IntentParameterSummary.init(_:table:_:)();
  sub_10014A6B0(&qword_1008E60D8, &qword_1008E60D0);
  static ParameterSummaryBuilder.buildExpression<A>(_:)();
  v12 = *(v4 + 8);
  v12(v6, v3);
  static ParameterSummaryBuilder.buildBlock<A>(_:)();
  return (v12)(v9, v3);
}

uint64_t sub_1002B2A88@<X0>(uint64_t a1@<X8>)
{
  v14[1] = a1;
  v1 = sub_100140278(&qword_1008E60F0);
  __chkstk_darwin(v1 - 8);
  v2 = sub_100140278(&qword_1008E60F8);
  __chkstk_darwin(v2);
  v3 = sub_100140278(&qword_1008E60D0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = v14 - v8;
  sub_1002B4154();
  ParameterSummaryString.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v10._countAndFlagsBits = 544499027;
  v10._object = 0xE400000000000000;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v10);
  swift_getKeyPath();
  sub_100140278(&qword_1008E6100);
  ParameterSummaryString.StringInterpolation.appendInterpolation<A, B>(_:)();

  v11._countAndFlagsBits = 0;
  v11._object = 0xE000000000000000;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v11);
  ParameterSummaryString.init(stringInterpolation:)();
  IntentParameterSummary.init(_:table:_:)();
  sub_10014A6B0(&qword_1008E60D8, &qword_1008E60D0);
  static ParameterSummaryBuilder.buildExpression<A>(_:)();
  v12 = *(v4 + 8);
  v12(v6, v3);
  static ParameterSummaryBuilder.buildBlock<A>(_:)();
  return (v12)(v9, v3);
}

uint64_t sub_1002B2D80()
{
  swift_getKeyPath();
  sub_1002B4154();
  v0 = static IntentParameterSummary.ParameterKeyPathsBuilder.buildExpression<A>(_:)();

  swift_getKeyPath();

  v1 = static IntentParameterSummary.ParameterKeyPathsBuilder.buildExpression<A>(_:)();

  sub_100140278(&unk_1008E4E20);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1006D68D0;
  *(v2 + 32) = v0;
  *(v2 + 40) = v1;

  v3 = static IntentParameterSummary.ParameterKeyPathsBuilder.buildBlock(_:)();

  return v3;
}

uint64_t sub_1002B2E90@<X0>(uint64_t a1@<X8>)
{
  v14[1] = a1;
  v1 = sub_100140278(&qword_1008E60F0);
  __chkstk_darwin(v1 - 8);
  v2 = sub_100140278(&qword_1008E60F8);
  __chkstk_darwin(v2);
  v3 = sub_100140278(&qword_1008E60D0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = v14 - v8;
  sub_1002B4154();
  ParameterSummaryString.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v10._countAndFlagsBits = 544499027;
  v10._object = 0xE400000000000000;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v10);
  swift_getKeyPath();
  sub_100140278(&qword_1008E6100);
  ParameterSummaryString.StringInterpolation.appendInterpolation<A, B>(_:)();

  v11._countAndFlagsBits = 0;
  v11._object = 0xE000000000000000;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v11);
  ParameterSummaryString.init(stringInterpolation:)();
  IntentParameterSummary.init(_:table:)();
  sub_10014A6B0(&qword_1008E60D8, &qword_1008E60D0);
  static ParameterSummaryBuilder.buildExpression<A>(_:)();
  v12 = *(v4 + 8);
  v12(v6, v3);
  static ParameterSummaryBuilder.buildBlock<A>(_:)();
  return (v12)(v9, v3);
}

uint64_t sub_1002B3164()
{
  v0 = sub_100140278(&qword_1008DD138);
  __chkstk_darwin(v0 - 8);
  v2 = &v7 - v1;
  v3 = type metadata accessor for LocalizedStringResource();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = type metadata accessor for TypeDisplayRepresentation();
  sub_100163368(v5, qword_100925540);
  sub_10001AC90(v5, qword_100925540);
  LocalizedStringResource.init(stringLiteral:)();
  (*(v4 + 56))(v2, 1, 1, v3);
  return TypeDisplayRepresentation.init(name:numericFormat:)();
}

uint64_t sub_1002B32D4(unsigned __int8 a1)
{
  v1 = 0x7961646E6F6DLL;
  if (a1 <= 3u)
  {
    v6 = 0x616473656E646577;
    if (a1 != 2)
    {
      v6 = 0x7961647372756874;
    }

    if (a1)
    {
      v1 = 0x79616473657574;
    }

    if (a1 <= 1u)
    {
      return v1;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v2 = 0x7961646E7573;
    v3 = 0x7961646F74;
    if (a1 != 7)
    {
      v3 = 0x796C696164;
    }

    if (a1 != 6)
    {
      v2 = v3;
    }

    v4 = 0x796164697266;
    if (a1 != 4)
    {
      v4 = 0x7961647275746173;
    }

    if (a1 <= 5u)
    {
      return v4;
    }

    else
    {
      return v2;
    }
  }
}

unint64_t sub_1002B33E8()
{
  result = qword_1008E5E78;
  if (!qword_1008E5E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E5E78);
  }

  return result;
}

Swift::Int sub_1002B343C()
{
  Hasher.init(_seed:)();
  sub_100413CBC();
  return Hasher._finalize()();
}

Swift::Int sub_1002B348C()
{
  Hasher.init(_seed:)();
  sub_100413CBC();
  return Hasher._finalize()();
}

unint64_t sub_1002B34D0@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1002C08D8(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1002B3500@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1002B32D4(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_1002B3530()
{
  result = qword_1008E5E80;
  if (!qword_1008E5E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E5E80);
  }

  return result;
}

unint64_t sub_1002B3588()
{
  result = qword_1008E5E88;
  if (!qword_1008E5E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E5E88);
  }

  return result;
}

unint64_t sub_1002B35E0()
{
  result = qword_1008E5E90;
  if (!qword_1008E5E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E5E90);
  }

  return result;
}

unint64_t sub_1002B3638()
{
  result = qword_1008E5E98;
  if (!qword_1008E5E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E5E98);
  }

  return result;
}

unint64_t sub_1002B368C()
{
  result = qword_1008E5EA0;
  if (!qword_1008E5EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E5EA0);
  }

  return result;
}

unint64_t sub_1002B36E0()
{
  result = qword_1008E5EA8;
  if (!qword_1008E5EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E5EA8);
  }

  return result;
}

unint64_t sub_1002B3738()
{
  result = qword_1008E5EB0;
  if (!qword_1008E5EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E5EB0);
  }

  return result;
}

unint64_t sub_1002B3838()
{
  result = qword_1008E5EB8;
  if (!qword_1008E5EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E5EB8);
  }

  return result;
}

uint64_t sub_1002B388C(uint64_t a1)
{
  v2 = sub_1002B3838();

  return static AppEnum.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_1002B38DC()
{
  result = qword_1008E5EC0;
  if (!qword_1008E5EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E5EC0);
  }

  return result;
}

unint64_t sub_1002B3934()
{
  result = qword_1008E5EC8;
  if (!qword_1008E5EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E5EC8);
  }

  return result;
}

unint64_t sub_1002B398C()
{
  result = qword_1008E5ED0;
  if (!qword_1008E5ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E5ED0);
  }

  return result;
}

uint64_t sub_1002B39E4(uint64_t a1)
{
  v2 = sub_1002B3738();

  return CaseDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_1002B3A88()
{
  result = qword_1008E5EE8;
  if (!qword_1008E5EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E5EE8);
  }

  return result;
}

uint64_t sub_1002B3ADC(uint64_t a1, uint64_t a2)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;

  return _swift_task_switch(sub_1002B3B6C, 0, 0);
}

void sub_1002B3B6C()
{
  AppDependency.wrappedValue.getter();
  v1 = *(v0 + 16);
  *(v0 + 16) = 0;
  v2 = [v1 activityMoveModeWithError:v0 + 16];

  v3 = *(v0 + 16);
  if (!v2)
  {
    v6 = v3;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    goto LABEL_5;
  }

  v4 = v3;
  if ([v2 activityMoveMode] == 2)
  {

    v5 = &off_100844DE8;
LABEL_35:
    v34 = *(v0 + 8);

    v34(v5);
    return;
  }

  v8 = [objc_opt_self() sharedBehavior];
  if (!v8)
  {
    __break(1u);
LABEL_48:
    __break(1u);
    return;
  }

  v9 = v8;
  v10 = [v8 isStandalonePhoneFitnessMode];

  if (v10)
  {
    v5 = _swiftEmptyArrayStorage;
  }

  else
  {
    v5 = &off_100844E10;
  }

  AppDependency.wrappedValue.getter();
  v11 = *(v0 + 16);
  v12 = [v11 unitManager];

  if (!v12)
  {
    goto LABEL_48;
  }

  v13 = [v12 userActiveEnergyBurnedUnit];

  IsCalorieUnit = FIUIHKUnitIsCalorieUnit();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (IsCalorieUnit)
  {
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      if (v10)
      {
        v35 = _swiftEmptyArrayStorage;
      }

      else
      {
        v35 = &off_100844E10;
      }

      v5 = sub_1001A2AA4(0, v35[2] + 1, 1, v5);
    }

    v17 = *(v5 + 2);
    v16 = *(v5 + 3);
    v18 = v17 + 1;
    v19 = 1;
    if (v17 >= v16 >> 1)
    {
      v5 = sub_1001A2AA4((v16 > 1), v17 + 1, 1, v5);
    }
  }

  else
  {
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      if (v10)
      {
        v36 = _swiftEmptyArrayStorage;
      }

      else
      {
        v36 = &off_100844E10;
      }

      v5 = sub_1001A2AA4(0, v36[2] + 1, 1, v5);
    }

    v17 = *(v5 + 2);
    v20 = *(v5 + 3);
    v18 = v17 + 1;
    if (v17 >= v20 >> 1)
    {
      v5 = sub_1001A2AA4((v20 > 1), v17 + 1, 1, v5);
    }

    v19 = 2;
  }

  *(v5 + 2) = v18;
  v5[v17 + 32] = v19;
  if (v10)
  {

    goto LABEL_35;
  }

  v21 = *(v5 + 3);
  if (v18 >= v21 >> 1)
  {
    v5 = sub_1001A2AA4((v21 > 1), v18 + 1, 1, v5);
  }

  *(v5 + 2) = v18 + 1;
  v5[v18 + 32] = 4;
  AppDependency.wrappedValue.getter();
  v22 = *(v0 + 16);
  *(v0 + 16) = 0;
  v23 = [v22 wheelchairUseWithError:v0 + 16];

  v24 = *(v0 + 16);
  if (v23)
  {
    v25 = v24;
    v26 = [v23 wheelchairUse];
    v28 = *(v5 + 2);
    v27 = *(v5 + 3);
    v29 = v27 >> 1;
    v30 = v28 + 1;
    if (v26 == 2)
    {
      if (v29 <= v28)
      {
        v5 = sub_1001A2AA4((v27 > 1), v28 + 1, 1, v5);
      }

      *(v5 + 2) = v30;
      v31 = &v5[v28];
      v32 = 6;
    }

    else
    {
      if (v29 <= v28)
      {
        v5 = sub_1001A2AA4((v27 > 1), v28 + 1, 1, v5);
      }

      *(v5 + 2) = v30;
      v31 = &v5[v28];
      v32 = 5;
    }

    v31[32] = v32;
    goto LABEL_35;
  }

  v33 = v24;

  _convertNSErrorToError(_:)();

  swift_willThrow();
LABEL_5:
  v7 = *(v0 + 8);

  v7();
}

uint64_t sub_1002B4000(uint64_t a1)
{
  *(v2 + 16) = a1;
  v3 = *v1;
  v4 = v1[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  *v5 = v2;
  v5[1] = sub_100202050;

  return sub_1002B3ADC(v3, v4);
}

uint64_t sub_1002B409C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_10002BBC0;

  return DynamicOptionsProvider.defaultResult()(a1, a2, a3);
}

unint64_t sub_1002B4154()
{
  result = qword_1008E5EF0;
  if (!qword_1008E5EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E5EF0);
  }

  return result;
}

unint64_t sub_1002B41AC()
{
  result = qword_1008E5EF8;
  if (!qword_1008E5EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E5EF8);
  }

  return result;
}

unint64_t sub_1002B4204()
{
  result = qword_1008E5F00;
  if (!qword_1008E5F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E5F00);
  }

  return result;
}

uint64_t sub_1002B42A8(uint64_t a1)
{
  v2[81] = v1;
  v2[80] = a1;
  v3 = sub_100140278(&qword_1008DEC58);
  v2[82] = v3;
  v2[83] = *(v3 - 8);
  v2[84] = swift_task_alloc();
  type metadata accessor for String.LocalizationValue.StringInterpolation();
  v2[85] = swift_task_alloc();
  sub_100140278(&qword_1008E6000);
  v2[86] = swift_task_alloc();
  sub_100140278(&qword_1008E6008);
  v2[87] = swift_task_alloc();
  sub_100140278(&qword_1008E6010);
  v2[88] = swift_task_alloc();
  sub_100140278(&qword_1008DFAB8);
  v2[89] = swift_task_alloc();
  v2[90] = swift_task_alloc();
  v2[91] = swift_task_alloc();
  v2[92] = swift_task_alloc();
  v2[93] = swift_task_alloc();
  v2[94] = swift_task_alloc();
  sub_100140278(&qword_1008DEC98);
  v2[95] = swift_task_alloc();
  v2[96] = swift_task_alloc();
  v2[97] = swift_task_alloc();
  v4 = type metadata accessor for DisplayRepresentation();
  v2[98] = v4;
  v2[99] = *(v4 - 8);
  v2[100] = swift_task_alloc();
  v5 = type metadata accessor for LocalizedStringResource();
  v2[101] = v5;
  v2[102] = *(v5 - 8);
  v2[103] = swift_task_alloc();
  sub_100140278(&qword_1008DD130);
  v2[104] = swift_task_alloc();
  v6 = type metadata accessor for IntentDialog();
  v2[105] = v6;
  v2[106] = *(v6 - 8);
  v2[107] = swift_task_alloc();
  v2[108] = swift_task_alloc();
  type metadata accessor for MainActor();
  v2[109] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[110] = v8;
  v2[111] = v7;

  return _swift_task_switch(sub_1002B46A0, v8, v7);
}

uint64_t sub_1002B46A0()
{
  *(v0 + 896) = *(*(v0 + 648) + 16);
  IntentParameter.wrappedValue.getter();
  if (*(v0 + 976) <= 2u && !*(v0 + 976))
  {

    goto LABEL_13;
  }

  v1 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v1)
  {
LABEL_13:

    v23 = *(v0 + 848);
    v24 = *(v0 + 840);
    v6 = *(v0 + 832);
    v25 = *(v0 + 648);
    *(v0 + 336) = *v25;
    v26 = v25[4];
    v28 = v25[1];
    v27 = v25[2];
    *(v0 + 384) = v25[3];
    *(v0 + 400) = v26;
    *(v0 + 352) = v28;
    *(v0 + 368) = v27;
    LocalizedStringResource.init(stringLiteral:)();
    IntentDialog.init(_:)();
    (*(v23 + 56))(v6, 0, 1, v24);
    v29 = swift_allocObject();
    v29[1] = *v25;
    v30 = v25[4];
    v32 = v25[1];
    v31 = v25[2];
    v29[4] = v25[3];
    v29[5] = v30;
    v29[2] = v32;
    v29[3] = v31;
    type metadata accessor for AppIntentError();
    sub_1002C1AE8(&qword_1008E6018, &type metadata accessor for AppIntentError);
    swift_allocError();
    sub_1002C1750(v25, v0 + 416);
    sub_1002C1788();
    goto LABEL_14;
  }

  v2 = sub_1002B8864();
  *(v0 + 904) = v2;
  if (v3)
  {
    v4 = *(v0 + 848);
    v5 = *(v0 + 840);
    v6 = *(v0 + 832);
    v7 = *(v0 + 648);

    *(v0 + 16) = *v7;
    v8 = v7[1];
    v9 = v7[2];
    v10 = v7[4];
    *(v0 + 64) = v7[3];
    *(v0 + 80) = v10;
    *(v0 + 32) = v8;
    *(v0 + 48) = v9;
    LocalizedStringResource.init(stringLiteral:)();
    IntentDialog.init(_:)();
    (*(v4 + 56))(v6, 0, 1, v5);
    v11 = swift_allocObject();
    v11[1] = *v7;
    v12 = v7[4];
    v14 = v7[1];
    v13 = v7[2];
    v11[4] = v7[3];
    v11[5] = v12;
    v11[2] = v14;
    v11[3] = v13;
    type metadata accessor for AppIntentError();
    sub_1002C1AE8(&qword_1008E6018, &type metadata accessor for AppIntentError);
    swift_allocError();
    sub_1002C1750(v7, v0 + 96);
    sub_1002C1788();
LABEL_14:
    ForegroundContinuableIntent.needsToContinueInForegroundError(_:requestConfirmation:continuation:)();

    sub_10000EA04(v6, &qword_1008DD130);
    swift_willThrow();

    v33 = *(v0 + 8);

    return v33();
  }

  v15 = v2;
  IntentParameter.wrappedValue.getter();
  v16 = *(v0 + 977);
  v17 = 1.0;
  if (v16 <= 4)
  {
    v17 = dbl_1006E5B98[v16];
  }

  *(v0 + 912) = v17;
  v18 = *(v0 + 648);
  v19 = v15 - fmod(v15, v17);
  *(v0 + 920) = *(v18 + 24);
  IntentParameter.wrappedValue.getter();
  v20 = *(v0 + 978);
  if (v20 >= 7)
  {
    if (v20 == 7)
    {
      v34 = swift_task_alloc();
      *(v0 + 944) = v34;
      *v34 = v0;
      v34[1] = sub_1002B816C;
      v36 = v19;
      v37 = 1;
    }

    else
    {
      v35 = swift_task_alloc();
      *(v0 + 960) = v35;
      *v35 = v0;
      v35[1] = sub_1002B82A8;
      v36 = v19;
      v37 = 0;
    }

    return sub_1002B890C(v37, v36);
  }

  else
  {
    v21 = swift_task_alloc();
    *(v0 + 928) = v21;
    *v21 = v0;
    v21[1] = sub_1002B4DC4;

    return sub_1002B9A2C(v19);
  }
}

uint64_t sub_1002B4DC4()
{
  v2 = *v1;
  *(*v1 + 936) = v0;

  v3 = *(v2 + 888);
  v4 = *(v2 + 880);
  if (v0)
  {
    v5 = sub_1002B86E4;
  }

  else
  {
    v5 = sub_1002B4F00;
  }

  return _swift_task_switch(v5, v4, v3);
}

id sub_1002B4F00()
{

  v1 = sub_1002BFD30();
  IntentParameter.wrappedValue.getter();
  if (*(v1 + 16) && (v2 = sub_1004C5F10(*(v0 + 979)), (v3 & 1) != 0))
  {
    v4 = *(v0 + 824);
    v5 = *(v0 + 816);
    v6 = *(v0 + 808);
    v7 = *(v0 + 800);
    v8 = *(v0 + 792);
    v9 = *(v0 + 784);
    (*(v8 + 16))(v7, *(v1 + 56) + *(v8 + 72) * v2, v9);

    DisplayRepresentation.title.getter();
    (*(v8 + 8))(v7, v9);
    v10 = LocalizedStringResource.key.getter();
    v12 = v11;
    v13 = v10;
    (*(v5 + 8))(v4, v6);
  }

  else
  {

    v13 = 0;
    v12 = 0xE000000000000000;
  }

  IntentParameter.wrappedValue.getter();
  v14 = *(v0 + 980);
  if (v14 > 2)
  {
    v188 = v12;
    if (*(v0 + 980) > 4u)
    {
      v63 = *(v0 + 776);
      v146 = *(v0 + 768);
      v149 = *(v0 + 760);
      v64 = *(v0 + 752);
      v65 = *(v0 + 744);
      if (v14 == 5)
      {
        v164 = *(v0 + 736);
        v170 = *(v0 + 728);
        v175 = *(v0 + 752);
        v66 = *(v0 + 720);
        v150 = *(v0 + 712);
        v158 = *(v0 + 688);
        v154 = *(v0 + 696);
        v67 = *(v0 + 672);
        v178 = *(v0 + 656);
        v184 = *(v0 + 664);
        fmod(*(v0 + 904), *(v0 + 912));
        v68 = [objc_opt_self() hours];
        sub_1000059F8(0, &qword_1008DEE10);
        Measurement.init(value:unit:)();
        v69 = sub_100140278(&qword_1008DECB0);
        (*(*(v69 - 8) + 56))(v63, 1, 1, v69);
        v70 = *(v184 + 56);
        v70(v64, 1, 1, v178);
        v70(v65, 1, 1, v178);
        (*(v184 + 16))(v164, v67, v178);
        v70(v164, 0, 1, v178);
        v70(v170, 1, 1, v178);
        sub_100140278(&qword_1008DEDE8);
        LocalizedStringResource.init(stringLiteral:)();
        v71 = EntityProperty<>.init(title:)();
        sub_100140278(&qword_1008DFAC0);
        v190 = v71;

        LocalizedStringResource.init(stringLiteral:)();
        v195 = EntityProperty<>.init(title:)();

        LocalizedStringResource.init(stringLiteral:)();
        v194 = EntityProperty<>.init(title:)();

        LocalizedStringResource.init(stringLiteral:)();
        v193 = EntityProperty<>.init(title:)();

        LocalizedStringResource.init(stringLiteral:)();
        v192 = EntityProperty<>.init(title:)();
        sub_100140278(&qword_1008E6028);

        LocalizedStringResource.init(stringLiteral:)();
        v191 = EntityProperty<>.init(title:)();
        sub_10001B104(v63, v146, &qword_1008DEC98);
        sub_10001B104(v146, v149, &qword_1008DEC98);

        EntityProperty.wrappedValue.setter();
        sub_10000EA04(v146, &qword_1008DEC98);
        sub_10001B104(v175, v66, &qword_1008DFAB8);
        sub_10001B104(v66, v150, &qword_1008DFAB8);
        EntityProperty.wrappedValue.setter();
        sub_10000EA04(v66, &qword_1008DFAB8);
        sub_10001B104(v65, v66, &qword_1008DFAB8);
        sub_10001B104(v66, v150, &qword_1008DFAB8);
        EntityProperty.wrappedValue.setter();
        sub_10000EA04(v66, &qword_1008DFAB8);
        sub_10001B104(v164, v66, &qword_1008DFAB8);
        sub_10001B104(v66, v150, &qword_1008DFAB8);
        EntityProperty.wrappedValue.setter();
        sub_10000EA04(v66, &qword_1008DFAB8);
        sub_10001B104(v170, v66, &qword_1008DFAB8);
        sub_10001B104(v66, v150, &qword_1008DFAB8);
        EntityProperty.wrappedValue.setter();
        sub_10000EA04(v66, &qword_1008DFAB8);
        *(v0 + 560) = v13;
        *(v0 + 568) = v188;
        EntityProperty.wrappedValue.setter();
        sub_10000EA04(v170, &qword_1008DFAB8);
        sub_10000EA04(v164, &qword_1008DFAB8);
        sub_10000EA04(v65, &qword_1008DFAB8);
        sub_10000EA04(v175, &qword_1008DFAB8);
        sub_10000EA04(v63, &qword_1008DEC98);

        v25 = v178;
        v26 = v67;
        v72 = Measurement<>.formatted()();
        v74 = v73;
        v75 = type metadata accessor for _GeneratedContentOptions();
        (*(*(v75 - 8) + 56))(v154, 1, 1, v75);
        String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
        v76 = 0xD00000000000001CLL;
        v77 = 0x8000000100752C10;
      }

      else
      {
        v173 = *(v0 + 736);
        v176 = *(v0 + 752);
        v167 = *(v0 + 728);
        v131 = *(v0 + 720);
        v151 = *(v0 + 712);
        v158 = *(v0 + 688);
        v155 = *(v0 + 696);
        v132 = *(v0 + 672);
        v181 = *(v0 + 656);
        v184 = *(v0 + 664);
        fmod(*(v0 + 904), *(v0 + 912));
        v133 = [objc_opt_self() hours];
        sub_1000059F8(0, &qword_1008DEE10);
        Measurement.init(value:unit:)();
        v134 = sub_100140278(&qword_1008DECB0);
        (*(*(v134 - 8) + 56))(v63, 1, 1, v134);
        v135 = *(v184 + 56);
        v135(v64, 1, 1, v181);
        v135(v65, 1, 1, v181);
        v135(v173, 1, 1, v181);
        (*(v184 + 16))(v167, v132, v181);
        v135(v167, 0, 1, v181);
        sub_100140278(&qword_1008DEDE8);
        LocalizedStringResource.init(stringLiteral:)();
        v136 = EntityProperty<>.init(title:)();
        sub_100140278(&qword_1008DFAC0);
        v190 = v136;

        LocalizedStringResource.init(stringLiteral:)();
        v195 = EntityProperty<>.init(title:)();

        LocalizedStringResource.init(stringLiteral:)();
        v194 = EntityProperty<>.init(title:)();

        LocalizedStringResource.init(stringLiteral:)();
        v193 = EntityProperty<>.init(title:)();

        LocalizedStringResource.init(stringLiteral:)();
        v192 = EntityProperty<>.init(title:)();
        sub_100140278(&qword_1008E6028);

        LocalizedStringResource.init(stringLiteral:)();
        v191 = EntityProperty<>.init(title:)();
        sub_10001B104(v63, v146, &qword_1008DEC98);
        sub_10001B104(v146, v149, &qword_1008DEC98);

        EntityProperty.wrappedValue.setter();
        sub_10000EA04(v146, &qword_1008DEC98);
        sub_10001B104(v176, v131, &qword_1008DFAB8);
        sub_10001B104(v131, v151, &qword_1008DFAB8);
        EntityProperty.wrappedValue.setter();
        sub_10000EA04(v131, &qword_1008DFAB8);
        sub_10001B104(v65, v131, &qword_1008DFAB8);
        sub_10001B104(v131, v151, &qword_1008DFAB8);
        EntityProperty.wrappedValue.setter();
        sub_10000EA04(v131, &qword_1008DFAB8);
        sub_10001B104(v173, v131, &qword_1008DFAB8);
        sub_10001B104(v131, v151, &qword_1008DFAB8);
        EntityProperty.wrappedValue.setter();
        sub_10000EA04(v131, &qword_1008DFAB8);
        sub_10001B104(v167, v131, &qword_1008DFAB8);
        sub_10001B104(v131, v151, &qword_1008DFAB8);
        EntityProperty.wrappedValue.setter();
        sub_10000EA04(v131, &qword_1008DFAB8);
        *(v0 + 544) = v13;
        *(v0 + 552) = v188;
        EntityProperty.wrappedValue.setter();
        sub_10000EA04(v167, &qword_1008DFAB8);
        sub_10000EA04(v173, &qword_1008DFAB8);
        sub_10000EA04(v65, &qword_1008DFAB8);
        sub_10000EA04(v176, &qword_1008DFAB8);
        sub_10000EA04(v63, &qword_1008DEC98);

        v25 = v181;
        v26 = v132;
        v72 = Measurement<>.formatted()();
        v74 = v137;
        v138 = type metadata accessor for _GeneratedContentOptions();
        (*(*(v138 - 8) + 56))(v155, 1, 1, v138);
        String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
        v77 = 0x8000000100752BF0;
        v76 = 0xD00000000000001BLL;
      }

      String.LocalizationValue.StringInterpolation.appendLiteral(_:)(*&v76);
      v78._countAndFlagsBits = v72;
      v78._object = v74;
      String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v78);

      v79._countAndFlagsBits = 46;
      v79._object = 0xE100000000000000;
      String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v79);
      IntentDialog.init(stringInterpolation:)();
      _GeneratedContentFallback.init(_:localeIdentifier:)();
      v80 = type metadata accessor for _GeneratedContentFallback();
      (*(*(v80 - 8) + 56))(v158, 0, 1, v80);
      sub_1002B4154();
      sub_1002C17DC();
      IntentDialog._GeneratedDialogContent.init(fromResult:options:fallbackDialog:)();
      IntentDialog.init<A, B>(from:)();
      v130 = v184;
    }

    else
    {
      if (v14 == 3)
      {
        v15 = *(v0 + 776);
        v145 = *(v0 + 768);
        v148 = *(v0 + 760);
        v16 = *(v0 + 752);
        v168 = *(v0 + 744);
        v17 = *(v0 + 736);
        v174 = *(v0 + 728);
        v18 = *(v0 + 720);
        v141 = *(v0 + 712);
        v157 = *(v0 + 688);
        v152 = *(v0 + 696);
        v19 = *(v0 + 672);
        v20 = *(v0 + 664);
        v182 = *(v0 + 656);
        fmod(*(v0 + 904), *(v0 + 912));
        v21 = [objc_opt_self() minutes];
        sub_1000059F8(0, &qword_1008DEE10);
        Measurement.init(value:unit:)();
        v22 = sub_100140278(&qword_1008DECB0);
        (*(*(v22 - 8) + 56))(v15, 1, 1, v22);
        v156 = v20;
        (*(v20 + 16))(v16, v19, v182);
        v23 = *(v20 + 56);
        v23(v16, 0, 1, v182);
        v23(v168, 1, 1, v182);
        v23(v17, 1, 1, v182);
        v23(v174, 1, 1, v182);
        sub_100140278(&qword_1008DEDE8);
        LocalizedStringResource.init(stringLiteral:)();
        v24 = EntityProperty<>.init(title:)();
        sub_100140278(&qword_1008DFAC0);
        v190 = v24;

        LocalizedStringResource.init(stringLiteral:)();
        v195 = EntityProperty<>.init(title:)();

        LocalizedStringResource.init(stringLiteral:)();
        v194 = EntityProperty<>.init(title:)();

        LocalizedStringResource.init(stringLiteral:)();
        v193 = EntityProperty<>.init(title:)();

        LocalizedStringResource.init(stringLiteral:)();
        v192 = EntityProperty<>.init(title:)();
        sub_100140278(&qword_1008E6028);

        LocalizedStringResource.init(stringLiteral:)();
        v191 = EntityProperty<>.init(title:)();
        sub_10001B104(v15, v145, &qword_1008DEC98);
        sub_10001B104(v145, v148, &qword_1008DEC98);

        EntityProperty.wrappedValue.setter();
        sub_10000EA04(v145, &qword_1008DEC98);
        sub_10001B104(v16, v18, &qword_1008DFAB8);
        sub_10001B104(v18, v141, &qword_1008DFAB8);
        EntityProperty.wrappedValue.setter();
        sub_10000EA04(v18, &qword_1008DFAB8);
        sub_10001B104(v168, v18, &qword_1008DFAB8);
        sub_10001B104(v18, v141, &qword_1008DFAB8);
        EntityProperty.wrappedValue.setter();
        sub_10000EA04(v18, &qword_1008DFAB8);
        sub_10001B104(v17, v18, &qword_1008DFAB8);
        sub_10001B104(v18, v141, &qword_1008DFAB8);
        EntityProperty.wrappedValue.setter();
        sub_10000EA04(v18, &qword_1008DFAB8);
        sub_10001B104(v174, v18, &qword_1008DFAB8);
        sub_10001B104(v18, v141, &qword_1008DFAB8);
        EntityProperty.wrappedValue.setter();
        sub_10000EA04(v18, &qword_1008DFAB8);
        *(v0 + 592) = v13;
        *(v0 + 600) = v188;
        EntityProperty.wrappedValue.setter();
        sub_10000EA04(v174, &qword_1008DFAB8);
        sub_10000EA04(v17, &qword_1008DFAB8);
        sub_10000EA04(v168, &qword_1008DFAB8);
        sub_10000EA04(v16, &qword_1008DFAB8);
        sub_10000EA04(v15, &qword_1008DEC98);

        v25 = v182;
        v26 = v19;
        v27 = Measurement<>.formatted()();
        v29 = v28;
        v30 = type metadata accessor for _GeneratedContentOptions();
        (*(*(v30 - 8) + 56))(v152, 1, 1, v30);
        String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
        v31 = 0x8000000100752C50;
        v32 = 0xD00000000000001BLL;
      }

      else
      {
        v119 = *(v0 + 776);
        v142 = *(v0 + 768);
        v144 = *(v0 + 760);
        v166 = *(v0 + 744);
        v172 = *(v0 + 736);
        v180 = *(v0 + 728);
        v186 = *(v0 + 752);
        v120 = *(v0 + 720);
        v147 = *(v0 + 712);
        v157 = *(v0 + 688);
        v153 = *(v0 + 696);
        v121 = *(v0 + 672);
        v122 = *(v0 + 664);
        v123 = *(v0 + 656);
        fmod(*(v0 + 904), *(v0 + 912));
        v124 = [objc_opt_self() minutes];
        sub_1000059F8(0, &qword_1008DEE10);
        Measurement.init(value:unit:)();
        v125 = sub_100140278(&qword_1008DECB0);
        (*(*(v125 - 8) + 56))(v119, 1, 1, v125);
        v156 = v122;
        v126 = *(v122 + 56);
        v126(v186, 1, 1, v123);
        (*(v122 + 16))(v166, v121, v123);
        v126(v166, 0, 1, v123);
        v126(v172, 1, 1, v123);
        v126(v180, 1, 1, v123);
        sub_100140278(&qword_1008DEDE8);
        LocalizedStringResource.init(stringLiteral:)();
        v127 = EntityProperty<>.init(title:)();
        sub_100140278(&qword_1008DFAC0);
        v190 = v127;

        LocalizedStringResource.init(stringLiteral:)();
        v195 = EntityProperty<>.init(title:)();

        LocalizedStringResource.init(stringLiteral:)();
        v194 = EntityProperty<>.init(title:)();

        LocalizedStringResource.init(stringLiteral:)();
        v193 = EntityProperty<>.init(title:)();

        LocalizedStringResource.init(stringLiteral:)();
        v192 = EntityProperty<>.init(title:)();
        sub_100140278(&qword_1008E6028);

        LocalizedStringResource.init(stringLiteral:)();
        v191 = EntityProperty<>.init(title:)();
        sub_10001B104(v119, v142, &qword_1008DEC98);
        sub_10001B104(v142, v144, &qword_1008DEC98);

        EntityProperty.wrappedValue.setter();
        sub_10000EA04(v142, &qword_1008DEC98);
        sub_10001B104(v186, v120, &qword_1008DFAB8);
        sub_10001B104(v120, v147, &qword_1008DFAB8);
        EntityProperty.wrappedValue.setter();
        sub_10000EA04(v120, &qword_1008DFAB8);
        sub_10001B104(v166, v120, &qword_1008DFAB8);
        sub_10001B104(v120, v147, &qword_1008DFAB8);
        EntityProperty.wrappedValue.setter();
        sub_10000EA04(v120, &qword_1008DFAB8);
        sub_10001B104(v172, v120, &qword_1008DFAB8);
        sub_10001B104(v120, v147, &qword_1008DFAB8);
        EntityProperty.wrappedValue.setter();
        sub_10000EA04(v120, &qword_1008DFAB8);
        sub_10001B104(v180, v120, &qword_1008DFAB8);
        sub_10001B104(v120, v147, &qword_1008DFAB8);
        EntityProperty.wrappedValue.setter();
        sub_10000EA04(v120, &qword_1008DFAB8);
        *(v0 + 576) = v13;
        *(v0 + 584) = v188;
        EntityProperty.wrappedValue.setter();
        sub_10000EA04(v180, &qword_1008DFAB8);
        sub_10000EA04(v172, &qword_1008DFAB8);
        sub_10000EA04(v166, &qword_1008DFAB8);
        sub_10000EA04(v186, &qword_1008DFAB8);
        sub_10000EA04(v119, &qword_1008DEC98);

        v25 = v123;
        v26 = v121;
        v27 = Measurement<>.formatted()();
        v29 = v128;
        v129 = type metadata accessor for _GeneratedContentOptions();
        (*(*(v129 - 8) + 56))(v153, 1, 1, v129);
        String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
        v32 = 0xD00000000000001FLL;
        v31 = 0x8000000100752C30;
      }

      String.LocalizationValue.StringInterpolation.appendLiteral(_:)(*&v32);
      v33._countAndFlagsBits = v27;
      v33._object = v29;
      String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v33);

      v34._countAndFlagsBits = 46;
      v34._object = 0xE100000000000000;
      String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v34);
      IntentDialog.init(stringInterpolation:)();
      _GeneratedContentFallback.init(_:localeIdentifier:)();
      v35 = type metadata accessor for _GeneratedContentFallback();
      (*(*(v35 - 8) + 56))(v157, 0, 1, v35);
      sub_1002B4154();
      sub_1002C17DC();
      IntentDialog._GeneratedDialogContent.init(fromResult:options:fallbackDialog:)();
      IntentDialog.init<A, B>(from:)();
      v130 = v156;
    }

    (*(v130 + 8))(v26, v25);
    goto LABEL_24;
  }

  if (*(v0 + 980))
  {
    v187 = v13;
    v189 = v12;
    if (v14 == 1)
    {
      v36 = v0;
      v159 = *(v0 + 768);
      v161 = *(v0 + 760);
      v37 = *(v0 + 752);
      v169 = *(v0 + 776);
      v38 = *(v0 + 744);
      v177 = *(v0 + 736);
      v183 = *(v0 + 728);
      v39 = *(v0 + 720);
      v163 = *(v0 + 712);
      v40 = *(v0 + 664);
      v41 = *(v0 + 656);
      fmod(*(v0 + 904), *(v0 + 912));
      v42 = [objc_opt_self() kilocalories];
      sub_1000059F8(0, &qword_1008DEE40);
      Measurement.init(value:unit:)();
      v43 = sub_100140278(&qword_1008DECB0);
      (*(*(v43 - 8) + 56))(v169, 0, 1, v43);
      v44 = *(v40 + 56);
      v44(v37, 1, 1, v41);
      v44(v38, 1, 1, v41);
      v44(v177, 1, 1, v41);
      v44(v183, 1, 1, v41);
      sub_100140278(&qword_1008DEDE8);
      LocalizedStringResource.init(stringLiteral:)();
      v45 = EntityProperty<>.init(title:)();
      sub_100140278(&qword_1008DFAC0);

      LocalizedStringResource.init(stringLiteral:)();
      v195 = EntityProperty<>.init(title:)();

      LocalizedStringResource.init(stringLiteral:)();
      v194 = EntityProperty<>.init(title:)();

      LocalizedStringResource.init(stringLiteral:)();
      v193 = EntityProperty<>.init(title:)();

      LocalizedStringResource.init(stringLiteral:)();
      v192 = EntityProperty<>.init(title:)();
      sub_100140278(&qword_1008E6028);

      LocalizedStringResource.init(stringLiteral:)();
      v190 = v45;
      v0 = v36;
      v191 = EntityProperty<>.init(title:)();
      sub_10001B104(v169, v159, &qword_1008DEC98);
      sub_10001B104(v159, v161, &qword_1008DEC98);

      EntityProperty.wrappedValue.setter();
      sub_10000EA04(v159, &qword_1008DEC98);
      sub_10001B104(v37, v39, &qword_1008DFAB8);
      sub_10001B104(v39, v163, &qword_1008DFAB8);
      EntityProperty.wrappedValue.setter();
      sub_10000EA04(v39, &qword_1008DFAB8);
      sub_10001B104(v38, v39, &qword_1008DFAB8);
      sub_10001B104(v39, v163, &qword_1008DFAB8);
      EntityProperty.wrappedValue.setter();
      sub_10000EA04(v39, &qword_1008DFAB8);
      sub_10001B104(v177, v39, &qword_1008DFAB8);
      sub_10001B104(v39, v163, &qword_1008DFAB8);
      EntityProperty.wrappedValue.setter();
      sub_10000EA04(v39, &qword_1008DFAB8);
      sub_10001B104(v183, v39, &qword_1008DFAB8);
      sub_10001B104(v39, v163, &qword_1008DFAB8);
      EntityProperty.wrappedValue.setter();
      sub_10000EA04(v39, &qword_1008DFAB8);
      *(v36 + 624) = v187;
      *(v36 + 632) = v189;
      EntityProperty.wrappedValue.setter();
      sub_10000EA04(v183, &qword_1008DFAB8);
      sub_10000EA04(v177, &qword_1008DFAB8);
      sub_10000EA04(v38, &qword_1008DFAB8);
      sub_10000EA04(v37, &qword_1008DFAB8);
      sub_10000EA04(v169, &qword_1008DEC98);

      v46 = objc_allocWithZone(NSEnergyFormatter);

      v47 = [v46 init];
      [v47 setForFoodEnergyUse:1];
      result = [v47 numberFormatter];
      if (result)
      {
        v49 = result;
        v50 = *(v36 + 696);
        v51 = *(v36 + 688);
        v52 = *(v36 + 904);
        v53 = v52 - fmod(v52, *(v36 + 912));
        [v49 setFormattingContext:1];

        v54 = [v47 stringFromValue:1794 unit:v53];
        v55 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v57 = v56;

        v58 = type metadata accessor for _GeneratedContentOptions();
        (*(*(v58 - 8) + 56))(v50, 1, 1, v58);
        String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
        v59._object = 0x8000000100752C50;
        v59._countAndFlagsBits = 0xD00000000000001BLL;
        String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v59);
        v60._countAndFlagsBits = v55;
        v60._object = v57;
        String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v60);

        v61._countAndFlagsBits = 46;
        v61._object = 0xE100000000000000;
        String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v61);
        IntentDialog.init(stringInterpolation:)();
        _GeneratedContentFallback.init(_:localeIdentifier:)();
        v62 = type metadata accessor for _GeneratedContentFallback();
        (*(*(v62 - 8) + 56))(v51, 0, 1, v62);
        sub_1002B4154();
        sub_1002C17DC();
LABEL_18:
        IntentDialog._GeneratedDialogContent.init(fromResult:options:fallbackDialog:)();
        IntentDialog.init<A, B>(from:)();
LABEL_24:
        v139 = *(v0 + 864);
        v140 = *(v0 + 848);
        v143 = *(v0 + 840);
        *(v0 + 496) = v190;
        *(v0 + 504) = v195;
        *(v0 + 512) = v194;
        *(v0 + 520) = v193;
        *(v0 + 528) = v192;
        *(v0 + 536) = v191;
        sub_1002C17DC();
        static IntentResult.result<A>(value:dialog:)();

        (*(v140 + 8))(v139, v143);

        v92 = *(v0 + 8);
        goto LABEL_25;
      }

      __break(1u);
    }

    else
    {
      v93 = v0;
      v160 = *(v0 + 768);
      v162 = *(v0 + 760);
      v94 = *(v0 + 752);
      v171 = *(v0 + 776);
      v95 = *(v0 + 744);
      v179 = *(v0 + 736);
      v185 = *(v0 + 728);
      v96 = *(v0 + 720);
      v165 = *(v0 + 712);
      v97 = *(v0 + 664);
      v98 = *(v0 + 656);
      fmod(*(v0 + 904), *(v0 + 912));
      v99 = [objc_opt_self() kilojoules];
      sub_1000059F8(0, &qword_1008DEE40);
      Measurement.init(value:unit:)();
      v100 = sub_100140278(&qword_1008DECB0);
      (*(*(v100 - 8) + 56))(v171, 0, 1, v100);
      v101 = *(v97 + 56);
      v101(v94, 1, 1, v98);
      v101(v95, 1, 1, v98);
      v101(v179, 1, 1, v98);
      v101(v185, 1, 1, v98);
      sub_100140278(&qword_1008DEDE8);
      LocalizedStringResource.init(stringLiteral:)();
      v102 = EntityProperty<>.init(title:)();
      sub_100140278(&qword_1008DFAC0);

      LocalizedStringResource.init(stringLiteral:)();
      v195 = EntityProperty<>.init(title:)();

      LocalizedStringResource.init(stringLiteral:)();
      v194 = EntityProperty<>.init(title:)();

      LocalizedStringResource.init(stringLiteral:)();
      v193 = EntityProperty<>.init(title:)();

      LocalizedStringResource.init(stringLiteral:)();
      v192 = EntityProperty<>.init(title:)();
      sub_100140278(&qword_1008E6028);

      LocalizedStringResource.init(stringLiteral:)();
      v190 = v102;
      v0 = v93;
      v191 = EntityProperty<>.init(title:)();
      sub_10001B104(v171, v160, &qword_1008DEC98);
      sub_10001B104(v160, v162, &qword_1008DEC98);

      EntityProperty.wrappedValue.setter();
      sub_10000EA04(v160, &qword_1008DEC98);
      sub_10001B104(v94, v96, &qword_1008DFAB8);
      sub_10001B104(v96, v165, &qword_1008DFAB8);
      EntityProperty.wrappedValue.setter();
      sub_10000EA04(v96, &qword_1008DFAB8);
      sub_10001B104(v95, v96, &qword_1008DFAB8);
      sub_10001B104(v96, v165, &qword_1008DFAB8);
      EntityProperty.wrappedValue.setter();
      sub_10000EA04(v96, &qword_1008DFAB8);
      sub_10001B104(v179, v96, &qword_1008DFAB8);
      sub_10001B104(v96, v165, &qword_1008DFAB8);
      EntityProperty.wrappedValue.setter();
      sub_10000EA04(v96, &qword_1008DFAB8);
      sub_10001B104(v185, v96, &qword_1008DFAB8);
      sub_10001B104(v96, v165, &qword_1008DFAB8);
      EntityProperty.wrappedValue.setter();
      sub_10000EA04(v96, &qword_1008DFAB8);
      *(v93 + 608) = v187;
      *(v93 + 616) = v189;
      EntityProperty.wrappedValue.setter();
      sub_10000EA04(v185, &qword_1008DFAB8);
      sub_10000EA04(v179, &qword_1008DFAB8);
      sub_10000EA04(v95, &qword_1008DFAB8);
      sub_10000EA04(v94, &qword_1008DFAB8);
      sub_10000EA04(v171, &qword_1008DEC98);

      v103 = objc_allocWithZone(NSEnergyFormatter);

      v104 = [v103 init];
      [v104 setForFoodEnergyUse:0];
      result = [v104 numberFormatter];
      if (result)
      {
        v105 = result;
        v106 = *(v93 + 696);
        v107 = *(v93 + 688);
        v108 = *(v93 + 904);
        v109 = v108 - fmod(v108, *(v93 + 912));
        [v105 setFormattingContext:1];

        v110 = [v104 stringFromValue:14 unit:v109];
        v111 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v113 = v112;

        v114 = type metadata accessor for _GeneratedContentOptions();
        (*(*(v114 - 8) + 56))(v106, 1, 1, v114);
        String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
        v115._object = 0x8000000100752C50;
        v115._countAndFlagsBits = 0xD00000000000001BLL;
        String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v115);
        v116._countAndFlagsBits = v111;
        v116._object = v113;
        String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v116);

        v117._countAndFlagsBits = 46;
        v117._object = 0xE100000000000000;
        String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v117);
        IntentDialog.init(stringInterpolation:)();
        _GeneratedContentFallback.init(_:localeIdentifier:)();
        v118 = type metadata accessor for _GeneratedContentFallback();
        (*(*(v118 - 8) + 56))(v107, 0, 1, v118);
        sub_1002B4154();
        sub_1002C17DC();
        goto LABEL_18;
      }
    }

    __break(1u);
    return result;
  }

  v81 = *(v0 + 848);
  v82 = *(v0 + 840);
  v83 = *(v0 + 832);
  v84 = *(v0 + 648);

  *(v0 + 176) = *v84;
  v85 = v84[1];
  v86 = v84[2];
  v87 = v84[4];
  *(v0 + 224) = v84[3];
  *(v0 + 240) = v87;
  *(v0 + 192) = v85;
  *(v0 + 208) = v86;
  LocalizedStringResource.init(stringLiteral:)();
  IntentDialog.init(_:)();
  (*(v81 + 56))(v83, 0, 1, v82);
  v88 = swift_allocObject();
  v88[1] = *v84;
  v89 = v84[4];
  v91 = v84[1];
  v90 = v84[2];
  v88[4] = v84[3];
  v88[5] = v89;
  v88[2] = v91;
  v88[3] = v90;
  type metadata accessor for AppIntentError();
  sub_1002C1AE8(&qword_1008E6018, &type metadata accessor for AppIntentError);
  swift_allocError();
  sub_1002C1750(v84, v0 + 256);
  sub_1002C1788();
  ForegroundContinuableIntent.needsToContinueInForegroundError(_:requestConfirmation:continuation:)();

  sub_10000EA04(v83, &qword_1008DD130);
  swift_willThrow();

  v92 = *(v0 + 8);
LABEL_25:

  return v92();
}

uint64_t sub_1002B816C()
{
  v2 = *v1;
  *(*v1 + 952) = v0;

  v3 = *(v2 + 888);
  v4 = *(v2 + 880);
  if (v0)
  {
    v5 = sub_1002B83E4;
  }

  else
  {
    v5 = sub_1002C1D8C;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_1002B82A8()
{
  v2 = *v1;
  *(*v1 + 968) = v0;

  v3 = *(v2 + 888);
  v4 = *(v2 + 880);
  if (v0)
  {
    v5 = sub_1002B8564;
  }

  else
  {
    v5 = sub_1002C1D8C;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_1002B83E4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1002B8564()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1002B86E4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1002B8864()
{
  IntentParameter.wrappedValue.getter();
  result = v1;
  if (v1 > 2u || v1)
  {
    IntentParameter.wrappedValue.getter();
    return v1;
  }

  return result;
}

uint64_t sub_1002B890C(char a1, double a2)
{
  *(v3 + 120) = v2;
  *(v3 + 370) = a1;
  *(v3 + 112) = a2;
  v4 = type metadata accessor for Calendar.Component();
  *(v3 + 128) = v4;
  *(v3 + 136) = *(v4 - 8);
  *(v3 + 144) = swift_task_alloc();
  sub_100140278(&unk_1008F73A0);
  *(v3 + 152) = swift_task_alloc();
  v5 = type metadata accessor for Calendar();
  *(v3 + 160) = v5;
  *(v3 + 168) = *(v5 - 8);
  *(v3 + 176) = swift_task_alloc();
  v6 = type metadata accessor for Date();
  *(v3 + 184) = v6;
  *(v3 + 192) = *(v6 - 8);
  *(v3 + 200) = swift_task_alloc();
  *(v3 + 208) = swift_task_alloc();
  *(v3 + 216) = swift_task_alloc();
  *(v3 + 224) = swift_task_alloc();
  *(v3 + 232) = swift_task_alloc();

  return _swift_task_switch(sub_1002B8AF4, 0, 0);
}

uint64_t sub_1002B8AF4()
{
  v1 = *(v0 + 112);
  IntentParameter.wrappedValue.getter();
  v2 = sub_1002EFEF8(*(v0 + 368));
  *(v0 + 240) = [objc_opt_self() quantityWithUnit:v2 doubleValue:v1];

  IntentParameter.wrappedValue.getter();
  v3 = sub_1002EFE2C(*(v0 + 369));
  *(v0 + 248) = v3;
  Date.init()();
  *(v0 + 96) = _swiftEmptyArrayStorage;
  *(v0 + 104) = _swiftEmptyArrayStorage;
  v4 = swift_task_alloc();
  *(v0 + 256) = v4;
  *v4 = v0;
  v4[1] = sub_1002B8C14;
  v5 = *(v0 + 232);

  return sub_1002BBC74(v3, v5);
}

uint64_t sub_1002B8C14()
{

  return _swift_task_switch(sub_1002B8D10, 0, 0);
}

uint64_t sub_1002B8D10()
{
  v1 = *(v0 + 232);
  v2 = *(v0 + 216);
  v3 = *(v0 + 184);
  v4 = *(v0 + 370);
  v5 = *(*(v0 + 192) + 16);
  v5(*(v0 + 224), v1, v3);
  v5(v2, v1, v3);
  if (v4 == 1)
  {
    sub_100140278(&qword_1008DD8E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1006D46C0;
    *(inited + 32) = 0xD000000000000017;
    v7 = inited + 32;
    *(inited + 40) = 0x8000000100752C70;
    *(inited + 72) = &type metadata for Bool;
    *(inited + 48) = 1;
    v8 = sub_1002FC244(inited);
    swift_setDeallocating();
    sub_10000EA04(v7, &qword_1008DD8E8);
  }

  else
  {
    v8 = 0;
  }

  v9 = *(v0 + 248);
  v10 = *(v0 + 240);
  v11 = v9;
  v12.super.isa = Date._bridgeToObjectiveC()().super.isa;
  v13.super.isa = Date._bridgeToObjectiveC()().super.isa;
  if (v8)
  {
    v14.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v14.super.isa = 0;
  }

  v16 = *(v0 + 240);
  v15 = *(v0 + 248);
  v17 = *(v0 + 216);
  v26 = *(v0 + 224);
  v19 = *(v0 + 184);
  v18 = *(v0 + 192);
  v20 = objc_opt_self();
  *(v0 + 264) = v20;
  v21 = [v20 quantitySampleWithType:v15 quantity:v16 startDate:v12.super.isa endDate:v13.super.isa metadata:v14.super.isa];
  *(v0 + 272) = v21;

  v22 = *(v18 + 8);
  *(v0 + 280) = v22;
  *(v0 + 288) = (v18 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v22(v17, v19);
  v22(v26, v19);
  v23 = v21;
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*(v0 + 96) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + 96) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  *(v0 + 296) = *(v0 + 96);
  v24 = swift_task_alloc();
  *(v0 + 304) = v24;
  *v24 = v0;
  v24[1] = sub_1002B8FF8;

  return sub_1002BA92C();
}

uint64_t sub_1002B8FF8(uint64_t a1)
{
  *(*v1 + 312) = a1;

  return _swift_task_switch(sub_1002B90F8, 0, 0);
}

uint64_t sub_1002B90F8()
{
  v1 = *(v0 + 312);
  if (v1)
  {
    if ((*(v0 + 370) & 1) == 0)
    {
      v2 = v1;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((*(v0 + 104) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + 104) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v3 = *(v0 + 104);
      goto LABEL_11;
    }

LABEL_10:
    v3 = _swiftEmptyArrayStorage;
LABEL_11:
    v7 = *(v0 + 296);
    *(v0 + 336) = v3;
    *(v0 + 344) = v7;
    v8 = swift_task_alloc();
    *(v0 + 352) = v8;
    *v8 = v0;
    v8[1] = sub_1002B96C8;

    return sub_1002BC1C4(v7, v3);
  }

  if (!*(v0 + 370))
  {
    goto LABEL_10;
  }

  v4 = [objc_opt_self() hk_gregorianCalendarWithLocalTimeZone];
  static Calendar._unconditionallyBridgeFromObjectiveC(_:)();

  v5 = swift_task_alloc();
  *(v0 + 320) = v5;
  *v5 = v0;
  v5[1] = sub_1002B92BC;

  return sub_1002BB1BC();
}

uint64_t sub_1002B92BC(uint64_t a1)
{
  *(*v1 + 328) = a1;

  return _swift_task_switch(sub_1002B93BC, 0, 0);
}

uint64_t sub_1002B93BC()
{
  v1 = v0[41];
  if (v1)
  {
    v2 = v0[23];
    v3 = v0[24];
    v5 = v0[18];
    v4 = v0[19];
    v6 = v0[16];
    v7 = v0[17];
    (*(v7 + 104))(v5, enum case for Calendar.Component.day(_:), v6);
    v8 = v1;
    Calendar.date(byAdding:value:to:wrappingComponents:)();
    (*(v7 + 8))(v5, v6);
    if ((*(v3 + 48))(v4, 1, v2) == 1)
    {
      v9 = v0[19];
      (*(v0[21] + 8))(v0[22], v0[20]);

      sub_10000EA04(v9, &unk_1008F73A0);
      v10 = v0 + 37;
    }

    else
    {
      v10 = v0 + 12;
      v11 = v0[33];
      v12 = v0[31];
      (*(v0[24] + 32))(v0[26], v0[19], v0[23]);
      Calendar.startOfDay(for:)();
      v13 = v12;
      v14 = v8;
      isa = Date._bridgeToObjectiveC()().super.isa;
      v16 = Date._bridgeToObjectiveC()().super.isa;
      v17 = [v11 quantitySampleWithType:v13 quantity:v14 startDate:isa endDate:v16];

      v18 = v17;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v0[12] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v0[12] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      v19 = v0[35];
      v20 = v0[25];
      v21 = v0[23];
      v28 = v0[22];
      v22 = v0[21];
      v26 = v0[26];
      v27 = v0[20];
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      v19(v20, v21);
      v19(v26, v21);
      (*(v22 + 8))(v28, v27);
    }
  }

  else
  {
    (*(v0[21] + 8))(v0[22], v0[20]);
    v10 = v0 + 37;
  }

  v23 = *v10;
  v0[42] = _swiftEmptyArrayStorage;
  v0[43] = v23;
  v24 = swift_task_alloc();
  v0[44] = v24;
  *v24 = v0;
  v24[1] = sub_1002B96C8;

  return sub_1002BC1C4(v23, _swiftEmptyArrayStorage);
}

uint64_t sub_1002B96C8()
{
  *(*v1 + 360) = v0;

  if (v0)
  {
    v2 = sub_1002B9924;
  }

  else
  {
    v2 = sub_1002B981C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1002B981C()
{
  v1 = *(v0 + 312);
  v2 = *(v0 + 280);
  v3 = *(v0 + 240);
  v4 = *(v0 + 248);
  v5 = *(v0 + 232);
  v6 = *(v0 + 184);

  v2(v5, v6);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1002B9924()
{
  v1 = *(v0 + 312);
  v2 = *(v0 + 280);
  v3 = *(v0 + 240);
  v4 = *(v0 + 248);
  v5 = *(v0 + 232);
  v6 = *(v0 + 184);

  v2(v5, v6);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1002B9A2C(double a1)
{
  *(v2 + 32) = v1;
  *(v2 + 24) = a1;
  v3 = type metadata accessor for Date();
  *(v2 + 40) = v3;
  *(v2 + 48) = *(v3 - 8);
  *(v2 + 56) = swift_task_alloc();

  return _swift_task_switch(sub_1002B9AF0, 0, 0);
}

uint64_t sub_1002B9AF0()
{
  v1 = *(v0 + 24);
  IntentParameter.wrappedValue.getter();
  v2 = sub_1002EFEF8(*(v0 + 152));
  *(v0 + 64) = [objc_opt_self() quantityWithUnit:v2 doubleValue:v1];

  IntentParameter.wrappedValue.getter();
  *(v0 + 72) = qword_1006E5BC0[*(v0 + 153)];
  v3 = swift_task_alloc();
  *(v0 + 80) = v3;
  *v3 = v0;
  v3[1] = sub_1002B9BF4;

  return sub_1002BA92C();
}

uint64_t sub_1002B9BF4(uint64_t a1)
{
  v2 = *v1;
  v5 = *v1;
  *(v2 + 88) = a1;

  v3 = swift_task_alloc();
  *(v2 + 96) = v3;
  *v3 = v5;
  v3[1] = sub_1002B9D40;

  return sub_1002BB1BC();
}

uint64_t sub_1002B9D40(uint64_t a1)
{
  *(*v1 + 104) = a1;

  return _swift_task_switch(sub_1002B9E40, 0, 0);
}

uint64_t sub_1002B9E40()
{
  v1 = *(v0 + 88);
  if (v1)
  {
    isa = v1;
    v3 = sub_1002BC770();
  }

  else
  {
    v4 = *(v0 + 104);
    v5 = *(v0 + 72);
    if (v4)
    {
      v7 = *(v0 + 48);
      v6 = *(v0 + 56);
      v8 = *(v0 + 40);
    }

    else
    {
      v6 = *(v0 + 56);
      v4 = *(v0 + 64);
      v8 = *(v0 + 40);
      v7 = *(v0 + 48);
    }

    v9 = objc_opt_self();
    v10 = v4;
    Date.init()();
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v7 + 8))(v6, v8);
    v11 = [objc_opt_self() localDevice];
    v3 = [v9 activityGoalScheduleWithDate:isa goalType:v5 mondayGoal:v10 tuesdayGoal:v10 wednesdayGoal:v10 thursdayGoal:v10 fridayGoal:v10 saturdayGoal:v10 sundayGoal:v10 device:v11 metadata:0];
  }

  *(v0 + 112) = v3;
  IntentParameter.wrappedValue.getter();
  v12 = *(v0 + 154);
  if (v12 <= 6)
  {
    [v3 *off_100850950[v12]];
  }

  v13 = _swiftEmptyArrayStorage;
  *(v0 + 16) = _swiftEmptyArrayStorage;
  if (v1)
  {
    v14 = *(v0 + 88);
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((*(v0 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v13 = *(v0 + 16);
  }

  *(v0 + 120) = v13;
  sub_100140278(&unk_1008E4E20);
  v15 = swift_allocObject();
  *(v0 + 128) = v15;
  *(v15 + 16) = xmmword_1006D4E70;
  *(v15 + 32) = v3;
  v16 = v3;
  v17 = swift_task_alloc();
  *(v0 + 136) = v17;
  *v17 = v0;
  v17[1] = sub_1002BA178;

  return sub_1002BC1C4(v15, v13);
}

uint64_t sub_1002BA178()
{
  *(*v1 + 144) = v0;

  if (v0)
  {
    v2 = sub_1002BA354;
  }

  else
  {
    v2 = sub_1002BA2CC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1002BA2CC()
{
  v2 = *(v0 + 104);
  v1 = *(v0 + 112);
  v3 = *(v0 + 88);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1002BA354()
{
  v2 = *(v0 + 104);
  v1 = *(v0 + 112);
  v3 = *(v0 + 88);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1002BA3DC()
{
  v0 = sub_100140278(&qword_1008E6070);
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = &v9 - v5;
  swift_getKeyPath();
  sub_1002C1884();
  static _DialogBuilderEntity.buildExpression<A>(_:)();

  swift_getKeyPath();
  sub_1002C18D8();
  static _DialogBuilderEntity.buildExpression<A>(_:)();

  sub_1002C17DC();
  sub_10014A6B0(&qword_1008E6088, &qword_1008E6070);
  static _DialogBuilderEntity.buildBlock<A, B>(_:_:)();
  v7 = *(v1 + 8);
  v7(v4, v0);
  return (v7)(v6, v0);
}

uint64_t sub_1002BA5E4(uint64_t a1)
{
  v1[4] = a1;
  sub_100140278(&unk_1008EB5B0);
  v1[5] = swift_task_alloc();
  v2 = type metadata accessor for URL();
  v1[6] = v2;
  v1[7] = *(v2 - 8);
  v1[8] = swift_task_alloc();
  type metadata accessor for MainActor();
  v1[9] = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1002BA710, v4, v3);
}

uint64_t sub_1002BA710()
{

  IntentParameter.wrappedValue.getter();
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);
  v3 = *(v0 + 40);
  URL.init(string:)();

  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_10000EA04(*(v0 + 40), &unk_1008EB5B0);
  }

  else
  {
    (*(*(v0 + 56) + 32))(*(v0 + 64), *(v0 + 40), *(v0 + 48));
    if (qword_1008DACC0 != -1)
    {
      swift_once();
    }

    v5 = *(v0 + 56);
    v4 = *(v0 + 64);
    v6 = *(v0 + 48);
    v7 = type metadata accessor for NavigatorContext();
    v8 = objc_allocWithZone(v7);
    v8[OBJC_IVAR___CHNavigatorContext_hasActiveWorkout] = 0;
    *(v0 + 16) = v8;
    *(v0 + 24) = v7;
    v9 = objc_msgSendSuper2((v0 + 16), "init");
    sub_1004DA120(v4, v9);

    (*(v5 + 8))(v4, v6);
  }

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_1002BA92C()
{
  v1[3] = v0;
  v2 = sub_100140278(&qword_1008E0C90);
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v1[6] = swift_task_alloc();
  v3 = sub_100140278(&qword_1008E0C98);
  v1[7] = v3;
  v1[8] = *(v3 - 8);
  v1[9] = swift_task_alloc();
  v4 = sub_100140278(&qword_1008E0CA0);
  v1[10] = v4;
  v1[11] = *(v4 - 8);
  v1[12] = swift_task_alloc();

  return _swift_task_switch(sub_1002BAAC8, 0, 0);
}

uint64_t sub_1002BAAC8()
{
  IntentParameter.wrappedValue.getter();
  *(v0 + 104) = qword_1006E5BC0[*(v0 + 144)];
  swift_getKeyPath();
  SortDescriptor.init<A>(_:order:)();
  sub_1000059F8(0, &unk_1008E4E30);
  v1 = [swift_getObjCClassFromMetadata() activityGoalScheduleType];
  if (v1)
  {
    v3 = v1;
    v4 = *(v0 + 88);
    v6 = *(v0 + 72);
    v5 = *(v0 + 80);
    v7 = *(v0 + 56);
    v8 = *(v0 + 64);
    v16 = *(v0 + 96);
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
    (*(v4 + 16))(v12 + v11, v16, v5);
    HKSampleQueryDescriptor.init(predicates:sortDescriptors:limit:)();
    AppDependency.wrappedValue.getter();
    v13 = *(v0 + 16);
    *(v0 + 112) = v13;
    v14 = swift_task_alloc();
    *(v0 + 120) = v14;
    *v14 = v0;
    v14[1] = sub_1002BAD38;
    v2 = *(v0 + 32);
    v1 = v13;
  }

  else
  {
    __break(1u);
  }

  return HKSampleQueryDescriptor.result(for:)(v1, v2);
}

uint64_t sub_1002BAD38(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 112);
  *(v3 + 128) = a1;
  *(v3 + 136) = v1;

  if (v1)
  {
    v5 = sub_1002BB0C8;
  }

  else
  {
    v5 = sub_1002BAE68;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1002BAE68()
{
  v1 = v0[16];
  if (!(v1 >> 62))
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v3 = v0[16];
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_13:
    v13 = v0[11];
    v12 = v0[12];
    v15 = v0[9];
    v14 = v0[10];
    v16 = v0[7];
    v17 = v0[8];
    v19 = v0[5];
    v18 = v0[6];
    v20 = v0[4];

    (*(v19 + 8))(v18, v20);
    (*(v17 + 8))(v15, v16);
    (*(v13 + 8))(v12, v14);
    v21 = 0;
    goto LABEL_14;
  }

LABEL_21:
  v2 = _CocoaArrayWrapper.endIndex.getter();
  v3 = v0[16];
  if (!v2)
  {
    goto LABEL_13;
  }

LABEL_3:
  v4 = 0;
  v5 = v1 & 0xC000000000000001;
  v6 = v1 & 0xFFFFFFFFFFFFFF8;
  v7 = v3 + 32;
  while (1)
  {
    if (v5)
    {
      v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v4 >= *(v6 + 16))
      {
        goto LABEL_20;
      }

      v8 = *(v7 + 8 * v4);
    }

    v1 = v8;
    v9 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      __break(1u);
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

    objc_opt_self();
    v10 = swift_dynamicCastObjCClass();
    if (v10)
    {
      v11 = v0[13];
      if ([v10 goalType] == v11)
      {
        break;
      }
    }

    ++v4;
    if (v9 == v2)
    {
      goto LABEL_13;
    }
  }

  v24 = v0[11];
  v25 = v0[9];
  v32 = v0[10];
  v33 = v0[12];
  v27 = v0[7];
  v26 = v0[8];
  v28 = v0[5];
  v29 = v0[6];
  v30 = v0[4];

  (*(v28 + 8))(v29, v30);
  (*(v26 + 8))(v25, v27);
  (*(v24 + 8))(v33, v32);
  objc_opt_self();
  v31 = swift_dynamicCastObjCClass();
  v21 = v31;
  if (!v31)
  {
  }

LABEL_14:

  v22 = v0[1];

  return v22(v21);
}