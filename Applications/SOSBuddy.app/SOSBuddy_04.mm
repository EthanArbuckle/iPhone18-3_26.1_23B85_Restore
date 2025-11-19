unint64_t sub_10005D204()
{
  result = qword_100357BC8;
  if (!qword_100357BC8)
  {
    sub_100008CF0(&qword_100357BD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100357BC8);
  }

  return result;
}

unint64_t sub_10005D288()
{
  result = qword_100357BE8;
  if (!qword_100357BE8)
  {
    sub_100008CF0(&qword_100357BE0);
    sub_100031A2C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100357BE8);
  }

  return result;
}

uint64_t sub_10005D314()
{
  sub_100008964(v0 + 16);

  return _swift_deallocObject(v0, 72, 7);
}

unint64_t sub_10005D374()
{
  result = qword_100357C60;
  if (!qword_100357C60)
  {
    sub_100008CF0(&qword_100357C68);
    sub_100009274(&qword_100357C70, &qword_100357C78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100357C60);
  }

  return result;
}

unint64_t sub_10005D448()
{
  result = qword_100357CC0;
  if (!qword_100357CC0)
  {
    sub_100008CF0(&qword_100357CB0);
    sub_10005D4D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100357CC0);
  }

  return result;
}

unint64_t sub_10005D4D4()
{
  result = qword_100357CC8;
  if (!qword_100357CC8)
  {
    sub_100008CF0(&qword_100357CA8);
    sub_10005D560();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100357CC8);
  }

  return result;
}

unint64_t sub_10005D560()
{
  result = qword_100357CD0;
  if (!qword_100357CD0)
  {
    sub_100008CF0(&qword_100357CA0);
    sub_10005D5EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100357CD0);
  }

  return result;
}

unint64_t sub_10005D5EC()
{
  result = qword_100357CD8;
  if (!qword_100357CD8)
  {
    sub_100008CF0(&qword_100357C98);
    sub_100008CF0(&qword_100354D60);
    sub_100009274(&qword_100354D78, &qword_100354D60);
    swift_getOpaqueTypeConformance2();
    sub_100009274(&qword_100356750, &qword_100356758);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100357CD8);
  }

  return result;
}

uint64_t sub_10005D728(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10005D7F0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_10005D838(uint64_t result, int a2, int a3)
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
      *(result + 32) = (a2 - 1);
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

uint64_t sub_10005D8B0()
{
  v1 = v0;
  v2 = *v0;
  if (!*v0)
  {
    type metadata accessor for UIMetrics();
    v20 = &qword_100354D40;
    v21 = type metadata accessor for UIMetrics;
LABEL_9:
    sub_10005ECAC(v20, v21);
    result = EnvironmentObject.error()();
    __break(1u);
    return result;
  }

  v3 = v2[9];
  v4 = v2[10];
  sub_1000088DC(v2 + 6, v3);
  (*(v4 + 24))(v33, v3, v4);
  v5 = static HorizontalAlignment.center.getter();
  v25[0] = 0;
  sub_10005DD04(v1, v33, v29);
  memcpy(v31, v29, 0x1C1uLL);
  memcpy(v32, v29, 0x1C1uLL);
  sub_100006C20(v31, v24, &qword_100357D90);
  sub_100008FA0(v32, &qword_100357D90);
  memcpy(&v30[7], v31, 0x1C1uLL);
  LOBYTE(v4) = v25[0];
  v6 = swift_allocObject();
  v7 = *(v1 + 16);
  *(v6 + 16) = *v1;
  *(v6 + 32) = v7;
  *(v6 + 48) = *(v1 + 32);
  *(v6 + 64) = *(v1 + 48);
  v29[0] = v5;
  v29[1] = 0;
  LOBYTE(v29[2]) = v4;
  memcpy(&v29[2] + 1, v30, 0x1C8uLL);
  v29[60] = sub_10005EC6C;
  v29[61] = v6;
  v29[63] = 0;
  v29[62] = 0;
  v8 = *(v1 + 16);
  if (!v8)
  {
    sub_10005EC74(v1, v24);
    type metadata accessor for QuestionnaireState();
    v20 = &qword_100354D50;
    v21 = type metadata accessor for QuestionnaireState;
    goto LABEL_9;
  }

  swift_beginAccess();
  sub_10003F3D8(v8 + 48, v25);
  v9 = v27;
  if (v27)
  {
    v10 = v28;
    v11 = sub_1000088DC(v26, v27);
    v12 = *(v9 - 8);
    v13 = __chkstk_darwin(v11);
    v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v12 + 16))(v15, v13);
    sub_10005EC74(v1, v24);

    sub_10003F434(v25);
    v16 = (*(v10 + 24))(v9, v10);

    (*(v12 + 8))(v15, v9);
  }

  else
  {
    sub_10005EC74(v1, v24);
    sub_10003F434(v25);
    v16 = 0;
  }

  v22 = v16;
  v23 = v9 == 0;
  v17 = swift_allocObject();
  v18 = *(v1 + 16);
  *(v17 + 16) = *v1;
  *(v17 + 32) = v18;
  *(v17 + 48) = *(v1 + 32);
  *(v17 + 64) = *(v1 + 48);
  sub_10005EC74(v1, v24);
  sub_1000040A8(&qword_100357D98);
  sub_1000040A8(&qword_100356CC0);
  sub_10005ED58();
  sub_10003F58C();
  View.onChange<A>(of:initial:_:)();

  memcpy(v24, v29, 0x200uLL);
  sub_100008FA0(v24, &qword_100357D98);
  return sub_100008964(v33);
}

uint64_t sub_10005DD04@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = static Alignment.center.getter();
  v8 = v7;
  sub_10005DFCC(a1, __src);
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v32, __src, sizeof(v32));
  sub_100006C20(__dst, v19, &qword_100356CF0);
  sub_100008FA0(v32, &qword_100356CF0);
  memcpy(v36, __dst, sizeof(v36));
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v9 = sub_1000088DC(a2, a2[3]);
  if (*a1)
  {
    v10 = v9;
    v11 = *(*a1 + 112);
    v12 = static UIContentSizeCategory.>= infix(_:_:)();

    v13 = 16.0;
    if ((v12 & 1) == 0)
    {
      if (*(*v10 + 16) < 428.0)
      {
        v13 = 24.0;
      }

      else
      {
        v13 = 32.0;
      }
    }

    v14 = static Edge.Set.all.getter();
    memcpy(v20, v36, sizeof(v20));
    v21 = v33;
    v22 = v34;
    v23 = v35;
    v30 = 0;
    v17[0] = v6;
    v17[1] = v8;
    memcpy(&v17[2], v36, 0x148uLL);
    *&v17[43] = v33;
    *&v17[45] = v34;
    *&v17[47] = v35;
    LOBYTE(v17[49]) = v14;
    *&v17[50] = v13;
    v17[51] = 0;
    *&v17[52] = v13;
    v17[53] = 0;
    LOBYTE(v17[54]) = 0;
    memcpy(__src, v17, 0x1B1uLL);
    v16[440] = 1;
    memcpy(a3, __src, 0x1B8uLL);
    *(a3 + 440) = 0;
    *(a3 + 448) = 1;
    v19[0] = v6;
    v19[1] = v8;
    v24 = v14;
    v25 = v13;
    v26 = 0;
    v27 = v13;
    v28 = 0;
    v29 = 0;
    sub_100006C20(v17, v16, &qword_100356D08);
    return sub_100008FA0(v19, &qword_100356D08);
  }

  else
  {
    type metadata accessor for UIMetrics();
    sub_10005ECAC(&qword_100354D40, type metadata accessor for UIMetrics);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_10005DFCC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = sub_1000040A8(&qword_100354FC0);
  __chkstk_darwin(v4 - 8);
  v6 = &v46 - v5;
  v83[0] = *(a1 + 40);
  sub_1000040A8(&qword_100356CA8);
  State.wrappedValue.getter();
  v7 = v76[0];
  StrokeStyle.init(lineWidth:lineCap:lineJoin:miterLimit:dash:dashPhase:)();
  v8 = v84;
  v54 = v86;
  v55 = v85;
  v9 = v87;
  v10 = v88;
  v11 = v89;
  v12 = [objc_opt_self() systemGray5Color];
  v13 = Color.init(_:)();
  KeyPath = swift_getKeyPath();
  if ((v7 & 0x8000000000000000) != 0)
  {
    sub_10003F870(v83);
  }

  else
  {
    v52 = a2;
    if (v7 >= 0x1E)
    {
      v14 = 30;
    }

    else
    {
      v14 = v7;
    }

    v15 = v14 - 1;
    if (!v7)
    {
      v15 = 0;
    }

    v16 = fmin(v15 / 29.0, 0.99);
    StrokeStyle.init(lineWidth:lineCap:lineJoin:miterLimit:dash:dashPhase:)();
    *&v83[0] = 0x3FF921FB54442D18;
    Angle.animatableData.getter();
    Angle.animatableData.setter();
    v17 = *&v83[0];
    static UnitPoint.center.getter();
    v19 = v18;
    v21 = v20;
    *(&v49 + 1) = static Color.white.getter();
    *&v49 = swift_getKeyPath();
    *&v83[0] = v14;
    *&v83[0] = dispatch thunk of CustomStringConvertible.description.getter();
    *(&v83[0] + 1) = v22;
    sub_100031770();
    v23 = Text.init<A>(_:)();
    v50 = v13;
    v51 = v10;
    v24 = v23;
    v26 = v25;
    v28 = v27;
    v29 = type metadata accessor for Font.Design();
    (*(*(v29 - 8) + 56))(v6, 1, 1, v29);
    static Font.system(size:weight:design:)();
    sub_100008FA0(v6, &qword_100354FC0);
    Font.bold()();

    v30 = Text.font(_:)();
    v32 = v31;
    v34 = v33;

    sub_1000317C4(v24, v26, v28 & 1);

    static Color.white.getter();
    v47 = Text.foregroundColor(_:)();
    v48 = v35;
    v37 = v36;
    v39 = v38;

    sub_1000317C4(v30, v32, v34 & 1);

    v40 = swift_getKeyPath();
    static Alignment.center.getter();
    _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
    v79 = v39 & 1;
    *&v77[55] = v93;
    *&v77[71] = v94;
    *&v77[87] = v95;
    *&v77[103] = v96;
    *&v77[7] = v90;
    *&v77[23] = v91;
    *&v77[39] = v92;
    *&v64[0] = 0;
    *(v64 + 1) = v16;
    *&v65 = v82;
    v64[2] = v81;
    v64[1] = v80;
    *(&v65 + 1) = v17;
    *&v66 = v19;
    *(&v66 + 1) = v21;
    v41 = v49;
    v67 = v49;
    v63[0] = v64[0];
    v63[1] = v80;
    v63[3] = v65;
    v63[4] = v66;
    v63[5] = v49;
    v63[2] = v81;
    *&v56 = v47;
    *(&v56 + 1) = v37;
    LOBYTE(v57) = v39 & 1;
    DWORD1(v57) = *&v78[3];
    *(&v57 + 1) = *v78;
    *(&v57 + 1) = v48;
    *&v58[0] = v40;
    BYTE8(v58[0]) = 1;
    *(&v58[3] + 9) = *&v77[48];
    *(&v58[2] + 9) = *&v77[32];
    *(&v58[1] + 9) = *&v77[16];
    *(v58 + 9) = *v77;
    *(&v58[7] + 1) = *(&v96 + 1);
    *(&v58[6] + 9) = *&v77[96];
    *(&v58[5] + 9) = *&v77[80];
    *(&v58[4] + 9) = *&v77[64];
    v59 = sub_10003E3A0;
    v60 = 0;
    v63[7] = v57;
    v63[6] = v56;
    v63[11] = v58[3];
    v63[10] = v58[2];
    v63[8] = v58[0];
    v63[9] = v58[1];
    v63[16] = sub_10003E3A0;
    v63[15] = v58[7];
    v63[14] = v58[6];
    v63[12] = v58[4];
    v63[13] = v58[5];
    v62[0] = v47;
    v62[1] = v37;
    LOBYTE(v62[2]) = v39 & 1;
    *(&v62[2] + 1) = *v78;
    HIDWORD(v62[2]) = *&v78[3];
    v62[3] = v48;
    v62[4] = v40;
    v13 = v50;
    v10 = v51;
    LOBYTE(v62[5]) = 1;
    *(&v62[13] + 1) = *&v77[64];
    *(&v62[15] + 1) = *&v77[80];
    *(&v62[17] + 1) = *&v77[96];
    *(&v62[5] + 1) = *v77;
    *(&v62[7] + 1) = *&v77[16];
    *(&v62[9] + 1) = *&v77[32];
    *(&v62[11] + 1) = *&v77[48];
    v62[19] = *(&v96 + 1);
    v62[20] = sub_10003E3A0;
    v62[21] = 0;
    sub_100006C20(v64, v83, &qword_1003550B8);
    sub_100006C20(&v56, v83, &qword_100356D10);
    sub_100008FA0(v62, &qword_100356D10);
    *&v68 = 0;
    *(&v68 + 1) = v16;
    v69 = v80;
    v70 = v81;
    v71 = v82;
    v72 = v17;
    v73 = v19;
    v74 = v21;
    v75 = v41;
    a2 = v52;
    sub_100008FA0(&v68, &qword_1003550B8);
    memcpy(v76, v63, 0x110uLL);
    ConnectionAssistantRendererEarthOutline.Buffers.shapesCount.getter(v76);
    memcpy(v83, v76, sizeof(v83));
  }

  memcpy(v76, v83, 0x110uLL);
  *&v68 = v8;
  v43 = v54;
  v42 = v55;
  *(&v68 + 1) = __PAIR64__(v54, v55);
  *&v69 = v9;
  *(&v69 + 1) = v10;
  *&v70 = v11;
  v44 = KeyPath;
  *(&v70 + 1) = KeyPath;
  v71 = v13;
  *&v61[3] = v13;
  v61[0] = v68;
  v61[1] = v69;
  v61[2] = v70;
  memcpy(v62, v83, sizeof(v62));
  memcpy(&v61[3] + 8, v83, 0x110uLL);
  memcpy(a2, v61, 0x148uLL);
  sub_100006C20(&v68, &v56, &qword_1003550B0);
  sub_100006C20(v62, &v56, &qword_100356D18);
  sub_100008FA0(v76, &qword_100356D18);
  *&v56 = v8;
  *(&v56 + 1) = __PAIR64__(v43, v42);
  *&v57 = v9;
  *(&v57 + 1) = v10;
  *&v58[0] = v11;
  *(&v58[0] + 1) = v44;
  *&v58[1] = v13;
  return sub_100008FA0(&v56, &qword_1003550B0);
}

uint64_t sub_10005E75C(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    swift_beginAccess();
    sub_10003F3D8(v2 + 48, v13);
    v3 = v15;
    if (v15)
    {
      v4 = v16;
      v5 = sub_1000088DC(v14, v15);
      v6 = *(v3 - 8);
      v7 = __chkstk_darwin(v5);
      v9 = v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
      (*(v6 + 16))(v9, v7);

      sub_10003F434(v13);
      v10 = (*(v4 + 24))(v3, v4);

      (*(v6 + 8))(v9, v3);
    }

    else
    {
      sub_10003F434(v13);
      v13[0] = *(a1 + 40);
      sub_1000040A8(&qword_100356CA8);
      State.wrappedValue.getter();
      v10 = v12;
    }

    v13[0] = *(a1 + 40);
    v12 = v10;
    sub_1000040A8(&qword_100356CA8);
    return State.wrappedValue.setter();
  }

  else
  {
    type metadata accessor for QuestionnaireState();
    sub_10005ECAC(&qword_100354D50, type metadata accessor for QuestionnaireState);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

void sub_10005E984(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  if (qword_100353AA8 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_10000F53C(v6, qword_100381E48);
  sub_10005EC74(a3, &v19);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  sub_10005EE48(a3);
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v18[0] = swift_slowAlloc();
    *v9 = 136446466;
    if (!*(a3 + 16))
    {
      type metadata accessor for QuestionnaireState();
      sub_10005ECAC(&qword_100354D50, type metadata accessor for QuestionnaireState);
      EnvironmentObject.error()();
      __break(1u);
      return;
    }

    v10 = sub_1000B9A7C();
    v12 = v11;

    v13 = sub_10017C9E8(v10, v12, v18);

    *(v9 + 4) = v13;
    *(v9 + 12) = 2080;
    v19 = v4;
    v20 = v5;
    sub_1000040A8(&qword_100356CC0);
    v14 = String.init<A>(describing:)();
    v16 = sub_10017C9E8(v14, v15, v18);

    *(v9 + 14) = v16;
    _os_log_impl(&_mh_execute_header, v7, v8, "[%{public}s] Summary view: %s seconds left", v9, 0x16u);
    swift_arrayDestroy();
  }

  if ((v5 & 1) == 0)
  {
    v17 = static Animation.linear(duration:)();
    __chkstk_darwin(v17);
    withAnimation<A>(_:_:)();
  }
}

uint64_t sub_10005ECAC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10005ED00()
{

  return _swift_deallocObject(v0, 72, 7);
}

unint64_t sub_10005ED58()
{
  result = qword_100357DA0;
  if (!qword_100357DA0)
  {
    sub_100008CF0(&qword_100357D98);
    sub_10005EDE4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100357DA0);
  }

  return result;
}

unint64_t sub_10005EDE4()
{
  result = qword_100357DA8;
  if (!qword_100357DA8)
  {
    sub_100008CF0(&qword_100357DB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100357DA8);
  }

  return result;
}

uint64_t sub_10005EEE8()
{
  sub_100008CF0(&qword_100357D98);
  sub_100008CF0(&qword_100356CC0);
  sub_10005ED58();
  sub_10003F58C();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_10005EF7C()
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
    type metadata accessor for SOSBuddyPlatformEnvironment();

    v7 = String.init<A>(describing:)();
    v9 = sub_10017C9E8(v7, v8, &v11);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "[%{public}s] init", v5, 0xCu);
    sub_100008964(v6);
  }

  return v1;
}

uint64_t sub_10005F0F0()
{
  if (qword_100353A10 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_10000F53C(v0, qword_100381C80);

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v9 = v4;
    *v3 = 136446210;
    type metadata accessor for SOSBuddyPlatformEnvironment();

    v5 = String.init<A>(describing:)();
    v7 = sub_10017C9E8(v5, v6, &v9);

    *(v3 + 4) = v7;
    _os_log_impl(&_mh_execute_header, v1, v2, "[%{public}s] deinit", v3, 0xCu);
    sub_100008964(v4);
  }

  return swift_deallocClassInstance();
}

uint64_t sub_10005F294(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_10005F2DC(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

uint64_t sub_10005F348@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1000040A8(&qword_100357E70);
  v11[0] = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = v11 - v5;
  v7 = sub_10006028C(a1);
  if (v7)
  {
    v8 = v7;
    *v6 = static HorizontalAlignment.center.getter();
    *(v6 + 1) = 0;
    v6[16] = 0;
    sub_1000040A8(&qword_100357E78);
    v11[1] = v8;
    *(swift_allocObject() + 16) = v8;

    sub_1000040A8(&qword_100357E80);
    sub_100009274(&qword_100357E88, &qword_100357E80);
    sub_100060490();
    sub_1000604E4();
    ForEach<>.init(_:content:)();
    sub_10000CF4C(v6, a2, &qword_100357E70);
    return (*(v11[0] + 56))(a2, 0, 1, v4);
  }

  else
  {
    v10 = *(v11[0] + 56);

    return v10(a2, 1, 1, v4);
  }
}

uint64_t sub_10005F59C@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  v7 = a1[2];
  v6 = a1[3];
  v8 = a2[2];
  if (v8)
  {
    if (v4 == a2[4] && v5 == a2[5])
    {
      v12 = 1;
    }

    else
    {
      v10 = a2;
      v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
      a2 = v10;
      v12 = v11;
    }

    v13 = &a2[4 * v8];
    if (v4 == *v13 && v5 == v13[1])
    {
      LOBYTE(v8) = 1;
    }

    else
    {
      LOBYTE(v8) = _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  else
  {
    v12 = 0;
  }

  type metadata accessor for UIMetrics();
  sub_100060538(&qword_100354D40, type metadata accessor for UIMetrics);

  result = EnvironmentObject.init()();
  *a3 = result;
  *(a3 + 8) = v16;
  *(a3 + 16) = v4;
  *(a3 + 24) = v5;
  *(a3 + 32) = v7;
  *(a3 + 40) = v6;
  *(a3 + 48) = v12 & 1;
  *(a3 + 49) = v8 & 1;
  return result;
}

uint64_t sub_10005F6C8@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t sub_10005F6D4@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1000040A8(&qword_100357EB8);
  __chkstk_darwin(v3 - 8);
  v5 = &v19[-1] - v4;
  v6 = sub_1000040A8(&qword_100357EC0);
  __chkstk_darwin(v6);
  v8 = &v19[-1] - v7;
  v9 = *v1;
  if (*v1)
  {
    v10 = v9[9];
    v11 = v9[10];
    sub_1000088DC(v9 + 6, v10);
    (*(v11 + 24))(v19, v10, v11);
    *v5 = static HorizontalAlignment.leading.getter();
    *(v5 + 1) = 0;
    v5[16] = 0;
    v12 = sub_1000040A8(&qword_100357EC8);
    sub_10005F924(v1, &v5[*(v12 + 44)]);
    static Alignment.center.getter();
    _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
    sub_10000CF4C(v5, v8, &qword_100357EB8);
    v13 = &v8[*(v6 + 36)];
    v14 = v25;
    *(v13 + 4) = v24;
    *(v13 + 5) = v14;
    *(v13 + 6) = v26;
    v15 = v21;
    *v13 = v20;
    *(v13 + 1) = v15;
    v16 = v23;
    *(v13 + 2) = v22;
    *(v13 + 3) = v16;
    sub_10000CF4C(v8, a1, &qword_100357EC0);
    return sub_100008964(v19);
  }

  else
  {
    type metadata accessor for UIMetrics();
    sub_100060538(&qword_100354D40, type metadata accessor for UIMetrics);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_10005F924@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  v3 = type metadata accessor for Divider();
  v42 = *(v3 - 8);
  __chkstk_darwin(v3);
  v40 = &v29[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v7 = &v29[-v6];
  v8 = sub_1000040A8(&qword_100357ED0);
  __chkstk_darwin(v8 - 8);
  v41 = &v29[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v10);
  v12 = &v29[-v11];
  v13 = *(a1 + 48);
  v33 = v3;
  v39 = &v29[-v11];
  v36 = v7;
  if (v13)
  {
    Divider.init()();
    v14 = v42;
    (*(v42 + 32))(v12, v7, v3);
    (*(v14 + 56))(v12, 0, 1, v3);
  }

  else
  {
    (*(v42 + 56))(&v29[-v11], 1, 1, v3);
  }

  v37 = static VerticalAlignment.center.getter();
  LOBYTE(v80) = 0;
  v38 = static HorizontalAlignment.center.getter();
  v45[0] = 0;
  sub_10006000C(a1, &v47);
  v75 = *&v49[96];
  v76 = *&v49[112];
  v77[0] = *&v49[128];
  *(v77 + 9) = *&v49[137];
  v71 = *&v49[32];
  v72 = *&v49[48];
  v73 = *&v49[64];
  v74 = *&v49[80];
  v67 = v47;
  v68 = v48;
  v69 = *v49;
  v70 = *&v49[16];
  v78[8] = *&v49[96];
  v78[9] = *&v49[112];
  v79[0] = *&v49[128];
  *(v79 + 9) = *&v49[137];
  v78[4] = *&v49[32];
  v78[5] = *&v49[48];
  v78[6] = *&v49[64];
  v78[7] = *&v49[80];
  v78[0] = v47;
  v78[1] = v48;
  v78[2] = *v49;
  v78[3] = *&v49[16];
  sub_100006C20(&v67, v46, &qword_100357ED8);
  sub_100008FA0(v78, &qword_100357ED8);
  *(&v64[8] + 7) = v75;
  *(&v64[9] + 7) = v76;
  *(&v64[10] + 7) = v77[0];
  v64[11] = *(v77 + 9);
  *(&v64[4] + 7) = v71;
  *(&v64[5] + 7) = v72;
  *(&v64[6] + 7) = v73;
  *(&v64[7] + 7) = v74;
  *(v64 + 7) = v67;
  *(&v64[1] + 7) = v68;
  *(&v64[2] + 7) = v69;
  *(&v64[3] + 7) = v70;
  v30 = v45[0];
  v34 = v80;
  v35 = static Edge.Set.all.getter();
  v65 = 0;
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  *&v66[55] = v83;
  *&v66[71] = v84;
  *&v66[87] = v85;
  *&v66[103] = v86;
  *&v66[7] = v80;
  *&v66[23] = v81;
  *&v66[39] = v82;
  v15 = v36;
  Divider.init()();
  v16 = v41;
  sub_100006C20(v39, v41, &qword_100357ED0);
  v17 = *(v42 + 16);
  v18 = v15;
  v19 = v33;
  v17(v40, v18, v33);
  v20 = v16;
  v21 = v32;
  sub_100006C20(v20, v32, &qword_100357ED0);
  v22 = sub_1000040A8(&qword_100357EE0);
  v23 = *(v22 + 48);
  v46[0] = v37;
  v46[1] = 0;
  LOBYTE(v46[2]) = v34;
  *(&v46[2] + 1) = *v45;
  HIDWORD(v46[2]) = *&v45[3];
  v46[3] = v38;
  v46[4] = 0;
  v24 = v30;
  LOBYTE(v46[5]) = v30;
  *(&v46[21] + 1) = v64[8];
  *(&v46[23] + 1) = v64[9];
  *(&v46[25] + 1) = v64[10];
  *(&v46[27] + 1) = v64[11];
  *(&v46[13] + 1) = v64[4];
  *(&v46[15] + 1) = v64[5];
  *(&v46[17] + 1) = v64[6];
  *(&v46[19] + 1) = v64[7];
  *(&v46[5] + 1) = v64[0];
  *(&v46[7] + 1) = v64[1];
  *(&v46[9] + 1) = v64[2];
  *(&v46[11] + 1) = v64[3];
  *(&v46[29] + 1) = *v44;
  HIDWORD(v46[29]) = *&v44[3];
  LOBYTE(v46[30]) = v35;
  *(&v46[30] + 1) = *v43;
  HIDWORD(v46[30]) = *&v43[3];
  v31 = xmmword_10027C270;
  *&v46[31] = xmmword_10027C270;
  v46[33] = 0;
  v46[34] = 0x4008000000000000;
  LOBYTE(v46[35]) = 0;
  *(&v46[35] + 1) = *v66;
  *(&v46[37] + 1) = *&v66[16];
  *(&v46[39] + 1) = *&v66[32];
  *(&v46[41] + 1) = *&v66[48];
  *(&v46[45] + 1) = *&v66[80];
  *(&v46[47] + 1) = *&v66[96];
  *(&v46[43] + 1) = *&v66[64];
  v46[49] = *&v66[111];
  memcpy((v21 + v23), v46, 0x190uLL);
  v25 = v21 + *(v22 + 64);
  v26 = v40;
  v17(v25, v40, v19);
  sub_100006C20(v46, &v47, &qword_100357EE8);
  v27 = *(v42 + 8);
  v27(v36, v19);
  sub_100008FA0(v39, &qword_100357ED0);
  v27(v26, v19);
  v47 = v37;
  LOBYTE(v48) = v34;
  *(&v48 + 1) = *v45;
  DWORD1(v48) = *&v45[3];
  *(&v48 + 1) = v38;
  *v49 = 0;
  v49[8] = v24;
  *&v49[137] = v64[8];
  *&v49[153] = v64[9];
  *&v49[169] = v64[10];
  *&v49[185] = v64[11];
  *&v49[73] = v64[4];
  *&v49[89] = v64[5];
  *&v49[105] = v64[6];
  *&v49[121] = v64[7];
  *&v49[9] = v64[0];
  *&v49[25] = v64[1];
  *&v49[41] = v64[2];
  *&v49[57] = v64[3];
  *v50 = *v44;
  *&v50[3] = *&v44[3];
  v51 = v35;
  *v52 = *v43;
  *&v52[3] = *&v43[3];
  v53 = v31;
  v54 = 0;
  v55 = 0x4008000000000000;
  v56 = 0;
  v57 = *v66;
  v58 = *&v66[16];
  v59 = *&v66[32];
  v60 = *&v66[48];
  v62 = *&v66[80];
  *v63 = *&v66[96];
  v61 = *&v66[64];
  *&v63[15] = *&v66[111];
  sub_100008FA0(&v47, &qword_100357EE8);
  return sub_100008FA0(v41, &qword_100357ED0);
}

__n128 sub_10006000C@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Font.Leading();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v27 = v8;
  v28 = v9;
  sub_100031770();

  v10 = Text.init<A>(_:)();
  v12 = v11;
  v14 = v13;
  v16 = v15;
  static Alignment.leading.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v17 = v14 & 1;
  LOBYTE(v27) = v14 & 1;
  static Font.title3.getter();
  static Font.Weight.semibold.getter();
  Font.weight(_:)();

  (*(v5 + 104))(v7, enum case for Font.Leading.tight(_:), v4);
  v18 = Font.leading(_:)();

  (*(v5 + 8))(v7, v4);
  KeyPath = swift_getKeyPath();
  v20 = static Color.white.getter();
  v21 = swift_getKeyPath();
  v22 = swift_getKeyPath();
  *a2 = v10;
  *(a2 + 8) = v12;
  *(a2 + 16) = v17;
  *(a2 + 24) = v16;
  v23 = v26[5];
  *(a2 + 96) = v26[4];
  *(a2 + 112) = v23;
  *(a2 + 128) = v26[6];
  v24 = v26[1];
  *(a2 + 32) = v26[0];
  *(a2 + 48) = v24;
  result = v26[3];
  *(a2 + 64) = v26[2];
  *(a2 + 80) = result;
  *(a2 + 144) = KeyPath;
  *(a2 + 152) = v18;
  *(a2 + 160) = v21;
  *(a2 + 168) = v20;
  *(a2 + 176) = v22;
  *(a2 + 184) = 0;
  return result;
}

uint64_t sub_10006028C(uint64_t a1)
{
  if (!a1)
  {
LABEL_19:
    type metadata accessor for EmergencyModel();
    sub_100060538(&qword_100356B60, type metadata accessor for EmergencyModel);
    result = EnvironmentObject.error()();
    __break(1u);
    return result;
  }

  v1 = *(a1 + 152);
  if (v1 >= 2)
  {
    v2 = *(v1 + 16);
    if (v2)
    {

      sub_100187274(0, v2, 0);
      v3 = 0;
      v4 = _swiftEmptyArrayStorage;
      v17 = v1;
      v18 = *(v1 + 16);
      v5 = (v1 + 40);
      v16 = v2;
      while (v18 != v3)
      {
        if (v3 >= *(v1 + 16))
        {
          goto LABEL_18;
        }

        v6 = *(v5 - 1);
        v7 = *v5;

        v8 = dispatch thunk of CustomStringConvertible.description.getter();
        v10 = v9;
        v11 = HIBYTE(v7) & 0xF;
        if ((v7 & 0x2000000000000000) == 0)
        {
          v11 = v6 & 0xFFFFFFFFFFFFLL;
        }

        if (!v11)
        {

          v7 = 0xE100000000000000;
          v6 = 63;
        }

        v13 = _swiftEmptyArrayStorage[2];
        v12 = _swiftEmptyArrayStorage[3];
        if (v13 >= v12 >> 1)
        {
          sub_100187274((v12 > 1), v13 + 1, 1);
        }

        ++v3;
        _swiftEmptyArrayStorage[2] = v13 + 1;
        v14 = &_swiftEmptyArrayStorage[4 * v13];
        v14[4] = v8;
        v14[5] = v10;
        v14[6] = v6;
        v14[7] = v7;
        v5 += 2;
        v1 = v17;
        if (v16 == v3)
        {

          return v4;
        }
      }

      __break(1u);
LABEL_18:
      __break(1u);
      goto LABEL_19;
    }
  }

  return 0;
}

uint64_t sub_100060450()
{

  return _swift_deallocObject(v0, 24, 7);
}

unint64_t sub_100060490()
{
  result = qword_100357E90;
  if (!qword_100357E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100357E90);
  }

  return result;
}

unint64_t sub_1000604E4()
{
  result = qword_100357E98;
  if (!qword_100357E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100357E98);
  }

  return result;
}

