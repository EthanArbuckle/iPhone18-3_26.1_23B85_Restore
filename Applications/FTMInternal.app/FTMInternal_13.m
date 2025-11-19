void sub_1001D2980()
{
  v1 = sub_1001D1ED0();
  v2 = String._bridgeToObjectiveC()();
  [v1 setText:v2];

  v3 = sub_1001D1F4C();
  v4 = String._bridgeToObjectiveC()();
  [v3 setText:v4];

  v5 = *(v0 + OBJC_IVAR____TtC11FTMInternal12SecondVCCell____lazy_storage___rightLabel);
  v6 = String._bridgeToObjectiveC()();
  v7 = [objc_opt_self() colorNamed:v6];

  [v5 setTextColor:v7];
}

id sub_1001D2ABC(void *a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4.receiver = a1;
  v4.super_class = a3();
  return objc_msgSendSuper2(&v4, "isHighlighted");
}

void sub_1001D2B8C(char a1, uint64_t (*a2)(void), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v15.receiver = v5;
  v15.super_class = a2();
  objc_msgSendSuper2(&v15, "setHighlighted:", a1 & 1);
  if ([v5 isHighlighted])
  {
    v9 = [objc_allocWithZone(UISelectionFeedbackGenerator) init];
    [v9 selectionChanged];
    [v5 setAlpha:0.5];
    v10 = objc_opt_self();
    v11 = swift_allocObject();
    *(v11 + 16) = v5;
    v14[4] = a4;
    v14[5] = v11;
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 1107296256;
    v14[2] = sub_10020C96C;
    v14[3] = a5;
    v12 = _Block_copy(v14);
    v13 = v5;

    [v10 animateWithDuration:0 delay:v12 options:0 animations:0.5 completion:0.05];

    _Block_release(v12);
  }
}

id sub_1001D2CF4(void *a1)
{
  [a1 setAlpha:1.0];
  CGAffineTransformMakeScale(&v3, 1.7, 1.7);
  [a1 setTransform:&v3];
  *&v3.a = 0x3FF0000000000000uLL;
  v3.c = 0.0;
  v3.d = 1.0;
  *&v3.tx = 0uLL;
  return [a1 setTransform:&v3];
}

id sub_1001D2DA0(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_1001D2E58()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1001D2EAC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_1001D2EC4()
{
  v1 = OBJC_IVAR____TtC11FTMInternal18AllMetricsViewCell_container;
  *(v0 + v1) = sub_1001CD600();
  *(v0 + OBJC_IVAR____TtC11FTMInternal18AllMetricsViewCell____lazy_storage___metricNameLabel) = 0;
  *(v0 + OBJC_IVAR____TtC11FTMInternal18AllMetricsViewCell____lazy_storage___metricAvailabilityLabel) = 0;
  *(v0 + OBJC_IVAR____TtC11FTMInternal18AllMetricsViewCell____lazy_storage___activityIndicatorButton) = 0;
  *(v0 + OBJC_IVAR____TtC11FTMInternal18AllMetricsViewCell____lazy_storage___bottomLabel) = 0;
  *(v0 + OBJC_IVAR____TtC11FTMInternal18AllMetricsViewCell_timestampHiddenConstraint) = 0;
  *(v0 + OBJC_IVAR____TtC11FTMInternal18AllMetricsViewCell_timestampVisibleConstraint) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void sub_1001D2F7C()
{
  *(v0 + OBJC_IVAR____TtC11FTMInternal13DashboardCell____lazy_storage___titleLabel) = 0;
  *(v0 + OBJC_IVAR____TtC11FTMInternal13DashboardCell____lazy_storage___subtitleLabel) = 0;
  *(v0 + OBJC_IVAR____TtC11FTMInternal13DashboardCell____lazy_storage___bottomLabel) = 0;
  *(v0 + OBJC_IVAR____TtC11FTMInternal13DashboardCell____lazy_storage___valueLabel) = 0;
  *(v0 + OBJC_IVAR____TtC11FTMInternal13DashboardCell____lazy_storage___activityIndicator) = 0;
  *(v0 + OBJC_IVAR____TtC11FTMInternal13DashboardCell____lazy_storage___separatorView) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

id sub_1001D3030(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = &v3[OBJC_IVAR____TtC11FTMInternal10TickerCell_digit];
  *v6 = 48;
  *(v6 + 1) = 0xE100000000000000;
  *&v3[OBJC_IVAR____TtC11FTMInternal10TickerCell_fontSize] = 0x4044000000000000;
  v7 = OBJC_IVAR____TtC11FTMInternal10TickerCell_numberLabel;
  *&v3[v7] = [objc_allocWithZone(UILabel) init];
  if (a3)
  {
    v8 = String._bridgeToObjectiveC()();
  }

  else
  {
    v8 = 0;
  }

  v12.receiver = v3;
  v12.super_class = type metadata accessor for TickerCell();
  v9 = objc_msgSendSuper2(&v12, "initWithStyle:reuseIdentifier:", a1, v8);

  v10 = v9;
  sub_1001D3218();

  return v10;
}

void sub_1001D3218()
{
  v1 = *&v0[OBJC_IVAR____TtC11FTMInternal10TickerCell_numberLabel];
  v2 = *&v0[OBJC_IVAR____TtC11FTMInternal10TickerCell_digit];
  v3 = *&v0[OBJC_IVAR____TtC11FTMInternal10TickerCell_digit + 8];

  v4 = String._bridgeToObjectiveC()();

  [v1 setText:v4];

  v5 = [objc_opt_self() systemFontOfSize:*&v0[OBJC_IVAR____TtC11FTMInternal10TickerCell_fontSize] weight:UIFontWeightRegular];
  [v1 setFont:v5];

  [v1 setTextAlignment:1];
  v6 = objc_opt_self();
  v7 = [v6 blackColor];
  [v1 setTextColor:v7];

  v8 = [v0 contentView];
  [v8 addSubview:v1];

  [v1 setTranslatesAutoresizingMaskIntoConstraints:0];
  v9 = [v0 contentView];
  sub_1001A551C(&unk_1003757C0, &unk_1002EF670);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1002EF930;
  v11 = [v0 contentView];
  v12 = objc_opt_self();
  v13 = v1;
  v14 = [v12 constraintWithItem:v13 attribute:5 relatedBy:0 toItem:v11 attribute:5 multiplier:1.0 constant:0.0];

  *(v10 + 32) = v14;
  v15 = [v0 contentView];
  v16 = v13;
  v17 = [v12 constraintWithItem:v16 attribute:6 relatedBy:0 toItem:v15 attribute:6 multiplier:1.0 constant:0.0];

  *(v10 + 40) = v17;
  v18 = [v0 contentView];
  v19 = v16;
  v20 = [v12 constraintWithItem:v19 attribute:3 relatedBy:0 toItem:v18 attribute:3 multiplier:1.0 constant:0.0];

  *(v10 + 48) = v20;
  v21 = [v0 contentView];
  v22 = v19;
  v23 = [v12 constraintWithItem:v22 attribute:4 relatedBy:0 toItem:v21 attribute:4 multiplier:1.0 constant:0.0];

  *(v10 + 56) = v23;
  sub_1001AD6F0();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v9 addConstraints:isa];

  v25 = [v6 clearColor];
  [v0 setBackgroundColor:v25];

  v26 = [v0 contentView];
  v27 = [v6 clearColor];
  [v26 setBackgroundColor:v27];
}

id sub_1001D3640()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TickerCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1001D36E8()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  v3 = *(v0 + 48);

  return swift_deallocClassInstance();
}

uint64_t sub_1001D3770(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1001D3844(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UUID();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t type metadata accessor for AttributeDetailsCollection()
{
  result = qword_100376800;
  if (!qword_100376800)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1001D394C()
{
  result = type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1001D39CC()
{
  result = qword_100375B30;
  if (!qword_100375B30)
  {
    type metadata accessor for UUID();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100375B30);
  }

  return result;
}

uint64_t sub_1001D3A24@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for AttributeDetailsViewModel();
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

char *sub_1001D3A60()
{
  sub_1001C6E44(v2);
  v0 = objc_allocWithZone(type metadata accessor for SURLSessionViewModel());
  return sub_100284A04(v2);
}

uint64_t sub_1001D3AA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v83 = a2;
  v86 = sub_1001A551C(&qword_100376868, &qword_1002F1810);
  v87 = *(v86 - 8);
  v3 = *(v87 + 64);
  __chkstk_darwin(v86);
  v68 = &v66 - v4;
  v5 = sub_1001A551C(&qword_100376870, &qword_1002F1818);
  v6 = *(*(v5 - 8) + 64);
  v7 = __chkstk_darwin(v5 - 8);
  v82 = &v66 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = &v66 - v9;
  v76 = sub_1001A551C(&qword_100376878, &qword_1002F1820);
  v75 = *(v76 - 8);
  v11 = *(v75 + 64);
  __chkstk_darwin(v76);
  v74 = &v66 - v12;
  v79 = sub_1001A551C(&qword_100376880, &qword_1002F1828);
  v78 = *(v79 - 8);
  v13 = *(v78 + 64);
  v14 = __chkstk_darwin(v79);
  v73 = &v66 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v72 = &v66 - v16;
  v17 = sub_1001A551C(&qword_100376888, &qword_1002F1830);
  v18 = *(*(v17 - 8) + 64);
  v19 = __chkstk_darwin(v17 - 8);
  v81 = &v66 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v89 = &v66 - v21;
  v77 = sub_1001A551C(&qword_100376890, &qword_1002F1838);
  v22 = *(*(v77 - 8) + 64);
  v23 = __chkstk_darwin(v77);
  v80 = &v66 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v26 = &v66 - v25;
  v27 = *a1;
  v66 = *(a1 + 8);
  v28 = *(a1 + 16);
  v29 = *(a1 + 24);
  v30 = *(a1 + 32);
  v31 = *(a1 + 40);
  v32 = *(a1 + 48);
  v33 = swift_allocObject();
  v34 = *(a1 + 16);
  *(v33 + 16) = *a1;
  *(v33 + 32) = v34;
  *(v33 + 48) = *(a1 + 32);
  *(v33 + 64) = *(a1 + 48);
  v90[0].n128_u64[0] = 0;
  v69 = v27;
  v35 = v27;
  v71 = v28;
  v70 = v29;
  sub_1001D4A7C(v28, v29, v30);

  State.init(wrappedValue:)();
  v36 = v92;
  if (qword_100375020 != -1)
  {
    swift_once();
  }

  v37 = sub_10021AF50();
  v90[0].n128_u8[0] = 0;
  State.init(wrappedValue:)();
  v38 = v92.n128_u8[0];
  v39 = v92.n128_u64[1];
  v95 = 0;
  v92.n128_u64[0] = sub_1001D4A74;
  v92.n128_u64[1] = v33;
  v93[0] = 0;
  *&v93[8] = v36;
  *&v93[24] = v37;
  v94[0] = v38;
  *&v94[8] = v39;
  v40 = sub_1001A551C(&qword_1003752F8, &qword_1002EF790);
  sub_1001D4A8C();
  v41 = sub_1001AD0C8(&qword_100375310, &qword_1003752F8, &qword_1002EF790);
  v85 = v40;
  v84 = v41;
  View.tabItem<A>(_:)();
  v96[0] = v92;
  v96[1] = *v93;
  v96[2] = *&v93[16];
  v96[3] = *v94;
  sub_1001D4AE0(v96);
  v42 = &v26[*(v77 + 36)];
  *v42 = nullsub_1;
  *(v42 + 1) = 0;
  *(v42 + 2) = 0;
  *(v42 + 3) = 0;
  v43 = *(v32 + 24);
  v44 = *(v43 + 24);
  v88 = v26;
  if ((v44 & 1) != 0 || *(v43 + 25) == 1)
  {
    v77 = v32;
    v67 = v10;
    type metadata accessor for SURLSessionViewModel();
    sub_1001D4B88(&qword_1003751C8, type metadata accessor for SURLSessionViewModel);
    StateObject.wrappedValue.getter();
    if (!v69)
    {
      type metadata accessor for SPCarrierBundleViewModel();
      sub_1001D4B88(&qword_100377D60, type metadata accessor for SPCarrierBundleViewModel);
      result = EnvironmentObject.error()();
      __break(1u);
      return result;
    }

    swift_getKeyPath();
    swift_getKeyPath();
    v45 = v35;
    static Published.subscript.getter();

    v46 = v92.n128_u8[0];
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    sub_1001ABEB8(v46, v92.n128_u8[0], v90);
    sub_1001D4BE0();
    v47 = v74;
    View.tabItem<A>(_:)();
    *&v93[16] = v90[2];
    *v94 = *v91;
    *&v94[10] = *&v91[10];
    v92 = v90[0];
    *v93 = v90[1];
    sub_1001D4C34(&v92);
    v48 = StateObject.wrappedValue.getter();
    v49 = static ObservableObject.environmentStore.getter();
    v50 = v73;
    (*(v75 + 32))(v73, v47, v76);
    v51 = v79;
    v52 = (v50 + *(v79 + 36));
    *v52 = v49;
    v52[1] = v48;
    v53 = v72;
    sub_1001D4C88(v50, v72);
    v54 = v53;
    v55 = v89;
    sub_1001D4C88(v54, v89);
    (*(v78 + 56))(v55, 0, 1, v51);
    v10 = v67;
    v26 = v88;
    v32 = v77;
  }

  else
  {
    (*(v78 + 56))(v89, 1, 1, v79);
  }

  if (*(*(v32 + 24) + 29) == 1)
  {
    sub_1001D4B34();
    v56 = v68;
    View.tabItem<A>(_:)();
    (*(v87 + 32))(v10, v56, v86);
    v57 = 0;
  }

  else
  {
    v57 = 1;
  }

  v58 = v10;
  (*(v87 + 56))(v10, v57, 1, v86);
  v59 = v80;
  sub_1001AC934(v26, v80, &qword_100376890, &qword_1002F1838);
  v60 = v89;
  v61 = v81;
  sub_1001AC934(v89, v81, &qword_100376888, &qword_1002F1830);
  v62 = v82;
  sub_1001AC934(v10, v82, &qword_100376870, &qword_1002F1818);
  v63 = v83;
  sub_1001AC934(v59, v83, &qword_100376890, &qword_1002F1838);
  v64 = sub_1001A551C(&qword_1003768A0, &qword_1002F1840);
  sub_1001AC934(v61, v63 + *(v64 + 48), &qword_100376888, &qword_1002F1830);
  sub_1001AC934(v62, v63 + *(v64 + 64), &qword_100376870, &qword_1002F1818);
  sub_1001AC99C(v58, &qword_100376870, &qword_1002F1818);
  sub_1001AC99C(v60, &qword_100376888, &qword_1002F1830);
  sub_1001AC99C(v88, &qword_100376890, &qword_1002F1838);
  sub_1001AC99C(v62, &qword_100376870, &qword_1002F1818);
  sub_1001AC99C(v61, &qword_100376888, &qword_1002F1830);
  return sub_1001AC99C(v59, &qword_100376890, &qword_1002F1838);
}

uint64_t sub_1001D4634()
{
  LocalizedStringKey.init(stringLiteral:)();

  return Label<>.init(_:systemImage:)();
}

uint64_t sub_1001D4688()
{
  LocalizedStringKey.init(stringLiteral:)();

  return Label<>.init(_:systemImage:)();
}

void sub_1001D46E8(uint64_t a1)
{
  if (*a1)
  {
    v2 = *a1;
    sub_1002224F0();
  }

  else
  {
    v1 = *(a1 + 8);
    type metadata accessor for SPCarrierBundleViewModel();
    sub_1001D4B88(&qword_100377D60, type metadata accessor for SPCarrierBundleViewModel);
    EnvironmentObject.error()();
    __break(1u);
  }
}

uint64_t sub_1001D4794@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[1];
  v9 = *v1;
  v10 = v3;
  v11 = v1[2];
  v12 = *(v1 + 6);
  sub_1001A551C(&qword_100376840, &qword_1002F17F0);
  sub_1001AD0C8(&qword_100376848, &qword_100376840, &qword_1002F17F0);
  TabView<>.init(content:)();
  v13 = v9;
  v14 = v10;
  v15 = v11;
  v4 = swift_allocObject();
  v5 = v10;
  *(v4 + 16) = v9;
  *(v4 + 32) = v5;
  *(v4 + 48) = v11;
  *(v4 + 64) = v12;
  v6 = (a1 + *(sub_1001A551C(&qword_100376850, &qword_1002F17F8) + 36));
  *v6 = sub_1001D4A18;
  v6[1] = v4;
  v6[2] = 0;
  v6[3] = 0;
  sub_1001AC934(&v13, v8, &qword_100376858, &qword_1002F1800);
  sub_1001AC934(&v14, v8, &qword_100376860, &qword_1002F1808);
}

__n128 sub_1001D4920(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1001D493C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1001D4984(uint64_t result, int a2, int a3)
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
      *(result + 40) = (a2 - 1);
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

uint64_t sub_1001D4A08(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    return _objc_release_x1();
  }

  else
  {
  }
}

uint64_t sub_1001D4A20()
{
  sub_1001D4A08(*(v0 + 32), *(v0 + 40), *(v0 + 48));
  v1 = *(v0 + 56);

  v2 = *(v0 + 64);

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_1001D4A7C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    return _objc_retain_x1();
  }

  else
  {
  }
}

unint64_t sub_1001D4A8C()
{
  result = qword_100376898;
  if (!qword_100376898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100376898);
  }

  return result;
}

unint64_t sub_1001D4B34()
{
  result = qword_1003768A8;
  if (!qword_1003768A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003768A8);
  }

  return result;
}

uint64_t sub_1001D4B88(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1001D4BE0()
{
  result = qword_1003768B0;
  if (!qword_1003768B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003768B0);
  }

  return result;
}

uint64_t sub_1001D4C88(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001A551C(&qword_100376880, &qword_1002F1828);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1001D4CFC()
{
  result = qword_1003768B8;
  if (!qword_1003768B8)
  {
    sub_1001A55C8(&qword_100376850, &qword_1002F17F8);
    sub_1001AD0C8(&qword_1003768C0, &qword_1003768C8, &qword_1002F18D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003768B8);
  }

  return result;
}

uint64_t sub_1001D4DB8@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Locale();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [objc_allocWithZone(NSDateFormatter) init];
  v8 = String._bridgeToObjectiveC()();
  [v7 setDateFormat:v8];

  static Locale.current.getter();
  isa = Locale._bridgeToObjectiveC()().super.isa;
  (*(v3 + 8))(v6, v2);
  [v7 setLocale:isa];

  v10 = String._bridgeToObjectiveC()();
  v11 = [v7 dateFromString:v10];

  if (v11)
  {
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v12 = 0;
    v7 = v11;
  }

  else
  {
    v12 = 1;
  }

  v13 = type metadata accessor for Date();
  return (*(*(v13 - 8) + 56))(a1, v12, 1, v13);
}

void sub_1001D4FA4()
{
  v1 = String._bridgeToObjectiveC()();
  v2 = String._bridgeToObjectiveC()();
  v3 = [objc_opt_self() alertControllerWithTitle:v1 message:v2 preferredStyle:1];

  v4 = String._bridgeToObjectiveC()();
  v5 = [objc_opt_self() actionWithTitle:v4 style:0 handler:0];

  [v3 addAction:v5];
  [v0 presentViewController:v3 animated:1 completion:0];
}

uint64_t sub_1001D5114(uint64_t a1)
{
  v2 = type metadata accessor for TimeZone();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [objc_allocWithZone(NSDateFormatter) init];
  v8 = String._bridgeToObjectiveC()();
  [v7 setDateFormat:v8];

  static TimeZone.autoupdatingCurrent.getter();
  isa = TimeZone._bridgeToObjectiveC()().super.isa;
  (*(v3 + 8))(v6, v2);
  [v7 setTimeZone:isa];

  [v7 setDateStyle:a1];
  [v7 setTimeStyle:a1];
  v10 = Date._bridgeToObjectiveC()().super.isa;
  v11 = [v7 stringFromDate:v10];

  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  return v12;
}

id sub_1001D52D8()
{
  result = [objc_allocWithZone(NSDateFormatter) init];
  qword_100382470 = result;
  return result;
}

uint64_t sub_1001D530C()
{
  v0 = type metadata accessor for TimeZone();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100374F80 != -1)
  {
    swift_once();
  }

  v5 = qword_100382470;
  static TimeZone.current.getter();
  isa = TimeZone._bridgeToObjectiveC()().super.isa;
  (*(v1 + 8))(v4, v0);
  [v5 setTimeZone:isa];

  v7 = String._bridgeToObjectiveC()();
  [v5 setDateFormat:v7];

  v8 = Date._bridgeToObjectiveC()().super.isa;
  v9 = [v5 stringFromDate:v8];

  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  return v10;
}

void sub_1001D54B4()
{
  v1 = String._bridgeToObjectiveC()();
  v2 = [objc_opt_self() animationWithKeyPath:v1];

  v3 = v2;
  [v3 setDuration:0.2];
  isa = Int._bridgeToObjectiveC()().super.super.isa;
  [v3 setFromValue:isa];

  v5 = Double._bridgeToObjectiveC()().super.super.isa;
  [v3 setToValue:v5];

  v6 = [objc_opt_self() functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
  [v3 setTimingFunction:v6];

  [v3 setAutoreverses:1];
  LODWORD(v7) = 2.0;
  [v3 setRepeatCount:v7];

  v8 = [v0 layer];
  [v8 addAnimation:v3 forKey:0];
}

void sub_1001D5650()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC11FTMInternal16PersistanceStore_aBMWrapper);
  v3 = String._bridgeToObjectiveC()();
  if (qword_100375018 != -1)
  {
    swift_once();
  }

  v2 = *(qword_100382500 + 192);
  [v1 querySpecificMetric:? triggerRef:? triggerType:? triggerID:? profileID:? metricID:?];
}

