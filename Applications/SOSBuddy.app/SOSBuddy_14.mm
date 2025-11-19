unint64_t sub_100137BF0()
{
  result = qword_100360030;
  if (!qword_100360030)
  {
    sub_100008CF0(&qword_100360038);
    sub_100137C7C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100360030);
  }

  return result;
}

unint64_t sub_100137C7C()
{
  result = qword_100360040;
  if (!qword_100360040)
  {
    sub_100008CF0(&qword_100360048);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100360040);
  }

  return result;
}

uint64_t sub_100137D10()
{
  sub_1000040A8(&qword_100360050);
  State.projectedValue.getter();
  type metadata accessor for AppEvents();
  sub_100138454(&qword_100354D48, type metadata accessor for AppEvents);
  v0 = EnvironmentObject.init()();
  v2 = v1;
  type metadata accessor for ConnectionModel(0);
  sub_100138454(&qword_100354F88, type metadata accessor for ConnectionModel);
  v3 = EnvironmentObject.init()();
  v5 = v4;
  type metadata accessor for UIMetrics();
  sub_100138454(&qword_100354D40, type metadata accessor for UIMetrics);
  v6 = EnvironmentObject.init()();
  v8 = v7;
  State.init(wrappedValue:)();
  sub_1000040A8(&qword_10035B6A8);
  State.init(wrappedValue:)();
  *&v10 = v0;
  *(&v10 + 1) = v2;
  *&v11 = v3;
  *(&v11 + 1) = v5;
  *&v12 = v6;
  *(&v12 + 1) = v8;
  v13[0] = v16[0];
  *&v13[1] = *v15;
  *&v13[4] = *&v15[3];
  *&v13[8] = *&v16[8];
  *&v13[16] = *v16;
  v13[24] = v16[8];
  *&v13[28] = *&v14[3];
  *&v13[25] = *v14;
  *&v13[32] = *&v16[16];
  *&v13[40] = *v16;
  sub_1000040A8(&qword_100360070);
  sub_100138328();
  sub_10013837C();
  View.navigationDestination<A, B>(for:destination:)();
  v19 = *&v13[16];
  v20 = *&v13[32];
  v21 = *&v16[8];
  *v16 = v10;
  *&v16[16] = v11;
  v17 = v12;
  v18 = *v13;
  return sub_10013849C(v16);
}

uint64_t sub_100137FB4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1 == 0xD000000000000024 && 0x800000010029E870 == a1[1];
  if (v3 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) != 0))
  {
    type metadata accessor for AppEvents();
    sub_100138454(&qword_100354D48, type metadata accessor for AppEvents);
    v5 = EnvironmentObject.init()();
    v7 = v6;
    type metadata accessor for UIMetrics();
    sub_100138454(&qword_100354D40, type metadata accessor for UIMetrics);
    v8 = EnvironmentObject.init()();
    v10 = v9;
    sub_1000040A8(&qword_10035B6A8);
    result = State.init(wrappedValue:)();
    v11 = v14;
    v12 = v15;
    v13 = v16;
  }

  else
  {
    v7 = 0;
    v8 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v5 = 1;
  }

  *a2 = v5;
  a2[1] = v7;
  a2[2] = v8;
  a2[3] = v10;
  a2[4] = v11;
  a2[5] = v12;
  a2[6] = v13;
  return result;
}

uint64_t sub_100138144()
{
  sub_1000040A8(&qword_100360050);
  State.projectedValue.getter();
  sub_1000040A8(&qword_100355E30);
  sub_1000040A8(&qword_100360058);
  sub_100009274(&qword_100360060, &qword_100355E30);
  sub_100009274(&qword_100357870, &qword_100355E30);
  sub_100009274(&qword_100360068, &qword_100355E30);
  sub_100008CF0(&qword_100360070);
  sub_100138328();
  sub_10013837C();
  swift_getOpaqueTypeConformance2();
  return NavigationStack.init<>(path:root:)();
}

unint64_t sub_100138328()
{
  result = qword_100360078;
  if (!qword_100360078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100360078);
  }

  return result;
}

unint64_t sub_10013837C()
{
  result = qword_100360080;
  if (!qword_100360080)
  {
    sub_100008CF0(&qword_100360070);
    sub_100138400();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100360080);
  }

  return result;
}

unint64_t sub_100138400()
{
  result = qword_100360088;
  if (!qword_100360088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100360088);
  }

  return result;
}

uint64_t sub_100138454(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100138534(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
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

uint64_t sub_10013857C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_100138600@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X8>)
{
  type metadata accessor for UIMetrics();
  sub_10013A05C(&qword_100354D40, type metadata accessor for UIMetrics);
  v10 = EnvironmentObject.init()();
  v12 = v11;
  type metadata accessor for CGSize(0);
  State.init(wrappedValue:)();
  State.init(wrappedValue:)();
  State.init(wrappedValue:)();
  State.init(wrappedValue:)();
  State.init(wrappedValue:)();
  result = v20;
  *a8 = v10;
  *(a8 + 8) = v12;
  *(a8 + 16) = a1;
  *(a8 + 24) = a2;
  *(a8 + 32) = a3;
  *(a8 + 40) = a4;
  *(a8 + 48) = a5;
  *(a8 + 56) = a6;
  *(a8 + 64) = a7;
  *(a8 + 72) = v20;
  *(a8 + 88) = v21;
  *(a8 + 96) = v20.n128_u8[0];
  *(a8 + 104) = v20.n128_u64[1];
  *(a8 + 112) = v20;
  *(a8 + 128) = v21;
  *(a8 + 136) = v20;
  *(a8 + 152) = v21;
  *(a8 + 160) = v20;
  *(a8 + 176) = v21;
  return result;
}

uint64_t sub_1001387A0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = *(v1 + 16);
  if (v4)
  {
    v5 = v4[9];
    v6 = v4[10];
    sub_1000088DC(v4 + 6, v5);
    (*(v6 + 24))(v24, v5, v6);
    sub_1000089B0(v24, v23);
    v7 = swift_allocObject();
    v8 = *(v2 + 48);
    *(v7 + 48) = *(v2 + 32);
    *(v7 + 64) = v8;
    *(v7 + 80) = *(v2 + 64);
    *(v7 + 96) = *(v2 + 80);
    v9 = *(v2 + 16);
    *(v7 + 16) = *v2;
    *(v7 + 32) = v9;
    sub_100008A18(v23, v7 + 104);
    sub_1000089B0(v24, v22);
    v10 = swift_allocObject();
    sub_100008A18(v22, v10 + 16);
    v11 = *(v2 + 48);
    *(v10 + 88) = *(v2 + 32);
    *(v10 + 104) = v11;
    *(v10 + 120) = *(v2 + 64);
    *(v10 + 136) = *(v2 + 80);
    v12 = *(v2 + 16);
    *(v10 + 56) = *v2;
    *(v10 + 72) = v12;
    sub_100139FBC(v2, v25);
    sub_100139FBC(v2, v25);
    sub_100138600(ConnectionAssistantRendererEarthOutline.Buffers.shapesCount.getter, 0, sub_100139F3C, v7, sub_100139FB0, v10, 1, v25);
    result = sub_100008964(v24);
    v14 = v25[9];
    v15 = v25[10];
    v16 = v25[7];
    *(a1 + 128) = v25[8];
    *(a1 + 144) = v14;
    *(a1 + 160) = v15;
    v17 = v25[5];
    v18 = v25[6];
    v19 = v25[3];
    *(a1 + 64) = v25[4];
    *(a1 + 80) = v17;
    *(a1 + 96) = v18;
    *(a1 + 112) = v16;
    v20 = v25[1];
    v21 = v25[2];
    *a1 = v25[0];
    *(a1 + 16) = v20;
    *(a1 + 176) = v26;
    *(a1 + 32) = v21;
    *(a1 + 48) = v19;
  }

  else
  {
    type metadata accessor for UIMetrics();
    sub_10013A05C(&qword_100354D40, type metadata accessor for UIMetrics);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_1001389C0@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v41 = a3;
  v5 = sub_1000040A8(&qword_1003600E0);
  __chkstk_darwin(v5 - 8);
  v7 = &v41 - v6;
  v8 = sub_1000040A8(&qword_1003600E8);
  __chkstk_darwin(v8);
  v10 = &v41 - v9;
  v11 = sub_1000040A8(&qword_1003600F0);
  __chkstk_darwin(v11);
  v13 = &v41 - v12;
  *v7 = static HorizontalAlignment.center.getter();
  *(v7 + 1) = 0;
  v7[16] = 0;
  v14 = sub_1000040A8(&qword_1003600F8);
  sub_100138DD8(a1, &v7[*(v14 + 44)]);
  v15 = *(a1 + 16);
  if (v15)
  {
    v16 = *(v15 + 112);

    v17 = v16;
    LOBYTE(v16) = static UIContentSizeCategory.>= infix(_:_:)();

    v18 = 0.0;
    if ((v16 & 1) == 0)
    {
      v18 = *(*sub_1000088DC(a2, a2[3]) + 64);
    }

    v19 = *(v15 + 112);

    v20 = static UIContentSizeCategory.>= infix(_:_:)();

    if (v20)
    {
      v21 = INFINITY;
    }

    else
    {
      v21 = *(*sub_1000088DC(a2, a2[3]) + 64);
    }

    static Alignment.center.getter();
    if (v18 > v21)
    {
      static os_log_type_t.fault.getter();
      v22 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();
    }

    _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
    sub_10000CF4C(v7, v10, &qword_1003600E0);
    v23 = &v10[*(v8 + 36)];
    v24 = v47;
    *(v23 + 4) = v46;
    *(v23 + 5) = v24;
    *(v23 + 6) = v48;
    v25 = v43;
    *v23 = v42;
    *(v23 + 1) = v25;
    v26 = v45;
    *(v23 + 2) = v44;
    *(v23 + 3) = v26;
    v27 = static Edge.Set.top.getter();
    EdgeInsets.init(_all:)();
    v29 = v28;
    v31 = v30;
    v33 = v32;
    v35 = v34;
    sub_10000CF4C(v10, v13, &qword_1003600E8);
    v36 = &v13[*(v11 + 36)];
    *v36 = v27;
    *(v36 + 1) = v29;
    *(v36 + 2) = v31;
    *(v36 + 3) = v33;
    *(v36 + 4) = v35;
    v36[40] = 0;
    v37 = static Edge.Set.all.getter();
    v38 = v41;
    sub_10000CF4C(v13, v41, &qword_1003600F0);
    result = sub_1000040A8(&qword_100360100);
    v40 = v38 + *(result + 36);
    *v40 = v37;
    *(v40 + 8) = xmmword_100277A70;
    *(v40 + 24) = xmmword_100277A70;
    *(v40 + 40) = 0;
  }

  else
  {
    type metadata accessor for UIMetrics();
    sub_10013A05C(&qword_100354D40, type metadata accessor for UIMetrics);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_100138DD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v88 = a2;
  v89 = type metadata accessor for AccessibilityTraits();
  v87 = *(v89 - 8);
  __chkstk_darwin(v89);
  v86 = &v78 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Font.Leading();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v78 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000040A8(&qword_100360108);
  __chkstk_darwin(v8 - 8);
  v91 = &v78 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v90 = &v78 - v11;
  v12 = a1;
  v83 = a1;
  v13 = *(a1 + 48);
  v14 = *(a1 + 56);
  v15 = *(v12 + 72);
  *&v84 = *(v12 + 64);
  *(&v84 + 1) = v15;
  *&v108[0] = v13;
  *(&v108[0] + 1) = v14;
  v16 = sub_100031770();

  v85 = v16;
  v17 = Text.init<A>(_:)();
  v19 = v18;
  v21 = v20;
  static Font.largeTitle.getter();
  static Font.Weight.bold.getter();
  Font.weight(_:)();

  (*(v5 + 104))(v7, enum case for Font.Leading.tight(_:), v4);
  Font.leading(_:)();

  (*(v5 + 8))(v7, v4);
  v22 = Text.font(_:)();
  v24 = v23;
  LOBYTE(v7) = v25;

  sub_1000317C4(v17, v19, v21 & 1);

  static Color.white.getter();
  v26 = Text.foregroundColor(_:)();
  v80 = v27;
  v81 = v26;
  v29 = v28;
  v79 = v30;

  sub_1000317C4(v22, v24, v7 & 1);

  v31 = *(v83 + 16);
  if (v31)
  {
    v32 = *(v31 + 112);
    swift_retain_n();
    v33 = v32;
    v34 = static UIContentSizeCategory.>= infix(_:_:)();

    v35 = (v34 & 1) == 0;
    KeyPath = swift_getKeyPath();
    v110 = v29 & 1;
    v83 = v31;
    v37 = *(v31 + 112);
    static Alignment.center.getter();
    v82 = UIContentSizeCategoryAccessibilityExtraLarge;
    if (static UIContentSizeCategory.>= infix(_:_:)())
    {
      static Alignment.center.getter();
      if (static Alignment.== infix(_:_:)())
      {
        static Alignment.leading.getter();
      }
    }

    _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
    *&v111[55] = v116;
    *&v111[71] = v117;
    *&v111[87] = v118;
    *&v111[103] = v119;
    *&v111[7] = v113;
    *&v111[23] = v114;
    *&v111[39] = v115;
    v38 = static Edge.Set.all.getter();
    *(&v104[4] + 1) = *&v111[64];
    *(&v104[5] + 1) = *&v111[80];
    *(&v104[6] + 1) = *&v111[96];
    *(v104 + 1) = *v111;
    *(&v104[1] + 1) = *&v111[16];
    *(&v104[2] + 1) = *&v111[32];
    v112 = 0;
    *&v101 = v81;
    *(&v101 + 1) = v80;
    LOBYTE(v102) = v29 & 1;
    *(&v102 + 1) = v79;
    LOWORD(v103) = 256;
    *(&v103 + 1) = KeyPath;
    LOBYTE(v104[0]) = v35;
    *&v104[7] = *&v111[111];
    *(&v104[3] + 1) = *&v111[48];
    BYTE8(v104[7]) = v38;
    v105 = 0uLL;
    v106 = xmmword_10027BC80;
    v107 = 0;
    v39 = v86;
    static AccessibilityTraits.isHeader.getter();
    sub_1000040A8(&qword_100360110);
    sub_10013A158();
    View.accessibility(addTraits:)();
    (*(v87 + 8))(v39, v89);
    v108[10] = v104[7];
    v108[11] = v105;
    v108[12] = v106;
    v109 = v107;
    v108[6] = v104[3];
    v108[7] = v104[4];
    v108[8] = v104[5];
    v108[9] = v104[6];
    v108[2] = v103;
    v108[3] = v104[0];
    v108[4] = v104[1];
    v108[5] = v104[2];
    v108[0] = v101;
    v108[1] = v102;
    sub_100008FA0(v108, &qword_100360110);
    v101 = v84;

    v40 = Text.init<A>(_:)();
    v42 = v41;
    v44 = v43;
    static Font.title2.getter();
    v45 = Text.font(_:)();
    v47 = v46;
    v49 = v48;

    sub_1000317C4(v40, v42, v44 & 1);

    static Color.gray.getter();
    v50 = Text.foregroundColor(_:)();
    v86 = v51;
    v87 = v50;
    v53 = v52;
    v89 = v54;

    sub_1000317C4(v45, v47, v49 & 1);

    v55 = v83;
    v56 = *(v83 + 112);

    v57 = static UIContentSizeCategory.>= infix(_:_:)();

    v85 = swift_getKeyPath();
    DWORD2(v84) = v53 & 1;
    v99 = v53 & 1;
    v58 = *(v55 + 112);

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
    *&v100[55] = v123;
    *&v100[71] = v124;
    *&v100[87] = v125;
    *&v100[103] = v126;
    *&v100[7] = v120;
    *&v100[23] = v121;
    *&v100[39] = v122;
    v60 = v90;
    v59 = v91;
    sub_100006C20(v90, v91, &qword_100360108);
    v61 = v59;
    v62 = v88;
    sub_100006C20(v61, v88, &qword_100360108);
    v63 = v62 + *(sub_1000040A8(&qword_100360150) + 48);
    v64 = v86;
    v65 = v87;
    *&v92 = v87;
    *(&v92 + 1) = v86;
    v66 = BYTE8(v84);
    LOBYTE(v93) = BYTE8(v84);
    *(&v93 + 1) = *v98;
    DWORD1(v93) = *&v98[3];
    v67 = v89;
    *(&v93 + 1) = v89;
    LOWORD(v94) = 256;
    *(&v94 + 2) = v96;
    WORD3(v94) = v97;
    v68 = v85;
    *(&v94 + 1) = v85;
    LOBYTE(v95[0]) = (v57 & 1) == 0;
    *(&v95[3] + 1) = *&v100[48];
    *(&v95[2] + 1) = *&v100[32];
    *(&v95[1] + 1) = *&v100[16];
    *(v95 + 1) = *v100;
    *&v95[7] = *&v100[111];
    *(&v95[6] + 1) = *&v100[96];
    *(&v95[5] + 1) = *&v100[80];
    *(&v95[4] + 1) = *&v100[64];
    v69 = v93;
    *v63 = v92;
    *(v63 + 16) = v69;
    v70 = v94;
    v71 = v95[0];
    v72 = v95[2];
    *(v63 + 64) = v95[1];
    *(v63 + 80) = v72;
    *(v63 + 32) = v70;
    *(v63 + 48) = v71;
    v73 = v95[3];
    v74 = v95[4];
    v75 = v95[5];
    v76 = v95[6];
    *(v63 + 160) = *&v95[7];
    *(v63 + 128) = v75;
    *(v63 + 144) = v76;
    *(v63 + 96) = v73;
    *(v63 + 112) = v74;
    sub_100006C20(&v92, &v101, &qword_100360128);
    sub_100008FA0(v60, &qword_100360108);
    *&v101 = v65;
    *(&v101 + 1) = v64;
    LOBYTE(v102) = v66;
    *(&v102 + 1) = *v98;
    DWORD1(v102) = *&v98[3];
    *(&v102 + 1) = v67;
    LOWORD(v103) = 256;
    *(&v103 + 2) = v96;
    WORD3(v103) = v97;
    *(&v103 + 1) = v68;
    LOBYTE(v104[0]) = (v57 & 1) == 0;
    *(&v104[3] + 1) = *&v100[48];
    *(&v104[2] + 1) = *&v100[32];
    *(&v104[1] + 1) = *&v100[16];
    *(v104 + 1) = *v100;
    *&v104[7] = *&v100[111];
    *(&v104[6] + 1) = *&v100[96];
    *(&v104[5] + 1) = *&v100[80];
    *(&v104[4] + 1) = *&v100[64];
    sub_100008FA0(&v101, &qword_100360128);
    return sub_100008FA0(v91, &qword_100360108);
  }

  else
  {
    type metadata accessor for UIMetrics();
    sub_10013A05C(&qword_100354D40, type metadata accessor for UIMetrics);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

double sub_1001397E4@<D0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  *a2 = static HorizontalAlignment.center.getter();
  *(a2 + 8) = 0x402C000000000000;
  *(a2 + 16) = 0;
  v4 = sub_1000040A8(&qword_1003600A0);
  sub_100139950(a1, (a2 + *(v4 + 44)));
  LOBYTE(a1) = static Edge.Set.top.getter();
  v5 = a2 + *(sub_1000040A8(&qword_1003600A8) + 36);
  *v5 = a1;
  *(v5 + 8) = 0u;
  *(v5 + 24) = 0u;
  *(v5 + 40) = 1;
  v6 = static Edge.Set.bottom.getter();
  if (qword_100353988 != -1)
  {
    swift_once();
  }

  EdgeInsets.init(_all:)();
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v15 = a2 + *(sub_1000040A8(&qword_1003600B0) + 36);
  *v15 = v6;
  *(v15 + 8) = v8;
  *(v15 + 16) = v10;
  *(v15 + 24) = v12;
  *(v15 + 32) = v14;
  *(v15 + 40) = 0;
  v16 = static Edge.Set.all.getter();
  v17 = a2 + *(sub_1000040A8(&qword_1003600B8) + 36);
  *v17 = v16;
  result = 0.0;
  *(v17 + 8) = xmmword_100277A70;
  *(v17 + 24) = xmmword_100277A70;
  *(v17 + 40) = 0;
  return result;
}

uint64_t sub_100139950@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v33 = a2;
  v3 = sub_1000040A8(&qword_1003600C0);
  v30 = *(v3 - 8);
  v4 = v30;
  __chkstk_darwin(v3);
  v34 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v29 - v7;
  v35[0] = *(a1 + 80);
  swift_getKeyPath();

  sub_1000040A8(&qword_1003600C8);
  sub_100009274(&qword_1003600D0, &qword_1003600C8);
  sub_10010F52C();
  ForEach<>.init(_:id:content:)();
  v9 = [objc_opt_self() mainBundle];
  v46._object = 0x800000010029A560;
  v10._countAndFlagsBits = 0x6C65636E6143;
  v10._object = 0xE600000000000000;
  v11._countAndFlagsBits = 0;
  v11._object = 0xE000000000000000;
  v46._countAndFlagsBits = 0xD00000000000001BLL;
  v12 = NSLocalizedString(_:tableName:bundle:value:comment:)(v10, 0, v9, v11, v46);
  countAndFlagsBits = v12._countAndFlagsBits;
  object = v12._object;

  v13 = swift_allocObject();
  v14 = *(a1 + 48);
  *(v13 + 48) = *(a1 + 32);
  *(v13 + 64) = v14;
  *(v13 + 80) = *(a1 + 64);
  *(v13 + 96) = *(a1 + 80);
  v15 = *(a1 + 16);
  *(v13 + 16) = *a1;
  *(v13 + 32) = v15;
  sub_100139FBC(a1, v35);
  type metadata accessor for UIMetrics();
  sub_10013A05C(&qword_100354D40, type metadata accessor for UIMetrics);
  v16 = EnvironmentObject.init()();
  v18 = v17;
  v19 = *(v4 + 16);
  v20 = v34;
  v19(v34, v8, v3);
  v21 = v33;
  v19(v33, v20, v3);
  v22 = &v21[*(sub_1000040A8(&qword_1003600D8) + 48)];
  *&v41 = v16;
  *(&v41 + 1) = v18;
  v23 = countAndFlagsBits;
  v24 = object;
  *&v42 = countAndFlagsBits;
  *(&v42 + 1) = object;
  *&v43 = 0;
  *(&v43 + 1) = 0xE000000000000000;
  LOBYTE(v44) = 0;
  *(&v44 + 1) = *v40;
  DWORD1(v44) = *&v40[3];
  *(&v44 + 1) = sub_10013A054;
  v45 = v13;
  *(v22 + 8) = v13;
  v25 = v42;
  *v22 = v41;
  *(v22 + 1) = v25;
  v26 = v44;
  *(v22 + 2) = v43;
  *(v22 + 3) = v26;
  sub_1000517F8(&v41, v35);
  v27 = *(v30 + 8);
  v27(v8, v3);
  v35[0] = v16;
  v35[1] = v18;
  v35[2] = v23;
  v35[3] = v24;
  v35[4] = 0;
  v35[5] = 0xE000000000000000;
  v36 = 0;
  *v37 = *v40;
  *&v37[3] = *&v40[3];
  v38 = sub_10013A054;
  v39 = v13;
  sub_100051854(v35);
  return (v27)(v34, v3);
}

uint64_t sub_100139D44@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  v6 = a1[2];
  v5 = a1[3];
  type metadata accessor for UIMetrics();
  sub_10013A05C(&qword_100354D40, type metadata accessor for UIMetrics);

  result = EnvironmentObject.init()();
  *a2 = result;
  *(a2 + 8) = v8;
  *(a2 + 16) = v4;
  *(a2 + 24) = v3;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0xE000000000000000;
  *(a2 + 48) = 0;
  *(a2 + 56) = v6;
  *(a2 + 64) = v5;
  return result;
}

uint64_t sub_100139DE8(void *a1)
{
  if (*a1)
  {
    v1 = a1[4];
    v2 = a1[5];

    sub_1001921F8(v1, v2);
  }

  else
  {
    type metadata accessor for TransitionAlertModel();
    sub_10013A05C(&qword_10035F210, type metadata accessor for TransitionAlertModel);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_100139ED4()
{

  sub_100008964(v0 + 104);

  return _swift_deallocObject(v0, 144, 7);
}

uint64_t sub_100139F48()
{
  sub_100008964(v0 + 16);

  return _swift_deallocObject(v0, 144, 7);
}

uint64_t sub_100139FF4()
{

  return _swift_deallocObject(v0, 104, 7);
}

uint64_t sub_10013A05C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10013A0B0@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.multilineTextAlignment.getter();
  *a1 = result;
  return result;
}

uint64_t sub_10013A0DC@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.multilineTextAlignment.getter();
  *a1 = result;
  return result;
}

unint64_t sub_10013A158()
{
  result = qword_100360118;
  if (!qword_100360118)
  {
    sub_100008CF0(&qword_100360110);
    sub_10013A1E4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100360118);
  }

  return result;
}

unint64_t sub_10013A1E4()
{
  result = qword_100360120;
  if (!qword_100360120)
  {
    sub_100008CF0(&qword_100360128);
    sub_10013A270();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100360120);
  }

  return result;
}

unint64_t sub_10013A270()
{
  result = qword_100360130;
  if (!qword_100360130)
  {
    sub_100008CF0(&qword_100360138);
    sub_10013A328();
    sub_100009274(&qword_100356750, &qword_100356758);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100360130);
  }

  return result;
}

unint64_t sub_10013A328()
{
  result = qword_100360140;
  if (!qword_100360140)
  {
    sub_100008CF0(&qword_100360148);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100360140);
  }

  return result;
}

