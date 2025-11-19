uint64_t sub_1000374E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_10001B4A4(&qword_1000B3860, &qword_100078F28);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v15 - v7;
  v9 = *(a1 + 16);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v10 = v16;
  v11 = [v16 tocAssets];

  if (v11 && (v12 = [v11 symbolId], v11, v12))
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v16 = Image.init(_internalSystemName:)();
    View.accessibilityHidden(_:)();

    sub_100023628(v8, a2, &qword_1000B3860, &qword_100078F28);
    v13 = 0;
  }

  else
  {
    v13 = 1;
  }

  return (*(v5 + 56))(a2, v13, 1, v4);
}

__n128 sub_1000376CC@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>, double a4@<D0>)
{
  v6 = sub_100037FF4(a1, a4);
  v8 = v7;
  v10 = v9;
  v12 = v11;
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();

  v78.origin.x = v6;
  v78.origin.y = v8;
  v78.size.width = v10;
  v78.size.height = v12;
  CGRectGetHeight(v78);
  static Alignment.center.getter();
  *&v22 = a2;
  WORD4(v22) = 256;
  v23.n128_u64[0] = 0;
  v23.n128_f64[1] = -v8;
  v28 = v63;
  v29 = v64;
  v30 = v65;
  v24 = v59;
  v25 = v60;
  v26 = v61;
  v27 = v62;
  _FrameLayout.init(width:height:alignment:)();
  v72 = v63;
  v73 = v64;
  v74 = v65;
  v68 = v59;
  v69 = v60;
  v71 = v62;
  v70 = v61;
  v67 = v23;
  v66 = v22;
  v31 = a2;
  v32 = 256;
  v33 = 0;
  v34 = -v8;
  v39 = v63;
  v40 = v64;
  v41 = v65;
  v35 = v59;
  v36 = v60;
  v37 = v61;
  v38 = v62;
  sub_10001F808(&v22, v56, &qword_1000B38A0, &qword_100078F50);
  sub_10001F870(&v31, &qword_1000B38A0, &qword_100078F50);
  v13 = static Edge.Set.leading.getter();
  v14 = static SafeAreaRegions.all.getter();
  v42[8] = v74;
  v42[9] = v75;
  v42[10] = v76;
  v42[11] = v77;
  v42[4] = v70;
  v42[5] = v71;
  v42[6] = v72;
  v42[7] = v73;
  v42[0] = v66;
  v42[1] = v67;
  v42[2] = v68;
  v42[3] = v69;
  v43[8] = v74;
  v43[9] = v75;
  v43[10] = v76;
  v43[11] = v77;
  v43[4] = v70;
  v43[5] = v71;
  v43[6] = v72;
  v43[7] = v73;
  v43[0] = v66;
  v43[1] = v67;
  v43[2] = v68;
  v43[3] = v69;
  sub_10001F808(v42, v56, &qword_1000B38A8, &qword_100078F58);
  sub_10001F870(v43, &qword_1000B38A8, &qword_100078F58);
  v52 = v74;
  v53 = v75;
  v54 = v76;
  *v55 = v77;
  v48 = v70;
  v49 = v71;
  v50 = v72;
  v51 = v73;
  v44 = v66;
  v45 = v67;
  v46 = v68;
  v47 = v69;
  v56[8] = v74;
  v56[9] = v75;
  v56[10] = v76;
  v56[11] = v77;
  v56[4] = v70;
  v56[5] = v71;
  v56[6] = v72;
  v56[7] = v73;
  v56[0] = v66;
  v56[1] = v67;
  *&v55[16] = v14;
  v55[24] = v13;
  v56[2] = v68;
  v56[3] = v69;
  v57 = v14;
  v58 = v13;
  sub_10001F808(&v44, v21, &qword_1000B38B0, &qword_100078F60);
  sub_10001F870(v56, &qword_1000B38B0, &qword_100078F60);
  v15 = *v55;
  *(a3 + 160) = v54;
  *(a3 + 176) = v15;
  *(a3 + 185) = *&v55[9];
  v16 = v51;
  *(a3 + 96) = v50;
  *(a3 + 112) = v16;
  v17 = v53;
  *(a3 + 128) = v52;
  *(a3 + 144) = v17;
  v18 = v47;
  *(a3 + 32) = v46;
  *(a3 + 48) = v18;
  v19 = v49;
  *(a3 + 64) = v48;
  *(a3 + 80) = v19;
  result = v45;
  *a3 = v44;
  *(a3 + 16) = result;
  return result;
}

__n128 sub_100037AC8@<Q0>(uint64_t a1@<X0>, uint64_t *a2@<X2>, uint64_t a3@<X8>, double a4@<D0>)
{
  rect.origin.x = sub_100037FF4(a1, a4);
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = *a2;
  v13 = a2[1];
  v14 = a2[2];
  v15 = -v6;
  v17 = a2[3];
  v16 = a2[4];
  sub_10003A408(a2, v59);
  static Alignment.center.getter();
  *&v87 = v12;
  *(&v87 + 1) = v13;
  *&v88 = v14;
  *(&v88 + 1) = v17;
  *&v89 = v16;
  WORD4(v89) = 256;
  v90.n128_u64[0] = 0;
  v90.n128_f64[1] = v15;
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v62 = v87;
  v63 = v88;
  v64 = v89;
  v65 = v90;
  v27[0] = v12;
  v27[1] = v13;
  v27[2] = v14;
  v27[3] = v17;
  v27[4] = v16;
  v28 = 256;
  v29 = 0;
  v30 = v15;
  sub_10001F808(&v87, v59, &qword_1000B38B8, &qword_100078F68);
  sub_10001F870(v27, &qword_1000B38B8, &qword_100078F68);
  v91.origin.x = rect.origin.x;
  v91.origin.y = v7;
  v91.size.width = v9;
  v91.size.height = v11;
  CGRectGetHeight(v91);
  static Alignment.center.getter();
  v39 = v70;
  v40 = v71;
  v41 = v72;
  v35 = v66;
  v36 = v67;
  v37 = v68;
  v38 = v69;
  v31 = v62;
  v32 = v63;
  v33 = v64;
  v34 = v65;
  sub_10001F808(&v31, v59, &qword_1000B38C0, &qword_100078F70);
  _FrameLayout.init(width:height:alignment:)();
  v81 = v39;
  v82 = v40;
  v83 = v41;
  v77 = v35;
  v78 = v36;
  v80 = v38;
  v79 = v37;
  v73 = v31;
  v74 = v32;
  v76 = v34;
  v75 = v33;
  v42[8] = v70;
  v42[9] = v71;
  v42[10] = v72;
  v42[4] = v66;
  v42[5] = v67;
  v42[6] = v68;
  v42[7] = v69;
  v42[0] = v62;
  v42[1] = v63;
  v42[2] = v64;
  v42[3] = v65;
  sub_10001F870(v42, &qword_1000B38C0, &qword_100078F70);
  LOBYTE(v12) = static Edge.Set.leading.getter();
  v18 = static SafeAreaRegions.all.getter();
  v43[10] = v83;
  v43[11] = v84;
  v43[12] = v85;
  v43[13] = v86;
  v43[6] = v79;
  v43[7] = v80;
  v43[8] = v81;
  v43[9] = v82;
  v43[2] = v75;
  v43[3] = v76;
  v43[4] = v77;
  v43[5] = v78;
  v43[0] = v73;
  v43[1] = v74;
  v44[10] = v83;
  v44[11] = v84;
  v44[12] = v85;
  v44[13] = v86;
  v44[6] = v79;
  v44[7] = v80;
  v44[8] = v81;
  v44[9] = v82;
  v44[2] = v75;
  v44[3] = v76;
  v44[4] = v77;
  v44[5] = v78;
  v44[0] = v73;
  v44[1] = v74;
  sub_10001F808(v43, v59, &qword_1000B38C8, &qword_100078F78);
  sub_10001F870(v44, &qword_1000B38C8, &qword_100078F78);
  v55 = v83;
  v56 = v84;
  v57 = v85;
  *v58 = v86;
  v51 = v79;
  v52 = v80;
  v53 = v81;
  v54 = v82;
  v47 = v75;
  v48 = v76;
  v49 = v77;
  v50 = v78;
  v45 = v73;
  v46 = v74;
  v59[10] = v83;
  v59[11] = v84;
  v59[12] = v85;
  v59[13] = v86;
  v59[6] = v79;
  v59[7] = v80;
  v59[8] = v81;
  v59[9] = v82;
  v59[2] = v75;
  v59[3] = v76;
  v59[4] = v77;
  v59[5] = v78;
  *&v58[16] = v18;
  v58[24] = v12;
  v59[0] = v73;
  v59[1] = v74;
  v60 = v18;
  v61 = v12;
  sub_10001F808(&v45, &rect.origin.y, &qword_1000B38D0, qword_100078F80);
  sub_10001F870(v59, &qword_1000B38D0, qword_100078F80);
  v19 = *v58;
  *(a3 + 192) = v57;
  *(a3 + 208) = v19;
  *(a3 + 217) = *&v58[9];
  v20 = v54;
  *(a3 + 128) = v53;
  *(a3 + 144) = v20;
  v21 = v56;
  *(a3 + 160) = v55;
  *(a3 + 176) = v21;
  v22 = v50;
  *(a3 + 64) = v49;
  *(a3 + 80) = v22;
  v23 = v52;
  *(a3 + 96) = v51;
  *(a3 + 112) = v23;
  v24 = v46;
  *a3 = v45;
  *(a3 + 16) = v24;
  result = v48;
  *(a3 + 32) = v47;
  *(a3 + 48) = result;
  return result;
}

double sub_100037FF4(uint64_t a1, double a2)
{
  v34[2] = a1;
  v4 = type metadata accessor for ElementVerticalMotion();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = v34 - v10;
  v12 = type metadata accessor for NamedCoordinateSpace();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(v2 + 16);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v18 = *&v36;
  v36 = 1953720684;
  v37 = 0xE400000000000000;
  static CoordinateSpaceProtocol<>.named<A>(_:)();
  GeometryProxy.frame<A>(in:)();
  v20 = v19;
  v22 = v21;
  (*(v13 + 8))(v16, v12);
  v23 = v34[1];
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v24 = round(a2 - v18 - *&v36);
  v25 = *(type metadata accessor for TipListView() + 28);
  sub_10001B4A4(&qword_1000B3500, &qword_100078950);
  State.wrappedValue.getter();
  (*(v5 + 104))(v9, enum case for ElementVerticalMotion.up(_:), v4);
  v26 = static ElementVerticalMotion.== infix(_:_:)();
  v27 = *(v5 + 8);
  v27(v9, v4);
  v27(v11, v4);
  GeometryProxy.size.getter();
  v29 = fmax(round(v28), round(v22)) >= v24;
  if (v18 == 0.0)
  {
    v29 = 0;
  }

  if ((v29 & v26) != 0)
  {
    v30 = 0.0;
  }

  else
  {
    v30 = v18 + v22;
  }

  if ([objc_opt_self() isPhoneUI])
  {
    v31 = 0;
  }

  else
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v31 = v36;
    if (v30 == 0.0)
    {
      v31 = 0;
    }
  }

  v32 = *(v23 + 32);
  LOBYTE(v36) = *(v23 + 24);
  v37 = v32;
  v35 = v31;
  sub_10001B4A4(&qword_1000B3028, &qword_100078C60);
  State.wrappedValue.setter();
  return v20;
}

double sub_1000383FC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v6 = type metadata accessor for TipListView();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a1 + 16);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v11 = v32;
  v12 = [v32 gradient];

  if (v12)
  {
    v13 = v12;
    v30 = v13;
    static Array.colorsFromGradient(_:)();

    Gradient.init(colors:)();
    static UnitPoint.topTrailing.getter();
    static UnitPoint.bottomLeading.getter();
    LinearGradient.init(gradient:startPoint:endPoint:)();
    sub_100038CB4(a1, &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
    v31 = a2;
    v14 = (*(v7 + 80) + 16) & ~*(v7 + 80);
    v15 = (v8 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
    v16 = (v15 + 15) & 0xFFFFFFFFFFFFFFF8;
    v17 = swift_allocObject();
    sub_100038D1C(v9, v17 + v14);
    *(v17 + v15) = a3;
    v18 = v17 + v16;
    *(v18 + 32) = v34;
    v19 = v33;
    *v18 = v32;
    *(v18 + 16) = v19;
    sub_10001B4A4(&qword_1000B3898, &qword_100078F48);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_100077C60;
    v21 = objc_opt_self();
    v22 = [v21 systemBackgroundColor];
    *(v20 + 32) = Color.init(_:)();
    v23 = [v21 systemBackgroundColor];
    v24 = [v23 colorWithAlphaComponent:0.0];

    *(v20 + 40) = Color.init(_:)();
    v25 = AnyGradient.init(colors:locations:interpolations:)();
    sub_100038CB4(a1, v9);
    a2 = v31;
    v26 = swift_allocObject();
    sub_100038D1C(v9, v26 + v14);
    *(v26 + v15) = a3;
    *(v26 + v16) = v25;
    v35 = sub_10003A138;
    v36 = v17;
    v37 = sub_10003A350;
    v38 = v26;
    v39 = 0;

    sub_10001B4A4(&qword_1000B3868, &qword_100078F30);
    sub_100039F04();
    _ConditionalContent<>.init(storage:)();
  }

  else
  {
    v35 = static Color.clear.getter();
    v36 = 0;
    v37 = 0;
    v38 = 0;
    v39 = 1;
    sub_10001B4A4(&qword_1000B3868, &qword_100078F30);
    sub_100039F04();
    _ConditionalContent<>.init(storage:)();
  }

  result = *&v32;
  v28 = v33;
  v29 = v34;
  *a2 = v32;
  *(a2 + 16) = v28;
  *(a2 + 32) = v29;
  return result;
}

uint64_t sub_1000387F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  v8 = sub_10001B4A4(&qword_1000B36F0, &qword_100078CB0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = (&v25 - v10);
  v12 = sub_10001B4A4(&qword_1000B36F8, &qword_100078CB8);
  v26 = *(v12 - 8);
  v13 = *(v26 + 64);
  __chkstk_darwin(v12);
  v15 = &v25 - v14;
  v16.n128_f64[0] = sub_100037FF4(a1, a4);
  if (v17 <= 0.0)
  {
    v24 = *(v26 + 56);

    return v24(a3, 1, 1, v12, v16);
  }

  else
  {
    *v11 = static Alignment.center.getter();
    v11[1] = v18;
    v19 = sub_10001B4A4(&qword_1000B3700, &qword_100078CC0);
    sub_100038AA4(a2, v11 + *(v19 + 44), a4);
    v20 = (v11 + *(v8 + 36));
    v21 = *(sub_10001B4A4(&qword_1000B3708, &qword_100078CC8) + 28);
    v22 = type metadata accessor for Text.Case();
    (*(*(v22 - 8) + 56))(v20 + v21, 1, 1, v22);
    *v20 = swift_getKeyPath();
    static VerticalEdge.Set.all.getter();
    sub_10003987C();
    View.listRowSeparator(_:edges:)();
    sub_10001F870(v11, &qword_1000B36F0, &qword_100078CB0);
    (*(v26 + 32))(a3, v15, v12);
    return (*(v26 + 56))(a3, 0, 1, v12);
  }
}

uint64_t sub_100038AA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v6 = sub_10001B4A4(&qword_1000B3730, qword_100078D08);
  v7 = *(*(v6 - 8) + 64);
  v8 = __chkstk_darwin(v6 - 8);
  v10 = &v23[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v23[-1] - v11;
  v13 = *(a1 + 16);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v14 = v23[0];
  v15 = [v23[0] gradient];

  sub_1000383FC(a1, v23, a3);
  v16 = v23[0];
  v17 = v23[1];
  v18 = v23[2];
  v19 = v23[3];
  LOBYTE(v14) = v24;
  sub_10003474C(v12);
  sub_10001F808(v12, v10, &qword_1000B3730, qword_100078D08);
  *a2 = v16;
  *(a2 + 8) = v17;
  *(a2 + 16) = v18;
  *(a2 + 24) = v19;
  *(a2 + 32) = v14;
  v20 = sub_10001B4A4(&qword_1000B3738, &qword_100078D68);
  sub_10001F808(v10, a2 + *(v20 + 48), &qword_1000B3730, qword_100078D08);
  sub_100039968(v16, v17, v18, v19, v14);
  sub_10001F870(v12, &qword_1000B3730, qword_100078D08);
  sub_10001F870(v10, &qword_1000B3730, qword_100078D08);
  return sub_1000399A8(v16, v17, v18, v19, v14);
}

uint64_t sub_100038CB4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TipListView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100038D1C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TipListView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100038D98(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_100038DE8()
{
  result = qword_1000B35E8;
  if (!qword_1000B35E8)
  {
    sub_10001E860(&qword_1000B35E0, &qword_100078A28);
    sub_100038EA4();
    sub_100038D98(&qword_1000B3620, type metadata accessor for ScrollVerticallyTestSupport);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B35E8);
  }

  return result;
}

unint64_t sub_100038EA4()
{
  result = qword_1000B35F0;
  if (!qword_1000B35F0)
  {
    sub_10001E860(&qword_1000B35F8, &qword_100078A78);
    sub_100038F28();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B35F0);
  }

  return result;
}

unint64_t sub_100038F28()
{
  result = qword_1000B3600;
  if (!qword_1000B3600)
  {
    sub_10001E860(&qword_1000B3608, &qword_100078A80);
    sub_10001E860(&qword_1000B3610, &qword_100078A88);
    type metadata accessor for PlainListStyle();
    sub_10001E8B8(&qword_1000B3618, &qword_1000B3610, &qword_100078A88);
    swift_getOpaqueTypeConformance2();
    type metadata accessor for InsetListStyle();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B3600);
  }

  return result;
}

