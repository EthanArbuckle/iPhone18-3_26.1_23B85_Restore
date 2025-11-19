__n128 sub_100024B38(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_100024B54(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_100024B9C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100024C1C@<X0>(uint64_t a1@<X8>)
{
  v19 = a1;
  v2 = type metadata accessor for AccessibilityChildBehavior();
  v17 = *(v2 - 8);
  v18 = v2;
  __chkstk_darwin(v2);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100009F70(&qword_100219730);
  __chkstk_darwin(v5);
  v7 = &v16 - v6;
  v8 = sub_100009F70(&qword_100219738);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v16 - v10;
  if (*(v1 + 32) == 1)
  {
    v12 = static VerticalAlignment.top.getter();
  }

  else
  {
    v12 = static VerticalAlignment.center.getter();
  }

  *v7 = v12;
  *(v7 + 1) = 0x4030000000000000;
  v7[16] = 0;
  v13 = sub_100009F70(&qword_100219740);
  sub_100024EE8(v1, &v7[*(v13 + 44)]);
  static AccessibilityChildBehavior.combine.getter();
  v14 = sub_10000D1EC(&qword_100219748, &qword_100219730);
  View.accessibilityElement(children:)();
  (*(v17 + 8))(v4, v18);
  sub_10000D52C(v7, &qword_100219730);
  v20 = v5;
  v21 = v14;
  swift_getOpaqueTypeConformance2();
  View.accessibilityIdentifier(_:)();
  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_100024EE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a2;
  v3 = sub_100009F70(&qword_100219750);
  __chkstk_darwin(v3 - 8);
  v5 = &v34 - v4;
  v6 = sub_100009F70(&qword_100219758);
  v7 = v6 - 8;
  v8 = __chkstk_darwin(v6);
  v34 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v12 = &v34 - v11;
  __chkstk_darwin(v10);
  v14 = &v34 - v13;
  v15 = sub_100009F70(&qword_100219760);
  v16 = v15 - 8;
  v17 = __chkstk_darwin(v15);
  v19 = &v34 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = &v34 - v20;
  sub_10000D58C(a1 + 40, &v34 - v20, &qword_100219768);
  v22 = type metadata accessor for ArtistImage();
  v23 = *(v22 + 20);
  *&v21[v23] = swift_getKeyPath();
  sub_100009F70(&qword_100219718);
  swift_storeEnumTagMultiPayload();
  v24 = &v21[*(v22 + 24)];
  *v24 = swift_getKeyPath();
  v24[8] = 0;
  v21[*(v16 + 44)] = 1;
  *v5 = static HorizontalAlignment.leading.getter();
  *(v5 + 1) = 0x4020000000000000;
  v5[16] = 0;
  v25 = sub_100009F70(&qword_100219770);
  sub_1000252B8(a1, &v5[*(v25 + 44)]);
  static Alignment.leading.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  sub_10000F618(v5, v12, &qword_100219750);
  v26 = &v12[*(v7 + 44)];
  v27 = v41;
  *(v26 + 4) = v40;
  *(v26 + 5) = v27;
  *(v26 + 6) = v42;
  v28 = v37;
  *v26 = v36;
  *(v26 + 1) = v28;
  v29 = v39;
  *(v26 + 2) = v38;
  *(v26 + 3) = v29;
  sub_10000F618(v12, v14, &qword_100219758);
  sub_10000D58C(v21, v19, &qword_100219760);
  v30 = v34;
  sub_10000D58C(v14, v34, &qword_100219758);
  v31 = v35;
  sub_10000D58C(v19, v35, &qword_100219760);
  v32 = sub_100009F70(&qword_100219778);
  sub_10000D58C(v30, v31 + *(v32 + 48), &qword_100219758);
  sub_10000D52C(v14, &qword_100219758);
  sub_10000D52C(v21, &qword_100219760);
  sub_10000D52C(v30, &qword_100219758);
  return sub_10000D52C(v19, &qword_100219760);
}

uint64_t sub_1000252B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100009F70(&qword_100219780);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v37 - v6;
  v8 = sub_100009F70(&qword_100219788);
  v9 = __chkstk_darwin(v8 - 8);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v37 - v12;
  v14 = sub_100009F70(&qword_100219790);
  v15 = __chkstk_darwin(v14 - 8);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v37 - v18;
  *v19 = static HorizontalAlignment.leading.getter();
  *(v19 + 1) = 0x4000000000000000;
  v19[16] = 0;
  v20 = sub_100009F70(&qword_100219798);
  sub_1000256E4(a1, &v19[*(v20 + 44)]);
  if (*(a1 + 32) == 1)
  {
    v21 = LocalizedStringKey.init(stringLiteral:)();
    v39 = a2;
    v23 = v22;
    v25 = v24;
    v38 = v4;
    v27 = v26;
    v28 = static Edge.Set.bottom.getter();
    v37 = v7;
    v29 = v28;
    EdgeInsets.init(_all:)();
    v44 = 0;
    *&v40 = v21;
    *(&v40 + 1) = v23;
    LOBYTE(v41) = v25 & 1;
    *(&v41 + 1) = v27;
    LOBYTE(v42) = v29;
    *(&v42 + 1) = v30;
    *v43 = v31;
    *&v43[8] = v32;
    *&v43[16] = v33;
    v43[24] = 0;
    sub_100009F70(&qword_1002197A8);
    sub_100026F88();
    v34 = v37;
    a2 = v39;
    View.accessibilityIdentifier(_:)();
    v46[0] = *v43;
    *(v46 + 9) = *&v43[9];
    v45[1] = v41;
    v45[2] = v42;
    v45[0] = v40;
    sub_10000D52C(v45, &qword_1002197A8);
    sub_10000F618(v34, v13, &qword_100219780);
    (*(v5 + 56))(v13, 0, 1, v38);
  }

  else
  {
    (*(v5 + 56))(v13, 1, 1, v4);
  }

  sub_10000D58C(v19, v17, &qword_100219790);
  sub_10000D58C(v13, v11, &qword_100219788);
  sub_10000D58C(v17, a2, &qword_100219790);
  v35 = sub_100009F70(&qword_1002197A0);
  sub_10000D58C(v11, a2 + *(v35 + 48), &qword_100219788);
  sub_10000D52C(v13, &qword_100219788);
  sub_10000D52C(v19, &qword_100219790);
  sub_10000D52C(v11, &qword_100219788);
  return sub_10000D52C(v17, &qword_100219790);
}

uint64_t sub_1000256E4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  v3 = sub_100009F70(&qword_1002197C0);
  v4 = __chkstk_darwin(v3 - 8);
  v32 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v7 = &v31 - v6;
  v8 = sub_100009F70(&qword_1002197C8);
  __chkstk_darwin(v8);
  v10 = &v31 - v9;
  v11 = sub_100009F70(&qword_1002197D0);
  v12 = __chkstk_darwin(v11 - 8);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v31 - v15;
  *v10 = static VerticalAlignment.center.getter();
  *(v10 + 8) = 0x4010000000000000;
  *(v10 + 16) = 0;
  v17 = sub_100009F70(&qword_1002197D8);
  sub_100025AA8(a1, (v10 + *(v17 + 44)));
  sub_10000D1EC(&qword_1002197E0, &qword_1002197C8);
  View.accessibilityIdentifier(_:)();
  sub_10000D52C(v10, &qword_1002197C8);
  v18 = *a1;
  v19 = a1[1];
  v34 = v18;
  v35 = v19;
  sub_100027068();

  v20 = Text.init<A>(_:)();
  v22 = v21;
  LOBYTE(v10) = v23;
  v25 = v24;
  KeyPath = swift_getKeyPath();
  v34 = v20;
  v35 = v22;
  v36 = v10 & 1;
  v37 = v25;
  v38 = KeyPath;
  v39 = 1;
  v40 = 0;
  sub_100009F70(&qword_1002197F0);
  sub_10002764C();
  View.accessibilityIdentifier(_:)();
  sub_10000D60C(v20, v22, v10 & 1);

  sub_10000D58C(v16, v14, &qword_1002197D0);
  v27 = v32;
  sub_10000D58C(v7, v32, &qword_1002197C0);
  v28 = v33;
  sub_10000D58C(v14, v33, &qword_1002197D0);
  v29 = sub_100009F70(&qword_100219810);
  sub_10000D58C(v27, v28 + *(v29 + 48), &qword_1002197C0);
  sub_10000D52C(v7, &qword_1002197C0);
  sub_10000D52C(v16, &qword_1002197D0);
  sub_10000D52C(v27, &qword_1002197C0);
  return sub_10000D52C(v14, &qword_1002197D0);
}

uint64_t sub_100025AA8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_100009F70(&qword_100219818);
  v5 = v4 - 8;
  v6 = __chkstk_darwin(v4);
  v45 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v9 = &v37 - v8;
  v44 = Image.init(systemName:)();
  static Font.caption2.getter();
  static Font.Weight.semibold.getter();
  v43 = Font.weight(_:)();

  KeyPath = swift_getKeyPath();
  v40 = objc_opt_self();
  v10 = [v40 secondaryLabelColor];
  v41 = Color.init(uiColor:)();
  v11 = *(a1 + 16);
  v12 = *(a1 + 24);
  v46 = v11;
  v47 = v12;
  sub_100027068();

  v13 = Text.init<A>(_:)();
  v15 = v14;
  v17 = v16;
  static Font.caption2.getter();
  static Font.Weight.semibold.getter();
  Font.weight(_:)();

  v18 = Text.font(_:)();
  v38 = v19;
  v39 = v20;
  v22 = v21;

  sub_10000D60C(v13, v15, v17 & 1);

  v23 = &v9[*(sub_100009F70(&qword_100219820) + 36)];
  v24 = *(sub_100009F70(&qword_100219828) + 28);
  v25 = enum case for Text.Case.uppercase(_:);
  v26 = type metadata accessor for Text.Case();
  v27 = *(v26 - 8);
  (*(v27 + 104))(v23 + v24, v25, v26);
  (*(v27 + 56))(v23 + v24, 0, 1, v26);
  *v23 = swift_getKeyPath();
  v28 = v38;
  *v9 = v18;
  *(v9 + 1) = v28;
  v9[16] = v22 & 1;
  v29 = v40;
  *(v9 + 3) = v39;
  v30 = [v29 secondaryLabelColor];
  *&v9[*(v5 + 44)] = Color.init(uiColor:)();
  v31 = v45;
  sub_10000D58C(v9, v45, &qword_100219818);
  v32 = v43;
  v34 = v41;
  v33 = KeyPath;
  *a2 = v44;
  a2[1] = v33;
  a2[2] = v32;
  a2[3] = v34;
  v35 = sub_100009F70(&qword_100219830);
  sub_10000D58C(v31, a2 + *(v35 + 48), &qword_100219818);

  sub_10000D52C(v9, &qword_100219818);
  sub_10000D52C(v31, &qword_100219818);
}

uint64_t type metadata accessor for ArtistImage()
{
  result = qword_100219898;
  if (!qword_100219898)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100025E94@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for EnvironmentValues();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000D58C(v1, v23, &qword_100219768);
  v7 = v24;
  if (!v24)
  {
    sub_10000D52C(v23, &qword_100219768);
    v19 = type metadata accessor for URL();
    return (*(*(v19 - 8) + 56))(a1, 1, 1, v19);
  }

  v8 = v25;
  v21 = sub_100028124(v23, v24);
  result = type metadata accessor for ArtistImage();
  v10 = v1 + *(result + 24);
  v11 = *v10;
  v12 = *(v10 + 8);
  if (v12 == 1)
  {
    v13 = *v10;
  }

  else
  {

    static os_log_type_t.fault.getter();
    v14 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_100027EB0(v11, 0);
    result = (*(v4 + 8))(v6, v3);
    v13 = v22;
  }

  v15 = v13 * 56.0;
  if (COERCE__INT64(fabs(v13 * 56.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_17;
  }

  if (v15 <= -9.22337204e18)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v15 >= 9.22337204e18)
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (v12)
  {
    v16 = *&v11;
  }

  else
  {

    static os_log_type_t.fault.getter();
    v17 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_100027EB0(v11, 0);
    result = (*(v4 + 8))(v6, v3);
    v16 = v22;
  }

  v18 = v16 * 56.0;
  if ((*&v18 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_19;
  }

  if (v18 <= -9.22337204e18)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (v18 < 9.22337204e18)
  {
    (*(v8 + 32))(v15, v18, v7, v8);
    v20 = type metadata accessor for URL();
    (*(*(v20 - 8) + 56))(a1, 0, 1, v20);
    return sub_100021498(v23);
  }

LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_10002626C@<X0>(uint64_t a1@<X8>)
{
  v33 = a1;
  v2 = type metadata accessor for ArtistImage();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2 - 8);
  v5 = sub_100009F70(qword_100218748);
  __chkstk_darwin(v5 - 8);
  v7 = &v34[-v6 - 8];
  v8 = sub_100009F70(&qword_100219950);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v34[-v10 - 8];
  sub_100025E94(v7);
  static Animation.easeInOut.getter();
  Transaction.init(animation:)();
  sub_100027D08(v1, &v34[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0) - 8]);
  v12 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v13 = swift_allocObject();
  sub_100027EBC(&v34[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0) - 8], v13 + v12);
  sub_100009F70(&qword_100219958);
  sub_100027FA0();
  AsyncImage.init(url:scale:transaction:content:)();
  sub_10000D1EC(&qword_100219998, &qword_100219950);
  v14 = v33;
  View.accessibilityIdentifier(_:)();
  (*(v9 + 8))(v11, v8);
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v15 = (v14 + *(sub_100009F70(&qword_1002199A0) + 36));
  v16 = v35;
  *v15 = *&v34[88];
  v15[1] = v16;
  v15[2] = v36;
  v17 = static HierarchicalShapeStyle.primary.getter();
  StrokeStyle.init(lineWidth:lineCap:lineJoin:miterLimit:dash:dashPhase:)();
  v18 = v37;
  LODWORD(v9) = v38;
  LODWORD(v7) = v39;
  v19 = v40;
  v20 = v41;
  v21 = v42;
  v22 = static Alignment.center.getter();
  v24 = v23;
  v25 = static Alignment.center.getter();
  v27 = v26;
  *&v43 = v18;
  *(&v43 + 1) = __PAIR64__(v7, v9);
  *&v44 = v19;
  *(&v44 + 1) = v20;
  *&v45 = v21;
  *(&v45 + 1) = v17 | 0x3DCCCCCD00000000;
  LOWORD(v46) = 256;
  *(&v46 + 1) = v22;
  *&v47 = v24;
  *(&v47 + 1) = v25;
  v48 = v26;
  v28 = sub_100009F70(&qword_1002199A8);
  v29 = v33 + *(v28 + 36);
  v30 = v46;
  *(v29 + 32) = v45;
  *(v29 + 48) = v30;
  *(v29 + 64) = v47;
  *(v29 + 80) = v48;
  v31 = v44;
  *v29 = v43;
  *(v29 + 16) = v31;
  v49 = v18;
  v50 = v9;
  v51 = v7;
  v52 = v19;
  v53 = v20;
  v54 = v21;
  v55 = v17;
  v56 = 1036831949;
  v57 = 256;
  v58 = v22;
  v59 = v24;
  v60 = v25;
  v61 = v27;
  sub_10000D58C(&v43, v34, &qword_1002199B0);
  return sub_10000D52C(&v49, &qword_1002199B0);
}

double sub_10002669C@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = type metadata accessor for Image.ResizingMode();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for AsyncImagePhase();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v11, a1, v8);
  if ((*(v9 + 88))(v11, v8) == enum case for AsyncImagePhase.success(_:))
  {
    (*(v9 + 96))(v11, v8);
    (*(v5 + 104))(v7, enum case for Image.ResizingMode.stretch(_:), v4);
    v12 = Image.resizable(capInsets:resizingMode:)();
    (*(v5 + 8))(v7, v4);
    *&v38 = v12;
    WORD4(v38) = 256;
    sub_10002811C(&v38);
    v49 = v42;
    v50 = v43;
    v51[0] = v44[0];
    *(v51 + 9) = *(v44 + 9);
    v45 = v38;
    v46 = v39;
    v47 = v40;
    v48 = v41;
    swift_retain_n();
    sub_100009F70(&qword_100219970);
    sub_100009F70(&qword_100219990);
    sub_100028058();
    sub_10000D1EC(&qword_100219988, &qword_100219990);
    _ConditionalContent<>.init(storage:)();

    v49 = v35;
    v50 = v36;
    v51[0] = v37[0];
    *(v51 + 9) = *(v37 + 9);
    v45 = v31;
    v46 = v32;
    v13 = v33;
    v14 = v34;
  }

  else
  {
    v15 = static Alignment.center.getter();
    v17 = v16;
    sub_100026B8C(&v45);
    v26 = v49;
    v27 = v50;
    v28 = *&v51[0];
    v22 = v45;
    v23 = v46;
    v24 = v47;
    v25 = v48;
    v29[0] = v45;
    v29[1] = v46;
    v29[2] = v47;
    v29[3] = v48;
    v29[4] = v49;
    v29[5] = v50;
    v30 = *&v51[0];
    sub_10000D58C(&v22, &v38, &qword_1002199B8);
    sub_10000D52C(v29, &qword_1002199B8);
    v36 = v26;
    v37[0] = v27;
    *&v37[1] = v28;
    v32 = v22;
    v33 = v23;
    v34 = v24;
    v35 = v25;
    *&v31 = v15;
    *(&v31 + 1) = v17;
    sub_100028110(&v31);
    v49 = v35;
    v50 = v36;
    v51[0] = v37[0];
    *(v51 + 9) = *(v37 + 9);
    v45 = v31;
    v46 = v32;
    v47 = v33;
    v48 = v34;
    sub_100009F70(&qword_100219970);
    sub_100009F70(&qword_100219990);
    sub_100028058();
    sub_10000D1EC(&qword_100219988, &qword_100219990);
    _ConditionalContent<>.init(storage:)();
    (*(v9 + 8))(v11, v8);
    v49 = v42;
    v50 = v43;
    v51[0] = v44[0];
    *(v51 + 9) = *(v44 + 9);
    v45 = v38;
    v46 = v39;
    v13 = v40;
    v14 = v41;
  }

  v47 = v13;
  v48 = v14;
  v18 = v50;
  a2[4] = v49;
  a2[5] = v18;
  a2[6] = v51[0];
  *(a2 + 105) = *(v51 + 9);
  v19 = v46;
  *a2 = v45;
  a2[1] = v19;
  result = *&v47;
  v21 = v48;
  a2[2] = v47;
  a2[3] = v21;
  return result;
}

double sub_100026B8C@<D0>(uint64_t a1@<X8>)
{
  v33 = type metadata accessor for Image.ResizingMode();
  v2 = *(v33 - 8);
  __chkstk_darwin(v33);
  v4 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ColorScheme();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v31 - v10;
  sub_100009F70(&qword_1002199C0);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1001ACB00;
  type metadata accessor for ArtistImage();
  sub_100024640(v11);
  (*(v6 + 104))(v9, enum case for ColorScheme.light(_:), v5);
  v13 = static ColorScheme.== infix(_:_:)();
  v14 = *(v6 + 8);
  v14(v9, v5);
  v14(v11, v5);
  v15 = objc_opt_self();
  v16 = &selRef_systemGray6Color;
  if ((v13 & 1) == 0)
  {
    v16 = &selRef_systemGray4Color;
  }

  v17 = [v15 *v16];
  *(v12 + 32) = Color.init(uiColor:)();
  v18 = objc_opt_self();
  v19 = [v18 systemGray5Color];
  *(v12 + 40) = Color.init(uiColor:)();
  static UnitPoint.top.getter();
  static UnitPoint.bottom.getter();
  Gradient.init(colors:)();
  LinearGradient.init(gradient:startPoint:endPoint:)();
  v20 = v34;
  Image.init(systemName:)();
  v21 = *(v2 + 104);
  v32 = v35;
  v31 = v36;
  v22 = v33;
  v21(v4, enum case for Image.ResizingMode.stretch(_:), v33);
  v23 = Image.resizable(capInsets:resizingMode:)();

  (*(v2 + 8))(v4, v22);
  v24 = [v18 tertiaryLabelColor];
  v25 = Color.init(uiColor:)();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v26 = v37;
  v27 = v38;
  v28 = v39;
  v29 = v40;
  *a1 = v20;
  *(a1 + 24) = v31;
  *(a1 + 8) = v32;
  *(a1 + 40) = v23;
  *(a1 + 48) = v25;
  *(a1 + 56) = v26;
  *(a1 + 64) = v27;
  *(a1 + 72) = v28;
  *(a1 + 80) = v29;
  result = v41[0];
  *(a1 + 88) = *v41;
  return result;
}

unint64_t sub_100026F88()
{
  result = qword_1002197B0;
  if (!qword_1002197B0)
  {
    sub_10000B3DC(&qword_1002197A8);
    sub_100027014();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002197B0);
  }

  return result;
}

unint64_t sub_100027014()
{
  result = qword_1002197B8;
  if (!qword_1002197B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002197B8);
  }

  return result;
}

unint64_t sub_100027068()
{
  result = qword_1002197E8;
  if (!qword_1002197E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002197E8);
  }

  return result;
}

uint64_t sub_1000270C0@<X0>(uint64_t a1@<X8>)
{
  *a1 = static VerticalAlignment.center.getter();
  *(a1 + 8) = 0x4008000000000000;
  *(a1 + 16) = 0;
  v2 = sub_100009F70(&qword_100219908);
  sub_1000272D4(a1 + *(v2 + 44));
  v3 = static Edge.Set.vertical.getter();
  EdgeInsets.init(_all:)();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = a1 + *(sub_100009F70(&qword_100219910) + 36);
  *v12 = v3;
  *(v12 + 8) = v5;
  *(v12 + 16) = v7;
  *(v12 + 24) = v9;
  *(v12 + 32) = v11;
  *(v12 + 40) = 0;
  v13 = static Edge.Set.horizontal.getter();
  EdgeInsets.init(_all:)();
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v22 = a1 + *(sub_100009F70(&qword_100219918) + 36);
  *v22 = v13;
  *(v22 + 8) = v15;
  *(v22 + 16) = v17;
  *(v22 + 24) = v19;
  *(v22 + 32) = v21;
  *(v22 + 40) = 0;
  v23 = [objc_opt_self() secondarySystemBackgroundColor];
  v24 = Color.init(_:)();
  v25 = static Edge.Set.all.getter();
  v26 = a1 + *(sub_100009F70(&qword_100219920) + 36);
  *v26 = v24;
  *(v26 + 8) = v25;
  v27 = (a1 + *(sub_100009F70(&qword_100219928) + 36));
  v28 = *(type metadata accessor for RoundedRectangle() + 20);
  v29 = enum case for RoundedCornerStyle.continuous(_:);
  v30 = type metadata accessor for RoundedCornerStyle();
  (*(*(v30 - 8) + 104))(&v27[v28], v29, v30);
  __asm { FMOV            V0.2D, #6.0 }

  *v27 = _Q0;
  result = sub_100009F70(&qword_100218928);
  *&v27[*(result + 36)] = 256;
  return result;
}

uint64_t sub_1000272D4@<X0>(uint64_t a1@<X8>)
{
  v30 = a1;
  v1 = sub_100009F70(&qword_100219930);
  v2 = __chkstk_darwin(v1 - 8);
  v29 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v28 = &v28 - v4;
  v5 = Image.init(_:bundle:)();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v31 = v5;
  v32 = v37;
  v33 = v38;
  v34 = v39;
  v35 = v40;
  v36 = v41;
  sub_100009F70(&qword_100219938);
  sub_100027C84();
  View.accessibilityHidden(_:)();

  v6 = Text.init(_:tableName:bundle:comment:)();
  v8 = v7;
  v10 = v9;
  static Font.caption2.getter();
  static Font.Weight.semibold.getter();
  Font.weight(_:)();

  v11 = Text.font(_:)();
  v13 = v12;
  v15 = v14;

  sub_10000D60C(v6, v8, v10 & 1);

  v31 = static Color.blue.getter();
  v16 = Text.foregroundStyle<A>(_:)();
  v18 = v17;
  v20 = v19;
  v22 = v21;
  sub_10000D60C(v11, v13, v15 & 1);

  v24 = v28;
  v23 = v29;
  sub_10000D58C(v28, v29, &qword_100219930);
  v25 = v30;
  sub_10000D58C(v23, v30, &qword_100219930);
  v26 = v25 + *(sub_100009F70(&qword_100219948) + 48);
  *v26 = v16;
  *(v26 + 8) = v18;
  *(v26 + 16) = v20 & 1;
  *(v26 + 24) = v22;
  sub_10000D5FC(v16, v18, v20 & 1);

  sub_10000D52C(v24, &qword_100219930);
  sub_10000D60C(v16, v18, v20 & 1);

  return sub_10000D52C(v23, &qword_100219930);
}

unint64_t sub_10002764C()
{
  result = qword_1002197F8;
  if (!qword_1002197F8)
  {
    sub_10000B3DC(&qword_1002197F0);
    sub_10000D1EC(&qword_100219800, &qword_100219808);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002197F8);
  }

  return result;
}

uint64_t sub_100027714(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_10002775C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1000277C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = sub_100009F70(&qword_100219838);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 20);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_10002789C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 24) = a2;
  }

  else
  {
    v7 = sub_100009F70(&qword_100219838);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_10002794C()
{
  sub_1000279E8();
  if (v0 <= 0x3F)
  {
    sub_100027A4C();
    if (v1 <= 0x3F)
    {
      sub_100027AA4();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1000279E8()
{
  if (!qword_1002198A8)
  {
    sub_10000B3DC(&qword_1002198B0);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1002198A8);
    }
  }
}

void sub_100027A4C()
{
  if (!qword_1002198B8)
  {
    type metadata accessor for ColorScheme();
    v0 = type metadata accessor for Environment();
    if (!v1)
    {
      atomic_store(v0, &qword_1002198B8);
    }
  }
}

void sub_100027AA4()
{
  if (!qword_1002198C0)
  {
    v0 = type metadata accessor for Environment();
    if (!v1)
    {
      atomic_store(v0, &qword_1002198C0);
    }
  }
}

unint64_t sub_100027AF8()
{
  result = qword_1002198F8;
  if (!qword_1002198F8)
  {
    sub_10000B3DC(&qword_100219900);
    sub_10000B3DC(&qword_100219730);
    sub_10000D1EC(&qword_100219748, &qword_100219730);
    swift_getOpaqueTypeConformance2();
    sub_100027BF4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002198F8);
  }

  return result;
}

unint64_t sub_100027BF4()
{
  result = qword_100218698;
  if (!qword_100218698)
  {
    type metadata accessor for AccessibilityAttachmentModifier();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100218698);
  }

  return result;
}

unint64_t sub_100027C84()
{
  result = qword_100219940;
  if (!qword_100219940)
  {
    sub_10000B3DC(&qword_100219938);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100219940);
  }

  return result;
}

uint64_t sub_100027D08(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ArtistImage();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100027D6C()
{
  v1 = type metadata accessor for ArtistImage();
  v2 = (*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80);
  v3 = v0 + v2;
  if (*(v0 + v2 + 24))
  {
    sub_100021498(v0 + v2);
  }

  v4 = *(v1 + 20);
  sub_100009F70(&qword_100219718);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = type metadata accessor for ColorScheme();
    (*(*(v5 - 8) + 8))(v3 + v4, v5);
  }

  else
  {
  }

  sub_100027EB0(*(v3 + *(v1 + 24)), *(v3 + *(v1 + 24) + 8));

  return swift_deallocObject();
}

uint64_t sub_100027EB0(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_100027EBC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ArtistImage();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

double sub_100027F20@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  type metadata accessor for ArtistImage();

  return sub_10002669C(a1, a2);
}

unint64_t sub_100027FA0()
{
  result = qword_100219960;
  if (!qword_100219960)
  {
    sub_10000B3DC(&qword_100219958);
    sub_100028058();
    sub_10000D1EC(&qword_100219988, &qword_100219990);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100219960);
  }

  return result;
}

unint64_t sub_100028058()
{
  result = qword_100219968;
  if (!qword_100219968)
  {
    sub_10000B3DC(&qword_100219970);
    sub_10000D1EC(&qword_100219978, &qword_100219980);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100219968);
  }

  return result;
}

void *sub_100028124(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_10002816C()
{
  result = qword_1002199C8;
  if (!qword_1002199C8)
  {
    sub_10000B3DC(&qword_100219928);
    sub_100028224();
    sub_10000D1EC(&qword_100218920, &qword_100218928);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002199C8);
  }

  return result;
}

unint64_t sub_100028224()
{
  result = qword_1002199D0;
  if (!qword_1002199D0)
  {
    sub_10000B3DC(&qword_100219920);
    sub_1000282DC();
    sub_10000D1EC(&qword_1002188F0, &qword_1002188F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002199D0);
  }

  return result;
}

unint64_t sub_1000282DC()
{
  result = qword_1002199D8;
  if (!qword_1002199D8)
  {
    sub_10000B3DC(&qword_100219918);
    sub_100028368();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002199D8);
  }

  return result;
}

unint64_t sub_100028368()
{
  result = qword_1002199E0;
  if (!qword_1002199E0)
  {
    sub_10000B3DC(&qword_100219910);
    sub_10000D1EC(&qword_1002199E8, &qword_1002199F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002199E0);
  }

  return result;
}

unint64_t sub_100028424()
{
  result = qword_1002199F8;
  if (!qword_1002199F8)
  {
    sub_10000B3DC(&qword_1002199A8);
    sub_1000284DC();
    sub_10000D1EC(&qword_100219A18, &qword_1002199B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002199F8);
  }

  return result;
}