uint64_t sub_100060538(unint64_t *a1, void (*a2)(uint64_t))
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

__n128 sub_10006058C(uint64_t a1, uint64_t a2)
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

uint64_t sub_1000605A8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 50))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1000605F0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 50) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 50) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_100060664()
{
  result = qword_100357EA0;
  if (!qword_100357EA0)
  {
    sub_100008CF0(&qword_100357EA8);
    sub_100009274(&qword_100357EB0, &qword_100357E70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100357EA0);
  }

  return result;
}

unint64_t sub_100060758()
{
  result = qword_100357EF0;
  if (!qword_100357EF0)
  {
    sub_100008CF0(&qword_100357EC0);
    sub_100009274(&qword_100357EF8, &qword_100357EB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100357EF0);
  }

  return result;
}

id sub_100060810()
{
  v1 = OBJC_IVAR____TtC8SOSBuddy16LockScreenSource_lockedStateDidChange;
  sub_1000040A8(&unk_100359B30);
  swift_allocObject();
  *&v0[v1] = PassthroughSubject.init()();
  *&v0[OBJC_IVAR____TtC8SOSBuddy16LockScreenSource_agent] = 0;
  v18.receiver = v0;
  v18.super_class = type metadata accessor for LockScreenSource();
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

id sub_100060A34()
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

  v13 = type metadata accessor for LockScreenSource();
  v16.receiver = v2;
  v16.super_class = v13;
  return objc_msgSendSuper2(&v16, "dealloc");
}

BOOL sub_100060C74()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10000F574();
  *v5 = static OS_dispatch_queue.main.getter();
  (*(v3 + 104))(v5, enum case for DispatchPredicate.onQueue(_:), v2);
  v6 = _dispatchPreconditionTest(_:)();
  (*(v3 + 8))(v5, v2);
  if (v6)
  {
    if (qword_100353A80 == -1)
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
  sub_10000F53C(v7, qword_100381DD0);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, v9, "start", v10, 2u);
  }

  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v12 = objc_allocWithZone(type metadata accessor for LockScreenAgent());
  v13 = sub_10000FEB0(sub_1000612D0, v11);
  v14 = *(v1 + OBJC_IVAR____TtC8SOSBuddy16LockScreenSource_agent);
  *(v1 + OBJC_IVAR____TtC8SOSBuddy16LockScreenSource_agent) = v13;
  v15 = v13;

  v16 = sub_100010598();
  if (!v16)
  {
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v17, v18, "Failed to start LockScreenAgent", v19, 2u);
    }
  }

  return v16;
}

uint64_t sub_100060F34(char a1)
{
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v9[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_10000F574();
  *v5 = static OS_dispatch_queue.main.getter();
  (*(v3 + 104))(v5, enum case for DispatchPredicate.onQueue(_:), v2);
  v6 = _dispatchPreconditionTest(_:)();
  result = (*(v3 + 8))(v5, v2);
  if (v6)
  {
    swift_beginAccess();
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v8 = result;

      v9[7] = a1 & 1;
      PassthroughSubject.send(_:)();
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1000610A4()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10000F574();
  *v5 = static OS_dispatch_queue.main.getter();
  (*(v3 + 104))(v5, enum case for DispatchPredicate.onQueue(_:), v2);
  v6 = _dispatchPreconditionTest(_:)();
  (*(v3 + 8))(v5, v2);
  if (v6)
  {
    if (qword_100353A80 == -1)
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
  sub_10000F53C(v7, qword_100381DD0);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, v9, "stop", v10, 2u);
  }

  v11 = OBJC_IVAR____TtC8SOSBuddy16LockScreenSource_agent;
  v12 = *(v1 + OBJC_IVAR____TtC8SOSBuddy16LockScreenSource_agent);
  if (v12)
  {
    v13 = v12;
    sub_100010A78();

    v12 = *(v1 + v11);
  }

  *(v1 + v11) = 0;
}

uint64_t sub_100061298()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000612D8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v6 = *(a1 + 32);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v8 = *(a2 + 32);
  return sub_10006A53C(v5, v7) & 1;
}

uint64_t sub_100061350(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  v5[0] = *a1;
  v5[1] = v2;
  v6[0] = a1[2];
  *(v6 + 10) = *(a1 + 42);
  v3 = a2[1];
  v7[0] = *a2;
  v7[1] = v3;
  v8[0] = a2[2];
  *(v8 + 10) = *(a2 + 42);
  return sub_10006A480(v5, v7) & 1;
}

void *sub_1000613AC()
{
  v1 = v0;
  v24[1] = *v0;
  v2 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v28 = *(v2 - 8);
  v29 = v2;
  __chkstk_darwin(v2);
  v27 = v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v25);
  v26 = v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v5 - 8);
  sub_1000040A8(&unk_100365610);
  swift_allocObject();
  v0[4] = PassthroughSubject.init()();
  sub_1000040A8(&qword_1003580D8);
  swift_allocObject();
  v0[5] = PassthroughSubject.init()();
  v0[7] = 0;
  swift_unknownObjectWeakInit();
  v0[9] = 0;
  swift_unknownObjectWeakInit();
  v0[11] = 0;
  swift_unknownObjectWeakInit();
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

  sub_10001D630(0, &qword_10035BA10);
  v31[0] = v8;
  v31[1] = v10;

  v11._countAndFlagsBits = 0xD000000000000026;
  v11._object = 0x80000001002991A0;
  String.append(_:)(v11);

  static DispatchQoS.unspecified.getter();
  v31[0] = _swiftEmptyArrayStorage;
  sub_10006BB2C(&unk_100355D50, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_1000040A8(&unk_10035BA20);
  sub_100009274(&unk_100355D60, &unk_10035BA20);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v28 + 104))(v27, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v29);
  v1[12] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *(v1 + 13) = 0u;
  *(v1 + 15) = 0u;
  *(v1 + 17) = 0u;
  *(v1 + 19) = 0u;
  *(v1 + 168) = 2;
  v1[22] = 0;
  *(v1 + 184) = 1;
  *(v1 + 12) = 0u;
  *(v1 + 13) = 0u;
  *(v1 + 14) = 0u;
  v1[30] = 0;
  *(v1 + 124) = 3;
  *(v1 + 250) = 0;
  v1[32] = 0;
  v1[33] = 0;
  *(v1 + 272) = 2;
  if (_swiftEmptyArrayStorage >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      v23 = sub_100233B1C(_swiftEmptyArrayStorage);
    }

    else
    {
      v23 = &_swiftEmptySetSingleton;
    }

    v1[35] = v23;
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      v12 = sub_100233B1C(_swiftEmptyArrayStorage);
    }

    else
    {
      v12 = &_swiftEmptySetSingleton;
    }
  }

  else
  {
    v12 = &_swiftEmptySetSingleton;
    v1[35] = &_swiftEmptySetSingleton;
  }

  v1[36] = v12;
  v1[37] = 0;
  *(v1 + 19) = xmmword_10027C550;
  *(v1 + 20) = xmmword_10027C550;
  v1[42] = 1;
  *(v1 + 43) = 0u;
  *(v1 + 45) = 0u;
  swift_allocObject();
  v1[2] = PassthroughSubject.init()();
  swift_allocObject();
  v1[3] = PassthroughSubject.init()();
  v13 = qword_100353A10;
  swift_retain_n();
  if (v13 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_10000F53C(v14, qword_100381C80);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v30 = v1;
    v31[0] = v18;
    *v17 = 136446210;

    v19 = String.init<A>(describing:)();
    v21 = sub_10017C9E8(v19, v20, v31);

    *(v17 + 4) = v21;
    _os_log_impl(&_mh_execute_header, v15, v16, "[%{public}s] init", v17, 0xCu);
    sub_100008964(v18);
  }

  return v1;
}

uint64_t sub_1000619D0()
{

  sub_10002B558(v0 + 48);
  sub_10002B558(v0 + 64);
  sub_10002B558(v0 + 80);

  sub_10006B814(*(v0 + 120), *(v0 + 128), *(v0 + 136));

  v1 = *(v0 + 312);
  v2 = *(v0 + 320);
  v3 = *(v0 + 328);
  v4 = *(v0 + 336);
  sub_10006B9B0(*(v0 + 296), *(v0 + 304));
  sub_10006B9B0(v1, v2);
  sub_10006BA24(v3, v4);
}

uint64_t sub_100061ABC()
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
    v15 = v6;
    *v5 = 136446210;

    v7 = String.init<A>(describing:)();
    v9 = sub_10017C9E8(v7, v8, &v15);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "[%{public}s] deinit", v5, 0xCu);
    sub_100008964(v6);
  }

  sub_10002B558(v1 + 48);
  sub_10002B558(v1 + 64);
  sub_10002B558(v1 + 80);

  sub_10006B814(*(v1 + 120), *(v1 + 128), *(v1 + 136));

  v10 = *(v1 + 312);
  v11 = *(v1 + 320);
  v12 = *(v1 + 328);
  v13 = *(v1 + 336);
  sub_10006B9B0(*(v1 + 296), *(v1 + 304));
  sub_10006B9B0(v10, v11);
  sub_10006BA24(v12, v13);

  return v1;
}

uint64_t sub_100061D0C()
{
  sub_100061ABC();

  return swift_deallocClassInstance();
}

uint64_t sub_100061D64(uint64_t a1)
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

uint64_t sub_100061D88(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFFD && *(a1 + 64))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v5 = -1;
  }

  else
  {
    v5 = v4;
  }

  v6 = v5 - 1;
  if (v4 < 1)
  {
    v7 = -1;
  }

  else
  {
    v7 = v6;
  }

  return (v7 + 1);
}

uint64_t sub_100061DF0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 2147483646;
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 64) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 64) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

__n128 sub_100061E60(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 42) = *(a2 + 42);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_100061E7C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 58))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 56);
  v4 = v3 >= 3;
  v5 = v3 - 3;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_100061EC0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 58) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 58) = 0;
    }

    if (a2)
    {
      *(result + 56) = a2 + 2;
    }
  }

  return result;
}

uint64_t sub_100061F24(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_100061F6C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100061FC4()
{
  v1 = v0;
  *(v0 + 56) = 0;
  swift_unknownObjectWeakAssign();
  *(v0 + 72) = 0;
  swift_unknownObjectWeakAssign();
  *(v0 + 88) = 0;
  swift_unknownObjectWeakAssign();
  v2 = *(v0 + 312);
  v19[0] = *(v0 + 296);
  v19[1] = v2;
  v3 = *(v0 + 344);
  v19[2] = *(v0 + 328);
  v19[3] = v3;
  *(v0 + 296) = 0;
  *(v0 + 304) = xmmword_10027C550;
  *(v0 + 320) = xmmword_10027C550;
  *(v0 + 344) = 0;
  *(v0 + 352) = 0;
  *(v0 + 336) = 1;
  sub_10006BAFC(v19);
  v4 = *(v0 + 250);
  if (v4 == 1)
  {
    sub_1000040A8(&unk_100365610);
    sub_100009274(&qword_10035CF00, &unk_100365610);
    Subject<>.send()();
  }

  *(v0 + 250) = 0;
  sub_10006629C(v4);
  *(v0 + 272) = 2;
  swift_beginAccess();
  v5 = *(v0 + 112);
  if (v5)
  {

    sub_1000040A8(&unk_100365610);
    sub_100009274(&qword_10035CF00, &unk_100365610);
    Subject<>.send()();
  }

  *(v0 + 112) = 0;

  sub_100064D5C(v5);

  v6 = *(v0 + 136);
  v17[0] = *(v0 + 120);
  v17[1] = v6;
  v18 = *(v0 + 152);
  v7 = v6;
  if (v6)
  {
    v8 = v17[0];
    sub_10006B858(v17, v15);

    sub_10006B814(v8, *(&v8 + 1), v7);
    sub_10006B814(0, 0, 0);
    sub_1000040A8(&unk_100365610);
    sub_100009274(&qword_10035CF00, &unk_100365610);
    Subject<>.send()();
  }

  v9 = *(v1 + 120);
  v10 = *(v1 + 128);
  v11 = *(v1 + 136);
  *(v1 + 120) = 0u;
  *(v1 + 136) = 0u;
  *(v1 + 152) = 0;
  sub_10006B814(v9, v10, v11);
  sub_100065494(v17);
  sub_100008FA0(v17, &qword_1003580C0);
  v12 = *(v1 + 160);
  if (v12)
  {

    sub_1000040A8(&unk_100365610);
    sub_100009274(&qword_10035CF00, &unk_100365610);
    Subject<>.send()();
  }

  *(v1 + 160) = 0;

  sub_1000657D4(v12);

  *&v16[10] = *(v1 + 234);
  v13 = *(v1 + 208);
  v15[0] = *(v1 + 192);
  v15[1] = v13;
  *v16 = *(v1 + 224);
  if (v16[24] != 3)
  {
    sub_1000040A8(&unk_100365610);
    sub_100009274(&qword_10035CF00, &unk_100365610);
    Subject<>.send()();
  }

  *(v1 + 240) = 0;
  *(v1 + 208) = 0u;
  *(v1 + 224) = 0u;
  *(v1 + 192) = 0u;
  *(v1 + 248) = 3;
  sub_100065F7C(v15);
  *(v1 + 360) = 0;
  *(v1 + 368) = 0;
}

uint64_t sub_1000623E8(__int128 *a1)
{
  if (qword_100353AB0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000F53C(v2, qword_100381E60);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v11 = v6;
    *v5 = 136446210;
    sub_1000040A8(&qword_1003580B8);
    v7 = String.init<A>(describing:)();
    v9 = sub_10017C9E8(v7, v8, &v11);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "onRequest - %{public}s", v5, 0xCu);
    sub_100008964(v6);
  }

  return sub_100062570(a1, 0);
}

uint64_t sub_100062570(__int128 *a1, char a2)
{
  v3 = v2;
  if (qword_100353AB0 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_10000F53C(v6, qword_100381E60);

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    *v9 = 136446466;
    v10 = a1[1];
    v25 = *a1;
    *v26 = v10;
    *&v26[10] = *(a1 + 26);
    sub_1000040A8(&qword_1003580B8);
    v11 = String.init<A>(describing:)();
    v13 = sub_10017C9E8(v11, v12, &v24);

    *(v9 + 4) = v13;
    *(v9 + 12) = 2082;
    v14 = *(v3 + 208);
    v25 = *(v3 + 192);
    *v26 = v14;
    *&v26[16] = *(v3 + 224);
    *&v26[26] = *(v3 + 234);
    sub_1000040A8(&qword_100358090);
    v15 = String.init<A>(describing:)();
    v17 = sub_10017C9E8(v15, v16, &v24);

    *(v9 + 14) = v17;
    _os_log_impl(&_mh_execute_header, v7, v8, "Received request: %{public}s for currentRoadsideAssistance: %{public}s", v9, 0x16u);
    swift_arrayDestroy();
  }

  v18 = *(a1 + 1);
  if (v18 == 2)
  {
    *&v26[26] = *(v3 + 234);
    v19 = *(v3 + 208);
    v25 = *(v3 + 192);
    *v26 = v19;
    *&v26[16] = *(v3 + 224);
    if (v26[40] != 3)
    {
      sub_1000040A8(&unk_100365610);
      sub_100009274(&qword_10035CF00, &unk_100365610);
      Subject<>.send()();
    }

    *(v3 + 240) = 0;
    *(v3 + 208) = 0u;
    *(v3 + 224) = 0u;
    *(v3 + 192) = 0u;
    *(v3 + 248) = 3;
    return sub_100065F7C(&v25);
  }

  else
  {
    v21 = *a1;
    v22 = swift_allocObject();
    swift_weakInit();
    v23 = swift_allocObject();
    *(v23 + 16) = v22;
    *(v23 + 24) = v21;
    *(v23 + 32) = v18;
    *(v23 + 40) = a1[1];
    *(v23 + 50) = *(a1 + 26);
    *(v23 + 66) = a2 & 1;

    sub_10006399C(sub_10006B03C, v23);
  }
}

void sub_1000628BC(uint64_t *a1)
{
  if (qword_100353AB0 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_10000F53C(v3, qword_100381E60);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v35 = v7;
    *v6 = 136446210;
    v8 = *(a1 + 1);
    v40[0] = *a1;
    v40[1] = v8;
    *(&v40[1] + 10) = *(a1 + 26);
    sub_1000040A8(&qword_1003580D0);
    v9 = String.init<A>(describing:)();
    v11 = sub_10017C9E8(v9, v10, &v35);

    *(v6 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v4, v5, "onConversationDidChange - %{public}s", v6, 0xCu);
    sub_100008964(v7);
  }

  v12 = *(a1 + 8);
  if (v12 == 2)
  {
    v40[0] = xmmword_10027C560;
    memset(&v40[1], 0, 26);
    v13 = v40;
LABEL_21:
    sub_100062570(v13, 1);
    return;
  }

  v14 = *a1;
  v32 = a1[2];
  v15 = a1[4];
  v16 = *(a1 + 41);
  v17 = *(a1 + 40);
  v18 = *(a1 + 24);
  v19 = *(v1 + 248);
  if (v19 == 3 || ((v20 = *(v1 + 200), v21 = *(v1 + 192), (v12 & 1) == 0) ? (v22 = 0) : (v22 = 2), LOBYTE(v33[0]) = v20 & 1, *&v40[0] = v21, BYTE8(v40[0]) = v20 & 1, *&v40[1] = v32, BYTE8(v40[1]) = v18 & 1, *&v40[2] = v15, BYTE8(v40[2]) = v17 & 1, v41 = v14, v42 = v22, v43 = v16 & 1, v23 = *(v1 + 201), v24 = *(v1 + 217), *&v38[15] = *(v1 + 232), *v38 = v24, v37 = v23, v35 = v21, v36 = v20, v39 = v19, (sub_10006A480(&v35, v40) & 1) == 0))
  {
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&_mh_execute_header, v28, v29, "Updating roadside assistance with the simulated request", v30, 2u);
    }

    v33[0] = v14;
    v33[1] = v12 & 1;
    if (v16)
    {
      v31 = 256;
    }

    else
    {
      v31 = 0;
    }

    v33[2] = v32;
    v33[3] = v18 & 1;
    v33[4] = v15;
    v34 = v31 & 0xFFFE | v17 & 1;
    v13 = v33;
    goto LABEL_21;
  }

  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    *v27 = 0;
    _os_log_impl(&_mh_execute_header, v25, v26, "onConversationDidChange - the same roadside assistance request is tracked already", v27, 2u);
  }
}

void sub_100062C4C(int a1)
{
  v2 = v1;
  v3 = a1;
  v4 = *(v1 + 272);
  if (v4 == 2 || ((v4 ^ a1) & 1) != 0)
  {
    if (qword_100353AB0 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_10000F53C(v5, qword_100381E60);

    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *v8 = 136446466;
      sub_1000040A8(&unk_1003655D0);
      v9 = String.init<A>(describing:)();
      v11 = sub_10017C9E8(v9, v10, &v18);

      *(v8 + 4) = v11;
      *(v8 + 12) = 2082;
      if (v3)
      {
        v12 = 1702195828;
      }

      else
      {
        v12 = 0x65736C6166;
      }

      if (v3)
      {
        v13 = 0xE400000000000000;
      }

      else
      {
        v13 = 0xE500000000000000;
      }

      v14 = sub_10017C9E8(v12, v13, &v18);

      *(v8 + 14) = v14;
      _os_log_impl(&_mh_execute_header, v6, v7, "Cached _linkConnected state changed from %{public}s to %{public}s", v8, 0x16u);
      swift_arrayDestroy();
    }

    *(v2 + 272) = v3 & 1;
    if (v3)
    {
      if (*(v2 + 104))
      {

        v15 = sub_1000BA248();
        v17 = v16;

        if (v17)
        {
          if (*(v2 + 104))
          {

            sub_1000B7848(v15, v17);
          }
        }
      }
    }
  }
}

uint64_t sub_100062EA4(uint64_t result, uint64_t a2)
{
  v3 = v2;
  v5 = result;
  v6 = v2[33];
  if (v6)
  {
    if (a2)
    {
      result = v2[32];
      if (result == v5 && v6 == a2)
      {
        return result;
      }

      result = _stringCompareWithSmolCheck(_:_:expecting:)();
      if (result)
      {
        return result;
      }
    }
  }

  else if (!a2)
  {
    return result;
  }

  if (qword_100353AB0 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_10000F53C(v8, qword_100381E60);

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    *v11 = 136446466;

    sub_1000040A8(&qword_1003566A0);
    v12 = String.init<A>(describing:)();
    v14 = sub_10017C9E8(v12, v13, &v20);

    *(v11 + 4) = v14;
    *(v11 + 12) = 2082;

    v15 = String.init<A>(describing:)();
    v17 = sub_10017C9E8(v15, v16, &v20);

    *(v11 + 14) = v17;
    _os_log_impl(&_mh_execute_header, v9, v10, "iso3166Alpha3CountryCode changed from %{public}s to %{public}s", v11, 0x16u);
    swift_arrayDestroy();
  }

  v3[32] = v5;
  v3[33] = a2;

  if (v3[13])
  {
    result = sub_1000B9B50();
    if ((result & 1) == 0)
    {
      v18 = v3[32];
      v19 = v3[33];

      sub_100063118(v18, v19);
    }
  }

  return result;
}

