uint64_t sub_1001E6F64@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v3 = sub_1000CE6B8(&qword_101911C88);
  v4 = (v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v19 - v5;
  v7 = sub_1000CE6B8(&qword_101911C70);
  type metadata accessor for RectangleMark();
  sub_1001EDBF0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 16);
  v9(v6, *a1, v7);
  v21 = v4[14];
  v9(&v6[v21], a1[1], v7);
  v10 = sub_1000CE6B8(&qword_101911C68);
  type metadata accessor for PointMark();
  sub_1001EDEC8();
  v11 = v4[18];
  v20 = v11;
  v12 = *(v10 - 8);
  v13 = *(v12 + 16);
  v13(&v6[v11], a1[2], v10);
  sub_1001EDF80();
  v19 = v4[22];
  sub_1000D2DFC(a1[3], &v6[v19], &qword_101911B70);
  v14 = v4[26];
  v13(&v6[v14], a1[4], v10);
  v15 = *(v8 + 32);
  v16 = v22;
  v15(v22, v6, v7);
  v15(v16 + v4[14], &v6[v21], v7);
  v17 = *(v12 + 32);
  v17(v16 + v4[18], &v6[v20], v10);
  sub_1000F11C4(&v6[v19], v16 + v4[22], &qword_101911B70);
  return (v17)(v16 + v4[26], &v6[v14], v10);
}

uint64_t sub_1001E71E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v52 = a2;
  v61 = a1;
  v64 = a4;
  v63 = sub_1000CE6B8(&qword_101911CA0) - 8;
  __chkstk_darwin(v63);
  v62 = v49 - v7;
  v58 = sub_1000CE6B8(&qword_101911B30);
  v60 = *(v58 - 8);
  __chkstk_darwin(v58);
  v56 = v49 - v8;
  v59 = sub_1000CE6B8(&qword_101911CA8);
  v68 = *(v59 - 8);
  __chkstk_darwin(v59);
  v57 = v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v66 = v49 - v11;
  v12 = type metadata accessor for MapsElevationChart();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12 - 8);
  v15 = v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = sub_1000CE6B8(&qword_101911B28);
  v67 = *(v55 - 8);
  __chkstk_darwin(v55);
  v65 = v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v69 = v49 - v18;
  v54 = v4;
  v74 = *(v4 + 16);
  v19 = v74;
  KeyPath = swift_getKeyPath();
  v53 = type metadata accessor for MapsElevationChart;
  sub_1001ED660(v4, v15, type metadata accessor for MapsElevationChart);
  v20 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v21 = (v14 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
  v22 = swift_allocObject();
  sub_1001ECE0C(v15, v22 + v20);
  v23 = (v22 + v21);
  *v23 = a2;
  v23[1] = a3;
  v50 = a3;

  v49[1] = sub_1000CE6B8(&qword_101911998);
  sub_1000CE6B8(&qword_101911AF8);
  sub_1000414C8(&qword_1019119A8, &qword_101911998);
  v24 = sub_1000D6664(&qword_101911AD0);
  v70 = type metadata accessor for AreaMark();
  v71 = &type metadata for LinearGradient;
  v72 = &protocol witness table for AreaMark;
  v73 = &protocol witness table for LinearGradient;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v70 = v24;
  v71 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  ForEach<>.init(_:id:content:)();
  v74 = v19;
  swift_getKeyPath();
  sub_1001ED660(v54, v15, v53);
  v26 = swift_allocObject();
  sub_1001ECE0C(v15, v26 + v20);
  v27 = (v26 + v21);
  v28 = v50;
  *v27 = v52;
  v27[1] = v28;

  sub_1000CE6B8(&qword_101911CB0);
  v29 = sub_1000D6664(&qword_101911B40);
  v70 = type metadata accessor for LineMark();
  v71 = &protocol witness table for LineMark;
  v30 = swift_getOpaqueTypeConformance2();
  v70 = v29;
  v71 = v30;
  swift_getOpaqueTypeConformance2();
  v31 = v56;
  ForEach<>.init(_:id:content:)();
  v70 = v61;
  sub_1001EDDD8();
  v32 = v66;
  v33 = v58;
  ChartContent.foregroundStyle<A>(_:)();
  (*(v60 + 8))(v31, v33);
  v34 = *(v67 + 16);
  v35 = v65;
  v36 = v55;
  v34(v65, v69, v55);
  v37 = *(v68 + 16);
  v38 = v57;
  v39 = v59;
  v37(v57, v32, v59);
  sub_1001EDCD4();
  v40 = v62;
  v34(v62, v35, v36);
  v41 = v63;
  v42 = *(v63 + 56);
  v37(&v40[v42], v38, v39);
  v43 = v67;
  v44 = v64;
  (*(v67 + 32))(v64, v40, v36);
  v45 = v68;
  (*(v68 + 32))(v44 + *(v41 + 56), &v40[v42], v39);
  v46 = *(v45 + 8);
  v46(v66, v39);
  v47 = *(v43 + 8);
  v47(v69, v36);
  v46(v38, v39);
  return (v47)(v65, v36);
}

uint64_t sub_1001E798C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v37 = a4;
  v35 = a3;
  v44 = a5;
  v45 = a2;
  v47 = a1;
  v5 = sub_1000CE6B8(&qword_101911CB8);
  __chkstk_darwin(v5 - 8);
  v39 = v34 - v6;
  v7 = sub_1000CE6B8(&qword_10191B3A0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v34 - v9;
  v11 = sub_1000CE6B8(&qword_1019119B0);
  __chkstk_darwin(v11 - 8);
  v34[4] = v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v46 = v34 - v14;
  __chkstk_darwin(v15);
  v17 = v34 - v16;
  v42 = type metadata accessor for AreaMark();
  v40 = *(v42 - 8);
  __chkstk_darwin(v42);
  v36 = v34 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_1000CE6B8(&qword_101911AD0);
  v41 = *(v43 - 8);
  __chkstk_darwin(v43);
  v38 = v34 - v19;
  LocalizedStringKey.init(stringLiteral:)();
  v34[1] = type metadata accessor for MapsElevationChartViewModel.ElevationDatum(0);
  v20 = [objc_opt_self() meters];
  Measurement<>.converted(to:)();

  Measurement.value.getter();
  v22 = v21;
  v23 = *(v8 + 8);
  v34[2] = v8 + 8;
  v23(v10, v7);
  *&v51[0] = v22;
  v34[3] = v17;
  static PlottableValue.value(_:_:)();

  LocalizedStringKey.init(stringLiteral:)();
  v24 = sub_1002BDB68();
  v25 = *(v24 + 16);
  if (v25)
  {
    v26 = *(v24 + 8 * v25 + 24);

    *&v51[0] = v26;
    static PlottableValue.value(_:_:)();

    LocalizedStringKey.init(stringLiteral:)();
    Measurement<>.converted(to:)();
    Measurement.value.getter();
    v28 = v27;
    v23(v10, v7);
    *&v51[0] = v28;
    static PlottableValue.value(_:_:)();

    LocalizedStringKey.init(stringLiteral:)();
    *&v51[0] = v35;
    *(&v51[0] + 1) = v37;
    static PlottableValue.value(_:_:)();

    v29 = v36;
    AreaMark.init<A, B, C>(x:yStart:yEnd:series:)();
    type metadata accessor for MapsElevationChartViewModel(0);
    sub_100437568();
    Gradient.init(colors:)();
    static UnitPoint.top.getter();
    static UnitPoint.bottom.getter();
    LinearGradient.init(gradient:startPoint:endPoint:)();
    v48 = v51[0];
    v49 = v51[1];
    v50 = v52;
    v30 = v38;
    v31 = v42;
    ChartContent.foregroundStyle<A>(_:)();
    sub_1001ED9F0(v51);
    (*(v40 + 8))(v29, v31);
    *&v48 = v31;
    *(&v48 + 1) = &type metadata for LinearGradient;
    *&v49 = &protocol witness table for AreaMark;
    *(&v49 + 1) = &protocol witness table for LinearGradient;
    swift_getOpaqueTypeConformance2();
    v32 = v43;
    ChartContent.interpolationMethod(_:)();
    return (*(v41 + 8))(v30, v32);
  }

  else
  {

    __break(1u);
  }

  return result;
}

uint64_t sub_1001E8088@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v35 = a2;
  v36 = a3;
  v39 = a4;
  v40 = a1;
  v4 = sub_1000CE6B8(&qword_101911CB8);
  __chkstk_darwin(v4 - 8);
  v32 = v30 - v5;
  v6 = sub_1000CE6B8(&qword_1019119B0);
  __chkstk_darwin(v6 - 8);
  v30[1] = v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v9 = type metadata accessor for LineMark();
  v10 = *(v9 - 8);
  v33 = v9;
  v34 = v10;
  __chkstk_darwin(v9);
  v12 = v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1000CE6B8(&qword_101911B40);
  v14 = *(v13 - 8);
  v37 = v13;
  v38 = v14;
  __chkstk_darwin(v13);
  v31 = v30 - v15;
  v16 = sub_1000CE6B8(&qword_10191B3A0);
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = v30 - v18;
  type metadata accessor for MapsElevationChartViewModel.ElevationDatum(0);
  v20 = [objc_opt_self() meters];
  Measurement<>.converted(to:)();

  Measurement.value.getter();
  v22 = v21;
  v23 = *(v17 + 8);
  v23(v19, v16);
  Measurement<>.converted(to:)();
  Measurement.value.getter();
  v25 = v24;
  v23(v19, v16);
  LocalizedStringKey.init(stringLiteral:)();
  v43[0] = v22;
  static PlottableValue.value(_:_:)();

  LocalizedStringKey.init(stringLiteral:)();
  v43[0] = v25;
  static PlottableValue.value(_:_:)();

  LocalizedStringKey.init(stringLiteral:)();
  v43[0] = v35;
  v43[1] = v36;
  static PlottableValue.value(_:_:)();

  LineMark.init<A, B, C>(x:y:series:)();
  v26 = v31;
  v27 = v33;
  ChartContent.interpolationMethod(_:)();
  (*(v34 + 8))(v12, v27);
  type metadata accessor for MapsElevationChartViewModel(0);
  StrokeStyle.init(lineWidth:lineCap:lineJoin:miterLimit:dash:dashPhase:)();
  v41 = v27;
  v42 = &protocol witness table for LineMark;
  swift_getOpaqueTypeConformance2();
  v28 = v37;
  ChartContent.lineStyle(_:)();
  sub_1001EDA44(v43);
  return (*(v38 + 8))(v26, v28);
}

uint64_t sub_1001E85F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1000CE6B8(&qword_1019109C0);
  __chkstk_darwin(v6 - 8);
  v8 = &v31 - v7;
  v9 = sub_1000CE6B8(&unk_10190D5F0);
  __chkstk_darwin(v9 - 8);
  v11 = &v31 - v10;
  v31 = a1;
  v32 = a2;
  static Locale.current.getter();
  v12 = type metadata accessor for Locale();
  (*(*(v12 - 8) + 56))(v11, 0, 1, v12);
  sub_1000E5580();
  v13 = StringProtocol.uppercased(with:)();
  v15 = v14;
  sub_100024F64(v11, &unk_10190D5F0);
  v31 = v13;
  v32 = v15;
  v16 = Text.init<A>(_:)();
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v23 = *(sub_1000CE6B8(&qword_101911C48) + 36);
  v24 = enum case for BlendMode.plusLighter(_:);
  v25 = type metadata accessor for BlendMode();
  (*(*(v25 - 8) + 104))(a3 + v23, v24, v25);
  *a3 = v16;
  *(a3 + 8) = v18;
  *(a3 + 16) = v20 & 1;
  *(a3 + 24) = v22;
  static Font.Weight.medium.getter();
  v26 = type metadata accessor for Font.Design();
  (*(*(v26 - 8) + 56))(v8, 1, 1, v26);
  v27 = static Font.system(size:weight:design:)();
  sub_100024F64(v8, &qword_1019109C0);
  KeyPath = swift_getKeyPath();
  result = sub_1000CE6B8(&qword_101911C38);
  v30 = (a3 + *(result + 36));
  *v30 = KeyPath;
  v30[1] = v27;
  return result;
}

uint64_t sub_1001E88AC@<X0>(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>)
{
  v13[1] = a1;
  v6 = sub_1000CE6B8(&qword_1019119B0);
  __chkstk_darwin(v6 - 8);
  __chkstk_darwin(v7);
  v8 = type metadata accessor for PointMark();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  LocalizedStringKey.init(stringLiteral:)();
  v15 = a2;
  static PlottableValue.value(_:_:)();

  LocalizedStringKey.init(stringLiteral:)();
  v15 = a3;
  static PlottableValue.value(_:_:)();

  PointMark.init<A, B>(x:y:)();
  v14 = v3;
  sub_1000CE6B8(&qword_101911B78);
  sub_1001EE060();
  ChartContent.symbol<A>(symbol:)();
  return (*(v9 + 8))(v11, v8);
}

double sub_1001E8B2C@<D0>(uint64_t a1@<X8>)
{
  v2 = static Alignment.center.getter();
  v4 = v3;
  sub_1001E8CAC(&v19);
  v13 = v20;
  v14 = v21;
  v15 = v22;
  v16 = v23;
  v12 = v19;
  v17[2] = v21;
  v17[3] = v22;
  v18 = v23;
  v17[0] = v19;
  v17[1] = v20;
  sub_1000D2DFC(&v12, v10, &qword_101911C78);
  sub_100024F64(v17, &qword_101911C78);
  v21 = v14;
  v22 = v15;
  v23 = v16;
  v19 = v12;
  v20 = v13;
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  *&v11[6] = v10[0];
  *&v11[22] = v10[1];
  *&v11[38] = v10[2];
  static Color.black.getter();
  v5 = Color.opacity(_:)();

  v6 = v22;
  *(a1 + 48) = v21;
  *(a1 + 64) = v6;
  v7 = v20;
  *(a1 + 16) = v19;
  *(a1 + 32) = v7;
  v8 = *&v11[16];
  *(a1 + 82) = *v11;
  *a1 = v2;
  *(a1 + 8) = v4;
  *(a1 + 80) = v23;
  *(a1 + 98) = v8;
  *(a1 + 114) = *&v11[32];
  *(a1 + 128) = *&v11[46];
  *(a1 + 136) = v5;
  result = 4.0;
  *(a1 + 144) = xmmword_1011EFEB0;
  *(a1 + 160) = 0x4000000000000000;
  return result;
}

uint64_t sub_1001E8CAC@<X0>(uint64_t a1@<X8>)
{
  v2 = static Color.blue.getter();
  StrokeStyle.init(lineWidth:lineCap:lineJoin:miterLimit:dash:dashPhase:)();
  v3 = v15;
  v4 = DWORD2(v15);
  v5 = HIDWORD(v15);
  v6 = v16;
  v7 = v17;
  v8 = static Color.white.getter();
  v18[0] = v15;
  v18[1] = v16;
  *&v19 = v17;
  *(&v19 + 1) = v8;
  v20 = 256;
  *&v14[6] = v15;
  *&v14[22] = v16;
  *&v14[38] = v19;
  *&v14[54] = 256;
  *a1 = v2;
  *(a1 + 8) = 256;
  v9 = *v14;
  v10 = *&v14[16];
  v11 = *&v14[32];
  *(a1 + 58) = *&v14[48];
  *(a1 + 42) = v11;
  *(a1 + 26) = v10;
  *(a1 + 10) = v9;
  v21 = v3;
  v22 = v4;
  v23 = v5;
  v24 = v6;
  v25 = v7;
  v26 = v8;
  v27 = 256;

  sub_1000D2DFC(v18, v13, &qword_101911C80);
  sub_100024F64(&v21, &qword_101911C80);
}

double sub_1001E8E00@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = static Alignment.center.getter();
  v8 = v7;
  sub_1001E8FD4(a1, a2, &v27);
  v22 = v32;
  v23 = v33;
  v24[0] = v34[0];
  *(v24 + 9) = *(v34 + 9);
  v18 = v28;
  v19 = v29;
  v20 = v30;
  v21 = v31;
  v17 = v27;
  v25[6] = v33;
  v26[0] = v34[0];
  *(v26 + 9) = *(v34 + 9);
  v25[2] = v29;
  v25[3] = v30;
  v25[4] = v31;
  v25[5] = v32;
  v25[0] = v27;
  v25[1] = v28;
  sub_1000D2DFC(&v17, v15, &qword_101911C90);
  sub_100024F64(v25, &qword_101911C90);
  v33 = v23;
  v34[0] = v24[0];
  *(v34 + 9) = *(v24 + 9);
  v29 = v19;
  v30 = v20;
  v31 = v21;
  v32 = v22;
  v27 = v17;
  v28 = v18;
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  *&v16[7] = v15[0];
  *&v16[23] = v15[1];
  *&v16[39] = v15[2];
  v9 = v34[0];
  *(a3 + 112) = v33;
  *(a3 + 128) = v9;
  *(a3 + 137) = *(v34 + 9);
  v10 = v30;
  *(a3 + 48) = v29;
  *(a3 + 64) = v10;
  v11 = v32;
  *(a3 + 80) = v31;
  *(a3 + 96) = v11;
  v12 = v28;
  *(a3 + 16) = v27;
  *(a3 + 32) = v12;
  v13 = *&v16[16];
  *(a3 + 153) = *v16;
  *a3 = v6;
  *(a3 + 8) = v8;
  *(a3 + 169) = v13;
  result = *&v16[32];
  *(a3 + 185) = *&v16[32];
  *(a3 + 200) = *&v16[47];
  return result;
}

uint64_t sub_1001E8FD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = type metadata accessor for MapsElevationChartViewModel(0);
  v7 = *(a1 + *(result + 56));
  v8 = OBJC_IVAR____TtC4Maps23MapsElevationChartStyle_dotStrokeColor;
  v9 = *(v7 + OBJC_IVAR____TtC4Maps23MapsElevationChartStyle_dotStrokeColor);
  if (v9)
  {
    v10 = v9;
    v11 = Color.init(uiColor:)();
    v12 = static Edge.Set.all.getter();
    result = EdgeInsets.init(_all:)();
    LOBYTE(v45) = 0;
    v17 = *(v7 + v8);
    if (v17)
    {
      v18 = v13;
      v19 = v14;
      v20 = v15;
      v21 = v16;

      v22 = v17;
      v23 = Color.init(uiColor:)();
      v24 = static Edge.Set.all.getter();
      EdgeInsets.init(_all:)();
      v53 = 0;
      *&v31 = a2;
      WORD4(v31) = 256;
      LOBYTE(v32) = v12;
      *(&v32 + 1) = v18;
      *v33 = v19;
      *&v33[8] = v20;
      *&v33[16] = v21;
      v33[24] = 0;
      *&v30[47] = *&v33[9];
      *&v30[38] = *v33;
      *&v30[22] = v32;
      *&v30[6] = v31;
      *&v34 = v23;
      WORD4(v34) = 256;
      LOBYTE(v35) = v24;
      *(&v35 + 1) = v25;
      *v36 = v26;
      *&v36[8] = v27;
      *&v36[16] = v28;
      v36[24] = 0;
      *&v29[48] = *&v36[9];
      *&v29[39] = *v36;
      *&v29[23] = v35;
      *&v29[7] = v34;
      *a3 = v11;
      *(a3 + 8) = 256;
      *(a3 + 57) = *&v30[47];
      *(a3 + 42) = *&v30[32];
      *(a3 + 26) = *&v30[16];
      *(a3 + 10) = *v30;
      *(a3 + 121) = *&v29[48];
      *(a3 + 105) = *&v29[32];
      *(a3 + 89) = *&v29[16];
      *(a3 + 73) = *v29;
      v37 = v23;
      v38 = 256;
      v39 = v24;
      v40 = v25;
      v41 = v26;
      v42 = v27;
      v43 = v28;
      v44 = 0;

      sub_1000D2DFC(&v31, &v45, &qword_101911C98);
      sub_1000D2DFC(&v34, &v45, &qword_101911C98);
      sub_100024F64(&v37, &qword_101911C98);
      v45 = a2;
      v46 = 256;
      v47 = v12;
      v48 = v18;
      v49 = v19;
      v50 = v20;
      v51 = v21;
      v52 = 0;
      sub_100024F64(&v45, &qword_101911C98);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1001E9218@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v134 = a2;
  v142 = sub_1000CE6B8(&qword_101911C60);
  v141 = *(v142 - 8);
  __chkstk_darwin(v142);
  v121 = &v120 - v3;
  v4 = sub_1000CE6B8(&qword_101911B70);
  __chkstk_darwin(v4 - 8);
  v133 = &v120 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v157 = &v120 - v7;
  v8 = sub_1000CE6B8(&qword_1019119B0);
  __chkstk_darwin(v8 - 8);
  v154 = &v120 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v153 = &v120 - v11;
  v156 = type metadata accessor for PointMark();
  v160 = *(v156 - 8);
  __chkstk_darwin(v156);
  v155 = &v120 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1000CE6B8(&qword_10191B3A0);
  v161 = *(v13 - 8);
  __chkstk_darwin(v13);
  v158 = &v120 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v143 = &v120 - v16;
  v132 = sub_1000CE6B8(&qword_101911C68);
  v131 = *(v132 - 8);
  __chkstk_darwin(v132);
  v130 = &v120 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v150 = &v120 - v19;
  __chkstk_darwin(v20);
  v149 = &v120 - v21;
  __chkstk_darwin(v22);
  v159 = &v120 - v23;
  v24 = sub_1000CE6B8(&qword_101911B10);
  __chkstk_darwin(v24);
  v26 = &v120 - v25;
  v129 = sub_1000CE6B8(&qword_101911C70);
  v128 = *(v129 - 8);
  __chkstk_darwin(v129);
  v148 = &v120 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v147 = &v120 - v29;
  __chkstk_darwin(v30);
  v32 = &v120 - v31;
  __chkstk_darwin(v33);
  v35 = &v120 - v34;
  v36 = static Color.blue.getter();
  sub_1001E71E8(v36, 0x64657370616C65, 0xE700000000000000, v26);

  v163 = a1;
  type metadata accessor for RectangleMark();
  sub_1001EDBF0();
  v145 = v35;
  ChartContent.mask<A>(content:)();
  sub_100024F64(v26, &qword_101911B10);
  v37 = type metadata accessor for MapsElevationChartViewModel(0);
  v38 = *(*(a1 + *(v37 + 56)) + OBJC_IVAR____TtC4Maps23MapsElevationChartStyle_barColor);
  v39 = Color.init(uiColor:)();
  sub_1001E71E8(v39, 0x676E696D6F637075, 0xE800000000000000, v26);
  v40 = a1;

  v162 = a1;
  v146 = v32;
  v41 = v143;
  ChartContent.mask<A>(content:)();
  v42 = v161;
  sub_100024F64(v26, &qword_101911B10);
  v43 = a1 + *(v37 + 44);
  v44 = objc_opt_self();
  v45 = [v44 meters];
  Measurement<>.converted(to:)();

  Measurement.value.getter();
  v47 = v46;
  v49 = v42 + 8;
  v48 = *(v42 + 8);
  v48(v41, v13);
  if (v47 <= 0.0)
  {
    v51 = [objc_opt_self() labelColor];
    result = Color.init(uiColor:)();
  }

  else
  {
    result = static Color.blue.getter();
  }

  v52 = *(a1 + 16);
  v53 = v158;
  if (!*(v52 + 16))
  {
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v137 = v43;
  v136 = result;
  v54 = type metadata accessor for MapsElevationChartViewModel.ElevationDatum(0);
  v125 = *(v54 - 8);
  v55 = (*(v125 + 80) + 32) & ~*(v125 + 80);
  v140 = v52;
  v56 = v52 + v55;
  v139 = v54;
  v57 = *(v54 + 24);
  v58 = *(v42 + 16);
  v126 = v56;
  v161 = v42 + 16;
  v138 = v58;
  v58(v53, v56 + v57, v13);
  v144 = *(v40 + 32);
  Measurement<>.converted(to:)();
  v48(v53, v13);
  Measurement.value.getter();
  v60 = v59;
  v48(v41, v13);
  v124 = "ion X.  Maximum elevation Y'";
  LocalizedStringKey.init(stringLiteral:)();
  v152 = v44;
  v151 = v40;
  v164[0] = 0;
  v135 = v48;
  static PlottableValue.value(_:_:)();

  LocalizedStringKey.init(stringLiteral:)();
  v164[0] = v60;
  static PlottableValue.value(_:_:)();
  v61 = v151;

  v62 = v155;
  v63 = v137;
  v64 = PointMark.init<A, B>(x:y:)();
  __chkstk_darwin(v64);
  v65 = v136;
  *(&v120 - 2) = v61;
  *(&v120 - 1) = v65;
  v66 = sub_1000CE6B8(&qword_101911B48);
  v67 = sub_1001EDEC8();
  v68 = v156;
  v123 = v66;
  v69 = v135;
  v122 = v67;
  ChartContent.symbol<A>(symbol:)();

  v70 = v152;
  v71 = *(v160 + 8);
  v160 += 8;
  v136 = v71;
  v71(v62, v68);
  v72 = [v70 meters];
  Measurement<>.converted(to:)();

  Measurement.value.getter();
  v74 = v73;
  v69(v41, v13);
  v127 = v49;
  if (v74 <= 0.0)
  {
    v81 = v41;
    v82 = v69;
    v88 = 1;
    v85 = v157;
    v78 = v158;
    v87 = v142;
    v84 = v141;
  }

  else
  {
    v75 = [v70 meters];
    Measurement<>.converted(to:)();

    Measurement.value.getter();
    v77 = v76;
    v69(v41, v13);
    v78 = v158;
    sub_1002BE370(v63, v158);
    Measurement<>.converted(to:)();
    v69(v78, v13);
    Measurement.value.getter();
    v80 = v79;
    v81 = v41;
    v82 = v69;
    v69(v41, v13);
    v83 = v121;
    sub_1001E88AC(v121, v77, v80);
    v84 = v141;
    v85 = v157;
    v86 = v83;
    v87 = v142;
    (*(v141 + 32))(v157, v86, v142);
    v88 = 0;
  }

  (*(v84 + 56))(v85, v88, 1, v87);
  v89 = [objc_opt_self() labelColor];
  result = Color.init(uiColor:)();
  v90 = v140;
  v91 = *(v140 + 16);
  v92 = v139;
  v93 = v138;
  if (!v91)
  {
    goto LABEL_12;
  }

  v142 = result;
  v94 = v126;
  v141 = *(v125 + 72);
  v138(v78, v126 + v141 * (v91 - 1) + *(v139 + 20), v13);
  v95 = [v152 meters];
  Measurement<>.converted(to:)();

  v82(v78, v13);
  Measurement.value.getter();
  v97 = v96;
  result = (v82)(v81, v13);
  v98 = *(v90 + 16);
  if (v98)
  {
    v93(v78, v94 + (v98 - 1) * v141 + *(v92 + 24), v13);
    Measurement<>.converted(to:)();
    v82(v78, v13);
    Measurement.value.getter();
    v100 = v99;
    v82(v81, v13);
    LocalizedStringKey.init(stringLiteral:)();
    v164[0] = v97;
    static PlottableValue.value(_:_:)();

    LocalizedStringKey.init(stringLiteral:)();
    v164[0] = v100;
    static PlottableValue.value(_:_:)();

    v101 = v155;
    v102 = PointMark.init<A, B>(x:y:)();
    __chkstk_darwin(v102);
    v103 = v142;
    *(&v120 - 2) = v151;
    *(&v120 - 1) = v103;
    v104 = v156;
    ChartContent.symbol<A>(symbol:)();

    v136(v101, v104);
    v105 = v128;
    v106 = *(v128 + 16);
    v107 = v147;
    v108 = v129;
    v106(v147, v145, v129);
    v164[0] = v107;
    v109 = v148;
    v106(v148, v146, v108);
    v164[1] = v109;
    v110 = v131;
    v111 = *(v131 + 16);
    v112 = v150;
    v113 = v132;
    v111(v150, v159, v132);
    v164[2] = v112;
    v114 = v157;
    v115 = v133;
    sub_1000D2DFC(v157, v133, &qword_101911B70);
    v164[3] = v115;
    v116 = v130;
    v117 = v149;
    v111(v130, v149, v113);
    v164[4] = v116;
    sub_1001E6F64(v164, v134);
    v118 = *(v110 + 8);
    v118(v117, v113);
    sub_100024F64(v114, &qword_101911B70);
    v118(v159, v113);
    v119 = *(v105 + 8);
    v119(v146, v108);
    v119(v145, v108);
    v118(v116, v113);
    sub_100024F64(v115, &qword_101911B70);
    v118(v150, v113);
    v119(v148, v108);
    return (v119)(v147, v108);
  }

LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_1001EA350@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v12 = a1;
  v14 = a2;
  v3 = sub_1000CE6B8(&qword_10191B3A0);
  v13 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v12 - v4;
  v6 = sub_1000CE6B8(&qword_1019119B0);
  __chkstk_darwin(v6 - 8);
  __chkstk_darwin(v7);
  LocalizedStringKey.init(stringLiteral:)();
  v15 = -*(a1 + *(type metadata accessor for MapsElevationChart() + 20));
  static PlottableValue.value(_:_:)();

  LocalizedStringKey.init(stringLiteral:)();
  type metadata accessor for MapsElevationChartViewModel(0);
  v8 = [objc_opt_self() meters];
  Measurement<>.converted(to:)();

  Measurement.value.getter();
  v10 = v9;
  (*(v13 + 8))(v5, v3);
  v15 = v10;
  static PlottableValue.value(_:_:)();

  return RectangleMark.init<A>(xStart:xEnd:yStart:yEnd:)();
}

uint64_t sub_1001EA614@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v17[1] = a2;
  v3 = sub_1000CE6B8(&qword_10191B3A0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v17 - v5;
  v7 = sub_1000CE6B8(&qword_1019119B0);
  __chkstk_darwin(v7 - 8);
  v17[0] = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v17[2] = LocalizedStringKey.init(stringLiteral:)();
  type metadata accessor for MapsElevationChartViewModel(0);
  v10 = [objc_opt_self() meters];
  Measurement<>.converted(to:)();

  Measurement.value.getter();
  v12 = v11;
  (*(v4 + 8))(v6, v3);
  v18 = v12;
  static PlottableValue.value(_:_:)();

  LocalizedStringKey.init(stringLiteral:)();
  v13 = sub_1002BE280();
  v14 = v13[2];
  if (v14)
  {
    v15 = *&v13[v14 + 3];

    v18 = v15 + *(a1 + *(type metadata accessor for MapsElevationChart() + 20));
    static PlottableValue.value(_:_:)();

    return RectangleMark.init<A>(xStart:xEnd:yStart:yEnd:)();
  }

  else
  {

    __break(1u);
  }

  return result;
}

uint64_t sub_1001EA8F8(uint64_t a1)
{
  v2 = type metadata accessor for AxisMarkPosition();
  __chkstk_darwin(v2 - 8);
  v3 = type metadata accessor for AxisMarkPreset();
  __chkstk_darwin(v3 - 8);
  v4 = type metadata accessor for MapsElevationChart();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4 - 8);
  sub_1000CE6B8(&qword_101911C58);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1011E1D60;
  *(v7 + 32) = 0;
  v8 = sub_1002BE280();
  v9 = v8[2];
  if (v9)
  {
    v10 = v8[v9 + 3];

    *(v7 + 40) = v10;
    sub_1001ED660(a1, v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for MapsElevationChart);
    v11 = (*(v5 + 80) + 16) & ~*(v5 + 80);
    v12 = swift_allocObject();
    sub_1001ECE0C(v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v12 + v11);
    static AxisMarkPreset.automatic.getter();
    static AxisMarkPosition.automatic.getter();
    sub_1000CE6B8(&qword_101911C10);
    v13 = sub_1000D6664(&qword_101911BD8);
    v14 = sub_1000414C8(&qword_101911BE0, &qword_101911BD8);
    v16[0] = v13;
    v16[1] = v14;
    swift_getOpaqueTypeConformance2();
    return AxisMarks.init<A>(preset:position:values:content:)();
  }

  else
  {

    __break(1u);
  }

  return result;
}

uint64_t sub_1001EABCC@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v11[2] = a1;
  v11[3] = a2;
  v2 = type metadata accessor for AxisValueLabelOrientation();
  __chkstk_darwin(v2 - 8);
  v3 = type metadata accessor for AxisValueLabelCollisionResolution();
  __chkstk_darwin(v3 - 8);
  v4 = sub_1000CE6B8(&qword_101911BD8);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v11 - v6;
  if (AxisValue.index.getter())
  {
    v8 = static UnitPoint.topTrailing.getter();
  }

  else
  {
    v8 = static UnitPoint.topLeading.getter();
  }

  v11[1] = v11;
  __chkstk_darwin(v8);
  static AxisValueLabelCollisionResolution.automatic.getter();
  static AxisValueLabelOrientation.automatic.getter();
  v10[2] = sub_1000CE6B8(&qword_101911C20);
  v10[3] = sub_1001EE64C();
  v10[0] = sub_1001EE8EC;
  v10[1] = v10;
  AxisValueLabel.init(centered:anchor:multiLabelAlignment:collisionResolution:offsetsMarks:orientation:horizontalSpacing:verticalSpacing:content:)();
  AxisValue.index.getter();
  sub_1000414C8(&qword_101911BE0, &qword_101911BD8);
  AxisMark.offset(x:y:)();
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_1001EAE8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v51 = a2;
  v3 = sub_1000CE6B8(&qword_1019109C0);
  __chkstk_darwin(v3 - 8);
  v50 = &v48 - v4;
  v5 = sub_1000CE6B8(&unk_10190D5F0);
  __chkstk_darwin(v5 - 8);
  v7 = &v48 - v6;
  v8 = sub_1000CE6B8(&qword_10191B3A0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v48 - v13;
  v49 = sub_1000CE6B8(&qword_101911C38);
  __chkstk_darwin(v49);
  v16 = &v48 - v15;
  v17 = *(a1 + *(type metadata accessor for MapsElevationChartViewModel(0) + 72));
  result = AxisValue.as<A>(_:)();
  if (v53)
  {
    __break(1u);
  }

  else
  {
    v19 = [objc_opt_self() meters];
    sub_1001ED544();
    Measurement.init(value:unit:)();
    Measurement<>.converted(to:)();
    v20 = *(v9 + 8);
    v20(v11, v8);
    Measurement.value.getter();
    v22 = v21;
    v20(v14, v8);
    v23 = [v17 stringFromValue:sub_1002BD9D0() unit:v22];
    v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v26 = v25;

    v52 = v24;
    v53 = v26;
    static Locale.current.getter();
    v27 = type metadata accessor for Locale();
    (*(*(v27 - 8) + 56))(v7, 0, 1, v27);
    sub_1000E5580();
    v28 = StringProtocol.uppercased(with:)();
    v30 = v29;
    sub_100024F64(v7, &unk_10190D5F0);
    v52 = v28;
    v53 = v30;
    v31 = Text.init<A>(_:)();
    v33 = v32;
    v35 = v34;
    v37 = v36;
    v38 = *(sub_1000CE6B8(&qword_101911C48) + 36);
    v39 = enum case for BlendMode.plusLighter(_:);
    v40 = type metadata accessor for BlendMode();
    (*(*(v40 - 8) + 104))(&v16[v38], v39, v40);
    *v16 = v31;
    *(v16 + 1) = v33;
    v16[16] = v35 & 1;
    *(v16 + 3) = v37;
    static Font.Weight.medium.getter();
    v41 = type metadata accessor for Font.Design();
    v42 = v50;
    (*(*(v41 - 8) + 56))(v50, 1, 1, v41);
    v43 = static Font.system(size:weight:design:)();
    sub_100024F64(v42, &qword_1019109C0);
    KeyPath = swift_getKeyPath();

    v45 = &v16[*(v49 + 36)];
    *v45 = KeyPath;
    v45[1] = v43;
    v46 = static Color.secondary.getter();
    v47 = v51;
    sub_1001EE8F4(v16, v51);
    result = sub_1000CE6B8(&qword_101911C20);
    *(v47 + *(result + 36)) = v46;
  }

  return result;
}

uint64_t sub_1001EB380(uint64_t a1)
{
  v2 = type metadata accessor for AxisMarkPosition();
  __chkstk_darwin(v2 - 8);
  v3 = type metadata accessor for MapsElevationChart();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3 - 8);
  v6 = type metadata accessor for AxisMarkPreset();
  __chkstk_darwin(v6 - 8);
  static AxisMarkPreset.inset.getter();
  sub_1002BDB68();
  sub_1001ED660(a1, &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for MapsElevationChart);
  v7 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v8 = swift_allocObject();
  sub_1001ECE0C(&v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7);
  static AxisMarkPosition.automatic.getter();
  sub_1000CE6B8(&qword_101911BA8);
  sub_1001EE1CC();
  return AxisMarks.init<A>(preset:position:values:content:)();
}