uint64_t sub_1001D5768()
{
  v1 = *(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t sub_1001D57CC@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for MainWindowViewModel();
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1001D5808(void *a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  v3 = qword_100374F98;
  v4 = a1;

  if (v3 != -1)
  {
    swift_once();
  }

  static os_log_type_t.default.getter();
  sub_1001A551C(&unk_100377020, &unk_1002EF770);
  v5 = swift_allocObject();
  v6 = v5;
  *(v5 + 16) = xmmword_1002EED40;
  v7 = *&v4[OBJC_IVAR____TtC11FTMInternal16PersistanceStore_hardwareManager];
  if (*(v7 + 28) == 1)
  {
    *(v5 + 56) = &type metadata for String;
    *(v5 + 64) = sub_1001A76E8();
    v8 = 17225;
LABEL_8:
    v10 = 0xE200000000000000;
    goto LABEL_9;
  }

  v9 = *(v7 + 153);
  *(v5 + 56) = &type metadata for String;
  *(v5 + 64) = sub_1001A76E8();
  if (v9 != 1)
  {
    v8 = 22093;
    goto LABEL_8;
  }

  v8 = 5262931;
  v10 = 0xE300000000000000;
LABEL_9:
  *(v6 + 32) = v8;
  *(v6 + 40) = v10;
  os_log(_:dso:log:type:_:)();

  return v2;
}

__n128 sub_1001D5970(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1001D5984(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1001D59CC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1001D5A48@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v57 = a2;
  v54 = sub_1001A551C(&qword_1003769C0, &qword_1002F1A60);
  v3 = *(*(v54 - 8) + 64);
  __chkstk_darwin(v54);
  v56 = (&v46 - v4);
  v50 = sub_1001A551C(&qword_1003769C8, &qword_1002F1A68);
  v5 = *(*(v50 - 8) + 64);
  __chkstk_darwin(v50);
  v7 = (&v46 - v6);
  v55 = sub_1001A551C(&qword_1003769D0, &qword_1002F1A70);
  v8 = *(*(v55 - 8) + 64);
  __chkstk_darwin(v55);
  v52 = &v46 - v9;
  v51 = type metadata accessor for StackNavigationViewStyle();
  v47 = *(v51 - 8);
  v10 = *(v47 + 64);
  __chkstk_darwin(v51);
  v12 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_1001A551C(&qword_1003769D8, &qword_1002F1A78);
  v46 = *(v49 - 8);
  v13 = *(v46 + 64);
  __chkstk_darwin(v49);
  v15 = &v46 - v14;
  v53 = sub_1001A551C(&qword_1003769E0, &qword_1002F1A80);
  v48 = *(v53 - 8);
  v16 = *(v48 + 64);
  __chkstk_darwin(v53);
  v18 = &v46 - v17;
  v19 = *a1;
  v20 = a1[1];
  v21 = *(a1 + 16);
  type metadata accessor for AllMetricsViewModel();
  sub_1001DD8A8(&qword_1003769E8, type metadata accessor for AllMetricsViewModel);
  v22 = *(StateObject.wrappedValue.getter() + 56);

  if (v22 > 1)
  {
    v32 = static HorizontalAlignment.center.getter();
    LOBYTE(v58) = 1;
    sub_1002274C8(v81);
    v74 = *&v81[96];
    v75 = *&v81[112];
    v70 = *&v81[32];
    v71 = *&v81[48];
    v72 = *&v81[64];
    v73 = *&v81[80];
    v68 = *v81;
    v69 = *&v81[16];
    v77[6] = *&v81[96];
    v77[7] = *&v81[112];
    v77[2] = *&v81[32];
    v77[3] = *&v81[48];
    v77[4] = *&v81[64];
    v77[5] = *&v81[80];
    v76 = v81[128];
    v78 = v81[128];
    v77[0] = *v81;
    v77[1] = *&v81[16];
    sub_1001AC934(&v68, v67, &qword_1003769F0, &qword_1002F1A88);
    sub_1001AC99C(v77, &qword_1003769F0, &qword_1002F1A88);
    *&v81[39] = v70;
    *&v81[23] = v69;
    *&v81[103] = v74;
    *&v81[87] = v73;
    *&v81[119] = v75;
    *&v81[55] = v71;
    *&v81[71] = v72;
    *&v81[7] = v68;
    *(&v80[2] + 1) = *&v81[32];
    *(&v80[1] + 1) = *&v81[16];
    *(&v80[5] + 1) = *&v81[80];
    *(&v80[6] + 1) = *&v81[96];
    *(&v80[7] + 1) = *&v81[112];
    *(&v80[3] + 1) = *&v81[48];
    v81[135] = v76;
    v79 = v32;
    LOBYTE(v80[0]) = v58;
    *(&v80[8] + 1) = *&v81[128];
    *(&v80[4] + 1) = *&v81[64];
    *(v80 + 1) = *v81;
    *&v81[96] = v80[5];
    *&v81[112] = v80[6];
    *&v81[128] = v80[7];
    *&v81[137] = *(&v80[7] + 9);
    *&v81[32] = v80[1];
    *&v81[48] = v80[2];
    *&v81[64] = v80[3];
    *&v81[80] = v80[4];
    *v81 = v32;
    *&v81[16] = v80[0];
    if (v22 == 2)
    {
      sub_1001DB5AC(v81);
    }

    else
    {
      sub_1001DB378(v81);
    }

    v64 = *&v81[96];
    v65 = *&v81[112];
    v66[0] = *&v81[128];
    *(v66 + 10) = *&v81[138];
    v60 = *&v81[32];
    v61 = *&v81[48];
    v62 = *&v81[64];
    v63 = *&v81[80];
    v58 = *v81;
    v59 = *&v81[16];
    sub_1001AC934(&v79, v67, &qword_1003769F8, &qword_1002F1A90);
    sub_1001A551C(&qword_1003769F8, &qword_1002F1A90);
    sub_1001AD0C8(&qword_100376A00, &qword_1003769F8, &qword_1002F1A90);
    _ConditionalContent<>.init(storage:)();
    v41 = *&v67[112];
    v42 = v56;
    v56[6] = *&v67[96];
    v42[7] = v41;
    v42[8] = *&v67[128];
    *(v42 + 138) = *&v67[138];
    v43 = *&v67[48];
    v42[2] = *&v67[32];
    v42[3] = v43;
    v44 = *&v67[80];
    v42[4] = *&v67[64];
    v42[5] = v44;
    v45 = *&v67[16];
    *v42 = *v67;
    v42[1] = v45;
    swift_storeEnumTagMultiPayload();
    sub_1001A551C(&qword_100376A08, &qword_1002F1A98);
    sub_1001DB384();
    sub_1001DB4FC();
    _ConditionalContent<>.init(storage:)();
    return sub_1001AC99C(&v79, &qword_1003769F8, &qword_1002F1A90);
  }

  else if (v22)
  {
    v33 = static HorizontalAlignment.center.getter();
    LOBYTE(v77[0]) = 1;
    sub_100227820(v81);
    v80[5] = *&v81[96];
    v80[6] = *&v81[112];
    v80[1] = *&v81[32];
    v80[2] = *&v81[48];
    v80[3] = *&v81[64];
    v80[4] = *&v81[80];
    v79 = *v81;
    v80[0] = *&v81[16];
    v64 = *&v81[96];
    v65 = *&v81[112];
    v60 = *&v81[32];
    v61 = *&v81[48];
    v62 = *&v81[64];
    v63 = *&v81[80];
    LOBYTE(v80[7]) = v81[128];
    LOBYTE(v66[0]) = v81[128];
    v58 = *v81;
    v59 = *&v81[16];
    sub_1001AC934(&v79, v67, &qword_1003769F0, &qword_1002F1A88);
    sub_1001AC99C(&v58, &qword_1003769F0, &qword_1002F1A88);
    *&v67[39] = v80[1];
    *&v67[23] = v80[0];
    *&v67[103] = v80[5];
    *&v67[87] = v80[4];
    *&v67[119] = v80[6];
    *&v67[55] = v80[2];
    *&v67[71] = v80[3];
    *&v67[7] = v79;
    *&v81[49] = *&v67[32];
    *&v81[33] = *&v67[16];
    *&v81[97] = *&v67[80];
    *&v81[113] = *&v67[96];
    *&v81[129] = *&v67[112];
    *&v81[65] = *&v67[48];
    v67[135] = v80[7];
    *v81 = v33;
    v81[16] = v77[0];
    *&v81[145] = *&v67[128];
    *&v81[81] = *&v67[64];
    *&v81[17] = *v67;
    v34 = *&v81[112];
    v7[6] = *&v81[96];
    v7[7] = v34;
    v7[8] = *&v81[128];
    *(v7 + 137) = *&v81[137];
    v35 = *&v81[48];
    v7[2] = *&v81[32];
    v7[3] = v35;
    v36 = *&v81[80];
    v7[4] = *&v81[64];
    v7[5] = v36;
    v37 = *&v81[16];
    *v7 = *v81;
    v7[1] = v37;
    swift_storeEnumTagMultiPayload();
    sub_1001AC934(v81, v67, &qword_1003769F8, &qword_1002F1A90);
    sub_1001A551C(&qword_1003769F8, &qword_1002F1A90);
    v38 = sub_1001AD0C8(&qword_100376A18, &qword_1003769D8, &qword_1002F1A78);
    v39 = sub_1001DD8A8(&qword_100375280, &type metadata accessor for StackNavigationViewStyle);
    *v67 = v49;
    *&v67[8] = v51;
    *&v67[16] = v38;
    *&v67[24] = v39;
    swift_getOpaqueTypeConformance2();
    sub_1001AD0C8(&qword_100376A00, &qword_1003769F8, &qword_1002F1A90);
    v40 = v52;
    _ConditionalContent<>.init(storage:)();
    sub_1001AC934(v40, v56, &qword_1003769D0, &qword_1002F1A70);
    swift_storeEnumTagMultiPayload();
    sub_1001A551C(&qword_100376A08, &qword_1002F1A98);
    sub_1001DB384();
    sub_1001DB4FC();
    _ConditionalContent<>.init(storage:)();
    sub_1001AC99C(v81, &qword_1003769F8, &qword_1002F1A90);
    return sub_1001AC99C(v40, &qword_1003769D0, &qword_1002F1A70);
  }

  else
  {
    __chkstk_darwin(v23);
    *(&v46 - 2) = a1;
    sub_1001A551C(&qword_100376A28, &qword_1002F1AA0);
    sub_1001DB5BC();
    NavigationView.init(content:)();
    StackNavigationViewStyle.init()();
    v24 = sub_1001AD0C8(&qword_100376A18, &qword_1003769D8, &qword_1002F1A78);
    v25 = sub_1001DD8A8(&qword_100375280, &type metadata accessor for StackNavigationViewStyle);
    v26 = v49;
    v27 = v51;
    View.navigationViewStyle<A>(_:)();
    (*(v47 + 8))(v12, v27);
    (*(v46 + 8))(v15, v26);
    v28 = v48;
    (*(v48 + 16))(v7, v18, v53);
    swift_storeEnumTagMultiPayload();
    sub_1001A551C(&qword_1003769F8, &qword_1002F1A90);
    *v81 = v26;
    *&v81[8] = v27;
    *&v81[16] = v24;
    *&v81[24] = v25;
    swift_getOpaqueTypeConformance2();
    sub_1001AD0C8(&qword_100376A00, &qword_1003769F8, &qword_1002F1A90);
    v29 = v52;
    v30 = v53;
    _ConditionalContent<>.init(storage:)();
    sub_1001AC934(v29, v56, &qword_1003769D0, &qword_1002F1A70);
    swift_storeEnumTagMultiPayload();
    sub_1001A551C(&qword_100376A08, &qword_1002F1A98);
    sub_1001DB384();
    sub_1001DB4FC();
    _ConditionalContent<>.init(storage:)();
    sub_1001AC99C(v29, &qword_1003769D0, &qword_1002F1A70);
    return (*(v28 + 8))(v18, v30);
  }
}

uint64_t sub_1001D6758@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v55 = a2;
  v50 = sub_1001A551C(&qword_100376A70, &qword_1002F1AD0);
  v3 = *(*(v50 - 8) + 64);
  __chkstk_darwin(v50);
  v53 = &v46 - v4;
  v54 = sub_1001A551C(&qword_100376A78, &qword_1002F1AD8);
  v49 = *(v54 - 8);
  v5 = *(v49 + 64);
  __chkstk_darwin(v54);
  v48 = &v46 - v6;
  v7 = type metadata accessor for NavigationBarItem.TitleDisplayMode();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1001A551C(&qword_100376A48, &qword_1002F1AB8);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12);
  v15 = &v46 - v14;
  v16 = sub_1001A551C(&qword_100376A38, &qword_1002F1AA8);
  v51 = *(v16 - 8);
  v52 = v16;
  v17 = *(v51 + 64);
  __chkstk_darwin(v16);
  v19 = &v46 - v18;
  *v15 = static HorizontalAlignment.center.getter();
  *(v15 + 1) = 0;
  v15[16] = 1;
  v20 = &v15[*(sub_1001A551C(&qword_100376A80, &qword_1002F1AE0) + 44)];
  v47 = a1;
  sub_1001D6EC8(a1, v20);
  LocalizedStringKey.init(stringLiteral:)();
  (*(v8 + 104))(v11, enum case for NavigationBarItem.TitleDisplayMode.inline(_:), v7);
  v21 = v19;
  v22 = v12;
  v23 = sub_1001AD0C8(&qword_100376A50, &qword_100376A48, &qword_1002F1AB8);
  View.navigationBarTitle(_:displayMode:)();

  (*(v8 + 8))(v11, v7);
  sub_1001AC99C(v15, &qword_100376A48, &qword_1002F1AB8);
  if (qword_100375018 != -1)
  {
    swift_once();
  }

  if (*(qword_100382500 + 32) == 1684099177 && *(qword_100382500 + 40) == 0xE400000000000000 || (v24 = _stringCompareWithSmolCheck(_:_:expecting:)(), (v24 & 1) != 0))
  {
    v26 = v51;
    v25 = v52;
    (*(v51 + 16))(v53, v19, v52);
    swift_storeEnumTagMultiPayload();
    v27 = sub_1001A55C8(&qword_100376A40, &qword_1002F1AB0);
    v56 = v22;
    v57 = v23;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v29 = sub_1001A55C8(&qword_100376A58, &qword_1002F1AC0);
    v30 = sub_1001A55C8(&qword_100376A60, &qword_1002F1AC8);
    v31 = v19;
    v32 = sub_1001AD0C8(&qword_100376A68, &qword_100376A60, &qword_1002F1AC8);
    v56 = v30;
    v57 = v32;
    v33 = swift_getOpaqueTypeConformance2();
    v56 = v29;
    v57 = v33;
    v34 = swift_getOpaqueTypeConformance2();
    v56 = v25;
    v57 = v27;
    v58 = OpaqueTypeConformance2;
    v59 = v34;
    swift_getOpaqueTypeConformance2();
    _ConditionalContent<>.init(storage:)();
  }

  else
  {
    __chkstk_darwin(v24);
    *(&v46 - 2) = v47;
    v35 = sub_1001A551C(&qword_100376A40, &qword_1002F1AB0);
    v56 = v22;
    v57 = v23;
    v36 = swift_getOpaqueTypeConformance2();
    v37 = sub_1001A55C8(&qword_100376A58, &qword_1002F1AC0);
    v38 = sub_1001A55C8(&qword_100376A60, &qword_1002F1AC8);
    v39 = sub_1001AD0C8(&qword_100376A68, &qword_100376A60, &qword_1002F1AC8);
    v56 = v38;
    v57 = v39;
    v40 = swift_getOpaqueTypeConformance2();
    v56 = v37;
    v57 = v40;
    v41 = swift_getOpaqueTypeConformance2();
    v42 = v48;
    v25 = v52;
    v31 = v21;
    View.toolbar<A>(content:)();
    v43 = v49;
    v44 = v54;
    (*(v49 + 16))(v53, v42, v54);
    swift_storeEnumTagMultiPayload();
    v56 = v25;
    v57 = v35;
    v58 = v36;
    v59 = v41;
    swift_getOpaqueTypeConformance2();
    _ConditionalContent<>.init(storage:)();
    (*(v43 + 8))(v42, v44);
    v26 = v51;
  }

  return (*(v26 + 8))(v31, v25);
}

uint64_t sub_1001D6EC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v99 = a2;
  v3 = sub_1001A551C(&qword_100376B50, &qword_1002F1B88);
  v97 = *(v3 - 8);
  v98 = v3;
  v4 = *(v97 + 64);
  __chkstk_darwin(v3);
  v91 = (&v71 - v5);
  v6 = type metadata accessor for PageIndexViewStyle.BackgroundDisplayMode();
  v93 = *(v6 - 8);
  v94 = v6;
  v7 = *(v93 + 64);
  v8 = __chkstk_darwin(v6);
  v92 = &v71 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v87 = &v71 - v10;
  v11 = type metadata accessor for PageIndexViewStyle();
  v95 = *(v11 - 8);
  v96 = v11;
  v12 = *(v95 + 64);
  __chkstk_darwin(v11);
  v86 = &v71 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for PageTabViewStyle.IndexDisplayMode();
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v79 = &v71 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = type metadata accessor for PageTabViewStyle();
  v81 = *(v83 - 8);
  v17 = *(v81 + 64);
  __chkstk_darwin(v83);
  v75 = &v71 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = sub_1001A551C(&qword_100376B58, &qword_1002F1B90);
  v78 = *(v80 - 8);
  v19 = *(v78 + 64);
  __chkstk_darwin(v80);
  v21 = &v71 - v20;
  v85 = sub_1001A551C(&qword_100376B60, &qword_1002F1B98);
  v84 = *(v85 - 8);
  v22 = *(v84 + 64);
  __chkstk_darwin(v85);
  v24 = &v71 - v23;
  v25 = sub_1001A551C(&qword_100376B68, &qword_1002F1BA0);
  v89 = *(v25 - 8);
  v90 = v25;
  v26 = *(v89 + 64);
  v27 = __chkstk_darwin(v25);
  v88 = &v71 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v100 = &v71 - v29;
  v30 = *a1;
  v31 = *(a1 + 8);
  v32 = a1;
  v33 = *(a1 + 16);
  type metadata accessor for AllMetricsViewModel();
  sub_1001DD8A8(&qword_1003769E8, type metadata accessor for AllMetricsViewModel);
  v82 = StateObject.wrappedValue.getter();
  v34 = sub_1001DC6D8();
  v35 = type metadata accessor for FTMMetricDetailsClass();
  v36 = *(v35 + 48);
  v37 = *(v35 + 52);
  v38 = swift_allocObject();
  v101 = _swiftEmptyArrayStorage;
  sub_1001A551C(&qword_100376B70, &qword_1002F1BA8);
  Published.init(initialValue:)();
  swift_getKeyPath();
  swift_getKeyPath();
  v101 = _swiftEmptyArrayStorage;

  static Published.subscript.setter();
  if (qword_100375020 != -1)
  {
    swift_once();
  }

  v39 = qword_100382508;
  v40 = OBJC_IVAR____TtC11FTMInternal25FTMCellMonitorSharedClass_metricDetailsClassObject;
  swift_beginAccess();

  v41 = v39;
  v42 = *&v39[v40];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v105 = *&v39[v40];
  *&v39[v40] = 0x8000000000000000;
  sub_1001F8DE8(v38, 5521746, 0xE300000000000000, isUniquelyReferenced_nonNull_native);
  *&v39[v40] = v105;
  swift_endAccess();

  sub_1001DD8A8(&qword_100376B78, type metadata accessor for FTMMetricDetailsClass);
  v77 = EnvironmentObject.init()();
  v74 = v44;
  v76 = v38;
  if (qword_100375018 != -1)
  {
    swift_once();
  }

  v45 = *(qword_100382500 + 80);
  type metadata accessor for FTMCarrierInfoObjectChanged();
  sub_1001DD8A8(&qword_100376B80, type metadata accessor for FTMCarrierInfoObjectChanged);

  v73 = ObservedObject.init(wrappedValue:)();
  v72 = v46;
  v71 = static ObservableObject.environmentStore.getter();
  __chkstk_darwin(v71);
  *(&v71 - 2) = v32;
  *(&v71 - 1) = v34;
  sub_1001A551C(&qword_100376B88, &qword_1002F1BF8);
  sub_1001DCD18();
  TabView<>.init(content:)();

  static PageTabViewStyle.IndexDisplayMode.automatic.getter();
  v47 = v75;
  PageTabViewStyle.init(indexDisplayMode:)();
  v48 = sub_1001AD0C8(&qword_100376C08, &qword_100376B58, &qword_1002F1B90);
  v49 = v24;
  v50 = v80;
  v51 = v83;
  View.tabViewStyle<A>(_:)();
  (*(v81 + 8))(v47, v51);
  (*(v78 + 8))(v21, v50);
  v52 = v87;
  static PageIndexViewStyle.BackgroundDisplayMode.interactive.getter();
  v53 = v93;
  v54 = v94;
  (*(v93 + 16))(v92, v52, v94);
  v55 = v86;
  PageIndexViewStyle.init(backgroundDisplayMode:)();
  (*(v53 + 8))(v52, v54);
  v101 = v50;
  v102 = v51;
  v103 = v48;
  v104 = &protocol witness table for PageTabViewStyle;
  swift_getOpaqueTypeConformance2();
  sub_1001DD8A8(&qword_100376C10, &type metadata accessor for PageIndexViewStyle);
  v56 = v100;
  v57 = v85;
  v58 = v96;
  View.indexViewStyle<A>(_:)();
  (*(v95 + 8))(v55, v58);
  (*(v84 + 8))(v49, v57);
  v60 = v88;
  v59 = v89;
  v61 = *(v89 + 16);
  v62 = v90;
  v61(v88, v56, v90);
  v63 = v91;
  v64 = v74;
  *v91 = v77;
  v63[1] = v64;
  v65 = v72;
  v63[2] = v73;
  v63[3] = v65;
  v66 = v76;
  v63[4] = v71;
  v63[5] = v66;
  v67 = sub_1001A551C(&qword_100376C18, &qword_1002F1C38);
  v61(v63 + *(v67 + 48), v60, v62);

  v68 = *(v59 + 8);
  v68(v100, v62);
  v68(v60, v62);

  v69 = v99;
  sub_1001B603C(v63, v99, &qword_100376B50, &qword_1002F1B88);
  return (*(v97 + 56))(v69, 0, 1, v98);
}

uint64_t sub_1001D79C4(uint64_t a1, uint64_t a2)
{
  v10 = *(a1 + 40);
  v9 = v10;
  swift_getKeyPath();
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  v5 = *(a1 + 16);
  *(v4 + 24) = *a1;
  *(v4 + 40) = v5;
  v6 = *(a1 + 48);
  *(v4 + 56) = *(a1 + 32);
  *(v4 + 72) = v6;
  sub_1001AC934(&v10, v8, &qword_100376C20, &qword_1002F1C58);

  sub_1001DBB88(a1, v8);
  sub_1001A551C(&qword_100376C20, &qword_1002F1C58);
  sub_1001A551C(&qword_100376BA0, &qword_1002F1C00);
  sub_1001AD0C8(&qword_100376C28, &qword_100376C20, &qword_1002F1C58);
  sub_1001DD0E0();
  sub_1001DCD9C();
  return ForEach<>.init(_:id:content:)();
}

uint64_t sub_1001D7B30@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v98 = a3;
  v109 = a4;
  v107 = sub_1001A551C(&qword_100376BF8, &qword_1002F1C30);
  v93 = *(v107 - 8);
  v5 = v93[8];
  __chkstk_darwin(v107);
  KeyPath = &v89 - v6;
  v108 = sub_1001A551C(&qword_100376C38, &qword_1002F1C60);
  v97 = *(v108 - 8);
  v8 = *(v97 + 64);
  __chkstk_darwin(v108);
  v96 = &v89 - v9;
  v10 = sub_1001A551C(&qword_100376C40, &qword_1002F1C68);
  v94 = *(v10 - 8);
  v11 = *(v94 + 64);
  __chkstk_darwin(v10);
  v92 = &v89 - v12;
  v13 = type metadata accessor for FTMBandInfoDataModel(0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = __chkstk_darwin(v13 - 8);
  v18 = &v89 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = &v89 - v19;
  v21 = sub_1001A551C(&qword_100376BE0, &qword_1002F1C20);
  v22 = *(*(v21 - 8) + 64);
  __chkstk_darwin(v21);
  v95 = &v89 - v23;
  v104 = sub_1001A551C(&qword_100376C48, &qword_1002F1C70);
  v24 = *(*(v104 - 8) + 64);
  __chkstk_darwin(v104);
  v106 = &v89 - v25;
  v100 = sub_1001A551C(&qword_100376C50, &qword_1002F1C78);
  v26 = *(*(v100 - 8) + 64);
  __chkstk_darwin(v100);
  v99 = &v89 - v27;
  v105 = sub_1001A551C(&qword_100376BC0, &qword_1002F1C10);
  v28 = *(*(v105 - 8) + 64);
  __chkstk_darwin(v105);
  v103 = &v89 - v29;
  v30 = sub_1001A551C(&qword_100376BD0, &qword_1002F1C18);
  v31 = *(*(v30 - 8) + 64);
  v32 = __chkstk_darwin(v30);
  v34 = (&v89 - v33);
  LODWORD(a1) = *a1;
  v102 = v21;
  v101 = v32;
  if (!a1)
  {

LABEL_5:
    *v34 = static Alignment.center.getter();
    v34[1] = v38;
    v39 = sub_1001A551C(&qword_100376C70, &unk_1002F1CF0);
    sub_1001D8DB4(a2, v98, v34 + *(v39 + 44));
    sub_1001AC934(v34, v99, &qword_100376BD0, &qword_1002F1C18);
    swift_storeEnumTagMultiPayload();
    sub_1001AD0C8(&qword_100376BC8, &qword_100376BD0, &qword_1002F1C18);
    sub_1001DCFDC();
    v40 = v103;
    _ConditionalContent<>.init(storage:)();
    sub_1001AC934(v40, v106, &qword_100376BC0, &qword_1002F1C10);
    swift_storeEnumTagMultiPayload();
    sub_1001DCF24();
    v41 = sub_1001AD0C8(&qword_100376C00, &qword_100376BF8, &qword_1002F1C30);
    *v115 = v107;
    *&v115[8] = v41;
    swift_getOpaqueTypeConformance2();
    v42 = v109;
    _ConditionalContent<>.init(storage:)();
    sub_1001AC99C(v40, &qword_100376BC0, &qword_1002F1C10);
    sub_1001AC99C(v34, &qword_100376BD0, &qword_1002F1C18);
    v43 = sub_1001A551C(&qword_100376BB0, &qword_1002F1C08);
    return (*(*(v43 - 8) + 56))(v42, 0, 1, v43);
  }

  v91 = v18;
  v36 = v10;
  v37 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v37)
  {
    goto LABEL_5;
  }

  v45 = v36;
  if (qword_100375018 != -1)
  {
    goto LABEL_62;
  }

LABEL_7:
  v46 = qword_100382500;
  if (*(qword_100382500 + 26) != 1)
  {
LABEL_48:
    if (*(v46 + 24) == 1)
    {
      if (a1 == 2)
      {
        v60 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v60 & 1) == 0)
        {
          goto LABEL_51;
        }
      }

      else
      {
      }

      sub_1001A551C(&qword_100376C58, &qword_1002F1C80);
      sub_1001DD370(&qword_100376C60, &qword_100376C58, &qword_1002F1C80, sub_1001DD134);
      List<>.init(content:)();
      v65 = swift_allocObject();
      v66 = v98;
      v67 = *(v98 + 1);
      v65[1] = *v98;
      v65[2] = v67;
      v68 = *(v66 + 3);
      v65[3] = *(v66 + 2);
      v65[4] = v68;
      sub_1001DBB88(v66, v115);
      v69 = sub_1001AD0C8(&qword_100376C00, &qword_100376BF8, &qword_1002F1C30);
      v70 = v96;
      v71 = v107;
      View.refreshable(action:)();

      (v93[1])(KeyPath, v71);
      v72 = v97;
      v73 = v108;
      (*(v97 + 16))(v106, v70, v108);
      swift_storeEnumTagMultiPayload();
      sub_1001DCF24();
      *v115 = v71;
      *&v115[8] = v69;
      swift_getOpaqueTypeConformance2();
      v74 = v109;
      _ConditionalContent<>.init(storage:)();
      (*(v72 + 8))(v70, v73);
      v75 = sub_1001A551C(&qword_100376BB0, &qword_1002F1C08);
      return (*(*(v75 - 8) + 56))(v74, 0, 1, v75);
    }

LABEL_51:
    v61 = sub_1001A551C(&qword_100376BB0, &qword_1002F1C08);
    v62 = *(*(v61 - 8) + 56);
    v63 = v61;
    v64 = v109;

    return v62(v64, 1, 1, v63);
  }

  if (a1 == 2)
  {
  }

  else
  {
    v47 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v47 & 1) == 0)
    {
      goto LABEL_48;
    }
  }

  if (*(v46 + 160))
  {
    goto LABEL_59;
  }

  v97 = *(v46 + 156);
  if (qword_100375020 != -1)
  {
    swift_once();
  }

  v90 = v45;
  v48 = *(qword_100382508 + OBJC_IVAR____TtC11FTMInternal25FTMCellMonitorSharedClass_bandDataObj);
  KeyPath = swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.getter();

  v49 = *v115;
  v96 = *(*v115 + 16);
  if (v96)
  {
    v45 = 0;
    v93 = _swiftEmptyArrayStorage;
    while (1)
    {
      if (v45 >= *(v49 + 16))
      {
        __break(1u);
LABEL_62:
        swift_once();
        goto LABEL_7;
      }

      a1 = ((*(v14 + 80) + 32) & ~*(v14 + 80));
      v50 = *(v14 + 72);
      sub_1001BB760(&a1[v49 + v50 * v45], v20);
      if (v20[8])
      {
        if (v97)
        {
          goto LABEL_40;
        }
      }

      else if (*v20 != v97)
      {
        goto LABEL_40;
      }

      v51 = v20[9];
      if (v51 > 1)
      {
        break;
      }

      if (v20[9])
      {
        goto LABEL_27;
      }

LABEL_28:
      KeyPath = v20[25];
      if (v20[25] > 3u)
      {
        if (v20[25] > 5u)
        {
          if (KeyPath != 6)
          {
            goto LABEL_43;
          }
        }

        else if (KeyPath != 4)
        {
LABEL_31:

          goto LABEL_40;
        }
      }

      v53 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v53 & 1) == 0)
      {
        if (KeyPath == 3)
        {
          goto LABEL_31;
        }

        v54 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v54 & 1) == 0)
        {
LABEL_43:
          sub_1001BB4B8(v20, v91);
          v55 = v93;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *v115 = v55;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            KeyPath = v115;
            sub_1001F5438(0, v55[2] + 1, 1);
            v55 = *v115;
          }

          v58 = v55[2];
          v57 = v55[3];
          v59 = v55;
          if (v58 >= v57 >> 1)
          {
            KeyPath = v115;
            sub_1001F5438(v57 > 1, v58 + 1, 1);
            v59 = *v115;
          }

          v59[2] = v58 + 1;
          v93 = v59;
          sub_1001BB4B8(v91, &a1[v59 + v58 * v50]);
          goto LABEL_41;
        }
      }

LABEL_40:
      sub_1001BB7C4(v20);
LABEL_41:
      if (v96 == ++v45)
      {
        goto LABEL_57;
      }
    }

    if (v51 != 2 && v51 != 3)
    {
      goto LABEL_40;
    }

LABEL_27:
    v52 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v52 & 1) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_28;
  }

  v93 = _swiftEmptyArrayStorage;
LABEL_57:

  v76 = v93[2];

  v45 = v90;
  if (v76)
  {
    v77 = static HorizontalAlignment.center.getter();
    v114 = 1;
    v78 = v98;
    sub_1001D9A10(v98, v115);
    v110 = v77;
    LOBYTE(v111) = v114;
    *(&v111 + 1) = *v115;
    v112 = *&v115[8];
    v113[0] = v115[24];
    *&v113[8] = v116;
    *&v113[24] = v117;
    v79 = swift_allocObject();
    v80 = *(v78 + 1);
    v79[1] = *v78;
    v79[2] = v80;
    v81 = *(v78 + 3);
    v79[3] = *(v78 + 2);
    v79[4] = v81;
    sub_1001DBB88(v78, v115);
    sub_1001A551C(&qword_100376BE8, &qword_1002F1C28);
    sub_1001AD0C8(&qword_100376BF0, &qword_100376BE8, &qword_1002F1C28);
    v82 = v92;
    View.refreshable(action:)();

    v117 = *v113;
    v118 = *&v113[16];
    *&v115[16] = v111;
    v116 = v112;
    *v115 = v110;
    sub_1001AC99C(v115, &qword_100376BE8, &qword_1002F1C28);
    v83 = v94;
    v84 = v95;
    (*(v94 + 32))(v95, v82, v45);
    (*(v83 + 56))(v84, 0, 1, v45);
  }

  else
  {
LABEL_59:
    v84 = v95;
    (*(v94 + 56))(v95, 1, 1, v45);
  }

  sub_1001AC934(v84, v99, &qword_100376BE0, &qword_1002F1C20);
  swift_storeEnumTagMultiPayload();
  sub_1001AD0C8(&qword_100376BC8, &qword_100376BD0, &qword_1002F1C18);
  sub_1001DCFDC();
  v85 = v103;
  _ConditionalContent<>.init(storage:)();
  sub_1001AC934(v85, v106, &qword_100376BC0, &qword_1002F1C10);
  swift_storeEnumTagMultiPayload();
  sub_1001DCF24();
  v86 = sub_1001AD0C8(&qword_100376C00, &qword_100376BF8, &qword_1002F1C30);
  *v115 = v107;
  *&v115[8] = v86;
  swift_getOpaqueTypeConformance2();
  v87 = v109;
  _ConditionalContent<>.init(storage:)();
  sub_1001AC99C(v85, &qword_100376BC0, &qword_1002F1C10);
  sub_1001AC99C(v84, &qword_100376BE0, &qword_1002F1C20);
  v88 = sub_1001A551C(&qword_100376BB0, &qword_1002F1C08);
  return (*(*(v88 - 8) + 56))(v87, 0, 1, v88);
}