uint64_t sub_10013A3F4()
{
  v1 = v0;
  v2 = [objc_allocWithZone(NSUserDefaults) init];
  *(v0 + 16) = v2;
  *(v0 + 24) = v2;
  *(v0 + 32) = 0xD000000000000010;
  *(v0 + 40) = 0x800000010029E8D0;
  *(v0 + 48) = 2;
  *(v0 + 56) = v2;
  *(v0 + 64) = 0xD000000000000021;
  *(v0 + 72) = 0x800000010029E8F0;
  *(v0 + 80) = 2;
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
    v14 = v9;
    *v8 = 136446210;
    type metadata accessor for SOSBuddyPersistence();

    v10 = String.init<A>(describing:)();
    v12 = sub_10017C9E8(v10, v11, &v14);

    *(v8 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v6, v7, "[%{public}s] init", v8, 0xCu);
    sub_100008964(v9);
  }

  return v1;
}

uint64_t sub_10013A5D0()
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
    v13 = v6;
    *v5 = 136446210;
    type metadata accessor for SOSBuddyPersistence();

    v7 = String.init<A>(describing:)();
    v9 = sub_10017C9E8(v7, v8, &v13);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "[%{public}s] deinit", v5, 0xCu);
    sub_100008964(v6);
  }

  v10 = *(v1 + 24);

  v11 = *(v1 + 56);

  return v1;
}

uint64_t sub_10013A76C()
{
  sub_10013A5D0();

  return swift_deallocClassInstance();
}

unint64_t sub_10013A7C4()
{
  result = sub_10013AD28();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for Optional();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_10013A854(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
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

  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
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
      if ((v6 & 0x80000000) != 0)
      {
        v18 = (*(v4 + 48))((((a1 + 15) & 0xFFFFFFFFFFFFFFF8) + v8 + 16) & ~v8);
        if (v18 >= 2)
        {
          return v18 - 1;
        }

        else
        {
          return 0;
        }
      }

      else
      {
        v17 = *a1;
        if (*a1 >= 0xFFFFFFFFuLL)
        {
          LODWORD(v17) = -1;
        }

        return (v17 + 1);
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

void sub_10013AA14(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = 0;
  v7 = *(*(a4 + 16) - 8);
  v8 = *(v7 + 84);
  v9 = v8 - 1;
  if (!v8)
  {
    v9 = 0;
  }

  if (v9 <= 0x7FFFFFFF)
  {
    v10 = 0x7FFFFFFF;
  }

  else
  {
    v10 = v9;
  }

  v11 = *(v7 + 80);
  v12 = *(*(*(a4 + 16) - 8) + 64);
  if (!v8)
  {
    ++v12;
  }

  v13 = ((v11 + 24) & ~v11) + v12;
  v14 = a3 >= v10;
  v15 = a3 - v10;
  if (v15 == 0 || !v14)
  {
LABEL_20:
    if (v10 < a2)
    {
      goto LABEL_21;
    }

    goto LABEL_30;
  }

  if (v13 > 3)
  {
    v6 = 1;
    if (v10 < a2)
    {
      goto LABEL_21;
    }

    goto LABEL_30;
  }

  v16 = ((v15 + ~(-1 << (8 * v13))) >> (8 * v13)) + 1;
  if (!HIWORD(v16))
  {
    if (v16 < 0x100)
    {
      v17 = 1;
    }

    else
    {
      v17 = 2;
    }

    if (v16 >= 2)
    {
      v6 = v17;
    }

    else
    {
      v6 = 0;
    }

    goto LABEL_20;
  }

  v6 = 4;
  if (v10 < a2)
  {
LABEL_21:
    v18 = ~v10 + a2;
    if (v13 < 4)
    {
      v19 = (v18 >> (8 * v13)) + 1;
      if (v13)
      {
        v20 = v18 & ~(-1 << (8 * v13));
        bzero(a1, v13);
        if (v13 != 3)
        {
          if (v13 == 2)
          {
            *a1 = v20;
            if (v6 > 1)
            {
LABEL_63:
              if (v6 == 2)
              {
                *&a1[v13] = v19;
              }

              else
              {
                *&a1[v13] = v19;
              }

              return;
            }
          }

          else
          {
            *a1 = v18;
            if (v6 > 1)
            {
              goto LABEL_63;
            }
          }

          goto LABEL_60;
        }

        *a1 = v20;
        a1[2] = BYTE2(v20);
      }

      if (v6 > 1)
      {
        goto LABEL_63;
      }
    }

    else
    {
      bzero(a1, v13);
      *a1 = v18;
      v19 = 1;
      if (v6 > 1)
      {
        goto LABEL_63;
      }
    }

LABEL_60:
    if (v6)
    {
      a1[v13] = v19;
    }

    return;
  }

LABEL_30:
  if (v6 > 1)
  {
    if (v6 != 2)
    {
      *&a1[v13] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_37;
    }

    *&a1[v13] = 0;
LABEL_36:
    if (!a2)
    {
      return;
    }

    goto LABEL_37;
  }

  if (!v6)
  {
    goto LABEL_36;
  }

  a1[v13] = 0;
  if (!a2)
  {
    return;
  }

LABEL_37:
  if ((v9 & 0x80000000) != 0)
  {
    v22 = ((((a1 + 15) & 0xFFFFFFFFFFFFFFF8) + v11 + 16) & ~v11);
    if (v9 >= a2)
    {
      v26 = *(v7 + 56);
      v27 = a2 + 1;
      v28 = (((a1 + 15) & 0xFFFFFFFFFFFFFFF8) + v11 + 16) & ~v11;

      v26(v28, v27);
    }

    else
    {
      if (v12 <= 3)
      {
        v23 = ~(-1 << (8 * v12));
      }

      else
      {
        v23 = -1;
      }

      if (v12)
      {
        v24 = v23 & (~v9 + a2);
        if (v12 <= 3)
        {
          v25 = v12;
        }

        else
        {
          v25 = 4;
        }

        bzero(v22, v12);
        if (v25 > 2)
        {
          if (v25 == 3)
          {
            *v22 = v24;
            v22[2] = BYTE2(v24);
          }

          else
          {
            *v22 = v24;
          }
        }

        else if (v25 == 1)
        {
          *v22 = v24;
        }

        else
        {
          *v22 = v24;
        }
      }
    }
  }

  else
  {
    if ((a2 & 0x80000000) != 0)
    {
      v21 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v21 = a2 - 1;
    }

    *a1 = v21;
  }
}

unint64_t sub_10013AD28()
{
  result = qword_1003602C8;
  if (!qword_1003602C8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1003602C8);
  }

  return result;
}

id ConnectionAssistantRenderer.Buffers.Buffer.init(device:)(void *a1, uint64_t a2)
{
  v2 = [a1 newBufferWithLength:*(*(a2 - 8) + 64) options:1];
  if (!v2)
  {
    sub_100022AD4();
    swift_allocError();
    swift_willThrow();
  }

  swift_unknownObjectRelease();
  return v2;
}

uint64_t *ConnectionAssistantRenderer.Buffers.texCoords.unsafeMutableAddressor()
{
  if (qword_100353AE8 != -1)
  {
    swift_once();
  }

  return &static ConnectionAssistantRenderer.Buffers.texCoords;
}

uint64_t ConnectionAssistantRenderer.Buffers.Buffer.contents.setter(uint64_t a1, void *a2, uint64_t a3)
{
  swift_unknownObjectRetain();
  v6 = [a2 contents];
  v7 = a2;
  v8 = *(*(a3 - 8) + 40);

  return v8(v6, a1, a3);
}

uint64_t ConnectionAssistantRenderer.Buffers.Buffer.contents.getter@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = [swift_unknownObjectRetain() contents];
  v7 = a1;
  v8 = *(*(a2 - 8) + 16);

  return v8(a3, v6, a2);
}

void (*ConnectionAssistantRenderer.Buffers.Buffer.contents.modify(void *a1, void *a2, uint64_t a3))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  v7 = v6;
  *a1 = v6;
  *v6 = a2;
  v6[1] = a3;
  v8 = *(a3 - 8);
  v6[2] = v8;
  v9 = *(v8 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6[3] = swift_coroFrameAlloc();
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v6[3] = malloc(*(v8 + 64));
    v10 = malloc(v9);
  }

  v7[4] = v10;
  ConnectionAssistantRenderer.Buffers.Buffer.contents.getter(a2, a3, v10);
  return sub_10013B090;
}

void sub_10013B090(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  v4 = *(*a1 + 32);
  if (a2)
  {
    v5 = *(v2 + 8);
    v6 = *(v2 + 16);
    v7 = *v2;
    (*(v6 + 16))(*(*a1 + 24), v4, v5);
    ConnectionAssistantRenderer.Buffers.Buffer.contents.setter(v3, v7, v5);
    (*(v6 + 8))(v4, v5);
  }

  else
  {
    ConnectionAssistantRenderer.Buffers.Buffer.contents.setter(*(*a1 + 32), *v2, *(v2 + 8));
  }

  free(v4);
  free(v3);

  free(v2);
}

double sub_10013B154()
{
  static ConnectionAssistantRenderer.Buffers.texCoords = 0;
  qword_100381F08 = 1065353216;
  qword_100381F10 = 0x3F80000000000000;
  __asm { FMOV            V0.2S, #1.0 }

  qword_100381F18 = *&result;
  return result;
}

double static ConnectionAssistantRenderer.Buffers.texCoords.getter()
{
  if (qword_100353AE8 != -1)
  {
    swift_once();
  }

  return *&static ConnectionAssistantRenderer.Buffers.texCoords;
}

uint64_t ConnectionAssistantRenderer.Buffers.__allocating_init(device:)(void *a1)
{
  v2 = swift_allocObject();
  ConnectionAssistantRenderer.Buffers.init(device:)(a1);
  return v2;
}

void *ConnectionAssistantRenderer.Buffers.init(device:)(id a1)
{
  v1[2] = 4;
  if (qword_100353AE8 != -1)
  {
    swift_once();
  }

  __asm { FMOV            V0.2S, #-1.0 }

  *v13 = _D0;
  v13[1] = qword_100381F10;
  __asm { FMOV            V1.2S, #1.0 }

  *&v13[2] = -_D1;
  v13[3] = qword_100381F18;
  *&v13[4] = -_D0;
  v13[5] = static ConnectionAssistantRenderer.Buffers.texCoords;
  *&v13[6] = _D1;
  v13[7] = qword_100381F08;
  v9 = [a1 newBufferWithBytes:v13 length:64 options:1];
  if (!v9)
  {
    sub_100022AD4();
    swift_allocError();
    swift_willThrow();
LABEL_8:
    swift_unknownObjectRelease();
    type metadata accessor for ConnectionAssistantRenderer.Buffers();
    swift_deallocPartialClassInstance();
    return v1;
  }

  v1[3] = v9;
  v10 = [a1 newBufferWithLength:80 options:1];
  if (!v10)
  {
    sub_100022AD4();
    swift_allocError();
    swift_willThrow();
    swift_unknownObjectRelease();
    goto LABEL_8;
  }

  v11 = v10;
  swift_unknownObjectRelease();
  v1[4] = v11;
  return v1;
}

uint64_t ConnectionAssistantRenderer.Buffers.deinit()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v0;
}

uint64_t ConnectionAssistantRenderer.Buffers.__deallocating_deinit()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

unint64_t sub_10013B434()
{
  result = qword_1003602D8;
  if (!qword_1003602D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003602D8);
  }

  return result;
}

uint64_t sub_10013B498()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_10013B4EC(unsigned __int8 a1)
{
  if (a1 > 2u)
  {
    if (a1 - 4 < 2)
    {
      v1 = [objc_opt_self() mainBundle];
      v12 = 0x800000010029EFE0;
      v2 = 0x6553206F74206F47;
      v5 = 0xEE0073676E697474;
      v3 = 0x5072656972726143;
      v4 = 0xED00006E6F656769;
      goto LABEL_7;
    }

    v1 = [objc_opt_self() mainBundle];
    v2 = 0xD000000000000011;
    v12 = 0x800000010029F030;
    v3 = 0x5072656972726143;
    v4 = 0xED00006E6F656769;
    v5 = 0x800000010029F010;
    v9 = 0xD000000000000033;
LABEL_11:
    v6.super.isa = v1;
    v7 = 0;
    v8 = 0xE000000000000000;
    goto LABEL_12;
  }

  if (!a1)
  {
    v1 = [objc_opt_self() mainBundle];
    v2 = 0xD00000000000001ALL;
    v12 = 0x800000010029F070;
    v3 = 0x5072656972726143;
    v4 = 0xED00006E6F656769;
    v5 = 0x800000010029DDC0;
    v9 = 0xD00000000000002ELL;
    goto LABEL_11;
  }

  if (a1 != 1)
  {
    v1 = [objc_opt_self() mainBundle];
    v2 = 0xD00000000000001BLL;
    v12 = 0x800000010029C8A0;
    v3 = 0x5072656972726143;
    v4 = 0xED00006E6F656769;
    v5 = 0x800000010029C880;
    v9 = 0xD00000000000003ALL;
    goto LABEL_11;
  }

  v1 = [objc_opt_self() mainBundle];
  v2 = 0xD000000000000014;
  v12 = 0x800000010029DCB0;
  v3 = 0x5072656972726143;
  v4 = 0xED00006E6F656769;
  v5 = 0x800000010029DC90;
LABEL_7:
  v6.super.isa = v1;
  v7 = 0;
  v8 = 0xE000000000000000;
  v9 = 0xD000000000000029;
LABEL_12:
  countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(*&v2, *&v3, v6, *&v7, *(&v12 - 1))._countAndFlagsBits;

  return countAndFlagsBits;
}

uint64_t sub_10013B7D8(unsigned __int8 a1, uint64_t a2)
{
  v4 = objc_opt_self();
  v5 = [v4 mainBundle];
  if (a1 > 3u)
  {
    if (a1 <= 5u)
    {
      if (a1 == 4)
      {
        v61._countAndFlagsBits = 0xD000000000000013;
        v194._object = 0x800000010029ED30;
        v61._object = 0x800000010029ED10;
        v194._countAndFlagsBits = 0xD000000000000068;
        v62.value._countAndFlagsBits = 0x5072656972726143;
        v62.value._object = 0xED00006E6F656769;
        v63._countAndFlagsBits = 0;
        v63._object = 0xE000000000000000;
        countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v61, v62, v5, v63, v194)._countAndFlagsBits;

        sub_1000040A8(&qword_100359B28);
        v64 = swift_allocObject();
        *(v64 + 16) = xmmword_100279160;
        v65 = [v4 mainBundle];
        v195._object = 0x800000010029EDF0;
        v66._countAndFlagsBits = 0xD000000000000044;
        v66._object = 0x800000010029EDA0;
        v195._countAndFlagsBits = 0xD000000000000031;
        v67.value._countAndFlagsBits = 0x5072656972726143;
        v67.value._object = 0xED00006E6F656769;
        v68._countAndFlagsBits = 0;
        v68._object = 0xE000000000000000;
        v69 = NSLocalizedString(_:tableName:bundle:value:comment:)(v66, v67, v65, v68, v195);

        *(v64 + 32) = v69;
        v70 = *(a2 + 16);
        if (v70)
        {
          sub_100187314(0, v70, 0);
          v71 = (a2 + 32);
          do
          {
            v73 = *v71++;
            v72 = v73;
            v74 = sub_10013B4EC(v73);
            v77 = _swiftEmptyArrayStorage[2];
            v76 = _swiftEmptyArrayStorage[3];
            if (v77 >= v76 >> 1)
            {
              v171 = v75;
              v179 = v74;
              sub_100187314((v76 > 1), v77 + 1, 1);
              v75 = v171;
              v74 = v179;
            }

            _swiftEmptyArrayStorage[2] = v77 + 1;
            v78 = &_swiftEmptyArrayStorage[3 * v77];
            *(v78 + 32) = v72;
            v78[5] = v74;
            v78[6] = v75;
            --v70;
          }

          while (v70);
        }
      }

      else
      {
        v151._countAndFlagsBits = 0xD000000000000015;
        v204._object = 0x800000010029EC40;
        v151._object = 0x800000010029EB30;
        v204._countAndFlagsBits = 0xD00000000000005ELL;
        v152.value._countAndFlagsBits = 0x5072656972726143;
        v152.value._object = 0xED00006E6F656769;
        v153._countAndFlagsBits = 0;
        v153._object = 0xE000000000000000;
        countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v151, v152, v5, v153, v204)._countAndFlagsBits;

        sub_1000040A8(&qword_100359B28);
        v154 = swift_allocObject();
        *(v154 + 16) = xmmword_100279160;
        v155 = [v4 mainBundle];
        v205._object = 0x800000010029ECE0;
        v156._countAndFlagsBits = 0xD000000000000037;
        v156._object = 0x800000010029ECA0;
        v205._countAndFlagsBits = 0xD000000000000025;
        v157.value._countAndFlagsBits = 0x5072656972726143;
        v157.value._object = 0xED00006E6F656769;
        v158._countAndFlagsBits = 0;
        v158._object = 0xE000000000000000;
        v159 = NSLocalizedString(_:tableName:bundle:value:comment:)(v156, v157, v155, v158, v205);

        *(v154 + 32) = v159;
        v160 = *(a2 + 16);
        if (v160)
        {
          sub_100187314(0, v160, 0);
          v161 = (a2 + 32);
          do
          {
            v163 = *v161++;
            v162 = v163;
            v164 = sub_10013B4EC(v163);
            v167 = _swiftEmptyArrayStorage[2];
            v166 = _swiftEmptyArrayStorage[3];
            if (v167 >= v166 >> 1)
            {
              v175 = v165;
              v184 = v164;
              sub_100187314((v166 > 1), v167 + 1, 1);
              v165 = v175;
              v164 = v184;
            }

            _swiftEmptyArrayStorage[2] = v167 + 1;
            v168 = &_swiftEmptyArrayStorage[3 * v167];
            *(v168 + 32) = v162;
            v168[5] = v164;
            v168[6] = v165;
            --v160;
          }

          while (v160);
        }
      }
    }

    else if (a1 == 6)
    {
      v79._countAndFlagsBits = 0xD000000000000015;
      v196._object = 0x800000010029EB50;
      v79._object = 0x800000010029EB30;
      v196._countAndFlagsBits = 0xD000000000000064;
      v80.value._countAndFlagsBits = 0x5072656972726143;
      v80.value._object = 0xED00006E6F656769;
      v81._countAndFlagsBits = 0;
      v81._object = 0xE000000000000000;
      countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v79, v80, v5, v81, v196)._countAndFlagsBits;

      sub_1000040A8(&qword_100359B28);
      v82 = swift_allocObject();
      *(v82 + 16) = xmmword_100279160;
      v83 = [v4 mainBundle];
      v197._object = 0x800000010029EC10;
      v84._countAndFlagsBits = 0xD000000000000043;
      v84._object = 0x800000010029EBC0;
      v197._countAndFlagsBits = 0xD00000000000002DLL;
      v85.value._countAndFlagsBits = 0x5072656972726143;
      v85.value._object = 0xED00006E6F656769;
      v86._countAndFlagsBits = 0;
      v86._object = 0xE000000000000000;
      v87 = NSLocalizedString(_:tableName:bundle:value:comment:)(v84, v85, v83, v86, v197);

      *(v82 + 32) = v87;
      v88 = *(a2 + 16);
      if (v88)
      {
        sub_100187314(0, v88, 0);
        v89 = (a2 + 32);
        do
        {
          v91 = *v89++;
          v90 = v91;
          v92 = sub_10013B4EC(v91);
          v95 = _swiftEmptyArrayStorage[2];
          v94 = _swiftEmptyArrayStorage[3];
          if (v95 >= v94 >> 1)
          {
            v172 = v93;
            v180 = v92;
            sub_100187314((v94 > 1), v95 + 1, 1);
            v93 = v172;
            v92 = v180;
          }

          _swiftEmptyArrayStorage[2] = v95 + 1;
          v96 = &_swiftEmptyArrayStorage[3 * v95];
          *(v96 + 32) = v90;
          v96[5] = v92;
          v96[6] = v93;
          --v88;
        }

        while (v88);
      }
    }

    else if (a1 == 7)
    {
      v6._countAndFlagsBits = 0xD000000000000018;
      v188._object = 0x800000010029E9B0;
      v6._object = 0x800000010029EAC0;
      v188._countAndFlagsBits = 0xD000000000000051;
      v7.value._countAndFlagsBits = 0x5072656972726143;
      v7.value._object = 0xED00006E6F656769;
      v8._countAndFlagsBits = 0;
      v8._object = 0xE000000000000000;
      countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v6, v7, v5, v8, v188)._countAndFlagsBits;

      sub_1000040A8(&qword_100359B28);
      v9 = swift_allocObject();
      *(v9 + 16) = xmmword_100279160;
      v10 = [v4 mainBundle];
      v189._object = 0x800000010029EA60;
      v11._countAndFlagsBits = 0xD000000000000044;
      v11._object = 0x800000010029EAE0;
      v189._countAndFlagsBits = 0xD000000000000050;
      v12.value._countAndFlagsBits = 0x5072656972726143;
      v12.value._object = 0xED00006E6F656769;
      v13._countAndFlagsBits = 0;
      v13._object = 0xE000000000000000;
      v14 = NSLocalizedString(_:tableName:bundle:value:comment:)(v11, v12, v10, v13, v189);

      *(v9 + 32) = v14;
      v15 = *(a2 + 16);
      if (v15)
      {
        sub_100187314(0, v15, 0);
        v16 = (a2 + 32);
        do
        {
          v18 = *v16++;
          v17 = v18;
          v19 = sub_10013B4EC(v18);
          v22 = _swiftEmptyArrayStorage[2];
          v21 = _swiftEmptyArrayStorage[3];
          if (v22 >= v21 >> 1)
          {
            v169 = v20;
            v176 = v19;
            sub_100187314((v21 > 1), v22 + 1, 1);
            v20 = v169;
            v19 = v176;
          }

          _swiftEmptyArrayStorage[2] = v22 + 1;
          v23 = &_swiftEmptyArrayStorage[3 * v22];
          *(v23 + 32) = v17;
          v23[5] = v19;
          v23[6] = v20;
          --v15;
        }

        while (v15);
      }
    }

    else
    {
      v202._object = 0x800000010029E9B0;
      v133._countAndFlagsBits = 0xD00000000000001ALL;
      v133._object = 0x800000010029E990;
      v202._countAndFlagsBits = 0xD000000000000051;
      v134.value._countAndFlagsBits = 0x5072656972726143;
      v134.value._object = 0xED00006E6F656769;
      v135._countAndFlagsBits = 0;
      v135._object = 0xE000000000000000;
      countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v133, v134, v5, v135, v202)._countAndFlagsBits;

      sub_1000040A8(&qword_100359B28);
      v136 = swift_allocObject();
      *(v136 + 16) = xmmword_100279160;
      v137 = [v4 mainBundle];
      v203._object = 0x800000010029EA60;
      v138._countAndFlagsBits = 0xD000000000000046;
      v138._object = 0x800000010029EA10;
      v203._countAndFlagsBits = 0xD000000000000050;
      v139.value._countAndFlagsBits = 0x5072656972726143;
      v139.value._object = 0xED00006E6F656769;
      v140._countAndFlagsBits = 0;
      v140._object = 0xE000000000000000;
      v141 = NSLocalizedString(_:tableName:bundle:value:comment:)(v138, v139, v137, v140, v203);

      *(v136 + 32) = v141;
      v142 = *(a2 + 16);
      if (v142)
      {
        sub_100187314(0, v142, 0);
        v143 = (a2 + 32);
        do
        {
          v145 = *v143++;
          v144 = v145;
          v146 = sub_10013B4EC(v145);
          v149 = _swiftEmptyArrayStorage[2];
          v148 = _swiftEmptyArrayStorage[3];
          if (v149 >= v148 >> 1)
          {
            v174 = v147;
            v183 = v146;
            sub_100187314((v148 > 1), v149 + 1, 1);
            v147 = v174;
            v146 = v183;
          }

          _swiftEmptyArrayStorage[2] = v149 + 1;
          v150 = &_swiftEmptyArrayStorage[3 * v149];
          *(v150 + 32) = v144;
          v150[5] = v146;
          v150[6] = v147;
          --v142;
        }

        while (v142);
      }
    }

    return countAndFlagsBits;
  }

  if (a1 <= 1u)
  {
    if (a1)
    {
      v198._object = 0x800000010029DBF0;
      v97._object = 0x800000010029DBD0;
      v198._countAndFlagsBits = 0xD00000000000002CLL;
      v97._countAndFlagsBits = 0xD000000000000019;
      v98.value._countAndFlagsBits = 0x5072656972726143;
      v98.value._object = 0xED00006E6F656769;
      v99._countAndFlagsBits = 0;
      v99._object = 0xE000000000000000;
      countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v97, v98, v5, v99, v198)._countAndFlagsBits;

      sub_1000040A8(&qword_100359B28);
      v100 = swift_allocObject();
      *(v100 + 16) = xmmword_100279160;
      v101 = [v4 mainBundle];
      v199._object = 0x800000010029DC60;
      v102._countAndFlagsBits = 0xD00000000000003CLL;
      v102._object = 0x800000010029DC20;
      v199._countAndFlagsBits = 0xD00000000000002BLL;
      v103.value._countAndFlagsBits = 0x5072656972726143;
      v103.value._object = 0xED00006E6F656769;
      v104._countAndFlagsBits = 0;
      v104._object = 0xE000000000000000;
      v105 = NSLocalizedString(_:tableName:bundle:value:comment:)(v102, v103, v101, v104, v199);

      *(v100 + 32) = v105;
      v106 = *(a2 + 16);
      if (v106)
      {
        sub_100187314(0, v106, 0);
        v107 = (a2 + 32);
        do
        {
          v109 = *v107++;
          v108 = v109;
          v110 = sub_10013B4EC(v109);
          v113 = _swiftEmptyArrayStorage[2];
          v112 = _swiftEmptyArrayStorage[3];
          if (v113 >= v112 >> 1)
          {
            v173 = v111;
            v181 = v110;
            sub_100187314((v112 > 1), v113 + 1, 1);
            v111 = v173;
            v110 = v181;
          }

          _swiftEmptyArrayStorage[2] = v113 + 1;
          v114 = &_swiftEmptyArrayStorage[3 * v113];
          *(v114 + 32) = v108;
          v114[5] = v110;
          v114[6] = v111;
          --v106;
        }

        while (v106);
      }
    }

    else
    {
      v190._object = 0x800000010029DCE0;
      v24._object = 0x800000010029DBD0;
      v190._countAndFlagsBits = 0xD000000000000028;
      v24._countAndFlagsBits = 0xD000000000000019;
      v25.value._countAndFlagsBits = 0x5072656972726143;
      v25.value._object = 0xED00006E6F656769;
      v26._countAndFlagsBits = 0;
      v26._object = 0xE000000000000000;
      countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v24, v25, v5, v26, v190)._countAndFlagsBits;

      sub_1000040A8(&qword_100359B28);
      v27 = swift_allocObject();
      *(v27 + 16) = xmmword_100279160;
      v28 = [v4 mainBundle];
      v191._object = 0x800000010029DD90;
      v29._countAndFlagsBits = 0x1000000000000074;
      v29._object = 0x800000010029DD10;
      v191._countAndFlagsBits = 0xD000000000000027;
      v30.value._countAndFlagsBits = 0x5072656972726143;
      v30.value._object = 0xED00006E6F656769;
      v31._countAndFlagsBits = 0;
      v31._object = 0xE000000000000000;
      v32 = NSLocalizedString(_:tableName:bundle:value:comment:)(v29, v30, v28, v31, v191);

      *(v27 + 32) = v32;
      v33 = *(a2 + 16);
      if (v33)
      {
        sub_100187314(0, v33, 0);
        v34 = (a2 + 32);
        do
        {
          v36 = *v34++;
          v35 = v36;
          v37 = sub_10013B4EC(v36);
          v40 = _swiftEmptyArrayStorage[2];
          v39 = _swiftEmptyArrayStorage[3];
          if (v40 >= v39 >> 1)
          {
            v170 = v38;
            v177 = v37;
            sub_100187314((v39 > 1), v40 + 1, 1);
            v38 = v170;
            v37 = v177;
          }

          _swiftEmptyArrayStorage[2] = v40 + 1;
          v41 = &_swiftEmptyArrayStorage[3 * v40];
          *(v41 + 32) = v35;
          v41[5] = v37;
          v41[6] = v38;
          --v33;
        }

        while (v33);
      }
    }

    return countAndFlagsBits;
  }

  if (a1 == 2)
  {
    v192._object = 0x800000010029EED0;
    v42._object = 0x8000000100297040;
    v192._countAndFlagsBits = 0xD00000000000004DLL;
    v42._countAndFlagsBits = 0xD000000000000019;
    v43._countAndFlagsBits = 0;
    v43._object = 0xE000000000000000;
    v44 = NSLocalizedString(_:tableName:bundle:value:comment:)(v42, 0, v5, v43, v192)._countAndFlagsBits;

    sub_1000040A8(&qword_100359B28);
    v45 = swift_allocObject();
    *(v45 + 16) = xmmword_100279160;
    v46 = [v4 mainBundle];
    v193._object = 0x800000010029EFB0;
    v47.value._countAndFlagsBits = 0x5072656972726143;
    v47.value._object = 0xED00006E6F656769;
    v48._countAndFlagsBits = 0x100000000000008ELL;
    v48._object = 0x800000010029EF20;
    v193._countAndFlagsBits = 0xD000000000000025;
    v49._countAndFlagsBits = 0;
    v49._object = 0xE000000000000000;
    v50 = NSLocalizedString(_:tableName:bundle:value:comment:)(v48, v47, v46, v49, v193);

    *(v45 + 32) = v50;
    v51 = *(a2 + 16);
    if (v51)
    {
      v52 = v44;
      sub_100187314(0, v51, 0);
      v53 = (a2 + 32);
      do
      {
        v55 = *v53++;
        v54 = v55;
        v56 = sub_10013B4EC(v55);
        v59 = _swiftEmptyArrayStorage[2];
        v58 = _swiftEmptyArrayStorage[3];
        if (v59 >= v58 >> 1)
        {
          v178 = v57;
          v186 = v56;
          sub_100187314((v58 > 1), v59 + 1, 1);
          v57 = v178;
          v56 = v186;
        }

        _swiftEmptyArrayStorage[2] = v59 + 1;
        v60 = &_swiftEmptyArrayStorage[3 * v59];
        *(v60 + 32) = v54;
        v60[5] = v56;
        v60[6] = v57;
        --v51;
      }

      while (v51);
      return v52;
    }
  }

  else
  {
    v115._countAndFlagsBits = 0xD000000000000014;
    v200._object = 0x8000000100296930;
    v115._object = 0x8000000100296910;
    v200._countAndFlagsBits = 0xD00000000000008ALL;
    v116._countAndFlagsBits = 0;
    v116._object = 0xE000000000000000;
    v44 = NSLocalizedString(_:tableName:bundle:value:comment:)(v115, 0, v5, v116, v200)._countAndFlagsBits;

    sub_1000040A8(&qword_100359B28);
    v117 = swift_allocObject();
    *(v117 + 16) = xmmword_100279160;
    v118 = [v4 mainBundle];
    v201._object = 0x800000010029EEA0;
    v119.value._countAndFlagsBits = 0x5072656972726143;
    v119.value._object = 0xED00006E6F656769;
    v120._object = 0x800000010029EE30;
    v201._countAndFlagsBits = 0xD000000000000025;
    v120._countAndFlagsBits = 0x100000000000006ELL;
    v121._countAndFlagsBits = 0;
    v121._object = 0xE000000000000000;
    v122 = NSLocalizedString(_:tableName:bundle:value:comment:)(v120, v119, v118, v121, v201);

    *(v117 + 32) = v122;
    v123 = *(a2 + 16);
    if (v123)
    {
      v52 = v44;
      sub_100187314(0, v123, 0);
      v124 = (a2 + 32);
      do
      {
        v126 = *v124++;
        v125 = v126;
        v127 = sub_10013B4EC(v126);
        v130 = _swiftEmptyArrayStorage[2];
        v129 = _swiftEmptyArrayStorage[3];
        if (v130 >= v129 >> 1)
        {
          v182 = v128;
          v187 = v127;
          sub_100187314((v129 > 1), v130 + 1, 1);
          v128 = v182;
          v127 = v187;
        }

        _swiftEmptyArrayStorage[2] = v130 + 1;
        v131 = &_swiftEmptyArrayStorage[3 * v130];
        *(v131 + 32) = v125;
        v131[5] = v127;
        v131[6] = v128;
        --v123;
      }

      while (v123);
      return v52;
    }
  }

  return v44;
}