uint64_t sub_100039088(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for TipListView() - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

uint64_t sub_10003912C@<X0>(uint64_t a1@<X8>)
{
  result = EnvironmentValues.listRowSpacing.getter();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_100039160(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  return EnvironmentValues.listRowSpacing.setter();
}

void sub_100039198(uint64_t a1, void **a2)
{
  v5 = *(type metadata accessor for TipListView() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  sub_100035444(a1, a2, v6);
}

unint64_t sub_100039218()
{
  result = qword_1000B3698;
  if (!qword_1000B3698)
  {
    sub_10001E860(&qword_1000B3660, &qword_100078AC8);
    sub_1000392D0();
    sub_10001E8B8(&qword_1000B36C8, &qword_1000B36D0, &qword_100078BD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B3698);
  }

  return result;
}

unint64_t sub_1000392D0()
{
  result = qword_1000B36A0;
  if (!qword_1000B36A0)
  {
    sub_10001E860(&qword_1000B3658, &qword_100078AC0);
    sub_100039388();
    sub_10001E8B8(&qword_1000B36B8, &qword_1000B36C0, &qword_100078BC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B36A0);
  }

  return result;
}

unint64_t sub_100039388()
{
  result = qword_1000B36A8;
  if (!qword_1000B36A8)
  {
    sub_10001E860(&qword_1000B3650, &qword_100078AB8);
    sub_10001E860(&qword_1000B3640, &qword_100078AA8);
    sub_10001E8B8(&qword_1000B3688, &qword_1000B3640, &qword_100078AA8);
    swift_getOpaqueTypeConformance2();
    sub_10001E8B8(&qword_1000B36B0, &qword_1000B3690, &qword_100078B30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B36A8);
  }

  return result;
}

unint64_t sub_1000394B0()
{
  result = qword_1000B36D8;
  if (!qword_1000B36D8)
  {
    sub_10001E860(&qword_1000B31A8, &qword_100078BC0);
    sub_100039534();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B36D8);
  }

  return result;
}

unint64_t sub_100039534()
{
  result = qword_1000B36E0;
  if (!qword_1000B36E0)
  {
    sub_10001AC14(255, &qword_1000B30C8, TPSTip_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B36E0);
  }

  return result;
}

uint64_t sub_1000395CC(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for TipListView() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_100039640(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100039688()
{
  v1 = (type metadata accessor for TipListView() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = v0 + v3;

  v6 = *(v5 + 32);

  v7 = v5 + v1[9];
  v8 = type metadata accessor for ElementVerticalMotion();
  (*(*(v8 - 8) + 8))(v7, v8);
  v9 = *(v7 + *(sub_10001B4A4(&qword_1000B3500, &qword_100078950) + 28));

  v10 = *(v5 + v1[10] + 8);

  v11 = *(v5 + v1[11] + 8);

  return _swift_deallocObject(v0, v4 + 8, v2 | 7);
}

uint64_t sub_1000397C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for TipListView() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1000387F4(a1, v2 + v6, a2, v7);
}

unint64_t sub_10003987C()
{
  result = qword_1000B3710;
  if (!qword_1000B3710)
  {
    sub_10001E860(&qword_1000B36F0, &qword_100078CB0);
    sub_10001E8B8(&qword_1000B3718, &qword_1000B3720, &qword_100078D00);
    sub_10001E8B8(&qword_1000B3728, &qword_1000B3708, &qword_100078CC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B3710);
  }

  return result;
}

uint64_t sub_100039968(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if ((a5 & 1) == 0)
  {

    v5 = vars8;
  }
}

uint64_t sub_1000399A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if ((a5 & 1) == 0)
  {

    v5 = vars8;
  }
}

uint64_t sub_1000399E8(double a1, double a2)
{
  v5 = *(type metadata accessor for TipListView() - 8);
  v6 = (*(v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80)) + 16) + qword_1000B6EE8);
  *v6 = a1;
  v6[1] = a2;
  return sub_10004FF04();
}

unint64_t sub_100039A9C()
{
  result = qword_1000B3780;
  if (!qword_1000B3780)
  {
    sub_10001E860(&qword_1000B3748, &qword_100078D78);
    sub_10001E8B8(&qword_1000B3788, &qword_1000B3740, &qword_100078D70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B3780);
  }

  return result;
}

unint64_t sub_100039B74()
{
  result = qword_1000B37D8;
  if (!qword_1000B37D8)
  {
    sub_10001E860(&qword_1000B37D0, &qword_100078EE0);
    sub_100039C2C();
    sub_10001E8B8(&qword_1000B3850, &qword_1000B3858, &qword_100078F20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B37D8);
  }

  return result;
}

unint64_t sub_100039C2C()
{
  result = qword_1000B37E0;
  if (!qword_1000B37E0)
  {
    sub_10001E860(&qword_1000B37E8, &qword_100078EE8);
    sub_100039CE4();
    sub_10001E8B8(&qword_1000B3840, &qword_1000B3848, &qword_100079CD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B37E0);
  }

  return result;
}

unint64_t sub_100039CE4()
{
  result = qword_1000B37F0;
  if (!qword_1000B37F0)
  {
    sub_10001E860(&qword_1000B37F8, &qword_100078EF0);
    sub_100039DC8(&qword_1000B3800, &qword_1000B3808, &qword_100078EF8, sub_100039E4C);
    sub_10001E8B8(&qword_1000B3830, &qword_1000B3838, &unk_100078F10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B37F0);
  }

  return result;
}

uint64_t sub_100039DC8(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_10001E860(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100039E4C()
{
  result = qword_1000B3810;
  if (!qword_1000B3810)
  {
    sub_10001E860(&qword_1000B3818, &unk_100078F00);
    sub_10001E8B8(&qword_1000B3820, &qword_1000B3828, &qword_100079880);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B3810);
  }

  return result;
}

unint64_t sub_100039F04()
{
  result = qword_1000B3870;
  if (!qword_1000B3870)
  {
    sub_10001E860(&qword_1000B3868, &qword_100078F30);
    sub_10001E8B8(&qword_1000B3878, &qword_1000B3880, &qword_100078F38);
    sub_10001E8B8(&qword_1000B3888, &qword_1000B3890, &qword_100078F40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B3870);
  }

  return result;
}

uint64_t sub_100039FE8()
{
  v1 = (type metadata accessor for TipListView() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (((*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = v0 + v3;

  v6 = *(v5 + 32);

  v7 = v5 + v1[9];
  v8 = type metadata accessor for ElementVerticalMotion();
  (*(*(v8 - 8) + 8))(v7, v8);
  v9 = *(v7 + *(sub_10001B4A4(&qword_1000B3500, &qword_100078950) + 28));

  v10 = *(v5 + v1[10] + 8);

  v11 = *(v5 + v1[11] + 8);

  v12 = *(v0 + v4);

  return _swift_deallocObject(v0, v4 + 40, v2 | 7);
}

double sub_10003A138@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for TipListView() - 8);
  v6 = (*(v5 + 64) + ((*(v5 + 80) + 16) & ~*(v5 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v2 + v6);
  v9 = *(v2 + v7 + 16);
  v11[0] = *(v2 + v7);
  v11[1] = v9;
  v12 = *(v2 + v7 + 32);
  *&result = sub_100037AC8(a1, v11, a2, v8).n128_u64[0];
  return result;
}

uint64_t sub_10003A200()
{
  v1 = (type metadata accessor for TipListView() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (((*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = v0 + v3;

  v6 = *(v5 + 32);

  v7 = v5 + v1[9];
  v8 = type metadata accessor for ElementVerticalMotion();
  (*(*(v8 - 8) + 8))(v7, v8);
  v9 = *(v7 + *(sub_10001B4A4(&qword_1000B3500, &qword_100078950) + 28));

  v10 = *(v5 + v1[10] + 8);

  v11 = *(v5 + v1[11] + 8);

  v12 = *(v0 + v4);

  return _swift_deallocObject(v0, v4 + 8, v2 | 7);
}

double sub_10003A350@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for TipListView() - 8);
  v6 = (*(v5 + 64) + ((*(v5 + 80) + 16) & ~*(v5 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v2 + v6);
  v8 = *(v2 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8));

  *&result = sub_1000376CC(a1, v8, a2, v7).n128_u64[0];
  return result;
}

unint64_t sub_10003A474()
{
  result = qword_1000B3908;
  if (!qword_1000B3908)
  {
    sub_10001E860(&qword_1000B38E0, &qword_100079068);
    sub_10003A500();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B3908);
  }

  return result;
}

unint64_t sub_10003A500()
{
  result = qword_1000B3910;
  if (!qword_1000B3910)
  {
    sub_10001E860(&qword_1000B3730, qword_100078D08);
    sub_10001E860(&qword_1000B3758, &qword_100078D88);
    sub_100039DC8(&qword_1000B3770, &qword_1000B3758, &qword_100078D88, sub_100039A6C);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B3910);
  }

  return result;
}

uint64_t sub_10003A5FC(double a1)
{
  v3 = *(type metadata accessor for TipListView() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_100034CA0(v4, a1);
}

unint64_t sub_10003A66C()
{
  result = qword_1000B3928;
  if (!qword_1000B3928)
  {
    sub_10001E860(&qword_1000B38F8, &qword_100079080);
    sub_10003A6F8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B3928);
  }

  return result;
}

unint64_t sub_10003A6F8()
{
  result = qword_1000B3930;
  if (!qword_1000B3930)
  {
    sub_10001E860(&qword_1000B38F0, &qword_100079078);
    sub_10003A7B0();
    sub_10001E8B8(&qword_1000B3970, &qword_1000B3978, qword_1000790B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B3930);
  }

  return result;
}

unint64_t sub_10003A7B0()
{
  result = qword_1000B3938;
  if (!qword_1000B3938)
  {
    sub_10001E860(&qword_1000B38E8, &qword_100079070);
    sub_10003A868();
    sub_10001E8B8(&qword_1000B3960, &qword_1000B3968, &qword_1000790A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B3938);
  }

  return result;
}

unint64_t sub_10003A868()
{
  result = qword_1000B3940;
  if (!qword_1000B3940)
  {
    sub_10001E860(&qword_1000B3920, &qword_100079098);
    sub_10001E8B8(&qword_1000B3948, &qword_1000B3918, &qword_100079090);
    sub_10001E8B8(&qword_1000B3950, &qword_1000B3958, &qword_1000790A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B3940);
  }

  return result;
}

uint64_t sub_10003A960()
{
  v1 = (type metadata accessor for TipListView() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = *(v0 + v3 + 32);

  v6 = v0 + v3 + v1[9];
  v7 = type metadata accessor for ElementVerticalMotion();
  (*(*(v7 - 8) + 8))(v6, v7);
  v8 = *(v6 + *(sub_10001B4A4(&qword_1000B3500, &qword_100078950) + 28));

  v9 = *(v0 + v3 + v1[10] + 8);

  v10 = *(v0 + v3 + v1[11] + 8);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

unint64_t sub_10003AA9C@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for TipListView() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_100034E94(a1, v6, a2);
}

unint64_t sub_10003AB1C()
{
  result = qword_1000B3990;
  if (!qword_1000B3990)
  {
    sub_10001E860(&qword_1000B3980, &qword_1000790F8);
    type metadata accessor for ListItemDocumentView();
    sub_100038D98(&qword_1000B3998, &type metadata accessor for ListItemDocumentView);
    swift_getOpaqueTypeConformance2();
    sub_10001E8B8(&qword_1000B3950, &qword_1000B3958, &qword_1000790A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B3990);
  }

  return result;
}

unint64_t sub_10003AC38()
{
  result = qword_1000B39B8;
  if (!qword_1000B39B8)
  {
    sub_10001E860(&qword_1000B39C0, &qword_100079118);
    sub_10001E8B8(&qword_1000B35D0, &qword_1000B35C8, &unk_100078A18);
    sub_100038D98(&qword_1000B35D8, &type metadata accessor for ContentMessageView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B39B8);
  }

  return result;
}

uint64_t sub_10003AD60(uint64_t a1, int a2)
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

uint64_t sub_10003ADA8(uint64_t result, int a2, int a3)
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

uint64_t sub_10003AE10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v32 = a2;
  v36 = a1;
  v39 = a3;
  v4 = type metadata accessor for AccessibilityTraits();
  v37 = *(v4 - 8);
  v38 = v4;
  v5 = *(v37 + 64);
  __chkstk_darwin(v4);
  v34 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = type metadata accessor for AccessibilityChildBehavior();
  v7 = *(v35 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v35);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10001B4A4(&qword_1000B39C8, &qword_1000791A8);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11);
  v14 = &v32 - v13;
  v33 = sub_10001B4A4(&qword_1000B39D0, &qword_1000791B0);
  v15 = *(v33 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v33);
  v18 = &v32 - v17;
  v19 = sub_10001B4A4(&qword_1000B39D8, &qword_1000791B8);
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19 - 8);
  v22 = &v32 - v21;
  *v14 = static VerticalAlignment.center.getter();
  *(v14 + 1) = 0;
  v14[16] = 1;
  v23 = sub_10001B4A4(&qword_1000B39E0, qword_1000791C0);
  sub_10003B234(v36, a2, &v14[*(v23 + 44)]);
  static AccessibilityChildBehavior.combine.getter();
  v24 = sub_10001E8B8(&qword_1000B39E8, &qword_1000B39C8, &qword_1000791A8);
  View.accessibilityElement(children:)();
  (*(v7 + 8))(v10, v35);
  sub_10001F870(v14, &qword_1000B39C8, &qword_1000791A8);
  v25 = v34;
  static AccessibilityTraits.isButton.getter();
  v40 = v11;
  v41 = v24;
  swift_getOpaqueTypeConformance2();
  v26 = v33;
  View.accessibilityAddTraits(_:)();
  (*(v37 + 8))(v25, v38);
  (*(v15 + 8))(v18, v26);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v27 = v40;
  if (v40)
  {
    v28 = 0x4030000000000000;
  }

  else
  {
    v28 = 0;
  }

  v29 = v39;
  sub_10003B898(v22, v39);
  result = sub_10001B4A4(&qword_1000B39F0, &qword_100079220);
  v31 = v29 + *(result + 36);
  *v31 = 0;
  *(v31 + 8) = v28;
  *(v31 + 16) = 0;
  *(v31 + 24) = v28;
  *(v31 + 32) = v27 ^ 1;
  return result;
}

uint64_t sub_10003B234@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v60 = a3;
  v5 = sub_10001B4A4(&qword_1000B39F8, &qword_100079228);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v58 - v8;
  v10 = sub_10001B4A4(&qword_1000B3A00, &qword_100079230);
  v11 = v10 - 8;
  v12 = *(*(v10 - 8) + 64);
  v13 = __chkstk_darwin(v10);
  v61 = &v58 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = &v58 - v15;
  v17 = objc_allocWithZone(TPSGradient);
  isa = Array._bridgeToObjectiveC()().super.isa;
  [v17 initWithColorStrings:isa];

  v62 = a1;
  v63 = a2;
  static UnitPoint.topTrailing.getter();
  static UnitPoint.bottomLeading.getter();
  sub_10001B4A4(&qword_1000B3A08, &unk_100079238);
  sub_10003B910();
  TipGradientView.init(_:startPoint:endPoint:gradientView:)();
  sub_10001E8B8(&qword_1000B3A18, &qword_1000B39F8, &qword_100079228);
  View.accessibilityHidden(_:)();
  (*(v6 + 8))(v9, v5);
  LOBYTE(v9) = static Edge.Set.leading.getter();
  EdgeInsets.init(_all:)();
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v27 = &v16[*(sub_10001B4A4(&qword_1000B3A20, &qword_100079248) + 36)];
  *v27 = v9;
  *(v27 + 1) = v20;
  *(v27 + 2) = v22;
  *(v27 + 3) = v24;
  *(v27 + 4) = v26;
  v27[40] = 0;
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v28 = &v16[*(v11 + 44)];
  v29 = v16;
  v30 = v67;
  *v28 = v66;
  *(v28 + 1) = v30;
  *(v28 + 2) = v68;
  LocalizedStringKey.init(stringLiteral:)();
  v31 = Text.init(_:tableName:bundle:comment:)();
  v33 = v32;
  LOBYTE(v5) = v34;
  static Color.primary.getter();
  v35 = Text.foregroundColor(_:)();
  v37 = v36;
  LOBYTE(v16) = v38;
  v59 = v39;

  sub_100023608(v31, v33, v5 & 1);

  LOBYTE(v5) = static Edge.Set.trailing.getter();
  EdgeInsets.init(_all:)();
  v41 = v40;
  v43 = v42;
  v45 = v44;
  v47 = v46;
  LOBYTE(v73[0]) = v16 & 1;
  LOBYTE(v69) = 0;
  v48 = v61;
  sub_10001F808(v29, v61, &qword_1000B3A00, &qword_100079230);
  v49 = v48;
  v50 = v60;
  sub_10001F808(v49, v60, &qword_1000B3A00, &qword_100079230);
  v51 = (v50 + *(sub_10001B4A4(&qword_1000B3A28, &qword_100079250) + 48));
  *&v69 = v35;
  *(&v69 + 1) = v37;
  v52 = v37;
  LOBYTE(v70) = v16 & 1;
  *(&v70 + 1) = *v65;
  DWORD1(v70) = *&v65[3];
  v53 = v59;
  *(&v70 + 1) = v59;
  LOBYTE(v71) = v5;
  *(&v71 + 1) = *v64;
  DWORD1(v71) = *&v64[3];
  *(&v71 + 1) = v41;
  *&v72[0] = v43;
  *(&v72[0] + 1) = v45;
  *&v72[1] = v47;
  BYTE8(v72[1]) = 0;
  v54 = v69;
  v55 = v70;
  *(v51 + 57) = *(v72 + 9);
  v56 = v72[0];
  v51[2] = v71;
  v51[3] = v56;
  *v51 = v54;
  v51[1] = v55;
  sub_10001F808(&v69, v73, &qword_1000B3A30, &unk_100079258);
  sub_10001F870(v29, &qword_1000B3A00, &qword_100079230);
  v73[0] = v35;
  v73[1] = v52;
  v74 = v16 & 1;
  *v75 = *v65;
  *&v75[3] = *&v65[3];
  v76 = v53;
  v77 = v5;
  *v78 = *v64;
  *&v78[3] = *&v64[3];
  v79 = v41;
  v80 = v43;
  v81 = v45;
  v82 = v47;
  v83 = 0;
  sub_10001F870(v73, &qword_1000B3A30, &unk_100079258);
  return sub_10001F870(v61, &qword_1000B3A00, &qword_100079230);
}

uint64_t sub_10003B764@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_10001B4A4(&qword_1000B3030, &qword_100077D50);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v10 - v4;
  v6 = Image.init(_internalSystemName:)();
  v7 = type metadata accessor for Font.Design();
  (*(*(v7 - 8) + 56))(v5, 1, 1, v7);
  v8 = static Font.system(size:weight:design:)();
  sub_10001F870(v5, &qword_1000B3030, &qword_100077D50);
  result = swift_getKeyPath();
  *a1 = v6;
  a1[1] = result;
  a1[2] = v8;
  return result;
}

uint64_t sub_10003B898(uint64_t a1, uint64_t a2)
{
  v4 = sub_10001B4A4(&qword_1000B39D8, &qword_1000791B8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10003B908@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_10003B764(a1);
}

unint64_t sub_10003B910()
{
  result = qword_1000B3A10;
  if (!qword_1000B3A10)
  {
    sub_10001E860(&qword_1000B3A08, &unk_100079238);
    sub_10001E8B8(&qword_1000B3830, &qword_1000B3838, &unk_100078F10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B3A10);
  }

  return result;
}

unint64_t sub_10003B9D4()
{
  result = qword_1000B3A38;
  if (!qword_1000B3A38)
  {
    sub_10001E860(&qword_1000B39F0, &qword_100079220);
    sub_10003BA8C();
    sub_10001E8B8(&qword_1000B3950, &qword_1000B3958, &qword_1000790A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B3A38);
  }

  return result;
}

unint64_t sub_10003BA8C()
{
  result = qword_1000B3A40;
  if (!qword_1000B3A40)
  {
    sub_10001E860(&qword_1000B39D8, &qword_1000791B8);
    sub_10001E860(&qword_1000B39C8, &qword_1000791A8);
    sub_10001E8B8(&qword_1000B39E8, &qword_1000B39C8, &qword_1000791A8);
    swift_getOpaqueTypeConformance2();
    sub_10003BB88();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B3A40);
  }

  return result;
}

unint64_t sub_10003BB88()
{
  result = qword_1000B3A48;
  if (!qword_1000B3A48)
  {
    type metadata accessor for AccessibilityAttachmentModifier();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B3A48);
  }

  return result;
}

void TPSAppDelegate.buildMenu(with:)(void *a1)
{
  v3 = type metadata accessor for Locale();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v5 = type metadata accessor for String.LocalizationValue();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v23.receiver = v1;
  v23.super_class = TPSAppDelegate;
  objc_msgSendSuper2(&v23, "buildMenuWithBuilder:", a1);
  sub_10001AC14(0, &qword_1000B3A50, UIMenuSystem_ptr);
  swift_getObjectType();
  v7 = [a1 system];
  v8 = [objc_opt_self() mainSystem];
  v9 = static NSObject.== infix(_:_:)();

  if (v9)
  {
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    String.init(localized:table:bundle:locale:comment:)();
    sub_10001AC14(0, &qword_1000B3A58, UIKeyCommand_ptr);
    v10 = String._bridgeToObjectiveC()();
    v11 = [objc_opt_self() _systemImageNamed:v10];

    v12 = UIKeyCommand.init(title:image:action:input:modifierFlags:propertyList:alternates:discoverabilityTitle:attributes:state:)();
    sub_10001AC14(0, &qword_1000B3A60, UIMenu_ptr);
    sub_10001B4A4(&qword_1000B2DB0, &qword_100077C20);
    preferredElementSize = swift_allocObject();
    *(preferredElementSize + 16) = xmmword_1000792A0;
    *(preferredElementSize + 32) = v12;
    v14 = UIMenuFind;
    v15 = v12;
    v16._countAndFlagsBits = 0;
    v16._object = 0xE000000000000000;
    v24.value.super.isa = 0;
    v24.is_nil = UIMenuFind;
    isa = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v16, 0, v24, 1, 0xFFFFFFFFFFFFFFFFLL, preferredElementSize, v21).super.super.isa;
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_1000792A0;
    *(v18 + 32) = isa;
    sub_10001AC14(0, &qword_1000B3A68, UIMenuElement_ptr);
    v19 = isa;
    v20 = Array._bridgeToObjectiveC()().super.isa;

    [a1 replaceMenuForIdentifier:v14 withElements:v20];

    memset(v22, 0, 32);
    UIMenuBuilder.remove(command:propertyList:)();
    sub_1000243B4(v22);
    [a1 removeMenuForIdentifier:UIMenuFormat];
  }
}

NSString sub_10003C05C()
{
  result = String._bridgeToObjectiveC()();
  qword_1000B6EC0 = result;
  return result;
}

NSString sub_10003C090()
{
  result = String._bridgeToObjectiveC()();
  qword_1000B6EC8 = result;
  return result;
}

void sub_10003C0C8()
{
  v1 = v0;
  v2 = sub_10001B4A4(&unk_1000B3380, &qword_100079940);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v37 - v4;
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [v0 currentTip];
  if (!v11)
  {
    __break(1u);
    goto LABEL_12;
  }

  v12 = v11;
  v13 = type metadata accessor for TPSSharingActivityItemSource();
  v14 = objc_allocWithZone(v13);
  v15 = sub_100066364(v12);

  sub_10001B4A4(&qword_1000B3A70, &qword_1000792C0);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_100077E80;
  *(v16 + 56) = v13;
  *(v16 + 32) = v15;
  v38 = v15;
  v17 = v1;
  v18 = [v1 currentTip];
  if (!v18)
  {
LABEL_12:
    __break(1u);
    return;
  }

  v19 = v18;
  *&aBlock = 0;
  *(&aBlock + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(32);

  *&aBlock = 0xD00000000000001ELL;
  *(&aBlock + 1) = 0x800000010008C2A0;
  v20 = [v19 variantID];
  v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v23 = v22;

  v24._countAndFlagsBits = v21;
  v24._object = v23;
  String.append(_:)(v24);

  URL.init(string:)();

  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_10001F870(v5, &unk_1000B3380, &qword_100079940);
  }

  else
  {
    (*(v7 + 32))(v10, v5, v6);
    v41 = v6;
    v25 = sub_10001F7A4(&aBlock);
    (*(v7 + 16))(v25, v10, v6);
    v27 = *(v16 + 16);
    v26 = *(v16 + 24);
    if (v27 >= v26 >> 1)
    {
      v16 = sub_10003C9F4((v26 > 1), v27 + 1, 1, v16);
    }

    (*(v7 + 8))(v10, v6);
    *(v16 + 16) = v27 + 1;
    sub_10003CD0C(&aBlock, (v16 + 32 * v27 + 32));
  }

  v28 = objc_allocWithZone(UIActivityViewController);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v30 = [v28 initWithActivityItems:isa applicationActivities:0];

  sub_10003CB04();
  type metadata accessor for ActivityType(0);
  v31 = Array._bridgeToObjectiveC()().super.isa;

  [v30 setExcludedActivityTypes:v31];

  v32 = [v30 popoverPresentationController];
  if (v32)
  {
    v33 = v32;
    v34 = [v17 shareBarButton];
    [v33 setSourceItem:v34];
  }

  v35 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v42 = sub_10003CCEC;
  v43 = v35;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  v40 = sub_10003C8BC;
  v41 = &unk_1000A3CC0;
  v36 = _Block_copy(&aBlock);

  [v30 setCompletionWithItemsHandler:v36];
  _Block_release(v36);
  [v17 presentViewController:v30 animated:1 completion:0];
}

id sub_10003C5BC(void *a1, char a2)
{
  v4 = type metadata accessor for TipsLog();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v10 = result;
    static TipsLog.analytics.getter();
    log(_:_:)();
    (*(v5 + 8))(v8, v4);
    if (a2)
    {
      if (!a1)
      {
        if (qword_1000B2B48 != -1)
        {
          swift_once();
        }

        a1 = qword_1000B6EC0;
      }
    }

    else
    {
      if (qword_1000B2B50 != -1)
      {
        swift_once();
      }

      a1 = qword_1000B6EC8;
    }

    v11 = a1;
    result = [v10 collectionID];
    if (result)
    {
      v12 = result;
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      result = [v10 currentTip];
      if (result)
      {
        v13 = result;
        v14 = [result correlationID];

        if (v14)
        {
          static String._unconditionallyBridgeFromObjectiveC(_:)();
        }

        result = [v10 currentTip];
        if (result)
        {
          v15 = result;
          v16 = [result identifier];

          static String._unconditionallyBridgeFromObjectiveC(_:)();
          static String._unconditionallyBridgeFromObjectiveC(_:)();
          v17 = type metadata accessor for TPSAnalyticsEventSharedTip();
          v18 = *(v17 + 48);
          v19 = *(v17 + 52);
          swift_allocObject();
          TPSAnalyticsEventSharedTip.init(collectionID:correlationID:tipID:appBundleID:)();
          dispatch thunk of TipsAnalyticsEvent.log()();
        }

LABEL_19:
        __break(1u);
        return result;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_19;
  }

  return result;
}

uint64_t sub_10003C8BC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v9 = *(a1 + 32);
  v8 = *(a1 + 40);
  if (a4)
  {
    v10 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v10 = 0;
  }

  v11 = a2;
  v12 = a5;
  v9(a2, a3, v10, a5);
}

id *sub_10003C9F4(id *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10001B4A4(&qword_1000B3A70, &qword_1000792C0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    v10[2] = v8;
    v10[3] = (2 * (v12 >> 5));
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = (v10 + 4);
  v14 = (a4 + 32);
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_10003CB04()
{
  sub_10001B4A4(&qword_1000B3A78, &unk_1000792C8);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1000792B0;
  *(v0 + 32) = UIActivityTypeAssignToContact;
  *(v0 + 40) = UIActivityTypePrint;
  *(v0 + 48) = UIActivityTypeSaveToCameraRoll;
  *(v0 + 56) = UIActivityTypeAddToReadingList;
  *(v0 + 64) = UIActivityTypePostToFlickr;
  *(v0 + 72) = UIActivityTypePostToVimeo;
  *(v0 + 80) = UIActivityTypePostToTencentWeibo;
  *(v0 + 88) = UIActivityTypeMarkupAsPDF;
  *(v0 + 96) = UIActivityTypeCollaborationInviteWithLink;
  *(v0 + 104) = UIActivityTypeCollaborationCopyLink;
  v1 = UIActivityTypeUserDefaults;
  v20 = UIActivityTypeUserDefaults;
  *(v0 + 112) = UIActivityTypeAddToHomeScreen;
  *(v0 + 120) = v1;
  v19 = UIActivityTypeCreateReminder;
  v2 = UIActivityTypeSaveToFiles;
  v21 = UIActivityTypeSaveToFiles;
  *(v0 + 128) = UIActivityTypeCreateReminder;
  *(v0 + 136) = v2;
  v22 = UIActivityTypeBoxInvite;
  *(v0 + 144) = UIActivityTypeBoxInvite;
  v3 = UIActivityTypeAssignToContact;
  v4 = UIActivityTypePrint;
  v5 = UIActivityTypeSaveToCameraRoll;
  v6 = UIActivityTypeAddToReadingList;
  v7 = UIActivityTypePostToFlickr;
  v8 = UIActivityTypePostToVimeo;
  v9 = UIActivityTypePostToTencentWeibo;
  v10 = UIActivityTypeMarkupAsPDF;
  v11 = UIActivityTypeCollaborationInviteWithLink;
  v12 = UIActivityTypeCollaborationCopyLink;
  v13 = UIActivityTypeAddToHomeScreen;
  v14 = v20;
  v15 = v19;
  v16 = v21;
  v17 = v22;
  return v0;
}

uint64_t sub_10003CCB4()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10003CCF4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

_OWORD *sub_10003CD0C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

void sub_10003CD1C(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 identifier];
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  *a2 = v4;
  a2[1] = v6;
}

void sub_10003CD74(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = String._bridgeToObjectiveC()();
  [v4 setIdentifier:v5];
}

uint64_t TPSTip.id.getter()
{
  v1 = [v0 identifier];
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v2;
}

uint64_t sub_10003CE3C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for EnvironmentValues();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10001B4A4(&qword_1000B2FB0, &qword_100077D10);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v12 = (&v17 - v11);
  sub_10001F808(v2, &v17 - v11, &qword_1000B2FB0, &qword_100077D10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = type metadata accessor for ColorScheme();
    return (*(*(v13 - 8) + 32))(a1, v12, v13);
  }

  else
  {
    v15 = *v12;
    static os_log_type_t.fault.getter();
    v16 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v8, v4);
  }
}

void sub_10003D03C(uint64_t *a1@<X8>)
{
  v3 = [*v1 identifier];
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  *a1 = v4;
  a1[1] = v6;
}

