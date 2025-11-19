uint64_t sub_10014F458(uint64_t a1, uint64_t a2)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v2 = a2;
    v4 = a1;
    v5 = *v3;
    v6 = *v3 >> 62;
    if (!v6)
    {
      result = *((*v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (result < v2)
  {
    goto LABEL_15;
  }

LABEL_4:
  if (__OFSUB__(v2, v4))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v4 - v2;
  if (__OFSUB__(0, v2 - v4))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (v6)
  {
    v9 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v9 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v10 = __OFADD__(v9, v8);
  result = v9 + v8;
  if (v10)
  {
    goto LABEL_18;
  }

  sub_10014F228(result);

  return sub_10014F348(v4, v2, 0);
}

uint64_t sub_10014F530(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

unint64_t sub_10014F568()
{
  result = qword_1002BC958;
  if (!qword_1002BC958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BC958);
  }

  return result;
}

Swift::Int sub_10014F604(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1001379C4(&qword_1002BC9D8);
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

uint64_t *sub_10014F948(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t static HeadphoneNotificationChartFactory.create()()
{
  v0 = *HeadphoneAudioNotificationModel.shared.unsafeMutableAddressor();
  type metadata accessor for HeadphoneAudioNotificationModel();
  sub_100151D00(&qword_1002BC2E8, type metadata accessor for HeadphoneAudioNotificationModel);
  v1 = v0;
  ObservedObject.init(wrappedValue:)();
  v2 = objc_allocWithZone(sub_1001379C4(&qword_1002BC9E0));
  return UIHostingController.init(rootView:)();
}

id HeadphoneNotificationChartFactory.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HeadphoneNotificationChartFactory();
  return objc_msgSendSuper2(&v2, "init");
}

id HeadphoneNotificationChartFactory.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HeadphoneNotificationChartFactory();
  return objc_msgSendSuper2(&v2, "dealloc");
}

__n128 sub_10014FBE8@<Q0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v49 = a1;
  v55 = a3;
  v5 = sub_1001379C4(&qword_1002BC9E8);
  __chkstk_darwin(v5);
  v7 = v47 - v6;
  v8 = sub_1001379C4(&qword_1002BC9F0);
  v9 = *(v8 - 8);
  v51 = v8;
  v52 = v9;
  __chkstk_darwin(v8);
  v11 = v47 - v10;
  v12 = sub_1001379C4(&qword_1002BC9F8);
  v13 = *(v12 - 8);
  v53 = v12;
  v54 = v13;
  v14 = __chkstk_darwin(v12);
  v50 = v47 - v15;
  v62 = (*((swift_isaMask & *a2) + 0x60))(v14);
  v47[5] = swift_getKeyPath();
  v16 = swift_allocObject();
  *(v16 + 16) = a1;
  *(v16 + 24) = a2;
  v48 = a2;
  v47[4] = sub_1001379C4(&qword_1002BC2D0);
  v47[3] = sub_1001379C4(&qword_1002BCA00);
  v47[2] = sub_10013DC90(&qword_1002BCA08, &qword_1002BC2D0);
  v47[1] = sub_100151D00(&qword_1002BCA10, &type metadata accessor for Date);
  v17 = sub_10013BA14(&qword_1002BCA18);
  v18 = sub_10013BA14(&qword_1002BCA20);
  v19 = sub_10013BA14(&qword_1002BCA28);
  v58 = type metadata accessor for BarMark();
  v59 = &protocol witness table for BarMark;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v21 = sub_100151B04();
  v58 = v19;
  v59 = &type metadata for String;
  v60 = OpaqueTypeConformance2;
  v61 = v21;
  v22 = swift_getOpaqueTypeConformance2();
  v58 = v18;
  v59 = &type metadata for String;
  v60 = v22;
  v61 = v21;
  v23 = swift_getOpaqueTypeConformance2();
  v58 = v17;
  v59 = &type metadata for Text;
  v60 = v23;
  v61 = &protocol witness table for Text;
  swift_getOpaqueTypeConformance2();
  Chart.init<A, B, C>(_:id:content:)();
  v24 = static Edge.Set.top.getter();
  EdgeInsets.init(_all:)();
  v25 = &v7[*(v5 + 36)];
  *v25 = v24;
  *(v25 + 1) = v26;
  *(v25 + 2) = v27;
  *(v25 + 3) = v28;
  *(v25 + 4) = v29;
  v25[40] = 0;
  v30 = sub_100151B58();
  View.chartYAxis(_:)();
  sub_1000114E8(v7);
  v56 = v49;
  v57 = v48;
  v31 = sub_1001379C4(&qword_1002BCA50);
  v58 = v5;
  v59 = v30;
  v32 = swift_getOpaqueTypeConformance2();
  v33 = sub_10013DC90(&qword_1002BCA58, &qword_1002BCA50);
  v35 = v50;
  v34 = v51;
  View.chartXAxis<A>(content:)();
  (*(v52 + 8))(v11, v34);
  sub_1001379C4(&qword_1002BCA60);
  v58 = v34;
  v59 = v31;
  v60 = v32;
  v61 = v33;
  swift_getOpaqueTypeConformance2();
  sub_100151C18();
  v36 = v55;
  v37 = v53;
  View.chartPlotStyle<A>(content:)();
  (*(v54 + 8))(v35, v37);
  v38 = static Color.accentColor.getter();
  KeyPath = swift_getKeyPath();
  v40 = (v36 + *(sub_1001379C4(&qword_1002BCA88) + 36));
  *v40 = KeyPath;
  v40[1] = v38;
  LOBYTE(v38) = static Edge.Set.all.getter();
  v41 = v36 + *(sub_1001379C4(&qword_1002BCA90) + 36);
  *v41 = v38;
  *(v41 + 8) = xmmword_1001C7BF0;
  __asm { FMOV            V0.2D, #9.0 }

  *(v41 + 24) = result;
  *(v41 + 40) = 0;
  return result;
}

uint64_t sub_100150224@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v69 = a2;
  v70 = a3;
  v54 = a1;
  v72 = a4;
  v73 = type metadata accessor for AnnotationPosition();
  v71 = *(v73 - 8);
  __chkstk_darwin(v73);
  v68 = v51 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for RoundedCornerStyle();
  v66 = *(v5 - 8);
  v67 = v5;
  __chkstk_darwin(v5);
  v64 = v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1001379C4(&qword_1002BCB40);
  __chkstk_darwin(v7 - 8);
  v58 = v51 - v8;
  v9 = sub_1001379C4(&qword_1002BCB18);
  __chkstk_darwin(v9 - 8);
  v11 = v51 - v10;
  v12 = type metadata accessor for Calendar.Component();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1001379C4(&qword_1002BCB48);
  __chkstk_darwin(v16 - 8);
  v51[1] = v51 - v17;
  v56 = type metadata accessor for BarMark();
  v57 = *(v56 - 8);
  __chkstk_darwin(v56);
  v19 = v51 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = sub_1001379C4(&qword_1002BCA28);
  v60 = *(v59 - 8);
  __chkstk_darwin(v59);
  v52 = v51 - v20;
  v61 = sub_1001379C4(&qword_1002BCA20);
  v62 = *(v61 - 8);
  __chkstk_darwin(v61);
  v53 = v51 - v21;
  v63 = sub_1001379C4(&qword_1002BCA18);
  v65 = *(v63 - 8);
  __chkstk_darwin(v63);
  v55 = v51 - v22;
  LocalizedStringKey.init(stringLiteral:)();
  (*(v13 + 104))(v15, enum case for Calendar.Component.month(_:), v12);
  v23 = type metadata accessor for Calendar();
  (*(*(v23 - 8) + 56))(v11, 1, 1, v23);
  v24 = v54;
  static PlottableValue.value<>(_:_:unit:calendar:)();

  sub_1001521EC(v11);
  (*(v13 + 8))(v15, v12);
  LocalizedStringKey.init(stringLiteral:)();
  v25 = sub_1001379C4(&qword_1002BC2D8);
  v77 = *(v24 + v25[12]);
  static PlottableValue.value(_:_:)();

  type metadata accessor for Date();
  BarMark.init<A, B>(x:y:width:height:stacking:)();
  v27 = v66;
  v26 = v67;
  v28 = v64;
  (*(v66 + 104))(v64, enum case for RoundedCornerStyle.continuous(_:), v67);
  v29 = v52;
  v30 = v56;
  ChartContent.cornerRadius(_:style:)();
  (*(v27 + 8))(v28, v26);
  (*(v57 + 8))(v19, v30);
  v31 = v24;
  v32 = (v24 + v25[20]);
  v34 = *v32;
  v33 = v32[1];
  v77 = v34;
  v78 = v33;
  v81 = v30;
  v82 = &protocol witness table for BarMark;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v36 = sub_100151B04();
  v37 = v53;
  v38 = v59;
  ChartContent.accessibilityValue<A>(_:)();
  (*(v60 + 8))(v29, v38);
  v39 = (v31 + v25[16]);
  v40 = v31;
  v42 = *v39;
  v41 = v39[1];
  v81 = v42;
  v82 = v41;
  v77 = v38;
  v78 = &type metadata for String;
  v79 = OpaqueTypeConformance2;
  v80 = v36;
  v43 = swift_getOpaqueTypeConformance2();
  v44 = v55;
  v45 = v61;
  ChartContent.accessibilityLabel<A>(_:)();
  v46 = v37;
  v47 = v45;
  (*(v62 + 8))(v46, v45);
  v48 = v68;
  static AnnotationPosition.top.getter();
  v74 = v40;
  v75 = v69;
  v76 = v70;
  static Alignment.center.getter();
  v77 = v47;
  v78 = &type metadata for String;
  v79 = v43;
  v80 = v36;
  swift_getOpaqueTypeConformance2();
  v49 = v63;
  ChartContent.annotation<A>(position:alignment:spacing:content:)();
  (*(v71 + 8))(v48, v73);
  return (*(v65 + 8))(v44, v49);
}

uint64_t sub_100150B7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Locale();
  __chkstk_darwin(v4 - 8);
  v5 = sub_1001379C4(&qword_1002BCB50);
  __chkstk_darwin(v5);
  v6 = sub_1001379C4(&qword_1002BC2D8);
  v7 = v6 - 8;
  __chkstk_darwin(v6);
  v9 = v29 - v8;
  sub_1001522B4(a1, v29 - v8);
  v10 = *&v9[*(v7 + 56)];

  v29[3] = v10;
  static Locale.autoupdatingCurrent.getter();
  sub_100152324();
  IntegerFormatStyle.init(locale:)();
  sub_10013DC90(&qword_1002BCB60, &qword_1002BCB50);
  v11 = Text.init<A>(_:format:)();
  v13 = v12;
  v15 = v14;
  v16 = type metadata accessor for Date();
  (*(*(v16 - 8) + 8))(v9, v16);
  v17 = [objc_opt_self() tertiaryLabelColor];
  Color.init(_:)();
  v18 = Text.foregroundColor(_:)();
  v20 = v19;
  LOBYTE(v7) = v21;

  sub_100152378(v11, v13, v15 & 1);

  static Font.footnote.getter();
  v22 = Text.font(_:)();
  v24 = v23;
  LOBYTE(v9) = v25;
  v27 = v26;

  sub_100152378(v18, v20, v7 & 1);

  *a2 = v22;
  *(a2 + 8) = v24;
  *(a2 + 16) = v9 & 1;
  *(a2 + 24) = v27;
  return result;
}

uint64_t sub_100150E68(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for AxisMarkPosition();
  __chkstk_darwin(v4 - 8);
  v5 = type metadata accessor for AxisMarkPreset();
  __chkstk_darwin(v5 - 8);
  v6 = sub_1001379C4(&qword_1002BCB18);
  __chkstk_darwin(v6 - 8);
  v8 = v20 - v7;
  v9 = type metadata accessor for Calendar.Component();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for AxisMarkValues();
  __chkstk_darwin(v13 - 8);
  (*(v10 + 104))(v12, enum case for Calendar.Component.month(_:), v9);
  v14 = type metadata accessor for Calendar();
  (*(*(v14 - 8) + 56))(v8, 1, 1, v14);
  static AxisMarkValues.stride(by:count:roundLowerBound:roundUpperBound:calendar:)();
  sub_1001521EC(v8);
  (*(v10 + 8))(v12, v9);
  v15 = swift_allocObject();
  *(v15 + 16) = a1;
  *(v15 + 24) = a2;
  v16 = a2;
  static AxisMarkPreset.automatic.getter();
  static AxisMarkPosition.automatic.getter();
  sub_1001379C4(&qword_1002BCB20);
  v17 = sub_10013BA14(&qword_1002BCB28);
  v18 = sub_10013DC90(&qword_1002BCB30, &qword_1002BCB28);
  v20[0] = v17;
  v20[1] = v18;
  swift_getOpaqueTypeConformance2();
  return AxisMarks.init(preset:position:values:content:)();
}

uint64_t sub_1001511D4()
{
  v0 = type metadata accessor for AxisValueLabelOrientation();
  __chkstk_darwin(v0 - 8);
  v1 = type metadata accessor for AxisValueLabelCollisionResolution();
  __chkstk_darwin(v1 - 8);
  v2 = sub_1001379C4(&qword_1002BCB28);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v7 - v4;
  v7[1] = sub_100151904();
  static AxisValueLabelCollisionResolution.automatic.getter();
  static AxisValueLabelOrientation.automatic.getter();
  sub_100152258();
  AxisValueLabel.init<A>(format:centered:anchor:multiLabelAlignment:collisionResolution:offsetsMarks:orientation:horizontalSpacing:verticalSpacing:)();
  static Font.footnote.getter();
  static Font.Weight.medium.getter();
  Font.weight(_:)();

  sub_10013DC90(&qword_1002BCB30, &qword_1002BCB28);
  AxisMark.font(_:)();

  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_100151428@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for EnvironmentValues();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = static Alignment.bottom.getter();
  v10 = v9;
  v11 = a2 + *(sub_1001379C4(&qword_1002BCA60) + 36);
  Divider.init()();
  v12 = [objc_opt_self() separatorColor];
  v13 = Color.init(_:)();
  KeyPath = swift_getKeyPath();
  v15 = (v11 + *(sub_1001379C4(&qword_1002BCB00) + 36));
  *v15 = KeyPath;
  v15[1] = v13;
  EnvironmentValues.init()();
  EnvironmentValues.pixelLength.getter();
  (*(v5 + 8))(v7, v4);
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v16 = (v11 + *(sub_1001379C4(&qword_1002BCB08) + 36));
  v17 = v21[1];
  *v16 = v21[0];
  v16[1] = v17;
  v16[2] = v21[2];
  *(v11 + *(sub_1001379C4(&qword_1002BCB10) + 36)) = xmmword_1001C7C00;
  v18 = (v11 + *(sub_1001379C4(&qword_1002BCA80) + 36));
  *v18 = v8;
  v18[1] = v10;
  v19 = type metadata accessor for ChartPlotContent();
  return (*(*(v19 - 8) + 16))(a2, a1, v19);
}

void sub_100151680(uint64_t *a1@<X8>)
{
  v3 = *v1;
  isa = Date._bridgeToObjectiveC()().super.isa;
  v5 = [v3 stringFromDate:isa];

  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;

  *a1 = v6;
  a1[1] = v8;
}

Swift::Int sub_1001517C0()
{
  Hasher.init(_seed:)();
  NSObject.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_100151828()
{
  Hasher.init(_seed:)();
  NSObject.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1001518AC@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.foregroundColor.getter();
  *a1 = result;
  return result;
}

id sub_100151904()
{
  v0 = type metadata accessor for Calendar();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Locale();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [objc_allocWithZone(NSDateFormatter) init];
  static Locale.autoupdatingCurrent.getter();
  isa = Locale._bridgeToObjectiveC()().super.isa;
  (*(v5 + 8))(v7, v4);
  [v8 setLocale:isa];

  static Calendar.autoupdatingCurrent.getter();
  v10 = Calendar._bridgeToObjectiveC()().super.isa;
  (*(v1 + 8))(v3, v0);
  [v8 setCalendar:v10];

  v11 = String._bridgeToObjectiveC()();
  [v8 setLocalizedDateFormatFromTemplate:v11];

  return v8;
}

unint64_t sub_100151B04()
{
  result = qword_1002BCA30;
  if (!qword_1002BCA30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BCA30);
  }

  return result;
}

unint64_t sub_100151B58()
{
  result = qword_1002BCA38;
  if (!qword_1002BCA38)
  {
    sub_10013BA14(&qword_1002BC9E8);
    sub_10013DC90(&qword_1002BCA40, &qword_1002BCA48);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BCA38);
  }

  return result;
}

unint64_t sub_100151C18()
{
  result = qword_1002BCA68;
  if (!qword_1002BCA68)
  {
    sub_10013BA14(&qword_1002BCA60);
    sub_100151D00(&qword_1002BCA70, &type metadata accessor for ChartPlotContent);
    sub_10013DC90(&qword_1002BCA78, &qword_1002BCA80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BCA68);
  }

  return result;
}

uint64_t sub_100151D00(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_100151D68()
{
  result = qword_1002BCA98;
  if (!qword_1002BCA98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BCA98);
  }

  return result;
}

unint64_t sub_100151DC0()
{
  result = qword_1002BCAA0;
  if (!qword_1002BCAA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BCAA0);
  }

  return result;
}

unint64_t sub_100151E18()
{
  result = qword_1002BCAA8;
  if (!qword_1002BCAA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BCAA8);
  }

  return result;
}

unint64_t sub_100151E70()
{
  result = qword_1002BCAB0;
  if (!qword_1002BCAB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BCAB0);
  }

  return result;
}

uint64_t sub_100151EC4(uint64_t a1, int a2)
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

uint64_t sub_100151F0C(uint64_t result, int a2, int a3)
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

unint64_t sub_100151F68()
{
  result = qword_1002BCAE0;
  if (!qword_1002BCAE0)
  {
    sub_10013BA14(&qword_1002BCA90);
    sub_100151FF4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BCAE0);
  }

  return result;
}

unint64_t sub_100151FF4()
{
  result = qword_1002BCAE8;
  if (!qword_1002BCAE8)
  {
    sub_10013BA14(&qword_1002BCA88);
    sub_10013BA14(&qword_1002BC9F8);
    sub_10013BA14(&qword_1002BCA60);
    sub_10013BA14(&qword_1002BC9F0);
    sub_10013BA14(&qword_1002BCA50);
    sub_10013BA14(&qword_1002BC9E8);
    sub_100151B58();
    swift_getOpaqueTypeConformance2();
    sub_10013DC90(&qword_1002BCA58, &qword_1002BCA50);
    swift_getOpaqueTypeConformance2();
    sub_100151C18();
    swift_getOpaqueTypeConformance2();
    sub_10013DC90(&qword_1002BCAF0, &qword_1002BCAF8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BCAE8);
  }

  return result;
}

uint64_t sub_1001521EC(uint64_t a1)
{
  v2 = sub_1001379C4(&qword_1002BCB18);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100152258()
{
  result = qword_1002BCB38;
  if (!qword_1002BCB38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BCB38);
  }

  return result;
}

uint64_t sub_1001522B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001379C4(&qword_1002BC2D8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_100152324()
{
  result = qword_1002BCB58;
  if (!qword_1002BCB58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BCB58);
  }

  return result;
}

uint64_t sub_100152378(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

void sub_1001523BC(char a1)
{
  v3 = a1 & 1;
  swift_beginAccess();
  v4 = *(v1 + 16);
  *(v1 + 16) = a1;
  if (v4 != v3)
  {
    if (a1)
    {
      sub_1001537B0();
    }

    else
    {
      sub_100152A98();
      v5 = *(v1 + 32);
      if (v5)
      {
        v6 = objc_opt_self();
        swift_unknownObjectRetain();
        v7 = [v6 defaultCenter];
        [v7 removeObserver:v5];
        swift_unknownObjectRelease();
      }

      v8 = *(v1 + 24);
      if (v8)
      {
        v9 = objc_opt_self();
        swift_unknownObjectRetain();
        v10 = [v9 defaultCenter];
        [v10 removeObserver:v8];
        swift_unknownObjectRelease();
      }
    }
  }
}

void (*sub_1001524D0(uint64_t *a1))(uint64_t a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  swift_beginAccess();
  *(v4 + 32) = *(v1 + 16);
  return sub_10015255C;
}

void sub_10015255C(uint64_t a1)
{
  v1 = *a1;
  sub_1001523BC(*(*a1 + 32));

  free(v1);
}

double sub_10015259C()
{
  v0 = 10.0;
  if (UIApp)
  {
    objc_opt_self();
    v1 = swift_dynamicCastObjCClass();
    if (v1)
    {
      if ([v1 shouldConsiderHoldingSuspendAssertion])
      {
        return 600.0;
      }

      else
      {
        return 10.0;
      }
    }
  }

  return v0;
}

void sub_100152618()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(*v0 + 120))(v4))
  {
    if (v0[5])
    {
      v7 = LiveActivitySetupLogger.unsafeMutableAddressor();
      (*(v3 + 16))(v6, v7, v2);
      v8 = Logger.logObject.getter();
      v9 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v8, v9))
      {
        v10 = swift_slowAlloc();
        *v10 = 0;
        _os_log_impl(&_mh_execute_header, v8, v9, "There is an existing suspend assertion!", v10, 2u);
      }

      (*(v3 + 8))(v6, v2);
    }

    else
    {
      v11 = getpid();
      v12 = objc_allocWithZone(BKSProcessAssertion);
      v13 = String._bridgeToObjectiveC()();
      aBlock[4] = sub_10015289C;
      aBlock[5] = 0;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100153C5C;
      aBlock[3] = &unk_10026D6E0;
      v14 = _Block_copy(aBlock);

      v15 = [v12 initWithPID:v11 flags:1 reason:10004 name:v13 withHandler:v14];
      _Block_release(v14);

      v16 = v1[5];
      v1[5] = v15;
    }

    sub_100152C30();
  }
}

uint64_t sub_10015289C(char a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v17 - v7;
  v9 = LiveActivitySetupLogger.unsafeMutableAddressor();
  v10 = *(v3 + 16);
  if (a1)
  {
    v10(v8, v9, v2);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v11, v12))
    {
      v6 = v8;
      goto LABEL_8;
    }

    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v11, v12, "Successfully took suspend assertion.", v13, 2u);
    v6 = v8;
    goto LABEL_6;
  }

  v10(v6, v9, v2);
  v11 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v11, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v11, v14, "Unable to take suspend assertion.", v15, 2u);
LABEL_6:
  }

LABEL_8:

  return (*(v3 + 8))(v6, v2);
}

void sub_100152A98()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v0 + 40))
  {
    v5 = v0;
    v6 = LiveActivitySetupLogger.unsafeMutableAddressor();
    (*(v2 + 16))(v4, v6, v1);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, v8, "Invalidating suspend assertion", v9, 2u);
    }

    (*(v2 + 8))(v4, v1);
    v10 = *(v5 + 40);
    if (v10)
    {
      [v10 invalidate];
      v11 = *(v5 + 40);
    }

    else
    {
      v11 = 0;
    }

    *(v5 + 40) = 0;
  }

  sub_1001530F0();
}

void sub_100152C30()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v0[5])
  {
    sub_1001530F0();
    v6 = LiveActivitySetupLogger.unsafeMutableAddressor();
    (*(v3 + 16))(v5, v6, v2);

    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 134217984;
      *(v9 + 4) = (*(*v0 + 144))();
      _os_log_impl(&_mh_execute_header, v7, v8, "Creating assertion timer with interval of: %f", v9, 0xCu);
    }

    (*(v3 + 8))(v5, v2);
    v10 = objc_opt_self();
    v11 = (*(*v0 + 144))();
    v12 = swift_allocObject();
    swift_weakInit();
    aBlock[4] = sub_100153CB0;
    aBlock[5] = v12;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100153088;
    aBlock[3] = &unk_10026D6B8;
    v13 = _Block_copy(aBlock);

    v14 = [v10 scheduledTimerWithTimeInterval:0 repeats:v13 block:v11];
    _Block_release(v13);
    v15 = v1[6];
    v1[6] = v14;
  }
}

uint64_t sub_100152EF8()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = LiveActivitySetupLogger.unsafeMutableAddressor();
  (*(v1 + 16))(v3, v4, v0);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "Suspend assertion invalidation time reached", v7, 2u);
  }

  (*(v1 + 8))(v3, v0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_100152A98();
  }

  return result;
}

void sub_100153088(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

void sub_1001530F0()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v1 + 48))
  {
    v6 = LiveActivitySetupLogger.unsafeMutableAddressor();
    (*(v3 + 16))(v5, v6, v2);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, v8, "Invalidating assertion expiration timer", v9, 2u);
    }

    (*(v3 + 8))(v5, v2);
    [*(v1 + 48) invalidate];
    v10 = *(v1 + 48);
    *(v1 + 48) = 0;
  }
}

uint64_t sub_100153270()
{
  v1 = v0;
  v2 = *v0;
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = LiveActivitySetupLogger.unsafeMutableAddressor();
  (*(v4 + 16))(v6, v7, v3);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v24 = v11;
    aBlock[0] = v2;
    *v10 = 136315138;
    swift_getMetatypeMetadata();
    v12 = sub_1001535CC(aBlock, 0xD000000000000022, 0x8000000100243170);
    v14 = sub_10014A094(v12, v13, &v24);

    *(v10 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v8, v9, "%s", v10, 0xCu);
    sub_10014A63C(v11);
  }

  (*(v4 + 8))(v6, v3);
  v15 = [objc_opt_self() defaultCenter];
  v16 = [objc_opt_self() mainQueue];
  v17 = swift_allocObject();
  swift_weakInit();
  v18 = swift_allocObject();
  *(v18 + 16) = v17;
  *(v18 + 24) = v15;
  aBlock[4] = sub_100153BB4;
  aBlock[5] = v18;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1001536BC;
  aBlock[3] = &unk_10026D690;
  v19 = _Block_copy(aBlock);
  v20 = v15;

  v21 = [v20 addObserverForName:UIApplicationWillEnterForegroundNotification object:0 queue:v16 usingBlock:v19];

  _Block_release(v19);
  v1[3] = v21;
  return swift_unknownObjectRelease();
}