uint64_t RequestCommandReason.rawValue.getter(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v3 = 0x6567617373654D49;
    v4 = 0x736D53746153;
    if (a1 != 8)
    {
      v4 = 0x794D646E6946;
    }

    if (a1 != 7)
    {
      v3 = v4;
    }

    v5 = 0x6564697364616F52;
    if (a1 != 5)
    {
      v5 = 0x6E6967617373654DLL;
    }

    if (a1 <= 6u)
    {
      return v5;
    }

    else
    {
      return v3;
    }
  }

  else
  {
    v1 = 0xD000000000000016;
    if (a1 != 3)
    {
      v1 = 0x636E656772656D45;
    }

    if (a1 == 2)
    {
      v1 = 0x636E656772656D45;
    }

    if (a1 <= 1u)
    {
      return 0x636E656772656D45;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_10013C948(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = RequestCommandReason.rawValue.getter(*a1);
  v5 = v4;
  if (v3 == RequestCommandReason.rawValue.getter(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int sub_10013C9D0()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  RequestCommandReason.rawValue.getter(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10013CA34()
{
  RequestCommandReason.rawValue.getter(*v0);
  String.hash(into:)();
}

Swift::Int sub_10013CA88()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  RequestCommandReason.rawValue.getter(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_10013CAE8@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s8SOSBuddy20RequestCommandReasonO8rawValueACSgSS_tcfC_0(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_10013CB18@<X0>(uint64_t *a1@<X8>)
{
  result = RequestCommandReason.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t RequestCommandEntryPoint.rawValue.getter(unsigned __int8 a1)
{
  v1 = 1819042115;
  v2 = 0x657465446C6C6146;
  if (a1 != 2)
  {
    v2 = 0x617070614BLL;
  }

  if (a1)
  {
    v1 = 1954047316;
  }

  if (a1 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

Swift::Int sub_10013CBC8()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10013CC84()
{
  String.hash(into:)();
}

Swift::Int sub_10013CD2C()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_10013CDE4@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s8SOSBuddy24RequestCommandEntryPointO8rawValueACSgSS_tcfC_0(*a1);
  *a2 = result;
  return result;
}

void sub_10013CE14(uint64_t *a1@<X8>)
{
  v2 = 0xE400000000000000;
  v3 = 1819042115;
  v4 = 0xED00006E6F697463;
  v5 = 0x657465446C6C6146;
  if (*v1 != 2)
  {
    v5 = 0x617070614BLL;
    v4 = 0xE500000000000000;
  }

  if (*v1)
  {
    v3 = 1954047316;
    v2 = 0xE400000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t RequestCommandFromService.rawValue.getter(char a1)
{
  if (a1)
  {
    return 0x6564697364616F52;
  }

  else
  {
    return 0x636E656772656D45;
  }
}

uint64_t sub_10013CED4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x6564697364616F52;
  }

  else
  {
    v3 = 0x636E656772656D45;
  }

  if (v2)
  {
    v4 = 0xE900000000000079;
  }

  else
  {
    v4 = 0xE800000000000000;
  }

  if (*a2)
  {
    v5 = 0x6564697364616F52;
  }

  else
  {
    v5 = 0x636E656772656D45;
  }

  if (*a2)
  {
    v6 = 0xE800000000000000;
  }

  else
  {
    v6 = 0xE900000000000079;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int sub_10013CF80()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10013D008()
{
  String.hash(into:)();
}

Swift::Int sub_10013D07C()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

void sub_10013D10C(uint64_t *a1@<X8>)
{
  v2 = 0x636E656772656D45;
  if (*v1)
  {
    v2 = 0x6564697364616F52;
  }

  v3 = 0xE900000000000079;
  if (*v1)
  {
    v3 = 0xE800000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

unint64_t RequestCommandAction.rawValue.getter(char a1)
{
  if (a1)
  {
    return 0xD000000000000012;
  }

  else
  {
    return 0xD000000000000011;
  }
}

uint64_t sub_10013D190(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0xD000000000000012;
  }

  else
  {
    v3 = 0xD000000000000011;
  }

  if (v2)
  {
    v4 = "llDetection";
  }

  else
  {
    v4 = "startConversation";
  }

  if (*a2)
  {
    v5 = 0xD000000000000012;
  }

  else
  {
    v5 = 0xD000000000000011;
  }

  if (*a2)
  {
    v6 = "startConversation";
  }

  else
  {
    v6 = "llDetection";
  }

  if (v3 == v5 && (v4 | 0x8000000000000000) == (v6 | 0x8000000000000000))
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int sub_10013D238()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10013D2B4()
{
  String.hash(into:)();
}

Swift::Int sub_10013D31C()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

void sub_10013D3A0(unint64_t *a1@<X8>)
{
  v2 = "startConversation";
  v3 = 0xD000000000000011;
  if (*v1)
  {
    v3 = 0xD000000000000012;
  }

  else
  {
    v2 = "llDetection";
  }

  *a1 = v3;
  a1[1] = v2 | 0x8000000000000000;
}

uint64_t RequestCommandEmergencyOrRoadsideSessionInitiatedBy.rawValue.getter(char a1)
{
  if (a1)
  {
    return 0x6E776F6E6B6E75;
  }

  else
  {
    return 0xD000000000000013;
  }
}

uint64_t sub_10013D418(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x6E776F6E6B6E75;
  }

  else
  {
    v3 = 0xD000000000000013;
  }

  if (v2)
  {
    v4 = 0x8000000100294560;
  }

  else
  {
    v4 = 0xE700000000000000;
  }

  if (*a2)
  {
    v5 = 0x6E776F6E6B6E75;
  }

  else
  {
    v5 = 0xD000000000000013;
  }

  if (*a2)
  {
    v6 = 0xE700000000000000;
  }

  else
  {
    v6 = 0x8000000100294560;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int sub_10013D4C4()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10013D54C()
{
  String.hash(into:)();
}

Swift::Int sub_10013D5C0()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

void sub_10013D650(unint64_t *a1@<X8>)
{
  v2 = 0x8000000100294560;
  v3 = 0xD000000000000013;
  if (*v1)
  {
    v3 = 0x6E776F6E6B6E75;
    v2 = 0xE700000000000000;
  }

  *a1 = v3;
  a1[1] = v2;
}

BOOL ExitCommandReason.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100323638, v2);

  return v3 != 0;
}

uint64_t OpenCommandRequester.rawValue.getter(unsigned __int8 a1)
{
  v1 = 0x436C6F72746E6F43;
  v2 = 0x73676E6974746553;
  if (a1 != 2)
  {
    v2 = 0x6142737574617453;
  }

  if (a1)
  {
    v1 = 0x6163696C706D6F43;
  }

  if (a1 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

Swift::Int sub_10013D844()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10013D920()
{
  String.hash(into:)();
}

Swift::Int sub_10013D9E8()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_10013DAC0@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s8SOSBuddy20OpenCommandRequesterO8rawValueACSgSS_tcfC_0(*a1);
  *a2 = result;
  return result;
}

void sub_10013DAF0(uint64_t *a1@<X8>)
{
  v2 = 0xED00007265746E65;
  v3 = 0x436C6F72746E6F43;
  v4 = 0xE800000000000000;
  v5 = 0x73676E6974746553;
  if (*v1 != 2)
  {
    v5 = 0x6142737574617453;
    v4 = 0xE900000000000072;
  }

  if (*v1)
  {
    v3 = 0x6163696C706D6F43;
    v2 = 0xEC0000006E6F6974;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t sub_10013DB94(Swift::String string, Swift::OpaquePointer cases)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(cases, v3);

  if (v5 == 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  if (v5)
  {
    return v6;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10013DC10(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = "EmergencyToRoadside";
  }

  else
  {
    v2 = "tion";
  }

  v3 = v2 | 0x8000000000000000;
  if (*a2)
  {
    v4 = "EmergencyToRoadside";
  }

  else
  {
    v4 = "tion";
  }

  if (v3 == (v4 | 0x8000000000000000))
  {
    v5 = 1;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v5 & 1;
}

Swift::Int sub_10013DCB4()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10013DD2C()
{
  String.hash(into:)();
}

Swift::Int sub_10013DD90()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10013DE10@<X0>(Swift::OpaquePointer cases@<0:X3>, Swift::String *a2@<X0>, char *a3@<X8>)
{
  v4 = _findStringSwitchCase(cases:string:)(cases, *a2);

  if (v4 == 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  if (!v4)
  {
    v6 = 0;
  }

  *a3 = v6;
  return result;
}

void sub_10013DE6C(void *a1@<X8>)
{
  if (*v1)
  {
    v2 = "EmergencyToRoadside";
  }

  else
  {
    v2 = "tion";
  }

  *a1 = 0xD000000000000013;
  a1[1] = v2 | 0x8000000000000000;
}

BOOL OfferCommandKind.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1003236A8, v2);

  return v3 != 0;
}

Swift::Int sub_10013DF2C()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_10013DFBC()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_10013E014@<X0>(Swift::OpaquePointer cases@<0:X3>, Swift::String *a2@<X0>, BOOL *a3@<X8>)
{
  v4 = _findStringSwitchCase(cases:string:)(cases, *a2);

  *a3 = v4 != 0;
  return result;
}

BOOL sub_10013E088(int a1, uint64_t a2)
{
  v80 = a1;
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v74 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v5);
  v10 = &v74 - v9;
  __chkstk_darwin(v8);
  v12 = &v74 - v11;
  v13 = sub_1000040A8(&qword_100360598);
  __chkstk_darwin(v13 - 8);
  v15 = &v74 - v14;
  v16 = type metadata accessor for URLComponents();
  v83 = *(v16 - 8);
  __chkstk_darwin(v16);
  v82 = &v74 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = URL.scheme.getter();
  if (!v19 || (v85 = v18, v86 = v19, v84[0] = 0xD000000000000010, v84[1] = 0x800000010029F330, v20 = v3, sub_100031770(), v21 = StringProtocol.localizedCaseInsensitiveCompare<A>(_:)(), , v21))
  {
    if (qword_100353A10 != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    sub_10000F53C(v22, qword_100381C80);
    (*(v4 + 16))(v7, a2, v3);
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v84[0] = v26;
      *v25 = 136446210;
      v85 = URL.scheme.getter();
      v86 = v27;
      sub_1000040A8(&qword_1003566A0);
      v28 = String.init<A>(describing:)();
      v30 = v29;
      (*(v4 + 8))(v7, v3);
      v31 = sub_10017C9E8(v28, v30, v84);

      *(v25 + 4) = v31;
      _os_log_impl(&_mh_execute_header, v23, v24, "Unexpected URL scheme: %{public}s", v25, 0xCu);
      sub_100008964(v26);
    }

    else
    {

      (*(v4 + 8))(v7, v3);
    }

    return 0;
  }

  URL.absoluteString.getter();
  v32 = String.count.getter();

  if (v32 == 2047)
  {
    if (qword_100353A10 != -1)
    {
      swift_once();
    }

    v33 = type metadata accessor for Logger();
    sub_10000F53C(v33, qword_100381C80);
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&_mh_execute_header, v34, v35, "Deeplink is too long, it might have been cut off", v36, 2u);
    }
  }

  URLComponents.init(url:resolvingAgainstBaseURL:)();
  v37 = v83;
  if ((*(v83 + 48))(v15, 1, v16) == 1)
  {
    sub_100008FA0(v15, &qword_100360598);
    if (qword_100353A10 != -1)
    {
      swift_once();
    }

    v38 = type metadata accessor for Logger();
    sub_10000F53C(v38, qword_100381C80);
    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      *v41 = 0;
      _os_log_impl(&_mh_execute_header, v39, v40, "Failed to parse URL components", v41, 2u);
    }

    return 0;
  }

  (*(v37 + 32))(v82, v15, v16);
  if (qword_100353A10 != -1)
  {
    swift_once();
  }

  v44 = type metadata accessor for Logger();
  v45 = sub_10000F53C(v44, qword_100381C80);
  v46 = v20;
  v77 = *(v4 + 16);
  v78 = v4 + 16;
  v77(v12, a2, v20);
  v79 = v45;
  v47 = Logger.logObject.getter();
  v48 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v47, v48))
  {
    v49 = swift_slowAlloc();
    v75 = v49;
    v76 = swift_slowAlloc();
    v85 = v76;
    *v49 = 136446210;
    sub_100144308();
    v74 = dispatch thunk of CustomStringConvertible.description.getter();
    v51 = v50;
    v52 = *(v4 + 8);
    v52(v12, v46);
    v53 = sub_10017C9E8(v74, v51, &v85);

    v54 = v75;
    *(v75 + 1) = v53;
    _os_log_impl(&_mh_execute_header, v47, v48, "handleURL(%{public}s)", v54, 0xCu);
    sub_100008964(v76);
  }

  else
  {

    v52 = *(v4 + 8);
    v52(v12, v46);
  }

  v55 = v46;
  v56._countAndFlagsBits = URL.host.getter();
  if (!v56._object)
  {
    v56._countAndFlagsBits = 0;
    v56._object = 0xE000000000000000;
  }

  v57 = sub_10014378C(v56);
  if (v57 <= 2)
  {
    if (v57)
    {
      if (v57 != 1)
      {
        v64 = v82;
        v65 = URLComponents.queryItems.getter();
        sub_1001430B0(v65);

        (*(v83 + 8))(v64, v16);
        return 1;
      }

      v58 = v82;
      v59 = URLComponents.queryItems.getter();
      v42 = sub_100143870(v59);
      goto LABEL_39;
    }

    v58 = v82;
    v62 = URLComponents.queryItems.getter();
    v61 = sub_10013EA98(v80, v62);
LABEL_38:
    v42 = v61;
LABEL_39:

    (*(v83 + 8))(v58, v16);
    return v42;
  }

  if (v57 == 3)
  {
    v58 = v82;
    v63 = URLComponents.queryItems.getter();
    v61 = sub_1001419B4(v63);
    goto LABEL_38;
  }

  if (v57 == 4)
  {
    v58 = v82;
    v60 = URLComponents.queryItems.getter();
    v61 = sub_100142400(v60);
    goto LABEL_38;
  }

  v77(v10, a2, v46);
  v66 = Logger.logObject.getter();
  v67 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v66, v67))
  {
    v68 = swift_slowAlloc();
    v81 = swift_slowAlloc();
    v84[0] = v81;
    *v68 = 136446210;
    v85 = URL.host.getter();
    v86 = v69;
    sub_1000040A8(&qword_1003566A0);
    v70 = String.init<A>(describing:)();
    v72 = v71;
    v52(v10, v55);
    v73 = sub_10017C9E8(v70, v72, v84);

    *(v68 + 4) = v73;
    _os_log_impl(&_mh_execute_header, v66, v67, "Unsupported command: %{public}s", v68, 0xCu);
    sub_100008964(v81);
  }

  else
  {

    v52(v10, v55);
  }

  (*(v83 + 8))(v82, v16);
  return 0;
}

uint64_t sub_10013EA98(int a1, uint64_t a2)
{
  v4 = sub_1000040A8(&qword_100360590);
  v5 = __chkstk_darwin(v4 - 8);
  v80 = &v74[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v79 = &v74[-v7];
  v8 = type metadata accessor for URLQueryItem();
  v83 = *(v8 - 8);
  v9 = __chkstk_darwin(v8);
  v81 = &v74[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = __chkstk_darwin(v9);
  v13 = &v74[-v12];
  v14 = __chkstk_darwin(v11);
  v16 = &v74[-v15];
  __chkstk_darwin(v14);
  v86 = &v74[-v17];
  if (qword_100353A10 != -1)
  {
    swift_once();
  }

  v85 = v13;
  v18 = type metadata accessor for Logger();
  v19 = sub_10000F53C(v18, qword_100381C80);

  v82 = v19;
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();

  v22 = os_log_type_enabled(v20, v21);
  v78 = a1;
  if (v22)
  {
    v23 = swift_slowAlloc();
    v90 = swift_slowAlloc();
    *v23 = 136446466;
    LOBYTE(v89) = a1;
    sub_1000040A8(&unk_1003655D0);
    v24 = String.init<A>(describing:)();
    v26 = sub_10017C9E8(v24, v25, &v90);

    *(v23 + 4) = v26;
    *(v23 + 12) = 2082;
    v89 = a2;

    sub_1000040A8(&qword_100360588);
    v27 = String.init<A>(describing:)();
    v29 = sub_10017C9E8(v27, v28, &v90);

    *(v23 + 14) = v29;
    _os_log_impl(&_mh_execute_header, v20, v21, "handleRequest(wasActive = %{public}s, items = %{public}s)", v23, 0x16u);
    swift_arrayDestroy();
  }

  v84 = a2;
  if (!a2)
  {
    goto LABEL_18;
  }

  v30 = *(v84 + 16);
  if (!v30)
  {
    goto LABEL_18;
  }

  v31 = *(v83 + 16);
  v32 = v84 + ((*(v83 + 80) + 32) & ~*(v83 + 80));
  v87 = *(v83 + 72);
  v88 = v31;
  v33 = (v83 + 8);
  v34 = v32;
  while (1)
  {
    v88(v16, v34, v8);
    if (URLQueryItem.name.getter() == 0x6E6F73616572 && v35 == 0xE600000000000000)
    {
      break;
    }

    v36 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v36)
    {
      goto LABEL_14;
    }

    (*v33)(v16, v8);
    v34 += v87;
    if (!--v30)
    {
      goto LABEL_18;
    }
  }

LABEL_14:
  v37 = v83 + 32;
  v38 = *(v83 + 32);
  v39 = v86;
  v38(v86, v16, v8);
  v40 = URLQueryItem.value.getter();
  v42 = v41;
  v86 = *(v37 - 24);
  (v86)(v39, v8);
  if (v42)
  {

    v91._countAndFlagsBits = v40;
    v91._object = v42;
    v43 = _s8SOSBuddy20RequestCommandReasonO8rawValueACSgSS_tcfC_0(v91);
    v76 = v38;
    v77 = v37;
    if (v43 == 10)
    {

      v44 = Logger.logObject.getter();
      v45 = static os_log_type_t.error.getter();

      LODWORD(v82) = v45;
      v46 = os_log_type_enabled(v44, v45);
      v47 = v81;
      if (v46)
      {
        v48 = swift_slowAlloc();
        v49 = v44;
        v50 = swift_slowAlloc();
        v90 = v50;
        *v48 = 136446210;
        v51 = sub_10017C9E8(v40, v42, &v90);

        *(v48 + 4) = v51;
        _os_log_impl(&_mh_execute_header, v49, v82, "request command: reason '%{public}s' is not supported", v48, 0xCu);
        sub_100008964(v50);
      }

      else
      {
      }

      v82 = 9;
    }

    else
    {
      v82 = v43;

      v47 = v81;
    }

    v57 = v85;
    v58 = *(v84 + 16);
    if (v58)
    {
      v59 = v32;
      v60 = *(v84 + 16);
      while (1)
      {
        v88(v57, v59, v8);
        if (URLQueryItem.name.getter() == 0x68636E75616C6572 && v61 == 0xE800000000000000)
        {
          break;
        }

        v62 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v62)
        {
          goto LABEL_35;
        }

        v57 = v85;
        (v86)(v85, v8);
        v59 += v87;
        if (!--v60)
        {
          v63 = 1;
          v75 = 1;
          v47 = v81;
          goto LABEL_33;
        }
      }

LABEL_35:
      v64 = v79;
      v76(v79, v85, v8);
      v63 = 0;
      v75 = 0;
      v47 = v81;
    }

    else
    {
      v63 = 1;
      v75 = 1;
LABEL_33:
      v64 = v79;
    }

    v65 = *(v83 + 56);
    v83 += 56;
    v85 = v65;
    (v65)(v64, v63, 1, v8);
    sub_100008FA0(v64, &qword_100360590);
    if (v58)
    {
      while (1)
      {
        v88(v47, v32, v8);
        if (URLQueryItem.name.getter() == 0x654468636E75616CLL && v66 == 0xEA00000000006F6DLL)
        {
          break;
        }

        v67 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v67)
        {
          goto LABEL_46;
        }

        (v86)(v47, v8);
        v32 += v87;
        if (!--v58)
        {
          goto LABEL_41;
        }
      }

LABEL_46:
      v71 = v47;
      v72 = v80;
      v76(v80, v71, v8);
      v55 = 1;
      (v85)(v72, 0, 1, v8);
      sub_100008FA0(v72, &qword_100360590);
      sub_100142ED8(byte_10028821A[v82]);
    }

    else
    {
LABEL_41:
      v68 = v80;
      (v85)(v80, 1, 1, v8);
      sub_100008FA0(v68, &qword_100360590);
      if (v82 > 4u)
      {
        v70 = (v75 | v78) & 1 | (v78 == 2);
        if (v82 - 6 >= 3)
        {
          if (v82 == 5)
          {
            sub_100140918(v70, v84);
            v55 = v73;
            return v55 & 1;
          }

          sub_100142D64(v70);
        }

        else
        {
          sub_100142BEC(v70);
        }

        v55 = 1;
        return v55 & 1;
      }

      sub_10013F3FC(v82, (v75 | v78) & 1 | (v78 == 2), v84);
      v55 = v69;
    }
  }

  else
  {
LABEL_18:
    v52 = Logger.logObject.getter();
    v53 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      *v54 = 0;
      _os_log_impl(&_mh_execute_header, v52, v53, "request command: reason is missing", v54, 2u);
    }

    v55 = 0;
  }

  return v55 & 1;
}

void sub_10013F3FC(unsigned __int8 a1, int a2, uint64_t a3)
{
  v4 = v3;
  v181 = type metadata accessor for URLQueryItem();
  v176 = *(v181 - 8);
  v8 = __chkstk_darwin(v181);
  v10 = &v163 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v13 = &v163 - v12;
  v14 = __chkstk_darwin(v11);
  v175 = &v163 - v15;
  v16 = __chkstk_darwin(v14);
  v18 = &v163 - v17;
  v19 = __chkstk_darwin(v16);
  v173 = &v163 - v20;
  v21 = __chkstk_darwin(v19);
  v172 = &v163 - v22;
  v23 = __chkstk_darwin(v21);
  v25 = &v163 - v24;
  v26 = __chkstk_darwin(v23);
  v174 = &v163 - v27;
  v28 = __chkstk_darwin(v26);
  v180 = &v163 - v29;
  __chkstk_darwin(v28);
  v179 = &v163 - v30;
  if (qword_100353A10 != -1)
  {
    swift_once();
  }

  v31 = type metadata accessor for Logger();
  v32 = sub_10000F53C(v31, qword_100381C80);

  v177 = v32;
  v33 = Logger.logObject.getter();
  v34 = static os_log_type_t.default.getter();

  v35 = os_log_type_enabled(v33, v34);
  v178 = a3;
  v169 = v4;
  v170 = a2;
  v167 = v13;
  v171 = v10;
  v168 = v18;
  if (v35)
  {
    v36 = swift_slowAlloc();
    v182 = swift_slowAlloc();
    *v36 = 67240706;
    *(v36 + 4) = a2 & 1;
    *(v36 + 8) = 2082;
    LOBYTE(v193) = a1;
    v37 = String.init<A>(describing:)();
    v39 = sub_10017C9E8(v37, v38, &v182);

    *(v36 + 10) = v39;
    *(v36 + 18) = 2082;
    v193 = a3;

    sub_1000040A8(&qword_100360588);
    v40 = String.init<A>(describing:)();
    v42 = sub_10017C9E8(v40, v41, &v182);

    *(v36 + 20) = v42;
    _os_log_impl(&_mh_execute_header, v33, v34, "handleEmergencyRequest(bringForeground = %{BOOL,public}d, reason = %{public}s, items = %{public}s)", v36, 0x1Cu);
    swift_arrayDestroy();
  }

  v43 = v181;
  if (a1 > 4u)
  {
    if (a1 - 6 >= 3)
    {
      if (a1 == 5)
      {
        v45 = Logger.logObject.getter();
        v46 = static os_log_type_t.error.getter();
        if (!os_log_type_enabled(v45, v46))
        {
          goto LABEL_76;
        }

        v47 = swift_slowAlloc();
        v48 = swift_slowAlloc();
        v182 = v48;
        *v47 = 136446210;
        v57 = 5;
      }

      else
      {
        v45 = Logger.logObject.getter();
        v46 = static os_log_type_t.error.getter();
        if (!os_log_type_enabled(v45, v46))
        {
          goto LABEL_76;
        }

        v47 = swift_slowAlloc();
        v48 = swift_slowAlloc();
        v182 = v48;
        *v47 = 136446210;
        v57 = 9;
      }

      LOBYTE(v193) = v57;
    }

    else
    {
      v45 = Logger.logObject.getter();
      v46 = static os_log_type_t.error.getter();
      if (!os_log_type_enabled(v45, v46))
      {
        goto LABEL_76;
      }

      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v182 = v48;
      *v47 = 136446210;
      LOBYTE(v193) = a1;
    }

    v64 = String.init<A>(describing:)();
    v66 = sub_10017C9E8(v64, v65, &v182);

    *(v47 + 4) = v66;
    _os_log_impl(&_mh_execute_header, v45, v46, "request command: handleEmergencyRequest called for non-emergency reason %{public}s", v47, 0xCu);
    sub_100008964(v48);

LABEL_75:

    goto LABEL_76;
  }

  if (a1 <= 1u)
  {
    if (a1)
    {
      LODWORD(v166) = 0;
      if (!v178)
      {
        goto LABEL_72;
      }
    }

    else
    {
      v49 = v180;
      if (!v178)
      {
        goto LABEL_59;
      }

      v50 = *(v178 + 16);
      if (!v50)
      {
        goto LABEL_59;
      }

      v51 = 0x696F507972746E65;
      v166 = *(v176 + 16);
      v52 = (v176 + 8);
      v53 = v178 + ((*(v176 + 80) + 32) & ~*(v176 + 80));
      v165 = *(v176 + 72);
      while (1)
      {
        v166(v49, v53, v43);
        if (URLQueryItem.name.getter() == v51 && v54 == 0xEA0000000000746ELL)
        {
          break;
        }

        v55 = v51;
        v56 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v56)
        {
          goto LABEL_55;
        }

        (*v52)(v49, v43);
        v53 += v165;
        --v50;
        v51 = v55;
        if (!v50)
        {
          goto LABEL_59;
        }
      }

LABEL_55:
      v88 = v176 + 32;
      v89 = v179;
      (*(v176 + 32))(v179, v49, v43);
      v90 = URLQueryItem.value.getter();
      v92 = v91;
      (*(v88 - 24))(v89, v43);
      if (!v92)
      {
LABEL_59:
        v45 = Logger.logObject.getter();
        v99 = static os_log_type_t.error.getter();
        if (!os_log_type_enabled(v45, v99))
        {
          goto LABEL_76;
        }

        v100 = swift_slowAlloc();
        *v100 = 0;
        v101 = "request command: entryPoint is missing";
LABEL_74:
        _os_log_impl(&_mh_execute_header, v45, v99, v101, v100, 2u);
        goto LABEL_75;
      }

      v194._countAndFlagsBits = v90;
      v194._object = v92;
      v93 = _s8SOSBuddy24RequestCommandEntryPointO8rawValueACSgSS_tcfC_0(v194);
      if (v93 == 4)
      {

        v94 = Logger.logObject.getter();
        v95 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v94, v95))
        {
          v96 = swift_slowAlloc();
          v97 = swift_slowAlloc();
          v182 = v97;
          *v96 = 136446210;
          v98 = sub_10017C9E8(v90, v92, &v182);

          *(v96 + 4) = v98;
          _os_log_impl(&_mh_execute_header, v94, v95, "request command: entryPoint '%{public}s' is not supported, defaulting to call", v96, 0xCu);
          sub_100008964(v97);
        }

        else
        {
        }

        LODWORD(v166) = 0;
      }

      else
      {
        LODWORD(v166) = v93;
      }

      if (!v178)
      {
LABEL_72:
        v45 = Logger.logObject.getter();
        v99 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v45, v99))
        {
          v100 = swift_slowAlloc();
          *v100 = 0;
          v101 = "request command: conversationId is missing";
          goto LABEL_74;
        }

LABEL_76:

        return;
      }
    }
  }

  else
  {
    if (a1 == 2)
    {
      v44 = 1;
    }

    else if (a1 == 3)
    {
      v44 = 2;
    }

    else
    {
      v44 = 3;
    }

    LODWORD(v166) = v44;
    if (!v178)
    {
      goto LABEL_72;
    }
  }

  v58 = *(v178 + 16);
  if (!v58)
  {
    goto LABEL_72;
  }

  v59 = *(v176 + 16);
  v60 = v178 + ((*(v176 + 80) + 32) & ~*(v176 + 80));
  v179 = *(v176 + 72);
  v180 = v59;
  v61 = (v176 + 8);
  v165 = v60;
  while (1)
  {
    (v180)(v25, v60, v43);
    if (URLQueryItem.name.getter() == 0x61737265766E6F63 && v62 == 0xEE0064496E6F6974)
    {
      break;
    }

    v63 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v63)
    {
      goto LABEL_42;
    }

    (*v61)(v25, v43);
    v60 += v179;
    if (!--v58)
    {
      goto LABEL_72;
    }
  }

LABEL_42:
  v67 = v176 + 32;
  v68 = *(v176 + 32);
  v69 = v174;
  v68(v174, v25, v43);
  v70 = URLQueryItem.value.getter();
  v72 = v71;
  v176 = v67;
  v73 = *(v67 - 24);
  v73(v69, v43);
  if (!v72)
  {
    goto LABEL_72;
  }

  v74 = sub_100180014(v70, v72);
  if (v75)
  {

    v45 = Logger.logObject.getter();
    v76 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(v45, v76))
    {

      goto LABEL_76;
    }

    v77 = swift_slowAlloc();
    v78 = swift_slowAlloc();
    v193 = v78;
    *v77 = 136446210;
    v182 = v70;
    v183 = v72;
    sub_1000040A8(&qword_1003566A0);
    v79 = String.init<A>(describing:)();
    v81 = sub_10017C9E8(v79, v80, &v193);

    *(v77 + 4) = v81;
    _os_log_impl(&_mh_execute_header, v45, v76, "request command: conversationId '%{public}s' is invalid, uint expected", v77, 0xCu);
    sub_100008964(v78);

    goto LABEL_75;
  }

  v174 = v68;
  v164 = v74;

  v82 = v173;
  v178 = *(v178 + 16);
  if (!v178)
  {
    goto LABEL_67;
  }

  v83 = v43;
  v84 = v165;
  v85 = v178;
  while (1)
  {
    (v180)(v82, v84, v83);
    if (URLQueryItem.name.getter() == 0x6E6F69746361 && v86 == 0xE600000000000000)
    {
      break;
    }

    v87 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v87)
    {
      goto LABEL_63;
    }

    v83 = v181;
    v73(v82, v181);
    v84 += v179;
    if (!--v85)
    {
      goto LABEL_67;
    }
  }

