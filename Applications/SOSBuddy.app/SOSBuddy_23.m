uint64_t sub_100210BB0()
{

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_100210BFC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_100210C78()
{
  result = qword_1003681F0;
  if (!qword_1003681F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003681F0);
  }

  return result;
}

unint64_t sub_100210CD0()
{
  result = qword_1003681F8;
  if (!qword_1003681F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003681F8);
  }

  return result;
}

unint64_t sub_100210D28()
{
  result = qword_100368200;
  if (!qword_100368200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100368200);
  }

  return result;
}

unint64_t sub_100210D80()
{
  result = qword_100368208;
  if (!qword_100368208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100368208);
  }

  return result;
}

unint64_t sub_100210DD8()
{
  result = qword_100368210;
  if (!qword_100368210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100368210);
  }

  return result;
}

unint64_t sub_100210E30()
{
  result = qword_100368218;
  if (!qword_100368218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100368218);
  }

  return result;
}

uint64_t sub_100210ED0(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v5 = a2[2];
  v4 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = _stringCompareWithSmolCheck(_:_:expecting:)(), result = 0, (v7 & 1) != 0))
  {
    if (v3)
    {
      if (v4)
      {
        v9 = v2 == v5 && v3 == v4;
        if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          return 1;
        }
      }
    }

    else if (!v4)
    {
      return 1;
    }

    return 0;
  }

  return result;
}

uint64_t sub_100210F70(__int16 a1)
{
  if ((a1 & 0xFF00) == 0x200)
  {
    v2 = 0;
    goto LABEL_3;
  }

  if (a1 > 5u)
  {
    v2 = 0;
    if (a1 - 7 >= 2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    if (a1 - 1 >= 5)
    {
      [objc_opt_self() greenColor];
      v2 = 1;
      goto LABEL_16;
    }

    v2 = 1;
  }

  if (((1 << a1) & 0x1C) != 0)
  {
    v4 = [objc_opt_self() whiteColor];
    goto LABEL_13;
  }

  if (((1 << a1) & 0x22) != 0)
  {
    v4 = [objc_opt_self() systemOrangeColor];
LABEL_13:
    v4;
    goto LABEL_16;
  }

LABEL_3:
  v3 = a1 & 0xFF00;
  [objc_opt_self() clearColor];
  if (v3 == 512)
  {
LABEL_18:
    if (qword_100353968 == -1)
    {
      return v2;
    }

    goto LABEL_27;
  }

LABEL_16:
  if (a1 <= 8u)
  {
    if (((1 << a1) & 0x5C) != 0)
    {
      goto LABEL_18;
    }

    if (((1 << a1) & 0x22) != 0)
    {
LABEL_23:
      if (qword_100353960 == -1)
      {
        return v2;
      }

      goto LABEL_27;
    }

    if (((1 << a1) & 0x180) != 0)
    {
      if ((a1 & 0x100) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_23;
    }
  }

  if (qword_100353958 != -1)
  {
LABEL_27:
    swift_once();
  }

  return v2;
}

double static ConnectionAssistantDisplayState.Metrics.fullScreen.getter@<D0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0xC046800000000000;
  *(a1 + 16) = 0xC04C000000000000;
  *(a1 + 24) = 0;
  *(a1 + 32) = xmmword_100290320;
  *(a1 + 48) = 0xC04C000000000000;
  *(a1 + 56) = 0xC050000000000000;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0x3FE3333333333333;
  *(a1 + 80) = 1;
  *(a1 + 88) = 0x3FE4CCCCCCCCCCCDLL;
  *(a1 + 96) = 1;
  result = 26.0;
  *(a1 + 104) = xmmword_100290330;
  return result;
}

double sub_100211268@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  type metadata accessor for UIMetrics();
  sub_1001B3B34(&qword_100354D40, type metadata accessor for UIMetrics);
  v9 = EnvironmentObject.init()();
  v11 = v10;
  State.init(wrappedValue:)();
  type metadata accessor for CGSize(0);
  State.init(wrappedValue:)();
  type metadata accessor for CGRect(0);
  State.init(wrappedValue:)();
  State.init(wrappedValue:)();
  State.init(wrappedValue:)();
  result = *&v16;
  *a6 = v9;
  *(a6 + 8) = v11;
  *(a6 + 16) = a1;
  *(a6 + 24) = a2;
  *(a6 + 32) = a3;
  *(a6 + 40) = a4;
  *(a6 + 48) = a5;
  *(a6 + 56) = v16;
  *(a6 + 64) = *(&v16 + 1);
  *(a6 + 72) = v16;
  *(a6 + 88) = v17;
  *(a6 + 96) = v16;
  *(a6 + 112) = v17;
  *(a6 + 128) = v18;
  *(a6 + 152) = v17;
  *(a6 + 136) = v16;
  *(a6 + 168) = v18;
  *(a6 + 176) = v16;
  return result;
}

uint64_t sub_100211420@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v44 = a2;
  v45 = a1;
  *&v40 = *(a1 + 16);
  *&v41 = *(a1 + 32);
  type metadata accessor for VStack();
  sub_100008CF0(&qword_100368310);
  type metadata accessor for ModifiedContent();
  sub_100008CF0(&qword_100368318);
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  v43 = &protocol conformance descriptor for _BackgroundModifier<A>;
  v53[32] = swift_getWitnessTable();
  v53[33] = sub_100009274(&qword_100368320, &qword_100368310);
  v42 = &protocol conformance descriptor for _PreferenceActionModifier<A>;
  v53[30] = swift_getWitnessTable();
  v53[31] = sub_100009274(&qword_100368328, &qword_100368318);
  v53[28] = swift_getWitnessTable();
  v53[29] = &protocol witness table for _PaddingLayout;
  swift_getWitnessTable();
  v4 = type metadata accessor for ScrollView();
  WitnessTable = swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  v53[0] = v4;
  v53[1] = WitnessTable;
  swift_getOpaqueTypeConformance2();
  type metadata accessor for VStack();
  sub_100008CF0(&qword_100368330);
  v38 = *(v45 + 24);
  sub_100008CF0(&qword_10035B068);
  type metadata accessor for ModifiedContent();
  type metadata accessor for AccessibilityAttachmentModifier();
  type metadata accessor for ModifiedContent();
  v37 = *(v45 + 40);
  v53[26] = v37;
  v53[27] = sub_100009274(&qword_10035B070, &qword_10035B068);
  v39 = &protocol conformance descriptor for <> ModifiedContent<A, B>;
  v53[24] = swift_getWitnessTable();
  v53[25] = sub_1001B3B34(&qword_100355078, &type metadata accessor for AccessibilityAttachmentModifier);
  swift_getWitnessTable();
  type metadata accessor for VStack();
  sub_100008CF0(&qword_100368338);
  type metadata accessor for ModifiedContent();
  sub_100008CF0(&qword_100368340);
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for VStack();
  swift_getTupleTypeMetadata3();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  v6 = type metadata accessor for ZStack();
  v36 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = v35 - v7;
  sub_100008CF0(&qword_100368348);
  v35[1] = type metadata accessor for ModifiedContent();
  sub_100008CF0(&qword_100368350);
  v9 = type metadata accessor for ModifiedContent();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = v35 - v14;
  *&v16 = v40;
  *(&v16 + 1) = v38;
  *&v17 = v41;
  *(&v17 + 1) = v37;
  v40 = v16;
  v41 = v17;
  v46 = v16;
  v47 = v17;
  v48 = v3;
  static Alignment.center.getter();
  ZStack.init(alignment:content:)();
  v18 = swift_allocObject();
  v19 = v41;
  v18[1] = v40;
  v18[2] = v19;
  v20 = v3[9];
  v18[11] = v3[8];
  v18[12] = v20;
  v21 = v3[11];
  v18[13] = v3[10];
  v18[14] = v21;
  v22 = v3[5];
  v18[7] = v3[4];
  v18[8] = v22;
  v23 = v3[7];
  v18[9] = v3[6];
  v18[10] = v23;
  v24 = v3[1];
  v18[3] = *v3;
  v18[4] = v24;
  v25 = v3[3];
  v26 = v45;
  v18[5] = v3[2];
  v18[6] = v25;
  (*(*(v26 - 8) + 16))(v53, v3);
  v27 = swift_getWitnessTable();
  v28 = sub_100214580();
  sub_100034C64(sub_100214570, v18, v6, &type metadata for ViewContentSizeKey, v27, v28, v12);

  (*(v36 + 8))(v8, v6);
  v29 = sub_100009274(&qword_100368360, &qword_100368348);
  v51 = v27;
  v52 = v29;
  v30 = swift_getWitnessTable();
  v31 = sub_100009274(&qword_100368368, &qword_100368350);
  v49 = v30;
  v50 = v31;
  v32 = swift_getWitnessTable();
  sub_10009A58C(v12, v9, v32);
  v33 = *(v10 + 8);
  v33(v12, v9);
  sub_10009A58C(v15, v9, v32);
  return (v33)(v15, v9);
}

uint64_t sub_100211BE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v41 = a5;
  v57 = a3;
  v58 = a4;
  v56 = a2;
  v47 = a1;
  v54 = a6;
  sub_100008CF0(&qword_10035B068);
  type metadata accessor for ModifiedContent();
  type metadata accessor for AccessibilityAttachmentModifier();
  type metadata accessor for ModifiedContent();
  v91 = a5;
  v92 = sub_100009274(&qword_10035B070, &qword_10035B068);
  WitnessTable = swift_getWitnessTable();
  v90 = sub_1001B3B34(&qword_100355078, &type metadata accessor for AccessibilityAttachmentModifier);
  swift_getWitnessTable();
  type metadata accessor for VStack();
  sub_100008CF0(&qword_100368338);
  type metadata accessor for ModifiedContent();
  sub_100008CF0(&qword_100368340);
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  swift_getTupleTypeMetadata2();
  v7 = type metadata accessor for TupleView();
  v48 = swift_getWitnessTable();
  v49 = v7;
  v53 = type metadata accessor for VStack();
  v50 = *(v53 - 8);
  __chkstk_darwin(v53);
  v52 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v51 = &v41 - v10;
  type metadata accessor for VStack();
  sub_100008CF0(&qword_100368310);
  type metadata accessor for ModifiedContent();
  sub_100008CF0(&qword_100368318);
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  v55 = &protocol conformance descriptor for VStack<A>;
  v11 = swift_getWitnessTable();
  v12 = v41;
  v13 = sub_100009274(&qword_100368320, &qword_100368310);
  v87 = v11;
  v88 = v13;
  v14 = swift_getWitnessTable();
  v15 = sub_100009274(&qword_100368328, &qword_100368318);
  v85 = v14;
  v86 = v15;
  v83 = swift_getWitnessTable();
  v84 = &protocol witness table for _PaddingLayout;
  swift_getWitnessTable();
  v16 = type metadata accessor for ScrollView();
  v17 = swift_getWitnessTable();
  *&v93 = v16;
  *(&v93 + 1) = v17;
  swift_getOpaqueTypeMetadata2();
  *&v93 = v16;
  *(&v93 + 1) = v17;
  swift_getOpaqueTypeConformance2();
  v18 = type metadata accessor for VStack();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v41 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = &v41 - v23;
  v59 = v56;
  v60 = v57;
  v61 = v58;
  v62 = v12;
  v25 = v47;
  v63 = v47;
  static HorizontalAlignment.center.getter();
  VStack.init(alignment:spacing:content:)();
  v26 = swift_getWitnessTable();
  v55 = v24;
  v43 = v26;
  sub_10009A58C(v21, v18, v26);
  v42 = v19;
  v27 = *(v19 + 8);
  v45 = v19 + 8;
  v46 = v18;
  v44 = v27;
  v27(v21, v18);
  v28 = v25;
  v93 = *(v25 + 56);
  sub_1000040A8(&qword_100354AA8);
  State.wrappedValue.getter();
  if (v80 == 1)
  {
    v29 = static HorizontalAlignment.center.getter();
    LOBYTE(v93) = 0;
    sub_100213334(v28, v56, v57, v58, v12, &v65);
    *(&v64[4] + 7) = v69;
    *(&v64[3] + 7) = v68;
    *(&v64[7] + 7) = v72;
    *(&v64[8] + 7) = v73;
    *(&v64[9] + 7) = v74;
    *(&v64[10] + 7) = v75;
    *(&v64[5] + 7) = v70;
    *(&v64[6] + 7) = v71;
    *(v64 + 7) = v65;
    *(&v64[1] + 7) = v66;
    *(&v64[2] + 7) = v67;
    *(&v81[7] + 1) = v64[7];
    *(&v81[8] + 1) = v64[8];
    *(&v81[9] + 1) = v64[9];
    v81[10] = *(&v64[9] + 15);
    *(&v81[3] + 1) = v64[3];
    *(&v81[4] + 1) = v64[4];
    *(&v81[5] + 1) = v64[5];
    *(&v81[6] + 1) = v64[6];
    *(v81 + 1) = v64[0];
    *(&v81[1] + 1) = v64[1];
    v80 = v29;
    LOBYTE(v81[0]) = v93;
    *(&v81[2] + 1) = v64[2];
    v30 = sub_1002146DC(&v80);
    v103 = v81[9];
    v104 = v81[10];
    v105 = v82;
    v99 = v81[5];
    v100 = v81[6];
    v101 = v81[7];
    v102 = v81[8];
    v95 = v81[1];
    v96 = v81[2];
    v97 = v81[3];
    v98 = v81[4];
    v93 = v80;
    v94 = v81[0];
  }

  else
  {
    sub_1002145EC(&v93);
  }

  __chkstk_darwin(v30);
  v31 = v57;
  *(&v41 - 6) = v56;
  *(&v41 - 5) = v31;
  *(&v41 - 4) = v58;
  *(&v41 - 3) = v12;
  *(&v41 - 2) = v28;
  static HorizontalAlignment.center.getter();
  v32 = v52;
  VStack.init(alignment:spacing:content:)();
  v33 = v53;
  v34 = swift_getWitnessTable();
  v35 = v51;
  sub_10009A58C(v32, v33, v34);
  v36 = v50;
  v37 = *(v50 + 8);
  v37(v32, v33);
  v38 = v46;
  (*(v42 + 16))(v21, v55, v46);
  v81[9] = v103;
  v81[10] = v104;
  v82 = v105;
  v81[5] = v99;
  v81[6] = v100;
  v81[7] = v101;
  v81[8] = v102;
  v81[1] = v95;
  v81[2] = v96;
  v81[3] = v97;
  v81[4] = v98;
  v80 = v93;
  v81[0] = v94;
  *&v65 = v21;
  *(&v65 + 1) = &v80;
  (*(v36 + 16))(v32, v35, v33);
  *&v66 = v32;
  v79[0] = v38;
  v79[1] = sub_1000040A8(&qword_100368330);
  v79[2] = v33;
  v76 = v43;
  v77 = sub_10021462C();
  v78 = v34;
  sub_1000970F0(&v65, 3uLL, v79);
  v37(v35, v33);
  v39 = v44;
  v44(v55, v38);
  v37(v32, v33);
  return v39(v21, v38);
}

uint64_t sub_100212528@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v35 = a5;
  v32 = a4;
  v33 = a3;
  v34 = a1;
  v36 = a6;
  type metadata accessor for VStack();
  sub_100008CF0(&qword_100368310);
  type metadata accessor for ModifiedContent();
  sub_100008CF0(&qword_100368318);
  type metadata accessor for ModifiedContent();
  v7 = type metadata accessor for ModifiedContent();
  WitnessTable = swift_getWitnessTable();
  v51 = sub_100009274(&qword_100368320, &qword_100368310);
  v48 = swift_getWitnessTable();
  v49 = sub_100009274(&qword_100368328, &qword_100368318);
  v46 = swift_getWitnessTable();
  v47 = &protocol witness table for _PaddingLayout;
  v28 = v7;
  v27 = swift_getWitnessTable();
  v8 = type metadata accessor for ScrollView();
  v31 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v25 - v9;
  v26 = swift_getWitnessTable();
  v42 = v8;
  v43 = v26;
  v29 = &opaque type descriptor for <<opaque return type of View.scrollDisabled(_:)>>;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v30 = *(OpaqueTypeMetadata2 - 8);
  __chkstk_darwin(OpaqueTypeMetadata2);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v25 - v15;
  v17 = a2;
  v37 = a2;
  v18 = v33;
  v19 = v32;
  v38 = v33;
  v39 = v32;
  v20 = v35;
  v40 = v35;
  v41 = v34;
  static Axis.Set.vertical.getter();
  ScrollView.init(_:showsIndicators:content:)();
  v42 = v17;
  v43 = v18;
  v44 = v19;
  v45 = v20;
  type metadata accessor for ScrollableContentWithFloatingPanelView();
  sub_1002131E0();
  v21 = v26;
  View.scrollDisabled(_:)();
  (*(v31 + 8))(v10, v8);
  v42 = v8;
  v43 = v21;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_10009A58C(v13, OpaqueTypeMetadata2, OpaqueTypeConformance2);
  v23 = *(v30 + 8);
  v23(v13, OpaqueTypeMetadata2);
  sub_10009A58C(v16, OpaqueTypeMetadata2, OpaqueTypeConformance2);
  return (v23)(v16, OpaqueTypeMetadata2);
}

uint64_t sub_10021297C@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v45 = a5;
  v53 = a6;
  v10 = type metadata accessor for VStack();
  v47 = *(v10 - 8);
  __chkstk_darwin(v10);
  v44 = &v44 - v11;
  sub_100008CF0(&qword_100368310);
  v12 = type metadata accessor for ModifiedContent();
  sub_100008CF0(&qword_100368318);
  v48 = v12;
  v13 = type metadata accessor for ModifiedContent();
  v51 = *(v13 - 8);
  __chkstk_darwin(v13);
  v15 = &v44 - v14;
  v46 = v16;
  v17 = type metadata accessor for ModifiedContent();
  v52 = *(v17 - 8);
  __chkstk_darwin(v17);
  v49 = &v44 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v50 = &v44 - v20;
  v54 = a2;
  v55 = a3;
  v21 = v45;
  v56 = a4;
  v57 = v45;
  v58 = a1;
  static HorizontalAlignment.center.getter();
  VStack.init(alignment:spacing:content:)();
  v22 = swift_allocObject();
  *(v22 + 16) = a2;
  *(v22 + 24) = a3;
  *(v22 + 32) = a4;
  *(v22 + 40) = v21;
  v23 = a1[9];
  *(v22 + 176) = a1[8];
  *(v22 + 192) = v23;
  v24 = a1[11];
  *(v22 + 208) = a1[10];
  *(v22 + 224) = v24;
  v25 = a1[5];
  *(v22 + 112) = a1[4];
  *(v22 + 128) = v25;
  v26 = a1[7];
  *(v22 + 144) = a1[6];
  *(v22 + 160) = v26;
  v27 = a1[1];
  *(v22 + 48) = *a1;
  *(v22 + 64) = v27;
  v28 = a1[3];
  *(v22 + 80) = a1[2];
  *(v22 + 96) = v28;
  v65[0] = a2;
  v65[1] = a3;
  v29 = v15;
  v65[2] = a4;
  v65[3] = v21;
  v30 = type metadata accessor for ScrollableContentWithFloatingPanelView();
  (*(*(v30 - 8) + 16))(v65, a1, v30);
  WitnessTable = swift_getWitnessTable();
  v32 = sub_100214858();
  v33 = v44;
  sub_100034824(sub_100214828, v22, v10, &type metadata for ScrollContentFrame, WitnessTable, v32, v15);

  (*(v47 + 8))(v33, v10);
  static Edge.Set.bottom.getter();
  if (sub_1002131E0())
  {
    sub_10021329C();
  }

  v34 = sub_100009274(&qword_100368320, &qword_100368310);
  v63 = WitnessTable;
  v64 = v34;
  v35 = swift_getWitnessTable();
  v36 = sub_100009274(&qword_100368328, &qword_100368318);
  v61 = v35;
  v62 = v36;
  v37 = v46;
  v38 = swift_getWitnessTable();
  v39 = v49;
  View.padding(_:_:)();
  (*(v51 + 8))(v29, v37);
  v59 = v38;
  v60 = &protocol witness table for _PaddingLayout;
  v40 = swift_getWitnessTable();
  v41 = v50;
  sub_10009A58C(v39, v17, v40);
  v42 = *(v52 + 8);
  v42(v39, v17);
  sub_10009A58C(v41, v17, v40);
  return (v42)(v41, v17);
}

uint64_t sub_100212EB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a2 - 8);
  v7 = __chkstk_darwin(a1);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v12 = &v15 - v11;
  (*(v10 + 16))();
  sub_10009A58C(v9, a2, a4);
  v13 = *(v6 + 8);
  v13(v9, a2);
  sub_10009A58C(v12, a2, a4);
  return (v13)(v12, a2);
}

uint64_t sub_100212FEC()
{
  sub_1000040A8(&qword_100368370);
  State.wrappedValue.setter();
  type metadata accessor for ScrollableContentWithFloatingPanelView();
  return sub_10021308C();
}

uint64_t sub_10021308C()
{
  sub_1000040A8(&qword_100356630);
  inited = swift_initStackObject();
  inited[1] = xmmword_100279170;
  sub_1000040A8(&qword_100368370);
  State.wrappedValue.getter();
  inited[2] = v2;
  inited[3] = v3;
  State.wrappedValue.getter();
  inited[4] = v2;
  inited[5] = v3;
  sub_10021EECC(inited);
  swift_setDeallocating();
  sub_1000040A8(&qword_100354AA8);
  State.wrappedValue.setter();
  sub_100214114();
  sub_1000040A8(&qword_100359C08);
  return State.wrappedValue.setter();
}

BOOL sub_1002131E0()
{
  sub_1000040A8(&qword_100368370);
  State.wrappedValue.getter();
  v0 = v3 + sub_10021329C();
  sub_1000040A8(&qword_100359F88);
  State.wrappedValue.getter();
  return v2 < v0;
}

double sub_10021329C()
{
  sub_1000040A8(&qword_100368370);
  State.wrappedValue.getter();
  sub_1000040A8(&qword_100359C08);
  State.wrappedValue.getter();
  return v2 + v1;
}

uint64_t sub_100213334@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  *&v11 = a2;
  *(&v11 + 1) = a3;
  *&v12 = a4;
  *(&v12 + 1) = a5;
  type metadata accessor for ScrollableContentWithFloatingPanelView();
  sub_10021329C();
  if (*a1)
  {
    v8 = qword_100353988;

    if (v8 != -1)
    {
      swift_once();
    }

    static Alignment.center.getter();
    _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
    v9 = qword_100381C20;

    *(a6 + 88) = v14;
    *(a6 + 104) = v15;
    *(a6 + 120) = v16;
    *(a6 + 136) = v17;
    *(a6 + 40) = v11;
    *(a6 + 56) = v12;
    *a6 = 0;
    *(a6 + 8) = 1;
    *(a6 + 16) = 0;
    *(a6 + 24) = 6;
    *(a6 + 32) = 0x3FF0000000000000;
    *(a6 + 72) = v13;
    *(a6 + 152) = 0;
    *(a6 + 160) = v9;
  }

  else
  {
    type metadata accessor for UIMetrics();
    sub_1001B3B34(&qword_100354D40, type metadata accessor for UIMetrics);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_100213538@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v44 = a5;
  v46 = a4;
  v54 = a6;
  sub_100008CF0(&qword_10035B068);
  type metadata accessor for ModifiedContent();
  type metadata accessor for AccessibilityAttachmentModifier();
  v10 = type metadata accessor for ModifiedContent();
  v76 = a5;
  v77 = sub_100009274(&qword_10035B070, &qword_10035B068);
  v53 = &protocol conformance descriptor for <> ModifiedContent<A, B>;
  WitnessTable = swift_getWitnessTable();
  v75 = sub_1001B3B34(&qword_100355078, &type metadata accessor for AccessibilityAttachmentModifier);
  v43[2] = v10;
  v43[1] = swift_getWitnessTable();
  v11 = type metadata accessor for VStack();
  v48 = *(v11 - 8);
  __chkstk_darwin(v11);
  v43[0] = v43 - v12;
  sub_100008CF0(&qword_100368338);
  v49 = type metadata accessor for ModifiedContent();
  sub_100008CF0(&qword_100368340);
  v47 = type metadata accessor for ModifiedContent();
  v51 = *(v47 - 8);
  __chkstk_darwin(v47);
  v45 = v43 - v13;
  v14 = type metadata accessor for ModifiedContent();
  v52 = *(v14 - 8);
  __chkstk_darwin(v14);
  v16 = v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v50 = v43 - v18;
  v55 = a2;
  v56 = a3;
  v19 = v46;
  v20 = v44;
  v57 = v46;
  v58 = v44;
  v59 = a1;
  static HorizontalAlignment.center.getter();
  VStack.init(alignment:spacing:content:)();
  v21 = swift_allocObject();
  *(v21 + 16) = a2;
  *(v21 + 24) = a3;
  *(v21 + 32) = v19;
  *(v21 + 40) = v20;
  v22 = a1[9];
  *(v21 + 176) = a1[8];
  *(v21 + 192) = v22;
  v23 = a1[11];
  *(v21 + 208) = a1[10];
  *(v21 + 224) = v23;
  v24 = a1[5];
  *(v21 + 112) = a1[4];
  *(v21 + 128) = v24;
  v25 = a1[7];
  *(v21 + 144) = a1[6];
  *(v21 + 160) = v25;
  v26 = a1[1];
  *(v21 + 48) = *a1;
  *(v21 + 64) = v26;
  v27 = a1[3];
  *(v21 + 80) = a1[2];
  *(v21 + 96) = v27;
  *&v71 = a2;
  *(&v71 + 1) = a3;
  v72 = v19;
  v73 = v20;
  v28 = type metadata accessor for ScrollableContentWithFloatingPanelView();
  (*(*(v28 - 8) + 16))(&v71, a1, v28);
  v29 = swift_getWitnessTable();
  v30 = sub_100214714();
  v31 = v45;
  v32 = v43[0];
  sub_100034824(sub_1002146FC, v21, v11, &type metadata for FloatingPanelFrame, v29, v30, v45);

  (*(v48 + 8))(v32, v11);
  static Edge.Set.bottom.getter();
  v71 = a1[11];
  sub_1000040A8(&qword_100359C08);
  State.wrappedValue.getter();
  v33 = sub_100009274(&qword_100368398, &qword_100368338);
  v69 = v29;
  v70 = v33;
  v34 = swift_getWitnessTable();
  v35 = sub_100009274(&qword_1003683A0, &qword_100368340);
  v67 = v34;
  v68 = v35;
  v36 = v47;
  v37 = swift_getWitnessTable();
  View.padding(_:_:)();
  (*(v51 + 8))(v31, v36);
  v65 = v37;
  v66 = &protocol witness table for _PaddingLayout;
  v38 = swift_getWitnessTable();
  v39 = v50;
  sub_10009A58C(v16, v14, v38);
  v40 = v52;
  v41 = *(v52 + 8);
  v41(v16, v14);
  v63 = 0;
  v64 = 1;
  *&v71 = &v63;
  (*(v40 + 16))(v16, v39, v14);
  *(&v71 + 1) = v16;
  v62[0] = &type metadata for Spacer;
  v62[1] = v14;
  v60 = &protocol witness table for Spacer;
  v61 = v38;
  sub_1000970F0(&v71, 2uLL, v62);
  v41(v39, v14);
  return (v41)(v16, v14);
}