void sub_100063118(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v56 = a1;
  v57 = a2;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v54 = *(v4 - 8);
  v55 = v4;
  __chkstk_darwin(v4);
  v6 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v52 = *(v7 - 8);
  v53 = v7;
  __chkstk_darwin(v7);
  v9 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchPredicate();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = (&v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100353AB0 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_10000F53C(v14, qword_100381E60);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&_mh_execute_header, v15, v16, "_updateQuestionnaireStateAsync", v17, 2u);
  }

  sub_10001D630(0, &qword_10035BA10);
  *v13 = static OS_dispatch_queue.main.getter();
  (*(v11 + 104))(v13, enum case for DispatchPredicate.onQueue(_:), v10);
  v18 = _dispatchPreconditionTest(_:)();
  (*(v11 + 8))(v13, v10);
  if (v18)
  {
    v19 = v3[40];
    if (v19 == 1)
    {
      v20 = v3[42];
      v21 = v57;
      if (v20 == 1)
      {
LABEL_8:
        v22 = v56;
        v3[39] = v56;
        v3[40] = v21;

        sub_1000664B8();
        v23 = swift_allocObject();
        swift_weakInit();
        v24 = swift_allocObject();
        v24[2] = v23;
        v24[3] = v22;
        v24[4] = v21;
        v63 = sub_10006B990;
        v64 = v24;
        aBlock = _NSConcreteStackBlock;
        v60 = 1107296256;
        v61 = sub_1001D2438;
        v62 = &unk_100329538;
        v25 = _Block_copy(&aBlock);

        static DispatchQoS.unspecified.getter();
        v58 = _swiftEmptyArrayStorage;
        sub_10006BB2C(&qword_10035BB40, &type metadata accessor for DispatchWorkItemFlags);
        sub_1000040A8(&unk_100355D70);
        sub_100009274(&qword_10035BB50, &unk_100355D70);
        v26 = v55;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        OS_dispatch_queue.async(group:qos:flags:execute:)();
        _Block_release(v25);
        (*(v54 + 8))(v6, v26);
        (*(v52 + 8))(v9, v53);

        return;
      }

      if (v57)
      {
        if (!v20 || (v3[41] != v56 || v20 != v57) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          goto LABEL_8;
        }
      }

      else if (v20)
      {
        goto LABEL_8;
      }

      v38 = Logger.logObject.getter();
      v39 = static os_log_type_t.default.getter();
      if (!os_log_type_enabled(v38, v39))
      {
        goto LABEL_34;
      }

      v40 = swift_slowAlloc();
      *v40 = 0;
      v41 = "Questionnaire is already loaded for the requested country code, ignoring this request";
      goto LABEL_33;
    }

    v27 = v3[39];
    sub_10006B99C(v27, v3[40]);

    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.default.getter();
    sub_10006B9B0(v27, v19);
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v58 = v31;
      aBlock = v27;
      *v30 = 136446210;
      v60 = v19;

      sub_1000040A8(&qword_1003566A0);
      v32 = String.init<A>(describing:)();
      v34 = sub_10017C9E8(v32, v33, &v58);

      *(v30 + 4) = v34;
      _os_log_impl(&_mh_execute_header, v28, v29, "Questionnaire loading is in progress for iso3166Alpha3CountryCode: %{public}s", v30, 0xCu);
      sub_100008964(v31);
    }

    v36 = v56;
    v35 = v57;
    if (v57)
    {
      if (v19)
      {
        if (v27 == v56 && v19 == v57)
        {
          sub_10006B9B0(v56, v57);
LABEL_25:
          v38 = Logger.logObject.getter();
          v39 = static os_log_type_t.default.getter();
          if (!os_log_type_enabled(v38, v39))
          {
LABEL_34:

            return;
          }

          v40 = swift_slowAlloc();
          *v40 = 0;
          v41 = "Questionnaire is already loading for the requested country code, ignoring this request";
LABEL_33:
          _os_log_impl(&_mh_execute_header, v38, v39, v41, v40, 2u);

          goto LABEL_34;
        }

        v37 = _stringCompareWithSmolCheck(_:_:expecting:)();
        sub_10006B9B0(v27, v19);
        if (v37)
        {
          goto LABEL_25;
        }
      }
    }

    else
    {
      if (!v19)
      {
        goto LABEL_25;
      }

      sub_10006B9B0(v27, v19);
    }

    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v58 = v45;
      aBlock = v36;
      *v44 = 136446210;
      v60 = v57;

      sub_1000040A8(&qword_1003566A0);
      v46 = String.init<A>(describing:)();
      v48 = sub_10017C9E8(v46, v47, &v58);

      *(v44 + 4) = v48;
      _os_log_impl(&_mh_execute_header, v42, v43, "Deferring questionnaire loading for iso3166Alpha3CountryCode: %{public}s", v44, 0xCu);
      sub_100008964(v45);
      v35 = v57;
    }

    v49 = v3[37];
    v50 = v3[38];
    v3[37] = v36;
    v3[38] = v35;

    sub_10006B9B0(v49, v50);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_10006399C(void (*a1)(void), uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = type metadata accessor for DispatchPredicate();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = (&v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10001D630(0, &qword_10035BA10);
  *v10 = static OS_dispatch_queue.main.getter();
  (*(v8 + 104))(v10, enum case for DispatchPredicate.onQueue(_:), v7);
  v11 = _dispatchPreconditionTest(_:)();
  (*(v8 + 8))(v10, v7);
  if ((v11 & 1) == 0)
  {
    __break(1u);
LABEL_12:
    swift_once();
    goto LABEL_7;
  }

  swift_beginAccess();
  if (v3[14])
  {

    (a1)(v12);
  }

  if (!swift_unknownObjectWeakLoadStrong())
  {
    sub_1002564B8(_swiftEmptyArrayStorage);
    a1();
  }

  if (qword_100353AB0 != -1)
  {
    goto LABEL_12;
  }

LABEL_7:
  v14 = type metadata accessor for Logger();
  sub_10000F53C(v14, qword_100381E60);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&_mh_execute_header, v15, v16, "Fetching roadside providers", v17, 2u);
  }

  v18 = swift_allocObject();
  swift_weakInit();
  v19 = swift_allocObject();
  v19[2] = v18;
  v19[3] = a1;
  v19[4] = a2;
  v19[5] = v6;

  sub_1002494B4(sub_10006A650, v19);
  swift_unknownObjectRelease();
}

uint64_t sub_100063CAC(void *a1, uint64_t a2, void (*a3)(void))
{
  v6 = type metadata accessor for DispatchPredicate();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = (v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10001D630(0, &qword_10035BA10);
  *v9 = static OS_dispatch_queue.main.getter();
  (*(v7 + 104))(v9, enum case for DispatchPredicate.onQueue(_:), v6);
  v10 = _dispatchPreconditionTest(_:)();
  (*(v7 + 8))(v9, v6);
  if ((v10 & 1) == 0)
  {
    __break(1u);
LABEL_17:
    swift_once();
LABEL_4:
    v12 = type metadata accessor for Logger();
    sub_10000F53C(v12, qword_100381C80);
    v13 = a1;
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v27[1] = a1;
      v28[0] = v17;
      *v16 = 136315138;
      v18 = v13;
      sub_1000040A8(&qword_100358080);
      v19 = String.init<A>(describing:)();
      v21 = sub_10017C9E8(v19, v20, v28);

      *(v16 + 4) = v21;
      _os_log_impl(&_mh_execute_header, v14, v15, "Roadside providers fetched: %s", v16, 0xCu);
      sub_100008964(v17);
    }

    v22 = sub_10006A65C(a1);
    if (!v22)
    {
      v22 = sub_1002564B8(_swiftEmptyArrayStorage);
    }

    v23 = v22;
    swift_beginAccess();
    v24 = *(a2 + 112);
    if (v24)
    {

      if (sub_1000F45D4(v25, v23))
      {
        goto LABEL_14;
      }
    }

    else
    {
    }

    sub_1000040A8(&unk_100365610);
    sub_100009274(&qword_10035CF00, &unk_100365610);
    Subject<>.send()();
LABEL_14:
    *(a2 + 112) = v23;

    sub_100064D5C(v24);

    (a3)(v23);
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    a2 = Strong;
    if (qword_100353A10 == -1)
    {
      goto LABEL_4;
    }

    goto LABEL_17;
  }

  sub_1002564B8(_swiftEmptyArrayStorage);
  a3();
}

uint64_t sub_100064068(uint64_t a1, char a2, uint64_t a3, uint64_t (*a4)(__int128 *))
{
  v7 = type metadata accessor for DispatchPredicate();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v39[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0) - 16];
  sub_10001D630(0, &qword_10035BA10);
  *v10 = static OS_dispatch_queue.main.getter();
  (*(v8 + 104))(v10, enum case for DispatchPredicate.onQueue(_:), v7);
  v11 = _dispatchPreconditionTest(_:)();
  result = (*(v8 + 8))(v10, v7);
  if ((v11 & 1) == 0)
  {
    __break(1u);
    return result;
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    v46 = 0;
    v44 = 0u;
    v45 = 0u;
    return a4(&v44);
  }

  v14 = Strong;
  if (a2)
  {
    v15 = *(Strong + 136);
    v44 = *(Strong + 120);
    v45 = v15;
    v46 = *(Strong + 152);
    v16 = v15;
    if (v15)
    {
      v17 = v44;
      sub_10006B858(&v44, v42);

      sub_10006B814(v17, *(&v17 + 1), v16);
      sub_10006B814(0, 0, 0);
      sub_1000040A8(&unk_100365610);
      sub_100009274(&qword_10035CF00, &unk_100365610);
      Subject<>.send()();
    }

    v18 = v14[15];
    v19 = v14[16];
    v20 = v14[17];
    *(v14 + 15) = 0u;
    *(v14 + 17) = 0u;
    v14[19] = 0;
    sub_10006B814(v18, v19, v20);
    v21 = &v44;
    goto LABEL_18;
  }

  swift_beginAccess();
  v22 = v14[14];
  v23 = 0uLL;
  if (v22)
  {
    if (*(v22 + 16))
    {
      v24 = sub_1001921C8(a1);
      if (v25)
      {
        v26 = *(v22 + 56) + 40 * v24;
        v38 = *v26;
        v22 = *(v26 + 16);
        v27 = *(v26 + 24);
        v28 = *(v26 + 25);
        v29 = *(v26 + 32);
        v30 = 256;
        if (!v28)
        {
          v30 = 0;
        }

        v31 = v30 | v27;

        v23 = v38;
      }

      else
      {
        v22 = 0;
        v31 = 0;
        v29 = 0;
        v23 = 0uLL;
      }

      goto LABEL_17;
    }

    v22 = 0;
  }

  v31 = 0;
  v29 = 0;
LABEL_17:
  v44 = v23;
  *&v45 = v22;
  *(&v45 + 1) = v31;
  v46 = v29;
  swift_endAccess();
  v32 = *(v14 + 17);
  v42[0] = *(v14 + 15);
  v42[1] = v32;
  v43 = v14[19];
  v21 = v42;
  sub_10006B858(v42, v40);
  sub_1000652DC(&v44);
  v33 = v14[15];
  v34 = v14[16];
  v35 = v14[17];
  v36 = v45;
  *(v14 + 15) = v44;
  *(v14 + 17) = v36;
  v14[19] = v46;
  sub_10006B814(v33, v34, v35);
LABEL_18:
  sub_100065494(v21);
  sub_100008FA0(v21, &qword_1003580C0);
  v37 = *(v14 + 17);
  v40[0] = *(v14 + 15);
  v40[1] = v37;
  v41 = v14[19];
  sub_10006B858(v40, v39);
  a4(v40);
  sub_100008FA0(v40, &qword_1003580C0);
}

uint64_t sub_100064474(void *a1, uint64_t a2, uint64_t (*a3)(void *))
{
  v6 = type metadata accessor for DispatchPredicate();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = (v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10001D630(0, &qword_10035BA10);
  *v9 = static OS_dispatch_queue.main.getter();
  (*(v7 + 104))(v9, enum case for DispatchPredicate.onQueue(_:), v6);
  v10 = _dispatchPreconditionTest(_:)();
  (*(v7 + 8))(v9, v6);
  if ((v10 & 1) == 0)
  {
    __break(1u);
LABEL_17:
    swift_once();
    goto LABEL_4;
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return a3(_swiftEmptyArrayStorage);
  }

  a2 = Strong;
  if (qword_100353AB0 != -1)
  {
    goto LABEL_17;
  }

LABEL_4:
  v12 = type metadata accessor for Logger();
  sub_10000F53C(v12, qword_100381E60);

  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v23[1] = a1;
    v24 = v16;
    *v15 = 136315138;

    sub_1000040A8(&qword_1003580C8);
    v17 = String.init<A>(describing:)();
    v19 = sub_10017C9E8(v17, v18, &v24);

    *(v15 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v13, v14, "My phone numbers fetched: %s", v15, 0xCu);
    sub_100008964(v16);
  }

  if (a1)
  {
    v20 = a1;
  }

  else
  {
    v20 = _swiftEmptyArrayStorage;
  }

  v21 = *(a2 + 160);
  if (!v21)
  {
    goto LABEL_14;
  }

  if ((sub_100202084(*(a2 + 160), v20) & 1) == 0)
  {

LABEL_14:

    sub_1000040A8(&unk_100365610);
    sub_100009274(&qword_10035CF00, &unk_100365610);
    Subject<>.send()();
    goto LABEL_15;
  }

LABEL_15:
  *(a2 + 160) = v20;

  sub_1000657D4(v21);

  a3(v20);
}

void sub_100064824(uint64_t a1)
{
  v3 = (v1 + 192);
  v2 = *(v1 + 192);
  v4 = *(v1 + 200);
  v53[0] = *(v1 + 201);
  *(v53 + 3) = *(v1 + 204);
  v5 = *(v1 + 208);
  v6 = *(v1 + 216);
  v52[0] = *(v1 + 217);
  *(v52 + 3) = *(v1 + 220);
  v7 = *(v1 + 224);
  v8 = *(v1 + 232);
  v9 = *(v1 + 233);
  *(v50 + 3) = *(v1 + 236);
  v50[0] = v9;
  v10 = *(v1 + 240);
  v11 = *(v1 + 248);
  v12 = *(v1 + 249);
  v54 = v4;
  v51 = v8;
  v49 = v12;
  if (v11 == 2)
  {
    v39 = v7;
    v41 = v2;
    if (qword_100353AB0 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_10000F53C(v16, qword_100381E60);
    oslog = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(oslog, v17))
    {
      v18 = v10;
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      *&v44[0] = v20;
      *v19 = 136446210;
      *&v46 = v41;
      BYTE8(v46) = v4;
      *(&v46 + 9) = v53[0];
      HIDWORD(v46) = *(v53 + 3);
      *&v47 = v5;
      BYTE8(v47) = v6;
      *(&v47 + 9) = v52[0];
      HIDWORD(v47) = *(v52 + 3);
      *v48 = v39;
      v48[8] = v8;
      *&v48[9] = v50[0];
      *&v48[12] = *(v50 + 3);
      *&v48[16] = v18;
      v48[24] = 2;
      v48[25] = v12;
      v21 = String.init<A>(describing:)();
      v23 = sub_10017C9E8(v21, v22, v44);

      *(v19 + 4) = v23;
      _os_log_impl(&_mh_execute_header, oslog, v17, "onProviderSelected - current conversation is already committed: %{public}s", v19, 0xCu);
      sub_100008964(v20);

      return;
    }

    goto LABEL_11;
  }

  if (v11 == 3)
  {
    if (qword_100353AB0 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    sub_10000F53C(v13, qword_100381E60);
    oslog = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(oslog, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v14, "onProviderSelected - _currentRoadsideAssistance == nil, ignoring request", v15, 2u);
    }

LABEL_11:

    return;
  }

  if ((v6 & 1) != 0 || v5 != a1)
  {
    v40 = v7;
    v42 = v2;
    v37 = v10;
    v38 = a1;
    if (qword_100353AB0 != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    sub_10000F53C(v24, qword_100381E60);
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v36 = v26;
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      *&v44[0] = v28;
      *v27 = 136446466;
      *&v46 = v5;
      BYTE8(v46) = v6 & 1;
      sub_1000040A8(&qword_100358098);
      v29 = String.init<A>(describing:)();
      v31 = sub_10017C9E8(v29, v30, v44);

      *(v27 + 4) = v31;
      *(v27 + 12) = 2048;
      *(v27 + 14) = v38;
      _os_log_impl(&_mh_execute_header, v25, v36, "onProviderSelected - overriding current providerId: %{public}s with %llu", v27, 0x16u);
      sub_100008964(v28);

      a1 = v38;
      v4 = v54;
      v8 = v51;
      v12 = v49;
    }

    else
    {

      a1 = v38;
    }

    v10 = v37;
    v7 = v40;
    v2 = v42;
  }

  *&v46 = v2;
  BYTE8(v46) = v4 & 1;
  *&v47 = a1;
  BYTE8(v47) = 0;
  *v48 = v7;
  v48[8] = v8 & 1;
  *&v48[16] = v10;
  v48[24] = v11;
  v48[25] = v12 & 1;
  v32 = *v3;
  v33 = v3[1];
  v34 = v3[2];
  *&v45[10] = *(v3 + 42);
  v44[1] = v33;
  *v45 = v34;
  v44[0] = v32;
  sub_100065E38(&v46);
  v35 = v47;
  *v3 = v46;
  v3[1] = v35;
  v3[2] = *v48;
  *(v3 + 42) = *&v48[10];
  sub_100065F7C(v44);
}

uint64_t sub_100064D5C(uint64_t a1)
{
  result = swift_beginAccess();
  if (*(v1 + 112))
  {
    if (a1)
    {

      v5 = sub_1000F45D4(v4, a1);

      if (v5)
      {
        return result;
      }
    }
  }

  else if (!a1)
  {
    return result;
  }

  if (qword_100353AB0 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_10000F53C(v6, qword_100381E60);

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    *v9 = 136446466;

    sub_1000040A8(&qword_100358088);
    v10 = String.init<A>(describing:)();
    v12 = sub_10017C9E8(v10, v11, &v16);

    *(v9 + 4) = v12;
    *(v9 + 12) = 2082;

    v13 = String.init<A>(describing:)();
    v15 = sub_10017C9E8(v13, v14, &v16);

    *(v9 + 14) = v15;
    _os_log_impl(&_mh_execute_header, v7, v8, "providers changed from %{public}s to %{public}s", v9, 0x16u);
    swift_arrayDestroy();
  }

  return sub_100064F8C();
}

uint64_t sub_100064F8C()
{
  v0 = type metadata accessor for DispatchWorkItemFlags();
  v11 = *(v0 - 8);
  __chkstk_darwin(v0);
  v2 = &v10 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  v3 = *(v10 - 8);
  __chkstk_darwin(v10);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000040A8(&unk_100365610);
  sub_100009274(&qword_10035CF00, &unk_100365610);
  Subject<>.send()();
  sub_10001D630(0, &qword_10035BA10);
  v6 = static OS_dispatch_queue.main.getter();
  v7 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = sub_10006AF70;
  aBlock[5] = v7;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1001D2438;
  aBlock[3] = &unk_100329380;
  v8 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10006BB2C(&qword_10035BB40, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000040A8(&unk_100355D70);
  sub_100009274(&qword_10035BB50, &unk_100355D70);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v8);

  (*(v11 + 8))(v2, v0);
  return (*(v3 + 8))(v5, v10);
}

uint64_t *sub_1000652DC(uint64_t *result)
{
  v2 = *result;
  v3 = result[1];
  v4 = result[2];
  v5 = result[3];
  v6 = result[4];
  v8 = v1[15];
  v7 = v1[16];
  v9 = v1[17];
  v10 = v1[18];
  v11 = v1[19];
  if (!v9)
  {
    if (!v4)
    {
      return result;
    }

    goto LABEL_6;
  }

  if (!v4)
  {
LABEL_6:
    sub_10006B858(result, v18);
    sub_10006B8C8(v8, v7, v9);
    sub_10006B814(v8, v7, v9);
    sub_10006B814(v2, v3, v4);
    goto LABEL_7;
  }

  v18[0] = *result;
  v18[1] = v3;
  v18[2] = v4;
  v19 = v5 & 0x101;
  v20 = v6;
  v15[0] = v8;
  v15[1] = v7;
  v15[2] = v9;
  v16 = v10 & 0x101;
  v17 = v11;
  v12 = result;
  v13 = sub_10006A53C(v15, v18);
  sub_10006B858(v12, v14);
  sub_10006B8C8(v8, v7, v9);

  result = sub_10006B814(v8, v7, v9);
  if ((v13 & 1) == 0)
  {
LABEL_7:
    sub_1000040A8(&unk_100365610);
    sub_100009274(&qword_10035CF00, &unk_100365610);
    return Subject<>.send()();
  }

  return result;
}

uint64_t *sub_100065494(uint64_t *result)
{
  v2 = v1;
  v3 = result;
  v5 = *result;
  v4 = result[1];
  v6 = result[2];
  v7 = result[3];
  v8 = result[4];
  v10 = v2[15];
  v9 = v2[16];
  v11 = v2[17];
  v12 = v2[18];
  v13 = v2[19];
  if (v11)
  {
    if (v6)
    {
      v39[0] = *result;
      v39[1] = v4;
      v39[2] = v6;
      v40 = v7 & 0x101;
      v41 = v8;
      v36[0] = v10;
      v36[1] = v9;
      v36[2] = v11;
      v37 = v12 & 0x101;
      v38 = v13;
      v14 = sub_10006A53C(v36, v39);
      sub_10006B858(v3, &v33);
      sub_10006B8C8(v10, v9, v11);

      result = sub_10006B814(v10, v9, v11);
      if (v14)
      {
        return result;
      }

      goto LABEL_7;
    }
  }

  else if (!v6)
  {
    return result;
  }

  v30 = result[1];
  sub_10006B858(result, v39);
  sub_10006B8C8(v10, v9, v11);
  sub_10006B814(v10, v9, v11);
  sub_10006B814(v5, v30, v6);
LABEL_7:
  if (qword_100353AB0 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  sub_10000F53C(v15, qword_100381E60);
  sub_10006B858(v3, &v33);

  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();
  sub_100008FA0(v3, &qword_1003580C0);

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    *v18 = 136446466;
    v19 = *(v3 + 16);
    v33 = *v3;
    v34 = v19;
    v35 = *(v3 + 32);
    sub_10006B858(v3, v31);
    sub_1000040A8(&qword_1003580C0);
    v20 = String.init<A>(describing:)();
    v22 = sub_10017C9E8(v20, v21, &v32);

    *(v18 + 4) = v22;
    *(v18 + 12) = 2082;
    v23 = v2[16];
    v24 = v2[17];
    v25 = v2[18];
    v26 = v2[19];
    *&v33 = v2[15];
    *(&v33 + 1) = v23;
    *&v34 = v24;
    *(&v34 + 1) = v25;
    v35 = v26;
    sub_10006B8C8(v33, v23, v24);
    v27 = String.init<A>(describing:)();
    v29 = sub_10017C9E8(v27, v28, &v32);

    *(v18 + 14) = v29;
    _os_log_impl(&_mh_execute_header, v16, v17, "resumableProvider changed from %{public}s to %{public}s", v18, 0x16u);
    swift_arrayDestroy();
  }

  return sub_100064F8C();
}

uint64_t sub_1000657D4(uint64_t a1)
{
  result = *(v1 + 160);
  if (result)
  {
    if (a1)
    {
      result = sub_100202084(result, a1);
      if (result)
      {
        return result;
      }
    }
  }

  else if (!a1)
  {
    return result;
  }

  if (qword_100353AB0 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000F53C(v4, qword_100381E60);

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v7 = 136446467;

    sub_1000040A8(&qword_1003580C8);
    v8 = String.init<A>(describing:)();
    v10 = sub_10017C9E8(v8, v9, &v14);

    *(v7 + 4) = v10;
    *(v7 + 12) = 2081;

    v11 = String.init<A>(describing:)();
    v13 = sub_10017C9E8(v11, v12, &v14);

    *(v7 + 14) = v13;
    _os_log_impl(&_mh_execute_header, v5, v6, "My phone numbers changed from %{public}s to %{private}s", v7, 0x16u);
    swift_arrayDestroy();
  }

  return sub_100064F8C();
}