uint64_t sub_10003D0A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10001B4A4(&qword_1000B2ED0, &unk_100077C70);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_10001B4A4(&qword_1000B3A80, &qword_100079328);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24) + 8);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_10003D1E4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_10001B4A4(&qword_1000B2ED0, &unk_100077C70);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_10001B4A4(&qword_1000B3A80, &qword_100079328);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24) + 8) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t type metadata accessor for ChecklistView()
{
  result = qword_1000B3AE0;
  if (!qword_1000B3AE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10003D354()
{
  sub_10003D428(319, &qword_1000B2F40, &type metadata accessor for ColorScheme);
  if (v0 <= 0x3F)
  {
    sub_10003D428(319, &qword_1000B3AF0, &type metadata accessor for DismissAction);
    if (v1 <= 0x3F)
    {
      sub_10003D47C();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_10003D428(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Environment();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_10003D47C()
{
  if (!qword_1000B3AF8)
  {
    type metadata accessor for ChecklistViewModel();
    sub_100041C74(&qword_1000B3B00, type metadata accessor for ChecklistViewModel);
    v0 = type metadata accessor for ObservedObject();
    if (!v1)
    {
      atomic_store(v0, &qword_1000B3AF8);
    }
  }
}

uint64_t sub_10003D52C@<X0>(uint64_t a1@<X8>)
{
  v72 = a1;
  v2 = type metadata accessor for ChecklistView();
  v3 = v2 - 8;
  v74 = *(v2 - 8);
  v73 = *(v74 + 64);
  __chkstk_darwin(v2);
  v71 = &v57 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ListSectionSpacing();
  v69 = *(v5 - 8);
  v70 = v5;
  v6 = *(v69 + 64);
  __chkstk_darwin(v5);
  v68 = &v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for InsetGroupedListStyle();
  v9 = *(v8 - 8);
  v66 = v8;
  v67 = v9;
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v65 = &v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10001B4A4(&qword_1000B2F90, &qword_100077CF0);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = &v57 - v14;
  v16 = sub_10001B4A4(&qword_1000B3B38, &qword_100079398);
  v58 = *(v16 - 8);
  v17 = *(v58 + 64);
  __chkstk_darwin(v16);
  v19 = &v57 - v18;
  v59 = sub_10001B4A4(&qword_1000B3B40, &qword_1000793A0);
  v60 = *(v59 - 8);
  v20 = *(v60 + 64);
  __chkstk_darwin(v59);
  v22 = &v57 - v21;
  v61 = sub_10001B4A4(&qword_1000B3B48, &qword_1000793A8);
  v62 = *(v61 - 8);
  v23 = *(v62 + 64);
  __chkstk_darwin(v61);
  v57 = &v57 - v24;
  v63 = sub_10001B4A4(&qword_1000B3B50, qword_1000793B0);
  v25 = *(*(v63 - 8) + 64);
  __chkstk_darwin(v63);
  v27 = &v57 - v26;
  v28 = *(v3 + 32);
  v64 = v1;
  v29 = (v1 + v28);
  v30 = *v29;
  v31 = v29[1];
  type metadata accessor for ChecklistViewModel();
  sub_100041C74(&qword_1000B3B00, type metadata accessor for ChecklistViewModel);
  v32 = ObservedObject.projectedValue.getter();
  swift_getKeyPath();
  ObservedObject.Wrapper.subscript.getter();

  v76 = v79;
  v77 = v80;
  v78 = v81;
  v75 = v1;
  sub_10001B4A4(&qword_1000B3B58, &qword_100079400);
  sub_10001E8B8(&qword_1000B3B60, &qword_1000B3B58, &qword_100079400);
  List.init(selection:content:)();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  sub_100022F14();
  AppEntity.fullyQualifiedIdentifier.getter();

  v33 = type metadata accessor for EntityIdentifier();
  (*(*(v33 - 8) + 56))(v15, 0, 1, v33);
  v34 = sub_10001E8B8(&qword_1000B3B68, &qword_1000B3B38, &qword_100079398);
  View.appEntityIdentifier(_:)();
  sub_10001F870(v15, &qword_1000B2F90, &qword_100077CF0);
  (*(v58 + 8))(v19, v16);
  static Edge.Set.top.getter();
  v79 = v16;
  v80 = v34;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v36 = v57;
  v37 = v59;
  View.listPadding(_:_:)();
  (*(v60 + 8))(v22, v37);
  v38 = v65;
  InsetGroupedListStyle.init()();
  v79 = v37;
  v80 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v39 = v61;
  v40 = v66;
  View.listStyle<A>(_:)();
  (*(v67 + 8))(v38, v40);
  (*(v62 + 8))(v36, v39);
  v41 = v68;
  static ListSectionSpacing.custom(_:)();
  v42 = *(sub_10001B4A4(&qword_1000B3B70, &qword_100079450) + 36);
  v43 = v69;
  v44 = v70;
  (*(v69 + 16))(&v27[v42], v41, v70);
  v45 = v43;
  v46 = *(v43 + 56);
  v46(&v27[v42], 0, 1, v44);
  KeyPath = swift_getKeyPath();
  v48 = &v27[*(v63 + 36)];
  v49 = *(sub_10001B4A4(&qword_1000B3B78, &qword_100079488) + 28);
  (*(v45 + 32))(v48 + v49, v41, v44);
  v46(v48 + v49, 0, 1, v44);
  *v48 = KeyPath;
  v50 = [objc_opt_self() systemGroupedBackgroundColor];
  v79 = Color.init(_:)();
  sub_100040C04();
  v51 = v72;
  View.scrollContentBackground<A>(_:)();

  sub_10001F870(v27, &qword_1000B3B50, qword_1000793B0);
  v52 = v71;
  sub_100040E84(v64, v71);
  v53 = (*(v74 + 80) + 16) & ~*(v74 + 80);
  v54 = swift_allocObject();
  sub_100040EEC(v52, v54 + v53);
  result = sub_10001B4A4(&qword_1000B3BB0, qword_1000794A8);
  v56 = (v51 + *(result + 36));
  *v56 = sub_100040F50;
  v56[1] = v54;
  v56[2] = 0;
  v56[3] = 0;
  return result;
}

uint64_t sub_10003DE98@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v93 = a2;
  v3 = type metadata accessor for ChecklistView();
  v4 = v3 - 8;
  v94 = *(v3 - 8);
  v5 = *(v94 + 64);
  __chkstk_darwin(v3);
  v6 = &v76 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10001B4A4(&qword_1000B3BC0, &qword_100079590);
  v95 = *(v7 - 8);
  v8 = *(v95 + 64);
  v9 = __chkstk_darwin(v7);
  v85 = &v76 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v79 = &v76 - v11;
  v12 = type metadata accessor for Locale();
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = &v76 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for String.LocalizationValue();
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v19 = &v76 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_10001B4A4(&qword_1000B3BC8, &qword_100079598);
  v21 = *(*(v20 - 8) + 64);
  v22 = __chkstk_darwin(v20 - 8);
  v92 = &v76 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __chkstk_darwin(v22);
  v91 = &v76 - v25;
  v26 = __chkstk_darwin(v24);
  v88 = &v76 - v27;
  __chkstk_darwin(v26);
  v97 = &v76 - v28;
  v29 = sub_10001B4A4(&qword_1000B3BD0, &qword_1000795A0);
  v89 = *(v29 - 8);
  v90 = v29;
  v30 = *(v89 + 64);
  v31 = __chkstk_darwin(v29);
  v87 = &v76 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v34 = &v76 - v33;
  v98 = a1;
  sub_10001B4A4(&qword_1000B3BD8, &qword_1000795A8);
  sub_1000411C0();
  v96 = v34;
  Section<>.init(content:)();
  v35 = *(a1 + *(v4 + 32) + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  v86 = v35;
  static Published.subscript.getter();

  v36 = v99;
  v84 = v6;
  v83 = a1;
  v82 = v5;
  v81 = v15;
  v80 = v19;
  if (v99)
  {
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    v77 = String.init(localized:table:bundle:locale:comment:)();
    v38 = v37;
    v99 = v36;
    KeyPath = swift_getKeyPath();
    sub_100040E84(a1, &v76 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
    v39 = (*(v94 + 80) + 16) & ~*(v94 + 80);
    v40 = (v5 + v39 + 7) & 0xFFFFFFFFFFFFFFF8;
    v41 = v7;
    v42 = (v40 + 15) & 0xFFFFFFFFFFFFFFF8;
    v43 = (v42 + 23) & 0xFFFFFFFFFFFFFFF8;
    v44 = swift_allocObject();
    sub_100040EEC(v6, v44 + v39);
    *(v44 + v40) = v36;
    v45 = v95;
    v46 = (v44 + v42);
    v7 = v41;
    *v46 = v77;
    v46[1] = v38;
    *(v44 + v43) = 0;

    sub_10001B4A4(&qword_1000B31F8, &qword_1000790F0);
    sub_10001B4A4(&qword_1000B3C60, &qword_1000796E8);
    sub_10001E8B8(&qword_1000B3988, &qword_1000B31F8, &qword_1000790F0);
    sub_100041564();
    v47 = v79;
    ForEach<>.init(_:id:content:)();
    (*(v45 + 32))(v97, v47, v41);
    v48 = 0;
  }

  else
  {
    v48 = 1;
    v45 = v95;
  }

  v49 = *(v45 + 56);
  v50 = 1;
  v49(v97, v48, 1, v7);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v51 = v99;
  if (v99)
  {
    KeyPath = v49;
    v79 = v7;
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    v81 = String.init(localized:table:bundle:locale:comment:)();
    v53 = v52;
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    if (v99)
    {

      v54 = 30.0;
    }

    else
    {
      v54 = 10.0;
    }

    v56 = v94;
    v57 = v82;
    v99 = v51;
    swift_getKeyPath();
    v58 = v84;
    sub_100040E84(v83, v84);
    v59 = (*(v56 + 80) + 16) & ~*(v56 + 80);
    v60 = (v57 + v59 + 7) & 0xFFFFFFFFFFFFFFF8;
    v61 = (v60 + 15) & 0xFFFFFFFFFFFFFFF8;
    v62 = swift_allocObject();
    sub_100040EEC(v58, v62 + v59);
    *(v62 + v60) = v51;
    v63 = (v62 + v61);
    *v63 = v81;
    v63[1] = v53;
    *(v62 + ((v61 + 23) & 0xFFFFFFFFFFFFFFF8)) = v54;

    sub_10001B4A4(&qword_1000B31F8, &qword_1000790F0);
    sub_10001B4A4(&qword_1000B3C60, &qword_1000796E8);
    sub_10001E8B8(&qword_1000B3988, &qword_1000B31F8, &qword_1000790F0);
    sub_100041564();
    v64 = v85;
    ForEach<>.init(_:id:content:)();
    v55 = v88;
    v7 = v79;
    (*(v95 + 32))(v88, v64, v79);
    v50 = 0;
    v49 = KeyPath;
  }

  else
  {
    v55 = v88;
  }

  v49(v55, v50, 1, v7);
  v66 = v89;
  v65 = v90;
  v67 = *(v89 + 16);
  v68 = v87;
  v67(v87, v96, v90);
  v69 = v97;
  v70 = v91;
  sub_100041484(v97, v91);
  v71 = v92;
  sub_100041484(v55, v92);
  v72 = v93;
  v67(v93, v68, v65);
  v73 = sub_10001B4A4(&qword_1000B3C58, qword_1000796A0);
  sub_100041484(v70, &v72[*(v73 + 48)]);
  sub_100041484(v71, &v72[*(v73 + 64)]);
  sub_10001F870(v55, &qword_1000B3BC8, &qword_100079598);
  sub_10001F870(v69, &qword_1000B3BC8, &qword_100079598);
  v74 = *(v66 + 8);
  v74(v96, v65);
  sub_10001F870(v71, &qword_1000B3BC8, &qword_100079598);
  sub_10001F870(v70, &qword_1000B3BC8, &qword_100079598);
  return (v74)(v68, v65);
}

uint64_t sub_10003E8C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_10001B4A4(&qword_1000B3C40, &unk_1000795D8);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v45 - v6;
  v8 = sub_10001B4A4(&qword_1000B3C30, &qword_1000795D0);
  v9 = v8 - 8;
  v10 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v12 = &v45 - v11;
  v13 = sub_10001B4A4(&qword_1000B3BF0, &qword_1000795B0);
  v14 = v13 - 8;
  v15 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13);
  v17 = &v45 - v16;
  *v7 = static HorizontalAlignment.center.getter();
  *(v7 + 1) = 0;
  v7[16] = 1;
  v18 = sub_10001B4A4(&qword_1000B3D38, &qword_1000797B8);
  sub_10003F230(a1, &v7[*(v18 + 44)]);
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  sub_100023628(v7, v12, &qword_1000B3C40, &unk_1000795D8);
  v19 = &v12[*(v9 + 44)];
  v20 = v51;
  *(v19 + 4) = v50;
  *(v19 + 5) = v20;
  *(v19 + 6) = v52;
  v21 = v47;
  *v19 = v46;
  *(v19 + 1) = v21;
  v22 = v49;
  *(v19 + 2) = v48;
  *(v19 + 3) = v22;
  LOBYTE(v7) = static Edge.Set.bottom.getter();
  EdgeInsets.init(_all:)();
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  sub_100023628(v12, v17, &qword_1000B3C30, &qword_1000795D0);
  v31 = &v17[*(sub_10001B4A4(&qword_1000B3C20, &qword_1000795C8) + 36)];
  *v31 = v7;
  *(v31 + 1) = v24;
  *(v31 + 2) = v26;
  *(v31 + 3) = v28;
  *(v31 + 4) = v30;
  v31[40] = 0;
  LOBYTE(v7) = static Edge.Set.horizontal.getter();
  v32 = &v17[*(sub_10001B4A4(&qword_1000B3C10, &qword_1000795C0) + 36)];
  *v32 = v7;
  *(v32 + 8) = 0u;
  *(v32 + 24) = 0u;
  v32[40] = 1;
  LOBYTE(v7) = static Edge.Set.bottom.getter();
  EdgeInsets.init(_all:)();
  v34 = v33;
  v36 = v35;
  v38 = v37;
  v40 = v39;
  v41 = &v17[*(sub_10001B4A4(&qword_1000B3C00, &qword_1000795B8) + 36)];
  *v41 = v7;
  *(v41 + 1) = v34;
  *(v41 + 2) = v36;
  *(v41 + 3) = v38;
  *(v41 + 4) = v40;
  v41[40] = 0;
  v42 = &v17[*(v14 + 44)];
  v42[32] = 0;
  *v42 = 0u;
  *(v42 + 1) = 0u;
  v45 = static Color.clear.getter();
  v43 = AnyView.init<A>(_:)();
  sub_100023628(v17, a2, &qword_1000B3BF0, &qword_1000795B0);
  result = sub_10001B4A4(&qword_1000B3BD8, &qword_1000795A8);
  *(a2 + *(result + 36)) = v43;
  return result;
}

uint64_t sub_10003EC30(uint64_t a1)
{
  v28 = a1;
  v30 = type metadata accessor for DispatchWorkItemFlags();
  v33 = *(v30 - 8);
  v1 = *(v33 + 64);
  __chkstk_darwin(v30);
  v3 = &v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for DispatchQoS();
  v31 = *(v4 - 8);
  v32 = v4;
  v5 = *(v31 + 64);
  __chkstk_darwin(v4);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ChecklistView();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8 - 8);
  v11 = type metadata accessor for DispatchTime();
  v29 = v11;
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v11);
  v16 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v26 - v17;
  sub_10001AC14(0, &qword_1000B2D48, OS_dispatch_queue_ptr);
  v27 = static OS_dispatch_queue.main.getter();
  static DispatchTime.now()();
  + infix(_:_:)();
  v19 = *(v12 + 8);
  v19(v16, v11);
  sub_100040E84(v28, &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v21 = swift_allocObject();
  sub_100040EEC(&v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v21 + v20);
  aBlock[4] = sub_100041104;
  aBlock[5] = v21;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10002086C;
  aBlock[3] = &unk_1000A3D38;
  v22 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100041C74(&qword_1000B2D50, &type metadata accessor for DispatchWorkItemFlags);
  sub_10001B4A4(&qword_1000B2D58, &unk_100077D40);
  sub_10001E8B8(&qword_1000B2D60, &qword_1000B2D58, &unk_100077D40);
  v23 = v30;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v24 = v27;
  OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
  _Block_release(v22);

  (*(v33 + 8))(v3, v23);
  (*(v31 + 8))(v7, v32);
  return (v19)(v18, v29);
}

void sub_10003F09C(uint64_t a1)
{
  v1 = *(a1 + *(type metadata accessor for ChecklistView() + 24) + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v3 == 1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    if ((v3 & 1) == 0)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      v2 = v1;
      static Published.subscript.setter();
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();
    }
  }
}

uint64_t sub_10003F230@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v97 = a2;
  v3 = type metadata accessor for AccessibilityTraits();
  v94 = *(v3 - 8);
  v95 = v3;
  v4 = *(v94 + 64);
  __chkstk_darwin(v3);
  v93 = v92 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10001B4A4(&qword_1000B3D40, &qword_1000797C0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v100 = v92 - v8;
  v96 = sub_10001B4A4(&qword_1000B3D48, &qword_1000797C8);
  v9 = *(*(v96 - 8) + 64);
  v10 = __chkstk_darwin(v96);
  v98 = v92 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v99 = v92 - v13;
  __chkstk_darwin(v12);
  v102 = v92 - v14;
  v15 = sub_10001B4A4(&qword_1000B3D50, &qword_1000797D0);
  v16 = v15 - 8;
  v17 = *(*(v15 - 8) + 64);
  v18 = __chkstk_darwin(v15);
  v103 = v92 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v21 = (v92 - v20);
  *v21 = static Alignment.center.getter();
  v21[1] = v22;
  v23 = sub_10001B4A4(&qword_1000B3D58, &qword_1000797D8);
  sub_10003FC00((v21 + *(v23 + 44)));
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v24 = (v21 + *(sub_10001B4A4(&qword_1000B3D60, qword_1000797E0) + 36));
  v25 = v117;
  *v24 = v116;
  v24[1] = v25;
  v24[2] = v118;
  v26 = static Edge.Set.bottom.getter();
  EdgeInsets.init(_all:)();
  v27 = *(v16 + 44);
  v101 = v21;
  v28 = v21 + v27;
  *v28 = v26;
  *(v28 + 1) = v29;
  *(v28 + 2) = v30;
  *(v28 + 3) = v31;
  *(v28 + 4) = v32;
  v28[40] = 0;
  v33 = *(a1 + *(type metadata accessor for ChecklistView() + 24) + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  v92[1] = v33;
  static Published.subscript.getter();

  v34 = v107;
  if (v107)
  {
    v35 = [v107 title];

    if (v35)
    {
      v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v37 = v36;

      goto LABEL_6;
    }

    v34 = 0;
  }

  v37 = 0xE000000000000000;
LABEL_6:
  *&v107 = v34;
  *(&v107 + 1) = v37;
  v92[0] = sub_1000235B4();
  v38 = Text.init<A>(_:)();
  v40 = v39;
  v42 = v41;
  static Font.title2.getter();
  static Font.Weight.bold.getter();
  Font.weight(_:)();

  v43 = Text.font(_:)();
  v45 = v44;
  v47 = v46;
  v49 = v48;

  sub_100023608(v38, v40, v42 & 1);

  KeyPath = swift_getKeyPath();
  v115 = v47 & 1;
  *&v107 = v43;
  *(&v107 + 1) = v45;
  v108[0] = v47 & 1;
  *&v108[8] = v49;
  *&v108[16] = KeyPath;
  *&v108[24] = 0;
  v108[26] = 1;
  v51 = v93;
  static AccessibilityTraits.isHeader.getter();
  sub_10001B4A4(&qword_1000B3D68, &unk_100079870);
  sub_100042118();
  v52 = v100;
  View.accessibilityAddTraits(_:)();
  (*(v94 + 8))(v51, v95);
  v113 = v107;
  v114[0] = *v108;
  *(v114 + 11) = *&v108[11];
  sub_10001F870(&v113, &qword_1000B3D68, &unk_100079870);
  static Alignment.leading.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v53 = v99;
  sub_100023628(v52, v99, &qword_1000B3D40, &qword_1000797C0);
  v54 = (v53 + *(v96 + 36));
  v55 = v124;
  v54[4] = v123;
  v54[5] = v55;
  v54[6] = v125;
  v56 = v120;
  *v54 = v119;
  v54[1] = v56;
  v57 = v122;
  v54[2] = v121;
  v54[3] = v57;
  sub_100023628(v53, v102, &qword_1000B3D48, &qword_1000797C8);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v58 = v107;
  if (!v107)
  {
LABEL_10:
    v61 = 0xE000000000000000;
    goto LABEL_11;
  }

  v59 = [v107 text];

  if (!v59)
  {
    v58 = 0;
    goto LABEL_10;
  }

  v58 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v61 = v60;

LABEL_11:
  *&v107 = v58;
  *(&v107 + 1) = v61;
  v62 = Text.init<A>(_:)();
  v64 = v63;
  v66 = v65;
  static Font.title2.getter();
  v67 = Text.font(_:)();
  v69 = v68;
  v71 = v70;

  sub_100023608(v62, v64, v66 & 1);

  LODWORD(v107) = static HierarchicalShapeStyle.secondary.getter();
  v95 = Text.foregroundStyle<A>(_:)();
  v96 = v72;
  v100 = v73;
  LOBYTE(v62) = v74;
  sub_100023608(v67, v69, v71 & 1);

  v99 = swift_getKeyPath();
  LOBYTE(v64) = v62 & 1;
  v111 = v62 & 1;
  static Alignment.leading.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  *(&v112[3] + 5) = v129;
  *(&v112[4] + 5) = v130;
  *(&v112[5] + 5) = v131;
  *(&v112[6] + 5) = v132;
  *(v112 + 5) = v126;
  *(&v112[1] + 5) = v127;
  *(&v112[2] + 5) = v128;
  v75 = v103;
  sub_10001F808(v101, v103, &qword_1000B3D50, &qword_1000797D0);
  v76 = v102;
  v77 = v98;
  sub_10001F808(v102, v98, &qword_1000B3D48, &qword_1000797C8);
  v78 = v75;
  v79 = v97;
  sub_10001F808(v78, v97, &qword_1000B3D50, &qword_1000797D0);
  v80 = sub_10001B4A4(&qword_1000B3D78, &qword_100079888);
  sub_10001F808(v77, v79 + *(v80 + 48), &qword_1000B3D48, &qword_1000797C8);
  v81 = (v79 + *(v80 + 64));
  v83 = v95;
  v82 = v96;
  *&v104 = v95;
  *(&v104 + 1) = v100;
  LOBYTE(v105) = v64;
  *(&v105 + 1) = *v110;
  DWORD1(v105) = *&v110[3];
  *(&v105 + 1) = v96;
  *&v106[0] = v99;
  WORD4(v106[0]) = 0;
  BYTE10(v106[0]) = 1;
  *(v106 + 11) = v112[0];
  *(&v106[1] + 11) = v112[1];
  *(&v106[2] + 11) = v112[2];
  *(&v106[3] + 11) = v112[3];
  *(&v106[4] + 11) = v112[4];
  *(&v106[5] + 11) = v112[5];
  *(&v106[6] + 11) = v112[6];
  *(&v106[7] + 1) = *(&v112[6] + 13);
  v84 = v105;
  *v81 = v104;
  v81[1] = v84;
  v85 = v106[0];
  v86 = v106[1];
  v87 = v106[3];
  v81[4] = v106[2];
  v81[5] = v87;
  v81[2] = v85;
  v81[3] = v86;
  v88 = v106[4];
  v89 = v106[5];
  v90 = v106[7];
  v81[8] = v106[6];
  v81[9] = v90;
  v81[6] = v88;
  v81[7] = v89;
  sub_10001F808(&v104, &v107, &qword_1000B3D80, &qword_100079890);
  sub_10001F870(v76, &qword_1000B3D48, &qword_1000797C8);
  sub_10001F870(v101, &qword_1000B3D50, &qword_1000797D0);
  *&v108[91] = v112[4];
  *&v108[107] = v112[5];
  *v109 = v112[6];
  *&v108[27] = v112[0];
  *&v108[43] = v112[1];
  *&v108[59] = v112[2];
  *&v107 = v83;
  *(&v107 + 1) = v100;
  v108[0] = v64;
  *&v108[1] = *v110;
  *&v108[4] = *&v110[3];
  *&v108[8] = v82;
  *&v108[16] = v99;
  *&v108[24] = 0;
  v108[26] = 1;
  *&v109[13] = *(&v112[6] + 13);
  *&v108[75] = v112[3];
  sub_10001F870(&v107, &qword_1000B3D80, &qword_100079890);
  sub_10001F870(v77, &qword_1000B3D48, &qword_1000797C8);
  return sub_10001F870(v103, &qword_1000B3D50, &qword_1000797D0);
}

uint64_t sub_10003FC00@<X0>(uint64_t *a1@<X8>)
{
  v34 = a1;
  v1 = type metadata accessor for ImageResource();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_10001B4A4(&qword_1000B3D88, &qword_100079898);
  v6 = *(*(v32 - 8) + 64);
  v7 = __chkstk_darwin(v32);
  v33 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = &v32 - v9;
  v11 = type metadata accessor for ColorScheme();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v11);
  v16 = &v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v32 - v17;
  sub_10003CE3C(&v32 - v17);
  (*(v12 + 104))(v16, enum case for ColorScheme.light(_:), v11);
  v19 = static ColorScheme.== infix(_:_:)();
  v20 = *(v12 + 8);
  v20(v16, v11);
  v20(v18, v11);
  if (v19)
  {
    v21 = static Color.white.getter();
  }

  else
  {
    v22 = [objc_opt_self() tertiarySystemBackgroundColor];
    v21 = Color.init(_:)();
  }

  v23 = v21;
  if (qword_1000B2B90 != -1)
  {
    swift_once();
  }

  v24 = sub_1000421A4(v1, qword_1000B6F30);
  (*(v2 + 16))(v5, v24, v1);
  v35 = Image.init(_:)();
  View.accessibilityHidden(_:)();

  v25 = &v10[*(v32 + 36)];
  v26 = *(sub_10001B4A4(&qword_1000B3D90, &qword_1000798A0) + 28);
  static SymbolRenderingMode.multicolor.getter();
  v27 = type metadata accessor for SymbolRenderingMode();
  (*(*(v27 - 8) + 56))(v25 + v26, 0, 1, v27);
  *v25 = swift_getKeyPath();
  v28 = v33;
  sub_10001F808(v10, v33, &qword_1000B3D88, &qword_100079898);
  v29 = v34;
  *v34 = v23;
  *(v29 + 4) = 256;
  v30 = sub_10001B4A4(&qword_1000B3D98, &qword_1000798D8);
  sub_10001F808(v28, v29 + *(v30 + 48), &qword_1000B3D88, &qword_100079898);

  sub_10001F870(v10, &qword_1000B3D88, &qword_100079898);
  sub_10001F870(v28, &qword_1000B3D88, &qword_100079898);
}

uint64_t sub_10004001C@<X0>(void **a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v39 = a4;
  v40 = a5;
  v43 = a6;
  v9 = type metadata accessor for ListSectionSpacing();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_10001B4A4(&qword_1000B3CA8, &qword_100079708);
  v14 = *(v41 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v41);
  v17 = &v38 - v16;
  v42 = sub_10001B4A4(&qword_1000B3C98, &qword_100079700);
  v18 = *(*(v42 - 8) + 64);
  v19 = __chkstk_darwin(v42);
  v21 = &v38 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v23 = &v38 - v22;
  v24 = *a1;
  v44 = a2;
  v45 = v24;
  if (a3 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    if (!result)
    {
      goto LABEL_9;
    }
  }

  else
  {
    result = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      goto LABEL_9;
    }
  }

  if ((a3 & 0xC000000000000001) != 0)
  {
    v37 = v24;
    v28 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_6:
    v29 = v28;
    sub_10001AC14(0, &qword_1000B30C8, TPSTip_ptr);
    v30 = static NSObject.== infix(_:_:)();

    if (v30)
    {
      sub_10004086C(v39, v40, v17);
      sub_100023628(v17, v21, &qword_1000B3CA8, &qword_100079708);
      (*(v14 + 56))(v21, 0, 1, v41);
LABEL_10:
      sub_100023628(v21, v23, &qword_1000B3C98, &qword_100079700);
      sub_10001B4A4(&qword_1000B3D08, &qword_100079738);
      sub_10004176C();
      sub_100041AA0();
      v31 = v43;
      Section<>.init(header:content:)();
      static ListSectionSpacing.custom(_:)();
      v32 = *(sub_10001B4A4(&qword_1000B3C78, &qword_1000796F0) + 36);
      (*(v10 + 16))(v31 + v32, v13, v9);
      v33 = *(v10 + 56);
      v33((v31 + v32), 0, 1, v9);
      KeyPath = swift_getKeyPath();
      v35 = (v31 + *(sub_10001B4A4(&qword_1000B3C60, &qword_1000796E8) + 36));
      v36 = *(sub_10001B4A4(&qword_1000B3B78, &qword_100079488) + 28);
      (*(v10 + 32))(v35 + v36, v13, v9);
      result = v33(v35 + v36, 0, 1, v9);
      *v35 = KeyPath;
      return result;
    }

LABEL_9:
    (*(v14 + 56))(v21, 1, 1, v41);
    goto LABEL_10;
  }

  if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v26 = *(a3 + 32);
    v27 = v24;
    v28 = v26;
    goto LABEL_6;
  }

  __break(1u);
  return result;
}

double sub_10004044C@<D0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v33 = a2;
  v36 = a3;
  v37 = type metadata accessor for AccessibilityTraits();
  v35 = *(v37 - 8);
  v4 = *(v35 + 64);
  __chkstk_darwin(v37);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = type metadata accessor for AccessibilityChildBehavior();
  v7 = *(v34 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v34);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ChecklistItemView(0);
  v12 = *(*(v11 - 1) + 64);
  __chkstk_darwin(v11);
  v14 = (&v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v32 = sub_10001B4A4(&qword_1000B3D28, &qword_100079778);
  v15 = *(v32 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v32);
  v18 = &v32 - v17;
  v19 = *(a1 + *(type metadata accessor for ChecklistView() + 24) + 8);
  *v14 = swift_getKeyPath();
  sub_10001B4A4(&qword_1000B3D30, &qword_1000797B0);
  swift_storeEnumTagMultiPayload();
  v20 = v14 + v11[6];
  v38 = 0;
  v39 = 0;
  type metadata accessor for CGSize(0);
  v21 = v19;
  State.init(wrappedValue:)();
  v22 = v41;
  *v20 = v40;
  *(v20 + 2) = v22;
  v23 = (v14 + v11[5]);
  type metadata accessor for ChecklistViewModel();
  sub_100041C74(&qword_1000B3B00, type metadata accessor for ChecklistViewModel);
  *v23 = ObservedObject.init(wrappedValue:)();
  v23[1] = v24;
  v25 = v33;
  *(v14 + v11[7]) = v33;
  v26 = v25;
  static AccessibilityChildBehavior.combine.getter();
  v27 = sub_100041C74(&qword_1000B3D20, type metadata accessor for ChecklistItemView);
  View.accessibilityElement(children:)();
  (*(v7 + 8))(v10, v34);
  sub_100042060(v14);
  static AccessibilityTraits.isButton.getter();
  *&v40 = v11;
  *(&v40 + 1) = v27;
  swift_getOpaqueTypeConformance2();
  v28 = v36;
  v29 = v32;
  View.accessibilityAddTraits(_:)();
  (*(v35 + 8))(v6, v37);
  (*(v15 + 8))(v18, v29);
  v30 = v28 + *(sub_10001B4A4(&qword_1000B3D08, &qword_100079738) + 36);
  *(v30 + 32) = 0;
  result = 0.0;
  *v30 = 0u;
  *(v30 + 16) = 0u;
  return result;
}

double sub_10004086C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for Prominence();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = a1;
  v41 = a2;
  sub_1000235B4();

  v11 = Text.init<A>(_:)();
  v13 = v12;
  v40 = v11;
  v41 = v12;
  v15 = v14 & 1;
  v42 = v14 & 1;
  v43 = v16;
  (*(v7 + 104))(v10, enum case for Prominence.increased(_:), v6);
  View.headerProminence(_:)();
  (*(v7 + 8))(v10, v6);
  sub_100023608(v11, v13, v15);

  KeyPath = swift_getKeyPath();
  v18 = a3 + *(sub_10001B4A4(&qword_1000B3CE8, &qword_100079728) + 36);
  *v18 = KeyPath;
  *(v18 + 8) = 0;
  *(v18 + 16) = 1;
  LOBYTE(KeyPath) = static Edge.Set.top.getter();
  EdgeInsets.init(_all:)();
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v27 = a3 + *(sub_10001B4A4(&qword_1000B3CD8, &qword_100079720) + 36);
  *v27 = KeyPath;
  *(v27 + 8) = v20;
  *(v27 + 16) = v22;
  *(v27 + 24) = v24;
  *(v27 + 32) = v26;
  *(v27 + 40) = 0;
  LOBYTE(KeyPath) = static Edge.Set.leading.getter();
  v28 = a3 + *(sub_10001B4A4(&qword_1000B3CC8, &qword_100079718) + 36);
  *v28 = KeyPath;
  *(v28 + 8) = 0u;
  *(v28 + 24) = 0u;
  *(v28 + 40) = 1;
  LOBYTE(KeyPath) = static Edge.Set.bottom.getter();
  EdgeInsets.init(_all:)();
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v37 = a3 + *(sub_10001B4A4(&qword_1000B3CB8, &qword_100079710) + 36);
  *v37 = KeyPath;
  *(v37 + 8) = v30;
  *(v37 + 16) = v32;
  *(v37 + 24) = v34;
  *(v37 + 32) = v36;
  *(v37 + 40) = 0;
  v38 = a3 + *(sub_10001B4A4(&qword_1000B3CA8, &qword_100079708) + 36);
  *(v38 + 32) = 0;
  result = 0.0;
  *v38 = 0u;
  *(v38 + 16) = 0u;
  return result;
}

uint64_t sub_100040B50@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.multilineTextAlignment.getter();
  *a1 = result;
  return result;
}

unint64_t sub_100040C04()
{
  result = qword_1000B3B80;
  if (!qword_1000B3B80)
  {
    sub_10001E860(&qword_1000B3B50, qword_1000793B0);
    sub_100040CBC();
    sub_10001E8B8(&qword_1000B3BA0, &qword_1000B3B78, &qword_100079488);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B3B80);
  }

  return result;
}

unint64_t sub_100040CBC()
{
  result = qword_1000B3B88;
  if (!qword_1000B3B88)
  {
    sub_10001E860(&qword_1000B3B70, &qword_100079450);
    sub_10001E860(&qword_1000B3B48, &qword_1000793A8);
    type metadata accessor for InsetGroupedListStyle();
    sub_10001E860(&qword_1000B3B40, &qword_1000793A0);
    sub_10001E860(&qword_1000B3B38, &qword_100079398);
    sub_10001E8B8(&qword_1000B3B68, &qword_1000B3B38, &qword_100079398);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_10001E8B8(&qword_1000B3B90, &qword_1000B3B98, &unk_100079490);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B3B88);
  }

  return result;
}