uint64_t sub_1001EB588@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v105 = sub_1000CE6B8(&qword_101911BF8);
  __chkstk_darwin(v105);
  v104 = &v103 - v4;
  v5 = sub_1000CE6B8(&qword_101911BF0);
  __chkstk_darwin(v5 - 8);
  v106 = &v103 - v6;
  v7 = sub_1000CE6B8(&qword_101911BC0);
  __chkstk_darwin(v7 - 8);
  v9 = &v103 - v8;
  v110 = sub_1000CE6B8(&qword_101911C00);
  __chkstk_darwin(v110);
  v109 = &v103 - v10;
  v11 = sub_1000CE6B8(&qword_101911BD0);
  __chkstk_darwin(v11 - 8);
  v111 = &v103 - v12;
  v13 = type metadata accessor for AxisGridLine();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v122 = &v103 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v124 = sub_1000CE6B8(&qword_101911A48);
  v123 = *(v124 - 8);
  __chkstk_darwin(v124);
  v112 = &v103 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v126 = &v103 - v18;
  v117 = sub_1000CE6B8(&qword_101911C08);
  v116 = *(v117 - 8);
  __chkstk_darwin(v117);
  v118 = &v103 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v125 = &v103 - v21;
  v22 = type metadata accessor for AxisValueLabelOrientation();
  __chkstk_darwin(v22 - 8);
  v23 = type metadata accessor for AxisValueLabelCollisionResolution();
  __chkstk_darwin(v23 - 8);
  v114 = sub_1000CE6B8(&qword_101911BD8);
  v113 = *(v114 - 8);
  __chkstk_darwin(v114);
  v25 = &v103 - v24;
  v26 = sub_1000CE6B8(&qword_101911C10);
  v115 = *(v26 - 8);
  __chkstk_darwin(v26);
  v128 = &v103 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v127 = &v103 - v29;
  result = AxisValue.as<A>(_:)();
  if ((BYTE8(v136) & 1) == 0)
  {
    v31 = *&v136;
    v32 = sub_1002BDB68();
    v33 = *(v32 + 16);
    v121 = a2;
    v120 = v13;
    v119 = v14;
    if (v33)
    {
      v34 = *(v32 + 32);

      if (v31 == v34)
      {
        v112 = type metadata accessor for MapsElevationChartViewModel(0);
        v35 = *(v112 + 19);
        v107 = v26;
        v36 = [*(a1 + v35) stringFromValue:sub_1002BD9D0() unit:v31];
        static String._unconditionallyBridgeFromObjectiveC(_:)();

        v37 = static UnitPoint.trailing.getter();
        __chkstk_darwin(v37);
        v108 = v9;
        static AxisValueLabelCollisionResolution.automatic.getter();
        static AxisValueLabelOrientation.automatic.getter();
        v101 = sub_1000CE6B8(&qword_101911C20);
        v102 = sub_1001EE64C();
        v99 = sub_1001EEC0C;
        v100 = &v97;
        v98 = 1;
        v97 = 0;
        AxisValueLabel.init(centered:anchor:multiLabelAlignment:collisionResolution:offsetsMarks:orientation:horizontalSpacing:verticalSpacing:content:)();

        sub_1000414C8(&qword_101911BE0, &qword_101911BD8);
        v38 = v127;
        v39 = v114;
        AxisMark.offset(x:y:)();
        (*(v113 + 8))(v25, v39);
        StrokeStyle.init(lineWidth:lineCap:lineJoin:miterLimit:dash:dashPhase:)();
        v136 = v133;
        v137 = v134;
        v138 = v135;
        v40 = v122;
        AxisGridLine.init(centered:stroke:)();
        v41 = [objc_opt_self() tertiaryLabelColor];
        v129 = Color.init(uiColor:)();
        v42 = v126;
        v43 = v120;
        AxisMark.foregroundStyle<A>(_:)();

        (*(v119 + 8))(v40, v43);
        v129 = v43;
        v130 = &type metadata for Color;
        v131 = &protocol witness table for AxisGridLine;
        v132 = &protocol witness table for Color;
        swift_getOpaqueTypeConformance2();
        v44 = v125;
        v45 = v124;
        AxisMark.offset(x:y:)();
        (*(v123 + 8))(v42, v45);
        v46 = v115;
        v47 = *(v115 + 16);
        v48 = v128;
        v49 = v107;
        v47(v128, v38, v107);
        v50 = v116;
        v51 = *(v116 + 16);
        v52 = v44;
        v53 = v117;
        v51(v118, v52, v117);
        v54 = v109;
        v47(v109, v48, v49);
        v55 = v110;
        v56 = *(v110 + 48);
        v57 = v118;
        v51(&v54[v56], v118, v53);
        v58 = v121;
        v59 = v111;
        (*(v46 + 32))(v111, v54, v49);
        (*(v50 + 32))(v59 + *(v55 + 48), &v54[v56], v53);
        v60 = *(v50 + 8);
        v60(v125, v53);
        v61 = *(v46 + 8);
        v61(v127, v49);
        v60(v57, v53);
        v61(v128, v49);
        v62 = v108;
        sub_1000F11C4(v59, v108, &qword_101911BD0);
        sub_1000CE6B8(&qword_101911C50);
        swift_storeEnumTagMultiPayload();
        v63 = v62;
LABEL_9:
        sub_1000F11C4(v63, v58, &qword_101911BC0);
LABEL_12:
        sub_1000CE6B8(&qword_101911C18);
        return swift_storeEnumTagMultiPayload();
      }
    }

    else
    {
    }

    v64 = sub_1002BDB68();
    v65 = *(v64 + 16);
    if (v65)
    {
      v66 = *(v64 + 8 * v65 + 24);

      if (v31 == v66)
      {
        v125 = type metadata accessor for MapsElevationChartViewModel(0);
        v67 = [*(a1 + *(v125 + 19)) stringFromValue:sub_1002BD9D0() unit:v31];
        static String._unconditionallyBridgeFromObjectiveC(_:)();

        v68 = static UnitPoint.trailing.getter();
        v107 = v26;
        __chkstk_darwin(v68);
        v108 = v9;
        static AxisValueLabelCollisionResolution.automatic.getter();
        static AxisValueLabelOrientation.automatic.getter();
        v101 = sub_1000CE6B8(&qword_101911C20);
        v102 = sub_1001EE64C();
        v99 = sub_1001EE62C;
        v100 = &v97;
        v98 = 1;
        v97 = 0;
        AxisValueLabel.init(centered:anchor:multiLabelAlignment:collisionResolution:offsetsMarks:orientation:horizontalSpacing:verticalSpacing:content:)();

        sub_1000414C8(&qword_101911BE0, &qword_101911BD8);
        v69 = v127;
        v70 = v114;
        AxisMark.offset(x:y:)();
        (*(v113 + 8))(v25, v70);
        StrokeStyle.init(lineWidth:lineCap:lineJoin:miterLimit:dash:dashPhase:)();
        v136 = v133;
        v137 = v134;
        v138 = v135;
        v71 = v122;
        AxisGridLine.init(centered:stroke:)();
        v72 = [objc_opt_self() tertiaryLabelColor];
        v129 = Color.init(uiColor:)();
        v73 = v126;
        v74 = v120;
        AxisMark.foregroundStyle<A>(_:)();

        (*(v119 + 8))(v71, v74);
        v75 = v115;
        v76 = *(v115 + 16);
        v77 = v128;
        v78 = v107;
        v76(v128, v69, v107);
        v79 = v123;
        v80 = *(v123 + 16);
        v81 = v73;
        v82 = v124;
        v80(v112, v81, v124);
        v83 = v104;
        v76(v104, v77, v78);
        v84 = v105;
        v85 = *(v105 + 48);
        v86 = v112;
        v80(&v83[v85], v112, v82);
        v87 = v106;
        (*(v75 + 32))(v106, v83, v78);
        (*(v79 + 32))(v87 + *(v84 + 48), &v83[v85], v82);
        v88 = *(v79 + 8);
        v88(v126, v82);
        v89 = *(v75 + 8);
        v89(v127, v78);
        v88(v86, v82);
        v89(v128, v78);
        v90 = v108;
        sub_1000F11C4(v87, v108, &qword_101911BF0);
        sub_1000CE6B8(&qword_101911C50);
        swift_storeEnumTagMultiPayload();
        v63 = v90;
        v58 = v121;
        goto LABEL_9;
      }
    }

    else
    {
    }

    type metadata accessor for MapsElevationChartViewModel(0);
    StrokeStyle.init(lineWidth:lineCap:lineJoin:miterLimit:dash:dashPhase:)();
    v136 = v133;
    v137 = v134;
    v138 = v135;
    v91 = v122;
    AxisGridLine.init(centered:stroke:)();
    v92 = [objc_opt_self() tertiaryLabelColor];
    v129 = Color.init(uiColor:)();
    v93 = v126;
    v94 = v120;
    AxisMark.foregroundStyle<A>(_:)();

    (*(v119 + 8))(v91, v94);
    v129 = v94;
    v130 = &type metadata for Color;
    v131 = &protocol witness table for AxisGridLine;
    v132 = &protocol witness table for Color;
    swift_getOpaqueTypeConformance2();
    v95 = v125;
    v96 = v124;
    AxisMark.offset(x:y:)();
    (*(v123 + 8))(v93, v96);
    (*(v116 + 32))(v121, v95, v117);
    goto LABEL_12;
  }

  __break(1u);
  return result;
}

uint64_t sub_1001EC6D8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  sub_1001E85F8(a1, a2, a3);
  v4 = [objc_opt_self() tertiaryLabelColor];
  v5 = Color.init(uiColor:)();
  result = sub_1000CE6B8(&qword_101911C20);
  *(a3 + *(result + 36)) = v5;
  return result;
}

__n128 sub_1001EC748@<Q0>(uint64_t a1@<X8>)
{
  v3 = static VerticalAlignment.center.getter();
  sub_1001DFC68(v1, v6);
  *&v5[55] = v6[3];
  *&v5[39] = v6[2];
  *&v5[23] = v6[1];
  *&v5[7] = v6[0];
  *(a1 + 33) = *&v5[16];
  result = *&v5[32];
  *(a1 + 49) = *&v5[32];
  *(a1 + 65) = *&v5[48];
  *a1 = v3;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 80) = *&v5[63];
  *(a1 + 17) = *v5;
  return result;
}

unint64_t sub_1001EC7D8()
{
  result = qword_101911890;
  if (!qword_101911890)
  {
    sub_1000D6664(&qword_101911888);
    sub_1000414C8(&qword_101911898, &qword_1019118A0);
    sub_1001ED73C(&qword_101909FE0, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101911890);
  }

  return result;
}

unint64_t sub_1001EC8C0()
{
  result = qword_1019118A8;
  if (!qword_1019118A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019118A8);
  }

  return result;
}

unint64_t sub_1001EC914()
{
  result = qword_1019118B0;
  if (!qword_1019118B0)
  {
    sub_1000D6664(&qword_101911878);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019118B0);
  }

  return result;
}

uint64_t sub_1001EC990(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 0xDu)
  {
  }

  return result;
}

uint64_t sub_1001EC9A8(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 0xDu)
  {
  }

  return result;
}

unint64_t sub_1001EC9C0()
{
  result = qword_1019118D8;
  if (!qword_1019118D8)
  {
    sub_1000D6664(&qword_1019118D0);
    sub_1000D6664(&qword_1019118E0);
    sub_1000414C8(&qword_1019118E8, &qword_1019118E0);
    sub_1001EC8C0();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019118D8);
  }

  return result;
}

unint64_t sub_1001ECAD0()
{
  result = qword_101911938;
  if (!qword_101911938)
  {
    sub_1000D6664(&qword_101911848);
    sub_1000D6664(&qword_101911940);
    sub_1000D6664(&qword_101911878);
    sub_1001ECBF0();
    sub_1001EC914();
    swift_getOpaqueTypeConformance2();
    sub_1000414C8(&qword_101911980, &qword_101911988);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101911938);
  }

  return result;
}

unint64_t sub_1001ECBF0()
{
  result = qword_101911948;
  if (!qword_101911948)
  {
    sub_1000D6664(&qword_101911940);
    sub_1001ECC7C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101911948);
  }

  return result;
}

unint64_t sub_1001ECC7C()
{
  result = qword_101911950;
  if (!qword_101911950)
  {
    sub_1000D6664(&qword_101911958);
    sub_1000D6664(&qword_101911960);
    sub_1000D6664(&qword_101911968);
    sub_1000D6664(&qword_101911970);
    sub_1000414C8(&qword_101911978, &qword_101911970);
    sub_1001EC8C0();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101911950);
  }

  return result;
}

uint64_t sub_1001ECE0C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MapsElevationChart();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001ECE88@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for MapsElevationChart() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_1001E2ED0(a1, v6, a2);
}

uint64_t sub_1001ECF50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for MapsElevationChart() - 8);
  v6 = (*(v5 + 80) + 17) & ~*(v5 + 80);
  v7 = *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = *(v2 + 16);

  return sub_1001E5008(a1, v8, v2 + v6, v7, a2);
}

unint64_t sub_1001ED000()
{
  result = qword_1019119F0;
  if (!qword_1019119F0)
  {
    sub_1000D6664(&qword_1019119E8);
    type metadata accessor for AxisGridLine();
    swift_getOpaqueTypeConformance2();
    sub_1001ED0D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019119F0);
  }

  return result;
}

unint64_t sub_1001ED0D8()
{
  result = qword_1019119F8;
  if (!qword_1019119F8)
  {
    sub_1000D6664(&qword_101911A00);
    sub_1001ED15C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019119F8);
  }

  return result;
}

unint64_t sub_1001ED15C()
{
  result = qword_101911A08;
  if (!qword_101911A08)
  {
    sub_1000D6664(&qword_101911A10);
    sub_1001ED274();
    sub_1000D6664(&qword_101911A28);
    sub_1000414C8(&qword_101911A30, &qword_101911A28);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101911A08);
  }

  return result;
}

unint64_t sub_1001ED274()
{
  result = qword_101911A18;
  if (!qword_101911A18)
  {
    sub_1000D6664(&qword_101911A20);
    sub_1000D6664(&qword_101911A28);
    sub_1000414C8(&qword_101911A30, &qword_101911A28);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101911A18);
  }

  return result;
}

uint64_t sub_1001ED37C@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MapsElevationChart() - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = v4 + *(v3 + 64);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + v5);
  v9 = *(v1 + (v5 & 0xFFFFFFFFFFFFFFF8) + 8);

  return sub_1001E3E70(v6, v7, v1 + v4, v8, v9, a1);
}

unint64_t sub_1001ED430()
{
  result = qword_101911A68;
  if (!qword_101911A68)
  {
    sub_1000D6664(&qword_101911A60);
    sub_1000D6664(&qword_101911A70);
    type metadata accessor for AxisGridLine();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1001ED0D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101911A68);
  }

  return result;
}

unint64_t sub_1001ED544()
{
  result = qword_10191B3B0;
  if (!qword_10191B3B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10191B3B0);
  }

  return result;
}

unint64_t sub_1001ED598()
{
  result = qword_101911A90;
  if (!qword_101911A90)
  {
    sub_1000D6664(&qword_101911A88);
    type metadata accessor for BarMark();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101911A90);
  }

  return result;
}

uint64_t sub_1001ED660(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1001ED6C8(uint64_t a1)
{
  v2 = type metadata accessor for MapsElevationChartViewModel.ElevationDatum(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1001ED73C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1001ED78C()
{
  result = qword_101911AB8;
  if (!qword_101911AB8)
  {
    sub_1000D6664(&qword_101911AB0);
    sub_1001ED810();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101911AB8);
  }

  return result;
}

unint64_t sub_1001ED810()
{
  result = qword_101911AC0;
  if (!qword_101911AC0)
  {
    sub_1000D6664(&qword_101911AC8);
    sub_1000D6664(&qword_101911AD0);
    type metadata accessor for AreaMark();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1000D6664(&qword_101911AD8);
    sub_1000D6664(&qword_101911AE0);
    type metadata accessor for LineMark();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101911AC0);
  }

  return result;
}

unint64_t sub_1001EDAA0()
{
  result = qword_101911B08;
  if (!qword_101911B08)
  {
    sub_1000D6664(&qword_101911B00);
    sub_1000D6664(&qword_101911B10);
    type metadata accessor for RectangleMark();
    sub_1001EDBF0();
    swift_getOpaqueTypeConformance2();
    type metadata accessor for PointMark();
    sub_1000D6664(&qword_101911B48);
    sub_1001EDEC8();
    swift_getOpaqueTypeConformance2();
    sub_1001EDF80();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101911B08);
  }

  return result;
}

unint64_t sub_1001EDBF0()
{
  result = qword_101911B18;
  if (!qword_101911B18)
  {
    sub_1000D6664(&qword_101911B10);
    sub_1001EDCD4();
    sub_1000D6664(&qword_101911B30);
    sub_1001EDDD8();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101911B18);
  }

  return result;
}

unint64_t sub_1001EDCD4()
{
  result = qword_101911B20;
  if (!qword_101911B20)
  {
    sub_1000D6664(&qword_101911B28);
    sub_1000D6664(&qword_101911AD0);
    type metadata accessor for AreaMark();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101911B20);
  }

  return result;
}

unint64_t sub_1001EDDD8()
{
  result = qword_101911B38;
  if (!qword_101911B38)
  {
    sub_1000D6664(&qword_101911B30);
    sub_1000D6664(&qword_101911B40);
    type metadata accessor for LineMark();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101911B38);
  }

  return result;
}

unint64_t sub_1001EDEC8()
{
  result = qword_101911B50;
  if (!qword_101911B50)
  {
    sub_1000D6664(&qword_101911B48);
    sub_1000414C8(&qword_101911B58, &qword_101911B60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101911B50);
  }

  return result;
}

unint64_t sub_1001EDF80()
{
  result = qword_101911B68;
  if (!qword_101911B68)
  {
    sub_1000D6664(&qword_101911B70);
    type metadata accessor for PointMark();
    sub_1000D6664(&qword_101911B78);
    sub_1001EE060();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101911B68);
  }

  return result;
}

unint64_t sub_1001EE060()
{
  result = qword_101911B80;
  if (!qword_101911B80)
  {
    sub_1000D6664(&qword_101911B78);
    sub_1001EE0EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101911B80);
  }

  return result;
}

unint64_t sub_1001EE0EC()
{
  result = qword_101911B88;
  if (!qword_101911B88)
  {
    sub_1000D6664(&qword_101911B90);
    sub_1000414C8(&qword_101911B98, &qword_101911BA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101911B88);
  }

  return result;
}

unint64_t sub_1001EE1CC()
{
  result = qword_101911BB0;
  if (!qword_101911BB0)
  {
    sub_1000D6664(&qword_101911BA8);
    sub_1001EE2E0();
    sub_1000D6664(&qword_101911A48);
    type metadata accessor for AxisGridLine();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101911BB0);
  }

  return result;
}

unint64_t sub_1001EE2E0()
{
  result = qword_101911BB8;
  if (!qword_101911BB8)
  {
    sub_1000D6664(&qword_101911BC0);
    sub_1001EE36C();
    sub_1001EE4E4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101911BB8);
  }

  return result;
}

unint64_t sub_1001EE36C()
{
  result = qword_101911BC8;
  if (!qword_101911BC8)
  {
    sub_1000D6664(&qword_101911BD0);
    sub_1000D6664(&qword_101911BD8);
    sub_1000414C8(&qword_101911BE0, &qword_101911BD8);
    swift_getOpaqueTypeConformance2();
    sub_1000D6664(&qword_101911A48);
    type metadata accessor for AxisGridLine();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101911BC8);
  }

  return result;
}

unint64_t sub_1001EE4E4()
{
  result = qword_101911BE8;
  if (!qword_101911BE8)
  {
    sub_1000D6664(&qword_101911BF0);
    sub_1000D6664(&qword_101911BD8);
    sub_1000414C8(&qword_101911BE0, &qword_101911BD8);
    swift_getOpaqueTypeConformance2();
    type metadata accessor for AxisGridLine();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101911BE8);
  }

  return result;
}

unint64_t sub_1001EE64C()
{
  result = qword_101911C28;
  if (!qword_101911C28)
  {
    sub_1000D6664(&qword_101911C20);
    sub_1001EE704();
    sub_1000414C8(&unk_1019105B0, &qword_10190C5B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101911C28);
  }

  return result;
}

unint64_t sub_1001EE704()
{
  result = qword_101911C30;
  if (!qword_101911C30)
  {
    sub_1000D6664(&qword_101911C38);
    sub_1001EE7BC();
    sub_1000414C8(&qword_10190C628, &qword_10190FF20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101911C30);
  }

  return result;
}

unint64_t sub_1001EE7BC()
{
  result = qword_101911C40;
  if (!qword_101911C40)
  {
    sub_1000D6664(&qword_101911C48);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101911C40);
  }

  return result;
}