uint64_t sub_1001535CC(uint64_t a1, uint64_t a2, void *a3)
{
  __chkstk_darwin(a1);
  (*(v6 + 16))(v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11[0] = String.init<A>(describing:)();
  v11[1] = v7;
  v8._countAndFlagsBits = 46;
  v8._object = 0xE100000000000000;
  String.append(_:)(v8);
  v9._countAndFlagsBits = a2;
  v9._object = a3;
  String.append(_:)(v9);
  return v11[0];
}

uint64_t sub_1001536BC(uint64_t a1)
{
  v2 = type metadata accessor for Notification();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 32);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();

  v6(v5);

  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_1001537B0()
{
  v1 = v0;
  v2 = *v0;
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = LiveActivitySetupLogger.unsafeMutableAddressor();
  (*(v4 + 16))(v6, v7, v3);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v24 = v11;
    aBlock[0] = v2;
    *v10 = 136315138;
    swift_getMetatypeMetadata();
    v12 = sub_1001535CC(aBlock, 0xD000000000000022, 0x80000001002431F0);
    v14 = sub_10014A094(v12, v13, &v24);

    *(v10 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v8, v9, "%s", v10, 0xCu);
    sub_10014A63C(v11);
  }

  (*(v4 + 8))(v6, v3);
  v15 = [objc_opt_self() defaultCenter];
  v16 = [objc_opt_self() mainQueue];
  v17 = swift_allocObject();
  swift_weakInit();
  v18 = swift_allocObject();
  *(v18 + 16) = v17;
  *(v18 + 24) = v15;
  aBlock[4] = sub_100153CF8;
  aBlock[5] = v18;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1001536BC;
  aBlock[3] = &unk_10026D730;
  v19 = _Block_copy(aBlock);
  v20 = v15;

  v21 = [v20 addObserverForName:UIApplicationDidEnterBackgroundNotification object:0 queue:v16 usingBlock:v19];

  _Block_release(v19);
  v1[4] = v21;
  return swift_unknownObjectRelease();
}

uint64_t sub_100153B0C()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return _swift_deallocClassInstance(v0, 56, 7);
}

double sub_100153B5C()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0;
  result = 0.0;
  *(v0 + 24) = 0u;
  *(v0 + 40) = 0u;
  return result;
}

uint64_t sub_100153BB4()
{
  v1 = *(v0 + 24);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = *(result + 24);
    if (v3)
    {
      swift_unknownObjectRetain();
      [v1 removeObserver:v3];
      sub_100152A98();
      sub_1001537B0();
      swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_100153C44(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100153C5C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

uint64_t sub_100153CB8()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100153CF8()
{
  v1 = *(v0 + 24);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = *(result + 32);
    if (v3)
    {
      swift_unknownObjectRetain();
      [v1 removeObserver:v3];
      sub_100152618();
      sub_100153270();
      swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_100153DE0()
{
  type metadata accessor for ConsiderateVolumeSettingsController();
  result = static ConsiderateVolumeSettingsController.prefsDidChangeNotification.getter();
  qword_1002BE7C8 = result;
  unk_1002BE7D0 = v1;
  return result;
}

uint64_t sub_100153F7C()
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_100153FDC(uint64_t *a1))(void **a1, char a2)
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
  v5 = OBJC_IVAR___COSContextualVolumeController_delegate;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_100154074;
}

void sub_100154074(void **a1, char a2)
{
  v3 = *a1;
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

uint64_t (*sub_1001541F8(uint64_t a1))()
{
  *a1 = *(v1 + OBJC_IVAR___COSContextualVolumeController_settingsController);
  *(a1 + 8) = ConsiderateVolumeSettingsController.isEnabled(for:)() & 1;
  return sub_100154254;
}

void *sub_1001542B0()
{
  v1 = ConsiderateVolumeSettingsController.setUserProfile(_:for:)();
  result = (*((swift_isaMask & *v0) + 0x60))(v1);
  if (result)
  {
    [result contextualVolumeProfileDidChange];

    return swift_unknownObjectRelease();
  }

  return result;
}

void *(*sub_100154350(uint64_t *a1))(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR___COSContextualVolumeController_settingsController);
  a1[1] = v1;
  a1[2] = v2;
  *a1 = ConsiderateVolumeSettingsController.getUserProfile(for:)();
  return sub_1001543AC;
}

void *sub_1001543AC(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = ConsiderateVolumeSettingsController.setUserProfile(_:for:)();
  result = (*((swift_isaMask & *v1) + 0x60))(v2);
  if (result)
  {
    [result contextualVolumeProfileDidChange];

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1001544AC()
{
  (*((swift_isaMask & *v0) + 0x90))();
  v1 = [objc_opt_self() mainBundle];
  v2 = String._bridgeToObjectiveC()();
  v3 = String._bridgeToObjectiveC()();
  v4 = String._bridgeToObjectiveC()();
  v5 = [v1 localizedStringForKey:v2 value:v3 table:v4];

  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  return v6;
}

id sub_10015468C()
{
  v0 = ConsiderateVolumeSettingsController.ringtoneUserVolume.getter();
  if ((v0 & 0x100000000) != 0)
  {
    return 0;
  }

  v1 = v0;
  v2 = objc_allocWithZone(NSNumber);
  LODWORD(v3) = v1;
  return [v2 initWithFloat:v3];
}

id sub_100154808()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ContextualVolumeController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_100154888(uint64_t a1, uint64_t a2, void *a3)
{
  *&v3[OBJC_IVAR___COSContextualVolumeProfileViewController____lazy_storage___controller] = 0;
  if (a2)
  {
    v5 = String._bridgeToObjectiveC()();
  }

  else
  {
    v5 = 0;
  }

  v11.receiver = v3;
  v11.super_class = type metadata accessor for ContextualVolumeProfileViewController();
  v6 = objc_msgSendSuper2(&v11, "initWithNibName:bundle:", v5, a3);

  v7 = v6;
  v8 = CFNotificationCenterGetDarwinNotifyCenter();
  if (qword_1002BE270 != -1)
  {
    swift_once();
  }

  v9 = String._bridgeToObjectiveC()();
  CFNotificationCenterAddObserver(v8, v7, sub_100155C74, v9, 0, CFNotificationSuspensionBehaviorDeliverImmediately);

  return v7;
}

id sub_100154A6C()
{
  v1 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveEveryObserver(v1, v0);

  v3.receiver = v0;
  v3.super_class = type metadata accessor for ContextualVolumeProfileViewController();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_100154B34(char a1)
{
  v2 = v1;
  v4 = sub_1001379C4(&unk_1002BC530);
  __chkstk_darwin(v4 - 8);
  v38 = &v32 - v5;
  v36 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v6 = *(v36 - 8);
  __chkstk_darwin(v36);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Locale();
  __chkstk_darwin(v9 - 8);
  v10 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v10 - 8);
  v11 = type metadata accessor for LocalizedStringResource();
  v37 = *(v11 - 8);
  v34 = v37;
  v35 = v11;
  v12 = __chkstk_darwin(v11);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v32 - v15;
  v17 = type metadata accessor for ContextualVolumeProfileViewController();
  v39.receiver = v2;
  v39.super_class = v17;
  objc_msgSendSuper2(&v39, "viewWillAppear:", a1 & 1);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v18 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v19 = *(v6 + 104);
  v20 = v36;
  v19(v8, enum case for LocalizedStringResource.BundleDescription.main(_:), v36);
  v33 = v16;
  LocalizedStringResource.init(_:defaultValue:table:locale:bundle:comment:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v21 = v20;
  v22 = v34;
  v19(v8, v18, v21);
  v23 = v38;
  v24 = v35;
  LocalizedStringResource.init(_:defaultValue:table:locale:bundle:comment:)();
  sub_1001379C4(&unk_1002BC1B0);
  v25 = (*(v22 + 80) + 32) & ~*(v22 + 80);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_1001C70B0;
  (*(v22 + 16))(v26 + v25, v14, v24);
  URL.init(string:)();
  v27 = type metadata accessor for URL();
  v28 = *(v27 - 8);
  result = (*(v28 + 48))(v23, 1, v27);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    type metadata accessor for WatchSettingsNavigationDonation();
    v30 = v33;
    static WatchSettingsNavigationDonation.emitNavigationEventForSystemSetting(iconSpecifierIdentifier:title:localizedNavigationComponents:deepLink:)();

    v31 = *(v22 + 8);
    v31(v14, v24);
    v31(v30, v24);
    return (*(v28 + 8))(v23, v27);
  }

  return result;
}

void sub_10015507C()
{
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 valueForKey:v1];

  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v8 = 0u;
    v9 = 0u;
  }

  v10[0] = v8;
  v10[1] = v9;
  if (!*(&v9 + 1))
  {
    v5 = String._bridgeToObjectiveC()();
    v6 = [v0 loadSpecifiersFromPlistName:v5 target:v0];

    if (v6)
    {
      *&v8 = 0;
      static Array._conditionallyBridgeFromObjectiveC(_:result:)();
    }
  }

  v7.receiver = v0;
  v7.super_class = type metadata accessor for ContextualVolumeProfileViewController();
  v3 = objc_msgSendSuper2(&v7, "specifiers");
  if (v3)
  {
    v4 = v3;
    static Array._unconditionallyBridgeFromObjectiveC(_:)();

    sub_10013F864(v10);
  }

  else
  {
    __break(1u);
    __break(1u);
  }
}

id sub_100155498()
{
  v0 = sub_10015587C();
  (*((swift_isaMask & *v0) + 0x90))();

  v1 = ConsiderateVolumeProfile.rawValue.getter();
  v2 = objc_allocWithZone(NSNumber);

  return [v2 initWithInteger:v1];
}

void sub_1001555E8(void *a1)
{
  [a1 integerValue];
  v1 = ConsiderateVolumeProfile.init(rawValue:)();
  if ((v2 & 1) == 0)
  {
    v3 = v1;
    v4 = sub_10015587C();
    (*((swift_isaMask & *v4) + 0x98))(v3);
  }
}

void (*sub_100155680(void *a1))(uint64_t a1, char a2)
{
  a1[1] = v1;
  v3 = sub_10015587C();
  (*((swift_isaMask & *v3) + 0x90))();

  *a1 = [objc_allocWithZone(NSNumber) initWithInteger:ConsiderateVolumeProfile.rawValue.getter()];
  return sub_100155738;
}

void sub_100155738(uint64_t a1, char a2)
{
  v3 = *a1;
  v16 = v3;
  if (a2)
  {
    v4 = v3;
    [v4 integerValue];
    v5 = ConsiderateVolumeProfile.init(rawValue:)();
    if ((v6 & 1) == 0)
    {
      v7 = *(*(a1 + 8) + OBJC_IVAR___COSContextualVolumeProfileViewController____lazy_storage___controller);
      v8 = *((swift_isaMask & *v7) + 0x98);
      v9 = v5;
      v10 = v7;
      v8(v9);
    }
  }

  else
  {
    [v3 integerValue];
    v11 = ConsiderateVolumeProfile.init(rawValue:)();
    if (v12)
    {
      goto LABEL_7;
    }

    v13 = *(*(a1 + 8) + OBJC_IVAR___COSContextualVolumeProfileViewController____lazy_storage___controller);
    v14 = *((swift_isaMask & *v13) + 0x98);
    v15 = v11;
    v4 = v13;
    v14(v15);
  }

LABEL_7:
}

id sub_10015587C()
{
  v1 = OBJC_IVAR___COSContextualVolumeProfileViewController____lazy_storage___controller;
  v2 = *&v0[OBJC_IVAR___COSContextualVolumeProfileViewController____lazy_storage___controller];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR___COSContextualVolumeProfileViewController____lazy_storage___controller];
LABEL_13:
    v10 = v2;
    return v3;
  }

  result = [v0 specifier];
  if (result)
  {
    v5 = result;
    v6 = String._bridgeToObjectiveC()();
    v7 = [v5 propertyForKey:v6];

    if (v7)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v12 = 0u;
      v13 = 0u;
    }

    v14[0] = v12;
    v14[1] = v13;
    if (*(&v13 + 1))
    {
      type metadata accessor for ContextualVolumeController();
      if (swift_dynamicCast())
      {
        v8 = v11;
LABEL_12:
        v9 = *&v0[v1];
        *&v0[v1] = v8;
        v3 = v8;

        v2 = 0;
        goto LABEL_13;
      }
    }

    else
    {
      sub_10013F864(v14);
    }

    v8 = [objc_allocWithZone(type metadata accessor for ContextualVolumeController()) init];
    goto LABEL_12;
  }

  __break(1u);
  return result;
}

void sub_1001559D4(uint64_t a1)
{
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v15.receiver = v1;
  v15.super_class = type metadata accessor for ContextualVolumeProfileViewController();
  objc_msgSendSuper2(&v15, "tableView:didSelectRowAtIndexPath:", a1, isa);

  v4 = IndexPath._bridgeToObjectiveC()().super.isa;
  v5 = [v1 specifierAtIndexPath:v4];

  if (v5)
  {
    v6 = [v5 propertyForKey:PSValueKey];

    if (v6)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v12 = 0u;
      v13 = 0u;
    }

    v14[0] = v12;
    v14[1] = v13;
    if (*(&v13 + 1))
    {
      sub_10013F76C();
      if (swift_dynamicCast())
      {
        [v11 integerValue];
        v7 = ConsiderateVolumeProfile.init(rawValue:)();
        if (v8)
        {
        }

        else
        {
          v9 = v7;
          v10 = sub_10015587C();
          (*((swift_isaMask & *v10) + 0x98))(v9);
        }
      }
    }

    else
    {
      sub_10013F864(v14);
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_100155C74(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    [v2 reloadSpecifiers];
  }
}

uint64_t sub_100155D30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v35 = a3;
  v34 = type metadata accessor for ScrollDismissesKeyboardMode();
  v32 = *(v34 - 8);
  __chkstk_darwin(v34);
  v31 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ListSectionSpacing();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_1001379C4(&qword_1002BCD40);
  __chkstk_darwin(v33);
  v30 = &v30 - v10;
  v11 = sub_1001379C4(&qword_1002BCD48);
  __chkstk_darwin(v11);
  v13 = &v30 - v12;
  v36 = a1;
  v37 = a2;
  sub_1001379C4(&qword_1002BCD50);
  sub_10013DC90(&qword_1002BCD58, &qword_1002BCD50);
  List<>.init(content:)();
  static ListSectionSpacing.compact.getter();
  v14 = *(sub_1001379C4(&qword_1002BCD60) + 36);
  (*(v7 + 16))(&v13[v14], v9, v6);
  v15 = *(v7 + 56);
  v15(&v13[v14], 0, 1, v6);
  KeyPath = swift_getKeyPath();
  v17 = &v13[*(v11 + 36)];
  v18 = *(sub_1001379C4(&qword_1002BCD68) + 28);
  (*(v7 + 32))(v17 + v18, v9, v6);
  v15(v17 + v18, 0, 1, v6);
  *v17 = KeyPath;
  v19 = v31;
  static ScrollDismissesKeyboardMode.interactively.getter();
  sub_100158060();
  v20 = v30;
  View.scrollDismissesKeyboard(_:)();
  (*(v32 + 8))(v19, v34);
  sub_10013A05C(v13, &qword_1002BCD48);
  v21 = static Alignment.center.getter();
  v23 = v22;
  v24 = [objc_opt_self() systemGroupedBackgroundColor];
  v25 = Color.init(uiColor:)();
  v26 = static SafeAreaRegions.all.getter();
  v27 = static Edge.Set.all.getter();
  v28 = v20 + *(v33 + 36);
  *v28 = v25;
  *(v28 + 8) = v26;
  *(v28 + 16) = v27;
  *(v28 + 24) = v21;
  *(v28 + 32) = v23;
  sub_1001581FC();
  View.accessibilityIdentifier(_:)();
  return sub_10013A05C(v20, &qword_1002BCD40);
}

uint64_t sub_100156160@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v79 = a2;
  v78 = a1;
  v83 = a3;
  v5 = sub_1001379C4(&qword_1002BCDE8);
  v84 = *(v5 - 8);
  v85 = v5;
  v82 = *(v84 + 64);
  __chkstk_darwin(v5);
  v86 = v73 - v6;
  v80 = sub_1001379C4(&qword_1002BCDF0);
  v81 = *(v80 - 1);
  __chkstk_darwin(v80);
  v8 = v73 - v7;
  v87 = a1;
  v88 = a2;
  LocalizedStringKey.init(stringLiteral:)();
  v9 = Text.init(_:tableName:bundle:comment:)();
  v11 = v10;
  v13 = v12;
  v77 = objc_opt_self();
  v14 = [v77 labelColor];
  v89 = Color.init(uiColor:)();
  v15 = Text.foregroundStyle<A>(_:)();
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v22 = v9;
  v23 = v78;
  sub_100152378(v22, v11, v13 & 1);

  v24 = v79;

  v89 = v15;
  v90 = v17;
  v91 = v19 & 1;
  v92 = v21;
  v25 = sub_1001379C4(&qword_1002BCDF8);
  v26 = sub_1001585AC();
  Section<>.init(header:content:)();
  static VerticalEdge.Set.bottom.getter();
  sub_100158760();
  v27 = v80;
  View.listSectionSeparator(_:edges:)();
  (*(v81 + 8))(v8, v27);
  v28 = sub_1001379C4(&qword_1002BCE38);
  v81 = *(*(v28 - 8) + 64);
  __chkstk_darwin(v28 - 8);
  v30 = v73 - v29;
  v89 = v23;
  v90 = v24;
  sub_1001379C4(&qword_1002BCE40);
  State.wrappedValue.getter();
  v31 = SettingsZeroKeywordNavigationItemsProvider.recents.getter();

  v32 = *(v31 + 16);

  v33 = sub_1001379C4(&qword_1002BCE48);
  v34 = *(v33 - 8);
  if (v32)
  {
    v76 = v73;
    v35 = __chkstk_darwin(v33);
    v74 = v73 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
    v75 = v73;
    __chkstk_darwin(v35);
    v73[2] = &v73[-4];
    v79 = v37;
    LocalizedStringKey.init(stringLiteral:)();
    v38 = Text.init(_:tableName:bundle:comment:)();
    v80 = v30;
    v40 = v39;
    v73[1] = v25;
    v42 = v41;
    v78 = v26;
    v43 = [v77 labelColor];
    v89 = Color.init(uiColor:)();
    v44 = Text.foregroundStyle<A>(_:)();
    v46 = v45;
    v48 = v47;
    v50 = v49;
    v51 = v40;
    v30 = v80;
    sub_100152378(v38, v51, v42 & 1);

    LOBYTE(v38) = static Edge.Set.top.getter();
    EdgeInsets.init(_all:)();
    LOBYTE(v99) = 0;
    v89 = v44;
    v90 = v46;
    v91 = v48 & 1;
    v92 = v50;
    v93 = v38;
    v94 = v52;
    v95 = v53;
    v96 = v54;
    v97 = v55;
    v98 = 0;
    sub_1001379C4(&qword_1002BCE50);
    sub_100158928();
    v56 = v74;
    Section<>.init(header:content:)();
    v57 = v79;
    (*(v34 + 32))(v30, v56, v79);
    v58 = (*(v34 + 56))(v30, 0, 1, v57);
  }

  else
  {
    v58 = (*(*(v33 - 8) + 56))(v30, 1, 1, v33);
  }

  v80 = v73;
  __chkstk_darwin(v58);
  v60 = v73 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = v84;
  v61 = v85;
  v63 = *(v84 + 16);
  v64 = v86;
  v65 = v63(v60, v86, v85);
  v82 = v73;
  __chkstk_darwin(v65);
  v67 = v73 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10013DD90(v30, v67, &qword_1002BCE38);
  v68 = v30;
  v69 = v83;
  v63(v83, v60, v61);
  v70 = sub_1001379C4(&qword_1002BCE60);
  sub_10013DD90(v67, &v69[*(v70 + 48)], &qword_1002BCE38);
  sub_10013A05C(v68, &qword_1002BCE38);
  v71 = *(v62 + 8);
  v71(v64, v61);
  sub_10013A05C(v67, &qword_1002BCE38);
  return (v71)(v60, v61);
}