uint64_t sub_1001D8DB4@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X1>, uint64_t a3@<X8>)
{
  v54 = a3;
  v5 = type metadata accessor for CircularProgressViewStyle();
  v47 = *(v5 - 8);
  v48 = v5;
  v6 = *(v47 + 64);
  __chkstk_darwin(v5);
  v8 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1001A551C(&qword_1003755A0, &qword_1002EF750);
  v46 = *(v9 - 8);
  v10 = *(v46 + 64);
  __chkstk_darwin(v9);
  v12 = &v45 - v11;
  v53 = sub_1001A551C(&qword_100376C78, &qword_1002F1D00);
  v13 = *(*(v53 - 8) + 64);
  __chkstk_darwin(v53);
  v15 = &v45 - v14;
  v50 = sub_1001A551C(&qword_100376C80, &qword_1002F1D08);
  v16 = *(*(v50 - 8) + 64);
  __chkstk_darwin(v50);
  v52 = &v45 - v17;
  v49 = sub_1001A551C(&qword_100376C88, &qword_1002F1D10);
  v18 = *(v49 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin(v49);
  v21 = &v45 - v20;
  v51 = sub_1001A551C(&qword_100376C90, &qword_1002F1D18);
  v22 = *(v51 - 8);
  v23 = *(v22 + 64);
  v24 = __chkstk_darwin(v51);
  v26 = &v45 - v25;
  if (*(a1 + 16))
  {
    __chkstk_darwin(v24);
    *(&v45 - 2) = a1;
    *(&v45 - 1) = a2;
    sub_1001A551C(&qword_100376C98, &qword_1002F1D20);
    sub_1001DD2C0();
    List<>.init(content:)();
    v27 = swift_allocObject();
    v28 = a2[1];
    v27[1] = *a2;
    v27[2] = v28;
    v29 = a2[3];
    v27[3] = a2[2];
    v27[4] = v29;
    sub_1001DBB88(a2, &v55);
    v30 = sub_1001AD0C8(&qword_100376CE0, &qword_100376C88, &qword_1002F1D10);
    v31 = v49;
    View.refreshable(action:)();

    (*(v18 + 8))(v21, v31);
    v32 = v51;
    (*(v22 + 16))(v52, v26, v51);
    swift_storeEnumTagMultiPayload();
    v55 = v31;
    v56 = v30;
    swift_getOpaqueTypeConformance2();
    sub_1001DD6E8();
    _ConditionalContent<>.init(storage:)();
    return (*(v22 + 8))(v26, v32);
  }

  else
  {
    ProgressView<>.init<>()();
    CircularProgressViewStyle.init()();
    sub_1001AD0C8(&qword_100375598, &qword_1003755A0, &qword_1002EF750);
    sub_1001DD8A8(&qword_100376CF0, &type metadata accessor for CircularProgressViewStyle);
    v34 = v48;
    View.progressViewStyle<A>(_:)();
    (*(v47 + 8))(v8, v34);
    (*(v46 + 8))(v12, v9);
    static UnitPoint.center.getter();
    v35 = v52;
    v36 = &v15[*(v53 + 36)];
    __asm { FMOV            V2.2D, #2.0 }

    *v36 = _Q2;
    *(v36 + 2) = v42;
    *(v36 + 3) = v43;
    sub_1001AC934(v15, v35, &qword_100376C78, &qword_1002F1D00);
    swift_storeEnumTagMultiPayload();
    v44 = sub_1001AD0C8(&qword_100376CE0, &qword_100376C88, &qword_1002F1D10);
    v55 = v49;
    v56 = v44;
    swift_getOpaqueTypeConformance2();
    sub_1001DD6E8();
    _ConditionalContent<>.init(storage:)();
    return sub_1001AC99C(v15, &qword_100376C78, &qword_1002F1D00);
  }
}

uint64_t sub_1001D9414(uint64_t a1, _OWORD *a2)
{
  v4 = *(a1 + 16);
  v10 = 0;
  v11 = v4;
  swift_getKeyPath();
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  v6 = a2[1];
  *(v5 + 24) = *a2;
  *(v5 + 40) = v6;
  v7 = a2[3];
  *(v5 + 56) = a2[2];
  *(v5 + 72) = v7;

  sub_1001DBB88(a2, v9);
  sub_1001A551C(&qword_100376B30, &qword_1002F1E50);
  sub_1001A551C(&qword_100376CB0, &qword_1002F1D28);
  sub_1001DBBC0();
  sub_1001DD370(&qword_100376CA8, &qword_100376CB0, &qword_1002F1D28, sub_1001DD400);
  return ForEach<>.init(_:id:content:)();
}

unint64_t *sub_1001D9564(unint64_t *result, uint64_t a2)
{
  v2 = *result;
  if ((*result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v2 < *(a2 + 16))
  {
    v3 = a2 + 16 * v2;
    v4 = *(v3 + 32);
    __chkstk_darwin(*(v3 + 40));

    sub_1001A551C(&qword_100376CC0, &qword_1002F1D30);
    sub_1001DD400();
    sub_1001A56A0();
    return Section<>.init<A>(_:content:)();
  }

  __break(1u);
  return result;
}

uint64_t sub_1001D9654@<X0>(uint64_t a1@<X1>, unint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_6;
  }

  v3 = a3;
  if (*(a1 + 16) <= a2)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v7 = a1 + 16 * a2;
  v5 = *(v7 + 32);
  v4 = *(v7 + 40);
  v8 = type metadata accessor for FTMMetricDetailsClass();
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  v6 = swift_allocObject();

  sub_1001A551C(&qword_100376B70, &qword_1002F1BA8);
  Published.init(initialValue:)();
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.setter();
  if (qword_100375020 != -1)
  {
LABEL_7:
    swift_once();
  }

  v11 = qword_100382508;
  v12 = OBJC_IVAR____TtC11FTMInternal25FTMCellMonitorSharedClass_metricDetailsClassObject;
  swift_beginAccess();

  v13 = v11;
  v14 = *&v11[v12];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v20 = *&v11[v12];
  *&v11[v12] = 0x8000000000000000;
  sub_1001F8DE8(v6, v5, v4, isUniquelyReferenced_nonNull_native);

  *&v11[v12] = v20;
  swift_endAccess();

  sub_1001DD8A8(&qword_100376B78, type metadata accessor for FTMMetricDetailsClass);

  v16 = EnvironmentObject.init()();
  v18 = v17;
  result = static ObservableObject.environmentStore.getter();
  *v3 = v16;
  v3[1] = v18;
  v3[2] = v5;
  v3[3] = v4;
  v3[4] = result;
  v3[5] = v6;
  return result;
}

uint64_t sub_1001D988C(uint64_t a1)
{
  *(v1 + 16) = a1;
  type metadata accessor for MainActor();
  *(v1 + 24) = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1001D9924, v3, v2);
}

uint64_t sub_1001D9924()
{
  v2 = v0[2];
  v1 = v0[3];

  v4 = *v2;
  v3 = v2[1];
  v5 = *(v2 + 16);
  type metadata accessor for AllMetricsViewModel();
  sub_1001DD8A8(&qword_1003769E8, type metadata accessor for AllMetricsViewModel);
  v6 = *(StateObject.wrappedValue.getter() + 16);

  sub_10025CF2C();

  v7 = v0[1];

  return v7();
}

uint64_t sub_1001D9A10@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = *(a1 + 16);
  type metadata accessor for AllMetricsViewModel();
  sub_1001DD8A8(&qword_1003769E8, type metadata accessor for AllMetricsViewModel);
  v6 = StateObject.wrappedValue.getter();
  State.init(wrappedValue:)();
  if (qword_100375020 != -1)
  {
    swift_once();
  }

  v7 = *(qword_100382508 + OBJC_IVAR____TtC11FTMInternal25FTMCellMonitorSharedClass_bandDataObj);
  type metadata accessor for FTMBandInfoDataChanged(0);
  sub_1001DD8A8(&qword_100376CF8, type metadata accessor for FTMBandInfoDataChanged);

  result = ObservedObject.init(wrappedValue:)();
  *a2 = 0x666E4920646E6142;
  *(a2 + 8) = 0xEA0000000000206FLL;
  *(a2 + 16) = v6;
  *(a2 + 24) = v10;
  *(a2 + 32) = v11;
  *(a2 + 40) = result;
  *(a2 + 48) = v9;
  return result;
}

uint64_t sub_1001D9BA0(uint64_t a1)
{
  *(v1 + 16) = a1;
  type metadata accessor for MainActor();
  *(v1 + 24) = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1001D9C38, v3, v2);
}

uint64_t sub_1001D9C38()
{
  v2 = v0[2];
  v1 = v0[3];

  v4 = *v2;
  v3 = v2[1];
  v5 = *(v2 + 16);
  type metadata accessor for AllMetricsViewModel();
  sub_1001DD8A8(&qword_1003769E8, type metadata accessor for AllMetricsViewModel);
  v6 = *(StateObject.wrappedValue.getter() + 16);

  sub_10025D620(0);

  v7 = v0[1];

  return v7();
}

uint64_t sub_1001D9D28()
{
  v0 = type metadata accessor for LocalizedStringKey.StringInterpolation();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v2._countAndFlagsBits = 0;
  v2._object = 0xE000000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v2);
  v3._countAndFlagsBits = 0x61746144205443;
  v3._object = 0xE700000000000000;
  LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v3);
  v4._countAndFlagsBits = 32;
  v4._object = 0xE100000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v4);
  v5._countAndFlagsBits = 0;
  v5._object = 0xE000000000000000;
  LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v5);
  v6._countAndFlagsBits = 0;
  v6._object = 0xE000000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v6);
  LocalizedStringKey.init(stringInterpolation:)();
  sub_1001DD134();
  return Section<>.init(_:content:)();
}

uint64_t sub_1001D9E50@<X0>(uint64_t *a1@<X8>)
{
  if (qword_100375020 != -1)
  {
    swift_once();
  }

  v2 = *(qword_100382508 + OBJC_IVAR____TtC11FTMInternal25FTMCellMonitorSharedClass_primaryCellStateObj);
  type metadata accessor for FTMPrimaryStateChanged();
  sub_1001DD8A8(&qword_100376D00, type metadata accessor for FTMPrimaryStateChanged);

  result = ObservedObject.init(wrappedValue:)();
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1001D9F1C(uint64_t a1)
{
  *(v1 + 16) = a1;
  type metadata accessor for MainActor();
  *(v1 + 24) = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1001DD93C, v3, v2);
}

uint64_t sub_1001D9FB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v17[1] = a2;
  v3 = type metadata accessor for ToolbarItemPlacement();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v5 = sub_1001A551C(&qword_100376A60, &qword_1002F1AC8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = v17 - v8;
  v10 = sub_1001A551C(&qword_100376A58, &qword_1002F1AC0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = v17 - v13;
  static ToolbarItemPlacement.principal.getter();
  v17[4] = a1;
  sub_1001A551C(&qword_100376A88, &qword_1002F1AE8);
  sub_1001AD0C8(&qword_100376A90, &qword_100376A88, &qword_1002F1AE8);
  ToolbarItem<>.init(placement:content:)();
  v15 = sub_1001AD0C8(&qword_100376A68, &qword_100376A60, &qword_1002F1AC8);
  static ToolbarContentBuilder.buildBlock<A>(_:)();
  (*(v6 + 8))(v9, v5);
  v17[6] = v5;
  v17[7] = v15;
  swift_getOpaqueTypeConformance2();
  static ToolbarContentBuilder.buildBlock<A>(_:)();
  return (*(v11 + 8))(v14, v10);
}

uint64_t sub_1001DA274@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = static VerticalAlignment.center.getter();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v4 = sub_1001A551C(&qword_100376A98, &qword_1002F1AF0);
  return sub_1001DA2CC(a1, a2 + *(v4 + 44));
}

uint64_t sub_1001DA2CC@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v89 = a1;
  v94 = a2;
  v2 = type metadata accessor for InlinePickerStyle();
  v86 = *(v2 - 8);
  v3 = *(v86 + 64);
  __chkstk_darwin(v2);
  v5 = &v79 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1001A551C(&qword_100376AA0, &qword_1002F1AF8);
  v82 = *(v6 - 8);
  v7 = *(v82 + 64);
  __chkstk_darwin(v6);
  v9 = &v79 - v8;
  v10 = sub_1001A551C(&qword_100376AA8, &qword_1002F1B00);
  v84 = *(v10 - 8);
  v85 = v10;
  v11 = *(v84 + 64);
  __chkstk_darwin(v10);
  v13 = &v79 - v12;
  v80 = sub_1001A551C(&qword_100376AB0, &qword_1002F1B08);
  v14 = *(*(v80 - 8) + 64);
  __chkstk_darwin(v80);
  v83 = &v79 - v15;
  v91 = sub_1001A551C(&qword_100376AB8, &qword_1002F1B10);
  v16 = *(*(v91 - 8) + 64);
  v17 = __chkstk_darwin(v91);
  v81 = &v79 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v87 = &v79 - v19;
  v92 = sub_1001A551C(&qword_100376AC0, &qword_1002F1B18);
  v20 = *(*(v92 - 8) + 64);
  __chkstk_darwin(v92);
  v22 = &v79 - v21;
  v23 = sub_1001A551C(&qword_100376AC8, &qword_1002F1B20);
  v24 = *(*(v23 - 8) + 64);
  __chkstk_darwin(v23);
  v26 = (&v79 - v25);
  v93 = sub_1001A551C(&qword_100376AD0, &qword_1002F1B28);
  v27 = *(*(v93 - 8) + 64);
  __chkstk_darwin(v93);
  v90 = &v79 - v28;
  if (qword_100375018 != -1)
  {
    swift_once();
  }

  v29 = qword_100382500;
  swift_beginAccess();
  v30 = *(*(v29 + 88) + 16);
  if (v30 == 1)
  {
    LocalizedStringKey.init(stringLiteral:)();
    v49 = Text.init(_:tableName:bundle:comment:)();
    v51 = v50;
    v53 = v52;
    static Font.headline.getter();
    v54 = Text.font(_:)();
    v56 = v55;
    v58 = v57;
    v91 = v59;

    sub_1001ACFEC(v49, v51, v53 & 1);

    static Alignment.center.getter();
    _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
    LOBYTE(v95[0]) = v58 & 1;
    *v22 = v54;
    *(v22 + 1) = v56;
    v22[16] = v58 & 1;
    *(v22 + 3) = v91;
    v60 = v101;
    *(v22 + 6) = v100;
    *(v22 + 7) = v60;
    *(v22 + 8) = v102;
    v61 = v97;
    *(v22 + 2) = v96;
    *(v22 + 3) = v61;
    v62 = v99;
    *(v22 + 4) = v98;
    *(v22 + 5) = v62;
    swift_storeEnumTagMultiPayload();
    sub_1001A551C(&qword_100376AD8, &qword_1002F1B30);
    sub_1001DB7C8();
    sub_1001DB854();
    return _ConditionalContent<>.init(storage:)();
  }

  else
  {
    v88 = v23;
    if (v30)
    {
      v64 = v89;
      v106 = *(v89 + 24);
      v95[0] = *(v89 + 24);
      v79 = sub_1001A551C(&qword_100376B18, &qword_1002F1B40);
      State.projectedValue.getter();
      sub_1001A551C(&qword_100376B20, qword_1002F1B48);
      sub_1001DBAAC();
      Picker.init(selection:label:content:)();
      InlinePickerStyle.init()();
      sub_1001AD0C8(&qword_100376B00, &qword_100376AA0, &qword_1002F1AF8);
      View.pickerStyle<A>(_:)();
      (*(v86 + 8))(v5, v2);
      (*(v82 + 8))(v9, v6);
      static Alignment.center.getter();
      _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
      v65 = v83;
      (*(v84 + 32))(v83, v13, v85);
      v66 = &v65[*(v80 + 36)];
      v67 = v101;
      *(v66 + 4) = v100;
      *(v66 + 5) = v67;
      *(v66 + 6) = v102;
      v68 = v97;
      *v66 = v96;
      *(v66 + 1) = v68;
      v69 = v99;
      *(v66 + 2) = v98;
      *(v66 + 3) = v69;
      v95[0] = v106;
      State.wrappedValue.getter();
      v70 = v105;
      v71 = swift_allocObject();
      v72 = v64[1];
      v71[1] = *v64;
      v71[2] = v72;
      v73 = v64[3];
      v71[3] = v64[2];
      v71[4] = v73;
      v74 = v65;
      v75 = v81;
      sub_1001B603C(v74, v81, &qword_100376AB0, &qword_1002F1B08);
      v76 = (v75 + *(v91 + 36));
      *v76 = v70;
      v76[1] = sub_1001DBB80;
      v76[2] = v71;
      v77 = v87;
      sub_1001B603C(v75, v87, &qword_100376AB8, &qword_1002F1B10);
      sub_1001AC934(v77, v26, &qword_100376AB8, &qword_1002F1B10);
      swift_storeEnumTagMultiPayload();
      sub_1001DBB88(v64, v95);
      sub_1001A551C(&qword_100376AD8, &qword_1002F1B30);
      sub_1001DB854();
      sub_1001DB8D8();
      v78 = v90;
      _ConditionalContent<>.init(storage:)();
      sub_1001AC934(v78, v22, &qword_100376AD0, &qword_1002F1B28);
      swift_storeEnumTagMultiPayload();
      sub_1001DB7C8();
      _ConditionalContent<>.init(storage:)();
      sub_1001AC99C(v78, &qword_100376AD0, &qword_1002F1B28);
      v46 = v77;
      v47 = &qword_100376AB8;
      v48 = &qword_1002F1B10;
    }

    else
    {
      LocalizedStringKey.init(stringLiteral:)();
      v31 = Text.init(_:tableName:bundle:comment:)();
      v33 = v32;
      v35 = v34;
      static Font.headline.getter();
      v87 = Text.font(_:)();
      v37 = v36;
      v39 = v38;
      v89 = v40;

      sub_1001ACFEC(v31, v33, v35 & 1);

      static Alignment.center.getter();
      _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
      LOBYTE(v105) = v39 & 1;
      *&v96 = v87;
      *(&v96 + 1) = v37;
      LOBYTE(v97) = v39 & 1;
      *(&v97 + 1) = v106;
      DWORD1(v97) = *(&v106 + 3);
      *(&v97 + 1) = v89;
      v41 = v103;
      v26[6] = v102;
      v26[7] = v41;
      v26[8] = v104;
      v42 = v99;
      v26[2] = v98;
      v26[3] = v42;
      v43 = v101;
      v26[4] = v100;
      v26[5] = v43;
      v44 = v97;
      *v26 = v96;
      v26[1] = v44;
      swift_storeEnumTagMultiPayload();
      sub_1001AC934(&v96, v95, &qword_100376AD8, &qword_1002F1B30);
      sub_1001A551C(&qword_100376AD8, &qword_1002F1B30);
      sub_1001DB854();
      sub_1001DB8D8();
      v45 = v90;
      _ConditionalContent<>.init(storage:)();
      sub_1001AC934(v45, v22, &qword_100376AD0, &qword_1002F1B28);
      swift_storeEnumTagMultiPayload();
      sub_1001DB7C8();
      _ConditionalContent<>.init(storage:)();
      sub_1001AC99C(&v96, &qword_100376AD8, &qword_1002F1B30);
      v46 = v45;
      v47 = &qword_100376AD0;
      v48 = &qword_1002F1B28;
    }

    return sub_1001AC99C(v46, v47, v48);
  }
}

uint64_t sub_1001DADEC()
{
  if (qword_100375018 != -1)
  {
    swift_once();
  }

  v0 = qword_100382500;
  swift_beginAccess();
  v2 = *(*(v0 + 88) + 16);
  swift_getKeyPath();
  sub_1001A551C(&qword_100376B30, &qword_1002F1E50);
  sub_1001A551C(&qword_100376B38, &qword_1002F1B80);
  sub_1001DBBC0();
  swift_getOpaqueTypeConformance2();
  return ForEach<>.init(_:id:content:)();
}

uint64_t sub_1001DAF48@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  if (qword_100375018 != -1)
  {
    swift_once();
  }

  v4 = qword_100382500;
  result = swift_beginAccess();
  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v6 = *(v4 + 88);
    if (v3 < *(v6 + 16))
    {
      v7 = v6 + 224 * v3;
      v11 = *(v7 + 32);
      v12 = *(v7 + 40);
      sub_1001A56A0();

      result = Text.init<A>(_:)();
      *a2 = result;
      *(a2 + 8) = v8;
      *(a2 + 16) = v9 & 1;
      *(a2 + 24) = v10;
      *(a2 + 32) = v3;
      *(a2 + 40) = 1;
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1001DB030(uint64_t a1, uint64_t *a2)
{
  v25 = type metadata accessor for Date();
  v3 = *(v25 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v25);
  v6 = v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *a2;
  v8 = a2[1];
  v9 = *(a2 + 16);
  type metadata accessor for AllMetricsViewModel();
  sub_1001DD8A8(&qword_1003769E8, type metadata accessor for AllMetricsViewModel);
  v22 = v8;
  v23 = v7;
  v21[1] = v9;
  v24 = StateObject.wrappedValue.getter();
  if (qword_100374F98 != -1)
  {
    swift_once();
  }

  static os_log_type_t.default.getter();
  sub_1001A551C(&unk_100377020, &unk_1002EF770);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1002EED40;
  v27 = *(a2 + 3);
  v28 = v27;
  sub_1001A551C(&qword_100376B18, &qword_1002F1B40);
  State.wrappedValue.getter();
  v11 = dispatch thunk of CustomStringConvertible.description.getter();
  v13 = v12;
  *(v10 + 56) = &type metadata for String;
  *(v10 + 64) = sub_1001A76E8();
  *(v10 + 32) = v11;
  *(v10 + 40) = v13;
  os_log(_:dso:log:type:_:)();

  v14 = *(StateObject.wrappedValue.getter() + 16);

  Date.init()();
  v15 = sub_1001D530C();
  v17 = v16;
  (*(v3 + 8))(v6, v25);
  v18 = &v14[OBJC_IVAR____TtC11FTMInternal16PersistanceStore_recordedTime];
  v19 = *&v14[OBJC_IVAR____TtC11FTMInternal16PersistanceStore_recordedTime + 8];
  *v18 = v15;
  v18[1] = v17;

  v27 = v28;
  State.wrappedValue.getter();
  sub_100231FF8(v26);
}

uint64_t sub_1001DB314@<X0>(uint64_t *a1@<X8>)
{
  v3 = v1[1];
  v8[0] = *v1;
  v8[1] = v3;
  v4 = v1[3];
  v8[2] = v1[2];
  v8[3] = v4;
  *a1 = static Alignment.center.getter();
  a1[1] = v5;
  v6 = sub_1001A551C(&qword_1003769B8, &qword_1002F1A58);
  return sub_1001D5A48(v8, a1 + *(v6 + 44));
}

unint64_t sub_1001DB384()
{
  result = qword_100376A10;
  if (!qword_100376A10)
  {
    sub_1001A55C8(&qword_1003769D0, &qword_1002F1A70);
    sub_1001A55C8(&qword_1003769D8, &qword_1002F1A78);
    type metadata accessor for StackNavigationViewStyle();
    sub_1001AD0C8(&qword_100376A18, &qword_1003769D8, &qword_1002F1A78);
    sub_1001DD8A8(&qword_100375280, &type metadata accessor for StackNavigationViewStyle);
    swift_getOpaqueTypeConformance2();
    sub_1001AD0C8(&qword_100376A00, &qword_1003769F8, &qword_1002F1A90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100376A10);
  }

  return result;
}

unint64_t sub_1001DB4FC()
{
  result = qword_100376A20;
  if (!qword_100376A20)
  {
    sub_1001A55C8(&qword_100376A08, &qword_1002F1A98);
    sub_1001AD0C8(&qword_100376A00, &qword_1003769F8, &qword_1002F1A90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100376A20);
  }

  return result;
}

unint64_t sub_1001DB5BC()
{
  result = qword_100376A30;
  if (!qword_100376A30)
  {
    sub_1001A55C8(&qword_100376A28, &qword_1002F1AA0);
    sub_1001A55C8(&qword_100376A38, &qword_1002F1AA8);
    sub_1001A55C8(&qword_100376A40, &qword_1002F1AB0);
    sub_1001A55C8(&qword_100376A48, &qword_1002F1AB8);
    sub_1001AD0C8(&qword_100376A50, &qword_100376A48, &qword_1002F1AB8);
    swift_getOpaqueTypeConformance2();
    sub_1001A55C8(&qword_100376A58, &qword_1002F1AC0);
    sub_1001A55C8(&qword_100376A60, &qword_1002F1AC8);
    sub_1001AD0C8(&qword_100376A68, &qword_100376A60, &qword_1002F1AC8);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100376A30);
  }

  return result;
}

unint64_t sub_1001DB7C8()
{
  result = qword_100376AE0;
  if (!qword_100376AE0)
  {
    sub_1001A55C8(&qword_100376AD0, &qword_1002F1B28);
    sub_1001DB854();
    sub_1001DB8D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100376AE0);
  }

  return result;
}

unint64_t sub_1001DB854()
{
  result = qword_100376AE8;
  if (!qword_100376AE8)
  {
    sub_1001A55C8(&qword_100376AD8, &qword_1002F1B30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100376AE8);
  }

  return result;
}

unint64_t sub_1001DB8D8()
{
  result = qword_100376AF0;
  if (!qword_100376AF0)
  {
    sub_1001A55C8(&qword_100376AB8, &qword_1002F1B10);
    sub_1001DB990();
    sub_1001AD0C8(&qword_100376B08, &qword_100376B10, &qword_1002F1B38);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100376AF0);
  }

  return result;
}

unint64_t sub_1001DB990()
{
  result = qword_100376AF8;
  if (!qword_100376AF8)
  {
    sub_1001A55C8(&qword_100376AB0, &qword_1002F1B08);
    sub_1001A55C8(&qword_100376AA0, &qword_1002F1AF8);
    type metadata accessor for InlinePickerStyle();
    sub_1001AD0C8(&qword_100376B00, &qword_100376AA0, &qword_1002F1AF8);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100376AF8);
  }

  return result;
}

unint64_t sub_1001DBAAC()
{
  result = qword_100376B28;
  if (!qword_100376B28)
  {
    sub_1001A55C8(&qword_100376B20, qword_1002F1B48);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100376B28);
  }

  return result;
}

unint64_t sub_1001DBBC0()
{
  result = qword_100376B40;
  if (!qword_100376B40)
  {
    sub_1001A55C8(&qword_100376B30, &qword_1002F1E50);
    sub_1001DBC4C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100376B40);
  }

  return result;
}

unint64_t sub_1001DBC4C()
{
  result = qword_100376B48;
  if (!qword_100376B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100376B48);
  }

  return result;
}