uint64_t sub_1001EE858(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for MapsElevationChart() - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

uint64_t sub_1001EE8F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000CE6B8(&qword_101911C38);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001EE99C()
{
  v1 = *(type metadata accessor for MapsElevationChart() - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = v0 + v3;

  v6 = type metadata accessor for MapsElevationChartViewModel(0);
  v7 = v6[11];
  v8 = sub_1000CE6B8(&qword_10191B3A0);
  (*(*(v8 - 8) + 8))(v5 + v7, v8);

  return _swift_deallocObject(v0, v4 + 16, v2 | 7);
}

uint64_t sub_1001EEB38(uint64_t a1, uint64_t (*a2)(uint64_t, unint64_t, uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for MapsElevationChart() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = (v2 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v7 = *v6;
  v8 = v6[1];

  return a2(a1, v2 + v5, v7, v8);
}

uint64_t sub_1001EEE3C()
{
  v0 = type metadata accessor for CustomRouteCellViewModel();
  __chkstk_darwin(v0 - 8);
  if (qword_101906768 != -1)
  {
    swift_once();
  }

  v1.super.isa = qword_1019600D8;
  v2._countAndFlagsBits = 0xD000000000000015;
  v7._object = 0x8000000101223170;
  v3._object = 0x8000000101223130;
  v2._object = 0x8000000101223150;
  v3._countAndFlagsBits = 0xD00000000000001DLL;
  v7._countAndFlagsBits = 0xD00000000000001DLL;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v3, 0, qword_1019600D8, v2, v7);
  v8._object = 0x8000000101223200;
  v4._countAndFlagsBits = 0xD000000000000024;
  v4._object = 0x8000000101223190;
  v5._countAndFlagsBits = 0xD000000000000039;
  v5._object = 0x80000001012231C0;
  v8._countAndFlagsBits = 0xD000000000000023;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v4, 0, v1, v5, v8);
  CustomRouteCellViewModel.init(primaryText:secondaryText:)();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  return CustomRouteCell.init(viewModel:useCompactLayout:tapHandler:useUIKitSizingForLabels:)();
}

void sub_1001EF020()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = swift_unknownObjectWeakLoadStrong();
    if (v2)
    {
      [v2 didTapCustomRouteCreationButtonForCell:v1];

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

id sub_1001EF0A8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MapsCustomRouteCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1001EF110()
{
  v1 = v0;
  v2 = sub_1000CE6B8(&qword_101911D00);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v7[-v4];
  swift_unknownObjectWeakAssign();
  v8 = v1;
  type metadata accessor for CustomRouteCell();
  sub_1001EF29C();
  UIHostingConfiguration<>.init(content:)();
  static Edge.Set.all.getter();
  static MapsDesignConstants.Spacing.contentHorizontalPadding.getter();
  static MapsDesignConstants.Spacing.contentHorizontalPadding.getter();
  v9[3] = v2;
  v9[4] = sub_1001EF2F4();
  sub_10001A848(v9);
  UIHostingConfiguration.margins(_:_:)();
  (*(v3 + 8))(v5, v2);
  return UICollectionViewCell.contentConfiguration.setter();
}

unint64_t sub_1001EF29C()
{
  result = qword_101911D08;
  if (!qword_101911D08)
  {
    type metadata accessor for CustomRouteCell();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101911D08);
  }

  return result;
}

unint64_t sub_1001EF2F4()
{
  result = qword_101911D10;
  if (!qword_101911D10)
  {
    sub_1000D6664(&qword_101911D00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101911D10);
  }

  return result;
}

unint64_t sub_1001EF374()
{
  result = qword_101911D20;
  if (!qword_101911D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101911D20);
  }

  return result;
}

uint64_t sub_1001EF3C8@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t sub_1001EF3D4(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a2[2];
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  return sub_1001F02A0(v2, v3);
}

Swift::Int sub_1001EF448()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_1001EF49C()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1001EF4E4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2)
    {
      return 1;
    }

    v3 = a2;
    if (a1 == a2)
    {
      return 1;
    }

    v4 = 0;
    v25 = a1;
    while (1)
    {
      v5 = *(a1 + v4 + 48);
      v6 = *(a1 + v4 + 56);
      v8 = *(a1 + v4 + 64);
      v7 = *(a1 + v4 + 72);
      v28 = *(a1 + v4 + 80);
      v35 = *(a1 + v4 + 88);
      v34 = *(a1 + v4 + 96);
      v32 = *(a1 + v4 + 112);
      v9 = *(v3 + v4 + 48);
      v10 = *(v3 + v4 + 56);
      v11 = *(v3 + v4 + 64);
      v12 = *(v3 + v4 + 72);
      v13 = *(v3 + v4 + 88);
      v27 = *(v3 + v4 + 80);
      v33 = *(v3 + v4 + 96);
      v29 = *(v3 + v4 + 104);
      v30 = *(a1 + v4 + 104);
      v31 = *(v3 + v4 + 112);
      if (*(a1 + v4 + 32) != *(v3 + v4 + 32) || *(a1 + v4 + 40) != *(v3 + v4 + 40))
      {
        v24 = v4;
        v14 = *(v3 + v4 + 64);
        v15 = v8;
        v16 = v12;
        v17 = v13;
        v18 = v7;
        v19 = _stringCompareWithSmolCheck(_:_:expecting:)();
        v7 = v18;
        v13 = v17;
        v12 = v16;
        v8 = v15;
        v11 = v14;
        v4 = v24;
        if ((v19 & 1) == 0)
        {
          break;
        }
      }

      if (v6)
      {
        if (!v10)
        {
          return 0;
        }

        if (v5 != v9 || v6 != v10)
        {
          v20 = v7;
          v21 = _stringCompareWithSmolCheck(_:_:expecting:)();
          v7 = v20;
          if ((v21 & 1) == 0)
          {
            return 0;
          }
        }
      }

      else if (v10)
      {
        return 0;
      }

      if ((v8 != v11 || v7 != v12) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        return 0;
      }

      if (v35)
      {
        if (!v13)
        {
          return 0;
        }

        if (v28 == v27 && v35 == v13)
        {
          result = 0;
        }

        else
        {
          if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
          {
            return 0;
          }

          v23 = _stringCompareWithSmolCheck(_:_:expecting:)();
          result = 0;
          if ((v23 & 1) == 0)
          {
            return result;
          }
        }
      }

      else
      {
        result = 0;
        if (v13)
        {
          return result;
        }
      }

      if (v34 != v33 || v32 != v31)
      {
        return result;
      }

      if (([v30 isEqual:v29] & 1) == 0)
      {
        return 0;
      }

      v4 += 88;
      --v2;
      a1 = v25;
      v3 = a2;
      if (!v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_1001EF72C(uint64_t a1, uint64_t a2)
{
  v4 = a1 >> 62;
  if (a1 >> 62)
  {
    v5 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (a2 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    if (v5 == result)
    {
      goto LABEL_5;
    }

    return 0;
  }

  result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5 != result)
  {
    return 0;
  }

LABEL_5:
  if (!v5)
  {
    return 1;
  }

  v7 = a1 & 0xFFFFFFFFFFFFFF8;
  v8 = (a1 & 0xFFFFFFFFFFFFFF8) + 32;
  if (a1 < 0)
  {
    v9 = a1;
  }

  else
  {
    v9 = a1 & 0xFFFFFFFFFFFFFF8;
  }

  if (v4)
  {
    v8 = v9;
  }

  v10 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
  if (a2 < 0)
  {
    v11 = a2;
  }

  else
  {
    v11 = a2 & 0xFFFFFFFFFFFFFF8;
  }

  if (a2 >> 62)
  {
    v10 = v11;
  }

  if (v8 == v10)
  {
    return 1;
  }

  if ((v5 & 0x8000000000000000) != 0)
  {
    goto LABEL_55;
  }

  v22 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
LABEL_56:
    result = specialized _ArrayBuffer._getElementSlowPath(_:)();
    v12 = result;
  }

  else
  {
    if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_59;
    }

    v12 = *(a1 + 32);
  }

  v21 = a2 & 0xC000000000000001;
  if ((a2 & 0xC000000000000001) != 0)
  {
    v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_24;
  }

  if (*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v13 = *(a2 + 32);

LABEL_24:
    if (sub_10021F254(v12 + OBJC_IVAR____TtC4Maps26PlaceSummaryImageViewModel_type, v13 + OBJC_IVAR____TtC4Maps26PlaceSummaryImageViewModel_type))
    {
      v20 = v7;
      v14 = 5;
      do
      {
        v15 = *(v12 + OBJC_IVAR____TtC4Maps26PlaceSummaryImageViewModel_cornerRadius);
        v7 = *(v12 + OBJC_IVAR____TtC4Maps26PlaceSummaryImageViewModel_cornerRadius + 8);

        v16 = *(v13 + OBJC_IVAR____TtC4Maps26PlaceSummaryImageViewModel_cornerRadius);
        v17 = *(v13 + OBJC_IVAR____TtC4Maps26PlaceSummaryImageViewModel_cornerRadius + 8);

        if (v7)
        {
          if (!v17)
          {
            return 0;
          }
        }

        else
        {
          if (v15 == v16)
          {
            v18 = v17;
          }

          else
          {
            v18 = 1;
          }

          if (v18)
          {
            return 0;
          }
        }

        if (1 - v5 + v14 == 5)
        {
          return 1;
        }

        v19 = v14 - 4;
        if (v14 - 4 >= v5)
        {
          __break(1u);
LABEL_52:
          __break(1u);
LABEL_53:
          __break(1u);
LABEL_54:
          __break(1u);
LABEL_55:
          __break(1u);
          goto LABEL_56;
        }

        if (__OFADD__(v19, 1))
        {
          goto LABEL_52;
        }

        if (v22)
        {
          v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          if (v21)
          {
            goto LABEL_26;
          }
        }

        else
        {
          if (v19 >= *(v20 + 16))
          {
            goto LABEL_53;
          }

          v12 = *(a1 + 8 * v14);

          if (v21)
          {
LABEL_26:
            v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            goto LABEL_27;
          }
        }

        if (v19 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_54;
        }

        v13 = *(a2 + 8 * v14);

LABEL_27:
        ++v14;
      }

      while ((sub_10021F254(v12 + OBJC_IVAR____TtC4Maps26PlaceSummaryImageViewModel_type, v13 + OBJC_IVAR____TtC4Maps26PlaceSummaryImageViewModel_type) & 1) != 0);
    }

    return 0;
  }

LABEL_59:
  __break(1u);
  return result;
}

void sub_1001EF9E8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16) && v2 && a1 != a2)
  {
    sub_100014C84(0, &qword_10190B2D0);
    v5 = (a2 + 56);
    v6 = (a1 + 56);
    while (v2)
    {
      v19 = v2;
      v7 = *(v6 - 2);
      v8 = *(v6 - 1);
      v9 = *v6;
      v11 = *(v5 - 3);
      v10 = *(v5 - 2);
      v12 = *(v5 - 1);
      v13 = *v5;
      v14 = *(v6 - 3);

      v15 = v11;
      v16 = v10;
      v17 = v15;

      if ((static NSObject.== infix(_:_:)() & 1) == 0 || (sub_1001EFBCC(v7, v16) & 1) == 0 || (sub_1001EFDC0(v8, v12) & 1) == 0)
      {

        return;
      }

      v18 = sub_100226008(v9, v13);

      if (v18)
      {
        v2 = v19 - 1;
        v5 += 4;
        v6 += 4;
        if (v19 != 1)
        {
          continue;
        }
      }

      return;
    }

    __break(1u);
  }
}

uint64_t sub_1001EFBCC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
LABEL_16:
    v5 = 0;
    return v5 & 1;
  }

  if (v2 && a1 != a2)
  {
    v3 = a1 + 32;
    v4 = a2 + 32;
    sub_100014C84(0, &qword_10190B2D0);
    while (1)
    {
      sub_100098118(v3, &v20);
      sub_100098118(v4, &v18);
      if ((static NSObject.== infix(_:_:)() & 1) == 0)
      {
        break;
      }

      sub_10005EB40(&v21, v14);
      sub_1000CE6B8(&unk_101911D30);
      if (!swift_dynamicCast())
      {
        v13 = 0;
        v11 = 0u;
        v12 = 0u;
        v6 = &v11;
LABEL_14:
        sub_10010EA94(v6);
        break;
      }

      v16[0] = v11;
      v16[1] = v12;
      v17 = v13;
      sub_10005EB40(&v19, &v11);
      if ((swift_dynamicCast() & 1) == 0)
      {
        sub_10005BF8C(v16);
        v8 = 0u;
        v9 = 0u;
        v10 = 0;
        v6 = &v8;
        goto LABEL_14;
      }

      v14[0] = v8;
      v14[1] = v9;
      v15 = v10;
      v5 = static AnyHashable.== infix(_:_:)();
      sub_10005BF8C(v14);
      sub_10005BF8C(v16);
      sub_10019D044(&v18);
      sub_10019D044(&v20);
      if (v5)
      {
        v3 += 48;
        v4 += 48;
        if (--v2)
        {
          continue;
        }
      }

      return v5 & 1;
    }

    sub_10019D044(&v18);
    sub_10019D044(&v20);
    goto LABEL_16;
  }

  v5 = 1;
  return v5 & 1;
}

uint64_t sub_1001EFDC0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
LABEL_19:
    v5 = 0;
    return v5 & 1;
  }

  if (v2 && a1 != a2)
  {
    v3 = a1 + 32;
    v4 = a2 + 32;
    sub_100014C84(0, &qword_10190B2D0);
    while (1)
    {
      sub_10019CEEC(v3, v20);
      sub_10019CEEC(v4, v18);
      if ((static NSObject.== infix(_:_:)() & 1) == 0 || (v20[1] != v18[1] || v20[2] != v18[2]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        break;
      }

      sub_10005EB40(&v21, v14);
      sub_1000CE6B8(&unk_101911D40);
      if (!swift_dynamicCast())
      {
        v13 = 0;
        v11 = 0u;
        v12 = 0u;
        v6 = &v11;
LABEL_17:
        sub_10010EA94(v6);
        break;
      }

      v16[0] = v11;
      v16[1] = v12;
      v17 = v13;
      sub_10005EB40(&v19, &v11);
      if ((swift_dynamicCast() & 1) == 0)
      {
        sub_10005BF8C(v16);
        v8 = 0u;
        v9 = 0u;
        v10 = 0;
        v6 = &v8;
        goto LABEL_17;
      }

      v14[0] = v8;
      v14[1] = v9;
      v15 = v10;
      v5 = static AnyHashable.== infix(_:_:)();
      sub_10005BF8C(v14);
      sub_10005BF8C(v16);
      sub_10019CF9C(v18);
      sub_10019CF9C(v20);
      if (v5)
      {
        v3 += 64;
        v4 += 64;
        if (--v2)
        {
          continue;
        }
      }

      return v5 & 1;
    }

    sub_10019CF9C(v18);
    sub_10019CF9C(v20);
    goto LABEL_19;
  }

  v5 = 1;
  return v5 & 1;
}

uint64_t sub_1001EFFD8(uint64_t a1, uint64_t a2)
{
  v34 = type metadata accessor for UUID();
  v4 = *(v34 - 8);
  __chkstk_darwin(v34);
  v33 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v32 = &v28 - v7;
  v8 = type metadata accessor for PlaceSummaryViewModelUnit(0) - 8;
  __chkstk_darwin(v8);
  v31 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = &v28 - v12;
  v14 = *(a1 + 16);
  if (v14 != *(a2 + 16))
  {
    v23 = 0;
    return v23 & 1;
  }

  if (!v14 || a1 == a2)
  {
    v23 = 1;
    return v23 & 1;
  }

  v15 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v16 = a1 + v15;
  v17 = a2 + v15;
  v29 = *(v11 + 72);
  v30 = v4 + 8;
  v18 = (v4 + 8);
  while (1)
  {
    result = sub_1001F1300(v16, v13, type metadata accessor for PlaceSummaryViewModelUnit);
    if (!v14)
    {
      break;
    }

    v35 = v14;
    v20 = v31;
    sub_1001F1300(v17, v31, type metadata accessor for PlaceSummaryViewModelUnit);
    v21 = v32;
    sub_100221080(v32);
    v22 = v33;
    sub_100221080(v33);
    v23 = static UUID.== infix(_:_:)();
    v24 = v13;
    v25 = *v18;
    v26 = v22;
    v27 = v34;
    (*v18)(v26, v34);
    v25(v21, v27);
    v13 = v24;
    sub_1001F1368(v20, type metadata accessor for PlaceSummaryViewModelUnit);
    sub_1001F1368(v24, type metadata accessor for PlaceSummaryViewModelUnit);
    if (v23)
    {
      v14 = v35 - 1;
      v17 += v29;
      v16 += v29;
      if (v35 != 1)
      {
        continue;
      }
    }

    return v23 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_1001F02A0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      v9 = 1;
    }

    else
    {
      v3 = (a1 + 32);
      v4 = (a2 + 32);
      do
      {
        v5 = v3[1];
        v12[0] = *v3;
        v12[1] = v5;
        v6 = v3[3];
        v12[2] = v3[2];
        v12[3] = v6;
        v7 = v4[1];
        v13[0] = *v4;
        v13[1] = v7;
        v8 = v4[3];
        v13[2] = v4[2];
        v13[3] = v8;
        sub_1001F1238(v12, v11);
        sub_1001F1238(v13, v11);
        v9 = sub_100407808(v12, v13);
        sub_1001F1294(v13);
        sub_1001F1294(v12);
        if ((v9 & 1) == 0)
        {
          break;
        }

        v3 += 4;
        v4 += 4;
        --v2;
      }

      while (v2);
    }
  }

  else
  {
    v9 = 0;
  }

  return v9 & 1;
}

uint64_t sub_1001F0398(uint64_t a1, uint64_t a2)
{
  v53 = type metadata accessor for UUID();
  v4 = *(v53 - 8);
  __chkstk_darwin(v53);
  v52 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v51 = &v39 - v7;
  v8 = type metadata accessor for PlaceSummaryViewModelUnit(0);
  v55 = *(v8 - 8);
  __chkstk_darwin(v8 - 8);
  v50 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v39 - v11;
  v46 = type metadata accessor for PlaceSummaryViewModelLine(0);
  __chkstk_darwin(v46);
  v47 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = &v39 - v16;
  v18 = *(a1 + 16);
  if (v18 != *(a2 + 16))
  {
    v38 = 0;
    return v38 & 1;
  }

  if (!v18 || a1 == a2)
  {
    v38 = 1;
    return v38 & 1;
  }

  v19 = 0;
  v20 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v40 = *(a1 + 16);
  v41 = a2 + v20;
  v21 = (v4 + 8);
  v42 = *(v15 + 72);
  v43 = a1 + v20;
  v45 = &v39 - v16;
  while (1)
  {
    v22 = v42 * v19;
    result = sub_1001F1300(v43 + v42 * v19, v17, type metadata accessor for PlaceSummaryViewModelLine);
    if (v19 == v18)
    {
      break;
    }

    v44 = v19;
    sub_1001F1300(v41 + v22, v47, type metadata accessor for PlaceSummaryViewModelLine);
    result = static UUID.== infix(_:_:)();
    if ((result & 1) == 0 || (v24 = v46[5], v25 = *(v47 + v24), v56 = *&v45[v24], v26 = *(v25 + 16), v54 = *(v56 + 16), v54 != v26))
    {
LABEL_21:
      sub_1001F1368(v47, type metadata accessor for PlaceSummaryViewModelLine);
      sub_1001F1368(v45, type metadata accessor for PlaceSummaryViewModelLine);
      v38 = 0;
      return v38 & 1;
    }

    if (v54 && v56 != v25)
    {
      v27 = 0;
      v28 = (*(v55 + 80) + 32) & ~*(v55 + 80);
      v48 = v25 + v28;
      v49 = v56 + v28;
      while (v27 < *(v56 + 16))
      {
        v29 = *(v55 + 72) * v27;
        result = sub_1001F1300(v49 + v29, v12, type metadata accessor for PlaceSummaryViewModelUnit);
        if (v27 >= *(v25 + 16))
        {
          goto LABEL_24;
        }

        v30 = v50;
        sub_1001F1300(v48 + v29, v50, type metadata accessor for PlaceSummaryViewModelUnit);
        v31 = v51;
        sub_100221080(v51);
        v32 = v52;
        sub_100221080(v52);
        v33 = static UUID.== infix(_:_:)();
        v34 = *v21;
        v35 = v32;
        v36 = v53;
        (*v21)(v35, v53);
        v34(v31, v36);
        sub_1001F1368(v30, type metadata accessor for PlaceSummaryViewModelUnit);
        result = sub_1001F1368(v12, type metadata accessor for PlaceSummaryViewModelUnit);
        if ((v33 & 1) == 0)
        {
          goto LABEL_21;
        }

        if (v54 == ++v27)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_24:
      __break(1u);
      break;
    }

LABEL_15:
    if (v45[v46[6]] != *(v47 + v46[6]))
    {
      goto LABEL_21;
    }

    v17 = v45;
    v37 = v45[v46[7]] ^ *(v47 + v46[7]);
    sub_1001F1368(v47, type metadata accessor for PlaceSummaryViewModelLine);
    sub_1001F1368(v17, type metadata accessor for PlaceSummaryViewModelLine);
    v18 = v40;
    if ((v37 & 1) == 0)
    {
      v19 = v44 + 1;
      if (v44 + 1 != v40)
      {
        continue;
      }
    }

    v38 = v37 ^ 1;
    return v38 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_1001F08B0(unint64_t a1, uint64_t a2, unint64_t *a3)
{
  v4 = a1;
  v5 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_44;
  }

  v6 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (!(a2 >> 62))
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6 != result)
    {
      goto LABEL_46;
    }

LABEL_5:
    if (!v6)
    {
      goto LABEL_29;
    }

    v8 = v4 & 0xFFFFFFFFFFFFFF8;
    v9 = (v4 & 0xFFFFFFFFFFFFFF8) + 32;
    if (v4 < 0)
    {
      v8 = v4;
    }

    if (v5)
    {
      v9 = v8;
    }

    v10 = a2 & 0xFFFFFFFFFFFFFF8;
    v11 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
    if (a2 < 0)
    {
      v10 = a2;
    }

    if (a2 >> 62)
    {
      v11 = v10;
    }

    if (v9 == v11)
    {
LABEL_29:
      v19 = 1;
      return v19 & 1;
    }

    if (v6 < 0)
    {
      __break(1u);
      return result;
    }

    v5 = sub_100014C84(0, a3);
    if (((a2 | v4) & 0xC000000000000001) != 0)
    {
      v12 = a2 & 0xC000000000000001;
      v13 = 4;
      while (1)
      {
        v14 = v13 - 4;
        v15 = v13 - 3;
        if (__OFADD__(v13 - 4, 1))
        {
          __break(1u);
LABEL_40:
          __break(1u);
          goto LABEL_41;
        }

        if ((v4 & 0xC000000000000001) != 0)
        {
          v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          if (!v12)
          {
            goto LABEL_24;
          }
        }

        else
        {
          if (v14 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_42;
          }

          v16 = *(v4 + 8 * v13);
          if (!v12)
          {
LABEL_24:
            if (v14 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_43;
            }

            v17 = *(a2 + 8 * v13);
            goto LABEL_26;
          }
        }

        v17 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_26:
        v18 = v17;
        v19 = static NSObject.== infix(_:_:)();

        if (v19)
        {
          ++v13;
          if (v15 != v6)
          {
            continue;
          }
        }

        return v19 & 1;
      }
    }

    v20 = (v4 + 32);
    v21 = (a2 + 32);
    v22 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v23 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v24 = v6 - 1;
    while (1)
    {
      if (!v22)
      {
        goto LABEL_40;
      }

      if (!v23)
      {
        break;
      }

      v26 = *v20++;
      v25 = v26;
      v27 = *v21++;
      a2 = v25;
      v4 = v27;
      v19 = static NSObject.== infix(_:_:)();

      v29 = v24-- != 0;
      if (v19)
      {
        --v23;
        --v22;
        if (v29)
        {
          continue;
        }
      }

      return v19 & 1;
    }

LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    v30 = a3;
    v31 = _CocoaArrayWrapper.endIndex.getter();
    a3 = v30;
    v6 = v31;
  }

  v32 = a3;
  result = _CocoaArrayWrapper.endIndex.getter();
  a3 = v32;
  if (v6 == result)
  {
    goto LABEL_5;
  }

LABEL_46:
  v19 = 0;
  return v19 & 1;
}

uint64_t sub_1001F0B44(unint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a1;
  v5 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_44;
  }

  v6 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (!(a2 >> 62))
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6 != result)
    {
      goto LABEL_46;
    }

LABEL_5:
    if (!v6)
    {
      goto LABEL_29;
    }

    v8 = v4 & 0xFFFFFFFFFFFFFF8;
    v9 = (v4 & 0xFFFFFFFFFFFFFF8) + 32;
    if (v4 < 0)
    {
      v8 = v4;
    }

    if (v5)
    {
      v9 = v8;
    }

    v10 = a2 & 0xFFFFFFFFFFFFFF8;
    v11 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
    if (a2 < 0)
    {
      v10 = a2;
    }

    if (a2 >> 62)
    {
      v11 = v10;
    }

    if (v9 == v11)
    {
LABEL_29:
      v19 = 1;
      return v19 & 1;
    }

    if (v6 < 0)
    {
      __break(1u);
      return result;
    }

    v5 = a3(0);
    if (((a2 | v4) & 0xC000000000000001) != 0)
    {
      v12 = a2 & 0xC000000000000001;
      v13 = 4;
      while (1)
      {
        v14 = v13 - 4;
        v15 = v13 - 3;
        if (__OFADD__(v13 - 4, 1))
        {
          __break(1u);
LABEL_40:
          __break(1u);
          goto LABEL_41;
        }

        if ((v4 & 0xC000000000000001) != 0)
        {
          v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          if (!v12)
          {
            goto LABEL_24;
          }
        }

        else
        {
          if (v14 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_42;
          }

          v16 = *(v4 + 8 * v13);
          if (!v12)
          {
LABEL_24:
            if (v14 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_43;
            }

            v17 = *(a2 + 8 * v13);
            goto LABEL_26;
          }
        }

        v17 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_26:
        v18 = v17;
        v19 = static NSObject.== infix(_:_:)();

        if (v19)
        {
          ++v13;
          if (v15 != v6)
          {
            continue;
          }
        }

        return v19 & 1;
      }
    }

    v20 = (v4 + 32);
    v21 = (a2 + 32);
    v22 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v23 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v24 = v6 - 1;
    while (1)
    {
      if (!v22)
      {
        goto LABEL_40;
      }

      if (!v23)
      {
        break;
      }

      v26 = *v20++;
      v25 = v26;
      v27 = *v21++;
      a2 = v25;
      v4 = v27;
      v19 = static NSObject.== infix(_:_:)();

      v29 = v24-- != 0;
      if (v19)
      {
        --v23;
        --v22;
        if (v29)
        {
          continue;
        }
      }

      return v19 & 1;
    }

LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    v30 = a3;
    v31 = _CocoaArrayWrapper.endIndex.getter();
    a3 = v30;
    v6 = v31;
  }

  v32 = a3;
  result = _CocoaArrayWrapper.endIndex.getter();
  a3 = v32;
  if (v6 == result)
  {
    goto LABEL_5;
  }

LABEL_46:
  v19 = 0;
  return v19 & 1;
}

uint64_t sub_1001F0DB0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    sub_100014C84(0, &qword_10190B2D0);
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);
    v7 = *(a1 + 48);
    v38 = a1;
    v39 = a2;
    v8 = *(a1 + 56);
    v10 = *(a2 + 32);
    v9 = *(a2 + 40);
    v11 = *(a2 + 48);
    v12 = *(a2 + 56);
    v13 = v5;
    v40 = v6;
    sub_1000D2C54(v6, v7, v8);
    v14 = v10;
    v15 = v11;
    v16 = v9;
    v17 = v14;
    sub_1000D2C54(v9, v15, v12);
    if (static NSObject.== infix(_:_:)())
    {
      v18 = v8;
      v8 = v12;
      v41 = v2;
      v42 = v13;
      v19 = v40;
      v20 = 0;
      while (v18)
      {
        v21 = v41;
        if (v18 == 1)
        {
          if (v8 != 1)
          {

            sub_1001F12E8(v16, v15, v8);
            v34 = v19;
            v35 = v7;
            v36 = 1;
            goto LABEL_40;
          }

          if (v19 != v16 || v7 != v15)
          {
            v25 = _stringCompareWithSmolCheck(_:_:expecting:)();

            sub_1001F12E8(v16, v15, 1u);
            sub_1001F12E8(v19, v7, 1u);
            if ((v25 & 1) == 0)
            {
              return 0;
            }

            goto LABEL_34;
          }

          sub_1001F12E8(v16, v15, 1u);
          v22 = v16;
          v23 = v15;
          v24 = 1;
          goto LABEL_16;
        }

        if (v19 | v7)
        {
          if (v19 ^ 1 | v7)
          {

            if (v8 != 2 || v16 != 2 || v15)
            {
LABEL_42:

              v34 = v16;
              v35 = v15;
              v36 = v8;
              goto LABEL_40;
            }
          }

          else
          {

            if (v8 != 2 || v16 != 1 || v15)
            {
              goto LABEL_42;
            }
          }
        }

        else
        {

          if (v8 != 2 || v15 | v16)
          {
            v34 = v16;
            v35 = v15;
            goto LABEL_39;
          }
        }

LABEL_34:
        v27 = v21 - 1;
        if (!v27)
        {
          return 1;
        }

        v41 = v27;
        v18 = *(v38 + v20 + 88);
        v28 = *(v38 + v20 + 72);
        v29 = *(v38 + v20 + 80);
        v30 = *(v39 + v20 + 64);
        v16 = *(v39 + v20 + 72);
        v15 = *(v39 + v20 + 80);
        v31 = *(v39 + v20 + 88);
        v32 = *(v38 + v20 + 64);
        v19 = v28;
        v33 = v28;
        v7 = v29;
        sub_1000D2C54(v33, v29, v18);
        v17 = v30;
        v8 = v31;
        sub_1000D2C54(v16, v15, v31);
        v42 = v32;
        v20 += 32;
        if ((static NSObject.== infix(_:_:)() & 1) == 0)
        {

          sub_1001F12E8(v16, v15, v31);
          v34 = v19;
          v35 = v7;
          v36 = v18;
          goto LABEL_40;
        }
      }

      v21 = v41;
      if (v8)
      {

        sub_1001F12E8(v16, v15, v8);
        v34 = v19;
        v35 = v7;
        v36 = 0;
        goto LABEL_40;
      }

      if (v19 != v16 || v7 != v15)
      {
        v26 = _stringCompareWithSmolCheck(_:_:expecting:)();

        sub_1001F12E8(v16, v15, 0);
        sub_1001F12E8(v19, v7, 0);
        if ((v26 & 1) == 0)
        {
          return 0;
        }

        goto LABEL_34;
      }

      sub_1001F12E8(v16, v15, 0);
      v22 = v16;
      v23 = v15;
      v24 = 0;
LABEL_16:
      sub_1001F12E8(v22, v23, v24);
      goto LABEL_34;
    }

    sub_1001F12E8(v9, v15, v12);
    v34 = v40;
    v35 = v7;