uint64_t sub_100213BC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X4>, uint64_t a4@<X8>)
{
  v27 = a3;
  v30 = a4;
  v6 = *(a2 - 8);
  __chkstk_darwin(a1);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100008CF0(&qword_10035B068);
  v9 = type metadata accessor for ModifiedContent();
  v28 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v26 - v10;
  type metadata accessor for AccessibilityAttachmentModifier();
  v12 = type metadata accessor for ModifiedContent();
  v29 = *(v12 - 8);
  __chkstk_darwin(v12);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v15);
  v18 = &v26 - v17;
  (*(a1 + 32))(v16);
  v35 = *(a1 + 56);
  sub_1000040A8(&qword_100354AA8);
  State.wrappedValue.getter();
  v19 = v27;
  sub_100213F60();
  (*(v6 + 8))(v8, a2);
  v20 = sub_100009274(&qword_10035B070, &qword_10035B068);
  v33 = v19;
  v34 = v20;
  WitnessTable = swift_getWitnessTable();
  View.accessibilitySortPriority(_:)();
  (*(v28 + 8))(v11, v9);
  v22 = sub_1001B3B34(&qword_100355078, &type metadata accessor for AccessibilityAttachmentModifier);
  v31 = WitnessTable;
  v32 = v22;
  v23 = swift_getWitnessTable();
  sub_10009A58C(v14, v12, v23);
  v24 = *(v29 + 8);
  v24(v14, v12);
  sub_10009A58C(v18, v12, v23);
  return (v24)(v18, v12);
}

uint64_t sub_100213F60()
{
  swift_getKeyPath();
  View.environment<A>(_:_:)();
}

uint64_t sub_100213FD4()
{
  sub_1000040A8(&qword_100368370);
  State.wrappedValue.setter();
  type metadata accessor for ScrollableContentWithFloatingPanelView();
  return sub_10021308C();
}

uint64_t sub_100214078()
{
  sub_1000040A8(&qword_100359F88);
  State.wrappedValue.setter();
  type metadata accessor for ScrollableContentWithFloatingPanelView();
  return sub_10021308C();
}

void sub_100214114()
{
  if (*(v0 + 48))
  {
    sub_1000040A8(&qword_100359F88);
    State.wrappedValue.getter();
    sub_1000040A8(&qword_100368370);
    State.wrappedValue.getter();
    State.wrappedValue.getter();
    v1 = *v0;
    if (*v0)
    {
      v2 = v1[9];
      v3 = v1[10];
      sub_1000088DC(v1 + 6, v2);
      (*(v3 + 104))(v2, v3);
    }

    else
    {
      type metadata accessor for UIMetrics();
      sub_1001B3B34(&qword_100354D40, type metadata accessor for UIMetrics);
      EnvironmentObject.error()();
      __break(1u);
    }
  }
}

void *sub_100214320(double *a1, void *(*a2)(double *__return_ptr))
{
  result = a2(&v5);
  v4 = v6;
  if (v5 != 0.0 || v6 != 0.0)
  {
    *a1 = v5;
    a1[1] = v4;
  }

  return result;
}

uint64_t sub_100214374()
{
  sub_1001DCB90();
  EnvironmentValues.subscript.getter();
  return v1;
}

uint64_t sub_1002143C0()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 sub_1002143FC(uint64_t a1, __int128 *a2)
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

uint64_t sub_100214430(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 192))
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

uint64_t sub_100214478(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 192) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 192) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_100214580()
{
  result = qword_100368358;
  if (!qword_100368358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100368358);
  }

  return result;
}

double sub_1002145EC(uint64_t a1)
{
  result = 0.0;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 192) = 1;
  return result;
}

unint64_t sub_10021462C()
{
  result = qword_100368378;
  if (!qword_100368378)
  {
    sub_100008CF0(&qword_100368330);
    sub_100009274(&qword_100368380, &qword_100368388);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100368378);
  }

  return result;
}

unint64_t sub_100214714()
{
  result = qword_100368390;
  if (!qword_100368390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100368390);
  }

  return result;
}

uint64_t sub_1002147B8()
{

  return _swift_deallocObject(v0, 240, 7);
}

unint64_t sub_100214858()
{
  result = qword_1003683A8;
  if (!qword_1003683A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003683A8);
  }

  return result;
}

uint64_t sub_1002148DC()
{
  type metadata accessor for VStack();
  sub_100008CF0(&qword_100368310);
  type metadata accessor for ModifiedContent();
  sub_100008CF0(&qword_100368318);
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  swift_getWitnessTable();
  sub_100009274(&qword_100368320, &qword_100368310);
  swift_getWitnessTable();
  sub_100009274(&qword_100368328, &qword_100368318);
  swift_getWitnessTable();
  swift_getWitnessTable();
  type metadata accessor for ScrollView();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  type metadata accessor for VStack();
  sub_100008CF0(&qword_100368330);
  sub_100008CF0(&qword_10035B068);
  type metadata accessor for ModifiedContent();
  type metadata accessor for AccessibilityAttachmentModifier();
  type metadata accessor for ModifiedContent();
  sub_100009274(&qword_10035B070, &qword_10035B068);
  swift_getWitnessTable();
  sub_1001B3B34(&qword_100355078, &type metadata accessor for AccessibilityAttachmentModifier);
  swift_getWitnessTable();
  type metadata accessor for VStack();
  sub_100008CF0(&qword_100368338);
  type metadata accessor for ModifiedContent();
  sub_100008CF0(&qword_100368340);
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for VStack();
  swift_getTupleTypeMetadata3();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for ZStack();
  sub_100008CF0(&qword_100368348);
  type metadata accessor for ModifiedContent();
  sub_100008CF0(&qword_100368350);
  type metadata accessor for ModifiedContent();
  swift_getWitnessTable();
  sub_100009274(&qword_100368360, &qword_100368348);
  swift_getWitnessTable();
  sub_100009274(&qword_100368368, &qword_100368350);
  return swift_getWitnessTable();
}

uint64_t sub_100214E3C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v3 = *(v1 + 2);
  if (v3)
  {
    v5 = v3[9];
    v6 = v3[10];
    sub_1000088DC(v3 + 6, v5);
    (*(v6 + 32))(v17, v5, v6);
    v7 = *v1;
    v18 = v1[2];
    v19 = v7;
    v8 = swift_allocObject();
    v9 = v2[1];
    v8[1] = *v2;
    v8[2] = v9;
    v8[3] = v2[2];
    sub_1000089B0(v17, v16);
    v10 = swift_allocObject();
    v11 = v2[1];
    v10[1] = *v2;
    v10[2] = v11;
    v10[3] = v2[2];
    sub_100008A18(v16, (v10 + 4));
    sub_100215C64(&v19, v14);

    sub_100032618(&v18, v14);
    sub_100215C64(&v19, v14);

    sub_100032618(&v18, v14);
    State.init(wrappedValue:)();
    result = sub_100008964(v17);
    v13 = v15;
    *a1 = v14[0];
    *(a1 + 8) = v13;
    *(a1 + 16) = sub_100215C00;
    *(a1 + 24) = v8;
    *(a1 + 32) = sub_100215C58;
    *(a1 + 40) = v10;
  }

  else
  {
    type metadata accessor for UIMetrics();
    sub_100215D64(&qword_100354D40, type metadata accessor for UIMetrics);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_10021501C(void *a1)
{
  v2 = a1[2];
  if (v2)
  {
    sub_1000089B0(v2 + 48, v9);
    v3 = v10;
    v4 = v11;
    sub_1000088DC(v9, v10);
    if (*a1)
    {
      v5 = (*(v4 + 136))(*(*(*a1 + 48) + 136), v3, v4);
      sub_100008964(v9);
      return v5 & 1;
    }

    type metadata accessor for ConnectivityModel();
    v7 = &qword_100354F78;
    v8 = type metadata accessor for ConnectivityModel;
  }

  else
  {
    type metadata accessor for UIMetrics();
    v7 = &qword_100354D40;
    v8 = type metadata accessor for UIMetrics;
  }

  sub_100215D64(v7, v8);
  result = EnvironmentObject.error()();
  __break(1u);
  return result;
}

uint64_t sub_100215138@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v106 = a3;
  v107 = a2;
  v4 = type metadata accessor for OpacityTransition();
  v101 = *(v4 - 8);
  __chkstk_darwin(v4);
  v98 = &v82 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000040A8(&qword_100357818);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v99 = &v82 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v100 = &v82 - v10;
  v11 = type metadata accessor for Font.Leading();
  v86 = *(v11 - 8);
  KeyPath = v11;
  __chkstk_darwin(v11);
  v13 = &v82 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1000040A8(&qword_1003683B8);
  __chkstk_darwin(v14 - 8);
  v97 = &v82 - v15;
  v96 = sub_1000040A8(&qword_1003683C0);
  __chkstk_darwin(v96);
  v17 = &v82 - v16;
  v108 = a1;
  v18 = *a1;
  if (!*a1)
  {
    type metadata accessor for ConnectivityModel();
    v80 = &qword_100354F78;
    v81 = type metadata accessor for ConnectivityModel;
LABEL_20:
    sub_100215D64(v80, v81);
    result = EnvironmentObject.error()();
    __break(1u);
    return result;
  }

  swift_retain_n();
  v19 = sub_1001DE5B8();
  v21 = v20;

  v110 = v19;
  v105 = v4;
  if (!v19 && v21 == 0xE000000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v22 = v108;
    v21 = v108[5];
    v110 = v108[4];
  }

  else
  {
    v22 = v108;
  }

  v109 = v21;
  v102 = v7;
  v103 = v17;
  v104 = v6;
  v23 = v22[2];
  if (!v23)
  {
    type metadata accessor for UIMetrics();
    v80 = &qword_100354D40;
    v81 = type metadata accessor for UIMetrics;
    goto LABEL_20;
  }

  v25 = *(v23 + 72);
  v24 = *(v23 + 80);
  sub_1000088DC((v23 + 48), v25);
  v26 = *(v24 + 128);
  swift_retain_n();
  v27 = v26(v18, v25, v24);

  v114[0] = v110;
  v114[1] = v109;
  sub_100031770();

  v28 = Text.init<A>(_:)();
  v94 = v29;
  v95 = v28;
  v31 = v30;
  v93 = v32;
  v33 = v107;
  v34 = sub_1000088DC(v107, v107[3]);
  v35 = *(*v34 + 184);
  v91 = *(*v34 + 200);
  v92 = v35;
  v36 = static Edge.Set.all.getter();
  v89 = v31 & 1;
  v90 = v36;
  v113[0] = v31 & 1;
  LOBYTE(v117) = 0;
  v88 = static Edge.Set.bottom.getter();
  sub_1000088DC(v33, v33[3]);
  EdgeInsets.init(_all:)();
  v38 = v37;
  v40 = v39;
  v42 = v41;
  v44 = v43;
  LOBYTE(v114[0]) = 0;
  static Font.title3.getter();
  Font.bold()();

  v46 = v86;
  v45 = KeyPath;
  (*(v86 + 104))(v13, enum case for Font.Leading.tight(_:), KeyPath);
  v85 = Font.leading(_:)();

  (*(v46 + 8))(v13, v45);
  KeyPath = swift_getKeyPath();
  v86 = swift_getKeyPath();
  v47 = *(v23 + 112);
  v107 = v27;

  v48 = v47;

  v49 = static UIContentSizeCategory.>= infix(_:_:)();

  v84 = (v49 & 1) == 0;
  v83 = swift_getKeyPath();
  v50 = v49 & 1;
  v115 = v49 & 1;
  v51 = *(v23 + 112);

  v52 = static UIContentSizeCategory.>= infix(_:_:)();

  v53 = (v52 & 1) == 0;
  v54 = swift_getKeyPath();
  v55 = *(v23 + 112);

  static Alignment.center.getter();
  if (static UIContentSizeCategory.>= infix(_:_:)())
  {
    static Alignment.center.getter();
    if (static Alignment.== infix(_:_:)())
    {
      static Alignment.leading.getter();
    }
  }

  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  *&v116[55] = v120;
  *&v116[71] = v121;
  *&v116[87] = v122;
  *&v116[103] = v123;
  *&v116[7] = v117;
  *&v116[23] = v118;
  *&v116[39] = v119;
  v56 = *(v23 + 112);

  v57 = static UIContentSizeCategory.>= infix(_:_:)();

  if (v57)
  {
    v58 = 1.0;
  }

  else
  {
    v58 = 0.5;
  }

  v59 = swift_getKeyPath();
  v114[0] = v95;
  v114[1] = v94;
  LOBYTE(v114[2]) = v89;
  v114[3] = v93;
  LOBYTE(v114[4]) = v90;
  *&v114[7] = v91;
  *&v114[5] = v92;
  LOBYTE(v114[9]) = 0;
  LOBYTE(v114[10]) = v88;
  v114[11] = v38;
  v114[12] = v40;
  v114[13] = v42;
  v114[14] = v44;
  LOBYTE(v114[15]) = 0;
  v114[16] = KeyPath;
  v114[17] = v85;
  v114[18] = v86;
  v114[19] = v107;
  v114[20] = v83;
  v114[21] = v84;
  LOBYTE(v114[22]) = v50;
  v114[23] = v54;
  LOBYTE(v114[24]) = v53;
  *(&v114[32] + 1) = *&v116[64];
  *(&v114[34] + 1) = *&v116[80];
  *(&v114[36] + 1) = *&v116[96];
  *(&v114[24] + 1) = *v116;
  *(&v114[26] + 1) = *&v116[16];
  *(&v114[28] + 1) = *&v116[32];
  *(&v114[30] + 1) = *&v116[48];
  v114[38] = *&v116[111];
  v114[39] = v59;
  *&v114[40] = v58;
  v60 = v109;
  if (v110 != v108[4] || v109 != v108[5])
  {
    _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  sub_1000040A8(&qword_1003578A8);
  sub_100054434();
  v61 = v60;
  v62 = v97;
  View.accessibility(hidden:)();
  memcpy(v113, v114, sizeof(v113));
  sub_100215CFC(v113);
  v63 = v98;
  OpacityTransition.init()();
  static Animation.easeInOut.getter();
  v64 = sub_100215D64(&qword_100356B88, &type metadata accessor for OpacityTransition);
  v65 = v100;
  v66 = v105;
  Transition.animation(_:)();

  (*(v101 + 8))(v63, v66);
  v67 = v102;
  v68 = v104;
  (*(v102 + 16))(v99, v65, v104);
  v111 = v66;
  v112 = v64;
  swift_getOpaqueTypeConformance2();
  v69 = AnyTransition.init<A>(_:)();
  (*(v67 + 8))(v65, v68);
  v70 = v103;
  sub_10000CF4C(v62, v103, &qword_1003683B8);
  *(v70 + *(v96 + 36)) = v69;
  v111 = 0;
  v112 = 0xE000000000000000;
  _StringGuts.grow(_:)(16);

  v111 = 0x6554737574617453;
  v112 = 0xEB000000002D7478;
  v71._countAndFlagsBits = v110;
  v71._object = v61;
  String.append(_:)(v71);

  v72._countAndFlagsBits = 45;
  v72._object = 0xE100000000000000;
  String.append(_:)(v72);
  v73._countAndFlagsBits = Color.description.getter();
  String.append(_:)(v73);

  v74 = v111;
  v75 = v112;
  v76 = v70;
  v77 = v106;
  sub_10000CF4C(v76, v106, &qword_1003683C0);
  result = sub_1000040A8(&qword_1003683C8);
  v79 = (v77 + *(result + 52));
  *v79 = v74;
  v79[1] = v75;
  return result;
}

uint64_t sub_100215BB8()
{

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_100215C08()
{

  sub_100008964(v0 + 64);

  return _swift_deallocObject(v0, 104, 7);
}

uint64_t sub_100215C64(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000040A8(&qword_1003683B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100215CFC(uint64_t a1)
{
  v2 = sub_1000040A8(&qword_1003578A8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100215D64(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_100215E38()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = swift_unknownObjectWeakLoadStrong();

    if (v2)
    {
      swift_beginAccess();
      v3 = swift_unknownObjectWeakLoadStrong();
      if (v3)
      {
        v4 = v3;
        [v3 setPreferredContentSize:{*(*(v2 + 48) + 32), *(*(v2 + 48) + 40)}];
      }

      swift_unknownObjectRelease();
    }
  }
}

void sub_100215F14()
{
  if (qword_100353A28 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000F53C(v1, qword_100381CC8);
  v2 = v0;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v24 = v6;
    *v5 = 136446210;
    v7 = v2;
    v8 = [v7 description];
    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;

    v12 = sub_10017C9E8(v9, v11, &v24);

    *(v5 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v3, v4, "[%{public}s] loadView", v5, 0xCu);
    sub_100008964(v6);
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    oslog = sub_10011A2C0(v2);
    [v2 setView:oslog];
    swift_unknownObjectRelease();
  }

  else
  {
    v13 = v2;
    oslog = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(oslog, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v24 = v16;
      *v15 = 136446210;
      v17 = v13;
      v18 = [v17 description];
      v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v21 = v20;

      v22 = sub_10017C9E8(v19, v21, &v24);

      *(v15 + 4) = v22;
      _os_log_impl(&_mh_execute_header, oslog, v14, "[%{public}s] contentProducer expired", v15, 0xCu);
      sub_100008964(v16);
    }
  }
}

void sub_100216244()
{
  if (qword_100353A28 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000F53C(v1, qword_100381CC8);
  v2 = v0;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v17 = v6;
    *v5 = 136446210;
    v7 = v2;
    v8 = [v7 description];
    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;

    v12 = sub_10017C9E8(v9, v11, &v17);

    *(v5 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v3, v4, "[%{public}s] viewDidLoad", v5, 0xCu);
    sub_100008964(v6);
  }

  v13 = type metadata accessor for BannerViewController();
  v18.receiver = v2;
  v18.super_class = v13;
  objc_msgSendSuper2(&v18, "viewDidLoad");
  [v2 setOverrideUserInterfaceStyle:2];
  v14 = *&v2[OBJC_IVAR____TtC8SOSBuddy20BannerViewController_tapGesture];
  [v14 addTarget:v2 action:"didTap"];
  v15 = [v2 view];
  if (v15)
  {
    v16 = v15;
    [v15 addGestureRecognizer:v14];
  }

  else
  {
    __break(1u);
  }
}

id sub_100216570(char a1, char *a2, SEL *a3)
{
  if (qword_100353A28 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_10000F53C(v7, qword_100381CC8);
  v8 = v3;
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v23 = v22;
    *v11 = 136446210;
    v12 = v8;
    v13 = [v12 description];
    format = a2;
    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = a1;
    v17 = v16;

    v18 = sub_10017C9E8(v14, v17, &v23);
    a1 = v15;

    *(v11 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v9, v10, format, v11, 0xCu);
    sub_100008964(v22);
  }

  v19 = type metadata accessor for BannerViewController();
  v24.receiver = v8;
  v24.super_class = v19;
  return objc_msgSendSuper2(&v24, *a3, a1 & 1);
}

uint64_t sub_100216790()
{
  if (qword_100353A28 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_10000F53C(v0, qword_100381CC8);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v9 = v4;
    *v3 = 136446210;
    v5 = _typeName(_:qualified:)();
    v7 = sub_10017C9E8(v5, v6, &v9);

    *(v3 + 4) = v7;
    _os_log_impl(&_mh_execute_header, v1, v2, "[%{public}s] _isSecureForRemoteViewService", v3, 0xCu);
    sub_100008964(v4);
  }

  return 1;
}

uint64_t sub_100216908()
{
  if (qword_100353A28 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000F53C(v1, qword_100381CC8);
  v2 = v0;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138543362;
    *(v5 + 4) = v2;
    *v6 = v2;
    v7 = v2;
    _os_log_impl(&_mh_execute_header, v3, v4, "[%{public}@] _canShowWhileLocked", v5, 0xCu);
    sub_10001DB10(v6);
  }

  return 1;
}

uint64_t sub_100216A68()
{
  if (qword_100353A28 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000F53C(v1, qword_100381CC8);
  v2 = v0;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v14 = v6;
    *v5 = 136446210;
    v7 = v2;
    v8 = [v7 description];
    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;

    v12 = sub_10017C9E8(v9, v11, &v14);

    *(v5 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v3, v4, "[%{public}s] didTap", v5, 0xCu);
    sub_100008964(v6);
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_1001CEA70(v2);

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_100216C94(void *a1, double a2, double a3)
{
  v19.receiver = v3;
  v19.super_class = type metadata accessor for BannerViewController();
  objc_msgSendSuper2(&v19, "viewWillTransitionToSize:withTransitionCoordinator:", a1, a2, a3);
  v7 = swift_allocObject();
  *(v7 + 16) = v3;
  *(v7 + 24) = a2;
  *(v7 + 32) = a3;
  v17 = sub_100217720;
  v18 = v7;
  v13 = _NSConcreteStackBlock;
  v14 = 1107296256;
  v15 = sub_1002301DC;
  v16 = &unk_100338CB8;
  v8 = _Block_copy(&v13);
  v9 = v3;

  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = a2;
  *(v10 + 32) = a3;
  v17 = sub_100217744;
  v18 = v10;
  v13 = _NSConcreteStackBlock;
  v14 = 1107296256;
  v15 = sub_1002301DC;
  v16 = &unk_100338D08;
  v11 = _Block_copy(&v13);
  v12 = v9;

  [a1 animateAlongsideTransition:v8 completion:v11];
  _Block_release(v11);
  _Block_release(v8);
}

uint64_t sub_100216E44()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    type metadata accessor for BannerAgent();
    sub_1001CED08();

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_100216EE8()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    type metadata accessor for BannerAgent();
    sub_1001CED14();

    return swift_unknownObjectRelease();
  }

  return result;
}

id sub_10021703C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BannerViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_100217164()
{

  v0 = String._bridgeToObjectiveC()();

  return v0;
}

void sub_100217450()
{
  *(v0 + OBJC_IVAR____TtC8SOSBuddy20BannerViewController_contentProducer + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC8SOSBuddy20BannerViewController_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v1 = OBJC_IVAR____TtC8SOSBuddy20BannerViewController_tapGesture;
  *(v0 + v1) = [objc_allocWithZone(UITapGestureRecognizer) init];
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC8SOSBuddy20BannerViewController_dismissalPreventionAssertion) = 0;
  if (_swiftEmptyArrayStorage >> 62 && _CocoaArrayWrapper.endIndex.getter())
  {
    v2 = sub_100233B1C(_swiftEmptyArrayStorage);
  }

  else
  {
    v2 = &_swiftEmptySetSingleton;
  }

  *(v0 + OBJC_IVAR____TtC8SOSBuddy20BannerViewController_subscriptions) = v2;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_100217568()
{
  v1 = v0;
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_1001CD5F8(v0);
    swift_unknownObjectRelease();
  }

  v2 = [v0 presentableDismissalPreventionContext];
  if (v2)
  {
    v3 = v2;
    v4 = String._bridgeToObjectiveC()();
    v5 = [v3 acquireTransitionDismissalPreventionAssertionForReason:v4];
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0;
  }

  *&v1[OBJC_IVAR____TtC8SOSBuddy20BannerViewController_dismissalPreventionAssertion] = v5;

  return swift_unknownObjectRelease();
}

id sub_10021764C(void *a1)
{
  v2 = v1;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    if (!a1)
    {
      __break(1u);
      return result;
    }

    sub_1001CDAE8(v2, a1);
    swift_unknownObjectRelease();
  }

  result = *&v2[OBJC_IVAR____TtC8SOSBuddy20BannerViewController_dismissalPreventionAssertion];
  if (result)
  {

    return [result invalidate];
  }

  return result;
}

uint64_t sub_1002176E8()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10021772C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_10021775C()
{
  v1 = *(v0 + 32);
  if (!v1 || (v2 = v1 - 1, (*(v0 + 32) = v2) == 0))
  {
    if (*(v0 + 40) == 1)
    {
      *(v0 + 40) = 0;
      sub_1000040A8(&unk_100365610);
      sub_100018C74();
      Subject<>.send()();
    }

    if (*(v0 + 41) == 1)
    {
      *(v0 + 41) = 0;
      v3 = *(*v0 + 248);

      v3();
    }
  }
}

uint64_t sub_10021782C()
{
  sub_1000040A8(&unk_100365610);
  sub_100018C74();
  return Subject<>.send()();
}

uint64_t sub_100217874(uint64_t result)
{
  v1 = *(result + 32);
  if (!v1 || (v2 = v1 - 1, (*(result + 32) = v2) == 0))
  {
    if (*(result + 40))
    {
      *(result + 40) = 0;
      v3 = result;
      sub_1000040A8(&unk_100365610);
      sub_100018C74();
      Subject<>.send()();
      result = v3;
    }

    if (*(result + 41) == 1)
    {
      *(result + 41) = 0;
      return (*(*result + 248))();
    }
  }

  return result;
}

uint64_t sub_100217928()
{

  return swift_deallocClassInstance();
}

void sub_10021798C()
{
  v1 = *(v0 + 32);
  v2 = __CFADD__(v1, 1);
  v3 = v1 + 1;
  if (v2)
  {
    __break(1u);
  }

  else
  {
    *(v0 + 32) = v3;
  }
}

uint64_t sub_1002179CC()
{
  v1 = v0;
  v2 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v23 = *(v2 - 8);
  v24 = v2;
  __chkstk_darwin(v2);
  v22 = v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v4);
  v5 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v5 - 8);
  *(v0 + 24) = 0;
  *(v0 + 32) = 0;
  v6 = [objc_opt_self() mainBundle];
  v7 = [v6 bundleIdentifier];

  if (v7)
  {
    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;
  }

  else
  {
    v10 = 0x8000000100294A20;
    v8 = 0xD000000000000012;
  }

  v21[1] = sub_10000F574();
  v26[0] = v8;
  v26[1] = v10;

  v11._countAndFlagsBits = 7697454;
  v11._object = 0xE300000000000000;
  String.append(_:)(v11);

  static DispatchQoS.unspecified.getter();
  v26[0] = _swiftEmptyArrayStorage;
  sub_10006BB2C(&unk_100355D50, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_1000040A8(&unk_10035BA20);
  sub_1000112E8(&unk_100355D60, &unk_10035BA20);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v23 + 104))(v22, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v24);
  *(v1 + 16) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  if (qword_100353A10 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_10000F53C(v12, qword_100381C80);

  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v25 = v1;
    v26[0] = v16;
    *v15 = 136446210;
    type metadata accessor for TelephonyUtilitiesAgent();

    v17 = String.init<A>(describing:)();
    v19 = sub_10017C9E8(v17, v18, v26);

    *(v15 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v13, v14, "[%{public}s] init", v15, 0xCu);
    sub_100008964(v16);
  }

  return v1;
}

uint64_t sub_100217DEC()
{
  v1 = v0;
  if (qword_100353A10 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000F53C(v2, qword_100381C80);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v11 = v6;
    *v5 = 136446210;
    type metadata accessor for TelephonyUtilitiesAgent();

    v7 = String.init<A>(describing:)();
    v9 = sub_10017C9E8(v7, v8, &v11);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "[%{public}s] deinit", v5, 0xCu);
    sub_100008964(v6);
  }

  return v1;
}

uint64_t sub_100217F70()
{
  sub_100217DEC();

  return swift_deallocClassInstance();
}

uint64_t sub_100217FC8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (qword_100353A88 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_10000F53C(v6, qword_100381DE8);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "TelephonyUtilitiesAgent start", v9, 2u);
  }

  *(v3 + 24) = a1;
  *(v3 + 32) = a2;
}

uint64_t sub_1002180D8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v18 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for DispatchQoS();
  v9 = *(v17 - 8);
  __chkstk_darwin(v17);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v3 + 16);
  v12 = swift_allocObject();
  swift_weakInit();
  v13 = swift_allocObject();
  v13[2] = v12;
  v13[3] = a1;
  v13[4] = a2;
  aBlock[4] = sub_100218514;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1001D2438;
  aBlock[3] = &unk_100338DA8;
  v14 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v19 = &_swiftEmptyArrayStorage;
  sub_10006BB2C(&qword_10035BB40, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000040A8(&unk_100355D70);
  sub_1000112E8(&qword_10035BB50, &unk_100355D70);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v14);
  (*(v18 + 8))(v8, v6);
  (*(v9 + 8))(v11, v17);
}

uint64_t sub_1002183DC()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100218414(uint64_t a1, uint64_t (*a2)(void), uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return a2();
  }

  v6 = *(Strong + 32);
  if (v6)
  {
    v7 = *(Strong + 24);

    sub_100218B48(v7, v6, a2, a3);
  }

  else
  {
    sub_100218858(a2, a3);
  }
}