uint64_t sub_100040E84(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ChecklistView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100040EEC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ChecklistView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100040F68()
{
  v1 = type metadata accessor for ChecklistView();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = (v0 + v3);
  sub_10001B4A4(&qword_1000B2FB0, &qword_100077D10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = type metadata accessor for ColorScheme();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else
  {
    v7 = *v5;
  }

  v8 = *(v1 + 20);
  sub_10001B4A4(&qword_1000B3BA8, &qword_1000794A0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = type metadata accessor for DismissAction();
    (*(*(v9 - 8) + 8))(&v5[v8], v9);
  }

  else
  {
    v10 = *&v5[v8];
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_10004111C(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for ChecklistView() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_100041190(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_1000411C0()
{
  result = qword_1000B3BE0;
  if (!qword_1000B3BE0)
  {
    sub_10001E860(&qword_1000B3BD8, &qword_1000795A8);
    sub_100041278();
    sub_10001E8B8(&qword_1000B3C48, &qword_1000B3C50, qword_1000795E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B3BE0);
  }

  return result;
}

unint64_t sub_100041278()
{
  result = qword_1000B3BE8;
  if (!qword_1000B3BE8)
  {
    sub_10001E860(&qword_1000B3BF0, &qword_1000795B0);
    sub_100041934(&qword_1000B3BF8, &qword_1000B3C00, &qword_1000795B8, sub_10004135C);
    sub_10001E8B8(&qword_1000B3950, &qword_1000B3958, &qword_1000790A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B3BE8);
  }

  return result;
}

unint64_t sub_1000413BC()
{
  result = qword_1000B3C28;
  if (!qword_1000B3C28)
  {
    sub_10001E860(&qword_1000B3C30, &qword_1000795D0);
    sub_10001E8B8(&qword_1000B3C38, &qword_1000B3C40, &unk_1000795D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B3C28);
  }

  return result;
}

uint64_t sub_100041484(uint64_t a1, uint64_t a2)
{
  v4 = sub_10001B4A4(&qword_1000B3BC8, &qword_100079598);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1000414F8(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = String._bridgeToObjectiveC()();
  [v4 setIdentifier:v5];
}

unint64_t sub_100041564()
{
  result = qword_1000B3C68;
  if (!qword_1000B3C68)
  {
    sub_10001E860(&qword_1000B3C60, &qword_1000796E8);
    sub_10004161C();
    sub_10001E8B8(&qword_1000B3BA0, &qword_1000B3B78, &qword_100079488);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B3C68);
  }

  return result;
}

unint64_t sub_10004161C()
{
  result = qword_1000B3C70;
  if (!qword_1000B3C70)
  {
    sub_10001E860(&qword_1000B3C78, &qword_1000796F0);
    sub_1000416D4();
    sub_10001E8B8(&qword_1000B3B90, &qword_1000B3B98, &unk_100079490);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B3C70);
  }

  return result;
}

unint64_t sub_1000416D4()
{
  result = qword_1000B3C80;
  if (!qword_1000B3C80)
  {
    sub_10001E860(&qword_1000B3C88, &qword_1000796F8);
    sub_10004176C();
    sub_100041AA0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B3C80);
  }

  return result;
}

unint64_t sub_10004176C()
{
  result = qword_1000B3C90;
  if (!qword_1000B3C90)
  {
    sub_10001E860(&qword_1000B3C98, &qword_100079700);
    sub_1000417F0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B3C90);
  }

  return result;
}

unint64_t sub_1000417F0()
{
  result = qword_1000B3CA0;
  if (!qword_1000B3CA0)
  {
    sub_10001E860(&qword_1000B3CA8, &qword_100079708);
    sub_100041934(&qword_1000B3CB0, &qword_1000B3CB8, &qword_100079710, sub_1000418D4);
    sub_10001E8B8(&qword_1000B3950, &qword_1000B3958, &qword_1000790A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B3CA0);
  }

  return result;
}

uint64_t sub_100041934(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_10001E860(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1000419B8()
{
  result = qword_1000B3CE0;
  if (!qword_1000B3CE0)
  {
    sub_10001E860(&qword_1000B3CE8, &qword_100079728);
    swift_getOpaqueTypeConformance2();
    sub_10001E8B8(&qword_1000B3CF0, &qword_1000B3CF8, &qword_100079730);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B3CE0);
  }

  return result;
}

unint64_t sub_100041AA0()
{
  result = qword_1000B3D00;
  if (!qword_1000B3D00)
  {
    sub_10001E860(&qword_1000B3D08, &qword_100079738);
    sub_100041B58();
    sub_10001E8B8(&qword_1000B3950, &qword_1000B3958, &qword_1000790A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B3D00);
  }

  return result;
}

unint64_t sub_100041B58()
{
  result = qword_1000B3D10;
  if (!qword_1000B3D10)
  {
    sub_10001E860(&qword_1000B3D18, &qword_100079740);
    type metadata accessor for ChecklistItemView(255);
    sub_100041C74(&qword_1000B3D20, type metadata accessor for ChecklistItemView);
    swift_getOpaqueTypeConformance2();
    sub_100041C74(&qword_1000B3A48, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B3D10);
  }

  return result;
}

uint64_t sub_100041C74(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100041CBC()
{
  v1 = type metadata accessor for ChecklistView();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = (v0 + v3);
  sub_10001B4A4(&qword_1000B2FB0, &qword_100077D10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = type metadata accessor for ColorScheme();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else
  {
    v7 = *v5;
  }

  v8 = *(v1 + 20);
  sub_10001B4A4(&qword_1000B3BA8, &qword_1000794A0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = type metadata accessor for DismissAction();
    (*(*(v9 - 8) + 8))(&v5[v8], v9);
  }

  else
  {
    v10 = *&v5[v8];
  }

  v11 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = (v11 + 15) & 0xFFFFFFFFFFFFFFF8;

  v13 = *(v0 + v11);

  v14 = *(v0 + v12 + 8);

  return _swift_deallocObject(v0, ((v12 + 23) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_100041E88@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for ChecklistView() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v2 + v7);
  v10 = *(v2 + v8);
  v11 = *(v2 + v8 + 8);
  v12 = *(v2 + ((v8 + 23) & 0xFFFFFFFFFFFFFFF8));

  return sub_10004001C(a1, v2 + v6, v9, v10, v11, a2);
}

uint64_t sub_100041F9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(char *))
{
  v11 = sub_10001B4A4(a5, a6);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v16 - v13;
  sub_10001F808(a1, &v16 - v13, a5, a6);
  return a7(v14);
}

uint64_t sub_100042060(uint64_t a1)
{
  v2 = type metadata accessor for ChecklistItemView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000420C4@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.multilineTextAlignment.getter();
  *a1 = result;
  return result;
}

unint64_t sub_100042118()
{
  result = qword_1000B3D70;
  if (!qword_1000B3D70)
  {
    sub_10001E860(&qword_1000B3D68, &unk_100079870);
    sub_100039E4C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B3D70);
  }

  return result;
}

uint64_t sub_1000421A4(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

unint64_t sub_100042240()
{
  result = qword_1000B3DA8;
  if (!qword_1000B3DA8)
  {
    sub_10001E860(&qword_1000B3BB0, qword_1000794A8);
    sub_10001E860(&qword_1000B3B50, qword_1000793B0);
    sub_100040C04();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B3DA8);
  }

  return result;
}

void sub_100042328()
{
  if (![v0 isSharedVariant])
  {
    return;
  }

  v1 = [v0 sharedTipAvailabilityView];
  if (!v1)
  {
    v2 = [v0 actionButton];
    if (v2)
    {
      v3 = v2;
      [v2 setEnabled:0];
    }

    [v0 deactivateBottomConstraints];
    v4 = [objc_allocWithZone(UIView) init];
    [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
    v5 = [v0 contentScrollView];
    [v5 addSubview:v4];

    v6 = [objc_allocWithZone(UIView) init];
    [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
    v7 = [objc_opt_self() opaqueSeparatorColor];
    [v6 setBackgroundColor:v7];

    [v4 addSubview:v6];
    v8 = [v6 heightAnchor];
    v9 = [v0 cellAppearance];
    [v9 displayScale];
    v11 = v10;

    v12 = [v8 constraintEqualToConstant:1.0 / v11];
    [v12 setActive:1];

    v13 = [v6 topAnchor];
    v14 = [v4 topAnchor];
    v15 = [v13 constraintEqualToAnchor:v14];

    [v15 setActive:1];
    v16 = [v6 leadingAnchor];
    v17 = [v4 leadingAnchor];
    v18 = [v16 constraintEqualToAnchor:v17];

    [v18 setActive:1];
    v70 = v6;
    v19 = [v6 trailingAnchor];
    v20 = [v4 trailingAnchor];
    v21 = [v19 constraintEqualToAnchor:v20];

    [v21 setActive:1];
    v22 = [v4 leadingAnchor];
    v23 = [v0 titleLabel];
    v24 = [v23 leadingAnchor];

    v25 = [v22 constraintEqualToAnchor:v24];
    [v25 setActive:1];

    v26 = [v4 trailingAnchor];
    v27 = [v0 titleLabel];
    v28 = [v27 trailingAnchor];

    v29 = [v26 constraintEqualToAnchor:v28];
    [v29 setActive:1];

    v30 = [v0 sharedTipAvailabilityTextView];
    if (v30)
    {
    }

    else
    {
      [v0 createAvailabilityTextView];
    }

    v31 = [v0 sharedTipAvailabilityTextView];
    p_ivar_base_size = (&ResourceBundleClass + 8);
    v33 = &selRef_setupSearchResultSelectedHandler;
    if (v31)
    {
      v34 = v31;
      [v4 addSubview:v34];
      v35 = [v34 leadingAnchor];
      v36 = [v4 leadingAnchor];
      v37 = [v35 constraintEqualToAnchor:v36];

      [v37 setActive:1];
      v38 = [v34 trailingAnchor];

      v39 = [v4 trailingAnchor];
      v40 = [v38 constraintEqualToAnchor:v39];

      [v40 setActive:1];
      v41 = [v34 topAnchor];

      v42 = [v6 bottomAnchor];
      v43 = [v41 constraintEqualToAnchor:v42 constant:8.0];

      [v43 setActive:1];
      v44 = [v34 bottomAnchor];

      v45 = [v4 bottomAnchor];
      v46 = [v44 constraintEqualToAnchor:v45];

      v33 = &selRef_setupSearchResultSelectedHandler;
      [v46 setActive:1];

      p_ivar_base_size = &ResourceBundleClass.ivar_base_size;
    }

    v47 = p_ivar_base_size;
    v48 = [v0 footnoteTextView];
    v49 = v48;
    if (!v48)
    {
      v50 = [v0 tip];
      v51 = [v50 actions];

      if (!v51 || ((sub_10001AC14(0, &qword_1000B3F70, TPSURLAction_ptr), v52 = static Array._unconditionallyBridgeFromObjectiveC(_:)(), v51, v52 >> 62) ? (v53 = _CocoaArrayWrapper.endIndex.getter()) : (v53 = *((v52 & 0xFFFFFFFFFFFFFF8) + 0x10)), (, !v53) || (v54 = [v0 actionButton]) == 0))
      {
        v55 = [v0 tip];
        v56 = [v55 containsLinks];

        if (v56)
        {
          v54 = [v0 contentTextView];
          if (!v54)
          {
LABEL_19:
            v71 = 0;
LABEL_23:
            v61 = [v4 bottomAnchor];
            v62 = [v0 contentScrollView];
            v63 = [v62 bottomAnchor];

            [v0 bottomPadding];
            v65 = [v61 *(v47 + 443)];

            [v0 setSharedTextViewBottomConstraint:v65];
            v66 = [v0 sharedTextViewBottomConstraint];
            if (v66)
            {
              LODWORD(v67) = 1144750080;
              v68 = v66;
              [v66 setPriority:v67];
            }

            v69 = [v0 sharedTextViewBottomConstraint];
            [v69 setActive:1];

            [v0 setSharedTipAvailabilityView:v4];
            [v0 setNeedsUpdateConstraints];

            v1 = v71;
            goto LABEL_26;
          }
        }

        else
        {
          v54 = [v0 contentLabel];
          if (!v54)
          {
            goto LABEL_19;
          }
        }
      }

      v49 = v54;
      v48 = 0;
    }

    v71 = v49;
    v57 = v48;
    v58 = [v4 v33[95]];
    v59 = [v71 bottomAnchor];
    v60 = [v58 *(v47 + 443)];

    [v60 setActive:1];
    goto LABEL_23;
  }

LABEL_26:
}

id sub_100042D64()
{
  v1 = [v0 sharedTipAvailabilityView];
  if (v1)
  {
    v2 = v1;
    [v1 removeFromSuperview];
    [v0 setSharedTipAvailabilityView:0];
  }

  v3 = [v0 sharedTextViewBottomConstraint];
  if (v3)
  {
    v4 = v3;
    [v3 setActive:0];
  }

  [v0 setSharedTextViewBottomConstraint:0];

  return [v0 setNeedsUpdateConstraints];
}

void sub_100042E70()
{
  v1 = v0;
  v2 = type metadata accessor for Locale();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v4 = type metadata accessor for String.LocalizationValue();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v6 = [objc_allocWithZone(TPSTipContentTextView) init];
  [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v6 setScrollEnabled:0];
  v43 = v6;
  [v43 _setInteractiveTextSelectionDisabled:1];
  v7 = objc_opt_self();
  v8 = [v7 clearColor];
  [v43 setBackgroundColor:v8];

  [v43 setEditable:0];
  v9 = objc_opt_self();
  v10 = [v9 footnoteFont];
  [v43 setFont:v10];

  [v43 setDataDetectorTypes:0];
  v11 = [v43 textContainer];
  [v11 setHeightTracksTextView:1];

  [v43 setDelegate:v0];
  [v43 setOpaque:1];

  [v43 setTextContainerInset:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];
  v12 = [v43 textContainer];

  [v12 setLineFragmentPadding:0.0];
  [v0 setSharedTipAvailabilityTextView:v43];
  v13 = [v0 appController];
  v14 = [v0 tip];
  v15 = [v13 hasLocalVariant:v14];

  if (v15)
  {
    v16 = [v9 footnoteBoldTextFont];
    if (v16)
    {
      v17 = v16;
      v18 = [objc_allocWithZone(NSTextAttachment) init];
      v19 = objc_opt_self();
      v20 = [v19 configurationWithFont:v17];
      v21 = [v7 linkColor];
      v22 = [v19 configurationWithHierarchicalColor:v21];

      v23 = [objc_opt_self() deviceSymbol];
      if (!v23)
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v23 = String._bridgeToObjectiveC()();
      }

      v24 = [objc_opt_self() systemImageNamed:v23 withConfiguration:v20];

      v25 = [v24 imageByApplyingSymbolConfiguration:v22];
      [v18 setImage:v25];

      sub_10001AC14(0, &unk_1000B3F60, NSMutableAttributedString_ptr);
      v42 = [swift_getObjCClassFromMetadata() attributedStringWithAttachment:v18];
      String.LocalizationValue.init(stringLiteral:)();
      static Locale.current.getter();
      v26._countAndFlagsBits = String.init(localized:table:bundle:locale:comment:)();
      String.append(_:)(v26);

      sub_10001B4A4(&unk_1000B3F20, &qword_100079948);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1000798F0;
      *(inited + 32) = NSFontAttributeName;
      v28 = sub_10001AC14(0, &qword_1000B3F48, UIFont_ptr);
      *(inited + 40) = v17;
      *(inited + 64) = v28;
      *(inited + 72) = NSForegroundColorAttributeName;
      v29 = NSFontAttributeName;
      v30 = NSForegroundColorAttributeName;
      v31 = v17;
      v32 = [v7 linkColor];
      v33 = sub_10001AC14(0, &qword_1000B2DA0, UIColor_ptr);
      *(inited + 80) = v32;
      *(inited + 104) = v33;
      *(inited + 112) = NSLinkAttributeName;
      *(inited + 144) = &type metadata for String;
      *(inited + 120) = 35;
      *(inited + 128) = 0xE100000000000000;
      v34 = NSLinkAttributeName;
      sub_1000467C4(inited);
      swift_setDeallocating();
      sub_10001B4A4(&qword_1000B3F30, &qword_100079950);
      swift_arrayDestroy();
      v35 = objc_allocWithZone(NSAttributedString);
      v36 = String._bridgeToObjectiveC()();

      type metadata accessor for Key(0);
      sub_100046B4C(&qword_1000B2C58, type metadata accessor for Key);
      isa = Dictionary._bridgeToObjectiveC()().super.isa;

      v38 = [v35 initWithString:v36 attributes:isa];

      v39 = v42;
      [v42 appendAttributedString:v38];
      v40 = [v1 sharedTipAvailabilityTextView];
      if (v40)
      {
        v41 = v40;
        v39 = v42;
        [v41 setAttributedText:v39];
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

  else
  {
    [v0 processAvailabilityContent];
  }
}

void sub_1000436CC()
{
  v1 = [v0 contentLabelBottomConstraint];
  if (v1)
  {
    v2 = v1;
    [v1 setActive:0];
  }

  v3 = [v0 textViewBottomConstraint];
  if (v3)
  {
    v4 = v3;
    [v3 setActive:0];
  }

  v5 = [v0 actionButtonBottomConstraint];
  if (v5)
  {
    v6 = v5;
    [v5 setActive:0];
  }

  v7 = [v0 footnoteBottomConstraint];
  if (v7)
  {
    v8 = v7;
    [v7 setActive:0];
  }

  v9 = [v0 sharedTextViewBottomConstraint];
  if (v9)
  {
    v10 = v9;
    [v9 setActive:0];
  }
}

void sub_100043858()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = type metadata accessor for AttributeContainer();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v93 = &v82 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = type metadata accessor for AttributedString.MarkdownParsingOptions.FailurePolicy();
  v101 = *(v102 - 8);
  v7 = *(v101 + 64);
  __chkstk_darwin(v102);
  v100 = &v82 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = type metadata accessor for AttributedString.MarkdownParsingOptions.InterpretedSyntax();
  v96 = *(v99 - 8);
  v9 = *(v96 + 64);
  __chkstk_darwin(v99);
  v98 = &v82 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for AttributedString.MarkdownParsingOptions();
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v95 = &v82 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10001B4A4(&unk_1000B3380, &qword_100079940);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v94 = &v82 - v16;
  v92 = type metadata accessor for AttributedString();
  v91 = *(v92 - 8);
  v17 = *(v91 + 64);
  v18 = __chkstk_darwin(v92);
  v89 = &v82 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v18);
  v97 = &v82 - v21;
  v22 = __chkstk_darwin(v20);
  v88 = &v82 - v23;
  __chkstk_darwin(v22);
  v90 = &v82 - v24;
  v25 = type metadata accessor for Locale();
  v26 = *(*(v25 - 8) + 64);
  __chkstk_darwin(v25 - 8);
  v27 = type metadata accessor for String.LocalizationValue();
  v28 = *(*(v27 - 8) + 64);
  __chkstk_darwin(v27 - 8);
  v29 = [v0 uniqueIdentifierForCurrentTip];
  v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v32 = v31;

  *&aBlock = v30;
  *(&aBlock + 1) = v32;

  v33._object = 0x800000010008C4A0;
  v33._countAndFlagsBits = 0xD000000000000014;
  String.append(_:)(v33);

  v34 = aBlock;
  type metadata accessor for AvailabilityContentParser();
  inited = swift_initStaticObject();
  v36 = inited;
  if (*(inited + 32) && (*(inited + 24) == v34 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
  {
  }

  else
  {

    v37 = [v1 sharedTipAvailabilityTextView];
    if (v37)
    {
      v85 = v34;
      v83 = v4;
      v84 = v3;
      v86 = ObjectType;
      v87 = v37;
      [v87 setAttributedText:0];
      sub_100045194();
      sub_10001B4A4(&unk_1000B3F20, &qword_100079948);
      v38 = swift_initStackObject();
      *(v38 + 16) = xmmword_100077E80;
      *(v38 + 32) = NSForegroundColorAttributeName;
      v39 = objc_opt_self();
      v40 = NSForegroundColorAttributeName;
      v41 = [v39 tertiaryLabelColor];
      *(v38 + 64) = sub_10001AC14(0, &qword_1000B2DA0, UIColor_ptr);
      *(v38 + 40) = v41;
      v42 = sub_1000467C4(v38);
      swift_setDeallocating();
      sub_1000468EC(v38 + 32);
      v43 = [objc_opt_self() footnoteFont];
      if (v43)
      {
        v44 = v43;
        v107 = sub_10001AC14(0, &qword_1000B3F48, UIFont_ptr);
        *&aBlock = v44;
        sub_10003CD0C(&aBlock, v104);
        v45 = v44;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v103 = v42;
        sub_100045D9C(v104, NSFontAttributeName, isUniquelyReferenced_nonNull_native);

        v42 = v103;
      }

      v47 = [v1 tip];
      v48 = [v47 availabilityContent];

      if (v48)
      {
        v49 = v42;

        v50 = [v1 appController];
        v51 = [v1 tip];
        v52 = [v51 identifier];

        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v53 = dispatch thunk of TPSUIAppController.availabilityMessageAttributedStringForIdentifier(_:)();

        if (v53)
        {

          swift_bridgeObjectRelease_n();
          v54 = v87;
          [v87 setAttributedText:v53];

          v55 = [v1 tip];
          v56 = [v55 identifier];

          if (!v56)
          {
            static String._unconditionallyBridgeFromObjectiveC(_:)();
            v56 = String._bridgeToObjectiveC()();
          }

          [v54 setTipID:v56];
        }

        else
        {
          v59 = v87;

          v60 = [objc_allocWithZone(NSBlockOperation) init];
          v61 = v36[4];
          v62 = v85;
          v36[3] = v85;
          v36[4] = *(&v34 + 1);

          sub_1000451E8();
          v63 = [objc_allocWithZone(TPSConstellationContentParser) init];
          v64 = [v1 traitCollection];
          [v63 setTraitCollection:v64];

          [v63 setDelegate:v1];
          v65 = v36[5];
          v36[5] = v63;
          v66 = v63;

          v67 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v68 = swift_allocObject();
          v68[2] = v67;
          v68[3] = v49;
          v68[4] = v62;
          v68[5] = *(&v34 + 1);
          v69 = v86;
          v68[6] = v59;
          v68[7] = v69;
          v108 = sub_1000469DC;
          v109 = v68;
          *&aBlock = _NSConcreteStackBlock;
          *(&aBlock + 1) = 1107296256;
          v106 = sub_10002086C;
          v107 = &unk_1000A3E00;
          v70 = _Block_copy(&aBlock);
          v71 = v59;

          [v60 addExecutionBlock:v70];
          _Block_release(v70);
          v72 = [objc_opt_self() attributedStringOperationQueue];
          [v72 addOperation:v60];

          v73 = v36[2];
          v36[2] = v60;
        }
      }

      else
      {
        swift_bridgeObjectRelease_n();
        String.LocalizationValue.init(stringLiteral:)();
        static Locale.current.getter();
        String.init(localized:table:bundle:locale:comment:)();
        v57 = type metadata accessor for URL();
        (*(*(v57 - 8) + 56))(v94, 1, 1, v57);
        (*(v96 + 104))(v98, enum case for AttributedString.MarkdownParsingOptions.InterpretedSyntax.full(_:), v99);
        (*(v101 + 104))(v100, enum case for AttributedString.MarkdownParsingOptions.FailurePolicy.throwError(_:), v102);
        AttributedString.MarkdownParsingOptions.init(allowsExtendedAttributes:interpretedSyntax:failurePolicy:languageCode:)();
        v58 = v97;
        AttributedString.init(markdown:options:baseURL:)();
        v74 = v93;
        AttributeContainer.init(_:)();
        sub_100046B4C(&qword_1000B3F38, &type metadata accessor for AttributedString);
        v75 = v88;
        v76 = v92;
        AttributedStringProtocol.settingAttributes(_:)();
        (*(v83 + 8))(v74, v84);
        v77 = v91;
        v78 = *(v91 + 8);
        v78(v58, v76);
        v79 = v90;
        (*(v77 + 32))(v90, v75, v76);
        sub_10001AC14(0, &qword_1000B3F40, NSAttributedString_ptr);
        (*(v77 + 16))(v89, v79, v76);
        v80 = NSAttributedString.init(_:)();
        v81 = v87;
        [v87 setAttributedText:v80];

        v78(v79, v76);
      }
    }

    else
    {
      swift_bridgeObjectRelease_n();
    }
  }
}

void sub_100044554(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v34 = a6;
  v35 = a4;
  v36 = a5;
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DispatchQoS();
  v37 = *(v13 - 8);
  v14 = *(v37 + 64);
  __chkstk_darwin(v13);
  v16 = &v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = 0;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v18 = Strong;
    v19 = [Strong tip];

    if (v19)
    {
      if (qword_1000B2BC8)
      {
        v33 = v9;
        v20 = qword_1000B2BC8;
        v21 = sub_100044934(v19, a2, &v39);

        if (v21)
        {
          sub_10001AC14(0, &qword_1000B2D48, OS_dispatch_queue_ptr);
          v32 = static OS_dispatch_queue.main.getter();
          v22 = swift_allocObject();
          swift_beginAccess();
          v23 = swift_unknownObjectWeakLoadStrong();
          swift_unknownObjectWeakInit();

          v24 = swift_allocObject();
          v24[2] = v22;
          v24[3] = a3;
          v25 = v36;
          v24[4] = v35;
          v24[5] = v21;
          v26 = v34;
          v24[6] = v25;
          v24[7] = v26;
          aBlock[4] = sub_100046AB8;
          aBlock[5] = v24;
          aBlock[0] = _NSConcreteStackBlock;
          aBlock[1] = 1107296256;
          aBlock[2] = sub_10002086C;
          aBlock[3] = &unk_1000A3E50;
          v27 = _Block_copy(aBlock);

          v28 = v21;
          v29 = v25;

          static DispatchQoS.unspecified.getter();
          aBlock[0] = _swiftEmptyArrayStorage;
          sub_100046B4C(&qword_1000B2D50, &type metadata accessor for DispatchWorkItemFlags);
          sub_10001B4A4(&qword_1000B2D58, &unk_100077D40);
          sub_100046AE8();
          dispatch thunk of SetAlgebra.init<A>(_:)();
          v30 = v32;
          OS_dispatch_queue.async(group:qos:flags:execute:)();

          _Block_release(v27);
          (*(v33 + 8))(v12, v8);
          (*(v37 + 8))(v16, v13);
          v19 = v39;
        }

        else
        {
          v31 = v39;

          v19 = v31;
        }
      }
    }
  }
}

id sub_100044934(void *a1, uint64_t a2, id *a3)
{
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v32 - v13;
  result = [a1 availabilityContent];
  if (result)
  {
    v16 = result;
    v37 = a3;
    v17 = [a1 fullContentAssets];
    v18 = [v17 baseURL];

    if (v18)
    {
      v34 = v3;
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      (*(v8 + 32))(v14, v12, v7);
      sub_100044ECC(a2);
      isa = Dictionary._bridgeToObjectiveC()().super.isa;

      v19 = [a1 identifier];
      if (!v19)
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v19 = String._bridgeToObjectiveC()();
      }

      v35 = v7;
      v36 = v8;
      v21 = [a1 language];
      if (!v21)
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v21 = String._bridgeToObjectiveC()();
      }

      URL._bridgeToObjectiveC()(v20);
      v23 = v22;
      v24 = [a1 assetFileInfoManager];
      v25 = v37;
      v38 = *v37;
      v26 = v38;
      LOBYTE(v31) = 1;
      v27 = isa;
      v28 = [v34 attributedStringForConstellationContent:v16 defaultAttributes:isa identifier:v19 language:v21 assetsBaseURL:v23 assetFileInfoManager:v24 supportsLinks:v31 error:&v38];

      (*(v36 + 8))(v14, v35);
      v29 = v38;
      v30 = v38;

      result = v28;
      *v25 = v29;
    }

    else
    {

      return 0;
    }
  }

  return result;
}

uint64_t sub_100044C58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v9 = [Strong tip];

    v10 = [v9 identifier];
    v11 = v10;
    if (!v10)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v11 = String._bridgeToObjectiveC()();
    }

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    swift_beginAccess();
    v12 = swift_unknownObjectWeakLoadStrong();
    if (!v12)
    {
      goto LABEL_9;
    }

    v26 = a5;
    v13 = a4;
    v14 = v12;
    v15 = [v12 uniqueIdentifierForCurrentTip];

    v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = v17;

    v19._countAndFlagsBits = v16;
    v19._object = v18;
    v20 = String.hasPrefix(_:)(v19);

    if (v20)
    {
      swift_beginAccess();
      v21 = swift_unknownObjectWeakLoadStrong();
      if (v21)
      {
        v22 = v21;
        v23 = [v21 appController];

        dispatch thunk of TPSUIAppController.updateAvailabilityMessageAttributedString(_:forIdentifier:)();
      }

      [v26 setAttributedText:v13];
      [v26 setTipID:v11];
    }

    else
    {
LABEL_9:
    }
  }

  v24 = qword_1000B2BB0;
  qword_1000B2BB0 = 0;

  qword_1000B2BB8 = 0;
  qword_1000B2BC0 = 0;
}

uint64_t sub_100044ECC(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_10001B4A4(&qword_1000B3F58, &qword_100079968);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = (v2 + 8);

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = *(*(a1 + 48) + 8 * v13);
    sub_100046A0C(*(a1 + 56) + 32 * v13, v34 + 8);
    *&v34[0] = v14;
    v32[0] = v34[0];
    v32[1] = v34[1];
    v33 = v35;
    *&v31[0] = v14;
    type metadata accessor for Key(0);
    v15 = v14;
    swift_dynamicCast();
    sub_10003CD0C((v32 + 8), v26);
    v27 = v23;
    v28 = v24;
    v29 = v25;
    sub_10003CD0C(v26, v30);
    v23 = v27;
    v24 = v28;
    v25 = v29;
    sub_10003CD0C(v30, v31);
    result = AnyHashable._rawHashValue(seed:)(v2[5]);
    v16 = -1 << *(v2 + 32);
    v17 = result & ~v16;
    v18 = v17 >> 6;
    if (((-1 << v17) & ~*&v7[8 * (v17 >> 6)]) == 0)
    {
      v19 = 0;
      v20 = (63 - v16) >> 6;
      while (++v18 != v20 || (v19 & 1) == 0)
      {
        v21 = v18 == v20;
        if (v18 == v20)
        {
          v18 = 0;
        }

        v19 |= v21;
        v22 = *&v7[8 * v18];
        if (v22 != -1)
        {
          v10 = __clz(__rbit64(~v22)) + (v18 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v17) & ~*&v7[8 * (v17 >> 6)])) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *&v7[(v10 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v10;
    v11 = v2[6] + 40 * v10;
    *v11 = v23;
    *(v11 + 16) = v24;
    *(v11 + 32) = v25;
    result = sub_10003CD0C(v31, (v2[7] + 32 * v10));
    ++v2[2];
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_100045194()
{
  v1 = v0[2];
  if (v1)
  {
    [v1 cancel];
    v2 = v0[2];
  }

  else
  {
    v2 = 0;
  }

  v0[2] = 0;

  v3 = v0[4];
  v0[3] = 0;
  v0[4] = 0;
}

void sub_1000451E8()
{
  v1 = *(v0 + 40);
  if (v1)
  {
    [v1 setDelegate:0];
    v1 = *(v0 + 40);
  }

  [v1 cancelAssetFetches];
  v2 = *(v0 + 40);
  *(v0 + 40) = 0;
}

uint64_t sub_10004523C()
{
  v1 = *(v0 + 32);

  return _swift_deallocClassInstance(v0, 48, 7);
}

unint64_t sub_1000452A8(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v6 = Hasher._finalize()();

  return sub_1000453B4(a1, a2, v6);
}

unint64_t sub_100045320(uint64_t a1)
{
  v3 = *(v1 + 40);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v4 = Hasher._finalize()();

  return sub_10004546C(a1, v4);
}

unint64_t sub_1000453B4(uint64_t a1, uint64_t a2, uint64_t a3)
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

unint64_t sub_10004546C(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v9 = v8;
      if (v7 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v9 == v10)
      {
        break;
      }

      v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

uint64_t sub_100045570(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_10001B4A4(&qword_1000B3F88, &qword_100079980);
  v39 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v37 = v3;
    v38 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v39 & 1) == 0)
      {
        v26 = v22[1];

        v27 = v25;
      }

      v28 = *(v8 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v29 = -1 << *(v8 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v15 + 8 * (v30 >> 6))) == 0)
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
          v35 = *(v15 + 8 * v31);
          if (v35 != -1)
          {
            v16 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v30) & ~*(v15 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v38;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_35;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero(v10, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v36;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_100045814(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_10001B4A4(&qword_1000B3F50, &unk_100079958);
  v37 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
    v36 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(v5 + 56);
      v22 = *(*(v5 + 48) + 8 * v20);
      v23 = (v21 + 32 * v20);
      if (v37)
      {
        sub_10003CD0C(v23, v38);
      }

      else
      {
        sub_100046A0C(v23, v38);
        v24 = v22;
      }

      v25 = *(v8 + 40);
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      Hasher.init(_seed:)();
      String.hash(into:)();
      v26 = Hasher._finalize()();

      v27 = -1 << *(v8 + 32);
      v28 = v26 & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v22;
      result = sub_10003CD0C(v38, (*(v8 + 56) + 32 * v16));
      ++*(v8 + 16);
      v5 = v36;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_36;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero(v10, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

uint64_t sub_100045AE4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_10001B4A4(&qword_1000B3F78, &qword_100079970);
  v36 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = (*(v5 + 56) + 32 * v21);
      if (v36)
      {
        sub_10003CD0C(v25, v37);
      }

      else
      {
        sub_100046A0C(v25, v37);
      }

      v26 = *(v8 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v27 = -1 << *(v8 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      result = sub_10003CD0C(v37, (*(v8 + 56) + 32 * v16));
      ++*(v8 + 16);
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_36;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

_OWORD *sub_100045D9C(_OWORD *a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_100045320(a2);
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_16;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      v16 = v8;
      sub_10004626C();
      v8 = v16;
      goto LABEL_8;
    }

    sub_100045814(v13, a3 & 1);
    v17 = *v4;
    v8 = sub_100045320(a2);
    if ((v14 & 1) != (v18 & 1))
    {
LABEL_16:
      type metadata accessor for Key(0);
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v19 = *v4;
  if (v14)
  {
    v20 = (v19[7] + 32 * v8);
    sub_10001F914(v20);

    return sub_10003CD0C(a1, v20);
  }

  else
  {
    sub_10004602C(v8, a2, a1, v19);

    return a2;
  }
}

_OWORD *sub_100045EDC(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1000452A8(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_1000463EC();
      v11 = v19;
      goto LABEL_8;
    }

    sub_100045AE4(v16, a4 & 1);
    v20 = *v5;
    v11 = sub_1000452A8(a2, a3);
    if ((v17 & 1) != (v21 & 1))
    {
LABEL_16:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v22 = *v5;
  if (v17)
  {
    v23 = (v22[7] + 32 * v11);
    sub_10001F914(v23);

    return sub_10003CD0C(a1, v23);
  }

  else
  {
    sub_100046094(v11, a2, a3, a1, v22);
  }
}

_OWORD *sub_10004602C(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  result = sub_10003CD0C(a3, (a4[7] + 32 * a1));
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

_OWORD *sub_100046094(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_10003CD0C(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

id sub_100046100()
{
  v1 = v0;
  sub_10001B4A4(&qword_1000B3F88, &qword_100079980);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;

        result = v20;
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

      v16 = *(v2 + 64 + 8 * v8);
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

id sub_10004626C()
{
  v1 = v0;
  sub_10001B4A4(&qword_1000B3F50, &unk_100079958);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        sub_100046A0C(*(v2 + 56) + 32 * v17, v19);
        *(*(v4 + 48) + 8 * v17) = v18;
        sub_10003CD0C(v19, (*(v4 + 56) + 32 * v17));
        result = v18;
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

      v16 = *(v2 + 64 + 8 * v8);
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

void *sub_1000463EC()
{
  v1 = v0;
  sub_10001B4A4(&qword_1000B3F78, &qword_100079970);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        sub_100046A0C(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_10003CD0C(v25, (*(v4 + 56) + v22));
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

        v1 = v24;
        goto LABEL_21;
      }

      v16 = *(v2 + 64 + 8 * v8);
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

LABEL_21:
    *v1 = v4;
  }

  return result;
}

unint64_t sub_100046590(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10001B4A4(&qword_1000B3F88, &qword_100079980);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_1000452A8(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
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

unint64_t sub_100046694(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10001B4A4(&qword_1000B3F78, &qword_100079970);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_10001F808(v4, &v13, &qword_1000B3F80, &qword_100079978);
      v5 = v13;
      v6 = v14;
      result = sub_1000452A8(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_10003CD0C(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
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

unint64_t sub_1000467C4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10001B4A4(&qword_1000B3F50, &unk_100079958);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_10001F808(v4, &v11, &qword_1000B3F30, &qword_100079950);
      v5 = v11;
      result = sub_100045320(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_10003CD0C(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
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

uint64_t sub_1000468EC(uint64_t a1)
{
  v2 = sub_10001B4A4(&qword_1000B3F30, &qword_100079950);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100046954()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10004698C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = *(v0 + 40);

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_1000469F4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100046A0C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_100046A68()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 64, 7);
}

unint64_t sub_100046AE8()
{
  result = qword_1000B2D60;
  if (!qword_1000B2D60)
  {
    sub_10001E860(&qword_1000B2D58, &unk_100077D40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B2D60);
  }

  return result;
}

uint64_t sub_100046B4C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t (*sub_100046BA8())()
{
  sub_100046F6C();
  EnvironmentValues.subscript.getter();
  if (!v2)
  {
    return 0;
  }

  v0 = swift_allocObject();
  *(v0 + 16) = v2;
  *(v0 + 24) = v3;
  return sub_100047008;
}

uint64_t _s7SwiftUI4ViewP4TipsE14onTipActionURL7performQry10Foundation0H0Vc_tF_0(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  if (a1)
  {
    v4 = swift_allocObject();
    *(v4 + 16) = a1;
    *(v4 + 24) = a2;
    v5 = sub_100046F44;
  }

  else
  {
    v5 = 0;
  }

  sub_10001E900(a1);
  View.environment<A>(_:_:)();

  return sub_10001E970(v5);
}

uint64_t sub_100046D14(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = swift_allocObject();
    *(v4 + 16) = sub_100046FC0;
    *(v4 + 24) = v3;
  }

  sub_10001E900(v1);
  sub_100046F6C();
  return EnvironmentValues.subscript.setter();
}

uint64_t sub_100046DDC(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_10001E860(&qword_1000B3F90, &qword_100079988);
  type metadata accessor for ModifiedContent();
  sub_100046E54();
  return swift_getWitnessTable();
}

unint64_t sub_100046E54()
{
  result = qword_1000B3F98;
  if (!qword_1000B3F98)
  {
    sub_10001E860(&qword_1000B3F90, &qword_100079988);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B3F98);
  }

  return result;
}

double sub_100046EB8@<D0>(_OWORD *a1@<X8>)
{
  sub_100046F6C();
  EnvironmentValues.subscript.getter();
  result = *&v3;
  *a1 = v3;
  return result;
}

uint64_t sub_100046F0C()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100046F44()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

unint64_t sub_100046F6C()
{
  result = qword_1000B3FA0;
  if (!qword_1000B3FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B3FA0);
  }

  return result;
}

uint64_t sub_100046FC0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

void sub_10004700C(void *a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v33 = a4;
  v34 = a5;
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v36 = *(v8 - 8);
  v9 = *(v36 + 64);
  __chkstk_darwin(v8);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = type metadata accessor for DispatchQoS();
  v12 = *(v35 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v35);
  v15 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for TipsLog();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v20 = &v33 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    swift_errorRetain();
    static TipsLog.default.getter();
    swift_getErrorValue();
    Error.localizedDescription.getter();
    log(_:_:)();

LABEL_3:
    (*(v17 + 8))(v20, v16);
    goto LABEL_5;
  }

  if (!a1)
  {
    static TipsLog.default.getter();
    aBlock = 0;
    v38 = 0xE000000000000000;
    _StringGuts.grow(_:)(23);

    aBlock = 0xD000000000000015;
    v38 = 0x800000010008C5A0;
    v32._countAndFlagsBits = a3;
    v32._object = v33;
    String.append(_:)(v32);
    log(_:_:)();

    goto LABEL_3;
  }

LABEL_5:
  sub_100047A7C();
  v21 = static OS_dispatch_queue.main.getter();
  v22 = swift_allocObject();
  v23 = v34;
  *(v22 + 16) = a1;
  *(v22 + 24) = v23;
  v41 = sub_100047AC8;
  v42 = v22;
  aBlock = _NSConcreteStackBlock;
  v38 = 1107296256;
  v39 = sub_10002086C;
  v40 = &unk_1000A3FB0;
  v24 = _Block_copy(&aBlock);
  v25 = a1;
  v26 = v23;

  static DispatchQoS.unspecified.getter();
  aBlock = _swiftEmptyArrayStorage;
  sub_100047AD0();
  sub_10001B4A4(&qword_1000B2D58, &unk_100077D40);
  sub_100046AE8();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v24);

  (*(v36 + 8))(v11, v8);
  (*(v12 + 8))(v15, v35);
  if (a1)
  {
    v27 = v25;
    v28 = [v27 identifier];
    if (!v28)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v28 = String._bridgeToObjectiveC()();
    }

    v29 = objc_opt_self();
    v30 = [v27 correlationID];

    v31 = [v29 eventWithContentID:v28 collectionID:0 correlationID:v30 launchType:TPSAnalyticsLaunchTypeSharedTipModal];
    [v31 log];
  }
}

void sub_1000474D0(void *a1, void *a2)
{
  type metadata accessor for TPSSharedTipViewController();
  v4 = a1;
  v5 = sub_100023A6C(a1);
  v6 = [a2 appController];
  [v5 setAppController:v6];

  [v5 setDelegate:a2];
  v7 = v5;
  v8 = [a2 preferredUserInterfaceStyle];
  v9 = v8;
  if (a1)
  {
    if (sub_1000241D4(v8 == 2))
    {
      v9 = 2;
    }

    else
    {
      v9 = 1;
    }
  }

  [v7 setOverrideUserInterfaceStyle:v9];
  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  v11 = &v7[OBJC_IVAR____TtC4Tips26TPSSharedTipViewController_onDismissed];
  v12 = *&v7[OBJC_IVAR____TtC4Tips26TPSSharedTipViewController_onDismissed];
  v13 = *&v7[OBJC_IVAR____TtC4Tips26TPSSharedTipViewController_onDismissed + 8];
  *v11 = sub_100047B60;
  v11[1] = v10;
  v14 = a2;
  sub_10001E970(v12);
  v15 = [v14 tipsByCollectionViewController];
  [v15 setShouldHoldOffVideo:1];

  v16 = [v14 tipsByCollectionViewController];
  [v16 stopVideoForCurrentTip];

  v17 = [objc_allocWithZone(UINavigationController) initWithRootViewController:v7];
  v18 = swift_allocObject();
  *(v18 + 16) = a1;
  *(v18 + 24) = v14;
  v22[4] = sub_100047BA8;
  v22[5] = v18;
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 1107296256;
  v22[2] = sub_10002086C;
  v22[3] = &unk_1000A4028;
  v19 = _Block_copy(v22);
  v20 = v4;
  v21 = v14;

  [v21 presentViewController:v17 animated:1 completion:v19];
  _Block_release(v19);
}

void sub_100047764(int a1, id a2)
{
  [a2 updateShouldHoldOffVideo];
  v3 = [a2 tipsByCollectionViewController];
  [v3 continueVideoForCurrentTip];
}

void sub_1000477D8(void *a1, void *a2)
{
  if (a1)
  {
    v3 = a1;
    v4 = [a2 appController];
    [v4 logSharedTipDisplayed:v3 isEligible:0];
  }
}

void sub_100047858(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v8 = a2;
  v7 = a3;
  v6(a2, a3);
}

uint64_t sub_100047A18()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100047A64(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_100047A7C()
{
  result = qword_1000B2D48;
  if (!qword_1000B2D48)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000B2D48);
  }

  return result;
}

unint64_t sub_100047AD0()
{
  result = qword_1000B2D50;
  if (!qword_1000B2D50)
  {
    type metadata accessor for DispatchWorkItemFlags();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B2D50);
  }

  return result;
}

uint64_t sub_100047B28()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100047B68()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100047BC4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a2 = v5;
  return result;
}

uint64_t sub_100047C44(void **a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v2;
  v3;
  static Published.subscript.setter();
  return sub_100024904();
}

id sub_100047D64(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for ChecklistView();
  v5 = v4 - 8;
  v6 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v8 = (&v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = [objc_allocWithZone(type metadata accessor for ChecklistViewModel()) init];
  *&v2[OBJC_IVAR___TPSChecklistViewController_viewModel] = v9;
  *v8 = swift_getKeyPath();
  sub_10001B4A4(&qword_1000B2FB0, &qword_100077D10);
  swift_storeEnumTagMultiPayload();
  v10 = *(v5 + 28);
  *(v8 + v10) = swift_getKeyPath();
  sub_10001B4A4(&qword_1000B3BA8, &qword_1000794A0);
  swift_storeEnumTagMultiPayload();
  v11 = (v8 + *(v5 + 32));
  sub_1000489AC();
  v12 = v9;
  *v11 = ObservedObject.init(wrappedValue:)();
  v11[1] = v13;
  v14 = objc_allocWithZone(sub_10001B4A4(&qword_1000B3FE0, &unk_100079B60));
  *&v2[OBJC_IVAR___TPSChecklistViewController_hostingController] = UIHostingController.init(rootView:)();
  v15 = type metadata accessor for ChecklistViewController();
  v18.receiver = v2;
  v18.super_class = v15;
  v16 = objc_msgSendSuper2(&v18, "initWithCoder:", a1);

  if (v16)
  {
  }

  return v16;
}

uint64_t sub_100047F8C()
{
  v1 = *(v0 + OBJC_IVAR___TPSChecklistViewController_viewModel);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v3;
}

void sub_1000480AC()
{
  v30.receiver = v0;
  v30.super_class = type metadata accessor for ChecklistViewController();
  objc_msgSendSuper2(&v30, "loadView");
  v1 = OBJC_IVAR___TPSChecklistViewController_hostingController;
  v2 = [*&v0[OBJC_IVAR___TPSChecklistViewController_hostingController] view];
  if (v2)
  {
    v3 = v2;
    [v0 addChildViewController:*&v0[v1]];
    v4 = [v0 view];
    if (v4)
    {
      v5 = v4;
      [v4 addSubview:v3];

      [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
      v6 = [v0 view];
      if (v6)
      {
        v7 = v6;
        sub_10001B4A4(&qword_1000B2DB0, &qword_100077C20);
        v8 = swift_allocObject();
        *(v8 + 16) = xmmword_100077BC0;
        v9 = [v3 leadingAnchor];
        v10 = [v0 view];
        if (v10)
        {
          v11 = v10;
          v12 = [v10 leadingAnchor];

          v13 = [v9 constraintEqualToAnchor:v12];
          *(v8 + 32) = v13;
          v14 = [v3 topAnchor];
          v15 = [v0 view];
          if (v15)
          {
            v16 = v15;
            v17 = [v15 topAnchor];

            v18 = [v14 constraintEqualToAnchor:v17];
            *(v8 + 40) = v18;
            v19 = [v3 trailingAnchor];
            v20 = [v0 view];
            if (v20)
            {
              v21 = v20;
              v22 = [v20 trailingAnchor];

              v23 = [v19 constraintEqualToAnchor:v22];
              *(v8 + 48) = v23;
              v24 = [v3 bottomAnchor];
              v25 = [v0 view];
              if (v25)
              {
                v26 = v25;
                v27 = [v25 bottomAnchor];

                v28 = [v24 constraintEqualToAnchor:v27];
                *(v8 + 56) = v28;
                sub_100048828();
                isa = Array._bridgeToObjectiveC()().super.isa;

                [v7 addConstraints:isa];

                [*&v0[v1] didMoveToParentViewController:v0];
                return;
              }

LABEL_15:
              __break(1u);
              return;
            }

LABEL_14:
            __break(1u);
            goto LABEL_15;
          }

LABEL_13:
          __break(1u);
          goto LABEL_14;
        }

LABEL_12:
        __break(1u);
        goto LABEL_13;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_12;
  }
}

uint64_t sub_1000485F0(char a1)
{
  v7.receiver = v1;
  v7.super_class = type metadata accessor for ChecklistViewController();
  objc_msgSendSuper2(&v7, "viewDidAppear:", a1 & 1);
  v3 = *&v1[OBJC_IVAR___TPSChecklistViewController_viewModel];
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v6 == 1)
  {
    v5 = *(v3 + OBJC_IVAR___TPSChecklistViewModel_currentDisplayTips);
    *(v3 + OBJC_IVAR___TPSChecklistViewModel_currentDisplayTips) = 0;
  }

  return result;
}

void sub_100048734()
{
  v1 = *(v0 + OBJC_IVAR___TPSChecklistViewController_hostingController);
}

id sub_100048774()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ChecklistViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_100048828()
{
  result = qword_1000B2DB8;
  if (!qword_1000B2DB8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000B2DB8);
  }

  return result;
}

uint64_t sub_1000488BC(uint64_t a1)
{
  v2 = type metadata accessor for ColorScheme();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return EnvironmentValues.colorScheme.setter();
}

unint64_t sub_1000489AC()
{
  result = qword_1000B3B00;
  if (!qword_1000B3B00)
  {
    type metadata accessor for ChecklistViewModel();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B3B00);
  }

  return result;
}

id sub_100048A04(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for ChecklistView();
  v5 = v4 - 8;
  v6 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v8 = (&v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  *&v2[OBJC_IVAR___TPSChecklistViewController_viewModel] = a1;
  *v8 = swift_getKeyPath();
  sub_10001B4A4(&qword_1000B2FB0, &qword_100077D10);
  swift_storeEnumTagMultiPayload();
  v9 = *(v5 + 28);
  *(v8 + v9) = swift_getKeyPath();
  sub_10001B4A4(&qword_1000B3BA8, &qword_1000794A0);
  swift_storeEnumTagMultiPayload();
  v10 = (v8 + *(v5 + 32));
  type metadata accessor for ChecklistViewModel();
  sub_1000489AC();
  v11 = a1;
  *v10 = ObservedObject.init(wrappedValue:)();
  v10[1] = v12;
  v13 = objc_allocWithZone(sub_10001B4A4(&qword_1000B3FE0, &unk_100079B60));
  *&v2[OBJC_IVAR___TPSChecklistViewController_hostingController] = UIHostingController.init(rootView:)();
  v14 = type metadata accessor for ChecklistViewController();
  v16.receiver = v2;
  v16.super_class = v14;
  return objc_msgSendSuper2(&v16, "initWithNibName:bundle:", 0, 0);
}

uint64_t sub_100048B9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10001B4A4(&qword_1000B3FE8, &unk_100079B70);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_10001B4A4(&qword_1000B2ED0, &unk_100077C70);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24) + 8);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_100048CD8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_10001B4A4(&qword_1000B3FE8, &unk_100079B70);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_10001B4A4(&qword_1000B2ED0, &unk_100077C70);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24) + 8) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t type metadata accessor for CollectionListItemView()
{
  result = qword_1000B4048;
  if (!qword_1000B4048)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100048E48()
{
  sub_100048F3C(319, &unk_1000B4058, &type metadata accessor for ContentSizeCategory);
  if (v0 <= 0x3F)
  {
    sub_100048F3C(319, &qword_1000B2F40, &type metadata accessor for ColorScheme);
    if (v1 <= 0x3F)
    {
      sub_10002076C();
      if (v2 <= 0x3F)
      {
        sub_1000203F4();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_100048F3C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Environment();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_100048FAC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v55 = a1;
  v3 = sub_10001B4A4(&qword_1000B2F90, &qword_100077CF0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v54 = &v44 - v5;
  v52 = type metadata accessor for AccessibilityTraits();
  v50 = *(v52 - 8);
  v6 = *(v50 + 64);
  __chkstk_darwin(v52);
  v46 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = type metadata accessor for AccessibilityChildBehavior();
  v8 = *(v48 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v48);
  v11 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10001B4A4(&qword_1000B4098, &qword_100079BF0);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12);
  v15 = &v44 - v14;
  v45 = sub_10001B4A4(&qword_1000B40A0, &qword_100079BF8);
  v16 = *(v45 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v45);
  v19 = &v44 - v18;
  v49 = sub_10001B4A4(&qword_1000B40A8, &qword_100079C00);
  v20 = *(*(v49 - 8) + 64);
  __chkstk_darwin(v49);
  v22 = &v44 - v21;
  v53 = sub_10001B4A4(&qword_1000B40B0, &qword_100079C08);
  v51 = *(v53 - 8);
  v23 = *(v51 + 64);
  __chkstk_darwin(v53);
  v47 = &v44 - v24;
  *v15 = static VerticalAlignment.center.getter();
  *(v15 + 1) = 0;
  v15[16] = 1;
  v25 = sub_10001B4A4(&qword_1000B40B8, qword_100079C10);
  sub_10004A1CC(v2, &v15[*(v25 + 44)]);
  static AccessibilityChildBehavior.combine.getter();
  v26 = sub_10001E8B8(&qword_1000B40C0, &qword_1000B4098, &qword_100079BF0);
  View.accessibilityElement(children:)();
  (*(v8 + 8))(v11, v48);
  sub_10001F870(v15, &qword_1000B4098, &qword_100079BF0);
  v27 = v46;
  static AccessibilityTraits.isButton.getter();
  *&v56 = v12;
  *(&v56 + 1) = v26;
  swift_getOpaqueTypeConformance2();
  v28 = v45;
  View.accessibilityAddTraits(_:)();
  (*(v50 + 8))(v27, v52);
  (*(v16 + 8))(v19, v28);
  v29 = type metadata accessor for CollectionListItemView();
  v30 = v44;
  v31 = (v44 + *(v29 + 28));
  v32 = *v31;
  v34 = *(v31 + 2);
  v33 = *(v31 + 3);
  v56 = v32;
  v57 = v34;
  v58 = v33;
  sub_100022F14();
  v35 = v54;
  AppEntity.fullyQualifiedIdentifier.getter();
  v36 = type metadata accessor for EntityIdentifier();
  (*(*(v36 - 8) + 56))(v35, 0, 1, v36);
  sub_10004AB88();
  v37 = v47;
  View.appEntityIdentifier(_:)();
  sub_10001F870(v35, &qword_1000B2F90, &qword_100077CF0);
  sub_10004ACFC(v22);
  v38 = *(v30 + *(v29 + 24) + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v39 = v56;
  if (v56)
  {
    v40 = 0x4030000000000000;
  }

  else
  {
    v40 = 0;
  }

  v41 = v55;
  (*(v51 + 32))(v55, v37, v53);
  result = sub_10001B4A4(&qword_1000B40D0, &qword_100079C70);
  v43 = v41 + *(result + 36);
  *v43 = 0;
  *(v43 + 8) = v40;
  *(v43 + 16) = 0;
  *(v43 + 24) = v40;
  *(v43 + 32) = v39 ^ 1;
  return result;
}

uint64_t sub_100049594()
{
  v1 = v0;
  v2 = sub_10001B4A4(&unk_1000B3380, &qword_100079940);
  v3 = *(*(v2 - 8) + 64);
  v4 = __chkstk_darwin(v2 - 8);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v20 - v7;
  v9 = sub_10001B4A4(&qword_1000B41E0, &qword_100079DE8);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v20 - v11;
  type metadata accessor for TipsContentModel();
  v13 = static TipsContentModel.shared()();
  v14 = [*(v1 + *(type metadata accessor for CollectionListItemView() + 32)) tileAssets];
  v15 = type metadata accessor for ColorScheme();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  v16 = dispatch thunk of TipsContentModel.assetConfiguration(for:assets:updatedColorScheme:)();

  sub_10001F870(v12, &qword_1000B41E0, &qword_100079DE8);
  dispatch thunk of TipsContentModel.assetURL(for:type:)();
  if (v16)
  {
    v17 = [v16 cacheIdentifierForType:0];
    if (v17)
    {
      v18 = v17;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }
  }

  sub_10001F808(v8, v6, &unk_1000B3380, &qword_100079940);
  RemoteImageView.init(identifier:url:isLoaded:placeholder:)();

  return sub_10001F870(v8, &unk_1000B3380, &qword_100079940);
}

uint64_t sub_100049828@<X0>(uint64_t *a1@<X8>)
{
  v2 = [objc_opt_self() secondarySystemBackgroundColor];
  result = Color.init(_:)();
  *a1 = result;
  return result;
}

uint64_t sub_100049870@<X0>(char a1@<W0>, int a2@<W1>, uint64_t a3@<X8>)
{
  LODWORD(v3) = a2;
  v68 = a3;
  v71 = sub_10001B4A4(&qword_1000B4180, &qword_100079CF8);
  v70 = *(v71 - 8);
  v5 = *(v70 + 64);
  __chkstk_darwin(v71);
  v67 = &v60 - v6;
  v7 = sub_10001B4A4(&qword_1000B4188, &unk_100079D00);
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v73 = &v60 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v72 = &v60 - v11;
  v12 = sub_10001B4A4(&qword_1000B3030, &qword_100077D50);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = &v60 - v14;
  v16 = type metadata accessor for Font.TextStyle();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v20 = &v60 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_10001B4A4(&qword_1000B4190, &qword_100079D10);
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  __chkstk_darwin(v21);
  v25 = &v60 - v24;
  v26 = sub_10001B4A4(&qword_1000B4198, &qword_100079D18);
  v27 = *(*(v26 - 8) + 64);
  v28 = __chkstk_darwin(v26 - 8);
  v69 = &v60 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v74 = &v60 - v30;
  v66 = v16;
  v65 = v17;
  if (a1)
  {
    v63 = Image.init(systemName:)();
    (*(v17 + 104))(v20, enum case for Font.TextStyle.footnote(_:), v16);
    v31 = type metadata accessor for Font.Design();
    (*(*(v31 - 8) + 56))(v15, 1, 1, v31);
    static Font.system(_:design:weight:)();
    v64 = v3;
    sub_10001F870(v15, &qword_1000B3030, &qword_100077D50);
    (*(v17 + 8))(v20, v16);
    static Font.Weight.bold.getter();
    v62 = Font.weight(_:)();

    KeyPath = swift_getKeyPath();
    v60 = static Color.green.getter();
    v32 = swift_getKeyPath();
    static Alignment.trailing.getter();
    _FrameLayout.init(width:height:alignment:)();
    v3 = &v25[*(v21 + 36)];
    v33 = *(sub_10001B4A4(&qword_1000B41C8, &qword_100079D98) + 28);
    v34 = a1;
    v35 = enum case for Image.Scale.large(_:);
    v36 = type metadata accessor for Image.Scale();
    v37 = v35;
    v38 = v74;
    (*(*(v36 - 8) + 104))(v3 + v33, v37, v36);
    *v3 = swift_getKeyPath();
    LOBYTE(v3) = v64;
    v39 = KeyPath;
    *v25 = v63;
    *(v25 + 1) = v39;
    *(v25 + 2) = v62;
    *(v25 + 3) = v32;
    *(v25 + 4) = v60;
    v40 = v82;
    *(v25 + 72) = v83;
    v41 = v81;
    *(v25 + 56) = v40;
    *(v25 + 40) = v41;
    sub_100023628(v25, v38, &qword_1000B4190, &qword_100079D10);
    v42 = v38;
    a1 = v34;
    (*(v22 + 56))(v42, 0, 1, v21);
  }

  else
  {
    (*(v22 + 56))(&v60 - v30, 1, 1, v21);
  }

  if (v3)
  {
    v43 = Image.init(systemName:)();
    v44 = v65;
    v45 = v66;
    (*(v65 + 104))(v20, enum case for Font.TextStyle.footnote(_:), v66);
    v46 = type metadata accessor for Font.Design();
    (*(*(v46 - 8) + 56))(v15, 1, 1, v46);
    static Font.system(_:design:weight:)();
    sub_10001F870(v15, &qword_1000B3030, &qword_100077D50);
    (*(v44 + 8))(v20, v45);
    static Font.Weight.bold.getter();
    v47 = Font.weight(_:)();

    v48 = swift_getKeyPath();
    v49 = [objc_opt_self() tertiaryLabelColor];
    v50 = Color.init(_:)();
    v51 = swift_getKeyPath();
    static Alignment.trailing.getter();
    _FrameLayout.init(width:height:alignment:)();
    *&v75 = v43;
    *(&v75 + 1) = v48;
    *&v76 = v47;
    *(&v76 + 1) = v51;
    *&v77 = v50;
    sub_10001B4A4(&qword_1000B41A8, &qword_100079D88);
    sub_10004B878();
    v52 = v67;
    View.accessibilityHidden(_:)();
    v84 = v78;
    v85 = v79;
    v86 = v80;
    v81 = v75;
    v82 = v76;
    v83 = v77;
    sub_10001F870(&v81, &qword_1000B41A8, &qword_100079D88);
    v53 = v72;
    sub_100023628(v52, v72, &qword_1000B4180, &qword_100079CF8);
    (*(v70 + 56))(v53, 0, 1, v71);
  }

  else
  {
    v53 = v72;
    (*(v70 + 56))(v72, 1, 1, v71);
    if ((a1 & 1) == 0)
    {
      LODWORD(v71) = 0;
      goto LABEL_9;
    }
  }

  LODWORD(v71) = 1;
LABEL_9:
  v54 = v74;
  v55 = v69;
  sub_10001F808(v74, v69, &qword_1000B4198, &qword_100079D18);
  v56 = v73;
  sub_10001F808(v53, v73, &qword_1000B4188, &unk_100079D00);
  v57 = v68;
  sub_10001F808(v55, v68, &qword_1000B4198, &qword_100079D18);
  v58 = sub_10001B4A4(&qword_1000B41A0, &qword_100079D20);
  sub_10001F808(v56, v57 + *(v58 + 48), &qword_1000B4188, &unk_100079D00);
  *(v57 + *(v58 + 64)) = v71;
  sub_10001F870(v53, &qword_1000B4188, &unk_100079D00);
  sub_10001F870(v54, &qword_1000B4198, &qword_100079D18);
  sub_10001F870(v56, &qword_1000B4188, &unk_100079D00);
  return sub_10001F870(v55, &qword_1000B4198, &qword_100079D18);
}

uint64_t sub_10004A1CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v123 = a2;
  v3 = sub_10001B4A4(&qword_1000B40D8, &qword_100079C78);
  v4 = *(*(v3 - 8) + 64);
  v5 = __chkstk_darwin(v3 - 8);
  v124 = &v114 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v122 = (&v114 - v7);
  v128 = sub_10001B4A4(&qword_1000B40E0, &qword_100079C80);
  v8 = *(*(v128 - 8) + 64);
  __chkstk_darwin(v128);
  v10 = &v114 - v9;
  v11 = sub_10001B4A4(&qword_1000B40E8, &qword_100079C88);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v126 = &v114 - v13;
  v14 = sub_10001B4A4(&qword_1000B40F0, &qword_100079C90);
  v15 = v14 - 8;
  v16 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14);
  v18 = &v114 - v17;
  v19 = sub_10001B4A4(&qword_1000B40F8, &qword_100079C98);
  v20 = v19 - 8;
  v21 = *(*(v19 - 8) + 64);
  v22 = __chkstk_darwin(v19);
  v129 = &v114 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __chkstk_darwin(v22);
  v26 = &v114 - v25;
  __chkstk_darwin(v24);
  v130 = &v114 - v27;
  v28 = sub_10001B4A4(&qword_1000B4100, &qword_100079CA0);
  v29 = *(*(v28 - 8) + 64);
  __chkstk_darwin(v28 - 8);
  v31 = &v114 - v30;
  sub_10004AD6C(a1);
  v127 = a1;
  v121 = v31;
  sub_10004B108(a1, v31, v10);
  sub_10004B734(&qword_1000B4108, &qword_1000B40E0, &qword_100079C80, sub_10004B598);
  View.accessibilityHidden(_:)();
  sub_10001F870(v10, &qword_1000B40E0, &qword_100079C80);
  v32 = static Edge.Set.leading.getter();
  v33 = type metadata accessor for CollectionListItemView();
  v34 = *(a1 + *(v33 + 24) + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  EdgeInsets.init(_all:)();
  v36 = v35;
  v38 = v37;
  v40 = v39;
  v42 = v41;
  sub_100023628(v126, v18, &qword_1000B40E8, &qword_100079C88);
  v43 = &v18[*(v15 + 44)];
  *v43 = v32;
  *(v43 + 1) = v36;
  *(v43 + 2) = v38;
  *(v43 + 3) = v40;
  *(v43 + 4) = v42;
  v43[40] = 0;
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  sub_100023628(v18, v26, &qword_1000B40F0, &qword_100079C90);
  v44 = &v26[*(v20 + 44)];
  v45 = v156;
  *v44 = v155;
  *(v44 + 1) = v45;
  *(v44 + 2) = v157;
  sub_100023628(v26, v130, &qword_1000B40F8, &qword_100079C98);
  v46 = *(v127 + *(v33 + 32));
  v47 = [v34 titleFor:v46];
  v48 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v50 = v49;

  v141 = v48;
  v142 = v50;
  sub_1000235B4();
  v125 = Text.init<A>(_:)();
  v127 = v51;
  v128 = v52;
  LOBYTE(v48) = v53;
  LODWORD(v126) = static Edge.Set.trailing.getter();
  EdgeInsets.init(_all:)();
  v55 = v54;
  v57 = v56;
  v59 = v58;
  v61 = v60;
  v62 = v48 & 1;
  v63 = v34;
  v64 = v62;
  LOBYTE(v141) = v62;
  LOBYTE(v139[0]) = 0;
  if ([v34 shouldDisplayBadgeFor:v46])
  {
    v65 = [v34 tipCountFor:v46];
    v66 = objc_opt_self();
    v67 = [objc_allocWithZone(NSNumber) initWithInteger:v65];
    v68 = [v66 localizedStringFromNumber:v67 numberStyle:0];

    v69 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v71 = v70;

    v141 = v69;
    v142 = v71;
    v63 = v34;
    v72 = Text.init<A>(_:)();
    v74 = v73;
    v76 = v75;
    static Color.secondary.getter();
    v77 = Text.foregroundColor(_:)();
    v119 = v78;
    v120 = v77;
    v80 = v79;
    v118 = v81;

    sub_100023608(v72, v74, v76 & 1);

    LOBYTE(v72) = static Edge.Set.trailing.getter();
    EdgeInsets.init(_all:)();
    v83 = v82;
    v85 = v84;
    v87 = v86;
    v89 = v88;
    LOBYTE(v141) = v80 & 1;
    LOBYTE(v139[0]) = 0;
    v90 = v80 & 1;
    v117 = v72;
  }

  else
  {
    v119 = 0;
    v120 = 0;
    v117 = 0;
    v118 = 0;
    v90 = 0;
    v83 = 0;
    v85 = 0;
    v87 = 0;
    v89 = 0;
  }

  v115 = v90;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v91 = v141;
  v92 = [v63 shouldDisplayCheckmarkFor:v46];
  v93 = static VerticalAlignment.center.getter();
  v94 = v122;
  *v122 = v93;
  *(v94 + 8) = 0;
  *(v94 + 16) = 1;
  v95 = sub_10001B4A4(&qword_1000B4168, &qword_100079CD8);
  sub_100049870(v92, v91, v94 + *(v95 + 44));
  v96 = v129;
  sub_10001F808(v130, v129, &qword_1000B40F8, &qword_100079C98);
  v97 = v124;
  sub_10001F808(v94, v124, &qword_1000B40D8, &qword_100079C78);
  v98 = v96;
  v99 = v123;
  sub_10001F808(v98, v123, &qword_1000B40F8, &qword_100079C98);
  v100 = sub_10001B4A4(&qword_1000B4170, &unk_100079CE0);
  v101 = (v99 + v100[12]);
  *&v131 = v125;
  *(&v131 + 1) = v127;
  v116 = v64;
  LOBYTE(v132) = v64;
  *(&v132 + 1) = *v154;
  DWORD1(v132) = *&v154[3];
  *(&v132 + 1) = v128;
  LOBYTE(v133) = v126;
  *(&v133 + 1) = *v153;
  DWORD1(v133) = *&v153[3];
  *(&v133 + 1) = v55;
  *&v134[0] = v57;
  *(&v134[0] + 1) = v59;
  *&v134[1] = v61;
  BYTE8(v134[1]) = 0;
  v102 = v131;
  v103 = v132;
  *(v101 + 57) = *(v134 + 9);
  v104 = v134[0];
  v101[2] = v133;
  v101[3] = v104;
  *v101 = v102;
  v101[1] = v103;
  v105 = v99 + v100[16];
  *v105 = 0;
  *(v105 + 8) = 1;
  v106 = (v99 + v100[20]);
  v108 = v119;
  v107 = v120;
  *&v135 = v120;
  *(&v135 + 1) = v119;
  *&v136 = v90;
  v110 = v117;
  v109 = v118;
  *(&v136 + 1) = v118;
  *&v137 = v117;
  *(&v137 + 1) = v83;
  *&v138[0] = v85;
  *(&v138[0] + 1) = v87;
  *&v138[1] = v89;
  BYTE8(v138[1]) = 0;
  v111 = v136;
  *v106 = v135;
  v106[1] = v111;
  v112 = v138[0];
  v106[2] = v137;
  v106[3] = v112;
  *(v106 + 57) = *(v138 + 9);
  sub_10001F808(v97, v99 + v100[24], &qword_1000B40D8, &qword_100079C78);
  sub_10001F808(&v131, &v141, &qword_1000B3A30, &unk_100079258);
  sub_10001F808(&v135, &v141, &qword_1000B4178, &qword_100079CF0);
  sub_10001F870(v94, &qword_1000B40D8, &qword_100079C78);
  sub_10001F870(v130, &qword_1000B40F8, &qword_100079C98);
  sub_10001F870(v97, &qword_1000B40D8, &qword_100079C78);
  v139[0] = v107;
  v139[1] = v108;
  v139[2] = v115;
  v139[3] = v109;
  v139[4] = v110;
  v139[5] = v83;
  v139[6] = v85;
  v139[7] = v87;
  v139[8] = v89;
  v140 = 0;
  sub_10001F870(v139, &qword_1000B4178, &qword_100079CF0);
  v141 = v125;
  v142 = v127;
  v143 = v116;
  *v144 = *v154;
  *&v144[3] = *&v154[3];
  v145 = v128;
  v146 = v126;
  *v147 = *v153;
  *&v147[3] = *&v153[3];
  v148 = v55;
  v149 = v57;
  v150 = v59;
  v151 = v61;
  v152 = 0;
  sub_10001F870(&v141, &qword_1000B3A30, &unk_100079258);
  sub_10001F870(v129, &qword_1000B40F8, &qword_100079C98);
  return sub_10001F870(v121, &qword_1000B4100, &qword_100079CA0);
}

unint64_t sub_10004AB88()
{
  result = qword_1000B40C8;
  if (!qword_1000B40C8)
  {
    sub_10001E860(&qword_1000B40A8, &qword_100079C00);
    sub_10001E860(&qword_1000B4098, &qword_100079BF0);
    sub_10001E8B8(&qword_1000B40C0, &qword_1000B4098, &qword_100079BF0);
    swift_getOpaqueTypeConformance2();
    sub_10004ACB4(&qword_1000B3A48, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B40C8);
  }

  return result;
}

uint64_t sub_10004ACB4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10004ACFC(uint64_t a1)
{
  v2 = sub_10001B4A4(&qword_1000B40A8, &qword_100079C00);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10004AD6C(uint64_t a1)
{
  v2 = sub_10001B4A4(&qword_1000B3030, &qword_100077D50);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v23 - v4;
  v6 = sub_10001B4A4(&qword_1000B41D8, &unk_100079DD8);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v9 = (&v23 - v8);
  v10 = sub_10001B4A4(&qword_1000B4160, &qword_100079CC8);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v23 - v13;
  v15 = [*(a1 + *(type metadata accessor for CollectionListItemView() + 32)) collectionAssets];
  if (v15 && (v16 = v15, v17 = [v15 symbolId], v16, v17))
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v18 = Image.init(_internalSystemName:)();
    v19 = type metadata accessor for Font.Design();
    (*(*(v19 - 8) + 56))(v5, 1, 1, v19);
    v20 = static Font.system(size:weight:design:)();
    sub_10001F870(v5, &qword_1000B3030, &qword_100077D50);
    KeyPath = swift_getKeyPath();
    *v9 = v18;
    v9[1] = KeyPath;
    v9[2] = v20;
    swift_storeEnumTagMultiPayload();
    sub_10001B4A4(&qword_1000B3A08, &unk_100079238);
    sub_10003B910();
    sub_10001E8B8(&qword_1000B4158, &qword_1000B4160, &qword_100079CC8);
    return _ConditionalContent<>.init(storage:)();
  }

  else
  {
    sub_100049594();
    (*(v11 + 16))(v9, v14, v10);
    swift_storeEnumTagMultiPayload();
    sub_10001B4A4(&qword_1000B3A08, &unk_100079238);
    sub_10003B910();
    sub_10001E8B8(&qword_1000B4158, &qword_1000B4160, &qword_100079CC8);
    _ConditionalContent<>.init(storage:)();
    return (*(v11 + 8))(v14, v10);
  }
}

uint64_t sub_10004B108@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v26 = a2;
  v29 = a3;
  v28 = sub_10001B4A4(&qword_1000B4138, &qword_100079CB8);
  v4 = *(*(v28 - 8) + 64);
  __chkstk_darwin(v28);
  v6 = &v25 - v5;
  v27 = sub_10001B4A4(&qword_1000B41D0, &qword_100079DD0);
  v7 = *(*(v27 - 8) + 64);
  __chkstk_darwin(v27);
  v9 = &v25 - v8;
  v10 = sub_10001B4A4(&qword_1000B4128, &qword_100079CB0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v25 - v13;
  v15 = type metadata accessor for CollectionListItemView();
  v16 = *(a1 + *(v15 + 24) + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v30 == 1)
  {
    v17 = [*(a1 + *(v15 + 32)) collectionAssets];
    v18 = [v17 gradient];

    __chkstk_darwin(v19);
    *(&v25 - 2) = v26;
    static UnitPoint.topTrailing.getter();
    static UnitPoint.bottomLeading.getter();
    sub_10001B4A4(&qword_1000B4100, &qword_100079CA0);
    sub_10004B734(&qword_1000B4140, &qword_1000B4100, &qword_100079CA0, sub_10004B7B0);
    TipGradientView.init(_:startPoint:endPoint:gradientView:)();
    (*(v11 + 16))(v9, v14, v10);
    swift_storeEnumTagMultiPayload();
    sub_10001E8B8(&qword_1000B4120, &qword_1000B4128, &qword_100079CB0);
    sub_10004B650();
    _ConditionalContent<>.init(storage:)();
    return (*(v11 + 8))(v14, v10);
  }

  else
  {
    v21 = [objc_opt_self() systemBlueColor];
    v22 = Color.init(_:)();
    KeyPath = swift_getKeyPath();
    sub_10001F808(v26, v6, &qword_1000B4100, &qword_100079CA0);
    v24 = &v6[*(v28 + 36)];
    *v24 = KeyPath;
    v24[1] = v22;
    sub_10001F808(v6, v9, &qword_1000B4138, &qword_100079CB8);
    swift_storeEnumTagMultiPayload();
    sub_10001E8B8(&qword_1000B4120, &qword_1000B4128, &qword_100079CB0);
    sub_10004B650();
    _ConditionalContent<>.init(storage:)();
    return sub_10001F870(v6, &qword_1000B4138, &qword_100079CB8);
  }
}

unint64_t sub_10004B598()
{
  result = qword_1000B4110;
  if (!qword_1000B4110)
  {
    sub_10001E860(&qword_1000B4118, &qword_100079CA8);
    sub_10001E8B8(&qword_1000B4120, &qword_1000B4128, &qword_100079CB0);
    sub_10004B650();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B4110);
  }

  return result;
}

unint64_t sub_10004B650()
{
  result = qword_1000B4130;
  if (!qword_1000B4130)
  {
    sub_10001E860(&qword_1000B4138, &qword_100079CB8);
    sub_10004B734(&qword_1000B4140, &qword_1000B4100, &qword_100079CA0, sub_10004B7B0);
    sub_10001E8B8(&qword_1000B3840, &qword_1000B3848, &qword_100079CD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B4130);
  }

  return result;
}

uint64_t sub_10004B734(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_10001E860(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10004B7B0()
{
  result = qword_1000B4148;
  if (!qword_1000B4148)
  {
    sub_10001E860(&qword_1000B4150, &qword_100079CC0);
    sub_10003B910();
    sub_10001E8B8(&qword_1000B4158, &qword_1000B4160, &qword_100079CC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B4148);
  }

  return result;
}

unint64_t sub_10004B878()
{
  result = qword_1000B41B0;
  if (!qword_1000B41B0)
  {
    sub_10001E860(&qword_1000B41A8, &qword_100079D88);
    sub_10004B904();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B41B0);
  }

  return result;
}

unint64_t sub_10004B904()
{
  result = qword_1000B41B8;
  if (!qword_1000B41B8)
  {
    sub_10001E860(&qword_1000B41C0, &qword_100079D90);
    sub_10003B910();
    sub_10001E8B8(&qword_1000B3840, &qword_1000B3848, &qword_100079CD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B41B8);
  }

  return result;
}

uint64_t sub_10004BA04(uint64_t a1)
{
  v2 = type metadata accessor for Image.Scale();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return EnvironmentValues.imageScale.setter();
}

unint64_t sub_10004BB04()
{
  result = qword_1000B41E8;
  if (!qword_1000B41E8)
  {
    sub_10001E860(&qword_1000B40D0, &qword_100079C70);
    sub_10001E860(&qword_1000B40A8, &qword_100079C00);
    sub_10004AB88();
    swift_getOpaqueTypeConformance2();
    sub_10001E8B8(&qword_1000B3950, &qword_1000B3958, &qword_1000790A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B41E8);
  }

  return result;
}

uint64_t sub_10004BC10()
{
  v0 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v338 = *(v0 - 8);
  v339 = v0;
  v1 = *(v338 + 64);
  __chkstk_darwin(v0);
  v337 = v298 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for Locale();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v336 = v298 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for String.LocalizationValue();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v334 = v298 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for LocalizedStringResource();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v335 = v298 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v351 = type metadata accessor for AppShortcutPhraseToken();
  v12 = *(v351 - 8);
  v13 = v12[8];
  __chkstk_darwin(v351);
  v15 = v298 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_10001B4A4(&qword_1000B41F0, &qword_100079E48);
  v17 = *(*(v16 - 8) + 64);
  v18 = __chkstk_darwin(v16);
  v333 = v298 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v18);
  v332 = v298 - v21;
  v22 = __chkstk_darwin(v20);
  v328 = v298 - v23;
  v24 = __chkstk_darwin(v22);
  v326 = v298 - v25;
  v26 = __chkstk_darwin(v24);
  v325 = v298 - v27;
  v28 = __chkstk_darwin(v26);
  v324 = v298 - v29;
  v30 = __chkstk_darwin(v28);
  v323 = v298 - v31;
  v32 = __chkstk_darwin(v30);
  v322 = v298 - v33;
  v34 = __chkstk_darwin(v32);
  v321 = v298 - v35;
  v36 = __chkstk_darwin(v34);
  v320 = v298 - v37;
  v38 = __chkstk_darwin(v36);
  v319 = v298 - v39;
  v40 = __chkstk_darwin(v38);
  v318 = v298 - v41;
  v42 = __chkstk_darwin(v40);
  v317 = v298 - v43;
  v44 = __chkstk_darwin(v42);
  v316 = v298 - v45;
  v46 = __chkstk_darwin(v44);
  v315 = v298 - v47;
  v48 = __chkstk_darwin(v46);
  v314 = v298 - v49;
  v50 = __chkstk_darwin(v48);
  v313 = v298 - v51;
  v52 = __chkstk_darwin(v50);
  v312 = v298 - v53;
  v54 = __chkstk_darwin(v52);
  v311 = v298 - v55;
  v56 = __chkstk_darwin(v54);
  v310 = v298 - v57;
  v58 = __chkstk_darwin(v56);
  v309 = v298 - v59;
  v60 = __chkstk_darwin(v58);
  v308 = v298 - v61;
  v62 = __chkstk_darwin(v60);
  v307 = v298 - v63;
  v64 = __chkstk_darwin(v62);
  v306 = v298 - v65;
  v66 = __chkstk_darwin(v64);
  v305 = v298 - v67;
  v68 = __chkstk_darwin(v66);
  v304 = v298 - v69;
  v70 = __chkstk_darwin(v68);
  v303 = v298 - v71;
  v72 = __chkstk_darwin(v70);
  v302 = v298 - v73;
  v74 = __chkstk_darwin(v72);
  v301 = v298 - v75;
  v76 = __chkstk_darwin(v74);
  v300 = v298 - v77;
  v78 = __chkstk_darwin(v76);
  v299 = v298 - v79;
  v80 = __chkstk_darwin(v78);
  v298[1] = v298 - v81;
  __chkstk_darwin(v80);
  v331 = type metadata accessor for AppShortcut();
  v330 = *(v331 - 8);
  v82 = *(v330 + 64);
  __chkstk_darwin(v331);
  v329 = v298 - ((v83 + 15) & 0xFFFFFFFFFFFFFFF0);
  v352 = sub_10005AB4C();
  sub_10001B4A4(&qword_1000B41F8, &qword_100079E50);
  v84 = *(sub_10001B4A4(&qword_1000B4200, &qword_100079E58) - 8);
  v344 = *(v84 + 72);
  v85 = (*(v84 + 80) + 32) & ~*(v84 + 80);
  v340 = 32 * v344;
  v86 = swift_allocObject();
  v327 = v86;
  *(v86 + 16) = xmmword_100079DF0;
  v87 = v86 + v85;
  v88 = sub_10004E77C();
  AppShortcutPhrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v89._countAndFlagsBits = 0x206E65704FLL;
  v89._object = 0xE500000000000000;
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v89);
  swift_getKeyPath();
  v345 = sub_10001B4A4(&qword_1000B4210, &qword_100079E88);
  AppShortcutPhrase.StringInterpolation.appendInterpolation<A, B>(_:)();

  v90._countAndFlagsBits = 32;
  v90._object = 0xE100000000000000;
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v90);
  v347 = enum case for AppShortcutPhraseToken.applicationName(_:);
  v91 = v12[13];
  v349 = v12 + 13;
  v92 = v351;
  v91(v15);
  v348 = v91;
  AppShortcutPhrase.StringInterpolation.appendInterpolation(_:)();
  v343 = v12[1];
  v343(v15, v92);
  v342 = v12 + 1;
  v93._countAndFlagsBits = 0;
  v93._object = 0xE000000000000000;
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v93);
  v346 = v87;
  v350 = v88;
  AppShortcutPhrase.init(stringInterpolation:)();
  AppShortcutPhrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v94._countAndFlagsBits = 0x206E65704FLL;
  v94._object = 0xE500000000000000;
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v94);
  v341 = v15;
  v95 = v347;
  (v91)(v15, v347, v92);
  AppShortcutPhrase.StringInterpolation.appendInterpolation(_:)();
  v96 = v343;
  v343(v15, v92);
  v97._countAndFlagsBits = 0x2074756F626120;
  v97._object = 0xE700000000000000;
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v97);
  swift_getKeyPath();
  AppShortcutPhrase.StringInterpolation.appendInterpolation<A, B>(_:)();

  v98._countAndFlagsBits = 0;
  v98._object = 0xE000000000000000;
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v98);
  v99 = v344;
  AppShortcutPhrase.init(stringInterpolation:)();
  v100 = 2 * v99;
  v101 = v99;
  AppShortcutPhrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v102._countAndFlagsBits = 0x206E65704FLL;
  v102._object = 0xE500000000000000;
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v102);
  v103 = v341;
  v104 = v351;
  v348(v341, v95, v351);
  AppShortcutPhrase.StringInterpolation.appendInterpolation(_:)();
  v96(v103, v104);
  v105._countAndFlagsBits = 0x20726F6620;
  v105._object = 0xE500000000000000;
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v105);
  swift_getKeyPath();
  AppShortcutPhrase.StringInterpolation.appendInterpolation<A, B>(_:)();

  v106._countAndFlagsBits = 0;
  v106._object = 0xE000000000000000;
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v106);
  AppShortcutPhrase.init(stringInterpolation:)();
  v299 = (v100 + v101);
  AppShortcutPhrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v107._countAndFlagsBits = 0x20656D20776F6853;
  v107._object = 0xE800000000000000;
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v107);
  swift_getKeyPath();
  AppShortcutPhrase.StringInterpolation.appendInterpolation<A, B>(_:)();

  v108._countAndFlagsBits = 32;
  v108._object = 0xE100000000000000;
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v108);
  v109 = v347;
  v110 = v351;
  v111 = v348;
  v348(v103, v347, v351);
  AppShortcutPhrase.StringInterpolation.appendInterpolation(_:)();
  v112 = v343;
  v343(v103, v110);
  v113._countAndFlagsBits = 0;
  v113._object = 0xE000000000000000;
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v113);
  AppShortcutPhrase.init(stringInterpolation:)();
  v300 = (4 * v344);
  AppShortcutPhrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v114._countAndFlagsBits = 0x20656D20776F6853;
  v114._object = 0xE800000000000000;
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v114);
  v115 = v341;
  v116 = v351;
  v111(v341, v109, v351);
  v117 = v115;
  AppShortcutPhrase.StringInterpolation.appendInterpolation(_:)();
  v112(v115, v116);
  v118._countAndFlagsBits = 0x2074756F626120;
  v118._object = 0xE700000000000000;
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v118);
  swift_getKeyPath();
  AppShortcutPhrase.StringInterpolation.appendInterpolation<A, B>(_:)();

  v119._countAndFlagsBits = 0;
  v119._object = 0xE000000000000000;
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v119);
  v120 = v300;
  AppShortcutPhrase.init(stringInterpolation:)();
  v301 = &v120[v344];
  AppShortcutPhrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v121._countAndFlagsBits = 0x20656D20776F6853;
  v121._object = 0xE800000000000000;
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v121);
  v122 = v117;
  v123 = v117;
  v124 = v351;
  v348(v123, v347, v351);
  AppShortcutPhrase.StringInterpolation.appendInterpolation(_:)();
  v112(v122, v124);
  v125._countAndFlagsBits = 0x20726F6620;
  v125._object = 0xE500000000000000;
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v125);
  swift_getKeyPath();
  AppShortcutPhrase.StringInterpolation.appendInterpolation<A, B>(_:)();

  v126._countAndFlagsBits = 0;
  v126._object = 0xE000000000000000;
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v126);
  AppShortcutPhrase.init(stringInterpolation:)();
  AppShortcutPhrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v127._countAndFlagsBits = 0x20776F6853;
  v127._object = 0xE500000000000000;
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v127);
  swift_getKeyPath();
  AppShortcutPhrase.StringInterpolation.appendInterpolation<A, B>(_:)();

  v128._countAndFlagsBits = 32;
  v128._object = 0xE100000000000000;
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v128);
  v129 = v122;
  v130 = v122;
  v131 = v347;
  v132 = v351;
  v133 = v348;
  v348(v130, v347, v351);
  AppShortcutPhrase.StringInterpolation.appendInterpolation(_:)();
  v134 = v132;
  v135 = v343;
  v343(v129, v134);
  v136._countAndFlagsBits = 0;
  v136._object = 0xE000000000000000;
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v136);
  AppShortcutPhrase.init(stringInterpolation:)();
  v303 = (8 * v344);
  v302 = 7 * v344;
  AppShortcutPhrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v137._countAndFlagsBits = 0x20776F6853;
  v137._object = 0xE500000000000000;
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v137);
  v138 = v351;
  v133(v129, v131, v351);
  AppShortcutPhrase.StringInterpolation.appendInterpolation(_:)();
  v139 = v129;
  v140 = v135;
  v135(v139, v138);
  v141._countAndFlagsBits = 0x2074756F626120;
  v141._object = 0xE700000000000000;
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v141);
  swift_getKeyPath();
  AppShortcutPhrase.StringInterpolation.appendInterpolation<A, B>(_:)();

  v142._countAndFlagsBits = 0;
  v142._object = 0xE000000000000000;
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v142);
  AppShortcutPhrase.init(stringInterpolation:)();
  AppShortcutPhrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v143._countAndFlagsBits = 0x20776F6853;
  v143._object = 0xE500000000000000;
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v143);
  v144 = v341;
  v145 = v351;
  v348(v341, v347, v351);
  AppShortcutPhrase.StringInterpolation.appendInterpolation(_:)();
  v140(v144, v145);
  v146._countAndFlagsBits = 0x20726F6620;
  v146._object = 0xE500000000000000;
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v146);
  swift_getKeyPath();
  AppShortcutPhrase.StringInterpolation.appendInterpolation<A, B>(_:)();

  v147._countAndFlagsBits = 0;
  v147._object = 0xE000000000000000;
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v147);
  v148 = v303;
  AppShortcutPhrase.init(stringInterpolation:)();
  v149 = v344;
  v305 = &v148[v344];
  AppShortcutPhrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v150._countAndFlagsBits = 0x20656D2065766947;
  v150._object = 0xE800000000000000;
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v150);
  swift_getKeyPath();
  AppShortcutPhrase.StringInterpolation.appendInterpolation<A, B>(_:)();

  v151._countAndFlagsBits = 32;
  v151._object = 0xE100000000000000;
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v151);
  v152 = v341;
  v153 = v347;
  v154 = v348;
  v348(v341, v347, v145);
  AppShortcutPhrase.StringInterpolation.appendInterpolation(_:)();
  v155 = v343;
  v343(v152, v145);
  v156._countAndFlagsBits = 0;
  v156._object = 0xE000000000000000;
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v156);
  v157 = v346;
  AppShortcutPhrase.init(stringInterpolation:)();
  v306 = (v157 + 10 * v149);
  AppShortcutPhrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v158._countAndFlagsBits = 0x20656D2065766947;
  v158._object = 0xE800000000000000;
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v158);
  v159 = v351;
  v154(v152, v153, v351);
  AppShortcutPhrase.StringInterpolation.appendInterpolation(_:)();
  v155(v152, v159);
  v160._countAndFlagsBits = 0x2074756F626120;
  v160._object = 0xE700000000000000;
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v160);
  swift_getKeyPath();
  AppShortcutPhrase.StringInterpolation.appendInterpolation<A, B>(_:)();

  v161._countAndFlagsBits = 0;
  v161._object = 0xE000000000000000;
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v161);
  AppShortcutPhrase.init(stringInterpolation:)();
  v162 = v346;
  v163 = v344;
  v307 = (v346 + 11 * v344);
  AppShortcutPhrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v164._countAndFlagsBits = 0x20656D2065766947;
  v164._object = 0xE800000000000000;
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v164);
  v165 = v351;
  v348(v152, v347, v351);
  AppShortcutPhrase.StringInterpolation.appendInterpolation(_:)();
  v343(v152, v165);
  v166._countAndFlagsBits = 0x20726F6620;
  v166._object = 0xE500000000000000;
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v166);
  swift_getKeyPath();
  AppShortcutPhrase.StringInterpolation.appendInterpolation<A, B>(_:)();

  v167._countAndFlagsBits = 0;
  v167._object = 0xE000000000000000;
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v167);
  AppShortcutPhrase.init(stringInterpolation:)();
  v308 = (v162 + 12 * v163);
  AppShortcutPhrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v168._countAndFlagsBits = 0x2065766947;
  v168._object = 0xE500000000000000;
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v168);
  swift_getKeyPath();
  AppShortcutPhrase.StringInterpolation.appendInterpolation<A, B>(_:)();

  v169._countAndFlagsBits = 32;
  v169._object = 0xE100000000000000;
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v169);
  v170 = v347;
  v171 = v351;
  v348(v152, v347, v351);
  AppShortcutPhrase.StringInterpolation.appendInterpolation(_:)();
  v172 = v171;
  v173 = v343;
  v343(v152, v172);
  v174._countAndFlagsBits = 0;
  v174._object = 0xE000000000000000;
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v174);
  AppShortcutPhrase.init(stringInterpolation:)();
  v309 = (v346 + 13 * v344);
  AppShortcutPhrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v175._countAndFlagsBits = 0x2065766947;
  v175._object = 0xE500000000000000;
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v175);
  v176 = v170;
  v177 = v351;
  v178 = v348;
  v348(v152, v176, v351);
  AppShortcutPhrase.StringInterpolation.appendInterpolation(_:)();
  v173(v152, v177);
  v179._countAndFlagsBits = 0x2074756F626120;
  v179._object = 0xE700000000000000;
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v179);
  swift_getKeyPath();
  AppShortcutPhrase.StringInterpolation.appendInterpolation<A, B>(_:)();

  v180._countAndFlagsBits = 0;
  v180._object = 0xE000000000000000;
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v180);
  AppShortcutPhrase.init(stringInterpolation:)();
  v181 = v344;
  v310 = v346 + 14 * v344;
  AppShortcutPhrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v182._countAndFlagsBits = 0x2065766947;
  v182._object = 0xE500000000000000;
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v182);
  v183 = v351;
  v178(v152, v347, v351);
  AppShortcutPhrase.StringInterpolation.appendInterpolation(_:)();
  v173(v152, v183);
  v184 = v173;
  v185._countAndFlagsBits = 0x20726F6620;
  v185._object = 0xE500000000000000;
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v185);
  swift_getKeyPath();
  AppShortcutPhrase.StringInterpolation.appendInterpolation<A, B>(_:)();

  v186._countAndFlagsBits = 0;
  v186._object = 0xE000000000000000;
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v186);
  AppShortcutPhrase.init(stringInterpolation:)();
  v311 = (16 * v181);
  v310 = 15 * v181;
  AppShortcutPhrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v187._countAndFlagsBits = 0x2077656956;
  v187._object = 0xE500000000000000;
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v187);
  swift_getKeyPath();
  AppShortcutPhrase.StringInterpolation.appendInterpolation<A, B>(_:)();

  v188._countAndFlagsBits = 32;
  v188._object = 0xE100000000000000;
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v188);
  v189 = v347;
  v190 = v351;
  v191 = v348;
  v348(v152, v347, v351);
  AppShortcutPhrase.StringInterpolation.appendInterpolation(_:)();
  v184(v152, v190);
  v192._countAndFlagsBits = 0;
  v192._object = 0xE000000000000000;
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v192);
  AppShortcutPhrase.init(stringInterpolation:)();
  AppShortcutPhrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v193._countAndFlagsBits = 0x2077656956;
  v193._object = 0xE500000000000000;
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v193);
  v194 = v189;
  v195 = v351;
  v191(v152, v194, v351);
  AppShortcutPhrase.StringInterpolation.appendInterpolation(_:)();
  v184(v152, v195);
  v196._countAndFlagsBits = 0x2074756F626120;
  v196._object = 0xE700000000000000;
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v196);
  swift_getKeyPath();
  AppShortcutPhrase.StringInterpolation.appendInterpolation<A, B>(_:)();

  v197._countAndFlagsBits = 0;
  v197._object = 0xE000000000000000;
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v197);
  v198 = v311;
  AppShortcutPhrase.init(stringInterpolation:)();
  v199 = v344;
  v313 = &v198[v344];
  AppShortcutPhrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v200._countAndFlagsBits = 0x2077656956;
  v200._object = 0xE500000000000000;
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v200);
  v201 = v351;
  v348(v152, v347, v351);
  AppShortcutPhrase.StringInterpolation.appendInterpolation(_:)();
  v343(v152, v201);
  v202._countAndFlagsBits = 0x20726F6620;
  v202._object = 0xE500000000000000;
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v202);
  swift_getKeyPath();
  AppShortcutPhrase.StringInterpolation.appendInterpolation<A, B>(_:)();

  v203._countAndFlagsBits = 0;
  v203._object = 0xE000000000000000;
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v203);
  v204 = v346;
  AppShortcutPhrase.init(stringInterpolation:)();
  v314 = (v204 + 18 * v199);
  AppShortcutPhrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v205._countAndFlagsBits = 0x2079616C70736944;
  v205._object = 0xE800000000000000;
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v205);
  swift_getKeyPath();
  AppShortcutPhrase.StringInterpolation.appendInterpolation<A, B>(_:)();

  v206._countAndFlagsBits = 32;
  v206._object = 0xE100000000000000;
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v206);
  v207 = v347;
  v208 = v351;
  v209 = v348;
  v348(v152, v347, v351);
  AppShortcutPhrase.StringInterpolation.appendInterpolation(_:)();
  v210 = v343;
  v343(v152, v208);
  v211._countAndFlagsBits = 0;
  v211._object = 0xE000000000000000;
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v211);
  AppShortcutPhrase.init(stringInterpolation:)();
  v315 = (v346 + 19 * v344);
  AppShortcutPhrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v212._countAndFlagsBits = 0x2079616C70736944;
  v212._object = 0xE800000000000000;
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v212);
  v213 = v207;
  v214 = v207;
  v215 = v351;
  v209(v152, v213, v351);
  AppShortcutPhrase.StringInterpolation.appendInterpolation(_:)();
  v210(v152, v215);
  v216._countAndFlagsBits = 0x2074756F626120;
  v216._object = 0xE700000000000000;
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v216);
  swift_getKeyPath();
  AppShortcutPhrase.StringInterpolation.appendInterpolation<A, B>(_:)();

  v217._countAndFlagsBits = 0;
  v217._object = 0xE000000000000000;
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v217);
  AppShortcutPhrase.init(stringInterpolation:)();
  AppShortcutPhrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v218._countAndFlagsBits = 0x2079616C70736944;
  v218._object = 0xE800000000000000;
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v218);
  v219 = v351;
  v209(v152, v214, v351);
  AppShortcutPhrase.StringInterpolation.appendInterpolation(_:)();
  v343(v152, v219);
  v220._countAndFlagsBits = 0x20726F6620;
  v220._object = 0xE500000000000000;
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v220);
  swift_getKeyPath();
  AppShortcutPhrase.StringInterpolation.appendInterpolation<A, B>(_:)();

  v221._countAndFlagsBits = 0;
  v221._object = 0xE000000000000000;
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v221);
  AppShortcutPhrase.init(stringInterpolation:)();
  v222 = v344;
  AppShortcutPhrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v223._countAndFlagsBits = 0x206573776F7242;
  v223._object = 0xE700000000000000;
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v223);
  swift_getKeyPath();
  AppShortcutPhrase.StringInterpolation.appendInterpolation<A, B>(_:)();

  v224._countAndFlagsBits = 32;
  v224._object = 0xE100000000000000;
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v224);
  v225 = v347;
  v226 = v351;
  v227 = v348;
  v348(v152, v347, v351);
  AppShortcutPhrase.StringInterpolation.appendInterpolation(_:)();
  v228 = v226;
  v229 = v343;
  v343(v152, v228);
  v230._countAndFlagsBits = 0;
  v230._object = 0xE000000000000000;
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v230);
  AppShortcutPhrase.init(stringInterpolation:)();
  v318 = (v346 + 22 * v222);
  AppShortcutPhrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v231._countAndFlagsBits = 0x206573776F7242;
  v231._object = 0xE700000000000000;
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v231);
  v232 = v351;
  v227(v152, v225, v351);
  AppShortcutPhrase.StringInterpolation.appendInterpolation(_:)();
  v229(v152, v232);
  v233 = v229;
  v234._countAndFlagsBits = 0x2074756F626120;
  v234._object = 0xE700000000000000;
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v234);
  swift_getKeyPath();
  AppShortcutPhrase.StringInterpolation.appendInterpolation<A, B>(_:)();

  v235._countAndFlagsBits = 0;
  v235._object = 0xE000000000000000;
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v235);
  AppShortcutPhrase.init(stringInterpolation:)();
  v236 = v346;
  v237 = v344;
  v319 = (v346 + 23 * v344);
  AppShortcutPhrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v238._countAndFlagsBits = 0x206573776F7242;
  v238._object = 0xE700000000000000;
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v238);
  v239 = v351;
  v348(v152, v347, v351);
  AppShortcutPhrase.StringInterpolation.appendInterpolation(_:)();
  v233(v152, v239);
  v240._countAndFlagsBits = 0x20726F6620;
  v240._object = 0xE500000000000000;
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v240);
  swift_getKeyPath();
  AppShortcutPhrase.StringInterpolation.appendInterpolation<A, B>(_:)();

  v241._countAndFlagsBits = 0;
  v241._object = 0xE000000000000000;
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v241);
  AppShortcutPhrase.init(stringInterpolation:)();
  v320 = (v236 + 24 * v237);
  AppShortcutPhrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v242._countAndFlagsBits = 543515987;
  v242._object = 0xE400000000000000;
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v242);
  swift_getKeyPath();
  AppShortcutPhrase.StringInterpolation.appendInterpolation<A, B>(_:)();

  v243._countAndFlagsBits = 32;
  v243._object = 0xE100000000000000;
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v243);
  v244 = v347;
  v245 = v351;
  v246 = v348;
  v348(v152, v347, v351);
  AppShortcutPhrase.StringInterpolation.appendInterpolation(_:)();
  v247 = v343;
  v343(v152, v245);
  v248._countAndFlagsBits = 0;
  v248._object = 0xE000000000000000;
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v248);
  AppShortcutPhrase.init(stringInterpolation:)();
  v321 = (v346 + 25 * v344);
  AppShortcutPhrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v249._countAndFlagsBits = 543515987;
  v249._object = 0xE400000000000000;
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v249);
  v250 = v244;
  v251 = v351;
  v246(v152, v250, v351);
  AppShortcutPhrase.StringInterpolation.appendInterpolation(_:)();
  v247(v152, v251);
  v252._countAndFlagsBits = 0x2074756F626120;
  v252._object = 0xE700000000000000;
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v252);
  swift_getKeyPath();
  AppShortcutPhrase.StringInterpolation.appendInterpolation<A, B>(_:)();

  v253._countAndFlagsBits = 0;
  v253._object = 0xE000000000000000;
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v253);
  AppShortcutPhrase.init(stringInterpolation:)();
  v254 = v344;
  v255 = v346;
  v322 = (v346 + 26 * v344);
  AppShortcutPhrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v256._countAndFlagsBits = 543515987;
  v256._object = 0xE400000000000000;
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v256);
  v257 = v351;
  v348(v152, v347, v351);
  AppShortcutPhrase.StringInterpolation.appendInterpolation(_:)();
  v343(v152, v257);
  v258._countAndFlagsBits = 0x20726F6620;
  v258._object = 0xE500000000000000;
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v258);
  swift_getKeyPath();
  AppShortcutPhrase.StringInterpolation.appendInterpolation<A, B>(_:)();

  v259._countAndFlagsBits = 0;
  v259._object = 0xE000000000000000;
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v259);
  AppShortcutPhrase.init(stringInterpolation:)();
  v323 = (v255 + 27 * v254);
  AppShortcutPhrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v260._countAndFlagsBits = 0x6572612074616857;
  v260._object = 0xE900000000000020;
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v260);
  v261 = v347;
  v262 = v351;
  v348(v152, v347, v351);
  AppShortcutPhrase.StringInterpolation.appendInterpolation(_:)();
  v263 = v343;
  v343(v152, v262);
  v264._countAndFlagsBits = 0x20726F6620;
  v264._object = 0xE500000000000000;
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v264);
  swift_getKeyPath();
  AppShortcutPhrase.StringInterpolation.appendInterpolation<A, B>(_:)();

  v265._countAndFlagsBits = 0;
  v265._object = 0xE000000000000000;
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v265);
  AppShortcutPhrase.init(stringInterpolation:)();
  v324 = (v346 + 28 * v344);
  AppShortcutPhrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v266._object = 0xEE0020656D6F7320;
  v266._countAndFlagsBits = 0x6572612074616857;
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v266);
  v267 = v261;
  v268 = v262;
  v269 = v262;
  v270 = v348;
  v348(v152, v267, v269);
  AppShortcutPhrase.StringInterpolation.appendInterpolation(_:)();
  v263(v152, v268);
  v271._countAndFlagsBits = 0x20726F6620;
  v271._object = 0xE500000000000000;
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v271);
  swift_getKeyPath();
  AppShortcutPhrase.StringInterpolation.appendInterpolation<A, B>(_:)();

  v272._countAndFlagsBits = 0;
  v272._object = 0xE000000000000000;
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v272);
  AppShortcutPhrase.init(stringInterpolation:)();
  v273 = v346;
  v274 = v344;
  v325 = (v346 + 29 * v344);
  AppShortcutPhrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v275._countAndFlagsBits = 0x656D206863616554;
  v275._object = 0xE900000000000020;
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v275);
  v276 = v351;
  v270(v152, v347, v351);
  AppShortcutPhrase.StringInterpolation.appendInterpolation(_:)();
  v343(v152, v276);
  v277._countAndFlagsBits = 0x20726F6620;
  v277._object = 0xE500000000000000;
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v277);
  swift_getKeyPath();
  AppShortcutPhrase.StringInterpolation.appendInterpolation<A, B>(_:)();

  v278._countAndFlagsBits = 0;
  v278._object = 0xE000000000000000;
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v278);
  AppShortcutPhrase.init(stringInterpolation:)();
  v326 = (v273 + 30 * v274);
  AppShortcutPhrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v279._countAndFlagsBits = 0x20656D206C6C6554;
  v279._object = 0xE800000000000000;
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v279);
  v280 = v347;
  v281 = v351;
  v270(v152, v347, v351);
  AppShortcutPhrase.StringInterpolation.appendInterpolation(_:)();
  v282 = v343;
  v343(v152, v281);
  v283._countAndFlagsBits = 0x2074756F626120;
  v283._object = 0xE700000000000000;
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v283);
  swift_getKeyPath();
  AppShortcutPhrase.StringInterpolation.appendInterpolation<A, B>(_:)();

  v284._countAndFlagsBits = 0;
  v284._object = 0xE000000000000000;
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v284);
  AppShortcutPhrase.init(stringInterpolation:)();
  v344 = v340 - v344;
  AppShortcutPhrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v285._countAndFlagsBits = 0;
  v285._object = 0xE000000000000000;
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v285);
  v286 = v280;
  v287 = v351;
  v348(v152, v286, v351);
  AppShortcutPhrase.StringInterpolation.appendInterpolation(_:)();
  v282(v152, v287);
  v288._countAndFlagsBits = 0x2074756F626120;
  v288._object = 0xE700000000000000;
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v288);
  swift_getKeyPath();
  AppShortcutPhrase.StringInterpolation.appendInterpolation<A, B>(_:)();

  v289._countAndFlagsBits = 0;
  v289._object = 0xE000000000000000;
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v289);
  AppShortcutPhrase.init(stringInterpolation:)();
  AppShortcutPhrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v290._countAndFlagsBits = 0;
  v290._object = 0xE000000000000000;
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v290);
  v348(v152, v347, v287);
  AppShortcutPhrase.StringInterpolation.appendInterpolation(_:)();
  v343(v152, v287);
  v291._countAndFlagsBits = 0x20726F6620;
  v291._object = 0xE500000000000000;
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v291);
  swift_getKeyPath();
  AppShortcutPhrase.StringInterpolation.appendInterpolation<A, B>(_:)();

  v292._countAndFlagsBits = 0;
  v292._object = 0xE000000000000000;
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v292);
  AppShortcutPhrase.init(stringInterpolation:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  (*(v338 + 104))(v337, enum case for LocalizedStringResource.BundleDescription.main(_:), v339);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v293 = v329;
  AppShortcut.init<A>(intent:phrases:shortTitle:systemImageName:)();
  v294 = static AppShortcutsBuilder.buildExpression(_:)();
  (*(v330 + 8))(v293, v331);
  sub_10001B4A4(&qword_1000B4218, &unk_100079E90);
  v295 = swift_allocObject();
  *(v295 + 16) = xmmword_100077E80;
  *(v295 + 32) = v294;
  v296 = static AppShortcutsBuilder.buildBlock(_:)();

  return v296;
}