LABEL_39:
    v36 = v8;
LABEL_40:
    sub_1001F12E8(v34, v35, v36);
  }

  return 0;
}

uint64_t sub_1001F12E8(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
  }

  return result;
}

uint64_t sub_1001F1300(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1001F1368(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1001F13C8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1001F4960(&qword_10190AA18, type metadata accessor for PlaceItemsController);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + OBJC_IVAR____TtC4Maps20PlaceItemsController__sortType);
  return result;
}

uint64_t sub_1001F1578@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC4Maps24PlaceItemsViewController_viewModel);
  type metadata accessor for ActionBarViewModel();
  swift_allocObject();

  v4 = ActionBarViewModel.init(leadingItems:centeredItems:trailingItems:leadingEditItems:centeredEditItems:trailingEditItems:forceExpandedSearch:)();
  a1[3] = type metadata accessor for PlaceItemsView();
  a1[4] = sub_1001F4960(&unk_101911DC0, type metadata accessor for PlaceItemsView);
  v5 = sub_10001A848(a1);
  return sub_1001545BC(v3, v4, v5);
}

id sub_1001F1650()
{
  v1 = v0;
  v15.receiver = v0;
  v15.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v15, "viewDidLoad");
  result = [v0 cardPresentationController];
  if (result)
  {
    v3 = result;
    [result setPresentedModally:1];

    result = [v1 cardPresentationController];
    if (result)
    {
      v4 = result;
      [result setTakesAvailableHeight:1];

      swift_allocObject();
      swift_unknownObjectWeakInit();
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      sub_1001F4960(&qword_10190AA10, type metadata accessor for PlaceItemsViewModel);

      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

      swift_allocObject();
      swift_unknownObjectWeakInit();
      v6 = swift_getKeyPath();
      __chkstk_darwin(v6);

      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

      swift_allocObject();
      swift_unknownObjectWeakInit();
      v7 = swift_getKeyPath();
      __chkstk_darwin(v7);

      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

      swift_allocObject();
      swift_unknownObjectWeakInit();
      v8 = swift_getKeyPath();
      __chkstk_darwin(v8);

      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

      swift_allocObject();
      swift_unknownObjectWeakInit();
      v9 = swift_getKeyPath();
      __chkstk_darwin(v9);

      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

      swift_allocObject();
      swift_unknownObjectWeakInit();
      v10 = swift_getKeyPath();
      __chkstk_darwin(v10);

      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

      swift_allocObject();
      swift_unknownObjectWeakInit();
      v11 = swift_getKeyPath();
      __chkstk_darwin(v11);

      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

      swift_allocObject();
      swift_unknownObjectWeakInit();
      v12 = swift_getKeyPath();
      __chkstk_darwin(v12);

      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

      swift_allocObject();
      swift_unknownObjectWeakInit();
      v13 = swift_getKeyPath();
      __chkstk_darwin(v13);

      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

      swift_allocObject();
      swift_unknownObjectWeakInit();
      v14 = swift_getKeyPath();
      __chkstk_darwin(v14);

      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1001F1F60()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    [Strong handleDismissAction:Strong];
  }
}

void sub_1001F1FC0()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v1 = Strong;
  swift_getObjectType();
  v2 = LibraryPlaceItemCompatible.createMapItemFromStorage()();
  if (v2)
  {
    v3 = v2;
    v4 = [v1 mapSelectionManager];
    sub_1004C3BB4(v4);

    v5 = objc_opt_self();
    v6 = [v5 sharedService];
    if (v6)
    {
      v7 = v6;
      [v3 _muid];
      dispatch thunk of CustomStringConvertible.description.getter();
      v8 = String._bridgeToObjectiveC()();

      [v7 captureUserAction:478 onTarget:140 eventValue:v8];

      v9 = [v5 sharedService];
      if (v9)
      {
        v10 = v9;
        if (qword_1019068B8 != -1)
        {
          swift_once();
        }

        dispatch thunk of CustomStringConvertible.description.getter();
        v11 = String._bridgeToObjectiveC()();

        [v10 captureUserAction:2007 onTarget:0 eventValue:v11];
        swift_unknownObjectRelease();

        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    return;
  }

  swift_unknownObjectRelease();
}

id sub_1001F2200()
{
  result = [objc_opt_self() sharedService];
  if (result)
  {
    v2 = result;
    [result captureUserAction:469 onTarget:140 eventValue:0];

    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      [result viewControllerShowAddItemsFromACToLibraryView:v0];

      return swift_unknownObjectRelease();
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1001F22AC()
{
  v1 = v0;
  v2 = sub_1000CE6B8(&unk_10190BA50);
  __chkstk_darwin(v2 - 8);
  v4 = v22 - v3;
  swift_getObjectType();
  v5 = LibraryPlaceItemCompatible.createMapItemFromStorage()();
  if (v5)
  {
    v6 = v5;
    v7 = [objc_opt_self() sharedHelper];
    v22[0] = [v7 alertControllerForAttemptedAddShortcut];

    if (v22[0])
    {
      [v1 _maps_topMostPresentViewController:v22[0] animated:1 completion:0];

      v8 = v22[0];
    }

    else
    {
      v9 = [v6 _muid];
      v10 = *&v1[OBJC_IVAR____TtC4Maps24PlaceItemsViewController_analyticsInfo];
      if (v9)
      {
        v22[1] = v9;
        dispatch thunk of CustomStringConvertible.description.getter();
        v12 = v11;
      }

      else
      {
        v12 = 0;
      }

      v13 = [objc_opt_self() sharedService];
      if (v13)
      {
        v14 = v13;
        if (v12)
        {
          v15 = String._bridgeToObjectiveC()();
        }

        else
        {
          v15 = 0;
        }

        [v14 captureUserAction:475 onTarget:v10 eventValue:v15];

        type metadata accessor for CollectionPlaceItem();
        v16 = swift_dynamicCastClass();
        if (v16)
        {
          v17 = v16;
          v18 = *&v1[OBJC_IVAR____TtC4Maps24PlaceItemsViewController_dataOperationsProvider];
          v19 = type metadata accessor for TaskPriority();
          (*(*(v19 - 8) + 56))(v4, 1, 1, v19);
          v20 = swift_allocObject();
          v20[2] = 0;
          v20[3] = 0;
          v20[4] = v17;
          v20[5] = v18;
          swift_unknownObjectRetain_n();
          v21 = v18;
          sub_10020AAE4(0, 0, v4, &unk_1011F0780, v20);

          swift_unknownObjectRelease();
        }
      }

      else
      {
        __break(1u);
      }
    }
  }
}

void sub_1001F2580()
{
  v1 = sub_1000CE6B8(&unk_10190BA50);
  __chkstk_darwin(v1 - 8);
  v3 = v25 - v2;
  swift_getObjectType();
  v4 = LibraryPlaceItemCompatible.createMapItemFromStorage()();
  if (v4)
  {
    v5 = v4;
    v6 = [v4 _muid];
    v7 = *(v0 + OBJC_IVAR____TtC4Maps24PlaceItemsViewController_analyticsInfo);
    if (v6)
    {
      v25[1] = v6;
      dispatch thunk of CustomStringConvertible.description.getter();
      v9 = v8;
    }

    else
    {
      v9 = 0;
    }

    v10 = [objc_opt_self() sharedService];
    if (!v10)
    {
      __break(1u);
      return;
    }

    v11 = v10;
    if (v9)
    {
      v12 = String._bridgeToObjectiveC()();
    }

    else
    {
      v12 = 0;
    }

    [v11 captureUserAction:473 onTarget:v7 eventValue:v12];

    type metadata accessor for FavoriteItem();
    v13 = swift_dynamicCastClass();
    if (v13)
    {
      v14 = v13;
      v15 = type metadata accessor for TaskPriority();
      (*(*(v15 - 8) + 56))(v3, 1, 1, v15);
      v16 = swift_allocObject();
      v16[2] = 0;
      v16[3] = 0;
      v16[4] = v14;
      swift_unknownObjectRetain_n();
      v17 = &unk_1011F0778;
      v18 = v3;
      v19 = v16;
    }

    else
    {
      type metadata accessor for FavoriteItemWrapper();
      v20 = swift_dynamicCastClass();
      if (!v20)
      {
LABEL_14:

        return;
      }

      v21 = *(v20 + OBJC_IVAR____TtC4Maps19FavoriteItemWrapper_object);
      v22 = type metadata accessor for TaskPriority();
      (*(*(v22 - 8) + 56))(v3, 1, 1, v22);
      v23 = swift_allocObject();
      v23[2] = 0;
      v23[3] = 0;
      v23[4] = v21;
      swift_unknownObjectRetain();
      v24 = v21;
      v17 = &unk_1011F0770;
      v18 = v3;
      v19 = v23;
    }

    sub_10020ADD4(0, 0, v18, v17, v19);

    swift_unknownObjectRelease();
    goto LABEL_14;
  }
}

void sub_1001F2860()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_1001F4B34();
  }
}

void sub_1001F28BC(unint64_t a1, void *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    sub_1001F292C(a1, a2);
  }
}

void sub_1001F292C(unint64_t a1, void *a2)
{
  v3 = v2;
  v4 = a1;
  v39[0] = _swiftEmptyArrayStorage;
  v35 = a2;
  v5 = (a1 & 0xFFFFFFFFFFFFFF8);
  if (a1 >> 62)
  {
LABEL_47:
    v6 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v6 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v7 = 0;
  v8 = _swiftEmptyArrayStorage;
  while (v6 != v7)
  {
    if ((v4 & 0xC000000000000001) != 0)
    {
      specialized _ArrayBuffer._getElementSlowPath(_:)();
      v9 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        goto LABEL_43;
      }
    }

    else
    {
      if (v7 >= v5[2])
      {
        goto LABEL_44;
      }

      swift_unknownObjectRetain();
      v9 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
LABEL_43:
        __break(1u);
LABEL_44:
        __break(1u);
LABEL_45:
        __break(1u);
LABEL_46:
        __break(1u);
        goto LABEL_47;
      }
    }

    swift_getObjectType();
    v10 = LibraryPlaceItemCompatible.createMapItemFromStorage()();
    swift_unknownObjectRelease();
    ++v7;
    if (v10)
    {
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v39[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v39[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v8 = v39[0];
      v7 = v9;
    }
  }

  if (!(v8 >> 62))
  {
    if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) > 0)
    {
      goto LABEL_17;
    }

LABEL_49:

    return;
  }

  if (_CocoaArrayWrapper.endIndex.getter() <= 0)
  {
    goto LABEL_49;
  }

LABEL_17:
  v11 = [objc_opt_self() sharedHelper];
  v36 = [v11 alertControllerForAttemptedAddCollection];

  if (v36)
  {

    [v3 _maps_topMostPresentViewController:v36 animated:1 completion:0];
  }

  else
  {
    v12 = [objc_allocWithZone(CollectionAddOrRemoveSession) init];
    if (v8 >> 62)
    {
      v4 = _CocoaArrayWrapper.endIndex.getter();
      if (v4)
      {
        goto LABEL_25;
      }
    }

    else
    {
      v4 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v4)
      {
LABEL_25:
        v13 = 0;
        v5 = &selRef_actionButtonControllerWithTitle_subTitle_selectedBlock_disabled_symbolName_;
        do
        {
          if ((v8 & 0xC000000000000001) != 0)
          {
            v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v13 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_46;
            }

            v14 = *(v8 + 8 * v13 + 32);
          }

          v15 = v14;
          v16 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            goto LABEL_45;
          }

          [v12 addSelectedObject:v14];

          ++v13;
        }

        while (v16 != v4);
      }
    }

    [v12 setAnalyticsTarget:*&v3[OBJC_IVAR____TtC4Maps24PlaceItemsViewController_analyticsInfo]];
    v17 = v35;
    if (v35)
    {
      v18 = sub_1001F4AE8();
      v19 = v35;
    }

    else
    {
      v19 = 0;
      v18 = 0;
      v39[1] = 0;
      v39[2] = 0;
    }

    v39[0] = v19;
    v39[3] = v18;
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v21 = Strong;
      y = CGRectNull.origin.y;
      width = CGRectNull.size.width;
      height = CGRectNull.size.height;
      sub_10017A750(v39, v37);
      v25 = v38;
      if (v38)
      {
        v26 = sub_10005E838(v37, v38);
        v27 = *(v25 - 8);
        v28 = __chkstk_darwin(v26);
        v30 = &v35 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v27 + 16))(v30, v28);
        v31 = v17;
        v32 = _bridgeAnythingToObjectiveC<A>(_:)();
        (*(v27 + 8))(v30, v25);
        sub_10004E3D0(v37);
      }

      else
      {
        v34 = v35;
        v32 = 0;
      }

      [v21 viewController:v3 pickCollectionWithSession:v12 sourceView:v32 sourceRect:{CGRectNull.origin.x, y, width, height, v35}];
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
    }

    else
    {
      v33 = v35;
    }

    sub_1000DB2F4(v39);
  }
}

void sub_1001F2E18(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    a3(a1);
  }
}

void sub_1001F2E88(void *a1)
{
  v2 = v1;
  swift_getObjectType();
  v4 = LibraryPlaceItemCompatible.createMapItemFromStorage()();
  if (v4)
  {
    v5 = v4;
    v6 = [objc_opt_self() sharedHelper];
    v18 = [v6 alertControllerForAttemptedAddNote];

    if (v18)
    {
      [v2 _maps_topMostPresentViewController:v18 animated:1 completion:0];
    }

    else
    {
      v7 = [a1 placeItemNote];
      if (v7)
      {
        v8 = v7;
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v10 = v9;
      }

      else
      {
        v10 = 0;
      }

      v11 = [v5 _muid];
      v12 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v13 = swift_allocObject();
      *(v13 + 16) = v12;
      *(v13 + 24) = a1;
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v15 = Strong;

        swift_unknownObjectRetain();
        if (v10)
        {
          v16 = String._bridgeToObjectiveC()();
        }

        else
        {
          v16 = 0;
        }

        aBlock[4] = sub_1001F4A0C;
        aBlock[5] = v13;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_100498AF8;
        aBlock[3] = &unk_10160A148;
        v17 = _Block_copy(aBlock);

        [v15 presentEditNoteViewControllerWithInitialText:v16 libraryAccessProvider:0 placeMUID:v11 completion:v17];

        _Block_release(v17);

        swift_unknownObjectRelease();
      }

      else
      {

        swift_unknownObjectRetain();
      }
    }
  }
}

void sub_1001F3180(unint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    if (a1 >> 62)
    {
      v7 = Strong;
      v8 = _CocoaArrayWrapper.endIndex.getter();
      Strong = v7;
      if (v8 >= 1)
      {
        goto LABEL_4;
      }
    }

    else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 1)
    {
LABEL_4:
      v3 = Strong;
      v4 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v5 = swift_allocObject();
      *(v5 + 16) = v4;
      *(v5 + 24) = a1;

      sub_10048A2E0(v6, v3, sub_1001F49B4, v5);

      return;
    }
  }
}

void sub_1001F32BC(uint64_t a1, void (*a2)(void))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    a2();
  }
}

void sub_1001F3318()
{
  sub_1000CE6B8(&qword_101911DD0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1011E1D60;
  *(v1 + 32) = 2;
  v2 = [objc_opt_self() sharedLocationManager];
  if (v2)
  {
    v3 = v2;
    v4 = [v2 isAuthorizedForPreciseLocation];

    v5 = *(v1 + 16);
    if (v4)
    {
      v6 = *(v1 + 24);
      v7 = v5 + 1;
      if (v5 >= v6 >> 1)
      {
        goto LABEL_37;
      }

      goto LABEL_4;
    }

    if (v5)
    {
      v8 = v0;
      v7 = *(v1 + 16);
LABEL_7:
      v9 = 0;
      v5 = OBJC_IVAR____TtC4Maps24PlaceItemsViewController_viewModel;
      while (1)
      {
        v6 = *(v1 + 16);
        if (v9 >= v6)
        {
          goto LABEL_36;
        }

        v10 = *(v1 + v9 + 32);
        v11 = *(*(v8 + v5) + 40);
        swift_getKeyPath();
        v12 = OBJC_IVAR____TtC4Maps20PlaceItemsController___observationRegistrar;
        aBlock[0] = v11;
        sub_1001F4960(&qword_10190AA18, type metadata accessor for PlaceItemsController);
        v0 = (v11 + v12);
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        if (v10 == *(v11 + OBJC_IVAR____TtC4Maps20PlaceItemsController__sortType))
        {
          break;
        }

        if (v7 == ++v9)
        {
          v9 = 0;
          break;
        }
      }

      v0 = v8;
      v7 = *(v1 + 16);
      v13 = _swiftEmptyArrayStorage;
      if (v7)
      {
        v32 = v8;
        aBlock[0] = _swiftEmptyArrayStorage;
        v0 = aBlock;
        specialized ContiguousArray.reserveCapacity(_:)();
        v14 = 0;
        v15 = *(v1 + 16);
        v6 = 0x8000000101223430;
        while (1)
        {
          if (v15 == v14)
          {
            __break(1u);
LABEL_35:
            __break(1u);
LABEL_36:
            __break(1u);
LABEL_37:
            v1 = sub_1003571EC((v6 > 1), v7, 1, v1);
LABEL_4:
            v8 = v0;
            *(v1 + 16) = v7;
            *(v1 + v5 + 32) = 1;
            goto LABEL_7;
          }

          v6 = *(v1 + 16);
          if (v14 >= v6)
          {
            goto LABEL_35;
          }

          if (*(v1 + v14 + 32))
          {
            if (*(v1 + v14 + 32) == 1)
            {
              if (qword_101906768 != -1)
              {
                swift_once();
              }

              v16.super.isa = qword_1019600D8;
              v31 = 0x80000001012233D0;
              v19 = 0xD000000000000019;
              v17 = 0x80000001012233B0;
              v18 = 0xD000000000000034;
              v20 = 0x65636E6174736944;
              v21 = 0xE800000000000000;
              goto LABEL_18;
            }

            if (qword_101906768 != -1)
            {
              swift_once();
            }

            v16.super.isa = qword_1019600D8;
            v31 = 0x8000000101223350;
            v17 = 0x8000000101223330;
            v18 = 0xD00000000000002FLL;
            v19 = 0xD000000000000015;
            v20 = 1702125892;
          }

          else
          {
            if (qword_101906768 != -1)
            {
              swift_once();
            }

            v16.super.isa = qword_1019600D8;
            v31 = 0x8000000101223430;
            v17 = 0x8000000101223410;
            v18 = 0xD000000000000030;
            v19 = 0xD000000000000015;
            v20 = 1701667150;
          }

          v21 = 0xE400000000000000;
LABEL_18:
          v22 = NSLocalizedString(_:tableName:bundle:value:comment:)(*&v19, 0, v16, *&v20, *&v18);
          v23 = type metadata accessor for SortOptionPickerSortOption();
          v24 = objc_allocWithZone(v23);
          *&v24[OBJC_IVAR____TtC4Maps26SortOptionPickerSortOption_id] = v14;
          *&v24[OBJC_IVAR____TtC4Maps26SortOptionPickerSortOption_name] = v22;
          v34.receiver = v24;
          v34.super_class = v23;
          objc_msgSendSuper2(&v34, "init");
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v0 = aBlock;
          specialized ContiguousArray._endMutation()();
          v5 = ++v14;
          if (v7 == v14)
          {
            v13 = aBlock[0];
            v0 = v32;
            break;
          }
        }
      }
    }

    else
    {
      v9 = 0;
      v13 = _swiftEmptyArrayStorage;
    }

    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v26 = Strong;
      type metadata accessor for SortOptionPickerSortOption();
      isa = Array._bridgeToObjectiveC()().super.isa;
      v28 = swift_allocObject();
      v28[2] = v13;
      v28[3] = v1;
      v28[4] = v0;
      aBlock[4] = sub_1001F49A8;
      aBlock[5] = v28;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1001FDE68;
      aBlock[3] = &unk_10160A0D0;
      v29 = _Block_copy(aBlock);
      v30 = v0;

      [v26 viewController:v30 showSortPickerWithSortOptions:isa initialSelectedSortOptionIndex:v9 completion:v29];
      swift_unknownObjectRelease();
      _Block_release(v29);
    }

    else
    {
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_1001F38E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_1000CE6B8(&unk_10190BA50);
  __chkstk_darwin(v7 - 8);
  v9 = &v16 - v8;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    v12 = type metadata accessor for TaskPriority();
    (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
    type metadata accessor for MainActor();

    swift_unknownObjectRetain();
    v13 = v11;
    v14 = static MainActor.shared.getter();
    v15 = swift_allocObject();
    v15[2] = v14;
    v15[3] = &protocol witness table for MainActor;
    v15[4] = v13;
    v15[5] = a1;
    v15[6] = a2;
    v15[7] = a4;
    sub_10020B0D8(0, 0, v9, &unk_1011F0760, v15);
  }
}

uint64_t sub_1001F3A68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[5] = a6;
  v7[6] = a7;
  v7[3] = a4;
  v7[4] = a5;
  v7[2] = a1;
  type metadata accessor for MainActor();
  v7[7] = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  v7[8] = v9;
  v7[9] = v8;

  return _swift_task_switch(sub_1001F3B08, v9, v8);
}

uint64_t sub_1001F3B08()
{
  v1 = swift_task_alloc();
  v0[10] = v1;
  *v1 = v0;
  v1[1] = sub_1001F3BB0;
  v2 = v0[5];
  v3 = v0[6];
  v4 = v0[4];

  return sub_100489CBC(v4, v2, v3);
}

uint64_t sub_1001F3BB0(char a1)
{
  v4 = *v2;

  if (v1)
  {

    v5 = *(v4 + 64);
    v6 = *(v4 + 72);
    v7 = sub_1001F3D4C;
  }

  else
  {
    *(v4 + 88) = a1 & 1;
    v5 = *(v4 + 64);
    v6 = *(v4 + 72);
    v7 = sub_1001F3CE0;
  }

  return _swift_task_switch(v7, v5, v6);
}

uint64_t sub_1001F3CE0()
{
  v1 = *(v0 + 88);

  **(v0 + 16) = v1;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1001F3D4C()
{

  **(v0 + 16) = 2;
  v1 = *(v0 + 8);

  return v1();
}

void sub_1001F3DB8(char a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    if ((a1 & 1) == 0)
    {
      v27 = _swiftEmptyArrayStorage;
      v6 = a4 & 0xFFFFFFFFFFFFFF8;
      if (a4 >> 62)
      {
LABEL_37:
        v7 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v7 = *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v8 = 0;
      v9 = _swiftEmptyArrayStorage;
      while (v7 != v8)
      {
        if ((a4 & 0xC000000000000001) != 0)
        {
          specialized _ArrayBuffer._getElementSlowPath(_:)();
          v10 = v8 + 1;
          if (__OFADD__(v8, 1))
          {
            goto LABEL_33;
          }
        }

        else
        {
          if (v8 >= *(v6 + 16))
          {
            goto LABEL_34;
          }

          swift_unknownObjectRetain();
          v10 = v8 + 1;
          if (__OFADD__(v8, 1))
          {
LABEL_33:
            __break(1u);
LABEL_34:
            __break(1u);
LABEL_35:
            __break(1u);
LABEL_36:
            __break(1u);
            goto LABEL_37;
          }
        }

        swift_getObjectType();
        v11 = LibraryPlaceItemCompatible.createMapItemFromStorage()();
        swift_unknownObjectRelease();
        ++v8;
        if (v11)
        {
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((v27 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v27 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v9 = v27;
          v8 = v10;
        }
      }

      if (v9 >> 62)
      {
        v6 = _CocoaArrayWrapper.endIndex.getter();
        if (v6)
        {
          goto LABEL_19;
        }
      }

      else
      {
        v6 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v6)
        {
LABEL_19:
          v12 = 0;
          v24 = OBJC_IVAR____TtC4Maps24PlaceItemsViewController_analyticsInfo;
          v25 = v9 & 0xC000000000000001;
          v13 = v9 & 0xFFFFFFFFFFFFFF8;
          do
          {
            if (v25)
            {
              v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              if (v12 >= *(v13 + 16))
              {
                goto LABEL_36;
              }

              v15 = *(v9 + 8 * v12 + 32);
            }

            v16 = v15;
            v17 = v12 + 1;
            if (__OFADD__(v12, 1))
            {
              goto LABEL_35;
            }

            a4 = v9;
            v18 = [v15 _muid];
            v19 = *&Strong[v24];
            if (v18)
            {
              v27 = v18;
              dispatch thunk of CustomStringConvertible.description.getter();
              v21 = v20;
            }

            else
            {
              v21 = 0;
            }

            v22 = [objc_opt_self() sharedService];
            if (!v22)
            {
              __break(1u);
              return;
            }

            v23 = v22;
            if (v21)
            {
              v14 = String._bridgeToObjectiveC()();
            }

            else
            {
              v14 = 0;
            }

            [v23 captureUserAction:477 onTarget:v19 eventValue:v14];

            ++v12;
            v9 = a4;
          }

          while (v17 != v6);
        }
      }
    }
  }
}

uint64_t sub_1001F40B8(uint64_t result, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a2 & 0xFFFFFFFFFFFFFF8;
  if (a2 >> 62)
  {
LABEL_17:
    v14 = result;
    v15 = a3;
    v16 = a4;
    v17 = a2;
    v18 = _CocoaArrayWrapper.endIndex.getter();
    a2 = v17;
    a4 = v16;
    a3 = v15;
    v5 = v18;
    result = v14;
  }

  else
  {
    v5 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = 0;
  v7 = OBJC_IVAR____TtC4Maps26SortOptionPickerSortOption_id;
  v8 = a2 & 0xC000000000000001;
  while (v5 != v6)
  {
    if (v8)
    {
      v19 = result;
      v10 = a2;
      v11 = a3;
      v12 = a4;
      v13 = *(specialized _ArrayBuffer._getElementSlowPath(_:)() + OBJC_IVAR____TtC4Maps26SortOptionPickerSortOption_id);
      swift_unknownObjectRelease();
      result = v19;
      a2 = v10;
      a4 = v12;
      a3 = v11;
      if (v13 == *(v19 + v7))
      {
LABEL_12:
        if (v6 < *(a3 + 16))
        {
          return sub_100125130(*(a3 + v6 + 32));
        }

        return result;
      }
    }

    else
    {
      if (v6 >= *(v4 + 16))
      {
        __break(1u);
LABEL_16:
        __break(1u);
        goto LABEL_17;
      }

      if (*(*(a2 + 8 * v6 + 32) + OBJC_IVAR____TtC4Maps26SortOptionPickerSortOption_id) == *(result + v7))
      {
        goto LABEL_12;
      }
    }

    if (__OFADD__(v6++, 1))
    {
      goto LABEL_16;
    }
  }

  return result;
}

id sub_1001F420C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  *&v3[OBJC_IVAR____TtC4Maps24PlaceItemsViewController_analyticsInfo] = 137;
  v8 = OBJC_IVAR____TtC4Maps24PlaceItemsViewController_dataOperationsProvider;
  type metadata accessor for MapsSyncStore();
  v9 = static MapsSyncStore.sharedStore.getter();
  v10 = type metadata accessor for LibraryDataOperationsProvider();
  v11 = objc_allocWithZone(v10);
  *&v11[OBJC_IVAR____TtC4Maps29LibraryDataOperationsProvider_mapsSyncStore] = v9;
  v17.receiver = v11;
  v17.super_class = v10;
  *&v4[v8] = objc_msgSendSuper2(&v17, "init");
  v12 = OBJC_IVAR____TtC4Maps24PlaceItemsViewController_viewModel;
  type metadata accessor for PlaceItemsViewModel();
  swift_allocObject();
  *&v4[v12] = sub_1000FF1D4();
  if (a2)
  {
    v13 = String._bridgeToObjectiveC()();
  }

  else
  {
    v13 = 0;
  }

  v16.receiver = v4;
  v16.super_class = ObjectType;
  v14 = objc_msgSendSuper2(&v16, "initWithNibName:bundle:", v13, a3);

  return v14;
}

id sub_1001F43DC(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR____TtC4Maps24PlaceItemsViewController_analyticsInfo] = 137;
  v5 = OBJC_IVAR____TtC4Maps24PlaceItemsViewController_dataOperationsProvider;
  type metadata accessor for MapsSyncStore();
  v6 = static MapsSyncStore.sharedStore.getter();
  v7 = type metadata accessor for LibraryDataOperationsProvider();
  v8 = objc_allocWithZone(v7);
  *&v8[OBJC_IVAR____TtC4Maps29LibraryDataOperationsProvider_mapsSyncStore] = v6;
  v13.receiver = v8;
  v13.super_class = v7;
  *&v2[v5] = objc_msgSendSuper2(&v13, "init");
  v9 = OBJC_IVAR____TtC4Maps24PlaceItemsViewController_viewModel;
  type metadata accessor for PlaceItemsViewModel();
  swift_allocObject();
  *&v2[v9] = sub_1000FF1D4();
  v12.receiver = v2;
  v12.super_class = ObjectType;
  v10 = objc_msgSendSuper2(&v12, "initWithCoder:", a1);

  if (v10)
  {
  }

  return v10;
}

uint64_t sub_1001F4548()
{
  sub_1000A09E0(v0 + OBJC_IVAR____TtC4Maps24PlaceItemsViewController_actionDelegate);
  sub_1000A09E0(v0 + OBJC_IVAR____TtC4Maps24PlaceItemsViewController_shareDelegate);
  sub_1000A09E0(v0 + OBJC_IVAR____TtC4Maps24PlaceItemsViewController_sortOptionPickerDelegate);
}

uint64_t getEnumTagSinglePayload for VisitedPlacesCitySortOrder(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for VisitedPlacesCitySortOrder(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1001F47BC()
{
  result = qword_101911DB8;
  if (!qword_101911DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101911DB8);
  }

  return result;
}

uint64_t sub_1001F4960(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1001F49BC(void (*a1)(void))
{

  a1(*(v1 + 24));

  return _swift_deallocObject(v1, 32, 7);
}

uint64_t sub_1001F4A14(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_10003AC4C;

  return sub_1001F3A68(a1, v4, v5, v6, v7, v9, v8);
}

unint64_t sub_1001F4AE8()
{
  result = qword_10190CA10;
  if (!qword_10190CA10)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10190CA10);
  }

  return result;
}

void sub_1001F4B34()
{
  v1 = v0;
  swift_getObjectType();
  v2 = LibraryPlaceItemCompatible.createMapItemFromStorage()();
  if (v2)
  {
    v3 = v2;
    v4 = [objc_allocWithZone(SearchResult) initWithMapItem:v2];
    if (v4)
    {
      v11 = v4;
      v5 = [v4 unknownContact];
      if (v5)
      {
        v6 = v5;
        v7 = [objc_opt_self() shareItemWithSearchResult:v11 contact:v5 includePrintActivity:1];
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          v9 = Strong;
          swift_unknownObjectRetain();
          [v9 viewController:v1 doShareSheetForShareItem:v7 completion:0];
          swift_unknownObjectRelease();

          swift_unknownObjectRelease();
        }

        else
        {
        }

        swift_unknownObjectRelease();
      }

      else
      {
        v6 = v3;
      }

      v10 = v11;
    }

    else
    {
      v10 = v3;
    }
  }
}

uint64_t sub_1001F4C90(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10003AC40;

  return sub_100490538(a1, v4, v5, v6);
}

uint64_t sub_1001F4D44(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10003AC40;

  return sub_1004909A0(a1, v4, v5, v7, v6);
}

Swift::Int sub_1001F4E10(char **a1, uint64_t a2)
{
  v4 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v4 = sub_10056D5A0(v4);
  }

  v5 = *(v4 + 2);
  v7[0] = (v4 + 32);
  v7[1] = v5;
  result = sub_1001F9740(v7, a2);
  *a1 = v4;
  return result;
}