uint64_t sub_1002184D4()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100218520(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100218538(uint64_t a1, uint64_t (*a2)(BOOL), uint64_t a3, const char *a4, const char *a5)
{
  if (a1)
  {
    swift_errorRetain();
    if (qword_100353A10 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_10000F53C(v8, qword_100381C80);
    swift_errorRetain();
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(v9, v10))
    {

      return a2(a1 == 0);
    }

    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138543362;
    swift_errorRetain();
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 4) = v13;
    *v12 = v13;
    _os_log_impl(&_mh_execute_header, v9, v10, a4, v11, 0xCu);
    sub_10001DB10(v12);
  }

  else
  {
    if (qword_100353A10 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_10000F53C(v15, qword_100381C80);
    v9 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v9, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v9, v16, a5, v17, 2u);
    }
  }

  return a2(a1 == 0);
}

void sub_100218770()
{
  if (qword_100353A88 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_10000F53C(v0, qword_100381DE8);
  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v1, "TelephonyUtilitiesAgent stop", v2, 2u);
  }
}

void sub_100218858(void (*a1)(void), uint64_t a2)
{
  v4 = [objc_allocWithZone(TUCallProviderManager) init];
  v5 = [v4 emergencyProvider];
  v6 = [objc_allocWithZone(TUDialRequest) initWithProvider:v5];

  [v6 setDialType:1];
  if ([v6 isValid])
  {
    v7 = [objc_opt_self() sharedInstance];
    v8 = swift_allocObject();
    *(v8 + 16) = a1;
    *(v8 + 24) = a2;
    aBlock[4] = sub_100218EF0;
    aBlock[5] = v8;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100243DD8;
    aBlock[3] = &unk_100338E48;
    v9 = _Block_copy(aBlock);

    [v7 launchAppForDialRequest:v6 completion:v9];
    _Block_release(v9);
  }

  else
  {
    if (qword_100353A10 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_10000F53C(v10, qword_100381C80);
    v16 = v6;
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      *v13 = 138543362;
      *(v13 + 4) = v16;
      *v14 = v16;
      v15 = v16;
      _os_log_impl(&_mh_execute_header, v11, v12, "Unable to start emergency call, dial request is invalid: %{public}@", v13, 0xCu);
      sub_10001DB10(v14);
    }

    a1(0);
  }
}

void sub_100218B48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22 = [objc_allocWithZone(TUCallProviderManager) init];
  v6 = [v22 defaultProvider];
  v7 = [objc_allocWithZone(TUDialRequest) initWithProvider:v6];

  v8 = objc_allocWithZone(TUHandle);
  v9 = String._bridgeToObjectiveC()();
  v10 = [v8 initWithType:2 value:v9];

  [v7 setHandle:v10];
  [v7 setShowUIPrompt:1];
  if ([v7 isValid])
  {
    v11 = [objc_opt_self() sharedInstance];
    v12 = swift_allocObject();
    *(v12 + 16) = a3;
    *(v12 + 24) = a4;
    aBlock[4] = sub_100218EC4;
    aBlock[5] = v12;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100243DD8;
    aBlock[3] = &unk_100338DF8;
    v13 = _Block_copy(aBlock);

    [v11 launchAppForDialRequest:v7 completion:v13];
    _Block_release(v13);
  }

  else
  {
    if (qword_100353A10 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_10000F53C(v14, qword_100381C80);
    v15 = v7;
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      *v18 = 138543362;
      *(v18 + 4) = v15;
      *v19 = v15;
      v21 = v15;
      _os_log_impl(&_mh_execute_header, v16, v17, "Unable to start emergency call, dial request is invalid: %{public}@", v18, 0xCu);
      sub_10001DB10(v19);

      v20 = v21;
    }

    else
    {

      v20 = v22;
    }
  }
}

uint64_t sub_100218E8C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100218F5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v49 = a4;
  v47 = a2;
  v48 = a1;
  v60 = a5;
  v55 = type metadata accessor for KeyboardShortcut();
  v54 = *(v55 - 8);
  __chkstk_darwin(v55);
  v53 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for GlassProminentButtonStyle();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_1000040A8(&qword_100368718);
  v11 = *(v50 - 8);
  __chkstk_darwin(v50);
  v13 = &v46 - v12;
  v51 = sub_1000040A8(&qword_100368720);
  __chkstk_darwin(v51);
  v15 = &v46 - v14;
  v57 = sub_1000040A8(&qword_100368728);
  v56 = *(v57 - 8);
  __chkstk_darwin(v57);
  v52 = &v46 - v16;
  v58 = sub_1000040A8(&qword_100368730);
  __chkstk_darwin(v58);
  v59 = &v46 - v17;
  if (a3)
  {
    v18 = a3[9];
    v19 = a3[10];
    sub_1000088DC(a3 + 6, v18);
    (*(v19 + 32))(v61, v18, v19);
    v20 = swift_allocObject();
    v21 = v47;
    v20[2] = v48;
    v20[3] = v21;
    v22 = v49;
    v20[4] = a3;
    v20[5] = v22;
    sub_1002199B8();

    Button.init(action:label:)();
    GlassProminentButtonStyle.init()();
    sub_100009274(&qword_100368740, &qword_100368718);
    sub_10021AEE0(&qword_100357730, &type metadata accessor for GlassProminentButtonStyle);
    v23 = v50;
    View.buttonStyle<A>(_:)();
    (*(v8 + 8))(v10, v7);
    v24 = &v15[*(sub_1000040A8(&qword_100368748) + 36)];
    sub_1000040A8(&qword_100357740);
    static ButtonBorderShape.capsule.getter();
    (*(v11 + 8))(v13, v23);
    *v24 = swift_getKeyPath();
    v25 = [objc_opt_self() darkGrayColor];
    v26 = Color.init(_:)();
    KeyPath = swift_getKeyPath();
    *&v63 = v26;
    v28 = AnyShapeStyle.init<A>(_:)();
    v29 = &v15[*(v51 + 36)];
    *v29 = KeyPath;
    v29[1] = v28;
    v30 = v53;
    static KeyboardShortcut.defaultAction.getter();
    sub_10021A97C();
    v31 = v52;
    View.keyboardShortcut(_:)();
    (*(v54 + 8))(v30, v55);
    sub_100008FA0(v15, &qword_100368720);
    v32 = *(*sub_1000088DC(v61, v62) + 216);
    v33 = *(*sub_1000088DC(v61, v62) + 216);
    static Alignment.center.getter();
    if (v32 > v33)
    {
      static os_log_type_t.fault.getter();
      v34 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();
    }

    _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
    v35 = v59;
    (*(v56 + 32))(v59, v31, v57);
    v36 = (v35 + *(v58 + 36));
    v37 = v68;
    v36[4] = v67;
    v36[5] = v37;
    v36[6] = v69;
    v38 = v64;
    *v36 = v63;
    v36[1] = v38;
    v39 = v66;
    v36[2] = v65;
    v36[3] = v39;
    LocalizedStringKey.init(stringLiteral:)();
    v40 = Text.init(_:tableName:bundle:comment:)();
    v42 = v41;
    v44 = v43;
    sub_10021ABAC();
    View.accessibility(label:)();
    sub_1000317C4(v40, v42, v44 & 1);

    sub_100008FA0(v35, &qword_100368730);
    return sub_100008964(v61);
  }

  else
  {
    type metadata accessor for UIMetrics();
    sub_10021AEE0(&qword_100354D40, type metadata accessor for UIMetrics);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_1002197A4(uint64_t a1)
{
  if (a1)
  {

    PassthroughSubject.send(_:)();

    sub_1000040A8(&unk_100365610);
    sub_100009274(&qword_10035CF00, &unk_100365610);
    Subject<>.send()();

    Subject<>.send()();
  }

  else
  {
    type metadata accessor for AppEvents();
    sub_10021AEE0(&qword_100354D48, type metadata accessor for AppEvents);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_1002198F0@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for UIMetrics();
  sub_10021AEE0(&qword_100354D40, type metadata accessor for UIMetrics);
  result = EnvironmentObject.init()();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_10021996C()
{

  return _swift_deallocObject(v0, 48, 7);
}

unint64_t sub_1002199B8()
{
  result = qword_100368738;
  if (!qword_100368738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100368738);
  }

  return result;
}

uint64_t sub_100219A0C(void *a1)
{
  v2 = sub_1000040A8(&qword_100368778);
  __chkstk_darwin(v2 - 8);
  v4 = &v17[-1] - v3;
  v5 = sub_1000040A8(&qword_100368780);
  __chkstk_darwin(v5);
  v7 = &v17[-1] - v6;
  if (a1)
  {
    v8 = a1[9];
    v9 = a1[10];
    sub_1000088DC(a1 + 6, v8);
    (*(v9 + 32))(v17, v8, v9);
    *v4 = static VerticalAlignment.center.getter();
    *(v4 + 1) = 0;
    v4[16] = 1;
    v10 = sub_1000040A8(&qword_100368788);
    sub_100219C90(a1, &v4[*(v10 + 44)]);
    static Alignment.center.getter();
    _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
    sub_10000CF4C(v4, v7, &qword_100368778);
    v11 = &v7[*(v5 + 36)];
    v12 = v23;
    *(v11 + 4) = v22;
    *(v11 + 5) = v12;
    *(v11 + 6) = v24;
    v13 = v19;
    *v11 = v18;
    *(v11 + 1) = v13;
    v14 = v21;
    *(v11 + 2) = v20;
    *(v11 + 3) = v14;
    sub_10021AD98();
    View.accessibility(hidden:)();
    sub_100008FA0(v7, &qword_100368780);
    return sub_100008964(v17);
  }

  else
  {
    type metadata accessor for UIMetrics();
    sub_10021AEE0(&qword_100354D40, type metadata accessor for UIMetrics);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_100219C90@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v85 = sub_1000040A8(&qword_100354D60);
  __chkstk_darwin(v85);
  v100 = &v84 - v4;
  v91 = sub_1000040A8(&qword_1003687A0);
  v90 = *(v91 - 8);
  __chkstk_darwin(v91);
  v86 = &v84 - v5;
  v84 = sub_1000040A8(&qword_1003687A8);
  __chkstk_darwin(v84);
  v89 = &v84 - v6;
  v87 = sub_1000040A8(&qword_1003687B0);
  __chkstk_darwin(v87);
  v94 = &v84 - v7;
  v93 = sub_1000040A8(&qword_1003687B8);
  __chkstk_darwin(v93);
  v9 = &v84 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v92 = &v84 - v11;
  __chkstk_darwin(v12);
  v95 = &v84 - v13;
  v14 = type metadata accessor for Font.Leading();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v84 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1000040A8(&qword_1003687C0);
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = (&v84 - v20);
  v22 = sub_1000040A8(&qword_1003687C8);
  __chkstk_darwin(v22 - 8);
  v88 = &v84 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v102 = &v84 - v25;
  if (!a1)
  {
    goto LABEL_11;
  }

  v96 = v9;
  v97 = a2;
  v26 = a1[14];
  swift_retain_n();
  v27 = v26;
  v101 = UIContentSizeCategoryAccessibilityExtraLarge;
  v28 = static UIContentSizeCategory.>= infix(_:_:)();

  v99 = a1;
  if (v28)
  {
    (*(v19 + 56))(v102, 1, 1, v18);
    v29 = enum case for Font.Leading.tight(_:);
  }

  else
  {
    v30 = a1[9];
    v31 = a1[10];
    sub_1000088DC(a1 + 6, v30);
    (*(v31 + 24))(v108, v30, v31);
    sub_100008964(v108);
    v32 = Image.init(systemName:)();
    v33 = (v21 + *(sub_1000040A8(&qword_1003584F8) + 36));
    v34 = *(sub_1000040A8(&qword_100358500) + 28);
    v35 = enum case for Image.Scale.medium(_:);
    v36 = type metadata accessor for Image.Scale();
    (*(*(v36 - 8) + 104))(v33 + v34, v35, v36);
    *v33 = swift_getKeyPath();
    *v21 = v32;
    static Font.title3.getter();
    static Font.Weight.semibold.getter();
    Font.weight(_:)();

    v29 = enum case for Font.Leading.tight(_:);
    (*(v15 + 104))(v17, enum case for Font.Leading.tight(_:), v14);
    v37 = Font.leading(_:)();

    (*(v15 + 8))(v17, v14);
    KeyPath = swift_getKeyPath();
    v39 = (v21 + *(sub_1000040A8(&qword_100358508) + 36));
    *v39 = KeyPath;
    v39[1] = v37;
    *(v21 + *(v18 + 36)) = static Color.green.getter();
    v40 = v102;
    sub_10021AE60(v21, v102);
    (*(v19 + 56))(v40, 0, 1, v18);
  }

  v41 = [objc_opt_self() mainBundle];
  v112._object = 0x80000001002A3030;
  v42._object = 0x80000001002A0080;
  v112._countAndFlagsBits = 0xD00000000000002CLL;
  v42._countAndFlagsBits = 0xD000000000000017;
  v43._countAndFlagsBits = 0;
  v43._object = 0xE000000000000000;
  v44 = NSLocalizedString(_:tableName:bundle:value:comment:)(v42, 0, v41, v43, v112);

  v108[0] = v44;
  sub_100031770();
  v45 = Text.init<A>(_:)();
  v47 = v46;
  v49 = v48;
  static Font.title3.getter();
  static Font.Weight.semibold.getter();
  Font.weight(_:)();

  (*(v15 + 104))(v17, v29, v14);
  Font.leading(_:)();

  (*(v15 + 8))(v17, v14);
  v50 = Text.font(_:)();
  v98 = v51;
  v53 = v52;
  v55 = v54;

  sub_1000317C4(v45, v47, v49 & 1);

  v56 = static Color.green.getter();
  v57 = swift_getKeyPath();
  v58 = v99;
  v59 = v99[14];

  LOBYTE(v45) = static UIContentSizeCategory.>= infix(_:_:)();

  v60 = swift_getKeyPath();
  v111 = v53 & 1;
  v110 = v45 & 1;
  *&v103 = v50;
  *(&v103 + 1) = v98;
  LOBYTE(v104) = v53 & 1;
  *(&v104 + 1) = v55;
  *&v105 = v57;
  *(&v105 + 1) = v56;
  *&v106 = v60;
  *(&v106 + 1) = (v45 & 1) == 0;
  v107 = v45 & 1;
  v61 = enum case for DynamicTypeSize.accessibility2(_:);
  v62 = type metadata accessor for DynamicTypeSize();
  v63 = v100;
  (*(*(v62 - 8) + 104))(v100, v61, v62);
  sub_10021AEE0(&qword_100354D68, &type metadata accessor for DynamicTypeSize);
  if ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
  {
    __break(1u);
LABEL_11:
    type metadata accessor for UIMetrics();
    sub_10021AEE0(&qword_100354D40, type metadata accessor for UIMetrics);
    result = EnvironmentObject.error()();
    __break(1u);
    return result;
  }

  sub_1000040A8(&qword_1003687D0);
  sub_10021AF28();
  sub_100009274(&qword_100354D78, &qword_100354D60);
  v64 = v86;
  View.dynamicTypeSize<A>(_:)();
  sub_100008FA0(v63, &qword_100354D60);
  v108[2] = v105;
  v108[3] = v106;
  v109 = v107;
  v108[0] = v103;
  v108[1] = v104;
  sub_100008FA0(v108, &qword_1003687D0);
  v65 = swift_getKeyPath();
  v66 = v89;
  (*(v90 + 32))(v89, v64, v91);
  v67 = v66 + *(v84 + 36);
  *v67 = v65;
  *(v67 + 8) = 1;
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v68 = v94;
  sub_10000CF4C(v66, v94, &qword_1003687A8);
  v69 = (v68 + *(v87 + 36));
  v70 = v104;
  *v69 = v103;
  v69[1] = v70;
  v69[2] = v105;
  v71 = v58[14];

  LOBYTE(v66) = static UIContentSizeCategory.>= infix(_:_:)();

  if (v66)
  {
    v72 = 1.0;
  }

  else
  {
    v72 = 0.5;
  }

  v73 = swift_getKeyPath();
  v74 = v92;
  sub_10000CF4C(v68, v92, &qword_1003687B0);
  v75 = v74 + *(v93 + 36);
  *v75 = v73;
  *(v75 + 8) = v72;
  v76 = v95;
  sub_10000CF4C(v74, v95, &qword_1003687B8);
  v77 = v102;
  v78 = v88;
  sub_10021AFF0(v102, v88);
  v79 = v96;
  sub_10021B060(v76, v96);
  v80 = v97;
  *v97 = 0;
  *(v80 + 8) = 1;
  v81 = sub_1000040A8(&qword_1003687E0);
  sub_10021AFF0(v78, v80 + v81[12]);
  sub_10021B060(v79, v80 + v81[16]);
  v82 = v80 + v81[20];
  sub_100008FA0(v76, &qword_1003687B8);
  sub_100008FA0(v77, &qword_1003687C8);
  *v82 = 0;
  v82[8] = 1;
  sub_100008FA0(v79, &qword_1003687B8);
  return sub_100008FA0(v78, &qword_1003687C8);
}

unint64_t sub_10021A97C()
{
  result = qword_100368750;
  if (!qword_100368750)
  {
    sub_100008CF0(&qword_100368720);
    sub_10021AA34();
    sub_100009274(&qword_100357770, &qword_100357778);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100368750);
  }

  return result;
}

unint64_t sub_10021AA34()
{
  result = qword_100368758;
  if (!qword_100368758)
  {
    sub_100008CF0(&qword_100368748);
    sub_100008CF0(&qword_100368718);
    type metadata accessor for GlassProminentButtonStyle();
    sub_100009274(&qword_100368740, &qword_100368718);
    sub_10021AEE0(&qword_100357730, &type metadata accessor for GlassProminentButtonStyle);
    swift_getOpaqueTypeConformance2();
    sub_100009274(&qword_100357768, &qword_100357740);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100368758);
  }

  return result;
}

unint64_t sub_10021ABAC()
{
  result = qword_100368760;
  if (!qword_100368760)
  {
    sub_100008CF0(&qword_100368730);
    sub_100008CF0(&qword_100368720);
    sub_10021A97C();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100368760);
  }

  return result;
}