unint64_t sub_10004E77C()
{
  result = qword_1000B4208;
  if (!qword_1000B4208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B4208);
  }

  return result;
}

uint64_t type metadata accessor for TipListViewModel()
{
  result = qword_1000B4270;
  if (!qword_1000B4270)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10004E820()
{
  sub_1000279AC(319, &qword_1000B3180);
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    sub_1000512C4();
    if (v4 <= 0x3F)
    {
      v17 = *(v3 - 8) + 64;
      sub_100027958(319, &qword_1000B31A0, &qword_1000B31A8, &qword_100078BC0);
      if (v6 <= 0x3F)
      {
        v18 = *(v5 - 8) + 64;
        sub_100027958(319, &qword_1000B42B0, &qword_1000B31F8, &qword_1000790F0);
        if (v8 <= 0x3F)
        {
          v19 = *(v7 - 8) + 64;
          sub_100027958(319, &qword_1000B3198, &qword_1000B3390, &unk_100077F30);
          if (v10 <= 0x3F)
          {
            v20 = *(v9 - 8) + 64;
            sub_1000279AC(319, &qword_1000B42B8);
            if (v12 <= 0x3F)
            {
              v21 = *(v11 - 8) + 64;
              sub_100027958(319, &qword_1000B42C0, &unk_1000B42C8, &qword_100079F60);
              if (v14 <= 0x3F)
              {
                v22 = *(v13 - 8) + 64;
                sub_1000279AC(319, &qword_1000B31C0);
                if (v16 <= 0x3F)
                {
                  v23 = *(v15 - 8) + 64;
                  swift_initClassMetadata2();
                }
              }
            }
          }
        }
      }
    }
  }
}