uint64_t sub_1001F4E84(uint64_t a1, uint64_t a2)
{
  v3[7] = a2;
  v3[8] = v2;
  v3[6] = a1;
  return _swift_task_switch(sub_1001F4EA8, v2, 0);
}

uint64_t sub_1001F4EA8()
{
  v1 = swift_task_alloc();
  *(v0 + 72) = v1;
  *v1 = v0;
  v1[1] = sub_1001F4F44;
  v2 = *(v0 + 48);

  return sub_100251C88(v2);
}

uint64_t sub_1001F4F44(uint64_t a1)
{
  v2 = *(*v1 + 64);
  *(*v1 + 80) = a1;

  return _swift_task_switch(sub_1001F505C, v2, 0);
}

uint64_t sub_1001F505C()
{
  receiver = v0[5].receiver;
  if (receiver)
  {
    type metadata accessor for MapsSyncStore();
    v2 = static MapsSyncStore.sharedStore.getter();
    v3 = type metadata accessor for LibraryDataOperationsProvider();
    v4 = objc_allocWithZone(v3);
    *&v4[OBJC_IVAR____TtC4Maps29LibraryDataOperationsProvider_mapsSyncStore] = v2;
    v0[1].receiver = v4;
    v0[1].super_class = v3;
    v0[5].super_class = objc_msgSendSuper2(v0 + 1, "init");
    v0[2].receiver = _swiftEmptyArrayStorage;
    if (receiver >> 62)
    {
      result = _CocoaArrayWrapper.endIndex.getter();
      v0[6].receiver = result;
      if (result)
      {
LABEL_4:
        if (result < 1)
        {
          __break(1u);
        }

        else
        {
          v6 = v0[5].receiver;
          v0[7].receiver = 0;
          v0[7].super_class = _swiftEmptyArrayStorage;
          v0[6].super_class = 0;
          if ((v6 & 0xC000000000000001) != 0)
          {
            v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            v7 = *(v6 + 4);
          }

          v8 = v7;
          v0[8].receiver = v7;
          v9 = swift_task_alloc();
          v0[8].super_class = v9;
          *v9 = v0;
          *(v9 + 1) = sub_1001F521C;
          super_class = v0[5].super_class;
          v11 = v0[3].super_class;

          return sub_1001F8098(v8, v11, super_class);
        }

        return result;
      }
    }

    else
    {
      result = *((receiver & 0xFFFFFFFFFFFFFF8) + 0x10);
      v0[6].receiver = result;
      if (result)
      {
        goto LABEL_4;
      }
    }
  }

  v12 = v0->super_class;

  return v12(_swiftEmptyArrayStorage);
}

uint64_t sub_1001F521C(uint64_t a1)
{
  v2 = *(*v1 + 64);
  *(*v1 + 144) = a1;

  return _swift_task_switch(sub_1001F5334, v2, 0);
}