uint64_t sub_10021ACC8(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_100008CF0(a2);
    a4();
    sub_10021AEE0(&qword_100355078, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10021AD98()
{
  result = qword_100368790;
  if (!qword_100368790)
  {
    sub_100008CF0(&qword_100368780);
    sub_100009274(&qword_100368798, &qword_100368778);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100368790);
  }

  return result;
}

uint64_t sub_10021AE60(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000040A8(&qword_1003687C0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10021AEE0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_10021AF28()
{
  result = qword_1003687D8;
  if (!qword_1003687D8)
  {
    sub_100008CF0(&qword_1003687D0);
    sub_1000EAFA4();
    sub_100009274(&qword_100356828, &qword_100356830);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003687D8);
  }

  return result;
}

uint64_t sub_10021AFF0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000040A8(&qword_1003687C8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10021B060(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000040A8(&qword_1003687B8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10021B114()
{
  v1 = v0;
  v2 = sub_1000040A8(&qword_100368818);
  __chkstk_darwin(v2);
  v4 = (v18 - v3);
  if (qword_100353B78 != -1)
  {
    swift_once();
  }

  *v4 = xmmword_100368808;
  v5 = v4 + *(sub_1000040A8(&qword_100368820) + 44);
  *v5 = static HorizontalAlignment.center.getter();
  *(v5 + 1) = 0;
  v5[16] = 1;
  v6 = sub_1000040A8(&qword_100368828);
  sub_10021B428(v1, &v5[*(v6 + 44)]);
  v7 = swift_allocObject();
  v8 = *(v1 + 80);
  *(v7 + 80) = *(v1 + 64);
  *(v7 + 96) = v8;
  *(v7 + 112) = *(v1 + 96);
  *(v7 + 128) = *(v1 + 112);
  v9 = *(v1 + 16);
  *(v7 + 16) = *v1;
  *(v7 + 32) = v9;
  v10 = *(v1 + 48);
  *(v7 + 48) = *(v1 + 32);
  *(v7 + 64) = v10;
  v11 = &v5[*(sub_1000040A8(&qword_100368830) + 36)];
  *v11 = sub_10021E374;
  v11[1] = v7;
  v11[2] = 0;
  v11[3] = 0;
  v12 = *(v1 + 16);
  if (v12)
  {
    v18[3] = *(v12 + 56);
    v13 = swift_allocObject();
    v14 = *(v1 + 80);
    *(v13 + 80) = *(v1 + 64);
    *(v13 + 96) = v14;
    *(v13 + 112) = *(v1 + 96);
    *(v13 + 128) = *(v1 + 112);
    v15 = *(v1 + 16);
    *(v13 + 16) = *v1;
    *(v13 + 32) = v15;
    v16 = *(v1 + 48);
    *(v13 + 48) = *(v1 + 32);
    *(v13 + 64) = v16;
    sub_1001B1D20(v1, v19);
    sub_1001B1D20(v1, v19);
    sub_1000040A8(&qword_1003618D0);
    sub_100009274(&qword_100368838, &qword_100368818);
    sub_10021E384();
    View.onChange<A>(of:initial:_:)();

    return sub_100008FA0(v4, &qword_100368818);
  }

  else
  {
    sub_1001B1D20(v1, v19);
    type metadata accessor for TryOutModel();
    sub_10021EBDC(&qword_100357990, type metadata accessor for TryOutModel);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_10021B428@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v50 = a2;
  v3 = sub_1000040A8(&qword_100368858);
  __chkstk_darwin(v3 - 8);
  v5 = &v44 - v4;
  v6 = sub_1000040A8(&qword_100368860);
  v7 = v6 - 8;
  __chkstk_darwin(v6);
  v49 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v44 - v10;
  __chkstk_darwin(v12);
  v48 = &v44 - v13;
  v47 = sub_1000040A8(&qword_100368868);
  v45 = *(v47 - 8);
  __chkstk_darwin(v47);
  v46 = &v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v44 - v16;
  v18 = static HorizontalAlignment.center.getter();
  v19 = swift_allocObject();
  v20 = *(a1 + 80);
  *(v19 + 80) = *(a1 + 64);
  *(v19 + 96) = v20;
  *(v19 + 112) = *(a1 + 96);
  *(v19 + 128) = *(a1 + 112);
  v21 = *(a1 + 16);
  *(v19 + 16) = *a1;
  *(v19 + 32) = v21;
  v22 = *(a1 + 48);
  *(v19 + 48) = *(a1 + 32);
  *(v19 + 64) = v22;
  sub_1001B1D20(a1, v57);
  v23 = static Edge.Set.all.getter();
  v60 = 1;
  v59 = 0;
  v51 = v18;
  LOBYTE(v52) = 1;
  *(&v52 + 1) = sub_10021E45C;
  *&v53 = v19;
  BYTE8(v53) = v23;
  v54 = xmmword_1002916C0;
  v55 = xmmword_1002916D0;
  v56 = 0;
  v24 = swift_allocObject();
  v25 = *(a1 + 80);
  *(v24 + 80) = *(a1 + 64);
  *(v24 + 96) = v25;
  *(v24 + 112) = *(a1 + 96);
  *(v24 + 128) = *(a1 + 112);
  v26 = *(a1 + 16);
  *(v24 + 16) = *a1;
  *(v24 + 32) = v26;
  v27 = *(a1 + 48);
  *(v24 + 48) = *(a1 + 32);
  *(v24 + 64) = v27;
  sub_1001B1D20(a1, v57);
  sub_1000040A8(&qword_100368870);
  sub_10021E4C0();
  View.onTapGesture(count:perform:)();

  v57[3] = v54;
  v57[4] = v55;
  v58 = v56;
  v57[0] = v51;
  v57[1] = v52;
  v57[2] = v53;
  sub_100008FA0(v57, &qword_100368870);
  *v5 = static HorizontalAlignment.center.getter();
  *(v5 + 1) = 0;
  v5[16] = 1;
  v28 = sub_1000040A8(&qword_100368890);
  sub_10021D1AC(a1, &v5[*(v28 + 44)]);
  type metadata accessor for KeyboardObserver();
  sub_10021EBDC(&qword_1003577D8, type metadata accessor for KeyboardObserver);
  StateObject.wrappedValue.getter();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v51)
  {
    v29 = 0x4030000000000000;
  }

  else
  {
    v29 = 0x403C000000000000;
  }

  v30 = static Edge.Set.all.getter();
  sub_10000CF4C(v5, v11, &qword_100368858);
  v31 = &v11[*(v7 + 44)];
  *v31 = v30;
  *(v31 + 1) = 0x4020000000000000;
  *(v31 + 2) = v29;
  *(v31 + 3) = v29;
  *(v31 + 4) = v29;
  v31[40] = 0;
  v32 = v48;
  sub_10000CF4C(v11, v48, &qword_100368860);
  v33 = v45;
  v34 = *(v45 + 16);
  v35 = v46;
  v36 = v17;
  v37 = v17;
  v38 = v47;
  v34(v46, v37, v47);
  v39 = v49;
  sub_100006C20(v32, v49, &qword_100368860);
  v40 = v50;
  v34(v50, v35, v38);
  v41 = sub_1000040A8(&qword_100368898);
  sub_100006C20(v39, &v40[*(v41 + 48)], &qword_100368860);
  sub_100008FA0(v32, &qword_100368860);
  v42 = *(v33 + 8);
  v42(v36, v38);
  sub_100008FA0(v39, &qword_100368860);
  return (v42)(v35, v38);
}

uint64_t sub_10021BA40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (**a3)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)@<X8>)
{
  v6 = type metadata accessor for GeometryProxy();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  (*(v7 + 16))(&v18[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0) - 8], a1, v6, v9);
  v10 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v11 = swift_allocObject();
  (*(v7 + 32))(v11 + v10, &v18[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0) - 8], v6);
  v12 = v11 + ((v8 + v10 + 7) & 0xFFFFFFFFFFFFFFF8);
  v13 = *(a2 + 80);
  *(v12 + 64) = *(a2 + 64);
  *(v12 + 80) = v13;
  *(v12 + 96) = *(a2 + 96);
  *(v12 + 112) = *(a2 + 112);
  v14 = *(a2 + 16);
  *v12 = *a2;
  *(v12 + 16) = v14;
  v15 = *(a2 + 48);
  *(v12 + 32) = *(a2 + 32);
  *(v12 + 48) = v15;
  *a3 = sub_10021E844;
  a3[1] = v11;
  return sub_1001B1D20(a2, v18);
}

uint64_t sub_10021BBB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v68 = a1;
  v66 = a4;
  v57 = type metadata accessor for LocalCoordinateSpace();
  __chkstk_darwin(v57);
  v55 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = type metadata accessor for DragGesture();
  v61 = *(v62 - 8);
  __chkstk_darwin(v62);
  v60 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = sub_1000040A8(&qword_100368938);
  v64 = *(v65 - 8);
  __chkstk_darwin(v65);
  v63 = &v48 - v8;
  v9 = type metadata accessor for ScrollViewProxy();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v67 = v11;
  v12 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_1000040A8(&qword_100368940);
  v53 = *(v54 - 8);
  __chkstk_darwin(v54);
  v14 = &v48 - v13;
  v69 = sub_1000040A8(&qword_100368948);
  __chkstk_darwin(v69);
  v50 = &v48 - v15;
  v59 = sub_1000040A8(&qword_100368950);
  v58 = *(v59 - 8);
  __chkstk_darwin(v59);
  v56 = &v48 - v16;
  static Axis.Set.vertical.getter();
  v70 = a2;
  v71 = a3;
  sub_1000040A8(&qword_100368958);
  sub_100009274(&qword_100368960, &qword_100368958);
  v52 = v14;
  ScrollView.init(_:showsIndicators:content:)();
  v17 = *(a3 + 16);
  if (v17)
  {
    v18 = *(v17 + 32);
    v51 = *(v10 + 16);
    v19 = v12;
    v51(v12, v68, v9);
    v20 = *(v10 + 80);
    v21 = swift_allocObject();
    v22 = *(a3 + 80);
    *(v21 + 80) = *(a3 + 64);
    *(v21 + 96) = v22;
    *(v21 + 112) = *(a3 + 96);
    *(v21 + 128) = *(a3 + 112);
    v23 = *(a3 + 16);
    *(v21 + 16) = *a3;
    *(v21 + 32) = v23;
    v24 = *(a3 + 48);
    *(v21 + 48) = *(a3 + 32);
    *(v21 + 64) = v24;
    v49 = *(v10 + 32);
    v49(v21 + ((v20 + 129) & ~v20), v12, v9);
    v25 = v50;
    (*(v53 + 32))(v50, v52, v54);
    v26 = v69;
    *(v25 + *(v69 + 52)) = v18;
    v27 = (v25 + *(v26 + 56));
    *v27 = sub_10021E9E8;
    v27[1] = v21;
    v73 = *(a3 + 48);

    sub_1001B1D20(a3, v72);
    sub_1000040A8(&qword_100368930);
    State.wrappedValue.getter();
    v51(v12, v68, v9);
    v28 = (v20 + 16) & ~v20;
    v29 = (v67 + v28 + 7) & 0xFFFFFFFFFFFFFFF8;
    v30 = swift_allocObject();
    v49(v30 + v28, v19, v9);
    v31 = v30 + v29;
    v32 = *(a3 + 80);
    *(v31 + 64) = *(a3 + 64);
    *(v31 + 80) = v32;
    *(v31 + 96) = *(a3 + 96);
    *(v31 + 112) = *(a3 + 112);
    v33 = *(a3 + 16);
    *v31 = *a3;
    *(v31 + 16) = v33;
    v34 = *(a3 + 48);
    *(v31 + 32) = *(a3 + 32);
    *(v31 + 48) = v34;
    sub_1001B1D20(a3, v72);
    v35 = sub_100009274(&qword_100368968, &qword_100368948);
    v36 = v56;
    v37 = v69;
    View.onChange<A>(of:initial:_:)();

    sub_100008FA0(v25, &qword_100368948);
    static CoordinateSpaceProtocol<>.local.getter();
    v38 = v60;
    DragGesture.init<A>(minimumDistance:coordinateSpace:)();
    v39 = swift_allocObject();
    v40 = *(a3 + 80);
    *(v39 + 80) = *(a3 + 64);
    *(v39 + 96) = v40;
    *(v39 + 112) = *(a3 + 96);
    *(v39 + 128) = *(a3 + 112);
    v41 = *(a3 + 16);
    *(v39 + 16) = *a3;
    *(v39 + 32) = v41;
    v42 = *(a3 + 48);
    *(v39 + 48) = *(a3 + 32);
    *(v39 + 64) = v42;
    sub_1001B1D20(a3, v72);
    sub_10021EBDC(&qword_1003688C0, &type metadata accessor for DragGesture);
    sub_10021EBDC(&qword_100368970, &type metadata accessor for DragGesture.Value);
    v43 = v63;
    v44 = v62;
    Gesture<>.onChanged(_:)();

    (*(v61 + 8))(v38, v44);
    static GestureMask.all.getter();
    v72[0] = v37;
    v72[1] = &type metadata for Double;
    v72[2] = v35;
    v72[3] = &protocol witness table for Double;
    swift_getOpaqueTypeConformance2();
    sub_100009274(&qword_100368978, &qword_100368938);
    v45 = v59;
    v46 = v65;
    View.simultaneousGesture<A>(_:including:)();
    (*(v64 + 8))(v43, v46);
    return (*(v58 + 8))(v36, v45);
  }

  else
  {
    type metadata accessor for TryOutModel();
    sub_10021EBDC(&qword_100357990, type metadata accessor for TryOutModel);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_10021C558@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = static HorizontalAlignment.center.getter();
  v28[0] = 1;
  sub_10021C828(a1, &v52);
  v42 = *&v53[80];
  v43 = *&v53[96];
  v44 = *&v53[112];
  v45 = *&v53[128];
  v38 = *&v53[16];
  v39 = *&v53[32];
  v40 = *&v53[48];
  v41 = *&v53[64];
  v36 = v52;
  v37 = *v53;
  v46[6] = *&v53[80];
  v46[7] = *&v53[96];
  v46[8] = *&v53[112];
  v46[9] = *&v53[128];
  v46[2] = *&v53[16];
  v46[3] = *&v53[32];
  v46[4] = *&v53[48];
  v46[5] = *&v53[64];
  v46[0] = v52;
  v46[1] = *v53;
  sub_100006C20(&v36, &v50, &qword_100368980);
  sub_100008FA0(v46, &qword_100368980);
  *&v29[103] = v42;
  *&v29[119] = v43;
  *&v29[135] = v44;
  *&v29[151] = v45;
  *&v29[39] = v38;
  *&v29[55] = v39;
  *&v29[71] = v40;
  *&v29[87] = v41;
  *&v29[7] = v36;
  *&v29[23] = v37;
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v5 = v30;
  v6 = v32;
  v7 = v34;
  v27 = v35;
  v49 = 1;
  v48 = v31;
  v47 = v33;
  v8 = Namespace.wrappedValue.getter();
  v50 = v4;
  v51[0] = 1;
  v9 = *&v29[96];
  *&v51[113] = *&v29[112];
  v10 = *&v29[112];
  *&v51[129] = *&v29[128];
  v11 = *&v29[128];
  *&v51[145] = *&v29[144];
  v12 = *&v29[32];
  *&v51[49] = *&v29[48];
  v13 = *&v29[48];
  *&v51[65] = *&v29[64];
  v14 = *&v29[64];
  *&v51[81] = *&v29[80];
  v15 = *&v29[80];
  *&v51[97] = *&v29[96];
  v16 = *&v29[16];
  *&v51[1] = *v29;
  v17 = *v29;
  *&v51[17] = *&v29[16];
  *&v51[33] = *&v29[32];
  v18 = *&v51[128];
  *(a2 + 128) = *&v51[112];
  *(a2 + 144) = v18;
  *(a2 + 160) = *&v51[144];
  v19 = *&v51[64];
  *(a2 + 64) = *&v51[48];
  *(a2 + 80) = v19;
  v20 = *&v51[96];
  *(a2 + 96) = *&v51[80];
  *(a2 + 112) = v20;
  v21 = *v51;
  *a2 = v50;
  *(a2 + 16) = v21;
  v22 = *&v51[32];
  *(a2 + 32) = *&v51[16];
  *(a2 + 48) = v22;
  *&v53[113] = v10;
  *&v53[129] = v11;
  *v54 = *&v29[144];
  *&v53[49] = v13;
  *&v53[65] = v14;
  *&v53[81] = v15;
  *&v53[97] = v9;
  *&v53[1] = v17;
  *&v53[17] = v16;
  v23 = v49;
  v24 = v48;
  v25 = v47;
  *&v51[160] = *&v29[159];
  *(a2 + 176) = *&v29[159];
  *(a2 + 184) = 0;
  *(a2 + 192) = v23;
  *(a2 + 200) = v5;
  *(a2 + 208) = v24;
  *(a2 + 216) = v6;
  *(a2 + 224) = v25;
  *(a2 + 232) = v7;
  *(a2 + 240) = v27;
  *(a2 + 248) = v8;
  v52 = v4;
  v53[0] = 1;
  *&v54[15] = *&v29[159];
  *&v53[33] = v12;
  sub_100006C20(&v50, v28, &qword_100368988);
  return sub_100008FA0(&v52, &qword_100368988);
}

uint64_t sub_10021C828@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  GeometryProxy.size.getter();
  v5 = v4;
  v36[0] = *(a1 + 32);
  sub_1000040A8(&qword_100368930);
  State.wrappedValue.getter();
  if (v5 - *v53 <= 0.0)
  {
    v28 = 0;
    v25 = 0;
    v26 = 0;
    v23 = 0;
    v24 = 0;
    v22 = 0;
    v6 = 0;
    v27 = 1;
  }

  else
  {
    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    v27 = 0;
    v28 = v56;
    v25 = v60;
    v26 = v58;
    LOBYTE(v53[0]) = 1;
    v29[0] = v57;
    LOBYTE(v45[0]) = v59;
    v6 = 1;
    v22 = v57;
    v23 = v59;
    v24 = v61;
    LOBYTE(v36[0]) = 0;
  }

  v7 = static HorizontalAlignment.center.getter();
  type metadata accessor for TryOutModel();
  sub_10021EBDC(&qword_100357990, type metadata accessor for TryOutModel);
  v8 = EnvironmentObject.init()();
  v10 = v9;
  v11 = swift_allocObject();
  v12 = *(a1 + 80);
  *(v11 + 80) = *(a1 + 64);
  *(v11 + 96) = v12;
  *(v11 + 112) = *(a1 + 96);
  *(v11 + 128) = *(a1 + 112);
  v13 = *(a1 + 16);
  *(v11 + 16) = *a1;
  *(v11 + 32) = v13;
  v14 = *(a1 + 48);
  *(v11 + 48) = *(a1 + 32);
  *(v11 + 64) = v14;
  sub_1001B1D20(a1, v36);
  v15 = static Alignment.center.getter();
  v17 = v16;
  LOBYTE(v53[0]) = 0;
  v18 = swift_allocObject();
  *(v18 + 16) = sub_10021ECA4;
  *(v18 + 24) = v11;
  v40[0] = v7;
  v40[1] = 0;
  LOBYTE(v41) = v53[0];
  *(&v41 + 1) = v8;
  *&v42 = v10;
  *(&v42 + 1) = sub_10021E088;
  *&v43 = 0;
  *(&v43 + 1) = v15;
  v44 = v17;
  v33 = v42;
  v34 = v43;
  v35 = v17;
  v31 = v7;
  v32 = v41;
  v45[0] = v7;
  v45[1] = 0;
  v46 = v53[0];
  v47 = v8;
  v48 = v10;
  v49 = sub_10021E088;
  v50 = 0;
  v51 = v15;
  v52 = v17;
  sub_100006C20(v40, v36, &qword_100368990);
  sub_100008FA0(v45, &qword_100368990);
  v53[0] = v7;
  v53[1] = v32;
  v53[2] = v33;
  v53[3] = v34;
  *&v54 = v17;
  *(&v54 + 1) = sub_10021EEC8;
  v55 = v18;
  *&v30[87] = v18;
  *&v30[55] = v34;
  *&v30[39] = v33;
  *&v30[7] = v7;
  *&v30[23] = v32;
  *&v30[71] = v54;
  *a2 = 0;
  *(a2 + 8) = v6;
  *(a2 + 16) = v28;
  *(a2 + 24) = v22;
  *(a2 + 32) = v26;
  *(a2 + 40) = v23;
  *(a2 + 48) = v25;
  *(a2 + 56) = v24;
  *(a2 + 64) = v27;
  *(a2 + 97) = *&v30[32];
  v19 = *&v30[64];
  *(a2 + 113) = *&v30[48];
  *(a2 + 129) = v19;
  *(a2 + 144) = *&v30[79];
  v20 = *&v30[16];
  *(a2 + 65) = *v30;
  *(a2 + 81) = v20;
  v36[2] = v33;
  v36[3] = v34;
  v36[0] = v31;
  v36[1] = v32;
  v37 = v35;
  v38 = sub_10021EEC8;
  v39 = v18;
  sub_100006C20(v53, v29, &qword_100368998);
  return sub_100008FA0(v36, &qword_100368998);
}

uint64_t sub_10021CBBC()
{
  static Animation.default.getter();
  withAnimation<A>(_:_:)();
}

void sub_10021CC2C(uint64_t a1, void *a2)
{
  v3 = a2[2];
  if (!v3)
  {
    type metadata accessor for TryOutModel();
    v20 = &qword_100357990;
    v21 = type metadata accessor for TryOutModel;
    goto LABEL_32;
  }

  v4 = *(v3 + OBJC_IVAR____TtC8SOSBuddy11TryOutModel__messageSimulationEngine);
  if (v4)
  {
    v5 = *(v4 + 16);
    if (v5)
    {
      v6 = *(v5 + 48);
    }

    else
    {
      v6 = _swiftEmptyArrayStorage;
    }

    if (v6 >> 62)
    {
LABEL_30:
      v7 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v7)
    {
      v8 = 0;
      while (1)
      {
        if ((v6 & 0xC000000000000001) != 0)
        {
          v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          v10 = v8 + 1;
          if (__OFADD__(v8, 1))
          {
LABEL_18:
            __break(1u);
            goto LABEL_19;
          }
        }

        else
        {
          if (v8 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_30;
          }

          v9 = *(v6 + 8 * v8 + 32);

          v10 = v8 + 1;
          if (__OFADD__(v8, 1))
          {
            goto LABEL_18;
          }
        }

        if (static UUID.== infix(_:_:)())
        {
          break;
        }

        ++v8;
        if (v10 == v7)
        {
          goto LABEL_19;
        }
      }

      if (qword_100353A58 != -1)
      {
        swift_once();
      }

      v11 = type metadata accessor for Logger();
      sub_10000F53C(v11, qword_100381D58);

      v12 = Logger.logObject.getter();
      v13 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        v15 = swift_slowAlloc();
        v22 = v15;
        *v14 = 136446210;
        v16 = (*(*v9 + 96))(v15);
        v18 = sub_10017C9E8(v16, v17, &v22);

        *(v14 + 4) = v18;
        _os_log_impl(&_mh_execute_header, v12, v13, "Item to scroll to - %{public}s", v14, 0xCu);
        sub_100008964(v15);
      }

      __chkstk_darwin(v19);
      static Animation.default.getter();
      withAnimation<A>(_:_:)();

      if (!*a2)
      {
        while (1)
        {
          type metadata accessor for AppEvents();
          v20 = &qword_100354D48;
          v21 = type metadata accessor for AppEvents;
LABEL_32:
          sub_10021EBDC(v20, v21);
          EnvironmentObject.error()();
          __break(1u);
        }
      }

      LOBYTE(v22) = 0;

      PassthroughSubject.send(_:)();
    }

    else
    {
LABEL_19:
    }
  }
}

uint64_t sub_10021D034(uint64_t a1, uint64_t a2)
{
  (*(*a2 + 96))();
  static UnitPoint.bottom.getter();
  ScrollViewProxy.scrollTo<A>(_:anchor:)();
}

uint64_t sub_10021D0D0()
{
  Namespace.wrappedValue.getter();
  static UnitPoint.bottom.getter();
  sub_100118EC8();
  return ScrollViewProxy.scrollTo<A>(_:anchor:)();
}

uint64_t sub_10021D13C()
{
  result = DragGesture.Value.translation.getter();
  if (v1 > 0.0)
  {
    sub_1000040A8(&qword_100368850);
    return FocusState.wrappedValue.setter();
  }

  return result;
}

uint64_t sub_10021D1AC@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v79 = a2;
  v3 = sub_1000040A8(&qword_1003688A0);
  v75 = *(v3 - 8);
  v76 = v3;
  __chkstk_darwin(v3);
  v64 = v63 - v4;
  v5 = sub_1000040A8(&qword_1003688A8);
  __chkstk_darwin(v5 - 8);
  v78 = v63 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v77 = v63 - v8;
  v67 = type metadata accessor for LocalCoordinateSpace();
  __chkstk_darwin(v67);
  v9 = type metadata accessor for DragGesture();
  v10 = *(v9 - 8);
  v68 = v9;
  v69 = v10;
  __chkstk_darwin(v9);
  v12 = v63 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1000040A8(&qword_1003688B0);
  v14 = *(v13 - 8);
  v70 = v13;
  v71 = v14;
  __chkstk_darwin(v13);
  v66 = v63 - v15;
  v16 = sub_1000040A8(&qword_1003688B8);
  v73 = *(v16 - 8);
  v74 = v16;
  __chkstk_darwin(v16);
  v72 = v63 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v80 = v63 - v19;
  type metadata accessor for AppEvents();
  sub_10021EBDC(&qword_100354D48, type metadata accessor for AppEvents);
  v20 = EnvironmentObject.init()();
  v65 = v20;
  v22 = v21;
  v23 = type metadata accessor for TryOutModel();
  v63[0] = sub_10021EBDC(&qword_100357990, type metadata accessor for TryOutModel);
  v63[1] = v23;
  v24 = EnvironmentObject.init()();
  v26 = v25;
  type metadata accessor for UIMetrics();
  sub_10021EBDC(&qword_100354D40, type metadata accessor for UIMetrics);
  v27 = EnvironmentObject.init()();
  *&v81 = v20;
  *(&v81 + 1) = v22;
  *&v82 = v24;
  *(&v82 + 1) = v26;
  *&v83 = v27;
  *(&v83 + 1) = v28;
  static CoordinateSpaceProtocol<>.local.getter();
  DragGesture.init<A>(minimumDistance:coordinateSpace:)();
  v29 = swift_allocObject();
  v30 = *(a1 + 80);
  *(v29 + 80) = *(a1 + 64);
  *(v29 + 96) = v30;
  *(v29 + 112) = *(a1 + 96);
  *(v29 + 128) = *(a1 + 112);
  v31 = *(a1 + 16);
  *(v29 + 16) = *a1;
  *(v29 + 32) = v31;
  v32 = *(a1 + 48);
  *(v29 + 48) = *(a1 + 32);
  *(v29 + 64) = v32;
  sub_1001B1D20(a1, &v102);
  sub_10021EBDC(&qword_1003688C0, &type metadata accessor for DragGesture);
  v33 = v66;
  v34 = v68;
  Gesture.onEnded(_:)();

  (*(v69 + 8))(v12, v34);
  static GestureMask.all.getter();
  sub_10021E580();
  sub_100009274(&qword_1003688D0, &qword_1003688B0);
  v35 = v70;
  View.gesture<A>(_:including:)();
  (*(v71 + 8))(v33, v35);

  v36 = *(a1 + 16);
  if (v36)
  {
    v37 = *(v36 + OBJC_IVAR____TtC8SOSBuddy11TryOutModel__messageSimulationEngine);
    if (v37 && (v38 = *(v37 + 16)) != 0 && *(v38 + 16) == 2)
    {
      v39 = v77;
      (*(v75 + 56))(v77, 1, 1, v76);
    }

    else
    {
      sub_10007389C(&v81);
      v40 = swift_allocObject();
      v41 = *(a1 + 80);
      *(v40 + 80) = *(a1 + 64);
      *(v40 + 96) = v41;
      *(v40 + 112) = *(a1 + 96);
      *(v40 + 128) = *(a1 + 112);
      v42 = *(a1 + 16);
      *(v40 + 16) = *a1;
      *(v40 + 32) = v42;
      v43 = *(a1 + 48);
      *(v40 + 48) = *(a1 + 32);
      *(v40 + 64) = v43;
      sub_1001B1D20(a1, &v102);
      v44 = static Alignment.center.getter();
      v46 = v45;
      v47 = swift_allocObject();
      *(v47 + 16) = sub_10021E5D4;
      *(v47 + 24) = v40;
      v88[2] = v83;
      v88[3] = v84;
      v88[0] = v81;
      v88[1] = v82;
      *&v89 = sub_10021E088;
      *(&v89 + 1) = 0;
      *&v90 = v44;
      *(&v90 + 1) = v46;
      v96 = v81;
      v97 = v82;
      v100 = v89;
      v101 = v90;
      v98 = v83;
      v99 = v84;
      v91[2] = v83;
      v91[3] = v84;
      v91[0] = v81;
      v91[1] = v82;
      v92 = sub_10021E088;
      v93 = 0;
      v94 = v44;
      v95 = v46;
      sub_100006C20(v88, &v102, &qword_1003688D8);
      sub_100008FA0(v91, &qword_1003688D8);
      v83 = v98;
      v84 = v99;
      v85 = v100;
      v86 = v101;
      v81 = v96;
      v82 = v97;
      *&v87 = sub_10021E660;
      *(&v87 + 1) = v47;
      v102 = *(a1 + 64);
      LOBYTE(v103) = *(a1 + 80);
      sub_1000040A8(&qword_100368850);
      FocusState.projectedValue.getter();
      sub_1000040A8(&qword_1003688E0);
      sub_10021E668();
      v48 = v64;
      View.focused(_:)();

      v106 = v85;
      v107 = v86;
      v108 = v87;
      v102 = v81;
      v103 = v82;
      v104 = v83;
      v105 = v84;
      sub_100008FA0(&v102, &qword_1003688E0);
      if (qword_100353B78 != -1)
      {
        swift_once();
      }

      v49 = *(&xmmword_100368808 + 1);
      v50 = (v48 + *(sub_1000040A8(&qword_100368920) + 36));
      *v50 = v49;
      v50[1] = sub_10021DB98;
      v50[2] = 0;
      v51 = v76;
      v39 = v77;
      v52 = (v48 + *(v76 + 36));
      *v52 = xmmword_100368808;
      v52[1] = sub_10021DBC0;
      v52[2] = 0;
      sub_10000CF4C(v48, v39, &qword_1003688A0);
      (*(v75 + 56))(v39, 0, 1, v51);
    }

    v53 = v72;
    v54 = v73;
    v55 = *(v73 + 16);
    v56 = v80;
    v57 = v74;
    v55(v72, v80, v74);
    v58 = v78;
    sub_100006C20(v39, v78, &qword_1003688A8);
    v59 = v79;
    v55(v79, v53, v57);
    v60 = sub_1000040A8(&qword_100368928);
    sub_100006C20(v58, &v59[*(v60 + 48)], &qword_1003688A8);
    sub_100008FA0(v39, &qword_1003688A8);
    v61 = *(v54 + 8);
    v61(v56, v57);
    sub_100008FA0(v58, &qword_1003688A8);
    return (v61)(v53, v57);
  }

  else
  {
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_10021DBE8(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    v2 = *(v1 + OBJC_IVAR____TtC8SOSBuddy11TryOutModel__messageSimulationEngine);
    if (v2 && *(v2 + 16))
    {

      sub_10003FC00();
    }
  }

  else
  {
    type metadata accessor for TryOutModel();
    sub_10021EBDC(&qword_100357990, type metadata accessor for TryOutModel);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

void sub_10021DCBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_100353A58 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000F53C(v4, qword_100381D58);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *&v14 = v8;
    *v7 = 136446210;
    sub_1000040A8(&qword_1003618D0);
    v9 = String.init<A>(describing:)();
    v11 = sub_10017C9E8(v9, v10, &v14);

    *(v7 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v5, v6, "Demo transcript: TryOut state changed: %{public}s", v7, 0xCu);
    sub_100008964(v8);
  }

  v12 = *(a3 + 16);
  if (v12)
  {
    v13 = *(v12 + 56);
    if (v13 >= 0x4000 && (v13 >> 9 > 0x7E || (v13 & 0xC000) != 0x4000))
    {
      v14 = *(a3 + 64);
      v15 = *(a3 + 80);
      sub_1000040A8(&qword_100368850);
      FocusState.wrappedValue.setter();
    }
  }

  else
  {
    type metadata accessor for TryOutModel();
    sub_10021EBDC(&qword_100357990, type metadata accessor for TryOutModel);
    EnvironmentObject.error()();
    __break(1u);
  }
}

uint64_t sub_10021DF68()
{
  sub_10021ED10();
  result = VerticalAlignment.init(_:)();
  qword_1003687F8 = result;
  return result;
}

uint64_t sub_10021DFC0()
{
  sub_10021ED64();
  result = HorizontalAlignment.init(_:)();
  qword_100368800 = result;
  return result;
}

uint64_t sub_10021DFF0()
{
  if (qword_100353B70 != -1)
  {
    result = swift_once();
  }

  v0 = qword_100368800;
  if (qword_100353B68 != -1)
  {
    result = swift_once();
  }

  *&xmmword_100368808 = v0;
  *(&xmmword_100368808 + 1) = qword_1003687F8;
  return result;
}

uint64_t sub_10021E088@<X0>(uint64_t *a1@<X8>)
{
  v2 = static Color.clear.getter();
  result = GeometryProxy.size.getter();
  *a1 = v2;
  a1[1] = v4;
  a1[2] = v5;
  return result;
}

uint64_t sub_10021E0C8@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for AppEvents();
  sub_10021EBDC(&qword_100354D48, type metadata accessor for AppEvents);
  v2 = EnvironmentObject.init()();
  v4 = v3;
  type metadata accessor for TryOutModel();
  sub_10021EBDC(&qword_100357990, type metadata accessor for TryOutModel);
  v5 = EnvironmentObject.init()();
  v7 = v6;
  State.init(wrappedValue:)();
  State.init(wrappedValue:)();
  result = FocusState.init<>()();
  *a1 = v2;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v7;
  *(a1 + 32) = v11;
  *(a1 + 40) = v12;
  *(a1 + 48) = v11;
  *(a1 + 56) = v12;
  *(a1 + 64) = result & 1;
  *(a1 + 72) = v10;
  *(a1 + 80) = v9 & 1;
  *(a1 + 88) = 0;
  *(a1 + 96) = sub_10004DD1C;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  return result;
}

__n128 sub_10021E248(uint64_t a1, __int128 *a2)
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
  v7 = a2[6];
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_10021E274(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 113))
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

uint64_t sub_10021E2D0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 112) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 113) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 113) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

unint64_t sub_10021E384()
{
  result = qword_100368840;
  if (!qword_100368840)
  {
    sub_100008CF0(&qword_1003618D0);
    sub_10021E408();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100368840);
  }

  return result;
}

unint64_t sub_10021E408()
{
  result = qword_100368848;
  if (!qword_100368848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100368848);
  }

  return result;
}

unint64_t sub_10021E4C0()
{
  result = qword_100368878;
  if (!qword_100368878)
  {
    sub_100008CF0(&qword_100368870);
    sub_100009274(&qword_100368880, &qword_100368888);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100368878);
  }

  return result;
}

unint64_t sub_10021E580()
{
  result = qword_1003688C8;
  if (!qword_1003688C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003688C8);
  }

  return result;
}

uint64_t sub_10021E628()
{

  return _swift_deallocObject(v0, 32, 7);
}

unint64_t sub_10021E668()
{
  result = qword_1003688E8;
  if (!qword_1003688E8)
  {
    sub_100008CF0(&qword_1003688E0);
    sub_10021E720();
    sub_100009274(&qword_100368910, &qword_100368918);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003688E8);
  }

  return result;
}

unint64_t sub_10021E720()
{
  result = qword_1003688F0;
  if (!qword_1003688F0)
  {
    sub_100008CF0(&qword_1003688D8);
    sub_10021E7D8();
    sub_100009274(&qword_100368900, &qword_100368908);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003688F0);
  }

  return result;
}

unint64_t sub_10021E7D8()
{
  result = qword_1003688F8;
  if (!qword_1003688F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003688F8);
  }

  return result;
}

uint64_t sub_10021E844@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for GeometryProxy() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8);

  return sub_10021BBB8(a1, v2 + v6, v7, a2);
}

uint64_t sub_10021E8F8()
{
  v1 = type metadata accessor for ScrollViewProxy();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 129) & ~v3;
  v5 = *(v2 + 64);

  sub_1000502D0();
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

void sub_10021E9E8(uint64_t a1)
{
  type metadata accessor for ScrollViewProxy();

  sub_10021CC2C(a1, (v1 + 16));
}

uint64_t sub_10021EA74(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 16) & ~v4;
  v6 = (*(v3 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v3 + 8))(v1 + v5, v2);

  sub_1000502D0();

  return _swift_deallocObject(v1, v6 + 113, v4 | 7);
}

uint64_t sub_10021EB48()
{
  type metadata accessor for ScrollViewProxy();

  return sub_10021D0D0();
}

uint64_t sub_10021EBDC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10021EC40()
{

  sub_1000502D0();

  return _swift_deallocObject(v0, 129, 7);
}

unint64_t sub_10021ED10()
{
  result = qword_1003689A0;
  if (!qword_1003689A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003689A0);
  }

  return result;
}

unint64_t sub_10021ED64()
{
  result = qword_1003689A8;
  if (!qword_1003689A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003689A8);
  }

  return result;
}

uint64_t sub_10021EDE8()
{
  sub_100008CF0(&qword_100368818);
  sub_100008CF0(&qword_1003618D0);
  sub_100009274(&qword_100368838, &qword_100368818);
  sub_10021E384();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_10021EECC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 < 2)
  {
    return 0;
  }

  v3 = 0;
  v4 = a1 + 88;
  v5 = 1;
  do
  {
    v6 = (a1 + 32 * v5++);
    v7 = v4;
    v8 = v3;
    while (v1 != ++v8)
    {
      v9 = v7 + 32;
      v10 = CGRectIntersectsRect(*(v7 - 24), *v6);
      v7 = v9;
      if (v10)
      {
        return 1;
      }
    }

    result = 0;
    ++v3;
    v4 += 32;
  }

  while (v5 != v1);
  return result;
}