unint64_t sub_1000284DC()
{
  result = qword_100219A00;
  if (!qword_100219A00)
  {
    sub_10000B3DC(&qword_1002199A0);
    sub_100028568();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100219A00);
  }

  return result;
}

unint64_t sub_100028568()
{
  result = qword_100219A08;
  if (!qword_100219A08)
  {
    sub_10000B3DC(&qword_100219A10);
    sub_10000D1EC(&qword_100219998, &qword_100219950);
    sub_100027BF4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100219A08);
  }

  return result;
}

uint64_t sub_100028668@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DesignTimeImage();
  __chkstk_darwin(v6);
  v8 = (v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_100009F70(qword_100218748);
  v10 = __chkstk_darwin(v9 - 8);
  v12 = v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = v30 - v13;
  URL.init(string:)();
  v15 = type metadata accessor for URL();
  v32 = *(v15 - 8);
  v33 = v14;
  v16 = *(v32 + 48);
  v34 = v15;
  result = v16(v14, 1);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v31 = a1;
    URL.init(string:)();
    result = (v16)(v12, 1, v34);
    if (result != 1)
    {
      UUID.init()();
      UUID.uuidString.getter();
      v18 = *(v3 + 8);
      v30[1] = v3 + 8;
      v18(v5, v2);
      *v8 = ResourceID.init(_:)();
      v8[1] = v19;
      v21 = v6[6];
      v20 = v6[7];
      v22 = v6[5];
      v23 = v8;
      v32 = *(v32 + 32);
      v24 = v8 + v22;
      v25 = v34;
      (v32)(v24, v12, v34);
      *(v23 + v21) = 0;
      *(v23 + v20) = 0;
      UUID.init()();
      UUID.uuidString.getter();
      v18(v5, v2);
      v26 = ResourceID.init(_:)();
      v27 = v31;
      *v31 = v26;
      v27[1] = v28;
      v27[2] = 0x656C746954;
      v27[3] = 0xE500000000000000;
      v29 = type metadata accessor for DesignTimeVideo();
      (v32)(v27 + *(v29 + 24), v33, v25);
      return sub_100028E88(v23, v27 + *(v29 + 28));
    }
  }

  __break(1u);
  return result;
}

void sub_1000289B8()
{
  String.hash(into:)();
  String.hash(into:)();
  v1 = type metadata accessor for DesignTimeVideo();
  type metadata accessor for URL();
  sub_100028EEC(&qword_1002191D8, &type metadata accessor for URL);
  dispatch thunk of Hashable.hash(into:)();
  v2 = v0 + *(v1 + 28);
  String.hash(into:)();
  v3 = type metadata accessor for DesignTimeImage();
  dispatch thunk of Hashable.hash(into:)();
  if (*(v2 + *(v3 + 24)))
  {
    Hasher._combine(_:)(1u);
    type metadata accessor for CGColor(0);
    sub_100028EEC(&qword_1002194F8, type metadata accessor for CGColor);
    _CFObject.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  Hasher._combine(_:)(*(v2 + *(v3 + 28)));
}

uint64_t sub_100028B34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 24);
  v5 = type metadata accessor for URL();
  return (*(*(v5 - 8) + 16))(a2, v2 + v4, v5);
}

uint64_t sub_100028BA4()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_100028BD4(uint64_t a1)
{
  *(a1 + 8) = sub_100028EEC(&qword_100219A70, type metadata accessor for DesignTimeVideo);
  result = sub_100028EEC(&qword_100219A78, type metadata accessor for DesignTimeVideo);
  *(a1 + 16) = result;
  return result;
}

uint64_t type metadata accessor for DesignTimeVideo()
{
  result = qword_100219AE8;
  if (!qword_100219AE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_100028CA8()
{
  result = qword_100219A80;
  if (!qword_100219A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100219A80);
  }

  return result;
}

uint64_t sub_100028CFC@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

Swift::Int sub_100028D50()
{
  Hasher.init(_seed:)();
  sub_1000289B8();
  return Hasher._finalize()();
}

Swift::Int sub_100028D94()
{
  Hasher.init(_seed:)();
  sub_1000289B8();
  return Hasher._finalize()();
}

uint64_t sub_100028DD0(void *a1, void *a2, uint64_t a3)
{
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (!v6 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v7 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v7 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (static URL.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v8 = *(a3 + 28);

  return sub_100022244((a1 + v8), (a2 + v8));
}

uint64_t sub_100028E88(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DesignTimeImage();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100028EEC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100028F48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for URL();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 24);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for DesignTimeImage();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 28);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_100029080(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for URL();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for DesignTimeImage();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1000291A4()
{
  result = type metadata accessor for URL();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for DesignTimeImage();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_100029240()
{
  static Font.body.getter();
  static Font.Weight.regular.getter();
  v0 = Font.weight(_:)();

  return v0;
}

uint64_t sub_100029280@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v53 = a2;
  v52 = type metadata accessor for AccessibilityChildBehavior();
  v51 = *(v52 - 8);
  __chkstk_darwin(v52);
  v50 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for AccessibilityTraits();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_100009F70(&qword_100219BA8);
  __chkstk_darwin(v45);
  v10 = &v43 - v9;
  v11 = sub_100009F70(&qword_100219BB0);
  __chkstk_darwin(v11 - 8);
  v43 = &v43 - v12;
  v13 = sub_100009F70(&qword_100219BB8);
  v14 = v13 - 8;
  __chkstk_darwin(v13);
  v44 = &v43 - v15;
  v47 = sub_100009F70(&qword_100219BC0);
  __chkstk_darwin(v47);
  v17 = &v43 - v16;
  v48 = sub_100009F70(&qword_100219BC8);
  v49 = *(v48 - 8);
  __chkstk_darwin(v48);
  v46 = &v43 - v18;
  *v10 = static HorizontalAlignment.center.getter();
  *(v10 + 1) = 0;
  v10[16] = 0;
  v19 = sub_100009F70(&qword_100219BD0);
  sub_100029970(v2, *(a1 + 16), *(a1 + 24), &v10[*(v19 + 44)]);
  sub_100009F70(&qword_100219BD8);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_1001AEB90;
  static AccessibilityTraits.startsMediaSession.getter();
  *&v56 = v20;
  sub_10002D994(&qword_100219BE0, &type metadata accessor for AccessibilityTraits);
  sub_100009F70(&qword_100219BE8);
  sub_10000D1EC(&qword_100219BF0, &qword_100219BE8);
  v21 = v5;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  sub_10000D1EC(&qword_100219BF8, &qword_100219BA8);
  v22 = v43;
  View.accessibilityAddTraits(_:)();
  (*(v6 + 8))(v8, v21);
  sub_10000D52C(v10, &qword_100219BA8);
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v23 = v44;
  sub_10000F618(v22, v44, &qword_100219BB0);
  v24 = (v23 + *(v14 + 44));
  v25 = v61;
  v24[4] = v60;
  v24[5] = v25;
  v24[6] = v62;
  v26 = v57;
  *v24 = v56;
  v24[1] = v26;
  v27 = v59;
  v24[2] = v58;
  v24[3] = v27;
  LOBYTE(v20) = static Edge.Set.bottom.getter();
  EdgeInsets.init(_all:)();
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v35 = v34;
  sub_10000F618(v23, v17, &qword_100219BB8);
  v36 = v47;
  v37 = &v17[*(v47 + 36)];
  *v37 = v20;
  *(v37 + 1) = v29;
  *(v37 + 2) = v31;
  *(v37 + 3) = v33;
  *(v37 + 4) = v35;
  v37[40] = 0;
  v38 = v50;
  static AccessibilityChildBehavior.ignore.getter();
  v39 = sub_10002CC34();
  v40 = v46;
  View.accessibilityElement(children:)();
  (*(v51 + 8))(v38, v52);
  sub_10000D52C(v17, &qword_100219BC0);
  v54 = v36;
  v55 = v39;
  swift_getOpaqueTypeConformance2();
  v41 = v48;
  View.accessibilityIdentifier(_:)();
  return (*(v49 + 8))(v40, v41);
}

uint64_t sub_100029970@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v50 = a2;
  v51 = a3;
  v49 = a1;
  v52 = a4;
  v4 = sub_100009F70(&qword_100219C18);
  __chkstk_darwin(v4 - 8);
  v6 = &v48 - v5;
  v7 = sub_100009F70(&qword_100219C20);
  v8 = v7 - 8;
  v9 = __chkstk_darwin(v7);
  v11 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v14 = &v48 - v13;
  __chkstk_darwin(v12);
  v16 = &v48 - v15;
  v17 = sub_100009F70(&qword_100219C28);
  v18 = v17 - 8;
  v19 = __chkstk_darwin(v17);
  v21 = &v48 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v23 = &v48 - v22;
  Divider.init()();
  v24 = static Edge.Set.bottom.getter();
  EdgeInsets.init(_all:)();
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v33 = &v23[*(sub_100009F70(&qword_100219C30) + 36)];
  *v33 = v24;
  *(v33 + 1) = v26;
  *(v33 + 2) = v28;
  *(v33 + 3) = v30;
  *(v33 + 4) = v32;
  v33[40] = 0;
  v34 = static Edge.Set.leading.getter();
  EdgeInsets.init(_all:)();
  v35 = &v23[*(v18 + 44)];
  *v35 = v34;
  *(v35 + 1) = v36;
  *(v35 + 2) = v37;
  *(v35 + 3) = v38;
  *(v35 + 4) = v39;
  v35[40] = 0;
  *v6 = static VerticalAlignment.center.getter();
  *(v6 + 1) = 0x4030000000000000;
  v6[16] = 0;
  v40 = sub_100009F70(&qword_100219C38);
  sub_100029D5C(v49, v50, v51, &v6[*(v40 + 44)]);
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  sub_10000F618(v6, v14, &qword_100219C18);
  v41 = &v14[*(v8 + 44)];
  v42 = v58;
  *(v41 + 4) = v57;
  *(v41 + 5) = v42;
  *(v41 + 6) = v59;
  v43 = v54;
  *v41 = v53;
  *(v41 + 1) = v43;
  v44 = v56;
  *(v41 + 2) = v55;
  *(v41 + 3) = v44;
  sub_10000F618(v14, v16, &qword_100219C20);
  sub_10000D58C(v23, v21, &qword_100219C28);
  sub_10000D58C(v16, v11, &qword_100219C20);
  v45 = v52;
  sub_10000D58C(v21, v52, &qword_100219C28);
  v46 = sub_100009F70(&qword_100219C40);
  sub_10000D58C(v11, v45 + *(v46 + 48), &qword_100219C20);
  sub_10000D52C(v16, &qword_100219C20);
  sub_10000D52C(v23, &qword_100219C28);
  sub_10000D52C(v11, &qword_100219C20);
  return sub_10000D52C(v21, &qword_100219C28);
}

uint64_t sub_100029D5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v176 = a4;
  v7 = type metadata accessor for PlainButtonStyle();
  v156 = *(v7 - 8);
  v157 = v7;
  __chkstk_darwin(v7);
  v155 = v141 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for AccessibilityTraits();
  v150 = *(v9 - 8);
  v151 = v9;
  __chkstk_darwin(v9);
  v149 = v141 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v177 = a2;
  v178 = a3;
  v11 = type metadata accessor for SetlistSongRowView();
  v12 = *(v11 - 8);
  v143 = *(v12 + 64);
  __chkstk_darwin(v11);
  v161 = v141 - v13;
  v14 = sub_100009F70(&qword_100219C48);
  v146 = *(v14 - 8);
  v147 = v14;
  __chkstk_darwin(v14);
  v144 = v141 - v15;
  v145 = sub_100009F70(&qword_100219C50);
  __chkstk_darwin(v145);
  v148 = v141 - v16;
  v153 = sub_100009F70(&qword_100219C58);
  __chkstk_darwin(v153);
  v154 = v141 - v17;
  v18 = sub_100009F70(&qword_100219C60);
  v173 = *(v18 - 8);
  v174 = v18;
  __chkstk_darwin(v18);
  v152 = v141 - v19;
  v160 = type metadata accessor for URL();
  v163 = *(v160 - 8);
  v20 = __chkstk_darwin(v160);
  v141[1] = v21;
  v142 = v141 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v162 = v141 - v22;
  v23 = sub_100009F70(&qword_100219C68);
  v24 = __chkstk_darwin(v23 - 8);
  v175 = v141 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v179 = v141 - v26;
  v27 = sub_100009F70(&qword_100219C70);
  __chkstk_darwin(v27 - 8);
  v166 = (v141 - v28);
  v165 = sub_100009F70(&qword_100219C78);
  __chkstk_darwin(v165);
  v169 = v141 - v29;
  v168 = sub_100009F70(&qword_100219C80);
  v30 = __chkstk_darwin(v168);
  v172 = v141 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __chkstk_darwin(v30);
  v167 = v141 - v33;
  __chkstk_darwin(v32);
  v182 = v141 - v34;
  v35 = type metadata accessor for EnvironmentValues();
  v36 = *(v35 - 8);
  __chkstk_darwin(v35);
  v38 = v141 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_100009F70(qword_100218748);
  v40 = __chkstk_darwin(v39 - 8);
  v159 = v141 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v40);
  v43 = v141 - v42;
  v164 = sub_100009F70(&qword_100219C88);
  v44 = __chkstk_darwin(v164);
  v171 = v141 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v44);
  v180 = v11;
  v181 = v141 - v46;
  v47 = *(v11 + 44);
  v170 = a1;
  v48 = a1 + v47;
  v49 = *v48;
  v50 = *(v48 + 8);
  if (v50 == 1)
  {
    v51 = *v48;
  }

  else
  {

    static os_log_type_t.fault.getter();
    v52 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_100027EB0(v49, 0);
    (*(v36 + 8))(v38, v35);
    v51 = *&v196;
  }

  v53 = v51 * 48.0;
  if (COERCE__INT64(fabs(v51 * 48.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_24;
  }

  if (v53 <= -9.22337204e18)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (v53 >= 9.22337204e18)
  {
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (v50)
  {
    v54 = *&v49;
  }

  else
  {

    static os_log_type_t.fault.getter();
    v55 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_100027EB0(v49, 0);
    (*(v36 + 8))(v38, v35);
    v54 = *&v196;
  }

  v56 = v54 * 48.0;
  if ((*&v56 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_26;
  }

  if (v56 <= -9.22337204e18)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (v56 >= 9.22337204e18)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v141[0] = v12;
  v57 = v56;
  v58 = v177;
  v59 = v178;
  v158 = type metadata accessor for SetlistSongRowViewModel();
  v60 = v170;
  sub_1000447E0(v53, v57, v158, v43);
  static Animation.spring(response:dampingFraction:blendDuration:)();
  Transaction.init(animation:)();
  v61 = swift_allocObject();
  *(v61 + 16) = v58;
  *(v61 + 24) = v59;
  sub_100009F70(&qword_100219C90);
  sub_10002CE4C();
  v62 = v181;
  AsyncImage.init(url:scale:transaction:content:)();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v63 = (v62 + *(sub_100009F70(&qword_100219D08) + 36));
  v64 = v184;
  *v63 = v183;
  v63[1] = v64;
  v63[2] = v185;
  v65 = static Alignment.center.getter();
  v67 = v66;
  v68 = v59;
  sub_10002B804(v60, &v196);
  v69 = v196;
  v70 = v197;
  v71 = v62 + *(sub_100009F70(&qword_100219D10) + 36);
  *v71 = v69;
  v72 = v60;
  *(v71 + 16) = v70;
  *(v71 + 24) = v65;
  *(v71 + 32) = v67;
  if (static Solarium.isEnabled.getter())
  {
    v73 = 10.0;
  }

  else
  {
    v73 = 5.0;
  }

  v74 = (v62 + *(v164 + 36));
  v75 = *(type metadata accessor for RoundedRectangle() + 20);
  v76 = enum case for RoundedCornerStyle.continuous(_:);
  v77 = type metadata accessor for RoundedCornerStyle();
  (*(*(v77 - 8) + 104))(v74 + v75, v76, v77);
  *v74 = v73;
  v74[1] = v73;
  *(v74 + *(sub_100009F70(&qword_100218928) + 36)) = 256;
  v78 = static HorizontalAlignment.leading.getter();
  v79 = v166;
  *v166 = v78;
  *(v79 + 8) = 0x4008000000000000;
  *(v79 + 16) = 0;
  v80 = sub_100009F70(&qword_100219D18);
  sub_10002B8D4(v60, v58, v68, v79 + *(v80 + 44));
  static Alignment.leading.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v81 = v169;
  sub_10000F618(v79, v169, &qword_100219C70);
  v82 = &v81[*(v165 + 36)];
  v83 = v191;
  *(v82 + 4) = v190;
  *(v82 + 5) = v83;
  *(v82 + 6) = v192;
  v84 = v187;
  *v82 = v186;
  *(v82 + 1) = v84;
  v85 = v189;
  *(v82 + 2) = v188;
  *(v82 + 3) = v85;
  LOBYTE(v79) = static Edge.Set.trailing.getter();
  EdgeInsets.init(_all:)();
  v87 = v86;
  v89 = v88;
  v91 = v90;
  v93 = v92;
  v94 = v81;
  v95 = v167;
  sub_10000F618(v94, v167, &qword_100219C78);
  v96 = v95 + *(v168 + 36);
  *v96 = v79;
  *(v96 + 8) = v87;
  *(v96 + 16) = v89;
  *(v96 + 24) = v91;
  *(v96 + 32) = v93;
  *(v96 + 40) = 0;
  sub_10000F618(v95, v182, &qword_100219C80);
  if (*(v60 + *(v180 + 36)))
  {

    v98 = sub_1000452DC(v97);

    if (v98)
    {
      v99 = v159;
      sub_100044AD8(v158);
      v100 = v163;
      v101 = v160;
      if ((*(v163 + 48))(v99, 1, v160) != 1)
      {
        v169 = *(v100 + 32);
        v105 = v162;
        (v169)(v162, v99, v101);
        v106 = v141[0];
        (*(v141[0] + 16))(v161, v72, v180);
        v107 = v142;
        (*(v100 + 16))(v142, v105, v101);
        v108 = (*(v106 + 80) + 32) & ~*(v106 + 80);
        v109 = (v143 + *(v100 + 80) + v108) & ~*(v100 + 80);
        v110 = v101;
        v111 = swift_allocObject();
        v112 = v178;
        *(v111 + 16) = v177;
        *(v111 + 24) = v112;
        (*(v106 + 32))(v111 + v108, v161, v180);
        v113 = (v169)(v111 + v109, v107, v110);
        __chkstk_darwin(v113);
        sub_100009F70(&qword_100219D28);
        sub_10002D620();
        v114 = v144;
        Button.init(action:label:)();
        sub_100009F70(&qword_100219BD8);
        v115 = v150;
        v116 = swift_allocObject();
        *(v116 + 16) = xmmword_1001AEB90;
        static AccessibilityTraits.startsMediaSession.getter();
        *&v196 = v116;
        sub_10002D994(&qword_100219BE0, &type metadata accessor for AccessibilityTraits);
        sub_100009F70(&qword_100219BE8);
        sub_10000D1EC(&qword_100219BF0, &qword_100219BE8);
        v117 = v149;
        v118 = v151;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        sub_10000D1EC(&qword_100219D58, &qword_100219C48);
        v120 = v147;
        v119 = v148;
        View.accessibilityRemoveTraits(_:)();
        (*(v115 + 8))(v117, v118);
        (*(v146 + 8))(v114, v120);
        static Alignment.center.getter();
        _FrameLayout.init(width:height:alignment:)();
        v121 = (v119 + *(v145 + 36));
        v122 = v194;
        *v121 = v193;
        v121[1] = v122;
        v121[2] = v195;
        static Alignment.center.getter();
        _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
        v123 = v154;
        sub_10000F618(v119, v154, &qword_100219C50);
        v124 = (v123 + *(v153 + 36));
        v125 = v201;
        v124[4] = v200;
        v124[5] = v125;
        v124[6] = v202;
        v126 = v197;
        *v124 = v196;
        v124[1] = v126;
        v127 = v199;
        v124[2] = v198;
        v124[3] = v127;
        v128 = v155;
        PlainButtonStyle.init()();
        sub_10002D794();
        sub_10002D994(&qword_100218810, &type metadata accessor for PlainButtonStyle);
        v129 = v152;
        v130 = v157;
        View.buttonStyle<A>(_:)();
        (*(v156 + 8))(v128, v130);
        sub_10000D52C(v123, &qword_100219C58);
        (*(v163 + 8))(v162, v110);
        v104 = v173;
        v131 = v174;
        (*(v173 + 32))(v179, v129, v174);
        v103 = v131;
        v102 = 0;
        goto LABEL_22;
      }

      sub_10000D52C(v99, qword_100218748);
    }

    v102 = 1;
    v104 = v173;
    v103 = v174;
LABEL_22:
    v132 = v179;
    (*(v104 + 56))(v179, v102, 1, v103);
    v133 = v181;
    v134 = v171;
    sub_10000D58C(v181, v171, &qword_100219C88);
    v135 = v182;
    v136 = v172;
    sub_10000D58C(v182, v172, &qword_100219C80);
    v137 = v175;
    sub_10000D58C(v132, v175, &qword_100219C68);
    v138 = v176;
    sub_10000D58C(v134, v176, &qword_100219C88);
    v139 = sub_100009F70(&qword_100219D20);
    sub_10000D58C(v136, v138 + *(v139 + 48), &qword_100219C80);
    sub_10000D58C(v137, v138 + *(v139 + 64), &qword_100219C68);
    sub_10000D52C(v132, &qword_100219C68);
    sub_10000D52C(v135, &qword_100219C80);
    sub_10000D52C(v133, &qword_100219C88);
    sub_10000D52C(v137, &qword_100219C68);
    sub_10000D52C(v136, &qword_100219C80);
    return sub_10000D52C(v134, &qword_100219C88);
  }

LABEL_29:
  type metadata accessor for RemoteViewConfiguration();
  sub_10002D994(&qword_100218568, type metadata accessor for RemoteViewConfiguration);
  result = EnvironmentObject.error()();
  __break(1u);
  return result;
}

uint64_t sub_10002B180@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v25[1] = a3;
  v25[0] = a2;
  v29 = a4;
  v28 = sub_100009F70(&qword_100219CD0);
  __chkstk_darwin(v28);
  v6 = v25 - v5;
  v26 = sub_100009F70(&qword_100219DD0);
  __chkstk_darwin(v26);
  v8 = v25 - v7;
  v9 = type metadata accessor for Image.ResizingMode();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_100009F70(&qword_100219CA8);
  __chkstk_darwin(v27);
  v14 = v25 - v13;
  v15 = type metadata accessor for AsyncImagePhase();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = v25 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 16))(v18, a1, v15);
  if ((*(v16 + 88))(v18, v15) == enum case for AsyncImagePhase.success(_:))
  {
    (*(v16 + 96))(v18, v15);
    (*(v10 + 104))(v12, enum case for Image.ResizingMode.stretch(_:), v9);
    v19 = Image.resizable(capInsets:resizingMode:)();
    (*(v10 + 8))(v12, v9);
    *&v34 = v19;
    BYTE8(v34) = 1;
    sub_100009F70(&qword_100219CB8);
    sub_10002CFE4();
    View.accessibilityIdentifier(_:)();

    sub_10000D58C(v14, v8, &qword_100219CA8);
    swift_storeEnumTagMultiPayload();
    sub_10002CF30(&qword_100219CA0, &qword_100219CA8, &unk_1001AED50, sub_10002CFE4);
    sub_10002CF30(&qword_100219CC8, &qword_100219CD0, &unk_1001AED60, sub_10002D0C4);
    _ConditionalContent<>.init(storage:)();

    return sub_10000D52C(v14, &qword_100219CA8);
  }

  else
  {
    if (qword_100218340 != -1)
    {
      swift_once();
    }

    v21 = qword_100230578;
    v22 = static Alignment.center.getter();
    v24 = v23;
    sub_10002B784(&v34);
    *&v30 = v21;
    WORD4(v30) = 256;
    v31 = v34;
    *&v32 = v35;
    DWORD2(v32) = DWORD2(v35);
    *&v33 = v22;
    *(&v33 + 1) = v24;

    sub_100009F70(&qword_100219CE0);
    sub_10002D0C4();
    View.accessibilityIdentifier(_:)();
    v34 = v30;
    v35 = v31;
    v36 = v32;
    v37 = v33;
    sub_10000D52C(&v34, &qword_100219CE0);
    sub_10000D58C(v6, v8, &qword_100219CD0);
    swift_storeEnumTagMultiPayload();
    sub_10002CF30(&qword_100219CA0, &qword_100219CA8, &unk_1001AED50, sub_10002CFE4);
    sub_10002CF30(&qword_100219CC8, &qword_100219CD0, &unk_1001AED60, sub_10002D0C4);
    _ConditionalContent<>.init(storage:)();
    sub_10000D52C(v6, &qword_100219CD0);
    return (*(v16 + 8))(v18, v15);
  }
}

uint64_t sub_10002B784@<X0>(uint64_t a1@<X8>)
{
  v2 = Image.init(_internalSystemName:)();
  static Font.title3.getter();
  static Font.Weight.regular.getter();
  v3 = Font.weight(_:)();

  KeyPath = swift_getKeyPath();
  result = static HierarchicalShapeStyle.quaternary.getter();
  *a1 = v2;
  *(a1 + 8) = KeyPath;
  *(a1 + 16) = v3;
  *(a1 + 24) = result;
  return result;
}

uint64_t sub_10002B804@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for SetlistSongRowViewModel();
  v5 = 0;
  result = 0;
  if (*(a1 + *(v4 + 40)) == 1)
  {
    if (qword_100218450 != -1)
    {
      swift_once();
    }

    v7 = qword_100230608;
    type metadata accessor for PlaybackViewModel();
    v5 = swift_allocObject();

    ObservationRegistrar.init()();
    *(v5 + 16) = v7;
    result = swift_getKeyPath();
  }

  *a2 = v5;
  *(a2 + 8) = result;
  *(a2 + 16) = 0;
  return result;
}

uint64_t sub_10002B8D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v66[2] = a1;
  v78 = a4;
  v6 = sub_100009F70(&qword_1002197C0);
  v7 = __chkstk_darwin(v6 - 8);
  v77 = v66 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v76 = v66 - v9;
  v10 = type metadata accessor for Text.Suffix();
  v70 = *(v10 - 8);
  v71 = v10;
  __chkstk_darwin(v10);
  v67 = v66 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100009F70(&qword_100219D88);
  v73 = *(v12 - 8);
  v74 = v12;
  __chkstk_darwin(v12);
  v72 = v66 - v13;
  v14 = sub_100009F70(&qword_100219D90);
  v15 = __chkstk_darwin(v14 - 8);
  v75 = v66 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v79 = v66 - v17;
  v18 = type metadata accessor for SetlistSongRowViewModel();
  *&v89 = sub_100044A20(v18);
  *(&v89 + 1) = v19;
  v68 = sub_100027068();
  v20 = Text.init<A>(_:)();
  v22 = v21;
  v24 = v23;
  v69 = v25;
  static Alignment.leading.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v26 = v24 & 1;
  v108 = v24 & 1;
  v66[0] = a2;
  v66[1] = a3;
  v27 = sub_100029240();
  KeyPath = swift_getKeyPath();
  v29 = swift_getKeyPath();
  v109 = 0;
  *&v89 = v20;
  *(&v89 + 1) = v22;
  LOBYTE(v90) = v26;
  v95 = v105;
  v96 = v106;
  v97 = v107;
  v91 = v101;
  v92 = v102;
  v93 = v103;
  v94 = v104;
  *(&v90 + 1) = v69;
  *&v98 = KeyPath;
  *(&v98 + 1) = v27;
  *&v99 = v29;
  *(&v99 + 1) = 1;
  v100 = 0;
  v69 = v18;
  if (sub_100044A5C(v18))
  {
    v30 = sub_10002D1A8();
    v32 = v31;
    v34 = v33;
    v35 = v67;
    static Text.Suffix.alwaysVisible(_:)();
    sub_10000D60C(v30, v32, v34 & 1);
  }

  else
  {
    v35 = v67;
    static Text.Suffix.none.getter();
  }

  v36 = sub_100009F70(&qword_100219D98);
  v37 = sub_10002D9EC();
  v38 = v72;
  View.textSuffix(_:)();
  (*(v70 + 8))(v35, v71);
  v87[8] = v97;
  v87[9] = v98;
  v87[10] = v99;
  v88 = v100;
  v87[4] = v93;
  v87[5] = v94;
  v87[6] = v95;
  v87[7] = v96;
  v87[0] = v89;
  v87[1] = v90;
  v87[2] = v91;
  v87[3] = v92;
  sub_10000D52C(v87, &qword_100219D98);
  v80 = v36;
  v81 = v37;
  swift_getOpaqueTypeConformance2();
  v39 = v74;
  View.accessibilityIdentifier(_:)();
  (*(v73 + 8))(v38, v39);
  v80 = sub_100044A9C(v69);
  v81 = v40;
  v41 = Text.init<A>(_:)();
  v43 = v42;
  v45 = v44;
  static Font.footnote.getter();
  static Font.Weight.regular.getter();
  Font.weight(_:)();

  v46 = Text.font(_:)();
  v48 = v47;
  v50 = v49;

  sub_10000D60C(v41, v43, v45 & 1);

  if (qword_100218338 != -1)
  {
    swift_once();
  }

  v80 = qword_100230570;

  v51 = Text.foregroundStyle<A>(_:)();
  v53 = v52;
  v55 = v54;
  v57 = v56;
  sub_10000D60C(v46, v48, v50 & 1);

  v58 = swift_getKeyPath();
  v80 = v51;
  v81 = v53;
  v82 = v55 & 1;
  v83 = v57;
  v84 = v58;
  v85 = 1;
  v86 = 0;
  sub_100009F70(&qword_1002197F0);
  sub_10002764C();
  v59 = v76;
  View.accessibilityIdentifier(_:)();
  sub_10000D60C(v51, v53, v55 & 1);

  v60 = v79;
  v61 = v75;
  sub_10000D58C(v79, v75, &qword_100219D90);
  v62 = v77;
  sub_10000D58C(v59, v77, &qword_1002197C0);
  v63 = v78;
  sub_10000D58C(v61, v78, &qword_100219D90);
  v64 = sub_100009F70(&qword_100219DC8);
  sub_10000D58C(v62, v63 + *(v64 + 48), &qword_1002197C0);
  sub_10000D52C(v59, &qword_1002197C0);
  sub_10000D52C(v60, &qword_100219D90);
  sub_10000D52C(v62, &qword_1002197C0);
  return sub_10000D52C(v61, &qword_100219D90);
}