double sub_10004EB10@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  result = *&v5;
  *a2 = v5;
  return result;
}

void sub_10004EB90(uint64_t *a1, void **a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  v4;
  static Published.subscript.setter();
  sub_10004F6A0();
}

id sub_10004EC80(void *a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v2 = a1;
  static Published.subscript.getter();

  return v4;
}

uint64_t sub_10004ED10()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

void sub_10004ED84(void *a1, uint64_t a2, void *a3)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v5 = a3;
  v6 = a1;
  v7 = v5;
  static Published.subscript.setter();
  sub_10004EE18();
}

uint64_t sub_10004EE18()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v1 = [v5 identifier];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v2 = [v5 title];

  if (v2)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v0;
  return static Published.subscript.setter();
}

id sub_10004EF9C(void *a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v2 = a1;
  static Published.subscript.getter();

  return v4;
}

uint64_t sub_10004F02C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t sub_10004F0A0(void *a1, uint64_t a2, void *a3)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v5 = a3;
  v6 = a1;
  return static Published.subscript.setter();
}

uint64_t sub_10004F114@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a2 = v5;
  return result;
}

uint64_t sub_10004F194(void **a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v2;
  v5 = v3;
  return static Published.subscript.setter();
}

Class sub_10004F208(void *a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v2 = a1;
  static Published.subscript.getter();

  sub_10001AC14(0, &qword_1000B30C8, TPSTip_ptr);
  v3.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v3.super.isa;
}