uint64_t sub_100156980(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001379C4(&unk_1002BC530);
  v5 = __chkstk_darwin(v4 - 8);
  v91 = &v81 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v93 = &v81 - v8;
  v9 = __chkstk_darwin(v7);
  v95 = &v81 - v10;
  __chkstk_darwin(v9);
  v96 = &v81 - v11;
  v12 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v101 = *(v12 - 8);
  v102 = v12;
  __chkstk_darwin(v12);
  v14 = &v81 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for Locale();
  __chkstk_darwin(v15 - 8);
  v16 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v16 - 8);
  v107 = type metadata accessor for LocalizedStringResource();
  v103 = *(v107 - 8);
  v17 = __chkstk_darwin(v107);
  v90 = &v81 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v17);
  v92 = &v81 - v20;
  v21 = __chkstk_darwin(v19);
  v94 = &v81 - v22;
  v23 = __chkstk_darwin(v21);
  v105 = &v81 - v24;
  v25 = __chkstk_darwin(v23);
  v104 = &v81 - v26;
  v27 = __chkstk_darwin(v25);
  v29 = &v81 - v28;
  v30 = __chkstk_darwin(v27);
  v106 = &v81 - v31;
  __chkstk_darwin(v30);
  v33 = &v81 - v32;
  v108 = a1;
  v109 = a2;
  v34 = a2;
  v35 = sub_1001379C4(&qword_1002BCE40);
  State.wrappedValue.getter();
  v36 = SettingsZeroKeywordNavigationItemsProvider.suggestions.getter();

  v37 = *(v36 + 16);

  if (v37 == 4)
  {
    v108 = a1;
    v109 = v34;
    State.wrappedValue.getter();
    v38 = SettingsZeroKeywordNavigationItemsProvider.suggestions.getter();

    return v38;
  }

  v83 = v35;
  v84 = a1;
  v85 = v34;
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v40 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v41 = v102;
  v42 = *(v101 + 13);
  v42(v14, enum case for LocalizedStringResource.BundleDescription.main(_:), v102);
  v89 = v33;
  LocalizedStringResource.init(_:defaultValue:table:locale:bundle:comment:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v42(v14, v40, v41);
  LocalizedStringResource.init(_:defaultValue:table:locale:bundle:comment:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v42(v14, v40, v41);
  v88 = v29;
  LocalizedStringResource.init(_:defaultValue:table:locale:bundle:comment:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v42(v14, v40, v41);
  LocalizedStringResource.init(_:defaultValue:table:locale:bundle:comment:)();
  sub_1001379C4(&qword_1002BCE80);
  v43 = *(type metadata accessor for SettingsNavigationEventRecord() - 8);
  v44 = (*(v43 + 80) + 32) & ~*(v43 + 80);
  v86 = *(v43 + 72);
  v45 = swift_allocObject();
  *(v45 + 16) = xmmword_1001C8010;
  v46 = type metadata accessor for SettingsEventImage();
  v87 = &v81;
  v47 = *(v46 - 8);
  v48 = *(v47 + 64);
  __chkstk_darwin(v46);
  v49 = (v48 + 15) & 0xFFFFFFFFFFFFFFF0;
  v50 = (&v81 - v49);
  type metadata accessor for WatchSettingsNavigationDonation();
  *v50 = static WatchSettingsNavigationDonation.convertIconSpecifierIdentifierToApplicationIconBundleIdentfier(_:)();
  v50[1] = v51;
  v52 = *(v47 + 104);
  LODWORD(v102) = enum case for SettingsEventImage.applicationIcon(_:);
  v101 = v52;
  v52(&v81 - v49);
  v100 = *(v103 + 16);
  v100(v105, v89, v107);
  v53 = v96;
  URL.init(string:)();
  v54 = type metadata accessor for URL();
  v55 = *(v54 - 8);
  v98 = *(v55 + 48);
  v99 = v54;
  v97 = v55 + 48;
  result = v98(v53, 1);
  if (result == 1)
  {
    goto LABEL_13;
  }

  v82 = v45;
  v56 = v45 + v44;
  v57 = SettingsNavigationEventRecord.init(icon:title:navigationPathComponents:navigationLink:associatedApplicationBundleIdentifier:)();
  __chkstk_darwin(v57);
  v58 = (&v81 - v49);
  *v58 = static WatchSettingsNavigationDonation.convertIconSpecifierIdentifierToApplicationIconBundleIdentfier(_:)();
  v58[1] = v59;
  v105 = v46;
  (v101)(v58, v102, v46);
  v100(v94, v106, v107);
  v60 = v95;
  URL.init(string:)();
  result = (v98)(v60, 1, v99);
  if (result == 1)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v61 = SettingsNavigationEventRecord.init(icon:title:navigationPathComponents:navigationLink:associatedApplicationBundleIdentifier:)();
  v96 = &v81;
  __chkstk_darwin(v61);
  v62 = (v48 + 15) & 0xFFFFFFFFFFFFFFF0;
  v63 = (&v81 - v62);
  *v63 = static WatchSettingsNavigationDonation.convertIconSpecifierIdentifierToApplicationIconBundleIdentfier(_:)();
  v63[1] = v64;
  (v101)(&v81 - v62, v102, v105);
  v100(v92, v88, v107);
  v65 = v56;
  v66 = v93;
  URL.init(string:)();
  result = (v98)(v66, 1, v99);
  if (result == 1)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v67 = SettingsNavigationEventRecord.init(icon:title:navigationPathComponents:navigationLink:associatedApplicationBundleIdentifier:)();
  __chkstk_darwin(v67);
  v68 = (&v81 - v62);
  *v68 = static WatchSettingsNavigationDonation.convertIconSpecifierIdentifierToApplicationIconBundleIdentfier(_:)();
  v68[1] = v69;
  (v101)(&v81 - v62, v102, v105);
  v70 = v104;
  v71 = v107;
  v100(v90, v104, v107);
  v72 = v91;
  URL.init(string:)();
  result = (v98)(v72, 1, v99);
  if (result == 1)
  {
LABEL_16:
    __break(1u);
    return result;
  }

  SettingsNavigationEventRecord.init(icon:title:navigationPathComponents:navigationLink:associatedApplicationBundleIdentifier:)();
  v108 = v84;
  v109 = v85;
  State.wrappedValue.getter();
  v73 = SettingsZeroKeywordNavigationItemsProvider.suggestions.getter();

  v108 = v73;
  v74 = *(v73 + 16);
  v75 = v103;
  v76 = v88;
  v77 = v106;
  v78 = v89;
  if (v74 > 4)
  {
    __break(1u);
    goto LABEL_12;
  }

  v79 = 4 - v74;
  result = v82;
  if (*(v82 + 16) < v79)
  {
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  sub_100157768(v82, v65, 0, (2 * v79) | 1, v79);
  v80 = *(v75 + 8);
  v80(v70, v71);
  v80(v76, v71);
  v80(v77, v71);
  v80(v78, v71);
  return v108;
}

uint64_t sub_100157638@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for SettingsNavigationEventRecord();
  __chkstk_darwin(v4);
  v6 = v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v6, a1);
  sub_10014C168(v6, a2);
  v8 = [objc_opt_self() systemGroupedBackgroundColor];
  v11[1] = Color.init(uiColor:)();
  v9 = AnyView.init<A>(_:)();
  result = sub_1001379C4(&qword_1002BCE10);
  *(a2 + *(result + 36)) = v9;
  return result;
}

uint64_t sub_100157768@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v11 = a4 >> 1;
  v12 = ((a4 >> 1) - a3);
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
    goto LABEL_21;
  }

  v5 = *v6;
  v13 = *(*v6 + 16);
  v14 = &v12[v13];
  if (__OFADD__(v13, v12))
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v8 = a3;
  v9 = a2;
  v7 = a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || (a5 = v5[3] >> 1, a5 < v14))
  {
    if (v13 <= v14)
    {
      v16 = &v12[v13];
    }

    else
    {
      v16 = v13;
    }

    v5 = sub_1001589F8(isUniquelyReferenced_nonNull_native, v16, 1, v5);
    a5 = v5[3] >> 1;
  }

  v17 = v5[2];
  v18 = (a5 - v17);
  if (v11 == v8)
  {
    if (v12 <= 0)
    {
      v12 = 0;
      a5 = v8;
      goto LABEL_17;
    }

LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  type metadata accessor for SettingsNavigationEventRecord();
  if (v18 < v12)
  {
    __break(1u);
    goto LABEL_26;
  }

  result = swift_arrayInitWithCopy();
  if (v12 <= 0)
  {
LABEL_16:
    a5 = v11;
LABEL_17:
    if (v12 != v18)
    {
      result = swift_unknownObjectRelease();
LABEL_19:
      *v6 = v5;
      return result;
    }

LABEL_23:
    v55[1] = v7;
    v71 = a5;
    v59 = v9;
    v75 = v5[2];
    v23 = sub_1001379C4(&qword_1002BCE88);
    v55[2] = v55;
    v24 = *(*(v23 - 8) + 64);
    __chkstk_darwin(v23 - 8);
    v12 = v55 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
    v25 = type metadata accessor for SettingsNavigationEventRecord();
    v17 = *(v25 - 8);
    v60 = *(v17 + 56);
    v61 = v17 + 56;
    v26 = v60(v12, 1, 1, v25);
    v70 = v24;
    __chkstk_darwin(v26);
    v10 = v12;
    sub_10013DD90(v12, v12, &qword_1002BCE88);
    v27 = *(v17 + 48);
    v57 = v25;
    v68 = v27;
    v69 = (v17 + 48);
    if (v27(v12, 1, v25) == 1)
    {
LABEL_24:
      sub_10013A05C(v12, &qword_1002BCE88);
      swift_unknownObjectRelease();
      result = sub_10013A05C(v10, &qword_1002BCE88);
      goto LABEL_19;
    }

LABEL_26:
    v64 = (v17 + 32);
    v58 = (v17 + 16);
    v67 = v17;
    v56 = (v17 + 8);
    v72 = v12;
    do
    {
      v31 = sub_10013A05C(v10, &qword_1002BCE88);
      v32 = v5[3];
      if ((v32 >> 1) < v75 + 1)
      {
        v31 = sub_1001589F8(v32 > 1, v75 + 1, 1, v5);
        v5 = v31;
        v66 = *(v31 + 24) >> 1;
      }

      else
      {
        v66 = v32 >> 1;
      }

      v73 = v55;
      v33 = *(v67 + 80);
      v34 = __chkstk_darwin(v31);
      v65 = v35;
      v36 = v55 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
      v74 = v55;
      __chkstk_darwin(v34);
      v38 = v55 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
      sub_10013DD90(v12, v38, &qword_1002BCE88);
      if (v68(v38, 1, v57) == 1)
      {
        v39 = v75;
LABEL_33:
        v28 = sub_10013A05C(v38, &qword_1002BCE88);
        v75 = v39;
        v29 = v39;
        v12 = v72;
      }

      else
      {
        v63 = v5 + ((v33 + 32) & ~v33);
        v40 = *v64;
        v39 = v75;
        v41 = v66;
        if (v75 > v66)
        {
          v41 = v75;
        }

        v66 = v41;
        v42 = v57;
        v62 = v40;
        while (1)
        {
          v50 = v40;
          v40(v36, v38, v42);
          if (v66 == v39)
          {
            break;
          }

          v51 = v39;
          sub_10013A05C(v72, &qword_1002BCE88);
          v52 = *(v67 + 72);
          result = v50(&v63[v52 * v51], v36, v42);
          v75 = v51;
          if (v71 == v11)
          {
            v43 = 1;
            v71 = v11;
            v44 = v72;
          }

          else
          {
            if (v71 < v8 || v71 >= v11)
            {
              goto LABEL_46;
            }

            v53 = v71;
            v54 = v59 + v52 * v71;
            v44 = v72;
            (*v58)(v72, v54, v42);
            v43 = 0;
            v71 = v53 + 1;
          }

          v45 = v60(v44, v43, 1, v42);
          v73 = v55;
          v46 = __chkstk_darwin(v45);
          v36 = v55 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
          v74 = v55;
          __chkstk_darwin(v46);
          v38 = v55 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
          sub_10013DD90(v44, v38, &qword_1002BCE88);
          v49 = v68(v38, 1, v42);
          v39 = v75 + 1;
          v40 = v62;
          if (v49 == 1)
          {
            goto LABEL_33;
          }
        }

        v28 = (*v56)(v36, v42);
        v29 = v66;
        v75 = v66;
        v12 = v72;
      }

      v5[2] = v29;
      __chkstk_darwin(v28);
      v10 = v55 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
      sub_10013DD90(v12, v10, &qword_1002BCE88);
      v68 = *v69;
    }

    while (v68(v10, 1, v57) != 1);
    goto LABEL_24;
  }

  v20 = v5[2];
  v21 = __OFADD__(v20, v12);
  v22 = &v12[v20];
  if (!v21)
  {
    v5[2] = v22;
    goto LABEL_16;
  }

  __break(1u);
LABEL_46:
  __break(1u);
  return result;
}

unint64_t sub_100157E7C@<X0>(void *a1@<X8>)
{
  type metadata accessor for SettingsZeroKeywordNavigationItemsProvider();
  swift_allocObject();
  SettingsZeroKeywordNavigationItemsProvider.init(settingsHostApplicationBundleIdentifier:)();
  State.init(wrappedValue:)();
  a1[3] = &type metadata for SearchSuggestionsView;
  result = sub_10015845C();
  a1[4] = result;
  *a1 = v3;
  a1[1] = v4;
  return result;
}

uint64_t sub_100157FB8(uint64_t a1)
{
  v2 = sub_1001379C4(&qword_1002BCDE0);
  __chkstk_darwin(v2 - 8);
  sub_10013DD90(a1, &v5 - v3, &qword_1002BCDE0);
  return EnvironmentValues.listSectionSpacing.setter();
}

unint64_t sub_100158060()
{
  result = qword_1002BCD70;
  if (!qword_1002BCD70)
  {
    sub_10013BA14(&qword_1002BCD48);
    sub_100158118();
    sub_10013DC90(&qword_1002BCDA0, &qword_1002BCD68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BCD70);
  }

  return result;
}

unint64_t sub_100158118()
{
  result = qword_1002BCD78;
  if (!qword_1002BCD78)
  {
    sub_10013BA14(&qword_1002BCD60);
    sub_10013DC90(&qword_1002BCD80, &qword_1002BCD88);
    sub_10013DC90(&qword_1002BCD90, &qword_1002BCD98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BCD78);
  }

  return result;
}

unint64_t sub_1001581FC()
{
  result = qword_1002BCDA8;
  if (!qword_1002BCDA8)
  {
    sub_10013BA14(&qword_1002BCD40);
    sub_10013BA14(&qword_1002BCD48);
    sub_100158060();
    swift_getOpaqueTypeConformance2();
    sub_10013DC90(&qword_1002BCDB0, &qword_1002BCDB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BCDA8);
  }

  return result;
}

uint64_t sub_10015830C(uint64_t *a1, int a2)
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

uint64_t sub_100158354(uint64_t result, int a2, int a3)
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

unint64_t sub_1001583A0()
{
  result = qword_1002BCDC0;
  if (!qword_1002BCDC0)
  {
    sub_10013BA14(&qword_1002BCDC8);
    sub_1001581FC();
    sub_100158718(&qword_1002BCDD0, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BCDC0);
  }

  return result;
}

unint64_t sub_10015845C()
{
  result = qword_1002BCDD8;
  if (!qword_1002BCDD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BCDD8);
  }

  return result;
}

uint64_t sub_1001584B0()
{
  sub_100156980(*(v0 + 16), *(v0 + 24));
  sub_1001379C4(&qword_1002BCE68);
  type metadata accessor for URL();
  sub_1001379C4(&qword_1002BCE10);
  sub_10013DC90(&qword_1002BCE70, &qword_1002BCE68);
  sub_100158630();
  sub_1001589AC();
  return ForEach<>.init(_:content:)();
}

unint64_t sub_1001585AC()
{
  result = qword_1002BCE00;
  if (!qword_1002BCE00)
  {
    sub_10013BA14(&qword_1002BCDF8);
    sub_100158630();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BCE00);
  }

  return result;
}

unint64_t sub_100158630()
{
  result = qword_1002BCE08;
  if (!qword_1002BCE08)
  {
    sub_10013BA14(&qword_1002BCE10);
    sub_100158718(&qword_1002BCE18, type metadata accessor for SearchZeroKeywordListItem);
    sub_10013DC90(&qword_1002BCE20, &qword_1002BCE28);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BCE08);
  }

  return result;
}

uint64_t sub_100158718(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_100158760()
{
  result = qword_1002BCE30;
  if (!qword_1002BCE30)
  {
    sub_10013BA14(&qword_1002BCDF0);
    sub_1001585AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BCE30);
  }

  return result;
}

uint64_t sub_1001587F8()
{
  sub_1001379C4(&qword_1002BCE40);
  State.wrappedValue.getter();
  SettingsZeroKeywordNavigationItemsProvider.recents.getter();

  sub_1001379C4(&qword_1002BCE68);
  type metadata accessor for URL();
  sub_1001379C4(&qword_1002BCE10);
  sub_10013DC90(&qword_1002BCE70, &qword_1002BCE68);
  sub_100158630();
  sub_1001589AC();
  return ForEach<>.init(_:content:)();
}

unint64_t sub_100158928()
{
  result = qword_1002BCE58;
  if (!qword_1002BCE58)
  {
    sub_10013BA14(&qword_1002BCE50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BCE58);
  }

  return result;
}

unint64_t sub_1001589AC()
{
  result = qword_1002BCE78;
  if (!qword_1002BCE78)
  {
    type metadata accessor for SettingsNavigationEventRecord();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BCE78);
  }

  return result;
}

size_t sub_1001589F8(size_t result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_1001379C4(&qword_1002BCE80);
  v10 = *(type metadata accessor for SettingsNavigationEventRecord() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for SettingsNavigationEventRecord() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

Swift::Int sub_100158BE8()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_100158C5C()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

unint64_t sub_100158CA4()
{
  result = qword_1002BCE90;
  if (!qword_1002BCE90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BCE90);
  }

  return result;
}

const char *sub_100158D0C()
{
  v1 = "SearchSuggestions";
  if (*v0 != 2)
  {
    v1 = "NewHello";
  }

  v2 = "SetupLiveActivity";
  if (*v0)
  {
    v2 = "OfferCDPRepair";
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v1;
  }
}

uint64_t getEnumTagSinglePayload for FeatureFlags(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for FeatureFlags(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_100158ED8()
{
  v0 = type metadata accessor for Logger();
  sub_10014F948(v0, qword_1002BE7D8);
  sub_10014F530(v0, qword_1002BE7D8);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_100158F54()
{
  if (qword_1002BE510 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();

  return sub_10014F530(v0, qword_1002BE7D8);
}

void *sub_100158FB8()
{
  v1 = OBJC_IVAR___COSCDPRepairController_cdpEncryptionHelper;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_100159004(uint64_t a1)
{
  v3 = OBJC_IVAR___COSCDPRepairController_cdpEncryptionHelper;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_1001590DC()
{
  v1[22] = v0;
  sub_1001379C4(&qword_1002BC790);
  v1[23] = swift_task_alloc();
  v1[24] = type metadata accessor for MainActor();
  v1[25] = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[26] = v3;
  v1[27] = v2;

  return _swift_task_switch(sub_1001591B0, v3, v2);
}

id sub_1001591B0()
{
  result = [objc_opt_self() contextForPrimaryAccount];
  if (result)
  {
    v2 = result;
    v3 = [objc_allocWithZone(CDPUIDeviceToDeviceEncryptionFlowContext) initWithCDPContext:result];
    *(v0 + 224) = v3;

    sub_100145BB8(0xD000000000000017, 0x8000000100243920);
    v4 = String._bridgeToObjectiveC()();

    [v3 setFeatureName:v4];

    [v3 setDeviceToDeviceEncryptionUpgradeUIStyle:0];
    [v3 setDeviceToDeviceEncryptionUpgradeType:0];
    v5 = swift_task_alloc();
    *(v0 + 232) = v5;
    *v5 = v0;
    v5[1] = sub_100159308;

    return sub_10015BA3C();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100159308(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 240) = a1;

  v3 = *(v2 + 216);
  v4 = *(v2 + 208);

  return _swift_task_switch(sub_100159430, v4, v3);
}

uint64_t sub_100159430()
{
  v1 = v0[30];
  v2 = v0[28];
  v3 = v0[22];
  [v2 setPresentingViewController:v1];

  [v2 setSecurityUpgradeContext:AKSecurityUpgradeContextKeychainSync];
  v4 = [objc_allocWithZone(CDPUIDeviceToDeviceEncryptionHelper) initWithContext:v2];
  v5 = (*((swift_isaMask & *v3) + 0x60))(v4);
  v6 = (*((swift_isaMask & *v3) + 0x58))(v5);
  v0[31] = v6;
  if (v6)
  {
    v7 = v6;
    v0[2] = v0;
    v0[7] = v0 + 34;
    v0[3] = sub_100159748;
    v8 = swift_continuation_init();
    v0[17] = sub_1001379C4(&qword_1002BCED0);
    v0[10] = _NSConcreteStackBlock;
    v0[11] = 1107296256;
    v0[12] = sub_100159F30;
    v0[13] = &unk_10026D978;
    v0[14] = v8;
    [v7 performDeviceToDeviceEncryptionStateRepairWithCompletion:v0 + 10];

    return _swift_continuation_await(v0 + 2);
  }

  else if (sub_10015B6C4())
  {
    v9 = v0[28];
    v11 = v0[22];
    v10 = v0[23];

    v12 = type metadata accessor for TaskPriority();
    (*(*(v12 - 8) + 56))(v10, 1, 1, v12);
    v13 = v11;
    v14 = static MainActor.shared.getter();
    v15 = swift_allocObject();
    v15[2] = v14;
    v15[3] = &protocol witness table for MainActor;
    v15[4] = v13;
    sub_1001390A0(0, 0, v10, &unk_1001C83A8, v15);

    v16 = v0[1];

    return v16();
  }

  else
  {

    return _swift_task_switch(sub_100159AAC, 0, 0);
  }
}

uint64_t sub_100159748()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 256) = v2;
  v3 = *(v1 + 216);
  v4 = *(v1 + 208);
  if (v2)
  {
    v5 = sub_100159CA8;
  }

  else
  {
    v5 = sub_100159878;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_100159878()
{
  v1 = *(v0 + 272);

  if (qword_1002BE510 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10014F530(v2, qword_1002BE7D8);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 67109120;
    *(v5 + 4) = v1;
    _os_log_impl(&_mh_execute_header, v3, v4, "CDP repair result: %{BOOL}d", v5, 8u);
  }

  if (sub_10015B6C4())
  {
    v6 = *(v0 + 224);
    v8 = *(v0 + 176);
    v7 = *(v0 + 184);

    v9 = type metadata accessor for TaskPriority();
    (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
    v10 = v8;
    v11 = static MainActor.shared.getter();
    v12 = swift_allocObject();
    v12[2] = v11;
    v12[3] = &protocol witness table for MainActor;
    v12[4] = v10;
    sub_1001390A0(0, 0, v7, &unk_1001C83A8, v12);

    v13 = *(v0 + 8);

    return v13();
  }

  else
  {

    return _swift_task_switch(sub_100159AAC, 0, 0);
  }
}

uint64_t sub_100159AAC()
{
  *(v0 + 264) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100159B38, v2, v1);
}

uint64_t sub_100159B38()
{

  if (UIApp)
  {
    objc_opt_self();
    v1 = swift_dynamicCastObjCClass();
    if (v1)
    {
      v2 = [v1 setupController];
      if (!v2)
      {
LABEL_10:
        __break(1u);
        return _swift_task_switch(v2, v3, v4);
      }

      v5 = v2;
      [v2 startSilentAppleIDSignIn];
    }
  }

  v2 = [*(v0 + 176) delegate];
  if (!v2)
  {
    __break(1u);
    goto LABEL_10;
  }

  [v2 buddyControllerReleaseHoldAndSkip:*(v0 + 176)];
  swift_unknownObjectRelease();
  v3 = *(v0 + 208);
  v4 = *(v0 + 216);
  v2 = sub_100159C34;

  return _swift_task_switch(v2, v3, v4);
}

uint64_t sub_100159C34()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100159CA8()
{
  v20 = v0;
  v1 = v0[31];

  swift_willThrow();

  if (qword_1002BE510 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10014F530(v2, qword_1002BE7D8);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v19 = v6;
    *v5 = 136315138;
    swift_getErrorValue();
    v7 = Error.localizedDescription.getter();
    v9 = sub_10014A094(v7, v8, &v19);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "CDP repair error: %s", v5, 0xCu);
    sub_10014A63C(v6);
  }

  v10 = v0[28];
  v11 = v0[23];
  v12 = v0[22];
  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v11, 1, 1, v13);
  v14 = v12;
  v15 = static MainActor.shared.getter();
  v16 = swift_allocObject();
  v16[2] = v15;
  v16[3] = &protocol witness table for MainActor;
  v16[4] = v14;
  sub_1001390A0(0, 0, v11, &unk_1001C8398, v16);

  v17 = v0[1];

  return v17();
}

uint64_t sub_100159F30(uint64_t a1, char a2, void *a3)
{
  v5 = *sub_10014A6A0((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_1001379C4(&qword_1002BC798);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return _swift_continuation_throwingResumeWithError(v5, v6);
  }

  else
  {
    **(*(v5 + 64) + 40) = a2;

    return _swift_continuation_throwingResume(v5);
  }
}

uint64_t sub_100159FFC()
{
  v0[2] = type metadata accessor for MainActor();
  v0[3] = static MainActor.shared.getter();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_10015A0A8;

  return sub_10015A870();
}

uint64_t sub_10015A0A8()
{

  v1 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10015C038, v1, v0);
}

uint64_t sub_10015A1E4()
{
  v0[2] = type metadata accessor for MainActor();
  v0[3] = static MainActor.shared.getter();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_10015A290;

  return sub_10015A870();
}

uint64_t sub_10015A290()
{

  v1 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10015A3CC, v1, v0);
}

uint64_t sub_10015A3CC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10015A4CC()
{
  v1 = sub_1001379C4(&qword_1002BC790);
  __chkstk_darwin(v1 - 8);
  v3 = &v9 - v2;
  v4 = type metadata accessor for TaskPriority();
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  type metadata accessor for MainActor();
  v5 = v0;
  v6 = static MainActor.shared.getter();
  v7 = swift_allocObject();
  v7[2] = v6;
  v7[3] = &protocol witness table for MainActor;
  v7[4] = v5;
  sub_1001390A0(0, 0, v3, &unk_1001C8330, v7);
}

uint64_t sub_10015A5F0()
{
  v0[2] = type metadata accessor for MainActor();
  v0[3] = static MainActor.shared.getter();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_10015A0A8;

  return sub_1001590DC();
}

uint64_t sub_10015A870()
{
  v1[14] = v0;
  type metadata accessor for MainActor();
  v1[15] = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[16] = v3;
  v1[17] = v2;

  return _swift_task_switch(sub_10015A908, v3, v2);
}

uint64_t sub_10015A908()
{
  sub_100145BB8(0xD000000000000026, 0x8000000100243880);
  sub_100145BB8(0xD000000000000028, 0x80000001002438B0);
  v1 = String._bridgeToObjectiveC()();

  v2 = String._bridgeToObjectiveC()();

  v3 = [objc_opt_self() alertControllerWithTitle:v1 message:v2 preferredStyle:1];
  v0[18] = v3;

  sub_100145BB8(0x505F4C45434E4143, 0xEE00474E49524941);
  v4 = String._bridgeToObjectiveC()();

  v0[6] = sub_10015AE4C;
  v0[7] = 0;
  v0[2] = _NSConcreteStackBlock;
  v0[3] = 1107296256;
  v0[4] = sub_100153088;
  v0[5] = &unk_10026D8B0;
  v5 = _Block_copy(v0 + 2);

  v6 = objc_opt_self();
  v7 = [v6 actionWithTitle:v4 style:1 handler:v5];
  v0[19] = v7;
  _Block_release(v5);

  sub_100145BB8(0x494147415F595254, 0xE90000000000004ELL);
  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v9 = String._bridgeToObjectiveC()();

  v0[12] = sub_10015BA34;
  v0[13] = v8;
  v0[8] = _NSConcreteStackBlock;
  v0[9] = 1107296256;
  v0[10] = sub_100153088;
  v0[11] = &unk_10026D900;
  v10 = _Block_copy(v0 + 8);

  v11 = [v6 actionWithTitle:v9 style:0 handler:v10];
  v0[20] = v11;
  _Block_release(v10);

  [v3 addAction:v7];
  [v3 addAction:v11];
  v12 = swift_task_alloc();
  v0[21] = v12;
  *v12 = v0;
  v12[1] = sub_10015AC84;

  return sub_10015BA3C();
}

uint64_t sub_10015AC84(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 176) = a1;

  v3 = *(v2 + 136);
  v4 = *(v2 + 128);

  return _swift_task_switch(sub_10015ADAC, v4, v3);
}

uint64_t sub_10015ADAC()
{
  v1 = *(v0 + 176);

  if (v1)
  {
    v2 = *(v0 + 176);
    [v2 presentViewController:*(v0 + 144) animated:1 completion:0];
  }

  v3 = *(v0 + 152);
  v4 = *(v0 + 144);

  v5 = *(v0 + 8);

  return v5();
}

void sub_10015AE4C()
{
  if (UIApp)
  {
    objc_opt_self();
    v0 = swift_dynamicCastObjCClass();
    if (v0)
    {

      [v0 unpairOrResetBuddyForEvent:58];
    }
  }
}

uint64_t sub_10015AEBC(uint64_t a1)
{
  v2 = sub_1001379C4(&qword_1002BC790);
  __chkstk_darwin(v2 - 8);
  v4 = &v9 - v3;
  v5 = type metadata accessor for TaskPriority();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  type metadata accessor for MainActor();

  v6 = static MainActor.shared.getter();
  v7 = swift_allocObject();
  v7[2] = v6;
  v7[3] = &protocol witness table for MainActor;
  v7[4] = a1;
  sub_10013A6D8(0, 0, v4, &unk_1001C8380, v7);
}

uint64_t sub_10015AFE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a1;
  v4[6] = a4;
  type metadata accessor for MainActor();
  v4[7] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[8] = v6;
  v4[9] = v5;

  return _swift_task_switch(sub_10015B078, v6, v5);
}

uint64_t sub_10015B078()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 80) = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    *(v0 + 88) = v2;
    *v2 = v0;
    v2[1] = sub_10015B17C;

    return sub_1001590DC();
  }

  else
  {

    **(v0 + 40) = *(v0 + 80) == 0;
    v4 = *(v0 + 8);

    return v4();
  }
}