uint64_t sub_1001F5334()
{
  v1 = *(v0 + 144);
  if (v1)
  {
    v2 = (v0 + 32);
    v3 = (v1 + OBJC_IVAR____TtC4Maps16VisitHistoryItem__logValueForAnalytics);
    v4 = *(v1 + OBJC_IVAR____TtC4Maps16VisitHistoryItem__logValueForAnalytics + 8);
    if (v4 && (*v3 == 0x69736956206C6C41 ? (v5 = v4 == 0xEA00000000007374) : (v5 = 0), v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
    {
      *v3 = xmmword_1011F0790;

      v6 = *(v0 + 104);
    }

    else
    {
      v6 = *(v0 + 104);
      swift_getKeyPath();
      v7 = swift_task_alloc();
      *(v7 + 16) = v1;
      *(v7 + 24) = xmmword_1011F0790;
      *(v0 + 40) = v1;
      sub_1001FA340(&qword_101911EF0, type metadata accessor for VisitHistoryItem);
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((*v2 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    v8 = *(v0 + 128);
    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  }

  else
  {

    v2 = (v0 + 120);
    v6 = *(v0 + 104);
  }

  v9 = *v2;
  v10 = *(v0 + 112) + 1;
  if (v10 == *(v0 + 96))
  {

    v11 = *(v0 + 8);

    return v11(v9);
  }

  else
  {
    *(v0 + 112) = v10;
    *(v0 + 120) = v9;
    *(v0 + 104) = v6;
    v13 = *(v0 + 80);
    if ((v13 & 0xC000000000000001) != 0)
    {
      v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v14 = *(v13 + 8 * v10 + 32);
    }

    v15 = v14;
    *(v0 + 128) = v14;
    v16 = swift_task_alloc();
    *(v0 + 136) = v16;
    *v16 = v0;
    v16[1] = sub_1001F521C;
    v17 = *(v0 + 88);
    v18 = *(v0 + 56);

    return sub_1001F8098(v15, v18, v17);
  }
}

uint64_t sub_1001F5650()
{
  *&v4 = 0;
  *&v3 = _swiftEmptyArrayStorage;
  *(&v3 + 1) = _swiftEmptyArrayStorage;
  BYTE8(v4) = 2;
  sub_100251774(_swiftEmptyArrayStorage);
  *(v0 + 104) = _swiftEmptyArrayStorage;
  *(v0 + 120) = 0uLL;
  *(v0 + 136) = v4;
  *(v0 + 152) = 0;
  *(v0 + 88) = v3;
  *(v0 + 48) = 0uLL;
  *(v0 + 64) = v4;
  *(v0 + 80) = 0;
  *(v0 + 16) = v3;
  *(v0 + 32) = _swiftEmptyArrayStorage;
  sub_10019C99C(v0 + 88, v0 + 160);
  sub_10019C9F8(v0 + 16);
  v1 = swift_task_alloc();
  *(v0 + 240) = v1;
  *v1 = v0;
  v1[1] = sub_1001F576C;

  return sub_100252A2C(v0 + 88);
}

uint64_t sub_1001F576C(uint64_t a1, char a2)
{
  v5 = *v2;

  sub_10019C9F8(v5 + 88);
  if (a2)
  {
    v6 = 0;
  }

  else
  {
    v6 = a1;
  }

  v7 = *(v5 + 8);

  return v7(v6);
}

uint64_t sub_1001F58A0()
{
  *(v0 + 240) = *(*(v0 + 232) + 112);
  *(v0 + 248) = 0;
  *(v0 + 256) = _swiftEmptyArrayStorage;
  *(v0 + 264) = 1;
  sub_1000CE6B8(&qword_10190EBB0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1011E1D30;
  *(v0 + 16) = v1;
  *(v1 + 32) = 1;
  *(v0 + 24) = _swiftEmptyArrayStorage;
  *(v0 + 32) = _swiftEmptyArrayStorage;
  *(v0 + 40) = 0u;
  *(v0 + 56) = 0u;
  *(v0 + 72) = 2;
  *(v0 + 80) = 0;
  *(v0 + 88) = v1;
  *(v0 + 96) = _swiftEmptyArrayStorage;
  *(v0 + 104) = _swiftEmptyArrayStorage;
  *(v0 + 112) = 0u;
  *(v0 + 128) = 0u;
  *(v0 + 144) = 2;
  *(v0 + 152) = 0;
  sub_10019C99C(v0 + 16, v0 + 160);
  sub_10019C9F8(v0 + 88);
  v2 = swift_task_alloc();
  *(v0 + 272) = v2;
  *v2 = v0;
  v2[1] = sub_1001F59DC;

  return sub_100252A2C(v0 + 16);
}

uint64_t sub_1001F59DC(uint64_t a1, char a2)
{
  v3 = *v2;
  v4 = *(*v2 + 232);
  *(v3 + 280) = a1;
  *(v3 + 288) = a2;

  sub_10019C9F8(v3 + 16);

  return _swift_task_switch(sub_1001F5B00, v4, 0);
}

uint64_t sub_1001F5B00()
{
  v16 = v0;
  if (*(v0 + 288))
  {
    v1 = 0;
  }

  else
  {
    v1 = *(v0 + 280);
  }

  v2 = *(v0 + 256);
  if (v1 >= 1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v2 = *(v0 + 256);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v2 = sub_100357200(0, *(v2 + 2) + 1, 1, *(v0 + 256));
    }

    v5 = *(v2 + 2);
    v4 = *(v2 + 3);
    if (v5 >= v4 >> 1)
    {
      v2 = sub_100357200((v4 > 1), v5 + 1, 1, v2);
    }

    v6 = *(v0 + 264);
    *(v2 + 2) = v5 + 1;
    v7 = &v2[16 * v5];
    *(v7 + 4) = v6;
    *(v7 + 5) = v1;
  }

  v8 = *(v0 + 248) + 1;
  if (*(v0 + 248) == 8)
  {
    v15 = v2;

    sub_1001F4E10(&v15, 9);

    v13 = v15;
    v14 = *(v0 + 8);

    return v14(v13);
  }

  else
  {
    *(v0 + 248) = v8;
    *(v0 + 256) = v2;
    v9 = *(&off_1016004C0 + v8 + 4);
    *(v0 + 264) = v9;
    sub_1000CE6B8(&qword_10190EBB0);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_1011E1D30;
    *(v10 + 32) = v9;
    *(v0 + 16) = v10;
    *(v0 + 24) = _swiftEmptyArrayStorage;
    *(v0 + 32) = _swiftEmptyArrayStorage;
    *(v0 + 40) = 0u;
    *(v0 + 56) = 0u;
    *(v0 + 72) = 2;
    *(v0 + 80) = 0;
    *(v0 + 88) = v10;
    *(v0 + 96) = _swiftEmptyArrayStorage;
    *(v0 + 104) = _swiftEmptyArrayStorage;
    *(v0 + 112) = 0u;
    *(v0 + 128) = 0u;
    *(v0 + 144) = 2;
    *(v0 + 152) = 0;
    sub_10019C99C(v0 + 16, v0 + 160);
    sub_10019C9F8(v0 + 88);
    v11 = swift_task_alloc();
    *(v0 + 272) = v11;
    *v11 = v0;
    v11[1] = sub_1001F59DC;

    return sub_100252A2C(v0 + 16);
  }
}

uint64_t sub_1001F5D8C()
{
  sub_100511704(0, 9, 0);
  v1 = 0;
  v2 = _swiftEmptyArrayStorage;
  v3 = _swiftEmptyArrayStorage[2];
  v4 = 2 * v3;
  do
  {
    v5 = *(&off_1016004C0 + v1 + 4);
    v11 = v2;
    v6 = v2[3];
    v7 = v3 + v1 + 1;
    if (v3 + v1 >= v6 >> 1)
    {
      sub_100511704((v6 > 1), v3 + v1 + 1, 1);
      v2 = v11;
    }

    ++v1;
    v2[2] = v7;
    v8 = &v2[v4];
    v8[4] = v5;
    v8[5] = 0;
    v4 += 2;
  }

  while (v1 != 9);
  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_1001F5E94(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 16) = v3;
  v8 = swift_task_alloc();
  *(v4 + 24) = v8;
  *v8 = v4;
  v8[1] = sub_1001F5F5C;

  return (sub_100257C98)(a1, a2, a3 & 1);
}

uint64_t sub_1001F5F5C(uint64_t a1)
{
  v2 = *(*v1 + 16);
  *(*v1 + 32) = a1;

  return _swift_task_switch(sub_1001F6074, v2, 0);
}

uint64_t sub_1001F6074()
{
  v1 = *(v0 + 32);
  v2 = *(v1 + 16);
  if (v2)
  {
    specialized ContiguousArray.reserveCapacity(_:)();
    type metadata accessor for VisitedPlaceCityViewModel();
    v3 = (v1 + 56);
    do
    {
      v4 = *(v3 - 3);
      v5 = *(v3 - 2);
      v7 = *(v3 - 1);
      v6 = *v3;
      swift_allocObject();

      v8 = v7;
      sub_1003666F0(v4, v5, v8, v6);

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v3 += 4;
      --v2;
    }

    while (v2);
  }

  v9 = *(v0 + 8);

  return v9(_swiftEmptyArrayStorage);
}

uint64_t sub_1001F61D4(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 16) = v3;
  v8 = swift_task_alloc();
  *(v4 + 24) = v8;
  *v8 = v4;
  v8[1] = sub_1001F629C;

  return sub_100257C98(a1, a2, a3 & 1);
}

uint64_t sub_1001F629C(uint64_t a1)
{
  v2 = *(*v1 + 16);
  *(*v1 + 32) = a1;

  return _swift_task_switch(sub_1001F63B4, v2, 0);
}

uint64_t sub_1001F63B4()
{
  v1 = *(v0 + 32);
  v2 = *(v1 + 16);
  if (v2)
  {
    sub_100511558(0, v2, 0);
    v3 = _swiftEmptyArrayStorage[2];
    v4 = 24 * v3 + 48;
    v5 = (v1 + 48);
    do
    {
      v6 = *(v5 - 2);
      v7 = *(v5 - 1);
      v8 = *v5;
      v9 = v3 + 1;
      v10 = _swiftEmptyArrayStorage[3];

      v11 = v8;
      if (v3 >= v10 >> 1)
      {
        v13 = v11;
        sub_100511558((v10 > 1), v9, 1);
        v11 = v13;
      }

      _swiftEmptyArrayStorage[2] = v9;
      v12 = (_swiftEmptyArrayStorage + v4);
      *(v12 - 2) = v6;
      *(v12 - 1) = v7;
      *v12 = v11;
      v4 += 24;
      v5 += 4;
      v3 = v9;
      --v2;
    }

    while (v2);
    v0 = v16;
  }

  else
  {
  }

  v14 = *(v0 + 8);

  return v14(_swiftEmptyArrayStorage);
}

uint64_t sub_1001F6514()
{
  v1[52] = v0;
  v2 = type metadata accessor for Date.FormatStyle();
  v1[53] = v2;
  v1[54] = *(v2 - 8);
  v1[55] = swift_task_alloc();
  v1[56] = *(sub_1000CE6B8(&unk_10190EB90) - 8);
  v1[57] = swift_task_alloc();
  v3 = type metadata accessor for VisitedPlacesCalendarMonth(0);
  v1[58] = v3;
  v1[59] = *(v3 - 8);
  v1[60] = swift_task_alloc();
  v1[61] = swift_task_alloc();
  v4 = type metadata accessor for Calendar();
  v1[62] = v4;
  v1[63] = *(v4 - 8);
  v1[64] = swift_task_alloc();
  v5 = type metadata accessor for Date();
  v1[65] = v5;
  v1[66] = *(v5 - 8);
  v1[67] = swift_task_alloc();

  return _swift_task_switch(sub_1001F6758, v0, 0);
}

uint64_t sub_1001F6758()
{
  v1 = *(v0 + 536);
  v2 = *(v0 + 528);
  v3 = *(v0 + 520);
  v5 = *(v0 + 504);
  v4 = *(v0 + 512);
  v6 = *(v0 + 496);
  Date.init()();
  static Calendar.current.getter();
  v7 = sub_10051F294(v1, v4);
  *(v0 + 544) = v7;
  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v1, v3);
  v8 = *(v7 + 16);
  *(v0 + 552) = v8;
  if (v8)
  {
    v9 = (v0 + 628);
    v11 = *(v0 + 464);
    v10 = *(v0 + 472);
    *(v0 + 560) = *(*(v0 + 416) + 112);
    v12 = *(v10 + 80);
    *(v0 + 624) = v12;
    *(v0 + 568) = *(v10 + 72);
    *(v0 + 584) = 0;
    *(v0 + 576) = _swiftEmptyArrayStorage;
    v13 = *(v0 + 488);
    sub_1001FA278(*(v0 + 544) + ((v12 + 32) & ~v12), v13, type metadata accessor for VisitedPlacesCalendarMonth);
    sub_1000CE6B8(&unk_10190EBA0);
    inited = swift_initStackObject();
    *(v0 + 592) = inited;
    *(inited + 16) = xmmword_1011E1D30;
    *(inited + 56) = v11;
    v15 = sub_1001FA340(&qword_101911F00, type metadata accessor for VisitedPlacesCalendarMonth);
    *(v0 + 600) = v15;
    *(inited + 64) = v15;
    v16 = sub_10001A848((inited + 32));
    sub_1001FA278(v13, v16, type metadata accessor for VisitedPlacesCalendarMonth);
    *(v0 + 408) = _swiftEmptyArrayStorage;
    sub_1005112F0(0, 1, 0);
    v17 = *(v0 + 408);
    sub_10005EB40(inited + 32, v0 + 352);

    v18 = *(v0 + 376);
    v19 = *(v0 + 384);
    sub_10005E838((v0 + 352), v18);
    (*(v19 + 16))(v18, v19);
    sub_10004E3D0(v0 + 352);
    v21 = *(v17 + 16);
    v20 = *(v17 + 24);
    if (v21 >= v20 >> 1)
    {
      sub_1005112F0(v20 > 1, v21 + 1, 1);
      v17 = *(v0 + 408);
    }

    v23 = *(v0 + 448);
    v22 = *(v0 + 456);
    *(v17 + 16) = v21 + 1;
    sub_1001FA208(v22, v17 + ((*(v23 + 80) + 32) & ~*(v23 + 80)) + *(v23 + 72) * v21);
    *(v0 + 16) = _swiftEmptyArrayStorage;
    *(v0 + 24) = _swiftEmptyArrayStorage;
    *(v0 + 32) = v17;
    *(v0 + 40) = 0u;
    *(v0 + 56) = 0u;
    *(v0 + 72) = 2;
    v24 = *v9;
    *(v0 + 73) = *v9;
    v25 = *(v0 + 631);
    *(v0 + 76) = v25;
    *(v0 + 80) = 0;
    *(v0 + 160) = _swiftEmptyArrayStorage;
    *(v0 + 168) = _swiftEmptyArrayStorage;
    *(v0 + 176) = v17;
    *(v0 + 184) = 0u;
    *(v0 + 200) = 0u;
    *(v0 + 216) = 2;
    *(v0 + 217) = v24;
    *(v0 + 220) = v25;
    *(v0 + 224) = 0;
    sub_10019C99C(v0 + 16, v0 + 232);
    sub_10019C9F8(v0 + 160);
    v26 = swift_task_alloc();
    *(v0 + 608) = v26;
    *v26 = v0;
    v26[1] = sub_1001F6B2C;

    return sub_100252A2C(v0 + 16);
  }

  else
  {

    v28 = *(v0 + 8);

    return v28(0, 0, 0);
  }
}

uint64_t sub_1001F6B2C(uint64_t a1, char a2)
{
  v3 = *v2;
  v4 = *(*v2 + 416);
  *(v3 + 616) = a1;
  *(v3 + 635) = a2;

  sub_10019C9F8(v3 + 16);

  return _swift_task_switch(sub_1001F6C50, v4, 0);
}

uint64_t sub_1001F6C50()
{
  if (*(v0 + 635))
  {
    sub_1001FA2E0(*(v0 + 488), type metadata accessor for VisitedPlacesCalendarMonth);

LABEL_3:

    v1 = 0;
    v2 = 0;
    v3 = 0;
LABEL_4:

    v4 = *(v0 + 8);

    return v4(v1, v2, v3);
  }

  v6 = *(v0 + 616);
  if (v6 < 1)
  {
    sub_1001FA2E0(*(v0 + 488), type metadata accessor for VisitedPlacesCalendarMonth);
    v3 = *(v0 + 576);
  }

  else
  {
    v7 = *(v0 + 600);
    v8 = *(v0 + 488);
    *(v0 + 328) = *(v0 + 464);
    *(v0 + 336) = v7;
    v9 = sub_10001A848((v0 + 304));
    sub_1001FA278(v8, v9, type metadata accessor for VisitedPlacesCalendarMonth);
    *(v0 + 344) = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v3 = *(v0 + 576);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v3 = sub_100357354(0, *(v3 + 2) + 1, 1, *(v0 + 576));
    }

    v12 = *(v3 + 2);
    v11 = *(v3 + 3);
    if (v12 >= v11 >> 1)
    {
      v3 = sub_100357354((v11 > 1), v12 + 1, 1, v3);
    }

    sub_1001FA2E0(*(v0 + 488), type metadata accessor for VisitedPlacesCalendarMonth);
    *(v3 + 2) = v12 + 1;
    v13 = &v3[48 * v12];
    v15 = *(v0 + 320);
    v14 = *(v0 + 336);
    *(v13 + 2) = *(v0 + 304);
    *(v13 + 3) = v15;
    *(v13 + 4) = v14;
  }

  v16 = *(v0 + 584) + 1;
  if (v16 == *(v0 + 552))
  {
    v17 = *(v0 + 544);
    if (*(v3 + 2) < 2uLL)
    {

      goto LABEL_3;
    }

    if (*(v17 + 16))
    {
      sub_1001FA278(v17 + ((*(v0 + 624) + 32) & ~*(v0 + 624)), *(v0 + 480), type metadata accessor for VisitedPlacesCalendarMonth);

      if (qword_101906920 == -1)
      {
LABEL_25:
        v35 = *(v0 + 480);
        v37 = *(v0 + 432);
        v36 = *(v0 + 440);
        v38 = *(v0 + 424);
        v39 = sub_100021540(v38, qword_101960530);
        (*(v37 + 16))(v36, v39, v38);
        sub_1001FA340(&qword_10190EC28, &type metadata accessor for Date.FormatStyle);
        Date.formatted<A>(_:)();
        (*(v37 + 8))(v36, v38);
        sub_1001FA2E0(v35, type metadata accessor for VisitedPlacesCalendarMonth);
        v1 = *(v0 + 392);
        v2 = *(v0 + 400);
        goto LABEL_4;
      }

LABEL_28:
      swift_once();
      goto LABEL_25;
    }

LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (v16 >= *(*(v0 + 544) + 16))
  {
    __break(1u);
    goto LABEL_27;
  }

  v18 = (v0 + 628);
  v19 = *(v0 + 584) + 1;
  *(v0 + 584) = v19;
  *(v0 + 576) = v3;
  v20 = *(v0 + 488);
  v21 = *(v0 + 464);
  sub_1001FA278(*(v0 + 544) + ((*(v0 + 624) + 32) & ~*(v0 + 624)) + *(v0 + 568) * v19, v20, type metadata accessor for VisitedPlacesCalendarMonth);
  sub_1000CE6B8(&unk_10190EBA0);
  inited = swift_initStackObject();
  *(v0 + 592) = inited;
  *(inited + 16) = xmmword_1011E1D30;
  *(inited + 56) = v21;
  v23 = sub_1001FA340(&qword_101911F00, type metadata accessor for VisitedPlacesCalendarMonth);
  *(v0 + 600) = v23;
  *(inited + 64) = v23;
  v24 = sub_10001A848((inited + 32));
  sub_1001FA278(v20, v24, type metadata accessor for VisitedPlacesCalendarMonth);
  *(v0 + 408) = _swiftEmptyArrayStorage;
  sub_1005112F0(0, 1, 0);
  v25 = *(v0 + 408);
  sub_10005EB40(inited + 32, v0 + 352);

  v26 = *(v0 + 376);
  v27 = *(v0 + 384);
  sub_10005E838((v0 + 352), v26);
  (*(v27 + 16))(v26, v27);
  sub_10004E3D0(v0 + 352);
  v29 = *(v25 + 16);
  v28 = *(v25 + 24);
  if (v29 >= v28 >> 1)
  {
    sub_1005112F0(v28 > 1, v29 + 1, 1);
    v25 = *(v0 + 408);
  }

  v31 = *(v0 + 448);
  v30 = *(v0 + 456);
  *(v25 + 16) = v29 + 1;
  sub_1001FA208(v30, v25 + ((*(v31 + 80) + 32) & ~*(v31 + 80)) + *(v31 + 72) * v29);
  *(v0 + 16) = _swiftEmptyArrayStorage;
  *(v0 + 24) = _swiftEmptyArrayStorage;
  *(v0 + 32) = v25;
  *(v0 + 40) = 0u;
  *(v0 + 56) = 0u;
  *(v0 + 72) = 2;
  v32 = *v18;
  *(v0 + 73) = *v18;
  v33 = *(v0 + 631);
  *(v0 + 76) = v33;
  *(v0 + 80) = 0;
  *(v0 + 160) = _swiftEmptyArrayStorage;
  *(v0 + 168) = _swiftEmptyArrayStorage;
  *(v0 + 176) = v25;
  *(v0 + 184) = 0u;
  *(v0 + 200) = 0u;
  *(v0 + 216) = 2;
  *(v0 + 217) = v32;
  *(v0 + 220) = v33;
  *(v0 + 224) = 0;
  sub_10019C99C(v0 + 16, v0 + 232);
  sub_10019C9F8(v0 + 160);
  v34 = swift_task_alloc();
  *(v0 + 608) = v34;
  *v34 = v0;
  v34[1] = sub_1001F6B2C;

  return sub_100252A2C(v0 + 16);
}

uint64_t sub_1001F726C()
{
  v1[50] = v0;
  v1[51] = *(sub_1000CE6B8(&unk_10190EB90) - 8);
  v1[52] = swift_task_alloc();
  v2 = type metadata accessor for VisitedPlacesCalendarYear(0);
  v1[53] = v2;
  v1[54] = *(v2 - 8);
  v1[55] = swift_task_alloc();
  v3 = type metadata accessor for Calendar();
  v1[56] = v3;
  v1[57] = *(v3 - 8);
  v1[58] = swift_task_alloc();
  sub_1000CE6B8(&qword_10190EBD0);
  v1[59] = swift_task_alloc();
  v4 = type metadata accessor for Date();
  v1[60] = v4;
  v1[61] = *(v4 - 8);
  v1[62] = swift_task_alloc();
  v1[63] = swift_task_alloc();

  return _swift_task_switch(sub_1001F748C, v0, 0);
}

uint64_t sub_1001F748C()
{
  v0[64] = *(v0[50] + 112);
  v1 = swift_task_alloc();
  v0[65] = v1;
  *v1 = v0;
  v1[1] = sub_1001F752C;
  v2 = v0[59];

  return sub_1002532C0(v2);
}

uint64_t sub_1001F752C()
{
  v1 = *(*v0 + 400);

  return _swift_task_switch(sub_1001F763C, v1, 0);
}

uint64_t sub_1001F763C()
{
  v1 = *(v0 + 480);
  v2 = *(v0 + 488);
  v3 = *(v0 + 472);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_100024F64(v3, &qword_10190EBD0);
LABEL_10:

    v31 = *(v0 + 8);

    return v31(0);
  }

  v5 = *(v0 + 496);
  v4 = *(v0 + 504);
  v7 = *(v0 + 456);
  v6 = *(v0 + 464);
  v8 = *(v0 + 448);
  (*(v2 + 32))(v4, v3, v1);
  Date.init()();
  static Calendar.current.getter();
  v9 = sub_100520224(v4, v5, v6);
  *(v0 + 528) = v9;
  (*(v7 + 8))(v6, v8);
  v10 = *(v2 + 8);
  *(v0 + 536) = v10;
  *(v0 + 544) = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v10(v5, v1);
  v11 = *(v9 + 16);
  *(v0 + 552) = v11;
  if (!v11)
  {
    v10(*(v0 + 504), *(v0 + 480));

    goto LABEL_10;
  }

  v12 = (v0 + 620);
  v13 = *(v0 + 432);
  v14 = *(v0 + 440);
  v15 = *(v13 + 80);
  *(v0 + 616) = v15;
  *(v0 + 560) = *(v13 + 72);
  *(v0 + 576) = 0;
  *(v0 + 568) = _swiftEmptyArrayStorage;
  v16 = *(v0 + 424);
  sub_1001FA278(*(v0 + 528) + ((v15 + 32) & ~v15), v14, type metadata accessor for VisitedPlacesCalendarYear);
  sub_1000CE6B8(&unk_10190EBA0);
  inited = swift_initStackObject();
  *(v0 + 584) = inited;
  *(inited + 16) = xmmword_1011E1D30;
  *(inited + 56) = v16;
  v18 = sub_1001FA340(&qword_101911EF8, type metadata accessor for VisitedPlacesCalendarYear);
  *(v0 + 592) = v18;
  *(inited + 64) = v18;
  v19 = sub_10001A848((inited + 32));
  sub_1001FA278(v14, v19, type metadata accessor for VisitedPlacesCalendarYear);
  *(v0 + 392) = _swiftEmptyArrayStorage;
  sub_1005112F0(0, 1, 0);
  v20 = *(v0 + 392);
  sub_10005EB40(inited + 32, v0 + 352);

  v21 = *(v0 + 376);
  v22 = *(v0 + 384);
  sub_10005E838((v0 + 352), v21);
  (*(v22 + 16))(v21, v22);
  sub_10004E3D0(v0 + 352);
  v24 = *(v20 + 16);
  v23 = *(v20 + 24);
  if (v24 >= v23 >> 1)
  {
    sub_1005112F0(v23 > 1, v24 + 1, 1);
    v20 = *(v0 + 392);
  }

  v26 = *(v0 + 408);
  v25 = *(v0 + 416);
  *(v20 + 16) = v24 + 1;
  sub_1001FA208(v25, v20 + ((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v24);
  *(v0 + 16) = _swiftEmptyArrayStorage;
  *(v0 + 24) = _swiftEmptyArrayStorage;
  *(v0 + 32) = v20;
  *(v0 + 40) = 0u;
  *(v0 + 56) = 0u;
  *(v0 + 72) = 2;
  v27 = *v12;
  *(v0 + 73) = *v12;
  v28 = *(v0 + 623);
  *(v0 + 76) = v28;
  *(v0 + 80) = 0;
  *(v0 + 160) = _swiftEmptyArrayStorage;
  *(v0 + 168) = _swiftEmptyArrayStorage;
  *(v0 + 176) = v20;
  *(v0 + 184) = 0u;
  *(v0 + 200) = 0u;
  *(v0 + 216) = 2;
  *(v0 + 217) = v27;
  *(v0 + 220) = v28;
  *(v0 + 224) = 0;
  sub_10019C99C(v0 + 16, v0 + 232);
  sub_10019C9F8(v0 + 160);
  v29 = swift_task_alloc();
  *(v0 + 600) = v29;
  *v29 = v0;
  v29[1] = sub_1001F7A80;

  return sub_100252A2C(v0 + 16);
}

uint64_t sub_1001F7A80(uint64_t a1, char a2)
{
  v3 = *v2;
  v4 = *(*v2 + 400);
  *(v3 + 608) = a1;
  *(v3 + 627) = a2;

  sub_10019C9F8(v3 + 16);

  return _swift_task_switch(sub_1001F7BA4, v4, 0);
}

uint64_t sub_1001F7BA4()
{
  if (*(v0 + 627))
  {
    v1 = *(v0 + 536);
    v2 = *(v0 + 504);
    v3 = *(v0 + 480);
    v4 = *(v0 + 440);

    sub_1001FA2E0(v4, type metadata accessor for VisitedPlacesCalendarYear);
    v1(v2, v3);
LABEL_3:

    v5 = 0;
LABEL_13:

    v21 = *(v0 + 8);

    return v21(v5);
  }

  v6 = *(v0 + 608);
  if (v6 < 1)
  {
    result = sub_1001FA2E0(*(v0 + 440), type metadata accessor for VisitedPlacesCalendarYear);
    v5 = *(v0 + 568);
  }

  else
  {
    v7 = *(v0 + 592);
    v8 = *(v0 + 440);
    *(v0 + 328) = *(v0 + 424);
    *(v0 + 336) = v7;
    v9 = sub_10001A848((v0 + 304));
    sub_1001FA278(v8, v9, type metadata accessor for VisitedPlacesCalendarYear);
    *(v0 + 344) = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v5 = *(v0 + 568);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v5 = sub_100357354(0, *(v5 + 2) + 1, 1, *(v0 + 568));
    }

    v12 = *(v5 + 2);
    v11 = *(v5 + 3);
    if (v12 >= v11 >> 1)
    {
      v5 = sub_100357354((v11 > 1), v12 + 1, 1, v5);
    }

    result = sub_1001FA2E0(*(v0 + 440), type metadata accessor for VisitedPlacesCalendarYear);
    *(v5 + 2) = v12 + 1;
    v14 = &v5[48 * v12];
    v16 = *(v0 + 320);
    v15 = *(v0 + 336);
    *(v14 + 2) = *(v0 + 304);
    *(v14 + 3) = v16;
    *(v14 + 4) = v15;
  }

  v17 = *(v0 + 576) + 1;
  if (v17 == *(v0 + 552))
  {
    v18 = *(v0 + 536);
    v19 = *(v0 + 504);
    v20 = *(v0 + 480);

    v18(v19, v20);
    if (*(v5 + 2))
    {
      goto LABEL_13;
    }

    goto LABEL_3;
  }

  if (v17 >= *(*(v0 + 528) + 16))
  {
    __break(1u);
  }

  else
  {
    v22 = (v0 + 620);
    v23 = *(v0 + 576) + 1;
    *(v0 + 576) = v23;
    *(v0 + 568) = v5;
    v24 = *(v0 + 440);
    v25 = *(v0 + 424);
    sub_1001FA278(*(v0 + 528) + ((*(v0 + 616) + 32) & ~*(v0 + 616)) + *(v0 + 560) * v23, v24, type metadata accessor for VisitedPlacesCalendarYear);
    sub_1000CE6B8(&unk_10190EBA0);
    inited = swift_initStackObject();
    *(v0 + 584) = inited;
    *(inited + 16) = xmmword_1011E1D30;
    *(inited + 56) = v25;
    v27 = sub_1001FA340(&qword_101911EF8, type metadata accessor for VisitedPlacesCalendarYear);
    *(v0 + 592) = v27;
    *(inited + 64) = v27;
    v28 = sub_10001A848((inited + 32));
    sub_1001FA278(v24, v28, type metadata accessor for VisitedPlacesCalendarYear);
    *(v0 + 392) = _swiftEmptyArrayStorage;
    sub_1005112F0(0, 1, 0);
    v29 = *(v0 + 392);
    sub_10005EB40(inited + 32, v0 + 352);

    v30 = *(v0 + 376);
    v31 = *(v0 + 384);
    sub_10005E838((v0 + 352), v30);
    (*(v31 + 16))(v30, v31);
    sub_10004E3D0(v0 + 352);
    v33 = *(v29 + 16);
    v32 = *(v29 + 24);
    if (v33 >= v32 >> 1)
    {
      sub_1005112F0(v32 > 1, v33 + 1, 1);
      v29 = *(v0 + 392);
    }

    v35 = *(v0 + 408);
    v34 = *(v0 + 416);
    *(v29 + 16) = v33 + 1;
    sub_1001FA208(v34, v29 + ((*(v35 + 80) + 32) & ~*(v35 + 80)) + *(v35 + 72) * v33);
    *(v0 + 16) = _swiftEmptyArrayStorage;
    *(v0 + 24) = _swiftEmptyArrayStorage;
    *(v0 + 32) = v29;
    *(v0 + 40) = 0u;
    *(v0 + 56) = 0u;
    *(v0 + 72) = 2;
    v36 = *v22;
    *(v0 + 73) = *v22;
    v37 = *(v0 + 623);
    *(v0 + 76) = v37;
    *(v0 + 80) = 0;
    *(v0 + 160) = _swiftEmptyArrayStorage;
    *(v0 + 168) = _swiftEmptyArrayStorage;
    *(v0 + 176) = v29;
    *(v0 + 184) = 0u;
    *(v0 + 200) = 0u;
    *(v0 + 216) = 2;
    *(v0 + 217) = v36;
    *(v0 + 220) = v37;
    *(v0 + 224) = 0;
    sub_10019C99C(v0 + 16, v0 + 232);
    sub_10019C9F8(v0 + 160);
    v38 = swift_task_alloc();
    *(v0 + 600) = v38;
    *v38 = v0;
    v38[1] = sub_1001F7A80;

    return sub_100252A2C(v0 + 16);
  }

  return result;
}

uint64_t sub_1001F8098(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[13] = a3;
  v4[14] = v3;
  v4[11] = a1;
  v4[12] = a2;
  sub_1000CE6B8(&qword_10190EBD0);
  v4[15] = swift_task_alloc();
  v5 = type metadata accessor for Date();
  v4[16] = v5;
  v4[17] = *(v5 - 8);
  v4[18] = swift_task_alloc();
  v4[19] = swift_task_alloc();
  sub_1000CE6B8(&unk_101918E50);
  v4[20] = swift_task_alloc();
  v6 = type metadata accessor for UUID();
  v4[21] = v6;
  v4[22] = *(v6 - 8);
  v4[23] = swift_task_alloc();
  v4[24] = swift_task_alloc();

  return _swift_task_switch(sub_1001F8240, v3, 0);
}

uint64_t sub_1001F8240()
{
  v1 = *(v0 + 168);
  v2 = *(v0 + 176);
  v3 = *(v0 + 160);
  dispatch thunk of MapsSyncObject.identifier.getter();
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_100024F64(*(v0 + 160), &unk_101918E50);
LABEL_11:

    v22 = *(v0 + 8);

    return v22(0);
  }

  v4 = *(v0 + 128);
  v5 = *(v0 + 136);
  v6 = *(v0 + 120);
  (*(*(v0 + 176) + 32))(*(v0 + 192), *(v0 + 160), *(v0 + 168));
  dispatch thunk of Visit.startDate.getter();
  if ((*(v5 + 48))(v6, 1, v4) == 1)
  {
    v7 = *(v0 + 120);
    (*(*(v0 + 176) + 8))(*(v0 + 192), *(v0 + 168));
    sub_100024F64(v7, &qword_10190EBD0);
    goto LABEL_11;
  }

  (*(*(v0 + 136) + 32))(*(v0 + 152), *(v0 + 120), *(v0 + 128));
  v8 = dispatch thunk of Visit.location.getter();
  *(v0 + 200) = v8;
  if (!v8)
  {
    v13 = *(v0 + 192);
    v14 = *(v0 + 168);
    v15 = *(v0 + 176);
    (*(*(v0 + 136) + 8))(*(v0 + 152), *(v0 + 128));
    (*(v15 + 8))(v13, v14);
    goto LABEL_11;
  }

  v9 = v8;
  v10 = dispatch thunk of VisitedLocation.mapItemStorage.getter();
  *(v0 + 208) = v10;
  if (!v10)
  {
    v16 = *(v0 + 192);
    v17 = *(v0 + 168);
    v18 = *(v0 + 176);
    v19 = *(v0 + 152);
    v20 = *(v0 + 128);
    v21 = *(v0 + 136);

    (*(v21 + 8))(v19, v20);
    (*(v18 + 8))(v16, v17);
    goto LABEL_11;
  }

  v11 = v10;
  v12 = (dispatch thunk of Visit.visitClassification.getter() & 2) != 0 && (dispatch thunk of Visit.visitClassification.getter() & 4) == 0;
  *(v0 + 336) = v12;
  v24 = swift_task_alloc();
  *(v0 + 216) = v24;
  *v24 = v0;
  v24[1] = sub_1001F8544;
  v25 = *(v0 + 104);

  return sub_1002AADE4(v11, v25);
}

uint64_t sub_1001F8544(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 112);
  *(v3 + 224) = a1;
  *(v3 + 232) = a2;

  return _swift_task_switch(sub_1001F865C, v4, 0);
}

uint64_t sub_1001F865C()
{
  v1 = v0[26];
  v2 = v0[23];
  v3 = v0[24];
  v4 = v0[21];
  v5 = v0[22];
  v7 = v0[18];
  v6 = v0[19];
  v8 = v0[16];
  v9 = v0[17];
  v10 = *(v5 + 16);
  v0[30] = v10;
  v0[31] = (v5 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v10(v2, v3, v4);
  v11 = *(v9 + 16);
  v0[32] = v11;
  v0[33] = (v9 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v11(v7, v6, v8);
  v12 = v1;
  v13 = dispatch thunk of VisitedLocation.mapItemName.getter();
  v15 = v14;
  type metadata accessor for VisitedPlaceItem();
  v16 = swift_allocObject();
  v0[34] = v16;
  *(v16 + 32) = xmmword_1011F07A0;
  *(v16 + 48) = 1;
  *(v16 + 56) = v12;
  *(v16 + 16) = v13;
  *(v16 + 24) = v15;
  type metadata accessor for VisitHistoryItem();
  v0[35] = swift_allocObject();

  return _swift_task_switch(sub_1001F8780, 0, 0);
}

uint64_t sub_1001F8780()
{
  v1 = *(v0 + 272);
  v2 = *(v0 + 280);
  v3 = *(v0 + 240);
  v22 = *(v0 + 336);
  v4 = *(v0 + 184);
  v5 = *(v0 + 168);
  v20 = *(v0 + 144);
  v21 = *(v0 + 256);
  v6 = *(v0 + 128);
  v7 = *(v0 + 96);
  *(v2 + OBJC_IVAR____TtC4Maps16VisitHistoryItem__libraryStatus) = xmmword_1011F07A0;
  v8 = (v2 + OBJC_IVAR____TtC4Maps16VisitHistoryItem__logValueForAnalytics);
  *v8 = 0;
  v8[1] = 0;
  *(v2 + OBJC_IVAR____TtC4Maps16VisitHistoryItem__dataOperationsProvider) = 0;
  *(v2 + OBJC_IVAR____TtC4Maps16VisitHistoryItem____lazy_storage___canAddRatings) = 2;
  v9 = (v2 + OBJC_IVAR____TtC4Maps16VisitHistoryItem____lazy_storage___formattedDate);
  *v9 = 0;
  v9[1] = 0;
  v10 = v2 + OBJC_IVAR____TtC4Maps16VisitHistoryItem__imageProvider;
  *(v10 + 32) = 0;
  *v10 = 0u;
  *(v10 + 16) = 0u;
  *(v2 + OBJC_IVAR____TtC4Maps16VisitHistoryItem__richTextViews) = _swiftEmptyArrayStorage;
  *(v2 + OBJC_IVAR____TtC4Maps16VisitHistoryItem__trailingAccessory) = _swiftEmptyArrayStorage;
  *(v2 + OBJC_IVAR____TtC4Maps16VisitHistoryItem____lazy_storage___subtitleLineForLowConfidence) = 0;
  v11 = OBJC_IVAR____TtC4Maps16VisitHistoryItem____lazy_storage___moreTrailingAccessory;
  v12 = type metadata accessor for TrailingAccessoryViewModel();
  v13 = *(v12 - 8);
  *(v0 + 288) = v13;
  (*(v13 + 56))(v2 + v11, 1, 1, v12);
  ObservationRegistrar.init()();
  v3(v2 + OBJC_IVAR____TtC4Maps16VisitHistoryItem_visitId, v4, v5);
  v23 = UUID.uuidString.getter();
  v24 = v14;
  v15._countAndFlagsBits = 45;
  v15._object = 0xE100000000000000;
  String.append(_:)(v15);
  *(v0 + 56) = [*(v1 + 56) _muid];
  v16._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v16);

  *(v2 + 16) = v23;
  *(v2 + 24) = v24;
  v21(v2 + OBJC_IVAR____TtC4Maps16VisitHistoryItem_date, v20, v6);
  *(v2 + OBJC_IVAR____TtC4Maps16VisitHistoryItem__isLowConfidenceVisit) = v22;
  *(v2 + OBJC_IVAR____TtC4Maps16VisitHistoryItem_place) = v1;
  *(v2 + OBJC_IVAR____TtC4Maps16VisitHistoryItem_config) = v7;
  type metadata accessor for MainActor();

  *(v0 + 296) = static MainActor.shared.getter();
  v18 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1001F8A40, v18, v17);
}

uint64_t sub_1001F8A40()
{

  v1 = sub_1002A4D2C();
  v2 = v1;
  if (v1)
  {
    v1 = sub_10017F24C();
    *(v0 + 24) = 0;
    v3 = &type metadata for StyleAttributesImageProvider;
  }

  else
  {
    v3 = 0;
    *(v0 + 24) = 0;
    *(v0 + 32) = 0;
  }

  v4 = *(v0 + 280);
  v5 = *(v0 + 224);
  v12 = *(v0 + 232);
  v13 = *(v0 + 288);
  *(v0 + 16) = v2;
  *(v0 + 40) = v3;
  *(v0 + 48) = v1;
  swift_getKeyPath();
  v6 = swift_task_alloc();
  *(v6 + 16) = v4;
  *(v6 + 24) = v0 + 16;
  *(v0 + 64) = v4;
  sub_1001FA340(&qword_101911EF0, type metadata accessor for VisitHistoryItem);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  sub_100024F64(v0 + 16, &qword_101921E90);
  swift_getKeyPath();
  v7 = swift_task_alloc();
  v7[2] = v4;
  v7[3] = v5;
  v7[4] = v12;
  *(v0 + 72) = v4;
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  sub_1001FA1D4(v5, v12);

  sub_1002A8624();
  sub_1000CE6B8(&unk_10190D580);
  v8 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1011E1D30;
  sub_1002A8D08(v9 + v8);
  swift_getKeyPath();
  v10 = swift_task_alloc();
  *(v10 + 16) = v4;
  *(v10 + 24) = v9;
  *(v0 + 80) = v4;
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  return _swift_task_switch(sub_1001F8D30, 0, 0);
}

uint64_t sub_1001F8D30()
{
  v2 = v0[22];
  v1 = v0[23];
  v3 = v0[21];
  v5 = v0[17];
  v4 = v0[18];
  v6 = v0[16];
  v7 = v0[14];

  v8 = *(v5 + 8);
  v0[38] = v8;
  v0[39] = (v5 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8(v4, v6);
  v9 = *(v2 + 8);
  v0[40] = v9;
  v0[41] = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v9(v1, v3);

  return _swift_task_switch(sub_1001F8E0C, v7, 0);
}

uint64_t sub_1001F8E0C()
{
  v1 = *(v0 + 320);
  v2 = *(v0 + 304);
  v10 = *(v0 + 280);
  v3 = *(v0 + 200);
  v4 = *(v0 + 192);
  v5 = *(v0 + 168);
  v6 = *(v0 + 152);
  v7 = *(v0 + 128);

  v2(v6, v7);
  v1(v4, v5);

  v8 = *(v0 + 8);

  return v8(v10);
}

uint64_t sub_1001F8F08(uint64_t a1, uint64_t a2)
{
  v3[7] = a2;
  v3[8] = v2;
  v3[6] = a1;
  return _swift_task_switch(sub_1001F8F2C, v2, 0);
}

uint64_t sub_1001F8F2C()
{
  v1 = swift_task_alloc();
  *(v0 + 72) = v1;
  *v1 = v0;
  v1[1] = sub_1001F8FC8;
  v2 = *(v0 + 48);

  return sub_100251F34(v2);
}

uint64_t sub_1001F8FC8(uint64_t a1)
{
  v2 = *(*v1 + 64);
  *(*v1 + 80) = a1;

  return _swift_task_switch(sub_1001F90E0, v2, 0);
}

uint64_t sub_1001F90E0()
{
  receiver = v0[5].receiver;
  if (receiver)
  {
    type metadata accessor for MapsSyncStore();
    v2 = static MapsSyncStore.sharedStore.getter();
    v3 = type metadata accessor for LibraryDataOperationsProvider();
    v4 = objc_allocWithZone(v3);
    *&v4[OBJC_IVAR____TtC4Maps29LibraryDataOperationsProvider_mapsSyncStore] = v2;
    v0[1].receiver = v4;
    v0[1].super_class = v3;
    v0[5].super_class = objc_msgSendSuper2(v0 + 1, "init");
    v0[2].receiver = _swiftEmptyArrayStorage;
    if (receiver >> 62)
    {
      result = _CocoaArrayWrapper.endIndex.getter();
      v0[6].receiver = result;
      if (result)
      {
LABEL_4:
        if (result < 1)
        {
          __break(1u);
        }

        else
        {
          v6 = v0[5].receiver;
          v0[7].receiver = 0;
          v0[7].super_class = _swiftEmptyArrayStorage;
          v0[6].super_class = 0;
          if ((v6 & 0xC000000000000001) != 0)
          {
            v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            v7 = *(v6 + 4);
          }

          v8 = v7;
          v0[8].receiver = v7;
          v9 = swift_task_alloc();
          v0[8].super_class = v9;
          *v9 = v0;
          *(v9 + 1) = sub_1001F92A0;
          super_class = v0[5].super_class;
          v11 = v0[3].super_class;

          return sub_1001F8098(v8, v11, super_class);
        }

        return result;
      }
    }

    else
    {
      result = *((receiver & 0xFFFFFFFFFFFFFF8) + 0x10);
      v0[6].receiver = result;
      if (result)
      {
        goto LABEL_4;
      }
    }
  }

  v12 = v0->super_class;

  return v12(_swiftEmptyArrayStorage);
}

uint64_t sub_1001F92A0(uint64_t a1)
{
  v2 = *(*v1 + 64);
  *(*v1 + 144) = a1;

  return _swift_task_switch(sub_1001F93B8, v2, 0);
}

uint64_t sub_1001F93B8()
{
  v1 = *(v0 + 144);
  if (!v1)
  {

    v2 = (v0 + 120);
    v9 = *(v0 + 104);
    goto LABEL_16;
  }

  v2 = (v0 + 32);
  v3 = *(v0 + 48);
  v4 = *(v3 + 40);
  v5 = *(v3 + 48);
  v6 = (v1 + OBJC_IVAR____TtC4Maps16VisitHistoryItem__logValueForAnalytics);
  v7 = *(v1 + OBJC_IVAR____TtC4Maps16VisitHistoryItem__logValueForAnalytics + 8);
  if (v7)
  {
    if (v5)
    {
      v8 = *v6 == v4 && v7 == v5;
      if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        goto LABEL_9;
      }
    }

LABEL_12:
    v9 = *(v0 + 104);
    swift_getKeyPath();
    v10 = swift_task_alloc();
    v10[2] = v1;
    v10[3] = v4;
    v10[4] = v5;
    *(v0 + 40) = v1;
    sub_1001FA340(&qword_101911EF0, type metadata accessor for VisitHistoryItem);

    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    goto LABEL_13;
  }

  if (v5)
  {
    goto LABEL_12;
  }

LABEL_9:
  *v6 = v4;
  v6[1] = v5;

  v9 = *(v0 + 104);
LABEL_13:

  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*v2 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  v11 = *(v0 + 128);
  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

LABEL_16:
  v12 = *v2;
  v13 = *(v0 + 112) + 1;
  if (v13 == *(v0 + 96))
  {

    v14 = *(v0 + 8);

    return v14(v12);
  }

  else
  {
    *(v0 + 112) = v13;
    *(v0 + 120) = v12;
    *(v0 + 104) = v9;
    v16 = *(v0 + 80);
    if ((v16 & 0xC000000000000001) != 0)
    {
      v17 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v17 = *(v16 + 8 * v13 + 32);
    }

    v18 = v17;
    *(v0 + 128) = v17;
    v19 = swift_task_alloc();
    *(v0 + 136) = v19;
    *v19 = v0;
    v19[1] = sub_1001F92A0;
    v20 = *(v0 + 88);
    v21 = *(v0 + 56);

    return sub_1001F8098(v18, v21, v20);
  }
}

uint64_t sub_1001F96C4()
{

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

Swift::Int sub_1001F9740(uint64_t *a1, uint64_t a2)
{
  v4 = a1[1];
  result = _minimumMergeRunLength(_:)(v4);
  if (result < v4)
  {
    if (v4 >= -1)
    {
      v6 = result;
      if (v4 <= 1)
      {
        v7 = _swiftEmptyArrayStorage;
      }

      else
      {
        v7 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v7[2] = v4 / 2;
      }

      v9[0] = v7 + 4;
      v9[1] = v4 / 2;
      v8 = v7;
      sub_1001F98F0(v9, v10, a1, v6, a2);
      v8[2] = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v4 < 0)
  {
    goto LABEL_12;
  }

  if (v4)
  {
    return sub_1001F9844(0, v4, 1, a1, a2);
  }

  return result;
}

BOOL sub_1001F9844(_BOOL8 result, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  if (a3 != a2)
  {
    v5 = *a4;
    v6 = *a4 + 16 * a3 - 16;
    v7 = result - a3;
LABEL_5:
    v8 = *(v5 + 16 * a3);
    v9 = *(v5 + 16 * a3);
    v10 = __OFSUB__(a5, v9);
    v11 = a5 - v9;
    v12 = v10;
    v13 = v7;
    v14 = v6;
    while ((v12 & 1) == 0)
    {
      if (__OFSUB__(a5, *v14))
      {
        goto LABEL_19;
      }

      v15 = *(v14 + 8);
      result = v15 < *(&v8 + 1);
      v16 = a5 - *v14 < v11;
      if (*(&v8 + 1) != v15)
      {
        v16 = v15 < *(&v8 + 1);
      }

      if (v16)
      {
        if (!v5)
        {
          goto LABEL_20;
        }

        *(v14 + 16) = *v14;
        *v14 = v8;
        v14 -= 16;
        if (!__CFADD__(v13++, 1))
        {
          continue;
        }
      }

      ++a3;
      v6 += 16;
      --v7;
      if (a3 == a2)
      {
        return result;
      }

      goto LABEL_5;
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
  }

  return result;
}

uint64_t sub_1001F98F0(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v8 = result;
  v9 = a3[1];
  if (v9 < 1)
  {
    v12 = _swiftEmptyArrayStorage;
LABEL_104:
    v8 = *v8;
    if (!v8)
    {
      goto LABEL_148;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
LABEL_106:
      v92 = *(v12 + 2);
      if (v92 >= 2)
      {
        while (*a3)
        {
          v93 = *&v12[16 * v92];
          v94 = *&v12[16 * v92 + 24];
          sub_1001F9F1C(*a3 + 16 * v93, (*a3 + 16 * *&v12[16 * v92 + 16]), (*a3 + 16 * v94), v8, a5);
          if (v6)
          {
          }

          if (v94 < v93)
          {
            goto LABEL_133;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v12 = sub_10056D550(v12);
          }

          if (v92 - 2 >= *(v12 + 2))
          {
            goto LABEL_134;
          }

          v95 = &v12[16 * v92];
          *v95 = v93;
          *(v95 + 1) = v94;
          result = sub_10056D4C4(v92 - 1);
          v92 = *(v12 + 2);
          if (v92 <= 1)
          {
          }
        }

        goto LABEL_146;
      }
    }

LABEL_142:
    result = sub_10056D550(v12);
    v12 = result;
    goto LABEL_106;
  }

  v10 = a4;
  v11 = 0;
  v12 = _swiftEmptyArrayStorage;
  v97 = result;
  while (1)
  {
    v13 = v11++;
    if (v11 >= v9)
    {
      goto LABEL_29;
    }

    v14 = *a3;
    v15 = (*a3 + 16 * v11);
    v16 = a5 - *v15;
    if (__OFSUB__(a5, *v15))
    {
      goto LABEL_136;
    }

    v17 = (v14 + 16 * v13);
    if (__OFSUB__(a5, *v17))
    {
      goto LABEL_137;
    }

    v18 = v15[1];
    v19 = v17[1];
    v20 = a5 - *v17 < v16;
    if (v18 == v19)
    {
      v21 = v20;
    }

    else
    {
      v21 = v19 < v18;
    }

    v22 = v13 + 2;
    v23 = 16 * v13;
    v24 = (v14 + 16 * v13 + 32);
    do
    {
      if (v9 == v22)
      {
        v11 = v9;
        if (!v21)
        {
          goto LABEL_29;
        }

        goto LABEL_20;
      }

      if (__OFSUB__(a5, *v24))
      {
        goto LABEL_117;
      }

      v25 = *(v24 - 2);
      v62 = __OFSUB__(a5, v25);
      v26 = a5 - v25;
      if (v62)
      {
        goto LABEL_118;
      }

      v27 = v24[1];
      v28 = v26 >= a5 - *v24;
      if (v27 != v18)
      {
        v28 = v18 >= v27;
      }

      ++v22;
      v24 += 2;
      v18 = v27;
    }

    while (v21 != v28);
    v11 = v22 - 1;
    if (!v21)
    {
      goto LABEL_29;
    }

LABEL_20:
    if (v11 < v13)
    {
      goto LABEL_141;
    }

    if (v13 < v11)
    {
      v29 = 16 * v11 - 16;
      v30 = v11;
      v31 = v13;
      do
      {
        if (v31 != --v30)
        {
          v33 = *a3;
          if (!*a3)
          {
            goto LABEL_145;
          }

          v32 = *(v33 + v23);
          *(v33 + v23) = *(v33 + v29);
          *(v33 + v29) = v32;
        }

        ++v31;
        v29 -= 16;
        v23 += 16;
      }

      while (v31 < v30);
      v9 = a3[1];
    }

LABEL_29:
    if (v11 < v9)
    {
      if (__OFSUB__(v11, v13))
      {
        goto LABEL_138;
      }

      if (v11 - v13 < v10)
      {
        if (__OFADD__(v13, v10))
        {
          goto LABEL_139;
        }

        if (v13 + v10 < v9)
        {
          v9 = v13 + v10;
        }

        if (v9 < v13)
        {
          goto LABEL_140;
        }

        if (v11 != v9)
        {
          break;
        }
      }
    }

LABEL_53:
    if (v11 < v13)
    {
      goto LABEL_135;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_100097874(0, *(v12 + 2) + 1, 1, v12);
      v12 = result;
    }

    v47 = *(v12 + 2);
    v46 = *(v12 + 3);
    v48 = v47 + 1;
    if (v47 >= v46 >> 1)
    {
      result = sub_100097874((v46 > 1), v47 + 1, 1, v12);
      v12 = result;
    }

    *(v12 + 2) = v48;
    v49 = &v12[16 * v47];
    *(v49 + 4) = v13;
    *(v49 + 5) = v11;
    v50 = *v8;
    if (!*v8)
    {
      goto LABEL_147;
    }

    if (v47)
    {
      while (1)
      {
        v51 = v48 - 1;
        if (v48 >= 4)
        {
          break;
        }

        if (v48 == 3)
        {
          v52 = *(v12 + 4);
          v53 = *(v12 + 5);
          v62 = __OFSUB__(v53, v52);
          v54 = v53 - v52;
          v55 = v62;
LABEL_73:
          if (v55)
          {
            goto LABEL_124;
          }

          v68 = &v12[16 * v48];
          v70 = *v68;
          v69 = *(v68 + 1);
          v71 = __OFSUB__(v69, v70);
          v72 = v69 - v70;
          v73 = v71;
          if (v71)
          {
            goto LABEL_127;
          }

          v74 = &v12[16 * v51 + 32];
          v76 = *v74;
          v75 = *(v74 + 1);
          v62 = __OFSUB__(v75, v76);
          v77 = v75 - v76;
          if (v62)
          {
            goto LABEL_130;
          }

          if (__OFADD__(v72, v77))
          {
            goto LABEL_131;
          }

          if (v72 + v77 >= v54)
          {
            if (v54 < v77)
            {
              v51 = v48 - 2;
            }

            goto LABEL_94;
          }

          goto LABEL_87;
        }

        v78 = &v12[16 * v48];
        v80 = *v78;
        v79 = *(v78 + 1);
        v62 = __OFSUB__(v79, v80);
        v72 = v79 - v80;
        v73 = v62;
LABEL_87:
        if (v73)
        {
          goto LABEL_126;
        }

        v81 = &v12[16 * v51];
        v83 = *(v81 + 4);
        v82 = *(v81 + 5);
        v62 = __OFSUB__(v82, v83);
        v84 = v82 - v83;
        if (v62)
        {
          goto LABEL_129;
        }

        if (v84 < v72)
        {
          goto LABEL_3;
        }

LABEL_94:
        v8 = v51 - 1;
        if (v51 - 1 >= v48)
        {
          goto LABEL_119;
        }

        if (!*a3)
        {
          goto LABEL_144;
        }

        v89 = *&v12[16 * v8 + 32];
        v90 = *&v12[16 * v51 + 40];
        sub_1001F9F1C(*a3 + 16 * v89, (*a3 + 16 * *&v12[16 * v51 + 32]), (*a3 + 16 * v90), v50, a5);
        if (v6)
        {
        }

        if (v90 < v89)
        {
          goto LABEL_120;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v12 = sub_10056D550(v12);
        }

        if (v8 >= *(v12 + 2))
        {
          goto LABEL_121;
        }

        v91 = &v12[16 * v8];
        *(v91 + 4) = v89;
        *(v91 + 5) = v90;
        result = sub_10056D4C4(v51);
        v48 = *(v12 + 2);
        if (v48 <= 1)
        {
          goto LABEL_3;
        }
      }

      v56 = &v12[16 * v48 + 32];
      v57 = *(v56 - 64);
      v58 = *(v56 - 56);
      v62 = __OFSUB__(v58, v57);
      v59 = v58 - v57;
      if (v62)
      {
        goto LABEL_122;
      }

      v61 = *(v56 - 48);
      v60 = *(v56 - 40);
      v62 = __OFSUB__(v60, v61);
      v54 = v60 - v61;
      v55 = v62;
      if (v62)
      {
        goto LABEL_123;
      }

      v63 = &v12[16 * v48];
      v65 = *v63;
      v64 = *(v63 + 1);
      v62 = __OFSUB__(v64, v65);
      v66 = v64 - v65;
      if (v62)
      {
        goto LABEL_125;
      }

      v62 = __OFADD__(v54, v66);
      v67 = v54 + v66;
      if (v62)
      {
        goto LABEL_128;
      }

      if (v67 >= v59)
      {
        v85 = &v12[16 * v51 + 32];
        v87 = *v85;
        v86 = *(v85 + 1);
        v62 = __OFSUB__(v86, v87);
        v88 = v86 - v87;
        if (v62)
        {
          goto LABEL_132;
        }

        if (v54 < v88)
        {
          v51 = v48 - 2;
        }

        goto LABEL_94;
      }

      goto LABEL_73;
    }

LABEL_3:
    v8 = v97;
    v9 = a3[1];
    v10 = a4;
    if (v11 >= v9)
    {
      goto LABEL_104;
    }
  }

  v34 = *a3;
  v35 = *a3 + 16 * v11 - 16;
  v36 = v13 - v11;
LABEL_39:
  v37 = *(v34 + 16 * v11);
  v38 = *(v34 + 16 * v11);
  v62 = __OFSUB__(a5, v38);
  v39 = a5 - v38;
  v40 = v62;
  v41 = v36;
  v42 = v35;
  while (1)
  {
    if (v40)
    {
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
LABEL_137:
      __break(1u);
LABEL_138:
      __break(1u);
LABEL_139:
      __break(1u);
LABEL_140:
      __break(1u);
LABEL_141:
      __break(1u);
      goto LABEL_142;
    }

    if (__OFSUB__(a5, *v42))
    {
      goto LABEL_116;
    }

    v43 = *(v42 + 8);
    result = v43 < *(&v37 + 1);
    v44 = a5 - *v42 < v39;
    if (*(&v37 + 1) != v43)
    {
      v44 = v43 < *(&v37 + 1);
    }

    if (!v44)
    {
LABEL_38:
      ++v11;
      v35 += 16;
      --v36;
      if (v11 == v9)
      {
        v11 = v9;
        goto LABEL_53;
      }

      goto LABEL_39;
    }

    if (!v34)
    {
      break;
    }

    *(v42 + 16) = *v42;
    *v42 = v37;
    v42 -= 16;
    if (__CFADD__(v41++, 1))
    {
      goto LABEL_38;
    }
  }

  __break(1u);
LABEL_144:
  __break(1u);
LABEL_145:
  __break(1u);
LABEL_146:
  __break(1u);
LABEL_147:
  __break(1u);
LABEL_148:
  __break(1u);
  return result;
}

uint64_t sub_1001F9F1C(uint64_t __dst, char *__src, char *a3, char *a4, uint64_t a5)
{
  v6 = a4;
  v7 = a3;
  v8 = __src;
  v9 = __dst;
  v10 = &__src[-__dst];
  v11 = &__src[-__dst + 15];
  if (&__src[-__dst] >= 0)
  {
    v11 = &__src[-__dst];
  }

  v12 = v11 >> 4;
  v13 = a3 - __src;
  v14 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v14 = a3 - __src;
  }

  v15 = v14 >> 4;
  if (v12 < v14 >> 4)
  {
    if (a4 != __dst || __dst + 16 * v12 <= a4)
    {
      __dst = memmove(a4, __dst, 16 * v12);
    }

    v16 = &v6[16 * v12];
    if (v10 < 16)
    {
LABEL_10:
      v8 = v9;
LABEL_43:
      v29 = v16 - v6 + (v16 - v6 < 0 ? 0xFuLL : 0);
      if (v8 != v6 || v8 >= &v6[v29 & 0xFFFFFFFFFFFFFFF0])
      {
        memmove(v8, v6, 16 * (v29 >> 4));
      }

      return 1;
    }

    while (1)
    {
      if (v8 >= v7)
      {
        goto LABEL_10;
      }

      if (__OFSUB__(a5, *v8))
      {
        __break(1u);
        goto LABEL_48;
      }

      if (__OFSUB__(a5, *v6))
      {
        goto LABEL_50;
      }

      v19 = *(v8 + 1);
      v20 = *(v6 + 1);
      v21 = a5 - *v6 < a5 - *v8;
      if (v19 != v20)
      {
        v21 = v20 < v19;
      }

      if (v21)
      {
        break;
      }

      v17 = v6;
      v18 = v9 == v6;
      v6 += 16;
      if (!v18)
      {
        goto LABEL_12;
      }

LABEL_13:
      v9 += 16;
      if (v6 >= v16)
      {
        goto LABEL_10;
      }
    }

    v17 = v8;
    v18 = v9 == v8;
    v8 += 16;
    if (v18)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v9 = *v17;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[16 * v15] <= a4)
  {
    __dst = memmove(a4, __src, 16 * v15);
  }

  v16 = &v6[16 * v15];
  if (v13 < 16 || v8 <= v9)
  {
    goto LABEL_43;
  }

LABEL_28:
  v22 = v8 - 16;
  v7 -= 16;
  v23 = v16;
  while (1)
  {
    v24 = *(v23 - 16);
    v23 -= 16;
    v25 = a5 - v24;
    if (__OFSUB__(a5, v24))
    {
      break;
    }

    if (__OFSUB__(a5, *v22))
    {
      goto LABEL_49;
    }

    v26 = *(v23 + 8);
    v27 = *(v8 - 1);
    v28 = a5 - *v22 < v25;
    if (v26 != v27)
    {
      v28 = v27 < v26;
    }

    if (v28)
    {
      if (v7 + 16 != v8)
      {
        *v7 = *v22;
      }

      if (v16 <= v6 || (v8 -= 16, v22 <= v9))
      {
        v8 = v22;
        goto LABEL_43;
      }

      goto LABEL_28;
    }

    if (v7 + 16 != v16)
    {
      *v7 = *v23;
    }

    v7 -= 16;
    v16 = v23;
    if (v23 <= v6)
    {
      v16 = v23;
      goto LABEL_43;
    }
  }

LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
  return __dst;
}

uint64_t sub_1001FA1D4(uint64_t a1, uint64_t a2)
{
  if ((a2 - 1) >= 2)
  {
  }

  return result;
}

uint64_t sub_1001FA208(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000CE6B8(&unk_10190EB90);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001FA278(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1001FA2E0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1001FA340(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1001FA7E8()
{
  v1 = v0;
  v2 = sub_1000CE6B8(&qword_1019112B0);
  v3 = v2 - 8;
  __chkstk_darwin(v2);
  v5 = &v33[-v4];
  v6 = sub_1000CE6B8(&qword_1019112B8);
  __chkstk_darwin(v6 - 8);
  v38 = &v33[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v8);
  v41 = &v33[-v9];
  __chkstk_darwin(v10);
  v12 = &v33[-v11];
  v13 = type metadata accessor for MapsDesignConstants.ColumnViews.ContainerSize();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v35 = &v33[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v16);
  v18 = &v33[-v17];
  v19 = type metadata accessor for SearchHomeGuideCell();
  v42.receiver = v1;
  v42.super_class = v19;
  objc_msgSendSuper2(&v42, "layoutSubviews");
  v20 = [v1 contentView];
  [v20 frame];

  static MapsDesignConstants.ColumnViews.containerSize(for:)();
  v21 = *(v14 + 16);
  v40 = v18;
  v37 = v21;
  v21(v12, v18, v13);
  v36 = *(v14 + 56);
  v36(v12, 0, 1, v13);
  v22 = OBJC_IVAR____TtC4Maps19SearchHomeGuideCell_currentContainerSize;
  swift_beginAccess();
  v23 = *(v3 + 56);
  sub_1001D6DF8(v12, v5);
  v39 = v1;
  sub_1001D6DF8(v1 + v22, &v5[v23]);
  v24 = *(v14 + 48);
  if (v24(v5, 1, v13) != 1)
  {
    sub_1001D6DF8(v5, v41);
    if (v24(&v5[v23], 1, v13) != 1)
    {
      v30 = &v5[v23];
      v31 = v35;
      (*(v14 + 32))(v35, v30, v13);
      sub_1001FD390(&qword_101922B90, &type metadata accessor for MapsDesignConstants.ColumnViews.ContainerSize);
      v34 = dispatch thunk of static Equatable.== infix(_:_:)();
      v32 = *(v14 + 8);
      v32(v31, v13);
      sub_100024F64(v12, &qword_1019112B8);
      v32(v41, v13);
      sub_100024F64(v5, &qword_1019112B8);
      v26 = v40;
      if (v34)
      {
        return (*(v14 + 8))(v26, v13);
      }

      goto LABEL_7;
    }

    sub_100024F64(v12, &qword_1019112B8);
    (*(v14 + 8))(v41, v13);
    v26 = v40;
LABEL_6:
    sub_100024F64(v5, &qword_1019112B0);
LABEL_7:
    v27 = v38;
    v37(v38, v26, v13);
    v36(v27, 0, 1, v13);
    v28 = v39;
    swift_beginAccess();
    sub_1001D6E68(v27, v28 + v22);
    swift_endAccess();
    [v28 setNeedsUpdateConfiguration];
    return (*(v14 + 8))(v26, v13);
  }

  sub_100024F64(v12, &qword_1019112B8);
  v25 = v24(&v5[v23], 1, v13);
  v26 = v40;
  if (v25 != 1)
  {
    goto LABEL_6;
  }

  sub_100024F64(v5, &qword_1019112B8);
  return (*(v14 + 8))(v26, v13);
}

uint64_t sub_1001FAD54()
{
  v87 = type metadata accessor for UUID();
  v77 = *(v87 - 8);
  __chkstk_darwin(v87);
  v86 = &v66 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_1000CE6B8(&qword_101911290);
  __chkstk_darwin(v2 - 8);
  v85 = &v66 - v3;
  v84 = type metadata accessor for GuideTileViewModel.GuideType();
  v78 = *(v84 - 8);
  __chkstk_darwin(v84);
  v5 = &v66 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = type metadata accessor for GuideTileViewModel();
  v89 = *(v83 - 8);
  __chkstk_darwin(v83);
  v88 = &v66 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000CE6B8(&qword_1019112A8);
  v73 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v66 - v8;
  v74 = type metadata accessor for ColumnViewConfig();
  v10 = *(v74 - 8);
  __chkstk_darwin(v74);
  v12 = &v66 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for MapsDesignConstants.ColumnViews.ContainerSize();
  v72 = *(v13 - 8);
  __chkstk_darwin(v13);
  v71 = &v66 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = sub_1000CE6B8(&qword_101911F68);
  Description = v90[-1].Description;
  __chkstk_darwin(v90);
  v16 = &v66 - v15;
  isa = UICellConfigurationState._bridgeToObjectiveC()().super.super.isa;
  v18 = type metadata accessor for SearchHomeGuideCell();
  v98.receiver = v0;
  v98.super_class = v18;
  objc_msgSendSuper2(&v98, "_bridgedUpdateConfigurationUsingState:", isa);

  v19 = [PlaceSummaryTableViewCell canBecomeFirstResponder]_0(v0);
  v20 = *&v0[OBJC_IVAR____TtC4Maps19SearchHomeGuideCell_guideViewModels];
  v91 = v20;
  v92 = v0;
  v21 = v20 >> 62;
  if (v19)
  {
    if (v21)
    {
      goto LABEL_41;
    }

    for (i = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = v64)
    {
      v23 = _swiftEmptyArrayStorage;
      if (!i)
      {
        break;
      }

      v94[0] = _swiftEmptyArrayStorage;
      v24 = v20;

      specialized ContiguousArray.reserveCapacity(_:)();
      if (i < 0)
      {
        goto LABEL_47;
      }

      v25 = 0;
      while (1)
      {
        v26 = v25 + 1;
        if (__OFADD__(v25, 1))
        {
          break;
        }

        if ((v24 & 0xC000000000000001) != 0)
        {
          v27 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v25 >= *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_39;
          }

          v27 = *(v91 + 8 * v25 + 32);
        }

        v28 = v27;
        v97 = v27;
        sub_1001FBAC0(&v97, v92, v93);

        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        ++v25;
        if (v26 == i)
        {

          v23 = v94[0];
          goto LABEL_14;
        }
      }

LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      v63 = v20;
      v64 = _CocoaArrayWrapper.endIndex.getter();
      v20 = v63;
    }

LABEL_14:
    if (v23 >> 62)
    {
      v29 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v29 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v30 = round(v29 / 3.0);
    if ((*&v30 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v30 > -9.22337204e18)
    {
      if (v30 < 9.22337204e18)
      {
        v31 = sub_1004D085C(v30, 3, v23);
        __chkstk_darwin(v31);
        sub_1000CE6B8(&qword_101911F80);
        sub_1000414C8(&qword_101911F88, &qword_101911F80);
        UIHostingConfiguration<>.init(content:)();

        static Edge.Set.all.getter();
        v32 = v90;
        v95 = v90;
        v96 = sub_1000414C8(&qword_101911F90, &qword_101911F68);
        sub_10001A848(v94);
        UIHostingConfiguration.margins(_:_:)();
        (*(Description + 8))(v16, v32);
        return UICollectionViewCell.contentConfiguration.setter();
      }

LABEL_46:
      __break(1u);
LABEL_47:
      __break(1u);
      goto LABEL_48;
    }

    __break(1u);
    goto LABEL_46;
  }

  if (v21)
  {
    v65 = v20;
    v34 = _CocoaArrayWrapper.endIndex.getter();
    v20 = v65;
  }

  else
  {
    v34 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v70 = v7;
  v69 = v10;
  v68 = v9;
  v67 = v12;
  v66 = v13;
  if (!v34)
  {
LABEL_36:
    v56 = v73;
    v57 = [v92 contentView];
    [v57 frame];

    v58 = v71;
    static MapsDesignConstants.ColumnViews.containerSize(for:)();
    v59 = v67;
    v60 = static MapsDesignConstants.ColumnViews.SearchHome.exploreGuidesColumnViewConfig(itemCount:containerSize:)();
    __chkstk_darwin(v60);
    sub_1000CE6B8(&qword_1019112C0);
    sub_1000414C8(&qword_1019112C8, &qword_1019112C0);
    v61 = v68;
    UIHostingConfiguration<>.init(content:)();

    static Edge.Set.all.getter();
    v62 = v70;
    v95 = v70;
    v96 = sub_1000414C8(&qword_1019112D0, &qword_1019112A8);
    sub_10001A848(v94);
    UIHostingConfiguration.margins(_:_:)();
    (*(v56 + 8))(v61, v62);
    UICollectionViewCell.contentConfiguration.setter();
    (*(v72 + 8))(v58, v66);
    return (*(v69 + 8))(v59, v74);
  }

  v97 = _swiftEmptyArrayStorage;
  v35 = v34 & ~(v34 >> 63);
  v36 = v20;
  Description = v34;

  sub_100511724(0, v35, 0);
  if ((Description & 0x8000000000000000) == 0)
  {
    v37 = 0;
    v16 = v97;
    v38 = v36;
    v81 = v36 & 0xC000000000000001;
    v75 = v36 & 0xFFFFFFFFFFFFFF8;
    v79 = enum case for GuideTileViewModel.GuideType.publisher(_:);
    v78 += 13;
    ++v77;
    v20 = &v99;
    v76 = v89 + 32;
    v80 = v5;
    do
    {
      v39 = v37 + 1;
      if (__OFADD__(v37, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v81)
      {
        v40 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v37 >= *(v75 + 16))
        {
          goto LABEL_40;
        }

        v40 = *(v38 + 8 * v37 + 32);
      }

      v41 = v40;
      (*v78)(v5, v79, v84);
      v42 = [v41 collectionTitle];
      v90 = v16;
      if (v42)
      {
        v43 = v42;
        v44 = [v42 string];

        static String._unconditionallyBridgeFromObjectiveC(_:)();
      }

      v45 = v41;
      [v92 bounds];
      v47 = v46 * 0.5;
      v48 = v46 * 0.5 * 1.33333333;
      v95 = &type metadata for GuideImageProvider;
      v96 = sub_1001FD1BC();
      v94[0] = v45;
      *&v94[1] = v47;
      *&v94[2] = v48;
      v93[3] = &type metadata for PublisherImageProvider;
      v93[4] = sub_1001FD210();
      v93[0] = v45;
      v49 = type metadata accessor for PhotoFanViewModel();
      (*(*(v49 - 8) + 56))(v85, 1, 1, v49);
      v50 = v45;
      v51 = [v50 backgroundColor];
      Color.init(_:)();
      v52 = v86;
      UUID.init()();
      UUID.uuidString.getter();
      (*v77)(v52, v87);
      v53 = v88;
      v5 = v80;
      GuideTileViewModel.init(id:_:title:subtitle:imageProvider:logoProvider:photoFanView:placeholderColor:)();

      v16 = v90;
      v97 = v90;
      Kind = v90[1].Kind;
      v54 = v90[1].Description;
      if (Kind >= v54 >> 1)
      {
        sub_100511724(v54 > 1, Kind + 1, 1);
        v53 = v88;
        v16 = v97;
      }

      *(v16 + 2) = Kind + 1;
      (*(v89 + 32))(&v16[((*(v89 + 80) + 32) & ~*(v89 + 80)) + *(v89 + 72) * Kind], v53, v83);
      ++v37;
      v38 = v91;
    }

    while (v39 != Description);

    goto LABEL_36;
  }

LABEL_48:
  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_1001FBAC0@<X0>(id *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v43 = a3;
  v5 = type metadata accessor for UUID();
  __chkstk_darwin(v5 - 8);
  v42 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000CE6B8(&unk_10190D5B0);
  __chkstk_darwin(v7 - 8);
  v41 = &v35 - v8;
  v9 = type metadata accessor for RichTextType();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v39 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v35 - v13;
  v15 = *a1;
  [a2 bounds];
  v17 = v16 * 0.5;
  v18 = v16 * 0.5 * 1.33333333;
  v51 = &type metadata for GuideImageProvider;
  v52 = sub_1001FD1BC();
  v48 = v15;
  v49 = v17;
  v50 = v18;
  v47 = 0;
  v45 = 0u;
  v46 = 0u;
  sub_1000CE6B8(&unk_1019157F0);
  v44 = swift_allocObject();
  *(v44 + 16) = xmmword_1011E1D60;
  v19 = sub_1000CE6B8(&qword_10190A070);
  type metadata accessor for RichTextViewModel();
  v37 = v19;
  v20 = swift_allocObject();
  v35 = xmmword_1011E1D30;
  *(v20 + 16) = xmmword_1011E1D30;
  v40 = v10;
  v21 = *(v10 + 104);
  v53 = v9;
  v36 = v21;
  v21(v14, enum case for RichTextType.title(_:), v9);
  v38 = v15;
  v22 = [v15 collectionTitle];
  if (v22)
  {
    v23 = v22;
    v24 = [v22 string];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  RichTextType.set(_:symbol:color:iconProviders:highlightRanges:lineLimit:priority:)();

  v25 = *(v40 + 8);
  v26 = v14;
  v27 = v53;
  v25(v26, v53);
  *(v44 + 32) = v20;
  v28 = swift_allocObject();
  *(v28 + 16) = v35;
  v29 = v39;
  v36(v39, enum case for RichTextType.line(_:), v27);
  v30 = [v38 secondaryCollectionTitle];
  if (v30)
  {
    v31 = v30;
    v32 = [v30 string];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  RichTextType.set(_:symbol:color:iconProviders:highlightRanges:lineLimit:priority:)();

  v25(v29, v53);
  *(v44 + 40) = v28;
  v33 = type metadata accessor for BottomAccessoryViewModel();
  (*(*(v33 - 8) + 56))(v41, 1, 1, v33);
  UUID.init()();
  type metadata accessor for ListCellViewModel();
  swift_allocObject();
  result = ListCellViewModel.init(id:imageProvider:imageOverlayProvider:imagePlaceholder:title:query:richTextViews:leadingAccessory:trailingAccessory:contextLineAccessory:bottomAccessory:active:isSelected:leadingSwipeActions:trailingSwipeActions:menuActions:allowsFullSwipe:)();
  *v43 = result;
  return result;
}

uint64_t sub_1001FC040(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ColumnViewConfig();
  __chkstk_darwin(v6 - 8);
  type metadata accessor for MainActor();
  v7 = a1;
  v8 = static MainActor.shared.getter();
  v9 = swift_allocObject();
  v9[2] = v8;
  v9[3] = &protocol witness table for MainActor;
  v9[4] = v7;
  v10 = v7;
  v11 = static MainActor.shared.getter();
  v12 = swift_allocObject();
  v12[2] = v11;
  v12[3] = &protocol witness table for MainActor;
  v12[4] = v10;
  sub_1000CE6B8(&qword_101922B10);
  Binding.init(get:set:)();
  static MapsDesignConstants.Spacing.gridHorizontalPadding.getter();
  static MapsDesignConstants.Spacing.gridHorizontalGutter.getter();
  ColumnViewConfig.init(itemCount:columnCount:span:aspectRatio:padding:gutter:)();
  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v14 = swift_allocObject();
  v14[2] = a2;
  v14[3] = v13;
  v14[4] = a3;

  sub_1000CE6B8(&qword_101911F98);
  sub_1000414C8(&qword_101911FA0, &qword_101911F98);
  return ColumnView.init(config:scrollIndex:columnBuilder:)();
}

uint64_t sub_1001FC2C4@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  *a4 = static HorizontalAlignment.center.getter();
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  result = sub_1000CE6B8(&qword_101911FA8);
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(a2 + 16) > a1)
  {

    sub_100484ECC(v9);

    swift_getKeyPath();
    v10 = swift_allocObject();
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    swift_unknownObjectWeakInit();

    v12 = swift_allocObject();
    *(v12 + 16) = v10;
    *(v12 + 24) = a3;
    v13 = swift_allocObject();
    *(v13 + 16) = sub_1001FD288;
    *(v13 + 24) = v12;

    sub_1000CE6B8(&qword_101922B40);
    type metadata accessor for GuideCell();
    sub_1000414C8(&qword_101922B50, &qword_101922B40);
    sub_1001FD390(&qword_1019156D0, &type metadata accessor for UUID);
    sub_1001FD390(&qword_101911FB0, &type metadata accessor for GuideCell);
    return ForEach<>.init(_:id:content:)();
  }

  __break(1u);
  return result;
}

uint64_t sub_1001FC51C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for GuideCell.GuideCellType();
  v7 = __chkstk_darwin(v6);
  (*(v9 + 104))(&v14[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)], enum case for GuideCell.GuideCellType.mediumImageLeft(_:), v7);
  v16 = type metadata accessor for ListCellViewModel();
  v17 = sub_1001FD390(&qword_10190B068, &type metadata accessor for ListCellViewModel);
  v15 = a2;
  v10 = swift_allocObject();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  v12 = swift_allocObject();
  v12[2] = v10;
  v12[3] = a4;
  v12[4] = a2;

  return GuideCell.init(_:model:leadingCellActions:trailingCellActions:tapHandler:)();
}

void sub_1001FC6F4(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v29 = a3;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v26 - v9;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    v13 = OBJC_IVAR____TtC4Maps19SearchHomeGuideCell_sectionIndex;
    v14 = *(Strong + OBJC_IVAR____TtC4Maps19SearchHomeGuideCell_sectionIndex);
    if (v14 == NSNotFound.getter())
    {

      return;
    }

    v26 = v13;
    v27 = v12;
    if (a2 >> 62)
    {
LABEL_24:
      v28 = a2 & 0xFFFFFFFFFFFFFF8;
      v15 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v28 = a2 & 0xFFFFFFFFFFFFFF8;
      v15 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v16 = 0;
    v17 = a2 & 0xC000000000000001;
    v18 = (v5 + 8);
    while (1)
    {
      if (v15 == v16)
      {
        goto LABEL_26;
      }

      if (v17)
      {
        v19 = a2;
        specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v16 >= *(v28 + 16))
        {
          __break(1u);
LABEL_23:
          __break(1u);
          goto LABEL_24;
        }

        v19 = a2;
      }

      dispatch thunk of ListCellViewModel.id.getter();
      dispatch thunk of ListCellViewModel.id.getter();
      v5 = static UUID.== infix(_:_:)();

      v20 = *v18;
      (*v18)(v7, v4);
      v20(v10, v4);
      if (v5)
      {
        break;
      }

      v21 = __OFADD__(v16++, 1);
      a2 = v19;
      if (v21)
      {
        goto LABEL_23;
      }
    }

    v22 = *&v27[OBJC_IVAR____TtC4Maps19SearchHomeGuideCell_guideViewModels];
    if (v22 >> 62)
    {
      if (v16 < _CocoaArrayWrapper.endIndex.getter())
      {
LABEL_18:
        v23 = v27;
        v24 = swift_unknownObjectWeakLoadStrong();
        if (v24)
        {
          [v24 didSelectGuideModelAtIndex:v16 sectionIndex:*&v23[v26]];

          swift_unknownObjectRelease();
        }

        else
        {
        }

        return;
      }
    }

    else if (v16 < *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_18;
    }

LABEL_26:
    v31 = 0;
    v32 = 0xE000000000000000;
    _StringGuts.grow(_:)(36);

    v31 = 0xD000000000000022;
    v32 = 0x80000001012235C0;
    v30 = v29;
    type metadata accessor for ListCellViewModel();

    v25._countAndFlagsBits = String.init<A>(describing:)();
    String.append(_:)(v25);

    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }
}

uint64_t sub_1001FCA60@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v20[1] = a4;
  v7 = type metadata accessor for ColumnViewConfig();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for MainActor();
  v11 = a1;
  v12 = static MainActor.shared.getter();
  v13 = swift_allocObject();
  v13[2] = v12;
  v13[3] = &protocol witness table for MainActor;
  v13[4] = v11;
  v14 = v11;
  v15 = static MainActor.shared.getter();
  v16 = swift_allocObject();
  v16[2] = v15;
  v16[3] = &protocol witness table for MainActor;
  v16[4] = v14;
  sub_1000CE6B8(&qword_101922B10);
  Binding.init(get:set:)();
  (*(v8 + 16))(v10, a2, v7);
  v17 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v18 = swift_allocObject();
  *(v18 + 16) = a3;
  *(v18 + 24) = v17;

  sub_1000CE6B8(&qword_1019112D8);
  sub_1001D6F30();
  return ColumnView.init(config:scrollIndex:columnBuilder:)();
}

void sub_1001FCCBC(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for GuideTileViewModel();
  v9 = __chkstk_darwin(v6);
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(a2 + 16) > a1)
  {
    (*(v8 + 16))(&v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a2 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * a1, v9);
    v10 = swift_allocObject();
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    swift_unknownObjectWeakInit();

    v12 = swift_allocObject();
    *(v12 + 16) = v10;
    *(v12 + 24) = a1;
    GuideTile.init(model:menuActions:tapHandler:)();
    v13 = a3 + *(sub_1000CE6B8(&qword_1019112D8) + 36);
    *v13 = 0x3FE8000000000000;
    *(v13 + 8) = 0;
    return;
  }

  __break(1u);
}

void sub_1001FCE70(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = OBJC_IVAR____TtC4Maps19SearchHomeGuideCell_sectionIndex;
    v6 = *(Strong + OBJC_IVAR____TtC4Maps19SearchHomeGuideCell_sectionIndex);
    if (v6 == NSNotFound.getter() || (v7 = swift_unknownObjectWeakLoadStrong()) == 0)
    {
    }

    else if (a2 < 0)
    {
      __break(1u);
    }

    else
    {
      [v7 didSelectGuideModelAtIndex:a2 sectionIndex:*&v4[v5]];

      swift_unknownObjectRelease();
    }
  }
}

id sub_1001FD010()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SearchHomeGuideCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for SearchHomeGuideCell()
{
  result = qword_101911F58;
  if (!qword_101911F58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1001FD0FC()
{
  sub_1001D66BC();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

unint64_t sub_1001FD1BC()
{
  result = qword_101911F70;
  if (!qword_101911F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101911F70);
  }

  return result;
}

unint64_t sub_1001FD210()
{
  result = qword_101911F78;
  if (!qword_101911F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101911F78);
  }

  return result;
}

uint64_t sub_1001FD2C0(void (*a1)(void), void (*a2)(void))
{
  a1(v2[2]);
  a2(v2[3]);
  a1(v2[4]);

  return _swift_deallocObject(v2, 40, 7);
}

void sub_1001FD338(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32) + OBJC_IVAR____TtC4Maps19SearchHomeGuideCell_scrollIndex;
  v3 = *v2;
  LOBYTE(v2) = *(v2 + 8);
  *a1 = v3;
  *(a1 + 8) = v2;
}

uint64_t sub_1001FD35C(uint64_t result)
{
  v2 = *(result + 8);
  v3 = *(v1 + 32) + OBJC_IVAR____TtC4Maps19SearchHomeGuideCell_scrollIndex;
  *v3 = *result;
  *(v3 + 8) = v2;
  return result;
}

uint64_t sub_1001FD390(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1001FD3D8()
{
  result = qword_101911FB8;
  if (!qword_101911FB8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_101911FB8);
  }

  return result;
}

id sub_1001FD42C()
{
  if (qword_101906768 != -1)
  {
    swift_once();
  }

  v1.super.isa = qword_1019600D8;
  v41._object = 0x80000001012236C0;
  v2._countAndFlagsBits = 0xD000000000000033;
  v2._object = 0x8000000101223660;
  v3._object = 0x80000001012236A0;
  v41._countAndFlagsBits = 0xD000000000000043;
  v3._countAndFlagsBits = 0xD000000000000011;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v2, 0, qword_1019600D8, v3, v41);
  sub_1001FDAF0();
  v4 = String._bridgeToObjectiveC()();
  v5 = String._bridgeToObjectiveC()();

  v6 = [objc_opt_self() alertControllerWithTitle:v4 message:v5 preferredStyle:1];

  result = [v6 view];
  if (result)
  {
    v8 = result;

    v9 = String._bridgeToObjectiveC()();
    [v8 setAccessibilityIdentifier:v9];

    v42._object = 0x8000000101223750;
    v10._countAndFlagsBits = 0x6C41207261656C43;
    v11._countAndFlagsBits = 0xD00000000000003DLL;
    v11._object = 0x8000000101223710;
    v42._countAndFlagsBits = 0xD00000000000004ALL;
    v10._object = 0xE90000000000006CLL;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v11, 0, v1, v10, v42);
    v12 = swift_allocObject();
    swift_weakInit();

    v13 = String._bridgeToObjectiveC()();

    v39 = sub_1001FDDF8;
    v40 = v12;
    v36 = 1107296256;
    aBlock = _NSConcreteStackBlock;
    v37 = sub_1001FDE68;
    v38 = &unk_10160A480;
    v14 = _Block_copy(&aBlock);

    v15 = objc_opt_self();
    v16 = [v15 actionWithTitle:v13 style:2 handler:v14];
    _Block_release(v14);

    v17 = v16;
    v18 = String._bridgeToObjectiveC()();
    [v17 setAccessibilityIdentifier:v18];

    [v6 addAction:v17];
    if (*(v0 + 24) == 1)
    {
      v43._object = 0x80000001012238A0;
      v19._countAndFlagsBits = 0xD00000000000004DLL;
      v19._object = 0x8000000101223830;
      v20._countAndFlagsBits = 0xD000000000000019;
      v20._object = 0x8000000101223880;
      v43._countAndFlagsBits = 0xD00000000000005CLL;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v19, 0, v1, v20, v43);
      v21 = swift_allocObject();
      swift_weakInit();

      v22 = String._bridgeToObjectiveC()();

      v39 = sub_1001FDE38;
      v40 = v21;
      aBlock = _NSConcreteStackBlock;
      v36 = 1107296256;
      v37 = sub_1001FDE68;
      v38 = &unk_10160A4D0;
      v23 = _Block_copy(&aBlock);

      v24 = [v15 actionWithTitle:v22 style:2 handler:v23];
      _Block_release(v23);

      v25 = v24;
      v26 = String._bridgeToObjectiveC()();
      [v25 setAccessibilityIdentifier:v26];

      [v6 addAction:v25];
    }

    v44._object = 0x80000001012237E0;
    v27._countAndFlagsBits = 0x6C65636E6143;
    v28._countAndFlagsBits = 0xD00000000000003ALL;
    v28._object = 0x80000001012237A0;
    v44._countAndFlagsBits = 0xD000000000000047;
    v27._object = 0xE600000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v28, 0, v1, v27, v44);
    v29 = swift_allocObject();
    swift_weakInit();

    v30 = String._bridgeToObjectiveC()();

    v39 = sub_1001FDE18;
    v40 = v29;
    aBlock = _NSConcreteStackBlock;
    v36 = 1107296256;
    v37 = sub_1001FDE68;
    v38 = &unk_10160A4A8;
    v31 = _Block_copy(&aBlock);

    v32 = [v15 actionWithTitle:v30 style:1 handler:v31];
    _Block_release(v31);

    v33 = v32;
    v34 = String._bridgeToObjectiveC()();
    [v33 setAccessibilityIdentifier:v34];

    [v6 addAction:v33];
    return v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1001FDAF0()
{
  if (*(v0 + 24) == 1)
  {
    if (qword_101906768 != -1)
    {
      swift_once();
    }

    v1 = qword_1019600D8;
  }

  else
  {
    if (qword_101906768 != -1)
    {
      swift_once();
    }

    v1 = qword_1019600D8;
  }

  v2 = String._bridgeToObjectiveC()();
  v3 = String._bridgeToObjectiveC()();
  v4 = [v1 localizedStringForKey:v2 value:v3 table:0];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_1000CE6B8(&unk_10190D5C0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1011E1D30;
  v6 = *(v0 + 16);
  *(v5 + 56) = &type metadata for Int;
  *(v5 + 64) = &protocol witness table for Int;
  *(v5 + 32) = v6;
  v7 = static String.localizedStringWithFormat(_:_:)();

  return v7;
}

uint64_t sub_1001FDC9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v5 = *(result + 32);
    if (v5)
    {
      sub_1000CD9D4(*(result + 32));

      v5(a3);
      return sub_1000588AC(v5);
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_1001FDD34()
{
  sub_1000588AC(*(v0 + 32));

  return swift_deallocClassInstance();
}

unint64_t sub_1001FDDA4()
{
  result = qword_101912070;
  if (!qword_101912070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101912070);
  }

  return result;
}

void sub_1001FDE68(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

id sub_1001FDED0()
{
  if (qword_101906768 != -1)
  {
    swift_once();
  }

  v1.super.isa = qword_1019600D8;
  v47._object = 0x800000010121F5E0;
  v2._countAndFlagsBits = 0xD00000000000002CLL;
  v2._object = 0x8000000101223A50;
  v3._countAndFlagsBits = 0xD000000000000018;
  v3._object = 0x8000000101223A80;
  v47._countAndFlagsBits = 0xD000000000000041;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v2, 0, qword_1019600D8, v3, v47);
  sub_1000CE6B8(&unk_10190D5C0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1011E1D30;
  v5 = v0[2];
  v6 = v0[3];
  *(v4 + 56) = &type metadata for String;
  *(v4 + 64) = sub_1000DA61C();
  *(v4 + 32) = v5;
  *(v4 + 40) = v6;

  static String.localizedStringWithFormat(_:_:)();

  v7 = String._bridgeToObjectiveC()();

  v8 = [objc_opt_self() alertControllerWithTitle:0 message:v7 preferredStyle:1];

  result = [v8 view];
  if (result)
  {
    v10 = result;
    v11 = String._bridgeToObjectiveC()();
    [v10 setAccessibilityIdentifier:v11];

    v12._countAndFlagsBits = 0xD000000000000011;
    v48._object = 0x8000000101223B20;
    v13._countAndFlagsBits = 0xD00000000000003DLL;
    v13._object = 0x8000000101223AC0;
    v12._object = 0x8000000101223B00;
    v48._countAndFlagsBits = 0xD00000000000002FLL;
    isa = v1.super.isa;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v13, 0, v1, v12, v48);
    v14 = swift_allocObject();
    swift_weakInit();

    v15 = String._bridgeToObjectiveC()();

    v45 = sub_1001FE7A4;
    v46 = v14;
    aBlock = _NSConcreteStackBlock;
    v42 = 1107296256;
    v43 = sub_1001FDE68;
    v44 = &unk_10160A5B0;
    v16 = _Block_copy(&aBlock);

    v39 = objc_opt_self();
    v17 = [v39 actionWithTitle:v15 style:2 handler:v16];
    _Block_release(v16);

    v18 = v17;
    v19 = String._bridgeToObjectiveC()();
    [v18 setAccessibilityIdentifier:v19];

    [v8 addAction:v18];
    v20 = v0[4];
    if (v20 >= 2)
    {
      v21 = String._bridgeToObjectiveC()();
      v22 = String._bridgeToObjectiveC()();
      v23 = [(objc_class *)isa localizedStringForKey:v21 value:v22 table:0];

      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v24 = swift_allocObject();
      *(v24 + 16) = xmmword_1011E1D30;
      *(v24 + 56) = &type metadata for Int;
      *(v24 + 64) = &protocol witness table for Int;
      *(v24 + 32) = v20;
      static String.localizedStringWithFormat(_:_:)();

      v25 = swift_allocObject();
      swift_weakInit();

      v26 = String._bridgeToObjectiveC()();

      v45 = sub_1001FE7E4;
      v46 = v25;
      aBlock = _NSConcreteStackBlock;
      v42 = 1107296256;
      v43 = sub_1001FDE68;
      v44 = &unk_10160A600;
      v27 = _Block_copy(&aBlock);

      v28 = [v39 actionWithTitle:v26 style:2 handler:v27];
      _Block_release(v27);

      v29 = v28;
      v30 = String._bridgeToObjectiveC()();
      [v29 setAccessibilityIdentifier:v30];

      [v8 addAction:v29];
    }

    v49._object = 0x80000001012237E0;
    v31._countAndFlagsBits = 0x6C65636E6143;
    v32._countAndFlagsBits = 0xD00000000000003ALL;
    v32._object = 0x80000001012237A0;
    v49._countAndFlagsBits = 0xD000000000000047;
    v31._object = 0xE600000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v32, 0, isa, v31, v49);
    v33 = swift_allocObject();
    swift_weakInit();

    v34 = String._bridgeToObjectiveC()();

    v45 = sub_1001FE7C4;
    v46 = v33;
    aBlock = _NSConcreteStackBlock;
    v42 = 1107296256;
    v43 = sub_1001FDE68;
    v44 = &unk_10160A5D8;
    v35 = _Block_copy(&aBlock);

    v36 = [v39 actionWithTitle:v34 style:1 handler:v35];
    _Block_release(v35);

    v37 = v36;
    v38 = String._bridgeToObjectiveC()();
    [v37 setAccessibilityIdentifier:v38];

    [v8 addAction:v37];
    return v8;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1001FE640(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v5 = *(result + 40);
    if (v5)
    {
      sub_1000CD9D4(*(result + 40));

      v5(a3);
      return sub_1000588AC(v5);
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_1001FE6D8()
{

  sub_1000588AC(*(v0 + 40));

  return swift_deallocClassInstance();
}

unint64_t sub_1001FE750()
{
  result = qword_101912128;
  if (!qword_101912128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101912128);
  }

  return result;
}

uint64_t sub_1001FE85C@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC4Maps43LibraryRecentlyAddedContaineeViewController_viewModel);
  a1[3] = &type metadata for LibraryRecentlyAddedView;
  a1[4] = sub_1002002F8();
  *a1 = v3;
}

uint64_t sub_1001FE8B4()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v2, "viewDidLoad");
  *(*&v0[OBJC_IVAR____TtC4Maps43LibraryRecentlyAddedContaineeViewController_cellActionHandler] + OBJC_IVAR____TtC4Maps24LibraryCellActionHandler_actionHandlingUICoordinator + 8) = &off_10160A628;
  swift_unknownObjectWeakAssign();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_getKeyPath();
  sub_100200748();

  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_getKeyPath();

  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_getKeyPath();

  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

void sub_1001FEB40(uint64_t a1, void *a2, void *a3, char a4, void *a5)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    sub_1001FEBC8(a2, a3, a4, a5);
  }
}