uint64_t UIContentSizeCategory.debugDescription.getter()
{
  v0 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = v1;
  if (v0 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v2 == v3)
  {

    return 20053;
  }

  v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v5)
  {
    return 20053;
  }

  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  if (v6 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v8 == v9)
  {

    return 21336;
  }

  v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v11)
  {
    return 21336;
  }

  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;
  if (v12 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v14 == v15)
  {

    return 83;
  }

  v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v17)
  {
    return 83;
  }

  v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v20 = v19;
  if (v18 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v20 == v21)
  {

    return 77;
  }

  v22 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v22)
  {
    return 77;
  }

  v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v25 = v24;
  if (v23 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v25 == v26)
  {

    return 76;
  }

  v27 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v27)
  {
    return 76;
  }

  v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v30 = v29;
  if (v28 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v30 == v31)
  {

    return 19544;
  }

  v32 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v32)
  {
    return 19544;
  }

  v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v35 = v34;
  if (v33 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v35 == v36)
  {

    return 5003352;
  }

  v37 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v37)
  {
    return 5003352;
  }

  v38 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v40 = v39;
  if (v38 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v40 == v41)
  {

    return 1280858200;
  }

  v42 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v42)
  {
    return 1280858200;
  }

  v43 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v45 = v44;
  if (v43 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v45 == v46)
  {

    return 3233857;
  }

  v47 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v47)
  {
    return 3233857;
  }

  v48 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v50 = v49;
  if (v48 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v50 == v51)
  {

    return 3299393;
  }

  v52 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v52)
  {
    return 3299393;
  }

  v53 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v55 = v54;
  if (v53 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v55 == v56)
  {

    return 3364929;
  }

  v57 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v57)
  {
    return 3364929;
  }

  v58 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v60 = v59;
  if (v58 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v60 == v61)
  {

    return 3430465;
  }

  v62 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v62)
  {
    return 3430465;
  }

  v63 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v65 = v64;
  if (v63 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v65 == v66)
  {

    return 3496001;
  }

  else
  {
    v67 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v67)
    {
      return 3496001;
    }

    else
    {
      return 63;
    }
  }
}

unint64_t sub_10021F69C(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v4 = 0x53746E6572727563;
    v5 = 0x7361655274697865;
    if (a1 != 2)
    {
      v5 = 0xD000000000000010;
    }

    if (a1)
    {
      v4 = 0xD000000000000014;
    }

    if (a1 <= 1u)
    {
      return v4;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0xD000000000000017;
    if (a1 == 6)
    {
      v1 = 0xD000000000000014;
    }

    v2 = 0xD000000000000019;
    if (a1 == 4)
    {
      v2 = 0xD000000000000016;
    }

    if (a1 <= 5u)
    {
      return v2;
    }

    else
    {
      return v1;
    }
  }
}

void sub_10021F7D8(uint64_t a1, char a2)
{
  v3 = *(v2 + 104);
  if (a2)
  {
    if (*(v2 + 104))
    {
      return;
    }

    goto LABEL_7;
  }

  if (*(v2 + 96) != a1)
  {
    v3 = 1;
  }

  if (v3)
  {
LABEL_7:
    if (qword_100353A28 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_10000F53C(v4, qword_100381CC8);

    oslog = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(oslog, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v12 = v7;
      *v6 = 136315138;
      sub_1000040A8(&qword_100358098);
      v8 = String.init<A>(describing:)();
      v10 = sub_10017C9E8(v8, v9, &v12);

      *(v6 + 4) = v10;
      _os_log_impl(&_mh_execute_header, oslog, v5, "Connectivity state generation = %s", v6, 0xCu);
      sub_100008964(v7);
    }

    else
    {
    }
  }
}

void sub_10021F9A4()
{
  v1 = sub_1000040A8(&qword_100356518);
  __chkstk_darwin(v1 - 8);
  v3 = &v10 - v2;
  *(*(v0 + 56) + 32) = 0;

  *(v0 + 64) = &_swiftEmptySetSingleton;

  sub_10021FE40();
  *(v0 + 72) = 2;
  sub_10021FE40();
  *(v0 + 73) = 34144771;
  *(v0 + 80) = 0;

  *(v0 + 88) = 2;
  v4 = *(v0 + 96);
  v5 = *(v0 + 104);
  *(v0 + 96) = 0;
  *(v0 + 104) = 1;
  sub_10021F7D8(v4, v5);
  *(v0 + 105) = 2;
  v6 = type metadata accessor for DispatchTime();
  (*(*(v6 - 8) + 56))(v3, 1, 1, v6);
  v7 = OBJC_IVAR____TtC8SOSBuddy27SessionUserAttentionTracker__lastMainSceneIsExpectedToBeForegoundSoonAt;
  swift_beginAccess();
  sub_10002B4A0(v3, v0 + v7);
  swift_endAccess();
  *(v0 + OBJC_IVAR____TtC8SOSBuddy27SessionUserAttentionTracker__everSeenConnectedInCone) = 2;
  v8 = OBJC_IVAR____TtC8SOSBuddy27SessionUserAttentionTracker__explorerConnectedTimer;
  [*(v0 + OBJC_IVAR____TtC8SOSBuddy27SessionUserAttentionTracker__explorerConnectedTimer) invalidate];
  v9 = *(v0 + v8);
  *(v0 + v8) = 0;
}

void sub_10021FB28(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = *(v2 + 64);
  v17 = v5;
  if (a1)
  {

    v5 = sub_10021FD64(v6, v5);
    v17 = v5;
    if (!a2)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  if (a2)
  {
LABEL_3:
    sub_100222EC0(a2);
    v5 = v17;
  }

LABEL_4:
  if (sub_100204870(*(v3 + 64), v5))
  {
  }

  else
  {
    *(v3 + 64) = v5;

    sub_10021FE40();
    if (qword_100353A28 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_10000F53C(v7, qword_100381CC8);

    oslog = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(oslog, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v16 = v10;
      *v9 = 136446210;
      sub_100222FB4();

      v11 = Set.description.getter();
      v13 = v12;

      v14 = sub_10017C9E8(v11, v13, &v16);

      *(v9 + 4) = v14;
      _os_log_impl(&_mh_execute_header, oslog, v8, "Assertions: %{public}s", v9, 0xCu);
      sub_100008964(v10);
    }
  }
}

uint64_t sub_10021FD64(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = 0;
  v12 = a2;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 56);
  for (i = (v5 + 63) >> 6; v7; result = sub_1000FCB54(&v11, *(*(v2 + 48) + (v10 | (v9 << 6)))))
  {
    v9 = v3;
LABEL_9:
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
  }

  while (1)
  {
    v9 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v9 >= i)
    {

      return v12;
    }

    v7 = *(v4 + 8 * v9);
    ++v3;
    if (v7)
    {
      v3 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

void sub_10021FE40()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 72);
  if (v2 != 2 && (v2 & 1) != 0 || *(*(v0 + 64) + 16))
  {
    if (v1[4])
    {
      return;
    }

    v3 = v1[2];
    v4 = v1[3];
    type metadata accessor for PreventSuspensionAssertion();
    swift_allocObject();

    v1[4] = sub_1000E13E0(0xD000000000000011, 0x8000000100294FD0, v3, v4);
  }

  else
  {
    v1[4] = 0;
  }
}

void sub_10021FF1C(char a1)
{
  v3 = *(v1 + 72);
  if (v3 == 2 || (v3 & 1) == 0) && (a1 & 1) != 0 && ((sub_100071A54(2, *(v1 + 64)) & 1) != 0 || (sub_100071A54(3, *(v1 + 64))))
  {
    PassthroughSubject.send(_:)();
  }

  *(v1 + 72) = a1 & 1;
  sub_10021FE40();
}

void sub_10021FFA8()
{
  v1 = v0;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = *(*(Strong + 64) + 96);

    swift_unknownObjectRelease();
    v4 = *(*(v3 + 48) + 136);

    v5 = OBJC_IVAR____TtC8SOSBuddy27SessionUserAttentionTracker__everSeenConnectedInCone;
    v6 = *(v1 + OBJC_IVAR____TtC8SOSBuddy27SessionUserAttentionTracker__everSeenConnectedInCone);
    if ((v6 == 2 || (v6 & 1) == 0) && !v4)
    {
      if (qword_100353A28 != -1)
      {
        swift_once();
      }

      v7 = type metadata accessor for Logger();
      sub_10000F53C(v7, qword_100381CC8);
      v8 = Logger.logObject.getter();
      v9 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v8, v9))
      {
        v10 = swift_slowAlloc();
        *v10 = 0;
        _os_log_impl(&_mh_execute_header, v8, v9, "First time user is connected and oriented, CA banner is less sticky now", v10, 2u);
      }

      v4 = 0;
      *(v1 + v5) = 1;
    }
  }

  else
  {
    v4 = 9;
  }

  if (*(v1 + 75) > 1u)
  {
    goto LABEL_14;
  }

  if (v4 == 2)
  {
    *(v1 + 75) = 2;
  }

  else
  {
    if (v4 == 9)
    {
LABEL_14:
      *(v1 + 75) = v4;
      goto LABEL_27;
    }

    *(v1 + 75) = v4;
    if (v4 != 5)
    {
      goto LABEL_27;
    }
  }

  v11 = sub_100234000(&off_1003234F8);
  aBlock[0] = v11;
  v12 = *(v1 + 76);
  if (v12 != 2 && (v12 & 1) != 0)
  {

    if (sub_10024EEA4())
    {
    }

    else
    {
      sub_1000FCB54(&v34, 4);

      v11 = aBlock[0];
    }
  }

  sub_10021FB28(v11, 0);

  if (qword_100353A28 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_10000F53C(v13, qword_100381CC8);

  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    aBlock[0] = v17;
    *v16 = 136446210;
    sub_100222FB4();

    v18 = Set.description.getter();
    v20 = v19;

    v21 = sub_10017C9E8(v18, v20, aBlock);

    *(v16 + 4) = v21;
    _os_log_impl(&_mh_execute_header, v14, v15, "onConnectivityModelDidChange userActionRequired: assertions, %{public}s", v16, 0xCu);
    sub_100008964(v17);
  }

LABEL_27:
  if ((sub_10024EEA4() & 1) != 0 && (sub_100071A54(1, *(v1 + 64)) & 1) != 0 && (sub_10024EACC() & 1) == 0)
  {
    v24 = OBJC_IVAR____TtC8SOSBuddy27SessionUserAttentionTracker__explorerConnectedTimer;
    if (!*(v1 + OBJC_IVAR____TtC8SOSBuddy27SessionUserAttentionTracker__explorerConnectedTimer))
    {
      if (qword_100353A28 != -1)
      {
        swift_once();
      }

      v25 = type metadata accessor for Logger();
      sub_10000F53C(v25, qword_100381CC8);
      v26 = Logger.logObject.getter();
      v27 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        *v28 = 0;
        _os_log_impl(&_mh_execute_header, v26, v27, "Dismissing CA banner cause connection assistance is not required anymore, starting a convenience timer", v28, 2u);
      }

      v29 = objc_opt_self();
      v30 = swift_allocObject();
      swift_weakInit();
      aBlock[4] = sub_100223008;
      aBlock[5] = v30;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_10008137C;
      aBlock[3] = &unk_100339378;
      v31 = _Block_copy(aBlock);

      v32 = [v29 scheduledTimerWithTimeInterval:0 repeats:v31 block:3.0];
      _Block_release(v31);
      v33 = *(v1 + v24);
      *(v1 + v24) = v32;
    }
  }

  else
  {
    v22 = OBJC_IVAR____TtC8SOSBuddy27SessionUserAttentionTracker__explorerConnectedTimer;
    [*(v1 + OBJC_IVAR____TtC8SOSBuddy27SessionUserAttentionTracker__explorerConnectedTimer) invalidate];
    v23 = *(v1 + v22);
    *(v1 + v22) = 0;
  }
}

uint64_t sub_100220518()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_100220570();
  }

  return result;
}

uint64_t sub_100220570()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC8SOSBuddy27SessionUserAttentionTracker__explorerConnectedTimer;
  [*(v1 + OBJC_IVAR____TtC8SOSBuddy27SessionUserAttentionTracker__explorerConnectedTimer) invalidate];
  v3 = *(v1 + v2);
  *(v1 + v2) = 0;

  result = sub_10024EEA4();
  if (result)
  {
    result = sub_100071A54(1, *(v1 + 64));
    if (result)
    {
      result = sub_10024EACC();
      if ((result & 1) == 0)
      {
        if (qword_100353A28 != -1)
        {
          swift_once();
        }

        v5 = type metadata accessor for Logger();
        sub_10000F53C(v5, qword_100381CC8);
        v6 = Logger.logObject.getter();
        v7 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v6, v7))
        {
          v8 = swift_slowAlloc();
          *v8 = 0;
          _os_log_impl(&_mh_execute_header, v6, v7, "Dismissing CA banner cause connection assistance is not required anymore", v8, 2u);
        }

        v9 = sub_100234000(&off_100323C50);
        sub_10021FB28(0, v9);

        sub_1000040A8(&unk_100365610);
        sub_100009274(&qword_10035CF00, &unk_100365610);
        return Subject<>.send()();
      }
    }
  }

  return result;
}

uint64_t sub_100220718(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 80);
  v5 = OBJC_IVAR____TtC8SOSBuddy13GuidanceModel__suggestedActions;
  if (!v4 || (result = sub_100204870(v4, *(a1 + OBJC_IVAR____TtC8SOSBuddy13GuidanceModel__suggestedActions)), (result & 1) == 0))
  {
    *(v2 + 80) = *(a1 + v5);

    result = sub_10022082C(a1, v2);
    v7 = result;
    v8 = *(v2 + 88);
    if (v8 != 2 && (v8 & 1) == 0 && (result & 1) != 0)
    {
      v9 = sub_100234000(&off_100323548);
      v12 = v9;
      v10 = *(v2 + 76);
      if (v10 != 2 && (v10 & 1) != 0)
      {

        if (sub_10024EEA4())
        {
        }

        else
        {
          sub_1000FCB54(&v11, 4);

          v9 = v12;
        }
      }

      sub_10021FB28(v9, 0);
    }

    *(v2 + 88) = v7 & 1;
  }

  return result;
}

uint64_t sub_10022082C(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC8SOSBuddy13GuidanceModel__suggestedActions;
  v5 = *(a1 + OBJC_IVAR____TtC8SOSBuddy13GuidanceModel__suggestedActions);
  v6 = sub_100234014(&off_100323520);
  LOBYTE(v5) = sub_100204870(v5, v6);

  if ((v5 & 1) != 0 || !*(*(a1 + v4) + 16))
  {
LABEL_13:
    v12 = 0;
    return v12 & 1;
  }

  if (sub_10024EEA4())
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    v8 = Strong;
    if (Strong)
    {
      v9 = *(*(Strong + 64) + 72);

      swift_unknownObjectRelease();
      v10 = *(*(v9 + 56) + 144);

      v11 = *(a2 + 96);
      if (*(a2 + 104))
      {
        v12 = 1;
LABEL_11:
        *(a2 + 96) = v10;
        *(a2 + 104) = v8 == 0;
        sub_10021F7D8(v11, v12);
        v13 = swift_unknownObjectWeakLoadStrong();
        if (v13)
        {
          v14 = *(*(v13 + 64) + 72);

          swift_unknownObjectRelease();
          v15 = *(*(v14 + 56) + 136);

          if (v15 != 2)
          {
            v12 = v15 ^ 1;
            return v12 & 1;
          }
        }

        goto LABEL_13;
      }

      v12 = 0;
      if (v11 != v10)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v12 = 0;
      if ((*(a2 + 104) & 1) == 0)
      {
        v10 = 0;
        v11 = *(a2 + 96);
        goto LABEL_11;
      }
    }
  }

  else
  {
    v12 = 1;
  }

  return v12 & 1;
}

uint64_t sub_100220988(char a1)
{
  if (a1 != 2 && (a1 & 1) != 0)
  {
    goto LABEL_13;
  }

  if (!*(*(v1 + 64) + 16))
  {
    v2 = a1;
    v3 = v1;
    if (qword_100353A28 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_10000F53C(v4, qword_100381CC8);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "REVIEW THIS USE CASE (not user initiated and no assertions held). Forcing currentState for now.", v7, 2u);
    }

    v1 = v3;
    a1 = v2;
  }

  if ((a1 == 2 || (a1 & 1) == 0) && *(*(v1 + 64) + 16))
  {
    v8 = &_swiftEmptySetSingleton;
  }

  else
  {
LABEL_13:
    v8 = sub_100234000(&off_1003233B8);
  }

  v12 = v8;
  v9 = *(v1 + 76);
  if (v9 != 2 && (v9 & 1) != 0)
  {

    if (sub_10024EEA4())
    {
    }

    else
    {
      sub_1000FCB54(&v11, 4);

      v8 = v12;
    }
  }

  sub_10021FB28(v8, 0);
}

void sub_100220B48(char a1)
{
  if (a1 != 2 && (a1 & 1) == 0)
  {
    v2 = &_swiftEmptySetSingleton;
    v14 = &_swiftEmptySetSingleton;
    v3 = *(v1 + 76);
    if (v3 != 2 && (v3 & 1) != 0 && (sub_10024EEA4() & 1) == 0)
    {
      sub_1000FCB54(&v13, 4);
      v2 = v14;
    }

    if (v2[2])
    {
      sub_10021FB28(v2, 0);

      if (qword_100353A28 != -1)
      {
        swift_once();
      }

      v4 = type metadata accessor for Logger();
      sub_10000F53C(v4, qword_100381CC8);

      oslog = Logger.logObject.getter();
      v5 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(oslog, v5))
      {
        v6 = swift_slowAlloc();
        v7 = swift_slowAlloc();
        v14 = v7;
        *v6 = 136446210;
        sub_100222FB4();

        v8 = Set.description.getter();
        v10 = v9;

        v11 = sub_10017C9E8(v8, v10, &v14);

        *(v6 + 4) = v11;
        _os_log_impl(&_mh_execute_header, oslog, v5, "onScreenLockedDidChange: assertions: %{public}s", v6, 0xCu);
        sub_100008964(v7);
      }

      else
      {
      }
    }

    else
    {
    }
  }
}

void sub_100220D94()
{
  v1 = *(v0 + 105);
  if (v1 == 2 || (v1 & 1) == 0)
  {
    if (sub_10024EACC())
    {
      v2 = sub_100234000(&off_100323408);
    }

    else
    {
      v2 = &_swiftEmptySetSingleton;
    }

    v14 = v2;
    v3 = *(v0 + 76);
    if (v3 != 2 && (v3 & 1) != 0)
    {

      if (sub_10024EEA4())
      {
      }

      else
      {
        sub_1000FCB54(&v13, 4);

        v2 = v14;
      }
    }

    sub_10021FB28(v2, 0);

    if (qword_100353A28 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_10000F53C(v4, qword_100381CC8);

    oslog = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(oslog, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v14 = v7;
      *v6 = 136446210;
      sub_100222FB4();

      v8 = Set.description.getter();
      v10 = v9;

      v11 = sub_10017C9E8(v8, v10, &v14);

      *(v6 + 4) = v11;
      _os_log_impl(&_mh_execute_header, oslog, v5, "onGuidanceUIRequiredDidChange: assertions: %{public}s", v6, 0xCu);
      sub_100008964(v7);
    }

    else
    {
    }
  }
}

void sub_100220FE8(uint64_t a1)
{
  v2 = v1;
  v3 = *(a1 + 17);
  v4 = v1[74];
  v5 = *(a1 + 8);
  if (v5)
  {
    v6 = *(a1 + 32);
    v7 = *(a1 + 65);
    v8 = sub_100071A54(0, v6);
    if (v4 != 2 && ((v8 & v7 ^ v4) & 1) == 0)
    {
      goto LABEL_20;
    }

    v9 = sub_100071A54(0, v6);
    v10 = (v9 ^ 1) & v7;
    if ((v9 ^ 1) & 1) == 0 && (v7)
    {
      v11 = sub_100234000(&off_1003232A0);
      v48 = v11;
      v12 = v2[76];
      if (v12 != 2 && (v12 & 1) != 0)
      {

        if (sub_10024EEA4())
        {
        }

        else
        {
          sub_1000FCB54(&v47, 4);

          v11 = v48;
        }
      }

      sub_10021FB28(v11, 0);

      if (qword_100353A28 != -1)
      {
        swift_once();
      }

      v14 = type metadata accessor for Logger();
      sub_10000F53C(v14, qword_100381CC8);

      v15 = Logger.logObject.getter();
      v16 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        v46 = swift_slowAlloc();
        v48 = v46;
        *v17 = 136446210;
        sub_100222FB4();

        v18 = Set.description.getter();
        v20 = v19;

        v21 = sub_10017C9E8(v18, v20, &v48);

        *(v17 + 4) = v21;
        _os_log_impl(&_mh_execute_header, v15, v16, "isEmergencyCallAvailable changed to true: assertions, %{public}s", v17, 0xCu);
        sub_100008964(v46);
      }

      v10 = 1;
    }

    v13 = sub_100071A54(0, v6) & v10 & 1;
  }

  else
  {
    if (v4 == 2)
    {
      goto LABEL_20;
    }

    v13 = 2;
  }

  v2[74] = v13;
LABEL_20:
  v22 = v2[73];
  if (v5)
  {
    v23 = v3;
  }

  else
  {
    v23 = 3;
  }

  if (v22 != 3)
  {
    if (v22 == v23)
    {
      return;
    }

    if (v5)
    {
      if (v22 == 2)
      {
        if (v3 == 1)
        {
          v35 = sub_100234000(&off_100323318);
          v36 = sub_100234000(&off_100323340);
          sub_10021FB28(v35, v36);

          if (qword_100353A28 != -1)
          {
            swift_once();
          }

          v37 = type metadata accessor for Logger();
          sub_10000F53C(v37, qword_100381CC8);

          v38 = Logger.logObject.getter();
          v39 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v38, v39))
          {
            v40 = swift_slowAlloc();
            v41 = swift_slowAlloc();
            v48 = v41;
            *v40 = 136446210;
            sub_100222FB4();

            v42 = Set.description.getter();
            v44 = v43;

            v45 = sub_10017C9E8(v42, v44, &v48);

            *(v40 + 4) = v45;
            _os_log_impl(&_mh_execute_header, v38, v39, "satelliteDidRecover: assertions, %{public}s", v40, 0xCu);
            sub_100008964(v41);
          }

          LOBYTE(v3) = 1;
        }
      }

      else if (v22 == 1 && v3 == 2)
      {
        v24 = sub_100234000(&off_1003232C8);
        v25 = sub_100234000(&off_1003232F0);
        sub_10021FB28(v24, v25);

        if (qword_100353A28 != -1)
        {
          swift_once();
        }

        v26 = type metadata accessor for Logger();
        sub_10000F53C(v26, qword_100381CC8);

        v27 = Logger.logObject.getter();
        v28 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v27, v28))
        {
          v29 = swift_slowAlloc();
          v30 = swift_slowAlloc();
          v48 = v30;
          *v29 = 136446210;
          sub_100222FB4();

          v31 = Set.description.getter();
          v33 = v32;

          v34 = sub_10017C9E8(v31, v33, &v48);

          *(v29 + 4) = v34;
          _os_log_impl(&_mh_execute_header, v27, v28, "internetDidRecover: assertions, %{public}s", v29, 0xCu);
          sub_100008964(v30);
        }

        LOBYTE(v3) = 2;
      }
    }

    else
    {
      LOBYTE(v3) = 3;
    }

    goto LABEL_43;
  }

  if (v23 != 3)
  {
LABEL_43:
    v2[73] = v3;
  }
}

uint64_t sub_1002215FC()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v35 = *(v2 - 8);
  v36 = v2;
  __chkstk_darwin(v2);
  v32 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for DispatchQoS();
  v33 = *(v4 - 8);
  v34 = v4;
  __chkstk_darwin(v4);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchTime();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v29 - v12;
  v14 = sub_1000040A8(&qword_100356518);
  __chkstk_darwin(v14 - 8);
  v16 = &v29 - v15;
  if (qword_100353A28 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  sub_10000F53C(v17, qword_100381CC8);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&_mh_execute_header, v18, v19, "mainSceneIsExpectedToBeForegroundSoon", v20, 2u);
  }

  static DispatchTime.now()();
  (*(v8 + 56))(v16, 0, 1, v7);
  v21 = OBJC_IVAR____TtC8SOSBuddy27SessionUserAttentionTracker__lastMainSceneIsExpectedToBeForegoundSoonAt;
  swift_beginAccess();
  sub_10002B4A0(v16, v1 + v21);
  swift_endAccess();
  sub_10000F574();
  v22 = static OS_dispatch_queue.main.getter();
  static DispatchTime.now()();
  + infix(_:_:)();
  v23 = *(v8 + 8);
  v30 = v7;
  v31 = v23;
  v23(v10, v7);
  v24 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = sub_100222414;
  aBlock[5] = v24;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1001D2438;
  aBlock[3] = &unk_100339350;
  v25 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100071864();
  sub_1000040A8(&unk_100355D70);
  sub_100009274(&qword_10035BB50, &unk_100355D70);
  v26 = v32;
  v27 = v36;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
  _Block_release(v25);

  (*(v35 + 8))(v26, v27);
  (*(v33 + 8))(v6, v34);
  return v31(v13, v30);
}

uint64_t sub_100221AFC()
{
  if (qword_100353A28 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_10000F53C(v0, qword_100381CC8);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "mainSceneIsExpectedToBeForegroundSoon timeout expired", v3, 2u);
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {

    sub_1000040A8(&unk_100365610);
    sub_100009274(&qword_10035CF00, &unk_100365610);
    Subject<>.send()();
  }

  return result;
}

uint64_t sub_100221C74()
{
  v1 = sub_1000040A8(&qword_100356518);
  __chkstk_darwin(v1 - 8);
  v3 = &v23 - v2;
  v4 = type metadata accessor for DispatchTime();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v23 - v9;
  v11 = OBJC_IVAR____TtC8SOSBuddy27SessionUserAttentionTracker__lastMainSceneIsExpectedToBeForegoundSoonAt;
  swift_beginAccess();
  sub_1001451C0(v0 + v11, v3);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_10012C414(v3);
    return 0;
  }

  (*(v5 + 32))(v10, v3, v4);
  static DispatchTime.now()();
  v13 = DispatchTime.uptimeNanoseconds.getter();
  if (DispatchTime.uptimeNanoseconds.getter() >= v13)
  {
    v16 = *(v5 + 8);
    v16(v7, v4);
    v18 = 0;
  }

  else
  {
    v14 = DispatchTime.uptimeNanoseconds.getter();
    v15 = DispatchTime.uptimeNanoseconds.getter();
    v16 = *(v5 + 8);
    result = (v16)(v7, v4);
    v17 = v14 - v15;
    if (v14 < v15)
    {
      __break(1u);
      return result;
    }

    if (v17 > 0xEE6B27F)
    {
      v16(v10, v4);
      return 0;
    }

    v18 = v17 / 0xF4240uLL;
  }

  if (qword_100353A28 != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  sub_10000F53C(v19, qword_100381CC8);
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 134349056;
    *(v22 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v20, v21, "Delaying banner, mainSceneIsExpectedToBeForegroundSoon was called %{public}llu ms ago", v22, 0xCu);
  }

  v16(v10, v4);
  return 1;
}

uint64_t sub_100221FB4()
{

  sub_10002B558(v0 + 40);

  sub_10012C414(v0 + OBJC_IVAR____TtC8SOSBuddy27SessionUserAttentionTracker__lastMainSceneIsExpectedToBeForegoundSoonAt);

  return v0;
}