LABEL_63:
  v102 = v172;
  v103 = v181;
  (v174)(v172, v82, v181);
  v104 = URLQueryItem.value.getter();
  v106 = v105;
  v73(v102, v103);
  if (!v106)
  {
LABEL_67:
    v45 = Logger.logObject.getter();
    v99 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v45, v99))
    {
      goto LABEL_76;
    }

    v100 = swift_slowAlloc();
    *v100 = 0;
    v101 = "request command: action is missing";
    goto LABEL_74;
  }

  v107._countAndFlagsBits = v104;
  v107._object = v106;
  v108 = _findStringSwitchCase(cases:string:)(&off_100321690, v107);

  if (v108)
  {
    if (v108 != 1)
    {

      v115 = Logger.logObject.getter();
      v116 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v115, v116))
      {
        v117 = swift_slowAlloc();
        v118 = swift_slowAlloc();
        v182 = v118;
        *v117 = 136446210;
        v119 = sub_10017C9E8(v104, v106, &v182);

        *(v117 + 4) = v119;
        _os_log_impl(&_mh_execute_header, v115, v116, "request command: action '%{public}s' is not supported", v117, 0xCu);
        sub_100008964(v118);
      }

      else
      {
      }

      return;
    }

    LODWORD(v173) = 1;
  }

  else
  {
    LODWORD(v173) = 0;
  }

  v109 = 0;
  v110 = v165;
  while (1)
  {
    v111 = v109 + 1;
    if (__OFADD__(v109, 1))
    {
      break;
    }

    (v180)(v175, v110, v181);
    if (URLQueryItem.name.getter() == 0x767265536D6F7266 && v112 == 0xEB00000000656369)
    {

LABEL_89:
      v120 = v168;
      v121 = v181;
      (v174)(v168, v175, v181);
      v122 = URLQueryItem.value.getter();
      v124 = v123;
      v73(v120, v121);
      v114 = v171;
      if (v124)
      {

        v125._countAndFlagsBits = v122;
        v125._object = v124;
        v126 = _findStringSwitchCase(cases:string:)(&off_1003216E0, v125);

        if (!v126)
        {

          LODWORD(v175) = 0;
          v172 = 1;
          goto LABEL_100;
        }

        if (v126 == 1)
        {

          LODWORD(v175) = 0;
          v172 = 8;
          goto LABEL_100;
        }

        v127 = Logger.logObject.getter();
        v128 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v127, v128))
        {
          v129 = swift_slowAlloc();
          v130 = swift_slowAlloc();
          v182 = v130;
          *v129 = 136446210;
          v131 = sub_10017C9E8(v122, v124, &v182);

          *(v129 + 4) = v131;
          _os_log_impl(&_mh_execute_header, v127, v128, "request command: fromService '%{public}s' is not supported", v129, 0xCu);
          sub_100008964(v130);
        }

        else
        {
        }
      }

      v172 = 0;
      LODWORD(v175) = 1;
      goto LABEL_100;
    }

    v113 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v113)
    {
      goto LABEL_89;
    }

    v73(v175, v181);
    ++v109;
    v110 += v179;
    if (v111 == v178)
    {
      v172 = 0;
      LODWORD(v175) = 1;
      v114 = v171;
LABEL_100:
      v132 = 0;
      v133 = v181;
      v134 = v165;
      while (1)
      {
        v135 = v132 + 1;
        if (__OFADD__(v132, 1))
        {
          goto LABEL_139;
        }

        (v180)(v114, v134, v133);
        if (URLQueryItem.name.getter() == 0xD000000000000025 && 0x800000010029F2B0 == v136)
        {
          break;
        }

        v137 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v137)
        {
          goto LABEL_108;
        }

        v133 = v181;
        v73(v114, v181);
        ++v132;
        v134 += v179;
        if (v135 == v178)
        {
          v138 = 1;
          v139 = v170;
          v140 = v166;
          goto LABEL_117;
        }
      }

LABEL_108:
      v141 = v167;
      v142 = v181;
      (v174)(v167, v114, v181);
      v143 = URLQueryItem.value.getter();
      v145 = v144;
      v73(v141, v142);
      v139 = v170;
      v140 = v166;
      if (!v145)
      {
        goto LABEL_116;
      }

      v146._countAndFlagsBits = v143;
      v146._object = v145;
      v147 = _findStringSwitchCase(cases:string:)(&off_100321730, v146);

      if (v147)
      {
        if (v147 == 1)
        {

          goto LABEL_116;
        }

        v148 = Logger.logObject.getter();
        v149 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v148, v149))
        {
          v150 = swift_slowAlloc();
          v151 = swift_slowAlloc();
          v182 = v151;
          *v150 = 136446210;
          v152 = sub_10017C9E8(v143, v145, &v182);

          *(v150 + 4) = v152;
          _os_log_impl(&_mh_execute_header, v148, v149, "request command: emergencyOrRoadsideSessionInitiatedBy '%{public}s' is not supported", v150, 0xCu);
          sub_100008964(v151);
          v153 = v173;

          v138 = 1;
          goto LABEL_118;
        }

LABEL_116:
        v138 = 1;
      }

      else
      {

        v138 = 0;
      }

LABEL_117:
      v153 = v173;
LABEL_118:
      v154 = "llDetection";
      if (v153)
      {
        v154 = "startConversation";
      }

      if ((v154 | 0x8000000000000000) == 0x8000000100294540)
      {
        v155 = v153 ^ 1;
      }

      else
      {
        v155 = 1;
      }

      v156 = v153;
      if (v155)
      {
        v157 = _stringCompareWithSmolCheck(_:_:expecting:)();
      }

      else
      {
        v157 = 1;
      }

      if (v140 > 1u)
      {
        if (v140 == 2)
        {
          v139 = 0;
          goto LABEL_135;
        }

        v139 = 0;
      }

      v158 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v158)
      {
        v159 = v175;
        goto LABEL_136;
      }

      if (v140 > 2u)
      {
LABEL_135:
        v159 = v175;
      }

      else
      {
        v159 = v175;
        v160 = _stringCompareWithSmolCheck(_:_:expecting:)();

        v161 = v157;
        if ((v160 & 1) == 0)
        {
          goto LABEL_137;
        }
      }

LABEL_136:
      v161 = 1;
LABEL_137:
      type metadata accessor for PreventSuspensionAssertion();
      swift_allocObject();
      v162 = sub_1000E13E0(0xD000000000000011, 0x8000000100294FD0, 0xD00000000000001BLL, 0x800000010029F310);
      LOBYTE(v193) = v159;
      v192 = v138;
      LOBYTE(v182) = v140;
      v183 = v164;
      v184 = v157 & 1;
      v185 = v172;
      v186 = v159;
      v187 = v138;
      v188 = v156;
      v189 = v161 & 1;
      v190 = v139 & 1;
      v191 = v162;
      PassthroughSubject.send(_:)();

      return;
    }
  }

  __break(1u);
LABEL_139:
  __break(1u);
}

void sub_100140918(char a1, uint64_t a2)
{
  v4 = type metadata accessor for URLQueryItem();
  v142 = *(v4 - 8);
  v5 = __chkstk_darwin(v4);
  v136 = &v129 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v133 = &v129 - v8;
  v9 = __chkstk_darwin(v7);
  v139 = &v129 - v10;
  v11 = __chkstk_darwin(v9);
  v134 = &v129 - v12;
  v13 = __chkstk_darwin(v11);
  v141 = &v129 - v14;
  v15 = __chkstk_darwin(v13);
  v135 = &v129 - v16;
  v17 = __chkstk_darwin(v15);
  v138 = &v129 - v18;
  v19 = __chkstk_darwin(v17);
  v137 = &v129 - v20;
  v21 = __chkstk_darwin(v19);
  v23 = &v129 - v22;
  __chkstk_darwin(v21);
  v140 = &v129 - v24;
  if (qword_100353A10 != -1)
  {
    swift_once();
  }

  v25 = type metadata accessor for Logger();
  v26 = sub_10000F53C(v25, qword_100381C80);

  v143 = v26;
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v147 = v30;
    *v29 = 67240450;
    *(v29 + 4) = a1 & 1;
    *(v29 + 8) = 2082;
    v159 = a2;

    sub_1000040A8(&qword_100360588);
    v31 = String.init<A>(describing:)();
    v33 = sub_10017C9E8(v31, v32, &v147);

    *(v29 + 10) = v33;
    _os_log_impl(&_mh_execute_header, v27, v28, "handleRoadsideAssistanceRequest(bringForeground = %{BOOL,public}d, items = %{public}s)", v29, 0x12u);
    sub_100008964(v30);
  }

  if (!a2)
  {
    goto LABEL_20;
  }

  v34 = *(a2 + 16);
  if (!v34)
  {
    goto LABEL_20;
  }

  v35 = *(v142 + 16);
  v36 = a2 + ((*(v142 + 80) + 32) & ~*(v142 + 80));
  v144 = *(v142 + 72);
  v145 = v35;
  v146 = v142 + 16;
  v37 = (v142 + 8);
  v132 = v36;
  while (1)
  {
    v145(v23, v36, v4);
    if (URLQueryItem.name.getter() == 0x61737265766E6F63 && v38 == 0xEE0064496E6F6974)
    {
      break;
    }

    v39 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v39)
    {
      goto LABEL_14;
    }

    (*v37)(v23, v4);
    v36 += v144;
    if (!--v34)
    {
      goto LABEL_20;
    }
  }

LABEL_14:
  v40 = v142 + 32;
  v41 = *(v142 + 32);
  v42 = v140;
  v41(v140, v23, v4);
  v43 = URLQueryItem.value.getter();
  v45 = v44;
  v142 = v40;
  v46 = *(v40 - 24);
  v46(v42, v4);
  if (!v45)
  {
LABEL_20:
    v49 = Logger.logObject.getter();
    v57 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v49, v57))
    {
      goto LABEL_24;
    }

    v58 = swift_slowAlloc();
    *v58 = 0;
    v59 = "request command: conversationId is missing";
    goto LABEL_22;
  }

  v47 = sub_100180014(v43, v45);
  if (v48)
  {

    v49 = Logger.logObject.getter();
    v50 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v159 = v52;
      *v51 = 136446210;
      v147 = v43;
      v148 = v45;
      sub_1000040A8(&qword_1003566A0);
      v53 = String.init<A>(describing:)();
      v55 = sub_10017C9E8(v53, v54, &v159);

      *(v51 + 4) = v55;
      v56 = "request command: conversationId '%{public}s' is invalid, uint expected";
LABEL_18:
      _os_log_impl(&_mh_execute_header, v49, v50, v56, v51, 0xCu);
      sub_100008964(v52);
      goto LABEL_19;
    }

    goto LABEL_32;
  }

  v131 = v41;
  v130 = v47;

  v140 = *(a2 + 16);
  v60 = v138;
  if (!v140)
  {
    goto LABEL_38;
  }

  v61 = v132;
  v62 = v140;
  while (1)
  {
    v145(v60, v61, v4);
    if (URLQueryItem.name.getter() == 0x6E6F69746361 && v63 == 0xE600000000000000)
    {
      break;
    }

    v64 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v64)
    {
      goto LABEL_34;
    }

    v46(v60, v4);
    v61 += v144;
    if (!--v62)
    {
      goto LABEL_38;
    }
  }

LABEL_34:
  v65 = v137;
  v131(v137, v60, v4);
  v66 = URLQueryItem.value.getter();
  v68 = v67;
  v46(v65, v4);
  if (!v68)
  {
LABEL_38:
    v49 = Logger.logObject.getter();
    v57 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v49, v57))
    {
      goto LABEL_24;
    }

    v58 = swift_slowAlloc();
    *v58 = 0;
    v59 = "request command: action is missing";
LABEL_22:
    _os_log_impl(&_mh_execute_header, v49, v57, v59, v58, 2u);
    goto LABEL_23;
  }

  v69._countAndFlagsBits = v66;
  v69._object = v68;
  v70 = _findStringSwitchCase(cases:string:)(&off_100321690, v69);

  if (v70)
  {
    if (v70 != 1)
    {

      v49 = Logger.logObject.getter();
      v50 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v49, v50))
      {
        v51 = swift_slowAlloc();
        v52 = swift_slowAlloc();
        v147 = v52;
        *v51 = 136446210;
        v77 = sub_10017C9E8(v66, v68, &v147);

        *(v51 + 4) = v77;
        v56 = "request command: action '%{public}s' is not supported";
        goto LABEL_18;
      }

LABEL_32:

      goto LABEL_24;
    }

    v71 = 1;
  }

  else
  {
    v71 = 0;
  }

  v72 = 0;
  v73 = v132;
  while (1)
  {
    v74 = (v72 + 1);
    if (__OFADD__(v72, 1))
    {
      __break(1u);
LABEL_106:
      __break(1u);
LABEL_107:
      __break(1u);
      return;
    }

    v145(v141, v73, v4);
    if (URLQueryItem.name.getter() == 0x72656469766F7270 && v75 == 0xEA00000000006449)
    {
      break;
    }

    v76 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v76)
    {
      goto LABEL_51;
    }

    v46(v141, v4);
    ++v72;
    v73 += v144;
    if (v74 == v140)
    {
      goto LABEL_55;
    }
  }

LABEL_51:
  v78 = v135;
  v131(v135, v141, v4);
  v79 = URLQueryItem.value.getter();
  v81 = v80;
  v46(v78, v4);
  if (!v81)
  {
LABEL_55:
    LODWORD(v137) = v71;
    v141 = 0;
    LODWORD(v138) = 1;
LABEL_58:
    v88 = 0;
    v89 = v132;
    while (1)
    {
      v90 = (v88 + 1);
      if (__OFADD__(v88, 1))
      {
        goto LABEL_106;
      }

      v145(v139, v89, v4);
      if (URLQueryItem.name.getter() == 0x767265536D6F7266 && v91 == 0xEB00000000656369)
      {
        break;
      }

      v92 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v92)
      {
        goto LABEL_66;
      }

      v46(v139, v4);
      ++v88;
      v89 += v144;
      if (v90 == v140)
      {
        v135 = 0;
        LODWORD(v139) = 1;
        v93 = v136;
        goto LABEL_78;
      }
    }

LABEL_66:
    v94 = v134;
    v131(v134, v139, v4);
    v95 = URLQueryItem.value.getter();
    v97 = v96;
    v46(v94, v4);
    v93 = v136;
    if (v97)
    {

      v98._countAndFlagsBits = v95;
      v98._object = v97;
      v99 = _findStringSwitchCase(cases:string:)(&off_1003216E0, v98);

      if (!v99)
      {

        LODWORD(v139) = 0;
        v100 = 1;
        goto LABEL_71;
      }

      if (v99 == 1)
      {

        LODWORD(v139) = 0;
        v100 = 8;
LABEL_71:
        v135 = v100;
        goto LABEL_78;
      }

      v101 = Logger.logObject.getter();
      v102 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v101, v102))
      {
        v103 = swift_slowAlloc();
        v104 = swift_slowAlloc();
        v147 = v104;
        *v103 = 136446210;
        v105 = sub_10017C9E8(v95, v97, &v147);

        *(v103 + 4) = v105;
        _os_log_impl(&_mh_execute_header, v101, v102, "request command: fromService '%{public}s' is not supported", v103, 0xCu);
        sub_100008964(v104);
      }

      else
      {
      }
    }

    v135 = 0;
    LODWORD(v139) = 1;