Swift::Int sub_1001DBCA0(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1001FC840(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_1001DBD0C(v5);
  *a1 = v2;
  return result;
}

Swift::Int sub_1001DBD0C(uint64_t *a1)
{
  v2 = a1[1];
  result = _minimumMergeRunLength(_:)(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = _swiftEmptyArrayStorage;
      }

      else
      {
        v5 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v5[2] = v2 / 2;
      }

      v7[0] = v5 + 4;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_1001DBED4(v7, v8, a1, v4);
      v6[2] = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_1001DBE04(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1001DBE04(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 16 * a3;
    v8 = result - a3;
LABEL_5:
    v9 = (v6 + 16 * v4);
    result = *v9;
    v10 = v9[1];
    v11 = v8;
    v12 = v7;
    while (1)
    {
      v13 = result == *(v12 - 2) && v10 == *(v12 - 1);
      if (v13 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) == 0))
      {
LABEL_4:
        ++v4;
        v7 += 16;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      result = *v12;
      v10 = v12[1];
      *v12 = *(v12 - 1);
      *(v12 - 1) = v10;
      *(v12 - 2) = result;
      v12 -= 2;
      if (__CFADD__(v11++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1001DBED4(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v95 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = _swiftEmptyArrayStorage;
LABEL_106:
    v9 = *v95;
    if (!*v95)
    {
      goto LABEL_144;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_138:
      result = sub_1001FA564(v8);
      v8 = result;
    }

    v85 = v8 + 16;
    v86 = *(v8 + 2);
    if (v86 >= 2)
    {
      while (*a3)
      {
        v87 = &v8[16 * v86];
        v88 = *v87;
        v89 = &v85[2 * v86];
        v90 = v89[1];
        sub_1001DC4B0((*a3 + 16 * *v87), (*a3 + 16 * *v89), (*a3 + 16 * v90), v9);
        if (v5)
        {
        }

        if (v90 < v88)
        {
          goto LABEL_130;
        }

        if (v86 - 2 >= *v85)
        {
          goto LABEL_131;
        }

        *v87 = v88;
        *(v87 + 1) = v90;
        v91 = *v85 - v86;
        if (*v85 < v86)
        {
          goto LABEL_132;
        }

        v86 = *v85 - 1;
        result = memmove(v89, v89 + 2, 16 * v91);
        *v85 = v86;
        if (v86 <= 1)
        {
        }
      }

      goto LABEL_142;
    }
  }

  v7 = 0;
  v8 = _swiftEmptyArrayStorage;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = (*a3 + 16 * v7);
      result = *v10;
      v11 = (*a3 + 16 * v9);
      if (*v10 == *v11 && v10[1] == v11[1])
      {
        v13 = 0;
      }

      else
      {
        result = _stringCompareWithSmolCheck(_:_:expecting:)();
        v13 = result;
      }

      v7 = v9 + 2;
      if (v9 + 2 < v6)
      {
        v14 = v11 + 3;
        v15 = v11 + 3;
        do
        {
          result = v14[1];
          v17 = v15[2];
          v15 += 2;
          v16 = v17;
          if (result == *(v14 - 1) && v16 == *v14)
          {
            if (v13)
            {
              goto LABEL_24;
            }
          }

          else
          {
            result = _stringCompareWithSmolCheck(_:_:expecting:)();
            if ((v13 ^ result))
            {
              goto LABEL_23;
            }
          }

          ++v7;
          v14 = v15;
        }

        while (v6 != v7);
        v7 = v6;
      }

LABEL_23:
      if (v13)
      {
LABEL_24:
        if (v7 < v9)
        {
          goto LABEL_135;
        }

        if (v9 < v7)
        {
          v19 = 0;
          v20 = 16 * v7;
          v21 = 16 * v9;
          v22 = v9;
          do
          {
            if (v22 != v7 + v19 - 1)
            {
              v27 = *a3;
              if (!*a3)
              {
                goto LABEL_141;
              }

              v23 = (v27 + v21);
              v24 = v27 + v20;
              v25 = *v23;
              v26 = v23[1];
              *v23 = *(v24 - 16);
              *(v24 - 16) = v25;
              *(v24 - 8) = v26;
            }

            ++v22;
            --v19;
            v20 -= 16;
            v21 += 16;
          }

          while (v22 < v7 + v19);
        }
      }
    }

    v28 = a3[1];
    if (v7 < v28)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_134;
      }

      if (v7 - v9 < a4)
      {
        break;
      }
    }

LABEL_55:
    if (v7 < v9)
    {
      goto LABEL_133;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1001FA578(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v40 = *(v8 + 2);
    v39 = *(v8 + 3);
    v41 = v40 + 1;
    if (v40 >= v39 >> 1)
    {
      result = sub_1001FA578((v39 > 1), v40 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v41;
    v42 = &v8[16 * v40];
    *(v42 + 4) = v9;
    *(v42 + 5) = v7;
    v43 = *v95;
    if (!*v95)
    {
      goto LABEL_143;
    }

    if (v40)
    {
      while (1)
      {
        v44 = v41 - 1;
        if (v41 >= 4)
        {
          break;
        }

        if (v41 == 3)
        {
          v45 = *(v8 + 4);
          v46 = *(v8 + 5);
          v55 = __OFSUB__(v46, v45);
          v47 = v46 - v45;
          v48 = v55;
LABEL_75:
          if (v48)
          {
            goto LABEL_121;
          }

          v61 = &v8[16 * v41];
          v63 = *v61;
          v62 = *(v61 + 1);
          v64 = __OFSUB__(v62, v63);
          v65 = v62 - v63;
          v66 = v64;
          if (v64)
          {
            goto LABEL_124;
          }

          v67 = &v8[16 * v44 + 32];
          v69 = *v67;
          v68 = *(v67 + 1);
          v55 = __OFSUB__(v68, v69);
          v70 = v68 - v69;
          if (v55)
          {
            goto LABEL_127;
          }

          if (__OFADD__(v65, v70))
          {
            goto LABEL_128;
          }

          if (v65 + v70 >= v47)
          {
            if (v47 < v70)
            {
              v44 = v41 - 2;
            }

            goto LABEL_96;
          }

          goto LABEL_89;
        }

        v71 = &v8[16 * v41];
        v73 = *v71;
        v72 = *(v71 + 1);
        v55 = __OFSUB__(v72, v73);
        v65 = v72 - v73;
        v66 = v55;
LABEL_89:
        if (v66)
        {
          goto LABEL_123;
        }

        v74 = &v8[16 * v44];
        v76 = *(v74 + 4);
        v75 = *(v74 + 5);
        v55 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v55)
        {
          goto LABEL_126;
        }

        if (v77 < v65)
        {
          goto LABEL_3;
        }

LABEL_96:
        v9 = v44 - 1;
        if (v44 - 1 >= v41)
        {
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
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
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
          goto LABEL_137;
        }

        if (!*a3)
        {
          goto LABEL_140;
        }

        v82 = *&v8[16 * v9 + 32];
        v83 = *&v8[16 * v44 + 40];
        sub_1001DC4B0((*a3 + 16 * v82), (*a3 + 16 * *&v8[16 * v44 + 32]), (*a3 + 16 * v83), v43);
        if (v5)
        {
        }

        if (v83 < v82)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_1001FA564(v8);
        }

        if (v9 >= *(v8 + 2))
        {
          goto LABEL_118;
        }

        v84 = &v8[16 * v9];
        *(v84 + 4) = v82;
        *(v84 + 5) = v83;
        result = sub_1001FA4D8(v44);
        v41 = *(v8 + 2);
        if (v41 <= 1)
        {
          goto LABEL_3;
        }
      }

      v49 = &v8[16 * v41 + 32];
      v50 = *(v49 - 64);
      v51 = *(v49 - 56);
      v55 = __OFSUB__(v51, v50);
      v52 = v51 - v50;
      if (v55)
      {
        goto LABEL_119;
      }

      v54 = *(v49 - 48);
      v53 = *(v49 - 40);
      v55 = __OFSUB__(v53, v54);
      v47 = v53 - v54;
      v48 = v55;
      if (v55)
      {
        goto LABEL_120;
      }

      v56 = &v8[16 * v41];
      v58 = *v56;
      v57 = *(v56 + 1);
      v55 = __OFSUB__(v57, v58);
      v59 = v57 - v58;
      if (v55)
      {
        goto LABEL_122;
      }

      v55 = __OFADD__(v47, v59);
      v60 = v47 + v59;
      if (v55)
      {
        goto LABEL_125;
      }

      if (v60 >= v52)
      {
        v78 = &v8[16 * v44 + 32];
        v80 = *v78;
        v79 = *(v78 + 1);
        v55 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v55)
        {
          goto LABEL_129;
        }

        if (v47 < v81)
        {
          v44 = v41 - 2;
        }

        goto LABEL_96;
      }

      goto LABEL_75;
    }

LABEL_3:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_106;
    }
  }

  if (__OFADD__(v9, a4))
  {
    goto LABEL_136;
  }

  v93 = v5;
  if (v9 + a4 >= v28)
  {
    v5 = a3[1];
  }

  else
  {
    v5 = (v9 + a4);
  }

  if (v5 < v9)
  {
LABEL_137:
    __break(1u);
    goto LABEL_138;
  }

  if (v7 == v5)
  {
LABEL_54:
    v5 = v93;
    goto LABEL_55;
  }

  v29 = *a3;
  v30 = *a3 + 16 * v7;
  v92 = v9;
  v31 = (v9 - v7);
LABEL_43:
  v32 = (v29 + 16 * v7);
  v33 = *v32;
  v34 = v32[1];
  v35 = v31;
  v36 = v30;
  while (1)
  {
    v37 = v33 == *(v36 - 2) && v34 == *(v36 - 1);
    if (v37 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) == 0))
    {
LABEL_42:
      ++v7;
      v30 += 16;
      --v31;
      if (v7 != v5)
      {
        goto LABEL_43;
      }

      v7 = v5;
      v9 = v92;
      goto LABEL_54;
    }

    if (!v29)
    {
      break;
    }

    v33 = *v36;
    v34 = v36[1];
    *v36 = *(v36 - 1);
    *(v36 - 1) = v34;
    *(v36 - 2) = v33;
    v36 -= 2;
    if (__CFADD__(v35++, 1))
    {
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
  return result;
}

uint64_t sub_1001DC4B0(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 4;
  v11 = a3 - __src;
  v12 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 4;
  if (v10 < v12 >> 4)
  {
    if (a4 != __dst || &__dst[16 * v10] <= a4)
    {
      memmove(a4, __dst, 16 * v10);
    }

    v14 = &v4[16 * v10];
    if (v8 < 16)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_43;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v16 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (!v16 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 16;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 16;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 16;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[16 * v13] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v14 = &v4[16 * v13];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_28:
    v17 = v6 - 16;
    v5 -= 16;
    v18 = v14;
    do
    {
      v19 = *(v18 - 2);
      v20 = *(v18 - 1);
      v18 -= 16;
      v21 = v19 == *(v6 - 2) && v20 == *(v6 - 1);
      if (!v21 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        if (v5 + 16 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 16, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_43;
        }

        goto LABEL_28;
      }

      if (v5 + 16 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 16;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_43:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v6, v4, 16 * ((v14 - v4) / 16));
  }

  return 1;
}

char *sub_1001DC6D8()
{
  if (qword_100375018 != -1)
  {
    goto LABEL_78;
  }

  while (1)
  {
    v0 = qword_100382500;
    if (*(qword_100382500 + 160))
    {
      return _swiftEmptyArrayStorage;
    }

    v2 = *(qword_100382500 + 156);
    if (qword_100375020 != -1)
    {
      swift_once();
    }

    v3 = *(qword_100382508 + OBJC_IVAR____TtC11FTMInternal25FTMCellMonitorSharedClass_currentSelectedSubsId);
    if (v3 == v2)
    {
      goto LABEL_11;
    }

    swift_beginAccess();
    if (*(*(v0 + 88) + 16) < 2uLL)
    {
      goto LABEL_11;
    }

    if (v3 < 0xFFFFFFFF80000000)
    {
      break;
    }

    if (v3 > 0x7FFFFFFF)
    {
      goto LABEL_83;
    }

    *(v0 + 156) = v3;
    *(v0 + 160) = 0;
    sub_10020A870();
LABEL_11:
    v1 = _swiftEmptyArrayStorage;
    if (*(v0 + 160))
    {
      return v1;
    }

    v4 = *(v0 + 156);
    if (qword_100375020 != -1)
    {
      swift_once();
    }

    v5 = qword_100382508;
    v6 = OBJC_IVAR____TtC11FTMInternal25FTMCellMonitorSharedClass_metricModelsArray;
    swift_beginAccess();
    v7 = *(v5 + v6);
    v57 = _swiftEmptyArrayStorage;
    if (v7 >> 62)
    {
      v8 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (!v8)
    {
      v21 = _swiftEmptyArrayStorage;
LABEL_31:

      if ((v21 & 0x8000000000000000) != 0 || (v21 & 0x4000000000000000) != 0)
      {
        v22 = _CocoaArrayWrapper.endIndex.getter();
        if (v22)
        {
          goto LABEL_34;
        }
      }

      else
      {
        v22 = *(v21 + 16);
        if (v22)
        {
LABEL_34:
          v23 = 0;
          v24 = _swiftEmptyArrayStorage;
          do
          {
            if ((v21 & 0xC000000000000001) != 0)
            {
              v25 = specialized _ArrayBuffer._getElementSlowPath(_:)();
              v26 = v23 + 1;
              if (__OFADD__(v23, 1))
              {
                goto LABEL_75;
              }
            }

            else
            {
              if (v23 >= *(v21 + 16))
              {
                goto LABEL_76;
              }

              v25 = *(v21 + 8 * v23 + 32);

              v26 = v23 + 1;
              if (__OFADD__(v23, 1))
              {
                goto LABEL_75;
              }
            }

            v28 = *(v25 + 32);
            v27 = *(v25 + 40);

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v24 = sub_100224D30(0, *(v24 + 2) + 1, 1, v24);
            }

            v30 = *(v24 + 2);
            v29 = *(v24 + 3);
            if (v30 >= v29 >> 1)
            {
              v24 = sub_100224D30((v29 > 1), v30 + 1, 1, v24);
            }

            *(v24 + 2) = v30 + 1;
            v31 = &v24[16 * v30];
            *(v31 + 4) = v28;
            *(v31 + 5) = v27;
            ++v23;
          }

          while (v26 != v22);

          v32 = sub_1001C6F70(v24);

          v33 = *(v32 + 16);
          if (v33)
          {
            v34 = sub_100225A48(*(v32 + 16), 0);
            v35 = sub_1001FC14C(&v57, v34 + 4, v33, v32);
            sub_1001DD8F0();
            if (v35 != v33)
            {
              __break(1u);
              goto LABEL_50;
            }
          }

          else
          {
LABEL_50:

            v34 = _swiftEmptyArrayStorage;
          }

          v57 = v34;

          sub_1001DBCA0(&v57);

          v36 = v57;
          v37 = *(v57 + 2);
          if (v37)
          {
            v38 = 0;
            v39 = v57 + 40;
            v1 = _swiftEmptyArrayStorage;
            v56 = v57 + 40;
LABEL_53:
            v40 = &v39[16 * v38];
            v41 = v38;
            while (v41 < *(v36 + 2))
            {
              v42 = *(v40 - 1);
              v43 = *v40;
              if (v42 != 5521746 || v43 != 0xE300000000000000)
              {
                v45 = *(v40 - 1);
                v46 = *v40;
                if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 && (v42 != 1129531725 || v43 != 0xE400000000000000) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
                {

                  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                  v57 = v1;
                  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                  {
                    sub_1001F53D8(0, *(v1 + 2) + 1, 1);
                    v1 = v57;
                  }

                  v49 = *(v1 + 2);
                  v48 = *(v1 + 3);
                  v50 = v49 + 1;
                  if (v49 >= v48 >> 1)
                  {
                    v52 = v49 + 1;
                    v54 = v49;
                    sub_1001F53D8((v48 > 1), v49 + 1, 1);
                    v49 = v54;
                    v50 = v52;
                    v1 = v57;
                  }

                  v38 = v41 + 1;
                  *(v1 + 2) = v50;
                  v51 = &v1[16 * v49];
                  *(v51 + 4) = v42;
                  *(v51 + 5) = v43;
                  v39 = v56;
                  if (v37 - 1 != v41)
                  {
                    goto LABEL_53;
                  }

                  goto LABEL_72;
                }
              }

              ++v41;
              v40 += 16;
              if (v37 == v41)
              {
                goto LABEL_72;
              }
            }

            goto LABEL_77;
          }

          v1 = _swiftEmptyArrayStorage;
LABEL_72:

          return v1;
        }
      }

      return _swiftEmptyArrayStorage;
    }

    v9 = 0;
    v10 = v7 & 0xC000000000000001;
    v11 = v7 & 0xFFFFFFFFFFFFFF8;
    v12 = &OBJC_IVAR____TtC11FTMInternal18FTMAllMetricsModel_isVisible;
    v55 = v7 & 0xC000000000000001;
    while (v10)
    {
      v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v14 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
LABEL_28:
        __break(1u);
LABEL_29:
        v21 = v57;
        goto LABEL_31;
      }

LABEL_23:
      if (*(v13 + OBJC_IVAR____TtC11FTMInternal18FTMAllMetricsModel_subsId) == v4 && (*(v13 + *v12) & 1) != 0)
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v15 = v12;
        v16 = v11;
        v17 = v8;
        v18 = v7;
        v19 = v4;
        v20 = *(v57 + 2);
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        v4 = v19;
        v7 = v18;
        v8 = v17;
        v11 = v16;
        v12 = v15;
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v10 = v55;
      }

      else
      {
      }

      ++v9;
      if (v14 == v8)
      {
        goto LABEL_29;
      }
    }

    if (v9 < *(v11 + 16))
    {
      v13 = *(v7 + 8 * v9 + 32);

      v14 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        goto LABEL_28;
      }

      goto LABEL_23;
    }

    __break(1u);
LABEL_75:
    __break(1u);
LABEL_76:
    __break(1u);
LABEL_77:
    __break(1u);
LABEL_78:
    swift_once();
  }

  __break(1u);
LABEL_83:
  __break(1u);

  __break(1u);
  return result;
}

unint64_t sub_1001DCD18()
{
  result = qword_100376B90;
  if (!qword_100376B90)
  {
    sub_1001A55C8(&qword_100376B88, &qword_1002F1BF8);
    sub_1001DCD9C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100376B90);
  }

  return result;
}

unint64_t sub_1001DCD9C()
{
  result = qword_100376B98;
  if (!qword_100376B98)
  {
    sub_1001A55C8(&qword_100376BA0, &qword_1002F1C00);
    sub_1001DCE20();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100376B98);
  }

  return result;
}

unint64_t sub_1001DCE20()
{
  result = qword_100376BA8;
  if (!qword_100376BA8)
  {
    sub_1001A55C8(&qword_100376BB0, &qword_1002F1C08);
    sub_1001DCF24();
    sub_1001A55C8(&qword_100376BF8, &qword_1002F1C30);
    sub_1001AD0C8(&qword_100376C00, &qword_100376BF8, &qword_1002F1C30);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100376BA8);
  }

  return result;
}

unint64_t sub_1001DCF24()
{
  result = qword_100376BB8;
  if (!qword_100376BB8)
  {
    sub_1001A55C8(&qword_100376BC0, &qword_1002F1C10);
    sub_1001AD0C8(&qword_100376BC8, &qword_100376BD0, &qword_1002F1C18);
    sub_1001DCFDC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100376BB8);
  }

  return result;
}

unint64_t sub_1001DCFDC()
{
  result = qword_100376BD8;
  if (!qword_100376BD8)
  {
    sub_1001A55C8(&qword_100376BE0, &qword_1002F1C20);
    sub_1001A55C8(&qword_100376BE8, &qword_1002F1C28);
    sub_1001AD0C8(&qword_100376BF0, &qword_100376BE8, &qword_1002F1C28);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100376BD8);
  }

  return result;
}

unint64_t sub_1001DD0E0()
{
  result = qword_100376C30;
  if (!qword_100376C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100376C30);
  }

  return result;
}

unint64_t sub_1001DD134()
{
  result = qword_100376C68;
  if (!qword_100376C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100376C68);
  }

  return result;
}

uint64_t sub_1001DD188()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1001DD950;

  return sub_1001D9F1C(v0 + 16);
}

uint64_t sub_1001DD224()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1001DD950;

  return sub_1001D9BA0(v0 + 16);
}

unint64_t sub_1001DD2C0()
{
  result = qword_100376CA0;
  if (!qword_100376CA0)
  {
    sub_1001A55C8(&qword_100376C98, &qword_1002F1D20);
    sub_1001DD370(&qword_100376CA8, &qword_100376CB0, &qword_1002F1D28, sub_1001DD400);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100376CA0);
  }

  return result;
}

uint64_t sub_1001DD370(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1001A55C8(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1001DD400()
{
  result = qword_100376CB8;
  if (!qword_100376CB8)
  {
    sub_1001A55C8(&qword_100376CC0, &qword_1002F1D30);
    sub_1001DD4B8();
    sub_1001AD0C8(&qword_100376CD0, &qword_100376CD8, &qword_1002F1D38);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100376CB8);
  }

  return result;
}

unint64_t sub_1001DD4B8()
{
  result = qword_100376CC8;
  if (!qword_100376CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100376CC8);
  }

  return result;
}

uint64_t sub_1001DD50C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  sub_1001DBB78();
  v4 = *(v0 + 48);

  v5 = *(v0 + 56);

  v6 = *(v0 + 72);

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_1001DD560()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1001DD5F4;

  return sub_1001D988C(v0 + 16);
}

uint64_t sub_1001DD5F4()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

unint64_t sub_1001DD6E8()
{
  result = qword_100376CE8;
  if (!qword_100376CE8)
  {
    sub_1001A55C8(&qword_100376C78, &qword_1002F1D00);
    sub_1001A55C8(&qword_1003755A0, &qword_1002EF750);
    type metadata accessor for CircularProgressViewStyle();
    sub_1001AD0C8(&qword_100375598, &qword_1003755A0, &qword_1002EF750);
    sub_1001DD8A8(&qword_100376CF0, &type metadata accessor for CircularProgressViewStyle);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100376CE8);
  }

  return result;
}

uint64_t sub_1001DD834()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  sub_1001DBB78();
  v5 = *(v0 + 56);

  v6 = *(v0 + 64);

  v7 = *(v0 + 80);

  return _swift_deallocObject(v0, 88, 7);
}

uint64_t sub_1001DD8A8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1001DD954(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_1001DD99C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1001DDA04()
{
  if (qword_100375020 != -1)
  {
    swift_once();
  }

  v0 = qword_100382508;
  v1 = OBJC_IVAR____TtC11FTMInternal25FTMCellMonitorSharedClass_primaryCell;
  swift_beginAccess();
  v2 = *(v0 + v1);
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.getter();

  v3 = sub_1001DE178(v2, v6);

  if (!(v3 >> 62))
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_5:
    swift_getKeyPath();
    *(swift_allocObject() + 16) = v3;
    sub_1001A551C(&qword_100376B30, &qword_1002F1E50);
    sub_1001A551C(&qword_100376D18, &qword_1002F1E58);
    sub_1001DBBC0();
    sub_1001DF8B8();
    return ForEach<>.init(_:id:content:)();
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if ((result & 0x8000000000000000) == 0)
  {
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

uint64_t sub_1001DDBD4@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  *a3 = static VerticalAlignment.center.getter();
  *(a3 + 8) = 0;
  *(a3 + 16) = 1;
  v6 = sub_1001A551C(&qword_100376D28, &qword_1002F1E60);
  return sub_1001DDC3C(a2, v5, a3 + *(v6 + 44));
}

uint64_t sub_1001DDC3C@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1001A551C(&qword_100376D30, &qword_1002F1E68);
  v7 = *(*(v6 - 8) + 64);
  v8 = __chkstk_darwin(v6);
  result = __chkstk_darwin(v8);
  v10 = a1 + 8 * a2;
  v74 = v11;
  v75 = result;
  v72 = v12;
  v73 = a3;
  v71 = &v68 - v13;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  v14 = *(v10 + 32);

LABEL_5:
  v15 = *(v14 + 64);
  v16 = *(v14 + 72);

  if ((a1 & 0xC000000000000001) != 0)
  {
    v17 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    v17 = *(v10 + 32);
  }

  v19 = *(v17 + 136);
  v69 = *(v17 + 128);
  v18 = v69;

  *&v93 = v15;
  *(&v93 + 1) = v16;
  sub_1001A56A0();
  v20 = Text.init<A>(_:)();
  v22 = v21;
  v24 = v23;
  static Color.blue.getter();
  v25 = Text.foregroundColor(_:)();
  v78 = v26;
  v79 = v25;
  v28 = v27;
  v70 = v29;

  sub_1001ACFEC(v20, v22, v24 & 1);

  v77 = static Edge.Set.leading.getter();
  EdgeInsets.init(_all:)();
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v76 = v28 & 1;
  LOBYTE(v89) = 0;
  *&v93 = v18;
  *(&v93 + 1) = v19;
  v68 = v19;

  v38 = Text.init<A>(_:)();
  v40 = v39;
  v42 = v41;
  static Color.gray.getter();
  v43 = Text.foregroundColor(_:)();
  v45 = v44;
  LOBYTE(v19) = v46;
  v48 = v47;

  sub_1001ACFEC(v38, v40, v42 & 1);

  LOBYTE(v38) = static Edge.Set.trailing.getter();
  EdgeInsets.init(_all:)();
  v82 = v19 & 1;
  v80 = 0;
  *&v85 = v43;
  *(&v85 + 1) = v45;
  LOBYTE(v86) = v19 & 1;
  *(&v86 + 1) = v89;
  DWORD1(v86) = *(&v89 + 3);
  *(&v86 + 1) = v48;
  LOBYTE(v87) = v38;
  *(&v87 + 1) = *v81;
  DWORD1(v87) = *&v81[3];
  *(&v87 + 1) = v49;
  *&v88[0] = v50;
  *(&v88[0] + 1) = v51;
  *&v88[1] = v52;
  BYTE8(v88[1]) = 0;
  v53 = swift_allocObject();
  v54 = v68;
  *(v53 + 16) = v69;
  *(v53 + 24) = v54;
  v95 = v87;
  *v96 = v88[0];
  *&v96[9] = *(v88 + 9);
  v93 = v85;
  v94 = v86;
  sub_1001A551C(&qword_1003755C0, &qword_1002F1E70);
  sub_1001DF954();
  v55 = v71;
  View.onLongPressGesture(minimumDuration:maximumDistance:pressing:perform:)();

  sub_1001DF9D8(&v85);
  v57 = v74;
  v56 = v75;
  v58 = *(v74 + 16);
  v59 = v72;
  v58(v72, v55, v75);
  *&v89 = v79;
  *(&v89 + 1) = v78;
  LOBYTE(v90) = v76;
  *(&v90 + 1) = *v84;
  DWORD1(v90) = *&v84[3];
  v60 = v70;
  *(&v90 + 1) = v70;
  LOBYTE(v91) = v77;
  *(&v91 + 1) = *v83;
  DWORD1(v91) = *&v83[3];
  *(&v91 + 1) = v31;
  *&v92[0] = v33;
  *(&v92[0] + 1) = v35;
  *&v92[1] = v37;
  BYTE8(v92[1]) = 0;
  v61 = v89;
  v62 = v90;
  v63 = v91;
  v64 = v73;
  *(v73 + 57) = *(v92 + 9);
  v65 = v92[0];
  *(v64 + 32) = v63;
  *(v64 + 48) = v65;
  *v64 = v61;
  *(v64 + 16) = v62;
  *(v64 + 80) = 0;
  *(v64 + 88) = 1;
  v66 = sub_1001A551C(&qword_100376D40, &qword_1002F1E78);
  v58(v64 + *(v66 + 64), v59, v56);
  sub_1001DFA40(&v89, &v93);
  v67 = *(v57 + 8);
  v67(v55, v56);
  v67(v59, v56);
  *&v93 = v79;
  *(&v93 + 1) = v78;
  LOBYTE(v94) = v76;
  *(&v94 + 1) = *v84;
  DWORD1(v94) = *&v84[3];
  *(&v94 + 1) = v60;
  LOBYTE(v95) = v77;
  *(&v95 + 1) = *v83;
  DWORD1(v95) = *&v83[3];
  *(&v95 + 1) = v31;
  *v96 = v33;
  *&v96[8] = v35;
  *&v96[16] = v37;
  v96[24] = 0;
  return sub_1001DF9D8(&v93);
}

void *sub_1001DE178(unint64_t *a1, char a2)
{
  v4 = sub_1001A551C(&qword_100375738, &qword_1002EF900);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v260 = &v252 - v6;
  sub_1001A551C(&unk_1003770A0, &unk_1002EED60);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1002EED50;
  *(v7 + 56) = &type metadata for String;
  *(v7 + 32) = 0xD000000000000017;
  *(v7 + 40) = 0x80000001002BB430;
  *(v7 + 88) = &type metadata for Bool;
  *(v7 + 64) = a2;
  print(_:separator:terminator:)();

  v265 = _swiftEmptyArrayStorage;
  if (qword_100375018 != -1)
  {
    goto LABEL_87;
  }

  while (1)
  {
    if (*(qword_100382500 + 160))
    {
      return _swiftEmptyArrayStorage;
    }

    v8 = a1[2];
    if (!v8)
    {
      break;
    }

    v9 = 0;
    v10 = *(qword_100382500 + 156);
    v11 = (a1 + 4);
    v12 = _swiftEmptyArrayStorage;
LABEL_5:
    v13 = v12;
    a1 = &v11[37 * v9];
    v14 = v9;
    while (v14 < v8)
    {
      memcpy(v263, a1, 0x121uLL);
      v9 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        goto LABEL_83;
      }

      if (LOBYTE(v263[3]) == 1)
      {
        if (!v10)
        {
          goto LABEL_12;
        }
      }

      else if (v263[2] == v10)
      {
LABEL_12:
        sub_1001DFAB0(v263, &v261);
        v12 = v13;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v264 = v13;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1001F5544(0, v13[2] + 1, 1);
          v12 = v264;
        }

        v17 = v12[2];
        v16 = v12[3];
        if (v17 >= v16 >> 1)
        {
          sub_1001F5544((v16 > 1), v17 + 1, 1);
          v12 = v264;
        }

        v12[2] = v17 + 1;
        memcpy(&v12[37 * v17 + 4], v263, 0x121uLL);
        if (v9 == v8)
        {
LABEL_19:
          v18 = v12[2];
          if (v18)
          {
            goto LABEL_20;
          }

LABEL_79:

          return _swiftEmptyArrayStorage;
        }

        goto LABEL_5;
      }

      ++v14;
      a1 += 37;
      if (v9 == v8)
      {
        v12 = v13;
        goto LABEL_19;
      }
    }

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
    swift_once();
  }

  v12 = _swiftEmptyArrayStorage;
  v18 = _swiftEmptyArrayStorage[2];
  if (!v18)
  {
    goto LABEL_79;
  }