uint64_t sub_10002C058(uint64_t a1)
{
  v2 = type metadata accessor for OpenURLAction();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for SetlistSongRowView();
  sub_100023FD4(v5);
  OpenURLAction.callAsFunction(_:)();
  (*(v3 + 8))(v5, v2);
  if (*(a1 + *(v6 + 36)))
  {
    type metadata accessor for SetlistSongRowViewModel();

    sub_100044B14(v7);
  }

  else
  {
    type metadata accessor for RemoteViewConfiguration();
    sub_10002D994(&qword_100218568, type metadata accessor for RemoteViewConfiguration);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_10002C204@<X0>(uint64_t a1@<X8>)
{
  v23 = a1;
  v1 = type metadata accessor for SymbolVariants();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v22 - v6;
  v22 = sub_100009F70(&qword_100219D80);
  v8 = *(v22 - 8);
  __chkstk_darwin(v22);
  v10 = &v22 - v9;
  v11 = sub_100009F70(&qword_100219D40);
  v12 = v11 - 8;
  __chkstk_darwin(v11);
  v14 = &v22 - v13;
  *&v24 = Image.init(_internalSystemName:)();
  static SymbolVariants.square.getter();
  SymbolVariants.fill.getter();
  v15 = *(v2 + 8);
  v15(v7, v1);
  View.symbolVariant(_:)();
  v15(v5, v1);

  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  (*(v8 + 32))(v14, v10, v22);
  v16 = &v14[*(v12 + 44)];
  v17 = v29;
  *(v16 + 4) = v28;
  *(v16 + 5) = v17;
  *(v16 + 6) = v30;
  v18 = v25;
  *v16 = v24;
  *(v16 + 1) = v18;
  v19 = v27;
  *(v16 + 2) = v26;
  *(v16 + 3) = v19;
  v20 = v23;
  sub_10000F618(v14, v23, &qword_100219D40);
  result = sub_100009F70(&qword_100219D28);
  *(v20 + *(result + 36)) = 0;
  return result;
}

uint64_t sub_10002C50C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for SetlistSongRowViewModel();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  v5 = type metadata accessor for SetlistSongRowView();
  v6 = (a2 + v5[9]);
  type metadata accessor for RemoteViewConfiguration();
  sub_10002D994(&qword_100218568, type metadata accessor for RemoteViewConfiguration);
  *v6 = EnvironmentObject.init()();
  v6[1] = v7;
  v8 = v5[10];
  *(a2 + v8) = swift_getKeyPath();
  sub_100009F70(&qword_100218DF8);
  swift_storeEnumTagMultiPayload();
  v9 = a2 + v5[11];
  result = swift_getKeyPath();
  *v9 = result;
  *(v9 + 8) = 0;
  return result;
}

void sub_10002C668()
{
  type metadata accessor for SetlistSongRowViewModel();
  if (v0 <= 0x3F)
  {
    sub_10000B304();
    if (v1 <= 0x3F)
    {
      sub_10000E648();
      if (v2 <= 0x3F)
      {
        sub_100027AA4();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_10002C720(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(type metadata accessor for OpenURLAction() - 8);
  v10 = 8;
  if (*(v9 + 64) > 8uLL)
  {
    v10 = *(v9 + 64);
  }

  v11 = *(v6 + 80);
  if (!a2)
  {
    return 0;
  }

  if (v8 >= a2)
  {
    goto LABEL_33;
  }

  v12 = *(v9 + 80) & 0xF8 | 7;
  v13 = ((v10 + ((v12 + ((((v11 + 16) & ~v11) + *(v6 + 64)) & 0xFFFFFFFFFFFFFFF8) + 24) & ~v12) + 8) & 0xFFFFFFFFFFFFFFF8) + 9;
  if (v13 <= 3)
  {
    v14 = ((a2 - v8 + 255) >> 8) + 1;
  }

  else
  {
    v14 = 2;
  }

  if (v14 >= 0x10000)
  {
    v15 = 4;
  }

  else
  {
    v15 = 2;
  }

  if (v14 < 0x100)
  {
    v15 = 1;
  }

  if (v14 >= 2)
  {
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  if (v16 > 1)
  {
    if (v16 == 2)
    {
      v17 = *&a1[v13];
      if (!*&a1[v13])
      {
        goto LABEL_33;
      }
    }

    else
    {
      v17 = *&a1[v13];
      if (!v17)
      {
        goto LABEL_33;
      }
    }

LABEL_26:
    v19 = v13 > 3;
    if (v13 <= 3)
    {
      v20 = (v17 - 1) << (8 * v13);
    }

    else
    {
      v20 = 0;
    }

    if (v19)
    {
      v23 = *a1;
    }

    else
    {
      v23 = *a1;
    }

    return v8 + (v23 | v20) + 1;
  }

  if (v16)
  {
    v17 = a1[v13];
    if (a1[v13])
    {
      goto LABEL_26;
    }
  }

LABEL_33:
  if ((v7 & 0x80000000) != 0)
  {
    v22 = *(v6 + 48);

    return v22(&a1[v11 + 16] & ~v11, v7, v5);
  }

  else
  {
    v21 = *(a1 + 1);
    if (v21 >= 0xFFFFFFFF)
    {
      LODWORD(v21) = -1;
    }

    return (v21 + 1);
  }
}

void sub_10002C964(uint64_t *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v22 = v8;
  v9 = *(v8 + 84);
  if (v9 <= 0x7FFFFFFF)
  {
    v10 = 0x7FFFFFFF;
  }

  else
  {
    v10 = *(v8 + 84);
  }

  v11 = *(type metadata accessor for OpenURLAction() - 8);
  v12 = 8;
  if (*(v11 + 64) > 8uLL)
  {
    v12 = *(v11 + 64);
  }

  v13 = *(v8 + 80);
  v14 = *(v11 + 80) & 0xF8 | 7;
  v15 = ((v12 + ((v14 + ((((v13 + 16) & ~v13) + *(v8 + 64)) & 0xFFFFFFFFFFFFFFF8) + 24) & ~v14) + 8) & 0xFFFFFFFFFFFFFFF8) + 9;
  if (v10 >= a3)
  {
    v18 = 0;
    if (v10 >= a2)
    {
      goto LABEL_19;
    }
  }

  else
  {
    if (v15 <= 3)
    {
      v16 = ((a3 - v10 + 255) >> 8) + 1;
    }

    else
    {
      v16 = 2;
    }

    if (v16 >= 0x10000)
    {
      v17 = 4;
    }

    else
    {
      v17 = 2;
    }

    if (v16 < 0x100)
    {
      v17 = 1;
    }

    if (v16 >= 2)
    {
      v18 = v17;
    }

    else
    {
      v18 = 0;
    }

    if (v10 >= a2)
    {
LABEL_19:
      if (v18 > 1)
      {
        if (v18 != 2)
        {
          *(a1 + v15) = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_34;
        }

        *(a1 + v15) = 0;
      }

      else if (v18)
      {
        *(a1 + v15) = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_34;
      }

      if (!a2)
      {
        return;
      }

LABEL_34:
      if ((v9 & 0x80000000) != 0)
      {
        v21 = *(v22 + 56);

        v21((a1 + v13 + 16) & ~v13, a2, v9, v7);
      }

      else if ((a2 & 0x80000000) != 0)
      {
        *a1 = a2 & 0x7FFFFFFF;
        a1[1] = 0;
      }

      else
      {
        a1[1] = (a2 - 1);
      }

      return;
    }
  }

  v19 = ~v10 + a2;
  bzero(a1, v15);
  if (v15 <= 3)
  {
    v20 = (v19 >> 8) + 1;
  }

  else
  {
    v20 = 1;
  }

  if (v15 <= 3)
  {
    *a1 = v19;
    if (v18 > 1)
    {
LABEL_29:
      if (v18 == 2)
      {
        *(a1 + v15) = v20;
      }

      else
      {
        *(a1 + v15) = v20;
      }

      return;
    }
  }

  else
  {
    *a1 = v19;
    if (v18 > 1)
    {
      goto LABEL_29;
    }
  }

  if (v18)
  {
    *(a1 + v15) = v20;
  }
}

unint64_t sub_10002CC34()
{
  result = qword_100219C00;
  if (!qword_100219C00)
  {
    sub_10000B3DC(&qword_100219BC0);
    sub_10002CCC0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100219C00);
  }

  return result;
}

unint64_t sub_10002CCC0()
{
  result = qword_100219C08;
  if (!qword_100219C08)
  {
    sub_10000B3DC(&qword_100219BB8);
    sub_10002CD4C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100219C08);
  }

  return result;
}

unint64_t sub_10002CD4C()
{
  result = qword_100219C10;
  if (!qword_100219C10)
  {
    sub_10000B3DC(&qword_100219BB0);
    sub_10000D1EC(&qword_100219BF8, &qword_100219BA8);
    sub_10002D994(&qword_100218698, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100219C10);
  }

  return result;
}

unint64_t sub_10002CE4C()
{
  result = qword_100219C98;
  if (!qword_100219C98)
  {
    sub_10000B3DC(&qword_100219C90);
    sub_10002CF30(&qword_100219CA0, &qword_100219CA8, &unk_1001AED50, sub_10002CFE4);
    sub_10002CF30(&qword_100219CC8, &qword_100219CD0, &unk_1001AED60, sub_10002D0C4);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100219C98);
  }

  return result;
}

uint64_t sub_10002CF30(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_10000B3DC(a2);
    a4();
    sub_10002D994(&qword_100218698, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10002CFE4()
{
  result = qword_100219CB0;
  if (!qword_100219CB0)
  {
    sub_10000B3DC(&qword_100219CB8);
    sub_10002D070();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100219CB0);
  }

  return result;
}

unint64_t sub_10002D070()
{
  result = qword_100219CC0;
  if (!qword_100219CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100219CC0);
  }

  return result;
}

unint64_t sub_10002D0C4()
{
  result = qword_100219CD8;
  if (!qword_100219CD8)
  {
    sub_10000B3DC(&qword_100219CE0);
    sub_10000D1EC(&qword_100219CE8, &qword_100219CF0);
    sub_10000D1EC(&qword_100219CF8, &qword_100219D00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100219CD8);
  }

  return result;
}

uint64_t sub_10002D1A8()
{
  sub_100027068();
  v0 = Text.init<A>(_:)();
  v2 = v1;
  v4 = v3;
  static Color.gray.getter();
  Color.opacity(_:)();

  v5 = Text.foregroundColor(_:)();
  v7 = v6;
  v9 = v8;

  sub_10000D60C(v0, v2, v4 & 1);

  sub_100029240();
  v10 = Text.font(_:)();

  sub_10000D60C(v5, v7, v9 & 1);

  return v10;
}

uint64_t sub_10002D2FC()
{
  v1 = *(v0 + 16);
  v2 = type metadata accessor for SetlistSongRowView();
  v3 = (*(*(v2 - 8) + 80) + 32) & ~*(*(v2 - 8) + 80);
  v12 = *(*(v2 - 8) + 64);
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v7 = v0 + v3;

  v8 = type metadata accessor for SetlistSongRowViewModel();
  (*(*(v1 - 8) + 8))(v0 + v3 + *(v8 + 36), v1);

  v9 = *(v2 + 40);
  sub_100009F70(&qword_100218DF8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = type metadata accessor for OpenURLAction();
    (*(*(v10 - 8) + 8))(v7 + v9, v10);
  }

  else
  {
  }

  sub_100027EB0(*(v7 + *(v2 + 44)), *(v7 + *(v2 + 44) + 8));
  (*(v5 + 8))(v0 + ((v3 + v12 + v6) & ~v6), v4);

  return swift_deallocObject();
}

uint64_t sub_10002D530()
{
  v1 = *(type metadata accessor for SetlistSongRowView() - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  type metadata accessor for URL();

  return sub_10002C058(v0 + v2);
}

unint64_t sub_10002D620()
{
  result = qword_100219D30;
  if (!qword_100219D30)
  {
    sub_10000B3DC(&qword_100219D28);
    sub_10002D6D8();
    sub_10000D1EC(&qword_100219D48, &qword_100219D50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100219D30);
  }

  return result;
}

unint64_t sub_10002D6D8()
{
  result = qword_100219D38;
  if (!qword_100219D38)
  {
    sub_10000B3DC(&qword_100219D40);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100219D38);
  }

  return result;
}

unint64_t sub_10002D794()
{
  result = qword_100219D60;
  if (!qword_100219D60)
  {
    sub_10000B3DC(&qword_100219C58);
    sub_10002D820();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100219D60);
  }

  return result;
}

unint64_t sub_10002D820()
{
  result = qword_100219D68;
  if (!qword_100219D68)
  {
    sub_10000B3DC(&qword_100219C50);
    sub_10002D8AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100219D68);
  }

  return result;
}

unint64_t sub_10002D8AC()
{
  result = qword_100219D70;
  if (!qword_100219D70)
  {
    sub_10000B3DC(&qword_100219D78);
    sub_10000D1EC(&qword_100219D58, &qword_100219C48);
    sub_10002D994(&qword_100218698, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100219D70);
  }

  return result;
}

uint64_t sub_10002D994(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_10002D9EC()
{
  result = qword_100219DA0;
  if (!qword_100219DA0)
  {
    sub_10000B3DC(&qword_100219D98);
    sub_10002DAA4();
    sub_10000D1EC(&qword_100219800, &qword_100219808);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100219DA0);
  }

  return result;
}

unint64_t sub_10002DAA4()
{
  result = qword_100219DA8;
  if (!qword_100219DA8)
  {
    sub_10000B3DC(&qword_100219DB0);
    sub_10002DB5C();
    sub_10000D1EC(&qword_1002188D0, &qword_1002188D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100219DA8);
  }

  return result;
}

unint64_t sub_10002DB5C()
{
  result = qword_100219DB8;
  if (!qword_100219DB8)
  {
    sub_10000B3DC(&qword_100219DC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100219DB8);
  }

  return result;
}

unint64_t sub_10002DBEC()
{
  result = qword_100219DD8;
  if (!qword_100219DD8)
  {
    sub_10000B3DC(&qword_100219DE0);
    sub_10000B3DC(&qword_100219BC0);
    sub_10002CC34();
    swift_getOpaqueTypeConformance2();
    sub_10002D994(&qword_100218698, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100219DD8);
  }

  return result;
}

uint64_t sub_10002DCE4(uint64_t a1)
{
  v1 = *(a1 + 8);
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

__n128 sub_10002DD08(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  *(a1 + 80) = result;
  return result;
}

uint64_t sub_10002DD3C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 136))
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

uint64_t sub_10002DD84(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 120) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 136) = 1;
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

    *(result + 136) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_10002DDF4()
{
  if (v0[1])
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
    if (v0[3])
    {
      goto LABEL_3;
    }
  }

  else
  {
    Hasher._combine(_:)(0);
    if (v0[3])
    {
LABEL_3:
      Hasher._combine(_:)(1u);
      String.hash(into:)();
      if (v0[5])
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  Hasher._combine(_:)(0);
  if (v0[5])
  {
LABEL_4:
    Hasher._combine(_:)(1u);
    String.hash(into:)();
    if (v0[7])
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  Hasher._combine(_:)(0);
  if (v0[7])
  {
LABEL_5:
    Hasher._combine(_:)(1u);
    String.hash(into:)();
    if (v0[9])
    {
      goto LABEL_6;
    }

LABEL_14:
    Hasher._combine(_:)(0);
    if (v0[11])
    {
      goto LABEL_7;
    }

LABEL_15:
    Hasher._combine(_:)(0);
    return;
  }

LABEL_13:
  Hasher._combine(_:)(0);
  if (!v0[9])
  {
    goto LABEL_14;
  }

LABEL_6:
  Hasher._combine(_:)(1u);
  String.hash(into:)();
  if (!v0[11])
  {
    goto LABEL_15;
  }

LABEL_7:
  Hasher._combine(_:)(1u);

  String.hash(into:)();
}

uint64_t sub_10002DF6C()
{
  v1 = *(v0 + 48);

  return v1;
}

Swift::Int sub_10002DF9C()
{
  Hasher.init(_seed:)();
  sub_10002DDF4();
  return Hasher._finalize()();
}

Swift::Int sub_10002DFE0()
{
  Hasher.init(_seed:)();
  sub_10002DDF4();
  return Hasher._finalize()();
}

uint64_t sub_10002E01C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[3];
  v9[2] = a1[2];
  v9[3] = v2;
  v3 = a1[5];
  v9[4] = a1[4];
  v9[5] = v3;
  v4 = a1[1];
  v9[0] = *a1;
  v9[1] = v4;
  v5 = a2[3];
  v10[2] = a2[2];
  v10[3] = v5;
  v6 = a2[5];
  v10[4] = a2[4];
  v10[5] = v6;
  v7 = a2[1];
  v10[0] = *a2;
  v10[1] = v7;
  return sub_10002E650(v9, v10) & 1;
}

uint64_t sub_10002E080@<X0>(_OWORD *a1@<X8>)
{
  v2 = *(v1 + 88);
  v10 = *(v1 + 72);
  v11 = v2;
  v4 = *(v1 + 120);
  v12 = *(v1 + 104);
  v3 = v12;
  v13 = v4;
  v6 = *(v1 + 56);
  v9[0] = *(v1 + 40);
  v5 = v9[0];
  v9[1] = v6;
  a1[2] = v10;
  a1[3] = v2;
  a1[4] = v3;
  a1[5] = v4;
  *a1 = v5;
  a1[1] = v6;
  return sub_10002E868(v9, &v8);
}

Swift::Int sub_10002E0D8()
{
  v1 = *(v0 + 48);
  Hasher.init(_seed:)();
  String.hash(into:)();
  String.hash(into:)();
  NSObject.hash(into:)();
  if (v1 == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    sub_10002DDF4();
  }

  return Hasher._finalize()();
}

void sub_10002E1C4()
{
  v1 = *(v0 + 48);
  String.hash(into:)();
  String.hash(into:)();
  NSObject.hash(into:)();
  if (v1 == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    sub_10002DDF4();
  }
}

Swift::Int sub_10002E288()
{
  v1 = *(v0 + 48);
  Hasher.init(_seed:)();
  String.hash(into:)();
  String.hash(into:)();
  NSObject.hash(into:)();
  if (v1 == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    sub_10002DDF4();
  }

  return Hasher._finalize()();
}

uint64_t sub_10002E370(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 112);
  v11[6] = *(a1 + 96);
  v11[7] = v2;
  v12 = *(a1 + 128);
  v3 = *(a1 + 48);
  v11[2] = *(a1 + 32);
  v11[3] = v3;
  v4 = *(a1 + 80);
  v11[4] = *(a1 + 64);
  v11[5] = v4;
  v5 = *(a1 + 16);
  v11[0] = *a1;
  v11[1] = v5;
  v6 = *(a2 + 112);
  v13[6] = *(a2 + 96);
  v13[7] = v6;
  v14 = *(a2 + 128);
  v7 = *(a2 + 48);
  v13[2] = *(a2 + 32);
  v13[3] = v7;
  v8 = *(a2 + 80);
  v13[4] = *(a2 + 64);
  v13[5] = v8;
  v9 = *(a2 + 16);
  v13[0] = *a2;
  v13[1] = v9;
  return sub_10002E8D8(v11, v13) & 1;
}

unint64_t sub_10002E3F8()
{
  result = qword_100219DE8;
  if (!qword_100219DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100219DE8);
  }

  return result;
}

unint64_t sub_10002E450()
{
  result = qword_100219DF0;
  if (!qword_100219DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100219DF0);
  }

  return result;
}

unint64_t sub_10002E4A4(uint64_t a1)
{
  *(a1 + 8) = sub_10002E4D4();
  result = sub_10002E528();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_10002E4D4()
{
  result = qword_100219E40;
  if (!qword_100219E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100219E40);
  }

  return result;
}

unint64_t sub_10002E528()
{
  result = qword_100219E48;
  if (!qword_100219E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100219E48);
  }

  return result;
}

unint64_t sub_10002E57C(uint64_t a1)
{
  result = sub_10002E5A4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10002E5A4()
{
  result = qword_100219E50;
  if (!qword_100219E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100219E50);
  }

  return result;
}

unint64_t sub_10002E5FC()
{
  result = qword_100219E58;
  if (!qword_100219E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100219E58);
  }

  return result;
}