uint64_t sub_10015B17C()
{
  v1 = *v0;
  v2 = *(*v0 + 80);

  v3 = *(v1 + 72);
  v4 = *(v1 + 64);

  return _swift_task_switch(sub_10015B2BC, v4, v3);
}

uint64_t sub_10015B2BC()
{

  **(v0 + 40) = *(v0 + 80) == 0;
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10015B330(uint64_t a1, void *a2)
{
  v3 = sub_10014A6A0((a1 + 32), *(a1 + 56));
  v4 = *v3;
  **(*(*v3 + 64) + 40) = a2;
  v5 = a2;

  return _swift_continuation_resume(v4);
}

id sub_10015B3E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *&v7[OBJC_IVAR___COSCDPRepairController_cdpEncryptionHelper] = 0;
  v11 = String._bridgeToObjectiveC()();

  if (!a4)
  {
    v12 = 0;
    if (a6)
    {
      goto LABEL_3;
    }

LABEL_5:
    v13 = 0;
    goto LABEL_6;
  }

  v12 = String._bridgeToObjectiveC()();

  if (!a6)
  {
    goto LABEL_5;
  }

LABEL_3:
  v13 = String._bridgeToObjectiveC()();

LABEL_6:
  v16.receiver = v7;
  v16.super_class = type metadata accessor for CDPRepairController();
  v14 = objc_msgSendSuper2(&v16, "initWithTitle:detailText:symbolName:contentLayout:", v11, v12, v13, a7);

  return v14;
}

id sub_10015B680()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CDPRepairController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10015B6C4()
{
  v15[3] = &type metadata for FeatureFlags;
  v15[4] = sub_100144D98();
  LOBYTE(v15[0]) = 1;
  v0 = isFeatureEnabled(_:)();
  sub_10014A63C(v15);
  if ((v0 & 1) == 0)
  {
    return 0;
  }

  result = [objc_opt_self() contextForPrimaryAccount];
  if (!result)
  {
    return result;
  }

  v2 = result;
  v3 = [objc_allocWithZone(CDPStateController) initWithContext:result];
  if (!v3)
  {
LABEL_6:

    return 0;
  }

  v4 = v3;
  v15[0] = 0;
  if ([v3 isManateeAvailable:v15])
  {
    v5 = v15[0];

    goto LABEL_6;
  }

  v6 = v15[0];
  _convertNSErrorToError(_:)();

  swift_willThrow();
  if (qword_1002BE510 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_10014F530(v7, qword_1002BE7D8);
  swift_errorRetain();
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v15[0] = v11;
    *v10 = 136315138;
    swift_getErrorValue();
    v12 = Error.localizedDescription.getter();
    v14 = sub_10014A094(v12, v13, v15);

    *(v10 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v8, v9, "offering CDP repair. CDP state Error: %s", v10, 0xCu);
    sub_10014A63C(v11);
  }

  else
  {
  }

  return 1;
}

uint64_t sub_10015B964()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10013A238;

  return sub_10015A5F0();
}

uint64_t sub_10015BA1C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10015BA3C()
{
  type metadata accessor for MainActor();
  v0[19] = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();
  v0[20] = v2;
  v0[21] = v1;

  return _swift_task_switch(sub_10015BAD0, v2, v1);
}

uint64_t sub_10015BAD0()
{
  v1 = UIApp;
  v0[22] = UIApp;
  if (v1 && (objc_opt_self(), (v2 = swift_dynamicCastObjCClass()) != 0))
  {
    v3 = v2;
    v0[2] = v0;
    v0[7] = v0 + 18;
    v0[3] = sub_10015BC68;
    v4 = swift_continuation_init();
    v0[17] = sub_1001379C4(&qword_1002BCEC8);
    v0[10] = _NSConcreteStackBlock;
    v0[11] = 1107296256;
    v0[12] = sub_10015B330;
    v0[13] = &unk_10026D928;
    v0[14] = v4;
    v5 = v1;
    [v3 presentingControllerForModalByDismissingTopAlertIfPresentWithCompletion:v0 + 10];

    return _swift_continuation_await(v0 + 2);
  }

  else
  {

    v6 = v0[1];

    return v6(0);
  }
}

uint64_t sub_10015BC68()
{
  v1 = *(*v0 + 168);
  v2 = *(*v0 + 160);

  return _swift_task_switch(sub_10015BD70, v2, v1);
}

uint64_t sub_10015BD70()
{
  v1 = v0[22];

  v2 = v0[18];

  v3 = v0[1];

  return v3(v2);
}

uint64_t sub_10015BE0C(uint64_t a1)
{
  v4 = *(v1 + 32);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10013A238;

  return sub_10015AFE0(a1, v5, v6, v4);
}

uint64_t sub_10015BEAC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100139EF8;

  return sub_10015A1E4();
}

uint64_t sub_10015BF40()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10013A238;

  return sub_100159FFC();
}

uint64_t sub_10015BFD4()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10015C03C()
{
  type metadata accessor for SettingsEventCenter();
  static SettingsEventCenter.default.getter();
  v0 = type metadata accessor for IntentDonationSettingsNavigationEventResponder();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  IntentDonationSettingsNavigationEventResponder.init(settingsHostApplicationBundleIdentifier:)();
  SettingsEventCenter.addResponder<A>(_:)();

  return (*(v1 + 8))(v3, v0);
}

id sub_10015C144()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SettingsIntentDonationHook();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void *sub_10015C1D4(void *a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = [objc_allocWithZone(UIImageView) initWithImage:a1];
  *&v5[OBJC_IVAR____TtC6Bridge23COSWatchCursiveTextView_screenMaskView] = v10;
  v11 = type metadata accessor for COSWatchCursiveTextBackgroundView();
  v12 = objc_allocWithZone(v11);
  type metadata accessor for COSWatchCursiveTextBlurredView();
  v13 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v14 = a1;
  v15 = [v13 init];
  *&v12[OBJC_IVAR____TtC6Bridge33COSWatchCursiveTextBackgroundView_visualEffectView] = v15;
  v16 = [objc_allocWithZone(UIImageView) initWithImage:v14];
  *&v12[OBJC_IVAR____TtC6Bridge33COSWatchCursiveTextBackgroundView_backgroundImageView] = v16;
  v40.receiver = v12;
  v40.super_class = v11;
  v17 = objc_msgSendSuper2(&v40, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v18 = *((swift_isaMask & *v17) + 0x68);
  v19 = v17;
  v18();

  *&v5[OBJC_IVAR____TtC6Bridge23COSWatchCursiveTextView_backgroundView] = v19;
  if (_UISolariumEnabled() && (v37 = &type metadata for FeatureFlags, v38 = sub_100144D98(), v36[0] = 3, v20 = isFeatureEnabled(_:)(), sub_10014A63C(v36), (v20 & 1) != 0))
  {
    v21 = type metadata accessor for COSHelloMetalAnimationView(0);
    v22 = objc_allocWithZone(v21);
    swift_unknownObjectWeakInit();
    v23 = OBJC_IVAR____TtC6Bridge26COSHelloMetalAnimationView_animationFinishedContinuation;
    v24 = sub_1001379C4(&qword_1002BCF30);
    (*(*(v24 - 8) + 56))(&v22[v23], 1, 1, v24);
    *&v22[OBJC_IVAR____TtC6Bridge26COSHelloMetalAnimationView____lazy_storage___viewProvider] = 0;
    swift_beginAccess();
    swift_unknownObjectWeakAssign();
    v35.receiver = v22;
    v35.super_class = v21;
    v25 = objc_msgSendSuper2(&v35, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
    v26 = &off_10026DB28;
  }

  else
  {
    v27 = objc_allocWithZone(type metadata accessor for COSHelloAnimationView(0));
    v25 = sub_10015E3BC(a2, a3, a4);
    v26 = &off_10026DB08;
  }

  v28 = &v5[OBJC_IVAR____TtC6Bridge23COSWatchCursiveTextView_cursiveTextView];
  *v28 = v25;
  *(v28 + 1) = v26;
  y = CGPointZero.y;
  v30 = type metadata accessor for COSWatchCursiveTextView();
  v39.receiver = v5;
  v39.super_class = v30;
  v31 = objc_msgSendSuper2(&v39, "initWithFrame:", CGPointZero.x, y, a3, a4);
  v32 = *((swift_isaMask & *v31) + 0x70);
  v33 = v31;
  v32();

  return v33;
}

void *sub_10015C4F8(void *a1)
{
  v3 = objc_allocWithZone(v1);
  type metadata accessor for COSWatchCursiveTextBlurredView();
  *&v3[OBJC_IVAR____TtC6Bridge33COSWatchCursiveTextBackgroundView_visualEffectView] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v4 = [objc_allocWithZone(UIImageView) initWithImage:a1];
  *&v3[OBJC_IVAR____TtC6Bridge33COSWatchCursiveTextBackgroundView_backgroundImageView] = v4;
  v9.receiver = v3;
  v9.super_class = v1;
  v5 = objc_msgSendSuper2(&v9, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v6 = *((swift_isaMask & *v5) + 0x68);
  v7 = v5;
  v6();

  return v7;
}

id sub_10015C5EC(void *a1)
{
  v3 = objc_allocWithZone(v1);
  swift_unknownObjectWeakInit();
  v4 = OBJC_IVAR____TtC6Bridge26COSHelloMetalAnimationView_animationFinishedContinuation;
  v5 = sub_1001379C4(&qword_1002BCF30);
  (*(*(v5 - 8) + 56))(&v3[v4], 1, 1, v5);
  *&v3[OBJC_IVAR____TtC6Bridge26COSHelloMetalAnimationView____lazy_storage___viewProvider] = 0;
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  v8.receiver = v3;
  v8.super_class = v1;
  v6 = objc_msgSendSuper2(&v8, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);

  return v6;
}

void sub_10015C7C8()
{
  v1 = *&v0[OBJC_IVAR____TtC6Bridge23COSWatchCursiveTextView_cursiveTextView];
  [v1 setTranslatesAutoresizingMaskIntoConstraints:0];
  v2 = *&v0[OBJC_IVAR____TtC6Bridge23COSWatchCursiveTextView_backgroundView];
  [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v0 addSubview:v2];
  [v0 addSubview:v1];
  v28 = objc_opt_self();
  sub_1001379C4(&qword_1002BC9C0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1001C83E0;
  v4 = [v2 centerXAnchor];
  v5 = [v0 centerXAnchor];
  v6 = [v4 constraintEqualToAnchor:v5];

  *(v3 + 32) = v6;
  v7 = [v2 centerYAnchor];
  v8 = [v0 centerYAnchor];
  v9 = [v7 constraintEqualToAnchor:v8];

  *(v3 + 40) = v9;
  v10 = [v2 widthAnchor];
  v11 = [v0 widthAnchor];
  v12 = [v10 constraintEqualToAnchor:v11];

  *(v3 + 48) = v12;
  v13 = [v2 heightAnchor];
  v14 = [v0 heightAnchor];
  v15 = [v13 constraintEqualToAnchor:v14];

  *(v3 + 56) = v15;
  v16 = [v1 centerXAnchor];
  v17 = [v2 centerXAnchor];
  v18 = [v16 constraintEqualToAnchor:v17];

  *(v3 + 64) = v18;
  v19 = [v1 centerYAnchor];
  v20 = [v2 centerYAnchor];
  v21 = [v19 constraintEqualToAnchor:v20];

  *(v3 + 72) = v21;
  v22 = [v1 widthAnchor];
  v23 = [v2 widthAnchor];
  v24 = [v22 constraintEqualToAnchor:v23];

  *(v3 + 80) = v24;
  v25 = [v1 heightAnchor];
  v26 = [v2 heightAnchor];
  v27 = [v25 constraintEqualToAnchor:v26];

  *(v3 + 88) = v27;
  sub_10013BBD4(0, &qword_1002BC9C8);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v28 activateConstraints:isa];
}

void sub_10015CC2C()
{
  v10.receiver = v0;
  v10.super_class = type metadata accessor for COSWatchCursiveTextView();
  objc_msgSendSuper2(&v10, "layoutSubviews");
  v1 = *&v0[OBJC_IVAR____TtC6Bridge23COSWatchCursiveTextView_screenMaskView];
  [v0 bounds];
  v3 = v2 + -0.5;
  [v0 bounds];
  v5 = v4 + -0.5;
  [v0 bounds];
  v7 = v6 + 1.0;
  [v0 bounds];
  [v1 setFrame:{v3, v5, v7, CGRectGetHeight(v11) + 1.0}];
  v8 = [v1 image];
  if (v8)
  {

    v9 = v1;
  }

  else
  {
    v9 = 0;
  }

  [v0 setMaskView:v9];
}

uint64_t sub_10015CD88()
{
  v1 = *(v0 + OBJC_IVAR____TtC6Bridge23COSWatchCursiveTextView_cursiveTextView + 8);
  ObjectType = swift_getObjectType();
  return (*(v1 + 8))(ObjectType, v1);
}

uint64_t sub_10015CDD4()
{
  v1 = *(v0 + OBJC_IVAR____TtC6Bridge23COSWatchCursiveTextView_cursiveTextView + 8);
  ObjectType = swift_getObjectType();
  return (*(v1 + 16))(ObjectType, v1);
}

uint64_t sub_10015CE20()
{
  v1[2] = v0;
  type metadata accessor for MainActor();
  v1[3] = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[4] = v3;
  v1[5] = v2;

  return _swift_task_switch(sub_10015CEB8, v3, v2);
}

uint64_t sub_10015CEB8()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC6Bridge23COSWatchCursiveTextView_cursiveTextView + 8);
  ObjectType = swift_getObjectType();
  v5 = (*(v1 + 24) + **(v1 + 24));
  v3 = swift_task_alloc();
  *(v0 + 48) = v3;
  *v3 = v0;
  v3[1] = sub_10015CFE8;

  return v5(ObjectType, v1);
}

uint64_t sub_10015CFE8()
{
  v1 = *v0;

  v2 = *(v1 + 40);
  v3 = *(v1 + 32);

  return _swift_task_switch(sub_10015A3CC, v3, v2);
}

uint64_t sub_10015D108()
{
  memset(v1, 0, sizeof(v1));
  v2 = 1;
  return sub_100165968(v1);
}

void sub_10015D2D4()
{
  v1 = *&v0[OBJC_IVAR____TtC6Bridge33COSWatchCursiveTextBackgroundView_backgroundImageView];
  [v1 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v0 addSubview:v1];
  v2 = *&v0[OBJC_IVAR____TtC6Bridge33COSWatchCursiveTextBackgroundView_visualEffectView];
  [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v0 addSubview:v2];
  v28 = objc_opt_self();
  sub_1001379C4(&qword_1002BC9C0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1001C83E0;
  v4 = [v2 centerXAnchor];
  v5 = [v0 centerXAnchor];
  v6 = [v4 constraintEqualToAnchor:v5];

  *(v3 + 32) = v6;
  v7 = [v2 centerYAnchor];
  v8 = [v0 centerYAnchor];
  v9 = [v7 constraintEqualToAnchor:v8];

  *(v3 + 40) = v9;
  v10 = [v2 widthAnchor];
  v11 = [v0 widthAnchor];
  v12 = [v10 constraintEqualToAnchor:v11];

  *(v3 + 48) = v12;
  v13 = [v2 heightAnchor];
  v14 = [v0 heightAnchor];
  v15 = [v13 constraintEqualToAnchor:v14];

  *(v3 + 56) = v15;
  v16 = [v1 centerXAnchor];
  v17 = [v2 centerXAnchor];
  v18 = [v16 constraintEqualToAnchor:v17];

  *(v3 + 64) = v18;
  v19 = [v1 centerYAnchor];
  v20 = [v2 centerYAnchor];
  v21 = [v19 constraintEqualToAnchor:v20];

  *(v3 + 72) = v21;
  v22 = [v1 widthAnchor];
  v23 = [v2 widthAnchor];
  v24 = [v22 constraintEqualToAnchor:v23];

  *(v3 + 80) = v24;
  v25 = [v1 heightAnchor];
  v26 = [v2 heightAnchor];
  v27 = [v25 constraintEqualToAnchor:v26];

  *(v3 + 88) = v27;
  sub_10013BBD4(0, &qword_1002BC9C8);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v28 activateConstraints:isa];
}

id sub_10015D738(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t sub_10015D7C8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEE00736567644564;
  v3 = 0x7261487475706E69;
  v4 = a1;
  v5 = 0x756C427475706E69;
  v6 = 0xEF7365756C615665;
  if (a1 != 6)
  {
    v5 = 0xD000000000000010;
    v6 = 0x80000001002439F0;
  }

  v7 = 0x6F6D417475706E69;
  v8 = 0xEB00000000746E75;
  if (a1 != 4)
  {
    v7 = 0x6465527475706E69;
    v8 = 0xEE007365756C6156;
  }

  if (a1 <= 5u)
  {
    v6 = v8;
  }

  else
  {
    v7 = v5;
  }

  v9 = 0xEB00000000726568;
  v10 = 0x6461527475706E69;
  if (a1 == 2)
  {
    v10 = 0x7469447475706E69;
  }

  else
  {
    v9 = 0xEB00000000737569;
  }

  v11 = 0x8000000100243980;
  v12 = 0xD000000000000013;
  if (a1)
  {
    v12 = 0x7261487475706E69;
    v11 = 0xEE00736567644564;
  }

  if (a1 <= 1u)
  {
    v9 = v11;
  }

  else
  {
    v12 = v10;
  }

  if (a1 <= 3u)
  {
    v13 = v12;
  }

  else
  {
    v13 = v7;
  }

  if (v4 <= 3)
  {
    v14 = v9;
  }

  else
  {
    v14 = v6;
  }

  if (a2 > 3u)
  {
    if (a2 > 5u)
    {
      if (a2 == 6)
      {
        v2 = 0xEF7365756C615665;
        if (v13 != 0x756C427475706E69)
        {
          goto LABEL_44;
        }
      }

      else
      {
        v2 = 0x80000001002439F0;
        if (v13 != 0xD000000000000010)
        {
          goto LABEL_44;
        }
      }

      goto LABEL_41;
    }

    if (a2 != 4)
    {
      v2 = 0xEE007365756C6156;
      if (v13 != 0x6465527475706E69)
      {
        goto LABEL_44;
      }

      goto LABEL_41;
    }

    v15 = 0x6F6D417475706E69;
    v16 = 7630453;
LABEL_32:
    v2 = v16 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
    if (v13 != v15)
    {
      goto LABEL_44;
    }

    goto LABEL_41;
  }

  if (a2 <= 1u)
  {
    if (!a2)
    {
      v2 = 0x8000000100243980;
      if (v13 != 0xD000000000000013)
      {
        goto LABEL_44;
      }

      goto LABEL_41;
    }

    goto LABEL_40;
  }

  if (a2 == 2)
  {
    v15 = 0x7469447475706E69;
    v16 = 7497064;
    goto LABEL_32;
  }

  v3 = 0x6461527475706E69;
  v2 = 0xEB00000000737569;
LABEL_40:
  if (v13 != v3)
  {
LABEL_44:
    v17 = _stringCompareWithSmolCheck(_:_:expecting:)();
    goto LABEL_45;
  }

LABEL_41:
  if (v14 != v2)
  {
    goto LABEL_44;
  }

  v17 = 1;
LABEL_45:

  return v17 & 1;
}

uint64_t sub_10015DA98()
{
  String.hash(into:)();
}

Swift::Int sub_10015DC10()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_10015DD94@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100161AC4(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_10015DDC4@<X0>(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEE00736567644564;
  v4 = 0x7261487475706E69;
  v5 = 0xEF7365756C615665;
  v6 = 0x756C427475706E69;
  if (v2 != 6)
  {
    v6 = 0xD000000000000010;
    v5 = 0x80000001002439F0;
  }

  v7 = 0xEB00000000746E75;
  v8 = 0x6F6D417475706E69;
  if (v2 != 4)
  {
    v8 = 0x6465527475706E69;
    v7 = 0xEE007365756C6156;
  }

  if (*v1 <= 5u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xEB00000000726568;
  v10 = 0x7469447475706E69;
  result = 0x6461527475706E69;
  if (v2 != 2)
  {
    v10 = 0x6461527475706E69;
    v9 = 0xEB00000000737569;
  }

  if (!*v1)
  {
    v4 = 0xD000000000000013;
    v3 = 0x8000000100243980;
  }

  if (*v1 > 1u)
  {
    v4 = v10;
    v3 = v9;
  }

  if (*v1 <= 3u)
  {
    v12 = v4;
  }

  else
  {
    v12 = v6;
  }

  if (*v1 > 3u)
  {
    v3 = v5;
  }

  *a1 = v12;
  a1[1] = v3;
  return result;
}

id sub_10015DF40()
{
  v0 = [objc_allocWithZone(CAFilter) initWithType:kCAFilterGaussianBlur];
  isa = Bool._bridgeToObjectiveC()().super.super.isa;
  v2 = String._bridgeToObjectiveC()();
  [v0 setValue:isa forKey:v2];

  v3 = Bool._bridgeToObjectiveC()().super.super.isa;
  v4 = String._bridgeToObjectiveC()();
  [v0 setValue:v3 forKey:v4];

  v5 = Bool._bridgeToObjectiveC()().super.super.isa;
  v6 = String._bridgeToObjectiveC()();
  [v0 setValue:v5 forKey:v6];

  return v0;
}

id sub_10015E07C(void *a1)
{
  v3 = OBJC_IVAR____TtC6Bridge30COSWatchCursiveTextBlurredView_blurFilter;
  *&v1[v3] = sub_10015DF40();
  v4 = OBJC_IVAR____TtC6Bridge30COSWatchCursiveTextBlurredView_saturationFilter;
  *&v1[v4] = [objc_allocWithZone(CAFilter) initWithType:kCAFilterColorSaturate];
  v7.receiver = v1;
  v7.super_class = type metadata accessor for COSWatchCursiveTextBlurredView();
  v5 = objc_msgSendSuper2(&v7, "initWithCoder:", a1);

  if (v5)
  {
  }

  return v5;
}

void *sub_10015E150(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC6Bridge30COSWatchCursiveTextBlurredView_blurFilter;
  *&v4[v9] = sub_10015DF40();
  v10 = OBJC_IVAR____TtC6Bridge30COSWatchCursiveTextBlurredView_saturationFilter;
  *&v4[v10] = [objc_allocWithZone(CAFilter) initWithType:kCAFilterColorSaturate];
  v21.receiver = v4;
  v21.super_class = type metadata accessor for COSWatchCursiveTextBlurredView();
  v11 = objc_msgSendSuper2(&v21, "initWithFrame:", a1, a2, a3, a4);
  [v11 _setOverrideVibrancyTrait:1];
  v12 = [v11 layer];
  sub_1001379C4(&unk_1002BC180);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1001C7860;
  v14 = *(v11 + OBJC_IVAR____TtC6Bridge30COSWatchCursiveTextBlurredView_blurFilter);
  v15 = sub_10013BBD4(0, &qword_1002BCF50);
  *(v13 + 56) = v15;
  *(v13 + 32) = v14;
  v16 = *(v11 + OBJC_IVAR____TtC6Bridge30COSWatchCursiveTextBlurredView_saturationFilter);
  *(v13 + 88) = v15;
  *(v13 + 64) = v16;
  v17 = v14;
  v18 = v16;
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v12 setFilters:isa];

  (*((swift_isaMask & *v11) + 0x60))();
  return v11;
}

void *sub_10015E3BC(double a1, double a2, double a3)
{
  v7 = sub_1001379C4(&unk_1002BC530);
  __chkstk_darwin(v7 - 8);
  v9 = v29 - v8;
  *&v3[OBJC_IVAR____TtC6Bridge21COSHelloAnimationView_animationTimer] = 0;
  v10 = OBJC_IVAR____TtC6Bridge21COSHelloAnimationView_animationStartTime;
  *&v3[v10] = CFAbsoluteTimeGetCurrent();
  sub_10013BBD4(0, &qword_1002BCF58);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v12 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v13 = String._bridgeToObjectiveC()();
  v14 = String._bridgeToObjectiveC()();
  v15 = [v12 URLForResource:v13 withExtension:v14];

  if (v15)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v16 = type metadata accessor for URL();
    (*(*(v16 - 8) + 56))(v9, 0, 1, v16);
  }

  else
  {
    v17 = type metadata accessor for URL();
    (*(*(v17 - 8) + 56))(v9, 1, 1, v17);
  }

  sub_100161C0C(v9, &v3[OBJC_IVAR____TtC6Bridge21COSHelloAnimationView_languageURL]);
  *&v3[OBJC_IVAR____TtC6Bridge21COSHelloAnimationView_pointSize] = a1;
  y = CGPointZero.y;
  v19 = type metadata accessor for COSHelloAnimationView(0);
  v30.receiver = v3;
  v30.super_class = v19;
  v20 = objc_msgSendSuper2(&v30, "initWithFrame:", CGPointZero.x, y, a2, a3);
  v21 = [v20 layer];
  sub_1001379C4(&unk_1002BC180);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_1001C70B0;
  v23 = [objc_allocWithZone(CAFilter) initWithType:kCAFilterVibrantColorMatrix];
  v24 = objc_opt_self();
  v29[0] = xmmword_1001C83F0;
  v29[1] = xmmword_1001C8400;
  v29[2] = xmmword_1001C8410;
  v29[3] = xmmword_1001C8420;
  v29[4] = xmmword_1001C8430;
  v25 = [v24 valueWithCAColorMatrix:v29];
  v26 = String._bridgeToObjectiveC()();
  [v23 setValue:v25 forKey:v26];

  *(v22 + 56) = sub_10013BBD4(0, &qword_1002BCF50);
  *(v22 + 32) = v23;
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v21 setFilters:isa];

  (*((swift_isaMask & *v20) + 0xC8))();
  return v20;
}