uint64_t sub_10004F2CC()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t sub_10004F340(void *a1)
{
  sub_10001AC14(0, &qword_1000B30C8, TPSTip_ptr);
  static Array._unconditionallyBridgeFromObjectiveC(_:)();
  swift_getKeyPath();
  swift_getKeyPath();
  v2 = a1;
  return static Published.subscript.setter();
}

uint64_t sub_10004F3D8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a2 = v5;
  return result;
}

uint64_t sub_10004F458(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  v4 = v3;
  return static Published.subscript.setter();
}

id sub_10004F4D0(void *a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v2 = a1;
  static Published.subscript.getter();

  if (v5)
  {
    v3 = String._bridgeToObjectiveC()();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t sub_10004F588()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

void sub_10004F5FC(void *a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v4 = a1;
  static Published.subscript.setter();
  sub_10004F6A0();
}

void sub_10004F6A0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  dispatch thunk of SearchResultsViewModel.selectedIdentifier.setter();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v4)
  {
    v0 = [type metadata accessor for TPSUIAppController() sharedInstance];
    v1 = String._bridgeToObjectiveC()();

    v2 = [v0 tipForIdentifier:v1];

    v3 = dispatch thunk of SearchResultsViewModel.viewCollapsed.getter();
    sub_100050A7C(v2, v3 & 1);
  }
}

double sub_10004F834(void *a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v2 = a1;
  static Published.subscript.getter();

  return v4;
}

double sub_10004F8C4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t sub_10004F944(void *a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v2 = a1;
  return static Published.subscript.setter();
}

double sub_10004F9B8@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  result = v5;
  *a2 = v5;
  return result;
}

uint64_t sub_10004FA38(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v3;
  return static Published.subscript.setter();
}

uint64_t sub_10004FAB0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t sub_10004FB8C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

_BYTE *sub_10004FC34(_BYTE *result, uint64_t a2, uint64_t a3)
{
  result[qword_1000B6ED8] = a3;
  v3 = *&result[qword_1000B6EE0];
  if (v3)
  {
    v5 = *&result[qword_1000B6EE0 + 8];
    v6 = result;
    sub_10001E900(v3);
    v3(a3);

    return sub_10001E970(v3);
  }

  return result;
}

id sub_10004FCD0(uint64_t a1)
{
  if (*(a1 + qword_1000B6EE0))
  {
    v1 = *(a1 + qword_1000B6EE0 + 8);
    v4[4] = *(a1 + qword_1000B6EE0);
    v4[5] = v1;
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 1107296256;
    v4[2] = sub_10004FD98;
    v4[3] = &unk_1000A4098;
    v2 = _Block_copy(v4);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t sub_10004FD98(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v4(a2);
}

void sub_10004FDEC(char *a1, int a2, void *aBlock)
{
  v4 = _Block_copy(aBlock);
  if (v4)
  {
    v5 = v4;
    v4 = swift_allocObject();
    *(v4 + 16) = v5;
    v6 = sub_1000514FC;
  }

  else
  {
    v6 = 0;
  }

  v7 = &a1[qword_1000B6EE0];
  v8 = *&a1[qword_1000B6EE0];
  v9 = *&a1[qword_1000B6EE0 + 8];
  *v7 = v6;
  v7[1] = v4;
  v10 = a1;
  sub_10001E970(v8);
}

double sub_10004FE98(uint64_t a1)
{
  result = *(a1 + qword_1000B6EE8);
  v2 = *(a1 + qword_1000B6EE8 + 8);
  return result;
}

void sub_10004FEAC(char *a1, double a2, double a3)
{
  v3 = &a1[qword_1000B6EE8];
  *v3 = a2;
  v3[1] = a3;
  v4 = a1;
  sub_10004FF04();
}

uint64_t sub_10004FF04()
{
  v1 = v0[qword_1000B6ED8];
  if ((((*&v0[qword_1000B6EE8 + 8] >= -5.0) ^ v1) & 1) == 0)
  {
    v2 = v1 ^ 1u;
    v0[qword_1000B6ED8] = v1 ^ 1;
    v3 = *&v0[qword_1000B6EE0];
    if (v3)
    {
      v4 = *&v0[qword_1000B6EE0 + 8];

      v3(v2);
      sub_10001E970(v3);
    }
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v5 = v0;
  return static Published.subscript.setter();
}

BOOL sub_100050000(void *a1)
{
  v1 = a1;
  v2 = sub_100050034();

  return v2;
}

BOOL sub_100050034()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v0 = [v6 identifier];

  v1 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v3 = v2;

  v4 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v4 = v1 & 0xFFFFFFFFFFFFLL;
  }

  return v4 != 0;
}

BOOL sub_1000500FC(void *a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v2 = a1;
  static Published.subscript.getter();

  if (v5 >> 62)
  {
    v3 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v3 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return v3 != 0;
}

id sub_1000501BC()
{
  v1 = sub_10001B4A4(&qword_1000B3208, &qword_100078228);
  v68 = *(v1 - 8);
  v69 = v1;
  v2 = *(v68 + 64);
  __chkstk_darwin(v1);
  v67 = &v51 - v3;
  v4 = sub_10001B4A4(&qword_1000B42E8, &qword_10007A090);
  v65 = *(v4 - 8);
  v66 = v4;
  v5 = *(v65 + 64);
  __chkstk_darwin(v4);
  v64 = &v51 - v6;
  v7 = sub_10001B4A4(&qword_1000B42F0, &unk_10007A098);
  v62 = *(v7 - 8);
  v63 = v7;
  v8 = *(v62 + 64);
  __chkstk_darwin(v7);
  v61 = &v51 - v9;
  v10 = sub_10001B4A4(&qword_1000B3220, &unk_100078240);
  v59 = *(v10 - 8);
  v60 = v10;
  v11 = *(v59 + 64);
  __chkstk_darwin(v10);
  v58 = &v51 - v12;
  v57 = sub_10001B4A4(&qword_1000B42F8, &qword_10007A0A8);
  v54 = *(v57 - 8);
  v13 = *(v54 + 64);
  __chkstk_darwin(v57);
  v53 = &v51 - v14;
  v52 = sub_10001B4A4(&qword_1000B3218, &qword_10007A0B0);
  v51 = *(v52 - 8);
  v15 = *(v51 + 64);
  __chkstk_darwin(v52);
  v17 = &v51 - v16;
  v18 = sub_10001B4A4(&qword_1000B4300, &unk_10007A0B8);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v22 = &v51 - v21;
  v23 = sub_10001B4A4(&qword_1000B2D80, &qword_100078250);
  v55 = v23;
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  __chkstk_darwin(v23);
  v27 = &v51 - v26;
  v28 = qword_1000B4220;
  LOBYTE(v71) = 0;
  Published.init(initialValue:)();
  v29 = *(v24 + 32);
  v56 = v24 + 32;
  v29(&v0[v28], v27, v23);
  v30 = qword_1000B4228;
  v71 = [objc_allocWithZone(TPSCollection) init];
  sub_10001AC14(0, &qword_1000B2EC8, TPSCollection_ptr);
  Published.init(initialValue:)();
  (*(v19 + 32))(&v0[v30], v22, v18);
  v31 = qword_1000B4230;
  v71 = 0;
  sub_10001B4A4(&qword_1000B31A8, &qword_100078BC0);
  Published.init(initialValue:)();
  (*(v51 + 32))(&v0[v31], v17, v52);
  v32 = qword_1000B4238;
  v71 = _swiftEmptyArrayStorage;
  sub_10001B4A4(&qword_1000B31F8, &qword_1000790F0);
  v33 = v53;
  Published.init(initialValue:)();
  (*(v54 + 32))(&v0[v32], v33, v57);
  v34 = qword_1000B4240;
  v71 = 0;
  v72 = 0;
  sub_10001B4A4(&qword_1000B3390, &unk_100077F30);
  v35 = v58;
  Published.init(initialValue:)();
  (*(v59 + 32))(&v0[v34], v35, v60);
  v36 = qword_1000B4248;
  v71 = 0;
  v37 = v61;
  Published.init(initialValue:)();
  v38 = v63;
  v39 = *(v62 + 32);
  v39(&v0[v36], v37, v63);
  v40 = qword_1000B4250;
  v71 = 0;
  Published.init(initialValue:)();
  v39(&v0[v40], v37, v38);
  v41 = qword_1000B4258;
  v71 = 0;
  LOBYTE(v72) = 1;
  sub_10001B4A4(&unk_1000B42C8, &qword_100079F60);
  v42 = v64;
  Published.init(initialValue:)();
  (*(v65 + 32))(&v0[v41], v42, v66);
  v43 = qword_1000B4260;
  LOBYTE(v71) = 0;
  Published.init(initialValue:)();
  v29(&v0[v43], v27, v55);
  v44 = qword_1000B4268;
  v71 = *aEmpty;
  v72 = unk_1000B4C18;
  v73 = qword_1000B4C20;
  v74 = unk_1000B4C28;

  v45 = v67;
  Published.init(initialValue:)();
  (*(v68 + 32))(&v0[v44], v45, v69);
  v0[qword_1000B6ED0] = 0;
  v0[qword_1000B6ED8] = 0;
  v46 = &v0[qword_1000B6EE0];
  *v46 = 0;
  v46[1] = 0;
  v47 = &v0[qword_1000B6EE8];
  v48 = type metadata accessor for TipListViewModel();
  *v47 = 0;
  v47[1] = 0;
  v70.receiver = v0;
  v70.super_class = v48;
  v49 = objc_msgSendSuper2(&v70, "init");
  dispatch thunk of SearchResultsViewModel.supportsHighlight.setter();

  return v49;
}

void sub_1000509CC(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v7 = a1;
  v5 = dispatch thunk of SearchResultsViewModel.tipActionHandler.getter();
  if (v5)
  {
    v6 = v5;
    v5(v4);

    sub_10001E970(v6);
  }

  else
  {
  }
}

void sub_100050A7C(void *a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    if (v10)
    {
      if (a1)
      {
        sub_10001AC14(0, &qword_1000B30C8, TPSTip_ptr);
        v8 = a1;
        v9 = static NSObject.== infix(_:_:)();

        if (v9)
        {
          return;
        }
      }

      else
      {
      }
    }

    else if (!a1)
    {
      return;
    }
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v4 = a1;
  v5 = v2;
  static Published.subscript.setter();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (a1)
  {
    v6 = dispatch thunk of SearchResultsViewModel.tipActionHandler.getter();
    if (v6)
    {
      v7 = v6;
      v6(a1);

      sub_10001E970(v7);
    }

    else
    {
    }
  }
}

void sub_100050C2C(void *a1, uint64_t a2, void *a3, char a4)
{
  v7 = a3;
  v8 = a1;
  sub_100050A7C(a3, a4);
}

uint64_t sub_100050CA0()
{
  v1 = qword_1000B4220;
  v2 = sub_10001B4A4(&qword_1000B2D80, &qword_100078250);
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v4 = qword_1000B4228;
  v5 = sub_10001B4A4(&qword_1000B4300, &unk_10007A0B8);
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  v6 = qword_1000B4230;
  v7 = sub_10001B4A4(&qword_1000B3218, &qword_10007A0B0);
  (*(*(v7 - 8) + 8))(v0 + v6, v7);
  v8 = qword_1000B4238;
  v9 = sub_10001B4A4(&qword_1000B42F8, &qword_10007A0A8);
  (*(*(v9 - 8) + 8))(v0 + v8, v9);
  v10 = qword_1000B4240;
  v11 = sub_10001B4A4(&qword_1000B3220, &unk_100078240);
  (*(*(v11 - 8) + 8))(v0 + v10, v11);
  v12 = qword_1000B4248;
  v13 = sub_10001B4A4(&qword_1000B42F0, &unk_10007A098);
  v14 = *(*(v13 - 8) + 8);
  v14(v0 + v12, v13);
  v14(v0 + qword_1000B4250, v13);
  v15 = qword_1000B4258;
  v16 = sub_10001B4A4(&qword_1000B42E8, &qword_10007A090);
  (*(*(v16 - 8) + 8))(v0 + v15, v16);
  v3(v0 + qword_1000B4260, v2);
  v17 = qword_1000B4268;
  v18 = sub_10001B4A4(&qword_1000B3208, &qword_100078228);
  (*(*(v18 - 8) + 8))(v0 + v17, v18);
  v19 = *(v0 + qword_1000B6EE0);
  v20 = *(v0 + qword_1000B6EE0 + 8);

  return sub_10001E970(v19);
}

id sub_100050F94()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TipListViewModel();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100050FCC(uint64_t a1)
{
  v2 = qword_1000B4220;
  v3 = sub_10001B4A4(&qword_1000B2D80, &qword_100078250);
  v4 = *(*(v3 - 8) + 8);
  v4(a1 + v2, v3);
  v5 = qword_1000B4228;
  v6 = sub_10001B4A4(&qword_1000B4300, &unk_10007A0B8);
  (*(*(v6 - 8) + 8))(a1 + v5, v6);
  v7 = qword_1000B4230;
  v8 = sub_10001B4A4(&qword_1000B3218, &qword_10007A0B0);
  (*(*(v8 - 8) + 8))(a1 + v7, v8);
  v9 = qword_1000B4238;
  v10 = sub_10001B4A4(&qword_1000B42F8, &qword_10007A0A8);
  (*(*(v10 - 8) + 8))(a1 + v9, v10);
  v11 = qword_1000B4240;
  v12 = sub_10001B4A4(&qword_1000B3220, &unk_100078240);
  (*(*(v12 - 8) + 8))(a1 + v11, v12);
  v13 = qword_1000B4248;
  v14 = sub_10001B4A4(&qword_1000B42F0, &unk_10007A098);
  v15 = *(*(v14 - 8) + 8);
  v15(a1 + v13, v14);
  v15(a1 + qword_1000B4250, v14);
  v16 = qword_1000B4258;
  v17 = sub_10001B4A4(&qword_1000B42E8, &qword_10007A090);
  (*(*(v17 - 8) + 8))(a1 + v16, v17);
  v4(a1 + qword_1000B4260, v3);
  v18 = qword_1000B4268;
  v19 = sub_10001B4A4(&qword_1000B3208, &qword_100078228);
  (*(*(v19 - 8) + 8))(a1 + v18, v19);
  v20 = *(a1 + qword_1000B6EE0);
  v21 = *(a1 + qword_1000B6EE0 + 8);

  return sub_10001E970(v20);
}

void sub_1000512C4()
{
  if (!qword_1000B42A8)
  {
    sub_10001AC14(255, &qword_1000B2EC8, TPSCollection_ptr);
    v0 = type metadata accessor for Published();
    if (!v1)
    {
      atomic_store(v0, &qword_1000B42A8);
    }
  }
}

double sub_10005133C@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  result = *&v5;
  *a2 = v5;
  *(a2 + 16) = v6;
  *(a2 + 24) = v7;
  return result;
}

uint64_t sub_1000513C8(uint64_t *a1, void **a2)
{
  v3 = *a1;
  v2 = a1[1];
  v5 = a1[2];
  v4 = a1[3];
  v6 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  v7 = v6;
  return static Published.subscript.setter();
}

uint64_t sub_1000514C4()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100051514(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000515A4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a2 = v5;
  return result;
}

uint64_t sub_100051624(void **a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v3;
  v4 = v2;
  static Published.subscript.setter();
  return sub_10004EE18();
}

double sub_1000516A4@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  result = v5;
  *a2 = v5;
  return result;
}