uint64_t sub_10002E650(void *a1, void *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  if (v2)
  {
    if (!v3)
    {
      return 0;
    }

    if (*a1 != *a2 || v2 != v3)
    {
      v5 = a1;
      v6 = a2;
      v7 = _stringCompareWithSmolCheck(_:_:expecting:)();
      a2 = v6;
      v8 = v7;
      a1 = v5;
      if ((v8 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v3)
  {
    return 0;
  }

  v9 = a1[3];
  v10 = a2[3];
  if (v9)
  {
    if (!v10)
    {
      return 0;
    }

    if (a1[2] != a2[2] || v9 != v10)
    {
      v11 = a1;
      v12 = a2;
      v13 = _stringCompareWithSmolCheck(_:_:expecting:)();
      a2 = v12;
      v14 = v13;
      a1 = v11;
      if ((v14 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v10)
  {
    return 0;
  }

  v15 = a1[5];
  v16 = a2[5];
  if (v15)
  {
    if (!v16)
    {
      return 0;
    }

    if (a1[4] != a2[4] || v15 != v16)
    {
      v17 = a1;
      v18 = a2;
      v19 = _stringCompareWithSmolCheck(_:_:expecting:)();
      a2 = v18;
      v20 = v19;
      a1 = v17;
      if ((v20 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v16)
  {
    return 0;
  }

  v21 = a1[7];
  v22 = a2[7];
  if (v21)
  {
    if (!v22)
    {
      return 0;
    }

    if (a1[6] != a2[6] || v21 != v22)
    {
      v23 = a1;
      v24 = a2;
      v25 = _stringCompareWithSmolCheck(_:_:expecting:)();
      a2 = v24;
      v26 = v25;
      a1 = v23;
      if ((v26 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v22)
  {
    return 0;
  }

  v27 = a1[9];
  v28 = a2[9];
  if (v27)
  {
    if (!v28)
    {
      return 0;
    }

    if (a1[8] != a2[8] || v27 != v28)
    {
      v29 = a1;
      v30 = a2;
      v31 = _stringCompareWithSmolCheck(_:_:expecting:)();
      a2 = v30;
      v32 = v31;
      a1 = v29;
      if ((v32 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v28)
  {
    return 0;
  }

  v33 = a1[11];
  v34 = a2[11];
  if (v33)
  {
    if (v34 && (a1[10] == a2[10] && v33 == v34 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
    {
      return 1;
    }
  }

  else if (!v34)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_10002E868(uint64_t a1, uint64_t a2)
{
  v4 = sub_100009F70(&qword_100219E60);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10002E8D8(uint64_t a1, uint64_t a2)
{
  v4 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && (*(a1 + 16) == *(a2 + 16) ? (v5 = *(a1 + 24) == *(a2 + 24)) : (v5 = 0), (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && (sub_10002EB9C(), (static NSObject.== infix(_:_:)())))
  {
    v6 = *(a1 + 88);
    v51[2] = *(a1 + 72);
    v51[3] = v6;
    v7 = *(a1 + 120);
    v51[4] = *(a1 + 104);
    v51[5] = v7;
    v8 = *(a1 + 56);
    v51[0] = *(a1 + 40);
    v51[1] = v8;
    v9 = *(a2 + 88);
    v50[2] = *(a2 + 72);
    v50[3] = v9;
    v10 = *(a2 + 120);
    v50[4] = *(a2 + 104);
    v50[5] = v10;
    v11 = *(a2 + 56);
    v50[0] = *(a2 + 40);
    v50[1] = v11;
    v12 = v51[0];
    if (*(&v51[0] + 1) == 1)
    {
      if (*(&v50[0] + 1) == 1)
      {
        v13 = 1;
        *&v38 = *&v51[0];
        *(&v38 + 1) = 1;
        v14 = *(a1 + 72);
        v15 = *(a1 + 104);
        v41 = *(a1 + 88);
        v42 = v15;
        v43 = *(a1 + 120);
        v39 = *(a1 + 56);
        v40 = v14;
        sub_10002E868(v51, v52);
        sub_10002E868(v50, v52);
        v16 = &v38;
LABEL_20:
        sub_10000D52C(v16, &qword_100219E60);
        return v13 & 1;
      }
    }

    else if (*(&v50[0] + 1) != 1)
    {
      v31 = v50[0];
      v23 = *(a2 + 72);
      v24 = *(a2 + 104);
      v34 = *(a2 + 88);
      v35 = v24;
      v36 = *(a2 + 120);
      v32 = *(a2 + 56);
      v33 = v23;
      v42 = v24;
      v43 = v36;
      v40 = v23;
      v41 = v34;
      v38 = v50[0];
      v39 = v32;
      v25 = *(a1 + 56);
      v26 = *(a1 + 120);
      v27 = *(a1 + 88);
      v52[4] = *(a1 + 104);
      v52[5] = v26;
      v28 = *(a1 + 72);
      v52[1] = v25;
      v52[2] = v28;
      v52[3] = v27;
      v52[0] = v51[0];
      v13 = sub_10002E650(v52, &v38);
      sub_10002E868(v51, v37);
      sub_10002E868(v50, v37);
      sub_10000D52C(&v31, &qword_100219E60);
      v37[0] = v12;
      v29 = *(a1 + 72);
      v30 = *(a1 + 104);
      v37[3] = *(a1 + 88);
      v37[4] = v30;
      v37[5] = *(a1 + 120);
      v37[1] = *(a1 + 56);
      v37[2] = v29;
      v16 = v37;
      goto LABEL_20;
    }

    v38 = v51[0];
    v18 = *(a1 + 72);
    v19 = *(a1 + 104);
    v41 = *(a1 + 88);
    v42 = v19;
    v43 = *(a1 + 120);
    v39 = *(a1 + 56);
    v40 = v18;
    v44 = v50[0];
    v20 = *(a2 + 120);
    v21 = *(a2 + 88);
    v48 = *(a2 + 104);
    v49 = v20;
    v22 = *(a2 + 56);
    v46 = *(a2 + 72);
    v47 = v21;
    v45 = v22;
    sub_10002E868(v51, v52);
    sub_10002E868(v50, v52);
    sub_10000D52C(&v38, qword_100219E70);
    v13 = 0;
  }

  else
  {
    v13 = 0;
  }

  return v13 & 1;
}

unint64_t sub_10002EB9C()
{
  result = qword_100219E68;
  if (!qword_100219E68)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100219E68);
  }

  return result;
}

__n128 sub_10002EBE8(uint64_t a1, uint64_t a2)
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

uint64_t sub_10002EC04(uint64_t a1, unsigned int a2)
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

uint64_t sub_10002EC60(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_10002ECDC()
{
  result = type metadata accessor for Optional();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for FilterViewModel.FilterConfiguration();
    if (v2 <= 0x3F)
    {
      result = swift_checkMetadataState();
      if (v3 <= 0x3F)
      {
        result = type metadata accessor for LocalizedStringResource();
        if (v4 <= 0x3F)
        {
          result = type metadata accessor for ObservationRegistrar();
          if (v5 <= 0x3F)
          {
            return swift_initClassMetadata2();
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_10002EEAC()
{
  swift_getKeyPath();
  sub_10002F0BC();

  return *(v0 + 16);
}

uint64_t sub_10002EF20@<X0>(_BYTE *a1@<X8>)
{
  result = sub_10002EEAC();
  *a1 = result & 1;
  return result;
}

uint64_t sub_10002EF78(char a1)
{
  v2 = a1 & 1;
  result = dispatch thunk of static Equatable.== infix(_:_:)();
  if (result)
  {
    *(v1 + 16) = v2;
  }

  else
  {
    __chkstk_darwin(result);
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10002F15C();
  }

  return result;
}

uint64_t sub_10002F234@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  sub_10002F0BC();

  v3 = *(*v1 + 120);
  swift_beginAccess();
  v4 = type metadata accessor for Optional();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t sub_10002F358(uint64_t a1, uint64_t a2)
{
  v4 = *(*a1 + 120);
  swift_beginAccess();
  v5 = type metadata accessor for Optional();
  (*(*(v5 - 8) + 24))(a1 + v4, a2, v5);
  return swift_endAccess();
}

uint64_t sub_10002F420()
{
  v0 = sub_100031780();

  return v0;
}

uint64_t sub_10002F458@<X0>(uint64_t *a1@<X8>)
{
  *a1 = sub_100031780();
  a1[1] = v2;
}

uint64_t sub_10002F498(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_10002F4D8(v1, v2);
}

uint64_t sub_10002F4D8(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(*v2 + 128));
  v6 = dispatch thunk of static Equatable.== infix(_:_:)();
  if (v6)
  {
    *v5 = a1;
    v5[1] = a2;
  }

  else
  {
    __chkstk_darwin(v6);
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10002F15C();
  }
}

uint64_t sub_10002F650()
{
  swift_getKeyPath();
  sub_10002F0BC();

  return *(v0 + *(*v0 + 136));
}

uint64_t sub_10002F6D8(char a1)
{
  v2 = *(*v1 + 136);
  v3 = a1 & 1;
  result = dispatch thunk of static Equatable.== infix(_:_:)();
  if (result)
  {
    *(v1 + v2) = v3;
  }

  else
  {
    __chkstk_darwin(result);
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10002F15C();
  }

  return result;
}

uint64_t sub_10002F838@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  sub_10002F0BC();

  v3 = *(*v1 + 144);
  swift_beginAccess();
  v4 = type metadata accessor for FilterViewModel.FilterConfiguration();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t sub_10002F9A8(uint64_t a1, uint64_t a2)
{
  v4 = *(*a1 + 144);
  swift_beginAccess();
  v5 = type metadata accessor for FilterViewModel.FilterConfiguration();
  (*(*(v5 - 8) + 24))(a1 + v4, a2, v5);
  return swift_endAccess();
}

uint64_t sub_10002FA84()
{
  v0 = sub_1000318B4();

  return v0;
}

uint64_t sub_10002FABC(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(*v2 + 152));
  v6 = dispatch thunk of static Equatable.== infix(_:_:)();
  if (v6)
  {
    *v5 = a1;
    v5[1] = a2;
  }

  else
  {
    __chkstk_darwin(v6);
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10002F15C();
  }
}

uint64_t sub_10002FC34()
{
  sub_100031940();
}

uint64_t sub_10002FC5C(uint64_t a1)
{
  v3 = *(*v1 + 160);
  type metadata accessor for Array();
  swift_getWitnessTable();
  v4 = dispatch thunk of static Equatable.== infix(_:_:)();
  if (v4)
  {
    *(v1 + v3) = a1;
  }

  else
  {
    __chkstk_darwin(v4);
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10002F15C();
  }
}

uint64_t sub_10002FE08()
{
  v1 = type metadata accessor for FilterViewModel.FilterConfiguration();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v8 - v3;
  if (sub_10002FF34())
  {
    sub_10002F838(v4);
    v5 = *(v4 + 2);
    v6 = *(v2 + 8);

    v6(v4, v1);
  }

  else
  {
    v5 = *(v0 + *(*v0 + 176));
  }

  return v5;
}

BOOL sub_10002FF34()
{
  v0 = type metadata accessor for FilterViewModel.FilterConfiguration();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = (&v6 - v2);
  sub_10002F838(&v6 - v2);
  v4 = *v3;
  (*(v1 + 8))(v3, v0);
  return v4 > 0;
}

uint64_t sub_10003007C()
{
  v0 = type metadata accessor for FilterViewModel.FilterConfiguration();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = (&v16 - v2);
  v4 = objc_opt_self();
  v5 = [v4 mainBundle];
  v17._object = 0xE000000000000000;
  v6._countAndFlagsBits = 0xD00000000000002DLL;
  v6._object = 0x80000001001BE650;
  v7._countAndFlagsBits = 0;
  v7._object = 0xE000000000000000;
  v17._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v6, 0, v5, v7, v17);

  v8 = [v4 mainBundle];
  v18._object = 0xE000000000000000;
  v9._object = 0x80000001001BE680;
  v9._countAndFlagsBits = 0xD000000000000025;
  v10._countAndFlagsBits = 0;
  v10._object = 0xE000000000000000;
  v18._countAndFlagsBits = 0;
  countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v9, 0, v8, v10, v18)._countAndFlagsBits;

  sub_100009F70(&qword_100219EF8);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1001AEB90;
  sub_10002F838(v3);
  v13 = *v3;
  (*(v1 + 8))(v3, v0);
  *(v12 + 56) = &type metadata for Int;
  *(v12 + 64) = &protocol witness table for Int;
  *(v12 + 32) = v13;
  v14 = String.init(format:_:)();

  if (!sub_10002FF34())
  {
    v14 = countAndFlagsBits;
  }

  return v14;
}

uint64_t sub_1000302E0()
{
  v0 = sub_100031780();
  v2 = HIBYTE(v1) & 0xF;
  if ((v1 & 0x2000000000000000) == 0)
  {
    v2 = v0 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    sub_10002FE08();
    type metadata accessor for Array();
    swift_getWitnessTable();
    v3 = _ArrayProtocol.filter(_:)();
    return sub_10002FC5C(v3);
  }

  else
  {
    v5 = sub_10002FE08();

    return sub_10002FC5C(v5);
  }
}

uint64_t sub_1000303E0(uint64_t a1, uint64_t a2)
{
  v2 = *(*a2 + 104);
  v3 = *(*a2 + 88);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(AssociatedTypeWitness);
  v7 = v14 - v6;
  (*(v2 + 88))(v3, v2);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v9 = sub_1001A699C(AssociatedTypeWitness, AssociatedConformanceWitness);
  v11 = v10;
  (*(v5 + 8))(v7, AssociatedTypeWitness);
  v14[2] = v9;
  v14[3] = v11;
  v14[0] = sub_100031780();
  v14[1] = v12;
  sub_100027068();
  LOBYTE(v9) = StringProtocol.localizedStandardContains<A>(_:)();

  return v9 & 1;
}

uint64_t sub_1000305A0()
{
  v0 = sub_10002FE08();

  return sub_10002FC5C(v0);
}

void sub_1000305D8()
{
  sub_10002F4D8(0, 0xE000000000000000);
  sub_10002EF78(0);
  v0 = objc_opt_self();
  v2[4] = sub_10007F098;
  v2[5] = 0;
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 1107296256;
  v2[2] = sub_1001914E4;
  v2[3] = &unk_10020A9B8;
  v1 = _Block_copy(v2);
  [v0 animateWithDuration:0 delay:v1 options:0 animations:0.3 completion:0.0];
  _Block_release(v1);
}

uint64_t sub_1000306B8(char a1)
{
  if (a1)
  {
    v2 = (*(*(*v1 + 96) + 48))(*(*v1 + 80));
  }

  else
  {
    v2 = 0;
    v3 = 0xE000000000000000;
  }

  return sub_10002FABC(v2, v3);
}

uint64_t sub_100030744(uint64_t a1)
{
  v47 = a1;
  v2 = *v1;
  v3 = *(*v1 + 104);
  v4 = *(*v1 + 88);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v53 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(AssociatedTypeWitness);
  v52 = &v46 - v5;
  v6 = type metadata accessor for Date.FormatStyle.Symbol.Weekday();
  v50 = *(v6 - 8);
  v51 = v6;
  __chkstk_darwin(v6);
  v49 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v3 + 8);
  v9 = swift_getAssociatedTypeWitness();
  v48 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v46 - v10;
  v12 = type metadata accessor for LocalizedStringResource();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v2 + 80);
  v17 = *(v2 + 96);
  v54 = v3;
  v18 = sub_1000319C8(v47, v16, v4, v17, v3);
  v19 = 0;
  v20 = 0;
  if (v18)
  {
    (*(v13 + 16))(v15, v1 + *(*v1 + 216), v12);
    v19 = String.init(localized:)();
    v20 = v21;
  }

  v46 = v19;
  (*(v8 + 168))(v4, v8);
  v22 = v49;
  static Date.FormatStyle.Symbol.Weekday.wide.getter();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v24 = sub_1000FB998(v22, v9, AssociatedConformanceWitness);
  v26 = v25;
  (*(v50 + 8))(v22, v51);
  (*(v48 + 8))(v11, v9);
  v58 = v24;
  v59 = v26;
  v27 = v52;
  (*(v54 + 88))(v4, v54);
  v28 = AssociatedTypeWitness;
  v29 = swift_getAssociatedConformanceWitness();
  v30 = sub_1001A699C(v28, v29);
  v32 = v31;
  result = (*(v53 + 8))(v27, v28);
  v34 = 0;
  v60 = v30;
  v61 = v32;
  v62 = v46;
  v63 = v20;
  v35 = &_swiftEmptyArrayStorage;
LABEL_4:
  if (v34 <= 3)
  {
    v36 = 3;
  }

  else
  {
    v36 = v34;
  }

  v37 = v36 + 1;
  v38 = 16 * v34 + 40;
  while (1)
  {
    if (v34 == 3)
    {
      sub_100009F70(&qword_100219F00);
      swift_arrayDestroy();
      v56 = v35;
      sub_100009F70(&qword_100219F08);
      sub_100031EF4();
      v45 = BidirectionalCollection<>.joined(separator:)();

      return v45;
    }

    if (v37 == ++v34)
    {
      break;
    }

    v39 = v38 + 16;
    v40 = *&v57[v38];
    v38 += 16;
    if (v40)
    {
      v41 = *(&v54 + v39);

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_10016684C(0, v35[2] + 1, 1, v35);
        v35 = result;
      }

      v43 = v35[2];
      v42 = v35[3];
      if (v43 >= v42 >> 1)
      {
        result = sub_10016684C((v42 > 1), v43 + 1, 1, v35);
        v35 = result;
      }

      v35[2] = v43 + 1;
      v44 = &v35[2 * v43];
      *(v44 + 4) = v41;
      *(v44 + 5) = v40;
      goto LABEL_4;
    }
  }

  __break(1u);
  return result;
}

void sub_100030CD0(char a1, uint64_t a2, uint64_t a3, unsigned __int8 a4, uint64_t a5)
{
  v11 = *v5;
  sub_100009F70(qword_100218F38);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1001AD8A0;
  v13 = (*(*(v11 + 96) + 40))(*(v11 + 80));
  *(v12 + 56) = &type metadata for AnalyticsString;
  *(v12 + 64) = &off_10021CBD0;
  *(v12 + 32) = 0;
  *(v12 + 40) = v13;
  *(v12 + 48) = v14;
  *(v12 + 96) = &type metadata for AnalyticsPageName;
  *(v12 + 104) = &off_10021CBA8;
  *(v12 + 72) = 9;
  *(v12 + 136) = &type metadata for AnalyticsModuleName;
  *(v12 + 144) = &off_10021CC30;
  *(v12 + 112) = a1;
  *(v12 + 176) = &type metadata for AnalyticsModuleAction;
  *(v12 + 184) = &off_10021CC08;
  *(v12 + 152) = a2;
  *(v12 + 160) = a3;
  *(v12 + 168) = a4;
  if (*(a5 + 72))
  {
    v15 = *(a5 + 64);
    v16 = *(a5 + 72);
  }

  else
  {
    v15 = 0;
    v16 = 0xE000000000000000;
  }

  v30 = &type metadata for AnalyticsString;
  v31 = &off_10021CBD0;
  LOBYTE(aBlock) = 1;
  v28 = v15;
  v29 = v16;
  sub_1000109A4(a2, a3, a4);
  v33 = v12;
  v17 = *(v12 + 16);
  v18 = *(v12 + 24);

  if (v17 >= v18 >> 1)
  {
    v12 = sub_1001666DC((v18 > 1), v17 + 1, 1, v12);
    v33 = v12;
  }

  v19 = sub_100031420(&aBlock, &type metadata for AnalyticsString);
  __chkstk_darwin(v19);
  v21 = &v26 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v22 + 16))(v21);
  sub_1000EB0D0(v17, v21, &v33, &type metadata for AnalyticsString, &off_10021CBD0);
  sub_100021498(&aBlock);
  v23 = String._bridgeToObjectiveC()();
  v24 = swift_allocObject();
  v24[2] = 0xD00000000000001ELL;
  v24[3] = 0x80000001001BDDE0;
  v24[4] = v12;
  v31 = sub_100010AAC;
  v32 = v24;
  aBlock = _NSConcreteStackBlock;
  v28 = 1107296256;
  v29 = sub_1000DCA40;
  v30 = &unk_10020A990;
  v25 = _Block_copy(&aBlock);

  AnalyticsSendEventLazy();
  _Block_release(v25);
}

uint64_t sub_100031018(uint64_t a1)
{
  v3 = (*(*(*v1 + 96) + 40))(*(*v1 + 80));
  sub_1000DCEDC(v3, v4, 9, a1);
}

uint64_t *sub_1000310B4()
{
  v1 = *v0;
  v2 = *(*v0 + 120);
  v3 = type metadata accessor for Optional();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);

  v4 = *(*v0 + 144);
  v5 = type metadata accessor for FilterViewModel.FilterConfiguration();
  (*(*(v5 - 8) + 8))(v0 + v4, v5);

  (*(*(*(v1 + 80) - 8) + 8))(v0 + *(*v0 + 168));

  v6 = *(*v0 + 216);
  v7 = type metadata accessor for LocalizedStringResource();
  (*(*(v7 - 8) + 8))(v0 + v6, v7);
  v8 = *(*v0 + 224);
  v9 = type metadata accessor for ObservationRegistrar();
  (*(*(v9 - 8) + 8))(v0 + v8, v9);
  return v0;
}

uint64_t sub_1000313B0()
{
  sub_1000310B4();

  return swift_deallocClassInstance();
}

uint64_t sub_100031420(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

uint64_t sub_100031470()
{

  return swift_deallocObject();
}

uint64_t sub_1000314B0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000314C8(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = *v1;
  v6 = *(*v1 + 88);
  v7 = type metadata accessor for Optional();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v18 - v9;
  v11 = *(v4 + 120);
  swift_beginAccess();
  (*(v8 + 16))(v10, v2 + v11, v7);
  v12 = *(v4 + 80);
  v18 = *(v5 + 96);
  v19 = *(*(*(*(&v18 + 1) + 8) + 8) + 8);
  swift_getWitnessTable();
  LOBYTE(v4) = dispatch thunk of static Equatable.== infix(_:_:)();
  v13 = (*(v8 + 8))(v10, v7);
  if (v4)
  {
    swift_beginAccess();
    (*(v8 + 24))(v2 + v11, a1, v7);
    return swift_endAccess();
  }

  else
  {
    __chkstk_darwin(v13);
    *&v15 = v12;
    *(&v15 + 1) = v6;
    v16 = v18;
    *(&v18 - 2) = v15;
    *(&v18 - 1) = v16;
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    *(&v18 - 2) = v2;
    *(&v18 - 1) = a1;
    sub_10002F15C();
  }
}

uint64_t sub_100031780()
{
  swift_getKeyPath();
  sub_10002F0BC();

  return *(v0 + *(*v0 + 128));
}

uint64_t sub_10003180C()
{
  swift_getKeyPath();
  sub_10002F15C();
}

uint64_t sub_1000318B4()
{
  swift_getKeyPath();
  sub_10002F0BC();

  return *(v0 + *(*v0 + 152));
}

uint64_t sub_100031940()
{
  swift_getKeyPath();
  sub_10002F0BC();

  return *(v0 + *(*v0 + 160));
}

uint64_t sub_1000319C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(AssociatedTypeWitness);
  v10 = &v13 - v9;
  (*(a5 + 104))(a3, a5);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  LOBYTE(a5) = sub_100061120(AssociatedTypeWitness, AssociatedConformanceWitness);
  (*(v8 + 8))(v10, AssociatedTypeWitness);
  return a5 & 1;
}

uint64_t sub_100031B24@<X0>(uint64_t *a1@<X8>)
{
  *a1 = sub_100031940();
}

__n128 sub_100031B98(uint64_t a1, _OWORD *a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v3;
  return result;
}

uint64_t sub_100031BA4()
{
  *(*(v0 + 16) + *(**(v0 + 16) + 160)) = *(v0 + 24);
}

uint64_t sub_100031CA0()
{
  v1 = v0[4];
  v2 = (v0[2] + *(*v0[2] + 128));
  *v2 = v0[3];
  v2[1] = v1;
}

uint64_t sub_100031D60@<X0>(_BYTE *a1@<X8>)
{
  result = sub_10002EEAC();
  *a1 = result & 1;
  return result;
}

uint64_t sub_100031DEC@<X0>(uint64_t (*a1)(void)@<X3>, void *a2@<X8>)
{
  *a2 = a1();
  a2[1] = v3;
}

uint64_t sub_100031E48(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v7 = *a1;
  v6 = a1[1];

  return a5(v7, v6);
}

uint64_t sub_100031E9C()
{
  v1 = v0[4];
  v2 = (v0[2] + *(*v0[2] + 152));
  *v2 = v0[3];
  v2[1] = v1;
}

unint64_t sub_100031EF4()
{
  result = qword_100219F10;
  if (!qword_100219F10)
  {
    sub_10000B3DC(&qword_100219F08);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100219F10);
  }

  return result;
}

void *sub_10003200C()
{
  v0 = sub_100009F70(&qword_100219FA8);
  v1 = __chkstk_darwin(v0 - 8);
  v3 = &v43 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v1);
  v5 = &v43 - v4;
  v56 = type metadata accessor for Song();
  v48 = *(v56 - 8);
  __chkstk_darwin(v56);
  v59 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Track();
  v60 = *(v7 - 8);
  v8 = __chkstk_darwin(v7);
  v58 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v57 = &v43 - v10;
  v61 = sub_100009F70(&qword_100219FB0);
  __chkstk_darwin(v61);
  v12 = &v43 - v11;
  v13 = sub_100009F70(&qword_100219FB8);
  __chkstk_darwin(v13 - 8);
  v15 = &v43 - v14;
  v16 = sub_100009F70(&qword_100219FC0);
  v17 = *(v16 - 8);
  v18 = __chkstk_darwin(v16);
  v20 = &v43 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v22 = &v43 - v21;
  Playlist.tracks.getter();
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    sub_10000D52C(v15, &qword_100219FB8);
    return &_swiftEmptyArrayStorage;
  }

  else
  {
    (*(v17 + 32))(v22, v15, v16);
    v43 = v17;
    (*(v17 + 16))(v20, v22, v16);
    sub_1000328A0(&qword_100219FC8);
    dispatch thunk of Sequence.makeIterator()();
    v24 = *(v61 + 9);
    sub_1000328A0(&qword_100219FD0);
    dispatch thunk of Collection.endIndex.getter();
    if (*&v12[v24] == v62[0])
    {
      v61 = &_swiftEmptyArrayStorage;
    }

    else
    {
      v53 = (v60 + 4);
      v54 = (v60 + 2);
      v52 = (v60 + 11);
      v51 = enum case for Track.song(_:);
      v50 = (v48 + 56);
      v45 = (v60 + 1);
      v44 = (v60 + 12);
      v60 = (v48 + 32);
      v49 = (v48 + 48);
      v61 = &_swiftEmptyArrayStorage;
      v46 = v7;
      v47 = v5;
      v55 = v16;
      do
      {
        v25 = v22;
        v26 = v5;
        v27 = v3;
        v28 = dispatch thunk of Collection.subscript.read();
        v29 = v57;
        (*v54)(v57);
        v28(v62, 0);
        dispatch thunk of Collection.formIndex(after:)();
        v30 = v58;
        (*v53)(v58, v29, v7);
        v31 = (*v52)(v30, v7);
        if (v31 == v51)
        {
          (*v44)(v30, v7);
          v3 = v27;
          v32 = v30;
          v33 = v56;
          (*v60)(v27, v32, v56);
          (*v50)(v27, 0, 1, v33);
        }

        else
        {
          v3 = v27;
          v34 = v27;
          v35 = v56;
          (*v50)(v34, 1, 1, v56);
          v36 = v30;
          v33 = v35;
          (*v45)(v36, v7);
        }

        v5 = v26;
        sub_1000328F0(v3, v26);
        if ((*v49)(v26, 1, v33) == 1)
        {
          sub_10000D52C(v26, &qword_100219FA8);
          v22 = v25;
        }

        else
        {
          v37 = v3;
          v38 = *v60;
          (*v60)(v59, v26, v33);
          v22 = v25;
          if (swift_isUniquelyReferenced_nonNull_native())
          {
            v39 = v61;
          }

          else
          {
            v39 = sub_100166824(0, v61[2] + 1, 1, v61);
          }

          v41 = v39[2];
          v40 = v39[3];
          if (v41 >= v40 >> 1)
          {
            v39 = sub_100166824(v40 > 1, v41 + 1, 1, v39);
          }

          v39[2] = v41 + 1;
          v42 = (*(v48 + 80) + 32) & ~*(v48 + 80);
          v61 = v39;
          v38(v39 + v42 + *(v48 + 72) * v41, v59, v33);
          v3 = v37;
          v7 = v46;
          v5 = v47;
        }

        v16 = v55;
        dispatch thunk of Collection.endIndex.getter();
      }

      while (*&v12[v24] != v62[0]);
    }

    sub_10000D52C(v12, &qword_100219FB0);
    (*(v43 + 8))(v22, v16);
    return v61;
  }
}

uint64_t sub_1000327D4(uint64_t a1)
{
  *(a1 + 8) = sub_100032858(&qword_100219F98, &type metadata accessor for Playlist);
  result = sub_100032858(&qword_100219FA0, &type metadata accessor for Playlist);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_100032858(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000328A0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_10000B3DC(&qword_100219FC0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000328F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100009F70(&qword_100219FA8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_100032974()
{
  result = qword_100219FD8;
  if (!qword_100219FD8)
  {
    type metadata accessor for Artist();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100219FD8);
  }

  return result;
}

unint64_t sub_1000329D0()
{
  result = qword_100219FE0;
  if (!qword_100219FE0)
  {
    sub_10000B3DC(&qword_100219FE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100219FE0);
  }

  return result;
}

uint64_t sub_100032A34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for AppleMusicFetcher();
  *(v3 + 16) = swift_allocObject();
  swift_defaultActor_initialize();
  v7 = swift_task_alloc();
  *(v3 + 24) = v7;
  *v7 = v3;
  v7[1] = sub_100032B08;

  return sub_10018482C(a1, a2, a3);
}

uint64_t sub_100032B08()
{
  v2 = *v1;
  *(v2 + 32) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_100032C44);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_100032C44()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100032CA8()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_100032D3C()
{
  (*(*(*(*v0 + 80) - 8) + 8))(v0 + *(*v0 + 96));

  return swift_deallocClassInstance();
}

uint64_t sub_100032E0C@<X0>(uint64_t *a1@<X8>)
{
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t sub_100032E5C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_100032EA4(uint64_t a1, int a2)
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

uint64_t sub_100032EEC(uint64_t result, int a2, int a3)
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

uint64_t sub_100032F58()
{
  v1 = sub_100032FE0();
  v2 = v0 + 4;
  if (v1)
  {
    v2 = v0;
  }

  v3 = *v2;

  return v3;
}

BOOL sub_100032FE0()
{
  type metadata accessor for Array();
  swift_getWitnessTable();
  return (Collection.isEmpty.getter() & 1) == 0;
}

uint64_t sub_100033050()
{
  type metadata accessor for Array();

  swift_getWitnessTable();
  Collection.prefix(_:)();
  type metadata accessor for ArraySlice();
  swift_getWitnessTable();
  return Array.init<A>(_:)();
}

uint64_t sub_10003311C()
{
  type metadata accessor for Array();

  swift_getWitnessTable();
  Collection.prefix(_:)();
  type metadata accessor for ArraySlice();
  swift_getWitnessTable();
  return Array.init<A>(_:)();
}

uint64_t sub_1000331E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(*(v2 + 96) + 16))
  {
    return URL.appending(queryItems:)();
  }

  v6 = type metadata accessor for URL();
  v7 = *(*(v6 - 8) + 16);

  return v7(a2, a1, v6);
}

void sub_100033274(void *a1)
{
  sub_100009F70(qword_100218F38);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001AD8A0;
  v5 = a1[2];
  v4 = a1[3];
  *(inited + 56) = &type metadata for AnalyticsString;
  *(inited + 64) = &off_10021CBD0;
  *(inited + 32) = 0;
  *(inited + 40) = v5;
  *(inited + 48) = v4;
  v6 = *(v1 + 104);
  if (v6 == 15)
  {
    LOBYTE(v6) = 0;
  }

  *(inited + 96) = &type metadata for AnalyticsPageName;
  *(inited + 104) = &off_10021CBA8;
  *(inited + 72) = v6;
  *(inited + 136) = &type metadata for AnalyticsModuleName;
  *(inited + 144) = &off_10021CC30;
  *(inited + 112) = 16;
  *(inited + 176) = &type metadata for AnalyticsModuleAction;
  *(inited + 184) = &off_10021CC08;
  *(inited + 152) = xmmword_1001AF560;
  *(inited + 168) = 3;
  if (a1[9])
  {
    v7 = a1[8];
    v8 = a1[9];
  }

  else
  {
    v7 = 0;
    v8 = 0xE000000000000000;
  }

  LOBYTE(aBlock) = 1;
  v15 = v7;
  v16 = v8;

  v9 = sub_1001666DC(1, 5, 1, inited);
  v13 = v9;
  sub_1000109BC(&aBlock, v20);
  sub_1000EB0D0(4, v20, &v13, &type metadata for AnalyticsString, &off_10021CBD0);
  sub_100010A18(&aBlock);
  v10 = String._bridgeToObjectiveC()();
  v11 = swift_allocObject();
  v11[2] = 0xD00000000000001ELL;
  v11[3] = 0x80000001001BDDE0;
  v11[4] = v9;
  v18 = sub_100010AAC;
  v19 = v11;
  aBlock = _NSConcreteStackBlock;
  v15 = 1107296256;
  v16 = sub_1000DCA40;
  v17 = &unk_10020AB90;
  v12 = _Block_copy(&aBlock);

  AnalyticsSendEventLazy();
  _Block_release(v12);
}

uint64_t sub_1000334DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X8>)
{
  v13 = LocalizedStringKey.init(stringLiteral:)();
  v15 = v14;
  v17 = v16;
  v19 = v18;
  result = LocalizedStringKey.init(stringLiteral:)();
  *a7 = v13;
  *(a7 + 8) = v15;
  *(a7 + 16) = v17 & 1;
  *(a7 + 24) = v19;
  *(a7 + 32) = result;
  *(a7 + 40) = v22;
  *(a7 + 48) = v21 & 1;
  *(a7 + 56) = v23;
  *(a7 + 64) = a1;
  *(a7 + 72) = a2;
  *(a7 + 80) = a3;
  *(a7 + 88) = a4;
  *(a7 + 96) = a5;
  *(a7 + 104) = a6;
  return result;
}

uint64_t sub_1000335B8()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 sub_1000335F4(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 89) = *(a2 + 89);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_100033620(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 105))
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

uint64_t sub_100033668(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 104) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 105) = 1;
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

    *(result + 105) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1000336DC()
{

  return swift_deallocObject();
}

uint64_t sub_10003371C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100033744(uint64_t a1)
{
  v3 = type metadata accessor for URL();
  v1[18] = v3;
  v1[19] = *(v3 - 8);
  v4 = swift_task_alloc();
  v1[20] = v4;
  v5 = swift_task_alloc();
  v1[21] = v5;
  *v5 = v1;
  v5[1] = sub_100033840;

  return sub_100033D7C(v4, a1);
}

uint64_t sub_100033840()
{
  *(*v1 + 176) = v0;

  if (v0)
  {
    v2 = sub_100033C58;
  }

  else
  {
    v2 = sub_100033954;
  }

  return _swift_task_switch(v2);
}

uint64_t sub_100033954()
{
  v1 = [objc_allocWithZone(CLKWatchFaceLibrary) init];
  v0[23] = v1;
  URL._bridgeToObjectiveC()(v2);
  v4 = v3;
  v0[24] = v3;
  v0[2] = v0;
  v0[3] = sub_100033AA0;
  v5 = swift_continuation_init();
  v0[17] = sub_100009F70(&qword_10021A1B0);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_100034600;
  v0[13] = &unk_10020AC50;
  v0[14] = v5;
  [v1 addWatchFaceAtURL:v4 completionHandler:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_100033AA0()
{
  v1 = *(*v0 + 48);
  *(*v0 + 200) = v1;
  if (v1)
  {
    v2 = sub_100033CBC;
  }

  else
  {
    v2 = sub_100033BB0;
  }

  return _swift_task_switch(v2);
}

uint64_t sub_100033BB0()
{
  v1 = *(v0 + 192);
  v3 = *(v0 + 152);
  v2 = *(v0 + 160);
  v4 = *(v0 + 144);

  sub_100035A14(v2, "Failed to remove file at %s possibly does not exist");
  (*(v3 + 8))(v2, v4);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_100033C58()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100033CBC()
{
  v1 = v0[24];
  v2 = v0[23];
  v4 = v0[19];
  v3 = v0[20];
  v5 = v0[18];
  swift_willThrow();

  sub_100035A14(v3, "Failed to remove file at %s possibly does not exist");
  (*(v4 + 8))(v3, v5);

  v6 = v0[1];

  return v6();
}

uint64_t sub_100033D7C(uint64_t a1, uint64_t a2)
{
  v2[4] = a1;
  v2[5] = a2;
  v3 = type metadata accessor for URL();
  v2[6] = v3;
  v2[7] = *(v3 - 8);
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();

  return _swift_task_switch(sub_100033E80);
}

uint64_t sub_100033E80()
{
  v1 = v0[5];
  v2 = [objc_opt_self() defaultSessionConfiguration];
  v0[11] = [objc_opt_self() sessionWithConfiguration:v2];

  v3 = v1[3];
  v4 = v1[4];
  sub_100028124(v1, v3);
  (*(v4 + 40))(v3, v4);
  v5 = swift_task_alloc();
  v0[12] = v5;
  *v5 = v0;
  v5[1] = sub_100034068;
  v7 = v0[9];
  v6 = v0[10];

  return NSURLSession.download(from:delegate:)(v6, v7, 0);
}

uint64_t sub_100034068(void *a1)
{
  v4 = *v2;
  v4[13] = v1;

  v5 = v4[9];
  v6 = v4[7];
  v7 = v4[6];
  if (v1)
  {
    (*(v6 + 8))(v5, v7);
    v8 = sub_10003454C;
  }

  else
  {

    v9 = *(v6 + 8);
    v4[14] = v9;
    v4[15] = (v6 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v9(v5, v7);
    v8 = sub_100034240;
  }

  return _swift_task_switch(v8);
}

uint64_t sub_100034240()
{
  v1 = *(v0 + 104);
  sub_1000357A8(*(v0 + 64));
  v2 = *(v0 + 48);
  if (v1)
  {
    v3 = *(v0 + 88);
    (*(v0 + 112))(*(v0 + 80), *(v0 + 48));

LABEL_3:

    v4 = *(v0 + 8);
    goto LABEL_4;
  }

  v6 = *(v0 + 112);
  v7 = *(v0 + 64);
  URL.appendingPathComponent(_:isDirectory:)();
  v6(v7, v2);
  v8 = objc_opt_self();
  v9 = [v8 defaultManager];
  URL._bridgeToObjectiveC()(v10);
  v12 = v11;
  URL._bridgeToObjectiveC()(v13);
  v15 = v14;
  *(v0 + 16) = 0;
  LODWORD(v6) = [v9 copyItemAtURL:v12 toURL:v14 error:v0 + 16];

  v16 = *(v0 + 16);
  if (!v6)
  {
    v22 = v16;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    v23 = [v8 defaultManager];
    URL._bridgeToObjectiveC()(v24);
    v26 = v25;
    *(v0 + 24) = 0;
    v27 = [v23 removeItemAtURL:v25 error:v0 + 24];

    v28 = *(v0 + 112);
    v29 = *(v0 + 88);
    v35 = *(v0 + 80);
    v30 = *(v0 + 48);
    v32 = *(v0 + 24);
    v31 = *(v0 + 32);
    if (v27)
    {
      swift_willThrow();
      v33 = v32;
    }

    else
    {
      v34 = v32;
      _convertNSErrorToError(_:)();

      swift_willThrow();
    }

    v28(v31, v30);
    v28(v35, v30);
    goto LABEL_3;
  }

  v17 = *(v0 + 112);
  v18 = *(v0 + 80);
  v19 = *(v0 + 88);
  v20 = *(v0 + 48);
  v21 = v16;
  v17(v18, v20);

  v4 = *(v0 + 8);
LABEL_4:

  return v4();
}

uint64_t sub_10003454C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100034600(uint64_t a1, void *a2)
{
  v3 = sub_100028124((a1 + 32), *(a1 + 56));
  v4 = *v3;
  if (a2)
  {
    sub_100009F70(qword_10021A1B8);
    v5 = swift_allocError();
    *v6 = a2;
    v7 = a2;

    return _swift_continuation_throwingResumeWithError(v4, v5);
  }

  else
  {
    v8 = *v3;

    return _swift_continuation_throwingResume(v8);
  }
}

uint64_t sub_1000346AC(uint64_t a1)
{
  v1[4] = a1;
  v2 = type metadata accessor for URL();
  v1[5] = v2;
  v1[6] = *(v2 - 8);
  v1[7] = swift_task_alloc();
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();

  return _swift_task_switch(sub_1000347D4);
}

uint64_t sub_1000347D4()
{
  v1 = v0[4];
  v2 = [objc_opt_self() defaultSessionConfiguration];
  v0[13] = [objc_opt_self() sessionWithConfiguration:v2];

  v3 = v1[3];
  v4 = v1[4];
  sub_100028124(v1, v3);
  (*(v4 + 16))(v3, v4);
  v5 = swift_task_alloc();
  v0[14] = v5;
  *v5 = v0;
  v5[1] = sub_1000349E4;
  v7 = v0[11];
  v6 = v0[12];

  return NSURLSession.download(from:delegate:)(v6, v7, 0);
}

uint64_t sub_1000349E4(void *a1)
{
  v4 = *v2;
  v4[15] = v1;

  v5 = v4[11];
  v6 = v4[6];
  v7 = v4[5];
  if (v1)
  {
    (*(v6 + 8))(v5, v7);
    v8 = sub_1000356C8;
  }

  else
  {

    v9 = *(v6 + 8);
    v4[16] = v9;
    v4[17] = (v6 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v9(v5, v7);
    v8 = sub_100034BBC;
  }

  return _swift_task_switch(v8);
}

uint64_t sub_100034BBC()
{
  v70 = v0;
  v1 = *(v0 + 120);
  sub_1000357A8(*(v0 + 72));
  if (v1)
  {
    v2 = *(v0 + 104);
    (*(v0 + 128))(*(v0 + 96), *(v0 + 40));

LABEL_4:

    v8 = *(v0 + 8);
LABEL_5:

    return v8();
  }

  v3 = *(v0 + 32);
  v4 = v3[3];
  v5 = v3[4];
  sub_100028124(v3, v4);
  (*(v5 + 16))(v4, v5);
  v6 = *(v0 + 128);
  v7 = *(v0 + 72);
  v10 = *(v0 + 64);
  v11 = *(v0 + 40);
  URL.lastPathComponent.getter();
  v6(v10, v11);
  URL.appendingPathComponent(_:isDirectory:)();

  v6(v7, v11);
  v12 = objc_opt_self();
  *(v0 + 144) = v12;
  v13 = [v12 defaultManager];
  URL._bridgeToObjectiveC()(v14);
  v16 = v15;
  URL._bridgeToObjectiveC()(v17);
  v19 = v18;
  *(v0 + 16) = 0;
  v20 = [v13 copyItemAtURL:v16 toURL:v18 error:v0 + 16];

  v21 = *(v0 + 16);
  if (!v20)
  {
    v25 = v21;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    v26 = [*(v0 + 144) defaultManager];
    URL._bridgeToObjectiveC()(v27);
    v29 = v28;
    *(v0 + 24) = 0;
    v30 = [v26 removeItemAtURL:v28 error:v0 + 24];

    v31 = *(v0 + 24);
    v32 = *(v0 + 128);
    v33 = *(v0 + 104);
    v68 = *(v0 + 96);
    v34 = *(v0 + 80);
    v35 = *(v0 + 40);
    if (v30)
    {
      swift_willThrow();
      v36 = v31;
    }

    else
    {
      v37 = v31;
      _convertNSErrorToError(_:)();

      swift_willThrow();
    }

    v32(v34, v35);
    v32(v68, v35);
    goto LABEL_4;
  }

  v22 = v21;
  v23 = Data.init(contentsOf:options:)();
  *(v0 + 152) = v23;
  *(v0 + 160) = v24;
  v38 = v23;
  v39 = v24;
  v40 = objc_allocWithZone(UIImage);
  sub_100035D5C(v38, v39);
  isa = Data._bridgeToObjectiveC()().super.isa;
  v42 = [v40 initWithData:isa];
  *(v0 + 168) = v42;

  sub_100035DB0(v38, v39);
  if (!v42)
  {
    if (qword_100218470 != -1)
    {
      swift_once();
    }

    v44 = *(v0 + 80);
    v46 = *(v0 + 48);
    v45 = *(v0 + 56);
    v47 = *(v0 + 40);
    v48 = type metadata accessor for Logger();
    sub_10001FDF4(v48, qword_100230610);
    (*(v46 + 16))(v45, v44, v47);
    v49 = Logger.logObject.getter();
    v50 = static os_log_type_t.error.getter();
    v51 = os_log_type_enabled(v49, v50);
    v52 = *(v0 + 128);
    v53 = *(v0 + 56);
    v54 = *(v0 + 40);
    if (v51)
    {
      v55 = swift_slowAlloc();
      v66 = v52;
      v56 = swift_slowAlloc();
      v69 = v56;
      *v55 = 136315138;
      sub_100035F10();
      v57 = dispatch thunk of CustomStringConvertible.description.getter();
      log = v49;
      v59 = v58;
      v66(v53, v54);
      v60 = sub_10005D4E8(v57, v59, &v69);

      *(v55 + 4) = v60;
      _os_log_impl(&_mh_execute_header, log, v50, "Failed to create image from %s", v55, 0xCu);
      sub_100021498(v56);

      sub_100035DB0(v38, v39);
    }

    else
    {
      sub_100035DB0(v38, v39);

      v52(v53, v54);
    }

    v61 = *(v0 + 128);
    v62 = *(v0 + 96);
    v63 = *(v0 + 104);
    v64 = *(v0 + 80);
    v65 = *(v0 + 40);
    sub_100035A14(v64, "Failed to delete wallpaper at %s");

    v61(v64, v65);
    v61(v62, v65);

    v8 = *(v0 + 8);
    goto LABEL_5;
  }

  v43 = swift_task_alloc();
  *(v0 + 176) = v43;
  *v43 = v0;
  v43[1] = sub_100035270;

  return sub_100035F68(v42);
}

uint64_t sub_100035270()
{
  *(*v1 + 184) = v0;

  if (v0)
  {
    v2 = sub_1000354E8;
  }

  else
  {
    v2 = sub_1000353B0;
  }

  return _swift_task_switch(v2);
}

uint64_t sub_1000353B0()
{
  v1 = *(v0 + 160);
  v2 = *(v0 + 152);

  sub_100035DB0(v2, v1);
  v3 = *(v0 + 128);
  v4 = *(v0 + 96);
  v5 = *(v0 + 104);
  v6 = *(v0 + 80);
  v7 = *(v0 + 40);
  sub_100035A14(v6, "Failed to delete wallpaper at %s");

  v3(v6, v7);
  v3(v4, v7);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_1000354E8()
{
  v1 = *(v0 + 160);
  v2 = *(v0 + 152);
  v3 = *(v0 + 80);

  sub_100035DB0(v2, v1);
  sub_100035A14(v3, "Failed to delete wallpaper at %s");
  v4 = [*(v0 + 144) defaultManager];
  URL._bridgeToObjectiveC()(v5);
  v7 = v6;
  *(v0 + 24) = 0;
  v8 = [v4 removeItemAtURL:v6 error:v0 + 24];

  v9 = *(v0 + 24);
  v10 = *(v0 + 128);
  v11 = *(v0 + 104);
  v18 = *(v0 + 96);
  v12 = *(v0 + 80);
  v13 = *(v0 + 40);
  if (v8)
  {
    swift_willThrow();
    v14 = v9;
  }

  else
  {
    v15 = v9;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  v10(v12, v13);
  v10(v18, v13);

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_1000356C8()
{

  v1 = *(v0 + 8);

  return v1();
}

id sub_1000357A8@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v19 - v7;
  static URL.temporaryDirectory.getter();
  v9 = [objc_opt_self() processInfo];
  v10 = [v9 globallyUniqueString];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  URL.appendingPathComponent(_:isDirectory:)();

  v11 = *(v3 + 8);
  v11(v6, v2);
  v12 = [objc_opt_self() defaultManager];
  URL._bridgeToObjectiveC()(v13);
  v15 = v14;
  v20 = 0;
  LOBYTE(v10) = [v12 createDirectoryAtURL:v14 withIntermediateDirectories:1 attributes:0 error:&v20];

  v16 = v20;
  if (v10)
  {
    (*(v3 + 32))(a1, v8, v2);
    return v16;
  }

  else
  {
    v18 = v20;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    return (v11)(v8, v2);
  }
}

void sub_100035A14(uint64_t a1, const char *a2)
{
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [objc_opt_self() defaultManager];
  URL._bridgeToObjectiveC()(v9);
  v11 = v10;
  v27 = 0;
  v12 = [v8 removeItemAtURL:v10 error:&v27];

  v13 = v27;
  if (v12)
  {

    v14 = v13;
  }

  else
  {
    v26 = v27;
    v15 = v27;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    if (qword_100218470 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_10001FDF4(v16, qword_100230610);
    (*(v5 + 16))(v7, a1, v4);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v26 = a2;
      v21 = v20;
      v27 = v20;
      *v19 = 136315138;
      sub_100035F10();
      v22 = dispatch thunk of CustomStringConvertible.description.getter();
      v24 = v23;
      (*(v5 + 8))(v7, v4);
      v25 = sub_10005D4E8(v22, v24, &v27);

      *(v19 + 4) = v25;
      _os_log_impl(&_mh_execute_header, v17, v18, v26, v19, 0xCu);
      sub_100021498(v21);
    }

    else
    {

      (*(v5 + 8))(v7, v4);
    }
  }
}

uint64_t sub_100035D5C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_100035DB0(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

void sub_100035E04(uint64_t a1)
{
  v1 = [objc_opt_self() creationRequestForAssetFromImage:a1];
}

uint64_t sub_100035E58(uint64_t a1, int a2, void *a3)
{
  v5 = sub_100028124((a1 + 32), *(a1 + 56));
  v6 = *v5;
  if (a2)
  {
    v5 = *v5;

    return _swift_continuation_throwingResume(v5);
  }

  if (!a3)
  {
    __break(1u);
    return _swift_continuation_throwingResume(v5);
  }

  sub_100009F70(qword_10021A1B8);
  v7 = swift_allocError();
  *v8 = a3;
  v9 = a3;

  return _swift_continuation_throwingResumeWithError(v6, v7);
}

unint64_t sub_100035F10()
{
  result = qword_10021A1A8;
  if (!qword_10021A1A8)
  {
    type metadata accessor for URL();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021A1A8);
  }

  return result;
}

uint64_t sub_100035F88()
{
  v1 = v0;
  v2 = v0 + 2;
  v3 = v0 + 10;
  v4 = v1[18];
  v5 = [objc_opt_self() sharedPhotoLibrary];
  v1[19] = v5;
  v6 = swift_allocObject();
  *(v6 + 16) = v4;
  v1[14] = sub_100036380;
  v1[15] = v6;
  v1[10] = _NSConcreteStackBlock;
  v1[11] = 1107296256;
  v1[12] = sub_1001914E4;
  v1[13] = &unk_10020AC00;
  v7 = _Block_copy(v3);
  v1[20] = v7;
  v8 = v4;

  v1[2] = v1;
  v1[3] = sub_100036150;
  v9 = swift_continuation_init();
  v1[17] = sub_100009F70(&qword_10021A1B0);
  v1[10] = _NSConcreteStackBlock;
  v1[11] = 1107296256;
  v1[12] = sub_100035E58;
  v1[13] = &unk_10020AC28;
  v1[14] = v9;
  [v5 performChanges:v7 completionHandler:v3];

  return _swift_continuation_await(v2);
}

uint64_t sub_100036150()
{
  v1 = *(*v0 + 48);
  *(*v0 + 168) = v1;
  if (v1)
  {
    v2 = sub_1000362CC;
  }

  else
  {
    v2 = sub_100036260;
  }

  return _swift_task_switch(v2);
}

uint64_t sub_100036260()
{
  v1 = *(v0 + 160);

  _Block_release(v1);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1000362CC()
{
  v1 = v0[20];
  v2 = v0[19];
  swift_willThrow();

  _Block_release(v1);
  v3 = v0[1];

  return v3();
}

uint64_t sub_100036348()
{

  return swift_deallocObject();
}

uint64_t sub_100036388(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000363B0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

void sub_10003641C()
{
  swift_checkMetadataState();
  if (v0 <= 0x3F)
  {
    sub_100038A58();
    if (v1 <= 0x3F)
    {
      type metadata accessor for ObservationRegistrar();
      if (v2 <= 0x3F)
      {
        swift_initClassMetadata2();
      }
    }
  }
}

uint64_t sub_10003656C()
{
  v0 = sub_100038AB0();

  return v0;
}

uint64_t sub_1000365A4(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(*v2 + 152));
  sub_100009F70(&qword_10021A250);
  sub_100038B78();
  v6 = dispatch thunk of static Equatable.== infix(_:_:)();
  if (v6)
  {
    *v5 = a1;
    v5[1] = a2;
  }

  else
  {
    __chkstk_darwin(v6);
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1000367D0();
  }
}

uint64_t sub_1000368A8()
{
  v1 = *(v0 + *(*v0 + 120));
  (*(*(*v0 + 88) + 104))(*(*v0 + 80), *(*v0 + 88));
  swift_getAssociatedTypeWitness();
  v2 = Array.count.getter();

  v3 = 4;
  if (v2 < 4)
  {
    v3 = v2;
  }

  if (v1)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_100036994@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  sub_100036730();

  v3 = *(*v1 + 176);
  swift_beginAccess();
  return sub_100038CFC(v1 + v3, a1);
}

uint64_t sub_100036A44(uint64_t a1)
{
  v2 = sub_100009F70(&qword_10021A248);
  __chkstk_darwin(v2 - 8);
  v4 = &v6 - v3;
  sub_100038CFC(a1, &v6 - v3);
  return sub_100036AD8(v4);
}

uint64_t sub_100036AD8(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = sub_100009F70(&qword_10021A248);
  __chkstk_darwin(v5);
  v7 = v13 - v6;
  v8 = *(v4 + 176);
  swift_beginAccess();
  sub_100038CFC(v1 + v8, v7);
  v13[0] = *(v4 + 80);
  sub_100038D6C();
  v9 = dispatch thunk of static Equatable.== infix(_:_:)();
  v10 = sub_10000D52C(v7, &qword_10021A248);
  if (v9)
  {
    swift_beginAccess();
    sub_100038E20(a1, v2 + v8);
    swift_endAccess();
  }

  else
  {
    __chkstk_darwin(v10);
    v13[-1] = v13[0];
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    *&v13[-1] = v2;
    *(&v13[-1] + 1) = a1;
    sub_1000367D0();
  }

  return sub_10000D52C(a1, &qword_10021A248);
}

uint64_t sub_100036D00(uint64_t a1, uint64_t a2)
{
  v4 = *(*a1 + 176);
  swift_beginAccess();
  sub_100038E20(a2, a1 + v4);
  return swift_endAccess();
}

char *sub_100036D78()
{
  v0 = type metadata accessor for GridItem.Size();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = (&v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = type metadata accessor for GridItem();
  __chkstk_darwin(v4 - 8);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v3 = xmmword_1001AF670;
  (*(v1 + 104))(v3, enum case for GridItem.Size.flexible(_:), v0);
  GridItem.init(_:spacing:alignment:)();
  v7 = sub_1000368A8();
  return sub_1000F6B38(v6, v7);
}

BOOL sub_100036F38()
{
  v1 = v0;
  v2 = sub_100009F70(qword_100218748);
  __chkstk_darwin(v2 - 8);
  v4 = &v8 - v3;
  (*(*(*v0 + 88) + 96))(*(*v0 + 80));
  v5 = type metadata accessor for URL();
  v6 = (*(*(v5 - 8) + 48))(v4, 1, v5);
  sub_10000D52C(v4, qword_100218748);
  return v6 != 1 && *(v1 + 40) != 0;
}

BOOL sub_1000370FC()
{
  v1 = sub_100009F70(qword_100218748);
  __chkstk_darwin(v1 - 8);
  v3 = &v7 - v2;
  (*(*(*v0 + 88) + 96))(*(*v0 + 80));
  v4 = type metadata accessor for URL();
  v5 = (*(*(v4 - 8) + 48))(v3, 1, v4) != 1;
  sub_10000D52C(v3, qword_100218748);
  return v5;
}

uint64_t sub_10003722C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v18 = a2;
  v6 = *(*v3 + 88);
  v7 = *(*v3 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = type metadata accessor for Optional();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v18 - v11;
  (*(v6 + 88))(v7, v6);
  v13 = *(AssociatedTypeWitness - 8);
  v14 = 1;
  if ((*(v13 + 48))(v12, 1, AssociatedTypeWitness) == 1)
  {
    AssociatedTypeWitness = v9;
  }

  else
  {
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    (*(AssociatedConformanceWitness + 40))(a1, v18, 1, AssociatedTypeWitness, AssociatedConformanceWitness);
    v14 = 0;
    v10 = v13;
  }

  (*(v10 + 8))(v12, AssociatedTypeWitness);
  v16 = type metadata accessor for URL();
  return (*(*(v16 - 8) + 56))(a3, v14, 1, v16);
}

uint64_t sub_1000374A0()
{
  v1 = *(v0 + *(*v0 + 168));
  v2 = v1[5];
  v3 = v1[6];
  sub_100028124(v1 + 2, v2);
  return (*(v3 + 16))(v2, v3);
}

uint64_t sub_100037514(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v12 = swift_allocObject();
  sub_100037594(a1, a2, a3, a4, a5, a6);
  return v12;
}

char *sub_100037594(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v13 = *v6;
  v14 = &v6[*(*v6 + 128)];
  *v14 = LocalizedStringKey.init(stringLiteral:)();
  *(v14 + 1) = v15;
  v14[16] = v16 & 1;
  *(v14 + 3) = v17;
  v18 = &v6[*(*v6 + 136)];
  *v18 = LocalizedStringKey.init(stringLiteral:)();
  *(v18 + 1) = v19;
  v18[16] = v20 & 1;
  *(v18 + 3) = v21;
  v22 = &v6[*(*v6 + 144)];
  *v22 = LocalizedStringKey.init(stringLiteral:)();
  *(v22 + 1) = v23;
  v22[16] = v24 & 1;
  *(v22 + 3) = v25;
  v26 = &v6[*(*v6 + 152)];
  *v26 = 0;
  *(v26 + 1) = 0;
  *&v6[*(*v6 + 160)] = 0x4008000000000000;
  v27 = *(*v6 + 168);
  if (qword_100218450 != -1)
  {
    swift_once();
  }

  *&v6[v27] = qword_100230608;
  v28 = *(*v6 + 176);
  v29 = type metadata accessor for AttributedString();
  (*(*(v29 - 8) + 56))(&v6[v28], 1, 1, v29);

  ObservationRegistrar.init()();
  *(v6 + 2) = a1;
  *(v6 + 3) = a2;
  *(v6 + 4) = a3;
  *(v6 + 5) = a4;
  (*(*(*(v13 + 80) - 8) + 32))(&v6[*(*v6 + 112)], a5);
  v6[*(*v6 + 120)] = a6 & 1;
  return v6;
}

uint64_t sub_100037854()
{
  sub_10004FF88();
  v1 = *(v0 + *(*v0 + 168));
  v2 = v1[5];
  v3 = v1[6];
  sub_100028124(v1 + 2, v2);
  return (*(v3 + 72))(v2, v3);
}

uint64_t sub_1000378C4()
{
  v1 = *(v0 + *(*v0 + 168));
  v2 = v1[5];
  v3 = v1[6];
  sub_100028124(v1 + 2, v2);
  return (*(v3 + 80))(v2, v3);
}

void sub_100037930(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(v3 + *(*v3 + 168));
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  sub_100150C00(a1, v6, AssociatedTypeWitness, AssociatedConformanceWitness);
  v9 = v6[5];
  v10 = v6[6];
  sub_100028124(v6 + 2, v9);
  if ((*(v10 + 32))(v9, v10) == 2)
  {
    v11 = 19;
  }

  else
  {
    v12 = v6[5];
    v13 = v6[6];
    sub_100028124(v6 + 2, v12);
    if ((*(v13 + 32))(v12, v13) != 3)
    {
      return;
    }

    v11 = 20;
  }

  v14 = v3[2];
  v15 = v3[3];
  sub_100009F70(qword_100218F38);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001AD8A0;
  *(inited + 56) = &type metadata for AnalyticsString;
  *(inited + 64) = &off_10021CBD0;
  *(inited + 32) = 0;
  *(inited + 96) = &type metadata for AnalyticsPageName;
  *(inited + 104) = &off_10021CBA8;
  *(inited + 72) = 13;
  *(inited + 136) = &type metadata for AnalyticsModuleName;
  *(inited + 144) = &off_10021CC30;
  *(inited + 112) = 13;
  *(inited + 40) = v14;
  *(inited + 48) = v15;
  *(inited + 176) = &type metadata for AnalyticsModuleAction;
  *(inited + 184) = &off_10021CC08;
  *(inited + 152) = v11;
  *(inited + 160) = 0;
  *(inited + 168) = 3;
  if (*(a2 + 72))
  {
    v17 = *(a2 + 64);
    v18 = *(a2 + 72);
  }

  else
  {
    v17 = 0;
    v18 = 0xE000000000000000;
  }

  LOBYTE(aBlock) = 1;
  v25 = v17;
  v26 = v18;

  sub_1000109A4(v11, 0, 3u);

  v19 = sub_1001666DC(1, 5, 1, inited);
  v23 = v19;
  sub_1000109BC(&aBlock, v30);
  sub_1000EB0D0(4, v30, &v23, &type metadata for AnalyticsString, &off_10021CBD0);
  sub_100010A18(&aBlock);
  v20 = String._bridgeToObjectiveC()();
  v21 = swift_allocObject();
  v21[2] = 0xD00000000000001ELL;
  v21[3] = 0x80000001001BDDE0;
  v21[4] = v19;
  v28 = sub_100038F2C;
  v29 = v21;
  aBlock = _NSConcreteStackBlock;
  v25 = 1107296256;
  v26 = sub_1000DCA40;
  v27 = &unk_10020ADA8;
  v22 = _Block_copy(&aBlock);

  AnalyticsSendEventLazy();
  sub_10000FCD8(v11, 0, 3u);
  _Block_release(v22);
}

uint64_t sub_100037CE0(uint64_t a1)
{
  v2[21] = a1;
  v2[22] = v1;
  v2[23] = *v1;
  type metadata accessor for AttributeContainer();
  v2[24] = swift_task_alloc();
  sub_100009F70(&qword_10021A248);
  v2[25] = swift_task_alloc();
  v3 = type metadata accessor for AttributedString();
  v2[26] = v3;
  v2[27] = *(v3 - 8);
  v2[28] = swift_task_alloc();
  type metadata accessor for MainActor();
  v2[29] = static MainActor.shared.getter();
  v2[30] = dispatch thunk of Actor.unownedExecutor.getter();
  v2[31] = v4;

  return _swift_task_switch(sub_100037E60);
}

uint64_t sub_100037E60()
{
  v0[32] = (*(*(v0[23] + 88) + 80))(*(v0[23] + 80));
  v0[33] = v1;
  if (v1)
  {
    v2 = objc_opt_self();
    v3 = String._bridgeToObjectiveC()();
    v0[34] = v3;
    sub_100192BD0(&_swiftEmptyArrayStorage);
    type metadata accessor for DocumentReadingOptionKey(0);
    sub_100038EE0(&qword_1002189E0, type metadata accessor for DocumentReadingOptionKey);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;
    v0[35] = isa;

    v0[2] = v0;
    v0[7] = v0 + 18;
    v0[3] = sub_1000380D0;
    v5 = swift_continuation_init();
    v0[17] = sub_100009F70(&qword_10021A268);
    v0[10] = _NSConcreteStackBlock;
    v0[11] = 1107296256;
    v0[12] = sub_10003846C;
    v0[13] = &unk_10020ADD0;
    v0[14] = v5;
    [v2 loadFromHTMLWithString:v3 options:isa completionHandler:v0 + 10];

    return _swift_continuation_await(v0 + 2);
  }

  else
  {

    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_1000380D0()
{
  v1 = *(*v0 + 48);
  *(*v0 + 288) = v1;
  if (v1)
  {
    v2 = sub_100038354;
  }

  else
  {

    v2 = sub_1000381E8;
  }

  return _swift_task_switch(v2);
}

uint64_t sub_1000381E8()
{
  v2 = v0[34];
  v1 = v0[35];
  v3 = v0[28];
  v4 = v0[26];
  v5 = v0[27];
  v6 = v0[25];
  v7 = v0[21];

  v8 = v0[18];

  v9 = v8;
  AttributedString.init(_:)();
  v0[20] = v7;
  sub_100038CA8();

  AttributedString.subscript.setter();
  (*(v5 + 16))(v6, v3, v4);
  (*(v5 + 56))(v6, 0, 1, v4);
  sub_100036AD8(v6);

  (*(v5 + 8))(v3, v4);

  v10 = v0[1];

  return v10();
}

uint64_t sub_100038354()
{
  v1 = v0[35];
  v2 = v0[34];
  v3 = v0[27];
  v4 = v0[25];
  v7 = v0[26];

  swift_willThrow();

  AttributeContainer.init()();
  AttributedString.init(_:attributes:)();
  (*(v3 + 56))(v4, 0, 1, v7);
  sub_100036AD8(v4);

  v5 = v0[1];

  return v5();
}

uint64_t sub_10003846C(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = sub_100028124((a1 + 32), *(a1 + 56));
  v7 = *v6;
  if (a4)
  {
    sub_100009F70(qword_10021A1B8);
    v8 = swift_allocError();
    *v9 = a4;
    v10 = a4;

    return _swift_continuation_throwingResumeWithError(v7, v8);
  }

  else
  {
    if (a2)
    {
      type metadata accessor for DocumentAttributeKey(0);
      sub_100038EE0(&qword_1002189D0, type metadata accessor for DocumentAttributeKey);
      v11 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
      v12 = *(v7[8] + 40);
      *v12 = a2;
      v12[1] = v11;
      v13 = a2;
      v6 = v7;
    }

    else
    {
      __break(1u);
    }

    return _swift_continuation_throwingResume(v6);
  }
}

void sub_1000385A4(uint64_t a1, uint64_t a2, unsigned __int8 a3, uint64_t a4)
{
  v10 = *(v4 + 16);
  v9 = *(v4 + 24);
  sub_100009F70(qword_100218F38);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001AD8A0;
  *(inited + 56) = &type metadata for AnalyticsString;
  *(inited + 64) = &off_10021CBD0;
  *(inited + 32) = 0;
  *(inited + 40) = v10;
  *(inited + 48) = v9;
  *(inited + 96) = &type metadata for AnalyticsPageName;
  *(inited + 104) = &off_10021CBA8;
  *(inited + 72) = 13;
  *(inited + 136) = &type metadata for AnalyticsModuleName;
  *(inited + 144) = &off_10021CC30;
  *(inited + 112) = 14;
  *(inited + 176) = &type metadata for AnalyticsModuleAction;
  *(inited + 184) = &off_10021CC08;
  *(inited + 152) = a1;
  *(inited + 160) = a2;
  *(inited + 168) = a3;
  if (*(a4 + 72))
  {
    v12 = *(a4 + 64);
    v13 = *(a4 + 72);
  }

  else
  {
    v12 = 0;
    v13 = 0xE000000000000000;
  }

  LOBYTE(aBlock) = 1;
  v20 = v12;
  v21 = v13;

  sub_1000109A4(a1, a2, a3);

  v14 = sub_1001666DC(1, 5, 1, inited);
  v18 = v14;
  sub_1000109BC(&aBlock, v25);
  sub_1000EB0D0(4, v25, &v18, &type metadata for AnalyticsString, &off_10021CBD0);
  sub_100010A18(&aBlock);
  v15 = String._bridgeToObjectiveC()();
  v16 = swift_allocObject();
  v16[2] = 0xD00000000000001ELL;
  v16[3] = 0x80000001001BDDE0;
  v16[4] = v14;
  v23 = sub_100010AAC;
  v24 = v16;
  aBlock = _NSConcreteStackBlock;
  v20 = 1107296256;
  v21 = sub_1000DCA40;
  v22 = &unk_10020AD58;
  v17 = _Block_copy(&aBlock);

  AnalyticsSendEventLazy();
  _Block_release(v17);
}

uint64_t *sub_100038828()
{
  v1 = *v0;

  (*(*(*(v1 + 80) - 8) + 8))(v0 + *(*v0 + 112));

  sub_10000D52C(v0 + *(*v0 + 176), &qword_10021A248);
  v2 = *(*v0 + 184);
  v3 = type metadata accessor for ObservationRegistrar();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  return v0;
}

uint64_t sub_1000389E8()
{
  sub_100038828();

  return swift_deallocClassInstance();
}

void sub_100038A58()
{
  if (!qword_10021A240)
  {
    type metadata accessor for AttributedString();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_10021A240);
    }
  }
}

uint64_t sub_100038AB0()
{
  swift_getKeyPath();
  sub_100036730();

  return *(v0 + *(*v0 + 152));
}

uint64_t sub_100038B40(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

__n128 sub_100038B6C(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

unint64_t sub_100038B78()
{
  result = qword_10021A258;
  if (!qword_10021A258)
  {
    sub_10000B3DC(&qword_10021A250);
    sub_100038BFC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021A258);
  }

  return result;
}

unint64_t sub_100038BFC()
{
  result = qword_10021A260;
  if (!qword_10021A260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021A260);
  }

  return result;
}

uint64_t sub_100038C50()
{

  return swift_deallocObject();
}

unint64_t sub_100038CA8()
{
  result = qword_10021A270;
  if (!qword_10021A270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021A270);
  }

  return result;
}

uint64_t sub_100038CFC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100009F70(&qword_10021A248);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_100038D6C()
{
  result = qword_10021A278;
  if (!qword_10021A278)
  {
    sub_10000B3DC(&qword_10021A248);
    sub_100038EE0(qword_10021A280, &type metadata accessor for AttributedString);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021A278);
  }

  return result;
}

uint64_t sub_100038E20(uint64_t a1, uint64_t a2)
{
  v4 = sub_100009F70(&qword_10021A248);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_100038EE0(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_100038F44()
{
  type metadata accessor for VenueEventViewModel();
  type metadata accessor for State();
  if (v0 <= 0x3F)
  {
    sub_1000391A4();
    if (v1 <= 0x3F)
    {
      sub_10000B304();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_10003900C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_100009F70(&qword_100218950);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 52);

    return v9(v10, a2, v8);
  }
}

void *sub_1000390DC(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_100009F70(&qword_100218950);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 52);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_1000391A4()
{
  if (!qword_10021A308)
  {
    type metadata accessor for DismissAction();
    v0 = type metadata accessor for Environment();
    if (!v1)
    {
      atomic_store(v0, &qword_10021A308);
    }
  }
}

uint64_t sub_100039288@<X0>(_BYTE *a1@<X8>)
{
  result = sub_10002F650();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1000392E0(uint64_t a1)
{
  v2 = *(a1 + 16);
  type metadata accessor for VenueEventViewModel();
  type metadata accessor for State();
  State.wrappedValue.getter();
  return v2;
}

uint64_t sub_10003933C(uint64_t a1)
{
  v2 = *(a1 + 16);
  type metadata accessor for VenueEventViewModel();
  type metadata accessor for State();
  State.projectedValue.getter();
  return v2;
}

uint64_t sub_10003939C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v184 = a2;
  v196 = *(a1 - 1);
  v194 = *(v196 + 64);
  v3 = __chkstk_darwin(a1);
  v183 = v153 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v3);
  v193 = v153 - v6;
  v7 = *(v5 + 24);
  type metadata accessor for Optional();
  v8 = type metadata accessor for Binding();
  v185 = *(v8 - 8);
  v186 = v8;
  __chkstk_darwin(v8);
  v182 = v153 - v9;
  v190 = type metadata accessor for NavigationPath();
  v191 = a1;
  *&v199 = a1[2];
  v181 = a1[4];
  type metadata accessor for VenueEventListHeader();
  v10 = type metadata accessor for Section();
  WitnessTable = swift_getWitnessTable();
  v224 = &protocol witness table for EmptyView;
  v225 = WitnessTable;
  v226 = &protocol witness table for EmptyView;
  v12 = swift_getWitnessTable();
  *&v216 = v10;
  *(&v216 + 1) = v12;
  swift_getOpaqueTypeMetadata2();
  sub_10000B3DC(&qword_10021A310);
  v189 = type metadata accessor for ModifiedContent();
  v188 = sub_10000B3DC(&qword_10021A318);
  v187 = sub_10000B3DC(&qword_10021A320);
  v13 = type metadata accessor for Array();
  *&v198 = a1[5];
  v195 = *(*(v198 + 8) + 16);
  v192 = v7;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v15 = sub_10000B3DC(&qword_10021A328);
  v16 = swift_getWitnessTable();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  *&v216 = v13;
  *(&v216 + 1) = AssociatedTypeWitness;
  *&v217 = v15;
  *(&v217 + 1) = v16;
  v218 = AssociatedConformanceWitness;
  type metadata accessor for ForEach();
  v18 = type metadata accessor for Section();
  v223 = sub_10004248C();
  v19 = swift_getWitnessTable();
  v220 = &protocol witness table for EmptyView;
  v221 = v19;
  v222 = &protocol witness table for EmptyView;
  v20 = swift_getWitnessTable();
  *&v216 = v18;
  *(&v216 + 1) = v20;
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for ModifiedContent();
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  type metadata accessor for _ConditionalContent();
  swift_getTupleTypeMetadata2();
  v21 = type metadata accessor for TupleView();
  v22 = swift_getWitnessTable();
  *&v216 = &type metadata for Never;
  *(&v216 + 1) = v21;
  *&v217 = &protocol witness table for Never;
  *(&v217 + 1) = v22;
  v23 = type metadata accessor for List();
  v24 = type metadata accessor for PlainListStyle();
  v25 = swift_getWitnessTable();
  *&v216 = v23;
  *(&v216 + 1) = v24;
  *&v217 = v25;
  *(&v217 + 1) = &protocol witness table for PlainListStyle;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  *&v216 = v23;
  *(&v216 + 1) = v24;
  *&v217 = v25;
  *(&v217 + 1) = &protocol witness table for PlainListStyle;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  *&v216 = OpaqueTypeMetadata2;
  *(&v216 + 1) = OpaqueTypeConformance2;
  v28 = swift_getOpaqueTypeMetadata2();
  *&v216 = OpaqueTypeMetadata2;
  *(&v216 + 1) = OpaqueTypeConformance2;
  v29 = swift_getOpaqueTypeConformance2();
  *&v216 = v28;
  *(&v216 + 1) = v29;
  v30 = swift_getOpaqueTypeMetadata2();
  *&v216 = v28;
  *(&v216 + 1) = v29;
  v31 = swift_getOpaqueTypeConformance2();
  *&v216 = v30;
  *(&v216 + 1) = v31;
  v32 = swift_getOpaqueTypeMetadata2();
  *&v216 = v30;
  *(&v216 + 1) = v31;
  v33 = swift_getOpaqueTypeConformance2();
  *&v216 = v32;
  *(&v216 + 1) = v33;
  v34 = swift_getOpaqueTypeMetadata2();
  *&v216 = v32;
  *(&v216 + 1) = v33;
  v35 = swift_getOpaqueTypeConformance2();
  *&v216 = v34;
  *(&v216 + 1) = v35;
  v36 = swift_getOpaqueTypeMetadata2();
  *&v216 = v34;
  *(&v216 + 1) = v35;
  v37 = swift_getOpaqueTypeConformance2();
  v38 = sub_100027068();
  *&v216 = v36;
  *(&v216 + 1) = &type metadata for String;
  *&v217 = v37;
  *(&v217 + 1) = v38;
  v39 = swift_getOpaqueTypeMetadata2();
  *&v216 = v36;
  *(&v216 + 1) = &type metadata for String;
  *&v217 = v37;
  *(&v217 + 1) = v38;
  v40 = swift_getOpaqueTypeConformance2();
  *&v216 = v39;
  *(&v216 + 1) = &type metadata for Bool;
  *&v217 = v40;
  *(&v217 + 1) = &protocol witness table for Bool;
  v41 = swift_getOpaqueTypeMetadata2();
  v42 = sub_10000B3DC(&qword_10021A348);
  *&v216 = v39;
  *(&v216 + 1) = &type metadata for Bool;
  *&v217 = v40;
  *(&v217 + 1) = &protocol witness table for Bool;
  v43 = swift_getOpaqueTypeConformance2();
  v44 = sub_10000B3DC(&qword_10021A350);
  v45 = sub_100042650();
  *&v216 = v44;
  *(&v216 + 1) = v45;
  v46 = swift_getOpaqueTypeConformance2();
  *&v216 = v41;
  *(&v216 + 1) = v42;
  *&v217 = v43;
  *(&v217 + 1) = v46;
  v47 = swift_getOpaqueTypeMetadata2();
  *&v216 = v41;
  *(&v216 + 1) = v42;
  *&v217 = v43;
  *(&v217 + 1) = v46;
  v48 = swift_getOpaqueTypeConformance2();
  *&v216 = v47;
  *(&v216 + 1) = &type metadata for String;
  *&v217 = v48;
  *(&v217 + 1) = v38;
  v49 = swift_getOpaqueTypeMetadata2();
  *&v216 = v47;
  *(&v216 + 1) = &type metadata for String;
  *&v217 = v48;
  *(&v217 + 1) = v38;
  v50 = swift_getOpaqueTypeConformance2();
  *&v216 = v47;
  *(&v216 + 1) = &type metadata for Solarium;
  *&v217 = v49;
  *(&v217 + 1) = v48;
  v218 = &protocol witness table for Solarium;
  v219 = v50;
  v158 = swift_getOpaqueTypeMetadata2();
  *&v216 = v47;
  *(&v216 + 1) = &type metadata for Solarium;
  *&v217 = v49;
  *(&v217 + 1) = v48;
  v218 = &protocol witness table for Solarium;
  v219 = v50;
  v157 = swift_getOpaqueTypeConformance2();
  v51 = type metadata accessor for NavigationStack();
  v163 = *(v51 - 8);
  __chkstk_darwin(v51);
  v154 = v153 - v52;
  v53 = sub_100042730();
  v54 = sub_100042784();
  v55 = v192;
  *&v216 = v192;
  *(&v216 + 1) = &type metadata for ArtistFetcher;
  *&v217 = &type metadata for PromotionalPlaylistFetcher;
  *(&v217 + 1) = v198;
  v218 = v53;
  v219 = v54;
  v56 = type metadata accessor for MusicEventView();
  v187 = v56;
  v57 = swift_getWitnessTable();
  v58 = swift_getWitnessTable();
  *&v216 = v51;
  *(&v216 + 1) = v55;
  v59 = v51;
  v155 = v57;
  v156 = v51;
  v60 = v55;
  *&v217 = v56;
  *(&v217 + 1) = v57;
  v61 = v57;
  v62 = v195;
  v218 = v195;
  v219 = v58;
  v153[1] = v58;
  v63 = swift_getOpaqueTypeMetadata2();
  v168 = *(v63 - 8);
  __chkstk_darwin(v63);
  v189 = v153 - v64;
  v65 = type metadata accessor for FilterView();
  *&v216 = v59;
  *(&v216 + 1) = v60;
  v66 = v60;
  *&v217 = v187;
  *(&v217 + 1) = v61;
  v218 = v62;
  v219 = v58;
  v67 = swift_getOpaqueTypeConformance2();
  v68 = swift_getWitnessTable();
  v161 = v67;
  v162 = v63;
  *&v216 = v63;
  *(&v216 + 1) = v65;
  v69 = v65;
  v159 = v65;
  v160 = v68;
  *&v217 = v67;
  *(&v217 + 1) = v68;
  v70 = v67;
  v71 = v68;
  v72 = swift_getOpaqueTypeMetadata2();
  v166 = v72;
  v172 = *(v72 - 8);
  __chkstk_darwin(v72);
  v190 = v153 - v73;
  *&v216 = v63;
  *(&v216 + 1) = v69;
  *&v217 = v70;
  *(&v217 + 1) = v71;
  v164 = swift_getOpaqueTypeConformance2();
  *&v216 = v72;
  *(&v216 + 1) = &type metadata for String;
  *&v217 = v164;
  *(&v217 + 1) = &protocol witness table for String;
  v169 = &opaque type descriptor for <<opaque return type of View.onChange<A>(of:initial:_:)>>;
  v167 = swift_getOpaqueTypeMetadata2();
  v173 = *(v167 - 8);
  __chkstk_darwin(v167);
  v188 = v153 - v74;
  v174 = type metadata accessor for ModifiedContent();
  v177 = *(v174 - 8);
  __chkstk_darwin(v174);
  v165 = v153 - v75;
  v175 = type metadata accessor for ModifiedContent();
  v178 = *(v175 - 8);
  __chkstk_darwin(v175);
  v170 = v153 - v76;
  type metadata accessor for AccessibilityAttachmentModifier();
  v77 = type metadata accessor for ModifiedContent();
  v78 = *(v77 - 8);
  v179 = v77;
  v180 = v78;
  v79 = __chkstk_darwin(v77);
  v171 = v153 - ((v80 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v79);
  v176 = v153 - v81;
  *&v82 = v199;
  *(&v82 + 1) = v66;
  *&v83 = v181;
  *(&v83 + 1) = v198;
  v198 = v83;
  v199 = v82;
  v204 = v82;
  v205 = v83;
  v206 = v197;
  v84 = v154;
  NavigationStack.init<>(root:)();
  v85 = v191;
  v86 = sub_10003933C(v191);
  v88 = v87;
  v90 = v89;
  v202 = v199;
  v203 = v198;
  swift_getKeyPath();
  v213 = v86;
  v214 = v88;
  v215 = v90;
  v216 = v199;
  v217 = v198;
  type metadata accessor for VenueEventViewModel();
  type metadata accessor for Binding();
  v91 = v182;
  Binding.subscript.getter();

  v92 = swift_allocObject();
  v93 = v198;
  *(v92 + 16) = v199;
  *(v92 + 32) = v93;
  swift_checkMetadataState();
  v94 = v156;
  View.sheet<A, B>(item:onDismiss:content:)();

  (*(v185 + 8))(v91, v186);
  (*(v163 + 8))(v84, v94);
  v95 = v197;
  v96 = sub_10003933C(v85);
  v98 = v97;
  v100 = v99;
  v200 = v199;
  v201 = v198;
  swift_getKeyPath();
  *&v216 = v96;
  *(&v216 + 1) = v98;
  *&v217 = v100;
  Binding.subscript.getter();

  v181 = v213;
  v163 = v214;
  LODWORD(v182) = v215;

  v101 = v196;
  v102 = v196 + 16;
  v103 = *(v196 + 16);
  v104 = v193;
  v103(v193, v95, v85);
  v105 = v103;
  v186 = v102;
  v195 = *(v101 + 80);
  v106 = (v195 + 48) & ~v195;
  v107 = swift_allocObject();
  v108 = v198;
  *(v107 + 16) = v199;
  *(v107 + 32) = v108;
  v109 = *(v101 + 32);
  v109(v107 + v106, v104, v85);
  v192 = v109;
  v196 = v101 + 32;
  v110 = v183;
  v105(v183, v197, v85);
  v187 = v105;
  v185 = v106;
  v111 = swift_allocObject();
  v112 = v198;
  *(v111 + 16) = v199;
  *(v111 + 32) = v112;
  v113 = v111 + v106;
  v114 = v85;
  v109(v113, v110, v85);
  swift_checkMetadataState();
  v115 = v189;
  v116 = v162;
  View.sheet<A>(isPresented:onDismiss:content:)();

  (*(v168 + 8))(v115, v116);
  v117 = v197;
  sub_1000392E0(v114);
  v118 = sub_100031780();
  v120 = v119;

  *&v216 = v118;
  *(&v216 + 1) = v120;
  v121 = v193;
  v105(v193, v117, v114);
  v122 = v185;
  v123 = swift_allocObject();
  v124 = v198;
  *(v123 + 16) = v199;
  *(v123 + 32) = v124;
  v192(v123 + v122, v121, v114);
  v125 = v166;
  v126 = v164;
  v127 = v190;
  View.onChange<A>(of:initial:_:)();

  (*(v172 + 8))(v127, v125);
  v128 = v193;
  v129 = v117;
  v130 = v191;
  v187(v193, v129, v191);
  v131 = v185;
  v132 = swift_allocObject();
  v133 = v198;
  *(v132 + 16) = v199;
  *(v132 + 32) = v133;
  v134 = v128;
  v192(v132 + v131, v128, v130);
  *&v216 = v125;
  *(&v216 + 1) = &type metadata for String;
  *&v217 = v126;
  *(&v217 + 1) = &protocol witness table for String;
  v135 = swift_getOpaqueTypeConformance2();
  v136 = v165;
  v137 = v167;
  v138 = v188;
  View.onAppear(perform:)();

  (*(v173 + 8))(v138, v137);
  v187(v134, v197, v130);
  v139 = swift_allocObject();
  v140 = v198;
  *(v139 + 16) = v199;
  *(v139 + 32) = v140;
  v192(v139 + v131, v134, v130);
  v211 = v135;
  v212 = &protocol witness table for _AppearanceActionModifier;
  v141 = v174;
  v142 = swift_getWitnessTable();
  v143 = v170;
  View.onDisappear(perform:)();

  (*(v177 + 8))(v136, v141);
  v209 = v142;
  v210 = &protocol witness table for _AppearanceActionModifier;
  v144 = v175;
  v145 = swift_getWitnessTable();
  v146 = v171;
  View.accessibilityIdentifier(_:)();
  (*(v178 + 8))(v143, v144);
  v147 = sub_100042608(&qword_100218698, &type metadata accessor for AccessibilityAttachmentModifier);
  v207 = v145;
  v208 = v147;
  v148 = v179;
  v149 = swift_getWitnessTable();
  v150 = v176;
  sub_100157EFC(v146, v148, v149);
  v151 = *(v180 + 8);
  v151(v146, v148);
  sub_100157EFC(v150, v148, v149);
  return (v151)(v150, v148);
}

uint64_t sub_10003A97C@<X0>(void *a1@<X0>, void *a2@<X1>, void *a3@<X2>, void *a4@<X3>, void *a5@<X4>, uint64_t a6@<X8>)
{
  v203 = a1;
  v197 = a6;
  v209 = a2;
  v210 = a3;
  v199 = a2;
  v211 = a4;
  v212 = a5;
  v201 = a4;
  v202 = a5;
  v186 = type metadata accessor for VenueEventView();
  v196 = *(v186 - 8);
  v194 = *(v196 + 64);
  __chkstk_darwin(v186);
  v195 = &v128 - v7;
  v193 = type metadata accessor for NavigationBarItem.TitleDisplayMode();
  v192 = *(v193 - 8);
  __chkstk_darwin(v193);
  v191 = &v128 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v190 = type metadata accessor for ScrollIndicatorVisibility();
  v189 = *(v190 - 8);
  __chkstk_darwin(v190);
  v184 = &v128 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v188 = type metadata accessor for ScrollDismissesKeyboardMode();
  v187 = *(v188 - 8);
  __chkstk_darwin(v188);
  v185 = &v128 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v183 = type metadata accessor for ContentMarginPlacement();
  v182 = *(v183 - 8);
  __chkstk_darwin(v183);
  v181 = &v128 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v198 = type metadata accessor for PlainListStyle();
  v180 = *(v198 - 8);
  __chkstk_darwin(v198);
  v179 = &v128 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for VenueEventListHeader();
  v13 = type metadata accessor for Section();
  WitnessTable = swift_getWitnessTable();
  v219 = &protocol witness table for EmptyView;
  v220 = WitnessTable;
  v221 = &protocol witness table for EmptyView;
  v15 = swift_getWitnessTable();
  v209 = v13;
  v210 = v15;
  swift_getOpaqueTypeMetadata2();
  sub_10000B3DC(&qword_10021A310);
  v177 = type metadata accessor for ModifiedContent();
  v176 = sub_10000B3DC(&qword_10021A318);
  v175 = sub_10000B3DC(&qword_10021A320);
  v16 = type metadata accessor for Array();
  v178 = v16;
  v200 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v18 = sub_10000B3DC(&qword_10021A328);
  v19 = swift_getWitnessTable();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v209 = v16;
  v210 = AssociatedTypeWitness;
  v211 = v18;
  v212 = v19;
  v213 = AssociatedConformanceWitness;
  type metadata accessor for ForEach();
  v21 = type metadata accessor for Section();
  v218 = sub_10004248C();
  v22 = swift_getWitnessTable();
  v215 = &protocol witness table for EmptyView;
  v216 = v22;
  v217 = &protocol witness table for EmptyView;
  v23 = swift_getWitnessTable();
  v209 = v21;
  v210 = v23;
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for ModifiedContent();
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  type metadata accessor for _ConditionalContent();
  swift_getTupleTypeMetadata2();
  v24 = type metadata accessor for TupleView();
  v143 = v24;
  v142 = swift_getWitnessTable();
  v209 = &type metadata for Never;
  v210 = v24;
  v211 = &protocol witness table for Never;
  v212 = v142;
  v25 = type metadata accessor for List();
  v145 = *(v25 - 8);
  __chkstk_darwin(v25);
  v139 = &v128 - v26;
  v27 = swift_getWitnessTable();
  v28 = v198;
  v209 = v25;
  v210 = v198;
  v211 = v27;
  v212 = &protocol witness table for PlainListStyle;
  v29 = v27;
  v135 = v27;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v141 = *(OpaqueTypeMetadata2 - 8);
  __chkstk_darwin(OpaqueTypeMetadata2);
  v134 = &v128 - v31;
  v209 = v25;
  v210 = v28;
  v211 = v29;
  v212 = &protocol witness table for PlainListStyle;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v209 = OpaqueTypeMetadata2;
  v210 = OpaqueTypeConformance2;
  v33 = OpaqueTypeMetadata2;
  v130 = OpaqueTypeMetadata2;
  v34 = OpaqueTypeConformance2;
  v131 = OpaqueTypeConformance2;
  v35 = swift_getOpaqueTypeMetadata2();
  v147 = *(v35 - 8);
  __chkstk_darwin(v35);
  v129 = &v128 - v36;
  v209 = v33;
  v210 = v34;
  v37 = swift_getOpaqueTypeConformance2();
  v136 = v35;
  v209 = v35;
  v210 = v37;
  v38 = v37;
  v137 = v37;
  v39 = swift_getOpaqueTypeMetadata2();
  v140 = *(v39 - 8);
  __chkstk_darwin(v39);
  v138 = &v128 - v40;
  v209 = v35;
  v210 = v38;
  v41 = swift_getOpaqueTypeConformance2();
  v209 = v39;
  v210 = v41;
  v42 = v39;
  v132 = v39;
  v43 = v41;
  v133 = v41;
  v44 = swift_getOpaqueTypeMetadata2();
  v174 = *(v44 - 8);
  __chkstk_darwin(v44);
  v128 = &v128 - v45;
  v209 = v42;
  v210 = v43;
  v46 = swift_getOpaqueTypeConformance2();
  v209 = v44;
  v210 = v46;
  v47 = swift_getOpaqueTypeMetadata2();
  v167 = *(v47 - 8);
  __chkstk_darwin(v47);
  v164 = &v128 - v48;
  v176 = v44;
  v209 = v44;
  v210 = v46;
  v161 = v46;
  v49 = swift_getOpaqueTypeConformance2();
  v209 = v47;
  v210 = v49;
  v50 = swift_getOpaqueTypeMetadata2();
  v169 = *(v50 - 8);
  __chkstk_darwin(v50);
  v166 = &v128 - v51;
  v171 = v47;
  v209 = v47;
  v210 = v49;
  v156 = v49;
  v52 = swift_getOpaqueTypeConformance2();
  v53 = sub_100027068();
  v209 = v50;
  v210 = &type metadata for String;
  v211 = v52;
  v212 = v53;
  v54 = swift_getOpaqueTypeMetadata2();
  v175 = *(v54 - 8);
  __chkstk_darwin(v54);
  v170 = &v128 - v55;
  v173 = v50;
  v209 = v50;
  v210 = &type metadata for String;
  v158 = v52;
  v211 = v52;
  v212 = v53;
  v56 = swift_getOpaqueTypeConformance2();
  v209 = v54;
  v210 = &type metadata for Bool;
  v211 = v56;
  v212 = &protocol witness table for Bool;
  v57 = swift_getOpaqueTypeMetadata2();
  v168 = *(v57 - 8);
  __chkstk_darwin(v57);
  v165 = &v128 - v58;
  v59 = sub_10000B3DC(&qword_10021A348);
  v177 = v54;
  v209 = v54;
  v210 = &type metadata for Bool;
  v163 = v56;
  v211 = v56;
  v212 = &protocol witness table for Bool;
  v60 = swift_getOpaqueTypeConformance2();
  v61 = sub_10000B3DC(&qword_10021A350);
  v62 = sub_100042650();
  v209 = v61;
  v210 = v62;
  v63 = swift_getOpaqueTypeConformance2();
  v209 = v57;
  v210 = v59;
  v211 = v60;
  v212 = v63;
  v64 = swift_getOpaqueTypeMetadata2();
  v159 = *(v64 - 8);
  __chkstk_darwin(v64);
  v154 = &v128 - v65;
  v172 = v57;
  v209 = v57;
  v210 = v59;
  v160 = v59;
  v155 = v60;
  v211 = v60;
  v212 = v63;
  v151 = v63;
  v66 = swift_getOpaqueTypeConformance2();
  v209 = v64;
  v210 = &type metadata for String;
  v211 = v66;
  v212 = v53;
  v67 = swift_getOpaqueTypeMetadata2();
  v209 = v64;
  v210 = &type metadata for String;
  v211 = v66;
  v212 = v53;
  v157 = v53;
  v68 = swift_getOpaqueTypeConformance2();
  v162 = v64;
  v209 = v64;
  v210 = &type metadata for Solarium;
  v144 = v67;
  v211 = v67;
  v212 = v66;
  v153 = v66;
  v213 = &protocol witness table for Solarium;
  v214 = v68;
  v149 = v68;
  v152 = swift_getOpaqueTypeMetadata2();
  v150 = *(v152 - 8);
  v69 = __chkstk_darwin(v152);
  v146 = &v128 - ((v70 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v69);
  v148 = &v128 - v71;
  v204 = v199;
  v205 = v200;
  v206 = v201;
  v207 = v202;
  v208 = v203;
  v72 = v139;
  List<>.init(content:)();
  v73 = v179;
  PlainListStyle.init()();
  v74 = v134;
  v75 = v198;
  View.listStyle<A>(_:)();
  (*(v180 + 8))(v73, v75);
  (*(v145 + 8))(v72, v25);
  static Edge.Set.top.getter();
  v76 = v181;
  static ContentMarginPlacement.automatic.getter();
  v77 = v129;
  v78 = v130;
  View.contentMargins(_:_:for:)();
  (*(v182 + 8))(v76, v183);
  (*(v141 + 8))(v74, v78);
  v79 = v186;
  v80 = v128;
  sub_1000392E0(v186);
  v81 = sub_100031940();

  v209 = v81;
  swift_checkMetadataState();
  swift_getWitnessTable();
  v82 = v184;
  Collection.isEmpty.getter();

  v83 = v138;
  v84 = v136;
  View.scrollDisabled(_:)();
  (*(v147 + 8))(v77, v84);
  v85 = v185;
  static ScrollDismissesKeyboardMode.immediately.getter();
  v86 = v132;
  View.scrollDismissesKeyboard(_:)();
  (*(v187 + 8))(v85, v188);
  (*(v140 + 8))(v83, v86);
  static ScrollIndicatorVisibility.never.getter();
  sub_100009F70(&qword_10021A390);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001ACB00;
  LOBYTE(v77) = static Axis.Set.vertical.getter();
  *(inited + 32) = v77;
  v88 = static Axis.Set.horizontal.getter();
  *(inited + 33) = v88;
  Axis.Set.init(rawValue:)();
  Axis.Set.init(rawValue:)();
  if (Axis.Set.init(rawValue:)() != v77)
  {
    Axis.Set.init(rawValue:)();
  }

  Axis.Set.init(rawValue:)();
  if (Axis.Set.init(rawValue:)() != v88)
  {
    Axis.Set.init(rawValue:)();
  }

  v89 = v164;
  v90 = v176;
  View.scrollIndicators(_:axes:)();
  (*(v189 + 8))(v82, v190);
  (*(v174 + 8))(v80, v90);
  v91 = v192;
  v92 = v191;
  v93 = v193;
  (*(v192 + 104))(v191, enum case for NavigationBarItem.TitleDisplayMode.inline(_:), v193);
  v94 = v166;
  v95 = v171;
  View.navigationBarTitleDisplayMode(_:)();
  (*(v91 + 8))(v92, v93);
  (*(v167 + 8))(v89, v95);
  v96 = v79;
  v97 = v203;
  sub_1000392E0(v79);
  v98 = sub_1000318B4();
  v100 = v99;

  v209 = v98;
  v210 = v100;
  v101 = v170;
  v102 = v173;
  View.navigationTitle<A>(_:)();

  (*(v169 + 8))(v94, v102);
  v103 = v196;
  v104 = v195;
  (*(v196 + 16))(v195, v97, v79);
  v105 = (*(v103 + 80) + 48) & ~*(v103 + 80);
  v106 = swift_allocObject();
  v107 = v199;
  v108 = v200;
  *(v106 + 2) = v199;
  *(v106 + 3) = v108;
  v109 = v201;
  v110 = v202;
  *(v106 + 4) = v201;
  *(v106 + 5) = v110;
  (*(v103 + 32))(&v106[v105], v104, v96);
  v127 = &protocol witness table for Bool;
  v111 = v165;
  v112 = v177;
  View.onScrollGeometryChange<A>(for:of:action:)();

  v113 = (*(v175 + 8))(v101, v112);
  __chkstk_darwin(v113);
  *(&v128 - 6) = v107;
  *(&v128 - 5) = v108;
  *(&v128 - 4) = v109;
  *(&v128 - 3) = v110;
  v127 = v203;
  v114 = v154;
  v115 = v172;
  View.toolbar<A>(content:)();
  (*(v168 + 8))(v111, v115);
  v116 = Solarium.init()();
  __chkstk_darwin(v116);
  *(&v128 - 6) = v107;
  *(&v128 - 5) = v108;
  *(&v128 - 4) = v109;
  *(&v128 - 3) = v110;
  v117 = swift_checkMetadataState();
  v118 = v149;
  v127 = v149;
  v119 = v146;
  v120 = v162;
  v121 = v153;
  View.staticIf<A, B>(_:then:)();
  (*(v159 + 8))(v114, v120);
  v209 = v120;
  v210 = &type metadata for Solarium;
  v211 = v117;
  v212 = v121;
  v213 = &protocol witness table for Solarium;
  v214 = v118;
  v122 = swift_getOpaqueTypeConformance2();
  v123 = v148;
  v124 = v152;
  sub_100157EFC(v119, v152, v122);
  v125 = *(v150 + 8);
  v125(v119, v124);
  sub_100157EFC(v123, v124, v122);
  return (v125)(v123, v124);
}

uint64_t sub_10003C2E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, void (*a5)(void, void)@<X4>, uint64_t a6@<X8>)
{
  v135 = a5;
  v117 = a4;
  v118 = a1;
  v133 = a2;
  v131 = a6;
  v7 = sub_10000B3DC(&qword_10021A320);
  v122 = type metadata accessor for Array();
  v134 = a3;
  swift_getAssociatedTypeWitness();
  *&v171 = sub_10000B3DC(&qword_10021A328);
  *(&v171 + 1) = swift_getWitnessTable();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v8 = type metadata accessor for ForEach();
  v9 = type metadata accessor for Section();
  v169 = sub_10004248C();
  v110 = v8;
  v166 = &protocol witness table for EmptyView;
  WitnessTable = swift_getWitnessTable();
  v107 = WitnessTable;
  v168 = &protocol witness table for EmptyView;
  *&v170 = v9;
  *(&v170 + 1) = swift_getWitnessTable();
  v109 = *(&v170 + 1);
  v121 = &opaque type descriptor for <<opaque return type of View.listSectionSeparator(_:edges:)>>;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v11 = type metadata accessor for ModifiedContent();
  swift_getTupleTypeMetadata2();
  v12 = type metadata accessor for TupleView();
  v114 = *(v12 - 8);
  __chkstk_darwin(v12);
  v113 = &v95 - v13;
  v103 = swift_checkMetadataState();
  v101 = *(v103 - 8);
  v14 = __chkstk_darwin(v103);
  v100 = &v95 - v15;
  v111 = OpaqueTypeMetadata2;
  v104 = *(OpaqueTypeMetadata2 - 8);
  v16 = __chkstk_darwin(v14);
  v102 = &v95 - v17;
  v115 = v11;
  v106 = *(v11 - 8);
  v18 = __chkstk_darwin(v16);
  v108 = &v95 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v18);
  v125 = &v95 - v21;
  v116 = v7;
  v112 = *(v7 - 8);
  v22 = __chkstk_darwin(v20);
  v105 = &v95 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v132 = &v95 - v24;
  v25 = sub_100009F70(&qword_10021A490);
  v97 = *(v25 - 8);
  v98 = v25;
  __chkstk_darwin(v25);
  v96 = &v95 - v26;
  v27 = sub_100009F70(&qword_10021A318);
  __chkstk_darwin(v27);
  v99 = &v95 - v28;
  v126 = v29;
  v130 = v12;
  v30 = type metadata accessor for _ConditionalContent();
  v128 = *(v30 - 8);
  v129 = v30;
  v31 = __chkstk_darwin(v30);
  v127 = &v95 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v138 = &v95 - v33;
  v34 = v133;
  v35 = v117;
  v120 = type metadata accessor for VenueEventListHeader();
  v36 = type metadata accessor for Section();
  v124 = *(v36 - 8);
  __chkstk_darwin(v36);
  v38 = &v95 - v37;
  v39 = swift_getWitnessTable();
  v163 = &protocol witness table for EmptyView;
  v164 = v39;
  v165 = &protocol witness table for EmptyView;
  v119 = swift_getWitnessTable();
  *&v170 = v36;
  *(&v170 + 1) = v119;
  v40 = swift_getOpaqueTypeMetadata2();
  v123 = *(v40 - 8);
  __chkstk_darwin(v40);
  v42 = &v95 - v41;
  sub_10000B3DC(&qword_10021A310);
  v43 = type metadata accessor for ModifiedContent();
  v136 = *(v43 - 8);
  v44 = __chkstk_darwin(v43);
  v46 = (&v95 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v44);
  v137 = &v95 - v47;
  v144 = v34;
  v145 = v134;
  v48 = v35;
  v146 = v35;
  v147 = v135;
  v49 = v118;
  v148 = v118;
  Section<>.init(content:)();
  static VerticalEdge.Set.all.getter();
  v50 = v119;
  View.listSectionSeparator(_:edges:)();
  (*(v124 + 8))(v38, v36);
  v170 = xmmword_1001AF860;
  v171 = xmmword_1001AF870;
  LOBYTE(AssociatedConformanceWitness) = 0;
  v157 = v36;
  v158 = v50;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  View.listRowInsets(_:)();
  v123[1](v42, v40);
  v52 = sub_10000D1EC(&qword_10021A498, &qword_10021A310);
  v161 = OpaqueTypeConformance2;
  v162 = v52;
  v119 = swift_getWitnessTable();
  sub_100157EFC(v46, v43, v119);
  v53 = *(v136 + 8);
  v123 = v46;
  v124 = v43;
  v120 = v53;
  v121 = (v136 + 8);
  v53(v46, v43);
  v54 = v133;
  v55 = v134;
  v157 = v133;
  v158 = v134;
  v56 = v135;
  v159 = v48;
  v160 = v135;
  v57 = type metadata accessor for VenueEventView();
  sub_1000392E0(v57);
  v58 = sub_100031940();

  v157 = v58;
  swift_checkMetadataState();
  swift_getWitnessTable();
  LOBYTE(v38) = Collection.isEmpty.getter();

  v139 = v54;
  v140 = v55;
  v141 = v48;
  v142 = v56;
  v143 = v49;
  if (v38)
  {
    sub_100009F70(&qword_10021A4E0);
    sub_100043328(&qword_10021A4D8, &qword_10021A4E0, &unk_1001AFB60, sub_10002DB5C);
    v59 = v96;
    Section<>.init(content:)();
    static VerticalEdge.Set.all.getter();
    sub_10004365C();
    v60 = v98;
    v61 = v99;
    View.listSectionSeparator(_:edges:)();
    (*(v97 + 8))(v59, v60);
    v62 = v126;
    v63 = v61 + *(v126 + 36);
    *v63 = 0x4049000000000000;
    sub_100043568();
    *(v63 + 16) = 0;
    *(v63 + 24) = 0;
    *(v63 + 8) = 0;
    *(v63 + 32) = 0;
    swift_getWitnessTable();
    sub_100061878(v61, v62);
    sub_10000D52C(v61, &qword_10021A318);
  }

  else
  {
    sub_100009F70(&qword_10021A4A0);
    sub_100043328(&qword_10021A4A8, &qword_10021A4A0, &unk_1001AFB50, sub_1000433DC);
    v64 = Section<>.init(content:)();
    __chkstk_darwin(v64);
    *(&v95 - 6) = v54;
    *(&v95 - 5) = v55;
    *(&v95 - 4) = v48;
    *(&v95 - 3) = v56;
    *(&v95 - 2) = v49;
    swift_checkMetadataState();
    v65 = v100;
    Section<>.init(content:)();
    static VerticalEdge.Set.all.getter();
    v67 = v102;
    v66 = v103;
    v68 = v109;
    View.listSectionSeparator(_:edges:)();
    (*(v101 + 8))(v65, v66);
    static Edge.Set.top.getter();
    v157 = v66;
    v158 = v68;
    v69 = swift_getOpaqueTypeConformance2();
    v70 = v108;
    v71 = v111;
    View.padding(_:_:)();
    (*(v104 + 8))(v67, v71);
    v155 = v69;
    v156 = &protocol witness table for _PaddingLayout;
    v72 = v115;
    v73 = swift_getWitnessTable();
    v74 = v125;
    sub_100157EFC(v70, v72, v73);
    v75 = v106;
    v135 = *(v106 + 8);
    v135(v70, v72);
    v76 = v112;
    v77 = v105;
    v78 = v116;
    (*(v112 + 16))(v105, v132, v116);
    v157 = v77;
    (*(v75 + 16))(v70, v74, v72);
    v158 = v70;
    v153 = v78;
    v154 = v72;
    v151 = sub_1000434AC();
    v152 = v73;
    v79 = v113;
    sub_100151024(&v157, 2uLL, &v153);
    v80 = v135;
    v135(v70, v72);
    v81 = *(v76 + 8);
    v81(v77, v78);
    sub_100043568();
    v82 = v130;
    swift_getWitnessTable();
    sub_100061970(v79, v126, v82);
    (*(v114 + 8))(v79, v82);
    v80(v125, v72);
    v81(v132, v78);
  }

  v83 = v137;
  v85 = v123;
  v84 = v124;
  (*(v136 + 16))(v123, v137, v124);
  v157 = v85;
  v87 = v127;
  v86 = v128;
  v88 = v138;
  v89 = v129;
  (*(v128 + 16))(v127, v138, v129);
  v158 = v87;
  v153 = v84;
  v154 = v89;
  v151 = v119;
  v90 = sub_100043568();
  v91 = swift_getWitnessTable();
  v149 = v90;
  v150 = v91;
  v152 = swift_getWitnessTable();
  sub_100151024(&v157, 2uLL, &v153);
  v92 = *(v86 + 8);
  v92(v88, v89);
  v93 = v120;
  v120(v83, v84);
  v92(v87, v89);
  return v93(v85, v84);
}

uint64_t sub_10003D2D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v25[0] = a1;
  v25[1] = a6;
  v10 = *(a2 - 8);
  __chkstk_darwin(a1);
  v12 = v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for VenueEventListHeader();
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  v17 = v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = v25 - v18;
  v25[2] = a2;
  v25[3] = a3;
  v25[4] = a4;
  v25[5] = a5;
  v20 = type metadata accessor for VenueEventView();
  v21 = sub_1000392E0(v20);
  (*(v10 + 16))(v12, v21 + *(*v21 + 168), a2);

  sub_100186D70(v12, a2, v17);
  WitnessTable = swift_getWitnessTable();
  sub_100157EFC(v17, v13, WitnessTable);
  v23 = *(v14 + 8);
  v23(v17, v13);
  sub_100157EFC(v19, v13, WitnessTable);
  return (v23)(v19, v13);
}

uint64_t sub_10003D510()
{
  v0 = type metadata accessor for VenueEventView();
  sub_1000392E0(v0);

  v1 = Text.init(_:tableName:bundle:comment:)();
  v3 = v2;
  v5 = v4;
  static Font.Weight.semibold.getter();
  v6 = Text.fontWeight(_:)();
  v8 = v7;
  v10 = v9;
  v12 = v11;
  sub_10000D60C(v1, v3, v5 & 1);

  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v24 = v10 & 1;
  *&v14 = v6;
  *(&v14 + 1) = v8;
  LOBYTE(v15) = v10 & 1;
  *(&v15 + 1) = v12;
  sub_100009F70(&qword_100219DC0);
  sub_10002DB5C();
  View.accessibilityIdentifier(_:)();
  v23[6] = v20;
  v23[7] = v21;
  v23[8] = v22;
  v23[2] = v16;
  v23[3] = v17;
  v23[4] = v18;
  v23[5] = v19;
  v23[0] = v14;
  v23[1] = v15;
  return sub_10000D52C(v23, &qword_100219DC0);
}

uint64_t sub_10003D720()
{
  v0 = type metadata accessor for VenueEventView();
  sub_1000392E0(v0);

  v1 = Text.init(_:tableName:bundle:comment:)();
  v3 = v2;
  v5 = v4;
  static Font.title3.getter();
  static Font.Weight.semibold.getter();
  Font.weight(_:)();

  v6 = Text.font(_:)();
  v8 = v7;
  v10 = v9;

  sub_10000D60C(v1, v3, v5 & 1);

  static Color.primary.getter();
  swift_getKeyPath();
  sub_100009F70(&qword_10021A4B8);
  sub_1000433DC();
  View.accessibilityIdentifier(_:)();
  sub_10000D60C(v6, v8, v10 & 1);
}

uint64_t sub_10003D908@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v41 = a2;
  v42 = a4;
  v38 = a1;
  v39 = a5;
  v43 = a6;
  v45 = a2;
  v46 = a3;
  v47 = a4;
  v48 = a5;
  v8 = type metadata accessor for VenueEventView();
  v9 = *(v8 - 8);
  v40 = *(v9 + 64);
  __chkstk_darwin(v8);
  v36 = v35 - v10;
  v11 = type metadata accessor for Array();
  v35[4] = v11;
  v35[0] = *(*(a5 + 8) + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v35[3] = AssociatedTypeWitness;
  v13 = sub_10000B3DC(&qword_10021A328);
  v35[2] = v13;
  WitnessTable = swift_getWitnessTable();
  v35[1] = WitnessTable;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v45 = v11;
  v46 = AssociatedTypeWitness;
  v47 = v13;
  v48 = WitnessTable;
  v49 = AssociatedConformanceWitness;
  v16 = type metadata accessor for ForEach();
  v37 = *(v16 - 8);
  v17 = __chkstk_darwin(v16);
  v19 = v35 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = v35 - v20;
  v22 = v8;
  v23 = v8;
  v24 = v38;
  sub_1000392E0(v23);
  v25 = sub_100031940();

  v45 = v25;
  v26 = v36;
  (*(v9 + 16))(v36, v24, v22);
  v27 = (*(v9 + 80) + 48) & ~*(v9 + 80);
  v28 = swift_allocObject();
  v29 = v42;
  *(v28 + 2) = v41;
  *(v28 + 3) = a3;
  v30 = v39;
  *(v28 + 4) = v29;
  *(v28 + 5) = v30;
  (*(v9 + 32))(&v28[v27], v26, v22);
  v31 = sub_10004248C();
  ForEach<>.init(_:content:)();
  v44 = v31;
  v32 = swift_getWitnessTable();
  sub_100157EFC(v19, v16, v32);
  v33 = *(v37 + 8);
  v33(v19, v16);
  sub_100157EFC(v21, v16, v32);
  return (v33)(v21, v16);
}

uint64_t sub_10003DCA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v61 = a6;
  v60 = a5;
  v59 = a3;
  v56 = a2;
  v70 = a7;
  v13 = type metadata accessor for PlainButtonStyle();
  v14 = *(v13 - 8);
  v68 = v13;
  v69 = v14;
  v15 = __chkstk_darwin(v13);
  v65 = &v53 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(a4 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v15);
  v55 = &v53 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = a3;
  v80 = a4;
  v81 = a5;
  v82 = a6;
  v19 = type metadata accessor for VenueEventView();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  __chkstk_darwin(v19);
  v23 = &v53 - v22;
  v54 = &v53 - v22;
  v63 = sub_100009F70(&qword_10021A338);
  v64 = *(v63 - 8);
  __chkstk_darwin(v63);
  v58 = &v53 - v24;
  v25 = sub_100009F70(&qword_10021A4E8);
  v26 = *(v25 - 8);
  v66 = v25;
  v67 = v26;
  __chkstk_darwin(v25);
  v62 = &v53 - v27;
  v28 = *(v20 + 16);
  v29 = v23;
  v30 = v19;
  v57 = v19;
  v28(v29, a2, v19);
  v53 = v17;
  v31 = a1;
  v32 = a4;
  (*(v17 + 16))(&v53 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0), a1, a4);
  v33 = (*(v20 + 80) + 48) & ~*(v20 + 80);
  v34 = (v21 + *(v17 + 80) + v33) & ~*(v17 + 80);
  v35 = swift_allocObject();
  v36 = v59;
  *(v35 + 2) = v59;
  *(v35 + 3) = v32;
  v37 = v60;
  v38 = v61;
  *(v35 + 4) = v60;
  *(v35 + 5) = v38;
  (*(v20 + 32))(&v35[v33], v54, v30);
  (*(v53 + 32))(&v35[v34], v55, v32);
  v71 = v36;
  v72 = v32;
  v73 = v37;
  v74 = v38;
  v75 = v31;
  v76 = v56;
  sub_100009F70(&qword_10021A4F0);
  sub_100043C30();
  v39 = v58;
  Button.init(action:label:)();
  v40 = v65;
  PlainButtonStyle.init()();
  v41 = sub_10000D1EC(&qword_10021A340, &qword_10021A338);
  v42 = sub_100042608(&qword_100218810, &type metadata accessor for PlainButtonStyle);
  v43 = v62;
  v44 = v63;
  v45 = v68;
  View.buttonStyle<A>(_:)();
  v46 = v40;
  v47 = v45;
  (*(v69 + 8))(v46, v45);
  (*(v64 + 8))(v39, v44);
  sub_1000392E0(v57);
  v48 = sub_100030744(v31);
  v50 = v49;

  v77 = v48;
  v78 = v50;
  v79 = v44;
  v80 = v47;
  v81 = v41;
  v82 = v42;
  swift_getOpaqueTypeConformance2();
  sub_100027068();
  v51 = v66;
  View.accessibilityLabel<A>(_:)();

  return (*(v67 + 8))(v43, v51);
}

uint64_t sub_10003E2BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = type metadata accessor for Optional();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = v20 - v14;
  v20[0] = a3;
  v20[1] = a4;
  v20[2] = a5;
  v20[3] = a6;
  v16 = type metadata accessor for VenueEventView();
  sub_1000392E0(v16);
  v17 = *(a4 - 8);
  (*(v17 + 16))(v15, a2, a4);
  (*(v17 + 56))(v15, 0, 1, a4);
  sub_1000314C8(v15);
  (*(v13 + 8))(v15, v12);

  sub_1000392E0(v16);
  v18 = *(a1 + *(v16 + 56));
  if (v18)
  {

    sub_100030CD0(10, 13, 0, 3u, v18);
  }

  else
  {
    type metadata accessor for RemoteViewConfiguration();
    sub_100042608(&qword_100218568, type metadata accessor for RemoteViewConfiguration);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

double sub_10003E4F0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v62 = a3;
  v63 = a5;
  v64 = a2;
  v65 = a7;
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v47 = swift_getAssociatedConformanceWitness();
  v48 = AssociatedTypeWitness;
  v61 = swift_getAssociatedTypeWitness();
  v46 = type metadata accessor for Optional();
  v45 = *(v46 - 8);
  __chkstk_darwin(v46);
  v55 = &v44 - v11;
  v57 = type metadata accessor for Date.FormatStyle.Symbol.Weekday();
  v56 = *(v57 - 8);
  __chkstk_darwin(v57);
  v13 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a6 + 8);
  v15 = swift_getAssociatedTypeWitness();
  v53 = *(v15 - 8);
  __chkstk_darwin(v15);
  v17 = &v44 - v16;
  v18 = swift_checkMetadataState();
  v67 = *(v18 - 8);
  v19 = __chkstk_darwin(v18);
  v54 = &v44 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v22 = &v44 - v21;
  v50 = a6;
  v52 = *(a6 + 88);
  v49 = a1;
  v52(a4, a6);
  v23 = sub_1001A699C(v18, AssociatedConformanceWitness);
  v59 = v24;
  v60 = v23;
  v25 = *(v67 + 8);
  v67 += 8;
  v51 = v25;
  v25(v22, v18);
  (*(v14 + 168))(a4, v14);
  static Date.FormatStyle.Symbol.Weekday.abbreviated.getter();
  v26 = v55;
  v27 = swift_getAssociatedConformanceWitness();
  v28 = sub_1000FB998(v13, v15, v27);
  v58 = v29;
  (*(v56 + 8))(v13, v57);
  (*(v53 + 8))(v17, v15);
  v31 = v62;
  v30 = v63;
  *&v68 = v62;
  *(&v68 + 1) = a4;
  v32 = v50;
  *&v69 = v63;
  *(&v69 + 1) = v50;
  v33 = type metadata accessor for VenueEventView();
  sub_1000392E0(v33);
  v34 = sub_1000319C8(v49, v31, a4, v30, v32);

  v35 = v54;
  v52(a4, v32);
  sub_1001A6B08(v18, AssociatedConformanceWitness, v26);
  v36 = v61;
  v51(v35, v18);
  v37 = *(v36 - 8);
  if ((*(v37 + 48))(v26, 1, v36) == 1)
  {
    (*(v45 + 8))(v26, v46);
    v70 = 0;
    v68 = 0u;
    v69 = 0u;
  }

  else
  {
    *(&v69 + 1) = v36;
    v70 = swift_getAssociatedConformanceWitness();
    v38 = sub_100043D3C(&v68);
    (*(v37 + 32))(v38, v26, v36);
  }

  *&v71[23] = v69;
  *&v71[7] = v68;
  v39 = *&v71[16];
  v40 = v65;
  *(v65 + 33) = *v71;
  *&v71[39] = v70;
  v41 = v59;
  *v40 = v60;
  *(v40 + 8) = v41;
  v42 = v58;
  *(v40 + 16) = v28;
  *(v40 + 24) = v42;
  *(v40 + 32) = v34 & 1;
  *(v40 + 49) = v39;
  result = *&v71[31];
  *(v40 + 64) = *&v71[31];
  *(v40 + 80) = 0;
  return result;
}

uint64_t sub_10003EB4C@<X0>(BOOL *a1@<X8>)
{
  result = ScrollGeometry.contentOffset.getter();
  *a1 = v3 > 0.0;
  return result;
}

uint64_t sub_10003EB80(uint64_t a1, char *a2)
{
  v2 = *a2;
  v3 = type metadata accessor for VenueEventView();
  sub_1000392E0(v3);
  sub_1000306B8(v2);
}

uint64_t sub_10003EBD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v149 = a1;
  v141 = a6;
  v134 = sub_100009F70(&qword_10021A398);
  __chkstk_darwin(v134);
  v133 = &v105 - v10;
  v140 = sub_100009F70(&qword_10021A378);
  v136 = *(v140 - 8);
  __chkstk_darwin(v140);
  v135 = &v105 - v11;
  v131 = sub_100009F70(&qword_10021A3A0);
  v129 = *(v131 - 8);
  __chkstk_darwin(v131);
  v121 = &v105 - v12;
  v130 = sub_100009F70(&qword_10021A3A8);
  v120 = *(v130 - 8);
  __chkstk_darwin(v130);
  v119 = &v105 - v13;
  v14 = sub_100009F70(&qword_10021A3B0);
  v15 = __chkstk_darwin(v14 - 8);
  v128 = &v105 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v132 = &v105 - v17;
  v127 = sub_100009F70(&qword_10021A3B8);
  v125 = *(v127 - 8);
  __chkstk_darwin(v127);
  v19 = &v105 - v18;
  v126 = sub_100009F70(&qword_10021A3C0);
  v108 = *(v126 - 8);
  __chkstk_darwin(v126);
  v107 = &v105 - v20;
  v21 = sub_100009F70(&qword_10021A3C8);
  v22 = __chkstk_darwin(v21 - 8);
  v124 = &v105 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v148 = (&v105 - v24);
  v123 = sub_100009F70(&qword_10021A3D0);
  v25 = *(v123 - 8);
  __chkstk_darwin(v123);
  v117 = &v105 - v26;
  v122 = sub_100009F70(&qword_10021A3D8);
  v116 = *(v122 - 8);
  __chkstk_darwin(v122);
  v115 = &v105 - v27;
  v28 = sub_100009F70(&qword_10021A3E0);
  v29 = __chkstk_darwin(v28 - 8);
  v31 = &v105 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v147 = &v105 - v32;
  v112 = sub_100009F70(&qword_10021A3E8);
  __chkstk_darwin(v112);
  v109 = &v105 - v33;
  v139 = sub_100009F70(&qword_10021A368);
  v114 = *(v139 - 8);
  __chkstk_darwin(v139);
  v113 = &v105 - v34;
  v111 = sub_100009F70(&qword_10021A3F0);
  v110 = *(v111 - 8);
  __chkstk_darwin(v111);
  v36 = &v105 - v35;
  v37 = type metadata accessor for ToolbarItemPlacement();
  __chkstk_darwin(v37 - 8);
  v143 = &v105 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v118 = sub_100009F70(&qword_10021A3F8);
  v39 = *(v118 - 8);
  __chkstk_darwin(v118);
  v41 = &v105 - v40;
  v138 = sub_100009F70(&qword_10021A350);
  __chkstk_darwin(v138);
  v137 = &v105 - v42;
  v144 = a2;
  v145 = a3;
  v150 = a2;
  v151 = a3;
  v146 = a4;
  v152 = a4;
  v153 = a5;
  v142 = type metadata accessor for VenueEventView();
  sub_1000392E0(v142);
  LOBYTE(a3) = sub_10002EEAC();

  if ((a3 & 1) != 0 && (static Solarium.isEnabled.getter() & 1) == 0)
  {
    v60 = static ToolbarItemPlacement.principal.getter();
    v148 = &v105;
    __chkstk_darwin(v60);
    v62 = v144;
    v61 = v145;
    *(&v105 - 6) = v144;
    *(&v105 - 5) = v61;
    v63 = v146;
    *(&v105 - 4) = v146;
    *(&v105 - 3) = a5;
    v64 = v149;
    *(&v105 - 2) = v149;
    sub_10004304C();
    ToolbarItem<>.init(placement:content:)();
    v65 = static ToolbarItemPlacement.topBarTrailing.getter();
    v148 = &v105;
    __chkstk_darwin(v65);
    *(&v105 - 6) = v62;
    *(&v105 - 5) = v61;
    *(&v105 - 4) = v63;
    *(&v105 - 3) = a5;
    *(&v105 - 2) = v64;
    sub_100009F70(&qword_100218930);
    sub_10000D1EC(&qword_10021A480, &qword_100218930);
    ToolbarItem<>.init(placement:content:)();
    v66 = *(v112 + 48);
    v67 = v109;
    (*(v39 + 16))(v109, v41, v118);
    v68 = v110;
    v69 = v111;
    (*(v110 + 16))(&v67[v66], v36, v111);
    v70 = v113;
    TupleToolbarContent.init(_:)();
    sub_10000D1EC(&qword_10021A360, &qword_10021A368);
    sub_10000D1EC(&qword_10021A370, &qword_10021A378);
    v71 = v137;
    v72 = v139;
    static ToolbarContentBuilder.buildEither<A, B>(first:)();
    (*(v114 + 8))(v70, v72);
    (*(v68 + 8))(v36, v69);
    (*(v39 + 8))(v41, v118);
LABEL_19:
    sub_100042650();
    static ToolbarContentBuilder.buildBlock<A>(_:)();
    return sub_10000D52C(v71, &qword_10021A350);
  }

  v118 = v19;
  v43 = v142;
  v44 = v149;
  sub_1000392E0(v142);
  v45 = sub_100031F5C();

  if (v45)
  {
    v46 = static ToolbarItemPlacement.topBarLeading.getter();
    __chkstk_darwin(v46);
    v47 = v145;
    *(&v105 - 6) = v144;
    *(&v105 - 5) = v47;
    *(&v105 - 4) = v146;
    *(&v105 - 3) = a5;
    v106 = a5;
    *(&v105 - 2) = v44;
    sub_100009F70(&qword_10021A440);
    v43 = v142;
    sub_100043328(&qword_10021A448, &qword_10021A440, &unk_1001AFAB8, sub_100042E48);
    v48 = v115;
    v44 = v149;
    ToolbarItem<>.init(placement:content:)();
    v49 = sub_10000D1EC(&qword_10021A400, &qword_10021A3D8);
    v50 = v117;
    v51 = v122;
    static ToolbarContentBuilder.buildBlock<A>(_:)();
    v52 = v123;
    (*(v25 + 16))(v31, v50, v123);
    (*(v25 + 56))(v31, 0, 1, v52);
    v150 = v51;
    v151 = v49;
    swift_getOpaqueTypeConformance2();
    static ToolbarContentBuilder.buildIf<A>(_:)();
    sub_10000D52C(v31, &qword_10021A3E0);
    (*(v25 + 8))(v50, v52);
    v53 = v48;
    v54 = v106;
    (*(v116 + 8))(v53, v51);
    v55 = v132;
  }

  else
  {
    (*(v25 + 56))(v31, 1, 1, v123);
    v56 = sub_10000D1EC(&qword_10021A400, &qword_10021A3D8);
    v150 = v122;
    v151 = v56;
    swift_getOpaqueTypeConformance2();
    static ToolbarContentBuilder.buildIf<A>(_:)();
    sub_10000D52C(v31, &qword_10021A3E0);
    v55 = v132;
    v54 = a5;
  }

  sub_1000392E0(v43);
  v57 = sub_100030028();

  if ((v57 & 1) != 0 && (static Solarium.isEnabled.getter() & 1) == 0)
  {
    v73 = static ToolbarItemPlacement.topBarTrailing.getter();
    __chkstk_darwin(v73);
    v74 = v145;
    *(&v105 - 6) = v144;
    *(&v105 - 5) = v74;
    *(&v105 - 4) = v146;
    *(&v105 - 3) = v54;
    *(&v105 - 2) = v44;
    sub_100009F70(&qword_10021A430);
    sub_100043328(&qword_10021A438, &qword_10021A430, &unk_1001AFAB0, sub_100042D0C);
    v75 = v107;
    v44 = v149;
    ToolbarItem<>.init(placement:content:)();
    v76 = sub_10000D1EC(&qword_10021A408, &qword_10021A3C0);
    v77 = v118;
    v78 = v126;
    static ToolbarContentBuilder.buildBlock<A>(_:)();
    v79 = v125;
    v80 = v124;
    v81 = v127;
    (*(v125 + 16))(v124, v77, v127);
    (*(v79 + 56))(v80, 0, 1, v81);
    v150 = v78;
    v151 = v76;
    swift_getOpaqueTypeConformance2();
    static ToolbarContentBuilder.buildIf<A>(_:)();
    sub_10000D52C(v80, &qword_10021A3C8);
    (*(v79 + 8))(v77, v81);
    v82 = v78;
    v43 = v142;
    (*(v108 + 8))(v75, v82);
  }

  else
  {
    v58 = v124;
    (*(v125 + 56))(v124, 1, 1, v127);
    v59 = sub_10000D1EC(&qword_10021A408, &qword_10021A3C0);
    v150 = v126;
    v151 = v59;
    swift_getOpaqueTypeConformance2();
    static ToolbarContentBuilder.buildIf<A>(_:)();
    sub_10000D52C(v58, &qword_10021A3C8);
  }

  v83 = *(v44 + *(v43 + 56));
  if (v83)
  {
    if (*(v83 + 88) && (*(v83 + 80) & 1) != 0)
    {
      v84 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v84 & 1) == 0)
      {
        v85 = v128;
        (*(v129 + 56))(v128, 1, 1, v131);
        v86 = sub_10000D1EC(&qword_10021A410, &qword_10021A3A8);
        v150 = v130;
        v151 = v86;
        swift_getOpaqueTypeConformance2();
        static ToolbarContentBuilder.buildIf<A>(_:)();
        sub_10000D52C(v85, &qword_10021A3B0);
LABEL_18:
        v96 = v133;
        v97 = *(v134 + 48);
        v98 = *(v134 + 64);
        v99 = v147;
        sub_10000D58C(v147, v133, &qword_10021A3E0);
        v100 = v148;
        sub_10000D58C(v148, v96 + v97, &qword_10021A3C8);
        sub_10000D58C(v55, v96 + v98, &qword_10021A3B0);
        v101 = v55;
        v102 = v135;
        TupleToolbarContent.init(_:)();
        sub_10000D1EC(&qword_10021A360, &qword_10021A368);
        sub_10000D1EC(&qword_10021A370, &qword_10021A378);
        v71 = v137;
        v103 = v140;
        static ToolbarContentBuilder.buildEither<A, B>(second:)();
        (*(v136 + 8))(v102, v103);
        sub_10000D52C(v101, &qword_10021A3B0);
        sub_10000D52C(v100, &qword_10021A3C8);
        sub_10000D52C(v99, &qword_10021A3E0);
        goto LABEL_19;
      }
    }

    else
    {
    }

    v87 = static ToolbarItemPlacement.topBarTrailing.getter();
    __chkstk_darwin(v87);
    v88 = v145;
    *(&v105 - 6) = v144;
    *(&v105 - 5) = v88;
    *(&v105 - 4) = v146;
    *(&v105 - 3) = v54;
    *(&v105 - 2) = v44;
    sub_100009F70(&qword_10021A418);
    sub_100042D0C();
    v89 = v119;
    ToolbarItem<>.init(placement:content:)();
    v90 = sub_10000D1EC(&qword_10021A410, &qword_10021A3A8);
    v91 = v121;
    v92 = v130;
    static ToolbarContentBuilder.buildBlock<A>(_:)();
    v93 = v129;
    v94 = v128;
    v95 = v131;
    (*(v129 + 16))(v128, v91, v131);
    (*(v93 + 56))(v94, 0, 1, v95);
    v150 = v92;
    v151 = v90;
    swift_getOpaqueTypeConformance2();
    static ToolbarContentBuilder.buildIf<A>(_:)();
    sub_10000D52C(v94, &qword_10021A3B0);
    (*(v93 + 8))(v91, v95);
    (*(v120 + 8))(v89, v92);
    goto LABEL_18;
  }

  type metadata accessor for RemoteViewConfiguration();
  sub_100042608(&qword_100218568, type metadata accessor for RemoteViewConfiguration);
  result = EnvironmentObject.error()();
  __break(1u);
  return result;
}

__n128 sub_100040220@<Q0>(unint64_t a1@<X1>, unint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v15 = type metadata accessor for VenueEventView();
  sub_10003933C(v15);
  swift_getKeyPath();
  v19.n128_u64[0] = a1;
  v19.n128_u64[1] = a2;
  type metadata accessor for VenueEventViewModel();
  type metadata accessor for Binding();
  Binding.subscript.getter();

  sub_10003933C(v15);
  swift_getKeyPath();
  Binding.subscript.getter();

  v10 = sub_1000392E0(v15);
  v11 = (v10 + *(*v10 + 208));
  v13 = *v11;
  v12 = v11[1];

  result = v19;
  *a5 = v19;
  *(a5 + 16) = a3;
  *(a5 + 24) = a4;
  *(a5 + 32) = v16;
  *(a5 + 40) = v17;
  *(a5 + 48) = v18;
  *(a5 + 49) = a1;
  *(a5 + 52) = a1 >> 24;
  *(a5 + 56) = v13;
  *(a5 + 64) = v12;
  return result;
}

uint64_t sub_10004041C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v22 = a4;
  v23 = a5;
  v24 = a6;
  v25 = a2;
  v26 = a3;
  v27 = a4;
  v28 = a5;
  v9 = type metadata accessor for VenueEventView();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = v20 - v12;
  v14 = sub_1000392E0(v11);
  v15 = v14 + *(*v14 + 192);
  v21 = *v15;
  v20[3] = *(v15 + 16);

  (*(v10 + 16))(v13, a1, v9);
  v16 = (*(v10 + 80) + 48) & ~*(v10 + 80);
  v17 = swift_allocObject();
  *(v17 + 2) = a2;
  *(v17 + 3) = a3;
  v18 = v23;
  *(v17 + 4) = v22;
  *(v17 + 5) = v18;
  (*(v10 + 32))(&v17[v16], v13, v9);
  return Button<>.init(_:action:)();
}

uint64_t sub_1000405E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_100009F70(&qword_10021A458);
  __chkstk_darwin(v10);
  v12 = &v14 - v11;
  sub_1000406F0(a1, a2, a3, a4, a5, &v14 - v11);
  sub_100042E48();
  View.accessibilityIdentifier(_:)();
  return sub_10000D52C(v12, &qword_10021A458);
}

uint64_t sub_1000406F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = sub_100009F70(&qword_10021A478);
  __chkstk_darwin(v12);
  v14 = &v34 - v13;
  v41 = sub_100009F70(&qword_10021A488);
  __chkstk_darwin(v41);
  v16 = &v34 - v15;
  v37 = a2;
  v38 = a3;
  v42 = a2;
  v43 = a3;
  v39 = a4;
  v40 = a5;
  v44 = a4;
  v45 = a5;
  v17 = type metadata accessor for VenueEventView();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v34 - v19;
  if (static Solarium.isEnabled.getter())
  {
    (*(v18 + 16))(v20, a1, v17);
    v21 = (*(v18 + 80) + 48) & ~*(v18 + 80);
    v22 = swift_allocObject();
    v23 = v38;
    *(v22 + 2) = v37;
    *(v22 + 3) = v23;
    v24 = v40;
    *(v22 + 4) = v39;
    *(v22 + 5) = v24;
    (*(v18 + 32))(&v22[v21], v20, v17);
    *v16 = 2;
    *(v16 + 1) = sub_1000447C4;
    *(v16 + 2) = v22;
    swift_storeEnumTagMultiPayload();
    sub_100042DC4();
    sub_100042F58();
    return _ConditionalContent<>.init(storage:)();
  }

  else
  {
    sub_1000392E0(v17);
    v26 = sub_10003007C();
    v35 = v12;
    v36 = a6;
    v27 = v26;
    v29 = v28;

    v42 = v27;
    v43 = v29;
    (*(v18 + 16))(v20, a1, v17);
    v30 = (*(v18 + 80) + 48) & ~*(v18 + 80);
    v31 = swift_allocObject();
    v32 = v38;
    *(v31 + 2) = v37;
    *(v31 + 3) = v32;
    v33 = v40;
    *(v31 + 4) = v39;
    *(v31 + 5) = v33;
    (*(v18 + 32))(&v31[v30], v20, v17);
    sub_100027068();
    Button<>.init<A>(_:action:)();
    *&v14[*(v35 + 36)] = static Color.blue.getter();
    sub_1000430E8(v14, v16);
    swift_storeEnumTagMultiPayload();
    sub_100042DC4();
    sub_100042F58();
    _ConditionalContent<>.init(storage:)();
    return sub_10000D52C(v14, &qword_10021A478);
  }
}

uint64_t sub_100040A94(uint64_t a1)
{
  sub_1000392E0(a1);
  sub_1000305D0();

  sub_1000392E0(a1);
  v3 = *(v1 + *(a1 + 56));
  if (v3)
  {

    sub_100030CD0(0, 14, 0, 3u, v3);
  }

  else
  {
    type metadata accessor for RemoteViewConfiguration();
    sub_100042608(&qword_100218568, type metadata accessor for RemoteViewConfiguration);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_100040B8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)()@<X2>, char *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v20 = a6;
  v21 = a2;
  v22 = a3;
  v23 = a4;
  v24 = a5;
  v11 = type metadata accessor for VenueEventView();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v20 - v13;
  (*(v12 + 16))(&v20 - v13, a1, v11);
  v15 = (*(v12 + 80) + 48) & ~*(v12 + 80);
  v16 = swift_allocObject();
  *(v16 + 2) = a2;
  *(v16 + 3) = a3;
  *(v16 + 4) = a4;
  *(v16 + 5) = a5;
  (*(v12 + 32))(&v16[v15], v14, v11);
  v17 = static Font.title2.getter();
  KeyPath = swift_getKeyPath();
  LOWORD(v21) = 1;
  v22 = sub_1000431F4;
  v23 = v16;
  v24 = KeyPath;
  v25 = v17;
  sub_100009F70(&qword_10021A418);
  sub_100042D0C();
  View.accessibilityIdentifier(_:)();
}

uint64_t sub_100040D6C(uint64_t a1)
{
  v2 = type metadata accessor for VenueEventView();
  sub_1000392E0(v2);
  sub_1000305C8();

  sub_1000392E0(v2);
  v3 = *(a1 + *(v2 + 56));
  if (v3)
  {

    sub_100030CD0(0, 0, 0, 3u, v3);
  }

  else
  {
    type metadata accessor for RemoteViewConfiguration();
    sub_100042608(&qword_100218568, type metadata accessor for RemoteViewConfiguration);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_100040E78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v23[1] = a1;
  v11 = type metadata accessor for DismissAction();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v11);
  v15 = v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = v23 - v16;
  v23[2] = a2;
  v23[3] = a3;
  v23[4] = a4;
  v23[5] = a5;
  type metadata accessor for VenueEventView();
  sub_100024868(v17);
  v18 = *(v12 + 32);
  v18(v15, v17, v11);
  v19 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v20 = swift_allocObject();
  v18((v20 + v19), v15, v11);
  v21 = static Font.title2.getter();
  result = swift_getKeyPath();
  *a6 = 0;
  *(a6 + 8) = sub_10004329C;
  *(a6 + 16) = v20;
  *(a6 + 24) = result;
  *(a6 + 32) = v21;
  return result;
}

uint64_t sub_10004101C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, void *a4@<X3>, void *a5@<X4>, void *a6@<X5>, uint64_t a7@<X8>)
{
  v82 = a6;
  v84 = a5;
  v83 = a3;
  v85 = a2;
  v86 = a1;
  v89 = a7;
  v88 = type metadata accessor for SearchFieldPlacement();
  v87 = *(v88 - 8);
  __chkstk_darwin(v88);
  v90 = &v75 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for VenueEventListHeader();
  v9 = type metadata accessor for Section();
  WitnessTable = swift_getWitnessTable();
  v109 = &protocol witness table for EmptyView;
  v110 = WitnessTable;
  v111 = &protocol witness table for EmptyView;
  v11 = swift_getWitnessTable();
  v104 = v9;
  v105 = v11;
  swift_getOpaqueTypeMetadata2();
  sub_10000B3DC(&qword_10021A310);
  v81 = type metadata accessor for ModifiedContent();
  v80 = sub_10000B3DC(&qword_10021A318);
  v79 = sub_10000B3DC(&qword_10021A320);
  v12 = type metadata accessor for Array();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14 = sub_10000B3DC(&qword_10021A328);
  v15 = swift_getWitnessTable();
  v16 = a4;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v104 = v12;
  v105 = AssociatedTypeWitness;
  v106 = v14;
  v107 = v15;
  v108 = AssociatedConformanceWitness;
  type metadata accessor for ForEach();
  v18 = type metadata accessor for Section();
  v103 = sub_10004248C();
  v19 = swift_getWitnessTable();
  v100 = &protocol witness table for EmptyView;
  v101 = v19;
  v102 = &protocol witness table for EmptyView;
  v20 = swift_getWitnessTable();
  v104 = v18;
  v105 = v20;
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for ModifiedContent();
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  type metadata accessor for _ConditionalContent();
  swift_getTupleTypeMetadata2();
  v21 = type metadata accessor for TupleView();
  v22 = swift_getWitnessTable();
  v104 = &type metadata for Never;
  v105 = v21;
  v106 = &protocol witness table for Never;
  v107 = v22;
  v23 = type metadata accessor for List();
  v24 = type metadata accessor for PlainListStyle();
  v25 = swift_getWitnessTable();
  v104 = v23;
  v105 = v24;
  v106 = v25;
  v107 = &protocol witness table for PlainListStyle;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v104 = v23;
  v105 = v24;
  v106 = v25;
  v107 = &protocol witness table for PlainListStyle;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v104 = OpaqueTypeMetadata2;
  v105 = OpaqueTypeConformance2;
  v28 = swift_getOpaqueTypeMetadata2();
  v104 = OpaqueTypeMetadata2;
  v105 = OpaqueTypeConformance2;
  v29 = swift_getOpaqueTypeConformance2();
  v104 = v28;
  v105 = v29;
  v30 = swift_getOpaqueTypeMetadata2();
  v104 = v28;
  v105 = v29;
  v31 = swift_getOpaqueTypeConformance2();
  v104 = v30;
  v105 = v31;
  v32 = swift_getOpaqueTypeMetadata2();
  v104 = v30;
  v105 = v31;
  v33 = swift_getOpaqueTypeConformance2();
  v104 = v32;
  v105 = v33;
  v34 = swift_getOpaqueTypeMetadata2();
  v104 = v32;
  v105 = v33;
  v35 = swift_getOpaqueTypeConformance2();
  v104 = v34;
  v105 = v35;
  v36 = swift_getOpaqueTypeMetadata2();
  v104 = v34;
  v105 = v35;
  v37 = swift_getOpaqueTypeConformance2();
  v38 = sub_100027068();
  v104 = v36;
  v105 = &type metadata for String;
  v106 = v37;
  v107 = v38;
  v39 = swift_getOpaqueTypeMetadata2();
  v104 = v36;
  v105 = &type metadata for String;
  v106 = v37;
  v107 = v38;
  v40 = swift_getOpaqueTypeConformance2();
  v104 = v39;
  v105 = &type metadata for Bool;
  v106 = v40;
  v107 = &protocol witness table for Bool;
  v41 = swift_getOpaqueTypeMetadata2();
  v42 = sub_10000B3DC(&qword_10021A348);
  v104 = v39;
  v105 = &type metadata for Bool;
  v106 = v40;
  v107 = &protocol witness table for Bool;
  v43 = swift_getOpaqueTypeConformance2();
  v44 = sub_10000B3DC(&qword_10021A350);
  v45 = sub_100042650();
  v104 = v44;
  v105 = v45;
  v46 = swift_getOpaqueTypeConformance2();
  v104 = v41;
  v105 = v42;
  v106 = v43;
  v107 = v46;
  v47 = swift_getOpaqueTypeMetadata2();
  v104 = v41;
  v105 = v42;
  v106 = v43;
  v107 = v46;
  v48 = swift_getOpaqueTypeConformance2();
  v75 = v47;
  v104 = v47;
  v105 = &type metadata for String;
  v78 = v48;
  v106 = v48;
  v107 = v38;
  v81 = v38;
  v80 = swift_getOpaqueTypeMetadata2();
  v79 = *(v80 - 8);
  v49 = __chkstk_darwin(v80);
  v76 = &v75 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v49);
  v77 = &v75 - v51;
  v52 = v83;
  v104 = v83;
  v105 = v16;
  v53 = v16;
  v54 = v84;
  v55 = v82;
  v106 = v84;
  v107 = v82;
  v56 = type metadata accessor for VenueEventView();
  v57 = sub_10003933C(v56);
  v59 = v58;
  v61 = v60;
  v91 = v52;
  v92 = v53;
  v93 = v54;
  v94 = v55;
  swift_getKeyPath();
  v97 = v57;
  v98 = v59;
  v99 = v61;
  v104 = v52;
  v105 = v53;
  v106 = v54;
  v107 = v55;
  type metadata accessor for VenueEventViewModel();
  type metadata accessor for Binding();
  Binding.subscript.getter();

  v83 = v106;
  v84 = v107;

  sub_1000392E0(v56);
  LOBYTE(v57) = sub_100030028();

  if (v57)
  {
    static SearchFieldPlacement.automatic.getter();
  }

  else
  {
    static SearchFieldPlacement.never.getter();
  }

  v62 = sub_1000392E0(v56);
  v63 = (v62 + *(*v62 + 208));
  v64 = *v63;
  v65 = v63[1];

  v95 = v64;
  v96 = v65;
  v66 = swift_checkMetadataState();
  v67 = v81;
  v68 = v78;
  v69 = v76;
  View.searchable<A>(text:placement:prompt:)();

  (*(v87 + 8))(v90, v88);
  v104 = v66;
  v105 = &type metadata for String;
  v106 = v68;
  v107 = v67;
  v70 = swift_getOpaqueTypeConformance2();
  v71 = v77;
  v72 = v80;
  sub_100157EFC(v69, v80, v70);
  v73 = *(v79 + 8);
  v73(v69, v72);
  sub_100157EFC(v71, v72, v70);
  return (v73)(v71, v72);
}

uint64_t sub_100041B3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X4>, uint64_t a4@<X8>)
{
  v30 = a1;
  v31 = a4;
  v6 = type metadata accessor for Optional();
  v7 = __chkstk_darwin(v6 - 8);
  v29 = &v28 - v8;
  v9 = *(a2 - 8);
  __chkstk_darwin(v7);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100042730();
  v13 = sub_100042784();
  v32 = a2;
  v33 = &type metadata for ArtistFetcher;
  v34 = &type metadata for PromotionalPlaylistFetcher;
  v35 = a3;
  v36 = v12;
  v37 = v13;
  v14 = type metadata accessor for MusicEventView();
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v14);
  v18 = &v28 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = &v28 - v19;
  v32 = a2;
  v33 = &type metadata for ArtistFetcher;
  v34 = &type metadata for PromotionalPlaylistFetcher;
  v35 = a3;
  v36 = v12;
  v37 = v13;
  type metadata accessor for MusicEventViewModel();
  (*(v9 + 16))(v11, v30, a2);
  v21 = v29;
  (*(v9 + 56))(v29, 1, 1, a2);
  sub_1000B1CDC(v11, v21, v22, v23);
  KeyPath = swift_getKeyPath();
  sub_100061A68(KeyPath, 0, v18);
  WitnessTable = swift_getWitnessTable();
  sub_100157EFC(v18, v14, WitnessTable);
  v26 = *(v15 + 8);
  v26(v18, v14);
  sub_100157EFC(v20, v14, WitnessTable);
  return v26(v20, v14);
}

uint64_t sub_100041E24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v27 = a2;
  v28 = a4;
  v25 = a1;
  v29 = a6;
  v30 = a2;
  v31 = a3;
  v32 = a4;
  v33 = a5;
  v8 = type metadata accessor for VenueEventView();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v24 - v10;
  v12 = type metadata accessor for FilterView();
  v26 = *(v12 - 8);
  v13 = __chkstk_darwin(v12);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v24 - v16;
  (*(v9 + 16))(v11, v25, v8);
  v18 = (*(v9 + 80) + 48) & ~*(v9 + 80);
  v19 = swift_allocObject();
  v20 = v28;
  *(v19 + 2) = v27;
  *(v19 + 3) = a3;
  *(v19 + 4) = v20;
  *(v19 + 5) = a5;
  (*(v9 + 32))(&v19[v18], v11, v8);
  sub_10010C59C(v15);
  WitnessTable = swift_getWitnessTable();
  sub_100157EFC(v15, v12, WitnessTable);
  v22 = *(v26 + 8);
  v22(v15, v12);
  sub_100157EFC(v17, v12, WitnessTable);
  return (v22)(v17, v12);
}

uint64_t sub_1000420AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for FilterViewModel.FilterConfiguration();
  v9 = type metadata accessor for Binding();
  v21 = *(v9 - 8);
  v22 = v9;
  __chkstk_darwin(v9);
  v11 = v20 - v10;
  v20[1] = type metadata accessor for FilterViewModel();
  v30 = a2;
  v31 = a3;
  v32 = a4;
  v33 = a5;
  v12 = type metadata accessor for VenueEventView();
  v13 = sub_10003933C(v12);
  v15 = v14;
  v17 = v16;
  v23 = a2;
  v24 = a3;
  v25 = a4;
  v26 = a5;
  swift_getKeyPath();
  v27 = v13;
  v28 = v15;
  v29 = v17;
  v30 = a2;
  v31 = a3;
  v32 = a4;
  v33 = a5;
  type metadata accessor for VenueEventViewModel();
  type metadata accessor for Binding();
  Binding.subscript.getter();

  v18 = sub_100164A14(v11);
  (*(v21 + 8))(v11, v22);
  return v18;
}

uint64_t sub_100042264(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v7 = type metadata accessor for VenueEventView();
  v8 = sub_1000392E0(v7);
  a6(v8, v9, v10, v11);
}

uint64_t sub_1000422BC(uint64_t a1)
{
  v2 = type metadata accessor for VenueEventView();
  sub_1000392E0(v2);
  if (*(a1 + *(v2 + 56)))
  {

    sub_100031018(v3);
  }

  else
  {
    type metadata accessor for RemoteViewConfiguration();
    sub_100042608(&qword_100218568, type metadata accessor for RemoteViewConfiguration);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_100042398(uint64_t a1)
{
  v2 = type metadata accessor for VenueEventView();
  sub_1000392E0(v2);
  v3 = *(a1 + *(v2 + 56));
  if (v3)
  {

    sub_100030CD0(0, 2, 0, 3u, v3);
  }

  else
  {
    type metadata accessor for RemoteViewConfiguration();
    sub_100042608(&qword_100218568, type metadata accessor for RemoteViewConfiguration);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

unint64_t sub_10004248C()
{
  result = qword_10021A330;
  if (!qword_10021A330)
  {
    sub_10000B3DC(&qword_10021A328);
    sub_10000B3DC(&qword_10021A338);
    type metadata accessor for PlainButtonStyle();
    sub_10000D1EC(&qword_10021A340, &qword_10021A338);
    sub_100042608(&qword_100218810, &type metadata accessor for PlainButtonStyle);
    swift_getOpaqueTypeConformance2();
    sub_100042608(&qword_100218698, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021A330);
  }

  return result;
}

uint64_t sub_100042608(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_100042650()
{
  result = qword_10021A358;
  if (!qword_10021A358)
  {
    sub_10000B3DC(&qword_10021A350);
    sub_10000D1EC(&qword_10021A360, &qword_10021A368);
    sub_10000D1EC(&qword_10021A370, &qword_10021A378);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021A358);
  }

  return result;
}

unint64_t sub_100042730()
{
  result = qword_10021A380;
  if (!qword_10021A380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021A380);
  }

  return result;
}

unint64_t sub_100042784()
{
  result = qword_10021A388;
  if (!qword_10021A388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021A388);
  }

  return result;
}

__n128 sub_100042844(uint64_t a1, _OWORD *a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v3;
  return result;
}

uint64_t sub_10004286C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_10002F650();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1000428EC@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v7 = *(type metadata accessor for VenueEventView() - 8);
  v8 = v1 + ((*(v7 + 80) + 48) & ~*(v7 + 80));

  return sub_100041E24(v8, v3, v4, v5, v6, a1);
}

uint64_t sub_1000429B0(void (*a1)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v7 = *(type metadata accessor for VenueEventView() - 8);
  return sub_100042264(v1 + ((*(v7 + 80) + 48) & ~*(v7 + 80)), v3, v4, v5, v6, a1);
}

uint64_t sub_100042A68(uint64_t (*a1)(char *, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  v6 = *(type metadata accessor for VenueEventView() - 8);
  v7 = v1 + ((*(v6 + 80) + 48) & ~*(v6 + 80));

  return a1(v7, v2, v3, v4, v5);
}

uint64_t sub_100042B30()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = *(type metadata accessor for VenueEventView() - 8);
  v6 = v0 + ((*(v5 + 80) + 48) & ~*(v5 + 80));

  return sub_1000420AC(v6, v1, v2, v3, v4);
}

uint64_t sub_100042C04(uint64_t a1, char *a2)
{
  type metadata accessor for VenueEventView();

  return sub_10003EB80(a1, a2);
}

unint64_t sub_100042D0C()
{
  result = qword_10021A420;
  if (!qword_10021A420)
  {
    sub_10000B3DC(&qword_10021A418);
    sub_100042DC4();
    sub_10000D1EC(&qword_1002188D0, &qword_1002188D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021A420);
  }

  return result;
}

unint64_t sub_100042DC4()
{
  result = qword_10021A428;
  if (!qword_10021A428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021A428);
  }

  return result;
}

unint64_t sub_100042E48()
{
  result = qword_10021A450;
  if (!qword_10021A450)
  {
    sub_10000B3DC(&qword_10021A458);
    sub_100042ECC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021A450);
  }

  return result;
}

unint64_t sub_100042ECC()
{
  result = qword_10021A460;
  if (!qword_10021A460)
  {
    sub_10000B3DC(&qword_10021A468);
    sub_100042DC4();
    sub_100042F58();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021A460);
  }

  return result;
}

unint64_t sub_100042F58()
{
  result = qword_10021A470;
  if (!qword_10021A470)
  {
    sub_10000B3DC(&qword_10021A478);
    sub_10000D1EC(&qword_10021A480, &qword_100218930);
    sub_10000D1EC(&qword_1002188E0, &qword_1002188E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021A470);
  }

  return result;
}

unint64_t sub_10004304C()
{
  result = qword_10021EE00;
  if (!qword_10021EE00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021EE00);
  }

  return result;
}

uint64_t sub_1000430E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100009F70(&qword_10021A478);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100043158()
{
  type metadata accessor for VenueEventView();
  v0 = type metadata accessor for VenueEventView();
  return sub_100040A94(v0);
}