void sub_1001FEBC8(void *a1, void *a2, char a3, void *a4)
{
  v9 = sub_1000CE6B8(&unk_10190BA50);
  __chkstk_darwin(v9 - 8);
  v11 = &v124 - v10;
  switch(a3)
  {
    case 1:
      v62 = [objc_allocWithZone(MKMapItem) initWithGeoMapItem:a1 isPlaceHolderPlace:0];
      if (v62)
      {
        v63 = v62;
        v64 = *(v4 + OBJC_IVAR____TtC4Maps43LibraryRecentlyAddedContaineeViewController_cellActionHandler);
        v65 = [a4 sourceView];
        v66 = [v63 _muid];
        v67 = *(v64 + OBJC_IVAR____TtC4Maps24LibraryCellActionHandler_analyticsInfo);
        if (v66)
        {
          v126[0] = v66;
          dispatch thunk of CustomStringConvertible.description.getter();
          v69 = v68;
        }

        else
        {
          v69 = 0;
        }

        v95 = [objc_opt_self() sharedService];
        if (!v95)
        {
          __break(1u);
          goto LABEL_85;
        }

        v96 = v95;

        if (v69)
        {
          v97 = String._bridgeToObjectiveC()();
        }

        else
        {
          v97 = 0;
        }

        [v96 captureUserAction:473 onTarget:v67 eventValue:v97];

        type metadata accessor for FavoriteItemWrapper();
        v98 = swift_dynamicCastClass();
        if (v98)
        {
          v99 = *(v98 + OBJC_IVAR____TtC4Maps19FavoriteItemWrapper_object);
          v100 = type metadata accessor for TaskPriority();
          (*(*(v100 - 8) + 56))(v11, 1, 1, v100);
          v101 = swift_allocObject();
          v101[2] = 0;
          v101[3] = 0;
          v101[4] = v99;
          swift_unknownObjectRetain();
          v102 = v99;
          sub_10020ADD4(0, 0, v11, &unk_1011F0770, v101);

          swift_unknownObjectRelease();
        }

        goto LABEL_61;
      }

      return;
    case 2:
      v38 = [objc_allocWithZone(MKMapItem) initWithGeoMapItem:a1 isPlaceHolderPlace:0];
      if (v38)
      {
        v39 = *(v4 + OBJC_IVAR____TtC4Maps43LibraryRecentlyAddedContaineeViewController_cellActionHandler);
        v125 = v38;

        v40 = objc_allocWithZone(SearchResult);
        v41 = [v40 initWithMapItem:v125];
        if (!v41)
        {
          goto LABEL_67;
        }

        v20 = v41;
        v42 = [v41 unknownContact];
        if (v42)
        {
          v43 = v42;
          v44 = [objc_opt_self() shareItemWithSearchResult:v20 contact:v42 includePrintActivity:1];
          v45 = v39 + OBJC_IVAR____TtC4Maps24LibraryCellActionHandler_actionHandlingUICoordinator;
          if (swift_unknownObjectWeakLoadStrong())
          {
            v46 = *(v45 + 8);
            ObjectType = swift_getObjectType();
            v48 = *(v46 + 24);
            v49 = swift_unknownObjectRetain();
            v48(v49, 0, 0, ObjectType, v46);

            swift_unknownObjectRelease();
            swift_unknownObjectRelease_n();
          }

          else
          {

            swift_unknownObjectRelease();
          }
        }

        goto LABEL_66;
      }

      return;
    case 3:
      v50 = [objc_allocWithZone(MKMapItem) initWithGeoMapItem:a1 isPlaceHolderPlace:0];
      if (!v50)
      {
        return;
      }

      v125 = v50;
      v51 = *(v4 + OBJC_IVAR____TtC4Maps43LibraryRecentlyAddedContaineeViewController_cellActionHandler);
      v20 = [a4 sourceView];
      v52 = [objc_opt_self() sharedHelper];
      v53 = [v52 alertControllerForAttemptedAddCollection];

      if (v53)
      {
        v54 = v51 + OBJC_IVAR____TtC4Maps24LibraryCellActionHandler_actionHandlingUICoordinator;
        if (swift_unknownObjectWeakLoadStrong())
        {
          v55 = *(v54 + 8);
          v56 = swift_getObjectType();
          v57 = (*(v55 + 8))(v56, v55);
          swift_unknownObjectRelease();
          v58 = v53;
          [v57 _maps_topMostPresentViewController:v58 animated:1 completion:0];

          goto LABEL_66;
        }

        goto LABEL_51;
      }

      v87 = objc_allocWithZone(CollectionAddOrRemoveSession);
      v53 = [v87 initWithMapItem:v125];
      [v53 setAnalyticsTarget:*(v51 + OBJC_IVAR____TtC4Maps24LibraryCellActionHandler_analyticsInfo)];
      v88 = v51 + OBJC_IVAR____TtC4Maps24LibraryCellActionHandler_actionHandlingUICoordinator;
      if (!swift_unknownObjectWeakLoadStrong())
      {
LABEL_51:

        goto LABEL_66;
      }

      v89 = *(v88 + 8);
      v90 = 0;
      if (v20)
      {
        v90 = sub_1001F4AE8();
      }

      else
      {
        v126[1] = 0;
        v126[2] = 0;
      }

      v126[0] = v20;
      v126[3] = v90;
      v118 = swift_getObjectType();
      y = CGRectNull.origin.y;
      width = CGRectNull.size.width;
      height = CGRectNull.size.height;
      v122 = *(v89 + 32);
      v123 = v20;
      v122(v53, v126, v118, v89, CGRectNull.origin.x, y, width, height);

      swift_unknownObjectRelease();
      sub_1000DB2F4(v126);
      return;
    case 4:
      v23 = *(v4 + OBJC_IVAR____TtC4Maps43LibraryRecentlyAddedContaineeViewController_cellActionHandler) + OBJC_IVAR____TtC4Maps24LibraryCellActionHandler_actionHandlingUICoordinator;
      if (!swift_unknownObjectWeakLoadStrong())
      {
        return;
      }

      v24 = *(v23 + 8);
      v25 = swift_getObjectType();
      (*(v24 + 40))(a1, v25, v24);
      goto LABEL_42;
    case 5:
      v70 = *(v4 + OBJC_IVAR____TtC4Maps43LibraryRecentlyAddedContaineeViewController_cellActionHandler) + OBJC_IVAR____TtC4Maps24LibraryCellActionHandler_actionHandlingUICoordinator;
      if (!swift_unknownObjectWeakLoadStrong())
      {
        return;
      }

      v71 = *(v70 + 8);
      v72 = swift_getObjectType();
      (*(v71 + 48))(a1, v72, v71);
      goto LABEL_42;
    case 6:
      v73 = *(v4 + OBJC_IVAR____TtC4Maps43LibraryRecentlyAddedContaineeViewController_cellActionHandler) + OBJC_IVAR____TtC4Maps24LibraryCellActionHandler_actionHandlingUICoordinator;
      if (!swift_unknownObjectWeakLoadStrong())
      {
        return;
      }

      v74 = *(v73 + 8);
      v75 = swift_getObjectType();
      v76 = (*(v74 + 8))(v75, v74);
      swift_unknownObjectRelease();
      sub_1004919D0(a1, v76, 0, 0);
      v77 = [objc_opt_self() sharedService];
      if (!v77)
      {
LABEL_85:
        __break(1u);
        goto LABEL_86;
      }

      v78 = v77;
      v126[0] = [a1 mapItemMuid];
      dispatch thunk of CustomStringConvertible.description.getter();
      v63 = String._bridgeToObjectiveC()();

      [v78 captureUserAction:479 onTarget:137 eventValue:v63];

LABEL_61:
      return;
    case 7:
      v59 = *(v4 + OBJC_IVAR____TtC4Maps43LibraryRecentlyAddedContaineeViewController_cellActionHandler) + OBJC_IVAR____TtC4Maps24LibraryCellActionHandler_actionHandlingUICoordinator;
      if (!swift_unknownObjectWeakLoadStrong())
      {
        return;
      }

      v60 = *(v59 + 8);
      v61 = swift_getObjectType();
      (*(v60 + 56))(a1, v61, v60);
      goto LABEL_42;
    case 8:
      v79 = *(v4 + OBJC_IVAR____TtC4Maps43LibraryRecentlyAddedContaineeViewController_cellActionHandler) + OBJC_IVAR____TtC4Maps24LibraryCellActionHandler_actionHandlingUICoordinator;
      if (!swift_unknownObjectWeakLoadStrong())
      {
        return;
      }

      v80 = *(v79 + 8);
      v81 = swift_getObjectType();
      (*(v80 + 64))(a1, v81, v80);
      goto LABEL_42;
    case 9:
      Strong = swift_unknownObjectWeakLoadStrong();
      if (!Strong)
      {
        return;
      }

      v37 = "viewController:showCollection:";
      goto LABEL_39;
    case 10:
      Strong = swift_unknownObjectWeakLoadStrong();
      if (!Strong)
      {
        return;
      }

      v37 = "viewController:enterRouteCreationWith:";
LABEL_39:
      [Strong v37];
LABEL_42:

      swift_unknownObjectRelease();
      return;
    case 11:
      swift_getObjectType();
      v21 = LibraryPlaceItemCompatible.createMapItemFromStorage()();
      v125 = [objc_allocWithZone(SearchResult) initWithMapItem:v21];

      if (!v125)
      {
        return;
      }

      v22 = swift_unknownObjectWeakLoadStrong();
      if (!v22)
      {
        goto LABEL_67;
      }

      v20 = [v22 mapSelectionManager];
      swift_unknownObjectRelease();
      if (!v20)
      {
        goto LABEL_67;
      }

      [v20 injectAndSelectSearchResult:v125];
      goto LABEL_66;
    case 12:
      v26 = [objc_allocWithZone(MKMapItem) initWithGeoMapItem:a1 isPlaceHolderPlace:0];
      if (!v26)
      {
        return;
      }

      v125 = v26;
      v27 = *(v4 + OBJC_IVAR____TtC4Maps43LibraryRecentlyAddedContaineeViewController_cellActionHandler);

      v28 = [objc_opt_self() sharedHelper];
      v29 = [v28 alertControllerForAttemptedAddNote];

      v30 = v27 + OBJC_IVAR____TtC4Maps24LibraryCellActionHandler_actionHandlingUICoordinator;
      v31 = swift_unknownObjectWeakLoadStrong();
      if (v29)
      {
        if (v31)
        {
          v32 = *(v30 + 8);
          v33 = swift_getObjectType();
          v34 = (*(v32 + 8))(v33, v32);
          swift_unknownObjectRelease();
          v35 = v29;
          [v34 _maps_topMostPresentViewController:v35 animated:1 completion:0];
        }

        else
        {
        }

        goto LABEL_67;
      }

      if (!v31)
      {
        goto LABEL_67;
      }

      v82 = *(v30 + 8);
      v83 = [a2 placeItemNote];
      if (v83)
      {
        v84 = v83;
        v124 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v86 = v85;
      }

      else
      {
        v124 = 0;
        v86 = 0;
      }

      v113 = swift_getObjectType();
      v114 = [v125 _muid];
      v115 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v116 = swift_allocObject();
      *(v116 + 16) = v115;
      *(v116 + 24) = a2;
      v117 = *(v82 + 16);

      swift_unknownObjectRetain();
      v117(v124, v86, v114, sub_100200878, v116, v113, v82);

      swift_unknownObjectRelease();

      return;
    default:
      v12 = [objc_allocWithZone(MKMapItem) initWithGeoMapItem:a1 isPlaceHolderPlace:0];
      if (!v12)
      {
        return;
      }

      v13 = v12;
      v14 = *(v4 + OBJC_IVAR____TtC4Maps43LibraryRecentlyAddedContaineeViewController_cellActionHandler);
      v15 = [a4 sourceView];
      v16 = [objc_opt_self() sharedHelper];
      v125 = [v16 alertControllerForAttemptedAddShortcut];

      if (v125)
      {
        v17 = v14 + OBJC_IVAR____TtC4Maps24LibraryCellActionHandler_actionHandlingUICoordinator;
        if (swift_unknownObjectWeakLoadStrong())
        {
          v18 = *(v17 + 8);
          v19 = swift_getObjectType();
          v20 = (*(v18 + 8))(v19, v18);
          swift_unknownObjectRelease();
          [v20 _maps_topMostPresentViewController:v125 animated:1 completion:0];

LABEL_66:
        }

        else
        {
        }

LABEL_67:
        v103 = v125;
      }

      else
      {
        v91 = [v13 _muid];
        v92 = *(v14 + OBJC_IVAR____TtC4Maps24LibraryCellActionHandler_analyticsInfo);
        if (v91)
        {
          v126[0] = v91;
          dispatch thunk of CustomStringConvertible.description.getter();
          v94 = v93;
        }

        else
        {
          v94 = 0;
        }

        v104 = [objc_opt_self() sharedService];
        if (v104)
        {
          v105 = v104;
          if (v94)
          {
            v106 = String._bridgeToObjectiveC()();
          }

          else
          {
            v106 = 0;
          }

          [v105 captureUserAction:475 onTarget:v92 eventValue:v106];

          type metadata accessor for CollectionPlaceItem();
          v107 = swift_dynamicCastClass();
          if (v107)
          {
            v108 = v107;
            v109 = *(v14 + OBJC_IVAR____TtC4Maps24LibraryCellActionHandler_dataOperationsProvider);
            v110 = type metadata accessor for TaskPriority();
            (*(*(v110 - 8) + 56))(v11, 1, 1, v110);
            v111 = swift_allocObject();
            v111[2] = 0;
            v111[3] = 0;
            v111[4] = v108;
            v111[5] = v109;
            swift_unknownObjectRetain();
            v112 = v109;
            sub_10020AAE4(0, 0, v11, &unk_1011F0780, v111);
          }

          else
          {
          }
        }

        else
        {
LABEL_86:
          __break(1u);
        }
      }

      return;
  }
}