uint64_t sub_100051724(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v3;
  return static Published.subscript.setter();
}

id sub_10005184C(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for TipListView();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR___TipListViewController_viewModel;
  v9 = [objc_allocWithZone(type metadata accessor for TipListViewModel()) init];
  *&v2[v8] = v9;
  v10 = v9;
  sub_100032D64(v7);
  v11 = objc_allocWithZone(sub_10001B4A4(&qword_1000B4340, &unk_10007A3E0));
  *&v2[OBJC_IVAR___TipListViewController_hostingController] = UIHostingController.init(rootView:)();
  v12 = type metadata accessor for TipListViewController();
  v15.receiver = v2;
  v15.super_class = v12;
  v13 = objc_msgSendSuper2(&v15, "initWithCoder:", a1);

  if (v13)
  {
  }

  return v13;
}

uint64_t sub_1000519D4()
{
  v1 = *(v0 + OBJC_IVAR___TipListViewController_viewModel);
  swift_getKeyPath();
  swift_getKeyPath();
  v2 = v1;
  static Published.subscript.getter();

  return v4;
}

void sub_100051B04()
{
  v31.receiver = v0;
  v31.super_class = type metadata accessor for TipListViewController();
  objc_msgSendSuper2(&v31, "loadView");
  v1 = *&v0[OBJC_IVAR___TipListViewController_hostingController];
  v2 = [v1 view];
  if (v2)
  {
    v3 = v2;
    [v0 addChildViewController:v1];
    v4 = [v0 view];
    if (v4)
    {
      v5 = v4;
      [v4 addSubview:v3];

      v6 = [objc_opt_self() systemBackgroundColor];
      [v3 setBackgroundColor:v6];

      [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
      v7 = [v0 view];
      if (v7)
      {
        v8 = v7;
        sub_10001B4A4(&qword_1000B2DB0, &qword_100077C20);
        v9 = swift_allocObject();
        *(v9 + 16) = xmmword_100077BC0;
        v10 = [v3 leadingAnchor];
        v11 = [v0 view];
        if (v11)
        {
          v12 = v11;
          v13 = [v11 leadingAnchor];

          v14 = [v10 constraintEqualToAnchor:v13];
          *(v9 + 32) = v14;
          v15 = [v3 topAnchor];
          v16 = [v0 view];
          if (v16)
          {
            v17 = v16;
            v18 = [v16 topAnchor];

            v19 = [v15 constraintEqualToAnchor:v18];
            *(v9 + 40) = v19;
            v20 = [v3 trailingAnchor];
            v21 = [v0 view];
            if (v21)
            {
              v22 = v21;
              v23 = [v21 trailingAnchor];

              v24 = [v20 constraintEqualToAnchor:v23];
              *(v9 + 48) = v24;
              v25 = [v3 bottomAnchor];
              v26 = [v0 view];
              if (v26)
              {
                v27 = v26;
                v28 = [v26 bottomAnchor];

                v29 = [v25 constraintEqualToAnchor:v28];
                *(v9 + 56) = v29;
                sub_10001AC14(0, &qword_1000B2DB8, NSLayoutConstraint_ptr);
                isa = Array._bridgeToObjectiveC()().super.isa;

                [v8 addConstraints:isa];

                [v1 didMoveToParentViewController:v0];
                return;
              }

LABEL_15:
              __break(1u);
              return;
            }

LABEL_14:
            __break(1u);
            goto LABEL_15;
          }

LABEL_13:
          __break(1u);
          goto LABEL_14;
        }

LABEL_12:
        __break(1u);
        goto LABEL_13;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_12;
  }
}

void sub_100051F94()
{
  v23.receiver = v0;
  v23.super_class = type metadata accessor for TipListViewController();
  objc_msgSendSuper2(&v23, "viewDidLayoutSubviews");
  v1 = [v0 view];
  if (!v1)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v2 = v1;
  [v1 safeAreaInsets];
  v4 = v3;

  v5 = round(v4);
  v6 = OBJC_IVAR___TipListViewController_viewModel;
  v7 = *&v0[OBJC_IVAR___TipListViewController_viewModel];
  swift_getKeyPath();
  swift_getKeyPath();
  v8 = v7;
  static Published.subscript.getter();

  if (v5 != v21)
  {
    v9 = *&v0[v6];
    swift_getKeyPath();
    swift_getKeyPath();
    v21 = v5;
    v10 = v9;
    static Published.subscript.setter();
  }

  v11 = *&v0[v6];
  swift_getKeyPath();
  swift_getKeyPath();
  v12 = v11;
  static Published.subscript.getter();

  v13 = [v0 view];
  if (!v13)
  {
    goto LABEL_13;
  }

  v14 = v13;
  [v13 bounds];
  v16 = v15;

  if (v21 == v16)
  {
    v17 = v22;
  }

  else
  {
    v17 = 1;
  }

  if (v17 == 1)
  {
    v18 = *&v0[v6];
    v19 = [v0 view];
    if (v19)
    {
      v20 = v19;
      [v19 bounds];

      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.setter();
      return;
    }

LABEL_14:
    __break(1u);
  }
}

BOOL sub_100052254()
{
  if (![objc_opt_self() isPhoneUI])
  {
    return 0;
  }

  v1 = [v0 navigationController];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 navigationBar];

    v4 = [v3 tintColor];
  }

  else
  {
    v4 = 0;
  }

  v5 = [objc_opt_self() whiteColor];
  v6 = v5;
  if (!v4)
  {
    if (!v5)
    {
      return 1;
    }

    goto LABEL_12;
  }

  if (!v5)
  {
    v6 = v4;
LABEL_12:

    return 0;
  }

  sub_10001AC14(0, &qword_1000B2DA0, UIColor_ptr);
  v7 = static NSObject.== infix(_:_:)();

  return (v7 & 1) != 0;
}

void sub_1000523A8()
{
  v1 = *(v0 + OBJC_IVAR___TipListViewController_hostingController);
}

id sub_1000523E8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TipListViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10005249C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a2 = v5;
  *(a2 + 8) = v6;
  return result;
}

uint64_t sub_100052528(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v5 = v4;
  return static Published.subscript.setter();
}

id sub_1000525AC(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for TipListView();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR___TipListViewController_viewModel;
  v9 = [objc_allocWithZone(type metadata accessor for TipListViewModel()) init];
  *&v2[v8] = v9;
  if (a1)
  {
    *&v2[v8] = a1;
    v10 = a1;

    v9 = *&v2[v8];
  }

  v11 = v9;
  sub_100032D64(v7);
  v12 = objc_allocWithZone(sub_10001B4A4(&qword_1000B4340, &unk_10007A3E0));
  *&v2[OBJC_IVAR___TipListViewController_hostingController] = UIHostingController.init(rootView:)();
  v13 = type metadata accessor for TipListViewController();
  v15.receiver = v2;
  v15.super_class = v13;
  return objc_msgSendSuper2(&v15, "initWithNibName:bundle:", 0, 0);
}

void sub_100052738()
{
  sub_100056DA0(319, &unk_1000B4058, &type metadata accessor for ContentSizeCategory, &type metadata accessor for Environment);
  if (v0 <= 0x3F)
  {
    sub_10003D47C();
    if (v1 <= 0x3F)
    {
      sub_100056DA0(319, &unk_1000B43B0, type metadata accessor for CGSize, &type metadata accessor for State);
      if (v2 <= 0x3F)
      {
        sub_100024368();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

__n128 sub_100052868@<Q0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_10001B4A4(&qword_1000B43E8, &qword_10007A458);
  v5 = v4 - 8;
  v6 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v8 = v27 - v7;
  sub_100052A10(v2, v27 - v7);
  LOBYTE(v2) = static Edge.Set.vertical.getter();
  EdgeInsets.init(_all:)();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v17 = &v8[*(sub_10001B4A4(&qword_1000B43F0, &qword_10007A460) + 36)];
  *v17 = v2;
  *(v17 + 1) = v10;
  *(v17 + 2) = v12;
  *(v17 + 3) = v14;
  *(v17 + 4) = v16;
  v17[40] = 0;
  LOBYTE(v2) = static Edge.Set.horizontal.getter();
  EdgeInsets.init(_all:)();
  v18 = &v8[*(v5 + 44)];
  *v18 = v2;
  *(v18 + 1) = v19;
  *(v18 + 2) = v20;
  *(v18 + 3) = v21;
  *(v18 + 4) = v22;
  v18[40] = 0;
  static Alignment.leading.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  sub_1000552DC(v8, a1);
  v23 = a1 + *(sub_10001B4A4(&qword_1000B43F8, &qword_10007A468) + 36);
  v24 = v27[5];
  *(v23 + 64) = v27[4];
  *(v23 + 80) = v24;
  *(v23 + 96) = v27[6];
  v25 = v27[1];
  *v23 = v27[0];
  *(v23 + 16) = v25;
  result = v27[3];
  *(v23 + 32) = v27[2];
  *(v23 + 48) = result;
  return result;
}

uint64_t sub_100052A10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v30 = sub_10001B4A4(&qword_1000B4400, &qword_10007A470);
  v3 = *(*(v30 - 8) + 64);
  __chkstk_darwin(v30);
  v5 = &v28 - v4;
  v28 = sub_10001B4A4(&qword_1000B4408, &qword_10007A478);
  v6 = *(*(v28 - 8) + 64);
  __chkstk_darwin(v28);
  v8 = &v28 - v7;
  v29 = sub_10001B4A4(&qword_1000B4410, &qword_10007A480);
  v9 = *(*(v29 - 8) + 64);
  __chkstk_darwin(v29);
  v11 = &v28 - v10;
  v12 = type metadata accessor for ContentSizeCategory();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = __chkstk_darwin(v12);
  v17 = &v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v28 - v18;
  sub_1000561F8(&qword_1000B3D30, &qword_1000797B0, &type metadata accessor for ContentSizeCategory, &v28 - v18);
  (*(v13 + 104))(v17, enum case for ContentSizeCategory.accessibilityMedium(_:), v12);
  v20 = sub_1000563F8(v19, v17);
  v21 = *(v13 + 8);
  v21(v17, v12);
  v21(v19, v12);
  if (v20)
  {
    *v11 = static VerticalAlignment.top.getter();
    *(v11 + 1) = 0x4026000000000000;
    v11[16] = 0;
    v22 = sub_10001B4A4(&qword_1000B4430, &qword_10007A490);
    sub_100052E58(a1, &v11[*(v22 + 44)]);
    v23 = &qword_1000B4410;
    v24 = &qword_10007A480;
    sub_10001F808(v11, v8, &qword_1000B4410, &qword_10007A480);
    swift_storeEnumTagMultiPayload();
    sub_10001E8B8(&qword_1000B4420, &qword_1000B4410, &qword_10007A480);
    sub_10001E8B8(&qword_1000B4428, &qword_1000B4400, &qword_10007A470);
    _ConditionalContent<>.init(storage:)();
    v25 = v11;
  }

  else
  {
    *v5 = static HorizontalAlignment.leading.getter();
    *(v5 + 1) = 0x4018000000000000;
    v5[16] = 0;
    v26 = sub_10001B4A4(&qword_1000B4418, &qword_10007A488);
    sub_100053BE0(a1, &v5[*(v26 + 44)]);
    v23 = &qword_1000B4400;
    v24 = &qword_10007A470;
    sub_10001F808(v5, v8, &qword_1000B4400, &qword_10007A470);
    swift_storeEnumTagMultiPayload();
    sub_10001E8B8(&qword_1000B4420, &qword_1000B4410, &qword_10007A480);
    sub_10001E8B8(&qword_1000B4428, &qword_1000B4400, &qword_10007A470);
    _ConditionalContent<>.init(storage:)();
    v25 = v5;
  }

  return sub_10001F870(v25, v23, v24);
}

uint64_t sub_100052E58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v69 = a2;
  v3 = type metadata accessor for ChecklistItemView(0);
  v4 = v3 - 8;
  v64 = *(v3 - 8);
  v63 = *(v64 + 64);
  __chkstk_darwin(v3);
  v62 = &v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = sub_10001B4A4(&qword_1000B4438, &qword_10007A498);
  v6 = *(*(v67 - 8) + 64);
  __chkstk_darwin(v67);
  v59 = (&v58 - v7);
  v68 = sub_10001B4A4(&qword_1000B4440, &qword_10007A4A0);
  v66 = *(v68 - 8);
  v8 = *(v66 + 64);
  v9 = __chkstk_darwin(v68);
  v65 = &v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v61 = &v58 - v11;
  v12 = sub_10001B4A4(&qword_1000B4448, &qword_10007A4A8);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = &v58 - v14;
  v16 = sub_10001B4A4(&qword_1000B4450, &qword_10007A4B0);
  v17 = v16 - 8;
  v18 = *(*(v16 - 8) + 64);
  v19 = __chkstk_darwin(v16);
  v60 = &v58 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v19);
  v23 = &v58 - v22;
  __chkstk_darwin(v21);
  v70 = &v58 - v24;
  *v15 = static VerticalAlignment.center.getter();
  *(v15 + 1) = 0;
  v15[16] = 1;
  v25 = &v15[*(sub_10001B4A4(&qword_1000B4458, &qword_10007A4B8) + 44)];
  v26 = *(v4 + 28);
  v27 = a1;
  v58 = a1;
  v28 = *(a1 + v26 + 8);
  v29 = *(v27 + *(v4 + 36));
  *v25 = swift_getKeyPath();
  sub_10001B4A4(&qword_1000B4460, &qword_10007A4F0);
  swift_storeEnumTagMultiPayload();
  v30 = type metadata accessor for ChecklistItemIcon(0);
  v31 = (v25 + *(v30 + 20));
  type metadata accessor for ChecklistViewModel();
  sub_100057890(&qword_1000B3B00, type metadata accessor for ChecklistViewModel);
  v32 = v28;
  v33 = v29;
  *v31 = ObservedObject.init(wrappedValue:)();
  v31[1] = v34;
  *(v25 + *(v30 + 24)) = v33;
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  sub_100023628(v15, v23, &qword_1000B4448, &qword_10007A4A8);
  v35 = &v23[*(v17 + 44)];
  v36 = v76;
  *(v35 + 4) = v75;
  *(v35 + 5) = v36;
  *(v35 + 6) = v77;
  v37 = v72;
  *v35 = v71;
  *(v35 + 1) = v37;
  v38 = v74;
  *(v35 + 2) = v73;
  *(v35 + 3) = v38;
  v39 = v23;
  v40 = v70;
  sub_100023628(v39, v70, &qword_1000B4450, &qword_10007A4B0);
  v41 = static HorizontalAlignment.leading.getter();
  v42 = v59;
  *v59 = v41;
  *(v42 + 8) = 0x4000000000000000;
  *(v42 + 16) = 0;
  v43 = sub_10001B4A4(&qword_1000B4468, &unk_10007A4F8);
  v44 = v58;
  sub_1000534F4(v58, (v42 + *(v43 + 44)));
  v45 = v62;
  sub_100056918(v44, v62, type metadata accessor for ChecklistItemView);
  v46 = (*(v64 + 80) + 16) & ~*(v64 + 80);
  v47 = swift_allocObject();
  sub_10005685C(v45, v47 + v46);
  sub_10001E8B8(&qword_1000B4470, &qword_1000B4438, &qword_10007A498);
  v48 = v61;
  View.readSize(onChange:)();

  sub_10001F870(v42, &qword_1000B4438, &qword_10007A498);
  v49 = v60;
  sub_10001F808(v40, v60, &qword_1000B4450, &qword_10007A4B0);
  v50 = v65;
  v51 = v66;
  v52 = *(v66 + 16);
  v53 = v68;
  v52(v65, v48, v68);
  v54 = v69;
  sub_10001F808(v49, v69, &qword_1000B4450, &qword_10007A4B0);
  v55 = sub_10001B4A4(&qword_1000B4478, &qword_10007A508);
  v52((v54 + *(v55 + 48)), v50, v53);
  v56 = *(v51 + 8);
  v56(v48, v53);
  sub_10001F870(v70, &qword_1000B4450, &qword_10007A4B0);
  v56(v50, v53);
  return sub_10001F870(v49, &qword_1000B4450, &qword_10007A4B0);
}

uint64_t sub_1000534F4@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = type metadata accessor for ChecklistItemBody(0);
  v5 = (v4 - 8);
  v6 = *(*(v4 - 8) + 64);
  v7 = __chkstk_darwin(v4);
  v38 = v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = (v35 - v9);
  v11 = sub_10001B4A4(&qword_1000B4488, &qword_10007A518);
  v12 = *(*(v11 - 8) + 64);
  v13 = __chkstk_darwin(v11 - 8);
  v37 = v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = v35 - v15;
  v40 = static VerticalAlignment.firstTextLineCenter.getter();
  v42 = 0;
  sub_1000539C0(a1, &v53);
  v46 = v54[2];
  v47 = v54[3];
  v48[0] = v54[4];
  *(v48 + 13) = *(&v54[4] + 13);
  v43 = v53;
  v44 = v54[0];
  v45 = v54[1];
  v49[0] = v53;
  v49[1] = v54[0];
  v49[2] = v54[1];
  v49[3] = v54[2];
  v49[4] = v54[3];
  v50[0] = v54[4];
  *(v50 + 13) = *(&v54[4] + 13);
  sub_10001F808(&v43, &v51, &qword_1000B4490, &qword_10007A520);
  sub_10001F870(v49, &qword_1000B4490, &qword_10007A520);
  *(&v41[3] + 7) = v46;
  *(&v41[4] + 7) = v47;
  *(&v41[5] + 7) = v48[0];
  *(v41 + 7) = v43;
  *(&v41[1] + 7) = v44;
  *(&v41[6] + 4) = *(v48 + 13);
  *(&v41[2] + 7) = v45;
  v39 = v42;
  v17 = v16;
  v36 = v16;
  sub_1000548CC(a1);
  v18 = type metadata accessor for ChecklistItemView(0);
  v19 = *(a1 + v18[7]);
  v20 = *(a1 + v18[5] + 8);
  v21 = a1 + v18[6];
  v22 = *(v21 + 16);
  v53 = *v21;
  *&v54[0] = v22;
  v35[1] = v20;
  v23 = v19;
  sub_10001B4A4(&qword_1000B4480, &qword_10007A510);
  State.wrappedValue.getter();
  v24 = v51;
  *v10 = swift_getKeyPath();
  sub_10001B4A4(&qword_1000B4460, &qword_10007A4F0);
  swift_storeEnumTagMultiPayload();
  v25 = (v10 + v5[9]);
  v26 = (v10 + v5[7]);
  type metadata accessor for ChecklistViewModel();
  sub_100057890(&qword_1000B3B00, type metadata accessor for ChecklistViewModel);
  *v26 = ObservedObject.init(wrappedValue:)();
  v26[1] = v27;
  *(v10 + v5[8]) = v23;
  *v25 = v24;
  v28 = v37;
  sub_10001F808(v17, v37, &qword_1000B4488, &qword_10007A518);
  v29 = v38;
  sub_100056918(v10, v38, type metadata accessor for ChecklistItemBody);
  *&v51 = v40;
  *(&v51 + 1) = 0x4010000000000000;
  LOBYTE(v52[0]) = v39;
  *(&v52[1] + 1) = v41[1];
  *(v52 + 1) = v41[0];
  *(&v52[5] + 13) = *(&v41[5] + 12);
  *(&v52[5] + 1) = v41[5];
  *(&v52[4] + 1) = v41[4];
  *(&v52[3] + 1) = v41[3];
  *(&v52[2] + 1) = v41[2];
  v30 = v52[2];
  a2[2] = v52[1];
  a2[3] = v30;
  *(a2 + 109) = *(&v52[5] + 13);
  v31 = v52[5];
  a2[5] = v52[4];
  a2[6] = v31;
  a2[4] = v52[3];
  v32 = v52[0];
  *a2 = v51;
  a2[1] = v32;
  v33 = sub_10001B4A4(&qword_1000B4498, &qword_10007A528);
  sub_10001F808(v28, a2 + *(v33 + 48), &qword_1000B4488, &qword_10007A518);
  sub_100056918(v29, a2 + *(v33 + 64), type metadata accessor for ChecklistItemBody);
  sub_10001F808(&v51, &v53, &qword_1000B44A0, &qword_10007A530);
  sub_100056980(v10);
  sub_10001F870(v36, &qword_1000B4488, &qword_10007A518);
  sub_100056980(v29);
  sub_10001F870(v28, &qword_1000B4488, &qword_10007A518);
  *(&v54[3] + 1) = v41[3];
  *(&v54[4] + 1) = v41[4];
  *(&v54[5] + 1) = v41[5];
  *(&v54[5] + 13) = *(&v41[5] + 12);
  *(v54 + 1) = v41[0];
  *(&v54[1] + 1) = v41[1];
  *&v53 = v40;
  *(&v53 + 1) = 0x4010000000000000;
  LOBYTE(v54[0]) = v39;
  *(&v54[2] + 1) = v41[2];
  return sub_10001F870(&v53, &qword_1000B44A0, &qword_10007A530);
}

uint64_t sub_1000539C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for ChecklistItemView(0);
  v5 = [*(a1 + *(v4 + 20) + 8) titleFor:*(a1 + *(v4 + 28))];
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;

  *&v35[0] = v6;
  *(&v35[0] + 1) = v8;
  sub_1000235B4();
  v9 = Text.init<A>(_:)();
  v11 = v10;
  v13 = v12;
  static Font.headline.getter();
  v14 = Text.font(_:)();
  v16 = v15;
  v26 = v17;
  v19 = v18;

  sub_100023608(v9, v11, v13 & 1);

  sub_10005504C(a1, &v30);
  v20 = v30;
  v33[0] = v30;
  v21 = v31;
  v33[1] = v31;
  v22 = v32[0];
  v34[0] = v32[0];
  *&v28[6] = v30;
  *(v34 + 13) = *(v32 + 13);
  *&v28[22] = v31;
  *&v28[38] = v32[0];
  *&v28[51] = *(v32 + 13);
  v23 = *v28;
  *(a2 + 50) = *&v28[16];
  v24 = *&v28[48];
  *(a2 + 66) = *&v28[32];
  *(a2 + 82) = v24;
  v29 = v26 & 1;
  *a2 = v14;
  *(a2 + 8) = v16;
  *(a2 + 16) = v26 & 1;
  *(a2 + 24) = v19;
  *(a2 + 32) = 256;
  *(a2 + 97) = *&v28[63];
  *(a2 + 34) = v23;
  v35[0] = v20;
  v35[1] = v21;
  *v36 = v22;
  *&v36[13] = *(v32 + 13);
  sub_100056AA4(v14, v16, v26 & 1);

  sub_10001F808(v33, v27, &qword_1000B44F8, qword_10007A5E8);
  sub_10001F870(v35, &qword_1000B44F8, qword_10007A5E8);
  sub_100023608(v14, v16, v26 & 1);
}