BOOL sub_10015E910()
{
  [v0 boundingBoxOfTextPath];
  v2 = v1;
  [v0 textPathScalePerc];
  v4 = v2 * v3;
  v5 = [v0 frame];
  v7 = v6 + v6 * -0.16;
  if (v4 > v7)
  {
    *(v0 + OBJC_IVAR____TtC6Bridge21COSHelloAnimationView_pointSize) = v7 / v4 * *(v0 + OBJC_IVAR____TtC6Bridge21COSHelloAnimationView_pointSize);
    (*((swift_isaMask & *v0) + 0xC8))(v5);
  }

  return v4 > v7;
}

id sub_10015E9D4()
{
  v1 = v0;
  v2 = sub_1001379C4(&unk_1002BC530);
  __chkstk_darwin(v2 - 8);
  v4 = &v16 - v3;
  v5 = OBJC_IVAR____TtC6Bridge21COSHelloAnimationView_animationTimer;
  [*&v1[OBJC_IVAR____TtC6Bridge21COSHelloAnimationView_animationTimer] invalidate];
  v6 = *&v1[v5];
  *&v1[v5] = 0;

  sub_10013DD90(&v1[OBJC_IVAR____TtC6Bridge21COSHelloAnimationView_languageURL], v4, &unk_1002BC530);
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  v10 = 0;
  if ((*(v8 + 48))(v4, 1, v7) != 1)
  {
    URL._bridgeToObjectiveC()(v9);
    v10 = v11;
    (*(v8 + 8))(v4, v7);
  }

  v12 = *&v1[OBJC_IVAR____TtC6Bridge21COSHelloAnimationView_pointSize];
  sub_100161988(&_swiftEmptyArrayStorage);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v1 loadText:v10 pointSize:isa options:v12];

  [v1 duration];
  return [v1 setTime:v14];
}

void sub_10015EBB4(char a1)
{
  v3 = sub_1001379C4(&unk_1002BC530);
  __chkstk_darwin(v3 - 8);
  v5 = v17 - v4;
  v6 = OBJC_IVAR____TtC6Bridge21COSHelloAnimationView_animationTimer;
  [*&v1[OBJC_IVAR____TtC6Bridge21COSHelloAnimationView_animationTimer] invalidate];
  v7 = *&v1[v6];
  *&v1[v6] = 0;

  sub_10013DD90(&v1[OBJC_IVAR____TtC6Bridge21COSHelloAnimationView_languageURL], v5, &unk_1002BC530);
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  v11 = 0;
  if ((*(v9 + 48))(v5, 1, v8) != 1)
  {
    URL._bridgeToObjectiveC()(v10);
    v11 = v12;
    (*(v9 + 8))(v5, v8);
  }

  v13 = *&v1[OBJC_IVAR____TtC6Bridge21COSHelloAnimationView_pointSize];
  sub_1001379C4(&qword_1002BCF60);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001C70B0;
  v17[1] = 0x7245656C62616E65;
  v17[2] = 0xEB00000000657361;
  AnyHashable.init<A>(_:)();
  *(inited + 96) = &type metadata for Bool;
  v15 = a1 & 1;
  *(inited + 72) = v15;
  sub_100161988(inited);
  swift_setDeallocating();
  sub_10013A05C(inited + 32, &qword_1002BCF68);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v1 loadText:v11 pointSize:isa options:v13];

  *&v1[OBJC_IVAR____TtC6Bridge21COSHelloAnimationView_animationStartTime] = CFAbsoluteTimeGetCurrent();
  sub_10015EF94(v15);
}

uint64_t sub_10015EEA0()
{
  type metadata accessor for MainActor();
  *(v0 + 16) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10015EF34, v2, v1);
}

uint64_t sub_10015EF34()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_10015EF94(char a1)
{
  v3 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v4 + 24) = a1;
  v13[4] = sub_100162154;
  v13[5] = v4;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 1107296256;
  v13[2] = sub_100153088;
  v13[3] = &unk_10026DCA0;
  v5 = _Block_copy(v13);
  v6 = objc_opt_self();

  v7 = [v6 timerWithTimeInterval:1 repeats:v5 block:0.0166666667];
  _Block_release(v5);

  v8 = OBJC_IVAR____TtC6Bridge21COSHelloAnimationView_animationTimer;
  v9 = *(v1 + OBJC_IVAR____TtC6Bridge21COSHelloAnimationView_animationTimer);
  *(v1 + OBJC_IVAR____TtC6Bridge21COSHelloAnimationView_animationTimer) = v7;

  v10 = [objc_opt_self() currentRunLoop];
  v11 = *(v1 + v8);
  if (v11)
  {
    v12 = v10;
    [v10 addTimer:v11 forMode:NSRunLoopCommonModes];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_10015F23C()
{
  v4 = (*((swift_isaMask & *v0) + 0xE8) + **((swift_isaMask & *v0) + 0xE8));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_100139EF8;

  return v4();
}

void sub_10015F3A4(void *a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
}

void (*sub_10015F400(uint64_t *a1))(id **a1, char a2)
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
  v5 = OBJC_IVAR____TtC6Bridge26COSHelloMetalAnimationView_backgroundView;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_10015F498;
}

void sub_10015F498(id **a1, char a2)
{
  v3 = *a1;
  v4 = (*a1)[3];
  swift_unknownObjectWeakAssign();
  if (a2)
  {

    swift_endAccess();
  }

  else
  {
    swift_endAccess();
  }

  free(v3);
}

id sub_10015F514()
{
  v1 = OBJC_IVAR____TtC6Bridge26COSHelloMetalAnimationView____lazy_storage___viewProvider;
  v2 = *(v0 + OBJC_IVAR____TtC6Bridge26COSHelloMetalAnimationView____lazy_storage___viewProvider);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC6Bridge26COSHelloMetalAnimationView____lazy_storage___viewProvider);
  }

  else
  {
    v4 = sub_10015F578();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_10015F578()
{
  v0 = type metadata accessor for Locale();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &aBlock - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1001379C4(&qword_1002BD090);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1001C70B0;
  static Locale.current.getter();
  v5 = Locale.identifier.getter();
  v7 = v6;
  (*(v1 + 8))(v3, v0);
  *(v4 + 32) = v5;
  *(v4 + 40) = v7;
  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v10 = objc_allocWithZone(SASBookendCallbackConfiguration);
  v23 = sub_10016212C;
  v24 = v8;
  aBlock = _NSConcreteStackBlock;
  v20 = 1107296256;
  v21 = sub_100162324;
  v22 = &unk_10026DC00;
  v11 = _Block_copy(&aBlock);

  v23 = sub_100162134;
  v24 = v9;
  aBlock = _NSConcreteStackBlock;
  v20 = 1107296256;
  v21 = sub_100162324;
  v22 = &unk_10026DC28;
  v12 = _Block_copy(&aBlock);

  v13 = [v10 initOnAnimationWillBegin:v11 onAnimationDidFinish:v12];
  _Block_release(v12);
  _Block_release(v11);
  v14 = objc_allocWithZone(SASBookendViewProvider);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v16 = [v14 initWithBookendType:0 onlyShowLanguages:isa callbacks:v13];

  v17 = [objc_allocWithZone(SASBookendAnimationConfiguration) init];
  [v17 setPreferedAnimationStartingPoint:1];
  [v17 useWatchVariant:1];
  [v16 setAnimationConfiguration:v17];

  return v16;
}

uint64_t sub_10015F894()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = result;
    v6 = sub_100158F54();
    (*(v1 + 16))(v3, v6, v0);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, v8, "Hello animation will begin", v9, 2u);
    }

    return (*(v1 + 8))(v3, v0);
  }

  return result;
}

void sub_10015FA1C()
{
  v0 = sub_1001379C4(&qword_1002BCF70);
  v1 = __chkstk_darwin(v0 - 8);
  v3 = &v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v1);
  v5 = &v23 - v4;
  v6 = sub_1001379C4(&qword_1002BCF30);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v23 - v8;
  v10 = type metadata accessor for Logger();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v15 = Strong;
    v25 = v9;
    v16 = sub_100158F54();
    (*(v11 + 16))(v13, v16, v10);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v24 = v7;
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v17, v18, "Hello animation did finish", v19, 2u);
      v7 = v24;
    }

    (*(v11 + 8))(v13, v10);
    v20 = OBJC_IVAR____TtC6Bridge26COSHelloMetalAnimationView_animationFinishedContinuation;
    swift_beginAccess();
    sub_10013DD90(v15 + v20, v5, &qword_1002BCF70);
    if ((*(v7 + 48))(v5, 1, v6) == 1)
    {

      sub_10013A05C(v5, &qword_1002BCF70);
    }

    else
    {
      v21 = v25;
      v22 = (*(v7 + 32))(v25, v5, v6);
      (*((swift_isaMask & *v15) + 0xD0))(v22);
      CheckedContinuation.resume(returning:)();
      (*(v7 + 8))(v21, v6);
      (*(v7 + 56))(v3, 1, 1, v6);
      swift_beginAccess();
      sub_1001620BC(v3, v15 + v20);
      swift_endAccess();
    }
  }
}

id sub_10015FED4()
{
  v1 = sub_10015F514();
  [v1 stopAnimation];

  v3.receiver = v0;
  v3.super_class = type metadata accessor for COSHelloMetalAnimationView(0);
  return objc_msgSendSuper2(&v3, "dealloc");
}

void sub_10016006C()
{
  v1 = (*((swift_isaMask & *v0) + 0x68))();
  if (v1)
  {
    v2 = v1;
    memset(v12, 0, sizeof(v12));
    v13 = 1;
    v3 = sub_100165968(v12);

    v4 = UIImagePNGRepresentation(v3);
    if (v4)
    {
      v5 = v4;
      v6 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v8 = v7;

      v9 = sub_10015F514();
      isa = Data._bridgeToObjectiveC()().super.isa;
      [v9 setBackgroundData:isa];

      sub_100161C7C(v6, v8);
    }

    else
    {
    }
  }

  v11 = sub_10015F514();
  [v11 startAnimation];
}

void sub_1001601A4()
{
  v0 = sub_10015F514();
  [v0 stopAnimation];
}

void sub_1001601E8()
{
  v0 = sub_10015F514();
  [v0 pauseAnimation];
}

uint64_t sub_10016022C()
{
  v1[2] = v0;
  v1[3] = type metadata accessor for MainActor();
  v1[4] = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[5] = v3;
  v1[6] = v2;

  return _swift_task_switch(sub_1001602C8, v3, v2);
}

uint64_t sub_1001602C8()
{
  v1 = v0[2];
  v0[7] = static MainActor.shared.getter();
  v2 = swift_task_alloc();
  v0[8] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[9] = v3;
  *v3 = v0;
  v3[1] = sub_1001603CC;

  return withCheckedContinuation<A>(isolation:function:_:)();
}

uint64_t sub_1001603CC()
{
  v1 = *v0;

  v2 = *(v1 + 48);
  v3 = *(v1 + 40);

  return _swift_task_switch(sub_10016052C, v3, v2);
}

uint64_t sub_10016052C()
{

  v1 = *(v0 + 8);

  return v1();
}

id sub_10016058C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001379C4(&qword_1002BCF70);
  __chkstk_darwin(v4 - 8);
  v6 = &v12 - v5;
  v7 = sub_1001379C4(&qword_1002BCF30);
  v8 = *(v7 - 8);
  (*(v8 + 16))(v6, a1, v7);
  (*(v8 + 56))(v6, 0, 1, v7);
  v9 = OBJC_IVAR____TtC6Bridge26COSHelloMetalAnimationView_animationFinishedContinuation;
  swift_beginAccess();
  sub_1001620BC(v6, a2 + v9);
  swift_endAccess();
  v10 = sub_10015F514();
  [v10 shouldRenderBackgroundTexture:0];

  sub_100160700(1);
  return [*(a2 + OBJC_IVAR____TtC6Bridge26COSHelloMetalAnimationView____lazy_storage___viewProvider) advanceToEndOfAnimation];
}

void sub_100160700(char a1)
{
  v2 = v1;
  v4 = (*((swift_isaMask & *v1) + 0x68))();
  v5 = v4;
  if (a1)
  {
    if (!v4)
    {
      return;
    }

    v6 = *(v4 + OBJC_IVAR____TtC6Bridge33COSWatchCursiveTextBackgroundView_backgroundImageView);

    v7 = [v6 image];
    if (!v7)
    {
      return;
    }

    image = (*((swift_isaMask & *v2) + 0xF0))(v7, 80.0);

    if (!image)
    {
      return;
    }
  }

  else
  {
    if (!v4)
    {
      return;
    }

    memset(v16, 0, sizeof(v16));
    v17 = 1;
    image = sub_100165968(v16);
  }

  v8 = UIImagePNGRepresentation(image);
  if (v8)
  {
    v9 = v8;
    v10 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;

    v13 = sub_10015F514();
    isa = Data._bridgeToObjectiveC()().super.isa;
    [v13 setBackgroundData:isa];

    sub_100161C7C(v10, v12);
  }

  else
  {
  }
}

id sub_1001608F0()
{
  v1 = sub_10015F514();
  v2 = [v1 view];

  [v0 addSubview:v2];
  [v0 setTranslatesAutoresizingMaskIntoConstraints:0];
  v3 = OBJC_IVAR____TtC6Bridge26COSHelloMetalAnimationView____lazy_storage___viewProvider;
  v4 = [*&v0[OBJC_IVAR____TtC6Bridge26COSHelloMetalAnimationView____lazy_storage___viewProvider] view];
  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];

  v5 = objc_opt_self();
  sub_1001379C4(&qword_1002BC9C0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1001C8440;
  v7 = [*&v0[v3] view];
  v8 = [v7 topAnchor];

  v9 = [v0 topAnchor];
  v10 = [v8 constraintEqualToAnchor:v9];

  *(v6 + 32) = v10;
  v11 = [*&v0[v3] view];
  v12 = [v11 leadingAnchor];

  v13 = [v0 leadingAnchor];
  v14 = [v12 constraintEqualToAnchor:v13];

  *(v6 + 40) = v14;
  v15 = [*&v0[v3] view];
  v16 = [v15 trailingAnchor];

  v17 = [v0 trailingAnchor];
  v18 = [v16 constraintEqualToAnchor:v17];

  *(v6 + 48) = v18;
  v19 = [*&v0[v3] view];
  v20 = [v19 bottomAnchor];

  v21 = [v0 bottomAnchor];
  v22 = [v20 constraintEqualToAnchor:v21];

  *(v6 + 56) = v22;
  sub_10013BBD4(0, &qword_1002BC9C8);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v5 activateConstraints:isa];

  return [v0 setNeedsLayout];
}

id sub_100160C24(uint64_t a1)
{
  result = [objc_allocWithZone(CIImage) initWithImage:a1];
  if (result)
  {
    v2 = result;
    v3 = String._bridgeToObjectiveC()();
    v4 = [objc_opt_self() filterWithName:v3];

    if (v4)
    {
      [v4 setValue:v2 forKey:kCIInputImageKey];
      v5 = v4;
      isa = Double._bridgeToObjectiveC()().super.super.isa;
      [v5 setValue:isa forKey:kCIInputRadiusKey];

      v7 = [v5 outputImage];
      if (v7)
      {
        v8 = v7;
        [v2 extent];
        v9 = [v8 imageByCroppingToRect:?];
        v10 = [objc_allocWithZone(CIContext) init];
        [v9 extent];
        v11 = [v10 createCGImage:v9 fromRect:?];
        if (v11)
        {
          v12 = v11;
          v13 = [objc_allocWithZone(UIImage) initWithCGImage:v11];

          return v13;
        }

        return 0;
      }
    }

    return 0;
  }

  return result;
}

uint64_t sub_100160EC8()
{
  v4 = (*((swift_isaMask & *v0) + 0xD8) + **((swift_isaMask & *v0) + 0xD8));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_10013A238;

  return v4();
}

char *sub_10016102C(uint64_t a1, uint64_t a2)
{
  *&v2[OBJC_IVAR____TtC6Bridge34COSIllustratedWatchCursiveTextView_helloView] = 0;
  *&v2[OBJC_IVAR____TtC6Bridge34COSIllustratedWatchCursiveTextView_backgroundImage] = 0;
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  v14.receiver = v2;
  v14.super_class = type metadata accessor for COSIllustratedWatchCursiveTextView();
  v7 = objc_msgSendSuper2(&v14, "initWithFrame:", CGRectZero.origin.x, y, width, height);
  if (!a2)
  {
    goto LABEL_5;
  }

  v8 = String._bridgeToObjectiveC()();
  [v7 setScreenImageName:v8];

  result = [v7 watchScreenImageView];
  if (result)
  {
    v10 = result;
    v11 = [result image];

    v12 = *&v7[OBJC_IVAR____TtC6Bridge34COSIllustratedWatchCursiveTextView_backgroundImage];
    *&v7[OBJC_IVAR____TtC6Bridge34COSIllustratedWatchCursiveTextView_backgroundImage] = v11;

    result = [v7 watchScreenImageView];
    if (result)
    {
      v13 = result;
      swift_bridgeObjectRelease_n();
      [v13 setImage:0];

LABEL_5:
      sub_10016124C();
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_10016124C()
{
  v1 = v0;
  [v0 watchScreenInsetGuide];
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = OBJC_IVAR____TtC6Bridge34COSIllustratedWatchCursiveTextView_helloView;
  v11 = *&v0[OBJC_IVAR____TtC6Bridge34COSIllustratedWatchCursiveTextView_helloView];
  if (v11)
  {
    [v11 removeFromSuperview];
  }

  v12 = *&v0[OBJC_IVAR____TtC6Bridge34COSIllustratedWatchCursiveTextView_backgroundImage];
  v13 = objc_allocWithZone(type metadata accessor for COSWatchCursiveTextView());
  v14 = v12;
  v15 = sub_10015C1D4(v12, v7 * 0.5, v7, v9);
  v16 = *&v1[v10];
  *&v1[v10] = v15;
  v17 = v15;

  [v1 addSubview:v17];
  result = *&v1[v10];
  if (result)
  {

    return [result setFrame:{v3, v5, v7, v9}];
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100161364()
{
  result = _UISolariumEnabled();
  if (!result || (v4 = &type metadata for FeatureFlags, v5 = sub_100144D98(), v3[0] = 3, v1 = isFeatureEnabled(_:)(), result = sub_10014A63C(v3), v2 = 1.0, (v1 & 1) == 0))
  {
    v2 = 3.0;
  }

  qword_1002BE7F0 = *&v2;
  return result;
}

void sub_100161530()
{
  v1 = *(v0 + OBJC_IVAR____TtC6Bridge34COSIllustratedWatchCursiveTextView_helloView);
  if (v1)
  {
    v2 = *((swift_isaMask & *v1) + 0x78);
    v3 = v1;
    v2();
  }

  else
  {
    __break(1u);
  }
}

void sub_100161660()
{
  v1 = *(v0 + OBJC_IVAR____TtC6Bridge34COSIllustratedWatchCursiveTextView_helloView);
  if (v1)
  {
    v2 = *((swift_isaMask & *v1) + 0x80);
    v3 = v1;
    v2();
  }

  else
  {
    __break(1u);
  }
}

unint64_t sub_10016187C(uint64_t a1)
{
  v2 = v1;
  v4 = AnyHashable._rawHashValue(seed:)(*(v2 + 40));

  return sub_1001618C0(a1, v4);
}

unint64_t sub_1001618C0(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_100162260(*(v2 + 48) + 40 * v4, v8);
      v6 = static AnyHashable.== infix(_:_:)();
      sub_1001622BC(v8);
      if (v6)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_100161988(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1001379C4(&qword_1002BD098);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_10013DD90(v4, v13, &qword_1002BCF68);
      result = sub_10016187C(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_10013F75C(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100161AC4(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_10026DA18, v2);

  if (v3 >= 8)
  {
    return 8;
  }

  else
  {
    return v3;
  }
}

void sub_100161B10()
{
  v1 = *(v0 + OBJC_IVAR____TtC6Bridge30COSWatchCursiveTextBlurredView_blurFilter);
  isa = CGFloat._bridgeToObjectiveC()().super.super.isa;
  v3 = String._bridgeToObjectiveC()();
  [v1 setValue:isa forKey:v3];

  v4 = *(v0 + OBJC_IVAR____TtC6Bridge30COSWatchCursiveTextBlurredView_saturationFilter);
  v5 = CGFloat._bridgeToObjectiveC()().super.super.isa;
  v6 = String._bridgeToObjectiveC()();
  [v4 setValue:v5 forKey:v6];
}

uint64_t sub_100161C0C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001379C4(&unk_1002BC530);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100161C7C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

unint64_t sub_100161D00()
{
  result = qword_1002BCF88;
  if (!qword_1002BCF88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BCF88);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for COSWatchCursiveTextBlurredView.FilterKey(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for COSWatchCursiveTextBlurredView.FilterKey(uint64_t result, unsigned int a2, unsigned int a3)
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

void sub_100161EAC()
{
  sub_100161F54();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_100161F54()
{
  if (!qword_1002BD030)
  {
    type metadata accessor for URL();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1002BD030);
    }
  }
}

void sub_100161FB4()
{
  sub_100162058();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_100162058()
{
  if (!qword_1002BD060)
  {
    sub_10013BA14(&qword_1002BCF30);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1002BD060);
    }
  }
}

uint64_t sub_1001620BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001379C4(&qword_1002BCF70);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10016213C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_100162154()
{
  v1 = *(v0 + 24);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = CFAbsoluteTimeGetCurrent() - *(Strong + OBJC_IVAR____TtC6Bridge21COSHelloAnimationView_animationStartTime);
    v5 = 4.0;
    if (v1)
    {
      [v3 duration];
      v4 = v4 + (v6 * 0.5);
      v5 = 1.0;
    }

    [v3 setTime:v4];
    [v3 duration];
    if (v4 > (v5 + v7))
    {
      (*((swift_isaMask & *v3) + 0xD0))(v1 ^ 1u);
    }
  }
}

void sub_10016233C()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = &v38 - v5;
  v7 = sub_1001379C4(&unk_1002BC530);
  __chkstk_darwin(v7 - 8);
  v9 = &v38 - v8;
  v10 = type metadata accessor for URL();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v38 - v15;
  v45 = 0u;
  v46 = 0u;
  v47 = 2;
  sub_1001628F4(3, 0, 0, v9);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_10013A05C(v9, &unk_1002BC530);
  }

  else
  {
    v41 = v4;
    URL.deletingLastPathComponent()();
    v42 = *(v11 + 8);
    v43 = v11 + 8;
    v42(v9, v10);
    (*(v11 + 32))(v16, v14, v10);
    v17 = LiveActivitySetupLogger.unsafeMutableAddressor();
    v40 = *(v1 + 16);
    v40(v6, v17, v0);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&_mh_execute_header, v18, v19, "Clearing cache", v20, 2u);
    }

    v21 = *(v1 + 8);
    v21(v6, v0);
    v22 = [objc_opt_self() defaultManager];
    URL._bridgeToObjectiveC()(v23);
    v25 = v24;
    v44[0] = 0;
    v26 = [v22 removeItemAtURL:v24 error:v44];

    if (v26)
    {
      v27 = v44[0];
    }

    else
    {
      v28 = v44[0];
      _convertNSErrorToError(_:)();

      swift_willThrow();
      v29 = v41;
      v40(v41, v17, v0);
      swift_errorRetain();
      v30 = Logger.logObject.getter();
      v31 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        v40 = v21;
        v33 = v32;
        v39 = swift_slowAlloc();
        v44[0] = v39;
        *v33 = 136315138;
        swift_getErrorValue();
        v34 = Error.localizedDescription.getter();
        v36 = sub_10014A094(v34, v35, v44);

        *(v33 + 4) = v36;
        _os_log_impl(&_mh_execute_header, v30, v31, "Failed to remove cached files: %s", v33, 0xCu);
        sub_10014A63C(v39);

        (v40)(v41, v0);
      }

      else
      {

        v21(v29, v0);
      }
    }

    v42(v16, v10);
  }

  if (qword_1002BE700 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  qword_1002BE7F8 = &_swiftEmptySetSingleton;

  v37 = qword_1002BE708;
  qword_1002BE708 = 0;
}

uint64_t sub_1001628F4@<X0>(int a1@<W0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v55 = a3;
  v54 = a2;
  v52 = a1;
  v58 = a4;
  v4 = type metadata accessor for Logger();
  v57 = *(v4 - 8);
  __chkstk_darwin(v4);
  v59 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = type metadata accessor for URL.DirectoryHint();
  v51 = *(v53 - 8);
  __chkstk_darwin(v53);
  v50 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1001379C4(&unk_1002BC530);
  v8 = __chkstk_darwin(v7 - 8);
  v10 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v47 - v11;
  v13 = type metadata accessor for URL();
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  v48 = &v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v49 = &v47 - v17;
  v18 = [objc_opt_self() defaultManager];
  v19 = LiveActivitySharedAppGroupName.unsafeMutableAddressor();

  v20 = String._bridgeToObjectiveC()();

  v21 = [v18 containerURLForSecurityApplicationGroupIdentifier:v20];

  if (v21)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v22 = *(v14 + 7);
    v23 = v10;
    v24 = 0;
  }

  else
  {
    v22 = *(v14 + 7);
    v23 = v10;
    v24 = 1;
  }

  v56 = v22;
  v22(v23, v24, 1, v13);
  sub_100161C0C(v10, v12);
  v25 = (*(v14 + 6))(v12, 1, v13);
  v26 = v57;
  v27 = v59;
  if (v25 == 1)
  {
    sub_10013A05C(v12, &unk_1002BC530);
    v28 = LiveActivitySetupLogger.unsafeMutableAddressor();
    v26[2](v27, v28, v4);
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = v4;
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v60[0] = v33;
      *v32 = 136315138;
      v35 = *v19;
      v34 = v19[1];

      v36 = sub_10014A094(v35, v34, v60);

      *(v32 + 4) = v36;
      _os_log_impl(&_mh_execute_header, v29, v30, "No container URL for %s", v32, 0xCu);
      sub_10014A63C(v33);

      (v26[1])(v59, v31);
    }

    else
    {

      (v26[1])(v27, v4);
    }

    v45 = 1;
    v44 = v58;
  }

  else
  {
    strcpy(v60, "LiveActivity");
    BYTE5(v60[1]) = 0;
    HIWORD(v60[1]) = -5120;
    v38 = v50;
    v37 = v51;
    v57 = *(v51 + 104);
    v39 = v53;
    (v57)(v50, enum case for URL.DirectoryHint.isDirectory(_:), v53);
    v47 = sub_100151B04();
    v40 = v48;
    URL.appending<A>(path:directoryHint:)();
    v51 = *(v37 + 8);
    (v51)(v38, v39);
    v59 = v14;
    v41 = *(v14 + 1);
    v41(v12, v13);
    v42 = v49;
    (*(v59 + 4))(v49, v40, v13);
    v60[0] = sub_100162F44(v52, v54, v55);
    v60[1] = v43;
    (v57)(v38, enum case for URL.DirectoryHint.notDirectory(_:), v39);
    v44 = v58;
    URL.appending<A>(path:directoryHint:)();
    (v51)(v38, v39);
    v41(v42, v13);

    v45 = 0;
  }

  return v56(v44, v45, 1, v13);
}

uint64_t sub_100162F44(unsigned __int8 a1, uint64_t a2, void *a3)
{
  v6 = 0xD000000000000022;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v6 = 0xD000000000000023;
    }

    else
    {
      v6 = 0xD000000000000017;
    }
  }

  v27 = v6;
  v7 = *v3;
  if (!*(v3 + 32))
  {
    [v7 hash];
    v13 = dispatch thunk of CustomStringConvertible.description.getter();
LABEL_14:
    String.append(_:)(*&v13);

    v15 = 95;
    v16 = 0xE100000000000000;
    goto LABEL_21;
  }

  v8 = *(v3 + 8);
  v9 = *(v3 + 16);
  v10 = *(v3 + 24);
  if (*(v3 + 32) == 1)
  {
    sub_100151B04();

    StringProtocol.hash.getter();
    v11._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v11);

    v12._countAndFlagsBits = 95;
    v12._object = 0xE100000000000000;
    String.append(_:)(v12);
    if (v10)
    {
      v13 = v9;
    }

    else
    {
      v13 = 0x7542656764697242;
    }

    if (!v10)
    {
      v10 = 0xEC000000656C646ELL;
    }

    v14 = v10;
    goto LABEL_14;
  }

  v17 = (v8 | v7 | v9 | v10) == 0;
  if (v8 | v7 | v9 | v10)
  {
    v15 = 0x6F4370757465735FLL;
  }

  else
  {
    v15 = 0x68637461775FLL;
  }

  if (v17)
  {
    v16 = 0xE600000000000000;
  }

  else
  {
    v16 = 0xEE006574656C706DLL;
  }