void sub_1000659DC(int a1)
{
  v2 = *(v1 + 168);
  if (v2 == 2)
  {
    if (a1 == 2)
    {
      return;
    }
  }

  else if (a1 != 2 && ((v2 ^ a1) & 1) == 0)
  {
    return;
  }

  if (qword_100353AB0 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_10000F53C(v3, qword_100381E60);

  oslog = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v5 = 136446466;
    sub_1000040A8(&unk_1003655D0);
    v6 = String.init<A>(describing:)();
    v8 = sub_10017C9E8(v6, v7, &v13);

    *(v5 + 4) = v8;
    *(v5 + 12) = 2082;
    v9 = String.init<A>(describing:)();
    v11 = sub_10017C9E8(v9, v10, &v13);

    *(v5 + 14) = v11;
    _os_log_impl(&_mh_execute_header, oslog, v4, "lastConversationWasCommitted changed from %{public}s to %{public}s", v5, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }
}

void sub_100065C08(uint64_t a1, char a2)
{
  if (*(v2 + 184))
  {
    if (a2)
    {
      return;
    }
  }

  else if ((a2 & 1) == 0 && *(v2 + 176) == a1)
  {
    return;
  }

  if (qword_100353AB0 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_10000F53C(v3, qword_100381E60);

  oslog = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v5 = 136446466;
    sub_1000040A8(&qword_100358098);
    v6 = String.init<A>(describing:)();
    v8 = sub_10017C9E8(v6, v7, &v13);

    *(v5 + 4) = v8;
    *(v5 + 12) = 2082;
    v9 = String.init<A>(describing:)();
    v11 = sub_10017C9E8(v9, v10, &v13);

    *(v5 + 14) = v11;
    _os_log_impl(&_mh_execute_header, oslog, v4, "lastActiveProviderId changed from %{public}s to %{public}s", v5, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }
}

uint64_t sub_100065E38(uint64_t result)
{
  v2 = *(result + 56);
  v3 = *(v1 + 248);
  if (v3 == 3)
  {
    if (v2 == 3)
    {
      return result;
    }

    goto LABEL_5;
  }

  if (v2 == 3)
  {
LABEL_5:
    sub_1000040A8(&unk_100365610);
    sub_100009274(&qword_10035CF00, &unk_100365610);
    return Subject<>.send()();
  }

  v4 = *(result + 16);
  v5 = *(result + 24);
  v6 = *(result + 32);
  v7 = *(result + 40);
  v8 = *(result + 48);
  v9 = *(result + 57);
  if (*(v1 + 200))
  {
    if ((*(result + 8) & 1) == 0)
    {
      goto LABEL_5;
    }
  }

  else
  {
    if (*(result + 8))
    {
      goto LABEL_5;
    }

    result = *result;
    if (*(v1 + 192) != result)
    {
      goto LABEL_5;
    }
  }

  if (*(v1 + 216))
  {
    if ((v5 & 1) == 0)
    {
      goto LABEL_5;
    }
  }

  else if ((v5 & 1) != 0 || *(v1 + 208) != v4)
  {
    goto LABEL_5;
  }

  if (*(v1 + 232))
  {
    if ((v7 & 1) == 0)
    {
      goto LABEL_5;
    }
  }

  else if ((v7 & 1) != 0 || *(v1 + 224) != v6)
  {
    goto LABEL_5;
  }

  if (*(v1 + 240) != v8 || v3 != v2 || ((*(v1 + 249) ^ v9) & 1) != 0)
  {
    goto LABEL_5;
  }

  return result;
}

uint64_t sub_100065F7C(uint64_t a1)
{
  v2 = v1;
  v4 = *(a1 + 56);
  result = *(v1 + 192);
  v6 = *(v1 + 248);
  if (v6 == 3)
  {
    if (v4 == 3)
    {
      return result;
    }

    goto LABEL_5;
  }

  if (v4 != 3)
  {
    if (*(v1 + 200))
    {
      if ((*(a1 + 8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    else if ((*(a1 + 8) & 1) != 0 || result != *a1)
    {
      goto LABEL_5;
    }

    if (*(v1 + 216))
    {
      if ((*(a1 + 24) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    else if ((*(a1 + 24) & 1) != 0 || *(v1 + 208) != *(a1 + 16))
    {
      goto LABEL_5;
    }

    if (*(v1 + 232))
    {
      if ((*(a1 + 40) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    else if ((*(a1 + 40) & 1) != 0 || *(v1 + 224) != *(a1 + 32))
    {
      goto LABEL_5;
    }

    if (*(v1 + 240) == *(a1 + 48) && v6 == v4 && ((*(v1 + 249) ^ *(a1 + 57)) & 1) == 0)
    {
      return result;
    }
  }

LABEL_5:
  if (qword_100353AB0 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_10000F53C(v7, qword_100381E60);

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    *v10 = 136446466;
    sub_1000040A8(&qword_100358090);
    v11 = String.init<A>(describing:)();
    v13 = sub_10017C9E8(v11, v12, &v32);

    *(v10 + 4) = v13;
    *(v10 + 12) = 2082;
    v14 = String.init<A>(describing:)();
    v16 = sub_10017C9E8(v14, v15, &v32);

    *(v10 + 14) = v16;
    _os_log_impl(&_mh_execute_header, v8, v9, "currentRoadsideAssistance changed from %{public}s to %{public}s", v10, 0x16u);
    swift_arrayDestroy();
  }

  v25 = *(v2 + 248);
  if (v25 != 3)
  {
    v26 = *(v2 + 208);
    v27 = *(v2 + 216);
    v28 = *(v2 + 168);
    *(v2 + 168) = v25 != 0;
    sub_1000659DC(v28);
    v29 = *(v2 + 168);
    if (v29 != 2 && (v29 & 1) != 0)
    {
      v30 = *(v2 + 176);
      v31 = *(v2 + 184);
      *(v2 + 176) = v26;
      *(v2 + 184) = v27 & 1;
      sub_100065C08(v30, v31);
    }
  }

  return sub_100064F8C(v17, v18, v19, v20, v21, v22, v23, v24);
}

uint64_t sub_10006629C(uint64_t result)
{
  if (*(v1 + 250) != (result & 1))
  {
    v2 = result;
    if (qword_100353AB0 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_10000F53C(v3, qword_100381E60);

    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      *v6 = 136446466;
      if (v2)
      {
        v7 = 1702195828;
      }

      else
      {
        v7 = 0x65736C6166;
      }

      if (v2)
      {
        v8 = 0xE400000000000000;
      }

      else
      {
        v8 = 0xE500000000000000;
      }

      v9 = sub_10017C9E8(v7, v8, &v13);

      *(v6 + 4) = v9;
      *(v6 + 12) = 2082;
      if (*(v1 + 250))
      {
        v10 = 1702195828;
      }

      else
      {
        v10 = 0x65736C6166;
      }

      if (*(v1 + 250))
      {
        v11 = 0xE400000000000000;
      }

      else
      {
        v11 = 0xE500000000000000;
      }

      v12 = sub_10017C9E8(v10, v11, &v13);

      *(v6 + 14) = v12;
      _os_log_impl(&_mh_execute_header, v4, v5, "syncInProgress state changed from %{public}s to %{public}s", v6, 0x16u);
      swift_arrayDestroy();
    }

    return sub_100064F8C();
  }

  return result;
}

uint64_t sub_1000664B8()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10001D630(0, &qword_10035BA10);
  *v5 = static OS_dispatch_queue.main.getter();
  (*(v3 + 104))(v5, enum case for DispatchPredicate.onQueue(_:), v2);
  v6 = _dispatchPreconditionTest(_:)();
  result = (*(v3 + 8))(v5, v2);
  if (v6)
  {
    if (*(v1 + 320) == 1)
    {
      v8 = *(v1 + 368) != 0;
      v9 = *(v1 + 250);
      if (v9 == v8)
      {
        goto LABEL_9;
      }
    }

    else
    {
      LOBYTE(v8) = 1;
      if (*(v1 + 250))
      {
        v9 = 1;
LABEL_9:
        *(v1 + 250) = v8;
        return sub_10006629C(v9);
      }

      v9 = 0;
    }

    sub_1000040A8(&unk_100365610);
    sub_100009274(&qword_10035CF00, &unk_100365610);
    Subject<>.send()();
    goto LABEL_9;
  }

  __break(1u);
  return result;
}

uint64_t sub_10006668C()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v36 = *(v2 - 8);
  v37 = v2;
  __chkstk_darwin(v2);
  v34 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = type metadata accessor for DispatchQoS();
  v33 = *(v35 - 8);
  __chkstk_darwin(v35);
  v32 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = type metadata accessor for DispatchTime();
  v5 = *(v38 - 8);
  v6 = __chkstk_darwin(v38);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v31 - v9;
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  UUID.init()();
  v15 = UUID.uuidString.getter();
  v17 = v16;
  (*(v12 + 8))(v14, v11);
  if (qword_100353AB0 != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  sub_10000F53C(v18, qword_100381E60);

  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    aBlock[0] = v22;
    *v21 = 136446210;
    *(v21 + 4) = sub_10017C9E8(v15, v17, aBlock);
    _os_log_impl(&_mh_execute_header, v19, v20, "Artificially delaying sync for 2 seconds to let imagent to start up for token %{public}s", v21, 0xCu);
    sub_100008964(v22);
  }

  *(v1 + 360) = v15;
  *(v1 + 368) = v17;

  sub_1000664B8();
  sub_10001D630(0, &qword_10035BA10);
  v23 = static OS_dispatch_queue.main.getter();
  static DispatchTime.now()();
  + infix(_:_:)();
  v31 = *(v5 + 8);
  v31(v8, v38);
  v24 = swift_allocObject();
  swift_weakInit();
  v25 = swift_allocObject();
  v25[2] = v24;
  v25[3] = v15;
  v25[4] = v17;
  aBlock[4] = sub_10006B928;
  aBlock[5] = v25;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1001D2438;
  aBlock[3] = &unk_1003294E8;
  v26 = _Block_copy(aBlock);

  v27 = v32;
  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10006BB2C(&qword_10035BB40, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000040A8(&unk_100355D70);
  sub_100009274(&qword_10035BB50, &unk_100355D70);
  v28 = v34;
  v29 = v37;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
  _Block_release(v26);

  (*(v36 + 8))(v28, v29);
  (*(v33 + 8))(v27, v35);
  return (v31)(v10, v38);
}

uint64_t sub_100066C6C(uint64_t a1, uint64_t a2, unint64_t a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_100066CE0(a2, a3);
  }

  return result;
}

void sub_100066CE0(uint64_t a1, unint64_t a2)
{
  v5 = *(v2 + 368);
  if (v5 && (*(v2 + 360) == a1 ? (v6 = v5 == a2) : (v6 = 0), v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
  {
    v7 = v2;
    if (qword_100353AB0 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_10000F53C(v8, qword_100381E60);

    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v18 = v12;
      *v11 = 136446210;
      *(v11 + 4) = sub_10017C9E8(a1, a2, &v18);
      _os_log_impl(&_mh_execute_header, v9, v10, "Done delaying sync for 2 seconds for token %{public}s", v11, 0xCu);
      sub_100008964(v12);
    }

    *(v7 + 360) = 0;
    *(v7 + 368) = 0;

    sub_1000664B8();
  }

  else
  {
    if (qword_100353AB0 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    sub_10000F53C(v13, qword_100381E60);

    oslog = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(oslog, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v18 = v16;
      *v15 = 136446210;
      *(v15 + 4) = sub_10017C9E8(a1, a2, &v18);
      _os_log_impl(&_mh_execute_header, oslog, v14, "Delaying sync token %{public}s expired, ignoring", v15, 0xCu);
      sub_100008964(v16);
    }
  }
}

uint64_t sub_100066FB4(uint64_t a1, uint64_t a2, _OWORD *a3, char a4)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v7 = result;
    v8 = swift_allocObject();
    swift_beginAccess();
    swift_weakLoadStrong();
    swift_weakInit();

    sub_10006B4DC(v7, v8, a3, a4 & 1);
  }

  return result;
}

uint64_t sub_100067094(uint64_t a1, uint64_t a2, uint64_t *a3, char a4)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_100067108(a3, a4 & 1);
  }

  return result;
}

void sub_100067108(uint64_t *a1, char a2)
{
  v3 = v2;
  v5 = (v2 + 192);
  v6 = *(v2 + 248);
  if (v6 == 3)
  {
    v7 = *(a1 + 8);
    v8 = 0;
    if (a2)
    {
      v9 = 0;
      v10 = 0;
    }

    else
    {
      v10 = 0;
      v9 = v7 ^ 1;
    }

    goto LABEL_26;
  }

  v11 = *(v2 + 240);
  v12 = *a1;
  v10 = v11 == *a1;
  v7 = *(a1 + 8);
  if (v7)
  {
    if (v11 != v12)
    {
      v8 = 0;
      if ((a2 & 1) == 0)
      {
        v7 = 1;
        v9 = 0;
        v10 = 0;
        goto LABEL_26;
      }

      v9 = 0;
      v10 = 0;
      goto LABEL_24;
    }

    v9 = 0;
  }

  else
  {
    v9 = a2 ^ 1;
    if (v11 != v12)
    {
      goto LABEL_23;
    }
  }

  v13 = *(a1 + 24);
  if (*(v2 + 216))
  {
    if (v6 == 2)
    {
      v14 = 0;
    }

    else
    {
      v14 = *(a1 + 24);
    }

    if ((v14 & 1) == 0)
    {
      goto LABEL_23;
    }
  }

  else
  {
    if (*(v2 + 208) != a1[2])
    {
      v13 = 1;
    }

    if ((v13 & 1) != 0 || v6 == 2)
    {
LABEL_23:
      v8 = 0;
      if (a2)
      {
        goto LABEL_24;
      }

LABEL_26:
      v16 = a1 + 2;
      v15 = (a1 + 3);
      goto LABEL_27;
    }
  }

  v10 = 1;
  v8 = *(a1 + 8);
  if ((a2 & 1) == 0)
  {
    goto LABEL_26;
  }

LABEL_24:
  v15 = (v2 + 200);
  v16 = (v2 + 192);
LABEL_27:
  v17 = *v15;
  v18 = *v16;
  if (v7)
  {
    v19 = 2;
  }

  else
  {
    v19 = 0;
  }

  v20 = *a1;
  v21 = a1[2];
  v22 = *(a1 + 24);
  v23 = a1[4];
  v24 = *(a1 + 40);
  v25 = *(a1 + 41);
  v59 = v17;
  v58 = v22;
  v57 = v24;
  v56 = v25;
  *&v62 = v18;
  BYTE8(v62) = v17;
  *&v63 = v21;
  BYTE8(v63) = v22;
  *v64 = v23;
  v64[8] = v24;
  *&v64[16] = v20;
  v64[24] = v19;
  v64[25] = v25;
  v26 = *v5;
  v27 = *(v2 + 208);
  v28 = *(v2 + 224);
  *&v61[10] = *(v2 + 234);
  v60[1] = v27;
  *v61 = v28;
  v60[0] = v26;
  sub_100065E38(&v62);
  v29 = v63;
  *v5 = v62;
  *(v2 + 208) = v29;
  *(v2 + 224) = *v64;
  *(v2 + 234) = *&v64[10];
  sub_100065F7C(v60);
  if (!v10 || (v9 & 1) != 0)
  {
    if (qword_100353AB0 != -1)
    {
      swift_once();
    }

    v34 = type metadata accessor for Logger();
    sub_10000F53C(v34, qword_100381E60);
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&_mh_execute_header, v35, v36, "ConversationId changed or this is a new request for non-committed conversation, attempting to reset the questionnaire", v37, 2u);
    }

    v38 = v3[13];
    if (v38)
    {
      if (*(v38 + 32))
      {
        *(v38 + 40) = 1;
      }

      else
      {

        sub_1000040A8(&unk_100365610);
        sub_100009274(&qword_10035CF00, &unk_100365610);
        Subject<>.send()();
      }

      sub_1000BA564(0);
      if (*(v38 + 32))
      {
        *(v38 + 41) = 1;
      }

      else
      {
        sub_1000040A8(&unk_100365610);
        sub_100009274(&qword_10035CF00, &unk_100365610);
        Subject<>.send()();
      }
    }
  }

  else
  {
    if (qword_100353AB0 != -1)
    {
      swift_once();
    }

    v30 = type metadata accessor for Logger();
    sub_10000F53C(v30, qword_100381E60);
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&_mh_execute_header, v31, v32, "ConversationId is the same, keeping the current questionnaire state", v33, 2u);
    }
  }

  if (v24)
  {
    goto LABEL_57;
  }

  if (v23 == 8)
  {
    v39 = 1;
    if (!v3[13])
    {
      goto LABEL_59;
    }

LABEL_58:

    sub_1000BB030(v39);

    goto LABEL_59;
  }

  if (v23 != 1)
  {
LABEL_57:
    v39 = 2;
    if (!v3[13])
    {
      goto LABEL_59;
    }

    goto LABEL_58;
  }

  if (byte_100361588 == 2)
  {
    v39 = 1;
  }

  else
  {
    v39 = byte_100361588;
  }

  if (v3[13])
  {
    goto LABEL_58;
  }

LABEL_59:
  if (v8)
  {
    return;
  }

  v40 = v3[32];
  v41 = v3[33];

  sub_100063118(v40, v41);

  if (a2)
  {
    v42 = v3[46];
    if (v42)
    {
      v43 = v3[45];
      v44 = qword_100353AB0;

      if (v44 != -1)
      {
        swift_once();
      }

      v45 = type metadata accessor for Logger();
      sub_10000F53C(v45, qword_100381E60);

      oslog = Logger.logObject.getter();
      v46 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(oslog, v46))
      {
        v47 = swift_slowAlloc();
        v48 = swift_slowAlloc();
        v55 = v48;
        *v47 = 136446210;
        v49 = sub_10017C9E8(v43, v42, &v55);

        *(v47 + 4) = v49;
        _os_log_impl(&_mh_execute_header, oslog, v46, "Delay request token %{public}s is already pending, skipping this one", v47, 0xCu);
        sub_100008964(v48);

        return;
      }

      goto LABEL_80;
    }
  }

  if (v23 == 1)
  {
    v50 = v24;
  }

  else
  {
    v50 = 1;
  }

  if (v50 != 1)
  {
    if (qword_100353AB0 != -1)
    {
      swift_once();
    }

    v51 = type metadata accessor for Logger();
    sub_10000F53C(v51, qword_100381E60);
    oslog = Logger.logObject.getter();
    v52 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(oslog, v52))
    {
      v53 = swift_slowAlloc();
      *v53 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v52, "Roadside assistance started from emergency flow, skipping the delay", v53, 2u);
    }

LABEL_80:

    return;
  }

  sub_10006668C();
}

uint64_t sub_100067850()
{
  if (*(v0 + 248) == 3 || (*(v0 + 216) & 1) != 0)
  {
    return 0;
  }

  v1 = *(v0 + 208);
  swift_beginAccess();
  v2 = *(v0 + 112);
  if (v2)
  {
    v3 = *(v0 + 112);
    if (!*(v2 + 16))
    {
      goto LABEL_9;
    }

LABEL_7:
    v4 = sub_1001921C8(v1);
    if (v5)
    {
      v6 = *(v3[7] + 40 * v4 + 8);

      return v6;
    }

    goto LABEL_9;
  }

  v3 = sub_1002564B8(_swiftEmptyArrayStorage);
  if (v3[2])
  {
    goto LABEL_7;
  }

LABEL_9:

  return 0;
}

uint64_t sub_100067930()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_100067988();
  }

  return result;
}

void sub_100067988()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v60 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchTime();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v11);
  v16 = &v60 - v15;
  if (v0[248] == 3)
  {
    goto LABEL_50;
  }

  if (v0[250])
  {
    return;
  }

  if (v0[216])
  {
LABEL_50:
    if (*(v0 + 13))
    {
      goto LABEL_3;
    }

    return;
  }

  v17 = *(v0 + 13);
  if (!v0[248])
  {
    if (v17)
    {
      v66 = v14;
      v68 = v17;
      swift_beginAccess();
      v18 = *(v68 + 144);
      v19 = *(v18 + 16);
      if (v19)
      {
        LODWORD(v67) = *(v18 + v19 + 31);

        if (v67 != 4)
        {
          sub_1000B7E14();
LABEL_5:

          return;
        }

        v67 = v0;
        v20 = sub_1000BA248();
        if (v21)
        {
          v23 = v20;
          v24 = v21;
          if ((v22 & 0x100) != 0)
          {
            if (qword_100353AB0 != -1)
            {
              swift_once();
            }

            v39 = type metadata accessor for Logger();
            sub_10000F53C(v39, qword_100381E60);

            v40 = Logger.logObject.getter();
            v41 = static os_log_type_t.default.getter();

            if (os_log_type_enabled(v40, v41))
            {
              v42 = swift_slowAlloc();
              v43 = swift_slowAlloc();
              aBlock[0] = v43;
              *v42 = 136446210;

              v44 = sub_10017C9E8(v23, v24, aBlock);

              *(v42 + 4) = v44;
              _os_log_impl(&_mh_execute_header, v40, v41, "Send questionnaire for token %{public}s", v42, 0xCu);
              sub_100008964(v43);
            }

            sub_1000B8230(v23, v24);

            v45 = Logger.logObject.getter();
            v46 = static os_log_type_t.default.getter();
            if (os_log_type_enabled(v45, v46))
            {
              v47 = swift_slowAlloc();
              *v47 = 0;
              _os_log_impl(&_mh_execute_header, v45, v46, "Sending the start message with questionnaire out", v47, 2u);
            }

            sub_100069D90();
            goto LABEL_5;
          }

          if (qword_100353AB0 != -1)
          {
            swift_once();
          }

          v25 = type metadata accessor for Logger();
          sub_10000F53C(v25, qword_100381E60);

          v26 = Logger.logObject.getter();
          v27 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v26, v27))
          {
            v28 = swift_slowAlloc();
            v29 = swift_slowAlloc();
            aBlock[0] = v29;
            *v28 = 136446210;
            v30 = sub_10017C9E8(v23, v24, aBlock);

            *(v28 + 4) = v30;
            _os_log_impl(&_mh_execute_header, v26, v27, "Pending send token %{public}s", v28, 0xCu);
            sub_100008964(v29);
          }

          else
          {
          }
        }

        else
        {
          v35 = v67[272];
          Strong = swift_unknownObjectWeakLoadStrong();
          if (Strong)
          {
            v37 = *(Strong + 176);
            LODWORD(v65) = v35;
            v64 = v37;
            LOBYTE(v35) = v65;
            swift_unknownObjectRelease();
            v38 = &off_10033A0A0;
          }

          else
          {
            v64 = 0;
            v38 = 0;
          }

          v63 = sub_1000B8944(v35 & 1, v64, v38);
          v65 = v48;
          swift_unknownObjectRelease();
          if (qword_100353AB0 != -1)
          {
            swift_once();
          }

          v49 = type metadata accessor for Logger();
          sub_10000F53C(v49, qword_100381E60);

          v64 = Logger.logObject.getter();
          v50 = static os_log_type_t.default.getter();

          LODWORD(v62) = v50;
          v51 = v50;
          v52 = v64;
          if (os_log_type_enabled(v64, v51))
          {
            v53 = swift_slowAlloc();
            v61 = swift_slowAlloc();
            aBlock[0] = v61;
            *v53 = 136446210;
            v54 = sub_10017C9E8(v63, v65, aBlock);
            v60 = v53;
            *(v53 + 4) = v54;
            _os_log_impl(&_mh_execute_header, v64, v62, "Starting new questionnaire send attempt for token %{public}s", v53, 0xCu);
            sub_100008964(v61);
          }

          else
          {
          }

          sub_10001D630(0, &qword_10035BA10);
          v62 = static OS_dispatch_queue.main.getter();
          static DispatchTime.now()();
          + infix(_:_:)();
          v64 = *(v10 + 8);
          (v64)(v13, v66);
          v55 = swift_allocObject();
          swift_weakInit();
          v56 = swift_allocObject();
          v57 = v63;
          v56[2] = v55;
          v56[3] = v57;
          v56[4] = v65;
          aBlock[4] = sub_10006AFAC;
          aBlock[5] = v56;
          aBlock[0] = _NSConcreteStackBlock;
          aBlock[1] = 1107296256;
          aBlock[2] = sub_1001D2438;
          aBlock[3] = &unk_1003293D0;
          v67 = _Block_copy(aBlock);

          static DispatchQoS.unspecified.getter();
          aBlock[0] = _swiftEmptyArrayStorage;
          v65 = sub_10006BB2C(&qword_10035BB40, &type metadata accessor for DispatchWorkItemFlags);
          sub_1000040A8(&unk_100355D70);
          sub_100009274(&qword_10035BB50, &unk_100355D70);
          dispatch thunk of SetAlgebra.init<A>(_:)();
          v58 = v67;
          v59 = v62;
          OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
          _Block_release(v58);

          (*(v2 + 8))(v4, v1);
          (*(v6 + 8))(v8, v5);
          (v64)(v16, v66);
        }

        return;
      }

      __break(1u);
    }

    else if (qword_100353AB0 == -1)
    {
LABEL_22:
      v31 = type metadata accessor for Logger();
      sub_10000F53C(v31, qword_100381E60);
      v32 = Logger.logObject.getter();
      v33 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        *v34 = 0;
        _os_log_impl(&_mh_execute_header, v32, v33, "Sending start message without questionnaire out", v34, 2u);
      }

      sub_100069D90();
      return;
    }

    swift_once();
    goto LABEL_22;
  }

  if (v17)
  {
LABEL_3:

    sub_1000B7E14();

    goto LABEL_5;
  }
}

void sub_1000683E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v64 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v14 = Strong;
    v15 = swift_unknownObjectWeakLoadStrong();
    if (v15)
    {
      v64 = v12;
      v65 = v10;
      v67 = v9;
      v68 = v6;
      v69 = v5;
      v71 = *(v15 + 176);
      swift_unknownObjectRelease();
      if (qword_100353AB0 != -1)
      {
        swift_once();
      }

      v16 = type metadata accessor for Logger();
      sub_10000F53C(v16, qword_100381E60);

      v17 = Logger.logObject.getter();
      v18 = static os_log_type_t.default.getter();

      v19 = os_log_type_enabled(v17, v18);
      v72 = a2;
      v70 = v14;
      v66 = v8;
      if (v19)
      {
        v20 = swift_slowAlloc();
        v21 = swift_slowAlloc();
        v79[0] = v21;
        *v20 = 136446210;
        aBlock = v72;
        v74 = a3;

        sub_1000040A8(&qword_1003566A0);
        v22 = String.init<A>(describing:)();
        v24 = sub_10017C9E8(v22, v23, v79);

        *(v20 + 4) = v24;
        _os_log_impl(&_mh_execute_header, v17, v18, "Requesting bundle location for iso3166Alpha3CountryCode: %{public}s", v20, 0xCu);
        sub_100008964(v21);

        a2 = v72;
      }

      v25 = sub_100247574(a2, a3);
      v27 = v26;

      v28 = Logger.logObject.getter();
      v29 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        v31 = swift_slowAlloc();
        v79[0] = v31;
        *v30 = 136446210;
        aBlock = v25;
        v74 = v27;

        sub_1000040A8(&qword_1003566A0);
        v32 = String.init<A>(describing:)();
        v34 = sub_10017C9E8(v32, v33, v79);

        *(v30 + 4) = v34;
        _os_log_impl(&_mh_execute_header, v28, v29, "Loading questionnaire from bundleLocation: %{public}s", v30, 0xCu);
        sub_100008964(v31);
      }

      v35 = sub_1000B4CA8();
      v37 = v36;
      v39 = v38;

      sub_10001D630(0, &qword_10035BA10);
      v40 = static OS_dispatch_queue.main.getter();
      v41 = swift_allocObject();
      swift_beginAccess();
      swift_weakLoadStrong();
      swift_weakInit();

      v42 = swift_allocObject();
      v43 = v72;
      v42[2] = v41;
      v42[3] = v43;
      v42[4] = a3;
      v42[5] = v35;
      v42[6] = v37;
      v42[7] = v39;
      v77 = sub_10006BA14;
      v78 = v42;
      aBlock = _NSConcreteStackBlock;
      v74 = 1107296256;
      v75 = sub_1001D2438;
      v76 = &unk_100329588;
      v44 = _Block_copy(&aBlock);

      v45 = v64;
      static DispatchQoS.unspecified.getter();
      aBlock = _swiftEmptyArrayStorage;
      sub_10006BB2C(&qword_10035BB40, &type metadata accessor for DispatchWorkItemFlags);
      sub_1000040A8(&unk_100355D70);
      sub_100009274(&qword_10035BB50, &unk_100355D70);
      v46 = v66;
      v47 = v69;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v44);

      (*(v68 + 8))(v46, v47);
      (*(v65 + 8))(v45, v67);
    }

    else
    {
      if (qword_100353AB0 != -1)
      {
        swift_once();
      }

      v56 = type metadata accessor for Logger();
      sub_10000F53C(v56, qword_100381E60);

      v57 = Logger.logObject.getter();
      v58 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v57, v58))
      {
        v59 = swift_slowAlloc();
        v60 = swift_slowAlloc();
        v79[0] = v60;
        *v59 = 136446210;
        aBlock = a2;
        v74 = a3;

        sub_1000040A8(&qword_1003566A0);
        v61 = String.init<A>(describing:)();
        v63 = sub_10017C9E8(v61, v62, v79);

        *(v59 + 4) = v63;
        _os_log_impl(&_mh_execute_header, v57, v58, "Loading questionnaire request for iso3166Alpha3CountryCode: %{public}s has expired, no countryBundleLocationProvider available", v59, 0xCu);
        sub_100008964(v60);
      }
    }
  }

  else
  {
    if (qword_100353AB0 != -1)
    {
      swift_once();
    }

    v48 = type metadata accessor for Logger();
    sub_10000F53C(v48, qword_100381E60);

    v49 = Logger.logObject.getter();
    v50 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v79[0] = v52;
      *v51 = 136446210;
      aBlock = a2;
      v74 = a3;

      sub_1000040A8(&qword_1003566A0);
      v53 = String.init<A>(describing:)();
      v55 = sub_10017C9E8(v53, v54, v79);

      *(v51 + 4) = v55;
      _os_log_impl(&_mh_execute_header, v49, v50, "Loading questionnaire request for iso3166Alpha3CountryCode: %{public}s has expired", v51, 0xCu);
      sub_100008964(v52);
    }
  }
}