LABEL_20:
  v254 = v18 - 1;
  v19 = 32;
  v252 = v12;
  while (1)
  {
    v253 = v19;
    memcpy(v263, v12 + v19, 0x121uLL);
    if (LOBYTE(v263[18]) == 1)
    {
      sub_1001DFAB0(v263, &v261);
    }

    else
    {
      v20 = _stringCompareWithSmolCheck(_:_:expecting:)();
      sub_1001DFAB0(v263, &v261);

      if ((v20 & 1) == 0)
      {
        v261 = 0;
        v262 = 0xE000000000000000;
        goto LABEL_26;
      }
    }

    v261 = 110;
    v262 = 0xE100000000000000;
LABEL_26:
    v21 = v263[4];
    if (LOBYTE(v263[5]))
    {
      v21 = 0;
    }

    v264 = v21;
    v22._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v22);

    v23 = v262;
    v255 = v261;
    v24 = type metadata accessor for Date();
    v25 = *(v24 - 8);
    v26 = *(v25 + 56);
    v27 = v25 + 56;
    v28 = v260;
    v26(v260, 1, 1, v24);
    v29 = type metadata accessor for FTMAllMetricsModel();
    v30 = *(v29 + 48);
    v31 = *(v29 + 52);
    v256 = v29;
    v32 = swift_allocObject();
    *(v32 + 2) = 0;
    *(v32 + 3) = 0xE000000000000000;
    *(v32 + 4) = 0;
    *(v32 + 5) = 0xE000000000000000;
    *(v32 + 6) = 0;
    *(v32 + 7) = 0xE000000000000000;
    *(v32 + 8) = 0;
    *(v32 + 9) = 0xE000000000000000;
    *(v32 + 10) = 0;
    *(v32 + 11) = 0xE000000000000000;
    *(v32 + 12) = 0;
    *(v32 + 13) = 0xE000000000000000;
    *(v32 + 14) = 0;
    *(v32 + 15) = 0xE000000000000000;
    *(v32 + 16) = 0;
    *(v32 + 17) = 0xE000000000000000;
    v33 = OBJC_IVAR____TtC11FTMInternal18FTMAllMetricsModel_timestamp;
    v258 = v26;
    v259 = v24;
    v257 = v27;
    v26(&v32[OBJC_IVAR____TtC11FTMInternal18FTMAllMetricsModel_timestamp], 1, 1, v24);
    v34 = OBJC_IVAR____TtC11FTMInternal18FTMAllMetricsModel_subsId;
    *&v32[OBJC_IVAR____TtC11FTMInternal18FTMAllMetricsModel_subsId] = 0;
    v35 = OBJC_IVAR____TtC11FTMInternal18FTMAllMetricsModel_isVisible;
    v32[OBJC_IVAR____TtC11FTMInternal18FTMAllMetricsModel_isVisible] = 1;
    *(v32 + 2) = 0;
    *(v32 + 3) = 0xE000000000000000;
    *(v32 + 4) = 0;
    *(v32 + 5) = 0xE000000000000000;
    *(v32 + 8) = 1684955458;
    *(v32 + 9) = 0xE400000000000000;
    v36 = sub_100223914();
    v37 = *(v32 + 7);
    *(v32 + 6) = v36;
    *(v32 + 7) = v38;

    v39 = *(v32 + 17);
    *(v32 + 16) = v255;
    *(v32 + 17) = v23;

    v41 = sub_100223AD4(v40);
    v42 = *(v32 + 13);
    *(v32 + 12) = v41;
    *(v32 + 13) = v43;

    v44 = *(v32 + 11);
    *(v32 + 10) = 0;
    *(v32 + 11) = 0xE000000000000000;

    swift_beginAccess();
    sub_1001CB2A0(v28, &v32[v33]);
    swift_endAccess();
    *&v32[v34] = 0;
    v32[v35] = 1;
    a1 = &v265;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v265 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v265 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v242 = *((v265 & 0xFFFFFFFFFFFFFF8) + 0x10);
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    if ((v263[7] & 1) == 0)
    {
      if (*&v263[6] == 1.4)
      {
        v261 = 0;
        v262 = 0xE000000000000000;
        Double.write<A>(to:)();
      }

      else
      {
        if ((~v263[6] & 0x7FF0000000000000) == 0)
        {
          goto LABEL_84;
        }

        if (*&v263[6] <= -9.22337204e18)
        {
          goto LABEL_85;
        }

        if (*&v263[6] >= 9.22337204e18)
        {
          goto LABEL_86;
        }

        v264 = *&v263[6];
        v261 = dispatch thunk of CustomStringConvertible.description.getter();
        v262 = v45;
      }

      v46._countAndFlagsBits = 2051558688;
      v46._object = 0xE400000000000000;
      String.append(_:)(v46);
      v47 = v261;
      v48 = v262;
      v49 = v259;
      v50 = v260;
      v51 = v258;
      v258(v260, 1, 1, v259);
      v52 = *(v256 + 48);
      v53 = *(v256 + 52);
      v54 = swift_allocObject();
      *(v54 + 2) = 0;
      *(v54 + 3) = 0xE000000000000000;
      *(v54 + 4) = 0;
      *(v54 + 5) = 0xE000000000000000;
      *(v54 + 6) = 0;
      *(v54 + 7) = 0xE000000000000000;
      *(v54 + 8) = 0;
      *(v54 + 9) = 0xE000000000000000;
      *(v54 + 10) = 0;
      *(v54 + 11) = 0xE000000000000000;
      *(v54 + 12) = 0;
      *(v54 + 13) = 0xE000000000000000;
      *(v54 + 14) = 0;
      *(v54 + 15) = 0xE000000000000000;
      *(v54 + 16) = 0;
      *(v54 + 17) = 0xE000000000000000;
      v55 = OBJC_IVAR____TtC11FTMInternal18FTMAllMetricsModel_timestamp;
      v51(&v54[OBJC_IVAR____TtC11FTMInternal18FTMAllMetricsModel_timestamp], 1, 1, v49);
      v56 = OBJC_IVAR____TtC11FTMInternal18FTMAllMetricsModel_subsId;
      *&v54[OBJC_IVAR____TtC11FTMInternal18FTMAllMetricsModel_subsId] = 0;
      v57 = OBJC_IVAR____TtC11FTMInternal18FTMAllMetricsModel_isVisible;
      v54[OBJC_IVAR____TtC11FTMInternal18FTMAllMetricsModel_isVisible] = 1;
      *(v54 + 2) = 0;
      *(v54 + 3) = 0xE000000000000000;
      *(v54 + 4) = 0;
      *(v54 + 5) = 0xE000000000000000;
      *(v54 + 8) = 0x74646977646E6142;
      *(v54 + 9) = 0xE900000000000068;
      v58 = sub_100223914();
      v59 = *(v54 + 7);
      *(v54 + 6) = v58;
      *(v54 + 7) = v60;

      v61 = *(v54 + 17);
      *(v54 + 16) = v47;
      *(v54 + 17) = v48;

      v63 = sub_100223AD4(v62);
      v64 = *(v54 + 13);
      *(v54 + 12) = v63;
      *(v54 + 13) = v65;

      v66 = *(v54 + 11);
      *(v54 + 10) = 0;
      *(v54 + 11) = 0xE000000000000000;

      swift_beginAccess();
      sub_1001CB2A0(v50, &v54[v55]);
      swift_endAccess();
      *&v54[v56] = 0;
      v54[v57] = 1;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v265 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v265 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v250 = *((v265 & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    }

    if (v263[9])
    {
      if (v263[11])
      {
        goto LABEL_42;
      }
    }

    else
    {
      v261 = v263[8];
      v80 = dispatch thunk of CustomStringConvertible.description.getter();
      v82 = v81;
      v83 = v259;
      v84 = v260;
      v85 = v258;
      v258(v260, 1, 1, v259);
      v86 = *(v256 + 48);
      v87 = *(v256 + 52);
      v88 = swift_allocObject();
      *(v88 + 2) = 0;
      *(v88 + 3) = 0xE000000000000000;
      *(v88 + 4) = 0;
      *(v88 + 5) = 0xE000000000000000;
      *(v88 + 6) = 0;
      *(v88 + 7) = 0xE000000000000000;
      *(v88 + 8) = 0;
      *(v88 + 9) = 0xE000000000000000;
      *(v88 + 10) = 0;
      *(v88 + 11) = 0xE000000000000000;
      *(v88 + 12) = 0;
      *(v88 + 13) = 0xE000000000000000;
      *(v88 + 14) = 0;
      *(v88 + 15) = 0xE000000000000000;
      *(v88 + 16) = 0;
      *(v88 + 17) = 0xE000000000000000;
      v89 = OBJC_IVAR____TtC11FTMInternal18FTMAllMetricsModel_timestamp;
      v85(&v88[OBJC_IVAR____TtC11FTMInternal18FTMAllMetricsModel_timestamp], 1, 1, v83);
      v90 = OBJC_IVAR____TtC11FTMInternal18FTMAllMetricsModel_subsId;
      *&v88[OBJC_IVAR____TtC11FTMInternal18FTMAllMetricsModel_subsId] = 0;
      v91 = OBJC_IVAR____TtC11FTMInternal18FTMAllMetricsModel_isVisible;
      v88[OBJC_IVAR____TtC11FTMInternal18FTMAllMetricsModel_isVisible] = 1;
      *(v88 + 2) = 0;
      *(v88 + 3) = 0xE000000000000000;
      *(v88 + 4) = 0;
      *(v88 + 5) = 0xE000000000000000;
      *(v88 + 8) = 0x6449206C6C6543;
      *(v88 + 9) = 0xE700000000000000;
      v92 = sub_100223914();
      v93 = *(v88 + 7);
      *(v88 + 6) = v92;
      *(v88 + 7) = v94;

      v95 = *(v88 + 17);
      *(v88 + 16) = v80;
      *(v88 + 17) = v82;

      v97 = sub_100223AD4(v96);
      v98 = *(v88 + 13);
      *(v88 + 12) = v97;
      *(v88 + 13) = v99;

      v100 = *(v88 + 11);
      *(v88 + 10) = 0;
      *(v88 + 11) = 0xE000000000000000;

      swift_beginAccess();
      sub_1001CB2A0(v84, &v88[v89]);
      swift_endAccess();
      *&v88[v90] = 0;
      v88[v91] = 1;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v265 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v265 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v244 = *((v265 & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      if (v263[11])
      {
LABEL_42:
        if ((v263[22] & 1) == 0)
        {
          goto LABEL_52;
        }

        goto LABEL_43;
      }
    }

    v261 = v263[10];
    v101 = dispatch thunk of CustomStringConvertible.description.getter();
    v103 = v102;
    v104 = v259;
    v105 = v260;
    v106 = v258;
    v258(v260, 1, 1, v259);
    v107 = *(v256 + 48);
    v108 = *(v256 + 52);
    v109 = swift_allocObject();
    *(v109 + 2) = 0;
    *(v109 + 3) = 0xE000000000000000;
    *(v109 + 4) = 0;
    *(v109 + 5) = 0xE000000000000000;
    *(v109 + 6) = 0;
    *(v109 + 7) = 0xE000000000000000;
    *(v109 + 8) = 0;
    *(v109 + 9) = 0xE000000000000000;
    *(v109 + 10) = 0;
    *(v109 + 11) = 0xE000000000000000;
    *(v109 + 12) = 0;
    *(v109 + 13) = 0xE000000000000000;
    *(v109 + 14) = 0;
    *(v109 + 15) = 0xE000000000000000;
    *(v109 + 16) = 0;
    *(v109 + 17) = 0xE000000000000000;
    v110 = OBJC_IVAR____TtC11FTMInternal18FTMAllMetricsModel_timestamp;
    v106(&v109[OBJC_IVAR____TtC11FTMInternal18FTMAllMetricsModel_timestamp], 1, 1, v104);
    v111 = OBJC_IVAR____TtC11FTMInternal18FTMAllMetricsModel_subsId;
    *&v109[OBJC_IVAR____TtC11FTMInternal18FTMAllMetricsModel_subsId] = 0;
    v112 = OBJC_IVAR____TtC11FTMInternal18FTMAllMetricsModel_isVisible;
    v109[OBJC_IVAR____TtC11FTMInternal18FTMAllMetricsModel_isVisible] = 1;
    *(v109 + 2) = 0;
    *(v109 + 3) = 0xE000000000000000;
    *(v109 + 4) = 0;
    *(v109 + 5) = 0xE000000000000000;
    *(v109 + 8) = 4801360;
    *(v109 + 9) = 0xE300000000000000;
    v113 = sub_100223914();
    v114 = *(v109 + 7);
    *(v109 + 6) = v113;
    *(v109 + 7) = v115;

    v116 = *(v109 + 17);
    *(v109 + 16) = v101;
    *(v109 + 17) = v103;

    v118 = sub_100223AD4(v117);
    v119 = *(v109 + 13);
    *(v109 + 12) = v118;
    *(v109 + 13) = v120;

    v121 = *(v109 + 11);
    *(v109 + 10) = 0;
    *(v109 + 11) = 0xE000000000000000;

    swift_beginAccess();
    sub_1001CB2A0(v105, &v109[v110]);
    swift_endAccess();
    *&v109[v111] = 0;
    v109[v112] = 1;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v265 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v265 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v245 = *((v265 & 0xFFFFFFFFFFFFFF8) + 0x10);
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    if ((v263[22] & 1) == 0)
    {
LABEL_52:
      v261 = v263[21];
      v122 = dispatch thunk of CustomStringConvertible.description.getter();
      v124 = v123;
      v125 = v259;
      v126 = v260;
      v127 = v258;
      v258(v260, 1, 1, v259);
      v128 = *(v256 + 48);
      v129 = *(v256 + 52);
      v75 = swift_allocObject();
      *(v75 + 2) = 0;
      *(v75 + 3) = 0xE000000000000000;
      *(v75 + 4) = 0;
      *(v75 + 5) = 0xE000000000000000;
      *(v75 + 6) = 0;
      *(v75 + 7) = 0xE000000000000000;
      *(v75 + 8) = 0;
      *(v75 + 9) = 0xE000000000000000;
      *(v75 + 10) = 0;
      *(v75 + 11) = 0xE000000000000000;
      *(v75 + 12) = 0;
      *(v75 + 13) = 0xE000000000000000;
      *(v75 + 14) = 0;
      *(v75 + 15) = 0xE000000000000000;
      *(v75 + 16) = 0;
      *(v75 + 17) = 0xE000000000000000;
      v130 = OBJC_IVAR____TtC11FTMInternal18FTMAllMetricsModel_timestamp;
      v127(&v75[OBJC_IVAR____TtC11FTMInternal18FTMAllMetricsModel_timestamp], 1, 1, v125);
      v131 = OBJC_IVAR____TtC11FTMInternal18FTMAllMetricsModel_subsId;
      *&v75[OBJC_IVAR____TtC11FTMInternal18FTMAllMetricsModel_subsId] = 0;
      v78 = OBJC_IVAR____TtC11FTMInternal18FTMAllMetricsModel_isVisible;
      v75[OBJC_IVAR____TtC11FTMInternal18FTMAllMetricsModel_isVisible] = 1;
      *(v75 + 2) = 0;
      *(v75 + 3) = 0xE000000000000000;
      *(v75 + 4) = 0;
      *(v75 + 5) = 0xE000000000000000;
      *(v75 + 8) = 0x4E434652414ELL;
      *(v75 + 9) = 0xE600000000000000;
      v132 = sub_100223914();
      v133 = *(v75 + 7);
      *(v75 + 6) = v132;
      *(v75 + 7) = v134;

      v135 = *(v75 + 17);
      *(v75 + 16) = v122;
      *(v75 + 17) = v124;

      v137 = sub_100223AD4(v136);
      v138 = *(v75 + 13);
      *(v75 + 12) = v137;
      *(v75 + 13) = v139;

      v140 = *(v75 + 11);
      *(v75 + 10) = 0;
      *(v75 + 11) = 0xE000000000000000;

      swift_beginAccess();
      sub_1001CB2A0(v126, &v75[v130]);
      swift_endAccess();
      *&v75[v131] = 0;
      goto LABEL_55;
    }

LABEL_43:
    if (v263[20])
    {
      if (v263[24])
      {
        goto LABEL_58;
      }

      v261 = v263[23];
      v67 = dispatch thunk of CustomStringConvertible.description.getter();
      v69 = v68;
      v70 = v259;
      v71 = v260;
      v72 = v258;
      v258(v260, 1, 1, v259);
      v73 = *(v256 + 48);
      v74 = *(v256 + 52);
      v75 = swift_allocObject();
      *(v75 + 2) = 0;
      *(v75 + 3) = 0xE000000000000000;
      *(v75 + 4) = 0;
      *(v75 + 5) = 0xE000000000000000;
      *(v75 + 6) = 0;
      *(v75 + 7) = 0xE000000000000000;
      *(v75 + 8) = 0;
      *(v75 + 9) = 0xE000000000000000;
      *(v75 + 10) = 0;
      *(v75 + 11) = 0xE000000000000000;
      *(v75 + 12) = 0;
      *(v75 + 13) = 0xE000000000000000;
      *(v75 + 14) = 0;
      *(v75 + 15) = 0xE000000000000000;
      *(v75 + 16) = 0;
      *(v75 + 17) = 0xE000000000000000;
      v76 = OBJC_IVAR____TtC11FTMInternal18FTMAllMetricsModel_timestamp;
      v72(&v75[OBJC_IVAR____TtC11FTMInternal18FTMAllMetricsModel_timestamp], 1, 1, v70);
      v77 = OBJC_IVAR____TtC11FTMInternal18FTMAllMetricsModel_subsId;
      *&v75[OBJC_IVAR____TtC11FTMInternal18FTMAllMetricsModel_subsId] = 0;
      v78 = OBJC_IVAR____TtC11FTMInternal18FTMAllMetricsModel_isVisible;
      v75[OBJC_IVAR____TtC11FTMInternal18FTMAllMetricsModel_isVisible] = 1;
      *(v75 + 2) = 0;
      *(v75 + 3) = 0xE000000000000000;
      *(v75 + 4) = 0;
      *(v75 + 5) = 0xE000000000000000;
      *(v75 + 8) = 0x4E43465241;
      v79 = 0xE500000000000000;
    }

    else
    {
      v261 = v263[19];
      v67 = dispatch thunk of CustomStringConvertible.description.getter();
      v69 = v141;
      v142 = v259;
      v71 = v260;
      v143 = v258;
      v258(v260, 1, 1, v259);
      v144 = *(v256 + 48);
      v145 = *(v256 + 52);
      v75 = swift_allocObject();
      *(v75 + 2) = 0;
      *(v75 + 3) = 0xE000000000000000;
      *(v75 + 4) = 0;
      *(v75 + 5) = 0xE000000000000000;
      *(v75 + 6) = 0;
      *(v75 + 7) = 0xE000000000000000;
      *(v75 + 8) = 0;
      *(v75 + 9) = 0xE000000000000000;
      *(v75 + 10) = 0;
      *(v75 + 11) = 0xE000000000000000;
      *(v75 + 12) = 0;
      *(v75 + 13) = 0xE000000000000000;
      *(v75 + 14) = 0;
      *(v75 + 15) = 0xE000000000000000;
      *(v75 + 16) = 0;
      *(v75 + 17) = 0xE000000000000000;
      v76 = OBJC_IVAR____TtC11FTMInternal18FTMAllMetricsModel_timestamp;
      v143(&v75[OBJC_IVAR____TtC11FTMInternal18FTMAllMetricsModel_timestamp], 1, 1, v142);
      v77 = OBJC_IVAR____TtC11FTMInternal18FTMAllMetricsModel_subsId;
      *&v75[OBJC_IVAR____TtC11FTMInternal18FTMAllMetricsModel_subsId] = 0;
      v78 = OBJC_IVAR____TtC11FTMInternal18FTMAllMetricsModel_isVisible;
      v75[OBJC_IVAR____TtC11FTMInternal18FTMAllMetricsModel_isVisible] = 1;
      *(v75 + 2) = 0;
      *(v75 + 3) = 0xE000000000000000;
      *(v75 + 4) = 0;
      *(v75 + 5) = 0xE000000000000000;
      *(v75 + 8) = 0x4E4346524145;
      v79 = 0xE600000000000000;
    }

    *(v75 + 9) = v79;
    v146 = sub_100223914();
    v147 = *(v75 + 7);
    *(v75 + 6) = v146;
    *(v75 + 7) = v148;

    v149 = *(v75 + 17);
    *(v75 + 16) = v67;
    *(v75 + 17) = v69;

    v151 = sub_100223AD4(v150);
    v152 = *(v75 + 13);
    *(v75 + 12) = v151;
    *(v75 + 13) = v153;

    v154 = *(v75 + 11);
    *(v75 + 10) = 0;
    *(v75 + 11) = 0xE000000000000000;

    swift_beginAccess();
    sub_1001CB2A0(v71, &v75[v76]);
    swift_endAccess();
    *&v75[v77] = 0;
LABEL_55:
    v75[v78] = 1;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v265 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v265 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v243 = *((v265 & 0xFFFFFFFFFFFFFF8) + 0x10);
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
LABEL_58:
    v155 = v265;
    if (v263[26])
    {
      if (v263[28])
      {
        goto LABEL_60;
      }
    }

    else
    {
      v264 = v263[25];
      v261 = dispatch thunk of CustomStringConvertible.description.getter();
      v262 = v156;
      v157._countAndFlagsBits = 1833067552;
      v157._object = 0xE400000000000000;
      String.append(_:)(v157);
      v158 = v261;
      v159 = v262;
      v160 = v259;
      v161 = v260;
      v162 = v258;
      v258(v260, 1, 1, v259);
      v163 = *(v256 + 48);
      v164 = *(v256 + 52);
      v165 = swift_allocObject();
      *(v165 + 2) = 0;
      *(v165 + 3) = 0xE000000000000000;
      *(v165 + 4) = 0;
      *(v165 + 5) = 0xE000000000000000;
      *(v165 + 6) = 0;
      *(v165 + 7) = 0xE000000000000000;
      *(v165 + 8) = 0;
      *(v165 + 9) = 0xE000000000000000;
      *(v165 + 10) = 0;
      *(v165 + 11) = 0xE000000000000000;
      *(v165 + 12) = 0;
      *(v165 + 13) = 0xE000000000000000;
      *(v165 + 14) = 0;
      *(v165 + 15) = 0xE000000000000000;
      *(v165 + 16) = 0;
      *(v165 + 17) = 0xE000000000000000;
      v166 = OBJC_IVAR____TtC11FTMInternal18FTMAllMetricsModel_timestamp;
      v162(&v165[OBJC_IVAR____TtC11FTMInternal18FTMAllMetricsModel_timestamp], 1, 1, v160);
      v167 = OBJC_IVAR____TtC11FTMInternal18FTMAllMetricsModel_subsId;
      *&v165[OBJC_IVAR____TtC11FTMInternal18FTMAllMetricsModel_subsId] = 0;
      v168 = OBJC_IVAR____TtC11FTMInternal18FTMAllMetricsModel_isVisible;
      v165[OBJC_IVAR____TtC11FTMInternal18FTMAllMetricsModel_isVisible] = 1;
      *(v165 + 2) = 0;
      *(v165 + 3) = 0xE000000000000000;
      *(v165 + 4) = 0;
      *(v165 + 5) = 0xE000000000000000;
      *(v165 + 8) = 1347572562;
      *(v165 + 9) = 0xE400000000000000;
      v169 = sub_100223914();
      v170 = *(v165 + 7);
      *(v165 + 6) = v169;
      *(v165 + 7) = v171;

      v172 = *(v165 + 17);
      *(v165 + 16) = v158;
      *(v165 + 17) = v159;

      v174 = sub_100223AD4(v173);
      v175 = *(v165 + 13);
      *(v165 + 12) = v174;
      *(v165 + 13) = v176;

      v177 = *(v165 + 11);
      *(v165 + 10) = 0;
      *(v165 + 11) = 0xE000000000000000;

      swift_beginAccess();
      sub_1001CB2A0(v161, &v165[v166]);
      swift_endAccess();
      *&v165[v167] = 0;
      v165[v168] = 1;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v265 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v265 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v246 = *((v265 & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v155 = v265;
      if (v263[28])
      {
LABEL_60:
        if (v263[30])
        {
          goto LABEL_71;
        }

LABEL_68:
        v264 = v263[29];
        v261 = dispatch thunk of CustomStringConvertible.description.getter();
        v262 = v200;
        v201._countAndFlagsBits = 1833067552;
        v201._object = 0xE400000000000000;
        String.append(_:)(v201);
        v202 = v261;
        v203 = v262;
        v204 = v259;
        v205 = v260;
        v206 = v258;
        v258(v260, 1, 1, v259);
        v207 = *(v256 + 48);
        v208 = *(v256 + 52);
        v209 = swift_allocObject();
        *(v209 + 2) = 0;
        *(v209 + 3) = 0xE000000000000000;
        *(v209 + 4) = 0;
        *(v209 + 5) = 0xE000000000000000;
        *(v209 + 6) = 0;
        *(v209 + 7) = 0xE000000000000000;
        *(v209 + 8) = 0;
        *(v209 + 9) = 0xE000000000000000;
        *(v209 + 10) = 0;
        *(v209 + 11) = 0xE000000000000000;
        *(v209 + 12) = 0;
        *(v209 + 13) = 0xE000000000000000;
        *(v209 + 14) = 0;
        *(v209 + 15) = 0xE000000000000000;
        *(v209 + 16) = 0;
        *(v209 + 17) = 0xE000000000000000;
        v210 = OBJC_IVAR____TtC11FTMInternal18FTMAllMetricsModel_timestamp;
        v206(&v209[OBJC_IVAR____TtC11FTMInternal18FTMAllMetricsModel_timestamp], 1, 1, v204);
        v211 = OBJC_IVAR____TtC11FTMInternal18FTMAllMetricsModel_subsId;
        *&v209[OBJC_IVAR____TtC11FTMInternal18FTMAllMetricsModel_subsId] = 0;
        v212 = OBJC_IVAR____TtC11FTMInternal18FTMAllMetricsModel_isVisible;
        v209[OBJC_IVAR____TtC11FTMInternal18FTMAllMetricsModel_isVisible] = 1;
        *(v209 + 2) = 0;
        *(v209 + 3) = 0xE000000000000000;
        *(v209 + 4) = 0;
        *(v209 + 5) = 0xE000000000000000;
        *(v209 + 8) = 1230197586;
        *(v209 + 9) = 0xE400000000000000;
        v213 = sub_100223914();
        v214 = *(v209 + 7);
        *(v209 + 6) = v213;
        *(v209 + 7) = v215;

        v216 = *(v209 + 17);
        *(v209 + 16) = v202;
        *(v209 + 17) = v203;

        v218 = sub_100223AD4(v217);
        v219 = *(v209 + 13);
        *(v209 + 12) = v218;
        *(v209 + 13) = v220;

        v221 = *(v209 + 11);
        *(v209 + 10) = 0;
        *(v209 + 11) = 0xE000000000000000;

        swift_beginAccess();
        sub_1001CB2A0(v205, &v209[v210]);
        swift_endAccess();
        *&v209[v211] = 0;
        v209[v212] = 1;
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v265 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v265 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v248 = *((v265 & 0xFFFFFFFFFFFFFF8) + 0x10);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v155 = v265;
        goto LABEL_71;
      }
    }

    v264 = v263[27];
    v261 = dispatch thunk of CustomStringConvertible.description.getter();
    v262 = v178;
    v179._countAndFlagsBits = 4351008;
    v179._object = 0xE300000000000000;
    String.append(_:)(v179);
    v180 = v261;
    v181 = v262;
    v182 = v259;
    v183 = v260;
    v184 = v258;
    v258(v260, 1, 1, v259);
    v185 = *(v256 + 48);
    v186 = *(v256 + 52);
    v187 = swift_allocObject();
    *(v187 + 2) = 0;
    *(v187 + 3) = 0xE000000000000000;
    *(v187 + 4) = 0;
    *(v187 + 5) = 0xE000000000000000;
    *(v187 + 6) = 0;
    *(v187 + 7) = 0xE000000000000000;
    *(v187 + 8) = 0;
    *(v187 + 9) = 0xE000000000000000;
    *(v187 + 10) = 0;
    *(v187 + 11) = 0xE000000000000000;
    *(v187 + 12) = 0;
    *(v187 + 13) = 0xE000000000000000;
    *(v187 + 14) = 0;
    *(v187 + 15) = 0xE000000000000000;
    *(v187 + 16) = 0;
    *(v187 + 17) = 0xE000000000000000;
    v188 = OBJC_IVAR____TtC11FTMInternal18FTMAllMetricsModel_timestamp;
    v184(&v187[OBJC_IVAR____TtC11FTMInternal18FTMAllMetricsModel_timestamp], 1, 1, v182);
    v189 = OBJC_IVAR____TtC11FTMInternal18FTMAllMetricsModel_subsId;
    *&v187[OBJC_IVAR____TtC11FTMInternal18FTMAllMetricsModel_subsId] = 0;
    v190 = OBJC_IVAR____TtC11FTMInternal18FTMAllMetricsModel_isVisible;
    v187[OBJC_IVAR____TtC11FTMInternal18FTMAllMetricsModel_isVisible] = 1;
    *(v187 + 2) = 0;
    *(v187 + 3) = 0xE000000000000000;
    *(v187 + 4) = 0;
    *(v187 + 5) = 0xE000000000000000;
    *(v187 + 8) = 1364349778;
    *(v187 + 9) = 0xE400000000000000;
    v191 = sub_100223914();
    v192 = *(v187 + 7);
    *(v187 + 6) = v191;
    *(v187 + 7) = v193;

    v194 = *(v187 + 17);
    *(v187 + 16) = v180;
    *(v187 + 17) = v181;

    v196 = sub_100223AD4(v195);
    v197 = *(v187 + 13);
    *(v187 + 12) = v196;
    *(v187 + 13) = v198;

    v199 = *(v187 + 11);
    *(v187 + 10) = 0;
    *(v187 + 11) = 0xE000000000000000;

    swift_beginAccess();
    sub_1001CB2A0(v183, &v187[v188]);
    swift_endAccess();
    *&v187[v189] = 0;
    v187[v190] = 1;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v265 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v265 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v247 = *((v265 & 0xFFFFFFFFFFFFFF8) + 0x10);
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v155 = v265;
    if ((v263[30] & 1) == 0)
    {
      goto LABEL_68;
    }

LABEL_71:
    sub_1001DFB0C(v263);
    if ((v263[36] & 1) == 0)
    {
      v261 = 0;
      v262 = 0xE000000000000000;
      Double.write<A>(to:)();
      v222 = v261;
      v223 = v262;
      v224 = v259;
      v225 = v260;
      v226 = v258;
      v258(v260, 1, 1, v259);
      v227 = *(v256 + 48);
      v228 = *(v256 + 52);
      v229 = swift_allocObject();
      *(v229 + 2) = 0;
      *(v229 + 3) = 0xE000000000000000;
      *(v229 + 4) = 0;
      *(v229 + 5) = 0xE000000000000000;
      *(v229 + 6) = 0;
      *(v229 + 7) = 0xE000000000000000;
      *(v229 + 8) = 0;
      *(v229 + 9) = 0xE000000000000000;
      *(v229 + 10) = 0;
      *(v229 + 11) = 0xE000000000000000;
      *(v229 + 12) = 0;
      *(v229 + 13) = 0xE000000000000000;
      *(v229 + 14) = 0;
      *(v229 + 15) = 0xE000000000000000;
      *(v229 + 16) = 0;
      *(v229 + 17) = 0xE000000000000000;
      v230 = OBJC_IVAR____TtC11FTMInternal18FTMAllMetricsModel_timestamp;
      v226(&v229[OBJC_IVAR____TtC11FTMInternal18FTMAllMetricsModel_timestamp], 1, 1, v224);
      v231 = OBJC_IVAR____TtC11FTMInternal18FTMAllMetricsModel_subsId;
      *&v229[OBJC_IVAR____TtC11FTMInternal18FTMAllMetricsModel_subsId] = 0;
      v232 = OBJC_IVAR____TtC11FTMInternal18FTMAllMetricsModel_isVisible;
      v229[OBJC_IVAR____TtC11FTMInternal18FTMAllMetricsModel_isVisible] = 1;
      *(v229 + 2) = 0;
      *(v229 + 3) = 0xE000000000000000;
      *(v229 + 4) = 0;
      *(v229 + 5) = 0xE000000000000000;
      *(v229 + 8) = 5394003;
      *(v229 + 9) = 0xE300000000000000;
      v233 = sub_100223914();
      v234 = *(v229 + 7);
      *(v229 + 6) = v233;
      *(v229 + 7) = v235;

      v236 = *(v229 + 17);
      *(v229 + 16) = v222;
      *(v229 + 17) = v223;

      v238 = sub_100223AD4(v237);
      v239 = *(v229 + 13);
      *(v229 + 12) = v238;
      *(v229 + 13) = v240;

      v241 = *(v229 + 11);
      *(v229 + 10) = 0;
      *(v229 + 11) = 0xE000000000000000;

      swift_beginAccess();
      sub_1001CB2A0(v225, &v229[v230]);
      swift_endAccess();
      *&v229[v231] = 0;
      v229[v232] = 1;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v265 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v265 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v249 = *((v265 & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v155 = v265;
    }

    if (!v254)
    {
      break;
    }

    --v254;
    v12 = v252;
    v19 = v253 + 296;
  }

  return v155;
}

uint64_t sub_1001DF878()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24, 7);
}

unint64_t sub_1001DF8B8()
{
  result = qword_100376D20;
  if (!qword_100376D20)
  {
    sub_1001A55C8(&qword_100376D18, &qword_1002F1E58);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100376D20);
  }

  return result;
}

uint64_t sub_1001DF91C()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

unint64_t sub_1001DF954()
{
  result = qword_100376D38;
  if (!qword_100376D38)
  {
    sub_1001A55C8(&qword_1003755C0, &qword_1002F1E70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100376D38);
  }

  return result;
}

uint64_t sub_1001DF9D8(uint64_t a1)
{
  v2 = sub_1001A551C(&qword_1003755C0, &qword_1002F1E70);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1001DFA40(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001A551C(&qword_1003755C0, &qword_1002F1E70);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1001DFB64()
{
  result = qword_100376D48;
  if (!qword_100376D48)
  {
    sub_1001A55C8(&qword_100376D50, &unk_1002F1E80);
    sub_1001DF8B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100376D48);
  }

  return result;
}

uint64_t sub_1001DFBE8()
{
  v0 = type metadata accessor for Locale();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for TimeZone();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [objc_allocWithZone(NSDateFormatter) init];
  static TimeZone.autoupdatingCurrent.getter();
  isa = TimeZone._bridgeToObjectiveC()().super.isa;
  (*(v6 + 8))(v9, v5);
  [v10 setTimeZone:isa];

  v12 = [objc_opt_self() currentLocale];
  static Locale._unconditionallyBridgeFromObjectiveC(_:)();

  v13 = Locale._bridgeToObjectiveC()().super.isa;
  (*(v1 + 8))(v4, v0);
  [v10 setLocale:v13];

  sub_1001E1830();
  v14 = String._bridgeToObjectiveC()();

  [v10 setDateFormat:v14];

  v15 = Date._bridgeToObjectiveC()().super.isa;
  v16 = [v10 stringFromDate:v15];

  v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  return v17;
}

void sub_1001DFEA8()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 bundleIdentifier];

  if (!v1)
  {
    v2 = [objc_opt_self() processInfo];
    v1 = [v2 processName];
  }

  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  qword_100376D58 = v3;
  unk_100376D60 = v5;
}

uint64_t sub_1001DFFB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  sub_1001E1BB4(0, &qword_100376D88, OS_os_log_ptr);
  if (qword_100374F88 != -1)
  {
    swift_once();
  }

  result = OS_os_log.init(subsystem:category:)();
  *a4 = result;
  return result;
}

uint64_t sub_1001E006C()
{
  sub_1001E1BB4(0, &qword_100376D88, OS_os_log_ptr);
  if (qword_100374F88 != -1)
  {
    swift_once();
  }

  result = OS_os_log.init(subsystem:category:)();
  qword_100382488 = result;
  return result;
}

uint64_t sub_1001E01F8()
{
  sub_1001E1BB4(0, &qword_100376D88, OS_os_log_ptr);
  if (qword_100374F88 != -1)
  {
    swift_once();
  }

  result = OS_os_log.init(subsystem:category:)();
  qword_1003824C0 = result;
  return result;
}

unint64_t AnalyticsInteractionTypes.rawValue.getter(char a1)
{
  if (!a1)
  {
    return 0xD000000000000021;
  }

  if (a1 == 1)
  {
    return 0xD000000000000027;
  }

  return 0xD00000000000001FLL;
}

uint64_t sub_1001E0304(_BYTE *a1, _BYTE *a2)
{
  v2 = 0xD00000000000001FLL;
  v3 = *a1;
  v4 = "estMenu.appLaunch";
  if (v3 == 1)
  {
    v5 = 0xD000000000000027;
  }

  else
  {
    v5 = 0xD00000000000001FLL;
  }

  if (v3 == 1)
  {
    v6 = "estMenu.appLaunch";
  }

  else
  {
    v6 = "estMenu.slicing.results";
  }

  if (*a1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xD000000000000021;
  }

  if (v3)
  {
    v8 = v6;
  }

  else
  {
    v8 = "HEALTH_MONITOR_TYPE_DATA_";
  }

  if (*a2 == 1)
  {
    v2 = 0xD000000000000027;
  }

  else
  {
    v4 = "estMenu.slicing.results";
  }

  if (*a2)
  {
    v9 = v2;
  }

  else
  {
    v9 = 0xD000000000000021;
  }

  if (*a2)
  {
    v10 = v4;
  }

  else
  {
    v10 = "HEALTH_MONITOR_TYPE_DATA_";
  }

  if (v7 == v9 && (v8 | 0x8000000000000000) == (v10 | 0x8000000000000000))
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

Swift::Int sub_1001E03DC()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1001E0478()
{
  *v0;
  *v0;
  String.hash(into:)();
}

Swift::Int sub_1001E0500()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_1001E0598@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s11FTMInternal25AnalyticsInteractionTypesO8rawValueACSgSS_tcfC_0(*a1);
  *a2 = result;
  return result;
}

void sub_1001E05C8(unint64_t *a1@<X8>)
{
  v2 = 0xD00000000000001FLL;
  v3 = "estMenu.appLaunch";
  if (*v1 == 1)
  {
    v2 = 0xD000000000000027;
  }

  else
  {
    v3 = "estMenu.slicing.results";
  }

  if (*v1)
  {
    v4 = v3;
  }

  else
  {
    v2 = 0xD000000000000021;
    v4 = "HEALTH_MONITOR_TYPE_DATA_";
  }

  *a1 = v2;
  a1[1] = v4 | 0x8000000000000000;
}

Swift::Void __swiftcall AnalyticsManager.sendAnalytics(interactionType:payload:)(FTMInternal::AnalyticsInteractionTypes interactionType, Swift::OpaquePointer payload)
{
  v2 = String._bridgeToObjectiveC()();

  sub_1001E1BB4(0, &qword_100376D68, NSObject_ptr);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  AnalyticsSendEvent();
}

uint64_t sub_1001E0710()
{
  v0 = type metadata accessor for Locale();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for TimeZone();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [objc_allocWithZone(NSDateFormatter) init];
  static TimeZone.autoupdatingCurrent.getter();
  isa = TimeZone._bridgeToObjectiveC()().super.isa;
  (*(v6 + 8))(v9, v5);
  [v10 setTimeZone:isa];

  v12 = [objc_opt_self() currentLocale];
  static Locale._unconditionallyBridgeFromObjectiveC(_:)();

  v13 = Locale._bridgeToObjectiveC()().super.isa;
  (*(v1 + 8))(v4, v0);
  [v10 setLocale:v13];

  sub_1001E1830();
  v14 = String._bridgeToObjectiveC()();

  [v10 setDateFormat:v14];

  v15 = Date._bridgeToObjectiveC()().super.isa;
  v16 = [v10 stringFromDate:v15];

  v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  return v17;
}

Swift::String __swiftcall FTMDateFactory.configureDateFormat(for:)(FTMInternal::FormatType a1)
{
  v2 = sub_1001E1830();
  if (v2)
  {
    v3 = 0x6D3A4848202C4545;
    v4 = 0xEF7A7A2073733A6DLL;
    v5 = -1513209474788460000;
    if (a1 != FTMInternal_FormatType_withMinutesAndSecondsOnly)
    {
      v5 = 0xEA00000000006120;
    }

    if (a1 == FTMInternal_FormatType_withMonth)
    {
      v3 = 0xD000000000000015;
      v4 = 0x80000001002BB450;
    }

    if (a1 > FTMInternal_FormatType_withTimeOnly)
    {
      v3 = 0x73733A6D6D3A4848;
      v4 = v5;
    }

    v6 = 0x6D3A4848202C4545;
    v7 = 0xEF7A7A2073733A6DLL;
    v8 = -1513209474788460000;
    if (a1 != FTMInternal_FormatType_withMinutesAndSecondsOnly)
    {
      v8 = 0xEA00000000006120;
    }

    if (a1 == FTMInternal_FormatType_withMonth)
    {
      v6 = 0xD000000000000015;
      v7 = 0x80000001002BB450;
    }

    if (a1 <= FTMInternal_FormatType_withTimeOnly)
    {
      v9 = v6;
    }

    else
    {
      v9 = 0x73733A6D6D3A4848;
    }

    if (a1 <= FTMInternal_FormatType_withTimeOnly)
    {
      v10 = v7;
    }

    else
    {
      v10 = v8;
    }

    if (v2 == 1)
    {
      v11 = v3;
    }

    else
    {
      v11 = v9;
    }

    if (v2 == 1)
    {
      v12 = v4;
    }

    else
    {
      v12 = v10;
    }
  }

  else
  {
    v13 = 0xED00007A7A206120;
    if (a1 != FTMInternal_FormatType_withMinutesAndSecondsOnly)
    {
      v13 = 0xEA00000000006120;
    }

    v14 = 0x80000001002BB490;
    if (a1)
    {
      v15 = 0xD000000000000010;
    }

    else
    {
      v15 = 0xD000000000000016;
    }

    if (a1)
    {
      v14 = 0x80000001002BB470;
    }

    if (a1 <= FTMInternal_FormatType_withTimeOnly)
    {
      v11 = v15;
    }

    else
    {
      v11 = 0x73733A6D6D3A4848;
    }

    if (a1 <= FTMInternal_FormatType_withTimeOnly)
    {
      v12 = v14;
    }

    else
    {
      v12 = v13;
    }
  }

  result._object = v12;
  result._countAndFlagsBits = v11;
  return result;
}

uint64_t sub_1001E0B90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (qword_100375018 != -1)
  {
    swift_once();
  }

  if (*(qword_100382500 + 24) == 1)
  {
    if (qword_100374F98 != -1)
    {
      swift_once();
    }

    static os_log_type_t.default.getter();
    sub_1001A551C(&unk_100377020, &unk_1002EF770);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_1002EED30;
    *(v8 + 56) = &type metadata for String;
    v9 = sub_1001A76E8();
    *(v8 + 32) = a1;
    *(v8 + 40) = a2;
    *(v8 + 96) = &type metadata for String;
    *(v8 + 104) = v9;
    *(v8 + 64) = v9;
    *(v8 + 72) = a3;
    *(v8 + 80) = a4;

    v10 = dispatch thunk of CustomStringConvertible.description.getter();
    *(v8 + 136) = &type metadata for String;
    *(v8 + 144) = v9;
    *(v8 + 112) = v10;
    *(v8 + 120) = v11;
  }

  else
  {
    if (qword_100374F98 != -1)
    {
      swift_once();
    }

    static os_log_type_t.default.getter();
    sub_1001A551C(&unk_100377020, &unk_1002EF770);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_1002EED40;
    v13 = dispatch thunk of CustomStringConvertible.description.getter();
    v15 = v14;
    *(v12 + 56) = &type metadata for String;
    *(v12 + 64) = sub_1001A76E8();
    *(v12 + 32) = v13;
    *(v12 + 40) = v15;
  }

  os_log(_:dso:log:type:_:)();
}