LABEL_21:
  v18 = v16;
  String.append(_:)(*&v15);

  if (a3)
  {

    v19._countAndFlagsBits = a2;
    v19._object = a3;
    String.append(_:)(v19);
  }

  result = LiveActivityPlacement.imageHeight.getter();
  if ((*&v21 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_31;
  }

  if (v21 <= -9.22337204e18)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  if (v21 >= 9.22337204e18)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v22._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v22);

  v23._countAndFlagsBits = 120;
  v23._object = 0xE100000000000000;
  String.append(_:)(v23);
  result = LiveActivityPlacement.imageHeight.getter();
  if ((*&v24 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  if (v24 <= -9.22337204e18)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  if (v24 < 9.22337204e18)
  {
    v25._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v25);

    v26._countAndFlagsBits = 95;
    v26._object = 0xE100000000000000;
    String.append(_:)(v26);

    return v27;
  }

LABEL_35:
  __break(1u);
  return result;
}

uint64_t sub_1001632CC@<X0>(int a1@<W0>, uint64_t a2@<X1>, void *a3@<X2>, char *a4@<X8>)
{
  v8 = sub_1001379C4(&unk_1002BC530);
  __chkstk_darwin(v8 - 8);
  v10 = &v21 - v9;
  v11 = type metadata accessor for URL();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1001628F4(a1, a2, a3, v10);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_10013A05C(v10, &unk_1002BC530);
LABEL_6:
    v19 = 1;
    return (*(v12 + 56))(a4, v19, 1, v11);
  }

  v15 = *(v12 + 32);
  v15(v14, v10, v11);
  LiveActivityPlacement.imageHeight.getter();
  v17 = v16;
  LiveActivityPlacement.imageHeight.getter();
  if ((sub_1001634E4(v14, v17, v18) & 1) == 0)
  {
    (*(v12 + 8))(v14, v11);
    goto LABEL_6;
  }

  v15(a4, v14, v11);
  v19 = 0;
  return (*(v12 + 56))(a4, v19, 1, v11);
}

uint64_t sub_1001634E4(unint64_t a1, double a2, double a3)
{
  v6 = type metadata accessor for URL();
  v87 = *(v6 - 8);
  v88 = v6;
  __chkstk_darwin(v6);
  v8 = &v81 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Logger();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v86 = &v81 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v15 = &v81 - v14;
  v16 = __chkstk_darwin(v13);
  v18 = &v81 - v17;
  v19 = __chkstk_darwin(v16);
  v85 = &v81 - v20;
  __chkstk_darwin(v19);
  v22 = &v81 - v21;
  v89 = a1;
  v23 = URL.path(percentEncoded:)(1);
  if (qword_1002BE700 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v24 = qword_1002BE7F8;

  countAndFlagsBits = v23._countAndFlagsBits;
  v25 = sub_100163F20(v23._countAndFlagsBits, v23._object, v24);

  v26 = LiveActivitySetupLogger.unsafeMutableAddressor();
  v27 = *(v10 + 16);
  if (v25)
  {
    v28 = v9;
    v27(v15, v26, v9);

    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v93[0] = v32;
      *v31 = 136315138;
      v33 = sub_10014A094(countAndFlagsBits, v23._object, v93);

      *(v31 + 4) = v33;
      _os_log_impl(&_mh_execute_header, v29, v30, "Using existing cache for: %s", v31, 0xCu);
      sub_10014A63C(v32);
    }

    else
    {
    }

    (*(v10 + 8))(v15, v28);
    return 1;
  }

  v82 = v26;
  v34 = v9;
  v83 = v27;
  (v27)(v22);
  v35 = Logger.logObject.getter();
  v36 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    *v37 = 67109120;
    *(v37 + 4) = [objc_opt_self() isMainThread];
    _os_log_impl(&_mh_execute_header, v35, v36, "Is creating image path from main thread? %{BOOL}d", v37, 8u);
    v34 = v9;
  }

  v38 = *(v10 + 8);
  v84 = v10 + 8;
  v38(v22, v34);
  v39 = sub_100164018();
  v40 = v39;
  if (!v39)
  {
    v41 = 0;
LABEL_18:

    v83(v18, v82, v34);
    v61 = v41;
    v62 = Logger.logObject.getter();
    v63 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v62, v63))
    {
      v64 = v40 == 0;
      v65 = swift_slowAlloc();
      *v65 = 67109120;
      *(v65 + 4) = v64;

      _os_log_impl(&_mh_execute_header, v62, v63, "Unable to generate live activity image data. Was image nil? - %{BOOL}d", v65, 8u);
    }

    else
    {

      v62 = v61;
    }

    v38(v18, v34);
    return 0;
  }

  v91 = v38;
  v41 = v39;
  v42 = sub_100164680(a2, a3);

  v43 = UIImagePNGRepresentation(v42);
  if (!v43)
  {
    v38 = v91;
    goto LABEL_18;
  }

  v44 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v46 = v45;

  v47 = [objc_opt_self() defaultManager];
  URL.deletingLastPathComponent()();
  URL._bridgeToObjectiveC()(v48);
  v50 = v49;
  (*(v87 + 8))(v8, v88);
  v93[0] = 0;
  v51 = [v47 createDirectoryAtURL:v50 withIntermediateDirectories:1 attributes:0 error:v93];

  if (v51)
  {
    v52 = v93[0];
    Data.write(to:options:)();
    v88 = v44;
    v89 = v46;
    swift_beginAccess();

    v53 = countAndFlagsBits;
    sub_100166038(&v92, countAndFlagsBits, v23._object);
    swift_endAccess();

    v54 = v85;
    v83(v85, v82, v34);

    v55 = Logger.logObject.getter();
    v56 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      v93[0] = v58;
      *v57 = 136315138;
      v59 = sub_10014A094(v53, v23._object, v93);

      *(v57 + 4) = v59;
      _os_log_impl(&_mh_execute_header, v55, v56, "Created image at: %s", v57, 0xCu);
      sub_10014A63C(v58);

      sub_100161C7C(v88, v89);
    }

    else
    {

      sub_100161C7C(v88, v89);
    }

    v91(v54, v34);
    return 1;
  }

  v66 = v93[0];
  _convertNSErrorToError(_:)();

  swift_willThrow();
  v67 = v86;
  v83(v86, v82, v34);
  v68 = v67;

  swift_errorRetain();
  v69 = Logger.logObject.getter();
  v70 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v69, v70))
  {
    v71 = swift_slowAlloc();
    v89 = v46;
    v72 = v71;
    v73 = swift_slowAlloc();
    v88 = v44;
    v93[0] = v73;
    *v72 = 136315394;
    swift_getErrorValue();
    v74 = Error.localizedDescription.getter();
    v76 = sub_10014A094(v74, v75, v93);
    v87 = v34;
    v77 = v76;

    *(v72 + 4) = v77;
    *(v72 + 12) = 2080;
    v78 = sub_10014A094(countAndFlagsBits, v23._object, v93);

    *(v72 + 14) = v78;
    _os_log_impl(&_mh_execute_header, v69, v70, "Unable to generate live activity image: %s \n %s", v72, 0x16u);
    swift_arrayDestroy();

    sub_100161C7C(v88, v89);

    v79 = v68;
    v80 = v87;
  }

  else
  {

    sub_100161C7C(v44, v46);

    v79 = v68;
    v80 = v34;
  }

  v91(v79, v80);
  return 0;
}

uint64_t sub_100163F20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  Hasher.init(_seed:)();
  String.hash(into:)();
  v6 = Hasher._finalize()();
  v7 = -1 << *(a3 + 32);
  v8 = v6 & ~v7;
  if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(a3 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

id sub_100164018()
{
  v1 = *v0;
  v2 = *(v0 + 32);
  if (!*(v0 + 32))
  {
    v7 = v1;
    return v1;
  }

  v3 = [objc_allocWithZone(BPSIllustratedWatchView) initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v3 setUsingCompactWatchAsset:1];
  v4 = *(v0 + 24);
  if (v2 == 1)
  {
    v5 = String._bridgeToObjectiveC()();
    [v3 setScreenImageName:v5];

    if (v4)
    {
      v6 = String._bridgeToObjectiveC()();
    }

    else
    {
      v6 = 0;
    }

    [v3 setScreenImageSearchBundleIdentifier:v6];

    result = [v3 watchScreenImageView];
    if (!result)
    {
LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

    v10 = result;
    v8 = [result image];
  }

  else
  {
    v8 = 0;
    if (v1 == 1 && !(*(v0 + 16) | *(v0 + 8) | v4))
    {
      v8 = sub_100166E74();
    }
  }

  v11 = [objc_opt_self() standardUserDefaults];
  v12 = String._bridgeToObjectiveC()();
  v13 = [v11 BOOLForKey:v12];

  if ((v13 & 1) == 0)
  {
    v22 = [v3 watchView];
    v23 = [v22 image];

    if (!v23)
    {

      return 0;
    }

    if (sub_100167118())
    {
      v24 = 0.0;
    }

    else
    {
      v24 = -20.0;
    }

    v25 = sub_100167118();
    v26 = qword_1001C8830[v25];
    v27 = qword_1001C8848[v25];
    v28 = qword_1001C8860[v25];
    [v23 size];
    v31 = [objc_allocWithZone(UIGraphicsImageRenderer) initWithSize:{v29, v30}];
    v32 = swift_allocObject();
    *(v32 + 16) = v23;
    *(v32 + 24) = v24;
    *(v32 + 32) = v24;
    *(v32 + 40) = v8;
    *(v32 + 48) = v26;
    *(v32 + 56) = v27;
    *(v32 + 64) = v26;
    *(v32 + 72) = v28;
    v33 = swift_allocObject();
    *(v33 + 16) = sub_1001673D8;
    *(v33 + 24) = v32;
    v50 = sub_1001675C0;
    v51 = v33;
    v46 = _NSConcreteStackBlock;
    v47 = 1107296256;
    v48 = sub_100165CB8;
    v49 = &unk_10026DF30;
    v34 = _Block_copy(&v46);
    v35 = v8;

    v36 = v23;

    v1 = [v31 imageWithActions:v34];

    _Block_release(v34);
    LODWORD(v31) = swift_isEscapingClosureAtFileLocation();

    if (!v31)
    {

      goto LABEL_30;
    }

    __break(1u);
    goto LABEL_33;
  }

  result = [objc_allocWithZone(COSWatchView) initWithStyle:3];
  if (result)
  {
    v14 = result;
    [result setTranslatesAutoresizingMaskIntoConstraints:0];
    [v14 watchScreenInsetGuide];
    v18 = v17;
    v20 = v19;
    if (v8)
    {
      isEscapingClosureAtFileLocation = sub_100164680(v15, v16);
    }

    else
    {
      isEscapingClosureAtFileLocation = 0;
    }

    v1 = [v14 image];
    if (!v1)
    {
      goto LABEL_28;
    }

    if (isEscapingClosureAtFileLocation)
    {
      v37 = isEscapingClosureAtFileLocation;
      [v1 size];
      v40 = [objc_allocWithZone(UIGraphicsImageRenderer) initWithSize:{v38, v39}];
      v41 = swift_allocObject();
      v41[2] = v1;
      v41[3] = v37;
      v41[4] = v18;
      v41[5] = v20;
      v42 = swift_allocObject();
      *(v42 + 16) = sub_100167184;
      *(v42 + 24) = v41;
      v50 = sub_10016721C;
      v51 = v42;
      v46 = _NSConcreteStackBlock;
      v47 = 1107296256;
      v48 = sub_100165CB8;
      v49 = &unk_10026DD18;
      v43 = _Block_copy(&v46);
      v44 = v37;
      v45 = v1;

      v1 = [v40 imageWithActions:v43];

      _Block_release(v43);
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if (isEscapingClosureAtFileLocation)
      {
        __break(1u);
LABEL_28:
      }

      return v1;
    }

LABEL_30:
    return v1;
  }

LABEL_34:
  __break(1u);
  return result;
}

uint64_t sub_100164680(double a1, double a2)
{
  [v2 size];
  v6 = a1 / v5;
  [v2 size];
  if (a2 / v7 < v6)
  {
    v6 = a2 / v7;
  }

  [v2 size];
  v9 = v8 * v6;
  [v2 size];
  v11 = v6 * v10;
  v12 = [objc_allocWithZone(UIGraphicsImageRenderer) initWithSize:{v9, v11}];
  v13 = swift_allocObject();
  *(v13 + 16) = v2;
  *(v13 + 24) = v9;
  *(v13 + 32) = v11;
  v14 = swift_allocObject();
  *(v14 + 16) = sub_100167518;
  *(v14 + 24) = v13;
  v19[4] = sub_1001675C0;
  v19[5] = v14;
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 1107296256;
  v19[2] = sub_100165CB8;
  v19[3] = &unk_10026DFA8;
  v15 = _Block_copy(v19);
  v16 = v2;

  v17 = [v12 imageWithActions:v15];

  _Block_release(v15);
  LOBYTE(v12) = swift_isEscapingClosureAtFileLocation();

  if ((v12 & 1) == 0)
  {
    return v17;
  }

  __break(1u);
  return result;
}

double sub_10016486C()
{
  v0 = sub_100164018();
  if (!v0)
  {
    return 0.0;
  }

  v1 = v0;
  if (sub_100167118())
  {
    v2 = 0.0;
  }

  else
  {
    v2 = -20.0;
  }

  [v1 size];
  v15.size.width = v3;
  v15.size.height = v4;
  v15.origin.x = 0.0;
  v15.origin.y = 0.0;
  v16 = CGRectInset(v15, v2, v2);
  width = v16.size.width;
  height = v16.size.height;
  v7 = sub_100167118();
  v17.origin.x = sub_10016725C(0.0, 0.0, width, height, *&qword_1001C8830[v7], *&qword_1001C8848[v7]);
  x = v17.origin.x;
  y = v17.origin.y;
  v10 = v17.size.width;
  v11 = v17.size.height;
  MidX = CGRectGetMidX(v17);
  v18.origin.x = x;
  v18.origin.y = y;
  v18.size.width = v10;
  v18.size.height = v11;
  CGRectGetMidY(v18);
  v19.origin.x = 0.0;
  v19.origin.y = 0.0;
  v19.size.width = width;
  v19.size.height = height;
  v13 = 0.5;
  if (CGRectGetWidth(v19) != 0.0)
  {
    v20.origin.x = 0.0;
    v20.origin.y = 0.0;
    v20.size.width = width;
    v20.size.height = height;
    v13 = MidX / CGRectGetWidth(v20);
  }

  v21.origin.x = 0.0;
  v21.origin.y = 0.0;
  v21.size.width = width;
  v21.size.height = height;
  if (CGRectGetHeight(v21) != 0.0)
  {
    v22.origin.x = 0.0;
    v22.origin.y = 0.0;
    v22.size.width = width;
    v22.size.height = height;
    CGRectGetHeight(v22);
  }

  v23.origin.x = 0.0;
  v23.origin.y = 0.0;
  v23.size.width = width;
  v23.size.height = height;
  if (CGRectGetWidth(v23) != 0.0)
  {
    v24.origin.x = x;
    v24.origin.y = y;
    v24.size.width = v10;
    v24.size.height = v11;
    CGRectGetWidth(v24);
    v25.origin.x = 0.0;
    v25.origin.y = 0.0;
    v25.size.width = width;
    v25.size.height = height;
    CGRectGetWidth(v25);
  }

  v26.origin.x = 0.0;
  v26.origin.y = 0.0;
  v26.size.width = width;
  v26.size.height = height;
  if (CGRectGetHeight(v26) != 0.0)
  {
    v27.origin.x = x;
    v27.origin.y = y;
    v27.size.width = v10;
    v27.size.height = v11;
    CGRectGetHeight(v27);
    v28.origin.x = 0.0;
    v28.origin.y = 0.0;
    v28.size.width = width;
    v28.size.height = height;
    CGRectGetHeight(v28);
  }

  return v13;
}

uint64_t sub_100164AC4(uint64_t (*a1)(id))
{
  v2 = v1;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100166B0C();
  if (v8)
  {
    v9 = v8;
    [v8 insertSubview:v1 atIndex:0];
    v10 = [v1 topAnchor];
    v11 = [v9 bottomAnchor];
    v12 = [v10 constraintEqualToAnchor:v11];

    [v12 setActive:1];
    v13 = [v1 layoutIfNeeded];
    if (!a1 || (v14 = a1(v13)) == 0)
    {
      v14 = sub_100165D04();
    }

    v15 = v14;
    [v2 removeFromSuperview];

    return v15;
  }

  else
  {
    v17 = LiveActivitySetupLogger.unsafeMutableAddressor();
    (*(v5 + 16))(v7, v17, v4);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&_mh_execute_header, v18, v19, "No active window. Screenshot can't be taken", v20, 2u);
    }

    (*(v5 + 8))(v7, v4);
    return 0;
  }
}

uint64_t sub_100164D10()
{
  type metadata accessor for MainActor();
  v0[2] = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();
  v0[3] = v2;
  v0[4] = v1;

  return _swift_task_switch(sub_100164DA4, v2, v1);
}

uint64_t sub_100164DA4()
{
  if (qword_1002BE708)
  {

    v1 = v0[1];

    return v1();
  }

  else
  {
    v0[5] = sub_1001668FC();
    v3 = swift_task_alloc();
    v0[6] = v3;
    *v3 = v0;
    v3[1] = sub_100164E88;

    return sub_100165034(0, 0);
  }
}

uint64_t sub_100164E88(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 56) = a1;

  v3 = *(v2 + 32);
  v4 = *(v2 + 24);

  return _swift_task_switch(sub_100164FB0, v4, v3);
}

uint64_t sub_100164FB0()
{
  v1 = v0[7];
  v2 = v0[5];

  v3 = qword_1002BE708;
  qword_1002BE708 = v1;

  v4 = v0[1];

  return v4();
}

uint64_t sub_100165034(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = type metadata accessor for Logger();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  type metadata accessor for MainActor();
  v3[8] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[9] = v6;
  v3[10] = v5;

  return _swift_task_switch(sub_10016512C, v6, v5);
}

uint64_t sub_10016512C()
{
  sub_100166B0C();
  v0[11] = v1;
  if (v1)
  {
    v2 = v0[4];
    v3 = v1;
    [v1 insertSubview:v2 atIndex:0];
    v4 = [v2 topAnchor];
    v5 = [v3 bottomAnchor];
    v6 = [v4 constraintEqualToAnchor:v5];

    [v6 setActive:1];
    [v2 layoutIfNeeded];
    v21 = (*((swift_isaMask & *v2) + 0x88) + **((swift_isaMask & *v2) + 0x88));
    v7 = swift_task_alloc();
    v0[12] = v7;
    *v7 = v0;
    v7[1] = sub_100165418;

    return v21();
  }

  else
  {
    v9 = v0[7];
    v10 = v0[5];
    v11 = v0[6];

    v12 = LiveActivitySetupLogger.unsafeMutableAddressor();
    (*(v11 + 16))(v9, v12, v10);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();
    v15 = os_log_type_enabled(v13, v14);
    v17 = v0[6];
    v16 = v0[7];
    v18 = v0[5];
    if (v15)
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v13, v14, "No active window. Screenshot can't be taken", v19, 2u);
    }

    (*(v17 + 8))(v16, v18);

    v20 = v0[1];

    return v20(0);
  }
}

uint64_t sub_100165418()
{
  v1 = *v0;

  v2 = *(v1 + 80);
  v3 = *(v1 + 72);

  return _swift_task_switch(sub_100165538, v3, v2);
}

uint64_t sub_100165538()
{
  v1 = *(v0 + 16);

  if (!v1 || (v3 = (*(v0 + 16))(v2)) == 0)
  {
    v3 = sub_100165D04();
  }

  v4 = *(v0 + 88);
  [*(v0 + 32) removeFromSuperview];

  v5 = *(v0 + 8);

  return v5(v3);
}