LABEL_78:
    v106 = 0;
    v107 = v132;
    while (1)
    {
      v108 = (v106 + 1);
      if (__OFADD__(v106, 1))
      {
        goto LABEL_107;
      }

      v109 = v107;
      (v145)(v93);
      if (URLQueryItem.name.getter() == 0xD000000000000025 && 0x800000010029F2B0 == v110)
      {

LABEL_86:
        v112 = v133;
        v131(v133, v93, v4);
        v113 = URLQueryItem.value.getter();
        v115 = v114;
        v46(v112, v4);
        if (v115)
        {

          v116._countAndFlagsBits = v113;
          v116._object = v115;
          v117 = _findStringSwitchCase(cases:string:)(&off_100321730, v116);

          v118 = v137;
          if (v117)
          {
            if (v117 == 1)
            {
            }

            else
            {

              v120 = Logger.logObject.getter();
              v121 = static os_log_type_t.error.getter();

              if (os_log_type_enabled(v120, v121))
              {
                v122 = swift_slowAlloc();
                v123 = swift_slowAlloc();
                v147 = v123;
                *v122 = 136446210;
                v124 = sub_10017C9E8(v113, v115, &v147);

                *(v122 + 4) = v124;
                _os_log_impl(&_mh_execute_header, v120, v121, "request command: emergencyOrRoadsideSessionInitiatedBy '%{public}s' is not supported", v122, 0xCu);
                sub_100008964(v123);
              }

              else
              {
              }
            }

            v119 = 1;
          }

          else
          {

            v119 = 0;
          }
        }

        else
        {
LABEL_90:
          v119 = 1;
          v118 = v137;
        }

        v125 = "llDetection";
        if (v118)
        {
          v125 = "startConversation";
        }

        if ((v125 | 0x8000000000000000) == 0x8000000100294540)
        {
          v126 = v118;
        }

        else
        {
          v126 = 0;
        }

        v127 = 1;
        if ((v126 & 1) == 0)
        {
          v127 = _stringCompareWithSmolCheck(_:_:expecting:)();
        }

        type metadata accessor for PreventSuspensionAssertion();
        swift_allocObject();
        v128 = sub_1000E13E0(0xD000000000000011, 0x8000000100294FD0, 0xD000000000000024, 0x800000010029F2E0);
        LOBYTE(v159) = v138;
        v158 = v139;
        v157 = v119;
        v147 = v130;
        LOBYTE(v148) = v127 & 1;
        v149 = v141;
        v150 = v138;
        v151 = v135;
        v152 = v139;
        v153 = v119;
        v154 = v118;
        v155 = 1;
        v156 = v128;
        PassthroughSubject.send(_:)();

        return;
      }

      v111 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v111)
      {
        goto LABEL_86;
      }

      v46(v93, v4);
      ++v106;
      v107 = v109 + v144;
      if (v108 == v140)
      {
        goto LABEL_90;
      }
    }
  }

  v82 = sub_100180014(v79, v81);
  if ((v83 & 1) == 0)
  {
    v141 = v82;
    LODWORD(v137) = v71;

    LODWORD(v138) = 0;
    goto LABEL_58;
  }

  v49 = Logger.logObject.getter();
  v84 = static os_log_type_t.error.getter();

  if (!os_log_type_enabled(v49, v84))
  {
    goto LABEL_32;
  }

  v85 = swift_slowAlloc();
  v86 = swift_slowAlloc();
  v147 = v86;
  *v85 = 136446210;
  v87 = sub_10017C9E8(v79, v81, &v147);

  *(v85 + 4) = v87;
  _os_log_impl(&_mh_execute_header, v49, v84, "request command: providerId '%{public}s' is invalid, uint expected", v85, 0xCu);
  sub_100008964(v86);
LABEL_19:

LABEL_23:

LABEL_24:
}

uint64_t sub_1001419B4(uint64_t a1)
{
  v2 = type metadata accessor for URLQueryItem();
  v93 = *(v2 - 8);
  v3 = __chkstk_darwin(v2);
  v5 = &v84[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = __chkstk_darwin(v3);
  v87 = &v84[-v7];
  v8 = __chkstk_darwin(v6);
  v92 = &v84[-v9];
  v10 = __chkstk_darwin(v8);
  v88 = &v84[-v11];
  v12 = __chkstk_darwin(v10);
  v14 = &v84[-v13];
  __chkstk_darwin(v12);
  v90 = &v84[-v15];
  if (qword_100353A10 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  v17 = sub_10000F53C(v16, qword_100381C80);

  v91 = v17;
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();

  v20 = os_log_type_enabled(v18, v19);
  v89 = v5;
  if (v20)
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v96 = a1;
    v97 = v22;
    *v21 = 136446210;

    sub_1000040A8(&qword_100360588);
    v23 = String.init<A>(describing:)();
    v25 = sub_10017C9E8(v23, v24, &v97);

    *(v21 + 4) = v25;
    _os_log_impl(&_mh_execute_header, v18, v19, "handleAlert(%{public}s)", v21, 0xCu);
    sub_100008964(v22);
  }

  v94 = a1;
  if (!a1)
  {
    goto LABEL_19;
  }

  v26 = v94[2];
  if (!v26)
  {
    goto LABEL_19;
  }

  v27 = *(v93 + 16);
  v28 = v94 + ((*(v93 + 80) + 32) & ~*(v93 + 80));
  v95 = *(v93 + 72);
  v29 = (v93 + 8);
  v86 = v28;
  while (1)
  {
    (v27)(v14, v28, v2);
    if (URLQueryItem.name.getter() == 0x6E694B7472656C61 && v30 == 0xE900000000000064)
    {
      break;
    }

    v31 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v31)
    {
      goto LABEL_14;
    }

    (*v29)(v14, v2);
    v28 += v95;
    if (!--v26)
    {
      goto LABEL_19;
    }
  }

LABEL_14:
  v32 = v93 + 32;
  v33 = *(v93 + 32);
  v34 = v90;
  (v33)(v90, v14, v2);
  v35 = URLQueryItem.value.getter();
  v37 = v36;
  v93 = v32;
  v90 = *(v32 - 24);
  (v90)(v34, v2);
  if (!v37)
  {
LABEL_19:
    v41 = Logger.logObject.getter();
    v46 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v41, v46))
    {
LABEL_22:

      return 0;
    }

    v47 = swift_slowAlloc();
    *v47 = 0;
    _os_log_impl(&_mh_execute_header, v41, v46, "alert command: alertKind is missing", v47, 2u);
LABEL_21:

    goto LABEL_22;
  }

  v38._countAndFlagsBits = v35;
  v38._object = v37;
  v39 = _findStringSwitchCase(cases:string:)(&off_100321838, v38);

  if (v39)
  {
    v40 = v92;
    if (v39 != 1)
    {

      v41 = Logger.logObject.getter();
      v42 = static os_log_type_t.error.getter();

      if (!os_log_type_enabled(v41, v42))
      {
LABEL_38:

        goto LABEL_22;
      }

      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v97 = v44;
      *v43 = 136446210;
      v45 = sub_10017C9E8(v35, v37, &v97);

      *(v43 + 4) = v45;
      _os_log_impl(&_mh_execute_header, v41, v42, "alert command: alertKind '%{public}s' is not supported", v43, 0xCu);
      sub_100008964(v44);
LABEL_37:

      goto LABEL_21;
    }
  }

  else
  {
    v40 = v92;
  }

  v49 = v94[2];
  if (v49)
  {
    v94 = v33;
    v85 = v39;
    v50 = v86;
    v51 = v49;
    while (1)
    {
      (v27)(v40, v50, v2);
      if (URLQueryItem.name.getter() == 0xD000000000000013 && 0x800000010029F250 == v52)
      {
        break;
      }

      v53 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v53)
      {
        goto LABEL_33;
      }

      v40 = v92;
      (v90)(v92, v2);
      v50 += v95;
      if (!--v51)
      {
        v88 = 0;
        LODWORD(v92) = 1;
        v54 = v89;
        goto LABEL_41;
      }
    }

LABEL_33:
    v59 = v88;
    (v94)(v88, v92, v2);
    v60 = URLQueryItem.value.getter();
    v62 = v61;
    (v90)(v59, v2);
    LODWORD(v92) = v62 == 0;
    v54 = v89;
    if (v62)
    {

      v88 = sub_100180014(v60, v62);
      if (v63)
      {

        v41 = Logger.logObject.getter();
        v64 = static os_log_type_t.error.getter();

        if (!os_log_type_enabled(v41, v64))
        {
          goto LABEL_38;
        }

        v65 = swift_slowAlloc();
        v66 = swift_slowAlloc();
        v97 = v66;
        *v65 = 136446210;
        v67 = sub_10017C9E8(v60, v62, &v97);

        *(v65 + 4) = v67;
        _os_log_impl(&_mh_execute_header, v41, v64, "alert command: requestedProviderId '%{public}s' is invalid, uint expected", v65, 0xCu);
        sub_100008964(v66);
        goto LABEL_37;
      }
    }

    else
    {
      v88 = 0;
    }

LABEL_41:
    v68 = v86;
    while (1)
    {
      v69 = v68;
      v27(v54);
      if (URLQueryItem.name.getter() == 0xD000000000000013 && 0x800000010029F270 == v70)
      {
        break;
      }

      v71 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v71)
      {
        goto LABEL_48;
      }

      (v90)(v54, v2);
      v68 = &v69[v95];
      if (!--v49)
      {
        v56 = 0;
        v58 = 1;
        LOBYTE(v39) = v85;
        v57 = v92;
        v55 = v88;
        goto LABEL_54;
      }
    }

LABEL_48:
    v72 = v87;
    (v94)(v87, v54, v2);
    v73 = URLQueryItem.value.getter();
    v75 = v74;
    (v90)(v72, v2);
    LOBYTE(v39) = v85;
    v57 = v92;
    if (!v75)
    {
      v56 = 0;
      v58 = 1;
      v55 = v88;
      goto LABEL_54;
    }

    v56 = sub_100180014(v73, v75);
    v55 = v88;
    if ((v76 & 1) == 0)
    {
      v58 = 0;
      goto LABEL_54;
    }

    v41 = Logger.logObject.getter();
    v77 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v41, v77))
    {
      goto LABEL_22;
    }

    v78 = swift_slowAlloc();
    v79 = swift_slowAlloc();
    v96 = v79;
    v97 = v56;
    *v78 = 136446210;
    LOBYTE(v98) = 1;
    sub_1000040A8(&qword_100358098);
    v80 = String.init<A>(describing:)();
    v82 = sub_10017C9E8(v80, v81, &v96);

    *(v78 + 4) = v82;
    _os_log_impl(&_mh_execute_header, v41, v77, "alert command: resumableProviderId '%{public}s' is invalid, uint expected", v78, 0xCu);
    sub_100008964(v79);

    goto LABEL_21;
  }

  v55 = 0;
  v56 = 0;
  v57 = 1;
  v58 = 1;
LABEL_54:
  type metadata accessor for PreventSuspensionAssertion();
  swift_allocObject();
  v83 = sub_1000E13E0(0xD000000000000011, 0x8000000100294FD0, 0xD000000000000017, 0x800000010029F290);
  LOBYTE(v97) = v39;
  v98 = v55;
  v99 = v57;
  v100 = v56;
  v101 = v58;
  v102 = 1;
  v103 = v83;
  PassthroughSubject.send(_:)();

  return 1;
}

uint64_t sub_100142400(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1000040A8(&qword_100360590);
  __chkstk_darwin(v4 - 8);
  v64 = &v61 - v5;
  v6 = type metadata accessor for URLQueryItem();
  v68 = *(v6 - 8);
  v7 = __chkstk_darwin(v6);
  v67 = &v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v11 = &v61 - v10;
  __chkstk_darwin(v9);
  v66 = &v61 - v12;
  if (qword_100353A10 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  v14 = sub_10000F53C(v13, qword_100381C80);

  v69 = v14;
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();

  v17 = os_log_type_enabled(v15, v16);
  v65 = v2;
  if (v17)
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v72 = a1;
    v73[0] = v19;
    *v18 = 136446210;

    sub_1000040A8(&qword_100360588);
    v20 = String.init<A>(describing:)();
    v22 = sub_10017C9E8(v20, v21, v73);

    *(v18 + 4) = v22;
    _os_log_impl(&_mh_execute_header, v15, v16, "handleOffer(%{public}s)", v18, 0xCu);
    sub_100008964(v19);
  }

  v70 = a1;
  if (!a1)
  {
    goto LABEL_18;
  }

  v23 = *(v70 + 16);
  if (!v23)
  {
    goto LABEL_18;
  }

  v24 = *(v68 + 16);
  v25 = v70 + ((*(v68 + 80) + 32) & ~*(v68 + 80));
  v71 = *(v68 + 72);
  v26 = (v68 + 8);
  v63 = v25;
  while (1)
  {
    v24(v11, v25, v6);
    if (URLQueryItem.name.getter() == 0x6E694B726566666FLL && v27 == 0xE900000000000064)
    {
      break;
    }

    v28 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v28)
    {
      goto LABEL_14;
    }

    (*v26)(v11, v6);
    v25 += v71;
    if (!--v23)
    {
      goto LABEL_18;
    }
  }

LABEL_14:
  v30 = v68 + 32;
  v29 = *(v68 + 32);
  v31 = v66;
  v29(v66, v11, v6);
  v32 = URLQueryItem.value.getter();
  v34 = v33;
  v66 = *(v30 - 24);
  (v66)(v31, v6);
  if (!v34)
  {
LABEL_18:
    v36 = Logger.logObject.getter();
    v41 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v36, v41))
    {
LABEL_21:

      return 0;
    }

    v42 = swift_slowAlloc();
    *v42 = 0;
    _os_log_impl(&_mh_execute_header, v36, v41, "offer command: offerKind is missing", v42, 2u);
LABEL_20:

    goto LABEL_21;
  }

  v35._countAndFlagsBits = v32;
  v35._object = v34;
  if (_findStringSwitchCase(cases:string:)(&off_100321888, v35))
  {

    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(v36, v37))
    {

      goto LABEL_21;
    }

    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v73[0] = v39;
    *v38 = 136446210;
    v40 = sub_10017C9E8(v32, v34, v73);

    *(v38 + 4) = v40;
    _os_log_impl(&_mh_execute_header, v36, v37, "offer command: offerKind '%{public}s' is not supported", v38, 0xCu);
    sub_100008964(v39);

    goto LABEL_20;
  }

  v62 = v34;
  v44 = *(v70 + 16);
  if (v44)
  {
    v61 = v29;
    v70 = v32;
    v45 = 0x66664F7473726966;
    v46 = v67;
    v47 = v63;
    while (1)
    {
      v24(v46, v47, v6);
      if (URLQueryItem.name.getter() == v45 && v48 == 0xEA00000000007265)
      {
        break;
      }

      v49 = v45;
      v50 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v50)
      {
        goto LABEL_32;
      }

      v46 = v67;
      (v66)(v67, v6);
      v47 += v71;
      --v44;
      v45 = v49;
      if (!v44)
      {
        v51 = 0;
        v52 = 1;
        v53 = v64;
        goto LABEL_33;
      }
    }

LABEL_32:
    v53 = v64;
    v61(v64, v67, v6);
    v52 = 0;
    v51 = 1;
LABEL_33:
    v32 = v70;
  }

  else
  {
    v51 = 0;
    v52 = 1;
    v53 = v64;
  }

  (*(v68 + 56))(v53, v52, 1, v6);
  sub_100008FA0(v53, &qword_100360590);
  v54 = v62;

  v55 = Logger.logObject.getter();
  v56 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v55, v56))
  {
    v57 = swift_slowAlloc();
    v58 = swift_slowAlloc();
    v73[0] = v58;
    *v57 = 136446466;
    v59 = sub_10017C9E8(v32, v54, v73);

    *(v57 + 4) = v59;
    *(v57 + 12) = 1026;
    *(v57 + 14) = v51;
    _os_log_impl(&_mh_execute_header, v55, v56, "offer command: offerKind: '%{public}s', first offer: '%{BOOL,public}d'", v57, 0x12u);
    sub_100008964(v58);
  }

  else
  {
  }

  type metadata accessor for PreventSuspensionAssertion();
  swift_allocObject();
  v60 = sub_1000E13E0(0xD000000000000011, 0x8000000100294FD0, 0xD000000000000017, 0x800000010029F230);
  LOBYTE(v73[0]) = v51;
  v73[1] = v60;
  PassthroughSubject.send(_:)();

  return 1;
}

uint64_t sub_100142BEC(char a1)
{
  if (qword_100353A10 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000F53C(v2, qword_100381C80);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 67240192;
    *(v5 + 4) = a1 & 1;
    _os_log_impl(&_mh_execute_header, v3, v4, "handleMessagingRequest(bringForeground = %{BOOL,public}d)", v5, 8u);
  }

  type metadata accessor for PreventSuspensionAssertion();
  swift_allocObject();
  sub_1000E13E0(0xD000000000000011, 0x8000000100294FD0, 0xD00000000000001BLL, 0x800000010029F210);
  PassthroughSubject.send(_:)();

  return 1;
}

uint64_t sub_100142D64(char a1)
{
  if (qword_100353A10 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000F53C(v2, qword_100381C80);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 67240192;
    *(v5 + 4) = a1 & 1;
    _os_log_impl(&_mh_execute_header, v3, v4, "handleFindMyRequest(bringForeground = %{BOOL,public}d)", v5, 8u);
  }

  type metadata accessor for PreventSuspensionAssertion();
  swift_allocObject();
  sub_1000E13E0(0xD000000000000011, 0x8000000100294FD0, 0xD000000000000018, 0x800000010029F1F0);
  PassthroughSubject.send(_:)();

  return 1;
}

uint64_t sub_100142ED8(char a1)
{
  if (qword_100353A10 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000F53C(v2, qword_100381C80);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v12[0] = v6;
    *v5 = 136446210;
    v7 = String.init<A>(describing:)();
    v9 = sub_10017C9E8(v7, v8, v12);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "handleTryOut(stewieAppId = %{public}s)", v5, 0xCu);
    sub_100008964(v6);
  }

  type metadata accessor for PreventSuspensionAssertion();
  swift_allocObject();
  v10 = sub_1000E13E0(0xD000000000000011, 0x8000000100294FD0, 0xD00000000000001DLL, 0x800000010029F1D0);
  LOBYTE(v12[0]) = a1;
  BYTE1(v12[0]) = 1;
  v12[1] = v10;
  PassthroughSubject.send(_:)();

  return 1;
}

uint64_t sub_1001430B0(uint64_t a1)
{
  v2 = type metadata accessor for URLQueryItem();
  v36 = *(v2 - 8);
  v3 = __chkstk_darwin(v2);
  v5 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v35 = &v35 - v6;
  if (qword_100353A10 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_10000F53C(v7, qword_100381C80);

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v37 = a1;
    v38[0] = v11;
    *v10 = 136446210;

    sub_1000040A8(&qword_100360588);
    v12 = String.init<A>(describing:)();
    v14 = v2;
    v15 = sub_10017C9E8(v12, v13, v38);

    *(v10 + 4) = v15;
    v2 = v14;
    _os_log_impl(&_mh_execute_header, v8, v9, "handleOpen(%{public}s)", v10, 0xCu);
    sub_100008964(v11);
  }

  if (!a1)
  {
    goto LABEL_16;
  }

  v16 = *(a1 + 16);
  if (!v16)
  {
    goto LABEL_16;
  }

  v17 = *(v36 + 16);
  v18 = (v36 + 8);
  v19 = a1 + ((*(v36 + 80) + 32) & ~*(v36 + 80));
  v20 = *(v36 + 72);
  while (1)
  {
    v21 = v2;
    v17(v5, v19, v2);
    if (URLQueryItem.name.getter() == 0x6574736575716572 && v22 == 0xE900000000000072)
    {
      break;
    }

    v23 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v23)
    {
      goto LABEL_14;
    }

    v2 = v21;
    (*v18)(v5, v21);
    v19 += v20;
    if (!--v16)
    {
      goto LABEL_16;
    }
  }

LABEL_14:
  v24 = v35;
  v25 = v36 + 32;
  (*(v36 + 32))(v35, v5, v21);
  v26 = URLQueryItem.value.getter();
  v28 = v27;
  (*(v25 - 24))(v24, v21);
  if (v28)
  {
    v29._object = v28;
    v29._countAndFlagsBits = v26;
  }

  else
  {
LABEL_16:

    v29._countAndFlagsBits = 0;
    v29._object = 0xE000000000000000;
  }

  v30 = _s8SOSBuddy20OpenCommandRequesterO8rawValueACSgSS_tcfC_0(v29);
  if (v30 <= 2u)
  {
    v31 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v31)
    {
      goto LABEL_21;
    }

LABEL_22:
    v32 = 1;
    goto LABEL_23;
  }

  if (v30 != 3)
  {
    goto LABEL_22;
  }

LABEL_21:
  v32 = 0;
LABEL_23:
  type metadata accessor for PreventSuspensionAssertion();
  swift_allocObject();
  v33 = sub_1000E13E0(0xD000000000000011, 0x8000000100294FD0, 0x69737365636F7250, 0xEF6E65704F20676ELL);
  LOBYTE(v38[0]) = v32;
  BYTE1(v38[0]) = v30;
  v38[1] = v33;
  PassthroughSubject.send(_:)();

  return 1;
}

uint64_t sub_10014357C()
{

  return v0;
}

uint64_t sub_1001435D4()
{
  sub_10014357C();

  return swift_deallocClassInstance();
}

void *sub_100143608()
{
  sub_1000040A8(&qword_1003605A8);
  swift_allocObject();
  v0[2] = PassthroughSubject.init()();
  sub_1000040A8(&qword_1003605B0);
  swift_allocObject();
  v0[3] = PassthroughSubject.init()();
  sub_1000040A8(&qword_1003605B8);
  swift_allocObject();
  v0[4] = PassthroughSubject.init()();
  sub_1000040A8(&qword_1003605C0);
  swift_allocObject();
  v0[5] = PassthroughSubject.init()();
  sub_1000040A8(&qword_1003605C8);
  swift_allocObject();
  v0[6] = PassthroughSubject.init()();
  sub_1000040A8(&qword_1003605D0);
  swift_allocObject();
  v0[7] = PassthroughSubject.init()();
  sub_1000040A8(&qword_1003605D8);
  swift_allocObject();
  v0[8] = PassthroughSubject.init()();
  sub_1000040A8(&qword_1003605E0);
  swift_allocObject();
  v0[9] = PassthroughSubject.init()();
  return v0;
}

unint64_t sub_10014378C(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100321468, v2);

  if (v3 >= 5)
  {
    return 5;
  }

  else
  {
    return v3;
  }
}

unint64_t _s8SOSBuddy20RequestCommandReasonO8rawValueACSgSS_tcfC_0(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100321500, v2);

  if (v3 >= 0xA)
  {
    return 10;
  }

  else
  {
    return v3;
  }
}

unint64_t _s8SOSBuddy24RequestCommandEntryPointO8rawValueACSgSS_tcfC_0(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100321610, v2);

  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

BOOL sub_100143870(uint64_t a1)
{
  v2 = type metadata accessor for URLQueryItem();
  v34 = *(v2 - 8);
  v3 = __chkstk_darwin(v2);
  v5 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v33 = &v33 - v6;
  if (qword_100353A10 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_10000F53C(v7, qword_100381C80);

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = v2;
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v35 = a1;
    v36 = v12;
    *v11 = 136446210;

    sub_1000040A8(&qword_100360588);
    v13 = String.init<A>(describing:)();
    v15 = sub_10017C9E8(v13, v14, &v36);

    *(v11 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v8, v9, "handleExit(%{public}s)", v11, 0xCu);
    sub_100008964(v12);

    v2 = v10;
  }

  if (!a1)
  {
    goto LABEL_16;
  }

  v16 = *(a1 + 16);
  if (!v16)
  {
    goto LABEL_16;
  }

  v17 = *(v34 + 16);
  v18 = (v34 + 8);
  v19 = a1 + ((*(v34 + 80) + 32) & ~*(v34 + 80));
  v20 = *(v34 + 72);
  while (1)
  {
    v21 = v2;
    v17(v5, v19, v2);
    if (URLQueryItem.name.getter() == 0x6E6F73616572 && v22 == 0xE600000000000000)
    {
      break;
    }

    v23 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v23)
    {
      goto LABEL_14;
    }

    v2 = v21;
    (*v18)(v5, v21);
    v19 += v20;
    if (!--v16)
    {
      goto LABEL_16;
    }
  }

LABEL_14:
  v24 = v33;
  v25 = v34 + 32;
  (*(v34 + 32))(v33, v5, v21);
  v26 = URLQueryItem.value.getter();
  v28 = v27;
  (*(v25 - 24))(v24, v21);
  if (v28)
  {
    v29 = v26;
  }

  else
  {
LABEL_16:

    v29 = 0;
    v28 = 0xE000000000000000;
  }

  v30 = v28;
  v31 = _findStringSwitchCase(cases:string:)(&off_100321780, *&v29);

  return v31 == 0;
}

unint64_t _s8SOSBuddy20OpenCommandRequesterO8rawValueACSgSS_tcfC_0(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1003217B8, v2);

  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_100143C44()
{
  result = qword_100360410;
  if (!qword_100360410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100360410);
  }

  return result;
}

unint64_t sub_100143C9C()
{
  result = qword_100360418;
  if (!qword_100360418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100360418);
  }

  return result;
}

unint64_t sub_100143CF4()
{
  result = qword_100360420;
  if (!qword_100360420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100360420);
  }

  return result;
}