Swift::Int _s11FTMInternal10FormatTypeO9hashValueSivg_0(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  return Hasher._finalize()();
}

NSString sub_1001E0E78()
{
  result = String._bridgeToObjectiveC()();
  static NSNotificationName.NewABMMetric = result;
  return result;
}

uint64_t *NSNotificationName.NewABMMetric.unsafeMutableAddressor()
{
  if (qword_100374FE0 != -1)
  {
    swift_once();
  }

  return &static NSNotificationName.NewABMMetric;
}

NSString sub_1001E0F28()
{
  result = String._bridgeToObjectiveC()();
  static NSNotificationName.NewCTMetric = result;
  return result;
}

uint64_t *NSNotificationName.NewCTMetric.unsafeMutableAddressor()
{
  if (qword_100374FE8 != -1)
  {
    swift_once();
  }

  return &static NSNotificationName.NewCTMetric;
}

NSString sub_1001E0FD8()
{
  result = String._bridgeToObjectiveC()();
  static NSNotificationName.carrierUpdate = result;
  return result;
}

uint64_t *NSNotificationName.carrierUpdate.unsafeMutableAddressor()
{
  if (qword_100374FF0 != -1)
  {
    swift_once();
  }

  return &static NSNotificationName.carrierUpdate;
}

NSString sub_1001E108C()
{
  result = String._bridgeToObjectiveC()();
  static NSNotificationName.subsIdSelectionChange = result;
  return result;
}

uint64_t *NSNotificationName.subsIdSelectionChange.unsafeMutableAddressor()
{
  if (qword_100374FF8 != -1)
  {
    swift_once();
  }

  return &static NSNotificationName.subsIdSelectionChange;
}

NSString sub_1001E1138()
{
  result = String._bridgeToObjectiveC()();
  static NSNotificationName.numberOfSubsChanged = result;
  return result;
}

uint64_t *NSNotificationName.numberOfSubsChanged.unsafeMutableAddressor()
{
  if (qword_100375000 != -1)
  {
    swift_once();
  }

  return &static NSNotificationName.numberOfSubsChanged;
}

NSString sub_1001E11E4()
{
  result = String._bridgeToObjectiveC()();
  static NSNotificationName.dashboardMetricUpdate = result;
  return result;
}

uint64_t *NSNotificationName.dashboardMetricUpdate.unsafeMutableAddressor()
{
  if (qword_100375008 != -1)
  {
    swift_once();
  }

  return &static NSNotificationName.dashboardMetricUpdate;
}

NSString sub_1001E1290()
{
  result = String._bridgeToObjectiveC()();
  static NSNotificationName.isAirPlaneModeEnabled = result;
  return result;
}

uint64_t *NSNotificationName.isAirPlaneModeEnabled.unsafeMutableAddressor()
{
  if (qword_100375010 != -1)
  {
    swift_once();
  }

  return &static NSNotificationName.isAirPlaneModeEnabled;
}

id sub_1001E133C(void *a1, void **a2)
{
  if (*a1 == -1)
  {
    v3 = *a2;
  }

  else
  {
    swift_once();
    v3 = *a2;
  }

  return v3;
}

uint64_t sub_1001E139C@<X0>(uint64_t a1@<X8>)
{
  v36 = a1;
  v1 = type metadata accessor for Calendar();
  v37 = *(v1 - 8);
  v2 = v37;
  v38 = v1;
  v3 = *(v37 + 64);
  __chkstk_darwin(v1);
  v5 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1001A551C(&qword_100375738, &qword_1002EF900);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v39 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v34 - v10;
  v12 = sub_1001A551C(&qword_100376D90, &qword_1002F2080);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = &v34 - v14;
  v16 = sub_1001A551C(&qword_100376D98, &qword_1002F2088);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v19 = &v34 - v18;
  v20 = type metadata accessor for DateComponents();
  v34 = *(v20 - 8);
  v35 = v20;
  v21 = *(v34 + 64);
  __chkstk_darwin(v20);
  v23 = &v34 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for Date();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  __chkstk_darwin(v24);
  v28 = &v34 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  Date.init()();
  v29 = *(v2 + 56);
  v30 = v38;
  v29(v19, 1, 1, v38);
  v31 = type metadata accessor for TimeZone();
  (*(*(v31 - 8) + 56))(v15, 1, 1, v31);
  v32 = v39;
  DateComponents.init(calendar:timeZone:era:year:month:day:hour:minute:second:nanosecond:weekday:weekdayOrdinal:quarter:weekOfMonth:weekOfYear:yearForWeekOfYear:)();
  DateComponents.day.setter();
  static Calendar.current.getter();
  Calendar.date(byAdding:to:wrappingComponents:)();
  (*(v37 + 8))(v5, v30);
  sub_1001C2E78(v11, v32);
  result = (*(v25 + 48))(v32, 1, v24);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    sub_1001C2EE8(v11);
    (*(v34 + 8))(v23, v35);
    (*(v25 + 8))(v28, v24);
    return (*(v25 + 32))(v36, v32, v24);
  }

  return result;
}

uint64_t sub_1001E1830()
{
  v0 = type metadata accessor for Locale();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = objc_opt_self();
  v6 = String._bridgeToObjectiveC()();
  static Locale.current.getter();
  isa = Locale._bridgeToObjectiveC()().super.isa;
  (*(v1 + 8))(v4, v0);
  v8 = [v5 dateFormatFromTemplate:v6 options:0 locale:isa];

  if (!v8)
  {
    return 2;
  }

  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;

  v16 = v9;
  v17 = v11;
  v14 = 97;
  v15 = 0xE100000000000000;
  sub_1001A56A0();
  if (StringProtocol.contains<A>(_:)())
  {

    return 0;
  }

  v16 = v9;
  v17 = v11;
  v14 = 18504;
  v15 = 0xE200000000000000;
  v13 = StringProtocol.contains<A>(_:)();

  if (v13)
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

unint64_t _s11FTMInternal25AnalyticsInteractionTypesO8rawValueACSgSS_tcfC_0(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_10031A318, v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_1001E1A58()
{
  result = qword_100376D70;
  if (!qword_100376D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100376D70);
  }

  return result;
}

unint64_t sub_1001E1AB0()
{
  result = qword_100376D78;
  if (!qword_100376D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100376D78);
  }

  return result;
}

unint64_t sub_1001E1B08()
{
  result = qword_100376D80;
  if (!qword_100376D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100376D80);
  }

  return result;
}

uint64_t sub_1001E1BB4(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_1001E1BFC()
{
  sub_1001A56A0();
  if (StringProtocol.contains<A>(_:)())
  {
    v0 = StringProtocol.components<A>(separatedBy:)();
    if (v0[2])
    {
      v2 = v0[4];
      v1 = v0[5];

      return v2;
    }
  }

  return 0;
}

uint64_t sub_1001E1D00(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEB00000000534D53;
  v3 = 0x2026206563696F56;
  v4 = a1;
  v5 = 0xE300000000000000;
  v6 = 0xE300000000000000;
  v7 = 5456722;
  if (a1 != 4)
  {
    v7 = 0x6E776F6E6B6E55;
    v6 = 0xE700000000000000;
  }

  if (a1 == 3)
  {
    v7 = 5459283;
  }

  else
  {
    v5 = v6;
  }

  v8 = 0xD000000000000010;
  v9 = 0x80000001002B92A0;
  v10 = 0xE500000000000000;
  v11 = 0x6563696F56;
  if (a1 == 1)
  {
    v11 = 0x2026206563696F56;
    v10 = 0xEB00000000534D53;
  }

  if (a1)
  {
    v8 = v11;
    v9 = v10;
  }

  if (a1 <= 2u)
  {
    v12 = v8;
  }

  else
  {
    v12 = v7;
  }

  if (v4 <= 2)
  {
    v13 = v9;
  }

  else
  {
    v13 = v5;
  }

  if (a2 > 2u)
  {
    if (a2 != 3)
    {
      if (a2 == 4)
      {
        v2 = 0xE300000000000000;
        if (v12 != 5456722)
        {
          goto LABEL_32;
        }
      }

      else
      {
        v2 = 0xE700000000000000;
        if (v12 != 0x6E776F6E6B6E55)
        {
          goto LABEL_32;
        }
      }

      goto LABEL_29;
    }

    v3 = 5459283;
    v2 = 0xE300000000000000;
  }

  else
  {
    if (!a2)
    {
      v2 = 0x80000001002B92A0;
      if (v12 != 0xD000000000000010)
      {
        goto LABEL_32;
      }

      goto LABEL_29;
    }

    if (a2 != 1)
    {
      v2 = 0xE500000000000000;
      if (v12 != 0x6563696F56)
      {
        goto LABEL_32;
      }

      goto LABEL_29;
    }
  }

  if (v12 != v3)
  {
LABEL_32:
    v14 = _stringCompareWithSmolCheck(_:_:expecting:)();
    goto LABEL_33;
  }

LABEL_29:
  if (v13 != v2)
  {
    goto LABEL_32;
  }

  v14 = 1;
LABEL_33:

  return v14 & 1;
}

uint64_t sub_1001E1EDC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE600000000000000;
  v4 = 0xE300000000000000;
  v5 = 5067591;
  if (a1 != 5)
  {
    v5 = 0x6E776F6E6B6E55;
    v4 = 0xE700000000000000;
  }

  v6 = 0xE400000000000000;
  v7 = 1398033749;
  if (a1 != 3)
  {
    v7 = 0x4E41525455;
    v6 = 0xE500000000000000;
  }

  if (a1 <= 4u)
  {
    v5 = v7;
    v4 = v6;
  }

  v8 = 0xE200000000000000;
  v9 = 21070;
  if (a1 != 1)
  {
    v9 = 4543564;
    v8 = 0xE300000000000000;
  }

  if (a1)
  {
    v3 = v8;
  }

  else
  {
    v9 = 0x41534E20524ELL;
  }

  if (a1 <= 2u)
  {
    v10 = v9;
  }

  else
  {
    v10 = v5;
  }

  if (v2 <= 2)
  {
    v11 = v3;
  }

  else
  {
    v11 = v4;
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v12 = 0xE200000000000000;
        if (v10 != 21070)
        {
          goto LABEL_39;
        }
      }

      else
      {
        v12 = 0xE300000000000000;
        if (v10 != 4543564)
        {
          goto LABEL_39;
        }
      }
    }

    else
    {
      v12 = 0xE600000000000000;
      if (v10 != 0x41534E20524ELL)
      {
        goto LABEL_39;
      }
    }
  }

  else if (a2 > 4u)
  {
    if (a2 == 5)
    {
      v12 = 0xE300000000000000;
      if (v10 != 5067591)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v12 = 0xE700000000000000;
      if (v10 != 0x6E776F6E6B6E55)
      {
LABEL_39:
        v13 = _stringCompareWithSmolCheck(_:_:expecting:)();
        goto LABEL_40;
      }
    }
  }

  else if (a2 == 3)
  {
    v12 = 0xE400000000000000;
    if (v10 != 1398033749)
    {
      goto LABEL_39;
    }
  }

  else
  {
    v12 = 0xE500000000000000;
    if (v10 != 0x4E41525455)
    {
      goto LABEL_39;
    }
  }

  if (v11 != v12)
  {
    goto LABEL_39;
  }

  v13 = 1;
LABEL_40:

  return v13 & 1;
}

uint64_t sub_1001E20B8(unsigned __int8 a1, unsigned __int8 a2)
{
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v2 = 21328;
    }

    else
    {
      v2 = 21331;
    }

    v3 = 0xE200000000000000;
  }

  else
  {
    if (a1)
    {
      v2 = 83;
    }

    else
    {
      v2 = 80;
    }

    v3 = 0xE100000000000000;
  }

  v4 = 80;
  v5 = 21328;
  if (a2 != 2)
  {
    v5 = 21331;
  }

  if (a2)
  {
    v4 = 83;
  }

  if (a2 <= 1u)
  {
    v6 = v4;
  }

  else
  {
    v6 = v5;
  }

  if (a2 <= 1u)
  {
    v7 = 0xE100000000000000;
  }

  else
  {
    v7 = 0xE200000000000000;
  }

  if (v2 == v6 && v3 == v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

void *sub_1001E21AC(uint64_t (*a1)(uint64_t *), void *a2, unint64_t a3)
{
  v5 = a3;
  v22 = _swiftEmptyArrayStorage;
  if (a3 >> 62)
  {
LABEL_18:
    v8 = _CocoaArrayWrapper.endIndex.getter();
    if (v8)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v8 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v8)
    {
LABEL_3:
      v9 = 0;
      v19 = v5 & 0xFFFFFFFFFFFFFF8;
      v20 = v5 & 0xC000000000000001;
      v18 = v5;
      while (1)
      {
        if (v20)
        {
          v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          v11 = v9 + 1;
          if (__OFADD__(v9, 1))
          {
LABEL_14:
            __break(1u);
LABEL_15:

            return v3;
          }
        }

        else
        {
          if (v9 >= *(v19 + 16))
          {
            __break(1u);
            goto LABEL_18;
          }

          v10 = *(v5 + 8 * v9 + 32);

          v11 = v9 + 1;
          if (__OFADD__(v9, 1))
          {
            goto LABEL_14;
          }
        }

        v21 = v10;
        v3 = a2;
        v12 = a1(&v21);
        if (v4)
        {
          goto LABEL_15;
        }

        if (v12)
        {
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          v13 = v8;
          v14 = a1;
          v15 = a2;
          v16 = v22[2];
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          a2 = v15;
          a1 = v14;
          v8 = v13;
          v5 = v18;
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v3 = &v22;
          specialized ContiguousArray._endMutation()();
        }

        else
        {
        }

        ++v9;
        if (v11 == v8)
        {
          v3 = v22;
          goto LABEL_20;
        }
      }
    }
  }

  v3 = _swiftEmptyArrayStorage;
LABEL_20:

  return v3;
}

double sub_1001E2368@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  if (*(a3 + 16) && (v6 = sub_1001F66B8(a1, a2), (v7 & 1) != 0))
  {
    v8 = *(a3 + 56) + 32 * v6;

    sub_1001A773C(v8, a4);
  }

  else
  {
    result = 0.0;
    *a4 = 0u;
    a4[1] = 0u;
  }

  return result;
}

double sub_1001E23CC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  if (*(a2 + 16) && (v5 = sub_1001F6774(a1), (v6 & 1) != 0))
  {
    v7 = *(a2 + 56) + 32 * v5;

    sub_1001A773C(v7, a3);
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

unint64_t sub_1001E2430(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    goto LABEL_5;
  }

  v4 = sub_1001F6730(a1);
  if ((v5 & 1) == 0)
  {
    v2 = 0;
LABEL_5:
    v6 = 1;
    return v2 | (v6 << 32);
  }

  v6 = 0;
  v2 = *(*(a2 + 56) + 4 * v4);
  return v2 | (v6 << 32);
}

