unint64_t sub_10006468C()
{
  result = qword_1008E2918;
  if (!qword_1008E2918)
  {
    sub_100141EEC(&qword_1008E2910);
    sub_100064FE4();
    sub_10014A6B0(&qword_1008E2940, &qword_1008E2948);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E2918);
  }

  return result;
}

uint64_t sub_10006474C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v68 = a2;
  v67 = sub_100140278(&qword_1008E2958);
  __chkstk_darwin(v67);
  v66 = &v53 - v3;
  v4 = type metadata accessor for MetricCardBarChartView();
  v61 = *(v4 - 8);
  __chkstk_darwin(v4);
  v62 = v5;
  v59 = &v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = sub_100140278(&qword_1008E2948);
  v63 = *(v65 - 8);
  v6 = __chkstk_darwin(v65);
  v64 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v60 = &v53 - v8;
  v9 = type metadata accessor for AxisMarkPosition();
  __chkstk_darwin(v9 - 8);
  v57 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for AxisMarkPreset();
  __chkstk_darwin(v11 - 8);
  v70 = &v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100140278(&unk_1008E51A0);
  __chkstk_darwin(v13 - 8);
  v54 = &v53 - v14;
  v55 = type metadata accessor for Calendar.Component();
  v15 = *(v55 - 8);
  __chkstk_darwin(v55);
  v17 = &v53 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = type metadata accessor for AxisMarkValues();
  v18 = *(v56 - 8);
  __chkstk_darwin(v56);
  v20 = &v53 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_100140278(&qword_1008E2938);
  v22 = *(v21 - 8);
  __chkstk_darwin(v21);
  v24 = &v53 - v23;
  v25 = sub_100140278(&qword_1008E2928);
  v26 = __chkstk_darwin(v25 - 8);
  v58 = &v53 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v29 = v4;
  v30 = *(v4 + 32);
  v31 = a1;
  v32 = a1 + v30;
  v33 = *(v32 + 8);
  v69 = &v53 - v28;
  if (v33 == 1 && !*v32)
  {
    (*(v15 + 104))(v17, enum case for Calendar.Component.hour(_:), v55);
    v50 = type metadata accessor for Calendar();
    v51 = v54;
    (*(*(v50 - 8) + 56))(v54, 1, 1, v50);
    static AxisMarkValues.stride(by:count:roundLowerBound:roundUpperBound:calendar:)();
    sub_10000EA04(v51, &unk_1008E51A0);
    (*(v15 + 8))(v17, v55);
    static AxisMarkPreset.automatic.getter();
    static AxisMarkPosition.automatic.getter();
    type metadata accessor for AxisGridLine();
    AxisMarks.init(preset:position:values:content:)();
    v52 = v69;
    (*(v22 + 32))(v69, v24, v21);
    v34 = v52;
    (*(v22 + 56))(v52, 0, 1, v21);
  }

  else
  {
    v34 = &v53 - v28;
    (*(v22 + 56))(&v53 - v28, 1, 1, v21);
  }

  (*(v18 + 16))(v20, v31 + *(v29 + 60), v56);
  v35 = v59;
  sub_100062284(v31, v59);
  v36 = (*(v61 + 80) + 16) & ~*(v61 + 80);
  v37 = swift_allocObject();
  sub_10006128C(v35, v37 + v36);
  static AxisMarkPreset.automatic.getter();
  static AxisMarkPosition.automatic.getter();
  sub_100140278(&qword_1008E2960);
  sub_100233634();
  v38 = v60;
  AxisMarks.init(preset:position:values:content:)();
  v39 = v58;
  sub_10001B104(v34, v58, &qword_1008E2928);
  v40 = v63;
  v41 = v64;
  v42 = *(v63 + 16);
  v43 = v65;
  v42(v64, v38, v65);
  sub_100064FE4();
  v44 = v66;
  sub_10001B104(v39, v66, &qword_1008E2928);
  sub_10014A6B0(&qword_1008E2940, &qword_1008E2948);
  v45 = v67;
  v46 = *(v67 + 48);
  v42((v44 + v46), v41, v43);
  v47 = v68;
  sub_100015E80(v44, v68, &qword_1008E2928);
  (*(v40 + 32))(v47 + *(v45 + 48), v44 + v46, v43);
  v48 = *(v40 + 8);
  v48(v38, v43);
  sub_10000EA04(v69, &qword_1008E2928);
  v48(v41, v43);
  return sub_10000EA04(v39, &qword_1008E2928);
}

unint64_t sub_100064FE4()
{
  result = qword_1008E2920;
  if (!qword_1008E2920)
  {
    sub_100141EEC(&qword_1008E2928);
    sub_10014A6B0(&qword_1008E2930, &qword_1008E2938);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E2920);
  }

  return result;
}

uint64_t sub_100065104(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for MetricCardBarChartView() - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

uint64_t sub_1000651BC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = static HorizontalAlignment.center.getter();
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v4 = sub_100140278(&qword_1008E1390);
  return sub_1000652A4(a1, a2 + *(v4 + 44));
}

unint64_t sub_100065218()
{
  result = qword_1008E29A8;
  if (!qword_1008E29A8)
  {
    sub_100141EEC(&qword_1008E29A0);
    sub_100046660();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E29A8);
  }

  return result;
}

uint64_t sub_1000652A4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v73 = a1;
  v84 = a2;
  v77 = type metadata accessor for BorderedProminentButtonStyle();
  v78 = *(v77 - 8);
  __chkstk_darwin(v77);
  v74 = &v70 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = sub_100140278(&qword_1008E1398);
  v76 = *(v75 - 8);
  __chkstk_darwin(v75);
  v71 = &v70 - v3;
  v4 = sub_100140278(&qword_1008E13A0);
  v5 = *(v4 - 8);
  v79 = v4;
  v80 = v5;
  __chkstk_darwin(v4);
  v72 = &v70 - v6;
  v82 = sub_100140278(&qword_1008E13A8) - 8;
  __chkstk_darwin(v82);
  v83 = &v70 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v70 - v9;
  v11 = type metadata accessor for Divider();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v70 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100140278(&qword_1008E13B0);
  v16 = v15 - 8;
  __chkstk_darwin(v15);
  v18 = &v70 - v17;
  v19 = sub_100140278(&qword_1008E13B8);
  v20 = v19 - 8;
  __chkstk_darwin(v19);
  v81 = &v70 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = &v70 - v23;
  __chkstk_darwin(v25);
  v27 = &v70 - v26;
  Divider.init()();
  static Solarium.isEnabled.getter();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  (*(v12 + 32))(v18, v14, v11);
  v28 = &v18[*(v16 + 44)];
  v29 = v90;
  *v28 = v89;
  *(v28 + 1) = v29;
  *(v28 + 2) = v91;
  LOBYTE(v11) = static Edge.Set.bottom.getter();
  EdgeInsets.init(_all:)();
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v37 = v36;
  sub_100015E80(v18, v24, &qword_1008E13B0);
  v38 = &v24[*(v20 + 44)];
  *v38 = v11;
  *(v38 + 1) = v31;
  *(v38 + 2) = v33;
  *(v38 + 3) = v35;
  *(v38 + 4) = v37;
  v38[40] = 0;
  v39 = v27;
  sub_100015E80(v24, v27, &qword_1008E13B8);
  v40 = swift_allocObject();
  v41 = v73;
  *(v40 + 16) = v73;
  v42 = v41;
  sub_100140278(&qword_1008E13C0);
  sub_100065EBC();
  v43 = v71;
  Button.init(action:label:)();
  v44 = v74;
  BorderedProminentButtonStyle.init()();
  v45 = sub_10014A6B0(&qword_1008E13D0, &qword_1008E1398);
  v46 = sub_100066038(&qword_1008DC548, &type metadata accessor for BorderedProminentButtonStyle);
  v47 = v72;
  v48 = v75;
  v49 = v77;
  View.buttonStyle<A>(_:)();
  (*(v78 + 8))(v44, v49);
  (*(v76 + 8))(v43, v48);
  Solarium.init()();
  sub_100140278(&qword_1008E13D8);
  v85 = v48;
  v86 = v49;
  v87 = v45;
  v88 = v46;
  swift_getOpaqueTypeConformance2();
  sub_10020085C();
  v50 = v79;
  View.staticIf<A, B>(_:then:)();
  (*(v80 + 8))(v47, v50);
  v51 = &v10[*(sub_100140278(&qword_1008E13E8) + 36)];
  v52 = *(sub_100140278(&qword_1008DC578) + 28);
  v53 = enum case for ControlSize.large(_:);
  v54 = type metadata accessor for ControlSize();
  (*(*(v54 - 8) + 104))(v51 + v52, v53, v54);
  *v51 = swift_getKeyPath();
  v55 = sub_100046170();
  v56 = Color.init(uiColor:)();
  KeyPath = swift_getKeyPath();
  v85 = v56;
  v58 = AnyShapeStyle.init<A>(_:)();
  v59 = &v10[*(sub_100140278(&qword_1008E13F0) + 36)];
  *v59 = KeyPath;
  v59[1] = v58;
  LOBYTE(v58) = static Edge.Set.all.getter();
  EdgeInsets.init(_all:)();
  v60 = v81;
  v61 = &v10[*(v82 + 44)];
  *v61 = v58;
  *(v61 + 1) = v62;
  *(v61 + 2) = v63;
  *(v61 + 3) = v64;
  *(v61 + 4) = v65;
  v61[40] = 0;
  sub_1002009D4(v39, v60);
  v66 = v83;
  sub_100065B84(v10, v83);
  v67 = v84;
  sub_1002009D4(v60, v84);
  v68 = sub_100140278(&qword_1008E13F8);
  sub_100065B84(v66, v67 + *(v68 + 48));
  sub_100065BF4(v10);
  sub_10000EA04(v39, &qword_1008E13B8);
  sub_100065BF4(v66);
  return sub_10000EA04(v60, &qword_1008E13B8);
}