id sub_1001655E4@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1001379C4(&unk_1002BC530);
  __chkstk_darwin(v2 - 8);
  v4 = v37 - v3;
  result = [COSWatchDiscoveryTimeoutError imageResource]_0();
  if (result)
  {
    v6 = result;
    v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;

    v64 = v7;
    v65 = v9;
    v66 = 0;
    v67 = 0;
    v68 = 1;
    sub_1001632CC(3, 0, 0, v4);

    v10 = type metadata accessor for URL();
    v11 = *(v10 - 8);
    if ((*(v11 + 48))(v4, 1, v10) == 1)
    {
      v12 = v52;
      v13 = &v51;
      sub_10013A05C(v4, &unk_1002BC530);
      memset(&v52[80], 0, 32);
      v53 = 255;
      v54 = 0u;
      v55 = 0u;
      v56 = 0;
      v14 = LiveActivityImageSource.systemAppleWatchSFSymbol.unsafeMutableAddressor();
      v15 = *(v14 + 32);
      v16 = *(v14 + 16);
      v62[0] = *v14;
      v62[1] = v16;
      v63 = v15;
      v59 = 0u;
      v60 = 0u;
      v61 = -1;
      sub_100139D84(v62, v38);
      LiveActivityImages.init(leadingImageSource:trailingImageSource:)();
      v17 = *v14;
      v18 = *(v14 + 16);
      v58 = *(v14 + 32);
      v57[1] = v18;
      v57[0] = v17;
      sub_100139D84(v57, v38);
      LiveActivityImages.init(leadingImageSource:trailingImageSource:)();
      v19 = &v50;
      result = LiveActivityImageMap.init(dynamicIslandCompact:dynamicIslandMinimal:dynamicIslandExpanded:lockScreen:)();
    }

    else
    {
      v12 = &v49;
      v13 = &v48;
      URL.path(percentEncoded:)(1);
      (*(v11 + 8))(v4, v10);
      v19 = &v47;
      result = LiveActivityImageMap.init(imagePath:)();
    }

    v20 = v12[3];
    v45 = v12[2];
    v46[0] = v20;
    *(v46 + 9) = *(v12 + 57);
    v21 = v12[1];
    v43 = *v12;
    v44 = v21;
    v22 = *(v19 + 192);
    v23 = *(v19 + 232);
    v24 = *(v13 + 3);
    v41 = *(v13 + 2);
    v42[0] = v24;
    *(v42 + 9) = *(v13 + 57);
    v25 = *(v13 + 1);
    v39 = *v13;
    v40 = v25;
    v26 = v19[3];
    v27 = *(v19 + 32);
    v28 = *(v19 + 72);
    v29 = *v19;
    *(&v38[1] + 7) = v25;
    *(&v38[2] + 7) = v41;
    *(&v38[3] + 7) = v42[0];
    v38[4] = *(v42 + 9);
    *(v38 + 7) = v39;
    *(&v37[1] + 7) = v44;
    *(&v37[2] + 7) = v45;
    *(&v37[3] + 7) = v46[0];
    v37[4] = *(v46 + 9);
    *(v37 + 7) = v43;
    *a1 = v29;
    *(a1 + 8) = *(v19 + 1);
    *(a1 + 24) = v26;
    *(a1 + 32) = v27;
    *(a1 + 40) = *(v19 + 5);
    *(a1 + 56) = *(v19 + 7);
    *(a1 + 72) = v28;
    v30 = v38[1];
    *(a1 + 73) = v38[0];
    v31 = v38[3];
    *(a1 + 137) = v38[4];
    v32 = v38[2];
    *(a1 + 121) = v31;
    *(a1 + 105) = v32;
    *(a1 + 89) = v30;
    v33 = *(v19 + 11);
    *(a1 + 160) = *(v19 + 10);
    *(a1 + 176) = v33;
    *(a1 + 192) = v22;
    *(a1 + 200) = *(v19 + 25);
    *(a1 + 216) = *(v19 + 27);
    *(a1 + 232) = v23;
    v34 = v37[1];
    *(a1 + 233) = v37[0];
    v35 = v37[2];
    v36 = v37[4];
    *(a1 + 281) = v37[3];
    *(a1 + 297) = v36;
    *(a1 + 265) = v35;
    *(a1 + 249) = v34;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100165968(uint64_t a1)
{
  if (*(a1 + 32))
  {
    [v1 bounds];
    v3 = v2;
    v5 = v4;
    v7 = v6;
    v9 = v8;
  }

  else
  {
    v3 = *a1;
    v5 = *(a1 + 8);
    v7 = *(a1 + 16);
    v9 = *(a1 + 24);
  }

  v10 = [objc_allocWithZone(UIGraphicsImageRenderer) initWithBounds:{v3, v5, v7, v9}];
  v11 = swift_allocObject();
  *(v11 + 16) = v1;
  v12 = swift_allocObject();
  *(v12 + 16) = sub_100167278;
  *(v12 + 24) = v11;
  v17[4] = sub_1001675C0;
  v17[5] = v12;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 1107296256;
  v17[2] = sub_100165CB8;
  v17[3] = &unk_10026DD90;
  v13 = _Block_copy(v17);
  v14 = v1;

  v15 = [v10 imageWithActions:v13];

  _Block_release(v13);
  LOBYTE(v10) = swift_isEscapingClosureAtFileLocation();

  if ((v10 & 1) == 0)
  {
    return v15;
  }

  __break(1u);
  return result;
}

uint64_t sub_100165B3C(void *a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  [a1 bounds];
  result = [a1 drawViewHierarchyInRect:1 afterScreenUpdates:?];
  if ((result & 1) == 0)
  {
    v7 = LiveActivitySetupLogger.unsafeMutableAddressor();
    (*(v3 + 16))(v5, v7, v2);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, v9, "Failed to take view screenshot", v10, 2u);
    }

    return (*(v3 + 8))(v5, v2);
  }

  return result;
}

void sub_100165CB8(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v2();
}

uint64_t sub_100165D04()
{
  sub_10013BBD4(0, &qword_1002BD0A0);
  v1 = v0;
  sub_1001379C4(&qword_1002BD0A8);
  if (swift_dynamicCast())
  {
    sub_10014A688(v19, v15);
    v2 = v16;
    v3 = v17;
    sub_10014A6A0(v15, v16);
    v4 = (*(v3 + 1))(v2, v3);
    sub_10014A63C(v15);
    return v4;
  }

  v20 = 0;
  memset(v19, 0, sizeof(v19));
  sub_10013A05C(v19, &qword_1002BD0B0);
  [v1 bounds];
  v9 = [objc_allocWithZone(UIGraphicsImageRenderer) initWithBounds:{v5, v6, v7, v8}];
  v10 = swift_allocObject();
  *(v10 + 16) = v1;
  v11 = swift_allocObject();
  *(v11 + 16) = sub_1001675C4;
  *(v11 + 24) = v10;
  v17 = sub_1001675C0;
  v18 = v11;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 1107296256;
  v15[2] = sub_100165CB8;
  v16 = &unk_10026DE08;
  v12 = _Block_copy(v15);
  v13 = v1;

  v4 = [v9 imageWithActions:v12];

  _Block_release(v12);
  LOBYTE(v9) = swift_isEscapingClosureAtFileLocation();

  if ((v9 & 1) == 0)
  {
    return v4;
  }

  __break(1u);
  return result;
}

uint64_t sub_100165F98()
{
  result = swift_beginAccess();
  if ((byte_1002BE800 & 1) == 0)
  {
    sub_10013BBD4(0, &qword_1002BC558);
    result = sub_1001393DC();
    byte_1002BE800 = 1;
  }

  return result;
}

uint64_t sub_100166038(Swift::Int *a1, Swift::Int a2, Swift::Int a3)
{
  v7 = *v3;
  Hasher.init(_seed:)();
  String.hash(into:)();
  v8 = Hasher._finalize()();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    sub_1001663E8(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_100166188()
{
  v1 = v0;
  v2 = *v0;
  sub_1001379C4(&qword_1002BC9D8);
  result = static _SetStorage.resize(original:capacity:move:)();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v2 + 48) + 16 * (v14 | (v5 << 6)));
      v18 = *v17;
      v19 = v17[1];
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v20 = -1 << *(v4 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v4 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v4 + 16);
    }

    v15 = v5;
    while (1)
    {
      v5 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v16 = v6[v5];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v27 = 1 << *(v2 + 32);
    if (v27 >= 64)
    {
      bzero((v2 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v27;
    }

    v1 = v0;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

Swift::Int sub_1001663E8(Swift::Int result, Swift::Int a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_100166188();
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_100166568();
      goto LABEL_16;
    }

    sub_1001666C4();
  }

  v10 = *v4;
  Hasher.init(_seed:)();
  String.hash(into:)();
  result = Hasher._finalize()();
  v11 = -1 << *(v10 + 32);
  a3 = result & ~v11;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v12 = ~v11;
    do
    {
      v13 = (*(v10 + 48) + 16 * a3);
      if (*v13 == v7 && v13[1] == a2)
      {
        goto LABEL_19;
      }

      result = _stringCompareWithSmolCheck(_:_:expecting:)();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v12;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v15 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v16 = (*(v15 + 48) + 16 * a3);
  *v16 = v7;
  v16[1] = a2;
  v17 = *(v15 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (!v18)
  {
    *(v15 + 16) = v19;
    return result;
  }

  __break(1u);
LABEL_19:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void *sub_100166568()
{
  v1 = v0;
  sub_1001379C4(&qword_1002BC9D8);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_1001666C4()
{
  v1 = v0;
  v2 = *v0;
  sub_1001379C4(&qword_1002BC9D8);
  result = static _SetStorage.resize(original:capacity:move:)();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    while (v8)
    {
      v13 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_15:
      v16 = (*(v2 + 48) + 16 * (v13 | (v5 << 6)));
      v17 = *v16;
      v18 = v16[1];
      Hasher.init(_seed:)();

      String.hash(into:)();
      result = Hasher._finalize()();
      v19 = -1 << *(v4 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v10 + 8 * (v20 >> 6))) == 0)
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
          v25 = *(v10 + 8 * v21);
          if (v25 != -1)
          {
            v11 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v11 = __clz(__rbit64((-1 << v20) & ~*(v10 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      v12 = (*(v4 + 48) + 16 * v11);
      *v12 = v17;
      v12[1] = v18;
      ++*(v4 + 16);
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v5 >= v9)
      {

        v1 = v0;
        goto LABEL_26;
      }

      v15 = *(v2 + 56 + 8 * v5);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v8 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v4;
  }

  return result;
}

void *sub_1001668FC()
{
  v0 = [objc_allocWithZone(BPSIllustratedWatchView) initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  [v0 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v0 setUsingCompactWatchAsset:1];
  result = [COSWatchDiscoveryTimeoutError imageResource]_0();
  if (!result)
  {
    __break(1u);
    goto LABEL_9;
  }

  v2 = result;
  [v0 setScreenImageName:result];

  result = [v0 watchScreenImageView];
  if (!result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v3 = result;
  v4 = [result image];

  result = [objc_allocWithZone(COSWatchView) initWithStyle:3];
  if (!result)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v5 = result;
  [result setTranslatesAutoresizingMaskIntoConstraints:0];
  [v5 watchScreenInsetGuide];
  v7 = v6;
  v9 = v8;

  v10 = [objc_opt_self() standardUserDefaults];
  v11 = String._bridgeToObjectiveC()();
  v12 = [v10 BOOLForKey:v11];

  if ((v12 & 1) == 0)
  {
    if (v4)
    {
      [v4 size];
      v7 = v13;
      v9 = v14;
    }
  }

  type metadata accessor for COSWatchCursiveTextView();
  v15 = sub_10015C178(v4, 30.0, v7, v9);

  return v15;
}

void sub_100166B0C()
{
  v0 = [objc_opt_self() sharedApplication];
  v1 = [v0 connectedScenes];

  sub_10013BBD4(0, &qword_1002BD0B8);
  sub_100167368();
  v2 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  if ((v2 & 0xC000000000000001) != 0)
  {
    __CocoaSet.makeIterator()();
    Set.Iterator.init(_cocoa:)();
    v2 = v28;
    v3 = v29;
    v4 = v30;
    v5 = v31;
    v6 = v32;
  }

  else
  {
    v5 = 0;
    v7 = -1 << *(v2 + 32);
    v3 = v2 + 56;
    v4 = ~v7;
    v8 = -v7;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v6 = v9 & *(v2 + 56);
  }

  v10 = (v4 + 64) >> 6;
  v24 = v3;
  v25 = v2;
  if ((v2 & 0x8000000000000000) == 0)
  {
    goto LABEL_10;
  }

LABEL_16:
  while (2)
  {
    if (!__CocoaSet.Iterator.next()() || (swift_dynamicCast(), v15 = v27, i = v5, v14 = v6, !v27))
    {
LABEL_35:
      sub_1001673D0();
      return;
    }

    while (1)
    {
      objc_opt_self();
      v16 = swift_dynamicCastObjCClass();
      if (v16)
      {
        break;
      }

      v5 = i;
      v6 = v14;
      if (v2 < 0)
      {
        goto LABEL_16;
      }

LABEL_10:
      v11 = v5;
      v12 = v6;
      for (i = v5; !v12; ++v11)
      {
        i = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          goto LABEL_38;
        }

        if (i >= v10)
        {
          goto LABEL_35;
        }

        v12 = *(v3 + 8 * i);
      }

      v14 = (v12 - 1) & v12;
      v15 = *(*(v2 + 48) + ((i << 9) | (8 * __clz(__rbit64(v12)))));
      if (!v15)
      {
        goto LABEL_35;
      }
    }

    v26 = v14;
    v17 = [v16 windows];
    sub_10013BBD4(0, &qword_1002BD0C8);
    v18 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (!(v18 >> 62))
    {
      v19 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v19)
      {
        break;
      }

      goto LABEL_9;
    }

    v19 = _CocoaArrayWrapper.endIndex.getter();
    if (!v19)
    {
LABEL_9:

      v5 = i;
      v2 = v25;
      v6 = v26;
      v3 = v24;
      if (v25 < 0)
      {
        continue;
      }

      goto LABEL_10;
    }

    break;
  }

  v20 = 0;
  while (1)
  {
    if ((v18 & 0xC000000000000001) != 0)
    {
      v21 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v20 >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_37;
      }

      v21 = *(v18 + 8 * v20 + 32);
    }

    v22 = v21;
    v23 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if ([v21 isKeyWindow])
    {
      sub_1001673D0();

      return;
    }

    ++v20;
    if (v23 == v19)
    {
      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
}

uint64_t sub_100166E74()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = qword_1002BE708;
  if (qword_1002BE708)
  {
    v5 = qword_1002BE708;
  }

  else
  {
    v6 = LiveActivitySetupLogger.unsafeMutableAddressor();
    (*(v1 + 16))(v3, v6, v0);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, v8, "Missing cahcedSetupCompleteScreenImage", v9, 2u);
    }

    (*(v1 + 8))(v3, v0);
    v10 = sub_1001668FC();
    v4 = sub_100164AC4(0);
  }

  return v4;
}

id sub_100166FF8()
{
  v0 = [objc_opt_self() sharedApplication];
  objc_opt_self();
  v1 = swift_dynamicCastObjCClass();
  if (v1)
  {
    v2 = [v1 setupController];

    if (v2)
    {
      v3 = [v2 activePairingDevice];

      if (v3)
      {
        goto LABEL_8;
      }
    }
  }

  else
  {
  }

  v4 = BPSGetActiveSetupCompletedDevice();
  if (v4)
  {
    v3 = v4;
LABEL_8:
    v5 = [objc_opt_self() sizeFromDevice:v3];
LABEL_11:
    v7 = v5;

    return v7;
  }

  result = [objc_opt_self() sharedDeviceController];
  if (result)
  {
    v3 = result;
    v5 = [result size];
    goto LABEL_11;
  }

  __break(1u);
  return result;
}

uint64_t sub_100167118()
{
  v0 = sub_100166FF8();
  if (sub_100166FF8() == 25 || (v0 == 19 ? (v1 = 1) : (v1 = 2), sub_100166FF8() == 26))
  {
    v1 = 1;
  }

  v2 = 2;
  if (sub_100166FF8() != 20)
  {
    if (sub_100166FF8() == 21)
    {
      return 2;
    }

    else
    {
      return v1;
    }
  }

  return v2;
}

id sub_100167184()
{
  v1 = *(v0 + 2);
  v2 = *(v0 + 3);
  v3 = v0[4];
  v4 = v0[5];
  [v1 size];
  [v1 drawInRect:{0.0, 0.0, v5, v6}];
  [v2 size];

  return [v2 drawInRect:{v3, v4, v7, v8}];
}

uint64_t sub_100167244(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100167280(uint64_t a1)
{
  if ((*(a1 + 32) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 32) & 3;
  }
}

uint64_t sub_10016729C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 33))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 32);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1001672E4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

uint64_t sub_10016732C(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
    *(result + 16) = 0;
    *(result + 24) = 0;
  }

  *(result + 32) = a2;
  return result;
}

unint64_t sub_100167368()
{
  result = qword_1002BD0C0;
  if (!qword_1002BD0C0)
  {
    sub_10013BBD4(255, &qword_1002BD0B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BD0C0);
  }

  return result;
}

void sub_1001673D8()
{
  v1 = *(v0 + 2);
  v2 = v0[3];
  v3 = v0[4];
  v4 = *(v0 + 5);
  v5 = v0[6];
  v6 = v0[7];
  [v1 size];
  v22.size.width = v7;
  v22.size.height = v8;
  v22.origin.x = 0.0;
  v22.origin.y = 0.0;
  v23 = CGRectInset(v22, v2, v3);
  x = v23.origin.x;
  y = v23.origin.y;
  width = v23.size.width;
  height = v23.size.height;
  [v1 drawInRect:?];
  if (v4)
  {
    v13 = sub_10016725C(x, y, width, height, v5, v6);
    v15 = v14;
    v17 = v16;
    v19 = v18;
    v20 = v4;
    [v20 drawInRect:{v13, v15, v17, v19}];
  }
}

__n128 sub_100167534(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_100167540(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100167560(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 32) = v3;
  return result;
}

uint64_t sub_1001675C8()
{
  v1 = sub_1001379C4(&qword_1002BD0D8);
  __chkstk_darwin(v1);
  v3 = &v13[-v2];
  v4 = swift_allocObject();
  v5 = *(v0 + 48);
  *(v4 + 48) = *(v0 + 32);
  *(v4 + 64) = v5;
  *(v4 + 80) = *(v0 + 64);
  v6 = *(v0 + 16);
  *(v4 + 16) = *v0;
  *(v4 + 32) = v6;
  v14 = v0;
  sub_1001678A8(v0, v15);
  sub_1001379C4(&qword_1002BD0E0);
  sub_1001678E0();
  Button.init(action:label:)();
  v7 = [objc_opt_self() systemGroupedBackgroundColor];
  v15[0] = Color.init(uiColor:)();
  v8 = AnyView.init<A>(_:)();
  *&v3[*(sub_1001379C4(&qword_1002BD110) + 36)] = v8;
  v9 = &v3[*(sub_1001379C4(&qword_1002BD118) + 36)];
  v9[32] = 0;
  *v9 = 0u;
  *(v9 + 1) = 0u;
  KeyPath = swift_getKeyPath();
  v11 = &v3[*(v1 + 36)];
  *v11 = KeyPath;
  *(v11 + 1) = 0;
  v11[16] = 0;
  LiveActivityEndStatus.rawValue.getter(KeyPath);
  sub_100167D48();
  sub_100167F9C();
  View.buttonStyle<A>(_:)();
  return sub_10013A05C(v3, &qword_1002BD0D8);
}

void sub_1001677E8(void *a1, uint64_t a2, char a3)
{
  if (a3 == 2 || a3 == 1)
  {
  }

  else if (!a3)
  {
  }
}

uint64_t sub_100167838@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  *a1 = static VerticalAlignment.center.getter();
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v4 = sub_1001379C4(&qword_1002BD170);
  sub_1001679C4(v3, a1 + *(v4 + 44));
  result = sub_1001379C4(&qword_1002BD0E0);
  *(a1 + *(result + 36)) = 0;
  return result;
}

unint64_t sub_1001678E0()
{
  result = qword_1002BD0E8;
  if (!qword_1002BD0E8)
  {
    sub_10013BA14(&qword_1002BD0E0);
    sub_10013DC90(&qword_1002BD0F0, &qword_1002BD0F8);
    sub_10013DC90(&qword_1002BD100, &qword_1002BD108);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BD0E8);
  }

  return result;
}

uint64_t sub_1001679C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1001379C4(&qword_1002BD178);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v24 - v8;
  v10 = *a1;
  v11 = *(a1 + 8);
  v12 = *(a1 + 16);
  sub_10013C188(*a1, v11, v12);
  sub_10013D200(v10, v11, v12, &v27);
  LOBYTE(v10) = static Edge.Set.all.getter();
  LOBYTE(v35[0]) = 0;
  *v9 = static HorizontalAlignment.leading.getter();
  *(v9 + 1) = 0;
  v9[16] = 0;
  sub_1001379C4(&qword_1002BD180);
  v26 = a1;
  sub_1001379C4(&qword_1002BD188);
  sub_10013DC90(&qword_1002BD190, &qword_1002BD188);
  LabelGroup.init(content:)();
  sub_10013DD90(v9, v7, &qword_1002BD178);
  *&v31 = v29;
  v13 = v27;
  v14 = v28;
  v30[0] = v27;
  v30[1] = v28;
  BYTE8(v31) = v10;
  __asm { FMOV            V2.2D, #16.0 }

  v25 = _Q2;
  v24 = xmmword_1001C8880;
  v32 = _Q2;
  v33 = xmmword_1001C8880;
  v34 = 0;
  *(a2 + 80) = 0;
  *a2 = v13;
  *(a2 + 16) = v14;
  v20 = v33;
  *(a2 + 48) = v32;
  *(a2 + 64) = v20;
  *(a2 + 32) = v31;
  v21 = sub_1001379C4(&qword_1002BD198);
  sub_10013DD90(v7, a2 + *(v21 + 48), &qword_1002BD178);
  v22 = a2 + *(v21 + 64);
  *v22 = 0;
  *(v22 + 8) = 1;
  *(v22 + 16) = 0xBFF0000000000000;
  sub_10013DD90(v30, v35, &qword_1002BD1A0);
  sub_10013A05C(v9, &qword_1002BD178);
  sub_10013A05C(v7, &qword_1002BD178);
  v35[0] = v27;
  v35[1] = v28;
  v36 = v29;
  v37 = v10;
  v38 = v25;
  v39 = v24;
  v40 = 0;
  return sub_10013A05C(v35, &qword_1002BD1A0);
}

uint64_t sub_100167C84@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  *a9 = result;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  *(a9 + 64) = a10;
  return result;
}

uint64_t sub_100167CE4@<X0>(uint64_t a1@<X8>)
{
  result = EnvironmentValues.listRowSpacing.getter();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

unint64_t sub_100167D48()
{
  result = qword_1002BD120;
  if (!qword_1002BD120)
  {
    sub_10013BA14(&qword_1002BD0D8);
    sub_100167E00();
    sub_10013DC90(&qword_1002BD158, &qword_1002BD160);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BD120);
  }

  return result;
}

unint64_t sub_100167E00()
{
  result = qword_1002BD128;
  if (!qword_1002BD128)
  {
    sub_10013BA14(&qword_1002BD118);
    sub_100167EB8();
    sub_10013DC90(&qword_1002BD148, &qword_1002BD150);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BD128);
  }

  return result;
}

unint64_t sub_100167EB8()
{
  result = qword_1002BD130;
  if (!qword_1002BD130)
  {
    sub_10013BA14(&qword_1002BD110);
    sub_10013DC90(&qword_1002BD138, &qword_1002BD140);
    sub_10013DC90(&qword_1002BCE20, &qword_1002BCE28);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BD130);
  }

  return result;
}

unint64_t sub_100167F9C()
{
  result = qword_1002BD168;
  if (!qword_1002BD168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BD168);
  }

  return result;
}