uint64_t sub_100068CE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_100068DB4(a2, a3, a4, a5, a6);
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1000664B8();
  }

  return result;
}

void sub_100068DB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v93 = a4;
  v94 = a5;
  v88 = a3;
  v9 = sub_1000040A8(&unk_10035CF50);
  __chkstk_darwin(v9 - 8);
  v89 = v85 - v10;
  v11 = sub_1000040A8(&qword_1003560A0);
  v91 = *(v11 - 8);
  v92 = v11;
  __chkstk_darwin(v11);
  v90 = v85 - v12;
  v13 = type metadata accessor for DispatchPredicate();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = (v85 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100353AB0 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  sub_10000F53C(v17, qword_100381E60);

  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();

  v20 = os_log_type_enabled(v18, v19);
  *&v95 = a1;
  if (v20)
  {
    v21 = swift_slowAlloc();
    v86 = v13;
    v22 = v21;
    v23 = swift_slowAlloc();
    v87 = v6;
    v24 = v23;
    v96[0] = v23;
    *v22 = 136446210;
    v98 = a1;
    v99 = a2;

    sub_1000040A8(&qword_1003566A0);
    v25 = String.init<A>(describing:)();
    v27 = sub_10017C9E8(v25, v26, v96);

    *(v22 + 4) = v27;
    _os_log_impl(&_mh_execute_header, v18, v19, "_onQuestionnaireLoadRequestDone for iso3166Alpha3CountryCode: %{public}s", v22, 0xCu);
    sub_100008964(v24);
    v6 = v87;

    v13 = v86;
  }

  sub_10001D630(0, &qword_10035BA10);
  *v16 = static OS_dispatch_queue.main.getter();
  (*(v14 + 104))(v16, enum case for DispatchPredicate.onQueue(_:), v13);
  v28 = _dispatchPreconditionTest(_:)();
  (*(v14 + 8))(v16, v13);
  if ((v28 & 1) == 0)
  {
    __break(1u);
LABEL_50:
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      v55 = sub_100233B1C(_swiftEmptyArrayStorage);
      goto LABEL_37;
    }

LABEL_36:
    v55 = &_swiftEmptySetSingleton;
LABEL_37:
    v94 = v28;
    swift_beginAccess();
    *(v6 + 36) = v55;

    v96[0] = *(v28 + 16);

    v56 = static OS_dispatch_queue.main.getter();
    v97 = v56;
    v88 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
    v57 = *(v88 - 8);
    v87 = *(v57 + 56);
    v93 = v57 + 56;
    v58 = v89;
    (v87)(v89, 1, 1, v88);
    *&v95 = sub_1000040A8(&unk_100365610);
    v86 = sub_100009274(&qword_10035CF60, &unk_100365610);
    v85[2] = sub_10006AFB8(&qword_100365620, &qword_10035BA10);
    v59 = v90;
    Publisher.receive<A>(on:options:)();
    sub_100008FA0(v58, &unk_10035CF50);

    v60 = swift_allocObject();
    swift_weakInit();
    v61 = swift_allocObject();
    *(v61 + 16) = sub_10006BA6C;
    *(v61 + 24) = v60;
    v85[1] = sub_100009274(&qword_10035CF70, &qword_1003560A0);
    v62 = v92;
    Publisher<>.sink(receiveValue:)();

    v63 = *(v91 + 8);
    v63(v59, v62);
    swift_beginAccess();
    AnyCancellable.store(in:)();
    swift_endAccess();

    v64 = *(v94 + 24);

    v96[0] = v64;
    v65 = static OS_dispatch_queue.main.getter();
    v97 = v65;
    (v87)(v58, 1, 1, v88);
    Publisher.receive<A>(on:options:)();
    sub_100008FA0(v58, &unk_10035CF50);

    v66 = swift_allocObject();
    swift_weakInit();
    v67 = swift_allocObject();
    *(v67 + 16) = sub_10006BAAC;
    *(v67 + 24) = v66;
    Publisher<>.sink(receiveValue:)();

    v63(v59, v62);
    swift_beginAccess();
    AnyCancellable.store(in:)();
    swift_endAccess();

    *(v6 + 13) = v94;

    sub_100009274(&qword_10035CF00, &unk_100365610);
    Subject<>.send()();
    sub_100064F8C();
    Subject<>.send()();

    return;
  }

  v30 = *(v6 + 39);
  v29 = *(v6 + 40);
  if (v29)
  {
    if (v29 == 1)
    {
      v31 = Logger.logObject.getter();
      v32 = static os_log_type_t.error.getter();
      if (!os_log_type_enabled(v31, v32))
      {
LABEL_31:

        return;
      }

      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&_mh_execute_header, v31, v32, "No questionnaire loading requests are in progress, ignoring", v33, 2u);
LABEL_30:

      goto LABEL_31;
    }

    if (a2 && (v30 == v95 && v29 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
    {
      goto LABEL_16;
    }

LABEL_28:
    sub_10006B99C(v30, v29);

    v31 = Logger.logObject.getter();
    v45 = static os_log_type_t.error.getter();
    sub_10006B9B0(v30, v29);
    if (os_log_type_enabled(v31, v45))
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v96[0] = v47;
      *v46 = 136446210;
      v98 = v30;
      v99 = v29;
      sub_1000040A8(&qword_1003566A0);
      v48 = String.init<A>(describing:)();
      v50 = sub_10017C9E8(v48, v49, v96);

      *(v46 + 4) = v50;
      _os_log_impl(&_mh_execute_header, v31, v45, "Received questionnaire loading result not for the expected country code %{public}s, ignoring", v46, 0xCu);
      sub_100008964(v47);

      goto LABEL_30;
    }

    sub_10006B9B0(v30, v29);
    return;
  }

  if (a2)
  {
    goto LABEL_28;
  }

LABEL_16:
  *(v6 + 312) = xmmword_100279380;
  v34 = *(v6 + 38);
  if (v34 != 1)
  {
    v51 = *(v6 + 37);
    v52 = *(v6 + 38);
    v95 = xmmword_100279380;
    sub_10006B99C(v51, v52);
    sub_10006B9B0(v30, v29);
    v53 = *(v6 + 37);
    v54 = *(v6 + 38);
    *(v6 + 296) = v95;
    sub_10006B9B0(v53, v54);
    sub_100063118(v51, v34);
    sub_10006B9B0(v51, v34);
    return;
  }

  v35 = *(v6 + 42);
  v36 = v94;
  if (v35 == 1)
  {
LABEL_18:
    v37 = *(v6 + 41);
    v38 = *(v6 + 42);
    *(v6 + 41) = v30;
    *(v6 + 42) = v29;
    *(v6 + 43) = v93;
    *(v6 + 44) = v36;

    sub_10006BA24(v37, v38);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v40 = &off_100333A18;
    }

    else
    {
      v40 = 0;
    }

    type metadata accessor for QuestionnaireState();
    swift_allocObject();

    sub_1000BA33C(v41, Strong, v40);
    v28 = v42;
    if (v6[248] != 3 && (v6[232] & 1) == 0)
    {
      v43 = *(v6 + 28);
      if (v43 == 8)
      {
        v44 = 1;
        goto LABEL_35;
      }

      if (v43 == 1)
      {
        if (byte_100361588 == 2)
        {
          v44 = 1;
        }

        else
        {
          v44 = byte_100361588;
        }

LABEL_35:
        sub_1000BB030(v44);
        if (!(_swiftEmptyArrayStorage >> 62))
        {
          goto LABEL_36;
        }

        goto LABEL_50;
      }
    }

    v44 = 2;
    goto LABEL_35;
  }

  v68 = *(v6 + 41);
  v69 = *(v6 + 43);
  v70 = *(v6 + 44);
  if (v70)
  {
    if (!v94)
    {
      goto LABEL_18;
    }

    if (v69 != v93 || v70 != v94)
    {
      v71 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v36 = v94;
      if ((v71 & 1) == 0)
      {
        goto LABEL_18;
      }
    }
  }

  else if (v94)
  {
    goto LABEL_18;
  }

  sub_10006BAB4(v68, v35);
  sub_10006B99C(v30, v29);

  v72 = Logger.logObject.getter();
  v73 = v68;
  v74 = static os_log_type_t.default.getter();
  sub_10006B9B0(v30, v29);

  if (os_log_type_enabled(v72, v74))
  {
    v75 = swift_slowAlloc();
    v94 = swift_slowAlloc();
    v96[0] = v94;
    *v75 = 136446466;
    v98 = v30;
    v99 = v29;

    sub_1000040A8(&qword_1003566A0);
    *&v95 = v69;
    v76 = String.init<A>(describing:)();
    LODWORD(v93) = v74;
    v78 = sub_10017C9E8(v76, v77, v96);
    v87 = v6;
    v79 = v78;

    *(v75 + 4) = v79;
    *(v75 + 12) = 2082;
    v98 = v73;
    v99 = v35;

    v80 = String.init<A>(describing:)();
    v82 = sub_10017C9E8(v80, v81, v96);
    v69 = v95;

    *(v75 + 14) = v82;
    v6 = v87;
    _os_log_impl(&_mh_execute_header, v72, v93, "Questionnaire for country code %{public}s, is loaded from the same source as the previous country code %{public}s, ignoring", v75, 0x16u);
    swift_arrayDestroy();
  }

  v83 = *(v6 + 41);
  v84 = *(v6 + 42);
  *(v6 + 41) = v30;
  *(v6 + 42) = v29;
  *(v6 + 43) = v69;
  *(v6 + 44) = v70;
  sub_10006BA24(v83, v84);
}

uint64_t sub_100069AEC()
{
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

uint64_t sub_100069BA8()
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_100064F8C();
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

uint64_t sub_100069C9C()
{
  if (*(v0 + 248) == 3 || (*(v0 + 216) & 1) != 0)
  {
    return 0;
  }

  v1 = *(v0 + 208);
  swift_beginAccess();
  v2 = *(v0 + 112);
  if (v2)
  {
    v3 = *(v0 + 112);
    if (!*(v2 + 16))
    {
      goto LABEL_12;
    }
  }

  else
  {
    v3 = sub_1002564B8(_swiftEmptyArrayStorage);
    if (!v3[2])
    {
LABEL_12:

LABEL_13:

      return 0;
    }
  }

  v4 = sub_1001921C8(v1);
  if ((v5 & 1) == 0)
  {
    goto LABEL_12;
  }

  v6 = v3[7] + 40 * v4;
  v7 = *(v6 + 25);
  v8 = *(v6 + 32);

  if ((v7 & 1) == 0)
  {
    goto LABEL_13;
  }

  result = v8;
  if (v8)
  {
    if (!*(v8 + 16))
    {
      goto LABEL_13;
    }
  }

  return result;
}

void sub_100069D90()
{
  v1 = v0;
  if (qword_100353AB0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000F53C(v2, qword_100381E60);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "_sendStartMessage", v5, 2u);
  }

  v7 = (v1 + 192);
  v6 = *(v1 + 192);
  v8 = *(v1 + 200);
  v52[0] = *(v1 + 201);
  *(v52 + 3) = *(v1 + 204);
  v9 = *(v1 + 208);
  v10 = *(v1 + 216);
  v51[0] = *(v1 + 217);
  *(v51 + 3) = *(v1 + 220);
  v11 = *(v1 + 224);
  v12 = *(v1 + 232);
  v13 = *(v1 + 233);
  *&v50[3] = *(v1 + 236);
  *v50 = v13;
  v14 = *(v1 + 240);
  v15 = *(v1 + 248);
  v16 = *(v1 + 249);
  v49 = v16;
  if (v15 == 3)
  {
    oslog = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(oslog, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      v19 = "currentRoadsideAssistance == nil, nothing to associate start message with";
LABEL_11:
      v20 = v17;
      v21 = oslog;
      v22 = v18;
      v23 = 2;
LABEL_12:
      _os_log_impl(&_mh_execute_header, v21, v20, v19, v22, v23);

      goto LABEL_13;
    }

    goto LABEL_13;
  }

  v43 = v12;
  v44 = v8;
  v45 = v6;
  oslog = Logger.logObject.getter();
  if (v10)
  {
    v17 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(oslog, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      v19 = "currentRoadsideAssistance.providerId == nil, nothing to associate start message with";
      goto LABEL_11;
    }

LABEL_13:

    return;
  }

  if (!v15)
  {
    v26 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(oslog, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 134349056;
      *(v27 + 4) = v14;
      _os_log_impl(&_mh_execute_header, oslog, v26, "Marking conversation id %{public}llu as committing", v27, 0xCu);
    }

    LOBYTE(v48) = 0;
    *&v55 = v45;
    BYTE8(v55) = v44 & 1;
    *&v56 = v9;
    BYTE8(v56) = 0;
    *v57 = v11;
    v57[8] = v43 & 1;
    *&v57[16] = v14;
    v57[24] = 1;
    v57[25] = v16 & 1;
    v28 = *v7;
    v29 = *(v1 + 208);
    v30 = *(v1 + 224);
    *(v54 + 10) = *(v1 + 234);
    v53[1] = v29;
    v54[0] = v30;
    v53[0] = v28;
    sub_100065E38(&v55);
    v31 = v56;
    *v7 = v55;
    *(v1 + 208) = v31;
    *(v1 + 224) = *v57;
    *(v1 + 234) = *&v57[10];
    sub_100065F7C(v53);
    if (*(v1 + 104))
    {
      goto LABEL_30;
    }

    goto LABEL_25;
  }

  if (v15 != 1)
  {
    v38 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(oslog, v38))
    {
      goto LABEL_13;
    }

    v39 = swift_slowAlloc();
    *v39 = 134349056;
    *(v39 + 4) = v14;
    v19 = "conversation id %{public}llu is already committed, it should not have been";
    v20 = v38;
    v21 = oslog;
    v22 = v39;
    v23 = 12;
    goto LABEL_12;
  }

  v24 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(oslog, v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 134349056;
    *(v25 + 4) = v14;
    _os_log_impl(&_mh_execute_header, oslog, v24, "Already in the process of committing conversation id %{public}llu, overriding it", v25, 0xCu);
  }

  if (!*(v1 + 104))
  {
LABEL_25:
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      osloga = swift_slowAlloc();
      v48 = osloga;
      *v34 = 136446210;
      v35 = String.init<A>(describing:)();
      v37 = sub_10017C9E8(v35, v36, &v48);

      *(v34 + 4) = v37;
      _os_log_impl(&_mh_execute_header, v32, v33, "Questionnaire state is not defined for: %{public}s", v34, 0xCu);
      sub_100008964(osloga);
    }

    else
    {
    }
  }

LABEL_30:

  PassthroughSubject.send(_:)();
  v40 = Logger.logObject.getter();
  v41 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    *v42 = 0;
    _os_log_impl(&_mh_execute_header, v40, v41, "Requested starting roadside assistance thread", v42, 2u);
  }
}

uint64_t sub_10006A3F4(uint64_t a1, uint64_t a2, unint64_t a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v6 = *(result + 104);

    if (v6)
    {
      sub_1000B90C8(a2, a3);
    }
  }

  return result;
}