uint64_t sub_1001E248C(uint64_t result, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  v3 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v4 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {

    return 0;
  }

  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v27[0] = result;
      v27[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      if (result == 43)
      {
        if (v2)
        {
          v3 = v2 - 1;
          if (v2 != 1)
          {
            v6 = 0;
            v16 = v27 + 1;
            while (1)
            {
              v17 = *v16 - 48;
              if (v17 > 9)
              {
                break;
              }

              v18 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                break;
              }

              v6 = v18 + v17;
              if (__OFADD__(v18, v17))
              {
                break;
              }

              ++v16;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_61;
        }

LABEL_72:
        __break(1u);
        return result;
      }

      if (result != 45)
      {
        if (v2)
        {
          v6 = 0;
          v21 = v27;
          while (1)
          {
            v22 = *v21 - 48;
            if (v22 > 9)
            {
              break;
            }

            v23 = 10 * v6;
            if ((v6 * 10) >> 64 != (10 * v6) >> 63)
            {
              break;
            }

            v6 = v23 + v22;
            if (__OFADD__(v23, v22))
            {
              break;
            }

            ++v21;
            if (!--v2)
            {
              goto LABEL_60;
            }
          }
        }

        goto LABEL_61;
      }

      if (v2)
      {
        v3 = v2 - 1;
        if (v2 != 1)
        {
          v6 = 0;
          v10 = v27 + 1;
          while (1)
          {
            v11 = *v10 - 48;
            if (v11 > 9)
            {
              break;
            }

            v12 = 10 * v6;
            if ((v6 * 10) >> 64 != (10 * v6) >> 63)
            {
              break;
            }

            v6 = v12 - v11;
            if (__OFSUB__(v12, v11))
            {
              break;
            }

            ++v10;
            if (!--v3)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_61;
      }
    }

    else
    {
      if ((result & 0x1000000000000000) != 0)
      {
        result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
      }

      else
      {
        result = _StringObject.sharedUTF8.getter();
        v3 = v26;
      }

      v5 = *result;
      if (v5 == 43)
      {
        if (v3 >= 1)
        {
          if (--v3)
          {
            v6 = 0;
            if (result)
            {
              v13 = (result + 1);
              while (1)
              {
                v14 = *v13 - 48;
                if (v14 > 9)
                {
                  goto LABEL_61;
                }

                v15 = 10 * v6;
                if ((v6 * 10) >> 64 != (10 * v6) >> 63)
                {
                  goto LABEL_61;
                }

                v6 = v15 + v14;
                if (__OFADD__(v15, v14))
                {
                  goto LABEL_61;
                }

                ++v13;
                if (!--v3)
                {
                  goto LABEL_62;
                }
              }
            }

            goto LABEL_60;
          }

          goto LABEL_61;
        }

        goto LABEL_71;
      }

      if (v5 != 45)
      {
        if (v3)
        {
          v6 = 0;
          if (result)
          {
            while (1)
            {
              v19 = *result - 48;
              if (v19 > 9)
              {
                goto LABEL_61;
              }

              v20 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                goto LABEL_61;
              }

              v6 = v20 + v19;
              if (__OFADD__(v20, v19))
              {
                goto LABEL_61;
              }

              ++result;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_60;
        }

LABEL_61:
        v6 = 0;
        LOBYTE(v3) = 1;
        goto LABEL_62;
      }

      if (v3 >= 1)
      {
        if (--v3)
        {
          v6 = 0;
          if (result)
          {
            v7 = (result + 1);
            while (1)
            {
              v8 = *v7 - 48;
              if (v8 > 9)
              {
                goto LABEL_61;
              }

              v9 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                goto LABEL_61;
              }

              v6 = v9 - v8;
              if (__OFSUB__(v9, v8))
              {
                goto LABEL_61;
              }

              ++v7;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

LABEL_60:
          LOBYTE(v3) = 0;
LABEL_62:
          v28 = v3;
          v24 = v3;
          goto LABEL_63;
        }

        goto LABEL_61;
      }

      __break(1u);
    }

    __break(1u);
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  v6 = sub_1001A5A78(result, a2, 10);
  v24 = v25;
LABEL_63:

  if (v24)
  {
    return 0;
  }

  else
  {
    return v6;
  }
}

uint64_t sub_1001E278C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1001A551C(&qword_100377210, &qword_1002F1158);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v25 - v8;
  v10 = type metadata accessor for STransferMetrics();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v11 + 48))(a1, 1, v10) == 1)
  {
    sub_1001AC99C(a1, &qword_100377210, &qword_1002F1158);
    v15 = *v3;
    v16 = sub_1001F6730(a2);
    if (v17)
    {
      v18 = v16;
      v19 = *v3;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v21 = *v3;
      v26 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_1001F95A0();
        v21 = v26;
      }

      sub_100204E18(*(v21 + 56) + *(v11 + 72) * v18, v9, type metadata accessor for STransferMetrics);
      sub_1001F8288(v18, v21, type metadata accessor for STransferMetrics);
      *v3 = v21;
      (*(v11 + 56))(v9, 0, 1, v10);
    }

    else
    {
      (*(v11 + 56))(v9, 1, 1, v10);
    }

    return sub_1001AC99C(v9, &qword_100377210, &qword_1002F1158);
  }

  else
  {
    sub_100204E18(a1, v14, type metadata accessor for STransferMetrics);
    v22 = *v3;
    v23 = swift_isUniquelyReferenced_nonNull_native();
    v26 = *v3;
    result = sub_1001F8B2C(v14, a2, v23);
    *v3 = v26;
  }

  return result;
}

uint64_t sub_1001E29F4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1001A551C(&qword_100375738, &qword_1002EF900);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v25 - v8;
  v10 = type metadata accessor for Date();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v11 + 48))(a1, 1, v10) == 1)
  {
    sub_1001AC99C(a1, &qword_100375738, &qword_1002EF900);
    v15 = *v3;
    v16 = sub_1001F6730(a2);
    if (v17)
    {
      v18 = v16;
      v19 = *v3;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v21 = *v3;
      v26 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_1001F97D8();
        v21 = v26;
      }

      (*(v11 + 32))(v9, *(v21 + 56) + *(v11 + 72) * v18, v10);
      sub_1001F8288(v18, v21, &type metadata accessor for Date);
      *v3 = v21;
      (*(v11 + 56))(v9, 0, 1, v10);
    }

    else
    {
      (*(v11 + 56))(v9, 1, 1, v10);
    }

    return sub_1001AC99C(v9, &qword_100375738, &qword_1002EF900);
  }

  else
  {
    (*(v11 + 32))(v14, a1, v10);
    v22 = *v3;
    v23 = swift_isUniquelyReferenced_nonNull_native();
    v26 = *v3;
    result = sub_1001F8C80(v14, a2, v23);
    *v3 = v26;
  }

  return result;
}

uint64_t sub_1001E2C58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 24))
  {
    sub_100201570(a1, v10);
    v6 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v3;
    sub_1001F90B0(v10, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v9;
  }

  else
  {
    sub_1001AC99C(a1, &qword_100375D68, &unk_1002F2370);
    sub_1001F6A48(a2, a3, v10);

    return sub_1001AC99C(v10, &qword_100375D68, &unk_1002F2370);
  }

  return result;
}

uint64_t sub_1001E2D28(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24))
  {
    sub_100201570(a1, v8);
    v4 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *v2;
    sub_1001F8F64(v8, a2, isUniquelyReferenced_nonNull_native);
    result = sub_1002015DC(a2);
    *v2 = v7;
  }

  else
  {
    sub_1001AC99C(a1, &qword_100375D68, &unk_1002F2370);
    sub_1001F69A4(a2, v8);
    sub_1002015DC(a2);
    return sub_1001AC99C(v8, &qword_100375D68, &unk_1002F2370);
  }

  return result;
}

uint64_t sub_1001E2DE4(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v8 = *v4;
  if (a2)
  {
    v9 = sub_1001F66B8(a3, a4);
    v11 = v10;

    if (v11)
    {
      v13 = *v5;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v15 = *v5;
      v19 = *v5;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_1001F9EF8();
        v15 = v19;
      }

      v16 = *(*(v15 + 48) + 16 * v9 + 8);

      result = sub_1001F8790(v9, v15);
      *v5 = v15;
    }
  }

  else
  {
    v18 = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v5;
    sub_1001F9200(a1, a3, a4, v18);

    *v5 = v20;
  }

  return result;
}