unint64_t sub_100143D4C()
{
  result = qword_100360428;
  if (!qword_100360428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100360428);
  }

  return result;
}

unint64_t sub_100143DA4()
{
  result = qword_100360430;
  if (!qword_100360430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100360430);
  }

  return result;
}

unint64_t sub_100143DFC()
{
  result = qword_100360438;
  if (!qword_100360438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100360438);
  }

  return result;
}

unint64_t sub_100143E54()
{
  result = qword_100360440;
  if (!qword_100360440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100360440);
  }

  return result;
}

unint64_t sub_100143EAC()
{
  result = qword_100360448;
  if (!qword_100360448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100360448);
  }

  return result;
}

unint64_t sub_100143F04()
{
  result = qword_100360450;
  if (!qword_100360450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100360450);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RequestCommandReason(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF7)
  {
    goto LABEL_17;
  }

  if (a2 + 9 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 9) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 9;
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

      return (*a1 | (v4 << 8)) - 9;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v8 = v6 - 10;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for RequestCommandReason(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF7)
  {
    v4 = 0;
  }

  if (a2 > 0xF6)
  {
    v5 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
    *result = a2 + 9;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1001441C0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 48);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100144208(uint64_t result, int a2, int a3)
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
      *(result + 48) = (a2 - 1);
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

uint64_t sub_100144264(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_1001442AC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_100144308()
{
  result = qword_1003605A0;
  if (!qword_1003605A0)
  {
    type metadata accessor for URL();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003605A0);
  }

  return result;
}

uint64_t sub_100144374()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10000F574();
  *v5 = static OS_dispatch_queue.main.getter();
  (*(v3 + 104))(v5, enum case for DispatchPredicate.onQueue(_:), v2);
  v6 = _dispatchPreconditionTest(_:)();
  result = (*(v3 + 8))(v5, v2);
  if (v6)
  {
    *(v1 + 24) = 0;
    *(v1 + 32) = 0;

    return swift_unknownObjectWeakAssign();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1001444A4(uint64_t a1)
{
  v3 = sub_1000040A8(&qword_100356518);
  __chkstk_darwin(v3 - 8);
  v5 = &v9 - v4;
  memmove((v1 + 40), (a1 + 32), 0x49uLL);
  static DispatchTime.now()();
  v6 = type metadata accessor for DispatchTime();
  (*(*(v6 - 8) + 56))(v5, 0, 1, v6);
  v7 = OBJC_IVAR____TtC8SOSBuddy24DeviceOrientationTracker_currentDeviceOrientationAt;
  swift_beginAccess();
  sub_10002B4A0(v5, v1 + v7);
  swift_endAccess();
  *(v1 + OBJC_IVAR____TtC8SOSBuddy24DeviceOrientationTracker_currentIsStationary) = 0;
  sub_1001445C0();
  return sub_100144C88();
}

void sub_1001445C0()
{
  v1 = type metadata accessor for Date();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v0 + 112))
  {
    return;
  }

  v6 = *(v0 + OBJC_IVAR____TtC8SOSBuddy24DeviceOrientationTracker_currentTargetInGreenZone);
  if (v6 == 2)
  {
    return;
  }

  v7 = *(v0 + OBJC_IVAR____TtC8SOSBuddy24DeviceOrientationTracker_currentIsStationary);
  if (v7 == 2)
  {
    return;
  }

  v8 = *(v0 + 40);
  v9 = OBJC_IVAR____TtC8SOSBuddy24DeviceOrientationTracker_lastDataSent;
  v10 = *(v0 + OBJC_IVAR____TtC8SOSBuddy24DeviceOrientationTracker_lastDataSent);
  if (v10)
  {
    v11 = v3;
    v12 = v10;
    if (([v12 targetLocked] ^ v6))
    {

      v3 = v11;
    }

    else
    {
      v13 = [v12 isDeviceStationary];

      v3 = v11;
      if (((v13 ^ v7) & 1) == 0)
      {
        return;
      }
    }
  }

  if (*(v0 + 24))
  {
    v14 = v3;
    v15 = v0;
    if (qword_100353A40 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_10000F53C(v16, qword_100381D10);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v17, v18, "Device orientation data changed, reporting", v19, 2u);
    }

    v20 = [objc_allocWithZone(CTStewieDeviceOrientationData) init];
    static Date.now.getter();
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v2 + 8))(v5, v14);
    [v20 setTimestamp:isa];

    [v20 setTargetLocked:v6 & 1];
    [v20 setIsDeviceStationary:v7 & 1];
    v22 = v8 * 57.2957795;
    if (COERCE__INT64(fabs(v8 * 57.2957795)) <= 0x7FEFFFFFFFFFFFFFLL)
    {
      if (v22 <= -9.22337204e18)
      {
        __break(1u);
      }

      else if (v22 < 9.22337204e18)
      {
        v23 = v15;
        [v20 setX:v22];
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          v25 = Strong;
          sub_1002460C0(v20);
          v23 = v15;
        }

        v26 = *(v23 + v9);
        *(v23 + v9) = v20;

        return;
      }

      __break(1u);
      return;
    }

    __break(1u);
    goto LABEL_27;
  }

  if (qword_100353A40 != -1)
  {
LABEL_27:
    swift_once();
  }

  v27 = type metadata accessor for Logger();
  sub_10000F53C(v27, qword_100381D10);
  v32 = Logger.logObject.getter();
  v28 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v32, v28))
  {
    v29 = swift_slowAlloc();
    *v29 = 0;
    _os_log_impl(&_mh_execute_header, v32, v28, "Device orientation data changed, but tracking is off, reporting skipped", v29, 2u);
  }

  v30 = v32;
}

uint64_t sub_1001449D4()
{
  v1 = sub_1000040A8(&qword_100356518);
  __chkstk_darwin(v1 - 8);
  v3 = &v19 - v2;
  v4 = type metadata accessor for DispatchTime();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v19 - v9;
  *(v0 + 32) = 0;

  if ((*(v0 + 112) & 1) == 0)
  {
    v12 = OBJC_IVAR____TtC8SOSBuddy24DeviceOrientationTracker_currentDeviceOrientationAt;
    swift_beginAccess();
    sub_1001451C0(v0 + v12, v3);
    if ((*(v5 + 48))(v3, 1, v4) == 1)
    {
      return sub_10012C414(v3);
    }

    v13 = v0;
    (*(v5 + 32))(v10, v3, v4);
    static DispatchTime.now()();
    v14 = DispatchTime.uptimeNanoseconds.getter();
    if (DispatchTime.uptimeNanoseconds.getter() >= v14)
    {
      v17 = *(v5 + 8);
      v17(v8, v4);
      v18 = 0;
    }

    else
    {
      v15 = DispatchTime.uptimeNanoseconds.getter();
      v16 = DispatchTime.uptimeNanoseconds.getter();
      v17 = *(v5 + 8);
      result = (v17)(v8, v4);
      v18 = v15 - v16;
      if (v15 < v16)
      {
        __break(1u);
        return result;
      }

      v0 = v13;
      if (v18 > 0xDF84757FFLL)
      {
        *(v13 + OBJC_IVAR____TtC8SOSBuddy24DeviceOrientationTracker_currentIsStationary) = 1;
LABEL_10:
        sub_1001445C0();
        return (v17)(v10, v4);
      }
    }

    *(v0 + OBJC_IVAR____TtC8SOSBuddy24DeviceOrientationTracker_currentIsStationary) = 0;
    sub_100144C88(60000 - v18 / 0xF4240);
    goto LABEL_10;
  }

  return result;
}

uint64_t sub_100144C88()
{
  v1 = v0;
  v2 = sub_1000040A8(&qword_100356A90);
  __chkstk_darwin(v2 - 8);
  v4 = &v16 - v3;
  v5 = type metadata accessor for DispatchPredicate();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = (&v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10000F574();
  *v8 = static OS_dispatch_queue.main.getter();
  (*(v6 + 104))(v8, enum case for DispatchPredicate.onQueue(_:), v5);
  v9 = _dispatchPreconditionTest(_:)();
  result = (*(v6 + 8))(v8, v5);
  if (v9)
  {
    if (!*(v1 + 32))
    {
      v11 = [objc_opt_self() mainRunLoop];
      v12 = type metadata accessor for NSRunLoop.SchedulerOptions();
      (*(*(v12 - 8) + 56))(v4, 1, 1, v12);
      type metadata accessor for NSTimer.TimerPublisher();
      swift_allocObject();
      v13 = NSDefaultRunLoopMode;
      v17 = NSTimer.TimerPublisher.init(interval:tolerance:runLoop:mode:options:)();
      sub_10007AC8C();
      v14 = ConnectablePublisher.autoconnect()();

      v17 = v14;
      swift_allocObject();
      swift_weakInit();
      sub_1000040A8(&qword_100359788);
      sub_10007AD24();
      v15 = Publisher<>.sink(receiveValue:)();

      *(v1 + 32) = v15;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100144F7C()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1001449D4();
  }

  return result;
}

uint64_t sub_100144FD4()
{
  swift_unknownObjectWeakDestroy();

  sub_10012C414(v0 + OBJC_IVAR____TtC8SOSBuddy24DeviceOrientationTracker_currentDeviceOrientationAt);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for DeviceOrientationTracker()
{
  result = qword_100360638;
  if (!qword_100360638)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1001450AC()
{
  sub_10002B388();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_100145180()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1001451C0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000040A8(&qword_100356518);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100145230()
{
  swift_unknownObjectWeakInit();
  *(v0 + 24) = 1;
  *(v0 + 32) = 0;
  *(v0 + 40) = 0u;
  *(v0 + 56) = 0u;
  *(v0 + 72) = 0u;
  *(v0 + 88) = 0u;
  *(v0 + 104) = 0;
  *(v0 + 112) = 1;
  v1 = OBJC_IVAR____TtC8SOSBuddy24DeviceOrientationTracker_currentDeviceOrientationAt;
  v2 = type metadata accessor for DispatchTime();
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  *(v0 + OBJC_IVAR____TtC8SOSBuddy24DeviceOrientationTracker_currentTargetInGreenZone) = 2;
  *(v0 + OBJC_IVAR____TtC8SOSBuddy24DeviceOrientationTracker_currentIsStationary) = 2;
  *(v0 + OBJC_IVAR____TtC8SOSBuddy24DeviceOrientationTracker_kMsOfNoMovementToConsiderStationary) = 60000;
  *(v0 + OBJC_IVAR____TtC8SOSBuddy24DeviceOrientationTracker_lastDataSent) = 0;
  return v0;
}

void sub_100145398(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  if (a1)
  {
    if (*(a1 + 64) && (v3 = *(a1 + 121), (sub_100071A54(0, *(a1 + 88)) & 1) != 0) && v3 != 2 && (v3 & 1) != 0)
    {
      type metadata accessor for AppEvents();
      sub_1001455EC(&qword_100354D48, type metadata accessor for AppEvents);
      v4 = EnvironmentObject.init()();
      v6 = v5;
      type metadata accessor for UIMetrics();
      sub_1001455EC(&qword_100354D40, type metadata accessor for UIMetrics);
      LOBYTE(v15) = 1;
      *&v11 = v4;
      *(&v11 + 1) = v6;
      *&v12 = EnvironmentObject.init()();
      *(&v12 + 1) = v7;
      v13[0] = static Edge.Set.top.getter();
      memset(&v13[8], 0, 32);
      v13[40] = 1;
      v14[0] = static Edge.Set.bottom.getter();
      memset(&v14[8], 0, 32);
      v14[40] = 1;
      ConnectionAssistantRendererEarthOutline.Buffers.shapesCount.getter(&v11);
      v19 = *&v13[32];
      v20 = *v14;
      v21[0] = *&v14[16];
      *(v21 + 9) = *&v14[25];
      v15 = v11;
      v16 = v12;
      v17 = *v13;
      v18 = *&v13[16];
    }

    else
    {
      sub_1001455BC(&v15);
    }

    v8 = v20;
    a2[4] = v19;
    a2[5] = v8;
    a2[6] = v21[0];
    *(a2 + 105) = *(v21 + 9);
    v9 = v16;
    *a2 = v15;
    a2[1] = v9;
    v10 = v18;
    a2[2] = v17;
    a2[3] = v10;
  }

  else
  {
    type metadata accessor for StewieModel(0);
    sub_1001455EC(&qword_1003561B8, type metadata accessor for StewieModel);
    EnvironmentObject.error()();
    __break(1u);
  }
}

double sub_1001455BC(uint64_t a1)
{
  *a1 = 1;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0;
  return result;
}

uint64_t sub_1001455EC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_100145638()
{
  result = qword_100360800;
  if (!qword_100360800)
  {
    sub_100008CF0(&qword_100360808);
    sub_100145718(&qword_100360810, &qword_100360818, &unk_1002883A0, sub_1001456E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100360800);
  }

  return result;
}

uint64_t sub_100145718(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_100008CF0(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10014579C()
{
  result = qword_100360830;
  if (!qword_100360830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100360830);
  }

  return result;
}

uint64_t sub_1001457F0(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_1000040A8(&qword_100360970);
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
    v14 = (*(a1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_100048F80(*(a1 + 56) + 32 * v13, v35);
    *&v34 = v16;
    *(&v34 + 1) = v15;
    v32[2] = v34;
    v33[0] = v35[0];
    v33[1] = v35[1];
    v32[0] = v34;

    swift_dynamicCast();
    sub_1000456C8(v33, v27);
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_1000456C8(v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_1000456C8(v31, v32);
    result = AnyHashable._rawHashValue(seed:)(v2[5]);
    v17 = -1 << *(v2 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*&v7[8 * (v18 >> 6)]) == 0)
    {
      v20 = 0;
      v21 = (63 - v17) >> 6;
      while (++v19 != v21 || (v20 & 1) == 0)
      {
        v22 = v19 == v21;
        if (v19 == v21)
        {
          v19 = 0;
        }

        v20 |= v22;
        v23 = *&v7[8 * v19];
        if (v23 != -1)
        {
          v10 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v18) & ~*&v7[8 * (v18 >> 6)])) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *&v7[(v10 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v10;
    v11 = v2[6] + 40 * v10;
    *v11 = v24;
    *(v11 + 16) = v25;
    *(v11 + 32) = v26;
    result = sub_1000456C8(v32, (v2[7] + 32 * v10));
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

uint64_t sub_100145AB8(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_1000040A8(&unk_10036A070);
    v1 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v1 = &_swiftEmptyDictionarySingleton;
  }

  v2 = 1 << *(a1 + 32);
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  else
  {
    v3 = -1;
  }

  v4 = v3 & *(a1 + 64);
  v5 = (v2 + 63) >> 6;
  v6 = v1 + 64;

  v8 = 0;
  while (v4)
  {
LABEL_15:
    v11 = (v8 << 9) | (8 * __clz(__rbit64(v4)));
    v12 = *(*(a1 + 48) + v11);
    v24 = *(*(a1 + 56) + v11);
    v13 = v12;

    sub_1000040A8(&qword_1003609A0);
    swift_dynamicCast();
    sub_1000456C8((v25 + 8), v23);
    sub_1000456C8(v23, v25);
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    Hasher.init(_seed:)();
    String.hash(into:)();
    v14 = Hasher._finalize()();

    v15 = -1 << v1[32];
    v16 = v14 & ~v15;
    v17 = v16 >> 6;
    if (((-1 << v16) & ~*&v6[8 * (v16 >> 6)]) == 0)
    {
      v18 = 0;
      v19 = (63 - v15) >> 6;
      while (++v17 != v19 || (v18 & 1) == 0)
      {
        v20 = v17 == v19;
        if (v17 == v19)
        {
          v17 = 0;
        }

        v18 |= v20;
        v21 = *&v6[8 * v17];
        if (v21 != -1)
        {
          v9 = __clz(__rbit64(~v21)) + (v17 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v9 = __clz(__rbit64((-1 << v16) & ~*&v6[8 * (v16 >> 6)])) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    *&v6[(v9 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v9;
    v4 &= v4 - 1;
    *(*(v1 + 6) + 8 * v9) = v13;
    result = sub_1000456C8(v25, (*(v1 + 7) + 32 * v9));
    ++*(v1 + 2);
  }

  while (1)
  {
    v10 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v10 >= v5)
    {

      return v1;
    }

    v4 = *(a1 + 64 + 8 * v10);
    ++v8;
    if (v4)
    {
      v8 = v10;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_100145D6C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  if (a2)
  {
    v5 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v5 = 0;
  }

  v6 = a3;
  v4(v5, a3);
}

uint64_t sub_100145E18(uint64_t a1)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v22 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for DispatchQoS();
  v5 = *(v21 - 8);
  __chkstk_darwin(v21);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchPredicate();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = (&v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10000F574();
  *v11 = static OS_dispatch_queue.main.getter();
  (*(v9 + 104))(v11, enum case for DispatchPredicate.onQueue(_:), v8);
  v12 = _dispatchPreconditionTest(_:)();
  (*(v9 + 8))(v11, v8);
  if (v12)
  {
    if (qword_100353A88 == -1)
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
  v13 = type metadata accessor for Logger();
  sub_10000F53C(v13, qword_100381DE8);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 134217984;
    *(v16 + 4) = a1;
    _os_log_impl(&_mh_execute_header, v14, v15, "openRoadsideAssistanceThread for %llu", v16, 0xCu);
  }

  v17 = swift_allocObject();
  *(v17 + 16) = a1;
  aBlock[4] = sub_10014ACC0;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1001D2438;
  aBlock[3] = &unk_100332980;
  v18 = _Block_copy(aBlock);
  static DispatchQoS.unspecified.getter();
  v23 = _swiftEmptyArrayStorage;
  sub_10014C744(&qword_10035BB40, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000040A8(&unk_100355D70);
  sub_1000112E8(&qword_10035BB50, &unk_100355D70);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v18);
  (*(v22 + 8))(v4, v2);
  (*(v5 + 8))(v7, v21);
}

uint64_t sub_100146270()
{
  v1 = v0;
  v2 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v26 = *(v2 - 8);
  v27 = v2;
  __chkstk_darwin(v2);
  v25 = v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v4);
  v24[1] = v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v6 - 8);
  sub_1000040A8(&qword_100360998);
  swift_allocObject();
  *(v0 + 16) = PassthroughSubject.init()();
  v7 = OBJC_IVAR____TtC8SOSBuddy13MessagesAgent__lastTransmissionProgress;
  v8 = type metadata accessor for TransmissionProgress(0);
  (*(*(v8 - 8) + 56))(v1 + v7, 1, 1, v8);
  v9 = [objc_opt_self() mainBundle];
  v10 = [v9 bundleIdentifier];

  if (v10)
  {
    v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v12;
  }

  else
  {
    v13 = 0x8000000100294A20;
    v11 = 0xD000000000000012;
  }

  sub_10000F574();
  v29[0] = v11;
  v29[1] = v13;

  v14._countAndFlagsBits = 0x746E6567616D692ELL;
  v14._object = 0xE800000000000000;
  String.append(_:)(v14);

  static DispatchQoS.unspecified.getter();
  v29[0] = _swiftEmptyArrayStorage;
  sub_10014C744(&unk_100355D50, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_1000040A8(&unk_10035BA20);
  sub_1000112E8(&unk_100355D60, &unk_10035BA20);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v26 + 104))(v25, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v27);
  *(v1 + 24) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  if (qword_100353A10 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  sub_10000F53C(v15, qword_100381C80);

  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v28 = v1;
    v29[0] = v19;
    *v18 = 136446210;
    type metadata accessor for MessagesAgent();

    v20 = String.init<A>(describing:)();
    v22 = sub_10017C9E8(v20, v21, v29);

    *(v18 + 4) = v22;
    _os_log_impl(&_mh_execute_header, v16, v17, "[%{public}s] init", v18, 0xCu);
    sub_100008964(v19);
  }

  return v1;
}

uint64_t sub_100146714()
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
    type metadata accessor for MessagesAgent();

    v7 = String.init<A>(describing:)();
    v9 = sub_10017C9E8(v7, v8, &v11);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "[%{public}s] deinit", v5, 0xCu);
    sub_100008964(v6);
  }

  sub_100008FA0(v1 + OBJC_IVAR____TtC8SOSBuddy13MessagesAgent__lastTransmissionProgress, &qword_100354FD8);
  return v1;
}

uint64_t sub_1001468BC()
{
  sub_100146714();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for MessagesAgent()
{
  result = qword_100360868;
  if (!qword_100360868)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100146968()
{
  sub_100087F3C();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_100146A14()
{
  v1 = v0;
  v2 = sub_1000040A8(&qword_100354FD8);
  __chkstk_darwin(v2 - 8);
  v4 = &v12 - v3;
  if (qword_100353A88 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_10000F53C(v5, qword_100381DE8);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "MessagesAgent stop", v8, 2u);
  }

  v9 = type metadata accessor for TransmissionProgress(0);
  (*(*(v9 - 8) + 56))(v4, 1, 1, v9);
  v10 = OBJC_IVAR____TtC8SOSBuddy13MessagesAgent__lastTransmissionProgress;
  swift_beginAccess();
  sub_10014C6D4(v4, v1 + v10);
  return swift_endAccess();
}

void sub_100146BBC()
{
  if (qword_100353A88 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_10000F53C(v0, qword_100381DE8);

  swift_errorRetain();
  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v2 = 136446466;

    sub_1000040A8(&qword_100359C00);
    v3 = String.init<A>(describing:)();
    v5 = sub_10017C9E8(v3, v4, &v10);

    *(v2 + 4) = v5;
    *(v2 + 12) = 2082;
    swift_errorRetain();
    sub_1000040A8(&qword_100355D88);
    v6 = String.init<A>(describing:)();
    v8 = sub_10017C9E8(v6, v7, &v10);

    *(v2 + 14) = v8;
    _os_log_impl(&_mh_execute_header, oslog, v1, "Opening Messages result: %{public}s, %{public}s", v2, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }
}

uint64_t sub_100146DD4(uint64_t a1, int a2, char *a3, uint64_t a4)
{
  v119 = a4;
  v129 = a2;
  v128 = a1;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v125 = *(v5 - 8);
  v126 = v5;
  __chkstk_darwin(v5);
  v123 = &v116 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v124 = type metadata accessor for DispatchQoS();
  v122 = *(v124 - 8);
  __chkstk_darwin(v124);
  v121 = &v116 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000040A8(&qword_1003580A0);
  __chkstk_darwin(v8 - 8);
  v10 = &v116 - v9;
  v127 = type metadata accessor for Locale.Language();
  v11 = *(v127 - 8);
  v12 = __chkstk_darwin(v127);
  v14 = &v116 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v116 - v15;
  v17 = sub_1000040A8(&qword_100360978);
  __chkstk_darwin(v17 - 8);
  v19 = &v116 - v18;
  if (qword_100353A88 != -1)
  {
    swift_once();
  }

  v20 = type metadata accessor for Logger();
  v21 = sub_10000F53C(v20, qword_100381DE8);

  v118 = v21;
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 134349056;
    *(v24 + 4) = v128;

    _os_log_impl(&_mh_execute_header, v22, v23, "startEmergencyThread - conversationId:%{public}llu", v24, 0xCu);
  }

  else
  {
  }

  v120 = v129 & 0x10000;
  v141 = xmmword_1002883C0;
  v130 = a3;
  if (a3)
  {

    Locale.language.getter();
    Locale.Language.languageCode.getter();
    v25 = *(v11 + 8);
    v25(v16, v127);
    v26 = type metadata accessor for Locale.LanguageCode();
    v27 = *(v26 - 8);
    if ((*(v27 + 48))(v19, 1, v26) == 1)
    {
      sub_100008FA0(v19, &qword_100360978);
      v28 = 0;
      v117 = 0;
    }

    else
    {
      v31 = Locale.LanguageCode.identifier.getter();
      v117 = v32;
      v33 = v19;
      v28 = v31;
      (*(v27 + 8))(v33, v26);
    }

    Locale.language.getter();
    Locale.Language.region.getter();
    v25(v14, v127);
    v34 = type metadata accessor for Locale.Region();
    v35 = *(v34 - 8);
    if ((*(v35 + 48))(v10, 1, v34) == 1)
    {
      sub_100008FA0(v10, &qword_1003580A0);
      v36 = 0;
      v37 = 0;
    }

    else
    {
      v36 = Locale.Region.identifier.getter();
      v37 = v38;
      (*(v35 + 8))(v10, v34);
    }

    v39 = v130;
    swift_beginAccess();
    sub_1000089B0((v39 + 80), &aBlock);
    v40 = v117;
    v41 = sub_1000C4070(v28, v117, v36, v37, &aBlock);
    v42 = v28;
    v43 = v41;
    v45 = v44;
    v127 = v42;
    sub_100008964(&aBlock);
    sub_10000F4D4(v141, *(&v141 + 1));
    *&v141 = v43;
    *(&v141 + 1) = v45;
    sub_10000F46C(v43, v45);

    v46 = Logger.logObject.getter();
    v47 = static os_log_type_t.default.getter();
    sub_10000F4D4(v43, v45);

    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v119 = swift_slowAlloc();
      *&v139[0] = v119;
      *v48 = 136381187;
      *&aBlock = v43;
      *(&aBlock + 1) = v45;
      sub_10000F46C(v43, v45);
      sub_1000040A8(&qword_100360988);
      v49 = String.init<A>(describing:)();
      v51 = sub_10017C9E8(v49, v50, v139);

      *(v48 + 4) = v51;
      *(v48 + 12) = 2082;
      *&aBlock = v127;
      *(&aBlock + 1) = v40;
      sub_1000040A8(&qword_1003566A0);
      v52 = String.init<A>(describing:)();
      v54 = sub_10017C9E8(v52, v53, v139);

      *(v48 + 14) = v54;
      *(v48 + 22) = 2082;
      *&aBlock = v36;
      *(&aBlock + 1) = v37;
      v55 = String.init<A>(describing:)();
      v57 = sub_10017C9E8(v55, v56, v139);

      *(v48 + 24) = v57;
      _os_log_impl(&_mh_execute_header, v46, v47, "startEmergencyThread - serializedQuestionnaire: %{private}s for language: %{public}s, country: %{public}s", v48, 0x20u);
      swift_arrayDestroy();
    }

    else
    {
    }

    v30 = v120;
    v58 = *(v130 + 8);
    if (*(v58 + 16))
    {
      v59 = sub_1001921EC(0);
      v60 = 2;
      if (v61)
      {
        sub_100048F80(*(v58 + 56) + 32 * v59, &aBlock);
        if (swift_dynamicCast())
        {
          v60 = LOBYTE(v139[0]);
        }

        else
        {
          v60 = 2;
        }
      }
    }

    else
    {
      v60 = 2;
    }

    v62 = Logger.logObject.getter();
    v63 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v62, v63))
    {
      v64 = swift_slowAlloc();
      v65 = swift_slowAlloc();
      *&aBlock = v65;
      *v64 = 136380675;
      LOBYTE(v139[0]) = v60;
      sub_1000040A8(&unk_1003655D0);
      v66 = String.init<A>(describing:)();
      v68 = sub_10017C9E8(v66, v67, &aBlock);

      *(v64 + 4) = v68;
      _os_log_impl(&_mh_execute_header, v62, v63, "startEmergencyThread - recorded notifyEmergencyContacts: %{private}s", v64, 0xCu);
      sub_100008964(v65);
    }

    v29 = 1;
    if (v30 && v60 != 2)
    {
      if (v60)
      {
        v29 = 3;
      }

      else
      {
        v29 = 1;
      }
    }
  }

  else
  {
    v29 = 1;
    v30 = v120;
  }

  v69 = sub_1002559FC(&_swiftEmptyArrayStorage);
  v70 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v72 = v71;
  v144 = &type metadata for Int;
  *&aBlock = 1;
  sub_1000456C8(&aBlock, v139);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v131 = v69;
  sub_100188F48(v139, v70, v72, isUniquelyReferenced_nonNull_native);

  v74 = v131;
  v75 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v77 = v76;
  v144 = &type metadata for UInt64;
  *&aBlock = v128;
  sub_1000456C8(&aBlock, v139);
  v78 = swift_isUniquelyReferenced_nonNull_native();
  *&v131 = v74;
  sub_100188F48(v139, v75, v77, v78);

  v79 = v131;
  v80 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v82 = v81;
  v83 = sub_10014B16C(v129, v30 != 0, v130);
  v144 = sub_1000040A8(&qword_100360980);
  *&aBlock = v83;
  sub_1000456C8(&aBlock, v139);
  v84 = swift_isUniquelyReferenced_nonNull_native();
  *&v131 = v79;
  sub_100188F48(v139, v80, v82, v84);

  v85 = v131;
  swift_beginAccess();
  v86 = *(&v141 + 1);
  if (*(&v141 + 1) >> 60 != 15)
  {
    v87 = v141;
    v88 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v89 = v29;
    v91 = v90;
    v144 = &type metadata for Data;
    *&aBlock = v87;
    *(&aBlock + 1) = v86;
    sub_1000456C8(&aBlock, v139);
    sub_10000F46C(v87, v86);
    sub_10000F480(v87, v86);
    v92 = swift_isUniquelyReferenced_nonNull_native();
    *&v131 = v85;
    sub_100188F48(v139, v88, v91, v92);
    sub_10000F4D4(v87, v86);
    v29 = v89;

    v85 = v131;
  }

  v93 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v95 = v94;
  v144 = &type metadata for Int;
  v127 = v29;
  *&aBlock = v29;
  sub_1000456C8(&aBlock, v139);
  v96 = swift_isUniquelyReferenced_nonNull_native();
  *&v131 = v85;
  sub_100188F48(v139, v93, v95, v96);

  v97 = v131;
  v98 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v100 = v99;
  v144 = &type metadata for Bool;
  v120 = HIWORD(v30);
  LOBYTE(aBlock) = BYTE2(v30);
  sub_1000456C8(&aBlock, v139);
  v101 = swift_isUniquelyReferenced_nonNull_native();
  *&v131 = v97;
  sub_100188F48(v139, v98, v100, v101);

  v102 = v131;
  v103 = swift_allocObject();
  *(v103 + 16) = v102;
  v145 = sub_10014C6A8;
  v146 = v103;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  v143 = sub_1001D2438;
  v144 = &unk_100332AC0;
  v104 = _Block_copy(&aBlock);
  v105 = v121;
  static DispatchQoS.unspecified.getter();
  *&v139[0] = &_swiftEmptyArrayStorage;
  sub_10014C744(&qword_10035BB40, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000040A8(&unk_100355D70);
  sub_1000112E8(&qword_10035BB50, &unk_100355D70);
  v106 = v123;
  v107 = v126;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v104);
  (*(v125 + 8))(v106, v107);
  (*(v122 + 8))(v105, v124);

  v108 = v130;
  if (v130)
  {
    v109 = *(*(v130 + 43) + 88);
  }

  else
  {
    v109 = 0;
  }

  sub_10014BD28(v130, 0, &aBlock);
  v110 = v127;
  if (!*(&aBlock + 1))
  {
    v112 = 0;
    v111 = 0;
    if (v108)
    {
      goto LABEL_37;
    }

LABEL_39:
    v114 = 2;
    goto LABEL_40;
  }

  v112 = v145;
  v111 = v146;

  sub_100008FA0(&aBlock, &qword_10035C0A0);
  if (!v108)
  {
    goto LABEL_39;
  }

LABEL_37:
  v113 = sub_1000BA1E4();
  v108 = v130;
  v114 = v113;
LABEL_40:
  v137 = BYTE1(v129) & 1;
  v136 = v108 == 0;
  v138 = 0;
  *&v131 = v128;
  BYTE8(v131) = v120;
  *&v132 = v110;
  WORD4(v132) = v129 & 0x1FF;
  *&v133 = v109;
  BYTE8(v133) = v108 == 0;
  *&v134 = v112;
  *(&v134 + 1) = v111;
  v135 = v114;
  PassthroughSubject.send(_:)();
  v139[2] = v133;
  v139[3] = v134;
  v140 = v135;
  v139[0] = v131;
  v139[1] = v132;
  sub_10006E068(v139);
  return sub_10000F4D4(v141, *(&v141 + 1));
}

uint64_t sub_100147D98()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for DispatchQoS();
  v6 = *(v22 - 8);
  __chkstk_darwin(v22);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchPredicate();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = (&v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10000F574();
  *v12 = static OS_dispatch_queue.main.getter();
  (*(v10 + 104))(v12, enum case for DispatchPredicate.onQueue(_:), v9);
  v13 = _dispatchPreconditionTest(_:)();
  (*(v10 + 8))(v12, v9);
  if (v13)
  {
    if (qword_100353A88 == -1)
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
  v21 = v3;
  v14 = type metadata accessor for Logger();
  sub_10000F53C(v14, qword_100381DE8);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&_mh_execute_header, v15, v16, "openEmergencyThread", v17, 2u);
  }

  aBlock[4] = sub_10014C6A0;
  aBlock[5] = v1;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1001D2438;
  aBlock[3] = &unk_100332A70;
  v18 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v23 = _swiftEmptyArrayStorage;
  sub_10014C744(&qword_10035BB40, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000040A8(&unk_100355D70);
  sub_1000112E8(&qword_10035BB50, &unk_100355D70);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v18);
  (*(v21 + 8))(v5, v2);
  (*(v6 + 8))(v8, v22);
}

void sub_1001481D4()
{
  sub_1000040A8(&unk_100357278);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100279160;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 72) = &type metadata for Int;
  *(inited + 40) = v1;
  *(inited + 48) = 1;
  v2 = sub_1002559FC(inited);
  swift_setDeallocating();
  sub_100008FA0(inited + 32, &unk_10036A000);
  if (qword_100353A88 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_10000F53C(v3, qword_100381DE8);

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v16 = v7;
    *v6 = 136380675;
    v8 = Dictionary.description.getter();
    v10 = sub_10017C9E8(v8, v9, &v16);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v4, v5, "openEmergencyThread - sending dictionary - %{private}s", v6, 0xCu);
    sub_100008964(v7);
  }

  v11 = [objc_allocWithZone(IMStewieChat) init];
  sub_1001457F0(v2);

  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v11 openStewieChatWithContext:isa];

  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v13, v14, "openEmergencyThread - sent", v15, 2u);
  }
}

uint64_t sub_1001484B4(uint64_t a1, uint64_t a2, int a3)
{
  v4 = v3;
  v37 = a3;
  v36 = a2;
  v46 = a1;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v42 = *(v5 - 8);
  v43 = v5;
  __chkstk_darwin(v5);
  v40 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = type metadata accessor for DispatchQoS();
  v39 = *(v41 - 8);
  __chkstk_darwin(v41);
  v38 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for TransmissionProgress(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = (&v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = sub_1000040A8(&qword_100354FD8);
  __chkstk_darwin(v12 - 8);
  v14 = (&v36 - v13);
  v15 = sub_1000040A8(&qword_100359F60);
  v16 = v15 - 8;
  __chkstk_darwin(v15);
  v18 = &v36 - v17;
  v19 = OBJC_IVAR____TtC8SOSBuddy13MessagesAgent__lastTransmissionProgress;
  swift_beginAccess();
  v20 = *(v16 + 56);
  v44 = v19;
  v45 = v4;
  sub_100006C20(v4 + v19, v18, &qword_100354FD8);
  sub_100006C20(v46, &v18[v20], &qword_100354FD8);
  v21 = *(v9 + 48);
  if (v21(v18, 1, v8) == 1)
  {
    if (v21(&v18[v20], 1, v8) == 1)
    {
      return sub_100008FA0(v18, &qword_100354FD8);
    }
  }

  else
  {
    sub_100006C20(v18, v14, &qword_100354FD8);
    if (v21(&v18[v20], 1, v8) != 1)
    {
      sub_10000C9A4(&v18[v20], v11);
      v35 = sub_1000F84AC(v14, v11);
      sub_100088598(v11);
      sub_100088598(v14);
      result = sub_100008FA0(v18, &qword_100354FD8);
      if (v35)
      {
        return result;
      }

      goto LABEL_7;
    }

    sub_100088598(v14);
  }

  sub_100008FA0(v18, &qword_100359F60);
LABEL_7:
  v23 = v45;
  v24 = v46;
  v25 = sub_100148ED0(v46);
  if ((v26 & 1) == 0)
  {
    v27 = v25;
    v28 = swift_allocObject();
    v29 = v36;
    *(v28 + 16) = v27;
    *(v28 + 24) = v29;
    *(v28 + 32) = v37 & 1;
    aBlock[4] = sub_10014C694;
    aBlock[5] = v28;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1001D2438;
    aBlock[3] = &unk_100332A48;
    v30 = _Block_copy(aBlock);
    v31 = v38;
    static DispatchQoS.unspecified.getter();
    v47 = &_swiftEmptyArrayStorage;
    sub_10014C744(&qword_10035BB40, &type metadata accessor for DispatchWorkItemFlags);
    sub_1000040A8(&unk_100355D70);
    sub_1000112E8(&qword_10035BB50, &unk_100355D70);
    v32 = v40;
    v33 = v43;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v30);
    (*(v42 + 8))(v32, v33);
    (*(v39 + 8))(v31, v41);
  }

  v34 = v44;
  swift_beginAccess();
  sub_10014C614(v24, v23 + v34);
  return swift_endAccess();
}

void sub_100148A4C(uint64_t a1, uint64_t a2, char a3)
{
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
    v10 = swift_slowAlloc();
    v37[0] = v10;
    *v9 = 136315138;
    *&v36[0] = a1;
    type metadata accessor for CTStewieServiceType(0);
    v11 = String.init<A>(describing:)();
    v13 = sub_10017C9E8(v11, v12, v37);

    *(v9 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v7, v8, "notifyAboutLocationUpdate - %s", v9, 0xCu);
    sub_100008964(v10);
  }

  sub_1000040A8(&unk_100357278);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100279160;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 72) = &type metadata for Int;
  *(inited + 40) = v15;
  *(inited + 48) = a1;
  v16 = sub_1002559FC(inited);
  swift_setDeallocating();
  sub_100008FA0(inited + 32, &unk_10036A000);
  if (a1 == 8)
  {
    if ((a3 & 1) == 0)
    {
      v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v34 = v33;
      v38 = &type metadata for UInt64;
      v37[0] = a2;
      sub_1000456C8(v37, v36);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      sub_100188F48(v36, v32, v34, isUniquelyReferenced_nonNull_native);

      if (*(v16 + 16))
      {
        goto LABEL_9;
      }

LABEL_15:

      return;
    }

    v17 = sub_1002559FC(&_swiftEmptyArrayStorage);

    v16 = v17;
  }

  if (!*(v16 + 16))
  {
    goto LABEL_15;
  }

LABEL_9:
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v37[0] = v21;
    *v20 = 136380675;

    v22 = Dictionary.description.getter();
    v24 = v23;

    v25 = sub_10017C9E8(v22, v24, v37);

    *(v20 + 4) = v25;
    _os_log_impl(&_mh_execute_header, v18, v19, "notifyAboutLocationUpdate - sending dictionary - %{private}s", v20, 0xCu);
    sub_100008964(v21);
  }

  v26 = [objc_allocWithZone(IMStewieChat) init];

  sub_1001457F0(v27);

  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v26 locationUpdateDelivered:isa];

  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    *v31 = 0;
    _os_log_impl(&_mh_execute_header, v29, v30, "notifyAboutLocationUpdate - sent", v31, 2u);
  }
}