uint64_t sub_10006A480(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (*(a1 + 8))
  {
    if (!*(a2 + 8))
    {
      return 0;
    }
  }

  else
  {
    if (*a1 != *a2)
    {
      v2 = 1;
    }

    if (v2)
    {
      return 0;
    }
  }

  v3 = *(a2 + 24);
  if (*(a1 + 24))
  {
    if (!*(a2 + 24))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 16) != *(a2 + 16))
    {
      v3 = 1;
    }

    if (v3)
    {
      return 0;
    }
  }

  v4 = *(a2 + 40);
  if (*(a1 + 40))
  {
    if (!*(a2 + 40))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 32) != *(a2 + 32))
    {
      v4 = 1;
    }

    if (v4)
    {
      return 0;
    }
  }

  if (*(a1 + 48) != *(a2 + 48) || *(a1 + 56) != *(a2 + 56))
  {
    return 0;
  }

  if (*(a1 + 57))
  {
    if (*(a2 + 57))
    {
      return 1;
    }
  }

  else if ((*(a2 + 57) & 1) == 0)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_10006A53C(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  if (*(a1 + 8) != *(a2 + 8) || *(a1 + 16) != *(a2 + 16))
  {
    v3 = a1;
    v4 = a2;
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();
    a2 = v4;
    v6 = v5;
    a1 = v3;
    if ((v6 & 1) == 0)
    {
      return 0;
    }
  }

  if ((*(a1 + 24) ^ *(a2 + 24)) & 1) != 0 || ((*(a1 + 25) ^ *(a2 + 25)))
  {
    return 0;
  }

  v8 = *(a1 + 32);
  v9 = *(a2 + 32);
  if (v8)
  {
    if (v9 && (sub_100202084(v8, v9) & 1) != 0)
    {
      return 1;
    }
  }

  else if (!v9)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_10006A5FC()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10006A65C(uint64_t a1)
{
  v2 = type metadata accessor for Locale();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v86 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000040A8(&qword_1003580A0);
  v6 = __chkstk_darwin(a1);
  v8 = &v86 - v7;
  if (!v6)
  {
    if (qword_100353A10 == -1)
    {
LABEL_5:
      v15 = type metadata accessor for Logger();
      sub_10000F53C(v15, qword_100381C80);
      v16 = Logger.logObject.getter();
      v17 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        *v18 = 0;
        _os_log_impl(&_mh_execute_header, v16, v17, "Roadside providers fetch failed", v18, 2u);
      }

      return 0;
    }

LABEL_64:
    swift_once();
    goto LABEL_5;
  }

  v9 = [v6 providers];
  v10 = sub_10001D630(0, &qword_10035CF30);
  v11 = sub_10001D630(0, &qword_1003580A8);
  sub_10006AFB8(&qword_1003580B0, &qword_10035CF30);
  v95 = v10;
  v100 = v11;
  v12 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  static Locale.autoupdatingCurrent.getter();
  Locale.region.getter();
  (*(v3 + 8))(v5, v2);
  v13 = type metadata accessor for Locale.Region();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v8, 1, v13) == 1)
  {
    sub_100008FA0(v8, &qword_1003580A0);
    countAndFlagsBits = 0;
    object = 0;
  }

  else
  {
    Locale.Region.identifier.getter();
    (*(v14 + 8))(v8, v13);
    v20 = String.lowercased()();
    countAndFlagsBits = v20._countAndFlagsBits;
    object = v20._object;
  }

  v98 = sub_1002564B8(_swiftEmptyArrayStorage);
  if ((v12 & 0xC000000000000001) != 0)
  {
    v21 = __CocoaDictionary.makeIterator()();
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v12 = v21 | 0x8000000000000000;
  }

  else
  {
    v25 = -1 << *(v12 + 32);
    v22 = v12 + 64;
    v23 = ~v25;
    v26 = -v25;
    if (v26 < 64)
    {
      v27 = ~(-1 << v26);
    }

    else
    {
      v27 = -1;
    }

    v24 = v27 & *(v12 + 64);
  }

  v28 = 0;
  v91 = v23;
  v29 = (v23 + 64) >> 6;
  v99 = kCFAllocatorDefault;
  p_ivar_base_size = &ConnectionAssistantRenderer.RenderPipelines.ivar_base_size;
  while (2)
  {
    v31 = v28;
    if ((v12 & 0x8000000000000000) != 0)
    {
      while (1)
      {
        v38 = __CocoaDictionary.Iterator.next()();
        if (!v38)
        {
          goto LABEL_61;
        }

        v40 = v39;
        v103 = v38;
        swift_dynamicCast();
        v36 = v104;
        v103 = v40;
        swift_dynamicCast();
        v37 = v104;
        v28 = v31;
        v102 = v24;
        if (!v36)
        {
          goto LABEL_61;
        }

LABEL_25:

        if ([v37 *(p_ivar_base_size + 452)])
        {
          break;
        }

        v31 = v28;
        v24 = v102;
        if ((v12 & 0x8000000000000000) == 0)
        {
          goto LABEL_17;
        }
      }

      v41 = [v37 associatedPhoneNumbers];
      v97 = v37;
      if (v41)
      {
        v42 = v41;
        v43 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        v44 = v43;
        v45 = *(v43 + 16);
        if (v45)
        {
          v46 = 0;
          v47 = v43 + 40;
          v92 = *(v43 + 16);
          v88 = v45 - 1;
          v89 = v43 + 40;
          v90 = _swiftEmptyArrayStorage;
          v93 = v43;
          v94 = v12;
LABEL_31:
          v48 = v47 + 16 * v46;
          v49 = v46;
          while (v49 < *(v44 + 16))
          {

            v50 = String._bridgeToObjectiveC()();
            if (object)
            {
              v51 = String._bridgeToObjectiveC()();
            }

            else
            {
              v51 = 0;
            }

            v52 = CFPhoneNumberCreate();

            String = CFPhoneNumberCreateString();
            if (String)
            {
              v54 = String;
              v55 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v86 = v56;
              v87 = v55;

              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v12 = v94;
              p_ivar_base_size = (&ConnectionAssistantRenderer.RenderPipelines + 8);
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                v90 = sub_10017B338(0, *(v90 + 2) + 1, 1, v90);
              }

              v59 = *(v90 + 2);
              v58 = *(v90 + 3);
              v44 = v93;
              if (v59 >= v58 >> 1)
              {
                v63 = v93;
                v90 = sub_10017B338((v58 > 1), v59 + 1, 1, v90);
                v44 = v63;
              }

              v46 = v49 + 1;
              v60 = v90;
              *(v90 + 2) = v59 + 1;
              v61 = &v60[16 * v59];
              v62 = v86;
              *(v61 + 4) = v87;
              *(v61 + 5) = v62;
              v47 = v89;
              v37 = v97;
              if (v88 != v49)
              {
                goto LABEL_31;
              }

              goto LABEL_47;
            }

            ++v49;

            v48 += 16;
            v44 = v93;
            v12 = v94;
            p_ivar_base_size = (&ConnectionAssistantRenderer.RenderPipelines + 8);
            v37 = v97;
            if (v92 == v49)
            {
              goto LABEL_47;
            }
          }

LABEL_63:
          __break(1u);
          goto LABEL_64;
        }

        v90 = _swiftEmptyArrayStorage;
LABEL_47:
      }

      else
      {
        v90 = 0;
      }

      v64 = [v37 providerId];
      if ((v64 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else
      {
        v65 = v64;
        v66 = [v37 providerName];
        v89 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v92 = v67;

        LODWORD(v88) = [v37 supportsPayPerUse];
        LODWORD(v87) = [v37 isCarrierProvider];
        v68 = v98;
        v69 = swift_isUniquelyReferenced_nonNull_native();
        v104 = v68;
        v93 = v65;
        v71 = sub_1001921C8(v65);
        v72 = v68[2];
        v73 = (v70 & 1) == 0;
        v74 = v72 + v73;
        if (!__OFADD__(v72, v73))
        {
          v75 = v70;
          if (v68[3] >= v74)
          {
            if ((v69 & 1) == 0)
            {
              sub_100091768();
            }

            v76 = v93;
          }

          else
          {
            sub_10008EF18(v74, v69);
            v76 = v93;
            v77 = sub_1001921C8(v93);
            if ((v75 & 1) != (v78 & 1))
            {
LABEL_68:
              result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
              __break(1u);
              return result;
            }

            v71 = v77;
          }

          v98 = v104;
          if (v75)
          {
            v79 = v104[7] + 40 * v71;
            v80 = v89;
            *v79 = v76;
            *(v79 + 8) = v80;
            *(v79 + 16) = v92;
            *(v79 + 24) = v88;
            *(v79 + 25) = v87;
            *(v79 + 32) = v90;

LABEL_60:
            v24 = v102;
            continue;
          }

          v104[(v71 >> 6) + 8] |= 1 << v71;
          *(v98[6] + 8 * v71) = v76;
          v81 = v98[7] + 40 * v71;
          v82 = v89;
          *v81 = v76;
          *(v81 + 8) = v82;
          *(v81 + 16) = v92;
          *(v81 + 24) = v88;
          *(v81 + 25) = v87;
          *(v81 + 32) = v90;

          v83 = v98[2];
          v84 = __OFADD__(v83, 1);
          v85 = v83 + 1;
          if (!v84)
          {
            v98[2] = v85;
            goto LABEL_60;
          }

LABEL_67:
          __break(1u);
          goto LABEL_68;
        }
      }

      __break(1u);
      goto LABEL_67;
    }

    break;
  }

LABEL_17:
  v32 = v31;
  v33 = v24;
  v28 = v31;
  if (!v24)
  {
    while (1)
    {
      v28 = v32 + 1;
      if (__OFADD__(v32, 1))
      {
        break;
      }

      if (v28 >= v29)
      {
        goto LABEL_61;
      }

      v33 = *(v22 + 8 * v28);
      ++v32;
      if (v33)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_63;
  }

LABEL_21:
  v102 = (v33 - 1) & v33;
  v34 = (v28 << 9) | (8 * __clz(__rbit64(v33)));
  v35 = *(*(v12 + 56) + v34);
  v36 = *(*(v12 + 48) + v34);
  v37 = v35;
  if (v36)
  {
    goto LABEL_25;
  }

LABEL_61:
  sub_10006AFFC();

  return v98;
}

uint64_t sub_10006AF78(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10006AFB8(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_10001D630(255, a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10006B004()
{

  return _swift_deallocObject(v0, 67, 7);
}

uint64_t sub_10006B04C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v8 = type metadata accessor for DispatchPredicate();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = (&v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = swift_allocObject();
  *(v12 + 16) = a2;
  v13 = *(a3 + 16);
  *(v12 + 24) = *a3;
  *(v12 + 40) = v13;
  *(v12 + 50) = *(a3 + 26);
  *(v12 + 66) = a4;
  sub_10001D630(0, &qword_10035BA10);

  *v11 = static OS_dispatch_queue.main.getter();
  (*(v9 + 104))(v11, enum case for DispatchPredicate.onQueue(_:), v8);
  v14 = _dispatchPreconditionTest(_:)();
  (*(v9 + 8))(v11, v8);
  if ((v14 & 1) == 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  if (*(a1 + 160))
  {
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {

      sub_100067108(a3, a4 & 1);
    }
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    a3 = *(a1 + 88);
    if (qword_100353AB0 == -1)
    {
LABEL_7:
      v15 = type metadata accessor for Logger();
      sub_10000F53C(v15, qword_100381E60);
      v16 = Logger.logObject.getter();
      v17 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        *v18 = 0;
        _os_log_impl(&_mh_execute_header, v16, v17, "Fetching my phone numbers", v18, 2u);
      }

      ObjectType = swift_getObjectType();
      v20 = swift_allocObject();
      swift_weakInit();
      v21 = swift_allocObject();
      v21[2] = v20;
      v21[3] = sub_10006B90C;
      v21[4] = v12;
      v22 = *(a3 + 8);

      v22(sub_10006B91C, v21, ObjectType, a3);

      swift_unknownObjectRelease();
    }

LABEL_14:
    swift_once();
    goto LABEL_7;
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_100067108(a3, a4 & 1);
  }
}

uint64_t sub_10006B3FC(uint64_t a1, uint64_t a2, char a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v6 = result;
    v7 = swift_allocObject();
    swift_beginAccess();
    swift_weakLoadStrong();
    swift_weakInit();

    sub_10006B04C(v6, v7, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_10006B4DC(uint64_t a1, uint64_t a2, _OWORD *a3, char a4)
{
  v7 = type metadata accessor for DispatchPredicate();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = (&v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = swift_allocObject();
  *(v11 + 16) = a2;
  v12 = a3[1];
  *(v11 + 24) = *a3;
  *(v11 + 40) = v12;
  *(v11 + 50) = *(a3 + 26);
  *(v11 + 66) = a4;
  sub_10001D630(0, &qword_10035BA10);

  *v10 = static OS_dispatch_queue.main.getter();
  (*(v8 + 104))(v10, enum case for DispatchPredicate.onQueue(_:), v7);
  v13 = _dispatchPreconditionTest(_:)();
  (*(v8 + 8))(v10, v7);
  if ((v13 & 1) == 0)
  {
    __break(1u);
LABEL_10:
    swift_once();
    goto LABEL_4;
  }

  if (!swift_unknownObjectWeakLoadStrong())
  {
    sub_10006B3FC(a2, a3, a4 & 1);
  }

  if (qword_100353AB0 != -1)
  {
    goto LABEL_10;
  }

LABEL_4:
  v14 = type metadata accessor for Logger();
  sub_10000F53C(v14, qword_100381E60);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&_mh_execute_header, v15, v16, "Fetching resumable roadside provider", v17, 2u);
  }

  v18 = swift_allocObject();
  swift_weakInit();
  v19 = swift_allocObject();
  v19[2] = v18;
  v19[3] = sub_10006B7D8;
  v19[4] = v11;

  sub_100249B18(sub_10006B804, v19);

  swift_unknownObjectRelease();
}

uint64_t sub_10006B814(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_10006B858(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000040A8(&qword_1003580C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10006B8C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_10006B934(void (*a1)(void), uint64_t a2)
{

  a1(*(v2 + 32));

  return _swift_deallocObject(v2, a2, 7);
}

uint64_t sub_10006B99C(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t sub_10006B9B0(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t sub_10006B9C4()
{

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_10006BA24(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t sub_10006BA74()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10006BAB4(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t sub_10006BB2C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10006BB84(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
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

uint64_t sub_10006BBE0(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_10006BC44(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
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

uint64_t sub_10006BCA0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for EmergencyModel.Conversation(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 9))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 8);
  v4 = v3 >= 3;
  v5 = v3 - 3;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for EmergencyModel.Conversation(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 2;
    }
  }

  return result;
}

unint64_t sub_10006BD9C()
{
  result = qword_1003580E0;
  if (!qword_1003580E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003580E0);
  }

  return result;
}

void sub_10006BE34(uint64_t a1)
{
  v3 = sub_1000040A8(&qword_100358318);
  __chkstk_darwin(v3 - 8);
  v5 = &v29[-v4 - 8];
  v6 = type metadata accessor for Data(0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v29[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  __chkstk_darwin(v10);
  v12 = &v29[-v11 - 8];
  if (!*(a1 + 8) || *a1 != 5)
  {
    v13 = OBJC_IVAR____TtC8SOSBuddy21AnalyticsStartMessage_data;
    swift_beginAccess();
    sub_10006DB08(v1 + v13, v5);
    if ((*(v7 + 48))(v5, 1, v6) == 1)
    {
      sub_100008FA0(v5, &qword_100358318);
    }

    else
    {
      sub_10006DB78(v5, v12);
      if (qword_100353A08 != -1)
      {
        swift_once();
      }

      v14 = type metadata accessor for Logger();
      sub_10000F53C(v14, qword_100381C68);
      sub_10006DFA8(v12, v9);
      v15 = Logger.logObject.getter();
      v16 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        v18 = swift_slowAlloc();
        *v17 = 136446210;
        v19 = &v9[*(v6 + 20)];
        v20 = *(v19 + 1);
        v21 = *(v19 + 3);
        v37 = *(v19 + 2);
        v38 = v21;
        v22 = *(v19 + 1);
        v36[0] = *v19;
        v36[1] = v22;
        v23 = *(v19 + 3);
        v32 = v37;
        v33 = v23;
        v35 = v18;
        v39 = *(v19 + 32);
        v34 = *(v19 + 32);
        v30 = v36[0];
        v31 = v20;
        sub_10006E00C(v36, v29);
        v24 = String.init<A>(describing:)();
        v26 = v25;
        sub_10006DEDC(v9);
        v27 = sub_10017C9E8(v24, v26, &v35);

        *(v17 + 4) = v27;
        _os_log_impl(&_mh_execute_header, v15, v16, "Start message %{public}s was not committed, considering it not ACKed and dropped.", v17, 0xCu);
        sub_100008964(v18);
      }

      else
      {

        sub_10006DEDC(v9);
      }

      sub_10006CBE4();
      sub_10006DEDC(v12);
    }
  }
}

uint64_t sub_10006C18C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1000040A8(&qword_100358318);
  __chkstk_darwin(v4 - 8);
  v6 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v41 - v8;
  v10 = OBJC_IVAR____TtC8SOSBuddy21AnalyticsStartMessage_data;
  swift_beginAccess();
  sub_10006DB08(v1 + v10, v9);
  v11 = type metadata accessor for Data(0);
  v12 = *(v11 - 1);
  v13 = (*(v12 + 48))(v9, 1, v11);
  sub_100008FA0(v9, &qword_100358318);
  if (v13 == 1)
  {
    if (qword_100353A08 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_10000F53C(v14, qword_100381C68);
    sub_10006E00C(a1, &v45);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();
    sub_10006E068(a1);
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v41 = v17;
      v42 = swift_slowAlloc();
      v44 = v42;
      *v17 = 136446210;
      v18 = *(a1 + 48);
      v47 = *(a1 + 32);
      v48 = v18;
      v49 = *(a1 + 64);
      v19 = *(a1 + 16);
      v45 = *a1;
      v46 = v19;
      sub_10006E00C(a1, v43);
      v20 = String.init<A>(describing:)();
      v22 = v16;
      v23 = v10;
      v24 = sub_10017C9E8(v20, v21, &v44);

      v25 = v41;
      *(v41 + 1) = v24;
      v10 = v23;
      v26 = "Tracking start message for %{public}s";
LABEL_10:
      _os_log_impl(&_mh_execute_header, v15, v22, v26, v25, 0xCu);
      sub_100008964(v42);
    }
  }

  else
  {
    if (qword_100353A08 != -1)
    {
      swift_once();
    }

    v27 = type metadata accessor for Logger();
    sub_10000F53C(v27, qword_100381C68);
    sub_10006E00C(a1, &v45);
    v15 = Logger.logObject.getter();
    v28 = static os_log_type_t.default.getter();
    sub_10006E068(a1);
    if (os_log_type_enabled(v15, v28))
    {
      v29 = swift_slowAlloc();
      v41 = v29;
      v42 = swift_slowAlloc();
      v44 = v42;
      *v29 = 136446210;
      v30 = *(a1 + 48);
      v47 = *(a1 + 32);
      v48 = v30;
      v49 = *(a1 + 64);
      v31 = *(a1 + 16);
      v45 = *a1;
      v46 = v31;
      sub_10006E00C(a1, v43);
      v32 = String.init<A>(describing:)();
      v22 = v28;
      v34 = v10;
      v35 = sub_10017C9E8(v32, v33, &v44);

      v25 = v41;
      *(v41 + 1) = v35;
      v10 = v34;
      v26 = "Resetting tracking start message for %{public}s";
      goto LABEL_10;
    }
  }

  static DispatchTime.now()();
  v36 = &v6[v11[5]];
  v37 = *(a1 + 48);
  *(v36 + 2) = *(a1 + 32);
  *(v36 + 3) = v37;
  *(v36 + 32) = *(a1 + 64);
  v38 = *(a1 + 16);
  *v36 = *a1;
  *(v36 + 1) = v38;
  v39 = &v6[v11[6]];
  *(v39 + 4) = 0;
  *v39 = 0u;
  *(v39 + 1) = 0u;
  v39[40] = 1;
  v6[v11[7]] = 0;
  (*(v12 + 56))(v6, 0, 1, v11);
  swift_beginAccess();
  sub_10006E00C(a1, &v45);
  sub_10006DF38(v6, v2 + v10);
  return swift_endAccess();
}

uint64_t sub_10006C634(uint64_t a1)
{
  v3 = sub_1000040A8(&qword_100358318);
  __chkstk_darwin(v3 - 8);
  v5 = &v51[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v8 = &v51[-v7];
  v9 = type metadata accessor for Data(0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v51[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v13);
  v15 = &v51[-v14];
  v16 = &v1[OBJC_IVAR____TtC8SOSBuddy21AnalyticsStartMessage_data];
  swift_beginAccess();
  v55 = v16;
  sub_10006DB08(v16, v8);
  v17 = *(v10 + 48);
  if (v17(v8, 1, v9) == 1)
  {
    return sub_100008FA0(v8, &qword_100358318);
  }

  v54 = v5;
  sub_10006DB78(v8, v15);
  v19 = &v15[*(v9 + 20)];
  v20 = *v19;
  v21 = v19[65];
  v22 = *(a1 + 40);
  if (v22 < 0)
  {
    if ((v21 & 1) == 0 || *a1 != v20)
    {
      goto LABEL_15;
    }
  }

  else if ((v21 & 1) != 0 || *(a1 + 8) != v20)
  {
LABEL_15:
    if (qword_100353A08 != -1)
    {
      swift_once();
    }

    v34 = type metadata accessor for Logger();
    sub_10000F53C(v34, qword_100381C68);
    sub_10006DFA8(v15, v12);
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v53 = v38;
      *v37 = 136446466;
      v39 = &v12[*(v9 + 20)];
      v40 = *v39;
      LOBYTE(v39) = v39[65];
      v56 = v38;
      v57 = v40;
      v58 = v39 & 1;
      v41 = String.init<A>(describing:)();
      v52 = v36;
      v42 = v15;
      v44 = v43;
      sub_10006DEDC(v12);
      v45 = sub_10017C9E8(v41, v44, &v56);
      v15 = v42;

      *(v37 + 4) = v45;
      *(v37 + 12) = 2080;
      v57 = *(a1 + 8 * ((v22 & 0x8000) == 0));
      v58 = v22 < 0;
      v46 = String.init<A>(describing:)();
      v48 = sub_10017C9E8(v46, v47, &v56);

      *(v37 + 14) = v48;
      _os_log_impl(&_mh_execute_header, v35, v52, "Conversation for the pending start message %{public}s does not match the current one %s, resetting.", v37, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      sub_10006DEDC(v12);
    }

    v49 = v54;
    (*(v10 + 56))(v54, 1, 1, v9);
    v50 = v55;
    swift_beginAccess();
    sub_10006DF38(v49, v50);
    swift_endAccess();
    return sub_10006DEDC(v15);
  }

  v54 = v1;
  if (qword_100353A08 != -1)
  {
    swift_once();
  }

  v23 = type metadata accessor for Logger();
  sub_10000F53C(v23, qword_100381C68);
  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v53 = v27;
    *v26 = 136446210;
    v28 = *(a1 + 8 * ((v22 & 0x8000) == 0));
    v56 = v27;
    v57 = v28;
    v58 = v22 < 0;
    v29 = String.init<A>(describing:)();
    v31 = v15;
    v32 = sub_10017C9E8(v29, v30, &v56);

    *(v26 + 4) = v32;
    v15 = v31;
    _os_log_impl(&_mh_execute_header, v24, v25, "Conversation %{public}s is committed, considering start message ACKed.", v26, 0xCu);
    sub_100008964(v53);
  }

  v33 = v55;
  result = v17(v55, 1, v9);
  if (result != 1)
  {
    *(v33 + *(v9 + 28)) = 1;
    sub_10006CBE4();
    return sub_10006DEDC(v15);
  }

  __break(1u);
  return result;
}

uint64_t sub_10006CBE4()
{
  v1 = sub_1000040A8(&qword_100358318);
  __chkstk_darwin(v1 - 8);
  v3 = &v18[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v4);
  v6 = &v18[-v5];
  v7 = type metadata accessor for Data(0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v18[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = OBJC_IVAR____TtC8SOSBuddy21AnalyticsStartMessage_data;
  swift_beginAccess();
  sub_10006DB08(v0 + v11, v6);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    return sub_100008FA0(v6, &qword_100358318);
  }

  sub_10006DB78(v6, v10);
  v13 = *(v0 + OBJC_IVAR____TtC8SOSBuddy21AnalyticsStartMessage_currentTarget + 32);
  v14 = *(v0 + OBJC_IVAR____TtC8SOSBuddy21AnalyticsStartMessage_currentTarget + 40);
  v15 = &v10[*(v7 + 24)];
  v16 = *(v0 + OBJC_IVAR____TtC8SOSBuddy21AnalyticsStartMessage_currentTarget + 16);
  *v15 = *(v0 + OBJC_IVAR____TtC8SOSBuddy21AnalyticsStartMessage_currentTarget);
  *(v15 + 1) = v16;
  *(v15 + 4) = v13;
  v15[40] = v14;
  v17 = sub_10006CE30();
  sub_10017EEA8(5, v17);

  sub_10006DEDC(v10);
  (*(v8 + 56))(v3, 1, 1, v7);
  swift_beginAccess();
  sub_10006DF38(v3, v0 + v11);
  return swift_endAccess();
}

unint64_t sub_10006CE30()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchTime();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v65 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000040A8(&qword_100358320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100279160;
  *(inited + 32) = 0x737574617473;
  *(inited + 40) = 0xE600000000000000;
  v7 = type metadata accessor for Data(0);
  v8 = *(v1 + v7[7]);
  *(inited + 48) = Bool._bridgeToObjectiveC()();
  v9 = sub_10025663C(inited);
  swift_setDeallocating();
  sub_100008FA0(inited + 32, &qword_100358328);
  if (v8 == 1)
  {
    static DispatchTime.now()();
    v10 = DispatchTime.uptimeNanoseconds.getter();
    if (DispatchTime.uptimeNanoseconds.getter() < v10)
    {
      v11 = DispatchTime.uptimeNanoseconds.getter();
      v12 = DispatchTime.uptimeNanoseconds.getter();
      v13 = *(v3 + 8);
      v3 += 8;
      v13(v5, v2);
      if (v11 >= v12)
      {
LABEL_6:
        isa = UInt64._bridgeToObjectiveC()().super.super.isa;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v73 = v9;
        sub_1001894D4(isa, 0xD000000000000010, 0x8000000100299270, isUniquelyReferenced_nonNull_native);
        v9 = v73;
        goto LABEL_7;
      }

      __break(1u);
    }

    (*(v3 + 8))(v5, v2);
    goto LABEL_6;
  }

LABEL_7:
  if ((*(v1 + v7[6] + 40) & 1) == 0)
  {
    v16 = Int64._bridgeToObjectiveC()().super.super.isa;
    v17 = swift_isUniquelyReferenced_nonNull_native();
    v73 = v9;
    sub_1001894D4(v16, 0x4449746173, 0xE500000000000000, v17);
    v9 = v73;
  }

  sub_10006DBDC();
  if ((v18 & 1) == 0)
  {
    v19 = Int._bridgeToObjectiveC()().super.super.isa;
    v20 = swift_isUniquelyReferenced_nonNull_native();
    v73 = v9;
    sub_1001894D4(v19, 0x4C79726574746162, 0xEC0000006C657665, v20);
    v9 = v73;
  }

  v21 = v1 + v7[5];
  v22 = *(v21 + 16);
  v23 = *(v21 + 24);
  v72 = *(v21 + 25);
  v24 = *(v21 + 32);
  if ((*(v21 + 65) & 1) == 0)
  {
    v70 = v22;
    v71 = v24;
    v33 = *(v21 + 40);
    v34 = *(v21 + 56);
    v68 = *(v21 + 64);
    v69 = v33;
    v35 = *(v21 + 39);
    v65[2] = *(v21 + 37);
    v65[3] = v35;
    v36 = *(v21 + 33);
    v37 = *(v21 + 23);
    v38 = *(v21 + 21);
    v39 = *(v21 + 17);
    v66 = v36;
    v67 = v39;
    sub_10001D630(0, &qword_100358330);
    v40 = NSString.init(stringLiteral:)();
    v41 = swift_isUniquelyReferenced_nonNull_native();
    v73 = v9;
    sub_1001894D4(v40, 0x5465636976726573, 0xEB00000000657079, v41);
    v42 = v73;
    v43 = Bool._bridgeToObjectiveC()().super.super.isa;
    v44 = swift_isUniquelyReferenced_nonNull_native();
    v73 = v42;
    sub_1001894D4(v43, 0x725079654B646545, 0xED0000746E657365, v44);
    v30 = v73;
    if (v34)
    {
      v45 = String._bridgeToObjectiveC()();
      v46 = swift_isUniquelyReferenced_nonNull_native();
      v73 = v30;
      sub_1001894D4(v45, 0x65707954676D65, 0xE700000000000000, v46);
      v30 = v73;
    }

    v47 = v38 | (v37 << 16);
    if (v23 <= 1)
    {
      v49 = v68;
      v48 = v69;
    }

    else
    {
      v49 = v68;
      v48 = v69;
      if (v23 != 2 && v23 != 3)
      {
        v50 = v70;
        goto LABEL_26;
      }
    }

    v50 = v70;
    v51 = String._bridgeToObjectiveC()();

    v52 = swift_isUniquelyReferenced_nonNull_native();
    v73 = v30;
    sub_1001894D4(v51, 0x6767697254777473, 0xEA00000000007265, v52);
    v30 = v73;
LABEL_26:
    v53 = v67 << 8;
    if ((v72 & 1) == 0)
    {
      v54 = String._bridgeToObjectiveC()();
      v55 = swift_isUniquelyReferenced_nonNull_native();
      v73 = v30;
      sub_1001894D4(v54, 0x6974696E49777473, 0xEE00794264657461, v55);
      v30 = v73;
    }

    v56 = v53 | (v47 << 40);
    if (v49 != 2 && (v49 & 1) != 0)
    {
      sub_10001D630(0, &qword_10035CF30);
      v57 = NSNumber.init(BOOLeanLiteral:)(1).super.super.isa;
      v58 = swift_isUniquelyReferenced_nonNull_native();
      v73 = v30;
      sub_1001894D4(v57, 0xD000000000000014, 0x8000000100299250, v58);
      v30 = v73;
    }

    sub_10006DD6C(v56 | v50);
    if (v59)
    {
      v60 = String._bridgeToObjectiveC()();

      v61 = swift_isUniquelyReferenced_nonNull_native();
      v73 = v30;
      sub_1001894D4(v60, 0xD000000000000011, 0x8000000100299230, v61);
      v30 = v73;
    }

    if ((v48 & 1) == 0)
    {
      goto LABEL_34;
    }

    return v30;
  }

  v71 = *(v21 + 30);
  sub_10001D630(0, &qword_100358330);
  v25 = NSString.init(stringLiteral:)();
  v26 = swift_isUniquelyReferenced_nonNull_native();
  v73 = v9;
  sub_1001894D4(v25, 0x5465636976726573, 0xEB00000000657079, v26);
  v27 = v73;
  v28 = UInt64._bridgeToObjectiveC()().super.super.isa;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v73 = v27;
  sub_1001894D4(v28, 0x5065636976726573, 0xEF72656469766F72, v29);
  v30 = v73;
  if ((v22 & 1) == 0)
  {
    v31 = String._bridgeToObjectiveC()();
    v32 = swift_isUniquelyReferenced_nonNull_native();
    v73 = v30;
    sub_1001894D4(v31, 0x6974696E49777473, 0xEE00794264657461, v32);
    v30 = v73;
  }

  if ((v24 & 1) == 0)
  {
LABEL_34:
    v62 = UInt64._bridgeToObjectiveC()().super.super.isa;
    v63 = swift_isUniquelyReferenced_nonNull_native();
    v73 = v30;
    sub_1001894D4(v62, 0x6E6F697473657571, 0xEF6449657269616ELL, v63);
    return v73;
  }

  return v30;
}

uint64_t sub_10006D630()
{

  sub_100008FA0(v0 + OBJC_IVAR____TtC8SOSBuddy21AnalyticsStartMessage_data, &qword_100358318);

  return swift_deallocClassInstance();
}

void sub_10006D6D4()
{
  sub_10006D77C();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_10006D77C()
{
  if (!qword_100358130)
  {
    type metadata accessor for Data(255);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_100358130);
    }
  }
}

uint64_t sub_10006D808(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for DispatchTime();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 65);
    if (v10 > 1)
    {
      return (v10 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_10006D8D8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for DispatchTime();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 65) = -a2;
  }

  return result;
}

void sub_10006D994()
{
  type metadata accessor for DispatchTime();
  if (v0 <= 0x3F)
  {
    sub_10006DA28();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_10006DA28()
{
  if (!qword_1003582E0)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1003582E0);
    }
  }
}

__n128 sub_10006DA78(uint64_t a1)
{
  v2 = *v1 + OBJC_IVAR____TtC8SOSBuddy21AnalyticsStartMessage_currentTarget;
  v3 = *(a1 + 16);
  *v2 = *a1;
  *(v2 + 16) = v3;
  result = *(a1 + 25);
  *(v2 + 25) = result;
  return result;
}

uint64_t sub_10006DB08(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000040A8(&qword_100358318);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10006DB78(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Data(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_10006DBDC()
{
  v0 = objc_opt_self();
  v1 = [v0 currentDevice];
  v2 = [v1 isBatteryMonitoringEnabled];

  v3 = [v0 currentDevice];
  [v3 setBatteryMonitoringEnabled:1];

  v4 = [v0 currentDevice];
  v5 = [v4 batteryState];

  if (v5)
  {
    v6 = [v0 currentDevice];
    [v6 batteryLevel];
    v8 = v7;

    v9 = v8 * 100.0;
  }

  else
  {
    v9 = 0.0;
  }

  v10 = [v0 currentDevice];
  [v10 setBatteryMonitoringEnabled:v2];

  if (v5)
  {
    v11 = roundf(v9);
    if ((LODWORD(v11) & 0x7FFFFFFFu) > 0x7F7FFFFF)
    {
      __break(1u);
    }

    else if (v11 > -9.2234e18)
    {
      if (v11 < 9.2234e18)
      {
        return;
      }

LABEL_12:
      __break(1u);
      return;
    }

    __break(1u);
    goto LABEL_12;
  }
}

uint64_t sub_10006DD6C(uint64_t result)
{
  if (result > 1)
  {
    if (result == 2)
    {
      return 0xD000000000000017;
    }

    if (result == 3)
    {
      return 0xD000000000000017;
    }
  }

  else
  {
    if (!result)
    {
      return result;
    }

    if (result == 1)
    {
      return 0x746F4E746F4E6F44;
    }
  }

  v1 = result;
  if (qword_100353A08 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000F53C(v2, qword_100381C68);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 134349056;
    *(v5 + 4) = v1;
    _os_log_impl(&_mh_execute_header, v3, v4, "Unhandled CTStewieNotifyOption value %{public}ld", v5, 0xCu);
  }

  return 0;
}

uint64_t sub_10006DEDC(uint64_t a1)
{
  v2 = type metadata accessor for Data(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10006DF38(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000040A8(&qword_100358318);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10006DFA8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Data(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id sub_10006E1F0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SecureWindow();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10006E24C(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0xC000000000000001) != 0)
  {

    v3 = __CocoaSet.contains(_:)();

    return v3 & 1;
  }

  else if (*(a2 + 16) && (Hasher.init(_seed:)(), v6 = *(a1 + 16), v7 = *(a1 + 24), String.hash(into:)(), v8 = Hasher._finalize()(), v9 = -1 << *(a2 + 32), v10 = v8 & ~v9, ((*(a2 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = *(*(a2 + 48) + 8 * v10);
      v13 = *(v12 + 16) == v6 && *(v12 + 24) == v7;
      if (v13 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(a2 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        return 0;
      }
    }

    return 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10006E374(uint64_t a1, uint64_t a2, uint64_t a3)
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

BOOL sub_10006E46C(unsigned __int8 a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v3 = a1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v3);
  v4 = Hasher._finalize()();
  v5 = -1 << *(a2 + 32);
  v6 = v4 & ~v5;
  if (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
    return 0;
  }

  v7 = ~v5;
  do
  {
    v8 = *(*(a2 + 48) + v6);
    result = v8 == v3;
    if (v8 == v3)
    {
      break;
    }

    v6 = (v6 + 1) & v7;
  }

  while (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  return result;
}

void sub_10006E538(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  v9 = &v4[OBJC_IVAR____TtC8SOSBuddy33ConnectionAssistantViewController__obstructedAreaAtTheTop];
  v25.origin.x = a1;
  v25.origin.y = a2;
  v25.size.width = a3;
  v25.size.height = a4;
  if (!CGRectEqualToRect(*&v4[OBJC_IVAR____TtC8SOSBuddy33ConnectionAssistantViewController__obstructedAreaAtTheTop], v25))
  {
    if (qword_100353AD8 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_10000F53C(v10, qword_100381ED8);
    v11 = v4;
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      *v14 = 136315394;
      v15 = sub_1000E8FF8(2, a1, a2, a3, a4);
      v17 = sub_10017C9E8(v15, v16, &v23);

      *(v14 + 4) = v17;
      *(v14 + 12) = 2080;
      v18 = sub_1000E8FF8(2, *v9, v9[1], v9[2], v9[3]);
      v20 = sub_10017C9E8(v18, v19, &v23);

      *(v14 + 14) = v20;
      _os_log_impl(&_mh_execute_header, v12, v13, "obstructedAreaAtTheTop changed from %s to %s", v14, 0x16u);
      swift_arrayDestroy();
    }

    v21 = [v11 view];
    if (v21)
    {
      v22 = v21;
      [v21 setNeedsLayout];
    }

    else
    {
      __break(1u);
    }
  }
}

id sub_10006E7C0()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v44 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ConnectionAssistantViewController();
  v47.receiver = v0;
  v47.super_class = v9;
  objc_msgSendSuper2(&v47, "viewDidLoad");
  [v0 setOverrideUserInterfaceStyle:2];
  result = [v0 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_15;
  }

  v11 = result;
  v12 = objc_opt_self();
  v13 = [v12 systemBackgroundColor];
  [v11 setBackgroundColor:v13];

  result = [v1 view];
  if (!result)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v14 = result;
  v45 = v6;
  v15 = [v12 labelColor];
  [v14 setTintColor:v15];

  v16 = *&v1[OBJC_IVAR____TtC8SOSBuddy33ConnectionAssistantViewController__earthViewController];
  [v1 addChildViewController:v16];
  result = [v1 view];
  if (!result)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v17 = result;
  result = [v16 view];
  if (!result)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v18 = result;
  [v17 addSubview:result];

  [v16 didMoveToParentViewController:v1];
  if (v1[OBJC_IVAR____TtC8SOSBuddy33ConnectionAssistantViewController__metrics] == 1)
  {
    v43 = v3;
    type metadata accessor for ShadowView();
    v19 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    v20 = [v12 blackColor];
    v21 = v19;
    v22 = [v21 layer];
    if (v20)
    {
      v23 = [v20 CGColor];
    }

    else
    {
      v23 = 0;
    }

    [v22 setShadowColor:v23];

    v24 = [v21 layer];
    [v24 setInvertsShadow:1];

    v25 = [v21 layer];
    [v25 setCornerCurve:kCACornerCurveContinuous];

    v26 = [v21 layer];
    LODWORD(v27) = 1.0;
    [v26 setShadowOpacity:v27];

    v28 = [v21 layer];
    [v28 setShadowRadius:12.0];

    vertical = UIOffsetZero.vertical;
    v30 = [v21 layer];
    [v30 setShadowOffset:{UIOffsetZero.horizontal, vertical}];

    v31 = *&v1[OBJC_IVAR____TtC8SOSBuddy33ConnectionAssistantViewController__innerShadowView];
    *&v1[OBJC_IVAR____TtC8SOSBuddy33ConnectionAssistantViewController__innerShadowView] = v21;
    v32 = v21;

    result = [v1 view];
    if (!result)
    {
      goto LABEL_20;
    }

    v33 = result;
    [result addSubview:v32];

    v3 = v43;
  }

  v34 = *&v1[OBJC_IVAR____TtC8SOSBuddy33ConnectionAssistantViewController__connectionViewController];
  [v1 addChildViewController:v34];
  result = [v1 view];
  v35 = v45;
  if (result)
  {
    v36 = result;
    result = [v34 view];
    if (result)
    {
      v37 = result;
      [v36 addSubview:result];

      [v34 didMoveToParentViewController:v1];
      sub_10000F574();
      v38 = static OS_dispatch_queue.main.getter();
      v39 = swift_allocObject();
      *(v39 + 16) = v1;
      aBlock[4] = sub_1000718BC;
      aBlock[5] = v39;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1001D2438;
      aBlock[3] = &unk_100329920;
      v40 = _Block_copy(aBlock);
      v41 = v1;

      static DispatchQoS.unspecified.getter();
      aBlock[0] = _swiftEmptyArrayStorage;
      sub_100071864();
      sub_1000040A8(&unk_100355D70);
      sub_100035010();
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v40);

      (*(v3 + 8))(v5, v2);
      return (*(v44 + 8))(v8, v35);
    }

    goto LABEL_19;
  }

LABEL_18:
  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_10006EEE0(char a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v31 = *(v8 - 8);
  v32 = v8;
  __chkstk_darwin(v8);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchTime();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v28 - v16;
  v18 = type metadata accessor for ConnectionAssistantViewController();
  v34.receiver = v2;
  v34.super_class = v18;
  objc_msgSendSuper2(&v34, "viewDidAppear:", a1 & 1);
  v19 = &v2[OBJC_IVAR____TtC8SOSBuddy33ConnectionAssistantViewController__guidanceState];
  swift_beginAccess();
  if (v19[*(type metadata accessor for ExplorerGuidanceState() + 68) + 16] == 2)
  {
    sub_10000F574();
    v29 = static OS_dispatch_queue.main.getter();
    static DispatchTime.now()();
    + infix(_:_:)();
    v30 = *(v12 + 8);
    v30(v14, v11);
    v20 = swift_allocObject();
    *(v20 + 16) = v2;
    aBlock[4] = sub_100071844;
    aBlock[5] = v20;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1001D2438;
    aBlock[3] = &unk_1003298D0;
    v21 = _Block_copy(aBlock);
    v22 = v2;

    static DispatchQoS.unspecified.getter();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_100071864();
    sub_1000040A8(&unk_100355D70);
    sub_100035010();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v23 = v29;
    OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
    _Block_release(v21);

    (*(v5 + 8))(v7, v4);
    (*(v31 + 8))(v10, v32);
    return (v30)(v17, v11);
  }

  else
  {
    v25 = *&v2[OBJC_IVAR____TtC8SOSBuddy33ConnectionAssistantViewController__locationAssertionProducer];

    v27 = v25(v26);

    *&v2[OBJC_IVAR____TtC8SOSBuddy33ConnectionAssistantViewController__locationAssertion] = v27;
  }
}

uint64_t sub_10006F2E8(uint64_t a1)
{
  v2 = *(a1 + OBJC_IVAR____TtC8SOSBuddy33ConnectionAssistantViewController__locationAssertionProducer);

  v4 = v2(v3);

  *(a1 + OBJC_IVAR____TtC8SOSBuddy33ConnectionAssistantViewController__locationAssertion) = v4;
}

void sub_10006F440(void *a1, uint64_t a2, uint64_t a3, const char **a4, SEL *a5)
{
  v14.receiver = a1;
  v14.super_class = type metadata accessor for ConnectionAssistantViewController();
  v8 = *a4;
  v9 = v14.receiver;
  objc_msgSendSuper2(&v14, v8, a3);
  v10 = *&v9[OBJC_IVAR____TtC8SOSBuddy33ConnectionAssistantViewController__displayLink];
  if (v10)
  {
    v11 = objc_opt_self();
    v12 = v10;
    v13 = [v11 mainRunLoop];
    [v12 *a5];
  }

  else
  {
    __break(1u);
  }
}

void sub_10006F51C()
{
  v29.receiver = v0;
  v29.super_class = type metadata accessor for ConnectionAssistantViewController();
  objc_msgSendSuper2(&v29, "viewWillLayoutSubviews");
  v1 = [*&v0[OBJC_IVAR____TtC8SOSBuddy33ConnectionAssistantViewController__earthViewController] view];
  if (!v1)
  {
    __break(1u);
    goto LABEL_9;
  }

  v2 = v1;
  v3 = [v0 view];
  if (!v3)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v4 = v3;
  [v3 bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  [v2 setFrame:{v6, v8, v10, v12}];
  v13 = [*&v0[OBJC_IVAR____TtC8SOSBuddy33ConnectionAssistantViewController__connectionViewController] view];
  if (!v13)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v14 = v13;
  v15 = [v0 view];
  if (!v15)
  {
LABEL_11:
    __break(1u);
    return;
  }

  v16 = v15;
  [v15 bounds];
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;

  [v14 setFrame:{v18, v20, v22, v24}];
  if (v0[OBJC_IVAR____TtC8SOSBuddy33ConnectionAssistantViewController__metrics])
  {
    sub_10007011C();
  }

  else
  {
    sub_10006F724();
    v25 = &v0[OBJC_IVAR____TtC8SOSBuddy33ConnectionAssistantViewController__topInset];
    *v25 = v26;
    *(v25 + 1) = 0x4075E00000000000;
    *(v25 + 2) = v27;
    *(v25 + 3) = v28;
    v25[32] = 1;
  }
}

id sub_10006F724()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC8SOSBuddy33ConnectionAssistantViewController__uiMetrics];
  sub_1000089B0(v2 + 48, v40);
  v3 = v41;
  v4 = v42;
  sub_1000088DC(v40, v41);
  (*(v4 + 48))(v39, v3, v4);
  result = [v0 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  v6 = result;
  [result safeAreaInsets];

  sub_100008964(v39);
  sub_100008964(v40);
  sub_1000089B0(v2 + 48, v40);
  v7 = v41;
  v8 = v42;
  sub_1000088DC(v40, v41);
  (*(v8 + 48))(v39, v7, v8);
  sub_1000089B0(v2 + 48, v36);
  v9 = v37;
  v10 = v38;
  sub_1000088DC(v36, v37);
  (*(v10 + 48))(v35, v9, v10);
  result = [v1 view];
  if (!result)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v11 = result;
  [result safeAreaInsets];
  v13 = v12;
  v15 = v14;
  [v11 bounds];
  v43.origin.x = sub_1000717F0(v16, v17, v18, v19, v13, v15);
  CGRectGetHeight(v43);

  sub_1000089B0(v2 + 48, v32);
  v20 = v33;
  v21 = v34;
  sub_1000088DC(v32, v33);
  (*(v21 + 48))(v31, v20, v21);
  result = [v1 view];
  if (result)
  {
    v22 = result;
    [result safeAreaInsets];
    v24 = v23;
    v26 = v25;
    [v22 bounds];
    v44.origin.x = sub_1000717F0(v27, v28, v29, v30, v24, v26);
    CGRectGetHeight(v44);

    sub_100008964(v31);
    sub_100008964(v35);
    sub_100008964(v39);
    sub_100008964(v32);
    sub_100008964(v36);
    return sub_100008964(v40);
  }

LABEL_7:
  __break(1u);
  return result;
}

void sub_10006F9EC()
{
  v1 = v0;
  v2 = v0 + OBJC_IVAR____TtC8SOSBuddy33ConnectionAssistantViewController__offsetRotationProgressPending;
  if (*(v0 + OBJC_IVAR____TtC8SOSBuddy33ConnectionAssistantViewController__offsetRotationProgressPending + 8) == 1)
  {
    v3 = sub_100011CB4();
    if ((v3 & 0x100000000) == 0)
    {
      v4 = OBJC_IVAR____TtC8SOSBuddy33ConnectionAssistantViewController__displayLink;
      if (*(v0 + OBJC_IVAR____TtC8SOSBuddy33ConnectionAssistantViewController__displayLink))
      {
        v5 = v3;
        v6 = *&v3;
        [*(v0 + OBJC_IVAR____TtC8SOSBuddy33ConnectionAssistantViewController__displayLink) preferredFrameRateRange];
        v7 = CAFrameRateRange.preferred.getter();
        if ((v7 & 0x100000000) == 0 && *&v7 == v6)
        {
          return;
        }

        if (qword_100353AD8 != -1)
        {
          swift_once();
        }

        v8 = type metadata accessor for Logger();
        sub_10000F53C(v8, qword_100381ED8);
        v9 = Logger.logObject.getter();
        v10 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v9, v10))
        {
          v11 = swift_slowAlloc();
          *v11 = 134217984;
          *(v11 + 4) = v6;
          _os_log_impl(&_mh_execute_header, v9, v10, "Updating CA frame rate to: %f", v11, 0xCu);
        }

        v12 = *(v1 + v4);
        if (v12)
        {
          v13 = v12;
          v34 = CAFrameRateRange.init(minimum:maximum:preferred:)(v6, v6, v5);
          [v13 setPreferredFrameRateRange:{*&v34.minimum, *&v34.maximum, *&v34.preferred}];

          v14 = *(v1 + v4);
          if (v14)
          {
            v15 = *(v1 + OBJC_IVAR____TtC8SOSBuddy33ConnectionAssistantViewController__earthViewController);
            [v14 preferredFrameRateRange];
            v16 = *(v15 + OBJC_IVAR____TtC8SOSBuddy38ConnectionAssistantEarthViewController__displayLink);
            if (v16)
            {

              [v16 setPreferredFrameRateRange:?];
              return;
            }

LABEL_37:
            __break(1u);
            return;
          }

LABEL_36:
          __break(1u);
          goto LABEL_37;
        }

LABEL_35:
        __break(1u);
        goto LABEL_36;
      }

LABEL_34:
      __break(1u);
      goto LABEL_35;
    }
  }

  v17 = OBJC_IVAR____TtC8SOSBuddy33ConnectionAssistantViewController__displayLink;
  v18 = *(v0 + OBJC_IVAR____TtC8SOSBuddy33ConnectionAssistantViewController__displayLink);
  if (!v18)
  {
    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  [v18 preferredFrameRateRange];
  maximum = CAFrameRateRangeDefault.maximum;
  preferred = CAFrameRateRangeDefault.preferred;
  if (static CAFrameRateRange.== infix(_:_:)())
  {
    return;
  }

  if (qword_100353AD8 != -1)
  {
    swift_once();
  }

  v21 = type metadata accessor for Logger();
  sub_10000F53C(v21, qword_100381ED8);
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 0;
    _os_log_impl(&_mh_execute_header, v22, v23, "Updating CA frame rate to: default", v24, 2u);
  }

  v28 = *(v1 + v17);
  if (!v28)
  {
    goto LABEL_31;
  }

  *&v25 = CAFrameRateRangeDefault.minimum;
  *&v26 = maximum;
  *&v27 = preferred;
  [v28 setPreferredFrameRateRange:{v25, v26, v27}];
  v29 = *(v1 + v17);
  if (!v29)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v30 = *(v1 + OBJC_IVAR____TtC8SOSBuddy33ConnectionAssistantViewController__earthViewController);
  [v29 preferredFrameRateRange];
  v31 = *(v30 + OBJC_IVAR____TtC8SOSBuddy38ConnectionAssistantEarthViewController__displayLink);
  if (!v31)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  [v31 setPreferredFrameRateRange:?];
  if ((*(v2 + 8) & 1) == 0)
  {
    v32 = *v2;

    sub_10006FDB4(v32);
  }
}

void sub_10006FDB4(double a1)
{
  v2 = v1 + OBJC_IVAR____TtC8SOSBuddy33ConnectionAssistantViewController__offsetRotationProgressPending;
  *v2 = 0;
  *(v2 + 8) = 1;
  v3 = *(v1 + OBJC_IVAR____TtC8SOSBuddy33ConnectionAssistantViewController__connectionViewController);
  v4 = *&v3[OBJC_IVAR____TtC8SOSBuddy43ConnectionAssistantConnectionViewController_coveredProgress];
  *&v3[OBJC_IVAR____TtC8SOSBuddy43ConnectionAssistantConnectionViewController_coveredProgress] = a1;
  if (v4 != a1)
  {
    v5 = a1;
    v6 = [v3 view];
    if (!v6)
    {
      __break(1u);
      return;
    }

    v7 = v6;
    [v6 setNeedsLayout];

    a1 = v5;
  }

  *(v1 + OBJC_IVAR____TtC8SOSBuddy33ConnectionAssistantViewController__offsetRotationProgress) = a1;
  if (*(v1 + OBJC_IVAR____TtC8SOSBuddy33ConnectionAssistantViewController__metrics))
  {

    sub_10007011C();
  }

  else
  {
    sub_10006F724();
    v8 = v1 + OBJC_IVAR____TtC8SOSBuddy33ConnectionAssistantViewController__topInset;
    *v8 = v9;
    *(v8 + 8) = 0x4075E00000000000;
    *(v8 + 16) = v10;
    *(v8 + 24) = v11;
    *(v8 + 32) = 1;
  }
}

void sub_10006FEB8(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  v62.origin.x = 0.0;
  v62.origin.y = 0.0;
  v62.size.width = 0.0;
  v62.size.height = 0.0;
  if (CGRectEqualToRect(*&a1, v62))
  {
    v9 = [v4 view];
    if (v9)
    {
      v10 = v9;
      [v9 bounds];
      v12 = v11;
      v14 = v13;
      v16 = v15;
      v18 = v17;

      v57.origin.x = v12;
      v57.origin.y = v14;
      v57.size.width = v16;
      v57.size.height = v18;
      v19 = CGRectGetWidth(v57) * 0.5;
      if (v19 <= 2.0)
      {
        v20 = v19;
      }

      else
      {
        v20 = 2.0;
      }

      v21 = [v4 view];
      if (v21)
      {
        v22 = v21;
        [v21 bounds];
        v24 = v23;
        v26 = v25;
        v28 = v27;
        v30 = v29;

        v58.origin.x = v24;
        v58.origin.y = v26;
        v58.size.width = v28;
        v58.size.height = v30;
        Height = CGRectGetHeight(v58);
        v32 = [v4 view];
        if (v32)
        {
          v33 = v32;
          if (Height <= 35.0)
          {
            v34 = Height;
          }

          else
          {
            v34 = 35.0;
          }

          [v32 bounds];
          v36 = v35;
          v38 = v37;
          v40 = v39;
          v42 = v41;

          v59.origin.x = v36;
          v59.origin.y = v38;
          v59.size.width = v40;
          v59.size.height = v42;
          MidX = CGRectGetMidX(v59);
          v44 = v34;
          v45 = v20;
          v46 = MidX + v20 * -0.5;
          v47 = 0;
          goto LABEL_13;
        }

LABEL_20:
        __break(1u);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_20;
  }

  v60.origin.x = a1;
  v60.origin.y = a2;
  v60.size.width = a3;
  v60.size.height = a4;
  *&v46 = CGRectInset(v60, -5.0, 0.0);
LABEL_13:
  v61 = CGRectInset(*&v46, 0.0, -10.0);
  v48 = *&v4[OBJC_IVAR____TtC8SOSBuddy33ConnectionAssistantViewController__obstructedAreaAtTheTop];
  v49 = *&v4[OBJC_IVAR____TtC8SOSBuddy33ConnectionAssistantViewController__obstructedAreaAtTheTop + 8];
  v50 = *&v4[OBJC_IVAR____TtC8SOSBuddy33ConnectionAssistantViewController__obstructedAreaAtTheTop + 16];
  v51 = *&v4[OBJC_IVAR____TtC8SOSBuddy33ConnectionAssistantViewController__obstructedAreaAtTheTop + 24];
  *&v4[OBJC_IVAR____TtC8SOSBuddy33ConnectionAssistantViewController__obstructedAreaAtTheTop] = v61;
  sub_10006E538(v48, v49, v50, v51);
  if (v4[OBJC_IVAR____TtC8SOSBuddy33ConnectionAssistantViewController__metrics])
  {

    sub_10007011C();
  }

  else
  {
    sub_10006F724();
    v52 = &v4[OBJC_IVAR____TtC8SOSBuddy33ConnectionAssistantViewController__topInset];
    *v52 = v53;
    *(v52 + 1) = 0x4075E00000000000;
    *(v52 + 2) = v54;
    *(v52 + 3) = v55;
    v52[32] = 1;
  }
}

void sub_10007011C()
{
  v1 = v0;
  v2 = [v0 view];
  if (!v2)
  {
    __break(1u);
    goto LABEL_17;
  }

  v3 = v2;
  [v2 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v100.origin.x = v5;
  v100.origin.y = v7;
  v100.size.width = v9;
  v100.size.height = v11;
  MaxY = CGRectGetMaxY(v100);
  v13 = &v0[OBJC_IVAR____TtC8SOSBuddy33ConnectionAssistantViewController__topInset];
  *v13 = MaxY + -56.0;
  *(v13 + 2) = 0;
  *(v13 + 3) = 0;
  *(v13 + 1) = 0;
  v13[32] = 0;
  v14 = [v0 view];
  if (!v14)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v15 = v14;
  [v14 bounds];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;

  v101.origin.x = v17;
  v101.origin.y = v19;
  v101.size.width = v21;
  v101.size.height = v23;
  MidX = CGRectGetMidX(v101);
  v25 = &v0[OBJC_IVAR____TtC8SOSBuddy33ConnectionAssistantViewController__obstructedAreaAtTheTop];
  Width = CGRectGetWidth(*&v0[OBJC_IVAR____TtC8SOSBuddy33ConnectionAssistantViewController__obstructedAreaAtTheTop]);
  v27 = [v0 view];
  if (!v27)
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v28 = v27;
  v29 = MidX - Width * 0.5;
  [v27 bounds];
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v37 = v36;

  v102.origin.x = v31;
  v102.origin.y = v33;
  v102.size.width = v35;
  v102.size.height = v37;
  MinY = CGRectGetMinY(v102);
  v39 = v25[2];
  v40 = v25[3];
  v103.origin.x = *v25;
  v103.origin.y = v25[1];
  v103.size.width = v39;
  v103.size.height = v40;
  v41 = CGRectGetHeight(v103) * 0.5;
  v42 = objc_opt_self();
  sub_100049EC4([v42 bezierPathWithRoundedRect:v29 cornerRadius:{MinY, v39, v40, v41}]);
  v43 = *&v0[OBJC_IVAR____TtC8SOSBuddy33ConnectionAssistantViewController__innerShadowView];
  if (!v43)
  {
    return;
  }

  v44 = v43;
  v45 = [v0 view];
  if (!v45)
  {
    goto LABEL_19;
  }

  v46 = v45;
  [v45 bounds];

  [v44 bounds];
  [v44 setBounds:?];
  v47 = [v1 view];
  if (!v47)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v48 = v47;
  [v47 bounds];
  v50 = v49;
  v52 = v51;
  v54 = v53;
  v56 = v55;

  v104.origin.x = v50;
  v104.origin.y = v52;
  v104.size.width = v54;
  v104.size.height = v56;
  v57 = CGRectGetMidX(v104);
  v58 = [v1 view];
  if (!v58)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v59 = v58;
  [v58 bounds];
  v61 = v60;
  v63 = v62;
  v65 = v64;
  v67 = v66;

  v105.origin.x = v61;
  v105.origin.y = v63;
  v105.size.width = v65;
  v105.size.height = v67;
  [v44 setCenter:{v57, CGRectGetMidY(v105)}];
  v68 = [v44 layer];
  v69 = [v1 view];
  if (!v69)
  {
LABEL_22:
    __break(1u);
    return;
  }

  v70 = v69;
  v71 = [v69 traitCollection];

  [v71 displayCornerRadius];
  v73 = v72;

  [v68 setCornerRadius:v73 + -11.0];
  [v44 bounds];
  v75 = v74;
  v77 = v76;
  v79 = v78;
  v81 = v80;
  v82 = [v44 layer];
  [v82 shadowRadius];
  v84 = v83;

  v85 = [v44 layer];
  [v85 shadowRadius];
  v87 = v86;

  v106.origin.x = v75;
  v106.origin.y = v77;
  v106.size.width = v79;
  v106.size.height = v81;
  v107 = CGRectInset(v106, v84, v87);
  x = v107.origin.x;
  y = v107.origin.y;
  v90 = v107.size.width;
  height = v107.size.height;
  v92 = [v44 layer];

  [v92 cornerRadius];
  v94 = v93;

  v95 = [v42 bezierPathWithRoundedRect:x cornerRadius:{y, v90, height, v94}];
  v96 = [v44 layer];
  if (v95)
  {
    v97 = [v95 CGPath];
  }

  else
  {
    v97 = 0;
  }

  v98 = v97;
  [v96 setShadowPath:?];
}

void sub_100070678(unsigned __int8 *a1)
{
  v2 = v1;
  v4 = type metadata accessor for ExplorerGuidanceState();
  __chkstk_darwin(v4);
  v6 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v44 - v8;
  __chkstk_darwin(v10);
  v12 = &v44 - v11;
  v13 = OBJC_IVAR____TtC8SOSBuddy33ConnectionAssistantViewController__guidanceState;
  swift_beginAccess();
  sub_10004AC8C(&v1[v13], v12);
  v14 = sub_100088108(v12, a1);
  sub_10004ACF0(v12);
  if ((v14 & 1) == 0)
  {
    if (qword_100353A60 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_10000F53C(v15, qword_100381D70);
    sub_10004AC8C(a1, v9);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.default.getter();
    v18 = os_log_type_enabled(v16, v17);
    v48 = v4;
    if (v18)
    {
      v19 = swift_slowAlloc();
      v45 = v15;
      v20 = v19;
      v21 = swift_slowAlloc();
      v46 = v6;
      v22 = v21;
      v49[0] = v21;
      *v20 = 136315138;
      sub_10004AC8C(v9, v12);
      v23 = String.init<A>(describing:)();
      v47 = a1;
      v25 = v24;
      sub_10004ACF0(v9);
      v26 = sub_10017C9E8(v23, v25, v49);
      a1 = v47;

      *(v20 + 4) = v26;
      _os_log_impl(&_mh_execute_header, v16, v17, "updateGuidanceState to %s", v20, 0xCu);
      sub_100008964(v22);
      v6 = v46;

      v15 = v45;
    }

    else
    {

      sub_10004ACF0(v9);
    }

    if ((v2[OBJC_IVAR____TtC8SOSBuddy33ConnectionAssistantViewController__skipLocationAnimation] & 1) == 0 && (v2[OBJC_IVAR____TtC8SOSBuddy33ConnectionAssistantViewController__locationAnimationFinished] & 1) == 0)
    {
      v27 = &v2[OBJC_IVAR____TtC8SOSBuddy33ConnectionAssistantViewController__animateToLocation];
      v28 = v2[OBJC_IVAR____TtC8SOSBuddy33ConnectionAssistantViewController__animateToLocation + 16];
      v29 = &a1[*(v48 + 68)];
      v30 = *v29;
      v31 = *(v29 + 1);
      v32 = v29[16];
      if (v28 == 2)
      {
        if (v32 == 2)
        {
          goto LABEL_14;
        }

LABEL_13:
        *v27 = v30;
        v27[1] = v31;
        *(v27 + 16) = v32;
        goto LABEL_14;
      }

      if (v32 == 2 || *v27 != v30 || v27[1] != v31 || ((v32 ^ v28) & 1) != 0)
      {
        goto LABEL_13;
      }
    }

LABEL_14:
    sub_10004AC8C(a1, v12);
    swift_beginAccess();
    sub_100071728(v12, &v2[v13]);
    swift_endAccess();
    sub_10004B7D4(a1);
    v33 = *&v2[OBJC_IVAR____TtC8SOSBuddy33ConnectionAssistantViewController__connectionViewController];
    sub_10004AC8C(&v2[v13], v12);
    v34 = OBJC_IVAR____TtC8SOSBuddy43ConnectionAssistantConnectionViewController_state;
    swift_beginAccess();
    sub_10004AC8C(v34 + v33, v6);
    swift_beginAccess();
    sub_10007178C(v12, v34 + v33);
    swift_endAccess();
    sub_100049654(v6);
    sub_10004ACF0(v6);
    sub_10004ACF0(v12);
    v35 = OBJC_IVAR____TtC8SOSBuddy33ConnectionAssistantViewController__displayLink;
    v36 = *&v2[OBJC_IVAR____TtC8SOSBuddy33ConnectionAssistantViewController__displayLink];
    if (v36)
    {
      v37 = [v36 isPaused];
      v38 = *a1;
      if (v37 != v38)
      {
        return;
      }

      v39 = *&v2[v35];
      if (v39)
      {
        [v39 setPaused:v38 ^ 1u];
        if (qword_100353AD8 != -1)
        {
          swift_once();
        }

        sub_10000F53C(v15, qword_100381ED8);
        v34 = v2;
        v40 = Logger.logObject.getter();
        v41 = static os_log_type_t.default.getter();
        if (!os_log_type_enabled(v40, v41))
        {

          v40 = v34;
          goto LABEL_23;
        }

        v42 = swift_slowAlloc();
        *v42 = 67109120;
        v43 = *&v2[v35];
        if (v43)
        {
          *(v42 + 4) = [v43 isPaused];

          _os_log_impl(&_mh_execute_header, v40, v41, "Explorer rendering is paused: %{BOOL}d", v42, 8u);

LABEL_23:

          return;
        }

LABEL_31:

        __break(1u);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_31;
  }
}

id sub_100070BC4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ConnectionAssistantViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for ConnectionAssistantViewController()
{
  result = qword_100358410;
  if (!qword_100358410)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100070D24()
{
  result = type metadata accessor for ExplorerGuidanceState();
  if (v1 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

void sub_100070E44(double a1, double a2)
{
  v3 = v2;
  v110 = type metadata accessor for ExplorerGuidanceState();
  __chkstk_darwin(v110);
  v7 = &v90[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v8);
  v10 = &v90[-v9];
  v11 = sub_10007158C(v2);
  v111 = v12;
  v13 = &v2[OBJC_IVAR____TtC8SOSBuddy33ConnectionAssistantViewController__guidanceState];
  swift_beginAccess();
  v14 = v13[16];
  v15 = [v2 view];
  if (!v15)
  {
    __break(1u);
    goto LABEL_18;
  }

  v16 = v15;
  v107 = a1;
  v108 = a2;
  v109 = v11;
  [v15 bounds];
  v106 = v17;
  v19 = v18;
  v21 = v20;
  v23 = v22;

  v24 = [v3 view];
  if (!v24)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v25 = v24;
  [v24 safeAreaInsets];
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;

  v164.origin.x = *&v3[OBJC_IVAR____TtC8SOSBuddy33ConnectionAssistantViewController__obstructedAreaAtTheTop];
  v34 = *&v3[OBJC_IVAR____TtC8SOSBuddy33ConnectionAssistantViewController__obstructedAreaAtTheTop + 8];
  v164.size.width = *&v3[OBJC_IVAR____TtC8SOSBuddy33ConnectionAssistantViewController__obstructedAreaAtTheTop + 16];
  v164.size.height = *&v3[OBJC_IVAR____TtC8SOSBuddy33ConnectionAssistantViewController__obstructedAreaAtTheTop + 24];
  v164.origin.y = v34;
  v35 = v27 + v34 + CGRectGetHeight(v164);
  v36 = [v3 traitCollection];
  [v36 displayScale];
  v38 = v37;

  v39 = *&v3[OBJC_IVAR____TtC8SOSBuddy33ConnectionAssistantViewController__metrics + 80];
  v118 = *&v3[OBJC_IVAR____TtC8SOSBuddy33ConnectionAssistantViewController__metrics + 64];
  v119 = v39;
  v120 = *&v3[OBJC_IVAR____TtC8SOSBuddy33ConnectionAssistantViewController__metrics + 96];
  v121 = *&v3[OBJC_IVAR____TtC8SOSBuddy33ConnectionAssistantViewController__metrics + 112];
  v40 = *&v3[OBJC_IVAR____TtC8SOSBuddy33ConnectionAssistantViewController__metrics + 16];
  v114 = *&v3[OBJC_IVAR____TtC8SOSBuddy33ConnectionAssistantViewController__metrics];
  v115 = v40;
  v41 = *&v3[OBJC_IVAR____TtC8SOSBuddy33ConnectionAssistantViewController__metrics + 48];
  v116 = *&v3[OBJC_IVAR____TtC8SOSBuddy33ConnectionAssistantViewController__metrics + 32];
  v117 = v41;
  v42 = *&v3[OBJC_IVAR____TtC8SOSBuddy33ConnectionAssistantViewController__earthDiameter + 80];
  v126 = *&v3[OBJC_IVAR____TtC8SOSBuddy33ConnectionAssistantViewController__earthDiameter + 64];
  v127[0] = v42;
  *(v127 + 9) = *&v3[OBJC_IVAR____TtC8SOSBuddy33ConnectionAssistantViewController__earthDiameter + 89];
  v43 = *&v3[OBJC_IVAR____TtC8SOSBuddy33ConnectionAssistantViewController__earthDiameter + 16];
  v122 = *&v3[OBJC_IVAR____TtC8SOSBuddy33ConnectionAssistantViewController__earthDiameter];
  v123 = v43;
  v44 = *&v3[OBJC_IVAR____TtC8SOSBuddy33ConnectionAssistantViewController__earthDiameter + 48];
  v124 = *&v3[OBJC_IVAR____TtC8SOSBuddy33ConnectionAssistantViewController__earthDiameter + 32];
  v125 = v44;
  v45 = *&v3[OBJC_IVAR____TtC8SOSBuddy33ConnectionAssistantViewController__topInset];
  v104 = *&v3[OBJC_IVAR____TtC8SOSBuddy33ConnectionAssistantViewController__topInset + 16];
  v105 = v45;
  v46 = *&v3[OBJC_IVAR____TtC8SOSBuddy33ConnectionAssistantViewController__connectionViewController];
  v47 = v3[OBJC_IVAR____TtC8SOSBuddy33ConnectionAssistantViewController__topInset + 32];
  v48 = sub_100210F70(*&v46[OBJC_IVAR____TtC8SOSBuddy43ConnectionAssistantConnectionViewController__connectivity]);
  v52 = *&v3[OBJC_IVAR____TtC8SOSBuddy33ConnectionAssistantViewController__offsetRotationProgress];
  v53 = v3[OBJC_IVAR____TtC8SOSBuddy33ConnectionAssistantViewController__skipLocationAnimation];
  v54 = &v3[OBJC_IVAR____TtC8SOSBuddy33ConnectionAssistantViewController__animateToLocation];
  v55 = v3[OBJC_IVAR____TtC8SOSBuddy33ConnectionAssistantViewController__animateToLocation + 16];
  v56 = &v3[OBJC_IVAR____TtC8SOSBuddy33ConnectionAssistantViewController__animateToLocation];
  if (v55 == 2)
  {
    v56 = &v13[*(v110 + 68)];
    LOBYTE(v55) = v56[16];
  }

  v58 = *v56;
  v57 = *(v56 + 1);
  v59 = v13[82];
  v60 = v13[83];
  v61 = v13[17];
  v112 = v47;
  v133[0] = v106;
  v133[1] = v19;
  v133[2] = v21;
  v133[3] = v23;
  *&v133[4] = v35;
  v133[5] = v29;
  v133[6] = v31;
  v133[7] = v33;
  v133[8] = v38;
  v137 = v117;
  v136 = v116;
  v135 = v115;
  v134 = v114;
  v141 = v121;
  v140 = v120;
  v139 = v119;
  v138 = v118;
  *(v147 + 9) = *(v127 + 9);
  v143 = v123;
  v142 = v122;
  v147[0] = v127[0];
  v146 = v126;
  v144 = v124;
  v145 = v125;
  v147[3] = v104;
  v147[2] = v105;
  v148 = v47;
  v149 = v48 & 1;
  v106 = v49;
  v150 = v49;
  v151 = v50 & 0x101;
  v152 = v51;
  v153 = v52;
  v154 = v53;
  v155 = v58;
  v156 = v57;
  v157 = v55;
  v158 = v59;
  v159 = v60;
  v62 = v109;
  v160 = v109;
  v161 = v111;
  v162 = v14 != 9;
  v163 = v61;
  sub_1000120BC(v133);
  v63 = *&v3[OBJC_IVAR____TtC8SOSBuddy33ConnectionAssistantViewController__earthViewController];
  memcpy((v63 + OBJC_IVAR____TtC8SOSBuddy38ConnectionAssistantEarthViewController_earth), v128, 0x203uLL);
  memcpy(v113, v129, 0x180uLL);
  sub_1000716B0(v113);
  memcpy((v63 + OBJC_IVAR____TtC8SOSBuddy38ConnectionAssistantEarthViewController_camera), v113, 0x181uLL);
  v64 = *(v54 + 16);
  if (v64 != 2 && (v132 & 1) != 0)
  {
    v65 = *v54;
    v107 = v54[1];
    v108 = v65;
    if (qword_100353A60 != -1)
    {
      swift_once();
    }

    v97 = v46;
    v66 = type metadata accessor for Logger();
    sub_10000F53C(v66, qword_100381D70);
    v67 = Logger.logObject.getter();
    v68 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v67, v68))
    {
      v69 = swift_slowAlloc();
      *v69 = 0;
      _os_log_impl(&_mh_execute_header, v67, v68, "Location animation finished", v69, 2u);
    }

    v3[OBJC_IVAR____TtC8SOSBuddy33ConnectionAssistantViewController__locationAnimationFinished] = 1;
    *v54 = 0.0;
    v54[1] = 0.0;
    *(v54 + 16) = 2;
    sub_10004AC8C(v13, v7);
    LODWORD(v105) = v64 & 1;
    v70 = *v7;
    v71 = *(v7 + 1);
    v103 = v7[16];
    LODWORD(v104) = v70;
    v72 = v7[17];
    v101 = v7[18];
    v102 = v72;
    v73 = *(v7 + 3);
    v74 = *(v7 + 4);
    v75 = *(v7 + 6);
    v99 = *(v7 + 5);
    v100 = v73;
    v76 = *(v7 + 8);
    v98 = *(v7 + 7);
    v96 = *(v7 + 9);
    LODWORD(v73) = v7[80];
    v94 = v7[81];
    v95 = v73;
    LODWORD(v73) = v7[82];
    v92 = v7[83];
    v93 = v73;
    v77 = v110;
    sub_1000716B8(&v7[*(v110 + 60)], &v10[*(v110 + 60)]);
    v91 = v7[*(v77 + 64)];

    sub_10004ACF0(v7);
    v78 = v103;
    *v10 = v104;
    *(v10 + 1) = v71;
    v10[16] = v78;
    v79 = v101;
    v10[17] = v102;
    v10[18] = v79;
    v80 = v99;
    *(v10 + 3) = v100;
    *(v10 + 4) = v74;
    *(v10 + 5) = v80;
    *(v10 + 6) = v75;
    *(v10 + 7) = v98;
    *(v10 + 8) = v76;
    *(v10 + 9) = v96;
    LOBYTE(v80) = v94;
    v10[80] = v95;
    v10[81] = v80;
    LOBYTE(v80) = v92;
    v10[82] = v93;
    v10[83] = v80;
    v10[*(v77 + 64)] = v91;
    v81 = &v10[*(v77 + 68)];
    v82 = v107;
    *v81 = v108;
    v81[1] = v82;
    *(v81 + 16) = v105;
    sub_100070678(v10);
    sub_10004ACF0(v10);
    v62 = v109;
    v46 = v97;
  }

  sub_100049D60((v13[*(v110 + 68) + 16] != 2) & v132);
  v83 = v130;
  v84 = v131;
  v85 = &v46[OBJC_IVAR____TtC8SOSBuddy43ConnectionAssistantConnectionViewController_centerLocation];
  v87 = *&v46[OBJC_IVAR____TtC8SOSBuddy43ConnectionAssistantConnectionViewController_centerLocation];
  v86 = *&v46[OBJC_IVAR____TtC8SOSBuddy43ConnectionAssistantConnectionViewController_centerLocation + 8];
  *v85 = v130;
  v85[1] = v84;
  if (v83 == v87 && v84 == v86)
  {
    goto LABEL_16;
  }

  v88 = [v46 view];
  if (v88)
  {
    v89 = v88;
    [v88 setNeedsLayout];

LABEL_16:
    sub_100049BD4(v62, v111);
    sub_10006F9EC();

    return;
  }

LABEL_19:
  __break(1u);
}

uint64_t sub_10007158C(uint64_t a1)
{
  v1 = a1 + OBJC_IVAR____TtC8SOSBuddy33ConnectionAssistantViewController__guidanceState;
  swift_beginAccess();
  if (*(v1 + 80))
  {
    return 0;
  }

  v2 = *(v1 + 72);
  if (!sub_10006E46C(3u, *(v1 + 8)) && !sub_10006E46C(1u, *(v1 + 8)))
  {
    sub_10006E46C(2u, *(v1 + 8));
  }

  return v2;
}

void sub_100071638(void *a1)
{
  [a1 targetTimestamp];
  v3 = v2;
  [a1 targetTimestamp];
  v5 = v4;
  [a1 timestamp];

  sub_100070E44(v3, v5 - v6);
}

uint64_t sub_1000716B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000040A8(&qword_100354FD8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100071728(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ExplorerGuidanceState();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10007178C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ExplorerGuidanceState();
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_10007180C()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10007184C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_100071864()
{
  result = qword_10035BB40;
  if (!qword_10035BB40)
  {
    type metadata accessor for DispatchWorkItemFlags();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10035BB40);
  }

  return result;
}

uint64_t sub_1000718BC()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + OBJC_IVAR____TtC8SOSBuddy33ConnectionAssistantViewController__viewDidLoadCallback);

  v2(v1);
}

void sub_10007191C()
{
  v1 = OBJC_IVAR____TtC8SOSBuddy33ConnectionAssistantViewController__displayMetrics;
  type metadata accessor for ConnectionAssistantDisplayState();
  swift_allocObject();
  *(v0 + v1) = sub_100014F5C();
  *(v0 + OBJC_IVAR____TtC8SOSBuddy33ConnectionAssistantViewController__locationAnimationFinished) = 0;
  v2 = v0 + OBJC_IVAR____TtC8SOSBuddy33ConnectionAssistantViewController__animateToLocation;
  *v2 = 0;
  *(v2 + 8) = 0;
  *(v2 + 16) = 2;
  *(v0 + OBJC_IVAR____TtC8SOSBuddy33ConnectionAssistantViewController__innerShadowView) = 0;
  *(v0 + OBJC_IVAR____TtC8SOSBuddy33ConnectionAssistantViewController__displayLink) = 0;
  *(v0 + OBJC_IVAR____TtC8SOSBuddy33ConnectionAssistantViewController__locationAssertion) = 0;
  *(v0 + OBJC_IVAR____TtC8SOSBuddy33ConnectionAssistantViewController__offsetRotationProgress) = 0;
  v3 = v0 + OBJC_IVAR____TtC8SOSBuddy33ConnectionAssistantViewController__offsetRotationProgressPending;
  *v3 = 0;
  *(v3 + 8) = 1;
  v4 = (v0 + OBJC_IVAR____TtC8SOSBuddy33ConnectionAssistantViewController__obstructedAreaAtTheTop);
  *v4 = 0u;
  v4[1] = 0u;
  v5 = v0 + OBJC_IVAR____TtC8SOSBuddy33ConnectionAssistantViewController__topInset;
  *(v5 + 32) = 0;
  *v5 = 0u;
  *(v5 + 16) = 0u;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_100071A58@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for Capsule();
  __chkstk_darwin(v3);
  v5 = &v59 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for _Glass();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v59 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000040A8(&qword_100358420);
  __chkstk_darwin(v10);
  v12 = &v59 - v11;
  v13 = sub_1000040A8(&qword_100358428);
  __chkstk_darwin(v13);
  v17 = &v59 - v16;
  v70 = v1;
  v18 = *v1;
  if (*v1)
  {
    v19 = *v1;
    v68 = v3;
    v69 = a1;
    v20 = *(v18 + OBJC_IVAR____TtC8SOSBuddy11TryOutModel__messageSimulationEngine);
    v66 = v15;
    v67 = v14;
    v64 = v10;
    v65 = v17;
    v62 = v7;
    v63 = v6;
    if (v20 && (v21 = *(v20 + 16)) != 0)
    {
      if (*(v21 + 16) == 2)
      {
        v22 = 1;
      }

      else
      {
        v23 = OBJC_IVAR____TtCC8SOSBuddy37MessageSimulationEngineImplementation7OnState_messagesInProgress;
        swift_beginAccess();
        v22 = *(*(v21 + v23) + 16) > 0x3FuLL;
      }
    }

    else
    {
      v22 = 0;
    }

    v61 = v19;

    *v12 = static VerticalAlignment.bottom.getter();
    *(v12 + 1) = 0;
    v12[16] = 1;
    v24 = &v12[*(sub_1000040A8(&qword_100358430) + 44)];
    v25 = static Alignment.bottom.getter();
    v60 = v26;
    sub_100072184(v70, v22, &v87);
    v83 = v97;
    v84 = v98;
    v85 = v99;
    v79 = v93;
    v80 = v94;
    v81 = v95;
    v82 = v96;
    v75 = v89;
    v76 = v90;
    v77 = v91;
    v78 = v92;
    v73 = v87;
    v74 = v88;
    v86[10] = v97;
    v86[11] = v98;
    v86[12] = v99;
    v86[6] = v93;
    v86[7] = v94;
    v86[8] = v95;
    v86[9] = v96;
    v86[2] = v89;
    v86[3] = v90;
    v86[4] = v91;
    v86[5] = v92;
    v86[0] = v87;
    v86[1] = v88;
    sub_100006C20(&v73, v72, &qword_100358438);
    sub_100008FA0(v86, &qword_100358438);
    v97 = v83;
    v98 = v84;
    v99 = v85;
    v93 = v79;
    v94 = v80;
    v95 = v81;
    v96 = v82;
    v89 = v75;
    v90 = v76;
    v91 = v77;
    v92 = v78;
    v87 = v73;
    v88 = v74;
    KeyPath = swift_getKeyPath();
    v28 = &v24[*(sub_1000040A8(&qword_100358440) + 36)];
    v29 = *(sub_1000040A8(&qword_100358448) + 28);
    v30 = enum case for LayoutDirection.leftToRight(_:);
    v31 = type metadata accessor for LayoutDirection();
    (*(*(v31 - 8) + 104))(v28 + v29, v30, v31);
    *v28 = KeyPath;
    v32 = v60;
    *v24 = v25;
    *(v24 + 1) = v32;
    v33 = v98;
    *(v24 + 11) = v97;
    *(v24 + 12) = v33;
    *(v24 + 13) = v99;
    v34 = v94;
    *(v24 + 7) = v93;
    *(v24 + 8) = v34;
    v35 = v96;
    *(v24 + 9) = v95;
    *(v24 + 10) = v35;
    v36 = v90;
    *(v24 + 3) = v89;
    *(v24 + 4) = v36;
    v37 = v92;
    *(v24 + 5) = v91;
    *(v24 + 6) = v37;
    v38 = v88;
    *(v24 + 1) = v87;
    *(v24 + 2) = v38;
    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    v39 = v64;
    v40 = &v12[*(v64 + 36)];
    v41 = v101;
    *v40 = v100;
    *(v40 + 1) = v41;
    *(v40 + 2) = v102;
    static _Glass.regular.getter();
    v42 = enum case for RoundedCornerStyle.continuous(_:);
    v43 = type metadata accessor for RoundedCornerStyle();
    (*(*(v43 - 8) + 104))(v5, v42, v43);
    v44 = sub_100073A54();
    v45 = sub_1000742A4(&qword_100358468, &type metadata accessor for Capsule);
    v46 = v65;
    v47 = v68;
    v48 = v12;
    v49 = v61;
    View._glassEffect<A>(_:in:)();
    sub_100073B0C(v5);
    (*(v62 + 8))(v9, v63);
    sub_100008FA0(v48, &qword_100358420);
    v50 = *(v49 + OBJC_IVAR____TtC8SOSBuddy11TryOutModel__messageSimulationEngine);

    if (v50)
    {
      v51 = *(v50 + 16);
      if (v51)
      {
        v52 = *(v51 + 16);
      }

      else
      {
        v52 = 0;
      }
    }

    else
    {
      v52 = 3;
    }

    v71 = v52;
    v53 = swift_allocObject();
    v54 = v70;
    v55 = v70[1];
    v53[1] = *v70;
    v53[2] = v55;
    v56 = v54[3];
    v53[3] = v54[2];
    v53[4] = v56;
    sub_100073B74(v54, v72);
    sub_1000040A8(&qword_100358470);
    v72[0] = v39;
    v72[1] = v47;
    v72[2] = v44;
    v72[3] = v45;
    swift_getOpaqueTypeConformance2();
    sub_100073BAC();
    v57 = v67;
    View.onChange<A>(of:initial:_:)();

    return (*(v66 + 8))(v46, v57);
  }

  else
  {
    type metadata accessor for TryOutModel();
    sub_1000742A4(&qword_100357990, type metadata accessor for TryOutModel);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_100072184@<X0>(uint64_t a1@<X0>, char a2@<W1>, _OWORD *a3@<X8>)
{
  v6 = static VerticalAlignment.center.getter();
  sub_1000724B8(a2, &v60);
  v43 = *&v61[16];
  v44 = *&v61[32];
  v45 = *&v61[48];
  v41 = v60;
  v42 = *v61;
  v46[2] = *&v61[16];
  v46[3] = *&v61[32];
  v47 = *&v61[48];
  v46[0] = v60;
  v46[1] = *v61;
  sub_100006C20(&v41, &v58, &qword_100358480);
  sub_100008FA0(v46, &qword_100358480);
  *&v40[23] = v42;
  *&v40[39] = v43;
  *&v40[55] = v44;
  *&v40[71] = v45;
  *&v40[7] = v41;
  v7 = static VerticalAlignment.center.getter();
  LOBYTE(v20[0]) = 1;
  sub_100072590(a1, a2, &v60);
  v50 = *&v61[16];
  v51 = *&v61[32];
  v52 = *&v61[48];
  v53 = *&v61[64];
  v48 = v60;
  v49 = *v61;
  v55 = *&v61[64];
  v54[2] = *&v61[16];
  v54[3] = *&v61[32];
  v54[4] = *&v61[48];
  v54[0] = v60;
  v54[1] = *v61;
  sub_100006C20(&v48, &v58, &qword_100358488);
  sub_100008FA0(v54, &qword_100358488);
  *&v39[39] = v50;
  *&v39[55] = v51;
  *&v39[71] = v52;
  *&v39[87] = v53;
  *&v39[7] = v48;
  *&v39[23] = v49;
  v56 = v6;
  v57[0] = 1;
  *&v57[1] = *v40;
  *&v57[64] = *&v40[63];
  *&v57[49] = *&v40[48];
  *&v57[33] = *&v40[32];
  *&v57[17] = *&v40[16];
  v26 = v6;
  v27 = *v57;
  v30 = *&v57[48];
  v31 = *&v57[64];
  v28 = *&v57[16];
  v29 = *&v57[32];
  v58 = v7;
  v59[0] = 1;
  *&v59[1] = *v39;
  v8 = *v39;
  v9 = *&v39[16];
  *&v59[17] = *&v39[16];
  *&v59[80] = *&v39[79];
  *&v59[65] = *&v39[64];
  v11 = *&v39[48];
  v10 = *&v39[64];
  *&v59[49] = *&v39[48];
  v12 = *&v39[32];
  *&v59[33] = *&v39[32];
  v32 = v7;
  v33 = *v59;
  v37 = *&v59[64];
  v38 = *&v59[80];
  v36 = *&v59[48];
  v34 = *&v59[16];
  v35 = *&v59[32];
  v13 = *&v57[32];
  a3[2] = *&v57[16];
  a3[3] = v13;
  v14 = v27;
  *a3 = v26;
  a3[1] = v14;
  v15 = v33;
  a3[6] = v32;
  a3[7] = v15;
  v16 = v31;
  a3[4] = v30;
  a3[5] = v16;
  v17 = v38;
  a3[11] = v37;
  a3[12] = v17;
  v18 = v36;
  a3[9] = v35;
  a3[10] = v18;
  a3[8] = v34;
  *&v61[33] = v12;
  v60 = v7;
  v61[0] = 1;
  *&v61[49] = v11;
  *&v61[65] = v10;
  *&v61[80] = *&v39[79];
  *&v61[1] = v8;
  *&v61[17] = v9;
  sub_100006C20(&v56, v20, &qword_100358490);
  sub_100006C20(&v58, v20, &qword_100358498);
  sub_100008FA0(&v60, &qword_100358498);
  v20[0] = v6;
  v20[1] = 0;
  v21 = 1;
  v23 = *&v40[16];
  v24 = *&v40[32];
  v25[0] = *&v40[48];
  *(v25 + 15) = *&v40[63];
  v22 = *v40;
  return sub_100008FA0(v20, &qword_100358490);
}

__n128 sub_1000724B8@<Q0>(char a1@<W1>, __n128 *a2@<X8>)
{
  sub_1000040A8(&qword_1003567D0);
  State.projectedValue.getter();
  KeyPath = swift_getKeyPath();
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  result = v7;
  *a2 = v7;
  a2[1].n128_u64[0] = v8;
  a2[1].n128_u64[1] = v9;
  a2[2].n128_u64[0] = KeyPath;
  a2[2].n128_u64[1] = sub_100074338;
  a2[3].n128_u64[0] = v5;
  a2[3].n128_u64[1] = ConnectionAssistantRendererEarthOutline.Buffers.shapesCount.getter;
  a2[4].n128_u64[0] = 0;
  return result;
}

uint64_t sub_100072590@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v24 = *(a1 + 16);
  v25 = *(a1 + 32);
  sub_1000040A8(&qword_1003567D0);
  State.projectedValue.getter();
  v6 = v20;
  v7 = v21;
  v8 = v22;
  v9 = v23;
  v10 = swift_allocObject();
  v11 = *(a1 + 16);
  v10[1] = *a1;
  v10[2] = v11;
  v12 = *(a1 + 48);
  v10[3] = *(a1 + 32);
  v10[4] = v12;
  if (a2)
  {
    sub_100073B74(a1, &v20);
    v13 = 1;
  }

  else
  {
    v24 = *(a1 + 40);
    v25 = *(a1 + 56);
    sub_100073B74(a1, &v20);
    State.wrappedValue.getter();
    v15 = v20;
    v14 = v21;

    v16 = HIBYTE(v14) & 0xF;
    if ((v14 & 0x2000000000000000) == 0)
    {
      v16 = v15 & 0xFFFFFFFFFFFFLL;
    }

    v13 = v16 == 0;
  }

  KeyPath = swift_getKeyPath();
  v18 = swift_allocObject();
  *(v18 + 16) = v13;
  LOBYTE(v20) = 1;
  *a3 = v6;
  *(a3 + 8) = v7;
  *(a3 + 16) = v8;
  *(a3 + 24) = v9;
  *(a3 + 32) = 0;
  *(a3 + 40) = 1;
  *(a3 + 48) = sub_100073C88;
  *(a3 + 56) = v10;
  *(a3 + 64) = KeyPath;
  *(a3 + 72) = sub_100073CA8;
  *(a3 + 80) = v18;
}