uint64_t sub_100222034()
{
  sub_100221FB4();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SessionUserAttentionTracker()
{
  result = qword_1003689D8;
  if (!qword_1003689D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1002220E0()
{
  sub_10002B388();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

unint64_t sub_1002221F4()
{
  result = qword_100368D10;
  if (!qword_100368D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100368D10);
  }

  return result;
}

uint64_t sub_100222248()
{
  sub_1000040A8(&unk_100365610);
  swift_allocObject();
  *(v0 + 16) = PassthroughSubject.init()();
  sub_1000040A8(&qword_100356508);
  swift_allocObject();
  *(v0 + 24) = PassthroughSubject.init()();
  sub_1000040A8(&unk_100359B30);
  swift_allocObject();
  *(v0 + 32) = PassthroughSubject.init()();
  *(v0 + 48) = 0;
  swift_unknownObjectWeakInit();
  type metadata accessor for PreventSuspension();
  v1 = swift_allocObject();
  v1[3] = 0x80000001002A56A0;
  v1[4] = 0;
  v1[2] = 0xD00000000000001BLL;
  *(v0 + 56) = v1;
  *(v0 + 64) = &_swiftEmptySetSingleton;
  *(v0 + 72) = 151126786;
  *(v0 + 76) = 2;
  *(v0 + 80) = 0;
  *(v0 + 88) = 2;
  *(v0 + 96) = 0;
  *(v0 + 104) = 513;
  v2 = OBJC_IVAR____TtC8SOSBuddy27SessionUserAttentionTracker__lastMainSceneIsExpectedToBeForegoundSoonAt;
  v3 = type metadata accessor for DispatchTime();
  (*(*(v3 - 8) + 56))(v0 + v2, 1, 1, v3);
  *(v0 + OBJC_IVAR____TtC8SOSBuddy27SessionUserAttentionTracker__everSeenConnectedInCone) = 2;
  *(v0 + OBJC_IVAR____TtC8SOSBuddy27SessionUserAttentionTracker__explorerConnectedTimer) = 0;
  *(v0 + OBJC_IVAR____TtC8SOSBuddy27SessionUserAttentionTracker__initialConnectionTimer) = 0;
  return v0;
}

uint64_t sub_1002223DC()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10022241C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100222434(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  Hasher.init(_seed:)();
  String.hash(into:)();
  v6 = Hasher._finalize()();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(v5 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *v2;
  v16 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1000FDAB0();
    v14 = v16;
  }

  v12 = *(*(v14 + 48) + 16 * v8);
  sub_100222988(v8);
  *v2 = v16;
  return v12;
}

uint64_t sub_100222570(uint64_t a1)
{
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) != 0)
  {
    if (v3 < 0)
    {
      v4 = *v1;
    }

    else
    {
      v4 = v3 & 0xFFFFFFFFFFFFFF8;
    }

    v5 = __CocoaSet.contains(_:)();

    if (v5)
    {
      v6 = sub_100222814(v4, a1);

      return v6;
    }

    return 0;
  }

  Hasher.init(_seed:)();
  v8 = *(a1 + 16);
  v9 = *(a1 + 24);
  String.hash(into:)();
  v10 = Hasher._finalize()();
  v11 = -1 << *(v3 + 32);
  v12 = v10 & ~v11;
  if (((*(v3 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
  {
    return 0;
  }

  v13 = ~v11;
  while (1)
  {
    v14 = *(*(v3 + 48) + 8 * v12);
    v15 = *(v14 + 16) == v8 && *(v14 + 24) == v9;
    if (v15 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }

    v12 = (v12 + 1) & v13;
    if (((*(v3 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v17 = *v1;
  v19 = *v1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1000FDC0C();
    v17 = v19;
  }

  v18 = *(*(v17 + 48) + 8 * v12);
  sub_100222B4C(v12);
  result = v18;
  *v1 = v19;
  return result;
}

uint64_t sub_10022270C(unsigned __int8 a1)
{
  v3 = *v1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  v4 = Hasher._finalize()();
  v5 = -1 << *(v3 + 32);
  v6 = v4 & ~v5;
  if (((*(v3 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
    return 9;
  }

  v7 = ~v5;
  while (*(*(v3 + 48) + v6) != a1)
  {
    v6 = (v6 + 1) & v7;
    if (((*(v3 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
    {
      return 9;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *v1;
  v12 = *v1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1000FDD5C();
    v10 = v12;
  }

  v11 = *(*(v10 + 48) + v6);
  sub_100222D18(v6);
  result = v11;
  *v1 = v12;
  return result;
}

uint64_t sub_100222814(uint64_t a1, uint64_t a2)
{
  v3 = v2;

  v5 = __CocoaSet.count.getter();
  v6 = swift_unknownObjectRetain();
  v7 = sub_1000FCCAC(v6, v5);
  v19 = v7;
  Hasher.init(_seed:)();
  v8 = *(a2 + 16);
  v9 = *(a2 + 24);

  String.hash(into:)();
  v10 = Hasher._finalize()();
  v11 = -1 << *(v7 + 32);
  v12 = v10 & ~v11;
  if ((*(v7 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v11;
    while (1)
    {
      v14 = *(*(v7 + 48) + 8 * v12);
      v15 = *(v14 + 16) == v8 && *(v14 + 24) == v9;
      if (v15 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v12 = (v12 + 1) & v13;
      if (((*(v7 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
      {
        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:

    __break(1u);
  }

  v16 = *(*(v7 + 48) + 8 * v12);
  sub_100222B4C(v12);
  v17 = v8 == *(v16 + 16) && v9 == *(v16 + 24);
  if (v17 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) != 0))
  {
    *v3 = v19;
    return v16;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_100222988(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = _HashTable.previousHole(before:)();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        Hasher.init(_seed:)();

        String.hash(into:)();
        v10 = Hasher._finalize()();

        v11 = v10 & v7;
        if (v2 >= v9)
        {
          if (v11 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v11 >= v9)
        {
          goto LABEL_11;
        }

        if (v2 >= v11)
        {
LABEL_11:
          v12 = *(v3 + 48);
          v13 = (v12 + 16 * v2);
          v14 = (v12 + 16 * v6);
          if (v2 != v6 || v13 >= v14 + 1)
          {
            *v13 = *v14;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v15 = *(v3 + 16);
  v16 = __OFSUB__(v15, 1);
  v17 = v15 - 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v17;
    ++*(v3 + 36);
  }

  return result;
}

unint64_t sub_100222B4C(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = _HashTable.previousHole(before:)();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        Hasher.init(_seed:)();

        String.hash(into:)();
        v10 = Hasher._finalize()();

        v11 = v10 & v7;
        if (v2 >= v9)
        {
          if (v11 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v11 >= v9)
        {
          goto LABEL_11;
        }

        if (v2 >= v11)
        {
LABEL_11:
          v12 = *(v3 + 48);
          v13 = (v12 + 8 * v2);
          v14 = (v12 + 8 * v6);
          if (v2 != v6 || v13 >= v14 + 1)
          {
            *v13 = *v14;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v15 = *(v3 + 16);
  v16 = __OFSUB__(v15, 1);
  v17 = v15 - 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v17;
    ++*(v3 + 36);
  }

  return result;
}

unint64_t sub_100222D18(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = _HashTable.previousHole(before:)();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(*(v3 + 48) + v6);
        Hasher.init(_seed:)();
        Hasher._combine(_:)(v10);
        v11 = Hasher._finalize()() & v7;
        if (v2 >= v9)
        {
          if (v11 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v11 >= v9)
        {
          goto LABEL_11;
        }

        if (v2 >= v11)
        {
LABEL_11:
          v12 = *(v3 + 48);
          v13 = (v12 + v2);
          v14 = (v12 + v6);
          if (v2 != v6 || v13 >= v14 + 1)
          {
            *v13 = *v14;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v15 = *(v3 + 16);
  v16 = __OFSUB__(v15, 1);
  v17 = v15 - 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v17;
    ++*(v3 + 36);
  }

  return result;
}

uint64_t sub_100222EC0(uint64_t result)
{
  if (*(*v1 + 16))
  {
    v2 = result;
    v3 = result + 56;
    v4 = 1 << *(result + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(result + 56);
    v7 = (v4 + 63) >> 6;

    v8 = 0;
    if (v6)
    {
      while (1)
      {
        v9 = v8;
LABEL_10:
        v10 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        result = sub_10022270C(*(*(v2 + 48) + (v10 | (v9 << 6))));
        if (!v6)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        return result;
      }

      if (v9 >= v7)
      {
        break;
      }

      v6 = *(v3 + 8 * v9);
      ++v8;
      if (v6)
      {
        v8 = v9;
        goto LABEL_10;
      }
    }
  }

  return result;
}

unint64_t sub_100222FB4()
{
  result = qword_100368D18;
  if (!qword_100368D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100368D18);
  }

  return result;
}

uint64_t sub_100223018(uint64_t a1)
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

id sub_10022310C()
{
  v1 = OBJC_IVAR____TtC8SOSBuddy28ApplicationActiveStateSource_appForegroundDidChange;
  sub_1000040A8(&unk_100359B30);
  swift_allocObject();
  *&v0[v1] = PassthroughSubject.init()();
  *&v0[OBJC_IVAR____TtC8SOSBuddy28ApplicationActiveStateSource_observers] = _swiftEmptyArrayStorage;
  v18.receiver = v0;
  v18.super_class = type metadata accessor for ApplicationActiveStateSource();
  v2 = objc_msgSendSuper2(&v18, "init");
  v3 = qword_100353A10;
  v4 = v2;
  if (v3 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_10000F53C(v5, qword_100381C80);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v17 = v9;
    *v8 = 136446210;
    v10 = v4;
    v11 = [v10 description];
    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;

    v15 = sub_10017C9E8(v12, v14, &v17);

    *(v8 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v6, v7, "init: %{public}s", v8, 0xCu);
    sub_100008964(v9);
  }

  else
  {
  }

  return v4;
}

id sub_100223338()
{
  if (qword_100353A10 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000F53C(v1, qword_100381C80);
  v2 = v0;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v15 = v6;
    *v5 = 136446210;
    v7 = v2;
    v8 = [v7 description];
    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;

    v12 = sub_10017C9E8(v9, v11, &v15);

    *(v5 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v3, v4, "deinit: %{public}s", v5, 0xCu);
    sub_100008964(v6);
  }

  active = type metadata accessor for ApplicationActiveStateSource();
  v16.receiver = v2;
  v16.super_class = active;
  return objc_msgSendSuper2(&v16, "dealloc");
}

uint64_t sub_100223578()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10000F574();
  *v5 = static OS_dispatch_queue.main.getter();
  (*(v3 + 104))(v5, enum case for DispatchPredicate.onQueue(_:), v2);
  v6 = _dispatchPreconditionTest(_:)();
  (*(v3 + 8))(v5, v2);
  if (v6)
  {
    if (qword_100353A10 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v7 = type metadata accessor for Logger();
  sub_10000F53C(v7, qword_100381C80);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, v9, "ApplicationActiveStateSource::start", v10, 2u);
  }

  v11 = objc_opt_self();
  v12 = [v11 defaultCenter];
  v13 = objc_opt_self();
  v14 = [v13 mainQueue];
  v15 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v29 = sub_100223EC8;
  v30 = v15;
  aBlock = _NSConcreteStackBlock;
  v26 = 1107296256;
  v27 = sub_100223018;
  v28 = &unk_1003393C8;
  v16 = _Block_copy(&aBlock);

  v17 = [v12 addObserverForName:UIApplicationWillEnterForegroundNotification object:0 queue:v14 usingBlock:v16];
  _Block_release(v16);

  v18 = OBJC_IVAR____TtC8SOSBuddy28ApplicationActiveStateSource_observers;
  swift_beginAccess();
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*(v1 + v18) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + v18) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  swift_endAccess();
  v19 = [v11 defaultCenter];
  v20 = [v13 mainQueue];
  v21 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v29 = sub_100223F08;
  v30 = v21;
  aBlock = _NSConcreteStackBlock;
  v26 = 1107296256;
  v27 = sub_100223018;
  v28 = &unk_1003393F0;
  v22 = _Block_copy(&aBlock);

  v23 = [v19 addObserverForName:UIApplicationDidEnterBackgroundNotification object:0 queue:v20 usingBlock:v22];
  _Block_release(v22);

  swift_beginAccess();
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*(v1 + v18) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + v18) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  swift_endAccess();
  return 1;
}

uint64_t sub_100223A64(uint64_t a1, uint64_t a2, const char *a3)
{
  if (qword_100353A10 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000F53C(v4, qword_100381C80);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, a3, v7, 2u);
  }

  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v9 = result;

    PassthroughSubject.send(_:)();
  }

  return result;
}

uint64_t sub_100223BA4()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10000F574();
  *v5 = static OS_dispatch_queue.main.getter();
  (*(v3 + 104))(v5, enum case for DispatchPredicate.onQueue(_:), v2);
  v6 = _dispatchPreconditionTest(_:)();
  (*(v3 + 8))(v5, v2);
  if (v6)
  {
    if (qword_100353A10 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v7 = type metadata accessor for Logger();
  sub_10000F53C(v7, qword_100381C80);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, v9, "ApplicationActiveStateSource::stop", v10, 2u);
  }

  v11 = OBJC_IVAR____TtC8SOSBuddy28ApplicationActiveStateSource_observers;
  swift_beginAccess();
  v12 = *(v1 + v11);
  if (!(v12 >> 62))
  {
    v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v13)
    {
      goto LABEL_7;
    }

LABEL_14:
    *(v1 + v11) = _swiftEmptyArrayStorage;
  }

  v13 = _CocoaArrayWrapper.endIndex.getter();
  if (!v13)
  {
    goto LABEL_14;
  }

LABEL_7:
  result = objc_opt_self();
  if (v13 >= 1)
  {
    v15 = result;
    v19 = v1;

    v16 = 0;
    do
    {
      if ((v12 & 0xC000000000000001) != 0)
      {
        v17 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v17 = *(v12 + 8 * v16 + 32);
        swift_unknownObjectRetain();
      }

      ++v16;
      v18 = [v15 defaultCenter];
      [v18 removeObserver:v17];
      swift_unknownObjectRelease();
    }

    while (v13 != v16);

    v1 = v19;
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

uint64_t sub_100223E90()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100223EF0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100223F64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v92 = a2;
  v110 = a4;
  v6 = sub_1000040A8(&qword_100368D58);
  v108 = *(v6 - 8);
  v109 = v6;
  __chkstk_darwin(v6);
  v105 = (&v84 - v7);
  v8 = sub_1000040A8(&qword_100365470);
  v102 = *(v8 - 8);
  v103 = v8;
  __chkstk_darwin(v8);
  v93 = (&v84 - v9);
  v10 = sub_1000040A8(&qword_100365478);
  __chkstk_darwin(v10 - 8);
  v104 = &v84 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v106 = &v84 - v13;
  v101 = type metadata accessor for OpacityTransition();
  v98 = *(v101 - 8);
  __chkstk_darwin(v101);
  v95 = &v84 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1000040A8(&qword_100357818);
  v99 = *(v15 - 8);
  v100 = v15;
  __chkstk_darwin(v15);
  v96 = &v84 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v97 = &v84 - v18;
  v19 = type metadata accessor for Font.Leading();
  v94 = *(v19 - 8);
  __chkstk_darwin(v19);
  v21 = &v84 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1000040A8(&qword_100368D60);
  __chkstk_darwin(v22 - 8);
  v107 = &v84 - v23;
  if (a3)
  {
    v24 = a3[9];
    v25 = a3[10];
    sub_1000088DC(a3 + 6, v24);
    v26 = *(v25 + 16);

    v26(v151, v24, v25);
    if (a1)
    {
      v27 = *(a1 + 48);
      if (v27)
      {
        v28 = *(v27 + 24);
        if ((v28 & 0x2000000000000000) == 0)
        {
          v29 = *(v27 + 16);
          if ((v29 & 0xFFFFFFFFFFFFLL) == 0)
          {
            goto LABEL_17;
          }

LABEL_9:
          v85._countAndFlagsBits = v29;

          v86 = a1;
          sub_1001DE260();
          if (v31)
          {
            v32 = v30;
          }

          else
          {
            v32 = 0;
          }

          v84 = v32;
          v33 = 0xE000000000000000;
          if (v31)
          {
            v33 = v31;
          }

          v88 = v33;
          v118[0] = v29;
          v118[1] = v28;
          v85._object = v28;
          sub_100031770();

          v34 = Text.init<A>(_:)();
          v92 = v35;
          v37 = v36;
          static Font.body.getter();
          static Font.Weight.medium.getter();
          Font.weight(_:)();

          v38 = v94;
          (*(v94 + 104))(v21, enum case for Font.Leading.tight(_:), v19);
          Font.leading(_:)();

          (*(v38 + 8))(v21, v19);
          v39 = v37;
          v40 = v92;
          v41 = Text.font(_:)();
          v43 = v42;
          v45 = v44;
          v91 = v46;

          sub_1000317C4(v34, v40, v39 & 1);

          v47 = a3[9];
          v48 = a3[10];
          sub_1000088DC(a3 + 6, v47);
          (*(v48 + 80))(v47, v48);
          v89 = Text.foregroundColor(_:)();
          v94 = v49;
          LOBYTE(v47) = v50;
          v87 = v51;
          sub_1000317C4(v41, v43, v45 & 1);

          KeyPath = swift_getKeyPath();
          v92 = swift_getKeyPath();
          v52 = v47 & 1;
          LOBYTE(v118[0]) = v47 & 1;
          LOBYTE(v111) = 0;
          v91 = swift_getKeyPath();
          static Alignment.leading.getter();
          _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
          v53 = v95;
          OpacityTransition.init()();
          static Animation.easeInOut.getter();
          v54 = sub_1001CADA4(&qword_100356B88, &type metadata accessor for OpacityTransition);
          v55 = v97;
          v56 = v101;
          Transition.animation(_:)();

          (*(v98 + 8))(v53, v56);
          v58 = v99;
          v57 = v100;
          (*(v99 + 16))(v96, v55, v100);
          v118[0] = v56;
          v118[1] = v54;
          swift_getOpaqueTypeConformance2();
          v101 = AnyTransition.init<A>(_:)();
          (*(v58 + 8))(v55, v57);
          strcpy(v118, "GuidanceText-");
          HIWORD(v118[1]) = -4864;
          String.append(_:)(v85);

          v59 = v118[0];
          v100 = v118[1];
          v60 = *(v86 + 48);

          if (v60)
          {
            v61 = *(v60 + 72);
            if (v61)
            {

LABEL_19:
              v63 = static Alignment.top.getter();
              v64 = v93;
              *v93 = v63;
              *(v64 + 8) = v65;
              v66 = sub_1000040A8(&qword_100365498);
              sub_100224BC0(v61, v151, v84, v88, v64 + *(v66 + 44));

              v67 = v106;
              sub_10000CF4C(v64, v106, &qword_100365470);
              v68 = 0;
LABEL_21:
              (*(v102 + 56))(v67, v68, 1, v103);
              v69 = v104;
              sub_100006C20(v67, v104, &qword_100365478);
              *(&v116[3] + 8) = v144;
              *(&v116[4] + 8) = v145;
              *(&v116[5] + 8) = v146;
              *(&v116[6] + 8) = v147;
              *(v116 + 8) = v141;
              v70 = v89;
              *&v111 = v89;
              *(&v111 + 1) = v94;
              LOBYTE(v112) = v52;
              *(&v112 + 1) = *v149;
              DWORD1(v112) = *&v149[3];
              v71 = v87;
              *(&v112 + 1) = v87;
              *&v113 = KeyPath;
              *(&v113 + 1) = 3;
              LOBYTE(v114) = 0;
              *(&v114 + 1) = *v148;
              DWORD1(v114) = *&v148[3];
              *(&v114 + 1) = v92;
              LOBYTE(v115) = 0;
              DWORD1(v115) = *&v150[3];
              *(&v115 + 1) = *v150;
              LODWORD(v103) = v52;
              *(&v115 + 1) = v91;
              *&v116[0] = 0x3FE0000000000000;
              *(&v116[1] + 8) = v142;
              *(&v116[2] + 8) = v143;
              v72 = v100;
              *(&v116[7] + 1) = v101;
              *&v117 = v59;
              v73 = v59;
              *(&v117 + 1) = v100;
              v74 = v112;
              v75 = v105;
              *v105 = v111;
              v75[1] = v74;
              v76 = v116[0];
              v75[4] = v115;
              v75[5] = v76;
              v77 = v114;
              v75[2] = v113;
              v75[3] = v77;
              v78 = v116[4];
              v75[8] = v116[3];
              v75[9] = v78;
              v79 = v116[2];
              v75[6] = v116[1];
              v75[7] = v79;
              v80 = v116[6];
              v75[10] = v116[5];
              v75[11] = v80;
              v81 = v117;
              v75[12] = v116[7];
              v75[13] = v81;
              v82 = sub_1000040A8(&qword_100368D68);
              sub_100006C20(v69, v75 + *(v82 + 48), &qword_100365478);
              sub_100006C20(&v111, v118, &qword_100368D70);
              sub_100008FA0(v106, &qword_100365478);
              sub_100008FA0(v69, &qword_100365478);
              v134 = v144;
              v135 = v145;
              v136 = v146;
              v137 = v147;
              v131 = v141;
              v132 = v142;
              v118[0] = v70;
              v118[1] = v94;
              v119 = v103;
              *v120 = *v149;
              *&v120[3] = *&v149[3];
              v121 = v71;
              v122 = KeyPath;
              v123 = 3;
              v124 = 0;
              *v125 = *v148;
              *&v125[3] = *&v148[3];
              v126 = v92;
              v127 = 0;
              *&v128[3] = *&v150[3];
              *v128 = *v150;
              v129 = v91;
              v130 = 0x3FE0000000000000;
              v133 = v143;
              v138 = v101;
              v139 = v73;
              v140 = v72;
              sub_100008FA0(v118, &qword_100368D70);
              v62 = v107;
              sub_10000CF4C(v75, v107, &qword_100368D58);
              (*(v108 + 56))(v62, 0, 1, v109);
              goto LABEL_22;
            }

            v61 = sub_10020327C();

            if (v61)
            {
              goto LABEL_19;
            }
          }

          v68 = 1;
          v67 = v106;
          goto LABEL_21;
        }

        if ((v28 & 0xF00000000000000) != 0)
        {
          v29 = *(v27 + 16);
          goto LABEL_9;
        }
      }

LABEL_17:

      v62 = v107;
      (*(v108 + 56))(v107, 1, 1, v109);
LABEL_22:
      sub_10000CF4C(v62, v110, &qword_100368D60);
      return sub_100008964(v151);
    }
  }

  else
  {
    type metadata accessor for UIMetrics();
    sub_1001CADA4(&qword_100354D40, type metadata accessor for UIMetrics);
    EnvironmentObject.error()();
    __break(1u);
  }

  type metadata accessor for GuidanceMessagesModel();
  sub_1001CADA4(&qword_100357820, type metadata accessor for GuidanceMessagesModel);
  result = EnvironmentObject.error()();
  __break(1u);
  return result;
}

uint64_t sub_100224BC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X8>)
{
  v80._countAndFlagsBits = a3;
  v80._object = a4;
  v77 = a5;
  v76 = type metadata accessor for OpacityTransition();
  v73 = *(v76 - 8);
  __chkstk_darwin(v76);
  v72 = &v63[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_1000040A8(&qword_100357818);
  v74 = *(v8 - 8);
  v75 = v8;
  __chkstk_darwin(v8);
  v70 = &v63[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v10);
  v71 = &v63[-v11];
  v79 = type metadata accessor for Font.Leading();
  v12 = *(v79 - 8);
  __chkstk_darwin(v79);
  v14 = &v63[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = sub_1000040A8(&qword_1003654A0);
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v63[-v17];
  v19 = sub_1000040A8(&qword_1003654A8);
  __chkstk_darwin(v19 - 8);
  v81 = &v63[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v21);
  v82 = &v63[-v22];
  if (*(a1 + 16) < 2uLL)
  {
    (*(v16 + 56))(v82, 1, 1, v15);
  }

  else
  {
    v83[0] = a1;
    KeyPath = swift_getKeyPath();
    sub_1000089B0(a2, &v84);
    v23 = swift_allocObject();
    sub_100008A18(&v84._countAndFlagsBits, v23 + 16);

    v69 = sub_1000040A8(&qword_100355E30);
    sub_1000040A8(&qword_1003654B8);
    sub_100009274(&qword_100357870, &qword_100355E30);
    sub_1001CABD0();
    ForEach<>.init(_:id:content:)();
    v24 = v82;
    (*(v16 + 32))(v82, v18, v15);
    (*(v16 + 56))(v24, 0, 1, v15);
  }

  v84 = v80;
  sub_100031770();

  v25 = Text.init<A>(_:)();
  v27 = v26;
  v29 = v28;
  static Font.subheadline.getter();
  static Font.Weight.medium.getter();
  Font.weight(_:)();

  v30 = v79;
  (*(v12 + 104))(v14, enum case for Font.Leading.tight(_:), v79);
  Font.leading(_:)();

  (*(v12 + 8))(v14, v30);
  v31 = Text.font(_:)();
  v33 = v32;
  LOBYTE(v30) = v34;

  sub_1000317C4(v25, v27, v29 & 1);

  v35 = [objc_opt_self() secondaryLabelColor];
  Color.init(_:)();
  KeyPath = Text.foregroundColor(_:)();
  v79 = v36;
  v69 = v37;
  LOBYTE(v25) = v38;

  sub_1000317C4(v31, v33, v30 & 1);

  v39 = swift_getKeyPath();
  v65 = v39;
  v68 = swift_getKeyPath();
  LOBYTE(v84._countAndFlagsBits) = v25 & 1;
  LOBYTE(v33) = v25 & 1;
  v64 = v25 & 1;
  LOBYTE(v83[0]) = 0;
  v67 = swift_getKeyPath();
  v66 = static Edge.Set.top.getter();
  EdgeInsets.init(_all:)();
  v41 = v40;
  v43 = v42;
  v45 = v44;
  v47 = v46;
  v117 = 0;
  static Alignment.leading.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  *(&v119[3] + 7) = *(&v119[10] + 8);
  *(&v119[4] + 7) = *(&v119[11] + 8);
  *(&v119[5] + 7) = *(&v119[12] + 8);
  *(&v119[6] + 7) = *(&v119[13] + 8);
  *(v119 + 7) = *(&v119[7] + 8);
  *(&v119[1] + 7) = *(&v119[8] + 8);
  *(&v119[2] + 7) = *(&v119[9] + 8);
  v48 = v72;
  OpacityTransition.init()();
  static Animation.easeInOut.getter();
  v49 = sub_1001CADA4(&qword_100356B88, &type metadata accessor for OpacityTransition);
  v50 = v71;
  v51 = v76;
  Transition.animation(_:)();

  (*(v73 + 8))(v48, v51);
  v53 = v74;
  v52 = v75;
  (*(v74 + 16))(v70, v50, v75);
  v84._countAndFlagsBits = v51;
  v84._object = v49;
  swift_getOpaqueTypeConformance2();
  v76 = AnyTransition.init<A>(_:)();
  (*(v53 + 8))(v50, v52);
  v84._countAndFlagsBits = 0xD000000000000010;
  v84._object = 0x8000000100298BF0;
  String.append(_:)(v80);
  v80._countAndFlagsBits = v84._object;
  v80._object = v84._countAndFlagsBits;
  v54 = v81;
  sub_100006C20(v82, v81, &qword_1003654A8);
  v55 = v77;
  sub_100006C20(v54, v77, &qword_1003654A8);
  v56 = *(sub_1000040A8(&qword_1003654B0) + 48);
  v57 = v69;
  v83[0] = KeyPath;
  v83[1] = v69;
  LOBYTE(v83[2]) = v33;
  *(&v83[2] + 1) = *v115;
  HIDWORD(v83[2]) = *&v115[3];
  v83[3] = v79;
  v83[4] = v39;
  v83[5] = 3;
  LOBYTE(v83[6]) = 0;
  *(&v83[6] + 1) = *v114;
  HIDWORD(v83[6]) = *&v114[3];
  v59 = v67;
  v58 = v68;
  v83[7] = v68;
  LOBYTE(v83[8]) = 0;
  HIDWORD(v83[8]) = *&v116[3];
  *(&v83[8] + 1) = *v116;
  v83[9] = v67;
  v83[10] = 0x3FE0000000000000;
  LOBYTE(v52) = v66;
  LOBYTE(v83[11]) = v66;
  HIDWORD(v83[11]) = *&v118[3];
  *(&v83[11] + 1) = *v118;
  v83[12] = v41;
  v83[13] = v43;
  v83[14] = v45;
  v83[15] = v47;
  LOBYTE(v83[16]) = 0;
  *(&v83[22] + 1) = v119[3];
  *(&v83[20] + 1) = v119[2];
  *(&v83[18] + 1) = v119[1];
  *(&v83[16] + 1) = v119[0];
  v83[30] = *(&v119[6] + 15);
  *(&v83[28] + 1) = v119[6];
  *(&v83[26] + 1) = v119[5];
  *(&v83[24] + 1) = v119[4];
  v60 = v76;
  v61 = v80;
  v83[31] = v76;
  v83[32] = v80._object;
  v83[33] = v80._countAndFlagsBits;
  memcpy((v55 + v56), v83, 0x110uLL);
  sub_100006C20(v83, &v84, &qword_100365490);
  sub_100008FA0(v82, &qword_1003654A8);
  v84._countAndFlagsBits = KeyPath;
  v84._object = v57;
  v85 = v64;
  *v86 = *v115;
  *&v86[3] = *&v115[3];
  v87 = v79;
  v88 = v65;
  v89 = 3;
  v90 = 0;
  *v91 = *v114;
  *&v91[3] = *&v114[3];
  v92 = v58;
  v93 = 0;
  *&v94[3] = *&v116[3];
  *v94 = *v116;
  v95 = v59;
  v96 = 0x3FE0000000000000;
  v97 = v52;
  *&v98[3] = *&v118[3];
  *v98 = *v118;
  v99 = v41;
  v100 = v43;
  v101 = v45;
  v102 = v47;
  v103 = 0;
  v107 = v119[3];
  v106 = v119[2];
  v105 = v119[1];
  v104 = v119[0];
  *&v110[15] = *(&v119[6] + 15);
  *v110 = v119[6];
  v109 = v119[5];
  v108 = v119[4];
  v111 = v60;
  object = v61._object;
  countAndFlagsBits = v61._countAndFlagsBits;
  sub_100008FA0(&v84, &qword_100365490);
  return sub_100008FA0(v81, &qword_1003654A8);
}

uint64_t sub_100225634@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v35[1] = a2;
  v3 = type metadata accessor for Font.Leading();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *a1;
  v8 = a1[1];
  v37[0] = v7;
  v37[1] = v8;
  sub_100031770();

  v9 = Text.init<A>(_:)();
  v11 = v10;
  v13 = v12;
  v35[0] = v14;
  static Font.subheadline.getter();
  static Font.Weight.medium.getter();
  Font.weight(_:)();

  (*(v4 + 104))(v6, enum case for Font.Leading.tight(_:), v3);
  Font.leading(_:)();

  (*(v4 + 8))(v6, v3);
  v15 = Text.font(_:)();
  v17 = v16;
  v19 = v18;
  v21 = v20;

  sub_1000317C4(v9, v11, v13 & 1);

  KeyPath = swift_getKeyPath();
  v23 = swift_getKeyPath();
  LOBYTE(v37[0]) = v19 & 1;
  LOBYTE(v36[0]) = 0;
  v24 = swift_getKeyPath();
  v25 = static Edge.Set.top.getter();
  EdgeInsets.init(_all:)();
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v38 = 0;
  static Alignment.leading.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  *(&v39[6] + 7) = *&v39[21];
  *(&v39[8] + 7) = *&v39[23];
  *(&v39[10] + 7) = *&v39[25];
  *(&v39[12] + 7) = v40;
  *(v39 + 7) = *&v39[15];
  *(&v39[2] + 7) = *&v39[17];
  *(&v39[4] + 7) = *&v39[19];
  v36[0] = v15;
  v36[1] = v17;
  LOBYTE(v36[2]) = v19 & 1;
  v36[3] = v21;
  v36[4] = KeyPath;
  v36[5] = 3;
  LOBYTE(v36[6]) = 0;
  v36[7] = v23;
  LOBYTE(v36[8]) = 0;
  v36[9] = v24;
  v36[10] = 0x3FE0000000000000;
  LOBYTE(v36[11]) = v25;
  v36[12] = v27;
  v36[13] = v29;
  v36[14] = v31;
  v36[15] = v33;
  LOBYTE(v36[16]) = 0;
  *(&v36[24] + 1) = *&v39[8];
  *(&v36[26] + 1) = *&v39[10];
  *(&v36[28] + 1) = *&v39[12];
  *(&v36[16] + 1) = *v39;
  *(&v36[18] + 1) = *&v39[2];
  *(&v36[20] + 1) = *&v39[4];
  *(&v36[22] + 1) = *&v39[6];
  v36[30] = *(&v40 + 1);
  v36[31] = 0;
  LOBYTE(v36[32]) = 0;
  sub_1000040A8(&qword_1003654D0);
  sub_1001CAC8C();
  View.accessibilityHidden(_:)();
  memcpy(v37, v36, 0x101uLL);
  return sub_100008FA0(v37, &qword_1003654D0);
}

uint64_t sub_1002259EC()
{
  sub_100008964(v0 + 16);

  return _swift_deallocObject(v0, 56, 7);
}

unint64_t sub_100225A30()
{
  result = qword_100368D78;
  if (!qword_100368D78)
  {
    sub_100008CF0(&qword_100368D60);
    sub_100009274(&qword_100368D80, &qword_100368D58);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100368D78);
  }

  return result;
}

uint64_t sub_100225AE0(uint64_t a1, unint64_t a2, unint64_t a3)
{
  if (a1 < 0)
  {
LABEL_73:
    __break(1u);
    goto LABEL_74;
  }

  v3 = a3;
  v4 = a2;
  v5 = a1;
  v55 = 0;
  v56 = 0xE000000000000000;
  v6 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v6 != 2)
    {
      return 0;
    }

    v9 = *(a2 + 16);
    v8 = *(a2 + 24);
    v10 = __OFSUB__(v8, v9);
    v7 = v8 - v9;
    if (!v10)
    {
      goto LABEL_11;
    }

    __break(1u);
  }

  else if (!v6)
  {
    v7 = BYTE6(a3);
    goto LABEL_12;
  }

  if (__OFSUB__(HIDWORD(a2), a2))
  {
LABEL_75:
    __break(1u);
    goto LABEL_76;
  }

  v7 = HIDWORD(a2) - a2;
LABEL_11:
  if (v7 < 0)
  {
LABEL_74:
    __break(1u);
    goto LABEL_75;
  }

LABEL_12:
  if (!v7)
  {
    return 0;
  }

  v11 = 0;
  v46 = a2 >> 32;
  v47 = a2;
  v48 = BYTE6(a3);
  v45 = HIDWORD(a2);
  v12 = __OFSUB__(HIDWORD(a2), a2);
  v33 = v12;
  v32 = HIDWORD(a2) - a2;
  v43 = a2 >> 16;
  v44 = a2 >> 8;
  v41 = a2 >> 40;
  v42 = a2 >> 24;
  v39 = HIBYTE(a2);
  v40 = HIWORD(a2);
  v37 = a3 >> 16;
  v38 = a3 >> 8;
  v35 = HIDWORD(a3);
  v36 = a3 >> 24;
  v34 = a3 >> 40;
  v50 = a3;
  v51 = a3 >> 62;
  v49 = v7;
  while (2)
  {
    if (v5 >= 1)
    {
      if (v6 <= 1)
      {
        if (!v6)
        {
          if (v11 >= v48)
          {
LABEL_65:
            __break(1u);
            goto LABEL_66;
          }

          LOBYTE(v54._countAndFlagsBits) = v4;
          BYTE1(v54._countAndFlagsBits) = v44;
          BYTE2(v54._countAndFlagsBits) = v43;
          BYTE3(v54._countAndFlagsBits) = v42;
          BYTE4(v54._countAndFlagsBits) = v45;
          BYTE5(v54._countAndFlagsBits) = v41;
          BYTE6(v54._countAndFlagsBits) = v40;
          HIBYTE(v54._countAndFlagsBits) = v39;
          LOBYTE(v54._object) = v3;
          BYTE1(v54._object) = v38;
          BYTE2(v54._object) = v37;
          BYTE3(v54._object) = v36;
          BYTE4(v54._object) = v35;
          BYTE5(v54._object) = v34;
          v13 = *(&v54._countAndFlagsBits + v11);
LABEL_35:
          v20 = 0;
          v53 = v11 + 1;
          v54._countAndFlagsBits = 0;
          if (v5 >= 8)
          {
            v21 = 8;
          }

          else
          {
            v21 = v5;
          }

          v54._object = 0xE000000000000000;
          do
          {
            if (v20 >= v21)
            {
              __break(1u);
LABEL_63:
              __break(1u);
              goto LABEL_64;
            }

            v22 = 7 - v20;
            if ((v22 & 0xFFFFFF00) != 0)
            {
              goto LABEL_63;
            }

            ++v20;
            if (((1 << v22) & v13) == 0 || v22 > 8u)
            {
              v24 = 48;
            }

            else
            {
              v24 = 49;
            }

            v25 = 0xE100000000000000;
            String.append(_:)(*&v24);
          }

          while (v20 != v21);
          String.append(_:)(v54);

          LODWORD(v6) = v51;
          if (v51 <= 1)
          {
            v26 = v48;
            v4 = a2;
            if (v51)
            {
              v26 = v32;
              if (v33)
              {
LABEL_72:
                __break(1u);
                goto LABEL_73;
              }
            }

            goto LABEL_57;
          }

          v4 = a2;
          if (v51 != 2)
          {
            v26 = 0;
            goto LABEL_57;
          }

          v28 = *(a2 + 16);
          v27 = *(a2 + 24);
          v10 = __OFSUB__(v27, v28);
          v26 = v27 - v28;
          if (v10)
          {
LABEL_71:
            __break(1u);
            goto LABEL_72;
          }

LABEL_57:
          v10 = __OFSUB__(v26, 1);
          v29 = v26 - 1;
          if (!v10)
          {
            if (v11 < v29)
            {
              v30._countAndFlagsBits = 32;
              v30._object = 0xE100000000000000;
              String.append(_:)(v30);
            }

            v5 -= v21;
            ++v11;
            v3 = v50;
            if (v53 != v49)
            {
              continue;
            }

            return v55;
          }

LABEL_64:
          __break(1u);
          goto LABEL_65;
        }

        if (v11 < v47 || v11 >= v46)
        {
          goto LABEL_67;
        }

        v18 = __DataStorage._bytes.getter();
        if (v18)
        {
          v15 = v18;
          v19 = __DataStorage._offset.getter();
          v17 = v11 - v19;
          if (__OFSUB__(v11, v19))
          {
LABEL_69:
            __break(1u);
LABEL_70:
            __break(1u);
            goto LABEL_71;
          }

          goto LABEL_34;
        }

        goto LABEL_77;
      }

      if (v6 == 2)
      {
        if (v11 < *(v4 + 16))
        {
LABEL_66:
          __break(1u);
LABEL_67:
          __break(1u);
          goto LABEL_68;
        }

        if (v11 >= *(v4 + 24))
        {
LABEL_68:
          __break(1u);
          goto LABEL_69;
        }

        v14 = __DataStorage._bytes.getter();
        if (v14)
        {
          v15 = v14;
          v16 = __DataStorage._offset.getter();
          v17 = v11 - v16;
          if (__OFSUB__(v11, v16))
          {
            goto LABEL_70;
          }

LABEL_34:
          v13 = *(v15 + v17);
          goto LABEL_35;
        }

LABEL_78:
        __break(1u);
      }

LABEL_76:
      __break(1u);
LABEL_77:
      __break(1u);
      goto LABEL_78;
    }

    return v55;
  }
}

uint64_t sub_100225EC0()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v2 = result;
    v3 = v0 + OBJC_IVAR____TtC8SOSBuddy15_HapticFeedback__cached;
    swift_beginAccess();
    v4 = type metadata accessor for _HapticFeedback.Cached(0);
    v5 = *(v3 + *(v4 + 28));
    v6 = *(*(*(v2[8] + 96) + 48) + 136);
    if (v5 == 9)
    {
      if (((1 << v6) & 0x1DF) == 0)
      {
        if (v6 != 5)
        {
          return swift_unknownObjectRelease();
        }

        goto LABEL_14;
      }

LABEL_24:
      v11 = *(v2[8] + 96);

      swift_unknownObjectRelease();
      v12 = *(*(v11 + 48) + 136);

      *(v3 + *(v4 + 28)) = v12;
      return result;
    }

    if (v5 == v6)
    {
      return swift_unknownObjectRelease();
    }

    if (v6 <= 9)
    {
      if (((1 << v6) & 0x3D8) != 0)
      {
        goto LABEL_24;
      }

      if (v6 == 2)
      {
        if (v5 >= 2)
        {
          goto LABEL_24;
        }

LABEL_14:
        v7 = *(v2[5] + 41);
        if (v7 != 2 && (v7 & 1) != 0)
        {
          v8 = v2[31];
          v9 = v2[32];
          sub_1000088DC(v2 + 28, v8);
          if ((*(v9 + 112))(v8, v9) & 1) != 0 || (sub_100179A30())
          {
            sub_10022649C();
          }
        }

        goto LABEL_24;
      }

      if (v6 == 5)
      {
        goto LABEL_14;
      }
    }

    if (*(*(*(v2[8] + 96) + 48) + 136))
    {
      v10 = v5 > 1;
    }

    else
    {
      v10 = 1;
    }

    if (v10 || *(v2[5] + 40) == 6)
    {
      goto LABEL_24;
    }

    goto LABEL_14;
  }

  return result;
}

uint64_t sub_100226080()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v2 = result;
    if ((sub_10017D0A8(&off_1003238D0, *(*(*(result + 64) + 56) + OBJC_IVAR____TtC8SOSBuddy13GuidanceModel__suggestedActions)) & 1) != 0 || (v3 = v2[5], *(v3 + 40) == 6) || (v4 = *(v3 + 41), v4 == 2) || (v4 & 1) == 0)
    {
      v7 = 0;
    }

    else
    {
      v5 = v2[31];
      v6 = v2[32];
      sub_1000088DC(v2 + 28, v5);
      if ((*(v6 + 112))(v5, v6))
      {
        v7 = 1;
      }

      else
      {
        v7 = sub_100179A30();
      }
    }

    v8 = v0 + OBJC_IVAR____TtC8SOSBuddy15_HapticFeedback__cached;
    swift_beginAccess();
    v9 = type metadata accessor for _HapticFeedback.Cached(0);
    if (sub_100071A54(0, *(v8 + *(v9 + 32))) & 1) != 0 && (v7)
    {
      sub_10022649C();
    }

    v10 = *(v2[8] + 56);

    swift_unknownObjectRelease();
    v11 = *(v10 + OBJC_IVAR____TtC8SOSBuddy13GuidanceModel__suggestedActions);

    *(v8 + *(v9 + 32)) = v11;
  }

  return result;
}

uint64_t sub_1002261EC()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = *(Strong + 72);

    swift_unknownObjectRelease();
    v2 = *(v1 + 88);

    if (v2)
    {
      swift_beginAccess();
      sub_10003F3D8(v2 + 48, v23);
      v3 = v25;
      if (v25)
      {
        v4 = v26;
        v5 = sub_1000088DC(v24, v25);
        v6 = *(v3 - 8);
        __chkstk_darwin(v5);
        v8 = v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v6 + 16))(v8);

        sub_10003F434(v23);
        v9 = (*(v4 + 24))(v3, v4);

        (*(v6 + 8))(v8, v3);
        v10 = 0;
        goto LABEL_9;
      }

      sub_10003F434(v23);
    }

    v9 = 0;
  }

  else
  {
    v9 = 0;
    v2 = 0;
  }

  v10 = 1;
LABEL_9:
  v11 = v22[1] + OBJC_IVAR____TtC8SOSBuddy15_HapticFeedback__cached;
  swift_beginAccess();
  v12 = type metadata accessor for _HapticFeedback.Cached(0);
  v13 = v11 + *(v12 + 48);
  v14 = *(v13 + 8);
  if (v10)
  {
    if (*(v13 + 8))
    {
      goto LABEL_21;
    }

LABEL_15:
    if (v2)
    {
      v15 = swift_unknownObjectWeakLoadStrong();
      if (v15)
      {

        swift_unknownObjectRelease();
        v16 = *(v2 + 344);
        v15 = *(v16 + 56);
        v17 = *(v16 + 64);
        v18 = *(v16 + 72);
        v19 = *(v16 + 80);

LABEL_20:
        sub_1002268CC(v9, v10, v15, v17, v18, v19);
        goto LABEL_21;
      }
    }

    else
    {
      v15 = 0;
    }

    v17 = 0;
    v18 = 0;
    v19 = 1;
    goto LABEL_20;
  }

  if (v9 != *v13)
  {
    v14 = 1;
  }

  if (v14)
  {
    goto LABEL_15;
  }

LABEL_21:

  v21 = v11 + *(v12 + 48);
  *v21 = v9;
  *(v21 + 8) = v10;
  return result;
}

void sub_10022649C()
{
  v1 = v0;
  v2 = sub_1000040A8(&qword_100356518);
  v3 = __chkstk_darwin(v2 - 8);
  v5 = v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = v28 - v6;
  v8 = type metadata accessor for DispatchTime();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = v28 - v13;
  if (qword_100353A68 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  v30 = sub_10000F53C(v15, qword_100381D88);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&_mh_execute_header, v16, v17, "onUserActionRequired", v18, 2u);
  }

  v19 = v1 + OBJC_IVAR____TtC8SOSBuddy15_HapticFeedback__cached;
  swift_beginAccess();
  v20 = type metadata accessor for _HapticFeedback.Cached(0);
  sub_1001451C0(v19 + *(v20 + 24), v7);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_10012C414(v7);
LABEL_7:
    static DispatchTime.now()();
    (*(v9 + 56))(v5, 0, 1, v8);
    swift_beginAccess();
    sub_10002B4A0(v5, v19 + *(v20 + 24));
    swift_endAccess();
    sub_1000A8FD8(1);
    return;
  }

  (*(v9 + 32))(v14, v7, v8);
  static DispatchTime.now()();
  v21 = DispatchTime.uptimeNanoseconds.getter();
  if (DispatchTime.uptimeNanoseconds.getter() >= v21)
  {
    v24 = *(v9 + 8);
    v24(v12, v8);
    v24(v14, v8);
  }

  else
  {
    v28[1] = v1;
    v29 = DispatchTime.uptimeNanoseconds.getter();
    v22 = DispatchTime.uptimeNanoseconds.getter();
    v23 = *(v9 + 8);
    v23(v12, v8);
    v23(v14, v8);
    if (v29 < v22)
    {
      __break(1u);
      return;
    }

    if (v29 - v22 > 0x2CB4177F)
    {
      goto LABEL_7;
    }
  }

  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    *v27 = 0;
    _os_log_impl(&_mh_execute_header, v25, v26, "onUserActionRequired - throttled", v27, 2u);
  }
}

void sub_1002268CC(uint64_t a1, char a2, uint64_t a3, unint64_t a4, unint64_t a5, char a6)
{
  if (a2 & 1) != 0 || (a6)
  {
    sub_100162C68();
    sub_10015C020();
    return;
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    swift_unknownObjectRelease();
    v9 = [objc_opt_self() shouldPlayAudioDuringCountdown];
  }

  else
  {
    v9 = 0;
  }

  v10 = sub_1002269BC(a4, a5, a1);
  if (v10)
  {
    if (v10 == 1)
    {
      v11 = 1;
    }

    else
    {
      v11 = v9 ^ 1;
    }

    sub_1001628DC(v11, 0, 0);
    if (v9)
    {
      goto LABEL_15;
    }
  }

  else
  {
    sub_1001A7A14(2);
    if (v9)
    {
LABEL_15:
      sub_10015BCBC(0.5);
    }
  }
}

uint64_t sub_1002269BC(unint64_t a1, unint64_t a2, uint64_t a3)
{
  if (!a2)
  {
    v7 = a3 >= 1 && a3 > a1 >> 1;
    return !v7;
  }

  result = 2;
  if (a3 >= 1 && a2 < a3)
  {
    v5 = __CFADD__(a1, a2);
    v6 = a1 + a2;
    if (v5)
    {
      __break(1u);
      return result;
    }

    v7 = a3 > v6 >> 1;
    return !v7;
  }

  return result;
}

uint64_t sub_100226A00(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 104))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 80);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100226A48(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 104) = 1;
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
      *(result + 80) = (a2 - 1);
      return result;
    }

    *(result + 104) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100226ACC@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  if (v2)
  {
    v4 = v2[9];
    v5 = v2[10];
    sub_1000088DC(v2 + 6, v4);
    v6 = *(v5 + 24);

    v6(v22, v4, v5);
    sub_100226D18(v23);

    v7 = v2[9];
    v8 = v2[10];
    sub_1000088DC(v2 + 6, v7);
    (*(v8 + 24))(v21, v7, v8);
    *a1 = static HorizontalAlignment.center.getter();
    *(a1 + 8) = 0x402C000000000000;
    *(a1 + 16) = 0;
    v9 = sub_1000040A8(&qword_100368D88);
    sub_10022710C(v1, v23, a1 + *(v9 + 44));
    v26 = v23[0];
    sub_100032674(&v26);
    v25 = v23[1];
    sub_100032674(&v25);
    v24 = v23[2];
    sub_100032674(&v24);
    sub_100008964(v21);
    v10 = static Edge.Set.bottom.getter();
    if (qword_100353988 != -1)
    {
      swift_once();
    }

    EdgeInsets.init(_all:)();
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v19 = a1 + *(sub_1000040A8(&qword_100368D90) + 36);
    *v19 = v10;
    *(v19 + 8) = v12;
    *(v19 + 16) = v14;
    *(v19 + 24) = v16;
    *(v19 + 32) = v18;
    *(v19 + 40) = 0;
    return sub_100008964(v22);
  }

  else
  {
    type metadata accessor for UIMetrics();
    sub_100229400(&qword_100354D40, type metadata accessor for UIMetrics);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

void sub_100226D18(Swift::String *a1@<X8>)
{
  v3 = *(v1 + 48);
  if (v3)
  {
    if ((*(*(v3 + 344) + 32) & 1) == 0)
    {
      v29 = objc_opt_self();
      v30 = [v29 mainBundle];
      v46._object = 0x80000001002A5760;
      v31._object = 0x80000001002A17F0;
      v46._countAndFlagsBits = 0xD000000000000032;
      v31._countAndFlagsBits = 0xD000000000000012;
      v32._countAndFlagsBits = 0;
      v32._object = 0xE000000000000000;
      v33 = NSLocalizedString(_:tableName:bundle:value:comment:)(v31, 0, v30, v32, v46);
      countAndFlagsBits = v33._countAndFlagsBits;
      object = v33._object;

      v34 = [v29 mainBundle];
      v47._object = 0x80000001002A57E0;
      v35._countAndFlagsBits = 0xD000000000000030;
      v35._object = 0x80000001002A57A0;
      v47._countAndFlagsBits = 0xD000000000000035;
      v36._countAndFlagsBits = 0;
      v36._object = 0xE000000000000000;
      v37 = NSLocalizedString(_:tableName:bundle:value:comment:)(v35, 0, v34, v36, v47);
      v27 = v37._countAndFlagsBits;
      v13 = v37._object;

      v22 = [v29 mainBundle];
      v23 = 0xD000000000000011;
      v42 = 0x80000001002A5820;
      v24 = 0x80000001002988E0;
      v26 = 0xD000000000000029;
      v28 = 0;
      v25 = 0;
LABEL_8:
      v38._countAndFlagsBits = 0;
      v38._object = 0xE000000000000000;
      v39 = NSLocalizedString(_:tableName:bundle:value:comment:)(*&v23, *&v28, v22, v38, *&v26);

      a1->_countAndFlagsBits = countAndFlagsBits;
      a1->_object = object;
      a1[1]._countAndFlagsBits = v27;
      a1[1]._object = v13;
      a1[2] = v39;
      return;
    }

    if (*(v1 + 16))
    {

      v4 = sub_100067850();
      v6 = v5;

      if (!v6)
      {
        v7 = [objc_opt_self() mainBundle];
        v44._object = 0x8000000100299C00;
        v8._countAndFlagsBits = 0xD000000000000013;
        v8._object = 0x80000001002973D0;
        v9.value._object = 0x80000001002962C0;
        v44._countAndFlagsBits = 0xD000000000000038;
        v9.value._countAndFlagsBits = 0xD000000000000012;
        v10._countAndFlagsBits = 0;
        v10._object = 0xE000000000000000;
        v11 = NSLocalizedString(_:tableName:bundle:value:comment:)(v8, v9, v7, v10, v44);
        v4 = v11._countAndFlagsBits;
        v6 = v11._object;
      }

      v43 = sub_100020E70(v4, v6);
      v13 = v12;

      v14 = objc_opt_self();
      v15 = [v14 mainBundle];
      v45._object = 0x80000001002A5720;
      v16._countAndFlagsBits = 0xD000000000000018;
      v16._object = 0x80000001002A1970;
      v17.value._object = 0x80000001002962C0;
      v45._countAndFlagsBits = 0xD000000000000039;
      v17.value._countAndFlagsBits = 0xD000000000000012;
      v18._countAndFlagsBits = 0;
      v18._object = 0xE000000000000000;
      v19 = NSLocalizedString(_:tableName:bundle:value:comment:)(v16, v17, v15, v18, v45);
      countAndFlagsBits = v19._countAndFlagsBits;
      object = v19._object;

      v22 = [v14 mainBundle];
      v42 = 0x80000001002A1AD0;
      v23 = 0xD000000000000017;
      v24 = 0x80000001002A1AB0;
      v25 = 0x80000001002962C0;
      v26 = 0xD00000000000002FLL;
      v27 = v43;
      v28 = 0xD000000000000012;
      goto LABEL_8;
    }

    type metadata accessor for RoadsideAssistanceModel();
    v40 = &qword_100356B48;
    v41 = type metadata accessor for RoadsideAssistanceModel;
  }

  else
  {
    type metadata accessor for QuestionnaireState();
    v40 = &qword_100354D50;
    v41 = type metadata accessor for QuestionnaireState;
  }

  sub_100229400(v40, v41);
  EnvironmentObject.error()();
  __break(1u);
}

uint64_t sub_10022710C@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X2>, uint64_t a3@<X8>)
{
  v91 = a2;
  v97 = a3;
  v4 = sub_1000040A8(&qword_100357560);
  __chkstk_darwin(v4 - 8);
  v84 = &v74 - v5;
  v87 = sub_1000040A8(&qword_100368D98);
  __chkstk_darwin(v87);
  v85 = &v74 - v6;
  v89 = sub_1000040A8(&qword_100368DA0);
  __chkstk_darwin(v89);
  v86 = &v74 - v7;
  v92 = sub_1000040A8(&qword_100368DA8);
  v96 = *(v92 - 8);
  __chkstk_darwin(v92);
  v101 = &v74 - v8;
  v9 = sub_1000040A8(&qword_100368DB0);
  v94 = *(v9 - 8);
  v95 = v9;
  __chkstk_darwin(v9);
  v93 = &v74 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v90 = &v74 - v12;
  v100 = type metadata accessor for KeyboardShortcut();
  v103 = *(v100 - 8);
  __chkstk_darwin(v100);
  v83 = &v74 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = type metadata accessor for GlassProminentButtonStyle();
  v102 = *(v98 - 8);
  __chkstk_darwin(v98);
  v15 = &v74 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1000040A8(&qword_100368DB8);
  __chkstk_darwin(v16);
  v18 = &v74 - v17;
  v75 = sub_1000040A8(&qword_100368DC0);
  __chkstk_darwin(v75);
  v20 = &v74 - v19;
  v21 = sub_1000040A8(&qword_100368DC8);
  v22 = v21 - 8;
  __chkstk_darwin(v21);
  v88 = &v74 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v99 = &v74 - v25;
  v26 = swift_allocObject();
  v27 = *(a1 + 80);
  *(v26 + 80) = *(a1 + 64);
  *(v26 + 96) = v27;
  *(v26 + 112) = *(a1 + 96);
  v28 = *(a1 + 16);
  *(v26 + 16) = *a1;
  *(v26 + 32) = v28;
  v29 = *(a1 + 48);
  *(v26 + 48) = *(a1 + 32);
  *(v26 + 64) = v29;
  sub_100058628(a1, v110);
  sub_100228438();
  Button.init(action:label:)();
  v30 = &v18[*(v16 + 36)];
  v82 = sub_1000040A8(&qword_1003550A0);
  v31 = *(v82 + 28);
  v32 = enum case for ControlSize.large(_:);
  v80 = enum case for ControlSize.large(_:);
  v79 = type metadata accessor for ControlSize();
  v33 = *(v79 - 8);
  v78 = *(v33 + 104);
  v81 = v33 + 104;
  v78(v30 + v31, v32, v79);
  *v30 = swift_getKeyPath();
  GlassProminentButtonStyle.init()();
  sub_100228D40();
  v77 = sub_100229400(&qword_100357730, &type metadata accessor for GlassProminentButtonStyle);
  v34 = v98;
  View.buttonStyle<A>(_:)();
  v35 = *(v102 + 8);
  v102 += 8;
  v76 = v35;
  v35(v15, v34);
  v36 = &v20[*(v75 + 36)];
  sub_1000040A8(&qword_100357740);
  static ButtonBorderShape.capsule.getter();
  sub_100008FA0(v18, &qword_100368DB8);
  *v36 = swift_getKeyPath();
  v37 = v83;
  static KeyboardShortcut.defaultAction.getter();
  sub_100228E2C();
  v38 = v99;
  View.keyboardShortcut(_:)();
  v39 = *(v103 + 8);
  v103 += 8;
  v75 = v39;
  v39(v37, v100);
  sub_100008FA0(v20, &qword_100368DC0);
  v40 = static Color.green.getter();
  KeyPath = swift_getKeyPath();
  v110[0] = v40;
  v42 = AnyShapeStyle.init<A>(_:)();
  v43 = (v38 + *(v22 + 44));
  *v43 = KeyPath;
  v43[1] = v42;
  v44 = v84;
  static ButtonRole.destructive.getter();
  v45 = type metadata accessor for ButtonRole();
  (*(*(v45 - 8) + 56))(v44, 0, 1, v45);
  v46 = swift_allocObject();
  v47 = *(a1 + 80);
  *(v46 + 80) = *(a1 + 64);
  *(v46 + 96) = v47;
  *(v46 + 112) = *(a1 + 96);
  v48 = *(a1 + 16);
  *(v46 + 16) = *a1;
  *(v46 + 32) = v48;
  v49 = *(a1 + 48);
  *(v46 + 48) = *(a1 + 32);
  *(v46 + 64) = v49;
  v107 = a1;
  sub_100058628(a1, v110);
  sub_100228F88();
  v50 = v85;
  Button.init(role:action:label:)();
  v51 = (v50 + *(v87 + 36));
  v78(v51 + *(v82 + 28), v80, v79);
  *v51 = swift_getKeyPath();
  v52 = v15;
  GlassProminentButtonStyle.init()();
  sub_100228FDC();
  v53 = v86;
  v54 = v98;
  View.buttonStyle<A>(_:)();
  v76(v52, v54);
  v55 = v89;
  v56 = &v53[*(v89 + 36)];
  v57 = v53;
  static ButtonBorderShape.capsule.getter();
  sub_100008FA0(v50, &qword_100368D98);
  *v56 = swift_getKeyPath();
  static KeyboardShortcut.defaultAction.getter();
  v58 = sub_1002290C0();
  View.keyboardShortcut(_:)();
  (v75)(v37, v100);
  sub_100008FA0(v57, &qword_100368DA0);
  v111 = *v91;
  v59 = *v91;
  v60 = v91;
  v108 = *(a1 + 64);
  v109 = v59;

  sub_1000040A8(&qword_100354AA8);
  State.projectedValue.getter();
  v105 = v60;
  v106 = a1;
  v104 = v60;
  sub_1000040A8(&qword_100357568);
  v110[0] = v55;
  v110[1] = v58;
  swift_getOpaqueTypeConformance2();
  sub_100031770();
  sub_100009274(&qword_100357588, &qword_100357568);
  v61 = v92;
  v62 = v90;
  v63 = v101;
  View.alert<A, B, C>(_:isPresented:actions:message:)();

  sub_100032674(&v111);
  (*(v96 + 8))(v63, v61);
  v64 = v99;
  v65 = v88;
  sub_10022920C(v99, v88);
  v66 = v93;
  v67 = v94;
  v68 = *(v94 + 16);
  v69 = v95;
  v68(v93, v62, v95);
  v70 = v97;
  sub_10022920C(v65, v97);
  v71 = sub_1000040A8(&qword_100368E20);
  v68((v70 + *(v71 + 48)), v66, v69);
  v72 = *(v67 + 8);
  v72(v62, v69);
  sub_100008FA0(v64, &qword_100368DC8);
  v72(v66, v69);
  return sub_100008FA0(v65, &qword_100368DC8);
}

uint64_t sub_100227CC8()
{
  v1 = v0;
  if (qword_100353AA8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000F53C(v2, qword_100381E48);
  sub_100058628(v0, v22);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  sub_100058684(v0);
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v22[0] = v6;
    *v5 = 136446210;
    if (!*(v0 + 48))
    {
      goto LABEL_13;
    }

    v7 = v6;

    v8 = sub_1000B9A7C();
    v10 = v9;

    v11 = sub_10017C9E8(v8, v10, v22);

    *(v5 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v3, v4, "[%{public}s] BuiltInSummaryCountdownFooterView: send now", v5, 0xCu);
    sub_100008964(v7);
  }

  if (*(v1 + 48))
  {
    v12 = *(v1 + 80);

    if ((sub_1000BB344(v12, 0, 4) & 1) == 0)
    {
      sub_100058628(v1, v22);
      v13 = Logger.logObject.getter();
      v14 = static os_log_type_t.error.getter();
      sub_100058684(v1);
      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        v22[0] = swift_slowAlloc();
        *v15 = 136446467;
        v16 = sub_1000B9A7C();
        v18 = v17;

        v19 = sub_10017C9E8(v16, v18, v22);

        *(v15 + 4) = v19;
        *(v15 + 12) = 2081;
        *(v15 + 14) = sub_10017C9E8(*(v12 + 16), *(v12 + 24), v22);
        _os_log_impl(&_mh_execute_header, v13, v14, "[%{public}s] BuiltInSummaryCountdownFooterView: failed to record answer for %{private}s", v15, 0x16u);
        swift_arrayDestroy();

        return (*(v1 + 88))(v20);
      }
    }

    return (*(v1 + 88))(v20);
  }

LABEL_13:
  type metadata accessor for QuestionnaireState();
  sub_100229400(&qword_100354D50, type metadata accessor for QuestionnaireState);
  result = EnvironmentObject.error()();
  __break(1u);
  return result;
}

uint64_t sub_100228010(void *a1)
{
  if (*a1)
  {

    PassthroughSubject.send(_:)();

    sub_1000040A8(&qword_100354AA8);
    return State.wrappedValue.setter();
  }

  else
  {
    type metadata accessor for AppEvents();
    sub_100229400(&qword_100354D48, type metadata accessor for AppEvents);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_1002280F0@<X0>(uint64_t result@<X0>, _BYTE *a2@<X8>)
{
  v2 = *(result + 48);
  if (v2)
  {
    *a2 = *(*(v2 + 344) + 32);
  }

  else
  {
    type metadata accessor for QuestionnaireState();
    sub_100229400(&qword_100354D50, type metadata accessor for QuestionnaireState);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_100228174(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000040A8(&qword_100357560);
  __chkstk_darwin(v4 - 8);
  v6 = &v15[-v5 - 8];
  v7 = *(a1 + 40);
  v16 = *(a1 + 32);
  v17 = v7;

  static ButtonRole.destructive.getter();
  v8 = type metadata accessor for ButtonRole();
  (*(*(v8 - 8) + 56))(v6, 0, 1, v8);
  v9 = swift_allocObject();
  v10 = *(a2 + 80);
  *(v9 + 80) = *(a2 + 64);
  *(v9 + 96) = v10;
  *(v9 + 112) = *(a2 + 96);
  v11 = *(a2 + 16);
  *(v9 + 16) = *a2;
  *(v9 + 32) = v11;
  v12 = *(a2 + 48);
  *(v9 + 48) = *(a2 + 32);
  *(v9 + 64) = v12;
  sub_100058628(a2, v15);
  sub_100031770();
  return Button<>.init<A>(_:role:action:)();
}

uint64_t sub_1002282C8(void *a1)
{
  if (*a1)
  {

    sub_1000040A8(&unk_100365610);
    sub_100009274(&qword_10035CF00, &unk_100365610);
    Subject<>.send()();
  }

  else
  {
    type metadata accessor for AppEvents();
    sub_100229400(&qword_100354D48, type metadata accessor for AppEvents);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

unint64_t sub_100228438()
{
  result = qword_100368DD0;
  if (!qword_100368DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100368DD0);
  }

  return result;
}

uint64_t sub_10022848C@<X0>(uint64_t a1@<X8>)
{
  v25 = sub_1000040A8(&qword_100354D60);
  __chkstk_darwin(v25);
  v3 = &v24 - v2;
  v26 = sub_1000040A8(&qword_100357C98);
  __chkstk_darwin(v26);
  v5 = &v24 - v4;
  v27 = sub_1000040A8(&qword_100357CA0);
  __chkstk_darwin(v27);
  v7 = &v24 - v6;
  LocalizedStringKey.init(stringLiteral:)();
  v8 = Text.init(_:tableName:bundle:comment:)();
  v10 = v9;
  *&v28 = v8;
  *(&v28 + 1) = v9;
  v12 = v11 & 1;
  LOBYTE(v29) = v11 & 1;
  *(&v29 + 1) = v13;
  v14 = enum case for DynamicTypeSize.accessibility2(_:);
  v15 = type metadata accessor for DynamicTypeSize();
  (*(*(v15 - 8) + 104))(v3, v14, v15);
  sub_100229400(&qword_100354D68, &type metadata accessor for DynamicTypeSize);
  result = dispatch thunk of static Equatable.== infix(_:_:)();
  if (result)
  {
    v24 = a1;
    sub_100009274(&qword_100354D78, &qword_100354D60);
    View.dynamicTypeSize<A>(_:)();
    sub_100008FA0(v3, &qword_100354D60);
    sub_1000317C4(v8, v10, v12);

    KeyPath = swift_getKeyPath();
    v18 = &v5[*(v26 + 36)];
    *v18 = KeyPath;
    v18[8] = 1;
    static Alignment.center.getter();
    _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
    sub_10000CF4C(v5, v7, &qword_100357C98);
    v19 = &v7[*(v27 + 36)];
    v20 = v33;
    *(v19 + 4) = v32;
    *(v19 + 5) = v20;
    *(v19 + 6) = v34;
    v21 = v29;
    *v19 = v28;
    *(v19 + 1) = v21;
    v22 = v31;
    *(v19 + 2) = v30;
    *(v19 + 3) = v22;
    v23 = v24;
    sub_10000CF4C(v7, v24, &qword_100357CA0);
    result = sub_1000040A8(&qword_100357CA8);
    *(v23 + *(result + 36)) = 256;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100228864@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v28 = sub_1000040A8(&qword_100354D60);
  __chkstk_darwin(v28);
  v5 = &v27 - v4;
  v29 = sub_1000040A8(&qword_100357C98);
  __chkstk_darwin(v29);
  v7 = &v27 - v6;
  v30 = sub_1000040A8(&qword_100357CA0);
  __chkstk_darwin(v30);
  v9 = &v27 - v8;
  *&v31 = sub_100228C08(a1 & 1);
  *(&v31 + 1) = v10;
  sub_100031770();
  v11 = Text.init<A>(_:)();
  v13 = v12;
  *&v31 = v11;
  *(&v31 + 1) = v12;
  v15 = v14 & 1;
  LOBYTE(v32) = v14 & 1;
  *(&v32 + 1) = v16;
  v17 = enum case for DynamicTypeSize.accessibility2(_:);
  v18 = type metadata accessor for DynamicTypeSize();
  (*(*(v18 - 8) + 104))(v5, v17, v18);
  sub_100229400(&qword_100354D68, &type metadata accessor for DynamicTypeSize);
  result = dispatch thunk of static Equatable.== infix(_:_:)();
  if (result)
  {
    v27 = a2;
    sub_100009274(&qword_100354D78, &qword_100354D60);
    View.dynamicTypeSize<A>(_:)();
    sub_100008FA0(v5, &qword_100354D60);
    sub_1000317C4(v11, v13, v15);

    KeyPath = swift_getKeyPath();
    v21 = &v7[*(v29 + 36)];
    *v21 = KeyPath;
    v21[8] = 1;
    static Alignment.center.getter();
    _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
    sub_10000CF4C(v7, v9, &qword_100357C98);
    v22 = &v9[*(v30 + 36)];
    v23 = v36;
    *(v22 + 4) = v35;
    *(v22 + 5) = v23;
    *(v22 + 6) = v37;
    v24 = v32;
    *v22 = v31;
    *(v22 + 1) = v24;
    v25 = v34;
    *(v22 + 2) = v33;
    *(v22 + 3) = v25;
    v26 = v27;
    sub_10000CF4C(v9, v27, &qword_100357CA0);
    result = sub_1000040A8(&qword_100357CA8);
    *(v26 + *(result + 36)) = 256;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100228C08(char a1)
{
  if (a1)
  {
    v1 = [objc_opt_self() mainBundle];
    v10 = 0x80000001002A1AD0;
    v2 = 0xD000000000000017;
    v3 = 0x80000001002A1AB0;
    v4 = 0xD000000000000012;
    v5 = 0x80000001002962C0;
    v6 = 0xD00000000000002FLL;
  }

  else
  {
    v1 = [objc_opt_self() mainBundle];
    v10 = 0x80000001002A5820;
    v3 = 0x80000001002988E0;
    v6 = 0xD000000000000029;
    v2 = 0xD000000000000011;
    v4 = 0;
    v5 = 0;
  }

  v7._countAndFlagsBits = 0;
  v7._object = 0xE000000000000000;
  countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(*&v2, *&v4, v1, v7, *&v6)._countAndFlagsBits;

  return countAndFlagsBits;
}

unint64_t sub_100228D40()
{
  result = qword_100368DD8;
  if (!qword_100368DD8)
  {
    sub_100008CF0(&qword_100368DB8);
    sub_100009274(&qword_100368DE0, &qword_100368DE8);
    sub_100009274(&qword_100355098, &qword_1003550A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100368DD8);
  }

  return result;
}

unint64_t sub_100228E2C()
{
  result = qword_100368DF0;
  if (!qword_100368DF0)
  {
    sub_100008CF0(&qword_100368DC0);
    sub_100008CF0(&qword_100368DB8);
    type metadata accessor for GlassProminentButtonStyle();
    sub_100228D40();
    sub_100229400(&qword_100357730, &type metadata accessor for GlassProminentButtonStyle);
    swift_getOpaqueTypeConformance2();
    sub_100009274(&qword_100357768, &qword_100357740);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100368DF0);
  }

  return result;
}

unint64_t sub_100228F88()
{
  result = qword_100368DF8;
  if (!qword_100368DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100368DF8);
  }

  return result;
}

unint64_t sub_100228FDC()
{
  result = qword_100368E00;
  if (!qword_100368E00)
  {
    sub_100008CF0(&qword_100368D98);
    sub_100009274(&qword_100368E08, &qword_100368E10);
    sub_100009274(&qword_100355098, &qword_1003550A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100368E00);
  }

  return result;
}

unint64_t sub_1002290C0()
{
  result = qword_100368E18;
  if (!qword_100368E18)
  {
    sub_100008CF0(&qword_100368DA0);
    sub_100008CF0(&qword_100368D98);
    type metadata accessor for GlassProminentButtonStyle();
    sub_100228FDC();
    sub_100229400(&qword_100357730, &type metadata accessor for GlassProminentButtonStyle);
    swift_getOpaqueTypeConformance2();
    sub_100009274(&qword_100357768, &qword_100357740);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100368E18);
  }

  return result;
}

uint64_t sub_10022920C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000040A8(&qword_100368DC8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10022927C()
{

  return _swift_deallocObject(v0, 120, 7);
}

unint64_t sub_100229310()
{
  result = qword_100368E28;
  if (!qword_100368E28)
  {
    sub_100008CF0(&qword_100368D90);
    sub_100009274(&qword_100368E30, &qword_100368E38);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100368E28);
  }

  return result;
}

uint64_t sub_100229400(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100229488@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v40 = a2;
  v50 = a3;
  v4 = type metadata accessor for KeyboardShortcut();
  v47 = *(v4 - 8);
  v48 = v4;
  __chkstk_darwin(v4);
  v46 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Color.RGBColorSpace();
  v44 = *(v6 - 8);
  v45 = v6;
  __chkstk_darwin(v6);
  v43 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for GlassProminentButtonStyle();
  v41 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1000040A8(&qword_1003576A0);
  __chkstk_darwin(v11);
  v13 = &v39 - v12;
  v42 = sub_1000040A8(&qword_100357748);
  __chkstk_darwin(v42);
  v15 = &v39 - v14;
  v16 = sub_1000040A8(&qword_100368E48);
  v49 = *(v16 - 8);
  __chkstk_darwin(v16);
  v18 = &v39 - v17;
  if (*a1)
  {

    v19 = sub_100069C9C();

    if (v19)
    {

      sub_10008B8D4();
    }

    else if (sub_10008B8D4())
    {
      v20 = swift_allocObject();
      v39 = &v39;
      v21 = *(a1 + 48);
      *(v20 + 48) = *(a1 + 32);
      *(v20 + 64) = v21;
      *(v20 + 80) = *(a1 + 64);
      v22 = *(a1 + 16);
      *(v20 + 16) = *a1;
      *(v20 + 32) = v22;
      __chkstk_darwin(v20);
      *(&v39 - 2) = v40;
      sub_1000586D8(a1, v51);
      sub_1000040A8(&qword_1003576F8);
      sub_100050340();
      Button.init(action:label:)();
      v23 = &v13[*(v11 + 36)];
      v24 = *(sub_1000040A8(&qword_1003550A0) + 28);
      v25 = enum case for ControlSize.large(_:);
      v26 = type metadata accessor for ControlSize();
      (*(*(v26 - 8) + 104))(v23 + v24, v25, v26);
      *v23 = swift_getKeyPath();
      GlassProminentButtonStyle.init()();
      sub_100050484();
      sub_10022A1F8(&qword_100357730, &type metadata accessor for GlassProminentButtonStyle);
      View.buttonStyle<A>(_:)();
      (*(v41 + 8))(v10, v8);
      v27 = &v15[*(sub_1000040A8(&qword_100357738) + 36)];
      sub_1000040A8(&qword_100357740);
      static ButtonBorderShape.capsule.getter();
      sub_10022A0A0(v13);
      *v27 = swift_getKeyPath();
      (*(v44 + 104))(v43, enum case for Color.RGBColorSpace.sRGB(_:), v45);
      v28 = Color.init(_:red:green:blue:opacity:)();
      KeyPath = swift_getKeyPath();
      v51[0] = v28;
      v30 = AnyShapeStyle.init<A>(_:)();
      v31 = &v15[*(v42 + 36)];
      *v31 = KeyPath;
      v31[1] = v30;
      v32 = v46;
      static KeyboardShortcut.defaultAction.getter();
      sub_100050604();
      View.keyboardShortcut(_:)();
      (*(v47 + 8))(v32, v48);
      sub_10022A118(v15);
      v33 = static Edge.Set.top.getter();
      v34 = &v18[*(v16 + 36)];
      *v34 = v33;
      *(v34 + 8) = 0u;
      *(v34 + 24) = 0u;
      v34[40] = 1;
      v35 = v50;
      sub_10022A180(v18, v50);
      return (*(v49 + 56))(v35, 0, 1, v16);
    }

    v37 = v50;
    v38 = *(v49 + 56);

    return v38(v37, 1, 1, v16);
  }

  else
  {
    type metadata accessor for RoadsideAssistanceModel();
    sub_10022A1F8(&qword_100356B48, type metadata accessor for RoadsideAssistanceModel);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

void sub_100229B94()
{
  if (*(v0 + 32))
  {
    v1 = *(v0 + 48);

    if (sub_1000BB344(v1, 0, 3))
    {

      (*(v0 + 56))(v2);
    }

    else
    {
      if (qword_100353AA8 != -1)
      {
        swift_once();
      }

      v3 = type metadata accessor for Logger();
      sub_10000F53C(v3, qword_100381E48);
      sub_1000586D8(v0, v11);
      v4 = Logger.logObject.getter();
      v5 = static os_log_type_t.error.getter();
      sub_100058734(v0);
      if (os_log_type_enabled(v4, v5))
      {
        v6 = swift_slowAlloc();
        v11[0] = swift_slowAlloc();
        *v6 = 136446467;
        v7 = sub_1000B9A7C();
        v9 = v8;

        v10 = sub_10017C9E8(v7, v9, v11);

        *(v6 + 4) = v10;
        *(v6 + 12) = 2081;
        *(v6 + 14) = sub_10017C9E8(*(v1 + 16), *(v1 + 24), v11);
        _os_log_impl(&_mh_execute_header, v4, v5, "[%{public}s] QuestionnaireBodyView: failed to record skip for %{private}s", v6, 0x16u);
        swift_arrayDestroy();
      }

      else
      {
      }
    }
  }

  else
  {
    type metadata accessor for QuestionnaireState();
    sub_10022A1F8(&qword_100354D50, type metadata accessor for QuestionnaireState);
    EnvironmentObject.error()();
    __break(1u);
  }
}

__n128 sub_100229DE0@<Q0>(uint64_t a1@<X8>)
{
  LocalizedStringKey.init(stringLiteral:)();
  v2 = Text.init(_:tableName:bundle:comment:)();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v9 = v6 & 1;
  v10 = static Color.white.getter();
  KeyPath = swift_getKeyPath();
  *a1 = v2;
  *(a1 + 8) = v4;
  *(a1 + 16) = v9;
  *(a1 + 24) = v8;
  *(a1 + 96) = v17;
  *(a1 + 112) = v18;
  *(a1 + 128) = v19;
  *(a1 + 32) = v13;
  *(a1 + 48) = v14;
  result = v16;
  *(a1 + 64) = v15;
  *(a1 + 80) = v16;
  *(a1 + 144) = KeyPath;
  *(a1 + 152) = v10;
  return result;
}

uint64_t sub_100229EF4@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 48);
  v10[2] = *(v1 + 32);
  v10[3] = v3;
  v11 = *(v1 + 64);
  v4 = *(v1 + 16);
  v10[0] = *v1;
  v10[1] = v4;
  if (v4)
  {
    v5 = *(v4 + 72);
    v6 = *(v4 + 80);
    sub_1000088DC((v4 + 48), v5);
    (*(v6 + 24))(v9, v5, v6);
    *a1 = static HorizontalAlignment.center.getter();
    *(a1 + 8) = 0;
    *(a1 + 16) = 1;
    v7 = sub_1000040A8(&qword_100368E40);
    sub_100229488(v10, v9, a1 + *(v7 + 44));
    return sub_100008964(v9);
  }

  else
  {
    type metadata accessor for UIMetrics();
    sub_10022A1F8(&qword_100354D40, type metadata accessor for UIMetrics);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_10022A014()
{

  return _swift_deallocObject(v0, 88, 7);
}

uint64_t sub_10022A0A0(uint64_t a1)
{
  v2 = sub_1000040A8(&qword_1003576A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10022A118(uint64_t a1)
{
  v2 = sub_1000040A8(&qword_100357748);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10022A180(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000040A8(&qword_100368E48);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10022A1F8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10022A284()
{
  type metadata accessor for ValueWithHysteresis.Hysteresis();
  result = type metadata accessor for Optional();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for Optional();
    if (v2 <= 0x3F)
    {
      return swift_initClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_10022A3AC()
{

  swift_unknownObjectRelease();

  v1 = *(*v0 + 152);
  type metadata accessor for ValueWithHysteresis.Hysteresis();
  v2 = type metadata accessor for Optional();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 168);
  v4 = type metadata accessor for Optional();
  v5 = *(*(v4 - 8) + 8);
  v5(v0 + v3, v4);
  v5(v0 + *(*v0 + 184), v4);
  return v0;
}

uint64_t sub_10022A518()
{
  sub_10022A3AC();

  return swift_deallocClassInstance();
}

uint64_t sub_10022A5A0(uint64_t a1, uint64_t a2, double a3)
{
  *(v3 + 16) = 0;
  v7 = objc_opt_self();
  v8 = swift_allocObject();
  swift_weakInit();
  v9 = swift_allocObject();
  v9[2] = v8;
  v9[3] = a1;
  v9[4] = a2;
  v14[4] = sub_10022AE68;
  v14[5] = v9;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 1107296256;
  v14[2] = sub_10008137C;
  v14[3] = &unk_1003398B0;
  v10 = _Block_copy(v14);

  v11 = [v7 scheduledTimerWithTimeInterval:0 repeats:v10 block:a3];

  _Block_release(v10);
  v12 = *(v3 + 16);
  *(v3 + 16) = v11;

  return v3;
}

uint64_t sub_10022A6FC(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, _UNKNOWN **))
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {

    a3(v5, &off_100339848);
  }

  return result;
}

uint64_t sub_10022A778()
{
  [*(v0 + 16) invalidate];
  v1 = *(v0 + 16);
  *(v0 + 16) = 0;

  return swift_deallocClassInstance();
}

void sub_10022A814()
{
  sub_10022AD8C();
  if (v0 <= 0x3F)
  {
    type metadata accessor for Optional();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_10022A8AC(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (v5)
  {
    v6 = v5 - 1;
  }

  else
  {
    v6 = 0;
  }

  if (v6 <= 0x7FFFFFFE)
  {
    v7 = 2147483646;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(v4 + 80);
  v9 = *(*(*(a3 + 16) - 8) + 64);
  if (!v5)
  {
    ++v9;
  }

  if (!a2)
  {
    return 0;
  }

  v10 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_31;
  }

  v11 = v9 + ((v8 + 24) & ~v8);
  v12 = 8 * v11;
  if (v11 <= 3)
  {
    v15 = ((v10 + ~(-1 << v12)) >> v12) + 1;
    if (HIWORD(v15))
    {
      v13 = *(a1 + v11);
      if (!v13)
      {
        goto LABEL_31;
      }

      goto LABEL_20;
    }

    if (v15 > 0xFF)
    {
      v13 = *(a1 + v11);
      if (!*(a1 + v11))
      {
        goto LABEL_31;
      }

      goto LABEL_20;
    }

    if (v15 < 2)
    {
LABEL_31:
      v17 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
      if (v6 > 0x7FFFFFFE)
      {
        v19 = (*(v4 + 48))((v17 + v8 + 16) & ~v8);
        if (v19 >= 2)
        {
          return v19 - 1;
        }

        else
        {
          return 0;
        }
      }

      else
      {
        v18 = *v17;
        if (v18 >= 0xFFFFFFFF)
        {
          LODWORD(v18) = -1;
        }

        if ((v18 + 1) >= 2)
        {
          return v18;
        }

        else
        {
          return 0;
        }
      }
    }
  }

  v13 = *(a1 + v11);
  if (!*(a1 + v11))
  {
    goto LABEL_31;
  }

LABEL_20:
  v16 = (v13 - 1) << v12;
  if (v11 > 3)
  {
    v16 = 0;
  }

  if (v11)
  {
    if (v11 > 3)
    {
      LODWORD(v11) = 4;
    }

    if (v11 > 2)
    {
      if (v11 == 3)
      {
        LODWORD(v11) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v11) = *a1;
      }
    }

    else if (v11 == 1)
    {
      LODWORD(v11) = *a1;
    }

    else
    {
      LODWORD(v11) = *a1;
    }
  }

  return v7 + (v11 | v16) + 1;
}