uint64_t sub_100065B3C()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100065B84(uint64_t a1, uint64_t a2)
{
  v4 = sub_100140278(&qword_1008E13A8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100065BF4(uint64_t a1)
{
  v2 = sub_100140278(&qword_1008E13A8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100065C68()
{
  v1 = type metadata accessor for Date.FormatStyle.Symbol.Weekday();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Date.FormatStyle();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for MetricCardBarChartView();
  v10 = v0 + *(v9 + 32);
  if (*(v10 + 8) == 1 && *v10 == 1)
  {
    static Date.FormatStyle.Symbol.Weekday.narrow.getter();
    Date.FormatStyle.weekday(_:)();
    (*(v2 + 8))(v4, v1);
    sub_100018D14(&qword_1008E29B0, &type metadata accessor for Date.FormatStyle);
    Date.formatted<A>(_:)();
    (*(v6 + 8))(v8, v5);
    return v16;
  }

  else
  {
    v12 = *(v0 + *(v9 + 56));
    isa = Date._bridgeToObjectiveC()().super.isa;
    v14 = [v12 stringFromDate:isa];

    v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  return v11;
}

unint64_t sub_100065EBC()
{
  result = qword_1008E13C8;
  if (!qword_1008E13C8)
  {
    sub_100141EEC(&qword_1008E13C0);
    sub_100141EEC(&qword_1008DC530);
    sub_100065FB4();
    swift_getOpaqueTypeConformance2();
    sub_100066038(&qword_1008DCEF8, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E13C8);
  }

  return result;
}

unint64_t sub_100065FB4()
{
  result = qword_1008DC538;
  if (!qword_1008DC538)
  {
    sub_100141EEC(&qword_1008DC530);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008DC538);
  }

  return result;
}

uint64_t sub_100066038(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100066080(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000660C8(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_100066110(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for AccessibilityChildBehavior();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v53 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Font.Leading();
  v50 = *(v5 - 8);
  v51 = v5;
  __chkstk_darwin(v5);
  v49 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Font.TextStyle();
  v47 = *(v7 - 8);
  v48 = v7;
  __chkstk_darwin(v7);
  v46 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100140278(&qword_1008E1400);
  v54 = *(v9 - 8);
  __chkstk_darwin(v9);
  v52 = &v41 - v10;
  LocalizedStringKey.init(stringLiteral:)();
  v11 = Text.init(_:tableName:bundle:comment:)();
  v13 = v12;
  v15 = v14;
  v16 = [objc_opt_self() keyColors];
  if (v16)
  {
    v17 = v16;
    v42 = v3;
    v43 = v9;
    v44 = v2;
    v45 = a1;
    v18 = [v16 nonGradientTextColor];

    if (v18)
    {
      *&v64[0] = Color.init(uiColor:)();
      v19 = Text.foregroundStyle<A>(_:)();
      v21 = v20;
      v23 = v22;
      sub_10004642C(v11, v13, v15 & 1);

      v25 = v46;
      v24 = v47;
      v26 = v48;
      (*(v47 + 104))(v46, enum case for Font.TextStyle.body(_:), v48);
      static Font.Weight.semibold.getter();
      static Font.system(_:weight:)();
      (*(v24 + 8))(v25, v26);
      v28 = v49;
      v27 = v50;
      v29 = v51;
      (*(v50 + 104))(v49, enum case for Font.Leading.tight(_:), v51);
      Font.leading(_:)();

      (*(v27 + 8))(v28, v29);
      v30 = Text.font(_:)();
      v32 = v31;
      LOBYTE(v27) = v33;
      v35 = v34;

      sub_10004642C(v19, v21, v23 & 1);

      static Alignment.center.getter();
      _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
      v65 = v27 & 1;
      *&v55 = v30;
      *(&v55 + 1) = v32;
      LOBYTE(v56) = v27 & 1;
      *(&v56 + 1) = v35;
      v36 = v53;
      static AccessibilityChildBehavior.contain.getter();
      v37 = sub_100140278(&qword_1008DC530);
      v38 = sub_100065FB4();
      v39 = v52;
      View.accessibilityElement(children:)();
      (*(v42 + 8))(v36, v44);
      v64[6] = v61;
      v64[7] = v62;
      v64[8] = v63;
      v64[2] = v57;
      v64[3] = v58;
      v64[4] = v59;
      v64[5] = v60;
      v64[0] = v55;
      v64[1] = v56;
      sub_10000EA04(v64, &qword_1008DC530);
      static FitnessAccessibilityIdentifier.SummaryView.editSummaryButton.getter();
      *&v55 = v37;
      *(&v55 + 1) = v38;
      swift_getOpaqueTypeConformance2();
      v40 = v43;
      View.accessibilityIdentifier(_:)();

      (*(v54 + 8))(v39, v40);
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1000666E4(uint64_t a1, uint64_t *a2)
{
  v3 = v2;
  v4 = *v2;
  sub_100140278(a2);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v4 + 16))
  {
    v7 = 0;
    v8 = (v4 + 56);
    v9 = 1 << *(v4 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v4 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_15:
      v18 = *(*(v4 + 48) + 8 * (v15 | (v7 << 6)));
      result = NSObject._rawHashValue(seed:)(*(v6 + 40));
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v13 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v13 + 8 * v21);
          if (v25 != -1)
          {
            v14 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v20) & ~*(v13 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v18;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v26 = 1 << *(v4 + 32);
    if (v26 >= 64)
    {
      bzero((v4 + 56), ((v26 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v26;
    }

    *(v4 + 16) = 0;
  }

  *v3 = v6;
  return result;
}

uint64_t sub_100066918(void *a1, uint64_t a2)
{
  v87 = a1;
  v81 = type metadata accessor for Date();
  v3 = *(v81 - 8);
  v4 = __chkstk_darwin(v81);
  v80 = v78 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v82 = v78 - v6;
  v7 = *(a2 + 8);
  if ((v7 & 0xC000000000000001) != 0)
  {

    __CocoaSet.makeIterator()();
    sub_1000059F8(0, &qword_1008F8680);
    sub_10001D4A8(&qword_1008DF208, &qword_1008F8680);
    Set.Iterator.init(_cocoa:)();
    v7 = v89;
    v8 = v90;
    v9 = v91;
    v10 = v92;
    v11 = v93;
  }

  else
  {
    v12 = -1 << *(v7 + 32);
    v8 = v7 + 56;
    v9 = ~v12;
    v13 = -v12;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v11 = v14 & *(v7 + 56);

    v10 = 0;
  }

  v78[1] = v9;
  v84 = (v9 + 64) >> 6;
  v85 = v8;
  v79 = (v3 + 8);
  v86 = v7;
  if ((v7 & 0x8000000000000000) == 0)
  {
    goto LABEL_11;
  }

LABEL_17:
  v22 = __CocoaSet.Iterator.next()();
  if (!v22)
  {
    return sub_100022DEC();
  }

  v88 = v22;
  sub_1000059F8(0, &qword_1008F8680);
  swift_dynamicCast();
  v21 = v94;
  v19 = v10;
  v20 = v11;
  if (!v94)
  {
    return sub_100022DEC();
  }

  while (1)
  {
    v23 = [v21 templateUniqueName];
    if (!v23)
    {
      break;
    }

    v24 = v23;
    v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v27 = v26;

    v28 = *v87;
    if (!*(*v87 + 16))
    {

LABEL_32:
      v55 = [v21 templateUniqueName];
      if (!v55)
      {
        goto LABEL_50;
      }

      v56 = v55;
      v57 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v59 = v58;

      v60 = v87;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v62 = *v60;
      v94 = v62;
      v64 = sub_100066F20(v57, v59);
      v65 = v62[2];
      v66 = (v63 & 1) == 0;
      v67 = v65 + v66;
      if (__OFADD__(v65, v66))
      {
        goto LABEL_46;
      }

      v68 = v63;
      if (v62[3] >= v67)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          v71 = v94;
          if ((v63 & 1) == 0)
          {
            goto LABEL_40;
          }
        }

        else
        {
          sub_100492E80();
          v71 = v94;
          if ((v68 & 1) == 0)
          {
            goto LABEL_40;
          }
        }
      }

      else
      {
        sub_10006748C(v67, isUniquelyReferenced_nonNull_native);
        v69 = sub_100066F20(v57, v59);
        if ((v68 & 1) != (v70 & 1))
        {
          goto LABEL_54;
        }

        v64 = v69;
        v71 = v94;
        if ((v68 & 1) == 0)
        {
LABEL_40:
          v71[(v64 >> 6) + 8] |= 1 << v64;
          v72 = (v71[6] + 16 * v64);
          *v72 = v57;
          v72[1] = v59;
          v73 = (v71[7] + 16 * v64);
          *v73 = v21;
          v73[1] = 1;
          v74 = v71[2];
          v75 = __OFADD__(v74, 1);
          v76 = v74 + 1;
          if (v75)
          {
            goto LABEL_47;
          }

          v71[2] = v76;
          goto LABEL_10;
        }
      }

      v15 = v71[7] + 16 * v64;
      v16 = *v15;
      *v15 = v21;
      *(v15 + 8) = 1;

LABEL_10:
      v7 = v86;
      *v87 = v71;
      v10 = v19;
      v11 = v20;
      v8 = v85;
      if (v7 < 0)
      {
        goto LABEL_17;
      }

      goto LABEL_11;
    }

    v29 = sub_100066F20(v25, v27);
    v31 = v30;

    if ((v31 & 1) == 0)
    {
      goto LABEL_32;
    }

    v32 = *(v28 + 56) + 16 * v29;
    v33 = *(v32 + 8);
    v34 = *v32;
    v35 = [v34 completedDate];
    if (!v35)
    {
      goto LABEL_53;
    }

    v36 = v35;
    v83 = v20;
    v37 = v82;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v38 = [v21 completedDate];
    if (!v38)
    {
      goto LABEL_52;
    }

    v39 = v38;
    v40 = v80;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    LOBYTE(v39) = static Date.> infix(_:_:)();
    v41 = *v79;
    v42 = v40;
    v43 = v81;
    (*v79)(v42, v81);
    v41(v37, v43);
    if (v39)
    {
      v44 = v34;
    }

    else
    {
      v44 = v21;
    }

    v45 = v44;
    v46 = [v21 templateUniqueName];
    if (!v46)
    {
      goto LABEL_51;
    }

    v47 = v46;
    v48 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v50 = v49;

    v51 = v33 + 1;
    if (__OFADD__(v33, 1))
    {
      goto LABEL_48;
    }

    v52 = v45;
    v53 = v87;
    v54 = swift_isUniquelyReferenced_nonNull_native();
    v94 = *v53;
    sub_10048FFE8(v52, v51, v48, v50, v54);

    *v53 = v94;
    v10 = v19;
    v11 = v83;
    v8 = v85;
    v7 = v86;
    if (v86 < 0)
    {
      goto LABEL_17;
    }

LABEL_11:
    v17 = v10;
    v18 = v11;
    v19 = v10;
    if (!v11)
    {
      while (1)
      {
        v19 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
          break;
        }

        if (v19 >= v84)
        {
          return sub_100022DEC();
        }

        v18 = *(v8 + 8 * v19);
        ++v17;
        if (v18)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_46:
      __break(1u);
LABEL_47:
      __break(1u);
LABEL_48:
      __break(1u);
      break;
    }

LABEL_15:
    v20 = (v18 - 1) & v18;
    v21 = *(*(v7 + 48) + ((v19 << 9) | (8 * __clz(__rbit64(v18)))));
    if (!v21)
    {
      return sub_100022DEC();
    }
  }

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
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

unint64_t sub_100066F20(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  v4 = Hasher._finalize()();

  return sub_100067900(a1, a2, v4);
}

void sub_100066F98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v54 = a3;
  v4 = type metadata accessor for UUID();
  v49 = *(v4 - 8);
  v5 = __chkstk_darwin(v4);
  v53 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v55 = &v40 - v7;
  v8 = sub_100140278(&qword_1008EE750);
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v40 - v13;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v16 = *&Strong[OBJC_IVAR____TtC10FitnessApp31ActivityDashboardViewController_dataSource];
    if (v16)
    {
      v42 = OBJC_IVAR____TtC10FitnessApp31ActivityDashboardViewController_dataSource;
      v43 = Strong;
      v17 = v16;
      v46 = v14;
      v18 = v17;
      dispatch thunk of UICollectionViewDiffableDataSource.snapshot()();

      v19 = v46;
      v44 = v9;
      v45 = v8;
      (*(v9 + 32))(v46, v12, v8);
      v41 = a2;
      v20 = sub_100067748(a2);
      v52 = v20[2];
      if (v52)
      {
        v21 = 0;
        v22 = v49;
        v47 = (v49 + 8);
        v50 = (v49 + 32);
        v51 = v49 + 16;
        v23 = &_swiftEmptyArrayStorage;
        v48 = v4;
        while (v21 < v20[2])
        {
          v24 = (*(v22 + 80) + 32) & ~*(v22 + 80);
          v25 = *(v22 + 72);
          v26 = v20;
          v27 = v55;
          (*(v22 + 16))(v55, v20 + v24 + v25 * v21, v4);
          if (sub_100067AF4(v27, v19, v54))
          {
            v28 = *v50;
            (*v50)(v53, v55, v4);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v56 = v23;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_1000679CC(0, v23[2] + 1, 1);
              v19 = v46;
              v23 = v56;
            }

            v31 = v23[2];
            v30 = v23[3];
            if (v31 >= v30 >> 1)
            {
              sub_1000679CC(v30 > 1, v31 + 1, 1);
              v19 = v46;
              v23 = v56;
            }

            v23[2] = v31 + 1;
            v4 = v48;
            v28(v23 + v24 + v31 * v25, v53, v48);
            v22 = v49;
          }

          else
          {
            (*v47)(v55, v4);
          }

          ++v21;
          v20 = v26;
          if (v52 == v21)
          {
            goto LABEL_16;
          }
        }

        __break(1u);

        (*v47)(v55, v4);

        __break(1u);
      }

      else
      {
        v23 = &_swiftEmptyArrayStorage;
LABEL_16:

        swift_beginAccess();
        v32 = v45;
        v33 = v19;
        NSDiffableDataSourceSnapshot.reconfigureItems(_:)(v23);
        swift_endAccess();

        v34 = v43;
        v35 = *&v43[v42];
        if (v35)
        {
          v36 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v37 = swift_allocObject();
          v38 = v41;
          *(v37 + 16) = v36;
          *(v37 + 24) = v38;
          v39 = v35;

          dispatch thunk of UICollectionViewDiffableDataSource.apply(_:animatingDifferences:completion:)();
        }

        else
        {
        }

        (*(v44 + 8))(v33, v32);
      }
    }

    else
    {
    }
  }
}

uint64_t sub_10006748C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_100140278(&qword_1008EEE00);
  v38 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v37 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = 16 * (v19 | (v8 << 6));
      v23 = (*(v5 + 48) + v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = *(v5 + 56) + v22;
      v27 = *v26;
      v39 = *(v26 + 8);
      if ((v38 & 1) == 0)
      {

        v28 = v27;
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v29 = -1 << *(v7 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v14 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v14 + 8 * v31);
          if (v35 != -1)
          {
            v15 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v30) & ~*(v14 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 16 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v24;
      v17[1] = v25;
      v18 = (*(v7 + 56) + v16);
      *v18 = v27;
      v18[1] = v39;
      ++*(v7 + 16);
      v5 = v37;
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v2;
    if (v36 >= 64)
    {
      bzero(v9, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v36;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

unint64_t *sub_100067748(uint64_t a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  v7 = &_swiftEmptyArrayStorage;
  if (v6)
  {
    v17 = &_swiftEmptyArrayStorage;
    sub_1000679CC(0, v6, 0);
    v7 = v17;
    v8 = a1 + 32;
    do
    {
      sub_100007C5C(v8, v14);
      v9 = v15;
      v10 = v16;
      sub_1000066AC(v14, v15);
      (*(v10 + 8))(v9, v10);
      sub_100005A40(v14);
      v17 = v7;
      v12 = v7[2];
      v11 = v7[3];
      if (v12 >= v11 >> 1)
      {
        sub_1000679CC(v11 > 1, v12 + 1, 1);
        v7 = v17;
      }

      v7[2] = v12 + 1;
      (*(v3 + 32))(v7 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v12, v5, v2);
      v8 += 40;
      --v6;
    }

    while (v6);
  }

  return v7;
}

unint64_t sub_100067900(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

size_t sub_1000679CC(size_t a1, int64_t a2, char a3)
{
  result = sub_10001C794(a1, a2, a3, *v3, &qword_1008DE3E8, &unk_1006E33C0, &type metadata accessor for UUID);
  *v3 = result;
  return result;
}

uint64_t sub_100067A10@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for UUID();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_100067A78@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC10FitnessApp16HistoryItemsCard_uuid;
  v5 = type metadata accessor for UUID();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

BOOL sub_100067AF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v36 = a3;
  v5 = type metadata accessor for UUID();
  v39 = *(v5 - 8);
  v40 = v5;
  __chkstk_darwin(v5);
  v37 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100140278(&qword_1008EE750);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v32 - v9;
  swift_beginAccess();
  v35 = *(v8 + 16);
  v35(v10, a2, v7);
  v11 = NSDiffableDataSourceSnapshot.itemIdentifiers.getter();
  v12 = *(v8 + 8);
  v12(v10, v7);
  v13 = sub_100067F1C(a1, v11);

  v38 = v13;
  if (!v13)
  {
    v14 = static os_log_type_t.default.getter();
    v15 = HKLogActivity;
    (*(v39 + 16))(v37, a1, v40);
    if (os_log_type_enabled(v15, v14))
    {
      v34 = v15;
      v16 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v41 = v33;
      *v16 = 136315650;
      v17 = _typeName(_:qualified:)();
      LODWORD(v36) = v14;
      v19 = sub_10000AFDC(v17, v18, &v41);

      *(v16 + 4) = v19;
      *(v16 + 12) = 2080;
      swift_beginAccess();
      v35(v10, a2, v7);
      NSDiffableDataSourceSnapshot.itemIdentifiers.getter();
      v12(v10, v7);
      v20 = v40;
      v21 = Array.description.getter();
      v23 = v22;

      v24 = sub_10000AFDC(v21, v23, &v41);

      *(v16 + 14) = v24;
      *(v16 + 22) = 2080;
      sub_100026E98(&qword_1008EE840, &type metadata accessor for UUID);
      v25 = v37;
      v26 = dispatch thunk of CustomStringConvertible.description.getter();
      v28 = v27;
      (*(v39 + 8))(v25, v20);
      v29 = sub_10000AFDC(v26, v28, &v41);

      *(v16 + 24) = v29;
      v30 = v34;
      _os_log_impl(&_mh_execute_header, v34, v36, "%s Not updating card content as the snapshot item identifiers\ndon't contain the uuid for the card we are trying to update.\nsnapshot: %s\n uuid: %s", v16, 0x20u);
      swift_arrayDestroy();
    }

    else
    {
      (*(v39 + 8))(v37, v40);
    }
  }

  return v38;
}

BOOL sub_100067F64(uint64_t a1, uint64_t a2, void (*a3)(void), unint64_t *a4, void (*a5)(uint64_t))
{
  v8 = 0;
  v9 = *(a2 + 16);
  do
  {
    v10 = v8;
    if (v9 == v8)
    {
      break;
    }

    a3(0);
    ++v8;
    sub_10006806C(a4, a5);
  }

  while ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0);
  return v9 != v10;
}

uint64_t sub_10006806C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000680B4(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_1000680FC(void **a1)
{
  v1 = *a1;
  sub_100140278(&qword_1008E4F10);
  NSKeyValueObservedChange.oldValue.getter();
  result = NSKeyValueObservedChange.newValue.getter();
  if (v7)
  {
    if (v10)
    {
      return result;
    }

    goto LABEL_9;
  }

  if ((v10 & 1) != 0 || (v5 == v8 ? (v3 = v6 == v9) : (v3 = 0), !v3))
  {
LABEL_9:
    swift_beginAccess();
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v4 = result;

      sub_10006A1BC(v1);
    }
  }

  return result;
}

size_t sub_1000681F4(size_t a1, int64_t a2, char a3)
{
  result = sub_100058600(a1, a2, a3, *v3, &qword_1008DE588, &unk_1006D7D08, &qword_1008DE590);
  *v3 = result;
  return result;
}

void sub_10006825C()
{
  v1 = sub_100140278(&qword_1008E1760);
  __chkstk_darwin(v1 - 8);
  v3 = &v22 - v2;
  v4 = OBJC_IVAR____TtC10FitnessApp21TrendsSplashVideoView_player;
  if (!*&v0[OBJC_IVAR____TtC10FitnessApp21TrendsSplashVideoView_player])
  {
    v5 = OBJC_IVAR____TtC10FitnessApp21TrendsSplashVideoView_playerLayer;
    if (!*&v0[OBJC_IVAR____TtC10FitnessApp21TrendsSplashVideoView_playerLayer])
    {
      v6 = v0;
      URL._bridgeToObjectiveC()(OBJC_IVAR____TtC10FitnessApp21TrendsSplashVideoView_url);
      v8 = v7;
      v9 = [objc_opt_self() assetWithURL:v7];

      v10 = [objc_allocWithZone(AVPlayerItem) initWithAsset:v9];
      v11 = [objc_allocWithZone(AVQueuePlayer) init];
      [v11 _setParticipatesInAudioSession:0];
      [v11 setPreventsDisplaySleepDuringVideoPlayback:0];
      [v11 setAllowsExternalPlayback:0];
      [v11 insertItem:v10 afterItem:0];
      v12 = type metadata accessor for TaskPriority();
      (*(*(v12 - 8) + 56))(v3, 1, 1, v12);
      type metadata accessor for MainActor();
      v13 = v11;
      v14 = static MainActor.shared.getter();
      v15 = swift_allocObject();
      v15[2] = v14;
      v15[3] = &protocol witness table for MainActor;
      v15[4] = v13;
      sub_100653FFC(0, 0, v3, &unk_1006DACB8, v15);

      v16 = [objc_opt_self() playerLayerWithPlayer:v13];

      v17 = *&v6[v4];
      *&v6[v4] = v13;
      v18 = v13;

      v19 = *&v6[v5];
      *&v6[v5] = v16;
      v20 = v16;

      v21 = [v6 layer];
      [v21 addSublayer:v20];
    }
  }
}

uint64_t sub_100068524()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100068564(void *a1)
{
  v2 = a1[3];
  v3 = a1[4];
  sub_1000066AC(a1, v2);
  if (((*(v3 + 24))(v2, v3) & 1) == 0)
  {
    return 0;
  }

  v4 = a1[3];
  v5 = a1[4];
  sub_1000066AC(a1, v4);
  v6 = (*(v5 + 16))(v4, v5);
  if (v8 != 3)
  {
    goto LABEL_15;
  }

  v9 = 0x4062C00000000000;
  if (v6 <= 2)
  {
    if (!(v6 | v7))
    {
      return v9;
    }

    if (!(v6 ^ 1 | v7))
    {
      return 0x4059000000000000;
    }

    if (!(v6 ^ 2 | v7))
    {
      return 0x4069000000000000;
    }

LABEL_15:
    sub_10001D4F8(v6, v7, v8);
    return 0;
  }

  if (v6 > 6)
  {
    if (!(v6 ^ 7 | v7))
    {
      return 0x4049000000000000;
    }

    if (v6 ^ 8 | v7)
    {
      goto LABEL_15;
    }

    return 0x4059000000000000;
  }

  if (v6 ^ 3 | v7)
  {
    if (v6 ^ 4 | v7)
    {
      goto LABEL_15;
    }

    return 0x4069000000000000;
  }

  return v9;
}

uint64_t sub_1000686B4(uint64_t a1)
{
  v2 = sub_100140278(&qword_1008E1760);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_10006871C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);

  swift_unknownObjectRetain();
  v6 = v5(a2, a3);

  swift_unknownObjectRelease();

  return v6;
}

id sub_100068798(uint64_t a1, void *a2)
{
  v2 = 0;
  if (a1 > 1)
  {
    if (a1 == 2)
    {
      v35 = objc_opt_self();
      v36 = [v35 fractionalWidthDimension:1.0];
      v37 = [v35 estimatedDimension:100.0];
      v13 = [objc_opt_self() sizeWithWidthDimension:v36 heightDimension:v37];

      v38 = objc_opt_self();
      sub_100140278(&unk_1008E4E20);
      v39 = swift_allocObject();
      *(v39 + 16) = xmmword_1006D4E70;
      *(v39 + 32) = [objc_opt_self() itemWithLayoutSize:v13];
      sub_1000059F8(0, &unk_1008E7F70);
      isa = Array._bridgeToObjectiveC()().super.isa;

      v17 = [v38 horizontalGroupWithLayoutSize:v13 subitems:isa];

      v25 = [objc_opt_self() sectionWithGroup:v17];
      v2 = v25;
      v26 = 10.0;
      v27 = 20.0;
      v28 = 0.0;
    }

    else
    {
      if (a1 != 3)
      {
        return v2;
      }

      v19 = objc_opt_self();
      v20 = [v19 fractionalWidthDimension:1.0];
      v21 = [v19 estimatedDimension:100.0];
      v13 = [objc_opt_self() sizeWithWidthDimension:v20 heightDimension:v21];

      v22 = objc_opt_self();
      sub_100140278(&unk_1008E4E20);
      v23 = swift_allocObject();
      *(v23 + 16) = xmmword_1006D4E70;
      *(v23 + 32) = [objc_opt_self() itemWithLayoutSize:v13];
      sub_1000059F8(0, &unk_1008E7F70);
      v24 = Array._bridgeToObjectiveC()().super.isa;

      v17 = [v22 horizontalGroupWithLayoutSize:v13 subitems:v24];

      v25 = [objc_opt_self() sectionWithGroup:v17];
      v2 = v25;
      v26 = 10.0;
      v27 = 20.0;
      v28 = 30.0;
    }

    [v25 setContentInsets:{v26, v27, v28, 20.0}];
    goto LABEL_11;
  }

  if (!a1)
  {
    v29 = objc_opt_self();
    v30 = [v29 fractionalWidthDimension:1.0];
    v31 = [v29 estimatedDimension:100.0];
    v13 = [objc_opt_self() sizeWithWidthDimension:v30 heightDimension:v31];

    v32 = objc_opt_self();
    sub_100140278(&unk_1008E4E20);
    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_1006D4E70;
    *(v33 + 32) = [objc_opt_self() itemWithLayoutSize:v13];
    sub_1000059F8(0, &unk_1008E7F70);
    v34 = Array._bridgeToObjectiveC()().super.isa;

    v17 = [v32 horizontalGroupWithLayoutSize:v13 subitems:v34];

    v2 = [objc_opt_self() sectionWithGroup:v17];
    [v2 setContentInsets:{0.0, 12.0, 0.0, 12.0}];
    goto LABEL_11;
  }

  if (a1 == 1)
  {
    v4 = objc_opt_self();
    v5 = [v4 estimatedDimension:100.0];
    v6 = [v4 estimatedDimension:100.0];
    v7 = objc_opt_self();
    v8 = [v7 sizeWithWidthDimension:v5 heightDimension:v6];

    [objc_msgSend(a2 "container")];
    v10 = v9;
    swift_unknownObjectRelease();
    v11 = [v4 absoluteDimension:v10];
    v12 = [v8 heightDimension];
    v13 = [v7 sizeWithWidthDimension:v11 heightDimension:v12];

    v14 = objc_opt_self();
    sub_100140278(&unk_1008E4E20);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_1006D4E70;
    *(v15 + 32) = [objc_opt_self() itemWithLayoutSize:v8];
    sub_1000059F8(0, &unk_1008E7F70);
    v16 = Array._bridgeToObjectiveC()().super.isa;

    v17 = [v14 horizontalGroupWithLayoutSize:v13 subitems:v16];

    v18 = [objc_opt_self() fixedSpacing:10.0];
    [v17 setInterItemSpacing:v18];

    v2 = [objc_opt_self() sectionWithGroup:v17];
    [v2 setContentInsets:{10.0, 20.0, 10.0, 20.0}];
    [v2 setInterGroupSpacing:10.0];

LABEL_11:
  }

  return v2;
}

__n128 sub_100068F20(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_100068F44@<X0>(uint64_t a1@<X8>)
{
  *a1 = static HorizontalAlignment.leading.getter();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v3 = sub_100140278(&qword_1008E6CD8);
  return sub_100068FA8(v1, a1 + *(v3 + 44));
}

uint64_t sub_100068FA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v40 = a1;
  v49 = sub_100140278(&qword_1008E62D8);
  v48 = *(v49 - 8);
  v4 = __chkstk_darwin(v49);
  v47 = &v38[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v4);
  v50 = &v38[-v6];
  v7 = *(a1 + 80);
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v46 = v54;
  v45 = v55;
  v44 = v56;
  v43 = v57;
  v42 = v58;
  v41 = v59;
  LocalizedStringKey.init(stringLiteral:)();
  v8 = Text.init(_:tableName:bundle:comment:)();
  v10 = v9;
  v12 = v11;
  v13 = [objc_opt_self() labelColor];
  *&v52[0] = Color.init(uiColor:)();
  v14 = Text.foregroundStyle<A>(_:)();
  v16 = v15;
  v18 = v17;
  sub_10004642C(v8, v10, v12 & 1);

  static Font.body.getter();
  v19 = Text.font(_:)();
  v21 = v20;
  v39 = v22;
  v24 = v23;

  sub_10004642C(v14, v16, v18 & 1);

  v25 = v40;
  sub_10006946C(v40, v52);
  v26 = swift_allocObject();
  v27 = v52[3];
  *(v26 + 48) = v52[2];
  *(v26 + 64) = v27;
  *(v26 + 80) = v52[4];
  *(v26 + 96) = v53;
  v28 = v52[1];
  *(v26 + 16) = v52[0];
  *(v26 + 32) = v28;
  v51 = v25;
  v29 = v50;
  Button.init(action:label:)();
  v30 = v48;
  v31 = *(v48 + 16);
  v32 = v47;
  v33 = v49;
  v31(v47, v29, v49);
  *a2 = v7;
  *(a2 + 8) = v46;
  *(a2 + 16) = v45;
  *(a2 + 24) = v44;
  *(a2 + 32) = v43;
  v34 = v41;
  *(a2 + 40) = v42;
  *(a2 + 48) = v34;
  *(a2 + 56) = v19;
  *(a2 + 64) = v21;
  LOBYTE(v29) = v39 & 1;
  *(a2 + 72) = v39 & 1;
  *(a2 + 80) = v24;
  v35 = sub_100140278(&qword_1008E6CE0);
  v31((a2 + *(v35 + 64)), v32, v33);
  sub_10006965C(v19, v21, v29);
  v36 = *(v30 + 8);

  v36(v50, v33);
  v36(v32, v33);
  sub_10004642C(v19, v21, v29);
}

uint64_t sub_100069424()
{
  if (*(v0 + 40))
  {
    sub_100005A40(v0 + 16);
  }

  sub_100005A40(v0 + 56);

  return _swift_deallocObject(v0, 104, 7);
}

void sub_1000694A4(uint64_t a1@<X8>)
{
  LocalizedStringKey.init(stringLiteral:)();
  LOWORD(v22) = 256;
  v2 = Text.init(_:tableName:bundle:comment:)();
  v4 = v3;
  v6 = v5;
  v7 = [objc_opt_self() keyColors];
  if (!v7)
  {
    static Color.white.getter();
    goto LABEL_5;
  }

  v8 = v7;
  v9 = [v7 nonGradientTextColor];

  if (v9)
  {
    Color.init(uiColor:)();
LABEL_5:
    v10 = Text.foregroundStyle<A>(_:)();
    v12 = v11;
    v14 = v13;
    sub_10004642C(v2, v4, v6 & 1);

    static Font.body.getter();
    v15 = Text.font(_:)();
    v17 = v16;
    v19 = v18;
    v21 = v20;

    sub_10004642C(v10, v12, v14 & 1);

    *a1 = v15;
    *(a1 + 8) = v17;
    *(a1 + 16) = v19 & 1;
    *(a1 + 24) = v21;
    return;
  }

  __break(1u);
}

uint64_t sub_10006965C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

id sub_100069670(double a1)
{
  v2 = [objc_allocWithZone(UIView) init];
  v3 = objc_allocWithZone(type metadata accessor for TrendsSplashVideoView());
  v4 = sub_1000698DC();
  if (!v4)
  {
    return v2;
  }

  v5 = v4;
  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
  v6 = [v5 window];
  if (v6)
  {

    v7 = *&v5[OBJC_IVAR____TtC10FitnessApp21TrendsSplashVideoView_player];
    if (v7)
    {
      v8 = &selRef_play;
LABEL_7:
      [v7 *v8];
    }
  }

  else
  {
    v7 = *&v5[OBJC_IVAR____TtC10FitnessApp21TrendsSplashVideoView_player];
    if (v7)
    {
      v8 = &selRef_pause;
      goto LABEL_7;
    }
  }

  v9 = a1 + -15.0 + -15.0;
  if (qword_1008DAC88 != -1)
  {
    swift_once();
  }

  UIRoundToScale();
  [v5 setFrame:{(v9 + -160.0) * 0.5, 0.0, 160.0, v10}];

  [v2 addSubview:v5];
  return v2;
}

uint64_t type metadata accessor for TrendsSplashVideoView()
{
  result = qword_1008DF9C0;
  if (!qword_1008DF9C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100069840()
{
  result = type metadata accessor for URL();
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

id sub_1000698DC()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = OBJC_IVAR____TtC10FitnessApp21TrendsSplashVideoView_player;
  *&v0[OBJC_IVAR____TtC10FitnessApp21TrendsSplashVideoView_player] = 0;
  v6 = OBJC_IVAR____TtC10FitnessApp21TrendsSplashVideoView_playerLayer;
  *&v0[OBJC_IVAR____TtC10FitnessApp21TrendsSplashVideoView_playerLayer] = 0;
  v7 = [objc_opt_self() mainBundle];
  v8 = String._bridgeToObjectiveC()();
  v9 = String._bridgeToObjectiveC()();
  v10 = [v7 pathForResource:v8 ofType:v9];

  if (v10)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    URL.init(fileURLWithPath:)();

    (*(v2 + 32))(&v0[OBJC_IVAR____TtC10FitnessApp21TrendsSplashVideoView_url], v4, v1);
    v11 = type metadata accessor for TrendsSplashVideoView();
    v15.receiver = v0;
    v15.super_class = v11;
    v12 = objc_msgSendSuper2(&v15, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
    [v12 configurePlayer];
    v13 = [objc_opt_self() clearColor];
    [v12 setBackgroundColor:v13];
  }

  else
  {

    type metadata accessor for TrendsSplashVideoView();
    swift_deallocPartialClassInstance();
    return 0;
  }

  return v12;
}

void sub_100069B88(uint64_t a1)
{
  v2 = objc_opt_self();
  sub_10004766C(a1, v8);
  v3 = swift_allocObject();
  v4 = v8[1];
  *(v3 + 16) = v8[0];
  *(v3 + 32) = v4;
  *(v3 + 48) = v8[2];
  *(v3 + 64) = v9;
  aBlock[4] = sub_10052713C;
  aBlock[5] = v3;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1001CA96C;
  aBlock[3] = &unk_10085EDA8;
  v5 = _Block_copy(aBlock);

  v6 = [v2 scheduledTimerWithTimeInterval:0 repeats:v5 block:2.0];
  _Block_release(v5);
}

unint64_t sub_100069CA8()
{
  result = qword_1008E2970;
  if (!qword_1008E2970)
  {
    sub_100141EEC(&qword_1008E2978);
    sub_10014A6B0(&qword_1008E2980, &qword_1008E2988);
    sub_1002336B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E2970);
  }

  return result;
}

uint64_t sub_100069D98(unsigned __int8 a1)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v25 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v23 = *(v5 - 8);
  v24 = v5;
  __chkstk_darwin(v5);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = static os_log_type_t.default.getter();
  v9 = HKLogActivity;
  if (os_log_type_enabled(HKLogActivity, v8))
  {
    v22 = v9;
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    aBlock[0] = v11;
    *v10 = 136315138;
    v12 = sub_10006E1B0(a1);
    v14 = a1;
    v15 = sub_10000AFDC(v12, v13, aBlock);

    *(v10 + 4) = v15;
    a1 = v14;
    v16 = v22;
    _os_log_impl(&_mh_execute_header, v22, v8, "[SummaryCoordinator] Processing event %s", v10, 0xCu);
    sub_100005A40(v11);
  }

  v17 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v18 = swift_allocObject();
  *(v18 + 16) = v17;
  *(v18 + 24) = a1;
  aBlock[4] = sub_10006FAD4;
  aBlock[5] = v18;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000449A8;
  aBlock[3] = &unk_100857110;
  v19 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v26 = _swiftEmptyArrayStorage;
  sub_100026988(&qword_1008E33B0, 255, &type metadata accessor for DispatchWorkItemFlags);
  sub_100140278(&unk_1008E7F50);
  sub_10014A6B0(&qword_1008E33C0, &unk_1008E7F50);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v19);
  (*(v25 + 8))(v4, v2);
  (*(v23 + 8))(v7, v24);
}

uint64_t sub_10006A184()
{

  return _swift_deallocObject(v0, 25, 7);
}

uint64_t sub_10006A1BC(void *a1)
{
  v43 = a1;
  v2 = sub_100140278(&qword_1008E9A30);
  __chkstk_darwin(v2 - 8);
  v4 = &v41 - v3;
  v42 = sub_100140278(&qword_1008F00E0);
  __chkstk_darwin(v42);
  v6 = &v41 - v5;
  swift_beginAccess();
  v7 = *(v1 + 40);
  v10 = *(v7 + 64);
  v9 = v7 + 64;
  v8 = v10;
  v11 = 1 << *(*(v1 + 40) + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & v8;
  v14 = (v11 + 63) >> 6;
  v48 = *(v1 + 40);
  result = swift_bridgeObjectRetain_n();
  v16 = 0;
  v44 = v1;
  v41 = v4;
  v50 = v6;
  if (v13)
  {
LABEL_8:
    while (1)
    {
      v18 = __clz(__rbit64(v13)) | (v16 << 6);
      v19 = v48;
      v20 = *(v48 + 48);
      v21 = type metadata accessor for IndexPath();
      v47 = *(v21 - 8);
      v46 = *(v47 + 72);
      (*(v47 + 16))(v6, v20 + v46 * v18, v21);
      v22 = *(v19 + 56);
      v23 = type metadata accessor for ImpressionMetrics();
      v24 = *(v23 - 8);
      v45 = *(v24 + 72);
      v25 = v22 + v45 * v18;
      v6 = v50;
      v26 = *(v24 + 16);
      v49 = *(v42 + 48);
      v26(&v50[v49], v25, v23);
      v27 = IndexPath.section.getter();
      v28 = v43;
      if (v27 >= [v43 numberOfSections])
      {
        break;
      }

      v29 = IndexPath.item.getter();
      v30 = v29 < [v28 numberOfItemsInSection:IndexPath.section.getter()];
      v6 = v50;
      if (!v30)
      {
        break;
      }

      isa = IndexPath._bridgeToObjectiveC()().super.isa;
      v32 = [v28 layoutAttributesForItemAtIndexPath:isa];

      if (v32)
      {
        [v32 frame];
        sub_1004D8F08();
        ImpressionsCalculator.addElement(_:at:)();

LABEL_19:
      }

      v13 &= v13 - 1;
      result = sub_10000EA04(v6, &qword_1008F00E0);
      if (!v13)
      {
        goto LABEL_4;
      }
    }

    v33 = v44;
    swift_beginAccess();
    v34 = sub_1004C5CD4(v6);
    if (v35)
    {
      v36 = v34;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v38 = *(v33 + 40);
      v51 = v38;
      *(v33 + 40) = 0x8000000000000000;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_1004932C0();
        v38 = v51;
      }

      (*(v47 + 8))(*(v38 + 48) + v36 * v46, v21);
      v39 = v41;
      (*(v24 + 32))(v41, *(v38 + 56) + v36 * v45, v23);
      sub_10056D82C(v36, v38);
      v40 = 0;
      *(v33 + 40) = v38;
    }

    else
    {
      v40 = 1;
      v39 = v41;
    }

    (*(v24 + 56))(v39, v40, 1, v23);
    sub_10000EA04(v39, &qword_1008E9A30);
    swift_endAccess();
    sub_1004D8F08();
    v6 = v50;
    ImpressionsCalculator.removeElement(_:)();
    goto LABEL_19;
  }

LABEL_4:
  while (1)
  {
    v17 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v17 >= v14)
    {
    }

    v13 = *(v9 + 8 * v17);
    ++v16;
    if (v13)
    {
      v16 = v17;
      goto LABEL_8;
    }
  }

  __break(1u);
  return result;
}

void sub_10006A6A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v87 = a2;
  v88 = a3;
  v3 = sub_100140278(&unk_1008EE810);
  v84 = *(v3 - 8);
  v85 = *(v84 + 64);
  __chkstk_darwin(v3 - 8);
  v86 = &v78 - v4;
  v81 = type metadata accessor for FitnessPlusSampleContentTip();
  __chkstk_darwin(v81);
  v80 = &v78 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  TrackingTip = type metadata accessor for TrainingLoadTrackingTip();
  __chkstk_darwin(TrackingTip);
  v82 = &v78 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for CustomizeSummaryTip();
  __chkstk_darwin(v7);
  v9 = &v78 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = sub_100140278(&qword_1008EE750);
  v89 = *(v91 - 8);
  __chkstk_darwin(v91);
  *&v90 = &v78 - v10;
  v11 = static os_log_type_t.default.getter();
  v12 = HKLogActivity;
  if (os_log_type_enabled(HKLogActivity, v11))
  {
    v13 = v12;
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v94 = v15;
    *v14 = 136315138;
    v16 = _typeName(_:qualified:)();
    v18 = sub_10000AFDC(v16, v17, &v94);

    *(v14 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v13, v11, "%s calling didUpdateCards.", v14, 0xCu);
    sub_100005A40(v15);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v20 = Strong;
    v21 = OBJC_IVAR____TtC10FitnessApp31ActivityDashboardViewController_summaryCoordinator;
    if (*(*(*&Strong[OBJC_IVAR____TtC10FitnessApp31ActivityDashboardViewController_summaryCoordinator] + OBJC_IVAR____TtC10FitnessApp18SummaryCoordinator_clientActiveCards) + 16))
    {
      v22 = type metadata accessor for UUID();
      sub_100026E98(&qword_1008E4E10, &type metadata accessor for UUID);
      v79 = v22;
      NSDiffableDataSourceSnapshot.init()();
      v23 = v91;
      NSDiffableDataSourceSnapshot.appendSections(_:)(&off_100845DA0);
      TipGroup.currentTip.getter();
      if (!v93)
      {
        sub_10000EA04(&v92, &qword_1008EE820);
        v37 = v90;
LABEL_23:
        NSDiffableDataSourceSnapshot.appendSections(_:)(&off_100845DC8);

        sub_100067748(v57);

        v94 = 1;
        v95 = 0;
        NSDiffableDataSourceSnapshot.appendItems(_:toSection:)();

        NSDiffableDataSourceSnapshot.appendSections(_:)(&off_100845DF0);
        NSDiffableDataSourceSnapshot.appendSections(_:)(&off_100845E18);
        if ((*(*&v20[v21] + OBJC_IVAR____TtC10FitnessApp18SummaryCoordinator_editMode) & 1) == 0)
        {
          sub_100140278(&qword_1008DE3E8);
          v58 = v37;
          v59 = v79;
          v60 = *(v79 - 8);
          v61 = (*(v60 + 80) + 32) & ~*(v60 + 80);
          v62 = swift_allocObject();
          v90 = xmmword_1006D46C0;
          *(v62 + 16) = xmmword_1006D46C0;
          v63 = *(v60 + 16);
          v63(v62 + v61, &v20[OBJC_IVAR____TtC10FitnessApp31ActivityDashboardViewController_editButtonIdentifier], v59);
          v94 = 2;
          v95 = 0;
          NSDiffableDataSourceSnapshot.appendItems(_:toSection:)();

          v64 = swift_allocObject();
          *(v64 + 16) = v90;
          v65 = v59;
          v37 = v58;
          v63(v64 + v61, &v20[OBJC_IVAR____TtC10FitnessApp31ActivityDashboardViewController_entryLinksButtonIdentifier], v65);
          v23 = v91;
          v94 = 3;
          v95 = 0;
          NSDiffableDataSourceSnapshot.appendItems(_:toSection:)();
        }

        v66 = *&v20[OBJC_IVAR____TtC10FitnessApp31ActivityDashboardViewController_dataSource];
        if (v66)
        {
          v67 = v86;
          sub_10001B104(v87, v86, &unk_1008EE810);
          v68 = (*(v84 + 80) + 16) & ~*(v84 + 80);
          v69 = (v85 + v68 + 7) & 0xFFFFFFFFFFFFFFF8;
          v70 = swift_allocObject();
          sub_100015E80(v67, v70 + v68, &unk_1008EE810);
          *(v70 + v69) = v88;

          v71 = v66;
          dispatch thunk of UICollectionViewDiffableDataSource.apply(_:animatingDifferences:completion:)();
        }

        else
        {
        }

        (*(v89 + 8))(v37, v23);
        return;
      }

      sub_100006260(&v92, &v94);
      sub_1000066AC(&v94, v96);
      v24 = dispatch thunk of Tip.id.getter();
      v26 = v25;
      v27 = OBJC_IVAR____TtC10FitnessApp31ActivityDashboardViewController_customizeSummaryTip;
      sub_100026E98(&unk_1008EE7F0, type metadata accessor for CustomizeSummaryTip);
      if (v24 == Tip.id.getter() && v26 == v28)
      {

LABEL_14:
        sub_100140278(&qword_1008DE3E8);
        v39 = v79;
        v40 = *(v79 - 8);
        v41 = (*(v40 + 80) + 32) & ~*(v40 + 80);
        v42 = swift_allocObject();
        *(v42 + 16) = xmmword_1006D46C0;
        sub_100479054(&v20[v27], v9, type metadata accessor for CustomizeSummaryTip);
        (*(v40 + 32))(v42 + v41, v9, v39);
        *&v92 = 0;
        BYTE8(v92) = 0;
        v37 = v90;
LABEL_21:
        NSDiffableDataSourceSnapshot.appendItems(_:toSection:)();

LABEL_22:
        sub_100005A40(&v94);
        goto LABEL_23;
      }

      v38 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v38)
      {
        goto LABEL_14;
      }

      sub_1000066AC(&v94, v96);
      v43 = dispatch thunk of Tip.id.getter();
      v45 = v44;
      v46 = OBJC_IVAR____TtC10FitnessApp31ActivityDashboardViewController_trainingLoadTip;
      sub_100026E98(&qword_1008EE7E8, type metadata accessor for TrainingLoadTrackingTip);
      if (v43 == Tip.id.getter() && v45 == v47)
      {

        v37 = v90;
      }

      else
      {
        v48 = _stringCompareWithSmolCheck(_:_:expecting:)();

        v37 = v90;
        if ((v48 & 1) == 0)
        {
          sub_1000066AC(&v94, v96);
          v72 = dispatch thunk of Tip.id.getter();
          v74 = v73;
          v75 = OBJC_IVAR____TtC10FitnessApp31ActivityDashboardViewController_sampleContentTip;
          sub_100026E98(&qword_1008EBCF0, type metadata accessor for FitnessPlusSampleContentTip);
          if (v72 == Tip.id.getter() && v74 == v76)
          {
          }

          else
          {
            v77 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if ((v77 & 1) == 0)
            {
              goto LABEL_22;
            }
          }

          sub_100140278(&qword_1008DE3E8);
          v49 = v79;
          v50 = *(v79 - 8);
          v51 = (*(v50 + 80) + 32) & ~*(v50 + 80);
          v52 = swift_allocObject();
          *(v52 + 16) = xmmword_1006D46C0;
          v53 = type metadata accessor for FitnessPlusSampleContentTip;
          v54 = &v20[v75];
          v55 = &v97;
          goto LABEL_20;
        }
      }

      sub_100140278(&qword_1008DE3E8);
      v49 = v79;
      v50 = *(v79 - 8);
      v51 = (*(v50 + 80) + 32) & ~*(v50 + 80);
      v52 = swift_allocObject();
      *(v52 + 16) = xmmword_1006D46C0;
      v53 = type metadata accessor for TrainingLoadTrackingTip;
      v54 = &v20[v46];
      v55 = &v98;
LABEL_20:
      v56 = *(v55 - 32);
      sub_100479054(v54, v56, v53);
      (*(v50 + 32))(v52 + v51, v56, v49);
      *&v92 = 0;
      BYTE8(v92) = 0;
      goto LABEL_21;
    }
  }

  v29 = static os_log_type_t.default.getter();
  v30 = HKLogActivity;
  if (os_log_type_enabled(HKLogActivity, v29))
  {
    v31 = v30;
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v94 = v33;
    *v32 = 136315138;
    v34 = _typeName(_:qualified:)();
    v36 = sub_10000AFDC(v34, v35, &v94);

    *(v32 + 4) = v36;
    _os_log_impl(&_mh_execute_header, v31, v29, "%s clientActiveCards is empty, not updating datasource.", v32, 0xCu);
    sub_100005A40(v33);
  }
}

uint64_t sub_10006B394()
{
  v1 = *(sub_100140278(&unk_1008EE810) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = type metadata accessor for OSSignposter();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v0 + v3, 1, v5))
  {
    (*(v6 + 8))(v0 + v3, v5);
  }

  return _swift_deallocObject(v0, ((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_10006B4C0(uint64_t a1, uint64_t a2)
{
  v23 = a2;
  ObjectType = swift_getObjectType();
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v26 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &ObjectType - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v24 = *(v6 - 8);
  v25 = v6;
  __chkstk_darwin(v6);
  v8 = &ObjectType - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100140278(&unk_1008EE810);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9 - 8);
  v13 = &ObjectType - v12;
  sub_1000059F8(0, &qword_1008E3FD0);
  v22 = static OS_dispatch_queue.main.getter();
  v14 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_10001B104(a1, v13, &unk_1008EE810);
  v15 = (*(v10 + 80) + 24) & ~*(v10 + 80);
  v16 = (v11 + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = swift_allocObject();
  *(v17 + 16) = v14;
  sub_100015E80(v13, v17 + v15, &unk_1008EE810);
  *(v17 + v16) = v23;
  *(v17 + ((v16 + 15) & 0xFFFFFFFFFFFFFFF8)) = ObjectType;
  aBlock[4] = sub_10007E9D0;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000449A8;
  aBlock[3] = &unk_10085BDE8;
  v18 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100026E98(&qword_1008E33B0, &type metadata accessor for DispatchWorkItemFlags);
  sub_100140278(&unk_1008E7F50);
  sub_10014A6B0(&qword_1008E33C0, &unk_1008E7F50);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v19 = v22;
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v18);

  (*(v26 + 8))(v5, v3);
  return (*(v24 + 8))(v8, v25);
}

uint64_t sub_10006B8D4()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10006B930(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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
    *(a1 + *(a4 + 44)) = a2;
  }

  return result;
}

uint64_t sub_10006B9E8(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_10006BA14(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_100140278(&qword_1008DC6A8);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  result = type metadata accessor for AwardsCard();
  v14 = *(result - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + a4[5];
    goto LABEL_5;
  }

  if (a3 == 2147483646)
  {
    *(a1 + a4[7] + 24) = a2;
  }

  else
  {
    v15 = sub_100140278(&qword_1008DC6B0);
    v16 = *(*(v15 - 8) + 56);
    v17 = a1 + a4[9];

    return v16(v17, a2, a2, v15);
  }

  return result;
}

uint64_t sub_10006BBB8(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_100140278(&qword_1008DC6A8);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for AwardsCard();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + a3[5];
    goto LABEL_5;
  }

  if (a2 == 2147483646)
  {
    v14 = *(a1 + a3[7] + 24);
    if (v14 >= 0xFFFFFFFF)
    {
      LODWORD(v14) = -1;
    }

    v15 = v14 - 1;
    if (v15 < 0)
    {
      v15 = -1;
    }

    return (v15 + 1);
  }

  else
  {
    v16 = sub_100140278(&qword_1008DC6B0);
    v17 = *(*(v16 - 8) + 48);
    v18 = a1 + a3[9];

    return v17(v18, a2, v16);
  }
}

uint64_t sub_10006BD68(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v10 = *(a1 + *(a3 + 44));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

unint64_t sub_10006BE30()
{
  result = qword_1008DCDC0;
  if (!qword_1008DCDC0)
  {
    sub_100141EEC(&qword_1008DCDC8);
    sub_10006D128(&qword_1008DCDD0, type metadata accessor for AwardsCardView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008DCDC0);
  }

  return result;
}

unint64_t sub_10006BEE4()
{
  result = qword_1008DCDA8;
  if (!qword_1008DCDA8)
  {
    sub_100141EEC(&qword_1008DCDB0);
    sub_10006D128(&qword_1008DCDB8, type metadata accessor for HistoryItemsCardView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008DCDA8);
  }

  return result;
}

unint64_t sub_10006BF98()
{
  result = qword_1008DCD50;
  if (!qword_1008DCD50)
  {
    sub_100141EEC(&qword_1008DCD58);
    sub_10007108C();
    sub_100070EEC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008DCD50);
  }

  return result;
}

id sub_10006C024(uint64_t a1)
{
  __chkstk_darwin(a1);
  v2 = v1;
  v4 = v3;
  v6 = v5;
  memcpy(v21, v3, sizeof(v21));
  if (*(v2 + OBJC_IVAR____TtC10FitnessApp18TrendsDataProvider_fakingEnabled) == 1)
  {
    sub_100314D28(v6);
    memcpy(__dst, v19, sizeof(__dst));
    sub_100314D28(v4);
    memcpy(__src, v20, sizeof(__src));
    memcpy(v15, __dst, sizeof(v15));
    ASFriendListDisplayMode.id.getter(v15);
    memcpy(v16, (v2 + OBJC_IVAR____TtC10FitnessApp18TrendsDataProvider_statisticsCompilation365), sizeof(v16));
    memcpy((v2 + OBJC_IVAR____TtC10FitnessApp18TrendsDataProvider_statisticsCompilation365), v15, 0x728uLL);
    sub_10006C484(v19, v18);
    sub_10000EA04(v16, &qword_1008E5708);

    v7 = sub_100684350();
    sub_10028E3C8(v19);
    sub_10028DF64(v7);

    memcpy(v17, __src, sizeof(v17));
    ASFriendListDisplayMode.id.getter(v17);
    memcpy(v18, (v2 + OBJC_IVAR____TtC10FitnessApp18TrendsDataProvider_statisticsCompilation90), sizeof(v18));
    memcpy((v2 + OBJC_IVAR____TtC10FitnessApp18TrendsDataProvider_statisticsCompilation90), v17, 0x728uLL);
    sub_10006C484(v20, &v12);
    sub_10000EA04(v18, &qword_1008E5708);

    v8 = sub_100684350();
    sub_10028E3C8(v20);
    sub_10028DF64(v8);
  }

  else
  {
    memcpy(v17, v6, sizeof(v17));
    ASFriendListDisplayMode.id.getter(v17);
    memcpy(v18, (v2 + OBJC_IVAR____TtC10FitnessApp18TrendsDataProvider_statisticsCompilation365), sizeof(v18));
    memcpy((v2 + OBJC_IVAR____TtC10FitnessApp18TrendsDataProvider_statisticsCompilation365), v17, 0x728uLL);
    sub_10006C484(v6, v20);
    sub_10000EA04(v18, &qword_1008E5708);

    v9 = sub_100684350();
    sub_10028DF64(v9);

    memcpy(v19, v21, sizeof(v19));
    ASFriendListDisplayMode.id.getter(v19);
    memcpy(v20, (v2 + OBJC_IVAR____TtC10FitnessApp18TrendsDataProvider_statisticsCompilation90), sizeof(v20));
    memcpy((v2 + OBJC_IVAR____TtC10FitnessApp18TrendsDataProvider_statisticsCompilation90), v19, 0x728uLL);
    sub_10006C484(v4, v16);
    sub_10000EA04(v20, &qword_1008E5708);

    v10 = sub_100684350();
    sub_10028DF64(v10);
  }

  return sub_10028CD1C();
}

unint64_t sub_10006C3F8()
{
  result = qword_1008DCD98;
  if (!qword_1008DCD98)
  {
    sub_100141EEC(&qword_1008DCDA0);
    sub_10006BEE4();
    sub_10006BE30();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008DCD98);
  }

  return result;
}

uint64_t sub_10006C4E0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 1832))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

unint64_t sub_10006C528()
{
  result = qword_1008DCD40;
  if (!qword_1008DCD40)
  {
    sub_100141EEC(&qword_1008DCD48);
    sub_10006BF98();
    sub_10006C3F8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008DCD40);
  }

  return result;
}

uint64_t sub_10006C5B4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(a1 + 16) = a2;
}

unint64_t sub_10006C614()
{
  result = qword_1008DCDD8;
  if (!qword_1008DCDD8)
  {
    sub_100141EEC(&qword_1008DCDE0);
    sub_10006DD60();
    sub_10006DFE8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008DCDD8);
  }

  return result;
}

uint64_t sub_10006C6A8(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && a1[48])
  {
    return (*a1 + 254);
  }

  v3 = *a1;
  v4 = v3 >= 3;
  v5 = v3 - 3;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_10006C6EC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

uint64_t sub_10006C74C(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_10006C764@<X0>(uint64_t a1@<X8>)
{
  sub_10006C958();
  v3 = v2;
  v4 = *(v2 + 16);
  if (v4 >= 2)
  {
    v17 = a1;
    sub_100185AF4(0, v4, 0);
    v7 = _swiftEmptyArrayStorage[2];
    v8 = 32;
    v9 = v4;
    do
    {
      v10 = *(v3 + v8);
      v11 = _swiftEmptyArrayStorage[3];
      if (v7 >= v11 >> 1)
      {
        sub_100185AF4((v11 > 1), v7 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v7 + 1;
      _swiftEmptyArrayStorage[v7 + 4] = v10;
      v8 += 16;
      ++v7;
      --v9;
    }

    while (v9);
    sub_100185AF4(0, v4, 0);
    v12 = _swiftEmptyArrayStorage[2];
    v13 = 40;
    do
    {
      v14 = *(v3 + v13);
      v15 = _swiftEmptyArrayStorage[3];
      if (v12 >= v15 >> 1)
      {
        sub_100185AF4((v15 > 1), v12 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v12 + 1;
      _swiftEmptyArrayStorage[v12 + 4] = v14;
      v13 += 16;
      ++v12;
      --v4;
    }

    while (v4);

    sub_100521F78(_swiftEmptyArrayStorage, v18);

    v16 = v18[1];
    *v17 = v18[0];
    *(v17 + 16) = v16;
    *(v17 + 32) = v19;
  }

  else
  {

    sub_10006CB8C();
    swift_allocError();
    *v5 = 1;
    return swift_willThrow();
  }

  return result;
}

void sub_10006C958()
{
  v1 = 0;
  v2 = v0[1];
  v3 = *(v2 + 16);
  v4 = v2 + 24;
  v5 = _swiftEmptyArrayStorage;
LABEL_2:
  v6 = 24 * v1;
  while (v3 != v1)
  {
    if (v1 >= v3)
    {
      __break(1u);
LABEL_15:
      __break(1u);
LABEL_16:
      __break(1u);
      return;
    }

    v7 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      goto LABEL_15;
    }

    v8 = *v0;
    if (v1 >= *(*v0 + 16))
    {
      goto LABEL_16;
    }

    v9 = *(v8 + v6 + 48);
    ++v1;
    v6 += 24;
    if ((v9 & 1) == 0)
    {
      v10 = *(v4 + 8 * v1);
      v11 = *(v8 + v6 + 8);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v5 = sub_10006CA7C(0, *(v5 + 2) + 1, 1, v5);
      }

      v13 = *(v5 + 2);
      v12 = *(v5 + 3);
      if (v13 >= v12 >> 1)
      {
        v5 = sub_10006CA7C((v12 > 1), v13 + 1, 1, v5);
      }

      *(v5 + 2) = v13 + 1;
      v14 = &v5[16 * v13];
      *(v14 + 4) = v10;
      *(v14 + 5) = v11;
      v1 = v7;
      goto LABEL_2;
    }
  }
}

char *sub_10006CA90(char *result, int64_t a2, char a3, char *a4, uint64_t *a5)
{
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 3);
    v8 = v7 >> 1;
    if ((v7 >> 1) < a2)
    {
      if (v8 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if ((v7 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v8 = a2;
      }
    }
  }

  else
  {
    v8 = a2;
  }

  v9 = *(a4 + 2);
  if (v8 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = v8;
  }

  if (v10)
  {
    sub_100140278(a5);
    v11 = swift_allocObject();
    v12 = j__malloc_size(v11);
    v13 = v12 - 32;
    if (v12 < 32)
    {
      v13 = v12 - 17;
    }

    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * (v13 >> 4);
  }

  else
  {
    v11 = _swiftEmptyArrayStorage;
  }

  v14 = v11 + 32;
  v15 = a4 + 32;
  if (v6)
  {
    if (v11 != a4 || v14 >= &v15[16 * v9])
    {
      memmove(v14, v15, 16 * v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v14, v15, 16 * v9);
  }

  return v11;
}

unint64_t sub_10006CB8C()
{
  result = qword_1008EB580;
  if (!qword_1008EB580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008EB580);
  }

  return result;
}

uint64_t sub_10006CCC0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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
    *(a1 + *(a4 + 40) + 24) = (a2 - 1);
  }

  return result;
}

uint64_t sub_10006CD84()
{
  ObjectType = swift_getObjectType();
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v5 = aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = aBlock - v7;
  Date.init()();
  if ([*&v0[OBJC_IVAR____TtC10FitnessApp18TrendsDataProvider_workoutProvider] dataAvailable])
  {
    v9 = *&v0[OBJC_IVAR____TtC10FitnessApp18TrendsDataProvider_operationQueue];
    (*(v3 + 16))(v5, v8, v2);
    v10 = (*(v3 + 80) + 24) & ~*(v3 + 80);
    v11 = (v4 + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
    v12 = swift_allocObject();
    *(v12 + 16) = v0;
    (*(v3 + 32))(v12 + v10, v5, v2);
    *(v12 + v11) = ObjectType;
    aBlock[4] = sub_1000449EC;
    aBlock[5] = v12;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000449A8;
    aBlock[3] = &unk_10084F980;
    v13 = _Block_copy(aBlock);
    v14 = v0;

    [v9 addOperationWithBlock:v13];
    _Block_release(v13);
  }

  return (*(v3 + 8))(v8, v2);
}

uint64_t sub_10006CFBC()
{
  v1 = type metadata accessor for Date();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

void sub_10006D08C()
{
  sub_10006D170();
  if (v0 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_10006D128(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_10006D170()
{
  if (!qword_1008DFFA0)
  {
    sub_100141EEC(&unk_1008DC740);
    v0 = type metadata accessor for Binding();
    if (!v1)
    {
      atomic_store(v0, &qword_1008DFFA0);
    }
  }
}

uint64_t type metadata accessor for SmallAwardsCardView()
{
  result = qword_1008DFF78;
  if (!qword_1008DFF78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10006D220()
{
  sub_10005C91C();
  if (v0 <= 0x3F)
  {
    sub_10005C818();
    if (v1 <= 0x3F)
    {
      sub_10006DAB0(319, &qword_1008DFF88, &qword_1008E8750);
      if (v2 <= 0x3F)
      {
        sub_10006DAB0(319, &qword_1008DFF90, &qword_1008DFF98);
        if (v3 <= 0x3F)
        {
          sub_10006D644(319, &qword_1008DC728, &qword_1008DC730, &unk_1006E7FA0, &type metadata accessor for Optional);
          if (v4 <= 0x3F)
          {
            sub_10006D644(319, &qword_1008DFFA0, &unk_1008DC740, &unk_1006D4F00, &type metadata accessor for Binding);
            if (v5 <= 0x3F)
            {
              sub_10006D644(319, &qword_1008DC738, &unk_1008DC740, &unk_1006D4F00, &type metadata accessor for State);
              if (v6 <= 0x3F)
              {
                sub_10006D644(319, &qword_1008DFFA8, &qword_1008DC848, &unk_1006D5028, &type metadata accessor for State);
                if (v7 <= 0x3F)
                {
                  sub_10006D644(319, &qword_1008DFFB0, &qword_1008DC850, &unk_1006D5030, &type metadata accessor for State);
                  if (v8 <= 0x3F)
                  {
                    sub_10006DC4C();
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

uint64_t sub_10006D4AC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_100140278(&qword_1008DC6A8);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  else
  {
    Card = type metadata accessor for FitnessPlusUpNextCard();
    v12 = *(*(Card - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, Card);
  }

  return result;
}

void sub_10006D5E0(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
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

void sub_10006D644(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
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

uint64_t sub_10006D6BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100140278(&qword_1008DC6A8);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    Card = type metadata accessor for FitnessPlusUpNextCard();
    v12 = *(*(Card - 8) + 48);
    v13 = a1 + *(a3 + 24);

    return v12(v13, a2, Card);
  }
}

uint64_t sub_10006D7F0()
{
  v20 = v0;

  v1 = static os_log_type_t.default.getter();
  v2 = HKLogActivity;
  if (os_log_type_enabled(HKLogActivity, v1))
  {
    log = v2;
    v3 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    *v3 = 136315394;
    v4 = _typeName(_:qualified:)();
    v6 = sub_10000AFDC(v4, v5, &v19);

    *(v3 + 4) = v6;
    *(v3 + 12) = 2080;
    type metadata accessor for ActivitySharingHighlight();
    v7 = ArraySlice.description.getter();
    v9 = sub_10000AFDC(v7, v8, &v19);

    *(v3 + 14) = v9;
    _os_log_impl(&_mh_execute_header, log, v1, "%s updating highlights %s", v3, 0x16u);
    swift_arrayDestroy();
  }

  v10 = v0[6];
  if ((v10 & 1) == 0)
  {
    goto LABEL_4;
  }

  type metadata accessor for __ContiguousArrayStorageBase();
  swift_unknownObjectRetain_n();
  v13 = swift_dynamicCastClass();
  if (!v13)
  {
    swift_unknownObjectRelease();
    v10 = v0[6];
    v13 = _swiftEmptyArrayStorage;
  }

  v14 = v0[5];
  v15 = v13[2];

  if (__OFSUB__(v10 >> 1, v14))
  {
    __break(1u);
    goto LABEL_15;
  }

  if (v15 != (v10 >> 1) - v14)
  {
LABEL_15:
    swift_unknownObjectRelease();
    v10 = v0[6];
LABEL_4:
    sub_10006E0C8(v0[3], v0[4], v0[5], v10);
    v12 = v11;
    goto LABEL_11;
  }

  v12 = swift_dynamicCastClass();
  if (!v12)
  {
    swift_unknownObjectRelease();
    v12 = _swiftEmptyArrayStorage;
  }

LABEL_11:
  swift_getKeyPath();
  swift_getKeyPath();
  v0[2] = v12;

  static Published.subscript.setter();
  v16 = v0[1];

  return v16();
}

void sub_10006DAB0(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  if (!*a2)
  {
    sub_1000059F8(255, a3);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_10006DB08()
{
  result = qword_1008DCE50;
  if (!qword_1008DCE50)
  {
    sub_100141EEC(&qword_1008DCE58);
    sub_10006D128(&qword_1008DCE60, type metadata accessor for FitnessPlusSampleContentView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008DCE50);
  }

  return result;
}

void sub_10006DBBC(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    sub_100069D98(a3);
  }
}

void sub_10006DC4C()
{
  if (!qword_1008DDD48)
  {
    v0 = type metadata accessor for State();
    if (!v1)
    {
      atomic_store(v0, &qword_1008DDD48);
    }
  }
}

unint64_t sub_10006DC9C()
{
  result = qword_1008DCE38;
  if (!qword_1008DCE38)
  {
    sub_100141EEC(&qword_1008DCE40);
    sub_10006D128(&qword_1008DCE48, type metadata accessor for FitnessPlusUpNextView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008DCE38);
  }

  return result;
}

unint64_t sub_10006DD60()
{
  result = qword_1008DCDE8;
  if (!qword_1008DCDE8)
  {
    sub_100141EEC(&qword_1008DCDF0);
    sub_1001614D4();
    sub_100161588();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008DCDE8);
  }

  return result;
}

void sub_10006DDEC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t *a5, uint64_t a6, uint64_t (*a7)(void))
{
  v7 = a4 >> 1;
  v8 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    goto LABEL_14;
  }

  if (v8)
  {
    if (v8 < 1)
    {
      if (v7 != a3)
      {
        goto LABEL_10;
      }
    }

    else
    {
      sub_100140278(a5);
      v11 = *(a7(0) - 8);
      v12 = *(v11 + 72);
      v13 = (*(v11 + 80) + 32) & ~*(v11 + 80);
      v14 = swift_allocObject();
      v15 = j__malloc_size(v14);
      if (!v12)
      {
LABEL_15:
        __break(1u);
LABEL_16:
        __break(1u);
        return;
      }

      if (v15 - v13 == 0x8000000000000000 && v12 == -1)
      {
        goto LABEL_16;
      }

      v14[2] = v8;
      v14[3] = 2 * ((v15 - v13) / v12);
      if (v7 != a3)
      {
LABEL_10:
        a7(0);
        swift_arrayInitWithCopy();
        return;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }
}

unint64_t sub_10006DF90()
{
  result = qword_1008EE928;
  if (!qword_1008EE928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008EE928);
  }

  return result;
}

unint64_t sub_10006DFE8()
{
  result = qword_1008DCE28;
  if (!qword_1008DCE28)
  {
    sub_100141EEC(&qword_1008DCE30);
    sub_10006DC9C();
    sub_10006DB08();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008DCE28);
  }

  return result;
}

unint64_t sub_10006E074()
{
  result = qword_1008F4DB0;
  if (!qword_1008F4DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F4DB0);
  }

  return result;
}

unint64_t sub_10006E100()
{
  result = qword_1008F4DB8;
  if (!qword_1008F4DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F4DB8);
  }

  return result;
}

unint64_t sub_10006E15C()
{
  result = qword_1008E0368;
  if (!qword_1008E0368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E0368);
  }

  return result;
}

unint64_t sub_10006E1B0(unsigned __int8 a1)
{
  v1 = a1 - 39;
  result = 0x6843736472617761;
  switch(v1)
  {
    case 0:
      result = 0xD000000000000016;
      break;
    case 1:
    case 2:
    case 5:
      result = 0xD000000000000020;
      break;
    case 3:
      return result;
    case 4:
      result = 0xD000000000000011;
      break;
    case 6:
      result = 0xD00000000000001FLL;
      break;
    case 7:
      result = 0xD00000000000001CLL;
      break;
    case 8:
      result = 0xD000000000000012;
      break;
    case 9:
      result = 0xD000000000000016;
      break;
    case 10:
      result = 0xD000000000000016;
      break;
    case 11:
      result = 0x684373646E657274;
      break;
    case 12:
      result = 0xD000000000000014;
      break;
    case 13:
      result = 0xD000000000000026;
      break;
    default:
      _StringGuts.grow(_:)(17);

      v3._countAndFlagsBits = sub_10002A094(97);
      String.append(_:)(v3);

      result = 0x437363697274656DLL;
      break;
  }

  return result;
}

unint64_t sub_10006E418()
{
  result = qword_1008F4D98;
  if (!qword_1008F4D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F4D98);
  }

  return result;
}

unint64_t sub_10006E46C()
{
  result = qword_1008DCF28;
  if (!qword_1008DCF28)
  {
    sub_100141EEC(&qword_1008DCF18);
    sub_100054664();
    sub_10014A6B0(&qword_1008DC838, &qword_1008DC840);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008DCF28);
  }

  return result;
}

unint64_t sub_10006E530()
{
  result = qword_1008F4DC0;
  if (!qword_1008F4DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F4DC0);
  }

  return result;
}

uint64_t sub_10006E584(uint64_t result)
{
  v2 = *(v1 + 16);
  v3 = *(result + 8);
  v4 = *result;
  v5 = v3;
  if (v2)
  {
    return v2(&v4);
  }

  return result;
}

unint64_t sub_10006E67C()
{
  result = qword_1008F4DD8;
  if (!qword_1008F4DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F4DD8);
  }

  return result;
}

uint64_t sub_10006E6D0(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, uint64_t *a9, uint64_t a10)
{
  v29 = a7;
  v28 = a6;
  v27[2] = a5;
  v30 = a2;
  v31 = a9;
  v13 = type metadata accessor for Logger();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Log.triage.getter();
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v27[1] = a8;
    v20 = v19;
    v21 = swift_slowAlloc();
    v27[0] = a10;
    v22 = v21;
    v32 = v21;
    *v20 = 134218498;
    *(v20 + 4) = a3;
    *(v20 + 12) = 2080;
    v23 = StaticString.description.getter();
    v25 = sub_10000AFDC(v23, v24, &v32);

    *(v20 + 14) = v25;
    *(v20 + 22) = 2048;
    *(v20 + 24) = v29;
    _os_log_impl(&_mh_execute_header, v17, v18, "Finished P->A conversion: %ld:%s:%lu", v20, 0x20u);
    sub_100005A40(v22);
  }

  (*(v14 + 8))(v16, v13);
  v32 = a1;
  if (v30)
  {
    swift_errorRetain();
    sub_100140278(v31);
    return CheckedContinuation.resume(throwing:)();
  }

  else
  {

    sub_100140278(v31);
    return CheckedContinuation.resume(returning:)();
  }
}

uint64_t sub_10006E92C(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  v41 = a1;
  v11 = sub_100140278(&qword_1008EEED8);
  v44 = *(v11 - 8);
  v43 = *(v44 + 64);
  __chkstk_darwin(v11);
  v13 = &v35 - v12;
  v14 = type metadata accessor for Logger();
  v42 = *(v14 - 8);
  __chkstk_darwin(v14);
  v16 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_1001A99B8(0x65uLL);
  static Log.triage.getter();
  v17 = Logger.logObject.getter();
  v39 = static os_log_type_t.default.getter();
  v40 = v17;
  if (os_log_type_enabled(v17, v39))
  {
    v18 = swift_slowAlloc();
    v38 = a6;
    v19 = v18;
    v36 = swift_slowAlloc();
    v46 = v36;
    *v19 = 134218498;
    *(v19 + 4) = v45;
    *(v19 + 12) = 2080;
    v20 = StaticString.description.getter();
    v37 = a4;
    v22 = sub_10000AFDC(v20, v21, &v46);
    v35 = v14;
    v23 = v11;
    v24 = a2;
    v25 = a3;
    v26 = a5;
    v27 = v22;
    LOBYTE(a4) = v37;

    *(v19 + 14) = v27;
    a5 = v26;
    a3 = v25;
    a2 = v24;
    v11 = v23;
    *(v19 + 22) = 2048;
    *(v19 + 24) = a5;
    v28 = v40;
    _os_log_impl(&_mh_execute_header, v40, v39, "Converting from Promise to Async-Await. Created at: %ld:%s:%lu", v19, 0x20u);
    sub_100005A40(v36);

    (*(v42 + 8))(v16, v35);
  }

  else
  {

    (*(v42 + 8))(v16, v14);
  }

  v29 = v44;
  (*(v44 + 16))(v13, v41, v11);
  v30 = (*(v29 + 80) + 56) & ~*(v29 + 80);
  v31 = swift_allocObject();
  *(v31 + 16) = v45;
  *(v31 + 24) = a2;
  *(v31 + 32) = a3;
  *(v31 + 40) = a4;
  *(v31 + 48) = a5;
  (*(v29 + 32))(v31 + v30, v13, v11);
  sub_100140278(&qword_1008EEEE0);
  v32 = Promise.operation.getter();
  v33 = swift_allocObject();
  *(v33 + 16) = sub_10006E5CC;
  *(v33 + 24) = v31;

  v32(sub_10006E528, v33);
}

unint64_t sub_10006ED20()
{
  result = qword_1008F4DA0;
  if (!qword_1008F4DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F4DA0);
  }

  return result;
}

uint64_t sub_10006ED74(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  v41 = a1;
  v11 = sub_100140278(&qword_1008EEEE8);
  v44 = *(v11 - 8);
  v43 = *(v44 + 64);
  __chkstk_darwin(v11);
  v13 = &v35 - v12;
  v14 = type metadata accessor for Logger();
  v42 = *(v14 - 8);
  __chkstk_darwin(v14);
  v16 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_1001A99B8(0x65uLL);
  static Log.triage.getter();
  v17 = Logger.logObject.getter();
  v39 = static os_log_type_t.default.getter();
  v40 = v17;
  if (os_log_type_enabled(v17, v39))
  {
    v18 = swift_slowAlloc();
    v38 = a6;
    v19 = v18;
    v36 = swift_slowAlloc();
    v46 = v36;
    *v19 = 134218498;
    *(v19 + 4) = v45;
    *(v19 + 12) = 2080;
    v20 = StaticString.description.getter();
    v37 = a4;
    v22 = sub_10000AFDC(v20, v21, &v46);
    v35 = v14;
    v23 = v11;
    v24 = a2;
    v25 = a3;
    v26 = a5;
    v27 = v22;
    LOBYTE(a4) = v37;

    *(v19 + 14) = v27;
    a5 = v26;
    a3 = v25;
    a2 = v24;
    v11 = v23;
    *(v19 + 22) = 2048;
    *(v19 + 24) = a5;
    v28 = v40;
    _os_log_impl(&_mh_execute_header, v40, v39, "Converting from Promise to Async-Await. Created at: %ld:%s:%lu", v19, 0x20u);
    sub_100005A40(v36);

    (*(v42 + 8))(v16, v35);
  }

  else
  {

    (*(v42 + 8))(v16, v14);
  }

  v29 = v44;
  (*(v44 + 16))(v13, v41, v11);
  v30 = (*(v29 + 80) + 56) & ~*(v29 + 80);
  v31 = swift_allocObject();
  *(v31 + 16) = v45;
  *(v31 + 24) = a2;
  *(v31 + 32) = a3;
  *(v31 + 40) = a4;
  *(v31 + 48) = a5;
  (*(v29 + 32))(v31 + v30, v13, v11);
  sub_100140278(&unk_1008E4F30);
  v32 = Promise.operation.getter();
  v33 = swift_allocObject();
  *(v33 + 16) = sub_1004A8FA8;
  *(v33 + 24) = v31;

  v32(sub_1001C870C, v33);
}

uint64_t type metadata accessor for LargeAwardsCardView()
{
  result = qword_1008E6798;
  if (!qword_1008E6798)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10006F1BC()
{
  sub_10005C91C();
  if (v0 <= 0x3F)
  {
    sub_10005C818();
    if (v1 <= 0x3F)
    {
      sub_10006DAB0(319, &qword_1008DFF88, &qword_1008E8750);
      if (v2 <= 0x3F)
      {
        sub_10006DAB0(319, &qword_1008DFF90, &qword_1008DFF98);
        if (v3 <= 0x3F)
        {
          sub_10006D644(319, &qword_1008DC728, &qword_1008DC730, &unk_1006E7FA0, &type metadata accessor for Optional);
          if (v4 <= 0x3F)
          {
            sub_10006D644(319, &qword_1008DFFA0, &unk_1008DC740, &unk_1006D4F00, &type metadata accessor for Binding);
            if (v5 <= 0x3F)
            {
              sub_10006D644(319, &qword_1008DFFA8, &qword_1008DC848, &unk_1006D5028, &type metadata accessor for State);
              if (v6 <= 0x3F)
              {
                sub_10006D644(319, &qword_1008DFFB0, &qword_1008DC850, &unk_1006D5030, &type metadata accessor for State);
                if (v7 <= 0x3F)
                {
                  sub_10006DC4C();
                  if (v8 <= 0x3F)
                  {
                    sub_10006D644(319, &qword_1008DC738, &unk_1008DC740, &unk_1006D4F00, &type metadata accessor for State);
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

uint64_t sub_10006F420(void (*a1)(void), void (*a2)(void), uint64_t a3)
{
  a1(*(v3 + 16));
  a2(*(v3 + 32));

  return _swift_deallocObject(v3, a3, 7);
}

uint64_t sub_10006F4A0()
{
  sub_100141EEC(&qword_1008DC788);
  sub_10015C3E4();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_10006F504(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_10002BACC;

  return sub_10006F5F0(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_10006F5F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[7] = a8;
  v8[8] = v13;
  v8[5] = a6;
  v8[6] = a7;
  v8[3] = a4;
  v8[4] = a5;
  type metadata accessor for MainActor();
  v8[9] = static MainActor.shared.getter();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10006D7F0, v10, v9);
}

uint64_t sub_10006F6DC()
{
  sub_100141EEC(&qword_1008E7D48);
  type metadata accessor for ModifiedContent();
  type metadata accessor for Group();
  sub_10014A6B0(&qword_1008E7D50, &qword_1008E7D48);
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_10006F7C4(uint64_t a1, unsigned __int8 a2)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = OBJC_IVAR____TtC10FitnessApp18SummaryCoordinator_activeCards;
    v5 = result;
    swift_beginAccess();
    v25 = v5;
    v6 = *&v5[v4];
    v7 = *(v6 + 16);

    if (v7)
    {
      v8 = 0;
      v9 = v6 + 32;
      v10 = _swiftEmptyArrayStorage;
      while (1)
      {
        if (v8 >= *(v6 + 16))
        {
          __break(1u);
          return result;
        }

        v32 = v8;
        sub_100007C5C(v9, v33);
        v11 = v34;
        v12 = v35;
        sub_1000066AC(v33, v34);
        v13 = (*(v12 + 16))(v11, v12);
        if (v15)
        {
          sub_10001D4F8(v13, v14, v15);
          v16 = v34;
          v17 = v35;
          sub_1000066AC(v33, v34);
          v18 = sub_10006FB4C(v16, v17);
          LOBYTE(v17) = sub_10006FCD4(a2, v18);

          if ((v17 & 1) == 0)
          {
            goto LABEL_13;
          }
        }

        else if ((a2 - 53) > 0xF1u || v13 != a2)
        {
LABEL_13:
          v30 = 0u;
          v31 = 0u;
          v29 = 0u;
          goto LABEL_14;
        }

        *&v29 = v8;
        sub_100007C5C(v33, &v29 + 8);
LABEL_14:
        sub_10000EA04(&v32, &qword_1008DF180);
        if (v31)
        {
          v26 = v29;
          v27 = v30;
          v28 = v31;
          result = swift_isUniquelyReferenced_nonNull_native();
          if ((result & 1) == 0)
          {
            result = sub_10007A33C(0, v10[2] + 1, 1, v10);
            v10 = result;
          }

          v20 = v10[2];
          v19 = v10[3];
          if (v20 >= v19 >> 1)
          {
            result = sub_10007A33C((v19 > 1), v20 + 1, 1, v10);
            v10 = result;
          }

          v10[2] = v20 + 1;
          v21 = &v10[6 * v20];
          v21[3] = v27;
          v21[4] = v28;
          v21[2] = v26;
        }

        else
        {
          result = sub_10000EA04(&v29, &qword_1008EBF20);
        }

        ++v8;
        v9 += 40;
        if (v7 == v8)
        {
          goto LABEL_21;
        }
      }
    }

    v10 = _swiftEmptyArrayStorage;
LABEL_21:

    v22 = sub_100070098(v10);

    if (v22[2])
    {
      v23 = swift_allocObject();
      *(v23 + 16) = v25;
      *(v23 + 24) = v22;
      v24 = v25;
      sub_100074864(sub_100074044, v23);
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_10006FAE0(uint64_t *a1, unint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 > 1)
  {
    if (v2 != 2)
    {
      if (v2 == 3)
      {
        return v3 == 3;
      }

LABEL_10:
      if (v3 >= 4)
      {
        return sub_10031B1EC(v2, v3);
      }

      return 0;
    }

    if (v3 != 2)
    {
      return 0;
    }
  }

  else
  {
    if (v2)
    {
      if (v2 == 1)
      {
        return v3 == 1;
      }

      goto LABEL_10;
    }

    if (v3)
    {
      return 0;
    }
  }

  return 1;
}

void *sub_10006FB4C(uint64_t a1, uint64_t a2)
{
  v2 = (*(a2 + 16))();
  if (v4 <= 1u)
  {
    if (v4)
    {
      sub_10001D4F8(v2, v3, 1);
      return &off_1008451B8;
    }

    else
    {
      v5 = v2;
      sub_100140278(&qword_1008E8EE0);
      result = swift_allocObject();
      *(result + 1) = xmmword_1006D1F70;
      *(result + 32) = v5;
      *(result + 33) = 46;
    }

    return result;
  }

  if (v4 == 2)
  {
LABEL_5:
    sub_10001D4F8(v2, v3, v4);
    return &off_100845280;
  }

  if (v2 > 4)
  {
    if (v2 > 6)
    {
      if (!(v2 ^ 7 | v3))
      {
        return &off_100845258;
      }

      if (v2 ^ 8 | v3)
      {
        return &off_1008452A8;
      }

      goto LABEL_5;
    }

    v7 = v2 ^ 5 | v3;
    v8 = &off_100845208;
    v9 = &off_100845230;
    goto LABEL_20;
  }

  if (v2 > 1)
  {
    v7 = v2 ^ 2 | v3;
    v8 = &off_100845168;
    if (v2 ^ 3 | v3)
    {
      v9 = &off_1008451E0;
    }

    else
    {
      v9 = &off_100845190;
    }

LABEL_20:
    if (v7)
    {
      return v9;
    }

    else
    {
      return v8;
    }
  }

  if (v2 | v3)
  {
    return _swiftEmptyArrayStorage;
  }

  else
  {
    return &off_100845140;
  }
}

uint64_t sub_10006FCD4(unsigned __int8 a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2)
  {
    v3 = (a2 + 32);
    while (1)
    {
      v5 = *v3++;
      v4 = v5;
      switch(v5)
      {
        case '\'':
          if (a1 != 39)
          {
            goto LABEL_4;
          }

          return 1;
        case '(':
          if (a1 == 40)
          {
            return 1;
          }

          goto LABEL_4;
        case ')':
          if (a1 == 41)
          {
            return 1;
          }

          goto LABEL_4;
        case '*':
          if (a1 == 42)
          {
            return 1;
          }

          goto LABEL_4;
        case '+':
          if (a1 == 43)
          {
            return 1;
          }

          goto LABEL_4;
        case ',':
          if (a1 == 44)
          {
            return 1;
          }

          goto LABEL_4;
        case '-':
          if (a1 == 45)
          {
            return 1;
          }

          goto LABEL_4;
        case '.':
          if (a1 == 46)
          {
            return 1;
          }

          goto LABEL_4;
        case '/':
          if (a1 == 47)
          {
            return 1;
          }

          goto LABEL_4;
        case '0':
          if (a1 == 48)
          {
            return 1;
          }

          goto LABEL_4;
        case '1':
          if (a1 == 49)
          {
            return 1;
          }

          goto LABEL_4;
        case '2':
          if (a1 != 50)
          {
            goto LABEL_4;
          }

          return 1;
        case '3':
          if (a1 == 51)
          {
            return 1;
          }

          goto LABEL_4;
        case '4':
          if (a1 == 52)
          {
            return 1;
          }

          goto LABEL_4;
        default:
          if (a1 - 53 <= 0xFFFFFFF1 && v4 == a1)
          {
            return 1;
          }

LABEL_4:
          if (!--v2)
          {
            return 0;
          }

          break;
      }
    }
  }

  return 0;
}

uint64_t sub_10006FE20()
{
  v1 = type metadata accessor for AccessibilityChildBehavior();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100140278(&qword_1008DC780);
  __chkstk_darwin(v5 - 8);
  v7 = v17 - v6;
  v8 = sub_100140278(&qword_1008DC788);
  __chkstk_darwin(v8);
  v10 = v17 - v9;
  *v7 = static HorizontalAlignment.center.getter();
  *(v7 + 1) = 0;
  v7[16] = 0;
  v11 = sub_100140278(&qword_1008DC790);
  sub_10015958C(v0, &v7[*(v11 + 44)]);
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  sub_100015E80(v7, v10, &qword_1008DC780);
  v12 = &v10[*(v8 + 36)];
  v13 = v17[5];
  *(v12 + 4) = v17[4];
  *(v12 + 5) = v13;
  *(v12 + 6) = v17[6];
  v14 = v17[1];
  *v12 = v17[0];
  *(v12 + 1) = v14;
  v15 = v17[3];
  *(v12 + 2) = v17[2];
  *(v12 + 3) = v15;
  static AccessibilityChildBehavior.combine.getter();
  sub_10015C3E4();
  View.accessibilityElement(children:)();
  (*(v2 + 8))(v4, v1);
  return sub_10000EA04(v10, &qword_1008DC788);
}

void *sub_100070098(uint64_t a1)
{
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = (&v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(v1 + OBJC_IVAR____TtC10FitnessApp18SummaryCoordinator_internalQueue);
  *v6 = v7;
  (*(v4 + 104))(v6, enum case for DispatchPredicate.onQueue(_:), v3);
  v8 = v7;
  LOBYTE(v7) = _dispatchPreconditionTest(_:)();
  result = (*(v4 + 8))(v6, v3);
  if (v7)
  {
    v10 = *(a1 + 16);
    if (!v10)
    {
      return &_swiftEmptyArrayStorage;
    }

    v11 = &_swiftEmptyArrayStorage;
    v12 = (a1 + 40);
    do
    {
      sub_1000776E0(*(v12 - 1), v12, v1, &v15);
      if (v16)
      {
        sub_100006260(&v15, v17);
        sub_100006260(v17, &v15);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v11 = sub_1001A1E58(0, v11[2] + 1, 1, v11);
        }

        v14 = v11[2];
        v13 = v11[3];
        if (v14 >= v13 >> 1)
        {
          v11 = sub_1001A1E58((v13 > 1), v14 + 1, 1, v11);
        }

        v11[2] = v14 + 1;
        sub_100006260(&v15, &v11[5 * v14 + 4]);
      }

      else
      {
        sub_10000EA04(&v15, &qword_1008DCC60);
      }

      v12 += 6;
      --v10;
    }

    while (v10);
    return v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000702D4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UUID();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 2147483646)
  {
    *(a1 + *(a4 + 36)) = a2;
  }

  else
  {
    v11 = sub_100140278(&unk_1008F73A0);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 40);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_10007041C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100140278(&qword_1008DC6A8);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for ActivityRingsCard();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 24);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 32) + 8);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_100070538()
{
  v1 = type metadata accessor for ActivityRingsCard();
  v2 = (v0 + v1[5]);
  v14 = *v2;
  LOBYTE(v15) = *(v2 + 16);
  _print_unlocked<A, B>(_:_:)();
  v3._countAndFlagsBits = 58;
  v3._object = 0xE100000000000000;
  String.append(_:)(v3);
  LOBYTE(v14) = *(v0 + v1[6]);
  _print_unlocked<A, B>(_:_:)();
  v4._countAndFlagsBits = 58;
  v4._object = 0xE100000000000000;
  String.append(_:)(v4);
  type metadata accessor for UUID();
  sub_10008192C(&qword_1008EE840, &type metadata accessor for UUID);
  v5._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v5);

  v6._countAndFlagsBits = 540945696;
  v6._object = 0xE400000000000000;
  String.append(_:)(v6);
  v7 = *(v0 + v1[9]);
  if (v7)
  {
    v8 = [v7 description];
    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;
  }

  else
  {
    v11 = 0xE300000000000000;
    v9 = 4271950;
  }

  v12._countAndFlagsBits = v9;
  v12._object = v11;
  String.append(_:)(v12);

  return 0;
}

uint64_t sub_1000706FC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_100140278(&qword_1008DC6A8);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = type metadata accessor for ActivityRingsCard();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 32) + 8) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 24);
  }

  return v11(v12, a2, a2, v10);
}

void sub_100070814(uint64_t a1, void (*a2)(uint64_t), uint64_t a3)
{
  v5 = type metadata accessor for UUID();
  v60 = *(v5 - 8);
  v61 = v5;
  __chkstk_darwin(v5);
  v7 = v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v9 = Strong;
  v55 = a3;
  v56 = a2;
  v10 = OBJC_IVAR____TtC10FitnessApp18SummaryCoordinator_activeCards;
  swift_beginAccess();
  v11 = *&v9[v10];
  v12 = *(v11 + 16);
  v57 = v9;
  if (v12)
  {
    v54 = v10;
    v13 = v11 + 32;
    v53[1] = v11;

    v14 = &HKLogActivity;
    *&v15 = 136315138;
    v58 = v15;
    v59 = v7;
    do
    {
      sub_100007C5C(v13, v66);
      v16 = static os_log_type_t.default.getter();
      v17 = *v14;
      sub_100007C5C(v66, &v63);
      v18 = v17;
      sub_100005A40(v66);
      if (os_log_type_enabled(v18, v16))
      {
        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        v62 = v20;
        *v19 = v58;
        v21 = v64;
        v22 = v65;
        sub_1000066AC(&v63, v64);
        v23 = v14;
        v24 = (*(v22 + 40))(v21, v22);
        v26 = v25;
        sub_100005A40(&v63);
        v27 = sub_10000AFDC(v24, v26, &v62);

        *(v19 + 4) = v27;
        v14 = v23;
        v7 = v59;
        _os_log_impl(&_mh_execute_header, v18, v16, "[SummaryCoordinator] Updating card: %s", v19, 0xCu);
        sub_100005A40(v20);
      }

      else
      {

        sub_100005A40(&v63);
      }

      v13 += 40;
      --v12;
    }

    while (v12);

    v9 = v57;
    v10 = v54;
    v11 = *&v57[v54];
  }

  *&v9[OBJC_IVAR____TtC10FitnessApp18SummaryCoordinator_clientActiveCards] = v11;

  v28 = *&v9[v10];
  v29 = *(v28 + 16);
  if (!v29)
  {
    v33 = &_swiftEmptyDictionarySingleton;
LABEL_26:
    *&v9[OBJC_IVAR____TtC10FitnessApp18SummaryCoordinator_cardForId] = v33;

    if (v56)
    {
      v56(v52);
    }

    return;
  }

  v30 = v28 + 32;
  *&v58 = v60 + 16;
  v31 = (v60 + 8);

  v32 = 0;
  v33 = &_swiftEmptyDictionarySingleton;
  while (v32 < *(v28 + 16))
  {
    sub_100007C5C(v30, v66);
    v35 = v67;
    v36 = v68;
    sub_1000066AC(v66, v67);
    (*(v36 + 8))(v35, v36);
    sub_100007C5C(v66, &v63);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v62 = v33;
    v38 = sub_10005F9DC(v7);
    v40 = v33[2];
    v41 = (v39 & 1) == 0;
    v42 = __OFADD__(v40, v41);
    v43 = v40 + v41;
    if (v42)
    {
      goto LABEL_31;
    }

    v44 = v39;
    if (v33[3] < v43)
    {
      sub_10007383C(v43, isUniquelyReferenced_nonNull_native);
      v38 = sub_10005F9DC(v7);
      if ((v44 & 1) != (v45 & 1))
      {
        goto LABEL_33;
      }

LABEL_19:
      v33 = v62;
      if (v44)
      {
        goto LABEL_11;
      }

      goto LABEL_20;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_19;
    }

    v51 = v38;
    sub_100494CC0();
    v38 = v51;
    v33 = v62;
    if (v44)
    {
LABEL_11:
      v34 = v33[7] + 40 * v38;
      sub_100005A40(v34);
      sub_100006260(&v63, v34);
      (*v31)(v7, v61);
      goto LABEL_12;
    }

LABEL_20:
    v33[(v38 >> 6) + 8] |= 1 << v38;
    v47 = v60;
    v46 = v61;
    v48 = v38;
    (*(v60 + 16))(v33[6] + *(v60 + 72) * v38, v7, v61);
    sub_100006260(&v63, v33[7] + 40 * v48);
    (*(v47 + 8))(v7, v46);
    v49 = v33[2];
    v42 = __OFADD__(v49, 1);
    v50 = v49 + 1;
    if (v42)
    {
      goto LABEL_32;
    }

    v33[2] = v50;
LABEL_12:
    ++v32;
    sub_100005A40(v66);
    v30 += 40;
    if (v29 == v32)
    {

      v9 = v57;
      goto LABEL_26;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

uint64_t sub_100070D74()
{
  v1 = type metadata accessor for MetricCard();
  v2 = (v0 + v1[5]);
  v14 = *v2;
  LOBYTE(v15) = *(v2 + 16);
  _print_unlocked<A, B>(_:_:)();
  v3._countAndFlagsBits = 58;
  v3._object = 0xE100000000000000;
  String.append(_:)(v3);
  LOBYTE(v14) = *(v0 + v1[6]);
  _print_unlocked<A, B>(_:_:)();
  v4._countAndFlagsBits = 58;
  v4._object = 0xE100000000000000;
  String.append(_:)(v4);
  type metadata accessor for UUID();
  sub_100071140();
  v5._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v5);

  v6._countAndFlagsBits = 540945696;
  v6._object = 0xE400000000000000;
  String.append(_:)(v6);
  v7 = *(v0 + v1[9]);
  v8 = [v7 description];
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;

  v12._countAndFlagsBits = v9;
  v12._object = v11;
  String.append(_:)(v12);

  return 0;
}

unint64_t sub_100070EEC()
{
  result = qword_1008DCD78;
  if (!qword_1008DCD78)
  {
    sub_100141EEC(&qword_1008DCD80);
    type metadata accessor for LoadCardView();
    type metadata accessor for BalanceDataProvider();
    sub_10006D128(&qword_1008DCD88, type metadata accessor for LoadCardView);
    sub_10006D128(&qword_1008DCD90, type metadata accessor for BalanceDataProvider);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008DCD78);
  }

  return result;
}

uint64_t sub_100071020(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_10007108C()
{
  result = qword_1008DCD60;
  if (!qword_1008DCD60)
  {
    sub_100141EEC(&qword_1008DCD68);
    sub_10006D128(&qword_1008DCD70, type metadata accessor for ActivityRingsCardView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008DCD60);
  }

  return result;
}

unint64_t sub_100071140()
{
  result = qword_1008EE840;
  if (!qword_1008EE840)
  {
    type metadata accessor for UUID();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008EE840);
  }

  return result;
}

uint64_t sub_100071198()
{
  type metadata accessor for FitnessPlusUpNextCard();
  _print_unlocked<A, B>(_:_:)();
  v0._countAndFlagsBits = 58;
  v0._object = 0xE100000000000000;
  String.append(_:)(v0);
  _print_unlocked<A, B>(_:_:)();
  v1._countAndFlagsBits = 58;
  v1._object = 0xE100000000000000;
  String.append(_:)(v1);
  type metadata accessor for UUID();
  sub_100071570(&qword_1008EE840, &type metadata accessor for UUID);
  v2._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v2);

  v3._countAndFlagsBits = 540945696;
  v3._object = 0xE400000000000000;
  String.append(_:)(v3);
  _print_unlocked<A, B>(_:_:)();
  return 0;
}

unint64_t sub_100071314()
{
  result = qword_1008DC8B0;
  if (!qword_1008DC8B0)
  {
    sub_100141EEC(&qword_1008DC8B8);
    sub_100141EEC(&qword_1008DC8C0);
    sub_10014A6B0(&qword_1008DC8C8, &qword_1008DC8C0);
    sub_10007151C();
    swift_getOpaqueTypeConformance2();
    sub_100141EEC(&qword_1008DC8D0);
    sub_10014A6B0(&qword_1008DC8D8, &qword_1008DC8D0);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008DC8B0);
  }

  return result;
}

unint64_t sub_100071494()
{
  result = qword_1008DC8A8;
  if (!qword_1008DC8A8)
  {
    sub_100141EEC(&qword_1008DC8A0);
    sub_100071314();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008DC8A8);
  }

  return result;
}

unint64_t sub_10007151C()
{
  result = qword_1008F8F60;
  if (!qword_1008F8F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F8F60);
  }

  return result;
}

uint64_t sub_100071570(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000715B8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100071600()
{
  _print_unlocked<A, B>(_:_:)();
  v1._countAndFlagsBits = 58;
  v1._object = 0xE100000000000000;
  String.append(_:)(v1);
  _print_unlocked<A, B>(_:_:)();
  v2._countAndFlagsBits = 58;
  v2._object = 0xE100000000000000;
  String.append(_:)(v2);
  type metadata accessor for UUID();
  sub_10007183C(&qword_1008EE840);
  v3._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v3);

  v4._countAndFlagsBits = 540945696;
  v4._object = 0xE400000000000000;
  String.append(_:)(v4);
  v5._countAndFlagsBits = sub_100071958(*(v0 + OBJC_IVAR____TtC10FitnessApp16HistoryItemsCard_historyItems));
  String.append(_:)(v5);

  return 0;
}

unint64_t sub_100071784()
{
  result = qword_1008DC878;
  if (!qword_1008DC878)
  {
    sub_100141EEC(&qword_1008DC7B0);
    sub_10014A6B0(&qword_1008DC880, &qword_1008DC7A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008DC878);
  }

  return result;
}

uint64_t sub_10007183C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for UUID();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100071880(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000718C8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100071910(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100071958(uint64_t a1)
{
  v36 = type metadata accessor for Date();
  v2 = *(v36 - 8);
  __chkstk_darwin(v36);
  v4 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = type metadata accessor for UUID();
  v5 = *(v35 - 8);
  __chkstk_darwin(v35);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 16);
  if (!v8)
  {
    return 10536;
  }

  v39 = _swiftEmptyArrayStorage;
  sub_100073020(0, v8, 0);
  v9 = v39;
  v10 = (a1 + 32);
  v33 = (v2 + 8);
  v34 = (v5 + 8);
  do
  {
    v37 = 0;
    v38 = 0xE000000000000000;
    v11._countAndFlagsBits = 8232;
    v11._object = 0xE200000000000000;
    String.append(_:)(v11);
    v12 = v10[3];
    v13 = v10[4];
    sub_1000066AC(v10, v12);
    (*(v13 + 48))(v12, v13);
    sub_10059B9C4(&qword_1008EE840, &type metadata accessor for UUID);
    v14 = v35;
    v15._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v15);

    (*v34)(v7, v14);
    v16._countAndFlagsBits = 8236;
    v16._object = 0xE200000000000000;
    String.append(_:)(v16);
    v17 = v10[3];
    v18 = v10[4];
    sub_1000066AC(v10, v17);
    (*(v18 + 24))(v17, v18);
    sub_10059B9C4(&qword_1008DC148, &type metadata accessor for Date);
    v19 = v36;
    v20._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v20);

    (*v33)(v4, v19);
    v21._countAndFlagsBits = 8236;
    v21._object = 0xE200000000000000;
    String.append(_:)(v21);
    v22 = v10[3];
    v23 = v10[4];
    sub_1000066AC(v10, v22);
    (*(v23 + 40))(v22, v23);
    Double.write<A>(to:)();
    v24._countAndFlagsBits = 10528;
    v24._object = 0xE200000000000000;
    String.append(_:)(v24);
    v26 = v37;
    v25 = v38;
    v39 = v9;
    v28 = v9[2];
    v27 = v9[3];
    if (v28 >= v27 >> 1)
    {
      sub_100073020((v27 > 1), v28 + 1, 1);
      v9 = v39;
    }

    v9[2] = v28 + 1;
    v29 = &v9[2 * v28];
    v29[4] = v26;
    v29[5] = v25;
    v10 += 5;
    --v8;
  }

  while (v8);
  v37 = v9;
  sub_100140278(&unk_1008E99C0);
  sub_100020FC0();
  v30 = BidirectionalCollection<>.joined(separator:)();

  return v30;
}

unint64_t sub_100071D5C(unint64_t result)
{
  v1 = result;
  if (result >> 62)
  {
    goto LABEL_35;
  }

  v2 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v3 = _swiftEmptyArrayStorage;
  if (v2)
  {
    v4 = 0;
    v5 = 0;
    v6 = v1 & 0xC000000000000001;
    v7 = &_swiftEmptyArrayStorage[4];
    v8 = v1 & 0xFFFFFFFFFFFFFF8;
    v27 = v1 & 0xC000000000000001;
    v28 = v1;
    v26 = v1 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v6)
      {
        result = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v9 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
LABEL_26:
          __break(1u);
          break;
        }
      }

      else
      {
        if (v4 >= *(v8 + 16))
        {
          __break(1u);
LABEL_33:
          __break(1u);
LABEL_34:
          __break(1u);
LABEL_35:
          result = _CocoaArrayWrapper.endIndex.getter();
          v2 = result;
          goto LABEL_3;
        }

        result = *(v1 + 8 * v4 + 32);
        v9 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
          goto LABEL_26;
        }
      }

      if (!v5)
      {
        v10 = v3[3];
        if (((v10 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_34;
        }

        v11 = v2;
        v12 = result;
        v13 = v10 & 0xFFFFFFFFFFFFFFFELL;
        if (v13 <= 1)
        {
          v14 = 1;
        }

        else
        {
          v14 = v13;
        }

        sub_100140278(&qword_1008EF048);
        v15 = swift_allocObject();
        v16 = j__malloc_size(v15);
        v17 = v16 - 32;
        if (v16 < 32)
        {
          v17 = v16 - 17;
        }

        v18 = v17 >> 4;
        v15[2] = v14;
        v15[3] = 2 * (v17 >> 4);
        v19 = (v15 + 4);
        v20 = v3[3] >> 1;
        if (v3[2])
        {
          v21 = v3 + 4;
          if (v15 != v3 || v19 >= v21 + 16 * v20)
          {
            memmove(v15 + 4, v21, 16 * v20);
          }

          v3[2] = 0;
        }

        v7 = (v19 + 16 * v20);
        v5 = (v18 & 0x7FFFFFFFFFFFFFFFLL) - v20;

        v3 = v15;
        result = v12;
        v2 = v11;
        v6 = v27;
        v1 = v28;
        v8 = v26;
      }

      v22 = __OFSUB__(v5--, 1);
      if (v22)
      {
        goto LABEL_33;
      }

      *v7 = v4;
      v7[1] = result;
      v7 += 2;
      ++v4;
      if (v9 == v2)
      {
        goto LABEL_28;
      }
    }
  }

  v5 = 0;
LABEL_28:
  v23 = v3[3];
  if (v23 < 2)
  {
    return v3;
  }

  v24 = v23 >> 1;
  v22 = __OFSUB__(v24, v5);
  v25 = v24 - v5;
  if (!v22)
  {
    v3[2] = v25;
    return v3;
  }

  __break(1u);
  return result;
}

uint64_t sub_100071F4C()
{
  v1 = 4271950;
  v2 = type metadata accessor for AwardsCard();
  v3 = v2;
  if ((*(v0 + *(v2 + 24)) & 1) == 0)
  {
    v10 = (v0 + *(v2 + 20));
    v20 = *v10;
    LOBYTE(v21) = *(v10 + 16);
    _print_unlocked<A, B>(_:_:)();
    v11._countAndFlagsBits = 58;
    v11._object = 0xE100000000000000;
    String.append(_:)(v11);
    LOBYTE(v20) = 0;
    _print_unlocked<A, B>(_:_:)();
    v12._countAndFlagsBits = 58;
    v12._object = 0xE100000000000000;
    String.append(_:)(v12);
    type metadata accessor for UUID();
    sub_100072254(&qword_1008EE840, &type metadata accessor for UUID);
    v13._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v13);

    v14._countAndFlagsBits = 540945696;
    v14._object = 0xE400000000000000;
    String.append(_:)(v14);
    v15 = *(v0 + *(v3 + 48));
    if (v15)
    {
      v16 = [v15 description];
      v1 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v9 = v17;

      goto LABEL_7;
    }

LABEL_6:
    v9 = 0xE300000000000000;
    goto LABEL_7;
  }

  _print_unlocked<A, B>(_:_:)();
  v4._countAndFlagsBits = 58;
  v4._object = 0xE100000000000000;
  String.append(_:)(v4);
  _print_unlocked<A, B>(_:_:)();
  v5._countAndFlagsBits = 58;
  v5._object = 0xE100000000000000;
  String.append(_:)(v5);
  type metadata accessor for UUID();
  sub_100072254(&qword_1008EE840, &type metadata accessor for UUID);
  v6._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v6);

  v7._countAndFlagsBits = 540945696;
  v7._object = 0xE400000000000000;
  String.append(_:)(v7);
  if (!*(v0 + *(v3 + 44)))
  {
    goto LABEL_6;
  }

  sub_1000059F8(0, &qword_1008E8750);
  v1 = Array.description.getter();
  v9 = v8;
LABEL_7:
  v18._countAndFlagsBits = v1;
  v18._object = v9;
  String.append(_:)(v18);

  return 0;
}

uint64_t sub_100072254(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000722A8()
{
  v1 = type metadata accessor for TrendsCard();
  _print_unlocked<A, B>(_:_:)();
  v2._countAndFlagsBits = 58;
  v2._object = 0xE100000000000000;
  String.append(_:)(v2);
  _print_unlocked<A, B>(_:_:)();
  v3._countAndFlagsBits = 58;
  v3._object = 0xE100000000000000;
  String.append(_:)(v3);
  type metadata accessor for UUID();
  sub_100071140();
  v4._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v4);

  v5._countAndFlagsBits = 540945696;
  v5._object = 0xE400000000000000;
  String.append(_:)(v5);
  v6._countAndFlagsBits = sub_1000728E0(*(v0 + *(v1 + 36)), *(v0 + *(v1 + 36) + 8));
  String.append(_:)(v6);

  return 0;
}

unint64_t sub_1000723F4()
{
  result = qword_1008DC8F0;
  if (!qword_1008DC8F0)
  {
    sub_100141EEC(&qword_1008DC8F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008DC8F0);
  }

  return result;
}

uint64_t sub_100072470@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v18[1] = a2;
  v4 = *(a1 + 16);
  sub_100141EEC(&qword_1008E7D48);
  type metadata accessor for ModifiedContent();
  v5 = type metadata accessor for Group();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = v18 - v10;
  v12 = *(a1 + 24);
  v18[4] = v4;
  v18[5] = v12;
  v19 = v2;
  v13 = sub_10014A6B0(&qword_1008E7D50, &qword_1008E7D48);
  v21 = v12;
  v22 = v13;
  WitnessTable = swift_getWitnessTable();
  Group<A>.init(content:)();
  v20 = WitnessTable;
  v15 = swift_getWitnessTable();
  sub_100073018(v9, v5, v15);
  v16 = *(v6 + 8);
  v16(v9, v5);
  sub_100073018(v11, v5, v15);
  return (v16)(v11, v5);
}

uint64_t sub_100072690(uint64_t a1)
{
  v2 = type metadata accessor for TrendListMetric();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2 - 8);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  if (!v6)
  {
    return 10536;
  }

  v25 = _swiftEmptyArrayStorage;
  sub_100073020(0, v6, 0);
  v7 = v25;
  v8 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
  v9 = *(v3 + 72);
  do
  {
    sub_100073078(v8, v5);
    v10 = *(v5 + 2);
    v23 = *(v5 + 1);
    v24 = v10;

    v11._countAndFlagsBits = 2108704;
    v11._object = 0xE300000000000000;
    String.append(_:)(v11);
    if (v5[1])
    {
      if (v5[1] == 1)
      {
        v12 = 1952541798;
      }

      else
      {
        v12 = 1853321060;
      }

      v13 = 0xE400000000000000;
    }

    else
    {
      v13 = 0xE200000000000000;
      v12 = 28789;
    }

    v14 = v13;
    String.append(_:)(*&v12);

    v16 = v23;
    v15 = v24;
    sub_100073174(v5);
    v25 = v7;
    v18 = v7[2];
    v17 = v7[3];
    if (v18 >= v17 >> 1)
    {
      sub_100073020((v17 > 1), v18 + 1, 1);
      v7 = v25;
    }

    v7[2] = v18 + 1;
    v19 = &v7[2 * v18];
    v19[4] = v16;
    v19[5] = v15;
    v8 += v9;
    --v6;
  }

  while (v6);
  v23 = v7;
  sub_100140278(&unk_1008E99C0);
  sub_10014A6B0(&qword_1008E8760, &unk_1008E99C0);
  v20 = BidirectionalCollection<>.joined(separator:)();

  return v20;
}

uint64_t sub_1000728E0(uint64_t a1, unsigned __int8 a2)
{
  if (a2 > 1u)
  {
    if (a2 == 2)
    {
      return sub_100072690(a1);
    }

    else
    {
      return 1701736302;
    }
  }

  else
  {
    if (a2)
    {
      v5._countAndFlagsBits = sub_100072690(a1);
      String.append(_:)(v5);

      v3 = 32;
      v7[0] = 0xD000000000000012;
      v7[1] = 0x80000001007538C0;
    }

    else
    {
      v2._countAndFlagsBits = sub_100072690(a1);
      String.append(_:)(v2);

      v3 = 32;
      strcpy(v7, "splash screen");
      HIWORD(v7[1]) = -4864;
    }

    v6 = 0xE100000000000000;
    String.append(_:)(*&v3);

    return v7[0];
  }
}

uint64_t sub_1000729E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v25 = a3;
  v26 = a1;
  v29 = a4;
  v7 = type metadata accessor for ViewSizeCalculator();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v24 - v9;
  sub_100141EEC(&qword_1008E7D48);
  v11 = type metadata accessor for ModifiedContent();
  v28 = *(v11 - 8);
  v12 = __chkstk_darwin(v11);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v24 - v15;
  v27 = *(v7 + 36);
  (*(v8 + 16))(v10, a1, v7);
  v17 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = a2;
  *(v18 + 24) = a3;
  (*(v8 + 32))(v18 + v17, v10, v7);
  v32 = sub_1002FFE08;
  v33 = v18;
  static Alignment.center.getter();
  sub_100140278(&qword_1008E7D58);
  sub_10014A6B0(&unk_1008E7D60, &qword_1008E7D58);
  v19 = v25;
  View.background<A>(_:alignment:)();

  v20 = sub_10014A6B0(&qword_1008E7D50, &qword_1008E7D48);
  v30 = v19;
  v31 = v20;
  WitnessTable = swift_getWitnessTable();
  sub_100073018(v14, v11, WitnessTable);
  v22 = *(v28 + 8);
  v22(v14, v11);
  sub_100073018(v16, v11, WitnessTable);
  return (v22)(v16, v11);
}

uint64_t sub_100072D28()
{
  v1 = *(v0 + 16);
  v2 = type metadata accessor for ViewSizeCalculator();
  v3 = *(*(v2 - 8) + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(*(v2 - 8) + 64);
  v6 = v0 + v4;

  v7 = *(sub_100140278(&qword_1008DC7F0) + 32);
  v8 = type metadata accessor for GeometryProxy();
  v9 = *(v8 - 8);
  if (!(*(v9 + 48))(v0 + v4 + v7, 1, v8))
  {
    (*(v9 + 8))(v6 + v7, v8);
  }

  (*(*(v1 - 8) + 8))(v6 + *(v2 + 36), v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t type metadata accessor for TrendListMetric()
{
  result = qword_1008EB4F0;
  if (!qword_1008EB4F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

char *sub_100072F0C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100140278(&qword_1008DCF58);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100073020(char *a1, int64_t a2, char a3)
{
  result = sub_100072F0C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_100073078(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TrendListMetric();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1000730DC(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 uniqueName];
  if (v3)
  {
    v4 = v3;
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  *a2 = v5;
  a2[1] = v7;
}

uint64_t sub_100073174(uint64_t a1)
{
  v2 = type metadata accessor for TrendListMetric();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000731D0()
{
  v1 = type metadata accessor for Artwork();
  v39 = *(v1 - 8);
  v40 = v1;
  __chkstk_darwin(v1);
  v38 = &v35 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = type metadata accessor for CatalogTipSectionItem();
  __chkstk_darwin(v36);
  v37 = &v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100140278(&qword_1008E4E80);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v35 - v8;
  *&v41 = 0;
  *(&v41 + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(18);
  v43 = v41;
  v10 = type metadata accessor for CatalogTipCard();
  v11 = (v0 + v10[5]);
  v12 = *(v11 + 16);
  v41 = *v11;
  v42 = v12;
  _print_unlocked<A, B>(_:_:)();
  v13._countAndFlagsBits = 58;
  v13._object = 0xE100000000000000;
  String.append(_:)(v13);
  LOBYTE(v41) = *(v0 + v10[6]);
  _print_unlocked<A, B>(_:_:)();
  v14._countAndFlagsBits = 58;
  v14._object = 0xE100000000000000;
  String.append(_:)(v14);
  type metadata accessor for UUID();
  sub_100071140();
  v15._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v15);

  v16._countAndFlagsBits = 540945696;
  v16._object = 0xE400000000000000;
  String.append(_:)(v16);
  v17 = v10[9];
  sub_10001B104(v0 + v17, v9, &qword_1008E4E80);
  v18 = type metadata accessor for CatalogTipSection();
  v19 = *(*(v18 - 8) + 48);
  if (v19(v9, 1, v18) == 1)
  {
    sub_100073798(v9);
    v20 = 0xE300000000000000;
    v21 = 4271950;
  }

  else
  {
    v22 = &v9[*(v18 + 40)];
    v21 = *v22;
    v20 = v22[1];

    sub_1002FC374(v9, type metadata accessor for CatalogTipSection);
  }

  v23._countAndFlagsBits = v21;
  v23._object = v20;
  String.append(_:)(v23);

  v24._countAndFlagsBits = 8250;
  v24._object = 0xE200000000000000;
  String.append(_:)(v24);
  sub_10001B104(v0 + v17, v7, &qword_1008E4E80);
  if (v19(v7, 1, v18) == 1)
  {
    sub_100073798(v7);
    v25 = 0xEA00000000006B72;
    v26 = 0x6F77747241206F4ELL;
  }

  else
  {
    v27 = v37;
    sub_1002FC17C(&v7[*(v18 + 36)], v37);
    sub_1002FC374(v7, type metadata accessor for CatalogTipSection);
    v28 = v38;
    v29 = v39;
    v30 = v40;
    (*(v39 + 16))(v38, v27 + *(v36 + 20), v40);
    sub_1002FC374(v27, type metadata accessor for CatalogTipSectionItem);
    v31 = Artwork.description.getter();
    v25 = v32;
    (*(v29 + 8))(v28, v30);
    v26 = v31;
  }

  v33 = v25;
  String.append(_:)(*&v26);

  return v43;
}

uint64_t sub_100073634(void *a1)
{
  v3 = v1 + *(type metadata accessor for AwardsCardView() + 20);
  v4 = *(v3 + *(type metadata accessor for AwardsCard() + 60));
  if (v4)
  {
    v5 = v4;
    if ([a1 unearned])
    {
      v6 = [v5 unachievedShortDescriptionForAchievement:a1];
      if (!v6)
      {
        goto LABEL_18;
      }
    }

    else
    {
      v6 = [v5 achievedShortDescriptionForAchievement:a1];
      if (!v6)
      {
        goto LABEL_18;
      }
    }

    v8 = v6;
    v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;

    v11 = v7 == 0xD000000000000028 && 0x8000000100747FE0 == v10;
    if (!v11 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      v12 = v7 == 0xD000000000000026 && 0x8000000100748010 == v10;
      if (!v12 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        goto LABEL_19;
      }
    }

LABEL_18:
    v7 = 0;
LABEL_19:

    return v7;
  }

  return 0;
}

uint64_t sub_100073798(uint64_t a1)
{
  v2 = sub_100140278(&qword_1008E4E80);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100073800(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_10007383C(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_100140278(&qword_1008EEF00);
  v38 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v11 = result;
  if (*(v9 + 16))
  {
    v41 = v8;
    v42 = v5;
    v34 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v35 = (v6 + 16);
    v36 = v6;
    v39 = (v6 + 32);
    v18 = result + 64;
    v37 = v9;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v9 + 48);
      v40 = *(v6 + 72);
      v25 = v24 + v40 * v23;
      if (v38)
      {
        (*v39)(v41, v25, v42);
        sub_100006260((*(v9 + 56) + 40 * v23), v43);
      }

      else
      {
        (*v35)(v41, v25, v42);
        sub_100007C5C(*(v9 + 56) + 40 * v23, v43);
      }

      sub_100073C68(&qword_1008E4E10, &type metadata accessor for UUID);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v26 = -1 << *(v11 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v18 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        v6 = v36;
        v9 = v37;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v18 + 8 * v28);
          if (v32 != -1)
          {
            v19 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v27) & ~*(v18 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
      v6 = v36;
      v9 = v37;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      (*v39)((*(v11 + 48) + v40 * v19), v41, v42);
      result = sub_100006260(v43, *(v11 + 56) + 40 * v19);
      ++*(v11 + 16);
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v34;
      goto LABEL_34;
    }

    v33 = 1 << *(v9 + 32);
    v3 = v34;
    if (v33 >= 64)
    {
      bzero(v13, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v33;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

uint64_t sub_100073C20(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_100073C68(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100073CB0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100073CF8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100073D40(uint64_t a1, uint64_t a2)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_1000744F0(a2);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_100073DA0(void *a1)
{
  v2 = [a1 section];
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  v6 = sub_100074048(v3, v5);
  if (v6 <= 3)
  {
    if (v6 > 1)
    {
      v7 = 0xE800000000000000;
      if (v6 == 2)
      {
        v8 = 0x7974697669746361;
      }

      else
      {
        v8 = 0x7374756F6B726F77;
      }
    }

    else if (v6)
    {
      v7 = 0xE700000000000000;
      v8 = 0x7449726F466F67;
    }

    else
    {
      v7 = 0xE300000000000000;
      v8 = 7105633;
    }
  }

  else if (v6 <= 5)
  {
    if (v6 == 4)
    {
      v7 = 0xEB0000000073756CLL;
      v8 = 0x507373656E746966;
    }

    else
    {
      v7 = 0xEE006E6F69746964;
      v8 = 0x45646574696D696CLL;
    }
  }

  else if (v6 == 6)
  {
    v7 = 0x800000010075C600;
    v8 = 0xD000000000000010;
  }

  else if (v6 == 7)
  {
    v7 = 0xEC000000736E6F69;
    v8 = 0x74697465706D6F63;
  }

  else
  {
    v9 = [a1 section];
    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v11;

    v8 = v10;
  }

  v12 = v7;
  String.append(_:)(*&v8);

  v13._countAndFlagsBits = 47;
  v13._object = 0xE100000000000000;
  String.append(_:)(v13);
  v14 = [a1 template];
  v15 = [v14 uniqueName];

  if (v15)
  {
    v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = v17;
  }

  else
  {
    v18 = 0xE700000000000000;
    v16 = 0x4E574F4E4B4E55;
  }

  v19._countAndFlagsBits = v16;
  v19._object = v18;
  String.append(_:)(v19);

  return 0;
}

uint64_t sub_100073FFC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100073DA0(*(v1 + 8));
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_100074048(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 7105633 && a2 == 0xE300000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || a1 == 5000257 && a2 == 0xE300000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7449726F466F67 && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || a1 == 0x495F524F465F4F47 && a2 == 0xE900000000000054 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7974697669746361 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || a1 == 0x5954495649544341 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7374756F6B726F77 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || a1 == 0x5354554F4B524F57 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x507373656E746966 && a2 == 0xEB0000000073756CLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || a1 == 0x5F5353454E544946 && a2 == 0xEC00000053554C50 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x45646574696D696CLL && a2 == 0xEE006E6F69746964 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || a1 == 0x5F444554494D494CLL && a2 == 0xEF4E4F4954494445 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000010 && 0x800000010075C600 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || a1 == 0xD000000000000012 && 0x8000000100765410 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x74697465706D6F63 && a2 == 0xEC000000736E6F69 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || a1 == 0x54495445504D4F43 && a2 == 0xEC000000534E4F49)
  {

    return 7;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}

uint64_t sub_1000744F0(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v15 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for DispatchQoS();
  v6 = *(v14 - 8);
  __chkstk_darwin(v14);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000059F8(0, &qword_1008E3FD0);
  v9 = static OS_dispatch_queue.main.getter();
  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v11 = swift_allocObject();
  v11[2] = v10;
  v11[3] = a1;
  v11[4] = ObjectType;
  aBlock[4] = sub_10006B910;
  aBlock[5] = v11;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000449A8;
  aBlock[3] = &unk_10085BF50;
  v12 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_100026E98(&qword_1008E33B0, &type metadata accessor for DispatchWorkItemFlags);
  sub_100140278(&unk_1008E7F50);
  sub_10014A6B0(&qword_1008E33C0, &unk_1008E7F50);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v12);

  (*(v15 + 8))(v5, v3);
  return (*(v6 + 8))(v8, v14);
}

uint64_t sub_100074864(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v16 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for DispatchQoS();
  v7 = *(v15 - 8);
  __chkstk_darwin(v15);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000059F8(0, &qword_1008E3FD0);
  v10 = static OS_dispatch_queue.main.getter();
  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v12 = swift_allocObject();
  v12[2] = v11;
  v12[3] = a1;
  v12[4] = a2;
  aBlock[4] = sub_10008191C;
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000449A8;
  aBlock[3] = &unk_100857048;
  v13 = _Block_copy(aBlock);
  sub_10000B210(a1);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_100026988(&qword_1008E33B0, 255, &type metadata accessor for DispatchWorkItemFlags);
  sub_100140278(&unk_1008E7F50);
  sub_10014A6B0(&qword_1008E33C0, &unk_1008E7F50);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v13);

  (*(v16 + 8))(v6, v4);
  return (*(v7 + 8))(v9, v15);
}

uint64_t sub_100074B94()
{

  if (*(v0 + 24))
  {
  }

  return _swift_deallocObject(v0, 40, 7);
}

unint64_t sub_100074BFC()
{
  result = qword_1008E0100;
  if (!qword_1008E0100)
  {
    sub_100141EEC(&qword_1008E0020);
    sub_1001D13D0();
    sub_10005BD44(&qword_1008DB010, &type metadata accessor for _TaskModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E0100);
  }

  return result;
}

void sub_100074CB8(unint64_t a1)
{
  v2 = v1;
  v64 = a1;
  v3 = sub_100140278(&qword_1008EBF28);
  v69 = *(v3 - 8);
  v70 = v3;
  __chkstk_darwin(v3);
  v68 = v63 - v4;
  v5 = sub_100140278(&qword_1008EBF30);
  v66 = *(v5 - 8);
  v67 = v5;
  __chkstk_darwin(v5);
  v65 = v63 - v6;
  v7 = sub_100140278(&qword_1008E1760);
  __chkstk_darwin(v7 - 8);
  v71 = v63 - v8;
  v9 = *&v1[OBJC_IVAR____TtC10FitnessApp18SummaryCoordinator_context];
  [*(*(*(v9 + OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_activityDataProvider) + OBJC_IVAR____TtC10FitnessApp20ActivityDataProvider_activitySummaryListener) + OBJC_IVAR____TtC10FitnessApp29ActivitySummaryChangeListener_observers) addObject:v1];
  v10 = *(v9 + OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_historyDataProvider);
  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v12 = swift_allocObject();
  *(v12 + 16) = sub_100077680;
  *(v12 + 24) = v11;
  v13 = OBJC_IVAR___CHHistoryDataProvider_onChangeHandlers;
  swift_beginAccess();
  v14 = *&v10[v13];
  v15 = v10;
  swift_retain_n();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v10[v13] = v14;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v14 = sub_1001A1E7C(0, v14[2] + 1, 1, v14);
    *&v10[v13] = v14;
  }

  v18 = v14[2];
  v17 = v14[3];
  if (v18 >= v17 >> 1)
  {
    v14 = sub_1001A1E7C((v17 > 1), v18 + 1, 1, v14);
  }

  v14[2] = v18 + 1;
  v19 = &v14[2 * v18];
  v19[4] = sub_100077508;
  v19[5] = v12;
  *&v10[v13] = v14;
  swift_endAccess();

  v20 = OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_awardsDataProvider;
  v21 = *(v9 + OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_awardsDataProvider);
  sub_100026988(&qword_1008EBF38, v22, type metadata accessor for SummaryCoordinator);
  v23 = v21;
  AAUIAwardsDataProvider.add(observer:)();

  v24 = (v64 >> 2) & 1;
  v25 = *(v9 + v20);
  AAUIAwardsDataProvider.activate(isFitnessPlusSubscriber:)(v24);
  if (v26)
  {
  }

  v64 = 0;

  v27 = type metadata accessor for TaskPriority();
  v28 = *(v27 - 8);
  v63[0] = *(v28 + 56);
  v63[1] = v28 + 56;
  v29 = v71;
  (v63[0])(v71, 1, 1, v27);
  v30 = swift_allocObject();
  v30[2] = 0;
  v30[3] = 0;
  v30[4] = v2;
  v31 = v2;
  sub_10026E198(0, 0, v29, &unk_1006EE0E8, v30);

  v32 = *(v9 + OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_friendsSetupCoordinator);
  swift_beginAccess();
  v33 = v32;
  sub_100140278(&unk_1008F6FE0);
  v34 = v65;
  Published.projectedValue.getter();
  swift_endAccess();

  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_10014A6B0(&qword_1008EBF40, &qword_1008EBF30);
  v35 = v67;
  v36 = Publisher<>.sink(receiveValue:)();

  (*(v66 + 8))(v34, v35);
  *&v31[OBJC_IVAR____TtC10FitnessApp18SummaryCoordinator_friendsSetupStateCancellable] = v36;

  v37 = *(v9 + OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_fitnessPlusCardDataProvider);
  swift_beginAccess();
  v38 = v37;
  sub_100140278(&qword_1008EBF48);
  v39 = v68;
  Published.projectedValue.getter();
  swift_endAccess();

  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_10014A6B0(&qword_1008EBF50, &qword_1008EBF28);
  v40 = v70;
  Publisher<>.sink(receiveValue:)();

  (*(v69 + 8))(v39, v40);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  (v63[0])(v29, 1, 1, v27);
  v41 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v42 = swift_allocObject();
  v42[2] = 0;
  v42[3] = 0;
  v42[4] = v41;
  sub_10026E198(0, 0, v29, &unk_1006EE0F0, v42);

  v43 = *(v9 + OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_catalogTipDataProvider);
  v44 = swift_allocObject();
  v45 = swift_unknownObjectWeakInit();
  v46 = *(v43 + 32);
  __chkstk_darwin(v45);
  v63[-2] = sub_1003E3FE0;
  v63[-1] = v44;
  v47 = *(*v46 + class metadata base offset for ManagedBuffer + 16);
  v48 = (*(*v46 + 48) + 3) & 0x1FFFFFFFCLL;

  os_unfair_lock_lock((v46 + v48));
  sub_100282F88((v46 + v47));
  os_unfair_lock_unlock((v46 + v48));

  v49 = *(v9 + OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_trendsDataProvider);
  v50 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v51 = swift_allocObject();
  *(v51 + 16) = sub_10007BDE8;
  *(v51 + 24) = v50;
  v52 = OBJC_IVAR____TtC10FitnessApp18TrendsDataProvider_observers;
  swift_beginAccess();
  v53 = v49;
  swift_retain_n();
  v54 = swift_isUniquelyReferenced_nonNull_native();
  v73 = *&v49[v52];
  *&v49[v52] = 0x8000000000000000;
  sub_10048FCBC(sub_10007BD60, v51, v31, v54);
  *&v49[v52] = v73;
  swift_endAccess();

  v55 = OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_metricsDataProvider;
  *(*(v9 + OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_metricsDataProvider) + OBJC_IVAR____TtC10FitnessApp19MetricsDataProvider_delegate + 8) = &off_100854818;
  swift_unknownObjectWeakAssign();
  v56 = *(v9 + v55);
  sub_1003C4424();

  [*(*(v9 + OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_fitnessAppContext) + OBJC_IVAR___CHFitnessAppContext_pregnancyStateProvider) addObserver:v31];
  v57 = [objc_opt_self() defaultCenter];
  v58 = [objc_opt_self() didUpdatePauseStateNotification];
  v59 = [objc_opt_self() mainQueue];
  v60 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_1003E4000;
  aBlock[5] = v60;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100026F8C;
  aBlock[3] = &unk_100857228;
  v61 = _Block_copy(aBlock);

  v62 = [v57 addObserverForName:v58 object:0 queue:v59 usingBlock:v61];
  _Block_release(v61);
  swift_unknownObjectRelease();
}

uint64_t sub_100075798()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000757D0()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100075810()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100075854()
{

  sub_1000A73A4(*(v0 + 64), *(v0 + 72));

  return _swift_deallocObject(v0, 73, 7);
}

unint64_t sub_1000758B8()
{
  result = qword_1008E0110;
  if (!qword_1008E0110)
  {
    sub_100141EEC(&qword_1008E0010);
    sub_100075B18();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E0110);
  }

  return result;
}

void sub_100075944(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = OBJC_IVAR____TtC10FitnessApp31ActivityDashboardViewController_awaitingPushForCardTypeFamily;
    v6 = *(Strong + OBJC_IVAR____TtC10FitnessApp31ActivityDashboardViewController_awaitingPushForCardTypeFamily);
    if (v6 != 20)
    {
      v7 = *(a2 + 16);
      v8 = &_swiftEmptyArrayStorage;
      if (v7)
      {
        v22 = &_swiftEmptyArrayStorage;
        sub_100185CEC(0, v7, 0);
        v8 = &_swiftEmptyArrayStorage;
        v9 = a2 + 32;
        do
        {
          sub_100007C5C(v9, v19);
          v10 = v20;
          v11 = v21;
          sub_1000066AC(v19, v20);
          v12 = (*(v11 + 16))(v10, v11);
          if (v14 > 1u)
          {
            if (v14 == 2)
            {
              v15 = 8;
            }

            else
            {
              v15 = byte_1006F2B7A[v12];
            }
          }

          else if (v14)
          {
            sub_10001D4F8(v12, v13, 1);
            v15 = 9;
          }

          else
          {
            v15 = byte_1006F2B84[v12];
          }

          sub_100005A40(v19);
          v22 = v8;
          v17 = v8[2];
          v16 = v8[3];
          if (v17 >= v16 >> 1)
          {
            sub_100185CEC((v16 > 1), v17 + 1, 1);
            v8 = v22;
          }

          v8[2] = v17 + 1;
          *(v8 + v17 + 32) = v15;
          v9 += 40;
          --v7;
        }

        while (v7);
      }

      v18 = sub_100358270(v6, v8);

      if (v18)
      {
        v4[v5] = 20;
        [v4 showSummaryCardWithIdentifier:v6];
      }
    }
  }
}

unint64_t sub_100075B18()
{
  result = qword_1008E0118;
  if (!qword_1008E0118)
  {
    sub_100141EEC(&qword_1008E0120);
    sub_100075BA4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E0118);
  }

  return result;
}

unint64_t sub_100075BA4()
{
  result = qword_1008E0128;
  if (!qword_1008E0128)
  {
    sub_100141EEC(&qword_1008E0130);
    sub_10014A6B0(&qword_1008E0060, &qword_1008E0050);
    sub_10014A6B0(&qword_1008E0068, &qword_1008E0040);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E0128);
  }

  return result;
}

uint64_t sub_100075CA8(uint64_t a1)
{
  swift_beginAccess();
  v2 = *(a1 + OBJC_IVAR___CHHistoryDataProvider_lock);

  os_unfair_lock_lock(v2 + 4);
  sub_100317B70(v3);
  os_unfair_lock_unlock(v2 + 4);

  v4 = swift_beginAccess();
  v5 = __chkstk_darwin(v4);
  __chkstk_darwin(v5);

  os_unfair_lock_lock(v2 + 4);
  sub_100317D04(v6);
  os_unfair_lock_unlock(v2 + 4);

  v8 = __chkstk_darwin(v7);
  __chkstk_darwin(v8);
  os_unfair_lock_lock(v2 + 4);
  sub_100317D04(v9);
  os_unfair_lock_unlock(v2 + 4);
  swift_beginAccess();

  sub_100076030(v10);
}

unint64_t sub_100075EB0()
{
  result = qword_1008E6868;
  if (!qword_1008E6868)
  {
    sub_100141EEC(&qword_1008E6820);
    sub_100075F78();
    sub_10005BD44(&qword_1008DB010, &type metadata accessor for _TaskModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E6868);
  }

  return result;
}

unint64_t sub_100075F78()
{
  result = qword_1008E6870;
  if (!qword_1008E6870)
  {
    sub_100141EEC(&qword_1008E6808);
    sub_10014A6B0(&qword_1008E6878, &qword_1008E6800);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E6870);
  }

  return result;
}

uint64_t sub_100076030(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = (&v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1000059F8(0, &qword_1008E3FD0);
  *v7 = static OS_dispatch_queue.main.getter();
  (*(v5 + 104))(v7, enum case for DispatchPredicate.onQueue(_:), v4);
  v8 = _dispatchPreconditionTest(_:)();
  result = (*(v5 + 8))(v7, v4);
  if (v8)
  {
    v10 = OBJC_IVAR___CHHistoryDataProvider_onChangeHandlers;
    swift_beginAccess();
    v11 = *(v2 + v10);
    v12 = *(v11 + 16);

    if (!v12)
    {
    }

    v13 = 0;
    v14 = v11 + 40;
    while (v13 < *(v11 + 16))
    {
      ++v13;
      v15 = *(v14 - 8);
      v16 = a1;

      v15(&v16);

      v14 += 16;
      if (v12 == v13)
      {
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1000761E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v25 = sub_100140278(&qword_1008E0040);
  __chkstk_darwin(v25);
  v4 = &v23 - v3;
  v23 = sub_100140278(&qword_1008E0048);
  __chkstk_darwin(v23);
  v6 = &v23 - v5;
  v24 = sub_100140278(&qword_1008E0050);
  __chkstk_darwin(v24);
  v8 = &v23 - v7;
  v9 = type metadata accessor for DynamicTypeSize();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v23 - v14;
  v16 = a1;
  sub_10005491C(&v23 - v14);
  (*(v10 + 104))(v13, enum case for DynamicTypeSize.xxLarge(_:), v9);
  sub_10005BD44(&qword_1008DC898, &type metadata accessor for DynamicTypeSize);
  LOBYTE(a1) = dispatch thunk of static Comparable.< infix(_:_:)();
  v17 = *(v10 + 8);
  v17(v13, v9);
  v17(v15, v9);
  if (a1)
  {
    *v8 = static VerticalAlignment.top.getter();
    *(v8 + 1) = 0;
    v8[16] = 0;
    v18 = sub_100140278(&qword_1008E0070);
    sub_1001CF160(v16, &v8[*(v18 + 44)]);
    v19 = &qword_1008E0050;
    sub_10001B104(v8, v6, &qword_1008E0050);
    swift_storeEnumTagMultiPayload();
    sub_10014A6B0(&qword_1008E0060, &qword_1008E0050);
    sub_10014A6B0(&qword_1008E0068, &qword_1008E0040);
    _ConditionalContent<>.init(storage:)();
    v20 = v8;
  }

  else
  {
    *v4 = static HorizontalAlignment.center.getter();
    *(v4 + 1) = 0;
    v4[16] = 0;
    v21 = sub_100140278(&qword_1008E0058);
    sub_100076AD0(v16, &v4[*(v21 + 44)]);
    v19 = &qword_1008E0040;
    sub_10001B104(v4, v6, &qword_1008E0040);
    swift_storeEnumTagMultiPayload();
    sub_10014A6B0(&qword_1008E0060, &qword_1008E0050);
    sub_10014A6B0(&qword_1008E0068, &qword_1008E0040);
    _ConditionalContent<>.init(storage:)();
    v20 = v4;
  }

  return sub_10000EA04(v20, v19);
}

uint64_t sub_100076644()
{
  v0 = sub_100140278(&qword_1008E1760);
  __chkstk_darwin(v0 - 8);
  v2 = &v9 - v1;
  v3 = type metadata accessor for TaskPriority();
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  v4 = swift_allocObject();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  type metadata accessor for MainActor();

  v6 = static MainActor.shared.getter();
  v7 = swift_allocObject();
  v7[2] = v6;
  v7[3] = &protocol witness table for MainActor;
  v7[4] = v4;

  sub_10026E7AC(0, 0, v2, &unk_1006DBE18, v7);
}

uint64_t sub_1000767C0()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100076800@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for SmallAwardsCardView();
  v29 = *(v4 - 8);
  v5 = *(v29 + 64);
  __chkstk_darwin(v4 - 8);
  v6 = sub_100140278(&qword_1008E0010);
  v7 = v6 - 8;
  __chkstk_darwin(v6);
  v9 = &v28 - v8;
  v10 = sub_100140278(&qword_1008E0018);
  v11 = v10 - 8;
  __chkstk_darwin(v10);
  v13 = &v28 - v12;
  sub_1000761E8(v2, v9);
  v14 = static Edge.Set.bottom.getter();
  EdgeInsets.init(_all:)();
  v15 = &v9[*(v7 + 44)];
  *v15 = v14;
  *(v15 + 1) = v16;
  *(v15 + 2) = v17;
  *(v15 + 3) = v18;
  *(v15 + 4) = v19;
  v15[40] = 0;
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  sub_100015E80(v9, v13, &qword_1008E0010);
  v20 = &v13[*(v11 + 44)];
  v21 = v35;
  *(v20 + 4) = v34;
  *(v20 + 5) = v21;
  *(v20 + 6) = v36;
  v22 = v31;
  *v20 = v30;
  *(v20 + 1) = v22;
  v23 = v33;
  *(v20 + 2) = v32;
  *(v20 + 3) = v23;
  sub_10007753C(v2, &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = (*(v29 + 80) + 16) & ~*(v29 + 80);
  v25 = swift_allocObject();
  sub_1000775A0(&v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v25 + v24);
  v26 = (a1 + *(sub_100140278(&qword_1008E0020) + 36));
  type metadata accessor for _TaskModifier();
  static TaskPriority.userInitiated.getter();
  *v26 = &unk_1006DB5F8;
  v26[1] = v25;
  return sub_100015E80(v13, a1, &qword_1008E0018);
}

uint64_t sub_100076AD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v101 = a2;
  v104 = type metadata accessor for Font.Leading();
  v114 = *(v104 - 8);
  __chkstk_darwin(v104);
  v4 = &v94 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for SmallAwardsCardView();
  v108 = *(v5 - 8);
  v6 = *(v108 + 64);
  v7 = (v5 - 8);
  __chkstk_darwin(v5 - 8);
  v115 = sub_100140278(&qword_1008E00D0);
  v112 = *(v115 - 8);
  v8 = __chkstk_darwin(v115);
  v111 = &v94 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v110 = &v94 - v10;
  v11 = sub_100140278(&qword_1008E00D8);
  v12 = v11 - 8;
  v13 = __chkstk_darwin(v11);
  v109 = &v94 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = &v94 - v15;
  v113 = &v94 - v15;
  sub_100140278(&qword_1008DC6B0);
  State.projectedValue.getter();
  v17 = &v16[*(v12 + 44)];
  *v17 = 0;
  v17[8] = 0;
  v149 = *(a1 + v7[17]);
  sub_100140278(&qword_1008E0038);
  State.wrappedValue.getter();
  v18 = v133[0];
  v19 = v7[18];
  v100 = v7;
  v20 = (a1 + v19);
  v21 = *v20;
  v22 = *(v20 + 1);
  LOBYTE(v149) = v21;
  *(&v149 + 1) = v22;
  sub_100140278(&qword_1008DDBB8);
  State.wrappedValue.getter();
  v23 = 0.0;
  if (LOBYTE(v133[0]))
  {
    v23 = 1.0;
  }

  *&v149 = v18;
  *(&v149 + 1) = v23;
  v99 = a1;
  sub_10007753C(a1, &v94 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = (*(v108 + 80) + 16) & ~*(v108 + 80);
  v25 = swift_allocObject();
  sub_1000775A0(&v94 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v25 + v24);
  sub_100140278(&qword_1008E00E0);
  sub_1001D134C(&qword_1008E00E8, &qword_1008E00E0, &unk_1006DB6F0, sub_100077604);
  View.onTapGesture(count:perform:)();

  v26 = (a1 + v7[10]);
  v27 = v26[1];
  *&v149 = *v26;
  *(&v149 + 1) = v27;
  v98 = sub_10000FCBC();

  v28 = Text.init<A>(_:)();
  v30 = v29;
  v32 = v31;
  v107 = v33;
  static Font.caption2.getter();
  v97 = enum case for Font.Leading.tight(_:);
  v34 = v114;
  v96 = *(v114 + 104);
  v35 = v104;
  v96(v4);
  v94 = v4;
  Font.leading(_:)();

  v36 = *(v34 + 8);
  v114 = v34 + 8;
  v95 = v36;
  v36(v4, v35);
  v102 = Text.font(_:)();
  v103 = v37;
  v108 = v38;
  v40 = v39;

  sub_10004642C(v28, v30, v32 & 1);

  KeyPath = swift_getKeyPath();
  LODWORD(v107) = static Edge.Set.all.getter();
  EdgeInsets.init(_all:)();
  v42 = v41;
  v44 = v43;
  v46 = v45;
  v48 = v47;
  v105 = v40 & 1;
  LOBYTE(v149) = v40 & 1;
  LOBYTE(v133[0]) = 0;
  v49 = (v99 + v100[11]);
  v50 = v49[1];
  *&v149 = *v49;
  *(&v149 + 1) = v50;

  v51 = Text.init<A>(_:)();
  v53 = v52;
  LOBYTE(v35) = v54;
  static Font.caption2.getter();
  v55 = v94;
  v56 = v104;
  (v96)(v94, v97, v104);
  Font.leading(_:)();

  v95(v55, v56);
  v57 = Text.font(_:)();
  v104 = v58;
  v60 = v59;
  v114 = v61;

  sub_10004642C(v51, v53, v35 & 1);

  v99 = swift_getKeyPath();
  LODWORD(v100) = static HierarchicalShapeStyle.secondary.getter();
  LODWORD(v98) = static Edge.Set.all.getter();
  EdgeInsets.init(_all:)();
  v63 = v62;
  v65 = v64;
  v67 = v66;
  v69 = v68;
  LOBYTE(v149) = v60 & 1;
  v97 = v60 & 1;
  LOBYTE(v133[0]) = 0;
  v70 = v109;
  sub_10001B104(v113, v109, &qword_1008E00D8);
  v71 = v111;
  v72 = *(v112 + 16);
  v73 = v115;
  v72(v111, v110, v115);
  v74 = v70;
  v75 = v101;
  sub_10001B104(v74, v101, &qword_1008E00D8);
  v76 = sub_100140278(&qword_1008E00F8);
  v72((v75 + v76[12]), v71, v73);
  v77 = v75 + v76[16];
  *v77 = 0;
  *(v77 + 8) = 0;
  v78 = (v75 + v76[20]);
  *&v123 = v102;
  *(&v123 + 1) = v108;
  LOBYTE(v124) = v105;
  *(&v124 + 1) = *v122;
  DWORD1(v124) = *&v122[3];
  *(&v124 + 1) = v103;
  *&v125 = KeyPath;
  BYTE8(v125) = 1;
  *(&v125 + 9) = *v121;
  HIDWORD(v125) = *&v121[3];
  LOBYTE(v126) = v107;
  DWORD1(v126) = *&v120[3];
  *(&v126 + 1) = *v120;
  *(&v126 + 1) = v42;
  *&v127[0] = v44;
  *(&v127[0] + 1) = v46;
  *&v127[1] = v48;
  BYTE8(v127[1]) = 0;
  v79 = v124;
  *v78 = v123;
  v78[1] = v79;
  v80 = v125;
  v81 = v126;
  v82 = v127[0];
  *(v78 + 73) = *(v127 + 9);
  v78[3] = v81;
  v78[4] = v82;
  v78[2] = v80;
  v83 = (v75 + v76[24]);
  v84 = v57;
  *&v128 = v57;
  v85 = v104;
  *(&v128 + 1) = v104;
  LOBYTE(v129) = v60 & 1;
  DWORD1(v129) = *(v119 + 3);
  *(&v129 + 1) = v119[0];
  v86 = v114;
  v87 = v99;
  *(&v129 + 1) = v114;
  *&v130 = v99;
  BYTE8(v130) = 1;
  BYTE11(v130) = v118;
  *(&v130 + 9) = v117;
  LODWORD(v72) = v100;
  HIDWORD(v130) = v100;
  LOBYTE(v76) = v98;
  LOBYTE(v131) = v98;
  DWORD1(v131) = *&v116[3];
  *(&v131 + 1) = *v116;
  *(&v131 + 1) = v63;
  *&v132[0] = v65;
  *(&v132[0] + 1) = v67;
  *&v132[1] = v69;
  BYTE8(v132[1]) = 0;
  v88 = v129;
  *v83 = v128;
  v83[1] = v88;
  v89 = v130;
  v90 = v131;
  v91 = v132[0];
  *(v83 + 73) = *(v132 + 9);
  v83[3] = v90;
  v83[4] = v91;
  v83[2] = v89;
  sub_10001B104(&v123, &v149, &qword_1008DE058);
  sub_10001B104(&v128, &v149, &qword_1008E00C8);
  v92 = *(v112 + 8);
  v92(v110, v115);
  sub_10000EA04(v113, &qword_1008E00D8);
  v133[0] = v84;
  v133[1] = v85;
  v134 = v97;
  *v135 = v119[0];
  *&v135[3] = *(v119 + 3);
  v136 = v86;
  v137 = v87;
  v138 = 1;
  v139 = v117;
  v140 = v118;
  v141 = v72;
  v142 = v76;
  *&v143[3] = *&v116[3];
  *v143 = *v116;
  v144 = v63;
  v145 = v65;
  v146 = v67;
  v147 = v69;
  v148 = 0;
  sub_10000EA04(v133, &qword_1008E00C8);
  *&v149 = v102;
  *(&v149 + 1) = v108;
  v150 = v105;
  *v151 = *v122;
  *&v151[3] = *&v122[3];
  v152 = v103;
  v153 = KeyPath;
  v154 = 1;
  *v155 = *v121;
  *&v155[3] = *&v121[3];
  v156 = v107;
  *v157 = *v120;
  *&v157[3] = *&v120[3];
  v158 = v42;
  v159 = v44;
  v160 = v46;
  v161 = v48;
  v162 = 0;
  sub_10000EA04(&v149, &qword_1008DE058);
  v92(v111, v115);
  return sub_10000EA04(v109, &qword_1008E00D8);
}

uint64_t sub_10007753C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SmallAwardsCardView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000775A0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SmallAwardsCardView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_100077604()
{
  result = qword_1008E00F0;
  if (!qword_1008E00F0)
  {
    sub_100141EEC(&qword_1008DC850);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E00F0);
  }

  return result;
}

void sub_100077688()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_100069D98(0x2Fu);
  }
}

uint64_t sub_1000776E0@<X0>(unint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = a2[3];
  v6 = a2[4];
  sub_1000066AC(a2, v5);
  v7 = (*(v6 + 16))(v5, v6);
  v9 = v8;
  v11 = v10;
  sub_100078198(v7, v8, v10, v39);
  sub_10001D4F8(v7, v9, v11);
  v12 = v40;
  v13 = v41;
  sub_1000066AC(v39, v40);
  v14 = a2[3];
  v15 = a2[4];
  sub_1000066AC(a2, v14);
  v16 = (*(v15 + 16))(v14, v15);
  v18 = v17;
  v20 = v19;
  v21 = a2[3];
  v22 = a2[4];
  sub_1000066AC(a2, v21);
  LOBYTE(v21) = (*(v22 + 24))(v21, v22);
  sub_100007C5C(a2, v36);
  (*(v13 + 8))(&v37, v16, v18, v20, v21 & 1, v36, *(a3 + OBJC_IVAR____TtC10FitnessApp18SummaryCoordinator_editMode), v12, v13);
  sub_10001D4F8(v16, v18, v20);
  sub_10000EA04(v36, &qword_1008DCC60);
  if (!v38)
  {
    sub_10000EA04(&v37, &qword_1008DCC60);
    v28 = v39;
    goto LABEL_5;
  }

  sub_100006260(&v37, v42);
  sub_100005A40(v39);
  v23 = v43;
  v24 = v44;
  sub_1000066AC(v42, v43);
  v25 = (*(v24 + 48))(v23, v24);
  v26 = a2[3];
  v27 = a2[4];
  sub_1000066AC(a2, v26);
  if (v25 == (*(v27 + 48))(v26, v27))
  {
    v28 = v42;
LABEL_5:
    result = sub_100005A40(v28);
    *(a4 + 32) = 0;
    *a4 = 0u;
    *(a4 + 16) = 0u;
    return result;
  }

  v30 = OBJC_IVAR____TtC10FitnessApp18SummaryCoordinator_activeCards;
  swift_beginAccess();
  v31 = *(a3 + v30);
  result = swift_isUniquelyReferenced_nonNull_native();
  *(a3 + v30) = v31;
  if (result)
  {
    v32 = a1;
    if ((a1 & 0x8000000000000000) == 0)
    {
      goto LABEL_8;
    }

LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  result = sub_10057F680(v31);
  v31 = result;
  *(a3 + v30) = result;
  v32 = a1;
  if ((a1 & 0x8000000000000000) != 0)
  {
    goto LABEL_12;
  }

LABEL_8:
  if (v31[2] <= v32)
  {
LABEL_13:
    __break(1u);
    return result;
  }

  sub_1003E3BF4(&v31[5 * v32 + 4], v42);
  *(a3 + v30) = v31;
  swift_endAccess();
  sub_100007C5C(v42, a4);
  return sub_100005A40(v42);
}

void *sub_1000779F4(unsigned __int8 a1, char a2)
{
  v5 = [objc_opt_self() standardUserDefaults];
  v6 = [v5 BOOLForKey:@"ActivityDidDisplayTrendsOnboarding"];

  if (v6)
  {
    v7 = 1;
  }

  else
  {
    if (qword_1008DAFA0 != -1)
    {
      swift_once();
    }

    v7 = byte_1008F8688;
  }

  v8 = [*(v2 + 64) isWheelchairUser];
  v9 = *(*(v2 + 8) + OBJC_IVAR____TtC10FitnessApp25TrendsAvailabilityManager_trendsAvailability);
  if (a1 == 9)
  {
    result = sub_10007BE78(v8, a2 & 1);
  }

  else
  {
    result = sub_1003579E8(a1, v8, a2 & 1);
  }

  if ((v7 & 1) != 0 && v9 != 3 && v9 != 2)
  {

    v11 = static os_log_type_t.error.getter();
    v12 = HKLogActivity;
    if (os_log_type_enabled(HKLogActivity, v11))
    {
      v13 = v12;
      v14 = swift_slowAlloc();
      *v14 = 67109376;
      *(v14 + 4) = 1;
      *(v14 + 8) = 2048;
      *(v14 + 10) = v9;
      _os_log_impl(&_mh_execute_header, v13, v11, "TrendsCardFactory failed to generate trends type with state %{BOOL}d, %ld", v14, 0x12u);
    }

    return 0;
  }

  return result;
}

uint64_t sub_100077CE0(char *a1, uint64_t a2, uint64_t a3)
{
  v26 = a3;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v29 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v27 = *(v8 - 8);
  v28 = v8;
  __chkstk_darwin(v8);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchPredicate();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = (&v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = swift_beginAccess();
  v16 = *&a1[OBJC_IVAR___CHHistoryDataProvider_queue];
  if (v16)
  {
    v17 = *(a2 + 16);
    *v14 = v16;
    (*(v12 + 104))(v14, enum case for DispatchPredicate.onQueue(_:), v11);

    v18 = v16;
    v19 = _dispatchPreconditionTest(_:)();
    result = (*(v12 + 8))(v14, v11);
    if (v19)
    {
      aBlock[0] = &_swiftEmptyDictionarySingleton;
      v20 = sub_100447734(&_swiftEmptyDictionarySingleton, v17, aBlock);

      v21 = sub_100449E28(v20, aBlock[0]);

      sub_1000059F8(0, &qword_1008E3FD0);
      v22 = static OS_dispatch_queue.main.getter();
      v23 = swift_allocObject();
      v23[2] = a1;
      v23[3] = a2;
      v23[4] = v26;
      v23[5] = v21;
      aBlock[4] = sub_100075F6C;
      aBlock[5] = v23;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1000449A8;
      aBlock[3] = &unk_10085AFA8;
      v24 = _Block_copy(aBlock);
      v25 = a1;

      static DispatchQoS.unspecified.getter();
      aBlock[0] = &_swiftEmptyArrayStorage;
      sub_100045E60(&qword_1008E33B0, &type metadata accessor for DispatchWorkItemFlags);
      sub_100140278(&unk_1008E7F50);
      sub_10014A6B0(&qword_1008E33C0, &unk_1008E7F50);
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v24);

      (*(v29 + 8))(v7, v5);
      return (*(v27 + 8))(v10, v28);
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_100078148()
{

  return _swift_deallocObject(v0, 48, 7);
}

unint64_t sub_100078198@<X0>(unint64_t result@<X0>, uint64_t a2@<X1>, unsigned __int8 a3@<W2>, uint64_t *a4@<X8>)
{
  if (a3 <= 1u)
  {
    if (!a3)
    {
      v5 = v4 + OBJC_IVAR____TtC10FitnessApp18SummaryCoordinator_metricsCardFactory;
      v6 = *(v4 + OBJC_IVAR____TtC10FitnessApp18SummaryCoordinator_metricsCardFactory);
      v7 = *(v4 + OBJC_IVAR____TtC10FitnessApp18SummaryCoordinator_metricsCardFactory + 8);
      v8 = &type metadata for MetricsCardFactory;
      v9 = &off_1008575E0;
LABEL_4:
      v50 = *(v5 + 16);
      a4[3] = v8;
      a4[4] = v9;
      *a4 = v6;
      a4[1] = v7;
      a4[2] = v50;
      v10 = v6;
      v11 = v7;
LABEL_13:
      v37 = v50;
LABEL_14:

      return v37;
    }

    goto LABEL_12;
  }

  if (a3 == 2)
  {
LABEL_6:
    v12 = v4 + OBJC_IVAR____TtC10FitnessApp18SummaryCoordinator_trendsCardFactory;
    v13 = *(v4 + OBJC_IVAR____TtC10FitnessApp18SummaryCoordinator_trendsCardFactory + 48);
    v54 = *(v4 + OBJC_IVAR____TtC10FitnessApp18SummaryCoordinator_trendsCardFactory + 32);
    v55 = v13;
    v56 = *(v4 + OBJC_IVAR____TtC10FitnessApp18SummaryCoordinator_trendsCardFactory + 64);
    v14 = *(v4 + OBJC_IVAR____TtC10FitnessApp18SummaryCoordinator_trendsCardFactory + 16);
    v52 = *(v4 + OBJC_IVAR____TtC10FitnessApp18SummaryCoordinator_trendsCardFactory);
    v53 = v14;
    a4[3] = &type metadata for TrendsCardFactory;
    a4[4] = &off_100854130;
    v16 = swift_allocObject();
    *a4 = v16;
    v17 = *(v12 + 48);
    *(v16 + 48) = *(v12 + 32);
    *(v16 + 64) = v17;
    *(v16 + 80) = *(v12 + 64);
    v18 = *(v12 + 16);
    *(v16 + 16) = *v12;
    *(v16 + 32) = v18;
    return sub_10007B028(&v52, v51);
  }

  if (result <= 4)
  {
    if (result <= 1)
    {
      if (result | a2)
      {
        v37 = *(v4 + OBJC_IVAR____TtC10FitnessApp18SummaryCoordinator_loadCardFactory);
        a4[3] = &type metadata for LoadCardFactory;
        a4[4] = &off_1008647E8;
        *a4 = v37;
        goto LABEL_14;
      }

      v5 = v4 + OBJC_IVAR____TtC10FitnessApp18SummaryCoordinator_ringsCardFactory;
      v6 = *(v4 + OBJC_IVAR____TtC10FitnessApp18SummaryCoordinator_ringsCardFactory);
      v7 = *(v4 + OBJC_IVAR____TtC10FitnessApp18SummaryCoordinator_ringsCardFactory + 8);
      v8 = &type metadata for ActivityRingsCardFactory;
      v9 = &off_1008560A8;
      goto LABEL_4;
    }

    if (!(result ^ 2 | a2))
    {
      v41 = (v4 + OBJC_IVAR____TtC10FitnessApp18SummaryCoordinator_historyCardFactory);
      v42 = *(v4 + OBJC_IVAR____TtC10FitnessApp18SummaryCoordinator_historyCardFactory + 16);
      v52 = *(v4 + OBJC_IVAR____TtC10FitnessApp18SummaryCoordinator_historyCardFactory);
      v53 = v42;
      v43 = *(v4 + OBJC_IVAR____TtC10FitnessApp18SummaryCoordinator_historyCardFactory + 48);
      v54 = *(v4 + OBJC_IVAR____TtC10FitnessApp18SummaryCoordinator_historyCardFactory + 32);
      v55 = v43;
      a4[3] = &type metadata for HistoryCardFactory;
      a4[4] = &off_100852888;
      v45 = swift_allocObject();
      *a4 = v45;
      v46 = v41[1];
      v45[1] = *v41;
      v45[2] = v46;
      v47 = v41[3];
      v45[3] = v41[2];
      v45[4] = v47;
      return sub_1003E2C08(&v52, v51);
    }

    if (result ^ 3 | a2)
    {
LABEL_12:
      v23 = (v4 + OBJC_IVAR____TtC10FitnessApp18SummaryCoordinator_friendsCardsFactory);
      v25 = *(v4 + OBJC_IVAR____TtC10FitnessApp18SummaryCoordinator_friendsCardsFactory);
      v24 = v23[1];
      v26 = v23[2];
      v27 = v23[3];
      v28 = v23[4];
      v29 = v23[5];
      v50 = v23[6];
      a4[3] = &type metadata for FriendCardFactory;
      a4[4] = &off_10085CD48;
      v31 = swift_allocObject();
      *a4 = v31;
      v31[2] = v25;
      v31[3] = v24;
      v31[4] = v26;
      v31[5] = v27;
      v31[6] = v28;
      v31[7] = v29;
      v31[8] = v50;
      v32 = v25;

      v33 = v26;
      v34 = v27;
      v35 = v28;
      v36 = v29;
      goto LABEL_13;
    }

    v19 = *(v4 + OBJC_IVAR____TtC10FitnessApp18SummaryCoordinator_awardCardFactory);
    v20 = a4;
    started = type metadata accessor for AwardsCardFactory();
    v22 = &off_100861AC8;
    goto LABEL_21;
  }

  if (result > 6)
  {
    if (!(result ^ 7 | a2))
    {
      v48 = *(v4 + OBJC_IVAR____TtC10FitnessApp18SummaryCoordinator_catalogTipCardFactory);
      v49 = *(v4 + OBJC_IVAR____TtC10FitnessApp18SummaryCoordinator_catalogTipCardFactory + 8);
      a4[3] = &type metadata for CatalogTipCardFactory;
      a4[4] = &off_1008653F8;
      *a4 = v48;
      a4[1] = v49;

      goto LABEL_30;
    }

    if (!(result ^ 8 | a2))
    {
      goto LABEL_6;
    }

    v19 = *(v4 + OBJC_IVAR____TtC10FitnessApp18SummaryCoordinator_quickStartWorkoutCardFactory);
    v20 = a4;
    started = type metadata accessor for QuickStartWorkoutCardFactory();
    v22 = &off_100852980;
LABEL_21:
    v20[3] = started;
    v20[4] = v22;
    *v20 = v19;
LABEL_30:
  }

  if (result ^ 5 | a2)
  {
    a4[3] = &type metadata for FitnessPlusSampleContentCardFactory;
    a4[4] = &off_100866988;
  }

  else
  {
    v38 = OBJC_IVAR____TtC10FitnessApp18SummaryCoordinator_fitnessPlusCardFactory;
    a4[3] = &type metadata for FitnessPlusCardFactory;
    a4[4] = &off_10084CFA8;
    v40 = swift_allocObject();
    *a4 = v40;

    return sub_1003E2BAC(v4 + v38, v40 + 16);
  }

  return result;
}

uint64_t sub_1000785B8()
{

  return _swift_deallocObject(v0, 88, 7);
}

uint64_t sub_100078610()
{
  sub_100005A40(v0 + 24);
  sub_100005A40(v0 + 64);

  return _swift_deallocObject(v0, 104, 7);
}

uint64_t sub_100078658()
{

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_1000786C0()
{

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_100078730@<X0>(uint64_t a1@<X0>, char *a2@<X1>, char a3@<W2>, int a4@<W3>, uint64_t a5@<X4>, int a6@<W5>, uint64_t a7@<X8>)
{
  v66 = a5;
  v69 = a6;
  v64 = a4;
  v63 = a2;
  v68 = type metadata accessor for UUID();
  v70 = *(v68 - 8);
  v10 = __chkstk_darwin(v68);
  v62 = &v62 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = &v62 - v12;
  v67 = type metadata accessor for TrendsCard();
  v14 = __chkstk_darwin(v67);
  v16 = &v62 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v62 - v17;
  v19 = sub_100140278(&unk_1008DB8A0);
  v20 = __chkstk_darwin(v19 - 8);
  v22 = &v62 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v20);
  v25 = &v62 - v24;
  v26 = __chkstk_darwin(v23);
  v28 = &v62 - v27;
  result = __chkstk_darwin(v26);
  v31 = &v62 - v30;
  if (a3 == 2)
  {
    v63 = v13;
    LODWORD(v62) = v64 & 1;
    v65 = sub_1000779F4(a1, v62);
    v64 = v38;
    sub_10001B104(v66, v71, &qword_1008DCC60);
    v39 = v72;
    if (v72)
    {
      v40 = v73;
      sub_1000066AC(v71, v72);
      (*(v40 + 8))(v39, v40);
      v41 = v70;
      v42 = v68;
      (*(v70 + 56))(v31, 0, 1, v68);
      sub_100005A40(v71);
    }

    else
    {
      sub_10000EA04(v71, &qword_1008DCC60);
      v41 = v70;
      v42 = v68;
      (*(v70 + 56))(v31, 1, 1, v68);
    }

    v43 = a1;
    v44 = v67;
    *(a7 + 24) = v67;
    *(a7 + 32) = &off_100860780;
    v45 = sub_100005994(a7);
    sub_10001B104(v31, v28, &unk_1008DB8A0);
    v46 = *(v41 + 48);
    if (v46(v28, 1, v42) == 1)
    {
      v70 = v43;
      v47 = v45;
      v48 = v63;
      UUID.init()();
      sub_10000EA04(v31, &unk_1008DB8A0);
      v49 = v46(v28, 1, v42);
      v50 = v48;
      v45 = v47;
      v43 = v70;
      if (v49 != 1)
      {
        sub_10000EA04(v28, &unk_1008DB8A0);
      }
    }

    else
    {
      sub_10000EA04(v31, &unk_1008DB8A0);
      v50 = v63;
      (*(v41 + 32))(v63, v28, v42);
    }

    (*(v41 + 32))(v18, v50, v42);
    v51 = &v18[v44[5]];
    *v51 = v43;
    *(v51 + 1) = 0;
    v51[16] = 2;
    v18[v44[6]] = v62;
    v18[v44[7]] = v69 & 1;
    v18[v44[8]] = 1;
    v52 = &v18[v44[9]];
    *v52 = v65;
    v52[8] = v64;
    v53 = v18;
  }

  else
  {
    if (a3 != 3 || a1 != 8 || v63)
    {
      *(a7 + 32) = 0;
      *a7 = 0u;
      *(a7 + 16) = 0u;
      return result;
    }

    v32 = v64 & 1;
    v65 = sub_1000779F4(9u, v64 & 1);
    v64 = v33;
    sub_10001B104(v66, v71, &qword_1008DCC60);
    v34 = v72;
    if (v72)
    {
      v35 = v73;
      sub_1000066AC(v71, v72);
      (*(v35 + 8))(v34, v35);
      v36 = v70;
      v37 = v68;
      (*(v70 + 56))(v25, 0, 1, v68);
      sub_100005A40(v71);
    }

    else
    {
      sub_10000EA04(v71, &qword_1008DCC60);
      v36 = v70;
      v37 = v68;
      (*(v70 + 56))(v25, 1, 1, v68);
    }

    v54 = v67;
    *(a7 + 24) = v67;
    *(a7 + 32) = &off_100860780;
    v45 = sub_100005994(a7);
    sub_10001B104(v25, v22, &unk_1008DB8A0);
    v55 = *(v36 + 48);
    if (v55(v22, 1, v37) == 1)
    {
      v56 = v62;
      UUID.init()();
      sub_10000EA04(v25, &unk_1008DB8A0);
      if (v55(v22, 1, v37) != 1)
      {
        sub_10000EA04(v22, &unk_1008DB8A0);
      }
    }

    else
    {
      sub_10000EA04(v25, &unk_1008DB8A0);
      v57 = *(v36 + 32);
      v56 = v62;
      v57(v62, v22, v37);
    }

    v58 = v64;
    v59 = v64 < 3u;
    (*(v70 + 32))(v16, v56, v37);
    v60 = &v16[v54[5]];
    *v60 = xmmword_1006D4AC0;
    v60[16] = 3;
    v16[v54[6]] = v32;
    v16[v54[7]] = v69 & 1;
    v16[v54[8]] = v59;
    v61 = &v16[v54[9]];
    *v61 = v65;
    v61[8] = v58;
    v53 = v16;
  }

  return sub_10007DC0C(v53, v45, type metadata accessor for TrendsCard);
}

uint64_t sub_100078EA4()
{
  v143 = type metadata accessor for DispatchWorkItemFlags();
  v141 = *(v143 - 8);
  __chkstk_darwin(v143);
  v139 = (&v134 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0));
  v140 = type metadata accessor for DispatchQoS();
  v138 = *(v140 - 1);
  __chkstk_darwin(v140);
  v137 = &v134 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v144 = type metadata accessor for DispatchTime();
  v136 = *(v144 - 8);
  v3 = __chkstk_darwin(v144);
  v134 = &v134 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v135 = &v134 - v5;
  v153 = type metadata accessor for UUID();
  v142 = *(v153 - 1);
  v6 = __chkstk_darwin(v153);
  v152 = &v134 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v10 = &v134 - v9;
  __chkstk_darwin(v8);
  v12 = &v134 - v11;
  v151 = type metadata accessor for FitnessPlusStackViewModel();
  v149 = *(v151 - 8);
  v13 = __chkstk_darwin(v151);
  v146 = &v134 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v150 = (&v134 - v16);
  v17 = __chkstk_darwin(v15);
  v148 = &v134 - v18;
  v19 = __chkstk_darwin(v17);
  v147 = (&v134 - v20);
  __chkstk_darwin(v19);
  v22 = &v134 - v21;
  v23 = type metadata accessor for DispatchPredicate();
  v24 = *(v23 - 8);
  __chkstk_darwin(v23);
  v26 = (&v134 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  v27 = OBJC_IVAR___CHHistoryDataProvider_queue;
  v145 = v0;
  v28 = *&v0[OBJC_IVAR___CHHistoryDataProvider_queue];
  if (!v28)
  {
    goto LABEL_85;
  }

  *v26 = v28;
  (*(v24 + 104))(v26, enum case for DispatchPredicate.onQueue(_:), v23);
  v29 = v28;
  v30 = _dispatchPreconditionTest(_:)();
  (*(v24 + 8))(v26, v23);
  if ((v30 & 1) == 0)
  {
LABEL_84:
    __break(1u);
LABEL_85:
    __break(1u);
    goto LABEL_86;
  }

  v31 = v145;
  if (v145[OBJC_IVAR___CHHistoryDataProvider_hasInitialWorkouts] == 1 && (v145[OBJC_IVAR___CHHistoryDataProvider_hasInitialMindfulnessSessions] & 1) != 0 || v145[OBJC_IVAR___CHHistoryDataProvider_shouldForceReload] == 1)
  {
    v138 = swift_allocObject();
    *(v138 + 16) = &_swiftEmptyArrayStorage;
    v141 = swift_allocObject();
    *(v141 + 16) = &_swiftEmptyArrayStorage;
    v32 = *&v31[OBJC_IVAR___CHHistoryDataProvider_workoutDataProvider];

    v33 = [v32 unfilteredWorkouts];
    sub_1000059F8(0, &qword_1008ED7C0);
    v34 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    type metadata accessor for MindfulnessSessionViewModel();
    v35 = static MindfulnessSessionViewModel.makeMindfulnessSessionViewModels(from:)();

    v36 = sub_10019F9A4(v34);
    v37 = sub_100450144(v36);

    v38 = sub_10019F9A4(v34);

    v39 = sub_100450368(v38);

    v40 = sub_10019FBDC(v35);
    v41 = sub_100450144(v40);

    v42 = sub_10019FBDC(v35);

    v43 = sub_100450368(v42);

    *&aBlock = v39;
    sub_1000808F8(v43);
    v143 = aBlock;
    v44 = sub_100376254(aBlock);
    v45 = *(v44 + 16);
    v140 = v37;
    v139 = v41;
    if (v45)
    {
      v46 = 0;
      v47 = &_swiftEmptyArrayStorage;
      v48 = v148;
      v144 = v45;
      do
      {
        if (v46 >= *(v44 + 16))
        {
LABEL_80:
          __break(1u);
          goto LABEL_81;
        }

        v49 = (*(v149 + 80) + 32) & ~*(v149 + 80);
        v50 = *(v149 + 72);
        sub_1001AB4EC(v44 + v49 + v50 * v46, v22);
        if (*(*&v22[*(v151 + 20)] + 16) < 2uLL)
        {
          sub_1001AB550(v22);
        }

        else
        {
          sub_100306E28(v22, v147);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *&aBlock = v47;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_1001863C4(0, *(v47 + 2) + 1, 1);
            v47 = aBlock;
          }

          v53 = *(v47 + 2);
          v52 = *(v47 + 3);
          if (v53 >= v52 >> 1)
          {
            sub_1001863C4(v52 > 1, v53 + 1, 1);
            v47 = aBlock;
          }

          *(v47 + 2) = v53 + 1;
          sub_100306E28(v147, &v47[v49 + v53 * v50]);
          v48 = v148;
          v45 = v144;
        }

        ++v46;
      }

      while (v45 != v46);
      v137 = v47;
      v54 = 0;
      v55 = v44 + v49;
      v56 = &_swiftEmptyArrayStorage;
      while (v54 < *(v44 + 16))
      {
        sub_1001AB4EC(v55, v48);
        if (*(*(v48 + *(v151 + 20)) + 16) > 1uLL)
        {
          sub_1001AB550(v48);
        }

        else
        {
          sub_100306E28(v48, v146);
          v57 = swift_isUniquelyReferenced_nonNull_native();
          *&aBlock = v56;
          if ((v57 & 1) == 0)
          {
            sub_1001863C4(0, v56[2] + 1, 1);
            v56 = aBlock;
          }

          v59 = v56[2];
          v58 = v56[3];
          if (v59 >= v58 >> 1)
          {
            sub_1001863C4(v58 > 1, v59 + 1, 1);
            v56 = aBlock;
          }

          v56[2] = v59 + 1;
          sub_100306E28(v146, v56 + v49 + v59 * v50);
          v48 = v148;
          v45 = v144;
        }

        ++v54;
        v55 += v50;
        if (v45 == v54)
        {
          goto LABEL_30;
        }
      }

LABEL_81:
      __break(1u);
      goto LABEL_82;
    }

    v56 = &_swiftEmptyArrayStorage;
    v137 = &_swiftEmptyArrayStorage;
LABEL_30:

    v69 = v56[2];
    if (v69)
    {
      v70 = *(v151 + 20);
      v71 = v56 + ((*(v149 + 80) + 32) & ~*(v149 + 80));
      v72 = *(v149 + 72);
      v73 = &_swiftEmptyArrayStorage;
      do
      {
        v74 = v150;
        sub_1001AB4EC(v71, v150);
        v75 = *&v74[v70];
        if (*(v75 + 16))
        {
          sub_100007C5C(v75 + 32, &v157);
        }

        else
        {
          v159 = 0;
          v157 = 0u;
          v158 = 0u;
        }

        sub_1001AB550(v150);
        if (*(&v158 + 1))
        {
          sub_1001AB740(&v157, &aBlock);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v73 = sub_1001A1FE8(0, v73[2] + 1, 1, v73);
          }

          v77 = v73[2];
          v76 = v73[3];
          if (v77 >= v76 >> 1)
          {
            v73 = sub_1001A1FE8((v76 > 1), v77 + 1, 1, v73);
          }

          v73[2] = v77 + 1;
          sub_1001AB740(&aBlock, &v73[5 * v77 + 4]);
        }

        else
        {
          sub_10000EA04(&v157, &qword_1008EDB58);
        }

        v71 += v72;
        --v69;
      }

      while (v69);
    }

    else
    {

      v73 = &_swiftEmptyArrayStorage;
    }

    v78 = v143;
    v149 = *(v143 + 16);
    if (v149)
    {
      v79 = 0;
      v148 = (v143 + 32);
      v147 = v73 + 4;
      v80 = (v142 + 8);
      v150 = &_swiftEmptyArrayStorage;
      while (v79 < *(v78 + 16))
      {
        v151 = v79 + 1;
        sub_100007C5C(&v148[40 * v79], &aBlock);
        v90 = -v73[2];
        v91 = -1;
        v92 = v147;
        while (v90 + v91 != -1)
        {
          if (++v91 >= v73[2])
          {
            __break(1u);
            goto LABEL_80;
          }

          v93 = v92 + 40;
          sub_100007C5C(v92, &v157);
          v94 = v162;
          v95 = v163;
          sub_1000066AC(&aBlock, v162);
          (*(v95 + 6))(v94, v95);
          v96 = *(&v158 + 1);
          v97 = v159;
          sub_1000066AC(&v157, *(&v158 + 1));
          (*(v97 + 48))(v96, v97);
          v98 = static UUID.== infix(_:_:)();
          v99 = *v80;
          v100 = v153;
          (*v80)(v10, v153);
          v99(v12, v100);
          sub_100005A40(&v157);
          v92 = v93;
          if (v98)
          {
            sub_100005A40(&aBlock);
            v81 = v151;
            goto LABEL_50;
          }
        }

        sub_1001AB740(&aBlock, &v157);
        v101 = v150;
        v102 = swift_isUniquelyReferenced_nonNull_native();
        v154 = v101;
        if ((v102 & 1) == 0)
        {
          sub_100185DC4(0, v101[2] + 1, 1);
          v101 = v154;
        }

        v81 = v151;
        v83 = v101[2];
        v82 = v101[3];
        if (v83 >= v82 >> 1)
        {
          sub_100185DC4((v82 > 1), v83 + 1, 1);
        }

        v84 = *(&v158 + 1);
        v85 = v159;
        v86 = sub_1001DF03C(&v157, *(&v158 + 1));
        __chkstk_darwin(v86);
        v88 = &v134 - ((v87 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v89 + 16))(v88);
        sub_10044FA40(v83, v88, &v154, v84, v85);
        sub_100005A40(&v157);
        v150 = v154;
LABEL_50:
        v79 = v81;
        v78 = v143;
        if (v81 == v149)
        {
          goto LABEL_60;
        }
      }

      goto LABEL_83;
    }

    v150 = &_swiftEmptyArrayStorage;
LABEL_60:

    *&aBlock = v150;

    sub_10044BDA8(&aBlock);
    v136 = 0;

    *(v141 + 16) = aBlock;

    v156 = v73;
    sub_1000808F8(v139);
    sub_1000808F8(v140);
    v103 = sub_10019FDFC(v137);

    sub_1000808F8(v103);
    v104 = v156;
    v105 = v156[2];
    v106 = v145;
    v146 = OBJC_IVAR___CHHistoryDataProvider_historyItemIDsPendingDeletion;
    swift_beginAccess();
    v147 = v105;
    if (v105)
    {
      v107 = 0;
      v143 = v104 + 32;
      v150 = (v142 + 16);
      v151 = v142 + 8;
      v148 = &_swiftEmptyArrayStorage;
      v144 = v104;
      while (v107 < *(v104 + 16))
      {
        v149 = v107;
        sub_100007C5C(v143 + 40 * v107, &aBlock);
        v108 = *&v106[v146];
        v110 = v162;
        v109 = v163;
        sub_1000066AC(&aBlock, v162);
        v111 = *(v109 + 6);

        v111(v110, v109);
        if (*(v108 + 16) && (sub_100045E60(&qword_1008E4E10, &type metadata accessor for UUID), v112 = dispatch thunk of Hashable._rawHashValue(seed:)(), v113 = -1 << *(v108 + 32), v114 = v112 & ~v113, ((*(v108 + 56 + ((v114 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v114) & 1) != 0))
        {
          v115 = ~v113;
          v116 = *(v142 + 72);
          v117 = *(v142 + 16);
          while (1)
          {
            v118 = v153;
            v117(v12, *(v108 + 48) + v116 * v114, v153);
            sub_100045E60(&qword_1008EAFA0, &type metadata accessor for UUID);
            v119 = dispatch thunk of static Equatable.== infix(_:_:)();
            v120 = *v151;
            (*v151)(v12, v118);
            if (v119)
            {
              break;
            }

            v114 = (v114 + 1) & v115;
            if (((*(v108 + 56 + ((v114 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v114) & 1) == 0)
            {
              goto LABEL_70;
            }
          }

          v120(v152, v153);
          sub_100005A40(&aBlock);
        }

        else
        {
LABEL_70:

          (*v151)(v152, v153);
          sub_1001AB740(&aBlock, &v157);
          v121 = v148;
          v122 = swift_isUniquelyReferenced_nonNull_native();
          v155 = v121;
          if ((v122 & 1) == 0)
          {
            sub_100185DC4(0, *(v121 + 16) + 1, 1);
            v121 = v155;
          }

          v124 = *(v121 + 16);
          v123 = *(v121 + 24);
          if (v124 >= v123 >> 1)
          {
            sub_100185DC4((v123 > 1), v124 + 1, 1);
          }

          v125 = *(&v158 + 1);
          v126 = v159;
          v127 = sub_1001DF03C(&v157, *(&v158 + 1));
          __chkstk_darwin(v127);
          v129 = &v134 - ((v128 + 15) & 0xFFFFFFFFFFFFFFF0);
          (*(v130 + 16))(v129);
          sub_10044FA40(v124, v129, &v155, v125, v126);
          sub_100005A40(&v157);
          v148 = v155;
        }

        v106 = v145;
        v107 = v149 + 1;
        v104 = v144;
        if ((v149 + 1) == v147)
        {
          goto LABEL_76;
        }
      }

LABEL_82:
      __break(1u);
LABEL_83:
      __break(1u);
      goto LABEL_84;
    }

    v148 = &_swiftEmptyArrayStorage;
LABEL_76:

    *&aBlock = v148;

    v131 = v136;
    sub_10044BDA8(&aBlock);
    if (v131)
    {
      goto LABEL_87;
    }

    v132 = v138;
    *(v138 + 16) = aBlock;

    sub_100077CE0(v106, v132, v141);
  }

  v60 = *&v145[v27];
  if (v60)
  {
    v152 = v60;
    v61 = v134;
    static DispatchTime.now()();
    v62 = v135;
    + infix(_:_:)();
    v153 = *(v136 + 8);
    (v153)(v61, v144);
    v63 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v163 = sub_1004535F4;
    v164 = v63;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    v161 = sub_1000449A8;
    v162 = &unk_10085AF30;
    v64 = _Block_copy(&aBlock);

    v65 = v137;
    static DispatchQoS.unspecified.getter();
    *&v157 = &_swiftEmptyArrayStorage;
    sub_100045E60(&qword_1008E33B0, &type metadata accessor for DispatchWorkItemFlags);
    sub_100140278(&unk_1008E7F50);
    sub_10014A6B0(&qword_1008E33C0, &unk_1008E7F50);
    v66 = v139;
    v67 = v143;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v68 = v152;
    OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
    _Block_release(v64);

    (*(v141 + 8))(v66, v67);
    (*(v138 + 8))(v65, v140);
    (v153)(v62, v144);
  }

LABEL_86:
  __break(1u);
LABEL_87:

  __break(1u);
  return result;
}

uint64_t sub_10007A304()
{

  return _swift_deallocObject(v0, 24, 7);
}

void *sub_10007A33C(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100140278(&qword_1008DE4D8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[6 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 48 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100140278(&qword_1008DE4E0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_10007A484(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_10002BACC;

  return sub_10007A570(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_10007A570(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[9] = a8;
  v8[10] = v13;
  v8[7] = a6;
  v8[8] = a7;
  v8[5] = a4;
  v8[6] = a5;
  type metadata accessor for MainActor();
  v8[11] = static MainActor.shared.getter();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10007A618, v10, v9);
}

uint64_t sub_10007A618()
{
  v18 = v0;

  v1 = static os_log_type_t.default.getter();
  v2 = HKLogActivity;
  if (os_log_type_enabled(HKLogActivity, v1))
  {
    v3 = v0[5];
    v4 = v0[6];
    swift_bridgeObjectRetain_n();
    v5 = v2;
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v17 = v7;
    *v6 = 136315650;
    v8 = _typeName(_:qualified:)();
    v10 = sub_10000AFDC(v8, v9, &v17);

    *(v6 + 4) = v10;
    *(v6 + 12) = 2048;
    v11 = *(v3 + 16);

    *(v6 + 14) = v11;

    *(v6 + 22) = 2048;
    *(v6 + 24) = v4;
    _os_log_impl(&_mh_execute_header, v5, v1, "%s updating with competition item count %ld friend list date item group count %ld", v6, 0x20u);
    sub_100005A40(v7);
  }

  v12 = v0[8];
  v13 = v0[9];
  v14 = v0[5];
  swift_getKeyPath();
  swift_getKeyPath();
  v0[2] = v14;
  v0[3] = v12;
  v0[4] = v13;

  static Published.subscript.setter();
  v15 = v0[1];

  return v15();
}

uint64_t sub_10007A81C(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_10007A834()
{
  v2 = *v1;

  if (v0)
  {
    v3 = *(v2 + 352);
    v4 = *(v2 + 360);
    v5 = sub_10046E21C;
  }

  else
  {
    (*(v2 + 368))();
    v3 = *(v2 + 352);
    v4 = *(v2 + 360);
    v5 = sub_100081974;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_10007A9A4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = 0;
  v18 = 0xE000000000000000;
  _StringGuts.grow(_:)(34);
  v8._object = 0x8000000100752090;
  v8._countAndFlagsBits = 0xD000000000000020;
  String.append(_:)(v8);
  Date.init()();
  Date.timeIntervalSince(_:)();
  (*(v5 + 8))(v7, v4);
  Double.write<A>(to:)();
  v9 = v17;
  v10 = v18;
  static os_log_type_t.default.getter();
  v11 = HKLogActivity;
  sub_100140278(&unk_1008E4E50);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1006D46C0;
  *(v12 + 56) = &type metadata for String;
  *(v12 + 64) = sub_10000A788();
  *(v12 + 32) = v9;
  *(v12 + 40) = v10;
  v13 = v11;
  os_log(_:dso:log:_:_:)();

  (*(v5 + 16))(v7, a1, v4);
  v14 = OBJC_IVAR____TtC10FitnessApp18TrendsDataProvider_lastCalculatedDate;
  swift_beginAccess();
  (*(v5 + 40))(a2 + v14, v7, v4);
  swift_endAccess();
  return sub_10007BC40();
}

id sub_10007ABFC(unsigned __int8 a1, char a2, double a3)
{
  if (a1 > 3u)
  {
    if (a1 > 5u)
    {
      if (a1 != 7)
      {
LABEL_4:
        v4 = [objc_opt_self() mainBundle];
        v5 = String._bridgeToObjectiveC()();
        v16 = [v4 localizedStringForKey:v5 value:0 table:0];

        v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        return v17;
      }

      return sub_10007E9D4(a2 & 1, a3);
    }

    if (a1 == 4)
    {
      goto LABEL_4;
    }

    if (qword_1008DAF40 != -1)
    {
      v18 = a2;
      swift_once();
      a2 = v18;
    }

    v13 = qword_1008F5D80;
    if (a2)
    {
      v14 = 3;
    }

    else
    {
      v14 = 1;
    }

    [qword_1008F5D80 setUnitStyle:v14];
    v15 = [objc_opt_self() minutes];
    v12 = [v13 stringFromUnit:v15];

LABEL_25:
    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();

    return v17;
  }

  if (a1 > 1u)
  {
    if (a1 != 2)
    {
      return sub_10007E9D4(a2 & 1, a3);
    }

    v7 = *(v3 + OBJC_IVAR____TtC10FitnessApp23TrendsFormattingManager_fiuiFormatter);
    if (a2)
    {
      result = [*(v3 + OBJC_IVAR____TtC10FitnessApp23TrendsFormattingManager_fiuiFormatter) unitManager];
      if (result)
      {
        v9 = result;
        v10 = [result userDistanceUnitForDistanceType:1];

        result = [v7 localizedLongUnitStringForDistanceUnit:v10 distanceInUnit:a3];
        if (result)
        {
LABEL_18:
          v12 = result;
          goto LABEL_25;
        }
      }

      else
      {
        __break(1u);
      }
    }

    else
    {
      result = [*(v3 + OBJC_IVAR____TtC10FitnessApp23TrendsFormattingManager_fiuiFormatter) localizedShortUnitStringForDistanceType:1];
      if (result)
      {
        goto LABEL_18;
      }
    }
  }

  else
  {
    if (!a1)
    {
      return sub_100604948(a2 & 1);
    }

    v11 = *(v3 + OBJC_IVAR____TtC10FitnessApp23TrendsFormattingManager_fiuiFormatter);
    if (a2)
    {
      result = [v11 localizedLongActiveEnergyUnitString];
      if (result)
      {
        goto LABEL_18;
      }
    }

    else
    {
      result = [v11 localizedShortActiveEnergyUnitString];
      if (result)
      {
        goto LABEL_18;
      }
    }
  }

  return result;
}

uint64_t sub_10007B084@<X0>(unsigned __int8 a1@<W0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v61 = a2;
  v67 = a3;
  v5 = sub_100140278(&qword_1008EF8C8);
  v6 = __chkstk_darwin(v5 - 8);
  v58 = &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v59 = &v56 - v8;
  v9 = sub_100140278(&qword_1008EB540);
  __chkstk_darwin(v9 - 8);
  v64 = &v56 - v10;
  v11 = sub_100140278(&qword_1008E1900);
  __chkstk_darwin(v11 - 8);
  v65 = &v56 - v12;
  v66 = sub_100140278(&qword_1008E1908);
  v63 = *(v66 - 8);
  __chkstk_darwin(v66);
  v57 = &v56 - v13;
  v14 = type metadata accessor for AttributeContainer();
  __chkstk_darwin(v14 - 8);
  v62 = &v56 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = objc_opt_self();
  v17 = [v16 mainBundle];
  v18 = String._bridgeToObjectiveC()();
  v19 = [v17 localizedStringForKey:v18 value:0 table:0];

  v60 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v21 = v20;

  if (((a1 - 3) & 0xFB) != 0)
  {
    if (a1 <= 8u && ((1 << a1) & 0x127) != 0)
    {
      v22 = sub_10007ABFC(a1, 0, 1.0);
      if (v23)
      {
        goto LABEL_9;
      }

LABEL_16:

      sub_1002D8190();
      swift_allocError();
      *v55 = 0;
      return swift_willThrow();
    }

LABEL_14:
    v53 = sub_10007ABFC(a1, 0, 1.0);
    if (v54)
    {
      v30 = v53;
      v32 = v54;
      v69 = v21;
      v56 = v3;
      goto LABEL_10;
    }

    goto LABEL_16;
  }

  if (a1 > 8u || ((1 << a1) & 0x127) == 0)
  {
    goto LABEL_14;
  }

  v22 = sub_10007ABFC(a1, 0, 1.0);
  if (!v23)
  {
    goto LABEL_16;
  }

LABEL_9:
  v24 = v22;
  v25 = v23;
  v69 = v21;
  v56 = v3;
  v26 = [v16 mainBundle];
  v27 = String._bridgeToObjectiveC()();
  v28 = [v26 localizedStringForKey:v27 value:0 table:0];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_100140278(&unk_1008E4E50);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_1006D46C0;
  *(v29 + 56) = &type metadata for String;
  *(v29 + 64) = sub_10000A788();
  *(v29 + 32) = v24;
  *(v29 + 40) = v25;
  v30 = static String.localizedStringWithFormat(_:_:)();
  v32 = v31;

LABEL_10:
  v68[4] = v30;
  v68[5] = v32;
  sub_10000FCBC();
  v33 = StringProtocol.localizedUppercase.getter();
  v35 = v34;

  v36 = sub_10007B988(v61);
  v37 = [v16 mainBundle];
  v38 = String._bridgeToObjectiveC()();
  v39 = [v37 localizedStringForKey:v38 value:0 table:0];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_100140278(&unk_1008E4E50);
  v40 = swift_allocObject();
  *(v40 + 16) = xmmword_1006D1F70;
  *(v40 + 56) = &type metadata for String;
  v41 = sub_10000A788();
  v42 = v69;
  *(v40 + 32) = v60;
  *(v40 + 40) = v42;
  *(v40 + 96) = &type metadata for String;
  *(v40 + 104) = v41;
  *(v40 + 64) = v41;
  *(v40 + 72) = v33;
  *(v40 + 80) = v35;

  String.init(format:_:)();

  AttributeContainer.init()();
  AttributedString.init(_:attributes:)();
  v68[0] = v36;
  sub_10005F988();

  AttributedString.subscript.setter();
  v68[0] = v33;
  v68[1] = v35;
  v43 = type metadata accessor for Locale();
  v44 = v64;
  (*(*(v43 - 8) + 56))(v64, 1, 1, v43);
  type metadata accessor for AttributedString();
  sub_10007BD90();
  v45 = v65;
  AttributedStringProtocol.range<A>(of:options:locale:)();
  sub_10000EA04(v44, &qword_1008EB540);
  if ((*(v63 + 48))(v45, 1, v66) == 1)
  {
    v46 = &qword_1008E1900;
    v47 = v45;
  }

  else
  {
    v48 = v57;
    sub_10007BE08(v45, v57);
    v49 = v59;
    static Text.Scale.secondary.getter();
    v50 = type metadata accessor for Text.Scale();
    (*(*(v50 - 8) + 56))(v49, 0, 1, v50);
    sub_10007C0F0();
    v51 = AttributedString.subscript.modify();
    sub_10007C1D8(v49, v58);
    sub_10007C248();
    AttributedSubstring.subscript.setter();
    sub_10000EA04(v49, &qword_1008EF8C8);
    v51(v68, 0);
    v46 = &qword_1008E1908;
    v47 = v48;
  }

  sub_10000EA04(v47, v46);
}

uint64_t sub_10007B8FC()
{
  v1 = *(type metadata accessor for Date() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_10007A9A4(v0 + v2, v3);
}

uint64_t sub_10007B988(unsigned __int8 a1)
{
  v2 = a1;
  v3 = sub_100140278(&qword_1008DC448);
  __chkstk_darwin(v3 - 8);
  v5 = &v18 - v4;
  v6 = type metadata accessor for Font.TextStyle();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v2 == 2 || (a1 & 1) != 0)
  {
    (*(v7 + 104))(v9, enum case for Font.TextStyle.title3(_:), v6);
    v10 = enum case for Font.Design.rounded(_:);
    v11 = type metadata accessor for Font.Design();
    v12 = *(v11 - 8);
    (*(v12 + 104))(v5, v10, v11);
    (*(v12 + 56))(v5, 0, 1, v11);
    static Font.Weight.medium.getter();
  }

  else
  {
    (*(v7 + 104))(v9, enum case for Font.TextStyle.title(_:), v6);
    v13 = enum case for Font.Design.rounded(_:);
    v14 = type metadata accessor for Font.Design();
    v15 = *(v14 - 8);
    (*(v15 + 104))(v5, v13, v14);
    (*(v15 + 56))(v5, 0, 1, v14);
    static Font.Weight.semibold.getter();
  }

  v16 = static Font.system(_:design:weight:)();
  sub_10000EA04(v5, &qword_1008DC448);
  (*(v7 + 8))(v9, v6);
  return v16;
}

uint64_t sub_10007BC40()
{
  v1 = OBJC_IVAR____TtC10FitnessApp18TrendsDataProvider_observers;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = 1 << *(v2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(v2 + 64);
  v6 = (v3 + 63) >> 6;
  result = swift_bridgeObjectRetain_n();
  for (i = 0; v5; result = )
  {
    v9 = i;
LABEL_9:
    v10 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v11 = *(*(v2 + 56) + ((v9 << 10) | (16 * v10)));

    v11(v12);
  }

  while (1)
  {
    v9 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v9 >= v6)
    {
    }

    v5 = *(v2 + 64 + 8 * v9);
    ++i;
    if (v5)
    {
      i = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_10007BD90()
{
  result = qword_1008E1918;
  if (!qword_1008E1918)
  {
    type metadata accessor for AttributedString();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E1918);
  }

  return result;
}

uint64_t sub_10007BE08(uint64_t a1, uint64_t a2)
{
  v4 = sub_100140278(&qword_1008E1908);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void *sub_10007BE78(int a1, char a2)
{
  swift_beginAccess();

  v6 = sub_10007CE0C(v5, a1, a2 & 1);
  if (v2)
  {

    v9 = sub_10028CB38();
    v10 = sub_10007C660(v9, a1 & 1, a2 & 1);

    return v10;
  }

  v7 = v6;

  swift_beginAccess();

  v12 = sub_10007CE0C(v8, a1 & 1, a2 & 1);

  swift_beginAccess();

  v14 = sub_10007C660(v13, a1 & 1, a2 & 1);

  sub_10007EBE0(v12);
  sub_10007EBE0(v14);
  result = v7;
  if (!*(v7 + 16))
  {
    v15 = sub_10028CB38();
    v10 = sub_10007C660(v15, a1 & 1, a2 & 1);

    return v10;
  }

  return result;
}

unint64_t sub_10007C0F0()
{
  result = qword_1008E1920;
  if (!qword_1008E1920)
  {
    sub_100141EEC(&qword_1008E1908);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E1920);
  }

  return result;
}

void sub_10007C17C(uint64_t a1, unsigned __int8 a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_100069D98(a2);
  }
}

uint64_t sub_10007C1D8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100140278(&qword_1008EF8C8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_10007C248()
{
  result = qword_1008EF8F0;
  if (!qword_1008EF8F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008EF8F0);
  }

  return result;
}

uint64_t sub_10007C29C()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 localizedStringForKey:v1 value:0 table:0];

  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  return v3;
}

void *sub_10007C660(uint64_t a1, int a2, int a3)
{
  v5 = v4;
  v48 = a3;
  v8 = sub_100140278(&unk_1008EE8E0);
  __chkstk_darwin(v8 - 8);
  v10 = &v39 - v9;
  v47 = type metadata accessor for AttributedString();
  v11 = *(v47 - 8);
  __chkstk_darwin(v47);
  v46 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for TrendListMetric();
  v44 = *(v13 - 8);
  v45 = v13;
  __chkstk_darwin(v13);
  v15 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(a1 + 16);
  v17 = _swiftEmptyArrayStorage;
  if (v16)
  {
    v55 = _swiftEmptyArrayStorage;
    v54 = a1;
    sub_10007DD44(0, v16, 0);
    v17 = v55;
    v18 = *(v3 + 16);
    v19 = (v54 + 32);
    v42 = (v11 + 56);
    v43 = v18;
    v39 = (v11 + 32);
    v41 = v10;
    v40 = a2;
    while (1)
    {
      v20 = *v19;
      v53 = v19 + 1;
      v21 = sub_10007C29C();
      v54 = v22;
      sub_10007B084(v20, v48 & 1, v10);
      if (v5)
      {
        break;
      }

      v50 = v16;
      v51 = v17;
      v52 = 0;
      v23 = v47;
      (*v42)(v10, 0, 1, v47);
      v24 = v10;
      v25 = *v39;
      v26 = v15;
      v27 = v46;
      (*v39)(v46, v24, v23);
      v49 = sub_10007CA9C();
      v29 = v28;
      v30 = v45;
      v31 = v27;
      v15 = v26;
      v32 = v23;
      v17 = v51;
      v25(&v26[*(v45 + 28)], v31, v32);
      *v26 = v20;
      v26[1] = 1;
      v33 = v54;
      *(v26 + 1) = v21;
      *(v26 + 2) = v33;
      v34 = &v26[*(v30 + 32)];
      *v34 = v49;
      v34[1] = v29;
      v55 = v17;
      v36 = v17[2];
      v35 = v17[3];
      if (v36 >= v35 >> 1)
      {
        sub_10007DD44(v35 > 1, v36 + 1, 1);
        v17 = v55;
      }

      v17[2] = v36 + 1;
      sub_10007DC0C(v15, v17 + ((*(v44 + 80) + 32) & ~*(v44 + 80)) + *(v44 + 72) * v36, type metadata accessor for TrendListMetric);
      v16 = v50 - 1;
      v5 = v52;
      v19 = v53;
      v10 = v41;
      if (v50 == 1)
      {
        return v17;
      }
    }

    (*v42)(v10, 1, 1, v47);
    sub_10000EA04(v10, &unk_1008EE8E0);
    sub_1002D8190();
    swift_allocError();
    *v37 = 0;
    swift_willThrow();
  }

  return v17;
}

char *sub_10007CA50(uint64_t a1, unint64_t a2)
{
  v3 = sub_10007DADC(a1, a2);
  sub_10007DDFC(&off_10083D5B8);
  return v3;
}

uint64_t sub_10007CA9C()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 localizedStringForKey:v1 value:0 table:0];

  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  return v3;
}

uint64_t sub_10007CE0C(uint64_t a1, int a2, int a3)
{
  v4 = v3;
  v96 = a3;
  v7 = sub_100140278(&unk_1008EE8E0);
  __chkstk_darwin(v7 - 8);
  v9 = &v74 - v8;
  v105 = type metadata accessor for AttributedString();
  v10 = *(v105 - 8);
  __chkstk_darwin(v105);
  v104 = &v74 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for TrendListMetric();
  v90 = *(v12 - 8);
  v91 = v12;
  __chkstk_darwin(v12);
  v101 = &v74 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a1 + 16);
  v15 = _swiftEmptyArrayStorage;
  if (!v14)
  {
    return v15;
  }

  v88 = v9;
  v169 = _swiftEmptyArrayStorage;
  sub_10007DD44(0, v14, 0);
  v103 = v169;
  sub_100011DA0(&v156);
  v16 = (a1 + 32);
  v95 = &v127;
  v93 = v110;
  v87 = (v10 + 56);
  v85 = (v10 + 32);
  v86 = v4[2];
  v17 = v4[3];
  v18 = *(v4 + 40);
  v84 = v18;
  if (v18)
  {
    v17 = 0;
  }

  v83 = v17;
  v19 = v4[4];
  if (v18)
  {
    v19 = 0;
  }

  v82 = v19;
  v74 = (v10 + 16);
  v20 = *v4;
  v21 = v4[6];
  v79 = v4[7];
  v80 = v21;
  v94 = OBJC_IVAR____TtC10FitnessApp18TrendsDataProvider_statisticsByTrendType90;
  v92 = OBJC_IVAR____TtC10FitnessApp18TrendsDataProvider_statisticsByTrendType365;
  v81 = (v10 + 8);
  v100 = v14 - 1;
  v89 = OBJC_IVAR____TtC10FitnessApp18TrendsDataProvider_mannKendallTestByTrendType90;
  v78 = OBJC_IVAR____TtC10FitnessApp18TrendsDataProvider_pregnancyStateProvider;
  v77 = OBJC_IVAR____TtC10FitnessApp18TrendsDataProvider_unitManager;
  v76 = OBJC_IVAR____TtC10FitnessApp23TrendsFormattingManager_fiuiFormatter;
  LODWORD(v75) = a2;
  HIDWORD(v75) = a2 & 1;
  v102 = v20;
  while (1)
  {
    v24 = *v16;
    v22 = v16 + 1;
    v23 = v24;
    v25 = *(v20 + v94);
    v149 = v166;
    v150 = v167;
    v151 = v168;
    v145 = v162;
    v146 = v163;
    v148 = v165;
    v147 = v164;
    v141 = v158;
    v142 = v159;
    v144 = v161;
    v143 = v160;
    v139 = v156;
    v140 = v157;
    v26 = *(v25 + 24);
    v27 = swift_allocObject();
    *(v27 + 16) = &v139;
    *(v27 + 24) = v25;
    *(v27 + 32) = v24;
    v28 = swift_allocObject();
    *(v28 + 16) = sub_100358240;
    *(v28 + 24) = v27;
    *&v128 = sub_10007BD68;
    *(&v128 + 1) = v28;
    *&v126 = _NSConcreteStackBlock;
    *(&v126 + 1) = 1107296256;
    *&v127 = sub_1003579C0;
    *(&v127 + 1) = &unk_100854198;
    v29 = _Block_copy(&v126);
    swift_retain_n();

    dispatch_sync(v26, v29);

    _Block_release(v29);
    LOBYTE(v25) = swift_isEscapingClosureAtFileLocation();

    if (v25)
    {
      break;
    }

    v152[10] = v149;
    v152[11] = v150;
    v152[6] = v145;
    v152[7] = v146;
    v152[9] = v148;
    v152[8] = v147;
    v152[2] = v141;
    v152[3] = v142;
    v152[5] = v144;
    v152[4] = v143;
    v152[1] = v140;
    v152[0] = v139;
    v154[10] = v149;
    v154[11] = v150;
    v154[6] = v145;
    v154[7] = v146;
    v154[9] = v148;
    v154[8] = v147;
    v154[2] = v141;
    v154[3] = v142;
    v154[5] = v144;
    v154[4] = v143;
    v153 = v151;
    v155 = v151;
    v154[1] = v140;
    v154[0] = v139;
    if (sub_100013184(v154) == 1)
    {
      goto LABEL_30;
    }

    v99 = v22;
    v31 = v102;
    v32 = *(v102 + v92);
    v121 = v166;
    v122 = v167;
    v123 = v168;
    v117 = v162;
    v118 = v163;
    v119 = v164;
    v120 = v165;
    v113 = v158;
    v114 = v159;
    v115 = v160;
    v116 = v161;
    v111 = v156;
    v112 = v157;
    v33 = *(v32 + 24);
    v34 = swift_allocObject();
    *(v34 + 16) = &v111;
    *(v34 + 24) = v32;
    v35 = v23;
    *(v34 + 32) = v23;
    v36 = swift_allocObject();
    *(v36 + 16) = sub_100358280;
    *(v36 + 24) = v34;
    v110[2] = sub_10035826C;
    v110[3] = v36;
    v109[0] = _NSConcreteStackBlock;
    v109[1] = 1107296256;
    v110[0] = sub_1003579C0;
    v110[1] = &unk_100854210;
    v37 = _Block_copy(v109);
    swift_retain_n();

    dispatch_sync(v33, v37);

    _Block_release(v37);
    LOBYTE(v32) = swift_isEscapingClosureAtFileLocation();

    if (v32)
    {
      goto LABEL_35;
    }

    v124[10] = v121;
    v124[11] = v122;
    v124[6] = v117;
    v124[7] = v118;
    v124[8] = v119;
    v124[9] = v120;
    v124[2] = v113;
    v124[3] = v114;
    v124[4] = v115;
    v124[5] = v116;
    v124[0] = v111;
    v124[1] = v112;
    v136 = v121;
    v137 = v122;
    v132 = v117;
    v133 = v118;
    v134 = v119;
    v135 = v120;
    v128 = v113;
    v129 = v114;
    v130 = v115;
    v131 = v116;
    v125 = v123;
    v138 = v123;
    v126 = v111;
    v127 = v112;
    if (sub_100013184(&v126) == 1)
    {
      goto LABEL_29;
    }

    sub_100357B7C(v23, v170);

    if (v171)
    {
      sub_10000EA04(v124, &qword_1008E5710);
LABEL_29:
      sub_10000EA04(v152, &qword_1008E5710);
LABEL_30:
      sub_10006CB8C();
      v15 = swift_allocError();
      *v72 = 1;
LABEL_32:
      swift_willThrow();

      return v15;
    }

    v38 = *&v170[1];
    v39 = *&v170[4];
    sub_10000EA04(v152, &qword_1008E5710);
    v40 = *v154;
    v41 = sub_1003D2500(byte_1006EB072[v23]);
    v42 = [objc_opt_self() quantityWithUnit:v41 doubleValue:{v40, v74, v75}];

    v43 = v88;
    v44 = v86;
    v45 = v106;
    sub_100603B5C(v42, v23, v96 & 1, v88);
    if (v45)
    {

      sub_10000EA04(v124, &qword_1008E5710);

      (*v87)(v43, 1, 1, v105);
      sub_10000EA04(v43, &unk_1008EE8E0);
      sub_1002D8190();
      v15 = swift_allocError();
      *v73 = 0;
      goto LABEL_32;
    }

    v46 = v105;
    (*v87)(v43, 0, 1, v105);
    (*v85)(v104, v43, v46);
    v47 = [*(v31 + v78) currentModel];
    if (v47)
    {
      v48 = v47;
      v49 = [v47 state];

      v50 = v49 == 1;
    }

    else
    {
      v50 = 0;
    }

    LOBYTE(v111) = v84;
    LOBYTE(v109[0]) = v84;
    *&v173 = v80;
    *(&v173 + 1) = v79;
    v174 = v82;
    v175 = v84;
    v176 = v83;
    v177 = v84;
    v178 = BYTE4(v75);
    v179 = v50;
    v51 = *(v31 + v77);

    v52 = sub_1005831C0(v51, v23, v40);
    v53 = sub_1005831C0(v51, v23, *&v126) > v52;
    v54 = v127;
    v106 = v129;
    v98 = v128;
    v55 = v130;

    sub_10000EA04(v124, &qword_1008E5710);
    if (v39 < 0.9)
    {
LABEL_17:
      v56 = 1;
      goto LABEL_22;
    }

    if (v38 <= 0.0)
    {
      if (v38 >= 0.0)
      {
        goto LABEL_17;
      }

      v56 = 2;
    }

    else
    {
      v56 = 0;
    }

LABEL_22:
    v108 = 1;
    v57 = 2 * v53;
    v107 = 1;
    v180[0] = v54;
    v180[1] = v98;
    v180[2] = v106;
    v181 = v55;
    v182 = 2 * v53;
    v183 = v56;
    v58 = v35;
    v184 = v35;
    v185 = 0x3FF199999999999ALL;
    v186 = 0;
    v187 = 1;
    v188 = 0;
    v189 = 1;
    sub_1001AAC54(&v173, v180, *(v44 + v76), v172);
    *&v106 = 0;
    v59 = sub_10007C29C();
    v97 = v60;
    *&v98 = v59;
    v61 = v91;
    v62 = v101;
    v64 = v104;
    v63 = v105;
    (*v74)(v101 + *(v91 + 28), v104, v105);
    v65 = sub_1001A0380(0, 0);
    v67 = v66;
    sub_1001AB3B0(v172);
    (*v81)(v64, v63);
    *v62 = v58;
    *(v62 + 1) = v57;
    v68 = v97;
    *(v62 + 8) = v98;
    *(v62 + 16) = v68;
    v69 = (v62 + *(v61 + 32));
    *v69 = v65;
    v69[1] = v67;
    v15 = v103;
    v169 = v103;
    v71 = v103[2];
    v70 = v103[3];
    if (v71 >= v70 >> 1)
    {
      sub_10007DD44(v70 > 1, v71 + 1, 1);
      v15 = v169;
    }

    v15[2] = v71 + 1;
    sub_10007DC0C(v101, v15 + ((*(v90 + 80) + 32) & ~*(v90 + 80)) + *(v90 + 72) * v71, type metadata accessor for TrendListMetric);
    v20 = v102;
    if (!v100)
    {
      return v15;
    }

    v103 = v15;
    --v100;
    v16 = v99;
  }

  __break(1u);
LABEL_35:
  __break(1u);
  return result;
}