uint64_t sub_1001E2ED0(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_1001E2FA8(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_100224C0C(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1001E30CC(uint64_t result, uint64_t (*a2)(void), uint64_t (*a3)(void))
{
  v4 = *(result + 16);
  v5 = *v3;
  v6 = *(*v3 + 16);
  if (__OFADD__(v6, v4))
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v9 = result;
  v10 = *v3;
  if (swift_isUniquelyReferenced_nonNull_native() && v6 + v4 <= *(v5 + 24) >> 1)
  {
    if (*(v9 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  v5 = a2();
  if (!*(v9 + 16))
  {
LABEL_10:

    if (!v4)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_5:
  v11 = (*(v5 + 24) >> 1) - *(v5 + 16);
  result = a3(0);
  v12 = *(result - 8);
  if (v11 < v4)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v13 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v14 = *(v12 + 72);
  swift_arrayInitWithCopy();

  if (!v4)
  {
LABEL_11:
    *v3 = v5;
    return result;
  }

  v15 = *(v5 + 16);
  v16 = __OFADD__(v15, v4);
  v17 = v15 + v4;
  if (!v16)
  {
    *(v5 + 16) = v17;
    goto LABEL_11;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_1001E3210(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_100224E64(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1001E3308(uint64_t result)
{
  v3 = *(result + 16);
  v4 = *v1;
  v5 = *(*v1 + 16);
  v6 = v5 + v3;
  if (__OFADD__(v5, v3))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v7 = result;
  v8 = *v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || (v10 = v4[3] >> 1, v10 < v6))
  {
    if (v5 <= v6)
    {
      v11 = v5 + v3;
    }

    else
    {
      v11 = v5;
    }

    v4 = sub_1002255A4(isUniquelyReferenced_nonNull_native, v11, 1, v4);
    v10 = v4[3] >> 1;
  }

  v12 = v4[2];
  v13 = v10 - v12;
  result = sub_1001FC3FC(&v56, &v4[6 * v12 + 4], v10 - v12, v7);
  if (result < v3)
  {
    goto LABEL_16;
  }

  if (result)
  {
    v15 = v4[2];
    v16 = __OFADD__(v15, result);
    v17 = v15 + result;
    if (v16)
    {
      __break(1u);
      goto LABEL_20;
    }

    v4[2] = v17;
  }

  if (result != v13)
  {
    result = sub_1001DD8F0();
LABEL_14:
    *v1 = v4;
    return result;
  }

LABEL_17:
  v2 = v4[2];
  v14 = v57;
  v47 = v57;
  v48 = v56;
  v17 = v59;
  v46 = v58;
  v18 = v60;
  if (v60)
  {
    v19 = v59;
LABEL_27:
    v23 = (v18 - 1) & v18;
    v24 = __clz(__rbit64(v18)) | (v19 << 6);
    v25 = (*(v48 + 48) + 16 * v24);
    v27 = *v25;
    v26 = v25[1];
    sub_1001A773C(*(v48 + 56) + 32 * v24, &v50);
    *&v53 = v27;
    *(&v53 + 1) = v26;
    sub_100201570(&v50, &v54);

    v22 = v19;
    while (1)
    {
      sub_1001AC934(&v53, &v50, &qword_1003771F0, &qword_1002F2398);
      if (!*(&v50 + 1))
      {
        break;
      }

      v28 = (v46 + 64) >> 6;
      v29 = &qword_1003771F0;
      while (1)
      {
        sub_1001AC99C(&v50, v29, &qword_1002F2398);
        v30 = v4[3];
        v31 = v30 >> 1;
        if ((v30 >> 1) < v2 + 1)
        {
          v4 = sub_1002255A4((v30 > 1), v2 + 1, 1, v4);
          v31 = v4[3] >> 1;
        }

        sub_1001AC934(&v53, v49, v29, &qword_1002F2398);
        if (*(&v49[0] + 1))
        {
          break;
        }

        v40 = v22;
LABEL_52:
        sub_1001AC99C(v49, v29, &qword_1002F2398);
        v33 = v2;
        v22 = v40;
LABEL_31:
        v4[2] = v33;
        sub_1001AC934(&v53, &v50, v29, &qword_1002F2398);
        if (!*(&v50 + 1))
        {
          goto LABEL_53;
        }
      }

      if (v2 <= v31)
      {
        v32 = v31;
      }

      else
      {
        v32 = v2;
      }

      while (1)
      {
        v50 = v49[0];
        v51 = v49[1];
        v52 = v49[2];
        v33 = v32;
        if (v2 == v32)
        {
          sub_1001AC99C(&v50, &qword_1003771F8, &qword_1002F23A0);
          v2 = v33;
          goto LABEL_31;
        }

        v34 = v29;
        sub_1001AC99C(&v53, v29, &qword_1002F2398);
        v35 = &v4[6 * v2 + 4];
        v37 = v51;
        v36 = v52;
        *v35 = v50;
        v35[1] = v37;
        v35[2] = v36;
        if (!v23)
        {
          break;
        }

        v38 = v22;
LABEL_50:
        v41 = __clz(__rbit64(v23));
        v23 &= v23 - 1;
        v42 = v41 | (v38 << 6);
        v43 = (*(v48 + 48) + 16 * v42);
        v44 = *v43;
        v45 = v43[1];
        sub_1001A773C(*(v48 + 56) + 32 * v42, v49);
        *&v53 = v44;
        *(&v53 + 1) = v45;
        sub_100201570(v49, &v54);

        v40 = v38;
LABEL_39:
        ++v2;
        v29 = v34;
        sub_1001AC934(&v53, v49, v34, &qword_1002F2398);
        v22 = v40;
        v32 = v33;
        if (!*(&v49[0] + 1))
        {
          goto LABEL_52;
        }
      }

      if (v28 <= (v22 + 1))
      {
        v39 = v22 + 1;
      }

      else
      {
        v39 = (v46 + 64) >> 6;
      }

      v40 = v39 - 1;
      while (1)
      {
        v38 = v22 + 1;
        if (__OFADD__(v22, 1))
        {
          break;
        }

        if (v38 >= v28)
        {
          v23 = 0;
          v54 = 0u;
          v55 = 0u;
          v53 = 0u;
          goto LABEL_39;
        }

        v23 = *(v47 + 8 * v38);
        ++v22;
        if (v23)
        {
          goto LABEL_50;
        }
      }

      __break(1u);
LABEL_55:
      v23 = 0;
      v54 = 0u;
      v55 = 0u;
      v53 = 0u;
    }

LABEL_53:
    sub_1001AC99C(&v53, &qword_1003771F0, &qword_1002F2398);
    sub_1001DD8F0();
    result = sub_1001AC99C(&v50, &qword_1003771F0, &qword_1002F2398);
    goto LABEL_14;
  }

LABEL_20:
  v20 = (v46 + 64) >> 6;
  if (v20 <= v17 + 1)
  {
    v21 = v17 + 1;
  }

  else
  {
    v21 = (v46 + 64) >> 6;
  }

  v22 = v21 - 1;
  while (1)
  {
    v19 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v19 >= v20)
    {
      goto LABEL_55;
    }

    v18 = *(v14 + 8 * v19);
    ++v17;
    if (v18)
    {
      goto LABEL_27;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1001E3764(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = *v1;
  if (!(*v1 >> 62))
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v6 = __OFADD__(v5, v3);
    result = v5 + v3;
    if (!v6)
    {
      goto LABEL_5;
    }

LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v4 < 0)
  {
    v14 = *v1;
  }

  v15 = _CocoaArrayWrapper.endIndex.getter();
  v6 = __OFADD__(v15, v3);
  result = v15 + v3;
  if (v6)
  {
    goto LABEL_15;
  }

LABEL_5:
  sub_1001FA438(result);
  v8 = *v1;
  v9 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_1001FBE08(v9 + 8 * *(v9 + 0x10) + 32, (*(v9 + 0x18) >> 1) - *(v9 + 0x10), a1);
  v11 = v10;

  if (v11 < v3)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v11 < 1)
  {
LABEL_9:
    *v1 = v8;
    return result;
  }

  v12 = *(v9 + 16);
  v6 = __OFADD__(v12, v11);
  v13 = v12 + v11;
  if (!v6)
  {
    *(v9 + 16) = v13;
    goto LABEL_9;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_1001E3854()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t sub_1001E38C8()
{
  v1 = OBJC_IVAR____TtC11FTMInternal27FTMCarrierInfoObjectChanged__stateChanged;
  v2 = sub_1001A551C(&qword_100376320, &qword_1002F4310);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for FTMCarrierInfoObjectChanged()
{
  result = qword_100376DD0;
  if (!qword_100376DD0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1001E39C4@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for FTMCarrierInfoObjectChanged();
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

char *sub_1001E3A04(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR____TtC11FTMInternal20CoreTelephonyService_client;
  sub_1001E1BB4(0, &qword_100377080, OS_dispatch_queue_ptr);
  v10 = static OS_dispatch_queue.main.getter();
  v11 = [objc_allocWithZone(CoreTelephonyClient) initWithQueue:v10];

  *&v2[v9] = v11;
  v12 = OBJC_IVAR____TtC11FTMInternal20CoreTelephonyService_hManager;
  if (qword_100375018 != -1)
  {
    swift_once();
  }

  *&v2[v12] = qword_100382500;
  *&v2[OBJC_IVAR____TtC11FTMInternal20CoreTelephonyService_carrierInfoArray] = _swiftEmptyArrayStorage;
  v2[OBJC_IVAR____TtC11FTMInternal20CoreTelephonyService_isSimAdded] = 0;
  v13 = OBJC_IVAR____TtC11FTMInternal20CoreTelephonyService_updateNetworkValueTimer;
  v14 = objc_allocWithZone(NSTimer);

  *&v2[v13] = [v14 init];
  v15 = OBJC_IVAR____TtC11FTMInternal20CoreTelephonyService_updateNetworkValueTimerSaveValue;
  *&v2[v15] = sub_1001FCD30(_swiftEmptyArrayStorage);
  v2[OBJC_IVAR____TtC11FTMInternal20CoreTelephonyService_isApplicationForeground] = 0;
  v16 = &v2[OBJC_IVAR____TtC11FTMInternal20CoreTelephonyService_recordedTimeToClearRATMetricData];
  Date.init()();
  v17 = sub_1001D530C();
  v19 = v18;
  (*(v5 + 8))(v8, v4);
  *v16 = v17;
  v16[1] = v19;
  *&v2[OBJC_IVAR____TtC11FTMInternal20CoreTelephonyService_persistanceStore] = a1;
  v35.receiver = v2;
  v35.super_class = ObjectType;
  v20 = a1;
  v21 = objc_msgSendSuper2(&v35, "init");
  v22 = OBJC_IVAR____TtC11FTMInternal20CoreTelephonyService_client;
  v23 = *&v21[OBJC_IVAR____TtC11FTMInternal20CoreTelephonyService_client];
  v24 = v21;
  [v23 setDelegate:v24];
  if (qword_100374FD8 != -1)
  {
    swift_once();
  }

  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();
  v25 = objc_opt_self();
  v26 = [v25 defaultCenter];
  [v26 addObserver:v24 selector:"applicationForeground" name:UIApplicationDidBecomeActiveNotification object:0];

  v27 = [v25 defaultCenter];
  [v27 addObserver:v24 selector:"applicationInBackground" name:UIApplicationDidEnterBackgroundNotification object:0];

  v28 = *&v21[v22];
  v29 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_100204D2C;
  aBlock[5] = v29;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1002050F8;
  aBlock[3] = &unk_10031ED10;
  v30 = _Block_copy(aBlock);

  [v28 getSubscriptionInfo:v30];
  _Block_release(v30);

  return v24;
}

id sub_1001E3E30()
{
  ObjectType = swift_getObjectType();
  v2 = [objc_opt_self() defaultCenter];
  [v2 removeObserver:UIApplicationDidBecomeActiveNotification];

  v4.receiver = v0;
  v4.super_class = ObjectType;
  return objc_msgSendSuper2(&v4, "dealloc");
}

void sub_1001E3FF8()
{
  if (qword_100374FD8 != -1)
  {
    swift_once();
  }

  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();
  *(v0 + OBJC_IVAR____TtC11FTMInternal20CoreTelephonyService_isApplicationForeground) = 1;
  v1 = *(v0 + OBJC_IVAR____TtC11FTMInternal20CoreTelephonyService_client);
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v4[4] = sub_100205118;
  v4[5] = v2;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 1107296256;
  v4[2] = sub_1002050F8;
  v4[3] = &unk_10031EEC8;
  v3 = _Block_copy(v4);

  [v1 getSubscriptionInfo:v3];
  _Block_release(v3);
  sub_1001E4158();
}

void sub_1001E4158()
{
  if (qword_100375020 != -1)
  {
    goto LABEL_15;
  }

  while (1)
  {
    v1 = sub_10021AF50();
    v2 = v1[2];
    if (!v2)
    {
      break;
    }

    v3 = 0;
    while (v3 < v1[2])
    {
      if (*(v1 + v3 + 32) && *(v1 + v3 + 32) != 1)
      {

LABEL_13:

        v5 = OBJC_IVAR____TtC11FTMInternal20CoreTelephonyService_updateNetworkValueTimer;
        [*&v0[OBJC_IVAR____TtC11FTMInternal20CoreTelephonyService_updateNetworkValueTimer] invalidate];
        v6 = objc_opt_self();
        v7 = swift_allocObject();
        *(v7 + 16) = v0;
        v12[4] = sub_1002035A4;
        v12[5] = v7;
        v12[0] = _NSConcreteStackBlock;
        v12[1] = 1107296256;
        v12[2] = sub_10025BE04;
        v12[3] = &unk_10031EB30;
        v8 = _Block_copy(v12);
        v9 = v0;

        v10 = [v6 scheduledTimerWithTimeInterval:1 repeats:v8 block:3.0];
        _Block_release(v8);
        v11 = *&v0[v5];
        *&v0[v5] = v10;

        return;
      }

      v4 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v4)
      {
        goto LABEL_13;
      }

      if (v2 == ++v3)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
LABEL_15:
    swift_once();
  }

LABEL_9:
}

uint64_t sub_1001E44CC()
{
  v1 = sub_1001A551C(&qword_100375738, &qword_1002EF900);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v55 = &v45 - v3;
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 1);
  v6 = *(v5 + 64);
  result = __chkstk_darwin(v4);
  v9 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = v0;
  if (v0[OBJC_IVAR____TtC11FTMInternal20CoreTelephonyService_isApplicationForeground] == 1)
  {
    if (qword_100375020 != -1)
    {
      goto LABEL_49;
    }

    while (1)
    {
      v10 = sub_10021AF50();
      v11 = v10[2];
      if (!v11)
      {
        break;
      }

      v47 = v9;
      v48 = v5;
      v54 = v4;
      v4 = 0;
      v9 = 0x79636167654CLL;
      v5 = 0x61746144205443;
      while (1)
      {
        if (v4 >= v10[2])
        {
          __break(1u);
LABEL_47:
          __break(1u);
          goto LABEL_48;
        }

        if (*(v4 + v10 + 32) && *(v4 + v10 + 32) != 1)
        {
          break;
        }

        v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v12)
        {
          goto LABEL_14;
        }

        v4 = (v4 + 1);
        if (v11 == v4)
        {
          goto LABEL_10;
        }
      }

LABEL_14:

      v13 = OBJC_IVAR____TtC11FTMInternal20CoreTelephonyService_carrierInfoArray;
      v14 = v56;
      swift_beginAccess();
      v15 = *&v14[v13];
      v16 = *(v15 + 16);

      if (v16)
      {
        v4 = 0;
        v9 = v15 + 48;
        v17 = _swiftEmptyArrayStorage;
        while (v4 < *(v15 + 16))
        {
          v5 = *v9;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v17 = sub_1002250D8(0, *(v17 + 2) + 1, 1, v17);
          }

          v19 = *(v17 + 2);
          v18 = *(v17 + 3);
          if (v19 >= v18 >> 1)
          {
            v17 = sub_1002250D8((v18 > 1), v19 + 1, 1, v17);
          }

          v4 = (v4 + 1);
          *(v17 + 2) = v19 + 1;
          *&v17[8 * v19 + 32] = v5;
          v9 += 224;
          if (v16 == v4)
          {
            goto LABEL_24;
          }
        }

        goto LABEL_47;
      }

      v17 = _swiftEmptyArrayStorage;
LABEL_24:

      v20 = *(v17 + 2);
      if (!v20)
      {
      }

      v5 = OBJC_IVAR____TtC11FTMInternal20CoreTelephonyService_updateNetworkValueTimerSaveValue;
      v52 = OBJC_IVAR____TtC11FTMInternal20CoreTelephonyService_client;
      if (qword_100375018 != -1)
      {
        swift_once();
      }

      v9 = 0;
      v21 = qword_100382500;
      v45 = v48 + 16;
      v46 = (v48 + 8);
      v49 = v58;
      v50 = (v48 + 56);
      v22 = v54;
      v53 = v20;
      v51 = qword_100382500;
      while (v9 < *(v17 + 2))
      {
        v35 = *&v17[8 * v9 + 32];
        if ((*(v21 + 160) & 1) == 0 && *(v21 + 156) == (v35 != 1))
        {
          v36 = objc_allocWithZone(CTXPCServiceSubscriptionContext);
          v37 = [v36 initWithSlot:{v35, v45}];
          v38 = v56;
          swift_beginAccess();
          v39 = *&v38[v5];
          if (*(v39 + 16) && (v35 == 1 ? (v40 = 1) : (v40 = 2), v41 = sub_1001F6730(v40), (v42 & 1) != 0))
          {
            v43 = v47;
            (*(v48 + 16))(v47, *(v39 + 56) + *(v48 + 72) * v41, v22);
            swift_endAccess();
            sub_1001D530C();
            v44 = sub_10020CACC();

            if (v44 <= 2)
            {

              if (qword_100374FA8 != -1)
              {
                swift_once();
              }

              static os_log_type_t.default.getter();
              os_log(_:dso:log:type:_:)();

              return (*v46)(v47, v22);
            }

            (*v46)(v43, v22);
          }

          else
          {
            swift_endAccess();
          }

          v23 = [v37 slotID];
          v24 = swift_allocObject();
          v25 = v56;
          *(v24 + 16) = v56;
          *(v24 + 24) = v37;
          v26 = v25;
          v27 = v37;
          v28 = v55;
          Date.init()();
          (*v50)(v28, 0, 1, v22);
          swift_beginAccess();
          sub_1001E29F4(v28, v23);
          swift_endAccess();
          v29 = [objc_allocWithZone(CTXPCServiceSubscriptionContext) initWithSlot:v23];
          v30 = [objc_opt_self() descriptorWithSubscriptionContext:v29];
          v31 = v5;
          v32 = *&v25[v52];
          v33 = swift_allocObject();
          *(v33 + 16) = sub_100203608;
          *(v33 + 24) = v24;
          v58[2] = sub_100205084;
          v58[3] = v33;
          aBlock[0] = _NSConcreteStackBlock;
          aBlock[1] = 1107296256;
          v58[0] = sub_1002050F8;
          v58[1] = &unk_10031EBA8;
          v4 = _Block_copy(aBlock);

          v34 = v32;
          v5 = v31;
          [v34 getSignalStrengthMeasurements:v30 completion:v4];
          v22 = v54;
          _Block_release(v4);

          v20 = v53;
          v21 = v51;
        }

        if (v20 == ++v9)
        {
        }
      }

LABEL_48:
      __break(1u);
LABEL_49:
      swift_once();
    }

LABEL_10:
  }

  return result;
}

void sub_1001E4C38(void *a1, uint64_t a2)
{
  if (a2)
  {
    swift_getErrorValue();
    v2 = Error.localizedDescription.getter();
    v4 = v3;
    if (qword_100374FD8 != -1)
    {
      goto LABEL_34;
    }

    goto LABEL_3;
  }

  if (qword_100374FD8 != -1)
  {
    swift_once();
  }

  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();
  if (!a1)
  {
    return;
  }

  v7 = [a1 subscriptions];
  if (!v7)
  {
    return;
  }

  v8 = v7;
  sub_1001E1BB4(0, &qword_100377180, CTXPCServiceSubscriptionContext_ptr);
  v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_4;
  }

  v2 = Strong;
  v11 = OBJC_IVAR____TtC11FTMInternal20CoreTelephonyService_carrierInfoArray;
  swift_beginAccess();
  v12 = *(v2 + v11);
  *(v2 + v11) = _swiftEmptyArrayStorage;

  if (v9 >> 62)
  {
    v13 = _CocoaArrayWrapper.endIndex.getter();
    v14 = &selRef_clearRlfCauses;
    if (v13)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v13 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v14 = &selRef_clearRlfCauses;
    if (v13)
    {
LABEL_13:
      if (v13 < 1)
      {
        __break(1u);
        return;
      }

      v15 = 0;
      v16 = 0;
      v17 = v9 & 0xC000000000000001;
      v18 = &selRef_titleLabel;
      v77 = v13;
      v78 = v9;
      v76 = v9 & 0xC000000000000001;
      while (1)
      {
        if (v17)
        {
          v19 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v19 = *(v9 + 8 * v16 + 32);
        }

        v20 = v19;
        if ([v19 v18[63]])
        {
          v21 = [v20 v14[449]];
          v22 = "CarrierInfoArray ";
          if (v21 == 1)
          {
            v22 = "0000000100000002";
          }

          v80 = v22;
          v83 = [v20 v14[449]];
          v79 = [v20 v18[63]];
          v23 = [v20 phoneNumber];
          if (v23)
          {
            v24 = v23;
            v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v27 = v26;
          }

          else
          {
            v25 = 0;
            v27 = 0xE000000000000000;
          }

          swift_beginAccess();
          v4 = *(v2 + v11);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *(v2 + v11) = v4;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v4 = sub_100224E64(0, *(v4 + 2) + 1, 1, v4);
            *(v2 + v11) = v4;
          }

          v30 = *(v4 + 2);
          v29 = *(v4 + 3);
          if (v30 >= v29 >> 1)
          {
            v4 = sub_100224E64((v29 > 1), v30 + 1, 1, v4);
          }

          *(v4 + 2) = v30 + 1;
          v31 = &v4[224 * v30];
          *(v31 + 4) = 0;
          *(v31 + 5) = 0xE000000000000000;
          *(v31 + 6) = v83;
          v31[56] = v79;
          *(v31 + 57) = *v88;
          *(v31 + 15) = *&v88[3];
          *(v31 + 8) = 0xD000000000000010;
          *(v31 + 9) = v80 | 0x8000000000000000;
          *(v31 + 10) = v25;
          *(v31 + 11) = v27;
          *(v31 + 48) = 1541;
          *(v31 + 51) = v87;
          *(v31 + 98) = v86;
          *(v31 + 13) = 0x6E776F6E6B6E55;
          *(v31 + 14) = 0xE700000000000000;
          *(v31 + 15) = 0;
          *(v31 + 16) = 0xE000000000000000;
          *(v31 + 17) = 0;
          *(v31 + 18) = 0xE000000000000000;
          *(v31 + 19) = 0x2020202020202020;
          *(v31 + 20) = 0xEA00000000002020;
          *(v31 + 21) = 0x2020202020202020;
          *(v31 + 22) = 0xEA00000000002020;
          *(v31 + 23) = 0x2020202020202020;
          *(v31 + 24) = 0xEA00000000002020;
          *(v31 + 25) = 0x2020202020202020;
          *(v31 + 26) = 0xEA00000000002020;
          *(v31 + 27) = 0x2020202020202020;
          *(v31 + 28) = 0xEA00000000002020;
          *(v31 + 29) = _swiftEmptyArrayStorage;
          *(v31 + 30) = _swiftEmptyArrayStorage;
          *(v31 + 31) = _swiftEmptyArrayStorage;
          *(v2 + v11) = v4;
          swift_endAccess();

          if (__OFADD__(v15++, 1))
          {
            __break(1u);
LABEL_34:
            swift_once();
LABEL_3:
            static os_log_type_t.default.getter();
            sub_1001A551C(&unk_100377020, &unk_1002EF770);
            v5 = swift_allocObject();
            *(v5 + 16) = xmmword_1002EED40;
            *(v5 + 56) = &type metadata for String;
            *(v5 + 64) = sub_1001A76E8();
            *(v5 + 32) = v2;
            *(v5 + 40) = v4;
            os_log(_:dso:log:type:_:)();
LABEL_4:

            return;
          }

          v14 = &selRef_clearRlfCauses;
          v13 = v77;
          v9 = v78;
          v17 = v76;
          v18 = &selRef_titleLabel;
        }

        else
        {
        }

        if (v13 == ++v16)
        {
          goto LABEL_37;
        }
      }
    }
  }

  v15 = 0;
LABEL_37:

  v33 = OBJC_IVAR____TtC11FTMInternal20CoreTelephonyService_hManager;
  if (*(*(v2 + OBJC_IVAR____TtC11FTMInternal20CoreTelephonyService_hManager) + 168) != v15)
  {
    *(v2 + OBJC_IVAR____TtC11FTMInternal20CoreTelephonyService_isSimAdded) = 1;
  }

  v34 = *(v2 + v11);
  v35 = *(v34 + 16);
  v84 = v33;
  if (v35)
  {

    v36 = 48;
    v37 = &qword_100375000;
    do
    {
      if (v15 == 1)
      {
        v38 = *(v34 + v36);
        if (v37[3] != -1)
        {
          v41 = v37;
          swift_once();
          v37 = v41;
        }

        v39 = qword_100382500;
        if ((*(qword_100382500 + 160) & 1) == 0 && (v38 != 1) != *(qword_100382500 + 156))
        {
          *(qword_100382500 + 156) = v38 != 1;
          *(v39 + 160) = 0;
          v40 = v37;
          sub_10020A870();
          v37 = v40;
        }
      }

      v36 += 224;
      --v35;
    }

    while (v35);

    v33 = v84;
  }

  *(*&v33[v2] + 168) = v15;
  v42 = objc_opt_self();

  v43 = [v42 defaultCenter];
  if (qword_100375000 != -1)
  {
LABEL_72:
    swift_once();
  }

  [v43 postNotificationName:static NSNotificationName.numberOfSubsChanged object:0 userInfo:0];

  sub_1001A551C(&unk_1003770A0, &unk_1002EED60);
  v44 = swift_allocObject();
  *(v44 + 16) = xmmword_1002EED50;
  *(v44 + 56) = &type metadata for String;
  *(v44 + 32) = 0xD000000000000011;
  *(v44 + 40) = 0x80000001002BBFF0;
  v45 = *(v2 + v11);
  *(v44 + 88) = sub_1001A551C(&qword_100377040, &qword_1002F21E8);
  *(v44 + 64) = v45;

  print(_:separator:terminator:)();

  v43 = *(v2 + v11);
  v46 = v43[2];
  if (v46)
  {
    v47 = *(v2 + v11);

    v48 = 0;
    v49 = 0;
    v81 = v43;
    do
    {
      v50 = v43[v48 / 8 + 6];
      sub_1001E571C(v50);
      if (*(*&v33[v2] + 26) == 1)
      {
        v51 = sub_1001E5E58(v50);
        v53 = v52;
        swift_beginAccess();
        v33 = *(v2 + v11);

        v54 = swift_isUniquelyReferenced_nonNull_native();
        *(v2 + v11) = v33;
        if ((v54 & 1) == 0)
        {
          v33 = sub_1001FA71C(v33);
          *(v2 + v11) = v33;
        }

        if (v49 >= *(v33 + 2))
        {
          goto LABEL_70;
        }

        v55 = v46;
        v56 = *&v33[v48 + 240];
        *&v33[v48 + 240] = v51;
        *(v2 + v11) = v33;
        swift_endAccess();

        swift_beginAccess();
        v57 = *(v2 + v11);

        v58 = swift_isUniquelyReferenced_nonNull_native();
        *(v2 + v11) = v57;
        if ((v58 & 1) == 0)
        {
          v57 = sub_1001FA71C(v57);
          *(v2 + v11) = v57;
        }

        v46 = v55;
        v43 = v81;
        if (v49 >= *(v57 + 2))
        {
          goto LABEL_71;
        }

        v59 = *&v57[v48 + 248];
        *&v57[v48 + 248] = v53;
        *(v2 + v11) = v57;
        swift_endAccess();

        v33 = v84;
      }

      v60 = sub_1001E76C4(v50);
      swift_beginAccess();
      v61 = *(v2 + v11);
      v62 = swift_isUniquelyReferenced_nonNull_native();
      *(v2 + v11) = v61;
      if ((v62 & 1) == 0)
      {
        v61 = sub_1001FA71C(v61);
      }

      if (v49 >= *(v61 + 2))
      {
        __break(1u);
LABEL_70:
        __break(1u);
LABEL_71:
        __break(1u);
        goto LABEL_72;
      }

      ++v49;
      v61[v48 + 96] = v60;
      *(v2 + v11) = v61;
      swift_endAccess();
      v48 += 224;
    }

    while (v46 != v49);

    v85 = *(v2 + v11);
    v63 = *(v85 + 16);
    if (!v63)
    {
      goto LABEL_68;
    }

    v82 = OBJC_IVAR____TtC11FTMInternal20CoreTelephonyService_client;

    v64 = 48;
    do
    {
      v65 = [objc_allocWithZone(CTXPCServiceSubscriptionContext) initWithSlot:*(v85 + v64)];
      v66 = [v65 slotID];
      v67 = [v65 slotID];
      v68 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v69 = swift_allocObject();
      v69[2] = v68;
      v69[3] = v66;
      v69[4] = v65;
      v70 = objc_allocWithZone(CTXPCServiceSubscriptionContext);
      v71 = v65;

      v72 = [v70 initWithSlot:v67];
      v73 = *(v2 + v82);
      v74 = swift_allocObject();
      *(v74 + 16) = sub_1002050B8;
      *(v74 + 24) = v69;
      aBlock[4] = sub_100205088;
      aBlock[5] = v74;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1001F2210;
      aBlock[3] = &unk_10031ED88;
      v75 = _Block_copy(aBlock);

      [v73 copyCellInfo:v72 completion:v75];
      _Block_release(v75);

      v64 += 224;
      --v63;
    }

    while (v63);

    goto LABEL_4;
  }

LABEL_68:
}

void sub_1001E571C(uint64_t a1)
{
  v2 = v1;
  v4 = [objc_allocWithZone(CTBundle) initWithBundleType:1];
  v5 = [objc_allocWithZone(CTXPCServiceSubscriptionContext) initWithSlot:a1];
  if (qword_100374FD8 != -1)
  {
    goto LABEL_52;
  }

  while (1)
  {
    static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)();
    v6 = *(v2 + OBJC_IVAR____TtC11FTMInternal20CoreTelephonyService_client);
    v7 = String._bridgeToObjectiveC()();
    v51[0] = 0;
    v8 = [v6 copyCarrierBundleValue:v5 key:v7 bundleType:v4 error:v51];

    v50 = v8;
    if (!v8)
    {
      v21 = v51[0];
      _convertNSErrorToError(_:)();

      swift_willThrow();
      goto LABEL_48;
    }

    v9 = qword_100375018;
    v10 = v51[0];
    if (v9 != -1)
    {
      swift_once();
    }

    if (*(qword_100382500 + 24) == 1)
    {
      v51[0] = 0;
      v11 = [v6 copyCarrierBundleVersion:v5 error:v51];
      v12 = v51[0];
      if (v11)
      {
        v13 = v11;
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v15 = v14;
        v16 = v12;

        v51[0] = 0;
        v17 = [v6 copyBundleIdentifier:v5 bundleType:v4 error:v51];
        v18 = v51[0];
        if (v17)
        {
          v49 = v15;
          v48 = v4;
          v19 = v17;
          static String._unconditionallyBridgeFromObjectiveC(_:)();
          v20 = v18;

          goto LABEL_11;
        }

        v43 = v51[0];

        _convertNSErrorToError(_:)();
      }

      else
      {
        v42 = v51[0];
        _convertNSErrorToError(_:)();
      }

      swift_willThrow();

LABEL_48:
      sub_1001A551C(&unk_1003770A0, &unk_1002EED60);
      v44 = swift_allocObject();
      *(v44 + 16) = xmmword_1002EED50;
      *(v44 + 56) = &type metadata for String;
      *(v44 + 32) = 0xD000000000000029;
      *(v44 + 40) = 0x80000001002BC170;
      swift_getErrorValue();
      v45 = Error.localizedDescription.getter();
      *(v44 + 88) = &type metadata for String;
      *(v44 + 64) = v45;
      *(v44 + 72) = v46;
      print(_:separator:terminator:)();

      return;
    }

    v48 = v4;
    v49 = 0xE000000000000000;
LABEL_11:
    v22 = [v5 slotID];
    v23 = "CarrierInfoArray ";
    if (v22 == 1)
    {
      v23 = "0000000100000002";
    }

    v24 = v23 | 0x8000000000000000;
    v25 = OBJC_IVAR____TtC11FTMInternal20CoreTelephonyService_carrierInfoArray;
    swift_beginAccess();
    v26 = *(*(v2 + v25) + 16);
    v5 = v49;
    v4 = v50;
    if (v26)
    {
      v27 = 0;
      v28 = 224;
      while (1)
      {
        v29 = *(v2 + v25);
        if (v27 >= *(v29 + 16))
        {
          break;
        }

        v30 = v29 + v28;
        v31 = *(v30 - 160) == 0xD000000000000010 && v24 == *(v30 - 152);
        if (v31 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          objc_opt_self();
          if (swift_dynamicCastObjCClass())
          {
            v32 = v50;
            static String._conditionallyBridgeFromObjectiveC(_:result:)();
          }
        }

        ++v27;
        v28 += 224;
        if (v26 == v27)
        {
          goto LABEL_24;
        }
      }

      __break(1u);
      goto LABEL_51;
    }

LABEL_24:

    v33 = *(v2 + OBJC_IVAR____TtC11FTMInternal20CoreTelephonyService_hManager);
    v34 = *(v33 + 72);
    v35 = *(v33 + 64) & 0xFFFFFFFFFFFFLL;
    if ((v34 & 0x2000000000000000) != 0)
    {
      v35 = HIBYTE(v34) & 0xF;
    }

    if (!v35 || *(v2 + OBJC_IVAR____TtC11FTMInternal20CoreTelephonyService_isSimAdded) != 1)
    {
      break;
    }

    v36 = *(*(v2 + v25) + 16);
    if (!v36)
    {
LABEL_49:

      return;
    }

    v4 = 0;
    v37 = 0;
    while (1)
    {
      v38 = *(v2 + v25);
      if (v37 >= *(v38 + 16))
      {
        break;
      }

      v5 = &v4[v38];
      v39 = *&v4[v38 + 32] == *(v33 + 64) && *&v4[v38 + 40] == *(v33 + 72);
      if (v39 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        *(v33 + 156) = *(v5 + 6) != 1;
        *(v33 + 160) = 0;
        sub_10020A870();
      }

      ++v37;
      v4 += 224;
      if (v36 == v37)
      {
        goto LABEL_49;
      }
    }

LABEL_51:
    __break(1u);
    __break(1u);
    __break(1u);
    __break(1u);
LABEL_52:
    swift_once();
  }

  v40 = *(v2 + v25);
  v41 = !*(v40 + 16) || *(v40 + 48) != 1;
  *(v33 + 156) = v41;
  *(v33 + 160) = 0;
  sub_10020A870();
}

void *sub_1001E5E58(uint64_t a1)
{
  v184 = type metadata accessor for UUID();
  v3 = *(v184 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v184);
  v188 = &v152 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v183 = type metadata accessor for Metric(0);
  v182 = *(v183 - 1);
  v6 = *(v182 + 64);
  v7 = __chkstk_darwin(v183);
  v179 = &v152 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v178 = &v152 - v10;
  v11 = __chkstk_darwin(v9);
  v13 = &v152 - v12;
  __chkstk_darwin(v11);
  v185 = &v152 - v14;
  v186 = type metadata accessor for Date();
  v156 = *(v186 - 8);
  v15 = *(v156 + 64);
  v16 = __chkstk_darwin(v186);
  v181 = &v152 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v19 = &v152 - v18;
  v180 = a1 != 1;
  v20 = [objc_allocWithZone(CTXPCServiceSubscriptionContext) initWithSlot:a1];
  v21 = *(v1 + OBJC_IVAR____TtC11FTMInternal20CoreTelephonyService_client);
  v194 = 0;
  v22 = [v21 getBandInfo:v20 error:&v194];
  v23 = "NSInputStream>40";
  if (v22)
  {
    v24 = v22;
    v25 = v194;
    Date.init()();
    v155 = v24;
    v26 = [v24 activeBands];
    v27 = _swiftEmptyArrayStorage;
    v189 = v19;
    v154 = v20;
    v153 = v3;
    if (v26)
    {
      v28 = v26;
      sub_1001A551C(&qword_100377188, &qword_1002F2330);
      v29 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      v30 = 0;
      v23 = (v29 + 64);
      v31 = *(v29 + 64);
      v165 = v29;
      v32 = 1 << *(v29 + 32);
      v33 = -1;
      if (v32 < 64)
      {
        v33 = ~(-1 << v32);
      }

      v34 = v33 & v31;
      v35 = (v32 + 63) >> 6;
      i = (v156 + 16);
      v162 = (v3 + 16);
      v161 = (v156 + 8);
      v160 = (v3 + 8);
      v159 = xmmword_1002F2090;
      v152 = xmmword_1002EED40;
      v36 = _swiftEmptyArrayStorage;
      v157 = v35;
      v164 = v13;
      *&v158 = v23;
      if ((v33 & v31) != 0)
      {
        do
        {
LABEL_10:
          v176 = v34;
          v38 = __clz(__rbit64(v34)) | (v30 << 6);
          v39 = *(v165 + 56);
          v40 = (*(v165 + 48) + 16 * v38);
          v41 = v40[1];
          v174 = *v40;
          v42 = *(v39 + 8 * v38);
          v43 = v42;
          if (v42 >> 62)
          {
            v84 = _CocoaArrayWrapper.endIndex.getter();
            v42 = v43;
            v44 = v84;
          }

          else
          {
            v44 = *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v190 = v42;
          v187 = v36;
          v175 = v41;
          if (v44)
          {
            v194 = _swiftEmptyArrayStorage;

            sub_1001F53D8(0, v44 & ~(v44 >> 63), 0);
            if (v44 < 0)
            {
              goto LABEL_91;
            }

            v45 = 0;
            v27 = v194;
            v46 = v43;
            v47 = v43 & 0xC000000000000001;
            do
            {
              if (v47)
              {
                v48 = specialized _ArrayBuffer._getElementSlowPath(_:)();
              }

              else
              {
                v48 = *(v46 + 8 * v45 + 32);
              }

              v49 = v48;
              v50 = [v48 stringValue];
              v51 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v53 = v52;

              v194 = v27;
              v55 = v27[2];
              v54 = v27[3];
              if (v55 >= v54 >> 1)
              {
                sub_1001F53D8((v54 > 1), v55 + 1, 1);
                v27 = v194;
              }

              ++v45;
              v27[2] = v55 + 1;
              v56 = &v27[2 * v55];
              v56[4] = v51;
              v56[5] = v53;
              v46 = v190;
            }

            while (v44 != v45);
          }

          else
          {
          }

          v194 = v27;
          sub_1001A551C(&qword_1003751B0, &unk_1002EED80);
          sub_1001AD0C8(&qword_100377100, &qword_1003751B0, &unk_1002EED80);
          v57 = BidirectionalCollection<>.joined(separator:)();
          v59 = v58;

          v196 = &type metadata for String;
          v194 = v57;
          v195 = v59;
          sub_1001E1BB4(0, &qword_1003770C8, NSString_ptr);
          v60 = NSString.init(stringLiteral:)();
          v61 = NSString.init(stringLiteral:)();
          sub_1001A773C(&v194, &v193);
          if (swift_dynamicCast())
          {
            v62 = NSString.init(stringLiteral:)();

            v63 = String._bridgeToObjectiveC()();

            v61 = v63;
            v60 = v62;
            p_superclass = (_TtC11FTMInternal7MenuBar + 8);
          }

          else if (swift_dynamicCast())
          {
            v65 = DynamicType;
            v66 = NSString.init(stringLiteral:)();

            v191 = v65;
            dispatch thunk of CustomStringConvertible.description.getter();
            v67 = String._bridgeToObjectiveC()();

            v61 = v67;
            v60 = v66;
            p_superclass = (_TtC11FTMInternal7MenuBar + 8);
          }

          else
          {
            p_superclass = _TtC11FTMInternal7MenuBar.superclass;
            if (qword_100375018 != -1)
            {
              swift_once();
            }

            if (*(qword_100382500 + 26) == 1)
            {
              v177 = v60;
              if (qword_100374FD8 != -1)
              {
                swift_once();
              }

              static os_log_type_t.default.getter();
              sub_1001A551C(&unk_100377020, &unk_1002EF770);
              v68 = swift_allocObject();
              *(v68 + 16) = v152;
              sub_1001A5610(&v194, v196);
              DynamicType = swift_getDynamicType();
              sub_1001A551C(&qword_100377190, &qword_1002F2338);
              v69 = String.init<A>(describing:)();
              v71 = v70;
              *(v68 + 56) = &type metadata for String;
              *(v68 + 64) = sub_1001A76E8();
              *(v68 + 32) = v69;
              *(v68 + 40) = v71;
              os_log(_:dso:log:type:_:)();

              v60 = v177;
            }
          }

          v177 = v60;
          v174 = v61;
          sub_1001A5654(&v193);
          if (p_superclass[507] != -1)
          {
            swift_once();
          }

          static os_log_type_t.default.getter();
          os_log(_:dso:log:type:_:)();
          v72 = v188;
          UUID.init()();
          v172 = String._bridgeToObjectiveC()();
          v171 = String._bridgeToObjectiveC()();
          v170 = String._bridgeToObjectiveC()();
          v167 = String._bridgeToObjectiveC()();
          v73 = *i;
          v74 = v181;
          v75 = v186;
          (*i)(v181, v189, v186);
          v166 = String._bridgeToObjectiveC()();
          v76 = v183;
          v77 = v183[15];
          v169 = v183[14];
          v168 = v77;
          v173 = v183[16];
          v78 = v185;
          v79 = v184;
          (*v162)(v185, v72, v184);
          *(v78 + v76[5]) = v172;
          *(v78 + v76[6]) = v171;
          *(v78 + v76[7]) = v170;
          *(v78 + v76[8]) = v167;
          *(v78 + v76[9]) = v174;
          *(v78 + v76[10]) = v177;
          v73((v78 + v76[11]), v74, v75);
          *(v78 + v76[12]) = v166;
          *(v78 + v76[13]) = v180;
          *(v78 + v169) = 0;
          *(v78 + v168) = 0;

          (*v161)(v74, v75);
          (*v160)(v72, v79);
          *(v173 + v78) = v159;
          sub_1001A5654(&v194);
          v80 = v164;
          sub_100204DB0(v78, v164, type metadata accessor for Metric);
          v36 = v187;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v36 = sub_1002250B0(0, v36[2] + 1, 1, v36);
          }

          v23 = v158;
          v35 = v157;
          v81 = v176;
          v83 = v36[2];
          v82 = v36[3];
          v19 = v189;
          v27 = _swiftEmptyArrayStorage;
          if (v83 >= v82 >> 1)
          {
            v36 = sub_1002250B0(v82 > 1, v83 + 1, 1, v36);
          }

          v34 = (v81 - 1) & v81;
          sub_1002034BC(v185, type metadata accessor for Metric);
          v36[2] = v83 + 1;
          sub_100204E18(v80, v36 + ((*(v182 + 80) + 32) & ~*(v182 + 80)) + *(v182 + 72) * v83, type metadata accessor for Metric);
        }

        while (v34);
      }

      while (1)
      {
        v37 = v30 + 1;
        if (__OFADD__(v30, 1))
        {
          break;
        }

        if (v37 >= v35)
        {

          v20 = v154;
          goto LABEL_46;
        }

        v34 = *&v23[8 * v37];
        ++v30;
        if (v34)
        {
          v30 = v37;
          goto LABEL_10;
        }
      }

      __break(1u);
    }

    else
    {
      v36 = _swiftEmptyArrayStorage;
LABEL_46:
      v90 = v155;
      v91 = [v155 supportedBands];
      if (!v91)
      {
        (*(v156 + 8))(v19, v186);

        return v36;
      }

      v92 = v91;
      sub_1001A551C(&qword_100377188, &qword_1002F2330);
      v93 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      v94 = 0;
      v96 = v93 + 64;
      v95 = *(v93 + 64);
      v166 = v93;
      v97 = 1 << *(v93 + 32);
      v98 = -1;
      if (v97 < 64)
      {
        v98 = ~(-1 << v97);
      }

      v23 = (v98 & v95);
      v99 = (v97 + 63) >> 6;
      v162 = (v156 + 16);
      v161 = (v153 + 16);
      v165 = v156 + 8;
      v160 = (v153 + 8);
      v159 = xmmword_1002F2090;
      v158 = xmmword_1002EED40;
      v100 = _swiftEmptyArrayStorage;
      v187 = v36;
      v164 = (v93 + 64);
      for (i = v99; v23; v99 = i)
      {
LABEL_54:
        v177 = v100;
        v185 = v23;
        v102 = __clz(__rbit64(v23)) | (v94 << 6);
        v103 = v166[7];
        v104 = (v166[6] + 16 * v102);
        v105 = v104[1];
        v175 = *v104;
        v106 = *(v103 + 8 * v102);
        v107 = v106;
        if (v106 >> 62)
        {
          v149 = v105;
          v150 = _CocoaArrayWrapper.endIndex.getter();
          v106 = v107;
          v108 = v150;
          v105 = v149;
        }

        else
        {
          v108 = *((v106 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v190 = v106;
        v176 = v105;
        if (v108)
        {
          v194 = _swiftEmptyArrayStorage;

          sub_1001F53D8(0, v108 & ~(v108 >> 63), 0);
          if (v108 < 0)
          {
            goto LABEL_92;
          }

          v109 = 0;
          v27 = v194;
          v110 = v107;
          v111 = v107 & 0xC000000000000001;
          do
          {
            if (v111)
            {
              v112 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              v112 = *(v110 + 8 * v109 + 32);
            }

            v113 = v112;
            v114 = [v112 stringValue];
            v115 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v117 = v116;

            v194 = v27;
            v119 = v27[2];
            v118 = v27[3];
            if (v119 >= v118 >> 1)
            {
              sub_1001F53D8((v118 > 1), v119 + 1, 1);
              v27 = v194;
            }

            ++v109;
            v27[2] = v119 + 1;
            v120 = &v27[2 * v119];
            v120[4] = v115;
            v120[5] = v117;
            v110 = v190;
          }

          while (v108 != v109);
          v19 = v189;
        }

        else
        {
        }

        v194 = v27;
        sub_1001A551C(&qword_1003751B0, &unk_1002EED80);
        sub_1001AD0C8(&qword_100377100, &qword_1003751B0, &unk_1002EED80);
        v121 = BidirectionalCollection<>.joined(separator:)();
        v123 = v122;

        v196 = &type metadata for String;
        v194 = v121;
        v195 = v123;
        sub_1001E1BB4(0, &qword_1003770C8, NSString_ptr);
        v124 = NSString.init(stringLiteral:)();
        v125 = NSString.init(stringLiteral:)();
        sub_1001A773C(&v194, &v193);
        if (swift_dynamicCast())
        {
          v126 = NSString.init(stringLiteral:)();

          v127 = String._bridgeToObjectiveC()();

          v125 = v127;
          v124 = v126;
          v128 = (_TtC11FTMInternal7MenuBar + 8);
        }

        else if (swift_dynamicCast())
        {
          v129 = DynamicType;
          v130 = NSString.init(stringLiteral:)();

          v191 = v129;
          dispatch thunk of CustomStringConvertible.description.getter();
          v131 = String._bridgeToObjectiveC()();

          v125 = v131;
          v124 = v130;
          v128 = (_TtC11FTMInternal7MenuBar + 8);
        }

        else
        {
          v128 = _TtC11FTMInternal7MenuBar.superclass;
          if (qword_100375018 != -1)
          {
            swift_once();
          }

          if (*(qword_100382500 + 26) == 1)
          {
            if (qword_100374FD8 != -1)
            {
              swift_once();
            }

            static os_log_type_t.default.getter();
            sub_1001A551C(&unk_100377020, &unk_1002EF770);
            v132 = swift_allocObject();
            *(v132 + 16) = v158;
            sub_1001A5610(&v194, v196);
            DynamicType = swift_getDynamicType();
            sub_1001A551C(&qword_100377190, &qword_1002F2338);
            v133 = String.init<A>(describing:)();
            v135 = v134;
            *(v132 + 56) = &type metadata for String;
            *(v132 + 64) = sub_1001A76E8();
            *(v132 + 32) = v133;
            *(v132 + 40) = v135;
            os_log(_:dso:log:type:_:)();

            v19 = v189;
          }
        }

        v173 = v124;
        v174 = v125;
        sub_1001A5654(&v193);
        if (v128[507] != -1)
        {
          swift_once();
        }

        static os_log_type_t.default.getter();
        os_log(_:dso:log:type:_:)();
        v136 = v188;
        UUID.init()();
        v172 = String._bridgeToObjectiveC()();
        v171 = String._bridgeToObjectiveC()();
        v170 = String._bridgeToObjectiveC()();
        v167 = String._bridgeToObjectiveC()();
        v137 = *v162;
        v138 = v181;
        v139 = v186;
        (*v162)(v181, v19, v186);
        v140 = String._bridgeToObjectiveC()();
        v141 = v183;
        v142 = v183[15];
        v169 = v183[14];
        v168 = v142;
        v175 = v183[16];
        v143 = v178;
        v144 = v136;
        v145 = v184;
        (*v161)(v178, v144, v184);
        *(v143 + v141[5]) = v172;
        *(v143 + v141[6]) = v171;
        *(v143 + v141[7]) = v170;
        *(v143 + v141[8]) = v167;
        *(v143 + v141[9]) = v174;
        *(v143 + v141[10]) = v173;
        v137((v143 + v141[11]), v138, v139);
        *(v143 + v141[12]) = v140;
        *(v143 + v141[13]) = v180;
        *(v143 + v169) = 0;
        *(v143 + v168) = 0;

        (*v165)(v138, v139);
        (*v160)(v188, v145);
        *(v143 + v175) = v159;
        sub_1001A5654(&v194);
        sub_100204DB0(v143, v179, type metadata accessor for Metric);
        v100 = v177;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v100 = sub_1002250B0(0, v100[2] + 1, 1, v100);
        }

        v36 = v187;
        v146 = v185;
        v148 = v100[2];
        v147 = v100[3];
        v19 = v189;
        v27 = _swiftEmptyArrayStorage;
        if (v148 >= v147 >> 1)
        {
          v100 = sub_1002250B0(v147 > 1, v148 + 1, 1, v100);
        }

        v23 = ((v146 - 1) & v146);
        sub_1002034BC(v178, type metadata accessor for Metric);
        v100[2] = v148 + 1;
        sub_100204E18(v179, v100 + ((*(v182 + 80) + 32) & ~*(v182 + 80)) + *(v182 + 72) * v148, type metadata accessor for Metric);
        v96 = v164;
      }

      while (1)
      {
        v101 = v94 + 1;
        if (__OFADD__(v94, 1))
        {
          break;
        }

        if (v101 >= v99)
        {
          (*v165)(v19, v186);

          return v36;
        }

        v23 = *(v96 + 8 * v101);
        ++v94;
        if (v23)
        {
          v94 = v101;
          goto LABEL_54;
        }
      }
    }

    __break(1u);
LABEL_91:
    __break(1u);
LABEL_92:
    __break(1u);
    goto LABEL_93;
  }

  v85 = v194;
  _convertNSErrorToError(_:)();

  swift_willThrow();
  if (qword_100374FD8 != -1)
  {
LABEL_93:
    swift_once();
  }

  static os_log_type_t.default.getter();
  sub_1001A551C(&unk_100377020, &unk_1002EF770);
  v86 = swift_allocObject();
  *(v86 + 16) = *(v23 + 212);
  swift_getErrorValue();
  v87 = Error.localizedDescription.getter();
  v89 = v88;
  *(v86 + 56) = &type metadata for String;
  *(v86 + 64) = sub_1001A76E8();
  *(v86 + 32) = v87;
  *(v86 + 40) = v89;
  os_log(_:dso:log:type:_:)();

  return _swiftEmptyArrayStorage;
}