__n128 sub_10016800C(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_100168030(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100168078(uint64_t result, int a2, int a3)
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
      *(result + 32) = (a2 - 1);
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

uint64_t sub_1001680D8@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  sub_100151B04();

  v4 = Text.init<A>(_:)();
  v6 = v5;
  v8 = v7;
  static Font.body.getter();
  v9 = Text.font(_:)();
  v11 = v10;
  v30 = v12;
  v31 = v13;

  sub_100152378(v4, v6, v8 & 1);

  v14 = *(v3 + 48);
  if (!v14)
  {
    goto LABEL_6;
  }

  v15 = HIBYTE(v14) & 0xF;
  if ((v14 & 0x2000000000000000) == 0)
  {
    v15 = *(v3 + 40) & 0xFFFFFFFFFFFFLL;
  }

  if (v15)
  {

    v28 = Text.init<A>(_:)();
    v17 = v16;
    v19 = v18;
    static Font.footnote.getter();
    v20 = Text.font(_:)();
    v22 = v21;
    v29 = v23;
    v25 = v24;

    sub_100152378(v28, v17, v19 & 1);

    v26 = v29 & 1;
  }

  else
  {
LABEL_6:
    v20 = 0;
    v22 = 0;
    v26 = 0;
    v25 = 0;
  }

  *a1 = v9;
  *(a1 + 8) = v11;
  *(a1 + 16) = v30 & 1;
  *(a1 + 24) = v31;
  *(a1 + 32) = v20;
  *(a1 + 40) = v22;
  *(a1 + 48) = v26;
  *(a1 + 56) = v25;
  sub_1001682E0(v9, v11, v30 & 1);

  sub_1001682F0(v20, v22, v26, v25);
  sub_100168334(v20, v22, v26, v25);
  sub_100152378(v9, v11, v30 & 1);
}

uint64_t sub_1001682E0(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_1001682F0(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_1001682E0(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_100168334(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_100152378(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_1001683D8(const char *a1, uint64_t a2, uint8x16_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  do
  {
    v11 = vld2q_s8(a1);
    a1 += 32;
    v12 = vld2q_s8(a7);
    a7 += 32;
    *a3++ = vhaddq_u8(vhaddq_u8(v11.val[0], v12.val[0]), vhaddq_u8(v11.val[1], v12.val[1]));
  }

  while (v8-- > 1);
  result = &a1[2 * a2 + -32 * a6];
  if (v7 > 1)
  {
    return sub_1001683D4(result);
  }

  return result;
}

uint64_t sub_100168448@<X0>(const char *a1@<X0>, uint64_t a2@<X1>, int8x8_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, const char *a7@<X6>, const char *a8@<X7>, uint64_t a9@<X8>)
{
  do
  {
    v18 = vld3_s8(a1);
    a1 += 24;
    v19 = vld3_s8(a7);
    a7 += 24;
    v20 = vld3_s8(a8);
    a8 += 24;
    *a3++ = vmovn_s16(vqdmulhq_s16(vaddw_u8(vaddw_u8(vaddw_u8(vaddw_u8(vaddw_u8(vaddw_u8(vaddw_u8(vaddl_u8(v18.val[0], v18.val[1]), v18.val[2]), v19.val[0]), v19.val[1]), v19.val[2]), v20.val[0]), v20.val[1]), v20.val[2]), v12));
  }

  while (v11-- > 1);
  result = &a1[a9];
  v15 = &a7[a9];
  v16 = &a8[a9];
  v17 = a3 + v9;
  if (v10 > 1)
  {
    return sub_100168444(result, a2, v17, a4, a5, a6, v15, v16);
  }

  return result;
}

uint64_t sub_1001684C8@<X0>(const char *a1@<X0>, uint64_t a2@<X1>, int8x8_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, const char *a7@<X6>, const char *a8@<X7>, const char *a9@<X8>)
{
  do
  {
    v18 = vld2q_s8(a1);
    a1 += 32;
    v19 = vld2q_s8(a7);
    a7 += 32;
    v20 = vld2q_s8(a8);
    a8 += 32;
    v21 = vld2q_s8(a9);
    a9 += 32;
    *a3++ = vrshrn_n_s16(vpadalq_u8(vpadalq_u8(vpadalq_u8(vpadalq_u8(vpadalq_u8(vpadalq_u8(vpadalq_u8(vpaddlq_u8(v18.val[0]), v18.val[1]), v19.val[0]), v19.val[1]), v20.val[0]), v20.val[1]), v21.val[0]), v21.val[1]), 4uLL);
  }

  while (v12-- > 1);
  result = &a1[v9];
  v15 = &a7[v9];
  v16 = &a8[v9];
  v17 = a3 + v10;
  if (v11 > 1)
  {
    return sub_1001684C4(result, a2, v17, a4, a5, a6, v15, v16);
  }

  return result;
}

uint64_t sub_100168568@<X0>(uint8x16_t *a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X2>, uint64_t a4@<X7>, uint64_t a5@<X8>)
{
  do
  {
    v10 = *a1;
    v9 = (a1 + a2);
    v12 = *v9;
    v11 = (v9 + a2);
    v14 = *v11;
    v13 = (v11 + a2);
    v16 = *v13;
    v15 = (v13 + a2);
    v17 = *v15;
    a1 = (v15 + a4);
    v18 = vaddw_u8(vaddw_u8(vaddw_u8(vaddl_u8(*v10.i8, *v12.i8), *v14.i8), *v16.i8), *v17.i8);
    v19 = vaddw_high_u8(vaddw_high_u8(vaddw_high_u8(vaddl_high_u8(v10, v12), v14), v16), v17);
    v20 = vandq_s8(v18, v8);
    v20.i16[0] = vaddvq_s16(v20);
    *a3 = vmovn_s16(vqdmulhq_s16(v20, v7)).u8[0];
    v21 = a3 + 1;
    v22 = vandq_s8(vextq_s8(v18, v19, 0xAuLL), v8);
    v22.i16[0] = vaddvq_s16(v22);
    *v21++ = vmovn_s16(vqdmulhq_s16(v22, v7)).u8[0];
    v23 = vandq_s8(vextq_s8(v19, v19, 4uLL), v8);
    v23.i16[0] = vaddvq_s16(v23);
    *v21 = vmovn_s16(vqdmulhq_s16(v23, v7)).u8[0];
    a3 = v21 + 1;
  }

  while (v6-- > 1);
  result = a1->i64 + a5;
  if (v5 > 1)
  {
    return sub_100168564(result);
  }

  return result;
}

uint64_t sub_100168620@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, const char *a6@<X6>, int8x8_t *a7@<X8>, int16x8_t a8@<Q7>)
{
  do
  {
    v9 = a6;
    v18 = vld3q_s8(v9);
    v10 = &v9[a2];
    v21 = vld3q_s8(v10);
    v11 = &v10[a2];
    v12 = vpadalq_u8(vpadalq_u8(vpadalq_u8(vpadalq_u8(vpadalq_u8(vpaddlq_u8(v18.val[0]), v18.val[1]), v18.val[2]), v21.val[0]), v21.val[1]), v21.val[2]);
    v19 = vld3q_s8(v11);
    v13 = &v11[a2];
    v22 = vld3q_s8(v13);
    v14 = &v13[a2];
    v15 = vpadalq_u8(vpadalq_u8(vpadalq_u8(vpadalq_u8(vpadalq_u8(vpadalq_u8(v12, v19.val[0]), v19.val[1]), v19.val[2]), v22.val[0]), v22.val[1]), v22.val[2]);
    v20 = vld3q_s8(v14);
    v16 = &v14[a2];
    v23 = vld3q_s8(v16);
    *a7++ = vmovn_s16(vqdmulhq_s16(vpadalq_u8(vpadalq_u8(vpadalq_u8(vpadalq_u8(vpadalq_u8(vpadalq_u8(v15, v20.val[0]), v20.val[1]), v20.val[2]), v23.val[0]), v23.val[1]), v23.val[2]), a8));
    a6 += 48;
  }

  while (v8-- > 1);
  if (a5 > 1)
  {
    return sub_100168608(a1, a2, a3, a4);
  }

  return a1;
}

uint64_t sub_1001686E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, const char *a6@<X6>, int8x16_t *a7@<X7>, uint64_t a8@<X8>, int16x8_t a9@<Q0>, int16x8_t a10@<Q1>, int16x8_t a11@<Q2>)
{
  do
  {
    v12 = vld2q_s8(a6);
    a6 += 32;
    *a7++ = vqshrun_high_n_s16(vqshrun_n_s16(vqaddq_s16(vqaddq_s16(vqdmulhq_s16(vshll_n_u8(*v12.val[0].i8, 6uLL), a9), a11), vqdmulhq_s16(vshll_n_u8(*v12.val[1].i8, 6uLL), a10)), 6uLL), vqaddq_s16(vqaddq_s16(vqdmulhq_s16(vshll_high_n_u8(v12.val[0], 6uLL), a9), a11), vqdmulhq_s16(vshll_high_n_u8(v12.val[1], 6uLL), a10)), 6uLL);
  }

  while (a8-- > 1);
  if (a5 > 1)
  {
    return sub_1001686CC(a1, a2, a3, a4);
  }

  return a1;
}

uint64_t sub_100168770(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int16x8_t a6, int16x8_t a7, int16x8_t a8, uint64_t a9, const char *a10, const char *a11)
{
  do
  {
    v14 = vld2q_s8(a10);
    a10 += 32;
    v15 = vld2q_s8(a11);
    a11 += 32;
    *v11++ = vqshrun_n_s16(vqaddq_s16(vqaddq_s16(vqdmulhq_s16(vqshlq_n_u16(vpadalq_u8(vpaddlq_u8(v14.val[1]), v15.val[1]), 3uLL), a7), a8), vqdmulhq_s16(vqshlq_n_u16(vpadalq_u8(vpaddlq_u8(v14.val[0]), v15.val[0]), 3uLL), a6)), 3uLL);
  }

  while (v12-- > 1);
  if (a5 > 1)
  {
    return sub_100168758(a1, a2, a3, a4);
  }

  return a1;
}

uint64_t sub_100168804@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, const __int16 *a6@<X6>, const __int16 *a7@<X7>, const __int16 *a8@<X8>, int16x8_t a9@<Q0>, int16x8_t a10@<Q1>, int16x8_t a11@<Q2>)
{
  do
  {
    v16 = vld3q_s16(a6);
    a6 += 24;
    v17 = vld3q_s16(a7);
    a7 += 24;
    v18 = vld3q_s16(a8);
    a8 += 24;
    v13 = vaddw_u8(vaddw_u8(vaddw_u8(vaddw_u8(vaddw_u8(vaddw_u8(vaddw_u8(vaddl_u8(*v16.val[0].i8, *v16.val[1].i8), *v16.val[2].i8), *v17.val[0].i8), *v17.val[1].i8), *v17.val[2].i8), *v18.val[0].i8), *v18.val[1].i8), *v18.val[2].i8);
    v14 = vaddw_high_u8(vaddw_high_u8(vaddw_high_u8(vaddw_high_u8(vaddw_high_u8(vaddw_high_u8(vaddw_high_u8(vaddl_high_u8(v16.val[0], v16.val[1]), v16.val[2]), v17.val[0]), v17.val[1]), v17.val[2]), v18.val[0]), v18.val[1]), v18.val[2]);
    *v11++ = vqshrun_n_s16(vqaddq_s16(vqaddq_s16(vqdmulhq_s16(vqshlq_n_u16(vuzp2q_s16(v13, v14), 3uLL), a10), a11), vqdmulhq_s16(vqshlq_n_u16(vuzp1q_s16(v13, v14), 3uLL), a9)), 3uLL);
  }

  while (v12-- > 1);
  if (a5 > 1)
  {
    return sub_1001687E0(a1, a2, a3, a4);
  }

  return a1;
}

uint64_t sub_1001688D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X4>, const char *a4@<X6>, const char *a5@<X7>, const char *a6@<X8>, int16x8_t a7@<Q0>, int16x8_t a8@<Q1>, int16x8_t a9@<Q2>)
{
  do
  {
    v19 = vld4q_s8(a4);
    a4 += 64;
    v12 = vpadalq_u8(vpaddlq_u8(v19.val[0]), v19.val[2]);
    v13 = vpadalq_u8(vpaddlq_u8(v19.val[1]), v19.val[3]);
    v20 = vld4q_s8(a5);
    a5 += 64;
    v14 = vpadalq_u8(vpadalq_u8(v12, v20.val[0]), v20.val[2]);
    v15 = vpadalq_u8(vpadalq_u8(v13, v20.val[1]), v20.val[3]);
    v21 = vld4q_s8(a6);
    a6 += 64;
    v16 = vpadalq_u8(vpadalq_u8(v14, v21.val[0]), v21.val[2]);
    v17 = vpadalq_u8(vpadalq_u8(v15, v21.val[1]), v21.val[3]);
    v22 = vld4q_s8(v9);
    v9 += 64;
    *v10++ = vqshrun_n_s16(vqaddq_s16(vqaddq_s16(vqdmulhq_s16(vqshlq_n_u16(vpadalq_u8(vpadalq_u8(v17, v22.val[1]), v22.val[3]), 2uLL), a8), a9), vqdmulhq_s16(vqshlq_n_u16(vpadalq_u8(vpadalq_u8(v16, v22.val[0]), v22.val[2]), 2uLL), a7)), 6uLL);
  }

  while (v11-- > 1);
  if (a3 > 1)
  {
    return sub_1001688B0(a1, a2);
  }

  return a1;
}

void sub_100168958(void *a1)
{
  sub_100168990(a1);

  operator delete();
}

void *sub_100168990(void *result)
{
  *result = off_10026E158;
  if (result[3])
  {
    operator delete[]();
  }

  if (result[4])
  {
    operator delete[]();
  }

  if (result[5])
  {
    operator delete[]();
  }

  if (result[6])
  {
    operator delete[]();
  }

  if (result[7])
  {
    operator delete[]();
  }

  return result;
}

void HCImagePerspectiveReader::HCImagePerspectiveReader(HCImagePerspectiveReader *this, unsigned int a2, unsigned int a3, unsigned int a4, int a5, unsigned int a6)
{
  this->var0 = 0;
  this->var1 = a2;
  this->var2 = a3;
  this->var5 = 0;
  this->var6 = 0;
  if (a6)
  {
    v6 = a6;
  }

  else
  {
    v6 = 110;
  }

  this->var8 = v6;
  if ((a5 - 1) >= 4)
  {
    v7 = 1;
  }

  else
  {
    v7 = a5;
  }

  this->var3 = a4;
  this->var4 = v7;
}

void HCImagePerspectiveReader::~HCImagePerspectiveReader(HCImagePerspectiveReader *this)
{
  if (this->var0)
  {
    var5 = this->var5;
    if (var5)
    {
      v3 = *(var5 + 1);
      if (v3)
      {
        if (*(v3 + 16))
        {
          operator delete[]();
        }

        if (*(v3 + 24))
        {
          operator delete[]();
        }

        operator delete();
      }

      *(var5 + 1) = 0;
      if (*var5)
      {
        (*(**var5 + 8))(*var5);
        var5 = this->var5;
      }

      *var5 = 0;
      v4 = *(var5 + 2);
      if (v4)
      {
        (*(*v4 + 24))(*(var5 + 2));
        var5 = this->var5;
      }

      *(var5 + 2) = 0;
      operator delete();
    }
  }
}

void HCImagePerspectiveReader::Reset(HCImagePerspectiveReader *this)
{
  this->var0 = 0;
  var5 = this->var5;
  if (var5)
  {
    v3 = *(var5 + 1);
    if (v3)
    {
      if (*(v3 + 16))
      {
        operator delete[]();
      }

      if (*(v3 + 24))
      {
        operator delete[]();
      }

      operator delete();
    }

    if (*var5)
    {
      (*(**var5 + 8))(*var5);
      var5 = this->var5;
    }

    v4 = *(var5 + 2);
    if (v4)
    {
      (*(*v4 + 24))(*(var5 + 2));
      var5 = this->var5;
    }

    var8 = this->var8;
    *(var5 + 6) = 8 * var8;
    *(var5 + 7) = var8;
    v6 = 8 * var8 + 32;
    *(var5 + 9) = v6;
    *(var5 + 10) = v6 >> 3;
    *(var5 + 8) = vcvtps_u32_f32((v6 >> 3) / 15.0);
    *(var5 + 1) = 0;
    *(var5 + 2) = 0;
    *var5 = 0;
    operator new();
  }

  operator new();
}

void sub_100169D10(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100169D88(va);
  _Unwind_Resume(a1);
}

void sub_100169D24()
{
  if (*(v0 + 296))
  {
    operator delete[]();
  }

  if (*(v0 + 272))
  {
    operator delete[]();
  }

  sub_10018486C(v0);
  operator delete();
}

uint64_t sub_100169D88(uint64_t result)
{
  *result = off_10026E420;
  if (*(result + 16))
  {
    operator delete[]();
  }

  *(result + 16) = 0;
  *(result + 8) = 0;
  return result;
}

void sub_100169DF4(uint64_t a1)
{
  *a1 = off_10026E420;
  if (*(a1 + 16))
  {
    operator delete[]();
  }

  *(a1 + 16) = 0;
  *(a1 + 8) = 0;

  operator delete();
}

uint64_t HCImagePerspectiveReader::ProcessUVFrame(uint64_t a1, uint64_t a2, int a3, int a4, unsigned int a5, uint64_t a6)
{
  if (*a1 != 1)
  {
    return 4;
  }

  if (!a2)
  {
    return 3;
  }

  if (a5 < 2 * a4)
  {
    return 2;
  }

  if (*(a1 + 4) != a3 || *(a1 + 8) != a4 || *(a1 + 12) != a5)
  {
    return 5;
  }

  if ((*(***(a1 + 24) + 56))(**(a1 + 24)))
  {
    return 7;
  }

  if (a6)
  {
    *(a6 + 4) = 0;
    *a6 = 0;
  }

  if (sub_10017E1E4(*(*(a1 + 24) + 16)))
  {
    return 7;
  }

  v13 = -1;
  v9 = *(*(a1 + 24) + 16);
  v10 = *(v9 + 40);
  if (v10)
  {
    v11 = 0;
    v12 = *(v9 + 24);
    do
    {
      if (v12[4] == 3 && v12[10] == 10)
      {
        if (a6)
        {
          *(a6 + 4) = v12[3] * 0.00012207;
          *a6 = 1;
        }

        operator new[]();
      }

      ++v11;
      v12 += 34;
    }

    while (v10 != v11);
  }

  return 0;
}

uint64_t sub_10016A1B8(uint64_t *a1, int a2)
{
  v2 = a1[1];
  if (!v2)
  {
    return 0;
  }

  v3 = *a1;
  if (!*a1)
  {
    return 0;
  }

  *(a1 + 22) = 4;
  *v2 = 5;
  *(v2 + 8) = &unk_1001E21D0;
  *(v2 + 16) = &unk_1001E21DA;
  if (a2 > 7)
  {
    switch(a2)
    {
      case 8:
        *(a1 + 92) = 0x4000000008;
        *(a1 + 25) = 2;
        a1[10] = 0x200000020;
        v4 = a1[4];
        goto LABEL_17;
      case 9:
        *(a1 + 92) = 0x6200000009;
        *(a1 + 25) = 4;
        a1[10] = 0x200000020;
        v4 = a1[5];
        goto LABEL_17;
      case 10:
        *(a1 + 92) = 0x7D0000000ALL;
        *(a1 + 25) = 4;
        a1[10] = 0x100000018;
        v4 = a1[6];
        goto LABEL_17;
    }

    return 0;
  }

  switch(a2)
  {
    case 5:
      v4 = 0;
      *(a1 + 92) = 0x2000000005;
      *(a1 + 25) = 1;
      a1[10] = 0x100000018;
      v6 = &unk_1001E21F6;
      v7 = &unk_1001E21E4;
      v8 = 9;
      break;
    case 6:
      v4 = 0;
      *(a1 + 92) = 0x4000000006;
      *(a1 + 25) = 2;
      a1[10] = 0x100000018;
      v6 = &unk_1001E2218;
      v7 = &unk_1001E2208;
      v8 = 8;
      break;
    case 7:
      *(a1 + 92) = 0x2F00000007;
      *(a1 + 25) = 2;
      a1[10] = 0x100000018;
      v4 = a1[3];
LABEL_17:
      v6 = &unk_1001E222A;
      v7 = &unk_1001E2228;
      v8 = 1;
      break;
    default:
      return 0;
  }

  a1[7] = v4;
  *v3 = v8;
  *(v3 + 8) = v7;
  *(v3 + 16) = v6;
  result = 1;
  *(v3 + 2) = 100;
  return result;
}

uint64_t sub_10016A378(uint64_t result, uint64_t a2, int a3)
{
  v3 = 0;
  v4 = *(*(result + 8 * a3 + 16) + 16) + 8;
  v5 = (a2 + 8);
  do
  {
    v6 = *(v4 + v3);
    if (v6 < 0)
    {
      *(v5 - 4) = -*(v5 - 4);
      if ((v6 & 0x40) == 0)
      {
LABEL_5:
        if ((v6 & 0x20) == 0)
        {
          goto LABEL_6;
        }

        goto LABEL_14;
      }
    }

    else if ((v6 & 0x40) == 0)
    {
      goto LABEL_5;
    }

    *(v5 - 3) = -*(v5 - 3);
    if ((v6 & 0x20) == 0)
    {
LABEL_6:
      if ((v6 & 0x10) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_15;
    }

LABEL_14:
    *(v5 - 2) = -*(v5 - 2);
    if ((v6 & 0x10) == 0)
    {
LABEL_7:
      if ((v6 & 8) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_16;
    }

LABEL_15:
    *(v5 - 1) = -*(v5 - 1);
    if ((v6 & 8) == 0)
    {
LABEL_8:
      if ((v6 & 4) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_17;
    }

LABEL_16:
    *v5 = -*v5;
    if ((v6 & 4) == 0)
    {
LABEL_9:
      if ((v6 & 2) != 0)
      {
        goto LABEL_18;
      }

      goto LABEL_10;
    }

LABEL_17:
    v5[1] = -v5[1];
    if ((v6 & 2) != 0)
    {
LABEL_18:
      v5[2] = -v5[2];
      if ((v6 & 1) == 0)
      {
        goto LABEL_2;
      }

      goto LABEL_19;
    }

LABEL_10:
    if ((v6 & 1) == 0)
    {
      goto LABEL_2;
    }

LABEL_19:
    v5[3] = -v5[3];
LABEL_2:
    ++v3;
    v5 += 8;
  }

  while (v3 != 128);
  return result;
}

uint64_t sub_10016A458(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  *a3 = 0;
  *(a1 + 72) = a2;
  result = *(a1 + 112);
  if (*(result + 8) >= 1)
  {
    v5 = 0;
    do
    {
      v6 = *(*(result + 8 * v5 + 16) + 16);
      v7 = *v6;
      if (v7 < 0)
      {
        result = __maskrune(*v6, 0x40000uLL);
        if (!result)
        {
          return result;
        }
      }

      else if ((_DefaultRuneLocale.__runetype[v7] & 0x40000) == 0)
      {
        return result;
      }

      v8 = v6[1];
      if (v8 < 0)
      {
        result = __maskrune(v6[1], 0x40000uLL);
        if (!result)
        {
          return result;
        }
      }

      else
      {
        result = _DefaultRuneLocale.__runetype[v8] & 0x40000;
        if (!result)
        {
          return result;
        }
      }

      v9 = v6[2];
      if (v9 < 0)
      {
        result = __maskrune(v6[2], 0x40000uLL);
        if (!result)
        {
          return result;
        }
      }

      else
      {
        result = _DefaultRuneLocale.__runetype[v9] & 0x40000;
        if (!result)
        {
          return result;
        }
      }

      v10 = v6[3];
      if (v10 < 0)
      {
        result = __maskrune(v6[3], 0x40000uLL);
        if (!result)
        {
          return result;
        }
      }

      else
      {
        result = _DefaultRuneLocale.__runetype[v10] & 0x40000;
        if (!result)
        {
          return result;
        }
      }

      ++v5;
      result = *(a1 + 112);
      v11 = *(result + 8);
    }

    while (v5 < v11);
    if (v11 >= 1)
    {
      sub_10016A378(result, *(a1 + 72), 0);
      operator new[]();
    }
  }

  return result;
}

uint64_t sub_10016B51C(unsigned __int8 *a1, unsigned int a2, int a3, unsigned int a4, _BYTE *a5)
{
  v5 = a2 - 1;
  v6 = a4;
  v7 = &a1[a4];
  v8 = *a1;
  v9 = v7 + 1;
  v10 = *v7;
  v11 = v8 >= v10;
  v12 = v8 != v10;
  if (v11)
  {
    v13 = v12;
  }

  else
  {
    v13 = -1;
  }

  v14 = -v13;
  v61[0] = -v13;
  v15 = 1;
  v16 = a2 - 1;
  v17 = a5;
  do
  {
    v18 = *v9;
    v11 = v18 >= v8;
    v19 = v18 != v8;
    if (!v11)
    {
      v19 = -1;
    }

    v20 = &v61[v15];
    v21 = a1[v15];
    v11 = v21 >= v8;
    v22 = v21 != v8;
    if (!v11)
    {
      v22 = -1;
    }

    *v17++ = v13 - v19 - v22;
    v23 = *(v9 - 1);
    v11 = v21 >= v23;
    v24 = v21 != v23;
    if (!v11)
    {
      v24 = -1;
    }

    v25 = v24 + v22;
    *(v20 - 1) = v14 - v24;
    v26 = *v9++;
    v27 = v21 != v26;
    if (v21 < v26)
    {
      v27 = -1;
    }

    LOBYTE(v13) = v25 + v27;
    LOBYTE(v14) = v19 - v27;
    *v20 = v14;
    ++v15;
    v8 = v21;
    --v16;
  }

  while (v16);
  a5[v5] = v13;
  v28 = a2;
  v29 = a3 - 2;
  v30 = &a1[2 * v6 + 1];
  v31 = 1;
  do
  {
    v32 = &a5[v28];
    v33 = &v7[v6];
    v34 = *v7;
    v35 = v7[v6];
    v11 = v35 >= v34;
    v36 = v35 != v34;
    if (v11)
    {
      v37 = v36;
    }

    else
    {
      v37 = -1;
    }

    v38 = v61[0] - v37;
    v61[0] = v37;
    v39 = 1;
    v40 = v5;
    v41 = v28;
    v42 = v30;
    do
    {
      v43 = *v42;
      v11 = v43 >= v34;
      v44 = v43 != v34;
      v45 = v7[v39];
      if (!v11)
      {
        v44 = -1;
      }

      v11 = v45 >= v34;
      v46 = v45 != v34;
      if (!v11)
      {
        v46 = -1;
      }

      a5[v41] = v38 - v44 - v46;
      v47 = &v61[v39];
      v48 = v46 + v61[v39];
      v49 = *(v42 - 1);
      v11 = v45 >= v49;
      v50 = v45 != v49;
      if (!v11)
      {
        v50 = -1;
      }

      *(v47 - 1) = v37 - v50;
      v51 = *v42++;
      v52 = v45 != v51;
      if (v45 < v51)
      {
        v52 = -1;
      }

      v38 = v48 + v50 + v52;
      v37 = v44 - v52;
      *v47 = v37;
      ++v41;
      ++v39;
      v34 = v45;
      --v40;
    }

    while (v40);
    v32[v5] = v38;
    v30 += v6;
    a5 += v28;
    v7 += v6;
  }

  while (v31++ != v29);
  v54 = &v32[v28];
  v55 = v61[0];
  v56 = *v33;
  v57 = 1;
  v58 = v5;
  do
  {
    result = v33[v57];
    v11 = result >= v56;
    v60 = result != v56;
    if (!v11)
    {
      v60 = -1;
    }

    v32[v28] = v55 - v60;
    v55 = v60 + v61[v57];
    ++v28;
    ++v57;
    v56 = result;
    --v58;
  }

  while (v58);
  v54[v5] = v55;
  return result;
}

uint64_t sub_10016B770(uint64_t result, uint64_t a2, int a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, unsigned int a8, unsigned __int16 a9, uint64_t a10)
{
  if (!*(a7 + 28))
  {
    v12 = result;
    v13 = 0;
    v24 = a7;
    v14 = a8;
    v15 = a5 + 16 * (a8 - 1) * a6;
    v23 = -16 * a6;
    LODWORD(v16) = a4 << 20;
    HIDWORD(v16) = a3 << 20;
    v26 = vdupq_lane_s64(v16, 0);
    do
    {
      (*a10)(v27, a7, v13);
      v17 = 0;
      v18 = 0;
      v25 = v15;
      do
      {
        v20.i64[0] = __PAIR64__(v27[3], v27[1]);
        v19.i64[0] = __PAIR64__(v27[2], v27[0]);
        v19.i64[1] = __PAIR64__(v27[62], v27[60]);
        v20.i64[1] = __PAIR64__(v27[63], v27[61]);
        v21 = vmlaq_s32(v20, v19, vdupq_n_s32(v17));
        v22 = vmlaq_s32(v20, v19, vdupq_n_s32(v17 + 15));
        if (vminvq_u8(vuzp1q_s8(vuzp1q_s16(vcgtq_s32(v26, v21), vcgtq_s32(v26, v22)), vuzp1q_s16(vcgezq_s32(v21), vcgezq_s32(v22)))))
        {
          result = (*(a10 + 16))(v12, a2, v15, a6, v18, v27);
        }

        else
        {
          result = (*(a10 + 32))(v15, a6);
        }

        ++v18;
        v15 += 16;
        v17 += 16;
      }

      while (v14 != v18);
      ++v13;
      a7 = v24;
      v15 = v25 + v23;
    }

    while (v13 != a9);
  }

  return result;
}