uint64_t sub_100148ED0(uint64_t a1)
{
  v48 = a1;
  v2 = type metadata accessor for Date();
  v45 = *(v2 - 8);
  v46 = v2;
  __chkstk_darwin(v2);
  v42 = &v42 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1000040A8(&qword_100356188);
  __chkstk_darwin(v4 - 8);
  v43 = &v42 - v5;
  v6 = sub_1000040A8(&qword_10035E3D0);
  __chkstk_darwin(v6);
  v44 = &v42 - v7;
  v8 = sub_1000040A8(&qword_100354FD8);
  v9 = __chkstk_darwin(v8 - 8);
  v11 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v42 - v12;
  v14 = type metadata accessor for TransmissionProgress(0);
  v15 = *(v14 - 1);
  v16 = __chkstk_darwin(v14);
  v47 = &v42 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v19 = &v42 - v18;
  v20 = OBJC_IVAR____TtC8SOSBuddy13MessagesAgent__lastTransmissionProgress;
  swift_beginAccess();
  sub_100006C20(v1 + v20, v13, &qword_100354FD8);
  v21 = *(v15 + 48);
  if (v21(v13, 1, v14) == 1)
  {
    v22 = &qword_100354FD8;
    v23 = v13;
LABEL_3:
    sub_100008FA0(v23, v22);
    return 0;
  }

  sub_10000C9A4(v13, v19);
  v24 = v19[v14[8]];
  if (v24 > 5)
  {
    if (v24 != 6)
    {
LABEL_16:
      sub_100088598(v19);
      return 0;
    }

    v26 = 8;
  }

  else
  {
    if (v24 - 3 < 3 || v24 < 2)
    {
      goto LABEL_16;
    }

    v26 = 1;
  }

  if (*&v19[v14[7]] != 100)
  {
    goto LABEL_16;
  }

  sub_100006C20(v48, v11, &qword_100354FD8);
  if (v21(v11, 1, v14) == 1)
  {
    sub_100088598(v19);
    sub_100008FA0(v11, &qword_100354FD8);
    return v26;
  }

  v28 = v11;
  v29 = v47;
  sub_10000C9A4(v28, v47);
  v30 = *(v29 + v14[8]);
  if (v30 == 8 || v30 != v24 || *(v29 + v14[7]) != 100)
  {
    sub_100088598(v29);
    sub_100088598(v19);
    return v26;
  }

  v31 = v14[5];
  v32 = *(v6 + 48);
  v33 = v44;
  sub_100006C20(v29 + v31, v44, &qword_100356188);
  sub_100006C20(&v19[v31], v33 + v32, &qword_100356188);
  v35 = v45;
  v34 = v46;
  v36 = *(v45 + 48);
  if (v36(v33, 1, v46) == 1)
  {
    sub_100088598(v29);
    sub_100088598(v19);
    if (v36(v33 + v32, 1, v34) == 1)
    {
      v22 = &qword_100356188;
      v23 = v33;
      goto LABEL_3;
    }

    goto LABEL_28;
  }

  v37 = v43;
  sub_100006C20(v33, v43, &qword_100356188);
  if (v36(v33 + v32, 1, v34) == 1)
  {
    sub_100088598(v29);
    sub_100088598(v19);
    (*(v35 + 8))(v37, v34);
LABEL_28:
    sub_100008FA0(v33, &qword_10035E3D0);
    return v26;
  }

  v38 = v33 + v32;
  v39 = v42;
  (*(v35 + 32))(v42, v38, v34);
  sub_10014C744(&unk_10035C9E0, &type metadata accessor for Date);
  v40 = dispatch thunk of static Equatable.== infix(_:_:)();
  v41 = *(v35 + 8);
  v41(v39, v34);
  sub_100088598(v29);
  sub_100088598(v19);
  v41(v37, v34);
  sub_100008FA0(v33, &qword_100356188);
  if (v40)
  {
    return 0;
  }

  return v26;
}

uint64_t sub_1001494F0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 66))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 65);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_100149538(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 66) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 66) = 0;
    }

    if (a2)
    {
      *(result + 65) = -a2;
    }
  }

  return result;
}

uint64_t sub_1001495AC(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  v141 = a5;
  v148 = a3;
  v151 = a2;
  v152 = a1;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v146 = *(v6 - 8);
  v147 = v6;
  __chkstk_darwin(v6);
  v144 = &v138[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v145 = type metadata accessor for DispatchQoS();
  v143 = *(v145 - 8);
  __chkstk_darwin(v145);
  v142 = &v138[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_1000040A8(&qword_1003580A0);
  __chkstk_darwin(v9 - 8);
  v11 = &v138[-v10];
  v149 = type metadata accessor for Locale.Language();
  v12 = *(v149 - 8);
  v13 = __chkstk_darwin(v149);
  v15 = &v138[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v13);
  v17 = &v138[-v16];
  v18 = sub_1000040A8(&qword_100360978);
  __chkstk_darwin(v18 - 8);
  v20 = &v138[-v19];
  if (qword_100353A88 != -1)
  {
    swift_once();
  }

  v21 = type metadata accessor for Logger();
  v22 = sub_10000F53C(v21, qword_100381DE8);

  v150 = v22;
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 134349056;
    *(v25 + 4) = v152;

    _os_log_impl(&_mh_execute_header, v23, v24, "startRoadsideAssistanceThread - conversationId:%{public}llu", v25, 0xCu);
  }

  else
  {
  }

  v167 = xmmword_1002883C0;
  v153 = a4;
  if (!a4)
  {
    v30 = 0;
    v31 = 0;
    v32 = v151;
    v33 = 0;
    goto LABEL_54;
  }

  Locale.language.getter();
  Locale.Language.languageCode.getter();
  v26 = *(v12 + 8);
  v26(v17, v149);
  v27 = type metadata accessor for Locale.LanguageCode();
  v28 = *(v27 - 8);
  if ((*(v28 + 48))(v20, 1, v27) == 1)
  {
    sub_100008FA0(v20, &qword_100360978);
    v29 = 0;
    v140 = 0;
  }

  else
  {
    v34 = Locale.LanguageCode.identifier.getter();
    v140 = v35;
    v36 = v20;
    v29 = v34;
    (*(v28 + 8))(v36, v27);
  }

  Locale.language.getter();
  Locale.Language.region.getter();
  v26(v15, v149);
  v37 = type metadata accessor for Locale.Region();
  v38 = *(v37 - 8);
  if ((*(v38 + 48))(v11, 1, v37) == 1)
  {
    sub_100008FA0(v11, &qword_1003580A0);
    v39 = 0;
    v40 = 0;
  }

  else
  {
    v39 = Locale.Region.identifier.getter();
    v40 = v41;
    (*(v38 + 8))(v11, v37);
  }

  v32 = v151;
  v42 = v153;
  swift_beginAccess();
  sub_1000089B0(v42 + 80, &aBlock);
  v43 = v140;
  v44 = sub_1000C4070(v29, v140, v39, v40, &aBlock);
  v45 = v29;
  v46 = v44;
  v48 = v47;
  v149 = v45;
  sub_100008964(&aBlock);
  sub_10000F4D4(v167, *(&v167 + 1));
  *&v167 = v46;
  *(&v167 + 1) = v48;
  sub_10000F46C(v46, v48);

  v49 = Logger.logObject.getter();
  v50 = static os_log_type_t.default.getter();
  sub_10000F4D4(v46, v48);

  if (os_log_type_enabled(v49, v50))
  {
    v51 = swift_slowAlloc();
    v139 = v50;
    v52 = v51;
    v141 = swift_slowAlloc();
    *&v162 = v141;
    *v52 = 136381187;
    *&aBlock = v46;
    *(&aBlock + 1) = v48;
    sub_10000F46C(v46, v48);
    sub_1000040A8(&qword_100360988);
    v53 = String.init<A>(describing:)();
    v55 = sub_10017C9E8(v53, v54, &v162);

    *(v52 + 4) = v55;
    *(v52 + 12) = 2082;
    *&aBlock = v149;
    *(&aBlock + 1) = v43;
    sub_1000040A8(&qword_1003566A0);
    v56 = String.init<A>(describing:)();
    v58 = sub_10017C9E8(v56, v57, &v162);

    *(v52 + 14) = v58;
    *(v52 + 22) = 2082;
    v32 = v151;
    *&aBlock = v39;
    *(&aBlock + 1) = v40;
    v59 = String.init<A>(describing:)();
    v61 = sub_10017C9E8(v59, v60, &v162);

    *(v52 + 24) = v61;
    _os_log_impl(&_mh_execute_header, v49, v139, "startRoadsideAssistanceThread - serializedQuestionnaire: %{private}s for language: %{public}s, country: %{public}s", v52, 0x20u);
    swift_arrayDestroy();
  }

  else
  {
  }

  v62 = *(v153 + 64);
  if (*(v62 + 16))
  {
    v63 = sub_1001921EC(5);
    if (v64)
    {
      sub_100048F80(*(v62 + 56) + 32 * v63, &aBlock);
      if (swift_dynamicCast())
      {
        v65 = *(&v154 + 1);
        v30 = v154;
        if (!*(&v154 + 1))
        {
          goto LABEL_50;
        }

        goto LABEL_31;
      }
    }
  }

  v66 = *(v153 + 64);
  if (*(v66 + 16))
  {
    v67 = sub_1001921EC(6);
    if (v68)
    {
      sub_100048F80(*(v66 + 56) + 32 * v67, &aBlock);
      v69 = swift_dynamicCast();
      if (v69)
      {
        v65 = *(&v162 + 1);
      }

      else
      {
        v65 = 0;
      }

      if (v69)
      {
        v30 = v162;
      }

      else
      {
        v30 = 0;
      }

      if (!v65)
      {
        goto LABEL_50;
      }

LABEL_31:
      v70 = 0xE000000000000000;
      *&v154 = 0;
      *(&v154 + 1) = 0xE000000000000000;
      v71 = HIBYTE(v65) & 0xF;
      if ((v65 & 0x2000000000000000) == 0)
      {
        v71 = v30 & 0xFFFFFFFFFFFFLL;
      }

      *&aBlock = v30;
      *(&aBlock + 1) = v65;
      v169 = 0;
      v170 = v71;

      v72 = String.Iterator.next()();
      if (v72.value._object)
      {
        countAndFlagsBits = v72.value._countAndFlagsBits;
        object = v72.value._object;
        do
        {
          v77 = HIBYTE(object) & 0xF;
          *&v162 = countAndFlagsBits;
          *(&v162 + 1) = object;
          if ((object & 0x2000000000000000) == 0)
          {
            v77 = countAndFlagsBits & 0xFFFFFFFFFFFFLL;
          }

          *&v163 = 0;
          *(&v163 + 1) = v77;

          do
          {
            if (!String.Iterator.next()().value._object)
            {

              v75._countAndFlagsBits = countAndFlagsBits;
              v75._object = object;
              String.append(_:)(v75);
              goto LABEL_36;
            }

            v78 = Character.isNumber.getter();
          }

          while ((v78 & 1) != 0);

LABEL_36:

          v76 = String.Iterator.next()();
          countAndFlagsBits = v76.value._countAndFlagsBits;
          object = v76.value._object;
        }

        while (v76.value._object);
        v70 = *(&v154 + 1);
        v79 = v154;
      }

      else
      {
        v79 = 0;
      }

      *&aBlock = v79;
      *(&aBlock + 1) = v70;
      v30 = String.init<A>(_:)();
      v31 = v80;

      v81 = HIBYTE(v31) & 0xF;
      if ((v31 & 0x2000000000000000) == 0)
      {
        v81 = v30 & 0xFFFFFFFFFFFFLL;
      }

      if (v81)
      {
        goto LABEL_51;
      }
    }
  }

  v30 = 0;
LABEL_50:
  v31 = 0;
LABEL_51:
  v82 = Logger.logObject.getter();
  v83 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v82, v83))
  {
    v84 = swift_slowAlloc();
    v85 = swift_slowAlloc();
    *&v162 = v85;
    *v84 = 136380675;
    *&aBlock = v30;
    *(&aBlock + 1) = v31;

    sub_1000040A8(&qword_1003566A0);
    v86 = String.init<A>(describing:)();
    v88 = sub_10017C9E8(v86, v87, &v162);

    *(v84 + 4) = v88;
    _os_log_impl(&_mh_execute_header, v82, v83, "startRoadsideAssistanceThread - recorded phone number: %{private}s", v84, 0xCu);
    sub_100008964(v85);
  }

  v33 = v153;

LABEL_54:
  v89 = sub_1002559FC(&_swiftEmptyArrayStorage);
  v90 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v92 = v91;
  v170 = &type metadata for Int;
  *&aBlock = 8;
  sub_1000456C8(&aBlock, &v162);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v154 = v89;
  sub_100188F48(&v162, v90, v92, isUniquelyReferenced_nonNull_native);

  v94 = v154;
  v95 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v97 = v96;
  v170 = &type metadata for UInt64;
  *&aBlock = v32;
  sub_1000456C8(&aBlock, &v162);
  v98 = swift_isUniquelyReferenced_nonNull_native();
  *&v154 = v94;
  sub_100188F48(&v162, v95, v97, v98);

  v99 = v154;
  v100 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v102 = v101;
  v170 = &type metadata for Bool;
  LOBYTE(aBlock) = 0;
  sub_1000456C8(&aBlock, &v162);
  v103 = swift_isUniquelyReferenced_nonNull_native();
  *&v154 = v99;
  sub_100188F48(&v162, v100, v102, v103);

  v104 = v154;
  v105 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v107 = v106;
  v170 = &type metadata for UInt64;
  *&aBlock = v152;
  sub_1000456C8(&aBlock, &v162);
  v108 = swift_isUniquelyReferenced_nonNull_native();
  *&v154 = v104;
  sub_100188F48(&v162, v105, v107, v108);

  v109 = v154;
  v110 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v112 = v111;
  v113 = sub_10014BEE8(v33);
  v170 = sub_1000040A8(&qword_100360980);
  *&aBlock = v113;
  sub_1000456C8(&aBlock, &v162);
  v114 = swift_isUniquelyReferenced_nonNull_native();
  *&v154 = v109;
  sub_100188F48(&v162, v110, v112, v114);

  v115 = v154;
  swift_beginAccess();
  v116 = *(&v167 + 1);
  if (*(&v167 + 1) >> 60 != 15)
  {
    v117 = v167;
    v118 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v120 = v119;
    v170 = &type metadata for Data;
    *&aBlock = v117;
    *(&aBlock + 1) = v116;
    sub_1000456C8(&aBlock, &v162);
    sub_10000F46C(v117, v116);
    sub_10000F480(v117, v116);
    v121 = swift_isUniquelyReferenced_nonNull_native();
    *&v154 = v115;
    sub_100188F48(&v162, v118, v120, v121);
    sub_10000F4D4(v117, v116);

    v115 = v154;
  }

  v150 = v31;
  if (v31)
  {
    v122 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v124 = v123;
    v170 = &type metadata for String;
    *&aBlock = v30;
    *(&aBlock + 1) = v31;
    sub_1000456C8(&aBlock, &v162);

    v125 = swift_isUniquelyReferenced_nonNull_native();
    *&v154 = v115;
    sub_100188F48(&v162, v122, v124, v125);

    v115 = v154;
  }

  v126 = swift_allocObject();
  *(v126 + 16) = v115;
  v171 = sub_10014C594;
  v172 = v126;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  v169 = sub_1001D2438;
  v170 = &unk_1003329F8;
  v127 = _Block_copy(&aBlock);
  v128 = v142;
  static DispatchQoS.unspecified.getter();
  *&v162 = &_swiftEmptyArrayStorage;
  sub_10014C744(&qword_10035BB40, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000040A8(&unk_100355D70);
  sub_1000112E8(&qword_10035BB50, &unk_100355D70);
  v129 = v144;
  v130 = v147;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v127);
  (*(v146 + 8))(v129, v130);
  (*(v143 + 8))(v128, v145);

  v131 = v153;
  if (v153)
  {
    v132 = *(*(v153 + 344) + 88);
  }

  else
  {
    v132 = 0;
  }

  v133 = v148;
  v134 = v151;
  sub_10014BD28(v153, 1, &aBlock);
  if (*(&aBlock + 1))
  {
    v136 = v171;
    v135 = v172;

    sub_100008FA0(&aBlock, &qword_10035C0A0);
  }

  else
  {
    v136 = 0;
    v135 = 0;
  }

  v161 = v133 & 1;
  v160 = v131 == 0;
  v159 = 1;
  *&v154 = v152;
  *(&v154 + 1) = v134;
  LOBYTE(v155) = v133 & 1;
  *(&v155 + 1) = v132;
  LOBYTE(v156) = v131 == 0;
  *(&v156 + 1) = v136;
  *&v157 = v135;
  HIBYTE(v158) = 1;
  PassthroughSubject.send(_:)();
  v163 = v155;
  v164 = v156;
  v165 = v157;
  v166 = v158;
  v162 = v154;
  sub_10006E068(&v162);
  sub_10000F4D4(v167, *(&v167 + 1));
}

void sub_10014A728(uint64_t a1, const char *a2, const char *a3)
{
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
    osloga = a3;
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v20 = v10;
    *v9 = 136380675;
    v11 = Dictionary.description.getter();
    v13 = sub_10017C9E8(v11, v12, &v20);

    *(v9 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v7, v8, a2, v9, 0xCu);
    sub_100008964(v10);

    a3 = osloga;
  }

  v14 = [objc_allocWithZone(IMStewieChat) init];
  sub_1001457F0(a1);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v14 sendQuestionnaire:isa];

  oslog = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v16, a3, v17, 2u);
  }
}

void sub_10014A99C(uint64_t a1)
{
  sub_1000040A8(&unk_100357278);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100279170;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 72) = &type metadata for Int;
  *(inited + 40) = v3;
  *(inited + 48) = 8;
  *(inited + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 88) = v4;
  *(inited + 120) = &type metadata for UInt64;
  *(inited + 96) = a1;
  v5 = sub_1002559FC(inited);
  swift_setDeallocating();
  sub_1000040A8(&unk_10036A000);
  swift_arrayDestroy();
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
    v10 = swift_slowAlloc();
    v19 = v10;
    *v9 = 136380675;
    v11 = Dictionary.description.getter();
    v13 = sub_10017C9E8(v11, v12, &v19);

    *(v9 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v7, v8, "openRoadsideAssistanceThread - sending dictionary - %{private}s", v9, 0xCu);
    sub_100008964(v10);
  }

  v14 = [objc_allocWithZone(IMStewieChat) init];
  sub_1001457F0(v5);

  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v14 openStewieChatWithContext:isa];

  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&_mh_execute_header, v16, v17, "openRoadsideAssistanceThread - sent", v18, 2u);
  }
}

uint64_t sub_10014ACC8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_10014ACE0()
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
    _os_log_impl(&_mh_execute_header, oslog, v1, "MessagesAgent start", v2, 2u);
  }
}

void sub_10014ADC8()
{
  v0 = sub_1000040A8(&qword_100357468);
  __chkstk_darwin(v0 - 8);
  v2 = aBlock - v1;
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100353A88 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_10000F53C(v7, qword_100381DE8);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, v9, "openMessages", v10, 2u);
  }

  URL.init(string:)();
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    sub_100008FA0(v2, &qword_100357468);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v11, v12, "Failed to form Messages URL", v13, 2u);
    }
  }

  else
  {
    (*(v4 + 32))(v6, v2, v3);
    v14 = [objc_opt_self() defaultWorkspace];
    if (v14)
    {
      v16 = v14;
      URL._bridgeToObjectiveC()(v15);
      v18 = v17;
      v19 = [objc_allocWithZone(_LSOpenConfiguration) init];
      aBlock[4] = sub_100146BBC;
      aBlock[5] = 0;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100145D6C;
      aBlock[3] = &unk_1003329A8;
      v20 = _Block_copy(aBlock);
      [v16 openURL:v18 configuration:v19 completionHandler:v20];
      _Block_release(v20);

      (*(v4 + 8))(v6, v3);
    }

    else
    {
      __break(1u);
    }
  }
}

unint64_t sub_10014B16C(unsigned __int8 a1, char a2, char *a3)
{
  object = 0xD000000000000010;
  p_ivar_base_size = &ConnectionAssistantRenderer.RenderPipelines.ivar_base_size;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {

      goto LABEL_8;
    }

    if (a1 != 3)
    {
LABEL_11:
      if (a3)
      {

        v13 = sub_1000C3E94();
        v14 = v13;
        v15 = *(v13 + 16);
        if (v15)
        {
          v16 = 0;
          countAndFlagsBits = *(a3 + 43);
          v95 = *(v13 + 16);
          v96 = (v13 + 32);
          v99 = a3;
          while (v16 < v14[2])
          {
            v18 = *(countAndFlagsBits + 104);
            if (*(v18 + 16))
            {
              v19 = &v96[88 * v16];
              v20 = v19[7];
              v3 = v19[10];
              v98 = v19[6];
              v21 = *v19;
              v22 = v19[1];

              v23 = sub_100186A08(v21, v22);
              if (v24)
              {
                v25 = *(*(v18 + 56) + 8 * v23);

                v26 = *(v25 + 104);
                v27 = *(v26 + 16);
                v28 = (v26 + 32);
                while (v27)
                {
                  v29 = *v28++;
                  --v27;
                  if ((v29 & 1) == 0)
                  {
                    v96 = v20;

                    p_ivar_base_size = (&ConnectionAssistantRenderer.RenderPipelines + 8);
                    goto LABEL_33;
                  }
                }
              }

              else
              {
              }

              object = 0xD000000000000010;
              p_ivar_base_size = (&ConnectionAssistantRenderer.RenderPipelines + 8);
              a3 = v99;
              v15 = v95;
            }

            if (++v16 == v15)
            {

              v98 = 0;
              v96 = 0xE000000000000000;
              goto LABEL_33;
            }
          }

          __break(1u);
          goto LABEL_49;
        }
      }

      else
      {
        if (qword_100353A88 != -1)
        {
          swift_once();
        }

        v30 = type metadata accessor for Logger();
        sub_10000F53C(v30, qword_100381DE8);
        v31 = Logger.logObject.getter();
        v32 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v31, v32))
        {
          v33 = swift_slowAlloc();
          v34 = swift_slowAlloc();
          v101._countAndFlagsBits = v34;
          *v33 = 136446210;
          LOBYTE(v100[0]) = a1;
          sub_1000040A8(&qword_100360990);
          v35 = String.init<A>(describing:)();
          v37 = sub_10017C9E8(v35, v36, &v101._countAndFlagsBits);

          *(v33 + 4) = v37;
          _os_log_impl(&_mh_execute_header, v31, v32, "Questionnaire state is not defined for reason: %{public}s", v33, 0xCu);
          sub_100008964(v34);
        }
      }

      a3 = &_swiftEmptyArrayStorage;
      v98 = 0;
      v99 = sub_1002559FC(&_swiftEmptyArrayStorage);
      v96 = 0xE000000000000000;
      if ((a2 & 1) == 0)
      {
        goto LABEL_42;
      }

LABEL_36:
      v3 = 0x206C61636964654DLL;
      v16 = 0x800000010029F5E0;
      v14 = objc_opt_self();
      v57 = [v14 *(p_ivar_base_size + 312)];
      v105._object = 0x800000010029F5E0;
      v105._countAndFlagsBits = 0xD00000000000006ALL;
      v58._countAndFlagsBits = 0x206C61636964654DLL;
      v58._object = 0xEA00000000004449;
      v59._countAndFlagsBits = 0;
      v59._object = 0xE000000000000000;
      v60 = NSLocalizedString(_:tableName:bundle:value:comment:)(v58, 0, v57, v59, v105);
      countAndFlagsBits = v60._countAndFlagsBits;
      object = v60._object;

      if (swift_isUniquelyReferenced_nonNull_native())
      {
LABEL_37:
        v62 = *(a3 + 2);
        v61 = *(a3 + 3);
        if (v62 >= v61 >> 1)
        {
          a3 = sub_10017B338((v61 > 1), v62 + 1, 1, a3);
        }

        *(a3 + 2) = v62 + 1;
        v63 = &a3[16 * v62];
        *(v63 + 4) = countAndFlagsBits;
        *(v63 + 5) = object;
        v64 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v66 = v65;
        v67 = [v14 *(p_ivar_base_size + 312)];
        v106._object = v16;
        v106._countAndFlagsBits = 0xD00000000000006ALL;
        v68._countAndFlagsBits = v3;
        v68._object = 0xEA00000000004449;
        v69._countAndFlagsBits = 0;
        v69._object = 0xE000000000000000;
        v70 = NSLocalizedString(_:tableName:bundle:value:comment:)(v68, 0, v67, v69, v106);

        v102 = &type metadata for String;
        v101 = v70;
        sub_1000456C8(&v101, v100);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        sub_100188F48(v100, v64, v66, isUniquelyReferenced_nonNull_native);

        goto LABEL_42;
      }

LABEL_49:
      a3 = sub_10017B338(0, *(a3 + 2) + 1, 1, a3);
      goto LABEL_37;
    }
  }

  v3 = 0xED00006E6F697463;
  v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v8 & 1) == 0)
  {
    if (a1 > 1u)
    {
      if (a1 != 2)
      {

LABEL_31:
        v9 = [objc_opt_self() mainBundle];
        v94 = 0x800000010029F6F0;
        v10 = 0x6544206873617243;
        v11 = 0xEF6E6F6974636574;
        goto LABEL_32;
      }
    }

    else
    {
      v3 = 0xE400000000000000;
    }

    v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v12 & 1) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_31;
  }

LABEL_8:
  v9 = [objc_opt_self() mainBundle];
  v94 = 0x800000010029F6F0;
  v10 = 0x746544206C6C6146;
  v11 = 0xEE006E6F69746365;
LABEL_32:
  v38 = 0xD00000000000004ELL;
  v39._countAndFlagsBits = 0;
  v39._object = 0xE000000000000000;
  v40 = NSLocalizedString(_:tableName:bundle:value:comment:)(*&v10, 0, v9, v39, *(&v94 - 1));
  v98 = v40._countAndFlagsBits;
  v96 = v40._object;

LABEL_33:
  v41 = sub_1002559FC(&_swiftEmptyArrayStorage);
  v42 = objc_opt_self();
  v43 = [v42 *(p_ivar_base_size + 312)];
  v103._object = 0x800000010029F670;
  v44._countAndFlagsBits = 0xD000000000000017;
  v44._object = 0x800000010029F650;
  v103._countAndFlagsBits = 0xD000000000000073;
  v45._countAndFlagsBits = 0;
  v45._object = 0xE000000000000000;
  v46 = NSLocalizedString(_:tableName:bundle:value:comment:)(v44, 0, v43, v45, v103);

  a3 = sub_10017B338(0, 1, 1, &_swiftEmptyArrayStorage);
  v48 = *(a3 + 2);
  v47 = *(a3 + 3);
  if (v48 >= v47 >> 1)
  {
    a3 = sub_10017B338((v47 > 1), v48 + 1, 1, a3);
  }

  *(a3 + 2) = v48 + 1;
  *&a3[16 * v48 + 32] = v46;
  v49 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v51 = v50;
  v52 = [v42 *(p_ivar_base_size + 312)];
  v104._object = 0x800000010029F670;
  v53._countAndFlagsBits = 0xD000000000000017;
  v53._object = 0x800000010029F650;
  v104._countAndFlagsBits = 0xD000000000000073;
  v54._countAndFlagsBits = 0;
  v54._object = 0xE000000000000000;
  v55 = NSLocalizedString(_:tableName:bundle:value:comment:)(v53, 0, v52, v54, v104);

  v102 = &type metadata for String;
  v101 = v55;
  sub_1000456C8(&v101, v100);
  v56 = swift_isUniquelyReferenced_nonNull_native();
  sub_100188F48(v100, v49, v51, v56);

  v99 = v41;
  if (a2)
  {
    goto LABEL_36;
  }

LABEL_42:
  v72 = objc_opt_self();
  v73 = [v72 *(p_ivar_base_size + 312)];
  v107._object = 0x800000010029F4F0;
  v74._object = 0x800000010029F4D0;
  v107._countAndFlagsBits = 0xD000000000000070;
  v74._countAndFlagsBits = 0xD000000000000010;
  v75._countAndFlagsBits = 0;
  v75._object = 0xE000000000000000;
  v76 = NSLocalizedString(_:tableName:bundle:value:comment:)(v74, 0, v73, v75, v107);

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    a3 = sub_10017B338(0, *(a3 + 2) + 1, 1, a3);
  }

  v78 = *(a3 + 2);
  v77 = *(a3 + 3);
  if (v78 >= v77 >> 1)
  {
    a3 = sub_10017B338((v77 > 1), v78 + 1, 1, a3);
  }

  *(a3 + 2) = v78 + 1;
  *&a3[16 * v78 + 32] = v76;
  v79 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v81 = v80;
  v82 = [v72 *(p_ivar_base_size + 312)];
  v108._object = 0x800000010029F4F0;
  v83._object = 0x800000010029F4D0;
  v108._countAndFlagsBits = 0xD000000000000070;
  v83._countAndFlagsBits = 0xD000000000000010;
  v84._countAndFlagsBits = 0;
  v84._object = 0xE000000000000000;
  v85 = NSLocalizedString(_:tableName:bundle:value:comment:)(v83, 0, v82, v84, v108);

  v102 = &type metadata for String;
  v101 = v85;
  sub_1000456C8(&v101, v100);
  v86 = swift_isUniquelyReferenced_nonNull_native();
  sub_100188F48(v100, v79, v81, v86);

  sub_1000040A8(&unk_100357278);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10027A620;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 72) = &type metadata for String;
  *(inited + 40) = v88;
  *(inited + 48) = v98;
  *(inited + 56) = v96;
  *(inited + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 88) = v89;
  *(inited + 120) = &type metadata for String;
  *(inited + 96) = v98;
  *(inited + 104) = v96;
  *(inited + 128) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 136) = v90;
  *(inited + 168) = sub_1000040A8(&qword_100355E30);
  *(inited + 144) = a3;
  *(inited + 176) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 184) = v91;
  *(inited + 216) = sub_1000040A8(&qword_100360980);
  *(inited + 192) = v99;

  v92 = sub_1002559FC(inited);
  swift_setDeallocating();
  sub_1000040A8(&unk_10036A000);
  swift_arrayDestroy();
  return v92;
}

uint64_t sub_10014BD28@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v4 = 0uLL;
  if (!result)
  {
    v20 = 0;
    v27 = 0uLL;
    v28 = 0uLL;
    v25 = 0uLL;
    v26 = 0uLL;
LABEL_16:
    *a3 = v4;
    *(a3 + 16) = v27;
    *(a3 + 32) = v28;
    *(a3 + 48) = v25;
    *(a3 + 64) = v26;
    *(a3 + 80) = v20;
    return result;
  }

  v6 = result;
  result = sub_1000C3E94();
  v7 = result;
  v8 = *(result + 16);
  if (!v8)
  {
LABEL_15:

    v20 = 0;
    v27 = 0uLL;
    v28 = 0uLL;
    v25 = 0uLL;
    v26 = 0uLL;
    v4 = 0uLL;
    goto LABEL_16;
  }

  v9 = 0;
  v10 = a2 & 1;
  while (v9 < *(v7 + 16))
  {
    v11 = v7 + 32 + 88 * v9;
    v12 = *v11;
    v36 = *(v11 + 16);
    v13 = *(v11 + 32);
    v14 = *(v11 + 48);
    v15 = *(v11 + 64);
    v40 = *(v11 + 80);
    v38 = v14;
    v39 = v15;
    v37 = v13;
    v35 = v12;
    v16 = *(*(v6 + 344) + 104);
    if (*(v16 + 16))
    {
      v17 = v35;
      sub_1000C6E58(&v35, v34);
      v18 = sub_100186A08(v17, *(&v17 + 1));
      if (v19)
      {
        v20 = v40;
        v21 = *(*(*(v16 + 56) + 8 * v18) + 104);
        v22 = *(v21 + 16);
        v23 = (v21 + 32);
        while (v22)
        {
          v24 = *v23++;
          --v22;
          if (v24 == v10)
          {
            v32 = v37;
            v33 = v36;
            v30 = v39;
            v31 = v38;
            v29 = v35;

            v26 = v30;
            v25 = v31;
            v28 = v32;
            v27 = v33;
            v4 = v29;
            goto LABEL_16;
          }
        }
      }

      result = sub_10014C5C0(&v35);
    }

    if (++v9 == v8)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_10014BEE8(uint64_t a1)
{
  if (a1)
  {

    sub_10014BD28(v2, 1, v58);
    if (v59)
    {
      v53 = v61;
      v54 = v60;

      sub_100008FA0(v58, &qword_10035C0A0);
    }

    else
    {
      v53 = 0xE000000000000000;
      v54 = 0;
    }

    swift_beginAccess();
    v9 = *(a1 + 64);
    if (*(v9 + 16) && (v10 = sub_1001921EC(5), (v11 & 1) != 0) && (sub_100048F80(*(v9 + 56) + 32 * v10, &v56), (swift_dynamicCast() & 1) != 0))
    {
      v12 = *(&v55[0] + 1);

      v13 = *&v55[0] & 0xFFFFFFFFFFFFLL;
    }

    else
    {

      v13 = 0;
      v12 = 0xE000000000000000;
    }

    if ((v12 & 0x2000000000000000) != 0)
    {
      v14 = HIBYTE(v12) & 0xF;
    }

    else
    {
      v14 = v13;
    }

    v7 = &_swiftEmptyArrayStorage;
    v8 = sub_1002559FC(&_swiftEmptyArrayStorage);
    if (v14)
    {
      v15 = objc_opt_self();
      v16 = [v15 mainBundle];
      v62._object = 0x800000010029F570;
      v17.value._countAndFlagsBits = 0xD000000000000012;
      v17.value._object = 0x80000001002962C0;
      v62._countAndFlagsBits = 0xD00000000000006CLL;
      v18._countAndFlagsBits = 0x754E20656E6F6850;
      v18._object = 0xEC0000007265626DLL;
      v19._countAndFlagsBits = 0;
      v19._object = 0xE000000000000000;
      v20 = NSLocalizedString(_:tableName:bundle:value:comment:)(v18, v17, v16, v19, v62);

      v7 = sub_10017B338(0, 1, 1, &_swiftEmptyArrayStorage);
      v22 = *(v7 + 2);
      v21 = *(v7 + 3);
      if (v22 >= v21 >> 1)
      {
        v7 = sub_10017B338((v21 > 1), v22 + 1, 1, v7);
      }

      *(v7 + 2) = v22 + 1;
      *&v7[16 * v22 + 32] = v20;
      v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v25 = v24;
      v26 = [v15 mainBundle];
      v63._object = 0x800000010029F570;
      v27.value._countAndFlagsBits = 0xD000000000000012;
      v27.value._object = 0x80000001002962C0;
      v63._countAndFlagsBits = 0xD00000000000006CLL;
      v28._countAndFlagsBits = 0x754E20656E6F6850;
      v28._object = 0xEC0000007265626DLL;
      v29._countAndFlagsBits = 0;
      v29._object = 0xE000000000000000;
      v30 = NSLocalizedString(_:tableName:bundle:value:comment:)(v28, v27, v26, v29, v63);

      v57 = &type metadata for String;
      v56 = v30;
      sub_1000456C8(&v56, v55);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      sub_100188F48(v55, v23, v25, isUniquelyReferenced_nonNull_native);
    }
  }

  else
  {
    if (qword_100353A88 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_10000F53C(v3, qword_100381DE8);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "Questionnaire state is not defined for roadside report", v6, 2u);
    }

    v7 = &_swiftEmptyArrayStorage;
    v8 = sub_1002559FC(&_swiftEmptyArrayStorage);
    v53 = 0xE000000000000000;
    v54 = 0;
  }

  v32 = objc_opt_self();
  v33 = [v32 mainBundle];
  v64._object = 0x800000010029F4F0;
  v34._object = 0x800000010029F4D0;
  v64._countAndFlagsBits = 0xD000000000000070;
  v34._countAndFlagsBits = 0xD000000000000010;
  v35._countAndFlagsBits = 0;
  v35._object = 0xE000000000000000;
  v36 = NSLocalizedString(_:tableName:bundle:value:comment:)(v34, 0, v33, v35, v64);

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v7 = sub_10017B338(0, *(v7 + 2) + 1, 1, v7);
  }

  v38 = *(v7 + 2);
  v37 = *(v7 + 3);
  if (v38 >= v37 >> 1)
  {
    v7 = sub_10017B338((v37 > 1), v38 + 1, 1, v7);
  }

  *(v7 + 2) = v38 + 1;
  *&v7[16 * v38 + 32] = v36;
  v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v41 = v40;
  v42 = [v32 mainBundle];
  v65._object = 0x800000010029F4F0;
  v43._object = 0x800000010029F4D0;
  v65._countAndFlagsBits = 0xD000000000000070;
  v43._countAndFlagsBits = 0xD000000000000010;
  v44._countAndFlagsBits = 0;
  v44._object = 0xE000000000000000;
  v45 = NSLocalizedString(_:tableName:bundle:value:comment:)(v43, 0, v42, v44, v65);

  v57 = &type metadata for String;
  v56 = v45;
  sub_1000456C8(&v56, v55);
  v46 = swift_isUniquelyReferenced_nonNull_native();
  sub_100188F48(v55, v39, v41, v46);

  sub_1000040A8(&unk_100357278);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1002811A0;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 72) = &type metadata for String;
  *(inited + 40) = v48;
  *(inited + 48) = v54;
  *(inited + 56) = v53;
  *(inited + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 88) = v49;
  *(inited + 120) = sub_1000040A8(&qword_100355E30);
  *(inited + 96) = v7;
  *(inited + 128) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 136) = v50;
  *(inited + 168) = sub_1000040A8(&qword_100360980);
  *(inited + 144) = v8;
  v51 = sub_1002559FC(inited);
  swift_setDeallocating();
  sub_1000040A8(&unk_10036A000);
  swift_arrayDestroy();
  return v51;
}

uint64_t sub_10014C55C()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10014C614(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000040A8(&qword_100354FD8);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_10014C6D4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000040A8(&qword_100354FD8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10014C744(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10014C78C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 56))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 48);
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

uint64_t sub_10014C7E8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *(result + 48) = a2;
    }
  }

  return result;
}

uint64_t sub_10014C858(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 65))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 56);
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

uint64_t sub_10014C8B4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 65) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 65) = 0;
    }

    if (a2)
    {
      *(result + 56) = a2;
    }
  }

  return result;
}